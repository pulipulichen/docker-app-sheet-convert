const ShellSpawn = require('./lib/ShellSpawn')
const ShellExec = require('./lib/ShellExec')
const GetExistedArgv = require('./lib/GetExistedArgv')

const path = require('path')
const fs = require('fs')

// convert a.tif -thumbnail 64x64^ -gravity center -extent 64x64 b.ico

let main = async function () {
  let files = GetExistedArgv()
  for (let i = 0; i < files.length; i++) {
    let file = files[i]
    
    let filename = path.basename(file)
    let dirname = path.dirname(file)
    let filenameNoExt = path.parse(filename).name
    let ext = path.extname(filename)
    let toExt = 'ods'
    if (ext === '.ods') { 
      toExt = 'xlsx'
    }

    // let command = await ShellExec(`ssconvert "${filenameNoExt + ext}" "${filenameNoExt + toExt}"`)
    let command = await ShellExec(`libreoffice --convert-to "${toExt}" "${filename}"`)
    await ShellExec(command)
  }
}

main()
function! NodeAddRequire()
    call inputsave()
    let packageName = input("What's the name of the package? ")
    let packageVar = input("How do you refer to the package? ", packageName)
    call inputrestore()

    let win = winsaveview()
    execute "normal gg"
    execute "normal O"."const ".packageVar." = require('".packageName."');"
    call winrestview(win)

endfunction

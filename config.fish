if status is-interactive
    # Commands to run in interactive sessions can go here
    
    set -g fish_greeting

    # Inicializar Starship
    starship init fish | source

    # Configuración de fnm (Fish Node Manager)
    fnm env --use-on-cd | source

    # Configuración de Zellij
    eval (zellij setup --generate-auto-start fish | string collect)
    
    # Variables de entorno de Go
    set -x GOPATH $HOME/go
    set -x GOBIN $GOPATH/bin
    set -x GOROOT /usr/local/go

    # Agregar directorios Go al PATH
    set -x PATH $PATH $GOBIN $GOROOT/bin
    set -x PATH $PATH /usr/local/go/bin

    # Configuración de bun
    set -x BUN_INSTALL $HOME/.bun
    set -x PATH $BUN_INSTALL/bin $PATH
    set -x FLYCTL_INSTALL "/home/diego/.fly"
    set -x PATH "$FLYCTL_INSTALL/bin" $PATH

    
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/diego/.ghcup/bin # ghcup-env
# Created by `pipx` on 2024-03-17 00:40:21
set PATH $PATH /home/diego/.local/bin

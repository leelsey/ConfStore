STARSHIP_DOCK="$HOME/.config/starship"
export STARSHIP_CACHE=$STARSHIP_DOCK/cache
if [[ $TERM_PROGRAM = "Apple_Terminal" ]]; then
    export STARSHIP_CONFIG=$STARSHIP_DOCK/apple.toml
elif [[ $TERM_PROGRAM = "iTerm.app" ]]; then
    export STARSHIP_CONFIG=$STARSHIP_DOCK/iterm.toml
elif [[ $TERM_PROGRAM = "tmux" ]]; then
    export STARSHIP_CONFIG=$STARSHIP_DOCK/tmux.toml
elif [[ $TERM_PROGRAM = "vscode" ]]; then
    export STARSHIP_CONFIG=$STARSHIP_DOCK/vscode.toml
else; export STARSHIP_CONFIG=$STARSHIP_DOCK/trek.toml; fi
if [ -z $STARSHIP_TAKE ]; then STARSHIP_TAKE=0; fi
liftoff () {
    if [ $STARSHIP_TAKE = 0 ]; then
        STARSHIP_TAKE=1
        source $STARSHIP_DOCK/crew.sh
        eval "$(starship init $SHELL)"
    else; echo "already flight"; fi }
landing () {
    if [ $STARSHIP_TAKE = 1 ]; then
        echo ""; exec -l $SHELL
    else; echo "already land"; fi }
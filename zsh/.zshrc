# Created by newuser for 5.9
eval "$(starship init zsh)"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!  
# Initialize Starship prompt
eval "$(starship init zsh)"

# SDKMAN initialization
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

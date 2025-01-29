# LiveTime prompt configration
LT_LiveTime="FALSE" # Enable/show LiveTime in prompt
LT_DispSecs="FALSE" # Enable/show seconds in LiveTime
LT_Interval=1       # Refresh frequency, in seconds 
# Note: each prompt update will be recorded by script (when session logging)
  
# LiveTime Prompt
if [[ "$LT_LiveTime" == "TRUE" ]]; then
    if [[ "$LT_DispSecs" == "TRUE" ]]; then
        PROMPT="%F{%(#.red.blue)}%D{%H:%M:%S %m/%d/20%y}"$'\n'$PROMPT
    else
        PROMPT="%F{%(#.red.blue)}%D{%H:%M %m/%d/20%y}"$'\n'$PROMPT
    fi
    TMOUT=$LT_Interval
    TRAPALRM() { zle reset-prompt }
fi

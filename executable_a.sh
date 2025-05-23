counter=0

while true; do
    wtype -d 100 a
    sleep 1
    wtype -M ctrl s -m ctrl
    sleep 1
    wtype -d 100 $'\b'  # Backspace
    sleep 1
    wtype -M ctrl s -m ctrl
    sleep 1
    
    counter=$((counter + 1))

    if ((counter % 600 == 0)); then
        wtype -M ctrl Tab -m ctrl  
        sleep 1
    fi
done


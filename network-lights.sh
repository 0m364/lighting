# Function to turn on network lights
turn_on_lights() {
    echo "Turning on network lights..."
    # Substitute the next line with the actual command to turn on the lights
    CMD_RESULT=$(lights_control --on)

    if [ $? -ne 0 ]; then
        echo "Error turning on the lights: $CMD_RESULT"
        return
    fi
    echo "Network lights turned on"
}

# Function to adjust the brightness of network lights
dimmer() {
    echo "Enter the desired brightness level (0-100):"
    read brightness

    if ! [[ $brightness =~ ^[0-9]+$ ]] || [ $brightness -lt 0 ] || [ $brightness -gt 100 ]; then
        echo "Invalid input. Please enter a number between 0 and 100."
        return
    fi

    echo "Adjusting brightness..."
    # Substitute the next line with the actual command to adjust the brightness
    CMD_RESULT=$(lights_control --brightness $brightness)
    
    if [ $? -ne 0 ]; then
        echo "Error adjusting brightness: $CMD_RESULT"
        return
    fi
    echo "Brightness adjusted to $brightness"
}

# The rest of your code can stay the same
# ...

# Perform action based on user choice
case $CHOICE in
    1)
        turn_on_lights
        ;;
    2)
        dimmer
        ;;
    3)
        set_timer
        ;;
    4)
        dimmer_timer_settings
        ;;
    *)
        echo "Invalid choice"
        ;;
esac


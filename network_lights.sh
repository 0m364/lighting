# 👀 Function to turn on network lights
turn_on_lights() {
    echo "Turning on network lights..."
    # Your code to turn on the network lights goes here
    echo "Network lights turned on"
}

# Function to adjust the brightness of network lights
dimmer() {
    echo "Enter the desired brightness level (0-100):"
    read brightness

    echo "Adjusting brightness..."
    # Your code to adjust the brightness goes here
    echo "Brightness adjusted to $brightness"
}

# Function to set a timer for the network lights
set_timer() {
    echo "Enter the duration of the timer in seconds:"
    read duration

    echo "Setting timer for $duration seconds..."
    # Your code to set a timer goes here
    echo "Timer set for $duration seconds"
}

# Function to configure a dimmer timer for the network lights
dimmer_timer_settings() {
    echo "Enter the desired brightness level (0-100):"
    read brightness

    echo "Enter the duration of the dimmer timer in seconds:"
    read timer_duration

    echo "Configuring dimmer timer..."
    # Your code to configure the dimmer timer goes here
    echo "Dimmer timer configured. Brightness: $brightness, Duration: $timer_duration seconds"
}

# Prompt user to select an option
echo -e "Select an option:"
echo -e "1. Turn on network lights"
echo -e "2. Adjust brightness"
echo -e "3. Set timer"
echo -e "4. Configure dimmer timer"
read -p "Enter your choice (1-4): " CHOICE

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

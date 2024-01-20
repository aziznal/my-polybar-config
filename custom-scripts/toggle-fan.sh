
#!/bin/sh

case "$1" in
    --toggle)
        curl -X POST -H "Content-Type: application/json" -d '{ "device": "fan" }' http://192.168.1.118:8123/api/webhook/room_lights
        ;;
    *)
        echo "󰈐 "
        ;;
esac



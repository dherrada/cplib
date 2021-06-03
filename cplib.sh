while test $# -gt 0; do
    case "$1" in
        -h|--help)
            echo "Usage: cplib <lib-name> <circuitpy-name>"
            echo "lib-name - Filename of the library, usually adafruit_XXX.mpy or adafruit_XXX"
            echo "circuitpy-name - Name of the circuitpy drive in /media/$USER/" 
            echo ""
            echo "Options:"
            echo "  -h, --help                Show help"
            exit 0
            ;;
    esac
done
cp -r /tmp/bundle/lib/$1 /media/$USER/$2/lib/

OUTPUT="/tmp"
while test $# -gt 0; do
    case "$1" in
        -h|--help)
            echo "Usage: bundle"
            echo "Options:"
            echo "-h, --help                Show help"
            echo "-o                        Specify output directory"
            exit 0
            ;;
        -o)
            shift
            if test $# -gt 0; then
                export OUTPUT=$1
            else
                echo "no output dir specified"
                exit 1
            fi
            shift
            ;;
    esac
done
echo $OUTPUT
mkdir $OUTPUT/bundle
curl -u $USER:$GH_REPO_TOKEN -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/adafruit/Adafruit_CircuitPython_Bundle/releases/latest | jq '.["assets"][].browser_download_url' | jq 'if . | test("6.x-mpy") == true then . else empty end' | xargs wget -O $OUTPUT/bundle-6.x.zip
rm -rf $OUTPUT/adafruit-circuitpython-bundle-6*
unzip $OUTPUT/bundle-6.x -d $OUTPUT
rm $OUTPUT/bundle-6.x.zip
rm -rf $OUTPUT/bundle/*
mv $OUTPUT/adafruit-circuitpython-bundle-6*/* $OUTPUT/bundle/
rm -rf $OUTPUT/adafruit-circuitpython-bundle-6.x*/

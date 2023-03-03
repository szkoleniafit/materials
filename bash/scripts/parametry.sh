usage(){
  echo "Usage $0 -d <value> -f <value>" 1>&2
  exit 1
}

if [ "$*" == "" ]; then
    >&2 echo "No arguments provided"
    usage
fi


while getopts "d:f:" flag
do
  if [ "$flag" = "d" ]
  then
    D=$OPTARG
    echo "IF $D"
  fi
  if [ "$flag" = "f" ]
  then
    F=$OPTARG
    echo "IF $F"
  fi
  case "${flag}" in
    d)
       D=$OPTARG
       echo "Case $D"
       ;;
    f)
       F=$OPTARG
       read -p "Podaj wartość: " input
       echo "Case $F + input $input"
       ;;
    *)
       usage
       ;;
  esac
done

shift $(($OPTIND - 1))


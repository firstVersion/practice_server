#! /bin/sh

# ! このコマンドを使うとサーバーを消してまっさらな状態にしてくれるやつです．実行注意


cd `dirname $0`
echo "Are you sure you want to reset your server??? ( yes or no )"
while true;do
  read answer
  case $answer in
  yes)
  docker build ./ -t prac_server
  docker rm -f practice_server
  docker run --name practice_server -dti -p 8080:80 -p 2222:22 prac_server
  break
  ;;

  no)
  echo "OK !"
  break
  ;;

  *)
  echo "please enter yes or no"
  ;;
  esac
done


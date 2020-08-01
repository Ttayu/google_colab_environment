if type sshpass > /dev/null 2>&1; then
  passwd=password
  port=
  sshpass -p $passwd ssh -o "StrictHostKeyChecking no" root@2.tcp.ngrok.io -p $port
else
  echo "please install sshpass."
  echo "In Ubuntu. sudo apt install sshpass"
  echo "In MacOS. brew install http://git.io/sshpass.rb"
fi

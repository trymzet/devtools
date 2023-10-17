# example usage: add_ssh_key -f dev -s domain.com

# stop on error
set -e

# defaults
filename=id_rsa
user=$USERNAME

# read args
while getopts f:s:u: flag
do
    case "${flag}" in
        f) filename=${OPTARG};;
        s) server=${OPTARG};;
        u) user=${OPTARG}
    esac
done

extension=".pub"
full_filename=$filename$extension

cd ~/.ssh
ssh-keygen -f $filename -t rsa -b 4096 -q -N ""
cat $full_filename | ssh "$user@$server" "mkdir -p ~/.ssh; cat >> ~/.ssh/authorized_keys"

echo "Key uploaded successfully."
read
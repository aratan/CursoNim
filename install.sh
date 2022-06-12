mkdir nim
cd nim
wget -qO https://nim-lang.org/download/nim-1.6.6-linux_x32.tar.xz
cd ./nim-1.6.6-linux_x64/nim-1.6.6
sh build.sh
bin/nim c koch
./koch boot -d:release
./koch tools

echo "~/.nimble/bin"


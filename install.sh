echo "Instalacion de Nim 1.6.6"
sudo apt install xz-utils -y
mkdir nim
cd nim
echo "Descargando nim 1.6.6"
wget -qO https://nim-lang.org/download/nim-1.6.6-linux_x32.tar.xz
echo "Descomprimimos..."
tar -xf nim-1.6.6-linux_x32.tar.xz
cd ./nim-1.6.6-linux_x64/nim-1.6.6
echo "Compilando Nim 1.6.6"
sh build.sh
bin/nim c koch
./koch boot -d:release
./koch tools
echo "TERMINADO"
echo "~/.nimble/bin"


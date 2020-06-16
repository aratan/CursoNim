import strutils

echo "Introduzca datos: "

let leer = parseFloat(stdin.readLine)
  
if leer < 10:
  echo "Too low, try again"
else:
  echo "Correct!"

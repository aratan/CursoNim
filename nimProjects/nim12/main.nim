# servidor web.nim
import prologue, strformat, strutils, times
#[ & indica que es un string, {} indica que es un operador ]#
proc srv*(ctx: Context) {.async.} =
  var dato = "victor"
  #resp fmt(" Hola: {dato}  " + "  Time: { now().utc }   ")
  resp &" Hola: {dato}  " + &"  Time: { now().utc }   "
let settings = newSettings()
var app = newApp(settings = settings)
app.addRoute("/",srv)
app.run()
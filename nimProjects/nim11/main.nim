# app.nim
import prologue, strformat, strutils, times

proc srv*(ctx: Context) {.async.} =
  var dato = "victor"
  resp &" Hola: {dato} {cpuTime()}\n"

let settings = newSettings()
var app = newApp(settings = settings)
app.addRoute("/",srv)
app.run()
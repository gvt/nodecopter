arDrone = require("ar-drone")
client = arDrone.createClient()

client.takeoff()

client.after(5000, ->
  @clockwise 0.5
  return
).after(3000, ->
  @animate "flipLeft", 15
  return
).after 1000, ->
  @stop()
  @land()
  return

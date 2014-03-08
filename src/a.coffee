ar_drone = require "ar-drone"
client = ar_drone.createClient()

console.log("takeoff...")
client.takeoff()

console.log("turns...")
client
  .after 1500, -> @clockwise 0.25
  .after 1500, -> @clockwise 0.25
  .after 6000, -> @land()


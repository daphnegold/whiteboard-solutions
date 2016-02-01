# Write a function that takes in a time (hour and minute) and outputs the angle between the hour and minute hands on a clock.

def angle(hour, minute)
  if hour == 12
    hour = 0
  end

  hour_angle = hour * (360/12)
  minute_angle = minute * (360/60)

  return (hour_angle - minute_angle).abs
end

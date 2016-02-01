# Write a function that takes in a time (hour and minute) and outputs the angle between the hour and minute hands on a clock.

def angle(hour, minutes)
  if hour == 12
    hour = 0
  end
  # hour hand math: degrees per hour, degrees per minute
    # 360 / 12 = 30, 360 / (12 * 60) = 0.5
  # minute hand math: degrees per minute
    # 360 / 60 = 6
  hour_angle = hour * 30 + minutes * 0.5
  minute_angle = minutes * 6

  return (hour_angle - minute_angle).abs
end

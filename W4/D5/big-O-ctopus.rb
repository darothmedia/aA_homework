require 'benchmark'


fishi = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
1000.times {fishi << 'fish'}
FISHIES = fishi
# => "fiiiissshhhhhh"

start1 = Time.now
def sluggish_octopus
  longest = 0
  FISHIES.each do |fish|
    FISHIES.each do |fish2|
      if fish2 > fish
        longest = fish2
      else
        longest = fish
      end
    end
  end
  p longest
end
finish1 = Time.now

slug_time = finish1 - start1

sluggish_octopus
p slug_time

start2 = Time.now
def dominant_octopus(arr)
  mid = arr.length / 2
  return arr if arr.length < 2
  
  left_sort = dominant_octopus(arr[0...mid])
  right_sort = dominant_octopus(arr[mid..-1])

  merge(left_sort, right_sort)
end

def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    if left[0].length > right[0].length
      merged << right.shift
    else
      merged << left.shift
    end
  end

  merged + left + right
end
finish2 = Time.now

dom_time = finish2 - start2

p dominant_octopus(FISHIES)[-1]
p dom_time

start3 = Time.now
def clever_octopus
  longest = FISHIES[0]
  FISHIES.each do |fish|
    if fish.length > longest.length
      longest = fish
    end
  end
  longest
end
finish3 = Time.now

clev_time = finish3 - start3
p clever_octopus
p clev_time


def slow_dance(dir, arr)
  arr.each_index do |i|
    return i if arr[i] == dir
  end
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

def fast_dance(dir, structure)
  structure[dir]
end

tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)

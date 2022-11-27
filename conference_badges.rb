# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."    
end

def batch_badge_creator names
    badges = []
    names.each { |name| badges << badge_maker(name) }
    badges    
end

def assign_rooms names
    rooms_assignment = []
    rooms = 1

    names.each do |name|
        rooms_assignment << "Hello, #{name}! You'll be assigned to room #{rooms}!"
        rooms += 1
    end
    rooms_assignment  
end

def printer names
    batch_badge_creator(names).each { |badge| puts badge}   
    assign_rooms(names).each {|room_assignment| puts room_assignment} 
end
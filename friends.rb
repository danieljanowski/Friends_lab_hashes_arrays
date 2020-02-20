def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  snack = person[:favourites][:snacks]
  return snack.select {|sn| sn == food}.any?
  # return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  friends_list = person[:friends]
  # p friends_list.length
  friends_list.push(friend)
  # p friends_list.length
end

def remove_friend(person, friend)
  friends_list = person[:friends]
  # p friends_list.length
  friends_list.delete_at(friends_list.find_index(friend))
  # p friends_list.length
end

def total_money(people)
  # money_array.map {|cash| }
  return people.reduce(0){|total, people| total + people[:monies]}
end

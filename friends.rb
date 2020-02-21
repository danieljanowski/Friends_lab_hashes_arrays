def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  person[:favourites][:snacks].select {|sn| sn == food}.any?
  # return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete_at(person[:friends].find_index(friend))
end

def total_money(people)
  return people.reduce(0){|total, people| total + people[:monies]}
end

def lend_money(lender, lendee, money)
  lender[:monies] -= money
  lendee[:monies] += money
end

def all_favourite_foods(people)
  total_snacks = []

  for person in people
    total_snacks.concat(person[:favourites][:snacks])
  end
  return total_snacks
end

def no_friends(people)
  friendless = []
  for person in people
    if person[:friends].length == 0
      friendless.push(person[:name])
    end
  end
 return friendless
  # return people.select{|person| person[:friends].length == 0}
end

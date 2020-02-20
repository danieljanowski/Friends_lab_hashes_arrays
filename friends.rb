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

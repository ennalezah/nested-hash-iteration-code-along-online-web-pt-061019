require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  
def remove_strawberry(contacts)
  contacts.each do |person, details_hash|
    if person == "Freddy Mercury"
      details_hash.each do |attribute, value|
        if attribute == :favorite_ice_cream_flavors
          value.delete_if {|flavor| flavor == "strawberry"}
        end
      end 
    end 
  end 
end

def change_email(contacts, email)
  contacts["Jon Snow"][:email] = email
  contacts
end 

def add_friends(contacts, friends)
  contacts.map do |person, details|
    details[:friends] = friends
  end
  contacts
end

def all_flavors(contacts)
  contacts.map do |person, details|
    details.map do |attribute, value|
      if attribute == :favorite_ice_cream_flavors
        value.values.flatten
      end
    end
  end
  # contacts
end

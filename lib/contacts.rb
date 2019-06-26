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
  puts contacts
end 

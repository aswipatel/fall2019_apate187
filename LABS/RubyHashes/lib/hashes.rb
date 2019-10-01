# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    hash = Hash.new
    keysArray = contacts.keys
    for i in (0...keysArray.length)
        if (emails[i] == nil)
            hash.store(keysArray[i], "") 
        else
            hash.store(keysArray[i], emails[i])
        end
    end
    return hash
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    if (contact_info[0].empty?)
        return contacts
        
    else
        
        
        keysArray = contacts.keys
        hash = Hash.new
        for i in (0...contact_info.length)
            emails = contact_info[i][0]
            phone = contact_info[i][1]
            hash.store(keysArray[i], {:email => emails, :phone => phone})
        end
        return hash    
    end
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
     email = Array.new
    phone = Array.new
    name = Array.new
    contacts.each do|key, value|
        name.push("#{key}")
        value.each do|key1, value1|
            if (key1 == :email)
                email.push(value1)
            else 
                phone.push(value1)
            end
        end
    end
    array = [email, phone, name]
    
    return array
end

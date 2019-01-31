# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if emails.length == 0
        return contacts
    end
    i=0
    contacts.each do |key, value|
        value << emails[i]
        i = i + 1
    end
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    if contact_info == [[]]
        return contacts
    end
    i = 0
    contacts.each do |key, value|
        hold = Hash.new
        hold[:email] = contact_info[i][0]
        hold[:phone] = contact_info[i][1]
        contacts[key] = hold
        i = i + 1
    end
    return contacts
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
    if contacts.keys.size == 0 || contacts == nil
        return [[], [], []]
    end
    keys = contacts.keys
    l = contacts.length
    hold = Array.new(3){Array.new(l)}
    for i in 0..l-1
    hold[0][i] = contacts[keys[i]][:email]
    hold[1][i] = contacts[keys[i]][:phone]
    hold[2][i] = keys[i].to_s
    end
    return hold
end

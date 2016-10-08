require 'sinatra'

def calculate_birth_number(birthDate)
    yourBirthNumber= 0
    while birthDate.length > 1 do
        for counter in 0..birthDate.length
            yourBirthNumber += birthDate[counter].to_i
        end
            birthDate = yourBirthNumber.to_s
            yourBirthNumber = 0
    end
    return birthDate
end

def message_to_display(calculated_number)
    case calculated_number.to_i
    when 1
        return "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
    when 2
        return "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
        return "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
        return "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
        return "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
        return "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        return "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
        return "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
        return "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else
        return "Uh oh! Your birth path number is not 1-9!"
    end
end

get '/:birthdate' do
    birth_date = params[:birthdate]    
    #"#{birth_date}"
    birth_path_num = calculate_birth_number(birth_date)
    #"#{birth_path_num}"
    message = message_to_display(birth_path_num)
    "#{message}"
end
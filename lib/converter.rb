class Converter

    def base_number(number,base)
        output = ""
        continue = true

        if base < 2 || base > 36 # edge cases
            output = "This format only works for base 2 to 36 number systems."
            continue = false
        end
    
        while continue == true do
            quotient = number / base
            remainder = number % base

            if quotient == 0
                case number
                when 0..9
                    output << number.to_s
                when 10..35
                    output << (number+55).chr # 65 is the ascii value of A, .chr converts it
                end
                continue = false
            else
                output << base_number(quotient,base) # this is scary
                number = remainder
                continue = true
            end
        end
        
        return output
    end

    
end
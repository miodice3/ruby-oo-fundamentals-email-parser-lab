class EmailAddressParser
  
    attr_accessor :string_input

    def initialize(string_input)
        @parse = string_input.split(", ").map do |each_address|
            each_address.split(" ")
        end
        @parse = @parse.uniq.flatten(1)
    end
 
    def parse
        @parse
    end
  
  end

# test_class = EmailAddressParser.new("avi@test.com, arel@test.com")
# test_class.parse

# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(value)
        if (value >= 0 && value <= 10)
            @happiness = value
            elsif value > 10
                @happiness = 10
            else
                @happiness = 0
            end

    end
    def hygiene=(value)
        if (value >= 0 && value <= 10)
            @hygiene = value
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = 0
        end
    end
    def clean?
        self.hygiene > 7 ? true : false
    end
    def happy?
        self.happiness > 7 ? true :false
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = (hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness = (happiness + 2)
        self.hygiene = (hygiene - 3)
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"

    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness= (happiness - 2)
            friend.happiness= (friend.happiness - 2)
             "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness= (happiness + 1)
            friend.happiness= (friend.happiness + 1)
             "blah blah sun blah rain"
        else
             "blah blah blah blah blah"
        end
    end

end 
person = Person.new("aleckie")
person.name

# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happ)
        if new_happ >= 0 && new_happ <= 10
            @happiness = new_happ
        elsif new_happ < 0
            @happiness = 0
        elsif new_happ > 10
            @happiness = 10
        end
    end

    def hygiene=(new_hyg)
        if new_hyg >= 0 && new_hyg <= 10
            @hygiene = new_hyg
        elsif new_hyg < 0
            @hygiene = 0
        elsif new_hyg > 10
            @hygiene = 10
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amt)
        @bank_account += amt
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        fr_happ = friend.happiness
        friend.happiness = fr_happ + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            p_happ = person.happiness
            person.happiness = p_happ - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            p_happ = person.happiness
            person.happiness = p_happ + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end
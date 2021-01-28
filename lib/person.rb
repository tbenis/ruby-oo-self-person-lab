# your code goes here
class Person
    attr_accessor :bank_account, :call_friend, :start_conversation
    attr_reader :name, :happiness, :hygiene
    # NAME = @name
    def initialize(name)
        @bank_account = 25
        @name = name
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        if num < 0
            @happiness = 0
        elsif num > 10
            @happiness = 10
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num < 0
            @hygiene = 0
        elsif num > 10
            @hygiene = 10
        else
            @hygiene = num
        end
    end
    def happy?()
        if  @happiness > 7
            true
        else
            false
        end
    end
    def clean?()
        if  @hygiene > 7
            true
        else
            false
        end
    end

    # :take_bath, :workout, :call_friend, :start_conversation

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath()
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out()
        self.hygiene -= 3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(instance_of_class)
        self.happiness += 3
        instance_of_class.happiness += 3
        "Hi #{instance_of_class.name}! It's #{self.name}. How are you?"
    end

=begin
context 'topic: politics' do
        it "returns 'blah blah partisan blah lobbyist' if the topic is politics" do
          convo = 'blah blah partisan blah lobbyist'
          expect(penelope.start_conversation(felix, 'politics')).to eq(convo)
        end

        it 'if topic is politics, it makes both people in the convo two points less happy' do
          people.each { |person| person.happiness = 7 }
          penelope.start_conversation(felix, 'politics')
          people.each { |person| expect(person.happiness).to eq(5) }
        end

        it "never makes either party less than 0 points happy (never negative)
          (hint: use your #happiness= method)" do
          people.each { |person| person.happiness = 1 }
          penelope.start_conversation(felix, 'politics')
          people.each do |person|
            expect(person.happiness).to be >= 0
            expect(person.happiness).to eq(0)
          end
        end
=end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end

end

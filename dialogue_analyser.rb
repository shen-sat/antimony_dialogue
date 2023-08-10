require 'byebug'
class Dialogue


	def self.run(text)
		textbox_width = 96
		letter_width = 4
		max_width = textbox_width/letter_width


		words = text.split(' ')
		line = ''
		result = []
		words.each do |word|
			word += ' ' unless word == words.last # add space unless word is last word
			size = line.size + word.size
			if size > max_width
				result << line
				line = ''
				line << word
			else
				line << word
			end
		end

		result << line
		{ lines: result, count: result.count }
		# end_result = { lines: result, count: result.count }
		# puts end_result
	end
end

arr = [
	"Welcome traveller. I am your mage guide and this is antimony",
	"Your goal: travel through spacetime to form 5 paradoxes",
	"To form a paradox: collect relics whilst travelling back & forth through time!",
	"This is your hand. It contains relics",
	"This is the timeline. It also contains relics",
	"This is the relic deck. Notice: it has a counter",
	"To form a paradox you need 3 relics of the same colour or type or number in your hand",
	"You can move relics in and out of your hand by swapping them with relics in the timeline",
	"First, select the green skull with arrow keys and press x",
	"This is now the present point. From here, we can travel back or forth through time",
	"To travel forwards, we need to swap relics with the same number",
	"Select the relic with number 3 in your hand and press x",
	"Now select the relic with number 3 in the timeline and press x",
	"You travelled forwards in time! Notice: the present point has moved forwards",
	"Also notice: the relic deck counter went down by 1",
	"To travel back in time, swap relics with the same color or type",
	"Select the green relic in your hand and press x",
	"Now select the green relic in the timeline and press x",
	"You travelled back in time! Notice: the relic deck counter went down by 1",
	"Also notice: you now have 3 relics of the same color in your hand",
	"Remember: to form a paradox, you need 3 relics of the same color or number or type",
	"Press and hold Z to form a paradox!",
	# animate paradox!
	"Once a paradox is formed, two actions must be resolved:",
	"first action: discard a relic from your hand",
	"Select the skull in your hand and tap x",
	"Notice: the discarded relic is replaced by a random relic from the relic deck",
	"second action: swap all the relics in your hand with relics in the timeline",
	"select 3 cards to the immediate left or right of the present point and tap x",
	"Notice: the relics from your hand appear in the timeline in a random order",
	"Now that the actions have been resolved, let's try and form a second paradox!",
	"Select the relic with number 4 in your hand and press x",
	"Now select the relic with number 4 in the timeline and press x",
	"Observe! the relic deck counter has reached 0 and a new relic has appeared from the deck",
	"When this happens, we need to resolve an action:",
	"action: swap the new relic and a timeline relic with the same number, color or type",
	"Select the skull from the timeline and press x",
	"Notice: the new relic now appears in the timeline. The other relic is discarded",
	"Select the skull from your hand and press x",
	"Now select the skull from the timeline and press x",
	"Notice: you now have 3 relics in your hand with the same type",
	"Well done, traveller. Press and hold Z to form a paradox and end the tutorial!"
]

arr.each do |a| 
	result = Dialogue.run(a)
	puts result if result[:count] > 4
end


# RSpec.describe 'Dialogue' do
# 	# width: 96
# 	# height: 26

# 	it 'returns data with two short words' do
# 		result = Dialogue.run('abc def')

# 		expected_result = { lines: ['abc def'], count: 1}

# 		expect(result).to eq(expected_result)
# 	end

# 	it 'returns data with one long word' do
# 		result = Dialogue.run('abcdefghijklmnopqrstuvw')

# 		expected_result = { lines: ['abcdefghijklmnopqrstuvw'], count: 1}

# 		expect(result).to eq(expected_result)
# 	end

# 	it 'returns data with two long words' do
# 		result = Dialogue.run('abcdefghijklmnopqrstuv2 abcdefghijklmnopqrstuvw')

# 		expected_result = { lines: ['abcdefghijklmnopqrstuv2 ', 'abcdefghijklmnopqrstuvw'], count: 2}

# 		expect(result).to eq(expected_result)
# 	end

# 	it 'returns data with one sentence that should run into next line' do
# 		result = Dialogue.run('hello there take it easier')

# 		expected_result = { lines: ['hello there take it ', 'easier'], count: 2}

# 		expect(result).to eq(expected_result)
# 	end

# 	it 'returns data with one sentence that should run into next 2 lines' do
# 		result = Dialogue.run('hello there take it easier it should not be this hard')

# 		expected_result = { lines: ['hello there take it ', 'easier it should not be ', 'this hard'], count: 3}

# 		expect(result).to eq(expected_result)
# 	end

# 	it 'returns data with one sentence that should run into next 3 lines' do
# 		result = Dialogue.run('hello there take it easier it should not be this hard but think of the')

# 		expected_result = { lines: ['hello there take it ', 'easier it should not be ', 'this hard but think of ', 'the'], count: 4}

# 		expect(result).to eq(expected_result)
# 	end
# end

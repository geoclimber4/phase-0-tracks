# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe GuessWord do
  let(:game) { GuessWord.new("popsicle") }

  it "iterates letter to check if the letter results in correct output" do
     expect(game.check_word("p")).to eq "p_p_____"
  end

end
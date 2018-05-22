require_relative 'player'
require_relative 'question'

player1 = Player.new
player2 = Player.new







while((player1.lives > 0) && (player2.lives > 0))
    question = Question.new
    print "#{(player1.turn)? "Player1": "Player2"}: #{question.ask_question}"
    answer = gets.chomp
    if question.check_answer(answer)
      puts "#{(player1.turn)? "Player1": "Player2"}: YES! You are correct."

    else
      puts "#{(player1.turn)? "Player1": "Player2"}: Seriously? No!"
      player1.turn ? player1.lives -= 1: player2.lives -= 1

    end
    puts "#P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    player1.turn = !player1.turn

    if (player1.lives || player2.lives) > 0
      puts "----- NEW TURN -----"
    end


end




winner =
winner_life = player1.lives

puts "#{(player1.lives > player2.lives)? "Player 1": "Player 2"}: wins with a score of #{(player1.lives > player2.lives)? player1.lives: player2.lives}/3"
puts '----- GAME OVER -----'
puts 'Good Bye!'


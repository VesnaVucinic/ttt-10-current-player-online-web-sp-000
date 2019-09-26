def turn_count(board)
  turns = 0
  board.each do |position|
    if position == "X" || position == "O"
      turns += 1
    end
  end
  return turns
end

# tracks who's turn it is by keeping track of how many turns have passed
def current_player(board)
  if turn_count(board)%2 == 0
    return "X"
  else
    return "O"
  end
end
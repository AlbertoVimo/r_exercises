free_throws_attempts_game <- free_thorws_attempts_matrix/Games
acc_free_throws <- free_thorws_matrix/free_thorws_attempts_matrix
player_style <- (Points - free_thorws_matrix)/FieldGoals

plotting <- function(information){
  matplot(t(information), type ='b', pch = 15:18, col = c(1:4, 6))
  legend('bottomleft', inset = 0.001, legend=Players, col = c(1:4, 6), pch = 15:18, horiz=F)
}

plotting(free_throws_attempts_game)
plotting(acc_free_throws)
plotting(player_style)

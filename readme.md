
jouer au jeu de poo.me :


copier-coller l'ensemble de ces commandes dans le terminal :

player1 = Player.new("Jacky")
player2 = Player.new("Michel")
player1.show_state
player2.show_state
player1.attacks(player2)
player2.attacks(player1)


pour relancer une attaque, copier-coller les 2 lignes à chaque attaque :

player1.attacks(player2)
player2.attacks(player1)

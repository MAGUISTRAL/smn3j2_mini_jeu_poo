
JOUER AU JEU DE POO.ME :
deux joueurs s'affrontent dans un combat sans merci.
qui des deux va sortir vainqueur de la terrible épreuve du fouet ??

Nous le saurons à la suite de ce corps à corps.Tous deux partent avec 10 points de vie, et attaquent chacun leur tour.

A chaque tour, une attaque par joueur.
Selon la force de l'impact, le joueur se fatiguera plus ou moins vite. Le premier à perdre ses 10 points de vie peut aller se rhabiller. Il perd le jeu !



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

#le programme rend toutes les gems disponibles dans tous les fichiers
require 'bundler'
Bundler.require

#app.rb fait appel aux 2 autres fichiers présents dans \lib
require_relative 'lib/game'
require_relative 'lib/player'

extends Node

const GAME_OVER_LIFE = 0
const GAME_OVER_ENEMY_DOWN = 0

var life := 3
var coins := 0
var enemy_count = 23

func reset():
  life = 3
  coins = 0

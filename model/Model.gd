extends Node

var CardTypes = {
	CardType.UnitTypes.King: CardType.new("King", 1, 5, 4, [Vector2(-1, 1), Vector2(0, 1), Vector2(1, 1)]),
	CardType.UnitTypes.Soldier: CardType.new("Soldier", INF, 2, 1, [Vector2(0, 1)]),
	CardType.UnitTypes.Archer: CardType.new("Archer", 1, 2, 1, [Vector2(-2, 1), Vector2(2, 1), Vector2(-1, 2), Vector2(1, 2)]),
	CardType.UnitTypes.Guard: CardType.new("Guard", 1, 3, 2, [Vector2(0, 1)]),
	CardType.UnitTypes.Wizard: CardType.new("Wizard", 1, 2, 1, [Vector2(0, 1), Vector2(0, 2), Vector2(0, 3)]),
	CardType.UnitTypes.Monk: CardType.new("Monk", 1, 2, 2, [Vector2(-1, 1), Vector2(1, 1), Vector2(-2, 2), Vector2(2, 2)])
}
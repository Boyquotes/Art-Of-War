class_name State
extends Object

enum Name {
	WAITING_FOR_PLAYER,
	INIT_BATTLEFIELD,
	INIT_RESERVE,
	ACTION_CHOICE,
	RECRUIT,
	SUPPORT,
	ATTACK,
	FINISH_TURN,
}

var name: Name
var callback: Callable = func(): pass
var instruction: String
var happens_once: bool

func _init(n: Name, i: String, h_o: bool):
	name = n
	instruction = i
	happens_once = h_o

func get_next_state() -> State.Name:
	match name:
		State.Name.INIT_BATTLEFIELD:
			return State.Name.INIT_RESERVE
		State.Name.INIT_RESERVE:
			return State.Name.ACTION_CHOICE
		State.Name.RECRUIT:
			return State.Name.FINISH_TURN
		State.Name.SUPPORT:
			return State.Name.ACTION_CHOICE
		State.Name.ATTACK:
			return State.Name.ACTION_CHOICE
		State.Name.FINISH_TURN:
			return State.Name.ACTION_CHOICE
		_:
			return State.Name.WAITING_FOR_PLAYER
extends KinematicBody

var health = 10
var max_health = 10

func _on_Enemy_input_event(camera, event, click_position, click_normal, shape_idx):
    if event is InputEventMouseButton:
        if event.button_index == BUTTON_LEFT and event.pressed:
            health -= 1
            if health <= 0:
                queue_free()
				$HealthBar3D.update(health, max_health)
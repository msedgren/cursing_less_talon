app: jetbrains
-

toggle cursing: user.idea("toggle_markup")

toggle echo : user.idea("toggle_echo")

go {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("pre", cursing_color, cursing_shape, any_alphanumeric_key)

go past {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("post", cursing_color, cursing_shape, any_alphanumeric_key)

go {user.cursing_last_next} {user.cursing_color}:
    self.curse_to_relative_location_by_color(cursing_last_next, "pre", cursing_color)

go past {user.cursing_last_next} {user.cursing_color}:
    self.curse_to_relative_location_by_color(cursing_last_next, "post",Save cursing_color)

go declaration {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("pre", cursing_color, cursing_shape, any_alphanumeric_key)
    user.idea("action GotoDeclaration")

{user.cursing_selection_type} {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select(cursing_selection_type, cursing_color, cursing_shape, any_alphanumeric_key)

{user.cursing_selection_type} until {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select_to(cursing_selection_type, cursing_color, cursing_shape, any_alphanumeric_key)

{user.cursing_selection_type} {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key> until {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("pre", cursing_color, cursing_shape, any_alphanumeric_key)
    self.curse_select_to(cursing_selection_type, cursing_color_2, cursing_shape_2, any_alphanumeric_key_2)

add cursor {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_add_cursor(cursing_color, cursing_shape, any_alphanumeric_key)

add <number_small> (cursors | cursor) {user.cursing_vertical_placement}:
    self.curse_add_cursor_above_or_below(number_small, cursing_vertical_placement)

remove cursor <number_small>:
    self.remove_cursor(number_small)

remove all secondary cursors:
    self.remove_all_secondary_cursors()

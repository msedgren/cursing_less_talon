app: jetbrains
-

toggle cursing: user.idea("toggle_markup")

toggle echo : user.idea("toggle_echo")

go {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("pre", cursing_color, cursing_shape, any_alphanumeric_key)

go past {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("post", cursing_color, cursing_shape, any_alphanumeric_key)

go last {user.cursing_color}:
    self.curse_to_relative_location_by_color("last", "pre", cursing_color)

go past last {user.cursing_color}:
    self.curse_to_relative_location_by_color("last", "post", cursing_color)

go next {user.cursing_color}:
    self.curse_to_relative_location_by_color("next", "pre", cursing_color)

go past next {user.cursing_color}:
    self.curse_to_relative_location_by_color("next", "post", cursing_color)

select {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select("select", cursing_color, cursing_shape, any_alphanumeric_key)

copy {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select("copy", cursing_color, cursing_shape, any_alphanumeric_key)

cut {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select("cut", cursing_color, cursing_shape, any_alphanumeric_key)

clear {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select("clear", cursing_color, cursing_shape, any_alphanumeric_key)

select until {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select_to("select", cursing_color, cursing_shape, any_alphanumeric_key)

copy until {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select_to("copy", cursing_color, cursing_shape, any_alphanumeric_key)

cut until {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select_to("cut", cursing_color, cursing_shape, any_alphanumeric_key)

clear until {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_select_to("clear", cursing_color, cursing_shape, any_alphanumeric_key)
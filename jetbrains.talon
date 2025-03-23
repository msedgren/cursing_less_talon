app: jetbrains
-

toggle cursing: user.idea("toggle_markup")

curse {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("pre", cursing_color, cursing_shape, any_alphanumeric_key)

curse post {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.curse_to_location("post", cursing_color, cursing_shape, any_alphanumeric_key)

echo {user.cursing_color} {user.cursing_shape} <user.any_alphanumeric_key>:
    self.echo(cursing_color, cursing_shape, any_alphanumeric_key)
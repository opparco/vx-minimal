rgss_main {
  ### start
  sprite = Sprite.new
  sprite.bitmap = Bitmap.new("Graphics/Titles1/Castle.png")

  ### post_start
  # Graphics.transition(10)
  Input.update

  terminated = false
  until terminated
    ### update
    Graphics.update
    Input.update

    terminated = Input.press?(:UP)
  end

  ### terminate
  # Graphics.freeze

  sprite.bitmap.dispose
  sprite.dispose
}

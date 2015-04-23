class Fixnum
  define_method(:coin_combo) do
    remainder = self
    coins = [25, 10, 5, 1]
    change = []
    num_coins = 0

    until remainder.==(0)
      coins.each() do |coin|
        num_coins = remainder./(coin)
        remainder = remainder.-(coin.*(num_coins))
        change.push(num_coins)
      end
    end
    change
  end
end

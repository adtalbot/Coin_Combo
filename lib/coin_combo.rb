class Fixnum
  define_method(:coin_combo) do
    remainder = self
    coins = [25, 10, 5, 1]
    change_a = []
    num_coins = 0

    until remainder.==(0)
      coins.each() do |coin|
        num_coins = remainder./(coin)
        remainder = remainder.-(coin.*(num_coins))
        change_a.push(num_coins)
      end
    end
    quarters = change_a[0]
    dimes = change_a[1]
    nickels = change_a[2]
    pennies = change_a[3]

    "Your change is: #{quarters} quarters, #{dimes} dimes, #{nickels} nickels, #{pennies} pennies."
    #change_a
  end
end

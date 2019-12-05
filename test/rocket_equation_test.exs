defmodule RocketEquationTest do
  use ExUnit.Case
  doctest RocketEquation

  test "Calculates correctly for a mass of 12 (2)" do
    assert RocketEquation.calculate_required_fuel(12) == 2
  end

  test "Calculates correctly for a mass of 14(2)" do
    assert RocketEquation.calculate_required_fuel(14) == 2
  end

  test "Takes into account mass of added fuel for 1969" do
    assert RocketEquation.calculate_required_fuel(1969) == 966
  end

  test "Takes into account mass of added fuel for 100756" do
    assert RocketEquation.calculate_required_fuel(100_756) == 50346
  end

  test "Calculates the sum of a list" do
    assert RocketEquation.calculate_required_fuel([12, 14]) == 4
  end

  test "Calculates the sum of a list of larger numbers and accounts for fuel mass" do
    assert RocketEquation.calculate_required_fuel([1969, 100_756]) == 966 + 50346
  end

  test "Final result for given values" do
    IO.inspect(RocketEquation.result())
  end
end

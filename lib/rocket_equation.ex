defmodule RocketEquation do
  @moduledoc """
  Documentation for RocketEquation.
  """

  @doc """
  Calculates required fuel for a given mass.

  'Fuel required to launch a given module is based on its mass.
  Specifically, to find the fuel required for a module, take its
  mass, divide by three, round down, and subtract 2.'

  ## Examples

      iex> RocketEquation.calculate_required_fuel(12)
      2

  """

  def calculate_required_fuel(list, sum \\ 0)

  def calculate_required_fuel(mass, sum) when mass < 9, do: sum

  def calculate_required_fuel(mass, sum) when is_number(mass) do
    fuel = Kernel.trunc(mass / 3) - 2
    calculate_required_fuel(fuel, sum + fuel)
  end

  def calculate_required_fuel([], sum), do: sum

  def calculate_required_fuel([h | t], sum) do
    calculate_required_fuel(t, sum + calculate_required_fuel(h))
  end

  @values [
    74819,
    111_192,
    104_476,
    53965,
    89875,
    147_914,
    120_203,
    73658,
    80054,
    75468,
    88811,
    73140,
    90128,
    51639,
    70417,
    102_818,
    106_523,
    77151,
    118_711,
    146_183,
    143_477,
    89008,
    67987,
    94512,
    98199,
    118_483,
    91978,
    53595,
    144_819,
    130_211,
    103_326,
    113_805,
    50204,
    138_909,
    113_345,
    142_697,
    121_281,
    128_132,
    98383,
    127_929,
    88562,
    135_418,
    65123,
    94330,
    107_136,
    85822,
    86208,
    93398,
    110_176,
    143_538,
    98851,
    56280,
    84734,
    52873,
    51898,
    66332,
    91624,
    75662,
    125_892,
    137_867,
    114_748,
    124_360,
    81075,
    140_638,
    77417,
    86881,
    50250,
    131_326,
    88877,
    141_095,
    147_701,
    103_934,
    101_008,
    140_186,
    117_845,
    149_923,
    138_631,
    93188,
    74299,
    89504,
    75185,
    72688,
    53057,
    50200,
    124_950,
    110_233,
    114_558,
    94047,
    112_376,
    122_374,
    115_571,
    136_289,
    115_146,
    80924,
    140_787,
    125_638,
    99960,
    61024,
    138_366,
    127_943
  ]

  def result do
    calculate_required_fuel(@values)
  end
end

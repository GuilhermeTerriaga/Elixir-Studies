defmodule KitchenCalculator do
  def get_volume({_, volume} = _volume_pair) do
    volume
  end

  def to_milliliter({:milliliter, volume} = _volume_pair) do
    {:milliliter, volume}
  end

  def to_milliliter({:tablespoon, volume} = _volume_pair) do
    {:milliliter, volume * 15}
  end

  def to_milliliter({:teaspoon, volume} = _volume_pair) do
    {:milliliter, volume * 5}
  end

  def to_milliliter({:fluid_ounce, volume} = _volume_pair) do
    {:milliliter, volume * 30}
  end

  def to_milliliter({:cup, volume} = _volume_pair) do
    {:milliliter, volume * 240}
  end

  def from_milliliter(volume_pair, :milliliter = unit) do
    {unit, get_volume(volume_pair)}
  end

  def from_milliliter(volume_pair, :tablespoon = unit) do
    {unit, get_volume(volume_pair) / 15}
  end

  def from_milliliter(volume_pair, :teaspoon = unit) do
    {unit, get_volume(volume_pair) / 5}
  end

  def from_milliliter(volume_pair, :fluid_ounce = unit) do
    {unit, get_volume(volume_pair) / 30}
  end

  def from_milliliter(volume_pair, :cup = unit) do
    {unit, get_volume(volume_pair) / 240}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end

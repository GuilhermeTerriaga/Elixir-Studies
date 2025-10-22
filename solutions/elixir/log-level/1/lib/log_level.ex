defmodule LogLevel do
  def to_label(level, legacy?) when legacy? == true do
    cond do
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      true -> :unknown
    end
  end

  def to_label(level, legacy?) when legacy? == false do
    cond do
      level == 0 -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 -> :fatal
      true -> :unknown
    end
  end


  def alert_recipient(level, legacy?) do  
    cond do
      to_label(level, legacy?) in [:fatal, :error] -> :ops
      legacy? == true and to_label(level, legacy?) == :unknown -> :dev1
      to_label(level, legacy?) == :unknown -> :dev2
      true -> false
    end
  end
end

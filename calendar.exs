defmodule MeuModulo.Calendar do
  def abreviacao_dia_semana_if(dia_semana) do
    # nao faca isso
    if dia_semana == :Segunda do
      "seg"
    else
      if dia_semana == :Terca do
        "ter"
      else
        if dia_semana == :Quarta do
          "quar"
        else
          if dia_semana == :Quinta do
            "quin"
          else
            if dia_semana == :Sexta do
              "sex"
            else
              if dia_semana == :Sabado do
                "sab"
              else
                if dia_semana == :Domingo do
                  "dom"
                else
                  "invalido"
                end
              end
            end
          end
        end
      end
    end
  end

  def abreviacao_dia_semana_case(dia_semana) do
    case dia_semana do
      :Segunda -> "seg"
      :Terca -> "ter"
      :Quarta -> "quar"
      :Quinta -> "quin"
      :Sexta -> "sex"
      :Sabado -> "sab"
      :Domingo -> "dom"
      _ -> "invalido"
    end
  end

  def abreviacao_dia_semana_cond(dia_semana) do
    cond do
      dia_semana == :Segunda -> "seg"
      dia_semana == :Terca -> "ter"
      dia_semana == :Quarta -> "quar"
      dia_semana == :Quinta -> "quin"
      dia_semana == :Sexta -> "sex"
      dia_semana == :Sabado -> "sab"
      dia_semana == :Domingo -> "dom"
      true -> "invalido"
    end
  end

  def abreviacao_dia_semana_pattern_matching(:Segunda), do: "seg"
  def abreviacao_dia_semana_pattern_matching(:Terca), do: "ter"
  def abreviacao_dia_semana_pattern_matching(:Quarta), do: "quar"
  def abreviacao_dia_semana_pattern_matching(:Quinta), do: "quin"
  def abreviacao_dia_semana_pattern_matching(:Sabado), do: "sex"
  def abreviacao_dia_semana_pattern_matching(:Domingo), do: "dom"
  def abreviacao_dia_semana_pattern_matching(_), do: "Invalido"
end

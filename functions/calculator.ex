defmodule Calculator do

  def squared(x) do
    x * x
  end

  def product_of(x, y) do
    x * y
  end

  def sum_of(x, y) do
    x + y
  end

  def subtract(x, y) when x>=y do
    :timer.sleep(1_000)
    x - y
  end

  def subtract(x, y) when x<y do
    "x must be greater than y"
  end

end

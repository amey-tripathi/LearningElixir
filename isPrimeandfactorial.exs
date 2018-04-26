# module_name.ex
defmodule Functions do
  def tfac(n, acc \\1)
  def tfac(0, acc), do: acc
  def tfac(n, acc), do: tfac(n-1, n * acc)
  def patternmatch(a, b) do
      if (a = b) do a else b end
  end

  #recursive part of the algorithm
  def recursivepart(a, c \\5) do
      if(c*c <= a) do
        cond do 
          (rem(a,c) == 0) or (rem(a, c+2) == 0)  -> false
          true -> recursivepart(a, c+6)
        end
        else
          true
      end
  end

  def isPrime(1), do: :notprime
  def isPrime(a) do
      cond do
      a <= 1 -> :notprime
      a <=3 -> :prime
      rem(a, 2) == 0 or rem(a,3) == 0 -> :notprime
      recursivepart(a) -> :prime
      true -> :notprime
      end
  end
end
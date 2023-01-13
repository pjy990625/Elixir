defmodule Lab1 do
  # 1 - implement a function that returns the remainder of a^m when divided by n
  def pow_mod(_, m, _) when m == 0, do: 1

  def pow_mod(a, m, n) when rem(m, 2) == 0 do
    half = pow_mod(a, div(m, 2), n)
    rem(half * half, n)
  end

  def pow_mod(a, m, n), do: rem(rem(a, n) * pow_mod(a, m - 1, n), n)

  # 2 - function that returns the multiplicative inverse of a mod n
  def inverse_mod(a, n) do
    r1 = a
    r2 = n
    im_helper(n, r1, r2, 0, 1)
  end

  defp im_helper(n, r1, r2, t1, _) when r2 == 0 do
    if r1 != 1 do
      :not_invertible
    else
      if t1 < 0 do
        t1 = n + t1
        t1
      else
        t1
      end
    end
  end

  defp im_helper(n, r1, r2, t1, t2) do
    if r1 >= r2 do
      q = div(r1, r2)
      r = rem(r1, r2)
      t = t1 - q * t2
      im_helper(n, r2, r, t2, t)
    else
      q = div(r2, r1)
      r = rem(r2, r1)
      t = t1 - q * t2
      im_helper(n, r1, r, t2, t)
    end
  end
end

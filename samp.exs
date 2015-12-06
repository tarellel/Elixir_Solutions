defmodule Samp do

  def foobar(alt \\ 'Asdf' , cache \\ 1, max \\ 5) do
    if cache <= max do
      IO.puts "Foo: #{cache}-#{alt}"
      cache = cache + 1
      foobar(alt, cache, max)
    end
  end

end

#Samp.foobar('', 0, 3)
Samp.foobar()

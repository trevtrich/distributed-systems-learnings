defmodule Basics do
    def add(p1, p2) do
        p1 + p2
    end

    def subtract(p1, p2) do
        p1 - p2
    end
end

defmodule SlightlyMore do
    def add_ones do
        Basics.add(1, 1)
    end

    def subtract_ones do
        Basics.subtract(1, 1)
    end
end
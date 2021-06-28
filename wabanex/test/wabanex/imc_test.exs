defmodule Wabanex.IMCTest do
  use ExUnit.Case , async: true
  alias Wabanex.IMC

  describe "calculate/1" do
    test "when the wrong filename is given, return the data" do
      params = %{"filename" => "banana.csv"}

      response = IMC.calculate(params)

      expected_response = {:error, "Error while opening the file"}



      assert response == expected_response
  end

  end
end

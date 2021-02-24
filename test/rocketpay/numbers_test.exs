defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do

    test "return the sum" do
      response = Numbers.sum_from_file("numbers")
      expected_response = {:ok, %{result: 55}}
      assert response == expected_response
    end


    test "file error" do
      response = Numbers.sum_from_file("errorMock")
      expected_response = {:error, %{message: "Invalid file"}}
      assert response == expected_response

    end
  end
end

defmodule Wabanex.UsersTest do
  use Wabanex.DataCase, async: true
  alias Wabanex.User

  describe "changeset/1" do
    test "when all params is valid, return a valid changeset" do
      params = %{name: "Ola", email: "ola@banana.com"}

      response = User.changeset(params)

      assert errors_on(response) == "banana"
    end
  end

end

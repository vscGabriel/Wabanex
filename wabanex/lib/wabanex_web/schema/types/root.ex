defmodule WabanexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation
  # usa o as para apelidar
  alias WabanexWeb.Resolvers.User, as: UserResolver
  alias Crudry.Middlewares.TranslateErrors

  import_types WabanexWeb.Schema.Types.User

  object :root_query do
    field :get_user, type: :user do
      # define o argumentp ID
      arg :id, non_null(:uuid4)

      # o & é a mesma coisa que fazer uma função anonima, só que mais sucinta. = resolve fn params, context -> UserResolver.get(params, context) and
      resolve &UserResolver.get/2

    end
  end

  object :root_mutation do
    field :create_user, type: :user do
      # define o argumentp ID
      arg :input, non_null(:create_user_input)

      # o & é a mesma coisa que fazer uma função anonima, só que mais sucinta. = resolve fn params, context -> UserResolver.get(params, context) and
      resolve &UserResolver.create/2
      middleware TranslateErrors
    end

  end
end

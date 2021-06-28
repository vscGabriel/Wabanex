defmodule WabanexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation
  # usa o as para "apelidar"
  alias WabanexWeb.Resolvers

  alias Resolvers.User, as: UserResolver
  alias Resolvers.Training, as: TrainingResolver

  alias Crudry.Middlewares.TranslateErrors
  alias  WabanexWeb.Schema.Types

  import_types Types.User
  import_types Types.Training
  import_types WabanexWeb.Schema.Types.Custom.UUID4


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

    field :create_training, type: :training do
      # define o argumentp ID
      arg :input, non_null(:create_training_input)

      # o & é a mesma coisa que fazer uma função anonima, só que mais sucinta. = resolve fn params, context -> UserResolver.get(params, context) and
      resolve &TrainingResolver.create/2
      middleware TranslateErrors
    end

  end
end

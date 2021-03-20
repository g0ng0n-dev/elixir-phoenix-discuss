defmodule Discuss.Topic do
	use Discuss.Web, :model


	schema "topics" do
		field :title, :string
	end

	## struct should be our topic, this struct represent 
	## a record in our DB
	## the params hash is a description of the new properties
	## that we want to update our model with. Usually have the same
	## properties has the hash.
	def changeset(struct, params \\ %{}) do
		struct
		|> cast(params, [:title])
		## Cast produces a "changeset", that is the object
		## that's actually in the db from what t is right now to 
		## what it needs to be.
		|> validate_required([:title])
		## Validates whether the changeset is valid or not
	
	## we actually save is the change set that is returned 
	## from the change that function.
end
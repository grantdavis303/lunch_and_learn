class UserSerializer
  def serialized_json(user)
    {
      "data":
        {
          "id": user[:id].to_s,
          "type": "user",
          "attributes": {
            "name": user[:name],
            "email": user[:email],
            "api_key": user[:api_key]
          }
        }
    }
  end
end
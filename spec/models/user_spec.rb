describe User do
  it "is invalid without an email address" do
    user = User.new(name:"Sven", email: nil)
    expect(user).to_not be_valid
    expect(user).to have(1).errors_on :email
  end

  it "is valid with an email address, name, and password" do
    user = User.new(name:"Sven", email: "sven@plastic.com", password: "password")
    expect(user).to be_valid
    expect(user).to have(0).errors_on :email
    expect(user).to have(0).errors_on :name
  end
end
require './lib/is_prime'

describe "# is_prime" do
  it "should return true for no.2" do
    expect(is_prime(2)).to be(true)
  end
  it "should return false for no.4" do
    expect(is_prime(4)).to be(false)
  end
  it "should return false for no.6" do
    expect(is_prime(6)).to eql(false)
  end
  it "should return false for no.8" do
    expect(is_prime(8)).to be(false)
  end
  it "should return true for no.3" do
    expect(is_prime(3)).to be(true)
  end
  it "should return false for no.9" do
    expect(is_prime(9)).to be(false)
  end
  it "should return false for no.15" do
    expect(is_prime(15)).to eql(false)
  end
  it "should return false for no.21" do
    expect(is_prime(21)).to be(false)
  end
  it "should return false for no.25" do
    expect(is_prime(25)).to be(false)
  end
  it "should return false for no.35" do
    expect(is_prime(35)).to be(false)
  end
  it "should return false for no.55" do
    expect(is_prime(55)).to be(false)
  end
  it "should return true for no.5" do
    expect(is_prime(5)).to be(true)
  end
  it "should return true for no.7" do
    expect(is_prime(7)).to be(true)
  end
  it "should return false for negative numbers" do
    expect(is_prime(-5)).to be(false)
    expect(is_prime(-7)).to be(false)
  end
  it "should return false for no.1" do
    expect(is_prime(1)).to be(false)
  end
  it "should return false for no.0" do
    expect(is_prime(0)).to be(false)
  end
end

  
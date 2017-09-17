require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @card = Card.new(title: "Dat Card Tho", description: "A card is what this is; a description is where you're at")
  end

  test "card should be valid" do
    assert @card.valid?
  end

  test "title should be present" do
    @card.title = "    "
    assert_not @card.valid?
  end

  test "descr should be present" do
    @card.description = "      "
    assert_not @card.valid?
  end

end

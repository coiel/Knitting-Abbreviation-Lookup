class Abbreviation < Ohm::Model
  attribute :acronym
  attribute :meaning

  index :acronym

  def validate
    assert_unique :acronym
    assert_present :acronym
    assert_present :meaning
  end
end
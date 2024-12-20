require 'test_helper'

class MutationTypeTest < ActiveSupport::TestCase
  test 'mutation has createLink field' do
    assert_includes Types::MutationType.fields.keys, 'createLink'
  end

  test 'createLink field returns correct type' do
    assert_equal 'Link', Types::MutationType.fields['createLink'].type.to_type_signature
  end
end

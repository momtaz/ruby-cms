require 'test_helper'
class SiteTest < ActiveSupport::TestCase
  fixtures :sites
  test "site attributes must not be empty" do
site = Site.new
assert site.invalid?
assert site.errors[:title].any?
assert site.errors[:permalink].any?
assert site.errors[:body].any?
end
test "site is not valid without a unique title" do
  site = Site.new(:title  => sites(:ruby).title,
  :permalink => "yyy", :body => "yyy")
   assert !site.save
      #assert_equal "has already been taken", site.errors[:title].join('; ')

                        
end
end

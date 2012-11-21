require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "comment_received" do
    mail = Notifier.comment_received
    assert_equal "Comment received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "comment_shipped" do
    mail = Notifier.comment_shipped
    assert_equal "Comment shipped", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

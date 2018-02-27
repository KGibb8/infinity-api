# frozen_string_literal: true

task :setup do
  User.find_or_initialize_by(
    username: 'develop',
  ).tap do |user|
    user.update!(
      password: 'password',
      email: 'develop@honkifyourhornby.net'
    )
  end
end

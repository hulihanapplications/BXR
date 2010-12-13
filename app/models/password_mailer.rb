# E-mails login data to newly created users
# and to users who have requested a new password
class PasswordMailer < ActionMailer::Base
  # E-mail login data to a new user.
  def new_user(name, email, password)
    @subject          = 'Your BXR password'
    @body['name']     = name
    @body['password'] = password
    @recipients       = email
    @from             = 'BXR <bxr@domain.com>'
  end

  # E-mail login data to an exiting user
  # who requested a new password.
  def forgotten(name, email, password)
    @subject          = 'Your BXR password'
    @body['name']     = name
    @body['password'] = password
    @recipients       = email
    @from             = 'BXR <bxr@domain.com>'
  end
end

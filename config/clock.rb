require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job|
    if job.eql?('frequent.update_codeforces')
			Codeforces.update_contests
    elsif job.eql?('frequent.update_codeforces_gym')
      CodeforcesGym.update_contests
    elsif job.eql?('frequent.update_at_coder')
      AtCoder.update_contests
		end
  end

  every(30.minute, 'frequent.update_codeforces')
  every(30.minute, 'frequent.update_codeforces_gym')
  every(30.minute, 'frequent.update_at_coder')
end

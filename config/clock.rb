require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job|
    if job.eql?('frequent.ping')
      PingService.ping
    elsif job.eql?('frequent.2_min')
      AllService.update_contests
    elsif job.eql?('frequent.3_min')
      CodeforcesService.update_contests
      CodeforcesGymService.update_contests
      TopCoderService.update_contests
      AtCoderService.update_contests
    elsif job.eql?('frequent.5_min')
      CodeChefService.update_contests
      HackerRankService.update_contests
      HackerEarthService.update_contests
      LeetCodeService.update_contests
    elsif job.eql?('frequent.7_min')
      A2ojService.update_contests
      CsAcademyService.update_contests
      KickStartService.update_contests
    end
  end

  every(3.minute, 'frequent.3_min')
  every(5.minute, 'frequent.5_min')
  every(7.minute, 'frequent.7_min')
  every(2.minute, 'frequent.2_min')
  every(29.minute, 'frequent.ping')
end

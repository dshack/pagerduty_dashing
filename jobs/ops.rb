# :first_in sets how long it takes before the job is first run. In this case, it is run immediately
SCHEDULER.every '120s', :first_in => 0 do |job|
  send_event('response_time_1', { value: (rand * 400).to_i })
  send_event('response_time_2', { value: (rand * 400).to_i })
end
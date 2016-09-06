def merge_meetings(meetings)
  sorted_meetings = meetings.sort_by(&:first)
  merged = [sorted_meetings[0]]
  sorted_meetings[1..-1].each  do |meeting_start, meeting_end|
    prev_meeting_start, prev_meeting_end = merged[-1]
    if meeting_start <= prev_meeting_end
      merged[-1] = [ prev_meeting_start, ([meeting_end, prev_meeting_end].max) ]
    else 
      merged << [ meeting_start, meeting_end ]
    end 
  end
  merged  
end 




puts merge_meetings([ [0, 1], [3, 5], [4, 8], [10, 12], [9, 10] ]).inspect
# [ [0, 1], [3, 8], [9, 12] ]
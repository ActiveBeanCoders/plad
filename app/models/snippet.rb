class Snippet < ActiveRecord::Base

    def self.dedupe
        grouped = all.group_by{ |s| [s.trigger] }
        grouped.values.each do |duplicates|
            first_one = duplicates.shift
            duplicates.each{|double| double.destroy}
        end
    end

end

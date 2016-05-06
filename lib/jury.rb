class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes_of = finalists.map{ |finalist| [finalist, 0] }.to_h
    votes_of.tap do |votes|
      members.each do |member|
        finalist = finalists.sample
        puts "Jury #{member} vote for #{finalist}"
        votes[finalist] += 1
      end
    end
  end

  def report_votes(votes)
    votes.each do |finalist, votes|
      puts "#{finalist} has #{votes} vote(s)"
    end
  end

  def announce_winner(votes)
    votes.max_by { |finalist, casts| casts }[0]
  end
end

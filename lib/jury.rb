class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes = finalists.map{ |finalist| [finalist, 0] }.to_h
    members.each do |member|
      cast = finalists.sample
      puts "#{member} vote for #{cast}"
      votes[cast] += 1
    end
    votes
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

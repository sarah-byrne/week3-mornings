class NoteList
  def initialize
    @notes = []
  end

  def add(note)
    @notes.push(note)
  end

  def display
    @notes.each do |note|
      note
    end
  end
end

require 'socket'
require_relative 'note_list'

server = TCPServer.new(2345)

socket = server.accept

note_list = NoteList.new

they_said = ""

while they_said != "quit" do
  socket.puts "What do you say?"
  they_said = socket.gets.chomp
  note_list.add(they_said)
  socket.puts "You said: #{they_said}. Note added"
end

socket.puts "The notes are:"
socket.puts note_list.display
socket.puts "Goodbye!"

socket.close

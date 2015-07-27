require "pathname"

# Taken from:
#   https://github.com/rails/rails/blob/c5205041f65206a1490063b08915e7b2a2151a61/actionpack/lib/action_view/helpers/text_helper.rb#L223
def word_wrap(text, line_width = 80)
  text.split("\n").collect do |line|
    # Discard comments.
    next if line =~ /^#/
    line.length > line_width ? line.gsub(/(.{1,#{line_width}})(\s+|$)/, "\\1\n").strip : line
  end * "\n"
end

commit_message_pathname = Pathname.new(ARGV.first)
commit_message = commit_message_pathname.read

# GitHub wraps subject lines longer than 69 characters.
subject_line_width = 69
subject_line = commit_message.lines.first.chomp
if subject_line.length > subject_line_width
  puts "warning: subject line of commit message > #{subject_line_width} characters"
end

# To see where the number 72 comes from, please see:
#   http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
line_width = 72
wrapped_commit_message = word_wrap(commit_message, line_width)
commit_message_pathname.open("w") { |file| file.write(wrapped_commit_message) }

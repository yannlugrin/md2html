require 'redcarpet'
require "md2html/version"

module Md2html
  def self.run(source, target=nil)
    target ||= File.join(File.dirname(source), File.basename(source, File.extname(source)) + '.html')

    File.open(target, 'w+') do |file|
      renderer = Redcarpet::Render::HTML.new
      markdown = Redcarpet::Markdown.new(renderer, :tables => true, :autolink => true)

      file << markdown.render(File.read(source))
    end
  rescue => e
    puts 'An error occured, ensure your source file is in Markdown format and you have right to write to target file'
    puts "Source file: '#{source}'"
    puts "Target file: '#{target}'"
    puts ''
    puts 'Error:'
    puts "#{e.class} (#{e.message}):"
    puts e.backtrace.join("\n")
  end
end

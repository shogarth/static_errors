def save(source, dest)
  puts "Saving #{source} to #{dest}"
  
  a = Mechanize.new
  a.get(source) do |page|
    File.delete(dest) if File.exist?(dest)
    page.save dest
  end
end

task :static_errors => :environment do
  @path = 'http://localhost:3000/errors/'
  @languages = ''
  @errors = ''
  @destination = "public/"
  
  @path = ENV["path"] if ENV["path"]
  @languages = ENV["languages"] if ENV["languages"]
  @errors = ENV["errors"] if ENV["errors"]
  @destination = ENV["destination"] if ENV["destination"]
  
=begin
  puts "Path: #{@path}"
  puts "Languages #{@languages}"
  puts "Errors #{@errors}"
  puts "Destination #{@destination}"
=end

  languages = @languages.split(',')
  errors = @errors.split(',')
  
  errors.each do |error|
    save("#{@path}#{error}", "#{@destination}#{error}.html")
    languages.each do |language|
      save("#{@path}#{error}?locale=#{language}", "#{@destination}#{error}.#{language}.html")
    end
  end
end

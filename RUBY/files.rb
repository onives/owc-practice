File.open("employees.txt", "r") do |file|
    puts file.readline()
    puts file.readchar()

    # for line in file.readlines()
    #     puts line
    # end
end

file = File.open("employees.txt", "r")

# do stuff here

# close file

file.close()

# writing information to files
File.open("employees.txt", "r+") do |file|
    file.write("\nOlive, Accounting")
end

class Post < ActiveRecord::Base
    
    validates :title, presence: true
    def instance_report
        puts "Post title is #{title}"
        puts "This is a great blog post, you should read it"
    end
    
    #this should show the first 10 characters of the body
    def preview_body
        snippet = body[0..10]
        puts " #{snippet} "
    end

    def preview_words
        snippet2 = body.split[0..4].join(" ")
        puts " #{snippet2}"
    end

    #twitter check operates on the instance's title
    #this looks pretty good, clean up code and space out formatting
    def twitter_check
        if  title.length < 140
            diff = (140 - title.length)
            puts "Your msg is ready for Twitter, you have #{diff} chars to go"
        else
             diff = title.length - 140
             
             puts "your msg is #{diff} characters too long to tweet"
        end 
    end
    
    
    def self.class_report
        puts "BOOM CLASS METHOD!"
        puts "I have #{Post.count} posts available"
    end
    
    def upcase_body
        return body.upcase 
    end
    
    def smush_body
        return body.gsub(" ","")
    end
    
    def yell_body
        return body.upcase.gsub(" ","")
    end
end

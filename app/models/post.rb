class Post < ActiveRecord::Base
    
    validates :title, presence: true
    def instance_report
        puts "Post title is #{title}"
        puts "This is a great blog post, you should read it"
    end

    #twitter check operates on the instance's title
    def twitter_check
        puts title.length
        if  title.length < 140
            diff = (140-(title.length))
            puts "Your msg is ready for Twitter, you have #{diff} chars to go"
        else
             diff = (title.length)-140
             puts "your msg is #{diff} characters too long to tweet"
        end
    end
    
    
    def self.class_report
        puts "BOOM CLASS METHOD!"
        puts "I have #{Post.count} posts available"
    end
end

class Post < ActiveRecord::Base
    
    validates :title, presence: true
    def instance_report
        puts "Post title is #{title}"
        puts "This is a great blog post, you should read it"
    end

    #twitter check operates on the instance's title
    def twitter_check
        if  title.length < 140
            puts "Your msg is ready for Twitter"
        else 
            puts "Message is too long"
        end
    end
    
    
    def self.class_report
        puts "BOOM CLASS METHOD!"
        puts "I have #{Post.count} posts available"
    end
end

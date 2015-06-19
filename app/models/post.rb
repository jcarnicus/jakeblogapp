class Post < ActiveRecord::Base
validates :title, presence: true
def instance_report
    puts "Post title is #{title}"
    puts "This is a great blog post, you should read it"
end

def twitter_check
    post_length = post.length
    if post_length < 140
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

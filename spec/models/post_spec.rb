require 'rails_helper' 

RSpec.describe Post, type: :model do
    it "saves a post with a title present" do
    post = Post.create(title:"Testing Title")
    expect(post.valid?).to eq(true)
    end
    
    it "doesn't validate a blank post" do
        post =Post.create(title:"")
        expect(post.valid?).to eq(false)
    end
    
    describe "yell feature" do
        
    it "return body text with no word spacing" do
        post = Post.new(title:"Test", body: "test test test test")
        result = post.upcase_body
        expect(result).to eq("TEST TEST TEST TEST")
       
    end   
    it "all caps" do 
        post = Post.new(title:"test", body:"one two three")
        result = post.smush_body
        expect(result).to eq("onetwothree")
    end
    
    it "should return post body in all caps with no spacing" do
            post = Post.new(title:"Test", body: "test test test test")
            result = post.yell_body
            expect(result).to eq("TESTTESTTESTTEST")
    end
    
        end
    end



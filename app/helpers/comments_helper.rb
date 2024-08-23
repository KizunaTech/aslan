module CommentsHelper
    def linkify_mentions(text)
      text.gsub(/@(\w+)/) { |match| link_to match, user_path($1) }
    end
end
  
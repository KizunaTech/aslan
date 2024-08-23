module ApplicationHelper
    def truncate_text(text, length = 100, url = '#')
        if text.length > length
          safe_text = sanitize(text[0...length]) # Ensure no partial tags or security issues
          "#{safe_text}...#{link_to('more', url)}".html_safe
        else
          text
        end
    end
end

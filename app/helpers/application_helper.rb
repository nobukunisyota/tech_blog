module ApplicationHelper
    def document_title
        if @title.present?
            "#{@title} - Tech"
        else
            "Tech"
        end
    end
end

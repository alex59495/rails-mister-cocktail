module ApplicationHelper
    def icon_search(name, size=1)
        #icon("camera-retro")
        #<i class="icon-camera-retro"></i> 
      
        html = "<i class='fas fa-#{name}' "
        html += "style='font-size:#{size}em' "
        html += "></i>"
        html.html_safe
      end

      def icon_trash(name, size=0.7)
        #icon("camera-retro")
        #<i class="icon-camera-retro"></i> 
      
        html = "<i class='fas fa-#{name}' "
        html += "style='font-size:#{size}em' "
        html += "></i>"
        html.html_safe
      end

      def icon_edit(name, size=0.7)
        #icon("camera-retro")
        #<i class="icon-camera-retro"></i> 
      
        html = "<i class='far fa-#{name}' "
        html += "style='font-size:#{size}em' "
        html += "></i>"
        html.html_safe
      end
end

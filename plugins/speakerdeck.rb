module Jekyll
    class SpeakerDeck < Liquid::Tag
  
        def initialize(name, id, tokens)
            super
            @id = id
        end

        def render(context)
            %(<script async="true" class="speakerdeck-embed" data-ratio="1.77777777777778" data-id="#{@id.strip}" src="https://speakerdeck.com/assets/embed.js"> </script>)
        end

    end
end

Liquid::Template.register_tag('speakerdeck', Jekyll::SpeakerDeck)

##
## Variables
##
<% pagewidth = 60 %>\
<% title = album['Performer'] + ' - ' + album['Album'] %>\
##
## Functions
##
<%def name="hline()">${'-' * pagewidth}</%def>\
##
## Expression filterings
## http://docs.makotemplates.org/en/latest/filtering.html
##
<%!
    def center(word):
        return str.center(str(word), 60, ' ')
%>\
##
## THE template
##
${hline()}
${ title | center }
${hline()}
Artist: ${album['Performer']}
Album:  ${album['Album']}
Genre:  ${album['Genre']}
Format: ${album['Format']}
Date:   ${album['Recorded_date']}

Tracklist:
${hline()}
% for track in tracklist:
${ '%2s' % track['Track_name_Position']}. \
${ track['Track_name'].ljust(album['track_name_maxlen']+3, '.') }\
(${track['Duration']})
% endfor
${hline()}
## http://www.cyberciti.biz/faq/howto-get-current-date-time-in-python/
<%! from time import strftime as time %>\
Generated: ${"%x %X" | time} with by Zik Nfo Builder

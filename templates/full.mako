##
## Variables
##
<% pagewidth = 60 %>\
<% 
title = album['Performer'] + ' - ' + album['title'] 
%>\
##
## Functions
##
<%def name="hline()">${'-' * pagewidth}</%def>\
##
## Expression filterings
## http://docs.makotemplates.org/en/latest/filtering.html
##
<%!
# Use center() to center strings
def center(word):
    return str.center(str(word), 60, ' ')
%>\
##
## THE template
##
${hline()}
${ title | center }
${hline()}
Artist:   ${album['Performer']}
Album:    ${album['Album']}
Genre:    ${album['Genre']}
Date:     ${album['Recorded_Date']}
Codec:    ${album['codec']}
Ripper:   ${album['ripper']}
Channels: ${album['channels']}

Tracklist:
${hline()}
% for track in tracklist:
${ '%2s' % track['Track_Position']}. \
${ track['Title'].ljust(int(album['track_title_maxlen'])+3, ' ') }\
${track['Duration_String3']}
## ${ track['Title'] }
% endfor
${hline()}

## http://www.cyberciti.biz/faq/howto-get-current-date-time-in-python/
<%! from time import strftime as time %>\
:: Generated on ${"%x %X" | time} with Zik Nfo Builder ::

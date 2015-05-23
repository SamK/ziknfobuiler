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
Artist:   ${album['Performer']}
Album:    ${album['Album']}
Genre:    ${album['Genre']}
Date:     ${album['Recorded_Date']}
Codec:    ${album['Audio_Codec_List']} (${album['Format']})
Ripper:   ${album['Encoded_Library_String']}
Channels: ${album['Channel_s_']} / ${album['SamplingRate_String']} / ${album['BitDepth']} bit
Bit rate: ${album['OverallBitRate_Mode_String']}

Tracklist:
${hline()}
% for track in tracklist:
${ '%2s' % track['Track_Position']}. \
${ track['Title'].ljust(album['track_name_maxlen']+3, ' ') }\
(${track['Duration_String3']})
% endfor
${hline()}

## http://www.cyberciti.biz/faq/howto-get-current-date-time-in-python/
<%! from time import strftime as time %>\
:: Generated on ${"%x %X" | time} with Zik Nfo Builder ::

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
# Use center() to center strings
def center(word):
    return str.center(str(word), 60, ' ')

def channels(album):
    result = []
    if 'Channel_s_' in album:
        result.append('{} channels'.format(album['Channel_s_']))
    if 'BSamplingRate_String' in album:
        result.append('{}'.format(album['SamplingRate_String']))
    if 'BitDepth' in album:
        result.append('{} bits'.format(album['BitDepth']))
    return ' / '.join(result)
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
Ripper:   ${album['ripper']}
Channels: ${channels(album)}
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

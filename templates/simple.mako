${album['Performer']} - ${album['Album']}

===
Artist: ${album['Performer']}
Album:  ${album['Album']}
Genre:  ${album['Genre']}
Format: ${album['Format']}
Date:   ${album['Recorded_Date']}

Tracklist:
% for track in tracklist:
${ '%2s' % track['Track_Position']}. ${ track['Title']} (${track['Duration_String3']})
% endfor


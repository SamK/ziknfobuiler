${album['Performer']} - ${album['Album']}

===
Artist: ${album['Performer']}
Album:  ${album['Album']}
Genre:  ${album['Genre']}
Format: ${album['Format']}
Date:   ${album['Recorded_date']}

Tracklist:
% for track in tracklist:
${ '%2s' % track['Track_name_Position']}. ${ track['Track_name']} (${track['Duration']})
% endfor


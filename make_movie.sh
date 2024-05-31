tm=ctrl-d0
imodel=4 #3
itraj=1 #6
ic=236 #727
istart=0000 #0025
imagename=${tm}_slice_m${imodel}traj${itraj}c${ic}_%04d.png
moviename=movies/${tm}_m${imodel}traj${itraj}c${ic}.mp4
ffmpeg -r 6 -start_number $istart -i $imagename -c:v libx264 -preset slow  -profile:v high -level:v 4.0 -pix_fmt yuv420p -crf 22 -codec:a aac -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" $moviename
 echo $f



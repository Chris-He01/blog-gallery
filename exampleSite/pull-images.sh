#!/usr/bin/env bash

# Home
wget --no-clobber --content-disposition --directory-prefix=content "https://unsplash.com/photos/wRuhOOaG-Z4/download?&force=true&w=1920"


# Nature
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/ZS_XuDZmxpM/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/U7BG3FOT5r8/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/f_C_lFxqThI/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/RuaRTaKi-D4/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/P45gR9kH0SM/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/k_PbdrEs79g/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/4f8u5mFGKjw/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/TUzsO59UFpo/download?&force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/nature "https://unsplash.com/photos/x7CyIC2jUaE/download?&force=true&w=1920"
exiftool -ImageDescription="nature that makes you feel like you are in a dream by Daria Shevtsova" content/nature/daria-shevtsova-f_C_lFxqThI-unsplash.jpg
exiftool -ImageDescription="aerial photography of body of water surrounded by trees during daytime by Daria Shevtsova" content/nature/daria-shevtsova-k_PbdrEs79g-unsplash.jpg


# Private
wget --no-clobber --content-disposition --directory-prefix=content/private "https://unsplash.com/photos/gRknIewfaBs/download?force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/private "https://unsplash.com/photos/QQ0naV2n-mg/download?force=true&w=1920"

# Featured
wget --no-clobber --content-disposition --directory-prefix=content/featured-album "https://unsplash.com/photos/fcwZsjyqp0s/download?force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/featured-album "https://unsplash.com/photos/IFlBNNOLHUo/download?force=true&w=1920"
wget --no-clobber --content-disposition --directory-prefix=content/featured-album "https://unsplash.com/photos/pjszS6Q2g_Y/download?force=true&w=1920"

# Tibet
while IFS= read -r url; do
	wget --no-clobber --content-disposition --directory-prefix=content/tibet "$url"
done <<'EOF'
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0232.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0235.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0268.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0269.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0289.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0302.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0315.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0316.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0318.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0320.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0376.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0418.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0427.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0434.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0435.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0439.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0454.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0455.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0461.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0505.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0508.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0533.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0542.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0544.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0556.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0565.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0569.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0575.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0607.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0628.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0644.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0647.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0652.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0653.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0656.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0660.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0665.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0668.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0670.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0677.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0679.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0683.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0701.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0705.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0708.JPG
http://tbiyvdh13.hd-bkt.clouddn.com/tibet/IMG_0716.JPG
EOF

# Stay Mem (High School Homestay)
while IFS= read -r url; do
	wget --no-clobber --content-disposition --directory-prefix=content/stay_mem "$url"
done <<'EOF'
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9778.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9779.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9785.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9790.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9792.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9817.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9818.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9821.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9822.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9823.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9824.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9825.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9826.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9838.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9839.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9840.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9844.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9845.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9851.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9859.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9860.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9863.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9870.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9886.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9918.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9926.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9927.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9928.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9929.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9932.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9933.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9939.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9940.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9945.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9946.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9970.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9989.jpg
EOF


# Stay Mem (High School Homestay)
while IFS= read -r url; do
	wget --no-clobber --content-disposition --directory-prefix=content/story "$url"
done <<'EOF'
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9939.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9945.jpg
http://tbiyvdh13.hd-bkt.clouddn.com/high_school/two_homestay/IMG_9946.jpg
EOF
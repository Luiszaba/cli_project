CLI guideline

How do I want this to work?
- Plan your gem
- How do you want to structure your gem
- Begin at the run file and work your way up
# bin tech_news
- Build the CLI interface through the run file
- Bring your CLI interface to life
- Program from the inside out

What are we trying to achieve?
- Read yesterdays big tech news
- Intel 

icon: /html/body/section[1]/div[2]/div[1]/div[1]/a/div/div[1], https://newsroom.intel.com/

title1: /html/body/section[1]/div[2]/div[1]/div[1]/a/div/div[2]/div[2],
 https://newsroom.intel.com
title2:/html/body/section[1]/div[2]/div[1]/div[3]/a/div/div[2]/div[2],
 https://newsroom.intel.com

- AMD

icon: //*[@id="block-amd-branding"]/a/img,
https://www.amd.com/en/corporate/newsroom

title1://*[@id="News"]/div/div[1]/div/div[1]/div/div/div[1]/article/h4/a/span,
https://www.amd.com/en/corporate/newsroom

title2://*[@id="News"]/div/div[1]/div/div[1]/div/div/div[2]/article/h4/a/span
https://www.amd.com/en/corporate/newsroom

- NVIDIA

icon: //*[@id="logo"]/a/img
url: http://www.nvidia.com/page/home.html

title1: //*[@id="sb-site"]/div[1]/div[2]/div/div[1]/div/div[1]/div/div[1]/div[2]/h3/a, 
url: https://blogs.nvidia.com/blog/2019/02/06/2d-to-3d-medical-imaging/
icon: //*[@id="sb-site"]/div[1]/div[2]/div/div[1]/div/div[1]/div/div[1]/div[1]/img

title2: //*[@id="sb-site"]/div[1]/div[2]/div/div[1]/div/div[1]/div/div[2]/div[2]/h3/a
url:https://blogs.nvidia.com/blog/2019/02/05/lights-camera-quadro-the-magic-behind-11-years-of-oscar-worthy-visual-effects/
icon: //*[@id="sb-site"]/div[1]/div[2]/div/div[1]/div/div[1]/div/div[2]/div[1]/img

- WCCTech

icon: /html/body/header/section/h1/a/img,
https://wccftech.com/

title1: /html/body/main/div[3]/section/article[1]/div[2]/h2/a
url: https://wccftech.com/
icon: /html/body/main/div[3]/section/article[1]/div[1]/a/img

title2: /html/body/main/div[3]/section/article[2]/div[2]/h2/a,
url: https://wccftech.com/
icon: /html/body/main/div[3]/section/article[2]/div[1]/a/img

Apple: 

icon: //*[@id="ac-gn-firstfocus"]
url: https://www.apple.com/newsroom/

title: //*[@id="main"]/section[1]/div/div/ul/li[1]/a/div/div[2]/div/p[1]
url:https://www.apple.com/newsroom/2019/02/apple-names-deirdre-obrien-senior-vice-president-of-retail-and-people/
icon: //*[@id="main"]/section[1]/div/div/ul/li[1]/a/div/div[1]/div/div

title: //*[@id="main"]/section[1]/div/div/ul/li[2]/a/div/div[2]/div/p
url: https://www.apple.com/newsroom/2019/02/apple-marks-heart-month-in-february/
icon: //*[@id="main"]/section[1]/div/div/ul/li[2]/a/div/div[1]/div/div


What attributes does a news object have?
- Title: name of 
- Source:
- Date:
- URL:


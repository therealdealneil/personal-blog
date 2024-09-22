+++
title = 'Elevate Your Team Screenshot Productivity with ShareX'
date = 2024-09-22T12:39:50-05:00
draft = false
+++

It's common for software engineering teams to rely on screenshot and screen recording tools. It's used to build documentation, bug reporting, and various other day-to-day activities. However, many organizations invest in commercial tools like [SnagIt](https://www.techsmith.com/snagit/) with hefty licenses. Or don't take advantage of productivity features that many of these tools offer. It's time to revisit screenshots and learn how to invest in cost-effective solutions and take advantage of the robust productivity features which are commonly overlooked!

### Screenshots on a Budget

Tools like [SnagIt](https://www.techsmith.com/snagit/) are excellent and do an amazing job taking screenshots and screen recordings. It's packed with features for annotating images and sharing with coworkers. They are also extremely user-friendly. But it also comes with a hefty license cost. Many organizations will prefer the security and flexibile installation options that these enterprise level solutions provide, but if your organization is not constrained, there are many free and open source tools that provide compable features.

#### Greenshot
One of my personal favorites over the years was [Greenshot](https://getgreenshot.org/). Unfortunately, it's not well maintained and hasn't seen an update in over 7 years. Additionally, it only supports screen shot and not screen recordings.

#### Lightshot
Another free tool is [Lightshot](https://app.prntscr.com/en/). This also has not been maintained over the years and can only do screenshots. However, it is user friendly and those that use it, often like its ease-of-use.

#### Windows/Mac
You might be asking why not take advantage of what comes built-into modern operation systems like Windows 11 or MacOS. These OSes have come a long way and have robust built-in features which you should give a reasonable shot. But overall, they are not feature rich and won't provide some of the advanced annotation, sharing, and automation features you get with other tools.

### Improving Productivity
One area that's often overlooked are the productivity features these tools provide.

1. **Sharing**: When taking a screenshot, you inevitable have a destination in mind. Either you will share to your coworkers via email, or upload it to a bug reporting tool such as JIRA. I cringe when I see someone take a screenshot and then manually open other software to push to these destinations when it can be automated so easily.
2. **Annotating**: Frequently, you must annotate an image immediately after taking it and before sending to others. This could include drawing arrows, adding text, or even blurring sensitive data. A screenshot tool should make it a simple to do these actions.
3. **Scrolling Capture**: Often a browser window or code snippets will be long and you want to capture the entire window, but this needs scroling. Many tools can capture the entire screen with scrolling and stitch it together to a single image.

### Why I Recommend ShareX
[ShareX](https://getsharex.com/) is an extremely powerful AND free tool for screen shots and screen recordings. Its open source and actively maintained. It offers both screenshot and screen recording functionalities. Some of the standout features include:

1. **[Actions](https://getsharex.com/actions)**: Easily apply post-processing to your image/video captures such as converting formats or compressing into zip files. This can be extended via 3rd party applications using CLI commands.
2. **[Scrolling Screenshot](https://getsharex.com/docs/scrolling-screenshot)**: As the name implies, easily grab screenshots of long windows that normally require scrolling.
3. **[Custom Uploader](https://getsharex.com/docs/custom-uploader)**: Send your screenshots to any destination that can be configured via HTTP requests. This includes services like JIRA, AWS S3 Buckets, OneDrive, FTP, and many more. Most of these common services come included, but you can add any custom service as long as it supports an HTTP API. A great use case is for reporting issues to JIRA. A QA team member can grab a screenshot and directly upload to a JIRA issue.
4. **[OCR](https://getsharex.com/docs/ocr)**: A valuable but overlooked feature is OCR. Take a screenshot and apply OCR to extract text. While it may not be something you need all the time, it will be a lifesaver when you need it.

ShareX is a powerful tool, but it is more complex. It may not work for all teams with its steep learning curve. Its definitely reasonable for teams to adopt and give a shot.

#### Wrap-Up

Elevate your team's screenshot and screen recording game without breaking the bank. ShareX is a powerful, versatile, and budget-friendly tool that can significantly benefit software engineering teams. Its rich feature set, seamless integration with JIRA and other tools, and high level of customization make it a must-have. Plus, being free and open-source, it offers incredible value. So, if you haven't tried ShareX yet, now's the time to give it a go and see how it can boost your team's productivity.

Happy capturing! 📸

{{< resize-image src="taking-a-photo.png" alt="Bitmoji character taking a photo" width="300" >}}
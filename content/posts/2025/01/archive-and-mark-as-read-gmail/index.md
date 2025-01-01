+++
title = 'Automatically Mark Archived Emails as Read'
date = 2025-01-01
draft = false
tags = ["productivity"]
[banner]
  image = "person-frustrated-on-computer.png"
  alt = ""
  width = ""
[footer]
  image = "bitmoji-surfing-the-net.png"
  alt = ""
  width = ""
+++

Gmail introduced the now universal concept of archiving emails. This let you remove emails from your inbox, yet not completely delete them in case you needed to retrieve an email at a later time. Frequently, you archive an email without even opening it when the subject tells you all you need to know.

Unfortunately, this means you end up with unread emails in your archive. Gmail doesn't have a feature to mark as read and archive in one fail swoop. However, there is a clever trick to help automate this process.

### Using Google Apps Script
The trick is to use [Google Apps Script](https://script.google.com), which is a free, hosted service that lets you automate tasks, create plugins, and more for Google Apps. With this, we'll create a script that runs on an interval (i.e. 1 hour) and automatically marks unread emails in your archive as read. This runs fully on Google's servers in the background.

I came across articles for this many years ago and implemented it. It's ran for years without hitch - so much so that I forgot it existed until I came across the Google App Script for it still in my account.

### How to Create the Script
Credit goes to the many articles I used to craft this solution. Here's how to get started.

1. Go to [script.google.com](https://script.google.com) and click on **New Project**.
\
\
{{< resize-image src="step-1.png" alt="Google App Scripts homepage with arrow pointing to New Project" width="800" >}}
\

2. Paste the following code block into the code editor and click the save button.
    ````   
    function markArchivedAsRead() {
      var threads = GmailApp.search('label:unread -label:inbox');
      GmailApp.markThreadsRead(threads);
    };
    ````
    \
    {{< resize-image src="step-2.png" alt="Google App Scripts editor with arrow at code editor and box around save button" width="800" >}}

3. Save your script with a name like **Mark as Read**.
\
\
{{< resize-image src="step-3.png" alt="Google App Scripts with arrow pointing to script name" width="800" >}}

4. Hit the **Run** button to perform a test of your script. Make sure you have at least one unread email in your archive. You will be prompted to provide permission for your script to have access to your gmail. Follow the prompts to provide permission. There will be multiple warnings advising it is unsafe, but you can continue through these as its your own script which is requesting permission!
\
\
{{< resize-image src="step-4.png" alt="Google App Scripts with arrow pointing to run button" width="800" >}}

5. Navigate to the **Triggers** page from the left nav menu and click **Add Trigger**.
\
\
{{< resize-image src="step-5.png" alt="Google App Scripts with arrow pointing to Triggers page and Add Trigger button" width="800" >}}

6. Configure the trigger to run on a time-based interval such as hourly and hit **Save**.
\
\
{{< resize-image src="step-6.png" alt="Dialog configuring an hour-based interval" width="600" >}}

### Conclusion
That's it! All your unread emails in your archive will not be automatically marked as read on this interval. This is also a nice introduction to Google Apps Script and how you can use it to automate tasks in your Google Apps.
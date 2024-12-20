+++
title = 'Securing ASP .NET Core Apps Made Easy'
date = 2024-09-08T09:32:43-05:00
draft = false
tags = [".net"]
+++

\
{{< resize-image src="hacker.png" alt="Hacker Acting Maliciously" width="450" >}}

Whether you like it or not, there are best practices for security that web applications need to follow. 👋 Today, I want to chat about a nifty little library that can make your ASP.NET Core applications more secure with minimal effort. Say hello to **[NetEscapades.AspNetCore.SecurityHeaders](https://github.com/andrewlock/NetEscapades.AspNetCore.SecurityHeaders)**!

### The Problem: Security Headers

If you've been working with web applications for a while, you know that security is a big deal. One common way to enhance security is by adding security headers to your HTTP responses. These headers can help protect against a variety of attacks, like cross-site scripting (XSS) and clickjacking. However, manually configuring these headers can be a bit of a hassle. You have to remember which headers to add, what values to set, and ensure they're applied consistently across your app.

### The Solution: NetEscapades.AspNetCore.SecurityHeaders

This is where **[NetEscapades.AspNetCore.SecurityHeaders](https://github.com/andrewlock/NetEscapades.AspNetCore.SecurityHeaders)** comes in. This library, created by [Andrew Lock](https://andrewlock.net/adding-default-security-headers-in-asp-net-core/), encapsulates all the common security headers into an easy-to-use package. It takes care of the heavy lifting for you, so you can focus on building features instead of worrying about security configurations.

### Alternative Option

While this library will make your life much easier, there's an even easier way to handle this. When running multiple applications, you'll need to add this library into each and every one. [A better approach](https://scotthelme.co.uk/hardening-your-http-response-headers/) is to add these headers centrally at your web server, load balancer or other edge reverse proxy. This lets you add it once and not have to worry about it for every single application. This approach is out-of-scope for this post, but give it strong consideration. Unfortunately, there may be situations where you're limited and must make changes within your application layer.

### Getting Started

First things first, you need to install the package. You can do this via the NuGet Package Manager Console:

```bash
PM> Install-Package NetEscapades.AspNetCore.SecurityHeaders
```

Or, if you prefer the .NET CLI:

```bash
dotnet add package NetEscapades.AspNetCore.SecurityHeaders
```

### Adding Security Headers

Once you've got the package installed, adding security headers to your app is a breeze. Just add the middleware to your `Startup.cs` file:

```csharp
public void Configure(IApplicationBuilder app)
{
    app.UseSecurityHeaders();
}
```

Boom! Just like that, your app now includes a set of default security headers. These headers include:

- **X-Content-Type-Options: nosniff**
- **Strict-Transport-Security: max-age=31536000; includeSubDomains**
- **X-Frame-Options: Deny**
- **X-XSS-Protection: 1; mode=block**
- **Referrer-Policy: strict-origin-when-cross-origin**
- **Content-Security-Policy: object-src 'none'; form-action 'self'; frame-ancestors 'none'**

### Customizing Headers

Of course, you might want to customize these headers to fit your specific needs. No problem! You can create a `HeaderPolicyCollection` and add your own policies:

```csharp
public void Configure(IApplicationBuilder app)
{
    var policyCollection = new HeaderPolicyCollection()
        .AddFrameOptionsDeny()
        .AddXssProtectionBlock()
        .AddContentTypeOptionsNoSniff()
        .AddStrictTransportSecurityMaxAgeIncludeSubDomains(maxAgeInSeconds: 60 * 60 * 24 * 365)
        .AddReferrerPolicyStrictOriginWhenCrossOrigin()
        .RemoveServerHeader()
        .AddContentSecurityPolicy(builder =>
        {
            builder.AddObjectSrc().None();
            builder.AddFormAction().Self();
            builder.AddFrameAncestors().None();
        });

    app.UseSecurityHeaders(policyCollection);
}
```

### Why Use This Library?

So, why should you use **NetEscapades.AspNetCore.SecurityHeaders**? Here are a few reasons:

1. **Simplicity**: It abstracts away the complexity of configuring security headers.
2. **Consistency**: Ensures that security headers are applied uniformly across your app.
3. **Customization**: Allows you to easily tweak the headers to meet your specific requirements.

In short, this library is a great way to enhance the security of your ASP.NET Core applications without getting bogged down in the details. Give it a try and see how it can simplify your security setup!

Happy coding! 🚀
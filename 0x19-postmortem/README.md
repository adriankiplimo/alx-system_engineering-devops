# Postmortem
A Django to-do list webapp deployed on Microsoft Azure platform had been running for approximately a month on a free tier service, however after a month of free usage I encountered a `HTTP 403 Forbidden response error`. Nothing worthwhile is free so they say! It turned out the free service was over and an upgrade was due, and this is how we went about to detect and solve the issue

## Detection and debugging process
A datadog dashboard had been set up to monitor the webapp, 
1. The issue occured at approximately 10AM EAT on 30th April. 
2. On detection of the issue, a aleert mail was sent to my email whereby I was notified and started on working towards solving the issue.
3. I immediately logged into my Azure portal to figure out whether the issue was a software or architectural issue.
4. I initially thought it was an issue with the code or the deployment strategy that was due to come up after sometime.
5. On further inspection, I came across the subscription notification that told me the service had been disabled and was due for an upgrade.
6. This was a single person team therefore no further escalation was done and I took it upon myself to sort out the issue by upgrading to a paid version of my subscription.

## Conclusion
In summary, the issue that led to a `HTTP 403 error` was restricted access due to an unpaid bill. It actually seems to be a more common issue than usual with there being various reasons this authorization issue may happen, may be due to credit expiration, reaching spending limit, the bill being past due, bill exceeding credit card limit or the subscription may have been accidentally cancelled by a user.
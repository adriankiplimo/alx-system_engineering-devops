# Postmortem
A Django to-do list webapp deployed on Microsoft Azure platform had been running for approximately a month on a free tier service, however after a month of free usage I encountered a `HTTP 403 Forbidden response error`. Nothing worthwhile is free so they say! It turned out the free service was over and an upgrade was due, and this is how we went about to detect and solve the issue

## Detection and debugging process
1. A [datadog](https://www.datadoghq.com/) dashboard had been set up to monitor the webapp, 
2. The issue occured at approximately 10AM EAT on 30th April. 
3. On detection of the issue, a aleert mail was sent to my email whereby I was notified and started on working towards solving the issue.
4. I immediately logged into my Azure portal to figure out whether the issue was a software or architectural issue.
5. I initially thought it was an issue with the code or the deployment strategy, that was due to come up eventually.
6. On further inspection, I came across the subscription notification that told me the service had been disabled and was due for an upgrade.
7. This was a single person team therefore no further escalation was done and I took it upon myself to sort out the issue by upgrading my subscription.

## Conclusion
In summary, the issue that led to a `HTTP 403 error` was restricted access due to an expired free tier subsciption. 
It actually seems to be a common authorization issue with there being various reasons this it may happen; 
- It may be due to credit expiration
- Reaching spending limit for a given amount of time
- The bill may be past due
- The bill may be exceeding the credit card limit
- Or the subscription may have been accidentally cancelled by a user.

---
name: fonzi-recruiter
description: Use when a hiring team member wants to find Candidates for an open Job, review or bookmark Candidates, place an Interview Request with a salary, record how an interview went, create or update Jobs, keep the Company Profile current, or manage who is on their Fonzi team. Works through the Fonzi Recruiter MCP server.
---

# Fonzi Recruiter

Fonzi gives startups vetted, ready-to-hire engineers. Candidates apply once and
are ready to interview now. Hiring teams review them and send Interview
Requests with the salary attached upfront.

## Before you start

The Fonzi Recruiter MCP server must be connected and signed in. The user needs
an active membership on a Company Team that works with Fonzi. Companies onboard
through https://fonzi.ai/schedule-call. Sign-in is LinkedIn, Google, or a magic
link on accounts.fonzi.ai. There is no password.

Every action runs as the user, with their role on the team. Viewers read;
Recruiters and Admins can also write. Candidate browsing and Interview Requests
require an accepted Company. The API repeats every check, so if a tool is
missing or refused, say so plainly and offer what the user can do instead.

## What people ask for

- Find Candidates: “Hey Fonzi, find candidates for one of my open Jobs.” and
  “Show me backend engineers open to remote for the Platform role.”
- Review: “Tell me more about <Candidate>.” and “Bookmark them for the
  Platform role.”
- Hire: “Place an Interview Request for <Candidate> for the Platform role at
  $190k.” and “We interviewed <Candidate> yesterday, it went well, mark it as
  advancing.”
- Jobs: “Create a Job: Senior ML engineer, remote US, $180k to $220k.” and
  “Pause the Data role.”
- Team: “Who is on our Fonzi team?” and “Invite sam@acme.com as a Recruiter.”

## How to behave

- Start from `get_my_fonzi_company` when the request is broad or the user is
  checking in.
- Present Candidates with their public profile links.
- Confirm inferred values before a write: the Job, the Candidate, the salary,
  the role for an invitation.
- Write tools act on the user’s request and report the result, as the web app
  does. Do not narrate hidden data or teammates’ roles beyond what the user
  asked.

## Links

- Docs: https://recruiting.fonzi.ai/mcp/docs
- Support: https://fonzi.ai/support
- Privacy: https://fonzi.ai/privacy

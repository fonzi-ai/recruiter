# Fonzi Recruiter

Fonzi gives startups vetted, ready-to-hire engineers. Candidates apply once and
are ready to interview now. You review them and send Interview Requests with
the salary attached upfront.

This repository packages Fonzi Recruiter for the agents your team already
uses. It connects to the Fonzi Recruiter MCP server at
https://recruiting.fonzi.ai/mcp and ships the skills that teach your agent how
to use it. You need an active membership on a Company Team that works with
Fonzi. Companies onboard through https://fonzi.ai/schedule-call. Sign-in is
LinkedIn, Google, or a magic link. There is no password.

Engineers want [Fonzi Talent](https://github.com/fonzi-ai/talent).

## Install

**Claude Code**

```sh
/plugin marketplace add fonzi-ai/plugins
/plugin install recruiter@fonzi
```

The `fonzi` marketplace lives at
[fonzi-ai/plugins](https://github.com/fonzi-ai/plugins) and lists both Fonzi
plugins. Adding it once is enough for either.

**Codex and ChatGPT**

Fonzi Recruiter is submitted to the plugin directory. Until it is listed, add
[fonzi-ai/plugins](https://github.com/fonzi-ai/plugins) as a marketplace from
the Plugins tab.

**Cursor**

Fonzi Recruiter is submitted to the Cursor Marketplace. For local use, clone
this repository into `~/.cursor/plugins/local/`.

**skills.sh**

```sh
npx skills add fonzi-ai/recruiter
```

Installs every skill in this repository. Connect the MCP server in your agent
separately; the skills tell the agent how.

## Layout

```
plugin.json                        Agent Plugins manifest (Codex, ChatGPT, Cursor)
mcp.json                           Agent Plugins MCP config
.claude-plugin/plugin.json         Claude Code manifest
.mcp.json                          Claude Code MCP config
skills/<name>/SKILL.md             Shared by every host
assets/                            Fonzi mark, source and 512px
scripts/check.sh                   Validates every format above
```

Skills are the shared asset. Every host reads the same `SKILL.md` files. The
manifest and MCP files exist in two dialects because Claude Code reads its own
format and Codex, ChatGPT, and Cursor read the open
[Agent Plugins](https://agent-plugins.org) standard. Marketplace files live in
[fonzi-ai/plugins](https://github.com/fonzi-ai/plugins), which points here.

## Contributing

- The plugin id `recruiter` is a permanent identifier across every directory.
  Do not rename it.
- Keep both dialects of the manifest and MCP file in sync.
- Bump `version` in both manifests when the plugin changes. Directory listings
  re-review on every release.
- Run `scripts/check.sh` before opening a pull request.

## Links

- Docs: https://recruiting.fonzi.ai/mcp/docs
- Support: https://fonzi.ai/support
- Privacy: https://fonzi.ai/privacy

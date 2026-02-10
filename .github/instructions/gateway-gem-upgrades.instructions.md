---
applyTo: "Gemfile,Gemfile.lock"
---

# Copilot instructions – Gateway Dependabot gem upgrades

## Overview

- Use these instructions only for Gateway Dependabot gem‑upgrade PRs.
- Help reviewers quickly understand what changed, how risky it is, and what to check.
- Focus on Gemfile and Gemfile.lock changes, not application logic.
- Keep comments short, structured, and actionable.

## When to apply these instructions

- Apply when the PR author is Dependabot and:
  - Changes are limited to Gemfile and/or Gemfile.lock, or
  - The primary change is gem version bumps.
- If the PR includes significant app code changes, treat it as a normal PR and do not use these gem‑specific rules.
- If you are unsure whether this is a pure gem upgrade, say so and fall back to general review behavior.

## How to detect Dependabot gem PRs

- Check PR author → treat as Dependabot if created by the Dependabot bot.
- Check changed files:
  - If only Gemfile / Gemfile.lock (and metadata files like CI config), treat as a gem‑upgrade PR.
  - If many non‑gem files changed, do not apply these specialized rules.
- Identify each gem upgrade from the diff:
  - Extract `gem_name`, old version, and new version for every changed gem.

## How to summarize gem changes

- For each upgraded gem, produce a one‑block summary:
  - `gem_name: OLD_VERSION → NEW_VERSION`
  - `Breaking changes: …`
  - `New features: …`
  - `Bug / security fixes: …`
  - `Risk level: Low / Medium / High (with one short reason).`
- Group all gem summaries under a single **“Gem upgrades”** comment instead of many small comments.
- Use clear, simple language that a reviewer can scan in a few seconds.
- If multiple gems are upgraded but similar (e.g., test helpers), you may summarize them together when appropriate.

## How to assess risk (runtime vs dev, majors vs minors)

- Always classify the version type:
  - Major: `X.0.0` → treat as potentially **High risk**.
  - Minor: `X.Y.0` → usually **Medium risk**, unless changelog says otherwise.
  - Patch: `X.Y.Z` → usually **Low risk**, unless changelog lists breaking behavior.
- Distinguish runtime vs dev/test‑only gems:
  - If a gem is used in production code paths, mention: **“runtime gem – can affect live behavior.”**
  - If a gem is only in `group :test, :development`, mention: **“dev/test‑only – risk limited to tests and tooling.”**
- Increase risk level when:
  - The changelog mentions removed APIs, changed defaults, or behavior changes.
  - The gem is core to Gateway behavior (HTTP, DB, job processing, AWS SDK, etc.).
- Decrease risk level when:
  - The gem is test‑only and changes are internal / tooling.
  - The changelog only includes small bug fixes or documentation updates.

## How to use changelogs

- Always try to read the gem’s changelog or release notes between the old and new versions.
- Prefer official sources:
  - The gem’s GitHub releases.
  - The gem’s `CHANGELOG.md`.
  - RubyGems release notes.
- Extract only the most relevant points:
  - Breaking changes or migrations.
  - Security fixes.
  - Notable new behavior that might affect Gateway.
- If you cannot find a reliable changelog:
  - Say **“Changelog not found or unclear”.**
  - Do not guess about changes.
- When summarizing, quote or paraphrase briefly, not long copy‑pastes.

## How to write PR review comments (low noise)

- Prefer **one main summary comment per PR** instead of many scattered comments.
- Make comments actionable:
  - Call out where extra tests, manual QA, or staging verification are needed.
  - Suggest specific follow‑ups (e.g., “Run regression tests for X flow”).
- Avoid noisy behavior:
  - Do not repeat the same suggestion multiple times.
  - Do not comment on lines that are pure version number changes unless there is a specific risk.
- Respect CI status:
  - If CI is red or not run, mention it and avoid recommending merge.
  - If CI is green, you may say **“All checks passing”** but still emphasize risk if the gem is critical.
- Keep tone neutral and helpful:
  - Focus on risk, impact, and next steps, not on nitpicking style.
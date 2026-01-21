# Security Policy

## Purpose of This Repository

This is a **test repository** designed specifically for practicing automated dependency management with bots. The repository intentionally contains older versions of gems to allow dependency management bots to:

1. Detect outdated dependencies
2. Identify security vulnerabilities
3. Automatically create Pull Requests for upgrades
4. Test their PR creation workflows

## Known Vulnerabilities

The following gems in this repository have known vulnerabilities:

### Sinatra 2.1.0
- **Reflected File Download attack** - Fixed in version 2.2.3 and 3.0.4
- **Path validation issues** - Fixed in version 2.2.0

These vulnerabilities are **intentional** and serve as test cases for dependency management bots.

## Expected Bot Behavior

Dependency management bots (Dependabot, Renovate, etc.) should:
1. Scan the Gemfile and Gemfile.lock
2. Identify outdated and vulnerable gems
3. Create Pull Requests to upgrade to safe versions
4. Run tests to ensure compatibility

## Not for Production

⚠️ **This repository is for testing purposes only and should NOT be used in production environments.**

## Reporting Issues

Since this is a test repository, security issues in dependencies are expected and intentional. However, if you find issues with the repository structure or documentation, please open an issue.

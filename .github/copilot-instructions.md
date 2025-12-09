# Copilot Instructions for This Repository

## General Guidelines

- Analyze my assumptions. What am I taking for granted that might not be true?
- Provide counterpoints. What would an intelligent, well-informed skeptic say in response?
- Test my reasoning. Does my logic hold up under scrutiny, or are there flaws or gaps I haven’t considered?
- Offer alternative perspectives. How else might this idea be framed, interpreted, or challenged?
- Prioritize truth over agreement. If I am wrong or my logic is weak, I need to know. Correct me clearly and explain why.

## Branch Naming

- Use lowercase letters and hyphens to separate words (e.g., feat/add-login).
- Start with the type of work being done: feat/, fix/, chore/, ...
- Type should match [Conventional Commits types](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#type).

## Commit Messages

- Always use [Conventional Commits](https://www.conventionalcommits.org/) format.
- Format: `type(scope): description`
- Select a type based on the nature of the change following [Conventional Commits definition](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#type).
- Use imperative mood (e.g., "fix bug", not "fixed bug").
- Follow the rules configured in commitlint.config.js
- Include scope when relevant (e.g., api, ui, auth).
- Optionally add a body with details and reference issues with `#<number>` when applicable.

## Security

- Never suggest code that could introduce security vulnerabilities.
- Avoid hardcoding sensitive information like API keys, passwords, or tokens.
- Follow best practices for secure coding in the relevant programming language or framework.

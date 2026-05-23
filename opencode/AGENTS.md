# Global OpenCode Rules

Đây là file Global Rules cho OpenCode. Các quy tắc ở đây sẽ được áp dụng cho tất cả các session OpenCode của bạn.

---

## Code Style & Formatting

- Prefer explicit code over implicit - make intentions clear
- Use meaningful variable and function names that describe their purpose
- Keep functions small and focused on a single responsibility
- Prefer early returns over nested if statements
- Use consistent indentation (2 spaces for JS/TS, 4 spaces for Python, etc.)
- Always format code before committing

## Code Quality

- Write self-documenting code with clear variable names
- Add comments only when code cannot be made clearer
- Avoid magic numbers - use named constants
- Handle errors explicitly - don't silently fail
- Validate inputs and handle edge cases
- Prefer composition over inheritance

## Best Practices

- Follow the DRY (Don't Repeat Yourself) principle
- Use TypeScript strict mode when possible
- Prefer async/await over promises chains
- Use const by default, let when reassignment is needed
- Avoid var entirely
- Use template literals for string concatenation

## Git & Version Control

- Write clear, descriptive commit messages
- Keep commits focused and atomic
- Use conventional commit format when appropriate (feat:, fix:, docs:, etc.)
- Don't commit commented-out code
- Don't commit sensitive information (API keys, passwords, etc.)

## Testing

- Write tests for critical functionality
- Prefer unit tests over integration tests when possible
- Use descriptive test names that explain what is being tested
- Keep tests simple and focused

## Documentation

- Document public APIs and complex logic
- Keep README files up to date
- Use JSDoc/TSDoc for function documentation
- Include examples in documentation when helpful

## Performance

- Optimize only when necessary (measure first)
- Avoid premature optimization
- Consider performance implications of data structures
- Use appropriate algorithms for the problem size

## Security

- Never trust user input - always validate and sanitize
- Use parameterized queries to prevent SQL injection
- Keep dependencies up to date
- Follow principle of least privilege

## Language-Specific Guidelines

### TypeScript/JavaScript
- Use TypeScript for type safety
- Prefer interfaces over types for object shapes
- Use enums for fixed sets of constants
- Avoid `any` type - use `unknown` if type is truly unknown

### Python
- Follow PEP 8 style guide
- Use type hints for function parameters and return values
- Prefer list comprehensions over loops when readable
- Use virtual environments for project dependencies

### Go
- Follow Go naming conventions
- Handle errors explicitly - don't ignore them
- Use interfaces for abstraction
- Keep packages focused and cohesive

## Workflow Preferences

- Prefer incremental changes over large refactors
- Test changes locally before committing
- Review code before pushing
- Use linters and formatters to maintain consistency

---

## Personal Notes

Thêm các quy tắc cá nhân của bạn ở đây:

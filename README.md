[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://supportukrainenow.org/)

# QA Automation Template for API Testing

This repository serves as a template for setting up a new repository for writing API auto tests. It's tailored for developers who require a quick start to API testing with Python.

## Features
- Configured with a modern Python stack: Python 3, PyTest, Requests, Behave, Allure for reporting, Graphene for GraphQL.
- Docker environment pre-configured for isolated testing scenarios.
- Make CLI commands for straightforward local development and operations.
- Comprehensive CI checks integrated with GitHub Actions (code quality, security checks, and more).
- Pre-configured files for contribution guidelines, security policy, and pull requests.

## Why Use This Template?
Setting up a new repository for API testing often involves repetitive configuration that can be time-consuming. This template provides a pre-configured environment to streamline the creation and setup of API auto tests, allowing developers to focus on writing tests and not on setup.

## License
This software is distributed under the [Creative Commons Zero v1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/deed) license. Please read [LICENSE](https://github.com/VilnaCRM-Org/tests-template/blob/main/LICENSE) for information on the software availability and distribution.

### Minimal installation
You can clone this repository locally or use Github functionality "Use this template"

Install the latest [docker](https://docs.docker.com/engine/install/), [docker compose](https://docs.docker.com/compose/install/) and [python3](https://www.python.org/downloads/)

Use `make` command to set up project and automatically install all needed dependencies
> make start

That's it. You should now be ready to use PHP service template!

## Using
You can use `make` command to easily control and work with project locally.

Execute `make` or `make help` to see the full list of project commands.

The list of the `make` possibilities:

```
behave          A tool to run BDD tests
build           Build docker image for python
pylint          Run pylint to check codestyle
pytest          A popular and powerful testing framework for Python.
sh              Dive into docker conatiner and execute any command that you need
start           Build docker image and start pytest
test            Alias for pytest
```

## Documentation
Start reading at the [GitHub wiki](https://github.com/VilnaCRM-Org/tests-template/wiki). If you're having trouble, head for [the troubleshooting guide](https://github.com/VilnaCRM-Org/tests-template/wiki/Troubleshooting) as it's frequently updated.

You can generate complete API-level documentation by running `phpdoc` in the top-level folder, and documentation will appear in the `docs` folder, though you'll need to have [PHPDocumentor](http://www.phpdoc.org) installed.

If the documentation doesn't cover what you need, search the [many questions on Stack Overflow](http://stackoverflow.com/questions/tagged/vilnacrm), and before you ask a question, [read the troubleshooting guide](https://github.com/VilnaCRM-Org/tests-template/wiki/Troubleshooting).

## Tests
[Tests](https://github.com/VilnaCRM-Org/tests-template/tree/main/tests/) use Pytest and [Behave](https://github.com/behave/behave).

[![Test status](https://github.com/VilnaCRM-Org/tests-template/workflows/Tests/badge.svg)](https://github.com/VilnaCRM-Org/tests-template/actions)

If this isn't passing, is there something you can do to help?

## Security
Please disclose any vulnerabilities found responsibly – report security issues to the maintainers privately.

See [SECURITY](https://github.com/VilnaCRM-Org/tests-template/tree/main/SECURITY.md) and [Security advisories on GitHub](https://github.com/VilnaCRM-Org/tests-template/security).

## Contributing
Please submit bug reports, suggestions, and pull requests to the [GitHub issue tracker](https://github.com/VilnaCRM-Org/tests-template/issues).

We're particularly interested in fixing edge cases, expanding test coverage, and updating translations.

If you found a mistake in the docs, or want to add something, go ahead and amend the wiki – anyone can edit it.

## Sponsorship
Development time and resources for this repository are provided by [VilnaCRM](https://vilnacrm.com/), the free and opensource CRM system.

Donations are very welcome, whether in beer 🍺, T-shirts 👕, or cold, hard cash 💰. Sponsorship through GitHub is a simple and convenient way to say "thank you" to maintainers and contributors – just click the "Sponsor" button [on the project page](https://github.com/VilnaCRM-Org/tests-template). If your company uses this template, consider taking part in the VilnaCRM's enterprise support program.

## Changelog
See [changelog](CHANGELOG.md).

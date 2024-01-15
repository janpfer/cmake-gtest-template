# cmake-gtest-template - CMake & Google Test Template Project

![GitLab](https://gitlab.pfiffner.dev/dev/cmake-gtest-template)
![![GitLab tag](https://gitlab.pfiffner.dev/cmake-gtest-template/-/badges/release.svg)](https://gitlab.pfiffner.dev/cmake-gtest-template/-/releases)
[![Build Status](https://gitlab.pfiffner.dev/cmake-gtest-template/badges/main/pipeline.svg)](https://gitlab.pfiffner.dev/cmake-gtest-template/-/commits/main)


`cmake-gtest-template` is an example project that demonstrates the use of CMake for building C++ projects with Google Test integration, code coverage, and a GitLab CI pipeline for continuous integration.

## Table of Contents
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Building the Project](#building-the-project)
  - [Running Tests](#running-tests)
- [Code Coverage](#code-coverage)
- [GitLab CI Pipeline](#gitlab-ci-pipeline)
- [Release Process](#release-process)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

### Prerequisites

Before building the project, make sure you have the following tools installed on your system:

- CMake
- GCC (or any compatible C++ compiler)
- Google Test
- lcov (for code coverage)

You can install the required dependencies using the provided `scripts/setup.sh` script:

```bash
./scripts/setup.sh
```

### Building the Project

Use the following steps to build the project:

```bash
./scripts/cleanbuild.sh
```

This script will create a `build` directory, configure the project with CMake, and build the project.

### Running Tests

To run the tests:

```bash
./scripts/test.sh
```

This script will build the project in Debug mode, run tests using Google Test, generate code coverage, and open the coverage report in your browser.

## Code Coverage

The project includes code coverage support using [lcov](https://linux.die.net/man/1/lcov) and [gcovr](https://gcovr.com/).

To generate code coverage reports, run:

```bash
./scripts/test.sh
```

The coverage report will be available in the `coverage_report` directory.

## GitLab CI Pipeline

The project includes a GitLab CI pipeline defined in `.gitlab-ci.yml`. The pipeline has the following stages:

1. **Build**: Build the project using CMake.
2. **Test**: Run tests and generate JUnit reports.
3. **Prepare**: Prepare the project for release.
4. **Release**: Create a release on tagged commits.

## Release Process

To create a new release:

```bash
./scripts/release.sh
```

Follow the prompts to increase the version number and push the new release to the repository.

## Contributing

Feel free to open issues or pull requests for improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

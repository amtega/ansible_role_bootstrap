# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.9.0] - 2022-05-23
### Added
- Added new variables to indicate keys, users and groups to bootstrap. Related to ansible/playbooks/linux#88

### Changed
- Changed bootstrap_create_ansible_user_home default value. Related to ansible/playbooks/linux#88
- Supported distros. Related to ansible/main#263

### Fixed
- Fixed tests.
- Adapted for CentOS derived distros. Related to ansible/main#263

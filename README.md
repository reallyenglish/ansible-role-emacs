# ansible-role-emacs

Install `emacs` and related packages.

# Requirements

None

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `emacs_package` | package name of `emcas` | `{{ __emacs_package }}` |
| `emacs_extra_packages` | list of extra packages to install | `[]` |


## Debian

| Variable | Default |
|----------|---------|
| `__emacs_package` | `emacs24-nox` |

## FreeBSD

| Variable | Default |
|----------|---------|
| `__emacs_package` | `emacs-nox11` |

## OpenBSD

| Variable | Default |
|----------|---------|
| `__emacs_package` | `emacs--` |

## RedHat

| Variable | Default |
|----------|---------|
| `__emacs_package` | `emacs-nox` |

# Dependencies

None

# Example Playbook

```yaml
- hosts: localhost
  roles:
    - ansible-role-emacs
  vars:
    emacs_extra_packages: "{% if ansible_os_family == 'FreeBSD' %}[ 'emacs-lisp-intro' ]{% elif ansible_os_family == 'Debian' %}[ 'emacs-goodies-el' ]{% elif ansible_os_family == 'OpenBSD' %}[ 'emacs-el' ]{% elif ansible_os_family == 'RedHat' %}[ 'emacs-git-el' ]{% endif %}"
```

# License

```
Copyright (c) 2017 Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

# Author Information

Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

This README was created by [qansible](https://github.com/trombik/qansible)

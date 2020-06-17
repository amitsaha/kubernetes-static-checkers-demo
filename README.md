# Article resources for learnk8s

This repository contains resources referred to in the article "Validating Kubernetes YAML for best practice and policies"
on learnk8s.io published [here](https://learnk8s.io/validating-kubernetes-yaml).

## Key resources

- [test-data](./test-data) contains YAML manifests referred to in the article
- [config-lint-checks](./config-lint-checks) contains example checks for `config-lint`
- [conftest-checks](./conftest-checks) contains example checks for `conftest`
- [copper-checks](./copper-checks) contains example checks for `copper`
- [polaris-configs](./polaris-configs) contains example config with custom checks for `polaris`

## Helpers

If you are using Linux, the Bash script, [download_bins_linux.sh](./download_bins_linux.sh) will
create a sub-directory `binaries` and install the tools so that you can experiment with the test data
and follow along with the article.

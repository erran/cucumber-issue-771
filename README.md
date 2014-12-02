# Reproduction for [#771](https://github.com/cucumber/cucumber/issues/771)
An example use case that reproduces cucumber/cucumber#771. The file `nested.feature` has valid Gherkin while the file `buckets.feature` is empty.

The following usages of cucumber fail with or without the `--tags` option. These all load the empty file [features/api/buckets.feature](features/api/buckets.feature).

## [cucumber@2.0.0.beta.3](https://github.com/erran/cucumber-issue-771/tree/master#readme)
### Failing
* `cucumber`
* `cucumber --tags @sometag`
* `cucumber features/api/`
* `cucumber features/api/buckets.feature`

### Passing
* `cucumber --exclude features/api/buckets.feature`
* `cucumber features/subdirectory/nested.feature`
* `cucumber features/subdirectory/nested.feature --tags @sometag`

## [cucumber@1.3.17](https://github.com/erran/cucumber-issue-771/tree/v1.3.x#readme)
### Passing
* `cucumber`
* `cucumber --tags @sometag`
* `cucumber features/api/`
* `cucumber features/api/buckets.feature`
* `cucumber --exclude features/api/buckets.feature`
* `cucumber features/subdirectory/nested.feature`
* `cucumber features/subdirectory/nested.feature --tags @sometag`

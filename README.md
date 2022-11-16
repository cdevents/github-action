![passing](https://github.com/cdevents/github-action/actions/workflows/ci.yml/badge.svg) ![GitHub](https://img.shields.io/github/license/cdevents/github-action) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/cdevents/github-action)

# CDEvents Github Action

GitHub Action to emit [CDEvents](https://cdevents.dev).

The GitHub Action can be used to create CDEvents and send them as CloudEvents.

## Disclaimer 🚧

This GitHub Action is work in work in progress, it will be maintained in sync with the
specification.

### Inputs

- `source`- *Required* Source
- `subject_id` - *Required* Subject ID
- `subject_pipeline_name`- *Required* Subject Pipeline Name
- `subject_url`- *Required* Subject URL

### Example

```yaml
on: push
name: Main Workflow
jobs:
  sendCDEvent:
    name: Send CDEvent
    runs-on: ubuntu-latest
    steps:
    - name: send CDEvent
      uses: cdevents/github-action@main
      with:
        source: 'my/first/cdevent/program'
        subject_id: 'myPipelineRun1'
        subject_pipeline_name: 'myPipeline'
        subject_url: 'https://example.com/myPipeline'
        version: 0.0.1
```

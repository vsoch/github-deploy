# Github Pages Deploy

This is a Github Action to deploy some set of static files to your Github
pages! You can use it like this:

```
workflow "Deploy ContainerTree Extraction" {
  on = "push"
  resolves = ["deploy"]
}

action "deploy" {
  uses = "vsoch/github-deploy@master"
  secrets = ["GITHUB_TOKEN"]
  args = ["index.html data.json"]
}
```

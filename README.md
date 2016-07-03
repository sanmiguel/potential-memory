potential-memory
=========


A [neo]vim plugin for managing project-branch-specific configuration centrally.

The main goals of this plugin are:
 - manage project configuration separately from the project, keeping your project uncluttered
 - allow separate configuration per-branch per-project: e.g. gh-pages branches, tooling migration branches
 - simple set of configuration points, with a clear hierarchy of defaults and overrides:
  - language (e.g. erlang)
  - build tool (e.g. rebar3)
  - project
  - branch
 - declarative configuration


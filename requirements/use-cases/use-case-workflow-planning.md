

## Name

planning of a workflow

## Primary Actor

Optimizer

## Scope

Workflow planning (WP)

## Stakeholders and interest

**UI:** wants to get one workflow

## Precondition

Necessary steps are defined using OSLO-STEPS

## Description

A **personal agent** requests an optimal sequence of steps via the optimizer API.
This optimal sequence of steps is a workflow which is planned by the optimizer
according to the step descriptions and the *costs* of each step.


## Main success scenario

1. The user selects a goal in the UI
1. The UI asks for a workflow on hierarchy level n to reach the goal
1. WP retrieves all OSLO-STEPS level n descriptions
1. WP applies N3 rules to create N3 rules from the OSLO-STEPS description
1. WP applies reasoning to find the optimal workflow with respect to costs attached to the steps description
1. WP provides the UI with a workflow consisting of steps which are resolvable by an URI



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

1. The user selects a goal
1. WP gets all OSLO-STEPS descriptions

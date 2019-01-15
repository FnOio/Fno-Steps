

| ID   | type            | Description                        | Source       | Suggested By | Updated by |
|------|-----------------|------------------------------------|--------------|--------------|------------|
| R1   | solution        | Workflows are not statically defined, only possible steps. | | @slieber | @slieber |
| R2   | solution        | Steps produce evidence or modify a given state. | @slieber | | @slieber |
| R3   | solution        | Dynamically building workflows, requires to know which evidence or state change a step produces. | | @slieber | @slieber |
| R4   | requirement     | Steps have to contain a human readable description | OSLO | @slieber | @slieber |
| R5   | solution        | Steps might have requirements which need to be met in order for the step to execute. | | @slieber | @slieber |
| R6   | solution        | Different steps might produce the same evidence, or reach the same state. | | @slieber | @slieber |
| R7   | requirement     | The execution of steps has to produce a provenance trace. | | @slieber | @slieber |
| R8   | solution        | Step execution provenance can contain information of which step was executed,  which requirements were met and how they were met. Also the output state or produced evidence has to be documented. | | @slieber | @slieber |
| R9   | solution        | States which need to be reached, or evidences which need to be created can be considered by a workflow planner, when a workflow is dynamically built. | | @slieber | @slieber |
| R10  | solution        | Steps have an associated cost, based on which a workflow planner can decide between alternative steps. | | @slieber | @slieber |
| R11  | requirement     | Costs of a step can change. E.g. based on user testing a bad performing step can get a higher cost. | | @slieber | @slieber |
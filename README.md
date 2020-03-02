## Get the difference between 2 timestamps

Returns a string like '2 hrs 3 min 23 sec'

Provide a start and end time to the action

```
uses: UnicornGlobal/get-time-diff@master
id: diff_step
with:
  start: ${{ steps.started_at.outputs.time }}
  end: ${{ steps.ended_at.outputs.time }}
```

Then you can access the value in subsequent steps

```
${{ steps.diff_step.outputs.diff }}
```

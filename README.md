# Knights Travails

Simple Ruby script to find the shortest sequence of knight moves between two squares on an 8x8 chessboard.

- Language: Ruby
- Board coordinates: [0..7, 0..7] (x, y)
- Algorithm: Breadth-first search (BFS)

## Usage

Run the script with Ruby:

```bash
ruby main.rb
```

The script exposes:
- knight_move(start_point, end_point) — runs a BFS and prints the shortest path as an array of coordinates.

Example (included in the repository):
```ruby
knight_move([0,0],[3,3])
# Output: [[0, 0], [1, 2], [3, 3]]
```

## Notes
- start_point and end_point are arrays: [x, y]
- Positions outside 0..7 are filtered out
- No external dependencies; single-file implementation (main.rb)


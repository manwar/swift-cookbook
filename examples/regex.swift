import Foundation;

let suggestion = """
I suspect it was Professor Plum, in the Dining Room, with the Candlestick.
"""

let pattern = #"""
(?xi)
(?<suspect>
    ((Miss|Ms\.) \h Scarlett?) |
    ((Colonel | Col\.) \h Mustard) |
    ((Reverend | Mr\.) \h Green) |
    (Mrs\. \h Peacock) |
    ((Professor | Prof\.) \h Plum) |
    ((Mrs\. \h White) | ((Doctor | Dr\.) \h Orchid))
),?(?-x: in the )
(?<location>
    Kitchen        | Ballroom | Conservatory |
    Dining \h Room      |       Library      |
    Lounge         | Hall     | Study
),?(?-x: with the )
(?<weapon>
      Candlestick
    | Knife
    | (Lead(en)?\h)? Pipe
    | Revolver
    | Rope
    | Wrench
)
"""#

let regex = try NSRegularExpression(pattern: pattern, options: [])

let nsrange = NSRange(suggestion.startIndex..<suggestion.endIndex,
                      in: suggestion)
if let match = regex.firstMatch(in: suggestion,
                                options: [],
                                range: nsrange)
{
    for component in ["suspect", "location", "weapon"] {
        let nsrange = match.range(withName: component)
        if nsrange.location != NSNotFound,
            let range = Range(nsrange, in: suggestion)
        {
            print("\(component): \(suggestion[range])")
        }
    }
}

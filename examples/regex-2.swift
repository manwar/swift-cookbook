import Foundation;

let suggestion = """
S200
"""

let pattern = #"""
(?xi)
S
(?<limit>
    (\d+)
)
"""#

let regex = try NSRegularExpression(pattern: pattern, options: [])

let nsrange = NSRange(suggestion.startIndex..<suggestion.endIndex,
                      in: suggestion)
if let match = regex.firstMatch(in: suggestion,
                                options: [],
                                range: nsrange)
{
    for component in ["limit"] {
        let nsrange = match.range(withName: component)
        if nsrange.location != NSNotFound,
            let range = Range(nsrange, in: suggestion)
        {
            print("\(component): \(suggestion[range])")
        }
    }
}

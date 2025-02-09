// Function to be tested
pub fn add(a: i32, b: i32) -> i32 {
    a - b
}

// Unit tests
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(2, 2), 4);
    }
}

// Main function
fn main() {
    println!("Test program (rust) ran successfully!");
}

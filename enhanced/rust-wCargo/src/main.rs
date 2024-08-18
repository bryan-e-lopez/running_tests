// src/main.rs

fn main() {
    let result = add(5, 3);
    println!("Running main program!");
    println!("The result is: {}", result);
}


// 
fn add(a: i32, b: i32) -> i32 {
    a + b
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(5, 3), 9);
        assert_eq!(add(-1, 1), 2);
        assert_eq!(add(100, 200), 300);
    }
}

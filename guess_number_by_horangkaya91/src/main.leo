program guess_number.aleo {
    // Function to start the game and generate a random number.
    transition start_game() -> u32 {
        // Seed for randomness (you can choose any seed value).
        let seed: u32 = 42u32;

        // Generates a pseudo-random number using the seed.
        let secret_number: u32 = (seed % 100u32) + 1u32;

        return secret_number;
    }

    // Function to guess the number.
    // Returns 0 if the guess is correct, -1 if the guess is too low, and 1 if the guess is too high.
    transition guess_number(guess: u32, secret_number: u32) -> i8 {
        if guess == secret_number {
            // Correct guess.
            return 0i8;
        } else if guess < secret_number {
            // Guess is too low.
            return -1i8;
        } else {
            // Guess is too high.
            return 1i8;
        }
    }
}
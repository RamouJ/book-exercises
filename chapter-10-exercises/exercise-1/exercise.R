# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)

seahawks_points_scored <- c(14, 35, 21, 22) 

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season

points_scored_against_seahawks <- c(22, 13, 40, 31)

# Combine your two vectors into a dataframe called `games`

games <- data.frame(seahawks_points_scored,
                    points_scored_against_seahawks,
                    stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!

games$diff <- games$seahawks_points_scored - games$points_scored_against_seahawks

# Create a new column "won" which is TRUE if the Seahawks won the game

games$won <- games$diff > 0 

# Create a vector of the opponent names corresponding to the games played

opponent_names <- c("Redhawks", "Giants", "Panthers", "Patriots")

# Assign your dataframe rownames of their opponents

rownames(games) <- opponent_names

# View your data frame to see how it has changed!

print(games)
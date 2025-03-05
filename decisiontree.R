# Install the 'party' package if not already installed
#install.packages("party")  # Run this only once

library(party)
data("readingSkills")
print(head(readingSkills))
input.dat <- readingSkills[1:105, ]  
png(file = "xyz_tree.png")
output.tree <- ctree(nativeSpeaker ~ age + shoeSize + score, data = input.dat)
plot(output.tree)
dev.off()

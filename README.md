# Description

There are many GitHub repositories that provide CSV files containing LeetCode questions for each company. This project takes that concept further by building a website where:

1. Questions repeated across different companies are tracked more effectively compared to traditional CSV or Excel lists.

2. Topic-wise solving and progress tracking for each company is made simpler and more organized.

The goal is to make interview preparation easier, more visual, and interactive — moving beyond static spreadsheets into a centralized online platform.
Company wise questions accessibility and tracking

# Contribute
If you want to contribute to this project, First follow the instructions in the setup section. Here are some of the features which are still pending
1. user authentication/ database
2. user-company specific metrics/ data
3. script inorder to update the questions database without affecting the user data
4. moving front-end to a particular framework
5. analytics 

# Setup
Currently using docker compose to setup both the dev and prod environment seperately. To setup the development environemnt, you need to have docker installed in your machine.

Dev environment setup 
```
make dev

// If make is not available
docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build
```





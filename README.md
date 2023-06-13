SRE Pre-Test
1. The Pre-Test consists of three challenges.
2. Push your answer to your GIT repository (Github or Gitlab) and make it publicly
accesible.
3. GIT repository directory layout will looks like this:
.
├── challenge-1
│ ├── your-answer.sh
│ └── another-files-relate-to-challenge-1 └── challenge-2
├── your-answer.Dockerfile
├── your-answer-nginx.conf
├── your-answer-docker-compose.yml
└── another-files-relate-to-challenge-2
4. Share your GIT repository url to the Interviewer.

Challenge 1: Count-the-number-of-http-500-errors
Create a script to count the number of HTTP 500 errors in the last 10 minutes of multiple log files in a directory. Let's say we have a directory containing some of the log files

Challenge 2: Docker-compose-serves-welcome-page
- Create a Docker Compose file that serves a welcome page (index.html) with an Nginx reverse proxy configuration.
- The welcome page should display the message "Welcome Fellas!" and the Nginx server should be accessible at http://localhost:8080.
Notes:
- index.html file in the attachment.


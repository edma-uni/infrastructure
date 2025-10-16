To start locally create folder and clone repositories:

```
git clone https://github.com/edma-uni/reporter.git && git clone https://github.com/edma-uni/ttk-collector.git && git clone https://github.com/edma-uni/fb-collector.git && git clone https://github.com/edma-uni/gateway.git && git clone https://github.com/edma-uni/infrastructure.git
```

Then start docker-compose:
`cd infrastructure && docker-compose up --build`

Access grafana: [http://localhost:3002](http://localhost:3002)

If you wanna test load for reporter:
`cd reporter && node load-test.js`

Each service has a Continuous Integration (CI) pipeline. When code is pushed to the main branch, a Docker image is built, which includes running tests. In the future, I plan to integrate Continuous Deployment (CD), where a successful build will automatically restart the corresponding service in Docker Compose.

The application uses an event-driven microservice architecture. It employs the CQRS (Command Query Responsibility Segregation) pattern.The read database is denormalized and optimized, while the write database is maintained as the single source of truth.

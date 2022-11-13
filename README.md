Simple project for Helmes to judge. 

Used technologies on Backend: Java 17 LTS, Lombok, Gradle, Spring Boot, JDBC, H2 (embedded) Database, Liquibase. Frontend: Typescript, Angular, Bootstrap.

Written on VS Code.

To start the app:

Install Node.js, NPM
Install Angular CLI with command "npm install -g @angular/cli"
Install frontend npm dependencies: from directory frontend/sectors command "npm install"
From directory sectors/backend command ".\gradlew bootRun" starts the backend, data is accessible at localhost:8080/sectors/api/{controller-name}.
From directory frontend/sectors command "ng serve", the app starts on localhost:4200

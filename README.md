# Introvert Friend Making

A simple friends manager system for keeping track of your friends and helping introverts find new ones.

The project was built to learn Spring technologies and to practice SOLID programming.

## Table of Contents

- [General Info](#general-info)
- [Technologies](#technologies)
- [Setup](#setup)

## General Info

This project is a friends manager that lets you keep track of your friends and helps introverts discover new people to connect with. The main motivation was learning the Spring ecosystem and gaining new skills in SOLID design.

## Technologies

| Technology    | Version   |
|---------------|-----------|
| Java          | 21        |
| Spring Boot   | 4.1.1     |
| Apache Derby  | 10.17.1.0 |
| Maven         | 3.9.16    |

## Setup

### 0. Make sure you have Maven installed and configured on your computer.

### 1. Install Apache Derby

Install the Apache Derby database (see the [official Derby documentation](https://db.apache.org/derby/)).

### 2. Create the database

Move to the resources directory of the project:

```bash
cd src/main/resources
```

Start the `ij` tool and create the database:

```sql
connect 'jdbc:derby:friends;create=true';
```

Run the schema script to create all the tables:

```sql
run 'schema.sql';
```

Close the connection and exit `ij`:

```sql
exit;
```

### 3. Configure the application

Add the following to your `application.properties`:

```properties
spring.datasource.url=jdbc:derby:src/main/resources/friends
spring.datasource.driver-class-name=org.apache.derby.jdbc.EmbeddedDriver
spring.profiles.active=production,jdbc
```

### 4. Build the project

```bash
mvn compile
```

### 5. Run the application

```bash
java -jar target/IntrovertFriendMaking-0.0.1-SNAPSHOT.jar
```

Enjoy the project! 🎉
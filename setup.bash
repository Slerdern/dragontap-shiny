#!/bin/bash

export POSTGRES_DB=dragontap
export POSTGRES_USER=dragontap
export POSTGRES_PASSWORD=dragontap

export SPRING_DATASOURCE_URL=jdbc:postgresql://cellar:5432/dragontap
export SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.PostgreSQLDialect

export INNKEEPER_PORT=4181

docker compose up -d --build
### Trading App Database

This repository houses the initialization scripts and docker config for a PostgreSQL Database. Sample data and ENV vars are included.

To create docker image:
```
    docker build -t psql-trading-db ./
```
To run container:
```
    docker run -d --name trading-db -p 5430:5432 psql-trading-db
```

Address:
- Host: localhost
- Port: 5430
- User: postgres
- Password: password

To enter psql shell:
```
    psql -U postgres -p 5430 -h localhost
```



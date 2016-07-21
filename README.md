# Galton Docker

[Galton](https://github.com/macterra/galton.git) running in [Docker](https://www.docker.com/).

Galton is a web app for estimating risk-based project effort.

## Usage

```
docker run --name galton -p 8080:8080 -v `pwd`/db/test.db:/opt/galton/test.db -d chrisgarrett/galton
```

Now you can browse to http://localhost:8080 and start estimating with confidence!

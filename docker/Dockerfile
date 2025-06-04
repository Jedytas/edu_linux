FROM python:3.10-alpine AS builder
WORKDIR /build
COPY ./pyproject.toml ./pyproject.toml
RUN pip install --prefix=/install . && pip install --prefix=/install ".[test]"

FROM python:3.10-alpine AS runtime
WORKDIR /app
COPY . .
COPY --from=builder /install /usr/local
EXPOSE 8105
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8105", "--reload"]

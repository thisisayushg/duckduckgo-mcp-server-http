FROM python:3.13-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir .

# Expose port if needed (MCP uses stdio, so not required)
EXPOSE 8000

# Run the MCP server
# Updated to allow command-line switches to be passed via docker commands
ENTRYPOINT ["python", "-m", "duckduckgo_mcp_server.server"]
CMD []

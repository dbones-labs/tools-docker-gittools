FROM  mcr.microsoft.com/dotnet/sdk:5.0

LABEL repository="https://github.com/dbones-labs/tools-docker-gittools"
LABEL maintainer="dbones labs" 

RUN apt-get update && apt-get install -y jq
RUN dotnet tool install -g GitVersion.Tool
RUN dotnet tool install -g GitReleaseManager.Tool
RUN dotnet tool install -g dotnet-setversion

ENV PATH /root/.dotnet/tools:$PATH
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1

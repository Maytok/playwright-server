FROM mcr.microsoft.com/playwright:focal

WORKDIR /root
RUN npm install playwright@1.38.1 && ./node_modules/.bin/playwright install
CMD ["./node_modules/.bin/playwright", "run-server"]

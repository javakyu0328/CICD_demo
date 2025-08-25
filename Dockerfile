# (1) Node.js 18이 설치된 공식 이미지로 시작
FROM node:18

# (2) 컨테이너 안에서 작업할 폴더 지정
WORKDIR /app

# (3) 패키지 파일만 먼저 복사 (캐시 최적화)
COPY package*.json ./

# (4) 의존성 설치
RUN npm install

# (5) 나머지 소스 복사
COPY . .

# (6) 이 앱이 쓰는 포트(정보 제공용)
EXPOSE 3000

# (7) 컨테이너가 시작될 때 실행할 명령
CMD ["npm", "start"]

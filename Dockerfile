FROM cirrusci/flutter:3.13.0

WORKDIR /app/simplejeux

COPY pubspec.* ./

RUN flutter pub get

COPY . .

RUN flutter build apk --debug

CMD ["bash"]

FROM cirrusci/flutter:stable

WORKDIR /app/simplejeux

COPY pubspec.* ./

RUN flutter pub get

COPY . .

RUN flutter build apk --debug

CMD ["bash"]

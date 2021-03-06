FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine

RUN apk --no-cache add openjdk8-jre
RUN gcloud components install beta cloud-firestore-emulator
ENTRYPOINT ["gcloud", "beta", "emulators", "firestore", "start"]
CMD ["--host-port=0.0.0.0:8080"]

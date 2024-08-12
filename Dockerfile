FROM fedora
USER root
RUN dnf install fortune-mod cowsay -y && mkdir app 
WORKDIR app
COPY wisecow.sh .
RUN chmod +x wisecow.sh
ENTRYPOINT ["wisecow.sh"]
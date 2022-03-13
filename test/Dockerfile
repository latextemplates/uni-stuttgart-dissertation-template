FROM reitzig/texlive-base:2021.5

RUN tlmgr update --self --repository https://mirror.mwt.me/ctan/systems/texlive/tlnet

COPY Texlivefile /work/src

RUN cat /work/src/Texlivefile
RUN xargs tlmgr install --repository https://mirror.mwt.me/ctan/systems/texlive/tlnet < /work/src/Texlivefile
RUN    sha256sum /work/src/Texlivefile > /work/tmp/Texlivefile.sha

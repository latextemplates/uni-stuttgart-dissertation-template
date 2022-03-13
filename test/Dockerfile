FROM reitzig/texlive-base:2021.5

RUN tlmgr update --self --repository https://ctan.math.washington.edu/tex-archive/systems/texlive/tlnet/

COPY Texlivefile /work/src

RUN cat /work/src/Texlivefile
RUN xargs tlmgr install --repository https://ctan.math.washington.edu/tex-archive/systems/texlive/tlnet/ < /work/src/Texlivefile && \ 
    sha256sum /work/src/Texlivefile > /work/tmp/Texlivefile.sha

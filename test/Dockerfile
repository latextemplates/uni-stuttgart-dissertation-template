FROM reitzig/texlive-base:2021.5

RUN tlmgr update --self --repository https://ctan.math.washington.edu/tex-archive/systems/texlive/tlnet/

COPY Texlivefile /work/src

RUN cat /work/src/Texlivefile
RUN xargs tlmgr install --repository https://ctan.math.washington.edu/tex-archive/systems/texlive/tlnet/ < /work/src/Texlivefile && \ 
    sha256sum /work/src/Texlivefile > /work/tmp/Texlivefile.sha
RUN cp /usr/local/texlive/2021/bin/x86_64-linuxmusl/biber /usr/local/bin && \
    cp /usr/local/texlive/2021/bin/x86_64-linuxmusl/latexmk /usr/local/bin && \
    cp /usr/local/texlive/2021/bin/x86_64-linuxmusl/texlogsieve /usr/local/bin

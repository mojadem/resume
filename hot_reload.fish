function cleanup --on-signal INT
    echo 'done watching'
    rm .tmp
    exit
end

cp resume.tex .tmp
echo 'watching resume.tex...'

while true
    if test resume.tex -nt .tmp
        cp resume.tex .tmp
        make
        open matt_dembiczak_resume.pdf
    end

    sleep 1
end

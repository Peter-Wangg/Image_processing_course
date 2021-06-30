function output = h(q)
    if(q>0.008856)
        output=q^(1/3);
    end
    if(q<=008856)
        output=7.787*q+16/116;
    end
end
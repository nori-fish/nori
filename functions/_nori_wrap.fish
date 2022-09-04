function _nori_wrap --argument-names bin
    alias --save $bin "_nori_require $bin; and command $bin"
end

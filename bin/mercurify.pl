use List::Util qw(shuffle);

@para = qw(
    Pumas are large, cat like animals which are found in America. When reports came into London Zoo that a wild puma had been spotted forty five miles south of London, they were not taken seriously. However, as the evidence began to accumulate, experts from the Zoo felt obliged to investigate, for the descriptions given by people who claimed to have seen the puma were extraordinarily similar.
　　The hunt for the puma began in a small village where a woman picking blackberries saw 'a large cat' only five yards away from her. It immediately ran away when she saw it, and experts confirmed that a puma will not attack a human being unless it is cornered. The search proved difficult, for the puma was often observed at one place in the morning and at another place twenty miles away in the evening. Wherever it went, it left behind it a trail of dead deer and small animals like rabbits. Paw prints were seen in a number of places and puma fur was found clinging to bushes. Several people complained of "cat-like noises' at night and a businessman on a fishing trip saw the puma up a tree. The experts were now fully convinced that the animal was a puma, but where had it come from? As no pumas had been reported missing from any zoo in the country, this one must have been in the possession of a private collector and somehow managed to escape. The hunt went on for several weeks, but the puma was not caught. It is disturbing to think that a dangerous wild animal is still at large in the quiet countryside.
);

for( @para ){
    m/^(\w)(.*)(\w[\.\,\;\?\!s]?)$/;
    if( $2 && length($2) > 1 ){
        @got = shuffle(split //, $2);
    }else{
        @got=($2);
    }
    print $1,@got,$3," ";
}

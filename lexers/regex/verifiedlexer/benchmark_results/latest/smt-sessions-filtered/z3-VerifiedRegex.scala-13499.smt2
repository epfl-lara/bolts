; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728176 () Bool)

(assert start!728176)

(declare-fun res!3015456 () Bool)

(declare-fun e!4484549 () Bool)

(assert (=> start!728176 (=> (not res!3015456) (not e!4484549))))

(declare-datatypes ((C!39912 0))(
  ( (C!39913 (val!30396 Int)) )
))
(declare-datatypes ((Regex!19793 0))(
  ( (ElementMatch!19793 (c!1389860 C!39912)) (Concat!28638 (regOne!40098 Regex!19793) (regTwo!40098 Regex!19793)) (EmptyExpr!19793) (Star!19793 (reg!20122 Regex!19793)) (EmptyLang!19793) (Union!19793 (regOne!40099 Regex!19793) (regTwo!40099 Regex!19793)) )
))
(declare-fun expr!41 () Regex!19793)

(declare-fun validRegex!10221 (Regex!19793) Bool)

(assert (=> start!728176 (= res!3015456 (validRegex!10221 expr!41))))

(assert (=> start!728176 e!4484549))

(declare-fun e!4484548 () Bool)

(assert (=> start!728176 e!4484548))

(declare-fun tp_is_empty!49941 () Bool)

(assert (=> start!728176 tp_is_empty!49941))

(declare-fun b!7523185 () Bool)

(declare-fun tp!2185718 () Bool)

(assert (=> b!7523185 (= e!4484548 tp!2185718)))

(declare-fun b!7523186 () Bool)

(assert (=> b!7523186 (= e!4484548 tp_is_empty!49941)))

(declare-fun b!7523187 () Bool)

(declare-fun regexDepth!451 (Regex!19793) Int)

(assert (=> b!7523187 (= e!4484549 (>= (regexDepth!451 (regOne!40098 expr!41)) (regexDepth!451 expr!41)))))

(declare-fun b!7523188 () Bool)

(declare-fun res!3015457 () Bool)

(assert (=> b!7523188 (=> (not res!3015457) (not e!4484549))))

(declare-fun nullable!8627 (Regex!19793) Bool)

(assert (=> b!7523188 (= res!3015457 (nullable!8627 (regOne!40098 expr!41)))))

(declare-fun b!7523189 () Bool)

(declare-fun tp!2185719 () Bool)

(declare-fun tp!2185721 () Bool)

(assert (=> b!7523189 (= e!4484548 (and tp!2185719 tp!2185721))))

(declare-fun b!7523190 () Bool)

(declare-fun tp!2185717 () Bool)

(declare-fun tp!2185720 () Bool)

(assert (=> b!7523190 (= e!4484548 (and tp!2185717 tp!2185720))))

(declare-fun b!7523191 () Bool)

(declare-fun res!3015458 () Bool)

(assert (=> b!7523191 (=> (not res!3015458) (not e!4484549))))

(declare-fun a!1106 () C!39912)

(get-info :version)

(assert (=> b!7523191 (= res!3015458 (and (or (not ((_ is ElementMatch!19793) expr!41)) (not (= (c!1389860 expr!41) a!1106))) (not ((_ is Union!19793) expr!41)) ((_ is Concat!28638) expr!41)))))

(assert (= (and start!728176 res!3015456) b!7523191))

(assert (= (and b!7523191 res!3015458) b!7523188))

(assert (= (and b!7523188 res!3015457) b!7523187))

(assert (= (and start!728176 ((_ is ElementMatch!19793) expr!41)) b!7523186))

(assert (= (and start!728176 ((_ is Concat!28638) expr!41)) b!7523189))

(assert (= (and start!728176 ((_ is Star!19793) expr!41)) b!7523185))

(assert (= (and start!728176 ((_ is Union!19793) expr!41)) b!7523190))

(declare-fun m!8100786 () Bool)

(assert (=> start!728176 m!8100786))

(declare-fun m!8100788 () Bool)

(assert (=> b!7523187 m!8100788))

(declare-fun m!8100790 () Bool)

(assert (=> b!7523187 m!8100790))

(declare-fun m!8100792 () Bool)

(assert (=> b!7523188 m!8100792))

(check-sat (not b!7523188) (not b!7523189) (not start!728176) (not b!7523185) (not b!7523187) (not b!7523190) tp_is_empty!49941)
(check-sat)
(get-model)

(declare-fun d!2309186 () Bool)

(declare-fun nullableFct!3453 (Regex!19793) Bool)

(assert (=> d!2309186 (= (nullable!8627 (regOne!40098 expr!41)) (nullableFct!3453 (regOne!40098 expr!41)))))

(declare-fun bs!1939703 () Bool)

(assert (= bs!1939703 d!2309186))

(declare-fun m!8100794 () Bool)

(assert (=> bs!1939703 m!8100794))

(assert (=> b!7523188 d!2309186))

(declare-fun b!7523287 () Bool)

(declare-fun e!4484614 () Bool)

(declare-fun e!4484617 () Bool)

(assert (=> b!7523287 (= e!4484614 e!4484617)))

(declare-fun res!3015486 () Bool)

(declare-fun lt!2638621 () Int)

(declare-fun call!690039 () Int)

(assert (=> b!7523287 (= res!3015486 (> lt!2638621 call!690039))))

(assert (=> b!7523287 (=> (not res!3015486) (not e!4484617))))

(declare-fun call!690040 () Int)

(declare-fun c!1389896 () Bool)

(declare-fun c!1389897 () Bool)

(declare-fun bm!690033 () Bool)

(assert (=> bm!690033 (= call!690040 (regexDepth!451 (ite c!1389896 (regTwo!40099 (regOne!40098 expr!41)) (ite c!1389897 (regTwo!40098 (regOne!40098 expr!41)) (reg!20122 (regOne!40098 expr!41))))))))

(declare-fun b!7523288 () Bool)

(assert (=> b!7523288 (= e!4484617 (> lt!2638621 call!690040))))

(declare-fun b!7523289 () Bool)

(declare-fun e!4484612 () Bool)

(declare-fun call!690042 () Int)

(assert (=> b!7523289 (= e!4484612 (> lt!2638621 call!690042))))

(declare-fun bm!690034 () Bool)

(declare-fun call!690043 () Int)

(declare-fun call!690044 () Int)

(assert (=> bm!690034 (= call!690043 call!690044)))

(declare-fun bm!690035 () Bool)

(declare-fun call!690038 () Int)

(declare-fun c!1389900 () Bool)

(assert (=> bm!690035 (= call!690038 (regexDepth!451 (ite c!1389900 (regTwo!40099 (regOne!40098 expr!41)) (regOne!40098 (regOne!40098 expr!41)))))))

(declare-fun b!7523290 () Bool)

(declare-fun e!4484613 () Int)

(assert (=> b!7523290 (= e!4484613 (+ 1 call!690044))))

(declare-fun b!7523291 () Bool)

(declare-fun c!1389899 () Bool)

(assert (=> b!7523291 (= c!1389899 ((_ is Star!19793) (regOne!40098 expr!41)))))

(declare-fun e!4484618 () Bool)

(assert (=> b!7523291 (= e!4484618 e!4484612)))

(declare-fun b!7523292 () Bool)

(declare-fun e!4484615 () Int)

(assert (=> b!7523292 (= e!4484615 e!4484613)))

(declare-fun c!1389898 () Bool)

(assert (=> b!7523292 (= c!1389898 ((_ is Star!19793) (regOne!40098 expr!41)))))

(declare-fun bm!690036 () Bool)

(assert (=> bm!690036 (= call!690044 (regexDepth!451 (ite c!1389898 (reg!20122 (regOne!40098 expr!41)) (ite c!1389900 (regOne!40099 (regOne!40098 expr!41)) (regTwo!40098 (regOne!40098 expr!41))))))))

(declare-fun bm!690037 () Bool)

(assert (=> bm!690037 (= call!690039 (regexDepth!451 (ite c!1389896 (regOne!40099 (regOne!40098 expr!41)) (regOne!40098 (regOne!40098 expr!41)))))))

(declare-fun b!7523294 () Bool)

(declare-fun e!4484611 () Int)

(declare-fun e!4484616 () Int)

(assert (=> b!7523294 (= e!4484611 e!4484616)))

(declare-fun c!1389895 () Bool)

(assert (=> b!7523294 (= c!1389895 ((_ is Concat!28638) (regOne!40098 expr!41)))))

(declare-fun bm!690038 () Bool)

(assert (=> bm!690038 (= call!690042 call!690040)))

(declare-fun b!7523295 () Bool)

(declare-fun call!690041 () Int)

(assert (=> b!7523295 (= e!4484616 (+ 1 call!690041))))

(declare-fun b!7523296 () Bool)

(assert (=> b!7523296 (= c!1389900 ((_ is Union!19793) (regOne!40098 expr!41)))))

(assert (=> b!7523296 (= e!4484613 e!4484611)))

(declare-fun b!7523297 () Bool)

(assert (=> b!7523297 (= e!4484615 1)))

(declare-fun b!7523298 () Bool)

(assert (=> b!7523298 (= e!4484616 1)))

(declare-fun b!7523299 () Bool)

(declare-fun e!4484619 () Bool)

(assert (=> b!7523299 (= e!4484619 (> lt!2638621 call!690042))))

(declare-fun b!7523300 () Bool)

(assert (=> b!7523300 (= e!4484612 (= lt!2638621 1))))

(declare-fun b!7523301 () Bool)

(declare-fun res!3015488 () Bool)

(assert (=> b!7523301 (=> (not res!3015488) (not e!4484619))))

(assert (=> b!7523301 (= res!3015488 (> lt!2638621 call!690039))))

(assert (=> b!7523301 (= e!4484618 e!4484619)))

(declare-fun bm!690039 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!690039 (= call!690041 (maxBigInt!0 (ite c!1389900 call!690043 call!690038) (ite c!1389900 call!690038 call!690043)))))

(declare-fun b!7523293 () Bool)

(declare-fun e!4484620 () Bool)

(assert (=> b!7523293 (= e!4484620 e!4484614)))

(assert (=> b!7523293 (= c!1389896 ((_ is Union!19793) (regOne!40098 expr!41)))))

(declare-fun d!2309188 () Bool)

(assert (=> d!2309188 e!4484620))

(declare-fun res!3015487 () Bool)

(assert (=> d!2309188 (=> (not res!3015487) (not e!4484620))))

(assert (=> d!2309188 (= res!3015487 (> lt!2638621 0))))

(assert (=> d!2309188 (= lt!2638621 e!4484615)))

(declare-fun c!1389901 () Bool)

(assert (=> d!2309188 (= c!1389901 ((_ is ElementMatch!19793) (regOne!40098 expr!41)))))

(assert (=> d!2309188 (= (regexDepth!451 (regOne!40098 expr!41)) lt!2638621)))

(declare-fun b!7523302 () Bool)

(assert (=> b!7523302 (= e!4484614 e!4484618)))

(assert (=> b!7523302 (= c!1389897 ((_ is Concat!28638) (regOne!40098 expr!41)))))

(declare-fun b!7523303 () Bool)

(assert (=> b!7523303 (= e!4484611 (+ 1 call!690041))))

(assert (= (and d!2309188 c!1389901) b!7523297))

(assert (= (and d!2309188 (not c!1389901)) b!7523292))

(assert (= (and b!7523292 c!1389898) b!7523290))

(assert (= (and b!7523292 (not c!1389898)) b!7523296))

(assert (= (and b!7523296 c!1389900) b!7523303))

(assert (= (and b!7523296 (not c!1389900)) b!7523294))

(assert (= (and b!7523294 c!1389895) b!7523295))

(assert (= (and b!7523294 (not c!1389895)) b!7523298))

(assert (= (or b!7523303 b!7523295) bm!690034))

(assert (= (or b!7523303 b!7523295) bm!690035))

(assert (= (or b!7523303 b!7523295) bm!690039))

(assert (= (or b!7523290 bm!690034) bm!690036))

(assert (= (and d!2309188 res!3015487) b!7523293))

(assert (= (and b!7523293 c!1389896) b!7523287))

(assert (= (and b!7523293 (not c!1389896)) b!7523302))

(assert (= (and b!7523287 res!3015486) b!7523288))

(assert (= (and b!7523302 c!1389897) b!7523301))

(assert (= (and b!7523302 (not c!1389897)) b!7523291))

(assert (= (and b!7523301 res!3015488) b!7523299))

(assert (= (and b!7523291 c!1389899) b!7523289))

(assert (= (and b!7523291 (not c!1389899)) b!7523300))

(assert (= (or b!7523299 b!7523289) bm!690038))

(assert (= (or b!7523287 b!7523301) bm!690037))

(assert (= (or b!7523288 bm!690038) bm!690033))

(declare-fun m!8100802 () Bool)

(assert (=> bm!690035 m!8100802))

(declare-fun m!8100804 () Bool)

(assert (=> bm!690039 m!8100804))

(declare-fun m!8100806 () Bool)

(assert (=> bm!690033 m!8100806))

(declare-fun m!8100808 () Bool)

(assert (=> bm!690037 m!8100808))

(declare-fun m!8100810 () Bool)

(assert (=> bm!690036 m!8100810))

(assert (=> b!7523187 d!2309188))

(declare-fun b!7523304 () Bool)

(declare-fun e!4484624 () Bool)

(declare-fun e!4484627 () Bool)

(assert (=> b!7523304 (= e!4484624 e!4484627)))

(declare-fun res!3015489 () Bool)

(declare-fun lt!2638622 () Int)

(declare-fun call!690046 () Int)

(assert (=> b!7523304 (= res!3015489 (> lt!2638622 call!690046))))

(assert (=> b!7523304 (=> (not res!3015489) (not e!4484627))))

(declare-fun c!1389903 () Bool)

(declare-fun call!690047 () Int)

(declare-fun bm!690040 () Bool)

(declare-fun c!1389904 () Bool)

(assert (=> bm!690040 (= call!690047 (regexDepth!451 (ite c!1389903 (regTwo!40099 expr!41) (ite c!1389904 (regTwo!40098 expr!41) (reg!20122 expr!41)))))))

(declare-fun b!7523305 () Bool)

(assert (=> b!7523305 (= e!4484627 (> lt!2638622 call!690047))))

(declare-fun b!7523306 () Bool)

(declare-fun e!4484622 () Bool)

(declare-fun call!690049 () Int)

(assert (=> b!7523306 (= e!4484622 (> lt!2638622 call!690049))))

(declare-fun bm!690041 () Bool)

(declare-fun call!690050 () Int)

(declare-fun call!690051 () Int)

(assert (=> bm!690041 (= call!690050 call!690051)))

(declare-fun bm!690042 () Bool)

(declare-fun call!690045 () Int)

(declare-fun c!1389907 () Bool)

(assert (=> bm!690042 (= call!690045 (regexDepth!451 (ite c!1389907 (regTwo!40099 expr!41) (regOne!40098 expr!41))))))

(declare-fun b!7523307 () Bool)

(declare-fun e!4484623 () Int)

(assert (=> b!7523307 (= e!4484623 (+ 1 call!690051))))

(declare-fun b!7523308 () Bool)

(declare-fun c!1389906 () Bool)

(assert (=> b!7523308 (= c!1389906 ((_ is Star!19793) expr!41))))

(declare-fun e!4484628 () Bool)

(assert (=> b!7523308 (= e!4484628 e!4484622)))

(declare-fun b!7523309 () Bool)

(declare-fun e!4484625 () Int)

(assert (=> b!7523309 (= e!4484625 e!4484623)))

(declare-fun c!1389905 () Bool)

(assert (=> b!7523309 (= c!1389905 ((_ is Star!19793) expr!41))))

(declare-fun bm!690043 () Bool)

(assert (=> bm!690043 (= call!690051 (regexDepth!451 (ite c!1389905 (reg!20122 expr!41) (ite c!1389907 (regOne!40099 expr!41) (regTwo!40098 expr!41)))))))

(declare-fun bm!690044 () Bool)

(assert (=> bm!690044 (= call!690046 (regexDepth!451 (ite c!1389903 (regOne!40099 expr!41) (regOne!40098 expr!41))))))

(declare-fun b!7523311 () Bool)

(declare-fun e!4484621 () Int)

(declare-fun e!4484626 () Int)

(assert (=> b!7523311 (= e!4484621 e!4484626)))

(declare-fun c!1389902 () Bool)

(assert (=> b!7523311 (= c!1389902 ((_ is Concat!28638) expr!41))))

(declare-fun bm!690045 () Bool)

(assert (=> bm!690045 (= call!690049 call!690047)))

(declare-fun b!7523312 () Bool)

(declare-fun call!690048 () Int)

(assert (=> b!7523312 (= e!4484626 (+ 1 call!690048))))

(declare-fun b!7523313 () Bool)

(assert (=> b!7523313 (= c!1389907 ((_ is Union!19793) expr!41))))

(assert (=> b!7523313 (= e!4484623 e!4484621)))

(declare-fun b!7523314 () Bool)

(assert (=> b!7523314 (= e!4484625 1)))

(declare-fun b!7523315 () Bool)

(assert (=> b!7523315 (= e!4484626 1)))

(declare-fun b!7523316 () Bool)

(declare-fun e!4484629 () Bool)

(assert (=> b!7523316 (= e!4484629 (> lt!2638622 call!690049))))

(declare-fun b!7523317 () Bool)

(assert (=> b!7523317 (= e!4484622 (= lt!2638622 1))))

(declare-fun b!7523318 () Bool)

(declare-fun res!3015491 () Bool)

(assert (=> b!7523318 (=> (not res!3015491) (not e!4484629))))

(assert (=> b!7523318 (= res!3015491 (> lt!2638622 call!690046))))

(assert (=> b!7523318 (= e!4484628 e!4484629)))

(declare-fun bm!690046 () Bool)

(assert (=> bm!690046 (= call!690048 (maxBigInt!0 (ite c!1389907 call!690050 call!690045) (ite c!1389907 call!690045 call!690050)))))

(declare-fun b!7523310 () Bool)

(declare-fun e!4484630 () Bool)

(assert (=> b!7523310 (= e!4484630 e!4484624)))

(assert (=> b!7523310 (= c!1389903 ((_ is Union!19793) expr!41))))

(declare-fun d!2309192 () Bool)

(assert (=> d!2309192 e!4484630))

(declare-fun res!3015490 () Bool)

(assert (=> d!2309192 (=> (not res!3015490) (not e!4484630))))

(assert (=> d!2309192 (= res!3015490 (> lt!2638622 0))))

(assert (=> d!2309192 (= lt!2638622 e!4484625)))

(declare-fun c!1389908 () Bool)

(assert (=> d!2309192 (= c!1389908 ((_ is ElementMatch!19793) expr!41))))

(assert (=> d!2309192 (= (regexDepth!451 expr!41) lt!2638622)))

(declare-fun b!7523319 () Bool)

(assert (=> b!7523319 (= e!4484624 e!4484628)))

(assert (=> b!7523319 (= c!1389904 ((_ is Concat!28638) expr!41))))

(declare-fun b!7523320 () Bool)

(assert (=> b!7523320 (= e!4484621 (+ 1 call!690048))))

(assert (= (and d!2309192 c!1389908) b!7523314))

(assert (= (and d!2309192 (not c!1389908)) b!7523309))

(assert (= (and b!7523309 c!1389905) b!7523307))

(assert (= (and b!7523309 (not c!1389905)) b!7523313))

(assert (= (and b!7523313 c!1389907) b!7523320))

(assert (= (and b!7523313 (not c!1389907)) b!7523311))

(assert (= (and b!7523311 c!1389902) b!7523312))

(assert (= (and b!7523311 (not c!1389902)) b!7523315))

(assert (= (or b!7523320 b!7523312) bm!690041))

(assert (= (or b!7523320 b!7523312) bm!690042))

(assert (= (or b!7523320 b!7523312) bm!690046))

(assert (= (or b!7523307 bm!690041) bm!690043))

(assert (= (and d!2309192 res!3015490) b!7523310))

(assert (= (and b!7523310 c!1389903) b!7523304))

(assert (= (and b!7523310 (not c!1389903)) b!7523319))

(assert (= (and b!7523304 res!3015489) b!7523305))

(assert (= (and b!7523319 c!1389904) b!7523318))

(assert (= (and b!7523319 (not c!1389904)) b!7523308))

(assert (= (and b!7523318 res!3015491) b!7523316))

(assert (= (and b!7523308 c!1389906) b!7523306))

(assert (= (and b!7523308 (not c!1389906)) b!7523317))

(assert (= (or b!7523316 b!7523306) bm!690045))

(assert (= (or b!7523304 b!7523318) bm!690044))

(assert (= (or b!7523305 bm!690045) bm!690040))

(declare-fun m!8100812 () Bool)

(assert (=> bm!690042 m!8100812))

(declare-fun m!8100814 () Bool)

(assert (=> bm!690046 m!8100814))

(declare-fun m!8100816 () Bool)

(assert (=> bm!690040 m!8100816))

(declare-fun m!8100818 () Bool)

(assert (=> bm!690044 m!8100818))

(declare-fun m!8100820 () Bool)

(assert (=> bm!690043 m!8100820))

(assert (=> b!7523187 d!2309192))

(declare-fun bm!690067 () Bool)

(declare-fun call!690074 () Bool)

(declare-fun call!690073 () Bool)

(assert (=> bm!690067 (= call!690074 call!690073)))

(declare-fun b!7523383 () Bool)

(declare-fun e!4484673 () Bool)

(assert (=> b!7523383 (= e!4484673 call!690074)))

(declare-fun b!7523384 () Bool)

(declare-fun e!4484670 () Bool)

(assert (=> b!7523384 (= e!4484670 call!690073)))

(declare-fun c!1389928 () Bool)

(declare-fun bm!690068 () Bool)

(declare-fun c!1389927 () Bool)

(assert (=> bm!690068 (= call!690073 (validRegex!10221 (ite c!1389928 (reg!20122 expr!41) (ite c!1389927 (regTwo!40099 expr!41) (regOne!40098 expr!41)))))))

(declare-fun b!7523385 () Bool)

(declare-fun e!4484672 () Bool)

(assert (=> b!7523385 (= e!4484672 e!4484670)))

(declare-fun res!3015510 () Bool)

(assert (=> b!7523385 (= res!3015510 (not (nullable!8627 (reg!20122 expr!41))))))

(assert (=> b!7523385 (=> (not res!3015510) (not e!4484670))))

(declare-fun b!7523386 () Bool)

(declare-fun res!3015508 () Bool)

(assert (=> b!7523386 (=> (not res!3015508) (not e!4484673))))

(declare-fun call!690072 () Bool)

(assert (=> b!7523386 (= res!3015508 call!690072)))

(declare-fun e!4484669 () Bool)

(assert (=> b!7523386 (= e!4484669 e!4484673)))

(declare-fun d!2309194 () Bool)

(declare-fun res!3015512 () Bool)

(declare-fun e!4484668 () Bool)

(assert (=> d!2309194 (=> res!3015512 e!4484668)))

(assert (=> d!2309194 (= res!3015512 ((_ is ElementMatch!19793) expr!41))))

(assert (=> d!2309194 (= (validRegex!10221 expr!41) e!4484668)))

(declare-fun b!7523387 () Bool)

(assert (=> b!7523387 (= e!4484668 e!4484672)))

(assert (=> b!7523387 (= c!1389928 ((_ is Star!19793) expr!41))))

(declare-fun b!7523388 () Bool)

(declare-fun e!4484667 () Bool)

(declare-fun e!4484671 () Bool)

(assert (=> b!7523388 (= e!4484667 e!4484671)))

(declare-fun res!3015511 () Bool)

(assert (=> b!7523388 (=> (not res!3015511) (not e!4484671))))

(assert (=> b!7523388 (= res!3015511 call!690074)))

(declare-fun b!7523389 () Bool)

(assert (=> b!7523389 (= e!4484672 e!4484669)))

(assert (=> b!7523389 (= c!1389927 ((_ is Union!19793) expr!41))))

(declare-fun b!7523390 () Bool)

(declare-fun res!3015509 () Bool)

(assert (=> b!7523390 (=> res!3015509 e!4484667)))

(assert (=> b!7523390 (= res!3015509 (not ((_ is Concat!28638) expr!41)))))

(assert (=> b!7523390 (= e!4484669 e!4484667)))

(declare-fun bm!690069 () Bool)

(assert (=> bm!690069 (= call!690072 (validRegex!10221 (ite c!1389927 (regOne!40099 expr!41) (regTwo!40098 expr!41))))))

(declare-fun b!7523391 () Bool)

(assert (=> b!7523391 (= e!4484671 call!690072)))

(assert (= (and d!2309194 (not res!3015512)) b!7523387))

(assert (= (and b!7523387 c!1389928) b!7523385))

(assert (= (and b!7523387 (not c!1389928)) b!7523389))

(assert (= (and b!7523385 res!3015510) b!7523384))

(assert (= (and b!7523389 c!1389927) b!7523386))

(assert (= (and b!7523389 (not c!1389927)) b!7523390))

(assert (= (and b!7523386 res!3015508) b!7523383))

(assert (= (and b!7523390 (not res!3015509)) b!7523388))

(assert (= (and b!7523388 res!3015511) b!7523391))

(assert (= (or b!7523383 b!7523388) bm!690067))

(assert (= (or b!7523386 b!7523391) bm!690069))

(assert (= (or b!7523384 bm!690067) bm!690068))

(declare-fun m!8100844 () Bool)

(assert (=> bm!690068 m!8100844))

(declare-fun m!8100846 () Bool)

(assert (=> b!7523385 m!8100846))

(declare-fun m!8100848 () Bool)

(assert (=> bm!690069 m!8100848))

(assert (=> start!728176 d!2309194))

(declare-fun b!7523425 () Bool)

(declare-fun e!4484681 () Bool)

(declare-fun tp!2185769 () Bool)

(declare-fun tp!2185767 () Bool)

(assert (=> b!7523425 (= e!4484681 (and tp!2185769 tp!2185767))))

(assert (=> b!7523189 (= tp!2185719 e!4484681)))

(declare-fun b!7523423 () Bool)

(declare-fun tp!2185771 () Bool)

(declare-fun tp!2185768 () Bool)

(assert (=> b!7523423 (= e!4484681 (and tp!2185771 tp!2185768))))

(declare-fun b!7523424 () Bool)

(declare-fun tp!2185770 () Bool)

(assert (=> b!7523424 (= e!4484681 tp!2185770)))

(declare-fun b!7523422 () Bool)

(assert (=> b!7523422 (= e!4484681 tp_is_empty!49941)))

(assert (= (and b!7523189 ((_ is ElementMatch!19793) (regOne!40098 expr!41))) b!7523422))

(assert (= (and b!7523189 ((_ is Concat!28638) (regOne!40098 expr!41))) b!7523423))

(assert (= (and b!7523189 ((_ is Star!19793) (regOne!40098 expr!41))) b!7523424))

(assert (= (and b!7523189 ((_ is Union!19793) (regOne!40098 expr!41))) b!7523425))

(declare-fun b!7523429 () Bool)

(declare-fun e!4484682 () Bool)

(declare-fun tp!2185774 () Bool)

(declare-fun tp!2185772 () Bool)

(assert (=> b!7523429 (= e!4484682 (and tp!2185774 tp!2185772))))

(assert (=> b!7523189 (= tp!2185721 e!4484682)))

(declare-fun b!7523427 () Bool)

(declare-fun tp!2185776 () Bool)

(declare-fun tp!2185773 () Bool)

(assert (=> b!7523427 (= e!4484682 (and tp!2185776 tp!2185773))))

(declare-fun b!7523428 () Bool)

(declare-fun tp!2185775 () Bool)

(assert (=> b!7523428 (= e!4484682 tp!2185775)))

(declare-fun b!7523426 () Bool)

(assert (=> b!7523426 (= e!4484682 tp_is_empty!49941)))

(assert (= (and b!7523189 ((_ is ElementMatch!19793) (regTwo!40098 expr!41))) b!7523426))

(assert (= (and b!7523189 ((_ is Concat!28638) (regTwo!40098 expr!41))) b!7523427))

(assert (= (and b!7523189 ((_ is Star!19793) (regTwo!40098 expr!41))) b!7523428))

(assert (= (and b!7523189 ((_ is Union!19793) (regTwo!40098 expr!41))) b!7523429))

(declare-fun b!7523433 () Bool)

(declare-fun e!4484683 () Bool)

(declare-fun tp!2185779 () Bool)

(declare-fun tp!2185777 () Bool)

(assert (=> b!7523433 (= e!4484683 (and tp!2185779 tp!2185777))))

(assert (=> b!7523185 (= tp!2185718 e!4484683)))

(declare-fun b!7523431 () Bool)

(declare-fun tp!2185781 () Bool)

(declare-fun tp!2185778 () Bool)

(assert (=> b!7523431 (= e!4484683 (and tp!2185781 tp!2185778))))

(declare-fun b!7523432 () Bool)

(declare-fun tp!2185780 () Bool)

(assert (=> b!7523432 (= e!4484683 tp!2185780)))

(declare-fun b!7523430 () Bool)

(assert (=> b!7523430 (= e!4484683 tp_is_empty!49941)))

(assert (= (and b!7523185 ((_ is ElementMatch!19793) (reg!20122 expr!41))) b!7523430))

(assert (= (and b!7523185 ((_ is Concat!28638) (reg!20122 expr!41))) b!7523431))

(assert (= (and b!7523185 ((_ is Star!19793) (reg!20122 expr!41))) b!7523432))

(assert (= (and b!7523185 ((_ is Union!19793) (reg!20122 expr!41))) b!7523433))

(declare-fun b!7523437 () Bool)

(declare-fun e!4484684 () Bool)

(declare-fun tp!2185784 () Bool)

(declare-fun tp!2185782 () Bool)

(assert (=> b!7523437 (= e!4484684 (and tp!2185784 tp!2185782))))

(assert (=> b!7523190 (= tp!2185717 e!4484684)))

(declare-fun b!7523435 () Bool)

(declare-fun tp!2185786 () Bool)

(declare-fun tp!2185783 () Bool)

(assert (=> b!7523435 (= e!4484684 (and tp!2185786 tp!2185783))))

(declare-fun b!7523436 () Bool)

(declare-fun tp!2185785 () Bool)

(assert (=> b!7523436 (= e!4484684 tp!2185785)))

(declare-fun b!7523434 () Bool)

(assert (=> b!7523434 (= e!4484684 tp_is_empty!49941)))

(assert (= (and b!7523190 ((_ is ElementMatch!19793) (regOne!40099 expr!41))) b!7523434))

(assert (= (and b!7523190 ((_ is Concat!28638) (regOne!40099 expr!41))) b!7523435))

(assert (= (and b!7523190 ((_ is Star!19793) (regOne!40099 expr!41))) b!7523436))

(assert (= (and b!7523190 ((_ is Union!19793) (regOne!40099 expr!41))) b!7523437))

(declare-fun b!7523441 () Bool)

(declare-fun e!4484685 () Bool)

(declare-fun tp!2185789 () Bool)

(declare-fun tp!2185787 () Bool)

(assert (=> b!7523441 (= e!4484685 (and tp!2185789 tp!2185787))))

(assert (=> b!7523190 (= tp!2185720 e!4484685)))

(declare-fun b!7523439 () Bool)

(declare-fun tp!2185791 () Bool)

(declare-fun tp!2185788 () Bool)

(assert (=> b!7523439 (= e!4484685 (and tp!2185791 tp!2185788))))

(declare-fun b!7523440 () Bool)

(declare-fun tp!2185790 () Bool)

(assert (=> b!7523440 (= e!4484685 tp!2185790)))

(declare-fun b!7523438 () Bool)

(assert (=> b!7523438 (= e!4484685 tp_is_empty!49941)))

(assert (= (and b!7523190 ((_ is ElementMatch!19793) (regTwo!40099 expr!41))) b!7523438))

(assert (= (and b!7523190 ((_ is Concat!28638) (regTwo!40099 expr!41))) b!7523439))

(assert (= (and b!7523190 ((_ is Star!19793) (regTwo!40099 expr!41))) b!7523440))

(assert (= (and b!7523190 ((_ is Union!19793) (regTwo!40099 expr!41))) b!7523441))

(check-sat (not bm!690040) (not bm!690068) (not bm!690042) (not b!7523424) (not bm!690069) (not bm!690037) (not b!7523437) (not b!7523428) (not bm!690046) (not bm!690043) (not b!7523432) tp_is_empty!49941 (not bm!690035) (not bm!690036) (not b!7523423) (not b!7523431) (not bm!690044) (not b!7523385) (not b!7523439) (not b!7523425) (not bm!690039) (not b!7523433) (not d!2309186) (not b!7523427) (not b!7523441) (not b!7523436) (not b!7523429) (not b!7523440) (not b!7523435) (not bm!690033))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110366 () Bool)

(assert start!110366)

(declare-fun b!1243190 () Bool)

(declare-fun e!793832 () Bool)

(declare-fun tp!360726 () Bool)

(declare-fun tp!360728 () Bool)

(assert (=> b!1243190 (= e!793832 (and tp!360726 tp!360728))))

(declare-fun b!1243191 () Bool)

(declare-fun tp_is_empty!6427 () Bool)

(assert (=> b!1243191 (= e!793832 tp_is_empty!6427)))

(declare-fun b!1243192 () Bool)

(declare-fun tp!360727 () Bool)

(assert (=> b!1243192 (= e!793832 tp!360727)))

(declare-fun b!1243193 () Bool)

(declare-fun tp!360729 () Bool)

(declare-fun tp!360725 () Bool)

(assert (=> b!1243193 (= e!793832 (and tp!360729 tp!360725))))

(declare-fun b!1243194 () Bool)

(declare-fun res!554056 () Bool)

(declare-fun e!793831 () Bool)

(assert (=> b!1243194 (=> (not res!554056) (not e!793831))))

(declare-datatypes ((C!7224 0))(
  ( (C!7225 (val!4142 Int)) )
))
(declare-datatypes ((Regex!3453 0))(
  ( (ElementMatch!3453 (c!207062 C!7224)) (Concat!5683 (regOne!7418 Regex!3453) (regTwo!7418 Regex!3453)) (EmptyExpr!3453) (Star!3453 (reg!3782 Regex!3453)) (EmptyLang!3453) (Union!3453 (regOne!7419 Regex!3453) (regTwo!7419 Regex!3453)) )
))
(declare-fun r!15719 () Regex!3453)

(get-info :version)

(assert (=> b!1243194 (= res!554056 (and (or (not ((_ is Concat!5683) r!15719)) (not ((_ is EmptyExpr!3453) (regOne!7418 r!15719)))) ((_ is Concat!5683) r!15719) ((_ is EmptyExpr!3453) (regTwo!7418 r!15719))))))

(declare-fun b!1243195 () Bool)

(declare-fun regexDepth!52 (Regex!3453) Int)

(assert (=> b!1243195 (= e!793831 (>= (regexDepth!52 (regOne!7418 r!15719)) (regexDepth!52 r!15719)))))

(declare-fun res!554055 () Bool)

(assert (=> start!110366 (=> (not res!554055) (not e!793831))))

(declare-fun validRegex!1489 (Regex!3453) Bool)

(assert (=> start!110366 (= res!554055 (validRegex!1489 r!15719))))

(assert (=> start!110366 e!793831))

(assert (=> start!110366 e!793832))

(assert (= (and start!110366 res!554055) b!1243194))

(assert (= (and b!1243194 res!554056) b!1243195))

(assert (= (and start!110366 ((_ is ElementMatch!3453) r!15719)) b!1243191))

(assert (= (and start!110366 ((_ is Concat!5683) r!15719)) b!1243190))

(assert (= (and start!110366 ((_ is Star!3453) r!15719)) b!1243192))

(assert (= (and start!110366 ((_ is Union!3453) r!15719)) b!1243193))

(declare-fun m!1410813 () Bool)

(assert (=> b!1243195 m!1410813))

(declare-fun m!1410815 () Bool)

(assert (=> b!1243195 m!1410815))

(declare-fun m!1410817 () Bool)

(assert (=> start!110366 m!1410817))

(check-sat (not b!1243195) tp_is_empty!6427 (not b!1243192) (not b!1243190) (not start!110366) (not b!1243193))
(check-sat)
(get-model)

(declare-fun b!1243281 () Bool)

(declare-fun e!793890 () Int)

(declare-fun e!793883 () Int)

(assert (=> b!1243281 (= e!793890 e!793883)))

(declare-fun c!207103 () Bool)

(assert (=> b!1243281 (= c!207103 ((_ is Concat!5683) (regOne!7418 r!15719)))))

(declare-fun b!1243282 () Bool)

(declare-fun e!793884 () Int)

(declare-fun e!793888 () Int)

(assert (=> b!1243282 (= e!793884 e!793888)))

(declare-fun c!207102 () Bool)

(assert (=> b!1243282 (= c!207102 ((_ is Star!3453) (regOne!7418 r!15719)))))

(declare-fun b!1243283 () Bool)

(declare-fun c!207098 () Bool)

(assert (=> b!1243283 (= c!207098 ((_ is Star!3453) (regOne!7418 r!15719)))))

(declare-fun e!793889 () Bool)

(declare-fun e!793891 () Bool)

(assert (=> b!1243283 (= e!793889 e!793891)))

(declare-fun b!1243284 () Bool)

(declare-fun e!793886 () Bool)

(assert (=> b!1243284 (= e!793886 e!793889)))

(declare-fun c!207100 () Bool)

(assert (=> b!1243284 (= c!207100 ((_ is Concat!5683) (regOne!7418 r!15719)))))

(declare-fun b!1243285 () Bool)

(declare-fun lt!420161 () Int)

(assert (=> b!1243285 (= e!793891 (= lt!420161 1))))

(declare-fun b!1243286 () Bool)

(declare-fun call!86487 () Int)

(assert (=> b!1243286 (= e!793883 (+ 1 call!86487))))

(declare-fun b!1243287 () Bool)

(declare-fun call!86485 () Int)

(assert (=> b!1243287 (= e!793888 (+ 1 call!86485))))

(declare-fun b!1243288 () Bool)

(declare-fun res!554074 () Bool)

(declare-fun e!793887 () Bool)

(assert (=> b!1243288 (=> (not res!554074) (not e!793887))))

(declare-fun call!86488 () Int)

(assert (=> b!1243288 (= res!554074 (> lt!420161 call!86488))))

(assert (=> b!1243288 (= e!793889 e!793887)))

(declare-fun bm!86478 () Bool)

(declare-fun call!86489 () Int)

(assert (=> bm!86478 (= call!86488 call!86489)))

(declare-fun bm!86479 () Bool)

(declare-fun call!86483 () Int)

(declare-fun c!207101 () Bool)

(assert (=> bm!86479 (= call!86483 (regexDepth!52 (ite c!207101 (regTwo!7419 (regOne!7418 r!15719)) (regTwo!7418 (regOne!7418 r!15719)))))))

(declare-fun b!1243289 () Bool)

(declare-fun e!793885 () Bool)

(assert (=> b!1243289 (= e!793885 e!793886)))

(assert (=> b!1243289 (= c!207101 ((_ is Union!3453) (regOne!7418 r!15719)))))

(declare-fun bm!86480 () Bool)

(declare-fun call!86486 () Int)

(declare-fun c!207104 () Bool)

(assert (=> bm!86480 (= call!86486 (regexDepth!52 (ite c!207104 (regTwo!7419 (regOne!7418 r!15719)) (regTwo!7418 (regOne!7418 r!15719)))))))

(declare-fun b!1243290 () Bool)

(assert (=> b!1243290 (= e!793890 (+ 1 call!86487))))

(declare-fun b!1243291 () Bool)

(assert (=> b!1243291 (= c!207104 ((_ is Union!3453) (regOne!7418 r!15719)))))

(assert (=> b!1243291 (= e!793888 e!793890)))

(declare-fun b!1243292 () Bool)

(declare-fun e!793892 () Bool)

(assert (=> b!1243292 (= e!793892 (> lt!420161 call!86483))))

(declare-fun bm!86481 () Bool)

(assert (=> bm!86481 (= call!86489 (regexDepth!52 (ite c!207101 (regOne!7419 (regOne!7418 r!15719)) (ite c!207100 (regOne!7418 (regOne!7418 r!15719)) (reg!3782 (regOne!7418 r!15719))))))))

(declare-fun b!1243293 () Bool)

(assert (=> b!1243293 (= e!793883 1)))

(declare-fun bm!86482 () Bool)

(declare-fun call!86484 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!86482 (= call!86487 (maxBigInt!0 call!86484 call!86486))))

(declare-fun b!1243294 () Bool)

(assert (=> b!1243294 (= e!793884 1)))

(declare-fun b!1243295 () Bool)

(assert (=> b!1243295 (= e!793891 (> lt!420161 call!86488))))

(declare-fun d!353820 () Bool)

(assert (=> d!353820 e!793885))

(declare-fun res!554072 () Bool)

(assert (=> d!353820 (=> (not res!554072) (not e!793885))))

(assert (=> d!353820 (= res!554072 (> lt!420161 0))))

(assert (=> d!353820 (= lt!420161 e!793884)))

(declare-fun c!207099 () Bool)

(assert (=> d!353820 (= c!207099 ((_ is ElementMatch!3453) (regOne!7418 r!15719)))))

(assert (=> d!353820 (= (regexDepth!52 (regOne!7418 r!15719)) lt!420161)))

(declare-fun bm!86483 () Bool)

(assert (=> bm!86483 (= call!86485 (regexDepth!52 (ite c!207102 (reg!3782 (regOne!7418 r!15719)) (ite c!207104 (regOne!7419 (regOne!7418 r!15719)) (regOne!7418 (regOne!7418 r!15719))))))))

(declare-fun b!1243296 () Bool)

(assert (=> b!1243296 (= e!793887 (> lt!420161 call!86483))))

(declare-fun bm!86484 () Bool)

(assert (=> bm!86484 (= call!86484 call!86485)))

(declare-fun b!1243297 () Bool)

(assert (=> b!1243297 (= e!793886 e!793892)))

(declare-fun res!554073 () Bool)

(assert (=> b!1243297 (= res!554073 (> lt!420161 call!86489))))

(assert (=> b!1243297 (=> (not res!554073) (not e!793892))))

(assert (= (and d!353820 c!207099) b!1243294))

(assert (= (and d!353820 (not c!207099)) b!1243282))

(assert (= (and b!1243282 c!207102) b!1243287))

(assert (= (and b!1243282 (not c!207102)) b!1243291))

(assert (= (and b!1243291 c!207104) b!1243290))

(assert (= (and b!1243291 (not c!207104)) b!1243281))

(assert (= (and b!1243281 c!207103) b!1243286))

(assert (= (and b!1243281 (not c!207103)) b!1243293))

(assert (= (or b!1243290 b!1243286) bm!86484))

(assert (= (or b!1243290 b!1243286) bm!86480))

(assert (= (or b!1243290 b!1243286) bm!86482))

(assert (= (or b!1243287 bm!86484) bm!86483))

(assert (= (and d!353820 res!554072) b!1243289))

(assert (= (and b!1243289 c!207101) b!1243297))

(assert (= (and b!1243289 (not c!207101)) b!1243284))

(assert (= (and b!1243297 res!554073) b!1243292))

(assert (= (and b!1243284 c!207100) b!1243288))

(assert (= (and b!1243284 (not c!207100)) b!1243283))

(assert (= (and b!1243288 res!554074) b!1243296))

(assert (= (and b!1243283 c!207098) b!1243295))

(assert (= (and b!1243283 (not c!207098)) b!1243285))

(assert (= (or b!1243288 b!1243295) bm!86478))

(assert (= (or b!1243297 bm!86478) bm!86481))

(assert (= (or b!1243292 b!1243296) bm!86479))

(declare-fun m!1410829 () Bool)

(assert (=> bm!86482 m!1410829))

(declare-fun m!1410831 () Bool)

(assert (=> bm!86480 m!1410831))

(declare-fun m!1410833 () Bool)

(assert (=> bm!86481 m!1410833))

(declare-fun m!1410835 () Bool)

(assert (=> bm!86483 m!1410835))

(declare-fun m!1410837 () Bool)

(assert (=> bm!86479 m!1410837))

(assert (=> b!1243195 d!353820))

(declare-fun b!1243315 () Bool)

(declare-fun e!793910 () Int)

(declare-fun e!793903 () Int)

(assert (=> b!1243315 (= e!793910 e!793903)))

(declare-fun c!207117 () Bool)

(assert (=> b!1243315 (= c!207117 ((_ is Concat!5683) r!15719))))

(declare-fun b!1243316 () Bool)

(declare-fun e!793904 () Int)

(declare-fun e!793908 () Int)

(assert (=> b!1243316 (= e!793904 e!793908)))

(declare-fun c!207116 () Bool)

(assert (=> b!1243316 (= c!207116 ((_ is Star!3453) r!15719))))

(declare-fun b!1243317 () Bool)

(declare-fun c!207112 () Bool)

(assert (=> b!1243317 (= c!207112 ((_ is Star!3453) r!15719))))

(declare-fun e!793909 () Bool)

(declare-fun e!793911 () Bool)

(assert (=> b!1243317 (= e!793909 e!793911)))

(declare-fun b!1243318 () Bool)

(declare-fun e!793906 () Bool)

(assert (=> b!1243318 (= e!793906 e!793909)))

(declare-fun c!207114 () Bool)

(assert (=> b!1243318 (= c!207114 ((_ is Concat!5683) r!15719))))

(declare-fun b!1243319 () Bool)

(declare-fun lt!420163 () Int)

(assert (=> b!1243319 (= e!793911 (= lt!420163 1))))

(declare-fun b!1243320 () Bool)

(declare-fun call!86501 () Int)

(assert (=> b!1243320 (= e!793903 (+ 1 call!86501))))

(declare-fun b!1243321 () Bool)

(declare-fun call!86499 () Int)

(assert (=> b!1243321 (= e!793908 (+ 1 call!86499))))

(declare-fun b!1243322 () Bool)

(declare-fun res!554080 () Bool)

(declare-fun e!793907 () Bool)

(assert (=> b!1243322 (=> (not res!554080) (not e!793907))))

(declare-fun call!86502 () Int)

(assert (=> b!1243322 (= res!554080 (> lt!420163 call!86502))))

(assert (=> b!1243322 (= e!793909 e!793907)))

(declare-fun bm!86492 () Bool)

(declare-fun call!86503 () Int)

(assert (=> bm!86492 (= call!86502 call!86503)))

(declare-fun bm!86493 () Bool)

(declare-fun call!86497 () Int)

(declare-fun c!207115 () Bool)

(assert (=> bm!86493 (= call!86497 (regexDepth!52 (ite c!207115 (regTwo!7419 r!15719) (regTwo!7418 r!15719))))))

(declare-fun b!1243323 () Bool)

(declare-fun e!793905 () Bool)

(assert (=> b!1243323 (= e!793905 e!793906)))

(assert (=> b!1243323 (= c!207115 ((_ is Union!3453) r!15719))))

(declare-fun bm!86494 () Bool)

(declare-fun call!86500 () Int)

(declare-fun c!207118 () Bool)

(assert (=> bm!86494 (= call!86500 (regexDepth!52 (ite c!207118 (regTwo!7419 r!15719) (regTwo!7418 r!15719))))))

(declare-fun b!1243324 () Bool)

(assert (=> b!1243324 (= e!793910 (+ 1 call!86501))))

(declare-fun b!1243325 () Bool)

(assert (=> b!1243325 (= c!207118 ((_ is Union!3453) r!15719))))

(assert (=> b!1243325 (= e!793908 e!793910)))

(declare-fun b!1243326 () Bool)

(declare-fun e!793912 () Bool)

(assert (=> b!1243326 (= e!793912 (> lt!420163 call!86497))))

(declare-fun bm!86495 () Bool)

(assert (=> bm!86495 (= call!86503 (regexDepth!52 (ite c!207115 (regOne!7419 r!15719) (ite c!207114 (regOne!7418 r!15719) (reg!3782 r!15719)))))))

(declare-fun b!1243327 () Bool)

(assert (=> b!1243327 (= e!793903 1)))

(declare-fun bm!86496 () Bool)

(declare-fun call!86498 () Int)

(assert (=> bm!86496 (= call!86501 (maxBigInt!0 call!86498 call!86500))))

(declare-fun b!1243328 () Bool)

(assert (=> b!1243328 (= e!793904 1)))

(declare-fun b!1243329 () Bool)

(assert (=> b!1243329 (= e!793911 (> lt!420163 call!86502))))

(declare-fun d!353824 () Bool)

(assert (=> d!353824 e!793905))

(declare-fun res!554078 () Bool)

(assert (=> d!353824 (=> (not res!554078) (not e!793905))))

(assert (=> d!353824 (= res!554078 (> lt!420163 0))))

(assert (=> d!353824 (= lt!420163 e!793904)))

(declare-fun c!207113 () Bool)

(assert (=> d!353824 (= c!207113 ((_ is ElementMatch!3453) r!15719))))

(assert (=> d!353824 (= (regexDepth!52 r!15719) lt!420163)))

(declare-fun bm!86497 () Bool)

(assert (=> bm!86497 (= call!86499 (regexDepth!52 (ite c!207116 (reg!3782 r!15719) (ite c!207118 (regOne!7419 r!15719) (regOne!7418 r!15719)))))))

(declare-fun b!1243330 () Bool)

(assert (=> b!1243330 (= e!793907 (> lt!420163 call!86497))))

(declare-fun bm!86498 () Bool)

(assert (=> bm!86498 (= call!86498 call!86499)))

(declare-fun b!1243331 () Bool)

(assert (=> b!1243331 (= e!793906 e!793912)))

(declare-fun res!554079 () Bool)

(assert (=> b!1243331 (= res!554079 (> lt!420163 call!86503))))

(assert (=> b!1243331 (=> (not res!554079) (not e!793912))))

(assert (= (and d!353824 c!207113) b!1243328))

(assert (= (and d!353824 (not c!207113)) b!1243316))

(assert (= (and b!1243316 c!207116) b!1243321))

(assert (= (and b!1243316 (not c!207116)) b!1243325))

(assert (= (and b!1243325 c!207118) b!1243324))

(assert (= (and b!1243325 (not c!207118)) b!1243315))

(assert (= (and b!1243315 c!207117) b!1243320))

(assert (= (and b!1243315 (not c!207117)) b!1243327))

(assert (= (or b!1243324 b!1243320) bm!86498))

(assert (= (or b!1243324 b!1243320) bm!86494))

(assert (= (or b!1243324 b!1243320) bm!86496))

(assert (= (or b!1243321 bm!86498) bm!86497))

(assert (= (and d!353824 res!554078) b!1243323))

(assert (= (and b!1243323 c!207115) b!1243331))

(assert (= (and b!1243323 (not c!207115)) b!1243318))

(assert (= (and b!1243331 res!554079) b!1243326))

(assert (= (and b!1243318 c!207114) b!1243322))

(assert (= (and b!1243318 (not c!207114)) b!1243317))

(assert (= (and b!1243322 res!554080) b!1243330))

(assert (= (and b!1243317 c!207112) b!1243329))

(assert (= (and b!1243317 (not c!207112)) b!1243319))

(assert (= (or b!1243322 b!1243329) bm!86492))

(assert (= (or b!1243331 bm!86492) bm!86495))

(assert (= (or b!1243326 b!1243330) bm!86493))

(declare-fun m!1410849 () Bool)

(assert (=> bm!86496 m!1410849))

(declare-fun m!1410851 () Bool)

(assert (=> bm!86494 m!1410851))

(declare-fun m!1410853 () Bool)

(assert (=> bm!86495 m!1410853))

(declare-fun m!1410855 () Bool)

(assert (=> bm!86497 m!1410855))

(declare-fun m!1410857 () Bool)

(assert (=> bm!86493 m!1410857))

(assert (=> b!1243195 d!353824))

(declare-fun d!353828 () Bool)

(declare-fun res!554107 () Bool)

(declare-fun e!793949 () Bool)

(assert (=> d!353828 (=> res!554107 e!793949)))

(assert (=> d!353828 (= res!554107 ((_ is ElementMatch!3453) r!15719))))

(assert (=> d!353828 (= (validRegex!1489 r!15719) e!793949)))

(declare-fun b!1243377 () Bool)

(declare-fun e!793953 () Bool)

(declare-fun e!793948 () Bool)

(assert (=> b!1243377 (= e!793953 e!793948)))

(declare-fun c!207129 () Bool)

(assert (=> b!1243377 (= c!207129 ((_ is Union!3453) r!15719))))

(declare-fun b!1243378 () Bool)

(declare-fun e!793952 () Bool)

(declare-fun call!86519 () Bool)

(assert (=> b!1243378 (= e!793952 call!86519)))

(declare-fun b!1243379 () Bool)

(declare-fun e!793951 () Bool)

(assert (=> b!1243379 (= e!793953 e!793951)))

(declare-fun res!554109 () Bool)

(declare-fun nullable!1091 (Regex!3453) Bool)

(assert (=> b!1243379 (= res!554109 (not (nullable!1091 (reg!3782 r!15719))))))

(assert (=> b!1243379 (=> (not res!554109) (not e!793951))))

(declare-fun b!1243380 () Bool)

(declare-fun res!554110 () Bool)

(assert (=> b!1243380 (=> (not res!554110) (not e!793952))))

(declare-fun call!86520 () Bool)

(assert (=> b!1243380 (= res!554110 call!86520)))

(assert (=> b!1243380 (= e!793948 e!793952)))

(declare-fun bm!86514 () Bool)

(declare-fun call!86521 () Bool)

(assert (=> bm!86514 (= call!86519 call!86521)))

(declare-fun b!1243381 () Bool)

(declare-fun res!554108 () Bool)

(declare-fun e!793950 () Bool)

(assert (=> b!1243381 (=> res!554108 e!793950)))

(assert (=> b!1243381 (= res!554108 (not ((_ is Concat!5683) r!15719)))))

(assert (=> b!1243381 (= e!793948 e!793950)))

(declare-fun b!1243382 () Bool)

(declare-fun e!793954 () Bool)

(assert (=> b!1243382 (= e!793954 call!86519)))

(declare-fun b!1243383 () Bool)

(assert (=> b!1243383 (= e!793949 e!793953)))

(declare-fun c!207130 () Bool)

(assert (=> b!1243383 (= c!207130 ((_ is Star!3453) r!15719))))

(declare-fun bm!86515 () Bool)

(assert (=> bm!86515 (= call!86520 (validRegex!1489 (ite c!207129 (regOne!7419 r!15719) (regOne!7418 r!15719))))))

(declare-fun bm!86516 () Bool)

(assert (=> bm!86516 (= call!86521 (validRegex!1489 (ite c!207130 (reg!3782 r!15719) (ite c!207129 (regTwo!7419 r!15719) (regTwo!7418 r!15719)))))))

(declare-fun b!1243384 () Bool)

(assert (=> b!1243384 (= e!793950 e!793954)))

(declare-fun res!554106 () Bool)

(assert (=> b!1243384 (=> (not res!554106) (not e!793954))))

(assert (=> b!1243384 (= res!554106 call!86520)))

(declare-fun b!1243385 () Bool)

(assert (=> b!1243385 (= e!793951 call!86521)))

(assert (= (and d!353828 (not res!554107)) b!1243383))

(assert (= (and b!1243383 c!207130) b!1243379))

(assert (= (and b!1243383 (not c!207130)) b!1243377))

(assert (= (and b!1243379 res!554109) b!1243385))

(assert (= (and b!1243377 c!207129) b!1243380))

(assert (= (and b!1243377 (not c!207129)) b!1243381))

(assert (= (and b!1243380 res!554110) b!1243378))

(assert (= (and b!1243381 (not res!554108)) b!1243384))

(assert (= (and b!1243384 res!554106) b!1243382))

(assert (= (or b!1243378 b!1243382) bm!86514))

(assert (= (or b!1243380 b!1243384) bm!86515))

(assert (= (or b!1243385 bm!86514) bm!86516))

(declare-fun m!1410865 () Bool)

(assert (=> b!1243379 m!1410865))

(declare-fun m!1410867 () Bool)

(assert (=> bm!86515 m!1410867))

(declare-fun m!1410869 () Bool)

(assert (=> bm!86516 m!1410869))

(assert (=> start!110366 d!353828))

(declare-fun b!1243417 () Bool)

(declare-fun e!793961 () Bool)

(declare-fun tp!360760 () Bool)

(declare-fun tp!360763 () Bool)

(assert (=> b!1243417 (= e!793961 (and tp!360760 tp!360763))))

(declare-fun b!1243414 () Bool)

(assert (=> b!1243414 (= e!793961 tp_is_empty!6427)))

(declare-fun b!1243416 () Bool)

(declare-fun tp!360761 () Bool)

(assert (=> b!1243416 (= e!793961 tp!360761)))

(assert (=> b!1243190 (= tp!360726 e!793961)))

(declare-fun b!1243415 () Bool)

(declare-fun tp!360764 () Bool)

(declare-fun tp!360762 () Bool)

(assert (=> b!1243415 (= e!793961 (and tp!360764 tp!360762))))

(assert (= (and b!1243190 ((_ is ElementMatch!3453) (regOne!7418 r!15719))) b!1243414))

(assert (= (and b!1243190 ((_ is Concat!5683) (regOne!7418 r!15719))) b!1243415))

(assert (= (and b!1243190 ((_ is Star!3453) (regOne!7418 r!15719))) b!1243416))

(assert (= (and b!1243190 ((_ is Union!3453) (regOne!7418 r!15719))) b!1243417))

(declare-fun b!1243429 () Bool)

(declare-fun e!793964 () Bool)

(declare-fun tp!360775 () Bool)

(declare-fun tp!360778 () Bool)

(assert (=> b!1243429 (= e!793964 (and tp!360775 tp!360778))))

(declare-fun b!1243426 () Bool)

(assert (=> b!1243426 (= e!793964 tp_is_empty!6427)))

(declare-fun b!1243428 () Bool)

(declare-fun tp!360776 () Bool)

(assert (=> b!1243428 (= e!793964 tp!360776)))

(assert (=> b!1243190 (= tp!360728 e!793964)))

(declare-fun b!1243427 () Bool)

(declare-fun tp!360779 () Bool)

(declare-fun tp!360777 () Bool)

(assert (=> b!1243427 (= e!793964 (and tp!360779 tp!360777))))

(assert (= (and b!1243190 ((_ is ElementMatch!3453) (regTwo!7418 r!15719))) b!1243426))

(assert (= (and b!1243190 ((_ is Concat!5683) (regTwo!7418 r!15719))) b!1243427))

(assert (= (and b!1243190 ((_ is Star!3453) (regTwo!7418 r!15719))) b!1243428))

(assert (= (and b!1243190 ((_ is Union!3453) (regTwo!7418 r!15719))) b!1243429))

(declare-fun b!1243437 () Bool)

(declare-fun e!793966 () Bool)

(declare-fun tp!360785 () Bool)

(declare-fun tp!360788 () Bool)

(assert (=> b!1243437 (= e!793966 (and tp!360785 tp!360788))))

(declare-fun b!1243434 () Bool)

(assert (=> b!1243434 (= e!793966 tp_is_empty!6427)))

(declare-fun b!1243436 () Bool)

(declare-fun tp!360786 () Bool)

(assert (=> b!1243436 (= e!793966 tp!360786)))

(assert (=> b!1243193 (= tp!360729 e!793966)))

(declare-fun b!1243435 () Bool)

(declare-fun tp!360789 () Bool)

(declare-fun tp!360787 () Bool)

(assert (=> b!1243435 (= e!793966 (and tp!360789 tp!360787))))

(assert (= (and b!1243193 ((_ is ElementMatch!3453) (regOne!7419 r!15719))) b!1243434))

(assert (= (and b!1243193 ((_ is Concat!5683) (regOne!7419 r!15719))) b!1243435))

(assert (= (and b!1243193 ((_ is Star!3453) (regOne!7419 r!15719))) b!1243436))

(assert (= (and b!1243193 ((_ is Union!3453) (regOne!7419 r!15719))) b!1243437))

(declare-fun b!1243441 () Bool)

(declare-fun e!793967 () Bool)

(declare-fun tp!360790 () Bool)

(declare-fun tp!360793 () Bool)

(assert (=> b!1243441 (= e!793967 (and tp!360790 tp!360793))))

(declare-fun b!1243438 () Bool)

(assert (=> b!1243438 (= e!793967 tp_is_empty!6427)))

(declare-fun b!1243440 () Bool)

(declare-fun tp!360791 () Bool)

(assert (=> b!1243440 (= e!793967 tp!360791)))

(assert (=> b!1243193 (= tp!360725 e!793967)))

(declare-fun b!1243439 () Bool)

(declare-fun tp!360794 () Bool)

(declare-fun tp!360792 () Bool)

(assert (=> b!1243439 (= e!793967 (and tp!360794 tp!360792))))

(assert (= (and b!1243193 ((_ is ElementMatch!3453) (regTwo!7419 r!15719))) b!1243438))

(assert (= (and b!1243193 ((_ is Concat!5683) (regTwo!7419 r!15719))) b!1243439))

(assert (= (and b!1243193 ((_ is Star!3453) (regTwo!7419 r!15719))) b!1243440))

(assert (= (and b!1243193 ((_ is Union!3453) (regTwo!7419 r!15719))) b!1243441))

(declare-fun b!1243445 () Bool)

(declare-fun e!793968 () Bool)

(declare-fun tp!360795 () Bool)

(declare-fun tp!360798 () Bool)

(assert (=> b!1243445 (= e!793968 (and tp!360795 tp!360798))))

(declare-fun b!1243442 () Bool)

(assert (=> b!1243442 (= e!793968 tp_is_empty!6427)))

(declare-fun b!1243444 () Bool)

(declare-fun tp!360796 () Bool)

(assert (=> b!1243444 (= e!793968 tp!360796)))

(assert (=> b!1243192 (= tp!360727 e!793968)))

(declare-fun b!1243443 () Bool)

(declare-fun tp!360799 () Bool)

(declare-fun tp!360797 () Bool)

(assert (=> b!1243443 (= e!793968 (and tp!360799 tp!360797))))

(assert (= (and b!1243192 ((_ is ElementMatch!3453) (reg!3782 r!15719))) b!1243442))

(assert (= (and b!1243192 ((_ is Concat!5683) (reg!3782 r!15719))) b!1243443))

(assert (= (and b!1243192 ((_ is Star!3453) (reg!3782 r!15719))) b!1243444))

(assert (= (and b!1243192 ((_ is Union!3453) (reg!3782 r!15719))) b!1243445))

(check-sat (not bm!86516) (not b!1243429) (not bm!86496) (not b!1243437) (not bm!86497) (not bm!86493) (not b!1243439) (not bm!86482) (not b!1243428) (not bm!86481) tp_is_empty!6427 (not bm!86495) (not bm!86480) (not bm!86494) (not b!1243416) (not b!1243444) (not b!1243417) (not b!1243379) (not b!1243415) (not bm!86479) (not bm!86515) (not b!1243436) (not b!1243440) (not b!1243435) (not b!1243441) (not bm!86483) (not b!1243427) (not b!1243445) (not b!1243443))
(check-sat)

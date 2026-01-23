; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756768 () Bool)

(assert start!756768)

(declare-fun b!8035412 () Bool)

(declare-fun e!4733326 () Bool)

(declare-fun tp_is_empty!54477 () Bool)

(assert (=> b!8035412 (= e!4733326 tp_is_empty!54477)))

(declare-fun b!8035413 () Bool)

(declare-fun res!3177000 () Bool)

(declare-fun e!4733327 () Bool)

(assert (=> b!8035413 (=> (not res!3177000) (not e!4733327))))

(declare-datatypes ((C!43820 0))(
  ( (C!43821 (val!32686 Int)) )
))
(declare-datatypes ((Regex!21741 0))(
  ( (ElementMatch!21741 (c!1474094 C!43820)) (Concat!30744 (regOne!43994 Regex!21741) (regTwo!43994 Regex!21741)) (EmptyExpr!21741) (Star!21741 (reg!22070 Regex!21741)) (EmptyLang!21741) (Union!21741 (regOne!43995 Regex!21741) (regTwo!43995 Regex!21741)) )
))
(declare-fun r!13107 () Regex!21741)

(get-info :version)

(assert (=> b!8035413 (= res!3177000 (and (not ((_ is EmptyExpr!21741) r!13107)) (not ((_ is EmptyLang!21741) r!13107)) (not ((_ is ElementMatch!21741) r!13107)) (not ((_ is Union!21741) r!13107)) ((_ is Star!21741) r!13107)))))

(declare-fun b!8035414 () Bool)

(declare-fun RegexPrimitiveSize!157 (Regex!21741) Int)

(assert (=> b!8035414 (= e!4733327 (>= (RegexPrimitiveSize!157 (reg!22070 r!13107)) (RegexPrimitiveSize!157 r!13107)))))

(declare-fun b!8035415 () Bool)

(declare-fun tp!2405892 () Bool)

(declare-fun tp!2405889 () Bool)

(assert (=> b!8035415 (= e!4733326 (and tp!2405892 tp!2405889))))

(declare-fun b!8035416 () Bool)

(declare-fun tp!2405893 () Bool)

(declare-fun tp!2405891 () Bool)

(assert (=> b!8035416 (= e!4733326 (and tp!2405893 tp!2405891))))

(declare-fun b!8035417 () Bool)

(declare-fun tp!2405890 () Bool)

(assert (=> b!8035417 (= e!4733326 tp!2405890)))

(declare-fun res!3177001 () Bool)

(assert (=> start!756768 (=> (not res!3177001) (not e!4733327))))

(declare-fun validRegex!12037 (Regex!21741) Bool)

(assert (=> start!756768 (= res!3177001 (validRegex!12037 r!13107))))

(assert (=> start!756768 e!4733327))

(assert (=> start!756768 e!4733326))

(assert (= (and start!756768 res!3177001) b!8035413))

(assert (= (and b!8035413 res!3177000) b!8035414))

(assert (= (and start!756768 ((_ is ElementMatch!21741) r!13107)) b!8035412))

(assert (= (and start!756768 ((_ is Concat!30744) r!13107)) b!8035416))

(assert (= (and start!756768 ((_ is Star!21741) r!13107)) b!8035417))

(assert (= (and start!756768 ((_ is Union!21741) r!13107)) b!8035415))

(declare-fun m!8393192 () Bool)

(assert (=> b!8035414 m!8393192))

(declare-fun m!8393194 () Bool)

(assert (=> b!8035414 m!8393194))

(declare-fun m!8393196 () Bool)

(assert (=> start!756768 m!8393196))

(check-sat (not b!8035415) (not b!8035417) (not start!756768) (not b!8035414) tp_is_empty!54477 (not b!8035416))
(check-sat)
(get-model)

(declare-fun b!8035456 () Bool)

(declare-fun e!4733352 () Bool)

(declare-fun e!4733356 () Bool)

(assert (=> b!8035456 (= e!4733352 e!4733356)))

(declare-fun c!1474110 () Bool)

(assert (=> b!8035456 (= c!1474110 ((_ is Star!21741) r!13107))))

(declare-fun b!8035457 () Bool)

(declare-fun res!3177015 () Bool)

(declare-fun e!4733357 () Bool)

(assert (=> b!8035457 (=> res!3177015 e!4733357)))

(assert (=> b!8035457 (= res!3177015 (not ((_ is Concat!30744) r!13107)))))

(declare-fun e!4733353 () Bool)

(assert (=> b!8035457 (= e!4733353 e!4733357)))

(declare-fun b!8035458 () Bool)

(declare-fun res!3177016 () Bool)

(declare-fun e!4733355 () Bool)

(assert (=> b!8035458 (=> (not res!3177016) (not e!4733355))))

(declare-fun call!745636 () Bool)

(assert (=> b!8035458 (= res!3177016 call!745636)))

(assert (=> b!8035458 (= e!4733353 e!4733355)))

(declare-fun bm!745630 () Bool)

(declare-fun call!745635 () Bool)

(assert (=> bm!745630 (= call!745636 call!745635)))

(declare-fun b!8035459 () Bool)

(declare-fun e!4733354 () Bool)

(assert (=> b!8035459 (= e!4733357 e!4733354)))

(declare-fun res!3177013 () Bool)

(assert (=> b!8035459 (=> (not res!3177013) (not e!4733354))))

(assert (=> b!8035459 (= res!3177013 call!745636)))

(declare-fun c!1474109 () Bool)

(declare-fun bm!745631 () Bool)

(assert (=> bm!745631 (= call!745635 (validRegex!12037 (ite c!1474110 (reg!22070 r!13107) (ite c!1474109 (regOne!43995 r!13107) (regOne!43994 r!13107)))))))

(declare-fun bm!745632 () Bool)

(declare-fun call!745637 () Bool)

(assert (=> bm!745632 (= call!745637 (validRegex!12037 (ite c!1474109 (regTwo!43995 r!13107) (regTwo!43994 r!13107))))))

(declare-fun b!8035460 () Bool)

(declare-fun e!4733358 () Bool)

(assert (=> b!8035460 (= e!4733358 call!745635)))

(declare-fun b!8035461 () Bool)

(assert (=> b!8035461 (= e!4733354 call!745637)))

(declare-fun d!2394975 () Bool)

(declare-fun res!3177012 () Bool)

(assert (=> d!2394975 (=> res!3177012 e!4733352)))

(assert (=> d!2394975 (= res!3177012 ((_ is ElementMatch!21741) r!13107))))

(assert (=> d!2394975 (= (validRegex!12037 r!13107) e!4733352)))

(declare-fun b!8035462 () Bool)

(assert (=> b!8035462 (= e!4733356 e!4733353)))

(assert (=> b!8035462 (= c!1474109 ((_ is Union!21741) r!13107))))

(declare-fun b!8035463 () Bool)

(assert (=> b!8035463 (= e!4733356 e!4733358)))

(declare-fun res!3177014 () Bool)

(declare-fun nullable!9765 (Regex!21741) Bool)

(assert (=> b!8035463 (= res!3177014 (not (nullable!9765 (reg!22070 r!13107))))))

(assert (=> b!8035463 (=> (not res!3177014) (not e!4733358))))

(declare-fun b!8035464 () Bool)

(assert (=> b!8035464 (= e!4733355 call!745637)))

(assert (= (and d!2394975 (not res!3177012)) b!8035456))

(assert (= (and b!8035456 c!1474110) b!8035463))

(assert (= (and b!8035456 (not c!1474110)) b!8035462))

(assert (= (and b!8035463 res!3177014) b!8035460))

(assert (= (and b!8035462 c!1474109) b!8035458))

(assert (= (and b!8035462 (not c!1474109)) b!8035457))

(assert (= (and b!8035458 res!3177016) b!8035464))

(assert (= (and b!8035457 (not res!3177015)) b!8035459))

(assert (= (and b!8035459 res!3177013) b!8035461))

(assert (= (or b!8035464 b!8035461) bm!745632))

(assert (= (or b!8035458 b!8035459) bm!745630))

(assert (= (or b!8035460 bm!745630) bm!745631))

(declare-fun m!8393198 () Bool)

(assert (=> bm!745631 m!8393198))

(declare-fun m!8393200 () Bool)

(assert (=> bm!745632 m!8393200))

(declare-fun m!8393202 () Bool)

(assert (=> b!8035463 m!8393202))

(assert (=> start!756768 d!2394975))

(declare-fun call!745657 () Int)

(declare-fun c!1474139 () Bool)

(declare-fun c!1474135 () Bool)

(declare-fun bm!745651 () Bool)

(assert (=> bm!745651 (= call!745657 (RegexPrimitiveSize!157 (ite c!1474135 (regOne!43994 (reg!22070 r!13107)) (ite c!1474139 (reg!22070 (reg!22070 r!13107)) (regOne!43995 (reg!22070 r!13107))))))))

(declare-fun b!8035523 () Bool)

(declare-fun e!4733394 () Int)

(assert (=> b!8035523 (= e!4733394 0)))

(declare-fun b!8035524 () Bool)

(declare-fun e!4733393 () Int)

(declare-fun e!4733397 () Int)

(assert (=> b!8035524 (= e!4733393 e!4733397)))

(assert (=> b!8035524 (= c!1474135 ((_ is Concat!30744) (reg!22070 r!13107)))))

(declare-fun b!8035525 () Bool)

(declare-fun e!4733396 () Int)

(declare-fun call!745656 () Int)

(declare-fun call!745658 () Int)

(assert (=> b!8035525 (= e!4733396 (+ 1 call!745656 call!745658))))

(declare-fun d!2394979 () Bool)

(declare-fun lt!2722073 () Int)

(assert (=> d!2394979 (>= lt!2722073 0)))

(assert (=> d!2394979 (= lt!2722073 e!4733393)))

(declare-fun c!1474136 () Bool)

(assert (=> d!2394979 (= c!1474136 ((_ is ElementMatch!21741) (reg!22070 r!13107)))))

(assert (=> d!2394979 (= (RegexPrimitiveSize!157 (reg!22070 r!13107)) lt!2722073)))

(declare-fun bm!745652 () Bool)

(assert (=> bm!745652 (= call!745656 call!745657)))

(declare-fun b!8035526 () Bool)

(assert (=> b!8035526 (= e!4733397 (+ 1 call!745657 call!745658))))

(declare-fun b!8035527 () Bool)

(assert (=> b!8035527 (= e!4733393 1)))

(declare-fun b!8035528 () Bool)

(declare-fun e!4733395 () Int)

(assert (=> b!8035528 (= e!4733395 (+ 1 call!745656))))

(declare-fun bm!745653 () Bool)

(assert (=> bm!745653 (= call!745658 (RegexPrimitiveSize!157 (ite c!1474135 (regTwo!43994 (reg!22070 r!13107)) (regTwo!43995 (reg!22070 r!13107)))))))

(declare-fun b!8035529 () Bool)

(declare-fun c!1474137 () Bool)

(assert (=> b!8035529 (= c!1474137 ((_ is EmptyLang!21741) (reg!22070 r!13107)))))

(assert (=> b!8035529 (= e!4733395 e!4733396)))

(declare-fun b!8035530 () Bool)

(assert (=> b!8035530 (= e!4733394 e!4733395)))

(assert (=> b!8035530 (= c!1474139 ((_ is Star!21741) (reg!22070 r!13107)))))

(declare-fun b!8035531 () Bool)

(assert (=> b!8035531 (= e!4733396 0)))

(declare-fun b!8035532 () Bool)

(declare-fun c!1474138 () Bool)

(assert (=> b!8035532 (= c!1474138 ((_ is EmptyExpr!21741) (reg!22070 r!13107)))))

(assert (=> b!8035532 (= e!4733397 e!4733394)))

(assert (= (and d!2394979 c!1474136) b!8035527))

(assert (= (and d!2394979 (not c!1474136)) b!8035524))

(assert (= (and b!8035524 c!1474135) b!8035526))

(assert (= (and b!8035524 (not c!1474135)) b!8035532))

(assert (= (and b!8035532 c!1474138) b!8035523))

(assert (= (and b!8035532 (not c!1474138)) b!8035530))

(assert (= (and b!8035530 c!1474139) b!8035528))

(assert (= (and b!8035530 (not c!1474139)) b!8035529))

(assert (= (and b!8035529 c!1474137) b!8035531))

(assert (= (and b!8035529 (not c!1474137)) b!8035525))

(assert (= (or b!8035528 b!8035525) bm!745652))

(assert (= (or b!8035526 b!8035525) bm!745653))

(assert (= (or b!8035526 bm!745652) bm!745651))

(declare-fun m!8393212 () Bool)

(assert (=> bm!745651 m!8393212))

(declare-fun m!8393214 () Bool)

(assert (=> bm!745653 m!8393214))

(assert (=> b!8035414 d!2394979))

(declare-fun c!1474142 () Bool)

(declare-fun call!745663 () Int)

(declare-fun bm!745657 () Bool)

(declare-fun c!1474146 () Bool)

(assert (=> bm!745657 (= call!745663 (RegexPrimitiveSize!157 (ite c!1474142 (regOne!43994 r!13107) (ite c!1474146 (reg!22070 r!13107) (regOne!43995 r!13107)))))))

(declare-fun b!8035542 () Bool)

(declare-fun e!4733406 () Int)

(assert (=> b!8035542 (= e!4733406 0)))

(declare-fun b!8035543 () Bool)

(declare-fun e!4733405 () Int)

(declare-fun e!4733409 () Int)

(assert (=> b!8035543 (= e!4733405 e!4733409)))

(assert (=> b!8035543 (= c!1474142 ((_ is Concat!30744) r!13107))))

(declare-fun b!8035544 () Bool)

(declare-fun e!4733408 () Int)

(declare-fun call!745662 () Int)

(declare-fun call!745664 () Int)

(assert (=> b!8035544 (= e!4733408 (+ 1 call!745662 call!745664))))

(declare-fun d!2394985 () Bool)

(declare-fun lt!2722074 () Int)

(assert (=> d!2394985 (>= lt!2722074 0)))

(assert (=> d!2394985 (= lt!2722074 e!4733405)))

(declare-fun c!1474143 () Bool)

(assert (=> d!2394985 (= c!1474143 ((_ is ElementMatch!21741) r!13107))))

(assert (=> d!2394985 (= (RegexPrimitiveSize!157 r!13107) lt!2722074)))

(declare-fun bm!745658 () Bool)

(assert (=> bm!745658 (= call!745662 call!745663)))

(declare-fun b!8035545 () Bool)

(assert (=> b!8035545 (= e!4733409 (+ 1 call!745663 call!745664))))

(declare-fun b!8035546 () Bool)

(assert (=> b!8035546 (= e!4733405 1)))

(declare-fun b!8035547 () Bool)

(declare-fun e!4733407 () Int)

(assert (=> b!8035547 (= e!4733407 (+ 1 call!745662))))

(declare-fun bm!745659 () Bool)

(assert (=> bm!745659 (= call!745664 (RegexPrimitiveSize!157 (ite c!1474142 (regTwo!43994 r!13107) (regTwo!43995 r!13107))))))

(declare-fun b!8035548 () Bool)

(declare-fun c!1474144 () Bool)

(assert (=> b!8035548 (= c!1474144 ((_ is EmptyLang!21741) r!13107))))

(assert (=> b!8035548 (= e!4733407 e!4733408)))

(declare-fun b!8035549 () Bool)

(assert (=> b!8035549 (= e!4733406 e!4733407)))

(assert (=> b!8035549 (= c!1474146 ((_ is Star!21741) r!13107))))

(declare-fun b!8035550 () Bool)

(assert (=> b!8035550 (= e!4733408 0)))

(declare-fun b!8035551 () Bool)

(declare-fun c!1474145 () Bool)

(assert (=> b!8035551 (= c!1474145 ((_ is EmptyExpr!21741) r!13107))))

(assert (=> b!8035551 (= e!4733409 e!4733406)))

(assert (= (and d!2394985 c!1474143) b!8035546))

(assert (= (and d!2394985 (not c!1474143)) b!8035543))

(assert (= (and b!8035543 c!1474142) b!8035545))

(assert (= (and b!8035543 (not c!1474142)) b!8035551))

(assert (= (and b!8035551 c!1474145) b!8035542))

(assert (= (and b!8035551 (not c!1474145)) b!8035549))

(assert (= (and b!8035549 c!1474146) b!8035547))

(assert (= (and b!8035549 (not c!1474146)) b!8035548))

(assert (= (and b!8035548 c!1474144) b!8035550))

(assert (= (and b!8035548 (not c!1474144)) b!8035544))

(assert (= (or b!8035547 b!8035544) bm!745658))

(assert (= (or b!8035545 b!8035544) bm!745659))

(assert (= (or b!8035545 bm!745658) bm!745657))

(declare-fun m!8393222 () Bool)

(assert (=> bm!745657 m!8393222))

(declare-fun m!8393224 () Bool)

(assert (=> bm!745659 m!8393224))

(assert (=> b!8035414 d!2394985))

(declare-fun b!8035576 () Bool)

(declare-fun e!4733415 () Bool)

(assert (=> b!8035576 (= e!4733415 tp_is_empty!54477)))

(assert (=> b!8035416 (= tp!2405893 e!4733415)))

(declare-fun b!8035579 () Bool)

(declare-fun tp!2405919 () Bool)

(declare-fun tp!2405921 () Bool)

(assert (=> b!8035579 (= e!4733415 (and tp!2405919 tp!2405921))))

(declare-fun b!8035578 () Bool)

(declare-fun tp!2405922 () Bool)

(assert (=> b!8035578 (= e!4733415 tp!2405922)))

(declare-fun b!8035577 () Bool)

(declare-fun tp!2405923 () Bool)

(declare-fun tp!2405920 () Bool)

(assert (=> b!8035577 (= e!4733415 (and tp!2405923 tp!2405920))))

(assert (= (and b!8035416 ((_ is ElementMatch!21741) (regOne!43994 r!13107))) b!8035576))

(assert (= (and b!8035416 ((_ is Concat!30744) (regOne!43994 r!13107))) b!8035577))

(assert (= (and b!8035416 ((_ is Star!21741) (regOne!43994 r!13107))) b!8035578))

(assert (= (and b!8035416 ((_ is Union!21741) (regOne!43994 r!13107))) b!8035579))

(declare-fun b!8035584 () Bool)

(declare-fun e!4733417 () Bool)

(assert (=> b!8035584 (= e!4733417 tp_is_empty!54477)))

(assert (=> b!8035416 (= tp!2405891 e!4733417)))

(declare-fun b!8035587 () Bool)

(declare-fun tp!2405929 () Bool)

(declare-fun tp!2405931 () Bool)

(assert (=> b!8035587 (= e!4733417 (and tp!2405929 tp!2405931))))

(declare-fun b!8035586 () Bool)

(declare-fun tp!2405932 () Bool)

(assert (=> b!8035586 (= e!4733417 tp!2405932)))

(declare-fun b!8035585 () Bool)

(declare-fun tp!2405933 () Bool)

(declare-fun tp!2405930 () Bool)

(assert (=> b!8035585 (= e!4733417 (and tp!2405933 tp!2405930))))

(assert (= (and b!8035416 ((_ is ElementMatch!21741) (regTwo!43994 r!13107))) b!8035584))

(assert (= (and b!8035416 ((_ is Concat!30744) (regTwo!43994 r!13107))) b!8035585))

(assert (= (and b!8035416 ((_ is Star!21741) (regTwo!43994 r!13107))) b!8035586))

(assert (= (and b!8035416 ((_ is Union!21741) (regTwo!43994 r!13107))) b!8035587))

(declare-fun b!8035592 () Bool)

(declare-fun e!4733419 () Bool)

(assert (=> b!8035592 (= e!4733419 tp_is_empty!54477)))

(assert (=> b!8035417 (= tp!2405890 e!4733419)))

(declare-fun b!8035595 () Bool)

(declare-fun tp!2405939 () Bool)

(declare-fun tp!2405941 () Bool)

(assert (=> b!8035595 (= e!4733419 (and tp!2405939 tp!2405941))))

(declare-fun b!8035594 () Bool)

(declare-fun tp!2405942 () Bool)

(assert (=> b!8035594 (= e!4733419 tp!2405942)))

(declare-fun b!8035593 () Bool)

(declare-fun tp!2405943 () Bool)

(declare-fun tp!2405940 () Bool)

(assert (=> b!8035593 (= e!4733419 (and tp!2405943 tp!2405940))))

(assert (= (and b!8035417 ((_ is ElementMatch!21741) (reg!22070 r!13107))) b!8035592))

(assert (= (and b!8035417 ((_ is Concat!30744) (reg!22070 r!13107))) b!8035593))

(assert (= (and b!8035417 ((_ is Star!21741) (reg!22070 r!13107))) b!8035594))

(assert (= (and b!8035417 ((_ is Union!21741) (reg!22070 r!13107))) b!8035595))

(declare-fun b!8035600 () Bool)

(declare-fun e!4733421 () Bool)

(assert (=> b!8035600 (= e!4733421 tp_is_empty!54477)))

(assert (=> b!8035415 (= tp!2405892 e!4733421)))

(declare-fun b!8035603 () Bool)

(declare-fun tp!2405949 () Bool)

(declare-fun tp!2405951 () Bool)

(assert (=> b!8035603 (= e!4733421 (and tp!2405949 tp!2405951))))

(declare-fun b!8035602 () Bool)

(declare-fun tp!2405952 () Bool)

(assert (=> b!8035602 (= e!4733421 tp!2405952)))

(declare-fun b!8035601 () Bool)

(declare-fun tp!2405953 () Bool)

(declare-fun tp!2405950 () Bool)

(assert (=> b!8035601 (= e!4733421 (and tp!2405953 tp!2405950))))

(assert (= (and b!8035415 ((_ is ElementMatch!21741) (regOne!43995 r!13107))) b!8035600))

(assert (= (and b!8035415 ((_ is Concat!30744) (regOne!43995 r!13107))) b!8035601))

(assert (= (and b!8035415 ((_ is Star!21741) (regOne!43995 r!13107))) b!8035602))

(assert (= (and b!8035415 ((_ is Union!21741) (regOne!43995 r!13107))) b!8035603))

(declare-fun b!8035608 () Bool)

(declare-fun e!4733423 () Bool)

(assert (=> b!8035608 (= e!4733423 tp_is_empty!54477)))

(assert (=> b!8035415 (= tp!2405889 e!4733423)))

(declare-fun b!8035611 () Bool)

(declare-fun tp!2405959 () Bool)

(declare-fun tp!2405961 () Bool)

(assert (=> b!8035611 (= e!4733423 (and tp!2405959 tp!2405961))))

(declare-fun b!8035610 () Bool)

(declare-fun tp!2405962 () Bool)

(assert (=> b!8035610 (= e!4733423 tp!2405962)))

(declare-fun b!8035609 () Bool)

(declare-fun tp!2405963 () Bool)

(declare-fun tp!2405960 () Bool)

(assert (=> b!8035609 (= e!4733423 (and tp!2405963 tp!2405960))))

(assert (= (and b!8035415 ((_ is ElementMatch!21741) (regTwo!43995 r!13107))) b!8035608))

(assert (= (and b!8035415 ((_ is Concat!30744) (regTwo!43995 r!13107))) b!8035609))

(assert (= (and b!8035415 ((_ is Star!21741) (regTwo!43995 r!13107))) b!8035610))

(assert (= (and b!8035415 ((_ is Union!21741) (regTwo!43995 r!13107))) b!8035611))

(check-sat (not b!8035594) (not b!8035611) (not b!8035577) (not b!8035603) (not b!8035587) (not b!8035586) (not b!8035593) (not b!8035602) (not b!8035601) (not b!8035578) (not bm!745632) (not b!8035595) (not bm!745651) (not b!8035463) (not bm!745657) (not b!8035609) (not b!8035610) (not bm!745653) (not b!8035585) (not bm!745659) tp_is_empty!54477 (not b!8035579) (not bm!745631))
(check-sat)

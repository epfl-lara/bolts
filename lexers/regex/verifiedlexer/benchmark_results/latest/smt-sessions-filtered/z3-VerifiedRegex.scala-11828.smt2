; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665386 () Bool)

(assert start!665386)

(declare-fun b!6915470 () Bool)

(declare-fun e!4162898 () Bool)

(declare-fun tp!1905397 () Bool)

(assert (=> b!6915470 (= e!4162898 tp!1905397)))

(declare-fun b!6915472 () Bool)

(declare-fun e!4162897 () Bool)

(declare-fun tp_is_empty!43031 () Bool)

(assert (=> b!6915472 (= e!4162897 tp_is_empty!43031)))

(declare-fun b!6915473 () Bool)

(declare-fun e!4162896 () Bool)

(declare-fun tp!1905399 () Bool)

(assert (=> b!6915473 (= e!4162896 (and tp_is_empty!43031 tp!1905399))))

(declare-fun b!6915474 () Bool)

(declare-fun e!4162894 () Bool)

(declare-fun tp!1905409 () Bool)

(assert (=> b!6915474 (= e!4162894 tp!1905409)))

(declare-fun b!6915475 () Bool)

(declare-fun res!2819958 () Bool)

(declare-fun e!4162895 () Bool)

(assert (=> b!6915475 (=> (not res!2819958) (not e!4162895))))

(declare-datatypes ((C!34076 0))(
  ( (C!34077 (val!26740 Int)) )
))
(declare-datatypes ((Regex!16903 0))(
  ( (ElementMatch!16903 (c!1284217 C!34076)) (Concat!25748 (regOne!34318 Regex!16903) (regTwo!34318 Regex!16903)) (EmptyExpr!16903) (Star!16903 (reg!17232 Regex!16903)) (EmptyLang!16903) (Union!16903 (regOne!34319 Regex!16903) (regTwo!34319 Regex!16903)) )
))
(declare-fun r2!6280 () Regex!16903)

(declare-fun validRegex!8609 (Regex!16903) Bool)

(assert (=> b!6915475 (= res!2819958 (validRegex!8609 r2!6280))))

(declare-fun b!6915476 () Bool)

(declare-fun tp!1905404 () Bool)

(declare-fun tp!1905402 () Bool)

(assert (=> b!6915476 (= e!4162898 (and tp!1905404 tp!1905402))))

(declare-fun b!6915471 () Bool)

(assert (=> b!6915471 (= e!4162898 tp_is_empty!43031)))

(declare-fun res!2819959 () Bool)

(assert (=> start!665386 (=> (not res!2819959) (not e!4162895))))

(declare-fun r1!6342 () Regex!16903)

(assert (=> start!665386 (= res!2819959 (validRegex!8609 r1!6342))))

(assert (=> start!665386 e!4162895))

(assert (=> start!665386 e!4162898))

(assert (=> start!665386 e!4162897))

(assert (=> start!665386 e!4162894))

(assert (=> start!665386 e!4162896))

(declare-fun b!6915477 () Bool)

(declare-fun tp!1905406 () Bool)

(declare-fun tp!1905405 () Bool)

(assert (=> b!6915477 (= e!4162897 (and tp!1905406 tp!1905405))))

(declare-fun b!6915478 () Bool)

(declare-fun tp!1905411 () Bool)

(declare-fun tp!1905410 () Bool)

(assert (=> b!6915478 (= e!4162897 (and tp!1905411 tp!1905410))))

(declare-fun b!6915479 () Bool)

(assert (=> b!6915479 (= e!4162894 tp_is_empty!43031)))

(declare-fun r3!135 () Regex!16903)

(declare-fun b!6915480 () Bool)

(assert (=> b!6915480 (= e!4162895 (not (validRegex!8609 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))

(declare-fun lt!2469311 () Regex!16903)

(declare-datatypes ((List!66656 0))(
  ( (Nil!66532) (Cons!66532 (h!72980 C!34076) (t!380399 List!66656)) )
))
(declare-fun s!14361 () List!66656)

(declare-fun matchR!9042 (Regex!16903 List!66656) Bool)

(declare-fun matchRSpec!3960 (Regex!16903 List!66656) Bool)

(assert (=> b!6915480 (= (matchR!9042 lt!2469311 s!14361) (matchRSpec!3960 lt!2469311 s!14361))))

(declare-datatypes ((Unit!160530 0))(
  ( (Unit!160531) )
))
(declare-fun lt!2469310 () Unit!160530)

(declare-fun mainMatchTheorem!3960 (Regex!16903 List!66656) Unit!160530)

(assert (=> b!6915480 (= lt!2469310 (mainMatchTheorem!3960 lt!2469311 s!14361))))

(assert (=> b!6915480 (= lt!2469311 (Concat!25748 (Concat!25748 r1!6342 r2!6280) r3!135))))

(declare-fun b!6915481 () Bool)

(declare-fun tp!1905400 () Bool)

(declare-fun tp!1905398 () Bool)

(assert (=> b!6915481 (= e!4162894 (and tp!1905400 tp!1905398))))

(declare-fun b!6915482 () Bool)

(declare-fun tp!1905401 () Bool)

(assert (=> b!6915482 (= e!4162897 tp!1905401)))

(declare-fun b!6915483 () Bool)

(declare-fun res!2819960 () Bool)

(assert (=> b!6915483 (=> (not res!2819960) (not e!4162895))))

(assert (=> b!6915483 (= res!2819960 (validRegex!8609 r3!135))))

(declare-fun b!6915484 () Bool)

(declare-fun tp!1905408 () Bool)

(declare-fun tp!1905396 () Bool)

(assert (=> b!6915484 (= e!4162894 (and tp!1905408 tp!1905396))))

(declare-fun b!6915485 () Bool)

(declare-fun tp!1905403 () Bool)

(declare-fun tp!1905407 () Bool)

(assert (=> b!6915485 (= e!4162898 (and tp!1905403 tp!1905407))))

(assert (= (and start!665386 res!2819959) b!6915475))

(assert (= (and b!6915475 res!2819958) b!6915483))

(assert (= (and b!6915483 res!2819960) b!6915480))

(get-info :version)

(assert (= (and start!665386 ((_ is ElementMatch!16903) r1!6342)) b!6915471))

(assert (= (and start!665386 ((_ is Concat!25748) r1!6342)) b!6915485))

(assert (= (and start!665386 ((_ is Star!16903) r1!6342)) b!6915470))

(assert (= (and start!665386 ((_ is Union!16903) r1!6342)) b!6915476))

(assert (= (and start!665386 ((_ is ElementMatch!16903) r2!6280)) b!6915472))

(assert (= (and start!665386 ((_ is Concat!25748) r2!6280)) b!6915477))

(assert (= (and start!665386 ((_ is Star!16903) r2!6280)) b!6915482))

(assert (= (and start!665386 ((_ is Union!16903) r2!6280)) b!6915478))

(assert (= (and start!665386 ((_ is ElementMatch!16903) r3!135)) b!6915479))

(assert (= (and start!665386 ((_ is Concat!25748) r3!135)) b!6915484))

(assert (= (and start!665386 ((_ is Star!16903) r3!135)) b!6915474))

(assert (= (and start!665386 ((_ is Union!16903) r3!135)) b!6915481))

(assert (= (and start!665386 ((_ is Cons!66532) s!14361)) b!6915473))

(declare-fun m!7627894 () Bool)

(assert (=> b!6915475 m!7627894))

(declare-fun m!7627896 () Bool)

(assert (=> start!665386 m!7627896))

(declare-fun m!7627898 () Bool)

(assert (=> b!6915480 m!7627898))

(declare-fun m!7627900 () Bool)

(assert (=> b!6915480 m!7627900))

(declare-fun m!7627902 () Bool)

(assert (=> b!6915480 m!7627902))

(declare-fun m!7627904 () Bool)

(assert (=> b!6915480 m!7627904))

(declare-fun m!7627906 () Bool)

(assert (=> b!6915483 m!7627906))

(check-sat (not b!6915480) (not b!6915478) (not b!6915475) (not b!6915474) tp_is_empty!43031 (not b!6915476) (not b!6915484) (not b!6915485) (not b!6915482) (not b!6915481) (not b!6915483) (not b!6915473) (not b!6915470) (not start!665386) (not b!6915477))
(check-sat)
(get-model)

(declare-fun b!6915531 () Bool)

(declare-fun e!4162936 () Bool)

(declare-fun call!628679 () Bool)

(assert (=> b!6915531 (= e!4162936 call!628679)))

(declare-fun bm!628674 () Bool)

(declare-fun c!1284229 () Bool)

(assert (=> bm!628674 (= call!628679 (validRegex!8609 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))))))

(declare-fun b!6915532 () Bool)

(declare-fun e!4162934 () Bool)

(declare-fun call!628681 () Bool)

(assert (=> b!6915532 (= e!4162934 call!628681)))

(declare-fun b!6915533 () Bool)

(declare-fun e!4162938 () Bool)

(declare-fun call!628680 () Bool)

(assert (=> b!6915533 (= e!4162938 call!628680)))

(declare-fun bm!628675 () Bool)

(declare-fun c!1284228 () Bool)

(assert (=> bm!628675 (= call!628681 (validRegex!8609 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))))))

(declare-fun b!6915534 () Bool)

(declare-fun e!4162937 () Bool)

(declare-fun e!4162939 () Bool)

(assert (=> b!6915534 (= e!4162937 e!4162939)))

(assert (=> b!6915534 (= c!1284228 ((_ is Star!16903) r2!6280))))

(declare-fun b!6915535 () Bool)

(declare-fun res!2819986 () Bool)

(declare-fun e!4162935 () Bool)

(assert (=> b!6915535 (=> res!2819986 e!4162935)))

(assert (=> b!6915535 (= res!2819986 (not ((_ is Concat!25748) r2!6280)))))

(declare-fun e!4162940 () Bool)

(assert (=> b!6915535 (= e!4162940 e!4162935)))

(declare-fun d!2163897 () Bool)

(declare-fun res!2819988 () Bool)

(assert (=> d!2163897 (=> res!2819988 e!4162937)))

(assert (=> d!2163897 (= res!2819988 ((_ is ElementMatch!16903) r2!6280))))

(assert (=> d!2163897 (= (validRegex!8609 r2!6280) e!4162937)))

(declare-fun b!6915536 () Bool)

(assert (=> b!6915536 (= e!4162939 e!4162934)))

(declare-fun res!2819987 () Bool)

(declare-fun nullable!6738 (Regex!16903) Bool)

(assert (=> b!6915536 (= res!2819987 (not (nullable!6738 (reg!17232 r2!6280))))))

(assert (=> b!6915536 (=> (not res!2819987) (not e!4162934))))

(declare-fun b!6915537 () Bool)

(assert (=> b!6915537 (= e!4162939 e!4162940)))

(assert (=> b!6915537 (= c!1284229 ((_ is Union!16903) r2!6280))))

(declare-fun bm!628676 () Bool)

(assert (=> bm!628676 (= call!628680 call!628681)))

(declare-fun b!6915538 () Bool)

(assert (=> b!6915538 (= e!4162935 e!4162936)))

(declare-fun res!2819989 () Bool)

(assert (=> b!6915538 (=> (not res!2819989) (not e!4162936))))

(assert (=> b!6915538 (= res!2819989 call!628680)))

(declare-fun b!6915539 () Bool)

(declare-fun res!2819990 () Bool)

(assert (=> b!6915539 (=> (not res!2819990) (not e!4162938))))

(assert (=> b!6915539 (= res!2819990 call!628679)))

(assert (=> b!6915539 (= e!4162940 e!4162938)))

(assert (= (and d!2163897 (not res!2819988)) b!6915534))

(assert (= (and b!6915534 c!1284228) b!6915536))

(assert (= (and b!6915534 (not c!1284228)) b!6915537))

(assert (= (and b!6915536 res!2819987) b!6915532))

(assert (= (and b!6915537 c!1284229) b!6915539))

(assert (= (and b!6915537 (not c!1284229)) b!6915535))

(assert (= (and b!6915539 res!2819990) b!6915533))

(assert (= (and b!6915535 (not res!2819986)) b!6915538))

(assert (= (and b!6915538 res!2819989) b!6915531))

(assert (= (or b!6915539 b!6915531) bm!628674))

(assert (= (or b!6915533 b!6915538) bm!628676))

(assert (= (or b!6915532 bm!628676) bm!628675))

(declare-fun m!7627916 () Bool)

(assert (=> bm!628674 m!7627916))

(declare-fun m!7627922 () Bool)

(assert (=> bm!628675 m!7627922))

(declare-fun m!7627924 () Bool)

(assert (=> b!6915536 m!7627924))

(assert (=> b!6915475 d!2163897))

(declare-fun b!6915558 () Bool)

(declare-fun e!4162957 () Bool)

(declare-fun call!628688 () Bool)

(assert (=> b!6915558 (= e!4162957 call!628688)))

(declare-fun c!1284235 () Bool)

(declare-fun bm!628683 () Bool)

(assert (=> bm!628683 (= call!628688 (validRegex!8609 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))

(declare-fun b!6915559 () Bool)

(declare-fun e!4162955 () Bool)

(declare-fun call!628690 () Bool)

(assert (=> b!6915559 (= e!4162955 call!628690)))

(declare-fun b!6915560 () Bool)

(declare-fun e!4162959 () Bool)

(declare-fun call!628689 () Bool)

(assert (=> b!6915560 (= e!4162959 call!628689)))

(declare-fun bm!628684 () Bool)

(declare-fun c!1284234 () Bool)

(assert (=> bm!628684 (= call!628690 (validRegex!8609 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))

(declare-fun b!6915561 () Bool)

(declare-fun e!4162958 () Bool)

(declare-fun e!4162960 () Bool)

(assert (=> b!6915561 (= e!4162958 e!4162960)))

(assert (=> b!6915561 (= c!1284234 ((_ is Star!16903) (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))

(declare-fun b!6915562 () Bool)

(declare-fun res!2820001 () Bool)

(declare-fun e!4162956 () Bool)

(assert (=> b!6915562 (=> res!2820001 e!4162956)))

(assert (=> b!6915562 (= res!2820001 (not ((_ is Concat!25748) (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))

(declare-fun e!4162961 () Bool)

(assert (=> b!6915562 (= e!4162961 e!4162956)))

(declare-fun d!2163903 () Bool)

(declare-fun res!2820003 () Bool)

(assert (=> d!2163903 (=> res!2820003 e!4162958)))

(assert (=> d!2163903 (= res!2820003 ((_ is ElementMatch!16903) (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))

(assert (=> d!2163903 (= (validRegex!8609 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) e!4162958)))

(declare-fun b!6915563 () Bool)

(assert (=> b!6915563 (= e!4162960 e!4162955)))

(declare-fun res!2820002 () Bool)

(assert (=> b!6915563 (= res!2820002 (not (nullable!6738 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))

(assert (=> b!6915563 (=> (not res!2820002) (not e!4162955))))

(declare-fun b!6915564 () Bool)

(assert (=> b!6915564 (= e!4162960 e!4162961)))

(assert (=> b!6915564 (= c!1284235 ((_ is Union!16903) (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))

(declare-fun bm!628685 () Bool)

(assert (=> bm!628685 (= call!628689 call!628690)))

(declare-fun b!6915565 () Bool)

(assert (=> b!6915565 (= e!4162956 e!4162957)))

(declare-fun res!2820004 () Bool)

(assert (=> b!6915565 (=> (not res!2820004) (not e!4162957))))

(assert (=> b!6915565 (= res!2820004 call!628689)))

(declare-fun b!6915566 () Bool)

(declare-fun res!2820005 () Bool)

(assert (=> b!6915566 (=> (not res!2820005) (not e!4162959))))

(assert (=> b!6915566 (= res!2820005 call!628688)))

(assert (=> b!6915566 (= e!4162961 e!4162959)))

(assert (= (and d!2163903 (not res!2820003)) b!6915561))

(assert (= (and b!6915561 c!1284234) b!6915563))

(assert (= (and b!6915561 (not c!1284234)) b!6915564))

(assert (= (and b!6915563 res!2820002) b!6915559))

(assert (= (and b!6915564 c!1284235) b!6915566))

(assert (= (and b!6915564 (not c!1284235)) b!6915562))

(assert (= (and b!6915566 res!2820005) b!6915560))

(assert (= (and b!6915562 (not res!2820001)) b!6915565))

(assert (= (and b!6915565 res!2820004) b!6915558))

(assert (= (or b!6915566 b!6915558) bm!628683))

(assert (= (or b!6915560 b!6915565) bm!628685))

(assert (= (or b!6915559 bm!628685) bm!628684))

(declare-fun m!7627932 () Bool)

(assert (=> bm!628683 m!7627932))

(declare-fun m!7627934 () Bool)

(assert (=> bm!628684 m!7627934))

(declare-fun m!7627936 () Bool)

(assert (=> b!6915563 m!7627936))

(assert (=> b!6915480 d!2163903))

(declare-fun b!6915632 () Bool)

(declare-fun res!2820043 () Bool)

(declare-fun e!4162999 () Bool)

(assert (=> b!6915632 (=> (not res!2820043) (not e!4162999))))

(declare-fun isEmpty!38781 (List!66656) Bool)

(declare-fun tail!12918 (List!66656) List!66656)

(assert (=> b!6915632 (= res!2820043 (isEmpty!38781 (tail!12918 s!14361)))))

(declare-fun bm!628693 () Bool)

(declare-fun call!628698 () Bool)

(assert (=> bm!628693 (= call!628698 (isEmpty!38781 s!14361))))

(declare-fun b!6915633 () Bool)

(declare-fun res!2820048 () Bool)

(assert (=> b!6915633 (=> (not res!2820048) (not e!4162999))))

(assert (=> b!6915633 (= res!2820048 (not call!628698))))

(declare-fun b!6915634 () Bool)

(declare-fun e!4162998 () Bool)

(declare-fun lt!2469316 () Bool)

(assert (=> b!6915634 (= e!4162998 (not lt!2469316))))

(declare-fun b!6915635 () Bool)

(declare-fun e!4163001 () Bool)

(declare-fun e!4162997 () Bool)

(assert (=> b!6915635 (= e!4163001 e!4162997)))

(declare-fun res!2820044 () Bool)

(assert (=> b!6915635 (=> (not res!2820044) (not e!4162997))))

(assert (=> b!6915635 (= res!2820044 (not lt!2469316))))

(declare-fun b!6915636 () Bool)

(declare-fun e!4163000 () Bool)

(assert (=> b!6915636 (= e!4163000 (= lt!2469316 call!628698))))

(declare-fun b!6915637 () Bool)

(declare-fun res!2820046 () Bool)

(assert (=> b!6915637 (=> res!2820046 e!4163001)))

(assert (=> b!6915637 (= res!2820046 (not ((_ is ElementMatch!16903) lt!2469311)))))

(assert (=> b!6915637 (= e!4162998 e!4163001)))

(declare-fun b!6915638 () Bool)

(declare-fun res!2820047 () Bool)

(assert (=> b!6915638 (=> res!2820047 e!4163001)))

(assert (=> b!6915638 (= res!2820047 e!4162999)))

(declare-fun res!2820049 () Bool)

(assert (=> b!6915638 (=> (not res!2820049) (not e!4162999))))

(assert (=> b!6915638 (= res!2820049 lt!2469316)))

(declare-fun b!6915639 () Bool)

(declare-fun e!4163003 () Bool)

(assert (=> b!6915639 (= e!4162997 e!4163003)))

(declare-fun res!2820050 () Bool)

(assert (=> b!6915639 (=> res!2820050 e!4163003)))

(assert (=> b!6915639 (= res!2820050 call!628698)))

(declare-fun b!6915640 () Bool)

(assert (=> b!6915640 (= e!4163000 e!4162998)))

(declare-fun c!1284251 () Bool)

(assert (=> b!6915640 (= c!1284251 ((_ is EmptyLang!16903) lt!2469311))))

(declare-fun b!6915641 () Bool)

(declare-fun head!13866 (List!66656) C!34076)

(assert (=> b!6915641 (= e!4162999 (= (head!13866 s!14361) (c!1284217 lt!2469311)))))

(declare-fun d!2163907 () Bool)

(assert (=> d!2163907 e!4163000))

(declare-fun c!1284250 () Bool)

(assert (=> d!2163907 (= c!1284250 ((_ is EmptyExpr!16903) lt!2469311))))

(declare-fun e!4163002 () Bool)

(assert (=> d!2163907 (= lt!2469316 e!4163002)))

(declare-fun c!1284252 () Bool)

(assert (=> d!2163907 (= c!1284252 (isEmpty!38781 s!14361))))

(assert (=> d!2163907 (validRegex!8609 lt!2469311)))

(assert (=> d!2163907 (= (matchR!9042 lt!2469311 s!14361) lt!2469316)))

(declare-fun b!6915642 () Bool)

(declare-fun derivativeStep!5413 (Regex!16903 C!34076) Regex!16903)

(assert (=> b!6915642 (= e!4163002 (matchR!9042 (derivativeStep!5413 lt!2469311 (head!13866 s!14361)) (tail!12918 s!14361)))))

(declare-fun b!6915643 () Bool)

(assert (=> b!6915643 (= e!4163003 (not (= (head!13866 s!14361) (c!1284217 lt!2469311))))))

(declare-fun b!6915644 () Bool)

(declare-fun res!2820045 () Bool)

(assert (=> b!6915644 (=> res!2820045 e!4163003)))

(assert (=> b!6915644 (= res!2820045 (not (isEmpty!38781 (tail!12918 s!14361))))))

(declare-fun b!6915645 () Bool)

(assert (=> b!6915645 (= e!4163002 (nullable!6738 lt!2469311))))

(assert (= (and d!2163907 c!1284252) b!6915645))

(assert (= (and d!2163907 (not c!1284252)) b!6915642))

(assert (= (and d!2163907 c!1284250) b!6915636))

(assert (= (and d!2163907 (not c!1284250)) b!6915640))

(assert (= (and b!6915640 c!1284251) b!6915634))

(assert (= (and b!6915640 (not c!1284251)) b!6915637))

(assert (= (and b!6915637 (not res!2820046)) b!6915638))

(assert (= (and b!6915638 res!2820049) b!6915633))

(assert (= (and b!6915633 res!2820048) b!6915632))

(assert (= (and b!6915632 res!2820043) b!6915641))

(assert (= (and b!6915638 (not res!2820047)) b!6915635))

(assert (= (and b!6915635 res!2820044) b!6915639))

(assert (= (and b!6915639 (not res!2820050)) b!6915644))

(assert (= (and b!6915644 (not res!2820045)) b!6915643))

(assert (= (or b!6915636 b!6915633 b!6915639) bm!628693))

(declare-fun m!7627946 () Bool)

(assert (=> b!6915632 m!7627946))

(assert (=> b!6915632 m!7627946))

(declare-fun m!7627950 () Bool)

(assert (=> b!6915632 m!7627950))

(declare-fun m!7627954 () Bool)

(assert (=> b!6915642 m!7627954))

(assert (=> b!6915642 m!7627954))

(declare-fun m!7627958 () Bool)

(assert (=> b!6915642 m!7627958))

(assert (=> b!6915642 m!7627946))

(assert (=> b!6915642 m!7627958))

(assert (=> b!6915642 m!7627946))

(declare-fun m!7627964 () Bool)

(assert (=> b!6915642 m!7627964))

(declare-fun m!7627966 () Bool)

(assert (=> b!6915645 m!7627966))

(assert (=> b!6915641 m!7627954))

(declare-fun m!7627968 () Bool)

(assert (=> bm!628693 m!7627968))

(assert (=> b!6915644 m!7627946))

(assert (=> b!6915644 m!7627946))

(assert (=> b!6915644 m!7627950))

(assert (=> b!6915643 m!7627954))

(assert (=> d!2163907 m!7627968))

(declare-fun m!7627974 () Bool)

(assert (=> d!2163907 m!7627974))

(assert (=> b!6915480 d!2163907))

(declare-fun b!6915816 () Bool)

(assert (=> b!6915816 true))

(assert (=> b!6915816 true))

(declare-fun bs!1845866 () Bool)

(declare-fun b!6915822 () Bool)

(assert (= bs!1845866 (and b!6915822 b!6915816)))

(declare-fun lambda!393030 () Int)

(declare-fun lambda!393029 () Int)

(assert (=> bs!1845866 (not (= lambda!393030 lambda!393029))))

(assert (=> b!6915822 true))

(assert (=> b!6915822 true))

(declare-fun c!1284278 () Bool)

(declare-fun call!628710 () Bool)

(declare-fun bm!628705 () Bool)

(declare-fun Exists!3905 (Int) Bool)

(assert (=> bm!628705 (= call!628710 (Exists!3905 (ite c!1284278 lambda!393029 lambda!393030)))))

(declare-fun b!6915814 () Bool)

(declare-fun res!2820096 () Bool)

(declare-fun e!4163080 () Bool)

(assert (=> b!6915814 (=> res!2820096 e!4163080)))

(declare-fun call!628711 () Bool)

(assert (=> b!6915814 (= res!2820096 call!628711)))

(declare-fun e!4163078 () Bool)

(assert (=> b!6915814 (= e!4163078 e!4163080)))

(declare-fun b!6915815 () Bool)

(declare-fun c!1284279 () Bool)

(assert (=> b!6915815 (= c!1284279 ((_ is Union!16903) lt!2469311))))

(declare-fun e!4163077 () Bool)

(declare-fun e!4163076 () Bool)

(assert (=> b!6915815 (= e!4163077 e!4163076)))

(assert (=> b!6915816 (= e!4163080 call!628710)))

(declare-fun d!2163913 () Bool)

(declare-fun c!1284277 () Bool)

(assert (=> d!2163913 (= c!1284277 ((_ is EmptyExpr!16903) lt!2469311))))

(declare-fun e!4163075 () Bool)

(assert (=> d!2163913 (= (matchRSpec!3960 lt!2469311 s!14361) e!4163075)))

(declare-fun b!6915817 () Bool)

(declare-fun e!4163079 () Bool)

(assert (=> b!6915817 (= e!4163079 (matchRSpec!3960 (regTwo!34319 lt!2469311) s!14361))))

(declare-fun b!6915818 () Bool)

(assert (=> b!6915818 (= e!4163075 call!628711)))

(declare-fun b!6915819 () Bool)

(declare-fun c!1284276 () Bool)

(assert (=> b!6915819 (= c!1284276 ((_ is ElementMatch!16903) lt!2469311))))

(declare-fun e!4163074 () Bool)

(assert (=> b!6915819 (= e!4163074 e!4163077)))

(declare-fun b!6915820 () Bool)

(assert (=> b!6915820 (= e!4163076 e!4163078)))

(assert (=> b!6915820 (= c!1284278 ((_ is Star!16903) lt!2469311))))

(declare-fun b!6915821 () Bool)

(assert (=> b!6915821 (= e!4163076 e!4163079)))

(declare-fun res!2820094 () Bool)

(assert (=> b!6915821 (= res!2820094 (matchRSpec!3960 (regOne!34319 lt!2469311) s!14361))))

(assert (=> b!6915821 (=> res!2820094 e!4163079)))

(assert (=> b!6915822 (= e!4163078 call!628710)))

(declare-fun b!6915823 () Bool)

(assert (=> b!6915823 (= e!4163075 e!4163074)))

(declare-fun res!2820095 () Bool)

(assert (=> b!6915823 (= res!2820095 (not ((_ is EmptyLang!16903) lt!2469311)))))

(assert (=> b!6915823 (=> (not res!2820095) (not e!4163074))))

(declare-fun bm!628706 () Bool)

(assert (=> bm!628706 (= call!628711 (isEmpty!38781 s!14361))))

(declare-fun b!6915824 () Bool)

(assert (=> b!6915824 (= e!4163077 (= s!14361 (Cons!66532 (c!1284217 lt!2469311) Nil!66532)))))

(assert (= (and d!2163913 c!1284277) b!6915818))

(assert (= (and d!2163913 (not c!1284277)) b!6915823))

(assert (= (and b!6915823 res!2820095) b!6915819))

(assert (= (and b!6915819 c!1284276) b!6915824))

(assert (= (and b!6915819 (not c!1284276)) b!6915815))

(assert (= (and b!6915815 c!1284279) b!6915821))

(assert (= (and b!6915815 (not c!1284279)) b!6915820))

(assert (= (and b!6915821 (not res!2820094)) b!6915817))

(assert (= (and b!6915820 c!1284278) b!6915814))

(assert (= (and b!6915820 (not c!1284278)) b!6915822))

(assert (= (and b!6915814 (not res!2820096)) b!6915816))

(assert (= (or b!6915816 b!6915822) bm!628705))

(assert (= (or b!6915818 b!6915814) bm!628706))

(declare-fun m!7627984 () Bool)

(assert (=> bm!628705 m!7627984))

(declare-fun m!7627986 () Bool)

(assert (=> b!6915817 m!7627986))

(declare-fun m!7627988 () Bool)

(assert (=> b!6915821 m!7627988))

(assert (=> bm!628706 m!7627968))

(assert (=> b!6915480 d!2163913))

(declare-fun d!2163917 () Bool)

(assert (=> d!2163917 (= (matchR!9042 lt!2469311 s!14361) (matchRSpec!3960 lt!2469311 s!14361))))

(declare-fun lt!2469323 () Unit!160530)

(declare-fun choose!51499 (Regex!16903 List!66656) Unit!160530)

(assert (=> d!2163917 (= lt!2469323 (choose!51499 lt!2469311 s!14361))))

(assert (=> d!2163917 (validRegex!8609 lt!2469311)))

(assert (=> d!2163917 (= (mainMatchTheorem!3960 lt!2469311 s!14361) lt!2469323)))

(declare-fun bs!1845867 () Bool)

(assert (= bs!1845867 d!2163917))

(assert (=> bs!1845867 m!7627900))

(assert (=> bs!1845867 m!7627902))

(declare-fun m!7627990 () Bool)

(assert (=> bs!1845867 m!7627990))

(assert (=> bs!1845867 m!7627974))

(assert (=> b!6915480 d!2163917))

(declare-fun b!6915829 () Bool)

(declare-fun e!4163083 () Bool)

(declare-fun call!628712 () Bool)

(assert (=> b!6915829 (= e!4163083 call!628712)))

(declare-fun bm!628707 () Bool)

(declare-fun c!1284281 () Bool)

(assert (=> bm!628707 (= call!628712 (validRegex!8609 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))))))

(declare-fun b!6915830 () Bool)

(declare-fun e!4163081 () Bool)

(declare-fun call!628714 () Bool)

(assert (=> b!6915830 (= e!4163081 call!628714)))

(declare-fun b!6915831 () Bool)

(declare-fun e!4163085 () Bool)

(declare-fun call!628713 () Bool)

(assert (=> b!6915831 (= e!4163085 call!628713)))

(declare-fun bm!628708 () Bool)

(declare-fun c!1284280 () Bool)

(assert (=> bm!628708 (= call!628714 (validRegex!8609 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))))))

(declare-fun b!6915832 () Bool)

(declare-fun e!4163084 () Bool)

(declare-fun e!4163086 () Bool)

(assert (=> b!6915832 (= e!4163084 e!4163086)))

(assert (=> b!6915832 (= c!1284280 ((_ is Star!16903) r1!6342))))

(declare-fun b!6915833 () Bool)

(declare-fun res!2820097 () Bool)

(declare-fun e!4163082 () Bool)

(assert (=> b!6915833 (=> res!2820097 e!4163082)))

(assert (=> b!6915833 (= res!2820097 (not ((_ is Concat!25748) r1!6342)))))

(declare-fun e!4163087 () Bool)

(assert (=> b!6915833 (= e!4163087 e!4163082)))

(declare-fun d!2163919 () Bool)

(declare-fun res!2820099 () Bool)

(assert (=> d!2163919 (=> res!2820099 e!4163084)))

(assert (=> d!2163919 (= res!2820099 ((_ is ElementMatch!16903) r1!6342))))

(assert (=> d!2163919 (= (validRegex!8609 r1!6342) e!4163084)))

(declare-fun b!6915834 () Bool)

(assert (=> b!6915834 (= e!4163086 e!4163081)))

(declare-fun res!2820098 () Bool)

(assert (=> b!6915834 (= res!2820098 (not (nullable!6738 (reg!17232 r1!6342))))))

(assert (=> b!6915834 (=> (not res!2820098) (not e!4163081))))

(declare-fun b!6915835 () Bool)

(assert (=> b!6915835 (= e!4163086 e!4163087)))

(assert (=> b!6915835 (= c!1284281 ((_ is Union!16903) r1!6342))))

(declare-fun bm!628709 () Bool)

(assert (=> bm!628709 (= call!628713 call!628714)))

(declare-fun b!6915836 () Bool)

(assert (=> b!6915836 (= e!4163082 e!4163083)))

(declare-fun res!2820100 () Bool)

(assert (=> b!6915836 (=> (not res!2820100) (not e!4163083))))

(assert (=> b!6915836 (= res!2820100 call!628713)))

(declare-fun b!6915837 () Bool)

(declare-fun res!2820101 () Bool)

(assert (=> b!6915837 (=> (not res!2820101) (not e!4163085))))

(assert (=> b!6915837 (= res!2820101 call!628712)))

(assert (=> b!6915837 (= e!4163087 e!4163085)))

(assert (= (and d!2163919 (not res!2820099)) b!6915832))

(assert (= (and b!6915832 c!1284280) b!6915834))

(assert (= (and b!6915832 (not c!1284280)) b!6915835))

(assert (= (and b!6915834 res!2820098) b!6915830))

(assert (= (and b!6915835 c!1284281) b!6915837))

(assert (= (and b!6915835 (not c!1284281)) b!6915833))

(assert (= (and b!6915837 res!2820101) b!6915831))

(assert (= (and b!6915833 (not res!2820097)) b!6915836))

(assert (= (and b!6915836 res!2820100) b!6915829))

(assert (= (or b!6915837 b!6915829) bm!628707))

(assert (= (or b!6915831 b!6915836) bm!628709))

(assert (= (or b!6915830 bm!628709) bm!628708))

(declare-fun m!7627992 () Bool)

(assert (=> bm!628707 m!7627992))

(declare-fun m!7627994 () Bool)

(assert (=> bm!628708 m!7627994))

(declare-fun m!7627996 () Bool)

(assert (=> b!6915834 m!7627996))

(assert (=> start!665386 d!2163919))

(declare-fun b!6915838 () Bool)

(declare-fun e!4163090 () Bool)

(declare-fun call!628715 () Bool)

(assert (=> b!6915838 (= e!4163090 call!628715)))

(declare-fun bm!628710 () Bool)

(declare-fun c!1284283 () Bool)

(assert (=> bm!628710 (= call!628715 (validRegex!8609 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))))))

(declare-fun b!6915839 () Bool)

(declare-fun e!4163088 () Bool)

(declare-fun call!628717 () Bool)

(assert (=> b!6915839 (= e!4163088 call!628717)))

(declare-fun b!6915840 () Bool)

(declare-fun e!4163092 () Bool)

(declare-fun call!628716 () Bool)

(assert (=> b!6915840 (= e!4163092 call!628716)))

(declare-fun c!1284282 () Bool)

(declare-fun bm!628711 () Bool)

(assert (=> bm!628711 (= call!628717 (validRegex!8609 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))))))

(declare-fun b!6915841 () Bool)

(declare-fun e!4163091 () Bool)

(declare-fun e!4163093 () Bool)

(assert (=> b!6915841 (= e!4163091 e!4163093)))

(assert (=> b!6915841 (= c!1284282 ((_ is Star!16903) r3!135))))

(declare-fun b!6915842 () Bool)

(declare-fun res!2820102 () Bool)

(declare-fun e!4163089 () Bool)

(assert (=> b!6915842 (=> res!2820102 e!4163089)))

(assert (=> b!6915842 (= res!2820102 (not ((_ is Concat!25748) r3!135)))))

(declare-fun e!4163094 () Bool)

(assert (=> b!6915842 (= e!4163094 e!4163089)))

(declare-fun d!2163921 () Bool)

(declare-fun res!2820104 () Bool)

(assert (=> d!2163921 (=> res!2820104 e!4163091)))

(assert (=> d!2163921 (= res!2820104 ((_ is ElementMatch!16903) r3!135))))

(assert (=> d!2163921 (= (validRegex!8609 r3!135) e!4163091)))

(declare-fun b!6915843 () Bool)

(assert (=> b!6915843 (= e!4163093 e!4163088)))

(declare-fun res!2820103 () Bool)

(assert (=> b!6915843 (= res!2820103 (not (nullable!6738 (reg!17232 r3!135))))))

(assert (=> b!6915843 (=> (not res!2820103) (not e!4163088))))

(declare-fun b!6915844 () Bool)

(assert (=> b!6915844 (= e!4163093 e!4163094)))

(assert (=> b!6915844 (= c!1284283 ((_ is Union!16903) r3!135))))

(declare-fun bm!628712 () Bool)

(assert (=> bm!628712 (= call!628716 call!628717)))

(declare-fun b!6915845 () Bool)

(assert (=> b!6915845 (= e!4163089 e!4163090)))

(declare-fun res!2820105 () Bool)

(assert (=> b!6915845 (=> (not res!2820105) (not e!4163090))))

(assert (=> b!6915845 (= res!2820105 call!628716)))

(declare-fun b!6915846 () Bool)

(declare-fun res!2820106 () Bool)

(assert (=> b!6915846 (=> (not res!2820106) (not e!4163092))))

(assert (=> b!6915846 (= res!2820106 call!628715)))

(assert (=> b!6915846 (= e!4163094 e!4163092)))

(assert (= (and d!2163921 (not res!2820104)) b!6915841))

(assert (= (and b!6915841 c!1284282) b!6915843))

(assert (= (and b!6915841 (not c!1284282)) b!6915844))

(assert (= (and b!6915843 res!2820103) b!6915839))

(assert (= (and b!6915844 c!1284283) b!6915846))

(assert (= (and b!6915844 (not c!1284283)) b!6915842))

(assert (= (and b!6915846 res!2820106) b!6915840))

(assert (= (and b!6915842 (not res!2820102)) b!6915845))

(assert (= (and b!6915845 res!2820105) b!6915838))

(assert (= (or b!6915846 b!6915838) bm!628710))

(assert (= (or b!6915840 b!6915845) bm!628712))

(assert (= (or b!6915839 bm!628712) bm!628711))

(declare-fun m!7627998 () Bool)

(assert (=> bm!628710 m!7627998))

(declare-fun m!7628000 () Bool)

(assert (=> bm!628711 m!7628000))

(declare-fun m!7628002 () Bool)

(assert (=> b!6915843 m!7628002))

(assert (=> b!6915483 d!2163921))

(declare-fun e!4163097 () Bool)

(assert (=> b!6915484 (= tp!1905408 e!4163097)))

(declare-fun b!6915859 () Bool)

(declare-fun tp!1905510 () Bool)

(assert (=> b!6915859 (= e!4163097 tp!1905510)))

(declare-fun b!6915860 () Bool)

(declare-fun tp!1905512 () Bool)

(declare-fun tp!1905513 () Bool)

(assert (=> b!6915860 (= e!4163097 (and tp!1905512 tp!1905513))))

(declare-fun b!6915857 () Bool)

(assert (=> b!6915857 (= e!4163097 tp_is_empty!43031)))

(declare-fun b!6915858 () Bool)

(declare-fun tp!1905511 () Bool)

(declare-fun tp!1905514 () Bool)

(assert (=> b!6915858 (= e!4163097 (and tp!1905511 tp!1905514))))

(assert (= (and b!6915484 ((_ is ElementMatch!16903) (regOne!34318 r3!135))) b!6915857))

(assert (= (and b!6915484 ((_ is Concat!25748) (regOne!34318 r3!135))) b!6915858))

(assert (= (and b!6915484 ((_ is Star!16903) (regOne!34318 r3!135))) b!6915859))

(assert (= (and b!6915484 ((_ is Union!16903) (regOne!34318 r3!135))) b!6915860))

(declare-fun e!4163098 () Bool)

(assert (=> b!6915484 (= tp!1905396 e!4163098)))

(declare-fun b!6915863 () Bool)

(declare-fun tp!1905515 () Bool)

(assert (=> b!6915863 (= e!4163098 tp!1905515)))

(declare-fun b!6915864 () Bool)

(declare-fun tp!1905517 () Bool)

(declare-fun tp!1905518 () Bool)

(assert (=> b!6915864 (= e!4163098 (and tp!1905517 tp!1905518))))

(declare-fun b!6915861 () Bool)

(assert (=> b!6915861 (= e!4163098 tp_is_empty!43031)))

(declare-fun b!6915862 () Bool)

(declare-fun tp!1905516 () Bool)

(declare-fun tp!1905519 () Bool)

(assert (=> b!6915862 (= e!4163098 (and tp!1905516 tp!1905519))))

(assert (= (and b!6915484 ((_ is ElementMatch!16903) (regTwo!34318 r3!135))) b!6915861))

(assert (= (and b!6915484 ((_ is Concat!25748) (regTwo!34318 r3!135))) b!6915862))

(assert (= (and b!6915484 ((_ is Star!16903) (regTwo!34318 r3!135))) b!6915863))

(assert (= (and b!6915484 ((_ is Union!16903) (regTwo!34318 r3!135))) b!6915864))

(declare-fun b!6915869 () Bool)

(declare-fun e!4163101 () Bool)

(declare-fun tp!1905522 () Bool)

(assert (=> b!6915869 (= e!4163101 (and tp_is_empty!43031 tp!1905522))))

(assert (=> b!6915473 (= tp!1905399 e!4163101)))

(assert (= (and b!6915473 ((_ is Cons!66532) (t!380399 s!14361))) b!6915869))

(declare-fun e!4163102 () Bool)

(assert (=> b!6915478 (= tp!1905411 e!4163102)))

(declare-fun b!6915872 () Bool)

(declare-fun tp!1905523 () Bool)

(assert (=> b!6915872 (= e!4163102 tp!1905523)))

(declare-fun b!6915873 () Bool)

(declare-fun tp!1905525 () Bool)

(declare-fun tp!1905526 () Bool)

(assert (=> b!6915873 (= e!4163102 (and tp!1905525 tp!1905526))))

(declare-fun b!6915870 () Bool)

(assert (=> b!6915870 (= e!4163102 tp_is_empty!43031)))

(declare-fun b!6915871 () Bool)

(declare-fun tp!1905524 () Bool)

(declare-fun tp!1905527 () Bool)

(assert (=> b!6915871 (= e!4163102 (and tp!1905524 tp!1905527))))

(assert (= (and b!6915478 ((_ is ElementMatch!16903) (regOne!34319 r2!6280))) b!6915870))

(assert (= (and b!6915478 ((_ is Concat!25748) (regOne!34319 r2!6280))) b!6915871))

(assert (= (and b!6915478 ((_ is Star!16903) (regOne!34319 r2!6280))) b!6915872))

(assert (= (and b!6915478 ((_ is Union!16903) (regOne!34319 r2!6280))) b!6915873))

(declare-fun e!4163103 () Bool)

(assert (=> b!6915478 (= tp!1905410 e!4163103)))

(declare-fun b!6915876 () Bool)

(declare-fun tp!1905528 () Bool)

(assert (=> b!6915876 (= e!4163103 tp!1905528)))

(declare-fun b!6915877 () Bool)

(declare-fun tp!1905530 () Bool)

(declare-fun tp!1905531 () Bool)

(assert (=> b!6915877 (= e!4163103 (and tp!1905530 tp!1905531))))

(declare-fun b!6915874 () Bool)

(assert (=> b!6915874 (= e!4163103 tp_is_empty!43031)))

(declare-fun b!6915875 () Bool)

(declare-fun tp!1905529 () Bool)

(declare-fun tp!1905532 () Bool)

(assert (=> b!6915875 (= e!4163103 (and tp!1905529 tp!1905532))))

(assert (= (and b!6915478 ((_ is ElementMatch!16903) (regTwo!34319 r2!6280))) b!6915874))

(assert (= (and b!6915478 ((_ is Concat!25748) (regTwo!34319 r2!6280))) b!6915875))

(assert (= (and b!6915478 ((_ is Star!16903) (regTwo!34319 r2!6280))) b!6915876))

(assert (= (and b!6915478 ((_ is Union!16903) (regTwo!34319 r2!6280))) b!6915877))

(declare-fun e!4163104 () Bool)

(assert (=> b!6915485 (= tp!1905403 e!4163104)))

(declare-fun b!6915880 () Bool)

(declare-fun tp!1905533 () Bool)

(assert (=> b!6915880 (= e!4163104 tp!1905533)))

(declare-fun b!6915881 () Bool)

(declare-fun tp!1905535 () Bool)

(declare-fun tp!1905536 () Bool)

(assert (=> b!6915881 (= e!4163104 (and tp!1905535 tp!1905536))))

(declare-fun b!6915878 () Bool)

(assert (=> b!6915878 (= e!4163104 tp_is_empty!43031)))

(declare-fun b!6915879 () Bool)

(declare-fun tp!1905534 () Bool)

(declare-fun tp!1905537 () Bool)

(assert (=> b!6915879 (= e!4163104 (and tp!1905534 tp!1905537))))

(assert (= (and b!6915485 ((_ is ElementMatch!16903) (regOne!34318 r1!6342))) b!6915878))

(assert (= (and b!6915485 ((_ is Concat!25748) (regOne!34318 r1!6342))) b!6915879))

(assert (= (and b!6915485 ((_ is Star!16903) (regOne!34318 r1!6342))) b!6915880))

(assert (= (and b!6915485 ((_ is Union!16903) (regOne!34318 r1!6342))) b!6915881))

(declare-fun e!4163105 () Bool)

(assert (=> b!6915485 (= tp!1905407 e!4163105)))

(declare-fun b!6915884 () Bool)

(declare-fun tp!1905538 () Bool)

(assert (=> b!6915884 (= e!4163105 tp!1905538)))

(declare-fun b!6915885 () Bool)

(declare-fun tp!1905540 () Bool)

(declare-fun tp!1905541 () Bool)

(assert (=> b!6915885 (= e!4163105 (and tp!1905540 tp!1905541))))

(declare-fun b!6915882 () Bool)

(assert (=> b!6915882 (= e!4163105 tp_is_empty!43031)))

(declare-fun b!6915883 () Bool)

(declare-fun tp!1905539 () Bool)

(declare-fun tp!1905542 () Bool)

(assert (=> b!6915883 (= e!4163105 (and tp!1905539 tp!1905542))))

(assert (= (and b!6915485 ((_ is ElementMatch!16903) (regTwo!34318 r1!6342))) b!6915882))

(assert (= (and b!6915485 ((_ is Concat!25748) (regTwo!34318 r1!6342))) b!6915883))

(assert (= (and b!6915485 ((_ is Star!16903) (regTwo!34318 r1!6342))) b!6915884))

(assert (= (and b!6915485 ((_ is Union!16903) (regTwo!34318 r1!6342))) b!6915885))

(declare-fun e!4163106 () Bool)

(assert (=> b!6915474 (= tp!1905409 e!4163106)))

(declare-fun b!6915888 () Bool)

(declare-fun tp!1905543 () Bool)

(assert (=> b!6915888 (= e!4163106 tp!1905543)))

(declare-fun b!6915889 () Bool)

(declare-fun tp!1905545 () Bool)

(declare-fun tp!1905546 () Bool)

(assert (=> b!6915889 (= e!4163106 (and tp!1905545 tp!1905546))))

(declare-fun b!6915886 () Bool)

(assert (=> b!6915886 (= e!4163106 tp_is_empty!43031)))

(declare-fun b!6915887 () Bool)

(declare-fun tp!1905544 () Bool)

(declare-fun tp!1905547 () Bool)

(assert (=> b!6915887 (= e!4163106 (and tp!1905544 tp!1905547))))

(assert (= (and b!6915474 ((_ is ElementMatch!16903) (reg!17232 r3!135))) b!6915886))

(assert (= (and b!6915474 ((_ is Concat!25748) (reg!17232 r3!135))) b!6915887))

(assert (= (and b!6915474 ((_ is Star!16903) (reg!17232 r3!135))) b!6915888))

(assert (= (and b!6915474 ((_ is Union!16903) (reg!17232 r3!135))) b!6915889))

(declare-fun e!4163107 () Bool)

(assert (=> b!6915476 (= tp!1905404 e!4163107)))

(declare-fun b!6915892 () Bool)

(declare-fun tp!1905548 () Bool)

(assert (=> b!6915892 (= e!4163107 tp!1905548)))

(declare-fun b!6915893 () Bool)

(declare-fun tp!1905550 () Bool)

(declare-fun tp!1905551 () Bool)

(assert (=> b!6915893 (= e!4163107 (and tp!1905550 tp!1905551))))

(declare-fun b!6915890 () Bool)

(assert (=> b!6915890 (= e!4163107 tp_is_empty!43031)))

(declare-fun b!6915891 () Bool)

(declare-fun tp!1905549 () Bool)

(declare-fun tp!1905552 () Bool)

(assert (=> b!6915891 (= e!4163107 (and tp!1905549 tp!1905552))))

(assert (= (and b!6915476 ((_ is ElementMatch!16903) (regOne!34319 r1!6342))) b!6915890))

(assert (= (and b!6915476 ((_ is Concat!25748) (regOne!34319 r1!6342))) b!6915891))

(assert (= (and b!6915476 ((_ is Star!16903) (regOne!34319 r1!6342))) b!6915892))

(assert (= (and b!6915476 ((_ is Union!16903) (regOne!34319 r1!6342))) b!6915893))

(declare-fun e!4163108 () Bool)

(assert (=> b!6915476 (= tp!1905402 e!4163108)))

(declare-fun b!6915896 () Bool)

(declare-fun tp!1905553 () Bool)

(assert (=> b!6915896 (= e!4163108 tp!1905553)))

(declare-fun b!6915897 () Bool)

(declare-fun tp!1905555 () Bool)

(declare-fun tp!1905556 () Bool)

(assert (=> b!6915897 (= e!4163108 (and tp!1905555 tp!1905556))))

(declare-fun b!6915894 () Bool)

(assert (=> b!6915894 (= e!4163108 tp_is_empty!43031)))

(declare-fun b!6915895 () Bool)

(declare-fun tp!1905554 () Bool)

(declare-fun tp!1905557 () Bool)

(assert (=> b!6915895 (= e!4163108 (and tp!1905554 tp!1905557))))

(assert (= (and b!6915476 ((_ is ElementMatch!16903) (regTwo!34319 r1!6342))) b!6915894))

(assert (= (and b!6915476 ((_ is Concat!25748) (regTwo!34319 r1!6342))) b!6915895))

(assert (= (and b!6915476 ((_ is Star!16903) (regTwo!34319 r1!6342))) b!6915896))

(assert (= (and b!6915476 ((_ is Union!16903) (regTwo!34319 r1!6342))) b!6915897))

(declare-fun e!4163109 () Bool)

(assert (=> b!6915481 (= tp!1905400 e!4163109)))

(declare-fun b!6915900 () Bool)

(declare-fun tp!1905558 () Bool)

(assert (=> b!6915900 (= e!4163109 tp!1905558)))

(declare-fun b!6915901 () Bool)

(declare-fun tp!1905560 () Bool)

(declare-fun tp!1905561 () Bool)

(assert (=> b!6915901 (= e!4163109 (and tp!1905560 tp!1905561))))

(declare-fun b!6915898 () Bool)

(assert (=> b!6915898 (= e!4163109 tp_is_empty!43031)))

(declare-fun b!6915899 () Bool)

(declare-fun tp!1905559 () Bool)

(declare-fun tp!1905562 () Bool)

(assert (=> b!6915899 (= e!4163109 (and tp!1905559 tp!1905562))))

(assert (= (and b!6915481 ((_ is ElementMatch!16903) (regOne!34319 r3!135))) b!6915898))

(assert (= (and b!6915481 ((_ is Concat!25748) (regOne!34319 r3!135))) b!6915899))

(assert (= (and b!6915481 ((_ is Star!16903) (regOne!34319 r3!135))) b!6915900))

(assert (= (and b!6915481 ((_ is Union!16903) (regOne!34319 r3!135))) b!6915901))

(declare-fun e!4163110 () Bool)

(assert (=> b!6915481 (= tp!1905398 e!4163110)))

(declare-fun b!6915904 () Bool)

(declare-fun tp!1905563 () Bool)

(assert (=> b!6915904 (= e!4163110 tp!1905563)))

(declare-fun b!6915905 () Bool)

(declare-fun tp!1905565 () Bool)

(declare-fun tp!1905566 () Bool)

(assert (=> b!6915905 (= e!4163110 (and tp!1905565 tp!1905566))))

(declare-fun b!6915902 () Bool)

(assert (=> b!6915902 (= e!4163110 tp_is_empty!43031)))

(declare-fun b!6915903 () Bool)

(declare-fun tp!1905564 () Bool)

(declare-fun tp!1905567 () Bool)

(assert (=> b!6915903 (= e!4163110 (and tp!1905564 tp!1905567))))

(assert (= (and b!6915481 ((_ is ElementMatch!16903) (regTwo!34319 r3!135))) b!6915902))

(assert (= (and b!6915481 ((_ is Concat!25748) (regTwo!34319 r3!135))) b!6915903))

(assert (= (and b!6915481 ((_ is Star!16903) (regTwo!34319 r3!135))) b!6915904))

(assert (= (and b!6915481 ((_ is Union!16903) (regTwo!34319 r3!135))) b!6915905))

(declare-fun e!4163111 () Bool)

(assert (=> b!6915470 (= tp!1905397 e!4163111)))

(declare-fun b!6915908 () Bool)

(declare-fun tp!1905568 () Bool)

(assert (=> b!6915908 (= e!4163111 tp!1905568)))

(declare-fun b!6915909 () Bool)

(declare-fun tp!1905570 () Bool)

(declare-fun tp!1905571 () Bool)

(assert (=> b!6915909 (= e!4163111 (and tp!1905570 tp!1905571))))

(declare-fun b!6915906 () Bool)

(assert (=> b!6915906 (= e!4163111 tp_is_empty!43031)))

(declare-fun b!6915907 () Bool)

(declare-fun tp!1905569 () Bool)

(declare-fun tp!1905572 () Bool)

(assert (=> b!6915907 (= e!4163111 (and tp!1905569 tp!1905572))))

(assert (= (and b!6915470 ((_ is ElementMatch!16903) (reg!17232 r1!6342))) b!6915906))

(assert (= (and b!6915470 ((_ is Concat!25748) (reg!17232 r1!6342))) b!6915907))

(assert (= (and b!6915470 ((_ is Star!16903) (reg!17232 r1!6342))) b!6915908))

(assert (= (and b!6915470 ((_ is Union!16903) (reg!17232 r1!6342))) b!6915909))

(declare-fun e!4163112 () Bool)

(assert (=> b!6915477 (= tp!1905406 e!4163112)))

(declare-fun b!6915912 () Bool)

(declare-fun tp!1905573 () Bool)

(assert (=> b!6915912 (= e!4163112 tp!1905573)))

(declare-fun b!6915913 () Bool)

(declare-fun tp!1905575 () Bool)

(declare-fun tp!1905576 () Bool)

(assert (=> b!6915913 (= e!4163112 (and tp!1905575 tp!1905576))))

(declare-fun b!6915910 () Bool)

(assert (=> b!6915910 (= e!4163112 tp_is_empty!43031)))

(declare-fun b!6915911 () Bool)

(declare-fun tp!1905574 () Bool)

(declare-fun tp!1905577 () Bool)

(assert (=> b!6915911 (= e!4163112 (and tp!1905574 tp!1905577))))

(assert (= (and b!6915477 ((_ is ElementMatch!16903) (regOne!34318 r2!6280))) b!6915910))

(assert (= (and b!6915477 ((_ is Concat!25748) (regOne!34318 r2!6280))) b!6915911))

(assert (= (and b!6915477 ((_ is Star!16903) (regOne!34318 r2!6280))) b!6915912))

(assert (= (and b!6915477 ((_ is Union!16903) (regOne!34318 r2!6280))) b!6915913))

(declare-fun e!4163113 () Bool)

(assert (=> b!6915477 (= tp!1905405 e!4163113)))

(declare-fun b!6915916 () Bool)

(declare-fun tp!1905578 () Bool)

(assert (=> b!6915916 (= e!4163113 tp!1905578)))

(declare-fun b!6915917 () Bool)

(declare-fun tp!1905580 () Bool)

(declare-fun tp!1905581 () Bool)

(assert (=> b!6915917 (= e!4163113 (and tp!1905580 tp!1905581))))

(declare-fun b!6915914 () Bool)

(assert (=> b!6915914 (= e!4163113 tp_is_empty!43031)))

(declare-fun b!6915915 () Bool)

(declare-fun tp!1905579 () Bool)

(declare-fun tp!1905582 () Bool)

(assert (=> b!6915915 (= e!4163113 (and tp!1905579 tp!1905582))))

(assert (= (and b!6915477 ((_ is ElementMatch!16903) (regTwo!34318 r2!6280))) b!6915914))

(assert (= (and b!6915477 ((_ is Concat!25748) (regTwo!34318 r2!6280))) b!6915915))

(assert (= (and b!6915477 ((_ is Star!16903) (regTwo!34318 r2!6280))) b!6915916))

(assert (= (and b!6915477 ((_ is Union!16903) (regTwo!34318 r2!6280))) b!6915917))

(declare-fun e!4163114 () Bool)

(assert (=> b!6915482 (= tp!1905401 e!4163114)))

(declare-fun b!6915920 () Bool)

(declare-fun tp!1905583 () Bool)

(assert (=> b!6915920 (= e!4163114 tp!1905583)))

(declare-fun b!6915921 () Bool)

(declare-fun tp!1905585 () Bool)

(declare-fun tp!1905586 () Bool)

(assert (=> b!6915921 (= e!4163114 (and tp!1905585 tp!1905586))))

(declare-fun b!6915918 () Bool)

(assert (=> b!6915918 (= e!4163114 tp_is_empty!43031)))

(declare-fun b!6915919 () Bool)

(declare-fun tp!1905584 () Bool)

(declare-fun tp!1905587 () Bool)

(assert (=> b!6915919 (= e!4163114 (and tp!1905584 tp!1905587))))

(assert (= (and b!6915482 ((_ is ElementMatch!16903) (reg!17232 r2!6280))) b!6915918))

(assert (= (and b!6915482 ((_ is Concat!25748) (reg!17232 r2!6280))) b!6915919))

(assert (= (and b!6915482 ((_ is Star!16903) (reg!17232 r2!6280))) b!6915920))

(assert (= (and b!6915482 ((_ is Union!16903) (reg!17232 r2!6280))) b!6915921))

(check-sat (not b!6915909) (not b!6915875) (not b!6915893) (not b!6915876) (not b!6915644) (not b!6915917) (not bm!628707) (not b!6915881) (not b!6915862) (not b!6915921) (not b!6915903) (not bm!628710) (not b!6915916) (not bm!628675) (not b!6915641) (not b!6915904) (not b!6915887) (not b!6915908) (not b!6915885) (not d!2163917) (not b!6915645) (not b!6915563) (not b!6915900) (not b!6915896) (not b!6915873) (not b!6915901) (not b!6915897) (not b!6915884) (not bm!628684) (not b!6915871) (not b!6915907) (not b!6915911) (not b!6915880) (not bm!628693) (not b!6915912) (not b!6915905) tp_is_empty!43031 (not bm!628705) (not b!6915643) (not b!6915632) (not b!6915915) (not b!6915834) (not b!6915864) (not b!6915899) (not b!6915919) (not b!6915872) (not bm!628711) (not b!6915889) (not b!6915536) (not bm!628674) (not b!6915859) (not b!6915895) (not b!6915860) (not b!6915817) (not b!6915858) (not b!6915843) (not bm!628708) (not bm!628706) (not b!6915642) (not b!6915920) (not d!2163907) (not b!6915877) (not b!6915892) (not b!6915869) (not b!6915883) (not b!6915821) (not b!6915879) (not b!6915913) (not b!6915863) (not b!6915891) (not bm!628683) (not b!6915888))
(check-sat)
(get-model)

(declare-fun b!6915922 () Bool)

(declare-fun e!4163117 () Bool)

(declare-fun call!628718 () Bool)

(assert (=> b!6915922 (= e!4163117 call!628718)))

(declare-fun c!1284285 () Bool)

(declare-fun bm!628713 () Bool)

(assert (=> bm!628713 (= call!628718 (validRegex!8609 (ite c!1284285 (regOne!34319 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))) (regTwo!34318 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))))))))

(declare-fun b!6915923 () Bool)

(declare-fun e!4163115 () Bool)

(declare-fun call!628720 () Bool)

(assert (=> b!6915923 (= e!4163115 call!628720)))

(declare-fun b!6915924 () Bool)

(declare-fun e!4163119 () Bool)

(declare-fun call!628719 () Bool)

(assert (=> b!6915924 (= e!4163119 call!628719)))

(declare-fun c!1284284 () Bool)

(declare-fun bm!628714 () Bool)

(assert (=> bm!628714 (= call!628720 (validRegex!8609 (ite c!1284284 (reg!17232 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))) (ite c!1284285 (regTwo!34319 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))) (regOne!34318 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342)))))))))

(declare-fun b!6915925 () Bool)

(declare-fun e!4163118 () Bool)

(declare-fun e!4163120 () Bool)

(assert (=> b!6915925 (= e!4163118 e!4163120)))

(assert (=> b!6915925 (= c!1284284 ((_ is Star!16903) (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))))))

(declare-fun b!6915926 () Bool)

(declare-fun res!2820107 () Bool)

(declare-fun e!4163116 () Bool)

(assert (=> b!6915926 (=> res!2820107 e!4163116)))

(assert (=> b!6915926 (= res!2820107 (not ((_ is Concat!25748) (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342)))))))

(declare-fun e!4163121 () Bool)

(assert (=> b!6915926 (= e!4163121 e!4163116)))

(declare-fun d!2163923 () Bool)

(declare-fun res!2820109 () Bool)

(assert (=> d!2163923 (=> res!2820109 e!4163118)))

(assert (=> d!2163923 (= res!2820109 ((_ is ElementMatch!16903) (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))))))

(assert (=> d!2163923 (= (validRegex!8609 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))) e!4163118)))

(declare-fun b!6915927 () Bool)

(assert (=> b!6915927 (= e!4163120 e!4163115)))

(declare-fun res!2820108 () Bool)

(assert (=> b!6915927 (= res!2820108 (not (nullable!6738 (reg!17232 (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))))))))

(assert (=> b!6915927 (=> (not res!2820108) (not e!4163115))))

(declare-fun b!6915928 () Bool)

(assert (=> b!6915928 (= e!4163120 e!4163121)))

(assert (=> b!6915928 (= c!1284285 ((_ is Union!16903) (ite c!1284281 (regOne!34319 r1!6342) (regTwo!34318 r1!6342))))))

(declare-fun bm!628715 () Bool)

(assert (=> bm!628715 (= call!628719 call!628720)))

(declare-fun b!6915929 () Bool)

(assert (=> b!6915929 (= e!4163116 e!4163117)))

(declare-fun res!2820110 () Bool)

(assert (=> b!6915929 (=> (not res!2820110) (not e!4163117))))

(assert (=> b!6915929 (= res!2820110 call!628719)))

(declare-fun b!6915930 () Bool)

(declare-fun res!2820111 () Bool)

(assert (=> b!6915930 (=> (not res!2820111) (not e!4163119))))

(assert (=> b!6915930 (= res!2820111 call!628718)))

(assert (=> b!6915930 (= e!4163121 e!4163119)))

(assert (= (and d!2163923 (not res!2820109)) b!6915925))

(assert (= (and b!6915925 c!1284284) b!6915927))

(assert (= (and b!6915925 (not c!1284284)) b!6915928))

(assert (= (and b!6915927 res!2820108) b!6915923))

(assert (= (and b!6915928 c!1284285) b!6915930))

(assert (= (and b!6915928 (not c!1284285)) b!6915926))

(assert (= (and b!6915930 res!2820111) b!6915924))

(assert (= (and b!6915926 (not res!2820107)) b!6915929))

(assert (= (and b!6915929 res!2820110) b!6915922))

(assert (= (or b!6915930 b!6915922) bm!628713))

(assert (= (or b!6915924 b!6915929) bm!628715))

(assert (= (or b!6915923 bm!628715) bm!628714))

(declare-fun m!7628004 () Bool)

(assert (=> bm!628713 m!7628004))

(declare-fun m!7628006 () Bool)

(assert (=> bm!628714 m!7628006))

(declare-fun m!7628008 () Bool)

(assert (=> b!6915927 m!7628008))

(assert (=> bm!628707 d!2163923))

(declare-fun d!2163925 () Bool)

(assert (=> d!2163925 (= (isEmpty!38781 s!14361) ((_ is Nil!66532) s!14361))))

(assert (=> bm!628693 d!2163925))

(declare-fun b!6915931 () Bool)

(declare-fun e!4163124 () Bool)

(declare-fun call!628721 () Bool)

(assert (=> b!6915931 (= e!4163124 call!628721)))

(declare-fun c!1284287 () Bool)

(declare-fun bm!628716 () Bool)

(assert (=> bm!628716 (= call!628721 (validRegex!8609 (ite c!1284287 (regOne!34319 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))) (regTwo!34318 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))))))))

(declare-fun b!6915932 () Bool)

(declare-fun e!4163122 () Bool)

(declare-fun call!628723 () Bool)

(assert (=> b!6915932 (= e!4163122 call!628723)))

(declare-fun b!6915933 () Bool)

(declare-fun e!4163126 () Bool)

(declare-fun call!628722 () Bool)

(assert (=> b!6915933 (= e!4163126 call!628722)))

(declare-fun c!1284286 () Bool)

(declare-fun bm!628717 () Bool)

(assert (=> bm!628717 (= call!628723 (validRegex!8609 (ite c!1284286 (reg!17232 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))) (ite c!1284287 (regTwo!34319 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))) (regOne!34318 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280)))))))))

(declare-fun b!6915934 () Bool)

(declare-fun e!4163125 () Bool)

(declare-fun e!4163127 () Bool)

(assert (=> b!6915934 (= e!4163125 e!4163127)))

(assert (=> b!6915934 (= c!1284286 ((_ is Star!16903) (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))))))

(declare-fun b!6915935 () Bool)

(declare-fun res!2820112 () Bool)

(declare-fun e!4163123 () Bool)

(assert (=> b!6915935 (=> res!2820112 e!4163123)))

(assert (=> b!6915935 (= res!2820112 (not ((_ is Concat!25748) (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280)))))))

(declare-fun e!4163128 () Bool)

(assert (=> b!6915935 (= e!4163128 e!4163123)))

(declare-fun d!2163927 () Bool)

(declare-fun res!2820114 () Bool)

(assert (=> d!2163927 (=> res!2820114 e!4163125)))

(assert (=> d!2163927 (= res!2820114 ((_ is ElementMatch!16903) (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))))))

(assert (=> d!2163927 (= (validRegex!8609 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))) e!4163125)))

(declare-fun b!6915936 () Bool)

(assert (=> b!6915936 (= e!4163127 e!4163122)))

(declare-fun res!2820113 () Bool)

(assert (=> b!6915936 (= res!2820113 (not (nullable!6738 (reg!17232 (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))))))))

(assert (=> b!6915936 (=> (not res!2820113) (not e!4163122))))

(declare-fun b!6915937 () Bool)

(assert (=> b!6915937 (= e!4163127 e!4163128)))

(assert (=> b!6915937 (= c!1284287 ((_ is Union!16903) (ite c!1284229 (regOne!34319 r2!6280) (regTwo!34318 r2!6280))))))

(declare-fun bm!628718 () Bool)

(assert (=> bm!628718 (= call!628722 call!628723)))

(declare-fun b!6915938 () Bool)

(assert (=> b!6915938 (= e!4163123 e!4163124)))

(declare-fun res!2820115 () Bool)

(assert (=> b!6915938 (=> (not res!2820115) (not e!4163124))))

(assert (=> b!6915938 (= res!2820115 call!628722)))

(declare-fun b!6915939 () Bool)

(declare-fun res!2820116 () Bool)

(assert (=> b!6915939 (=> (not res!2820116) (not e!4163126))))

(assert (=> b!6915939 (= res!2820116 call!628721)))

(assert (=> b!6915939 (= e!4163128 e!4163126)))

(assert (= (and d!2163927 (not res!2820114)) b!6915934))

(assert (= (and b!6915934 c!1284286) b!6915936))

(assert (= (and b!6915934 (not c!1284286)) b!6915937))

(assert (= (and b!6915936 res!2820113) b!6915932))

(assert (= (and b!6915937 c!1284287) b!6915939))

(assert (= (and b!6915937 (not c!1284287)) b!6915935))

(assert (= (and b!6915939 res!2820116) b!6915933))

(assert (= (and b!6915935 (not res!2820112)) b!6915938))

(assert (= (and b!6915938 res!2820115) b!6915931))

(assert (= (or b!6915939 b!6915931) bm!628716))

(assert (= (or b!6915933 b!6915938) bm!628718))

(assert (= (or b!6915932 bm!628718) bm!628717))

(declare-fun m!7628010 () Bool)

(assert (=> bm!628716 m!7628010))

(declare-fun m!7628012 () Bool)

(assert (=> bm!628717 m!7628012))

(declare-fun m!7628014 () Bool)

(assert (=> b!6915936 m!7628014))

(assert (=> bm!628674 d!2163927))

(declare-fun b!6915940 () Bool)

(declare-fun e!4163131 () Bool)

(declare-fun call!628724 () Bool)

(assert (=> b!6915940 (= e!4163131 call!628724)))

(declare-fun bm!628719 () Bool)

(declare-fun c!1284289 () Bool)

(assert (=> bm!628719 (= call!628724 (validRegex!8609 (ite c!1284289 (regOne!34319 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))) (regTwo!34318 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))))

(declare-fun b!6915941 () Bool)

(declare-fun e!4163129 () Bool)

(declare-fun call!628726 () Bool)

(assert (=> b!6915941 (= e!4163129 call!628726)))

(declare-fun b!6915942 () Bool)

(declare-fun e!4163133 () Bool)

(declare-fun call!628725 () Bool)

(assert (=> b!6915942 (= e!4163133 call!628725)))

(declare-fun bm!628720 () Bool)

(declare-fun c!1284288 () Bool)

(assert (=> bm!628720 (= call!628726 (validRegex!8609 (ite c!1284288 (reg!17232 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))) (ite c!1284289 (regTwo!34319 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))) (regOne!34318 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))))

(declare-fun b!6915943 () Bool)

(declare-fun e!4163132 () Bool)

(declare-fun e!4163134 () Bool)

(assert (=> b!6915943 (= e!4163132 e!4163134)))

(assert (=> b!6915943 (= c!1284288 ((_ is Star!16903) (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))

(declare-fun b!6915944 () Bool)

(declare-fun res!2820117 () Bool)

(declare-fun e!4163130 () Bool)

(assert (=> b!6915944 (=> res!2820117 e!4163130)))

(assert (=> b!6915944 (= res!2820117 (not ((_ is Concat!25748) (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))

(declare-fun e!4163135 () Bool)

(assert (=> b!6915944 (= e!4163135 e!4163130)))

(declare-fun d!2163929 () Bool)

(declare-fun res!2820119 () Bool)

(assert (=> d!2163929 (=> res!2820119 e!4163132)))

(assert (=> d!2163929 (= res!2820119 ((_ is ElementMatch!16903) (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))

(assert (=> d!2163929 (= (validRegex!8609 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))) e!4163132)))

(declare-fun b!6915945 () Bool)

(assert (=> b!6915945 (= e!4163134 e!4163129)))

(declare-fun res!2820118 () Bool)

(assert (=> b!6915945 (= res!2820118 (not (nullable!6738 (reg!17232 (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))))

(assert (=> b!6915945 (=> (not res!2820118) (not e!4163129))))

(declare-fun b!6915946 () Bool)

(assert (=> b!6915946 (= e!4163134 e!4163135)))

(assert (=> b!6915946 (= c!1284289 ((_ is Union!16903) (ite c!1284235 (regOne!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regTwo!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))

(declare-fun bm!628721 () Bool)

(assert (=> bm!628721 (= call!628725 call!628726)))

(declare-fun b!6915947 () Bool)

(assert (=> b!6915947 (= e!4163130 e!4163131)))

(declare-fun res!2820120 () Bool)

(assert (=> b!6915947 (=> (not res!2820120) (not e!4163131))))

(assert (=> b!6915947 (= res!2820120 call!628725)))

(declare-fun b!6915948 () Bool)

(declare-fun res!2820121 () Bool)

(assert (=> b!6915948 (=> (not res!2820121) (not e!4163133))))

(assert (=> b!6915948 (= res!2820121 call!628724)))

(assert (=> b!6915948 (= e!4163135 e!4163133)))

(assert (= (and d!2163929 (not res!2820119)) b!6915943))

(assert (= (and b!6915943 c!1284288) b!6915945))

(assert (= (and b!6915943 (not c!1284288)) b!6915946))

(assert (= (and b!6915945 res!2820118) b!6915941))

(assert (= (and b!6915946 c!1284289) b!6915948))

(assert (= (and b!6915946 (not c!1284289)) b!6915944))

(assert (= (and b!6915948 res!2820121) b!6915942))

(assert (= (and b!6915944 (not res!2820117)) b!6915947))

(assert (= (and b!6915947 res!2820120) b!6915940))

(assert (= (or b!6915948 b!6915940) bm!628719))

(assert (= (or b!6915942 b!6915947) bm!628721))

(assert (= (or b!6915941 bm!628721) bm!628720))

(declare-fun m!7628016 () Bool)

(assert (=> bm!628719 m!7628016))

(declare-fun m!7628018 () Bool)

(assert (=> bm!628720 m!7628018))

(declare-fun m!7628020 () Bool)

(assert (=> b!6915945 m!7628020))

(assert (=> bm!628683 d!2163929))

(declare-fun d!2163931 () Bool)

(declare-fun nullableFct!2538 (Regex!16903) Bool)

(assert (=> d!2163931 (= (nullable!6738 (reg!17232 r3!135)) (nullableFct!2538 (reg!17232 r3!135)))))

(declare-fun bs!1845868 () Bool)

(assert (= bs!1845868 d!2163931))

(declare-fun m!7628022 () Bool)

(assert (=> bs!1845868 m!7628022))

(assert (=> b!6915843 d!2163931))

(declare-fun bs!1845869 () Bool)

(declare-fun b!6915951 () Bool)

(assert (= bs!1845869 (and b!6915951 b!6915816)))

(declare-fun lambda!393031 () Int)

(assert (=> bs!1845869 (= (and (= (reg!17232 (regOne!34319 lt!2469311)) (reg!17232 lt!2469311)) (= (regOne!34319 lt!2469311) lt!2469311)) (= lambda!393031 lambda!393029))))

(declare-fun bs!1845870 () Bool)

(assert (= bs!1845870 (and b!6915951 b!6915822)))

(assert (=> bs!1845870 (not (= lambda!393031 lambda!393030))))

(assert (=> b!6915951 true))

(assert (=> b!6915951 true))

(declare-fun bs!1845871 () Bool)

(declare-fun b!6915957 () Bool)

(assert (= bs!1845871 (and b!6915957 b!6915816)))

(declare-fun lambda!393032 () Int)

(assert (=> bs!1845871 (not (= lambda!393032 lambda!393029))))

(declare-fun bs!1845872 () Bool)

(assert (= bs!1845872 (and b!6915957 b!6915822)))

(assert (=> bs!1845872 (= (and (= (regOne!34318 (regOne!34319 lt!2469311)) (regOne!34318 lt!2469311)) (= (regTwo!34318 (regOne!34319 lt!2469311)) (regTwo!34318 lt!2469311))) (= lambda!393032 lambda!393030))))

(declare-fun bs!1845873 () Bool)

(assert (= bs!1845873 (and b!6915957 b!6915951)))

(assert (=> bs!1845873 (not (= lambda!393032 lambda!393031))))

(assert (=> b!6915957 true))

(assert (=> b!6915957 true))

(declare-fun call!628727 () Bool)

(declare-fun bm!628722 () Bool)

(declare-fun c!1284292 () Bool)

(assert (=> bm!628722 (= call!628727 (Exists!3905 (ite c!1284292 lambda!393031 lambda!393032)))))

(declare-fun b!6915949 () Bool)

(declare-fun res!2820124 () Bool)

(declare-fun e!4163142 () Bool)

(assert (=> b!6915949 (=> res!2820124 e!4163142)))

(declare-fun call!628728 () Bool)

(assert (=> b!6915949 (= res!2820124 call!628728)))

(declare-fun e!4163140 () Bool)

(assert (=> b!6915949 (= e!4163140 e!4163142)))

(declare-fun b!6915950 () Bool)

(declare-fun c!1284293 () Bool)

(assert (=> b!6915950 (= c!1284293 ((_ is Union!16903) (regOne!34319 lt!2469311)))))

(declare-fun e!4163139 () Bool)

(declare-fun e!4163138 () Bool)

(assert (=> b!6915950 (= e!4163139 e!4163138)))

(assert (=> b!6915951 (= e!4163142 call!628727)))

(declare-fun d!2163933 () Bool)

(declare-fun c!1284291 () Bool)

(assert (=> d!2163933 (= c!1284291 ((_ is EmptyExpr!16903) (regOne!34319 lt!2469311)))))

(declare-fun e!4163137 () Bool)

(assert (=> d!2163933 (= (matchRSpec!3960 (regOne!34319 lt!2469311) s!14361) e!4163137)))

(declare-fun b!6915952 () Bool)

(declare-fun e!4163141 () Bool)

(assert (=> b!6915952 (= e!4163141 (matchRSpec!3960 (regTwo!34319 (regOne!34319 lt!2469311)) s!14361))))

(declare-fun b!6915953 () Bool)

(assert (=> b!6915953 (= e!4163137 call!628728)))

(declare-fun b!6915954 () Bool)

(declare-fun c!1284290 () Bool)

(assert (=> b!6915954 (= c!1284290 ((_ is ElementMatch!16903) (regOne!34319 lt!2469311)))))

(declare-fun e!4163136 () Bool)

(assert (=> b!6915954 (= e!4163136 e!4163139)))

(declare-fun b!6915955 () Bool)

(assert (=> b!6915955 (= e!4163138 e!4163140)))

(assert (=> b!6915955 (= c!1284292 ((_ is Star!16903) (regOne!34319 lt!2469311)))))

(declare-fun b!6915956 () Bool)

(assert (=> b!6915956 (= e!4163138 e!4163141)))

(declare-fun res!2820122 () Bool)

(assert (=> b!6915956 (= res!2820122 (matchRSpec!3960 (regOne!34319 (regOne!34319 lt!2469311)) s!14361))))

(assert (=> b!6915956 (=> res!2820122 e!4163141)))

(assert (=> b!6915957 (= e!4163140 call!628727)))

(declare-fun b!6915958 () Bool)

(assert (=> b!6915958 (= e!4163137 e!4163136)))

(declare-fun res!2820123 () Bool)

(assert (=> b!6915958 (= res!2820123 (not ((_ is EmptyLang!16903) (regOne!34319 lt!2469311))))))

(assert (=> b!6915958 (=> (not res!2820123) (not e!4163136))))

(declare-fun bm!628723 () Bool)

(assert (=> bm!628723 (= call!628728 (isEmpty!38781 s!14361))))

(declare-fun b!6915959 () Bool)

(assert (=> b!6915959 (= e!4163139 (= s!14361 (Cons!66532 (c!1284217 (regOne!34319 lt!2469311)) Nil!66532)))))

(assert (= (and d!2163933 c!1284291) b!6915953))

(assert (= (and d!2163933 (not c!1284291)) b!6915958))

(assert (= (and b!6915958 res!2820123) b!6915954))

(assert (= (and b!6915954 c!1284290) b!6915959))

(assert (= (and b!6915954 (not c!1284290)) b!6915950))

(assert (= (and b!6915950 c!1284293) b!6915956))

(assert (= (and b!6915950 (not c!1284293)) b!6915955))

(assert (= (and b!6915956 (not res!2820122)) b!6915952))

(assert (= (and b!6915955 c!1284292) b!6915949))

(assert (= (and b!6915955 (not c!1284292)) b!6915957))

(assert (= (and b!6915949 (not res!2820124)) b!6915951))

(assert (= (or b!6915951 b!6915957) bm!628722))

(assert (= (or b!6915953 b!6915949) bm!628723))

(declare-fun m!7628024 () Bool)

(assert (=> bm!628722 m!7628024))

(declare-fun m!7628026 () Bool)

(assert (=> b!6915952 m!7628026))

(declare-fun m!7628028 () Bool)

(assert (=> b!6915956 m!7628028))

(assert (=> bm!628723 m!7627968))

(assert (=> b!6915821 d!2163933))

(declare-fun d!2163937 () Bool)

(assert (=> d!2163937 (= (isEmpty!38781 (tail!12918 s!14361)) ((_ is Nil!66532) (tail!12918 s!14361)))))

(assert (=> b!6915632 d!2163937))

(declare-fun d!2163939 () Bool)

(assert (=> d!2163939 (= (tail!12918 s!14361) (t!380399 s!14361))))

(assert (=> b!6915632 d!2163939))

(declare-fun b!6915969 () Bool)

(declare-fun e!4163152 () Bool)

(declare-fun call!628732 () Bool)

(assert (=> b!6915969 (= e!4163152 call!628732)))

(declare-fun bm!628727 () Bool)

(declare-fun c!1284297 () Bool)

(assert (=> bm!628727 (= call!628732 (validRegex!8609 (ite c!1284297 (regOne!34319 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))) (regTwo!34318 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))))))))

(declare-fun b!6915970 () Bool)

(declare-fun e!4163150 () Bool)

(declare-fun call!628734 () Bool)

(assert (=> b!6915970 (= e!4163150 call!628734)))

(declare-fun b!6915971 () Bool)

(declare-fun e!4163154 () Bool)

(declare-fun call!628733 () Bool)

(assert (=> b!6915971 (= e!4163154 call!628733)))

(declare-fun c!1284296 () Bool)

(declare-fun bm!628728 () Bool)

(assert (=> bm!628728 (= call!628734 (validRegex!8609 (ite c!1284296 (reg!17232 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))) (ite c!1284297 (regTwo!34319 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))) (regOne!34318 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135))))))))))

(declare-fun b!6915972 () Bool)

(declare-fun e!4163153 () Bool)

(declare-fun e!4163155 () Bool)

(assert (=> b!6915972 (= e!4163153 e!4163155)))

(assert (=> b!6915972 (= c!1284296 ((_ is Star!16903) (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))))))

(declare-fun b!6915973 () Bool)

(declare-fun res!2820130 () Bool)

(declare-fun e!4163151 () Bool)

(assert (=> b!6915973 (=> res!2820130 e!4163151)))

(assert (=> b!6915973 (= res!2820130 (not ((_ is Concat!25748) (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135))))))))

(declare-fun e!4163156 () Bool)

(assert (=> b!6915973 (= e!4163156 e!4163151)))

(declare-fun d!2163941 () Bool)

(declare-fun res!2820132 () Bool)

(assert (=> d!2163941 (=> res!2820132 e!4163153)))

(assert (=> d!2163941 (= res!2820132 ((_ is ElementMatch!16903) (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))))))

(assert (=> d!2163941 (= (validRegex!8609 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))) e!4163153)))

(declare-fun b!6915974 () Bool)

(assert (=> b!6915974 (= e!4163155 e!4163150)))

(declare-fun res!2820131 () Bool)

(assert (=> b!6915974 (= res!2820131 (not (nullable!6738 (reg!17232 (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))))))))

(assert (=> b!6915974 (=> (not res!2820131) (not e!4163150))))

(declare-fun b!6915975 () Bool)

(assert (=> b!6915975 (= e!4163155 e!4163156)))

(assert (=> b!6915975 (= c!1284297 ((_ is Union!16903) (ite c!1284282 (reg!17232 r3!135) (ite c!1284283 (regTwo!34319 r3!135) (regOne!34318 r3!135)))))))

(declare-fun bm!628729 () Bool)

(assert (=> bm!628729 (= call!628733 call!628734)))

(declare-fun b!6915976 () Bool)

(assert (=> b!6915976 (= e!4163151 e!4163152)))

(declare-fun res!2820133 () Bool)

(assert (=> b!6915976 (=> (not res!2820133) (not e!4163152))))

(assert (=> b!6915976 (= res!2820133 call!628733)))

(declare-fun b!6915977 () Bool)

(declare-fun res!2820134 () Bool)

(assert (=> b!6915977 (=> (not res!2820134) (not e!4163154))))

(assert (=> b!6915977 (= res!2820134 call!628732)))

(assert (=> b!6915977 (= e!4163156 e!4163154)))

(assert (= (and d!2163941 (not res!2820132)) b!6915972))

(assert (= (and b!6915972 c!1284296) b!6915974))

(assert (= (and b!6915972 (not c!1284296)) b!6915975))

(assert (= (and b!6915974 res!2820131) b!6915970))

(assert (= (and b!6915975 c!1284297) b!6915977))

(assert (= (and b!6915975 (not c!1284297)) b!6915973))

(assert (= (and b!6915977 res!2820134) b!6915971))

(assert (= (and b!6915973 (not res!2820130)) b!6915976))

(assert (= (and b!6915976 res!2820133) b!6915969))

(assert (= (or b!6915977 b!6915969) bm!628727))

(assert (= (or b!6915971 b!6915976) bm!628729))

(assert (= (or b!6915970 bm!628729) bm!628728))

(declare-fun m!7628036 () Bool)

(assert (=> bm!628727 m!7628036))

(declare-fun m!7628038 () Bool)

(assert (=> bm!628728 m!7628038))

(declare-fun m!7628040 () Bool)

(assert (=> b!6915974 m!7628040))

(assert (=> bm!628711 d!2163941))

(declare-fun bs!1845874 () Bool)

(declare-fun b!6915980 () Bool)

(assert (= bs!1845874 (and b!6915980 b!6915816)))

(declare-fun lambda!393033 () Int)

(assert (=> bs!1845874 (= (and (= (reg!17232 (regTwo!34319 lt!2469311)) (reg!17232 lt!2469311)) (= (regTwo!34319 lt!2469311) lt!2469311)) (= lambda!393033 lambda!393029))))

(declare-fun bs!1845875 () Bool)

(assert (= bs!1845875 (and b!6915980 b!6915822)))

(assert (=> bs!1845875 (not (= lambda!393033 lambda!393030))))

(declare-fun bs!1845876 () Bool)

(assert (= bs!1845876 (and b!6915980 b!6915951)))

(assert (=> bs!1845876 (= (and (= (reg!17232 (regTwo!34319 lt!2469311)) (reg!17232 (regOne!34319 lt!2469311))) (= (regTwo!34319 lt!2469311) (regOne!34319 lt!2469311))) (= lambda!393033 lambda!393031))))

(declare-fun bs!1845877 () Bool)

(assert (= bs!1845877 (and b!6915980 b!6915957)))

(assert (=> bs!1845877 (not (= lambda!393033 lambda!393032))))

(assert (=> b!6915980 true))

(assert (=> b!6915980 true))

(declare-fun bs!1845878 () Bool)

(declare-fun b!6915986 () Bool)

(assert (= bs!1845878 (and b!6915986 b!6915957)))

(declare-fun lambda!393034 () Int)

(assert (=> bs!1845878 (= (and (= (regOne!34318 (regTwo!34319 lt!2469311)) (regOne!34318 (regOne!34319 lt!2469311))) (= (regTwo!34318 (regTwo!34319 lt!2469311)) (regTwo!34318 (regOne!34319 lt!2469311)))) (= lambda!393034 lambda!393032))))

(declare-fun bs!1845879 () Bool)

(assert (= bs!1845879 (and b!6915986 b!6915980)))

(assert (=> bs!1845879 (not (= lambda!393034 lambda!393033))))

(declare-fun bs!1845880 () Bool)

(assert (= bs!1845880 (and b!6915986 b!6915822)))

(assert (=> bs!1845880 (= (and (= (regOne!34318 (regTwo!34319 lt!2469311)) (regOne!34318 lt!2469311)) (= (regTwo!34318 (regTwo!34319 lt!2469311)) (regTwo!34318 lt!2469311))) (= lambda!393034 lambda!393030))))

(declare-fun bs!1845881 () Bool)

(assert (= bs!1845881 (and b!6915986 b!6915816)))

(assert (=> bs!1845881 (not (= lambda!393034 lambda!393029))))

(declare-fun bs!1845882 () Bool)

(assert (= bs!1845882 (and b!6915986 b!6915951)))

(assert (=> bs!1845882 (not (= lambda!393034 lambda!393031))))

(assert (=> b!6915986 true))

(assert (=> b!6915986 true))

(declare-fun call!628735 () Bool)

(declare-fun c!1284300 () Bool)

(declare-fun bm!628730 () Bool)

(assert (=> bm!628730 (= call!628735 (Exists!3905 (ite c!1284300 lambda!393033 lambda!393034)))))

(declare-fun b!6915978 () Bool)

(declare-fun res!2820137 () Bool)

(declare-fun e!4163163 () Bool)

(assert (=> b!6915978 (=> res!2820137 e!4163163)))

(declare-fun call!628736 () Bool)

(assert (=> b!6915978 (= res!2820137 call!628736)))

(declare-fun e!4163161 () Bool)

(assert (=> b!6915978 (= e!4163161 e!4163163)))

(declare-fun b!6915979 () Bool)

(declare-fun c!1284301 () Bool)

(assert (=> b!6915979 (= c!1284301 ((_ is Union!16903) (regTwo!34319 lt!2469311)))))

(declare-fun e!4163160 () Bool)

(declare-fun e!4163159 () Bool)

(assert (=> b!6915979 (= e!4163160 e!4163159)))

(assert (=> b!6915980 (= e!4163163 call!628735)))

(declare-fun d!2163945 () Bool)

(declare-fun c!1284299 () Bool)

(assert (=> d!2163945 (= c!1284299 ((_ is EmptyExpr!16903) (regTwo!34319 lt!2469311)))))

(declare-fun e!4163158 () Bool)

(assert (=> d!2163945 (= (matchRSpec!3960 (regTwo!34319 lt!2469311) s!14361) e!4163158)))

(declare-fun b!6915981 () Bool)

(declare-fun e!4163162 () Bool)

(assert (=> b!6915981 (= e!4163162 (matchRSpec!3960 (regTwo!34319 (regTwo!34319 lt!2469311)) s!14361))))

(declare-fun b!6915982 () Bool)

(assert (=> b!6915982 (= e!4163158 call!628736)))

(declare-fun b!6915983 () Bool)

(declare-fun c!1284298 () Bool)

(assert (=> b!6915983 (= c!1284298 ((_ is ElementMatch!16903) (regTwo!34319 lt!2469311)))))

(declare-fun e!4163157 () Bool)

(assert (=> b!6915983 (= e!4163157 e!4163160)))

(declare-fun b!6915984 () Bool)

(assert (=> b!6915984 (= e!4163159 e!4163161)))

(assert (=> b!6915984 (= c!1284300 ((_ is Star!16903) (regTwo!34319 lt!2469311)))))

(declare-fun b!6915985 () Bool)

(assert (=> b!6915985 (= e!4163159 e!4163162)))

(declare-fun res!2820135 () Bool)

(assert (=> b!6915985 (= res!2820135 (matchRSpec!3960 (regOne!34319 (regTwo!34319 lt!2469311)) s!14361))))

(assert (=> b!6915985 (=> res!2820135 e!4163162)))

(assert (=> b!6915986 (= e!4163161 call!628735)))

(declare-fun b!6915987 () Bool)

(assert (=> b!6915987 (= e!4163158 e!4163157)))

(declare-fun res!2820136 () Bool)

(assert (=> b!6915987 (= res!2820136 (not ((_ is EmptyLang!16903) (regTwo!34319 lt!2469311))))))

(assert (=> b!6915987 (=> (not res!2820136) (not e!4163157))))

(declare-fun bm!628731 () Bool)

(assert (=> bm!628731 (= call!628736 (isEmpty!38781 s!14361))))

(declare-fun b!6915988 () Bool)

(assert (=> b!6915988 (= e!4163160 (= s!14361 (Cons!66532 (c!1284217 (regTwo!34319 lt!2469311)) Nil!66532)))))

(assert (= (and d!2163945 c!1284299) b!6915982))

(assert (= (and d!2163945 (not c!1284299)) b!6915987))

(assert (= (and b!6915987 res!2820136) b!6915983))

(assert (= (and b!6915983 c!1284298) b!6915988))

(assert (= (and b!6915983 (not c!1284298)) b!6915979))

(assert (= (and b!6915979 c!1284301) b!6915985))

(assert (= (and b!6915979 (not c!1284301)) b!6915984))

(assert (= (and b!6915985 (not res!2820135)) b!6915981))

(assert (= (and b!6915984 c!1284300) b!6915978))

(assert (= (and b!6915984 (not c!1284300)) b!6915986))

(assert (= (and b!6915978 (not res!2820137)) b!6915980))

(assert (= (or b!6915980 b!6915986) bm!628730))

(assert (= (or b!6915982 b!6915978) bm!628731))

(declare-fun m!7628042 () Bool)

(assert (=> bm!628730 m!7628042))

(declare-fun m!7628044 () Bool)

(assert (=> b!6915981 m!7628044))

(declare-fun m!7628046 () Bool)

(assert (=> b!6915985 m!7628046))

(assert (=> bm!628731 m!7627968))

(assert (=> b!6915817 d!2163945))

(declare-fun b!6915989 () Bool)

(declare-fun e!4163166 () Bool)

(declare-fun call!628737 () Bool)

(assert (=> b!6915989 (= e!4163166 call!628737)))

(declare-fun c!1284303 () Bool)

(declare-fun bm!628732 () Bool)

(assert (=> bm!628732 (= call!628737 (validRegex!8609 (ite c!1284303 (regOne!34319 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))) (regTwo!34318 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))))))))

(declare-fun b!6915990 () Bool)

(declare-fun e!4163164 () Bool)

(declare-fun call!628739 () Bool)

(assert (=> b!6915990 (= e!4163164 call!628739)))

(declare-fun b!6915991 () Bool)

(declare-fun e!4163168 () Bool)

(declare-fun call!628738 () Bool)

(assert (=> b!6915991 (= e!4163168 call!628738)))

(declare-fun bm!628733 () Bool)

(declare-fun c!1284302 () Bool)

(assert (=> bm!628733 (= call!628739 (validRegex!8609 (ite c!1284302 (reg!17232 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))) (ite c!1284303 (regTwo!34319 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))) (regOne!34318 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135)))))))))

(declare-fun b!6915992 () Bool)

(declare-fun e!4163167 () Bool)

(declare-fun e!4163169 () Bool)

(assert (=> b!6915992 (= e!4163167 e!4163169)))

(assert (=> b!6915992 (= c!1284302 ((_ is Star!16903) (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))))))

(declare-fun b!6915993 () Bool)

(declare-fun res!2820138 () Bool)

(declare-fun e!4163165 () Bool)

(assert (=> b!6915993 (=> res!2820138 e!4163165)))

(assert (=> b!6915993 (= res!2820138 (not ((_ is Concat!25748) (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135)))))))

(declare-fun e!4163170 () Bool)

(assert (=> b!6915993 (= e!4163170 e!4163165)))

(declare-fun d!2163953 () Bool)

(declare-fun res!2820140 () Bool)

(assert (=> d!2163953 (=> res!2820140 e!4163167)))

(assert (=> d!2163953 (= res!2820140 ((_ is ElementMatch!16903) (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))))))

(assert (=> d!2163953 (= (validRegex!8609 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))) e!4163167)))

(declare-fun b!6915994 () Bool)

(assert (=> b!6915994 (= e!4163169 e!4163164)))

(declare-fun res!2820139 () Bool)

(assert (=> b!6915994 (= res!2820139 (not (nullable!6738 (reg!17232 (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))))))))

(assert (=> b!6915994 (=> (not res!2820139) (not e!4163164))))

(declare-fun b!6915995 () Bool)

(assert (=> b!6915995 (= e!4163169 e!4163170)))

(assert (=> b!6915995 (= c!1284303 ((_ is Union!16903) (ite c!1284283 (regOne!34319 r3!135) (regTwo!34318 r3!135))))))

(declare-fun bm!628734 () Bool)

(assert (=> bm!628734 (= call!628738 call!628739)))

(declare-fun b!6915996 () Bool)

(assert (=> b!6915996 (= e!4163165 e!4163166)))

(declare-fun res!2820141 () Bool)

(assert (=> b!6915996 (=> (not res!2820141) (not e!4163166))))

(assert (=> b!6915996 (= res!2820141 call!628738)))

(declare-fun b!6915997 () Bool)

(declare-fun res!2820142 () Bool)

(assert (=> b!6915997 (=> (not res!2820142) (not e!4163168))))

(assert (=> b!6915997 (= res!2820142 call!628737)))

(assert (=> b!6915997 (= e!4163170 e!4163168)))

(assert (= (and d!2163953 (not res!2820140)) b!6915992))

(assert (= (and b!6915992 c!1284302) b!6915994))

(assert (= (and b!6915992 (not c!1284302)) b!6915995))

(assert (= (and b!6915994 res!2820139) b!6915990))

(assert (= (and b!6915995 c!1284303) b!6915997))

(assert (= (and b!6915995 (not c!1284303)) b!6915993))

(assert (= (and b!6915997 res!2820142) b!6915991))

(assert (= (and b!6915993 (not res!2820138)) b!6915996))

(assert (= (and b!6915996 res!2820141) b!6915989))

(assert (= (or b!6915997 b!6915989) bm!628732))

(assert (= (or b!6915991 b!6915996) bm!628734))

(assert (= (or b!6915990 bm!628734) bm!628733))

(declare-fun m!7628048 () Bool)

(assert (=> bm!628732 m!7628048))

(declare-fun m!7628050 () Bool)

(assert (=> bm!628733 m!7628050))

(declare-fun m!7628052 () Bool)

(assert (=> b!6915994 m!7628052))

(assert (=> bm!628710 d!2163953))

(declare-fun d!2163955 () Bool)

(assert (=> d!2163955 (= (nullable!6738 lt!2469311) (nullableFct!2538 lt!2469311))))

(declare-fun bs!1845883 () Bool)

(assert (= bs!1845883 d!2163955))

(declare-fun m!7628054 () Bool)

(assert (=> bs!1845883 m!7628054))

(assert (=> b!6915645 d!2163955))

(assert (=> d!2163907 d!2163925))

(declare-fun b!6915998 () Bool)

(declare-fun e!4163173 () Bool)

(declare-fun call!628740 () Bool)

(assert (=> b!6915998 (= e!4163173 call!628740)))

(declare-fun bm!628735 () Bool)

(declare-fun c!1284305 () Bool)

(assert (=> bm!628735 (= call!628740 (validRegex!8609 (ite c!1284305 (regOne!34319 lt!2469311) (regTwo!34318 lt!2469311))))))

(declare-fun b!6915999 () Bool)

(declare-fun e!4163171 () Bool)

(declare-fun call!628742 () Bool)

(assert (=> b!6915999 (= e!4163171 call!628742)))

(declare-fun b!6916000 () Bool)

(declare-fun e!4163175 () Bool)

(declare-fun call!628741 () Bool)

(assert (=> b!6916000 (= e!4163175 call!628741)))

(declare-fun bm!628736 () Bool)

(declare-fun c!1284304 () Bool)

(assert (=> bm!628736 (= call!628742 (validRegex!8609 (ite c!1284304 (reg!17232 lt!2469311) (ite c!1284305 (regTwo!34319 lt!2469311) (regOne!34318 lt!2469311)))))))

(declare-fun b!6916001 () Bool)

(declare-fun e!4163174 () Bool)

(declare-fun e!4163176 () Bool)

(assert (=> b!6916001 (= e!4163174 e!4163176)))

(assert (=> b!6916001 (= c!1284304 ((_ is Star!16903) lt!2469311))))

(declare-fun b!6916002 () Bool)

(declare-fun res!2820143 () Bool)

(declare-fun e!4163172 () Bool)

(assert (=> b!6916002 (=> res!2820143 e!4163172)))

(assert (=> b!6916002 (= res!2820143 (not ((_ is Concat!25748) lt!2469311)))))

(declare-fun e!4163177 () Bool)

(assert (=> b!6916002 (= e!4163177 e!4163172)))

(declare-fun d!2163957 () Bool)

(declare-fun res!2820145 () Bool)

(assert (=> d!2163957 (=> res!2820145 e!4163174)))

(assert (=> d!2163957 (= res!2820145 ((_ is ElementMatch!16903) lt!2469311))))

(assert (=> d!2163957 (= (validRegex!8609 lt!2469311) e!4163174)))

(declare-fun b!6916003 () Bool)

(assert (=> b!6916003 (= e!4163176 e!4163171)))

(declare-fun res!2820144 () Bool)

(assert (=> b!6916003 (= res!2820144 (not (nullable!6738 (reg!17232 lt!2469311))))))

(assert (=> b!6916003 (=> (not res!2820144) (not e!4163171))))

(declare-fun b!6916004 () Bool)

(assert (=> b!6916004 (= e!4163176 e!4163177)))

(assert (=> b!6916004 (= c!1284305 ((_ is Union!16903) lt!2469311))))

(declare-fun bm!628737 () Bool)

(assert (=> bm!628737 (= call!628741 call!628742)))

(declare-fun b!6916005 () Bool)

(assert (=> b!6916005 (= e!4163172 e!4163173)))

(declare-fun res!2820146 () Bool)

(assert (=> b!6916005 (=> (not res!2820146) (not e!4163173))))

(assert (=> b!6916005 (= res!2820146 call!628741)))

(declare-fun b!6916006 () Bool)

(declare-fun res!2820147 () Bool)

(assert (=> b!6916006 (=> (not res!2820147) (not e!4163175))))

(assert (=> b!6916006 (= res!2820147 call!628740)))

(assert (=> b!6916006 (= e!4163177 e!4163175)))

(assert (= (and d!2163957 (not res!2820145)) b!6916001))

(assert (= (and b!6916001 c!1284304) b!6916003))

(assert (= (and b!6916001 (not c!1284304)) b!6916004))

(assert (= (and b!6916003 res!2820144) b!6915999))

(assert (= (and b!6916004 c!1284305) b!6916006))

(assert (= (and b!6916004 (not c!1284305)) b!6916002))

(assert (= (and b!6916006 res!2820147) b!6916000))

(assert (= (and b!6916002 (not res!2820143)) b!6916005))

(assert (= (and b!6916005 res!2820146) b!6915998))

(assert (= (or b!6916006 b!6915998) bm!628735))

(assert (= (or b!6916000 b!6916005) bm!628737))

(assert (= (or b!6915999 bm!628737) bm!628736))

(declare-fun m!7628056 () Bool)

(assert (=> bm!628735 m!7628056))

(declare-fun m!7628058 () Bool)

(assert (=> bm!628736 m!7628058))

(declare-fun m!7628060 () Bool)

(assert (=> b!6916003 m!7628060))

(assert (=> d!2163907 d!2163957))

(declare-fun d!2163959 () Bool)

(assert (=> d!2163959 (= (head!13866 s!14361) (h!72980 s!14361))))

(assert (=> b!6915643 d!2163959))

(declare-fun b!6916007 () Bool)

(declare-fun res!2820148 () Bool)

(declare-fun e!4163180 () Bool)

(assert (=> b!6916007 (=> (not res!2820148) (not e!4163180))))

(assert (=> b!6916007 (= res!2820148 (isEmpty!38781 (tail!12918 (tail!12918 s!14361))))))

(declare-fun bm!628738 () Bool)

(declare-fun call!628743 () Bool)

(assert (=> bm!628738 (= call!628743 (isEmpty!38781 (tail!12918 s!14361)))))

(declare-fun b!6916008 () Bool)

(declare-fun res!2820153 () Bool)

(assert (=> b!6916008 (=> (not res!2820153) (not e!4163180))))

(assert (=> b!6916008 (= res!2820153 (not call!628743))))

(declare-fun b!6916009 () Bool)

(declare-fun e!4163179 () Bool)

(declare-fun lt!2469324 () Bool)

(assert (=> b!6916009 (= e!4163179 (not lt!2469324))))

(declare-fun b!6916010 () Bool)

(declare-fun e!4163182 () Bool)

(declare-fun e!4163178 () Bool)

(assert (=> b!6916010 (= e!4163182 e!4163178)))

(declare-fun res!2820149 () Bool)

(assert (=> b!6916010 (=> (not res!2820149) (not e!4163178))))

(assert (=> b!6916010 (= res!2820149 (not lt!2469324))))

(declare-fun b!6916011 () Bool)

(declare-fun e!4163181 () Bool)

(assert (=> b!6916011 (= e!4163181 (= lt!2469324 call!628743))))

(declare-fun b!6916012 () Bool)

(declare-fun res!2820151 () Bool)

(assert (=> b!6916012 (=> res!2820151 e!4163182)))

(assert (=> b!6916012 (= res!2820151 (not ((_ is ElementMatch!16903) (derivativeStep!5413 lt!2469311 (head!13866 s!14361)))))))

(assert (=> b!6916012 (= e!4163179 e!4163182)))

(declare-fun b!6916013 () Bool)

(declare-fun res!2820152 () Bool)

(assert (=> b!6916013 (=> res!2820152 e!4163182)))

(assert (=> b!6916013 (= res!2820152 e!4163180)))

(declare-fun res!2820154 () Bool)

(assert (=> b!6916013 (=> (not res!2820154) (not e!4163180))))

(assert (=> b!6916013 (= res!2820154 lt!2469324)))

(declare-fun b!6916014 () Bool)

(declare-fun e!4163184 () Bool)

(assert (=> b!6916014 (= e!4163178 e!4163184)))

(declare-fun res!2820155 () Bool)

(assert (=> b!6916014 (=> res!2820155 e!4163184)))

(assert (=> b!6916014 (= res!2820155 call!628743)))

(declare-fun b!6916015 () Bool)

(assert (=> b!6916015 (= e!4163181 e!4163179)))

(declare-fun c!1284307 () Bool)

(assert (=> b!6916015 (= c!1284307 ((_ is EmptyLang!16903) (derivativeStep!5413 lt!2469311 (head!13866 s!14361))))))

(declare-fun b!6916016 () Bool)

(assert (=> b!6916016 (= e!4163180 (= (head!13866 (tail!12918 s!14361)) (c!1284217 (derivativeStep!5413 lt!2469311 (head!13866 s!14361)))))))

(declare-fun d!2163961 () Bool)

(assert (=> d!2163961 e!4163181))

(declare-fun c!1284306 () Bool)

(assert (=> d!2163961 (= c!1284306 ((_ is EmptyExpr!16903) (derivativeStep!5413 lt!2469311 (head!13866 s!14361))))))

(declare-fun e!4163183 () Bool)

(assert (=> d!2163961 (= lt!2469324 e!4163183)))

(declare-fun c!1284308 () Bool)

(assert (=> d!2163961 (= c!1284308 (isEmpty!38781 (tail!12918 s!14361)))))

(assert (=> d!2163961 (validRegex!8609 (derivativeStep!5413 lt!2469311 (head!13866 s!14361)))))

(assert (=> d!2163961 (= (matchR!9042 (derivativeStep!5413 lt!2469311 (head!13866 s!14361)) (tail!12918 s!14361)) lt!2469324)))

(declare-fun b!6916017 () Bool)

(assert (=> b!6916017 (= e!4163183 (matchR!9042 (derivativeStep!5413 (derivativeStep!5413 lt!2469311 (head!13866 s!14361)) (head!13866 (tail!12918 s!14361))) (tail!12918 (tail!12918 s!14361))))))

(declare-fun b!6916018 () Bool)

(assert (=> b!6916018 (= e!4163184 (not (= (head!13866 (tail!12918 s!14361)) (c!1284217 (derivativeStep!5413 lt!2469311 (head!13866 s!14361))))))))

(declare-fun b!6916019 () Bool)

(declare-fun res!2820150 () Bool)

(assert (=> b!6916019 (=> res!2820150 e!4163184)))

(assert (=> b!6916019 (= res!2820150 (not (isEmpty!38781 (tail!12918 (tail!12918 s!14361)))))))

(declare-fun b!6916020 () Bool)

(assert (=> b!6916020 (= e!4163183 (nullable!6738 (derivativeStep!5413 lt!2469311 (head!13866 s!14361))))))

(assert (= (and d!2163961 c!1284308) b!6916020))

(assert (= (and d!2163961 (not c!1284308)) b!6916017))

(assert (= (and d!2163961 c!1284306) b!6916011))

(assert (= (and d!2163961 (not c!1284306)) b!6916015))

(assert (= (and b!6916015 c!1284307) b!6916009))

(assert (= (and b!6916015 (not c!1284307)) b!6916012))

(assert (= (and b!6916012 (not res!2820151)) b!6916013))

(assert (= (and b!6916013 res!2820154) b!6916008))

(assert (= (and b!6916008 res!2820153) b!6916007))

(assert (= (and b!6916007 res!2820148) b!6916016))

(assert (= (and b!6916013 (not res!2820152)) b!6916010))

(assert (= (and b!6916010 res!2820149) b!6916014))

(assert (= (and b!6916014 (not res!2820155)) b!6916019))

(assert (= (and b!6916019 (not res!2820150)) b!6916018))

(assert (= (or b!6916011 b!6916008 b!6916014) bm!628738))

(assert (=> b!6916007 m!7627946))

(declare-fun m!7628062 () Bool)

(assert (=> b!6916007 m!7628062))

(assert (=> b!6916007 m!7628062))

(declare-fun m!7628064 () Bool)

(assert (=> b!6916007 m!7628064))

(assert (=> b!6916017 m!7627946))

(declare-fun m!7628066 () Bool)

(assert (=> b!6916017 m!7628066))

(assert (=> b!6916017 m!7627958))

(assert (=> b!6916017 m!7628066))

(declare-fun m!7628068 () Bool)

(assert (=> b!6916017 m!7628068))

(assert (=> b!6916017 m!7627946))

(assert (=> b!6916017 m!7628062))

(assert (=> b!6916017 m!7628068))

(assert (=> b!6916017 m!7628062))

(declare-fun m!7628070 () Bool)

(assert (=> b!6916017 m!7628070))

(assert (=> b!6916020 m!7627958))

(declare-fun m!7628072 () Bool)

(assert (=> b!6916020 m!7628072))

(assert (=> b!6916016 m!7627946))

(assert (=> b!6916016 m!7628066))

(assert (=> bm!628738 m!7627946))

(assert (=> bm!628738 m!7627950))

(assert (=> b!6916019 m!7627946))

(assert (=> b!6916019 m!7628062))

(assert (=> b!6916019 m!7628062))

(assert (=> b!6916019 m!7628064))

(assert (=> b!6916018 m!7627946))

(assert (=> b!6916018 m!7628066))

(assert (=> d!2163961 m!7627946))

(assert (=> d!2163961 m!7627950))

(assert (=> d!2163961 m!7627958))

(declare-fun m!7628074 () Bool)

(assert (=> d!2163961 m!7628074))

(assert (=> b!6915642 d!2163961))

(declare-fun b!6916095 () Bool)

(declare-fun e!4163239 () Regex!16903)

(declare-fun e!4163237 () Regex!16903)

(assert (=> b!6916095 (= e!4163239 e!4163237)))

(declare-fun c!1284332 () Bool)

(assert (=> b!6916095 (= c!1284332 ((_ is Star!16903) lt!2469311))))

(declare-fun b!6916096 () Bool)

(declare-fun e!4163241 () Regex!16903)

(assert (=> b!6916096 (= e!4163241 EmptyLang!16903)))

(declare-fun d!2163963 () Bool)

(declare-fun lt!2469327 () Regex!16903)

(assert (=> d!2163963 (validRegex!8609 lt!2469327)))

(assert (=> d!2163963 (= lt!2469327 e!4163241)))

(declare-fun c!1284333 () Bool)

(assert (=> d!2163963 (= c!1284333 (or ((_ is EmptyExpr!16903) lt!2469311) ((_ is EmptyLang!16903) lt!2469311)))))

(assert (=> d!2163963 (validRegex!8609 lt!2469311)))

(assert (=> d!2163963 (= (derivativeStep!5413 lt!2469311 (head!13866 s!14361)) lt!2469327)))

(declare-fun call!628772 () Regex!16903)

(declare-fun c!1284331 () Bool)

(declare-fun bm!628765 () Bool)

(assert (=> bm!628765 (= call!628772 (derivativeStep!5413 (ite c!1284331 (regTwo!34319 lt!2469311) (ite c!1284332 (reg!17232 lt!2469311) (regOne!34318 lt!2469311))) (head!13866 s!14361)))))

(declare-fun b!6916097 () Bool)

(declare-fun call!628773 () Regex!16903)

(assert (=> b!6916097 (= e!4163237 (Concat!25748 call!628773 lt!2469311))))

(declare-fun b!6916098 () Bool)

(declare-fun e!4163240 () Regex!16903)

(declare-fun call!628770 () Regex!16903)

(assert (=> b!6916098 (= e!4163240 (Union!16903 (Concat!25748 call!628770 (regTwo!34318 lt!2469311)) EmptyLang!16903))))

(declare-fun b!6916099 () Bool)

(declare-fun e!4163238 () Regex!16903)

(assert (=> b!6916099 (= e!4163238 (ite (= (head!13866 s!14361) (c!1284217 lt!2469311)) EmptyExpr!16903 EmptyLang!16903))))

(declare-fun bm!628766 () Bool)

(assert (=> bm!628766 (= call!628773 call!628772)))

(declare-fun b!6916100 () Bool)

(declare-fun call!628771 () Regex!16903)

(assert (=> b!6916100 (= e!4163240 (Union!16903 (Concat!25748 call!628770 (regTwo!34318 lt!2469311)) call!628771))))

(declare-fun b!6916101 () Bool)

(assert (=> b!6916101 (= e!4163241 e!4163238)))

(declare-fun c!1284335 () Bool)

(assert (=> b!6916101 (= c!1284335 ((_ is ElementMatch!16903) lt!2469311))))

(declare-fun b!6916102 () Bool)

(assert (=> b!6916102 (= c!1284331 ((_ is Union!16903) lt!2469311))))

(assert (=> b!6916102 (= e!4163238 e!4163239)))

(declare-fun b!6916103 () Bool)

(declare-fun c!1284334 () Bool)

(assert (=> b!6916103 (= c!1284334 (nullable!6738 (regOne!34318 lt!2469311)))))

(assert (=> b!6916103 (= e!4163237 e!4163240)))

(declare-fun bm!628767 () Bool)

(assert (=> bm!628767 (= call!628771 (derivativeStep!5413 (ite c!1284331 (regOne!34319 lt!2469311) (regTwo!34318 lt!2469311)) (head!13866 s!14361)))))

(declare-fun b!6916104 () Bool)

(assert (=> b!6916104 (= e!4163239 (Union!16903 call!628771 call!628772))))

(declare-fun bm!628768 () Bool)

(assert (=> bm!628768 (= call!628770 call!628773)))

(assert (= (and d!2163963 c!1284333) b!6916096))

(assert (= (and d!2163963 (not c!1284333)) b!6916101))

(assert (= (and b!6916101 c!1284335) b!6916099))

(assert (= (and b!6916101 (not c!1284335)) b!6916102))

(assert (= (and b!6916102 c!1284331) b!6916104))

(assert (= (and b!6916102 (not c!1284331)) b!6916095))

(assert (= (and b!6916095 c!1284332) b!6916097))

(assert (= (and b!6916095 (not c!1284332)) b!6916103))

(assert (= (and b!6916103 c!1284334) b!6916100))

(assert (= (and b!6916103 (not c!1284334)) b!6916098))

(assert (= (or b!6916100 b!6916098) bm!628768))

(assert (= (or b!6916097 bm!628768) bm!628766))

(assert (= (or b!6916104 bm!628766) bm!628765))

(assert (= (or b!6916104 b!6916100) bm!628767))

(declare-fun m!7628118 () Bool)

(assert (=> d!2163963 m!7628118))

(assert (=> d!2163963 m!7627974))

(assert (=> bm!628765 m!7627954))

(declare-fun m!7628120 () Bool)

(assert (=> bm!628765 m!7628120))

(declare-fun m!7628122 () Bool)

(assert (=> b!6916103 m!7628122))

(assert (=> bm!628767 m!7627954))

(declare-fun m!7628124 () Bool)

(assert (=> bm!628767 m!7628124))

(assert (=> b!6915642 d!2163963))

(assert (=> b!6915642 d!2163959))

(assert (=> b!6915642 d!2163939))

(assert (=> b!6915644 d!2163937))

(assert (=> b!6915644 d!2163939))

(declare-fun d!2163987 () Bool)

(declare-fun choose!51500 (Int) Bool)

(assert (=> d!2163987 (= (Exists!3905 (ite c!1284278 lambda!393029 lambda!393030)) (choose!51500 (ite c!1284278 lambda!393029 lambda!393030)))))

(declare-fun bs!1845888 () Bool)

(assert (= bs!1845888 d!2163987))

(declare-fun m!7628132 () Bool)

(assert (=> bs!1845888 m!7628132))

(assert (=> bm!628705 d!2163987))

(declare-fun d!2163991 () Bool)

(assert (=> d!2163991 (= (nullable!6738 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))) (nullableFct!2538 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))

(declare-fun bs!1845889 () Bool)

(assert (= bs!1845889 d!2163991))

(declare-fun m!7628134 () Bool)

(assert (=> bs!1845889 m!7628134))

(assert (=> b!6915563 d!2163991))

(assert (=> d!2163917 d!2163907))

(assert (=> d!2163917 d!2163913))

(declare-fun d!2163993 () Bool)

(assert (=> d!2163993 (= (matchR!9042 lt!2469311 s!14361) (matchRSpec!3960 lt!2469311 s!14361))))

(assert (=> d!2163993 true))

(declare-fun _$88!5744 () Unit!160530)

(assert (=> d!2163993 (= (choose!51499 lt!2469311 s!14361) _$88!5744)))

(declare-fun bs!1845893 () Bool)

(assert (= bs!1845893 d!2163993))

(assert (=> bs!1845893 m!7627900))

(assert (=> bs!1845893 m!7627902))

(assert (=> d!2163917 d!2163993))

(assert (=> d!2163917 d!2163957))

(assert (=> b!6915641 d!2163959))

(declare-fun d!2163995 () Bool)

(assert (=> d!2163995 (= (nullable!6738 (reg!17232 r2!6280)) (nullableFct!2538 (reg!17232 r2!6280)))))

(declare-fun bs!1845896 () Bool)

(assert (= bs!1845896 d!2163995))

(declare-fun m!7628136 () Bool)

(assert (=> bs!1845896 m!7628136))

(assert (=> b!6915536 d!2163995))

(declare-fun b!6916125 () Bool)

(declare-fun e!4163258 () Bool)

(declare-fun call!628779 () Bool)

(assert (=> b!6916125 (= e!4163258 call!628779)))

(declare-fun c!1284343 () Bool)

(declare-fun bm!628774 () Bool)

(assert (=> bm!628774 (= call!628779 (validRegex!8609 (ite c!1284343 (regOne!34319 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))) (regTwo!34318 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))))

(declare-fun b!6916126 () Bool)

(declare-fun e!4163256 () Bool)

(declare-fun call!628781 () Bool)

(assert (=> b!6916126 (= e!4163256 call!628781)))

(declare-fun b!6916127 () Bool)

(declare-fun e!4163260 () Bool)

(declare-fun call!628780 () Bool)

(assert (=> b!6916127 (= e!4163260 call!628780)))

(declare-fun c!1284342 () Bool)

(declare-fun bm!628775 () Bool)

(assert (=> bm!628775 (= call!628781 (validRegex!8609 (ite c!1284342 (reg!17232 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))) (ite c!1284343 (regTwo!34319 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))) (regOne!34318 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))))))

(declare-fun b!6916128 () Bool)

(declare-fun e!4163259 () Bool)

(declare-fun e!4163261 () Bool)

(assert (=> b!6916128 (= e!4163259 e!4163261)))

(assert (=> b!6916128 (= c!1284342 ((_ is Star!16903) (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))

(declare-fun b!6916129 () Bool)

(declare-fun res!2820194 () Bool)

(declare-fun e!4163257 () Bool)

(assert (=> b!6916129 (=> res!2820194 e!4163257)))

(assert (=> b!6916129 (= res!2820194 (not ((_ is Concat!25748) (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))))))))))

(declare-fun e!4163262 () Bool)

(assert (=> b!6916129 (= e!4163262 e!4163257)))

(declare-fun d!2163997 () Bool)

(declare-fun res!2820196 () Bool)

(assert (=> d!2163997 (=> res!2820196 e!4163259)))

(assert (=> d!2163997 (= res!2820196 ((_ is ElementMatch!16903) (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))

(assert (=> d!2163997 (= (validRegex!8609 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))) e!4163259)))

(declare-fun b!6916130 () Bool)

(assert (=> b!6916130 (= e!4163261 e!4163256)))

(declare-fun res!2820195 () Bool)

(assert (=> b!6916130 (= res!2820195 (not (nullable!6738 (reg!17232 (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))))

(assert (=> b!6916130 (=> (not res!2820195) (not e!4163256))))

(declare-fun b!6916131 () Bool)

(assert (=> b!6916131 (= e!4163261 e!4163262)))

(assert (=> b!6916131 (= c!1284343 ((_ is Union!16903) (ite c!1284234 (reg!17232 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (ite c!1284235 (regTwo!34319 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135))) (regOne!34318 (Concat!25748 r1!6342 (Concat!25748 r2!6280 r3!135)))))))))

(declare-fun bm!628776 () Bool)

(assert (=> bm!628776 (= call!628780 call!628781)))

(declare-fun b!6916132 () Bool)

(assert (=> b!6916132 (= e!4163257 e!4163258)))

(declare-fun res!2820197 () Bool)

(assert (=> b!6916132 (=> (not res!2820197) (not e!4163258))))

(assert (=> b!6916132 (= res!2820197 call!628780)))

(declare-fun b!6916133 () Bool)

(declare-fun res!2820198 () Bool)

(assert (=> b!6916133 (=> (not res!2820198) (not e!4163260))))

(assert (=> b!6916133 (= res!2820198 call!628779)))

(assert (=> b!6916133 (= e!4163262 e!4163260)))

(assert (= (and d!2163997 (not res!2820196)) b!6916128))

(assert (= (and b!6916128 c!1284342) b!6916130))

(assert (= (and b!6916128 (not c!1284342)) b!6916131))

(assert (= (and b!6916130 res!2820195) b!6916126))

(assert (= (and b!6916131 c!1284343) b!6916133))

(assert (= (and b!6916131 (not c!1284343)) b!6916129))

(assert (= (and b!6916133 res!2820198) b!6916127))

(assert (= (and b!6916129 (not res!2820194)) b!6916132))

(assert (= (and b!6916132 res!2820197) b!6916125))

(assert (= (or b!6916133 b!6916125) bm!628774))

(assert (= (or b!6916127 b!6916132) bm!628776))

(assert (= (or b!6916126 bm!628776) bm!628775))

(declare-fun m!7628144 () Bool)

(assert (=> bm!628774 m!7628144))

(declare-fun m!7628146 () Bool)

(assert (=> bm!628775 m!7628146))

(declare-fun m!7628148 () Bool)

(assert (=> b!6916130 m!7628148))

(assert (=> bm!628684 d!2163997))

(declare-fun d!2164001 () Bool)

(assert (=> d!2164001 (= (nullable!6738 (reg!17232 r1!6342)) (nullableFct!2538 (reg!17232 r1!6342)))))

(declare-fun bs!1845897 () Bool)

(assert (= bs!1845897 d!2164001))

(declare-fun m!7628150 () Bool)

(assert (=> bs!1845897 m!7628150))

(assert (=> b!6915834 d!2164001))

(declare-fun b!6916148 () Bool)

(declare-fun e!4163272 () Bool)

(declare-fun call!628783 () Bool)

(assert (=> b!6916148 (= e!4163272 call!628783)))

(declare-fun bm!628778 () Bool)

(declare-fun c!1284348 () Bool)

(assert (=> bm!628778 (= call!628783 (validRegex!8609 (ite c!1284348 (regOne!34319 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))) (regTwo!34318 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))))))))

(declare-fun b!6916149 () Bool)

(declare-fun e!4163270 () Bool)

(declare-fun call!628785 () Bool)

(assert (=> b!6916149 (= e!4163270 call!628785)))

(declare-fun b!6916150 () Bool)

(declare-fun e!4163274 () Bool)

(declare-fun call!628784 () Bool)

(assert (=> b!6916150 (= e!4163274 call!628784)))

(declare-fun c!1284347 () Bool)

(declare-fun bm!628779 () Bool)

(assert (=> bm!628779 (= call!628785 (validRegex!8609 (ite c!1284347 (reg!17232 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))) (ite c!1284348 (regTwo!34319 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))) (regOne!34318 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342))))))))))

(declare-fun b!6916151 () Bool)

(declare-fun e!4163273 () Bool)

(declare-fun e!4163275 () Bool)

(assert (=> b!6916151 (= e!4163273 e!4163275)))

(assert (=> b!6916151 (= c!1284347 ((_ is Star!16903) (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))))))

(declare-fun b!6916152 () Bool)

(declare-fun res!2820207 () Bool)

(declare-fun e!4163271 () Bool)

(assert (=> b!6916152 (=> res!2820207 e!4163271)))

(assert (=> b!6916152 (= res!2820207 (not ((_ is Concat!25748) (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342))))))))

(declare-fun e!4163276 () Bool)

(assert (=> b!6916152 (= e!4163276 e!4163271)))

(declare-fun d!2164003 () Bool)

(declare-fun res!2820209 () Bool)

(assert (=> d!2164003 (=> res!2820209 e!4163273)))

(assert (=> d!2164003 (= res!2820209 ((_ is ElementMatch!16903) (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))))))

(assert (=> d!2164003 (= (validRegex!8609 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))) e!4163273)))

(declare-fun b!6916153 () Bool)

(assert (=> b!6916153 (= e!4163275 e!4163270)))

(declare-fun res!2820208 () Bool)

(assert (=> b!6916153 (= res!2820208 (not (nullable!6738 (reg!17232 (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))))))))

(assert (=> b!6916153 (=> (not res!2820208) (not e!4163270))))

(declare-fun b!6916154 () Bool)

(assert (=> b!6916154 (= e!4163275 e!4163276)))

(assert (=> b!6916154 (= c!1284348 ((_ is Union!16903) (ite c!1284280 (reg!17232 r1!6342) (ite c!1284281 (regTwo!34319 r1!6342) (regOne!34318 r1!6342)))))))

(declare-fun bm!628780 () Bool)

(assert (=> bm!628780 (= call!628784 call!628785)))

(declare-fun b!6916155 () Bool)

(assert (=> b!6916155 (= e!4163271 e!4163272)))

(declare-fun res!2820210 () Bool)

(assert (=> b!6916155 (=> (not res!2820210) (not e!4163272))))

(assert (=> b!6916155 (= res!2820210 call!628784)))

(declare-fun b!6916156 () Bool)

(declare-fun res!2820211 () Bool)

(assert (=> b!6916156 (=> (not res!2820211) (not e!4163274))))

(assert (=> b!6916156 (= res!2820211 call!628783)))

(assert (=> b!6916156 (= e!4163276 e!4163274)))

(assert (= (and d!2164003 (not res!2820209)) b!6916151))

(assert (= (and b!6916151 c!1284347) b!6916153))

(assert (= (and b!6916151 (not c!1284347)) b!6916154))

(assert (= (and b!6916153 res!2820208) b!6916149))

(assert (= (and b!6916154 c!1284348) b!6916156))

(assert (= (and b!6916154 (not c!1284348)) b!6916152))

(assert (= (and b!6916156 res!2820211) b!6916150))

(assert (= (and b!6916152 (not res!2820207)) b!6916155))

(assert (= (and b!6916155 res!2820210) b!6916148))

(assert (= (or b!6916156 b!6916148) bm!628778))

(assert (= (or b!6916150 b!6916155) bm!628780))

(assert (= (or b!6916149 bm!628780) bm!628779))

(declare-fun m!7628166 () Bool)

(assert (=> bm!628778 m!7628166))

(declare-fun m!7628168 () Bool)

(assert (=> bm!628779 m!7628168))

(declare-fun m!7628170 () Bool)

(assert (=> b!6916153 m!7628170))

(assert (=> bm!628708 d!2164003))

(declare-fun b!6916157 () Bool)

(declare-fun e!4163279 () Bool)

(declare-fun call!628786 () Bool)

(assert (=> b!6916157 (= e!4163279 call!628786)))

(declare-fun bm!628781 () Bool)

(declare-fun c!1284350 () Bool)

(assert (=> bm!628781 (= call!628786 (validRegex!8609 (ite c!1284350 (regOne!34319 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))) (regTwo!34318 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))))))))

(declare-fun b!6916158 () Bool)

(declare-fun e!4163277 () Bool)

(declare-fun call!628788 () Bool)

(assert (=> b!6916158 (= e!4163277 call!628788)))

(declare-fun b!6916159 () Bool)

(declare-fun e!4163281 () Bool)

(declare-fun call!628787 () Bool)

(assert (=> b!6916159 (= e!4163281 call!628787)))

(declare-fun bm!628782 () Bool)

(declare-fun c!1284349 () Bool)

(assert (=> bm!628782 (= call!628788 (validRegex!8609 (ite c!1284349 (reg!17232 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))) (ite c!1284350 (regTwo!34319 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))) (regOne!34318 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280))))))))))

(declare-fun b!6916160 () Bool)

(declare-fun e!4163280 () Bool)

(declare-fun e!4163282 () Bool)

(assert (=> b!6916160 (= e!4163280 e!4163282)))

(assert (=> b!6916160 (= c!1284349 ((_ is Star!16903) (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))))))

(declare-fun b!6916161 () Bool)

(declare-fun res!2820212 () Bool)

(declare-fun e!4163278 () Bool)

(assert (=> b!6916161 (=> res!2820212 e!4163278)))

(assert (=> b!6916161 (= res!2820212 (not ((_ is Concat!25748) (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280))))))))

(declare-fun e!4163283 () Bool)

(assert (=> b!6916161 (= e!4163283 e!4163278)))

(declare-fun d!2164007 () Bool)

(declare-fun res!2820214 () Bool)

(assert (=> d!2164007 (=> res!2820214 e!4163280)))

(assert (=> d!2164007 (= res!2820214 ((_ is ElementMatch!16903) (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))))))

(assert (=> d!2164007 (= (validRegex!8609 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))) e!4163280)))

(declare-fun b!6916162 () Bool)

(assert (=> b!6916162 (= e!4163282 e!4163277)))

(declare-fun res!2820213 () Bool)

(assert (=> b!6916162 (= res!2820213 (not (nullable!6738 (reg!17232 (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))))))))

(assert (=> b!6916162 (=> (not res!2820213) (not e!4163277))))

(declare-fun b!6916163 () Bool)

(assert (=> b!6916163 (= e!4163282 e!4163283)))

(assert (=> b!6916163 (= c!1284350 ((_ is Union!16903) (ite c!1284228 (reg!17232 r2!6280) (ite c!1284229 (regTwo!34319 r2!6280) (regOne!34318 r2!6280)))))))

(declare-fun bm!628783 () Bool)

(assert (=> bm!628783 (= call!628787 call!628788)))

(declare-fun b!6916164 () Bool)

(assert (=> b!6916164 (= e!4163278 e!4163279)))

(declare-fun res!2820215 () Bool)

(assert (=> b!6916164 (=> (not res!2820215) (not e!4163279))))

(assert (=> b!6916164 (= res!2820215 call!628787)))

(declare-fun b!6916165 () Bool)

(declare-fun res!2820216 () Bool)

(assert (=> b!6916165 (=> (not res!2820216) (not e!4163281))))

(assert (=> b!6916165 (= res!2820216 call!628786)))

(assert (=> b!6916165 (= e!4163283 e!4163281)))

(assert (= (and d!2164007 (not res!2820214)) b!6916160))

(assert (= (and b!6916160 c!1284349) b!6916162))

(assert (= (and b!6916160 (not c!1284349)) b!6916163))

(assert (= (and b!6916162 res!2820213) b!6916158))

(assert (= (and b!6916163 c!1284350) b!6916165))

(assert (= (and b!6916163 (not c!1284350)) b!6916161))

(assert (= (and b!6916165 res!2820216) b!6916159))

(assert (= (and b!6916161 (not res!2820212)) b!6916164))

(assert (= (and b!6916164 res!2820215) b!6916157))

(assert (= (or b!6916165 b!6916157) bm!628781))

(assert (= (or b!6916159 b!6916164) bm!628783))

(assert (= (or b!6916158 bm!628783) bm!628782))

(declare-fun m!7628172 () Bool)

(assert (=> bm!628781 m!7628172))

(declare-fun m!7628174 () Bool)

(assert (=> bm!628782 m!7628174))

(declare-fun m!7628176 () Bool)

(assert (=> b!6916162 m!7628176))

(assert (=> bm!628675 d!2164007))

(assert (=> bm!628706 d!2163925))

(declare-fun e!4163284 () Bool)

(assert (=> b!6915917 (= tp!1905580 e!4163284)))

(declare-fun b!6916168 () Bool)

(declare-fun tp!1905588 () Bool)

(assert (=> b!6916168 (= e!4163284 tp!1905588)))

(declare-fun b!6916169 () Bool)

(declare-fun tp!1905590 () Bool)

(declare-fun tp!1905591 () Bool)

(assert (=> b!6916169 (= e!4163284 (and tp!1905590 tp!1905591))))

(declare-fun b!6916166 () Bool)

(assert (=> b!6916166 (= e!4163284 tp_is_empty!43031)))

(declare-fun b!6916167 () Bool)

(declare-fun tp!1905589 () Bool)

(declare-fun tp!1905592 () Bool)

(assert (=> b!6916167 (= e!4163284 (and tp!1905589 tp!1905592))))

(assert (= (and b!6915917 ((_ is ElementMatch!16903) (regOne!34319 (regTwo!34318 r2!6280)))) b!6916166))

(assert (= (and b!6915917 ((_ is Concat!25748) (regOne!34319 (regTwo!34318 r2!6280)))) b!6916167))

(assert (= (and b!6915917 ((_ is Star!16903) (regOne!34319 (regTwo!34318 r2!6280)))) b!6916168))

(assert (= (and b!6915917 ((_ is Union!16903) (regOne!34319 (regTwo!34318 r2!6280)))) b!6916169))

(declare-fun e!4163285 () Bool)

(assert (=> b!6915917 (= tp!1905581 e!4163285)))

(declare-fun b!6916172 () Bool)

(declare-fun tp!1905593 () Bool)

(assert (=> b!6916172 (= e!4163285 tp!1905593)))

(declare-fun b!6916173 () Bool)

(declare-fun tp!1905595 () Bool)

(declare-fun tp!1905596 () Bool)

(assert (=> b!6916173 (= e!4163285 (and tp!1905595 tp!1905596))))

(declare-fun b!6916170 () Bool)

(assert (=> b!6916170 (= e!4163285 tp_is_empty!43031)))

(declare-fun b!6916171 () Bool)

(declare-fun tp!1905594 () Bool)

(declare-fun tp!1905597 () Bool)

(assert (=> b!6916171 (= e!4163285 (and tp!1905594 tp!1905597))))

(assert (= (and b!6915917 ((_ is ElementMatch!16903) (regTwo!34319 (regTwo!34318 r2!6280)))) b!6916170))

(assert (= (and b!6915917 ((_ is Concat!25748) (regTwo!34319 (regTwo!34318 r2!6280)))) b!6916171))

(assert (= (and b!6915917 ((_ is Star!16903) (regTwo!34319 (regTwo!34318 r2!6280)))) b!6916172))

(assert (= (and b!6915917 ((_ is Union!16903) (regTwo!34319 (regTwo!34318 r2!6280)))) b!6916173))

(declare-fun e!4163286 () Bool)

(assert (=> b!6915916 (= tp!1905578 e!4163286)))

(declare-fun b!6916176 () Bool)

(declare-fun tp!1905598 () Bool)

(assert (=> b!6916176 (= e!4163286 tp!1905598)))

(declare-fun b!6916177 () Bool)

(declare-fun tp!1905600 () Bool)

(declare-fun tp!1905601 () Bool)

(assert (=> b!6916177 (= e!4163286 (and tp!1905600 tp!1905601))))

(declare-fun b!6916174 () Bool)

(assert (=> b!6916174 (= e!4163286 tp_is_empty!43031)))

(declare-fun b!6916175 () Bool)

(declare-fun tp!1905599 () Bool)

(declare-fun tp!1905602 () Bool)

(assert (=> b!6916175 (= e!4163286 (and tp!1905599 tp!1905602))))

(assert (= (and b!6915916 ((_ is ElementMatch!16903) (reg!17232 (regTwo!34318 r2!6280)))) b!6916174))

(assert (= (and b!6915916 ((_ is Concat!25748) (reg!17232 (regTwo!34318 r2!6280)))) b!6916175))

(assert (= (and b!6915916 ((_ is Star!16903) (reg!17232 (regTwo!34318 r2!6280)))) b!6916176))

(assert (= (and b!6915916 ((_ is Union!16903) (reg!17232 (regTwo!34318 r2!6280)))) b!6916177))

(declare-fun e!4163287 () Bool)

(assert (=> b!6915907 (= tp!1905569 e!4163287)))

(declare-fun b!6916180 () Bool)

(declare-fun tp!1905603 () Bool)

(assert (=> b!6916180 (= e!4163287 tp!1905603)))

(declare-fun b!6916181 () Bool)

(declare-fun tp!1905605 () Bool)

(declare-fun tp!1905606 () Bool)

(assert (=> b!6916181 (= e!4163287 (and tp!1905605 tp!1905606))))

(declare-fun b!6916178 () Bool)

(assert (=> b!6916178 (= e!4163287 tp_is_empty!43031)))

(declare-fun b!6916179 () Bool)

(declare-fun tp!1905604 () Bool)

(declare-fun tp!1905607 () Bool)

(assert (=> b!6916179 (= e!4163287 (and tp!1905604 tp!1905607))))

(assert (= (and b!6915907 ((_ is ElementMatch!16903) (regOne!34318 (reg!17232 r1!6342)))) b!6916178))

(assert (= (and b!6915907 ((_ is Concat!25748) (regOne!34318 (reg!17232 r1!6342)))) b!6916179))

(assert (= (and b!6915907 ((_ is Star!16903) (regOne!34318 (reg!17232 r1!6342)))) b!6916180))

(assert (= (and b!6915907 ((_ is Union!16903) (regOne!34318 (reg!17232 r1!6342)))) b!6916181))

(declare-fun e!4163288 () Bool)

(assert (=> b!6915907 (= tp!1905572 e!4163288)))

(declare-fun b!6916184 () Bool)

(declare-fun tp!1905608 () Bool)

(assert (=> b!6916184 (= e!4163288 tp!1905608)))

(declare-fun b!6916185 () Bool)

(declare-fun tp!1905610 () Bool)

(declare-fun tp!1905611 () Bool)

(assert (=> b!6916185 (= e!4163288 (and tp!1905610 tp!1905611))))

(declare-fun b!6916182 () Bool)

(assert (=> b!6916182 (= e!4163288 tp_is_empty!43031)))

(declare-fun b!6916183 () Bool)

(declare-fun tp!1905609 () Bool)

(declare-fun tp!1905612 () Bool)

(assert (=> b!6916183 (= e!4163288 (and tp!1905609 tp!1905612))))

(assert (= (and b!6915907 ((_ is ElementMatch!16903) (regTwo!34318 (reg!17232 r1!6342)))) b!6916182))

(assert (= (and b!6915907 ((_ is Concat!25748) (regTwo!34318 (reg!17232 r1!6342)))) b!6916183))

(assert (= (and b!6915907 ((_ is Star!16903) (regTwo!34318 (reg!17232 r1!6342)))) b!6916184))

(assert (= (and b!6915907 ((_ is Union!16903) (regTwo!34318 (reg!17232 r1!6342)))) b!6916185))

(declare-fun e!4163289 () Bool)

(assert (=> b!6915909 (= tp!1905570 e!4163289)))

(declare-fun b!6916188 () Bool)

(declare-fun tp!1905613 () Bool)

(assert (=> b!6916188 (= e!4163289 tp!1905613)))

(declare-fun b!6916189 () Bool)

(declare-fun tp!1905615 () Bool)

(declare-fun tp!1905616 () Bool)

(assert (=> b!6916189 (= e!4163289 (and tp!1905615 tp!1905616))))

(declare-fun b!6916186 () Bool)

(assert (=> b!6916186 (= e!4163289 tp_is_empty!43031)))

(declare-fun b!6916187 () Bool)

(declare-fun tp!1905614 () Bool)

(declare-fun tp!1905617 () Bool)

(assert (=> b!6916187 (= e!4163289 (and tp!1905614 tp!1905617))))

(assert (= (and b!6915909 ((_ is ElementMatch!16903) (regOne!34319 (reg!17232 r1!6342)))) b!6916186))

(assert (= (and b!6915909 ((_ is Concat!25748) (regOne!34319 (reg!17232 r1!6342)))) b!6916187))

(assert (= (and b!6915909 ((_ is Star!16903) (regOne!34319 (reg!17232 r1!6342)))) b!6916188))

(assert (= (and b!6915909 ((_ is Union!16903) (regOne!34319 (reg!17232 r1!6342)))) b!6916189))

(declare-fun e!4163290 () Bool)

(assert (=> b!6915909 (= tp!1905571 e!4163290)))

(declare-fun b!6916192 () Bool)

(declare-fun tp!1905618 () Bool)

(assert (=> b!6916192 (= e!4163290 tp!1905618)))

(declare-fun b!6916193 () Bool)

(declare-fun tp!1905620 () Bool)

(declare-fun tp!1905621 () Bool)

(assert (=> b!6916193 (= e!4163290 (and tp!1905620 tp!1905621))))

(declare-fun b!6916190 () Bool)

(assert (=> b!6916190 (= e!4163290 tp_is_empty!43031)))

(declare-fun b!6916191 () Bool)

(declare-fun tp!1905619 () Bool)

(declare-fun tp!1905622 () Bool)

(assert (=> b!6916191 (= e!4163290 (and tp!1905619 tp!1905622))))

(assert (= (and b!6915909 ((_ is ElementMatch!16903) (regTwo!34319 (reg!17232 r1!6342)))) b!6916190))

(assert (= (and b!6915909 ((_ is Concat!25748) (regTwo!34319 (reg!17232 r1!6342)))) b!6916191))

(assert (= (and b!6915909 ((_ is Star!16903) (regTwo!34319 (reg!17232 r1!6342)))) b!6916192))

(assert (= (and b!6915909 ((_ is Union!16903) (regTwo!34319 (reg!17232 r1!6342)))) b!6916193))

(declare-fun e!4163291 () Bool)

(assert (=> b!6915908 (= tp!1905568 e!4163291)))

(declare-fun b!6916196 () Bool)

(declare-fun tp!1905623 () Bool)

(assert (=> b!6916196 (= e!4163291 tp!1905623)))

(declare-fun b!6916197 () Bool)

(declare-fun tp!1905625 () Bool)

(declare-fun tp!1905626 () Bool)

(assert (=> b!6916197 (= e!4163291 (and tp!1905625 tp!1905626))))

(declare-fun b!6916194 () Bool)

(assert (=> b!6916194 (= e!4163291 tp_is_empty!43031)))

(declare-fun b!6916195 () Bool)

(declare-fun tp!1905624 () Bool)

(declare-fun tp!1905627 () Bool)

(assert (=> b!6916195 (= e!4163291 (and tp!1905624 tp!1905627))))

(assert (= (and b!6915908 ((_ is ElementMatch!16903) (reg!17232 (reg!17232 r1!6342)))) b!6916194))

(assert (= (and b!6915908 ((_ is Concat!25748) (reg!17232 (reg!17232 r1!6342)))) b!6916195))

(assert (= (and b!6915908 ((_ is Star!16903) (reg!17232 (reg!17232 r1!6342)))) b!6916196))

(assert (= (and b!6915908 ((_ is Union!16903) (reg!17232 (reg!17232 r1!6342)))) b!6916197))

(declare-fun e!4163292 () Bool)

(assert (=> b!6915899 (= tp!1905559 e!4163292)))

(declare-fun b!6916200 () Bool)

(declare-fun tp!1905628 () Bool)

(assert (=> b!6916200 (= e!4163292 tp!1905628)))

(declare-fun b!6916201 () Bool)

(declare-fun tp!1905630 () Bool)

(declare-fun tp!1905631 () Bool)

(assert (=> b!6916201 (= e!4163292 (and tp!1905630 tp!1905631))))

(declare-fun b!6916198 () Bool)

(assert (=> b!6916198 (= e!4163292 tp_is_empty!43031)))

(declare-fun b!6916199 () Bool)

(declare-fun tp!1905629 () Bool)

(declare-fun tp!1905632 () Bool)

(assert (=> b!6916199 (= e!4163292 (and tp!1905629 tp!1905632))))

(assert (= (and b!6915899 ((_ is ElementMatch!16903) (regOne!34318 (regOne!34319 r3!135)))) b!6916198))

(assert (= (and b!6915899 ((_ is Concat!25748) (regOne!34318 (regOne!34319 r3!135)))) b!6916199))

(assert (= (and b!6915899 ((_ is Star!16903) (regOne!34318 (regOne!34319 r3!135)))) b!6916200))

(assert (= (and b!6915899 ((_ is Union!16903) (regOne!34318 (regOne!34319 r3!135)))) b!6916201))

(declare-fun e!4163293 () Bool)

(assert (=> b!6915899 (= tp!1905562 e!4163293)))

(declare-fun b!6916204 () Bool)

(declare-fun tp!1905633 () Bool)

(assert (=> b!6916204 (= e!4163293 tp!1905633)))

(declare-fun b!6916205 () Bool)

(declare-fun tp!1905635 () Bool)

(declare-fun tp!1905636 () Bool)

(assert (=> b!6916205 (= e!4163293 (and tp!1905635 tp!1905636))))

(declare-fun b!6916202 () Bool)

(assert (=> b!6916202 (= e!4163293 tp_is_empty!43031)))

(declare-fun b!6916203 () Bool)

(declare-fun tp!1905634 () Bool)

(declare-fun tp!1905637 () Bool)

(assert (=> b!6916203 (= e!4163293 (and tp!1905634 tp!1905637))))

(assert (= (and b!6915899 ((_ is ElementMatch!16903) (regTwo!34318 (regOne!34319 r3!135)))) b!6916202))

(assert (= (and b!6915899 ((_ is Concat!25748) (regTwo!34318 (regOne!34319 r3!135)))) b!6916203))

(assert (= (and b!6915899 ((_ is Star!16903) (regTwo!34318 (regOne!34319 r3!135)))) b!6916204))

(assert (= (and b!6915899 ((_ is Union!16903) (regTwo!34318 (regOne!34319 r3!135)))) b!6916205))

(declare-fun e!4163294 () Bool)

(assert (=> b!6915873 (= tp!1905525 e!4163294)))

(declare-fun b!6916208 () Bool)

(declare-fun tp!1905638 () Bool)

(assert (=> b!6916208 (= e!4163294 tp!1905638)))

(declare-fun b!6916209 () Bool)

(declare-fun tp!1905640 () Bool)

(declare-fun tp!1905641 () Bool)

(assert (=> b!6916209 (= e!4163294 (and tp!1905640 tp!1905641))))

(declare-fun b!6916206 () Bool)

(assert (=> b!6916206 (= e!4163294 tp_is_empty!43031)))

(declare-fun b!6916207 () Bool)

(declare-fun tp!1905639 () Bool)

(declare-fun tp!1905642 () Bool)

(assert (=> b!6916207 (= e!4163294 (and tp!1905639 tp!1905642))))

(assert (= (and b!6915873 ((_ is ElementMatch!16903) (regOne!34319 (regOne!34319 r2!6280)))) b!6916206))

(assert (= (and b!6915873 ((_ is Concat!25748) (regOne!34319 (regOne!34319 r2!6280)))) b!6916207))

(assert (= (and b!6915873 ((_ is Star!16903) (regOne!34319 (regOne!34319 r2!6280)))) b!6916208))

(assert (= (and b!6915873 ((_ is Union!16903) (regOne!34319 (regOne!34319 r2!6280)))) b!6916209))

(declare-fun e!4163295 () Bool)

(assert (=> b!6915873 (= tp!1905526 e!4163295)))

(declare-fun b!6916212 () Bool)

(declare-fun tp!1905643 () Bool)

(assert (=> b!6916212 (= e!4163295 tp!1905643)))

(declare-fun b!6916213 () Bool)

(declare-fun tp!1905645 () Bool)

(declare-fun tp!1905646 () Bool)

(assert (=> b!6916213 (= e!4163295 (and tp!1905645 tp!1905646))))

(declare-fun b!6916210 () Bool)

(assert (=> b!6916210 (= e!4163295 tp_is_empty!43031)))

(declare-fun b!6916211 () Bool)

(declare-fun tp!1905644 () Bool)

(declare-fun tp!1905647 () Bool)

(assert (=> b!6916211 (= e!4163295 (and tp!1905644 tp!1905647))))

(assert (= (and b!6915873 ((_ is ElementMatch!16903) (regTwo!34319 (regOne!34319 r2!6280)))) b!6916210))

(assert (= (and b!6915873 ((_ is Concat!25748) (regTwo!34319 (regOne!34319 r2!6280)))) b!6916211))

(assert (= (and b!6915873 ((_ is Star!16903) (regTwo!34319 (regOne!34319 r2!6280)))) b!6916212))

(assert (= (and b!6915873 ((_ is Union!16903) (regTwo!34319 (regOne!34319 r2!6280)))) b!6916213))

(declare-fun e!4163296 () Bool)

(assert (=> b!6915915 (= tp!1905579 e!4163296)))

(declare-fun b!6916216 () Bool)

(declare-fun tp!1905648 () Bool)

(assert (=> b!6916216 (= e!4163296 tp!1905648)))

(declare-fun b!6916217 () Bool)

(declare-fun tp!1905650 () Bool)

(declare-fun tp!1905651 () Bool)

(assert (=> b!6916217 (= e!4163296 (and tp!1905650 tp!1905651))))

(declare-fun b!6916214 () Bool)

(assert (=> b!6916214 (= e!4163296 tp_is_empty!43031)))

(declare-fun b!6916215 () Bool)

(declare-fun tp!1905649 () Bool)

(declare-fun tp!1905652 () Bool)

(assert (=> b!6916215 (= e!4163296 (and tp!1905649 tp!1905652))))

(assert (= (and b!6915915 ((_ is ElementMatch!16903) (regOne!34318 (regTwo!34318 r2!6280)))) b!6916214))

(assert (= (and b!6915915 ((_ is Concat!25748) (regOne!34318 (regTwo!34318 r2!6280)))) b!6916215))

(assert (= (and b!6915915 ((_ is Star!16903) (regOne!34318 (regTwo!34318 r2!6280)))) b!6916216))

(assert (= (and b!6915915 ((_ is Union!16903) (regOne!34318 (regTwo!34318 r2!6280)))) b!6916217))

(declare-fun e!4163297 () Bool)

(assert (=> b!6915915 (= tp!1905582 e!4163297)))

(declare-fun b!6916220 () Bool)

(declare-fun tp!1905653 () Bool)

(assert (=> b!6916220 (= e!4163297 tp!1905653)))

(declare-fun b!6916221 () Bool)

(declare-fun tp!1905655 () Bool)

(declare-fun tp!1905656 () Bool)

(assert (=> b!6916221 (= e!4163297 (and tp!1905655 tp!1905656))))

(declare-fun b!6916218 () Bool)

(assert (=> b!6916218 (= e!4163297 tp_is_empty!43031)))

(declare-fun b!6916219 () Bool)

(declare-fun tp!1905654 () Bool)

(declare-fun tp!1905657 () Bool)

(assert (=> b!6916219 (= e!4163297 (and tp!1905654 tp!1905657))))

(assert (= (and b!6915915 ((_ is ElementMatch!16903) (regTwo!34318 (regTwo!34318 r2!6280)))) b!6916218))

(assert (= (and b!6915915 ((_ is Concat!25748) (regTwo!34318 (regTwo!34318 r2!6280)))) b!6916219))

(assert (= (and b!6915915 ((_ is Star!16903) (regTwo!34318 (regTwo!34318 r2!6280)))) b!6916220))

(assert (= (and b!6915915 ((_ is Union!16903) (regTwo!34318 (regTwo!34318 r2!6280)))) b!6916221))

(declare-fun e!4163298 () Bool)

(assert (=> b!6915880 (= tp!1905533 e!4163298)))

(declare-fun b!6916224 () Bool)

(declare-fun tp!1905658 () Bool)

(assert (=> b!6916224 (= e!4163298 tp!1905658)))

(declare-fun b!6916225 () Bool)

(declare-fun tp!1905660 () Bool)

(declare-fun tp!1905661 () Bool)

(assert (=> b!6916225 (= e!4163298 (and tp!1905660 tp!1905661))))

(declare-fun b!6916222 () Bool)

(assert (=> b!6916222 (= e!4163298 tp_is_empty!43031)))

(declare-fun b!6916223 () Bool)

(declare-fun tp!1905659 () Bool)

(declare-fun tp!1905662 () Bool)

(assert (=> b!6916223 (= e!4163298 (and tp!1905659 tp!1905662))))

(assert (= (and b!6915880 ((_ is ElementMatch!16903) (reg!17232 (regOne!34318 r1!6342)))) b!6916222))

(assert (= (and b!6915880 ((_ is Concat!25748) (reg!17232 (regOne!34318 r1!6342)))) b!6916223))

(assert (= (and b!6915880 ((_ is Star!16903) (reg!17232 (regOne!34318 r1!6342)))) b!6916224))

(assert (= (and b!6915880 ((_ is Union!16903) (reg!17232 (regOne!34318 r1!6342)))) b!6916225))

(declare-fun e!4163299 () Bool)

(assert (=> b!6915871 (= tp!1905524 e!4163299)))

(declare-fun b!6916228 () Bool)

(declare-fun tp!1905663 () Bool)

(assert (=> b!6916228 (= e!4163299 tp!1905663)))

(declare-fun b!6916229 () Bool)

(declare-fun tp!1905665 () Bool)

(declare-fun tp!1905666 () Bool)

(assert (=> b!6916229 (= e!4163299 (and tp!1905665 tp!1905666))))

(declare-fun b!6916226 () Bool)

(assert (=> b!6916226 (= e!4163299 tp_is_empty!43031)))

(declare-fun b!6916227 () Bool)

(declare-fun tp!1905664 () Bool)

(declare-fun tp!1905667 () Bool)

(assert (=> b!6916227 (= e!4163299 (and tp!1905664 tp!1905667))))

(assert (= (and b!6915871 ((_ is ElementMatch!16903) (regOne!34318 (regOne!34319 r2!6280)))) b!6916226))

(assert (= (and b!6915871 ((_ is Concat!25748) (regOne!34318 (regOne!34319 r2!6280)))) b!6916227))

(assert (= (and b!6915871 ((_ is Star!16903) (regOne!34318 (regOne!34319 r2!6280)))) b!6916228))

(assert (= (and b!6915871 ((_ is Union!16903) (regOne!34318 (regOne!34319 r2!6280)))) b!6916229))

(declare-fun e!4163300 () Bool)

(assert (=> b!6915871 (= tp!1905527 e!4163300)))

(declare-fun b!6916232 () Bool)

(declare-fun tp!1905668 () Bool)

(assert (=> b!6916232 (= e!4163300 tp!1905668)))

(declare-fun b!6916233 () Bool)

(declare-fun tp!1905670 () Bool)

(declare-fun tp!1905671 () Bool)

(assert (=> b!6916233 (= e!4163300 (and tp!1905670 tp!1905671))))

(declare-fun b!6916230 () Bool)

(assert (=> b!6916230 (= e!4163300 tp_is_empty!43031)))

(declare-fun b!6916231 () Bool)

(declare-fun tp!1905669 () Bool)

(declare-fun tp!1905672 () Bool)

(assert (=> b!6916231 (= e!4163300 (and tp!1905669 tp!1905672))))

(assert (= (and b!6915871 ((_ is ElementMatch!16903) (regTwo!34318 (regOne!34319 r2!6280)))) b!6916230))

(assert (= (and b!6915871 ((_ is Concat!25748) (regTwo!34318 (regOne!34319 r2!6280)))) b!6916231))

(assert (= (and b!6915871 ((_ is Star!16903) (regTwo!34318 (regOne!34319 r2!6280)))) b!6916232))

(assert (= (and b!6915871 ((_ is Union!16903) (regTwo!34318 (regOne!34319 r2!6280)))) b!6916233))

(declare-fun e!4163301 () Bool)

(assert (=> b!6915889 (= tp!1905545 e!4163301)))

(declare-fun b!6916236 () Bool)

(declare-fun tp!1905673 () Bool)

(assert (=> b!6916236 (= e!4163301 tp!1905673)))

(declare-fun b!6916237 () Bool)

(declare-fun tp!1905675 () Bool)

(declare-fun tp!1905676 () Bool)

(assert (=> b!6916237 (= e!4163301 (and tp!1905675 tp!1905676))))

(declare-fun b!6916234 () Bool)

(assert (=> b!6916234 (= e!4163301 tp_is_empty!43031)))

(declare-fun b!6916235 () Bool)

(declare-fun tp!1905674 () Bool)

(declare-fun tp!1905677 () Bool)

(assert (=> b!6916235 (= e!4163301 (and tp!1905674 tp!1905677))))

(assert (= (and b!6915889 ((_ is ElementMatch!16903) (regOne!34319 (reg!17232 r3!135)))) b!6916234))

(assert (= (and b!6915889 ((_ is Concat!25748) (regOne!34319 (reg!17232 r3!135)))) b!6916235))

(assert (= (and b!6915889 ((_ is Star!16903) (regOne!34319 (reg!17232 r3!135)))) b!6916236))

(assert (= (and b!6915889 ((_ is Union!16903) (regOne!34319 (reg!17232 r3!135)))) b!6916237))

(declare-fun e!4163302 () Bool)

(assert (=> b!6915889 (= tp!1905546 e!4163302)))

(declare-fun b!6916240 () Bool)

(declare-fun tp!1905678 () Bool)

(assert (=> b!6916240 (= e!4163302 tp!1905678)))

(declare-fun b!6916241 () Bool)

(declare-fun tp!1905680 () Bool)

(declare-fun tp!1905681 () Bool)

(assert (=> b!6916241 (= e!4163302 (and tp!1905680 tp!1905681))))

(declare-fun b!6916238 () Bool)

(assert (=> b!6916238 (= e!4163302 tp_is_empty!43031)))

(declare-fun b!6916239 () Bool)

(declare-fun tp!1905679 () Bool)

(declare-fun tp!1905682 () Bool)

(assert (=> b!6916239 (= e!4163302 (and tp!1905679 tp!1905682))))

(assert (= (and b!6915889 ((_ is ElementMatch!16903) (regTwo!34319 (reg!17232 r3!135)))) b!6916238))

(assert (= (and b!6915889 ((_ is Concat!25748) (regTwo!34319 (reg!17232 r3!135)))) b!6916239))

(assert (= (and b!6915889 ((_ is Star!16903) (regTwo!34319 (reg!17232 r3!135)))) b!6916240))

(assert (= (and b!6915889 ((_ is Union!16903) (regTwo!34319 (reg!17232 r3!135)))) b!6916241))

(declare-fun e!4163303 () Bool)

(assert (=> b!6915872 (= tp!1905523 e!4163303)))

(declare-fun b!6916244 () Bool)

(declare-fun tp!1905683 () Bool)

(assert (=> b!6916244 (= e!4163303 tp!1905683)))

(declare-fun b!6916245 () Bool)

(declare-fun tp!1905685 () Bool)

(declare-fun tp!1905686 () Bool)

(assert (=> b!6916245 (= e!4163303 (and tp!1905685 tp!1905686))))

(declare-fun b!6916242 () Bool)

(assert (=> b!6916242 (= e!4163303 tp_is_empty!43031)))

(declare-fun b!6916243 () Bool)

(declare-fun tp!1905684 () Bool)

(declare-fun tp!1905687 () Bool)

(assert (=> b!6916243 (= e!4163303 (and tp!1905684 tp!1905687))))

(assert (= (and b!6915872 ((_ is ElementMatch!16903) (reg!17232 (regOne!34319 r2!6280)))) b!6916242))

(assert (= (and b!6915872 ((_ is Concat!25748) (reg!17232 (regOne!34319 r2!6280)))) b!6916243))

(assert (= (and b!6915872 ((_ is Star!16903) (reg!17232 (regOne!34319 r2!6280)))) b!6916244))

(assert (= (and b!6915872 ((_ is Union!16903) (reg!17232 (regOne!34319 r2!6280)))) b!6916245))

(declare-fun e!4163304 () Bool)

(assert (=> b!6915881 (= tp!1905535 e!4163304)))

(declare-fun b!6916248 () Bool)

(declare-fun tp!1905688 () Bool)

(assert (=> b!6916248 (= e!4163304 tp!1905688)))

(declare-fun b!6916249 () Bool)

(declare-fun tp!1905690 () Bool)

(declare-fun tp!1905691 () Bool)

(assert (=> b!6916249 (= e!4163304 (and tp!1905690 tp!1905691))))

(declare-fun b!6916246 () Bool)

(assert (=> b!6916246 (= e!4163304 tp_is_empty!43031)))

(declare-fun b!6916247 () Bool)

(declare-fun tp!1905689 () Bool)

(declare-fun tp!1905692 () Bool)

(assert (=> b!6916247 (= e!4163304 (and tp!1905689 tp!1905692))))

(assert (= (and b!6915881 ((_ is ElementMatch!16903) (regOne!34319 (regOne!34318 r1!6342)))) b!6916246))

(assert (= (and b!6915881 ((_ is Concat!25748) (regOne!34319 (regOne!34318 r1!6342)))) b!6916247))

(assert (= (and b!6915881 ((_ is Star!16903) (regOne!34319 (regOne!34318 r1!6342)))) b!6916248))

(assert (= (and b!6915881 ((_ is Union!16903) (regOne!34319 (regOne!34318 r1!6342)))) b!6916249))

(declare-fun e!4163305 () Bool)

(assert (=> b!6915881 (= tp!1905536 e!4163305)))

(declare-fun b!6916252 () Bool)

(declare-fun tp!1905693 () Bool)

(assert (=> b!6916252 (= e!4163305 tp!1905693)))

(declare-fun b!6916253 () Bool)

(declare-fun tp!1905695 () Bool)

(declare-fun tp!1905696 () Bool)

(assert (=> b!6916253 (= e!4163305 (and tp!1905695 tp!1905696))))

(declare-fun b!6916250 () Bool)

(assert (=> b!6916250 (= e!4163305 tp_is_empty!43031)))

(declare-fun b!6916251 () Bool)

(declare-fun tp!1905694 () Bool)

(declare-fun tp!1905697 () Bool)

(assert (=> b!6916251 (= e!4163305 (and tp!1905694 tp!1905697))))

(assert (= (and b!6915881 ((_ is ElementMatch!16903) (regTwo!34319 (regOne!34318 r1!6342)))) b!6916250))

(assert (= (and b!6915881 ((_ is Concat!25748) (regTwo!34319 (regOne!34318 r1!6342)))) b!6916251))

(assert (= (and b!6915881 ((_ is Star!16903) (regTwo!34319 (regOne!34318 r1!6342)))) b!6916252))

(assert (= (and b!6915881 ((_ is Union!16903) (regTwo!34319 (regOne!34318 r1!6342)))) b!6916253))

(declare-fun e!4163308 () Bool)

(assert (=> b!6915896 (= tp!1905553 e!4163308)))

(declare-fun b!6916260 () Bool)

(declare-fun tp!1905698 () Bool)

(assert (=> b!6916260 (= e!4163308 tp!1905698)))

(declare-fun b!6916261 () Bool)

(declare-fun tp!1905700 () Bool)

(declare-fun tp!1905701 () Bool)

(assert (=> b!6916261 (= e!4163308 (and tp!1905700 tp!1905701))))

(declare-fun b!6916258 () Bool)

(assert (=> b!6916258 (= e!4163308 tp_is_empty!43031)))

(declare-fun b!6916259 () Bool)

(declare-fun tp!1905699 () Bool)

(declare-fun tp!1905702 () Bool)

(assert (=> b!6916259 (= e!4163308 (and tp!1905699 tp!1905702))))

(assert (= (and b!6915896 ((_ is ElementMatch!16903) (reg!17232 (regTwo!34319 r1!6342)))) b!6916258))

(assert (= (and b!6915896 ((_ is Concat!25748) (reg!17232 (regTwo!34319 r1!6342)))) b!6916259))

(assert (= (and b!6915896 ((_ is Star!16903) (reg!17232 (regTwo!34319 r1!6342)))) b!6916260))

(assert (= (and b!6915896 ((_ is Union!16903) (reg!17232 (regTwo!34319 r1!6342)))) b!6916261))

(declare-fun e!4163311 () Bool)

(assert (=> b!6915863 (= tp!1905515 e!4163311)))

(declare-fun b!6916268 () Bool)

(declare-fun tp!1905703 () Bool)

(assert (=> b!6916268 (= e!4163311 tp!1905703)))

(declare-fun b!6916269 () Bool)

(declare-fun tp!1905705 () Bool)

(declare-fun tp!1905706 () Bool)

(assert (=> b!6916269 (= e!4163311 (and tp!1905705 tp!1905706))))

(declare-fun b!6916266 () Bool)

(assert (=> b!6916266 (= e!4163311 tp_is_empty!43031)))

(declare-fun b!6916267 () Bool)

(declare-fun tp!1905704 () Bool)

(declare-fun tp!1905707 () Bool)

(assert (=> b!6916267 (= e!4163311 (and tp!1905704 tp!1905707))))

(assert (= (and b!6915863 ((_ is ElementMatch!16903) (reg!17232 (regTwo!34318 r3!135)))) b!6916266))

(assert (= (and b!6915863 ((_ is Concat!25748) (reg!17232 (regTwo!34318 r3!135)))) b!6916267))

(assert (= (and b!6915863 ((_ is Star!16903) (reg!17232 (regTwo!34318 r3!135)))) b!6916268))

(assert (= (and b!6915863 ((_ is Union!16903) (reg!17232 (regTwo!34318 r3!135)))) b!6916269))

(declare-fun e!4163318 () Bool)

(assert (=> b!6915887 (= tp!1905544 e!4163318)))

(declare-fun b!6916284 () Bool)

(declare-fun tp!1905708 () Bool)

(assert (=> b!6916284 (= e!4163318 tp!1905708)))

(declare-fun b!6916285 () Bool)

(declare-fun tp!1905710 () Bool)

(declare-fun tp!1905711 () Bool)

(assert (=> b!6916285 (= e!4163318 (and tp!1905710 tp!1905711))))

(declare-fun b!6916282 () Bool)

(assert (=> b!6916282 (= e!4163318 tp_is_empty!43031)))

(declare-fun b!6916283 () Bool)

(declare-fun tp!1905709 () Bool)

(declare-fun tp!1905712 () Bool)

(assert (=> b!6916283 (= e!4163318 (and tp!1905709 tp!1905712))))

(assert (= (and b!6915887 ((_ is ElementMatch!16903) (regOne!34318 (reg!17232 r3!135)))) b!6916282))

(assert (= (and b!6915887 ((_ is Concat!25748) (regOne!34318 (reg!17232 r3!135)))) b!6916283))

(assert (= (and b!6915887 ((_ is Star!16903) (regOne!34318 (reg!17232 r3!135)))) b!6916284))

(assert (= (and b!6915887 ((_ is Union!16903) (regOne!34318 (reg!17232 r3!135)))) b!6916285))

(declare-fun e!4163319 () Bool)

(assert (=> b!6915887 (= tp!1905547 e!4163319)))

(declare-fun b!6916288 () Bool)

(declare-fun tp!1905713 () Bool)

(assert (=> b!6916288 (= e!4163319 tp!1905713)))

(declare-fun b!6916289 () Bool)

(declare-fun tp!1905715 () Bool)

(declare-fun tp!1905716 () Bool)

(assert (=> b!6916289 (= e!4163319 (and tp!1905715 tp!1905716))))

(declare-fun b!6916286 () Bool)

(assert (=> b!6916286 (= e!4163319 tp_is_empty!43031)))

(declare-fun b!6916287 () Bool)

(declare-fun tp!1905714 () Bool)

(declare-fun tp!1905717 () Bool)

(assert (=> b!6916287 (= e!4163319 (and tp!1905714 tp!1905717))))

(assert (= (and b!6915887 ((_ is ElementMatch!16903) (regTwo!34318 (reg!17232 r3!135)))) b!6916286))

(assert (= (and b!6915887 ((_ is Concat!25748) (regTwo!34318 (reg!17232 r3!135)))) b!6916287))

(assert (= (and b!6915887 ((_ is Star!16903) (regTwo!34318 (reg!17232 r3!135)))) b!6916288))

(assert (= (and b!6915887 ((_ is Union!16903) (regTwo!34318 (reg!17232 r3!135)))) b!6916289))

(declare-fun e!4163320 () Bool)

(assert (=> b!6915862 (= tp!1905516 e!4163320)))

(declare-fun b!6916292 () Bool)

(declare-fun tp!1905718 () Bool)

(assert (=> b!6916292 (= e!4163320 tp!1905718)))

(declare-fun b!6916293 () Bool)

(declare-fun tp!1905720 () Bool)

(declare-fun tp!1905721 () Bool)

(assert (=> b!6916293 (= e!4163320 (and tp!1905720 tp!1905721))))

(declare-fun b!6916290 () Bool)

(assert (=> b!6916290 (= e!4163320 tp_is_empty!43031)))

(declare-fun b!6916291 () Bool)

(declare-fun tp!1905719 () Bool)

(declare-fun tp!1905722 () Bool)

(assert (=> b!6916291 (= e!4163320 (and tp!1905719 tp!1905722))))

(assert (= (and b!6915862 ((_ is ElementMatch!16903) (regOne!34318 (regTwo!34318 r3!135)))) b!6916290))

(assert (= (and b!6915862 ((_ is Concat!25748) (regOne!34318 (regTwo!34318 r3!135)))) b!6916291))

(assert (= (and b!6915862 ((_ is Star!16903) (regOne!34318 (regTwo!34318 r3!135)))) b!6916292))

(assert (= (and b!6915862 ((_ is Union!16903) (regOne!34318 (regTwo!34318 r3!135)))) b!6916293))

(declare-fun e!4163321 () Bool)

(assert (=> b!6915862 (= tp!1905519 e!4163321)))

(declare-fun b!6916296 () Bool)

(declare-fun tp!1905723 () Bool)

(assert (=> b!6916296 (= e!4163321 tp!1905723)))

(declare-fun b!6916297 () Bool)

(declare-fun tp!1905725 () Bool)

(declare-fun tp!1905726 () Bool)

(assert (=> b!6916297 (= e!4163321 (and tp!1905725 tp!1905726))))

(declare-fun b!6916294 () Bool)

(assert (=> b!6916294 (= e!4163321 tp_is_empty!43031)))

(declare-fun b!6916295 () Bool)

(declare-fun tp!1905724 () Bool)

(declare-fun tp!1905727 () Bool)

(assert (=> b!6916295 (= e!4163321 (and tp!1905724 tp!1905727))))

(assert (= (and b!6915862 ((_ is ElementMatch!16903) (regTwo!34318 (regTwo!34318 r3!135)))) b!6916294))

(assert (= (and b!6915862 ((_ is Concat!25748) (regTwo!34318 (regTwo!34318 r3!135)))) b!6916295))

(assert (= (and b!6915862 ((_ is Star!16903) (regTwo!34318 (regTwo!34318 r3!135)))) b!6916296))

(assert (= (and b!6915862 ((_ is Union!16903) (regTwo!34318 (regTwo!34318 r3!135)))) b!6916297))

(declare-fun e!4163322 () Bool)

(assert (=> b!6915905 (= tp!1905565 e!4163322)))

(declare-fun b!6916300 () Bool)

(declare-fun tp!1905728 () Bool)

(assert (=> b!6916300 (= e!4163322 tp!1905728)))

(declare-fun b!6916301 () Bool)

(declare-fun tp!1905730 () Bool)

(declare-fun tp!1905731 () Bool)

(assert (=> b!6916301 (= e!4163322 (and tp!1905730 tp!1905731))))

(declare-fun b!6916298 () Bool)

(assert (=> b!6916298 (= e!4163322 tp_is_empty!43031)))

(declare-fun b!6916299 () Bool)

(declare-fun tp!1905729 () Bool)

(declare-fun tp!1905732 () Bool)

(assert (=> b!6916299 (= e!4163322 (and tp!1905729 tp!1905732))))

(assert (= (and b!6915905 ((_ is ElementMatch!16903) (regOne!34319 (regTwo!34319 r3!135)))) b!6916298))

(assert (= (and b!6915905 ((_ is Concat!25748) (regOne!34319 (regTwo!34319 r3!135)))) b!6916299))

(assert (= (and b!6915905 ((_ is Star!16903) (regOne!34319 (regTwo!34319 r3!135)))) b!6916300))

(assert (= (and b!6915905 ((_ is Union!16903) (regOne!34319 (regTwo!34319 r3!135)))) b!6916301))

(declare-fun e!4163323 () Bool)

(assert (=> b!6915905 (= tp!1905566 e!4163323)))

(declare-fun b!6916304 () Bool)

(declare-fun tp!1905733 () Bool)

(assert (=> b!6916304 (= e!4163323 tp!1905733)))

(declare-fun b!6916305 () Bool)

(declare-fun tp!1905735 () Bool)

(declare-fun tp!1905736 () Bool)

(assert (=> b!6916305 (= e!4163323 (and tp!1905735 tp!1905736))))

(declare-fun b!6916302 () Bool)

(assert (=> b!6916302 (= e!4163323 tp_is_empty!43031)))

(declare-fun b!6916303 () Bool)

(declare-fun tp!1905734 () Bool)

(declare-fun tp!1905737 () Bool)

(assert (=> b!6916303 (= e!4163323 (and tp!1905734 tp!1905737))))

(assert (= (and b!6915905 ((_ is ElementMatch!16903) (regTwo!34319 (regTwo!34319 r3!135)))) b!6916302))

(assert (= (and b!6915905 ((_ is Concat!25748) (regTwo!34319 (regTwo!34319 r3!135)))) b!6916303))

(assert (= (and b!6915905 ((_ is Star!16903) (regTwo!34319 (regTwo!34319 r3!135)))) b!6916304))

(assert (= (and b!6915905 ((_ is Union!16903) (regTwo!34319 (regTwo!34319 r3!135)))) b!6916305))

(declare-fun e!4163324 () Bool)

(assert (=> b!6915864 (= tp!1905517 e!4163324)))

(declare-fun b!6916308 () Bool)

(declare-fun tp!1905738 () Bool)

(assert (=> b!6916308 (= e!4163324 tp!1905738)))

(declare-fun b!6916309 () Bool)

(declare-fun tp!1905740 () Bool)

(declare-fun tp!1905741 () Bool)

(assert (=> b!6916309 (= e!4163324 (and tp!1905740 tp!1905741))))

(declare-fun b!6916306 () Bool)

(assert (=> b!6916306 (= e!4163324 tp_is_empty!43031)))

(declare-fun b!6916307 () Bool)

(declare-fun tp!1905739 () Bool)

(declare-fun tp!1905742 () Bool)

(assert (=> b!6916307 (= e!4163324 (and tp!1905739 tp!1905742))))

(assert (= (and b!6915864 ((_ is ElementMatch!16903) (regOne!34319 (regTwo!34318 r3!135)))) b!6916306))

(assert (= (and b!6915864 ((_ is Concat!25748) (regOne!34319 (regTwo!34318 r3!135)))) b!6916307))

(assert (= (and b!6915864 ((_ is Star!16903) (regOne!34319 (regTwo!34318 r3!135)))) b!6916308))

(assert (= (and b!6915864 ((_ is Union!16903) (regOne!34319 (regTwo!34318 r3!135)))) b!6916309))

(declare-fun e!4163325 () Bool)

(assert (=> b!6915864 (= tp!1905518 e!4163325)))

(declare-fun b!6916312 () Bool)

(declare-fun tp!1905743 () Bool)

(assert (=> b!6916312 (= e!4163325 tp!1905743)))

(declare-fun b!6916313 () Bool)

(declare-fun tp!1905745 () Bool)

(declare-fun tp!1905746 () Bool)

(assert (=> b!6916313 (= e!4163325 (and tp!1905745 tp!1905746))))

(declare-fun b!6916310 () Bool)

(assert (=> b!6916310 (= e!4163325 tp_is_empty!43031)))

(declare-fun b!6916311 () Bool)

(declare-fun tp!1905744 () Bool)

(declare-fun tp!1905747 () Bool)

(assert (=> b!6916311 (= e!4163325 (and tp!1905744 tp!1905747))))

(assert (= (and b!6915864 ((_ is ElementMatch!16903) (regTwo!34319 (regTwo!34318 r3!135)))) b!6916310))

(assert (= (and b!6915864 ((_ is Concat!25748) (regTwo!34319 (regTwo!34318 r3!135)))) b!6916311))

(assert (= (and b!6915864 ((_ is Star!16903) (regTwo!34319 (regTwo!34318 r3!135)))) b!6916312))

(assert (= (and b!6915864 ((_ is Union!16903) (regTwo!34319 (regTwo!34318 r3!135)))) b!6916313))

(declare-fun e!4163326 () Bool)

(assert (=> b!6915888 (= tp!1905543 e!4163326)))

(declare-fun b!6916316 () Bool)

(declare-fun tp!1905748 () Bool)

(assert (=> b!6916316 (= e!4163326 tp!1905748)))

(declare-fun b!6916317 () Bool)

(declare-fun tp!1905750 () Bool)

(declare-fun tp!1905751 () Bool)

(assert (=> b!6916317 (= e!4163326 (and tp!1905750 tp!1905751))))

(declare-fun b!6916314 () Bool)

(assert (=> b!6916314 (= e!4163326 tp_is_empty!43031)))

(declare-fun b!6916315 () Bool)

(declare-fun tp!1905749 () Bool)

(declare-fun tp!1905752 () Bool)

(assert (=> b!6916315 (= e!4163326 (and tp!1905749 tp!1905752))))

(assert (= (and b!6915888 ((_ is ElementMatch!16903) (reg!17232 (reg!17232 r3!135)))) b!6916314))

(assert (= (and b!6915888 ((_ is Concat!25748) (reg!17232 (reg!17232 r3!135)))) b!6916315))

(assert (= (and b!6915888 ((_ is Star!16903) (reg!17232 (reg!17232 r3!135)))) b!6916316))

(assert (= (and b!6915888 ((_ is Union!16903) (reg!17232 (reg!17232 r3!135)))) b!6916317))

(declare-fun e!4163327 () Bool)

(assert (=> b!6915879 (= tp!1905534 e!4163327)))

(declare-fun b!6916320 () Bool)

(declare-fun tp!1905753 () Bool)

(assert (=> b!6916320 (= e!4163327 tp!1905753)))

(declare-fun b!6916321 () Bool)

(declare-fun tp!1905755 () Bool)

(declare-fun tp!1905756 () Bool)

(assert (=> b!6916321 (= e!4163327 (and tp!1905755 tp!1905756))))

(declare-fun b!6916318 () Bool)

(assert (=> b!6916318 (= e!4163327 tp_is_empty!43031)))

(declare-fun b!6916319 () Bool)

(declare-fun tp!1905754 () Bool)

(declare-fun tp!1905757 () Bool)

(assert (=> b!6916319 (= e!4163327 (and tp!1905754 tp!1905757))))

(assert (= (and b!6915879 ((_ is ElementMatch!16903) (regOne!34318 (regOne!34318 r1!6342)))) b!6916318))

(assert (= (and b!6915879 ((_ is Concat!25748) (regOne!34318 (regOne!34318 r1!6342)))) b!6916319))

(assert (= (and b!6915879 ((_ is Star!16903) (regOne!34318 (regOne!34318 r1!6342)))) b!6916320))

(assert (= (and b!6915879 ((_ is Union!16903) (regOne!34318 (regOne!34318 r1!6342)))) b!6916321))

(declare-fun e!4163328 () Bool)

(assert (=> b!6915879 (= tp!1905537 e!4163328)))

(declare-fun b!6916324 () Bool)

(declare-fun tp!1905758 () Bool)

(assert (=> b!6916324 (= e!4163328 tp!1905758)))

(declare-fun b!6916325 () Bool)

(declare-fun tp!1905760 () Bool)

(declare-fun tp!1905761 () Bool)

(assert (=> b!6916325 (= e!4163328 (and tp!1905760 tp!1905761))))

(declare-fun b!6916322 () Bool)

(assert (=> b!6916322 (= e!4163328 tp_is_empty!43031)))

(declare-fun b!6916323 () Bool)

(declare-fun tp!1905759 () Bool)

(declare-fun tp!1905762 () Bool)

(assert (=> b!6916323 (= e!4163328 (and tp!1905759 tp!1905762))))

(assert (= (and b!6915879 ((_ is ElementMatch!16903) (regTwo!34318 (regOne!34318 r1!6342)))) b!6916322))

(assert (= (and b!6915879 ((_ is Concat!25748) (regTwo!34318 (regOne!34318 r1!6342)))) b!6916323))

(assert (= (and b!6915879 ((_ is Star!16903) (regTwo!34318 (regOne!34318 r1!6342)))) b!6916324))

(assert (= (and b!6915879 ((_ is Union!16903) (regTwo!34318 (regOne!34318 r1!6342)))) b!6916325))

(declare-fun e!4163329 () Bool)

(assert (=> b!6915897 (= tp!1905555 e!4163329)))

(declare-fun b!6916328 () Bool)

(declare-fun tp!1905763 () Bool)

(assert (=> b!6916328 (= e!4163329 tp!1905763)))

(declare-fun b!6916329 () Bool)

(declare-fun tp!1905765 () Bool)

(declare-fun tp!1905766 () Bool)

(assert (=> b!6916329 (= e!4163329 (and tp!1905765 tp!1905766))))

(declare-fun b!6916326 () Bool)

(assert (=> b!6916326 (= e!4163329 tp_is_empty!43031)))

(declare-fun b!6916327 () Bool)

(declare-fun tp!1905764 () Bool)

(declare-fun tp!1905767 () Bool)

(assert (=> b!6916327 (= e!4163329 (and tp!1905764 tp!1905767))))

(assert (= (and b!6915897 ((_ is ElementMatch!16903) (regOne!34319 (regTwo!34319 r1!6342)))) b!6916326))

(assert (= (and b!6915897 ((_ is Concat!25748) (regOne!34319 (regTwo!34319 r1!6342)))) b!6916327))

(assert (= (and b!6915897 ((_ is Star!16903) (regOne!34319 (regTwo!34319 r1!6342)))) b!6916328))

(assert (= (and b!6915897 ((_ is Union!16903) (regOne!34319 (regTwo!34319 r1!6342)))) b!6916329))

(declare-fun e!4163330 () Bool)

(assert (=> b!6915897 (= tp!1905556 e!4163330)))

(declare-fun b!6916332 () Bool)

(declare-fun tp!1905768 () Bool)

(assert (=> b!6916332 (= e!4163330 tp!1905768)))

(declare-fun b!6916333 () Bool)

(declare-fun tp!1905770 () Bool)

(declare-fun tp!1905771 () Bool)

(assert (=> b!6916333 (= e!4163330 (and tp!1905770 tp!1905771))))

(declare-fun b!6916330 () Bool)

(assert (=> b!6916330 (= e!4163330 tp_is_empty!43031)))

(declare-fun b!6916331 () Bool)

(declare-fun tp!1905769 () Bool)

(declare-fun tp!1905772 () Bool)

(assert (=> b!6916331 (= e!4163330 (and tp!1905769 tp!1905772))))

(assert (= (and b!6915897 ((_ is ElementMatch!16903) (regTwo!34319 (regTwo!34319 r1!6342)))) b!6916330))

(assert (= (and b!6915897 ((_ is Concat!25748) (regTwo!34319 (regTwo!34319 r1!6342)))) b!6916331))

(assert (= (and b!6915897 ((_ is Star!16903) (regTwo!34319 (regTwo!34319 r1!6342)))) b!6916332))

(assert (= (and b!6915897 ((_ is Union!16903) (regTwo!34319 (regTwo!34319 r1!6342)))) b!6916333))

(declare-fun e!4163331 () Bool)

(assert (=> b!6915912 (= tp!1905573 e!4163331)))

(declare-fun b!6916336 () Bool)

(declare-fun tp!1905773 () Bool)

(assert (=> b!6916336 (= e!4163331 tp!1905773)))

(declare-fun b!6916337 () Bool)

(declare-fun tp!1905775 () Bool)

(declare-fun tp!1905776 () Bool)

(assert (=> b!6916337 (= e!4163331 (and tp!1905775 tp!1905776))))

(declare-fun b!6916334 () Bool)

(assert (=> b!6916334 (= e!4163331 tp_is_empty!43031)))

(declare-fun b!6916335 () Bool)

(declare-fun tp!1905774 () Bool)

(declare-fun tp!1905777 () Bool)

(assert (=> b!6916335 (= e!4163331 (and tp!1905774 tp!1905777))))

(assert (= (and b!6915912 ((_ is ElementMatch!16903) (reg!17232 (regOne!34318 r2!6280)))) b!6916334))

(assert (= (and b!6915912 ((_ is Concat!25748) (reg!17232 (regOne!34318 r2!6280)))) b!6916335))

(assert (= (and b!6915912 ((_ is Star!16903) (reg!17232 (regOne!34318 r2!6280)))) b!6916336))

(assert (= (and b!6915912 ((_ is Union!16903) (reg!17232 (regOne!34318 r2!6280)))) b!6916337))

(declare-fun e!4163332 () Bool)

(assert (=> b!6915903 (= tp!1905564 e!4163332)))

(declare-fun b!6916340 () Bool)

(declare-fun tp!1905778 () Bool)

(assert (=> b!6916340 (= e!4163332 tp!1905778)))

(declare-fun b!6916341 () Bool)

(declare-fun tp!1905780 () Bool)

(declare-fun tp!1905781 () Bool)

(assert (=> b!6916341 (= e!4163332 (and tp!1905780 tp!1905781))))

(declare-fun b!6916338 () Bool)

(assert (=> b!6916338 (= e!4163332 tp_is_empty!43031)))

(declare-fun b!6916339 () Bool)

(declare-fun tp!1905779 () Bool)

(declare-fun tp!1905782 () Bool)

(assert (=> b!6916339 (= e!4163332 (and tp!1905779 tp!1905782))))

(assert (= (and b!6915903 ((_ is ElementMatch!16903) (regOne!34318 (regTwo!34319 r3!135)))) b!6916338))

(assert (= (and b!6915903 ((_ is Concat!25748) (regOne!34318 (regTwo!34319 r3!135)))) b!6916339))

(assert (= (and b!6915903 ((_ is Star!16903) (regOne!34318 (regTwo!34319 r3!135)))) b!6916340))

(assert (= (and b!6915903 ((_ is Union!16903) (regOne!34318 (regTwo!34319 r3!135)))) b!6916341))

(declare-fun e!4163333 () Bool)

(assert (=> b!6915903 (= tp!1905567 e!4163333)))

(declare-fun b!6916344 () Bool)

(declare-fun tp!1905783 () Bool)

(assert (=> b!6916344 (= e!4163333 tp!1905783)))

(declare-fun b!6916345 () Bool)

(declare-fun tp!1905785 () Bool)

(declare-fun tp!1905786 () Bool)

(assert (=> b!6916345 (= e!4163333 (and tp!1905785 tp!1905786))))

(declare-fun b!6916342 () Bool)

(assert (=> b!6916342 (= e!4163333 tp_is_empty!43031)))

(declare-fun b!6916343 () Bool)

(declare-fun tp!1905784 () Bool)

(declare-fun tp!1905787 () Bool)

(assert (=> b!6916343 (= e!4163333 (and tp!1905784 tp!1905787))))

(assert (= (and b!6915903 ((_ is ElementMatch!16903) (regTwo!34318 (regTwo!34319 r3!135)))) b!6916342))

(assert (= (and b!6915903 ((_ is Concat!25748) (regTwo!34318 (regTwo!34319 r3!135)))) b!6916343))

(assert (= (and b!6915903 ((_ is Star!16903) (regTwo!34318 (regTwo!34319 r3!135)))) b!6916344))

(assert (= (and b!6915903 ((_ is Union!16903) (regTwo!34318 (regTwo!34319 r3!135)))) b!6916345))

(declare-fun e!4163334 () Bool)

(assert (=> b!6915921 (= tp!1905585 e!4163334)))

(declare-fun b!6916348 () Bool)

(declare-fun tp!1905788 () Bool)

(assert (=> b!6916348 (= e!4163334 tp!1905788)))

(declare-fun b!6916349 () Bool)

(declare-fun tp!1905790 () Bool)

(declare-fun tp!1905791 () Bool)

(assert (=> b!6916349 (= e!4163334 (and tp!1905790 tp!1905791))))

(declare-fun b!6916346 () Bool)

(assert (=> b!6916346 (= e!4163334 tp_is_empty!43031)))

(declare-fun b!6916347 () Bool)

(declare-fun tp!1905789 () Bool)

(declare-fun tp!1905792 () Bool)

(assert (=> b!6916347 (= e!4163334 (and tp!1905789 tp!1905792))))

(assert (= (and b!6915921 ((_ is ElementMatch!16903) (regOne!34319 (reg!17232 r2!6280)))) b!6916346))

(assert (= (and b!6915921 ((_ is Concat!25748) (regOne!34319 (reg!17232 r2!6280)))) b!6916347))

(assert (= (and b!6915921 ((_ is Star!16903) (regOne!34319 (reg!17232 r2!6280)))) b!6916348))

(assert (= (and b!6915921 ((_ is Union!16903) (regOne!34319 (reg!17232 r2!6280)))) b!6916349))

(declare-fun e!4163335 () Bool)

(assert (=> b!6915921 (= tp!1905586 e!4163335)))

(declare-fun b!6916352 () Bool)

(declare-fun tp!1905793 () Bool)

(assert (=> b!6916352 (= e!4163335 tp!1905793)))

(declare-fun b!6916353 () Bool)

(declare-fun tp!1905795 () Bool)

(declare-fun tp!1905796 () Bool)

(assert (=> b!6916353 (= e!4163335 (and tp!1905795 tp!1905796))))

(declare-fun b!6916350 () Bool)

(assert (=> b!6916350 (= e!4163335 tp_is_empty!43031)))

(declare-fun b!6916351 () Bool)

(declare-fun tp!1905794 () Bool)

(declare-fun tp!1905797 () Bool)

(assert (=> b!6916351 (= e!4163335 (and tp!1905794 tp!1905797))))

(assert (= (and b!6915921 ((_ is ElementMatch!16903) (regTwo!34319 (reg!17232 r2!6280)))) b!6916350))

(assert (= (and b!6915921 ((_ is Concat!25748) (regTwo!34319 (reg!17232 r2!6280)))) b!6916351))

(assert (= (and b!6915921 ((_ is Star!16903) (regTwo!34319 (reg!17232 r2!6280)))) b!6916352))

(assert (= (and b!6915921 ((_ is Union!16903) (regTwo!34319 (reg!17232 r2!6280)))) b!6916353))

(declare-fun e!4163336 () Bool)

(assert (=> b!6915904 (= tp!1905563 e!4163336)))

(declare-fun b!6916356 () Bool)

(declare-fun tp!1905798 () Bool)

(assert (=> b!6916356 (= e!4163336 tp!1905798)))

(declare-fun b!6916357 () Bool)

(declare-fun tp!1905800 () Bool)

(declare-fun tp!1905801 () Bool)

(assert (=> b!6916357 (= e!4163336 (and tp!1905800 tp!1905801))))

(declare-fun b!6916354 () Bool)

(assert (=> b!6916354 (= e!4163336 tp_is_empty!43031)))

(declare-fun b!6916355 () Bool)

(declare-fun tp!1905799 () Bool)

(declare-fun tp!1905802 () Bool)

(assert (=> b!6916355 (= e!4163336 (and tp!1905799 tp!1905802))))

(assert (= (and b!6915904 ((_ is ElementMatch!16903) (reg!17232 (regTwo!34319 r3!135)))) b!6916354))

(assert (= (and b!6915904 ((_ is Concat!25748) (reg!17232 (regTwo!34319 r3!135)))) b!6916355))

(assert (= (and b!6915904 ((_ is Star!16903) (reg!17232 (regTwo!34319 r3!135)))) b!6916356))

(assert (= (and b!6915904 ((_ is Union!16903) (reg!17232 (regTwo!34319 r3!135)))) b!6916357))

(declare-fun e!4163337 () Bool)

(assert (=> b!6915895 (= tp!1905554 e!4163337)))

(declare-fun b!6916360 () Bool)

(declare-fun tp!1905803 () Bool)

(assert (=> b!6916360 (= e!4163337 tp!1905803)))

(declare-fun b!6916361 () Bool)

(declare-fun tp!1905805 () Bool)

(declare-fun tp!1905806 () Bool)

(assert (=> b!6916361 (= e!4163337 (and tp!1905805 tp!1905806))))

(declare-fun b!6916358 () Bool)

(assert (=> b!6916358 (= e!4163337 tp_is_empty!43031)))

(declare-fun b!6916359 () Bool)

(declare-fun tp!1905804 () Bool)

(declare-fun tp!1905807 () Bool)

(assert (=> b!6916359 (= e!4163337 (and tp!1905804 tp!1905807))))

(assert (= (and b!6915895 ((_ is ElementMatch!16903) (regOne!34318 (regTwo!34319 r1!6342)))) b!6916358))

(assert (= (and b!6915895 ((_ is Concat!25748) (regOne!34318 (regTwo!34319 r1!6342)))) b!6916359))

(assert (= (and b!6915895 ((_ is Star!16903) (regOne!34318 (regTwo!34319 r1!6342)))) b!6916360))

(assert (= (and b!6915895 ((_ is Union!16903) (regOne!34318 (regTwo!34319 r1!6342)))) b!6916361))

(declare-fun e!4163338 () Bool)

(assert (=> b!6915895 (= tp!1905557 e!4163338)))

(declare-fun b!6916364 () Bool)

(declare-fun tp!1905808 () Bool)

(assert (=> b!6916364 (= e!4163338 tp!1905808)))

(declare-fun b!6916365 () Bool)

(declare-fun tp!1905810 () Bool)

(declare-fun tp!1905811 () Bool)

(assert (=> b!6916365 (= e!4163338 (and tp!1905810 tp!1905811))))

(declare-fun b!6916362 () Bool)

(assert (=> b!6916362 (= e!4163338 tp_is_empty!43031)))

(declare-fun b!6916363 () Bool)

(declare-fun tp!1905809 () Bool)

(declare-fun tp!1905812 () Bool)

(assert (=> b!6916363 (= e!4163338 (and tp!1905809 tp!1905812))))

(assert (= (and b!6915895 ((_ is ElementMatch!16903) (regTwo!34318 (regTwo!34319 r1!6342)))) b!6916362))

(assert (= (and b!6915895 ((_ is Concat!25748) (regTwo!34318 (regTwo!34319 r1!6342)))) b!6916363))

(assert (= (and b!6915895 ((_ is Star!16903) (regTwo!34318 (regTwo!34319 r1!6342)))) b!6916364))

(assert (= (and b!6915895 ((_ is Union!16903) (regTwo!34318 (regTwo!34319 r1!6342)))) b!6916365))

(declare-fun e!4163339 () Bool)

(assert (=> b!6915913 (= tp!1905575 e!4163339)))

(declare-fun b!6916368 () Bool)

(declare-fun tp!1905813 () Bool)

(assert (=> b!6916368 (= e!4163339 tp!1905813)))

(declare-fun b!6916369 () Bool)

(declare-fun tp!1905815 () Bool)

(declare-fun tp!1905816 () Bool)

(assert (=> b!6916369 (= e!4163339 (and tp!1905815 tp!1905816))))

(declare-fun b!6916366 () Bool)

(assert (=> b!6916366 (= e!4163339 tp_is_empty!43031)))

(declare-fun b!6916367 () Bool)

(declare-fun tp!1905814 () Bool)

(declare-fun tp!1905817 () Bool)

(assert (=> b!6916367 (= e!4163339 (and tp!1905814 tp!1905817))))

(assert (= (and b!6915913 ((_ is ElementMatch!16903) (regOne!34319 (regOne!34318 r2!6280)))) b!6916366))

(assert (= (and b!6915913 ((_ is Concat!25748) (regOne!34319 (regOne!34318 r2!6280)))) b!6916367))

(assert (= (and b!6915913 ((_ is Star!16903) (regOne!34319 (regOne!34318 r2!6280)))) b!6916368))

(assert (= (and b!6915913 ((_ is Union!16903) (regOne!34319 (regOne!34318 r2!6280)))) b!6916369))

(declare-fun e!4163340 () Bool)

(assert (=> b!6915913 (= tp!1905576 e!4163340)))

(declare-fun b!6916372 () Bool)

(declare-fun tp!1905818 () Bool)

(assert (=> b!6916372 (= e!4163340 tp!1905818)))

(declare-fun b!6916373 () Bool)

(declare-fun tp!1905820 () Bool)

(declare-fun tp!1905821 () Bool)

(assert (=> b!6916373 (= e!4163340 (and tp!1905820 tp!1905821))))

(declare-fun b!6916370 () Bool)

(assert (=> b!6916370 (= e!4163340 tp_is_empty!43031)))

(declare-fun b!6916371 () Bool)

(declare-fun tp!1905819 () Bool)

(declare-fun tp!1905822 () Bool)

(assert (=> b!6916371 (= e!4163340 (and tp!1905819 tp!1905822))))

(assert (= (and b!6915913 ((_ is ElementMatch!16903) (regTwo!34319 (regOne!34318 r2!6280)))) b!6916370))

(assert (= (and b!6915913 ((_ is Concat!25748) (regTwo!34319 (regOne!34318 r2!6280)))) b!6916371))

(assert (= (and b!6915913 ((_ is Star!16903) (regTwo!34319 (regOne!34318 r2!6280)))) b!6916372))

(assert (= (and b!6915913 ((_ is Union!16903) (regTwo!34319 (regOne!34318 r2!6280)))) b!6916373))

(declare-fun b!6916374 () Bool)

(declare-fun e!4163341 () Bool)

(declare-fun tp!1905823 () Bool)

(assert (=> b!6916374 (= e!4163341 (and tp_is_empty!43031 tp!1905823))))

(assert (=> b!6915869 (= tp!1905522 e!4163341)))

(assert (= (and b!6915869 ((_ is Cons!66532) (t!380399 (t!380399 s!14361)))) b!6916374))

(declare-fun e!4163342 () Bool)

(assert (=> b!6915919 (= tp!1905584 e!4163342)))

(declare-fun b!6916377 () Bool)

(declare-fun tp!1905824 () Bool)

(assert (=> b!6916377 (= e!4163342 tp!1905824)))

(declare-fun b!6916378 () Bool)

(declare-fun tp!1905826 () Bool)

(declare-fun tp!1905827 () Bool)

(assert (=> b!6916378 (= e!4163342 (and tp!1905826 tp!1905827))))

(declare-fun b!6916375 () Bool)

(assert (=> b!6916375 (= e!4163342 tp_is_empty!43031)))

(declare-fun b!6916376 () Bool)

(declare-fun tp!1905825 () Bool)

(declare-fun tp!1905828 () Bool)

(assert (=> b!6916376 (= e!4163342 (and tp!1905825 tp!1905828))))

(assert (= (and b!6915919 ((_ is ElementMatch!16903) (regOne!34318 (reg!17232 r2!6280)))) b!6916375))

(assert (= (and b!6915919 ((_ is Concat!25748) (regOne!34318 (reg!17232 r2!6280)))) b!6916376))

(assert (= (and b!6915919 ((_ is Star!16903) (regOne!34318 (reg!17232 r2!6280)))) b!6916377))

(assert (= (and b!6915919 ((_ is Union!16903) (regOne!34318 (reg!17232 r2!6280)))) b!6916378))

(declare-fun e!4163343 () Bool)

(assert (=> b!6915919 (= tp!1905587 e!4163343)))

(declare-fun b!6916381 () Bool)

(declare-fun tp!1905829 () Bool)

(assert (=> b!6916381 (= e!4163343 tp!1905829)))

(declare-fun b!6916382 () Bool)

(declare-fun tp!1905831 () Bool)

(declare-fun tp!1905832 () Bool)

(assert (=> b!6916382 (= e!4163343 (and tp!1905831 tp!1905832))))

(declare-fun b!6916379 () Bool)

(assert (=> b!6916379 (= e!4163343 tp_is_empty!43031)))

(declare-fun b!6916380 () Bool)

(declare-fun tp!1905830 () Bool)

(declare-fun tp!1905833 () Bool)

(assert (=> b!6916380 (= e!4163343 (and tp!1905830 tp!1905833))))

(assert (= (and b!6915919 ((_ is ElementMatch!16903) (regTwo!34318 (reg!17232 r2!6280)))) b!6916379))

(assert (= (and b!6915919 ((_ is Concat!25748) (regTwo!34318 (reg!17232 r2!6280)))) b!6916380))

(assert (= (and b!6915919 ((_ is Star!16903) (regTwo!34318 (reg!17232 r2!6280)))) b!6916381))

(assert (= (and b!6915919 ((_ is Union!16903) (regTwo!34318 (reg!17232 r2!6280)))) b!6916382))

(declare-fun e!4163344 () Bool)

(assert (=> b!6915920 (= tp!1905583 e!4163344)))

(declare-fun b!6916385 () Bool)

(declare-fun tp!1905834 () Bool)

(assert (=> b!6916385 (= e!4163344 tp!1905834)))

(declare-fun b!6916386 () Bool)

(declare-fun tp!1905836 () Bool)

(declare-fun tp!1905837 () Bool)

(assert (=> b!6916386 (= e!4163344 (and tp!1905836 tp!1905837))))

(declare-fun b!6916383 () Bool)

(assert (=> b!6916383 (= e!4163344 tp_is_empty!43031)))

(declare-fun b!6916384 () Bool)

(declare-fun tp!1905835 () Bool)

(declare-fun tp!1905838 () Bool)

(assert (=> b!6916384 (= e!4163344 (and tp!1905835 tp!1905838))))

(assert (= (and b!6915920 ((_ is ElementMatch!16903) (reg!17232 (reg!17232 r2!6280)))) b!6916383))

(assert (= (and b!6915920 ((_ is Concat!25748) (reg!17232 (reg!17232 r2!6280)))) b!6916384))

(assert (= (and b!6915920 ((_ is Star!16903) (reg!17232 (reg!17232 r2!6280)))) b!6916385))

(assert (= (and b!6915920 ((_ is Union!16903) (reg!17232 (reg!17232 r2!6280)))) b!6916386))

(declare-fun e!4163345 () Bool)

(assert (=> b!6915911 (= tp!1905574 e!4163345)))

(declare-fun b!6916389 () Bool)

(declare-fun tp!1905839 () Bool)

(assert (=> b!6916389 (= e!4163345 tp!1905839)))

(declare-fun b!6916390 () Bool)

(declare-fun tp!1905841 () Bool)

(declare-fun tp!1905842 () Bool)

(assert (=> b!6916390 (= e!4163345 (and tp!1905841 tp!1905842))))

(declare-fun b!6916387 () Bool)

(assert (=> b!6916387 (= e!4163345 tp_is_empty!43031)))

(declare-fun b!6916388 () Bool)

(declare-fun tp!1905840 () Bool)

(declare-fun tp!1905843 () Bool)

(assert (=> b!6916388 (= e!4163345 (and tp!1905840 tp!1905843))))

(assert (= (and b!6915911 ((_ is ElementMatch!16903) (regOne!34318 (regOne!34318 r2!6280)))) b!6916387))

(assert (= (and b!6915911 ((_ is Concat!25748) (regOne!34318 (regOne!34318 r2!6280)))) b!6916388))

(assert (= (and b!6915911 ((_ is Star!16903) (regOne!34318 (regOne!34318 r2!6280)))) b!6916389))

(assert (= (and b!6915911 ((_ is Union!16903) (regOne!34318 (regOne!34318 r2!6280)))) b!6916390))

(declare-fun e!4163346 () Bool)

(assert (=> b!6915911 (= tp!1905577 e!4163346)))

(declare-fun b!6916393 () Bool)

(declare-fun tp!1905844 () Bool)

(assert (=> b!6916393 (= e!4163346 tp!1905844)))

(declare-fun b!6916394 () Bool)

(declare-fun tp!1905846 () Bool)

(declare-fun tp!1905847 () Bool)

(assert (=> b!6916394 (= e!4163346 (and tp!1905846 tp!1905847))))

(declare-fun b!6916391 () Bool)

(assert (=> b!6916391 (= e!4163346 tp_is_empty!43031)))

(declare-fun b!6916392 () Bool)

(declare-fun tp!1905845 () Bool)

(declare-fun tp!1905848 () Bool)

(assert (=> b!6916392 (= e!4163346 (and tp!1905845 tp!1905848))))

(assert (= (and b!6915911 ((_ is ElementMatch!16903) (regTwo!34318 (regOne!34318 r2!6280)))) b!6916391))

(assert (= (and b!6915911 ((_ is Concat!25748) (regTwo!34318 (regOne!34318 r2!6280)))) b!6916392))

(assert (= (and b!6915911 ((_ is Star!16903) (regTwo!34318 (regOne!34318 r2!6280)))) b!6916393))

(assert (= (and b!6915911 ((_ is Union!16903) (regTwo!34318 (regOne!34318 r2!6280)))) b!6916394))

(declare-fun e!4163347 () Bool)

(assert (=> b!6915885 (= tp!1905540 e!4163347)))

(declare-fun b!6916397 () Bool)

(declare-fun tp!1905849 () Bool)

(assert (=> b!6916397 (= e!4163347 tp!1905849)))

(declare-fun b!6916398 () Bool)

(declare-fun tp!1905851 () Bool)

(declare-fun tp!1905852 () Bool)

(assert (=> b!6916398 (= e!4163347 (and tp!1905851 tp!1905852))))

(declare-fun b!6916395 () Bool)

(assert (=> b!6916395 (= e!4163347 tp_is_empty!43031)))

(declare-fun b!6916396 () Bool)

(declare-fun tp!1905850 () Bool)

(declare-fun tp!1905853 () Bool)

(assert (=> b!6916396 (= e!4163347 (and tp!1905850 tp!1905853))))

(assert (= (and b!6915885 ((_ is ElementMatch!16903) (regOne!34319 (regTwo!34318 r1!6342)))) b!6916395))

(assert (= (and b!6915885 ((_ is Concat!25748) (regOne!34319 (regTwo!34318 r1!6342)))) b!6916396))

(assert (= (and b!6915885 ((_ is Star!16903) (regOne!34319 (regTwo!34318 r1!6342)))) b!6916397))

(assert (= (and b!6915885 ((_ is Union!16903) (regOne!34319 (regTwo!34318 r1!6342)))) b!6916398))

(declare-fun e!4163348 () Bool)

(assert (=> b!6915885 (= tp!1905541 e!4163348)))

(declare-fun b!6916401 () Bool)

(declare-fun tp!1905854 () Bool)

(assert (=> b!6916401 (= e!4163348 tp!1905854)))

(declare-fun b!6916402 () Bool)

(declare-fun tp!1905856 () Bool)

(declare-fun tp!1905857 () Bool)

(assert (=> b!6916402 (= e!4163348 (and tp!1905856 tp!1905857))))

(declare-fun b!6916399 () Bool)

(assert (=> b!6916399 (= e!4163348 tp_is_empty!43031)))

(declare-fun b!6916400 () Bool)

(declare-fun tp!1905855 () Bool)

(declare-fun tp!1905858 () Bool)

(assert (=> b!6916400 (= e!4163348 (and tp!1905855 tp!1905858))))

(assert (= (and b!6915885 ((_ is ElementMatch!16903) (regTwo!34319 (regTwo!34318 r1!6342)))) b!6916399))

(assert (= (and b!6915885 ((_ is Concat!25748) (regTwo!34319 (regTwo!34318 r1!6342)))) b!6916400))

(assert (= (and b!6915885 ((_ is Star!16903) (regTwo!34319 (regTwo!34318 r1!6342)))) b!6916401))

(assert (= (and b!6915885 ((_ is Union!16903) (regTwo!34319 (regTwo!34318 r1!6342)))) b!6916402))

(declare-fun e!4163354 () Bool)

(assert (=> b!6915860 (= tp!1905512 e!4163354)))

(declare-fun b!6916415 () Bool)

(declare-fun tp!1905859 () Bool)

(assert (=> b!6916415 (= e!4163354 tp!1905859)))

(declare-fun b!6916416 () Bool)

(declare-fun tp!1905861 () Bool)

(declare-fun tp!1905862 () Bool)

(assert (=> b!6916416 (= e!4163354 (and tp!1905861 tp!1905862))))

(declare-fun b!6916413 () Bool)

(assert (=> b!6916413 (= e!4163354 tp_is_empty!43031)))

(declare-fun b!6916414 () Bool)

(declare-fun tp!1905860 () Bool)

(declare-fun tp!1905863 () Bool)

(assert (=> b!6916414 (= e!4163354 (and tp!1905860 tp!1905863))))

(assert (= (and b!6915860 ((_ is ElementMatch!16903) (regOne!34319 (regOne!34318 r3!135)))) b!6916413))

(assert (= (and b!6915860 ((_ is Concat!25748) (regOne!34319 (regOne!34318 r3!135)))) b!6916414))

(assert (= (and b!6915860 ((_ is Star!16903) (regOne!34319 (regOne!34318 r3!135)))) b!6916415))

(assert (= (and b!6915860 ((_ is Union!16903) (regOne!34319 (regOne!34318 r3!135)))) b!6916416))

(declare-fun e!4163355 () Bool)

(assert (=> b!6915860 (= tp!1905513 e!4163355)))

(declare-fun b!6916419 () Bool)

(declare-fun tp!1905864 () Bool)

(assert (=> b!6916419 (= e!4163355 tp!1905864)))

(declare-fun b!6916420 () Bool)

(declare-fun tp!1905866 () Bool)

(declare-fun tp!1905867 () Bool)

(assert (=> b!6916420 (= e!4163355 (and tp!1905866 tp!1905867))))

(declare-fun b!6916417 () Bool)

(assert (=> b!6916417 (= e!4163355 tp_is_empty!43031)))

(declare-fun b!6916418 () Bool)

(declare-fun tp!1905865 () Bool)

(declare-fun tp!1905868 () Bool)

(assert (=> b!6916418 (= e!4163355 (and tp!1905865 tp!1905868))))

(assert (= (and b!6915860 ((_ is ElementMatch!16903) (regTwo!34319 (regOne!34318 r3!135)))) b!6916417))

(assert (= (and b!6915860 ((_ is Concat!25748) (regTwo!34319 (regOne!34318 r3!135)))) b!6916418))

(assert (= (and b!6915860 ((_ is Star!16903) (regTwo!34319 (regOne!34318 r3!135)))) b!6916419))

(assert (= (and b!6915860 ((_ is Union!16903) (regTwo!34319 (regOne!34318 r3!135)))) b!6916420))

(declare-fun e!4163356 () Bool)

(assert (=> b!6915884 (= tp!1905538 e!4163356)))

(declare-fun b!6916423 () Bool)

(declare-fun tp!1905869 () Bool)

(assert (=> b!6916423 (= e!4163356 tp!1905869)))

(declare-fun b!6916424 () Bool)

(declare-fun tp!1905871 () Bool)

(declare-fun tp!1905872 () Bool)

(assert (=> b!6916424 (= e!4163356 (and tp!1905871 tp!1905872))))

(declare-fun b!6916421 () Bool)

(assert (=> b!6916421 (= e!4163356 tp_is_empty!43031)))

(declare-fun b!6916422 () Bool)

(declare-fun tp!1905870 () Bool)

(declare-fun tp!1905873 () Bool)

(assert (=> b!6916422 (= e!4163356 (and tp!1905870 tp!1905873))))

(assert (= (and b!6915884 ((_ is ElementMatch!16903) (reg!17232 (regTwo!34318 r1!6342)))) b!6916421))

(assert (= (and b!6915884 ((_ is Concat!25748) (reg!17232 (regTwo!34318 r1!6342)))) b!6916422))

(assert (= (and b!6915884 ((_ is Star!16903) (reg!17232 (regTwo!34318 r1!6342)))) b!6916423))

(assert (= (and b!6915884 ((_ is Union!16903) (reg!17232 (regTwo!34318 r1!6342)))) b!6916424))

(declare-fun e!4163357 () Bool)

(assert (=> b!6915875 (= tp!1905529 e!4163357)))

(declare-fun b!6916427 () Bool)

(declare-fun tp!1905874 () Bool)

(assert (=> b!6916427 (= e!4163357 tp!1905874)))

(declare-fun b!6916428 () Bool)

(declare-fun tp!1905876 () Bool)

(declare-fun tp!1905877 () Bool)

(assert (=> b!6916428 (= e!4163357 (and tp!1905876 tp!1905877))))

(declare-fun b!6916425 () Bool)

(assert (=> b!6916425 (= e!4163357 tp_is_empty!43031)))

(declare-fun b!6916426 () Bool)

(declare-fun tp!1905875 () Bool)

(declare-fun tp!1905878 () Bool)

(assert (=> b!6916426 (= e!4163357 (and tp!1905875 tp!1905878))))

(assert (= (and b!6915875 ((_ is ElementMatch!16903) (regOne!34318 (regTwo!34319 r2!6280)))) b!6916425))

(assert (= (and b!6915875 ((_ is Concat!25748) (regOne!34318 (regTwo!34319 r2!6280)))) b!6916426))

(assert (= (and b!6915875 ((_ is Star!16903) (regOne!34318 (regTwo!34319 r2!6280)))) b!6916427))

(assert (= (and b!6915875 ((_ is Union!16903) (regOne!34318 (regTwo!34319 r2!6280)))) b!6916428))

(declare-fun e!4163358 () Bool)

(assert (=> b!6915875 (= tp!1905532 e!4163358)))

(declare-fun b!6916431 () Bool)

(declare-fun tp!1905879 () Bool)

(assert (=> b!6916431 (= e!4163358 tp!1905879)))

(declare-fun b!6916432 () Bool)

(declare-fun tp!1905881 () Bool)

(declare-fun tp!1905882 () Bool)

(assert (=> b!6916432 (= e!4163358 (and tp!1905881 tp!1905882))))

(declare-fun b!6916429 () Bool)

(assert (=> b!6916429 (= e!4163358 tp_is_empty!43031)))

(declare-fun b!6916430 () Bool)

(declare-fun tp!1905880 () Bool)

(declare-fun tp!1905883 () Bool)

(assert (=> b!6916430 (= e!4163358 (and tp!1905880 tp!1905883))))

(assert (= (and b!6915875 ((_ is ElementMatch!16903) (regTwo!34318 (regTwo!34319 r2!6280)))) b!6916429))

(assert (= (and b!6915875 ((_ is Concat!25748) (regTwo!34318 (regTwo!34319 r2!6280)))) b!6916430))

(assert (= (and b!6915875 ((_ is Star!16903) (regTwo!34318 (regTwo!34319 r2!6280)))) b!6916431))

(assert (= (and b!6915875 ((_ is Union!16903) (regTwo!34318 (regTwo!34319 r2!6280)))) b!6916432))

(declare-fun e!4163359 () Bool)

(assert (=> b!6915877 (= tp!1905530 e!4163359)))

(declare-fun b!6916435 () Bool)

(declare-fun tp!1905884 () Bool)

(assert (=> b!6916435 (= e!4163359 tp!1905884)))

(declare-fun b!6916436 () Bool)

(declare-fun tp!1905886 () Bool)

(declare-fun tp!1905887 () Bool)

(assert (=> b!6916436 (= e!4163359 (and tp!1905886 tp!1905887))))

(declare-fun b!6916433 () Bool)

(assert (=> b!6916433 (= e!4163359 tp_is_empty!43031)))

(declare-fun b!6916434 () Bool)

(declare-fun tp!1905885 () Bool)

(declare-fun tp!1905888 () Bool)

(assert (=> b!6916434 (= e!4163359 (and tp!1905885 tp!1905888))))

(assert (= (and b!6915877 ((_ is ElementMatch!16903) (regOne!34319 (regTwo!34319 r2!6280)))) b!6916433))

(assert (= (and b!6915877 ((_ is Concat!25748) (regOne!34319 (regTwo!34319 r2!6280)))) b!6916434))

(assert (= (and b!6915877 ((_ is Star!16903) (regOne!34319 (regTwo!34319 r2!6280)))) b!6916435))

(assert (= (and b!6915877 ((_ is Union!16903) (regOne!34319 (regTwo!34319 r2!6280)))) b!6916436))

(declare-fun e!4163360 () Bool)

(assert (=> b!6915877 (= tp!1905531 e!4163360)))

(declare-fun b!6916439 () Bool)

(declare-fun tp!1905889 () Bool)

(assert (=> b!6916439 (= e!4163360 tp!1905889)))

(declare-fun b!6916440 () Bool)

(declare-fun tp!1905891 () Bool)

(declare-fun tp!1905892 () Bool)

(assert (=> b!6916440 (= e!4163360 (and tp!1905891 tp!1905892))))

(declare-fun b!6916437 () Bool)

(assert (=> b!6916437 (= e!4163360 tp_is_empty!43031)))

(declare-fun b!6916438 () Bool)

(declare-fun tp!1905890 () Bool)

(declare-fun tp!1905893 () Bool)

(assert (=> b!6916438 (= e!4163360 (and tp!1905890 tp!1905893))))

(assert (= (and b!6915877 ((_ is ElementMatch!16903) (regTwo!34319 (regTwo!34319 r2!6280)))) b!6916437))

(assert (= (and b!6915877 ((_ is Concat!25748) (regTwo!34319 (regTwo!34319 r2!6280)))) b!6916438))

(assert (= (and b!6915877 ((_ is Star!16903) (regTwo!34319 (regTwo!34319 r2!6280)))) b!6916439))

(assert (= (and b!6915877 ((_ is Union!16903) (regTwo!34319 (regTwo!34319 r2!6280)))) b!6916440))

(declare-fun e!4163361 () Bool)

(assert (=> b!6915876 (= tp!1905528 e!4163361)))

(declare-fun b!6916443 () Bool)

(declare-fun tp!1905894 () Bool)

(assert (=> b!6916443 (= e!4163361 tp!1905894)))

(declare-fun b!6916444 () Bool)

(declare-fun tp!1905896 () Bool)

(declare-fun tp!1905897 () Bool)

(assert (=> b!6916444 (= e!4163361 (and tp!1905896 tp!1905897))))

(declare-fun b!6916441 () Bool)

(assert (=> b!6916441 (= e!4163361 tp_is_empty!43031)))

(declare-fun b!6916442 () Bool)

(declare-fun tp!1905895 () Bool)

(declare-fun tp!1905898 () Bool)

(assert (=> b!6916442 (= e!4163361 (and tp!1905895 tp!1905898))))

(assert (= (and b!6915876 ((_ is ElementMatch!16903) (reg!17232 (regTwo!34319 r2!6280)))) b!6916441))

(assert (= (and b!6915876 ((_ is Concat!25748) (reg!17232 (regTwo!34319 r2!6280)))) b!6916442))

(assert (= (and b!6915876 ((_ is Star!16903) (reg!17232 (regTwo!34319 r2!6280)))) b!6916443))

(assert (= (and b!6915876 ((_ is Union!16903) (reg!17232 (regTwo!34319 r2!6280)))) b!6916444))

(declare-fun e!4163362 () Bool)

(assert (=> b!6915858 (= tp!1905511 e!4163362)))

(declare-fun b!6916447 () Bool)

(declare-fun tp!1905899 () Bool)

(assert (=> b!6916447 (= e!4163362 tp!1905899)))

(declare-fun b!6916448 () Bool)

(declare-fun tp!1905901 () Bool)

(declare-fun tp!1905902 () Bool)

(assert (=> b!6916448 (= e!4163362 (and tp!1905901 tp!1905902))))

(declare-fun b!6916445 () Bool)

(assert (=> b!6916445 (= e!4163362 tp_is_empty!43031)))

(declare-fun b!6916446 () Bool)

(declare-fun tp!1905900 () Bool)

(declare-fun tp!1905903 () Bool)

(assert (=> b!6916446 (= e!4163362 (and tp!1905900 tp!1905903))))

(assert (= (and b!6915858 ((_ is ElementMatch!16903) (regOne!34318 (regOne!34318 r3!135)))) b!6916445))

(assert (= (and b!6915858 ((_ is Concat!25748) (regOne!34318 (regOne!34318 r3!135)))) b!6916446))

(assert (= (and b!6915858 ((_ is Star!16903) (regOne!34318 (regOne!34318 r3!135)))) b!6916447))

(assert (= (and b!6915858 ((_ is Union!16903) (regOne!34318 (regOne!34318 r3!135)))) b!6916448))

(declare-fun e!4163363 () Bool)

(assert (=> b!6915858 (= tp!1905514 e!4163363)))

(declare-fun b!6916451 () Bool)

(declare-fun tp!1905904 () Bool)

(assert (=> b!6916451 (= e!4163363 tp!1905904)))

(declare-fun b!6916452 () Bool)

(declare-fun tp!1905906 () Bool)

(declare-fun tp!1905907 () Bool)

(assert (=> b!6916452 (= e!4163363 (and tp!1905906 tp!1905907))))

(declare-fun b!6916449 () Bool)

(assert (=> b!6916449 (= e!4163363 tp_is_empty!43031)))

(declare-fun b!6916450 () Bool)

(declare-fun tp!1905905 () Bool)

(declare-fun tp!1905908 () Bool)

(assert (=> b!6916450 (= e!4163363 (and tp!1905905 tp!1905908))))

(assert (= (and b!6915858 ((_ is ElementMatch!16903) (regTwo!34318 (regOne!34318 r3!135)))) b!6916449))

(assert (= (and b!6915858 ((_ is Concat!25748) (regTwo!34318 (regOne!34318 r3!135)))) b!6916450))

(assert (= (and b!6915858 ((_ is Star!16903) (regTwo!34318 (regOne!34318 r3!135)))) b!6916451))

(assert (= (and b!6915858 ((_ is Union!16903) (regTwo!34318 (regOne!34318 r3!135)))) b!6916452))

(declare-fun e!4163371 () Bool)

(assert (=> b!6915901 (= tp!1905560 e!4163371)))

(declare-fun b!6916464 () Bool)

(declare-fun tp!1905909 () Bool)

(assert (=> b!6916464 (= e!4163371 tp!1905909)))

(declare-fun b!6916465 () Bool)

(declare-fun tp!1905911 () Bool)

(declare-fun tp!1905912 () Bool)

(assert (=> b!6916465 (= e!4163371 (and tp!1905911 tp!1905912))))

(declare-fun b!6916462 () Bool)

(assert (=> b!6916462 (= e!4163371 tp_is_empty!43031)))

(declare-fun b!6916463 () Bool)

(declare-fun tp!1905910 () Bool)

(declare-fun tp!1905913 () Bool)

(assert (=> b!6916463 (= e!4163371 (and tp!1905910 tp!1905913))))

(assert (= (and b!6915901 ((_ is ElementMatch!16903) (regOne!34319 (regOne!34319 r3!135)))) b!6916462))

(assert (= (and b!6915901 ((_ is Concat!25748) (regOne!34319 (regOne!34319 r3!135)))) b!6916463))

(assert (= (and b!6915901 ((_ is Star!16903) (regOne!34319 (regOne!34319 r3!135)))) b!6916464))

(assert (= (and b!6915901 ((_ is Union!16903) (regOne!34319 (regOne!34319 r3!135)))) b!6916465))

(declare-fun e!4163372 () Bool)

(assert (=> b!6915901 (= tp!1905561 e!4163372)))

(declare-fun b!6916468 () Bool)

(declare-fun tp!1905914 () Bool)

(assert (=> b!6916468 (= e!4163372 tp!1905914)))

(declare-fun b!6916469 () Bool)

(declare-fun tp!1905916 () Bool)

(declare-fun tp!1905917 () Bool)

(assert (=> b!6916469 (= e!4163372 (and tp!1905916 tp!1905917))))

(declare-fun b!6916466 () Bool)

(assert (=> b!6916466 (= e!4163372 tp_is_empty!43031)))

(declare-fun b!6916467 () Bool)

(declare-fun tp!1905915 () Bool)

(declare-fun tp!1905918 () Bool)

(assert (=> b!6916467 (= e!4163372 (and tp!1905915 tp!1905918))))

(assert (= (and b!6915901 ((_ is ElementMatch!16903) (regTwo!34319 (regOne!34319 r3!135)))) b!6916466))

(assert (= (and b!6915901 ((_ is Concat!25748) (regTwo!34319 (regOne!34319 r3!135)))) b!6916467))

(assert (= (and b!6915901 ((_ is Star!16903) (regTwo!34319 (regOne!34319 r3!135)))) b!6916468))

(assert (= (and b!6915901 ((_ is Union!16903) (regTwo!34319 (regOne!34319 r3!135)))) b!6916469))

(declare-fun e!4163373 () Bool)

(assert (=> b!6915900 (= tp!1905558 e!4163373)))

(declare-fun b!6916472 () Bool)

(declare-fun tp!1905919 () Bool)

(assert (=> b!6916472 (= e!4163373 tp!1905919)))

(declare-fun b!6916473 () Bool)

(declare-fun tp!1905921 () Bool)

(declare-fun tp!1905922 () Bool)

(assert (=> b!6916473 (= e!4163373 (and tp!1905921 tp!1905922))))

(declare-fun b!6916470 () Bool)

(assert (=> b!6916470 (= e!4163373 tp_is_empty!43031)))

(declare-fun b!6916471 () Bool)

(declare-fun tp!1905920 () Bool)

(declare-fun tp!1905923 () Bool)

(assert (=> b!6916471 (= e!4163373 (and tp!1905920 tp!1905923))))

(assert (= (and b!6915900 ((_ is ElementMatch!16903) (reg!17232 (regOne!34319 r3!135)))) b!6916470))

(assert (= (and b!6915900 ((_ is Concat!25748) (reg!17232 (regOne!34319 r3!135)))) b!6916471))

(assert (= (and b!6915900 ((_ is Star!16903) (reg!17232 (regOne!34319 r3!135)))) b!6916472))

(assert (= (and b!6915900 ((_ is Union!16903) (reg!17232 (regOne!34319 r3!135)))) b!6916473))

(declare-fun e!4163374 () Bool)

(assert (=> b!6915891 (= tp!1905549 e!4163374)))

(declare-fun b!6916476 () Bool)

(declare-fun tp!1905924 () Bool)

(assert (=> b!6916476 (= e!4163374 tp!1905924)))

(declare-fun b!6916477 () Bool)

(declare-fun tp!1905926 () Bool)

(declare-fun tp!1905927 () Bool)

(assert (=> b!6916477 (= e!4163374 (and tp!1905926 tp!1905927))))

(declare-fun b!6916474 () Bool)

(assert (=> b!6916474 (= e!4163374 tp_is_empty!43031)))

(declare-fun b!6916475 () Bool)

(declare-fun tp!1905925 () Bool)

(declare-fun tp!1905928 () Bool)

(assert (=> b!6916475 (= e!4163374 (and tp!1905925 tp!1905928))))

(assert (= (and b!6915891 ((_ is ElementMatch!16903) (regOne!34318 (regOne!34319 r1!6342)))) b!6916474))

(assert (= (and b!6915891 ((_ is Concat!25748) (regOne!34318 (regOne!34319 r1!6342)))) b!6916475))

(assert (= (and b!6915891 ((_ is Star!16903) (regOne!34318 (regOne!34319 r1!6342)))) b!6916476))

(assert (= (and b!6915891 ((_ is Union!16903) (regOne!34318 (regOne!34319 r1!6342)))) b!6916477))

(declare-fun e!4163375 () Bool)

(assert (=> b!6915891 (= tp!1905552 e!4163375)))

(declare-fun b!6916480 () Bool)

(declare-fun tp!1905929 () Bool)

(assert (=> b!6916480 (= e!4163375 tp!1905929)))

(declare-fun b!6916481 () Bool)

(declare-fun tp!1905931 () Bool)

(declare-fun tp!1905932 () Bool)

(assert (=> b!6916481 (= e!4163375 (and tp!1905931 tp!1905932))))

(declare-fun b!6916478 () Bool)

(assert (=> b!6916478 (= e!4163375 tp_is_empty!43031)))

(declare-fun b!6916479 () Bool)

(declare-fun tp!1905930 () Bool)

(declare-fun tp!1905933 () Bool)

(assert (=> b!6916479 (= e!4163375 (and tp!1905930 tp!1905933))))

(assert (= (and b!6915891 ((_ is ElementMatch!16903) (regTwo!34318 (regOne!34319 r1!6342)))) b!6916478))

(assert (= (and b!6915891 ((_ is Concat!25748) (regTwo!34318 (regOne!34319 r1!6342)))) b!6916479))

(assert (= (and b!6915891 ((_ is Star!16903) (regTwo!34318 (regOne!34319 r1!6342)))) b!6916480))

(assert (= (and b!6915891 ((_ is Union!16903) (regTwo!34318 (regOne!34319 r1!6342)))) b!6916481))

(declare-fun e!4163383 () Bool)

(assert (=> b!6915893 (= tp!1905550 e!4163383)))

(declare-fun b!6916495 () Bool)

(declare-fun tp!1905934 () Bool)

(assert (=> b!6916495 (= e!4163383 tp!1905934)))

(declare-fun b!6916496 () Bool)

(declare-fun tp!1905936 () Bool)

(declare-fun tp!1905937 () Bool)

(assert (=> b!6916496 (= e!4163383 (and tp!1905936 tp!1905937))))

(declare-fun b!6916493 () Bool)

(assert (=> b!6916493 (= e!4163383 tp_is_empty!43031)))

(declare-fun b!6916494 () Bool)

(declare-fun tp!1905935 () Bool)

(declare-fun tp!1905938 () Bool)

(assert (=> b!6916494 (= e!4163383 (and tp!1905935 tp!1905938))))

(assert (= (and b!6915893 ((_ is ElementMatch!16903) (regOne!34319 (regOne!34319 r1!6342)))) b!6916493))

(assert (= (and b!6915893 ((_ is Concat!25748) (regOne!34319 (regOne!34319 r1!6342)))) b!6916494))

(assert (= (and b!6915893 ((_ is Star!16903) (regOne!34319 (regOne!34319 r1!6342)))) b!6916495))

(assert (= (and b!6915893 ((_ is Union!16903) (regOne!34319 (regOne!34319 r1!6342)))) b!6916496))

(declare-fun e!4163384 () Bool)

(assert (=> b!6915893 (= tp!1905551 e!4163384)))

(declare-fun b!6916499 () Bool)

(declare-fun tp!1905939 () Bool)

(assert (=> b!6916499 (= e!4163384 tp!1905939)))

(declare-fun b!6916500 () Bool)

(declare-fun tp!1905941 () Bool)

(declare-fun tp!1905942 () Bool)

(assert (=> b!6916500 (= e!4163384 (and tp!1905941 tp!1905942))))

(declare-fun b!6916497 () Bool)

(assert (=> b!6916497 (= e!4163384 tp_is_empty!43031)))

(declare-fun b!6916498 () Bool)

(declare-fun tp!1905940 () Bool)

(declare-fun tp!1905943 () Bool)

(assert (=> b!6916498 (= e!4163384 (and tp!1905940 tp!1905943))))

(assert (= (and b!6915893 ((_ is ElementMatch!16903) (regTwo!34319 (regOne!34319 r1!6342)))) b!6916497))

(assert (= (and b!6915893 ((_ is Concat!25748) (regTwo!34319 (regOne!34319 r1!6342)))) b!6916498))

(assert (= (and b!6915893 ((_ is Star!16903) (regTwo!34319 (regOne!34319 r1!6342)))) b!6916499))

(assert (= (and b!6915893 ((_ is Union!16903) (regTwo!34319 (regOne!34319 r1!6342)))) b!6916500))

(declare-fun e!4163385 () Bool)

(assert (=> b!6915892 (= tp!1905548 e!4163385)))

(declare-fun b!6916503 () Bool)

(declare-fun tp!1905944 () Bool)

(assert (=> b!6916503 (= e!4163385 tp!1905944)))

(declare-fun b!6916504 () Bool)

(declare-fun tp!1905946 () Bool)

(declare-fun tp!1905947 () Bool)

(assert (=> b!6916504 (= e!4163385 (and tp!1905946 tp!1905947))))

(declare-fun b!6916501 () Bool)

(assert (=> b!6916501 (= e!4163385 tp_is_empty!43031)))

(declare-fun b!6916502 () Bool)

(declare-fun tp!1905945 () Bool)

(declare-fun tp!1905948 () Bool)

(assert (=> b!6916502 (= e!4163385 (and tp!1905945 tp!1905948))))

(assert (= (and b!6915892 ((_ is ElementMatch!16903) (reg!17232 (regOne!34319 r1!6342)))) b!6916501))

(assert (= (and b!6915892 ((_ is Concat!25748) (reg!17232 (regOne!34319 r1!6342)))) b!6916502))

(assert (= (and b!6915892 ((_ is Star!16903) (reg!17232 (regOne!34319 r1!6342)))) b!6916503))

(assert (= (and b!6915892 ((_ is Union!16903) (reg!17232 (regOne!34319 r1!6342)))) b!6916504))

(declare-fun e!4163386 () Bool)

(assert (=> b!6915859 (= tp!1905510 e!4163386)))

(declare-fun b!6916507 () Bool)

(declare-fun tp!1905949 () Bool)

(assert (=> b!6916507 (= e!4163386 tp!1905949)))

(declare-fun b!6916508 () Bool)

(declare-fun tp!1905951 () Bool)

(declare-fun tp!1905952 () Bool)

(assert (=> b!6916508 (= e!4163386 (and tp!1905951 tp!1905952))))

(declare-fun b!6916505 () Bool)

(assert (=> b!6916505 (= e!4163386 tp_is_empty!43031)))

(declare-fun b!6916506 () Bool)

(declare-fun tp!1905950 () Bool)

(declare-fun tp!1905953 () Bool)

(assert (=> b!6916506 (= e!4163386 (and tp!1905950 tp!1905953))))

(assert (= (and b!6915859 ((_ is ElementMatch!16903) (reg!17232 (regOne!34318 r3!135)))) b!6916505))

(assert (= (and b!6915859 ((_ is Concat!25748) (reg!17232 (regOne!34318 r3!135)))) b!6916506))

(assert (= (and b!6915859 ((_ is Star!16903) (reg!17232 (regOne!34318 r3!135)))) b!6916507))

(assert (= (and b!6915859 ((_ is Union!16903) (reg!17232 (regOne!34318 r3!135)))) b!6916508))

(declare-fun e!4163387 () Bool)

(assert (=> b!6915883 (= tp!1905539 e!4163387)))

(declare-fun b!6916511 () Bool)

(declare-fun tp!1905954 () Bool)

(assert (=> b!6916511 (= e!4163387 tp!1905954)))

(declare-fun b!6916512 () Bool)

(declare-fun tp!1905956 () Bool)

(declare-fun tp!1905957 () Bool)

(assert (=> b!6916512 (= e!4163387 (and tp!1905956 tp!1905957))))

(declare-fun b!6916509 () Bool)

(assert (=> b!6916509 (= e!4163387 tp_is_empty!43031)))

(declare-fun b!6916510 () Bool)

(declare-fun tp!1905955 () Bool)

(declare-fun tp!1905958 () Bool)

(assert (=> b!6916510 (= e!4163387 (and tp!1905955 tp!1905958))))

(assert (= (and b!6915883 ((_ is ElementMatch!16903) (regOne!34318 (regTwo!34318 r1!6342)))) b!6916509))

(assert (= (and b!6915883 ((_ is Concat!25748) (regOne!34318 (regTwo!34318 r1!6342)))) b!6916510))

(assert (= (and b!6915883 ((_ is Star!16903) (regOne!34318 (regTwo!34318 r1!6342)))) b!6916511))

(assert (= (and b!6915883 ((_ is Union!16903) (regOne!34318 (regTwo!34318 r1!6342)))) b!6916512))

(declare-fun e!4163388 () Bool)

(assert (=> b!6915883 (= tp!1905542 e!4163388)))

(declare-fun b!6916515 () Bool)

(declare-fun tp!1905959 () Bool)

(assert (=> b!6916515 (= e!4163388 tp!1905959)))

(declare-fun b!6916516 () Bool)

(declare-fun tp!1905961 () Bool)

(declare-fun tp!1905962 () Bool)

(assert (=> b!6916516 (= e!4163388 (and tp!1905961 tp!1905962))))

(declare-fun b!6916513 () Bool)

(assert (=> b!6916513 (= e!4163388 tp_is_empty!43031)))

(declare-fun b!6916514 () Bool)

(declare-fun tp!1905960 () Bool)

(declare-fun tp!1905963 () Bool)

(assert (=> b!6916514 (= e!4163388 (and tp!1905960 tp!1905963))))

(assert (= (and b!6915883 ((_ is ElementMatch!16903) (regTwo!34318 (regTwo!34318 r1!6342)))) b!6916513))

(assert (= (and b!6915883 ((_ is Concat!25748) (regTwo!34318 (regTwo!34318 r1!6342)))) b!6916514))

(assert (= (and b!6915883 ((_ is Star!16903) (regTwo!34318 (regTwo!34318 r1!6342)))) b!6916515))

(assert (= (and b!6915883 ((_ is Union!16903) (regTwo!34318 (regTwo!34318 r1!6342)))) b!6916516))

(check-sat (not b!6916382) (not b!6915985) (not b!6916153) (not b!6916308) (not b!6916225) (not b!6916332) (not b!6916381) (not b!6916130) (not b!6916268) (not b!6916352) (not bm!628723) (not b!6916209) (not b!6916351) (not b!6916469) (not b!6916244) (not b!6916502) (not b!6916343) (not b!6916499) (not b!6916324) (not b!6916359) (not b!6916103) (not b!6916440) (not b!6916169) (not b!6916472) (not b!6916211) (not b!6916347) (not b!6916020) (not b!6916389) (not b!6916287) (not b!6916380) (not b!6916401) (not b!6916386) (not b!6916196) (not b!6916205) (not b!6915981) (not b!6916269) (not b!6916467) (not b!6916235) (not b!6916007) (not b!6916356) (not b!6916208) (not b!6916496) (not b!6916236) (not bm!628719) (not b!6916376) (not b!6916476) (not b!6916450) (not b!6916284) (not b!6916175) (not b!6916329) (not b!6916353) (not b!6916369) (not b!6916197) (not d!2163961) (not b!6916364) (not b!6916293) (not bm!628731) (not b!6916339) (not b!6916511) (not b!6916311) (not b!6916337) (not b!6916019) (not b!6915927) (not b!6916003) (not b!6916363) (not b!6916233) (not b!6916504) (not b!6916402) (not b!6916173) (not b!6916427) (not b!6916312) (not b!6916345) (not b!6916172) (not b!6916247) (not b!6916420) (not b!6916167) (not b!6916316) (not b!6916365) (not bm!628728) (not bm!628736) (not b!6916331) (not b!6916368) (not b!6916291) (not b!6916325) (not b!6916443) (not b!6916241) (not b!6916320) (not b!6916317) (not b!6916451) (not bm!628714) (not b!6916446) (not b!6916216) (not b!6916185) (not b!6916516) (not b!6915994) (not b!6916195) (not b!6916447) (not bm!628782) (not b!6916508) (not b!6916418) (not b!6916181) (not b!6916319) (not bm!628713) (not bm!628765) (not b!6916336) tp_is_empty!43031 (not b!6915945) (not b!6916187) (not b!6916348) (not b!6916259) (not b!6916473) (not d!2164001) (not b!6916199) (not b!6916400) (not b!6916422) (not b!6916385) (not b!6916179) (not b!6916434) (not b!6916477) (not b!6916355) (not b!6916227) (not b!6916468) (not b!6916321) (not b!6916344) (not b!6916296) (not b!6916292) (not d!2163987) (not bm!628781) (not b!6916313) (not b!6916297) (not b!6916215) (not b!6916507) (not b!6916171) (not b!6916301) (not b!6916475) (not b!6916361) (not b!6916295) (not b!6916229) (not b!6916444) (not b!6916498) (not bm!628779) (not b!6916414) (not bm!628732) (not b!6915936) (not b!6916232) (not b!6916430) (not b!6916432) (not bm!628720) (not b!6916448) (not b!6916299) (not b!6916372) (not b!6916398) (not b!6916495) (not b!6916512) (not b!6916431) (not b!6916267) (not b!6916481) (not b!6916340) (not b!6916240) (not b!6916305) (not b!6916207) (not b!6915956) (not b!6916204) (not b!6916223) (not b!6916397) (not b!6916327) (not bm!628774) (not b!6916510) (not b!6916288) (not b!6916245) (not b!6916200) (not b!6916392) (not d!2163963) (not b!6916465) (not b!6916452) (not d!2163995) (not b!6916228) (not b!6916378) (not b!6916018) (not b!6916016) (not bm!628722) (not b!6916428) (not b!6916162) (not b!6916515) (not b!6916300) (not b!6916479) (not b!6916514) (not b!6916396) (not b!6916213) (not b!6916463) (not b!6916341) (not b!6916480) (not bm!628735) (not b!6916189) (not b!6916315) (not bm!628767) (not b!6916416) (not bm!628730) (not b!6916176) (not d!2163991) (not b!6915974) (not b!6916221) (not b!6916307) (not b!6916500) (not b!6916017) (not bm!628716) (not b!6916374) (not b!6916394) (not b!6916219) (not b!6916373) (not bm!628778) (not b!6916249) (not b!6916212) (not b!6916393) (not b!6915952) (not b!6916260) (not b!6916243) (not b!6916335) (not bm!628727) (not b!6916323) (not b!6916349) (not b!6916183) (not b!6916333) (not b!6916220) (not b!6916442) (not b!6916304) (not b!6916388) (not b!6916423) (not b!6916253) (not b!6916371) (not b!6916390) (not b!6916201) (not b!6916193) (not b!6916251) (not b!6916285) (not b!6916506) (not b!6916309) (not b!6916494) (not b!6916168) (not b!6916438) (not bm!628733) (not bm!628775) (not b!6916367) (not b!6916177) (not b!6916419) (not b!6916439) (not b!6916503) (not b!6916464) (not b!6916203) (not d!2163993) (not b!6916239) (not b!6916289) (not b!6916261) (not b!6916192) (not b!6916283) (not b!6916217) (not b!6916188) (not b!6916436) (not b!6916471) (not b!6916426) (not bm!628717) (not d!2163931) (not b!6916384) (not b!6916224) (not b!6916231) (not b!6916328) (not b!6916252) (not b!6916415) (not b!6916424) (not b!6916360) (not b!6916237) (not b!6916248) (not b!6916191) (not b!6916180) (not b!6916357) (not d!2163955) (not bm!628738) (not b!6916377) (not b!6916184) (not b!6916435) (not b!6916303))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740252 () Bool)

(assert start!740252)

(declare-fun b!7775350 () Bool)

(declare-fun e!4606448 () Bool)

(declare-datatypes ((C!41902 0))(
  ( (C!41903 (val!31391 Int)) )
))
(declare-datatypes ((Regex!20788 0))(
  ( (ElementMatch!20788 (c!1432903 C!41902)) (Concat!29633 (regOne!42088 Regex!20788) (regTwo!42088 Regex!20788)) (EmptyExpr!20788) (Star!20788 (reg!21117 Regex!20788)) (EmptyLang!20788) (Union!20788 (regOne!42089 Regex!20788) (regTwo!42089 Regex!20788)) )
))
(declare-fun lt!2671958 () Regex!20788)

(declare-fun validRegex!11202 (Regex!20788) Bool)

(assert (=> b!7775350 (= e!4606448 (validRegex!11202 lt!2671958))))

(declare-fun r2!6217 () Regex!20788)

(declare-datatypes ((List!73627 0))(
  ( (Nil!73503) (Cons!73503 (h!79951 C!41902) (t!388362 List!73627)) )
))
(declare-fun s!14292 () List!73627)

(declare-datatypes ((tuple2!69870 0))(
  ( (tuple2!69871 (_1!38238 List!73627) (_2!38238 List!73627)) )
))
(declare-datatypes ((Option!17729 0))(
  ( (None!17728) (Some!17728 (v!54863 tuple2!69870)) )
))
(declare-fun isDefined!14341 (Option!17729) Bool)

(declare-fun findConcatSeparation!3759 (Regex!20788 Regex!20788 List!73627 List!73627 List!73627) Option!17729)

(assert (=> b!7775350 (isDefined!14341 (findConcatSeparation!3759 lt!2671958 r2!6217 Nil!73503 (t!388362 s!14292) (t!388362 s!14292)))))

(declare-datatypes ((Unit!168478 0))(
  ( (Unit!168479) )
))
(declare-fun lt!2671956 () Unit!168478)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!349 (Regex!20788 Regex!20788 List!73627) Unit!168478)

(assert (=> b!7775350 (= lt!2671956 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!349 lt!2671958 r2!6217 (t!388362 s!14292)))))

(declare-fun b!7775351 () Bool)

(declare-fun e!4606445 () Bool)

(declare-fun e!4606447 () Bool)

(assert (=> b!7775351 (= e!4606445 e!4606447)))

(declare-fun res!3099300 () Bool)

(assert (=> b!7775351 (=> (not res!3099300) (not e!4606447))))

(declare-fun lt!2671955 () Regex!20788)

(declare-fun lt!2671960 () Regex!20788)

(declare-fun lt!2671959 () Regex!20788)

(assert (=> b!7775351 (= res!3099300 (= lt!2671955 (Union!20788 lt!2671960 lt!2671959)))))

(declare-fun derivativeStep!6131 (Regex!20788 C!41902) Regex!20788)

(assert (=> b!7775351 (= lt!2671959 (derivativeStep!6131 r2!6217 (h!79951 s!14292)))))

(assert (=> b!7775351 (= lt!2671960 (Concat!29633 lt!2671958 r2!6217))))

(declare-fun r1!6279 () Regex!20788)

(assert (=> b!7775351 (= lt!2671958 (derivativeStep!6131 r1!6279 (h!79951 s!14292)))))

(declare-fun b!7775352 () Bool)

(declare-fun res!3099295 () Bool)

(declare-fun e!4606442 () Bool)

(assert (=> b!7775352 (=> (not res!3099295) (not e!4606442))))

(assert (=> b!7775352 (= res!3099295 (is-Cons!73503 s!14292))))

(declare-fun b!7775353 () Bool)

(declare-fun e!4606440 () Bool)

(declare-fun tp_is_empty!51931 () Bool)

(assert (=> b!7775353 (= e!4606440 tp_is_empty!51931)))

(declare-fun b!7775354 () Bool)

(declare-fun e!4606446 () Bool)

(declare-fun matchR!10248 (Regex!20788 List!73627) Bool)

(assert (=> b!7775354 (= e!4606446 (matchR!10248 lt!2671959 (t!388362 s!14292)))))

(declare-fun b!7775355 () Bool)

(assert (=> b!7775355 (= e!4606447 (not e!4606448))))

(declare-fun res!3099301 () Bool)

(assert (=> b!7775355 (=> res!3099301 e!4606448)))

(declare-fun lt!2671953 () Bool)

(assert (=> b!7775355 (= res!3099301 (not lt!2671953))))

(assert (=> b!7775355 e!4606446))

(declare-fun res!3099302 () Bool)

(assert (=> b!7775355 (=> res!3099302 e!4606446)))

(assert (=> b!7775355 (= res!3099302 lt!2671953)))

(assert (=> b!7775355 (= lt!2671953 (matchR!10248 lt!2671960 (t!388362 s!14292)))))

(declare-fun lt!2671957 () Unit!168478)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!363 (Regex!20788 Regex!20788 List!73627) Unit!168478)

(assert (=> b!7775355 (= lt!2671957 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!363 lt!2671960 lt!2671959 (t!388362 s!14292)))))

(declare-fun b!7775356 () Bool)

(declare-fun e!4606441 () Bool)

(assert (=> b!7775356 (= e!4606441 tp_is_empty!51931)))

(declare-fun b!7775357 () Bool)

(declare-fun res!3099296 () Bool)

(declare-fun e!4606444 () Bool)

(assert (=> b!7775357 (=> (not res!3099296) (not e!4606444))))

(assert (=> b!7775357 (= res!3099296 (validRegex!11202 r2!6217))))

(declare-fun b!7775358 () Bool)

(declare-fun tp!2284860 () Bool)

(declare-fun tp!2284858 () Bool)

(assert (=> b!7775358 (= e!4606440 (and tp!2284860 tp!2284858))))

(declare-fun b!7775359 () Bool)

(declare-fun res!3099303 () Bool)

(assert (=> b!7775359 (=> (not res!3099303) (not e!4606445))))

(declare-fun nullable!9176 (Regex!20788) Bool)

(assert (=> b!7775359 (= res!3099303 (nullable!9176 r1!6279))))

(declare-fun b!7775360 () Bool)

(assert (=> b!7775360 (= e!4606442 e!4606445)))

(declare-fun res!3099298 () Bool)

(assert (=> b!7775360 (=> (not res!3099298) (not e!4606445))))

(assert (=> b!7775360 (= res!3099298 (matchR!10248 lt!2671955 (t!388362 s!14292)))))

(declare-fun lt!2671954 () Regex!20788)

(assert (=> b!7775360 (= lt!2671955 (derivativeStep!6131 lt!2671954 (h!79951 s!14292)))))

(declare-fun b!7775361 () Bool)

(declare-fun tp!2284867 () Bool)

(declare-fun tp!2284861 () Bool)

(assert (=> b!7775361 (= e!4606440 (and tp!2284867 tp!2284861))))

(declare-fun b!7775362 () Bool)

(declare-fun e!4606443 () Bool)

(declare-fun tp!2284868 () Bool)

(assert (=> b!7775362 (= e!4606443 (and tp_is_empty!51931 tp!2284868))))

(declare-fun b!7775363 () Bool)

(declare-fun tp!2284865 () Bool)

(declare-fun tp!2284866 () Bool)

(assert (=> b!7775363 (= e!4606441 (and tp!2284865 tp!2284866))))

(declare-fun b!7775364 () Bool)

(declare-fun tp!2284862 () Bool)

(declare-fun tp!2284863 () Bool)

(assert (=> b!7775364 (= e!4606441 (and tp!2284862 tp!2284863))))

(declare-fun b!7775365 () Bool)

(assert (=> b!7775365 (= e!4606444 e!4606442)))

(declare-fun res!3099299 () Bool)

(assert (=> b!7775365 (=> (not res!3099299) (not e!4606442))))

(assert (=> b!7775365 (= res!3099299 (matchR!10248 lt!2671954 s!14292))))

(assert (=> b!7775365 (= lt!2671954 (Concat!29633 r1!6279 r2!6217))))

(declare-fun b!7775366 () Bool)

(declare-fun tp!2284864 () Bool)

(assert (=> b!7775366 (= e!4606441 tp!2284864)))

(declare-fun res!3099297 () Bool)

(assert (=> start!740252 (=> (not res!3099297) (not e!4606444))))

(assert (=> start!740252 (= res!3099297 (validRegex!11202 r1!6279))))

(assert (=> start!740252 e!4606444))

(assert (=> start!740252 e!4606440))

(assert (=> start!740252 e!4606441))

(assert (=> start!740252 e!4606443))

(declare-fun b!7775367 () Bool)

(declare-fun tp!2284859 () Bool)

(assert (=> b!7775367 (= e!4606440 tp!2284859)))

(assert (= (and start!740252 res!3099297) b!7775357))

(assert (= (and b!7775357 res!3099296) b!7775365))

(assert (= (and b!7775365 res!3099299) b!7775352))

(assert (= (and b!7775352 res!3099295) b!7775360))

(assert (= (and b!7775360 res!3099298) b!7775359))

(assert (= (and b!7775359 res!3099303) b!7775351))

(assert (= (and b!7775351 res!3099300) b!7775355))

(assert (= (and b!7775355 (not res!3099302)) b!7775354))

(assert (= (and b!7775355 (not res!3099301)) b!7775350))

(assert (= (and start!740252 (is-ElementMatch!20788 r1!6279)) b!7775353))

(assert (= (and start!740252 (is-Concat!29633 r1!6279)) b!7775358))

(assert (= (and start!740252 (is-Star!20788 r1!6279)) b!7775367))

(assert (= (and start!740252 (is-Union!20788 r1!6279)) b!7775361))

(assert (= (and start!740252 (is-ElementMatch!20788 r2!6217)) b!7775356))

(assert (= (and start!740252 (is-Concat!29633 r2!6217)) b!7775363))

(assert (= (and start!740252 (is-Star!20788 r2!6217)) b!7775366))

(assert (= (and start!740252 (is-Union!20788 r2!6217)) b!7775364))

(assert (= (and start!740252 (is-Cons!73503 s!14292)) b!7775362))

(declare-fun m!8226562 () Bool)

(assert (=> b!7775354 m!8226562))

(declare-fun m!8226564 () Bool)

(assert (=> b!7775355 m!8226564))

(declare-fun m!8226566 () Bool)

(assert (=> b!7775355 m!8226566))

(declare-fun m!8226568 () Bool)

(assert (=> b!7775351 m!8226568))

(declare-fun m!8226570 () Bool)

(assert (=> b!7775351 m!8226570))

(declare-fun m!8226572 () Bool)

(assert (=> start!740252 m!8226572))

(declare-fun m!8226574 () Bool)

(assert (=> b!7775359 m!8226574))

(declare-fun m!8226576 () Bool)

(assert (=> b!7775360 m!8226576))

(declare-fun m!8226578 () Bool)

(assert (=> b!7775360 m!8226578))

(declare-fun m!8226580 () Bool)

(assert (=> b!7775365 m!8226580))

(declare-fun m!8226582 () Bool)

(assert (=> b!7775350 m!8226582))

(declare-fun m!8226584 () Bool)

(assert (=> b!7775350 m!8226584))

(assert (=> b!7775350 m!8226584))

(declare-fun m!8226586 () Bool)

(assert (=> b!7775350 m!8226586))

(declare-fun m!8226588 () Bool)

(assert (=> b!7775350 m!8226588))

(declare-fun m!8226590 () Bool)

(assert (=> b!7775357 m!8226590))

(push 1)

(assert (not b!7775358))

(assert tp_is_empty!51931)

(assert (not b!7775351))

(assert (not b!7775367))

(assert (not b!7775364))

(assert (not b!7775362))

(assert (not b!7775355))

(assert (not b!7775360))

(assert (not b!7775366))

(assert (not b!7775357))

(assert (not b!7775363))

(assert (not b!7775354))

(assert (not start!740252))

(assert (not b!7775350))

(assert (not b!7775361))

(assert (not b!7775359))

(assert (not b!7775365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7775442 () Bool)

(declare-fun e!4606487 () Regex!20788)

(declare-fun call!720663 () Regex!20788)

(assert (=> b!7775442 (= e!4606487 (Concat!29633 call!720663 r2!6217))))

(declare-fun b!7775444 () Bool)

(declare-fun e!4606489 () Regex!20788)

(declare-fun call!720661 () Regex!20788)

(declare-fun call!720664 () Regex!20788)

(assert (=> b!7775444 (= e!4606489 (Union!20788 call!720661 call!720664))))

(declare-fun b!7775445 () Bool)

(declare-fun e!4606486 () Regex!20788)

(assert (=> b!7775445 (= e!4606486 EmptyLang!20788)))

(declare-fun b!7775446 () Bool)

(declare-fun e!4606490 () Regex!20788)

(assert (=> b!7775446 (= e!4606486 e!4606490)))

(declare-fun c!1432917 () Bool)

(assert (=> b!7775446 (= c!1432917 (is-ElementMatch!20788 r2!6217))))

(declare-fun b!7775447 () Bool)

(declare-fun e!4606488 () Regex!20788)

(declare-fun call!720662 () Regex!20788)

(assert (=> b!7775447 (= e!4606488 (Union!20788 (Concat!29633 call!720662 (regTwo!42088 r2!6217)) EmptyLang!20788))))

(declare-fun b!7775448 () Bool)

(assert (=> b!7775448 (= e!4606489 e!4606487)))

(declare-fun c!1432919 () Bool)

(assert (=> b!7775448 (= c!1432919 (is-Star!20788 r2!6217))))

(declare-fun bm!720656 () Bool)

(assert (=> bm!720656 (= call!720663 call!720664)))

(declare-fun bm!720657 () Bool)

(declare-fun c!1432918 () Bool)

(assert (=> bm!720657 (= call!720661 (derivativeStep!6131 (ite c!1432918 (regOne!42089 r2!6217) (regOne!42088 r2!6217)) (h!79951 s!14292)))))

(declare-fun b!7775449 () Bool)

(declare-fun c!1432915 () Bool)

(assert (=> b!7775449 (= c!1432915 (nullable!9176 (regOne!42088 r2!6217)))))

(assert (=> b!7775449 (= e!4606487 e!4606488)))

(declare-fun b!7775450 () Bool)

(assert (=> b!7775450 (= e!4606490 (ite (= (h!79951 s!14292) (c!1432903 r2!6217)) EmptyExpr!20788 EmptyLang!20788))))

(declare-fun bm!720658 () Bool)

(assert (=> bm!720658 (= call!720664 (derivativeStep!6131 (ite c!1432918 (regTwo!42089 r2!6217) (ite c!1432919 (reg!21117 r2!6217) (ite c!1432915 (regTwo!42088 r2!6217) (regOne!42088 r2!6217)))) (h!79951 s!14292)))))

(declare-fun d!2344766 () Bool)

(declare-fun lt!2671987 () Regex!20788)

(assert (=> d!2344766 (validRegex!11202 lt!2671987)))

(assert (=> d!2344766 (= lt!2671987 e!4606486)))

(declare-fun c!1432916 () Bool)

(assert (=> d!2344766 (= c!1432916 (or (is-EmptyExpr!20788 r2!6217) (is-EmptyLang!20788 r2!6217)))))

(assert (=> d!2344766 (validRegex!11202 r2!6217)))

(assert (=> d!2344766 (= (derivativeStep!6131 r2!6217 (h!79951 s!14292)) lt!2671987)))

(declare-fun b!7775443 () Bool)

(assert (=> b!7775443 (= e!4606488 (Union!20788 (Concat!29633 call!720661 (regTwo!42088 r2!6217)) call!720662))))

(declare-fun bm!720659 () Bool)

(assert (=> bm!720659 (= call!720662 call!720663)))

(declare-fun b!7775451 () Bool)

(assert (=> b!7775451 (= c!1432918 (is-Union!20788 r2!6217))))

(assert (=> b!7775451 (= e!4606490 e!4606489)))

(assert (= (and d!2344766 c!1432916) b!7775445))

(assert (= (and d!2344766 (not c!1432916)) b!7775446))

(assert (= (and b!7775446 c!1432917) b!7775450))

(assert (= (and b!7775446 (not c!1432917)) b!7775451))

(assert (= (and b!7775451 c!1432918) b!7775444))

(assert (= (and b!7775451 (not c!1432918)) b!7775448))

(assert (= (and b!7775448 c!1432919) b!7775442))

(assert (= (and b!7775448 (not c!1432919)) b!7775449))

(assert (= (and b!7775449 c!1432915) b!7775443))

(assert (= (and b!7775449 (not c!1432915)) b!7775447))

(assert (= (or b!7775443 b!7775447) bm!720659))

(assert (= (or b!7775442 bm!720659) bm!720656))

(assert (= (or b!7775444 bm!720656) bm!720658))

(assert (= (or b!7775444 b!7775443) bm!720657))

(declare-fun m!8226622 () Bool)

(assert (=> bm!720657 m!8226622))

(declare-fun m!8226624 () Bool)

(assert (=> b!7775449 m!8226624))

(declare-fun m!8226626 () Bool)

(assert (=> bm!720658 m!8226626))

(declare-fun m!8226628 () Bool)

(assert (=> d!2344766 m!8226628))

(assert (=> d!2344766 m!8226590))

(assert (=> b!7775351 d!2344766))

(declare-fun b!7775452 () Bool)

(declare-fun e!4606492 () Regex!20788)

(declare-fun call!720667 () Regex!20788)

(assert (=> b!7775452 (= e!4606492 (Concat!29633 call!720667 r1!6279))))

(declare-fun b!7775454 () Bool)

(declare-fun e!4606494 () Regex!20788)

(declare-fun call!720665 () Regex!20788)

(declare-fun call!720668 () Regex!20788)

(assert (=> b!7775454 (= e!4606494 (Union!20788 call!720665 call!720668))))

(declare-fun b!7775455 () Bool)

(declare-fun e!4606491 () Regex!20788)

(assert (=> b!7775455 (= e!4606491 EmptyLang!20788)))

(declare-fun b!7775456 () Bool)

(declare-fun e!4606495 () Regex!20788)

(assert (=> b!7775456 (= e!4606491 e!4606495)))

(declare-fun c!1432922 () Bool)

(assert (=> b!7775456 (= c!1432922 (is-ElementMatch!20788 r1!6279))))

(declare-fun b!7775457 () Bool)

(declare-fun e!4606493 () Regex!20788)

(declare-fun call!720666 () Regex!20788)

(assert (=> b!7775457 (= e!4606493 (Union!20788 (Concat!29633 call!720666 (regTwo!42088 r1!6279)) EmptyLang!20788))))

(declare-fun b!7775458 () Bool)

(assert (=> b!7775458 (= e!4606494 e!4606492)))

(declare-fun c!1432924 () Bool)

(assert (=> b!7775458 (= c!1432924 (is-Star!20788 r1!6279))))

(declare-fun bm!720660 () Bool)

(assert (=> bm!720660 (= call!720667 call!720668)))

(declare-fun bm!720661 () Bool)

(declare-fun c!1432923 () Bool)

(assert (=> bm!720661 (= call!720665 (derivativeStep!6131 (ite c!1432923 (regOne!42089 r1!6279) (regOne!42088 r1!6279)) (h!79951 s!14292)))))

(declare-fun b!7775459 () Bool)

(declare-fun c!1432920 () Bool)

(assert (=> b!7775459 (= c!1432920 (nullable!9176 (regOne!42088 r1!6279)))))

(assert (=> b!7775459 (= e!4606492 e!4606493)))

(declare-fun b!7775460 () Bool)

(assert (=> b!7775460 (= e!4606495 (ite (= (h!79951 s!14292) (c!1432903 r1!6279)) EmptyExpr!20788 EmptyLang!20788))))

(declare-fun bm!720662 () Bool)

(assert (=> bm!720662 (= call!720668 (derivativeStep!6131 (ite c!1432923 (regTwo!42089 r1!6279) (ite c!1432924 (reg!21117 r1!6279) (ite c!1432920 (regTwo!42088 r1!6279) (regOne!42088 r1!6279)))) (h!79951 s!14292)))))

(declare-fun d!2344770 () Bool)

(declare-fun lt!2671988 () Regex!20788)

(assert (=> d!2344770 (validRegex!11202 lt!2671988)))

(assert (=> d!2344770 (= lt!2671988 e!4606491)))

(declare-fun c!1432921 () Bool)

(assert (=> d!2344770 (= c!1432921 (or (is-EmptyExpr!20788 r1!6279) (is-EmptyLang!20788 r1!6279)))))

(assert (=> d!2344770 (validRegex!11202 r1!6279)))

(assert (=> d!2344770 (= (derivativeStep!6131 r1!6279 (h!79951 s!14292)) lt!2671988)))

(declare-fun b!7775453 () Bool)

(assert (=> b!7775453 (= e!4606493 (Union!20788 (Concat!29633 call!720665 (regTwo!42088 r1!6279)) call!720666))))

(declare-fun bm!720663 () Bool)

(assert (=> bm!720663 (= call!720666 call!720667)))

(declare-fun b!7775461 () Bool)

(assert (=> b!7775461 (= c!1432923 (is-Union!20788 r1!6279))))

(assert (=> b!7775461 (= e!4606495 e!4606494)))

(assert (= (and d!2344770 c!1432921) b!7775455))

(assert (= (and d!2344770 (not c!1432921)) b!7775456))

(assert (= (and b!7775456 c!1432922) b!7775460))

(assert (= (and b!7775456 (not c!1432922)) b!7775461))

(assert (= (and b!7775461 c!1432923) b!7775454))

(assert (= (and b!7775461 (not c!1432923)) b!7775458))

(assert (= (and b!7775458 c!1432924) b!7775452))

(assert (= (and b!7775458 (not c!1432924)) b!7775459))

(assert (= (and b!7775459 c!1432920) b!7775453))

(assert (= (and b!7775459 (not c!1432920)) b!7775457))

(assert (= (or b!7775453 b!7775457) bm!720663))

(assert (= (or b!7775452 bm!720663) bm!720660))

(assert (= (or b!7775454 bm!720660) bm!720662))

(assert (= (or b!7775454 b!7775453) bm!720661))

(declare-fun m!8226630 () Bool)

(assert (=> bm!720661 m!8226630))

(declare-fun m!8226632 () Bool)

(assert (=> b!7775459 m!8226632))

(declare-fun m!8226634 () Bool)

(assert (=> bm!720662 m!8226634))

(declare-fun m!8226636 () Bool)

(assert (=> d!2344770 m!8226636))

(assert (=> d!2344770 m!8226572))

(assert (=> b!7775351 d!2344770))

(declare-fun b!7775518 () Bool)

(declare-fun e!4606530 () Bool)

(declare-fun lt!2671993 () Bool)

(declare-fun call!720673 () Bool)

(assert (=> b!7775518 (= e!4606530 (= lt!2671993 call!720673))))

(declare-fun b!7775519 () Bool)

(declare-fun res!3099365 () Bool)

(declare-fun e!4606526 () Bool)

(assert (=> b!7775519 (=> res!3099365 e!4606526)))

(declare-fun e!4606529 () Bool)

(assert (=> b!7775519 (= res!3099365 e!4606529)))

(declare-fun res!3099366 () Bool)

(assert (=> b!7775519 (=> (not res!3099366) (not e!4606529))))

(assert (=> b!7775519 (= res!3099366 lt!2671993)))

(declare-fun d!2344772 () Bool)

(assert (=> d!2344772 e!4606530))

(declare-fun c!1432937 () Bool)

(assert (=> d!2344772 (= c!1432937 (is-EmptyExpr!20788 lt!2671960))))

(declare-fun e!4606528 () Bool)

(assert (=> d!2344772 (= lt!2671993 e!4606528)))

(declare-fun c!1432938 () Bool)

(declare-fun isEmpty!42164 (List!73627) Bool)

(assert (=> d!2344772 (= c!1432938 (isEmpty!42164 (t!388362 s!14292)))))

(assert (=> d!2344772 (validRegex!11202 lt!2671960)))

(assert (=> d!2344772 (= (matchR!10248 lt!2671960 (t!388362 s!14292)) lt!2671993)))

(declare-fun b!7775520 () Bool)

(assert (=> b!7775520 (= e!4606528 (nullable!9176 lt!2671960))))

(declare-fun b!7775521 () Bool)

(declare-fun res!3099364 () Bool)

(assert (=> b!7775521 (=> (not res!3099364) (not e!4606529))))

(assert (=> b!7775521 (= res!3099364 (not call!720673))))

(declare-fun b!7775522 () Bool)

(declare-fun res!3099370 () Bool)

(assert (=> b!7775522 (=> (not res!3099370) (not e!4606529))))

(declare-fun tail!15440 (List!73627) List!73627)

(assert (=> b!7775522 (= res!3099370 (isEmpty!42164 (tail!15440 (t!388362 s!14292))))))

(declare-fun b!7775523 () Bool)

(declare-fun e!4606527 () Bool)

(declare-fun e!4606524 () Bool)

(assert (=> b!7775523 (= e!4606527 e!4606524)))

(declare-fun res!3099367 () Bool)

(assert (=> b!7775523 (=> res!3099367 e!4606524)))

(assert (=> b!7775523 (= res!3099367 call!720673)))

(declare-fun b!7775524 () Bool)

(declare-fun e!4606525 () Bool)

(assert (=> b!7775524 (= e!4606530 e!4606525)))

(declare-fun c!1432939 () Bool)

(assert (=> b!7775524 (= c!1432939 (is-EmptyLang!20788 lt!2671960))))

(declare-fun b!7775525 () Bool)

(declare-fun head!15899 (List!73627) C!41902)

(assert (=> b!7775525 (= e!4606524 (not (= (head!15899 (t!388362 s!14292)) (c!1432903 lt!2671960))))))

(declare-fun bm!720668 () Bool)

(assert (=> bm!720668 (= call!720673 (isEmpty!42164 (t!388362 s!14292)))))

(declare-fun b!7775526 () Bool)

(assert (=> b!7775526 (= e!4606525 (not lt!2671993))))

(declare-fun b!7775527 () Bool)

(assert (=> b!7775527 (= e!4606528 (matchR!10248 (derivativeStep!6131 lt!2671960 (head!15899 (t!388362 s!14292))) (tail!15440 (t!388362 s!14292))))))

(declare-fun b!7775528 () Bool)

(declare-fun res!3099363 () Bool)

(assert (=> b!7775528 (=> res!3099363 e!4606526)))

(assert (=> b!7775528 (= res!3099363 (not (is-ElementMatch!20788 lt!2671960)))))

(assert (=> b!7775528 (= e!4606525 e!4606526)))

(declare-fun b!7775529 () Bool)

(assert (=> b!7775529 (= e!4606526 e!4606527)))

(declare-fun res!3099368 () Bool)

(assert (=> b!7775529 (=> (not res!3099368) (not e!4606527))))

(assert (=> b!7775529 (= res!3099368 (not lt!2671993))))

(declare-fun b!7775530 () Bool)

(declare-fun res!3099369 () Bool)

(assert (=> b!7775530 (=> res!3099369 e!4606524)))

(assert (=> b!7775530 (= res!3099369 (not (isEmpty!42164 (tail!15440 (t!388362 s!14292)))))))

(declare-fun b!7775531 () Bool)

(assert (=> b!7775531 (= e!4606529 (= (head!15899 (t!388362 s!14292)) (c!1432903 lt!2671960)))))

(assert (= (and d!2344772 c!1432938) b!7775520))

(assert (= (and d!2344772 (not c!1432938)) b!7775527))

(assert (= (and d!2344772 c!1432937) b!7775518))

(assert (= (and d!2344772 (not c!1432937)) b!7775524))

(assert (= (and b!7775524 c!1432939) b!7775526))

(assert (= (and b!7775524 (not c!1432939)) b!7775528))

(assert (= (and b!7775528 (not res!3099363)) b!7775519))

(assert (= (and b!7775519 res!3099366) b!7775521))

(assert (= (and b!7775521 res!3099364) b!7775522))

(assert (= (and b!7775522 res!3099370) b!7775531))

(assert (= (and b!7775519 (not res!3099365)) b!7775529))

(assert (= (and b!7775529 res!3099368) b!7775523))

(assert (= (and b!7775523 (not res!3099367)) b!7775530))

(assert (= (and b!7775530 (not res!3099369)) b!7775525))

(assert (= (or b!7775518 b!7775521 b!7775523) bm!720668))

(declare-fun m!8226638 () Bool)

(assert (=> b!7775531 m!8226638))

(declare-fun m!8226640 () Bool)

(assert (=> bm!720668 m!8226640))

(declare-fun m!8226642 () Bool)

(assert (=> b!7775530 m!8226642))

(assert (=> b!7775530 m!8226642))

(declare-fun m!8226644 () Bool)

(assert (=> b!7775530 m!8226644))

(assert (=> b!7775522 m!8226642))

(assert (=> b!7775522 m!8226642))

(assert (=> b!7775522 m!8226644))

(assert (=> d!2344772 m!8226640))

(declare-fun m!8226646 () Bool)

(assert (=> d!2344772 m!8226646))

(assert (=> b!7775525 m!8226638))

(declare-fun m!8226648 () Bool)

(assert (=> b!7775520 m!8226648))

(assert (=> b!7775527 m!8226638))

(assert (=> b!7775527 m!8226638))

(declare-fun m!8226650 () Bool)

(assert (=> b!7775527 m!8226650))

(assert (=> b!7775527 m!8226642))

(assert (=> b!7775527 m!8226650))

(assert (=> b!7775527 m!8226642))

(declare-fun m!8226652 () Bool)

(assert (=> b!7775527 m!8226652))

(assert (=> b!7775355 d!2344772))

(declare-fun d!2344774 () Bool)

(declare-fun e!4606535 () Bool)

(assert (=> d!2344774 e!4606535))

(declare-fun res!3099376 () Bool)

(assert (=> d!2344774 (=> res!3099376 e!4606535)))

(assert (=> d!2344774 (= res!3099376 (matchR!10248 lt!2671960 (t!388362 s!14292)))))

(declare-fun lt!2671996 () Unit!168478)

(declare-fun choose!59480 (Regex!20788 Regex!20788 List!73627) Unit!168478)

(assert (=> d!2344774 (= lt!2671996 (choose!59480 lt!2671960 lt!2671959 (t!388362 s!14292)))))

(declare-fun e!4606536 () Bool)

(assert (=> d!2344774 e!4606536))

(declare-fun res!3099375 () Bool)

(assert (=> d!2344774 (=> (not res!3099375) (not e!4606536))))

(assert (=> d!2344774 (= res!3099375 (validRegex!11202 lt!2671960))))

(assert (=> d!2344774 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!363 lt!2671960 lt!2671959 (t!388362 s!14292)) lt!2671996)))

(declare-fun b!7775536 () Bool)

(assert (=> b!7775536 (= e!4606536 (validRegex!11202 lt!2671959))))

(declare-fun b!7775537 () Bool)

(assert (=> b!7775537 (= e!4606535 (matchR!10248 lt!2671959 (t!388362 s!14292)))))

(assert (= (and d!2344774 res!3099375) b!7775536))

(assert (= (and d!2344774 (not res!3099376)) b!7775537))

(assert (=> d!2344774 m!8226564))

(declare-fun m!8226654 () Bool)

(assert (=> d!2344774 m!8226654))

(assert (=> d!2344774 m!8226646))

(declare-fun m!8226656 () Bool)

(assert (=> b!7775536 m!8226656))

(assert (=> b!7775537 m!8226562))

(assert (=> b!7775355 d!2344774))

(declare-fun b!7775571 () Bool)

(declare-fun e!4606561 () Bool)

(declare-fun call!720683 () Bool)

(assert (=> b!7775571 (= e!4606561 call!720683)))

(declare-fun b!7775572 () Bool)

(declare-fun e!4606560 () Bool)

(assert (=> b!7775572 (= e!4606560 e!4606561)))

(declare-fun res!3099396 () Bool)

(assert (=> b!7775572 (= res!3099396 (not (nullable!9176 (reg!21117 lt!2671958))))))

(assert (=> b!7775572 (=> (not res!3099396) (not e!4606561))))

(declare-fun c!1432948 () Bool)

(declare-fun bm!720676 () Bool)

(declare-fun c!1432947 () Bool)

(assert (=> bm!720676 (= call!720683 (validRegex!11202 (ite c!1432948 (reg!21117 lt!2671958) (ite c!1432947 (regTwo!42089 lt!2671958) (regTwo!42088 lt!2671958)))))))

(declare-fun b!7775573 () Bool)

(declare-fun res!3099395 () Bool)

(declare-fun e!4606559 () Bool)

(assert (=> b!7775573 (=> res!3099395 e!4606559)))

(assert (=> b!7775573 (= res!3099395 (not (is-Concat!29633 lt!2671958)))))

(declare-fun e!4606564 () Bool)

(assert (=> b!7775573 (= e!4606564 e!4606559)))

(declare-fun b!7775574 () Bool)

(declare-fun e!4606562 () Bool)

(declare-fun call!720682 () Bool)

(assert (=> b!7775574 (= e!4606562 call!720682)))

(declare-fun bm!720677 () Bool)

(assert (=> bm!720677 (= call!720682 call!720683)))

(declare-fun b!7775570 () Bool)

(declare-fun res!3099397 () Bool)

(declare-fun e!4606563 () Bool)

(assert (=> b!7775570 (=> (not res!3099397) (not e!4606563))))

(declare-fun call!720681 () Bool)

(assert (=> b!7775570 (= res!3099397 call!720681)))

(assert (=> b!7775570 (= e!4606564 e!4606563)))

(declare-fun d!2344776 () Bool)

(declare-fun res!3099398 () Bool)

(declare-fun e!4606558 () Bool)

(assert (=> d!2344776 (=> res!3099398 e!4606558)))

(assert (=> d!2344776 (= res!3099398 (is-ElementMatch!20788 lt!2671958))))

(assert (=> d!2344776 (= (validRegex!11202 lt!2671958) e!4606558)))

(declare-fun bm!720678 () Bool)

(assert (=> bm!720678 (= call!720681 (validRegex!11202 (ite c!1432947 (regOne!42089 lt!2671958) (regOne!42088 lt!2671958))))))

(declare-fun b!7775575 () Bool)

(assert (=> b!7775575 (= e!4606559 e!4606562)))

(declare-fun res!3099399 () Bool)

(assert (=> b!7775575 (=> (not res!3099399) (not e!4606562))))

(assert (=> b!7775575 (= res!3099399 call!720681)))

(declare-fun b!7775576 () Bool)

(assert (=> b!7775576 (= e!4606563 call!720682)))

(declare-fun b!7775577 () Bool)

(assert (=> b!7775577 (= e!4606560 e!4606564)))

(assert (=> b!7775577 (= c!1432947 (is-Union!20788 lt!2671958))))

(declare-fun b!7775578 () Bool)

(assert (=> b!7775578 (= e!4606558 e!4606560)))

(assert (=> b!7775578 (= c!1432948 (is-Star!20788 lt!2671958))))

(assert (= (and d!2344776 (not res!3099398)) b!7775578))

(assert (= (and b!7775578 c!1432948) b!7775572))

(assert (= (and b!7775578 (not c!1432948)) b!7775577))

(assert (= (and b!7775572 res!3099396) b!7775571))

(assert (= (and b!7775577 c!1432947) b!7775570))

(assert (= (and b!7775577 (not c!1432947)) b!7775573))

(assert (= (and b!7775570 res!3099397) b!7775576))

(assert (= (and b!7775573 (not res!3099395)) b!7775575))

(assert (= (and b!7775575 res!3099399) b!7775574))

(assert (= (or b!7775570 b!7775575) bm!720678))

(assert (= (or b!7775576 b!7775574) bm!720677))

(assert (= (or b!7775571 bm!720677) bm!720676))

(declare-fun m!8226674 () Bool)

(assert (=> b!7775572 m!8226674))

(declare-fun m!8226676 () Bool)

(assert (=> bm!720676 m!8226676))

(declare-fun m!8226678 () Bool)

(assert (=> bm!720678 m!8226678))

(assert (=> b!7775350 d!2344776))

(declare-fun d!2344780 () Bool)

(declare-fun isEmpty!42165 (Option!17729) Bool)

(assert (=> d!2344780 (= (isDefined!14341 (findConcatSeparation!3759 lt!2671958 r2!6217 Nil!73503 (t!388362 s!14292) (t!388362 s!14292))) (not (isEmpty!42165 (findConcatSeparation!3759 lt!2671958 r2!6217 Nil!73503 (t!388362 s!14292) (t!388362 s!14292)))))))

(declare-fun bs!1966160 () Bool)

(assert (= bs!1966160 d!2344780))

(assert (=> bs!1966160 m!8226584))

(declare-fun m!8226680 () Bool)

(assert (=> bs!1966160 m!8226680))

(assert (=> b!7775350 d!2344780))

(declare-fun b!7775617 () Bool)

(declare-fun e!4606586 () Option!17729)

(declare-fun e!4606589 () Option!17729)

(assert (=> b!7775617 (= e!4606586 e!4606589)))

(declare-fun c!1432964 () Bool)

(assert (=> b!7775617 (= c!1432964 (is-Nil!73503 (t!388362 s!14292)))))

(declare-fun b!7775618 () Bool)

(declare-fun lt!2672006 () Unit!168478)

(declare-fun lt!2672008 () Unit!168478)

(assert (=> b!7775618 (= lt!2672006 lt!2672008)))

(declare-fun ++!17906 (List!73627 List!73627) List!73627)

(assert (=> b!7775618 (= (++!17906 (++!17906 Nil!73503 (Cons!73503 (h!79951 (t!388362 s!14292)) Nil!73503)) (t!388362 (t!388362 s!14292))) (t!388362 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3389 (List!73627 C!41902 List!73627 List!73627) Unit!168478)

(assert (=> b!7775618 (= lt!2672008 (lemmaMoveElementToOtherListKeepsConcatEq!3389 Nil!73503 (h!79951 (t!388362 s!14292)) (t!388362 (t!388362 s!14292)) (t!388362 s!14292)))))

(assert (=> b!7775618 (= e!4606589 (findConcatSeparation!3759 lt!2671958 r2!6217 (++!17906 Nil!73503 (Cons!73503 (h!79951 (t!388362 s!14292)) Nil!73503)) (t!388362 (t!388362 s!14292)) (t!388362 s!14292)))))

(declare-fun b!7775619 () Bool)

(declare-fun e!4606588 () Bool)

(assert (=> b!7775619 (= e!4606588 (matchR!10248 r2!6217 (t!388362 s!14292)))))

(declare-fun b!7775621 () Bool)

(declare-fun res!3099411 () Bool)

(declare-fun e!4606587 () Bool)

(assert (=> b!7775621 (=> (not res!3099411) (not e!4606587))))

(declare-fun lt!2672007 () Option!17729)

(declare-fun get!26256 (Option!17729) tuple2!69870)

(assert (=> b!7775621 (= res!3099411 (matchR!10248 r2!6217 (_2!38238 (get!26256 lt!2672007))))))

(declare-fun b!7775622 () Bool)

(declare-fun res!3099410 () Bool)

(assert (=> b!7775622 (=> (not res!3099410) (not e!4606587))))

(assert (=> b!7775622 (= res!3099410 (matchR!10248 lt!2671958 (_1!38238 (get!26256 lt!2672007))))))

(declare-fun b!7775623 () Bool)

(assert (=> b!7775623 (= e!4606587 (= (++!17906 (_1!38238 (get!26256 lt!2672007)) (_2!38238 (get!26256 lt!2672007))) (t!388362 s!14292)))))

(declare-fun b!7775624 () Bool)

(declare-fun e!4606585 () Bool)

(assert (=> b!7775624 (= e!4606585 (not (isDefined!14341 lt!2672007)))))

(declare-fun b!7775625 () Bool)

(assert (=> b!7775625 (= e!4606586 (Some!17728 (tuple2!69871 Nil!73503 (t!388362 s!14292))))))

(declare-fun b!7775620 () Bool)

(assert (=> b!7775620 (= e!4606589 None!17728)))

(declare-fun d!2344782 () Bool)

(assert (=> d!2344782 e!4606585))

(declare-fun res!3099412 () Bool)

(assert (=> d!2344782 (=> res!3099412 e!4606585)))

(assert (=> d!2344782 (= res!3099412 e!4606587)))

(declare-fun res!3099414 () Bool)

(assert (=> d!2344782 (=> (not res!3099414) (not e!4606587))))

(assert (=> d!2344782 (= res!3099414 (isDefined!14341 lt!2672007))))

(assert (=> d!2344782 (= lt!2672007 e!4606586)))

(declare-fun c!1432963 () Bool)

(assert (=> d!2344782 (= c!1432963 e!4606588)))

(declare-fun res!3099413 () Bool)

(assert (=> d!2344782 (=> (not res!3099413) (not e!4606588))))

(assert (=> d!2344782 (= res!3099413 (matchR!10248 lt!2671958 Nil!73503))))

(assert (=> d!2344782 (validRegex!11202 lt!2671958)))

(assert (=> d!2344782 (= (findConcatSeparation!3759 lt!2671958 r2!6217 Nil!73503 (t!388362 s!14292) (t!388362 s!14292)) lt!2672007)))

(assert (= (and d!2344782 res!3099413) b!7775619))

(assert (= (and d!2344782 c!1432963) b!7775625))

(assert (= (and d!2344782 (not c!1432963)) b!7775617))

(assert (= (and b!7775617 c!1432964) b!7775620))

(assert (= (and b!7775617 (not c!1432964)) b!7775618))

(assert (= (and d!2344782 res!3099414) b!7775622))

(assert (= (and b!7775622 res!3099410) b!7775621))

(assert (= (and b!7775621 res!3099411) b!7775623))

(assert (= (and d!2344782 (not res!3099412)) b!7775624))

(declare-fun m!8226682 () Bool)

(assert (=> b!7775621 m!8226682))

(declare-fun m!8226684 () Bool)

(assert (=> b!7775621 m!8226684))

(assert (=> b!7775623 m!8226682))

(declare-fun m!8226686 () Bool)

(assert (=> b!7775623 m!8226686))

(declare-fun m!8226688 () Bool)

(assert (=> b!7775618 m!8226688))

(assert (=> b!7775618 m!8226688))

(declare-fun m!8226690 () Bool)

(assert (=> b!7775618 m!8226690))

(declare-fun m!8226692 () Bool)

(assert (=> b!7775618 m!8226692))

(assert (=> b!7775618 m!8226688))

(declare-fun m!8226694 () Bool)

(assert (=> b!7775618 m!8226694))

(declare-fun m!8226696 () Bool)

(assert (=> b!7775624 m!8226696))

(assert (=> d!2344782 m!8226696))

(declare-fun m!8226698 () Bool)

(assert (=> d!2344782 m!8226698))

(assert (=> d!2344782 m!8226582))

(assert (=> b!7775622 m!8226682))

(declare-fun m!8226700 () Bool)

(assert (=> b!7775622 m!8226700))

(declare-fun m!8226702 () Bool)

(assert (=> b!7775619 m!8226702))

(assert (=> b!7775350 d!2344782))

(declare-fun d!2344784 () Bool)

(assert (=> d!2344784 (isDefined!14341 (findConcatSeparation!3759 lt!2671958 r2!6217 Nil!73503 (t!388362 s!14292) (t!388362 s!14292)))))

(declare-fun lt!2672011 () Unit!168478)

(declare-fun choose!59481 (Regex!20788 Regex!20788 List!73627) Unit!168478)

(assert (=> d!2344784 (= lt!2672011 (choose!59481 lt!2671958 r2!6217 (t!388362 s!14292)))))

(assert (=> d!2344784 (validRegex!11202 lt!2671958)))

(assert (=> d!2344784 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!349 lt!2671958 r2!6217 (t!388362 s!14292)) lt!2672011)))

(declare-fun bs!1966161 () Bool)

(assert (= bs!1966161 d!2344784))

(assert (=> bs!1966161 m!8226584))

(assert (=> bs!1966161 m!8226584))

(assert (=> bs!1966161 m!8226586))

(declare-fun m!8226704 () Bool)

(assert (=> bs!1966161 m!8226704))

(assert (=> bs!1966161 m!8226582))

(assert (=> b!7775350 d!2344784))

(declare-fun b!7775626 () Bool)

(declare-fun e!4606596 () Bool)

(declare-fun lt!2672012 () Bool)

(declare-fun call!720692 () Bool)

(assert (=> b!7775626 (= e!4606596 (= lt!2672012 call!720692))))

(declare-fun b!7775627 () Bool)

(declare-fun res!3099417 () Bool)

(declare-fun e!4606592 () Bool)

(assert (=> b!7775627 (=> res!3099417 e!4606592)))

(declare-fun e!4606595 () Bool)

(assert (=> b!7775627 (= res!3099417 e!4606595)))

(declare-fun res!3099418 () Bool)

(assert (=> b!7775627 (=> (not res!3099418) (not e!4606595))))

(assert (=> b!7775627 (= res!3099418 lt!2672012)))

(declare-fun d!2344786 () Bool)

(assert (=> d!2344786 e!4606596))

(declare-fun c!1432965 () Bool)

(assert (=> d!2344786 (= c!1432965 (is-EmptyExpr!20788 lt!2671954))))

(declare-fun e!4606594 () Bool)

(assert (=> d!2344786 (= lt!2672012 e!4606594)))

(declare-fun c!1432966 () Bool)

(assert (=> d!2344786 (= c!1432966 (isEmpty!42164 s!14292))))

(assert (=> d!2344786 (validRegex!11202 lt!2671954)))

(assert (=> d!2344786 (= (matchR!10248 lt!2671954 s!14292) lt!2672012)))

(declare-fun b!7775628 () Bool)

(assert (=> b!7775628 (= e!4606594 (nullable!9176 lt!2671954))))

(declare-fun b!7775629 () Bool)

(declare-fun res!3099416 () Bool)

(assert (=> b!7775629 (=> (not res!3099416) (not e!4606595))))

(assert (=> b!7775629 (= res!3099416 (not call!720692))))

(declare-fun b!7775630 () Bool)

(declare-fun res!3099422 () Bool)

(assert (=> b!7775630 (=> (not res!3099422) (not e!4606595))))

(assert (=> b!7775630 (= res!3099422 (isEmpty!42164 (tail!15440 s!14292)))))

(declare-fun b!7775631 () Bool)

(declare-fun e!4606593 () Bool)

(declare-fun e!4606590 () Bool)

(assert (=> b!7775631 (= e!4606593 e!4606590)))

(declare-fun res!3099419 () Bool)

(assert (=> b!7775631 (=> res!3099419 e!4606590)))

(assert (=> b!7775631 (= res!3099419 call!720692)))

(declare-fun b!7775632 () Bool)

(declare-fun e!4606591 () Bool)

(assert (=> b!7775632 (= e!4606596 e!4606591)))

(declare-fun c!1432967 () Bool)

(assert (=> b!7775632 (= c!1432967 (is-EmptyLang!20788 lt!2671954))))

(declare-fun b!7775633 () Bool)

(assert (=> b!7775633 (= e!4606590 (not (= (head!15899 s!14292) (c!1432903 lt!2671954))))))

(declare-fun bm!720687 () Bool)

(assert (=> bm!720687 (= call!720692 (isEmpty!42164 s!14292))))

(declare-fun b!7775634 () Bool)

(assert (=> b!7775634 (= e!4606591 (not lt!2672012))))

(declare-fun b!7775635 () Bool)

(assert (=> b!7775635 (= e!4606594 (matchR!10248 (derivativeStep!6131 lt!2671954 (head!15899 s!14292)) (tail!15440 s!14292)))))

(declare-fun b!7775636 () Bool)

(declare-fun res!3099415 () Bool)

(assert (=> b!7775636 (=> res!3099415 e!4606592)))

(assert (=> b!7775636 (= res!3099415 (not (is-ElementMatch!20788 lt!2671954)))))

(assert (=> b!7775636 (= e!4606591 e!4606592)))

(declare-fun b!7775637 () Bool)

(assert (=> b!7775637 (= e!4606592 e!4606593)))

(declare-fun res!3099420 () Bool)

(assert (=> b!7775637 (=> (not res!3099420) (not e!4606593))))

(assert (=> b!7775637 (= res!3099420 (not lt!2672012))))

(declare-fun b!7775638 () Bool)

(declare-fun res!3099421 () Bool)

(assert (=> b!7775638 (=> res!3099421 e!4606590)))

(assert (=> b!7775638 (= res!3099421 (not (isEmpty!42164 (tail!15440 s!14292))))))

(declare-fun b!7775639 () Bool)

(assert (=> b!7775639 (= e!4606595 (= (head!15899 s!14292) (c!1432903 lt!2671954)))))

(assert (= (and d!2344786 c!1432966) b!7775628))

(assert (= (and d!2344786 (not c!1432966)) b!7775635))

(assert (= (and d!2344786 c!1432965) b!7775626))

(assert (= (and d!2344786 (not c!1432965)) b!7775632))

(assert (= (and b!7775632 c!1432967) b!7775634))

(assert (= (and b!7775632 (not c!1432967)) b!7775636))

(assert (= (and b!7775636 (not res!3099415)) b!7775627))

(assert (= (and b!7775627 res!3099418) b!7775629))

(assert (= (and b!7775629 res!3099416) b!7775630))

(assert (= (and b!7775630 res!3099422) b!7775639))

(assert (= (and b!7775627 (not res!3099417)) b!7775637))

(assert (= (and b!7775637 res!3099420) b!7775631))

(assert (= (and b!7775631 (not res!3099419)) b!7775638))

(assert (= (and b!7775638 (not res!3099421)) b!7775633))

(assert (= (or b!7775626 b!7775629 b!7775631) bm!720687))

(declare-fun m!8226706 () Bool)

(assert (=> b!7775639 m!8226706))

(declare-fun m!8226708 () Bool)

(assert (=> bm!720687 m!8226708))

(declare-fun m!8226710 () Bool)

(assert (=> b!7775638 m!8226710))

(assert (=> b!7775638 m!8226710))

(declare-fun m!8226712 () Bool)

(assert (=> b!7775638 m!8226712))

(assert (=> b!7775630 m!8226710))

(assert (=> b!7775630 m!8226710))

(assert (=> b!7775630 m!8226712))

(assert (=> d!2344786 m!8226708))

(declare-fun m!8226714 () Bool)

(assert (=> d!2344786 m!8226714))

(assert (=> b!7775633 m!8226706))

(declare-fun m!8226716 () Bool)

(assert (=> b!7775628 m!8226716))

(assert (=> b!7775635 m!8226706))

(assert (=> b!7775635 m!8226706))

(declare-fun m!8226718 () Bool)

(assert (=> b!7775635 m!8226718))

(assert (=> b!7775635 m!8226710))

(assert (=> b!7775635 m!8226718))

(assert (=> b!7775635 m!8226710))

(declare-fun m!8226720 () Bool)

(assert (=> b!7775635 m!8226720))

(assert (=> b!7775365 d!2344786))

(declare-fun b!7775651 () Bool)

(declare-fun e!4606605 () Bool)

(declare-fun call!720699 () Bool)

(assert (=> b!7775651 (= e!4606605 call!720699)))

(declare-fun b!7775652 () Bool)

(declare-fun e!4606604 () Bool)

(assert (=> b!7775652 (= e!4606604 e!4606605)))

(declare-fun res!3099424 () Bool)

(assert (=> b!7775652 (= res!3099424 (not (nullable!9176 (reg!21117 r1!6279))))))

(assert (=> b!7775652 (=> (not res!3099424) (not e!4606605))))

(declare-fun c!1432974 () Bool)

(declare-fun bm!720692 () Bool)

(declare-fun c!1432973 () Bool)

(assert (=> bm!720692 (= call!720699 (validRegex!11202 (ite c!1432974 (reg!21117 r1!6279) (ite c!1432973 (regTwo!42089 r1!6279) (regTwo!42088 r1!6279)))))))

(declare-fun b!7775653 () Bool)

(declare-fun res!3099423 () Bool)

(declare-fun e!4606603 () Bool)

(assert (=> b!7775653 (=> res!3099423 e!4606603)))

(assert (=> b!7775653 (= res!3099423 (not (is-Concat!29633 r1!6279)))))

(declare-fun e!4606608 () Bool)

(assert (=> b!7775653 (= e!4606608 e!4606603)))

(declare-fun b!7775654 () Bool)

(declare-fun e!4606606 () Bool)

(declare-fun call!720698 () Bool)

(assert (=> b!7775654 (= e!4606606 call!720698)))

(declare-fun bm!720693 () Bool)

(assert (=> bm!720693 (= call!720698 call!720699)))

(declare-fun b!7775650 () Bool)

(declare-fun res!3099425 () Bool)

(declare-fun e!4606607 () Bool)

(assert (=> b!7775650 (=> (not res!3099425) (not e!4606607))))

(declare-fun call!720697 () Bool)

(assert (=> b!7775650 (= res!3099425 call!720697)))

(assert (=> b!7775650 (= e!4606608 e!4606607)))

(declare-fun d!2344788 () Bool)

(declare-fun res!3099426 () Bool)

(declare-fun e!4606602 () Bool)

(assert (=> d!2344788 (=> res!3099426 e!4606602)))

(assert (=> d!2344788 (= res!3099426 (is-ElementMatch!20788 r1!6279))))

(assert (=> d!2344788 (= (validRegex!11202 r1!6279) e!4606602)))

(declare-fun bm!720694 () Bool)

(assert (=> bm!720694 (= call!720697 (validRegex!11202 (ite c!1432973 (regOne!42089 r1!6279) (regOne!42088 r1!6279))))))

(declare-fun b!7775655 () Bool)

(assert (=> b!7775655 (= e!4606603 e!4606606)))

(declare-fun res!3099427 () Bool)

(assert (=> b!7775655 (=> (not res!3099427) (not e!4606606))))

(assert (=> b!7775655 (= res!3099427 call!720697)))

(declare-fun b!7775656 () Bool)

(assert (=> b!7775656 (= e!4606607 call!720698)))

(declare-fun b!7775657 () Bool)

(assert (=> b!7775657 (= e!4606604 e!4606608)))

(assert (=> b!7775657 (= c!1432973 (is-Union!20788 r1!6279))))

(declare-fun b!7775658 () Bool)

(assert (=> b!7775658 (= e!4606602 e!4606604)))

(assert (=> b!7775658 (= c!1432974 (is-Star!20788 r1!6279))))

(assert (= (and d!2344788 (not res!3099426)) b!7775658))

(assert (= (and b!7775658 c!1432974) b!7775652))

(assert (= (and b!7775658 (not c!1432974)) b!7775657))

(assert (= (and b!7775652 res!3099424) b!7775651))

(assert (= (and b!7775657 c!1432973) b!7775650))

(assert (= (and b!7775657 (not c!1432973)) b!7775653))

(assert (= (and b!7775650 res!3099425) b!7775656))

(assert (= (and b!7775653 (not res!3099423)) b!7775655))

(assert (= (and b!7775655 res!3099427) b!7775654))

(assert (= (or b!7775650 b!7775655) bm!720694))

(assert (= (or b!7775656 b!7775654) bm!720693))

(assert (= (or b!7775651 bm!720693) bm!720692))

(declare-fun m!8226722 () Bool)

(assert (=> b!7775652 m!8226722))

(declare-fun m!8226724 () Bool)

(assert (=> bm!720692 m!8226724))

(declare-fun m!8226726 () Bool)

(assert (=> bm!720694 m!8226726))

(assert (=> start!740252 d!2344788))

(declare-fun b!7775659 () Bool)

(declare-fun e!4606615 () Bool)

(declare-fun lt!2672014 () Bool)

(declare-fun call!720700 () Bool)

(assert (=> b!7775659 (= e!4606615 (= lt!2672014 call!720700))))

(declare-fun b!7775660 () Bool)

(declare-fun res!3099430 () Bool)

(declare-fun e!4606611 () Bool)

(assert (=> b!7775660 (=> res!3099430 e!4606611)))

(declare-fun e!4606614 () Bool)

(assert (=> b!7775660 (= res!3099430 e!4606614)))

(declare-fun res!3099431 () Bool)

(assert (=> b!7775660 (=> (not res!3099431) (not e!4606614))))

(assert (=> b!7775660 (= res!3099431 lt!2672014)))

(declare-fun d!2344790 () Bool)

(assert (=> d!2344790 e!4606615))

(declare-fun c!1432975 () Bool)

(assert (=> d!2344790 (= c!1432975 (is-EmptyExpr!20788 lt!2671955))))

(declare-fun e!4606613 () Bool)

(assert (=> d!2344790 (= lt!2672014 e!4606613)))

(declare-fun c!1432976 () Bool)

(assert (=> d!2344790 (= c!1432976 (isEmpty!42164 (t!388362 s!14292)))))

(assert (=> d!2344790 (validRegex!11202 lt!2671955)))

(assert (=> d!2344790 (= (matchR!10248 lt!2671955 (t!388362 s!14292)) lt!2672014)))

(declare-fun b!7775661 () Bool)

(assert (=> b!7775661 (= e!4606613 (nullable!9176 lt!2671955))))

(declare-fun b!7775662 () Bool)

(declare-fun res!3099429 () Bool)

(assert (=> b!7775662 (=> (not res!3099429) (not e!4606614))))

(assert (=> b!7775662 (= res!3099429 (not call!720700))))

(declare-fun b!7775663 () Bool)

(declare-fun res!3099435 () Bool)

(assert (=> b!7775663 (=> (not res!3099435) (not e!4606614))))

(assert (=> b!7775663 (= res!3099435 (isEmpty!42164 (tail!15440 (t!388362 s!14292))))))

(declare-fun b!7775664 () Bool)

(declare-fun e!4606612 () Bool)

(declare-fun e!4606609 () Bool)

(assert (=> b!7775664 (= e!4606612 e!4606609)))

(declare-fun res!3099432 () Bool)

(assert (=> b!7775664 (=> res!3099432 e!4606609)))

(assert (=> b!7775664 (= res!3099432 call!720700)))

(declare-fun b!7775665 () Bool)

(declare-fun e!4606610 () Bool)

(assert (=> b!7775665 (= e!4606615 e!4606610)))

(declare-fun c!1432977 () Bool)

(assert (=> b!7775665 (= c!1432977 (is-EmptyLang!20788 lt!2671955))))

(declare-fun b!7775666 () Bool)

(assert (=> b!7775666 (= e!4606609 (not (= (head!15899 (t!388362 s!14292)) (c!1432903 lt!2671955))))))

(declare-fun bm!720695 () Bool)

(assert (=> bm!720695 (= call!720700 (isEmpty!42164 (t!388362 s!14292)))))

(declare-fun b!7775667 () Bool)

(assert (=> b!7775667 (= e!4606610 (not lt!2672014))))

(declare-fun b!7775668 () Bool)

(assert (=> b!7775668 (= e!4606613 (matchR!10248 (derivativeStep!6131 lt!2671955 (head!15899 (t!388362 s!14292))) (tail!15440 (t!388362 s!14292))))))

(declare-fun b!7775669 () Bool)

(declare-fun res!3099428 () Bool)

(assert (=> b!7775669 (=> res!3099428 e!4606611)))

(assert (=> b!7775669 (= res!3099428 (not (is-ElementMatch!20788 lt!2671955)))))

(assert (=> b!7775669 (= e!4606610 e!4606611)))

(declare-fun b!7775670 () Bool)

(assert (=> b!7775670 (= e!4606611 e!4606612)))

(declare-fun res!3099433 () Bool)

(assert (=> b!7775670 (=> (not res!3099433) (not e!4606612))))

(assert (=> b!7775670 (= res!3099433 (not lt!2672014))))

(declare-fun b!7775671 () Bool)

(declare-fun res!3099434 () Bool)

(assert (=> b!7775671 (=> res!3099434 e!4606609)))

(assert (=> b!7775671 (= res!3099434 (not (isEmpty!42164 (tail!15440 (t!388362 s!14292)))))))

(declare-fun b!7775672 () Bool)

(assert (=> b!7775672 (= e!4606614 (= (head!15899 (t!388362 s!14292)) (c!1432903 lt!2671955)))))

(assert (= (and d!2344790 c!1432976) b!7775661))

(assert (= (and d!2344790 (not c!1432976)) b!7775668))

(assert (= (and d!2344790 c!1432975) b!7775659))

(assert (= (and d!2344790 (not c!1432975)) b!7775665))

(assert (= (and b!7775665 c!1432977) b!7775667))

(assert (= (and b!7775665 (not c!1432977)) b!7775669))

(assert (= (and b!7775669 (not res!3099428)) b!7775660))

(assert (= (and b!7775660 res!3099431) b!7775662))

(assert (= (and b!7775662 res!3099429) b!7775663))

(assert (= (and b!7775663 res!3099435) b!7775672))

(assert (= (and b!7775660 (not res!3099430)) b!7775670))

(assert (= (and b!7775670 res!3099433) b!7775664))

(assert (= (and b!7775664 (not res!3099432)) b!7775671))

(assert (= (and b!7775671 (not res!3099434)) b!7775666))

(assert (= (or b!7775659 b!7775662 b!7775664) bm!720695))

(assert (=> b!7775672 m!8226638))

(assert (=> bm!720695 m!8226640))

(assert (=> b!7775671 m!8226642))

(assert (=> b!7775671 m!8226642))

(assert (=> b!7775671 m!8226644))

(assert (=> b!7775663 m!8226642))

(assert (=> b!7775663 m!8226642))

(assert (=> b!7775663 m!8226644))

(assert (=> d!2344790 m!8226640))

(declare-fun m!8226736 () Bool)

(assert (=> d!2344790 m!8226736))

(assert (=> b!7775666 m!8226638))

(declare-fun m!8226738 () Bool)

(assert (=> b!7775661 m!8226738))

(assert (=> b!7775668 m!8226638))

(assert (=> b!7775668 m!8226638))

(declare-fun m!8226740 () Bool)

(assert (=> b!7775668 m!8226740))

(assert (=> b!7775668 m!8226642))

(assert (=> b!7775668 m!8226740))

(assert (=> b!7775668 m!8226642))

(declare-fun m!8226742 () Bool)

(assert (=> b!7775668 m!8226742))

(assert (=> b!7775360 d!2344790))

(declare-fun b!7775683 () Bool)

(declare-fun e!4606622 () Regex!20788)

(declare-fun call!720707 () Regex!20788)

(assert (=> b!7775683 (= e!4606622 (Concat!29633 call!720707 lt!2671954))))

(declare-fun b!7775685 () Bool)

(declare-fun e!4606624 () Regex!20788)

(declare-fun call!720705 () Regex!20788)

(declare-fun call!720708 () Regex!20788)

(assert (=> b!7775685 (= e!4606624 (Union!20788 call!720705 call!720708))))

(declare-fun b!7775686 () Bool)

(declare-fun e!4606621 () Regex!20788)

(assert (=> b!7775686 (= e!4606621 EmptyLang!20788)))

(declare-fun b!7775687 () Bool)

(declare-fun e!4606625 () Regex!20788)

(assert (=> b!7775687 (= e!4606621 e!4606625)))

(declare-fun c!1432985 () Bool)

(assert (=> b!7775687 (= c!1432985 (is-ElementMatch!20788 lt!2671954))))

(declare-fun b!7775688 () Bool)

(declare-fun e!4606623 () Regex!20788)

(declare-fun call!720706 () Regex!20788)

(assert (=> b!7775688 (= e!4606623 (Union!20788 (Concat!29633 call!720706 (regTwo!42088 lt!2671954)) EmptyLang!20788))))

(declare-fun b!7775689 () Bool)

(assert (=> b!7775689 (= e!4606624 e!4606622)))

(declare-fun c!1432987 () Bool)

(assert (=> b!7775689 (= c!1432987 (is-Star!20788 lt!2671954))))

(declare-fun bm!720700 () Bool)

(assert (=> bm!720700 (= call!720707 call!720708)))

(declare-fun c!1432986 () Bool)

(declare-fun bm!720701 () Bool)

(assert (=> bm!720701 (= call!720705 (derivativeStep!6131 (ite c!1432986 (regOne!42089 lt!2671954) (regOne!42088 lt!2671954)) (h!79951 s!14292)))))

(declare-fun b!7775690 () Bool)

(declare-fun c!1432983 () Bool)

(assert (=> b!7775690 (= c!1432983 (nullable!9176 (regOne!42088 lt!2671954)))))

(assert (=> b!7775690 (= e!4606622 e!4606623)))

(declare-fun b!7775691 () Bool)

(assert (=> b!7775691 (= e!4606625 (ite (= (h!79951 s!14292) (c!1432903 lt!2671954)) EmptyExpr!20788 EmptyLang!20788))))

(declare-fun bm!720702 () Bool)

(assert (=> bm!720702 (= call!720708 (derivativeStep!6131 (ite c!1432986 (regTwo!42089 lt!2671954) (ite c!1432987 (reg!21117 lt!2671954) (ite c!1432983 (regTwo!42088 lt!2671954) (regOne!42088 lt!2671954)))) (h!79951 s!14292)))))

(declare-fun d!2344794 () Bool)

(declare-fun lt!2672016 () Regex!20788)

(assert (=> d!2344794 (validRegex!11202 lt!2672016)))

(assert (=> d!2344794 (= lt!2672016 e!4606621)))

(declare-fun c!1432984 () Bool)

(assert (=> d!2344794 (= c!1432984 (or (is-EmptyExpr!20788 lt!2671954) (is-EmptyLang!20788 lt!2671954)))))

(assert (=> d!2344794 (validRegex!11202 lt!2671954)))

(assert (=> d!2344794 (= (derivativeStep!6131 lt!2671954 (h!79951 s!14292)) lt!2672016)))

(declare-fun b!7775684 () Bool)

(assert (=> b!7775684 (= e!4606623 (Union!20788 (Concat!29633 call!720705 (regTwo!42088 lt!2671954)) call!720706))))

(declare-fun bm!720703 () Bool)

(assert (=> bm!720703 (= call!720706 call!720707)))

(declare-fun b!7775692 () Bool)

(assert (=> b!7775692 (= c!1432986 (is-Union!20788 lt!2671954))))

(assert (=> b!7775692 (= e!4606625 e!4606624)))

(assert (= (and d!2344794 c!1432984) b!7775686))

(assert (= (and d!2344794 (not c!1432984)) b!7775687))

(assert (= (and b!7775687 c!1432985) b!7775691))

(assert (= (and b!7775687 (not c!1432985)) b!7775692))

(assert (= (and b!7775692 c!1432986) b!7775685))

(assert (= (and b!7775692 (not c!1432986)) b!7775689))

(assert (= (and b!7775689 c!1432987) b!7775683))

(assert (= (and b!7775689 (not c!1432987)) b!7775690))

(assert (= (and b!7775690 c!1432983) b!7775684))

(assert (= (and b!7775690 (not c!1432983)) b!7775688))

(assert (= (or b!7775684 b!7775688) bm!720703))

(assert (= (or b!7775683 bm!720703) bm!720700))

(assert (= (or b!7775685 bm!720700) bm!720702))

(assert (= (or b!7775685 b!7775684) bm!720701))

(declare-fun m!8226744 () Bool)

(assert (=> bm!720701 m!8226744))

(declare-fun m!8226746 () Bool)

(assert (=> b!7775690 m!8226746))

(declare-fun m!8226748 () Bool)

(assert (=> bm!720702 m!8226748))

(declare-fun m!8226750 () Bool)

(assert (=> d!2344794 m!8226750))

(assert (=> d!2344794 m!8226714))

(assert (=> b!7775360 d!2344794))

(declare-fun d!2344796 () Bool)

(declare-fun nullableFct!3590 (Regex!20788) Bool)

(assert (=> d!2344796 (= (nullable!9176 r1!6279) (nullableFct!3590 r1!6279))))

(declare-fun bs!1966162 () Bool)

(assert (= bs!1966162 d!2344796))

(declare-fun m!8226760 () Bool)

(assert (=> bs!1966162 m!8226760))

(assert (=> b!7775359 d!2344796))

(declare-fun b!7775693 () Bool)

(declare-fun e!4606632 () Bool)

(declare-fun lt!2672017 () Bool)

(declare-fun call!720709 () Bool)

(assert (=> b!7775693 (= e!4606632 (= lt!2672017 call!720709))))

(declare-fun b!7775694 () Bool)

(declare-fun res!3099438 () Bool)

(declare-fun e!4606628 () Bool)

(assert (=> b!7775694 (=> res!3099438 e!4606628)))

(declare-fun e!4606631 () Bool)

(assert (=> b!7775694 (= res!3099438 e!4606631)))

(declare-fun res!3099439 () Bool)

(assert (=> b!7775694 (=> (not res!3099439) (not e!4606631))))

(assert (=> b!7775694 (= res!3099439 lt!2672017)))

(declare-fun d!2344800 () Bool)

(assert (=> d!2344800 e!4606632))

(declare-fun c!1432988 () Bool)

(assert (=> d!2344800 (= c!1432988 (is-EmptyExpr!20788 lt!2671959))))

(declare-fun e!4606630 () Bool)

(assert (=> d!2344800 (= lt!2672017 e!4606630)))

(declare-fun c!1432989 () Bool)

(assert (=> d!2344800 (= c!1432989 (isEmpty!42164 (t!388362 s!14292)))))

(assert (=> d!2344800 (validRegex!11202 lt!2671959)))

(assert (=> d!2344800 (= (matchR!10248 lt!2671959 (t!388362 s!14292)) lt!2672017)))

(declare-fun b!7775695 () Bool)

(assert (=> b!7775695 (= e!4606630 (nullable!9176 lt!2671959))))

(declare-fun b!7775696 () Bool)

(declare-fun res!3099437 () Bool)

(assert (=> b!7775696 (=> (not res!3099437) (not e!4606631))))

(assert (=> b!7775696 (= res!3099437 (not call!720709))))

(declare-fun b!7775697 () Bool)

(declare-fun res!3099443 () Bool)

(assert (=> b!7775697 (=> (not res!3099443) (not e!4606631))))

(assert (=> b!7775697 (= res!3099443 (isEmpty!42164 (tail!15440 (t!388362 s!14292))))))

(declare-fun b!7775698 () Bool)

(declare-fun e!4606629 () Bool)

(declare-fun e!4606626 () Bool)

(assert (=> b!7775698 (= e!4606629 e!4606626)))

(declare-fun res!3099440 () Bool)

(assert (=> b!7775698 (=> res!3099440 e!4606626)))

(assert (=> b!7775698 (= res!3099440 call!720709)))

(declare-fun b!7775699 () Bool)

(declare-fun e!4606627 () Bool)

(assert (=> b!7775699 (= e!4606632 e!4606627)))

(declare-fun c!1432990 () Bool)

(assert (=> b!7775699 (= c!1432990 (is-EmptyLang!20788 lt!2671959))))

(declare-fun b!7775700 () Bool)

(assert (=> b!7775700 (= e!4606626 (not (= (head!15899 (t!388362 s!14292)) (c!1432903 lt!2671959))))))

(declare-fun bm!720704 () Bool)

(assert (=> bm!720704 (= call!720709 (isEmpty!42164 (t!388362 s!14292)))))

(declare-fun b!7775701 () Bool)

(assert (=> b!7775701 (= e!4606627 (not lt!2672017))))

(declare-fun b!7775702 () Bool)

(assert (=> b!7775702 (= e!4606630 (matchR!10248 (derivativeStep!6131 lt!2671959 (head!15899 (t!388362 s!14292))) (tail!15440 (t!388362 s!14292))))))

(declare-fun b!7775703 () Bool)

(declare-fun res!3099436 () Bool)

(assert (=> b!7775703 (=> res!3099436 e!4606628)))

(assert (=> b!7775703 (= res!3099436 (not (is-ElementMatch!20788 lt!2671959)))))

(assert (=> b!7775703 (= e!4606627 e!4606628)))

(declare-fun b!7775704 () Bool)

(assert (=> b!7775704 (= e!4606628 e!4606629)))

(declare-fun res!3099441 () Bool)

(assert (=> b!7775704 (=> (not res!3099441) (not e!4606629))))

(assert (=> b!7775704 (= res!3099441 (not lt!2672017))))

(declare-fun b!7775705 () Bool)

(declare-fun res!3099442 () Bool)

(assert (=> b!7775705 (=> res!3099442 e!4606626)))

(assert (=> b!7775705 (= res!3099442 (not (isEmpty!42164 (tail!15440 (t!388362 s!14292)))))))

(declare-fun b!7775706 () Bool)

(assert (=> b!7775706 (= e!4606631 (= (head!15899 (t!388362 s!14292)) (c!1432903 lt!2671959)))))

(assert (= (and d!2344800 c!1432989) b!7775695))

(assert (= (and d!2344800 (not c!1432989)) b!7775702))

(assert (= (and d!2344800 c!1432988) b!7775693))

(assert (= (and d!2344800 (not c!1432988)) b!7775699))

(assert (= (and b!7775699 c!1432990) b!7775701))

(assert (= (and b!7775699 (not c!1432990)) b!7775703))

(assert (= (and b!7775703 (not res!3099436)) b!7775694))

(assert (= (and b!7775694 res!3099439) b!7775696))

(assert (= (and b!7775696 res!3099437) b!7775697))

(assert (= (and b!7775697 res!3099443) b!7775706))

(assert (= (and b!7775694 (not res!3099438)) b!7775704))

(assert (= (and b!7775704 res!3099441) b!7775698))

(assert (= (and b!7775698 (not res!3099440)) b!7775705))

(assert (= (and b!7775705 (not res!3099442)) b!7775700))

(assert (= (or b!7775693 b!7775696 b!7775698) bm!720704))

(assert (=> b!7775706 m!8226638))

(assert (=> bm!720704 m!8226640))

(assert (=> b!7775705 m!8226642))

(assert (=> b!7775705 m!8226642))

(assert (=> b!7775705 m!8226644))

(assert (=> b!7775697 m!8226642))

(assert (=> b!7775697 m!8226642))

(assert (=> b!7775697 m!8226644))

(assert (=> d!2344800 m!8226640))

(assert (=> d!2344800 m!8226656))

(assert (=> b!7775700 m!8226638))

(declare-fun m!8226762 () Bool)

(assert (=> b!7775695 m!8226762))

(assert (=> b!7775702 m!8226638))

(assert (=> b!7775702 m!8226638))

(declare-fun m!8226764 () Bool)

(assert (=> b!7775702 m!8226764))

(assert (=> b!7775702 m!8226642))

(assert (=> b!7775702 m!8226764))

(assert (=> b!7775702 m!8226642))

(declare-fun m!8226766 () Bool)

(assert (=> b!7775702 m!8226766))

(assert (=> b!7775354 d!2344800))

(declare-fun b!7775708 () Bool)

(declare-fun e!4606636 () Bool)

(declare-fun call!720712 () Bool)

(assert (=> b!7775708 (= e!4606636 call!720712)))

(declare-fun b!7775709 () Bool)

(declare-fun e!4606635 () Bool)

(assert (=> b!7775709 (= e!4606635 e!4606636)))

(declare-fun res!3099445 () Bool)

(assert (=> b!7775709 (= res!3099445 (not (nullable!9176 (reg!21117 r2!6217))))))

(assert (=> b!7775709 (=> (not res!3099445) (not e!4606636))))

(declare-fun c!1432992 () Bool)

(declare-fun bm!720705 () Bool)

(declare-fun c!1432991 () Bool)

(assert (=> bm!720705 (= call!720712 (validRegex!11202 (ite c!1432992 (reg!21117 r2!6217) (ite c!1432991 (regTwo!42089 r2!6217) (regTwo!42088 r2!6217)))))))

(declare-fun b!7775710 () Bool)

(declare-fun res!3099444 () Bool)

(declare-fun e!4606634 () Bool)

(assert (=> b!7775710 (=> res!3099444 e!4606634)))

(assert (=> b!7775710 (= res!3099444 (not (is-Concat!29633 r2!6217)))))

(declare-fun e!4606639 () Bool)

(assert (=> b!7775710 (= e!4606639 e!4606634)))

(declare-fun b!7775711 () Bool)

(declare-fun e!4606637 () Bool)

(declare-fun call!720711 () Bool)

(assert (=> b!7775711 (= e!4606637 call!720711)))

(declare-fun bm!720706 () Bool)

(assert (=> bm!720706 (= call!720711 call!720712)))

(declare-fun b!7775707 () Bool)

(declare-fun res!3099446 () Bool)

(declare-fun e!4606638 () Bool)

(assert (=> b!7775707 (=> (not res!3099446) (not e!4606638))))

(declare-fun call!720710 () Bool)

(assert (=> b!7775707 (= res!3099446 call!720710)))

(assert (=> b!7775707 (= e!4606639 e!4606638)))

(declare-fun d!2344802 () Bool)

(declare-fun res!3099447 () Bool)

(declare-fun e!4606633 () Bool)

(assert (=> d!2344802 (=> res!3099447 e!4606633)))

(assert (=> d!2344802 (= res!3099447 (is-ElementMatch!20788 r2!6217))))

(assert (=> d!2344802 (= (validRegex!11202 r2!6217) e!4606633)))

(declare-fun bm!720707 () Bool)

(assert (=> bm!720707 (= call!720710 (validRegex!11202 (ite c!1432991 (regOne!42089 r2!6217) (regOne!42088 r2!6217))))))

(declare-fun b!7775712 () Bool)

(assert (=> b!7775712 (= e!4606634 e!4606637)))

(declare-fun res!3099448 () Bool)

(assert (=> b!7775712 (=> (not res!3099448) (not e!4606637))))

(assert (=> b!7775712 (= res!3099448 call!720710)))

(declare-fun b!7775713 () Bool)

(assert (=> b!7775713 (= e!4606638 call!720711)))

(declare-fun b!7775714 () Bool)

(assert (=> b!7775714 (= e!4606635 e!4606639)))

(assert (=> b!7775714 (= c!1432991 (is-Union!20788 r2!6217))))

(declare-fun b!7775715 () Bool)

(assert (=> b!7775715 (= e!4606633 e!4606635)))

(assert (=> b!7775715 (= c!1432992 (is-Star!20788 r2!6217))))

(assert (= (and d!2344802 (not res!3099447)) b!7775715))

(assert (= (and b!7775715 c!1432992) b!7775709))

(assert (= (and b!7775715 (not c!1432992)) b!7775714))

(assert (= (and b!7775709 res!3099445) b!7775708))

(assert (= (and b!7775714 c!1432991) b!7775707))

(assert (= (and b!7775714 (not c!1432991)) b!7775710))

(assert (= (and b!7775707 res!3099446) b!7775713))

(assert (= (and b!7775710 (not res!3099444)) b!7775712))

(assert (= (and b!7775712 res!3099448) b!7775711))

(assert (= (or b!7775707 b!7775712) bm!720707))

(assert (= (or b!7775713 b!7775711) bm!720706))

(assert (= (or b!7775708 bm!720706) bm!720705))

(declare-fun m!8226768 () Bool)

(assert (=> b!7775709 m!8226768))

(declare-fun m!8226770 () Bool)

(assert (=> bm!720705 m!8226770))

(declare-fun m!8226772 () Bool)

(assert (=> bm!720707 m!8226772))

(assert (=> b!7775357 d!2344802))

(declare-fun b!7775728 () Bool)

(declare-fun e!4606642 () Bool)

(declare-fun tp!2284913 () Bool)

(assert (=> b!7775728 (= e!4606642 tp!2284913)))

(declare-fun b!7775726 () Bool)

(assert (=> b!7775726 (= e!4606642 tp_is_empty!51931)))

(declare-fun b!7775729 () Bool)

(declare-fun tp!2284912 () Bool)

(declare-fun tp!2284916 () Bool)

(assert (=> b!7775729 (= e!4606642 (and tp!2284912 tp!2284916))))

(declare-fun b!7775727 () Bool)

(declare-fun tp!2284915 () Bool)

(declare-fun tp!2284914 () Bool)

(assert (=> b!7775727 (= e!4606642 (and tp!2284915 tp!2284914))))

(assert (=> b!7775367 (= tp!2284859 e!4606642)))

(assert (= (and b!7775367 (is-ElementMatch!20788 (reg!21117 r1!6279))) b!7775726))

(assert (= (and b!7775367 (is-Concat!29633 (reg!21117 r1!6279))) b!7775727))

(assert (= (and b!7775367 (is-Star!20788 (reg!21117 r1!6279))) b!7775728))

(assert (= (and b!7775367 (is-Union!20788 (reg!21117 r1!6279))) b!7775729))

(declare-fun b!7775734 () Bool)

(declare-fun e!4606645 () Bool)

(declare-fun tp!2284919 () Bool)

(assert (=> b!7775734 (= e!4606645 (and tp_is_empty!51931 tp!2284919))))

(assert (=> b!7775362 (= tp!2284868 e!4606645)))

(assert (= (and b!7775362 (is-Cons!73503 (t!388362 s!14292))) b!7775734))

(declare-fun b!7775737 () Bool)

(declare-fun e!4606646 () Bool)

(declare-fun tp!2284921 () Bool)

(assert (=> b!7775737 (= e!4606646 tp!2284921)))

(declare-fun b!7775735 () Bool)

(assert (=> b!7775735 (= e!4606646 tp_is_empty!51931)))

(declare-fun b!7775738 () Bool)

(declare-fun tp!2284920 () Bool)

(declare-fun tp!2284924 () Bool)

(assert (=> b!7775738 (= e!4606646 (and tp!2284920 tp!2284924))))

(declare-fun b!7775736 () Bool)

(declare-fun tp!2284923 () Bool)

(declare-fun tp!2284922 () Bool)

(assert (=> b!7775736 (= e!4606646 (and tp!2284923 tp!2284922))))

(assert (=> b!7775361 (= tp!2284867 e!4606646)))

(assert (= (and b!7775361 (is-ElementMatch!20788 (regOne!42089 r1!6279))) b!7775735))

(assert (= (and b!7775361 (is-Concat!29633 (regOne!42089 r1!6279))) b!7775736))

(assert (= (and b!7775361 (is-Star!20788 (regOne!42089 r1!6279))) b!7775737))

(assert (= (and b!7775361 (is-Union!20788 (regOne!42089 r1!6279))) b!7775738))

(declare-fun b!7775743 () Bool)

(declare-fun e!4606649 () Bool)

(declare-fun tp!2284926 () Bool)

(assert (=> b!7775743 (= e!4606649 tp!2284926)))

(declare-fun b!7775741 () Bool)

(assert (=> b!7775741 (= e!4606649 tp_is_empty!51931)))

(declare-fun b!7775744 () Bool)

(declare-fun tp!2284925 () Bool)

(declare-fun tp!2284929 () Bool)

(assert (=> b!7775744 (= e!4606649 (and tp!2284925 tp!2284929))))

(declare-fun b!7775742 () Bool)

(declare-fun tp!2284928 () Bool)

(declare-fun tp!2284927 () Bool)

(assert (=> b!7775742 (= e!4606649 (and tp!2284928 tp!2284927))))

(assert (=> b!7775361 (= tp!2284861 e!4606649)))

(assert (= (and b!7775361 (is-ElementMatch!20788 (regTwo!42089 r1!6279))) b!7775741))

(assert (= (and b!7775361 (is-Concat!29633 (regTwo!42089 r1!6279))) b!7775742))

(assert (= (and b!7775361 (is-Star!20788 (regTwo!42089 r1!6279))) b!7775743))

(assert (= (and b!7775361 (is-Union!20788 (regTwo!42089 r1!6279))) b!7775744))

(declare-fun b!7775749 () Bool)

(declare-fun e!4606650 () Bool)

(declare-fun tp!2284931 () Bool)

(assert (=> b!7775749 (= e!4606650 tp!2284931)))

(declare-fun b!7775747 () Bool)

(assert (=> b!7775747 (= e!4606650 tp_is_empty!51931)))

(declare-fun b!7775750 () Bool)

(declare-fun tp!2284930 () Bool)

(declare-fun tp!2284934 () Bool)

(assert (=> b!7775750 (= e!4606650 (and tp!2284930 tp!2284934))))

(declare-fun b!7775748 () Bool)

(declare-fun tp!2284933 () Bool)

(declare-fun tp!2284932 () Bool)

(assert (=> b!7775748 (= e!4606650 (and tp!2284933 tp!2284932))))

(assert (=> b!7775366 (= tp!2284864 e!4606650)))

(assert (= (and b!7775366 (is-ElementMatch!20788 (reg!21117 r2!6217))) b!7775747))

(assert (= (and b!7775366 (is-Concat!29633 (reg!21117 r2!6217))) b!7775748))

(assert (= (and b!7775366 (is-Star!20788 (reg!21117 r2!6217))) b!7775749))

(assert (= (and b!7775366 (is-Union!20788 (reg!21117 r2!6217))) b!7775750))

(declare-fun b!7775755 () Bool)

(declare-fun e!4606653 () Bool)

(declare-fun tp!2284936 () Bool)

(assert (=> b!7775755 (= e!4606653 tp!2284936)))

(declare-fun b!7775753 () Bool)

(assert (=> b!7775753 (= e!4606653 tp_is_empty!51931)))

(declare-fun b!7775756 () Bool)

(declare-fun tp!2284935 () Bool)

(declare-fun tp!2284939 () Bool)

(assert (=> b!7775756 (= e!4606653 (and tp!2284935 tp!2284939))))

(declare-fun b!7775754 () Bool)

(declare-fun tp!2284938 () Bool)

(declare-fun tp!2284937 () Bool)

(assert (=> b!7775754 (= e!4606653 (and tp!2284938 tp!2284937))))

(assert (=> b!7775364 (= tp!2284862 e!4606653)))

(assert (= (and b!7775364 (is-ElementMatch!20788 (regOne!42089 r2!6217))) b!7775753))

(assert (= (and b!7775364 (is-Concat!29633 (regOne!42089 r2!6217))) b!7775754))

(assert (= (and b!7775364 (is-Star!20788 (regOne!42089 r2!6217))) b!7775755))

(assert (= (and b!7775364 (is-Union!20788 (regOne!42089 r2!6217))) b!7775756))

(declare-fun b!7775765 () Bool)

(declare-fun e!4606658 () Bool)

(declare-fun tp!2284941 () Bool)

(assert (=> b!7775765 (= e!4606658 tp!2284941)))

(declare-fun b!7775763 () Bool)

(assert (=> b!7775763 (= e!4606658 tp_is_empty!51931)))

(declare-fun b!7775766 () Bool)

(declare-fun tp!2284940 () Bool)

(declare-fun tp!2284944 () Bool)

(assert (=> b!7775766 (= e!4606658 (and tp!2284940 tp!2284944))))

(declare-fun b!7775764 () Bool)

(declare-fun tp!2284943 () Bool)

(declare-fun tp!2284942 () Bool)

(assert (=> b!7775764 (= e!4606658 (and tp!2284943 tp!2284942))))

(assert (=> b!7775364 (= tp!2284863 e!4606658)))

(assert (= (and b!7775364 (is-ElementMatch!20788 (regTwo!42089 r2!6217))) b!7775763))

(assert (= (and b!7775364 (is-Concat!29633 (regTwo!42089 r2!6217))) b!7775764))

(assert (= (and b!7775364 (is-Star!20788 (regTwo!42089 r2!6217))) b!7775765))

(assert (= (and b!7775364 (is-Union!20788 (regTwo!42089 r2!6217))) b!7775766))

(declare-fun b!7775771 () Bool)

(declare-fun e!4606661 () Bool)

(declare-fun tp!2284946 () Bool)

(assert (=> b!7775771 (= e!4606661 tp!2284946)))

(declare-fun b!7775769 () Bool)

(assert (=> b!7775769 (= e!4606661 tp_is_empty!51931)))

(declare-fun b!7775772 () Bool)

(declare-fun tp!2284945 () Bool)

(declare-fun tp!2284949 () Bool)

(assert (=> b!7775772 (= e!4606661 (and tp!2284945 tp!2284949))))

(declare-fun b!7775770 () Bool)

(declare-fun tp!2284948 () Bool)

(declare-fun tp!2284947 () Bool)

(assert (=> b!7775770 (= e!4606661 (and tp!2284948 tp!2284947))))

(assert (=> b!7775363 (= tp!2284865 e!4606661)))

(assert (= (and b!7775363 (is-ElementMatch!20788 (regOne!42088 r2!6217))) b!7775769))

(assert (= (and b!7775363 (is-Concat!29633 (regOne!42088 r2!6217))) b!7775770))

(assert (= (and b!7775363 (is-Star!20788 (regOne!42088 r2!6217))) b!7775771))

(assert (= (and b!7775363 (is-Union!20788 (regOne!42088 r2!6217))) b!7775772))

(declare-fun b!7775779 () Bool)

(declare-fun e!4606666 () Bool)

(declare-fun tp!2284951 () Bool)

(assert (=> b!7775779 (= e!4606666 tp!2284951)))

(declare-fun b!7775777 () Bool)

(assert (=> b!7775777 (= e!4606666 tp_is_empty!51931)))

(declare-fun b!7775780 () Bool)

(declare-fun tp!2284950 () Bool)

(declare-fun tp!2284954 () Bool)

(assert (=> b!7775780 (= e!4606666 (and tp!2284950 tp!2284954))))

(declare-fun b!7775778 () Bool)

(declare-fun tp!2284953 () Bool)

(declare-fun tp!2284952 () Bool)

(assert (=> b!7775778 (= e!4606666 (and tp!2284953 tp!2284952))))

(assert (=> b!7775363 (= tp!2284866 e!4606666)))

(assert (= (and b!7775363 (is-ElementMatch!20788 (regTwo!42088 r2!6217))) b!7775777))

(assert (= (and b!7775363 (is-Concat!29633 (regTwo!42088 r2!6217))) b!7775778))

(assert (= (and b!7775363 (is-Star!20788 (regTwo!42088 r2!6217))) b!7775779))

(assert (= (and b!7775363 (is-Union!20788 (regTwo!42088 r2!6217))) b!7775780))

(declare-fun b!7775783 () Bool)

(declare-fun e!4606667 () Bool)

(declare-fun tp!2284956 () Bool)

(assert (=> b!7775783 (= e!4606667 tp!2284956)))

(declare-fun b!7775781 () Bool)

(assert (=> b!7775781 (= e!4606667 tp_is_empty!51931)))

(declare-fun b!7775784 () Bool)

(declare-fun tp!2284955 () Bool)

(declare-fun tp!2284959 () Bool)

(assert (=> b!7775784 (= e!4606667 (and tp!2284955 tp!2284959))))

(declare-fun b!7775782 () Bool)

(declare-fun tp!2284958 () Bool)

(declare-fun tp!2284957 () Bool)

(assert (=> b!7775782 (= e!4606667 (and tp!2284958 tp!2284957))))

(assert (=> b!7775358 (= tp!2284860 e!4606667)))

(assert (= (and b!7775358 (is-ElementMatch!20788 (regOne!42088 r1!6279))) b!7775781))

(assert (= (and b!7775358 (is-Concat!29633 (regOne!42088 r1!6279))) b!7775782))

(assert (= (and b!7775358 (is-Star!20788 (regOne!42088 r1!6279))) b!7775783))

(assert (= (and b!7775358 (is-Union!20788 (regOne!42088 r1!6279))) b!7775784))

(declare-fun b!7775787 () Bool)

(declare-fun e!4606668 () Bool)

(declare-fun tp!2284961 () Bool)

(assert (=> b!7775787 (= e!4606668 tp!2284961)))

(declare-fun b!7775785 () Bool)

(assert (=> b!7775785 (= e!4606668 tp_is_empty!51931)))

(declare-fun b!7775788 () Bool)

(declare-fun tp!2284960 () Bool)

(declare-fun tp!2284964 () Bool)

(assert (=> b!7775788 (= e!4606668 (and tp!2284960 tp!2284964))))

(declare-fun b!7775786 () Bool)

(declare-fun tp!2284963 () Bool)

(declare-fun tp!2284962 () Bool)

(assert (=> b!7775786 (= e!4606668 (and tp!2284963 tp!2284962))))

(assert (=> b!7775358 (= tp!2284858 e!4606668)))

(assert (= (and b!7775358 (is-ElementMatch!20788 (regTwo!42088 r1!6279))) b!7775785))

(assert (= (and b!7775358 (is-Concat!29633 (regTwo!42088 r1!6279))) b!7775786))

(assert (= (and b!7775358 (is-Star!20788 (regTwo!42088 r1!6279))) b!7775787))

(assert (= (and b!7775358 (is-Union!20788 (regTwo!42088 r1!6279))) b!7775788))

(push 1)

(assert (not b!7775736))

(assert (not b!7775756))

(assert (not b!7775661))

(assert (not b!7775782))

(assert (not b!7775671))

(assert (not bm!720687))

(assert (not b!7775622))

(assert (not bm!720705))

(assert (not b!7775537))

(assert (not b!7775618))

(assert (not b!7775520))

(assert tp_is_empty!51931)

(assert (not b!7775624))

(assert (not b!7775766))

(assert (not b!7775633))

(assert (not b!7775706))

(assert (not b!7775672))

(assert (not b!7775700))

(assert (not b!7775531))

(assert (not b!7775705))

(assert (not b!7775749))

(assert (not b!7775697))

(assert (not b!7775750))

(assert (not b!7775702))

(assert (not b!7775737))

(assert (not bm!720658))

(assert (not d!2344782))

(assert (not b!7775771))

(assert (not b!7775780))

(assert (not b!7775728))

(assert (not b!7775729))

(assert (not d!2344790))

(assert (not b!7775744))

(assert (not b!7775742))

(assert (not b!7775770))

(assert (not d!2344794))

(assert (not b!7775623))

(assert (not b!7775449))

(assert (not d!2344770))

(assert (not b!7775668))

(assert (not d!2344796))

(assert (not bm!720695))

(assert (not b!7775787))

(assert (not b!7775639))

(assert (not b!7775709))

(assert (not b!7775772))

(assert (not bm!720707))

(assert (not d!2344772))

(assert (not d!2344786))

(assert (not b!7775652))

(assert (not b!7775630))

(assert (not b!7775638))

(assert (not b!7775628))

(assert (not b!7775690))

(assert (not b!7775743))

(assert (not b!7775778))

(assert (not bm!720678))

(assert (not b!7775525))

(assert (not b!7775754))

(assert (not b!7775522))

(assert (not b!7775764))

(assert (not b!7775635))

(assert (not b!7775459))

(assert (not b!7775727))

(assert (not b!7775748))

(assert (not b!7775536))

(assert (not b!7775527))

(assert (not b!7775530))

(assert (not bm!720676))

(assert (not b!7775788))

(assert (not b!7775765))

(assert (not bm!720702))

(assert (not d!2344800))

(assert (not b!7775572))

(assert (not bm!720692))

(assert (not d!2344774))

(assert (not d!2344766))

(assert (not b!7775783))

(assert (not b!7775738))

(assert (not d!2344784))

(assert (not b!7775786))

(assert (not b!7775784))

(assert (not b!7775734))

(assert (not b!7775666))

(assert (not bm!720701))

(assert (not b!7775663))

(assert (not bm!720657))

(assert (not bm!720661))

(assert (not bm!720662))

(assert (not bm!720704))

(assert (not bm!720694))

(assert (not b!7775619))

(assert (not b!7775779))

(assert (not b!7775621))

(assert (not bm!720668))

(assert (not d!2344780))

(assert (not b!7775755))

(assert (not b!7775695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


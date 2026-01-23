; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244236 () Bool)

(assert start!244236)

(declare-fun b!2502466 () Bool)

(declare-fun e!1587030 () Bool)

(declare-datatypes ((C!14992 0))(
  ( (C!14993 (val!9148 Int)) )
))
(declare-datatypes ((Regex!7417 0))(
  ( (ElementMatch!7417 (c!398249 C!14992)) (Concat!12113 (regOne!15346 Regex!7417) (regTwo!15346 Regex!7417)) (EmptyExpr!7417) (Star!7417 (reg!7746 Regex!7417)) (EmptyLang!7417) (Union!7417 (regOne!15347 Regex!7417) (regTwo!15347 Regex!7417)) )
))
(declare-fun lt!895930 () Regex!7417)

(declare-fun validRegex!3043 (Regex!7417) Bool)

(assert (=> b!2502466 (= e!1587030 (validRegex!3043 lt!895930))))

(declare-fun r!27340 () Regex!7417)

(declare-datatypes ((List!29482 0))(
  ( (Nil!29382) (Cons!29382 (h!34802 C!14992) (t!211181 List!29482)) )
))
(declare-fun tl!4068 () List!29482)

(declare-datatypes ((tuple2!29412 0))(
  ( (tuple2!29413 (_1!17248 List!29482) (_2!17248 List!29482)) )
))
(declare-datatypes ((Option!5826 0))(
  ( (None!5825) (Some!5825 (v!31756 tuple2!29412)) )
))
(declare-fun isDefined!4648 (Option!5826) Bool)

(declare-fun findConcatSeparation!848 (Regex!7417 Regex!7417 List!29482 List!29482 List!29482) Option!5826)

(assert (=> b!2502466 (isDefined!4648 (findConcatSeparation!848 lt!895930 (regTwo!15346 r!27340) Nil!29382 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43091 0))(
  ( (Unit!43092) )
))
(declare-fun lt!895934 () Unit!43091)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!130 (Regex!7417 Regex!7417 List!29482) Unit!43091)

(assert (=> b!2502466 (= lt!895934 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!130 lt!895930 (regTwo!15346 r!27340) tl!4068))))

(declare-fun b!2502468 () Bool)

(declare-fun e!1587031 () Bool)

(declare-fun lt!895932 () Regex!7417)

(declare-fun matchR!3420 (Regex!7417 List!29482) Bool)

(assert (=> b!2502468 (= e!1587031 (matchR!3420 lt!895932 tl!4068))))

(declare-fun b!2502469 () Bool)

(declare-fun e!1587029 () Bool)

(declare-fun tp_is_empty!12689 () Bool)

(assert (=> b!2502469 (= e!1587029 tp_is_empty!12689)))

(declare-fun b!2502470 () Bool)

(declare-fun res!1058092 () Bool)

(declare-fun e!1587032 () Bool)

(assert (=> b!2502470 (=> (not res!1058092) (not e!1587032))))

(declare-fun c!14016 () C!14992)

(declare-fun nullable!2334 (Regex!7417) Bool)

(declare-fun derivative!112 (Regex!7417 List!29482) Regex!7417)

(declare-fun derivativeStep!1986 (Regex!7417 C!14992) Regex!7417)

(assert (=> b!2502470 (= res!1058092 (nullable!2334 (derivative!112 (derivativeStep!1986 r!27340 c!14016) tl!4068)))))

(declare-fun b!2502471 () Bool)

(declare-fun res!1058089 () Bool)

(assert (=> b!2502471 (=> (not res!1058089) (not e!1587032))))

(get-info :version)

(assert (=> b!2502471 (= res!1058089 (and (not ((_ is EmptyExpr!7417) r!27340)) (not ((_ is EmptyLang!7417) r!27340)) (not ((_ is ElementMatch!7417) r!27340)) (not ((_ is Union!7417) r!27340)) (not ((_ is Star!7417) r!27340))))))

(declare-fun b!2502472 () Bool)

(declare-fun e!1587028 () Bool)

(declare-fun tp!801098 () Bool)

(assert (=> b!2502472 (= e!1587028 (and tp_is_empty!12689 tp!801098))))

(declare-fun b!2502473 () Bool)

(declare-fun tp!801096 () Bool)

(declare-fun tp!801097 () Bool)

(assert (=> b!2502473 (= e!1587029 (and tp!801096 tp!801097))))

(declare-fun b!2502474 () Bool)

(declare-fun tp!801093 () Bool)

(assert (=> b!2502474 (= e!1587029 tp!801093)))

(declare-fun b!2502475 () Bool)

(declare-fun res!1058093 () Bool)

(assert (=> b!2502475 (=> (not res!1058093) (not e!1587032))))

(assert (=> b!2502475 (= res!1058093 (nullable!2334 (regOne!15346 r!27340)))))

(declare-fun b!2502476 () Bool)

(declare-fun tp!801095 () Bool)

(declare-fun tp!801094 () Bool)

(assert (=> b!2502476 (= e!1587029 (and tp!801095 tp!801094))))

(declare-fun res!1058090 () Bool)

(assert (=> start!244236 (=> (not res!1058090) (not e!1587032))))

(assert (=> start!244236 (= res!1058090 (validRegex!3043 r!27340))))

(assert (=> start!244236 e!1587032))

(assert (=> start!244236 e!1587029))

(assert (=> start!244236 tp_is_empty!12689))

(assert (=> start!244236 e!1587028))

(declare-fun b!2502467 () Bool)

(assert (=> b!2502467 (= e!1587032 (not e!1587030))))

(declare-fun res!1058094 () Bool)

(assert (=> b!2502467 (=> res!1058094 e!1587030)))

(declare-fun lt!895929 () Bool)

(assert (=> b!2502467 (= res!1058094 (not lt!895929))))

(assert (=> b!2502467 e!1587031))

(declare-fun res!1058091 () Bool)

(assert (=> b!2502467 (=> res!1058091 e!1587031)))

(assert (=> b!2502467 (= res!1058091 lt!895929)))

(declare-fun lt!895935 () Regex!7417)

(assert (=> b!2502467 (= lt!895929 (matchR!3420 lt!895935 tl!4068))))

(declare-fun lt!895936 () Unit!43091)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!112 (Regex!7417 Regex!7417 List!29482) Unit!43091)

(assert (=> b!2502467 (= lt!895936 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!112 lt!895935 lt!895932 tl!4068))))

(declare-fun lt!895933 () Regex!7417)

(assert (=> b!2502467 (= (matchR!3420 lt!895933 tl!4068) (matchR!3420 (derivative!112 lt!895933 tl!4068) Nil!29382))))

(declare-fun lt!895931 () Unit!43091)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!66 (Regex!7417 List!29482) Unit!43091)

(assert (=> b!2502467 (= lt!895931 (lemmaMatchRIsSameAsWholeDerivativeAndNil!66 lt!895933 tl!4068))))

(assert (=> b!2502467 (= lt!895933 (Union!7417 lt!895935 lt!895932))))

(assert (=> b!2502467 (= lt!895932 (derivativeStep!1986 (regTwo!15346 r!27340) c!14016))))

(assert (=> b!2502467 (= lt!895935 (Concat!12113 lt!895930 (regTwo!15346 r!27340)))))

(assert (=> b!2502467 (= lt!895930 (derivativeStep!1986 (regOne!15346 r!27340) c!14016))))

(assert (= (and start!244236 res!1058090) b!2502470))

(assert (= (and b!2502470 res!1058092) b!2502471))

(assert (= (and b!2502471 res!1058089) b!2502475))

(assert (= (and b!2502475 res!1058093) b!2502467))

(assert (= (and b!2502467 (not res!1058091)) b!2502468))

(assert (= (and b!2502467 (not res!1058094)) b!2502466))

(assert (= (and start!244236 ((_ is ElementMatch!7417) r!27340)) b!2502469))

(assert (= (and start!244236 ((_ is Concat!12113) r!27340)) b!2502476))

(assert (= (and start!244236 ((_ is Star!7417) r!27340)) b!2502474))

(assert (= (and start!244236 ((_ is Union!7417) r!27340)) b!2502473))

(assert (= (and start!244236 ((_ is Cons!29382) tl!4068)) b!2502472))

(declare-fun m!2864349 () Bool)

(assert (=> b!2502475 m!2864349))

(declare-fun m!2864351 () Bool)

(assert (=> b!2502467 m!2864351))

(declare-fun m!2864353 () Bool)

(assert (=> b!2502467 m!2864353))

(declare-fun m!2864355 () Bool)

(assert (=> b!2502467 m!2864355))

(declare-fun m!2864357 () Bool)

(assert (=> b!2502467 m!2864357))

(declare-fun m!2864359 () Bool)

(assert (=> b!2502467 m!2864359))

(declare-fun m!2864361 () Bool)

(assert (=> b!2502467 m!2864361))

(declare-fun m!2864363 () Bool)

(assert (=> b!2502467 m!2864363))

(assert (=> b!2502467 m!2864359))

(declare-fun m!2864365 () Bool)

(assert (=> b!2502467 m!2864365))

(declare-fun m!2864367 () Bool)

(assert (=> b!2502470 m!2864367))

(assert (=> b!2502470 m!2864367))

(declare-fun m!2864369 () Bool)

(assert (=> b!2502470 m!2864369))

(assert (=> b!2502470 m!2864369))

(declare-fun m!2864371 () Bool)

(assert (=> b!2502470 m!2864371))

(declare-fun m!2864373 () Bool)

(assert (=> b!2502468 m!2864373))

(declare-fun m!2864375 () Bool)

(assert (=> start!244236 m!2864375))

(declare-fun m!2864377 () Bool)

(assert (=> b!2502466 m!2864377))

(declare-fun m!2864379 () Bool)

(assert (=> b!2502466 m!2864379))

(assert (=> b!2502466 m!2864379))

(declare-fun m!2864381 () Bool)

(assert (=> b!2502466 m!2864381))

(declare-fun m!2864383 () Bool)

(assert (=> b!2502466 m!2864383))

(check-sat (not start!244236) (not b!2502473) (not b!2502468) (not b!2502472) (not b!2502476) (not b!2502467) (not b!2502466) (not b!2502474) (not b!2502470) (not b!2502475) tp_is_empty!12689)
(check-sat)
(get-model)

(declare-fun b!2502521 () Bool)

(declare-fun res!1058108 () Bool)

(declare-fun e!1587065 () Bool)

(assert (=> b!2502521 (=> (not res!1058108) (not e!1587065))))

(declare-fun call!154690 () Bool)

(assert (=> b!2502521 (= res!1058108 call!154690)))

(declare-fun e!1587061 () Bool)

(assert (=> b!2502521 (= e!1587061 e!1587065)))

(declare-fun bm!154683 () Bool)

(declare-fun c!398268 () Bool)

(declare-fun c!398267 () Bool)

(declare-fun call!154688 () Bool)

(assert (=> bm!154683 (= call!154688 (validRegex!3043 (ite c!398267 (reg!7746 lt!895930) (ite c!398268 (regOne!15347 lt!895930) (regTwo!15346 lt!895930)))))))

(declare-fun b!2502522 () Bool)

(declare-fun e!1587063 () Bool)

(assert (=> b!2502522 (= e!1587063 call!154688)))

(declare-fun b!2502523 () Bool)

(declare-fun res!1058107 () Bool)

(declare-fun e!1587060 () Bool)

(assert (=> b!2502523 (=> res!1058107 e!1587060)))

(assert (=> b!2502523 (= res!1058107 (not ((_ is Concat!12113) lt!895930)))))

(assert (=> b!2502523 (= e!1587061 e!1587060)))

(declare-fun b!2502524 () Bool)

(declare-fun e!1587064 () Bool)

(declare-fun e!1587066 () Bool)

(assert (=> b!2502524 (= e!1587064 e!1587066)))

(assert (=> b!2502524 (= c!398267 ((_ is Star!7417) lt!895930))))

(declare-fun bm!154684 () Bool)

(declare-fun call!154689 () Bool)

(assert (=> bm!154684 (= call!154689 (validRegex!3043 (ite c!398268 (regTwo!15347 lt!895930) (regOne!15346 lt!895930))))))

(declare-fun b!2502525 () Bool)

(assert (=> b!2502525 (= e!1587066 e!1587063)))

(declare-fun res!1058106 () Bool)

(assert (=> b!2502525 (= res!1058106 (not (nullable!2334 (reg!7746 lt!895930))))))

(assert (=> b!2502525 (=> (not res!1058106) (not e!1587063))))

(declare-fun b!2502526 () Bool)

(declare-fun e!1587062 () Bool)

(assert (=> b!2502526 (= e!1587060 e!1587062)))

(declare-fun res!1058105 () Bool)

(assert (=> b!2502526 (=> (not res!1058105) (not e!1587062))))

(assert (=> b!2502526 (= res!1058105 call!154689)))

(declare-fun d!715610 () Bool)

(declare-fun res!1058109 () Bool)

(assert (=> d!715610 (=> res!1058109 e!1587064)))

(assert (=> d!715610 (= res!1058109 ((_ is ElementMatch!7417) lt!895930))))

(assert (=> d!715610 (= (validRegex!3043 lt!895930) e!1587064)))

(declare-fun bm!154685 () Bool)

(assert (=> bm!154685 (= call!154690 call!154688)))

(declare-fun b!2502527 () Bool)

(assert (=> b!2502527 (= e!1587065 call!154689)))

(declare-fun b!2502528 () Bool)

(assert (=> b!2502528 (= e!1587066 e!1587061)))

(assert (=> b!2502528 (= c!398268 ((_ is Union!7417) lt!895930))))

(declare-fun b!2502529 () Bool)

(assert (=> b!2502529 (= e!1587062 call!154690)))

(assert (= (and d!715610 (not res!1058109)) b!2502524))

(assert (= (and b!2502524 c!398267) b!2502525))

(assert (= (and b!2502524 (not c!398267)) b!2502528))

(assert (= (and b!2502525 res!1058106) b!2502522))

(assert (= (and b!2502528 c!398268) b!2502521))

(assert (= (and b!2502528 (not c!398268)) b!2502523))

(assert (= (and b!2502521 res!1058108) b!2502527))

(assert (= (and b!2502523 (not res!1058107)) b!2502526))

(assert (= (and b!2502526 res!1058105) b!2502529))

(assert (= (or b!2502521 b!2502529) bm!154685))

(assert (= (or b!2502527 b!2502526) bm!154684))

(assert (= (or b!2502522 bm!154685) bm!154683))

(declare-fun m!2864395 () Bool)

(assert (=> bm!154683 m!2864395))

(declare-fun m!2864397 () Bool)

(assert (=> bm!154684 m!2864397))

(declare-fun m!2864399 () Bool)

(assert (=> b!2502525 m!2864399))

(assert (=> b!2502466 d!715610))

(declare-fun d!715614 () Bool)

(declare-fun isEmpty!16842 (Option!5826) Bool)

(assert (=> d!715614 (= (isDefined!4648 (findConcatSeparation!848 lt!895930 (regTwo!15346 r!27340) Nil!29382 tl!4068 tl!4068)) (not (isEmpty!16842 (findConcatSeparation!848 lt!895930 (regTwo!15346 r!27340) Nil!29382 tl!4068 tl!4068))))))

(declare-fun bs!468599 () Bool)

(assert (= bs!468599 d!715614))

(assert (=> bs!468599 m!2864379))

(declare-fun m!2864401 () Bool)

(assert (=> bs!468599 m!2864401))

(assert (=> b!2502466 d!715614))

(declare-fun b!2502585 () Bool)

(declare-fun res!1058138 () Bool)

(declare-fun e!1587103 () Bool)

(assert (=> b!2502585 (=> (not res!1058138) (not e!1587103))))

(declare-fun lt!895950 () Option!5826)

(declare-fun get!9117 (Option!5826) tuple2!29412)

(assert (=> b!2502585 (= res!1058138 (matchR!3420 (regTwo!15346 r!27340) (_2!17248 (get!9117 lt!895950))))))

(declare-fun b!2502586 () Bool)

(declare-fun e!1587106 () Option!5826)

(declare-fun e!1587105 () Option!5826)

(assert (=> b!2502586 (= e!1587106 e!1587105)))

(declare-fun c!398285 () Bool)

(assert (=> b!2502586 (= c!398285 ((_ is Nil!29382) tl!4068))))

(declare-fun b!2502587 () Bool)

(declare-fun e!1587104 () Bool)

(assert (=> b!2502587 (= e!1587104 (matchR!3420 (regTwo!15346 r!27340) tl!4068))))

(declare-fun b!2502588 () Bool)

(declare-fun res!1058136 () Bool)

(assert (=> b!2502588 (=> (not res!1058136) (not e!1587103))))

(assert (=> b!2502588 (= res!1058136 (matchR!3420 lt!895930 (_1!17248 (get!9117 lt!895950))))))

(declare-fun b!2502589 () Bool)

(declare-fun lt!895949 () Unit!43091)

(declare-fun lt!895951 () Unit!43091)

(assert (=> b!2502589 (= lt!895949 lt!895951)))

(declare-fun ++!7179 (List!29482 List!29482) List!29482)

(assert (=> b!2502589 (= (++!7179 (++!7179 Nil!29382 (Cons!29382 (h!34802 tl!4068) Nil!29382)) (t!211181 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!729 (List!29482 C!14992 List!29482 List!29482) Unit!43091)

(assert (=> b!2502589 (= lt!895951 (lemmaMoveElementToOtherListKeepsConcatEq!729 Nil!29382 (h!34802 tl!4068) (t!211181 tl!4068) tl!4068))))

(assert (=> b!2502589 (= e!1587105 (findConcatSeparation!848 lt!895930 (regTwo!15346 r!27340) (++!7179 Nil!29382 (Cons!29382 (h!34802 tl!4068) Nil!29382)) (t!211181 tl!4068) tl!4068))))

(declare-fun b!2502591 () Bool)

(assert (=> b!2502591 (= e!1587105 None!5825)))

(declare-fun b!2502592 () Bool)

(assert (=> b!2502592 (= e!1587106 (Some!5825 (tuple2!29413 Nil!29382 tl!4068)))))

(declare-fun b!2502593 () Bool)

(declare-fun e!1587107 () Bool)

(assert (=> b!2502593 (= e!1587107 (not (isDefined!4648 lt!895950)))))

(declare-fun d!715616 () Bool)

(assert (=> d!715616 e!1587107))

(declare-fun res!1058137 () Bool)

(assert (=> d!715616 (=> res!1058137 e!1587107)))

(assert (=> d!715616 (= res!1058137 e!1587103)))

(declare-fun res!1058139 () Bool)

(assert (=> d!715616 (=> (not res!1058139) (not e!1587103))))

(assert (=> d!715616 (= res!1058139 (isDefined!4648 lt!895950))))

(assert (=> d!715616 (= lt!895950 e!1587106)))

(declare-fun c!398284 () Bool)

(assert (=> d!715616 (= c!398284 e!1587104)))

(declare-fun res!1058135 () Bool)

(assert (=> d!715616 (=> (not res!1058135) (not e!1587104))))

(assert (=> d!715616 (= res!1058135 (matchR!3420 lt!895930 Nil!29382))))

(assert (=> d!715616 (validRegex!3043 lt!895930)))

(assert (=> d!715616 (= (findConcatSeparation!848 lt!895930 (regTwo!15346 r!27340) Nil!29382 tl!4068 tl!4068) lt!895950)))

(declare-fun b!2502590 () Bool)

(assert (=> b!2502590 (= e!1587103 (= (++!7179 (_1!17248 (get!9117 lt!895950)) (_2!17248 (get!9117 lt!895950))) tl!4068))))

(assert (= (and d!715616 res!1058135) b!2502587))

(assert (= (and d!715616 c!398284) b!2502592))

(assert (= (and d!715616 (not c!398284)) b!2502586))

(assert (= (and b!2502586 c!398285) b!2502591))

(assert (= (and b!2502586 (not c!398285)) b!2502589))

(assert (= (and d!715616 res!1058139) b!2502588))

(assert (= (and b!2502588 res!1058136) b!2502585))

(assert (= (and b!2502585 res!1058138) b!2502590))

(assert (= (and d!715616 (not res!1058137)) b!2502593))

(declare-fun m!2864417 () Bool)

(assert (=> b!2502588 m!2864417))

(declare-fun m!2864419 () Bool)

(assert (=> b!2502588 m!2864419))

(declare-fun m!2864421 () Bool)

(assert (=> b!2502589 m!2864421))

(assert (=> b!2502589 m!2864421))

(declare-fun m!2864423 () Bool)

(assert (=> b!2502589 m!2864423))

(declare-fun m!2864425 () Bool)

(assert (=> b!2502589 m!2864425))

(assert (=> b!2502589 m!2864421))

(declare-fun m!2864427 () Bool)

(assert (=> b!2502589 m!2864427))

(assert (=> b!2502585 m!2864417))

(declare-fun m!2864429 () Bool)

(assert (=> b!2502585 m!2864429))

(declare-fun m!2864431 () Bool)

(assert (=> b!2502587 m!2864431))

(assert (=> b!2502590 m!2864417))

(declare-fun m!2864433 () Bool)

(assert (=> b!2502590 m!2864433))

(declare-fun m!2864435 () Bool)

(assert (=> b!2502593 m!2864435))

(assert (=> d!715616 m!2864435))

(declare-fun m!2864437 () Bool)

(assert (=> d!715616 m!2864437))

(assert (=> d!715616 m!2864377))

(assert (=> b!2502466 d!715616))

(declare-fun d!715624 () Bool)

(assert (=> d!715624 (isDefined!4648 (findConcatSeparation!848 lt!895930 (regTwo!15346 r!27340) Nil!29382 tl!4068 tl!4068))))

(declare-fun lt!895960 () Unit!43091)

(declare-fun choose!14781 (Regex!7417 Regex!7417 List!29482) Unit!43091)

(assert (=> d!715624 (= lt!895960 (choose!14781 lt!895930 (regTwo!15346 r!27340) tl!4068))))

(assert (=> d!715624 (validRegex!3043 lt!895930)))

(assert (=> d!715624 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!130 lt!895930 (regTwo!15346 r!27340) tl!4068) lt!895960)))

(declare-fun bs!468601 () Bool)

(assert (= bs!468601 d!715624))

(assert (=> bs!468601 m!2864379))

(assert (=> bs!468601 m!2864379))

(assert (=> bs!468601 m!2864381))

(declare-fun m!2864439 () Bool)

(assert (=> bs!468601 m!2864439))

(assert (=> bs!468601 m!2864377))

(assert (=> b!2502466 d!715624))

(declare-fun d!715626 () Bool)

(declare-fun nullableFct!600 (Regex!7417) Bool)

(assert (=> d!715626 (= (nullable!2334 (derivative!112 (derivativeStep!1986 r!27340 c!14016) tl!4068)) (nullableFct!600 (derivative!112 (derivativeStep!1986 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468602 () Bool)

(assert (= bs!468602 d!715626))

(assert (=> bs!468602 m!2864369))

(declare-fun m!2864441 () Bool)

(assert (=> bs!468602 m!2864441))

(assert (=> b!2502470 d!715626))

(declare-fun d!715628 () Bool)

(declare-fun lt!895966 () Regex!7417)

(assert (=> d!715628 (validRegex!3043 lt!895966)))

(declare-fun e!1587125 () Regex!7417)

(assert (=> d!715628 (= lt!895966 e!1587125)))

(declare-fun c!398294 () Bool)

(assert (=> d!715628 (= c!398294 ((_ is Cons!29382) tl!4068))))

(assert (=> d!715628 (validRegex!3043 (derivativeStep!1986 r!27340 c!14016))))

(assert (=> d!715628 (= (derivative!112 (derivativeStep!1986 r!27340 c!14016) tl!4068) lt!895966)))

(declare-fun b!2502625 () Bool)

(assert (=> b!2502625 (= e!1587125 (derivative!112 (derivativeStep!1986 (derivativeStep!1986 r!27340 c!14016) (h!34802 tl!4068)) (t!211181 tl!4068)))))

(declare-fun b!2502626 () Bool)

(assert (=> b!2502626 (= e!1587125 (derivativeStep!1986 r!27340 c!14016))))

(assert (= (and d!715628 c!398294) b!2502625))

(assert (= (and d!715628 (not c!398294)) b!2502626))

(declare-fun m!2864465 () Bool)

(assert (=> d!715628 m!2864465))

(assert (=> d!715628 m!2864367))

(declare-fun m!2864467 () Bool)

(assert (=> d!715628 m!2864467))

(assert (=> b!2502625 m!2864367))

(declare-fun m!2864469 () Bool)

(assert (=> b!2502625 m!2864469))

(assert (=> b!2502625 m!2864469))

(declare-fun m!2864471 () Bool)

(assert (=> b!2502625 m!2864471))

(assert (=> b!2502470 d!715628))

(declare-fun call!154726 () Regex!7417)

(declare-fun bm!154718 () Bool)

(declare-fun c!398316 () Bool)

(declare-fun c!398314 () Bool)

(assert (=> bm!154718 (= call!154726 (derivativeStep!1986 (ite c!398316 (regTwo!15347 r!27340) (ite c!398314 (reg!7746 r!27340) (regOne!15346 r!27340))) c!14016))))

(declare-fun b!2502684 () Bool)

(assert (=> b!2502684 (= c!398316 ((_ is Union!7417) r!27340))))

(declare-fun e!1587158 () Regex!7417)

(declare-fun e!1587162 () Regex!7417)

(assert (=> b!2502684 (= e!1587158 e!1587162)))

(declare-fun b!2502685 () Bool)

(declare-fun e!1587157 () Regex!7417)

(declare-fun call!154725 () Regex!7417)

(assert (=> b!2502685 (= e!1587157 (Concat!12113 call!154725 r!27340))))

(declare-fun call!154723 () Regex!7417)

(declare-fun bm!154719 () Bool)

(assert (=> bm!154719 (= call!154723 (derivativeStep!1986 (ite c!398316 (regOne!15347 r!27340) (regTwo!15346 r!27340)) c!14016))))

(declare-fun d!715632 () Bool)

(declare-fun lt!895974 () Regex!7417)

(assert (=> d!715632 (validRegex!3043 lt!895974)))

(declare-fun e!1587165 () Regex!7417)

(assert (=> d!715632 (= lt!895974 e!1587165)))

(declare-fun c!398320 () Bool)

(assert (=> d!715632 (= c!398320 (or ((_ is EmptyExpr!7417) r!27340) ((_ is EmptyLang!7417) r!27340)))))

(assert (=> d!715632 (validRegex!3043 r!27340)))

(assert (=> d!715632 (= (derivativeStep!1986 r!27340 c!14016) lt!895974)))

(declare-fun b!2502686 () Bool)

(assert (=> b!2502686 (= e!1587165 EmptyLang!7417)))

(declare-fun b!2502687 () Bool)

(declare-fun c!398313 () Bool)

(assert (=> b!2502687 (= c!398313 (nullable!2334 (regOne!15346 r!27340)))))

(declare-fun e!1587160 () Regex!7417)

(assert (=> b!2502687 (= e!1587157 e!1587160)))

(declare-fun bm!154720 () Bool)

(declare-fun call!154727 () Regex!7417)

(assert (=> bm!154720 (= call!154727 call!154725)))

(declare-fun bm!154721 () Bool)

(assert (=> bm!154721 (= call!154725 call!154726)))

(declare-fun b!2502691 () Bool)

(assert (=> b!2502691 (= e!1587158 (ite (= c!14016 (c!398249 r!27340)) EmptyExpr!7417 EmptyLang!7417))))

(declare-fun b!2502692 () Bool)

(assert (=> b!2502692 (= e!1587160 (Union!7417 (Concat!12113 call!154727 (regTwo!15346 r!27340)) call!154723))))

(declare-fun b!2502694 () Bool)

(assert (=> b!2502694 (= e!1587162 (Union!7417 call!154723 call!154726))))

(declare-fun b!2502696 () Bool)

(assert (=> b!2502696 (= e!1587162 e!1587157)))

(assert (=> b!2502696 (= c!398314 ((_ is Star!7417) r!27340))))

(declare-fun b!2502698 () Bool)

(assert (=> b!2502698 (= e!1587165 e!1587158)))

(declare-fun c!398318 () Bool)

(assert (=> b!2502698 (= c!398318 ((_ is ElementMatch!7417) r!27340))))

(declare-fun b!2502700 () Bool)

(assert (=> b!2502700 (= e!1587160 (Union!7417 (Concat!12113 call!154727 (regTwo!15346 r!27340)) EmptyLang!7417))))

(assert (= (and d!715632 c!398320) b!2502686))

(assert (= (and d!715632 (not c!398320)) b!2502698))

(assert (= (and b!2502698 c!398318) b!2502691))

(assert (= (and b!2502698 (not c!398318)) b!2502684))

(assert (= (and b!2502684 c!398316) b!2502694))

(assert (= (and b!2502684 (not c!398316)) b!2502696))

(assert (= (and b!2502696 c!398314) b!2502685))

(assert (= (and b!2502696 (not c!398314)) b!2502687))

(assert (= (and b!2502687 c!398313) b!2502692))

(assert (= (and b!2502687 (not c!398313)) b!2502700))

(assert (= (or b!2502692 b!2502700) bm!154720))

(assert (= (or b!2502685 bm!154720) bm!154721))

(assert (= (or b!2502694 bm!154721) bm!154718))

(assert (= (or b!2502694 b!2502692) bm!154719))

(declare-fun m!2864485 () Bool)

(assert (=> bm!154718 m!2864485))

(declare-fun m!2864491 () Bool)

(assert (=> bm!154719 m!2864491))

(declare-fun m!2864495 () Bool)

(assert (=> d!715632 m!2864495))

(assert (=> d!715632 m!2864375))

(assert (=> b!2502687 m!2864349))

(assert (=> b!2502470 d!715632))

(declare-fun d!715638 () Bool)

(assert (=> d!715638 (= (nullable!2334 (regOne!15346 r!27340)) (nullableFct!600 (regOne!15346 r!27340)))))

(declare-fun bs!468604 () Bool)

(assert (= bs!468604 d!715638))

(declare-fun m!2864503 () Bool)

(assert (=> bs!468604 m!2864503))

(assert (=> b!2502475 d!715638))

(declare-fun b!2502841 () Bool)

(declare-fun e!1587234 () Bool)

(declare-fun lt!895990 () Bool)

(declare-fun call!154741 () Bool)

(assert (=> b!2502841 (= e!1587234 (= lt!895990 call!154741))))

(declare-fun d!715642 () Bool)

(assert (=> d!715642 e!1587234))

(declare-fun c!398347 () Bool)

(assert (=> d!715642 (= c!398347 ((_ is EmptyExpr!7417) lt!895932))))

(declare-fun e!1587233 () Bool)

(assert (=> d!715642 (= lt!895990 e!1587233)))

(declare-fun c!398348 () Bool)

(declare-fun isEmpty!16844 (List!29482) Bool)

(assert (=> d!715642 (= c!398348 (isEmpty!16844 tl!4068))))

(assert (=> d!715642 (validRegex!3043 lt!895932)))

(assert (=> d!715642 (= (matchR!3420 lt!895932 tl!4068) lt!895990)))

(declare-fun b!2502842 () Bool)

(declare-fun e!1587237 () Bool)

(assert (=> b!2502842 (= e!1587234 e!1587237)))

(declare-fun c!398349 () Bool)

(assert (=> b!2502842 (= c!398349 ((_ is EmptyLang!7417) lt!895932))))

(declare-fun b!2502843 () Bool)

(declare-fun e!1587232 () Bool)

(declare-fun head!5704 (List!29482) C!14992)

(assert (=> b!2502843 (= e!1587232 (= (head!5704 tl!4068) (c!398249 lt!895932)))))

(declare-fun b!2502844 () Bool)

(declare-fun res!1058236 () Bool)

(declare-fun e!1587231 () Bool)

(assert (=> b!2502844 (=> res!1058236 e!1587231)))

(declare-fun tail!3981 (List!29482) List!29482)

(assert (=> b!2502844 (= res!1058236 (not (isEmpty!16844 (tail!3981 tl!4068))))))

(declare-fun b!2502845 () Bool)

(declare-fun res!1058235 () Bool)

(declare-fun e!1587235 () Bool)

(assert (=> b!2502845 (=> res!1058235 e!1587235)))

(assert (=> b!2502845 (= res!1058235 (not ((_ is ElementMatch!7417) lt!895932)))))

(assert (=> b!2502845 (= e!1587237 e!1587235)))

(declare-fun b!2502846 () Bool)

(assert (=> b!2502846 (= e!1587231 (not (= (head!5704 tl!4068) (c!398249 lt!895932))))))

(declare-fun b!2502847 () Bool)

(declare-fun res!1058232 () Bool)

(assert (=> b!2502847 (=> (not res!1058232) (not e!1587232))))

(assert (=> b!2502847 (= res!1058232 (isEmpty!16844 (tail!3981 tl!4068)))))

(declare-fun b!2502848 () Bool)

(declare-fun e!1587236 () Bool)

(assert (=> b!2502848 (= e!1587236 e!1587231)))

(declare-fun res!1058230 () Bool)

(assert (=> b!2502848 (=> res!1058230 e!1587231)))

(assert (=> b!2502848 (= res!1058230 call!154741)))

(declare-fun b!2502849 () Bool)

(declare-fun res!1058233 () Bool)

(assert (=> b!2502849 (=> (not res!1058233) (not e!1587232))))

(assert (=> b!2502849 (= res!1058233 (not call!154741))))

(declare-fun b!2502850 () Bool)

(assert (=> b!2502850 (= e!1587233 (nullable!2334 lt!895932))))

(declare-fun bm!154736 () Bool)

(assert (=> bm!154736 (= call!154741 (isEmpty!16844 tl!4068))))

(declare-fun b!2502851 () Bool)

(assert (=> b!2502851 (= e!1587233 (matchR!3420 (derivativeStep!1986 lt!895932 (head!5704 tl!4068)) (tail!3981 tl!4068)))))

(declare-fun b!2502852 () Bool)

(declare-fun res!1058234 () Bool)

(assert (=> b!2502852 (=> res!1058234 e!1587235)))

(assert (=> b!2502852 (= res!1058234 e!1587232)))

(declare-fun res!1058231 () Bool)

(assert (=> b!2502852 (=> (not res!1058231) (not e!1587232))))

(assert (=> b!2502852 (= res!1058231 lt!895990)))

(declare-fun b!2502853 () Bool)

(assert (=> b!2502853 (= e!1587237 (not lt!895990))))

(declare-fun b!2502854 () Bool)

(assert (=> b!2502854 (= e!1587235 e!1587236)))

(declare-fun res!1058237 () Bool)

(assert (=> b!2502854 (=> (not res!1058237) (not e!1587236))))

(assert (=> b!2502854 (= res!1058237 (not lt!895990))))

(assert (= (and d!715642 c!398348) b!2502850))

(assert (= (and d!715642 (not c!398348)) b!2502851))

(assert (= (and d!715642 c!398347) b!2502841))

(assert (= (and d!715642 (not c!398347)) b!2502842))

(assert (= (and b!2502842 c!398349) b!2502853))

(assert (= (and b!2502842 (not c!398349)) b!2502845))

(assert (= (and b!2502845 (not res!1058235)) b!2502852))

(assert (= (and b!2502852 res!1058231) b!2502849))

(assert (= (and b!2502849 res!1058233) b!2502847))

(assert (= (and b!2502847 res!1058232) b!2502843))

(assert (= (and b!2502852 (not res!1058234)) b!2502854))

(assert (= (and b!2502854 res!1058237) b!2502848))

(assert (= (and b!2502848 (not res!1058230)) b!2502844))

(assert (= (and b!2502844 (not res!1058236)) b!2502846))

(assert (= (or b!2502841 b!2502849 b!2502848) bm!154736))

(declare-fun m!2864569 () Bool)

(assert (=> b!2502851 m!2864569))

(assert (=> b!2502851 m!2864569))

(declare-fun m!2864571 () Bool)

(assert (=> b!2502851 m!2864571))

(declare-fun m!2864573 () Bool)

(assert (=> b!2502851 m!2864573))

(assert (=> b!2502851 m!2864571))

(assert (=> b!2502851 m!2864573))

(declare-fun m!2864575 () Bool)

(assert (=> b!2502851 m!2864575))

(assert (=> b!2502847 m!2864573))

(assert (=> b!2502847 m!2864573))

(declare-fun m!2864577 () Bool)

(assert (=> b!2502847 m!2864577))

(declare-fun m!2864579 () Bool)

(assert (=> d!715642 m!2864579))

(declare-fun m!2864581 () Bool)

(assert (=> d!715642 m!2864581))

(assert (=> b!2502844 m!2864573))

(assert (=> b!2502844 m!2864573))

(assert (=> b!2502844 m!2864577))

(assert (=> b!2502846 m!2864569))

(declare-fun m!2864583 () Bool)

(assert (=> b!2502850 m!2864583))

(assert (=> b!2502843 m!2864569))

(assert (=> bm!154736 m!2864579))

(assert (=> b!2502468 d!715642))

(declare-fun b!2502855 () Bool)

(declare-fun res!1058241 () Bool)

(declare-fun e!1587243 () Bool)

(assert (=> b!2502855 (=> (not res!1058241) (not e!1587243))))

(declare-fun call!154744 () Bool)

(assert (=> b!2502855 (= res!1058241 call!154744)))

(declare-fun e!1587239 () Bool)

(assert (=> b!2502855 (= e!1587239 e!1587243)))

(declare-fun call!154742 () Bool)

(declare-fun c!398350 () Bool)

(declare-fun c!398351 () Bool)

(declare-fun bm!154737 () Bool)

(assert (=> bm!154737 (= call!154742 (validRegex!3043 (ite c!398350 (reg!7746 r!27340) (ite c!398351 (regOne!15347 r!27340) (regTwo!15346 r!27340)))))))

(declare-fun b!2502856 () Bool)

(declare-fun e!1587241 () Bool)

(assert (=> b!2502856 (= e!1587241 call!154742)))

(declare-fun b!2502857 () Bool)

(declare-fun res!1058240 () Bool)

(declare-fun e!1587238 () Bool)

(assert (=> b!2502857 (=> res!1058240 e!1587238)))

(assert (=> b!2502857 (= res!1058240 (not ((_ is Concat!12113) r!27340)))))

(assert (=> b!2502857 (= e!1587239 e!1587238)))

(declare-fun b!2502858 () Bool)

(declare-fun e!1587242 () Bool)

(declare-fun e!1587244 () Bool)

(assert (=> b!2502858 (= e!1587242 e!1587244)))

(assert (=> b!2502858 (= c!398350 ((_ is Star!7417) r!27340))))

(declare-fun bm!154738 () Bool)

(declare-fun call!154743 () Bool)

(assert (=> bm!154738 (= call!154743 (validRegex!3043 (ite c!398351 (regTwo!15347 r!27340) (regOne!15346 r!27340))))))

(declare-fun b!2502859 () Bool)

(assert (=> b!2502859 (= e!1587244 e!1587241)))

(declare-fun res!1058239 () Bool)

(assert (=> b!2502859 (= res!1058239 (not (nullable!2334 (reg!7746 r!27340))))))

(assert (=> b!2502859 (=> (not res!1058239) (not e!1587241))))

(declare-fun b!2502860 () Bool)

(declare-fun e!1587240 () Bool)

(assert (=> b!2502860 (= e!1587238 e!1587240)))

(declare-fun res!1058238 () Bool)

(assert (=> b!2502860 (=> (not res!1058238) (not e!1587240))))

(assert (=> b!2502860 (= res!1058238 call!154743)))

(declare-fun d!715660 () Bool)

(declare-fun res!1058242 () Bool)

(assert (=> d!715660 (=> res!1058242 e!1587242)))

(assert (=> d!715660 (= res!1058242 ((_ is ElementMatch!7417) r!27340))))

(assert (=> d!715660 (= (validRegex!3043 r!27340) e!1587242)))

(declare-fun bm!154739 () Bool)

(assert (=> bm!154739 (= call!154744 call!154742)))

(declare-fun b!2502861 () Bool)

(assert (=> b!2502861 (= e!1587243 call!154743)))

(declare-fun b!2502862 () Bool)

(assert (=> b!2502862 (= e!1587244 e!1587239)))

(assert (=> b!2502862 (= c!398351 ((_ is Union!7417) r!27340))))

(declare-fun b!2502863 () Bool)

(assert (=> b!2502863 (= e!1587240 call!154744)))

(assert (= (and d!715660 (not res!1058242)) b!2502858))

(assert (= (and b!2502858 c!398350) b!2502859))

(assert (= (and b!2502858 (not c!398350)) b!2502862))

(assert (= (and b!2502859 res!1058239) b!2502856))

(assert (= (and b!2502862 c!398351) b!2502855))

(assert (= (and b!2502862 (not c!398351)) b!2502857))

(assert (= (and b!2502855 res!1058241) b!2502861))

(assert (= (and b!2502857 (not res!1058240)) b!2502860))

(assert (= (and b!2502860 res!1058238) b!2502863))

(assert (= (or b!2502855 b!2502863) bm!154739))

(assert (= (or b!2502861 b!2502860) bm!154738))

(assert (= (or b!2502856 bm!154739) bm!154737))

(declare-fun m!2864585 () Bool)

(assert (=> bm!154737 m!2864585))

(declare-fun m!2864587 () Bool)

(assert (=> bm!154738 m!2864587))

(declare-fun m!2864589 () Bool)

(assert (=> b!2502859 m!2864589))

(assert (=> start!244236 d!715660))

(declare-fun d!715662 () Bool)

(declare-fun e!1587249 () Bool)

(assert (=> d!715662 e!1587249))

(declare-fun res!1058247 () Bool)

(assert (=> d!715662 (=> res!1058247 e!1587249)))

(assert (=> d!715662 (= res!1058247 (matchR!3420 lt!895935 tl!4068))))

(declare-fun lt!895993 () Unit!43091)

(declare-fun choose!14783 (Regex!7417 Regex!7417 List!29482) Unit!43091)

(assert (=> d!715662 (= lt!895993 (choose!14783 lt!895935 lt!895932 tl!4068))))

(declare-fun e!1587250 () Bool)

(assert (=> d!715662 e!1587250))

(declare-fun res!1058248 () Bool)

(assert (=> d!715662 (=> (not res!1058248) (not e!1587250))))

(assert (=> d!715662 (= res!1058248 (validRegex!3043 lt!895935))))

(assert (=> d!715662 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!112 lt!895935 lt!895932 tl!4068) lt!895993)))

(declare-fun b!2502868 () Bool)

(assert (=> b!2502868 (= e!1587250 (validRegex!3043 lt!895932))))

(declare-fun b!2502869 () Bool)

(assert (=> b!2502869 (= e!1587249 (matchR!3420 lt!895932 tl!4068))))

(assert (= (and d!715662 res!1058248) b!2502868))

(assert (= (and d!715662 (not res!1058247)) b!2502869))

(assert (=> d!715662 m!2864353))

(declare-fun m!2864591 () Bool)

(assert (=> d!715662 m!2864591))

(declare-fun m!2864593 () Bool)

(assert (=> d!715662 m!2864593))

(assert (=> b!2502868 m!2864581))

(assert (=> b!2502869 m!2864373))

(assert (=> b!2502467 d!715662))

(declare-fun b!2502870 () Bool)

(declare-fun e!1587254 () Bool)

(declare-fun lt!895994 () Bool)

(declare-fun call!154745 () Bool)

(assert (=> b!2502870 (= e!1587254 (= lt!895994 call!154745))))

(declare-fun d!715664 () Bool)

(assert (=> d!715664 e!1587254))

(declare-fun c!398352 () Bool)

(assert (=> d!715664 (= c!398352 ((_ is EmptyExpr!7417) (derivative!112 lt!895933 tl!4068)))))

(declare-fun e!1587253 () Bool)

(assert (=> d!715664 (= lt!895994 e!1587253)))

(declare-fun c!398353 () Bool)

(assert (=> d!715664 (= c!398353 (isEmpty!16844 Nil!29382))))

(assert (=> d!715664 (validRegex!3043 (derivative!112 lt!895933 tl!4068))))

(assert (=> d!715664 (= (matchR!3420 (derivative!112 lt!895933 tl!4068) Nil!29382) lt!895994)))

(declare-fun b!2502871 () Bool)

(declare-fun e!1587257 () Bool)

(assert (=> b!2502871 (= e!1587254 e!1587257)))

(declare-fun c!398354 () Bool)

(assert (=> b!2502871 (= c!398354 ((_ is EmptyLang!7417) (derivative!112 lt!895933 tl!4068)))))

(declare-fun b!2502872 () Bool)

(declare-fun e!1587252 () Bool)

(assert (=> b!2502872 (= e!1587252 (= (head!5704 Nil!29382) (c!398249 (derivative!112 lt!895933 tl!4068))))))

(declare-fun b!2502873 () Bool)

(declare-fun res!1058255 () Bool)

(declare-fun e!1587251 () Bool)

(assert (=> b!2502873 (=> res!1058255 e!1587251)))

(assert (=> b!2502873 (= res!1058255 (not (isEmpty!16844 (tail!3981 Nil!29382))))))

(declare-fun b!2502874 () Bool)

(declare-fun res!1058254 () Bool)

(declare-fun e!1587255 () Bool)

(assert (=> b!2502874 (=> res!1058254 e!1587255)))

(assert (=> b!2502874 (= res!1058254 (not ((_ is ElementMatch!7417) (derivative!112 lt!895933 tl!4068))))))

(assert (=> b!2502874 (= e!1587257 e!1587255)))

(declare-fun b!2502875 () Bool)

(assert (=> b!2502875 (= e!1587251 (not (= (head!5704 Nil!29382) (c!398249 (derivative!112 lt!895933 tl!4068)))))))

(declare-fun b!2502876 () Bool)

(declare-fun res!1058251 () Bool)

(assert (=> b!2502876 (=> (not res!1058251) (not e!1587252))))

(assert (=> b!2502876 (= res!1058251 (isEmpty!16844 (tail!3981 Nil!29382)))))

(declare-fun b!2502877 () Bool)

(declare-fun e!1587256 () Bool)

(assert (=> b!2502877 (= e!1587256 e!1587251)))

(declare-fun res!1058249 () Bool)

(assert (=> b!2502877 (=> res!1058249 e!1587251)))

(assert (=> b!2502877 (= res!1058249 call!154745)))

(declare-fun b!2502878 () Bool)

(declare-fun res!1058252 () Bool)

(assert (=> b!2502878 (=> (not res!1058252) (not e!1587252))))

(assert (=> b!2502878 (= res!1058252 (not call!154745))))

(declare-fun b!2502879 () Bool)

(assert (=> b!2502879 (= e!1587253 (nullable!2334 (derivative!112 lt!895933 tl!4068)))))

(declare-fun bm!154740 () Bool)

(assert (=> bm!154740 (= call!154745 (isEmpty!16844 Nil!29382))))

(declare-fun b!2502880 () Bool)

(assert (=> b!2502880 (= e!1587253 (matchR!3420 (derivativeStep!1986 (derivative!112 lt!895933 tl!4068) (head!5704 Nil!29382)) (tail!3981 Nil!29382)))))

(declare-fun b!2502881 () Bool)

(declare-fun res!1058253 () Bool)

(assert (=> b!2502881 (=> res!1058253 e!1587255)))

(assert (=> b!2502881 (= res!1058253 e!1587252)))

(declare-fun res!1058250 () Bool)

(assert (=> b!2502881 (=> (not res!1058250) (not e!1587252))))

(assert (=> b!2502881 (= res!1058250 lt!895994)))

(declare-fun b!2502882 () Bool)

(assert (=> b!2502882 (= e!1587257 (not lt!895994))))

(declare-fun b!2502883 () Bool)

(assert (=> b!2502883 (= e!1587255 e!1587256)))

(declare-fun res!1058256 () Bool)

(assert (=> b!2502883 (=> (not res!1058256) (not e!1587256))))

(assert (=> b!2502883 (= res!1058256 (not lt!895994))))

(assert (= (and d!715664 c!398353) b!2502879))

(assert (= (and d!715664 (not c!398353)) b!2502880))

(assert (= (and d!715664 c!398352) b!2502870))

(assert (= (and d!715664 (not c!398352)) b!2502871))

(assert (= (and b!2502871 c!398354) b!2502882))

(assert (= (and b!2502871 (not c!398354)) b!2502874))

(assert (= (and b!2502874 (not res!1058254)) b!2502881))

(assert (= (and b!2502881 res!1058250) b!2502878))

(assert (= (and b!2502878 res!1058252) b!2502876))

(assert (= (and b!2502876 res!1058251) b!2502872))

(assert (= (and b!2502881 (not res!1058253)) b!2502883))

(assert (= (and b!2502883 res!1058256) b!2502877))

(assert (= (and b!2502877 (not res!1058249)) b!2502873))

(assert (= (and b!2502873 (not res!1058255)) b!2502875))

(assert (= (or b!2502870 b!2502878 b!2502877) bm!154740))

(declare-fun m!2864595 () Bool)

(assert (=> b!2502880 m!2864595))

(assert (=> b!2502880 m!2864359))

(assert (=> b!2502880 m!2864595))

(declare-fun m!2864597 () Bool)

(assert (=> b!2502880 m!2864597))

(declare-fun m!2864599 () Bool)

(assert (=> b!2502880 m!2864599))

(assert (=> b!2502880 m!2864597))

(assert (=> b!2502880 m!2864599))

(declare-fun m!2864601 () Bool)

(assert (=> b!2502880 m!2864601))

(assert (=> b!2502876 m!2864599))

(assert (=> b!2502876 m!2864599))

(declare-fun m!2864603 () Bool)

(assert (=> b!2502876 m!2864603))

(declare-fun m!2864605 () Bool)

(assert (=> d!715664 m!2864605))

(assert (=> d!715664 m!2864359))

(declare-fun m!2864607 () Bool)

(assert (=> d!715664 m!2864607))

(assert (=> b!2502873 m!2864599))

(assert (=> b!2502873 m!2864599))

(assert (=> b!2502873 m!2864603))

(assert (=> b!2502875 m!2864595))

(assert (=> b!2502879 m!2864359))

(declare-fun m!2864609 () Bool)

(assert (=> b!2502879 m!2864609))

(assert (=> b!2502872 m!2864595))

(assert (=> bm!154740 m!2864605))

(assert (=> b!2502467 d!715664))

(declare-fun d!715666 () Bool)

(assert (=> d!715666 (= (matchR!3420 lt!895933 tl!4068) (matchR!3420 (derivative!112 lt!895933 tl!4068) Nil!29382))))

(declare-fun lt!895997 () Unit!43091)

(declare-fun choose!14784 (Regex!7417 List!29482) Unit!43091)

(assert (=> d!715666 (= lt!895997 (choose!14784 lt!895933 tl!4068))))

(assert (=> d!715666 (validRegex!3043 lt!895933)))

(assert (=> d!715666 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!66 lt!895933 tl!4068) lt!895997)))

(declare-fun bs!468607 () Bool)

(assert (= bs!468607 d!715666))

(assert (=> bs!468607 m!2864351))

(declare-fun m!2864611 () Bool)

(assert (=> bs!468607 m!2864611))

(assert (=> bs!468607 m!2864359))

(assert (=> bs!468607 m!2864359))

(assert (=> bs!468607 m!2864361))

(declare-fun m!2864613 () Bool)

(assert (=> bs!468607 m!2864613))

(assert (=> b!2502467 d!715666))

(declare-fun b!2502884 () Bool)

(declare-fun e!1587261 () Bool)

(declare-fun lt!895998 () Bool)

(declare-fun call!154746 () Bool)

(assert (=> b!2502884 (= e!1587261 (= lt!895998 call!154746))))

(declare-fun d!715668 () Bool)

(assert (=> d!715668 e!1587261))

(declare-fun c!398355 () Bool)

(assert (=> d!715668 (= c!398355 ((_ is EmptyExpr!7417) lt!895933))))

(declare-fun e!1587260 () Bool)

(assert (=> d!715668 (= lt!895998 e!1587260)))

(declare-fun c!398356 () Bool)

(assert (=> d!715668 (= c!398356 (isEmpty!16844 tl!4068))))

(assert (=> d!715668 (validRegex!3043 lt!895933)))

(assert (=> d!715668 (= (matchR!3420 lt!895933 tl!4068) lt!895998)))

(declare-fun b!2502885 () Bool)

(declare-fun e!1587264 () Bool)

(assert (=> b!2502885 (= e!1587261 e!1587264)))

(declare-fun c!398357 () Bool)

(assert (=> b!2502885 (= c!398357 ((_ is EmptyLang!7417) lt!895933))))

(declare-fun b!2502886 () Bool)

(declare-fun e!1587259 () Bool)

(assert (=> b!2502886 (= e!1587259 (= (head!5704 tl!4068) (c!398249 lt!895933)))))

(declare-fun b!2502887 () Bool)

(declare-fun res!1058263 () Bool)

(declare-fun e!1587258 () Bool)

(assert (=> b!2502887 (=> res!1058263 e!1587258)))

(assert (=> b!2502887 (= res!1058263 (not (isEmpty!16844 (tail!3981 tl!4068))))))

(declare-fun b!2502888 () Bool)

(declare-fun res!1058262 () Bool)

(declare-fun e!1587262 () Bool)

(assert (=> b!2502888 (=> res!1058262 e!1587262)))

(assert (=> b!2502888 (= res!1058262 (not ((_ is ElementMatch!7417) lt!895933)))))

(assert (=> b!2502888 (= e!1587264 e!1587262)))

(declare-fun b!2502889 () Bool)

(assert (=> b!2502889 (= e!1587258 (not (= (head!5704 tl!4068) (c!398249 lt!895933))))))

(declare-fun b!2502890 () Bool)

(declare-fun res!1058259 () Bool)

(assert (=> b!2502890 (=> (not res!1058259) (not e!1587259))))

(assert (=> b!2502890 (= res!1058259 (isEmpty!16844 (tail!3981 tl!4068)))))

(declare-fun b!2502891 () Bool)

(declare-fun e!1587263 () Bool)

(assert (=> b!2502891 (= e!1587263 e!1587258)))

(declare-fun res!1058257 () Bool)

(assert (=> b!2502891 (=> res!1058257 e!1587258)))

(assert (=> b!2502891 (= res!1058257 call!154746)))

(declare-fun b!2502892 () Bool)

(declare-fun res!1058260 () Bool)

(assert (=> b!2502892 (=> (not res!1058260) (not e!1587259))))

(assert (=> b!2502892 (= res!1058260 (not call!154746))))

(declare-fun b!2502893 () Bool)

(assert (=> b!2502893 (= e!1587260 (nullable!2334 lt!895933))))

(declare-fun bm!154741 () Bool)

(assert (=> bm!154741 (= call!154746 (isEmpty!16844 tl!4068))))

(declare-fun b!2502894 () Bool)

(assert (=> b!2502894 (= e!1587260 (matchR!3420 (derivativeStep!1986 lt!895933 (head!5704 tl!4068)) (tail!3981 tl!4068)))))

(declare-fun b!2502895 () Bool)

(declare-fun res!1058261 () Bool)

(assert (=> b!2502895 (=> res!1058261 e!1587262)))

(assert (=> b!2502895 (= res!1058261 e!1587259)))

(declare-fun res!1058258 () Bool)

(assert (=> b!2502895 (=> (not res!1058258) (not e!1587259))))

(assert (=> b!2502895 (= res!1058258 lt!895998)))

(declare-fun b!2502896 () Bool)

(assert (=> b!2502896 (= e!1587264 (not lt!895998))))

(declare-fun b!2502897 () Bool)

(assert (=> b!2502897 (= e!1587262 e!1587263)))

(declare-fun res!1058264 () Bool)

(assert (=> b!2502897 (=> (not res!1058264) (not e!1587263))))

(assert (=> b!2502897 (= res!1058264 (not lt!895998))))

(assert (= (and d!715668 c!398356) b!2502893))

(assert (= (and d!715668 (not c!398356)) b!2502894))

(assert (= (and d!715668 c!398355) b!2502884))

(assert (= (and d!715668 (not c!398355)) b!2502885))

(assert (= (and b!2502885 c!398357) b!2502896))

(assert (= (and b!2502885 (not c!398357)) b!2502888))

(assert (= (and b!2502888 (not res!1058262)) b!2502895))

(assert (= (and b!2502895 res!1058258) b!2502892))

(assert (= (and b!2502892 res!1058260) b!2502890))

(assert (= (and b!2502890 res!1058259) b!2502886))

(assert (= (and b!2502895 (not res!1058261)) b!2502897))

(assert (= (and b!2502897 res!1058264) b!2502891))

(assert (= (and b!2502891 (not res!1058257)) b!2502887))

(assert (= (and b!2502887 (not res!1058263)) b!2502889))

(assert (= (or b!2502884 b!2502892 b!2502891) bm!154741))

(assert (=> b!2502894 m!2864569))

(assert (=> b!2502894 m!2864569))

(declare-fun m!2864615 () Bool)

(assert (=> b!2502894 m!2864615))

(assert (=> b!2502894 m!2864573))

(assert (=> b!2502894 m!2864615))

(assert (=> b!2502894 m!2864573))

(declare-fun m!2864617 () Bool)

(assert (=> b!2502894 m!2864617))

(assert (=> b!2502890 m!2864573))

(assert (=> b!2502890 m!2864573))

(assert (=> b!2502890 m!2864577))

(assert (=> d!715668 m!2864579))

(assert (=> d!715668 m!2864611))

(assert (=> b!2502887 m!2864573))

(assert (=> b!2502887 m!2864573))

(assert (=> b!2502887 m!2864577))

(assert (=> b!2502889 m!2864569))

(declare-fun m!2864619 () Bool)

(assert (=> b!2502893 m!2864619))

(assert (=> b!2502886 m!2864569))

(assert (=> bm!154741 m!2864579))

(assert (=> b!2502467 d!715668))

(declare-fun c!398360 () Bool)

(declare-fun bm!154742 () Bool)

(declare-fun call!154749 () Regex!7417)

(declare-fun c!398359 () Bool)

(assert (=> bm!154742 (= call!154749 (derivativeStep!1986 (ite c!398360 (regTwo!15347 (regTwo!15346 r!27340)) (ite c!398359 (reg!7746 (regTwo!15346 r!27340)) (regOne!15346 (regTwo!15346 r!27340)))) c!14016))))

(declare-fun b!2502898 () Bool)

(assert (=> b!2502898 (= c!398360 ((_ is Union!7417) (regTwo!15346 r!27340)))))

(declare-fun e!1587266 () Regex!7417)

(declare-fun e!1587268 () Regex!7417)

(assert (=> b!2502898 (= e!1587266 e!1587268)))

(declare-fun b!2502899 () Bool)

(declare-fun e!1587265 () Regex!7417)

(declare-fun call!154748 () Regex!7417)

(assert (=> b!2502899 (= e!1587265 (Concat!12113 call!154748 (regTwo!15346 r!27340)))))

(declare-fun bm!154743 () Bool)

(declare-fun call!154747 () Regex!7417)

(assert (=> bm!154743 (= call!154747 (derivativeStep!1986 (ite c!398360 (regOne!15347 (regTwo!15346 r!27340)) (regTwo!15346 (regTwo!15346 r!27340))) c!14016))))

(declare-fun d!715670 () Bool)

(declare-fun lt!895999 () Regex!7417)

(assert (=> d!715670 (validRegex!3043 lt!895999)))

(declare-fun e!1587269 () Regex!7417)

(assert (=> d!715670 (= lt!895999 e!1587269)))

(declare-fun c!398362 () Bool)

(assert (=> d!715670 (= c!398362 (or ((_ is EmptyExpr!7417) (regTwo!15346 r!27340)) ((_ is EmptyLang!7417) (regTwo!15346 r!27340))))))

(assert (=> d!715670 (validRegex!3043 (regTwo!15346 r!27340))))

(assert (=> d!715670 (= (derivativeStep!1986 (regTwo!15346 r!27340) c!14016) lt!895999)))

(declare-fun b!2502900 () Bool)

(assert (=> b!2502900 (= e!1587269 EmptyLang!7417)))

(declare-fun b!2502901 () Bool)

(declare-fun c!398358 () Bool)

(assert (=> b!2502901 (= c!398358 (nullable!2334 (regOne!15346 (regTwo!15346 r!27340))))))

(declare-fun e!1587267 () Regex!7417)

(assert (=> b!2502901 (= e!1587265 e!1587267)))

(declare-fun bm!154744 () Bool)

(declare-fun call!154750 () Regex!7417)

(assert (=> bm!154744 (= call!154750 call!154748)))

(declare-fun bm!154745 () Bool)

(assert (=> bm!154745 (= call!154748 call!154749)))

(declare-fun b!2502902 () Bool)

(assert (=> b!2502902 (= e!1587266 (ite (= c!14016 (c!398249 (regTwo!15346 r!27340))) EmptyExpr!7417 EmptyLang!7417))))

(declare-fun b!2502903 () Bool)

(assert (=> b!2502903 (= e!1587267 (Union!7417 (Concat!12113 call!154750 (regTwo!15346 (regTwo!15346 r!27340))) call!154747))))

(declare-fun b!2502904 () Bool)

(assert (=> b!2502904 (= e!1587268 (Union!7417 call!154747 call!154749))))

(declare-fun b!2502905 () Bool)

(assert (=> b!2502905 (= e!1587268 e!1587265)))

(assert (=> b!2502905 (= c!398359 ((_ is Star!7417) (regTwo!15346 r!27340)))))

(declare-fun b!2502906 () Bool)

(assert (=> b!2502906 (= e!1587269 e!1587266)))

(declare-fun c!398361 () Bool)

(assert (=> b!2502906 (= c!398361 ((_ is ElementMatch!7417) (regTwo!15346 r!27340)))))

(declare-fun b!2502907 () Bool)

(assert (=> b!2502907 (= e!1587267 (Union!7417 (Concat!12113 call!154750 (regTwo!15346 (regTwo!15346 r!27340))) EmptyLang!7417))))

(assert (= (and d!715670 c!398362) b!2502900))

(assert (= (and d!715670 (not c!398362)) b!2502906))

(assert (= (and b!2502906 c!398361) b!2502902))

(assert (= (and b!2502906 (not c!398361)) b!2502898))

(assert (= (and b!2502898 c!398360) b!2502904))

(assert (= (and b!2502898 (not c!398360)) b!2502905))

(assert (= (and b!2502905 c!398359) b!2502899))

(assert (= (and b!2502905 (not c!398359)) b!2502901))

(assert (= (and b!2502901 c!398358) b!2502903))

(assert (= (and b!2502901 (not c!398358)) b!2502907))

(assert (= (or b!2502903 b!2502907) bm!154744))

(assert (= (or b!2502899 bm!154744) bm!154745))

(assert (= (or b!2502904 bm!154745) bm!154742))

(assert (= (or b!2502904 b!2502903) bm!154743))

(declare-fun m!2864621 () Bool)

(assert (=> bm!154742 m!2864621))

(declare-fun m!2864623 () Bool)

(assert (=> bm!154743 m!2864623))

(declare-fun m!2864625 () Bool)

(assert (=> d!715670 m!2864625))

(declare-fun m!2864627 () Bool)

(assert (=> d!715670 m!2864627))

(declare-fun m!2864629 () Bool)

(assert (=> b!2502901 m!2864629))

(assert (=> b!2502467 d!715670))

(declare-fun bm!154746 () Bool)

(declare-fun call!154753 () Regex!7417)

(declare-fun c!398364 () Bool)

(declare-fun c!398365 () Bool)

(assert (=> bm!154746 (= call!154753 (derivativeStep!1986 (ite c!398365 (regTwo!15347 (regOne!15346 r!27340)) (ite c!398364 (reg!7746 (regOne!15346 r!27340)) (regOne!15346 (regOne!15346 r!27340)))) c!14016))))

(declare-fun b!2502908 () Bool)

(assert (=> b!2502908 (= c!398365 ((_ is Union!7417) (regOne!15346 r!27340)))))

(declare-fun e!1587271 () Regex!7417)

(declare-fun e!1587273 () Regex!7417)

(assert (=> b!2502908 (= e!1587271 e!1587273)))

(declare-fun b!2502909 () Bool)

(declare-fun e!1587270 () Regex!7417)

(declare-fun call!154752 () Regex!7417)

(assert (=> b!2502909 (= e!1587270 (Concat!12113 call!154752 (regOne!15346 r!27340)))))

(declare-fun bm!154747 () Bool)

(declare-fun call!154751 () Regex!7417)

(assert (=> bm!154747 (= call!154751 (derivativeStep!1986 (ite c!398365 (regOne!15347 (regOne!15346 r!27340)) (regTwo!15346 (regOne!15346 r!27340))) c!14016))))

(declare-fun d!715672 () Bool)

(declare-fun lt!896000 () Regex!7417)

(assert (=> d!715672 (validRegex!3043 lt!896000)))

(declare-fun e!1587274 () Regex!7417)

(assert (=> d!715672 (= lt!896000 e!1587274)))

(declare-fun c!398367 () Bool)

(assert (=> d!715672 (= c!398367 (or ((_ is EmptyExpr!7417) (regOne!15346 r!27340)) ((_ is EmptyLang!7417) (regOne!15346 r!27340))))))

(assert (=> d!715672 (validRegex!3043 (regOne!15346 r!27340))))

(assert (=> d!715672 (= (derivativeStep!1986 (regOne!15346 r!27340) c!14016) lt!896000)))

(declare-fun b!2502910 () Bool)

(assert (=> b!2502910 (= e!1587274 EmptyLang!7417)))

(declare-fun b!2502911 () Bool)

(declare-fun c!398363 () Bool)

(assert (=> b!2502911 (= c!398363 (nullable!2334 (regOne!15346 (regOne!15346 r!27340))))))

(declare-fun e!1587272 () Regex!7417)

(assert (=> b!2502911 (= e!1587270 e!1587272)))

(declare-fun bm!154748 () Bool)

(declare-fun call!154754 () Regex!7417)

(assert (=> bm!154748 (= call!154754 call!154752)))

(declare-fun bm!154749 () Bool)

(assert (=> bm!154749 (= call!154752 call!154753)))

(declare-fun b!2502912 () Bool)

(assert (=> b!2502912 (= e!1587271 (ite (= c!14016 (c!398249 (regOne!15346 r!27340))) EmptyExpr!7417 EmptyLang!7417))))

(declare-fun b!2502913 () Bool)

(assert (=> b!2502913 (= e!1587272 (Union!7417 (Concat!12113 call!154754 (regTwo!15346 (regOne!15346 r!27340))) call!154751))))

(declare-fun b!2502914 () Bool)

(assert (=> b!2502914 (= e!1587273 (Union!7417 call!154751 call!154753))))

(declare-fun b!2502915 () Bool)

(assert (=> b!2502915 (= e!1587273 e!1587270)))

(assert (=> b!2502915 (= c!398364 ((_ is Star!7417) (regOne!15346 r!27340)))))

(declare-fun b!2502916 () Bool)

(assert (=> b!2502916 (= e!1587274 e!1587271)))

(declare-fun c!398366 () Bool)

(assert (=> b!2502916 (= c!398366 ((_ is ElementMatch!7417) (regOne!15346 r!27340)))))

(declare-fun b!2502917 () Bool)

(assert (=> b!2502917 (= e!1587272 (Union!7417 (Concat!12113 call!154754 (regTwo!15346 (regOne!15346 r!27340))) EmptyLang!7417))))

(assert (= (and d!715672 c!398367) b!2502910))

(assert (= (and d!715672 (not c!398367)) b!2502916))

(assert (= (and b!2502916 c!398366) b!2502912))

(assert (= (and b!2502916 (not c!398366)) b!2502908))

(assert (= (and b!2502908 c!398365) b!2502914))

(assert (= (and b!2502908 (not c!398365)) b!2502915))

(assert (= (and b!2502915 c!398364) b!2502909))

(assert (= (and b!2502915 (not c!398364)) b!2502911))

(assert (= (and b!2502911 c!398363) b!2502913))

(assert (= (and b!2502911 (not c!398363)) b!2502917))

(assert (= (or b!2502913 b!2502917) bm!154748))

(assert (= (or b!2502909 bm!154748) bm!154749))

(assert (= (or b!2502914 bm!154749) bm!154746))

(assert (= (or b!2502914 b!2502913) bm!154747))

(declare-fun m!2864631 () Bool)

(assert (=> bm!154746 m!2864631))

(declare-fun m!2864633 () Bool)

(assert (=> bm!154747 m!2864633))

(declare-fun m!2864635 () Bool)

(assert (=> d!715672 m!2864635))

(declare-fun m!2864637 () Bool)

(assert (=> d!715672 m!2864637))

(declare-fun m!2864639 () Bool)

(assert (=> b!2502911 m!2864639))

(assert (=> b!2502467 d!715672))

(declare-fun d!715674 () Bool)

(declare-fun lt!896001 () Regex!7417)

(assert (=> d!715674 (validRegex!3043 lt!896001)))

(declare-fun e!1587275 () Regex!7417)

(assert (=> d!715674 (= lt!896001 e!1587275)))

(declare-fun c!398368 () Bool)

(assert (=> d!715674 (= c!398368 ((_ is Cons!29382) tl!4068))))

(assert (=> d!715674 (validRegex!3043 lt!895933)))

(assert (=> d!715674 (= (derivative!112 lt!895933 tl!4068) lt!896001)))

(declare-fun b!2502918 () Bool)

(assert (=> b!2502918 (= e!1587275 (derivative!112 (derivativeStep!1986 lt!895933 (h!34802 tl!4068)) (t!211181 tl!4068)))))

(declare-fun b!2502919 () Bool)

(assert (=> b!2502919 (= e!1587275 lt!895933)))

(assert (= (and d!715674 c!398368) b!2502918))

(assert (= (and d!715674 (not c!398368)) b!2502919))

(declare-fun m!2864641 () Bool)

(assert (=> d!715674 m!2864641))

(assert (=> d!715674 m!2864611))

(declare-fun m!2864643 () Bool)

(assert (=> b!2502918 m!2864643))

(assert (=> b!2502918 m!2864643))

(declare-fun m!2864645 () Bool)

(assert (=> b!2502918 m!2864645))

(assert (=> b!2502467 d!715674))

(declare-fun b!2502920 () Bool)

(declare-fun e!1587279 () Bool)

(declare-fun lt!896002 () Bool)

(declare-fun call!154755 () Bool)

(assert (=> b!2502920 (= e!1587279 (= lt!896002 call!154755))))

(declare-fun d!715676 () Bool)

(assert (=> d!715676 e!1587279))

(declare-fun c!398369 () Bool)

(assert (=> d!715676 (= c!398369 ((_ is EmptyExpr!7417) lt!895935))))

(declare-fun e!1587278 () Bool)

(assert (=> d!715676 (= lt!896002 e!1587278)))

(declare-fun c!398370 () Bool)

(assert (=> d!715676 (= c!398370 (isEmpty!16844 tl!4068))))

(assert (=> d!715676 (validRegex!3043 lt!895935)))

(assert (=> d!715676 (= (matchR!3420 lt!895935 tl!4068) lt!896002)))

(declare-fun b!2502921 () Bool)

(declare-fun e!1587282 () Bool)

(assert (=> b!2502921 (= e!1587279 e!1587282)))

(declare-fun c!398371 () Bool)

(assert (=> b!2502921 (= c!398371 ((_ is EmptyLang!7417) lt!895935))))

(declare-fun b!2502922 () Bool)

(declare-fun e!1587277 () Bool)

(assert (=> b!2502922 (= e!1587277 (= (head!5704 tl!4068) (c!398249 lt!895935)))))

(declare-fun b!2502923 () Bool)

(declare-fun res!1058271 () Bool)

(declare-fun e!1587276 () Bool)

(assert (=> b!2502923 (=> res!1058271 e!1587276)))

(assert (=> b!2502923 (= res!1058271 (not (isEmpty!16844 (tail!3981 tl!4068))))))

(declare-fun b!2502924 () Bool)

(declare-fun res!1058270 () Bool)

(declare-fun e!1587280 () Bool)

(assert (=> b!2502924 (=> res!1058270 e!1587280)))

(assert (=> b!2502924 (= res!1058270 (not ((_ is ElementMatch!7417) lt!895935)))))

(assert (=> b!2502924 (= e!1587282 e!1587280)))

(declare-fun b!2502925 () Bool)

(assert (=> b!2502925 (= e!1587276 (not (= (head!5704 tl!4068) (c!398249 lt!895935))))))

(declare-fun b!2502926 () Bool)

(declare-fun res!1058267 () Bool)

(assert (=> b!2502926 (=> (not res!1058267) (not e!1587277))))

(assert (=> b!2502926 (= res!1058267 (isEmpty!16844 (tail!3981 tl!4068)))))

(declare-fun b!2502927 () Bool)

(declare-fun e!1587281 () Bool)

(assert (=> b!2502927 (= e!1587281 e!1587276)))

(declare-fun res!1058265 () Bool)

(assert (=> b!2502927 (=> res!1058265 e!1587276)))

(assert (=> b!2502927 (= res!1058265 call!154755)))

(declare-fun b!2502928 () Bool)

(declare-fun res!1058268 () Bool)

(assert (=> b!2502928 (=> (not res!1058268) (not e!1587277))))

(assert (=> b!2502928 (= res!1058268 (not call!154755))))

(declare-fun b!2502929 () Bool)

(assert (=> b!2502929 (= e!1587278 (nullable!2334 lt!895935))))

(declare-fun bm!154750 () Bool)

(assert (=> bm!154750 (= call!154755 (isEmpty!16844 tl!4068))))

(declare-fun b!2502930 () Bool)

(assert (=> b!2502930 (= e!1587278 (matchR!3420 (derivativeStep!1986 lt!895935 (head!5704 tl!4068)) (tail!3981 tl!4068)))))

(declare-fun b!2502931 () Bool)

(declare-fun res!1058269 () Bool)

(assert (=> b!2502931 (=> res!1058269 e!1587280)))

(assert (=> b!2502931 (= res!1058269 e!1587277)))

(declare-fun res!1058266 () Bool)

(assert (=> b!2502931 (=> (not res!1058266) (not e!1587277))))

(assert (=> b!2502931 (= res!1058266 lt!896002)))

(declare-fun b!2502932 () Bool)

(assert (=> b!2502932 (= e!1587282 (not lt!896002))))

(declare-fun b!2502933 () Bool)

(assert (=> b!2502933 (= e!1587280 e!1587281)))

(declare-fun res!1058272 () Bool)

(assert (=> b!2502933 (=> (not res!1058272) (not e!1587281))))

(assert (=> b!2502933 (= res!1058272 (not lt!896002))))

(assert (= (and d!715676 c!398370) b!2502929))

(assert (= (and d!715676 (not c!398370)) b!2502930))

(assert (= (and d!715676 c!398369) b!2502920))

(assert (= (and d!715676 (not c!398369)) b!2502921))

(assert (= (and b!2502921 c!398371) b!2502932))

(assert (= (and b!2502921 (not c!398371)) b!2502924))

(assert (= (and b!2502924 (not res!1058270)) b!2502931))

(assert (= (and b!2502931 res!1058266) b!2502928))

(assert (= (and b!2502928 res!1058268) b!2502926))

(assert (= (and b!2502926 res!1058267) b!2502922))

(assert (= (and b!2502931 (not res!1058269)) b!2502933))

(assert (= (and b!2502933 res!1058272) b!2502927))

(assert (= (and b!2502927 (not res!1058265)) b!2502923))

(assert (= (and b!2502923 (not res!1058271)) b!2502925))

(assert (= (or b!2502920 b!2502928 b!2502927) bm!154750))

(assert (=> b!2502930 m!2864569))

(assert (=> b!2502930 m!2864569))

(declare-fun m!2864647 () Bool)

(assert (=> b!2502930 m!2864647))

(assert (=> b!2502930 m!2864573))

(assert (=> b!2502930 m!2864647))

(assert (=> b!2502930 m!2864573))

(declare-fun m!2864649 () Bool)

(assert (=> b!2502930 m!2864649))

(assert (=> b!2502926 m!2864573))

(assert (=> b!2502926 m!2864573))

(assert (=> b!2502926 m!2864577))

(assert (=> d!715676 m!2864579))

(assert (=> d!715676 m!2864593))

(assert (=> b!2502923 m!2864573))

(assert (=> b!2502923 m!2864573))

(assert (=> b!2502923 m!2864577))

(assert (=> b!2502925 m!2864569))

(declare-fun m!2864651 () Bool)

(assert (=> b!2502929 m!2864651))

(assert (=> b!2502922 m!2864569))

(assert (=> bm!154750 m!2864579))

(assert (=> b!2502467 d!715676))

(declare-fun b!2502938 () Bool)

(declare-fun e!1587285 () Bool)

(declare-fun tp!801139 () Bool)

(assert (=> b!2502938 (= e!1587285 (and tp_is_empty!12689 tp!801139))))

(assert (=> b!2502472 (= tp!801098 e!1587285)))

(assert (= (and b!2502472 ((_ is Cons!29382) (t!211181 tl!4068))) b!2502938))

(declare-fun b!2502952 () Bool)

(declare-fun e!1587288 () Bool)

(declare-fun tp!801152 () Bool)

(declare-fun tp!801151 () Bool)

(assert (=> b!2502952 (= e!1587288 (and tp!801152 tp!801151))))

(declare-fun b!2502950 () Bool)

(declare-fun tp!801153 () Bool)

(declare-fun tp!801150 () Bool)

(assert (=> b!2502950 (= e!1587288 (and tp!801153 tp!801150))))

(declare-fun b!2502951 () Bool)

(declare-fun tp!801154 () Bool)

(assert (=> b!2502951 (= e!1587288 tp!801154)))

(declare-fun b!2502949 () Bool)

(assert (=> b!2502949 (= e!1587288 tp_is_empty!12689)))

(assert (=> b!2502476 (= tp!801095 e!1587288)))

(assert (= (and b!2502476 ((_ is ElementMatch!7417) (regOne!15346 r!27340))) b!2502949))

(assert (= (and b!2502476 ((_ is Concat!12113) (regOne!15346 r!27340))) b!2502950))

(assert (= (and b!2502476 ((_ is Star!7417) (regOne!15346 r!27340))) b!2502951))

(assert (= (and b!2502476 ((_ is Union!7417) (regOne!15346 r!27340))) b!2502952))

(declare-fun b!2502956 () Bool)

(declare-fun e!1587289 () Bool)

(declare-fun tp!801157 () Bool)

(declare-fun tp!801156 () Bool)

(assert (=> b!2502956 (= e!1587289 (and tp!801157 tp!801156))))

(declare-fun b!2502954 () Bool)

(declare-fun tp!801158 () Bool)

(declare-fun tp!801155 () Bool)

(assert (=> b!2502954 (= e!1587289 (and tp!801158 tp!801155))))

(declare-fun b!2502955 () Bool)

(declare-fun tp!801159 () Bool)

(assert (=> b!2502955 (= e!1587289 tp!801159)))

(declare-fun b!2502953 () Bool)

(assert (=> b!2502953 (= e!1587289 tp_is_empty!12689)))

(assert (=> b!2502476 (= tp!801094 e!1587289)))

(assert (= (and b!2502476 ((_ is ElementMatch!7417) (regTwo!15346 r!27340))) b!2502953))

(assert (= (and b!2502476 ((_ is Concat!12113) (regTwo!15346 r!27340))) b!2502954))

(assert (= (and b!2502476 ((_ is Star!7417) (regTwo!15346 r!27340))) b!2502955))

(assert (= (and b!2502476 ((_ is Union!7417) (regTwo!15346 r!27340))) b!2502956))

(declare-fun b!2502960 () Bool)

(declare-fun e!1587290 () Bool)

(declare-fun tp!801162 () Bool)

(declare-fun tp!801161 () Bool)

(assert (=> b!2502960 (= e!1587290 (and tp!801162 tp!801161))))

(declare-fun b!2502958 () Bool)

(declare-fun tp!801163 () Bool)

(declare-fun tp!801160 () Bool)

(assert (=> b!2502958 (= e!1587290 (and tp!801163 tp!801160))))

(declare-fun b!2502959 () Bool)

(declare-fun tp!801164 () Bool)

(assert (=> b!2502959 (= e!1587290 tp!801164)))

(declare-fun b!2502957 () Bool)

(assert (=> b!2502957 (= e!1587290 tp_is_empty!12689)))

(assert (=> b!2502474 (= tp!801093 e!1587290)))

(assert (= (and b!2502474 ((_ is ElementMatch!7417) (reg!7746 r!27340))) b!2502957))

(assert (= (and b!2502474 ((_ is Concat!12113) (reg!7746 r!27340))) b!2502958))

(assert (= (and b!2502474 ((_ is Star!7417) (reg!7746 r!27340))) b!2502959))

(assert (= (and b!2502474 ((_ is Union!7417) (reg!7746 r!27340))) b!2502960))

(declare-fun b!2502964 () Bool)

(declare-fun e!1587291 () Bool)

(declare-fun tp!801167 () Bool)

(declare-fun tp!801166 () Bool)

(assert (=> b!2502964 (= e!1587291 (and tp!801167 tp!801166))))

(declare-fun b!2502962 () Bool)

(declare-fun tp!801168 () Bool)

(declare-fun tp!801165 () Bool)

(assert (=> b!2502962 (= e!1587291 (and tp!801168 tp!801165))))

(declare-fun b!2502963 () Bool)

(declare-fun tp!801169 () Bool)

(assert (=> b!2502963 (= e!1587291 tp!801169)))

(declare-fun b!2502961 () Bool)

(assert (=> b!2502961 (= e!1587291 tp_is_empty!12689)))

(assert (=> b!2502473 (= tp!801096 e!1587291)))

(assert (= (and b!2502473 ((_ is ElementMatch!7417) (regOne!15347 r!27340))) b!2502961))

(assert (= (and b!2502473 ((_ is Concat!12113) (regOne!15347 r!27340))) b!2502962))

(assert (= (and b!2502473 ((_ is Star!7417) (regOne!15347 r!27340))) b!2502963))

(assert (= (and b!2502473 ((_ is Union!7417) (regOne!15347 r!27340))) b!2502964))

(declare-fun b!2502968 () Bool)

(declare-fun e!1587292 () Bool)

(declare-fun tp!801172 () Bool)

(declare-fun tp!801171 () Bool)

(assert (=> b!2502968 (= e!1587292 (and tp!801172 tp!801171))))

(declare-fun b!2502966 () Bool)

(declare-fun tp!801173 () Bool)

(declare-fun tp!801170 () Bool)

(assert (=> b!2502966 (= e!1587292 (and tp!801173 tp!801170))))

(declare-fun b!2502967 () Bool)

(declare-fun tp!801174 () Bool)

(assert (=> b!2502967 (= e!1587292 tp!801174)))

(declare-fun b!2502965 () Bool)

(assert (=> b!2502965 (= e!1587292 tp_is_empty!12689)))

(assert (=> b!2502473 (= tp!801097 e!1587292)))

(assert (= (and b!2502473 ((_ is ElementMatch!7417) (regTwo!15347 r!27340))) b!2502965))

(assert (= (and b!2502473 ((_ is Concat!12113) (regTwo!15347 r!27340))) b!2502966))

(assert (= (and b!2502473 ((_ is Star!7417) (regTwo!15347 r!27340))) b!2502967))

(assert (= (and b!2502473 ((_ is Union!7417) (regTwo!15347 r!27340))) b!2502968))

(check-sat (not b!2502952) (not b!2502951) (not d!715668) (not b!2502844) (not b!2502587) (not b!2502876) (not b!2502958) (not bm!154683) (not b!2502918) (not b!2502887) (not b!2502880) (not b!2502875) (not b!2502901) (not b!2502868) (not bm!154738) (not d!715672) (not d!715626) (not b!2502869) (not bm!154737) (not b!2502588) (not b!2502879) (not bm!154719) (not b!2502886) (not b!2502872) (not d!715624) (not b!2502962) (not d!715664) (not d!715670) (not b!2502964) (not bm!154746) (not bm!154747) (not d!715642) (not b!2502930) (not b!2502911) (not b!2502843) (not b!2502925) (not b!2502893) (not bm!154750) (not b!2502959) tp_is_empty!12689 (not b!2502923) (not b!2502846) (not b!2502625) (not bm!154736) (not b!2502894) (not bm!154740) (not b!2502589) (not b!2502873) (not d!715616) (not b!2502967) (not b!2502954) (not b!2502847) (not b!2502590) (not b!2502950) (not b!2502938) (not d!715662) (not b!2502593) (not d!715674) (not b!2502966) (not b!2502889) (not b!2502926) (not d!715632) (not b!2502963) (not b!2502956) (not b!2502922) (not d!715638) (not d!715676) (not b!2502585) (not b!2502525) (not d!715666) (not b!2502859) (not d!715628) (not b!2502960) (not b!2502851) (not bm!154741) (not bm!154684) (not b!2502687) (not b!2502955) (not bm!154718) (not b!2502968) (not b!2502850) (not b!2502890) (not b!2502929) (not bm!154742) (not bm!154743) (not d!715614))
(check-sat)

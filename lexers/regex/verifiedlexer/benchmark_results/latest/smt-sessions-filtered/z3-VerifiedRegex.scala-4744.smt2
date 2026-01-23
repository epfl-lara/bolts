; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244856 () Bool)

(assert start!244856)

(declare-fun b!2510590 () Bool)

(declare-fun res!1061322 () Bool)

(declare-fun e!1591147 () Bool)

(assert (=> b!2510590 (=> (not res!1061322) (not e!1591147))))

(declare-datatypes ((C!15084 0))(
  ( (C!15085 (val!9194 Int)) )
))
(declare-datatypes ((List!29528 0))(
  ( (Nil!29428) (Cons!29428 (h!34848 C!15084) (t!211227 List!29528)) )
))
(declare-fun tl!4068 () List!29528)

(declare-datatypes ((Regex!7463 0))(
  ( (ElementMatch!7463 (c!399907 C!15084)) (Concat!12159 (regOne!15438 Regex!7463) (regTwo!15438 Regex!7463)) (EmptyExpr!7463) (Star!7463 (reg!7792 Regex!7463)) (EmptyLang!7463) (Union!7463 (regOne!15439 Regex!7463) (regTwo!15439 Regex!7463)) )
))
(declare-fun r!27340 () Regex!7463)

(declare-fun c!14016 () C!15084)

(declare-fun nullable!2380 (Regex!7463) Bool)

(declare-fun derivative!158 (Regex!7463 List!29528) Regex!7463)

(declare-fun derivativeStep!2032 (Regex!7463 C!15084) Regex!7463)

(assert (=> b!2510590 (= res!1061322 (nullable!2380 (derivative!158 (derivativeStep!2032 r!27340 c!14016) tl!4068)))))

(declare-fun b!2510591 () Bool)

(declare-fun e!1591146 () Bool)

(declare-fun tp!802988 () Bool)

(declare-fun tp!802985 () Bool)

(assert (=> b!2510591 (= e!1591146 (and tp!802988 tp!802985))))

(declare-fun b!2510592 () Bool)

(declare-fun res!1061320 () Bool)

(assert (=> b!2510592 (=> (not res!1061320) (not e!1591147))))

(assert (=> b!2510592 (= res!1061320 (not (nullable!2380 (regOne!15438 r!27340))))))

(declare-fun res!1061321 () Bool)

(assert (=> start!244856 (=> (not res!1061321) (not e!1591147))))

(declare-fun validRegex!3089 (Regex!7463) Bool)

(assert (=> start!244856 (= res!1061321 (validRegex!3089 r!27340))))

(assert (=> start!244856 e!1591147))

(assert (=> start!244856 e!1591146))

(declare-fun tp_is_empty!12781 () Bool)

(assert (=> start!244856 tp_is_empty!12781))

(declare-fun e!1591150 () Bool)

(assert (=> start!244856 e!1591150))

(declare-fun b!2510593 () Bool)

(declare-fun e!1591148 () Bool)

(declare-fun matchR!3462 (Regex!7463 List!29528) Bool)

(assert (=> b!2510593 (= e!1591148 (matchR!3462 EmptyLang!7463 tl!4068))))

(declare-fun b!2510594 () Bool)

(declare-fun e!1591149 () Bool)

(assert (=> b!2510594 (= e!1591149 (validRegex!3089 (regOne!15438 r!27340)))))

(declare-fun lt!897641 () Regex!7463)

(declare-datatypes ((tuple2!29456 0))(
  ( (tuple2!29457 (_1!17270 List!29528) (_2!17270 List!29528)) )
))
(declare-datatypes ((Option!5848 0))(
  ( (None!5847) (Some!5847 (v!31778 tuple2!29456)) )
))
(declare-fun isDefined!4670 (Option!5848) Bool)

(declare-fun findConcatSeparation!870 (Regex!7463 Regex!7463 List!29528 List!29528 List!29528) Option!5848)

(assert (=> b!2510594 (isDefined!4670 (findConcatSeparation!870 lt!897641 (regTwo!15438 r!27340) Nil!29428 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43175 0))(
  ( (Unit!43176) )
))
(declare-fun lt!897639 () Unit!43175)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!152 (Regex!7463 Regex!7463 List!29528) Unit!43175)

(assert (=> b!2510594 (= lt!897639 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!152 lt!897641 (regTwo!15438 r!27340) tl!4068))))

(declare-fun b!2510595 () Bool)

(assert (=> b!2510595 (= e!1591146 tp_is_empty!12781)))

(declare-fun b!2510596 () Bool)

(declare-fun res!1061324 () Bool)

(assert (=> b!2510596 (=> (not res!1061324) (not e!1591147))))

(get-info :version)

(assert (=> b!2510596 (= res!1061324 (and (not ((_ is EmptyExpr!7463) r!27340)) (not ((_ is EmptyLang!7463) r!27340)) (not ((_ is ElementMatch!7463) r!27340)) (not ((_ is Union!7463) r!27340)) (not ((_ is Star!7463) r!27340))))))

(declare-fun b!2510597 () Bool)

(declare-fun tp!802986 () Bool)

(assert (=> b!2510597 (= e!1591146 tp!802986)))

(declare-fun b!2510598 () Bool)

(declare-fun tp!802990 () Bool)

(assert (=> b!2510598 (= e!1591150 (and tp_is_empty!12781 tp!802990))))

(declare-fun b!2510599 () Bool)

(declare-fun tp!802987 () Bool)

(declare-fun tp!802989 () Bool)

(assert (=> b!2510599 (= e!1591146 (and tp!802987 tp!802989))))

(declare-fun b!2510600 () Bool)

(assert (=> b!2510600 (= e!1591147 (not e!1591149))))

(declare-fun res!1061319 () Bool)

(assert (=> b!2510600 (=> res!1061319 e!1591149)))

(declare-fun lt!897643 () Bool)

(assert (=> b!2510600 (= res!1061319 (not lt!897643))))

(assert (=> b!2510600 (= (derivative!158 EmptyLang!7463 tl!4068) EmptyLang!7463)))

(declare-fun lt!897645 () Unit!43175)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!10 (Regex!7463 List!29528) Unit!43175)

(assert (=> b!2510600 (= lt!897645 (lemmaEmptyLangDerivativeIsAFixPoint!10 EmptyLang!7463 tl!4068))))

(assert (=> b!2510600 e!1591148))

(declare-fun res!1061323 () Bool)

(assert (=> b!2510600 (=> res!1061323 e!1591148)))

(assert (=> b!2510600 (= res!1061323 lt!897643)))

(declare-fun lt!897644 () Regex!7463)

(assert (=> b!2510600 (= lt!897643 (matchR!3462 lt!897644 tl!4068))))

(declare-fun lt!897640 () Unit!43175)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!150 (Regex!7463 Regex!7463 List!29528) Unit!43175)

(assert (=> b!2510600 (= lt!897640 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!150 lt!897644 EmptyLang!7463 tl!4068))))

(declare-fun lt!897642 () Regex!7463)

(assert (=> b!2510600 (= (matchR!3462 lt!897642 tl!4068) (matchR!3462 (derivative!158 lt!897642 tl!4068) Nil!29428))))

(declare-fun lt!897646 () Unit!43175)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!108 (Regex!7463 List!29528) Unit!43175)

(assert (=> b!2510600 (= lt!897646 (lemmaMatchRIsSameAsWholeDerivativeAndNil!108 lt!897642 tl!4068))))

(assert (=> b!2510600 (= lt!897642 (Union!7463 lt!897644 EmptyLang!7463))))

(assert (=> b!2510600 (= lt!897644 (Concat!12159 lt!897641 (regTwo!15438 r!27340)))))

(assert (=> b!2510600 (= lt!897641 (derivativeStep!2032 (regOne!15438 r!27340) c!14016))))

(assert (= (and start!244856 res!1061321) b!2510590))

(assert (= (and b!2510590 res!1061322) b!2510596))

(assert (= (and b!2510596 res!1061324) b!2510592))

(assert (= (and b!2510592 res!1061320) b!2510600))

(assert (= (and b!2510600 (not res!1061323)) b!2510593))

(assert (= (and b!2510600 (not res!1061319)) b!2510594))

(assert (= (and start!244856 ((_ is ElementMatch!7463) r!27340)) b!2510595))

(assert (= (and start!244856 ((_ is Concat!12159) r!27340)) b!2510591))

(assert (= (and start!244856 ((_ is Star!7463) r!27340)) b!2510597))

(assert (= (and start!244856 ((_ is Union!7463) r!27340)) b!2510599))

(assert (= (and start!244856 ((_ is Cons!29428) tl!4068)) b!2510598))

(declare-fun m!2869447 () Bool)

(assert (=> b!2510593 m!2869447))

(declare-fun m!2869449 () Bool)

(assert (=> b!2510594 m!2869449))

(declare-fun m!2869451 () Bool)

(assert (=> b!2510594 m!2869451))

(assert (=> b!2510594 m!2869451))

(declare-fun m!2869453 () Bool)

(assert (=> b!2510594 m!2869453))

(declare-fun m!2869455 () Bool)

(assert (=> b!2510594 m!2869455))

(declare-fun m!2869457 () Bool)

(assert (=> b!2510600 m!2869457))

(declare-fun m!2869459 () Bool)

(assert (=> b!2510600 m!2869459))

(declare-fun m!2869461 () Bool)

(assert (=> b!2510600 m!2869461))

(declare-fun m!2869463 () Bool)

(assert (=> b!2510600 m!2869463))

(declare-fun m!2869465 () Bool)

(assert (=> b!2510600 m!2869465))

(declare-fun m!2869467 () Bool)

(assert (=> b!2510600 m!2869467))

(declare-fun m!2869469 () Bool)

(assert (=> b!2510600 m!2869469))

(declare-fun m!2869471 () Bool)

(assert (=> b!2510600 m!2869471))

(assert (=> b!2510600 m!2869459))

(declare-fun m!2869473 () Bool)

(assert (=> b!2510600 m!2869473))

(declare-fun m!2869475 () Bool)

(assert (=> start!244856 m!2869475))

(declare-fun m!2869477 () Bool)

(assert (=> b!2510592 m!2869477))

(declare-fun m!2869479 () Bool)

(assert (=> b!2510590 m!2869479))

(assert (=> b!2510590 m!2869479))

(declare-fun m!2869481 () Bool)

(assert (=> b!2510590 m!2869481))

(assert (=> b!2510590 m!2869481))

(declare-fun m!2869483 () Bool)

(assert (=> b!2510590 m!2869483))

(check-sat (not b!2510599) (not b!2510593) (not b!2510592) (not b!2510591) (not b!2510597) (not start!244856) (not b!2510600) (not b!2510598) (not b!2510594) tp_is_empty!12781 (not b!2510590))
(check-sat)
(get-model)

(declare-fun b!2510629 () Bool)

(declare-fun e!1591171 () Bool)

(declare-fun e!1591169 () Bool)

(assert (=> b!2510629 (= e!1591171 e!1591169)))

(declare-fun c!399914 () Bool)

(assert (=> b!2510629 (= c!399914 ((_ is EmptyLang!7463) EmptyLang!7463))))

(declare-fun bm!155701 () Bool)

(declare-fun call!155706 () Bool)

(declare-fun isEmpty!16883 (List!29528) Bool)

(assert (=> bm!155701 (= call!155706 (isEmpty!16883 tl!4068))))

(declare-fun b!2510630 () Bool)

(declare-fun lt!897649 () Bool)

(assert (=> b!2510630 (= e!1591169 (not lt!897649))))

(declare-fun d!716601 () Bool)

(assert (=> d!716601 e!1591171))

(declare-fun c!399916 () Bool)

(assert (=> d!716601 (= c!399916 ((_ is EmptyExpr!7463) EmptyLang!7463))))

(declare-fun e!1591168 () Bool)

(assert (=> d!716601 (= lt!897649 e!1591168)))

(declare-fun c!399915 () Bool)

(assert (=> d!716601 (= c!399915 (isEmpty!16883 tl!4068))))

(assert (=> d!716601 (validRegex!3089 EmptyLang!7463)))

(assert (=> d!716601 (= (matchR!3462 EmptyLang!7463 tl!4068) lt!897649)))

(declare-fun b!2510631 () Bool)

(declare-fun res!1061346 () Bool)

(declare-fun e!1591167 () Bool)

(assert (=> b!2510631 (=> res!1061346 e!1591167)))

(declare-fun e!1591165 () Bool)

(assert (=> b!2510631 (= res!1061346 e!1591165)))

(declare-fun res!1061341 () Bool)

(assert (=> b!2510631 (=> (not res!1061341) (not e!1591165))))

(assert (=> b!2510631 (= res!1061341 lt!897649)))

(declare-fun b!2510632 () Bool)

(declare-fun e!1591170 () Bool)

(declare-fun e!1591166 () Bool)

(assert (=> b!2510632 (= e!1591170 e!1591166)))

(declare-fun res!1061347 () Bool)

(assert (=> b!2510632 (=> res!1061347 e!1591166)))

(assert (=> b!2510632 (= res!1061347 call!155706)))

(declare-fun b!2510633 () Bool)

(declare-fun res!1061344 () Bool)

(assert (=> b!2510633 (=> res!1061344 e!1591166)))

(declare-fun tail!4006 (List!29528) List!29528)

(assert (=> b!2510633 (= res!1061344 (not (isEmpty!16883 (tail!4006 tl!4068))))))

(declare-fun b!2510634 () Bool)

(declare-fun res!1061348 () Bool)

(assert (=> b!2510634 (=> res!1061348 e!1591167)))

(assert (=> b!2510634 (= res!1061348 (not ((_ is ElementMatch!7463) EmptyLang!7463)))))

(assert (=> b!2510634 (= e!1591169 e!1591167)))

(declare-fun b!2510635 () Bool)

(assert (=> b!2510635 (= e!1591167 e!1591170)))

(declare-fun res!1061342 () Bool)

(assert (=> b!2510635 (=> (not res!1061342) (not e!1591170))))

(assert (=> b!2510635 (= res!1061342 (not lt!897649))))

(declare-fun b!2510636 () Bool)

(declare-fun res!1061343 () Bool)

(assert (=> b!2510636 (=> (not res!1061343) (not e!1591165))))

(assert (=> b!2510636 (= res!1061343 (isEmpty!16883 (tail!4006 tl!4068)))))

(declare-fun b!2510637 () Bool)

(declare-fun head!5729 (List!29528) C!15084)

(assert (=> b!2510637 (= e!1591168 (matchR!3462 (derivativeStep!2032 EmptyLang!7463 (head!5729 tl!4068)) (tail!4006 tl!4068)))))

(declare-fun b!2510638 () Bool)

(assert (=> b!2510638 (= e!1591171 (= lt!897649 call!155706))))

(declare-fun b!2510639 () Bool)

(assert (=> b!2510639 (= e!1591168 (nullable!2380 EmptyLang!7463))))

(declare-fun b!2510640 () Bool)

(declare-fun res!1061345 () Bool)

(assert (=> b!2510640 (=> (not res!1061345) (not e!1591165))))

(assert (=> b!2510640 (= res!1061345 (not call!155706))))

(declare-fun b!2510641 () Bool)

(assert (=> b!2510641 (= e!1591166 (not (= (head!5729 tl!4068) (c!399907 EmptyLang!7463))))))

(declare-fun b!2510642 () Bool)

(assert (=> b!2510642 (= e!1591165 (= (head!5729 tl!4068) (c!399907 EmptyLang!7463)))))

(assert (= (and d!716601 c!399915) b!2510639))

(assert (= (and d!716601 (not c!399915)) b!2510637))

(assert (= (and d!716601 c!399916) b!2510638))

(assert (= (and d!716601 (not c!399916)) b!2510629))

(assert (= (and b!2510629 c!399914) b!2510630))

(assert (= (and b!2510629 (not c!399914)) b!2510634))

(assert (= (and b!2510634 (not res!1061348)) b!2510631))

(assert (= (and b!2510631 res!1061341) b!2510640))

(assert (= (and b!2510640 res!1061345) b!2510636))

(assert (= (and b!2510636 res!1061343) b!2510642))

(assert (= (and b!2510631 (not res!1061346)) b!2510635))

(assert (= (and b!2510635 res!1061342) b!2510632))

(assert (= (and b!2510632 (not res!1061347)) b!2510633))

(assert (= (and b!2510633 (not res!1061344)) b!2510641))

(assert (= (or b!2510638 b!2510640 b!2510632) bm!155701))

(declare-fun m!2869485 () Bool)

(assert (=> b!2510639 m!2869485))

(declare-fun m!2869487 () Bool)

(assert (=> b!2510633 m!2869487))

(assert (=> b!2510633 m!2869487))

(declare-fun m!2869489 () Bool)

(assert (=> b!2510633 m!2869489))

(declare-fun m!2869491 () Bool)

(assert (=> b!2510637 m!2869491))

(assert (=> b!2510637 m!2869491))

(declare-fun m!2869493 () Bool)

(assert (=> b!2510637 m!2869493))

(assert (=> b!2510637 m!2869487))

(assert (=> b!2510637 m!2869493))

(assert (=> b!2510637 m!2869487))

(declare-fun m!2869495 () Bool)

(assert (=> b!2510637 m!2869495))

(declare-fun m!2869497 () Bool)

(assert (=> d!716601 m!2869497))

(declare-fun m!2869499 () Bool)

(assert (=> d!716601 m!2869499))

(assert (=> b!2510642 m!2869491))

(assert (=> b!2510636 m!2869487))

(assert (=> b!2510636 m!2869487))

(assert (=> b!2510636 m!2869489))

(assert (=> b!2510641 m!2869491))

(assert (=> bm!155701 m!2869497))

(assert (=> b!2510593 d!716601))

(declare-fun d!716603 () Bool)

(declare-fun nullableFct!627 (Regex!7463) Bool)

(assert (=> d!716603 (= (nullable!2380 (regOne!15438 r!27340)) (nullableFct!627 (regOne!15438 r!27340)))))

(declare-fun bs!468764 () Bool)

(assert (= bs!468764 d!716603))

(declare-fun m!2869501 () Bool)

(assert (=> bs!468764 m!2869501))

(assert (=> b!2510592 d!716603))

(declare-fun c!399921 () Bool)

(declare-fun call!155714 () Bool)

(declare-fun bm!155708 () Bool)

(declare-fun c!399922 () Bool)

(assert (=> bm!155708 (= call!155714 (validRegex!3089 (ite c!399921 (reg!7792 r!27340) (ite c!399922 (regOne!15439 r!27340) (regTwo!15438 r!27340)))))))

(declare-fun b!2510661 () Bool)

(declare-fun e!1591189 () Bool)

(declare-fun e!1591187 () Bool)

(assert (=> b!2510661 (= e!1591189 e!1591187)))

(assert (=> b!2510661 (= c!399921 ((_ is Star!7463) r!27340))))

(declare-fun b!2510662 () Bool)

(declare-fun e!1591188 () Bool)

(declare-fun call!155715 () Bool)

(assert (=> b!2510662 (= e!1591188 call!155715)))

(declare-fun b!2510664 () Bool)

(declare-fun e!1591192 () Bool)

(assert (=> b!2510664 (= e!1591192 call!155714)))

(declare-fun bm!155709 () Bool)

(assert (=> bm!155709 (= call!155715 (validRegex!3089 (ite c!399922 (regTwo!15439 r!27340) (regOne!15438 r!27340))))))

(declare-fun b!2510665 () Bool)

(declare-fun res!1061361 () Bool)

(assert (=> b!2510665 (=> (not res!1061361) (not e!1591188))))

(declare-fun call!155713 () Bool)

(assert (=> b!2510665 (= res!1061361 call!155713)))

(declare-fun e!1591191 () Bool)

(assert (=> b!2510665 (= e!1591191 e!1591188)))

(declare-fun bm!155710 () Bool)

(assert (=> bm!155710 (= call!155713 call!155714)))

(declare-fun b!2510666 () Bool)

(declare-fun e!1591186 () Bool)

(assert (=> b!2510666 (= e!1591186 call!155713)))

(declare-fun b!2510667 () Bool)

(assert (=> b!2510667 (= e!1591187 e!1591191)))

(assert (=> b!2510667 (= c!399922 ((_ is Union!7463) r!27340))))

(declare-fun b!2510663 () Bool)

(declare-fun res!1061359 () Bool)

(declare-fun e!1591190 () Bool)

(assert (=> b!2510663 (=> res!1061359 e!1591190)))

(assert (=> b!2510663 (= res!1061359 (not ((_ is Concat!12159) r!27340)))))

(assert (=> b!2510663 (= e!1591191 e!1591190)))

(declare-fun d!716605 () Bool)

(declare-fun res!1061362 () Bool)

(assert (=> d!716605 (=> res!1061362 e!1591189)))

(assert (=> d!716605 (= res!1061362 ((_ is ElementMatch!7463) r!27340))))

(assert (=> d!716605 (= (validRegex!3089 r!27340) e!1591189)))

(declare-fun b!2510668 () Bool)

(assert (=> b!2510668 (= e!1591190 e!1591186)))

(declare-fun res!1061363 () Bool)

(assert (=> b!2510668 (=> (not res!1061363) (not e!1591186))))

(assert (=> b!2510668 (= res!1061363 call!155715)))

(declare-fun b!2510669 () Bool)

(assert (=> b!2510669 (= e!1591187 e!1591192)))

(declare-fun res!1061360 () Bool)

(assert (=> b!2510669 (= res!1061360 (not (nullable!2380 (reg!7792 r!27340))))))

(assert (=> b!2510669 (=> (not res!1061360) (not e!1591192))))

(assert (= (and d!716605 (not res!1061362)) b!2510661))

(assert (= (and b!2510661 c!399921) b!2510669))

(assert (= (and b!2510661 (not c!399921)) b!2510667))

(assert (= (and b!2510669 res!1061360) b!2510664))

(assert (= (and b!2510667 c!399922) b!2510665))

(assert (= (and b!2510667 (not c!399922)) b!2510663))

(assert (= (and b!2510665 res!1061361) b!2510662))

(assert (= (and b!2510663 (not res!1061359)) b!2510668))

(assert (= (and b!2510668 res!1061363) b!2510666))

(assert (= (or b!2510665 b!2510666) bm!155710))

(assert (= (or b!2510662 b!2510668) bm!155709))

(assert (= (or b!2510664 bm!155710) bm!155708))

(declare-fun m!2869503 () Bool)

(assert (=> bm!155708 m!2869503))

(declare-fun m!2869505 () Bool)

(assert (=> bm!155709 m!2869505))

(declare-fun m!2869507 () Bool)

(assert (=> b!2510669 m!2869507))

(assert (=> start!244856 d!716605))

(declare-fun d!716609 () Bool)

(assert (=> d!716609 (= (nullable!2380 (derivative!158 (derivativeStep!2032 r!27340 c!14016) tl!4068)) (nullableFct!627 (derivative!158 (derivativeStep!2032 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468765 () Bool)

(assert (= bs!468765 d!716609))

(assert (=> bs!468765 m!2869481))

(declare-fun m!2869509 () Bool)

(assert (=> bs!468765 m!2869509))

(assert (=> b!2510590 d!716609))

(declare-fun d!716611 () Bool)

(declare-fun lt!897652 () Regex!7463)

(assert (=> d!716611 (validRegex!3089 lt!897652)))

(declare-fun e!1591195 () Regex!7463)

(assert (=> d!716611 (= lt!897652 e!1591195)))

(declare-fun c!399925 () Bool)

(assert (=> d!716611 (= c!399925 ((_ is Cons!29428) tl!4068))))

(assert (=> d!716611 (validRegex!3089 (derivativeStep!2032 r!27340 c!14016))))

(assert (=> d!716611 (= (derivative!158 (derivativeStep!2032 r!27340 c!14016) tl!4068) lt!897652)))

(declare-fun b!2510674 () Bool)

(assert (=> b!2510674 (= e!1591195 (derivative!158 (derivativeStep!2032 (derivativeStep!2032 r!27340 c!14016) (h!34848 tl!4068)) (t!211227 tl!4068)))))

(declare-fun b!2510675 () Bool)

(assert (=> b!2510675 (= e!1591195 (derivativeStep!2032 r!27340 c!14016))))

(assert (= (and d!716611 c!399925) b!2510674))

(assert (= (and d!716611 (not c!399925)) b!2510675))

(declare-fun m!2869511 () Bool)

(assert (=> d!716611 m!2869511))

(assert (=> d!716611 m!2869479))

(declare-fun m!2869513 () Bool)

(assert (=> d!716611 m!2869513))

(assert (=> b!2510674 m!2869479))

(declare-fun m!2869515 () Bool)

(assert (=> b!2510674 m!2869515))

(assert (=> b!2510674 m!2869515))

(declare-fun m!2869517 () Bool)

(assert (=> b!2510674 m!2869517))

(assert (=> b!2510590 d!716611))

(declare-fun b!2510724 () Bool)

(declare-fun c!399945 () Bool)

(assert (=> b!2510724 (= c!399945 (nullable!2380 (regOne!15438 r!27340)))))

(declare-fun e!1591221 () Regex!7463)

(declare-fun e!1591220 () Regex!7463)

(assert (=> b!2510724 (= e!1591221 e!1591220)))

(declare-fun b!2510725 () Bool)

(declare-fun call!155724 () Regex!7463)

(assert (=> b!2510725 (= e!1591221 (Concat!12159 call!155724 r!27340))))

(declare-fun c!399946 () Bool)

(declare-fun call!155725 () Regex!7463)

(declare-fun c!399943 () Bool)

(declare-fun bm!155719 () Bool)

(assert (=> bm!155719 (= call!155725 (derivativeStep!2032 (ite c!399943 (regOne!15439 r!27340) (ite c!399946 (reg!7792 r!27340) (regOne!15438 r!27340))) c!14016))))

(declare-fun bm!155720 () Bool)

(assert (=> bm!155720 (= call!155724 call!155725)))

(declare-fun call!155726 () Regex!7463)

(declare-fun b!2510726 () Bool)

(declare-fun call!155727 () Regex!7463)

(assert (=> b!2510726 (= e!1591220 (Union!7463 (Concat!12159 call!155727 (regTwo!15438 r!27340)) call!155726))))

(declare-fun b!2510727 () Bool)

(declare-fun e!1591224 () Regex!7463)

(assert (=> b!2510727 (= e!1591224 (ite (= c!14016 (c!399907 r!27340)) EmptyExpr!7463 EmptyLang!7463))))

(declare-fun b!2510728 () Bool)

(assert (=> b!2510728 (= e!1591220 (Union!7463 (Concat!12159 call!155727 (regTwo!15438 r!27340)) EmptyLang!7463))))

(declare-fun b!2510729 () Bool)

(declare-fun e!1591223 () Regex!7463)

(assert (=> b!2510729 (= e!1591223 EmptyLang!7463)))

(declare-fun d!716613 () Bool)

(declare-fun lt!897657 () Regex!7463)

(assert (=> d!716613 (validRegex!3089 lt!897657)))

(assert (=> d!716613 (= lt!897657 e!1591223)))

(declare-fun c!399942 () Bool)

(assert (=> d!716613 (= c!399942 (or ((_ is EmptyExpr!7463) r!27340) ((_ is EmptyLang!7463) r!27340)))))

(assert (=> d!716613 (validRegex!3089 r!27340)))

(assert (=> d!716613 (= (derivativeStep!2032 r!27340 c!14016) lt!897657)))

(declare-fun b!2510730 () Bool)

(assert (=> b!2510730 (= c!399943 ((_ is Union!7463) r!27340))))

(declare-fun e!1591222 () Regex!7463)

(assert (=> b!2510730 (= e!1591224 e!1591222)))

(declare-fun b!2510731 () Bool)

(assert (=> b!2510731 (= e!1591222 (Union!7463 call!155725 call!155726))))

(declare-fun b!2510732 () Bool)

(assert (=> b!2510732 (= e!1591223 e!1591224)))

(declare-fun c!399944 () Bool)

(assert (=> b!2510732 (= c!399944 ((_ is ElementMatch!7463) r!27340))))

(declare-fun b!2510733 () Bool)

(assert (=> b!2510733 (= e!1591222 e!1591221)))

(assert (=> b!2510733 (= c!399946 ((_ is Star!7463) r!27340))))

(declare-fun bm!155721 () Bool)

(assert (=> bm!155721 (= call!155726 (derivativeStep!2032 (ite c!399943 (regTwo!15439 r!27340) (regTwo!15438 r!27340)) c!14016))))

(declare-fun bm!155722 () Bool)

(assert (=> bm!155722 (= call!155727 call!155724)))

(assert (= (and d!716613 c!399942) b!2510729))

(assert (= (and d!716613 (not c!399942)) b!2510732))

(assert (= (and b!2510732 c!399944) b!2510727))

(assert (= (and b!2510732 (not c!399944)) b!2510730))

(assert (= (and b!2510730 c!399943) b!2510731))

(assert (= (and b!2510730 (not c!399943)) b!2510733))

(assert (= (and b!2510733 c!399946) b!2510725))

(assert (= (and b!2510733 (not c!399946)) b!2510724))

(assert (= (and b!2510724 c!399945) b!2510726))

(assert (= (and b!2510724 (not c!399945)) b!2510728))

(assert (= (or b!2510726 b!2510728) bm!155722))

(assert (= (or b!2510725 bm!155722) bm!155720))

(assert (= (or b!2510731 b!2510726) bm!155721))

(assert (= (or b!2510731 bm!155720) bm!155719))

(assert (=> b!2510724 m!2869477))

(declare-fun m!2869519 () Bool)

(assert (=> bm!155719 m!2869519))

(declare-fun m!2869521 () Bool)

(assert (=> d!716613 m!2869521))

(assert (=> d!716613 m!2869475))

(declare-fun m!2869523 () Bool)

(assert (=> bm!155721 m!2869523))

(assert (=> b!2510590 d!716613))

(declare-fun b!2510734 () Bool)

(declare-fun c!399950 () Bool)

(assert (=> b!2510734 (= c!399950 (nullable!2380 (regOne!15438 (regOne!15438 r!27340))))))

(declare-fun e!1591226 () Regex!7463)

(declare-fun e!1591225 () Regex!7463)

(assert (=> b!2510734 (= e!1591226 e!1591225)))

(declare-fun b!2510735 () Bool)

(declare-fun call!155730 () Regex!7463)

(assert (=> b!2510735 (= e!1591226 (Concat!12159 call!155730 (regOne!15438 r!27340)))))

(declare-fun c!399948 () Bool)

(declare-fun call!155731 () Regex!7463)

(declare-fun c!399951 () Bool)

(declare-fun bm!155725 () Bool)

(assert (=> bm!155725 (= call!155731 (derivativeStep!2032 (ite c!399948 (regOne!15439 (regOne!15438 r!27340)) (ite c!399951 (reg!7792 (regOne!15438 r!27340)) (regOne!15438 (regOne!15438 r!27340)))) c!14016))))

(declare-fun bm!155726 () Bool)

(assert (=> bm!155726 (= call!155730 call!155731)))

(declare-fun b!2510736 () Bool)

(declare-fun call!155732 () Regex!7463)

(declare-fun call!155733 () Regex!7463)

(assert (=> b!2510736 (= e!1591225 (Union!7463 (Concat!12159 call!155733 (regTwo!15438 (regOne!15438 r!27340))) call!155732))))

(declare-fun b!2510737 () Bool)

(declare-fun e!1591229 () Regex!7463)

(assert (=> b!2510737 (= e!1591229 (ite (= c!14016 (c!399907 (regOne!15438 r!27340))) EmptyExpr!7463 EmptyLang!7463))))

(declare-fun b!2510738 () Bool)

(assert (=> b!2510738 (= e!1591225 (Union!7463 (Concat!12159 call!155733 (regTwo!15438 (regOne!15438 r!27340))) EmptyLang!7463))))

(declare-fun b!2510739 () Bool)

(declare-fun e!1591228 () Regex!7463)

(assert (=> b!2510739 (= e!1591228 EmptyLang!7463)))

(declare-fun d!716615 () Bool)

(declare-fun lt!897658 () Regex!7463)

(assert (=> d!716615 (validRegex!3089 lt!897658)))

(assert (=> d!716615 (= lt!897658 e!1591228)))

(declare-fun c!399947 () Bool)

(assert (=> d!716615 (= c!399947 (or ((_ is EmptyExpr!7463) (regOne!15438 r!27340)) ((_ is EmptyLang!7463) (regOne!15438 r!27340))))))

(assert (=> d!716615 (validRegex!3089 (regOne!15438 r!27340))))

(assert (=> d!716615 (= (derivativeStep!2032 (regOne!15438 r!27340) c!14016) lt!897658)))

(declare-fun b!2510740 () Bool)

(assert (=> b!2510740 (= c!399948 ((_ is Union!7463) (regOne!15438 r!27340)))))

(declare-fun e!1591227 () Regex!7463)

(assert (=> b!2510740 (= e!1591229 e!1591227)))

(declare-fun b!2510741 () Bool)

(assert (=> b!2510741 (= e!1591227 (Union!7463 call!155731 call!155732))))

(declare-fun b!2510742 () Bool)

(assert (=> b!2510742 (= e!1591228 e!1591229)))

(declare-fun c!399949 () Bool)

(assert (=> b!2510742 (= c!399949 ((_ is ElementMatch!7463) (regOne!15438 r!27340)))))

(declare-fun b!2510743 () Bool)

(assert (=> b!2510743 (= e!1591227 e!1591226)))

(assert (=> b!2510743 (= c!399951 ((_ is Star!7463) (regOne!15438 r!27340)))))

(declare-fun bm!155727 () Bool)

(assert (=> bm!155727 (= call!155732 (derivativeStep!2032 (ite c!399948 (regTwo!15439 (regOne!15438 r!27340)) (regTwo!15438 (regOne!15438 r!27340))) c!14016))))

(declare-fun bm!155728 () Bool)

(assert (=> bm!155728 (= call!155733 call!155730)))

(assert (= (and d!716615 c!399947) b!2510739))

(assert (= (and d!716615 (not c!399947)) b!2510742))

(assert (= (and b!2510742 c!399949) b!2510737))

(assert (= (and b!2510742 (not c!399949)) b!2510740))

(assert (= (and b!2510740 c!399948) b!2510741))

(assert (= (and b!2510740 (not c!399948)) b!2510743))

(assert (= (and b!2510743 c!399951) b!2510735))

(assert (= (and b!2510743 (not c!399951)) b!2510734))

(assert (= (and b!2510734 c!399950) b!2510736))

(assert (= (and b!2510734 (not c!399950)) b!2510738))

(assert (= (or b!2510736 b!2510738) bm!155728))

(assert (= (or b!2510735 bm!155728) bm!155726))

(assert (= (or b!2510741 b!2510736) bm!155727))

(assert (= (or b!2510741 bm!155726) bm!155725))

(declare-fun m!2869525 () Bool)

(assert (=> b!2510734 m!2869525))

(declare-fun m!2869527 () Bool)

(assert (=> bm!155725 m!2869527))

(declare-fun m!2869529 () Bool)

(assert (=> d!716615 m!2869529))

(assert (=> d!716615 m!2869449))

(declare-fun m!2869531 () Bool)

(assert (=> bm!155727 m!2869531))

(assert (=> b!2510600 d!716615))

(declare-fun b!2510744 () Bool)

(declare-fun e!1591236 () Bool)

(declare-fun e!1591234 () Bool)

(assert (=> b!2510744 (= e!1591236 e!1591234)))

(declare-fun c!399952 () Bool)

(assert (=> b!2510744 (= c!399952 ((_ is EmptyLang!7463) lt!897642))))

(declare-fun bm!155729 () Bool)

(declare-fun call!155734 () Bool)

(assert (=> bm!155729 (= call!155734 (isEmpty!16883 tl!4068))))

(declare-fun b!2510745 () Bool)

(declare-fun lt!897659 () Bool)

(assert (=> b!2510745 (= e!1591234 (not lt!897659))))

(declare-fun d!716617 () Bool)

(assert (=> d!716617 e!1591236))

(declare-fun c!399954 () Bool)

(assert (=> d!716617 (= c!399954 ((_ is EmptyExpr!7463) lt!897642))))

(declare-fun e!1591233 () Bool)

(assert (=> d!716617 (= lt!897659 e!1591233)))

(declare-fun c!399953 () Bool)

(assert (=> d!716617 (= c!399953 (isEmpty!16883 tl!4068))))

(assert (=> d!716617 (validRegex!3089 lt!897642)))

(assert (=> d!716617 (= (matchR!3462 lt!897642 tl!4068) lt!897659)))

(declare-fun b!2510746 () Bool)

(declare-fun res!1061385 () Bool)

(declare-fun e!1591232 () Bool)

(assert (=> b!2510746 (=> res!1061385 e!1591232)))

(declare-fun e!1591230 () Bool)

(assert (=> b!2510746 (= res!1061385 e!1591230)))

(declare-fun res!1061380 () Bool)

(assert (=> b!2510746 (=> (not res!1061380) (not e!1591230))))

(assert (=> b!2510746 (= res!1061380 lt!897659)))

(declare-fun b!2510747 () Bool)

(declare-fun e!1591235 () Bool)

(declare-fun e!1591231 () Bool)

(assert (=> b!2510747 (= e!1591235 e!1591231)))

(declare-fun res!1061386 () Bool)

(assert (=> b!2510747 (=> res!1061386 e!1591231)))

(assert (=> b!2510747 (= res!1061386 call!155734)))

(declare-fun b!2510748 () Bool)

(declare-fun res!1061383 () Bool)

(assert (=> b!2510748 (=> res!1061383 e!1591231)))

(assert (=> b!2510748 (= res!1061383 (not (isEmpty!16883 (tail!4006 tl!4068))))))

(declare-fun b!2510749 () Bool)

(declare-fun res!1061387 () Bool)

(assert (=> b!2510749 (=> res!1061387 e!1591232)))

(assert (=> b!2510749 (= res!1061387 (not ((_ is ElementMatch!7463) lt!897642)))))

(assert (=> b!2510749 (= e!1591234 e!1591232)))

(declare-fun b!2510750 () Bool)

(assert (=> b!2510750 (= e!1591232 e!1591235)))

(declare-fun res!1061381 () Bool)

(assert (=> b!2510750 (=> (not res!1061381) (not e!1591235))))

(assert (=> b!2510750 (= res!1061381 (not lt!897659))))

(declare-fun b!2510751 () Bool)

(declare-fun res!1061382 () Bool)

(assert (=> b!2510751 (=> (not res!1061382) (not e!1591230))))

(assert (=> b!2510751 (= res!1061382 (isEmpty!16883 (tail!4006 tl!4068)))))

(declare-fun b!2510752 () Bool)

(assert (=> b!2510752 (= e!1591233 (matchR!3462 (derivativeStep!2032 lt!897642 (head!5729 tl!4068)) (tail!4006 tl!4068)))))

(declare-fun b!2510753 () Bool)

(assert (=> b!2510753 (= e!1591236 (= lt!897659 call!155734))))

(declare-fun b!2510754 () Bool)

(assert (=> b!2510754 (= e!1591233 (nullable!2380 lt!897642))))

(declare-fun b!2510755 () Bool)

(declare-fun res!1061384 () Bool)

(assert (=> b!2510755 (=> (not res!1061384) (not e!1591230))))

(assert (=> b!2510755 (= res!1061384 (not call!155734))))

(declare-fun b!2510756 () Bool)

(assert (=> b!2510756 (= e!1591231 (not (= (head!5729 tl!4068) (c!399907 lt!897642))))))

(declare-fun b!2510757 () Bool)

(assert (=> b!2510757 (= e!1591230 (= (head!5729 tl!4068) (c!399907 lt!897642)))))

(assert (= (and d!716617 c!399953) b!2510754))

(assert (= (and d!716617 (not c!399953)) b!2510752))

(assert (= (and d!716617 c!399954) b!2510753))

(assert (= (and d!716617 (not c!399954)) b!2510744))

(assert (= (and b!2510744 c!399952) b!2510745))

(assert (= (and b!2510744 (not c!399952)) b!2510749))

(assert (= (and b!2510749 (not res!1061387)) b!2510746))

(assert (= (and b!2510746 res!1061380) b!2510755))

(assert (= (and b!2510755 res!1061384) b!2510751))

(assert (= (and b!2510751 res!1061382) b!2510757))

(assert (= (and b!2510746 (not res!1061385)) b!2510750))

(assert (= (and b!2510750 res!1061381) b!2510747))

(assert (= (and b!2510747 (not res!1061386)) b!2510748))

(assert (= (and b!2510748 (not res!1061383)) b!2510756))

(assert (= (or b!2510753 b!2510755 b!2510747) bm!155729))

(declare-fun m!2869533 () Bool)

(assert (=> b!2510754 m!2869533))

(assert (=> b!2510748 m!2869487))

(assert (=> b!2510748 m!2869487))

(assert (=> b!2510748 m!2869489))

(assert (=> b!2510752 m!2869491))

(assert (=> b!2510752 m!2869491))

(declare-fun m!2869535 () Bool)

(assert (=> b!2510752 m!2869535))

(assert (=> b!2510752 m!2869487))

(assert (=> b!2510752 m!2869535))

(assert (=> b!2510752 m!2869487))

(declare-fun m!2869537 () Bool)

(assert (=> b!2510752 m!2869537))

(assert (=> d!716617 m!2869497))

(declare-fun m!2869539 () Bool)

(assert (=> d!716617 m!2869539))

(assert (=> b!2510757 m!2869491))

(assert (=> b!2510751 m!2869487))

(assert (=> b!2510751 m!2869487))

(assert (=> b!2510751 m!2869489))

(assert (=> b!2510756 m!2869491))

(assert (=> bm!155729 m!2869497))

(assert (=> b!2510600 d!716617))

(declare-fun d!716619 () Bool)

(declare-fun lt!897660 () Regex!7463)

(assert (=> d!716619 (validRegex!3089 lt!897660)))

(declare-fun e!1591237 () Regex!7463)

(assert (=> d!716619 (= lt!897660 e!1591237)))

(declare-fun c!399955 () Bool)

(assert (=> d!716619 (= c!399955 ((_ is Cons!29428) tl!4068))))

(assert (=> d!716619 (validRegex!3089 lt!897642)))

(assert (=> d!716619 (= (derivative!158 lt!897642 tl!4068) lt!897660)))

(declare-fun b!2510758 () Bool)

(assert (=> b!2510758 (= e!1591237 (derivative!158 (derivativeStep!2032 lt!897642 (h!34848 tl!4068)) (t!211227 tl!4068)))))

(declare-fun b!2510759 () Bool)

(assert (=> b!2510759 (= e!1591237 lt!897642)))

(assert (= (and d!716619 c!399955) b!2510758))

(assert (= (and d!716619 (not c!399955)) b!2510759))

(declare-fun m!2869541 () Bool)

(assert (=> d!716619 m!2869541))

(assert (=> d!716619 m!2869539))

(declare-fun m!2869543 () Bool)

(assert (=> b!2510758 m!2869543))

(assert (=> b!2510758 m!2869543))

(declare-fun m!2869545 () Bool)

(assert (=> b!2510758 m!2869545))

(assert (=> b!2510600 d!716619))

(declare-fun d!716621 () Bool)

(declare-fun e!1591242 () Bool)

(assert (=> d!716621 e!1591242))

(declare-fun res!1061392 () Bool)

(assert (=> d!716621 (=> res!1061392 e!1591242)))

(assert (=> d!716621 (= res!1061392 (matchR!3462 lt!897644 tl!4068))))

(declare-fun lt!897663 () Unit!43175)

(declare-fun choose!14851 (Regex!7463 Regex!7463 List!29528) Unit!43175)

(assert (=> d!716621 (= lt!897663 (choose!14851 lt!897644 EmptyLang!7463 tl!4068))))

(declare-fun e!1591243 () Bool)

(assert (=> d!716621 e!1591243))

(declare-fun res!1061393 () Bool)

(assert (=> d!716621 (=> (not res!1061393) (not e!1591243))))

(assert (=> d!716621 (= res!1061393 (validRegex!3089 lt!897644))))

(assert (=> d!716621 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!150 lt!897644 EmptyLang!7463 tl!4068) lt!897663)))

(declare-fun b!2510764 () Bool)

(assert (=> b!2510764 (= e!1591243 (validRegex!3089 EmptyLang!7463))))

(declare-fun b!2510765 () Bool)

(assert (=> b!2510765 (= e!1591242 (matchR!3462 EmptyLang!7463 tl!4068))))

(assert (= (and d!716621 res!1061393) b!2510764))

(assert (= (and d!716621 (not res!1061392)) b!2510765))

(assert (=> d!716621 m!2869471))

(declare-fun m!2869547 () Bool)

(assert (=> d!716621 m!2869547))

(declare-fun m!2869549 () Bool)

(assert (=> d!716621 m!2869549))

(assert (=> b!2510764 m!2869499))

(assert (=> b!2510765 m!2869447))

(assert (=> b!2510600 d!716621))

(declare-fun d!716623 () Bool)

(assert (=> d!716623 (= (matchR!3462 lt!897642 tl!4068) (matchR!3462 (derivative!158 lt!897642 tl!4068) Nil!29428))))

(declare-fun lt!897667 () Unit!43175)

(declare-fun choose!14852 (Regex!7463 List!29528) Unit!43175)

(assert (=> d!716623 (= lt!897667 (choose!14852 lt!897642 tl!4068))))

(assert (=> d!716623 (validRegex!3089 lt!897642)))

(assert (=> d!716623 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!108 lt!897642 tl!4068) lt!897667)))

(declare-fun bs!468766 () Bool)

(assert (= bs!468766 d!716623))

(assert (=> bs!468766 m!2869459))

(assert (=> bs!468766 m!2869473))

(assert (=> bs!468766 m!2869539))

(assert (=> bs!468766 m!2869459))

(assert (=> bs!468766 m!2869461))

(declare-fun m!2869551 () Bool)

(assert (=> bs!468766 m!2869551))

(assert (=> b!2510600 d!716623))

(declare-fun b!2510780 () Bool)

(declare-fun e!1591257 () Bool)

(declare-fun e!1591255 () Bool)

(assert (=> b!2510780 (= e!1591257 e!1591255)))

(declare-fun c!399959 () Bool)

(assert (=> b!2510780 (= c!399959 ((_ is EmptyLang!7463) lt!897644))))

(declare-fun bm!155731 () Bool)

(declare-fun call!155736 () Bool)

(assert (=> bm!155731 (= call!155736 (isEmpty!16883 tl!4068))))

(declare-fun b!2510781 () Bool)

(declare-fun lt!897668 () Bool)

(assert (=> b!2510781 (= e!1591255 (not lt!897668))))

(declare-fun d!716625 () Bool)

(assert (=> d!716625 e!1591257))

(declare-fun c!399961 () Bool)

(assert (=> d!716625 (= c!399961 ((_ is EmptyExpr!7463) lt!897644))))

(declare-fun e!1591254 () Bool)

(assert (=> d!716625 (= lt!897668 e!1591254)))

(declare-fun c!399960 () Bool)

(assert (=> d!716625 (= c!399960 (isEmpty!16883 tl!4068))))

(assert (=> d!716625 (validRegex!3089 lt!897644)))

(assert (=> d!716625 (= (matchR!3462 lt!897644 tl!4068) lt!897668)))

(declare-fun b!2510782 () Bool)

(declare-fun res!1061407 () Bool)

(declare-fun e!1591253 () Bool)

(assert (=> b!2510782 (=> res!1061407 e!1591253)))

(declare-fun e!1591251 () Bool)

(assert (=> b!2510782 (= res!1061407 e!1591251)))

(declare-fun res!1061402 () Bool)

(assert (=> b!2510782 (=> (not res!1061402) (not e!1591251))))

(assert (=> b!2510782 (= res!1061402 lt!897668)))

(declare-fun b!2510783 () Bool)

(declare-fun e!1591256 () Bool)

(declare-fun e!1591252 () Bool)

(assert (=> b!2510783 (= e!1591256 e!1591252)))

(declare-fun res!1061408 () Bool)

(assert (=> b!2510783 (=> res!1061408 e!1591252)))

(assert (=> b!2510783 (= res!1061408 call!155736)))

(declare-fun b!2510784 () Bool)

(declare-fun res!1061405 () Bool)

(assert (=> b!2510784 (=> res!1061405 e!1591252)))

(assert (=> b!2510784 (= res!1061405 (not (isEmpty!16883 (tail!4006 tl!4068))))))

(declare-fun b!2510785 () Bool)

(declare-fun res!1061409 () Bool)

(assert (=> b!2510785 (=> res!1061409 e!1591253)))

(assert (=> b!2510785 (= res!1061409 (not ((_ is ElementMatch!7463) lt!897644)))))

(assert (=> b!2510785 (= e!1591255 e!1591253)))

(declare-fun b!2510786 () Bool)

(assert (=> b!2510786 (= e!1591253 e!1591256)))

(declare-fun res!1061403 () Bool)

(assert (=> b!2510786 (=> (not res!1061403) (not e!1591256))))

(assert (=> b!2510786 (= res!1061403 (not lt!897668))))

(declare-fun b!2510787 () Bool)

(declare-fun res!1061404 () Bool)

(assert (=> b!2510787 (=> (not res!1061404) (not e!1591251))))

(assert (=> b!2510787 (= res!1061404 (isEmpty!16883 (tail!4006 tl!4068)))))

(declare-fun b!2510788 () Bool)

(assert (=> b!2510788 (= e!1591254 (matchR!3462 (derivativeStep!2032 lt!897644 (head!5729 tl!4068)) (tail!4006 tl!4068)))))

(declare-fun b!2510789 () Bool)

(assert (=> b!2510789 (= e!1591257 (= lt!897668 call!155736))))

(declare-fun b!2510790 () Bool)

(assert (=> b!2510790 (= e!1591254 (nullable!2380 lt!897644))))

(declare-fun b!2510791 () Bool)

(declare-fun res!1061406 () Bool)

(assert (=> b!2510791 (=> (not res!1061406) (not e!1591251))))

(assert (=> b!2510791 (= res!1061406 (not call!155736))))

(declare-fun b!2510792 () Bool)

(assert (=> b!2510792 (= e!1591252 (not (= (head!5729 tl!4068) (c!399907 lt!897644))))))

(declare-fun b!2510793 () Bool)

(assert (=> b!2510793 (= e!1591251 (= (head!5729 tl!4068) (c!399907 lt!897644)))))

(assert (= (and d!716625 c!399960) b!2510790))

(assert (= (and d!716625 (not c!399960)) b!2510788))

(assert (= (and d!716625 c!399961) b!2510789))

(assert (= (and d!716625 (not c!399961)) b!2510780))

(assert (= (and b!2510780 c!399959) b!2510781))

(assert (= (and b!2510780 (not c!399959)) b!2510785))

(assert (= (and b!2510785 (not res!1061409)) b!2510782))

(assert (= (and b!2510782 res!1061402) b!2510791))

(assert (= (and b!2510791 res!1061406) b!2510787))

(assert (= (and b!2510787 res!1061404) b!2510793))

(assert (= (and b!2510782 (not res!1061407)) b!2510786))

(assert (= (and b!2510786 res!1061403) b!2510783))

(assert (= (and b!2510783 (not res!1061408)) b!2510784))

(assert (= (and b!2510784 (not res!1061405)) b!2510792))

(assert (= (or b!2510789 b!2510791 b!2510783) bm!155731))

(declare-fun m!2869553 () Bool)

(assert (=> b!2510790 m!2869553))

(assert (=> b!2510784 m!2869487))

(assert (=> b!2510784 m!2869487))

(assert (=> b!2510784 m!2869489))

(assert (=> b!2510788 m!2869491))

(assert (=> b!2510788 m!2869491))

(declare-fun m!2869555 () Bool)

(assert (=> b!2510788 m!2869555))

(assert (=> b!2510788 m!2869487))

(assert (=> b!2510788 m!2869555))

(assert (=> b!2510788 m!2869487))

(declare-fun m!2869557 () Bool)

(assert (=> b!2510788 m!2869557))

(assert (=> d!716625 m!2869497))

(assert (=> d!716625 m!2869549))

(assert (=> b!2510793 m!2869491))

(assert (=> b!2510787 m!2869487))

(assert (=> b!2510787 m!2869487))

(assert (=> b!2510787 m!2869489))

(assert (=> b!2510792 m!2869491))

(assert (=> bm!155731 m!2869497))

(assert (=> b!2510600 d!716625))

(declare-fun d!716627 () Bool)

(assert (=> d!716627 (= (derivative!158 EmptyLang!7463 tl!4068) EmptyLang!7463)))

(declare-fun lt!897671 () Unit!43175)

(declare-fun choose!14853 (Regex!7463 List!29528) Unit!43175)

(assert (=> d!716627 (= lt!897671 (choose!14853 EmptyLang!7463 tl!4068))))

(assert (=> d!716627 (= EmptyLang!7463 EmptyLang!7463)))

(assert (=> d!716627 (= (lemmaEmptyLangDerivativeIsAFixPoint!10 EmptyLang!7463 tl!4068) lt!897671)))

(declare-fun bs!468767 () Bool)

(assert (= bs!468767 d!716627))

(assert (=> bs!468767 m!2869465))

(declare-fun m!2869575 () Bool)

(assert (=> bs!468767 m!2869575))

(assert (=> b!2510600 d!716627))

(declare-fun b!2510794 () Bool)

(declare-fun e!1591264 () Bool)

(declare-fun e!1591262 () Bool)

(assert (=> b!2510794 (= e!1591264 e!1591262)))

(declare-fun c!399962 () Bool)

(assert (=> b!2510794 (= c!399962 ((_ is EmptyLang!7463) (derivative!158 lt!897642 tl!4068)))))

(declare-fun bm!155732 () Bool)

(declare-fun call!155737 () Bool)

(assert (=> bm!155732 (= call!155737 (isEmpty!16883 Nil!29428))))

(declare-fun b!2510795 () Bool)

(declare-fun lt!897672 () Bool)

(assert (=> b!2510795 (= e!1591262 (not lt!897672))))

(declare-fun d!716631 () Bool)

(assert (=> d!716631 e!1591264))

(declare-fun c!399964 () Bool)

(assert (=> d!716631 (= c!399964 ((_ is EmptyExpr!7463) (derivative!158 lt!897642 tl!4068)))))

(declare-fun e!1591261 () Bool)

(assert (=> d!716631 (= lt!897672 e!1591261)))

(declare-fun c!399963 () Bool)

(assert (=> d!716631 (= c!399963 (isEmpty!16883 Nil!29428))))

(assert (=> d!716631 (validRegex!3089 (derivative!158 lt!897642 tl!4068))))

(assert (=> d!716631 (= (matchR!3462 (derivative!158 lt!897642 tl!4068) Nil!29428) lt!897672)))

(declare-fun b!2510796 () Bool)

(declare-fun res!1061415 () Bool)

(declare-fun e!1591260 () Bool)

(assert (=> b!2510796 (=> res!1061415 e!1591260)))

(declare-fun e!1591258 () Bool)

(assert (=> b!2510796 (= res!1061415 e!1591258)))

(declare-fun res!1061410 () Bool)

(assert (=> b!2510796 (=> (not res!1061410) (not e!1591258))))

(assert (=> b!2510796 (= res!1061410 lt!897672)))

(declare-fun b!2510797 () Bool)

(declare-fun e!1591263 () Bool)

(declare-fun e!1591259 () Bool)

(assert (=> b!2510797 (= e!1591263 e!1591259)))

(declare-fun res!1061416 () Bool)

(assert (=> b!2510797 (=> res!1061416 e!1591259)))

(assert (=> b!2510797 (= res!1061416 call!155737)))

(declare-fun b!2510798 () Bool)

(declare-fun res!1061413 () Bool)

(assert (=> b!2510798 (=> res!1061413 e!1591259)))

(assert (=> b!2510798 (= res!1061413 (not (isEmpty!16883 (tail!4006 Nil!29428))))))

(declare-fun b!2510799 () Bool)

(declare-fun res!1061417 () Bool)

(assert (=> b!2510799 (=> res!1061417 e!1591260)))

(assert (=> b!2510799 (= res!1061417 (not ((_ is ElementMatch!7463) (derivative!158 lt!897642 tl!4068))))))

(assert (=> b!2510799 (= e!1591262 e!1591260)))

(declare-fun b!2510800 () Bool)

(assert (=> b!2510800 (= e!1591260 e!1591263)))

(declare-fun res!1061411 () Bool)

(assert (=> b!2510800 (=> (not res!1061411) (not e!1591263))))

(assert (=> b!2510800 (= res!1061411 (not lt!897672))))

(declare-fun b!2510801 () Bool)

(declare-fun res!1061412 () Bool)

(assert (=> b!2510801 (=> (not res!1061412) (not e!1591258))))

(assert (=> b!2510801 (= res!1061412 (isEmpty!16883 (tail!4006 Nil!29428)))))

(declare-fun b!2510802 () Bool)

(assert (=> b!2510802 (= e!1591261 (matchR!3462 (derivativeStep!2032 (derivative!158 lt!897642 tl!4068) (head!5729 Nil!29428)) (tail!4006 Nil!29428)))))

(declare-fun b!2510803 () Bool)

(assert (=> b!2510803 (= e!1591264 (= lt!897672 call!155737))))

(declare-fun b!2510804 () Bool)

(assert (=> b!2510804 (= e!1591261 (nullable!2380 (derivative!158 lt!897642 tl!4068)))))

(declare-fun b!2510805 () Bool)

(declare-fun res!1061414 () Bool)

(assert (=> b!2510805 (=> (not res!1061414) (not e!1591258))))

(assert (=> b!2510805 (= res!1061414 (not call!155737))))

(declare-fun b!2510806 () Bool)

(assert (=> b!2510806 (= e!1591259 (not (= (head!5729 Nil!29428) (c!399907 (derivative!158 lt!897642 tl!4068)))))))

(declare-fun b!2510807 () Bool)

(assert (=> b!2510807 (= e!1591258 (= (head!5729 Nil!29428) (c!399907 (derivative!158 lt!897642 tl!4068))))))

(assert (= (and d!716631 c!399963) b!2510804))

(assert (= (and d!716631 (not c!399963)) b!2510802))

(assert (= (and d!716631 c!399964) b!2510803))

(assert (= (and d!716631 (not c!399964)) b!2510794))

(assert (= (and b!2510794 c!399962) b!2510795))

(assert (= (and b!2510794 (not c!399962)) b!2510799))

(assert (= (and b!2510799 (not res!1061417)) b!2510796))

(assert (= (and b!2510796 res!1061410) b!2510805))

(assert (= (and b!2510805 res!1061414) b!2510801))

(assert (= (and b!2510801 res!1061412) b!2510807))

(assert (= (and b!2510796 (not res!1061415)) b!2510800))

(assert (= (and b!2510800 res!1061411) b!2510797))

(assert (= (and b!2510797 (not res!1061416)) b!2510798))

(assert (= (and b!2510798 (not res!1061413)) b!2510806))

(assert (= (or b!2510803 b!2510805 b!2510797) bm!155732))

(assert (=> b!2510804 m!2869459))

(declare-fun m!2869579 () Bool)

(assert (=> b!2510804 m!2869579))

(declare-fun m!2869581 () Bool)

(assert (=> b!2510798 m!2869581))

(assert (=> b!2510798 m!2869581))

(declare-fun m!2869583 () Bool)

(assert (=> b!2510798 m!2869583))

(declare-fun m!2869585 () Bool)

(assert (=> b!2510802 m!2869585))

(assert (=> b!2510802 m!2869459))

(assert (=> b!2510802 m!2869585))

(declare-fun m!2869587 () Bool)

(assert (=> b!2510802 m!2869587))

(assert (=> b!2510802 m!2869581))

(assert (=> b!2510802 m!2869587))

(assert (=> b!2510802 m!2869581))

(declare-fun m!2869589 () Bool)

(assert (=> b!2510802 m!2869589))

(declare-fun m!2869591 () Bool)

(assert (=> d!716631 m!2869591))

(assert (=> d!716631 m!2869459))

(declare-fun m!2869593 () Bool)

(assert (=> d!716631 m!2869593))

(assert (=> b!2510807 m!2869585))

(assert (=> b!2510801 m!2869581))

(assert (=> b!2510801 m!2869581))

(assert (=> b!2510801 m!2869583))

(assert (=> b!2510806 m!2869585))

(assert (=> bm!155732 m!2869591))

(assert (=> b!2510600 d!716631))

(declare-fun d!716635 () Bool)

(declare-fun lt!897673 () Regex!7463)

(assert (=> d!716635 (validRegex!3089 lt!897673)))

(declare-fun e!1591265 () Regex!7463)

(assert (=> d!716635 (= lt!897673 e!1591265)))

(declare-fun c!399965 () Bool)

(assert (=> d!716635 (= c!399965 ((_ is Cons!29428) tl!4068))))

(assert (=> d!716635 (validRegex!3089 EmptyLang!7463)))

(assert (=> d!716635 (= (derivative!158 EmptyLang!7463 tl!4068) lt!897673)))

(declare-fun b!2510808 () Bool)

(assert (=> b!2510808 (= e!1591265 (derivative!158 (derivativeStep!2032 EmptyLang!7463 (h!34848 tl!4068)) (t!211227 tl!4068)))))

(declare-fun b!2510809 () Bool)

(assert (=> b!2510809 (= e!1591265 EmptyLang!7463)))

(assert (= (and d!716635 c!399965) b!2510808))

(assert (= (and d!716635 (not c!399965)) b!2510809))

(declare-fun m!2869595 () Bool)

(assert (=> d!716635 m!2869595))

(assert (=> d!716635 m!2869499))

(declare-fun m!2869597 () Bool)

(assert (=> b!2510808 m!2869597))

(assert (=> b!2510808 m!2869597))

(declare-fun m!2869599 () Bool)

(assert (=> b!2510808 m!2869599))

(assert (=> b!2510600 d!716635))

(declare-fun bm!155733 () Bool)

(declare-fun call!155739 () Bool)

(declare-fun c!399966 () Bool)

(declare-fun c!399967 () Bool)

(assert (=> bm!155733 (= call!155739 (validRegex!3089 (ite c!399966 (reg!7792 (regOne!15438 r!27340)) (ite c!399967 (regOne!15439 (regOne!15438 r!27340)) (regTwo!15438 (regOne!15438 r!27340))))))))

(declare-fun b!2510810 () Bool)

(declare-fun e!1591269 () Bool)

(declare-fun e!1591267 () Bool)

(assert (=> b!2510810 (= e!1591269 e!1591267)))

(assert (=> b!2510810 (= c!399966 ((_ is Star!7463) (regOne!15438 r!27340)))))

(declare-fun b!2510811 () Bool)

(declare-fun e!1591268 () Bool)

(declare-fun call!155740 () Bool)

(assert (=> b!2510811 (= e!1591268 call!155740)))

(declare-fun b!2510813 () Bool)

(declare-fun e!1591272 () Bool)

(assert (=> b!2510813 (= e!1591272 call!155739)))

(declare-fun bm!155734 () Bool)

(assert (=> bm!155734 (= call!155740 (validRegex!3089 (ite c!399967 (regTwo!15439 (regOne!15438 r!27340)) (regOne!15438 (regOne!15438 r!27340)))))))

(declare-fun b!2510814 () Bool)

(declare-fun res!1061420 () Bool)

(assert (=> b!2510814 (=> (not res!1061420) (not e!1591268))))

(declare-fun call!155738 () Bool)

(assert (=> b!2510814 (= res!1061420 call!155738)))

(declare-fun e!1591271 () Bool)

(assert (=> b!2510814 (= e!1591271 e!1591268)))

(declare-fun bm!155735 () Bool)

(assert (=> bm!155735 (= call!155738 call!155739)))

(declare-fun b!2510815 () Bool)

(declare-fun e!1591266 () Bool)

(assert (=> b!2510815 (= e!1591266 call!155738)))

(declare-fun b!2510816 () Bool)

(assert (=> b!2510816 (= e!1591267 e!1591271)))

(assert (=> b!2510816 (= c!399967 ((_ is Union!7463) (regOne!15438 r!27340)))))

(declare-fun b!2510812 () Bool)

(declare-fun res!1061418 () Bool)

(declare-fun e!1591270 () Bool)

(assert (=> b!2510812 (=> res!1061418 e!1591270)))

(assert (=> b!2510812 (= res!1061418 (not ((_ is Concat!12159) (regOne!15438 r!27340))))))

(assert (=> b!2510812 (= e!1591271 e!1591270)))

(declare-fun d!716637 () Bool)

(declare-fun res!1061421 () Bool)

(assert (=> d!716637 (=> res!1061421 e!1591269)))

(assert (=> d!716637 (= res!1061421 ((_ is ElementMatch!7463) (regOne!15438 r!27340)))))

(assert (=> d!716637 (= (validRegex!3089 (regOne!15438 r!27340)) e!1591269)))

(declare-fun b!2510817 () Bool)

(assert (=> b!2510817 (= e!1591270 e!1591266)))

(declare-fun res!1061422 () Bool)

(assert (=> b!2510817 (=> (not res!1061422) (not e!1591266))))

(assert (=> b!2510817 (= res!1061422 call!155740)))

(declare-fun b!2510818 () Bool)

(assert (=> b!2510818 (= e!1591267 e!1591272)))

(declare-fun res!1061419 () Bool)

(assert (=> b!2510818 (= res!1061419 (not (nullable!2380 (reg!7792 (regOne!15438 r!27340)))))))

(assert (=> b!2510818 (=> (not res!1061419) (not e!1591272))))

(assert (= (and d!716637 (not res!1061421)) b!2510810))

(assert (= (and b!2510810 c!399966) b!2510818))

(assert (= (and b!2510810 (not c!399966)) b!2510816))

(assert (= (and b!2510818 res!1061419) b!2510813))

(assert (= (and b!2510816 c!399967) b!2510814))

(assert (= (and b!2510816 (not c!399967)) b!2510812))

(assert (= (and b!2510814 res!1061420) b!2510811))

(assert (= (and b!2510812 (not res!1061418)) b!2510817))

(assert (= (and b!2510817 res!1061422) b!2510815))

(assert (= (or b!2510814 b!2510815) bm!155735))

(assert (= (or b!2510811 b!2510817) bm!155734))

(assert (= (or b!2510813 bm!155735) bm!155733))

(declare-fun m!2869601 () Bool)

(assert (=> bm!155733 m!2869601))

(declare-fun m!2869603 () Bool)

(assert (=> bm!155734 m!2869603))

(declare-fun m!2869605 () Bool)

(assert (=> b!2510818 m!2869605))

(assert (=> b!2510594 d!716637))

(declare-fun d!716639 () Bool)

(declare-fun isEmpty!16886 (Option!5848) Bool)

(assert (=> d!716639 (= (isDefined!4670 (findConcatSeparation!870 lt!897641 (regTwo!15438 r!27340) Nil!29428 tl!4068 tl!4068)) (not (isEmpty!16886 (findConcatSeparation!870 lt!897641 (regTwo!15438 r!27340) Nil!29428 tl!4068 tl!4068))))))

(declare-fun bs!468769 () Bool)

(assert (= bs!468769 d!716639))

(assert (=> bs!468769 m!2869451))

(declare-fun m!2869607 () Bool)

(assert (=> bs!468769 m!2869607))

(assert (=> b!2510594 d!716639))

(declare-fun b!2510843 () Bool)

(declare-fun e!1591290 () Option!5848)

(declare-fun e!1591286 () Option!5848)

(assert (=> b!2510843 (= e!1591290 e!1591286)))

(declare-fun c!399975 () Bool)

(assert (=> b!2510843 (= c!399975 ((_ is Nil!29428) tl!4068))))

(declare-fun b!2510844 () Bool)

(declare-fun res!1061434 () Bool)

(declare-fun e!1591287 () Bool)

(assert (=> b!2510844 (=> (not res!1061434) (not e!1591287))))

(declare-fun lt!897683 () Option!5848)

(declare-fun get!9160 (Option!5848) tuple2!29456)

(assert (=> b!2510844 (= res!1061434 (matchR!3462 (regTwo!15438 r!27340) (_2!17270 (get!9160 lt!897683))))))

(declare-fun b!2510845 () Bool)

(declare-fun res!1061437 () Bool)

(assert (=> b!2510845 (=> (not res!1061437) (not e!1591287))))

(assert (=> b!2510845 (= res!1061437 (matchR!3462 lt!897641 (_1!17270 (get!9160 lt!897683))))))

(declare-fun b!2510846 () Bool)

(assert (=> b!2510846 (= e!1591286 None!5847)))

(declare-fun d!716641 () Bool)

(declare-fun e!1591289 () Bool)

(assert (=> d!716641 e!1591289))

(declare-fun res!1061435 () Bool)

(assert (=> d!716641 (=> res!1061435 e!1591289)))

(assert (=> d!716641 (= res!1061435 e!1591287)))

(declare-fun res!1061433 () Bool)

(assert (=> d!716641 (=> (not res!1061433) (not e!1591287))))

(assert (=> d!716641 (= res!1061433 (isDefined!4670 lt!897683))))

(assert (=> d!716641 (= lt!897683 e!1591290)))

(declare-fun c!399976 () Bool)

(declare-fun e!1591288 () Bool)

(assert (=> d!716641 (= c!399976 e!1591288)))

(declare-fun res!1061436 () Bool)

(assert (=> d!716641 (=> (not res!1061436) (not e!1591288))))

(assert (=> d!716641 (= res!1061436 (matchR!3462 lt!897641 Nil!29428))))

(assert (=> d!716641 (validRegex!3089 lt!897641)))

(assert (=> d!716641 (= (findConcatSeparation!870 lt!897641 (regTwo!15438 r!27340) Nil!29428 tl!4068 tl!4068) lt!897683)))

(declare-fun b!2510847 () Bool)

(assert (=> b!2510847 (= e!1591289 (not (isDefined!4670 lt!897683)))))

(declare-fun b!2510848 () Bool)

(declare-fun lt!897685 () Unit!43175)

(declare-fun lt!897684 () Unit!43175)

(assert (=> b!2510848 (= lt!897685 lt!897684)))

(declare-fun ++!7199 (List!29528 List!29528) List!29528)

(assert (=> b!2510848 (= (++!7199 (++!7199 Nil!29428 (Cons!29428 (h!34848 tl!4068) Nil!29428)) (t!211227 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!745 (List!29528 C!15084 List!29528 List!29528) Unit!43175)

(assert (=> b!2510848 (= lt!897684 (lemmaMoveElementToOtherListKeepsConcatEq!745 Nil!29428 (h!34848 tl!4068) (t!211227 tl!4068) tl!4068))))

(assert (=> b!2510848 (= e!1591286 (findConcatSeparation!870 lt!897641 (regTwo!15438 r!27340) (++!7199 Nil!29428 (Cons!29428 (h!34848 tl!4068) Nil!29428)) (t!211227 tl!4068) tl!4068))))

(declare-fun b!2510849 () Bool)

(assert (=> b!2510849 (= e!1591287 (= (++!7199 (_1!17270 (get!9160 lt!897683)) (_2!17270 (get!9160 lt!897683))) tl!4068))))

(declare-fun b!2510850 () Bool)

(assert (=> b!2510850 (= e!1591290 (Some!5847 (tuple2!29457 Nil!29428 tl!4068)))))

(declare-fun b!2510851 () Bool)

(assert (=> b!2510851 (= e!1591288 (matchR!3462 (regTwo!15438 r!27340) tl!4068))))

(assert (= (and d!716641 res!1061436) b!2510851))

(assert (= (and d!716641 c!399976) b!2510850))

(assert (= (and d!716641 (not c!399976)) b!2510843))

(assert (= (and b!2510843 c!399975) b!2510846))

(assert (= (and b!2510843 (not c!399975)) b!2510848))

(assert (= (and d!716641 res!1061433) b!2510845))

(assert (= (and b!2510845 res!1061437) b!2510844))

(assert (= (and b!2510844 res!1061434) b!2510849))

(assert (= (and d!716641 (not res!1061435)) b!2510847))

(declare-fun m!2869617 () Bool)

(assert (=> b!2510849 m!2869617))

(declare-fun m!2869619 () Bool)

(assert (=> b!2510849 m!2869619))

(assert (=> b!2510845 m!2869617))

(declare-fun m!2869621 () Bool)

(assert (=> b!2510845 m!2869621))

(declare-fun m!2869623 () Bool)

(assert (=> b!2510847 m!2869623))

(declare-fun m!2869625 () Bool)

(assert (=> b!2510848 m!2869625))

(assert (=> b!2510848 m!2869625))

(declare-fun m!2869627 () Bool)

(assert (=> b!2510848 m!2869627))

(declare-fun m!2869629 () Bool)

(assert (=> b!2510848 m!2869629))

(assert (=> b!2510848 m!2869625))

(declare-fun m!2869631 () Bool)

(assert (=> b!2510848 m!2869631))

(declare-fun m!2869633 () Bool)

(assert (=> b!2510851 m!2869633))

(assert (=> d!716641 m!2869623))

(declare-fun m!2869635 () Bool)

(assert (=> d!716641 m!2869635))

(declare-fun m!2869637 () Bool)

(assert (=> d!716641 m!2869637))

(assert (=> b!2510844 m!2869617))

(declare-fun m!2869639 () Bool)

(assert (=> b!2510844 m!2869639))

(assert (=> b!2510594 d!716641))

(declare-fun d!716645 () Bool)

(assert (=> d!716645 (isDefined!4670 (findConcatSeparation!870 lt!897641 (regTwo!15438 r!27340) Nil!29428 tl!4068 tl!4068))))

(declare-fun lt!897690 () Unit!43175)

(declare-fun choose!14857 (Regex!7463 Regex!7463 List!29528) Unit!43175)

(assert (=> d!716645 (= lt!897690 (choose!14857 lt!897641 (regTwo!15438 r!27340) tl!4068))))

(assert (=> d!716645 (validRegex!3089 lt!897641)))

(assert (=> d!716645 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!152 lt!897641 (regTwo!15438 r!27340) tl!4068) lt!897690)))

(declare-fun bs!468770 () Bool)

(assert (= bs!468770 d!716645))

(assert (=> bs!468770 m!2869451))

(assert (=> bs!468770 m!2869451))

(assert (=> bs!468770 m!2869453))

(declare-fun m!2869641 () Bool)

(assert (=> bs!468770 m!2869641))

(assert (=> bs!468770 m!2869637))

(assert (=> b!2510594 d!716645))

(declare-fun b!2510882 () Bool)

(declare-fun e!1591303 () Bool)

(assert (=> b!2510882 (= e!1591303 tp_is_empty!12781)))

(assert (=> b!2510599 (= tp!802987 e!1591303)))

(declare-fun b!2510883 () Bool)

(declare-fun tp!803001 () Bool)

(declare-fun tp!803005 () Bool)

(assert (=> b!2510883 (= e!1591303 (and tp!803001 tp!803005))))

(declare-fun b!2510885 () Bool)

(declare-fun tp!803004 () Bool)

(declare-fun tp!803002 () Bool)

(assert (=> b!2510885 (= e!1591303 (and tp!803004 tp!803002))))

(declare-fun b!2510884 () Bool)

(declare-fun tp!803003 () Bool)

(assert (=> b!2510884 (= e!1591303 tp!803003)))

(assert (= (and b!2510599 ((_ is ElementMatch!7463) (regOne!15439 r!27340))) b!2510882))

(assert (= (and b!2510599 ((_ is Concat!12159) (regOne!15439 r!27340))) b!2510883))

(assert (= (and b!2510599 ((_ is Star!7463) (regOne!15439 r!27340))) b!2510884))

(assert (= (and b!2510599 ((_ is Union!7463) (regOne!15439 r!27340))) b!2510885))

(declare-fun b!2510886 () Bool)

(declare-fun e!1591304 () Bool)

(assert (=> b!2510886 (= e!1591304 tp_is_empty!12781)))

(assert (=> b!2510599 (= tp!802989 e!1591304)))

(declare-fun b!2510887 () Bool)

(declare-fun tp!803006 () Bool)

(declare-fun tp!803010 () Bool)

(assert (=> b!2510887 (= e!1591304 (and tp!803006 tp!803010))))

(declare-fun b!2510889 () Bool)

(declare-fun tp!803009 () Bool)

(declare-fun tp!803007 () Bool)

(assert (=> b!2510889 (= e!1591304 (and tp!803009 tp!803007))))

(declare-fun b!2510888 () Bool)

(declare-fun tp!803008 () Bool)

(assert (=> b!2510888 (= e!1591304 tp!803008)))

(assert (= (and b!2510599 ((_ is ElementMatch!7463) (regTwo!15439 r!27340))) b!2510886))

(assert (= (and b!2510599 ((_ is Concat!12159) (regTwo!15439 r!27340))) b!2510887))

(assert (= (and b!2510599 ((_ is Star!7463) (regTwo!15439 r!27340))) b!2510888))

(assert (= (and b!2510599 ((_ is Union!7463) (regTwo!15439 r!27340))) b!2510889))

(declare-fun b!2510894 () Bool)

(declare-fun e!1591307 () Bool)

(declare-fun tp!803013 () Bool)

(assert (=> b!2510894 (= e!1591307 (and tp_is_empty!12781 tp!803013))))

(assert (=> b!2510598 (= tp!802990 e!1591307)))

(assert (= (and b!2510598 ((_ is Cons!29428) (t!211227 tl!4068))) b!2510894))

(declare-fun b!2510895 () Bool)

(declare-fun e!1591308 () Bool)

(assert (=> b!2510895 (= e!1591308 tp_is_empty!12781)))

(assert (=> b!2510597 (= tp!802986 e!1591308)))

(declare-fun b!2510896 () Bool)

(declare-fun tp!803014 () Bool)

(declare-fun tp!803018 () Bool)

(assert (=> b!2510896 (= e!1591308 (and tp!803014 tp!803018))))

(declare-fun b!2510898 () Bool)

(declare-fun tp!803017 () Bool)

(declare-fun tp!803015 () Bool)

(assert (=> b!2510898 (= e!1591308 (and tp!803017 tp!803015))))

(declare-fun b!2510897 () Bool)

(declare-fun tp!803016 () Bool)

(assert (=> b!2510897 (= e!1591308 tp!803016)))

(assert (= (and b!2510597 ((_ is ElementMatch!7463) (reg!7792 r!27340))) b!2510895))

(assert (= (and b!2510597 ((_ is Concat!12159) (reg!7792 r!27340))) b!2510896))

(assert (= (and b!2510597 ((_ is Star!7463) (reg!7792 r!27340))) b!2510897))

(assert (= (and b!2510597 ((_ is Union!7463) (reg!7792 r!27340))) b!2510898))

(declare-fun b!2510899 () Bool)

(declare-fun e!1591309 () Bool)

(assert (=> b!2510899 (= e!1591309 tp_is_empty!12781)))

(assert (=> b!2510591 (= tp!802988 e!1591309)))

(declare-fun b!2510900 () Bool)

(declare-fun tp!803019 () Bool)

(declare-fun tp!803023 () Bool)

(assert (=> b!2510900 (= e!1591309 (and tp!803019 tp!803023))))

(declare-fun b!2510902 () Bool)

(declare-fun tp!803022 () Bool)

(declare-fun tp!803020 () Bool)

(assert (=> b!2510902 (= e!1591309 (and tp!803022 tp!803020))))

(declare-fun b!2510901 () Bool)

(declare-fun tp!803021 () Bool)

(assert (=> b!2510901 (= e!1591309 tp!803021)))

(assert (= (and b!2510591 ((_ is ElementMatch!7463) (regOne!15438 r!27340))) b!2510899))

(assert (= (and b!2510591 ((_ is Concat!12159) (regOne!15438 r!27340))) b!2510900))

(assert (= (and b!2510591 ((_ is Star!7463) (regOne!15438 r!27340))) b!2510901))

(assert (= (and b!2510591 ((_ is Union!7463) (regOne!15438 r!27340))) b!2510902))

(declare-fun b!2510903 () Bool)

(declare-fun e!1591310 () Bool)

(assert (=> b!2510903 (= e!1591310 tp_is_empty!12781)))

(assert (=> b!2510591 (= tp!802985 e!1591310)))

(declare-fun b!2510904 () Bool)

(declare-fun tp!803024 () Bool)

(declare-fun tp!803028 () Bool)

(assert (=> b!2510904 (= e!1591310 (and tp!803024 tp!803028))))

(declare-fun b!2510906 () Bool)

(declare-fun tp!803027 () Bool)

(declare-fun tp!803025 () Bool)

(assert (=> b!2510906 (= e!1591310 (and tp!803027 tp!803025))))

(declare-fun b!2510905 () Bool)

(declare-fun tp!803026 () Bool)

(assert (=> b!2510905 (= e!1591310 tp!803026)))

(assert (= (and b!2510591 ((_ is ElementMatch!7463) (regTwo!15438 r!27340))) b!2510903))

(assert (= (and b!2510591 ((_ is Concat!12159) (regTwo!15438 r!27340))) b!2510904))

(assert (= (and b!2510591 ((_ is Star!7463) (regTwo!15438 r!27340))) b!2510905))

(assert (= (and b!2510591 ((_ is Union!7463) (regTwo!15438 r!27340))) b!2510906))

(check-sat (not d!716609) (not d!716631) (not b!2510888) (not b!2510887) (not bm!155733) (not b!2510764) (not b!2510784) (not b!2510724) (not b!2510669) (not b!2510849) (not b!2510793) (not d!716615) (not b!2510894) (not bm!155727) (not b!2510848) (not b!2510906) (not b!2510674) (not b!2510636) (not bm!155719) (not b!2510790) (not b!2510734) (not b!2510798) (not b!2510765) (not b!2510637) (not b!2510801) (not b!2510904) (not b!2510756) (not b!2510889) (not b!2510902) (not b!2510845) (not b!2510897) (not d!716635) (not d!716621) (not b!2510847) (not b!2510884) (not b!2510802) tp_is_empty!12781 (not b!2510807) (not b!2510900) (not b!2510788) (not d!716617) (not b!2510758) (not d!716623) (not b!2510639) (not d!716619) (not d!716645) (not d!716641) (not d!716627) (not b!2510844) (not bm!155734) (not bm!155701) (not d!716613) (not bm!155729) (not b!2510898) (not bm!155708) (not d!716625) (not bm!155709) (not b!2510633) (not b!2510751) (not b!2510752) (not b!2510804) (not b!2510851) (not b!2510885) (not bm!155731) (not b!2510792) (not b!2510901) (not b!2510818) (not b!2510641) (not d!716603) (not bm!155721) (not d!716639) (not b!2510787) (not b!2510757) (not b!2510808) (not b!2510905) (not d!716611) (not b!2510896) (not bm!155732) (not b!2510642) (not b!2510754) (not bm!155725) (not b!2510806) (not d!716601) (not b!2510883) (not b!2510748))
(check-sat)

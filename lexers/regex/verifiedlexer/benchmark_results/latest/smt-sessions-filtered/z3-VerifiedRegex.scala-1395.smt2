; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73678 () Bool)

(assert start!73678)

(declare-fun b!823449 () Bool)

(declare-fun e!543791 () Bool)

(declare-datatypes ((C!4668 0))(
  ( (C!4669 (val!2582 Int)) )
))
(declare-datatypes ((Regex!2049 0))(
  ( (ElementMatch!2049 (c!133530 C!4668)) (Concat!3780 (regOne!4610 Regex!2049) (regTwo!4610 Regex!2049)) (EmptyExpr!2049) (Star!2049 (reg!2378 Regex!2049)) (EmptyLang!2049) (Union!2049 (regOne!4611 Regex!2049) (regTwo!4611 Regex!2049)) )
))
(declare-fun r!27177 () Regex!2049)

(declare-fun c!13916 () C!4668)

(declare-datatypes ((List!8875 0))(
  ( (Nil!8859) (Cons!8859 (h!14260 C!4668) (t!93167 List!8875)) )
))
(declare-fun contains!1640 (List!8875 C!4668) Bool)

(declare-fun usedCharacters!158 (Regex!2049) List!8875)

(assert (=> b!823449 (= e!543791 (not (contains!1640 (usedCharacters!158 r!27177) c!13916)))))

(declare-fun b!823450 () Bool)

(declare-fun res!379763 () Bool)

(assert (=> b!823450 (=> (not res!379763) (not e!543791))))

(declare-fun firstChars!20 (Regex!2049) List!8875)

(assert (=> b!823450 (= res!379763 (contains!1640 (firstChars!20 r!27177) c!13916))))

(declare-fun b!823451 () Bool)

(declare-fun e!543790 () Bool)

(declare-fun tp!257362 () Bool)

(assert (=> b!823451 (= e!543790 tp!257362)))

(declare-fun res!379762 () Bool)

(assert (=> start!73678 (=> (not res!379762) (not e!543791))))

(declare-fun validRegex!602 (Regex!2049) Bool)

(assert (=> start!73678 (= res!379762 (validRegex!602 r!27177))))

(assert (=> start!73678 e!543791))

(assert (=> start!73678 e!543790))

(declare-fun tp_is_empty!3821 () Bool)

(assert (=> start!73678 tp_is_empty!3821))

(declare-fun b!823452 () Bool)

(declare-fun res!379761 () Bool)

(assert (=> b!823452 (=> (not res!379761) (not e!543791))))

(get-info :version)

(assert (=> b!823452 (= res!379761 (and (not ((_ is EmptyExpr!2049) r!27177)) (not ((_ is EmptyLang!2049) r!27177)) ((_ is ElementMatch!2049) r!27177)))))

(declare-fun b!823453 () Bool)

(assert (=> b!823453 (= e!543790 tp_is_empty!3821)))

(declare-fun b!823454 () Bool)

(declare-fun tp!257364 () Bool)

(declare-fun tp!257363 () Bool)

(assert (=> b!823454 (= e!543790 (and tp!257364 tp!257363))))

(declare-fun b!823455 () Bool)

(declare-fun tp!257360 () Bool)

(declare-fun tp!257361 () Bool)

(assert (=> b!823455 (= e!543790 (and tp!257360 tp!257361))))

(assert (= (and start!73678 res!379762) b!823450))

(assert (= (and b!823450 res!379763) b!823452))

(assert (= (and b!823452 res!379761) b!823449))

(assert (= (and start!73678 ((_ is ElementMatch!2049) r!27177)) b!823453))

(assert (= (and start!73678 ((_ is Concat!3780) r!27177)) b!823455))

(assert (= (and start!73678 ((_ is Star!2049) r!27177)) b!823451))

(assert (= (and start!73678 ((_ is Union!2049) r!27177)) b!823454))

(declare-fun m!1063935 () Bool)

(assert (=> b!823449 m!1063935))

(assert (=> b!823449 m!1063935))

(declare-fun m!1063937 () Bool)

(assert (=> b!823449 m!1063937))

(declare-fun m!1063939 () Bool)

(assert (=> b!823450 m!1063939))

(assert (=> b!823450 m!1063939))

(declare-fun m!1063941 () Bool)

(assert (=> b!823450 m!1063941))

(declare-fun m!1063943 () Bool)

(assert (=> start!73678 m!1063943))

(check-sat (not b!823451) (not start!73678) (not b!823455) (not b!823450) (not b!823454) (not b!823449) tp_is_empty!3821)
(check-sat)
(get-model)

(declare-fun d!259070 () Bool)

(declare-fun lt!317409 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1288 (List!8875) (InoxSet C!4668))

(assert (=> d!259070 (= lt!317409 (select (content!1288 (firstChars!20 r!27177)) c!13916))))

(declare-fun e!543802 () Bool)

(assert (=> d!259070 (= lt!317409 e!543802)))

(declare-fun res!379774 () Bool)

(assert (=> d!259070 (=> (not res!379774) (not e!543802))))

(assert (=> d!259070 (= res!379774 ((_ is Cons!8859) (firstChars!20 r!27177)))))

(assert (=> d!259070 (= (contains!1640 (firstChars!20 r!27177) c!13916) lt!317409)))

(declare-fun b!823466 () Bool)

(declare-fun e!543803 () Bool)

(assert (=> b!823466 (= e!543802 e!543803)))

(declare-fun res!379775 () Bool)

(assert (=> b!823466 (=> res!379775 e!543803)))

(assert (=> b!823466 (= res!379775 (= (h!14260 (firstChars!20 r!27177)) c!13916))))

(declare-fun b!823467 () Bool)

(assert (=> b!823467 (= e!543803 (contains!1640 (t!93167 (firstChars!20 r!27177)) c!13916))))

(assert (= (and d!259070 res!379774) b!823466))

(assert (= (and b!823466 (not res!379775)) b!823467))

(assert (=> d!259070 m!1063939))

(declare-fun m!1063951 () Bool)

(assert (=> d!259070 m!1063951))

(declare-fun m!1063953 () Bool)

(assert (=> d!259070 m!1063953))

(declare-fun m!1063955 () Bool)

(assert (=> b!823467 m!1063955))

(assert (=> b!823450 d!259070))

(declare-fun bm!47321 () Bool)

(declare-fun call!47332 () List!8875)

(declare-fun call!47330 () List!8875)

(assert (=> bm!47321 (= call!47332 call!47330)))

(declare-fun b!823530 () Bool)

(declare-fun c!133557 () Bool)

(declare-fun nullable!499 (Regex!2049) Bool)

(assert (=> b!823530 (= c!133557 (nullable!499 (regOne!4610 r!27177)))))

(declare-fun e!543844 () List!8875)

(declare-fun e!543843 () List!8875)

(assert (=> b!823530 (= e!543844 e!543843)))

(declare-fun b!823532 () Bool)

(assert (=> b!823532 (= e!543843 call!47332)))

(declare-fun b!823533 () Bool)

(declare-fun e!543842 () List!8875)

(declare-fun e!543841 () List!8875)

(assert (=> b!823533 (= e!543842 e!543841)))

(declare-fun c!133561 () Bool)

(assert (=> b!823533 (= c!133561 ((_ is ElementMatch!2049) r!27177))))

(declare-fun b!823534 () Bool)

(declare-fun e!543840 () List!8875)

(declare-fun call!47329 () List!8875)

(assert (=> b!823534 (= e!543840 call!47329)))

(declare-fun bm!47324 () Bool)

(declare-fun call!47328 () List!8875)

(assert (=> bm!47324 (= call!47328 call!47329)))

(declare-fun bm!47325 () Bool)

(declare-fun c!133559 () Bool)

(declare-fun c!133560 () Bool)

(assert (=> bm!47325 (= call!47329 (firstChars!20 (ite c!133560 (reg!2378 r!27177) (ite c!133559 (regOne!4611 r!27177) (regTwo!4610 r!27177)))))))

(declare-fun b!823535 () Bool)

(assert (=> b!823535 (= e!543842 Nil!8859)))

(declare-fun b!823536 () Bool)

(assert (=> b!823536 (= c!133560 ((_ is Star!2049) r!27177))))

(assert (=> b!823536 (= e!543841 e!543840)))

(declare-fun b!823537 () Bool)

(declare-fun call!47331 () List!8875)

(assert (=> b!823537 (= e!543843 call!47331)))

(declare-fun b!823538 () Bool)

(assert (=> b!823538 (= e!543840 e!543844)))

(assert (=> b!823538 (= c!133559 ((_ is Union!2049) r!27177))))

(declare-fun bm!47326 () Bool)

(declare-fun ++!2276 (List!8875 List!8875) List!8875)

(assert (=> bm!47326 (= call!47331 (++!2276 (ite c!133559 call!47328 call!47332) (ite c!133559 call!47330 call!47328)))))

(declare-fun d!259074 () Bool)

(declare-fun c!133558 () Bool)

(assert (=> d!259074 (= c!133558 (or ((_ is EmptyExpr!2049) r!27177) ((_ is EmptyLang!2049) r!27177)))))

(assert (=> d!259074 (= (firstChars!20 r!27177) e!543842)))

(declare-fun b!823531 () Bool)

(assert (=> b!823531 (= e!543844 call!47331)))

(declare-fun b!823539 () Bool)

(assert (=> b!823539 (= e!543841 (Cons!8859 (c!133530 r!27177) Nil!8859))))

(declare-fun bm!47327 () Bool)

(assert (=> bm!47327 (= call!47330 (firstChars!20 (ite c!133559 (regTwo!4611 r!27177) (regOne!4610 r!27177))))))

(assert (= (and d!259074 c!133558) b!823535))

(assert (= (and d!259074 (not c!133558)) b!823533))

(assert (= (and b!823533 c!133561) b!823539))

(assert (= (and b!823533 (not c!133561)) b!823536))

(assert (= (and b!823536 c!133560) b!823534))

(assert (= (and b!823536 (not c!133560)) b!823538))

(assert (= (and b!823538 c!133559) b!823531))

(assert (= (and b!823538 (not c!133559)) b!823530))

(assert (= (and b!823530 c!133557) b!823537))

(assert (= (and b!823530 (not c!133557)) b!823532))

(assert (= (or b!823537 b!823532) bm!47321))

(assert (= (or b!823531 bm!47321) bm!47327))

(assert (= (or b!823531 b!823537) bm!47324))

(assert (= (or b!823531 b!823537) bm!47326))

(assert (= (or b!823534 bm!47324) bm!47325))

(declare-fun m!1063963 () Bool)

(assert (=> b!823530 m!1063963))

(declare-fun m!1063965 () Bool)

(assert (=> bm!47325 m!1063965))

(declare-fun m!1063967 () Bool)

(assert (=> bm!47326 m!1063967))

(declare-fun m!1063969 () Bool)

(assert (=> bm!47327 m!1063969))

(assert (=> b!823450 d!259074))

(declare-fun b!823577 () Bool)

(declare-fun e!543877 () Bool)

(declare-fun call!47344 () Bool)

(assert (=> b!823577 (= e!543877 call!47344)))

(declare-fun b!823578 () Bool)

(declare-fun e!543874 () Bool)

(declare-fun e!543873 () Bool)

(assert (=> b!823578 (= e!543874 e!543873)))

(declare-fun c!133573 () Bool)

(assert (=> b!823578 (= c!133573 ((_ is Union!2049) r!27177))))

(declare-fun bm!47339 () Bool)

(declare-fun call!47345 () Bool)

(assert (=> bm!47339 (= call!47345 (validRegex!602 (ite c!133573 (regTwo!4611 r!27177) (regOne!4610 r!27177))))))

(declare-fun b!823579 () Bool)

(declare-fun e!543875 () Bool)

(assert (=> b!823579 (= e!543874 e!543875)))

(declare-fun res!379803 () Bool)

(assert (=> b!823579 (= res!379803 (not (nullable!499 (reg!2378 r!27177))))))

(assert (=> b!823579 (=> (not res!379803) (not e!543875))))

(declare-fun d!259078 () Bool)

(declare-fun res!379804 () Bool)

(declare-fun e!543878 () Bool)

(assert (=> d!259078 (=> res!379804 e!543878)))

(assert (=> d!259078 (= res!379804 ((_ is ElementMatch!2049) r!27177))))

(assert (=> d!259078 (= (validRegex!602 r!27177) e!543878)))

(declare-fun b!823580 () Bool)

(assert (=> b!823580 (= e!543878 e!543874)))

(declare-fun c!133572 () Bool)

(assert (=> b!823580 (= c!133572 ((_ is Star!2049) r!27177))))

(declare-fun bm!47340 () Bool)

(declare-fun call!47346 () Bool)

(assert (=> bm!47340 (= call!47344 call!47346)))

(declare-fun b!823581 () Bool)

(declare-fun res!379805 () Bool)

(declare-fun e!543872 () Bool)

(assert (=> b!823581 (=> (not res!379805) (not e!543872))))

(assert (=> b!823581 (= res!379805 call!47344)))

(assert (=> b!823581 (= e!543873 e!543872)))

(declare-fun b!823582 () Bool)

(assert (=> b!823582 (= e!543872 call!47345)))

(declare-fun b!823583 () Bool)

(declare-fun res!379807 () Bool)

(declare-fun e!543876 () Bool)

(assert (=> b!823583 (=> res!379807 e!543876)))

(assert (=> b!823583 (= res!379807 (not ((_ is Concat!3780) r!27177)))))

(assert (=> b!823583 (= e!543873 e!543876)))

(declare-fun bm!47341 () Bool)

(assert (=> bm!47341 (= call!47346 (validRegex!602 (ite c!133572 (reg!2378 r!27177) (ite c!133573 (regOne!4611 r!27177) (regTwo!4610 r!27177)))))))

(declare-fun b!823584 () Bool)

(assert (=> b!823584 (= e!543875 call!47346)))

(declare-fun b!823585 () Bool)

(assert (=> b!823585 (= e!543876 e!543877)))

(declare-fun res!379806 () Bool)

(assert (=> b!823585 (=> (not res!379806) (not e!543877))))

(assert (=> b!823585 (= res!379806 call!47345)))

(assert (= (and d!259078 (not res!379804)) b!823580))

(assert (= (and b!823580 c!133572) b!823579))

(assert (= (and b!823580 (not c!133572)) b!823578))

(assert (= (and b!823579 res!379803) b!823584))

(assert (= (and b!823578 c!133573) b!823581))

(assert (= (and b!823578 (not c!133573)) b!823583))

(assert (= (and b!823581 res!379805) b!823582))

(assert (= (and b!823583 (not res!379807)) b!823585))

(assert (= (and b!823585 res!379806) b!823577))

(assert (= (or b!823581 b!823577) bm!47340))

(assert (= (or b!823582 b!823585) bm!47339))

(assert (= (or b!823584 bm!47340) bm!47341))

(declare-fun m!1063983 () Bool)

(assert (=> bm!47339 m!1063983))

(declare-fun m!1063985 () Bool)

(assert (=> b!823579 m!1063985))

(declare-fun m!1063987 () Bool)

(assert (=> bm!47341 m!1063987))

(assert (=> start!73678 d!259078))

(declare-fun d!259084 () Bool)

(declare-fun lt!317411 () Bool)

(assert (=> d!259084 (= lt!317411 (select (content!1288 (usedCharacters!158 r!27177)) c!13916))))

(declare-fun e!543885 () Bool)

(assert (=> d!259084 (= lt!317411 e!543885)))

(declare-fun res!379808 () Bool)

(assert (=> d!259084 (=> (not res!379808) (not e!543885))))

(assert (=> d!259084 (= res!379808 ((_ is Cons!8859) (usedCharacters!158 r!27177)))))

(assert (=> d!259084 (= (contains!1640 (usedCharacters!158 r!27177) c!13916) lt!317411)))

(declare-fun b!823598 () Bool)

(declare-fun e!543886 () Bool)

(assert (=> b!823598 (= e!543885 e!543886)))

(declare-fun res!379809 () Bool)

(assert (=> b!823598 (=> res!379809 e!543886)))

(assert (=> b!823598 (= res!379809 (= (h!14260 (usedCharacters!158 r!27177)) c!13916))))

(declare-fun b!823599 () Bool)

(assert (=> b!823599 (= e!543886 (contains!1640 (t!93167 (usedCharacters!158 r!27177)) c!13916))))

(assert (= (and d!259084 res!379808) b!823598))

(assert (= (and b!823598 (not res!379809)) b!823599))

(assert (=> d!259084 m!1063935))

(declare-fun m!1063989 () Bool)

(assert (=> d!259084 m!1063989))

(declare-fun m!1063991 () Bool)

(assert (=> d!259084 m!1063991))

(declare-fun m!1063993 () Bool)

(assert (=> b!823599 m!1063993))

(assert (=> b!823449 d!259084))

(declare-fun d!259086 () Bool)

(declare-fun c!133595 () Bool)

(assert (=> d!259086 (= c!133595 (or ((_ is EmptyExpr!2049) r!27177) ((_ is EmptyLang!2049) r!27177)))))

(declare-fun e!543903 () List!8875)

(assert (=> d!259086 (= (usedCharacters!158 r!27177) e!543903)))

(declare-fun b!823640 () Bool)

(assert (=> b!823640 (= e!543903 Nil!8859)))

(declare-fun call!47372 () List!8875)

(declare-fun c!133596 () Bool)

(declare-fun bm!47365 () Bool)

(declare-fun c!133594 () Bool)

(assert (=> bm!47365 (= call!47372 (usedCharacters!158 (ite c!133594 (reg!2378 r!27177) (ite c!133596 (regTwo!4611 r!27177) (regOne!4610 r!27177)))))))

(declare-fun b!823641 () Bool)

(declare-fun e!543902 () List!8875)

(assert (=> b!823641 (= e!543902 call!47372)))

(declare-fun b!823642 () Bool)

(declare-fun e!543905 () List!8875)

(assert (=> b!823642 (= e!543903 e!543905)))

(declare-fun c!133593 () Bool)

(assert (=> b!823642 (= c!133593 ((_ is ElementMatch!2049) r!27177))))

(declare-fun bm!47366 () Bool)

(declare-fun call!47373 () List!8875)

(assert (=> bm!47366 (= call!47373 (usedCharacters!158 (ite c!133596 (regOne!4611 r!27177) (regTwo!4610 r!27177))))))

(declare-fun b!823643 () Bool)

(declare-fun e!543906 () List!8875)

(declare-fun call!47370 () List!8875)

(assert (=> b!823643 (= e!543906 call!47370)))

(declare-fun bm!47367 () Bool)

(declare-fun call!47371 () List!8875)

(assert (=> bm!47367 (= call!47370 (++!2276 (ite c!133596 call!47373 call!47371) (ite c!133596 call!47371 call!47373)))))

(declare-fun b!823644 () Bool)

(assert (=> b!823644 (= e!543902 e!543906)))

(assert (=> b!823644 (= c!133596 ((_ is Union!2049) r!27177))))

(declare-fun b!823645 () Bool)

(assert (=> b!823645 (= e!543905 (Cons!8859 (c!133530 r!27177) Nil!8859))))

(declare-fun b!823646 () Bool)

(assert (=> b!823646 (= e!543906 call!47370)))

(declare-fun b!823647 () Bool)

(assert (=> b!823647 (= c!133594 ((_ is Star!2049) r!27177))))

(assert (=> b!823647 (= e!543905 e!543902)))

(declare-fun bm!47368 () Bool)

(assert (=> bm!47368 (= call!47371 call!47372)))

(assert (= (and d!259086 c!133595) b!823640))

(assert (= (and d!259086 (not c!133595)) b!823642))

(assert (= (and b!823642 c!133593) b!823645))

(assert (= (and b!823642 (not c!133593)) b!823647))

(assert (= (and b!823647 c!133594) b!823641))

(assert (= (and b!823647 (not c!133594)) b!823644))

(assert (= (and b!823644 c!133596) b!823643))

(assert (= (and b!823644 (not c!133596)) b!823646))

(assert (= (or b!823643 b!823646) bm!47368))

(assert (= (or b!823643 b!823646) bm!47366))

(assert (= (or b!823643 b!823646) bm!47367))

(assert (= (or b!823641 bm!47368) bm!47365))

(declare-fun m!1064003 () Bool)

(assert (=> bm!47365 m!1064003))

(declare-fun m!1064005 () Bool)

(assert (=> bm!47366 m!1064005))

(declare-fun m!1064007 () Bool)

(assert (=> bm!47367 m!1064007))

(assert (=> b!823449 d!259086))

(declare-fun b!823676 () Bool)

(declare-fun e!543913 () Bool)

(declare-fun tp!257411 () Bool)

(assert (=> b!823676 (= e!543913 tp!257411)))

(assert (=> b!823451 (= tp!257362 e!543913)))

(declare-fun b!823674 () Bool)

(assert (=> b!823674 (= e!543913 tp_is_empty!3821)))

(declare-fun b!823677 () Bool)

(declare-fun tp!257414 () Bool)

(declare-fun tp!257413 () Bool)

(assert (=> b!823677 (= e!543913 (and tp!257414 tp!257413))))

(declare-fun b!823675 () Bool)

(declare-fun tp!257412 () Bool)

(declare-fun tp!257410 () Bool)

(assert (=> b!823675 (= e!543913 (and tp!257412 tp!257410))))

(assert (= (and b!823451 ((_ is ElementMatch!2049) (reg!2378 r!27177))) b!823674))

(assert (= (and b!823451 ((_ is Concat!3780) (reg!2378 r!27177))) b!823675))

(assert (= (and b!823451 ((_ is Star!2049) (reg!2378 r!27177))) b!823676))

(assert (= (and b!823451 ((_ is Union!2049) (reg!2378 r!27177))) b!823677))

(declare-fun b!823680 () Bool)

(declare-fun e!543914 () Bool)

(declare-fun tp!257416 () Bool)

(assert (=> b!823680 (= e!543914 tp!257416)))

(assert (=> b!823455 (= tp!257360 e!543914)))

(declare-fun b!823678 () Bool)

(assert (=> b!823678 (= e!543914 tp_is_empty!3821)))

(declare-fun b!823681 () Bool)

(declare-fun tp!257419 () Bool)

(declare-fun tp!257418 () Bool)

(assert (=> b!823681 (= e!543914 (and tp!257419 tp!257418))))

(declare-fun b!823679 () Bool)

(declare-fun tp!257417 () Bool)

(declare-fun tp!257415 () Bool)

(assert (=> b!823679 (= e!543914 (and tp!257417 tp!257415))))

(assert (= (and b!823455 ((_ is ElementMatch!2049) (regOne!4610 r!27177))) b!823678))

(assert (= (and b!823455 ((_ is Concat!3780) (regOne!4610 r!27177))) b!823679))

(assert (= (and b!823455 ((_ is Star!2049) (regOne!4610 r!27177))) b!823680))

(assert (= (and b!823455 ((_ is Union!2049) (regOne!4610 r!27177))) b!823681))

(declare-fun b!823684 () Bool)

(declare-fun e!543915 () Bool)

(declare-fun tp!257421 () Bool)

(assert (=> b!823684 (= e!543915 tp!257421)))

(assert (=> b!823455 (= tp!257361 e!543915)))

(declare-fun b!823682 () Bool)

(assert (=> b!823682 (= e!543915 tp_is_empty!3821)))

(declare-fun b!823685 () Bool)

(declare-fun tp!257424 () Bool)

(declare-fun tp!257423 () Bool)

(assert (=> b!823685 (= e!543915 (and tp!257424 tp!257423))))

(declare-fun b!823683 () Bool)

(declare-fun tp!257422 () Bool)

(declare-fun tp!257420 () Bool)

(assert (=> b!823683 (= e!543915 (and tp!257422 tp!257420))))

(assert (= (and b!823455 ((_ is ElementMatch!2049) (regTwo!4610 r!27177))) b!823682))

(assert (= (and b!823455 ((_ is Concat!3780) (regTwo!4610 r!27177))) b!823683))

(assert (= (and b!823455 ((_ is Star!2049) (regTwo!4610 r!27177))) b!823684))

(assert (= (and b!823455 ((_ is Union!2049) (regTwo!4610 r!27177))) b!823685))

(declare-fun b!823688 () Bool)

(declare-fun e!543916 () Bool)

(declare-fun tp!257426 () Bool)

(assert (=> b!823688 (= e!543916 tp!257426)))

(assert (=> b!823454 (= tp!257364 e!543916)))

(declare-fun b!823686 () Bool)

(assert (=> b!823686 (= e!543916 tp_is_empty!3821)))

(declare-fun b!823689 () Bool)

(declare-fun tp!257429 () Bool)

(declare-fun tp!257428 () Bool)

(assert (=> b!823689 (= e!543916 (and tp!257429 tp!257428))))

(declare-fun b!823687 () Bool)

(declare-fun tp!257427 () Bool)

(declare-fun tp!257425 () Bool)

(assert (=> b!823687 (= e!543916 (and tp!257427 tp!257425))))

(assert (= (and b!823454 ((_ is ElementMatch!2049) (regOne!4611 r!27177))) b!823686))

(assert (= (and b!823454 ((_ is Concat!3780) (regOne!4611 r!27177))) b!823687))

(assert (= (and b!823454 ((_ is Star!2049) (regOne!4611 r!27177))) b!823688))

(assert (= (and b!823454 ((_ is Union!2049) (regOne!4611 r!27177))) b!823689))

(declare-fun b!823692 () Bool)

(declare-fun e!543917 () Bool)

(declare-fun tp!257431 () Bool)

(assert (=> b!823692 (= e!543917 tp!257431)))

(assert (=> b!823454 (= tp!257363 e!543917)))

(declare-fun b!823690 () Bool)

(assert (=> b!823690 (= e!543917 tp_is_empty!3821)))

(declare-fun b!823693 () Bool)

(declare-fun tp!257434 () Bool)

(declare-fun tp!257433 () Bool)

(assert (=> b!823693 (= e!543917 (and tp!257434 tp!257433))))

(declare-fun b!823691 () Bool)

(declare-fun tp!257432 () Bool)

(declare-fun tp!257430 () Bool)

(assert (=> b!823691 (= e!543917 (and tp!257432 tp!257430))))

(assert (= (and b!823454 ((_ is ElementMatch!2049) (regTwo!4611 r!27177))) b!823690))

(assert (= (and b!823454 ((_ is Concat!3780) (regTwo!4611 r!27177))) b!823691))

(assert (= (and b!823454 ((_ is Star!2049) (regTwo!4611 r!27177))) b!823692))

(assert (= (and b!823454 ((_ is Union!2049) (regTwo!4611 r!27177))) b!823693))

(check-sat (not b!823677) (not bm!47339) (not bm!47326) (not b!823687) (not b!823684) (not b!823688) (not b!823685) (not bm!47366) (not b!823675) (not d!259084) (not b!823683) (not b!823692) (not b!823681) (not b!823691) tp_is_empty!3821 (not b!823676) (not bm!47325) (not b!823579) (not b!823530) (not b!823693) (not d!259070) (not bm!47341) (not b!823679) (not bm!47327) (not bm!47367) (not b!823599) (not b!823680) (not bm!47365) (not b!823689) (not b!823467))
(check-sat)

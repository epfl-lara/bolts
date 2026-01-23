; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351030 () Bool)

(assert start!351030)

(declare-fun b!3731289 () Bool)

(declare-fun res!1514805 () Bool)

(declare-fun e!2308489 () Bool)

(assert (=> b!3731289 (=> (not res!1514805) (not e!2308489))))

(declare-datatypes ((C!22044 0))(
  ( (C!22045 (val!13070 Int)) )
))
(declare-datatypes ((Regex!10929 0))(
  ( (ElementMatch!10929 (c!645909 C!22044)) (Concat!17200 (regOne!22370 Regex!10929) (regTwo!22370 Regex!10929)) (EmptyExpr!10929) (Star!10929 (reg!11258 Regex!10929)) (EmptyLang!10929) (Union!10929 (regOne!22371 Regex!10929) (regTwo!22371 Regex!10929)) )
))
(declare-fun r!26968 () Regex!10929)

(declare-fun nullable!3837 (Regex!10929) Bool)

(assert (=> b!3731289 (= res!1514805 (nullable!3837 (regOne!22370 r!26968)))))

(declare-fun b!3731290 () Bool)

(declare-fun e!2308490 () Bool)

(declare-fun tp_is_empty!18873 () Bool)

(assert (=> b!3731290 (= e!2308490 tp_is_empty!18873)))

(declare-fun b!3731291 () Bool)

(declare-fun tp!1135581 () Bool)

(declare-fun tp!1135583 () Bool)

(assert (=> b!3731291 (= e!2308490 (and tp!1135581 tp!1135583))))

(declare-fun res!1514804 () Bool)

(assert (=> start!351030 (=> (not res!1514804) (not e!2308489))))

(declare-fun validRegex!5036 (Regex!10929) Bool)

(assert (=> start!351030 (= res!1514804 (validRegex!5036 r!26968))))

(assert (=> start!351030 e!2308489))

(assert (=> start!351030 e!2308490))

(assert (=> start!351030 tp_is_empty!18873))

(declare-fun b!3731292 () Bool)

(declare-fun res!1514808 () Bool)

(assert (=> b!3731292 (=> (not res!1514808) (not e!2308489))))

(get-info :version)

(assert (=> b!3731292 (= res!1514808 (and (not ((_ is EmptyExpr!10929) r!26968)) (not ((_ is EmptyLang!10929) r!26968)) (not ((_ is ElementMatch!10929) r!26968)) (not ((_ is Union!10929) r!26968)) (not ((_ is Star!10929) r!26968))))))

(declare-fun b!3731293 () Bool)

(declare-fun RegexPrimitiveSize!145 (Regex!10929) Int)

(assert (=> b!3731293 (= e!2308489 (>= (RegexPrimitiveSize!145 (regOne!22370 r!26968)) (RegexPrimitiveSize!145 r!26968)))))

(declare-fun b!3731294 () Bool)

(declare-fun tp!1135580 () Bool)

(assert (=> b!3731294 (= e!2308490 tp!1135580)))

(declare-fun b!3731295 () Bool)

(declare-fun res!1514803 () Bool)

(assert (=> b!3731295 (=> (not res!1514803) (not e!2308489))))

(assert (=> b!3731295 (= res!1514803 (validRegex!5036 (regOne!22370 r!26968)))))

(declare-fun b!3731296 () Bool)

(declare-fun tp!1135582 () Bool)

(declare-fun tp!1135584 () Bool)

(assert (=> b!3731296 (= e!2308490 (and tp!1135582 tp!1135584))))

(declare-fun b!3731297 () Bool)

(declare-fun res!1514807 () Bool)

(assert (=> b!3731297 (=> (not res!1514807) (not e!2308489))))

(declare-fun cNot!42 () C!22044)

(declare-datatypes ((List!39810 0))(
  ( (Nil!39686) (Cons!39686 (h!45106 C!22044) (t!302493 List!39810)) )
))
(declare-fun contains!8022 (List!39810 C!22044) Bool)

(declare-fun usedCharacters!1192 (Regex!10929) List!39810)

(assert (=> b!3731297 (= res!1514807 (not (contains!8022 (usedCharacters!1192 r!26968) cNot!42)))))

(declare-fun b!3731298 () Bool)

(declare-fun res!1514806 () Bool)

(assert (=> b!3731298 (=> (not res!1514806) (not e!2308489))))

(assert (=> b!3731298 (= res!1514806 (not (contains!8022 (usedCharacters!1192 (regOne!22370 r!26968)) cNot!42)))))

(assert (= (and start!351030 res!1514804) b!3731297))

(assert (= (and b!3731297 res!1514807) b!3731292))

(assert (= (and b!3731292 res!1514808) b!3731289))

(assert (= (and b!3731289 res!1514805) b!3731295))

(assert (= (and b!3731295 res!1514803) b!3731298))

(assert (= (and b!3731298 res!1514806) b!3731293))

(assert (= (and start!351030 ((_ is ElementMatch!10929) r!26968)) b!3731290))

(assert (= (and start!351030 ((_ is Concat!17200) r!26968)) b!3731296))

(assert (= (and start!351030 ((_ is Star!10929) r!26968)) b!3731294))

(assert (= (and start!351030 ((_ is Union!10929) r!26968)) b!3731291))

(declare-fun m!4230447 () Bool)

(assert (=> start!351030 m!4230447))

(declare-fun m!4230449 () Bool)

(assert (=> b!3731298 m!4230449))

(assert (=> b!3731298 m!4230449))

(declare-fun m!4230451 () Bool)

(assert (=> b!3731298 m!4230451))

(declare-fun m!4230453 () Bool)

(assert (=> b!3731295 m!4230453))

(declare-fun m!4230455 () Bool)

(assert (=> b!3731293 m!4230455))

(declare-fun m!4230457 () Bool)

(assert (=> b!3731293 m!4230457))

(declare-fun m!4230459 () Bool)

(assert (=> b!3731297 m!4230459))

(assert (=> b!3731297 m!4230459))

(declare-fun m!4230461 () Bool)

(assert (=> b!3731297 m!4230461))

(declare-fun m!4230463 () Bool)

(assert (=> b!3731289 m!4230463))

(check-sat tp_is_empty!18873 (not b!3731298) (not b!3731296) (not b!3731289) (not b!3731293) (not b!3731294) (not b!3731297) (not b!3731295) (not b!3731291) (not start!351030))
(check-sat)
(get-model)

(declare-fun b!3731374 () Bool)

(declare-fun e!2308549 () Bool)

(declare-fun e!2308544 () Bool)

(assert (=> b!3731374 (= e!2308549 e!2308544)))

(declare-fun c!645933 () Bool)

(assert (=> b!3731374 (= c!645933 ((_ is Star!10929) r!26968))))

(declare-fun b!3731375 () Bool)

(declare-fun e!2308545 () Bool)

(declare-fun e!2308548 () Bool)

(assert (=> b!3731375 (= e!2308545 e!2308548)))

(declare-fun res!1514844 () Bool)

(assert (=> b!3731375 (=> (not res!1514844) (not e!2308548))))

(declare-fun call!272588 () Bool)

(assert (=> b!3731375 (= res!1514844 call!272588)))

(declare-fun d!1090676 () Bool)

(declare-fun res!1514840 () Bool)

(assert (=> d!1090676 (=> res!1514840 e!2308549)))

(assert (=> d!1090676 (= res!1514840 ((_ is ElementMatch!10929) r!26968))))

(assert (=> d!1090676 (= (validRegex!5036 r!26968) e!2308549)))

(declare-fun c!645932 () Bool)

(declare-fun bm!272583 () Bool)

(declare-fun call!272589 () Bool)

(assert (=> bm!272583 (= call!272589 (validRegex!5036 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))))))

(declare-fun b!3731376 () Bool)

(declare-fun e!2308547 () Bool)

(assert (=> b!3731376 (= e!2308544 e!2308547)))

(declare-fun res!1514842 () Bool)

(assert (=> b!3731376 (= res!1514842 (not (nullable!3837 (reg!11258 r!26968))))))

(assert (=> b!3731376 (=> (not res!1514842) (not e!2308547))))

(declare-fun bm!272584 () Bool)

(assert (=> bm!272584 (= call!272588 call!272589)))

(declare-fun b!3731377 () Bool)

(declare-fun res!1514843 () Bool)

(assert (=> b!3731377 (=> res!1514843 e!2308545)))

(assert (=> b!3731377 (= res!1514843 (not ((_ is Concat!17200) r!26968)))))

(declare-fun e!2308550 () Bool)

(assert (=> b!3731377 (= e!2308550 e!2308545)))

(declare-fun b!3731378 () Bool)

(declare-fun call!272590 () Bool)

(assert (=> b!3731378 (= e!2308548 call!272590)))

(declare-fun b!3731379 () Bool)

(declare-fun res!1514841 () Bool)

(declare-fun e!2308546 () Bool)

(assert (=> b!3731379 (=> (not res!1514841) (not e!2308546))))

(assert (=> b!3731379 (= res!1514841 call!272588)))

(assert (=> b!3731379 (= e!2308550 e!2308546)))

(declare-fun b!3731380 () Bool)

(assert (=> b!3731380 (= e!2308546 call!272590)))

(declare-fun b!3731381 () Bool)

(assert (=> b!3731381 (= e!2308544 e!2308550)))

(assert (=> b!3731381 (= c!645932 ((_ is Union!10929) r!26968))))

(declare-fun b!3731382 () Bool)

(assert (=> b!3731382 (= e!2308547 call!272589)))

(declare-fun bm!272585 () Bool)

(assert (=> bm!272585 (= call!272590 (validRegex!5036 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))))))

(assert (= (and d!1090676 (not res!1514840)) b!3731374))

(assert (= (and b!3731374 c!645933) b!3731376))

(assert (= (and b!3731374 (not c!645933)) b!3731381))

(assert (= (and b!3731376 res!1514842) b!3731382))

(assert (= (and b!3731381 c!645932) b!3731379))

(assert (= (and b!3731381 (not c!645932)) b!3731377))

(assert (= (and b!3731379 res!1514841) b!3731380))

(assert (= (and b!3731377 (not res!1514843)) b!3731375))

(assert (= (and b!3731375 res!1514844) b!3731378))

(assert (= (or b!3731380 b!3731378) bm!272585))

(assert (= (or b!3731379 b!3731375) bm!272584))

(assert (= (or b!3731382 bm!272584) bm!272583))

(declare-fun m!4230483 () Bool)

(assert (=> bm!272583 m!4230483))

(declare-fun m!4230485 () Bool)

(assert (=> b!3731376 m!4230485))

(declare-fun m!4230487 () Bool)

(assert (=> bm!272585 m!4230487))

(assert (=> start!351030 d!1090676))

(declare-fun d!1090684 () Bool)

(declare-fun lt!1298692 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5786 (List!39810) (InoxSet C!22044))

(assert (=> d!1090684 (= lt!1298692 (select (content!5786 (usedCharacters!1192 r!26968)) cNot!42))))

(declare-fun e!2308576 () Bool)

(assert (=> d!1090684 (= lt!1298692 e!2308576)))

(declare-fun res!1514850 () Bool)

(assert (=> d!1090684 (=> (not res!1514850) (not e!2308576))))

(assert (=> d!1090684 (= res!1514850 ((_ is Cons!39686) (usedCharacters!1192 r!26968)))))

(assert (=> d!1090684 (= (contains!8022 (usedCharacters!1192 r!26968) cNot!42) lt!1298692)))

(declare-fun b!3731427 () Bool)

(declare-fun e!2308575 () Bool)

(assert (=> b!3731427 (= e!2308576 e!2308575)))

(declare-fun res!1514849 () Bool)

(assert (=> b!3731427 (=> res!1514849 e!2308575)))

(assert (=> b!3731427 (= res!1514849 (= (h!45106 (usedCharacters!1192 r!26968)) cNot!42))))

(declare-fun b!3731428 () Bool)

(assert (=> b!3731428 (= e!2308575 (contains!8022 (t!302493 (usedCharacters!1192 r!26968)) cNot!42))))

(assert (= (and d!1090684 res!1514850) b!3731427))

(assert (= (and b!3731427 (not res!1514849)) b!3731428))

(assert (=> d!1090684 m!4230459))

(declare-fun m!4230499 () Bool)

(assert (=> d!1090684 m!4230499))

(declare-fun m!4230501 () Bool)

(assert (=> d!1090684 m!4230501))

(declare-fun m!4230503 () Bool)

(assert (=> b!3731428 m!4230503))

(assert (=> b!3731297 d!1090684))

(declare-fun b!3731494 () Bool)

(declare-fun e!2308607 () List!39810)

(declare-fun call!272619 () List!39810)

(assert (=> b!3731494 (= e!2308607 call!272619)))

(declare-fun b!3731495 () Bool)

(assert (=> b!3731495 (= e!2308607 call!272619)))

(declare-fun b!3731496 () Bool)

(declare-fun e!2308606 () List!39810)

(assert (=> b!3731496 (= e!2308606 (Cons!39686 (c!645909 r!26968) Nil!39686))))

(declare-fun bm!272613 () Bool)

(declare-fun call!272618 () List!39810)

(declare-fun c!645971 () Bool)

(assert (=> bm!272613 (= call!272618 (usedCharacters!1192 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))))))

(declare-fun call!272620 () List!39810)

(declare-fun c!645969 () Bool)

(declare-fun bm!272614 () Bool)

(assert (=> bm!272614 (= call!272620 (usedCharacters!1192 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))))))

(declare-fun call!272621 () List!39810)

(declare-fun bm!272615 () Bool)

(declare-fun ++!9853 (List!39810 List!39810) List!39810)

(assert (=> bm!272615 (= call!272619 (++!9853 (ite c!645971 call!272618 call!272621) (ite c!645971 call!272621 call!272618)))))

(declare-fun d!1090692 () Bool)

(declare-fun c!645970 () Bool)

(assert (=> d!1090692 (= c!645970 (or ((_ is EmptyExpr!10929) r!26968) ((_ is EmptyLang!10929) r!26968)))))

(declare-fun e!2308608 () List!39810)

(assert (=> d!1090692 (= (usedCharacters!1192 r!26968) e!2308608)))

(declare-fun b!3731497 () Bool)

(assert (=> b!3731497 (= c!645969 ((_ is Star!10929) r!26968))))

(declare-fun e!2308605 () List!39810)

(assert (=> b!3731497 (= e!2308606 e!2308605)))

(declare-fun b!3731498 () Bool)

(assert (=> b!3731498 (= e!2308608 Nil!39686)))

(declare-fun b!3731499 () Bool)

(assert (=> b!3731499 (= e!2308605 e!2308607)))

(assert (=> b!3731499 (= c!645971 ((_ is Union!10929) r!26968))))

(declare-fun b!3731500 () Bool)

(assert (=> b!3731500 (= e!2308608 e!2308606)))

(declare-fun c!645968 () Bool)

(assert (=> b!3731500 (= c!645968 ((_ is ElementMatch!10929) r!26968))))

(declare-fun bm!272616 () Bool)

(assert (=> bm!272616 (= call!272621 call!272620)))

(declare-fun b!3731501 () Bool)

(assert (=> b!3731501 (= e!2308605 call!272620)))

(assert (= (and d!1090692 c!645970) b!3731498))

(assert (= (and d!1090692 (not c!645970)) b!3731500))

(assert (= (and b!3731500 c!645968) b!3731496))

(assert (= (and b!3731500 (not c!645968)) b!3731497))

(assert (= (and b!3731497 c!645969) b!3731501))

(assert (= (and b!3731497 (not c!645969)) b!3731499))

(assert (= (and b!3731499 c!645971) b!3731494))

(assert (= (and b!3731499 (not c!645971)) b!3731495))

(assert (= (or b!3731494 b!3731495) bm!272613))

(assert (= (or b!3731494 b!3731495) bm!272616))

(assert (= (or b!3731494 b!3731495) bm!272615))

(assert (= (or b!3731501 bm!272616) bm!272614))

(declare-fun m!4230523 () Bool)

(assert (=> bm!272613 m!4230523))

(declare-fun m!4230525 () Bool)

(assert (=> bm!272614 m!4230525))

(declare-fun m!4230527 () Bool)

(assert (=> bm!272615 m!4230527))

(assert (=> b!3731297 d!1090692))

(declare-fun d!1090698 () Bool)

(declare-fun lt!1298694 () Bool)

(assert (=> d!1090698 (= lt!1298694 (select (content!5786 (usedCharacters!1192 (regOne!22370 r!26968))) cNot!42))))

(declare-fun e!2308610 () Bool)

(assert (=> d!1090698 (= lt!1298694 e!2308610)))

(declare-fun res!1514859 () Bool)

(assert (=> d!1090698 (=> (not res!1514859) (not e!2308610))))

(assert (=> d!1090698 (= res!1514859 ((_ is Cons!39686) (usedCharacters!1192 (regOne!22370 r!26968))))))

(assert (=> d!1090698 (= (contains!8022 (usedCharacters!1192 (regOne!22370 r!26968)) cNot!42) lt!1298694)))

(declare-fun b!3731502 () Bool)

(declare-fun e!2308609 () Bool)

(assert (=> b!3731502 (= e!2308610 e!2308609)))

(declare-fun res!1514858 () Bool)

(assert (=> b!3731502 (=> res!1514858 e!2308609)))

(assert (=> b!3731502 (= res!1514858 (= (h!45106 (usedCharacters!1192 (regOne!22370 r!26968))) cNot!42))))

(declare-fun b!3731503 () Bool)

(assert (=> b!3731503 (= e!2308609 (contains!8022 (t!302493 (usedCharacters!1192 (regOne!22370 r!26968))) cNot!42))))

(assert (= (and d!1090698 res!1514859) b!3731502))

(assert (= (and b!3731502 (not res!1514858)) b!3731503))

(assert (=> d!1090698 m!4230449))

(declare-fun m!4230529 () Bool)

(assert (=> d!1090698 m!4230529))

(declare-fun m!4230531 () Bool)

(assert (=> d!1090698 m!4230531))

(declare-fun m!4230533 () Bool)

(assert (=> b!3731503 m!4230533))

(assert (=> b!3731298 d!1090698))

(declare-fun b!3731504 () Bool)

(declare-fun e!2308613 () List!39810)

(declare-fun call!272623 () List!39810)

(assert (=> b!3731504 (= e!2308613 call!272623)))

(declare-fun b!3731505 () Bool)

(assert (=> b!3731505 (= e!2308613 call!272623)))

(declare-fun b!3731506 () Bool)

(declare-fun e!2308612 () List!39810)

(assert (=> b!3731506 (= e!2308612 (Cons!39686 (c!645909 (regOne!22370 r!26968)) Nil!39686))))

(declare-fun bm!272617 () Bool)

(declare-fun call!272622 () List!39810)

(declare-fun c!645975 () Bool)

(assert (=> bm!272617 (= call!272622 (usedCharacters!1192 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(declare-fun call!272624 () List!39810)

(declare-fun c!645973 () Bool)

(declare-fun bm!272618 () Bool)

(assert (=> bm!272618 (= call!272624 (usedCharacters!1192 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(declare-fun call!272625 () List!39810)

(declare-fun bm!272619 () Bool)

(assert (=> bm!272619 (= call!272623 (++!9853 (ite c!645975 call!272622 call!272625) (ite c!645975 call!272625 call!272622)))))

(declare-fun d!1090700 () Bool)

(declare-fun c!645974 () Bool)

(assert (=> d!1090700 (= c!645974 (or ((_ is EmptyExpr!10929) (regOne!22370 r!26968)) ((_ is EmptyLang!10929) (regOne!22370 r!26968))))))

(declare-fun e!2308614 () List!39810)

(assert (=> d!1090700 (= (usedCharacters!1192 (regOne!22370 r!26968)) e!2308614)))

(declare-fun b!3731507 () Bool)

(assert (=> b!3731507 (= c!645973 ((_ is Star!10929) (regOne!22370 r!26968)))))

(declare-fun e!2308611 () List!39810)

(assert (=> b!3731507 (= e!2308612 e!2308611)))

(declare-fun b!3731508 () Bool)

(assert (=> b!3731508 (= e!2308614 Nil!39686)))

(declare-fun b!3731509 () Bool)

(assert (=> b!3731509 (= e!2308611 e!2308613)))

(assert (=> b!3731509 (= c!645975 ((_ is Union!10929) (regOne!22370 r!26968)))))

(declare-fun b!3731510 () Bool)

(assert (=> b!3731510 (= e!2308614 e!2308612)))

(declare-fun c!645972 () Bool)

(assert (=> b!3731510 (= c!645972 ((_ is ElementMatch!10929) (regOne!22370 r!26968)))))

(declare-fun bm!272620 () Bool)

(assert (=> bm!272620 (= call!272625 call!272624)))

(declare-fun b!3731511 () Bool)

(assert (=> b!3731511 (= e!2308611 call!272624)))

(assert (= (and d!1090700 c!645974) b!3731508))

(assert (= (and d!1090700 (not c!645974)) b!3731510))

(assert (= (and b!3731510 c!645972) b!3731506))

(assert (= (and b!3731510 (not c!645972)) b!3731507))

(assert (= (and b!3731507 c!645973) b!3731511))

(assert (= (and b!3731507 (not c!645973)) b!3731509))

(assert (= (and b!3731509 c!645975) b!3731504))

(assert (= (and b!3731509 (not c!645975)) b!3731505))

(assert (= (or b!3731504 b!3731505) bm!272617))

(assert (= (or b!3731504 b!3731505) bm!272620))

(assert (= (or b!3731504 b!3731505) bm!272619))

(assert (= (or b!3731511 bm!272620) bm!272618))

(declare-fun m!4230535 () Bool)

(assert (=> bm!272617 m!4230535))

(declare-fun m!4230537 () Bool)

(assert (=> bm!272618 m!4230537))

(declare-fun m!4230539 () Bool)

(assert (=> bm!272619 m!4230539))

(assert (=> b!3731298 d!1090700))

(declare-fun b!3731532 () Bool)

(declare-fun e!2308625 () Int)

(declare-fun e!2308627 () Int)

(assert (=> b!3731532 (= e!2308625 e!2308627)))

(declare-fun c!645990 () Bool)

(assert (=> b!3731532 (= c!645990 ((_ is Concat!17200) (regOne!22370 r!26968)))))

(declare-fun b!3731533 () Bool)

(declare-fun e!2308626 () Int)

(assert (=> b!3731533 (= e!2308626 0)))

(declare-fun d!1090702 () Bool)

(declare-fun lt!1298697 () Int)

(assert (=> d!1090702 (>= lt!1298697 0)))

(assert (=> d!1090702 (= lt!1298697 e!2308625)))

(declare-fun c!645987 () Bool)

(assert (=> d!1090702 (= c!645987 ((_ is ElementMatch!10929) (regOne!22370 r!26968)))))

(assert (=> d!1090702 (= (RegexPrimitiveSize!145 (regOne!22370 r!26968)) lt!1298697)))

(declare-fun b!3731534 () Bool)

(declare-fun e!2308629 () Int)

(assert (=> b!3731534 (= e!2308626 e!2308629)))

(declare-fun c!645986 () Bool)

(assert (=> b!3731534 (= c!645986 ((_ is Star!10929) (regOne!22370 r!26968)))))

(declare-fun b!3731535 () Bool)

(declare-fun call!272632 () Int)

(assert (=> b!3731535 (= e!2308629 (+ 1 call!272632))))

(declare-fun b!3731536 () Bool)

(declare-fun c!645988 () Bool)

(assert (=> b!3731536 (= c!645988 ((_ is EmptyExpr!10929) (regOne!22370 r!26968)))))

(assert (=> b!3731536 (= e!2308627 e!2308626)))

(declare-fun b!3731537 () Bool)

(declare-fun e!2308628 () Int)

(assert (=> b!3731537 (= e!2308628 0)))

(declare-fun bm!272627 () Bool)

(declare-fun call!272633 () Int)

(assert (=> bm!272627 (= call!272633 (RegexPrimitiveSize!145 (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))))))

(declare-fun b!3731538 () Bool)

(declare-fun call!272634 () Int)

(assert (=> b!3731538 (= e!2308627 (+ 1 call!272634 call!272633))))

(declare-fun bm!272628 () Bool)

(assert (=> bm!272628 (= call!272632 call!272634)))

(declare-fun b!3731539 () Bool)

(declare-fun c!645989 () Bool)

(assert (=> b!3731539 (= c!645989 ((_ is EmptyLang!10929) (regOne!22370 r!26968)))))

(assert (=> b!3731539 (= e!2308629 e!2308628)))

(declare-fun b!3731540 () Bool)

(assert (=> b!3731540 (= e!2308628 (+ 1 call!272632 call!272633))))

(declare-fun bm!272629 () Bool)

(assert (=> bm!272629 (= call!272634 (RegexPrimitiveSize!145 (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))))))

(declare-fun b!3731541 () Bool)

(assert (=> b!3731541 (= e!2308625 1)))

(assert (= (and d!1090702 c!645987) b!3731541))

(assert (= (and d!1090702 (not c!645987)) b!3731532))

(assert (= (and b!3731532 c!645990) b!3731538))

(assert (= (and b!3731532 (not c!645990)) b!3731536))

(assert (= (and b!3731536 c!645988) b!3731533))

(assert (= (and b!3731536 (not c!645988)) b!3731534))

(assert (= (and b!3731534 c!645986) b!3731535))

(assert (= (and b!3731534 (not c!645986)) b!3731539))

(assert (= (and b!3731539 c!645989) b!3731537))

(assert (= (and b!3731539 (not c!645989)) b!3731540))

(assert (= (or b!3731535 b!3731540) bm!272628))

(assert (= (or b!3731538 bm!272628) bm!272629))

(assert (= (or b!3731538 b!3731540) bm!272627))

(declare-fun m!4230541 () Bool)

(assert (=> bm!272627 m!4230541))

(declare-fun m!4230543 () Bool)

(assert (=> bm!272629 m!4230543))

(assert (=> b!3731293 d!1090702))

(declare-fun b!3731542 () Bool)

(declare-fun e!2308630 () Int)

(declare-fun e!2308632 () Int)

(assert (=> b!3731542 (= e!2308630 e!2308632)))

(declare-fun c!645995 () Bool)

(assert (=> b!3731542 (= c!645995 ((_ is Concat!17200) r!26968))))

(declare-fun b!3731543 () Bool)

(declare-fun e!2308631 () Int)

(assert (=> b!3731543 (= e!2308631 0)))

(declare-fun d!1090704 () Bool)

(declare-fun lt!1298698 () Int)

(assert (=> d!1090704 (>= lt!1298698 0)))

(assert (=> d!1090704 (= lt!1298698 e!2308630)))

(declare-fun c!645992 () Bool)

(assert (=> d!1090704 (= c!645992 ((_ is ElementMatch!10929) r!26968))))

(assert (=> d!1090704 (= (RegexPrimitiveSize!145 r!26968) lt!1298698)))

(declare-fun b!3731544 () Bool)

(declare-fun e!2308634 () Int)

(assert (=> b!3731544 (= e!2308631 e!2308634)))

(declare-fun c!645991 () Bool)

(assert (=> b!3731544 (= c!645991 ((_ is Star!10929) r!26968))))

(declare-fun b!3731545 () Bool)

(declare-fun call!272635 () Int)

(assert (=> b!3731545 (= e!2308634 (+ 1 call!272635))))

(declare-fun b!3731546 () Bool)

(declare-fun c!645993 () Bool)

(assert (=> b!3731546 (= c!645993 ((_ is EmptyExpr!10929) r!26968))))

(assert (=> b!3731546 (= e!2308632 e!2308631)))

(declare-fun b!3731547 () Bool)

(declare-fun e!2308633 () Int)

(assert (=> b!3731547 (= e!2308633 0)))

(declare-fun bm!272630 () Bool)

(declare-fun call!272636 () Int)

(assert (=> bm!272630 (= call!272636 (RegexPrimitiveSize!145 (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))))))

(declare-fun b!3731548 () Bool)

(declare-fun call!272637 () Int)

(assert (=> b!3731548 (= e!2308632 (+ 1 call!272637 call!272636))))

(declare-fun bm!272631 () Bool)

(assert (=> bm!272631 (= call!272635 call!272637)))

(declare-fun b!3731549 () Bool)

(declare-fun c!645994 () Bool)

(assert (=> b!3731549 (= c!645994 ((_ is EmptyLang!10929) r!26968))))

(assert (=> b!3731549 (= e!2308634 e!2308633)))

(declare-fun b!3731550 () Bool)

(assert (=> b!3731550 (= e!2308633 (+ 1 call!272635 call!272636))))

(declare-fun bm!272632 () Bool)

(assert (=> bm!272632 (= call!272637 (RegexPrimitiveSize!145 (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))))))

(declare-fun b!3731551 () Bool)

(assert (=> b!3731551 (= e!2308630 1)))

(assert (= (and d!1090704 c!645992) b!3731551))

(assert (= (and d!1090704 (not c!645992)) b!3731542))

(assert (= (and b!3731542 c!645995) b!3731548))

(assert (= (and b!3731542 (not c!645995)) b!3731546))

(assert (= (and b!3731546 c!645993) b!3731543))

(assert (= (and b!3731546 (not c!645993)) b!3731544))

(assert (= (and b!3731544 c!645991) b!3731545))

(assert (= (and b!3731544 (not c!645991)) b!3731549))

(assert (= (and b!3731549 c!645994) b!3731547))

(assert (= (and b!3731549 (not c!645994)) b!3731550))

(assert (= (or b!3731545 b!3731550) bm!272631))

(assert (= (or b!3731548 bm!272631) bm!272632))

(assert (= (or b!3731548 b!3731550) bm!272630))

(declare-fun m!4230545 () Bool)

(assert (=> bm!272630 m!4230545))

(declare-fun m!4230547 () Bool)

(assert (=> bm!272632 m!4230547))

(assert (=> b!3731293 d!1090704))

(declare-fun d!1090706 () Bool)

(declare-fun nullableFct!1090 (Regex!10929) Bool)

(assert (=> d!1090706 (= (nullable!3837 (regOne!22370 r!26968)) (nullableFct!1090 (regOne!22370 r!26968)))))

(declare-fun bs!575099 () Bool)

(assert (= bs!575099 d!1090706))

(declare-fun m!4230549 () Bool)

(assert (=> bs!575099 m!4230549))

(assert (=> b!3731289 d!1090706))

(declare-fun b!3731552 () Bool)

(declare-fun e!2308640 () Bool)

(declare-fun e!2308635 () Bool)

(assert (=> b!3731552 (= e!2308640 e!2308635)))

(declare-fun c!645997 () Bool)

(assert (=> b!3731552 (= c!645997 ((_ is Star!10929) (regOne!22370 r!26968)))))

(declare-fun b!3731553 () Bool)

(declare-fun e!2308636 () Bool)

(declare-fun e!2308639 () Bool)

(assert (=> b!3731553 (= e!2308636 e!2308639)))

(declare-fun res!1514864 () Bool)

(assert (=> b!3731553 (=> (not res!1514864) (not e!2308639))))

(declare-fun call!272638 () Bool)

(assert (=> b!3731553 (= res!1514864 call!272638)))

(declare-fun d!1090708 () Bool)

(declare-fun res!1514860 () Bool)

(assert (=> d!1090708 (=> res!1514860 e!2308640)))

(assert (=> d!1090708 (= res!1514860 ((_ is ElementMatch!10929) (regOne!22370 r!26968)))))

(assert (=> d!1090708 (= (validRegex!5036 (regOne!22370 r!26968)) e!2308640)))

(declare-fun c!645996 () Bool)

(declare-fun call!272639 () Bool)

(declare-fun bm!272633 () Bool)

(assert (=> bm!272633 (= call!272639 (validRegex!5036 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(declare-fun b!3731554 () Bool)

(declare-fun e!2308638 () Bool)

(assert (=> b!3731554 (= e!2308635 e!2308638)))

(declare-fun res!1514862 () Bool)

(assert (=> b!3731554 (= res!1514862 (not (nullable!3837 (reg!11258 (regOne!22370 r!26968)))))))

(assert (=> b!3731554 (=> (not res!1514862) (not e!2308638))))

(declare-fun bm!272634 () Bool)

(assert (=> bm!272634 (= call!272638 call!272639)))

(declare-fun b!3731555 () Bool)

(declare-fun res!1514863 () Bool)

(assert (=> b!3731555 (=> res!1514863 e!2308636)))

(assert (=> b!3731555 (= res!1514863 (not ((_ is Concat!17200) (regOne!22370 r!26968))))))

(declare-fun e!2308641 () Bool)

(assert (=> b!3731555 (= e!2308641 e!2308636)))

(declare-fun b!3731556 () Bool)

(declare-fun call!272640 () Bool)

(assert (=> b!3731556 (= e!2308639 call!272640)))

(declare-fun b!3731557 () Bool)

(declare-fun res!1514861 () Bool)

(declare-fun e!2308637 () Bool)

(assert (=> b!3731557 (=> (not res!1514861) (not e!2308637))))

(assert (=> b!3731557 (= res!1514861 call!272638)))

(assert (=> b!3731557 (= e!2308641 e!2308637)))

(declare-fun b!3731558 () Bool)

(assert (=> b!3731558 (= e!2308637 call!272640)))

(declare-fun b!3731559 () Bool)

(assert (=> b!3731559 (= e!2308635 e!2308641)))

(assert (=> b!3731559 (= c!645996 ((_ is Union!10929) (regOne!22370 r!26968)))))

(declare-fun b!3731560 () Bool)

(assert (=> b!3731560 (= e!2308638 call!272639)))

(declare-fun bm!272635 () Bool)

(assert (=> bm!272635 (= call!272640 (validRegex!5036 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(assert (= (and d!1090708 (not res!1514860)) b!3731552))

(assert (= (and b!3731552 c!645997) b!3731554))

(assert (= (and b!3731552 (not c!645997)) b!3731559))

(assert (= (and b!3731554 res!1514862) b!3731560))

(assert (= (and b!3731559 c!645996) b!3731557))

(assert (= (and b!3731559 (not c!645996)) b!3731555))

(assert (= (and b!3731557 res!1514861) b!3731558))

(assert (= (and b!3731555 (not res!1514863)) b!3731553))

(assert (= (and b!3731553 res!1514864) b!3731556))

(assert (= (or b!3731558 b!3731556) bm!272635))

(assert (= (or b!3731557 b!3731553) bm!272634))

(assert (= (or b!3731560 bm!272634) bm!272633))

(declare-fun m!4230551 () Bool)

(assert (=> bm!272633 m!4230551))

(declare-fun m!4230553 () Bool)

(assert (=> b!3731554 m!4230553))

(declare-fun m!4230555 () Bool)

(assert (=> bm!272635 m!4230555))

(assert (=> b!3731295 d!1090708))

(declare-fun b!3731572 () Bool)

(declare-fun e!2308644 () Bool)

(declare-fun tp!1135630 () Bool)

(declare-fun tp!1135634 () Bool)

(assert (=> b!3731572 (= e!2308644 (and tp!1135630 tp!1135634))))

(declare-fun b!3731574 () Bool)

(declare-fun tp!1135633 () Bool)

(declare-fun tp!1135632 () Bool)

(assert (=> b!3731574 (= e!2308644 (and tp!1135633 tp!1135632))))

(declare-fun b!3731571 () Bool)

(assert (=> b!3731571 (= e!2308644 tp_is_empty!18873)))

(declare-fun b!3731573 () Bool)

(declare-fun tp!1135631 () Bool)

(assert (=> b!3731573 (= e!2308644 tp!1135631)))

(assert (=> b!3731296 (= tp!1135582 e!2308644)))

(assert (= (and b!3731296 ((_ is ElementMatch!10929) (regOne!22370 r!26968))) b!3731571))

(assert (= (and b!3731296 ((_ is Concat!17200) (regOne!22370 r!26968))) b!3731572))

(assert (= (and b!3731296 ((_ is Star!10929) (regOne!22370 r!26968))) b!3731573))

(assert (= (and b!3731296 ((_ is Union!10929) (regOne!22370 r!26968))) b!3731574))

(declare-fun b!3731576 () Bool)

(declare-fun e!2308645 () Bool)

(declare-fun tp!1135635 () Bool)

(declare-fun tp!1135639 () Bool)

(assert (=> b!3731576 (= e!2308645 (and tp!1135635 tp!1135639))))

(declare-fun b!3731578 () Bool)

(declare-fun tp!1135638 () Bool)

(declare-fun tp!1135637 () Bool)

(assert (=> b!3731578 (= e!2308645 (and tp!1135638 tp!1135637))))

(declare-fun b!3731575 () Bool)

(assert (=> b!3731575 (= e!2308645 tp_is_empty!18873)))

(declare-fun b!3731577 () Bool)

(declare-fun tp!1135636 () Bool)

(assert (=> b!3731577 (= e!2308645 tp!1135636)))

(assert (=> b!3731296 (= tp!1135584 e!2308645)))

(assert (= (and b!3731296 ((_ is ElementMatch!10929) (regTwo!22370 r!26968))) b!3731575))

(assert (= (and b!3731296 ((_ is Concat!17200) (regTwo!22370 r!26968))) b!3731576))

(assert (= (and b!3731296 ((_ is Star!10929) (regTwo!22370 r!26968))) b!3731577))

(assert (= (and b!3731296 ((_ is Union!10929) (regTwo!22370 r!26968))) b!3731578))

(declare-fun b!3731580 () Bool)

(declare-fun e!2308646 () Bool)

(declare-fun tp!1135640 () Bool)

(declare-fun tp!1135644 () Bool)

(assert (=> b!3731580 (= e!2308646 (and tp!1135640 tp!1135644))))

(declare-fun b!3731582 () Bool)

(declare-fun tp!1135643 () Bool)

(declare-fun tp!1135642 () Bool)

(assert (=> b!3731582 (= e!2308646 (and tp!1135643 tp!1135642))))

(declare-fun b!3731579 () Bool)

(assert (=> b!3731579 (= e!2308646 tp_is_empty!18873)))

(declare-fun b!3731581 () Bool)

(declare-fun tp!1135641 () Bool)

(assert (=> b!3731581 (= e!2308646 tp!1135641)))

(assert (=> b!3731291 (= tp!1135581 e!2308646)))

(assert (= (and b!3731291 ((_ is ElementMatch!10929) (regOne!22371 r!26968))) b!3731579))

(assert (= (and b!3731291 ((_ is Concat!17200) (regOne!22371 r!26968))) b!3731580))

(assert (= (and b!3731291 ((_ is Star!10929) (regOne!22371 r!26968))) b!3731581))

(assert (= (and b!3731291 ((_ is Union!10929) (regOne!22371 r!26968))) b!3731582))

(declare-fun b!3731584 () Bool)

(declare-fun e!2308647 () Bool)

(declare-fun tp!1135645 () Bool)

(declare-fun tp!1135649 () Bool)

(assert (=> b!3731584 (= e!2308647 (and tp!1135645 tp!1135649))))

(declare-fun b!3731586 () Bool)

(declare-fun tp!1135648 () Bool)

(declare-fun tp!1135647 () Bool)

(assert (=> b!3731586 (= e!2308647 (and tp!1135648 tp!1135647))))

(declare-fun b!3731583 () Bool)

(assert (=> b!3731583 (= e!2308647 tp_is_empty!18873)))

(declare-fun b!3731585 () Bool)

(declare-fun tp!1135646 () Bool)

(assert (=> b!3731585 (= e!2308647 tp!1135646)))

(assert (=> b!3731291 (= tp!1135583 e!2308647)))

(assert (= (and b!3731291 ((_ is ElementMatch!10929) (regTwo!22371 r!26968))) b!3731583))

(assert (= (and b!3731291 ((_ is Concat!17200) (regTwo!22371 r!26968))) b!3731584))

(assert (= (and b!3731291 ((_ is Star!10929) (regTwo!22371 r!26968))) b!3731585))

(assert (= (and b!3731291 ((_ is Union!10929) (regTwo!22371 r!26968))) b!3731586))

(declare-fun b!3731588 () Bool)

(declare-fun e!2308648 () Bool)

(declare-fun tp!1135650 () Bool)

(declare-fun tp!1135654 () Bool)

(assert (=> b!3731588 (= e!2308648 (and tp!1135650 tp!1135654))))

(declare-fun b!3731590 () Bool)

(declare-fun tp!1135653 () Bool)

(declare-fun tp!1135652 () Bool)

(assert (=> b!3731590 (= e!2308648 (and tp!1135653 tp!1135652))))

(declare-fun b!3731587 () Bool)

(assert (=> b!3731587 (= e!2308648 tp_is_empty!18873)))

(declare-fun b!3731589 () Bool)

(declare-fun tp!1135651 () Bool)

(assert (=> b!3731589 (= e!2308648 tp!1135651)))

(assert (=> b!3731294 (= tp!1135580 e!2308648)))

(assert (= (and b!3731294 ((_ is ElementMatch!10929) (reg!11258 r!26968))) b!3731587))

(assert (= (and b!3731294 ((_ is Concat!17200) (reg!11258 r!26968))) b!3731588))

(assert (= (and b!3731294 ((_ is Star!10929) (reg!11258 r!26968))) b!3731589))

(assert (= (and b!3731294 ((_ is Union!10929) (reg!11258 r!26968))) b!3731590))

(check-sat (not bm!272585) (not b!3731584) (not d!1090684) (not d!1090706) (not b!3731589) (not bm!272629) (not bm!272583) (not b!3731580) tp_is_empty!18873 (not d!1090698) (not b!3731590) (not b!3731588) (not bm!272635) (not bm!272619) (not b!3731586) (not bm!272632) (not b!3731428) (not b!3731578) (not b!3731582) (not b!3731574) (not b!3731577) (not bm!272633) (not b!3731585) (not b!3731503) (not bm!272627) (not bm!272615) (not b!3731376) (not bm!272614) (not bm!272630) (not b!3731572) (not bm!272617) (not b!3731581) (not b!3731573) (not bm!272618) (not b!3731554) (not bm!272613) (not b!3731576))
(check-sat)
(get-model)

(declare-fun b!3731772 () Bool)

(declare-fun e!2308758 () Bool)

(declare-fun e!2308753 () Bool)

(assert (=> b!3731772 (= e!2308758 e!2308753)))

(declare-fun c!646054 () Bool)

(assert (=> b!3731772 (= c!646054 ((_ is Star!10929) (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))))))

(declare-fun b!3731773 () Bool)

(declare-fun e!2308754 () Bool)

(declare-fun e!2308757 () Bool)

(assert (=> b!3731773 (= e!2308754 e!2308757)))

(declare-fun res!1514916 () Bool)

(assert (=> b!3731773 (=> (not res!1514916) (not e!2308757))))

(declare-fun call!272687 () Bool)

(assert (=> b!3731773 (= res!1514916 call!272687)))

(declare-fun d!1090752 () Bool)

(declare-fun res!1514912 () Bool)

(assert (=> d!1090752 (=> res!1514912 e!2308758)))

(assert (=> d!1090752 (= res!1514912 ((_ is ElementMatch!10929) (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))))))

(assert (=> d!1090752 (= (validRegex!5036 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))) e!2308758)))

(declare-fun bm!272682 () Bool)

(declare-fun c!646053 () Bool)

(declare-fun call!272688 () Bool)

(assert (=> bm!272682 (= call!272688 (validRegex!5036 (ite c!646054 (reg!11258 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))) (ite c!646053 (regOne!22371 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))) (regOne!22370 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968)))))))))

(declare-fun b!3731774 () Bool)

(declare-fun e!2308756 () Bool)

(assert (=> b!3731774 (= e!2308753 e!2308756)))

(declare-fun res!1514914 () Bool)

(assert (=> b!3731774 (= res!1514914 (not (nullable!3837 (reg!11258 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))))))))

(assert (=> b!3731774 (=> (not res!1514914) (not e!2308756))))

(declare-fun bm!272683 () Bool)

(assert (=> bm!272683 (= call!272687 call!272688)))

(declare-fun b!3731775 () Bool)

(declare-fun res!1514915 () Bool)

(assert (=> b!3731775 (=> res!1514915 e!2308754)))

(assert (=> b!3731775 (= res!1514915 (not ((_ is Concat!17200) (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968)))))))

(declare-fun e!2308759 () Bool)

(assert (=> b!3731775 (= e!2308759 e!2308754)))

(declare-fun b!3731776 () Bool)

(declare-fun call!272689 () Bool)

(assert (=> b!3731776 (= e!2308757 call!272689)))

(declare-fun b!3731777 () Bool)

(declare-fun res!1514913 () Bool)

(declare-fun e!2308755 () Bool)

(assert (=> b!3731777 (=> (not res!1514913) (not e!2308755))))

(assert (=> b!3731777 (= res!1514913 call!272687)))

(assert (=> b!3731777 (= e!2308759 e!2308755)))

(declare-fun b!3731778 () Bool)

(assert (=> b!3731778 (= e!2308755 call!272689)))

(declare-fun b!3731779 () Bool)

(assert (=> b!3731779 (= e!2308753 e!2308759)))

(assert (=> b!3731779 (= c!646053 ((_ is Union!10929) (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))))))

(declare-fun b!3731780 () Bool)

(assert (=> b!3731780 (= e!2308756 call!272688)))

(declare-fun bm!272684 () Bool)

(assert (=> bm!272684 (= call!272689 (validRegex!5036 (ite c!646053 (regTwo!22371 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))) (regTwo!22370 (ite c!645932 (regTwo!22371 r!26968) (regTwo!22370 r!26968))))))))

(assert (= (and d!1090752 (not res!1514912)) b!3731772))

(assert (= (and b!3731772 c!646054) b!3731774))

(assert (= (and b!3731772 (not c!646054)) b!3731779))

(assert (= (and b!3731774 res!1514914) b!3731780))

(assert (= (and b!3731779 c!646053) b!3731777))

(assert (= (and b!3731779 (not c!646053)) b!3731775))

(assert (= (and b!3731777 res!1514913) b!3731778))

(assert (= (and b!3731775 (not res!1514915)) b!3731773))

(assert (= (and b!3731773 res!1514916) b!3731776))

(assert (= (or b!3731778 b!3731776) bm!272684))

(assert (= (or b!3731777 b!3731773) bm!272683))

(assert (= (or b!3731780 bm!272683) bm!272682))

(declare-fun m!4230673 () Bool)

(assert (=> bm!272682 m!4230673))

(declare-fun m!4230675 () Bool)

(assert (=> b!3731774 m!4230675))

(declare-fun m!4230677 () Bool)

(assert (=> bm!272684 m!4230677))

(assert (=> bm!272585 d!1090752))

(declare-fun b!3731805 () Bool)

(declare-fun e!2308766 () Int)

(declare-fun e!2308768 () Int)

(assert (=> b!3731805 (= e!2308766 e!2308768)))

(declare-fun c!646059 () Bool)

(assert (=> b!3731805 (= c!646059 ((_ is Concat!17200) (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))))))

(declare-fun b!3731806 () Bool)

(declare-fun e!2308767 () Int)

(assert (=> b!3731806 (= e!2308767 0)))

(declare-fun d!1090754 () Bool)

(declare-fun lt!1298709 () Int)

(assert (=> d!1090754 (>= lt!1298709 0)))

(assert (=> d!1090754 (= lt!1298709 e!2308766)))

(declare-fun c!646056 () Bool)

(assert (=> d!1090754 (= c!646056 ((_ is ElementMatch!10929) (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))))))

(assert (=> d!1090754 (= (RegexPrimitiveSize!145 (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))) lt!1298709)))

(declare-fun b!3731807 () Bool)

(declare-fun e!2308770 () Int)

(assert (=> b!3731807 (= e!2308767 e!2308770)))

(declare-fun c!646055 () Bool)

(assert (=> b!3731807 (= c!646055 ((_ is Star!10929) (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))))))

(declare-fun b!3731808 () Bool)

(declare-fun call!272690 () Int)

(assert (=> b!3731808 (= e!2308770 (+ 1 call!272690))))

(declare-fun b!3731809 () Bool)

(declare-fun c!646057 () Bool)

(assert (=> b!3731809 (= c!646057 ((_ is EmptyExpr!10929) (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))))))

(assert (=> b!3731809 (= e!2308768 e!2308767)))

(declare-fun b!3731810 () Bool)

(declare-fun e!2308769 () Int)

(assert (=> b!3731810 (= e!2308769 0)))

(declare-fun bm!272685 () Bool)

(declare-fun call!272691 () Int)

(assert (=> bm!272685 (= call!272691 (RegexPrimitiveSize!145 (ite c!646059 (regTwo!22370 (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))) (regTwo!22371 (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))))))))

(declare-fun b!3731811 () Bool)

(declare-fun call!272692 () Int)

(assert (=> b!3731811 (= e!2308768 (+ 1 call!272692 call!272691))))

(declare-fun bm!272686 () Bool)

(assert (=> bm!272686 (= call!272690 call!272692)))

(declare-fun b!3731812 () Bool)

(declare-fun c!646058 () Bool)

(assert (=> b!3731812 (= c!646058 ((_ is EmptyLang!10929) (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))))))

(assert (=> b!3731812 (= e!2308770 e!2308769)))

(declare-fun b!3731813 () Bool)

(assert (=> b!3731813 (= e!2308769 (+ 1 call!272690 call!272691))))

(declare-fun bm!272687 () Bool)

(assert (=> bm!272687 (= call!272692 (RegexPrimitiveSize!145 (ite c!646059 (regOne!22370 (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))) (ite c!646055 (reg!11258 (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968))) (regOne!22371 (ite c!645995 (regTwo!22370 r!26968) (regTwo!22371 r!26968)))))))))

(declare-fun b!3731814 () Bool)

(assert (=> b!3731814 (= e!2308766 1)))

(assert (= (and d!1090754 c!646056) b!3731814))

(assert (= (and d!1090754 (not c!646056)) b!3731805))

(assert (= (and b!3731805 c!646059) b!3731811))

(assert (= (and b!3731805 (not c!646059)) b!3731809))

(assert (= (and b!3731809 c!646057) b!3731806))

(assert (= (and b!3731809 (not c!646057)) b!3731807))

(assert (= (and b!3731807 c!646055) b!3731808))

(assert (= (and b!3731807 (not c!646055)) b!3731812))

(assert (= (and b!3731812 c!646058) b!3731810))

(assert (= (and b!3731812 (not c!646058)) b!3731813))

(assert (= (or b!3731808 b!3731813) bm!272686))

(assert (= (or b!3731811 bm!272686) bm!272687))

(assert (= (or b!3731811 b!3731813) bm!272685))

(declare-fun m!4230679 () Bool)

(assert (=> bm!272685 m!4230679))

(declare-fun m!4230681 () Bool)

(assert (=> bm!272687 m!4230681))

(assert (=> bm!272630 d!1090754))

(declare-fun d!1090756 () Bool)

(declare-fun lt!1298710 () Bool)

(assert (=> d!1090756 (= lt!1298710 (select (content!5786 (t!302493 (usedCharacters!1192 r!26968))) cNot!42))))

(declare-fun e!2308776 () Bool)

(assert (=> d!1090756 (= lt!1298710 e!2308776)))

(declare-fun res!1514918 () Bool)

(assert (=> d!1090756 (=> (not res!1514918) (not e!2308776))))

(assert (=> d!1090756 (= res!1514918 ((_ is Cons!39686) (t!302493 (usedCharacters!1192 r!26968))))))

(assert (=> d!1090756 (= (contains!8022 (t!302493 (usedCharacters!1192 r!26968)) cNot!42) lt!1298710)))

(declare-fun b!3731831 () Bool)

(declare-fun e!2308775 () Bool)

(assert (=> b!3731831 (= e!2308776 e!2308775)))

(declare-fun res!1514917 () Bool)

(assert (=> b!3731831 (=> res!1514917 e!2308775)))

(assert (=> b!3731831 (= res!1514917 (= (h!45106 (t!302493 (usedCharacters!1192 r!26968))) cNot!42))))

(declare-fun b!3731832 () Bool)

(assert (=> b!3731832 (= e!2308775 (contains!8022 (t!302493 (t!302493 (usedCharacters!1192 r!26968))) cNot!42))))

(assert (= (and d!1090756 res!1514918) b!3731831))

(assert (= (and b!3731831 (not res!1514917)) b!3731832))

(declare-fun m!4230683 () Bool)

(assert (=> d!1090756 m!4230683))

(declare-fun m!4230685 () Bool)

(assert (=> d!1090756 m!4230685))

(declare-fun m!4230687 () Bool)

(assert (=> b!3731832 m!4230687))

(assert (=> b!3731428 d!1090756))

(declare-fun b!3731845 () Bool)

(declare-fun e!2308780 () Int)

(declare-fun e!2308782 () Int)

(assert (=> b!3731845 (= e!2308780 e!2308782)))

(declare-fun c!646064 () Bool)

(assert (=> b!3731845 (= c!646064 ((_ is Concat!17200) (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))))))

(declare-fun b!3731846 () Bool)

(declare-fun e!2308781 () Int)

(assert (=> b!3731846 (= e!2308781 0)))

(declare-fun d!1090758 () Bool)

(declare-fun lt!1298711 () Int)

(assert (=> d!1090758 (>= lt!1298711 0)))

(assert (=> d!1090758 (= lt!1298711 e!2308780)))

(declare-fun c!646061 () Bool)

(assert (=> d!1090758 (= c!646061 ((_ is ElementMatch!10929) (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))))))

(assert (=> d!1090758 (= (RegexPrimitiveSize!145 (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))) lt!1298711)))

(declare-fun b!3731847 () Bool)

(declare-fun e!2308784 () Int)

(assert (=> b!3731847 (= e!2308781 e!2308784)))

(declare-fun c!646060 () Bool)

(assert (=> b!3731847 (= c!646060 ((_ is Star!10929) (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))))))

(declare-fun b!3731848 () Bool)

(declare-fun call!272693 () Int)

(assert (=> b!3731848 (= e!2308784 (+ 1 call!272693))))

(declare-fun b!3731849 () Bool)

(declare-fun c!646062 () Bool)

(assert (=> b!3731849 (= c!646062 ((_ is EmptyExpr!10929) (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))))))

(assert (=> b!3731849 (= e!2308782 e!2308781)))

(declare-fun b!3731850 () Bool)

(declare-fun e!2308783 () Int)

(assert (=> b!3731850 (= e!2308783 0)))

(declare-fun bm!272688 () Bool)

(declare-fun call!272694 () Int)

(assert (=> bm!272688 (= call!272694 (RegexPrimitiveSize!145 (ite c!646064 (regTwo!22370 (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))) (regTwo!22371 (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))))))))

(declare-fun b!3731851 () Bool)

(declare-fun call!272695 () Int)

(assert (=> b!3731851 (= e!2308782 (+ 1 call!272695 call!272694))))

(declare-fun bm!272689 () Bool)

(assert (=> bm!272689 (= call!272693 call!272695)))

(declare-fun b!3731852 () Bool)

(declare-fun c!646063 () Bool)

(assert (=> b!3731852 (= c!646063 ((_ is EmptyLang!10929) (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))))))

(assert (=> b!3731852 (= e!2308784 e!2308783)))

(declare-fun b!3731853 () Bool)

(assert (=> b!3731853 (= e!2308783 (+ 1 call!272693 call!272694))))

(declare-fun bm!272690 () Bool)

(assert (=> bm!272690 (= call!272695 (RegexPrimitiveSize!145 (ite c!646064 (regOne!22370 (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))) (ite c!646060 (reg!11258 (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968)))) (regOne!22371 (ite c!645990 (regTwo!22370 (regOne!22370 r!26968)) (regTwo!22371 (regOne!22370 r!26968))))))))))

(declare-fun b!3731854 () Bool)

(assert (=> b!3731854 (= e!2308780 1)))

(assert (= (and d!1090758 c!646061) b!3731854))

(assert (= (and d!1090758 (not c!646061)) b!3731845))

(assert (= (and b!3731845 c!646064) b!3731851))

(assert (= (and b!3731845 (not c!646064)) b!3731849))

(assert (= (and b!3731849 c!646062) b!3731846))

(assert (= (and b!3731849 (not c!646062)) b!3731847))

(assert (= (and b!3731847 c!646060) b!3731848))

(assert (= (and b!3731847 (not c!646060)) b!3731852))

(assert (= (and b!3731852 c!646063) b!3731850))

(assert (= (and b!3731852 (not c!646063)) b!3731853))

(assert (= (or b!3731848 b!3731853) bm!272689))

(assert (= (or b!3731851 bm!272689) bm!272690))

(assert (= (or b!3731851 b!3731853) bm!272688))

(declare-fun m!4230689 () Bool)

(assert (=> bm!272688 m!4230689))

(declare-fun m!4230691 () Bool)

(assert (=> bm!272690 m!4230691))

(assert (=> bm!272627 d!1090758))

(declare-fun b!3731888 () Bool)

(declare-fun e!2308795 () List!39810)

(assert (=> b!3731888 (= e!2308795 (Cons!39686 (h!45106 (ite c!645971 call!272618 call!272621)) (++!9853 (t!302493 (ite c!645971 call!272618 call!272621)) (ite c!645971 call!272621 call!272618))))))

(declare-fun b!3731890 () Bool)

(declare-fun e!2308796 () Bool)

(declare-fun lt!1298714 () List!39810)

(assert (=> b!3731890 (= e!2308796 (or (not (= (ite c!645971 call!272621 call!272618) Nil!39686)) (= lt!1298714 (ite c!645971 call!272618 call!272621))))))

(declare-fun d!1090760 () Bool)

(assert (=> d!1090760 e!2308796))

(declare-fun res!1514924 () Bool)

(assert (=> d!1090760 (=> (not res!1514924) (not e!2308796))))

(assert (=> d!1090760 (= res!1514924 (= (content!5786 lt!1298714) ((_ map or) (content!5786 (ite c!645971 call!272618 call!272621)) (content!5786 (ite c!645971 call!272621 call!272618)))))))

(assert (=> d!1090760 (= lt!1298714 e!2308795)))

(declare-fun c!646067 () Bool)

(assert (=> d!1090760 (= c!646067 ((_ is Nil!39686) (ite c!645971 call!272618 call!272621)))))

(assert (=> d!1090760 (= (++!9853 (ite c!645971 call!272618 call!272621) (ite c!645971 call!272621 call!272618)) lt!1298714)))

(declare-fun b!3731889 () Bool)

(declare-fun res!1514923 () Bool)

(assert (=> b!3731889 (=> (not res!1514923) (not e!2308796))))

(declare-fun size!30039 (List!39810) Int)

(assert (=> b!3731889 (= res!1514923 (= (size!30039 lt!1298714) (+ (size!30039 (ite c!645971 call!272618 call!272621)) (size!30039 (ite c!645971 call!272621 call!272618)))))))

(declare-fun b!3731887 () Bool)

(assert (=> b!3731887 (= e!2308795 (ite c!645971 call!272621 call!272618))))

(assert (= (and d!1090760 c!646067) b!3731887))

(assert (= (and d!1090760 (not c!646067)) b!3731888))

(assert (= (and d!1090760 res!1514924) b!3731889))

(assert (= (and b!3731889 res!1514923) b!3731890))

(declare-fun m!4230693 () Bool)

(assert (=> b!3731888 m!4230693))

(declare-fun m!4230695 () Bool)

(assert (=> d!1090760 m!4230695))

(declare-fun m!4230697 () Bool)

(assert (=> d!1090760 m!4230697))

(declare-fun m!4230699 () Bool)

(assert (=> d!1090760 m!4230699))

(declare-fun m!4230701 () Bool)

(assert (=> b!3731889 m!4230701))

(declare-fun m!4230703 () Bool)

(assert (=> b!3731889 m!4230703))

(declare-fun m!4230705 () Bool)

(assert (=> b!3731889 m!4230705))

(assert (=> bm!272615 d!1090760))

(declare-fun d!1090762 () Bool)

(assert (=> d!1090762 (= (nullable!3837 (reg!11258 (regOne!22370 r!26968))) (nullableFct!1090 (reg!11258 (regOne!22370 r!26968))))))

(declare-fun bs!575102 () Bool)

(assert (= bs!575102 d!1090762))

(declare-fun m!4230707 () Bool)

(assert (=> bs!575102 m!4230707))

(assert (=> b!3731554 d!1090762))

(declare-fun d!1090764 () Bool)

(declare-fun lt!1298715 () Bool)

(assert (=> d!1090764 (= lt!1298715 (select (content!5786 (t!302493 (usedCharacters!1192 (regOne!22370 r!26968)))) cNot!42))))

(declare-fun e!2308798 () Bool)

(assert (=> d!1090764 (= lt!1298715 e!2308798)))

(declare-fun res!1514926 () Bool)

(assert (=> d!1090764 (=> (not res!1514926) (not e!2308798))))

(assert (=> d!1090764 (= res!1514926 ((_ is Cons!39686) (t!302493 (usedCharacters!1192 (regOne!22370 r!26968)))))))

(assert (=> d!1090764 (= (contains!8022 (t!302493 (usedCharacters!1192 (regOne!22370 r!26968))) cNot!42) lt!1298715)))

(declare-fun b!3731891 () Bool)

(declare-fun e!2308797 () Bool)

(assert (=> b!3731891 (= e!2308798 e!2308797)))

(declare-fun res!1514925 () Bool)

(assert (=> b!3731891 (=> res!1514925 e!2308797)))

(assert (=> b!3731891 (= res!1514925 (= (h!45106 (t!302493 (usedCharacters!1192 (regOne!22370 r!26968)))) cNot!42))))

(declare-fun b!3731892 () Bool)

(assert (=> b!3731892 (= e!2308797 (contains!8022 (t!302493 (t!302493 (usedCharacters!1192 (regOne!22370 r!26968)))) cNot!42))))

(assert (= (and d!1090764 res!1514926) b!3731891))

(assert (= (and b!3731891 (not res!1514925)) b!3731892))

(declare-fun m!4230709 () Bool)

(assert (=> d!1090764 m!4230709))

(declare-fun m!4230711 () Bool)

(assert (=> d!1090764 m!4230711))

(declare-fun m!4230713 () Bool)

(assert (=> b!3731892 m!4230713))

(assert (=> b!3731503 d!1090764))

(declare-fun b!3731894 () Bool)

(declare-fun e!2308799 () List!39810)

(assert (=> b!3731894 (= e!2308799 (Cons!39686 (h!45106 (ite c!645975 call!272622 call!272625)) (++!9853 (t!302493 (ite c!645975 call!272622 call!272625)) (ite c!645975 call!272625 call!272622))))))

(declare-fun b!3731896 () Bool)

(declare-fun lt!1298716 () List!39810)

(declare-fun e!2308800 () Bool)

(assert (=> b!3731896 (= e!2308800 (or (not (= (ite c!645975 call!272625 call!272622) Nil!39686)) (= lt!1298716 (ite c!645975 call!272622 call!272625))))))

(declare-fun d!1090766 () Bool)

(assert (=> d!1090766 e!2308800))

(declare-fun res!1514928 () Bool)

(assert (=> d!1090766 (=> (not res!1514928) (not e!2308800))))

(assert (=> d!1090766 (= res!1514928 (= (content!5786 lt!1298716) ((_ map or) (content!5786 (ite c!645975 call!272622 call!272625)) (content!5786 (ite c!645975 call!272625 call!272622)))))))

(assert (=> d!1090766 (= lt!1298716 e!2308799)))

(declare-fun c!646068 () Bool)

(assert (=> d!1090766 (= c!646068 ((_ is Nil!39686) (ite c!645975 call!272622 call!272625)))))

(assert (=> d!1090766 (= (++!9853 (ite c!645975 call!272622 call!272625) (ite c!645975 call!272625 call!272622)) lt!1298716)))

(declare-fun b!3731895 () Bool)

(declare-fun res!1514927 () Bool)

(assert (=> b!3731895 (=> (not res!1514927) (not e!2308800))))

(assert (=> b!3731895 (= res!1514927 (= (size!30039 lt!1298716) (+ (size!30039 (ite c!645975 call!272622 call!272625)) (size!30039 (ite c!645975 call!272625 call!272622)))))))

(declare-fun b!3731893 () Bool)

(assert (=> b!3731893 (= e!2308799 (ite c!645975 call!272625 call!272622))))

(assert (= (and d!1090766 c!646068) b!3731893))

(assert (= (and d!1090766 (not c!646068)) b!3731894))

(assert (= (and d!1090766 res!1514928) b!3731895))

(assert (= (and b!3731895 res!1514927) b!3731896))

(declare-fun m!4230715 () Bool)

(assert (=> b!3731894 m!4230715))

(declare-fun m!4230717 () Bool)

(assert (=> d!1090766 m!4230717))

(declare-fun m!4230719 () Bool)

(assert (=> d!1090766 m!4230719))

(declare-fun m!4230721 () Bool)

(assert (=> d!1090766 m!4230721))

(declare-fun m!4230723 () Bool)

(assert (=> b!3731895 m!4230723))

(declare-fun m!4230725 () Bool)

(assert (=> b!3731895 m!4230725))

(declare-fun m!4230727 () Bool)

(assert (=> b!3731895 m!4230727))

(assert (=> bm!272619 d!1090766))

(declare-fun b!3731897 () Bool)

(declare-fun e!2308806 () Bool)

(declare-fun e!2308801 () Bool)

(assert (=> b!3731897 (= e!2308806 e!2308801)))

(declare-fun c!646070 () Bool)

(assert (=> b!3731897 (= c!646070 ((_ is Star!10929) (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))))))

(declare-fun b!3731898 () Bool)

(declare-fun e!2308802 () Bool)

(declare-fun e!2308805 () Bool)

(assert (=> b!3731898 (= e!2308802 e!2308805)))

(declare-fun res!1514933 () Bool)

(assert (=> b!3731898 (=> (not res!1514933) (not e!2308805))))

(declare-fun call!272696 () Bool)

(assert (=> b!3731898 (= res!1514933 call!272696)))

(declare-fun d!1090768 () Bool)

(declare-fun res!1514929 () Bool)

(assert (=> d!1090768 (=> res!1514929 e!2308806)))

(assert (=> d!1090768 (= res!1514929 ((_ is ElementMatch!10929) (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))))))

(assert (=> d!1090768 (= (validRegex!5036 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))) e!2308806)))

(declare-fun c!646069 () Bool)

(declare-fun call!272697 () Bool)

(declare-fun bm!272691 () Bool)

(assert (=> bm!272691 (= call!272697 (validRegex!5036 (ite c!646070 (reg!11258 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))) (ite c!646069 (regOne!22371 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))) (regOne!22370 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968))))))))))

(declare-fun b!3731899 () Bool)

(declare-fun e!2308804 () Bool)

(assert (=> b!3731899 (= e!2308801 e!2308804)))

(declare-fun res!1514931 () Bool)

(assert (=> b!3731899 (= res!1514931 (not (nullable!3837 (reg!11258 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))))))))

(assert (=> b!3731899 (=> (not res!1514931) (not e!2308804))))

(declare-fun bm!272692 () Bool)

(assert (=> bm!272692 (= call!272696 call!272697)))

(declare-fun b!3731900 () Bool)

(declare-fun res!1514932 () Bool)

(assert (=> b!3731900 (=> res!1514932 e!2308802)))

(assert (=> b!3731900 (= res!1514932 (not ((_ is Concat!17200) (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968))))))))

(declare-fun e!2308807 () Bool)

(assert (=> b!3731900 (= e!2308807 e!2308802)))

(declare-fun b!3731901 () Bool)

(declare-fun call!272698 () Bool)

(assert (=> b!3731901 (= e!2308805 call!272698)))

(declare-fun b!3731902 () Bool)

(declare-fun res!1514930 () Bool)

(declare-fun e!2308803 () Bool)

(assert (=> b!3731902 (=> (not res!1514930) (not e!2308803))))

(assert (=> b!3731902 (= res!1514930 call!272696)))

(assert (=> b!3731902 (= e!2308807 e!2308803)))

(declare-fun b!3731903 () Bool)

(assert (=> b!3731903 (= e!2308803 call!272698)))

(declare-fun b!3731904 () Bool)

(assert (=> b!3731904 (= e!2308801 e!2308807)))

(assert (=> b!3731904 (= c!646069 ((_ is Union!10929) (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))))))

(declare-fun b!3731905 () Bool)

(assert (=> b!3731905 (= e!2308804 call!272697)))

(declare-fun bm!272693 () Bool)

(assert (=> bm!272693 (= call!272698 (validRegex!5036 (ite c!646069 (regTwo!22371 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))) (regTwo!22370 (ite c!645933 (reg!11258 r!26968) (ite c!645932 (regOne!22371 r!26968) (regOne!22370 r!26968)))))))))

(assert (= (and d!1090768 (not res!1514929)) b!3731897))

(assert (= (and b!3731897 c!646070) b!3731899))

(assert (= (and b!3731897 (not c!646070)) b!3731904))

(assert (= (and b!3731899 res!1514931) b!3731905))

(assert (= (and b!3731904 c!646069) b!3731902))

(assert (= (and b!3731904 (not c!646069)) b!3731900))

(assert (= (and b!3731902 res!1514930) b!3731903))

(assert (= (and b!3731900 (not res!1514932)) b!3731898))

(assert (= (and b!3731898 res!1514933) b!3731901))

(assert (= (or b!3731903 b!3731901) bm!272693))

(assert (= (or b!3731902 b!3731898) bm!272692))

(assert (= (or b!3731905 bm!272692) bm!272691))

(declare-fun m!4230729 () Bool)

(assert (=> bm!272691 m!4230729))

(declare-fun m!4230731 () Bool)

(assert (=> b!3731899 m!4230731))

(declare-fun m!4230733 () Bool)

(assert (=> bm!272693 m!4230733))

(assert (=> bm!272583 d!1090768))

(declare-fun b!3731906 () Bool)

(declare-fun e!2308810 () List!39810)

(declare-fun call!272700 () List!39810)

(assert (=> b!3731906 (= e!2308810 call!272700)))

(declare-fun b!3731907 () Bool)

(assert (=> b!3731907 (= e!2308810 call!272700)))

(declare-fun e!2308809 () List!39810)

(declare-fun b!3731908 () Bool)

(assert (=> b!3731908 (= e!2308809 (Cons!39686 (c!645909 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) Nil!39686))))

(declare-fun c!646074 () Bool)

(declare-fun call!272699 () List!39810)

(declare-fun bm!272694 () Bool)

(assert (=> bm!272694 (= call!272699 (usedCharacters!1192 (ite c!646074 (regOne!22371 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) (regTwo!22370 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))))

(declare-fun call!272701 () List!39810)

(declare-fun c!646072 () Bool)

(declare-fun bm!272695 () Bool)

(assert (=> bm!272695 (= call!272701 (usedCharacters!1192 (ite c!646072 (reg!11258 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) (ite c!646074 (regTwo!22371 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) (regOne!22370 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968)))))))))))

(declare-fun call!272702 () List!39810)

(declare-fun bm!272696 () Bool)

(assert (=> bm!272696 (= call!272700 (++!9853 (ite c!646074 call!272699 call!272702) (ite c!646074 call!272702 call!272699)))))

(declare-fun d!1090770 () Bool)

(declare-fun c!646073 () Bool)

(assert (=> d!1090770 (= c!646073 (or ((_ is EmptyExpr!10929) (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) ((_ is EmptyLang!10929) (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968)))))))))

(declare-fun e!2308811 () List!39810)

(assert (=> d!1090770 (= (usedCharacters!1192 (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) e!2308811)))

(declare-fun b!3731909 () Bool)

(assert (=> b!3731909 (= c!646072 ((_ is Star!10929) (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(declare-fun e!2308808 () List!39810)

(assert (=> b!3731909 (= e!2308809 e!2308808)))

(declare-fun b!3731910 () Bool)

(assert (=> b!3731910 (= e!2308811 Nil!39686)))

(declare-fun b!3731911 () Bool)

(assert (=> b!3731911 (= e!2308808 e!2308810)))

(assert (=> b!3731911 (= c!646074 ((_ is Union!10929) (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(declare-fun b!3731912 () Bool)

(assert (=> b!3731912 (= e!2308811 e!2308809)))

(declare-fun c!646071 () Bool)

(assert (=> b!3731912 (= c!646071 ((_ is ElementMatch!10929) (ite c!645973 (reg!11258 (regOne!22370 r!26968)) (ite c!645975 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(declare-fun bm!272697 () Bool)

(assert (=> bm!272697 (= call!272702 call!272701)))

(declare-fun b!3731913 () Bool)

(assert (=> b!3731913 (= e!2308808 call!272701)))

(assert (= (and d!1090770 c!646073) b!3731910))

(assert (= (and d!1090770 (not c!646073)) b!3731912))

(assert (= (and b!3731912 c!646071) b!3731908))

(assert (= (and b!3731912 (not c!646071)) b!3731909))

(assert (= (and b!3731909 c!646072) b!3731913))

(assert (= (and b!3731909 (not c!646072)) b!3731911))

(assert (= (and b!3731911 c!646074) b!3731906))

(assert (= (and b!3731911 (not c!646074)) b!3731907))

(assert (= (or b!3731906 b!3731907) bm!272694))

(assert (= (or b!3731906 b!3731907) bm!272697))

(assert (= (or b!3731906 b!3731907) bm!272696))

(assert (= (or b!3731913 bm!272697) bm!272695))

(declare-fun m!4230735 () Bool)

(assert (=> bm!272694 m!4230735))

(declare-fun m!4230737 () Bool)

(assert (=> bm!272695 m!4230737))

(declare-fun m!4230739 () Bool)

(assert (=> bm!272696 m!4230739))

(assert (=> bm!272618 d!1090770))

(declare-fun d!1090772 () Bool)

(declare-fun c!646077 () Bool)

(assert (=> d!1090772 (= c!646077 ((_ is Nil!39686) (usedCharacters!1192 (regOne!22370 r!26968))))))

(declare-fun e!2308814 () (InoxSet C!22044))

(assert (=> d!1090772 (= (content!5786 (usedCharacters!1192 (regOne!22370 r!26968))) e!2308814)))

(declare-fun b!3731918 () Bool)

(assert (=> b!3731918 (= e!2308814 ((as const (Array C!22044 Bool)) false))))

(declare-fun b!3731919 () Bool)

(assert (=> b!3731919 (= e!2308814 ((_ map or) (store ((as const (Array C!22044 Bool)) false) (h!45106 (usedCharacters!1192 (regOne!22370 r!26968))) true) (content!5786 (t!302493 (usedCharacters!1192 (regOne!22370 r!26968))))))))

(assert (= (and d!1090772 c!646077) b!3731918))

(assert (= (and d!1090772 (not c!646077)) b!3731919))

(declare-fun m!4230741 () Bool)

(assert (=> b!3731919 m!4230741))

(assert (=> b!3731919 m!4230709))

(assert (=> d!1090698 d!1090772))

(declare-fun d!1090774 () Bool)

(assert (=> d!1090774 (= (nullable!3837 (reg!11258 r!26968)) (nullableFct!1090 (reg!11258 r!26968)))))

(declare-fun bs!575103 () Bool)

(assert (= bs!575103 d!1090774))

(declare-fun m!4230743 () Bool)

(assert (=> bs!575103 m!4230743))

(assert (=> b!3731376 d!1090774))

(declare-fun bm!272702 () Bool)

(declare-fun call!272707 () Bool)

(declare-fun c!646080 () Bool)

(assert (=> bm!272702 (= call!272707 (nullable!3837 (ite c!646080 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(declare-fun d!1090776 () Bool)

(declare-fun res!1514945 () Bool)

(declare-fun e!2308827 () Bool)

(assert (=> d!1090776 (=> res!1514945 e!2308827)))

(assert (=> d!1090776 (= res!1514945 ((_ is EmptyExpr!10929) (regOne!22370 r!26968)))))

(assert (=> d!1090776 (= (nullableFct!1090 (regOne!22370 r!26968)) e!2308827)))

(declare-fun b!3731934 () Bool)

(declare-fun e!2308831 () Bool)

(assert (=> b!3731934 (= e!2308831 call!272707)))

(declare-fun b!3731935 () Bool)

(declare-fun e!2308829 () Bool)

(declare-fun e!2308830 () Bool)

(assert (=> b!3731935 (= e!2308829 e!2308830)))

(assert (=> b!3731935 (= c!646080 ((_ is Union!10929) (regOne!22370 r!26968)))))

(declare-fun b!3731936 () Bool)

(assert (=> b!3731936 (= e!2308830 e!2308831)))

(declare-fun res!1514948 () Bool)

(declare-fun call!272708 () Bool)

(assert (=> b!3731936 (= res!1514948 call!272708)))

(assert (=> b!3731936 (=> (not res!1514948) (not e!2308831))))

(declare-fun b!3731937 () Bool)

(declare-fun e!2308828 () Bool)

(assert (=> b!3731937 (= e!2308830 e!2308828)))

(declare-fun res!1514944 () Bool)

(assert (=> b!3731937 (= res!1514944 call!272707)))

(assert (=> b!3731937 (=> res!1514944 e!2308828)))

(declare-fun bm!272703 () Bool)

(assert (=> bm!272703 (= call!272708 (nullable!3837 (ite c!646080 (regTwo!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968)))))))

(declare-fun b!3731938 () Bool)

(assert (=> b!3731938 (= e!2308828 call!272708)))

(declare-fun b!3731939 () Bool)

(declare-fun e!2308832 () Bool)

(assert (=> b!3731939 (= e!2308832 e!2308829)))

(declare-fun res!1514946 () Bool)

(assert (=> b!3731939 (=> res!1514946 e!2308829)))

(assert (=> b!3731939 (= res!1514946 ((_ is Star!10929) (regOne!22370 r!26968)))))

(declare-fun b!3731940 () Bool)

(assert (=> b!3731940 (= e!2308827 e!2308832)))

(declare-fun res!1514947 () Bool)

(assert (=> b!3731940 (=> (not res!1514947) (not e!2308832))))

(assert (=> b!3731940 (= res!1514947 (and (not ((_ is EmptyLang!10929) (regOne!22370 r!26968))) (not ((_ is ElementMatch!10929) (regOne!22370 r!26968)))))))

(assert (= (and d!1090776 (not res!1514945)) b!3731940))

(assert (= (and b!3731940 res!1514947) b!3731939))

(assert (= (and b!3731939 (not res!1514946)) b!3731935))

(assert (= (and b!3731935 c!646080) b!3731937))

(assert (= (and b!3731935 (not c!646080)) b!3731936))

(assert (= (and b!3731937 (not res!1514944)) b!3731938))

(assert (= (and b!3731936 res!1514948) b!3731934))

(assert (= (or b!3731938 b!3731936) bm!272703))

(assert (= (or b!3731937 b!3731934) bm!272702))

(declare-fun m!4230745 () Bool)

(assert (=> bm!272702 m!4230745))

(declare-fun m!4230747 () Bool)

(assert (=> bm!272703 m!4230747))

(assert (=> d!1090706 d!1090776))

(declare-fun b!3731941 () Bool)

(declare-fun e!2308835 () List!39810)

(declare-fun call!272710 () List!39810)

(assert (=> b!3731941 (= e!2308835 call!272710)))

(declare-fun b!3731942 () Bool)

(assert (=> b!3731942 (= e!2308835 call!272710)))

(declare-fun b!3731943 () Bool)

(declare-fun e!2308834 () List!39810)

(assert (=> b!3731943 (= e!2308834 (Cons!39686 (c!645909 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) Nil!39686))))

(declare-fun c!646084 () Bool)

(declare-fun call!272709 () List!39810)

(declare-fun bm!272704 () Bool)

(assert (=> bm!272704 (= call!272709 (usedCharacters!1192 (ite c!646084 (regOne!22371 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) (regTwo!22370 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))))

(declare-fun bm!272705 () Bool)

(declare-fun c!646082 () Bool)

(declare-fun call!272711 () List!39810)

(assert (=> bm!272705 (= call!272711 (usedCharacters!1192 (ite c!646082 (reg!11258 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) (ite c!646084 (regTwo!22371 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) (regOne!22370 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968))))))))))

(declare-fun bm!272706 () Bool)

(declare-fun call!272712 () List!39810)

(assert (=> bm!272706 (= call!272710 (++!9853 (ite c!646084 call!272709 call!272712) (ite c!646084 call!272712 call!272709)))))

(declare-fun d!1090778 () Bool)

(declare-fun c!646083 () Bool)

(assert (=> d!1090778 (= c!646083 (or ((_ is EmptyExpr!10929) (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) ((_ is EmptyLang!10929) (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968))))))))

(declare-fun e!2308836 () List!39810)

(assert (=> d!1090778 (= (usedCharacters!1192 (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) e!2308836)))

(declare-fun b!3731944 () Bool)

(assert (=> b!3731944 (= c!646082 ((_ is Star!10929) (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(declare-fun e!2308833 () List!39810)

(assert (=> b!3731944 (= e!2308834 e!2308833)))

(declare-fun b!3731945 () Bool)

(assert (=> b!3731945 (= e!2308836 Nil!39686)))

(declare-fun b!3731946 () Bool)

(assert (=> b!3731946 (= e!2308833 e!2308835)))

(assert (=> b!3731946 (= c!646084 ((_ is Union!10929) (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(declare-fun b!3731947 () Bool)

(assert (=> b!3731947 (= e!2308836 e!2308834)))

(declare-fun c!646081 () Bool)

(assert (=> b!3731947 (= c!646081 ((_ is ElementMatch!10929) (ite c!645975 (regOne!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(declare-fun bm!272707 () Bool)

(assert (=> bm!272707 (= call!272712 call!272711)))

(declare-fun b!3731948 () Bool)

(assert (=> b!3731948 (= e!2308833 call!272711)))

(assert (= (and d!1090778 c!646083) b!3731945))

(assert (= (and d!1090778 (not c!646083)) b!3731947))

(assert (= (and b!3731947 c!646081) b!3731943))

(assert (= (and b!3731947 (not c!646081)) b!3731944))

(assert (= (and b!3731944 c!646082) b!3731948))

(assert (= (and b!3731944 (not c!646082)) b!3731946))

(assert (= (and b!3731946 c!646084) b!3731941))

(assert (= (and b!3731946 (not c!646084)) b!3731942))

(assert (= (or b!3731941 b!3731942) bm!272704))

(assert (= (or b!3731941 b!3731942) bm!272707))

(assert (= (or b!3731941 b!3731942) bm!272706))

(assert (= (or b!3731948 bm!272707) bm!272705))

(declare-fun m!4230749 () Bool)

(assert (=> bm!272704 m!4230749))

(declare-fun m!4230751 () Bool)

(assert (=> bm!272705 m!4230751))

(declare-fun m!4230753 () Bool)

(assert (=> bm!272706 m!4230753))

(assert (=> bm!272617 d!1090778))

(declare-fun d!1090780 () Bool)

(declare-fun c!646085 () Bool)

(assert (=> d!1090780 (= c!646085 ((_ is Nil!39686) (usedCharacters!1192 r!26968)))))

(declare-fun e!2308837 () (InoxSet C!22044))

(assert (=> d!1090780 (= (content!5786 (usedCharacters!1192 r!26968)) e!2308837)))

(declare-fun b!3731949 () Bool)

(assert (=> b!3731949 (= e!2308837 ((as const (Array C!22044 Bool)) false))))

(declare-fun b!3731950 () Bool)

(assert (=> b!3731950 (= e!2308837 ((_ map or) (store ((as const (Array C!22044 Bool)) false) (h!45106 (usedCharacters!1192 r!26968)) true) (content!5786 (t!302493 (usedCharacters!1192 r!26968)))))))

(assert (= (and d!1090780 c!646085) b!3731949))

(assert (= (and d!1090780 (not c!646085)) b!3731950))

(declare-fun m!4230755 () Bool)

(assert (=> b!3731950 m!4230755))

(assert (=> b!3731950 m!4230683))

(assert (=> d!1090684 d!1090780))

(declare-fun b!3731951 () Bool)

(declare-fun e!2308838 () Int)

(declare-fun e!2308840 () Int)

(assert (=> b!3731951 (= e!2308838 e!2308840)))

(declare-fun c!646090 () Bool)

(assert (=> b!3731951 (= c!646090 ((_ is Concat!17200) (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))))))

(declare-fun b!3731952 () Bool)

(declare-fun e!2308839 () Int)

(assert (=> b!3731952 (= e!2308839 0)))

(declare-fun d!1090782 () Bool)

(declare-fun lt!1298717 () Int)

(assert (=> d!1090782 (>= lt!1298717 0)))

(assert (=> d!1090782 (= lt!1298717 e!2308838)))

(declare-fun c!646087 () Bool)

(assert (=> d!1090782 (= c!646087 ((_ is ElementMatch!10929) (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))))))

(assert (=> d!1090782 (= (RegexPrimitiveSize!145 (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))) lt!1298717)))

(declare-fun b!3731953 () Bool)

(declare-fun e!2308842 () Int)

(assert (=> b!3731953 (= e!2308839 e!2308842)))

(declare-fun c!646086 () Bool)

(assert (=> b!3731953 (= c!646086 ((_ is Star!10929) (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))))))

(declare-fun b!3731954 () Bool)

(declare-fun call!272713 () Int)

(assert (=> b!3731954 (= e!2308842 (+ 1 call!272713))))

(declare-fun b!3731955 () Bool)

(declare-fun c!646088 () Bool)

(assert (=> b!3731955 (= c!646088 ((_ is EmptyExpr!10929) (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))))))

(assert (=> b!3731955 (= e!2308840 e!2308839)))

(declare-fun b!3731956 () Bool)

(declare-fun e!2308841 () Int)

(assert (=> b!3731956 (= e!2308841 0)))

(declare-fun call!272714 () Int)

(declare-fun bm!272708 () Bool)

(assert (=> bm!272708 (= call!272714 (RegexPrimitiveSize!145 (ite c!646090 (regTwo!22370 (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))) (regTwo!22371 (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))))))))

(declare-fun b!3731957 () Bool)

(declare-fun call!272715 () Int)

(assert (=> b!3731957 (= e!2308840 (+ 1 call!272715 call!272714))))

(declare-fun bm!272709 () Bool)

(assert (=> bm!272709 (= call!272713 call!272715)))

(declare-fun c!646089 () Bool)

(declare-fun b!3731958 () Bool)

(assert (=> b!3731958 (= c!646089 ((_ is EmptyLang!10929) (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))))))

(assert (=> b!3731958 (= e!2308842 e!2308841)))

(declare-fun b!3731959 () Bool)

(assert (=> b!3731959 (= e!2308841 (+ 1 call!272713 call!272714))))

(declare-fun bm!272710 () Bool)

(assert (=> bm!272710 (= call!272715 (RegexPrimitiveSize!145 (ite c!646090 (regOne!22370 (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))) (ite c!646086 (reg!11258 (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968)))) (regOne!22371 (ite c!645995 (regOne!22370 r!26968) (ite c!645991 (reg!11258 r!26968) (regOne!22371 r!26968))))))))))

(declare-fun b!3731960 () Bool)

(assert (=> b!3731960 (= e!2308838 1)))

(assert (= (and d!1090782 c!646087) b!3731960))

(assert (= (and d!1090782 (not c!646087)) b!3731951))

(assert (= (and b!3731951 c!646090) b!3731957))

(assert (= (and b!3731951 (not c!646090)) b!3731955))

(assert (= (and b!3731955 c!646088) b!3731952))

(assert (= (and b!3731955 (not c!646088)) b!3731953))

(assert (= (and b!3731953 c!646086) b!3731954))

(assert (= (and b!3731953 (not c!646086)) b!3731958))

(assert (= (and b!3731958 c!646089) b!3731956))

(assert (= (and b!3731958 (not c!646089)) b!3731959))

(assert (= (or b!3731954 b!3731959) bm!272709))

(assert (= (or b!3731957 bm!272709) bm!272710))

(assert (= (or b!3731957 b!3731959) bm!272708))

(declare-fun m!4230757 () Bool)

(assert (=> bm!272708 m!4230757))

(declare-fun m!4230759 () Bool)

(assert (=> bm!272710 m!4230759))

(assert (=> bm!272632 d!1090782))

(declare-fun b!3731961 () Bool)

(declare-fun e!2308843 () Int)

(declare-fun e!2308845 () Int)

(assert (=> b!3731961 (= e!2308843 e!2308845)))

(declare-fun c!646095 () Bool)

(assert (=> b!3731961 (= c!646095 ((_ is Concat!17200) (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))))))

(declare-fun b!3731962 () Bool)

(declare-fun e!2308844 () Int)

(assert (=> b!3731962 (= e!2308844 0)))

(declare-fun d!1090784 () Bool)

(declare-fun lt!1298718 () Int)

(assert (=> d!1090784 (>= lt!1298718 0)))

(assert (=> d!1090784 (= lt!1298718 e!2308843)))

(declare-fun c!646092 () Bool)

(assert (=> d!1090784 (= c!646092 ((_ is ElementMatch!10929) (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))))))

(assert (=> d!1090784 (= (RegexPrimitiveSize!145 (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))) lt!1298718)))

(declare-fun b!3731963 () Bool)

(declare-fun e!2308847 () Int)

(assert (=> b!3731963 (= e!2308844 e!2308847)))

(declare-fun c!646091 () Bool)

(assert (=> b!3731963 (= c!646091 ((_ is Star!10929) (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))))))

(declare-fun b!3731964 () Bool)

(declare-fun call!272716 () Int)

(assert (=> b!3731964 (= e!2308847 (+ 1 call!272716))))

(declare-fun b!3731965 () Bool)

(declare-fun c!646093 () Bool)

(assert (=> b!3731965 (= c!646093 ((_ is EmptyExpr!10929) (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))))))

(assert (=> b!3731965 (= e!2308845 e!2308844)))

(declare-fun b!3731966 () Bool)

(declare-fun e!2308846 () Int)

(assert (=> b!3731966 (= e!2308846 0)))

(declare-fun call!272717 () Int)

(declare-fun bm!272711 () Bool)

(assert (=> bm!272711 (= call!272717 (RegexPrimitiveSize!145 (ite c!646095 (regTwo!22370 (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))) (regTwo!22371 (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))))))))

(declare-fun b!3731967 () Bool)

(declare-fun call!272718 () Int)

(assert (=> b!3731967 (= e!2308845 (+ 1 call!272718 call!272717))))

(declare-fun bm!272712 () Bool)

(assert (=> bm!272712 (= call!272716 call!272718)))

(declare-fun c!646094 () Bool)

(declare-fun b!3731968 () Bool)

(assert (=> b!3731968 (= c!646094 ((_ is EmptyLang!10929) (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))))))

(assert (=> b!3731968 (= e!2308847 e!2308846)))

(declare-fun b!3731969 () Bool)

(assert (=> b!3731969 (= e!2308846 (+ 1 call!272716 call!272717))))

(declare-fun bm!272713 () Bool)

(assert (=> bm!272713 (= call!272718 (RegexPrimitiveSize!145 (ite c!646095 (regOne!22370 (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))) (ite c!646091 (reg!11258 (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968))))) (regOne!22371 (ite c!645990 (regOne!22370 (regOne!22370 r!26968)) (ite c!645986 (reg!11258 (regOne!22370 r!26968)) (regOne!22371 (regOne!22370 r!26968)))))))))))

(declare-fun b!3731970 () Bool)

(assert (=> b!3731970 (= e!2308843 1)))

(assert (= (and d!1090784 c!646092) b!3731970))

(assert (= (and d!1090784 (not c!646092)) b!3731961))

(assert (= (and b!3731961 c!646095) b!3731967))

(assert (= (and b!3731961 (not c!646095)) b!3731965))

(assert (= (and b!3731965 c!646093) b!3731962))

(assert (= (and b!3731965 (not c!646093)) b!3731963))

(assert (= (and b!3731963 c!646091) b!3731964))

(assert (= (and b!3731963 (not c!646091)) b!3731968))

(assert (= (and b!3731968 c!646094) b!3731966))

(assert (= (and b!3731968 (not c!646094)) b!3731969))

(assert (= (or b!3731964 b!3731969) bm!272712))

(assert (= (or b!3731967 bm!272712) bm!272713))

(assert (= (or b!3731967 b!3731969) bm!272711))

(declare-fun m!4230761 () Bool)

(assert (=> bm!272711 m!4230761))

(declare-fun m!4230763 () Bool)

(assert (=> bm!272713 m!4230763))

(assert (=> bm!272629 d!1090784))

(declare-fun b!3731971 () Bool)

(declare-fun e!2308850 () List!39810)

(declare-fun call!272720 () List!39810)

(assert (=> b!3731971 (= e!2308850 call!272720)))

(declare-fun b!3731972 () Bool)

(assert (=> b!3731972 (= e!2308850 call!272720)))

(declare-fun e!2308849 () List!39810)

(declare-fun b!3731973 () Bool)

(assert (=> b!3731973 (= e!2308849 (Cons!39686 (c!645909 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))) Nil!39686))))

(declare-fun bm!272714 () Bool)

(declare-fun call!272719 () List!39810)

(declare-fun c!646099 () Bool)

(assert (=> bm!272714 (= call!272719 (usedCharacters!1192 (ite c!646099 (regOne!22371 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))) (regTwo!22370 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))))))))

(declare-fun c!646097 () Bool)

(declare-fun call!272721 () List!39810)

(declare-fun bm!272715 () Bool)

(assert (=> bm!272715 (= call!272721 (usedCharacters!1192 (ite c!646097 (reg!11258 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))) (ite c!646099 (regTwo!22371 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))) (regOne!22370 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968))))))))))

(declare-fun bm!272716 () Bool)

(declare-fun call!272722 () List!39810)

(assert (=> bm!272716 (= call!272720 (++!9853 (ite c!646099 call!272719 call!272722) (ite c!646099 call!272722 call!272719)))))

(declare-fun c!646098 () Bool)

(declare-fun d!1090786 () Bool)

(assert (=> d!1090786 (= c!646098 (or ((_ is EmptyExpr!10929) (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))) ((_ is EmptyLang!10929) (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968))))))))

(declare-fun e!2308851 () List!39810)

(assert (=> d!1090786 (= (usedCharacters!1192 (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))) e!2308851)))

(declare-fun b!3731974 () Bool)

(assert (=> b!3731974 (= c!646097 ((_ is Star!10929) (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))))))

(declare-fun e!2308848 () List!39810)

(assert (=> b!3731974 (= e!2308849 e!2308848)))

(declare-fun b!3731975 () Bool)

(assert (=> b!3731975 (= e!2308851 Nil!39686)))

(declare-fun b!3731976 () Bool)

(assert (=> b!3731976 (= e!2308848 e!2308850)))

(assert (=> b!3731976 (= c!646099 ((_ is Union!10929) (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))))))

(declare-fun b!3731977 () Bool)

(assert (=> b!3731977 (= e!2308851 e!2308849)))

(declare-fun c!646096 () Bool)

(assert (=> b!3731977 (= c!646096 ((_ is ElementMatch!10929) (ite c!645969 (reg!11258 r!26968) (ite c!645971 (regTwo!22371 r!26968) (regOne!22370 r!26968)))))))

(declare-fun bm!272717 () Bool)

(assert (=> bm!272717 (= call!272722 call!272721)))

(declare-fun b!3731978 () Bool)

(assert (=> b!3731978 (= e!2308848 call!272721)))

(assert (= (and d!1090786 c!646098) b!3731975))

(assert (= (and d!1090786 (not c!646098)) b!3731977))

(assert (= (and b!3731977 c!646096) b!3731973))

(assert (= (and b!3731977 (not c!646096)) b!3731974))

(assert (= (and b!3731974 c!646097) b!3731978))

(assert (= (and b!3731974 (not c!646097)) b!3731976))

(assert (= (and b!3731976 c!646099) b!3731971))

(assert (= (and b!3731976 (not c!646099)) b!3731972))

(assert (= (or b!3731971 b!3731972) bm!272714))

(assert (= (or b!3731971 b!3731972) bm!272717))

(assert (= (or b!3731971 b!3731972) bm!272716))

(assert (= (or b!3731978 bm!272717) bm!272715))

(declare-fun m!4230765 () Bool)

(assert (=> bm!272714 m!4230765))

(declare-fun m!4230767 () Bool)

(assert (=> bm!272715 m!4230767))

(declare-fun m!4230769 () Bool)

(assert (=> bm!272716 m!4230769))

(assert (=> bm!272614 d!1090786))

(declare-fun b!3731979 () Bool)

(declare-fun e!2308857 () Bool)

(declare-fun e!2308852 () Bool)

(assert (=> b!3731979 (= e!2308857 e!2308852)))

(declare-fun c!646101 () Bool)

(assert (=> b!3731979 (= c!646101 ((_ is Star!10929) (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(declare-fun b!3731980 () Bool)

(declare-fun e!2308853 () Bool)

(declare-fun e!2308856 () Bool)

(assert (=> b!3731980 (= e!2308853 e!2308856)))

(declare-fun res!1514953 () Bool)

(assert (=> b!3731980 (=> (not res!1514953) (not e!2308856))))

(declare-fun call!272723 () Bool)

(assert (=> b!3731980 (= res!1514953 call!272723)))

(declare-fun d!1090788 () Bool)

(declare-fun res!1514949 () Bool)

(assert (=> d!1090788 (=> res!1514949 e!2308857)))

(assert (=> d!1090788 (= res!1514949 ((_ is ElementMatch!10929) (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(assert (=> d!1090788 (= (validRegex!5036 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) e!2308857)))

(declare-fun c!646100 () Bool)

(declare-fun call!272724 () Bool)

(declare-fun bm!272718 () Bool)

(assert (=> bm!272718 (= call!272724 (validRegex!5036 (ite c!646101 (reg!11258 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) (ite c!646100 (regOne!22371 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) (regOne!22370 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968)))))))))))

(declare-fun b!3731981 () Bool)

(declare-fun e!2308855 () Bool)

(assert (=> b!3731981 (= e!2308852 e!2308855)))

(declare-fun res!1514951 () Bool)

(assert (=> b!3731981 (= res!1514951 (not (nullable!3837 (reg!11258 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))))

(assert (=> b!3731981 (=> (not res!1514951) (not e!2308855))))

(declare-fun bm!272719 () Bool)

(assert (=> bm!272719 (= call!272723 call!272724)))

(declare-fun b!3731982 () Bool)

(declare-fun res!1514952 () Bool)

(assert (=> b!3731982 (=> res!1514952 e!2308853)))

(assert (=> b!3731982 (= res!1514952 (not ((_ is Concat!17200) (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968)))))))))

(declare-fun e!2308858 () Bool)

(assert (=> b!3731982 (= e!2308858 e!2308853)))

(declare-fun b!3731983 () Bool)

(declare-fun call!272725 () Bool)

(assert (=> b!3731983 (= e!2308856 call!272725)))

(declare-fun b!3731984 () Bool)

(declare-fun res!1514950 () Bool)

(declare-fun e!2308854 () Bool)

(assert (=> b!3731984 (=> (not res!1514950) (not e!2308854))))

(assert (=> b!3731984 (= res!1514950 call!272723)))

(assert (=> b!3731984 (= e!2308858 e!2308854)))

(declare-fun b!3731985 () Bool)

(assert (=> b!3731985 (= e!2308854 call!272725)))

(declare-fun b!3731986 () Bool)

(assert (=> b!3731986 (= e!2308852 e!2308858)))

(assert (=> b!3731986 (= c!646100 ((_ is Union!10929) (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))

(declare-fun b!3731987 () Bool)

(assert (=> b!3731987 (= e!2308855 call!272724)))

(declare-fun bm!272720 () Bool)

(assert (=> bm!272720 (= call!272725 (validRegex!5036 (ite c!646100 (regTwo!22371 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))) (regTwo!22370 (ite c!645997 (reg!11258 (regOne!22370 r!26968)) (ite c!645996 (regOne!22371 (regOne!22370 r!26968)) (regOne!22370 (regOne!22370 r!26968))))))))))

(assert (= (and d!1090788 (not res!1514949)) b!3731979))

(assert (= (and b!3731979 c!646101) b!3731981))

(assert (= (and b!3731979 (not c!646101)) b!3731986))

(assert (= (and b!3731981 res!1514951) b!3731987))

(assert (= (and b!3731986 c!646100) b!3731984))

(assert (= (and b!3731986 (not c!646100)) b!3731982))

(assert (= (and b!3731984 res!1514950) b!3731985))

(assert (= (and b!3731982 (not res!1514952)) b!3731980))

(assert (= (and b!3731980 res!1514953) b!3731983))

(assert (= (or b!3731985 b!3731983) bm!272720))

(assert (= (or b!3731984 b!3731980) bm!272719))

(assert (= (or b!3731987 bm!272719) bm!272718))

(declare-fun m!4230771 () Bool)

(assert (=> bm!272718 m!4230771))

(declare-fun m!4230773 () Bool)

(assert (=> b!3731981 m!4230773))

(declare-fun m!4230775 () Bool)

(assert (=> bm!272720 m!4230775))

(assert (=> bm!272633 d!1090788))

(declare-fun b!3731988 () Bool)

(declare-fun e!2308861 () List!39810)

(declare-fun call!272727 () List!39810)

(assert (=> b!3731988 (= e!2308861 call!272727)))

(declare-fun b!3731989 () Bool)

(assert (=> b!3731989 (= e!2308861 call!272727)))

(declare-fun b!3731990 () Bool)

(declare-fun e!2308860 () List!39810)

(assert (=> b!3731990 (= e!2308860 (Cons!39686 (c!645909 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))) Nil!39686))))

(declare-fun call!272726 () List!39810)

(declare-fun c!646105 () Bool)

(declare-fun bm!272721 () Bool)

(assert (=> bm!272721 (= call!272726 (usedCharacters!1192 (ite c!646105 (regOne!22371 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))) (regTwo!22370 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))))))))

(declare-fun c!646103 () Bool)

(declare-fun call!272728 () List!39810)

(declare-fun bm!272722 () Bool)

(assert (=> bm!272722 (= call!272728 (usedCharacters!1192 (ite c!646103 (reg!11258 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))) (ite c!646105 (regTwo!22371 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))) (regOne!22370 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968)))))))))

(declare-fun bm!272723 () Bool)

(declare-fun call!272729 () List!39810)

(assert (=> bm!272723 (= call!272727 (++!9853 (ite c!646105 call!272726 call!272729) (ite c!646105 call!272729 call!272726)))))

(declare-fun d!1090790 () Bool)

(declare-fun c!646104 () Bool)

(assert (=> d!1090790 (= c!646104 (or ((_ is EmptyExpr!10929) (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))) ((_ is EmptyLang!10929) (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968)))))))

(declare-fun e!2308862 () List!39810)

(assert (=> d!1090790 (= (usedCharacters!1192 (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))) e!2308862)))

(declare-fun b!3731991 () Bool)

(assert (=> b!3731991 (= c!646103 ((_ is Star!10929) (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))))))

(declare-fun e!2308859 () List!39810)

(assert (=> b!3731991 (= e!2308860 e!2308859)))

(declare-fun b!3731992 () Bool)

(assert (=> b!3731992 (= e!2308862 Nil!39686)))

(declare-fun b!3731993 () Bool)

(assert (=> b!3731993 (= e!2308859 e!2308861)))

(assert (=> b!3731993 (= c!646105 ((_ is Union!10929) (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))))))

(declare-fun b!3731994 () Bool)

(assert (=> b!3731994 (= e!2308862 e!2308860)))

(declare-fun c!646102 () Bool)

(assert (=> b!3731994 (= c!646102 ((_ is ElementMatch!10929) (ite c!645971 (regOne!22371 r!26968) (regTwo!22370 r!26968))))))

(declare-fun bm!272724 () Bool)

(assert (=> bm!272724 (= call!272729 call!272728)))

(declare-fun b!3731995 () Bool)

(assert (=> b!3731995 (= e!2308859 call!272728)))

(assert (= (and d!1090790 c!646104) b!3731992))

(assert (= (and d!1090790 (not c!646104)) b!3731994))

(assert (= (and b!3731994 c!646102) b!3731990))

(assert (= (and b!3731994 (not c!646102)) b!3731991))

(assert (= (and b!3731991 c!646103) b!3731995))

(assert (= (and b!3731991 (not c!646103)) b!3731993))

(assert (= (and b!3731993 c!646105) b!3731988))

(assert (= (and b!3731993 (not c!646105)) b!3731989))

(assert (= (or b!3731988 b!3731989) bm!272721))

(assert (= (or b!3731988 b!3731989) bm!272724))

(assert (= (or b!3731988 b!3731989) bm!272723))

(assert (= (or b!3731995 bm!272724) bm!272722))

(declare-fun m!4230777 () Bool)

(assert (=> bm!272721 m!4230777))

(declare-fun m!4230779 () Bool)

(assert (=> bm!272722 m!4230779))

(declare-fun m!4230781 () Bool)

(assert (=> bm!272723 m!4230781))

(assert (=> bm!272613 d!1090790))

(declare-fun b!3731996 () Bool)

(declare-fun e!2308868 () Bool)

(declare-fun e!2308863 () Bool)

(assert (=> b!3731996 (= e!2308868 e!2308863)))

(declare-fun c!646107 () Bool)

(assert (=> b!3731996 (= c!646107 ((_ is Star!10929) (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(declare-fun b!3731997 () Bool)

(declare-fun e!2308864 () Bool)

(declare-fun e!2308867 () Bool)

(assert (=> b!3731997 (= e!2308864 e!2308867)))

(declare-fun res!1514958 () Bool)

(assert (=> b!3731997 (=> (not res!1514958) (not e!2308867))))

(declare-fun call!272730 () Bool)

(assert (=> b!3731997 (= res!1514958 call!272730)))

(declare-fun d!1090792 () Bool)

(declare-fun res!1514954 () Bool)

(assert (=> d!1090792 (=> res!1514954 e!2308868)))

(assert (=> d!1090792 (= res!1514954 ((_ is ElementMatch!10929) (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(assert (=> d!1090792 (= (validRegex!5036 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) e!2308868)))

(declare-fun bm!272725 () Bool)

(declare-fun call!272731 () Bool)

(declare-fun c!646106 () Bool)

(assert (=> bm!272725 (= call!272731 (validRegex!5036 (ite c!646107 (reg!11258 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) (ite c!646106 (regOne!22371 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) (regOne!22370 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968))))))))))

(declare-fun b!3731998 () Bool)

(declare-fun e!2308866 () Bool)

(assert (=> b!3731998 (= e!2308863 e!2308866)))

(declare-fun res!1514956 () Bool)

(assert (=> b!3731998 (= res!1514956 (not (nullable!3837 (reg!11258 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))))

(assert (=> b!3731998 (=> (not res!1514956) (not e!2308866))))

(declare-fun bm!272726 () Bool)

(assert (=> bm!272726 (= call!272730 call!272731)))

(declare-fun b!3731999 () Bool)

(declare-fun res!1514957 () Bool)

(assert (=> b!3731999 (=> res!1514957 e!2308864)))

(assert (=> b!3731999 (= res!1514957 (not ((_ is Concat!17200) (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968))))))))

(declare-fun e!2308869 () Bool)

(assert (=> b!3731999 (= e!2308869 e!2308864)))

(declare-fun b!3732000 () Bool)

(declare-fun call!272732 () Bool)

(assert (=> b!3732000 (= e!2308867 call!272732)))

(declare-fun b!3732001 () Bool)

(declare-fun res!1514955 () Bool)

(declare-fun e!2308865 () Bool)

(assert (=> b!3732001 (=> (not res!1514955) (not e!2308865))))

(assert (=> b!3732001 (= res!1514955 call!272730)))

(assert (=> b!3732001 (= e!2308869 e!2308865)))

(declare-fun b!3732002 () Bool)

(assert (=> b!3732002 (= e!2308865 call!272732)))

(declare-fun b!3732003 () Bool)

(assert (=> b!3732003 (= e!2308863 e!2308869)))

(assert (=> b!3732003 (= c!646106 ((_ is Union!10929) (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))

(declare-fun b!3732004 () Bool)

(assert (=> b!3732004 (= e!2308866 call!272731)))

(declare-fun bm!272727 () Bool)

(assert (=> bm!272727 (= call!272732 (validRegex!5036 (ite c!646106 (regTwo!22371 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))) (regTwo!22370 (ite c!645996 (regTwo!22371 (regOne!22370 r!26968)) (regTwo!22370 (regOne!22370 r!26968)))))))))

(assert (= (and d!1090792 (not res!1514954)) b!3731996))

(assert (= (and b!3731996 c!646107) b!3731998))

(assert (= (and b!3731996 (not c!646107)) b!3732003))

(assert (= (and b!3731998 res!1514956) b!3732004))

(assert (= (and b!3732003 c!646106) b!3732001))

(assert (= (and b!3732003 (not c!646106)) b!3731999))

(assert (= (and b!3732001 res!1514955) b!3732002))

(assert (= (and b!3731999 (not res!1514957)) b!3731997))

(assert (= (and b!3731997 res!1514958) b!3732000))

(assert (= (or b!3732002 b!3732000) bm!272727))

(assert (= (or b!3732001 b!3731997) bm!272726))

(assert (= (or b!3732004 bm!272726) bm!272725))

(declare-fun m!4230783 () Bool)

(assert (=> bm!272725 m!4230783))

(declare-fun m!4230785 () Bool)

(assert (=> b!3731998 m!4230785))

(declare-fun m!4230787 () Bool)

(assert (=> bm!272727 m!4230787))

(assert (=> bm!272635 d!1090792))

(declare-fun b!3732006 () Bool)

(declare-fun e!2308870 () Bool)

(declare-fun tp!1135780 () Bool)

(declare-fun tp!1135784 () Bool)

(assert (=> b!3732006 (= e!2308870 (and tp!1135780 tp!1135784))))

(declare-fun b!3732008 () Bool)

(declare-fun tp!1135783 () Bool)

(declare-fun tp!1135782 () Bool)

(assert (=> b!3732008 (= e!2308870 (and tp!1135783 tp!1135782))))

(declare-fun b!3732005 () Bool)

(assert (=> b!3732005 (= e!2308870 tp_is_empty!18873)))

(declare-fun b!3732007 () Bool)

(declare-fun tp!1135781 () Bool)

(assert (=> b!3732007 (= e!2308870 tp!1135781)))

(assert (=> b!3731589 (= tp!1135651 e!2308870)))

(assert (= (and b!3731589 ((_ is ElementMatch!10929) (reg!11258 (reg!11258 r!26968)))) b!3732005))

(assert (= (and b!3731589 ((_ is Concat!17200) (reg!11258 (reg!11258 r!26968)))) b!3732006))

(assert (= (and b!3731589 ((_ is Star!10929) (reg!11258 (reg!11258 r!26968)))) b!3732007))

(assert (= (and b!3731589 ((_ is Union!10929) (reg!11258 (reg!11258 r!26968)))) b!3732008))

(declare-fun b!3732010 () Bool)

(declare-fun e!2308871 () Bool)

(declare-fun tp!1135785 () Bool)

(declare-fun tp!1135789 () Bool)

(assert (=> b!3732010 (= e!2308871 (and tp!1135785 tp!1135789))))

(declare-fun b!3732012 () Bool)

(declare-fun tp!1135788 () Bool)

(declare-fun tp!1135787 () Bool)

(assert (=> b!3732012 (= e!2308871 (and tp!1135788 tp!1135787))))

(declare-fun b!3732009 () Bool)

(assert (=> b!3732009 (= e!2308871 tp_is_empty!18873)))

(declare-fun b!3732011 () Bool)

(declare-fun tp!1135786 () Bool)

(assert (=> b!3732011 (= e!2308871 tp!1135786)))

(assert (=> b!3731584 (= tp!1135645 e!2308871)))

(assert (= (and b!3731584 ((_ is ElementMatch!10929) (regOne!22370 (regTwo!22371 r!26968)))) b!3732009))

(assert (= (and b!3731584 ((_ is Concat!17200) (regOne!22370 (regTwo!22371 r!26968)))) b!3732010))

(assert (= (and b!3731584 ((_ is Star!10929) (regOne!22370 (regTwo!22371 r!26968)))) b!3732011))

(assert (= (and b!3731584 ((_ is Union!10929) (regOne!22370 (regTwo!22371 r!26968)))) b!3732012))

(declare-fun b!3732014 () Bool)

(declare-fun e!2308872 () Bool)

(declare-fun tp!1135790 () Bool)

(declare-fun tp!1135794 () Bool)

(assert (=> b!3732014 (= e!2308872 (and tp!1135790 tp!1135794))))

(declare-fun b!3732016 () Bool)

(declare-fun tp!1135793 () Bool)

(declare-fun tp!1135792 () Bool)

(assert (=> b!3732016 (= e!2308872 (and tp!1135793 tp!1135792))))

(declare-fun b!3732013 () Bool)

(assert (=> b!3732013 (= e!2308872 tp_is_empty!18873)))

(declare-fun b!3732015 () Bool)

(declare-fun tp!1135791 () Bool)

(assert (=> b!3732015 (= e!2308872 tp!1135791)))

(assert (=> b!3731584 (= tp!1135649 e!2308872)))

(assert (= (and b!3731584 ((_ is ElementMatch!10929) (regTwo!22370 (regTwo!22371 r!26968)))) b!3732013))

(assert (= (and b!3731584 ((_ is Concat!17200) (regTwo!22370 (regTwo!22371 r!26968)))) b!3732014))

(assert (= (and b!3731584 ((_ is Star!10929) (regTwo!22370 (regTwo!22371 r!26968)))) b!3732015))

(assert (= (and b!3731584 ((_ is Union!10929) (regTwo!22370 (regTwo!22371 r!26968)))) b!3732016))

(declare-fun b!3732018 () Bool)

(declare-fun e!2308873 () Bool)

(declare-fun tp!1135795 () Bool)

(declare-fun tp!1135799 () Bool)

(assert (=> b!3732018 (= e!2308873 (and tp!1135795 tp!1135799))))

(declare-fun b!3732020 () Bool)

(declare-fun tp!1135798 () Bool)

(declare-fun tp!1135797 () Bool)

(assert (=> b!3732020 (= e!2308873 (and tp!1135798 tp!1135797))))

(declare-fun b!3732017 () Bool)

(assert (=> b!3732017 (= e!2308873 tp_is_empty!18873)))

(declare-fun b!3732019 () Bool)

(declare-fun tp!1135796 () Bool)

(assert (=> b!3732019 (= e!2308873 tp!1135796)))

(assert (=> b!3731588 (= tp!1135650 e!2308873)))

(assert (= (and b!3731588 ((_ is ElementMatch!10929) (regOne!22370 (reg!11258 r!26968)))) b!3732017))

(assert (= (and b!3731588 ((_ is Concat!17200) (regOne!22370 (reg!11258 r!26968)))) b!3732018))

(assert (= (and b!3731588 ((_ is Star!10929) (regOne!22370 (reg!11258 r!26968)))) b!3732019))

(assert (= (and b!3731588 ((_ is Union!10929) (regOne!22370 (reg!11258 r!26968)))) b!3732020))

(declare-fun b!3732022 () Bool)

(declare-fun e!2308874 () Bool)

(declare-fun tp!1135800 () Bool)

(declare-fun tp!1135804 () Bool)

(assert (=> b!3732022 (= e!2308874 (and tp!1135800 tp!1135804))))

(declare-fun b!3732024 () Bool)

(declare-fun tp!1135803 () Bool)

(declare-fun tp!1135802 () Bool)

(assert (=> b!3732024 (= e!2308874 (and tp!1135803 tp!1135802))))

(declare-fun b!3732021 () Bool)

(assert (=> b!3732021 (= e!2308874 tp_is_empty!18873)))

(declare-fun b!3732023 () Bool)

(declare-fun tp!1135801 () Bool)

(assert (=> b!3732023 (= e!2308874 tp!1135801)))

(assert (=> b!3731588 (= tp!1135654 e!2308874)))

(assert (= (and b!3731588 ((_ is ElementMatch!10929) (regTwo!22370 (reg!11258 r!26968)))) b!3732021))

(assert (= (and b!3731588 ((_ is Concat!17200) (regTwo!22370 (reg!11258 r!26968)))) b!3732022))

(assert (= (and b!3731588 ((_ is Star!10929) (regTwo!22370 (reg!11258 r!26968)))) b!3732023))

(assert (= (and b!3731588 ((_ is Union!10929) (regTwo!22370 (reg!11258 r!26968)))) b!3732024))

(declare-fun b!3732026 () Bool)

(declare-fun e!2308875 () Bool)

(declare-fun tp!1135805 () Bool)

(declare-fun tp!1135809 () Bool)

(assert (=> b!3732026 (= e!2308875 (and tp!1135805 tp!1135809))))

(declare-fun b!3732028 () Bool)

(declare-fun tp!1135808 () Bool)

(declare-fun tp!1135807 () Bool)

(assert (=> b!3732028 (= e!2308875 (and tp!1135808 tp!1135807))))

(declare-fun b!3732025 () Bool)

(assert (=> b!3732025 (= e!2308875 tp_is_empty!18873)))

(declare-fun b!3732027 () Bool)

(declare-fun tp!1135806 () Bool)

(assert (=> b!3732027 (= e!2308875 tp!1135806)))

(assert (=> b!3731573 (= tp!1135631 e!2308875)))

(assert (= (and b!3731573 ((_ is ElementMatch!10929) (reg!11258 (regOne!22370 r!26968)))) b!3732025))

(assert (= (and b!3731573 ((_ is Concat!17200) (reg!11258 (regOne!22370 r!26968)))) b!3732026))

(assert (= (and b!3731573 ((_ is Star!10929) (reg!11258 (regOne!22370 r!26968)))) b!3732027))

(assert (= (and b!3731573 ((_ is Union!10929) (reg!11258 (regOne!22370 r!26968)))) b!3732028))

(declare-fun b!3732030 () Bool)

(declare-fun e!2308876 () Bool)

(declare-fun tp!1135810 () Bool)

(declare-fun tp!1135814 () Bool)

(assert (=> b!3732030 (= e!2308876 (and tp!1135810 tp!1135814))))

(declare-fun b!3732032 () Bool)

(declare-fun tp!1135813 () Bool)

(declare-fun tp!1135812 () Bool)

(assert (=> b!3732032 (= e!2308876 (and tp!1135813 tp!1135812))))

(declare-fun b!3732029 () Bool)

(assert (=> b!3732029 (= e!2308876 tp_is_empty!18873)))

(declare-fun b!3732031 () Bool)

(declare-fun tp!1135811 () Bool)

(assert (=> b!3732031 (= e!2308876 tp!1135811)))

(assert (=> b!3731582 (= tp!1135643 e!2308876)))

(assert (= (and b!3731582 ((_ is ElementMatch!10929) (regOne!22371 (regOne!22371 r!26968)))) b!3732029))

(assert (= (and b!3731582 ((_ is Concat!17200) (regOne!22371 (regOne!22371 r!26968)))) b!3732030))

(assert (= (and b!3731582 ((_ is Star!10929) (regOne!22371 (regOne!22371 r!26968)))) b!3732031))

(assert (= (and b!3731582 ((_ is Union!10929) (regOne!22371 (regOne!22371 r!26968)))) b!3732032))

(declare-fun b!3732034 () Bool)

(declare-fun e!2308877 () Bool)

(declare-fun tp!1135815 () Bool)

(declare-fun tp!1135819 () Bool)

(assert (=> b!3732034 (= e!2308877 (and tp!1135815 tp!1135819))))

(declare-fun b!3732036 () Bool)

(declare-fun tp!1135818 () Bool)

(declare-fun tp!1135817 () Bool)

(assert (=> b!3732036 (= e!2308877 (and tp!1135818 tp!1135817))))

(declare-fun b!3732033 () Bool)

(assert (=> b!3732033 (= e!2308877 tp_is_empty!18873)))

(declare-fun b!3732035 () Bool)

(declare-fun tp!1135816 () Bool)

(assert (=> b!3732035 (= e!2308877 tp!1135816)))

(assert (=> b!3731582 (= tp!1135642 e!2308877)))

(assert (= (and b!3731582 ((_ is ElementMatch!10929) (regTwo!22371 (regOne!22371 r!26968)))) b!3732033))

(assert (= (and b!3731582 ((_ is Concat!17200) (regTwo!22371 (regOne!22371 r!26968)))) b!3732034))

(assert (= (and b!3731582 ((_ is Star!10929) (regTwo!22371 (regOne!22371 r!26968)))) b!3732035))

(assert (= (and b!3731582 ((_ is Union!10929) (regTwo!22371 (regOne!22371 r!26968)))) b!3732036))

(declare-fun b!3732038 () Bool)

(declare-fun e!2308878 () Bool)

(declare-fun tp!1135820 () Bool)

(declare-fun tp!1135824 () Bool)

(assert (=> b!3732038 (= e!2308878 (and tp!1135820 tp!1135824))))

(declare-fun b!3732040 () Bool)

(declare-fun tp!1135823 () Bool)

(declare-fun tp!1135822 () Bool)

(assert (=> b!3732040 (= e!2308878 (and tp!1135823 tp!1135822))))

(declare-fun b!3732037 () Bool)

(assert (=> b!3732037 (= e!2308878 tp_is_empty!18873)))

(declare-fun b!3732039 () Bool)

(declare-fun tp!1135821 () Bool)

(assert (=> b!3732039 (= e!2308878 tp!1135821)))

(assert (=> b!3731577 (= tp!1135636 e!2308878)))

(assert (= (and b!3731577 ((_ is ElementMatch!10929) (reg!11258 (regTwo!22370 r!26968)))) b!3732037))

(assert (= (and b!3731577 ((_ is Concat!17200) (reg!11258 (regTwo!22370 r!26968)))) b!3732038))

(assert (= (and b!3731577 ((_ is Star!10929) (reg!11258 (regTwo!22370 r!26968)))) b!3732039))

(assert (= (and b!3731577 ((_ is Union!10929) (reg!11258 (regTwo!22370 r!26968)))) b!3732040))

(declare-fun b!3732042 () Bool)

(declare-fun e!2308879 () Bool)

(declare-fun tp!1135825 () Bool)

(declare-fun tp!1135829 () Bool)

(assert (=> b!3732042 (= e!2308879 (and tp!1135825 tp!1135829))))

(declare-fun b!3732044 () Bool)

(declare-fun tp!1135828 () Bool)

(declare-fun tp!1135827 () Bool)

(assert (=> b!3732044 (= e!2308879 (and tp!1135828 tp!1135827))))

(declare-fun b!3732041 () Bool)

(assert (=> b!3732041 (= e!2308879 tp_is_empty!18873)))

(declare-fun b!3732043 () Bool)

(declare-fun tp!1135826 () Bool)

(assert (=> b!3732043 (= e!2308879 tp!1135826)))

(assert (=> b!3731586 (= tp!1135648 e!2308879)))

(assert (= (and b!3731586 ((_ is ElementMatch!10929) (regOne!22371 (regTwo!22371 r!26968)))) b!3732041))

(assert (= (and b!3731586 ((_ is Concat!17200) (regOne!22371 (regTwo!22371 r!26968)))) b!3732042))

(assert (= (and b!3731586 ((_ is Star!10929) (regOne!22371 (regTwo!22371 r!26968)))) b!3732043))

(assert (= (and b!3731586 ((_ is Union!10929) (regOne!22371 (regTwo!22371 r!26968)))) b!3732044))

(declare-fun b!3732046 () Bool)

(declare-fun e!2308880 () Bool)

(declare-fun tp!1135830 () Bool)

(declare-fun tp!1135834 () Bool)

(assert (=> b!3732046 (= e!2308880 (and tp!1135830 tp!1135834))))

(declare-fun b!3732048 () Bool)

(declare-fun tp!1135833 () Bool)

(declare-fun tp!1135832 () Bool)

(assert (=> b!3732048 (= e!2308880 (and tp!1135833 tp!1135832))))

(declare-fun b!3732045 () Bool)

(assert (=> b!3732045 (= e!2308880 tp_is_empty!18873)))

(declare-fun b!3732047 () Bool)

(declare-fun tp!1135831 () Bool)

(assert (=> b!3732047 (= e!2308880 tp!1135831)))

(assert (=> b!3731586 (= tp!1135647 e!2308880)))

(assert (= (and b!3731586 ((_ is ElementMatch!10929) (regTwo!22371 (regTwo!22371 r!26968)))) b!3732045))

(assert (= (and b!3731586 ((_ is Concat!17200) (regTwo!22371 (regTwo!22371 r!26968)))) b!3732046))

(assert (= (and b!3731586 ((_ is Star!10929) (regTwo!22371 (regTwo!22371 r!26968)))) b!3732047))

(assert (= (and b!3731586 ((_ is Union!10929) (regTwo!22371 (regTwo!22371 r!26968)))) b!3732048))

(declare-fun b!3732050 () Bool)

(declare-fun e!2308881 () Bool)

(declare-fun tp!1135835 () Bool)

(declare-fun tp!1135839 () Bool)

(assert (=> b!3732050 (= e!2308881 (and tp!1135835 tp!1135839))))

(declare-fun b!3732052 () Bool)

(declare-fun tp!1135838 () Bool)

(declare-fun tp!1135837 () Bool)

(assert (=> b!3732052 (= e!2308881 (and tp!1135838 tp!1135837))))

(declare-fun b!3732049 () Bool)

(assert (=> b!3732049 (= e!2308881 tp_is_empty!18873)))

(declare-fun b!3732051 () Bool)

(declare-fun tp!1135836 () Bool)

(assert (=> b!3732051 (= e!2308881 tp!1135836)))

(assert (=> b!3731572 (= tp!1135630 e!2308881)))

(assert (= (and b!3731572 ((_ is ElementMatch!10929) (regOne!22370 (regOne!22370 r!26968)))) b!3732049))

(assert (= (and b!3731572 ((_ is Concat!17200) (regOne!22370 (regOne!22370 r!26968)))) b!3732050))

(assert (= (and b!3731572 ((_ is Star!10929) (regOne!22370 (regOne!22370 r!26968)))) b!3732051))

(assert (= (and b!3731572 ((_ is Union!10929) (regOne!22370 (regOne!22370 r!26968)))) b!3732052))

(declare-fun b!3732054 () Bool)

(declare-fun e!2308882 () Bool)

(declare-fun tp!1135840 () Bool)

(declare-fun tp!1135844 () Bool)

(assert (=> b!3732054 (= e!2308882 (and tp!1135840 tp!1135844))))

(declare-fun b!3732056 () Bool)

(declare-fun tp!1135843 () Bool)

(declare-fun tp!1135842 () Bool)

(assert (=> b!3732056 (= e!2308882 (and tp!1135843 tp!1135842))))

(declare-fun b!3732053 () Bool)

(assert (=> b!3732053 (= e!2308882 tp_is_empty!18873)))

(declare-fun b!3732055 () Bool)

(declare-fun tp!1135841 () Bool)

(assert (=> b!3732055 (= e!2308882 tp!1135841)))

(assert (=> b!3731572 (= tp!1135634 e!2308882)))

(assert (= (and b!3731572 ((_ is ElementMatch!10929) (regTwo!22370 (regOne!22370 r!26968)))) b!3732053))

(assert (= (and b!3731572 ((_ is Concat!17200) (regTwo!22370 (regOne!22370 r!26968)))) b!3732054))

(assert (= (and b!3731572 ((_ is Star!10929) (regTwo!22370 (regOne!22370 r!26968)))) b!3732055))

(assert (= (and b!3731572 ((_ is Union!10929) (regTwo!22370 (regOne!22370 r!26968)))) b!3732056))

(declare-fun b!3732058 () Bool)

(declare-fun e!2308883 () Bool)

(declare-fun tp!1135845 () Bool)

(declare-fun tp!1135849 () Bool)

(assert (=> b!3732058 (= e!2308883 (and tp!1135845 tp!1135849))))

(declare-fun b!3732060 () Bool)

(declare-fun tp!1135848 () Bool)

(declare-fun tp!1135847 () Bool)

(assert (=> b!3732060 (= e!2308883 (and tp!1135848 tp!1135847))))

(declare-fun b!3732057 () Bool)

(assert (=> b!3732057 (= e!2308883 tp_is_empty!18873)))

(declare-fun b!3732059 () Bool)

(declare-fun tp!1135846 () Bool)

(assert (=> b!3732059 (= e!2308883 tp!1135846)))

(assert (=> b!3731581 (= tp!1135641 e!2308883)))

(assert (= (and b!3731581 ((_ is ElementMatch!10929) (reg!11258 (regOne!22371 r!26968)))) b!3732057))

(assert (= (and b!3731581 ((_ is Concat!17200) (reg!11258 (regOne!22371 r!26968)))) b!3732058))

(assert (= (and b!3731581 ((_ is Star!10929) (reg!11258 (regOne!22371 r!26968)))) b!3732059))

(assert (= (and b!3731581 ((_ is Union!10929) (reg!11258 (regOne!22371 r!26968)))) b!3732060))

(declare-fun b!3732062 () Bool)

(declare-fun e!2308884 () Bool)

(declare-fun tp!1135850 () Bool)

(declare-fun tp!1135854 () Bool)

(assert (=> b!3732062 (= e!2308884 (and tp!1135850 tp!1135854))))

(declare-fun b!3732064 () Bool)

(declare-fun tp!1135853 () Bool)

(declare-fun tp!1135852 () Bool)

(assert (=> b!3732064 (= e!2308884 (and tp!1135853 tp!1135852))))

(declare-fun b!3732061 () Bool)

(assert (=> b!3732061 (= e!2308884 tp_is_empty!18873)))

(declare-fun b!3732063 () Bool)

(declare-fun tp!1135851 () Bool)

(assert (=> b!3732063 (= e!2308884 tp!1135851)))

(assert (=> b!3731590 (= tp!1135653 e!2308884)))

(assert (= (and b!3731590 ((_ is ElementMatch!10929) (regOne!22371 (reg!11258 r!26968)))) b!3732061))

(assert (= (and b!3731590 ((_ is Concat!17200) (regOne!22371 (reg!11258 r!26968)))) b!3732062))

(assert (= (and b!3731590 ((_ is Star!10929) (regOne!22371 (reg!11258 r!26968)))) b!3732063))

(assert (= (and b!3731590 ((_ is Union!10929) (regOne!22371 (reg!11258 r!26968)))) b!3732064))

(declare-fun b!3732066 () Bool)

(declare-fun e!2308885 () Bool)

(declare-fun tp!1135855 () Bool)

(declare-fun tp!1135859 () Bool)

(assert (=> b!3732066 (= e!2308885 (and tp!1135855 tp!1135859))))

(declare-fun b!3732068 () Bool)

(declare-fun tp!1135858 () Bool)

(declare-fun tp!1135857 () Bool)

(assert (=> b!3732068 (= e!2308885 (and tp!1135858 tp!1135857))))

(declare-fun b!3732065 () Bool)

(assert (=> b!3732065 (= e!2308885 tp_is_empty!18873)))

(declare-fun b!3732067 () Bool)

(declare-fun tp!1135856 () Bool)

(assert (=> b!3732067 (= e!2308885 tp!1135856)))

(assert (=> b!3731590 (= tp!1135652 e!2308885)))

(assert (= (and b!3731590 ((_ is ElementMatch!10929) (regTwo!22371 (reg!11258 r!26968)))) b!3732065))

(assert (= (and b!3731590 ((_ is Concat!17200) (regTwo!22371 (reg!11258 r!26968)))) b!3732066))

(assert (= (and b!3731590 ((_ is Star!10929) (regTwo!22371 (reg!11258 r!26968)))) b!3732067))

(assert (= (and b!3731590 ((_ is Union!10929) (regTwo!22371 (reg!11258 r!26968)))) b!3732068))

(declare-fun b!3732070 () Bool)

(declare-fun e!2308886 () Bool)

(declare-fun tp!1135860 () Bool)

(declare-fun tp!1135864 () Bool)

(assert (=> b!3732070 (= e!2308886 (and tp!1135860 tp!1135864))))

(declare-fun b!3732072 () Bool)

(declare-fun tp!1135863 () Bool)

(declare-fun tp!1135862 () Bool)

(assert (=> b!3732072 (= e!2308886 (and tp!1135863 tp!1135862))))

(declare-fun b!3732069 () Bool)

(assert (=> b!3732069 (= e!2308886 tp_is_empty!18873)))

(declare-fun b!3732071 () Bool)

(declare-fun tp!1135861 () Bool)

(assert (=> b!3732071 (= e!2308886 tp!1135861)))

(assert (=> b!3731576 (= tp!1135635 e!2308886)))

(assert (= (and b!3731576 ((_ is ElementMatch!10929) (regOne!22370 (regTwo!22370 r!26968)))) b!3732069))

(assert (= (and b!3731576 ((_ is Concat!17200) (regOne!22370 (regTwo!22370 r!26968)))) b!3732070))

(assert (= (and b!3731576 ((_ is Star!10929) (regOne!22370 (regTwo!22370 r!26968)))) b!3732071))

(assert (= (and b!3731576 ((_ is Union!10929) (regOne!22370 (regTwo!22370 r!26968)))) b!3732072))

(declare-fun b!3732074 () Bool)

(declare-fun e!2308887 () Bool)

(declare-fun tp!1135865 () Bool)

(declare-fun tp!1135869 () Bool)

(assert (=> b!3732074 (= e!2308887 (and tp!1135865 tp!1135869))))

(declare-fun b!3732076 () Bool)

(declare-fun tp!1135868 () Bool)

(declare-fun tp!1135867 () Bool)

(assert (=> b!3732076 (= e!2308887 (and tp!1135868 tp!1135867))))

(declare-fun b!3732073 () Bool)

(assert (=> b!3732073 (= e!2308887 tp_is_empty!18873)))

(declare-fun b!3732075 () Bool)

(declare-fun tp!1135866 () Bool)

(assert (=> b!3732075 (= e!2308887 tp!1135866)))

(assert (=> b!3731576 (= tp!1135639 e!2308887)))

(assert (= (and b!3731576 ((_ is ElementMatch!10929) (regTwo!22370 (regTwo!22370 r!26968)))) b!3732073))

(assert (= (and b!3731576 ((_ is Concat!17200) (regTwo!22370 (regTwo!22370 r!26968)))) b!3732074))

(assert (= (and b!3731576 ((_ is Star!10929) (regTwo!22370 (regTwo!22370 r!26968)))) b!3732075))

(assert (= (and b!3731576 ((_ is Union!10929) (regTwo!22370 (regTwo!22370 r!26968)))) b!3732076))

(declare-fun b!3732078 () Bool)

(declare-fun e!2308888 () Bool)

(declare-fun tp!1135870 () Bool)

(declare-fun tp!1135874 () Bool)

(assert (=> b!3732078 (= e!2308888 (and tp!1135870 tp!1135874))))

(declare-fun b!3732080 () Bool)

(declare-fun tp!1135873 () Bool)

(declare-fun tp!1135872 () Bool)

(assert (=> b!3732080 (= e!2308888 (and tp!1135873 tp!1135872))))

(declare-fun b!3732077 () Bool)

(assert (=> b!3732077 (= e!2308888 tp_is_empty!18873)))

(declare-fun b!3732079 () Bool)

(declare-fun tp!1135871 () Bool)

(assert (=> b!3732079 (= e!2308888 tp!1135871)))

(assert (=> b!3731585 (= tp!1135646 e!2308888)))

(assert (= (and b!3731585 ((_ is ElementMatch!10929) (reg!11258 (regTwo!22371 r!26968)))) b!3732077))

(assert (= (and b!3731585 ((_ is Concat!17200) (reg!11258 (regTwo!22371 r!26968)))) b!3732078))

(assert (= (and b!3731585 ((_ is Star!10929) (reg!11258 (regTwo!22371 r!26968)))) b!3732079))

(assert (= (and b!3731585 ((_ is Union!10929) (reg!11258 (regTwo!22371 r!26968)))) b!3732080))

(declare-fun b!3732082 () Bool)

(declare-fun e!2308889 () Bool)

(declare-fun tp!1135875 () Bool)

(declare-fun tp!1135879 () Bool)

(assert (=> b!3732082 (= e!2308889 (and tp!1135875 tp!1135879))))

(declare-fun b!3732084 () Bool)

(declare-fun tp!1135878 () Bool)

(declare-fun tp!1135877 () Bool)

(assert (=> b!3732084 (= e!2308889 (and tp!1135878 tp!1135877))))

(declare-fun b!3732081 () Bool)

(assert (=> b!3732081 (= e!2308889 tp_is_empty!18873)))

(declare-fun b!3732083 () Bool)

(declare-fun tp!1135876 () Bool)

(assert (=> b!3732083 (= e!2308889 tp!1135876)))

(assert (=> b!3731580 (= tp!1135640 e!2308889)))

(assert (= (and b!3731580 ((_ is ElementMatch!10929) (regOne!22370 (regOne!22371 r!26968)))) b!3732081))

(assert (= (and b!3731580 ((_ is Concat!17200) (regOne!22370 (regOne!22371 r!26968)))) b!3732082))

(assert (= (and b!3731580 ((_ is Star!10929) (regOne!22370 (regOne!22371 r!26968)))) b!3732083))

(assert (= (and b!3731580 ((_ is Union!10929) (regOne!22370 (regOne!22371 r!26968)))) b!3732084))

(declare-fun b!3732086 () Bool)

(declare-fun e!2308890 () Bool)

(declare-fun tp!1135880 () Bool)

(declare-fun tp!1135884 () Bool)

(assert (=> b!3732086 (= e!2308890 (and tp!1135880 tp!1135884))))

(declare-fun b!3732088 () Bool)

(declare-fun tp!1135883 () Bool)

(declare-fun tp!1135882 () Bool)

(assert (=> b!3732088 (= e!2308890 (and tp!1135883 tp!1135882))))

(declare-fun b!3732085 () Bool)

(assert (=> b!3732085 (= e!2308890 tp_is_empty!18873)))

(declare-fun b!3732087 () Bool)

(declare-fun tp!1135881 () Bool)

(assert (=> b!3732087 (= e!2308890 tp!1135881)))

(assert (=> b!3731580 (= tp!1135644 e!2308890)))

(assert (= (and b!3731580 ((_ is ElementMatch!10929) (regTwo!22370 (regOne!22371 r!26968)))) b!3732085))

(assert (= (and b!3731580 ((_ is Concat!17200) (regTwo!22370 (regOne!22371 r!26968)))) b!3732086))

(assert (= (and b!3731580 ((_ is Star!10929) (regTwo!22370 (regOne!22371 r!26968)))) b!3732087))

(assert (= (and b!3731580 ((_ is Union!10929) (regTwo!22370 (regOne!22371 r!26968)))) b!3732088))

(declare-fun b!3732090 () Bool)

(declare-fun e!2308891 () Bool)

(declare-fun tp!1135885 () Bool)

(declare-fun tp!1135889 () Bool)

(assert (=> b!3732090 (= e!2308891 (and tp!1135885 tp!1135889))))

(declare-fun b!3732092 () Bool)

(declare-fun tp!1135888 () Bool)

(declare-fun tp!1135887 () Bool)

(assert (=> b!3732092 (= e!2308891 (and tp!1135888 tp!1135887))))

(declare-fun b!3732089 () Bool)

(assert (=> b!3732089 (= e!2308891 tp_is_empty!18873)))

(declare-fun b!3732091 () Bool)

(declare-fun tp!1135886 () Bool)

(assert (=> b!3732091 (= e!2308891 tp!1135886)))

(assert (=> b!3731574 (= tp!1135633 e!2308891)))

(assert (= (and b!3731574 ((_ is ElementMatch!10929) (regOne!22371 (regOne!22370 r!26968)))) b!3732089))

(assert (= (and b!3731574 ((_ is Concat!17200) (regOne!22371 (regOne!22370 r!26968)))) b!3732090))

(assert (= (and b!3731574 ((_ is Star!10929) (regOne!22371 (regOne!22370 r!26968)))) b!3732091))

(assert (= (and b!3731574 ((_ is Union!10929) (regOne!22371 (regOne!22370 r!26968)))) b!3732092))

(declare-fun b!3732094 () Bool)

(declare-fun e!2308892 () Bool)

(declare-fun tp!1135890 () Bool)

(declare-fun tp!1135894 () Bool)

(assert (=> b!3732094 (= e!2308892 (and tp!1135890 tp!1135894))))

(declare-fun b!3732096 () Bool)

(declare-fun tp!1135893 () Bool)

(declare-fun tp!1135892 () Bool)

(assert (=> b!3732096 (= e!2308892 (and tp!1135893 tp!1135892))))

(declare-fun b!3732093 () Bool)

(assert (=> b!3732093 (= e!2308892 tp_is_empty!18873)))

(declare-fun b!3732095 () Bool)

(declare-fun tp!1135891 () Bool)

(assert (=> b!3732095 (= e!2308892 tp!1135891)))

(assert (=> b!3731574 (= tp!1135632 e!2308892)))

(assert (= (and b!3731574 ((_ is ElementMatch!10929) (regTwo!22371 (regOne!22370 r!26968)))) b!3732093))

(assert (= (and b!3731574 ((_ is Concat!17200) (regTwo!22371 (regOne!22370 r!26968)))) b!3732094))

(assert (= (and b!3731574 ((_ is Star!10929) (regTwo!22371 (regOne!22370 r!26968)))) b!3732095))

(assert (= (and b!3731574 ((_ is Union!10929) (regTwo!22371 (regOne!22370 r!26968)))) b!3732096))

(declare-fun b!3732098 () Bool)

(declare-fun e!2308893 () Bool)

(declare-fun tp!1135895 () Bool)

(declare-fun tp!1135899 () Bool)

(assert (=> b!3732098 (= e!2308893 (and tp!1135895 tp!1135899))))

(declare-fun b!3732100 () Bool)

(declare-fun tp!1135898 () Bool)

(declare-fun tp!1135897 () Bool)

(assert (=> b!3732100 (= e!2308893 (and tp!1135898 tp!1135897))))

(declare-fun b!3732097 () Bool)

(assert (=> b!3732097 (= e!2308893 tp_is_empty!18873)))

(declare-fun b!3732099 () Bool)

(declare-fun tp!1135896 () Bool)

(assert (=> b!3732099 (= e!2308893 tp!1135896)))

(assert (=> b!3731578 (= tp!1135638 e!2308893)))

(assert (= (and b!3731578 ((_ is ElementMatch!10929) (regOne!22371 (regTwo!22370 r!26968)))) b!3732097))

(assert (= (and b!3731578 ((_ is Concat!17200) (regOne!22371 (regTwo!22370 r!26968)))) b!3732098))

(assert (= (and b!3731578 ((_ is Star!10929) (regOne!22371 (regTwo!22370 r!26968)))) b!3732099))

(assert (= (and b!3731578 ((_ is Union!10929) (regOne!22371 (regTwo!22370 r!26968)))) b!3732100))

(declare-fun b!3732102 () Bool)

(declare-fun e!2308894 () Bool)

(declare-fun tp!1135900 () Bool)

(declare-fun tp!1135904 () Bool)

(assert (=> b!3732102 (= e!2308894 (and tp!1135900 tp!1135904))))

(declare-fun b!3732104 () Bool)

(declare-fun tp!1135903 () Bool)

(declare-fun tp!1135902 () Bool)

(assert (=> b!3732104 (= e!2308894 (and tp!1135903 tp!1135902))))

(declare-fun b!3732101 () Bool)

(assert (=> b!3732101 (= e!2308894 tp_is_empty!18873)))

(declare-fun b!3732103 () Bool)

(declare-fun tp!1135901 () Bool)

(assert (=> b!3732103 (= e!2308894 tp!1135901)))

(assert (=> b!3731578 (= tp!1135637 e!2308894)))

(assert (= (and b!3731578 ((_ is ElementMatch!10929) (regTwo!22371 (regTwo!22370 r!26968)))) b!3732101))

(assert (= (and b!3731578 ((_ is Concat!17200) (regTwo!22371 (regTwo!22370 r!26968)))) b!3732102))

(assert (= (and b!3731578 ((_ is Star!10929) (regTwo!22371 (regTwo!22370 r!26968)))) b!3732103))

(assert (= (and b!3731578 ((_ is Union!10929) (regTwo!22371 (regTwo!22370 r!26968)))) b!3732104))

(check-sat (not b!3732070) (not bm!272714) (not b!3732012) (not b!3732054) (not b!3732022) (not bm!272691) (not b!3732068) (not b!3732010) (not bm!272725) (not b!3732083) (not b!3732066) (not bm!272690) (not b!3732039) tp_is_empty!18873 (not b!3731895) (not b!3732087) (not b!3732019) (not bm!272702) (not bm!272688) (not d!1090766) (not b!3732079) (not b!3732084) (not bm!272682) (not b!3732082) (not bm!272684) (not b!3732071) (not b!3732018) (not b!3732099) (not b!3732040) (not bm!272711) (not b!3732094) (not bm!272693) (not b!3732038) (not b!3731998) (not bm!272694) (not d!1090760) (not b!3731981) (not b!3732048) (not b!3732016) (not b!3732078) (not b!3732043) (not bm!272721) (not bm!272687) (not b!3732035) (not bm!272718) (not b!3732026) (not b!3732023) (not b!3732060) (not b!3732067) (not b!3732020) (not b!3732088) (not b!3732050) (not b!3732076) (not b!3732032) (not b!3732064) (not b!3732047) (not bm!272705) (not b!3731888) (not b!3731889) (not b!3732031) (not b!3732086) (not b!3732058) (not b!3732062) (not b!3732008) (not b!3732072) (not b!3732092) (not bm!272727) (not b!3732036) (not b!3731950) (not b!3732007) (not b!3731892) (not b!3732028) (not b!3732104) (not b!3732055) (not b!3732100) (not bm!272722) (not bm!272713) (not b!3731899) (not b!3732063) (not b!3732052) (not b!3732080) (not b!3732090) (not b!3732102) (not b!3732042) (not bm!272723) (not bm!272704) (not b!3732075) (not b!3732006) (not b!3732091) (not bm!272685) (not b!3732051) (not bm!272706) (not b!3732056) (not b!3732024) (not b!3732044) (not b!3731774) (not bm!272703) (not b!3732014) (not bm!272710) (not b!3731894) (not b!3732095) (not b!3732011) (not bm!272715) (not d!1090774) (not b!3732098) (not d!1090756) (not bm!272708) (not b!3731832) (not b!3732096) (not bm!272720) (not b!3731919) (not b!3732103) (not b!3732015) (not b!3732034) (not bm!272716) (not bm!272695) (not b!3732030) (not d!1090762) (not bm!272696) (not b!3732046) (not b!3732059) (not b!3732027) (not d!1090764) (not b!3732074))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665452 () Bool)

(assert start!665452)

(declare-fun b!6917456 () Bool)

(assert (=> b!6917456 true))

(assert (=> b!6917456 true))

(assert (=> b!6917456 true))

(declare-fun b!6917444 () Bool)

(declare-fun res!2820430 () Bool)

(declare-fun e!4163762 () Bool)

(assert (=> b!6917444 (=> (not res!2820430) (not e!4163762))))

(declare-datatypes ((C!34082 0))(
  ( (C!34083 (val!26743 Int)) )
))
(declare-datatypes ((Regex!16906 0))(
  ( (ElementMatch!16906 (c!1284454 C!34082)) (Concat!25751 (regOne!34324 Regex!16906) (regTwo!34324 Regex!16906)) (EmptyExpr!16906) (Star!16906 (reg!17235 Regex!16906)) (EmptyLang!16906) (Union!16906 (regOne!34325 Regex!16906) (regTwo!34325 Regex!16906)) )
))
(declare-fun r2!6280 () Regex!16906)

(declare-fun validRegex!8612 (Regex!16906) Bool)

(assert (=> b!6917444 (= res!2820430 (validRegex!8612 r2!6280))))

(declare-fun b!6917445 () Bool)

(declare-fun e!4163764 () Bool)

(declare-fun tp!1906656 () Bool)

(assert (=> b!6917445 (= e!4163764 tp!1906656)))

(declare-fun b!6917446 () Bool)

(declare-fun e!4163763 () Bool)

(declare-fun tp_is_empty!43037 () Bool)

(declare-fun tp!1906658 () Bool)

(assert (=> b!6917446 (= e!4163763 (and tp_is_empty!43037 tp!1906658))))

(declare-fun b!6917447 () Bool)

(declare-fun e!4163761 () Bool)

(declare-fun tp!1906657 () Bool)

(declare-fun tp!1906649 () Bool)

(assert (=> b!6917447 (= e!4163761 (and tp!1906657 tp!1906649))))

(declare-fun b!6917448 () Bool)

(declare-fun e!4163759 () Bool)

(declare-fun tp!1906644 () Bool)

(declare-fun tp!1906652 () Bool)

(assert (=> b!6917448 (= e!4163759 (and tp!1906644 tp!1906652))))

(declare-fun b!6917449 () Bool)

(declare-fun tp!1906647 () Bool)

(assert (=> b!6917449 (= e!4163759 tp!1906647)))

(declare-fun b!6917450 () Bool)

(assert (=> b!6917450 (= e!4163761 tp_is_empty!43037)))

(declare-fun b!6917451 () Bool)

(declare-fun tp!1906646 () Bool)

(declare-fun tp!1906655 () Bool)

(assert (=> b!6917451 (= e!4163759 (and tp!1906646 tp!1906655))))

(declare-fun res!2820429 () Bool)

(assert (=> start!665452 (=> (not res!2820429) (not e!4163762))))

(declare-fun r1!6342 () Regex!16906)

(assert (=> start!665452 (= res!2820429 (validRegex!8612 r1!6342))))

(assert (=> start!665452 e!4163762))

(assert (=> start!665452 e!4163759))

(assert (=> start!665452 e!4163764))

(assert (=> start!665452 e!4163761))

(assert (=> start!665452 e!4163763))

(declare-fun b!6917452 () Bool)

(declare-fun tp!1906659 () Bool)

(assert (=> b!6917452 (= e!4163761 tp!1906659)))

(declare-fun b!6917453 () Bool)

(declare-fun e!4163760 () Bool)

(assert (=> b!6917453 (= e!4163762 (not e!4163760))))

(declare-fun res!2820431 () Bool)

(assert (=> b!6917453 (=> res!2820431 e!4163760)))

(declare-fun lt!2469398 () Bool)

(assert (=> b!6917453 (= res!2820431 (not lt!2469398))))

(declare-fun lt!2469404 () Regex!16906)

(declare-datatypes ((List!66659 0))(
  ( (Nil!66535) (Cons!66535 (h!72983 C!34082) (t!380402 List!66659)) )
))
(declare-fun s!14361 () List!66659)

(declare-fun matchR!9045 (Regex!16906 List!66659) Bool)

(declare-fun matchRSpec!3963 (Regex!16906 List!66659) Bool)

(assert (=> b!6917453 (= (matchR!9045 lt!2469404 s!14361) (matchRSpec!3963 lt!2469404 s!14361))))

(declare-datatypes ((Unit!160536 0))(
  ( (Unit!160537) )
))
(declare-fun lt!2469402 () Unit!160536)

(declare-fun mainMatchTheorem!3963 (Regex!16906 List!66659) Unit!160536)

(assert (=> b!6917453 (= lt!2469402 (mainMatchTheorem!3963 lt!2469404 s!14361))))

(declare-fun lt!2469399 () Regex!16906)

(assert (=> b!6917453 (= lt!2469398 (matchRSpec!3963 lt!2469399 s!14361))))

(assert (=> b!6917453 (= lt!2469398 (matchR!9045 lt!2469399 s!14361))))

(declare-fun lt!2469400 () Unit!160536)

(assert (=> b!6917453 (= lt!2469400 (mainMatchTheorem!3963 lt!2469399 s!14361))))

(declare-fun r3!135 () Regex!16906)

(assert (=> b!6917453 (= lt!2469404 (Concat!25751 r1!6342 (Concat!25751 r2!6280 r3!135)))))

(declare-fun lt!2469403 () Regex!16906)

(assert (=> b!6917453 (= lt!2469399 (Concat!25751 lt!2469403 r3!135))))

(assert (=> b!6917453 (= lt!2469403 (Concat!25751 r1!6342 r2!6280))))

(declare-fun b!6917454 () Bool)

(assert (=> b!6917454 (= e!4163759 tp_is_empty!43037)))

(declare-fun b!6917455 () Bool)

(assert (=> b!6917455 (= e!4163764 tp_is_empty!43037)))

(assert (=> b!6917456 (= e!4163760 (validRegex!8612 lt!2469403))))

(declare-fun lambda!393057 () Int)

(declare-datatypes ((tuple2!67526 0))(
  ( (tuple2!67527 (_1!37066 List!66659) (_2!37066 List!66659)) )
))
(declare-datatypes ((Option!16675 0))(
  ( (None!16674) (Some!16674 (v!52946 tuple2!67526)) )
))
(declare-fun isDefined!13378 (Option!16675) Bool)

(declare-fun findConcatSeparation!3089 (Regex!16906 Regex!16906 List!66659 List!66659 List!66659) Option!16675)

(declare-fun Exists!3908 (Int) Bool)

(assert (=> b!6917456 (= (isDefined!13378 (findConcatSeparation!3089 lt!2469403 r3!135 Nil!66535 s!14361 s!14361)) (Exists!3908 lambda!393057))))

(declare-fun lt!2469401 () Unit!160536)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2851 (Regex!16906 Regex!16906 List!66659) Unit!160536)

(assert (=> b!6917456 (= lt!2469401 (lemmaFindConcatSeparationEquivalentToExists!2851 lt!2469403 r3!135 s!14361))))

(declare-fun b!6917457 () Bool)

(declare-fun tp!1906650 () Bool)

(declare-fun tp!1906654 () Bool)

(assert (=> b!6917457 (= e!4163764 (and tp!1906650 tp!1906654))))

(declare-fun b!6917458 () Bool)

(declare-fun res!2820432 () Bool)

(assert (=> b!6917458 (=> (not res!2820432) (not e!4163762))))

(assert (=> b!6917458 (= res!2820432 (validRegex!8612 r3!135))))

(declare-fun b!6917459 () Bool)

(declare-fun tp!1906651 () Bool)

(declare-fun tp!1906653 () Bool)

(assert (=> b!6917459 (= e!4163761 (and tp!1906651 tp!1906653))))

(declare-fun b!6917460 () Bool)

(declare-fun tp!1906648 () Bool)

(declare-fun tp!1906645 () Bool)

(assert (=> b!6917460 (= e!4163764 (and tp!1906648 tp!1906645))))

(assert (= (and start!665452 res!2820429) b!6917444))

(assert (= (and b!6917444 res!2820430) b!6917458))

(assert (= (and b!6917458 res!2820432) b!6917453))

(assert (= (and b!6917453 (not res!2820431)) b!6917456))

(assert (= (and start!665452 (is-ElementMatch!16906 r1!6342)) b!6917454))

(assert (= (and start!665452 (is-Concat!25751 r1!6342)) b!6917451))

(assert (= (and start!665452 (is-Star!16906 r1!6342)) b!6917449))

(assert (= (and start!665452 (is-Union!16906 r1!6342)) b!6917448))

(assert (= (and start!665452 (is-ElementMatch!16906 r2!6280)) b!6917455))

(assert (= (and start!665452 (is-Concat!25751 r2!6280)) b!6917460))

(assert (= (and start!665452 (is-Star!16906 r2!6280)) b!6917445))

(assert (= (and start!665452 (is-Union!16906 r2!6280)) b!6917457))

(assert (= (and start!665452 (is-ElementMatch!16906 r3!135)) b!6917450))

(assert (= (and start!665452 (is-Concat!25751 r3!135)) b!6917459))

(assert (= (and start!665452 (is-Star!16906 r3!135)) b!6917452))

(assert (= (and start!665452 (is-Union!16906 r3!135)) b!6917447))

(assert (= (and start!665452 (is-Cons!66535 s!14361)) b!6917446))

(declare-fun m!7628372 () Bool)

(assert (=> b!6917458 m!7628372))

(declare-fun m!7628374 () Bool)

(assert (=> b!6917456 m!7628374))

(declare-fun m!7628376 () Bool)

(assert (=> b!6917456 m!7628376))

(declare-fun m!7628378 () Bool)

(assert (=> b!6917456 m!7628378))

(declare-fun m!7628380 () Bool)

(assert (=> b!6917456 m!7628380))

(assert (=> b!6917456 m!7628376))

(declare-fun m!7628382 () Bool)

(assert (=> b!6917456 m!7628382))

(declare-fun m!7628384 () Bool)

(assert (=> b!6917453 m!7628384))

(declare-fun m!7628386 () Bool)

(assert (=> b!6917453 m!7628386))

(declare-fun m!7628388 () Bool)

(assert (=> b!6917453 m!7628388))

(declare-fun m!7628390 () Bool)

(assert (=> b!6917453 m!7628390))

(declare-fun m!7628392 () Bool)

(assert (=> b!6917453 m!7628392))

(declare-fun m!7628394 () Bool)

(assert (=> b!6917453 m!7628394))

(declare-fun m!7628396 () Bool)

(assert (=> start!665452 m!7628396))

(declare-fun m!7628398 () Bool)

(assert (=> b!6917444 m!7628398))

(push 1)

(assert (not b!6917458))

(assert (not b!6917452))

(assert (not b!6917444))

(assert (not start!665452))

(assert (not b!6917449))

(assert (not b!6917445))

(assert (not b!6917451))

(assert (not b!6917453))

(assert (not b!6917447))

(assert (not b!6917456))

(assert tp_is_empty!43037)

(assert (not b!6917446))

(assert (not b!6917457))

(assert (not b!6917460))

(assert (not b!6917459))

(assert (not b!6917448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!628867 () Bool)

(declare-fun call!628873 () Bool)

(declare-fun call!628872 () Bool)

(assert (=> bm!628867 (= call!628873 call!628872)))

(declare-fun b!6917542 () Bool)

(declare-fun res!2820461 () Bool)

(declare-fun e!4163803 () Bool)

(assert (=> b!6917542 (=> res!2820461 e!4163803)))

(assert (=> b!6917542 (= res!2820461 (not (is-Concat!25751 r2!6280)))))

(declare-fun e!4163802 () Bool)

(assert (=> b!6917542 (= e!4163802 e!4163803)))

(declare-fun b!6917543 () Bool)

(declare-fun res!2820462 () Bool)

(declare-fun e!4163799 () Bool)

(assert (=> b!6917543 (=> (not res!2820462) (not e!4163799))))

(declare-fun call!628874 () Bool)

(assert (=> b!6917543 (= res!2820462 call!628874)))

(assert (=> b!6917543 (= e!4163802 e!4163799)))

(declare-fun b!6917544 () Bool)

(assert (=> b!6917544 (= e!4163799 call!628873)))

(declare-fun b!6917545 () Bool)

(declare-fun e!4163804 () Bool)

(assert (=> b!6917545 (= e!4163804 call!628874)))

(declare-fun b!6917546 () Bool)

(declare-fun e!4163805 () Bool)

(declare-fun e!4163801 () Bool)

(assert (=> b!6917546 (= e!4163805 e!4163801)))

(declare-fun c!1284461 () Bool)

(assert (=> b!6917546 (= c!1284461 (is-Star!16906 r2!6280))))

(declare-fun bm!628868 () Bool)

(declare-fun c!1284460 () Bool)

(assert (=> bm!628868 (= call!628874 (validRegex!8612 (ite c!1284460 (regOne!34325 r2!6280) (regTwo!34324 r2!6280))))))

(declare-fun b!6917547 () Bool)

(declare-fun e!4163800 () Bool)

(assert (=> b!6917547 (= e!4163800 call!628872)))

(declare-fun d!2164061 () Bool)

(declare-fun res!2820459 () Bool)

(assert (=> d!2164061 (=> res!2820459 e!4163805)))

(assert (=> d!2164061 (= res!2820459 (is-ElementMatch!16906 r2!6280))))

(assert (=> d!2164061 (= (validRegex!8612 r2!6280) e!4163805)))

(declare-fun b!6917548 () Bool)

(assert (=> b!6917548 (= e!4163801 e!4163800)))

(declare-fun res!2820460 () Bool)

(declare-fun nullable!6741 (Regex!16906) Bool)

(assert (=> b!6917548 (= res!2820460 (not (nullable!6741 (reg!17235 r2!6280))))))

(assert (=> b!6917548 (=> (not res!2820460) (not e!4163800))))

(declare-fun b!6917549 () Bool)

(assert (=> b!6917549 (= e!4163803 e!4163804)))

(declare-fun res!2820463 () Bool)

(assert (=> b!6917549 (=> (not res!2820463) (not e!4163804))))

(assert (=> b!6917549 (= res!2820463 call!628873)))

(declare-fun bm!628869 () Bool)

(assert (=> bm!628869 (= call!628872 (validRegex!8612 (ite c!1284461 (reg!17235 r2!6280) (ite c!1284460 (regTwo!34325 r2!6280) (regOne!34324 r2!6280)))))))

(declare-fun b!6917550 () Bool)

(assert (=> b!6917550 (= e!4163801 e!4163802)))

(assert (=> b!6917550 (= c!1284460 (is-Union!16906 r2!6280))))

(assert (= (and d!2164061 (not res!2820459)) b!6917546))

(assert (= (and b!6917546 c!1284461) b!6917548))

(assert (= (and b!6917546 (not c!1284461)) b!6917550))

(assert (= (and b!6917548 res!2820460) b!6917547))

(assert (= (and b!6917550 c!1284460) b!6917543))

(assert (= (and b!6917550 (not c!1284460)) b!6917542))

(assert (= (and b!6917543 res!2820462) b!6917544))

(assert (= (and b!6917542 (not res!2820461)) b!6917549))

(assert (= (and b!6917549 res!2820463) b!6917545))

(assert (= (or b!6917543 b!6917545) bm!628868))

(assert (= (or b!6917544 b!6917549) bm!628867))

(assert (= (or b!6917547 bm!628867) bm!628869))

(declare-fun m!7628428 () Bool)

(assert (=> bm!628868 m!7628428))

(declare-fun m!7628430 () Bool)

(assert (=> b!6917548 m!7628430))

(declare-fun m!7628432 () Bool)

(assert (=> bm!628869 m!7628432))

(assert (=> b!6917444 d!2164061))

(declare-fun bs!1845930 () Bool)

(declare-fun b!6917604 () Bool)

(assert (= bs!1845930 (and b!6917604 b!6917456)))

(declare-fun lambda!393065 () Int)

(assert (=> bs!1845930 (not (= lambda!393065 lambda!393057))))

(assert (=> b!6917604 true))

(assert (=> b!6917604 true))

(declare-fun bs!1845931 () Bool)

(declare-fun b!6917610 () Bool)

(assert (= bs!1845931 (and b!6917610 b!6917456)))

(declare-fun lambda!393066 () Int)

(assert (=> bs!1845931 (not (= lambda!393066 lambda!393057))))

(declare-fun bs!1845932 () Bool)

(assert (= bs!1845932 (and b!6917610 b!6917604)))

(assert (=> bs!1845932 (not (= lambda!393066 lambda!393065))))

(assert (=> b!6917610 true))

(assert (=> b!6917610 true))

(declare-fun b!6917601 () Bool)

(declare-fun e!4163841 () Bool)

(assert (=> b!6917601 (= e!4163841 (= s!14361 (Cons!66535 (c!1284454 lt!2469404) Nil!66535)))))

(declare-fun b!6917602 () Bool)

(declare-fun res!2820491 () Bool)

(declare-fun e!4163838 () Bool)

(assert (=> b!6917602 (=> res!2820491 e!4163838)))

(declare-fun call!628885 () Bool)

(assert (=> b!6917602 (= res!2820491 call!628885)))

(declare-fun e!4163844 () Bool)

(assert (=> b!6917602 (= e!4163844 e!4163838)))

(declare-fun b!6917603 () Bool)

(declare-fun c!1284475 () Bool)

(assert (=> b!6917603 (= c!1284475 (is-ElementMatch!16906 lt!2469404))))

(declare-fun e!4163840 () Bool)

(assert (=> b!6917603 (= e!4163840 e!4163841)))

(declare-fun call!628886 () Bool)

(assert (=> b!6917604 (= e!4163838 call!628886)))

(declare-fun b!6917605 () Bool)

(declare-fun c!1284476 () Bool)

(assert (=> b!6917605 (= c!1284476 (is-Union!16906 lt!2469404))))

(declare-fun e!4163839 () Bool)

(assert (=> b!6917605 (= e!4163841 e!4163839)))

(declare-fun b!6917606 () Bool)

(declare-fun e!4163842 () Bool)

(assert (=> b!6917606 (= e!4163842 (matchRSpec!3963 (regTwo!34325 lt!2469404) s!14361))))

(declare-fun d!2164063 () Bool)

(declare-fun c!1284474 () Bool)

(assert (=> d!2164063 (= c!1284474 (is-EmptyExpr!16906 lt!2469404))))

(declare-fun e!4163843 () Bool)

(assert (=> d!2164063 (= (matchRSpec!3963 lt!2469404 s!14361) e!4163843)))

(declare-fun bm!628880 () Bool)

(declare-fun c!1284477 () Bool)

(assert (=> bm!628880 (= call!628886 (Exists!3908 (ite c!1284477 lambda!393065 lambda!393066)))))

(declare-fun b!6917607 () Bool)

(assert (=> b!6917607 (= e!4163839 e!4163844)))

(assert (=> b!6917607 (= c!1284477 (is-Star!16906 lt!2469404))))

(declare-fun b!6917608 () Bool)

(assert (=> b!6917608 (= e!4163843 e!4163840)))

(declare-fun res!2820490 () Bool)

(assert (=> b!6917608 (= res!2820490 (not (is-EmptyLang!16906 lt!2469404)))))

(assert (=> b!6917608 (=> (not res!2820490) (not e!4163840))))

(declare-fun b!6917609 () Bool)

(assert (=> b!6917609 (= e!4163843 call!628885)))

(assert (=> b!6917610 (= e!4163844 call!628886)))

(declare-fun b!6917611 () Bool)

(assert (=> b!6917611 (= e!4163839 e!4163842)))

(declare-fun res!2820492 () Bool)

(assert (=> b!6917611 (= res!2820492 (matchRSpec!3963 (regOne!34325 lt!2469404) s!14361))))

(assert (=> b!6917611 (=> res!2820492 e!4163842)))

(declare-fun bm!628881 () Bool)

(declare-fun isEmpty!38784 (List!66659) Bool)

(assert (=> bm!628881 (= call!628885 (isEmpty!38784 s!14361))))

(assert (= (and d!2164063 c!1284474) b!6917609))

(assert (= (and d!2164063 (not c!1284474)) b!6917608))

(assert (= (and b!6917608 res!2820490) b!6917603))

(assert (= (and b!6917603 c!1284475) b!6917601))

(assert (= (and b!6917603 (not c!1284475)) b!6917605))

(assert (= (and b!6917605 c!1284476) b!6917611))

(assert (= (and b!6917605 (not c!1284476)) b!6917607))

(assert (= (and b!6917611 (not res!2820492)) b!6917606))

(assert (= (and b!6917607 c!1284477) b!6917602))

(assert (= (and b!6917607 (not c!1284477)) b!6917610))

(assert (= (and b!6917602 (not res!2820491)) b!6917604))

(assert (= (or b!6917604 b!6917610) bm!628880))

(assert (= (or b!6917609 b!6917602) bm!628881))

(declare-fun m!7628434 () Bool)

(assert (=> b!6917606 m!7628434))

(declare-fun m!7628436 () Bool)

(assert (=> bm!628880 m!7628436))

(declare-fun m!7628438 () Bool)

(assert (=> b!6917611 m!7628438))

(declare-fun m!7628440 () Bool)

(assert (=> bm!628881 m!7628440))

(assert (=> b!6917453 d!2164063))

(declare-fun bs!1845933 () Bool)

(declare-fun b!6917615 () Bool)

(assert (= bs!1845933 (and b!6917615 b!6917456)))

(declare-fun lambda!393067 () Int)

(assert (=> bs!1845933 (not (= lambda!393067 lambda!393057))))

(declare-fun bs!1845934 () Bool)

(assert (= bs!1845934 (and b!6917615 b!6917604)))

(assert (=> bs!1845934 (= (and (= (reg!17235 lt!2469399) (reg!17235 lt!2469404)) (= lt!2469399 lt!2469404)) (= lambda!393067 lambda!393065))))

(declare-fun bs!1845935 () Bool)

(assert (= bs!1845935 (and b!6917615 b!6917610)))

(assert (=> bs!1845935 (not (= lambda!393067 lambda!393066))))

(assert (=> b!6917615 true))

(assert (=> b!6917615 true))

(declare-fun bs!1845936 () Bool)

(declare-fun b!6917621 () Bool)

(assert (= bs!1845936 (and b!6917621 b!6917456)))

(declare-fun lambda!393068 () Int)

(assert (=> bs!1845936 (not (= lambda!393068 lambda!393057))))

(declare-fun bs!1845937 () Bool)

(assert (= bs!1845937 (and b!6917621 b!6917604)))

(assert (=> bs!1845937 (not (= lambda!393068 lambda!393065))))

(declare-fun bs!1845938 () Bool)

(assert (= bs!1845938 (and b!6917621 b!6917610)))

(assert (=> bs!1845938 (= (and (= (regOne!34324 lt!2469399) (regOne!34324 lt!2469404)) (= (regTwo!34324 lt!2469399) (regTwo!34324 lt!2469404))) (= lambda!393068 lambda!393066))))

(declare-fun bs!1845939 () Bool)

(assert (= bs!1845939 (and b!6917621 b!6917615)))

(assert (=> bs!1845939 (not (= lambda!393068 lambda!393067))))

(assert (=> b!6917621 true))

(assert (=> b!6917621 true))

(declare-fun b!6917612 () Bool)

(declare-fun e!4163848 () Bool)

(assert (=> b!6917612 (= e!4163848 (= s!14361 (Cons!66535 (c!1284454 lt!2469399) Nil!66535)))))

(declare-fun b!6917613 () Bool)

(declare-fun res!2820494 () Bool)

(declare-fun e!4163845 () Bool)

(assert (=> b!6917613 (=> res!2820494 e!4163845)))

(declare-fun call!628887 () Bool)

(assert (=> b!6917613 (= res!2820494 call!628887)))

(declare-fun e!4163851 () Bool)

(assert (=> b!6917613 (= e!4163851 e!4163845)))

(declare-fun b!6917614 () Bool)

(declare-fun c!1284479 () Bool)

(assert (=> b!6917614 (= c!1284479 (is-ElementMatch!16906 lt!2469399))))

(declare-fun e!4163847 () Bool)

(assert (=> b!6917614 (= e!4163847 e!4163848)))

(declare-fun call!628888 () Bool)

(assert (=> b!6917615 (= e!4163845 call!628888)))

(declare-fun b!6917616 () Bool)

(declare-fun c!1284480 () Bool)

(assert (=> b!6917616 (= c!1284480 (is-Union!16906 lt!2469399))))

(declare-fun e!4163846 () Bool)

(assert (=> b!6917616 (= e!4163848 e!4163846)))

(declare-fun b!6917617 () Bool)

(declare-fun e!4163849 () Bool)

(assert (=> b!6917617 (= e!4163849 (matchRSpec!3963 (regTwo!34325 lt!2469399) s!14361))))

(declare-fun d!2164067 () Bool)

(declare-fun c!1284478 () Bool)

(assert (=> d!2164067 (= c!1284478 (is-EmptyExpr!16906 lt!2469399))))

(declare-fun e!4163850 () Bool)

(assert (=> d!2164067 (= (matchRSpec!3963 lt!2469399 s!14361) e!4163850)))

(declare-fun c!1284481 () Bool)

(declare-fun bm!628882 () Bool)

(assert (=> bm!628882 (= call!628888 (Exists!3908 (ite c!1284481 lambda!393067 lambda!393068)))))

(declare-fun b!6917618 () Bool)

(assert (=> b!6917618 (= e!4163846 e!4163851)))

(assert (=> b!6917618 (= c!1284481 (is-Star!16906 lt!2469399))))

(declare-fun b!6917619 () Bool)

(assert (=> b!6917619 (= e!4163850 e!4163847)))

(declare-fun res!2820493 () Bool)

(assert (=> b!6917619 (= res!2820493 (not (is-EmptyLang!16906 lt!2469399)))))

(assert (=> b!6917619 (=> (not res!2820493) (not e!4163847))))

(declare-fun b!6917620 () Bool)

(assert (=> b!6917620 (= e!4163850 call!628887)))

(assert (=> b!6917621 (= e!4163851 call!628888)))

(declare-fun b!6917622 () Bool)

(assert (=> b!6917622 (= e!4163846 e!4163849)))

(declare-fun res!2820495 () Bool)

(assert (=> b!6917622 (= res!2820495 (matchRSpec!3963 (regOne!34325 lt!2469399) s!14361))))

(assert (=> b!6917622 (=> res!2820495 e!4163849)))

(declare-fun bm!628883 () Bool)

(assert (=> bm!628883 (= call!628887 (isEmpty!38784 s!14361))))

(assert (= (and d!2164067 c!1284478) b!6917620))

(assert (= (and d!2164067 (not c!1284478)) b!6917619))

(assert (= (and b!6917619 res!2820493) b!6917614))

(assert (= (and b!6917614 c!1284479) b!6917612))

(assert (= (and b!6917614 (not c!1284479)) b!6917616))

(assert (= (and b!6917616 c!1284480) b!6917622))

(assert (= (and b!6917616 (not c!1284480)) b!6917618))

(assert (= (and b!6917622 (not res!2820495)) b!6917617))

(assert (= (and b!6917618 c!1284481) b!6917613))

(assert (= (and b!6917618 (not c!1284481)) b!6917621))

(assert (= (and b!6917613 (not res!2820494)) b!6917615))

(assert (= (or b!6917615 b!6917621) bm!628882))

(assert (= (or b!6917620 b!6917613) bm!628883))

(declare-fun m!7628442 () Bool)

(assert (=> b!6917617 m!7628442))

(declare-fun m!7628444 () Bool)

(assert (=> bm!628882 m!7628444))

(declare-fun m!7628446 () Bool)

(assert (=> b!6917622 m!7628446))

(assert (=> bm!628883 m!7628440))

(assert (=> b!6917453 d!2164067))

(declare-fun d!2164069 () Bool)

(assert (=> d!2164069 (= (matchR!9045 lt!2469399 s!14361) (matchRSpec!3963 lt!2469399 s!14361))))

(declare-fun lt!2469428 () Unit!160536)

(declare-fun choose!51504 (Regex!16906 List!66659) Unit!160536)

(assert (=> d!2164069 (= lt!2469428 (choose!51504 lt!2469399 s!14361))))

(assert (=> d!2164069 (validRegex!8612 lt!2469399)))

(assert (=> d!2164069 (= (mainMatchTheorem!3963 lt!2469399 s!14361) lt!2469428)))

(declare-fun bs!1845940 () Bool)

(assert (= bs!1845940 d!2164069))

(assert (=> bs!1845940 m!7628392))

(assert (=> bs!1845940 m!7628386))

(declare-fun m!7628460 () Bool)

(assert (=> bs!1845940 m!7628460))

(declare-fun m!7628462 () Bool)

(assert (=> bs!1845940 m!7628462))

(assert (=> b!6917453 d!2164069))

(declare-fun d!2164075 () Bool)

(assert (=> d!2164075 (= (matchR!9045 lt!2469404 s!14361) (matchRSpec!3963 lt!2469404 s!14361))))

(declare-fun lt!2469429 () Unit!160536)

(assert (=> d!2164075 (= lt!2469429 (choose!51504 lt!2469404 s!14361))))

(assert (=> d!2164075 (validRegex!8612 lt!2469404)))

(assert (=> d!2164075 (= (mainMatchTheorem!3963 lt!2469404 s!14361) lt!2469429)))

(declare-fun bs!1845941 () Bool)

(assert (= bs!1845941 d!2164075))

(assert (=> bs!1845941 m!7628394))

(assert (=> bs!1845941 m!7628384))

(declare-fun m!7628464 () Bool)

(assert (=> bs!1845941 m!7628464))

(declare-fun m!7628466 () Bool)

(assert (=> bs!1845941 m!7628466))

(assert (=> b!6917453 d!2164075))

(declare-fun b!6917669 () Bool)

(declare-fun res!2820523 () Bool)

(declare-fun e!4163882 () Bool)

(assert (=> b!6917669 (=> (not res!2820523) (not e!4163882))))

(declare-fun tail!12921 (List!66659) List!66659)

(assert (=> b!6917669 (= res!2820523 (isEmpty!38784 (tail!12921 s!14361)))))

(declare-fun b!6917670 () Bool)

(declare-fun e!4163884 () Bool)

(declare-fun lt!2469432 () Bool)

(declare-fun call!628897 () Bool)

(assert (=> b!6917670 (= e!4163884 (= lt!2469432 call!628897))))

(declare-fun b!6917671 () Bool)

(declare-fun e!4163886 () Bool)

(declare-fun e!4163885 () Bool)

(assert (=> b!6917671 (= e!4163886 e!4163885)))

(declare-fun res!2820528 () Bool)

(assert (=> b!6917671 (=> (not res!2820528) (not e!4163885))))

(assert (=> b!6917671 (= res!2820528 (not lt!2469432))))

(declare-fun b!6917672 () Bool)

(declare-fun e!4163881 () Bool)

(assert (=> b!6917672 (= e!4163884 e!4163881)))

(declare-fun c!1284494 () Bool)

(assert (=> b!6917672 (= c!1284494 (is-EmptyLang!16906 lt!2469404))))

(declare-fun b!6917673 () Bool)

(declare-fun e!4163880 () Bool)

(assert (=> b!6917673 (= e!4163880 (nullable!6741 lt!2469404))))

(declare-fun b!6917675 () Bool)

(declare-fun e!4163883 () Bool)

(declare-fun head!13869 (List!66659) C!34082)

(assert (=> b!6917675 (= e!4163883 (not (= (head!13869 s!14361) (c!1284454 lt!2469404))))))

(declare-fun b!6917676 () Bool)

(assert (=> b!6917676 (= e!4163882 (= (head!13869 s!14361) (c!1284454 lt!2469404)))))

(declare-fun b!6917677 () Bool)

(declare-fun res!2820526 () Bool)

(assert (=> b!6917677 (=> res!2820526 e!4163883)))

(assert (=> b!6917677 (= res!2820526 (not (isEmpty!38784 (tail!12921 s!14361))))))

(declare-fun b!6917674 () Bool)

(declare-fun res!2820525 () Bool)

(assert (=> b!6917674 (=> (not res!2820525) (not e!4163882))))

(assert (=> b!6917674 (= res!2820525 (not call!628897))))

(declare-fun d!2164077 () Bool)

(assert (=> d!2164077 e!4163884))

(declare-fun c!1284492 () Bool)

(assert (=> d!2164077 (= c!1284492 (is-EmptyExpr!16906 lt!2469404))))

(assert (=> d!2164077 (= lt!2469432 e!4163880)))

(declare-fun c!1284493 () Bool)

(assert (=> d!2164077 (= c!1284493 (isEmpty!38784 s!14361))))

(assert (=> d!2164077 (validRegex!8612 lt!2469404)))

(assert (=> d!2164077 (= (matchR!9045 lt!2469404 s!14361) lt!2469432)))

(declare-fun b!6917678 () Bool)

(assert (=> b!6917678 (= e!4163881 (not lt!2469432))))

(declare-fun b!6917679 () Bool)

(declare-fun res!2820527 () Bool)

(assert (=> b!6917679 (=> res!2820527 e!4163886)))

(assert (=> b!6917679 (= res!2820527 e!4163882)))

(declare-fun res!2820524 () Bool)

(assert (=> b!6917679 (=> (not res!2820524) (not e!4163882))))

(assert (=> b!6917679 (= res!2820524 lt!2469432)))

(declare-fun bm!628892 () Bool)

(assert (=> bm!628892 (= call!628897 (isEmpty!38784 s!14361))))

(declare-fun b!6917680 () Bool)

(declare-fun derivativeStep!5416 (Regex!16906 C!34082) Regex!16906)

(assert (=> b!6917680 (= e!4163880 (matchR!9045 (derivativeStep!5416 lt!2469404 (head!13869 s!14361)) (tail!12921 s!14361)))))

(declare-fun b!6917681 () Bool)

(assert (=> b!6917681 (= e!4163885 e!4163883)))

(declare-fun res!2820529 () Bool)

(assert (=> b!6917681 (=> res!2820529 e!4163883)))

(assert (=> b!6917681 (= res!2820529 call!628897)))

(declare-fun b!6917682 () Bool)

(declare-fun res!2820522 () Bool)

(assert (=> b!6917682 (=> res!2820522 e!4163886)))

(assert (=> b!6917682 (= res!2820522 (not (is-ElementMatch!16906 lt!2469404)))))

(assert (=> b!6917682 (= e!4163881 e!4163886)))

(assert (= (and d!2164077 c!1284493) b!6917673))

(assert (= (and d!2164077 (not c!1284493)) b!6917680))

(assert (= (and d!2164077 c!1284492) b!6917670))

(assert (= (and d!2164077 (not c!1284492)) b!6917672))

(assert (= (and b!6917672 c!1284494) b!6917678))

(assert (= (and b!6917672 (not c!1284494)) b!6917682))

(assert (= (and b!6917682 (not res!2820522)) b!6917679))

(assert (= (and b!6917679 res!2820524) b!6917674))

(assert (= (and b!6917674 res!2820525) b!6917669))

(assert (= (and b!6917669 res!2820523) b!6917676))

(assert (= (and b!6917679 (not res!2820527)) b!6917671))

(assert (= (and b!6917671 res!2820528) b!6917681))

(assert (= (and b!6917681 (not res!2820529)) b!6917677))

(assert (= (and b!6917677 (not res!2820526)) b!6917675))

(assert (= (or b!6917670 b!6917674 b!6917681) bm!628892))

(declare-fun m!7628470 () Bool)

(assert (=> b!6917675 m!7628470))

(assert (=> b!6917680 m!7628470))

(assert (=> b!6917680 m!7628470))

(declare-fun m!7628472 () Bool)

(assert (=> b!6917680 m!7628472))

(declare-fun m!7628474 () Bool)

(assert (=> b!6917680 m!7628474))

(assert (=> b!6917680 m!7628472))

(assert (=> b!6917680 m!7628474))

(declare-fun m!7628476 () Bool)

(assert (=> b!6917680 m!7628476))

(assert (=> b!6917669 m!7628474))

(assert (=> b!6917669 m!7628474))

(declare-fun m!7628478 () Bool)

(assert (=> b!6917669 m!7628478))

(declare-fun m!7628480 () Bool)

(assert (=> b!6917673 m!7628480))

(assert (=> b!6917677 m!7628474))

(assert (=> b!6917677 m!7628474))

(assert (=> b!6917677 m!7628478))

(assert (=> d!2164077 m!7628440))

(assert (=> d!2164077 m!7628466))

(assert (=> b!6917676 m!7628470))

(assert (=> bm!628892 m!7628440))

(assert (=> b!6917453 d!2164077))

(declare-fun b!6917683 () Bool)

(declare-fun res!2820531 () Bool)

(declare-fun e!4163889 () Bool)

(assert (=> b!6917683 (=> (not res!2820531) (not e!4163889))))

(assert (=> b!6917683 (= res!2820531 (isEmpty!38784 (tail!12921 s!14361)))))

(declare-fun b!6917684 () Bool)

(declare-fun e!4163891 () Bool)

(declare-fun lt!2469433 () Bool)

(declare-fun call!628898 () Bool)

(assert (=> b!6917684 (= e!4163891 (= lt!2469433 call!628898))))

(declare-fun b!6917685 () Bool)

(declare-fun e!4163893 () Bool)

(declare-fun e!4163892 () Bool)

(assert (=> b!6917685 (= e!4163893 e!4163892)))

(declare-fun res!2820536 () Bool)

(assert (=> b!6917685 (=> (not res!2820536) (not e!4163892))))

(assert (=> b!6917685 (= res!2820536 (not lt!2469433))))

(declare-fun b!6917686 () Bool)

(declare-fun e!4163888 () Bool)

(assert (=> b!6917686 (= e!4163891 e!4163888)))

(declare-fun c!1284497 () Bool)

(assert (=> b!6917686 (= c!1284497 (is-EmptyLang!16906 lt!2469399))))

(declare-fun b!6917687 () Bool)

(declare-fun e!4163887 () Bool)

(assert (=> b!6917687 (= e!4163887 (nullable!6741 lt!2469399))))

(declare-fun b!6917689 () Bool)

(declare-fun e!4163890 () Bool)

(assert (=> b!6917689 (= e!4163890 (not (= (head!13869 s!14361) (c!1284454 lt!2469399))))))

(declare-fun b!6917690 () Bool)

(assert (=> b!6917690 (= e!4163889 (= (head!13869 s!14361) (c!1284454 lt!2469399)))))

(declare-fun b!6917691 () Bool)

(declare-fun res!2820534 () Bool)

(assert (=> b!6917691 (=> res!2820534 e!4163890)))

(assert (=> b!6917691 (= res!2820534 (not (isEmpty!38784 (tail!12921 s!14361))))))

(declare-fun b!6917688 () Bool)

(declare-fun res!2820533 () Bool)

(assert (=> b!6917688 (=> (not res!2820533) (not e!4163889))))

(assert (=> b!6917688 (= res!2820533 (not call!628898))))

(declare-fun d!2164081 () Bool)

(assert (=> d!2164081 e!4163891))

(declare-fun c!1284495 () Bool)

(assert (=> d!2164081 (= c!1284495 (is-EmptyExpr!16906 lt!2469399))))

(assert (=> d!2164081 (= lt!2469433 e!4163887)))

(declare-fun c!1284496 () Bool)

(assert (=> d!2164081 (= c!1284496 (isEmpty!38784 s!14361))))

(assert (=> d!2164081 (validRegex!8612 lt!2469399)))

(assert (=> d!2164081 (= (matchR!9045 lt!2469399 s!14361) lt!2469433)))

(declare-fun b!6917692 () Bool)

(assert (=> b!6917692 (= e!4163888 (not lt!2469433))))

(declare-fun b!6917693 () Bool)

(declare-fun res!2820535 () Bool)

(assert (=> b!6917693 (=> res!2820535 e!4163893)))

(assert (=> b!6917693 (= res!2820535 e!4163889)))

(declare-fun res!2820532 () Bool)

(assert (=> b!6917693 (=> (not res!2820532) (not e!4163889))))

(assert (=> b!6917693 (= res!2820532 lt!2469433)))

(declare-fun bm!628893 () Bool)

(assert (=> bm!628893 (= call!628898 (isEmpty!38784 s!14361))))

(declare-fun b!6917694 () Bool)

(assert (=> b!6917694 (= e!4163887 (matchR!9045 (derivativeStep!5416 lt!2469399 (head!13869 s!14361)) (tail!12921 s!14361)))))

(declare-fun b!6917695 () Bool)

(assert (=> b!6917695 (= e!4163892 e!4163890)))

(declare-fun res!2820537 () Bool)

(assert (=> b!6917695 (=> res!2820537 e!4163890)))

(assert (=> b!6917695 (= res!2820537 call!628898)))

(declare-fun b!6917696 () Bool)

(declare-fun res!2820530 () Bool)

(assert (=> b!6917696 (=> res!2820530 e!4163893)))

(assert (=> b!6917696 (= res!2820530 (not (is-ElementMatch!16906 lt!2469399)))))

(assert (=> b!6917696 (= e!4163888 e!4163893)))

(assert (= (and d!2164081 c!1284496) b!6917687))

(assert (= (and d!2164081 (not c!1284496)) b!6917694))

(assert (= (and d!2164081 c!1284495) b!6917684))

(assert (= (and d!2164081 (not c!1284495)) b!6917686))

(assert (= (and b!6917686 c!1284497) b!6917692))

(assert (= (and b!6917686 (not c!1284497)) b!6917696))

(assert (= (and b!6917696 (not res!2820530)) b!6917693))

(assert (= (and b!6917693 res!2820532) b!6917688))

(assert (= (and b!6917688 res!2820533) b!6917683))

(assert (= (and b!6917683 res!2820531) b!6917690))

(assert (= (and b!6917693 (not res!2820535)) b!6917685))

(assert (= (and b!6917685 res!2820536) b!6917695))

(assert (= (and b!6917695 (not res!2820537)) b!6917691))

(assert (= (and b!6917691 (not res!2820534)) b!6917689))

(assert (= (or b!6917684 b!6917688 b!6917695) bm!628893))

(assert (=> b!6917689 m!7628470))

(assert (=> b!6917694 m!7628470))

(assert (=> b!6917694 m!7628470))

(declare-fun m!7628482 () Bool)

(assert (=> b!6917694 m!7628482))

(assert (=> b!6917694 m!7628474))

(assert (=> b!6917694 m!7628482))

(assert (=> b!6917694 m!7628474))

(declare-fun m!7628484 () Bool)

(assert (=> b!6917694 m!7628484))

(assert (=> b!6917683 m!7628474))

(assert (=> b!6917683 m!7628474))

(assert (=> b!6917683 m!7628478))

(declare-fun m!7628486 () Bool)

(assert (=> b!6917687 m!7628486))

(assert (=> b!6917691 m!7628474))

(assert (=> b!6917691 m!7628474))

(assert (=> b!6917691 m!7628478))

(assert (=> d!2164081 m!7628440))

(assert (=> d!2164081 m!7628462))

(assert (=> b!6917690 m!7628470))

(assert (=> bm!628893 m!7628440))

(assert (=> b!6917453 d!2164081))

(declare-fun bm!628894 () Bool)

(declare-fun call!628900 () Bool)

(declare-fun call!628899 () Bool)

(assert (=> bm!628894 (= call!628900 call!628899)))

(declare-fun b!6917697 () Bool)

(declare-fun res!2820540 () Bool)

(declare-fun e!4163898 () Bool)

(assert (=> b!6917697 (=> res!2820540 e!4163898)))

(assert (=> b!6917697 (= res!2820540 (not (is-Concat!25751 r3!135)))))

(declare-fun e!4163897 () Bool)

(assert (=> b!6917697 (= e!4163897 e!4163898)))

(declare-fun b!6917698 () Bool)

(declare-fun res!2820541 () Bool)

(declare-fun e!4163894 () Bool)

(assert (=> b!6917698 (=> (not res!2820541) (not e!4163894))))

(declare-fun call!628901 () Bool)

(assert (=> b!6917698 (= res!2820541 call!628901)))

(assert (=> b!6917698 (= e!4163897 e!4163894)))

(declare-fun b!6917699 () Bool)

(assert (=> b!6917699 (= e!4163894 call!628900)))

(declare-fun b!6917700 () Bool)

(declare-fun e!4163899 () Bool)

(assert (=> b!6917700 (= e!4163899 call!628901)))

(declare-fun b!6917701 () Bool)

(declare-fun e!4163900 () Bool)

(declare-fun e!4163896 () Bool)

(assert (=> b!6917701 (= e!4163900 e!4163896)))

(declare-fun c!1284499 () Bool)

(assert (=> b!6917701 (= c!1284499 (is-Star!16906 r3!135))))

(declare-fun bm!628895 () Bool)

(declare-fun c!1284498 () Bool)

(assert (=> bm!628895 (= call!628901 (validRegex!8612 (ite c!1284498 (regOne!34325 r3!135) (regTwo!34324 r3!135))))))

(declare-fun b!6917702 () Bool)

(declare-fun e!4163895 () Bool)

(assert (=> b!6917702 (= e!4163895 call!628899)))

(declare-fun d!2164083 () Bool)

(declare-fun res!2820538 () Bool)

(assert (=> d!2164083 (=> res!2820538 e!4163900)))

(assert (=> d!2164083 (= res!2820538 (is-ElementMatch!16906 r3!135))))

(assert (=> d!2164083 (= (validRegex!8612 r3!135) e!4163900)))

(declare-fun b!6917703 () Bool)

(assert (=> b!6917703 (= e!4163896 e!4163895)))

(declare-fun res!2820539 () Bool)

(assert (=> b!6917703 (= res!2820539 (not (nullable!6741 (reg!17235 r3!135))))))

(assert (=> b!6917703 (=> (not res!2820539) (not e!4163895))))

(declare-fun b!6917704 () Bool)

(assert (=> b!6917704 (= e!4163898 e!4163899)))

(declare-fun res!2820542 () Bool)

(assert (=> b!6917704 (=> (not res!2820542) (not e!4163899))))

(assert (=> b!6917704 (= res!2820542 call!628900)))

(declare-fun bm!628896 () Bool)

(assert (=> bm!628896 (= call!628899 (validRegex!8612 (ite c!1284499 (reg!17235 r3!135) (ite c!1284498 (regTwo!34325 r3!135) (regOne!34324 r3!135)))))))

(declare-fun b!6917705 () Bool)

(assert (=> b!6917705 (= e!4163896 e!4163897)))

(assert (=> b!6917705 (= c!1284498 (is-Union!16906 r3!135))))

(assert (= (and d!2164083 (not res!2820538)) b!6917701))

(assert (= (and b!6917701 c!1284499) b!6917703))

(assert (= (and b!6917701 (not c!1284499)) b!6917705))

(assert (= (and b!6917703 res!2820539) b!6917702))

(assert (= (and b!6917705 c!1284498) b!6917698))

(assert (= (and b!6917705 (not c!1284498)) b!6917697))

(assert (= (and b!6917698 res!2820541) b!6917699))

(assert (= (and b!6917697 (not res!2820540)) b!6917704))

(assert (= (and b!6917704 res!2820542) b!6917700))

(assert (= (or b!6917698 b!6917700) bm!628895))

(assert (= (or b!6917699 b!6917704) bm!628894))

(assert (= (or b!6917702 bm!628894) bm!628896))

(declare-fun m!7628488 () Bool)

(assert (=> bm!628895 m!7628488))

(declare-fun m!7628490 () Bool)

(assert (=> b!6917703 m!7628490))

(declare-fun m!7628492 () Bool)

(assert (=> bm!628896 m!7628492))

(assert (=> b!6917458 d!2164083))

(declare-fun bm!628897 () Bool)

(declare-fun call!628903 () Bool)

(declare-fun call!628902 () Bool)

(assert (=> bm!628897 (= call!628903 call!628902)))

(declare-fun b!6917706 () Bool)

(declare-fun res!2820545 () Bool)

(declare-fun e!4163905 () Bool)

(assert (=> b!6917706 (=> res!2820545 e!4163905)))

(assert (=> b!6917706 (= res!2820545 (not (is-Concat!25751 r1!6342)))))

(declare-fun e!4163904 () Bool)

(assert (=> b!6917706 (= e!4163904 e!4163905)))

(declare-fun b!6917707 () Bool)

(declare-fun res!2820546 () Bool)

(declare-fun e!4163901 () Bool)

(assert (=> b!6917707 (=> (not res!2820546) (not e!4163901))))

(declare-fun call!628904 () Bool)

(assert (=> b!6917707 (= res!2820546 call!628904)))

(assert (=> b!6917707 (= e!4163904 e!4163901)))

(declare-fun b!6917708 () Bool)

(assert (=> b!6917708 (= e!4163901 call!628903)))

(declare-fun b!6917709 () Bool)

(declare-fun e!4163906 () Bool)

(assert (=> b!6917709 (= e!4163906 call!628904)))

(declare-fun b!6917710 () Bool)

(declare-fun e!4163907 () Bool)

(declare-fun e!4163903 () Bool)

(assert (=> b!6917710 (= e!4163907 e!4163903)))

(declare-fun c!1284501 () Bool)

(assert (=> b!6917710 (= c!1284501 (is-Star!16906 r1!6342))))

(declare-fun bm!628898 () Bool)

(declare-fun c!1284500 () Bool)

(assert (=> bm!628898 (= call!628904 (validRegex!8612 (ite c!1284500 (regOne!34325 r1!6342) (regTwo!34324 r1!6342))))))

(declare-fun b!6917711 () Bool)

(declare-fun e!4163902 () Bool)

(assert (=> b!6917711 (= e!4163902 call!628902)))

(declare-fun d!2164085 () Bool)

(declare-fun res!2820543 () Bool)

(assert (=> d!2164085 (=> res!2820543 e!4163907)))

(assert (=> d!2164085 (= res!2820543 (is-ElementMatch!16906 r1!6342))))

(assert (=> d!2164085 (= (validRegex!8612 r1!6342) e!4163907)))

(declare-fun b!6917712 () Bool)

(assert (=> b!6917712 (= e!4163903 e!4163902)))

(declare-fun res!2820544 () Bool)

(assert (=> b!6917712 (= res!2820544 (not (nullable!6741 (reg!17235 r1!6342))))))

(assert (=> b!6917712 (=> (not res!2820544) (not e!4163902))))

(declare-fun b!6917713 () Bool)

(assert (=> b!6917713 (= e!4163905 e!4163906)))

(declare-fun res!2820547 () Bool)

(assert (=> b!6917713 (=> (not res!2820547) (not e!4163906))))

(assert (=> b!6917713 (= res!2820547 call!628903)))

(declare-fun bm!628899 () Bool)

(assert (=> bm!628899 (= call!628902 (validRegex!8612 (ite c!1284501 (reg!17235 r1!6342) (ite c!1284500 (regTwo!34325 r1!6342) (regOne!34324 r1!6342)))))))

(declare-fun b!6917714 () Bool)

(assert (=> b!6917714 (= e!4163903 e!4163904)))

(assert (=> b!6917714 (= c!1284500 (is-Union!16906 r1!6342))))

(assert (= (and d!2164085 (not res!2820543)) b!6917710))

(assert (= (and b!6917710 c!1284501) b!6917712))

(assert (= (and b!6917710 (not c!1284501)) b!6917714))

(assert (= (and b!6917712 res!2820544) b!6917711))

(assert (= (and b!6917714 c!1284500) b!6917707))

(assert (= (and b!6917714 (not c!1284500)) b!6917706))

(assert (= (and b!6917707 res!2820546) b!6917708))

(assert (= (and b!6917706 (not res!2820545)) b!6917713))

(assert (= (and b!6917713 res!2820547) b!6917709))

(assert (= (or b!6917707 b!6917709) bm!628898))

(assert (= (or b!6917708 b!6917713) bm!628897))

(assert (= (or b!6917711 bm!628897) bm!628899))

(declare-fun m!7628494 () Bool)

(assert (=> bm!628898 m!7628494))

(declare-fun m!7628496 () Bool)

(assert (=> b!6917712 m!7628496))

(declare-fun m!7628498 () Bool)

(assert (=> bm!628899 m!7628498))

(assert (=> start!665452 d!2164085))

(declare-fun d!2164087 () Bool)

(declare-fun choose!51505 (Int) Bool)

(assert (=> d!2164087 (= (Exists!3908 lambda!393057) (choose!51505 lambda!393057))))

(declare-fun bs!1845943 () Bool)

(assert (= bs!1845943 d!2164087))

(declare-fun m!7628500 () Bool)

(assert (=> bs!1845943 m!7628500))

(assert (=> b!6917456 d!2164087))

(declare-fun d!2164089 () Bool)

(declare-fun isEmpty!38785 (Option!16675) Bool)

(assert (=> d!2164089 (= (isDefined!13378 (findConcatSeparation!3089 lt!2469403 r3!135 Nil!66535 s!14361 s!14361)) (not (isEmpty!38785 (findConcatSeparation!3089 lt!2469403 r3!135 Nil!66535 s!14361 s!14361))))))

(declare-fun bs!1845944 () Bool)

(assert (= bs!1845944 d!2164089))

(assert (=> bs!1845944 m!7628376))

(declare-fun m!7628502 () Bool)

(assert (=> bs!1845944 m!7628502))

(assert (=> b!6917456 d!2164089))

(declare-fun bs!1845948 () Bool)

(declare-fun d!2164091 () Bool)

(assert (= bs!1845948 (and d!2164091 b!6917621)))

(declare-fun lambda!393074 () Int)

(assert (=> bs!1845948 (not (= lambda!393074 lambda!393068))))

(declare-fun bs!1845949 () Bool)

(assert (= bs!1845949 (and d!2164091 b!6917615)))

(assert (=> bs!1845949 (not (= lambda!393074 lambda!393067))))

(declare-fun bs!1845950 () Bool)

(assert (= bs!1845950 (and d!2164091 b!6917610)))

(assert (=> bs!1845950 (not (= lambda!393074 lambda!393066))))

(declare-fun bs!1845951 () Bool)

(assert (= bs!1845951 (and d!2164091 b!6917604)))

(assert (=> bs!1845951 (not (= lambda!393074 lambda!393065))))

(declare-fun bs!1845952 () Bool)

(assert (= bs!1845952 (and d!2164091 b!6917456)))

(assert (=> bs!1845952 (= lambda!393074 lambda!393057)))

(assert (=> d!2164091 true))

(assert (=> d!2164091 true))

(assert (=> d!2164091 true))

(assert (=> d!2164091 (= (isDefined!13378 (findConcatSeparation!3089 lt!2469403 r3!135 Nil!66535 s!14361 s!14361)) (Exists!3908 lambda!393074))))

(declare-fun lt!2469439 () Unit!160536)

(declare-fun choose!51506 (Regex!16906 Regex!16906 List!66659) Unit!160536)

(assert (=> d!2164091 (= lt!2469439 (choose!51506 lt!2469403 r3!135 s!14361))))

(assert (=> d!2164091 (validRegex!8612 lt!2469403)))

(assert (=> d!2164091 (= (lemmaFindConcatSeparationEquivalentToExists!2851 lt!2469403 r3!135 s!14361) lt!2469439)))

(declare-fun bs!1845953 () Bool)

(assert (= bs!1845953 d!2164091))

(declare-fun m!7628510 () Bool)

(assert (=> bs!1845953 m!7628510))

(assert (=> bs!1845953 m!7628376))

(assert (=> bs!1845953 m!7628378))

(assert (=> bs!1845953 m!7628382))

(assert (=> bs!1845953 m!7628376))

(declare-fun m!7628512 () Bool)

(assert (=> bs!1845953 m!7628512))

(assert (=> b!6917456 d!2164091))

(declare-fun b!6917741 () Bool)

(declare-fun res!2820570 () Bool)

(declare-fun e!4163925 () Bool)

(assert (=> b!6917741 (=> (not res!2820570) (not e!4163925))))

(declare-fun lt!2469448 () Option!16675)

(declare-fun get!23300 (Option!16675) tuple2!67526)

(assert (=> b!6917741 (= res!2820570 (matchR!9045 lt!2469403 (_1!37066 (get!23300 lt!2469448))))))

(declare-fun d!2164097 () Bool)

(declare-fun e!4163922 () Bool)

(assert (=> d!2164097 e!4163922))

(declare-fun res!2820569 () Bool)

(assert (=> d!2164097 (=> res!2820569 e!4163922)))

(assert (=> d!2164097 (= res!2820569 e!4163925)))

(declare-fun res!2820566 () Bool)

(assert (=> d!2164097 (=> (not res!2820566) (not e!4163925))))

(assert (=> d!2164097 (= res!2820566 (isDefined!13378 lt!2469448))))

(declare-fun e!4163923 () Option!16675)

(assert (=> d!2164097 (= lt!2469448 e!4163923)))

(declare-fun c!1284506 () Bool)

(declare-fun e!4163926 () Bool)

(assert (=> d!2164097 (= c!1284506 e!4163926)))

(declare-fun res!2820568 () Bool)

(assert (=> d!2164097 (=> (not res!2820568) (not e!4163926))))

(assert (=> d!2164097 (= res!2820568 (matchR!9045 lt!2469403 Nil!66535))))

(assert (=> d!2164097 (validRegex!8612 lt!2469403)))

(assert (=> d!2164097 (= (findConcatSeparation!3089 lt!2469403 r3!135 Nil!66535 s!14361 s!14361) lt!2469448)))

(declare-fun b!6917742 () Bool)

(assert (=> b!6917742 (= e!4163923 (Some!16674 (tuple2!67527 Nil!66535 s!14361)))))

(declare-fun b!6917743 () Bool)

(declare-fun lt!2469446 () Unit!160536)

(declare-fun lt!2469447 () Unit!160536)

(assert (=> b!6917743 (= lt!2469446 lt!2469447)))

(declare-fun ++!14949 (List!66659 List!66659) List!66659)

(assert (=> b!6917743 (= (++!14949 (++!14949 Nil!66535 (Cons!66535 (h!72983 s!14361) Nil!66535)) (t!380402 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2820 (List!66659 C!34082 List!66659 List!66659) Unit!160536)

(assert (=> b!6917743 (= lt!2469447 (lemmaMoveElementToOtherListKeepsConcatEq!2820 Nil!66535 (h!72983 s!14361) (t!380402 s!14361) s!14361))))

(declare-fun e!4163924 () Option!16675)

(assert (=> b!6917743 (= e!4163924 (findConcatSeparation!3089 lt!2469403 r3!135 (++!14949 Nil!66535 (Cons!66535 (h!72983 s!14361) Nil!66535)) (t!380402 s!14361) s!14361))))

(declare-fun b!6917744 () Bool)

(assert (=> b!6917744 (= e!4163926 (matchR!9045 r3!135 s!14361))))

(declare-fun b!6917745 () Bool)

(assert (=> b!6917745 (= e!4163923 e!4163924)))

(declare-fun c!1284507 () Bool)

(assert (=> b!6917745 (= c!1284507 (is-Nil!66535 s!14361))))

(declare-fun b!6917746 () Bool)

(declare-fun res!2820567 () Bool)

(assert (=> b!6917746 (=> (not res!2820567) (not e!4163925))))

(assert (=> b!6917746 (= res!2820567 (matchR!9045 r3!135 (_2!37066 (get!23300 lt!2469448))))))

(declare-fun b!6917747 () Bool)

(assert (=> b!6917747 (= e!4163924 None!16674)))

(declare-fun b!6917748 () Bool)

(assert (=> b!6917748 (= e!4163922 (not (isDefined!13378 lt!2469448)))))

(declare-fun b!6917749 () Bool)

(assert (=> b!6917749 (= e!4163925 (= (++!14949 (_1!37066 (get!23300 lt!2469448)) (_2!37066 (get!23300 lt!2469448))) s!14361))))

(assert (= (and d!2164097 res!2820568) b!6917744))

(assert (= (and d!2164097 c!1284506) b!6917742))

(assert (= (and d!2164097 (not c!1284506)) b!6917745))

(assert (= (and b!6917745 c!1284507) b!6917747))

(assert (= (and b!6917745 (not c!1284507)) b!6917743))

(assert (= (and d!2164097 res!2820566) b!6917741))

(assert (= (and b!6917741 res!2820570) b!6917746))

(assert (= (and b!6917746 res!2820567) b!6917749))

(assert (= (and d!2164097 (not res!2820569)) b!6917748))

(declare-fun m!7628514 () Bool)

(assert (=> b!6917748 m!7628514))

(declare-fun m!7628516 () Bool)

(assert (=> b!6917743 m!7628516))

(assert (=> b!6917743 m!7628516))

(declare-fun m!7628518 () Bool)

(assert (=> b!6917743 m!7628518))

(declare-fun m!7628520 () Bool)

(assert (=> b!6917743 m!7628520))

(assert (=> b!6917743 m!7628516))

(declare-fun m!7628522 () Bool)

(assert (=> b!6917743 m!7628522))

(declare-fun m!7628524 () Bool)

(assert (=> b!6917741 m!7628524))

(declare-fun m!7628526 () Bool)

(assert (=> b!6917741 m!7628526))

(assert (=> b!6917749 m!7628524))

(declare-fun m!7628528 () Bool)

(assert (=> b!6917749 m!7628528))

(assert (=> b!6917746 m!7628524))

(declare-fun m!7628530 () Bool)

(assert (=> b!6917746 m!7628530))

(declare-fun m!7628532 () Bool)

(assert (=> b!6917744 m!7628532))

(assert (=> d!2164097 m!7628514))

(declare-fun m!7628534 () Bool)

(assert (=> d!2164097 m!7628534))

(assert (=> d!2164097 m!7628382))

(assert (=> b!6917456 d!2164097))

(declare-fun bm!628900 () Bool)

(declare-fun call!628906 () Bool)

(declare-fun call!628905 () Bool)

(assert (=> bm!628900 (= call!628906 call!628905)))

(declare-fun b!6917750 () Bool)

(declare-fun res!2820573 () Bool)

(declare-fun e!4163931 () Bool)

(assert (=> b!6917750 (=> res!2820573 e!4163931)))

(assert (=> b!6917750 (= res!2820573 (not (is-Concat!25751 lt!2469403)))))

(declare-fun e!4163930 () Bool)

(assert (=> b!6917750 (= e!4163930 e!4163931)))

(declare-fun b!6917751 () Bool)

(declare-fun res!2820574 () Bool)

(declare-fun e!4163927 () Bool)

(assert (=> b!6917751 (=> (not res!2820574) (not e!4163927))))

(declare-fun call!628907 () Bool)

(assert (=> b!6917751 (= res!2820574 call!628907)))

(assert (=> b!6917751 (= e!4163930 e!4163927)))

(declare-fun b!6917752 () Bool)

(assert (=> b!6917752 (= e!4163927 call!628906)))

(declare-fun b!6917753 () Bool)

(declare-fun e!4163932 () Bool)

(assert (=> b!6917753 (= e!4163932 call!628907)))

(declare-fun b!6917754 () Bool)

(declare-fun e!4163933 () Bool)

(declare-fun e!4163929 () Bool)

(assert (=> b!6917754 (= e!4163933 e!4163929)))

(declare-fun c!1284509 () Bool)

(assert (=> b!6917754 (= c!1284509 (is-Star!16906 lt!2469403))))

(declare-fun bm!628901 () Bool)

(declare-fun c!1284508 () Bool)

(assert (=> bm!628901 (= call!628907 (validRegex!8612 (ite c!1284508 (regOne!34325 lt!2469403) (regTwo!34324 lt!2469403))))))

(declare-fun b!6917755 () Bool)

(declare-fun e!4163928 () Bool)

(assert (=> b!6917755 (= e!4163928 call!628905)))

(declare-fun d!2164099 () Bool)

(declare-fun res!2820571 () Bool)

(assert (=> d!2164099 (=> res!2820571 e!4163933)))

(assert (=> d!2164099 (= res!2820571 (is-ElementMatch!16906 lt!2469403))))

(assert (=> d!2164099 (= (validRegex!8612 lt!2469403) e!4163933)))

(declare-fun b!6917756 () Bool)

(assert (=> b!6917756 (= e!4163929 e!4163928)))

(declare-fun res!2820572 () Bool)

(assert (=> b!6917756 (= res!2820572 (not (nullable!6741 (reg!17235 lt!2469403))))))

(assert (=> b!6917756 (=> (not res!2820572) (not e!4163928))))

(declare-fun b!6917757 () Bool)

(assert (=> b!6917757 (= e!4163931 e!4163932)))

(declare-fun res!2820575 () Bool)

(assert (=> b!6917757 (=> (not res!2820575) (not e!4163932))))

(assert (=> b!6917757 (= res!2820575 call!628906)))

(declare-fun bm!628902 () Bool)

(assert (=> bm!628902 (= call!628905 (validRegex!8612 (ite c!1284509 (reg!17235 lt!2469403) (ite c!1284508 (regTwo!34325 lt!2469403) (regOne!34324 lt!2469403)))))))

(declare-fun b!6917758 () Bool)

(assert (=> b!6917758 (= e!4163929 e!4163930)))

(assert (=> b!6917758 (= c!1284508 (is-Union!16906 lt!2469403))))

(assert (= (and d!2164099 (not res!2820571)) b!6917754))

(assert (= (and b!6917754 c!1284509) b!6917756))

(assert (= (and b!6917754 (not c!1284509)) b!6917758))

(assert (= (and b!6917756 res!2820572) b!6917755))

(assert (= (and b!6917758 c!1284508) b!6917751))

(assert (= (and b!6917758 (not c!1284508)) b!6917750))

(assert (= (and b!6917751 res!2820574) b!6917752))

(assert (= (and b!6917750 (not res!2820573)) b!6917757))

(assert (= (and b!6917757 res!2820575) b!6917753))

(assert (= (or b!6917751 b!6917753) bm!628901))

(assert (= (or b!6917752 b!6917757) bm!628900))

(assert (= (or b!6917755 bm!628900) bm!628902))

(declare-fun m!7628536 () Bool)

(assert (=> bm!628901 m!7628536))

(declare-fun m!7628538 () Bool)

(assert (=> b!6917756 m!7628538))

(declare-fun m!7628540 () Bool)

(assert (=> bm!628902 m!7628540))

(assert (=> b!6917456 d!2164099))

(declare-fun e!4163936 () Bool)

(assert (=> b!6917460 (= tp!1906648 e!4163936)))

(declare-fun b!6917770 () Bool)

(declare-fun tp!1906722 () Bool)

(declare-fun tp!1906720 () Bool)

(assert (=> b!6917770 (= e!4163936 (and tp!1906722 tp!1906720))))

(declare-fun b!6917769 () Bool)

(assert (=> b!6917769 (= e!4163936 tp_is_empty!43037)))

(declare-fun b!6917772 () Bool)

(declare-fun tp!1906721 () Bool)

(declare-fun tp!1906719 () Bool)

(assert (=> b!6917772 (= e!4163936 (and tp!1906721 tp!1906719))))

(declare-fun b!6917771 () Bool)

(declare-fun tp!1906718 () Bool)

(assert (=> b!6917771 (= e!4163936 tp!1906718)))

(assert (= (and b!6917460 (is-ElementMatch!16906 (regOne!34324 r2!6280))) b!6917769))

(assert (= (and b!6917460 (is-Concat!25751 (regOne!34324 r2!6280))) b!6917770))

(assert (= (and b!6917460 (is-Star!16906 (regOne!34324 r2!6280))) b!6917771))

(assert (= (and b!6917460 (is-Union!16906 (regOne!34324 r2!6280))) b!6917772))

(declare-fun e!4163937 () Bool)

(assert (=> b!6917460 (= tp!1906645 e!4163937)))

(declare-fun b!6917774 () Bool)

(declare-fun tp!1906727 () Bool)

(declare-fun tp!1906725 () Bool)

(assert (=> b!6917774 (= e!4163937 (and tp!1906727 tp!1906725))))

(declare-fun b!6917773 () Bool)

(assert (=> b!6917773 (= e!4163937 tp_is_empty!43037)))

(declare-fun b!6917776 () Bool)

(declare-fun tp!1906726 () Bool)

(declare-fun tp!1906724 () Bool)

(assert (=> b!6917776 (= e!4163937 (and tp!1906726 tp!1906724))))

(declare-fun b!6917775 () Bool)

(declare-fun tp!1906723 () Bool)

(assert (=> b!6917775 (= e!4163937 tp!1906723)))

(assert (= (and b!6917460 (is-ElementMatch!16906 (regTwo!34324 r2!6280))) b!6917773))

(assert (= (and b!6917460 (is-Concat!25751 (regTwo!34324 r2!6280))) b!6917774))

(assert (= (and b!6917460 (is-Star!16906 (regTwo!34324 r2!6280))) b!6917775))

(assert (= (and b!6917460 (is-Union!16906 (regTwo!34324 r2!6280))) b!6917776))

(declare-fun e!4163938 () Bool)

(assert (=> b!6917449 (= tp!1906647 e!4163938)))

(declare-fun b!6917778 () Bool)

(declare-fun tp!1906732 () Bool)

(declare-fun tp!1906730 () Bool)

(assert (=> b!6917778 (= e!4163938 (and tp!1906732 tp!1906730))))

(declare-fun b!6917777 () Bool)

(assert (=> b!6917777 (= e!4163938 tp_is_empty!43037)))

(declare-fun b!6917780 () Bool)

(declare-fun tp!1906731 () Bool)

(declare-fun tp!1906729 () Bool)

(assert (=> b!6917780 (= e!4163938 (and tp!1906731 tp!1906729))))

(declare-fun b!6917779 () Bool)

(declare-fun tp!1906728 () Bool)

(assert (=> b!6917779 (= e!4163938 tp!1906728)))

(assert (= (and b!6917449 (is-ElementMatch!16906 (reg!17235 r1!6342))) b!6917777))

(assert (= (and b!6917449 (is-Concat!25751 (reg!17235 r1!6342))) b!6917778))

(assert (= (and b!6917449 (is-Star!16906 (reg!17235 r1!6342))) b!6917779))

(assert (= (and b!6917449 (is-Union!16906 (reg!17235 r1!6342))) b!6917780))

(declare-fun e!4163939 () Bool)

(assert (=> b!6917448 (= tp!1906644 e!4163939)))

(declare-fun b!6917782 () Bool)

(declare-fun tp!1906737 () Bool)

(declare-fun tp!1906735 () Bool)

(assert (=> b!6917782 (= e!4163939 (and tp!1906737 tp!1906735))))

(declare-fun b!6917781 () Bool)

(assert (=> b!6917781 (= e!4163939 tp_is_empty!43037)))

(declare-fun b!6917784 () Bool)

(declare-fun tp!1906736 () Bool)

(declare-fun tp!1906734 () Bool)

(assert (=> b!6917784 (= e!4163939 (and tp!1906736 tp!1906734))))

(declare-fun b!6917783 () Bool)

(declare-fun tp!1906733 () Bool)

(assert (=> b!6917783 (= e!4163939 tp!1906733)))

(assert (= (and b!6917448 (is-ElementMatch!16906 (regOne!34325 r1!6342))) b!6917781))

(assert (= (and b!6917448 (is-Concat!25751 (regOne!34325 r1!6342))) b!6917782))

(assert (= (and b!6917448 (is-Star!16906 (regOne!34325 r1!6342))) b!6917783))

(assert (= (and b!6917448 (is-Union!16906 (regOne!34325 r1!6342))) b!6917784))

(declare-fun e!4163940 () Bool)

(assert (=> b!6917448 (= tp!1906652 e!4163940)))

(declare-fun b!6917786 () Bool)

(declare-fun tp!1906742 () Bool)

(declare-fun tp!1906740 () Bool)

(assert (=> b!6917786 (= e!4163940 (and tp!1906742 tp!1906740))))

(declare-fun b!6917785 () Bool)

(assert (=> b!6917785 (= e!4163940 tp_is_empty!43037)))

(declare-fun b!6917788 () Bool)

(declare-fun tp!1906741 () Bool)

(declare-fun tp!1906739 () Bool)

(assert (=> b!6917788 (= e!4163940 (and tp!1906741 tp!1906739))))

(declare-fun b!6917787 () Bool)

(declare-fun tp!1906738 () Bool)

(assert (=> b!6917787 (= e!4163940 tp!1906738)))

(assert (= (and b!6917448 (is-ElementMatch!16906 (regTwo!34325 r1!6342))) b!6917785))

(assert (= (and b!6917448 (is-Concat!25751 (regTwo!34325 r1!6342))) b!6917786))

(assert (= (and b!6917448 (is-Star!16906 (regTwo!34325 r1!6342))) b!6917787))

(assert (= (and b!6917448 (is-Union!16906 (regTwo!34325 r1!6342))) b!6917788))

(declare-fun e!4163941 () Bool)

(assert (=> b!6917459 (= tp!1906651 e!4163941)))

(declare-fun b!6917790 () Bool)

(declare-fun tp!1906747 () Bool)

(declare-fun tp!1906745 () Bool)

(assert (=> b!6917790 (= e!4163941 (and tp!1906747 tp!1906745))))

(declare-fun b!6917789 () Bool)

(assert (=> b!6917789 (= e!4163941 tp_is_empty!43037)))

(declare-fun b!6917792 () Bool)

(declare-fun tp!1906746 () Bool)

(declare-fun tp!1906744 () Bool)

(assert (=> b!6917792 (= e!4163941 (and tp!1906746 tp!1906744))))

(declare-fun b!6917791 () Bool)

(declare-fun tp!1906743 () Bool)

(assert (=> b!6917791 (= e!4163941 tp!1906743)))

(assert (= (and b!6917459 (is-ElementMatch!16906 (regOne!34324 r3!135))) b!6917789))

(assert (= (and b!6917459 (is-Concat!25751 (regOne!34324 r3!135))) b!6917790))

(assert (= (and b!6917459 (is-Star!16906 (regOne!34324 r3!135))) b!6917791))

(assert (= (and b!6917459 (is-Union!16906 (regOne!34324 r3!135))) b!6917792))

(declare-fun e!4163942 () Bool)

(assert (=> b!6917459 (= tp!1906653 e!4163942)))

(declare-fun b!6917794 () Bool)

(declare-fun tp!1906752 () Bool)

(declare-fun tp!1906750 () Bool)

(assert (=> b!6917794 (= e!4163942 (and tp!1906752 tp!1906750))))

(declare-fun b!6917793 () Bool)

(assert (=> b!6917793 (= e!4163942 tp_is_empty!43037)))

(declare-fun b!6917796 () Bool)

(declare-fun tp!1906751 () Bool)

(declare-fun tp!1906749 () Bool)

(assert (=> b!6917796 (= e!4163942 (and tp!1906751 tp!1906749))))

(declare-fun b!6917795 () Bool)

(declare-fun tp!1906748 () Bool)

(assert (=> b!6917795 (= e!4163942 tp!1906748)))

(assert (= (and b!6917459 (is-ElementMatch!16906 (regTwo!34324 r3!135))) b!6917793))

(assert (= (and b!6917459 (is-Concat!25751 (regTwo!34324 r3!135))) b!6917794))

(assert (= (and b!6917459 (is-Star!16906 (regTwo!34324 r3!135))) b!6917795))

(assert (= (and b!6917459 (is-Union!16906 (regTwo!34324 r3!135))) b!6917796))

(declare-fun e!4163943 () Bool)

(assert (=> b!6917452 (= tp!1906659 e!4163943)))

(declare-fun b!6917798 () Bool)

(declare-fun tp!1906757 () Bool)

(declare-fun tp!1906755 () Bool)

(assert (=> b!6917798 (= e!4163943 (and tp!1906757 tp!1906755))))

(declare-fun b!6917797 () Bool)

(assert (=> b!6917797 (= e!4163943 tp_is_empty!43037)))

(declare-fun b!6917800 () Bool)

(declare-fun tp!1906756 () Bool)

(declare-fun tp!1906754 () Bool)

(assert (=> b!6917800 (= e!4163943 (and tp!1906756 tp!1906754))))

(declare-fun b!6917799 () Bool)

(declare-fun tp!1906753 () Bool)

(assert (=> b!6917799 (= e!4163943 tp!1906753)))

(assert (= (and b!6917452 (is-ElementMatch!16906 (reg!17235 r3!135))) b!6917797))

(assert (= (and b!6917452 (is-Concat!25751 (reg!17235 r3!135))) b!6917798))

(assert (= (and b!6917452 (is-Star!16906 (reg!17235 r3!135))) b!6917799))

(assert (= (and b!6917452 (is-Union!16906 (reg!17235 r3!135))) b!6917800))

(declare-fun e!4163944 () Bool)

(assert (=> b!6917457 (= tp!1906650 e!4163944)))

(declare-fun b!6917802 () Bool)

(declare-fun tp!1906762 () Bool)

(declare-fun tp!1906760 () Bool)

(assert (=> b!6917802 (= e!4163944 (and tp!1906762 tp!1906760))))

(declare-fun b!6917801 () Bool)

(assert (=> b!6917801 (= e!4163944 tp_is_empty!43037)))

(declare-fun b!6917804 () Bool)

(declare-fun tp!1906761 () Bool)

(declare-fun tp!1906759 () Bool)

(assert (=> b!6917804 (= e!4163944 (and tp!1906761 tp!1906759))))

(declare-fun b!6917803 () Bool)

(declare-fun tp!1906758 () Bool)

(assert (=> b!6917803 (= e!4163944 tp!1906758)))

(assert (= (and b!6917457 (is-ElementMatch!16906 (regOne!34325 r2!6280))) b!6917801))

(assert (= (and b!6917457 (is-Concat!25751 (regOne!34325 r2!6280))) b!6917802))

(assert (= (and b!6917457 (is-Star!16906 (regOne!34325 r2!6280))) b!6917803))

(assert (= (and b!6917457 (is-Union!16906 (regOne!34325 r2!6280))) b!6917804))

(declare-fun e!4163945 () Bool)

(assert (=> b!6917457 (= tp!1906654 e!4163945)))

(declare-fun b!6917806 () Bool)

(declare-fun tp!1906767 () Bool)

(declare-fun tp!1906765 () Bool)

(assert (=> b!6917806 (= e!4163945 (and tp!1906767 tp!1906765))))

(declare-fun b!6917805 () Bool)

(assert (=> b!6917805 (= e!4163945 tp_is_empty!43037)))

(declare-fun b!6917808 () Bool)

(declare-fun tp!1906766 () Bool)

(declare-fun tp!1906764 () Bool)

(assert (=> b!6917808 (= e!4163945 (and tp!1906766 tp!1906764))))

(declare-fun b!6917807 () Bool)

(declare-fun tp!1906763 () Bool)

(assert (=> b!6917807 (= e!4163945 tp!1906763)))

(assert (= (and b!6917457 (is-ElementMatch!16906 (regTwo!34325 r2!6280))) b!6917805))

(assert (= (and b!6917457 (is-Concat!25751 (regTwo!34325 r2!6280))) b!6917806))

(assert (= (and b!6917457 (is-Star!16906 (regTwo!34325 r2!6280))) b!6917807))

(assert (= (and b!6917457 (is-Union!16906 (regTwo!34325 r2!6280))) b!6917808))

(declare-fun e!4163946 () Bool)

(assert (=> b!6917447 (= tp!1906657 e!4163946)))

(declare-fun b!6917810 () Bool)

(declare-fun tp!1906772 () Bool)

(declare-fun tp!1906770 () Bool)

(assert (=> b!6917810 (= e!4163946 (and tp!1906772 tp!1906770))))

(declare-fun b!6917809 () Bool)

(assert (=> b!6917809 (= e!4163946 tp_is_empty!43037)))

(declare-fun b!6917812 () Bool)

(declare-fun tp!1906771 () Bool)

(declare-fun tp!1906769 () Bool)

(assert (=> b!6917812 (= e!4163946 (and tp!1906771 tp!1906769))))

(declare-fun b!6917811 () Bool)

(declare-fun tp!1906768 () Bool)

(assert (=> b!6917811 (= e!4163946 tp!1906768)))

(assert (= (and b!6917447 (is-ElementMatch!16906 (regOne!34325 r3!135))) b!6917809))

(assert (= (and b!6917447 (is-Concat!25751 (regOne!34325 r3!135))) b!6917810))

(assert (= (and b!6917447 (is-Star!16906 (regOne!34325 r3!135))) b!6917811))

(assert (= (and b!6917447 (is-Union!16906 (regOne!34325 r3!135))) b!6917812))

(declare-fun e!4163947 () Bool)

(assert (=> b!6917447 (= tp!1906649 e!4163947)))

(declare-fun b!6917814 () Bool)

(declare-fun tp!1906777 () Bool)

(declare-fun tp!1906775 () Bool)

(assert (=> b!6917814 (= e!4163947 (and tp!1906777 tp!1906775))))

(declare-fun b!6917813 () Bool)

(assert (=> b!6917813 (= e!4163947 tp_is_empty!43037)))

(declare-fun b!6917816 () Bool)

(declare-fun tp!1906776 () Bool)

(declare-fun tp!1906774 () Bool)

(assert (=> b!6917816 (= e!4163947 (and tp!1906776 tp!1906774))))

(declare-fun b!6917815 () Bool)

(declare-fun tp!1906773 () Bool)

(assert (=> b!6917815 (= e!4163947 tp!1906773)))

(assert (= (and b!6917447 (is-ElementMatch!16906 (regTwo!34325 r3!135))) b!6917813))

(assert (= (and b!6917447 (is-Concat!25751 (regTwo!34325 r3!135))) b!6917814))

(assert (= (and b!6917447 (is-Star!16906 (regTwo!34325 r3!135))) b!6917815))

(assert (= (and b!6917447 (is-Union!16906 (regTwo!34325 r3!135))) b!6917816))

(declare-fun e!4163948 () Bool)

(assert (=> b!6917445 (= tp!1906656 e!4163948)))

(declare-fun b!6917818 () Bool)

(declare-fun tp!1906782 () Bool)

(declare-fun tp!1906780 () Bool)

(assert (=> b!6917818 (= e!4163948 (and tp!1906782 tp!1906780))))

(declare-fun b!6917817 () Bool)

(assert (=> b!6917817 (= e!4163948 tp_is_empty!43037)))

(declare-fun b!6917820 () Bool)

(declare-fun tp!1906781 () Bool)

(declare-fun tp!1906779 () Bool)

(assert (=> b!6917820 (= e!4163948 (and tp!1906781 tp!1906779))))

(declare-fun b!6917819 () Bool)

(declare-fun tp!1906778 () Bool)

(assert (=> b!6917819 (= e!4163948 tp!1906778)))

(assert (= (and b!6917445 (is-ElementMatch!16906 (reg!17235 r2!6280))) b!6917817))

(assert (= (and b!6917445 (is-Concat!25751 (reg!17235 r2!6280))) b!6917818))

(assert (= (and b!6917445 (is-Star!16906 (reg!17235 r2!6280))) b!6917819))

(assert (= (and b!6917445 (is-Union!16906 (reg!17235 r2!6280))) b!6917820))

(declare-fun b!6917829 () Bool)

(declare-fun e!4163953 () Bool)

(declare-fun tp!1906785 () Bool)

(assert (=> b!6917829 (= e!4163953 (and tp_is_empty!43037 tp!1906785))))

(assert (=> b!6917446 (= tp!1906658 e!4163953)))

(assert (= (and b!6917446 (is-Cons!66535 (t!380402 s!14361))) b!6917829))

(declare-fun e!4163956 () Bool)

(assert (=> b!6917451 (= tp!1906646 e!4163956)))

(declare-fun b!6917833 () Bool)

(declare-fun tp!1906790 () Bool)

(declare-fun tp!1906788 () Bool)

(assert (=> b!6917833 (= e!4163956 (and tp!1906790 tp!1906788))))

(declare-fun b!6917832 () Bool)

(assert (=> b!6917832 (= e!4163956 tp_is_empty!43037)))

(declare-fun b!6917835 () Bool)

(declare-fun tp!1906789 () Bool)

(declare-fun tp!1906787 () Bool)

(assert (=> b!6917835 (= e!4163956 (and tp!1906789 tp!1906787))))

(declare-fun b!6917834 () Bool)

(declare-fun tp!1906786 () Bool)

(assert (=> b!6917834 (= e!4163956 tp!1906786)))

(assert (= (and b!6917451 (is-ElementMatch!16906 (regOne!34324 r1!6342))) b!6917832))

(assert (= (and b!6917451 (is-Concat!25751 (regOne!34324 r1!6342))) b!6917833))

(assert (= (and b!6917451 (is-Star!16906 (regOne!34324 r1!6342))) b!6917834))

(assert (= (and b!6917451 (is-Union!16906 (regOne!34324 r1!6342))) b!6917835))

(declare-fun e!4163957 () Bool)

(assert (=> b!6917451 (= tp!1906655 e!4163957)))

(declare-fun b!6917837 () Bool)

(declare-fun tp!1906795 () Bool)

(declare-fun tp!1906793 () Bool)

(assert (=> b!6917837 (= e!4163957 (and tp!1906795 tp!1906793))))

(declare-fun b!6917836 () Bool)

(assert (=> b!6917836 (= e!4163957 tp_is_empty!43037)))

(declare-fun b!6917839 () Bool)

(declare-fun tp!1906794 () Bool)

(declare-fun tp!1906792 () Bool)

(assert (=> b!6917839 (= e!4163957 (and tp!1906794 tp!1906792))))

(declare-fun b!6917838 () Bool)

(declare-fun tp!1906791 () Bool)

(assert (=> b!6917838 (= e!4163957 tp!1906791)))

(assert (= (and b!6917451 (is-ElementMatch!16906 (regTwo!34324 r1!6342))) b!6917836))

(assert (= (and b!6917451 (is-Concat!25751 (regTwo!34324 r1!6342))) b!6917837))

(assert (= (and b!6917451 (is-Star!16906 (regTwo!34324 r1!6342))) b!6917838))

(assert (= (and b!6917451 (is-Union!16906 (regTwo!34324 r1!6342))) b!6917839))

(push 1)

(assert (not b!6917807))

(assert (not bm!628892))

(assert (not b!6917791))

(assert (not b!6917799))

(assert (not b!6917749))

(assert (not b!6917677))

(assert (not b!6917795))

(assert (not bm!628869))

(assert (not b!6917743))

(assert (not b!6917808))

(assert (not b!6917798))

(assert (not b!6917622))

(assert (not b!6917712))

(assert (not b!6917834))

(assert (not b!6917804))

(assert (not b!6917839))

(assert (not d!2164087))

(assert (not d!2164069))

(assert (not b!6917694))

(assert (not b!6917787))

(assert (not b!6917838))

(assert (not b!6917794))

(assert (not b!6917689))

(assert (not b!6917803))

(assert (not b!6917792))

(assert (not bm!628899))

(assert (not b!6917815))

(assert (not d!2164097))

(assert (not b!6917741))

(assert (not b!6917772))

(assert (not bm!628901))

(assert (not b!6917783))

(assert (not b!6917680))

(assert (not b!6917683))

(assert (not b!6917835))

(assert (not b!6917606))

(assert (not b!6917780))

(assert (not b!6917810))

(assert (not b!6917802))

(assert (not b!6917611))

(assert (not b!6917675))

(assert (not b!6917784))

(assert (not b!6917790))

(assert (not b!6917811))

(assert (not bm!628882))

(assert (not bm!628898))

(assert (not b!6917669))

(assert (not b!6917548))

(assert (not b!6917779))

(assert (not b!6917786))

(assert (not bm!628868))

(assert (not b!6917788))

(assert (not b!6917687))

(assert (not b!6917673))

(assert (not b!6917690))

(assert (not b!6917756))

(assert (not b!6917833))

(assert (not b!6917796))

(assert (not b!6917814))

(assert (not b!6917774))

(assert (not b!6917778))

(assert (not b!6917812))

(assert (not bm!628896))

(assert (not b!6917819))

(assert (not b!6917617))

(assert (not bm!628895))

(assert (not b!6917829))

(assert (not b!6917771))

(assert (not b!6917820))

(assert (not b!6917703))

(assert (not b!6917776))

(assert (not b!6917691))

(assert (not bm!628881))

(assert (not b!6917800))

(assert (not b!6917818))

(assert (not bm!628883))

(assert (not b!6917816))

(assert (not d!2164089))

(assert (not bm!628880))

(assert (not d!2164081))

(assert (not bm!628902))

(assert (not b!6917748))

(assert (not d!2164075))

(assert (not b!6917744))

(assert (not b!6917782))

(assert (not b!6917746))

(assert (not b!6917806))

(assert (not b!6917770))

(assert (not b!6917837))

(assert tp_is_empty!43037)

(assert (not d!2164091))

(assert (not bm!628893))

(assert (not d!2164077))

(assert (not b!6917676))

(assert (not b!6917775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664880 () Bool)

(assert start!664880)

(declare-fun b!6904470 () Bool)

(assert (=> b!6904470 true))

(assert (=> b!6904470 true))

(assert (=> b!6904470 true))

(declare-fun lambda!392120 () Int)

(declare-fun lambda!392119 () Int)

(assert (=> b!6904470 (not (= lambda!392120 lambda!392119))))

(assert (=> b!6904470 true))

(assert (=> b!6904470 true))

(assert (=> b!6904470 true))

(declare-fun bs!1843276 () Bool)

(declare-fun b!6904472 () Bool)

(assert (= bs!1843276 (and b!6904472 b!6904470)))

(declare-datatypes ((C!34014 0))(
  ( (C!34015 (val!26709 Int)) )
))
(declare-datatypes ((Regex!16872 0))(
  ( (ElementMatch!16872 (c!1282744 C!34014)) (Concat!25717 (regOne!34256 Regex!16872) (regTwo!34256 Regex!16872)) (EmptyExpr!16872) (Star!16872 (reg!17201 Regex!16872)) (EmptyLang!16872) (Union!16872 (regOne!34257 Regex!16872) (regTwo!34257 Regex!16872)) )
))
(declare-fun r1!6342 () Regex!16872)

(declare-datatypes ((List!66629 0))(
  ( (Nil!66505) (Cons!66505 (h!72953 C!34014) (t!380372 List!66629)) )
))
(declare-datatypes ((tuple2!67478 0))(
  ( (tuple2!67479 (_1!37042 List!66629) (_2!37042 List!66629)) )
))
(declare-fun lt!2467158 () tuple2!67478)

(declare-fun s!14361 () List!66629)

(declare-fun lambda!392121 () Int)

(declare-fun r2!6280 () Regex!16872)

(declare-fun lt!2467164 () Regex!16872)

(declare-fun r3!135 () Regex!16872)

(assert (=> bs!1843276 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392121 lambda!392119))))

(assert (=> bs!1843276 (not (= lambda!392121 lambda!392120))))

(assert (=> b!6904472 true))

(assert (=> b!6904472 true))

(assert (=> b!6904472 true))

(declare-fun lambda!392122 () Int)

(assert (=> bs!1843276 (not (= lambda!392122 lambda!392119))))

(assert (=> bs!1843276 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392122 lambda!392120))))

(assert (=> b!6904472 (not (= lambda!392122 lambda!392121))))

(assert (=> b!6904472 true))

(assert (=> b!6904472 true))

(assert (=> b!6904472 true))

(declare-fun b!6904464 () Bool)

(declare-fun e!4157680 () Bool)

(declare-fun tp_is_empty!42969 () Bool)

(declare-fun tp!1901065 () Bool)

(assert (=> b!6904464 (= e!4157680 (and tp_is_empty!42969 tp!1901065))))

(declare-fun b!6904465 () Bool)

(declare-fun res!2815563 () Bool)

(declare-fun e!4157681 () Bool)

(assert (=> b!6904465 (=> res!2815563 e!4157681)))

(declare-fun matchR!9017 (Regex!16872 List!66629) Bool)

(assert (=> b!6904465 (= res!2815563 (not (matchR!9017 r3!135 (_2!37042 lt!2467158))))))

(declare-fun b!6904466 () Bool)

(declare-fun e!4157675 () Bool)

(declare-fun tp!1901066 () Bool)

(assert (=> b!6904466 (= e!4157675 tp!1901066)))

(declare-fun b!6904467 () Bool)

(declare-fun e!4157679 () Bool)

(assert (=> b!6904467 (= e!4157679 tp_is_empty!42969)))

(declare-fun b!6904468 () Bool)

(declare-fun e!4157676 () Bool)

(assert (=> b!6904468 (= e!4157676 tp_is_empty!42969)))

(declare-fun b!6904469 () Bool)

(declare-fun tp!1901071 () Bool)

(assert (=> b!6904469 (= e!4157679 tp!1901071)))

(declare-fun b!6904471 () Bool)

(declare-fun tp!1901070 () Bool)

(declare-fun tp!1901077 () Bool)

(assert (=> b!6904471 (= e!4157676 (and tp!1901070 tp!1901077))))

(declare-datatypes ((Option!16651 0))(
  ( (None!16650) (Some!16650 (v!52922 tuple2!67478)) )
))
(declare-fun lt!2467160 () Option!16651)

(declare-fun get!23259 (Option!16651) tuple2!67478)

(assert (=> b!6904472 (= e!4157681 (matchR!9017 r1!6342 (_1!37042 (get!23259 lt!2467160))))))

(declare-fun Exists!3880 (Int) Bool)

(assert (=> b!6904472 (= (Exists!3880 lambda!392121) (Exists!3880 lambda!392122))))

(declare-datatypes ((Unit!160480 0))(
  ( (Unit!160481) )
))
(declare-fun lt!2467161 () Unit!160480)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2353 (Regex!16872 Regex!16872 List!66629) Unit!160480)

(assert (=> b!6904472 (= lt!2467161 (lemmaExistCutMatchRandMatchRSpecEquivalent!2353 r1!6342 r2!6280 (_1!37042 lt!2467158)))))

(declare-fun isDefined!13354 (Option!16651) Bool)

(assert (=> b!6904472 (= (isDefined!13354 lt!2467160) (Exists!3880 lambda!392121))))

(declare-fun findConcatSeparation!3065 (Regex!16872 Regex!16872 List!66629 List!66629 List!66629) Option!16651)

(assert (=> b!6904472 (= lt!2467160 (findConcatSeparation!3065 r1!6342 r2!6280 Nil!66505 (_1!37042 lt!2467158) (_1!37042 lt!2467158)))))

(declare-fun lt!2467156 () Unit!160480)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2827 (Regex!16872 Regex!16872 List!66629) Unit!160480)

(assert (=> b!6904472 (= lt!2467156 (lemmaFindConcatSeparationEquivalentToExists!2827 r1!6342 r2!6280 (_1!37042 lt!2467158)))))

(declare-fun b!6904473 () Bool)

(declare-fun tp!1901073 () Bool)

(assert (=> b!6904473 (= e!4157676 tp!1901073)))

(declare-fun b!6904474 () Bool)

(declare-fun e!4157677 () Bool)

(declare-fun e!4157678 () Bool)

(assert (=> b!6904474 (= e!4157677 (not e!4157678))))

(declare-fun res!2815564 () Bool)

(assert (=> b!6904474 (=> res!2815564 e!4157678)))

(declare-fun lt!2467159 () Bool)

(assert (=> b!6904474 (= res!2815564 (not lt!2467159))))

(declare-fun lt!2467169 () Regex!16872)

(declare-fun matchRSpec!3935 (Regex!16872 List!66629) Bool)

(assert (=> b!6904474 (= (matchR!9017 lt!2467169 s!14361) (matchRSpec!3935 lt!2467169 s!14361))))

(declare-fun lt!2467162 () Unit!160480)

(declare-fun mainMatchTheorem!3935 (Regex!16872 List!66629) Unit!160480)

(assert (=> b!6904474 (= lt!2467162 (mainMatchTheorem!3935 lt!2467169 s!14361))))

(declare-fun lt!2467163 () Regex!16872)

(assert (=> b!6904474 (= lt!2467159 (matchRSpec!3935 lt!2467163 s!14361))))

(assert (=> b!6904474 (= lt!2467159 (matchR!9017 lt!2467163 s!14361))))

(declare-fun lt!2467166 () Unit!160480)

(assert (=> b!6904474 (= lt!2467166 (mainMatchTheorem!3935 lt!2467163 s!14361))))

(assert (=> b!6904474 (= lt!2467169 (Concat!25717 r1!6342 (Concat!25717 r2!6280 r3!135)))))

(assert (=> b!6904474 (= lt!2467163 (Concat!25717 lt!2467164 r3!135))))

(assert (=> b!6904474 (= lt!2467164 (Concat!25717 r1!6342 r2!6280))))

(declare-fun b!6904475 () Bool)

(assert (=> b!6904475 (= e!4157675 tp_is_empty!42969)))

(declare-fun b!6904476 () Bool)

(declare-fun res!2815560 () Bool)

(assert (=> b!6904476 (=> (not res!2815560) (not e!4157677))))

(declare-fun validRegex!8580 (Regex!16872) Bool)

(assert (=> b!6904476 (= res!2815560 (validRegex!8580 r2!6280))))

(declare-fun b!6904477 () Bool)

(declare-fun tp!1901079 () Bool)

(declare-fun tp!1901072 () Bool)

(assert (=> b!6904477 (= e!4157679 (and tp!1901079 tp!1901072))))

(declare-fun b!6904478 () Bool)

(declare-fun res!2815559 () Bool)

(assert (=> b!6904478 (=> (not res!2815559) (not e!4157677))))

(assert (=> b!6904478 (= res!2815559 (validRegex!8580 r3!135))))

(declare-fun b!6904479 () Bool)

(declare-fun tp!1901064 () Bool)

(declare-fun tp!1901068 () Bool)

(assert (=> b!6904479 (= e!4157675 (and tp!1901064 tp!1901068))))

(declare-fun b!6904480 () Bool)

(declare-fun tp!1901074 () Bool)

(declare-fun tp!1901069 () Bool)

(assert (=> b!6904480 (= e!4157676 (and tp!1901074 tp!1901069))))

(assert (=> b!6904470 (= e!4157678 e!4157681)))

(declare-fun res!2815561 () Bool)

(assert (=> b!6904470 (=> res!2815561 e!4157681)))

(declare-fun lt!2467157 () Bool)

(assert (=> b!6904470 (= res!2815561 (not lt!2467157))))

(assert (=> b!6904470 (= lt!2467157 (matchRSpec!3935 lt!2467164 (_1!37042 lt!2467158)))))

(assert (=> b!6904470 (= lt!2467157 (matchR!9017 lt!2467164 (_1!37042 lt!2467158)))))

(declare-fun lt!2467168 () Unit!160480)

(assert (=> b!6904470 (= lt!2467168 (mainMatchTheorem!3935 lt!2467164 (_1!37042 lt!2467158)))))

(declare-fun lt!2467167 () Option!16651)

(assert (=> b!6904470 (= lt!2467158 (get!23259 lt!2467167))))

(assert (=> b!6904470 (= (Exists!3880 lambda!392119) (Exists!3880 lambda!392120))))

(declare-fun lt!2467170 () Unit!160480)

(assert (=> b!6904470 (= lt!2467170 (lemmaExistCutMatchRandMatchRSpecEquivalent!2353 lt!2467164 r3!135 s!14361))))

(assert (=> b!6904470 (= (isDefined!13354 lt!2467167) (Exists!3880 lambda!392119))))

(assert (=> b!6904470 (= lt!2467167 (findConcatSeparation!3065 lt!2467164 r3!135 Nil!66505 s!14361 s!14361))))

(declare-fun lt!2467165 () Unit!160480)

(assert (=> b!6904470 (= lt!2467165 (lemmaFindConcatSeparationEquivalentToExists!2827 lt!2467164 r3!135 s!14361))))

(declare-fun res!2815562 () Bool)

(assert (=> start!664880 (=> (not res!2815562) (not e!4157677))))

(assert (=> start!664880 (= res!2815562 (validRegex!8580 r1!6342))))

(assert (=> start!664880 e!4157677))

(assert (=> start!664880 e!4157676))

(assert (=> start!664880 e!4157679))

(assert (=> start!664880 e!4157675))

(assert (=> start!664880 e!4157680))

(declare-fun b!6904481 () Bool)

(declare-fun tp!1901078 () Bool)

(declare-fun tp!1901075 () Bool)

(assert (=> b!6904481 (= e!4157679 (and tp!1901078 tp!1901075))))

(declare-fun b!6904482 () Bool)

(declare-fun tp!1901076 () Bool)

(declare-fun tp!1901067 () Bool)

(assert (=> b!6904482 (= e!4157675 (and tp!1901076 tp!1901067))))

(assert (= (and start!664880 res!2815562) b!6904476))

(assert (= (and b!6904476 res!2815560) b!6904478))

(assert (= (and b!6904478 res!2815559) b!6904474))

(assert (= (and b!6904474 (not res!2815564)) b!6904470))

(assert (= (and b!6904470 (not res!2815561)) b!6904465))

(assert (= (and b!6904465 (not res!2815563)) b!6904472))

(assert (= (and start!664880 (is-ElementMatch!16872 r1!6342)) b!6904468))

(assert (= (and start!664880 (is-Concat!25717 r1!6342)) b!6904471))

(assert (= (and start!664880 (is-Star!16872 r1!6342)) b!6904473))

(assert (= (and start!664880 (is-Union!16872 r1!6342)) b!6904480))

(assert (= (and start!664880 (is-ElementMatch!16872 r2!6280)) b!6904467))

(assert (= (and start!664880 (is-Concat!25717 r2!6280)) b!6904477))

(assert (= (and start!664880 (is-Star!16872 r2!6280)) b!6904469))

(assert (= (and start!664880 (is-Union!16872 r2!6280)) b!6904481))

(assert (= (and start!664880 (is-ElementMatch!16872 r3!135)) b!6904475))

(assert (= (and start!664880 (is-Concat!25717 r3!135)) b!6904482))

(assert (= (and start!664880 (is-Star!16872 r3!135)) b!6904466))

(assert (= (and start!664880 (is-Union!16872 r3!135)) b!6904479))

(assert (= (and start!664880 (is-Cons!66505 s!14361)) b!6904464))

(declare-fun m!7621516 () Bool)

(assert (=> b!6904476 m!7621516))

(declare-fun m!7621518 () Bool)

(assert (=> b!6904474 m!7621518))

(declare-fun m!7621520 () Bool)

(assert (=> b!6904474 m!7621520))

(declare-fun m!7621522 () Bool)

(assert (=> b!6904474 m!7621522))

(declare-fun m!7621524 () Bool)

(assert (=> b!6904474 m!7621524))

(declare-fun m!7621526 () Bool)

(assert (=> b!6904474 m!7621526))

(declare-fun m!7621528 () Bool)

(assert (=> b!6904474 m!7621528))

(declare-fun m!7621530 () Bool)

(assert (=> b!6904472 m!7621530))

(declare-fun m!7621532 () Bool)

(assert (=> b!6904472 m!7621532))

(declare-fun m!7621534 () Bool)

(assert (=> b!6904472 m!7621534))

(declare-fun m!7621536 () Bool)

(assert (=> b!6904472 m!7621536))

(declare-fun m!7621538 () Bool)

(assert (=> b!6904472 m!7621538))

(declare-fun m!7621540 () Bool)

(assert (=> b!6904472 m!7621540))

(declare-fun m!7621542 () Bool)

(assert (=> b!6904472 m!7621542))

(assert (=> b!6904472 m!7621534))

(declare-fun m!7621544 () Bool)

(assert (=> b!6904472 m!7621544))

(declare-fun m!7621546 () Bool)

(assert (=> start!664880 m!7621546))

(declare-fun m!7621548 () Bool)

(assert (=> b!6904465 m!7621548))

(declare-fun m!7621550 () Bool)

(assert (=> b!6904478 m!7621550))

(declare-fun m!7621552 () Bool)

(assert (=> b!6904470 m!7621552))

(declare-fun m!7621554 () Bool)

(assert (=> b!6904470 m!7621554))

(declare-fun m!7621556 () Bool)

(assert (=> b!6904470 m!7621556))

(declare-fun m!7621558 () Bool)

(assert (=> b!6904470 m!7621558))

(declare-fun m!7621560 () Bool)

(assert (=> b!6904470 m!7621560))

(declare-fun m!7621562 () Bool)

(assert (=> b!6904470 m!7621562))

(declare-fun m!7621564 () Bool)

(assert (=> b!6904470 m!7621564))

(declare-fun m!7621566 () Bool)

(assert (=> b!6904470 m!7621566))

(declare-fun m!7621568 () Bool)

(assert (=> b!6904470 m!7621568))

(assert (=> b!6904470 m!7621558))

(declare-fun m!7621570 () Bool)

(assert (=> b!6904470 m!7621570))

(push 1)

(assert (not b!6904466))

(assert tp_is_empty!42969)

(assert (not b!6904464))

(assert (not b!6904481))

(assert (not b!6904471))

(assert (not start!664880))

(assert (not b!6904477))

(assert (not b!6904478))

(assert (not b!6904465))

(assert (not b!6904469))

(assert (not b!6904472))

(assert (not b!6904480))

(assert (not b!6904479))

(assert (not b!6904473))

(assert (not b!6904474))

(assert (not b!6904470))

(assert (not b!6904476))

(assert (not b!6904482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6904602 () Bool)

(declare-fun e!4157733 () Bool)

(declare-fun call!627851 () Bool)

(assert (=> b!6904602 (= e!4157733 call!627851)))

(declare-fun bm!627845 () Bool)

(declare-fun call!627852 () Bool)

(assert (=> bm!627845 (= call!627851 call!627852)))

(declare-fun b!6904603 () Bool)

(declare-fun res!2815627 () Bool)

(declare-fun e!4157739 () Bool)

(assert (=> b!6904603 (=> (not res!2815627) (not e!4157739))))

(assert (=> b!6904603 (= res!2815627 call!627851)))

(declare-fun e!4157735 () Bool)

(assert (=> b!6904603 (= e!4157735 e!4157739)))

(declare-fun b!6904604 () Bool)

(declare-fun e!4157734 () Bool)

(declare-fun e!4157736 () Bool)

(assert (=> b!6904604 (= e!4157734 e!4157736)))

(declare-fun c!1282751 () Bool)

(assert (=> b!6904604 (= c!1282751 (is-Star!16872 r2!6280))))

(declare-fun b!6904605 () Bool)

(declare-fun e!4157738 () Bool)

(assert (=> b!6904605 (= e!4157738 call!627852)))

(declare-fun d!2162504 () Bool)

(declare-fun res!2815629 () Bool)

(assert (=> d!2162504 (=> res!2815629 e!4157734)))

(assert (=> d!2162504 (= res!2815629 (is-ElementMatch!16872 r2!6280))))

(assert (=> d!2162504 (= (validRegex!8580 r2!6280) e!4157734)))

(declare-fun b!6904606 () Bool)

(assert (=> b!6904606 (= e!4157736 e!4157738)))

(declare-fun res!2815625 () Bool)

(declare-fun nullable!6713 (Regex!16872) Bool)

(assert (=> b!6904606 (= res!2815625 (not (nullable!6713 (reg!17201 r2!6280))))))

(assert (=> b!6904606 (=> (not res!2815625) (not e!4157738))))

(declare-fun bm!627846 () Bool)

(declare-fun call!627850 () Bool)

(declare-fun c!1282750 () Bool)

(assert (=> bm!627846 (= call!627850 (validRegex!8580 (ite c!1282750 (regTwo!34257 r2!6280) (regOne!34256 r2!6280))))))

(declare-fun b!6904607 () Bool)

(assert (=> b!6904607 (= e!4157736 e!4157735)))

(assert (=> b!6904607 (= c!1282750 (is-Union!16872 r2!6280))))

(declare-fun b!6904608 () Bool)

(assert (=> b!6904608 (= e!4157739 call!627850)))

(declare-fun bm!627847 () Bool)

(assert (=> bm!627847 (= call!627852 (validRegex!8580 (ite c!1282751 (reg!17201 r2!6280) (ite c!1282750 (regOne!34257 r2!6280) (regTwo!34256 r2!6280)))))))

(declare-fun b!6904609 () Bool)

(declare-fun res!2815626 () Bool)

(declare-fun e!4157737 () Bool)

(assert (=> b!6904609 (=> res!2815626 e!4157737)))

(assert (=> b!6904609 (= res!2815626 (not (is-Concat!25717 r2!6280)))))

(assert (=> b!6904609 (= e!4157735 e!4157737)))

(declare-fun b!6904610 () Bool)

(assert (=> b!6904610 (= e!4157737 e!4157733)))

(declare-fun res!2815628 () Bool)

(assert (=> b!6904610 (=> (not res!2815628) (not e!4157733))))

(assert (=> b!6904610 (= res!2815628 call!627850)))

(assert (= (and d!2162504 (not res!2815629)) b!6904604))

(assert (= (and b!6904604 c!1282751) b!6904606))

(assert (= (and b!6904604 (not c!1282751)) b!6904607))

(assert (= (and b!6904606 res!2815625) b!6904605))

(assert (= (and b!6904607 c!1282750) b!6904603))

(assert (= (and b!6904607 (not c!1282750)) b!6904609))

(assert (= (and b!6904603 res!2815627) b!6904608))

(assert (= (and b!6904609 (not res!2815626)) b!6904610))

(assert (= (and b!6904610 res!2815628) b!6904602))

(assert (= (or b!6904603 b!6904602) bm!627845))

(assert (= (or b!6904608 b!6904610) bm!627846))

(assert (= (or b!6904605 bm!627845) bm!627847))

(declare-fun m!7621628 () Bool)

(assert (=> b!6904606 m!7621628))

(declare-fun m!7621630 () Bool)

(assert (=> bm!627846 m!7621630))

(declare-fun m!7621632 () Bool)

(assert (=> bm!627847 m!7621632))

(assert (=> b!6904476 d!2162504))

(declare-fun b!6904639 () Bool)

(declare-fun res!2815652 () Bool)

(declare-fun e!4157760 () Bool)

(assert (=> b!6904639 (=> res!2815652 e!4157760)))

(assert (=> b!6904639 (= res!2815652 (not (is-ElementMatch!16872 r3!135)))))

(declare-fun e!4157759 () Bool)

(assert (=> b!6904639 (= e!4157759 e!4157760)))

(declare-fun b!6904640 () Bool)

(declare-fun res!2815648 () Bool)

(declare-fun e!4157756 () Bool)

(assert (=> b!6904640 (=> res!2815648 e!4157756)))

(declare-fun isEmpty!38740 (List!66629) Bool)

(declare-fun tail!12897 (List!66629) List!66629)

(assert (=> b!6904640 (= res!2815648 (not (isEmpty!38740 (tail!12897 (_2!37042 lt!2467158)))))))

(declare-fun b!6904641 () Bool)

(declare-fun e!4157755 () Bool)

(assert (=> b!6904641 (= e!4157755 (nullable!6713 r3!135))))

(declare-fun b!6904642 () Bool)

(declare-fun e!4157754 () Bool)

(declare-fun lt!2467221 () Bool)

(declare-fun call!627855 () Bool)

(assert (=> b!6904642 (= e!4157754 (= lt!2467221 call!627855))))

(declare-fun b!6904643 () Bool)

(declare-fun res!2815647 () Bool)

(declare-fun e!4157757 () Bool)

(assert (=> b!6904643 (=> (not res!2815647) (not e!4157757))))

(assert (=> b!6904643 (= res!2815647 (not call!627855))))

(declare-fun b!6904644 () Bool)

(assert (=> b!6904644 (= e!4157759 (not lt!2467221))))

(declare-fun bm!627850 () Bool)

(assert (=> bm!627850 (= call!627855 (isEmpty!38740 (_2!37042 lt!2467158)))))

(declare-fun d!2162506 () Bool)

(assert (=> d!2162506 e!4157754))

(declare-fun c!1282759 () Bool)

(assert (=> d!2162506 (= c!1282759 (is-EmptyExpr!16872 r3!135))))

(assert (=> d!2162506 (= lt!2467221 e!4157755)))

(declare-fun c!1282758 () Bool)

(assert (=> d!2162506 (= c!1282758 (isEmpty!38740 (_2!37042 lt!2467158)))))

(assert (=> d!2162506 (validRegex!8580 r3!135)))

(assert (=> d!2162506 (= (matchR!9017 r3!135 (_2!37042 lt!2467158)) lt!2467221)))

(declare-fun b!6904645 () Bool)

(declare-fun res!2815649 () Bool)

(assert (=> b!6904645 (=> (not res!2815649) (not e!4157757))))

(assert (=> b!6904645 (= res!2815649 (isEmpty!38740 (tail!12897 (_2!37042 lt!2467158))))))

(declare-fun b!6904646 () Bool)

(declare-fun res!2815646 () Bool)

(assert (=> b!6904646 (=> res!2815646 e!4157760)))

(assert (=> b!6904646 (= res!2815646 e!4157757)))

(declare-fun res!2815650 () Bool)

(assert (=> b!6904646 (=> (not res!2815650) (not e!4157757))))

(assert (=> b!6904646 (= res!2815650 lt!2467221)))

(declare-fun b!6904647 () Bool)

(declare-fun derivativeStep!5392 (Regex!16872 C!34014) Regex!16872)

(declare-fun head!13845 (List!66629) C!34014)

(assert (=> b!6904647 (= e!4157755 (matchR!9017 (derivativeStep!5392 r3!135 (head!13845 (_2!37042 lt!2467158))) (tail!12897 (_2!37042 lt!2467158))))))

(declare-fun b!6904648 () Bool)

(declare-fun e!4157758 () Bool)

(assert (=> b!6904648 (= e!4157758 e!4157756)))

(declare-fun res!2815651 () Bool)

(assert (=> b!6904648 (=> res!2815651 e!4157756)))

(assert (=> b!6904648 (= res!2815651 call!627855)))

(declare-fun b!6904649 () Bool)

(assert (=> b!6904649 (= e!4157754 e!4157759)))

(declare-fun c!1282760 () Bool)

(assert (=> b!6904649 (= c!1282760 (is-EmptyLang!16872 r3!135))))

(declare-fun b!6904650 () Bool)

(assert (=> b!6904650 (= e!4157760 e!4157758)))

(declare-fun res!2815653 () Bool)

(assert (=> b!6904650 (=> (not res!2815653) (not e!4157758))))

(assert (=> b!6904650 (= res!2815653 (not lt!2467221))))

(declare-fun b!6904651 () Bool)

(assert (=> b!6904651 (= e!4157756 (not (= (head!13845 (_2!37042 lt!2467158)) (c!1282744 r3!135))))))

(declare-fun b!6904652 () Bool)

(assert (=> b!6904652 (= e!4157757 (= (head!13845 (_2!37042 lt!2467158)) (c!1282744 r3!135)))))

(assert (= (and d!2162506 c!1282758) b!6904641))

(assert (= (and d!2162506 (not c!1282758)) b!6904647))

(assert (= (and d!2162506 c!1282759) b!6904642))

(assert (= (and d!2162506 (not c!1282759)) b!6904649))

(assert (= (and b!6904649 c!1282760) b!6904644))

(assert (= (and b!6904649 (not c!1282760)) b!6904639))

(assert (= (and b!6904639 (not res!2815652)) b!6904646))

(assert (= (and b!6904646 res!2815650) b!6904643))

(assert (= (and b!6904643 res!2815647) b!6904645))

(assert (= (and b!6904645 res!2815649) b!6904652))

(assert (= (and b!6904646 (not res!2815646)) b!6904650))

(assert (= (and b!6904650 res!2815653) b!6904648))

(assert (= (and b!6904648 (not res!2815651)) b!6904640))

(assert (= (and b!6904640 (not res!2815648)) b!6904651))

(assert (= (or b!6904642 b!6904648 b!6904643) bm!627850))

(declare-fun m!7621640 () Bool)

(assert (=> b!6904652 m!7621640))

(declare-fun m!7621642 () Bool)

(assert (=> b!6904641 m!7621642))

(assert (=> b!6904647 m!7621640))

(assert (=> b!6904647 m!7621640))

(declare-fun m!7621644 () Bool)

(assert (=> b!6904647 m!7621644))

(declare-fun m!7621646 () Bool)

(assert (=> b!6904647 m!7621646))

(assert (=> b!6904647 m!7621644))

(assert (=> b!6904647 m!7621646))

(declare-fun m!7621648 () Bool)

(assert (=> b!6904647 m!7621648))

(assert (=> b!6904640 m!7621646))

(assert (=> b!6904640 m!7621646))

(declare-fun m!7621650 () Bool)

(assert (=> b!6904640 m!7621650))

(assert (=> b!6904651 m!7621640))

(declare-fun m!7621652 () Bool)

(assert (=> bm!627850 m!7621652))

(assert (=> b!6904645 m!7621646))

(assert (=> b!6904645 m!7621646))

(assert (=> b!6904645 m!7621650))

(assert (=> d!2162506 m!7621652))

(assert (=> d!2162506 m!7621550))

(assert (=> b!6904465 d!2162506))

(declare-fun d!2162510 () Bool)

(declare-fun isEmpty!38741 (Option!16651) Bool)

(assert (=> d!2162510 (= (isDefined!13354 lt!2467167) (not (isEmpty!38741 lt!2467167)))))

(declare-fun bs!1843281 () Bool)

(assert (= bs!1843281 d!2162510))

(declare-fun m!7621654 () Bool)

(assert (=> bs!1843281 m!7621654))

(assert (=> b!6904470 d!2162510))

(declare-fun d!2162512 () Bool)

(declare-fun choose!51412 (Int) Bool)

(assert (=> d!2162512 (= (Exists!3880 lambda!392119) (choose!51412 lambda!392119))))

(declare-fun bs!1843282 () Bool)

(assert (= bs!1843282 d!2162512))

(declare-fun m!7621656 () Bool)

(assert (=> bs!1843282 m!7621656))

(assert (=> b!6904470 d!2162512))

(declare-fun bs!1843287 () Bool)

(declare-fun b!6904691 () Bool)

(assert (= bs!1843287 (and b!6904691 b!6904470)))

(declare-fun lambda!392152 () Int)

(assert (=> bs!1843287 (not (= lambda!392152 lambda!392119))))

(assert (=> bs!1843287 (not (= lambda!392152 lambda!392120))))

(declare-fun bs!1843288 () Bool)

(assert (= bs!1843288 (and b!6904691 b!6904472)))

(assert (=> bs!1843288 (not (= lambda!392152 lambda!392121))))

(assert (=> bs!1843288 (not (= lambda!392152 lambda!392122))))

(assert (=> b!6904691 true))

(assert (=> b!6904691 true))

(declare-fun bs!1843289 () Bool)

(declare-fun b!6904698 () Bool)

(assert (= bs!1843289 (and b!6904698 b!6904470)))

(declare-fun lambda!392153 () Int)

(assert (=> bs!1843289 (not (= lambda!392153 lambda!392119))))

(declare-fun bs!1843290 () Bool)

(assert (= bs!1843290 (and b!6904698 b!6904691)))

(assert (=> bs!1843290 (not (= lambda!392153 lambda!392152))))

(assert (=> bs!1843289 (= (and (= (_1!37042 lt!2467158) s!14361) (= (regOne!34256 lt!2467164) lt!2467164) (= (regTwo!34256 lt!2467164) r3!135)) (= lambda!392153 lambda!392120))))

(declare-fun bs!1843291 () Bool)

(assert (= bs!1843291 (and b!6904698 b!6904472)))

(assert (=> bs!1843291 (= (and (= (regOne!34256 lt!2467164) r1!6342) (= (regTwo!34256 lt!2467164) r2!6280)) (= lambda!392153 lambda!392122))))

(assert (=> bs!1843291 (not (= lambda!392153 lambda!392121))))

(assert (=> b!6904698 true))

(assert (=> b!6904698 true))

(declare-fun b!6904689 () Bool)

(declare-fun e!4157781 () Bool)

(declare-fun e!4157782 () Bool)

(assert (=> b!6904689 (= e!4157781 e!4157782)))

(declare-fun res!2815675 () Bool)

(assert (=> b!6904689 (= res!2815675 (not (is-EmptyLang!16872 lt!2467164)))))

(assert (=> b!6904689 (=> (not res!2815675) (not e!4157782))))

(declare-fun b!6904690 () Bool)

(declare-fun e!4157784 () Bool)

(assert (=> b!6904690 (= e!4157784 (matchRSpec!3935 (regTwo!34257 lt!2467164) (_1!37042 lt!2467158)))))

(declare-fun c!1282772 () Bool)

(declare-fun call!627860 () Bool)

(declare-fun bm!627855 () Bool)

(assert (=> bm!627855 (= call!627860 (Exists!3880 (ite c!1282772 lambda!392152 lambda!392153)))))

(declare-fun e!4157786 () Bool)

(assert (=> b!6904691 (= e!4157786 call!627860)))

(declare-fun b!6904692 () Bool)

(declare-fun call!627861 () Bool)

(assert (=> b!6904692 (= e!4157781 call!627861)))

(declare-fun b!6904693 () Bool)

(declare-fun c!1282771 () Bool)

(assert (=> b!6904693 (= c!1282771 (is-ElementMatch!16872 lt!2467164))))

(declare-fun e!4157785 () Bool)

(assert (=> b!6904693 (= e!4157782 e!4157785)))

(declare-fun b!6904694 () Bool)

(declare-fun c!1282769 () Bool)

(assert (=> b!6904694 (= c!1282769 (is-Union!16872 lt!2467164))))

(declare-fun e!4157783 () Bool)

(assert (=> b!6904694 (= e!4157785 e!4157783)))

(declare-fun b!6904695 () Bool)

(assert (=> b!6904695 (= e!4157785 (= (_1!37042 lt!2467158) (Cons!66505 (c!1282744 lt!2467164) Nil!66505)))))

(declare-fun b!6904696 () Bool)

(declare-fun e!4157787 () Bool)

(assert (=> b!6904696 (= e!4157783 e!4157787)))

(assert (=> b!6904696 (= c!1282772 (is-Star!16872 lt!2467164))))

(declare-fun bm!627856 () Bool)

(assert (=> bm!627856 (= call!627861 (isEmpty!38740 (_1!37042 lt!2467158)))))

(declare-fun b!6904697 () Bool)

(declare-fun res!2815674 () Bool)

(assert (=> b!6904697 (=> res!2815674 e!4157786)))

(assert (=> b!6904697 (= res!2815674 call!627861)))

(assert (=> b!6904697 (= e!4157787 e!4157786)))

(assert (=> b!6904698 (= e!4157787 call!627860)))

(declare-fun d!2162514 () Bool)

(declare-fun c!1282770 () Bool)

(assert (=> d!2162514 (= c!1282770 (is-EmptyExpr!16872 lt!2467164))))

(assert (=> d!2162514 (= (matchRSpec!3935 lt!2467164 (_1!37042 lt!2467158)) e!4157781)))

(declare-fun b!6904699 () Bool)

(assert (=> b!6904699 (= e!4157783 e!4157784)))

(declare-fun res!2815676 () Bool)

(assert (=> b!6904699 (= res!2815676 (matchRSpec!3935 (regOne!34257 lt!2467164) (_1!37042 lt!2467158)))))

(assert (=> b!6904699 (=> res!2815676 e!4157784)))

(assert (= (and d!2162514 c!1282770) b!6904692))

(assert (= (and d!2162514 (not c!1282770)) b!6904689))

(assert (= (and b!6904689 res!2815675) b!6904693))

(assert (= (and b!6904693 c!1282771) b!6904695))

(assert (= (and b!6904693 (not c!1282771)) b!6904694))

(assert (= (and b!6904694 c!1282769) b!6904699))

(assert (= (and b!6904694 (not c!1282769)) b!6904696))

(assert (= (and b!6904699 (not res!2815676)) b!6904690))

(assert (= (and b!6904696 c!1282772) b!6904697))

(assert (= (and b!6904696 (not c!1282772)) b!6904698))

(assert (= (and b!6904697 (not res!2815674)) b!6904691))

(assert (= (or b!6904691 b!6904698) bm!627855))

(assert (= (or b!6904692 b!6904697) bm!627856))

(declare-fun m!7621664 () Bool)

(assert (=> b!6904690 m!7621664))

(declare-fun m!7621666 () Bool)

(assert (=> bm!627855 m!7621666))

(declare-fun m!7621668 () Bool)

(assert (=> bm!627856 m!7621668))

(declare-fun m!7621670 () Bool)

(assert (=> b!6904699 m!7621670))

(assert (=> b!6904470 d!2162514))

(declare-fun d!2162518 () Bool)

(assert (=> d!2162518 (= (get!23259 lt!2467167) (v!52922 lt!2467167))))

(assert (=> b!6904470 d!2162518))

(declare-fun b!6904724 () Bool)

(declare-fun e!4157805 () Bool)

(declare-fun lt!2467235 () Option!16651)

(declare-fun ++!14925 (List!66629 List!66629) List!66629)

(assert (=> b!6904724 (= e!4157805 (= (++!14925 (_1!37042 (get!23259 lt!2467235)) (_2!37042 (get!23259 lt!2467235))) s!14361))))

(declare-fun b!6904725 () Bool)

(declare-fun e!4157803 () Option!16651)

(assert (=> b!6904725 (= e!4157803 (Some!16650 (tuple2!67479 Nil!66505 s!14361)))))

(declare-fun b!6904726 () Bool)

(declare-fun res!2815693 () Bool)

(assert (=> b!6904726 (=> (not res!2815693) (not e!4157805))))

(assert (=> b!6904726 (= res!2815693 (matchR!9017 lt!2467164 (_1!37042 (get!23259 lt!2467235))))))

(declare-fun b!6904727 () Bool)

(declare-fun e!4157804 () Bool)

(assert (=> b!6904727 (= e!4157804 (matchR!9017 r3!135 s!14361))))

(declare-fun b!6904728 () Bool)

(declare-fun lt!2467234 () Unit!160480)

(declare-fun lt!2467233 () Unit!160480)

(assert (=> b!6904728 (= lt!2467234 lt!2467233)))

(assert (=> b!6904728 (= (++!14925 (++!14925 Nil!66505 (Cons!66505 (h!72953 s!14361) Nil!66505)) (t!380372 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2800 (List!66629 C!34014 List!66629 List!66629) Unit!160480)

(assert (=> b!6904728 (= lt!2467233 (lemmaMoveElementToOtherListKeepsConcatEq!2800 Nil!66505 (h!72953 s!14361) (t!380372 s!14361) s!14361))))

(declare-fun e!4157806 () Option!16651)

(assert (=> b!6904728 (= e!4157806 (findConcatSeparation!3065 lt!2467164 r3!135 (++!14925 Nil!66505 (Cons!66505 (h!72953 s!14361) Nil!66505)) (t!380372 s!14361) s!14361))))

(declare-fun b!6904729 () Bool)

(assert (=> b!6904729 (= e!4157806 None!16650)))

(declare-fun b!6904730 () Bool)

(assert (=> b!6904730 (= e!4157803 e!4157806)))

(declare-fun c!1282780 () Bool)

(assert (=> b!6904730 (= c!1282780 (is-Nil!66505 s!14361))))

(declare-fun b!6904731 () Bool)

(declare-fun res!2815690 () Bool)

(assert (=> b!6904731 (=> (not res!2815690) (not e!4157805))))

(assert (=> b!6904731 (= res!2815690 (matchR!9017 r3!135 (_2!37042 (get!23259 lt!2467235))))))

(declare-fun b!6904732 () Bool)

(declare-fun e!4157802 () Bool)

(assert (=> b!6904732 (= e!4157802 (not (isDefined!13354 lt!2467235)))))

(declare-fun d!2162520 () Bool)

(assert (=> d!2162520 e!4157802))

(declare-fun res!2815689 () Bool)

(assert (=> d!2162520 (=> res!2815689 e!4157802)))

(assert (=> d!2162520 (= res!2815689 e!4157805)))

(declare-fun res!2815691 () Bool)

(assert (=> d!2162520 (=> (not res!2815691) (not e!4157805))))

(assert (=> d!2162520 (= res!2815691 (isDefined!13354 lt!2467235))))

(assert (=> d!2162520 (= lt!2467235 e!4157803)))

(declare-fun c!1282779 () Bool)

(assert (=> d!2162520 (= c!1282779 e!4157804)))

(declare-fun res!2815692 () Bool)

(assert (=> d!2162520 (=> (not res!2815692) (not e!4157804))))

(assert (=> d!2162520 (= res!2815692 (matchR!9017 lt!2467164 Nil!66505))))

(assert (=> d!2162520 (validRegex!8580 lt!2467164)))

(assert (=> d!2162520 (= (findConcatSeparation!3065 lt!2467164 r3!135 Nil!66505 s!14361 s!14361) lt!2467235)))

(assert (= (and d!2162520 res!2815692) b!6904727))

(assert (= (and d!2162520 c!1282779) b!6904725))

(assert (= (and d!2162520 (not c!1282779)) b!6904730))

(assert (= (and b!6904730 c!1282780) b!6904729))

(assert (= (and b!6904730 (not c!1282780)) b!6904728))

(assert (= (and d!2162520 res!2815691) b!6904726))

(assert (= (and b!6904726 res!2815693) b!6904731))

(assert (= (and b!6904731 res!2815690) b!6904724))

(assert (= (and d!2162520 (not res!2815689)) b!6904732))

(declare-fun m!7621672 () Bool)

(assert (=> b!6904732 m!7621672))

(declare-fun m!7621674 () Bool)

(assert (=> b!6904727 m!7621674))

(declare-fun m!7621676 () Bool)

(assert (=> b!6904724 m!7621676))

(declare-fun m!7621678 () Bool)

(assert (=> b!6904724 m!7621678))

(declare-fun m!7621680 () Bool)

(assert (=> b!6904728 m!7621680))

(assert (=> b!6904728 m!7621680))

(declare-fun m!7621682 () Bool)

(assert (=> b!6904728 m!7621682))

(declare-fun m!7621684 () Bool)

(assert (=> b!6904728 m!7621684))

(assert (=> b!6904728 m!7621680))

(declare-fun m!7621686 () Bool)

(assert (=> b!6904728 m!7621686))

(assert (=> d!2162520 m!7621672))

(declare-fun m!7621688 () Bool)

(assert (=> d!2162520 m!7621688))

(declare-fun m!7621690 () Bool)

(assert (=> d!2162520 m!7621690))

(assert (=> b!6904731 m!7621676))

(declare-fun m!7621692 () Bool)

(assert (=> b!6904731 m!7621692))

(assert (=> b!6904726 m!7621676))

(declare-fun m!7621694 () Bool)

(assert (=> b!6904726 m!7621694))

(assert (=> b!6904470 d!2162520))

(declare-fun b!6904737 () Bool)

(declare-fun res!2815700 () Bool)

(declare-fun e!4157815 () Bool)

(assert (=> b!6904737 (=> res!2815700 e!4157815)))

(assert (=> b!6904737 (= res!2815700 (not (is-ElementMatch!16872 lt!2467164)))))

(declare-fun e!4157814 () Bool)

(assert (=> b!6904737 (= e!4157814 e!4157815)))

(declare-fun b!6904738 () Bool)

(declare-fun res!2815696 () Bool)

(declare-fun e!4157811 () Bool)

(assert (=> b!6904738 (=> res!2815696 e!4157811)))

(assert (=> b!6904738 (= res!2815696 (not (isEmpty!38740 (tail!12897 (_1!37042 lt!2467158)))))))

(declare-fun b!6904739 () Bool)

(declare-fun e!4157810 () Bool)

(assert (=> b!6904739 (= e!4157810 (nullable!6713 lt!2467164))))

(declare-fun b!6904740 () Bool)

(declare-fun e!4157809 () Bool)

(declare-fun lt!2467240 () Bool)

(declare-fun call!627862 () Bool)

(assert (=> b!6904740 (= e!4157809 (= lt!2467240 call!627862))))

(declare-fun b!6904741 () Bool)

(declare-fun res!2815695 () Bool)

(declare-fun e!4157812 () Bool)

(assert (=> b!6904741 (=> (not res!2815695) (not e!4157812))))

(assert (=> b!6904741 (= res!2815695 (not call!627862))))

(declare-fun b!6904742 () Bool)

(assert (=> b!6904742 (= e!4157814 (not lt!2467240))))

(declare-fun bm!627857 () Bool)

(assert (=> bm!627857 (= call!627862 (isEmpty!38740 (_1!37042 lt!2467158)))))

(declare-fun d!2162522 () Bool)

(assert (=> d!2162522 e!4157809))

(declare-fun c!1282784 () Bool)

(assert (=> d!2162522 (= c!1282784 (is-EmptyExpr!16872 lt!2467164))))

(assert (=> d!2162522 (= lt!2467240 e!4157810)))

(declare-fun c!1282783 () Bool)

(assert (=> d!2162522 (= c!1282783 (isEmpty!38740 (_1!37042 lt!2467158)))))

(assert (=> d!2162522 (validRegex!8580 lt!2467164)))

(assert (=> d!2162522 (= (matchR!9017 lt!2467164 (_1!37042 lt!2467158)) lt!2467240)))

(declare-fun b!6904743 () Bool)

(declare-fun res!2815697 () Bool)

(assert (=> b!6904743 (=> (not res!2815697) (not e!4157812))))

(assert (=> b!6904743 (= res!2815697 (isEmpty!38740 (tail!12897 (_1!37042 lt!2467158))))))

(declare-fun b!6904744 () Bool)

(declare-fun res!2815694 () Bool)

(assert (=> b!6904744 (=> res!2815694 e!4157815)))

(assert (=> b!6904744 (= res!2815694 e!4157812)))

(declare-fun res!2815698 () Bool)

(assert (=> b!6904744 (=> (not res!2815698) (not e!4157812))))

(assert (=> b!6904744 (= res!2815698 lt!2467240)))

(declare-fun b!6904745 () Bool)

(assert (=> b!6904745 (= e!4157810 (matchR!9017 (derivativeStep!5392 lt!2467164 (head!13845 (_1!37042 lt!2467158))) (tail!12897 (_1!37042 lt!2467158))))))

(declare-fun b!6904746 () Bool)

(declare-fun e!4157813 () Bool)

(assert (=> b!6904746 (= e!4157813 e!4157811)))

(declare-fun res!2815699 () Bool)

(assert (=> b!6904746 (=> res!2815699 e!4157811)))

(assert (=> b!6904746 (= res!2815699 call!627862)))

(declare-fun b!6904747 () Bool)

(assert (=> b!6904747 (= e!4157809 e!4157814)))

(declare-fun c!1282785 () Bool)

(assert (=> b!6904747 (= c!1282785 (is-EmptyLang!16872 lt!2467164))))

(declare-fun b!6904748 () Bool)

(assert (=> b!6904748 (= e!4157815 e!4157813)))

(declare-fun res!2815701 () Bool)

(assert (=> b!6904748 (=> (not res!2815701) (not e!4157813))))

(assert (=> b!6904748 (= res!2815701 (not lt!2467240))))

(declare-fun b!6904749 () Bool)

(assert (=> b!6904749 (= e!4157811 (not (= (head!13845 (_1!37042 lt!2467158)) (c!1282744 lt!2467164))))))

(declare-fun b!6904750 () Bool)

(assert (=> b!6904750 (= e!4157812 (= (head!13845 (_1!37042 lt!2467158)) (c!1282744 lt!2467164)))))

(assert (= (and d!2162522 c!1282783) b!6904739))

(assert (= (and d!2162522 (not c!1282783)) b!6904745))

(assert (= (and d!2162522 c!1282784) b!6904740))

(assert (= (and d!2162522 (not c!1282784)) b!6904747))

(assert (= (and b!6904747 c!1282785) b!6904742))

(assert (= (and b!6904747 (not c!1282785)) b!6904737))

(assert (= (and b!6904737 (not res!2815700)) b!6904744))

(assert (= (and b!6904744 res!2815698) b!6904741))

(assert (= (and b!6904741 res!2815695) b!6904743))

(assert (= (and b!6904743 res!2815697) b!6904750))

(assert (= (and b!6904744 (not res!2815694)) b!6904748))

(assert (= (and b!6904748 res!2815701) b!6904746))

(assert (= (and b!6904746 (not res!2815699)) b!6904738))

(assert (= (and b!6904738 (not res!2815696)) b!6904749))

(assert (= (or b!6904740 b!6904746 b!6904741) bm!627857))

(declare-fun m!7621696 () Bool)

(assert (=> b!6904750 m!7621696))

(declare-fun m!7621698 () Bool)

(assert (=> b!6904739 m!7621698))

(assert (=> b!6904745 m!7621696))

(assert (=> b!6904745 m!7621696))

(declare-fun m!7621700 () Bool)

(assert (=> b!6904745 m!7621700))

(declare-fun m!7621702 () Bool)

(assert (=> b!6904745 m!7621702))

(assert (=> b!6904745 m!7621700))

(assert (=> b!6904745 m!7621702))

(declare-fun m!7621704 () Bool)

(assert (=> b!6904745 m!7621704))

(assert (=> b!6904738 m!7621702))

(assert (=> b!6904738 m!7621702))

(declare-fun m!7621706 () Bool)

(assert (=> b!6904738 m!7621706))

(assert (=> b!6904749 m!7621696))

(assert (=> bm!627857 m!7621668))

(assert (=> b!6904743 m!7621702))

(assert (=> b!6904743 m!7621702))

(assert (=> b!6904743 m!7621706))

(assert (=> d!2162522 m!7621668))

(assert (=> d!2162522 m!7621690))

(assert (=> b!6904470 d!2162522))

(declare-fun bs!1843292 () Bool)

(declare-fun d!2162524 () Bool)

(assert (= bs!1843292 (and d!2162524 b!6904470)))

(declare-fun lambda!392156 () Int)

(assert (=> bs!1843292 (= lambda!392156 lambda!392119)))

(declare-fun bs!1843293 () Bool)

(assert (= bs!1843293 (and d!2162524 b!6904698)))

(assert (=> bs!1843293 (not (= lambda!392156 lambda!392153))))

(declare-fun bs!1843294 () Bool)

(assert (= bs!1843294 (and d!2162524 b!6904691)))

(assert (=> bs!1843294 (not (= lambda!392156 lambda!392152))))

(assert (=> bs!1843292 (not (= lambda!392156 lambda!392120))))

(declare-fun bs!1843295 () Bool)

(assert (= bs!1843295 (and d!2162524 b!6904472)))

(assert (=> bs!1843295 (not (= lambda!392156 lambda!392122))))

(assert (=> bs!1843295 (= (and (= s!14361 (_1!37042 lt!2467158)) (= lt!2467164 r1!6342) (= r3!135 r2!6280)) (= lambda!392156 lambda!392121))))

(assert (=> d!2162524 true))

(assert (=> d!2162524 true))

(assert (=> d!2162524 true))

(assert (=> d!2162524 (= (isDefined!13354 (findConcatSeparation!3065 lt!2467164 r3!135 Nil!66505 s!14361 s!14361)) (Exists!3880 lambda!392156))))

(declare-fun lt!2467246 () Unit!160480)

(declare-fun choose!51414 (Regex!16872 Regex!16872 List!66629) Unit!160480)

(assert (=> d!2162524 (= lt!2467246 (choose!51414 lt!2467164 r3!135 s!14361))))

(assert (=> d!2162524 (validRegex!8580 lt!2467164)))

(assert (=> d!2162524 (= (lemmaFindConcatSeparationEquivalentToExists!2827 lt!2467164 r3!135 s!14361) lt!2467246)))

(declare-fun bs!1843296 () Bool)

(assert (= bs!1843296 d!2162524))

(declare-fun m!7621708 () Bool)

(assert (=> bs!1843296 m!7621708))

(assert (=> bs!1843296 m!7621570))

(assert (=> bs!1843296 m!7621570))

(declare-fun m!7621710 () Bool)

(assert (=> bs!1843296 m!7621710))

(assert (=> bs!1843296 m!7621690))

(declare-fun m!7621712 () Bool)

(assert (=> bs!1843296 m!7621712))

(assert (=> b!6904470 d!2162524))

(declare-fun bs!1843298 () Bool)

(declare-fun d!2162526 () Bool)

(assert (= bs!1843298 (and d!2162526 b!6904470)))

(declare-fun lambda!392161 () Int)

(assert (=> bs!1843298 (= lambda!392161 lambda!392119)))

(declare-fun bs!1843299 () Bool)

(assert (= bs!1843299 (and d!2162526 b!6904698)))

(assert (=> bs!1843299 (not (= lambda!392161 lambda!392153))))

(declare-fun bs!1843300 () Bool)

(assert (= bs!1843300 (and d!2162526 b!6904691)))

(assert (=> bs!1843300 (not (= lambda!392161 lambda!392152))))

(assert (=> bs!1843298 (not (= lambda!392161 lambda!392120))))

(declare-fun bs!1843301 () Bool)

(assert (= bs!1843301 (and d!2162526 d!2162524)))

(assert (=> bs!1843301 (= lambda!392161 lambda!392156)))

(declare-fun bs!1843302 () Bool)

(assert (= bs!1843302 (and d!2162526 b!6904472)))

(assert (=> bs!1843302 (not (= lambda!392161 lambda!392122))))

(assert (=> bs!1843302 (= (and (= s!14361 (_1!37042 lt!2467158)) (= lt!2467164 r1!6342) (= r3!135 r2!6280)) (= lambda!392161 lambda!392121))))

(assert (=> d!2162526 true))

(assert (=> d!2162526 true))

(assert (=> d!2162526 true))

(declare-fun lambda!392162 () Int)

(assert (=> bs!1843298 (not (= lambda!392162 lambda!392119))))

(assert (=> bs!1843299 (= (and (= s!14361 (_1!37042 lt!2467158)) (= lt!2467164 (regOne!34256 lt!2467164)) (= r3!135 (regTwo!34256 lt!2467164))) (= lambda!392162 lambda!392153))))

(declare-fun bs!1843303 () Bool)

(assert (= bs!1843303 d!2162526))

(assert (=> bs!1843303 (not (= lambda!392162 lambda!392161))))

(assert (=> bs!1843300 (not (= lambda!392162 lambda!392152))))

(assert (=> bs!1843298 (= lambda!392162 lambda!392120)))

(assert (=> bs!1843301 (not (= lambda!392162 lambda!392156))))

(assert (=> bs!1843302 (= (and (= s!14361 (_1!37042 lt!2467158)) (= lt!2467164 r1!6342) (= r3!135 r2!6280)) (= lambda!392162 lambda!392122))))

(assert (=> bs!1843302 (not (= lambda!392162 lambda!392121))))

(assert (=> d!2162526 true))

(assert (=> d!2162526 true))

(assert (=> d!2162526 true))

(assert (=> d!2162526 (= (Exists!3880 lambda!392161) (Exists!3880 lambda!392162))))

(declare-fun lt!2467249 () Unit!160480)

(declare-fun choose!51416 (Regex!16872 Regex!16872 List!66629) Unit!160480)

(assert (=> d!2162526 (= lt!2467249 (choose!51416 lt!2467164 r3!135 s!14361))))

(assert (=> d!2162526 (validRegex!8580 lt!2467164)))

(assert (=> d!2162526 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2353 lt!2467164 r3!135 s!14361) lt!2467249)))

(declare-fun m!7621738 () Bool)

(assert (=> bs!1843303 m!7621738))

(declare-fun m!7621740 () Bool)

(assert (=> bs!1843303 m!7621740))

(declare-fun m!7621742 () Bool)

(assert (=> bs!1843303 m!7621742))

(assert (=> bs!1843303 m!7621690))

(assert (=> b!6904470 d!2162526))

(declare-fun d!2162532 () Bool)

(assert (=> d!2162532 (= (matchR!9017 lt!2467164 (_1!37042 lt!2467158)) (matchRSpec!3935 lt!2467164 (_1!37042 lt!2467158)))))

(declare-fun lt!2467254 () Unit!160480)

(declare-fun choose!51417 (Regex!16872 List!66629) Unit!160480)

(assert (=> d!2162532 (= lt!2467254 (choose!51417 lt!2467164 (_1!37042 lt!2467158)))))

(assert (=> d!2162532 (validRegex!8580 lt!2467164)))

(assert (=> d!2162532 (= (mainMatchTheorem!3935 lt!2467164 (_1!37042 lt!2467158)) lt!2467254)))

(declare-fun bs!1843304 () Bool)

(assert (= bs!1843304 d!2162532))

(assert (=> bs!1843304 m!7621554))

(assert (=> bs!1843304 m!7621552))

(declare-fun m!7621744 () Bool)

(assert (=> bs!1843304 m!7621744))

(assert (=> bs!1843304 m!7621690))

(assert (=> b!6904470 d!2162532))

(declare-fun d!2162534 () Bool)

(assert (=> d!2162534 (= (Exists!3880 lambda!392120) (choose!51412 lambda!392120))))

(declare-fun bs!1843305 () Bool)

(assert (= bs!1843305 d!2162534))

(declare-fun m!7621746 () Bool)

(assert (=> bs!1843305 m!7621746))

(assert (=> b!6904470 d!2162534))

(declare-fun b!6904808 () Bool)

(declare-fun res!2815749 () Bool)

(declare-fun e!4157851 () Bool)

(assert (=> b!6904808 (=> res!2815749 e!4157851)))

(assert (=> b!6904808 (= res!2815749 (not (is-ElementMatch!16872 lt!2467169)))))

(declare-fun e!4157850 () Bool)

(assert (=> b!6904808 (= e!4157850 e!4157851)))

(declare-fun b!6904809 () Bool)

(declare-fun res!2815745 () Bool)

(declare-fun e!4157847 () Bool)

(assert (=> b!6904809 (=> res!2815745 e!4157847)))

(assert (=> b!6904809 (= res!2815745 (not (isEmpty!38740 (tail!12897 s!14361))))))

(declare-fun b!6904810 () Bool)

(declare-fun e!4157846 () Bool)

(assert (=> b!6904810 (= e!4157846 (nullable!6713 lt!2467169))))

(declare-fun b!6904811 () Bool)

(declare-fun e!4157845 () Bool)

(declare-fun lt!2467255 () Bool)

(declare-fun call!627863 () Bool)

(assert (=> b!6904811 (= e!4157845 (= lt!2467255 call!627863))))

(declare-fun b!6904812 () Bool)

(declare-fun res!2815744 () Bool)

(declare-fun e!4157848 () Bool)

(assert (=> b!6904812 (=> (not res!2815744) (not e!4157848))))

(assert (=> b!6904812 (= res!2815744 (not call!627863))))

(declare-fun b!6904813 () Bool)

(assert (=> b!6904813 (= e!4157850 (not lt!2467255))))

(declare-fun bm!627858 () Bool)

(assert (=> bm!627858 (= call!627863 (isEmpty!38740 s!14361))))

(declare-fun d!2162536 () Bool)

(assert (=> d!2162536 e!4157845))

(declare-fun c!1282795 () Bool)

(assert (=> d!2162536 (= c!1282795 (is-EmptyExpr!16872 lt!2467169))))

(assert (=> d!2162536 (= lt!2467255 e!4157846)))

(declare-fun c!1282794 () Bool)

(assert (=> d!2162536 (= c!1282794 (isEmpty!38740 s!14361))))

(assert (=> d!2162536 (validRegex!8580 lt!2467169)))

(assert (=> d!2162536 (= (matchR!9017 lt!2467169 s!14361) lt!2467255)))

(declare-fun b!6904814 () Bool)

(declare-fun res!2815746 () Bool)

(assert (=> b!6904814 (=> (not res!2815746) (not e!4157848))))

(assert (=> b!6904814 (= res!2815746 (isEmpty!38740 (tail!12897 s!14361)))))

(declare-fun b!6904815 () Bool)

(declare-fun res!2815743 () Bool)

(assert (=> b!6904815 (=> res!2815743 e!4157851)))

(assert (=> b!6904815 (= res!2815743 e!4157848)))

(declare-fun res!2815747 () Bool)

(assert (=> b!6904815 (=> (not res!2815747) (not e!4157848))))

(assert (=> b!6904815 (= res!2815747 lt!2467255)))

(declare-fun b!6904816 () Bool)

(assert (=> b!6904816 (= e!4157846 (matchR!9017 (derivativeStep!5392 lt!2467169 (head!13845 s!14361)) (tail!12897 s!14361)))))

(declare-fun b!6904817 () Bool)

(declare-fun e!4157849 () Bool)

(assert (=> b!6904817 (= e!4157849 e!4157847)))

(declare-fun res!2815748 () Bool)

(assert (=> b!6904817 (=> res!2815748 e!4157847)))

(assert (=> b!6904817 (= res!2815748 call!627863)))

(declare-fun b!6904818 () Bool)

(assert (=> b!6904818 (= e!4157845 e!4157850)))

(declare-fun c!1282796 () Bool)

(assert (=> b!6904818 (= c!1282796 (is-EmptyLang!16872 lt!2467169))))

(declare-fun b!6904819 () Bool)

(assert (=> b!6904819 (= e!4157851 e!4157849)))

(declare-fun res!2815750 () Bool)

(assert (=> b!6904819 (=> (not res!2815750) (not e!4157849))))

(assert (=> b!6904819 (= res!2815750 (not lt!2467255))))

(declare-fun b!6904820 () Bool)

(assert (=> b!6904820 (= e!4157847 (not (= (head!13845 s!14361) (c!1282744 lt!2467169))))))

(declare-fun b!6904821 () Bool)

(assert (=> b!6904821 (= e!4157848 (= (head!13845 s!14361) (c!1282744 lt!2467169)))))

(assert (= (and d!2162536 c!1282794) b!6904810))

(assert (= (and d!2162536 (not c!1282794)) b!6904816))

(assert (= (and d!2162536 c!1282795) b!6904811))

(assert (= (and d!2162536 (not c!1282795)) b!6904818))

(assert (= (and b!6904818 c!1282796) b!6904813))

(assert (= (and b!6904818 (not c!1282796)) b!6904808))

(assert (= (and b!6904808 (not res!2815749)) b!6904815))

(assert (= (and b!6904815 res!2815747) b!6904812))

(assert (= (and b!6904812 res!2815744) b!6904814))

(assert (= (and b!6904814 res!2815746) b!6904821))

(assert (= (and b!6904815 (not res!2815743)) b!6904819))

(assert (= (and b!6904819 res!2815750) b!6904817))

(assert (= (and b!6904817 (not res!2815748)) b!6904809))

(assert (= (and b!6904809 (not res!2815745)) b!6904820))

(assert (= (or b!6904811 b!6904817 b!6904812) bm!627858))

(declare-fun m!7621748 () Bool)

(assert (=> b!6904821 m!7621748))

(declare-fun m!7621750 () Bool)

(assert (=> b!6904810 m!7621750))

(assert (=> b!6904816 m!7621748))

(assert (=> b!6904816 m!7621748))

(declare-fun m!7621752 () Bool)

(assert (=> b!6904816 m!7621752))

(declare-fun m!7621754 () Bool)

(assert (=> b!6904816 m!7621754))

(assert (=> b!6904816 m!7621752))

(assert (=> b!6904816 m!7621754))

(declare-fun m!7621756 () Bool)

(assert (=> b!6904816 m!7621756))

(assert (=> b!6904809 m!7621754))

(assert (=> b!6904809 m!7621754))

(declare-fun m!7621758 () Bool)

(assert (=> b!6904809 m!7621758))

(assert (=> b!6904820 m!7621748))

(declare-fun m!7621760 () Bool)

(assert (=> bm!627858 m!7621760))

(assert (=> b!6904814 m!7621754))

(assert (=> b!6904814 m!7621754))

(assert (=> b!6904814 m!7621758))

(assert (=> d!2162536 m!7621760))

(declare-fun m!7621762 () Bool)

(assert (=> d!2162536 m!7621762))

(assert (=> b!6904474 d!2162536))

(declare-fun d!2162538 () Bool)

(assert (=> d!2162538 (= (matchR!9017 lt!2467169 s!14361) (matchRSpec!3935 lt!2467169 s!14361))))

(declare-fun lt!2467256 () Unit!160480)

(assert (=> d!2162538 (= lt!2467256 (choose!51417 lt!2467169 s!14361))))

(assert (=> d!2162538 (validRegex!8580 lt!2467169)))

(assert (=> d!2162538 (= (mainMatchTheorem!3935 lt!2467169 s!14361) lt!2467256)))

(declare-fun bs!1843306 () Bool)

(assert (= bs!1843306 d!2162538))

(assert (=> bs!1843306 m!7621528))

(assert (=> bs!1843306 m!7621518))

(declare-fun m!7621764 () Bool)

(assert (=> bs!1843306 m!7621764))

(assert (=> bs!1843306 m!7621762))

(assert (=> b!6904474 d!2162538))

(declare-fun bs!1843307 () Bool)

(declare-fun b!6904824 () Bool)

(assert (= bs!1843307 (and b!6904824 b!6904470)))

(declare-fun lambda!392163 () Int)

(assert (=> bs!1843307 (not (= lambda!392163 lambda!392119))))

(declare-fun bs!1843308 () Bool)

(assert (= bs!1843308 (and b!6904824 b!6904698)))

(assert (=> bs!1843308 (not (= lambda!392163 lambda!392153))))

(declare-fun bs!1843309 () Bool)

(assert (= bs!1843309 (and b!6904824 d!2162526)))

(assert (=> bs!1843309 (not (= lambda!392163 lambda!392161))))

(declare-fun bs!1843310 () Bool)

(assert (= bs!1843310 (and b!6904824 b!6904691)))

(assert (=> bs!1843310 (= (and (= s!14361 (_1!37042 lt!2467158)) (= (reg!17201 lt!2467163) (reg!17201 lt!2467164)) (= lt!2467163 lt!2467164)) (= lambda!392163 lambda!392152))))

(assert (=> bs!1843307 (not (= lambda!392163 lambda!392120))))

(declare-fun bs!1843311 () Bool)

(assert (= bs!1843311 (and b!6904824 d!2162524)))

(assert (=> bs!1843311 (not (= lambda!392163 lambda!392156))))

(assert (=> bs!1843309 (not (= lambda!392163 lambda!392162))))

(declare-fun bs!1843312 () Bool)

(assert (= bs!1843312 (and b!6904824 b!6904472)))

(assert (=> bs!1843312 (not (= lambda!392163 lambda!392122))))

(assert (=> bs!1843312 (not (= lambda!392163 lambda!392121))))

(assert (=> b!6904824 true))

(assert (=> b!6904824 true))

(declare-fun bs!1843313 () Bool)

(declare-fun b!6904831 () Bool)

(assert (= bs!1843313 (and b!6904831 b!6904470)))

(declare-fun lambda!392164 () Int)

(assert (=> bs!1843313 (not (= lambda!392164 lambda!392119))))

(declare-fun bs!1843314 () Bool)

(assert (= bs!1843314 (and b!6904831 b!6904698)))

(assert (=> bs!1843314 (= (and (= s!14361 (_1!37042 lt!2467158)) (= (regOne!34256 lt!2467163) (regOne!34256 lt!2467164)) (= (regTwo!34256 lt!2467163) (regTwo!34256 lt!2467164))) (= lambda!392164 lambda!392153))))

(declare-fun bs!1843315 () Bool)

(assert (= bs!1843315 (and b!6904831 d!2162526)))

(assert (=> bs!1843315 (not (= lambda!392164 lambda!392161))))

(declare-fun bs!1843316 () Bool)

(assert (= bs!1843316 (and b!6904831 b!6904691)))

(assert (=> bs!1843316 (not (= lambda!392164 lambda!392152))))

(declare-fun bs!1843317 () Bool)

(assert (= bs!1843317 (and b!6904831 b!6904824)))

(assert (=> bs!1843317 (not (= lambda!392164 lambda!392163))))

(assert (=> bs!1843313 (= (and (= (regOne!34256 lt!2467163) lt!2467164) (= (regTwo!34256 lt!2467163) r3!135)) (= lambda!392164 lambda!392120))))

(declare-fun bs!1843318 () Bool)

(assert (= bs!1843318 (and b!6904831 d!2162524)))

(assert (=> bs!1843318 (not (= lambda!392164 lambda!392156))))

(assert (=> bs!1843315 (= (and (= (regOne!34256 lt!2467163) lt!2467164) (= (regTwo!34256 lt!2467163) r3!135)) (= lambda!392164 lambda!392162))))

(declare-fun bs!1843319 () Bool)

(assert (= bs!1843319 (and b!6904831 b!6904472)))

(assert (=> bs!1843319 (= (and (= s!14361 (_1!37042 lt!2467158)) (= (regOne!34256 lt!2467163) r1!6342) (= (regTwo!34256 lt!2467163) r2!6280)) (= lambda!392164 lambda!392122))))

(assert (=> bs!1843319 (not (= lambda!392164 lambda!392121))))

(assert (=> b!6904831 true))

(assert (=> b!6904831 true))

(declare-fun b!6904822 () Bool)

(declare-fun e!4157852 () Bool)

(declare-fun e!4157853 () Bool)

(assert (=> b!6904822 (= e!4157852 e!4157853)))

(declare-fun res!2815752 () Bool)

(assert (=> b!6904822 (= res!2815752 (not (is-EmptyLang!16872 lt!2467163)))))

(assert (=> b!6904822 (=> (not res!2815752) (not e!4157853))))

(declare-fun b!6904823 () Bool)

(declare-fun e!4157855 () Bool)

(assert (=> b!6904823 (= e!4157855 (matchRSpec!3935 (regTwo!34257 lt!2467163) s!14361))))

(declare-fun bm!627861 () Bool)

(declare-fun c!1282800 () Bool)

(declare-fun call!627866 () Bool)

(assert (=> bm!627861 (= call!627866 (Exists!3880 (ite c!1282800 lambda!392163 lambda!392164)))))

(declare-fun e!4157857 () Bool)

(assert (=> b!6904824 (= e!4157857 call!627866)))

(declare-fun b!6904825 () Bool)

(declare-fun call!627867 () Bool)

(assert (=> b!6904825 (= e!4157852 call!627867)))

(declare-fun b!6904826 () Bool)

(declare-fun c!1282799 () Bool)

(assert (=> b!6904826 (= c!1282799 (is-ElementMatch!16872 lt!2467163))))

(declare-fun e!4157856 () Bool)

(assert (=> b!6904826 (= e!4157853 e!4157856)))

(declare-fun b!6904827 () Bool)

(declare-fun c!1282797 () Bool)

(assert (=> b!6904827 (= c!1282797 (is-Union!16872 lt!2467163))))

(declare-fun e!4157854 () Bool)

(assert (=> b!6904827 (= e!4157856 e!4157854)))

(declare-fun b!6904828 () Bool)

(assert (=> b!6904828 (= e!4157856 (= s!14361 (Cons!66505 (c!1282744 lt!2467163) Nil!66505)))))

(declare-fun b!6904829 () Bool)

(declare-fun e!4157858 () Bool)

(assert (=> b!6904829 (= e!4157854 e!4157858)))

(assert (=> b!6904829 (= c!1282800 (is-Star!16872 lt!2467163))))

(declare-fun bm!627862 () Bool)

(assert (=> bm!627862 (= call!627867 (isEmpty!38740 s!14361))))

(declare-fun b!6904830 () Bool)

(declare-fun res!2815751 () Bool)

(assert (=> b!6904830 (=> res!2815751 e!4157857)))

(assert (=> b!6904830 (= res!2815751 call!627867)))

(assert (=> b!6904830 (= e!4157858 e!4157857)))

(assert (=> b!6904831 (= e!4157858 call!627866)))

(declare-fun d!2162540 () Bool)

(declare-fun c!1282798 () Bool)

(assert (=> d!2162540 (= c!1282798 (is-EmptyExpr!16872 lt!2467163))))

(assert (=> d!2162540 (= (matchRSpec!3935 lt!2467163 s!14361) e!4157852)))

(declare-fun b!6904832 () Bool)

(assert (=> b!6904832 (= e!4157854 e!4157855)))

(declare-fun res!2815753 () Bool)

(assert (=> b!6904832 (= res!2815753 (matchRSpec!3935 (regOne!34257 lt!2467163) s!14361))))

(assert (=> b!6904832 (=> res!2815753 e!4157855)))

(assert (= (and d!2162540 c!1282798) b!6904825))

(assert (= (and d!2162540 (not c!1282798)) b!6904822))

(assert (= (and b!6904822 res!2815752) b!6904826))

(assert (= (and b!6904826 c!1282799) b!6904828))

(assert (= (and b!6904826 (not c!1282799)) b!6904827))

(assert (= (and b!6904827 c!1282797) b!6904832))

(assert (= (and b!6904827 (not c!1282797)) b!6904829))

(assert (= (and b!6904832 (not res!2815753)) b!6904823))

(assert (= (and b!6904829 c!1282800) b!6904830))

(assert (= (and b!6904829 (not c!1282800)) b!6904831))

(assert (= (and b!6904830 (not res!2815751)) b!6904824))

(assert (= (or b!6904824 b!6904831) bm!627861))

(assert (= (or b!6904825 b!6904830) bm!627862))

(declare-fun m!7621766 () Bool)

(assert (=> b!6904823 m!7621766))

(declare-fun m!7621768 () Bool)

(assert (=> bm!627861 m!7621768))

(assert (=> bm!627862 m!7621760))

(declare-fun m!7621770 () Bool)

(assert (=> b!6904832 m!7621770))

(assert (=> b!6904474 d!2162540))

(declare-fun b!6904833 () Bool)

(declare-fun res!2815760 () Bool)

(declare-fun e!4157865 () Bool)

(assert (=> b!6904833 (=> res!2815760 e!4157865)))

(assert (=> b!6904833 (= res!2815760 (not (is-ElementMatch!16872 lt!2467163)))))

(declare-fun e!4157864 () Bool)

(assert (=> b!6904833 (= e!4157864 e!4157865)))

(declare-fun b!6904834 () Bool)

(declare-fun res!2815756 () Bool)

(declare-fun e!4157861 () Bool)

(assert (=> b!6904834 (=> res!2815756 e!4157861)))

(assert (=> b!6904834 (= res!2815756 (not (isEmpty!38740 (tail!12897 s!14361))))))

(declare-fun b!6904835 () Bool)

(declare-fun e!4157860 () Bool)

(assert (=> b!6904835 (= e!4157860 (nullable!6713 lt!2467163))))

(declare-fun b!6904836 () Bool)

(declare-fun e!4157859 () Bool)

(declare-fun lt!2467257 () Bool)

(declare-fun call!627868 () Bool)

(assert (=> b!6904836 (= e!4157859 (= lt!2467257 call!627868))))

(declare-fun b!6904837 () Bool)

(declare-fun res!2815755 () Bool)

(declare-fun e!4157862 () Bool)

(assert (=> b!6904837 (=> (not res!2815755) (not e!4157862))))

(assert (=> b!6904837 (= res!2815755 (not call!627868))))

(declare-fun b!6904838 () Bool)

(assert (=> b!6904838 (= e!4157864 (not lt!2467257))))

(declare-fun bm!627863 () Bool)

(assert (=> bm!627863 (= call!627868 (isEmpty!38740 s!14361))))

(declare-fun d!2162542 () Bool)

(assert (=> d!2162542 e!4157859))

(declare-fun c!1282802 () Bool)

(assert (=> d!2162542 (= c!1282802 (is-EmptyExpr!16872 lt!2467163))))

(assert (=> d!2162542 (= lt!2467257 e!4157860)))

(declare-fun c!1282801 () Bool)

(assert (=> d!2162542 (= c!1282801 (isEmpty!38740 s!14361))))

(assert (=> d!2162542 (validRegex!8580 lt!2467163)))

(assert (=> d!2162542 (= (matchR!9017 lt!2467163 s!14361) lt!2467257)))

(declare-fun b!6904839 () Bool)

(declare-fun res!2815757 () Bool)

(assert (=> b!6904839 (=> (not res!2815757) (not e!4157862))))

(assert (=> b!6904839 (= res!2815757 (isEmpty!38740 (tail!12897 s!14361)))))

(declare-fun b!6904840 () Bool)

(declare-fun res!2815754 () Bool)

(assert (=> b!6904840 (=> res!2815754 e!4157865)))

(assert (=> b!6904840 (= res!2815754 e!4157862)))

(declare-fun res!2815758 () Bool)

(assert (=> b!6904840 (=> (not res!2815758) (not e!4157862))))

(assert (=> b!6904840 (= res!2815758 lt!2467257)))

(declare-fun b!6904841 () Bool)

(assert (=> b!6904841 (= e!4157860 (matchR!9017 (derivativeStep!5392 lt!2467163 (head!13845 s!14361)) (tail!12897 s!14361)))))

(declare-fun b!6904842 () Bool)

(declare-fun e!4157863 () Bool)

(assert (=> b!6904842 (= e!4157863 e!4157861)))

(declare-fun res!2815759 () Bool)

(assert (=> b!6904842 (=> res!2815759 e!4157861)))

(assert (=> b!6904842 (= res!2815759 call!627868)))

(declare-fun b!6904843 () Bool)

(assert (=> b!6904843 (= e!4157859 e!4157864)))

(declare-fun c!1282803 () Bool)

(assert (=> b!6904843 (= c!1282803 (is-EmptyLang!16872 lt!2467163))))

(declare-fun b!6904844 () Bool)

(assert (=> b!6904844 (= e!4157865 e!4157863)))

(declare-fun res!2815761 () Bool)

(assert (=> b!6904844 (=> (not res!2815761) (not e!4157863))))

(assert (=> b!6904844 (= res!2815761 (not lt!2467257))))

(declare-fun b!6904845 () Bool)

(assert (=> b!6904845 (= e!4157861 (not (= (head!13845 s!14361) (c!1282744 lt!2467163))))))

(declare-fun b!6904846 () Bool)

(assert (=> b!6904846 (= e!4157862 (= (head!13845 s!14361) (c!1282744 lt!2467163)))))

(assert (= (and d!2162542 c!1282801) b!6904835))

(assert (= (and d!2162542 (not c!1282801)) b!6904841))

(assert (= (and d!2162542 c!1282802) b!6904836))

(assert (= (and d!2162542 (not c!1282802)) b!6904843))

(assert (= (and b!6904843 c!1282803) b!6904838))

(assert (= (and b!6904843 (not c!1282803)) b!6904833))

(assert (= (and b!6904833 (not res!2815760)) b!6904840))

(assert (= (and b!6904840 res!2815758) b!6904837))

(assert (= (and b!6904837 res!2815755) b!6904839))

(assert (= (and b!6904839 res!2815757) b!6904846))

(assert (= (and b!6904840 (not res!2815754)) b!6904844))

(assert (= (and b!6904844 res!2815761) b!6904842))

(assert (= (and b!6904842 (not res!2815759)) b!6904834))

(assert (= (and b!6904834 (not res!2815756)) b!6904845))

(assert (= (or b!6904836 b!6904842 b!6904837) bm!627863))

(assert (=> b!6904846 m!7621748))

(declare-fun m!7621772 () Bool)

(assert (=> b!6904835 m!7621772))

(assert (=> b!6904841 m!7621748))

(assert (=> b!6904841 m!7621748))

(declare-fun m!7621774 () Bool)

(assert (=> b!6904841 m!7621774))

(assert (=> b!6904841 m!7621754))

(assert (=> b!6904841 m!7621774))

(assert (=> b!6904841 m!7621754))

(declare-fun m!7621776 () Bool)

(assert (=> b!6904841 m!7621776))

(assert (=> b!6904834 m!7621754))

(assert (=> b!6904834 m!7621754))

(assert (=> b!6904834 m!7621758))

(assert (=> b!6904845 m!7621748))

(assert (=> bm!627863 m!7621760))

(assert (=> b!6904839 m!7621754))

(assert (=> b!6904839 m!7621754))

(assert (=> b!6904839 m!7621758))

(assert (=> d!2162542 m!7621760))

(declare-fun m!7621778 () Bool)

(assert (=> d!2162542 m!7621778))

(assert (=> b!6904474 d!2162542))

(declare-fun bs!1843320 () Bool)

(declare-fun b!6904849 () Bool)

(assert (= bs!1843320 (and b!6904849 b!6904470)))

(declare-fun lambda!392165 () Int)

(assert (=> bs!1843320 (not (= lambda!392165 lambda!392119))))

(declare-fun bs!1843321 () Bool)

(assert (= bs!1843321 (and b!6904849 b!6904831)))

(assert (=> bs!1843321 (not (= lambda!392165 lambda!392164))))

(declare-fun bs!1843322 () Bool)

(assert (= bs!1843322 (and b!6904849 b!6904698)))

(assert (=> bs!1843322 (not (= lambda!392165 lambda!392153))))

(declare-fun bs!1843323 () Bool)

(assert (= bs!1843323 (and b!6904849 d!2162526)))

(assert (=> bs!1843323 (not (= lambda!392165 lambda!392161))))

(declare-fun bs!1843324 () Bool)

(assert (= bs!1843324 (and b!6904849 b!6904691)))

(assert (=> bs!1843324 (= (and (= s!14361 (_1!37042 lt!2467158)) (= (reg!17201 lt!2467169) (reg!17201 lt!2467164)) (= lt!2467169 lt!2467164)) (= lambda!392165 lambda!392152))))

(declare-fun bs!1843325 () Bool)

(assert (= bs!1843325 (and b!6904849 b!6904824)))

(assert (=> bs!1843325 (= (and (= (reg!17201 lt!2467169) (reg!17201 lt!2467163)) (= lt!2467169 lt!2467163)) (= lambda!392165 lambda!392163))))

(assert (=> bs!1843320 (not (= lambda!392165 lambda!392120))))

(declare-fun bs!1843326 () Bool)

(assert (= bs!1843326 (and b!6904849 d!2162524)))

(assert (=> bs!1843326 (not (= lambda!392165 lambda!392156))))

(assert (=> bs!1843323 (not (= lambda!392165 lambda!392162))))

(declare-fun bs!1843327 () Bool)

(assert (= bs!1843327 (and b!6904849 b!6904472)))

(assert (=> bs!1843327 (not (= lambda!392165 lambda!392122))))

(assert (=> bs!1843327 (not (= lambda!392165 lambda!392121))))

(assert (=> b!6904849 true))

(assert (=> b!6904849 true))

(declare-fun bs!1843328 () Bool)

(declare-fun b!6904856 () Bool)

(assert (= bs!1843328 (and b!6904856 b!6904470)))

(declare-fun lambda!392166 () Int)

(assert (=> bs!1843328 (not (= lambda!392166 lambda!392119))))

(declare-fun bs!1843329 () Bool)

(assert (= bs!1843329 (and b!6904856 b!6904831)))

(assert (=> bs!1843329 (= (and (= (regOne!34256 lt!2467169) (regOne!34256 lt!2467163)) (= (regTwo!34256 lt!2467169) (regTwo!34256 lt!2467163))) (= lambda!392166 lambda!392164))))

(declare-fun bs!1843330 () Bool)

(assert (= bs!1843330 (and b!6904856 b!6904698)))

(assert (=> bs!1843330 (= (and (= s!14361 (_1!37042 lt!2467158)) (= (regOne!34256 lt!2467169) (regOne!34256 lt!2467164)) (= (regTwo!34256 lt!2467169) (regTwo!34256 lt!2467164))) (= lambda!392166 lambda!392153))))

(declare-fun bs!1843331 () Bool)

(assert (= bs!1843331 (and b!6904856 b!6904849)))

(assert (=> bs!1843331 (not (= lambda!392166 lambda!392165))))

(declare-fun bs!1843332 () Bool)

(assert (= bs!1843332 (and b!6904856 d!2162526)))

(assert (=> bs!1843332 (not (= lambda!392166 lambda!392161))))

(declare-fun bs!1843333 () Bool)

(assert (= bs!1843333 (and b!6904856 b!6904691)))

(assert (=> bs!1843333 (not (= lambda!392166 lambda!392152))))

(declare-fun bs!1843334 () Bool)

(assert (= bs!1843334 (and b!6904856 b!6904824)))

(assert (=> bs!1843334 (not (= lambda!392166 lambda!392163))))

(assert (=> bs!1843328 (= (and (= (regOne!34256 lt!2467169) lt!2467164) (= (regTwo!34256 lt!2467169) r3!135)) (= lambda!392166 lambda!392120))))

(declare-fun bs!1843335 () Bool)

(assert (= bs!1843335 (and b!6904856 d!2162524)))

(assert (=> bs!1843335 (not (= lambda!392166 lambda!392156))))

(assert (=> bs!1843332 (= (and (= (regOne!34256 lt!2467169) lt!2467164) (= (regTwo!34256 lt!2467169) r3!135)) (= lambda!392166 lambda!392162))))

(declare-fun bs!1843337 () Bool)

(assert (= bs!1843337 (and b!6904856 b!6904472)))

(assert (=> bs!1843337 (= (and (= s!14361 (_1!37042 lt!2467158)) (= (regOne!34256 lt!2467169) r1!6342) (= (regTwo!34256 lt!2467169) r2!6280)) (= lambda!392166 lambda!392122))))

(assert (=> bs!1843337 (not (= lambda!392166 lambda!392121))))

(assert (=> b!6904856 true))

(assert (=> b!6904856 true))

(declare-fun b!6904847 () Bool)

(declare-fun e!4157866 () Bool)

(declare-fun e!4157867 () Bool)

(assert (=> b!6904847 (= e!4157866 e!4157867)))

(declare-fun res!2815763 () Bool)

(assert (=> b!6904847 (= res!2815763 (not (is-EmptyLang!16872 lt!2467169)))))

(assert (=> b!6904847 (=> (not res!2815763) (not e!4157867))))

(declare-fun b!6904848 () Bool)

(declare-fun e!4157869 () Bool)

(assert (=> b!6904848 (= e!4157869 (matchRSpec!3935 (regTwo!34257 lt!2467169) s!14361))))

(declare-fun call!627869 () Bool)

(declare-fun bm!627864 () Bool)

(declare-fun c!1282807 () Bool)

(assert (=> bm!627864 (= call!627869 (Exists!3880 (ite c!1282807 lambda!392165 lambda!392166)))))

(declare-fun e!4157871 () Bool)

(assert (=> b!6904849 (= e!4157871 call!627869)))

(declare-fun b!6904850 () Bool)

(declare-fun call!627870 () Bool)

(assert (=> b!6904850 (= e!4157866 call!627870)))

(declare-fun b!6904851 () Bool)

(declare-fun c!1282806 () Bool)

(assert (=> b!6904851 (= c!1282806 (is-ElementMatch!16872 lt!2467169))))

(declare-fun e!4157870 () Bool)

(assert (=> b!6904851 (= e!4157867 e!4157870)))

(declare-fun b!6904852 () Bool)

(declare-fun c!1282804 () Bool)

(assert (=> b!6904852 (= c!1282804 (is-Union!16872 lt!2467169))))

(declare-fun e!4157868 () Bool)

(assert (=> b!6904852 (= e!4157870 e!4157868)))

(declare-fun b!6904853 () Bool)

(assert (=> b!6904853 (= e!4157870 (= s!14361 (Cons!66505 (c!1282744 lt!2467169) Nil!66505)))))

(declare-fun b!6904854 () Bool)

(declare-fun e!4157872 () Bool)

(assert (=> b!6904854 (= e!4157868 e!4157872)))

(assert (=> b!6904854 (= c!1282807 (is-Star!16872 lt!2467169))))

(declare-fun bm!627865 () Bool)

(assert (=> bm!627865 (= call!627870 (isEmpty!38740 s!14361))))

(declare-fun b!6904855 () Bool)

(declare-fun res!2815762 () Bool)

(assert (=> b!6904855 (=> res!2815762 e!4157871)))

(assert (=> b!6904855 (= res!2815762 call!627870)))

(assert (=> b!6904855 (= e!4157872 e!4157871)))

(assert (=> b!6904856 (= e!4157872 call!627869)))

(declare-fun d!2162544 () Bool)

(declare-fun c!1282805 () Bool)

(assert (=> d!2162544 (= c!1282805 (is-EmptyExpr!16872 lt!2467169))))

(assert (=> d!2162544 (= (matchRSpec!3935 lt!2467169 s!14361) e!4157866)))

(declare-fun b!6904857 () Bool)

(assert (=> b!6904857 (= e!4157868 e!4157869)))

(declare-fun res!2815764 () Bool)

(assert (=> b!6904857 (= res!2815764 (matchRSpec!3935 (regOne!34257 lt!2467169) s!14361))))

(assert (=> b!6904857 (=> res!2815764 e!4157869)))

(assert (= (and d!2162544 c!1282805) b!6904850))

(assert (= (and d!2162544 (not c!1282805)) b!6904847))

(assert (= (and b!6904847 res!2815763) b!6904851))

(assert (= (and b!6904851 c!1282806) b!6904853))

(assert (= (and b!6904851 (not c!1282806)) b!6904852))

(assert (= (and b!6904852 c!1282804) b!6904857))

(assert (= (and b!6904852 (not c!1282804)) b!6904854))

(assert (= (and b!6904857 (not res!2815764)) b!6904848))

(assert (= (and b!6904854 c!1282807) b!6904855))

(assert (= (and b!6904854 (not c!1282807)) b!6904856))

(assert (= (and b!6904855 (not res!2815762)) b!6904849))

(assert (= (or b!6904849 b!6904856) bm!627864))

(assert (= (or b!6904850 b!6904855) bm!627865))

(declare-fun m!7621798 () Bool)

(assert (=> b!6904848 m!7621798))

(declare-fun m!7621800 () Bool)

(assert (=> bm!627864 m!7621800))

(assert (=> bm!627865 m!7621760))

(declare-fun m!7621802 () Bool)

(assert (=> b!6904857 m!7621802))

(assert (=> b!6904474 d!2162544))

(declare-fun d!2162552 () Bool)

(assert (=> d!2162552 (= (matchR!9017 lt!2467163 s!14361) (matchRSpec!3935 lt!2467163 s!14361))))

(declare-fun lt!2467259 () Unit!160480)

(assert (=> d!2162552 (= lt!2467259 (choose!51417 lt!2467163 s!14361))))

(assert (=> d!2162552 (validRegex!8580 lt!2467163)))

(assert (=> d!2162552 (= (mainMatchTheorem!3935 lt!2467163 s!14361) lt!2467259)))

(declare-fun bs!1843339 () Bool)

(assert (= bs!1843339 d!2162552))

(assert (=> bs!1843339 m!7621522))

(assert (=> bs!1843339 m!7621526))

(declare-fun m!7621804 () Bool)

(assert (=> bs!1843339 m!7621804))

(assert (=> bs!1843339 m!7621778))

(assert (=> b!6904474 d!2162552))

(declare-fun b!6904872 () Bool)

(declare-fun e!4157880 () Bool)

(declare-fun call!627873 () Bool)

(assert (=> b!6904872 (= e!4157880 call!627873)))

(declare-fun bm!627867 () Bool)

(declare-fun call!627874 () Bool)

(assert (=> bm!627867 (= call!627873 call!627874)))

(declare-fun b!6904873 () Bool)

(declare-fun res!2815775 () Bool)

(declare-fun e!4157886 () Bool)

(assert (=> b!6904873 (=> (not res!2815775) (not e!4157886))))

(assert (=> b!6904873 (= res!2815775 call!627873)))

(declare-fun e!4157882 () Bool)

(assert (=> b!6904873 (= e!4157882 e!4157886)))

(declare-fun b!6904874 () Bool)

(declare-fun e!4157881 () Bool)

(declare-fun e!4157883 () Bool)

(assert (=> b!6904874 (= e!4157881 e!4157883)))

(declare-fun c!1282812 () Bool)

(assert (=> b!6904874 (= c!1282812 (is-Star!16872 r1!6342))))

(declare-fun b!6904875 () Bool)

(declare-fun e!4157885 () Bool)

(assert (=> b!6904875 (= e!4157885 call!627874)))

(declare-fun d!2162554 () Bool)

(declare-fun res!2815777 () Bool)

(assert (=> d!2162554 (=> res!2815777 e!4157881)))

(assert (=> d!2162554 (= res!2815777 (is-ElementMatch!16872 r1!6342))))

(assert (=> d!2162554 (= (validRegex!8580 r1!6342) e!4157881)))

(declare-fun b!6904876 () Bool)

(assert (=> b!6904876 (= e!4157883 e!4157885)))

(declare-fun res!2815773 () Bool)

(assert (=> b!6904876 (= res!2815773 (not (nullable!6713 (reg!17201 r1!6342))))))

(assert (=> b!6904876 (=> (not res!2815773) (not e!4157885))))

(declare-fun bm!627868 () Bool)

(declare-fun call!627872 () Bool)

(declare-fun c!1282811 () Bool)

(assert (=> bm!627868 (= call!627872 (validRegex!8580 (ite c!1282811 (regTwo!34257 r1!6342) (regOne!34256 r1!6342))))))

(declare-fun b!6904877 () Bool)

(assert (=> b!6904877 (= e!4157883 e!4157882)))

(assert (=> b!6904877 (= c!1282811 (is-Union!16872 r1!6342))))

(declare-fun b!6904878 () Bool)

(assert (=> b!6904878 (= e!4157886 call!627872)))

(declare-fun bm!627869 () Bool)

(assert (=> bm!627869 (= call!627874 (validRegex!8580 (ite c!1282812 (reg!17201 r1!6342) (ite c!1282811 (regOne!34257 r1!6342) (regTwo!34256 r1!6342)))))))

(declare-fun b!6904879 () Bool)

(declare-fun res!2815774 () Bool)

(declare-fun e!4157884 () Bool)

(assert (=> b!6904879 (=> res!2815774 e!4157884)))

(assert (=> b!6904879 (= res!2815774 (not (is-Concat!25717 r1!6342)))))

(assert (=> b!6904879 (= e!4157882 e!4157884)))

(declare-fun b!6904880 () Bool)

(assert (=> b!6904880 (= e!4157884 e!4157880)))

(declare-fun res!2815776 () Bool)

(assert (=> b!6904880 (=> (not res!2815776) (not e!4157880))))

(assert (=> b!6904880 (= res!2815776 call!627872)))

(assert (= (and d!2162554 (not res!2815777)) b!6904874))

(assert (= (and b!6904874 c!1282812) b!6904876))

(assert (= (and b!6904874 (not c!1282812)) b!6904877))

(assert (= (and b!6904876 res!2815773) b!6904875))

(assert (= (and b!6904877 c!1282811) b!6904873))

(assert (= (and b!6904877 (not c!1282811)) b!6904879))

(assert (= (and b!6904873 res!2815775) b!6904878))

(assert (= (and b!6904879 (not res!2815774)) b!6904880))

(assert (= (and b!6904880 res!2815776) b!6904872))

(assert (= (or b!6904873 b!6904872) bm!627867))

(assert (= (or b!6904878 b!6904880) bm!627868))

(assert (= (or b!6904875 bm!627867) bm!627869))

(declare-fun m!7621806 () Bool)

(assert (=> b!6904876 m!7621806))

(declare-fun m!7621808 () Bool)

(assert (=> bm!627868 m!7621808))

(declare-fun m!7621810 () Bool)

(assert (=> bm!627869 m!7621810))

(assert (=> start!664880 d!2162554))

(declare-fun b!6904881 () Bool)

(declare-fun e!4157887 () Bool)

(declare-fun call!627876 () Bool)

(assert (=> b!6904881 (= e!4157887 call!627876)))

(declare-fun bm!627870 () Bool)

(declare-fun call!627877 () Bool)

(assert (=> bm!627870 (= call!627876 call!627877)))

(declare-fun b!6904882 () Bool)

(declare-fun res!2815780 () Bool)

(declare-fun e!4157893 () Bool)

(assert (=> b!6904882 (=> (not res!2815780) (not e!4157893))))

(assert (=> b!6904882 (= res!2815780 call!627876)))

(declare-fun e!4157889 () Bool)

(assert (=> b!6904882 (= e!4157889 e!4157893)))

(declare-fun b!6904883 () Bool)

(declare-fun e!4157888 () Bool)

(declare-fun e!4157890 () Bool)

(assert (=> b!6904883 (= e!4157888 e!4157890)))

(declare-fun c!1282814 () Bool)

(assert (=> b!6904883 (= c!1282814 (is-Star!16872 r3!135))))

(declare-fun b!6904884 () Bool)

(declare-fun e!4157892 () Bool)

(assert (=> b!6904884 (= e!4157892 call!627877)))

(declare-fun d!2162556 () Bool)

(declare-fun res!2815782 () Bool)

(assert (=> d!2162556 (=> res!2815782 e!4157888)))

(assert (=> d!2162556 (= res!2815782 (is-ElementMatch!16872 r3!135))))

(assert (=> d!2162556 (= (validRegex!8580 r3!135) e!4157888)))

(declare-fun b!6904885 () Bool)

(assert (=> b!6904885 (= e!4157890 e!4157892)))

(declare-fun res!2815778 () Bool)

(assert (=> b!6904885 (= res!2815778 (not (nullable!6713 (reg!17201 r3!135))))))

(assert (=> b!6904885 (=> (not res!2815778) (not e!4157892))))

(declare-fun bm!627871 () Bool)

(declare-fun call!627875 () Bool)

(declare-fun c!1282813 () Bool)

(assert (=> bm!627871 (= call!627875 (validRegex!8580 (ite c!1282813 (regTwo!34257 r3!135) (regOne!34256 r3!135))))))

(declare-fun b!6904886 () Bool)

(assert (=> b!6904886 (= e!4157890 e!4157889)))

(assert (=> b!6904886 (= c!1282813 (is-Union!16872 r3!135))))

(declare-fun b!6904887 () Bool)

(assert (=> b!6904887 (= e!4157893 call!627875)))

(declare-fun bm!627872 () Bool)

(assert (=> bm!627872 (= call!627877 (validRegex!8580 (ite c!1282814 (reg!17201 r3!135) (ite c!1282813 (regOne!34257 r3!135) (regTwo!34256 r3!135)))))))

(declare-fun b!6904888 () Bool)

(declare-fun res!2815779 () Bool)

(declare-fun e!4157891 () Bool)

(assert (=> b!6904888 (=> res!2815779 e!4157891)))

(assert (=> b!6904888 (= res!2815779 (not (is-Concat!25717 r3!135)))))

(assert (=> b!6904888 (= e!4157889 e!4157891)))

(declare-fun b!6904889 () Bool)

(assert (=> b!6904889 (= e!4157891 e!4157887)))

(declare-fun res!2815781 () Bool)

(assert (=> b!6904889 (=> (not res!2815781) (not e!4157887))))

(assert (=> b!6904889 (= res!2815781 call!627875)))

(assert (= (and d!2162556 (not res!2815782)) b!6904883))

(assert (= (and b!6904883 c!1282814) b!6904885))

(assert (= (and b!6904883 (not c!1282814)) b!6904886))

(assert (= (and b!6904885 res!2815778) b!6904884))

(assert (= (and b!6904886 c!1282813) b!6904882))

(assert (= (and b!6904886 (not c!1282813)) b!6904888))

(assert (= (and b!6904882 res!2815780) b!6904887))

(assert (= (and b!6904888 (not res!2815779)) b!6904889))

(assert (= (and b!6904889 res!2815781) b!6904881))

(assert (= (or b!6904882 b!6904881) bm!627870))

(assert (= (or b!6904887 b!6904889) bm!627871))

(assert (= (or b!6904884 bm!627870) bm!627872))

(declare-fun m!7621812 () Bool)

(assert (=> b!6904885 m!7621812))

(declare-fun m!7621814 () Bool)

(assert (=> bm!627871 m!7621814))

(declare-fun m!7621816 () Bool)

(assert (=> bm!627872 m!7621816))

(assert (=> b!6904478 d!2162556))

(declare-fun d!2162558 () Bool)

(assert (=> d!2162558 (= (Exists!3880 lambda!392121) (choose!51412 lambda!392121))))

(declare-fun bs!1843340 () Bool)

(assert (= bs!1843340 d!2162558))

(declare-fun m!7621818 () Bool)

(assert (=> bs!1843340 m!7621818))

(assert (=> b!6904472 d!2162558))

(declare-fun d!2162560 () Bool)

(assert (=> d!2162560 (= (get!23259 lt!2467160) (v!52922 lt!2467160))))

(assert (=> b!6904472 d!2162560))

(declare-fun d!2162562 () Bool)

(assert (=> d!2162562 (= (Exists!3880 lambda!392122) (choose!51412 lambda!392122))))

(declare-fun bs!1843341 () Bool)

(assert (= bs!1843341 d!2162562))

(declare-fun m!7621820 () Bool)

(assert (=> bs!1843341 m!7621820))

(assert (=> b!6904472 d!2162562))

(declare-fun bs!1843342 () Bool)

(declare-fun d!2162564 () Bool)

(assert (= bs!1843342 (and d!2162564 b!6904470)))

(declare-fun lambda!392167 () Int)

(assert (=> bs!1843342 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392167 lambda!392119))))

(declare-fun bs!1843343 () Bool)

(assert (= bs!1843343 (and d!2162564 b!6904831)))

(assert (=> bs!1843343 (not (= lambda!392167 lambda!392164))))

(declare-fun bs!1843344 () Bool)

(assert (= bs!1843344 (and d!2162564 b!6904698)))

(assert (=> bs!1843344 (not (= lambda!392167 lambda!392153))))

(declare-fun bs!1843345 () Bool)

(assert (= bs!1843345 (and d!2162564 b!6904849)))

(assert (=> bs!1843345 (not (= lambda!392167 lambda!392165))))

(declare-fun bs!1843346 () Bool)

(assert (= bs!1843346 (and d!2162564 d!2162526)))

(assert (=> bs!1843346 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392167 lambda!392161))))

(declare-fun bs!1843347 () Bool)

(assert (= bs!1843347 (and d!2162564 b!6904856)))

(assert (=> bs!1843347 (not (= lambda!392167 lambda!392166))))

(declare-fun bs!1843348 () Bool)

(assert (= bs!1843348 (and d!2162564 b!6904691)))

(assert (=> bs!1843348 (not (= lambda!392167 lambda!392152))))

(declare-fun bs!1843349 () Bool)

(assert (= bs!1843349 (and d!2162564 b!6904824)))

(assert (=> bs!1843349 (not (= lambda!392167 lambda!392163))))

(assert (=> bs!1843342 (not (= lambda!392167 lambda!392120))))

(declare-fun bs!1843350 () Bool)

(assert (= bs!1843350 (and d!2162564 d!2162524)))

(assert (=> bs!1843350 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392167 lambda!392156))))

(assert (=> bs!1843346 (not (= lambda!392167 lambda!392162))))

(declare-fun bs!1843351 () Bool)

(assert (= bs!1843351 (and d!2162564 b!6904472)))

(assert (=> bs!1843351 (not (= lambda!392167 lambda!392122))))

(assert (=> bs!1843351 (= lambda!392167 lambda!392121)))

(assert (=> d!2162564 true))

(assert (=> d!2162564 true))

(assert (=> d!2162564 true))

(assert (=> d!2162564 (= (isDefined!13354 (findConcatSeparation!3065 r1!6342 r2!6280 Nil!66505 (_1!37042 lt!2467158) (_1!37042 lt!2467158))) (Exists!3880 lambda!392167))))

(declare-fun lt!2467260 () Unit!160480)

(assert (=> d!2162564 (= lt!2467260 (choose!51414 r1!6342 r2!6280 (_1!37042 lt!2467158)))))

(assert (=> d!2162564 (validRegex!8580 r1!6342)))

(assert (=> d!2162564 (= (lemmaFindConcatSeparationEquivalentToExists!2827 r1!6342 r2!6280 (_1!37042 lt!2467158)) lt!2467260)))

(declare-fun bs!1843352 () Bool)

(assert (= bs!1843352 d!2162564))

(declare-fun m!7621822 () Bool)

(assert (=> bs!1843352 m!7621822))

(assert (=> bs!1843352 m!7621538))

(assert (=> bs!1843352 m!7621538))

(declare-fun m!7621824 () Bool)

(assert (=> bs!1843352 m!7621824))

(assert (=> bs!1843352 m!7621546))

(declare-fun m!7621826 () Bool)

(assert (=> bs!1843352 m!7621826))

(assert (=> b!6904472 d!2162564))

(declare-fun bs!1843353 () Bool)

(declare-fun d!2162566 () Bool)

(assert (= bs!1843353 (and d!2162566 b!6904470)))

(declare-fun lambda!392168 () Int)

(assert (=> bs!1843353 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392168 lambda!392119))))

(declare-fun bs!1843354 () Bool)

(assert (= bs!1843354 (and d!2162566 b!6904831)))

(assert (=> bs!1843354 (not (= lambda!392168 lambda!392164))))

(declare-fun bs!1843355 () Bool)

(assert (= bs!1843355 (and d!2162566 b!6904698)))

(assert (=> bs!1843355 (not (= lambda!392168 lambda!392153))))

(declare-fun bs!1843356 () Bool)

(assert (= bs!1843356 (and d!2162566 d!2162564)))

(assert (=> bs!1843356 (= lambda!392168 lambda!392167)))

(declare-fun bs!1843357 () Bool)

(assert (= bs!1843357 (and d!2162566 b!6904849)))

(assert (=> bs!1843357 (not (= lambda!392168 lambda!392165))))

(declare-fun bs!1843358 () Bool)

(assert (= bs!1843358 (and d!2162566 d!2162526)))

(assert (=> bs!1843358 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392168 lambda!392161))))

(declare-fun bs!1843359 () Bool)

(assert (= bs!1843359 (and d!2162566 b!6904856)))

(assert (=> bs!1843359 (not (= lambda!392168 lambda!392166))))

(declare-fun bs!1843360 () Bool)

(assert (= bs!1843360 (and d!2162566 b!6904691)))

(assert (=> bs!1843360 (not (= lambda!392168 lambda!392152))))

(declare-fun bs!1843361 () Bool)

(assert (= bs!1843361 (and d!2162566 b!6904824)))

(assert (=> bs!1843361 (not (= lambda!392168 lambda!392163))))

(assert (=> bs!1843353 (not (= lambda!392168 lambda!392120))))

(declare-fun bs!1843362 () Bool)

(assert (= bs!1843362 (and d!2162566 d!2162524)))

(assert (=> bs!1843362 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392168 lambda!392156))))

(assert (=> bs!1843358 (not (= lambda!392168 lambda!392162))))

(declare-fun bs!1843363 () Bool)

(assert (= bs!1843363 (and d!2162566 b!6904472)))

(assert (=> bs!1843363 (not (= lambda!392168 lambda!392122))))

(assert (=> bs!1843363 (= lambda!392168 lambda!392121)))

(assert (=> d!2162566 true))

(assert (=> d!2162566 true))

(assert (=> d!2162566 true))

(declare-fun lambda!392169 () Int)

(assert (=> bs!1843353 (not (= lambda!392169 lambda!392119))))

(assert (=> bs!1843355 (= (and (= r1!6342 (regOne!34256 lt!2467164)) (= r2!6280 (regTwo!34256 lt!2467164))) (= lambda!392169 lambda!392153))))

(assert (=> bs!1843356 (not (= lambda!392169 lambda!392167))))

(assert (=> bs!1843357 (not (= lambda!392169 lambda!392165))))

(assert (=> bs!1843358 (not (= lambda!392169 lambda!392161))))

(assert (=> bs!1843359 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 (regOne!34256 lt!2467169)) (= r2!6280 (regTwo!34256 lt!2467169))) (= lambda!392169 lambda!392166))))

(assert (=> bs!1843360 (not (= lambda!392169 lambda!392152))))

(assert (=> bs!1843361 (not (= lambda!392169 lambda!392163))))

(assert (=> bs!1843353 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392169 lambda!392120))))

(assert (=> bs!1843362 (not (= lambda!392169 lambda!392156))))

(assert (=> bs!1843358 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 lt!2467164) (= r2!6280 r3!135)) (= lambda!392169 lambda!392162))))

(declare-fun bs!1843364 () Bool)

(assert (= bs!1843364 d!2162566))

(assert (=> bs!1843364 (not (= lambda!392169 lambda!392168))))

(assert (=> bs!1843354 (= (and (= (_1!37042 lt!2467158) s!14361) (= r1!6342 (regOne!34256 lt!2467163)) (= r2!6280 (regTwo!34256 lt!2467163))) (= lambda!392169 lambda!392164))))

(assert (=> bs!1843363 (= lambda!392169 lambda!392122)))

(assert (=> bs!1843363 (not (= lambda!392169 lambda!392121))))

(assert (=> d!2162566 true))

(assert (=> d!2162566 true))

(assert (=> d!2162566 true))

(assert (=> d!2162566 (= (Exists!3880 lambda!392168) (Exists!3880 lambda!392169))))

(declare-fun lt!2467261 () Unit!160480)

(assert (=> d!2162566 (= lt!2467261 (choose!51416 r1!6342 r2!6280 (_1!37042 lt!2467158)))))

(assert (=> d!2162566 (validRegex!8580 r1!6342)))

(assert (=> d!2162566 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2353 r1!6342 r2!6280 (_1!37042 lt!2467158)) lt!2467261)))

(declare-fun m!7621828 () Bool)

(assert (=> bs!1843364 m!7621828))

(declare-fun m!7621830 () Bool)

(assert (=> bs!1843364 m!7621830))

(declare-fun m!7621832 () Bool)

(assert (=> bs!1843364 m!7621832))

(assert (=> bs!1843364 m!7621546))

(assert (=> b!6904472 d!2162566))

(declare-fun b!6904908 () Bool)

(declare-fun res!2815799 () Bool)

(declare-fun e!4157914 () Bool)

(assert (=> b!6904908 (=> res!2815799 e!4157914)))

(assert (=> b!6904908 (= res!2815799 (not (is-ElementMatch!16872 r1!6342)))))

(declare-fun e!4157913 () Bool)

(assert (=> b!6904908 (= e!4157913 e!4157914)))

(declare-fun b!6904909 () Bool)

(declare-fun res!2815795 () Bool)

(declare-fun e!4157910 () Bool)

(assert (=> b!6904909 (=> res!2815795 e!4157910)))

(assert (=> b!6904909 (= res!2815795 (not (isEmpty!38740 (tail!12897 (_1!37042 (get!23259 lt!2467160))))))))

(declare-fun b!6904910 () Bool)

(declare-fun e!4157909 () Bool)

(assert (=> b!6904910 (= e!4157909 (nullable!6713 r1!6342))))

(declare-fun b!6904911 () Bool)

(declare-fun e!4157908 () Bool)

(declare-fun lt!2467262 () Bool)

(declare-fun call!627884 () Bool)

(assert (=> b!6904911 (= e!4157908 (= lt!2467262 call!627884))))

(declare-fun b!6904912 () Bool)

(declare-fun res!2815794 () Bool)

(declare-fun e!4157911 () Bool)

(assert (=> b!6904912 (=> (not res!2815794) (not e!4157911))))

(assert (=> b!6904912 (= res!2815794 (not call!627884))))

(declare-fun b!6904913 () Bool)

(assert (=> b!6904913 (= e!4157913 (not lt!2467262))))

(declare-fun bm!627879 () Bool)

(assert (=> bm!627879 (= call!627884 (isEmpty!38740 (_1!37042 (get!23259 lt!2467160))))))

(declare-fun d!2162568 () Bool)

(assert (=> d!2162568 e!4157908))

(declare-fun c!1282820 () Bool)

(assert (=> d!2162568 (= c!1282820 (is-EmptyExpr!16872 r1!6342))))

(assert (=> d!2162568 (= lt!2467262 e!4157909)))

(declare-fun c!1282819 () Bool)

(assert (=> d!2162568 (= c!1282819 (isEmpty!38740 (_1!37042 (get!23259 lt!2467160))))))

(assert (=> d!2162568 (validRegex!8580 r1!6342)))

(assert (=> d!2162568 (= (matchR!9017 r1!6342 (_1!37042 (get!23259 lt!2467160))) lt!2467262)))

(declare-fun b!6904914 () Bool)

(declare-fun res!2815796 () Bool)

(assert (=> b!6904914 (=> (not res!2815796) (not e!4157911))))

(assert (=> b!6904914 (= res!2815796 (isEmpty!38740 (tail!12897 (_1!37042 (get!23259 lt!2467160)))))))

(declare-fun b!6904915 () Bool)

(declare-fun res!2815793 () Bool)

(assert (=> b!6904915 (=> res!2815793 e!4157914)))

(assert (=> b!6904915 (= res!2815793 e!4157911)))

(declare-fun res!2815797 () Bool)

(assert (=> b!6904915 (=> (not res!2815797) (not e!4157911))))

(assert (=> b!6904915 (= res!2815797 lt!2467262)))

(declare-fun b!6904916 () Bool)

(assert (=> b!6904916 (= e!4157909 (matchR!9017 (derivativeStep!5392 r1!6342 (head!13845 (_1!37042 (get!23259 lt!2467160)))) (tail!12897 (_1!37042 (get!23259 lt!2467160)))))))

(declare-fun b!6904917 () Bool)

(declare-fun e!4157912 () Bool)

(assert (=> b!6904917 (= e!4157912 e!4157910)))

(declare-fun res!2815798 () Bool)

(assert (=> b!6904917 (=> res!2815798 e!4157910)))

(assert (=> b!6904917 (= res!2815798 call!627884)))

(declare-fun b!6904918 () Bool)

(assert (=> b!6904918 (= e!4157908 e!4157913)))

(declare-fun c!1282821 () Bool)

(assert (=> b!6904918 (= c!1282821 (is-EmptyLang!16872 r1!6342))))

(declare-fun b!6904919 () Bool)

(assert (=> b!6904919 (= e!4157914 e!4157912)))

(declare-fun res!2815800 () Bool)

(assert (=> b!6904919 (=> (not res!2815800) (not e!4157912))))

(assert (=> b!6904919 (= res!2815800 (not lt!2467262))))

(declare-fun b!6904920 () Bool)

(assert (=> b!6904920 (= e!4157910 (not (= (head!13845 (_1!37042 (get!23259 lt!2467160))) (c!1282744 r1!6342))))))

(declare-fun b!6904921 () Bool)

(assert (=> b!6904921 (= e!4157911 (= (head!13845 (_1!37042 (get!23259 lt!2467160))) (c!1282744 r1!6342)))))

(assert (= (and d!2162568 c!1282819) b!6904910))

(assert (= (and d!2162568 (not c!1282819)) b!6904916))

(assert (= (and d!2162568 c!1282820) b!6904911))

(assert (= (and d!2162568 (not c!1282820)) b!6904918))

(assert (= (and b!6904918 c!1282821) b!6904913))

(assert (= (and b!6904918 (not c!1282821)) b!6904908))

(assert (= (and b!6904908 (not res!2815799)) b!6904915))

(assert (= (and b!6904915 res!2815797) b!6904912))

(assert (= (and b!6904912 res!2815794) b!6904914))

(assert (= (and b!6904914 res!2815796) b!6904921))

(assert (= (and b!6904915 (not res!2815793)) b!6904919))

(assert (= (and b!6904919 res!2815800) b!6904917))

(assert (= (and b!6904917 (not res!2815798)) b!6904909))

(assert (= (and b!6904909 (not res!2815795)) b!6904920))

(assert (= (or b!6904911 b!6904917 b!6904912) bm!627879))

(declare-fun m!7621834 () Bool)

(assert (=> b!6904921 m!7621834))

(declare-fun m!7621836 () Bool)

(assert (=> b!6904910 m!7621836))

(assert (=> b!6904916 m!7621834))

(assert (=> b!6904916 m!7621834))

(declare-fun m!7621838 () Bool)

(assert (=> b!6904916 m!7621838))

(declare-fun m!7621840 () Bool)

(assert (=> b!6904916 m!7621840))

(assert (=> b!6904916 m!7621838))

(assert (=> b!6904916 m!7621840))

(declare-fun m!7621844 () Bool)

(assert (=> b!6904916 m!7621844))

(assert (=> b!6904909 m!7621840))

(assert (=> b!6904909 m!7621840))

(declare-fun m!7621848 () Bool)

(assert (=> b!6904909 m!7621848))

(assert (=> b!6904920 m!7621834))

(declare-fun m!7621852 () Bool)

(assert (=> bm!627879 m!7621852))

(assert (=> b!6904914 m!7621840))

(assert (=> b!6904914 m!7621840))

(assert (=> b!6904914 m!7621848))

(assert (=> d!2162568 m!7621852))

(assert (=> d!2162568 m!7621546))

(assert (=> b!6904472 d!2162568))

(declare-fun d!2162572 () Bool)

(assert (=> d!2162572 (= (isDefined!13354 lt!2467160) (not (isEmpty!38741 lt!2467160)))))

(declare-fun bs!1843365 () Bool)

(assert (= bs!1843365 d!2162572))

(declare-fun m!7621854 () Bool)

(assert (=> bs!1843365 m!7621854))

(assert (=> b!6904472 d!2162572))

(declare-fun b!6904945 () Bool)

(declare-fun e!4157932 () Bool)

(declare-fun lt!2467266 () Option!16651)

(assert (=> b!6904945 (= e!4157932 (= (++!14925 (_1!37042 (get!23259 lt!2467266)) (_2!37042 (get!23259 lt!2467266))) (_1!37042 lt!2467158)))))

(declare-fun b!6904946 () Bool)

(declare-fun e!4157930 () Option!16651)

(assert (=> b!6904946 (= e!4157930 (Some!16650 (tuple2!67479 Nil!66505 (_1!37042 lt!2467158))))))

(declare-fun b!6904947 () Bool)

(declare-fun res!2815818 () Bool)

(assert (=> b!6904947 (=> (not res!2815818) (not e!4157932))))

(assert (=> b!6904947 (= res!2815818 (matchR!9017 r1!6342 (_1!37042 (get!23259 lt!2467266))))))

(declare-fun b!6904948 () Bool)

(declare-fun e!4157931 () Bool)

(assert (=> b!6904948 (= e!4157931 (matchR!9017 r2!6280 (_1!37042 lt!2467158)))))

(declare-fun b!6904949 () Bool)

(declare-fun lt!2467265 () Unit!160480)

(declare-fun lt!2467264 () Unit!160480)

(assert (=> b!6904949 (= lt!2467265 lt!2467264)))

(assert (=> b!6904949 (= (++!14925 (++!14925 Nil!66505 (Cons!66505 (h!72953 (_1!37042 lt!2467158)) Nil!66505)) (t!380372 (_1!37042 lt!2467158))) (_1!37042 lt!2467158))))

(assert (=> b!6904949 (= lt!2467264 (lemmaMoveElementToOtherListKeepsConcatEq!2800 Nil!66505 (h!72953 (_1!37042 lt!2467158)) (t!380372 (_1!37042 lt!2467158)) (_1!37042 lt!2467158)))))

(declare-fun e!4157933 () Option!16651)

(assert (=> b!6904949 (= e!4157933 (findConcatSeparation!3065 r1!6342 r2!6280 (++!14925 Nil!66505 (Cons!66505 (h!72953 (_1!37042 lt!2467158)) Nil!66505)) (t!380372 (_1!37042 lt!2467158)) (_1!37042 lt!2467158)))))

(declare-fun b!6904950 () Bool)

(assert (=> b!6904950 (= e!4157933 None!16650)))

(declare-fun b!6904951 () Bool)

(assert (=> b!6904951 (= e!4157930 e!4157933)))

(declare-fun c!1282828 () Bool)

(assert (=> b!6904951 (= c!1282828 (is-Nil!66505 (_1!37042 lt!2467158)))))

(declare-fun b!6904952 () Bool)

(declare-fun res!2815815 () Bool)

(assert (=> b!6904952 (=> (not res!2815815) (not e!4157932))))

(assert (=> b!6904952 (= res!2815815 (matchR!9017 r2!6280 (_2!37042 (get!23259 lt!2467266))))))

(declare-fun b!6904953 () Bool)

(declare-fun e!4157929 () Bool)

(assert (=> b!6904953 (= e!4157929 (not (isDefined!13354 lt!2467266)))))

(declare-fun d!2162574 () Bool)

(assert (=> d!2162574 e!4157929))

(declare-fun res!2815814 () Bool)

(assert (=> d!2162574 (=> res!2815814 e!4157929)))

(assert (=> d!2162574 (= res!2815814 e!4157932)))

(declare-fun res!2815816 () Bool)

(assert (=> d!2162574 (=> (not res!2815816) (not e!4157932))))

(assert (=> d!2162574 (= res!2815816 (isDefined!13354 lt!2467266))))

(assert (=> d!2162574 (= lt!2467266 e!4157930)))

(declare-fun c!1282827 () Bool)

(assert (=> d!2162574 (= c!1282827 e!4157931)))

(declare-fun res!2815817 () Bool)

(assert (=> d!2162574 (=> (not res!2815817) (not e!4157931))))

(assert (=> d!2162574 (= res!2815817 (matchR!9017 r1!6342 Nil!66505))))

(assert (=> d!2162574 (validRegex!8580 r1!6342)))

(assert (=> d!2162574 (= (findConcatSeparation!3065 r1!6342 r2!6280 Nil!66505 (_1!37042 lt!2467158) (_1!37042 lt!2467158)) lt!2467266)))

(assert (= (and d!2162574 res!2815817) b!6904948))

(assert (= (and d!2162574 c!1282827) b!6904946))

(assert (= (and d!2162574 (not c!1282827)) b!6904951))

(assert (= (and b!6904951 c!1282828) b!6904950))

(assert (= (and b!6904951 (not c!1282828)) b!6904949))

(assert (= (and d!2162574 res!2815816) b!6904947))

(assert (= (and b!6904947 res!2815818) b!6904952))

(assert (= (and b!6904952 res!2815815) b!6904945))

(assert (= (and d!2162574 (not res!2815814)) b!6904953))

(declare-fun m!7621856 () Bool)

(assert (=> b!6904953 m!7621856))

(declare-fun m!7621858 () Bool)

(assert (=> b!6904948 m!7621858))

(declare-fun m!7621860 () Bool)

(assert (=> b!6904945 m!7621860))

(declare-fun m!7621862 () Bool)

(assert (=> b!6904945 m!7621862))

(declare-fun m!7621866 () Bool)

(assert (=> b!6904949 m!7621866))

(assert (=> b!6904949 m!7621866))

(declare-fun m!7621868 () Bool)

(assert (=> b!6904949 m!7621868))

(declare-fun m!7621874 () Bool)

(assert (=> b!6904949 m!7621874))

(assert (=> b!6904949 m!7621866))

(declare-fun m!7621876 () Bool)

(assert (=> b!6904949 m!7621876))

(assert (=> d!2162574 m!7621856))

(declare-fun m!7621880 () Bool)

(assert (=> d!2162574 m!7621880))

(assert (=> d!2162574 m!7621546))

(assert (=> b!6904952 m!7621860))

(declare-fun m!7621884 () Bool)

(assert (=> b!6904952 m!7621884))

(assert (=> b!6904947 m!7621860))

(declare-fun m!7621888 () Bool)

(assert (=> b!6904947 m!7621888))

(assert (=> b!6904472 d!2162574))

(declare-fun b!6904974 () Bool)

(declare-fun e!4157943 () Bool)

(declare-fun tp!1901141 () Bool)

(declare-fun tp!1901142 () Bool)

(assert (=> b!6904974 (= e!4157943 (and tp!1901141 tp!1901142))))

(assert (=> b!6904466 (= tp!1901066 e!4157943)))

(declare-fun b!6904976 () Bool)

(declare-fun tp!1901140 () Bool)

(declare-fun tp!1901139 () Bool)

(assert (=> b!6904976 (= e!4157943 (and tp!1901140 tp!1901139))))

(declare-fun b!6904975 () Bool)

(declare-fun tp!1901138 () Bool)

(assert (=> b!6904975 (= e!4157943 tp!1901138)))

(declare-fun b!6904973 () Bool)

(assert (=> b!6904973 (= e!4157943 tp_is_empty!42969)))

(assert (= (and b!6904466 (is-ElementMatch!16872 (reg!17201 r3!135))) b!6904973))

(assert (= (and b!6904466 (is-Concat!25717 (reg!17201 r3!135))) b!6904974))

(assert (= (and b!6904466 (is-Star!16872 (reg!17201 r3!135))) b!6904975))

(assert (= (and b!6904466 (is-Union!16872 (reg!17201 r3!135))) b!6904976))

(declare-fun b!6904978 () Bool)

(declare-fun e!4157944 () Bool)

(declare-fun tp!1901146 () Bool)

(declare-fun tp!1901147 () Bool)

(assert (=> b!6904978 (= e!4157944 (and tp!1901146 tp!1901147))))

(assert (=> b!6904482 (= tp!1901076 e!4157944)))

(declare-fun b!6904980 () Bool)

(declare-fun tp!1901145 () Bool)

(declare-fun tp!1901144 () Bool)

(assert (=> b!6904980 (= e!4157944 (and tp!1901145 tp!1901144))))

(declare-fun b!6904979 () Bool)

(declare-fun tp!1901143 () Bool)

(assert (=> b!6904979 (= e!4157944 tp!1901143)))

(declare-fun b!6904977 () Bool)

(assert (=> b!6904977 (= e!4157944 tp_is_empty!42969)))

(assert (= (and b!6904482 (is-ElementMatch!16872 (regOne!34256 r3!135))) b!6904977))

(assert (= (and b!6904482 (is-Concat!25717 (regOne!34256 r3!135))) b!6904978))

(assert (= (and b!6904482 (is-Star!16872 (regOne!34256 r3!135))) b!6904979))

(assert (= (and b!6904482 (is-Union!16872 (regOne!34256 r3!135))) b!6904980))

(declare-fun b!6904982 () Bool)

(declare-fun e!4157945 () Bool)

(declare-fun tp!1901151 () Bool)

(declare-fun tp!1901152 () Bool)

(assert (=> b!6904982 (= e!4157945 (and tp!1901151 tp!1901152))))

(assert (=> b!6904482 (= tp!1901067 e!4157945)))

(declare-fun b!6904984 () Bool)

(declare-fun tp!1901150 () Bool)

(declare-fun tp!1901149 () Bool)

(assert (=> b!6904984 (= e!4157945 (and tp!1901150 tp!1901149))))

(declare-fun b!6904983 () Bool)

(declare-fun tp!1901148 () Bool)

(assert (=> b!6904983 (= e!4157945 tp!1901148)))

(declare-fun b!6904981 () Bool)

(assert (=> b!6904981 (= e!4157945 tp_is_empty!42969)))

(assert (= (and b!6904482 (is-ElementMatch!16872 (regTwo!34256 r3!135))) b!6904981))

(assert (= (and b!6904482 (is-Concat!25717 (regTwo!34256 r3!135))) b!6904982))

(assert (= (and b!6904482 (is-Star!16872 (regTwo!34256 r3!135))) b!6904983))

(assert (= (and b!6904482 (is-Union!16872 (regTwo!34256 r3!135))) b!6904984))

(declare-fun b!6904986 () Bool)

(declare-fun e!4157946 () Bool)

(declare-fun tp!1901156 () Bool)

(declare-fun tp!1901157 () Bool)

(assert (=> b!6904986 (= e!4157946 (and tp!1901156 tp!1901157))))

(assert (=> b!6904471 (= tp!1901070 e!4157946)))

(declare-fun b!6904988 () Bool)

(declare-fun tp!1901155 () Bool)

(declare-fun tp!1901154 () Bool)

(assert (=> b!6904988 (= e!4157946 (and tp!1901155 tp!1901154))))

(declare-fun b!6904987 () Bool)

(declare-fun tp!1901153 () Bool)

(assert (=> b!6904987 (= e!4157946 tp!1901153)))

(declare-fun b!6904985 () Bool)

(assert (=> b!6904985 (= e!4157946 tp_is_empty!42969)))

(assert (= (and b!6904471 (is-ElementMatch!16872 (regOne!34256 r1!6342))) b!6904985))

(assert (= (and b!6904471 (is-Concat!25717 (regOne!34256 r1!6342))) b!6904986))

(assert (= (and b!6904471 (is-Star!16872 (regOne!34256 r1!6342))) b!6904987))

(assert (= (and b!6904471 (is-Union!16872 (regOne!34256 r1!6342))) b!6904988))

(declare-fun b!6904990 () Bool)

(declare-fun e!4157947 () Bool)

(declare-fun tp!1901161 () Bool)

(declare-fun tp!1901162 () Bool)

(assert (=> b!6904990 (= e!4157947 (and tp!1901161 tp!1901162))))

(assert (=> b!6904471 (= tp!1901077 e!4157947)))

(declare-fun b!6904992 () Bool)

(declare-fun tp!1901160 () Bool)

(declare-fun tp!1901159 () Bool)

(assert (=> b!6904992 (= e!4157947 (and tp!1901160 tp!1901159))))

(declare-fun b!6904991 () Bool)

(declare-fun tp!1901158 () Bool)

(assert (=> b!6904991 (= e!4157947 tp!1901158)))

(declare-fun b!6904989 () Bool)

(assert (=> b!6904989 (= e!4157947 tp_is_empty!42969)))

(assert (= (and b!6904471 (is-ElementMatch!16872 (regTwo!34256 r1!6342))) b!6904989))

(assert (= (and b!6904471 (is-Concat!25717 (regTwo!34256 r1!6342))) b!6904990))

(assert (= (and b!6904471 (is-Star!16872 (regTwo!34256 r1!6342))) b!6904991))

(assert (= (and b!6904471 (is-Union!16872 (regTwo!34256 r1!6342))) b!6904992))

(declare-fun b!6904994 () Bool)

(declare-fun e!4157948 () Bool)

(declare-fun tp!1901166 () Bool)

(declare-fun tp!1901167 () Bool)

(assert (=> b!6904994 (= e!4157948 (and tp!1901166 tp!1901167))))

(assert (=> b!6904481 (= tp!1901078 e!4157948)))

(declare-fun b!6904996 () Bool)

(declare-fun tp!1901165 () Bool)

(declare-fun tp!1901164 () Bool)

(assert (=> b!6904996 (= e!4157948 (and tp!1901165 tp!1901164))))

(declare-fun b!6904995 () Bool)

(declare-fun tp!1901163 () Bool)

(assert (=> b!6904995 (= e!4157948 tp!1901163)))

(declare-fun b!6904993 () Bool)

(assert (=> b!6904993 (= e!4157948 tp_is_empty!42969)))

(assert (= (and b!6904481 (is-ElementMatch!16872 (regOne!34257 r2!6280))) b!6904993))

(assert (= (and b!6904481 (is-Concat!25717 (regOne!34257 r2!6280))) b!6904994))

(assert (= (and b!6904481 (is-Star!16872 (regOne!34257 r2!6280))) b!6904995))

(assert (= (and b!6904481 (is-Union!16872 (regOne!34257 r2!6280))) b!6904996))

(declare-fun b!6904998 () Bool)

(declare-fun e!4157949 () Bool)

(declare-fun tp!1901171 () Bool)

(declare-fun tp!1901172 () Bool)

(assert (=> b!6904998 (= e!4157949 (and tp!1901171 tp!1901172))))

(assert (=> b!6904481 (= tp!1901075 e!4157949)))

(declare-fun b!6905000 () Bool)

(declare-fun tp!1901170 () Bool)

(declare-fun tp!1901169 () Bool)

(assert (=> b!6905000 (= e!4157949 (and tp!1901170 tp!1901169))))

(declare-fun b!6904999 () Bool)

(declare-fun tp!1901168 () Bool)

(assert (=> b!6904999 (= e!4157949 tp!1901168)))

(declare-fun b!6904997 () Bool)

(assert (=> b!6904997 (= e!4157949 tp_is_empty!42969)))

(assert (= (and b!6904481 (is-ElementMatch!16872 (regTwo!34257 r2!6280))) b!6904997))

(assert (= (and b!6904481 (is-Concat!25717 (regTwo!34257 r2!6280))) b!6904998))

(assert (= (and b!6904481 (is-Star!16872 (regTwo!34257 r2!6280))) b!6904999))

(assert (= (and b!6904481 (is-Union!16872 (regTwo!34257 r2!6280))) b!6905000))

(declare-fun b!6905005 () Bool)

(declare-fun e!4157952 () Bool)

(declare-fun tp!1901175 () Bool)

(assert (=> b!6905005 (= e!4157952 (and tp_is_empty!42969 tp!1901175))))

(assert (=> b!6904464 (= tp!1901065 e!4157952)))

(assert (= (and b!6904464 (is-Cons!66505 (t!380372 s!14361))) b!6905005))

(declare-fun b!6905007 () Bool)

(declare-fun e!4157953 () Bool)

(declare-fun tp!1901179 () Bool)

(declare-fun tp!1901180 () Bool)

(assert (=> b!6905007 (= e!4157953 (and tp!1901179 tp!1901180))))

(assert (=> b!6904480 (= tp!1901074 e!4157953)))

(declare-fun b!6905009 () Bool)

(declare-fun tp!1901178 () Bool)

(declare-fun tp!1901177 () Bool)

(assert (=> b!6905009 (= e!4157953 (and tp!1901178 tp!1901177))))

(declare-fun b!6905008 () Bool)

(declare-fun tp!1901176 () Bool)

(assert (=> b!6905008 (= e!4157953 tp!1901176)))

(declare-fun b!6905006 () Bool)

(assert (=> b!6905006 (= e!4157953 tp_is_empty!42969)))

(assert (= (and b!6904480 (is-ElementMatch!16872 (regOne!34257 r1!6342))) b!6905006))

(assert (= (and b!6904480 (is-Concat!25717 (regOne!34257 r1!6342))) b!6905007))

(assert (= (and b!6904480 (is-Star!16872 (regOne!34257 r1!6342))) b!6905008))

(assert (= (and b!6904480 (is-Union!16872 (regOne!34257 r1!6342))) b!6905009))

(declare-fun b!6905011 () Bool)

(declare-fun e!4157954 () Bool)

(declare-fun tp!1901184 () Bool)

(declare-fun tp!1901185 () Bool)

(assert (=> b!6905011 (= e!4157954 (and tp!1901184 tp!1901185))))

(assert (=> b!6904480 (= tp!1901069 e!4157954)))

(declare-fun b!6905013 () Bool)

(declare-fun tp!1901183 () Bool)

(declare-fun tp!1901182 () Bool)

(assert (=> b!6905013 (= e!4157954 (and tp!1901183 tp!1901182))))

(declare-fun b!6905012 () Bool)

(declare-fun tp!1901181 () Bool)

(assert (=> b!6905012 (= e!4157954 tp!1901181)))

(declare-fun b!6905010 () Bool)

(assert (=> b!6905010 (= e!4157954 tp_is_empty!42969)))

(assert (= (and b!6904480 (is-ElementMatch!16872 (regTwo!34257 r1!6342))) b!6905010))

(assert (= (and b!6904480 (is-Concat!25717 (regTwo!34257 r1!6342))) b!6905011))

(assert (= (and b!6904480 (is-Star!16872 (regTwo!34257 r1!6342))) b!6905012))

(assert (= (and b!6904480 (is-Union!16872 (regTwo!34257 r1!6342))) b!6905013))

(declare-fun b!6905015 () Bool)

(declare-fun e!4157955 () Bool)

(declare-fun tp!1901189 () Bool)

(declare-fun tp!1901190 () Bool)

(assert (=> b!6905015 (= e!4157955 (and tp!1901189 tp!1901190))))

(assert (=> b!6904469 (= tp!1901071 e!4157955)))

(declare-fun b!6905017 () Bool)

(declare-fun tp!1901188 () Bool)

(declare-fun tp!1901187 () Bool)

(assert (=> b!6905017 (= e!4157955 (and tp!1901188 tp!1901187))))

(declare-fun b!6905016 () Bool)

(declare-fun tp!1901186 () Bool)

(assert (=> b!6905016 (= e!4157955 tp!1901186)))

(declare-fun b!6905014 () Bool)

(assert (=> b!6905014 (= e!4157955 tp_is_empty!42969)))

(assert (= (and b!6904469 (is-ElementMatch!16872 (reg!17201 r2!6280))) b!6905014))

(assert (= (and b!6904469 (is-Concat!25717 (reg!17201 r2!6280))) b!6905015))

(assert (= (and b!6904469 (is-Star!16872 (reg!17201 r2!6280))) b!6905016))

(assert (= (and b!6904469 (is-Union!16872 (reg!17201 r2!6280))) b!6905017))

(declare-fun b!6905019 () Bool)

(declare-fun e!4157956 () Bool)

(declare-fun tp!1901194 () Bool)

(declare-fun tp!1901195 () Bool)

(assert (=> b!6905019 (= e!4157956 (and tp!1901194 tp!1901195))))

(assert (=> b!6904479 (= tp!1901064 e!4157956)))

(declare-fun b!6905021 () Bool)

(declare-fun tp!1901193 () Bool)

(declare-fun tp!1901192 () Bool)

(assert (=> b!6905021 (= e!4157956 (and tp!1901193 tp!1901192))))

(declare-fun b!6905020 () Bool)

(declare-fun tp!1901191 () Bool)

(assert (=> b!6905020 (= e!4157956 tp!1901191)))

(declare-fun b!6905018 () Bool)

(assert (=> b!6905018 (= e!4157956 tp_is_empty!42969)))

(assert (= (and b!6904479 (is-ElementMatch!16872 (regOne!34257 r3!135))) b!6905018))

(assert (= (and b!6904479 (is-Concat!25717 (regOne!34257 r3!135))) b!6905019))

(assert (= (and b!6904479 (is-Star!16872 (regOne!34257 r3!135))) b!6905020))

(assert (= (and b!6904479 (is-Union!16872 (regOne!34257 r3!135))) b!6905021))

(declare-fun b!6905023 () Bool)

(declare-fun e!4157957 () Bool)

(declare-fun tp!1901199 () Bool)

(declare-fun tp!1901200 () Bool)

(assert (=> b!6905023 (= e!4157957 (and tp!1901199 tp!1901200))))

(assert (=> b!6904479 (= tp!1901068 e!4157957)))

(declare-fun b!6905025 () Bool)

(declare-fun tp!1901198 () Bool)

(declare-fun tp!1901197 () Bool)

(assert (=> b!6905025 (= e!4157957 (and tp!1901198 tp!1901197))))

(declare-fun b!6905024 () Bool)

(declare-fun tp!1901196 () Bool)

(assert (=> b!6905024 (= e!4157957 tp!1901196)))

(declare-fun b!6905022 () Bool)

(assert (=> b!6905022 (= e!4157957 tp_is_empty!42969)))

(assert (= (and b!6904479 (is-ElementMatch!16872 (regTwo!34257 r3!135))) b!6905022))

(assert (= (and b!6904479 (is-Concat!25717 (regTwo!34257 r3!135))) b!6905023))

(assert (= (and b!6904479 (is-Star!16872 (regTwo!34257 r3!135))) b!6905024))

(assert (= (and b!6904479 (is-Union!16872 (regTwo!34257 r3!135))) b!6905025))

(declare-fun b!6905027 () Bool)

(declare-fun e!4157958 () Bool)

(declare-fun tp!1901204 () Bool)

(declare-fun tp!1901205 () Bool)

(assert (=> b!6905027 (= e!4157958 (and tp!1901204 tp!1901205))))

(assert (=> b!6904473 (= tp!1901073 e!4157958)))

(declare-fun b!6905029 () Bool)

(declare-fun tp!1901203 () Bool)

(declare-fun tp!1901202 () Bool)

(assert (=> b!6905029 (= e!4157958 (and tp!1901203 tp!1901202))))

(declare-fun b!6905028 () Bool)

(declare-fun tp!1901201 () Bool)

(assert (=> b!6905028 (= e!4157958 tp!1901201)))

(declare-fun b!6905026 () Bool)

(assert (=> b!6905026 (= e!4157958 tp_is_empty!42969)))

(assert (= (and b!6904473 (is-ElementMatch!16872 (reg!17201 r1!6342))) b!6905026))

(assert (= (and b!6904473 (is-Concat!25717 (reg!17201 r1!6342))) b!6905027))

(assert (= (and b!6904473 (is-Star!16872 (reg!17201 r1!6342))) b!6905028))

(assert (= (and b!6904473 (is-Union!16872 (reg!17201 r1!6342))) b!6905029))

(declare-fun b!6905031 () Bool)

(declare-fun e!4157959 () Bool)

(declare-fun tp!1901209 () Bool)

(declare-fun tp!1901210 () Bool)

(assert (=> b!6905031 (= e!4157959 (and tp!1901209 tp!1901210))))

(assert (=> b!6904477 (= tp!1901079 e!4157959)))

(declare-fun b!6905033 () Bool)

(declare-fun tp!1901208 () Bool)

(declare-fun tp!1901207 () Bool)

(assert (=> b!6905033 (= e!4157959 (and tp!1901208 tp!1901207))))

(declare-fun b!6905032 () Bool)

(declare-fun tp!1901206 () Bool)

(assert (=> b!6905032 (= e!4157959 tp!1901206)))

(declare-fun b!6905030 () Bool)

(assert (=> b!6905030 (= e!4157959 tp_is_empty!42969)))

(assert (= (and b!6904477 (is-ElementMatch!16872 (regOne!34256 r2!6280))) b!6905030))

(assert (= (and b!6904477 (is-Concat!25717 (regOne!34256 r2!6280))) b!6905031))

(assert (= (and b!6904477 (is-Star!16872 (regOne!34256 r2!6280))) b!6905032))

(assert (= (and b!6904477 (is-Union!16872 (regOne!34256 r2!6280))) b!6905033))

(declare-fun b!6905035 () Bool)

(declare-fun e!4157960 () Bool)

(declare-fun tp!1901214 () Bool)

(declare-fun tp!1901215 () Bool)

(assert (=> b!6905035 (= e!4157960 (and tp!1901214 tp!1901215))))

(assert (=> b!6904477 (= tp!1901072 e!4157960)))

(declare-fun b!6905037 () Bool)

(declare-fun tp!1901213 () Bool)

(declare-fun tp!1901212 () Bool)

(assert (=> b!6905037 (= e!4157960 (and tp!1901213 tp!1901212))))

(declare-fun b!6905036 () Bool)

(declare-fun tp!1901211 () Bool)

(assert (=> b!6905036 (= e!4157960 tp!1901211)))

(declare-fun b!6905034 () Bool)

(assert (=> b!6905034 (= e!4157960 tp_is_empty!42969)))

(assert (= (and b!6904477 (is-ElementMatch!16872 (regTwo!34256 r2!6280))) b!6905034))

(assert (= (and b!6904477 (is-Concat!25717 (regTwo!34256 r2!6280))) b!6905035))

(assert (= (and b!6904477 (is-Star!16872 (regTwo!34256 r2!6280))) b!6905036))

(assert (= (and b!6904477 (is-Union!16872 (regTwo!34256 r2!6280))) b!6905037))

(push 1)

(assert (not d!2162534))

(assert (not b!6904839))

(assert (not b!6905028))

(assert (not d!2162558))

(assert (not b!6904986))

(assert (not b!6905005))

(assert (not b!6904885))

(assert (not b!6904979))

(assert (not b!6904995))

(assert (not bm!627858))

(assert (not b!6905000))

(assert (not b!6905017))

(assert (not b!6904992))

(assert (not b!6904645))

(assert (not b!6904845))

(assert (not bm!627868))

(assert (not b!6905037))

(assert (not b!6904731))

(assert (not bm!627864))

(assert (not b!6904991))

(assert (not b!6904920))

(assert (not b!6904909))

(assert (not b!6904726))

(assert (not b!6905013))

(assert tp_is_empty!42969)

(assert (not d!2162542))

(assert (not b!6904999))

(assert (not b!6904945))

(assert (not b!6904652))

(assert (not b!6904690))

(assert (not bm!627856))

(assert (not b!6904739))

(assert (not b!6904980))

(assert (not b!6905027))

(assert (not bm!627857))

(assert (not bm!627846))

(assert (not b!6905032))

(assert (not d!2162538))

(assert (not bm!627872))

(assert (not b!6904606))

(assert (not b!6904832))

(assert (not b!6904834))

(assert (not b!6905007))

(assert (not b!6904647))

(assert (not b!6904727))

(assert (not b!6904848))

(assert (not b!6904745))

(assert (not b!6904949))

(assert (not b!6905025))

(assert (not b!6904952))

(assert (not b!6904846))

(assert (not bm!627847))

(assert (not b!6904921))

(assert (not b!6904994))

(assert (not b!6904978))

(assert (not bm!627855))

(assert (not b!6905009))

(assert (not b!6905031))

(assert (not b!6905033))

(assert (not d!2162524))

(assert (not b!6905021))

(assert (not b!6904823))

(assert (not b!6904996))

(assert (not b!6905015))

(assert (not b!6904947))

(assert (not b!6905016))

(assert (not b!6904910))

(assert (not d!2162574))

(assert (not b!6905012))

(assert (not d!2162564))

(assert (not d!2162512))

(assert (not b!6905011))

(assert (not b!6905035))

(assert (not b!6904732))

(assert (not b!6904987))

(assert (not bm!627865))

(assert (not d!2162536))

(assert (not b!6905020))

(assert (not b!6905023))

(assert (not b!6904750))

(assert (not b!6904816))

(assert (not b!6904998))

(assert (not b!6905036))

(assert (not b!6904841))

(assert (not b!6904749))

(assert (not b!6904984))

(assert (not b!6905019))

(assert (not bm!627871))

(assert (not b!6904835))

(assert (not bm!627879))

(assert (not b!6904820))

(assert (not d!2162520))

(assert (not b!6904641))

(assert (not b!6904821))

(assert (not d!2162522))

(assert (not b!6904809))

(assert (not b!6904948))

(assert (not b!6904953))

(assert (not d!2162572))

(assert (not bm!627869))

(assert (not d!2162568))

(assert (not b!6904914))

(assert (not b!6905024))

(assert (not b!6904916))

(assert (not d!2162566))

(assert (not b!6904857))

(assert (not d!2162532))

(assert (not b!6904738))

(assert (not d!2162506))

(assert (not b!6905008))

(assert (not b!6904982))

(assert (not b!6904974))

(assert (not b!6904990))

(assert (not b!6904743))

(assert (not b!6904724))

(assert (not b!6904814))

(assert (not bm!627862))

(assert (not b!6904975))

(assert (not b!6904640))

(assert (not b!6904728))

(assert (not b!6905029))

(assert (not bm!627863))

(assert (not d!2162526))

(assert (not b!6904876))

(assert (not bm!627850))

(assert (not bm!627861))

(assert (not b!6904988))

(assert (not b!6904651))

(assert (not d!2162562))

(assert (not b!6904983))

(assert (not d!2162510))

(assert (not b!6904699))

(assert (not b!6904810))

(assert (not b!6904976))

(assert (not d!2162552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238552 () Bool)

(assert start!238552)

(declare-fun b!2437067 () Bool)

(assert (=> b!2437067 true))

(assert (=> b!2437067 true))

(declare-fun lambda!92080 () Int)

(declare-fun lambda!92079 () Int)

(assert (=> b!2437067 (not (= lambda!92080 lambda!92079))))

(assert (=> b!2437067 true))

(assert (=> b!2437067 true))

(declare-fun b!2437057 () Bool)

(declare-fun e!1548812 () Bool)

(declare-fun e!1548805 () Bool)

(assert (=> b!2437057 (= e!1548812 e!1548805)))

(declare-fun res!1034541 () Bool)

(assert (=> b!2437057 (=> res!1034541 e!1548805)))

(declare-datatypes ((C!14482 0))(
  ( (C!14483 (val!8483 Int)) )
))
(declare-datatypes ((Regex!7162 0))(
  ( (ElementMatch!7162 (c!388860 C!14482)) (Concat!11798 (regOne!14836 Regex!7162) (regTwo!14836 Regex!7162)) (EmptyExpr!7162) (Star!7162 (reg!7491 Regex!7162)) (EmptyLang!7162) (Union!7162 (regOne!14837 Regex!7162) (regTwo!14837 Regex!7162)) )
))
(declare-fun lt!877597 () Regex!7162)

(declare-datatypes ((List!28560 0))(
  ( (Nil!28462) (Cons!28462 (h!33863 C!14482) (t!208537 List!28560)) )
))
(declare-fun s!9460 () List!28560)

(declare-fun matchR!3277 (Regex!7162 List!28560) Bool)

(assert (=> b!2437057 (= res!1034541 (not (matchR!3277 lt!877597 s!9460)))))

(declare-datatypes ((List!28561 0))(
  ( (Nil!28463) (Cons!28463 (h!33864 Regex!7162) (t!208538 List!28561)) )
))
(declare-fun l!9164 () List!28561)

(declare-fun head!5522 (List!28561) Regex!7162)

(assert (=> b!2437057 (= lt!877597 (head!5522 l!9164))))

(declare-fun b!2437058 () Bool)

(declare-fun e!1548813 () Bool)

(declare-fun tp!773971 () Bool)

(declare-fun tp!773976 () Bool)

(assert (=> b!2437058 (= e!1548813 (and tp!773971 tp!773976))))

(declare-fun b!2437059 () Bool)

(declare-fun res!1034547 () Bool)

(declare-fun e!1548808 () Bool)

(assert (=> b!2437059 (=> (not res!1034547) (not e!1548808))))

(declare-fun r!13927 () Regex!7162)

(declare-fun generalisedConcat!263 (List!28561) Regex!7162)

(assert (=> b!2437059 (= res!1034547 (= r!13927 (generalisedConcat!263 l!9164)))))

(declare-fun b!2437060 () Bool)

(declare-fun res!1034542 () Bool)

(declare-fun e!1548807 () Bool)

(assert (=> b!2437060 (=> res!1034542 e!1548807)))

(declare-fun isEmpty!16505 (List!28561) Bool)

(assert (=> b!2437060 (= res!1034542 (isEmpty!16505 l!9164))))

(declare-fun b!2437061 () Bool)

(declare-fun res!1034543 () Bool)

(assert (=> b!2437061 (=> res!1034543 e!1548812)))

(declare-fun lt!877598 () List!28561)

(assert (=> b!2437061 (= res!1034543 (not (= (generalisedConcat!263 lt!877598) EmptyExpr!7162)))))

(declare-fun b!2437062 () Bool)

(declare-fun e!1548811 () Bool)

(declare-fun lt!877591 () Regex!7162)

(assert (=> b!2437062 (= e!1548811 (matchR!3277 lt!877591 s!9460))))

(declare-fun b!2437063 () Bool)

(declare-fun tp!773973 () Bool)

(assert (=> b!2437063 (= e!1548813 tp!773973)))

(declare-fun b!2437065 () Bool)

(declare-fun tp!773974 () Bool)

(declare-fun tp!773977 () Bool)

(assert (=> b!2437065 (= e!1548813 (and tp!773974 tp!773977))))

(declare-fun b!2437066 () Bool)

(assert (=> b!2437066 (= e!1548807 e!1548812)))

(declare-fun res!1034546 () Bool)

(assert (=> b!2437066 (=> res!1034546 e!1548812)))

(assert (=> b!2437066 (= res!1034546 (not (isEmpty!16505 lt!877598)))))

(declare-fun tail!3795 (List!28561) List!28561)

(assert (=> b!2437066 (= lt!877598 (tail!3795 l!9164))))

(declare-fun e!1548806 () Bool)

(assert (=> b!2437067 (= e!1548806 e!1548807)))

(declare-fun res!1034545 () Bool)

(assert (=> b!2437067 (=> res!1034545 e!1548807)))

(declare-fun lt!877596 () Bool)

(declare-fun lt!877590 () Bool)

(assert (=> b!2437067 (= res!1034545 (not (= lt!877596 lt!877590)))))

(declare-fun Exists!1198 (Int) Bool)

(assert (=> b!2437067 (= (Exists!1198 lambda!92079) (Exists!1198 lambda!92080))))

(declare-datatypes ((Unit!41707 0))(
  ( (Unit!41708) )
))
(declare-fun lt!877593 () Unit!41707)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!443 (Regex!7162 Regex!7162 List!28560) Unit!41707)

(assert (=> b!2437067 (= lt!877593 (lemmaExistCutMatchRandMatchRSpecEquivalent!443 (regOne!14836 r!13927) (regTwo!14836 r!13927) s!9460))))

(assert (=> b!2437067 (= lt!877590 (Exists!1198 lambda!92079))))

(declare-datatypes ((tuple2!28080 0))(
  ( (tuple2!28081 (_1!16581 List!28560) (_2!16581 List!28560)) )
))
(declare-datatypes ((Option!5651 0))(
  ( (None!5650) (Some!5650 (v!31058 tuple2!28080)) )
))
(declare-fun isDefined!4477 (Option!5651) Bool)

(declare-fun findConcatSeparation!759 (Regex!7162 Regex!7162 List!28560 List!28560 List!28560) Option!5651)

(assert (=> b!2437067 (= lt!877590 (isDefined!4477 (findConcatSeparation!759 (regOne!14836 r!13927) (regTwo!14836 r!13927) Nil!28462 s!9460 s!9460)))))

(declare-fun lt!877595 () Unit!41707)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!697 (Regex!7162 Regex!7162 List!28560) Unit!41707)

(assert (=> b!2437067 (= lt!877595 (lemmaFindConcatSeparationEquivalentToExists!697 (regOne!14836 r!13927) (regTwo!14836 r!13927) s!9460))))

(declare-fun b!2437068 () Bool)

(declare-fun tp_is_empty!11737 () Bool)

(assert (=> b!2437068 (= e!1548813 tp_is_empty!11737)))

(declare-fun b!2437069 () Bool)

(assert (=> b!2437069 (= e!1548808 (not e!1548806))))

(declare-fun res!1034544 () Bool)

(assert (=> b!2437069 (=> res!1034544 e!1548806)))

(assert (=> b!2437069 (= res!1034544 (not (is-Concat!11798 r!13927)))))

(declare-fun lt!877594 () Bool)

(assert (=> b!2437069 (= lt!877594 lt!877596)))

(declare-fun matchRSpec!1009 (Regex!7162 List!28560) Bool)

(assert (=> b!2437069 (= lt!877596 (matchRSpec!1009 r!13927 s!9460))))

(assert (=> b!2437069 (= lt!877594 (matchR!3277 r!13927 s!9460))))

(declare-fun lt!877592 () Unit!41707)

(declare-fun mainMatchTheorem!1009 (Regex!7162 List!28560) Unit!41707)

(assert (=> b!2437069 (= lt!877592 (mainMatchTheorem!1009 r!13927 s!9460))))

(declare-fun b!2437064 () Bool)

(declare-fun e!1548810 () Bool)

(declare-fun tp!773972 () Bool)

(assert (=> b!2437064 (= e!1548810 (and tp_is_empty!11737 tp!773972))))

(declare-fun res!1034548 () Bool)

(assert (=> start!238552 (=> (not res!1034548) (not e!1548808))))

(declare-fun lambda!92078 () Int)

(declare-fun forall!5796 (List!28561 Int) Bool)

(assert (=> start!238552 (= res!1034548 (forall!5796 l!9164 lambda!92078))))

(assert (=> start!238552 e!1548808))

(declare-fun e!1548809 () Bool)

(assert (=> start!238552 e!1548809))

(assert (=> start!238552 e!1548813))

(assert (=> start!238552 e!1548810))

(declare-fun b!2437070 () Bool)

(declare-fun tp!773975 () Bool)

(declare-fun tp!773970 () Bool)

(assert (=> b!2437070 (= e!1548809 (and tp!773975 tp!773970))))

(declare-fun b!2437071 () Bool)

(declare-fun validRegex!2876 (Regex!7162) Bool)

(assert (=> b!2437071 (= e!1548805 (validRegex!2876 lt!877597))))

(assert (=> b!2437071 e!1548811))

(declare-fun res!1034549 () Bool)

(assert (=> b!2437071 (=> (not res!1034549) (not e!1548811))))

(declare-fun ++!7067 (List!28560 List!28560) List!28560)

(assert (=> b!2437071 (= res!1034549 (matchR!3277 lt!877591 (++!7067 s!9460 Nil!28462)))))

(assert (=> b!2437071 (= lt!877591 (Concat!11798 lt!877597 EmptyExpr!7162))))

(declare-fun lt!877589 () Unit!41707)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!109 (Regex!7162 Regex!7162 List!28560 List!28560) Unit!41707)

(assert (=> b!2437071 (= lt!877589 (lemmaTwoRegexMatchThenConcatMatchesConcatString!109 lt!877597 EmptyExpr!7162 s!9460 Nil!28462))))

(assert (= (and start!238552 res!1034548) b!2437059))

(assert (= (and b!2437059 res!1034547) b!2437069))

(assert (= (and b!2437069 (not res!1034544)) b!2437067))

(assert (= (and b!2437067 (not res!1034545)) b!2437060))

(assert (= (and b!2437060 (not res!1034542)) b!2437066))

(assert (= (and b!2437066 (not res!1034546)) b!2437061))

(assert (= (and b!2437061 (not res!1034543)) b!2437057))

(assert (= (and b!2437057 (not res!1034541)) b!2437071))

(assert (= (and b!2437071 res!1034549) b!2437062))

(assert (= (and start!238552 (is-Cons!28463 l!9164)) b!2437070))

(assert (= (and start!238552 (is-ElementMatch!7162 r!13927)) b!2437068))

(assert (= (and start!238552 (is-Concat!11798 r!13927)) b!2437065))

(assert (= (and start!238552 (is-Star!7162 r!13927)) b!2437063))

(assert (= (and start!238552 (is-Union!7162 r!13927)) b!2437058))

(assert (= (and start!238552 (is-Cons!28462 s!9460)) b!2437064))

(declare-fun m!2816533 () Bool)

(assert (=> b!2437069 m!2816533))

(declare-fun m!2816535 () Bool)

(assert (=> b!2437069 m!2816535))

(declare-fun m!2816537 () Bool)

(assert (=> b!2437069 m!2816537))

(declare-fun m!2816539 () Bool)

(assert (=> b!2437059 m!2816539))

(declare-fun m!2816541 () Bool)

(assert (=> b!2437062 m!2816541))

(declare-fun m!2816543 () Bool)

(assert (=> b!2437071 m!2816543))

(declare-fun m!2816545 () Bool)

(assert (=> b!2437071 m!2816545))

(assert (=> b!2437071 m!2816545))

(declare-fun m!2816547 () Bool)

(assert (=> b!2437071 m!2816547))

(declare-fun m!2816549 () Bool)

(assert (=> b!2437071 m!2816549))

(declare-fun m!2816551 () Bool)

(assert (=> b!2437057 m!2816551))

(declare-fun m!2816553 () Bool)

(assert (=> b!2437057 m!2816553))

(declare-fun m!2816555 () Bool)

(assert (=> b!2437066 m!2816555))

(declare-fun m!2816557 () Bool)

(assert (=> b!2437066 m!2816557))

(declare-fun m!2816559 () Bool)

(assert (=> b!2437061 m!2816559))

(declare-fun m!2816561 () Bool)

(assert (=> b!2437060 m!2816561))

(declare-fun m!2816563 () Bool)

(assert (=> b!2437067 m!2816563))

(declare-fun m!2816565 () Bool)

(assert (=> b!2437067 m!2816565))

(declare-fun m!2816567 () Bool)

(assert (=> b!2437067 m!2816567))

(assert (=> b!2437067 m!2816563))

(declare-fun m!2816569 () Bool)

(assert (=> b!2437067 m!2816569))

(assert (=> b!2437067 m!2816569))

(declare-fun m!2816571 () Bool)

(assert (=> b!2437067 m!2816571))

(declare-fun m!2816573 () Bool)

(assert (=> b!2437067 m!2816573))

(declare-fun m!2816575 () Bool)

(assert (=> start!238552 m!2816575))

(push 1)

(assert (not b!2437063))

(assert (not b!2437061))

(assert (not b!2437064))

(assert (not start!238552))

(assert tp_is_empty!11737)

(assert (not b!2437067))

(assert (not b!2437059))

(assert (not b!2437065))

(assert (not b!2437062))

(assert (not b!2437060))

(assert (not b!2437057))

(assert (not b!2437071))

(assert (not b!2437066))

(assert (not b!2437058))

(assert (not b!2437070))

(assert (not b!2437069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!704174 () Bool)

(declare-fun isEmpty!16507 (Option!5651) Bool)

(assert (=> d!704174 (= (isDefined!4477 (findConcatSeparation!759 (regOne!14836 r!13927) (regTwo!14836 r!13927) Nil!28462 s!9460 s!9460)) (not (isEmpty!16507 (findConcatSeparation!759 (regOne!14836 r!13927) (regTwo!14836 r!13927) Nil!28462 s!9460 s!9460))))))

(declare-fun bs!464637 () Bool)

(assert (= bs!464637 d!704174))

(assert (=> bs!464637 m!2816563))

(declare-fun m!2816621 () Bool)

(assert (=> bs!464637 m!2816621))

(assert (=> b!2437067 d!704174))

(declare-fun bs!464638 () Bool)

(declare-fun d!704176 () Bool)

(assert (= bs!464638 (and d!704176 b!2437067)))

(declare-fun lambda!92094 () Int)

(assert (=> bs!464638 (= lambda!92094 lambda!92079)))

(assert (=> bs!464638 (not (= lambda!92094 lambda!92080))))

(assert (=> d!704176 true))

(assert (=> d!704176 true))

(assert (=> d!704176 true))

(assert (=> d!704176 (= (isDefined!4477 (findConcatSeparation!759 (regOne!14836 r!13927) (regTwo!14836 r!13927) Nil!28462 s!9460 s!9460)) (Exists!1198 lambda!92094))))

(declare-fun lt!877631 () Unit!41707)

(declare-fun choose!14454 (Regex!7162 Regex!7162 List!28560) Unit!41707)

(assert (=> d!704176 (= lt!877631 (choose!14454 (regOne!14836 r!13927) (regTwo!14836 r!13927) s!9460))))

(assert (=> d!704176 (validRegex!2876 (regOne!14836 r!13927))))

(assert (=> d!704176 (= (lemmaFindConcatSeparationEquivalentToExists!697 (regOne!14836 r!13927) (regTwo!14836 r!13927) s!9460) lt!877631)))

(declare-fun bs!464639 () Bool)

(assert (= bs!464639 d!704176))

(assert (=> bs!464639 m!2816563))

(declare-fun m!2816623 () Bool)

(assert (=> bs!464639 m!2816623))

(declare-fun m!2816625 () Bool)

(assert (=> bs!464639 m!2816625))

(assert (=> bs!464639 m!2816563))

(assert (=> bs!464639 m!2816565))

(declare-fun m!2816627 () Bool)

(assert (=> bs!464639 m!2816627))

(assert (=> b!2437067 d!704176))

(declare-fun bs!464640 () Bool)

(declare-fun d!704178 () Bool)

(assert (= bs!464640 (and d!704178 b!2437067)))

(declare-fun lambda!92099 () Int)

(assert (=> bs!464640 (= lambda!92099 lambda!92079)))

(assert (=> bs!464640 (not (= lambda!92099 lambda!92080))))

(declare-fun bs!464641 () Bool)

(assert (= bs!464641 (and d!704178 d!704176)))

(assert (=> bs!464641 (= lambda!92099 lambda!92094)))

(assert (=> d!704178 true))

(assert (=> d!704178 true))

(assert (=> d!704178 true))

(declare-fun lambda!92100 () Int)

(assert (=> bs!464640 (not (= lambda!92100 lambda!92079))))

(assert (=> bs!464640 (= lambda!92100 lambda!92080)))

(assert (=> bs!464641 (not (= lambda!92100 lambda!92094))))

(declare-fun bs!464642 () Bool)

(assert (= bs!464642 d!704178))

(assert (=> bs!464642 (not (= lambda!92100 lambda!92099))))

(assert (=> d!704178 true))

(assert (=> d!704178 true))

(assert (=> d!704178 true))

(assert (=> d!704178 (= (Exists!1198 lambda!92099) (Exists!1198 lambda!92100))))

(declare-fun lt!877634 () Unit!41707)

(declare-fun choose!14455 (Regex!7162 Regex!7162 List!28560) Unit!41707)

(assert (=> d!704178 (= lt!877634 (choose!14455 (regOne!14836 r!13927) (regTwo!14836 r!13927) s!9460))))

(assert (=> d!704178 (validRegex!2876 (regOne!14836 r!13927))))

(assert (=> d!704178 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!443 (regOne!14836 r!13927) (regTwo!14836 r!13927) s!9460) lt!877634)))

(declare-fun m!2816629 () Bool)

(assert (=> bs!464642 m!2816629))

(declare-fun m!2816631 () Bool)

(assert (=> bs!464642 m!2816631))

(declare-fun m!2816633 () Bool)

(assert (=> bs!464642 m!2816633))

(assert (=> bs!464642 m!2816625))

(assert (=> b!2437067 d!704178))

(declare-fun b!2437187 () Bool)

(declare-fun e!1548878 () Option!5651)

(assert (=> b!2437187 (= e!1548878 None!5650)))

(declare-fun d!704182 () Bool)

(declare-fun e!1548879 () Bool)

(assert (=> d!704182 e!1548879))

(declare-fun res!1034616 () Bool)

(assert (=> d!704182 (=> res!1034616 e!1548879)))

(declare-fun e!1548875 () Bool)

(assert (=> d!704182 (= res!1034616 e!1548875)))

(declare-fun res!1034617 () Bool)

(assert (=> d!704182 (=> (not res!1034617) (not e!1548875))))

(declare-fun lt!877644 () Option!5651)

(assert (=> d!704182 (= res!1034617 (isDefined!4477 lt!877644))))

(declare-fun e!1548877 () Option!5651)

(assert (=> d!704182 (= lt!877644 e!1548877)))

(declare-fun c!388875 () Bool)

(declare-fun e!1548876 () Bool)

(assert (=> d!704182 (= c!388875 e!1548876)))

(declare-fun res!1034619 () Bool)

(assert (=> d!704182 (=> (not res!1034619) (not e!1548876))))

(assert (=> d!704182 (= res!1034619 (matchR!3277 (regOne!14836 r!13927) Nil!28462))))

(assert (=> d!704182 (validRegex!2876 (regOne!14836 r!13927))))

(assert (=> d!704182 (= (findConcatSeparation!759 (regOne!14836 r!13927) (regTwo!14836 r!13927) Nil!28462 s!9460 s!9460) lt!877644)))

(declare-fun b!2437188 () Bool)

(declare-fun lt!877643 () Unit!41707)

(declare-fun lt!877645 () Unit!41707)

(assert (=> b!2437188 (= lt!877643 lt!877645)))

(assert (=> b!2437188 (= (++!7067 (++!7067 Nil!28462 (Cons!28462 (h!33863 s!9460) Nil!28462)) (t!208537 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!693 (List!28560 C!14482 List!28560 List!28560) Unit!41707)

(assert (=> b!2437188 (= lt!877645 (lemmaMoveElementToOtherListKeepsConcatEq!693 Nil!28462 (h!33863 s!9460) (t!208537 s!9460) s!9460))))

(assert (=> b!2437188 (= e!1548878 (findConcatSeparation!759 (regOne!14836 r!13927) (regTwo!14836 r!13927) (++!7067 Nil!28462 (Cons!28462 (h!33863 s!9460) Nil!28462)) (t!208537 s!9460) s!9460))))

(declare-fun b!2437189 () Bool)

(declare-fun get!8780 (Option!5651) tuple2!28080)

(assert (=> b!2437189 (= e!1548875 (= (++!7067 (_1!16581 (get!8780 lt!877644)) (_2!16581 (get!8780 lt!877644))) s!9460))))

(declare-fun b!2437190 () Bool)

(declare-fun res!1034618 () Bool)

(assert (=> b!2437190 (=> (not res!1034618) (not e!1548875))))

(assert (=> b!2437190 (= res!1034618 (matchR!3277 (regTwo!14836 r!13927) (_2!16581 (get!8780 lt!877644))))))

(declare-fun b!2437191 () Bool)

(assert (=> b!2437191 (= e!1548877 e!1548878)))

(declare-fun c!388874 () Bool)

(assert (=> b!2437191 (= c!388874 (is-Nil!28462 s!9460))))

(declare-fun b!2437192 () Bool)

(assert (=> b!2437192 (= e!1548879 (not (isDefined!4477 lt!877644)))))

(declare-fun b!2437193 () Bool)

(declare-fun res!1034615 () Bool)

(assert (=> b!2437193 (=> (not res!1034615) (not e!1548875))))

(assert (=> b!2437193 (= res!1034615 (matchR!3277 (regOne!14836 r!13927) (_1!16581 (get!8780 lt!877644))))))

(declare-fun b!2437194 () Bool)

(assert (=> b!2437194 (= e!1548876 (matchR!3277 (regTwo!14836 r!13927) s!9460))))

(declare-fun b!2437195 () Bool)

(assert (=> b!2437195 (= e!1548877 (Some!5650 (tuple2!28081 Nil!28462 s!9460)))))

(assert (= (and d!704182 res!1034619) b!2437194))

(assert (= (and d!704182 c!388875) b!2437195))

(assert (= (and d!704182 (not c!388875)) b!2437191))

(assert (= (and b!2437191 c!388874) b!2437187))

(assert (= (and b!2437191 (not c!388874)) b!2437188))

(assert (= (and d!704182 res!1034617) b!2437193))

(assert (= (and b!2437193 res!1034615) b!2437190))

(assert (= (and b!2437190 res!1034618) b!2437189))

(assert (= (and d!704182 (not res!1034616)) b!2437192))

(declare-fun m!2816635 () Bool)

(assert (=> b!2437188 m!2816635))

(assert (=> b!2437188 m!2816635))

(declare-fun m!2816637 () Bool)

(assert (=> b!2437188 m!2816637))

(declare-fun m!2816639 () Bool)

(assert (=> b!2437188 m!2816639))

(assert (=> b!2437188 m!2816635))

(declare-fun m!2816641 () Bool)

(assert (=> b!2437188 m!2816641))

(declare-fun m!2816643 () Bool)

(assert (=> b!2437192 m!2816643))

(declare-fun m!2816645 () Bool)

(assert (=> b!2437193 m!2816645))

(declare-fun m!2816647 () Bool)

(assert (=> b!2437193 m!2816647))

(assert (=> b!2437190 m!2816645))

(declare-fun m!2816649 () Bool)

(assert (=> b!2437190 m!2816649))

(assert (=> d!704182 m!2816643))

(declare-fun m!2816651 () Bool)

(assert (=> d!704182 m!2816651))

(assert (=> d!704182 m!2816625))

(assert (=> b!2437189 m!2816645))

(declare-fun m!2816653 () Bool)

(assert (=> b!2437189 m!2816653))

(declare-fun m!2816655 () Bool)

(assert (=> b!2437194 m!2816655))

(assert (=> b!2437067 d!704182))

(declare-fun d!704184 () Bool)

(declare-fun choose!14456 (Int) Bool)

(assert (=> d!704184 (= (Exists!1198 lambda!92080) (choose!14456 lambda!92080))))

(declare-fun bs!464643 () Bool)

(assert (= bs!464643 d!704184))

(declare-fun m!2816657 () Bool)

(assert (=> bs!464643 m!2816657))

(assert (=> b!2437067 d!704184))

(declare-fun d!704186 () Bool)

(assert (=> d!704186 (= (Exists!1198 lambda!92079) (choose!14456 lambda!92079))))

(declare-fun bs!464644 () Bool)

(assert (= bs!464644 d!704186))

(declare-fun m!2816659 () Bool)

(assert (=> bs!464644 m!2816659))

(assert (=> b!2437067 d!704186))

(declare-fun d!704188 () Bool)

(assert (=> d!704188 (= (isEmpty!16505 lt!877598) (is-Nil!28463 lt!877598))))

(assert (=> b!2437066 d!704188))

(declare-fun d!704190 () Bool)

(assert (=> d!704190 (= (tail!3795 l!9164) (t!208538 l!9164))))

(assert (=> b!2437066 d!704190))

(declare-fun d!704192 () Bool)

(declare-fun res!1034626 () Bool)

(declare-fun e!1548890 () Bool)

(assert (=> d!704192 (=> res!1034626 e!1548890)))

(assert (=> d!704192 (= res!1034626 (is-Nil!28463 l!9164))))

(assert (=> d!704192 (= (forall!5796 l!9164 lambda!92078) e!1548890)))

(declare-fun b!2437210 () Bool)

(declare-fun e!1548891 () Bool)

(assert (=> b!2437210 (= e!1548890 e!1548891)))

(declare-fun res!1034627 () Bool)

(assert (=> b!2437210 (=> (not res!1034627) (not e!1548891))))

(declare-fun dynLambda!12249 (Int Regex!7162) Bool)

(assert (=> b!2437210 (= res!1034627 (dynLambda!12249 lambda!92078 (h!33864 l!9164)))))

(declare-fun b!2437211 () Bool)

(assert (=> b!2437211 (= e!1548891 (forall!5796 (t!208538 l!9164) lambda!92078))))

(assert (= (and d!704192 (not res!1034626)) b!2437210))

(assert (= (and b!2437210 res!1034627) b!2437211))

(declare-fun b_lambda!74895 () Bool)

(assert (=> (not b_lambda!74895) (not b!2437210)))

(declare-fun m!2816675 () Bool)

(assert (=> b!2437210 m!2816675))

(declare-fun m!2816677 () Bool)

(assert (=> b!2437211 m!2816677))

(assert (=> start!238552 d!704192))

(declare-fun bs!464646 () Bool)

(declare-fun d!704196 () Bool)

(assert (= bs!464646 (and d!704196 start!238552)))

(declare-fun lambda!92106 () Int)

(assert (=> bs!464646 (= lambda!92106 lambda!92078)))

(declare-fun b!2437232 () Bool)

(declare-fun e!1548906 () Bool)

(declare-fun lt!877649 () Regex!7162)

(assert (=> b!2437232 (= e!1548906 (= lt!877649 (head!5522 lt!877598)))))

(declare-fun b!2437233 () Bool)

(declare-fun e!1548909 () Bool)

(assert (=> b!2437233 (= e!1548909 e!1548906)))

(declare-fun c!388889 () Bool)

(assert (=> b!2437233 (= c!388889 (isEmpty!16505 (tail!3795 lt!877598)))))

(declare-fun b!2437234 () Bool)

(declare-fun e!1548904 () Regex!7162)

(assert (=> b!2437234 (= e!1548904 (Concat!11798 (h!33864 lt!877598) (generalisedConcat!263 (t!208538 lt!877598))))))

(declare-fun b!2437235 () Bool)

(assert (=> b!2437235 (= e!1548904 EmptyExpr!7162)))

(declare-fun b!2437236 () Bool)

(declare-fun e!1548905 () Bool)

(assert (=> b!2437236 (= e!1548905 e!1548909)))

(declare-fun c!388888 () Bool)

(assert (=> b!2437236 (= c!388888 (isEmpty!16505 lt!877598))))

(declare-fun b!2437237 () Bool)

(declare-fun e!1548908 () Regex!7162)

(assert (=> b!2437237 (= e!1548908 (h!33864 lt!877598))))

(declare-fun b!2437238 () Bool)

(assert (=> b!2437238 (= e!1548908 e!1548904)))

(declare-fun c!388891 () Bool)

(assert (=> b!2437238 (= c!388891 (is-Cons!28463 lt!877598))))

(declare-fun b!2437239 () Bool)

(declare-fun isEmptyExpr!209 (Regex!7162) Bool)

(assert (=> b!2437239 (= e!1548909 (isEmptyExpr!209 lt!877649))))

(assert (=> d!704196 e!1548905))

(declare-fun res!1034633 () Bool)

(assert (=> d!704196 (=> (not res!1034633) (not e!1548905))))

(assert (=> d!704196 (= res!1034633 (validRegex!2876 lt!877649))))

(assert (=> d!704196 (= lt!877649 e!1548908)))

(declare-fun c!388890 () Bool)

(declare-fun e!1548907 () Bool)

(assert (=> d!704196 (= c!388890 e!1548907)))

(declare-fun res!1034632 () Bool)

(assert (=> d!704196 (=> (not res!1034632) (not e!1548907))))

(assert (=> d!704196 (= res!1034632 (is-Cons!28463 lt!877598))))

(assert (=> d!704196 (forall!5796 lt!877598 lambda!92106)))

(assert (=> d!704196 (= (generalisedConcat!263 lt!877598) lt!877649)))

(declare-fun b!2437240 () Bool)

(assert (=> b!2437240 (= e!1548907 (isEmpty!16505 (t!208538 lt!877598)))))

(declare-fun b!2437241 () Bool)

(declare-fun isConcat!209 (Regex!7162) Bool)

(assert (=> b!2437241 (= e!1548906 (isConcat!209 lt!877649))))

(assert (= (and d!704196 res!1034632) b!2437240))

(assert (= (and d!704196 c!388890) b!2437237))

(assert (= (and d!704196 (not c!388890)) b!2437238))

(assert (= (and b!2437238 c!388891) b!2437234))

(assert (= (and b!2437238 (not c!388891)) b!2437235))

(assert (= (and d!704196 res!1034633) b!2437236))

(assert (= (and b!2437236 c!388888) b!2437239))

(assert (= (and b!2437236 (not c!388888)) b!2437233))

(assert (= (and b!2437233 c!388889) b!2437232))

(assert (= (and b!2437233 (not c!388889)) b!2437241))

(assert (=> b!2437236 m!2816555))

(declare-fun m!2816679 () Bool)

(assert (=> b!2437241 m!2816679))

(declare-fun m!2816681 () Bool)

(assert (=> b!2437240 m!2816681))

(declare-fun m!2816683 () Bool)

(assert (=> b!2437239 m!2816683))

(declare-fun m!2816685 () Bool)

(assert (=> b!2437232 m!2816685))

(declare-fun m!2816687 () Bool)

(assert (=> b!2437234 m!2816687))

(declare-fun m!2816689 () Bool)

(assert (=> d!704196 m!2816689))

(declare-fun m!2816691 () Bool)

(assert (=> d!704196 m!2816691))

(declare-fun m!2816693 () Bool)

(assert (=> b!2437233 m!2816693))

(assert (=> b!2437233 m!2816693))

(declare-fun m!2816695 () Bool)

(assert (=> b!2437233 m!2816695))

(assert (=> b!2437061 d!704196))

(declare-fun d!704198 () Bool)

(assert (=> d!704198 (= (isEmpty!16505 l!9164) (is-Nil!28463 l!9164))))

(assert (=> b!2437060 d!704198))

(declare-fun d!704200 () Bool)

(declare-fun res!1034664 () Bool)

(declare-fun e!1548938 () Bool)

(assert (=> d!704200 (=> res!1034664 e!1548938)))

(assert (=> d!704200 (= res!1034664 (is-ElementMatch!7162 lt!877597))))

(assert (=> d!704200 (= (validRegex!2876 lt!877597) e!1548938)))

(declare-fun b!2437288 () Bool)

(declare-fun e!1548943 () Bool)

(declare-fun call!149280 () Bool)

(assert (=> b!2437288 (= e!1548943 call!149280)))

(declare-fun c!388903 () Bool)

(declare-fun bm!149274 () Bool)

(declare-fun c!388902 () Bool)

(declare-fun call!149279 () Bool)

(assert (=> bm!149274 (= call!149279 (validRegex!2876 (ite c!388903 (reg!7491 lt!877597) (ite c!388902 (regOne!14837 lt!877597) (regTwo!14836 lt!877597)))))))

(declare-fun b!2437289 () Bool)

(declare-fun e!1548942 () Bool)

(declare-fun e!1548939 () Bool)

(assert (=> b!2437289 (= e!1548942 e!1548939)))

(declare-fun res!1034662 () Bool)

(declare-fun nullable!2191 (Regex!7162) Bool)

(assert (=> b!2437289 (= res!1034662 (not (nullable!2191 (reg!7491 lt!877597))))))

(assert (=> b!2437289 (=> (not res!1034662) (not e!1548939))))

(declare-fun b!2437290 () Bool)

(declare-fun e!1548941 () Bool)

(declare-fun call!149281 () Bool)

(assert (=> b!2437290 (= e!1548941 call!149281)))

(declare-fun b!2437291 () Bool)

(assert (=> b!2437291 (= e!1548939 call!149279)))

(declare-fun b!2437292 () Bool)

(declare-fun res!1034661 () Bool)

(declare-fun e!1548944 () Bool)

(assert (=> b!2437292 (=> res!1034661 e!1548944)))

(assert (=> b!2437292 (= res!1034661 (not (is-Concat!11798 lt!877597)))))

(declare-fun e!1548940 () Bool)

(assert (=> b!2437292 (= e!1548940 e!1548944)))

(declare-fun b!2437293 () Bool)

(assert (=> b!2437293 (= e!1548942 e!1548940)))

(assert (=> b!2437293 (= c!388902 (is-Union!7162 lt!877597))))

(declare-fun b!2437294 () Bool)

(assert (=> b!2437294 (= e!1548938 e!1548942)))

(assert (=> b!2437294 (= c!388903 (is-Star!7162 lt!877597))))

(declare-fun b!2437295 () Bool)

(declare-fun res!1034660 () Bool)

(assert (=> b!2437295 (=> (not res!1034660) (not e!1548941))))

(assert (=> b!2437295 (= res!1034660 call!149280)))

(assert (=> b!2437295 (= e!1548940 e!1548941)))

(declare-fun bm!149275 () Bool)

(assert (=> bm!149275 (= call!149280 call!149279)))

(declare-fun bm!149276 () Bool)

(assert (=> bm!149276 (= call!149281 (validRegex!2876 (ite c!388902 (regTwo!14837 lt!877597) (regOne!14836 lt!877597))))))

(declare-fun b!2437296 () Bool)

(assert (=> b!2437296 (= e!1548944 e!1548943)))

(declare-fun res!1034663 () Bool)

(assert (=> b!2437296 (=> (not res!1034663) (not e!1548943))))

(assert (=> b!2437296 (= res!1034663 call!149281)))

(assert (= (and d!704200 (not res!1034664)) b!2437294))

(assert (= (and b!2437294 c!388903) b!2437289))

(assert (= (and b!2437294 (not c!388903)) b!2437293))

(assert (= (and b!2437289 res!1034662) b!2437291))

(assert (= (and b!2437293 c!388902) b!2437295))

(assert (= (and b!2437293 (not c!388902)) b!2437292))

(assert (= (and b!2437295 res!1034660) b!2437290))

(assert (= (and b!2437292 (not res!1034661)) b!2437296))

(assert (= (and b!2437296 res!1034663) b!2437288))

(assert (= (or b!2437295 b!2437288) bm!149275))

(assert (= (or b!2437290 b!2437296) bm!149276))

(assert (= (or b!2437291 bm!149275) bm!149274))

(declare-fun m!2816697 () Bool)

(assert (=> bm!149274 m!2816697))

(declare-fun m!2816699 () Bool)

(assert (=> b!2437289 m!2816699))

(declare-fun m!2816701 () Bool)

(assert (=> bm!149276 m!2816701))

(assert (=> b!2437071 d!704200))

(declare-fun b!2437339 () Bool)

(declare-fun e!1548966 () Bool)

(declare-fun head!5524 (List!28560) C!14482)

(assert (=> b!2437339 (= e!1548966 (not (= (head!5524 (++!7067 s!9460 Nil!28462)) (c!388860 lt!877591))))))

(declare-fun b!2437340 () Bool)

(declare-fun e!1548971 () Bool)

(declare-fun lt!877655 () Bool)

(assert (=> b!2437340 (= e!1548971 (not lt!877655))))

(declare-fun b!2437341 () Bool)

(declare-fun e!1548968 () Bool)

(assert (=> b!2437341 (= e!1548968 e!1548971)))

(declare-fun c!388914 () Bool)

(assert (=> b!2437341 (= c!388914 (is-EmptyLang!7162 lt!877591))))

(declare-fun b!2437342 () Bool)

(declare-fun e!1548967 () Bool)

(assert (=> b!2437342 (= e!1548967 (nullable!2191 lt!877591))))

(declare-fun bm!149282 () Bool)

(declare-fun call!149287 () Bool)

(declare-fun isEmpty!16508 (List!28560) Bool)

(assert (=> bm!149282 (= call!149287 (isEmpty!16508 (++!7067 s!9460 Nil!28462)))))

(declare-fun b!2437343 () Bool)

(declare-fun e!1548970 () Bool)

(declare-fun e!1548972 () Bool)

(assert (=> b!2437343 (= e!1548970 e!1548972)))

(declare-fun res!1034689 () Bool)

(assert (=> b!2437343 (=> (not res!1034689) (not e!1548972))))

(assert (=> b!2437343 (= res!1034689 (not lt!877655))))

(declare-fun b!2437344 () Bool)

(declare-fun res!1034692 () Bool)

(declare-fun e!1548969 () Bool)

(assert (=> b!2437344 (=> (not res!1034692) (not e!1548969))))

(assert (=> b!2437344 (= res!1034692 (not call!149287))))

(declare-fun b!2437345 () Bool)

(declare-fun res!1034691 () Bool)

(assert (=> b!2437345 (=> res!1034691 e!1548970)))

(assert (=> b!2437345 (= res!1034691 e!1548969)))

(declare-fun res!1034694 () Bool)

(assert (=> b!2437345 (=> (not res!1034694) (not e!1548969))))

(assert (=> b!2437345 (= res!1034694 lt!877655)))

(declare-fun b!2437346 () Bool)

(assert (=> b!2437346 (= e!1548972 e!1548966)))

(declare-fun res!1034690 () Bool)

(assert (=> b!2437346 (=> res!1034690 e!1548966)))

(assert (=> b!2437346 (= res!1034690 call!149287)))

(declare-fun d!704202 () Bool)

(assert (=> d!704202 e!1548968))

(declare-fun c!388915 () Bool)

(assert (=> d!704202 (= c!388915 (is-EmptyExpr!7162 lt!877591))))

(assert (=> d!704202 (= lt!877655 e!1548967)))

(declare-fun c!388913 () Bool)

(assert (=> d!704202 (= c!388913 (isEmpty!16508 (++!7067 s!9460 Nil!28462)))))

(assert (=> d!704202 (validRegex!2876 lt!877591)))

(assert (=> d!704202 (= (matchR!3277 lt!877591 (++!7067 s!9460 Nil!28462)) lt!877655)))

(declare-fun b!2437347 () Bool)

(assert (=> b!2437347 (= e!1548968 (= lt!877655 call!149287))))

(declare-fun b!2437348 () Bool)

(declare-fun res!1034695 () Bool)

(assert (=> b!2437348 (=> res!1034695 e!1548970)))

(assert (=> b!2437348 (= res!1034695 (not (is-ElementMatch!7162 lt!877591)))))

(assert (=> b!2437348 (= e!1548971 e!1548970)))

(declare-fun b!2437349 () Bool)

(assert (=> b!2437349 (= e!1548969 (= (head!5524 (++!7067 s!9460 Nil!28462)) (c!388860 lt!877591)))))

(declare-fun b!2437350 () Bool)

(declare-fun res!1034696 () Bool)

(assert (=> b!2437350 (=> (not res!1034696) (not e!1548969))))

(declare-fun tail!3797 (List!28560) List!28560)

(assert (=> b!2437350 (= res!1034696 (isEmpty!16508 (tail!3797 (++!7067 s!9460 Nil!28462))))))

(declare-fun b!2437351 () Bool)

(declare-fun derivativeStep!1845 (Regex!7162 C!14482) Regex!7162)

(assert (=> b!2437351 (= e!1548967 (matchR!3277 (derivativeStep!1845 lt!877591 (head!5524 (++!7067 s!9460 Nil!28462))) (tail!3797 (++!7067 s!9460 Nil!28462))))))

(declare-fun b!2437352 () Bool)

(declare-fun res!1034693 () Bool)

(assert (=> b!2437352 (=> res!1034693 e!1548966)))

(assert (=> b!2437352 (= res!1034693 (not (isEmpty!16508 (tail!3797 (++!7067 s!9460 Nil!28462)))))))

(assert (= (and d!704202 c!388913) b!2437342))

(assert (= (and d!704202 (not c!388913)) b!2437351))

(assert (= (and d!704202 c!388915) b!2437347))

(assert (= (and d!704202 (not c!388915)) b!2437341))

(assert (= (and b!2437341 c!388914) b!2437340))

(assert (= (and b!2437341 (not c!388914)) b!2437348))

(assert (= (and b!2437348 (not res!1034695)) b!2437345))

(assert (= (and b!2437345 res!1034694) b!2437344))

(assert (= (and b!2437344 res!1034692) b!2437350))

(assert (= (and b!2437350 res!1034696) b!2437349))

(assert (= (and b!2437345 (not res!1034691)) b!2437343))

(assert (= (and b!2437343 res!1034689) b!2437346))

(assert (= (and b!2437346 (not res!1034690)) b!2437352))

(assert (= (and b!2437352 (not res!1034693)) b!2437339))

(assert (= (or b!2437347 b!2437344 b!2437346) bm!149282))

(assert (=> d!704202 m!2816545))

(declare-fun m!2816719 () Bool)

(assert (=> d!704202 m!2816719))

(declare-fun m!2816721 () Bool)

(assert (=> d!704202 m!2816721))

(assert (=> b!2437350 m!2816545))

(declare-fun m!2816723 () Bool)

(assert (=> b!2437350 m!2816723))

(assert (=> b!2437350 m!2816723))

(declare-fun m!2816725 () Bool)

(assert (=> b!2437350 m!2816725))

(declare-fun m!2816727 () Bool)

(assert (=> b!2437342 m!2816727))

(assert (=> b!2437339 m!2816545))

(declare-fun m!2816729 () Bool)

(assert (=> b!2437339 m!2816729))

(assert (=> bm!149282 m!2816545))

(assert (=> bm!149282 m!2816719))

(assert (=> b!2437351 m!2816545))

(assert (=> b!2437351 m!2816729))

(assert (=> b!2437351 m!2816729))

(declare-fun m!2816731 () Bool)

(assert (=> b!2437351 m!2816731))

(assert (=> b!2437351 m!2816545))

(assert (=> b!2437351 m!2816723))

(assert (=> b!2437351 m!2816731))

(assert (=> b!2437351 m!2816723))

(declare-fun m!2816733 () Bool)

(assert (=> b!2437351 m!2816733))

(assert (=> b!2437349 m!2816545))

(assert (=> b!2437349 m!2816729))

(assert (=> b!2437352 m!2816545))

(assert (=> b!2437352 m!2816723))

(assert (=> b!2437352 m!2816723))

(assert (=> b!2437352 m!2816725))

(assert (=> b!2437071 d!704202))

(declare-fun b!2437368 () Bool)

(declare-fun e!1548984 () List!28560)

(assert (=> b!2437368 (= e!1548984 (Cons!28462 (h!33863 s!9460) (++!7067 (t!208537 s!9460) Nil!28462)))))

(declare-fun b!2437367 () Bool)

(assert (=> b!2437367 (= e!1548984 Nil!28462)))

(declare-fun b!2437370 () Bool)

(declare-fun e!1548983 () Bool)

(declare-fun lt!877658 () List!28560)

(assert (=> b!2437370 (= e!1548983 (or (not (= Nil!28462 Nil!28462)) (= lt!877658 s!9460)))))

(declare-fun b!2437369 () Bool)

(declare-fun res!1034708 () Bool)

(assert (=> b!2437369 (=> (not res!1034708) (not e!1548983))))

(declare-fun size!22258 (List!28560) Int)

(assert (=> b!2437369 (= res!1034708 (= (size!22258 lt!877658) (+ (size!22258 s!9460) (size!22258 Nil!28462))))))

(declare-fun d!704206 () Bool)

(assert (=> d!704206 e!1548983))

(declare-fun res!1034707 () Bool)

(assert (=> d!704206 (=> (not res!1034707) (not e!1548983))))

(declare-fun content!3920 (List!28560) (Set C!14482))

(assert (=> d!704206 (= res!1034707 (= (content!3920 lt!877658) (set.union (content!3920 s!9460) (content!3920 Nil!28462))))))

(assert (=> d!704206 (= lt!877658 e!1548984)))

(declare-fun c!388918 () Bool)

(assert (=> d!704206 (= c!388918 (is-Nil!28462 s!9460))))

(assert (=> d!704206 (= (++!7067 s!9460 Nil!28462) lt!877658)))

(assert (= (and d!704206 c!388918) b!2437367))

(assert (= (and d!704206 (not c!388918)) b!2437368))

(assert (= (and d!704206 res!1034707) b!2437369))

(assert (= (and b!2437369 res!1034708) b!2437370))

(declare-fun m!2816739 () Bool)

(assert (=> b!2437368 m!2816739))

(declare-fun m!2816741 () Bool)

(assert (=> b!2437369 m!2816741))

(declare-fun m!2816743 () Bool)

(assert (=> b!2437369 m!2816743))

(declare-fun m!2816745 () Bool)

(assert (=> b!2437369 m!2816745))

(declare-fun m!2816747 () Bool)

(assert (=> d!704206 m!2816747))

(declare-fun m!2816749 () Bool)

(assert (=> d!704206 m!2816749))

(declare-fun m!2816751 () Bool)

(assert (=> d!704206 m!2816751))

(assert (=> b!2437071 d!704206))

(declare-fun d!704210 () Bool)

(assert (=> d!704210 (matchR!3277 (Concat!11798 lt!877597 EmptyExpr!7162) (++!7067 s!9460 Nil!28462))))

(declare-fun lt!877661 () Unit!41707)

(declare-fun choose!14457 (Regex!7162 Regex!7162 List!28560 List!28560) Unit!41707)

(assert (=> d!704210 (= lt!877661 (choose!14457 lt!877597 EmptyExpr!7162 s!9460 Nil!28462))))

(declare-fun e!1548987 () Bool)

(assert (=> d!704210 e!1548987))

(declare-fun res!1034711 () Bool)

(assert (=> d!704210 (=> (not res!1034711) (not e!1548987))))

(assert (=> d!704210 (= res!1034711 (validRegex!2876 lt!877597))))

(assert (=> d!704210 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!109 lt!877597 EmptyExpr!7162 s!9460 Nil!28462) lt!877661)))

(declare-fun b!2437373 () Bool)

(assert (=> b!2437373 (= e!1548987 (validRegex!2876 EmptyExpr!7162))))

(assert (= (and d!704210 res!1034711) b!2437373))

(assert (=> d!704210 m!2816545))

(assert (=> d!704210 m!2816545))

(declare-fun m!2816753 () Bool)

(assert (=> d!704210 m!2816753))

(declare-fun m!2816755 () Bool)

(assert (=> d!704210 m!2816755))

(assert (=> d!704210 m!2816543))

(declare-fun m!2816757 () Bool)

(assert (=> b!2437373 m!2816757))

(assert (=> b!2437071 d!704210))

(declare-fun bs!464647 () Bool)

(declare-fun d!704214 () Bool)

(assert (= bs!464647 (and d!704214 start!238552)))

(declare-fun lambda!92107 () Int)

(assert (=> bs!464647 (= lambda!92107 lambda!92078)))

(declare-fun bs!464648 () Bool)

(assert (= bs!464648 (and d!704214 d!704196)))

(assert (=> bs!464648 (= lambda!92107 lambda!92106)))

(declare-fun b!2437374 () Bool)

(declare-fun e!1548990 () Bool)

(declare-fun lt!877662 () Regex!7162)

(assert (=> b!2437374 (= e!1548990 (= lt!877662 (head!5522 l!9164)))))

(declare-fun b!2437375 () Bool)

(declare-fun e!1548993 () Bool)

(assert (=> b!2437375 (= e!1548993 e!1548990)))

(declare-fun c!388920 () Bool)

(assert (=> b!2437375 (= c!388920 (isEmpty!16505 (tail!3795 l!9164)))))

(declare-fun b!2437376 () Bool)

(declare-fun e!1548988 () Regex!7162)

(assert (=> b!2437376 (= e!1548988 (Concat!11798 (h!33864 l!9164) (generalisedConcat!263 (t!208538 l!9164))))))

(declare-fun b!2437377 () Bool)

(assert (=> b!2437377 (= e!1548988 EmptyExpr!7162)))

(declare-fun b!2437378 () Bool)

(declare-fun e!1548989 () Bool)

(assert (=> b!2437378 (= e!1548989 e!1548993)))

(declare-fun c!388919 () Bool)

(assert (=> b!2437378 (= c!388919 (isEmpty!16505 l!9164))))

(declare-fun b!2437379 () Bool)

(declare-fun e!1548992 () Regex!7162)

(assert (=> b!2437379 (= e!1548992 (h!33864 l!9164))))

(declare-fun b!2437380 () Bool)

(assert (=> b!2437380 (= e!1548992 e!1548988)))

(declare-fun c!388922 () Bool)

(assert (=> b!2437380 (= c!388922 (is-Cons!28463 l!9164))))

(declare-fun b!2437381 () Bool)

(assert (=> b!2437381 (= e!1548993 (isEmptyExpr!209 lt!877662))))

(assert (=> d!704214 e!1548989))

(declare-fun res!1034713 () Bool)

(assert (=> d!704214 (=> (not res!1034713) (not e!1548989))))

(assert (=> d!704214 (= res!1034713 (validRegex!2876 lt!877662))))

(assert (=> d!704214 (= lt!877662 e!1548992)))

(declare-fun c!388921 () Bool)

(declare-fun e!1548991 () Bool)

(assert (=> d!704214 (= c!388921 e!1548991)))

(declare-fun res!1034712 () Bool)

(assert (=> d!704214 (=> (not res!1034712) (not e!1548991))))

(assert (=> d!704214 (= res!1034712 (is-Cons!28463 l!9164))))

(assert (=> d!704214 (forall!5796 l!9164 lambda!92107)))

(assert (=> d!704214 (= (generalisedConcat!263 l!9164) lt!877662)))

(declare-fun b!2437382 () Bool)

(assert (=> b!2437382 (= e!1548991 (isEmpty!16505 (t!208538 l!9164)))))

(declare-fun b!2437383 () Bool)

(assert (=> b!2437383 (= e!1548990 (isConcat!209 lt!877662))))

(assert (= (and d!704214 res!1034712) b!2437382))

(assert (= (and d!704214 c!388921) b!2437379))

(assert (= (and d!704214 (not c!388921)) b!2437380))

(assert (= (and b!2437380 c!388922) b!2437376))

(assert (= (and b!2437380 (not c!388922)) b!2437377))

(assert (= (and d!704214 res!1034713) b!2437378))

(assert (= (and b!2437378 c!388919) b!2437381))

(assert (= (and b!2437378 (not c!388919)) b!2437375))

(assert (= (and b!2437375 c!388920) b!2437374))

(assert (= (and b!2437375 (not c!388920)) b!2437383))

(assert (=> b!2437378 m!2816561))

(declare-fun m!2816759 () Bool)

(assert (=> b!2437383 m!2816759))

(declare-fun m!2816761 () Bool)

(assert (=> b!2437382 m!2816761))

(declare-fun m!2816763 () Bool)

(assert (=> b!2437381 m!2816763))

(assert (=> b!2437374 m!2816553))

(declare-fun m!2816765 () Bool)

(assert (=> b!2437376 m!2816765))

(declare-fun m!2816767 () Bool)

(assert (=> d!704214 m!2816767))

(declare-fun m!2816769 () Bool)

(assert (=> d!704214 m!2816769))

(assert (=> b!2437375 m!2816557))

(assert (=> b!2437375 m!2816557))

(declare-fun m!2816771 () Bool)

(assert (=> b!2437375 m!2816771))

(assert (=> b!2437059 d!704214))

(declare-fun bs!464649 () Bool)

(declare-fun b!2437467 () Bool)

(assert (= bs!464649 (and b!2437467 b!2437067)))

(declare-fun lambda!92112 () Int)

(assert (=> bs!464649 (not (= lambda!92112 lambda!92080))))

(assert (=> bs!464649 (not (= lambda!92112 lambda!92079))))

(declare-fun bs!464650 () Bool)

(assert (= bs!464650 (and b!2437467 d!704178)))

(assert (=> bs!464650 (not (= lambda!92112 lambda!92099))))

(assert (=> bs!464650 (not (= lambda!92112 lambda!92100))))

(declare-fun bs!464651 () Bool)

(assert (= bs!464651 (and b!2437467 d!704176)))

(assert (=> bs!464651 (not (= lambda!92112 lambda!92094))))

(assert (=> b!2437467 true))

(assert (=> b!2437467 true))

(declare-fun bs!464652 () Bool)

(declare-fun b!2437464 () Bool)

(assert (= bs!464652 (and b!2437464 b!2437067)))

(declare-fun lambda!92113 () Int)

(assert (=> bs!464652 (= lambda!92113 lambda!92080)))

(assert (=> bs!464652 (not (= lambda!92113 lambda!92079))))

(declare-fun bs!464653 () Bool)

(assert (= bs!464653 (and b!2437464 d!704178)))

(assert (=> bs!464653 (not (= lambda!92113 lambda!92099))))

(declare-fun bs!464654 () Bool)

(assert (= bs!464654 (and b!2437464 b!2437467)))

(assert (=> bs!464654 (not (= lambda!92113 lambda!92112))))

(assert (=> bs!464653 (= lambda!92113 lambda!92100)))

(declare-fun bs!464655 () Bool)

(assert (= bs!464655 (and b!2437464 d!704176)))

(assert (=> bs!464655 (not (= lambda!92113 lambda!92094))))

(assert (=> b!2437464 true))

(assert (=> b!2437464 true))

(declare-fun b!2437457 () Bool)

(declare-fun c!388942 () Bool)

(assert (=> b!2437457 (= c!388942 (is-Union!7162 r!13927))))

(declare-fun e!1549046 () Bool)

(declare-fun e!1549043 () Bool)

(assert (=> b!2437457 (= e!1549046 e!1549043)))

(declare-fun b!2437458 () Bool)

(declare-fun e!1549041 () Bool)

(assert (=> b!2437458 (= e!1549041 (matchRSpec!1009 (regTwo!14837 r!13927) s!9460))))

(declare-fun call!149303 () Bool)

(declare-fun bm!149297 () Bool)

(declare-fun c!388943 () Bool)

(assert (=> bm!149297 (= call!149303 (Exists!1198 (ite c!388943 lambda!92112 lambda!92113)))))

(declare-fun d!704216 () Bool)

(declare-fun c!388941 () Bool)

(assert (=> d!704216 (= c!388941 (is-EmptyExpr!7162 r!13927))))

(declare-fun e!1549042 () Bool)

(assert (=> d!704216 (= (matchRSpec!1009 r!13927 s!9460) e!1549042)))

(declare-fun b!2437459 () Bool)

(assert (=> b!2437459 (= e!1549046 (= s!9460 (Cons!28462 (c!388860 r!13927) Nil!28462)))))

(declare-fun b!2437460 () Bool)

(declare-fun c!388940 () Bool)

(assert (=> b!2437460 (= c!388940 (is-ElementMatch!7162 r!13927))))

(declare-fun e!1549045 () Bool)

(assert (=> b!2437460 (= e!1549045 e!1549046)))

(declare-fun b!2437461 () Bool)

(assert (=> b!2437461 (= e!1549042 e!1549045)))

(declare-fun res!1034754 () Bool)

(assert (=> b!2437461 (= res!1034754 (not (is-EmptyLang!7162 r!13927)))))

(assert (=> b!2437461 (=> (not res!1034754) (not e!1549045))))

(declare-fun b!2437462 () Bool)

(declare-fun e!1549040 () Bool)

(assert (=> b!2437462 (= e!1549043 e!1549040)))

(assert (=> b!2437462 (= c!388943 (is-Star!7162 r!13927))))

(declare-fun b!2437463 () Bool)

(declare-fun call!149302 () Bool)

(assert (=> b!2437463 (= e!1549042 call!149302)))

(assert (=> b!2437464 (= e!1549040 call!149303)))

(declare-fun bm!149298 () Bool)

(assert (=> bm!149298 (= call!149302 (isEmpty!16508 s!9460))))

(declare-fun b!2437465 () Bool)

(declare-fun res!1034753 () Bool)

(declare-fun e!1549044 () Bool)

(assert (=> b!2437465 (=> res!1034753 e!1549044)))

(assert (=> b!2437465 (= res!1034753 call!149302)))

(assert (=> b!2437465 (= e!1549040 e!1549044)))

(declare-fun b!2437466 () Bool)

(assert (=> b!2437466 (= e!1549043 e!1549041)))

(declare-fun res!1034755 () Bool)

(assert (=> b!2437466 (= res!1034755 (matchRSpec!1009 (regOne!14837 r!13927) s!9460))))

(assert (=> b!2437466 (=> res!1034755 e!1549041)))

(assert (=> b!2437467 (= e!1549044 call!149303)))

(assert (= (and d!704216 c!388941) b!2437463))

(assert (= (and d!704216 (not c!388941)) b!2437461))

(assert (= (and b!2437461 res!1034754) b!2437460))

(assert (= (and b!2437460 c!388940) b!2437459))

(assert (= (and b!2437460 (not c!388940)) b!2437457))

(assert (= (and b!2437457 c!388942) b!2437466))

(assert (= (and b!2437457 (not c!388942)) b!2437462))

(assert (= (and b!2437466 (not res!1034755)) b!2437458))

(assert (= (and b!2437462 c!388943) b!2437465))

(assert (= (and b!2437462 (not c!388943)) b!2437464))

(assert (= (and b!2437465 (not res!1034753)) b!2437467))

(assert (= (or b!2437467 b!2437464) bm!149297))

(assert (= (or b!2437463 b!2437465) bm!149298))

(declare-fun m!2816791 () Bool)

(assert (=> b!2437458 m!2816791))

(declare-fun m!2816793 () Bool)

(assert (=> bm!149297 m!2816793))

(declare-fun m!2816795 () Bool)

(assert (=> bm!149298 m!2816795))

(declare-fun m!2816797 () Bool)

(assert (=> b!2437466 m!2816797))

(assert (=> b!2437069 d!704216))

(declare-fun b!2437468 () Bool)

(declare-fun e!1549047 () Bool)

(assert (=> b!2437468 (= e!1549047 (not (= (head!5524 s!9460) (c!388860 r!13927))))))

(declare-fun b!2437469 () Bool)

(declare-fun e!1549052 () Bool)

(declare-fun lt!877664 () Bool)

(assert (=> b!2437469 (= e!1549052 (not lt!877664))))

(declare-fun b!2437470 () Bool)

(declare-fun e!1549049 () Bool)

(assert (=> b!2437470 (= e!1549049 e!1549052)))

(declare-fun c!388945 () Bool)

(assert (=> b!2437470 (= c!388945 (is-EmptyLang!7162 r!13927))))

(declare-fun b!2437471 () Bool)

(declare-fun e!1549048 () Bool)

(assert (=> b!2437471 (= e!1549048 (nullable!2191 r!13927))))

(declare-fun bm!149299 () Bool)

(declare-fun call!149304 () Bool)

(assert (=> bm!149299 (= call!149304 (isEmpty!16508 s!9460))))

(declare-fun b!2437472 () Bool)

(declare-fun e!1549051 () Bool)

(declare-fun e!1549053 () Bool)

(assert (=> b!2437472 (= e!1549051 e!1549053)))

(declare-fun res!1034756 () Bool)

(assert (=> b!2437472 (=> (not res!1034756) (not e!1549053))))

(assert (=> b!2437472 (= res!1034756 (not lt!877664))))

(declare-fun b!2437473 () Bool)

(declare-fun res!1034759 () Bool)

(declare-fun e!1549050 () Bool)

(assert (=> b!2437473 (=> (not res!1034759) (not e!1549050))))

(assert (=> b!2437473 (= res!1034759 (not call!149304))))

(declare-fun b!2437474 () Bool)

(declare-fun res!1034758 () Bool)

(assert (=> b!2437474 (=> res!1034758 e!1549051)))

(assert (=> b!2437474 (= res!1034758 e!1549050)))

(declare-fun res!1034761 () Bool)

(assert (=> b!2437474 (=> (not res!1034761) (not e!1549050))))

(assert (=> b!2437474 (= res!1034761 lt!877664)))

(declare-fun b!2437475 () Bool)

(assert (=> b!2437475 (= e!1549053 e!1549047)))

(declare-fun res!1034757 () Bool)

(assert (=> b!2437475 (=> res!1034757 e!1549047)))

(assert (=> b!2437475 (= res!1034757 call!149304)))

(declare-fun d!704222 () Bool)

(assert (=> d!704222 e!1549049))

(declare-fun c!388946 () Bool)

(assert (=> d!704222 (= c!388946 (is-EmptyExpr!7162 r!13927))))

(assert (=> d!704222 (= lt!877664 e!1549048)))

(declare-fun c!388944 () Bool)

(assert (=> d!704222 (= c!388944 (isEmpty!16508 s!9460))))

(assert (=> d!704222 (validRegex!2876 r!13927)))

(assert (=> d!704222 (= (matchR!3277 r!13927 s!9460) lt!877664)))

(declare-fun b!2437476 () Bool)

(assert (=> b!2437476 (= e!1549049 (= lt!877664 call!149304))))

(declare-fun b!2437477 () Bool)

(declare-fun res!1034762 () Bool)

(assert (=> b!2437477 (=> res!1034762 e!1549051)))

(assert (=> b!2437477 (= res!1034762 (not (is-ElementMatch!7162 r!13927)))))

(assert (=> b!2437477 (= e!1549052 e!1549051)))

(declare-fun b!2437478 () Bool)

(assert (=> b!2437478 (= e!1549050 (= (head!5524 s!9460) (c!388860 r!13927)))))

(declare-fun b!2437479 () Bool)

(declare-fun res!1034763 () Bool)

(assert (=> b!2437479 (=> (not res!1034763) (not e!1549050))))

(assert (=> b!2437479 (= res!1034763 (isEmpty!16508 (tail!3797 s!9460)))))

(declare-fun b!2437480 () Bool)

(assert (=> b!2437480 (= e!1549048 (matchR!3277 (derivativeStep!1845 r!13927 (head!5524 s!9460)) (tail!3797 s!9460)))))

(declare-fun b!2437481 () Bool)

(declare-fun res!1034760 () Bool)

(assert (=> b!2437481 (=> res!1034760 e!1549047)))

(assert (=> b!2437481 (= res!1034760 (not (isEmpty!16508 (tail!3797 s!9460))))))

(assert (= (and d!704222 c!388944) b!2437471))

(assert (= (and d!704222 (not c!388944)) b!2437480))

(assert (= (and d!704222 c!388946) b!2437476))

(assert (= (and d!704222 (not c!388946)) b!2437470))

(assert (= (and b!2437470 c!388945) b!2437469))

(assert (= (and b!2437470 (not c!388945)) b!2437477))

(assert (= (and b!2437477 (not res!1034762)) b!2437474))

(assert (= (and b!2437474 res!1034761) b!2437473))

(assert (= (and b!2437473 res!1034759) b!2437479))

(assert (= (and b!2437479 res!1034763) b!2437478))

(assert (= (and b!2437474 (not res!1034758)) b!2437472))

(assert (= (and b!2437472 res!1034756) b!2437475))

(assert (= (and b!2437475 (not res!1034757)) b!2437481))

(assert (= (and b!2437481 (not res!1034760)) b!2437468))

(assert (= (or b!2437476 b!2437473 b!2437475) bm!149299))

(assert (=> d!704222 m!2816795))

(declare-fun m!2816799 () Bool)

(assert (=> d!704222 m!2816799))

(declare-fun m!2816801 () Bool)

(assert (=> b!2437479 m!2816801))

(assert (=> b!2437479 m!2816801))

(declare-fun m!2816803 () Bool)

(assert (=> b!2437479 m!2816803))

(declare-fun m!2816805 () Bool)

(assert (=> b!2437471 m!2816805))

(declare-fun m!2816807 () Bool)

(assert (=> b!2437468 m!2816807))

(assert (=> bm!149299 m!2816795))

(assert (=> b!2437480 m!2816807))

(assert (=> b!2437480 m!2816807))

(declare-fun m!2816809 () Bool)

(assert (=> b!2437480 m!2816809))

(assert (=> b!2437480 m!2816801))

(assert (=> b!2437480 m!2816809))

(assert (=> b!2437480 m!2816801))

(declare-fun m!2816811 () Bool)

(assert (=> b!2437480 m!2816811))

(assert (=> b!2437478 m!2816807))

(assert (=> b!2437481 m!2816801))

(assert (=> b!2437481 m!2816801))

(assert (=> b!2437481 m!2816803))

(assert (=> b!2437069 d!704222))

(declare-fun d!704224 () Bool)

(assert (=> d!704224 (= (matchR!3277 r!13927 s!9460) (matchRSpec!1009 r!13927 s!9460))))

(declare-fun lt!877669 () Unit!41707)

(declare-fun choose!14458 (Regex!7162 List!28560) Unit!41707)

(assert (=> d!704224 (= lt!877669 (choose!14458 r!13927 s!9460))))

(assert (=> d!704224 (validRegex!2876 r!13927)))

(assert (=> d!704224 (= (mainMatchTheorem!1009 r!13927 s!9460) lt!877669)))

(declare-fun bs!464656 () Bool)

(assert (= bs!464656 d!704224))

(assert (=> bs!464656 m!2816535))

(assert (=> bs!464656 m!2816533))

(declare-fun m!2816813 () Bool)

(assert (=> bs!464656 m!2816813))

(assert (=> bs!464656 m!2816799))

(assert (=> b!2437069 d!704224))

(declare-fun b!2437490 () Bool)

(declare-fun e!1549058 () Bool)

(assert (=> b!2437490 (= e!1549058 (not (= (head!5524 s!9460) (c!388860 lt!877591))))))

(declare-fun b!2437491 () Bool)

(declare-fun e!1549063 () Bool)

(declare-fun lt!877670 () Bool)

(assert (=> b!2437491 (= e!1549063 (not lt!877670))))

(declare-fun b!2437492 () Bool)

(declare-fun e!1549060 () Bool)

(assert (=> b!2437492 (= e!1549060 e!1549063)))

(declare-fun c!388950 () Bool)

(assert (=> b!2437492 (= c!388950 (is-EmptyLang!7162 lt!877591))))

(declare-fun b!2437493 () Bool)

(declare-fun e!1549059 () Bool)

(assert (=> b!2437493 (= e!1549059 (nullable!2191 lt!877591))))

(declare-fun bm!149300 () Bool)

(declare-fun call!149305 () Bool)

(assert (=> bm!149300 (= call!149305 (isEmpty!16508 s!9460))))

(declare-fun b!2437494 () Bool)

(declare-fun e!1549062 () Bool)

(declare-fun e!1549064 () Bool)

(assert (=> b!2437494 (= e!1549062 e!1549064)))

(declare-fun res!1034768 () Bool)

(assert (=> b!2437494 (=> (not res!1034768) (not e!1549064))))

(assert (=> b!2437494 (= res!1034768 (not lt!877670))))

(declare-fun b!2437495 () Bool)

(declare-fun res!1034771 () Bool)

(declare-fun e!1549061 () Bool)

(assert (=> b!2437495 (=> (not res!1034771) (not e!1549061))))

(assert (=> b!2437495 (= res!1034771 (not call!149305))))

(declare-fun b!2437496 () Bool)

(declare-fun res!1034770 () Bool)

(assert (=> b!2437496 (=> res!1034770 e!1549062)))

(assert (=> b!2437496 (= res!1034770 e!1549061)))

(declare-fun res!1034773 () Bool)

(assert (=> b!2437496 (=> (not res!1034773) (not e!1549061))))

(assert (=> b!2437496 (= res!1034773 lt!877670)))

(declare-fun b!2437497 () Bool)

(assert (=> b!2437497 (= e!1549064 e!1549058)))

(declare-fun res!1034769 () Bool)

(assert (=> b!2437497 (=> res!1034769 e!1549058)))

(assert (=> b!2437497 (= res!1034769 call!149305)))

(declare-fun d!704226 () Bool)

(assert (=> d!704226 e!1549060))

(declare-fun c!388951 () Bool)

(assert (=> d!704226 (= c!388951 (is-EmptyExpr!7162 lt!877591))))

(assert (=> d!704226 (= lt!877670 e!1549059)))

(declare-fun c!388949 () Bool)

(assert (=> d!704226 (= c!388949 (isEmpty!16508 s!9460))))

(assert (=> d!704226 (validRegex!2876 lt!877591)))

(assert (=> d!704226 (= (matchR!3277 lt!877591 s!9460) lt!877670)))

(declare-fun b!2437498 () Bool)

(assert (=> b!2437498 (= e!1549060 (= lt!877670 call!149305))))

(declare-fun b!2437499 () Bool)

(declare-fun res!1034774 () Bool)

(assert (=> b!2437499 (=> res!1034774 e!1549062)))

(assert (=> b!2437499 (= res!1034774 (not (is-ElementMatch!7162 lt!877591)))))

(assert (=> b!2437499 (= e!1549063 e!1549062)))

(declare-fun b!2437500 () Bool)

(assert (=> b!2437500 (= e!1549061 (= (head!5524 s!9460) (c!388860 lt!877591)))))

(declare-fun b!2437501 () Bool)

(declare-fun res!1034775 () Bool)

(assert (=> b!2437501 (=> (not res!1034775) (not e!1549061))))

(assert (=> b!2437501 (= res!1034775 (isEmpty!16508 (tail!3797 s!9460)))))

(declare-fun b!2437502 () Bool)

(assert (=> b!2437502 (= e!1549059 (matchR!3277 (derivativeStep!1845 lt!877591 (head!5524 s!9460)) (tail!3797 s!9460)))))

(declare-fun b!2437503 () Bool)

(declare-fun res!1034772 () Bool)

(assert (=> b!2437503 (=> res!1034772 e!1549058)))

(assert (=> b!2437503 (= res!1034772 (not (isEmpty!16508 (tail!3797 s!9460))))))

(assert (= (and d!704226 c!388949) b!2437493))

(assert (= (and d!704226 (not c!388949)) b!2437502))

(assert (= (and d!704226 c!388951) b!2437498))

(assert (= (and d!704226 (not c!388951)) b!2437492))

(assert (= (and b!2437492 c!388950) b!2437491))

(assert (= (and b!2437492 (not c!388950)) b!2437499))

(assert (= (and b!2437499 (not res!1034774)) b!2437496))

(assert (= (and b!2437496 res!1034773) b!2437495))

(assert (= (and b!2437495 res!1034771) b!2437501))

(assert (= (and b!2437501 res!1034775) b!2437500))

(assert (= (and b!2437496 (not res!1034770)) b!2437494))

(assert (= (and b!2437494 res!1034768) b!2437497))

(assert (= (and b!2437497 (not res!1034769)) b!2437503))

(assert (= (and b!2437503 (not res!1034772)) b!2437490))

(assert (= (or b!2437498 b!2437495 b!2437497) bm!149300))

(assert (=> d!704226 m!2816795))

(assert (=> d!704226 m!2816721))

(assert (=> b!2437501 m!2816801))

(assert (=> b!2437501 m!2816801))

(assert (=> b!2437501 m!2816803))

(assert (=> b!2437493 m!2816727))

(assert (=> b!2437490 m!2816807))

(assert (=> bm!149300 m!2816795))

(assert (=> b!2437502 m!2816807))

(assert (=> b!2437502 m!2816807))

(declare-fun m!2816815 () Bool)

(assert (=> b!2437502 m!2816815))

(assert (=> b!2437502 m!2816801))

(assert (=> b!2437502 m!2816815))

(assert (=> b!2437502 m!2816801))

(declare-fun m!2816817 () Bool)

(assert (=> b!2437502 m!2816817))

(assert (=> b!2437500 m!2816807))

(assert (=> b!2437503 m!2816801))

(assert (=> b!2437503 m!2816801))

(assert (=> b!2437503 m!2816803))

(assert (=> b!2437062 d!704226))

(declare-fun b!2437504 () Bool)

(declare-fun e!1549065 () Bool)

(assert (=> b!2437504 (= e!1549065 (not (= (head!5524 s!9460) (c!388860 lt!877597))))))

(declare-fun b!2437505 () Bool)

(declare-fun e!1549070 () Bool)

(declare-fun lt!877671 () Bool)

(assert (=> b!2437505 (= e!1549070 (not lt!877671))))

(declare-fun b!2437506 () Bool)

(declare-fun e!1549067 () Bool)

(assert (=> b!2437506 (= e!1549067 e!1549070)))

(declare-fun c!388953 () Bool)

(assert (=> b!2437506 (= c!388953 (is-EmptyLang!7162 lt!877597))))

(declare-fun b!2437507 () Bool)

(declare-fun e!1549066 () Bool)

(assert (=> b!2437507 (= e!1549066 (nullable!2191 lt!877597))))

(declare-fun bm!149301 () Bool)

(declare-fun call!149306 () Bool)

(assert (=> bm!149301 (= call!149306 (isEmpty!16508 s!9460))))

(declare-fun b!2437508 () Bool)

(declare-fun e!1549069 () Bool)

(declare-fun e!1549071 () Bool)

(assert (=> b!2437508 (= e!1549069 e!1549071)))

(declare-fun res!1034776 () Bool)

(assert (=> b!2437508 (=> (not res!1034776) (not e!1549071))))

(assert (=> b!2437508 (= res!1034776 (not lt!877671))))

(declare-fun b!2437509 () Bool)

(declare-fun res!1034779 () Bool)

(declare-fun e!1549068 () Bool)

(assert (=> b!2437509 (=> (not res!1034779) (not e!1549068))))

(assert (=> b!2437509 (= res!1034779 (not call!149306))))

(declare-fun b!2437510 () Bool)

(declare-fun res!1034778 () Bool)

(assert (=> b!2437510 (=> res!1034778 e!1549069)))

(assert (=> b!2437510 (= res!1034778 e!1549068)))

(declare-fun res!1034781 () Bool)

(assert (=> b!2437510 (=> (not res!1034781) (not e!1549068))))

(assert (=> b!2437510 (= res!1034781 lt!877671)))

(declare-fun b!2437511 () Bool)

(assert (=> b!2437511 (= e!1549071 e!1549065)))

(declare-fun res!1034777 () Bool)

(assert (=> b!2437511 (=> res!1034777 e!1549065)))

(assert (=> b!2437511 (= res!1034777 call!149306)))

(declare-fun d!704228 () Bool)

(assert (=> d!704228 e!1549067))

(declare-fun c!388954 () Bool)

(assert (=> d!704228 (= c!388954 (is-EmptyExpr!7162 lt!877597))))

(assert (=> d!704228 (= lt!877671 e!1549066)))

(declare-fun c!388952 () Bool)

(assert (=> d!704228 (= c!388952 (isEmpty!16508 s!9460))))

(assert (=> d!704228 (validRegex!2876 lt!877597)))

(assert (=> d!704228 (= (matchR!3277 lt!877597 s!9460) lt!877671)))

(declare-fun b!2437512 () Bool)

(assert (=> b!2437512 (= e!1549067 (= lt!877671 call!149306))))

(declare-fun b!2437513 () Bool)

(declare-fun res!1034782 () Bool)

(assert (=> b!2437513 (=> res!1034782 e!1549069)))

(assert (=> b!2437513 (= res!1034782 (not (is-ElementMatch!7162 lt!877597)))))

(assert (=> b!2437513 (= e!1549070 e!1549069)))

(declare-fun b!2437514 () Bool)

(assert (=> b!2437514 (= e!1549068 (= (head!5524 s!9460) (c!388860 lt!877597)))))

(declare-fun b!2437515 () Bool)

(declare-fun res!1034783 () Bool)

(assert (=> b!2437515 (=> (not res!1034783) (not e!1549068))))

(assert (=> b!2437515 (= res!1034783 (isEmpty!16508 (tail!3797 s!9460)))))

(declare-fun b!2437516 () Bool)

(assert (=> b!2437516 (= e!1549066 (matchR!3277 (derivativeStep!1845 lt!877597 (head!5524 s!9460)) (tail!3797 s!9460)))))

(declare-fun b!2437517 () Bool)

(declare-fun res!1034780 () Bool)

(assert (=> b!2437517 (=> res!1034780 e!1549065)))

(assert (=> b!2437517 (= res!1034780 (not (isEmpty!16508 (tail!3797 s!9460))))))

(assert (= (and d!704228 c!388952) b!2437507))

(assert (= (and d!704228 (not c!388952)) b!2437516))

(assert (= (and d!704228 c!388954) b!2437512))

(assert (= (and d!704228 (not c!388954)) b!2437506))

(assert (= (and b!2437506 c!388953) b!2437505))

(assert (= (and b!2437506 (not c!388953)) b!2437513))

(assert (= (and b!2437513 (not res!1034782)) b!2437510))

(assert (= (and b!2437510 res!1034781) b!2437509))

(assert (= (and b!2437509 res!1034779) b!2437515))

(assert (= (and b!2437515 res!1034783) b!2437514))

(assert (= (and b!2437510 (not res!1034778)) b!2437508))

(assert (= (and b!2437508 res!1034776) b!2437511))

(assert (= (and b!2437511 (not res!1034777)) b!2437517))

(assert (= (and b!2437517 (not res!1034780)) b!2437504))

(assert (= (or b!2437512 b!2437509 b!2437511) bm!149301))

(assert (=> d!704228 m!2816795))

(assert (=> d!704228 m!2816543))

(assert (=> b!2437515 m!2816801))

(assert (=> b!2437515 m!2816801))

(assert (=> b!2437515 m!2816803))

(declare-fun m!2816819 () Bool)

(assert (=> b!2437507 m!2816819))

(assert (=> b!2437504 m!2816807))

(assert (=> bm!149301 m!2816795))

(assert (=> b!2437516 m!2816807))

(assert (=> b!2437516 m!2816807))

(declare-fun m!2816821 () Bool)

(assert (=> b!2437516 m!2816821))

(assert (=> b!2437516 m!2816801))

(assert (=> b!2437516 m!2816821))

(assert (=> b!2437516 m!2816801))

(declare-fun m!2816823 () Bool)

(assert (=> b!2437516 m!2816823))

(assert (=> b!2437514 m!2816807))

(assert (=> b!2437517 m!2816801))

(assert (=> b!2437517 m!2816801))

(assert (=> b!2437517 m!2816803))

(assert (=> b!2437057 d!704228))

(declare-fun d!704230 () Bool)

(assert (=> d!704230 (= (head!5522 l!9164) (h!33864 l!9164))))

(assert (=> b!2437057 d!704230))

(declare-fun b!2437533 () Bool)

(declare-fun e!1549076 () Bool)

(declare-fun tp!774014 () Bool)

(declare-fun tp!774015 () Bool)

(assert (=> b!2437533 (= e!1549076 (and tp!774014 tp!774015))))

(assert (=> b!2437070 (= tp!773975 e!1549076)))

(declare-fun b!2437532 () Bool)

(assert (=> b!2437532 (= e!1549076 tp_is_empty!11737)))

(declare-fun b!2437534 () Bool)

(declare-fun tp!774016 () Bool)

(assert (=> b!2437534 (= e!1549076 tp!774016)))

(declare-fun b!2437535 () Bool)

(declare-fun tp!774012 () Bool)

(declare-fun tp!774013 () Bool)

(assert (=> b!2437535 (= e!1549076 (and tp!774012 tp!774013))))

(assert (= (and b!2437070 (is-ElementMatch!7162 (h!33864 l!9164))) b!2437532))

(assert (= (and b!2437070 (is-Concat!11798 (h!33864 l!9164))) b!2437533))

(assert (= (and b!2437070 (is-Star!7162 (h!33864 l!9164))) b!2437534))

(assert (= (and b!2437070 (is-Union!7162 (h!33864 l!9164))) b!2437535))

(declare-fun b!2437540 () Bool)

(declare-fun e!1549079 () Bool)

(declare-fun tp!774021 () Bool)

(declare-fun tp!774022 () Bool)

(assert (=> b!2437540 (= e!1549079 (and tp!774021 tp!774022))))

(assert (=> b!2437070 (= tp!773970 e!1549079)))

(assert (= (and b!2437070 (is-Cons!28463 (t!208538 l!9164))) b!2437540))

(declare-fun b!2437542 () Bool)

(declare-fun e!1549080 () Bool)

(declare-fun tp!774025 () Bool)

(declare-fun tp!774026 () Bool)

(assert (=> b!2437542 (= e!1549080 (and tp!774025 tp!774026))))

(assert (=> b!2437065 (= tp!773974 e!1549080)))

(declare-fun b!2437541 () Bool)

(assert (=> b!2437541 (= e!1549080 tp_is_empty!11737)))

(declare-fun b!2437543 () Bool)

(declare-fun tp!774027 () Bool)

(assert (=> b!2437543 (= e!1549080 tp!774027)))

(declare-fun b!2437544 () Bool)

(declare-fun tp!774023 () Bool)

(declare-fun tp!774024 () Bool)

(assert (=> b!2437544 (= e!1549080 (and tp!774023 tp!774024))))

(assert (= (and b!2437065 (is-ElementMatch!7162 (regOne!14836 r!13927))) b!2437541))

(assert (= (and b!2437065 (is-Concat!11798 (regOne!14836 r!13927))) b!2437542))

(assert (= (and b!2437065 (is-Star!7162 (regOne!14836 r!13927))) b!2437543))

(assert (= (and b!2437065 (is-Union!7162 (regOne!14836 r!13927))) b!2437544))

(declare-fun b!2437546 () Bool)

(declare-fun e!1549081 () Bool)

(declare-fun tp!774030 () Bool)

(declare-fun tp!774031 () Bool)

(assert (=> b!2437546 (= e!1549081 (and tp!774030 tp!774031))))

(assert (=> b!2437065 (= tp!773977 e!1549081)))

(declare-fun b!2437545 () Bool)

(assert (=> b!2437545 (= e!1549081 tp_is_empty!11737)))

(declare-fun b!2437547 () Bool)

(declare-fun tp!774032 () Bool)

(assert (=> b!2437547 (= e!1549081 tp!774032)))

(declare-fun b!2437548 () Bool)

(declare-fun tp!774028 () Bool)

(declare-fun tp!774029 () Bool)

(assert (=> b!2437548 (= e!1549081 (and tp!774028 tp!774029))))

(assert (= (and b!2437065 (is-ElementMatch!7162 (regTwo!14836 r!13927))) b!2437545))

(assert (= (and b!2437065 (is-Concat!11798 (regTwo!14836 r!13927))) b!2437546))

(assert (= (and b!2437065 (is-Star!7162 (regTwo!14836 r!13927))) b!2437547))

(assert (= (and b!2437065 (is-Union!7162 (regTwo!14836 r!13927))) b!2437548))

(declare-fun b!2437553 () Bool)

(declare-fun e!1549084 () Bool)

(declare-fun tp!774035 () Bool)

(assert (=> b!2437553 (= e!1549084 (and tp_is_empty!11737 tp!774035))))

(assert (=> b!2437064 (= tp!773972 e!1549084)))

(assert (= (and b!2437064 (is-Cons!28462 (t!208537 s!9460))) b!2437553))

(declare-fun b!2437555 () Bool)

(declare-fun e!1549085 () Bool)

(declare-fun tp!774038 () Bool)

(declare-fun tp!774039 () Bool)

(assert (=> b!2437555 (= e!1549085 (and tp!774038 tp!774039))))

(assert (=> b!2437058 (= tp!773971 e!1549085)))

(declare-fun b!2437554 () Bool)

(assert (=> b!2437554 (= e!1549085 tp_is_empty!11737)))

(declare-fun b!2437556 () Bool)

(declare-fun tp!774040 () Bool)

(assert (=> b!2437556 (= e!1549085 tp!774040)))

(declare-fun b!2437557 () Bool)

(declare-fun tp!774036 () Bool)

(declare-fun tp!774037 () Bool)

(assert (=> b!2437557 (= e!1549085 (and tp!774036 tp!774037))))

(assert (= (and b!2437058 (is-ElementMatch!7162 (regOne!14837 r!13927))) b!2437554))

(assert (= (and b!2437058 (is-Concat!11798 (regOne!14837 r!13927))) b!2437555))

(assert (= (and b!2437058 (is-Star!7162 (regOne!14837 r!13927))) b!2437556))

(assert (= (and b!2437058 (is-Union!7162 (regOne!14837 r!13927))) b!2437557))

(declare-fun b!2437559 () Bool)

(declare-fun e!1549086 () Bool)

(declare-fun tp!774043 () Bool)

(declare-fun tp!774044 () Bool)

(assert (=> b!2437559 (= e!1549086 (and tp!774043 tp!774044))))

(assert (=> b!2437058 (= tp!773976 e!1549086)))

(declare-fun b!2437558 () Bool)

(assert (=> b!2437558 (= e!1549086 tp_is_empty!11737)))

(declare-fun b!2437560 () Bool)

(declare-fun tp!774045 () Bool)

(assert (=> b!2437560 (= e!1549086 tp!774045)))

(declare-fun b!2437561 () Bool)

(declare-fun tp!774041 () Bool)

(declare-fun tp!774042 () Bool)

(assert (=> b!2437561 (= e!1549086 (and tp!774041 tp!774042))))

(assert (= (and b!2437058 (is-ElementMatch!7162 (regTwo!14837 r!13927))) b!2437558))

(assert (= (and b!2437058 (is-Concat!11798 (regTwo!14837 r!13927))) b!2437559))

(assert (= (and b!2437058 (is-Star!7162 (regTwo!14837 r!13927))) b!2437560))

(assert (= (and b!2437058 (is-Union!7162 (regTwo!14837 r!13927))) b!2437561))

(declare-fun b!2437563 () Bool)

(declare-fun e!1549087 () Bool)

(declare-fun tp!774048 () Bool)

(declare-fun tp!774049 () Bool)

(assert (=> b!2437563 (= e!1549087 (and tp!774048 tp!774049))))

(assert (=> b!2437063 (= tp!773973 e!1549087)))

(declare-fun b!2437562 () Bool)

(assert (=> b!2437562 (= e!1549087 tp_is_empty!11737)))

(declare-fun b!2437564 () Bool)

(declare-fun tp!774050 () Bool)

(assert (=> b!2437564 (= e!1549087 tp!774050)))

(declare-fun b!2437565 () Bool)

(declare-fun tp!774046 () Bool)

(declare-fun tp!774047 () Bool)

(assert (=> b!2437565 (= e!1549087 (and tp!774046 tp!774047))))

(assert (= (and b!2437063 (is-ElementMatch!7162 (reg!7491 r!13927))) b!2437562))

(assert (= (and b!2437063 (is-Concat!11798 (reg!7491 r!13927))) b!2437563))

(assert (= (and b!2437063 (is-Star!7162 (reg!7491 r!13927))) b!2437564))

(assert (= (and b!2437063 (is-Union!7162 (reg!7491 r!13927))) b!2437565))

(declare-fun b_lambda!74899 () Bool)

(assert (= b_lambda!74895 (or start!238552 b_lambda!74899)))

(declare-fun bs!464657 () Bool)

(declare-fun d!704234 () Bool)

(assert (= bs!464657 (and d!704234 start!238552)))

(assert (=> bs!464657 (= (dynLambda!12249 lambda!92078 (h!33864 l!9164)) (validRegex!2876 (h!33864 l!9164)))))

(declare-fun m!2816839 () Bool)

(assert (=> bs!464657 m!2816839))

(assert (=> b!2437210 d!704234))

(push 1)

(assert (not b!2437542))

(assert (not b!2437559))

(assert (not d!704222))

(assert (not bm!149297))

(assert (not b!2437289))

(assert (not d!704202))

(assert (not b!2437232))

(assert (not b!2437546))

(assert (not b!2437241))

(assert (not b!2437352))

(assert (not b!2437500))

(assert (not b!2437234))

(assert (not b!2437471))

(assert (not d!704226))

(assert (not b!2437239))

(assert (not d!704174))

(assert (not d!704184))

(assert (not b!2437374))

(assert (not b!2437479))

(assert (not b!2437544))

(assert (not b!2437368))

(assert (not b!2437502))

(assert tp_is_empty!11737)

(assert (not b_lambda!74899))

(assert (not bm!149298))

(assert (not b!2437561))

(assert (not d!704196))

(assert (not b!2437233))

(assert (not b!2437515))

(assert (not b!2437490))

(assert (not b!2437194))

(assert (not b!2437540))

(assert (not b!2437466))

(assert (not b!2437481))

(assert (not b!2437373))

(assert (not b!2437190))

(assert (not b!2437493))

(assert (not b!2437548))

(assert (not b!2437514))

(assert (not b!2437240))

(assert (not bs!464657))

(assert (not d!704224))

(assert (not b!2437563))

(assert (not b!2437192))

(assert (not b!2437383))

(assert (not bm!149282))

(assert (not b!2437458))

(assert (not b!2437375))

(assert (not b!2437556))

(assert (not b!2437193))

(assert (not b!2437560))

(assert (not d!704178))

(assert (not b!2437189))

(assert (not b!2437236))

(assert (not b!2437468))

(assert (not b!2437382))

(assert (not b!2437351))

(assert (not d!704210))

(assert (not b!2437349))

(assert (not b!2437378))

(assert (not b!2437342))

(assert (not b!2437553))

(assert (not b!2437565))

(assert (not b!2437503))

(assert (not b!2437188))

(assert (not b!2437516))

(assert (not b!2437533))

(assert (not b!2437478))

(assert (not b!2437557))

(assert (not b!2437339))

(assert (not bm!149299))

(assert (not b!2437555))

(assert (not b!2437534))

(assert (not b!2437369))

(assert (not d!704176))

(assert (not bm!149274))

(assert (not bm!149301))

(assert (not b!2437507))

(assert (not b!2437376))

(assert (not b!2437501))

(assert (not b!2437350))

(assert (not b!2437547))

(assert (not b!2437535))

(assert (not b!2437517))

(assert (not d!704214))

(assert (not bm!149276))

(assert (not b!2437211))

(assert (not b!2437381))

(assert (not b!2437480))

(assert (not bm!149300))

(assert (not d!704228))

(assert (not d!704182))

(assert (not d!704206))

(assert (not b!2437564))

(assert (not b!2437543))

(assert (not d!704186))

(assert (not b!2437504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


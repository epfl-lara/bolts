; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279226 () Bool)

(assert start!279226)

(declare-fun bs!520985 () Bool)

(declare-fun b!2864781 () Bool)

(declare-fun b!2864782 () Bool)

(assert (= bs!520985 (and b!2864781 b!2864782)))

(declare-fun lambda!106071 () Int)

(declare-fun lambda!106070 () Int)

(assert (=> bs!520985 (not (= lambda!106071 lambda!106070))))

(declare-fun bs!520986 () Bool)

(declare-fun b!2864786 () Bool)

(assert (= bs!520986 (and b!2864786 b!2864782)))

(declare-fun lambda!106072 () Int)

(assert (=> bs!520986 (not (= lambda!106072 lambda!106070))))

(declare-fun bs!520987 () Bool)

(assert (= bs!520987 (and b!2864786 b!2864781)))

(assert (=> bs!520987 (not (= lambda!106072 lambda!106071))))

(assert (=> b!2864786 true))

(declare-fun res!1189379 () Bool)

(declare-fun e!1813565 () Bool)

(assert (=> start!279226 (=> (not res!1189379) (not e!1813565))))

(declare-datatypes ((C!17522 0))(
  ( (C!17523 (val!10795 Int)) )
))
(declare-datatypes ((Regex!8670 0))(
  ( (ElementMatch!8670 (c!462095 C!17522)) (Concat!13991 (regOne!17852 Regex!8670) (regTwo!17852 Regex!8670)) (EmptyExpr!8670) (Star!8670 (reg!8999 Regex!8670)) (EmptyLang!8670) (Union!8670 (regOne!17853 Regex!8670) (regTwo!17853 Regex!8670)) )
))
(declare-datatypes ((List!34343 0))(
  ( (Nil!34219) (Cons!34219 (h!39639 Regex!8670) (t!233386 List!34343)) )
))
(declare-datatypes ((Context!5260 0))(
  ( (Context!5261 (exprs!3130 List!34343)) )
))
(declare-fun z!691 () (Set Context!5260))

(declare-fun lostCauseZipper!574 ((Set Context!5260)) Bool)

(assert (=> start!279226 (= res!1189379 (not (lostCauseZipper!574 z!691)))))

(assert (=> start!279226 e!1813565))

(declare-fun condSetEmpty!25604 () Bool)

(assert (=> start!279226 (= condSetEmpty!25604 (= z!691 (as set.empty (Set Context!5260))))))

(declare-fun setRes!25604 () Bool)

(assert (=> start!279226 setRes!25604))

(declare-fun e!1813564 () Bool)

(assert (=> b!2864781 (= e!1813565 (not e!1813564))))

(declare-fun res!1189381 () Bool)

(assert (=> b!2864781 (=> res!1189381 e!1813564)))

(declare-fun exists!1086 ((Set Context!5260) Int) Bool)

(assert (=> b!2864781 (= res!1189381 (not (exists!1086 z!691 lambda!106071)))))

(declare-datatypes ((List!34344 0))(
  ( (Nil!34220) (Cons!34220 (h!39640 Context!5260) (t!233387 List!34344)) )
))
(declare-fun lt!1015749 () List!34344)

(declare-fun exists!1087 (List!34344 Int) Bool)

(assert (=> b!2864781 (exists!1087 lt!1015749 lambda!106071)))

(declare-datatypes ((Unit!47863 0))(
  ( (Unit!47864) )
))
(declare-fun lt!1015745 () Unit!47863)

(declare-fun lemmaNotForallThenExists!140 (List!34344 Int) Unit!47863)

(assert (=> b!2864781 (= lt!1015745 (lemmaNotForallThenExists!140 lt!1015749 lambda!106070))))

(declare-fun toList!2001 ((Set Context!5260)) List!34344)

(assert (=> b!2864781 (= lt!1015749 (toList!2001 z!691))))

(declare-fun setIsEmpty!25604 () Bool)

(assert (=> setIsEmpty!25604 setRes!25604))

(declare-fun e!1813562 () Bool)

(declare-fun tp!922571 () Bool)

(declare-fun setElem!25604 () Context!5260)

(declare-fun setNonEmpty!25604 () Bool)

(declare-fun inv!46263 (Context!5260) Bool)

(assert (=> setNonEmpty!25604 (= setRes!25604 (and tp!922571 (inv!46263 setElem!25604) e!1813562))))

(declare-fun setRest!25604 () (Set Context!5260))

(assert (=> setNonEmpty!25604 (= z!691 (set.union (set.insert setElem!25604 (as set.empty (Set Context!5260))) setRest!25604))))

(declare-fun res!1189383 () Bool)

(assert (=> b!2864782 (=> (not res!1189383) (not e!1813565))))

(declare-fun forall!7013 ((Set Context!5260) Int) Bool)

(assert (=> b!2864782 (= res!1189383 (not (forall!7013 z!691 lambda!106070)))))

(declare-fun b!2864783 () Bool)

(declare-fun res!1189380 () Bool)

(declare-fun e!1813563 () Bool)

(assert (=> b!2864783 (=> res!1189380 e!1813563)))

(assert (=> b!2864783 (= res!1189380 (not (exists!1087 lt!1015749 lambda!106072)))))

(declare-fun b!2864784 () Bool)

(assert (=> b!2864784 (= e!1813563 true)))

(declare-datatypes ((List!34345 0))(
  ( (Nil!34221) (Cons!34221 (h!39641 C!17522) (t!233388 List!34345)) )
))
(declare-fun lt!1015750 () List!34345)

(declare-fun matchZipper!450 ((Set Context!5260) List!34345) Bool)

(declare-fun content!4671 (List!34344) (Set Context!5260))

(assert (=> b!2864784 (matchZipper!450 (content!4671 lt!1015749) lt!1015750)))

(declare-fun lt!1015748 () Unit!47863)

(declare-fun lemmaExistsMatchingContextThenMatchingString!13 (List!34344 List!34345) Unit!47863)

(assert (=> b!2864784 (= lt!1015748 (lemmaExistsMatchingContextThenMatchingString!13 lt!1015749 lt!1015750))))

(declare-fun b!2864785 () Bool)

(declare-fun tp!922572 () Bool)

(assert (=> b!2864785 (= e!1813562 tp!922572)))

(declare-fun e!1813566 () Bool)

(assert (=> b!2864786 (= e!1813566 e!1813563)))

(declare-fun res!1189378 () Bool)

(assert (=> b!2864786 (=> res!1189378 e!1813563)))

(assert (=> b!2864786 (= res!1189378 (not (exists!1086 z!691 lambda!106072)))))

(assert (=> b!2864786 (exists!1086 z!691 lambda!106072)))

(declare-fun lt!1015747 () Context!5260)

(declare-fun lt!1015744 () Unit!47863)

(declare-fun lemmaContainsThenExists!56 ((Set Context!5260) Context!5260 Int) Unit!47863)

(assert (=> b!2864786 (= lt!1015744 (lemmaContainsThenExists!56 z!691 lt!1015747 lambda!106072))))

(declare-fun b!2864787 () Bool)

(declare-fun res!1189382 () Bool)

(assert (=> b!2864787 (=> (not res!1189382) (not e!1813565))))

(declare-datatypes ((Option!6349 0))(
  ( (None!6348) (Some!6348 (v!34470 List!34345)) )
))
(declare-fun isDefined!4969 (Option!6349) Bool)

(declare-fun getLanguageWitness!302 ((Set Context!5260)) Option!6349)

(assert (=> b!2864787 (= res!1189382 (isDefined!4969 (getLanguageWitness!302 z!691)))))

(declare-fun b!2864788 () Bool)

(assert (=> b!2864788 (= e!1813564 e!1813566)))

(declare-fun res!1189377 () Bool)

(assert (=> b!2864788 (=> res!1189377 e!1813566)))

(assert (=> b!2864788 (= res!1189377 (not (set.member lt!1015747 z!691)))))

(assert (=> b!2864788 (matchZipper!450 (set.insert lt!1015747 (as set.empty (Set Context!5260))) lt!1015750)))

(declare-fun get!10264 (Option!6349) List!34345)

(declare-fun getLanguageWitness!303 (Context!5260) Option!6349)

(assert (=> b!2864788 (= lt!1015750 (get!10264 (getLanguageWitness!303 lt!1015747)))))

(declare-fun lt!1015746 () Unit!47863)

(declare-fun lemmaGetWitnessMatchesContext!9 (Context!5260) Unit!47863)

(assert (=> b!2864788 (= lt!1015746 (lemmaGetWitnessMatchesContext!9 lt!1015747))))

(declare-fun getWitness!600 ((Set Context!5260) Int) Context!5260)

(assert (=> b!2864788 (= lt!1015747 (getWitness!600 z!691 lambda!106071))))

(assert (= (and start!279226 res!1189379) b!2864787))

(assert (= (and b!2864787 res!1189382) b!2864782))

(assert (= (and b!2864782 res!1189383) b!2864781))

(assert (= (and b!2864781 (not res!1189381)) b!2864788))

(assert (= (and b!2864788 (not res!1189377)) b!2864786))

(assert (= (and b!2864786 (not res!1189378)) b!2864783))

(assert (= (and b!2864783 (not res!1189380)) b!2864784))

(assert (= (and start!279226 condSetEmpty!25604) setIsEmpty!25604))

(assert (= (and start!279226 (not condSetEmpty!25604)) setNonEmpty!25604))

(assert (= setNonEmpty!25604 b!2864785))

(declare-fun m!3284681 () Bool)

(assert (=> b!2864783 m!3284681))

(declare-fun m!3284683 () Bool)

(assert (=> b!2864784 m!3284683))

(assert (=> b!2864784 m!3284683))

(declare-fun m!3284685 () Bool)

(assert (=> b!2864784 m!3284685))

(declare-fun m!3284687 () Bool)

(assert (=> b!2864784 m!3284687))

(declare-fun m!3284689 () Bool)

(assert (=> b!2864781 m!3284689))

(declare-fun m!3284691 () Bool)

(assert (=> b!2864781 m!3284691))

(declare-fun m!3284693 () Bool)

(assert (=> b!2864781 m!3284693))

(declare-fun m!3284695 () Bool)

(assert (=> b!2864781 m!3284695))

(declare-fun m!3284697 () Bool)

(assert (=> start!279226 m!3284697))

(declare-fun m!3284699 () Bool)

(assert (=> setNonEmpty!25604 m!3284699))

(declare-fun m!3284701 () Bool)

(assert (=> b!2864788 m!3284701))

(declare-fun m!3284703 () Bool)

(assert (=> b!2864788 m!3284703))

(declare-fun m!3284705 () Bool)

(assert (=> b!2864788 m!3284705))

(declare-fun m!3284707 () Bool)

(assert (=> b!2864788 m!3284707))

(assert (=> b!2864788 m!3284703))

(declare-fun m!3284709 () Bool)

(assert (=> b!2864788 m!3284709))

(assert (=> b!2864788 m!3284707))

(declare-fun m!3284711 () Bool)

(assert (=> b!2864788 m!3284711))

(declare-fun m!3284713 () Bool)

(assert (=> b!2864788 m!3284713))

(declare-fun m!3284715 () Bool)

(assert (=> b!2864786 m!3284715))

(assert (=> b!2864786 m!3284715))

(declare-fun m!3284717 () Bool)

(assert (=> b!2864786 m!3284717))

(declare-fun m!3284719 () Bool)

(assert (=> b!2864782 m!3284719))

(declare-fun m!3284721 () Bool)

(assert (=> b!2864787 m!3284721))

(assert (=> b!2864787 m!3284721))

(declare-fun m!3284723 () Bool)

(assert (=> b!2864787 m!3284723))

(push 1)

(assert (not b!2864787))

(assert (not b!2864786))

(assert (not b!2864785))

(assert (not b!2864782))

(assert (not b!2864783))

(assert (not setNonEmpty!25604))

(assert (not start!279226))

(assert (not b!2864781))

(assert (not b!2864788))

(assert (not b!2864784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


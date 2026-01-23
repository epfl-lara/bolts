; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279218 () Bool)

(assert start!279218)

(declare-fun bs!520973 () Bool)

(declare-fun b!2864695 () Bool)

(declare-fun b!2864696 () Bool)

(assert (= bs!520973 (and b!2864695 b!2864696)))

(declare-fun lambda!105999 () Int)

(declare-fun lambda!105998 () Int)

(assert (=> bs!520973 (not (= lambda!105999 lambda!105998))))

(declare-fun b!2864693 () Bool)

(declare-fun e!1813504 () Bool)

(assert (=> b!2864693 (= e!1813504 true)))

(declare-datatypes ((C!17514 0))(
  ( (C!17515 (val!10791 Int)) )
))
(declare-datatypes ((Regex!8666 0))(
  ( (ElementMatch!8666 (c!462037 C!17514)) (Concat!13987 (regOne!17844 Regex!8666) (regTwo!17844 Regex!8666)) (EmptyExpr!8666) (Star!8666 (reg!8995 Regex!8666)) (EmptyLang!8666) (Union!8666 (regOne!17845 Regex!8666) (regTwo!17845 Regex!8666)) )
))
(declare-datatypes ((List!34331 0))(
  ( (Nil!34207) (Cons!34207 (h!39627 Regex!8666) (t!233374 List!34331)) )
))
(declare-datatypes ((Context!5252 0))(
  ( (Context!5253 (exprs!3126 List!34331)) )
))
(declare-fun lt!1015681 () Context!5252)

(declare-datatypes ((List!34332 0))(
  ( (Nil!34208) (Cons!34208 (h!39628 C!17514) (t!233375 List!34332)) )
))
(declare-fun matchZipper!446 ((Set Context!5252) List!34332) Bool)

(declare-datatypes ((Option!6345 0))(
  ( (None!6344) (Some!6344 (v!34466 List!34332)) )
))
(declare-fun get!10258 (Option!6345) List!34332)

(declare-fun getLanguageWitness!294 (Context!5252) Option!6345)

(assert (=> b!2864693 (matchZipper!446 (set.insert lt!1015681 (as set.empty (Set Context!5252))) (get!10258 (getLanguageWitness!294 lt!1015681)))))

(declare-datatypes ((Unit!47855 0))(
  ( (Unit!47856) )
))
(declare-fun lt!1015680 () Unit!47855)

(declare-fun lemmaGetWitnessMatchesContext!5 (Context!5252) Unit!47855)

(assert (=> b!2864693 (= lt!1015680 (lemmaGetWitnessMatchesContext!5 lt!1015681))))

(declare-fun z!691 () (Set Context!5252))

(declare-fun getWitness!596 ((Set Context!5252) Int) Context!5252)

(assert (=> b!2864693 (= lt!1015681 (getWitness!596 z!691 lambda!105999))))

(declare-fun e!1813502 () Bool)

(declare-fun setNonEmpty!25592 () Bool)

(declare-fun setElem!25592 () Context!5252)

(declare-fun tp!922547 () Bool)

(declare-fun setRes!25592 () Bool)

(declare-fun inv!46253 (Context!5252) Bool)

(assert (=> setNonEmpty!25592 (= setRes!25592 (and tp!922547 (inv!46253 setElem!25592) e!1813502))))

(declare-fun setRest!25592 () (Set Context!5252))

(assert (=> setNonEmpty!25592 (= z!691 (set.union (set.insert setElem!25592 (as set.empty (Set Context!5252))) setRest!25592))))

(declare-fun b!2864694 () Bool)

(declare-fun res!1189308 () Bool)

(declare-fun e!1813503 () Bool)

(assert (=> b!2864694 (=> (not res!1189308) (not e!1813503))))

(declare-fun isDefined!4965 (Option!6345) Bool)

(declare-fun getLanguageWitness!295 ((Set Context!5252)) Option!6345)

(assert (=> b!2864694 (= res!1189308 (isDefined!4965 (getLanguageWitness!295 z!691)))))

(assert (=> b!2864695 (= e!1813503 (not e!1813504))))

(declare-fun res!1189306 () Bool)

(assert (=> b!2864695 (=> res!1189306 e!1813504)))

(declare-fun exists!1078 ((Set Context!5252) Int) Bool)

(assert (=> b!2864695 (= res!1189306 (not (exists!1078 z!691 lambda!105999)))))

(declare-datatypes ((List!34333 0))(
  ( (Nil!34209) (Cons!34209 (h!39629 Context!5252) (t!233376 List!34333)) )
))
(declare-fun lt!1015679 () List!34333)

(declare-fun exists!1079 (List!34333 Int) Bool)

(assert (=> b!2864695 (exists!1079 lt!1015679 lambda!105999)))

(declare-fun lt!1015678 () Unit!47855)

(declare-fun lemmaNotForallThenExists!136 (List!34333 Int) Unit!47855)

(assert (=> b!2864695 (= lt!1015678 (lemmaNotForallThenExists!136 lt!1015679 lambda!105998))))

(declare-fun toList!1997 ((Set Context!5252)) List!34333)

(assert (=> b!2864695 (= lt!1015679 (toList!1997 z!691))))

(declare-fun setIsEmpty!25592 () Bool)

(assert (=> setIsEmpty!25592 setRes!25592))

(declare-fun res!1189307 () Bool)

(assert (=> b!2864696 (=> (not res!1189307) (not e!1813503))))

(declare-fun forall!7009 ((Set Context!5252) Int) Bool)

(assert (=> b!2864696 (= res!1189307 (not (forall!7009 z!691 lambda!105998)))))

(declare-fun res!1189305 () Bool)

(assert (=> start!279218 (=> (not res!1189305) (not e!1813503))))

(declare-fun lostCauseZipper!570 ((Set Context!5252)) Bool)

(assert (=> start!279218 (= res!1189305 (not (lostCauseZipper!570 z!691)))))

(assert (=> start!279218 e!1813503))

(declare-fun condSetEmpty!25592 () Bool)

(assert (=> start!279218 (= condSetEmpty!25592 (= z!691 (as set.empty (Set Context!5252))))))

(assert (=> start!279218 setRes!25592))

(declare-fun b!2864697 () Bool)

(declare-fun tp!922548 () Bool)

(assert (=> b!2864697 (= e!1813502 tp!922548)))

(assert (= (and start!279218 res!1189305) b!2864694))

(assert (= (and b!2864694 res!1189308) b!2864696))

(assert (= (and b!2864696 res!1189307) b!2864695))

(assert (= (and b!2864695 (not res!1189306)) b!2864693))

(assert (= (and start!279218 condSetEmpty!25592) setIsEmpty!25592))

(assert (= (and start!279218 (not condSetEmpty!25592)) setNonEmpty!25592))

(assert (= setNonEmpty!25592 b!2864697))

(declare-fun m!3284545 () Bool)

(assert (=> b!2864694 m!3284545))

(assert (=> b!2864694 m!3284545))

(declare-fun m!3284547 () Bool)

(assert (=> b!2864694 m!3284547))

(declare-fun m!3284549 () Bool)

(assert (=> b!2864693 m!3284549))

(declare-fun m!3284551 () Bool)

(assert (=> b!2864693 m!3284551))

(declare-fun m!3284553 () Bool)

(assert (=> b!2864693 m!3284553))

(declare-fun m!3284555 () Bool)

(assert (=> b!2864693 m!3284555))

(assert (=> b!2864693 m!3284551))

(declare-fun m!3284557 () Bool)

(assert (=> b!2864693 m!3284557))

(assert (=> b!2864693 m!3284555))

(assert (=> b!2864693 m!3284557))

(declare-fun m!3284559 () Bool)

(assert (=> b!2864693 m!3284559))

(declare-fun m!3284561 () Bool)

(assert (=> setNonEmpty!25592 m!3284561))

(declare-fun m!3284563 () Bool)

(assert (=> start!279218 m!3284563))

(declare-fun m!3284565 () Bool)

(assert (=> b!2864695 m!3284565))

(declare-fun m!3284567 () Bool)

(assert (=> b!2864695 m!3284567))

(declare-fun m!3284569 () Bool)

(assert (=> b!2864695 m!3284569))

(declare-fun m!3284571 () Bool)

(assert (=> b!2864695 m!3284571))

(declare-fun m!3284573 () Bool)

(assert (=> b!2864696 m!3284573))

(push 1)

(assert (not b!2864694))

(assert (not b!2864696))

(assert (not b!2864693))

(assert (not setNonEmpty!25592))

(assert (not b!2864697))

(assert (not start!279218))

(assert (not b!2864695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


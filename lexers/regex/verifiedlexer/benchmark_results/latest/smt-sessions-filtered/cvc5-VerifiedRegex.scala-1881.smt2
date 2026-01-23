; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92816 () Bool)

(assert start!92816)

(declare-fun b!1087506 () Bool)

(assert (=> b!1087506 true))

(declare-fun b!1087498 () Bool)

(declare-fun e!687878 () Bool)

(declare-fun tp!325899 () Bool)

(assert (=> b!1087498 (= e!687878 tp!325899)))

(declare-fun b!1087499 () Bool)

(declare-fun tp!325900 () Bool)

(declare-fun e!687876 () Bool)

(declare-fun e!687875 () Bool)

(declare-datatypes ((C!6610 0))(
  ( (C!6611 (val!3553 Int)) )
))
(declare-datatypes ((Regex!3020 0))(
  ( (ElementMatch!3020 (c!184046 C!6610)) (Concat!4853 (regOne!6552 Regex!3020) (regTwo!6552 Regex!3020)) (EmptyExpr!3020) (Star!3020 (reg!3349 Regex!3020)) (EmptyLang!3020) (Union!3020 (regOne!6553 Regex!3020) (regTwo!6553 Regex!3020)) )
))
(declare-datatypes ((List!10363 0))(
  ( (Nil!10347) (Cons!10347 (h!15748 Regex!3020) (t!101409 List!10363)) )
))
(declare-datatypes ((Context!1000 0))(
  ( (Context!1001 (exprs!1000 List!10363)) )
))
(declare-datatypes ((List!10364 0))(
  ( (Nil!10348) (Cons!10348 (h!15749 Context!1000) (t!101410 List!10364)) )
))
(declare-fun zl!316 () List!10364)

(declare-fun inv!13264 (Context!1000) Bool)

(assert (=> b!1087499 (= e!687875 (and (inv!13264 (h!15749 zl!316)) e!687876 tp!325900))))

(declare-fun b!1087500 () Bool)

(declare-fun e!687871 () Bool)

(assert (=> b!1087500 (= e!687871 true)))

(assert (=> b!1087500 false))

(declare-datatypes ((Unit!15739 0))(
  ( (Unit!15740) )
))
(declare-fun lt!363765 () Unit!15739)

(declare-fun lt!363762 () (Set Context!1000))

(declare-datatypes ((List!10365 0))(
  ( (Nil!10349) (Cons!10349 (h!15750 C!6610) (t!101411 List!10365)) )
))
(declare-fun s!2287 () List!10365)

(declare-fun lemmaLostCauseCannotMatch!14 ((Set Context!1000) List!10365) Unit!15739)

(assert (=> b!1087500 (= lt!363765 (lemmaLostCauseCannotMatch!14 lt!363762 s!2287))))

(declare-fun res!483493 () Bool)

(declare-fun e!687872 () Bool)

(assert (=> start!92816 (=> (not res!483493) (not e!687872))))

(declare-fun z!1122 () (Set Context!1000))

(declare-fun toList!638 ((Set Context!1000)) List!10364)

(assert (=> start!92816 (= res!483493 (= (toList!638 z!1122) zl!316))))

(assert (=> start!92816 e!687872))

(declare-fun condSetEmpty!7651 () Bool)

(assert (=> start!92816 (= condSetEmpty!7651 (= z!1122 (as set.empty (Set Context!1000))))))

(declare-fun setRes!7651 () Bool)

(assert (=> start!92816 setRes!7651))

(assert (=> start!92816 e!687875))

(declare-fun e!687874 () Bool)

(assert (=> start!92816 e!687874))

(declare-fun setIsEmpty!7651 () Bool)

(assert (=> setIsEmpty!7651 setRes!7651))

(declare-fun b!1087501 () Bool)

(declare-fun res!483496 () Bool)

(assert (=> b!1087501 (=> (not res!483496) (not e!687872))))

(declare-fun matchZipper!68 ((Set Context!1000) List!10365) Bool)

(assert (=> b!1087501 (= res!483496 (matchZipper!68 z!1122 s!2287))))

(declare-fun b!1087502 () Bool)

(declare-fun tp!325901 () Bool)

(assert (=> b!1087502 (= e!687876 tp!325901)))

(declare-fun b!1087503 () Bool)

(declare-fun tp_is_empty!5671 () Bool)

(declare-fun tp!325897 () Bool)

(assert (=> b!1087503 (= e!687874 (and tp_is_empty!5671 tp!325897))))

(declare-fun b!1087504 () Bool)

(declare-fun e!687873 () Bool)

(declare-fun e!687877 () Bool)

(assert (=> b!1087504 (= e!687873 e!687877)))

(declare-fun res!483494 () Bool)

(assert (=> b!1087504 (=> res!483494 e!687877)))

(declare-fun lt!363764 () Context!1000)

(assert (=> b!1087504 (= res!483494 (not (set.member lt!363764 z!1122)))))

(declare-fun lambda!40493 () Int)

(declare-fun getWitness!93 ((Set Context!1000) Int) Context!1000)

(assert (=> b!1087504 (= lt!363764 (getWitness!93 z!1122 lambda!40493))))

(declare-fun tp!325898 () Bool)

(declare-fun setElem!7651 () Context!1000)

(declare-fun setNonEmpty!7651 () Bool)

(assert (=> setNonEmpty!7651 (= setRes!7651 (and tp!325898 (inv!13264 setElem!7651) e!687878))))

(declare-fun setRest!7651 () (Set Context!1000))

(assert (=> setNonEmpty!7651 (= z!1122 (set.union (set.insert setElem!7651 (as set.empty (Set Context!1000))) setRest!7651))))

(declare-fun b!1087505 () Bool)

(assert (=> b!1087505 (= e!687877 e!687871)))

(declare-fun res!483492 () Bool)

(assert (=> b!1087505 (=> res!483492 e!687871)))

(assert (=> b!1087505 (= res!483492 (not (matchZipper!68 lt!363762 s!2287)))))

(assert (=> b!1087505 (= lt!363762 (set.insert lt!363764 (as set.empty (Set Context!1000))))))

(assert (=> b!1087506 (= e!687872 (not e!687873))))

(declare-fun res!483497 () Bool)

(assert (=> b!1087506 (=> res!483497 e!687873)))

(declare-fun exists!181 ((Set Context!1000) Int) Bool)

(assert (=> b!1087506 (= res!483497 (not (exists!181 z!1122 lambda!40493)))))

(declare-fun exists!182 (List!10364 Int) Bool)

(assert (=> b!1087506 (exists!182 zl!316 lambda!40493)))

(declare-fun lt!363763 () Unit!15739)

(declare-fun lemmaZipperMatchesExistsMatchingContext!45 (List!10364 List!10365) Unit!15739)

(assert (=> b!1087506 (= lt!363763 (lemmaZipperMatchesExistsMatchingContext!45 zl!316 s!2287))))

(declare-fun b!1087507 () Bool)

(declare-fun res!483495 () Bool)

(assert (=> b!1087507 (=> res!483495 e!687871)))

(declare-fun lostCause!230 (Context!1000) Bool)

(assert (=> b!1087507 (= res!483495 (not (lostCause!230 lt!363764)))))

(assert (= (and start!92816 res!483493) b!1087501))

(assert (= (and b!1087501 res!483496) b!1087506))

(assert (= (and b!1087506 (not res!483497)) b!1087504))

(assert (= (and b!1087504 (not res!483494)) b!1087505))

(assert (= (and b!1087505 (not res!483492)) b!1087507))

(assert (= (and b!1087507 (not res!483495)) b!1087500))

(assert (= (and start!92816 condSetEmpty!7651) setIsEmpty!7651))

(assert (= (and start!92816 (not condSetEmpty!7651)) setNonEmpty!7651))

(assert (= setNonEmpty!7651 b!1087498))

(assert (= b!1087499 b!1087502))

(assert (= (and start!92816 (is-Cons!10348 zl!316)) b!1087499))

(assert (= (and start!92816 (is-Cons!10349 s!2287)) b!1087503))

(declare-fun m!1237779 () Bool)

(assert (=> b!1087504 m!1237779))

(declare-fun m!1237781 () Bool)

(assert (=> b!1087504 m!1237781))

(declare-fun m!1237783 () Bool)

(assert (=> b!1087505 m!1237783))

(declare-fun m!1237785 () Bool)

(assert (=> b!1087505 m!1237785))

(declare-fun m!1237787 () Bool)

(assert (=> b!1087501 m!1237787))

(declare-fun m!1237789 () Bool)

(assert (=> b!1087499 m!1237789))

(declare-fun m!1237791 () Bool)

(assert (=> b!1087500 m!1237791))

(declare-fun m!1237793 () Bool)

(assert (=> setNonEmpty!7651 m!1237793))

(declare-fun m!1237795 () Bool)

(assert (=> b!1087506 m!1237795))

(declare-fun m!1237797 () Bool)

(assert (=> b!1087506 m!1237797))

(declare-fun m!1237799 () Bool)

(assert (=> b!1087506 m!1237799))

(declare-fun m!1237801 () Bool)

(assert (=> b!1087507 m!1237801))

(declare-fun m!1237803 () Bool)

(assert (=> start!92816 m!1237803))

(push 1)

(assert (not b!1087506))

(assert (not b!1087503))

(assert (not b!1087500))

(assert (not b!1087505))

(assert (not b!1087504))

(assert (not start!92816))

(assert (not b!1087502))

(assert (not b!1087507))

(assert (not setNonEmpty!7651))

(assert (not b!1087499))

(assert (not b!1087498))

(assert (not b!1087501))

(assert tp_is_empty!5671)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


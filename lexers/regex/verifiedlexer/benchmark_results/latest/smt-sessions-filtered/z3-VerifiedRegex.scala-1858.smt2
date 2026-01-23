; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92206 () Bool)

(assert start!92206)

(declare-fun b!1084463 () Bool)

(assert (=> b!1084463 true))

(declare-fun b!1084456 () Bool)

(declare-fun e!685743 () Bool)

(declare-fun tp!324410 () Bool)

(assert (=> b!1084456 (= e!685743 tp!324410)))

(declare-fun res!482413 () Bool)

(declare-fun e!685744 () Bool)

(assert (=> start!92206 (=> (not res!482413) (not e!685744))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6520 0))(
  ( (C!6521 (val!3508 Int)) )
))
(declare-datatypes ((Regex!2975 0))(
  ( (ElementMatch!2975 (c!183054 C!6520)) (Concat!4808 (regOne!6462 Regex!2975) (regTwo!6462 Regex!2975)) (EmptyExpr!2975) (Star!2975 (reg!3304 Regex!2975)) (EmptyLang!2975) (Union!2975 (regOne!6463 Regex!2975) (regTwo!6463 Regex!2975)) )
))
(declare-datatypes ((List!10228 0))(
  ( (Nil!10212) (Cons!10212 (h!15613 Regex!2975) (t!101274 List!10228)) )
))
(declare-datatypes ((Context!910 0))(
  ( (Context!911 (exprs!955 List!10228)) )
))
(declare-fun z!1122 () (InoxSet Context!910))

(declare-datatypes ((List!10229 0))(
  ( (Nil!10213) (Cons!10213 (h!15614 Context!910) (t!101275 List!10229)) )
))
(declare-fun zl!316 () List!10229)

(declare-fun toList!593 ((InoxSet Context!910)) List!10229)

(assert (=> start!92206 (= res!482413 (= (toList!593 z!1122) zl!316))))

(assert (=> start!92206 e!685744))

(declare-fun condSetEmpty!7440 () Bool)

(assert (=> start!92206 (= condSetEmpty!7440 (= z!1122 ((as const (Array Context!910 Bool)) false)))))

(declare-fun setRes!7440 () Bool)

(assert (=> start!92206 setRes!7440))

(declare-fun e!685745 () Bool)

(assert (=> start!92206 e!685745))

(declare-fun e!685749 () Bool)

(assert (=> start!92206 e!685749))

(declare-fun b!1084457 () Bool)

(declare-fun e!685747 () Bool)

(declare-fun tp!324409 () Bool)

(assert (=> b!1084457 (= e!685747 tp!324409)))

(declare-fun b!1084458 () Bool)

(declare-fun e!685742 () Bool)

(declare-fun e!685748 () Bool)

(assert (=> b!1084458 (= e!685742 e!685748)))

(declare-fun res!482412 () Bool)

(assert (=> b!1084458 (=> res!482412 e!685748)))

(declare-fun lt!362687 () (InoxSet Context!910))

(declare-datatypes ((List!10230 0))(
  ( (Nil!10214) (Cons!10214 (h!15615 C!6520) (t!101276 List!10230)) )
))
(declare-fun s!2287 () List!10230)

(declare-fun matchZipper!23 ((InoxSet Context!910) List!10230) Bool)

(assert (=> b!1084458 (= res!482412 (not (matchZipper!23 lt!362687 s!2287)))))

(declare-fun lt!362686 () Context!910)

(assert (=> b!1084458 (= lt!362687 (store ((as const (Array Context!910 Bool)) false) lt!362686 true))))

(declare-fun b!1084459 () Bool)

(declare-fun e!685746 () Bool)

(assert (=> b!1084459 (= e!685746 e!685742)))

(declare-fun res!482415 () Bool)

(assert (=> b!1084459 (=> res!482415 e!685742)))

(assert (=> b!1084459 (= res!482415 (not (select z!1122 lt!362686)))))

(declare-fun lambda!39433 () Int)

(declare-fun getWitness!44 ((InoxSet Context!910) Int) Context!910)

(assert (=> b!1084459 (= lt!362686 (getWitness!44 z!1122 lambda!39433))))

(declare-fun b!1084460 () Bool)

(declare-fun tp!324407 () Bool)

(declare-fun inv!13150 (Context!910) Bool)

(assert (=> b!1084460 (= e!685745 (and (inv!13150 (h!15614 zl!316)) e!685747 tp!324407))))

(declare-fun b!1084461 () Bool)

(assert (=> b!1084461 (= e!685748 true)))

(declare-fun lt!362685 () Bool)

(declare-fun lostCauseZipper!6 ((InoxSet Context!910)) Bool)

(assert (=> b!1084461 (= lt!362685 (lostCauseZipper!6 lt!362687))))

(declare-fun b!1084462 () Bool)

(declare-fun res!482417 () Bool)

(assert (=> b!1084462 (=> res!482417 e!685748)))

(declare-fun lostCause!212 (Context!910) Bool)

(assert (=> b!1084462 (= res!482417 (not (lostCause!212 lt!362686)))))

(assert (=> b!1084463 (= e!685744 (not e!685746))))

(declare-fun res!482416 () Bool)

(assert (=> b!1084463 (=> res!482416 e!685746)))

(declare-fun exists!95 ((InoxSet Context!910) Int) Bool)

(assert (=> b!1084463 (= res!482416 (not (exists!95 z!1122 lambda!39433)))))

(declare-fun exists!96 (List!10229 Int) Bool)

(assert (=> b!1084463 (exists!96 zl!316 lambda!39433)))

(declare-datatypes ((Unit!15621 0))(
  ( (Unit!15622) )
))
(declare-fun lt!362684 () Unit!15621)

(declare-fun lemmaZipperMatchesExistsMatchingContext!4 (List!10229 List!10230) Unit!15621)

(assert (=> b!1084463 (= lt!362684 (lemmaZipperMatchesExistsMatchingContext!4 zl!316 s!2287))))

(declare-fun setNonEmpty!7440 () Bool)

(declare-fun setElem!7440 () Context!910)

(declare-fun tp!324408 () Bool)

(assert (=> setNonEmpty!7440 (= setRes!7440 (and tp!324408 (inv!13150 setElem!7440) e!685743))))

(declare-fun setRest!7440 () (InoxSet Context!910))

(assert (=> setNonEmpty!7440 (= z!1122 ((_ map or) (store ((as const (Array Context!910 Bool)) false) setElem!7440 true) setRest!7440))))

(declare-fun setIsEmpty!7440 () Bool)

(assert (=> setIsEmpty!7440 setRes!7440))

(declare-fun b!1084464 () Bool)

(declare-fun tp_is_empty!5581 () Bool)

(declare-fun tp!324406 () Bool)

(assert (=> b!1084464 (= e!685749 (and tp_is_empty!5581 tp!324406))))

(declare-fun b!1084465 () Bool)

(declare-fun res!482414 () Bool)

(assert (=> b!1084465 (=> (not res!482414) (not e!685744))))

(assert (=> b!1084465 (= res!482414 (matchZipper!23 z!1122 s!2287))))

(assert (= (and start!92206 res!482413) b!1084465))

(assert (= (and b!1084465 res!482414) b!1084463))

(assert (= (and b!1084463 (not res!482416)) b!1084459))

(assert (= (and b!1084459 (not res!482415)) b!1084458))

(assert (= (and b!1084458 (not res!482412)) b!1084462))

(assert (= (and b!1084462 (not res!482417)) b!1084461))

(assert (= (and start!92206 condSetEmpty!7440) setIsEmpty!7440))

(assert (= (and start!92206 (not condSetEmpty!7440)) setNonEmpty!7440))

(assert (= setNonEmpty!7440 b!1084456))

(assert (= b!1084460 b!1084457))

(get-info :version)

(assert (= (and start!92206 ((_ is Cons!10213) zl!316)) b!1084460))

(assert (= (and start!92206 ((_ is Cons!10214) s!2287)) b!1084464))

(declare-fun m!1234131 () Bool)

(assert (=> start!92206 m!1234131))

(declare-fun m!1234133 () Bool)

(assert (=> b!1084461 m!1234133))

(declare-fun m!1234135 () Bool)

(assert (=> b!1084463 m!1234135))

(declare-fun m!1234137 () Bool)

(assert (=> b!1084463 m!1234137))

(declare-fun m!1234139 () Bool)

(assert (=> b!1084463 m!1234139))

(declare-fun m!1234141 () Bool)

(assert (=> b!1084460 m!1234141))

(declare-fun m!1234143 () Bool)

(assert (=> setNonEmpty!7440 m!1234143))

(declare-fun m!1234145 () Bool)

(assert (=> b!1084465 m!1234145))

(declare-fun m!1234147 () Bool)

(assert (=> b!1084459 m!1234147))

(declare-fun m!1234149 () Bool)

(assert (=> b!1084459 m!1234149))

(declare-fun m!1234151 () Bool)

(assert (=> b!1084458 m!1234151))

(declare-fun m!1234153 () Bool)

(assert (=> b!1084458 m!1234153))

(declare-fun m!1234155 () Bool)

(assert (=> b!1084462 m!1234155))

(check-sat (not b!1084457) (not b!1084464) (not b!1084456) (not b!1084460) (not b!1084459) tp_is_empty!5581 (not start!92206) (not b!1084458) (not setNonEmpty!7440) (not b!1084461) (not b!1084462) (not b!1084463) (not b!1084465))
(check-sat)

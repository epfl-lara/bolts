; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542808 () Bool)

(assert start!542808)

(declare-fun b!5132126 () Bool)

(assert (=> b!5132126 true))

(declare-fun bs!1198391 () Bool)

(declare-fun b!5132122 () Bool)

(declare-fun b!5132129 () Bool)

(assert (= bs!1198391 (and b!5132122 b!5132129)))

(declare-fun lambda!254659 () Int)

(declare-fun lambda!254658 () Int)

(assert (=> bs!1198391 (not (= lambda!254659 lambda!254658))))

(declare-fun bs!1198392 () Bool)

(declare-fun b!5132127 () Bool)

(assert (= bs!1198392 (and b!5132127 b!5132129)))

(declare-fun lambda!254660 () Int)

(assert (=> bs!1198392 (not (= lambda!254660 lambda!254658))))

(declare-fun bs!1198393 () Bool)

(assert (= bs!1198393 (and b!5132127 b!5132122)))

(assert (=> bs!1198393 (not (= lambda!254660 lambda!254659))))

(assert (=> b!5132127 true))

(assert (=> b!5132127 true))

(declare-fun b!5132120 () Bool)

(declare-fun res!2185792 () Bool)

(declare-fun e!3200953 () Bool)

(assert (=> b!5132120 (=> (not res!2185792) (not e!3200953))))

(declare-fun lt!2117557 () Bool)

(assert (=> b!5132120 (= res!2185792 (not lt!2117557))))

(declare-fun b!5132121 () Bool)

(declare-fun res!2185787 () Bool)

(declare-fun e!3200958 () Bool)

(assert (=> b!5132121 (=> res!2185787 e!3200958)))

(declare-datatypes ((C!28976 0))(
  ( (C!28977 (val!24140 Int)) )
))
(declare-datatypes ((Regex!14355 0))(
  ( (ElementMatch!14355 (c!883062 C!28976)) (Concat!23200 (regOne!29222 Regex!14355) (regTwo!29222 Regex!14355)) (EmptyExpr!14355) (Star!14355 (reg!14684 Regex!14355)) (EmptyLang!14355) (Union!14355 (regOne!29223 Regex!14355) (regTwo!29223 Regex!14355)) )
))
(declare-datatypes ((List!59647 0))(
  ( (Nil!59523) (Cons!59523 (h!65971 Regex!14355) (t!372674 List!59647)) )
))
(declare-datatypes ((Context!7478 0))(
  ( (Context!7479 (exprs!4239 List!59647)) )
))
(declare-fun lt!2117556 () Context!7478)

(declare-fun lostCause!1298 (Context!7478) Bool)

(assert (=> b!5132121 (= res!2185787 (lostCause!1298 lt!2117556))))

(declare-fun setElem!31164 () Context!7478)

(declare-fun setRes!31164 () Bool)

(declare-fun e!3200956 () Bool)

(declare-fun tp!1431728 () Bool)

(declare-fun setNonEmpty!31164 () Bool)

(declare-fun inv!79068 (Context!7478) Bool)

(assert (=> setNonEmpty!31164 (= setRes!31164 (and tp!1431728 (inv!79068 setElem!31164) e!3200956))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1054 () (InoxSet Context!7478))

(declare-fun setRest!31164 () (InoxSet Context!7478))

(assert (=> setNonEmpty!31164 (= z!1054 ((_ map or) (store ((as const (Array Context!7478 Bool)) false) setElem!31164 true) setRest!31164))))

(declare-fun e!3200955 () Bool)

(assert (=> b!5132122 (= e!3200953 (not e!3200955))))

(declare-fun res!2185784 () Bool)

(assert (=> b!5132122 (=> res!2185784 e!3200955)))

(declare-fun lt!2117553 () (InoxSet Context!7478))

(declare-fun exists!1668 ((InoxSet Context!7478) Int) Bool)

(assert (=> b!5132122 (= res!2185784 (not (exists!1668 lt!2117553 lambda!254659)))))

(declare-datatypes ((List!59648 0))(
  ( (Nil!59524) (Cons!59524 (h!65972 Context!7478) (t!372675 List!59648)) )
))
(declare-fun lt!2117555 () List!59648)

(declare-fun exists!1669 (List!59648 Int) Bool)

(assert (=> b!5132122 (exists!1669 lt!2117555 lambda!254659)))

(declare-datatypes ((Unit!150813 0))(
  ( (Unit!150814) )
))
(declare-fun lt!2117554 () Unit!150813)

(declare-fun lemmaNotForallThenExists!388 (List!59648 Int) Unit!150813)

(assert (=> b!5132122 (= lt!2117554 (lemmaNotForallThenExists!388 lt!2117555 lambda!254658))))

(declare-fun toList!8340 ((InoxSet Context!7478)) List!59648)

(assert (=> b!5132122 (= lt!2117555 (toList!8340 lt!2117553))))

(declare-fun b!5132123 () Bool)

(declare-fun res!2185786 () Bool)

(assert (=> b!5132123 (=> (not res!2185786) (not e!3200953))))

(declare-fun forall!13792 ((InoxSet Context!7478) Int) Bool)

(assert (=> b!5132123 (= res!2185786 (not (forall!13792 lt!2117553 lambda!254658)))))

(declare-fun b!5132124 () Bool)

(assert (=> b!5132124 (= e!3200955 e!3200958)))

(declare-fun res!2185790 () Bool)

(assert (=> b!5132124 (=> res!2185790 e!3200958)))

(assert (=> b!5132124 (= res!2185790 (not (select lt!2117553 lt!2117556)))))

(declare-fun getWitness!803 (List!59648 Int) Context!7478)

(assert (=> b!5132124 (= lt!2117556 (getWitness!803 lt!2117555 lambda!254659))))

(declare-fun res!2185785 () Bool)

(declare-fun e!3200954 () Bool)

(assert (=> start!542808 (=> (not res!2185785) (not e!3200954))))

(declare-fun lostCauseZipper!1199 ((InoxSet Context!7478)) Bool)

(assert (=> start!542808 (= res!2185785 (lostCauseZipper!1199 z!1054))))

(assert (=> start!542808 e!3200954))

(declare-fun condSetEmpty!31164 () Bool)

(assert (=> start!542808 (= condSetEmpty!31164 (= z!1054 ((as const (Array Context!7478 Bool)) false)))))

(assert (=> start!542808 setRes!31164))

(declare-fun tp_is_empty!37883 () Bool)

(assert (=> start!542808 tp_is_empty!37883))

(declare-fun setIsEmpty!31164 () Bool)

(assert (=> setIsEmpty!31164 setRes!31164))

(declare-fun b!5132125 () Bool)

(declare-fun tp!1431729 () Bool)

(assert (=> b!5132125 (= e!3200956 tp!1431729)))

(declare-fun e!3200957 () Bool)

(assert (=> b!5132126 (= e!3200954 e!3200957)))

(declare-fun res!2185788 () Bool)

(assert (=> b!5132126 (=> (not res!2185788) (not e!3200957))))

(declare-fun lambda!254657 () Int)

(declare-fun flatMap!406 ((InoxSet Context!7478) Int) (InoxSet Context!7478))

(assert (=> b!5132126 (= res!2185788 (= lt!2117553 (flatMap!406 z!1054 lambda!254657)))))

(declare-fun a!1233 () C!28976)

(declare-fun derivationStepZipper!910 ((InoxSet Context!7478) C!28976) (InoxSet Context!7478))

(assert (=> b!5132126 (= lt!2117553 (derivationStepZipper!910 z!1054 a!1233))))

(assert (=> b!5132127 (= e!3200958 (exists!1668 z!1054 lambda!254660))))

(assert (=> b!5132127 (exists!1668 z!1054 lambda!254660)))

(declare-fun lt!2117552 () Unit!150813)

(declare-fun lemmaFlatMapPost!10 ((InoxSet Context!7478) Int Context!7478) Unit!150813)

(assert (=> b!5132127 (= lt!2117552 (lemmaFlatMapPost!10 z!1054 lambda!254657 lt!2117556))))

(declare-fun b!5132128 () Bool)

(declare-fun res!2185791 () Bool)

(assert (=> b!5132128 (=> (not res!2185791) (not e!3200953))))

(assert (=> b!5132128 (= res!2185791 (forall!13792 z!1054 lambda!254658))))

(assert (=> b!5132129 (= e!3200957 e!3200953)))

(declare-fun res!2185789 () Bool)

(assert (=> b!5132129 (=> (not res!2185789) (not e!3200953))))

(assert (=> b!5132129 (= res!2185789 (= lt!2117557 (forall!13792 lt!2117553 lambda!254658)))))

(assert (=> b!5132129 (= lt!2117557 (lostCauseZipper!1199 lt!2117553))))

(assert (= (and start!542808 res!2185785) b!5132126))

(assert (= (and b!5132126 res!2185788) b!5132129))

(assert (= (and b!5132129 res!2185789) b!5132128))

(assert (= (and b!5132128 res!2185791) b!5132120))

(assert (= (and b!5132120 res!2185792) b!5132123))

(assert (= (and b!5132123 res!2185786) b!5132122))

(assert (= (and b!5132122 (not res!2185784)) b!5132124))

(assert (= (and b!5132124 (not res!2185790)) b!5132121))

(assert (= (and b!5132121 (not res!2185787)) b!5132127))

(assert (= (and start!542808 condSetEmpty!31164) setIsEmpty!31164))

(assert (= (and start!542808 (not condSetEmpty!31164)) setNonEmpty!31164))

(assert (= setNonEmpty!31164 b!5132125))

(declare-fun m!6197778 () Bool)

(assert (=> b!5132123 m!6197778))

(declare-fun m!6197780 () Bool)

(assert (=> setNonEmpty!31164 m!6197780))

(declare-fun m!6197782 () Bool)

(assert (=> b!5132122 m!6197782))

(declare-fun m!6197784 () Bool)

(assert (=> b!5132122 m!6197784))

(declare-fun m!6197786 () Bool)

(assert (=> b!5132122 m!6197786))

(declare-fun m!6197788 () Bool)

(assert (=> b!5132122 m!6197788))

(declare-fun m!6197790 () Bool)

(assert (=> b!5132128 m!6197790))

(declare-fun m!6197792 () Bool)

(assert (=> b!5132126 m!6197792))

(declare-fun m!6197794 () Bool)

(assert (=> b!5132126 m!6197794))

(declare-fun m!6197796 () Bool)

(assert (=> b!5132124 m!6197796))

(declare-fun m!6197798 () Bool)

(assert (=> b!5132124 m!6197798))

(declare-fun m!6197800 () Bool)

(assert (=> b!5132127 m!6197800))

(assert (=> b!5132127 m!6197800))

(declare-fun m!6197802 () Bool)

(assert (=> b!5132127 m!6197802))

(declare-fun m!6197804 () Bool)

(assert (=> start!542808 m!6197804))

(assert (=> b!5132129 m!6197778))

(declare-fun m!6197806 () Bool)

(assert (=> b!5132129 m!6197806))

(declare-fun m!6197808 () Bool)

(assert (=> b!5132121 m!6197808))

(check-sat (not b!5132123) (not b!5132127) (not b!5132126) (not b!5132128) (not setNonEmpty!31164) (not b!5132122) (not b!5132121) tp_is_empty!37883 (not start!542808) (not b!5132129) (not b!5132125) (not b!5132124))
(check-sat)

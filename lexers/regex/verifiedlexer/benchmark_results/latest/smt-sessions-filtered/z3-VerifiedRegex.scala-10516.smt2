; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542304 () Bool)

(assert start!542304)

(declare-fun bs!1195651 () Bool)

(declare-fun b!5130120 () Bool)

(declare-fun b!5130118 () Bool)

(assert (= bs!1195651 (and b!5130120 b!5130118)))

(declare-fun lambda!253476 () Int)

(declare-fun lambda!253475 () Int)

(assert (=> bs!1195651 (not (= lambda!253476 lambda!253475))))

(declare-fun bs!1195652 () Bool)

(declare-fun b!5130117 () Bool)

(assert (= bs!1195652 (and b!5130117 b!5130118)))

(declare-fun lambda!253477 () Int)

(assert (=> bs!1195652 (not (= lambda!253477 lambda!253475))))

(declare-fun bs!1195653 () Bool)

(assert (= bs!1195653 (and b!5130117 b!5130120)))

(assert (=> bs!1195653 (not (= lambda!253477 lambda!253476))))

(declare-fun bs!1195654 () Bool)

(declare-fun b!5130124 () Bool)

(declare-fun b!5130116 () Bool)

(assert (= bs!1195654 (and b!5130124 b!5130116)))

(declare-fun lambda!253478 () Int)

(declare-fun lambda!253474 () Int)

(assert (=> bs!1195654 (not (= lambda!253478 lambda!253474))))

(declare-fun b!5130113 () Bool)

(declare-fun res!2184689 () Bool)

(declare-fun e!3199551 () Bool)

(assert (=> b!5130113 (=> res!2184689 e!3199551)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28912 0))(
  ( (C!28913 (val!24108 Int)) )
))
(declare-datatypes ((Regex!14323 0))(
  ( (ElementMatch!14323 (c!882371 C!28912)) (Concat!23168 (regOne!29158 Regex!14323) (regTwo!29158 Regex!14323)) (EmptyExpr!14323) (Star!14323 (reg!14652 Regex!14323)) (EmptyLang!14323) (Union!14323 (regOne!29159 Regex!14323) (regTwo!29159 Regex!14323)) )
))
(declare-datatypes ((List!59575 0))(
  ( (Nil!59451) (Cons!59451 (h!65899 Regex!14323) (t!372602 List!59575)) )
))
(declare-datatypes ((Context!7414 0))(
  ( (Context!7415 (exprs!4207 List!59575)) )
))
(declare-fun z!1113 () (InoxSet Context!7414))

(declare-fun lostCauseZipper!1167 ((InoxSet Context!7414)) Bool)

(assert (=> b!5130113 (= res!2184689 (not (lostCauseZipper!1167 z!1113)))))

(declare-fun b!5130114 () Bool)

(declare-fun e!3199555 () Bool)

(declare-fun tp!1431205 () Bool)

(assert (=> b!5130114 (= e!3199555 tp!1431205)))

(declare-fun b!5130115 () Bool)

(declare-fun e!3199549 () Bool)

(assert (=> b!5130115 (= e!3199551 e!3199549)))

(declare-fun res!2184691 () Bool)

(assert (=> b!5130115 (=> res!2184691 e!3199549)))

(declare-datatypes ((List!59576 0))(
  ( (Nil!59452) (Cons!59452 (h!65900 Context!7414) (t!372603 List!59576)) )
))
(declare-fun lt!2116217 () List!59576)

(declare-fun forall!13734 (List!59576 Int) Bool)

(assert (=> b!5130115 (= res!2184691 (not (forall!13734 lt!2116217 lambda!253478)))))

(declare-fun toList!8315 ((InoxSet Context!7414)) List!59576)

(assert (=> b!5130115 (= lt!2116217 (toList!8315 z!1113))))

(declare-fun res!2184692 () Bool)

(declare-fun e!3199550 () Bool)

(assert (=> start!542304 (=> (not res!2184692) (not e!3199550))))

(declare-fun nullableZipper!1108 ((InoxSet Context!7414)) Bool)

(assert (=> start!542304 (= res!2184692 (nullableZipper!1108 z!1113))))

(assert (=> start!542304 e!3199550))

(declare-fun condSetEmpty!31004 () Bool)

(assert (=> start!542304 (= condSetEmpty!31004 (= z!1113 ((as const (Array Context!7414 Bool)) false)))))

(declare-fun setRes!31004 () Bool)

(assert (=> start!542304 setRes!31004))

(declare-fun res!2184687 () Bool)

(assert (=> b!5130116 (=> (not res!2184687) (not e!3199550))))

(declare-fun exists!1617 ((InoxSet Context!7414) Int) Bool)

(assert (=> b!5130116 (= res!2184687 (exists!1617 z!1113 lambda!253474))))

(declare-fun setNonEmpty!31004 () Bool)

(declare-fun tp!1431204 () Bool)

(declare-fun setElem!31004 () Context!7414)

(declare-fun inv!78988 (Context!7414) Bool)

(assert (=> setNonEmpty!31004 (= setRes!31004 (and tp!1431204 (inv!78988 setElem!31004) e!3199555))))

(declare-fun setRest!31004 () (InoxSet Context!7414))

(assert (=> setNonEmpty!31004 (= z!1113 ((_ map or) (store ((as const (Array Context!7414 Bool)) false) setElem!31004 true) setRest!31004))))

(declare-datatypes ((Unit!150692 0))(
  ( (Unit!150693) )
))
(declare-fun e!3199552 () Unit!150692)

(declare-fun Unit!150694 () Unit!150692)

(assert (=> b!5130117 (= e!3199552 Unit!150694)))

(declare-fun lt!2116215 () Regex!14323)

(declare-fun lt!2116213 () Context!7414)

(declare-fun getWitness!774 (List!59575 Int) Regex!14323)

(assert (=> b!5130117 (= lt!2116215 (getWitness!774 (exprs!4207 lt!2116213) lambda!253477))))

(declare-fun lt!2116214 () Unit!150692)

(declare-fun forallContained!4614 (List!59575 Int Regex!14323) Unit!150692)

(assert (=> b!5130117 (= lt!2116214 (forallContained!4614 (exprs!4207 lt!2116213) lambda!253476 lt!2116215))))

(declare-fun lt!2116220 () Unit!150692)

(assert (=> b!5130117 (= lt!2116220 (forallContained!4614 (exprs!4207 lt!2116213) lambda!253475 lt!2116215))))

(declare-fun lt!2116211 () Unit!150692)

(declare-fun lemmaNullableThenNotLostCause!30 (Regex!14323) Unit!150692)

(assert (=> b!5130117 (= lt!2116211 (lemmaNullableThenNotLostCause!30 lt!2116215))))

(declare-fun res!2184686 () Bool)

(declare-fun lostCause!1277 (Regex!14323) Bool)

(assert (=> b!5130117 (= res!2184686 (not (lostCause!1277 lt!2116215)))))

(declare-fun e!3199554 () Bool)

(assert (=> b!5130117 (=> (not res!2184686) (not e!3199554))))

(assert (=> b!5130117 e!3199554))

(declare-fun e!3199553 () Bool)

(declare-fun e!3199548 () Bool)

(assert (=> b!5130118 (= e!3199553 (not e!3199548))))

(declare-fun res!2184690 () Bool)

(assert (=> b!5130118 (=> res!2184690 e!3199548)))

(assert (=> b!5130118 (= res!2184690 (not (select z!1113 lt!2116213)))))

(declare-fun forall!13735 (List!59575 Int) Bool)

(assert (=> b!5130118 (forall!13735 (exprs!4207 lt!2116213) lambda!253475)))

(declare-fun lt!2116216 () Unit!150692)

(declare-fun lemmaContextForallValidExprs!38 (Context!7414 List!59575) Unit!150692)

(assert (=> b!5130118 (= lt!2116216 (lemmaContextForallValidExprs!38 lt!2116213 (exprs!4207 lt!2116213)))))

(declare-fun b!5130119 () Bool)

(assert (=> b!5130119 (= e!3199550 e!3199553)))

(declare-fun res!2184688 () Bool)

(assert (=> b!5130119 (=> (not res!2184688) (not e!3199553))))

(declare-fun nullableContext!42 (Context!7414) Bool)

(assert (=> b!5130119 (= res!2184688 (nullableContext!42 lt!2116213))))

(declare-fun getWitness!775 ((InoxSet Context!7414) Int) Context!7414)

(assert (=> b!5130119 (= lt!2116213 (getWitness!775 z!1113 lambda!253474))))

(declare-fun res!2184683 () Bool)

(assert (=> b!5130120 (=> res!2184683 e!3199548)))

(assert (=> b!5130120 (= res!2184683 (not (forall!13735 (exprs!4207 lt!2116213) lambda!253476)))))

(declare-fun setIsEmpty!31004 () Bool)

(assert (=> setIsEmpty!31004 setRes!31004))

(declare-fun b!5130121 () Bool)

(assert (=> b!5130121 (= e!3199548 e!3199551)))

(declare-fun res!2184685 () Bool)

(assert (=> b!5130121 (=> res!2184685 e!3199551)))

(declare-fun lt!2116218 () Bool)

(assert (=> b!5130121 (= res!2184685 lt!2116218)))

(declare-fun lt!2116219 () Unit!150692)

(assert (=> b!5130121 (= lt!2116219 e!3199552)))

(declare-fun c!882370 () Bool)

(assert (=> b!5130121 (= c!882370 lt!2116218)))

(declare-fun lostCause!1278 (Context!7414) Bool)

(assert (=> b!5130121 (= lt!2116218 (lostCause!1278 lt!2116213))))

(declare-fun b!5130122 () Bool)

(assert (=> b!5130122 (= e!3199549 true)))

(declare-fun lt!2116212 () Unit!150692)

(declare-fun forallContained!4615 (List!59576 Int Context!7414) Unit!150692)

(assert (=> b!5130122 (= lt!2116212 (forallContained!4615 lt!2116217 lambda!253478 lt!2116213))))

(declare-fun b!5130123 () Bool)

(declare-fun Unit!150695 () Unit!150692)

(assert (=> b!5130123 (= e!3199552 Unit!150695)))

(declare-fun res!2184684 () Bool)

(assert (=> b!5130124 (=> res!2184684 e!3199551)))

(declare-fun forall!13736 ((InoxSet Context!7414) Int) Bool)

(assert (=> b!5130124 (= res!2184684 (not (forall!13736 z!1113 lambda!253478)))))

(declare-fun b!5130125 () Bool)

(assert (=> b!5130125 (= e!3199554 false)))

(assert (= (and start!542304 res!2184692) b!5130116))

(assert (= (and b!5130116 res!2184687) b!5130119))

(assert (= (and b!5130119 res!2184688) b!5130118))

(assert (= (and b!5130118 (not res!2184690)) b!5130120))

(assert (= (and b!5130120 (not res!2184683)) b!5130121))

(assert (= (and b!5130121 c!882370) b!5130117))

(assert (= (and b!5130121 (not c!882370)) b!5130123))

(assert (= (and b!5130117 res!2184686) b!5130125))

(assert (= (and b!5130121 (not res!2184685)) b!5130113))

(assert (= (and b!5130113 (not res!2184689)) b!5130124))

(assert (= (and b!5130124 (not res!2184684)) b!5130115))

(assert (= (and b!5130115 (not res!2184691)) b!5130122))

(assert (= (and start!542304 condSetEmpty!31004) setIsEmpty!31004))

(assert (= (and start!542304 (not condSetEmpty!31004)) setNonEmpty!31004))

(assert (= setNonEmpty!31004 b!5130114))

(declare-fun m!6194882 () Bool)

(assert (=> b!5130115 m!6194882))

(declare-fun m!6194884 () Bool)

(assert (=> b!5130115 m!6194884))

(declare-fun m!6194886 () Bool)

(assert (=> b!5130119 m!6194886))

(declare-fun m!6194888 () Bool)

(assert (=> b!5130119 m!6194888))

(declare-fun m!6194890 () Bool)

(assert (=> b!5130122 m!6194890))

(declare-fun m!6194892 () Bool)

(assert (=> setNonEmpty!31004 m!6194892))

(declare-fun m!6194894 () Bool)

(assert (=> b!5130120 m!6194894))

(declare-fun m!6194896 () Bool)

(assert (=> b!5130121 m!6194896))

(declare-fun m!6194898 () Bool)

(assert (=> b!5130116 m!6194898))

(declare-fun m!6194900 () Bool)

(assert (=> b!5130113 m!6194900))

(declare-fun m!6194902 () Bool)

(assert (=> start!542304 m!6194902))

(declare-fun m!6194904 () Bool)

(assert (=> b!5130118 m!6194904))

(declare-fun m!6194906 () Bool)

(assert (=> b!5130118 m!6194906))

(declare-fun m!6194908 () Bool)

(assert (=> b!5130118 m!6194908))

(declare-fun m!6194910 () Bool)

(assert (=> b!5130124 m!6194910))

(declare-fun m!6194912 () Bool)

(assert (=> b!5130117 m!6194912))

(declare-fun m!6194914 () Bool)

(assert (=> b!5130117 m!6194914))

(declare-fun m!6194916 () Bool)

(assert (=> b!5130117 m!6194916))

(declare-fun m!6194918 () Bool)

(assert (=> b!5130117 m!6194918))

(declare-fun m!6194920 () Bool)

(assert (=> b!5130117 m!6194920))

(check-sat (not b!5130117) (not b!5130120) (not b!5130122) (not b!5130115) (not b!5130124) (not b!5130113) (not b!5130119) (not b!5130118) (not b!5130121) (not b!5130114) (not setNonEmpty!31004) (not start!542304) (not b!5130116))
(check-sat)

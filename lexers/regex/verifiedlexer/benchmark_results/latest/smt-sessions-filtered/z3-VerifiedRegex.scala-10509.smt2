; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542028 () Bool)

(assert start!542028)

(declare-fun bs!1195208 () Bool)

(declare-fun b!5129134 () Bool)

(declare-fun b!5129131 () Bool)

(assert (= bs!1195208 (and b!5129134 b!5129131)))

(declare-fun lambda!252947 () Int)

(declare-fun lambda!252946 () Int)

(assert (=> bs!1195208 (not (= lambda!252947 lambda!252946))))

(declare-fun bs!1195209 () Bool)

(declare-fun b!5129129 () Bool)

(assert (= bs!1195209 (and b!5129129 b!5129131)))

(declare-fun lambda!252948 () Int)

(assert (=> bs!1195209 (not (= lambda!252948 lambda!252946))))

(declare-fun bs!1195210 () Bool)

(assert (= bs!1195210 (and b!5129129 b!5129134)))

(assert (=> bs!1195210 (not (= lambda!252948 lambda!252947))))

(declare-fun setIsEmpty!30938 () Bool)

(declare-fun setRes!30938 () Bool)

(assert (=> setIsEmpty!30938 setRes!30938))

(declare-fun b!5129127 () Bool)

(declare-fun res!2184044 () Bool)

(declare-fun e!3198859 () Bool)

(assert (=> b!5129127 (=> (not res!2184044) (not e!3198859))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28884 0))(
  ( (C!28885 (val!24094 Int)) )
))
(declare-datatypes ((Regex!14309 0))(
  ( (ElementMatch!14309 (c!882069 C!28884)) (Concat!23154 (regOne!29130 Regex!14309) (regTwo!29130 Regex!14309)) (EmptyExpr!14309) (Star!14309 (reg!14638 Regex!14309)) (EmptyLang!14309) (Union!14309 (regOne!29131 Regex!14309) (regTwo!29131 Regex!14309)) )
))
(declare-datatypes ((List!59546 0))(
  ( (Nil!59422) (Cons!59422 (h!65870 Regex!14309) (t!372573 List!59546)) )
))
(declare-datatypes ((Context!7386 0))(
  ( (Context!7387 (exprs!4193 List!59546)) )
))
(declare-fun z!1113 () (InoxSet Context!7386))

(declare-fun lambda!252945 () Int)

(declare-fun exists!1585 ((InoxSet Context!7386) Int) Bool)

(assert (=> b!5129127 (= res!2184044 (exists!1585 z!1113 lambda!252945))))

(declare-fun tp!1431024 () Bool)

(declare-fun setNonEmpty!30938 () Bool)

(declare-fun e!3198857 () Bool)

(declare-fun setElem!30938 () Context!7386)

(declare-fun inv!78953 (Context!7386) Bool)

(assert (=> setNonEmpty!30938 (= setRes!30938 (and tp!1431024 (inv!78953 setElem!30938) e!3198857))))

(declare-fun setRest!30938 () (InoxSet Context!7386))

(assert (=> setNonEmpty!30938 (= z!1113 ((_ map or) (store ((as const (Array Context!7386 Bool)) false) setElem!30938 true) setRest!30938))))

(declare-fun b!5129128 () Bool)

(declare-fun e!3198855 () Bool)

(declare-fun lt!2115523 () Bool)

(assert (=> b!5129128 (= e!3198855 (not lt!2115523))))

(declare-datatypes ((Unit!150630 0))(
  ( (Unit!150631) )
))
(declare-fun lt!2115526 () Unit!150630)

(declare-fun e!3198856 () Unit!150630)

(assert (=> b!5129128 (= lt!2115526 e!3198856)))

(declare-fun c!882068 () Bool)

(assert (=> b!5129128 (= c!882068 lt!2115523)))

(declare-fun lt!2115522 () Context!7386)

(declare-fun lostCause!1249 (Context!7386) Bool)

(assert (=> b!5129128 (= lt!2115523 (lostCause!1249 lt!2115522))))

(declare-fun Unit!150632 () Unit!150630)

(assert (=> b!5129129 (= e!3198856 Unit!150632)))

(declare-fun lt!2115525 () Regex!14309)

(declare-fun getWitness!741 (List!59546 Int) Regex!14309)

(assert (=> b!5129129 (= lt!2115525 (getWitness!741 (exprs!4193 lt!2115522) lambda!252948))))

(declare-fun lt!2115524 () Unit!150630)

(declare-fun forallContained!4597 (List!59546 Int Regex!14309) Unit!150630)

(assert (=> b!5129129 (= lt!2115524 (forallContained!4597 (exprs!4193 lt!2115522) lambda!252947 lt!2115525))))

(declare-fun lt!2115527 () Unit!150630)

(assert (=> b!5129129 (= lt!2115527 (forallContained!4597 (exprs!4193 lt!2115522) lambda!252946 lt!2115525))))

(declare-fun lt!2115528 () Unit!150630)

(declare-fun lemmaNullableThenNotLostCause!18 (Regex!14309) Unit!150630)

(assert (=> b!5129129 (= lt!2115528 (lemmaNullableThenNotLostCause!18 lt!2115525))))

(declare-fun res!2184041 () Bool)

(declare-fun lostCause!1250 (Regex!14309) Bool)

(assert (=> b!5129129 (= res!2184041 (not (lostCause!1250 lt!2115525)))))

(declare-fun e!3198854 () Bool)

(assert (=> b!5129129 (=> (not res!2184041) (not e!3198854))))

(assert (=> b!5129129 e!3198854))

(declare-fun b!5129130 () Bool)

(declare-fun e!3198858 () Bool)

(assert (=> b!5129130 (= e!3198859 e!3198858)))

(declare-fun res!2184040 () Bool)

(assert (=> b!5129130 (=> (not res!2184040) (not e!3198858))))

(declare-fun nullableContext!28 (Context!7386) Bool)

(assert (=> b!5129130 (= res!2184040 (nullableContext!28 lt!2115522))))

(declare-fun getWitness!742 ((InoxSet Context!7386) Int) Context!7386)

(assert (=> b!5129130 (= lt!2115522 (getWitness!742 z!1113 lambda!252945))))

(declare-fun b!5129132 () Bool)

(assert (=> b!5129132 (= e!3198854 false)))

(declare-fun b!5129133 () Bool)

(declare-fun Unit!150633 () Unit!150630)

(assert (=> b!5129133 (= e!3198856 Unit!150633)))

(declare-fun res!2184043 () Bool)

(assert (=> b!5129134 (=> res!2184043 e!3198855)))

(declare-fun forall!13702 (List!59546 Int) Bool)

(assert (=> b!5129134 (= res!2184043 (not (forall!13702 (exprs!4193 lt!2115522) lambda!252947)))))

(declare-fun b!5129135 () Bool)

(declare-fun tp!1431025 () Bool)

(assert (=> b!5129135 (= e!3198857 tp!1431025)))

(declare-fun res!2184042 () Bool)

(assert (=> start!542028 (=> (not res!2184042) (not e!3198859))))

(declare-fun nullableZipper!1094 ((InoxSet Context!7386)) Bool)

(assert (=> start!542028 (= res!2184042 (nullableZipper!1094 z!1113))))

(assert (=> start!542028 e!3198859))

(declare-fun condSetEmpty!30938 () Bool)

(assert (=> start!542028 (= condSetEmpty!30938 (= z!1113 ((as const (Array Context!7386 Bool)) false)))))

(assert (=> start!542028 setRes!30938))

(assert (=> b!5129131 (= e!3198858 (not e!3198855))))

(declare-fun res!2184039 () Bool)

(assert (=> b!5129131 (=> res!2184039 e!3198855)))

(assert (=> b!5129131 (= res!2184039 (not (select z!1113 lt!2115522)))))

(assert (=> b!5129131 (forall!13702 (exprs!4193 lt!2115522) lambda!252946)))

(declare-fun lt!2115521 () Unit!150630)

(declare-fun lemmaContextForallValidExprs!24 (Context!7386 List!59546) Unit!150630)

(assert (=> b!5129131 (= lt!2115521 (lemmaContextForallValidExprs!24 lt!2115522 (exprs!4193 lt!2115522)))))

(assert (= (and start!542028 res!2184042) b!5129127))

(assert (= (and b!5129127 res!2184044) b!5129130))

(assert (= (and b!5129130 res!2184040) b!5129131))

(assert (= (and b!5129131 (not res!2184039)) b!5129134))

(assert (= (and b!5129134 (not res!2184043)) b!5129128))

(assert (= (and b!5129128 c!882068) b!5129129))

(assert (= (and b!5129128 (not c!882068)) b!5129133))

(assert (= (and b!5129129 res!2184041) b!5129132))

(assert (= (and start!542028 condSetEmpty!30938) setIsEmpty!30938))

(assert (= (and start!542028 (not condSetEmpty!30938)) setNonEmpty!30938))

(assert (= setNonEmpty!30938 b!5129135))

(declare-fun m!6193620 () Bool)

(assert (=> b!5129129 m!6193620))

(declare-fun m!6193622 () Bool)

(assert (=> b!5129129 m!6193622))

(declare-fun m!6193624 () Bool)

(assert (=> b!5129129 m!6193624))

(declare-fun m!6193626 () Bool)

(assert (=> b!5129129 m!6193626))

(declare-fun m!6193628 () Bool)

(assert (=> b!5129129 m!6193628))

(declare-fun m!6193630 () Bool)

(assert (=> b!5129128 m!6193630))

(declare-fun m!6193632 () Bool)

(assert (=> b!5129134 m!6193632))

(declare-fun m!6193634 () Bool)

(assert (=> b!5129127 m!6193634))

(declare-fun m!6193636 () Bool)

(assert (=> b!5129130 m!6193636))

(declare-fun m!6193638 () Bool)

(assert (=> b!5129130 m!6193638))

(declare-fun m!6193640 () Bool)

(assert (=> b!5129131 m!6193640))

(declare-fun m!6193642 () Bool)

(assert (=> b!5129131 m!6193642))

(declare-fun m!6193644 () Bool)

(assert (=> b!5129131 m!6193644))

(declare-fun m!6193646 () Bool)

(assert (=> setNonEmpty!30938 m!6193646))

(declare-fun m!6193648 () Bool)

(assert (=> start!542028 m!6193648))

(check-sat (not b!5129128) (not setNonEmpty!30938) (not b!5129129) (not b!5129134) (not b!5129135) (not b!5129131) (not b!5129130) (not b!5129127) (not start!542028))
(check-sat)

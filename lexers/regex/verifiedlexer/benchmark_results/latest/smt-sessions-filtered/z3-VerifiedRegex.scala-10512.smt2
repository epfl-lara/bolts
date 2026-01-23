; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542160 () Bool)

(assert start!542160)

(declare-fun bs!1195431 () Bool)

(declare-fun b!5129549 () Bool)

(declare-fun b!5129552 () Bool)

(assert (= bs!1195431 (and b!5129549 b!5129552)))

(declare-fun lambda!253200 () Int)

(declare-fun lambda!253199 () Int)

(assert (=> bs!1195431 (not (= lambda!253200 lambda!253199))))

(declare-fun bs!1195432 () Bool)

(declare-fun b!5129557 () Bool)

(assert (= bs!1195432 (and b!5129557 b!5129552)))

(declare-fun lambda!253201 () Int)

(assert (=> bs!1195432 (not (= lambda!253201 lambda!253199))))

(declare-fun bs!1195433 () Bool)

(assert (= bs!1195433 (and b!5129557 b!5129549)))

(assert (=> bs!1195433 (not (= lambda!253201 lambda!253200))))

(declare-fun bs!1195434 () Bool)

(declare-fun b!5129556 () Bool)

(declare-fun b!5129550 () Bool)

(assert (= bs!1195434 (and b!5129556 b!5129550)))

(declare-fun lambda!253202 () Int)

(declare-fun lambda!253198 () Int)

(assert (=> bs!1195434 (not (= lambda!253202 lambda!253198))))

(declare-fun b!5129548 () Bool)

(declare-fun res!2184300 () Bool)

(declare-fun e!3199159 () Bool)

(assert (=> b!5129548 (=> res!2184300 e!3199159)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28896 0))(
  ( (C!28897 (val!24100 Int)) )
))
(declare-datatypes ((Regex!14315 0))(
  ( (ElementMatch!14315 (c!882221 C!28896)) (Concat!23160 (regOne!29142 Regex!14315) (regTwo!29142 Regex!14315)) (EmptyExpr!14315) (Star!14315 (reg!14644 Regex!14315)) (EmptyLang!14315) (Union!14315 (regOne!29143 Regex!14315) (regTwo!29143 Regex!14315)) )
))
(declare-datatypes ((List!59560 0))(
  ( (Nil!59436) (Cons!59436 (h!65884 Regex!14315) (t!372587 List!59560)) )
))
(declare-datatypes ((Context!7398 0))(
  ( (Context!7399 (exprs!4199 List!59560)) )
))
(declare-fun z!1113 () (InoxSet Context!7398))

(declare-fun lostCauseZipper!1163 ((InoxSet Context!7398)) Bool)

(assert (=> b!5129548 (= res!2184300 (not (lostCauseZipper!1163 z!1113)))))

(declare-fun res!2184296 () Bool)

(declare-fun e!3199161 () Bool)

(assert (=> b!5129549 (=> res!2184296 e!3199161)))

(declare-fun lt!2115873 () Context!7398)

(declare-fun forall!13718 (List!59560 Int) Bool)

(assert (=> b!5129549 (= res!2184296 (not (forall!13718 (exprs!4199 lt!2115873) lambda!253200)))))

(declare-fun setNonEmpty!30968 () Bool)

(declare-fun setRes!30968 () Bool)

(declare-fun e!3199163 () Bool)

(declare-fun tp!1431109 () Bool)

(declare-fun setElem!30968 () Context!7398)

(declare-fun inv!78968 (Context!7398) Bool)

(assert (=> setNonEmpty!30968 (= setRes!30968 (and tp!1431109 (inv!78968 setElem!30968) e!3199163))))

(declare-fun setRest!30968 () (InoxSet Context!7398))

(assert (=> setNonEmpty!30968 (= z!1113 ((_ map or) (store ((as const (Array Context!7398 Bool)) false) setElem!30968 true) setRest!30968))))

(declare-fun res!2184295 () Bool)

(declare-fun e!3199158 () Bool)

(assert (=> b!5129550 (=> (not res!2184295) (not e!3199158))))

(declare-fun exists!1599 ((InoxSet Context!7398) Int) Bool)

(assert (=> b!5129550 (= res!2184295 (exists!1599 z!1113 lambda!253198))))

(declare-fun b!5129551 () Bool)

(declare-fun tp!1431108 () Bool)

(assert (=> b!5129551 (= e!3199163 tp!1431108)))

(declare-fun e!3199157 () Bool)

(assert (=> b!5129552 (= e!3199157 (not e!3199161))))

(declare-fun res!2184299 () Bool)

(assert (=> b!5129552 (=> res!2184299 e!3199161)))

(assert (=> b!5129552 (= res!2184299 (not (select z!1113 lt!2115873)))))

(assert (=> b!5129552 (forall!13718 (exprs!4199 lt!2115873) lambda!253199)))

(declare-datatypes ((Unit!150663 0))(
  ( (Unit!150664) )
))
(declare-fun lt!2115877 () Unit!150663)

(declare-fun lemmaContextForallValidExprs!30 (Context!7398 List!59560) Unit!150663)

(assert (=> b!5129552 (= lt!2115877 (lemmaContextForallValidExprs!30 lt!2115873 (exprs!4199 lt!2115873)))))

(declare-fun b!5129553 () Bool)

(assert (=> b!5129553 (= e!3199161 e!3199159)))

(declare-fun res!2184298 () Bool)

(assert (=> b!5129553 (=> res!2184298 e!3199159)))

(declare-fun lt!2115874 () Bool)

(assert (=> b!5129553 (= res!2184298 lt!2115874)))

(declare-fun lt!2115879 () Unit!150663)

(declare-fun e!3199162 () Unit!150663)

(assert (=> b!5129553 (= lt!2115879 e!3199162)))

(declare-fun c!882220 () Bool)

(assert (=> b!5129553 (= c!882220 lt!2115874)))

(declare-fun lostCause!1261 (Context!7398) Bool)

(assert (=> b!5129553 (= lt!2115874 (lostCause!1261 lt!2115873))))

(declare-fun b!5129554 () Bool)

(assert (=> b!5129554 (= e!3199159 true)))

(declare-fun lt!2115880 () Bool)

(declare-datatypes ((List!59561 0))(
  ( (Nil!59437) (Cons!59437 (h!65885 Context!7398) (t!372588 List!59561)) )
))
(declare-fun forall!13719 (List!59561 Int) Bool)

(declare-fun toList!8309 ((InoxSet Context!7398)) List!59561)

(assert (=> b!5129554 (= lt!2115880 (forall!13719 (toList!8309 z!1113) lambda!253202))))

(declare-fun b!5129555 () Bool)

(declare-fun Unit!150665 () Unit!150663)

(assert (=> b!5129555 (= e!3199162 Unit!150665)))

(declare-fun res!2184294 () Bool)

(assert (=> b!5129556 (=> res!2184294 e!3199159)))

(declare-fun forall!13720 ((InoxSet Context!7398) Int) Bool)

(assert (=> b!5129556 (= res!2184294 (not (forall!13720 z!1113 lambda!253202)))))

(declare-fun Unit!150666 () Unit!150663)

(assert (=> b!5129557 (= e!3199162 Unit!150666)))

(declare-fun lt!2115878 () Regex!14315)

(declare-fun getWitness!755 (List!59560 Int) Regex!14315)

(assert (=> b!5129557 (= lt!2115878 (getWitness!755 (exprs!4199 lt!2115873) lambda!253201))))

(declare-fun lt!2115872 () Unit!150663)

(declare-fun forallContained!4603 (List!59560 Int Regex!14315) Unit!150663)

(assert (=> b!5129557 (= lt!2115872 (forallContained!4603 (exprs!4199 lt!2115873) lambda!253200 lt!2115878))))

(declare-fun lt!2115875 () Unit!150663)

(assert (=> b!5129557 (= lt!2115875 (forallContained!4603 (exprs!4199 lt!2115873) lambda!253199 lt!2115878))))

(declare-fun lt!2115876 () Unit!150663)

(declare-fun lemmaNullableThenNotLostCause!24 (Regex!14315) Unit!150663)

(assert (=> b!5129557 (= lt!2115876 (lemmaNullableThenNotLostCause!24 lt!2115878))))

(declare-fun res!2184301 () Bool)

(declare-fun lostCause!1262 (Regex!14315) Bool)

(assert (=> b!5129557 (= res!2184301 (not (lostCause!1262 lt!2115878)))))

(declare-fun e!3199160 () Bool)

(assert (=> b!5129557 (=> (not res!2184301) (not e!3199160))))

(assert (=> b!5129557 e!3199160))

(declare-fun setIsEmpty!30968 () Bool)

(assert (=> setIsEmpty!30968 setRes!30968))

(declare-fun res!2184297 () Bool)

(assert (=> start!542160 (=> (not res!2184297) (not e!3199158))))

(declare-fun nullableZipper!1100 ((InoxSet Context!7398)) Bool)

(assert (=> start!542160 (= res!2184297 (nullableZipper!1100 z!1113))))

(assert (=> start!542160 e!3199158))

(declare-fun condSetEmpty!30968 () Bool)

(assert (=> start!542160 (= condSetEmpty!30968 (= z!1113 ((as const (Array Context!7398 Bool)) false)))))

(assert (=> start!542160 setRes!30968))

(declare-fun b!5129558 () Bool)

(assert (=> b!5129558 (= e!3199160 false)))

(declare-fun b!5129559 () Bool)

(assert (=> b!5129559 (= e!3199158 e!3199157)))

(declare-fun res!2184302 () Bool)

(assert (=> b!5129559 (=> (not res!2184302) (not e!3199157))))

(declare-fun nullableContext!34 (Context!7398) Bool)

(assert (=> b!5129559 (= res!2184302 (nullableContext!34 lt!2115873))))

(declare-fun getWitness!756 ((InoxSet Context!7398) Int) Context!7398)

(assert (=> b!5129559 (= lt!2115873 (getWitness!756 z!1113 lambda!253198))))

(assert (= (and start!542160 res!2184297) b!5129550))

(assert (= (and b!5129550 res!2184295) b!5129559))

(assert (= (and b!5129559 res!2184302) b!5129552))

(assert (= (and b!5129552 (not res!2184299)) b!5129549))

(assert (= (and b!5129549 (not res!2184296)) b!5129553))

(assert (= (and b!5129553 c!882220) b!5129557))

(assert (= (and b!5129553 (not c!882220)) b!5129555))

(assert (= (and b!5129557 res!2184301) b!5129558))

(assert (= (and b!5129553 (not res!2184298)) b!5129548))

(assert (= (and b!5129548 (not res!2184300)) b!5129556))

(assert (= (and b!5129556 (not res!2184294)) b!5129554))

(assert (= (and start!542160 condSetEmpty!30968) setIsEmpty!30968))

(assert (= (and start!542160 (not condSetEmpty!30968)) setNonEmpty!30968))

(assert (= setNonEmpty!30968 b!5129551))

(declare-fun m!6194208 () Bool)

(assert (=> b!5129554 m!6194208))

(assert (=> b!5129554 m!6194208))

(declare-fun m!6194210 () Bool)

(assert (=> b!5129554 m!6194210))

(declare-fun m!6194212 () Bool)

(assert (=> b!5129557 m!6194212))

(declare-fun m!6194214 () Bool)

(assert (=> b!5129557 m!6194214))

(declare-fun m!6194216 () Bool)

(assert (=> b!5129557 m!6194216))

(declare-fun m!6194218 () Bool)

(assert (=> b!5129557 m!6194218))

(declare-fun m!6194220 () Bool)

(assert (=> b!5129557 m!6194220))

(declare-fun m!6194222 () Bool)

(assert (=> b!5129552 m!6194222))

(declare-fun m!6194224 () Bool)

(assert (=> b!5129552 m!6194224))

(declare-fun m!6194226 () Bool)

(assert (=> b!5129552 m!6194226))

(declare-fun m!6194228 () Bool)

(assert (=> b!5129559 m!6194228))

(declare-fun m!6194230 () Bool)

(assert (=> b!5129559 m!6194230))

(declare-fun m!6194232 () Bool)

(assert (=> b!5129550 m!6194232))

(declare-fun m!6194234 () Bool)

(assert (=> setNonEmpty!30968 m!6194234))

(declare-fun m!6194236 () Bool)

(assert (=> b!5129556 m!6194236))

(declare-fun m!6194238 () Bool)

(assert (=> b!5129553 m!6194238))

(declare-fun m!6194240 () Bool)

(assert (=> start!542160 m!6194240))

(declare-fun m!6194242 () Bool)

(assert (=> b!5129549 m!6194242))

(declare-fun m!6194244 () Bool)

(assert (=> b!5129548 m!6194244))

(check-sat (not b!5129559) (not b!5129552) (not start!542160) (not b!5129549) (not b!5129557) (not b!5129548) (not b!5129556) (not b!5129553) (not b!5129554) (not b!5129550) (not b!5129551) (not setNonEmpty!30968))
(check-sat)

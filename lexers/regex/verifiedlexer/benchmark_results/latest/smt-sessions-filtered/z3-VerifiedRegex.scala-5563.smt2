; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279370 () Bool)

(assert start!279370)

(declare-fun bs!521180 () Bool)

(declare-fun b!2865173 () Bool)

(declare-fun b!2865172 () Bool)

(assert (= bs!521180 (and b!2865173 b!2865172)))

(declare-fun lambda!106382 () Int)

(declare-fun lambda!106381 () Int)

(assert (=> bs!521180 (not (= lambda!106382 lambda!106381))))

(declare-fun bs!521181 () Bool)

(declare-fun b!2865176 () Bool)

(assert (= bs!521181 (and b!2865176 b!2865172)))

(declare-fun lambda!106383 () Int)

(assert (=> bs!521181 (not (= lambda!106383 lambda!106381))))

(declare-fun bs!521182 () Bool)

(assert (= bs!521182 (and b!2865176 b!2865173)))

(assert (=> bs!521182 (not (= lambda!106383 lambda!106382))))

(assert (=> b!2865176 true))

(declare-fun b!2865171 () Bool)

(declare-fun e!1813839 () Bool)

(declare-fun tp!922734 () Bool)

(assert (=> b!2865171 (= e!1813839 tp!922734)))

(declare-datatypes ((C!17544 0))(
  ( (C!17545 (val!10806 Int)) )
))
(declare-datatypes ((Regex!8681 0))(
  ( (ElementMatch!8681 (c!462344 C!17544)) (Concat!14002 (regOne!17874 Regex!8681) (regTwo!17874 Regex!8681)) (EmptyExpr!8681) (Star!8681 (reg!9010 Regex!8681)) (EmptyLang!8681) (Union!8681 (regOne!17875 Regex!8681) (regTwo!17875 Regex!8681)) )
))
(declare-datatypes ((List!34374 0))(
  ( (Nil!34250) (Cons!34250 (h!39670 Regex!8681) (t!233417 List!34374)) )
))
(declare-datatypes ((Context!5282 0))(
  ( (Context!5283 (exprs!3141 List!34374)) )
))
(declare-fun setElem!25661 () Context!5282)

(declare-fun setRes!25661 () Bool)

(declare-fun setNonEmpty!25661 () Bool)

(declare-fun tp!922733 () Bool)

(declare-fun inv!46289 (Context!5282) Bool)

(assert (=> setNonEmpty!25661 (= setRes!25661 (and tp!922733 (inv!46289 setElem!25661) e!1813839))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!691 () (InoxSet Context!5282))

(declare-fun setRest!25661 () (InoxSet Context!5282))

(assert (=> setNonEmpty!25661 (= z!691 ((_ map or) (store ((as const (Array Context!5282 Bool)) false) setElem!25661 true) setRest!25661))))

(declare-fun res!1189510 () Bool)

(declare-fun e!1813838 () Bool)

(assert (=> b!2865172 (=> (not res!1189510) (not e!1813838))))

(declare-fun forall!7034 ((InoxSet Context!5282) Int) Bool)

(assert (=> b!2865172 (= res!1189510 (not (forall!7034 z!691 lambda!106381)))))

(declare-fun setIsEmpty!25661 () Bool)

(assert (=> setIsEmpty!25661 setRes!25661))

(declare-fun res!1189509 () Bool)

(assert (=> start!279370 (=> (not res!1189509) (not e!1813838))))

(declare-fun lostCauseZipper!585 ((InoxSet Context!5282)) Bool)

(assert (=> start!279370 (= res!1189509 (not (lostCauseZipper!585 z!691)))))

(assert (=> start!279370 e!1813838))

(declare-fun condSetEmpty!25661 () Bool)

(assert (=> start!279370 (= condSetEmpty!25661 (= z!691 ((as const (Array Context!5282 Bool)) false)))))

(assert (=> start!279370 setRes!25661))

(declare-fun e!1813841 () Bool)

(assert (=> b!2865173 (= e!1813838 (not e!1813841))))

(declare-fun res!1189511 () Bool)

(assert (=> b!2865173 (=> res!1189511 e!1813841)))

(declare-fun exists!1106 ((InoxSet Context!5282) Int) Bool)

(assert (=> b!2865173 (= res!1189511 (not (exists!1106 z!691 lambda!106382)))))

(declare-datatypes ((List!34375 0))(
  ( (Nil!34251) (Cons!34251 (h!39671 Context!5282) (t!233418 List!34375)) )
))
(declare-fun lt!1016116 () List!34375)

(declare-fun exists!1107 (List!34375 Int) Bool)

(assert (=> b!2865173 (exists!1107 lt!1016116 lambda!106382)))

(declare-datatypes ((Unit!47893 0))(
  ( (Unit!47894) )
))
(declare-fun lt!1016113 () Unit!47893)

(declare-fun lemmaNotForallThenExists!149 (List!34375 Int) Unit!47893)

(assert (=> b!2865173 (= lt!1016113 (lemmaNotForallThenExists!149 lt!1016116 lambda!106381))))

(declare-fun toList!2010 ((InoxSet Context!5282)) List!34375)

(assert (=> b!2865173 (= lt!1016116 (toList!2010 z!691))))

(declare-fun b!2865174 () Bool)

(declare-fun res!1189512 () Bool)

(assert (=> b!2865174 (=> (not res!1189512) (not e!1813838))))

(declare-datatypes ((List!34376 0))(
  ( (Nil!34252) (Cons!34252 (h!39672 C!17544) (t!233419 List!34376)) )
))
(declare-datatypes ((Option!6360 0))(
  ( (None!6359) (Some!6359 (v!34481 List!34376)) )
))
(declare-fun isDefined!4980 (Option!6360) Bool)

(declare-fun getLanguageWitness!324 ((InoxSet Context!5282)) Option!6360)

(assert (=> b!2865174 (= res!1189512 (isDefined!4980 (getLanguageWitness!324 z!691)))))

(declare-fun b!2865175 () Bool)

(declare-fun e!1813840 () Bool)

(assert (=> b!2865175 (= e!1813841 e!1813840)))

(declare-fun res!1189508 () Bool)

(assert (=> b!2865175 (=> res!1189508 e!1813840)))

(declare-fun lt!1016114 () Context!5282)

(assert (=> b!2865175 (= res!1189508 (not (select z!691 lt!1016114)))))

(declare-fun lt!1016115 () List!34376)

(declare-fun matchZipper!455 ((InoxSet Context!5282) List!34376) Bool)

(assert (=> b!2865175 (matchZipper!455 (store ((as const (Array Context!5282 Bool)) false) lt!1016114 true) lt!1016115)))

(declare-fun get!10274 (Option!6360) List!34376)

(declare-fun getLanguageWitness!325 (Context!5282) Option!6360)

(assert (=> b!2865175 (= lt!1016115 (get!10274 (getLanguageWitness!325 lt!1016114)))))

(declare-fun lt!1016112 () Unit!47893)

(declare-fun lemmaGetWitnessMatchesContext!14 (Context!5282) Unit!47893)

(assert (=> b!2865175 (= lt!1016112 (lemmaGetWitnessMatchesContext!14 lt!1016114))))

(declare-fun getWitness!611 ((InoxSet Context!5282) Int) Context!5282)

(assert (=> b!2865175 (= lt!1016114 (getWitness!611 z!691 lambda!106382))))

(assert (=> b!2865176 (= e!1813840 (exists!1106 z!691 lambda!106383))))

(assert (=> b!2865176 (exists!1106 z!691 lambda!106383)))

(declare-fun lt!1016111 () Unit!47893)

(declare-fun lemmaContainsThenExists!59 ((InoxSet Context!5282) Context!5282 Int) Unit!47893)

(assert (=> b!2865176 (= lt!1016111 (lemmaContainsThenExists!59 z!691 lt!1016114 lambda!106383))))

(assert (= (and start!279370 res!1189509) b!2865174))

(assert (= (and b!2865174 res!1189512) b!2865172))

(assert (= (and b!2865172 res!1189510) b!2865173))

(assert (= (and b!2865173 (not res!1189511)) b!2865175))

(assert (= (and b!2865175 (not res!1189508)) b!2865176))

(assert (= (and start!279370 condSetEmpty!25661) setIsEmpty!25661))

(assert (= (and start!279370 (not condSetEmpty!25661)) setNonEmpty!25661))

(assert (= setNonEmpty!25661 b!2865171))

(declare-fun m!3285255 () Bool)

(assert (=> b!2865176 m!3285255))

(assert (=> b!2865176 m!3285255))

(declare-fun m!3285257 () Bool)

(assert (=> b!2865176 m!3285257))

(declare-fun m!3285259 () Bool)

(assert (=> b!2865175 m!3285259))

(declare-fun m!3285261 () Bool)

(assert (=> b!2865175 m!3285261))

(declare-fun m!3285263 () Bool)

(assert (=> b!2865175 m!3285263))

(declare-fun m!3285265 () Bool)

(assert (=> b!2865175 m!3285265))

(declare-fun m!3285267 () Bool)

(assert (=> b!2865175 m!3285267))

(assert (=> b!2865175 m!3285265))

(declare-fun m!3285269 () Bool)

(assert (=> b!2865175 m!3285269))

(declare-fun m!3285271 () Bool)

(assert (=> b!2865175 m!3285271))

(assert (=> b!2865175 m!3285259))

(declare-fun m!3285273 () Bool)

(assert (=> start!279370 m!3285273))

(declare-fun m!3285275 () Bool)

(assert (=> setNonEmpty!25661 m!3285275))

(declare-fun m!3285277 () Bool)

(assert (=> b!2865173 m!3285277))

(declare-fun m!3285279 () Bool)

(assert (=> b!2865173 m!3285279))

(declare-fun m!3285281 () Bool)

(assert (=> b!2865173 m!3285281))

(declare-fun m!3285283 () Bool)

(assert (=> b!2865173 m!3285283))

(declare-fun m!3285285 () Bool)

(assert (=> b!2865172 m!3285285))

(declare-fun m!3285287 () Bool)

(assert (=> b!2865174 m!3285287))

(assert (=> b!2865174 m!3285287))

(declare-fun m!3285289 () Bool)

(assert (=> b!2865174 m!3285289))

(check-sat (not b!2865172) (not b!2865173) (not setNonEmpty!25661) (not start!279370) (not b!2865175) (not b!2865176) (not b!2865171) (not b!2865174))
(check-sat)

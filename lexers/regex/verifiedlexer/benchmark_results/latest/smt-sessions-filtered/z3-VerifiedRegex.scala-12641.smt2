; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700370 () Bool)

(assert start!700370)

(declare-fun b!7203247 () Bool)

(assert (=> b!7203247 true))

(declare-fun b!7203236 () Bool)

(assert (=> b!7203236 true))

(assert (=> b!7203236 true))

(declare-fun e!4324039 () Bool)

(assert (=> b!7203236 (= e!4324039 (not true))))

(declare-fun lt!2571680 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37056 0))(
  ( (C!37057 (val!28476 Int)) )
))
(declare-datatypes ((Regex!18391 0))(
  ( (ElementMatch!18391 (c!1339811 C!37056)) (Concat!27236 (regOne!37294 Regex!18391) (regTwo!37294 Regex!18391)) (EmptyExpr!18391) (Star!18391 (reg!18720 Regex!18391)) (EmptyLang!18391) (Union!18391 (regOne!37295 Regex!18391) (regTwo!37295 Regex!18391)) )
))
(declare-datatypes ((List!69893 0))(
  ( (Nil!69769) (Cons!69769 (h!76217 Regex!18391) (t!383922 List!69893)) )
))
(declare-datatypes ((Context!14686 0))(
  ( (Context!14687 (exprs!7843 List!69893)) )
))
(declare-fun z!3517 () (InoxSet Context!14686))

(declare-fun lambda!438208 () Int)

(declare-fun exists!4096 ((InoxSet Context!14686) Int) Bool)

(assert (=> b!7203236 (= lt!2571680 (exists!4096 z!3517 lambda!438208))))

(declare-fun lambda!438207 () Int)

(declare-fun lt!2571681 () Context!14686)

(declare-fun empty!3055 () Context!14686)

(declare-fun flatMapPost!84 ((InoxSet Context!14686) Int Context!14686) Context!14686)

(assert (=> b!7203236 (= (flatMapPost!84 z!3517 lambda!438207 lt!2571681) empty!3055)))

(assert (=> b!7203236 true))

(declare-fun e!4324042 () Bool)

(declare-fun inv!88999 (Context!14686) Bool)

(assert (=> b!7203236 (and (inv!88999 empty!3055) e!4324042)))

(declare-fun b!7203237 () Bool)

(declare-fun res!2930299 () Bool)

(declare-fun e!4324043 () Bool)

(assert (=> b!7203237 (=> (not res!2930299) (not e!4324043))))

(declare-datatypes ((List!69894 0))(
  ( (Nil!69770) (Cons!69770 (h!76218 C!37056) (t!383923 List!69894)) )
))
(declare-fun s!7961 () List!69894)

(declare-fun isEmpty!40277 (List!69894) Bool)

(assert (=> b!7203237 (= res!2930299 (not (isEmpty!40277 s!7961)))))

(declare-fun b!7203238 () Bool)

(declare-fun tp!2007416 () Bool)

(assert (=> b!7203238 (= e!4324042 tp!2007416)))

(declare-fun setIsEmpty!53454 () Bool)

(declare-fun setRes!53454 () Bool)

(assert (=> setIsEmpty!53454 setRes!53454))

(declare-fun b!7203239 () Bool)

(declare-fun e!4324040 () Bool)

(assert (=> b!7203239 (= e!4324043 e!4324040)))

(declare-fun res!2930301 () Bool)

(assert (=> b!7203239 (=> (not res!2930301) (not e!4324040))))

(declare-fun c!10544 () Context!14686)

(declare-fun lt!2571679 () C!37056)

(declare-fun derivationStepZipperUp!2357 (Context!14686 C!37056) (InoxSet Context!14686))

(assert (=> b!7203239 (= res!2930301 (= (derivationStepZipperUp!2357 c!10544 lt!2571679) ((as const (Array Context!14686 Bool)) false)))))

(declare-fun lt!2571682 () (InoxSet Context!14686))

(declare-fun derivationStepZipper!3250 ((InoxSet Context!14686) C!37056) (InoxSet Context!14686))

(assert (=> b!7203239 (= lt!2571682 (derivationStepZipper!3250 z!3517 lt!2571679))))

(declare-fun head!14749 (List!69894) C!37056)

(assert (=> b!7203239 (= lt!2571679 (head!14749 s!7961))))

(declare-fun b!7203240 () Bool)

(declare-fun e!4324037 () Bool)

(declare-fun tp_is_empty!46339 () Bool)

(declare-fun tp!2007419 () Bool)

(assert (=> b!7203240 (= e!4324037 (and tp_is_empty!46339 tp!2007419))))

(declare-fun b!7203241 () Bool)

(declare-fun res!2930302 () Bool)

(assert (=> b!7203241 (=> (not res!2930302) (not e!4324043))))

(declare-fun head!14750 (List!69893) Regex!18391)

(assert (=> b!7203241 (= res!2930302 (= (head!14750 (exprs!7843 c!10544)) EmptyLang!18391))))

(declare-fun b!7203242 () Bool)

(declare-fun e!4324038 () Bool)

(declare-fun tp!2007418 () Bool)

(assert (=> b!7203242 (= e!4324038 tp!2007418)))

(declare-fun b!7203243 () Bool)

(declare-fun e!4324041 () Bool)

(declare-fun tp!2007417 () Bool)

(assert (=> b!7203243 (= e!4324041 tp!2007417)))

(declare-fun b!7203244 () Bool)

(declare-fun res!2930297 () Bool)

(assert (=> b!7203244 (=> (not res!2930297) (not e!4324040))))

(assert (=> b!7203244 (= res!2930297 (not (= lt!2571682 ((as const (Array Context!14686 Bool)) false))))))

(declare-fun res!2930298 () Bool)

(assert (=> start!700370 (=> (not res!2930298) (not e!4324043))))

(assert (=> start!700370 (= res!2930298 (= z!3517 (store ((as const (Array Context!14686 Bool)) false) c!10544 true)))))

(assert (=> start!700370 e!4324043))

(declare-fun condSetEmpty!53454 () Bool)

(assert (=> start!700370 (= condSetEmpty!53454 (= z!3517 ((as const (Array Context!14686 Bool)) false)))))

(assert (=> start!700370 setRes!53454))

(assert (=> start!700370 (and (inv!88999 c!10544) e!4324041)))

(assert (=> start!700370 e!4324037))

(declare-fun b!7203245 () Bool)

(declare-fun res!2930300 () Bool)

(assert (=> b!7203245 (=> (not res!2930300) (not e!4324039))))

(assert (=> b!7203245 (= res!2930300 (select lt!2571682 lt!2571681))))

(declare-fun b!7203246 () Bool)

(declare-fun res!2930296 () Bool)

(assert (=> b!7203246 (=> (not res!2930296) (not e!4324043))))

(declare-fun isEmpty!40278 (List!69893) Bool)

(assert (=> b!7203246 (= res!2930296 (not (isEmpty!40278 (exprs!7843 c!10544))))))

(assert (=> b!7203247 (= e!4324040 e!4324039)))

(declare-fun res!2930295 () Bool)

(assert (=> b!7203247 (=> (not res!2930295) (not e!4324039))))

(declare-fun flatMap!2690 ((InoxSet Context!14686) Int) (InoxSet Context!14686))

(assert (=> b!7203247 (= res!2930295 (select (flatMap!2690 z!3517 lambda!438207) lt!2571681))))

(declare-datatypes ((List!69895 0))(
  ( (Nil!69771) (Cons!69771 (h!76219 Context!14686) (t!383924 List!69895)) )
))
(declare-fun head!14751 (List!69895) Context!14686)

(declare-fun toList!11328 ((InoxSet Context!14686)) List!69895)

(assert (=> b!7203247 (= lt!2571681 (head!14751 (toList!11328 lt!2571682)))))

(declare-fun setNonEmpty!53454 () Bool)

(declare-fun setElem!53454 () Context!14686)

(declare-fun tp!2007420 () Bool)

(assert (=> setNonEmpty!53454 (= setRes!53454 (and tp!2007420 (inv!88999 setElem!53454) e!4324038))))

(declare-fun setRest!53454 () (InoxSet Context!14686))

(assert (=> setNonEmpty!53454 (= z!3517 ((_ map or) (store ((as const (Array Context!14686 Bool)) false) setElem!53454 true) setRest!53454))))

(assert (= (and start!700370 res!2930298) b!7203246))

(assert (= (and b!7203246 res!2930296) b!7203241))

(assert (= (and b!7203241 res!2930302) b!7203237))

(assert (= (and b!7203237 res!2930299) b!7203239))

(assert (= (and b!7203239 res!2930301) b!7203244))

(assert (= (and b!7203244 res!2930297) b!7203247))

(assert (= (and b!7203247 res!2930295) b!7203245))

(assert (= (and b!7203245 res!2930300) b!7203236))

(assert (= b!7203236 b!7203238))

(assert (= (and start!700370 condSetEmpty!53454) setIsEmpty!53454))

(assert (= (and start!700370 (not condSetEmpty!53454)) setNonEmpty!53454))

(assert (= setNonEmpty!53454 b!7203242))

(assert (= start!700370 b!7203243))

(get-info :version)

(assert (= (and start!700370 ((_ is Cons!69770) s!7961)) b!7203240))

(declare-fun m!7892002 () Bool)

(assert (=> b!7203236 m!7892002))

(declare-fun m!7892004 () Bool)

(assert (=> b!7203236 m!7892004))

(declare-fun m!7892006 () Bool)

(assert (=> b!7203236 m!7892006))

(declare-fun m!7892008 () Bool)

(assert (=> start!700370 m!7892008))

(declare-fun m!7892010 () Bool)

(assert (=> start!700370 m!7892010))

(declare-fun m!7892012 () Bool)

(assert (=> b!7203241 m!7892012))

(declare-fun m!7892014 () Bool)

(assert (=> b!7203239 m!7892014))

(declare-fun m!7892016 () Bool)

(assert (=> b!7203239 m!7892016))

(declare-fun m!7892018 () Bool)

(assert (=> b!7203239 m!7892018))

(declare-fun m!7892020 () Bool)

(assert (=> b!7203246 m!7892020))

(declare-fun m!7892022 () Bool)

(assert (=> b!7203247 m!7892022))

(declare-fun m!7892024 () Bool)

(assert (=> b!7203247 m!7892024))

(declare-fun m!7892026 () Bool)

(assert (=> b!7203247 m!7892026))

(assert (=> b!7203247 m!7892026))

(declare-fun m!7892028 () Bool)

(assert (=> b!7203247 m!7892028))

(declare-fun m!7892030 () Bool)

(assert (=> setNonEmpty!53454 m!7892030))

(declare-fun m!7892032 () Bool)

(assert (=> b!7203245 m!7892032))

(declare-fun m!7892034 () Bool)

(assert (=> b!7203237 m!7892034))

(check-sat (not b!7203238) (not b!7203242) (not setNonEmpty!53454) (not b!7203236) (not start!700370) (not b!7203246) (not b!7203241) (not b!7203243) (not b!7203237) (not b!7203247) (not b!7203240) tp_is_empty!46339 (not b!7203239))
(check-sat)

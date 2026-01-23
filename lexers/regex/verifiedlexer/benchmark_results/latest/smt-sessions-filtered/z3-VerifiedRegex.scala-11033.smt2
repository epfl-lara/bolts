; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572166 () Bool)

(assert start!572166)

(declare-fun b!5465297 () Bool)

(assert (=> b!5465297 true))

(assert (=> b!5465297 true))

(declare-fun lambda!290336 () Int)

(declare-fun lambda!290335 () Int)

(assert (=> b!5465297 (not (= lambda!290336 lambda!290335))))

(assert (=> b!5465297 true))

(assert (=> b!5465297 true))

(declare-fun lambda!290337 () Int)

(assert (=> b!5465297 (not (= lambda!290337 lambda!290335))))

(assert (=> b!5465297 (not (= lambda!290337 lambda!290336))))

(assert (=> b!5465297 true))

(assert (=> b!5465297 true))

(declare-fun b!5465295 () Bool)

(declare-fun res!2328429 () Bool)

(declare-fun e!3383802 () Bool)

(assert (=> b!5465295 (=> (not res!2328429) (not e!3383802))))

(declare-datatypes ((C!30896 0))(
  ( (C!30897 (val!25150 Int)) )
))
(declare-datatypes ((Regex!15313 0))(
  ( (ElementMatch!15313 (c!954853 C!30896)) (Concat!24158 (regOne!31138 Regex!15313) (regTwo!31138 Regex!15313)) (EmptyExpr!15313) (Star!15313 (reg!15642 Regex!15313)) (EmptyLang!15313) (Union!15313 (regOne!31139 Regex!15313) (regTwo!31139 Regex!15313)) )
))
(declare-fun r!7292 () Regex!15313)

(declare-datatypes ((List!62238 0))(
  ( (Nil!62114) (Cons!62114 (h!68562 Regex!15313) (t!375467 List!62238)) )
))
(declare-datatypes ((Context!9394 0))(
  ( (Context!9395 (exprs!5197 List!62238)) )
))
(declare-datatypes ((List!62239 0))(
  ( (Nil!62115) (Cons!62115 (h!68563 Context!9394) (t!375468 List!62239)) )
))
(declare-fun zl!343 () List!62239)

(declare-fun unfocusZipper!1055 (List!62239) Regex!15313)

(assert (=> b!5465295 (= res!2328429 (= r!7292 (unfocusZipper!1055 zl!343)))))

(declare-fun b!5465296 () Bool)

(declare-fun e!3383804 () Bool)

(declare-fun tp!1503245 () Bool)

(declare-fun tp!1503237 () Bool)

(assert (=> b!5465296 (= e!3383804 (and tp!1503245 tp!1503237))))

(declare-fun e!3383800 () Bool)

(declare-fun e!3383801 () Bool)

(assert (=> b!5465297 (= e!3383800 e!3383801)))

(declare-fun res!2328437 () Bool)

(assert (=> b!5465297 (=> res!2328437 e!3383801)))

(declare-fun lt!2233208 () Bool)

(declare-fun e!3383806 () Bool)

(assert (=> b!5465297 (= res!2328437 (not (= lt!2233208 e!3383806)))))

(declare-fun res!2328434 () Bool)

(assert (=> b!5465297 (=> res!2328434 e!3383806)))

(declare-datatypes ((List!62240 0))(
  ( (Nil!62116) (Cons!62116 (h!68564 C!30896) (t!375469 List!62240)) )
))
(declare-fun s!2326 () List!62240)

(declare-fun isEmpty!34082 (List!62240) Bool)

(assert (=> b!5465297 (= res!2328434 (isEmpty!34082 s!2326))))

(declare-fun Exists!2492 (Int) Bool)

(assert (=> b!5465297 (= (Exists!2492 lambda!290335) (Exists!2492 lambda!290337))))

(declare-datatypes ((Unit!155076 0))(
  ( (Unit!155077) )
))
(declare-fun lt!2233206 () Unit!155076)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1142 (Regex!15313 Regex!15313 List!62240) Unit!155076)

(assert (=> b!5465297 (= lt!2233206 (lemmaExistCutMatchRandMatchRSpecEquivalent!1142 (reg!15642 r!7292) r!7292 s!2326))))

(assert (=> b!5465297 (= (Exists!2492 lambda!290335) (Exists!2492 lambda!290336))))

(declare-fun lt!2233209 () Unit!155076)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!466 (Regex!15313 List!62240) Unit!155076)

(assert (=> b!5465297 (= lt!2233209 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!466 (reg!15642 r!7292) s!2326))))

(declare-fun lt!2233211 () Bool)

(assert (=> b!5465297 (= lt!2233211 (Exists!2492 lambda!290335))))

(declare-datatypes ((tuple2!65020 0))(
  ( (tuple2!65021 (_1!35813 List!62240) (_2!35813 List!62240)) )
))
(declare-datatypes ((Option!15422 0))(
  ( (None!15421) (Some!15421 (v!51450 tuple2!65020)) )
))
(declare-fun isDefined!12125 (Option!15422) Bool)

(declare-fun findConcatSeparation!1836 (Regex!15313 Regex!15313 List!62240 List!62240 List!62240) Option!15422)

(assert (=> b!5465297 (= lt!2233211 (isDefined!12125 (findConcatSeparation!1836 (reg!15642 r!7292) r!7292 Nil!62116 s!2326 s!2326)))))

(declare-fun lt!2233207 () Unit!155076)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1600 (Regex!15313 Regex!15313 List!62240) Unit!155076)

(assert (=> b!5465297 (= lt!2233207 (lemmaFindConcatSeparationEquivalentToExists!1600 (reg!15642 r!7292) r!7292 s!2326))))

(declare-fun b!5465298 () Bool)

(declare-fun res!2328432 () Bool)

(assert (=> b!5465298 (=> res!2328432 e!3383801)))

(get-info :version)

(assert (=> b!5465298 (= res!2328432 ((_ is Nil!62116) s!2326))))

(declare-fun setIsEmpty!35815 () Bool)

(declare-fun setRes!35815 () Bool)

(assert (=> setIsEmpty!35815 setRes!35815))

(declare-fun b!5465299 () Bool)

(declare-fun res!2328431 () Bool)

(assert (=> b!5465299 (=> res!2328431 e!3383800)))

(declare-fun generalisedUnion!1242 (List!62238) Regex!15313)

(declare-fun unfocusZipperList!755 (List!62239) List!62238)

(assert (=> b!5465299 (= res!2328431 (not (= r!7292 (generalisedUnion!1242 (unfocusZipperList!755 zl!343)))))))

(declare-fun b!5465300 () Bool)

(assert (=> b!5465300 (= e!3383802 (not e!3383800))))

(declare-fun res!2328433 () Bool)

(assert (=> b!5465300 (=> res!2328433 e!3383800)))

(assert (=> b!5465300 (= res!2328433 (not ((_ is Cons!62115) zl!343)))))

(declare-fun matchRSpec!2416 (Regex!15313 List!62240) Bool)

(assert (=> b!5465300 (= lt!2233208 (matchRSpec!2416 r!7292 s!2326))))

(declare-fun matchR!7498 (Regex!15313 List!62240) Bool)

(assert (=> b!5465300 (= lt!2233208 (matchR!7498 r!7292 s!2326))))

(declare-fun lt!2233205 () Unit!155076)

(declare-fun mainMatchTheorem!2416 (Regex!15313 List!62240) Unit!155076)

(assert (=> b!5465300 (= lt!2233205 (mainMatchTheorem!2416 r!7292 s!2326))))

(declare-fun b!5465301 () Bool)

(declare-fun e!3383799 () Bool)

(declare-fun tp!1503236 () Bool)

(assert (=> b!5465301 (= e!3383799 tp!1503236)))

(declare-fun b!5465302 () Bool)

(declare-fun res!2328428 () Bool)

(assert (=> b!5465302 (=> res!2328428 e!3383800)))

(declare-fun isEmpty!34083 (List!62239) Bool)

(assert (=> b!5465302 (= res!2328428 (not (isEmpty!34083 (t!375468 zl!343))))))

(declare-fun b!5465303 () Bool)

(assert (=> b!5465303 (= e!3383801 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2233210 () (InoxSet Context!9394))

(declare-fun derivationStepZipperUp!665 (Context!9394 C!30896) (InoxSet Context!9394))

(assert (=> b!5465303 (= lt!2233210 (derivationStepZipperUp!665 (Context!9395 (Cons!62114 r!7292 Nil!62114)) (h!68564 s!2326)))))

(declare-fun b!5465304 () Bool)

(assert (=> b!5465304 (= e!3383806 lt!2233211)))

(declare-fun res!2328436 () Bool)

(assert (=> start!572166 (=> (not res!2328436) (not e!3383802))))

(declare-fun validRegex!7049 (Regex!15313) Bool)

(assert (=> start!572166 (= res!2328436 (validRegex!7049 r!7292))))

(assert (=> start!572166 e!3383802))

(assert (=> start!572166 e!3383804))

(declare-fun condSetEmpty!35815 () Bool)

(declare-fun z!1189 () (InoxSet Context!9394))

(assert (=> start!572166 (= condSetEmpty!35815 (= z!1189 ((as const (Array Context!9394 Bool)) false)))))

(assert (=> start!572166 setRes!35815))

(declare-fun e!3383803 () Bool)

(assert (=> start!572166 e!3383803))

(declare-fun e!3383805 () Bool)

(assert (=> start!572166 e!3383805))

(declare-fun tp!1503244 () Bool)

(declare-fun b!5465305 () Bool)

(declare-fun inv!81529 (Context!9394) Bool)

(assert (=> b!5465305 (= e!3383803 (and (inv!81529 (h!68563 zl!343)) e!3383799 tp!1503244))))

(declare-fun b!5465306 () Bool)

(declare-fun tp!1503241 () Bool)

(assert (=> b!5465306 (= e!3383804 tp!1503241)))

(declare-fun b!5465307 () Bool)

(declare-fun tp_is_empty!39879 () Bool)

(assert (=> b!5465307 (= e!3383804 tp_is_empty!39879)))

(declare-fun b!5465308 () Bool)

(declare-fun res!2328427 () Bool)

(assert (=> b!5465308 (=> (not res!2328427) (not e!3383802))))

(declare-fun toList!9097 ((InoxSet Context!9394)) List!62239)

(assert (=> b!5465308 (= res!2328427 (= (toList!9097 z!1189) zl!343))))

(declare-fun b!5465309 () Bool)

(declare-fun res!2328438 () Bool)

(assert (=> b!5465309 (=> res!2328438 e!3383800)))

(assert (=> b!5465309 (= res!2328438 (not ((_ is Cons!62114) (exprs!5197 (h!68563 zl!343)))))))

(declare-fun b!5465310 () Bool)

(declare-fun e!3383798 () Bool)

(declare-fun tp!1503242 () Bool)

(assert (=> b!5465310 (= e!3383798 tp!1503242)))

(declare-fun b!5465311 () Bool)

(declare-fun tp!1503243 () Bool)

(declare-fun tp!1503240 () Bool)

(assert (=> b!5465311 (= e!3383804 (and tp!1503243 tp!1503240))))

(declare-fun b!5465312 () Bool)

(declare-fun res!2328430 () Bool)

(assert (=> b!5465312 (=> res!2328430 e!3383800)))

(declare-fun generalisedConcat!982 (List!62238) Regex!15313)

(assert (=> b!5465312 (= res!2328430 (not (= r!7292 (generalisedConcat!982 (exprs!5197 (h!68563 zl!343))))))))

(declare-fun b!5465313 () Bool)

(declare-fun tp!1503239 () Bool)

(assert (=> b!5465313 (= e!3383805 (and tp_is_empty!39879 tp!1503239))))

(declare-fun b!5465314 () Bool)

(declare-fun res!2328435 () Bool)

(assert (=> b!5465314 (=> res!2328435 e!3383800)))

(assert (=> b!5465314 (= res!2328435 (or ((_ is EmptyExpr!15313) r!7292) ((_ is EmptyLang!15313) r!7292) ((_ is ElementMatch!15313) r!7292) ((_ is Union!15313) r!7292) ((_ is Concat!24158) r!7292)))))

(declare-fun setElem!35815 () Context!9394)

(declare-fun tp!1503238 () Bool)

(declare-fun setNonEmpty!35815 () Bool)

(assert (=> setNonEmpty!35815 (= setRes!35815 (and tp!1503238 (inv!81529 setElem!35815) e!3383798))))

(declare-fun setRest!35815 () (InoxSet Context!9394))

(assert (=> setNonEmpty!35815 (= z!1189 ((_ map or) (store ((as const (Array Context!9394 Bool)) false) setElem!35815 true) setRest!35815))))

(assert (= (and start!572166 res!2328436) b!5465308))

(assert (= (and b!5465308 res!2328427) b!5465295))

(assert (= (and b!5465295 res!2328429) b!5465300))

(assert (= (and b!5465300 (not res!2328433)) b!5465302))

(assert (= (and b!5465302 (not res!2328428)) b!5465312))

(assert (= (and b!5465312 (not res!2328430)) b!5465309))

(assert (= (and b!5465309 (not res!2328438)) b!5465299))

(assert (= (and b!5465299 (not res!2328431)) b!5465314))

(assert (= (and b!5465314 (not res!2328435)) b!5465297))

(assert (= (and b!5465297 (not res!2328434)) b!5465304))

(assert (= (and b!5465297 (not res!2328437)) b!5465298))

(assert (= (and b!5465298 (not res!2328432)) b!5465303))

(assert (= (and start!572166 ((_ is ElementMatch!15313) r!7292)) b!5465307))

(assert (= (and start!572166 ((_ is Concat!24158) r!7292)) b!5465296))

(assert (= (and start!572166 ((_ is Star!15313) r!7292)) b!5465306))

(assert (= (and start!572166 ((_ is Union!15313) r!7292)) b!5465311))

(assert (= (and start!572166 condSetEmpty!35815) setIsEmpty!35815))

(assert (= (and start!572166 (not condSetEmpty!35815)) setNonEmpty!35815))

(assert (= setNonEmpty!35815 b!5465310))

(assert (= b!5465305 b!5465301))

(assert (= (and start!572166 ((_ is Cons!62115) zl!343)) b!5465305))

(assert (= (and start!572166 ((_ is Cons!62116) s!2326)) b!5465313))

(declare-fun m!6485208 () Bool)

(assert (=> b!5465295 m!6485208))

(declare-fun m!6485210 () Bool)

(assert (=> setNonEmpty!35815 m!6485210))

(declare-fun m!6485212 () Bool)

(assert (=> b!5465312 m!6485212))

(declare-fun m!6485214 () Bool)

(assert (=> b!5465302 m!6485214))

(declare-fun m!6485216 () Bool)

(assert (=> b!5465300 m!6485216))

(declare-fun m!6485218 () Bool)

(assert (=> b!5465300 m!6485218))

(declare-fun m!6485220 () Bool)

(assert (=> b!5465300 m!6485220))

(declare-fun m!6485222 () Bool)

(assert (=> start!572166 m!6485222))

(declare-fun m!6485224 () Bool)

(assert (=> b!5465297 m!6485224))

(declare-fun m!6485226 () Bool)

(assert (=> b!5465297 m!6485226))

(declare-fun m!6485228 () Bool)

(assert (=> b!5465297 m!6485228))

(declare-fun m!6485230 () Bool)

(assert (=> b!5465297 m!6485230))

(declare-fun m!6485232 () Bool)

(assert (=> b!5465297 m!6485232))

(declare-fun m!6485234 () Bool)

(assert (=> b!5465297 m!6485234))

(declare-fun m!6485236 () Bool)

(assert (=> b!5465297 m!6485236))

(assert (=> b!5465297 m!6485230))

(assert (=> b!5465297 m!6485236))

(declare-fun m!6485238 () Bool)

(assert (=> b!5465297 m!6485238))

(assert (=> b!5465297 m!6485230))

(declare-fun m!6485240 () Bool)

(assert (=> b!5465297 m!6485240))

(declare-fun m!6485242 () Bool)

(assert (=> b!5465305 m!6485242))

(declare-fun m!6485244 () Bool)

(assert (=> b!5465299 m!6485244))

(assert (=> b!5465299 m!6485244))

(declare-fun m!6485246 () Bool)

(assert (=> b!5465299 m!6485246))

(declare-fun m!6485248 () Bool)

(assert (=> b!5465303 m!6485248))

(declare-fun m!6485250 () Bool)

(assert (=> b!5465308 m!6485250))

(check-sat tp_is_empty!39879 (not b!5465308) (not b!5465301) (not b!5465297) (not b!5465306) (not b!5465296) (not b!5465295) (not setNonEmpty!35815) (not b!5465299) (not start!572166) (not b!5465312) (not b!5465302) (not b!5465310) (not b!5465300) (not b!5465303) (not b!5465313) (not b!5465305) (not b!5465311))
(check-sat)

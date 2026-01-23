; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564498 () Bool)

(assert start!564498)

(declare-fun b!5363275 () Bool)

(assert (=> b!5363275 true))

(assert (=> b!5363275 true))

(declare-fun lambda!276345 () Int)

(declare-fun lambda!276344 () Int)

(assert (=> b!5363275 (not (= lambda!276345 lambda!276344))))

(assert (=> b!5363275 true))

(assert (=> b!5363275 true))

(declare-fun b!5363290 () Bool)

(assert (=> b!5363290 true))

(declare-fun bs!1242098 () Bool)

(declare-fun b!5363303 () Bool)

(assert (= bs!1242098 (and b!5363303 b!5363275)))

(declare-datatypes ((C!30416 0))(
  ( (C!30417 (val!24910 Int)) )
))
(declare-datatypes ((Regex!15073 0))(
  ( (ElementMatch!15073 (c!934035 C!30416)) (Concat!23918 (regOne!30658 Regex!15073) (regTwo!30658 Regex!15073)) (EmptyExpr!15073) (Star!15073 (reg!15402 Regex!15073)) (EmptyLang!15073) (Union!15073 (regOne!30659 Regex!15073) (regTwo!30659 Regex!15073)) )
))
(declare-fun r!7292 () Regex!15073)

(declare-fun lambda!276347 () Int)

(declare-fun lt!2185164 () Regex!15073)

(assert (=> bs!1242098 (= (= lt!2185164 (regOne!30658 r!7292)) (= lambda!276347 lambda!276344))))

(assert (=> bs!1242098 (not (= lambda!276347 lambda!276345))))

(assert (=> b!5363303 true))

(assert (=> b!5363303 true))

(assert (=> b!5363303 true))

(declare-fun lambda!276348 () Int)

(assert (=> bs!1242098 (not (= lambda!276348 lambda!276344))))

(assert (=> bs!1242098 (= (= lt!2185164 (regOne!30658 r!7292)) (= lambda!276348 lambda!276345))))

(assert (=> b!5363303 (not (= lambda!276348 lambda!276347))))

(assert (=> b!5363303 true))

(assert (=> b!5363303 true))

(assert (=> b!5363303 true))

(declare-datatypes ((List!61518 0))(
  ( (Nil!61394) (Cons!61394 (h!67842 Regex!15073) (t!374739 List!61518)) )
))
(declare-datatypes ((Context!8914 0))(
  ( (Context!8915 (exprs!4957 List!61518)) )
))
(declare-fun setElem!34729 () Context!8914)

(declare-fun e!3328454 () Bool)

(declare-fun setNonEmpty!34729 () Bool)

(declare-fun setRes!34729 () Bool)

(declare-fun tp!1488872 () Bool)

(declare-fun inv!80929 (Context!8914) Bool)

(assert (=> setNonEmpty!34729 (= setRes!34729 (and tp!1488872 (inv!80929 setElem!34729) e!3328454))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8914))

(declare-fun setRest!34729 () (InoxSet Context!8914))

(assert (=> setNonEmpty!34729 (= z!1189 ((_ map or) (store ((as const (Array Context!8914 Bool)) false) setElem!34729 true) setRest!34729))))

(declare-fun b!5363269 () Bool)

(declare-fun res!2276150 () Bool)

(declare-fun e!3328447 () Bool)

(assert (=> b!5363269 (=> res!2276150 e!3328447)))

(declare-datatypes ((List!61519 0))(
  ( (Nil!61395) (Cons!61395 (h!67843 C!30416) (t!374740 List!61519)) )
))
(declare-datatypes ((tuple2!64544 0))(
  ( (tuple2!64545 (_1!35575 List!61519) (_2!35575 List!61519)) )
))
(declare-fun lt!2185159 () tuple2!64544)

(declare-fun matchR!7258 (Regex!15073 List!61519) Bool)

(assert (=> b!5363269 (= res!2276150 (not (matchR!7258 lt!2185164 (_1!35575 lt!2185159))))))

(declare-fun b!5363270 () Bool)

(declare-fun tp!1488874 () Bool)

(assert (=> b!5363270 (= e!3328454 tp!1488874)))

(declare-fun b!5363271 () Bool)

(declare-fun e!3328451 () Bool)

(declare-fun e!3328453 () Bool)

(assert (=> b!5363271 (= e!3328451 e!3328453)))

(declare-fun res!2276165 () Bool)

(assert (=> b!5363271 (=> res!2276165 e!3328453)))

(declare-fun lt!2185144 () Context!8914)

(declare-datatypes ((List!61520 0))(
  ( (Nil!61396) (Cons!61396 (h!67844 Context!8914) (t!374741 List!61520)) )
))
(declare-fun unfocusZipper!815 (List!61520) Regex!15073)

(assert (=> b!5363271 (= res!2276165 (not (= (unfocusZipper!815 (Cons!61396 lt!2185144 Nil!61396)) (reg!15402 (regOne!30658 r!7292)))))))

(declare-fun s!2326 () List!61519)

(declare-fun lambda!276346 () Int)

(declare-fun lt!2185174 () Context!8914)

(declare-fun lt!2185175 () (InoxSet Context!8914))

(declare-fun flatMap!800 ((InoxSet Context!8914) Int) (InoxSet Context!8914))

(declare-fun derivationStepZipperUp!445 (Context!8914 C!30416) (InoxSet Context!8914))

(assert (=> b!5363271 (= (flatMap!800 lt!2185175 lambda!276346) (derivationStepZipperUp!445 lt!2185174 (h!67843 s!2326)))))

(declare-datatypes ((Unit!153810 0))(
  ( (Unit!153811) )
))
(declare-fun lt!2185177 () Unit!153810)

(declare-fun lemmaFlatMapOnSingletonSet!332 ((InoxSet Context!8914) Context!8914 Int) Unit!153810)

(assert (=> b!5363271 (= lt!2185177 (lemmaFlatMapOnSingletonSet!332 lt!2185175 lt!2185174 lambda!276346))))

(declare-fun lt!2185178 () (InoxSet Context!8914))

(assert (=> b!5363271 (= (flatMap!800 lt!2185178 lambda!276346) (derivationStepZipperUp!445 lt!2185144 (h!67843 s!2326)))))

(declare-fun lt!2185145 () Unit!153810)

(assert (=> b!5363271 (= lt!2185145 (lemmaFlatMapOnSingletonSet!332 lt!2185178 lt!2185144 lambda!276346))))

(declare-fun lt!2185155 () (InoxSet Context!8914))

(assert (=> b!5363271 (= lt!2185155 (derivationStepZipperUp!445 lt!2185174 (h!67843 s!2326)))))

(declare-fun lt!2185150 () (InoxSet Context!8914))

(assert (=> b!5363271 (= lt!2185150 (derivationStepZipperUp!445 lt!2185144 (h!67843 s!2326)))))

(assert (=> b!5363271 (= lt!2185175 (store ((as const (Array Context!8914 Bool)) false) lt!2185174 true))))

(assert (=> b!5363271 (= lt!2185178 (store ((as const (Array Context!8914 Bool)) false) lt!2185144 true))))

(assert (=> b!5363271 (= lt!2185144 (Context!8915 (Cons!61394 (reg!15402 (regOne!30658 r!7292)) Nil!61394)))))

(declare-fun b!5363272 () Bool)

(declare-fun e!3328452 () Bool)

(declare-fun tp_is_empty!39399 () Bool)

(assert (=> b!5363272 (= e!3328452 tp_is_empty!39399)))

(declare-fun b!5363273 () Bool)

(declare-fun e!3328440 () Bool)

(assert (=> b!5363273 (= e!3328453 e!3328440)))

(declare-fun res!2276152 () Bool)

(assert (=> b!5363273 (=> res!2276152 e!3328440)))

(declare-fun lt!2185162 () Bool)

(assert (=> b!5363273 (= res!2276152 (not lt!2185162))))

(declare-fun e!3328448 () Bool)

(assert (=> b!5363273 e!3328448))

(declare-fun res!2276145 () Bool)

(assert (=> b!5363273 (=> (not res!2276145) (not e!3328448))))

(declare-fun lt!2185170 () Regex!15073)

(declare-fun matchRSpec!2176 (Regex!15073 List!61519) Bool)

(assert (=> b!5363273 (= res!2276145 (= (matchR!7258 lt!2185170 s!2326) (matchRSpec!2176 lt!2185170 s!2326)))))

(declare-fun lt!2185172 () Unit!153810)

(declare-fun mainMatchTheorem!2176 (Regex!15073 List!61519) Unit!153810)

(assert (=> b!5363273 (= lt!2185172 (mainMatchTheorem!2176 lt!2185170 s!2326))))

(declare-fun b!5363274 () Bool)

(declare-fun tp!1488873 () Bool)

(declare-fun tp!1488876 () Bool)

(assert (=> b!5363274 (= e!3328452 (and tp!1488873 tp!1488876))))

(declare-fun e!3328446 () Bool)

(declare-fun e!3328441 () Bool)

(assert (=> b!5363275 (= e!3328446 e!3328441)))

(declare-fun res!2276148 () Bool)

(assert (=> b!5363275 (=> res!2276148 e!3328441)))

(declare-fun lt!2185169 () Bool)

(get-info :version)

(assert (=> b!5363275 (= res!2276148 (or (not (= lt!2185162 lt!2185169)) ((_ is Nil!61395) s!2326)))))

(declare-fun Exists!2254 (Int) Bool)

(assert (=> b!5363275 (= (Exists!2254 lambda!276344) (Exists!2254 lambda!276345))))

(declare-fun lt!2185176 () Unit!153810)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!908 (Regex!15073 Regex!15073 List!61519) Unit!153810)

(assert (=> b!5363275 (= lt!2185176 (lemmaExistCutMatchRandMatchRSpecEquivalent!908 (regOne!30658 r!7292) (regTwo!30658 r!7292) s!2326))))

(assert (=> b!5363275 (= lt!2185169 (Exists!2254 lambda!276344))))

(declare-datatypes ((Option!15184 0))(
  ( (None!15183) (Some!15183 (v!51212 tuple2!64544)) )
))
(declare-fun isDefined!11887 (Option!15184) Bool)

(declare-fun findConcatSeparation!1598 (Regex!15073 Regex!15073 List!61519 List!61519 List!61519) Option!15184)

(assert (=> b!5363275 (= lt!2185169 (isDefined!11887 (findConcatSeparation!1598 (regOne!30658 r!7292) (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326)))))

(declare-fun lt!2185142 () Unit!153810)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1362 (Regex!15073 Regex!15073 List!61519) Unit!153810)

(assert (=> b!5363275 (= lt!2185142 (lemmaFindConcatSeparationEquivalentToExists!1362 (regOne!30658 r!7292) (regTwo!30658 r!7292) s!2326))))

(declare-fun b!5363276 () Bool)

(declare-fun e!3328442 () Bool)

(declare-fun e!3328456 () Bool)

(assert (=> b!5363276 (= e!3328442 e!3328456)))

(declare-fun res!2276156 () Bool)

(assert (=> b!5363276 (=> res!2276156 e!3328456)))

(declare-fun lt!2185157 () (InoxSet Context!8914))

(declare-fun lt!2185140 () (InoxSet Context!8914))

(assert (=> b!5363276 (= res!2276156 (not (= lt!2185157 lt!2185140)))))

(declare-fun lt!2185167 () Context!8914)

(declare-fun lt!2185143 () (InoxSet Context!8914))

(assert (=> b!5363276 (= (flatMap!800 lt!2185143 lambda!276346) (derivationStepZipperUp!445 lt!2185167 (h!67843 s!2326)))))

(declare-fun lt!2185146 () Unit!153810)

(assert (=> b!5363276 (= lt!2185146 (lemmaFlatMapOnSingletonSet!332 lt!2185143 lt!2185167 lambda!276346))))

(declare-fun lt!2185160 () (InoxSet Context!8914))

(assert (=> b!5363276 (= lt!2185160 (derivationStepZipperUp!445 lt!2185167 (h!67843 s!2326)))))

(declare-fun derivationStepZipper!1312 ((InoxSet Context!8914) C!30416) (InoxSet Context!8914))

(assert (=> b!5363276 (= lt!2185157 (derivationStepZipper!1312 lt!2185143 (h!67843 s!2326)))))

(assert (=> b!5363276 (= lt!2185143 (store ((as const (Array Context!8914 Bool)) false) lt!2185167 true))))

(declare-fun lt!2185156 () List!61518)

(assert (=> b!5363276 (= lt!2185167 (Context!8915 (Cons!61394 (reg!15402 (regOne!30658 r!7292)) lt!2185156)))))

(declare-fun b!5363277 () Bool)

(declare-fun tp!1488870 () Bool)

(assert (=> b!5363277 (= e!3328452 tp!1488870)))

(declare-fun e!3328443 () Bool)

(declare-fun zl!343 () List!61520)

(declare-fun b!5363278 () Bool)

(declare-fun e!3328437 () Bool)

(declare-fun tp!1488869 () Bool)

(assert (=> b!5363278 (= e!3328443 (and (inv!80929 (h!67844 zl!343)) e!3328437 tp!1488869))))

(declare-fun b!5363279 () Bool)

(declare-fun e!3328444 () Bool)

(declare-fun lt!2185141 () (InoxSet Context!8914))

(declare-fun matchZipper!1317 ((InoxSet Context!8914) List!61519) Bool)

(assert (=> b!5363279 (= e!3328444 (matchZipper!1317 lt!2185141 (t!374740 s!2326)))))

(declare-fun b!5363280 () Bool)

(declare-fun e!3328458 () Unit!153810)

(declare-fun Unit!153812 () Unit!153810)

(assert (=> b!5363280 (= e!3328458 Unit!153812)))

(declare-fun lt!2185152 () Unit!153810)

(declare-fun lt!2185168 () (InoxSet Context!8914))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!310 ((InoxSet Context!8914) (InoxSet Context!8914) List!61519) Unit!153810)

(assert (=> b!5363280 (= lt!2185152 (lemmaZipperConcatMatchesSameAsBothZippers!310 lt!2185168 lt!2185141 (t!374740 s!2326)))))

(declare-fun res!2276153 () Bool)

(assert (=> b!5363280 (= res!2276153 (matchZipper!1317 lt!2185168 (t!374740 s!2326)))))

(assert (=> b!5363280 (=> res!2276153 e!3328444)))

(assert (=> b!5363280 (= (matchZipper!1317 ((_ map or) lt!2185168 lt!2185141) (t!374740 s!2326)) e!3328444)))

(declare-fun b!5363281 () Bool)

(declare-fun e!3328450 () Bool)

(assert (=> b!5363281 (= e!3328456 e!3328450)))

(declare-fun res!2276137 () Bool)

(assert (=> b!5363281 (=> res!2276137 e!3328450)))

(declare-fun lt!2185148 () Regex!15073)

(assert (=> b!5363281 (= res!2276137 (not (= r!7292 lt!2185148)))))

(assert (=> b!5363281 (= lt!2185148 (Concat!23918 lt!2185164 (regTwo!30658 r!7292)))))

(declare-fun b!5363282 () Bool)

(declare-fun res!2276154 () Bool)

(assert (=> b!5363282 (=> res!2276154 e!3328447)))

(assert (=> b!5363282 (= res!2276154 (not (matchR!7258 (regTwo!30658 r!7292) (_2!35575 lt!2185159))))))

(declare-fun b!5363283 () Bool)

(declare-fun res!2276162 () Bool)

(assert (=> b!5363283 (=> res!2276162 e!3328446)))

(assert (=> b!5363283 (= res!2276162 (or ((_ is EmptyExpr!15073) r!7292) ((_ is EmptyLang!15073) r!7292) ((_ is ElementMatch!15073) r!7292) ((_ is Union!15073) r!7292) (not ((_ is Concat!23918) r!7292))))))

(declare-fun b!5363284 () Bool)

(declare-fun res!2276143 () Bool)

(assert (=> b!5363284 (=> res!2276143 e!3328447)))

(declare-fun isEmpty!33368 (List!61519) Bool)

(assert (=> b!5363284 (= res!2276143 (not (isEmpty!33368 (_1!35575 lt!2185159))))))

(declare-fun b!5363285 () Bool)

(declare-fun res!2276142 () Bool)

(assert (=> b!5363285 (=> res!2276142 e!3328456)))

(assert (=> b!5363285 (= res!2276142 (not (= (matchZipper!1317 lt!2185143 s!2326) (matchZipper!1317 lt!2185157 (t!374740 s!2326)))))))

(declare-fun b!5363286 () Bool)

(declare-fun Unit!153813 () Unit!153810)

(assert (=> b!5363286 (= e!3328458 Unit!153813)))

(declare-fun b!5363287 () Bool)

(declare-fun e!3328439 () Bool)

(declare-fun e!3328438 () Bool)

(assert (=> b!5363287 (= e!3328439 e!3328438)))

(declare-fun res!2276161 () Bool)

(assert (=> b!5363287 (=> (not res!2276161) (not e!3328438))))

(declare-fun lt!2185171 () Regex!15073)

(assert (=> b!5363287 (= res!2276161 (= r!7292 lt!2185171))))

(assert (=> b!5363287 (= lt!2185171 (unfocusZipper!815 zl!343))))

(declare-fun b!5363288 () Bool)

(declare-fun res!2276163 () Bool)

(assert (=> b!5363288 (=> res!2276163 e!3328446)))

(declare-fun isEmpty!33369 (List!61520) Bool)

(assert (=> b!5363288 (= res!2276163 (not (isEmpty!33369 (t!374741 zl!343))))))

(declare-fun b!5363289 () Bool)

(declare-fun tp!1488877 () Bool)

(declare-fun tp!1488875 () Bool)

(assert (=> b!5363289 (= e!3328452 (and tp!1488877 tp!1488875))))

(declare-fun res!2276141 () Bool)

(assert (=> start!564498 (=> (not res!2276141) (not e!3328439))))

(declare-fun validRegex!6809 (Regex!15073) Bool)

(assert (=> start!564498 (= res!2276141 (validRegex!6809 r!7292))))

(assert (=> start!564498 e!3328439))

(assert (=> start!564498 e!3328452))

(declare-fun condSetEmpty!34729 () Bool)

(assert (=> start!564498 (= condSetEmpty!34729 (= z!1189 ((as const (Array Context!8914 Bool)) false)))))

(assert (=> start!564498 setRes!34729))

(assert (=> start!564498 e!3328443))

(declare-fun e!3328455 () Bool)

(assert (=> start!564498 e!3328455))

(declare-fun e!3328445 () Bool)

(assert (=> b!5363290 (= e!3328441 e!3328445)))

(declare-fun res!2276158 () Bool)

(assert (=> b!5363290 (=> res!2276158 e!3328445)))

(assert (=> b!5363290 (= res!2276158 (or (and ((_ is ElementMatch!15073) (regOne!30658 r!7292)) (= (c!934035 (regOne!30658 r!7292)) (h!67843 s!2326))) ((_ is Union!15073) (regOne!30658 r!7292))))))

(declare-fun lt!2185173 () Unit!153810)

(assert (=> b!5363290 (= lt!2185173 e!3328458)))

(declare-fun c!934034 () Bool)

(declare-fun nullable!5242 (Regex!15073) Bool)

(assert (=> b!5363290 (= c!934034 (nullable!5242 (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(assert (=> b!5363290 (= (flatMap!800 z!1189 lambda!276346) (derivationStepZipperUp!445 (h!67844 zl!343) (h!67843 s!2326)))))

(declare-fun lt!2185154 () Unit!153810)

(assert (=> b!5363290 (= lt!2185154 (lemmaFlatMapOnSingletonSet!332 z!1189 (h!67844 zl!343) lambda!276346))))

(declare-fun lt!2185153 () Context!8914)

(assert (=> b!5363290 (= lt!2185141 (derivationStepZipperUp!445 lt!2185153 (h!67843 s!2326)))))

(declare-fun derivationStepZipperDown!521 (Regex!15073 Context!8914 C!30416) (InoxSet Context!8914))

(assert (=> b!5363290 (= lt!2185168 (derivationStepZipperDown!521 (h!67842 (exprs!4957 (h!67844 zl!343))) lt!2185153 (h!67843 s!2326)))))

(assert (=> b!5363290 (= lt!2185153 (Context!8915 (t!374739 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun lt!2185151 () (InoxSet Context!8914))

(assert (=> b!5363290 (= lt!2185151 (derivationStepZipperUp!445 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343))))) (h!67843 s!2326)))))

(declare-fun b!5363291 () Bool)

(declare-fun res!2276159 () Bool)

(assert (=> b!5363291 (=> res!2276159 e!3328445)))

(assert (=> b!5363291 (= res!2276159 (or ((_ is Concat!23918) (regOne!30658 r!7292)) (not ((_ is Star!15073) (regOne!30658 r!7292)))))))

(declare-fun b!5363292 () Bool)

(assert (=> b!5363292 (= e!3328438 (not e!3328446))))

(declare-fun res!2276144 () Bool)

(assert (=> b!5363292 (=> res!2276144 e!3328446)))

(assert (=> b!5363292 (= res!2276144 (not ((_ is Cons!61396) zl!343)))))

(declare-fun lt!2185161 () Bool)

(assert (=> b!5363292 (= lt!2185162 lt!2185161)))

(assert (=> b!5363292 (= lt!2185161 (matchRSpec!2176 r!7292 s!2326))))

(assert (=> b!5363292 (= lt!2185162 (matchR!7258 r!7292 s!2326))))

(declare-fun lt!2185149 () Unit!153810)

(assert (=> b!5363292 (= lt!2185149 (mainMatchTheorem!2176 r!7292 s!2326))))

(declare-fun b!5363293 () Bool)

(declare-fun res!2276146 () Bool)

(assert (=> b!5363293 (=> res!2276146 e!3328446)))

(assert (=> b!5363293 (= res!2276146 (not ((_ is Cons!61394) (exprs!4957 (h!67844 zl!343)))))))

(declare-fun b!5363294 () Bool)

(declare-fun e!3328457 () Bool)

(assert (=> b!5363294 (= e!3328457 (nullable!5242 (regOne!30658 (regOne!30658 r!7292))))))

(declare-fun b!5363295 () Bool)

(declare-fun e!3328449 () Bool)

(declare-fun lambda!276349 () Int)

(declare-fun forall!14481 (List!61518 Int) Bool)

(assert (=> b!5363295 (= e!3328449 (forall!14481 (exprs!4957 (h!67844 zl!343)) lambda!276349))))

(declare-fun b!5363296 () Bool)

(declare-fun tp!1488871 () Bool)

(assert (=> b!5363296 (= e!3328437 tp!1488871)))

(declare-fun b!5363297 () Bool)

(declare-fun tp!1488868 () Bool)

(assert (=> b!5363297 (= e!3328455 (and tp_is_empty!39399 tp!1488868))))

(declare-fun b!5363298 () Bool)

(declare-fun res!2276160 () Bool)

(assert (=> b!5363298 (=> res!2276160 e!3328446)))

(declare-fun generalisedUnion!1002 (List!61518) Regex!15073)

(declare-fun unfocusZipperList!515 (List!61520) List!61518)

(assert (=> b!5363298 (= res!2276160 (not (= r!7292 (generalisedUnion!1002 (unfocusZipperList!515 zl!343)))))))

(declare-fun b!5363299 () Bool)

(assert (=> b!5363299 (= e!3328450 e!3328451)))

(declare-fun res!2276157 () Bool)

(assert (=> b!5363299 (=> res!2276157 e!3328451)))

(assert (=> b!5363299 (= res!2276157 (not (= (unfocusZipper!815 (Cons!61396 lt!2185167 Nil!61396)) lt!2185170)))))

(assert (=> b!5363299 (= lt!2185170 (Concat!23918 (reg!15402 (regOne!30658 r!7292)) lt!2185148))))

(declare-fun b!5363300 () Bool)

(assert (=> b!5363300 (= e!3328445 e!3328442)))

(declare-fun res!2276139 () Bool)

(assert (=> b!5363300 (=> res!2276139 e!3328442)))

(assert (=> b!5363300 (= res!2276139 (not (= lt!2185168 lt!2185140)))))

(assert (=> b!5363300 (= lt!2185140 (derivationStepZipperDown!521 (reg!15402 (regOne!30658 r!7292)) lt!2185174 (h!67843 s!2326)))))

(assert (=> b!5363300 (= lt!2185174 (Context!8915 lt!2185156))))

(assert (=> b!5363300 (= lt!2185156 (Cons!61394 lt!2185164 (t!374739 (exprs!4957 (h!67844 zl!343)))))))

(assert (=> b!5363300 (= lt!2185164 (Star!15073 (reg!15402 (regOne!30658 r!7292))))))

(declare-fun b!5363301 () Bool)

(declare-fun res!2276147 () Bool)

(assert (=> b!5363301 (=> res!2276147 e!3328453)))

(assert (=> b!5363301 (= res!2276147 (not (= (unfocusZipper!815 (Cons!61396 lt!2185174 Nil!61396)) lt!2185148)))))

(declare-fun b!5363302 () Bool)

(assert (=> b!5363302 (= e!3328447 e!3328449)))

(declare-fun res!2276149 () Bool)

(assert (=> b!5363302 (=> res!2276149 e!3328449)))

(declare-fun lt!2185163 () (InoxSet Context!8914))

(assert (=> b!5363302 (= res!2276149 (not (= lt!2185141 (derivationStepZipper!1312 lt!2185163 (h!67843 s!2326)))))))

(assert (=> b!5363302 (= (flatMap!800 lt!2185163 lambda!276346) (derivationStepZipperUp!445 lt!2185153 (h!67843 s!2326)))))

(declare-fun lt!2185165 () Unit!153810)

(assert (=> b!5363302 (= lt!2185165 (lemmaFlatMapOnSingletonSet!332 lt!2185163 lt!2185153 lambda!276346))))

(assert (=> b!5363302 (= lt!2185163 (store ((as const (Array Context!8914 Bool)) false) lt!2185153 true))))

(assert (=> b!5363303 (= e!3328440 e!3328447)))

(declare-fun res!2276167 () Bool)

(assert (=> b!5363303 (=> res!2276167 e!3328447)))

(declare-fun ++!13376 (List!61519 List!61519) List!61519)

(assert (=> b!5363303 (= res!2276167 (not (= (++!13376 (_1!35575 lt!2185159) (_2!35575 lt!2185159)) s!2326)))))

(declare-fun lt!2185147 () Option!15184)

(declare-fun get!21118 (Option!15184) tuple2!64544)

(assert (=> b!5363303 (= lt!2185159 (get!21118 lt!2185147))))

(assert (=> b!5363303 (= (Exists!2254 lambda!276347) (Exists!2254 lambda!276348))))

(declare-fun lt!2185166 () Unit!153810)

(assert (=> b!5363303 (= lt!2185166 (lemmaExistCutMatchRandMatchRSpecEquivalent!908 lt!2185164 (regTwo!30658 r!7292) s!2326))))

(assert (=> b!5363303 (= (isDefined!11887 lt!2185147) (Exists!2254 lambda!276347))))

(assert (=> b!5363303 (= lt!2185147 (findConcatSeparation!1598 lt!2185164 (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326))))

(declare-fun lt!2185158 () Unit!153810)

(assert (=> b!5363303 (= lt!2185158 (lemmaFindConcatSeparationEquivalentToExists!1362 lt!2185164 (regTwo!30658 r!7292) s!2326))))

(declare-fun setIsEmpty!34729 () Bool)

(assert (=> setIsEmpty!34729 setRes!34729))

(declare-fun b!5363304 () Bool)

(declare-fun res!2276151 () Bool)

(assert (=> b!5363304 (=> (not res!2276151) (not e!3328439))))

(declare-fun toList!8857 ((InoxSet Context!8914)) List!61520)

(assert (=> b!5363304 (= res!2276151 (= (toList!8857 z!1189) zl!343))))

(declare-fun b!5363305 () Bool)

(declare-fun res!2276166 () Bool)

(assert (=> b!5363305 (=> res!2276166 e!3328445)))

(assert (=> b!5363305 (= res!2276166 e!3328457)))

(declare-fun res!2276140 () Bool)

(assert (=> b!5363305 (=> (not res!2276140) (not e!3328457))))

(assert (=> b!5363305 (= res!2276140 ((_ is Concat!23918) (regOne!30658 r!7292)))))

(declare-fun b!5363306 () Bool)

(declare-fun res!2276138 () Bool)

(assert (=> b!5363306 (=> res!2276138 e!3328456)))

(assert (=> b!5363306 (= res!2276138 (not (= lt!2185171 r!7292)))))

(declare-fun b!5363307 () Bool)

(assert (=> b!5363307 (= e!3328448 (or (not lt!2185162) lt!2185161))))

(declare-fun b!5363308 () Bool)

(declare-fun res!2276155 () Bool)

(assert (=> b!5363308 (=> res!2276155 e!3328441)))

(declare-fun isEmpty!33370 (List!61518) Bool)

(assert (=> b!5363308 (= res!2276155 (isEmpty!33370 (t!374739 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun b!5363309 () Bool)

(declare-fun res!2276164 () Bool)

(assert (=> b!5363309 (=> res!2276164 e!3328446)))

(declare-fun generalisedConcat!742 (List!61518) Regex!15073)

(assert (=> b!5363309 (= res!2276164 (not (= r!7292 (generalisedConcat!742 (exprs!4957 (h!67844 zl!343))))))))

(assert (= (and start!564498 res!2276141) b!5363304))

(assert (= (and b!5363304 res!2276151) b!5363287))

(assert (= (and b!5363287 res!2276161) b!5363292))

(assert (= (and b!5363292 (not res!2276144)) b!5363288))

(assert (= (and b!5363288 (not res!2276163)) b!5363309))

(assert (= (and b!5363309 (not res!2276164)) b!5363293))

(assert (= (and b!5363293 (not res!2276146)) b!5363298))

(assert (= (and b!5363298 (not res!2276160)) b!5363283))

(assert (= (and b!5363283 (not res!2276162)) b!5363275))

(assert (= (and b!5363275 (not res!2276148)) b!5363308))

(assert (= (and b!5363308 (not res!2276155)) b!5363290))

(assert (= (and b!5363290 c!934034) b!5363280))

(assert (= (and b!5363290 (not c!934034)) b!5363286))

(assert (= (and b!5363280 (not res!2276153)) b!5363279))

(assert (= (and b!5363290 (not res!2276158)) b!5363305))

(assert (= (and b!5363305 res!2276140) b!5363294))

(assert (= (and b!5363305 (not res!2276166)) b!5363291))

(assert (= (and b!5363291 (not res!2276159)) b!5363300))

(assert (= (and b!5363300 (not res!2276139)) b!5363276))

(assert (= (and b!5363276 (not res!2276156)) b!5363285))

(assert (= (and b!5363285 (not res!2276142)) b!5363306))

(assert (= (and b!5363306 (not res!2276138)) b!5363281))

(assert (= (and b!5363281 (not res!2276137)) b!5363299))

(assert (= (and b!5363299 (not res!2276157)) b!5363271))

(assert (= (and b!5363271 (not res!2276165)) b!5363301))

(assert (= (and b!5363301 (not res!2276147)) b!5363273))

(assert (= (and b!5363273 res!2276145) b!5363307))

(assert (= (and b!5363273 (not res!2276152)) b!5363303))

(assert (= (and b!5363303 (not res!2276167)) b!5363269))

(assert (= (and b!5363269 (not res!2276150)) b!5363282))

(assert (= (and b!5363282 (not res!2276154)) b!5363284))

(assert (= (and b!5363284 (not res!2276143)) b!5363302))

(assert (= (and b!5363302 (not res!2276149)) b!5363295))

(assert (= (and start!564498 ((_ is ElementMatch!15073) r!7292)) b!5363272))

(assert (= (and start!564498 ((_ is Concat!23918) r!7292)) b!5363289))

(assert (= (and start!564498 ((_ is Star!15073) r!7292)) b!5363277))

(assert (= (and start!564498 ((_ is Union!15073) r!7292)) b!5363274))

(assert (= (and start!564498 condSetEmpty!34729) setIsEmpty!34729))

(assert (= (and start!564498 (not condSetEmpty!34729)) setNonEmpty!34729))

(assert (= setNonEmpty!34729 b!5363270))

(assert (= b!5363278 b!5363296))

(assert (= (and start!564498 ((_ is Cons!61396) zl!343)) b!5363278))

(assert (= (and start!564498 ((_ is Cons!61395) s!2326)) b!5363297))

(declare-fun m!6391602 () Bool)

(assert (=> b!5363271 m!6391602))

(declare-fun m!6391604 () Bool)

(assert (=> b!5363271 m!6391604))

(declare-fun m!6391606 () Bool)

(assert (=> b!5363271 m!6391606))

(declare-fun m!6391608 () Bool)

(assert (=> b!5363271 m!6391608))

(declare-fun m!6391610 () Bool)

(assert (=> b!5363271 m!6391610))

(declare-fun m!6391612 () Bool)

(assert (=> b!5363271 m!6391612))

(declare-fun m!6391614 () Bool)

(assert (=> b!5363271 m!6391614))

(declare-fun m!6391616 () Bool)

(assert (=> b!5363271 m!6391616))

(declare-fun m!6391618 () Bool)

(assert (=> b!5363271 m!6391618))

(declare-fun m!6391620 () Bool)

(assert (=> b!5363309 m!6391620))

(declare-fun m!6391622 () Bool)

(assert (=> b!5363278 m!6391622))

(declare-fun m!6391624 () Bool)

(assert (=> b!5363290 m!6391624))

(declare-fun m!6391626 () Bool)

(assert (=> b!5363290 m!6391626))

(declare-fun m!6391628 () Bool)

(assert (=> b!5363290 m!6391628))

(declare-fun m!6391630 () Bool)

(assert (=> b!5363290 m!6391630))

(declare-fun m!6391632 () Bool)

(assert (=> b!5363290 m!6391632))

(declare-fun m!6391634 () Bool)

(assert (=> b!5363290 m!6391634))

(declare-fun m!6391636 () Bool)

(assert (=> b!5363290 m!6391636))

(declare-fun m!6391638 () Bool)

(assert (=> b!5363279 m!6391638))

(declare-fun m!6391640 () Bool)

(assert (=> setNonEmpty!34729 m!6391640))

(declare-fun m!6391642 () Bool)

(assert (=> b!5363285 m!6391642))

(declare-fun m!6391644 () Bool)

(assert (=> b!5363285 m!6391644))

(declare-fun m!6391646 () Bool)

(assert (=> b!5363295 m!6391646))

(declare-fun m!6391648 () Bool)

(assert (=> start!564498 m!6391648))

(declare-fun m!6391650 () Bool)

(assert (=> b!5363273 m!6391650))

(declare-fun m!6391652 () Bool)

(assert (=> b!5363273 m!6391652))

(declare-fun m!6391654 () Bool)

(assert (=> b!5363273 m!6391654))

(declare-fun m!6391656 () Bool)

(assert (=> b!5363276 m!6391656))

(declare-fun m!6391658 () Bool)

(assert (=> b!5363276 m!6391658))

(declare-fun m!6391660 () Bool)

(assert (=> b!5363276 m!6391660))

(declare-fun m!6391662 () Bool)

(assert (=> b!5363276 m!6391662))

(declare-fun m!6391664 () Bool)

(assert (=> b!5363276 m!6391664))

(declare-fun m!6391666 () Bool)

(assert (=> b!5363284 m!6391666))

(declare-fun m!6391668 () Bool)

(assert (=> b!5363299 m!6391668))

(declare-fun m!6391670 () Bool)

(assert (=> b!5363301 m!6391670))

(declare-fun m!6391672 () Bool)

(assert (=> b!5363298 m!6391672))

(assert (=> b!5363298 m!6391672))

(declare-fun m!6391674 () Bool)

(assert (=> b!5363298 m!6391674))

(declare-fun m!6391676 () Bool)

(assert (=> b!5363282 m!6391676))

(declare-fun m!6391678 () Bool)

(assert (=> b!5363308 m!6391678))

(declare-fun m!6391680 () Bool)

(assert (=> b!5363275 m!6391680))

(declare-fun m!6391682 () Bool)

(assert (=> b!5363275 m!6391682))

(declare-fun m!6391684 () Bool)

(assert (=> b!5363275 m!6391684))

(declare-fun m!6391686 () Bool)

(assert (=> b!5363275 m!6391686))

(assert (=> b!5363275 m!6391684))

(declare-fun m!6391688 () Bool)

(assert (=> b!5363275 m!6391688))

(declare-fun m!6391690 () Bool)

(assert (=> b!5363275 m!6391690))

(assert (=> b!5363275 m!6391682))

(assert (=> b!5363302 m!6391626))

(declare-fun m!6391692 () Bool)

(assert (=> b!5363302 m!6391692))

(declare-fun m!6391694 () Bool)

(assert (=> b!5363302 m!6391694))

(declare-fun m!6391696 () Bool)

(assert (=> b!5363302 m!6391696))

(declare-fun m!6391698 () Bool)

(assert (=> b!5363302 m!6391698))

(declare-fun m!6391700 () Bool)

(assert (=> b!5363294 m!6391700))

(declare-fun m!6391702 () Bool)

(assert (=> b!5363269 m!6391702))

(declare-fun m!6391704 () Bool)

(assert (=> b!5363303 m!6391704))

(declare-fun m!6391706 () Bool)

(assert (=> b!5363303 m!6391706))

(declare-fun m!6391708 () Bool)

(assert (=> b!5363303 m!6391708))

(declare-fun m!6391710 () Bool)

(assert (=> b!5363303 m!6391710))

(declare-fun m!6391712 () Bool)

(assert (=> b!5363303 m!6391712))

(declare-fun m!6391714 () Bool)

(assert (=> b!5363303 m!6391714))

(assert (=> b!5363303 m!6391708))

(declare-fun m!6391716 () Bool)

(assert (=> b!5363303 m!6391716))

(declare-fun m!6391718 () Bool)

(assert (=> b!5363303 m!6391718))

(declare-fun m!6391720 () Bool)

(assert (=> b!5363287 m!6391720))

(declare-fun m!6391722 () Bool)

(assert (=> b!5363280 m!6391722))

(declare-fun m!6391724 () Bool)

(assert (=> b!5363280 m!6391724))

(declare-fun m!6391726 () Bool)

(assert (=> b!5363280 m!6391726))

(declare-fun m!6391728 () Bool)

(assert (=> b!5363304 m!6391728))

(declare-fun m!6391730 () Bool)

(assert (=> b!5363288 m!6391730))

(declare-fun m!6391732 () Bool)

(assert (=> b!5363292 m!6391732))

(declare-fun m!6391734 () Bool)

(assert (=> b!5363292 m!6391734))

(declare-fun m!6391736 () Bool)

(assert (=> b!5363292 m!6391736))

(declare-fun m!6391738 () Bool)

(assert (=> b!5363300 m!6391738))

(check-sat (not b!5363282) (not b!5363271) (not b!5363276) (not b!5363273) (not b!5363279) (not b!5363296) (not b!5363289) (not b!5363301) (not b!5363299) (not b!5363297) (not b!5363300) (not b!5363304) (not b!5363284) (not b!5363303) (not b!5363269) (not b!5363294) (not b!5363290) tp_is_empty!39399 (not start!564498) (not b!5363292) (not b!5363298) (not b!5363287) (not b!5363302) (not setNonEmpty!34729) (not b!5363285) (not b!5363275) (not b!5363277) (not b!5363309) (not b!5363274) (not b!5363295) (not b!5363280) (not b!5363278) (not b!5363308) (not b!5363288) (not b!5363270))
(check-sat)
(get-model)

(declare-fun d!1718184 () Bool)

(declare-fun lt!2185215 () Regex!15073)

(assert (=> d!1718184 (validRegex!6809 lt!2185215)))

(assert (=> d!1718184 (= lt!2185215 (generalisedUnion!1002 (unfocusZipperList!515 zl!343)))))

(assert (=> d!1718184 (= (unfocusZipper!815 zl!343) lt!2185215)))

(declare-fun bs!1242132 () Bool)

(assert (= bs!1242132 d!1718184))

(declare-fun m!6391946 () Bool)

(assert (=> bs!1242132 m!6391946))

(assert (=> bs!1242132 m!6391672))

(assert (=> bs!1242132 m!6391672))

(assert (=> bs!1242132 m!6391674))

(assert (=> b!5363287 d!1718184))

(declare-fun d!1718194 () Bool)

(assert (=> d!1718194 (= (isEmpty!33370 (t!374739 (exprs!4957 (h!67844 zl!343)))) ((_ is Nil!61394) (t!374739 (exprs!4957 (h!67844 zl!343)))))))

(assert (=> b!5363308 d!1718194))

(declare-fun bs!1242133 () Bool)

(declare-fun d!1718196 () Bool)

(assert (= bs!1242133 (and d!1718196 b!5363295)))

(declare-fun lambda!276373 () Int)

(assert (=> bs!1242133 (= lambda!276373 lambda!276349)))

(assert (=> d!1718196 (= (inv!80929 setElem!34729) (forall!14481 (exprs!4957 setElem!34729) lambda!276373))))

(declare-fun bs!1242134 () Bool)

(assert (= bs!1242134 d!1718196))

(declare-fun m!6391948 () Bool)

(assert (=> bs!1242134 m!6391948))

(assert (=> setNonEmpty!34729 d!1718196))

(declare-fun bs!1242145 () Bool)

(declare-fun d!1718198 () Bool)

(assert (= bs!1242145 (and d!1718198 b!5363295)))

(declare-fun lambda!276378 () Int)

(assert (=> bs!1242145 (= lambda!276378 lambda!276349)))

(declare-fun bs!1242146 () Bool)

(assert (= bs!1242146 (and d!1718198 d!1718196)))

(assert (=> bs!1242146 (= lambda!276378 lambda!276373)))

(declare-fun b!5363597 () Bool)

(declare-fun e!3328620 () Bool)

(declare-fun e!3328619 () Bool)

(assert (=> b!5363597 (= e!3328620 e!3328619)))

(declare-fun c!934119 () Bool)

(declare-fun tail!10602 (List!61518) List!61518)

(assert (=> b!5363597 (= c!934119 (isEmpty!33370 (tail!10602 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun b!5363598 () Bool)

(declare-fun e!3328622 () Regex!15073)

(assert (=> b!5363598 (= e!3328622 EmptyExpr!15073)))

(declare-fun e!3328624 () Bool)

(assert (=> d!1718198 e!3328624))

(declare-fun res!2276285 () Bool)

(assert (=> d!1718198 (=> (not res!2276285) (not e!3328624))))

(declare-fun lt!2185222 () Regex!15073)

(assert (=> d!1718198 (= res!2276285 (validRegex!6809 lt!2185222))))

(declare-fun e!3328621 () Regex!15073)

(assert (=> d!1718198 (= lt!2185222 e!3328621)))

(declare-fun c!934122 () Bool)

(declare-fun e!3328623 () Bool)

(assert (=> d!1718198 (= c!934122 e!3328623)))

(declare-fun res!2276286 () Bool)

(assert (=> d!1718198 (=> (not res!2276286) (not e!3328623))))

(assert (=> d!1718198 (= res!2276286 ((_ is Cons!61394) (exprs!4957 (h!67844 zl!343))))))

(assert (=> d!1718198 (forall!14481 (exprs!4957 (h!67844 zl!343)) lambda!276378)))

(assert (=> d!1718198 (= (generalisedConcat!742 (exprs!4957 (h!67844 zl!343))) lt!2185222)))

(declare-fun b!5363599 () Bool)

(assert (=> b!5363599 (= e!3328621 (h!67842 (exprs!4957 (h!67844 zl!343))))))

(declare-fun b!5363600 () Bool)

(declare-fun head!11505 (List!61518) Regex!15073)

(assert (=> b!5363600 (= e!3328619 (= lt!2185222 (head!11505 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun b!5363601 () Bool)

(declare-fun isEmptyExpr!928 (Regex!15073) Bool)

(assert (=> b!5363601 (= e!3328620 (isEmptyExpr!928 lt!2185222))))

(declare-fun b!5363602 () Bool)

(assert (=> b!5363602 (= e!3328621 e!3328622)))

(declare-fun c!934121 () Bool)

(assert (=> b!5363602 (= c!934121 ((_ is Cons!61394) (exprs!4957 (h!67844 zl!343))))))

(declare-fun b!5363603 () Bool)

(declare-fun isConcat!451 (Regex!15073) Bool)

(assert (=> b!5363603 (= e!3328619 (isConcat!451 lt!2185222))))

(declare-fun b!5363604 () Bool)

(assert (=> b!5363604 (= e!3328623 (isEmpty!33370 (t!374739 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun b!5363605 () Bool)

(assert (=> b!5363605 (= e!3328624 e!3328620)))

(declare-fun c!934120 () Bool)

(assert (=> b!5363605 (= c!934120 (isEmpty!33370 (exprs!4957 (h!67844 zl!343))))))

(declare-fun b!5363606 () Bool)

(assert (=> b!5363606 (= e!3328622 (Concat!23918 (h!67842 (exprs!4957 (h!67844 zl!343))) (generalisedConcat!742 (t!374739 (exprs!4957 (h!67844 zl!343))))))))

(assert (= (and d!1718198 res!2276286) b!5363604))

(assert (= (and d!1718198 c!934122) b!5363599))

(assert (= (and d!1718198 (not c!934122)) b!5363602))

(assert (= (and b!5363602 c!934121) b!5363606))

(assert (= (and b!5363602 (not c!934121)) b!5363598))

(assert (= (and d!1718198 res!2276285) b!5363605))

(assert (= (and b!5363605 c!934120) b!5363601))

(assert (= (and b!5363605 (not c!934120)) b!5363597))

(assert (= (and b!5363597 c!934119) b!5363600))

(assert (= (and b!5363597 (not c!934119)) b!5363603))

(declare-fun m!6391966 () Bool)

(assert (=> b!5363601 m!6391966))

(declare-fun m!6391968 () Bool)

(assert (=> b!5363605 m!6391968))

(declare-fun m!6391970 () Bool)

(assert (=> b!5363606 m!6391970))

(declare-fun m!6391972 () Bool)

(assert (=> b!5363603 m!6391972))

(declare-fun m!6391974 () Bool)

(assert (=> b!5363600 m!6391974))

(declare-fun m!6391976 () Bool)

(assert (=> b!5363597 m!6391976))

(assert (=> b!5363597 m!6391976))

(declare-fun m!6391978 () Bool)

(assert (=> b!5363597 m!6391978))

(declare-fun m!6391980 () Bool)

(assert (=> d!1718198 m!6391980))

(declare-fun m!6391982 () Bool)

(assert (=> d!1718198 m!6391982))

(assert (=> b!5363604 m!6391678))

(assert (=> b!5363309 d!1718198))

(declare-fun b!5363680 () Bool)

(declare-fun e!3328671 () Bool)

(declare-fun call!383720 () Bool)

(assert (=> b!5363680 (= e!3328671 call!383720)))

(declare-fun b!5363681 () Bool)

(declare-fun e!3328675 () Bool)

(declare-fun e!3328674 () Bool)

(assert (=> b!5363681 (= e!3328675 e!3328674)))

(declare-fun res!2276315 () Bool)

(assert (=> b!5363681 (=> (not res!2276315) (not e!3328674))))

(declare-fun call!383718 () Bool)

(assert (=> b!5363681 (= res!2276315 call!383718)))

(declare-fun d!1718206 () Bool)

(declare-fun res!2276316 () Bool)

(declare-fun e!3328677 () Bool)

(assert (=> d!1718206 (=> res!2276316 e!3328677)))

(assert (=> d!1718206 (= res!2276316 ((_ is ElementMatch!15073) r!7292))))

(assert (=> d!1718206 (= (validRegex!6809 r!7292) e!3328677)))

(declare-fun bm!383713 () Bool)

(declare-fun call!383719 () Bool)

(assert (=> bm!383713 (= call!383720 call!383719)))

(declare-fun b!5363682 () Bool)

(declare-fun e!3328673 () Bool)

(declare-fun e!3328672 () Bool)

(assert (=> b!5363682 (= e!3328673 e!3328672)))

(declare-fun c!934146 () Bool)

(assert (=> b!5363682 (= c!934146 ((_ is Union!15073) r!7292))))

(declare-fun b!5363683 () Bool)

(declare-fun e!3328676 () Bool)

(assert (=> b!5363683 (= e!3328673 e!3328676)))

(declare-fun res!2276318 () Bool)

(assert (=> b!5363683 (= res!2276318 (not (nullable!5242 (reg!15402 r!7292))))))

(assert (=> b!5363683 (=> (not res!2276318) (not e!3328676))))

(declare-fun b!5363684 () Bool)

(assert (=> b!5363684 (= e!3328674 call!383720)))

(declare-fun b!5363685 () Bool)

(declare-fun res!2276314 () Bool)

(assert (=> b!5363685 (=> (not res!2276314) (not e!3328671))))

(assert (=> b!5363685 (= res!2276314 call!383718)))

(assert (=> b!5363685 (= e!3328672 e!3328671)))

(declare-fun c!934147 () Bool)

(declare-fun bm!383714 () Bool)

(assert (=> bm!383714 (= call!383719 (validRegex!6809 (ite c!934147 (reg!15402 r!7292) (ite c!934146 (regTwo!30659 r!7292) (regTwo!30658 r!7292)))))))

(declare-fun b!5363686 () Bool)

(assert (=> b!5363686 (= e!3328676 call!383719)))

(declare-fun bm!383715 () Bool)

(assert (=> bm!383715 (= call!383718 (validRegex!6809 (ite c!934146 (regOne!30659 r!7292) (regOne!30658 r!7292))))))

(declare-fun b!5363687 () Bool)

(assert (=> b!5363687 (= e!3328677 e!3328673)))

(assert (=> b!5363687 (= c!934147 ((_ is Star!15073) r!7292))))

(declare-fun b!5363688 () Bool)

(declare-fun res!2276317 () Bool)

(assert (=> b!5363688 (=> res!2276317 e!3328675)))

(assert (=> b!5363688 (= res!2276317 (not ((_ is Concat!23918) r!7292)))))

(assert (=> b!5363688 (= e!3328672 e!3328675)))

(assert (= (and d!1718206 (not res!2276316)) b!5363687))

(assert (= (and b!5363687 c!934147) b!5363683))

(assert (= (and b!5363687 (not c!934147)) b!5363682))

(assert (= (and b!5363683 res!2276318) b!5363686))

(assert (= (and b!5363682 c!934146) b!5363685))

(assert (= (and b!5363682 (not c!934146)) b!5363688))

(assert (= (and b!5363685 res!2276314) b!5363680))

(assert (= (and b!5363688 (not res!2276317)) b!5363681))

(assert (= (and b!5363681 res!2276315) b!5363684))

(assert (= (or b!5363680 b!5363684) bm!383713))

(assert (= (or b!5363685 b!5363681) bm!383715))

(assert (= (or b!5363686 bm!383713) bm!383714))

(declare-fun m!6392018 () Bool)

(assert (=> b!5363683 m!6392018))

(declare-fun m!6392020 () Bool)

(assert (=> bm!383714 m!6392020))

(declare-fun m!6392022 () Bool)

(assert (=> bm!383715 m!6392022))

(assert (=> start!564498 d!1718206))

(declare-fun d!1718218 () Bool)

(declare-fun dynLambda!24247 (Int Context!8914) (InoxSet Context!8914))

(assert (=> d!1718218 (= (flatMap!800 z!1189 lambda!276346) (dynLambda!24247 lambda!276346 (h!67844 zl!343)))))

(declare-fun lt!2185236 () Unit!153810)

(declare-fun choose!40272 ((InoxSet Context!8914) Context!8914 Int) Unit!153810)

(assert (=> d!1718218 (= lt!2185236 (choose!40272 z!1189 (h!67844 zl!343) lambda!276346))))

(assert (=> d!1718218 (= z!1189 (store ((as const (Array Context!8914 Bool)) false) (h!67844 zl!343) true))))

(assert (=> d!1718218 (= (lemmaFlatMapOnSingletonSet!332 z!1189 (h!67844 zl!343) lambda!276346) lt!2185236)))

(declare-fun b_lambda!205621 () Bool)

(assert (=> (not b_lambda!205621) (not d!1718218)))

(declare-fun bs!1242166 () Bool)

(assert (= bs!1242166 d!1718218))

(assert (=> bs!1242166 m!6391634))

(declare-fun m!6392048 () Bool)

(assert (=> bs!1242166 m!6392048))

(declare-fun m!6392050 () Bool)

(assert (=> bs!1242166 m!6392050))

(declare-fun m!6392052 () Bool)

(assert (=> bs!1242166 m!6392052))

(assert (=> b!5363290 d!1718218))

(declare-fun d!1718228 () Bool)

(declare-fun choose!40273 ((InoxSet Context!8914) Int) (InoxSet Context!8914))

(assert (=> d!1718228 (= (flatMap!800 z!1189 lambda!276346) (choose!40273 z!1189 lambda!276346))))

(declare-fun bs!1242167 () Bool)

(assert (= bs!1242167 d!1718228))

(declare-fun m!6392054 () Bool)

(assert (=> bs!1242167 m!6392054))

(assert (=> b!5363290 d!1718228))

(declare-fun d!1718230 () Bool)

(declare-fun nullableFct!1546 (Regex!15073) Bool)

(assert (=> d!1718230 (= (nullable!5242 (h!67842 (exprs!4957 (h!67844 zl!343)))) (nullableFct!1546 (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun bs!1242168 () Bool)

(assert (= bs!1242168 d!1718230))

(declare-fun m!6392056 () Bool)

(assert (=> bs!1242168 m!6392056))

(assert (=> b!5363290 d!1718230))

(declare-fun d!1718232 () Bool)

(declare-fun c!934157 () Bool)

(declare-fun e!3328699 () Bool)

(assert (=> d!1718232 (= c!934157 e!3328699)))

(declare-fun res!2276335 () Bool)

(assert (=> d!1718232 (=> (not res!2276335) (not e!3328699))))

(assert (=> d!1718232 (= res!2276335 ((_ is Cons!61394) (exprs!4957 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343))))))))))

(declare-fun e!3328698 () (InoxSet Context!8914))

(assert (=> d!1718232 (= (derivationStepZipperUp!445 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343))))) (h!67843 s!2326)) e!3328698)))

(declare-fun bm!383718 () Bool)

(declare-fun call!383723 () (InoxSet Context!8914))

(assert (=> bm!383718 (= call!383723 (derivationStepZipperDown!521 (h!67842 (exprs!4957 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343))))))) (Context!8915 (t!374739 (exprs!4957 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343)))))))) (h!67843 s!2326)))))

(declare-fun b!5363723 () Bool)

(declare-fun e!3328700 () (InoxSet Context!8914))

(assert (=> b!5363723 (= e!3328698 e!3328700)))

(declare-fun c!934158 () Bool)

(assert (=> b!5363723 (= c!934158 ((_ is Cons!61394) (exprs!4957 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343))))))))))

(declare-fun b!5363724 () Bool)

(assert (=> b!5363724 (= e!3328698 ((_ map or) call!383723 (derivationStepZipperUp!445 (Context!8915 (t!374739 (exprs!4957 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343)))))))) (h!67843 s!2326))))))

(declare-fun b!5363725 () Bool)

(assert (=> b!5363725 (= e!3328699 (nullable!5242 (h!67842 (exprs!4957 (Context!8915 (Cons!61394 (h!67842 (exprs!4957 (h!67844 zl!343))) (t!374739 (exprs!4957 (h!67844 zl!343)))))))))))

(declare-fun b!5363726 () Bool)

(assert (=> b!5363726 (= e!3328700 ((as const (Array Context!8914 Bool)) false))))

(declare-fun b!5363727 () Bool)

(assert (=> b!5363727 (= e!3328700 call!383723)))

(assert (= (and d!1718232 res!2276335) b!5363725))

(assert (= (and d!1718232 c!934157) b!5363724))

(assert (= (and d!1718232 (not c!934157)) b!5363723))

(assert (= (and b!5363723 c!934158) b!5363727))

(assert (= (and b!5363723 (not c!934158)) b!5363726))

(assert (= (or b!5363724 b!5363727) bm!383718))

(declare-fun m!6392086 () Bool)

(assert (=> bm!383718 m!6392086))

(declare-fun m!6392088 () Bool)

(assert (=> b!5363724 m!6392088))

(declare-fun m!6392090 () Bool)

(assert (=> b!5363725 m!6392090))

(assert (=> b!5363290 d!1718232))

(declare-fun d!1718244 () Bool)

(declare-fun c!934159 () Bool)

(declare-fun e!3328702 () Bool)

(assert (=> d!1718244 (= c!934159 e!3328702)))

(declare-fun res!2276336 () Bool)

(assert (=> d!1718244 (=> (not res!2276336) (not e!3328702))))

(assert (=> d!1718244 (= res!2276336 ((_ is Cons!61394) (exprs!4957 (h!67844 zl!343))))))

(declare-fun e!3328701 () (InoxSet Context!8914))

(assert (=> d!1718244 (= (derivationStepZipperUp!445 (h!67844 zl!343) (h!67843 s!2326)) e!3328701)))

(declare-fun bm!383719 () Bool)

(declare-fun call!383724 () (InoxSet Context!8914))

(assert (=> bm!383719 (= call!383724 (derivationStepZipperDown!521 (h!67842 (exprs!4957 (h!67844 zl!343))) (Context!8915 (t!374739 (exprs!4957 (h!67844 zl!343)))) (h!67843 s!2326)))))

(declare-fun b!5363728 () Bool)

(declare-fun e!3328703 () (InoxSet Context!8914))

(assert (=> b!5363728 (= e!3328701 e!3328703)))

(declare-fun c!934160 () Bool)

(assert (=> b!5363728 (= c!934160 ((_ is Cons!61394) (exprs!4957 (h!67844 zl!343))))))

(declare-fun b!5363729 () Bool)

(assert (=> b!5363729 (= e!3328701 ((_ map or) call!383724 (derivationStepZipperUp!445 (Context!8915 (t!374739 (exprs!4957 (h!67844 zl!343)))) (h!67843 s!2326))))))

(declare-fun b!5363730 () Bool)

(assert (=> b!5363730 (= e!3328702 (nullable!5242 (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun b!5363731 () Bool)

(assert (=> b!5363731 (= e!3328703 ((as const (Array Context!8914 Bool)) false))))

(declare-fun b!5363732 () Bool)

(assert (=> b!5363732 (= e!3328703 call!383724)))

(assert (= (and d!1718244 res!2276336) b!5363730))

(assert (= (and d!1718244 c!934159) b!5363729))

(assert (= (and d!1718244 (not c!934159)) b!5363728))

(assert (= (and b!5363728 c!934160) b!5363732))

(assert (= (and b!5363728 (not c!934160)) b!5363731))

(assert (= (or b!5363729 b!5363732) bm!383719))

(declare-fun m!6392092 () Bool)

(assert (=> bm!383719 m!6392092))

(declare-fun m!6392094 () Bool)

(assert (=> b!5363729 m!6392094))

(assert (=> b!5363730 m!6391636))

(assert (=> b!5363290 d!1718244))

(declare-fun d!1718246 () Bool)

(declare-fun c!934161 () Bool)

(declare-fun e!3328705 () Bool)

(assert (=> d!1718246 (= c!934161 e!3328705)))

(declare-fun res!2276337 () Bool)

(assert (=> d!1718246 (=> (not res!2276337) (not e!3328705))))

(assert (=> d!1718246 (= res!2276337 ((_ is Cons!61394) (exprs!4957 lt!2185153)))))

(declare-fun e!3328704 () (InoxSet Context!8914))

(assert (=> d!1718246 (= (derivationStepZipperUp!445 lt!2185153 (h!67843 s!2326)) e!3328704)))

(declare-fun bm!383720 () Bool)

(declare-fun call!383725 () (InoxSet Context!8914))

(assert (=> bm!383720 (= call!383725 (derivationStepZipperDown!521 (h!67842 (exprs!4957 lt!2185153)) (Context!8915 (t!374739 (exprs!4957 lt!2185153))) (h!67843 s!2326)))))

(declare-fun b!5363733 () Bool)

(declare-fun e!3328706 () (InoxSet Context!8914))

(assert (=> b!5363733 (= e!3328704 e!3328706)))

(declare-fun c!934162 () Bool)

(assert (=> b!5363733 (= c!934162 ((_ is Cons!61394) (exprs!4957 lt!2185153)))))

(declare-fun b!5363734 () Bool)

(assert (=> b!5363734 (= e!3328704 ((_ map or) call!383725 (derivationStepZipperUp!445 (Context!8915 (t!374739 (exprs!4957 lt!2185153))) (h!67843 s!2326))))))

(declare-fun b!5363735 () Bool)

(assert (=> b!5363735 (= e!3328705 (nullable!5242 (h!67842 (exprs!4957 lt!2185153))))))

(declare-fun b!5363736 () Bool)

(assert (=> b!5363736 (= e!3328706 ((as const (Array Context!8914 Bool)) false))))

(declare-fun b!5363737 () Bool)

(assert (=> b!5363737 (= e!3328706 call!383725)))

(assert (= (and d!1718246 res!2276337) b!5363735))

(assert (= (and d!1718246 c!934161) b!5363734))

(assert (= (and d!1718246 (not c!934161)) b!5363733))

(assert (= (and b!5363733 c!934162) b!5363737))

(assert (= (and b!5363733 (not c!934162)) b!5363736))

(assert (= (or b!5363734 b!5363737) bm!383720))

(declare-fun m!6392096 () Bool)

(assert (=> bm!383720 m!6392096))

(declare-fun m!6392098 () Bool)

(assert (=> b!5363734 m!6392098))

(declare-fun m!6392100 () Bool)

(assert (=> b!5363735 m!6392100))

(assert (=> b!5363290 d!1718246))

(declare-fun b!5363876 () Bool)

(declare-fun e!3328780 () (InoxSet Context!8914))

(declare-fun call!383748 () (InoxSet Context!8914))

(declare-fun call!383751 () (InoxSet Context!8914))

(assert (=> b!5363876 (= e!3328780 ((_ map or) call!383748 call!383751))))

(declare-fun c!934201 () Bool)

(declare-fun c!934200 () Bool)

(declare-fun c!934198 () Bool)

(declare-fun bm!383741 () Bool)

(declare-fun call!383750 () List!61518)

(declare-fun call!383747 () (InoxSet Context!8914))

(assert (=> bm!383741 (= call!383747 (derivationStepZipperDown!521 (ite c!934200 (regTwo!30659 (h!67842 (exprs!4957 (h!67844 zl!343)))) (ite c!934201 (regTwo!30658 (h!67842 (exprs!4957 (h!67844 zl!343)))) (ite c!934198 (regOne!30658 (h!67842 (exprs!4957 (h!67844 zl!343)))) (reg!15402 (h!67842 (exprs!4957 (h!67844 zl!343))))))) (ite (or c!934200 c!934201) lt!2185153 (Context!8915 call!383750)) (h!67843 s!2326)))))

(declare-fun b!5363877 () Bool)

(declare-fun e!3328784 () (InoxSet Context!8914))

(assert (=> b!5363877 (= e!3328780 e!3328784)))

(assert (=> b!5363877 (= c!934198 ((_ is Concat!23918) (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun bm!383742 () Bool)

(assert (=> bm!383742 (= call!383751 call!383747)))

(declare-fun d!1718248 () Bool)

(declare-fun c!934199 () Bool)

(assert (=> d!1718248 (= c!934199 (and ((_ is ElementMatch!15073) (h!67842 (exprs!4957 (h!67844 zl!343)))) (= (c!934035 (h!67842 (exprs!4957 (h!67844 zl!343)))) (h!67843 s!2326))))))

(declare-fun e!3328783 () (InoxSet Context!8914))

(assert (=> d!1718248 (= (derivationStepZipperDown!521 (h!67842 (exprs!4957 (h!67844 zl!343))) lt!2185153 (h!67843 s!2326)) e!3328783)))

(declare-fun bm!383743 () Bool)

(declare-fun call!383749 () List!61518)

(declare-fun $colon$colon!1444 (List!61518 Regex!15073) List!61518)

(assert (=> bm!383743 (= call!383749 ($colon$colon!1444 (exprs!4957 lt!2185153) (ite (or c!934201 c!934198) (regTwo!30658 (h!67842 (exprs!4957 (h!67844 zl!343)))) (h!67842 (exprs!4957 (h!67844 zl!343))))))))

(declare-fun b!5363878 () Bool)

(declare-fun call!383746 () (InoxSet Context!8914))

(assert (=> b!5363878 (= e!3328784 call!383746)))

(declare-fun b!5363879 () Bool)

(declare-fun e!3328782 () Bool)

(assert (=> b!5363879 (= c!934201 e!3328782)))

(declare-fun res!2276355 () Bool)

(assert (=> b!5363879 (=> (not res!2276355) (not e!3328782))))

(assert (=> b!5363879 (= res!2276355 ((_ is Concat!23918) (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun e!3328785 () (InoxSet Context!8914))

(assert (=> b!5363879 (= e!3328785 e!3328780)))

(declare-fun b!5363880 () Bool)

(declare-fun e!3328781 () (InoxSet Context!8914))

(assert (=> b!5363880 (= e!3328781 call!383746)))

(declare-fun b!5363881 () Bool)

(declare-fun c!934197 () Bool)

(assert (=> b!5363881 (= c!934197 ((_ is Star!15073) (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(assert (=> b!5363881 (= e!3328784 e!3328781)))

(declare-fun b!5363882 () Bool)

(assert (=> b!5363882 (= e!3328783 e!3328785)))

(assert (=> b!5363882 (= c!934200 ((_ is Union!15073) (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun bm!383744 () Bool)

(assert (=> bm!383744 (= call!383746 call!383751)))

(declare-fun b!5363883 () Bool)

(assert (=> b!5363883 (= e!3328783 (store ((as const (Array Context!8914 Bool)) false) lt!2185153 true))))

(declare-fun b!5363884 () Bool)

(assert (=> b!5363884 (= e!3328785 ((_ map or) call!383748 call!383747))))

(declare-fun b!5363885 () Bool)

(assert (=> b!5363885 (= e!3328781 ((as const (Array Context!8914 Bool)) false))))

(declare-fun bm!383745 () Bool)

(assert (=> bm!383745 (= call!383748 (derivationStepZipperDown!521 (ite c!934200 (regOne!30659 (h!67842 (exprs!4957 (h!67844 zl!343)))) (regOne!30658 (h!67842 (exprs!4957 (h!67844 zl!343))))) (ite c!934200 lt!2185153 (Context!8915 call!383749)) (h!67843 s!2326)))))

(declare-fun bm!383746 () Bool)

(assert (=> bm!383746 (= call!383750 call!383749)))

(declare-fun b!5363886 () Bool)

(assert (=> b!5363886 (= e!3328782 (nullable!5242 (regOne!30658 (h!67842 (exprs!4957 (h!67844 zl!343))))))))

(assert (= (and d!1718248 c!934199) b!5363883))

(assert (= (and d!1718248 (not c!934199)) b!5363882))

(assert (= (and b!5363882 c!934200) b!5363884))

(assert (= (and b!5363882 (not c!934200)) b!5363879))

(assert (= (and b!5363879 res!2276355) b!5363886))

(assert (= (and b!5363879 c!934201) b!5363876))

(assert (= (and b!5363879 (not c!934201)) b!5363877))

(assert (= (and b!5363877 c!934198) b!5363878))

(assert (= (and b!5363877 (not c!934198)) b!5363881))

(assert (= (and b!5363881 c!934197) b!5363880))

(assert (= (and b!5363881 (not c!934197)) b!5363885))

(assert (= (or b!5363878 b!5363880) bm!383746))

(assert (= (or b!5363878 b!5363880) bm!383744))

(assert (= (or b!5363876 bm!383746) bm!383743))

(assert (= (or b!5363876 bm!383744) bm!383742))

(assert (= (or b!5363884 bm!383742) bm!383741))

(assert (= (or b!5363884 b!5363876) bm!383745))

(declare-fun m!6392162 () Bool)

(assert (=> b!5363886 m!6392162))

(assert (=> b!5363883 m!6391694))

(declare-fun m!6392164 () Bool)

(assert (=> bm!383745 m!6392164))

(declare-fun m!6392166 () Bool)

(assert (=> bm!383743 m!6392166))

(declare-fun m!6392168 () Bool)

(assert (=> bm!383741 m!6392168))

(assert (=> b!5363290 d!1718248))

(declare-fun bm!383749 () Bool)

(declare-fun call!383754 () Bool)

(assert (=> bm!383749 (= call!383754 (isEmpty!33368 (_1!35575 lt!2185159)))))

(declare-fun b!5363916 () Bool)

(declare-fun e!3328807 () Bool)

(assert (=> b!5363916 (= e!3328807 (nullable!5242 lt!2185164))))

(declare-fun b!5363917 () Bool)

(declare-fun e!3328806 () Bool)

(declare-fun lt!2185251 () Bool)

(assert (=> b!5363917 (= e!3328806 (not lt!2185251))))

(declare-fun b!5363918 () Bool)

(declare-fun res!2276379 () Bool)

(declare-fun e!3328805 () Bool)

(assert (=> b!5363918 (=> res!2276379 e!3328805)))

(assert (=> b!5363918 (= res!2276379 (not ((_ is ElementMatch!15073) lt!2185164)))))

(assert (=> b!5363918 (= e!3328806 e!3328805)))

(declare-fun b!5363919 () Bool)

(declare-fun res!2276377 () Bool)

(declare-fun e!3328801 () Bool)

(assert (=> b!5363919 (=> res!2276377 e!3328801)))

(declare-fun tail!10604 (List!61519) List!61519)

(assert (=> b!5363919 (= res!2276377 (not (isEmpty!33368 (tail!10604 (_1!35575 lt!2185159)))))))

(declare-fun b!5363920 () Bool)

(declare-fun e!3328802 () Bool)

(assert (=> b!5363920 (= e!3328802 e!3328806)))

(declare-fun c!934208 () Bool)

(assert (=> b!5363920 (= c!934208 ((_ is EmptyLang!15073) lt!2185164))))

(declare-fun b!5363921 () Bool)

(declare-fun e!3328804 () Bool)

(declare-fun head!11507 (List!61519) C!30416)

(assert (=> b!5363921 (= e!3328804 (= (head!11507 (_1!35575 lt!2185159)) (c!934035 lt!2185164)))))

(declare-fun b!5363922 () Bool)

(declare-fun res!2276376 () Bool)

(assert (=> b!5363922 (=> res!2276376 e!3328805)))

(assert (=> b!5363922 (= res!2276376 e!3328804)))

(declare-fun res!2276378 () Bool)

(assert (=> b!5363922 (=> (not res!2276378) (not e!3328804))))

(assert (=> b!5363922 (= res!2276378 lt!2185251)))

(declare-fun d!1718272 () Bool)

(assert (=> d!1718272 e!3328802))

(declare-fun c!934209 () Bool)

(assert (=> d!1718272 (= c!934209 ((_ is EmptyExpr!15073) lt!2185164))))

(assert (=> d!1718272 (= lt!2185251 e!3328807)))

(declare-fun c!934210 () Bool)

(assert (=> d!1718272 (= c!934210 (isEmpty!33368 (_1!35575 lt!2185159)))))

(assert (=> d!1718272 (validRegex!6809 lt!2185164)))

(assert (=> d!1718272 (= (matchR!7258 lt!2185164 (_1!35575 lt!2185159)) lt!2185251)))

(declare-fun b!5363923 () Bool)

(declare-fun derivativeStep!4215 (Regex!15073 C!30416) Regex!15073)

(assert (=> b!5363923 (= e!3328807 (matchR!7258 (derivativeStep!4215 lt!2185164 (head!11507 (_1!35575 lt!2185159))) (tail!10604 (_1!35575 lt!2185159))))))

(declare-fun b!5363924 () Bool)

(declare-fun e!3328803 () Bool)

(assert (=> b!5363924 (= e!3328805 e!3328803)))

(declare-fun res!2276374 () Bool)

(assert (=> b!5363924 (=> (not res!2276374) (not e!3328803))))

(assert (=> b!5363924 (= res!2276374 (not lt!2185251))))

(declare-fun b!5363925 () Bool)

(assert (=> b!5363925 (= e!3328801 (not (= (head!11507 (_1!35575 lt!2185159)) (c!934035 lt!2185164))))))

(declare-fun b!5363926 () Bool)

(declare-fun res!2276373 () Bool)

(assert (=> b!5363926 (=> (not res!2276373) (not e!3328804))))

(assert (=> b!5363926 (= res!2276373 (isEmpty!33368 (tail!10604 (_1!35575 lt!2185159))))))

(declare-fun b!5363927 () Bool)

(assert (=> b!5363927 (= e!3328802 (= lt!2185251 call!383754))))

(declare-fun b!5363928 () Bool)

(declare-fun res!2276375 () Bool)

(assert (=> b!5363928 (=> (not res!2276375) (not e!3328804))))

(assert (=> b!5363928 (= res!2276375 (not call!383754))))

(declare-fun b!5363929 () Bool)

(assert (=> b!5363929 (= e!3328803 e!3328801)))

(declare-fun res!2276372 () Bool)

(assert (=> b!5363929 (=> res!2276372 e!3328801)))

(assert (=> b!5363929 (= res!2276372 call!383754)))

(assert (= (and d!1718272 c!934210) b!5363916))

(assert (= (and d!1718272 (not c!934210)) b!5363923))

(assert (= (and d!1718272 c!934209) b!5363927))

(assert (= (and d!1718272 (not c!934209)) b!5363920))

(assert (= (and b!5363920 c!934208) b!5363917))

(assert (= (and b!5363920 (not c!934208)) b!5363918))

(assert (= (and b!5363918 (not res!2276379)) b!5363922))

(assert (= (and b!5363922 res!2276378) b!5363928))

(assert (= (and b!5363928 res!2276375) b!5363926))

(assert (= (and b!5363926 res!2276373) b!5363921))

(assert (= (and b!5363922 (not res!2276376)) b!5363924))

(assert (= (and b!5363924 res!2276374) b!5363929))

(assert (= (and b!5363929 (not res!2276372)) b!5363919))

(assert (= (and b!5363919 (not res!2276377)) b!5363925))

(assert (= (or b!5363927 b!5363928 b!5363929) bm!383749))

(assert (=> d!1718272 m!6391666))

(declare-fun m!6392172 () Bool)

(assert (=> d!1718272 m!6392172))

(declare-fun m!6392174 () Bool)

(assert (=> b!5363916 m!6392174))

(assert (=> bm!383749 m!6391666))

(declare-fun m!6392176 () Bool)

(assert (=> b!5363926 m!6392176))

(assert (=> b!5363926 m!6392176))

(declare-fun m!6392178 () Bool)

(assert (=> b!5363926 m!6392178))

(declare-fun m!6392180 () Bool)

(assert (=> b!5363923 m!6392180))

(assert (=> b!5363923 m!6392180))

(declare-fun m!6392182 () Bool)

(assert (=> b!5363923 m!6392182))

(assert (=> b!5363923 m!6392176))

(assert (=> b!5363923 m!6392182))

(assert (=> b!5363923 m!6392176))

(declare-fun m!6392184 () Bool)

(assert (=> b!5363923 m!6392184))

(assert (=> b!5363925 m!6392180))

(assert (=> b!5363921 m!6392180))

(assert (=> b!5363919 m!6392176))

(assert (=> b!5363919 m!6392176))

(assert (=> b!5363919 m!6392178))

(assert (=> b!5363269 d!1718272))

(declare-fun d!1718280 () Bool)

(assert (=> d!1718280 (= (isEmpty!33369 (t!374741 zl!343)) ((_ is Nil!61396) (t!374741 zl!343)))))

(assert (=> b!5363288 d!1718280))

(declare-fun bs!1242207 () Bool)

(declare-fun d!1718282 () Bool)

(assert (= bs!1242207 (and d!1718282 b!5363290)))

(declare-fun lambda!276395 () Int)

(assert (=> bs!1242207 (= lambda!276395 lambda!276346)))

(assert (=> d!1718282 true))

(assert (=> d!1718282 (= (derivationStepZipper!1312 lt!2185163 (h!67843 s!2326)) (flatMap!800 lt!2185163 lambda!276395))))

(declare-fun bs!1242208 () Bool)

(assert (= bs!1242208 d!1718282))

(declare-fun m!6392186 () Bool)

(assert (=> bs!1242208 m!6392186))

(assert (=> b!5363302 d!1718282))

(declare-fun d!1718284 () Bool)

(assert (=> d!1718284 (= (flatMap!800 lt!2185163 lambda!276346) (choose!40273 lt!2185163 lambda!276346))))

(declare-fun bs!1242209 () Bool)

(assert (= bs!1242209 d!1718284))

(declare-fun m!6392188 () Bool)

(assert (=> bs!1242209 m!6392188))

(assert (=> b!5363302 d!1718284))

(assert (=> b!5363302 d!1718246))

(declare-fun d!1718286 () Bool)

(assert (=> d!1718286 (= (flatMap!800 lt!2185163 lambda!276346) (dynLambda!24247 lambda!276346 lt!2185153))))

(declare-fun lt!2185252 () Unit!153810)

(assert (=> d!1718286 (= lt!2185252 (choose!40272 lt!2185163 lt!2185153 lambda!276346))))

(assert (=> d!1718286 (= lt!2185163 (store ((as const (Array Context!8914 Bool)) false) lt!2185153 true))))

(assert (=> d!1718286 (= (lemmaFlatMapOnSingletonSet!332 lt!2185163 lt!2185153 lambda!276346) lt!2185252)))

(declare-fun b_lambda!205639 () Bool)

(assert (=> (not b_lambda!205639) (not d!1718286)))

(declare-fun bs!1242210 () Bool)

(assert (= bs!1242210 d!1718286))

(assert (=> bs!1242210 m!6391692))

(declare-fun m!6392190 () Bool)

(assert (=> bs!1242210 m!6392190))

(declare-fun m!6392192 () Bool)

(assert (=> bs!1242210 m!6392192))

(assert (=> bs!1242210 m!6391694))

(assert (=> b!5363302 d!1718286))

(declare-fun bm!383750 () Bool)

(declare-fun call!383755 () Bool)

(assert (=> bm!383750 (= call!383755 (isEmpty!33368 (_2!35575 lt!2185159)))))

(declare-fun b!5363932 () Bool)

(declare-fun e!3328814 () Bool)

(assert (=> b!5363932 (= e!3328814 (nullable!5242 (regTwo!30658 r!7292)))))

(declare-fun b!5363933 () Bool)

(declare-fun e!3328813 () Bool)

(declare-fun lt!2185253 () Bool)

(assert (=> b!5363933 (= e!3328813 (not lt!2185253))))

(declare-fun b!5363934 () Bool)

(declare-fun res!2276387 () Bool)

(declare-fun e!3328812 () Bool)

(assert (=> b!5363934 (=> res!2276387 e!3328812)))

(assert (=> b!5363934 (= res!2276387 (not ((_ is ElementMatch!15073) (regTwo!30658 r!7292))))))

(assert (=> b!5363934 (= e!3328813 e!3328812)))

(declare-fun b!5363935 () Bool)

(declare-fun res!2276385 () Bool)

(declare-fun e!3328808 () Bool)

(assert (=> b!5363935 (=> res!2276385 e!3328808)))

(assert (=> b!5363935 (= res!2276385 (not (isEmpty!33368 (tail!10604 (_2!35575 lt!2185159)))))))

(declare-fun b!5363936 () Bool)

(declare-fun e!3328809 () Bool)

(assert (=> b!5363936 (= e!3328809 e!3328813)))

(declare-fun c!934213 () Bool)

(assert (=> b!5363936 (= c!934213 ((_ is EmptyLang!15073) (regTwo!30658 r!7292)))))

(declare-fun b!5363937 () Bool)

(declare-fun e!3328811 () Bool)

(assert (=> b!5363937 (= e!3328811 (= (head!11507 (_2!35575 lt!2185159)) (c!934035 (regTwo!30658 r!7292))))))

(declare-fun b!5363938 () Bool)

(declare-fun res!2276384 () Bool)

(assert (=> b!5363938 (=> res!2276384 e!3328812)))

(assert (=> b!5363938 (= res!2276384 e!3328811)))

(declare-fun res!2276386 () Bool)

(assert (=> b!5363938 (=> (not res!2276386) (not e!3328811))))

(assert (=> b!5363938 (= res!2276386 lt!2185253)))

(declare-fun d!1718288 () Bool)

(assert (=> d!1718288 e!3328809))

(declare-fun c!934214 () Bool)

(assert (=> d!1718288 (= c!934214 ((_ is EmptyExpr!15073) (regTwo!30658 r!7292)))))

(assert (=> d!1718288 (= lt!2185253 e!3328814)))

(declare-fun c!934215 () Bool)

(assert (=> d!1718288 (= c!934215 (isEmpty!33368 (_2!35575 lt!2185159)))))

(assert (=> d!1718288 (validRegex!6809 (regTwo!30658 r!7292))))

(assert (=> d!1718288 (= (matchR!7258 (regTwo!30658 r!7292) (_2!35575 lt!2185159)) lt!2185253)))

(declare-fun b!5363939 () Bool)

(assert (=> b!5363939 (= e!3328814 (matchR!7258 (derivativeStep!4215 (regTwo!30658 r!7292) (head!11507 (_2!35575 lt!2185159))) (tail!10604 (_2!35575 lt!2185159))))))

(declare-fun b!5363940 () Bool)

(declare-fun e!3328810 () Bool)

(assert (=> b!5363940 (= e!3328812 e!3328810)))

(declare-fun res!2276382 () Bool)

(assert (=> b!5363940 (=> (not res!2276382) (not e!3328810))))

(assert (=> b!5363940 (= res!2276382 (not lt!2185253))))

(declare-fun b!5363941 () Bool)

(assert (=> b!5363941 (= e!3328808 (not (= (head!11507 (_2!35575 lt!2185159)) (c!934035 (regTwo!30658 r!7292)))))))

(declare-fun b!5363942 () Bool)

(declare-fun res!2276381 () Bool)

(assert (=> b!5363942 (=> (not res!2276381) (not e!3328811))))

(assert (=> b!5363942 (= res!2276381 (isEmpty!33368 (tail!10604 (_2!35575 lt!2185159))))))

(declare-fun b!5363943 () Bool)

(assert (=> b!5363943 (= e!3328809 (= lt!2185253 call!383755))))

(declare-fun b!5363944 () Bool)

(declare-fun res!2276383 () Bool)

(assert (=> b!5363944 (=> (not res!2276383) (not e!3328811))))

(assert (=> b!5363944 (= res!2276383 (not call!383755))))

(declare-fun b!5363945 () Bool)

(assert (=> b!5363945 (= e!3328810 e!3328808)))

(declare-fun res!2276380 () Bool)

(assert (=> b!5363945 (=> res!2276380 e!3328808)))

(assert (=> b!5363945 (= res!2276380 call!383755)))

(assert (= (and d!1718288 c!934215) b!5363932))

(assert (= (and d!1718288 (not c!934215)) b!5363939))

(assert (= (and d!1718288 c!934214) b!5363943))

(assert (= (and d!1718288 (not c!934214)) b!5363936))

(assert (= (and b!5363936 c!934213) b!5363933))

(assert (= (and b!5363936 (not c!934213)) b!5363934))

(assert (= (and b!5363934 (not res!2276387)) b!5363938))

(assert (= (and b!5363938 res!2276386) b!5363944))

(assert (= (and b!5363944 res!2276383) b!5363942))

(assert (= (and b!5363942 res!2276381) b!5363937))

(assert (= (and b!5363938 (not res!2276384)) b!5363940))

(assert (= (and b!5363940 res!2276382) b!5363945))

(assert (= (and b!5363945 (not res!2276380)) b!5363935))

(assert (= (and b!5363935 (not res!2276385)) b!5363941))

(assert (= (or b!5363943 b!5363944 b!5363945) bm!383750))

(declare-fun m!6392194 () Bool)

(assert (=> d!1718288 m!6392194))

(declare-fun m!6392196 () Bool)

(assert (=> d!1718288 m!6392196))

(declare-fun m!6392198 () Bool)

(assert (=> b!5363932 m!6392198))

(assert (=> bm!383750 m!6392194))

(declare-fun m!6392200 () Bool)

(assert (=> b!5363942 m!6392200))

(assert (=> b!5363942 m!6392200))

(declare-fun m!6392202 () Bool)

(assert (=> b!5363942 m!6392202))

(declare-fun m!6392204 () Bool)

(assert (=> b!5363939 m!6392204))

(assert (=> b!5363939 m!6392204))

(declare-fun m!6392206 () Bool)

(assert (=> b!5363939 m!6392206))

(assert (=> b!5363939 m!6392200))

(assert (=> b!5363939 m!6392206))

(assert (=> b!5363939 m!6392200))

(declare-fun m!6392208 () Bool)

(assert (=> b!5363939 m!6392208))

(assert (=> b!5363941 m!6392204))

(assert (=> b!5363937 m!6392204))

(assert (=> b!5363935 m!6392200))

(assert (=> b!5363935 m!6392200))

(assert (=> b!5363935 m!6392202))

(assert (=> b!5363282 d!1718288))

(declare-fun e!3328817 () Bool)

(declare-fun d!1718290 () Bool)

(assert (=> d!1718290 (= (matchZipper!1317 ((_ map or) lt!2185168 lt!2185141) (t!374740 s!2326)) e!3328817)))

(declare-fun res!2276390 () Bool)

(assert (=> d!1718290 (=> res!2276390 e!3328817)))

(assert (=> d!1718290 (= res!2276390 (matchZipper!1317 lt!2185168 (t!374740 s!2326)))))

(declare-fun lt!2185256 () Unit!153810)

(declare-fun choose!40275 ((InoxSet Context!8914) (InoxSet Context!8914) List!61519) Unit!153810)

(assert (=> d!1718290 (= lt!2185256 (choose!40275 lt!2185168 lt!2185141 (t!374740 s!2326)))))

(assert (=> d!1718290 (= (lemmaZipperConcatMatchesSameAsBothZippers!310 lt!2185168 lt!2185141 (t!374740 s!2326)) lt!2185256)))

(declare-fun b!5363948 () Bool)

(assert (=> b!5363948 (= e!3328817 (matchZipper!1317 lt!2185141 (t!374740 s!2326)))))

(assert (= (and d!1718290 (not res!2276390)) b!5363948))

(assert (=> d!1718290 m!6391726))

(assert (=> d!1718290 m!6391724))

(declare-fun m!6392210 () Bool)

(assert (=> d!1718290 m!6392210))

(assert (=> b!5363948 m!6391638))

(assert (=> b!5363280 d!1718290))

(declare-fun d!1718292 () Bool)

(declare-fun c!934218 () Bool)

(assert (=> d!1718292 (= c!934218 (isEmpty!33368 (t!374740 s!2326)))))

(declare-fun e!3328820 () Bool)

(assert (=> d!1718292 (= (matchZipper!1317 lt!2185168 (t!374740 s!2326)) e!3328820)))

(declare-fun b!5363953 () Bool)

(declare-fun nullableZipper!1394 ((InoxSet Context!8914)) Bool)

(assert (=> b!5363953 (= e!3328820 (nullableZipper!1394 lt!2185168))))

(declare-fun b!5363954 () Bool)

(assert (=> b!5363954 (= e!3328820 (matchZipper!1317 (derivationStepZipper!1312 lt!2185168 (head!11507 (t!374740 s!2326))) (tail!10604 (t!374740 s!2326))))))

(assert (= (and d!1718292 c!934218) b!5363953))

(assert (= (and d!1718292 (not c!934218)) b!5363954))

(declare-fun m!6392212 () Bool)

(assert (=> d!1718292 m!6392212))

(declare-fun m!6392214 () Bool)

(assert (=> b!5363953 m!6392214))

(declare-fun m!6392216 () Bool)

(assert (=> b!5363954 m!6392216))

(assert (=> b!5363954 m!6392216))

(declare-fun m!6392218 () Bool)

(assert (=> b!5363954 m!6392218))

(declare-fun m!6392220 () Bool)

(assert (=> b!5363954 m!6392220))

(assert (=> b!5363954 m!6392218))

(assert (=> b!5363954 m!6392220))

(declare-fun m!6392222 () Bool)

(assert (=> b!5363954 m!6392222))

(assert (=> b!5363280 d!1718292))

(declare-fun d!1718294 () Bool)

(declare-fun c!934219 () Bool)

(assert (=> d!1718294 (= c!934219 (isEmpty!33368 (t!374740 s!2326)))))

(declare-fun e!3328821 () Bool)

(assert (=> d!1718294 (= (matchZipper!1317 ((_ map or) lt!2185168 lt!2185141) (t!374740 s!2326)) e!3328821)))

(declare-fun b!5363955 () Bool)

(assert (=> b!5363955 (= e!3328821 (nullableZipper!1394 ((_ map or) lt!2185168 lt!2185141)))))

(declare-fun b!5363956 () Bool)

(assert (=> b!5363956 (= e!3328821 (matchZipper!1317 (derivationStepZipper!1312 ((_ map or) lt!2185168 lt!2185141) (head!11507 (t!374740 s!2326))) (tail!10604 (t!374740 s!2326))))))

(assert (= (and d!1718294 c!934219) b!5363955))

(assert (= (and d!1718294 (not c!934219)) b!5363956))

(assert (=> d!1718294 m!6392212))

(declare-fun m!6392224 () Bool)

(assert (=> b!5363955 m!6392224))

(assert (=> b!5363956 m!6392216))

(assert (=> b!5363956 m!6392216))

(declare-fun m!6392226 () Bool)

(assert (=> b!5363956 m!6392226))

(assert (=> b!5363956 m!6392220))

(assert (=> b!5363956 m!6392226))

(assert (=> b!5363956 m!6392220))

(declare-fun m!6392228 () Bool)

(assert (=> b!5363956 m!6392228))

(assert (=> b!5363280 d!1718294))

(declare-fun d!1718296 () Bool)

(assert (=> d!1718296 (= (get!21118 lt!2185147) (v!51212 lt!2185147))))

(assert (=> b!5363303 d!1718296))

(declare-fun d!1718298 () Bool)

(declare-fun choose!40277 (Int) Bool)

(assert (=> d!1718298 (= (Exists!2254 lambda!276348) (choose!40277 lambda!276348))))

(declare-fun bs!1242211 () Bool)

(assert (= bs!1242211 d!1718298))

(declare-fun m!6392230 () Bool)

(assert (=> bs!1242211 m!6392230))

(assert (=> b!5363303 d!1718298))

(declare-fun b!5363975 () Bool)

(declare-fun e!3328833 () Option!15184)

(declare-fun e!3328832 () Option!15184)

(assert (=> b!5363975 (= e!3328833 e!3328832)))

(declare-fun c!934225 () Bool)

(assert (=> b!5363975 (= c!934225 ((_ is Nil!61395) s!2326))))

(declare-fun b!5363976 () Bool)

(declare-fun e!3328836 () Bool)

(declare-fun lt!2185265 () Option!15184)

(assert (=> b!5363976 (= e!3328836 (= (++!13376 (_1!35575 (get!21118 lt!2185265)) (_2!35575 (get!21118 lt!2185265))) s!2326))))

(declare-fun b!5363977 () Bool)

(declare-fun e!3328835 () Bool)

(assert (=> b!5363977 (= e!3328835 (matchR!7258 (regTwo!30658 r!7292) s!2326))))

(declare-fun b!5363978 () Bool)

(declare-fun e!3328834 () Bool)

(assert (=> b!5363978 (= e!3328834 (not (isDefined!11887 lt!2185265)))))

(declare-fun b!5363979 () Bool)

(declare-fun res!2276402 () Bool)

(assert (=> b!5363979 (=> (not res!2276402) (not e!3328836))))

(assert (=> b!5363979 (= res!2276402 (matchR!7258 lt!2185164 (_1!35575 (get!21118 lt!2185265))))))

(declare-fun b!5363980 () Bool)

(declare-fun res!2276401 () Bool)

(assert (=> b!5363980 (=> (not res!2276401) (not e!3328836))))

(assert (=> b!5363980 (= res!2276401 (matchR!7258 (regTwo!30658 r!7292) (_2!35575 (get!21118 lt!2185265))))))

(declare-fun b!5363981 () Bool)

(declare-fun lt!2185263 () Unit!153810)

(declare-fun lt!2185264 () Unit!153810)

(assert (=> b!5363981 (= lt!2185263 lt!2185264)))

(assert (=> b!5363981 (= (++!13376 (++!13376 Nil!61395 (Cons!61395 (h!67843 s!2326) Nil!61395)) (t!374740 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1789 (List!61519 C!30416 List!61519 List!61519) Unit!153810)

(assert (=> b!5363981 (= lt!2185264 (lemmaMoveElementToOtherListKeepsConcatEq!1789 Nil!61395 (h!67843 s!2326) (t!374740 s!2326) s!2326))))

(assert (=> b!5363981 (= e!3328832 (findConcatSeparation!1598 lt!2185164 (regTwo!30658 r!7292) (++!13376 Nil!61395 (Cons!61395 (h!67843 s!2326) Nil!61395)) (t!374740 s!2326) s!2326))))

(declare-fun b!5363983 () Bool)

(assert (=> b!5363983 (= e!3328833 (Some!15183 (tuple2!64545 Nil!61395 s!2326)))))

(declare-fun d!1718300 () Bool)

(assert (=> d!1718300 e!3328834))

(declare-fun res!2276404 () Bool)

(assert (=> d!1718300 (=> res!2276404 e!3328834)))

(assert (=> d!1718300 (= res!2276404 e!3328836)))

(declare-fun res!2276403 () Bool)

(assert (=> d!1718300 (=> (not res!2276403) (not e!3328836))))

(assert (=> d!1718300 (= res!2276403 (isDefined!11887 lt!2185265))))

(assert (=> d!1718300 (= lt!2185265 e!3328833)))

(declare-fun c!934224 () Bool)

(assert (=> d!1718300 (= c!934224 e!3328835)))

(declare-fun res!2276405 () Bool)

(assert (=> d!1718300 (=> (not res!2276405) (not e!3328835))))

(assert (=> d!1718300 (= res!2276405 (matchR!7258 lt!2185164 Nil!61395))))

(assert (=> d!1718300 (validRegex!6809 lt!2185164)))

(assert (=> d!1718300 (= (findConcatSeparation!1598 lt!2185164 (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326) lt!2185265)))

(declare-fun b!5363982 () Bool)

(assert (=> b!5363982 (= e!3328832 None!15183)))

(assert (= (and d!1718300 res!2276405) b!5363977))

(assert (= (and d!1718300 c!934224) b!5363983))

(assert (= (and d!1718300 (not c!934224)) b!5363975))

(assert (= (and b!5363975 c!934225) b!5363982))

(assert (= (and b!5363975 (not c!934225)) b!5363981))

(assert (= (and d!1718300 res!2276403) b!5363979))

(assert (= (and b!5363979 res!2276402) b!5363980))

(assert (= (and b!5363980 res!2276401) b!5363976))

(assert (= (and d!1718300 (not res!2276404)) b!5363978))

(declare-fun m!6392232 () Bool)

(assert (=> d!1718300 m!6392232))

(declare-fun m!6392234 () Bool)

(assert (=> d!1718300 m!6392234))

(assert (=> d!1718300 m!6392172))

(assert (=> b!5363978 m!6392232))

(declare-fun m!6392236 () Bool)

(assert (=> b!5363980 m!6392236))

(declare-fun m!6392238 () Bool)

(assert (=> b!5363980 m!6392238))

(declare-fun m!6392240 () Bool)

(assert (=> b!5363981 m!6392240))

(assert (=> b!5363981 m!6392240))

(declare-fun m!6392242 () Bool)

(assert (=> b!5363981 m!6392242))

(declare-fun m!6392244 () Bool)

(assert (=> b!5363981 m!6392244))

(assert (=> b!5363981 m!6392240))

(declare-fun m!6392246 () Bool)

(assert (=> b!5363981 m!6392246))

(assert (=> b!5363979 m!6392236))

(declare-fun m!6392248 () Bool)

(assert (=> b!5363979 m!6392248))

(declare-fun m!6392250 () Bool)

(assert (=> b!5363977 m!6392250))

(assert (=> b!5363976 m!6392236))

(declare-fun m!6392252 () Bool)

(assert (=> b!5363976 m!6392252))

(assert (=> b!5363303 d!1718300))

(declare-fun d!1718302 () Bool)

(assert (=> d!1718302 (= (Exists!2254 lambda!276347) (choose!40277 lambda!276347))))

(declare-fun bs!1242212 () Bool)

(assert (= bs!1242212 d!1718302))

(declare-fun m!6392254 () Bool)

(assert (=> bs!1242212 m!6392254))

(assert (=> b!5363303 d!1718302))

(declare-fun bs!1242213 () Bool)

(declare-fun d!1718304 () Bool)

(assert (= bs!1242213 (and d!1718304 b!5363275)))

(declare-fun lambda!276400 () Int)

(assert (=> bs!1242213 (= (= lt!2185164 (regOne!30658 r!7292)) (= lambda!276400 lambda!276344))))

(assert (=> bs!1242213 (not (= lambda!276400 lambda!276345))))

(declare-fun bs!1242214 () Bool)

(assert (= bs!1242214 (and d!1718304 b!5363303)))

(assert (=> bs!1242214 (= lambda!276400 lambda!276347)))

(assert (=> bs!1242214 (not (= lambda!276400 lambda!276348))))

(assert (=> d!1718304 true))

(assert (=> d!1718304 true))

(assert (=> d!1718304 true))

(declare-fun lambda!276401 () Int)

(assert (=> bs!1242213 (= (= lt!2185164 (regOne!30658 r!7292)) (= lambda!276401 lambda!276345))))

(assert (=> bs!1242213 (not (= lambda!276401 lambda!276344))))

(assert (=> bs!1242214 (not (= lambda!276401 lambda!276347))))

(declare-fun bs!1242215 () Bool)

(assert (= bs!1242215 d!1718304))

(assert (=> bs!1242215 (not (= lambda!276401 lambda!276400))))

(assert (=> bs!1242214 (= lambda!276401 lambda!276348)))

(assert (=> d!1718304 true))

(assert (=> d!1718304 true))

(assert (=> d!1718304 true))

(assert (=> d!1718304 (= (Exists!2254 lambda!276400) (Exists!2254 lambda!276401))))

(declare-fun lt!2185268 () Unit!153810)

(declare-fun choose!40278 (Regex!15073 Regex!15073 List!61519) Unit!153810)

(assert (=> d!1718304 (= lt!2185268 (choose!40278 lt!2185164 (regTwo!30658 r!7292) s!2326))))

(assert (=> d!1718304 (validRegex!6809 lt!2185164)))

(assert (=> d!1718304 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!908 lt!2185164 (regTwo!30658 r!7292) s!2326) lt!2185268)))

(declare-fun m!6392256 () Bool)

(assert (=> bs!1242215 m!6392256))

(declare-fun m!6392258 () Bool)

(assert (=> bs!1242215 m!6392258))

(declare-fun m!6392260 () Bool)

(assert (=> bs!1242215 m!6392260))

(assert (=> bs!1242215 m!6392172))

(assert (=> b!5363303 d!1718304))

(declare-fun bs!1242216 () Bool)

(declare-fun d!1718306 () Bool)

(assert (= bs!1242216 (and d!1718306 b!5363275)))

(declare-fun lambda!276404 () Int)

(assert (=> bs!1242216 (not (= lambda!276404 lambda!276345))))

(declare-fun bs!1242217 () Bool)

(assert (= bs!1242217 (and d!1718306 d!1718304)))

(assert (=> bs!1242217 (not (= lambda!276404 lambda!276401))))

(assert (=> bs!1242216 (= (= lt!2185164 (regOne!30658 r!7292)) (= lambda!276404 lambda!276344))))

(declare-fun bs!1242218 () Bool)

(assert (= bs!1242218 (and d!1718306 b!5363303)))

(assert (=> bs!1242218 (= lambda!276404 lambda!276347)))

(assert (=> bs!1242217 (= lambda!276404 lambda!276400)))

(assert (=> bs!1242218 (not (= lambda!276404 lambda!276348))))

(assert (=> d!1718306 true))

(assert (=> d!1718306 true))

(assert (=> d!1718306 true))

(assert (=> d!1718306 (= (isDefined!11887 (findConcatSeparation!1598 lt!2185164 (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326)) (Exists!2254 lambda!276404))))

(declare-fun lt!2185271 () Unit!153810)

(declare-fun choose!40279 (Regex!15073 Regex!15073 List!61519) Unit!153810)

(assert (=> d!1718306 (= lt!2185271 (choose!40279 lt!2185164 (regTwo!30658 r!7292) s!2326))))

(assert (=> d!1718306 (validRegex!6809 lt!2185164)))

(assert (=> d!1718306 (= (lemmaFindConcatSeparationEquivalentToExists!1362 lt!2185164 (regTwo!30658 r!7292) s!2326) lt!2185271)))

(declare-fun bs!1242219 () Bool)

(assert (= bs!1242219 d!1718306))

(assert (=> bs!1242219 m!6391704))

(declare-fun m!6392262 () Bool)

(assert (=> bs!1242219 m!6392262))

(declare-fun m!6392264 () Bool)

(assert (=> bs!1242219 m!6392264))

(assert (=> bs!1242219 m!6391704))

(assert (=> bs!1242219 m!6392172))

(declare-fun m!6392266 () Bool)

(assert (=> bs!1242219 m!6392266))

(assert (=> b!5363303 d!1718306))

(declare-fun b!5364006 () Bool)

(declare-fun res!2276423 () Bool)

(declare-fun e!3328847 () Bool)

(assert (=> b!5364006 (=> (not res!2276423) (not e!3328847))))

(declare-fun lt!2185274 () List!61519)

(declare-fun size!39785 (List!61519) Int)

(assert (=> b!5364006 (= res!2276423 (= (size!39785 lt!2185274) (+ (size!39785 (_1!35575 lt!2185159)) (size!39785 (_2!35575 lt!2185159)))))))

(declare-fun d!1718308 () Bool)

(assert (=> d!1718308 e!3328847))

(declare-fun res!2276422 () Bool)

(assert (=> d!1718308 (=> (not res!2276422) (not e!3328847))))

(declare-fun content!10963 (List!61519) (InoxSet C!30416))

(assert (=> d!1718308 (= res!2276422 (= (content!10963 lt!2185274) ((_ map or) (content!10963 (_1!35575 lt!2185159)) (content!10963 (_2!35575 lt!2185159)))))))

(declare-fun e!3328848 () List!61519)

(assert (=> d!1718308 (= lt!2185274 e!3328848)))

(declare-fun c!934228 () Bool)

(assert (=> d!1718308 (= c!934228 ((_ is Nil!61395) (_1!35575 lt!2185159)))))

(assert (=> d!1718308 (= (++!13376 (_1!35575 lt!2185159) (_2!35575 lt!2185159)) lt!2185274)))

(declare-fun b!5364005 () Bool)

(assert (=> b!5364005 (= e!3328848 (Cons!61395 (h!67843 (_1!35575 lt!2185159)) (++!13376 (t!374740 (_1!35575 lt!2185159)) (_2!35575 lt!2185159))))))

(declare-fun b!5364007 () Bool)

(assert (=> b!5364007 (= e!3328847 (or (not (= (_2!35575 lt!2185159) Nil!61395)) (= lt!2185274 (_1!35575 lt!2185159))))))

(declare-fun b!5364004 () Bool)

(assert (=> b!5364004 (= e!3328848 (_2!35575 lt!2185159))))

(assert (= (and d!1718308 c!934228) b!5364004))

(assert (= (and d!1718308 (not c!934228)) b!5364005))

(assert (= (and d!1718308 res!2276422) b!5364006))

(assert (= (and b!5364006 res!2276423) b!5364007))

(declare-fun m!6392268 () Bool)

(assert (=> b!5364006 m!6392268))

(declare-fun m!6392270 () Bool)

(assert (=> b!5364006 m!6392270))

(declare-fun m!6392272 () Bool)

(assert (=> b!5364006 m!6392272))

(declare-fun m!6392274 () Bool)

(assert (=> d!1718308 m!6392274))

(declare-fun m!6392276 () Bool)

(assert (=> d!1718308 m!6392276))

(declare-fun m!6392278 () Bool)

(assert (=> d!1718308 m!6392278))

(declare-fun m!6392280 () Bool)

(assert (=> b!5364005 m!6392280))

(assert (=> b!5363303 d!1718308))

(declare-fun d!1718310 () Bool)

(declare-fun isEmpty!33372 (Option!15184) Bool)

(assert (=> d!1718310 (= (isDefined!11887 lt!2185147) (not (isEmpty!33372 lt!2185147)))))

(declare-fun bs!1242220 () Bool)

(assert (= bs!1242220 d!1718310))

(declare-fun m!6392282 () Bool)

(assert (=> bs!1242220 m!6392282))

(assert (=> b!5363303 d!1718310))

(declare-fun d!1718312 () Bool)

(assert (=> d!1718312 (= (isEmpty!33368 (_1!35575 lt!2185159)) ((_ is Nil!61395) (_1!35575 lt!2185159)))))

(assert (=> b!5363284 d!1718312))

(declare-fun d!1718314 () Bool)

(declare-fun e!3328851 () Bool)

(assert (=> d!1718314 e!3328851))

(declare-fun res!2276426 () Bool)

(assert (=> d!1718314 (=> (not res!2276426) (not e!3328851))))

(declare-fun lt!2185277 () List!61520)

(declare-fun noDuplicate!1348 (List!61520) Bool)

(assert (=> d!1718314 (= res!2276426 (noDuplicate!1348 lt!2185277))))

(declare-fun choose!40280 ((InoxSet Context!8914)) List!61520)

(assert (=> d!1718314 (= lt!2185277 (choose!40280 z!1189))))

(assert (=> d!1718314 (= (toList!8857 z!1189) lt!2185277)))

(declare-fun b!5364010 () Bool)

(declare-fun content!10964 (List!61520) (InoxSet Context!8914))

(assert (=> b!5364010 (= e!3328851 (= (content!10964 lt!2185277) z!1189))))

(assert (= (and d!1718314 res!2276426) b!5364010))

(declare-fun m!6392284 () Bool)

(assert (=> d!1718314 m!6392284))

(declare-fun m!6392286 () Bool)

(assert (=> d!1718314 m!6392286))

(declare-fun m!6392288 () Bool)

(assert (=> b!5364010 m!6392288))

(assert (=> b!5363304 d!1718314))

(declare-fun d!1718316 () Bool)

(declare-fun c!934229 () Bool)

(assert (=> d!1718316 (= c!934229 (isEmpty!33368 s!2326))))

(declare-fun e!3328852 () Bool)

(assert (=> d!1718316 (= (matchZipper!1317 lt!2185143 s!2326) e!3328852)))

(declare-fun b!5364011 () Bool)

(assert (=> b!5364011 (= e!3328852 (nullableZipper!1394 lt!2185143))))

(declare-fun b!5364012 () Bool)

(assert (=> b!5364012 (= e!3328852 (matchZipper!1317 (derivationStepZipper!1312 lt!2185143 (head!11507 s!2326)) (tail!10604 s!2326)))))

(assert (= (and d!1718316 c!934229) b!5364011))

(assert (= (and d!1718316 (not c!934229)) b!5364012))

(declare-fun m!6392290 () Bool)

(assert (=> d!1718316 m!6392290))

(declare-fun m!6392292 () Bool)

(assert (=> b!5364011 m!6392292))

(declare-fun m!6392294 () Bool)

(assert (=> b!5364012 m!6392294))

(assert (=> b!5364012 m!6392294))

(declare-fun m!6392296 () Bool)

(assert (=> b!5364012 m!6392296))

(declare-fun m!6392298 () Bool)

(assert (=> b!5364012 m!6392298))

(assert (=> b!5364012 m!6392296))

(assert (=> b!5364012 m!6392298))

(declare-fun m!6392300 () Bool)

(assert (=> b!5364012 m!6392300))

(assert (=> b!5363285 d!1718316))

(declare-fun d!1718318 () Bool)

(declare-fun c!934230 () Bool)

(assert (=> d!1718318 (= c!934230 (isEmpty!33368 (t!374740 s!2326)))))

(declare-fun e!3328853 () Bool)

(assert (=> d!1718318 (= (matchZipper!1317 lt!2185157 (t!374740 s!2326)) e!3328853)))

(declare-fun b!5364013 () Bool)

(assert (=> b!5364013 (= e!3328853 (nullableZipper!1394 lt!2185157))))

(declare-fun b!5364014 () Bool)

(assert (=> b!5364014 (= e!3328853 (matchZipper!1317 (derivationStepZipper!1312 lt!2185157 (head!11507 (t!374740 s!2326))) (tail!10604 (t!374740 s!2326))))))

(assert (= (and d!1718318 c!934230) b!5364013))

(assert (= (and d!1718318 (not c!934230)) b!5364014))

(assert (=> d!1718318 m!6392212))

(declare-fun m!6392302 () Bool)

(assert (=> b!5364013 m!6392302))

(assert (=> b!5364014 m!6392216))

(assert (=> b!5364014 m!6392216))

(declare-fun m!6392304 () Bool)

(assert (=> b!5364014 m!6392304))

(assert (=> b!5364014 m!6392220))

(assert (=> b!5364014 m!6392304))

(assert (=> b!5364014 m!6392220))

(declare-fun m!6392306 () Bool)

(assert (=> b!5364014 m!6392306))

(assert (=> b!5363285 d!1718318))

(declare-fun d!1718320 () Bool)

(assert (=> d!1718320 (= (flatMap!800 lt!2185143 lambda!276346) (choose!40273 lt!2185143 lambda!276346))))

(declare-fun bs!1242221 () Bool)

(assert (= bs!1242221 d!1718320))

(declare-fun m!6392308 () Bool)

(assert (=> bs!1242221 m!6392308))

(assert (=> b!5363276 d!1718320))

(declare-fun d!1718322 () Bool)

(declare-fun c!934231 () Bool)

(declare-fun e!3328855 () Bool)

(assert (=> d!1718322 (= c!934231 e!3328855)))

(declare-fun res!2276427 () Bool)

(assert (=> d!1718322 (=> (not res!2276427) (not e!3328855))))

(assert (=> d!1718322 (= res!2276427 ((_ is Cons!61394) (exprs!4957 lt!2185167)))))

(declare-fun e!3328854 () (InoxSet Context!8914))

(assert (=> d!1718322 (= (derivationStepZipperUp!445 lt!2185167 (h!67843 s!2326)) e!3328854)))

(declare-fun bm!383751 () Bool)

(declare-fun call!383756 () (InoxSet Context!8914))

(assert (=> bm!383751 (= call!383756 (derivationStepZipperDown!521 (h!67842 (exprs!4957 lt!2185167)) (Context!8915 (t!374739 (exprs!4957 lt!2185167))) (h!67843 s!2326)))))

(declare-fun b!5364015 () Bool)

(declare-fun e!3328856 () (InoxSet Context!8914))

(assert (=> b!5364015 (= e!3328854 e!3328856)))

(declare-fun c!934232 () Bool)

(assert (=> b!5364015 (= c!934232 ((_ is Cons!61394) (exprs!4957 lt!2185167)))))

(declare-fun b!5364016 () Bool)

(assert (=> b!5364016 (= e!3328854 ((_ map or) call!383756 (derivationStepZipperUp!445 (Context!8915 (t!374739 (exprs!4957 lt!2185167))) (h!67843 s!2326))))))

(declare-fun b!5364017 () Bool)

(assert (=> b!5364017 (= e!3328855 (nullable!5242 (h!67842 (exprs!4957 lt!2185167))))))

(declare-fun b!5364018 () Bool)

(assert (=> b!5364018 (= e!3328856 ((as const (Array Context!8914 Bool)) false))))

(declare-fun b!5364019 () Bool)

(assert (=> b!5364019 (= e!3328856 call!383756)))

(assert (= (and d!1718322 res!2276427) b!5364017))

(assert (= (and d!1718322 c!934231) b!5364016))

(assert (= (and d!1718322 (not c!934231)) b!5364015))

(assert (= (and b!5364015 c!934232) b!5364019))

(assert (= (and b!5364015 (not c!934232)) b!5364018))

(assert (= (or b!5364016 b!5364019) bm!383751))

(declare-fun m!6392310 () Bool)

(assert (=> bm!383751 m!6392310))

(declare-fun m!6392312 () Bool)

(assert (=> b!5364016 m!6392312))

(declare-fun m!6392314 () Bool)

(assert (=> b!5364017 m!6392314))

(assert (=> b!5363276 d!1718322))

(declare-fun d!1718324 () Bool)

(assert (=> d!1718324 (= (flatMap!800 lt!2185143 lambda!276346) (dynLambda!24247 lambda!276346 lt!2185167))))

(declare-fun lt!2185278 () Unit!153810)

(assert (=> d!1718324 (= lt!2185278 (choose!40272 lt!2185143 lt!2185167 lambda!276346))))

(assert (=> d!1718324 (= lt!2185143 (store ((as const (Array Context!8914 Bool)) false) lt!2185167 true))))

(assert (=> d!1718324 (= (lemmaFlatMapOnSingletonSet!332 lt!2185143 lt!2185167 lambda!276346) lt!2185278)))

(declare-fun b_lambda!205641 () Bool)

(assert (=> (not b_lambda!205641) (not d!1718324)))

(declare-fun bs!1242222 () Bool)

(assert (= bs!1242222 d!1718324))

(assert (=> bs!1242222 m!6391662))

(declare-fun m!6392316 () Bool)

(assert (=> bs!1242222 m!6392316))

(declare-fun m!6392318 () Bool)

(assert (=> bs!1242222 m!6392318))

(assert (=> bs!1242222 m!6391660))

(assert (=> b!5363276 d!1718324))

(declare-fun bs!1242223 () Bool)

(declare-fun d!1718326 () Bool)

(assert (= bs!1242223 (and d!1718326 b!5363290)))

(declare-fun lambda!276405 () Int)

(assert (=> bs!1242223 (= lambda!276405 lambda!276346)))

(declare-fun bs!1242224 () Bool)

(assert (= bs!1242224 (and d!1718326 d!1718282)))

(assert (=> bs!1242224 (= lambda!276405 lambda!276395)))

(assert (=> d!1718326 true))

(assert (=> d!1718326 (= (derivationStepZipper!1312 lt!2185143 (h!67843 s!2326)) (flatMap!800 lt!2185143 lambda!276405))))

(declare-fun bs!1242225 () Bool)

(assert (= bs!1242225 d!1718326))

(declare-fun m!6392320 () Bool)

(assert (=> bs!1242225 m!6392320))

(assert (=> b!5363276 d!1718326))

(declare-fun b!5364020 () Bool)

(declare-fun e!3328858 () Option!15184)

(declare-fun e!3328857 () Option!15184)

(assert (=> b!5364020 (= e!3328858 e!3328857)))

(declare-fun c!934234 () Bool)

(assert (=> b!5364020 (= c!934234 ((_ is Nil!61395) s!2326))))

(declare-fun b!5364021 () Bool)

(declare-fun e!3328861 () Bool)

(declare-fun lt!2185281 () Option!15184)

(assert (=> b!5364021 (= e!3328861 (= (++!13376 (_1!35575 (get!21118 lt!2185281)) (_2!35575 (get!21118 lt!2185281))) s!2326))))

(declare-fun b!5364022 () Bool)

(declare-fun e!3328860 () Bool)

(assert (=> b!5364022 (= e!3328860 (matchR!7258 (regTwo!30658 r!7292) s!2326))))

(declare-fun b!5364023 () Bool)

(declare-fun e!3328859 () Bool)

(assert (=> b!5364023 (= e!3328859 (not (isDefined!11887 lt!2185281)))))

(declare-fun b!5364024 () Bool)

(declare-fun res!2276429 () Bool)

(assert (=> b!5364024 (=> (not res!2276429) (not e!3328861))))

(assert (=> b!5364024 (= res!2276429 (matchR!7258 (regOne!30658 r!7292) (_1!35575 (get!21118 lt!2185281))))))

(declare-fun b!5364025 () Bool)

(declare-fun res!2276428 () Bool)

(assert (=> b!5364025 (=> (not res!2276428) (not e!3328861))))

(assert (=> b!5364025 (= res!2276428 (matchR!7258 (regTwo!30658 r!7292) (_2!35575 (get!21118 lt!2185281))))))

(declare-fun b!5364026 () Bool)

(declare-fun lt!2185279 () Unit!153810)

(declare-fun lt!2185280 () Unit!153810)

(assert (=> b!5364026 (= lt!2185279 lt!2185280)))

(assert (=> b!5364026 (= (++!13376 (++!13376 Nil!61395 (Cons!61395 (h!67843 s!2326) Nil!61395)) (t!374740 s!2326)) s!2326)))

(assert (=> b!5364026 (= lt!2185280 (lemmaMoveElementToOtherListKeepsConcatEq!1789 Nil!61395 (h!67843 s!2326) (t!374740 s!2326) s!2326))))

(assert (=> b!5364026 (= e!3328857 (findConcatSeparation!1598 (regOne!30658 r!7292) (regTwo!30658 r!7292) (++!13376 Nil!61395 (Cons!61395 (h!67843 s!2326) Nil!61395)) (t!374740 s!2326) s!2326))))

(declare-fun b!5364028 () Bool)

(assert (=> b!5364028 (= e!3328858 (Some!15183 (tuple2!64545 Nil!61395 s!2326)))))

(declare-fun d!1718328 () Bool)

(assert (=> d!1718328 e!3328859))

(declare-fun res!2276431 () Bool)

(assert (=> d!1718328 (=> res!2276431 e!3328859)))

(assert (=> d!1718328 (= res!2276431 e!3328861)))

(declare-fun res!2276430 () Bool)

(assert (=> d!1718328 (=> (not res!2276430) (not e!3328861))))

(assert (=> d!1718328 (= res!2276430 (isDefined!11887 lt!2185281))))

(assert (=> d!1718328 (= lt!2185281 e!3328858)))

(declare-fun c!934233 () Bool)

(assert (=> d!1718328 (= c!934233 e!3328860)))

(declare-fun res!2276432 () Bool)

(assert (=> d!1718328 (=> (not res!2276432) (not e!3328860))))

(assert (=> d!1718328 (= res!2276432 (matchR!7258 (regOne!30658 r!7292) Nil!61395))))

(assert (=> d!1718328 (validRegex!6809 (regOne!30658 r!7292))))

(assert (=> d!1718328 (= (findConcatSeparation!1598 (regOne!30658 r!7292) (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326) lt!2185281)))

(declare-fun b!5364027 () Bool)

(assert (=> b!5364027 (= e!3328857 None!15183)))

(assert (= (and d!1718328 res!2276432) b!5364022))

(assert (= (and d!1718328 c!934233) b!5364028))

(assert (= (and d!1718328 (not c!934233)) b!5364020))

(assert (= (and b!5364020 c!934234) b!5364027))

(assert (= (and b!5364020 (not c!934234)) b!5364026))

(assert (= (and d!1718328 res!2276430) b!5364024))

(assert (= (and b!5364024 res!2276429) b!5364025))

(assert (= (and b!5364025 res!2276428) b!5364021))

(assert (= (and d!1718328 (not res!2276431)) b!5364023))

(declare-fun m!6392322 () Bool)

(assert (=> d!1718328 m!6392322))

(declare-fun m!6392324 () Bool)

(assert (=> d!1718328 m!6392324))

(declare-fun m!6392326 () Bool)

(assert (=> d!1718328 m!6392326))

(assert (=> b!5364023 m!6392322))

(declare-fun m!6392328 () Bool)

(assert (=> b!5364025 m!6392328))

(declare-fun m!6392330 () Bool)

(assert (=> b!5364025 m!6392330))

(assert (=> b!5364026 m!6392240))

(assert (=> b!5364026 m!6392240))

(assert (=> b!5364026 m!6392242))

(assert (=> b!5364026 m!6392244))

(assert (=> b!5364026 m!6392240))

(declare-fun m!6392332 () Bool)

(assert (=> b!5364026 m!6392332))

(assert (=> b!5364024 m!6392328))

(declare-fun m!6392334 () Bool)

(assert (=> b!5364024 m!6392334))

(assert (=> b!5364022 m!6392250))

(assert (=> b!5364021 m!6392328))

(declare-fun m!6392336 () Bool)

(assert (=> b!5364021 m!6392336))

(assert (=> b!5363275 d!1718328))

(declare-fun d!1718330 () Bool)

(assert (=> d!1718330 (= (Exists!2254 lambda!276345) (choose!40277 lambda!276345))))

(declare-fun bs!1242226 () Bool)

(assert (= bs!1242226 d!1718330))

(declare-fun m!6392338 () Bool)

(assert (=> bs!1242226 m!6392338))

(assert (=> b!5363275 d!1718330))

(declare-fun d!1718332 () Bool)

(assert (=> d!1718332 (= (Exists!2254 lambda!276344) (choose!40277 lambda!276344))))

(declare-fun bs!1242227 () Bool)

(assert (= bs!1242227 d!1718332))

(declare-fun m!6392340 () Bool)

(assert (=> bs!1242227 m!6392340))

(assert (=> b!5363275 d!1718332))

(declare-fun bs!1242228 () Bool)

(declare-fun d!1718334 () Bool)

(assert (= bs!1242228 (and d!1718334 b!5363275)))

(declare-fun lambda!276406 () Int)

(assert (=> bs!1242228 (not (= lambda!276406 lambda!276345))))

(declare-fun bs!1242229 () Bool)

(assert (= bs!1242229 (and d!1718334 d!1718304)))

(assert (=> bs!1242229 (not (= lambda!276406 lambda!276401))))

(declare-fun bs!1242230 () Bool)

(assert (= bs!1242230 (and d!1718334 d!1718306)))

(assert (=> bs!1242230 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276406 lambda!276404))))

(assert (=> bs!1242228 (= lambda!276406 lambda!276344)))

(declare-fun bs!1242231 () Bool)

(assert (= bs!1242231 (and d!1718334 b!5363303)))

(assert (=> bs!1242231 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276406 lambda!276347))))

(assert (=> bs!1242229 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276406 lambda!276400))))

(assert (=> bs!1242231 (not (= lambda!276406 lambda!276348))))

(assert (=> d!1718334 true))

(assert (=> d!1718334 true))

(assert (=> d!1718334 true))

(assert (=> d!1718334 (= (isDefined!11887 (findConcatSeparation!1598 (regOne!30658 r!7292) (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326)) (Exists!2254 lambda!276406))))

(declare-fun lt!2185282 () Unit!153810)

(assert (=> d!1718334 (= lt!2185282 (choose!40279 (regOne!30658 r!7292) (regTwo!30658 r!7292) s!2326))))

(assert (=> d!1718334 (validRegex!6809 (regOne!30658 r!7292))))

(assert (=> d!1718334 (= (lemmaFindConcatSeparationEquivalentToExists!1362 (regOne!30658 r!7292) (regTwo!30658 r!7292) s!2326) lt!2185282)))

(declare-fun bs!1242232 () Bool)

(assert (= bs!1242232 d!1718334))

(assert (=> bs!1242232 m!6391684))

(assert (=> bs!1242232 m!6391686))

(declare-fun m!6392342 () Bool)

(assert (=> bs!1242232 m!6392342))

(assert (=> bs!1242232 m!6391684))

(assert (=> bs!1242232 m!6392326))

(declare-fun m!6392344 () Bool)

(assert (=> bs!1242232 m!6392344))

(assert (=> b!5363275 d!1718334))

(declare-fun bs!1242233 () Bool)

(declare-fun d!1718336 () Bool)

(assert (= bs!1242233 (and d!1718336 b!5363275)))

(declare-fun lambda!276407 () Int)

(assert (=> bs!1242233 (not (= lambda!276407 lambda!276345))))

(declare-fun bs!1242234 () Bool)

(assert (= bs!1242234 (and d!1718336 d!1718304)))

(assert (=> bs!1242234 (not (= lambda!276407 lambda!276401))))

(declare-fun bs!1242235 () Bool)

(assert (= bs!1242235 (and d!1718336 d!1718306)))

(assert (=> bs!1242235 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276407 lambda!276404))))

(assert (=> bs!1242233 (= lambda!276407 lambda!276344)))

(declare-fun bs!1242236 () Bool)

(assert (= bs!1242236 (and d!1718336 d!1718334)))

(assert (=> bs!1242236 (= lambda!276407 lambda!276406)))

(declare-fun bs!1242237 () Bool)

(assert (= bs!1242237 (and d!1718336 b!5363303)))

(assert (=> bs!1242237 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276407 lambda!276347))))

(assert (=> bs!1242234 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276407 lambda!276400))))

(assert (=> bs!1242237 (not (= lambda!276407 lambda!276348))))

(assert (=> d!1718336 true))

(assert (=> d!1718336 true))

(assert (=> d!1718336 true))

(declare-fun lambda!276408 () Int)

(assert (=> bs!1242233 (= lambda!276408 lambda!276345)))

(assert (=> bs!1242234 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276408 lambda!276401))))

(assert (=> bs!1242235 (not (= lambda!276408 lambda!276404))))

(assert (=> bs!1242233 (not (= lambda!276408 lambda!276344))))

(declare-fun bs!1242238 () Bool)

(assert (= bs!1242238 d!1718336))

(assert (=> bs!1242238 (not (= lambda!276408 lambda!276407))))

(assert (=> bs!1242236 (not (= lambda!276408 lambda!276406))))

(assert (=> bs!1242237 (not (= lambda!276408 lambda!276347))))

(assert (=> bs!1242234 (not (= lambda!276408 lambda!276400))))

(assert (=> bs!1242237 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276408 lambda!276348))))

(assert (=> d!1718336 true))

(assert (=> d!1718336 true))

(assert (=> d!1718336 true))

(assert (=> d!1718336 (= (Exists!2254 lambda!276407) (Exists!2254 lambda!276408))))

(declare-fun lt!2185283 () Unit!153810)

(assert (=> d!1718336 (= lt!2185283 (choose!40278 (regOne!30658 r!7292) (regTwo!30658 r!7292) s!2326))))

(assert (=> d!1718336 (validRegex!6809 (regOne!30658 r!7292))))

(assert (=> d!1718336 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!908 (regOne!30658 r!7292) (regTwo!30658 r!7292) s!2326) lt!2185283)))

(declare-fun m!6392346 () Bool)

(assert (=> bs!1242238 m!6392346))

(declare-fun m!6392348 () Bool)

(assert (=> bs!1242238 m!6392348))

(declare-fun m!6392350 () Bool)

(assert (=> bs!1242238 m!6392350))

(assert (=> bs!1242238 m!6392326))

(assert (=> b!5363275 d!1718336))

(declare-fun d!1718338 () Bool)

(assert (=> d!1718338 (= (isDefined!11887 (findConcatSeparation!1598 (regOne!30658 r!7292) (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326)) (not (isEmpty!33372 (findConcatSeparation!1598 (regOne!30658 r!7292) (regTwo!30658 r!7292) Nil!61395 s!2326 s!2326))))))

(declare-fun bs!1242239 () Bool)

(assert (= bs!1242239 d!1718338))

(assert (=> bs!1242239 m!6391684))

(declare-fun m!6392352 () Bool)

(assert (=> bs!1242239 m!6392352))

(assert (=> b!5363275 d!1718338))

(declare-fun bs!1242240 () Bool)

(declare-fun d!1718340 () Bool)

(assert (= bs!1242240 (and d!1718340 b!5363295)))

(declare-fun lambda!276411 () Int)

(assert (=> bs!1242240 (= lambda!276411 lambda!276349)))

(declare-fun bs!1242241 () Bool)

(assert (= bs!1242241 (and d!1718340 d!1718196)))

(assert (=> bs!1242241 (= lambda!276411 lambda!276373)))

(declare-fun bs!1242242 () Bool)

(assert (= bs!1242242 (and d!1718340 d!1718198)))

(assert (=> bs!1242242 (= lambda!276411 lambda!276378)))

(declare-fun b!5364049 () Bool)

(declare-fun e!3328875 () Bool)

(declare-fun e!3328874 () Bool)

(assert (=> b!5364049 (= e!3328875 e!3328874)))

(declare-fun c!934244 () Bool)

(assert (=> b!5364049 (= c!934244 (isEmpty!33370 (unfocusZipperList!515 zl!343)))))

(declare-fun b!5364050 () Bool)

(declare-fun e!3328879 () Bool)

(assert (=> b!5364050 (= e!3328874 e!3328879)))

(declare-fun c!934243 () Bool)

(assert (=> b!5364050 (= c!934243 (isEmpty!33370 (tail!10602 (unfocusZipperList!515 zl!343))))))

(declare-fun b!5364051 () Bool)

(declare-fun lt!2185286 () Regex!15073)

(declare-fun isEmptyLang!937 (Regex!15073) Bool)

(assert (=> b!5364051 (= e!3328874 (isEmptyLang!937 lt!2185286))))

(declare-fun b!5364052 () Bool)

(declare-fun isUnion!369 (Regex!15073) Bool)

(assert (=> b!5364052 (= e!3328879 (isUnion!369 lt!2185286))))

(declare-fun b!5364053 () Bool)

(assert (=> b!5364053 (= e!3328879 (= lt!2185286 (head!11505 (unfocusZipperList!515 zl!343))))))

(declare-fun b!5364054 () Bool)

(declare-fun e!3328878 () Regex!15073)

(assert (=> b!5364054 (= e!3328878 (Union!15073 (h!67842 (unfocusZipperList!515 zl!343)) (generalisedUnion!1002 (t!374739 (unfocusZipperList!515 zl!343)))))))

(declare-fun b!5364055 () Bool)

(declare-fun e!3328876 () Regex!15073)

(assert (=> b!5364055 (= e!3328876 e!3328878)))

(declare-fun c!934246 () Bool)

(assert (=> b!5364055 (= c!934246 ((_ is Cons!61394) (unfocusZipperList!515 zl!343)))))

(declare-fun b!5364056 () Bool)

(assert (=> b!5364056 (= e!3328878 EmptyLang!15073)))

(declare-fun b!5364057 () Bool)

(declare-fun e!3328877 () Bool)

(assert (=> b!5364057 (= e!3328877 (isEmpty!33370 (t!374739 (unfocusZipperList!515 zl!343))))))

(declare-fun b!5364058 () Bool)

(assert (=> b!5364058 (= e!3328876 (h!67842 (unfocusZipperList!515 zl!343)))))

(assert (=> d!1718340 e!3328875))

(declare-fun res!2276437 () Bool)

(assert (=> d!1718340 (=> (not res!2276437) (not e!3328875))))

(assert (=> d!1718340 (= res!2276437 (validRegex!6809 lt!2185286))))

(assert (=> d!1718340 (= lt!2185286 e!3328876)))

(declare-fun c!934245 () Bool)

(assert (=> d!1718340 (= c!934245 e!3328877)))

(declare-fun res!2276438 () Bool)

(assert (=> d!1718340 (=> (not res!2276438) (not e!3328877))))

(assert (=> d!1718340 (= res!2276438 ((_ is Cons!61394) (unfocusZipperList!515 zl!343)))))

(assert (=> d!1718340 (forall!14481 (unfocusZipperList!515 zl!343) lambda!276411)))

(assert (=> d!1718340 (= (generalisedUnion!1002 (unfocusZipperList!515 zl!343)) lt!2185286)))

(assert (= (and d!1718340 res!2276438) b!5364057))

(assert (= (and d!1718340 c!934245) b!5364058))

(assert (= (and d!1718340 (not c!934245)) b!5364055))

(assert (= (and b!5364055 c!934246) b!5364054))

(assert (= (and b!5364055 (not c!934246)) b!5364056))

(assert (= (and d!1718340 res!2276437) b!5364049))

(assert (= (and b!5364049 c!934244) b!5364051))

(assert (= (and b!5364049 (not c!934244)) b!5364050))

(assert (= (and b!5364050 c!934243) b!5364053))

(assert (= (and b!5364050 (not c!934243)) b!5364052))

(declare-fun m!6392354 () Bool)

(assert (=> b!5364057 m!6392354))

(declare-fun m!6392356 () Bool)

(assert (=> b!5364052 m!6392356))

(assert (=> b!5364049 m!6391672))

(declare-fun m!6392358 () Bool)

(assert (=> b!5364049 m!6392358))

(assert (=> b!5364053 m!6391672))

(declare-fun m!6392360 () Bool)

(assert (=> b!5364053 m!6392360))

(declare-fun m!6392362 () Bool)

(assert (=> b!5364054 m!6392362))

(assert (=> b!5364050 m!6391672))

(declare-fun m!6392364 () Bool)

(assert (=> b!5364050 m!6392364))

(assert (=> b!5364050 m!6392364))

(declare-fun m!6392366 () Bool)

(assert (=> b!5364050 m!6392366))

(declare-fun m!6392368 () Bool)

(assert (=> b!5364051 m!6392368))

(declare-fun m!6392370 () Bool)

(assert (=> d!1718340 m!6392370))

(assert (=> d!1718340 m!6391672))

(declare-fun m!6392372 () Bool)

(assert (=> d!1718340 m!6392372))

(assert (=> b!5363298 d!1718340))

(declare-fun bs!1242243 () Bool)

(declare-fun d!1718342 () Bool)

(assert (= bs!1242243 (and d!1718342 b!5363295)))

(declare-fun lambda!276414 () Int)

(assert (=> bs!1242243 (= lambda!276414 lambda!276349)))

(declare-fun bs!1242244 () Bool)

(assert (= bs!1242244 (and d!1718342 d!1718196)))

(assert (=> bs!1242244 (= lambda!276414 lambda!276373)))

(declare-fun bs!1242245 () Bool)

(assert (= bs!1242245 (and d!1718342 d!1718198)))

(assert (=> bs!1242245 (= lambda!276414 lambda!276378)))

(declare-fun bs!1242246 () Bool)

(assert (= bs!1242246 (and d!1718342 d!1718340)))

(assert (=> bs!1242246 (= lambda!276414 lambda!276411)))

(declare-fun lt!2185289 () List!61518)

(assert (=> d!1718342 (forall!14481 lt!2185289 lambda!276414)))

(declare-fun e!3328882 () List!61518)

(assert (=> d!1718342 (= lt!2185289 e!3328882)))

(declare-fun c!934249 () Bool)

(assert (=> d!1718342 (= c!934249 ((_ is Cons!61396) zl!343))))

(assert (=> d!1718342 (= (unfocusZipperList!515 zl!343) lt!2185289)))

(declare-fun b!5364063 () Bool)

(assert (=> b!5364063 (= e!3328882 (Cons!61394 (generalisedConcat!742 (exprs!4957 (h!67844 zl!343))) (unfocusZipperList!515 (t!374741 zl!343))))))

(declare-fun b!5364064 () Bool)

(assert (=> b!5364064 (= e!3328882 Nil!61394)))

(assert (= (and d!1718342 c!934249) b!5364063))

(assert (= (and d!1718342 (not c!934249)) b!5364064))

(declare-fun m!6392374 () Bool)

(assert (=> d!1718342 m!6392374))

(assert (=> b!5364063 m!6391620))

(declare-fun m!6392376 () Bool)

(assert (=> b!5364063 m!6392376))

(assert (=> b!5363298 d!1718342))

(declare-fun d!1718344 () Bool)

(declare-fun c!934250 () Bool)

(assert (=> d!1718344 (= c!934250 (isEmpty!33368 (t!374740 s!2326)))))

(declare-fun e!3328883 () Bool)

(assert (=> d!1718344 (= (matchZipper!1317 lt!2185141 (t!374740 s!2326)) e!3328883)))

(declare-fun b!5364065 () Bool)

(assert (=> b!5364065 (= e!3328883 (nullableZipper!1394 lt!2185141))))

(declare-fun b!5364066 () Bool)

(assert (=> b!5364066 (= e!3328883 (matchZipper!1317 (derivationStepZipper!1312 lt!2185141 (head!11507 (t!374740 s!2326))) (tail!10604 (t!374740 s!2326))))))

(assert (= (and d!1718344 c!934250) b!5364065))

(assert (= (and d!1718344 (not c!934250)) b!5364066))

(assert (=> d!1718344 m!6392212))

(declare-fun m!6392378 () Bool)

(assert (=> b!5364065 m!6392378))

(assert (=> b!5364066 m!6392216))

(assert (=> b!5364066 m!6392216))

(declare-fun m!6392380 () Bool)

(assert (=> b!5364066 m!6392380))

(assert (=> b!5364066 m!6392220))

(assert (=> b!5364066 m!6392380))

(assert (=> b!5364066 m!6392220))

(declare-fun m!6392382 () Bool)

(assert (=> b!5364066 m!6392382))

(assert (=> b!5363279 d!1718344))

(declare-fun d!1718346 () Bool)

(declare-fun lt!2185290 () Regex!15073)

(assert (=> d!1718346 (validRegex!6809 lt!2185290)))

(assert (=> d!1718346 (= lt!2185290 (generalisedUnion!1002 (unfocusZipperList!515 (Cons!61396 lt!2185167 Nil!61396))))))

(assert (=> d!1718346 (= (unfocusZipper!815 (Cons!61396 lt!2185167 Nil!61396)) lt!2185290)))

(declare-fun bs!1242247 () Bool)

(assert (= bs!1242247 d!1718346))

(declare-fun m!6392384 () Bool)

(assert (=> bs!1242247 m!6392384))

(declare-fun m!6392386 () Bool)

(assert (=> bs!1242247 m!6392386))

(assert (=> bs!1242247 m!6392386))

(declare-fun m!6392388 () Bool)

(assert (=> bs!1242247 m!6392388))

(assert (=> b!5363299 d!1718346))

(declare-fun d!1718348 () Bool)

(declare-fun lt!2185291 () Regex!15073)

(assert (=> d!1718348 (validRegex!6809 lt!2185291)))

(assert (=> d!1718348 (= lt!2185291 (generalisedUnion!1002 (unfocusZipperList!515 (Cons!61396 lt!2185174 Nil!61396))))))

(assert (=> d!1718348 (= (unfocusZipper!815 (Cons!61396 lt!2185174 Nil!61396)) lt!2185291)))

(declare-fun bs!1242248 () Bool)

(assert (= bs!1242248 d!1718348))

(declare-fun m!6392390 () Bool)

(assert (=> bs!1242248 m!6392390))

(declare-fun m!6392392 () Bool)

(assert (=> bs!1242248 m!6392392))

(assert (=> bs!1242248 m!6392392))

(declare-fun m!6392394 () Bool)

(assert (=> bs!1242248 m!6392394))

(assert (=> b!5363301 d!1718348))

(declare-fun bs!1242249 () Bool)

(declare-fun d!1718350 () Bool)

(assert (= bs!1242249 (and d!1718350 d!1718342)))

(declare-fun lambda!276415 () Int)

(assert (=> bs!1242249 (= lambda!276415 lambda!276414)))

(declare-fun bs!1242250 () Bool)

(assert (= bs!1242250 (and d!1718350 d!1718340)))

(assert (=> bs!1242250 (= lambda!276415 lambda!276411)))

(declare-fun bs!1242251 () Bool)

(assert (= bs!1242251 (and d!1718350 d!1718198)))

(assert (=> bs!1242251 (= lambda!276415 lambda!276378)))

(declare-fun bs!1242252 () Bool)

(assert (= bs!1242252 (and d!1718350 b!5363295)))

(assert (=> bs!1242252 (= lambda!276415 lambda!276349)))

(declare-fun bs!1242253 () Bool)

(assert (= bs!1242253 (and d!1718350 d!1718196)))

(assert (=> bs!1242253 (= lambda!276415 lambda!276373)))

(assert (=> d!1718350 (= (inv!80929 (h!67844 zl!343)) (forall!14481 (exprs!4957 (h!67844 zl!343)) lambda!276415))))

(declare-fun bs!1242254 () Bool)

(assert (= bs!1242254 d!1718350))

(declare-fun m!6392396 () Bool)

(assert (=> bs!1242254 m!6392396))

(assert (=> b!5363278 d!1718350))

(declare-fun b!5364067 () Bool)

(declare-fun e!3328884 () (InoxSet Context!8914))

(declare-fun call!383759 () (InoxSet Context!8914))

(declare-fun call!383762 () (InoxSet Context!8914))

(assert (=> b!5364067 (= e!3328884 ((_ map or) call!383759 call!383762))))

(declare-fun call!383758 () (InoxSet Context!8914))

(declare-fun c!934255 () Bool)

(declare-fun c!934254 () Bool)

(declare-fun call!383761 () List!61518)

(declare-fun bm!383752 () Bool)

(declare-fun c!934252 () Bool)

(assert (=> bm!383752 (= call!383758 (derivationStepZipperDown!521 (ite c!934254 (regTwo!30659 (reg!15402 (regOne!30658 r!7292))) (ite c!934255 (regTwo!30658 (reg!15402 (regOne!30658 r!7292))) (ite c!934252 (regOne!30658 (reg!15402 (regOne!30658 r!7292))) (reg!15402 (reg!15402 (regOne!30658 r!7292)))))) (ite (or c!934254 c!934255) lt!2185174 (Context!8915 call!383761)) (h!67843 s!2326)))))

(declare-fun b!5364068 () Bool)

(declare-fun e!3328888 () (InoxSet Context!8914))

(assert (=> b!5364068 (= e!3328884 e!3328888)))

(assert (=> b!5364068 (= c!934252 ((_ is Concat!23918) (reg!15402 (regOne!30658 r!7292))))))

(declare-fun bm!383753 () Bool)

(assert (=> bm!383753 (= call!383762 call!383758)))

(declare-fun d!1718352 () Bool)

(declare-fun c!934253 () Bool)

(assert (=> d!1718352 (= c!934253 (and ((_ is ElementMatch!15073) (reg!15402 (regOne!30658 r!7292))) (= (c!934035 (reg!15402 (regOne!30658 r!7292))) (h!67843 s!2326))))))

(declare-fun e!3328887 () (InoxSet Context!8914))

(assert (=> d!1718352 (= (derivationStepZipperDown!521 (reg!15402 (regOne!30658 r!7292)) lt!2185174 (h!67843 s!2326)) e!3328887)))

(declare-fun call!383760 () List!61518)

(declare-fun bm!383754 () Bool)

(assert (=> bm!383754 (= call!383760 ($colon$colon!1444 (exprs!4957 lt!2185174) (ite (or c!934255 c!934252) (regTwo!30658 (reg!15402 (regOne!30658 r!7292))) (reg!15402 (regOne!30658 r!7292)))))))

(declare-fun b!5364069 () Bool)

(declare-fun call!383757 () (InoxSet Context!8914))

(assert (=> b!5364069 (= e!3328888 call!383757)))

(declare-fun b!5364070 () Bool)

(declare-fun e!3328886 () Bool)

(assert (=> b!5364070 (= c!934255 e!3328886)))

(declare-fun res!2276439 () Bool)

(assert (=> b!5364070 (=> (not res!2276439) (not e!3328886))))

(assert (=> b!5364070 (= res!2276439 ((_ is Concat!23918) (reg!15402 (regOne!30658 r!7292))))))

(declare-fun e!3328889 () (InoxSet Context!8914))

(assert (=> b!5364070 (= e!3328889 e!3328884)))

(declare-fun b!5364071 () Bool)

(declare-fun e!3328885 () (InoxSet Context!8914))

(assert (=> b!5364071 (= e!3328885 call!383757)))

(declare-fun b!5364072 () Bool)

(declare-fun c!934251 () Bool)

(assert (=> b!5364072 (= c!934251 ((_ is Star!15073) (reg!15402 (regOne!30658 r!7292))))))

(assert (=> b!5364072 (= e!3328888 e!3328885)))

(declare-fun b!5364073 () Bool)

(assert (=> b!5364073 (= e!3328887 e!3328889)))

(assert (=> b!5364073 (= c!934254 ((_ is Union!15073) (reg!15402 (regOne!30658 r!7292))))))

(declare-fun bm!383755 () Bool)

(assert (=> bm!383755 (= call!383757 call!383762)))

(declare-fun b!5364074 () Bool)

(assert (=> b!5364074 (= e!3328887 (store ((as const (Array Context!8914 Bool)) false) lt!2185174 true))))

(declare-fun b!5364075 () Bool)

(assert (=> b!5364075 (= e!3328889 ((_ map or) call!383759 call!383758))))

(declare-fun b!5364076 () Bool)

(assert (=> b!5364076 (= e!3328885 ((as const (Array Context!8914 Bool)) false))))

(declare-fun bm!383756 () Bool)

(assert (=> bm!383756 (= call!383759 (derivationStepZipperDown!521 (ite c!934254 (regOne!30659 (reg!15402 (regOne!30658 r!7292))) (regOne!30658 (reg!15402 (regOne!30658 r!7292)))) (ite c!934254 lt!2185174 (Context!8915 call!383760)) (h!67843 s!2326)))))

(declare-fun bm!383757 () Bool)

(assert (=> bm!383757 (= call!383761 call!383760)))

(declare-fun b!5364077 () Bool)

(assert (=> b!5364077 (= e!3328886 (nullable!5242 (regOne!30658 (reg!15402 (regOne!30658 r!7292)))))))

(assert (= (and d!1718352 c!934253) b!5364074))

(assert (= (and d!1718352 (not c!934253)) b!5364073))

(assert (= (and b!5364073 c!934254) b!5364075))

(assert (= (and b!5364073 (not c!934254)) b!5364070))

(assert (= (and b!5364070 res!2276439) b!5364077))

(assert (= (and b!5364070 c!934255) b!5364067))

(assert (= (and b!5364070 (not c!934255)) b!5364068))

(assert (= (and b!5364068 c!934252) b!5364069))

(assert (= (and b!5364068 (not c!934252)) b!5364072))

(assert (= (and b!5364072 c!934251) b!5364071))

(assert (= (and b!5364072 (not c!934251)) b!5364076))

(assert (= (or b!5364069 b!5364071) bm!383757))

(assert (= (or b!5364069 b!5364071) bm!383755))

(assert (= (or b!5364067 bm!383757) bm!383754))

(assert (= (or b!5364067 bm!383755) bm!383753))

(assert (= (or b!5364075 bm!383753) bm!383752))

(assert (= (or b!5364075 b!5364067) bm!383756))

(declare-fun m!6392398 () Bool)

(assert (=> b!5364077 m!6392398))

(assert (=> b!5364074 m!6391614))

(declare-fun m!6392400 () Bool)

(assert (=> bm!383756 m!6392400))

(declare-fun m!6392402 () Bool)

(assert (=> bm!383754 m!6392402))

(declare-fun m!6392404 () Bool)

(assert (=> bm!383752 m!6392404))

(assert (=> b!5363300 d!1718352))

(declare-fun bs!1242255 () Bool)

(declare-fun b!5364119 () Bool)

(assert (= bs!1242255 (and b!5364119 b!5363275)))

(declare-fun lambda!276420 () Int)

(assert (=> bs!1242255 (not (= lambda!276420 lambda!276345))))

(declare-fun bs!1242256 () Bool)

(assert (= bs!1242256 (and b!5364119 d!1718336)))

(assert (=> bs!1242256 (not (= lambda!276420 lambda!276408))))

(declare-fun bs!1242257 () Bool)

(assert (= bs!1242257 (and b!5364119 d!1718304)))

(assert (=> bs!1242257 (not (= lambda!276420 lambda!276401))))

(declare-fun bs!1242258 () Bool)

(assert (= bs!1242258 (and b!5364119 d!1718306)))

(assert (=> bs!1242258 (not (= lambda!276420 lambda!276404))))

(assert (=> bs!1242255 (not (= lambda!276420 lambda!276344))))

(assert (=> bs!1242256 (not (= lambda!276420 lambda!276407))))

(declare-fun bs!1242259 () Bool)

(assert (= bs!1242259 (and b!5364119 d!1718334)))

(assert (=> bs!1242259 (not (= lambda!276420 lambda!276406))))

(declare-fun bs!1242260 () Bool)

(assert (= bs!1242260 (and b!5364119 b!5363303)))

(assert (=> bs!1242260 (not (= lambda!276420 lambda!276347))))

(assert (=> bs!1242257 (not (= lambda!276420 lambda!276400))))

(assert (=> bs!1242260 (not (= lambda!276420 lambda!276348))))

(assert (=> b!5364119 true))

(assert (=> b!5364119 true))

(declare-fun bs!1242261 () Bool)

(declare-fun b!5364113 () Bool)

(assert (= bs!1242261 (and b!5364113 b!5364119)))

(declare-fun lambda!276421 () Int)

(assert (=> bs!1242261 (not (= lambda!276421 lambda!276420))))

(declare-fun bs!1242262 () Bool)

(assert (= bs!1242262 (and b!5364113 b!5363275)))

(assert (=> bs!1242262 (= lambda!276421 lambda!276345)))

(declare-fun bs!1242263 () Bool)

(assert (= bs!1242263 (and b!5364113 d!1718336)))

(assert (=> bs!1242263 (= lambda!276421 lambda!276408)))

(declare-fun bs!1242264 () Bool)

(assert (= bs!1242264 (and b!5364113 d!1718304)))

(assert (=> bs!1242264 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276421 lambda!276401))))

(declare-fun bs!1242265 () Bool)

(assert (= bs!1242265 (and b!5364113 d!1718306)))

(assert (=> bs!1242265 (not (= lambda!276421 lambda!276404))))

(assert (=> bs!1242262 (not (= lambda!276421 lambda!276344))))

(assert (=> bs!1242263 (not (= lambda!276421 lambda!276407))))

(declare-fun bs!1242266 () Bool)

(assert (= bs!1242266 (and b!5364113 d!1718334)))

(assert (=> bs!1242266 (not (= lambda!276421 lambda!276406))))

(declare-fun bs!1242267 () Bool)

(assert (= bs!1242267 (and b!5364113 b!5363303)))

(assert (=> bs!1242267 (not (= lambda!276421 lambda!276347))))

(assert (=> bs!1242264 (not (= lambda!276421 lambda!276400))))

(assert (=> bs!1242267 (= (= (regOne!30658 r!7292) lt!2185164) (= lambda!276421 lambda!276348))))

(assert (=> b!5364113 true))

(assert (=> b!5364113 true))

(declare-fun b!5364110 () Bool)

(declare-fun e!3328910 () Bool)

(declare-fun e!3328909 () Bool)

(assert (=> b!5364110 (= e!3328910 e!3328909)))

(declare-fun res!2276458 () Bool)

(assert (=> b!5364110 (= res!2276458 (not ((_ is EmptyLang!15073) r!7292)))))

(assert (=> b!5364110 (=> (not res!2276458) (not e!3328909))))

(declare-fun b!5364111 () Bool)

(declare-fun c!934267 () Bool)

(assert (=> b!5364111 (= c!934267 ((_ is ElementMatch!15073) r!7292))))

(declare-fun e!3328908 () Bool)

(assert (=> b!5364111 (= e!3328909 e!3328908)))

(declare-fun b!5364112 () Bool)

(declare-fun e!3328913 () Bool)

(assert (=> b!5364112 (= e!3328913 (matchRSpec!2176 (regTwo!30659 r!7292) s!2326))))

(declare-fun e!3328911 () Bool)

(declare-fun call!383768 () Bool)

(assert (=> b!5364113 (= e!3328911 call!383768)))

(declare-fun bm!383762 () Bool)

(declare-fun call!383767 () Bool)

(assert (=> bm!383762 (= call!383767 (isEmpty!33368 s!2326))))

(declare-fun b!5364114 () Bool)

(declare-fun e!3328912 () Bool)

(assert (=> b!5364114 (= e!3328912 e!3328911)))

(declare-fun c!934266 () Bool)

(assert (=> b!5364114 (= c!934266 ((_ is Star!15073) r!7292))))

(declare-fun b!5364115 () Bool)

(assert (=> b!5364115 (= e!3328908 (= s!2326 (Cons!61395 (c!934035 r!7292) Nil!61395)))))

(declare-fun b!5364116 () Bool)

(declare-fun c!934265 () Bool)

(assert (=> b!5364116 (= c!934265 ((_ is Union!15073) r!7292))))

(assert (=> b!5364116 (= e!3328908 e!3328912)))

(declare-fun b!5364117 () Bool)

(assert (=> b!5364117 (= e!3328910 call!383767)))

(declare-fun b!5364118 () Bool)

(assert (=> b!5364118 (= e!3328912 e!3328913)))

(declare-fun res!2276457 () Bool)

(assert (=> b!5364118 (= res!2276457 (matchRSpec!2176 (regOne!30659 r!7292) s!2326))))

(assert (=> b!5364118 (=> res!2276457 e!3328913)))

(declare-fun e!3328914 () Bool)

(assert (=> b!5364119 (= e!3328914 call!383768)))

(declare-fun b!5364120 () Bool)

(declare-fun res!2276456 () Bool)

(assert (=> b!5364120 (=> res!2276456 e!3328914)))

(assert (=> b!5364120 (= res!2276456 call!383767)))

(assert (=> b!5364120 (= e!3328911 e!3328914)))

(declare-fun bm!383763 () Bool)

(assert (=> bm!383763 (= call!383768 (Exists!2254 (ite c!934266 lambda!276420 lambda!276421)))))

(declare-fun d!1718354 () Bool)

(declare-fun c!934264 () Bool)

(assert (=> d!1718354 (= c!934264 ((_ is EmptyExpr!15073) r!7292))))

(assert (=> d!1718354 (= (matchRSpec!2176 r!7292 s!2326) e!3328910)))

(assert (= (and d!1718354 c!934264) b!5364117))

(assert (= (and d!1718354 (not c!934264)) b!5364110))

(assert (= (and b!5364110 res!2276458) b!5364111))

(assert (= (and b!5364111 c!934267) b!5364115))

(assert (= (and b!5364111 (not c!934267)) b!5364116))

(assert (= (and b!5364116 c!934265) b!5364118))

(assert (= (and b!5364116 (not c!934265)) b!5364114))

(assert (= (and b!5364118 (not res!2276457)) b!5364112))

(assert (= (and b!5364114 c!934266) b!5364120))

(assert (= (and b!5364114 (not c!934266)) b!5364113))

(assert (= (and b!5364120 (not res!2276456)) b!5364119))

(assert (= (or b!5364119 b!5364113) bm!383763))

(assert (= (or b!5364117 b!5364120) bm!383762))

(declare-fun m!6392406 () Bool)

(assert (=> b!5364112 m!6392406))

(assert (=> bm!383762 m!6392290))

(declare-fun m!6392408 () Bool)

(assert (=> b!5364118 m!6392408))

(declare-fun m!6392410 () Bool)

(assert (=> bm!383763 m!6392410))

(assert (=> b!5363292 d!1718354))

(declare-fun bm!383764 () Bool)

(declare-fun call!383769 () Bool)

(assert (=> bm!383764 (= call!383769 (isEmpty!33368 s!2326))))

(declare-fun b!5364121 () Bool)

(declare-fun e!3328921 () Bool)

(assert (=> b!5364121 (= e!3328921 (nullable!5242 r!7292))))

(declare-fun b!5364122 () Bool)

(declare-fun e!3328920 () Bool)

(declare-fun lt!2185292 () Bool)

(assert (=> b!5364122 (= e!3328920 (not lt!2185292))))

(declare-fun b!5364123 () Bool)

(declare-fun res!2276466 () Bool)

(declare-fun e!3328919 () Bool)

(assert (=> b!5364123 (=> res!2276466 e!3328919)))

(assert (=> b!5364123 (= res!2276466 (not ((_ is ElementMatch!15073) r!7292)))))

(assert (=> b!5364123 (= e!3328920 e!3328919)))

(declare-fun b!5364124 () Bool)

(declare-fun res!2276464 () Bool)

(declare-fun e!3328915 () Bool)

(assert (=> b!5364124 (=> res!2276464 e!3328915)))

(assert (=> b!5364124 (= res!2276464 (not (isEmpty!33368 (tail!10604 s!2326))))))

(declare-fun b!5364125 () Bool)

(declare-fun e!3328916 () Bool)

(assert (=> b!5364125 (= e!3328916 e!3328920)))

(declare-fun c!934268 () Bool)

(assert (=> b!5364125 (= c!934268 ((_ is EmptyLang!15073) r!7292))))

(declare-fun b!5364126 () Bool)

(declare-fun e!3328918 () Bool)

(assert (=> b!5364126 (= e!3328918 (= (head!11507 s!2326) (c!934035 r!7292)))))

(declare-fun b!5364127 () Bool)

(declare-fun res!2276463 () Bool)

(assert (=> b!5364127 (=> res!2276463 e!3328919)))

(assert (=> b!5364127 (= res!2276463 e!3328918)))

(declare-fun res!2276465 () Bool)

(assert (=> b!5364127 (=> (not res!2276465) (not e!3328918))))

(assert (=> b!5364127 (= res!2276465 lt!2185292)))

(declare-fun d!1718356 () Bool)

(assert (=> d!1718356 e!3328916))

(declare-fun c!934269 () Bool)

(assert (=> d!1718356 (= c!934269 ((_ is EmptyExpr!15073) r!7292))))

(assert (=> d!1718356 (= lt!2185292 e!3328921)))

(declare-fun c!934270 () Bool)

(assert (=> d!1718356 (= c!934270 (isEmpty!33368 s!2326))))

(assert (=> d!1718356 (validRegex!6809 r!7292)))

(assert (=> d!1718356 (= (matchR!7258 r!7292 s!2326) lt!2185292)))

(declare-fun b!5364128 () Bool)

(assert (=> b!5364128 (= e!3328921 (matchR!7258 (derivativeStep!4215 r!7292 (head!11507 s!2326)) (tail!10604 s!2326)))))

(declare-fun b!5364129 () Bool)

(declare-fun e!3328917 () Bool)

(assert (=> b!5364129 (= e!3328919 e!3328917)))

(declare-fun res!2276461 () Bool)

(assert (=> b!5364129 (=> (not res!2276461) (not e!3328917))))

(assert (=> b!5364129 (= res!2276461 (not lt!2185292))))

(declare-fun b!5364130 () Bool)

(assert (=> b!5364130 (= e!3328915 (not (= (head!11507 s!2326) (c!934035 r!7292))))))

(declare-fun b!5364131 () Bool)

(declare-fun res!2276460 () Bool)

(assert (=> b!5364131 (=> (not res!2276460) (not e!3328918))))

(assert (=> b!5364131 (= res!2276460 (isEmpty!33368 (tail!10604 s!2326)))))

(declare-fun b!5364132 () Bool)

(assert (=> b!5364132 (= e!3328916 (= lt!2185292 call!383769))))

(declare-fun b!5364133 () Bool)

(declare-fun res!2276462 () Bool)

(assert (=> b!5364133 (=> (not res!2276462) (not e!3328918))))

(assert (=> b!5364133 (= res!2276462 (not call!383769))))

(declare-fun b!5364134 () Bool)

(assert (=> b!5364134 (= e!3328917 e!3328915)))

(declare-fun res!2276459 () Bool)

(assert (=> b!5364134 (=> res!2276459 e!3328915)))

(assert (=> b!5364134 (= res!2276459 call!383769)))

(assert (= (and d!1718356 c!934270) b!5364121))

(assert (= (and d!1718356 (not c!934270)) b!5364128))

(assert (= (and d!1718356 c!934269) b!5364132))

(assert (= (and d!1718356 (not c!934269)) b!5364125))

(assert (= (and b!5364125 c!934268) b!5364122))

(assert (= (and b!5364125 (not c!934268)) b!5364123))

(assert (= (and b!5364123 (not res!2276466)) b!5364127))

(assert (= (and b!5364127 res!2276465) b!5364133))

(assert (= (and b!5364133 res!2276462) b!5364131))

(assert (= (and b!5364131 res!2276460) b!5364126))

(assert (= (and b!5364127 (not res!2276463)) b!5364129))

(assert (= (and b!5364129 res!2276461) b!5364134))

(assert (= (and b!5364134 (not res!2276459)) b!5364124))

(assert (= (and b!5364124 (not res!2276464)) b!5364130))

(assert (= (or b!5364132 b!5364133 b!5364134) bm!383764))

(assert (=> d!1718356 m!6392290))

(assert (=> d!1718356 m!6391648))

(declare-fun m!6392412 () Bool)

(assert (=> b!5364121 m!6392412))

(assert (=> bm!383764 m!6392290))

(assert (=> b!5364131 m!6392298))

(assert (=> b!5364131 m!6392298))

(declare-fun m!6392414 () Bool)

(assert (=> b!5364131 m!6392414))

(assert (=> b!5364128 m!6392294))

(assert (=> b!5364128 m!6392294))

(declare-fun m!6392416 () Bool)

(assert (=> b!5364128 m!6392416))

(assert (=> b!5364128 m!6392298))

(assert (=> b!5364128 m!6392416))

(assert (=> b!5364128 m!6392298))

(declare-fun m!6392418 () Bool)

(assert (=> b!5364128 m!6392418))

(assert (=> b!5364130 m!6392294))

(assert (=> b!5364126 m!6392294))

(assert (=> b!5364124 m!6392298))

(assert (=> b!5364124 m!6392298))

(assert (=> b!5364124 m!6392414))

(assert (=> b!5363292 d!1718356))

(declare-fun d!1718358 () Bool)

(assert (=> d!1718358 (= (matchR!7258 r!7292 s!2326) (matchRSpec!2176 r!7292 s!2326))))

(declare-fun lt!2185295 () Unit!153810)

(declare-fun choose!40281 (Regex!15073 List!61519) Unit!153810)

(assert (=> d!1718358 (= lt!2185295 (choose!40281 r!7292 s!2326))))

(assert (=> d!1718358 (validRegex!6809 r!7292)))

(assert (=> d!1718358 (= (mainMatchTheorem!2176 r!7292 s!2326) lt!2185295)))

(declare-fun bs!1242268 () Bool)

(assert (= bs!1242268 d!1718358))

(assert (=> bs!1242268 m!6391734))

(assert (=> bs!1242268 m!6391732))

(declare-fun m!6392420 () Bool)

(assert (=> bs!1242268 m!6392420))

(assert (=> bs!1242268 m!6391648))

(assert (=> b!5363292 d!1718358))

(declare-fun d!1718360 () Bool)

(assert (=> d!1718360 (= (flatMap!800 lt!2185175 lambda!276346) (choose!40273 lt!2185175 lambda!276346))))

(declare-fun bs!1242269 () Bool)

(assert (= bs!1242269 d!1718360))

(declare-fun m!6392422 () Bool)

(assert (=> bs!1242269 m!6392422))

(assert (=> b!5363271 d!1718360))

(declare-fun d!1718362 () Bool)

(assert (=> d!1718362 (= (flatMap!800 lt!2185175 lambda!276346) (dynLambda!24247 lambda!276346 lt!2185174))))

(declare-fun lt!2185296 () Unit!153810)

(assert (=> d!1718362 (= lt!2185296 (choose!40272 lt!2185175 lt!2185174 lambda!276346))))

(assert (=> d!1718362 (= lt!2185175 (store ((as const (Array Context!8914 Bool)) false) lt!2185174 true))))

(assert (=> d!1718362 (= (lemmaFlatMapOnSingletonSet!332 lt!2185175 lt!2185174 lambda!276346) lt!2185296)))

(declare-fun b_lambda!205643 () Bool)

(assert (=> (not b_lambda!205643) (not d!1718362)))

(declare-fun bs!1242270 () Bool)

(assert (= bs!1242270 d!1718362))

(assert (=> bs!1242270 m!6391608))

(declare-fun m!6392424 () Bool)

(assert (=> bs!1242270 m!6392424))

(declare-fun m!6392426 () Bool)

(assert (=> bs!1242270 m!6392426))

(assert (=> bs!1242270 m!6391614))

(assert (=> b!5363271 d!1718362))

(declare-fun d!1718364 () Bool)

(declare-fun c!934271 () Bool)

(declare-fun e!3328923 () Bool)

(assert (=> d!1718364 (= c!934271 e!3328923)))

(declare-fun res!2276467 () Bool)

(assert (=> d!1718364 (=> (not res!2276467) (not e!3328923))))

(assert (=> d!1718364 (= res!2276467 ((_ is Cons!61394) (exprs!4957 lt!2185174)))))

(declare-fun e!3328922 () (InoxSet Context!8914))

(assert (=> d!1718364 (= (derivationStepZipperUp!445 lt!2185174 (h!67843 s!2326)) e!3328922)))

(declare-fun bm!383765 () Bool)

(declare-fun call!383770 () (InoxSet Context!8914))

(assert (=> bm!383765 (= call!383770 (derivationStepZipperDown!521 (h!67842 (exprs!4957 lt!2185174)) (Context!8915 (t!374739 (exprs!4957 lt!2185174))) (h!67843 s!2326)))))

(declare-fun b!5364135 () Bool)

(declare-fun e!3328924 () (InoxSet Context!8914))

(assert (=> b!5364135 (= e!3328922 e!3328924)))

(declare-fun c!934272 () Bool)

(assert (=> b!5364135 (= c!934272 ((_ is Cons!61394) (exprs!4957 lt!2185174)))))

(declare-fun b!5364136 () Bool)

(assert (=> b!5364136 (= e!3328922 ((_ map or) call!383770 (derivationStepZipperUp!445 (Context!8915 (t!374739 (exprs!4957 lt!2185174))) (h!67843 s!2326))))))

(declare-fun b!5364137 () Bool)

(assert (=> b!5364137 (= e!3328923 (nullable!5242 (h!67842 (exprs!4957 lt!2185174))))))

(declare-fun b!5364138 () Bool)

(assert (=> b!5364138 (= e!3328924 ((as const (Array Context!8914 Bool)) false))))

(declare-fun b!5364139 () Bool)

(assert (=> b!5364139 (= e!3328924 call!383770)))

(assert (= (and d!1718364 res!2276467) b!5364137))

(assert (= (and d!1718364 c!934271) b!5364136))

(assert (= (and d!1718364 (not c!934271)) b!5364135))

(assert (= (and b!5364135 c!934272) b!5364139))

(assert (= (and b!5364135 (not c!934272)) b!5364138))

(assert (= (or b!5364136 b!5364139) bm!383765))

(declare-fun m!6392428 () Bool)

(assert (=> bm!383765 m!6392428))

(declare-fun m!6392430 () Bool)

(assert (=> b!5364136 m!6392430))

(declare-fun m!6392432 () Bool)

(assert (=> b!5364137 m!6392432))

(assert (=> b!5363271 d!1718364))

(declare-fun d!1718366 () Bool)

(assert (=> d!1718366 (= (flatMap!800 lt!2185178 lambda!276346) (choose!40273 lt!2185178 lambda!276346))))

(declare-fun bs!1242271 () Bool)

(assert (= bs!1242271 d!1718366))

(declare-fun m!6392434 () Bool)

(assert (=> bs!1242271 m!6392434))

(assert (=> b!5363271 d!1718366))

(declare-fun d!1718368 () Bool)

(declare-fun c!934273 () Bool)

(declare-fun e!3328926 () Bool)

(assert (=> d!1718368 (= c!934273 e!3328926)))

(declare-fun res!2276468 () Bool)

(assert (=> d!1718368 (=> (not res!2276468) (not e!3328926))))

(assert (=> d!1718368 (= res!2276468 ((_ is Cons!61394) (exprs!4957 lt!2185144)))))

(declare-fun e!3328925 () (InoxSet Context!8914))

(assert (=> d!1718368 (= (derivationStepZipperUp!445 lt!2185144 (h!67843 s!2326)) e!3328925)))

(declare-fun bm!383766 () Bool)

(declare-fun call!383771 () (InoxSet Context!8914))

(assert (=> bm!383766 (= call!383771 (derivationStepZipperDown!521 (h!67842 (exprs!4957 lt!2185144)) (Context!8915 (t!374739 (exprs!4957 lt!2185144))) (h!67843 s!2326)))))

(declare-fun b!5364140 () Bool)

(declare-fun e!3328927 () (InoxSet Context!8914))

(assert (=> b!5364140 (= e!3328925 e!3328927)))

(declare-fun c!934274 () Bool)

(assert (=> b!5364140 (= c!934274 ((_ is Cons!61394) (exprs!4957 lt!2185144)))))

(declare-fun b!5364141 () Bool)

(assert (=> b!5364141 (= e!3328925 ((_ map or) call!383771 (derivationStepZipperUp!445 (Context!8915 (t!374739 (exprs!4957 lt!2185144))) (h!67843 s!2326))))))

(declare-fun b!5364142 () Bool)

(assert (=> b!5364142 (= e!3328926 (nullable!5242 (h!67842 (exprs!4957 lt!2185144))))))

(declare-fun b!5364143 () Bool)

(assert (=> b!5364143 (= e!3328927 ((as const (Array Context!8914 Bool)) false))))

(declare-fun b!5364144 () Bool)

(assert (=> b!5364144 (= e!3328927 call!383771)))

(assert (= (and d!1718368 res!2276468) b!5364142))

(assert (= (and d!1718368 c!934273) b!5364141))

(assert (= (and d!1718368 (not c!934273)) b!5364140))

(assert (= (and b!5364140 c!934274) b!5364144))

(assert (= (and b!5364140 (not c!934274)) b!5364143))

(assert (= (or b!5364141 b!5364144) bm!383766))

(declare-fun m!6392436 () Bool)

(assert (=> bm!383766 m!6392436))

(declare-fun m!6392438 () Bool)

(assert (=> b!5364141 m!6392438))

(declare-fun m!6392440 () Bool)

(assert (=> b!5364142 m!6392440))

(assert (=> b!5363271 d!1718368))

(declare-fun d!1718370 () Bool)

(declare-fun lt!2185297 () Regex!15073)

(assert (=> d!1718370 (validRegex!6809 lt!2185297)))

(assert (=> d!1718370 (= lt!2185297 (generalisedUnion!1002 (unfocusZipperList!515 (Cons!61396 lt!2185144 Nil!61396))))))

(assert (=> d!1718370 (= (unfocusZipper!815 (Cons!61396 lt!2185144 Nil!61396)) lt!2185297)))

(declare-fun bs!1242272 () Bool)

(assert (= bs!1242272 d!1718370))

(declare-fun m!6392442 () Bool)

(assert (=> bs!1242272 m!6392442))

(declare-fun m!6392444 () Bool)

(assert (=> bs!1242272 m!6392444))

(assert (=> bs!1242272 m!6392444))

(declare-fun m!6392446 () Bool)

(assert (=> bs!1242272 m!6392446))

(assert (=> b!5363271 d!1718370))

(declare-fun d!1718372 () Bool)

(assert (=> d!1718372 (= (flatMap!800 lt!2185178 lambda!276346) (dynLambda!24247 lambda!276346 lt!2185144))))

(declare-fun lt!2185298 () Unit!153810)

(assert (=> d!1718372 (= lt!2185298 (choose!40272 lt!2185178 lt!2185144 lambda!276346))))

(assert (=> d!1718372 (= lt!2185178 (store ((as const (Array Context!8914 Bool)) false) lt!2185144 true))))

(assert (=> d!1718372 (= (lemmaFlatMapOnSingletonSet!332 lt!2185178 lt!2185144 lambda!276346) lt!2185298)))

(declare-fun b_lambda!205645 () Bool)

(assert (=> (not b_lambda!205645) (not d!1718372)))

(declare-fun bs!1242273 () Bool)

(assert (= bs!1242273 d!1718372))

(assert (=> bs!1242273 m!6391610))

(declare-fun m!6392448 () Bool)

(assert (=> bs!1242273 m!6392448))

(declare-fun m!6392450 () Bool)

(assert (=> bs!1242273 m!6392450))

(assert (=> bs!1242273 m!6391606))

(assert (=> b!5363271 d!1718372))

(declare-fun d!1718374 () Bool)

(assert (=> d!1718374 (= (nullable!5242 (regOne!30658 (regOne!30658 r!7292))) (nullableFct!1546 (regOne!30658 (regOne!30658 r!7292))))))

(declare-fun bs!1242274 () Bool)

(assert (= bs!1242274 d!1718374))

(declare-fun m!6392452 () Bool)

(assert (=> bs!1242274 m!6392452))

(assert (=> b!5363294 d!1718374))

(declare-fun d!1718376 () Bool)

(declare-fun res!2276473 () Bool)

(declare-fun e!3328932 () Bool)

(assert (=> d!1718376 (=> res!2276473 e!3328932)))

(assert (=> d!1718376 (= res!2276473 ((_ is Nil!61394) (exprs!4957 (h!67844 zl!343))))))

(assert (=> d!1718376 (= (forall!14481 (exprs!4957 (h!67844 zl!343)) lambda!276349) e!3328932)))

(declare-fun b!5364149 () Bool)

(declare-fun e!3328933 () Bool)

(assert (=> b!5364149 (= e!3328932 e!3328933)))

(declare-fun res!2276474 () Bool)

(assert (=> b!5364149 (=> (not res!2276474) (not e!3328933))))

(declare-fun dynLambda!24249 (Int Regex!15073) Bool)

(assert (=> b!5364149 (= res!2276474 (dynLambda!24249 lambda!276349 (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun b!5364150 () Bool)

(assert (=> b!5364150 (= e!3328933 (forall!14481 (t!374739 (exprs!4957 (h!67844 zl!343))) lambda!276349))))

(assert (= (and d!1718376 (not res!2276473)) b!5364149))

(assert (= (and b!5364149 res!2276474) b!5364150))

(declare-fun b_lambda!205647 () Bool)

(assert (=> (not b_lambda!205647) (not b!5364149)))

(declare-fun m!6392454 () Bool)

(assert (=> b!5364149 m!6392454))

(declare-fun m!6392456 () Bool)

(assert (=> b!5364150 m!6392456))

(assert (=> b!5363295 d!1718376))

(declare-fun bm!383767 () Bool)

(declare-fun call!383772 () Bool)

(assert (=> bm!383767 (= call!383772 (isEmpty!33368 s!2326))))

(declare-fun b!5364151 () Bool)

(declare-fun e!3328940 () Bool)

(assert (=> b!5364151 (= e!3328940 (nullable!5242 lt!2185170))))

(declare-fun b!5364152 () Bool)

(declare-fun e!3328939 () Bool)

(declare-fun lt!2185299 () Bool)

(assert (=> b!5364152 (= e!3328939 (not lt!2185299))))

(declare-fun b!5364153 () Bool)

(declare-fun res!2276482 () Bool)

(declare-fun e!3328938 () Bool)

(assert (=> b!5364153 (=> res!2276482 e!3328938)))

(assert (=> b!5364153 (= res!2276482 (not ((_ is ElementMatch!15073) lt!2185170)))))

(assert (=> b!5364153 (= e!3328939 e!3328938)))

(declare-fun b!5364154 () Bool)

(declare-fun res!2276480 () Bool)

(declare-fun e!3328934 () Bool)

(assert (=> b!5364154 (=> res!2276480 e!3328934)))

(assert (=> b!5364154 (= res!2276480 (not (isEmpty!33368 (tail!10604 s!2326))))))

(declare-fun b!5364155 () Bool)

(declare-fun e!3328935 () Bool)

(assert (=> b!5364155 (= e!3328935 e!3328939)))

(declare-fun c!934275 () Bool)

(assert (=> b!5364155 (= c!934275 ((_ is EmptyLang!15073) lt!2185170))))

(declare-fun b!5364156 () Bool)

(declare-fun e!3328937 () Bool)

(assert (=> b!5364156 (= e!3328937 (= (head!11507 s!2326) (c!934035 lt!2185170)))))

(declare-fun b!5364157 () Bool)

(declare-fun res!2276479 () Bool)

(assert (=> b!5364157 (=> res!2276479 e!3328938)))

(assert (=> b!5364157 (= res!2276479 e!3328937)))

(declare-fun res!2276481 () Bool)

(assert (=> b!5364157 (=> (not res!2276481) (not e!3328937))))

(assert (=> b!5364157 (= res!2276481 lt!2185299)))

(declare-fun d!1718378 () Bool)

(assert (=> d!1718378 e!3328935))

(declare-fun c!934276 () Bool)

(assert (=> d!1718378 (= c!934276 ((_ is EmptyExpr!15073) lt!2185170))))

(assert (=> d!1718378 (= lt!2185299 e!3328940)))

(declare-fun c!934277 () Bool)

(assert (=> d!1718378 (= c!934277 (isEmpty!33368 s!2326))))

(assert (=> d!1718378 (validRegex!6809 lt!2185170)))

(assert (=> d!1718378 (= (matchR!7258 lt!2185170 s!2326) lt!2185299)))

(declare-fun b!5364158 () Bool)

(assert (=> b!5364158 (= e!3328940 (matchR!7258 (derivativeStep!4215 lt!2185170 (head!11507 s!2326)) (tail!10604 s!2326)))))

(declare-fun b!5364159 () Bool)

(declare-fun e!3328936 () Bool)

(assert (=> b!5364159 (= e!3328938 e!3328936)))

(declare-fun res!2276477 () Bool)

(assert (=> b!5364159 (=> (not res!2276477) (not e!3328936))))

(assert (=> b!5364159 (= res!2276477 (not lt!2185299))))

(declare-fun b!5364160 () Bool)

(assert (=> b!5364160 (= e!3328934 (not (= (head!11507 s!2326) (c!934035 lt!2185170))))))

(declare-fun b!5364161 () Bool)

(declare-fun res!2276476 () Bool)

(assert (=> b!5364161 (=> (not res!2276476) (not e!3328937))))

(assert (=> b!5364161 (= res!2276476 (isEmpty!33368 (tail!10604 s!2326)))))

(declare-fun b!5364162 () Bool)

(assert (=> b!5364162 (= e!3328935 (= lt!2185299 call!383772))))

(declare-fun b!5364163 () Bool)

(declare-fun res!2276478 () Bool)

(assert (=> b!5364163 (=> (not res!2276478) (not e!3328937))))

(assert (=> b!5364163 (= res!2276478 (not call!383772))))

(declare-fun b!5364164 () Bool)

(assert (=> b!5364164 (= e!3328936 e!3328934)))

(declare-fun res!2276475 () Bool)

(assert (=> b!5364164 (=> res!2276475 e!3328934)))

(assert (=> b!5364164 (= res!2276475 call!383772)))

(assert (= (and d!1718378 c!934277) b!5364151))

(assert (= (and d!1718378 (not c!934277)) b!5364158))

(assert (= (and d!1718378 c!934276) b!5364162))

(assert (= (and d!1718378 (not c!934276)) b!5364155))

(assert (= (and b!5364155 c!934275) b!5364152))

(assert (= (and b!5364155 (not c!934275)) b!5364153))

(assert (= (and b!5364153 (not res!2276482)) b!5364157))

(assert (= (and b!5364157 res!2276481) b!5364163))

(assert (= (and b!5364163 res!2276478) b!5364161))

(assert (= (and b!5364161 res!2276476) b!5364156))

(assert (= (and b!5364157 (not res!2276479)) b!5364159))

(assert (= (and b!5364159 res!2276477) b!5364164))

(assert (= (and b!5364164 (not res!2276475)) b!5364154))

(assert (= (and b!5364154 (not res!2276480)) b!5364160))

(assert (= (or b!5364162 b!5364163 b!5364164) bm!383767))

(assert (=> d!1718378 m!6392290))

(declare-fun m!6392458 () Bool)

(assert (=> d!1718378 m!6392458))

(declare-fun m!6392460 () Bool)

(assert (=> b!5364151 m!6392460))

(assert (=> bm!383767 m!6392290))

(assert (=> b!5364161 m!6392298))

(assert (=> b!5364161 m!6392298))

(assert (=> b!5364161 m!6392414))

(assert (=> b!5364158 m!6392294))

(assert (=> b!5364158 m!6392294))

(declare-fun m!6392462 () Bool)

(assert (=> b!5364158 m!6392462))

(assert (=> b!5364158 m!6392298))

(assert (=> b!5364158 m!6392462))

(assert (=> b!5364158 m!6392298))

(declare-fun m!6392464 () Bool)

(assert (=> b!5364158 m!6392464))

(assert (=> b!5364160 m!6392294))

(assert (=> b!5364156 m!6392294))

(assert (=> b!5364154 m!6392298))

(assert (=> b!5364154 m!6392298))

(assert (=> b!5364154 m!6392414))

(assert (=> b!5363273 d!1718378))

(declare-fun bs!1242275 () Bool)

(declare-fun b!5364174 () Bool)

(assert (= bs!1242275 (and b!5364174 b!5364119)))

(declare-fun lambda!276422 () Int)

(assert (=> bs!1242275 (= (and (= (reg!15402 lt!2185170) (reg!15402 r!7292)) (= lt!2185170 r!7292)) (= lambda!276422 lambda!276420))))

(declare-fun bs!1242276 () Bool)

(assert (= bs!1242276 (and b!5364174 b!5363275)))

(assert (=> bs!1242276 (not (= lambda!276422 lambda!276345))))

(declare-fun bs!1242277 () Bool)

(assert (= bs!1242277 (and b!5364174 d!1718336)))

(assert (=> bs!1242277 (not (= lambda!276422 lambda!276408))))

(declare-fun bs!1242278 () Bool)

(assert (= bs!1242278 (and b!5364174 d!1718304)))

(assert (=> bs!1242278 (not (= lambda!276422 lambda!276401))))

(declare-fun bs!1242279 () Bool)

(assert (= bs!1242279 (and b!5364174 b!5364113)))

(assert (=> bs!1242279 (not (= lambda!276422 lambda!276421))))

(declare-fun bs!1242280 () Bool)

(assert (= bs!1242280 (and b!5364174 d!1718306)))

(assert (=> bs!1242280 (not (= lambda!276422 lambda!276404))))

(assert (=> bs!1242276 (not (= lambda!276422 lambda!276344))))

(assert (=> bs!1242277 (not (= lambda!276422 lambda!276407))))

(declare-fun bs!1242281 () Bool)

(assert (= bs!1242281 (and b!5364174 d!1718334)))

(assert (=> bs!1242281 (not (= lambda!276422 lambda!276406))))

(declare-fun bs!1242282 () Bool)

(assert (= bs!1242282 (and b!5364174 b!5363303)))

(assert (=> bs!1242282 (not (= lambda!276422 lambda!276347))))

(assert (=> bs!1242278 (not (= lambda!276422 lambda!276400))))

(assert (=> bs!1242282 (not (= lambda!276422 lambda!276348))))

(assert (=> b!5364174 true))

(assert (=> b!5364174 true))

(declare-fun bs!1242283 () Bool)

(declare-fun b!5364168 () Bool)

(assert (= bs!1242283 (and b!5364168 b!5364119)))

(declare-fun lambda!276423 () Int)

(assert (=> bs!1242283 (not (= lambda!276423 lambda!276420))))

(declare-fun bs!1242284 () Bool)

(assert (= bs!1242284 (and b!5364168 b!5363275)))

(assert (=> bs!1242284 (= (and (= (regOne!30658 lt!2185170) (regOne!30658 r!7292)) (= (regTwo!30658 lt!2185170) (regTwo!30658 r!7292))) (= lambda!276423 lambda!276345))))

(declare-fun bs!1242285 () Bool)

(assert (= bs!1242285 (and b!5364168 d!1718336)))

(assert (=> bs!1242285 (= (and (= (regOne!30658 lt!2185170) (regOne!30658 r!7292)) (= (regTwo!30658 lt!2185170) (regTwo!30658 r!7292))) (= lambda!276423 lambda!276408))))

(declare-fun bs!1242286 () Bool)

(assert (= bs!1242286 (and b!5364168 d!1718304)))

(assert (=> bs!1242286 (= (and (= (regOne!30658 lt!2185170) lt!2185164) (= (regTwo!30658 lt!2185170) (regTwo!30658 r!7292))) (= lambda!276423 lambda!276401))))

(declare-fun bs!1242287 () Bool)

(assert (= bs!1242287 (and b!5364168 b!5364113)))

(assert (=> bs!1242287 (= (and (= (regOne!30658 lt!2185170) (regOne!30658 r!7292)) (= (regTwo!30658 lt!2185170) (regTwo!30658 r!7292))) (= lambda!276423 lambda!276421))))

(declare-fun bs!1242288 () Bool)

(assert (= bs!1242288 (and b!5364168 d!1718306)))

(assert (=> bs!1242288 (not (= lambda!276423 lambda!276404))))

(assert (=> bs!1242284 (not (= lambda!276423 lambda!276344))))

(assert (=> bs!1242285 (not (= lambda!276423 lambda!276407))))

(declare-fun bs!1242289 () Bool)

(assert (= bs!1242289 (and b!5364168 b!5364174)))

(assert (=> bs!1242289 (not (= lambda!276423 lambda!276422))))

(declare-fun bs!1242290 () Bool)

(assert (= bs!1242290 (and b!5364168 d!1718334)))

(assert (=> bs!1242290 (not (= lambda!276423 lambda!276406))))

(declare-fun bs!1242291 () Bool)

(assert (= bs!1242291 (and b!5364168 b!5363303)))

(assert (=> bs!1242291 (not (= lambda!276423 lambda!276347))))

(assert (=> bs!1242286 (not (= lambda!276423 lambda!276400))))

(assert (=> bs!1242291 (= (and (= (regOne!30658 lt!2185170) lt!2185164) (= (regTwo!30658 lt!2185170) (regTwo!30658 r!7292))) (= lambda!276423 lambda!276348))))

(assert (=> b!5364168 true))

(assert (=> b!5364168 true))

(declare-fun b!5364165 () Bool)

(declare-fun e!3328943 () Bool)

(declare-fun e!3328942 () Bool)

(assert (=> b!5364165 (= e!3328943 e!3328942)))

(declare-fun res!2276485 () Bool)

(assert (=> b!5364165 (= res!2276485 (not ((_ is EmptyLang!15073) lt!2185170)))))

(assert (=> b!5364165 (=> (not res!2276485) (not e!3328942))))

(declare-fun b!5364166 () Bool)

(declare-fun c!934281 () Bool)

(assert (=> b!5364166 (= c!934281 ((_ is ElementMatch!15073) lt!2185170))))

(declare-fun e!3328941 () Bool)

(assert (=> b!5364166 (= e!3328942 e!3328941)))

(declare-fun b!5364167 () Bool)

(declare-fun e!3328946 () Bool)

(assert (=> b!5364167 (= e!3328946 (matchRSpec!2176 (regTwo!30659 lt!2185170) s!2326))))

(declare-fun e!3328944 () Bool)

(declare-fun call!383774 () Bool)

(assert (=> b!5364168 (= e!3328944 call!383774)))

(declare-fun bm!383768 () Bool)

(declare-fun call!383773 () Bool)

(assert (=> bm!383768 (= call!383773 (isEmpty!33368 s!2326))))

(declare-fun b!5364169 () Bool)

(declare-fun e!3328945 () Bool)

(assert (=> b!5364169 (= e!3328945 e!3328944)))

(declare-fun c!934280 () Bool)

(assert (=> b!5364169 (= c!934280 ((_ is Star!15073) lt!2185170))))

(declare-fun b!5364170 () Bool)

(assert (=> b!5364170 (= e!3328941 (= s!2326 (Cons!61395 (c!934035 lt!2185170) Nil!61395)))))

(declare-fun b!5364171 () Bool)

(declare-fun c!934279 () Bool)

(assert (=> b!5364171 (= c!934279 ((_ is Union!15073) lt!2185170))))

(assert (=> b!5364171 (= e!3328941 e!3328945)))

(declare-fun b!5364172 () Bool)

(assert (=> b!5364172 (= e!3328943 call!383773)))

(declare-fun b!5364173 () Bool)

(assert (=> b!5364173 (= e!3328945 e!3328946)))

(declare-fun res!2276484 () Bool)

(assert (=> b!5364173 (= res!2276484 (matchRSpec!2176 (regOne!30659 lt!2185170) s!2326))))

(assert (=> b!5364173 (=> res!2276484 e!3328946)))

(declare-fun e!3328947 () Bool)

(assert (=> b!5364174 (= e!3328947 call!383774)))

(declare-fun b!5364175 () Bool)

(declare-fun res!2276483 () Bool)

(assert (=> b!5364175 (=> res!2276483 e!3328947)))

(assert (=> b!5364175 (= res!2276483 call!383773)))

(assert (=> b!5364175 (= e!3328944 e!3328947)))

(declare-fun bm!383769 () Bool)

(assert (=> bm!383769 (= call!383774 (Exists!2254 (ite c!934280 lambda!276422 lambda!276423)))))

(declare-fun d!1718380 () Bool)

(declare-fun c!934278 () Bool)

(assert (=> d!1718380 (= c!934278 ((_ is EmptyExpr!15073) lt!2185170))))

(assert (=> d!1718380 (= (matchRSpec!2176 lt!2185170 s!2326) e!3328943)))

(assert (= (and d!1718380 c!934278) b!5364172))

(assert (= (and d!1718380 (not c!934278)) b!5364165))

(assert (= (and b!5364165 res!2276485) b!5364166))

(assert (= (and b!5364166 c!934281) b!5364170))

(assert (= (and b!5364166 (not c!934281)) b!5364171))

(assert (= (and b!5364171 c!934279) b!5364173))

(assert (= (and b!5364171 (not c!934279)) b!5364169))

(assert (= (and b!5364173 (not res!2276484)) b!5364167))

(assert (= (and b!5364169 c!934280) b!5364175))

(assert (= (and b!5364169 (not c!934280)) b!5364168))

(assert (= (and b!5364175 (not res!2276483)) b!5364174))

(assert (= (or b!5364174 b!5364168) bm!383769))

(assert (= (or b!5364172 b!5364175) bm!383768))

(declare-fun m!6392466 () Bool)

(assert (=> b!5364167 m!6392466))

(assert (=> bm!383768 m!6392290))

(declare-fun m!6392468 () Bool)

(assert (=> b!5364173 m!6392468))

(declare-fun m!6392470 () Bool)

(assert (=> bm!383769 m!6392470))

(assert (=> b!5363273 d!1718380))

(declare-fun d!1718382 () Bool)

(assert (=> d!1718382 (= (matchR!7258 lt!2185170 s!2326) (matchRSpec!2176 lt!2185170 s!2326))))

(declare-fun lt!2185300 () Unit!153810)

(assert (=> d!1718382 (= lt!2185300 (choose!40281 lt!2185170 s!2326))))

(assert (=> d!1718382 (validRegex!6809 lt!2185170)))

(assert (=> d!1718382 (= (mainMatchTheorem!2176 lt!2185170 s!2326) lt!2185300)))

(declare-fun bs!1242292 () Bool)

(assert (= bs!1242292 d!1718382))

(assert (=> bs!1242292 m!6391650))

(assert (=> bs!1242292 m!6391652))

(declare-fun m!6392472 () Bool)

(assert (=> bs!1242292 m!6392472))

(assert (=> bs!1242292 m!6392458))

(assert (=> b!5363273 d!1718382))

(declare-fun b!5364180 () Bool)

(declare-fun e!3328950 () Bool)

(declare-fun tp!1488938 () Bool)

(assert (=> b!5364180 (= e!3328950 (and tp_is_empty!39399 tp!1488938))))

(assert (=> b!5363297 (= tp!1488868 e!3328950)))

(assert (= (and b!5363297 ((_ is Cons!61395) (t!374740 s!2326))) b!5364180))

(declare-fun b!5364191 () Bool)

(declare-fun e!3328953 () Bool)

(assert (=> b!5364191 (= e!3328953 tp_is_empty!39399)))

(declare-fun b!5364193 () Bool)

(declare-fun tp!1488949 () Bool)

(assert (=> b!5364193 (= e!3328953 tp!1488949)))

(declare-fun b!5364192 () Bool)

(declare-fun tp!1488950 () Bool)

(declare-fun tp!1488953 () Bool)

(assert (=> b!5364192 (= e!3328953 (and tp!1488950 tp!1488953))))

(declare-fun b!5364194 () Bool)

(declare-fun tp!1488952 () Bool)

(declare-fun tp!1488951 () Bool)

(assert (=> b!5364194 (= e!3328953 (and tp!1488952 tp!1488951))))

(assert (=> b!5363277 (= tp!1488870 e!3328953)))

(assert (= (and b!5363277 ((_ is ElementMatch!15073) (reg!15402 r!7292))) b!5364191))

(assert (= (and b!5363277 ((_ is Concat!23918) (reg!15402 r!7292))) b!5364192))

(assert (= (and b!5363277 ((_ is Star!15073) (reg!15402 r!7292))) b!5364193))

(assert (= (and b!5363277 ((_ is Union!15073) (reg!15402 r!7292))) b!5364194))

(declare-fun b!5364199 () Bool)

(declare-fun e!3328956 () Bool)

(declare-fun tp!1488958 () Bool)

(declare-fun tp!1488959 () Bool)

(assert (=> b!5364199 (= e!3328956 (and tp!1488958 tp!1488959))))

(assert (=> b!5363296 (= tp!1488871 e!3328956)))

(assert (= (and b!5363296 ((_ is Cons!61394) (exprs!4957 (h!67844 zl!343)))) b!5364199))

(declare-fun b!5364200 () Bool)

(declare-fun e!3328957 () Bool)

(declare-fun tp!1488960 () Bool)

(declare-fun tp!1488961 () Bool)

(assert (=> b!5364200 (= e!3328957 (and tp!1488960 tp!1488961))))

(assert (=> b!5363270 (= tp!1488874 e!3328957)))

(assert (= (and b!5363270 ((_ is Cons!61394) (exprs!4957 setElem!34729))) b!5364200))

(declare-fun condSetEmpty!34735 () Bool)

(assert (=> setNonEmpty!34729 (= condSetEmpty!34735 (= setRest!34729 ((as const (Array Context!8914 Bool)) false)))))

(declare-fun setRes!34735 () Bool)

(assert (=> setNonEmpty!34729 (= tp!1488872 setRes!34735)))

(declare-fun setIsEmpty!34735 () Bool)

(assert (=> setIsEmpty!34735 setRes!34735))

(declare-fun e!3328960 () Bool)

(declare-fun setElem!34735 () Context!8914)

(declare-fun setNonEmpty!34735 () Bool)

(declare-fun tp!1488966 () Bool)

(assert (=> setNonEmpty!34735 (= setRes!34735 (and tp!1488966 (inv!80929 setElem!34735) e!3328960))))

(declare-fun setRest!34735 () (InoxSet Context!8914))

(assert (=> setNonEmpty!34735 (= setRest!34729 ((_ map or) (store ((as const (Array Context!8914 Bool)) false) setElem!34735 true) setRest!34735))))

(declare-fun b!5364205 () Bool)

(declare-fun tp!1488967 () Bool)

(assert (=> b!5364205 (= e!3328960 tp!1488967)))

(assert (= (and setNonEmpty!34729 condSetEmpty!34735) setIsEmpty!34735))

(assert (= (and setNonEmpty!34729 (not condSetEmpty!34735)) setNonEmpty!34735))

(assert (= setNonEmpty!34735 b!5364205))

(declare-fun m!6392474 () Bool)

(assert (=> setNonEmpty!34735 m!6392474))

(declare-fun b!5364206 () Bool)

(declare-fun e!3328961 () Bool)

(assert (=> b!5364206 (= e!3328961 tp_is_empty!39399)))

(declare-fun b!5364208 () Bool)

(declare-fun tp!1488968 () Bool)

(assert (=> b!5364208 (= e!3328961 tp!1488968)))

(declare-fun b!5364207 () Bool)

(declare-fun tp!1488969 () Bool)

(declare-fun tp!1488972 () Bool)

(assert (=> b!5364207 (= e!3328961 (and tp!1488969 tp!1488972))))

(declare-fun b!5364209 () Bool)

(declare-fun tp!1488971 () Bool)

(declare-fun tp!1488970 () Bool)

(assert (=> b!5364209 (= e!3328961 (and tp!1488971 tp!1488970))))

(assert (=> b!5363274 (= tp!1488873 e!3328961)))

(assert (= (and b!5363274 ((_ is ElementMatch!15073) (regOne!30659 r!7292))) b!5364206))

(assert (= (and b!5363274 ((_ is Concat!23918) (regOne!30659 r!7292))) b!5364207))

(assert (= (and b!5363274 ((_ is Star!15073) (regOne!30659 r!7292))) b!5364208))

(assert (= (and b!5363274 ((_ is Union!15073) (regOne!30659 r!7292))) b!5364209))

(declare-fun b!5364210 () Bool)

(declare-fun e!3328962 () Bool)

(assert (=> b!5364210 (= e!3328962 tp_is_empty!39399)))

(declare-fun b!5364212 () Bool)

(declare-fun tp!1488973 () Bool)

(assert (=> b!5364212 (= e!3328962 tp!1488973)))

(declare-fun b!5364211 () Bool)

(declare-fun tp!1488974 () Bool)

(declare-fun tp!1488977 () Bool)

(assert (=> b!5364211 (= e!3328962 (and tp!1488974 tp!1488977))))

(declare-fun b!5364213 () Bool)

(declare-fun tp!1488976 () Bool)

(declare-fun tp!1488975 () Bool)

(assert (=> b!5364213 (= e!3328962 (and tp!1488976 tp!1488975))))

(assert (=> b!5363274 (= tp!1488876 e!3328962)))

(assert (= (and b!5363274 ((_ is ElementMatch!15073) (regTwo!30659 r!7292))) b!5364210))

(assert (= (and b!5363274 ((_ is Concat!23918) (regTwo!30659 r!7292))) b!5364211))

(assert (= (and b!5363274 ((_ is Star!15073) (regTwo!30659 r!7292))) b!5364212))

(assert (= (and b!5363274 ((_ is Union!15073) (regTwo!30659 r!7292))) b!5364213))

(declare-fun b!5364221 () Bool)

(declare-fun e!3328968 () Bool)

(declare-fun tp!1488982 () Bool)

(assert (=> b!5364221 (= e!3328968 tp!1488982)))

(declare-fun e!3328967 () Bool)

(declare-fun tp!1488983 () Bool)

(declare-fun b!5364220 () Bool)

(assert (=> b!5364220 (= e!3328967 (and (inv!80929 (h!67844 (t!374741 zl!343))) e!3328968 tp!1488983))))

(assert (=> b!5363278 (= tp!1488869 e!3328967)))

(assert (= b!5364220 b!5364221))

(assert (= (and b!5363278 ((_ is Cons!61396) (t!374741 zl!343))) b!5364220))

(declare-fun m!6392476 () Bool)

(assert (=> b!5364220 m!6392476))

(declare-fun b!5364222 () Bool)

(declare-fun e!3328969 () Bool)

(assert (=> b!5364222 (= e!3328969 tp_is_empty!39399)))

(declare-fun b!5364224 () Bool)

(declare-fun tp!1488984 () Bool)

(assert (=> b!5364224 (= e!3328969 tp!1488984)))

(declare-fun b!5364223 () Bool)

(declare-fun tp!1488985 () Bool)

(declare-fun tp!1488988 () Bool)

(assert (=> b!5364223 (= e!3328969 (and tp!1488985 tp!1488988))))

(declare-fun b!5364225 () Bool)

(declare-fun tp!1488987 () Bool)

(declare-fun tp!1488986 () Bool)

(assert (=> b!5364225 (= e!3328969 (and tp!1488987 tp!1488986))))

(assert (=> b!5363289 (= tp!1488877 e!3328969)))

(assert (= (and b!5363289 ((_ is ElementMatch!15073) (regOne!30658 r!7292))) b!5364222))

(assert (= (and b!5363289 ((_ is Concat!23918) (regOne!30658 r!7292))) b!5364223))

(assert (= (and b!5363289 ((_ is Star!15073) (regOne!30658 r!7292))) b!5364224))

(assert (= (and b!5363289 ((_ is Union!15073) (regOne!30658 r!7292))) b!5364225))

(declare-fun b!5364226 () Bool)

(declare-fun e!3328970 () Bool)

(assert (=> b!5364226 (= e!3328970 tp_is_empty!39399)))

(declare-fun b!5364228 () Bool)

(declare-fun tp!1488989 () Bool)

(assert (=> b!5364228 (= e!3328970 tp!1488989)))

(declare-fun b!5364227 () Bool)

(declare-fun tp!1488990 () Bool)

(declare-fun tp!1488993 () Bool)

(assert (=> b!5364227 (= e!3328970 (and tp!1488990 tp!1488993))))

(declare-fun b!5364229 () Bool)

(declare-fun tp!1488992 () Bool)

(declare-fun tp!1488991 () Bool)

(assert (=> b!5364229 (= e!3328970 (and tp!1488992 tp!1488991))))

(assert (=> b!5363289 (= tp!1488875 e!3328970)))

(assert (= (and b!5363289 ((_ is ElementMatch!15073) (regTwo!30658 r!7292))) b!5364226))

(assert (= (and b!5363289 ((_ is Concat!23918) (regTwo!30658 r!7292))) b!5364227))

(assert (= (and b!5363289 ((_ is Star!15073) (regTwo!30658 r!7292))) b!5364228))

(assert (= (and b!5363289 ((_ is Union!15073) (regTwo!30658 r!7292))) b!5364229))

(declare-fun b_lambda!205649 () Bool)

(assert (= b_lambda!205621 (or b!5363290 b_lambda!205649)))

(declare-fun bs!1242293 () Bool)

(declare-fun d!1718384 () Bool)

(assert (= bs!1242293 (and d!1718384 b!5363290)))

(assert (=> bs!1242293 (= (dynLambda!24247 lambda!276346 (h!67844 zl!343)) (derivationStepZipperUp!445 (h!67844 zl!343) (h!67843 s!2326)))))

(assert (=> bs!1242293 m!6391630))

(assert (=> d!1718218 d!1718384))

(declare-fun b_lambda!205651 () Bool)

(assert (= b_lambda!205643 (or b!5363290 b_lambda!205651)))

(declare-fun bs!1242294 () Bool)

(declare-fun d!1718386 () Bool)

(assert (= bs!1242294 (and d!1718386 b!5363290)))

(assert (=> bs!1242294 (= (dynLambda!24247 lambda!276346 lt!2185174) (derivationStepZipperUp!445 lt!2185174 (h!67843 s!2326)))))

(assert (=> bs!1242294 m!6391612))

(assert (=> d!1718362 d!1718386))

(declare-fun b_lambda!205653 () Bool)

(assert (= b_lambda!205641 (or b!5363290 b_lambda!205653)))

(declare-fun bs!1242295 () Bool)

(declare-fun d!1718388 () Bool)

(assert (= bs!1242295 (and d!1718388 b!5363290)))

(assert (=> bs!1242295 (= (dynLambda!24247 lambda!276346 lt!2185167) (derivationStepZipperUp!445 lt!2185167 (h!67843 s!2326)))))

(assert (=> bs!1242295 m!6391664))

(assert (=> d!1718324 d!1718388))

(declare-fun b_lambda!205655 () Bool)

(assert (= b_lambda!205639 (or b!5363290 b_lambda!205655)))

(declare-fun bs!1242296 () Bool)

(declare-fun d!1718390 () Bool)

(assert (= bs!1242296 (and d!1718390 b!5363290)))

(assert (=> bs!1242296 (= (dynLambda!24247 lambda!276346 lt!2185153) (derivationStepZipperUp!445 lt!2185153 (h!67843 s!2326)))))

(assert (=> bs!1242296 m!6391626))

(assert (=> d!1718286 d!1718390))

(declare-fun b_lambda!205657 () Bool)

(assert (= b_lambda!205647 (or b!5363295 b_lambda!205657)))

(declare-fun bs!1242297 () Bool)

(declare-fun d!1718392 () Bool)

(assert (= bs!1242297 (and d!1718392 b!5363295)))

(assert (=> bs!1242297 (= (dynLambda!24249 lambda!276349 (h!67842 (exprs!4957 (h!67844 zl!343)))) (validRegex!6809 (h!67842 (exprs!4957 (h!67844 zl!343)))))))

(declare-fun m!6392478 () Bool)

(assert (=> bs!1242297 m!6392478))

(assert (=> b!5364149 d!1718392))

(declare-fun b_lambda!205659 () Bool)

(assert (= b_lambda!205645 (or b!5363290 b_lambda!205659)))

(declare-fun bs!1242298 () Bool)

(declare-fun d!1718394 () Bool)

(assert (= bs!1242298 (and d!1718394 b!5363290)))

(assert (=> bs!1242298 (= (dynLambda!24247 lambda!276346 lt!2185144) (derivationStepZipperUp!445 lt!2185144 (h!67843 s!2326)))))

(assert (=> bs!1242298 m!6391616))

(assert (=> d!1718372 d!1718394))

(check-sat (not bm!383752) (not b_lambda!205653) (not bm!383764) (not d!1718340) (not b!5364012) (not d!1718314) (not b!5363921) (not b!5364156) (not b!5364049) (not b!5363725) (not b!5363978) (not b!5363953) (not b!5363600) (not b!5363926) (not b!5364024) (not b!5363942) (not b!5364180) (not b!5364173) (not b!5363923) (not b!5363932) (not bs!1242295) (not b!5364017) (not b!5364077) (not b!5364052) (not d!1718366) (not d!1718298) (not d!1718318) (not b!5364128) (not b!5364054) (not b!5363729) (not b!5364021) (not bm!383750) (not d!1718300) (not b!5364130) (not d!1718320) (not b!5363956) (not b!5363734) (not d!1718302) (not b!5364229) (not b_lambda!205651) (not d!1718378) (not b!5364211) (not bm!383719) (not bm!383763) (not b_lambda!205657) (not bm!383754) (not d!1718346) (not bm!383756) (not bm!383768) (not b!5363981) (not b!5364154) (not b!5364224) (not b!5364124) (not b!5364150) (not b!5364209) (not d!1718370) (not b!5364158) (not bm!383762) (not b!5364121) (not d!1718326) (not b!5364200) (not b!5364192) (not b!5363925) (not bm!383769) (not b!5364023) (not d!1718348) (not bm!383749) (not d!1718382) (not d!1718184) (not b!5364014) (not bs!1242293) (not b!5363601) (not b!5364151) (not b!5364207) (not b!5363886) (not bs!1242297) (not d!1718334) (not b!5364050) (not setNonEmpty!34735) (not d!1718292) (not d!1718308) (not d!1718272) (not b!5364126) (not b!5364160) (not b!5363919) tp_is_empty!39399 (not d!1718358) (not b!5364022) (not b!5364205) (not b!5363603) (not b!5363979) (not b!5363683) (not d!1718344) (not d!1718372) (not b!5363730) (not d!1718228) (not b!5364137) (not b!5364193) (not bs!1242296) (not d!1718360) (not d!1718294) (not bm!383751) (not b!5363954) (not b!5364063) (not b!5363977) (not d!1718316) (not b!5363604) (not d!1718304) (not b!5364006) (not d!1718218) (not b!5364010) (not d!1718336) (not d!1718196) (not b!5364213) (not b!5364227) (not d!1718288) (not d!1718282) (not b!5364065) (not bm!383745) (not d!1718198) (not b!5364167) (not bm!383715) (not d!1718286) (not d!1718310) (not b!5364026) (not b!5364199) (not bm!383765) (not b!5364005) (not b!5364208) (not bm!383741) (not d!1718342) (not d!1718332) (not b!5364142) (not b!5363939) (not bm!383720) (not d!1718324) (not b!5364161) (not bs!1242294) (not b!5364053) (not b_lambda!205649) (not b!5363724) (not bm!383766) (not b!5363941) (not d!1718350) (not b!5363606) (not b!5364118) (not b_lambda!205659) (not b!5364220) (not b!5363980) (not d!1718284) (not b!5364223) (not b!5363605) (not bm!383767) (not d!1718362) (not b!5364131) (not b!5364057) (not d!1718330) (not bm!383714) (not b!5363976) (not b!5363916) (not d!1718338) (not b!5364066) (not d!1718290) (not b!5363597) (not d!1718306) (not d!1718374) (not bs!1242298) (not b!5364141) (not b!5364194) (not b_lambda!205655) (not bm!383743) (not b!5363937) (not b!5364016) (not b!5364228) (not b!5363955) (not b!5363935) (not b!5364221) (not b!5363948) (not bm!383718) (not b!5364112) (not b!5364051) (not b!5364011) (not b!5364212) (not b!5364225) (not b!5363735) (not b!5364136) (not b!5364013) (not b!5364025) (not d!1718230) (not d!1718356) (not d!1718328))
(check-sat)

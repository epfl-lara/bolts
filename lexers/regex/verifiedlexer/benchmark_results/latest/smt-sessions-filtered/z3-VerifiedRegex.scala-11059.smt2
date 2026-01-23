; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573258 () Bool)

(assert start!573258)

(declare-fun b!5480523 () Bool)

(assert (=> b!5480523 true))

(assert (=> b!5480523 true))

(declare-fun lambda!292441 () Int)

(declare-fun lambda!292440 () Int)

(assert (=> b!5480523 (not (= lambda!292441 lambda!292440))))

(assert (=> b!5480523 true))

(assert (=> b!5480523 true))

(declare-fun lambda!292442 () Int)

(assert (=> b!5480523 (not (= lambda!292442 lambda!292440))))

(assert (=> b!5480523 (not (= lambda!292442 lambda!292441))))

(assert (=> b!5480523 true))

(assert (=> b!5480523 true))

(declare-fun b!5480510 () Bool)

(assert (=> b!5480510 true))

(declare-fun b!5480517 () Bool)

(assert (=> b!5480517 true))

(declare-fun b!5480497 () Bool)

(declare-fun e!3391910 () Bool)

(declare-fun e!3391905 () Bool)

(assert (=> b!5480497 (= e!3391910 e!3391905)))

(declare-fun res!2336364 () Bool)

(assert (=> b!5480497 (=> res!2336364 e!3391905)))

(declare-fun lt!2238234 () Bool)

(assert (=> b!5480497 (= res!2336364 lt!2238234)))

(declare-datatypes ((C!31000 0))(
  ( (C!31001 (val!25202 Int)) )
))
(declare-datatypes ((Regex!15365 0))(
  ( (ElementMatch!15365 (c!957595 C!31000)) (Concat!24210 (regOne!31242 Regex!15365) (regTwo!31242 Regex!15365)) (EmptyExpr!15365) (Star!15365 (reg!15694 Regex!15365)) (EmptyLang!15365) (Union!15365 (regOne!31243 Regex!15365) (regTwo!31243 Regex!15365)) )
))
(declare-fun lt!2238233 () Regex!15365)

(declare-datatypes ((List!62394 0))(
  ( (Nil!62270) (Cons!62270 (h!68718 C!31000) (t!375625 List!62394)) )
))
(declare-fun s!2326 () List!62394)

(declare-fun matchRSpec!2468 (Regex!15365 List!62394) Bool)

(assert (=> b!5480497 (= lt!2238234 (matchRSpec!2468 lt!2238233 s!2326))))

(declare-fun matchR!7550 (Regex!15365 List!62394) Bool)

(assert (=> b!5480497 (= lt!2238234 (matchR!7550 lt!2238233 s!2326))))

(declare-datatypes ((Unit!155180 0))(
  ( (Unit!155181) )
))
(declare-fun lt!2238255 () Unit!155180)

(declare-fun mainMatchTheorem!2468 (Regex!15365 List!62394) Unit!155180)

(assert (=> b!5480497 (= lt!2238255 (mainMatchTheorem!2468 lt!2238233 s!2326))))

(declare-fun b!5480498 () Bool)

(declare-fun e!3391906 () Bool)

(declare-fun tp!1506213 () Bool)

(assert (=> b!5480498 (= e!3391906 tp!1506213)))

(declare-fun b!5480499 () Bool)

(declare-fun e!3391900 () Bool)

(declare-fun tp_is_empty!39983 () Bool)

(declare-fun tp!1506210 () Bool)

(assert (=> b!5480499 (= e!3391900 (and tp_is_empty!39983 tp!1506210))))

(declare-fun e!3391908 () Bool)

(declare-fun e!3391899 () Bool)

(declare-datatypes ((List!62395 0))(
  ( (Nil!62271) (Cons!62271 (h!68719 Regex!15365) (t!375626 List!62395)) )
))
(declare-datatypes ((Context!9498 0))(
  ( (Context!9499 (exprs!5249 List!62395)) )
))
(declare-datatypes ((List!62396 0))(
  ( (Nil!62272) (Cons!62272 (h!68720 Context!9498) (t!375627 List!62396)) )
))
(declare-fun zl!343 () List!62396)

(declare-fun tp!1506209 () Bool)

(declare-fun b!5480500 () Bool)

(declare-fun inv!81659 (Context!9498) Bool)

(assert (=> b!5480500 (= e!3391899 (and (inv!81659 (h!68720 zl!343)) e!3391908 tp!1506209))))

(declare-fun b!5480501 () Bool)

(declare-fun res!2336379 () Bool)

(declare-fun e!3391912 () Bool)

(assert (=> b!5480501 (=> (not res!2336379) (not e!3391912))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9498))

(declare-fun toList!9149 ((InoxSet Context!9498)) List!62396)

(assert (=> b!5480501 (= res!2336379 (= (toList!9149 z!1189) zl!343))))

(declare-fun b!5480502 () Bool)

(declare-fun res!2336382 () Bool)

(declare-fun e!3391903 () Bool)

(assert (=> b!5480502 (=> res!2336382 e!3391903)))

(get-info :version)

(assert (=> b!5480502 (= res!2336382 (not ((_ is Cons!62271) (exprs!5249 (h!68720 zl!343)))))))

(declare-fun b!5480503 () Bool)

(declare-fun res!2336381 () Bool)

(assert (=> b!5480503 (=> res!2336381 e!3391903)))

(declare-fun r!7292 () Regex!15365)

(assert (=> b!5480503 (= res!2336381 (or ((_ is EmptyExpr!15365) r!7292) ((_ is EmptyLang!15365) r!7292) ((_ is ElementMatch!15365) r!7292) ((_ is Union!15365) r!7292) ((_ is Concat!24210) r!7292)))))

(declare-fun b!5480504 () Bool)

(declare-fun res!2336370 () Bool)

(assert (=> b!5480504 (=> res!2336370 e!3391905)))

(declare-fun matchZipper!1583 ((InoxSet Context!9498) List!62394) Bool)

(assert (=> b!5480504 (= res!2336370 (not (matchZipper!1583 z!1189 s!2326)))))

(declare-fun b!5480505 () Bool)

(declare-fun res!2336366 () Bool)

(declare-fun e!3391911 () Bool)

(assert (=> b!5480505 (=> res!2336366 e!3391911)))

(declare-fun lt!2238235 () (InoxSet Context!9498))

(declare-fun derivationStepZipper!1560 ((InoxSet Context!9498) C!31000) (InoxSet Context!9498))

(assert (=> b!5480505 (= res!2336366 (not (= (matchZipper!1583 lt!2238235 s!2326) (matchZipper!1583 (derivationStepZipper!1560 lt!2238235 (h!68718 s!2326)) (t!375625 s!2326)))))))

(declare-fun b!5480506 () Bool)

(declare-fun e!3391898 () Bool)

(assert (=> b!5480506 (= e!3391898 e!3391910)))

(declare-fun res!2336363 () Bool)

(assert (=> b!5480506 (=> res!2336363 e!3391910)))

(declare-fun lt!2238261 () (InoxSet Context!9498))

(declare-fun lt!2238248 () (InoxSet Context!9498))

(assert (=> b!5480506 (= res!2336363 (not (= lt!2238261 (derivationStepZipper!1560 lt!2238248 (h!68718 s!2326)))))))

(declare-fun lambda!292443 () Int)

(declare-fun lt!2238253 () Context!9498)

(declare-fun flatMap!1068 ((InoxSet Context!9498) Int) (InoxSet Context!9498))

(declare-fun derivationStepZipperUp!717 (Context!9498 C!31000) (InoxSet Context!9498))

(assert (=> b!5480506 (= (flatMap!1068 lt!2238248 lambda!292443) (derivationStepZipperUp!717 lt!2238253 (h!68718 s!2326)))))

(declare-fun lt!2238241 () Unit!155180)

(declare-fun lemmaFlatMapOnSingletonSet!600 ((InoxSet Context!9498) Context!9498 Int) Unit!155180)

(assert (=> b!5480506 (= lt!2238241 (lemmaFlatMapOnSingletonSet!600 lt!2238248 lt!2238253 lambda!292443))))

(declare-fun lt!2238232 () (InoxSet Context!9498))

(declare-fun lt!2238258 () Context!9498)

(assert (=> b!5480506 (= (flatMap!1068 lt!2238232 lambda!292443) (derivationStepZipperUp!717 lt!2238258 (h!68718 s!2326)))))

(declare-fun lt!2238254 () Unit!155180)

(assert (=> b!5480506 (= lt!2238254 (lemmaFlatMapOnSingletonSet!600 lt!2238232 lt!2238258 lambda!292443))))

(declare-fun lt!2238252 () (InoxSet Context!9498))

(assert (=> b!5480506 (= lt!2238252 (derivationStepZipperUp!717 lt!2238253 (h!68718 s!2326)))))

(declare-fun lt!2238240 () (InoxSet Context!9498))

(assert (=> b!5480506 (= lt!2238240 (derivationStepZipperUp!717 lt!2238258 (h!68718 s!2326)))))

(assert (=> b!5480506 (= lt!2238248 (store ((as const (Array Context!9498 Bool)) false) lt!2238253 true))))

(assert (=> b!5480506 (= lt!2238232 (store ((as const (Array Context!9498 Bool)) false) lt!2238258 true))))

(assert (=> b!5480506 (= lt!2238258 (Context!9499 (Cons!62271 (reg!15694 r!7292) Nil!62271)))))

(declare-fun setRes!36039 () Bool)

(declare-fun setElem!36039 () Context!9498)

(declare-fun setNonEmpty!36039 () Bool)

(declare-fun tp!1506207 () Bool)

(assert (=> setNonEmpty!36039 (= setRes!36039 (and tp!1506207 (inv!81659 setElem!36039) e!3391906))))

(declare-fun setRest!36039 () (InoxSet Context!9498))

(assert (=> setNonEmpty!36039 (= z!1189 ((_ map or) (store ((as const (Array Context!9498 Bool)) false) setElem!36039 true) setRest!36039))))

(declare-fun b!5480507 () Bool)

(assert (=> b!5480507 (= e!3391911 e!3391898)))

(declare-fun res!2336362 () Bool)

(assert (=> b!5480507 (=> res!2336362 e!3391898)))

(declare-fun lt!2238236 () Context!9498)

(declare-fun unfocusZipper!1107 (List!62396) Regex!15365)

(assert (=> b!5480507 (= res!2336362 (not (= (unfocusZipper!1107 (Cons!62272 lt!2238236 Nil!62272)) lt!2238233)))))

(assert (=> b!5480507 (= lt!2238233 (Concat!24210 (reg!15694 r!7292) r!7292))))

(declare-fun b!5480508 () Bool)

(declare-fun res!2336377 () Bool)

(assert (=> b!5480508 (=> res!2336377 e!3391903)))

(declare-fun isEmpty!34222 (List!62396) Bool)

(assert (=> b!5480508 (= res!2336377 (not (isEmpty!34222 (t!375627 zl!343))))))

(declare-fun b!5480509 () Bool)

(declare-fun res!2336372 () Bool)

(assert (=> b!5480509 (=> res!2336372 e!3391911)))

(declare-fun lt!2238251 () Regex!15365)

(assert (=> b!5480509 (= res!2336372 (or (not (= lt!2238251 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun e!3391901 () Bool)

(declare-fun e!3391896 () Bool)

(assert (=> b!5480510 (= e!3391901 e!3391896)))

(declare-fun res!2336360 () Bool)

(assert (=> b!5480510 (=> res!2336360 e!3391896)))

(declare-fun lt!2238238 () (InoxSet Context!9498))

(assert (=> b!5480510 (= res!2336360 (not (= lt!2238261 lt!2238238)))))

(assert (=> b!5480510 (= (flatMap!1068 z!1189 lambda!292443) (derivationStepZipperUp!717 (h!68720 zl!343) (h!68718 s!2326)))))

(declare-fun lt!2238250 () Unit!155180)

(assert (=> b!5480510 (= lt!2238250 (lemmaFlatMapOnSingletonSet!600 z!1189 (h!68720 zl!343) lambda!292443))))

(declare-fun b!5480511 () Bool)

(declare-fun e!3391897 () Bool)

(declare-fun lt!2238256 () Bool)

(assert (=> b!5480511 (= e!3391897 lt!2238256)))

(declare-fun b!5480512 () Bool)

(declare-fun e!3391902 () Bool)

(assert (=> b!5480512 (= e!3391902 e!3391901)))

(declare-fun res!2336368 () Bool)

(assert (=> b!5480512 (=> res!2336368 e!3391901)))

(declare-fun lt!2238243 () (InoxSet Context!9498))

(assert (=> b!5480512 (= res!2336368 (not (= lt!2238243 lt!2238238)))))

(declare-fun derivationStepZipperDown!791 (Regex!15365 Context!9498 C!31000) (InoxSet Context!9498))

(assert (=> b!5480512 (= lt!2238238 (derivationStepZipperDown!791 r!7292 (Context!9499 Nil!62271) (h!68718 s!2326)))))

(assert (=> b!5480512 (= lt!2238243 (derivationStepZipperUp!717 (Context!9499 (Cons!62271 r!7292 Nil!62271)) (h!68718 s!2326)))))

(assert (=> b!5480512 (= lt!2238261 (derivationStepZipper!1560 z!1189 (h!68718 s!2326)))))

(declare-fun b!5480513 () Bool)

(declare-fun tp!1506215 () Bool)

(assert (=> b!5480513 (= e!3391908 tp!1506215)))

(declare-fun b!5480514 () Bool)

(declare-fun res!2336359 () Bool)

(assert (=> b!5480514 (=> res!2336359 e!3391903)))

(declare-fun generalisedUnion!1294 (List!62395) Regex!15365)

(declare-fun unfocusZipperList!807 (List!62396) List!62395)

(assert (=> b!5480514 (= res!2336359 (not (= r!7292 (generalisedUnion!1294 (unfocusZipperList!807 zl!343)))))))

(declare-fun b!5480515 () Bool)

(declare-fun e!3391909 () Bool)

(declare-fun tp!1506214 () Bool)

(declare-fun tp!1506211 () Bool)

(assert (=> b!5480515 (= e!3391909 (and tp!1506214 tp!1506211))))

(declare-fun b!5480516 () Bool)

(declare-fun e!3391907 () Bool)

(assert (=> b!5480516 (= e!3391907 (not e!3391903))))

(declare-fun res!2336374 () Bool)

(assert (=> b!5480516 (=> res!2336374 e!3391903)))

(assert (=> b!5480516 (= res!2336374 (not ((_ is Cons!62272) zl!343)))))

(declare-fun lt!2238257 () Bool)

(assert (=> b!5480516 (= lt!2238257 (matchRSpec!2468 r!7292 s!2326))))

(assert (=> b!5480516 (= lt!2238257 (matchR!7550 r!7292 s!2326))))

(declare-fun lt!2238237 () Unit!155180)

(assert (=> b!5480516 (= lt!2238237 (mainMatchTheorem!2468 r!7292 s!2326))))

(declare-fun e!3391904 () Bool)

(assert (=> b!5480517 (= e!3391905 e!3391904)))

(declare-fun res!2336367 () Bool)

(assert (=> b!5480517 (=> res!2336367 e!3391904)))

(declare-fun appendTo!84 ((InoxSet Context!9498) Context!9498) (InoxSet Context!9498))

(assert (=> b!5480517 (= res!2336367 (not (= (appendTo!84 lt!2238232 lt!2238253) lt!2238235)))))

(declare-fun lt!2238249 () List!62395)

(declare-fun lambda!292444 () Int)

(declare-fun map!14304 ((InoxSet Context!9498) Int) (InoxSet Context!9498))

(declare-fun ++!13705 (List!62395 List!62395) List!62395)

(assert (=> b!5480517 (= (map!14304 lt!2238232 lambda!292444) (store ((as const (Array Context!9498 Bool)) false) (Context!9499 (++!13705 (Cons!62271 (reg!15694 r!7292) Nil!62271) lt!2238249)) true))))

(declare-fun lambda!292445 () Int)

(declare-fun lt!2238245 () Unit!155180)

(declare-fun lemmaConcatPreservesForall!266 (List!62395 List!62395 Int) Unit!155180)

(assert (=> b!5480517 (= lt!2238245 (lemmaConcatPreservesForall!266 (Cons!62271 (reg!15694 r!7292) Nil!62271) lt!2238249 lambda!292445))))

(declare-fun lt!2238260 () Unit!155180)

(declare-fun lemmaMapOnSingletonSet!96 ((InoxSet Context!9498) Context!9498 Int) Unit!155180)

(assert (=> b!5480517 (= lt!2238260 (lemmaMapOnSingletonSet!96 lt!2238232 lt!2238258 lambda!292444))))

(declare-fun b!5480518 () Bool)

(declare-fun ++!13706 (List!62394 List!62394) List!62394)

(assert (=> b!5480518 (= e!3391904 (= (++!13706 Nil!62270 s!2326) s!2326))))

(declare-datatypes ((tuple2!65124 0))(
  ( (tuple2!65125 (_1!35865 List!62394) (_2!35865 List!62394)) )
))
(declare-datatypes ((Option!15474 0))(
  ( (None!15473) (Some!15473 (v!51502 tuple2!65124)) )
))
(declare-fun isDefined!12177 (Option!15474) Bool)

(declare-fun findConcatSeparationZippers!92 ((InoxSet Context!9498) (InoxSet Context!9498) List!62394 List!62394 List!62394) Option!15474)

(assert (=> b!5480518 (isDefined!12177 (findConcatSeparationZippers!92 lt!2238232 lt!2238248 Nil!62270 s!2326 s!2326))))

(declare-fun lt!2238239 () Unit!155180)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!92 ((InoxSet Context!9498) Context!9498 List!62394) Unit!155180)

(assert (=> b!5480518 (= lt!2238239 (lemmaConcatZipperMatchesStringThenFindConcatDefined!92 lt!2238232 lt!2238253 s!2326))))

(declare-fun b!5480519 () Bool)

(declare-fun res!2336375 () Bool)

(assert (=> b!5480519 (=> res!2336375 e!3391910)))

(assert (=> b!5480519 (= res!2336375 (not (= (unfocusZipper!1107 (Cons!62272 lt!2238258 Nil!62272)) (reg!15694 r!7292))))))

(declare-fun b!5480520 () Bool)

(declare-fun tp!1506206 () Bool)

(declare-fun tp!1506208 () Bool)

(assert (=> b!5480520 (= e!3391909 (and tp!1506206 tp!1506208))))

(declare-fun b!5480521 () Bool)

(declare-fun res!2336373 () Bool)

(assert (=> b!5480521 (=> res!2336373 e!3391902)))

(assert (=> b!5480521 (= res!2336373 ((_ is Nil!62270) s!2326))))

(declare-fun setIsEmpty!36039 () Bool)

(assert (=> setIsEmpty!36039 setRes!36039))

(declare-fun b!5480522 () Bool)

(assert (=> b!5480522 (= e!3391912 e!3391907)))

(declare-fun res!2336380 () Bool)

(assert (=> b!5480522 (=> (not res!2336380) (not e!3391907))))

(assert (=> b!5480522 (= res!2336380 (= r!7292 lt!2238251))))

(assert (=> b!5480522 (= lt!2238251 (unfocusZipper!1107 zl!343))))

(assert (=> b!5480523 (= e!3391903 e!3391902)))

(declare-fun res!2336369 () Bool)

(assert (=> b!5480523 (=> res!2336369 e!3391902)))

(assert (=> b!5480523 (= res!2336369 (not (= lt!2238257 e!3391897)))))

(declare-fun res!2336371 () Bool)

(assert (=> b!5480523 (=> res!2336371 e!3391897)))

(declare-fun isEmpty!34223 (List!62394) Bool)

(assert (=> b!5480523 (= res!2336371 (isEmpty!34223 s!2326))))

(declare-fun Exists!2544 (Int) Bool)

(assert (=> b!5480523 (= (Exists!2544 lambda!292440) (Exists!2544 lambda!292442))))

(declare-fun lt!2238259 () Unit!155180)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1194 (Regex!15365 Regex!15365 List!62394) Unit!155180)

(assert (=> b!5480523 (= lt!2238259 (lemmaExistCutMatchRandMatchRSpecEquivalent!1194 (reg!15694 r!7292) r!7292 s!2326))))

(assert (=> b!5480523 (= (Exists!2544 lambda!292440) (Exists!2544 lambda!292441))))

(declare-fun lt!2238242 () Unit!155180)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!518 (Regex!15365 List!62394) Unit!155180)

(assert (=> b!5480523 (= lt!2238242 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!518 (reg!15694 r!7292) s!2326))))

(assert (=> b!5480523 (= lt!2238256 (Exists!2544 lambda!292440))))

(declare-fun findConcatSeparation!1888 (Regex!15365 Regex!15365 List!62394 List!62394 List!62394) Option!15474)

(assert (=> b!5480523 (= lt!2238256 (isDefined!12177 (findConcatSeparation!1888 (reg!15694 r!7292) r!7292 Nil!62270 s!2326 s!2326)))))

(declare-fun lt!2238247 () Unit!155180)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1652 (Regex!15365 Regex!15365 List!62394) Unit!155180)

(assert (=> b!5480523 (= lt!2238247 (lemmaFindConcatSeparationEquivalentToExists!1652 (reg!15694 r!7292) r!7292 s!2326))))

(declare-fun b!5480524 () Bool)

(declare-fun tp!1506212 () Bool)

(assert (=> b!5480524 (= e!3391909 tp!1506212)))

(declare-fun b!5480525 () Bool)

(assert (=> b!5480525 (= e!3391896 e!3391911)))

(declare-fun res!2336361 () Bool)

(assert (=> b!5480525 (=> res!2336361 e!3391911)))

(assert (=> b!5480525 (= res!2336361 (not (= lt!2238261 (derivationStepZipperDown!791 (reg!15694 r!7292) lt!2238253 (h!68718 s!2326)))))))

(assert (=> b!5480525 (= lt!2238253 (Context!9499 lt!2238249))))

(assert (=> b!5480525 (= (flatMap!1068 lt!2238235 lambda!292443) (derivationStepZipperUp!717 lt!2238236 (h!68718 s!2326)))))

(declare-fun lt!2238244 () Unit!155180)

(assert (=> b!5480525 (= lt!2238244 (lemmaFlatMapOnSingletonSet!600 lt!2238235 lt!2238236 lambda!292443))))

(declare-fun lt!2238246 () (InoxSet Context!9498))

(assert (=> b!5480525 (= lt!2238246 (derivationStepZipperUp!717 lt!2238236 (h!68718 s!2326)))))

(assert (=> b!5480525 (= lt!2238235 (store ((as const (Array Context!9498 Bool)) false) lt!2238236 true))))

(assert (=> b!5480525 (= lt!2238236 (Context!9499 (Cons!62271 (reg!15694 r!7292) lt!2238249)))))

(assert (=> b!5480525 (= lt!2238249 (Cons!62271 r!7292 Nil!62271))))

(declare-fun b!5480526 () Bool)

(declare-fun res!2336365 () Bool)

(assert (=> b!5480526 (=> res!2336365 e!3391903)))

(declare-fun generalisedConcat!1034 (List!62395) Regex!15365)

(assert (=> b!5480526 (= res!2336365 (not (= r!7292 (generalisedConcat!1034 (exprs!5249 (h!68720 zl!343))))))))

(declare-fun b!5480527 () Bool)

(assert (=> b!5480527 (= e!3391909 tp_is_empty!39983)))

(declare-fun res!2336376 () Bool)

(assert (=> start!573258 (=> (not res!2336376) (not e!3391912))))

(declare-fun validRegex!7101 (Regex!15365) Bool)

(assert (=> start!573258 (= res!2336376 (validRegex!7101 r!7292))))

(assert (=> start!573258 e!3391912))

(assert (=> start!573258 e!3391909))

(declare-fun condSetEmpty!36039 () Bool)

(assert (=> start!573258 (= condSetEmpty!36039 (= z!1189 ((as const (Array Context!9498 Bool)) false)))))

(assert (=> start!573258 setRes!36039))

(assert (=> start!573258 e!3391899))

(assert (=> start!573258 e!3391900))

(declare-fun b!5480528 () Bool)

(declare-fun res!2336378 () Bool)

(assert (=> b!5480528 (=> res!2336378 e!3391910)))

(assert (=> b!5480528 (= res!2336378 (not (= (unfocusZipper!1107 (Cons!62272 lt!2238253 Nil!62272)) r!7292)))))

(assert (= (and start!573258 res!2336376) b!5480501))

(assert (= (and b!5480501 res!2336379) b!5480522))

(assert (= (and b!5480522 res!2336380) b!5480516))

(assert (= (and b!5480516 (not res!2336374)) b!5480508))

(assert (= (and b!5480508 (not res!2336377)) b!5480526))

(assert (= (and b!5480526 (not res!2336365)) b!5480502))

(assert (= (and b!5480502 (not res!2336382)) b!5480514))

(assert (= (and b!5480514 (not res!2336359)) b!5480503))

(assert (= (and b!5480503 (not res!2336381)) b!5480523))

(assert (= (and b!5480523 (not res!2336371)) b!5480511))

(assert (= (and b!5480523 (not res!2336369)) b!5480521))

(assert (= (and b!5480521 (not res!2336373)) b!5480512))

(assert (= (and b!5480512 (not res!2336368)) b!5480510))

(assert (= (and b!5480510 (not res!2336360)) b!5480525))

(assert (= (and b!5480525 (not res!2336361)) b!5480505))

(assert (= (and b!5480505 (not res!2336366)) b!5480509))

(assert (= (and b!5480509 (not res!2336372)) b!5480507))

(assert (= (and b!5480507 (not res!2336362)) b!5480506))

(assert (= (and b!5480506 (not res!2336363)) b!5480519))

(assert (= (and b!5480519 (not res!2336375)) b!5480528))

(assert (= (and b!5480528 (not res!2336378)) b!5480497))

(assert (= (and b!5480497 (not res!2336364)) b!5480504))

(assert (= (and b!5480504 (not res!2336370)) b!5480517))

(assert (= (and b!5480517 (not res!2336367)) b!5480518))

(assert (= (and start!573258 ((_ is ElementMatch!15365) r!7292)) b!5480527))

(assert (= (and start!573258 ((_ is Concat!24210) r!7292)) b!5480515))

(assert (= (and start!573258 ((_ is Star!15365) r!7292)) b!5480524))

(assert (= (and start!573258 ((_ is Union!15365) r!7292)) b!5480520))

(assert (= (and start!573258 condSetEmpty!36039) setIsEmpty!36039))

(assert (= (and start!573258 (not condSetEmpty!36039)) setNonEmpty!36039))

(assert (= setNonEmpty!36039 b!5480498))

(assert (= b!5480500 b!5480513))

(assert (= (and start!573258 ((_ is Cons!62272) zl!343)) b!5480500))

(assert (= (and start!573258 ((_ is Cons!62270) s!2326)) b!5480499))

(declare-fun m!6496342 () Bool)

(assert (=> b!5480506 m!6496342))

(declare-fun m!6496344 () Bool)

(assert (=> b!5480506 m!6496344))

(declare-fun m!6496346 () Bool)

(assert (=> b!5480506 m!6496346))

(declare-fun m!6496348 () Bool)

(assert (=> b!5480506 m!6496348))

(declare-fun m!6496350 () Bool)

(assert (=> b!5480506 m!6496350))

(declare-fun m!6496352 () Bool)

(assert (=> b!5480506 m!6496352))

(declare-fun m!6496354 () Bool)

(assert (=> b!5480506 m!6496354))

(declare-fun m!6496356 () Bool)

(assert (=> b!5480506 m!6496356))

(declare-fun m!6496358 () Bool)

(assert (=> b!5480506 m!6496358))

(declare-fun m!6496360 () Bool)

(assert (=> b!5480508 m!6496360))

(declare-fun m!6496362 () Bool)

(assert (=> b!5480504 m!6496362))

(declare-fun m!6496364 () Bool)

(assert (=> b!5480522 m!6496364))

(declare-fun m!6496366 () Bool)

(assert (=> b!5480514 m!6496366))

(assert (=> b!5480514 m!6496366))

(declare-fun m!6496368 () Bool)

(assert (=> b!5480514 m!6496368))

(declare-fun m!6496370 () Bool)

(assert (=> b!5480507 m!6496370))

(declare-fun m!6496372 () Bool)

(assert (=> b!5480519 m!6496372))

(declare-fun m!6496374 () Bool)

(assert (=> b!5480512 m!6496374))

(declare-fun m!6496376 () Bool)

(assert (=> b!5480512 m!6496376))

(declare-fun m!6496378 () Bool)

(assert (=> b!5480512 m!6496378))

(declare-fun m!6496380 () Bool)

(assert (=> b!5480505 m!6496380))

(declare-fun m!6496382 () Bool)

(assert (=> b!5480505 m!6496382))

(assert (=> b!5480505 m!6496382))

(declare-fun m!6496384 () Bool)

(assert (=> b!5480505 m!6496384))

(declare-fun m!6496386 () Bool)

(assert (=> start!573258 m!6496386))

(declare-fun m!6496388 () Bool)

(assert (=> b!5480528 m!6496388))

(declare-fun m!6496390 () Bool)

(assert (=> b!5480516 m!6496390))

(declare-fun m!6496392 () Bool)

(assert (=> b!5480516 m!6496392))

(declare-fun m!6496394 () Bool)

(assert (=> b!5480516 m!6496394))

(declare-fun m!6496396 () Bool)

(assert (=> b!5480497 m!6496396))

(declare-fun m!6496398 () Bool)

(assert (=> b!5480497 m!6496398))

(declare-fun m!6496400 () Bool)

(assert (=> b!5480497 m!6496400))

(declare-fun m!6496402 () Bool)

(assert (=> b!5480526 m!6496402))

(declare-fun m!6496404 () Bool)

(assert (=> b!5480500 m!6496404))

(declare-fun m!6496406 () Bool)

(assert (=> b!5480517 m!6496406))

(declare-fun m!6496408 () Bool)

(assert (=> b!5480517 m!6496408))

(declare-fun m!6496410 () Bool)

(assert (=> b!5480517 m!6496410))

(declare-fun m!6496412 () Bool)

(assert (=> b!5480517 m!6496412))

(declare-fun m!6496414 () Bool)

(assert (=> b!5480517 m!6496414))

(declare-fun m!6496416 () Bool)

(assert (=> b!5480517 m!6496416))

(declare-fun m!6496418 () Bool)

(assert (=> b!5480501 m!6496418))

(declare-fun m!6496420 () Bool)

(assert (=> b!5480525 m!6496420))

(declare-fun m!6496422 () Bool)

(assert (=> b!5480525 m!6496422))

(declare-fun m!6496424 () Bool)

(assert (=> b!5480525 m!6496424))

(declare-fun m!6496426 () Bool)

(assert (=> b!5480525 m!6496426))

(declare-fun m!6496428 () Bool)

(assert (=> b!5480525 m!6496428))

(declare-fun m!6496430 () Bool)

(assert (=> setNonEmpty!36039 m!6496430))

(declare-fun m!6496432 () Bool)

(assert (=> b!5480510 m!6496432))

(declare-fun m!6496434 () Bool)

(assert (=> b!5480510 m!6496434))

(declare-fun m!6496436 () Bool)

(assert (=> b!5480510 m!6496436))

(declare-fun m!6496438 () Bool)

(assert (=> b!5480523 m!6496438))

(declare-fun m!6496440 () Bool)

(assert (=> b!5480523 m!6496440))

(assert (=> b!5480523 m!6496440))

(declare-fun m!6496442 () Bool)

(assert (=> b!5480523 m!6496442))

(declare-fun m!6496444 () Bool)

(assert (=> b!5480523 m!6496444))

(assert (=> b!5480523 m!6496440))

(assert (=> b!5480523 m!6496444))

(declare-fun m!6496446 () Bool)

(assert (=> b!5480523 m!6496446))

(declare-fun m!6496448 () Bool)

(assert (=> b!5480523 m!6496448))

(declare-fun m!6496450 () Bool)

(assert (=> b!5480523 m!6496450))

(declare-fun m!6496452 () Bool)

(assert (=> b!5480523 m!6496452))

(declare-fun m!6496454 () Bool)

(assert (=> b!5480523 m!6496454))

(declare-fun m!6496456 () Bool)

(assert (=> b!5480518 m!6496456))

(declare-fun m!6496458 () Bool)

(assert (=> b!5480518 m!6496458))

(assert (=> b!5480518 m!6496458))

(declare-fun m!6496460 () Bool)

(assert (=> b!5480518 m!6496460))

(declare-fun m!6496462 () Bool)

(assert (=> b!5480518 m!6496462))

(check-sat (not b!5480514) (not b!5480506) (not b!5480512) (not b!5480518) (not setNonEmpty!36039) (not b!5480525) (not b!5480505) (not b!5480507) (not b!5480513) (not b!5480498) (not b!5480522) (not b!5480504) (not b!5480517) (not b!5480510) (not b!5480497) (not b!5480526) (not b!5480516) (not b!5480515) (not b!5480508) (not b!5480500) (not b!5480499) (not b!5480519) (not start!573258) tp_is_empty!39983 (not b!5480523) (not b!5480528) (not b!5480501) (not b!5480520) (not b!5480524))
(check-sat)
(get-model)

(declare-fun bs!1266537 () Bool)

(declare-fun d!1740950 () Bool)

(assert (= bs!1266537 (and d!1740950 b!5480517)))

(declare-fun lambda!292448 () Int)

(assert (=> bs!1266537 (= lambda!292448 lambda!292445)))

(declare-fun forall!14617 (List!62395 Int) Bool)

(assert (=> d!1740950 (= (inv!81659 setElem!36039) (forall!14617 (exprs!5249 setElem!36039) lambda!292448))))

(declare-fun bs!1266538 () Bool)

(assert (= bs!1266538 d!1740950))

(declare-fun m!6496464 () Bool)

(assert (=> bs!1266538 m!6496464))

(assert (=> setNonEmpty!36039 d!1740950))

(declare-fun bs!1266539 () Bool)

(declare-fun d!1740952 () Bool)

(assert (= bs!1266539 (and d!1740952 b!5480517)))

(declare-fun lambda!292451 () Int)

(assert (=> bs!1266539 (= lambda!292451 lambda!292445)))

(declare-fun bs!1266540 () Bool)

(assert (= bs!1266540 (and d!1740952 d!1740950)))

(assert (=> bs!1266540 (= lambda!292451 lambda!292448)))

(declare-fun b!5480557 () Bool)

(declare-fun e!3391929 () Bool)

(declare-fun e!3391925 () Bool)

(assert (=> b!5480557 (= e!3391929 e!3391925)))

(declare-fun c!957605 () Bool)

(declare-fun isEmpty!34224 (List!62395) Bool)

(declare-fun tail!10836 (List!62395) List!62395)

(assert (=> b!5480557 (= c!957605 (isEmpty!34224 (tail!10836 (exprs!5249 (h!68720 zl!343)))))))

(declare-fun e!3391930 () Bool)

(assert (=> d!1740952 e!3391930))

(declare-fun res!2336389 () Bool)

(assert (=> d!1740952 (=> (not res!2336389) (not e!3391930))))

(declare-fun lt!2238264 () Regex!15365)

(assert (=> d!1740952 (= res!2336389 (validRegex!7101 lt!2238264))))

(declare-fun e!3391927 () Regex!15365)

(assert (=> d!1740952 (= lt!2238264 e!3391927)))

(declare-fun c!957606 () Bool)

(declare-fun e!3391928 () Bool)

(assert (=> d!1740952 (= c!957606 e!3391928)))

(declare-fun res!2336388 () Bool)

(assert (=> d!1740952 (=> (not res!2336388) (not e!3391928))))

(assert (=> d!1740952 (= res!2336388 ((_ is Cons!62271) (exprs!5249 (h!68720 zl!343))))))

(assert (=> d!1740952 (forall!14617 (exprs!5249 (h!68720 zl!343)) lambda!292451)))

(assert (=> d!1740952 (= (generalisedConcat!1034 (exprs!5249 (h!68720 zl!343))) lt!2238264)))

(declare-fun b!5480558 () Bool)

(declare-fun head!11739 (List!62395) Regex!15365)

(assert (=> b!5480558 (= e!3391925 (= lt!2238264 (head!11739 (exprs!5249 (h!68720 zl!343)))))))

(declare-fun b!5480559 () Bool)

(declare-fun e!3391926 () Regex!15365)

(assert (=> b!5480559 (= e!3391926 (Concat!24210 (h!68719 (exprs!5249 (h!68720 zl!343))) (generalisedConcat!1034 (t!375626 (exprs!5249 (h!68720 zl!343))))))))

(declare-fun b!5480560 () Bool)

(assert (=> b!5480560 (= e!3391927 (h!68719 (exprs!5249 (h!68720 zl!343))))))

(declare-fun b!5480561 () Bool)

(declare-fun isConcat!566 (Regex!15365) Bool)

(assert (=> b!5480561 (= e!3391925 (isConcat!566 lt!2238264))))

(declare-fun b!5480562 () Bool)

(assert (=> b!5480562 (= e!3391928 (isEmpty!34224 (t!375626 (exprs!5249 (h!68720 zl!343)))))))

(declare-fun b!5480563 () Bool)

(assert (=> b!5480563 (= e!3391926 EmptyExpr!15365)))

(declare-fun b!5480564 () Bool)

(declare-fun isEmptyExpr!1043 (Regex!15365) Bool)

(assert (=> b!5480564 (= e!3391929 (isEmptyExpr!1043 lt!2238264))))

(declare-fun b!5480565 () Bool)

(assert (=> b!5480565 (= e!3391927 e!3391926)))

(declare-fun c!957604 () Bool)

(assert (=> b!5480565 (= c!957604 ((_ is Cons!62271) (exprs!5249 (h!68720 zl!343))))))

(declare-fun b!5480566 () Bool)

(assert (=> b!5480566 (= e!3391930 e!3391929)))

(declare-fun c!957607 () Bool)

(assert (=> b!5480566 (= c!957607 (isEmpty!34224 (exprs!5249 (h!68720 zl!343))))))

(assert (= (and d!1740952 res!2336388) b!5480562))

(assert (= (and d!1740952 c!957606) b!5480560))

(assert (= (and d!1740952 (not c!957606)) b!5480565))

(assert (= (and b!5480565 c!957604) b!5480559))

(assert (= (and b!5480565 (not c!957604)) b!5480563))

(assert (= (and d!1740952 res!2336389) b!5480566))

(assert (= (and b!5480566 c!957607) b!5480564))

(assert (= (and b!5480566 (not c!957607)) b!5480557))

(assert (= (and b!5480557 c!957605) b!5480558))

(assert (= (and b!5480557 (not c!957605)) b!5480561))

(declare-fun m!6496466 () Bool)

(assert (=> b!5480558 m!6496466))

(declare-fun m!6496468 () Bool)

(assert (=> b!5480559 m!6496468))

(declare-fun m!6496470 () Bool)

(assert (=> b!5480557 m!6496470))

(assert (=> b!5480557 m!6496470))

(declare-fun m!6496472 () Bool)

(assert (=> b!5480557 m!6496472))

(declare-fun m!6496474 () Bool)

(assert (=> b!5480566 m!6496474))

(declare-fun m!6496476 () Bool)

(assert (=> d!1740952 m!6496476))

(declare-fun m!6496478 () Bool)

(assert (=> d!1740952 m!6496478))

(declare-fun m!6496480 () Bool)

(assert (=> b!5480562 m!6496480))

(declare-fun m!6496482 () Bool)

(assert (=> b!5480561 m!6496482))

(declare-fun m!6496484 () Bool)

(assert (=> b!5480564 m!6496484))

(assert (=> b!5480526 d!1740952))

(declare-fun bs!1266543 () Bool)

(declare-fun b!5480647 () Bool)

(assert (= bs!1266543 (and b!5480647 b!5480523)))

(declare-fun lambda!292456 () Int)

(assert (=> bs!1266543 (not (= lambda!292456 lambda!292440))))

(assert (=> bs!1266543 (= lambda!292456 lambda!292441)))

(assert (=> bs!1266543 (not (= lambda!292456 lambda!292442))))

(assert (=> b!5480647 true))

(assert (=> b!5480647 true))

(declare-fun bs!1266545 () Bool)

(declare-fun b!5480651 () Bool)

(assert (= bs!1266545 (and b!5480651 b!5480523)))

(declare-fun lambda!292459 () Int)

(assert (=> bs!1266545 (not (= lambda!292459 lambda!292440))))

(assert (=> bs!1266545 (not (= lambda!292459 lambda!292441))))

(assert (=> bs!1266545 (= (and (= (regOne!31242 r!7292) (reg!15694 r!7292)) (= (regTwo!31242 r!7292) r!7292)) (= lambda!292459 lambda!292442))))

(declare-fun bs!1266548 () Bool)

(assert (= bs!1266548 (and b!5480651 b!5480647)))

(assert (=> bs!1266548 (not (= lambda!292459 lambda!292456))))

(assert (=> b!5480651 true))

(assert (=> b!5480651 true))

(declare-fun e!3391979 () Bool)

(declare-fun call!404501 () Bool)

(assert (=> b!5480647 (= e!3391979 call!404501)))

(declare-fun bm!404496 () Bool)

(declare-fun call!404502 () Bool)

(assert (=> bm!404496 (= call!404502 (isEmpty!34223 s!2326))))

(declare-fun b!5480648 () Bool)

(declare-fun e!3391981 () Bool)

(declare-fun e!3391980 () Bool)

(assert (=> b!5480648 (= e!3391981 e!3391980)))

(declare-fun c!957637 () Bool)

(assert (=> b!5480648 (= c!957637 ((_ is Star!15365) r!7292))))

(declare-fun b!5480649 () Bool)

(declare-fun c!957640 () Bool)

(assert (=> b!5480649 (= c!957640 ((_ is ElementMatch!15365) r!7292))))

(declare-fun e!3391978 () Bool)

(declare-fun e!3391977 () Bool)

(assert (=> b!5480649 (= e!3391978 e!3391977)))

(declare-fun b!5480650 () Bool)

(declare-fun c!957638 () Bool)

(assert (=> b!5480650 (= c!957638 ((_ is Union!15365) r!7292))))

(assert (=> b!5480650 (= e!3391977 e!3391981)))

(declare-fun d!1740954 () Bool)

(declare-fun c!957639 () Bool)

(assert (=> d!1740954 (= c!957639 ((_ is EmptyExpr!15365) r!7292))))

(declare-fun e!3391982 () Bool)

(assert (=> d!1740954 (= (matchRSpec!2468 r!7292 s!2326) e!3391982)))

(declare-fun bm!404497 () Bool)

(assert (=> bm!404497 (= call!404501 (Exists!2544 (ite c!957637 lambda!292456 lambda!292459)))))

(assert (=> b!5480651 (= e!3391980 call!404501)))

(declare-fun b!5480652 () Bool)

(assert (=> b!5480652 (= e!3391982 e!3391978)))

(declare-fun res!2336415 () Bool)

(assert (=> b!5480652 (= res!2336415 (not ((_ is EmptyLang!15365) r!7292)))))

(assert (=> b!5480652 (=> (not res!2336415) (not e!3391978))))

(declare-fun b!5480653 () Bool)

(assert (=> b!5480653 (= e!3391982 call!404502)))

(declare-fun b!5480654 () Bool)

(declare-fun e!3391976 () Bool)

(assert (=> b!5480654 (= e!3391981 e!3391976)))

(declare-fun res!2336414 () Bool)

(assert (=> b!5480654 (= res!2336414 (matchRSpec!2468 (regOne!31243 r!7292) s!2326))))

(assert (=> b!5480654 (=> res!2336414 e!3391976)))

(declare-fun b!5480655 () Bool)

(assert (=> b!5480655 (= e!3391976 (matchRSpec!2468 (regTwo!31243 r!7292) s!2326))))

(declare-fun b!5480656 () Bool)

(declare-fun res!2336413 () Bool)

(assert (=> b!5480656 (=> res!2336413 e!3391979)))

(assert (=> b!5480656 (= res!2336413 call!404502)))

(assert (=> b!5480656 (= e!3391980 e!3391979)))

(declare-fun b!5480657 () Bool)

(assert (=> b!5480657 (= e!3391977 (= s!2326 (Cons!62270 (c!957595 r!7292) Nil!62270)))))

(assert (= (and d!1740954 c!957639) b!5480653))

(assert (= (and d!1740954 (not c!957639)) b!5480652))

(assert (= (and b!5480652 res!2336415) b!5480649))

(assert (= (and b!5480649 c!957640) b!5480657))

(assert (= (and b!5480649 (not c!957640)) b!5480650))

(assert (= (and b!5480650 c!957638) b!5480654))

(assert (= (and b!5480650 (not c!957638)) b!5480648))

(assert (= (and b!5480654 (not res!2336414)) b!5480655))

(assert (= (and b!5480648 c!957637) b!5480656))

(assert (= (and b!5480648 (not c!957637)) b!5480651))

(assert (= (and b!5480656 (not res!2336413)) b!5480647))

(assert (= (or b!5480647 b!5480651) bm!404497))

(assert (= (or b!5480653 b!5480656) bm!404496))

(assert (=> bm!404496 m!6496448))

(declare-fun m!6496552 () Bool)

(assert (=> bm!404497 m!6496552))

(declare-fun m!6496554 () Bool)

(assert (=> b!5480654 m!6496554))

(declare-fun m!6496556 () Bool)

(assert (=> b!5480655 m!6496556))

(assert (=> b!5480516 d!1740954))

(declare-fun b!5480740 () Bool)

(declare-fun e!3392032 () Bool)

(declare-fun nullable!5488 (Regex!15365) Bool)

(assert (=> b!5480740 (= e!3392032 (nullable!5488 r!7292))))

(declare-fun b!5480742 () Bool)

(declare-fun res!2336450 () Bool)

(declare-fun e!3392031 () Bool)

(assert (=> b!5480742 (=> res!2336450 e!3392031)))

(declare-fun e!3392030 () Bool)

(assert (=> b!5480742 (= res!2336450 e!3392030)))

(declare-fun res!2336456 () Bool)

(assert (=> b!5480742 (=> (not res!2336456) (not e!3392030))))

(declare-fun lt!2238282 () Bool)

(assert (=> b!5480742 (= res!2336456 lt!2238282)))

(declare-fun b!5480743 () Bool)

(declare-fun derivativeStep!4332 (Regex!15365 C!31000) Regex!15365)

(declare-fun head!11740 (List!62394) C!31000)

(declare-fun tail!10837 (List!62394) List!62394)

(assert (=> b!5480743 (= e!3392032 (matchR!7550 (derivativeStep!4332 r!7292 (head!11740 s!2326)) (tail!10837 s!2326)))))

(declare-fun b!5480744 () Bool)

(declare-fun e!3392027 () Bool)

(declare-fun e!3392026 () Bool)

(assert (=> b!5480744 (= e!3392027 e!3392026)))

(declare-fun res!2336455 () Bool)

(assert (=> b!5480744 (=> res!2336455 e!3392026)))

(declare-fun call!404515 () Bool)

(assert (=> b!5480744 (= res!2336455 call!404515)))

(declare-fun b!5480745 () Bool)

(assert (=> b!5480745 (= e!3392031 e!3392027)))

(declare-fun res!2336453 () Bool)

(assert (=> b!5480745 (=> (not res!2336453) (not e!3392027))))

(assert (=> b!5480745 (= res!2336453 (not lt!2238282))))

(declare-fun b!5480746 () Bool)

(declare-fun e!3392029 () Bool)

(assert (=> b!5480746 (= e!3392029 (= lt!2238282 call!404515))))

(declare-fun b!5480747 () Bool)

(declare-fun res!2336454 () Bool)

(assert (=> b!5480747 (=> res!2336454 e!3392026)))

(assert (=> b!5480747 (= res!2336454 (not (isEmpty!34223 (tail!10837 s!2326))))))

(declare-fun b!5480748 () Bool)

(declare-fun res!2336457 () Bool)

(assert (=> b!5480748 (=> res!2336457 e!3392031)))

(assert (=> b!5480748 (= res!2336457 (not ((_ is ElementMatch!15365) r!7292)))))

(declare-fun e!3392028 () Bool)

(assert (=> b!5480748 (= e!3392028 e!3392031)))

(declare-fun b!5480749 () Bool)

(assert (=> b!5480749 (= e!3392030 (= (head!11740 s!2326) (c!957595 r!7292)))))

(declare-fun b!5480750 () Bool)

(declare-fun res!2336451 () Bool)

(assert (=> b!5480750 (=> (not res!2336451) (not e!3392030))))

(assert (=> b!5480750 (= res!2336451 (not call!404515))))

(declare-fun bm!404510 () Bool)

(assert (=> bm!404510 (= call!404515 (isEmpty!34223 s!2326))))

(declare-fun b!5480751 () Bool)

(declare-fun res!2336452 () Bool)

(assert (=> b!5480751 (=> (not res!2336452) (not e!3392030))))

(assert (=> b!5480751 (= res!2336452 (isEmpty!34223 (tail!10837 s!2326)))))

(declare-fun b!5480752 () Bool)

(assert (=> b!5480752 (= e!3392029 e!3392028)))

(declare-fun c!957667 () Bool)

(assert (=> b!5480752 (= c!957667 ((_ is EmptyLang!15365) r!7292))))

(declare-fun b!5480753 () Bool)

(assert (=> b!5480753 (= e!3392026 (not (= (head!11740 s!2326) (c!957595 r!7292))))))

(declare-fun b!5480741 () Bool)

(assert (=> b!5480741 (= e!3392028 (not lt!2238282))))

(declare-fun d!1740986 () Bool)

(assert (=> d!1740986 e!3392029))

(declare-fun c!957666 () Bool)

(assert (=> d!1740986 (= c!957666 ((_ is EmptyExpr!15365) r!7292))))

(assert (=> d!1740986 (= lt!2238282 e!3392032)))

(declare-fun c!957668 () Bool)

(assert (=> d!1740986 (= c!957668 (isEmpty!34223 s!2326))))

(assert (=> d!1740986 (validRegex!7101 r!7292)))

(assert (=> d!1740986 (= (matchR!7550 r!7292 s!2326) lt!2238282)))

(assert (= (and d!1740986 c!957668) b!5480740))

(assert (= (and d!1740986 (not c!957668)) b!5480743))

(assert (= (and d!1740986 c!957666) b!5480746))

(assert (= (and d!1740986 (not c!957666)) b!5480752))

(assert (= (and b!5480752 c!957667) b!5480741))

(assert (= (and b!5480752 (not c!957667)) b!5480748))

(assert (= (and b!5480748 (not res!2336457)) b!5480742))

(assert (= (and b!5480742 res!2336456) b!5480750))

(assert (= (and b!5480750 res!2336451) b!5480751))

(assert (= (and b!5480751 res!2336452) b!5480749))

(assert (= (and b!5480742 (not res!2336450)) b!5480745))

(assert (= (and b!5480745 res!2336453) b!5480744))

(assert (= (and b!5480744 (not res!2336455)) b!5480747))

(assert (= (and b!5480747 (not res!2336454)) b!5480753))

(assert (= (or b!5480746 b!5480744 b!5480750) bm!404510))

(declare-fun m!6496618 () Bool)

(assert (=> b!5480740 m!6496618))

(declare-fun m!6496620 () Bool)

(assert (=> b!5480747 m!6496620))

(assert (=> b!5480747 m!6496620))

(declare-fun m!6496622 () Bool)

(assert (=> b!5480747 m!6496622))

(declare-fun m!6496624 () Bool)

(assert (=> b!5480743 m!6496624))

(assert (=> b!5480743 m!6496624))

(declare-fun m!6496626 () Bool)

(assert (=> b!5480743 m!6496626))

(assert (=> b!5480743 m!6496620))

(assert (=> b!5480743 m!6496626))

(assert (=> b!5480743 m!6496620))

(declare-fun m!6496628 () Bool)

(assert (=> b!5480743 m!6496628))

(assert (=> b!5480749 m!6496624))

(assert (=> bm!404510 m!6496448))

(assert (=> d!1740986 m!6496448))

(assert (=> d!1740986 m!6496386))

(assert (=> b!5480753 m!6496624))

(assert (=> b!5480751 m!6496620))

(assert (=> b!5480751 m!6496620))

(assert (=> b!5480751 m!6496622))

(assert (=> b!5480516 d!1740986))

(declare-fun d!1741014 () Bool)

(assert (=> d!1741014 (= (matchR!7550 r!7292 s!2326) (matchRSpec!2468 r!7292 s!2326))))

(declare-fun lt!2238286 () Unit!155180)

(declare-fun choose!41696 (Regex!15365 List!62394) Unit!155180)

(assert (=> d!1741014 (= lt!2238286 (choose!41696 r!7292 s!2326))))

(assert (=> d!1741014 (validRegex!7101 r!7292)))

(assert (=> d!1741014 (= (mainMatchTheorem!2468 r!7292 s!2326) lt!2238286)))

(declare-fun bs!1266569 () Bool)

(assert (= bs!1266569 d!1741014))

(assert (=> bs!1266569 m!6496392))

(assert (=> bs!1266569 m!6496390))

(declare-fun m!6496638 () Bool)

(assert (=> bs!1266569 m!6496638))

(assert (=> bs!1266569 m!6496386))

(assert (=> b!5480516 d!1741014))

(declare-fun bm!404513 () Bool)

(declare-fun call!404518 () (InoxSet Context!9498))

(assert (=> bm!404513 (= call!404518 (derivationStepZipperDown!791 (h!68719 (exprs!5249 lt!2238258)) (Context!9499 (t!375626 (exprs!5249 lt!2238258))) (h!68718 s!2326)))))

(declare-fun b!5480773 () Bool)

(declare-fun e!3392045 () (InoxSet Context!9498))

(assert (=> b!5480773 (= e!3392045 ((as const (Array Context!9498 Bool)) false))))

(declare-fun e!3392044 () (InoxSet Context!9498))

(declare-fun b!5480774 () Bool)

(assert (=> b!5480774 (= e!3392044 ((_ map or) call!404518 (derivationStepZipperUp!717 (Context!9499 (t!375626 (exprs!5249 lt!2238258))) (h!68718 s!2326))))))

(declare-fun d!1741020 () Bool)

(declare-fun c!957674 () Bool)

(declare-fun e!3392043 () Bool)

(assert (=> d!1741020 (= c!957674 e!3392043)))

(declare-fun res!2336468 () Bool)

(assert (=> d!1741020 (=> (not res!2336468) (not e!3392043))))

(assert (=> d!1741020 (= res!2336468 ((_ is Cons!62271) (exprs!5249 lt!2238258)))))

(assert (=> d!1741020 (= (derivationStepZipperUp!717 lt!2238258 (h!68718 s!2326)) e!3392044)))

(declare-fun b!5480772 () Bool)

(assert (=> b!5480772 (= e!3392044 e!3392045)))

(declare-fun c!957673 () Bool)

(assert (=> b!5480772 (= c!957673 ((_ is Cons!62271) (exprs!5249 lt!2238258)))))

(declare-fun b!5480775 () Bool)

(assert (=> b!5480775 (= e!3392045 call!404518)))

(declare-fun b!5480776 () Bool)

(assert (=> b!5480776 (= e!3392043 (nullable!5488 (h!68719 (exprs!5249 lt!2238258))))))

(assert (= (and d!1741020 res!2336468) b!5480776))

(assert (= (and d!1741020 c!957674) b!5480774))

(assert (= (and d!1741020 (not c!957674)) b!5480772))

(assert (= (and b!5480772 c!957673) b!5480775))

(assert (= (and b!5480772 (not c!957673)) b!5480773))

(assert (= (or b!5480774 b!5480775) bm!404513))

(declare-fun m!6496648 () Bool)

(assert (=> bm!404513 m!6496648))

(declare-fun m!6496650 () Bool)

(assert (=> b!5480774 m!6496650))

(declare-fun m!6496652 () Bool)

(assert (=> b!5480776 m!6496652))

(assert (=> b!5480506 d!1741020))

(declare-fun bm!404514 () Bool)

(declare-fun call!404519 () (InoxSet Context!9498))

(assert (=> bm!404514 (= call!404519 (derivationStepZipperDown!791 (h!68719 (exprs!5249 lt!2238253)) (Context!9499 (t!375626 (exprs!5249 lt!2238253))) (h!68718 s!2326)))))

(declare-fun b!5480778 () Bool)

(declare-fun e!3392048 () (InoxSet Context!9498))

(assert (=> b!5480778 (= e!3392048 ((as const (Array Context!9498 Bool)) false))))

(declare-fun b!5480779 () Bool)

(declare-fun e!3392047 () (InoxSet Context!9498))

(assert (=> b!5480779 (= e!3392047 ((_ map or) call!404519 (derivationStepZipperUp!717 (Context!9499 (t!375626 (exprs!5249 lt!2238253))) (h!68718 s!2326))))))

(declare-fun d!1741026 () Bool)

(declare-fun c!957676 () Bool)

(declare-fun e!3392046 () Bool)

(assert (=> d!1741026 (= c!957676 e!3392046)))

(declare-fun res!2336469 () Bool)

(assert (=> d!1741026 (=> (not res!2336469) (not e!3392046))))

(assert (=> d!1741026 (= res!2336469 ((_ is Cons!62271) (exprs!5249 lt!2238253)))))

(assert (=> d!1741026 (= (derivationStepZipperUp!717 lt!2238253 (h!68718 s!2326)) e!3392047)))

(declare-fun b!5480777 () Bool)

(assert (=> b!5480777 (= e!3392047 e!3392048)))

(declare-fun c!957675 () Bool)

(assert (=> b!5480777 (= c!957675 ((_ is Cons!62271) (exprs!5249 lt!2238253)))))

(declare-fun b!5480780 () Bool)

(assert (=> b!5480780 (= e!3392048 call!404519)))

(declare-fun b!5480781 () Bool)

(assert (=> b!5480781 (= e!3392046 (nullable!5488 (h!68719 (exprs!5249 lt!2238253))))))

(assert (= (and d!1741026 res!2336469) b!5480781))

(assert (= (and d!1741026 c!957676) b!5480779))

(assert (= (and d!1741026 (not c!957676)) b!5480777))

(assert (= (and b!5480777 c!957675) b!5480780))

(assert (= (and b!5480777 (not c!957675)) b!5480778))

(assert (= (or b!5480779 b!5480780) bm!404514))

(declare-fun m!6496654 () Bool)

(assert (=> bm!404514 m!6496654))

(declare-fun m!6496656 () Bool)

(assert (=> b!5480779 m!6496656))

(declare-fun m!6496658 () Bool)

(assert (=> b!5480781 m!6496658))

(assert (=> b!5480506 d!1741026))

(declare-fun d!1741028 () Bool)

(declare-fun dynLambda!24439 (Int Context!9498) (InoxSet Context!9498))

(assert (=> d!1741028 (= (flatMap!1068 lt!2238232 lambda!292443) (dynLambda!24439 lambda!292443 lt!2238258))))

(declare-fun lt!2238292 () Unit!155180)

(declare-fun choose!41697 ((InoxSet Context!9498) Context!9498 Int) Unit!155180)

(assert (=> d!1741028 (= lt!2238292 (choose!41697 lt!2238232 lt!2238258 lambda!292443))))

(assert (=> d!1741028 (= lt!2238232 (store ((as const (Array Context!9498 Bool)) false) lt!2238258 true))))

(assert (=> d!1741028 (= (lemmaFlatMapOnSingletonSet!600 lt!2238232 lt!2238258 lambda!292443) lt!2238292)))

(declare-fun b_lambda!208267 () Bool)

(assert (=> (not b_lambda!208267) (not d!1741028)))

(declare-fun bs!1266574 () Bool)

(assert (= bs!1266574 d!1741028))

(assert (=> bs!1266574 m!6496348))

(declare-fun m!6496660 () Bool)

(assert (=> bs!1266574 m!6496660))

(declare-fun m!6496662 () Bool)

(assert (=> bs!1266574 m!6496662))

(assert (=> bs!1266574 m!6496354))

(assert (=> b!5480506 d!1741028))

(declare-fun d!1741030 () Bool)

(assert (=> d!1741030 (= (flatMap!1068 lt!2238248 lambda!292443) (dynLambda!24439 lambda!292443 lt!2238253))))

(declare-fun lt!2238293 () Unit!155180)

(assert (=> d!1741030 (= lt!2238293 (choose!41697 lt!2238248 lt!2238253 lambda!292443))))

(assert (=> d!1741030 (= lt!2238248 (store ((as const (Array Context!9498 Bool)) false) lt!2238253 true))))

(assert (=> d!1741030 (= (lemmaFlatMapOnSingletonSet!600 lt!2238248 lt!2238253 lambda!292443) lt!2238293)))

(declare-fun b_lambda!208269 () Bool)

(assert (=> (not b_lambda!208269) (not d!1741030)))

(declare-fun bs!1266575 () Bool)

(assert (= bs!1266575 d!1741030))

(assert (=> bs!1266575 m!6496350))

(declare-fun m!6496664 () Bool)

(assert (=> bs!1266575 m!6496664))

(declare-fun m!6496666 () Bool)

(assert (=> bs!1266575 m!6496666))

(assert (=> bs!1266575 m!6496344))

(assert (=> b!5480506 d!1741030))

(declare-fun d!1741032 () Bool)

(declare-fun choose!41698 ((InoxSet Context!9498) Int) (InoxSet Context!9498))

(assert (=> d!1741032 (= (flatMap!1068 lt!2238232 lambda!292443) (choose!41698 lt!2238232 lambda!292443))))

(declare-fun bs!1266576 () Bool)

(assert (= bs!1266576 d!1741032))

(declare-fun m!6496668 () Bool)

(assert (=> bs!1266576 m!6496668))

(assert (=> b!5480506 d!1741032))

(declare-fun bs!1266577 () Bool)

(declare-fun d!1741034 () Bool)

(assert (= bs!1266577 (and d!1741034 b!5480510)))

(declare-fun lambda!292480 () Int)

(assert (=> bs!1266577 (= lambda!292480 lambda!292443)))

(assert (=> d!1741034 true))

(assert (=> d!1741034 (= (derivationStepZipper!1560 lt!2238248 (h!68718 s!2326)) (flatMap!1068 lt!2238248 lambda!292480))))

(declare-fun bs!1266578 () Bool)

(assert (= bs!1266578 d!1741034))

(declare-fun m!6496670 () Bool)

(assert (=> bs!1266578 m!6496670))

(assert (=> b!5480506 d!1741034))

(declare-fun d!1741036 () Bool)

(assert (=> d!1741036 (= (flatMap!1068 lt!2238248 lambda!292443) (choose!41698 lt!2238248 lambda!292443))))

(declare-fun bs!1266579 () Bool)

(assert (= bs!1266579 d!1741036))

(declare-fun m!6496672 () Bool)

(assert (=> bs!1266579 m!6496672))

(assert (=> b!5480506 d!1741036))

(declare-fun bm!404527 () Bool)

(declare-fun call!404537 () (InoxSet Context!9498))

(declare-fun call!404536 () (InoxSet Context!9498))

(assert (=> bm!404527 (= call!404537 call!404536)))

(declare-fun b!5480839 () Bool)

(declare-fun c!957699 () Bool)

(declare-fun e!3392082 () Bool)

(assert (=> b!5480839 (= c!957699 e!3392082)))

(declare-fun res!2336491 () Bool)

(assert (=> b!5480839 (=> (not res!2336491) (not e!3392082))))

(assert (=> b!5480839 (= res!2336491 ((_ is Concat!24210) (reg!15694 r!7292)))))

(declare-fun e!3392080 () (InoxSet Context!9498))

(declare-fun e!3392079 () (InoxSet Context!9498))

(assert (=> b!5480839 (= e!3392080 e!3392079)))

(declare-fun bm!404528 () Bool)

(declare-fun call!404533 () List!62395)

(declare-fun call!404532 () List!62395)

(assert (=> bm!404528 (= call!404533 call!404532)))

(declare-fun b!5480841 () Bool)

(declare-fun call!404534 () (InoxSet Context!9498))

(assert (=> b!5480841 (= e!3392079 ((_ map or) call!404534 call!404536))))

(declare-fun bm!404529 () Bool)

(declare-fun call!404535 () (InoxSet Context!9498))

(assert (=> bm!404529 (= call!404536 call!404535)))

(declare-fun b!5480842 () Bool)

(declare-fun e!3392081 () (InoxSet Context!9498))

(assert (=> b!5480842 (= e!3392081 (store ((as const (Array Context!9498 Bool)) false) lt!2238253 true))))

(declare-fun bm!404530 () Bool)

(declare-fun c!957700 () Bool)

(assert (=> bm!404530 (= call!404534 (derivationStepZipperDown!791 (ite c!957700 (regTwo!31243 (reg!15694 r!7292)) (regOne!31242 (reg!15694 r!7292))) (ite c!957700 lt!2238253 (Context!9499 call!404532)) (h!68718 s!2326)))))

(declare-fun bm!404531 () Bool)

(declare-fun c!957696 () Bool)

(assert (=> bm!404531 (= call!404535 (derivationStepZipperDown!791 (ite c!957700 (regOne!31243 (reg!15694 r!7292)) (ite c!957699 (regTwo!31242 (reg!15694 r!7292)) (ite c!957696 (regOne!31242 (reg!15694 r!7292)) (reg!15694 (reg!15694 r!7292))))) (ite (or c!957700 c!957699) lt!2238253 (Context!9499 call!404533)) (h!68718 s!2326)))))

(declare-fun b!5480843 () Bool)

(declare-fun e!3392078 () (InoxSet Context!9498))

(assert (=> b!5480843 (= e!3392078 ((as const (Array Context!9498 Bool)) false))))

(declare-fun bm!404532 () Bool)

(declare-fun $colon$colon!1558 (List!62395 Regex!15365) List!62395)

(assert (=> bm!404532 (= call!404532 ($colon$colon!1558 (exprs!5249 lt!2238253) (ite (or c!957699 c!957696) (regTwo!31242 (reg!15694 r!7292)) (reg!15694 r!7292))))))

(declare-fun b!5480844 () Bool)

(declare-fun e!3392083 () (InoxSet Context!9498))

(assert (=> b!5480844 (= e!3392083 call!404537)))

(declare-fun b!5480840 () Bool)

(assert (=> b!5480840 (= e!3392082 (nullable!5488 (regOne!31242 (reg!15694 r!7292))))))

(declare-fun d!1741038 () Bool)

(declare-fun c!957698 () Bool)

(assert (=> d!1741038 (= c!957698 (and ((_ is ElementMatch!15365) (reg!15694 r!7292)) (= (c!957595 (reg!15694 r!7292)) (h!68718 s!2326))))))

(assert (=> d!1741038 (= (derivationStepZipperDown!791 (reg!15694 r!7292) lt!2238253 (h!68718 s!2326)) e!3392081)))

(declare-fun b!5480845 () Bool)

(assert (=> b!5480845 (= e!3392080 ((_ map or) call!404535 call!404534))))

(declare-fun b!5480846 () Bool)

(declare-fun c!957697 () Bool)

(assert (=> b!5480846 (= c!957697 ((_ is Star!15365) (reg!15694 r!7292)))))

(assert (=> b!5480846 (= e!3392083 e!3392078)))

(declare-fun b!5480847 () Bool)

(assert (=> b!5480847 (= e!3392079 e!3392083)))

(assert (=> b!5480847 (= c!957696 ((_ is Concat!24210) (reg!15694 r!7292)))))

(declare-fun b!5480848 () Bool)

(assert (=> b!5480848 (= e!3392078 call!404537)))

(declare-fun b!5480849 () Bool)

(assert (=> b!5480849 (= e!3392081 e!3392080)))

(assert (=> b!5480849 (= c!957700 ((_ is Union!15365) (reg!15694 r!7292)))))

(assert (= (and d!1741038 c!957698) b!5480842))

(assert (= (and d!1741038 (not c!957698)) b!5480849))

(assert (= (and b!5480849 c!957700) b!5480845))

(assert (= (and b!5480849 (not c!957700)) b!5480839))

(assert (= (and b!5480839 res!2336491) b!5480840))

(assert (= (and b!5480839 c!957699) b!5480841))

(assert (= (and b!5480839 (not c!957699)) b!5480847))

(assert (= (and b!5480847 c!957696) b!5480844))

(assert (= (and b!5480847 (not c!957696)) b!5480846))

(assert (= (and b!5480846 c!957697) b!5480848))

(assert (= (and b!5480846 (not c!957697)) b!5480843))

(assert (= (or b!5480844 b!5480848) bm!404528))

(assert (= (or b!5480844 b!5480848) bm!404527))

(assert (= (or b!5480841 bm!404528) bm!404532))

(assert (= (or b!5480841 bm!404527) bm!404529))

(assert (= (or b!5480845 b!5480841) bm!404530))

(assert (= (or b!5480845 bm!404529) bm!404531))

(assert (=> b!5480842 m!6496344))

(declare-fun m!6496710 () Bool)

(assert (=> bm!404531 m!6496710))

(declare-fun m!6496712 () Bool)

(assert (=> bm!404530 m!6496712))

(declare-fun m!6496714 () Bool)

(assert (=> b!5480840 m!6496714))

(declare-fun m!6496716 () Bool)

(assert (=> bm!404532 m!6496716))

(assert (=> b!5480525 d!1741038))

(declare-fun d!1741052 () Bool)

(assert (=> d!1741052 (= (flatMap!1068 lt!2238235 lambda!292443) (choose!41698 lt!2238235 lambda!292443))))

(declare-fun bs!1266589 () Bool)

(assert (= bs!1266589 d!1741052))

(declare-fun m!6496718 () Bool)

(assert (=> bs!1266589 m!6496718))

(assert (=> b!5480525 d!1741052))

(declare-fun bm!404533 () Bool)

(declare-fun call!404538 () (InoxSet Context!9498))

(assert (=> bm!404533 (= call!404538 (derivationStepZipperDown!791 (h!68719 (exprs!5249 lt!2238236)) (Context!9499 (t!375626 (exprs!5249 lt!2238236))) (h!68718 s!2326)))))

(declare-fun b!5480859 () Bool)

(declare-fun e!3392090 () (InoxSet Context!9498))

(assert (=> b!5480859 (= e!3392090 ((as const (Array Context!9498 Bool)) false))))

(declare-fun b!5480860 () Bool)

(declare-fun e!3392089 () (InoxSet Context!9498))

(assert (=> b!5480860 (= e!3392089 ((_ map or) call!404538 (derivationStepZipperUp!717 (Context!9499 (t!375626 (exprs!5249 lt!2238236))) (h!68718 s!2326))))))

(declare-fun d!1741054 () Bool)

(declare-fun c!957704 () Bool)

(declare-fun e!3392088 () Bool)

(assert (=> d!1741054 (= c!957704 e!3392088)))

(declare-fun res!2336496 () Bool)

(assert (=> d!1741054 (=> (not res!2336496) (not e!3392088))))

(assert (=> d!1741054 (= res!2336496 ((_ is Cons!62271) (exprs!5249 lt!2238236)))))

(assert (=> d!1741054 (= (derivationStepZipperUp!717 lt!2238236 (h!68718 s!2326)) e!3392089)))

(declare-fun b!5480858 () Bool)

(assert (=> b!5480858 (= e!3392089 e!3392090)))

(declare-fun c!957703 () Bool)

(assert (=> b!5480858 (= c!957703 ((_ is Cons!62271) (exprs!5249 lt!2238236)))))

(declare-fun b!5480861 () Bool)

(assert (=> b!5480861 (= e!3392090 call!404538)))

(declare-fun b!5480862 () Bool)

(assert (=> b!5480862 (= e!3392088 (nullable!5488 (h!68719 (exprs!5249 lt!2238236))))))

(assert (= (and d!1741054 res!2336496) b!5480862))

(assert (= (and d!1741054 c!957704) b!5480860))

(assert (= (and d!1741054 (not c!957704)) b!5480858))

(assert (= (and b!5480858 c!957703) b!5480861))

(assert (= (and b!5480858 (not c!957703)) b!5480859))

(assert (= (or b!5480860 b!5480861) bm!404533))

(declare-fun m!6496720 () Bool)

(assert (=> bm!404533 m!6496720))

(declare-fun m!6496722 () Bool)

(assert (=> b!5480860 m!6496722))

(declare-fun m!6496724 () Bool)

(assert (=> b!5480862 m!6496724))

(assert (=> b!5480525 d!1741054))

(declare-fun d!1741056 () Bool)

(assert (=> d!1741056 (= (flatMap!1068 lt!2238235 lambda!292443) (dynLambda!24439 lambda!292443 lt!2238236))))

(declare-fun lt!2238314 () Unit!155180)

(assert (=> d!1741056 (= lt!2238314 (choose!41697 lt!2238235 lt!2238236 lambda!292443))))

(assert (=> d!1741056 (= lt!2238235 (store ((as const (Array Context!9498 Bool)) false) lt!2238236 true))))

(assert (=> d!1741056 (= (lemmaFlatMapOnSingletonSet!600 lt!2238235 lt!2238236 lambda!292443) lt!2238314)))

(declare-fun b_lambda!208271 () Bool)

(assert (=> (not b_lambda!208271) (not d!1741056)))

(declare-fun bs!1266590 () Bool)

(assert (= bs!1266590 d!1741056))

(assert (=> bs!1266590 m!6496426))

(declare-fun m!6496728 () Bool)

(assert (=> bs!1266590 m!6496728))

(declare-fun m!6496734 () Bool)

(assert (=> bs!1266590 m!6496734))

(assert (=> bs!1266590 m!6496420))

(assert (=> b!5480525 d!1741056))

(declare-fun d!1741058 () Bool)

(declare-fun c!957708 () Bool)

(assert (=> d!1741058 (= c!957708 (isEmpty!34223 s!2326))))

(declare-fun e!3392095 () Bool)

(assert (=> d!1741058 (= (matchZipper!1583 lt!2238235 s!2326) e!3392095)))

(declare-fun b!5480871 () Bool)

(declare-fun nullableZipper!1509 ((InoxSet Context!9498)) Bool)

(assert (=> b!5480871 (= e!3392095 (nullableZipper!1509 lt!2238235))))

(declare-fun b!5480872 () Bool)

(assert (=> b!5480872 (= e!3392095 (matchZipper!1583 (derivationStepZipper!1560 lt!2238235 (head!11740 s!2326)) (tail!10837 s!2326)))))

(assert (= (and d!1741058 c!957708) b!5480871))

(assert (= (and d!1741058 (not c!957708)) b!5480872))

(assert (=> d!1741058 m!6496448))

(declare-fun m!6496752 () Bool)

(assert (=> b!5480871 m!6496752))

(assert (=> b!5480872 m!6496624))

(assert (=> b!5480872 m!6496624))

(declare-fun m!6496754 () Bool)

(assert (=> b!5480872 m!6496754))

(assert (=> b!5480872 m!6496620))

(assert (=> b!5480872 m!6496754))

(assert (=> b!5480872 m!6496620))

(declare-fun m!6496756 () Bool)

(assert (=> b!5480872 m!6496756))

(assert (=> b!5480505 d!1741058))

(declare-fun d!1741066 () Bool)

(declare-fun c!957709 () Bool)

(assert (=> d!1741066 (= c!957709 (isEmpty!34223 (t!375625 s!2326)))))

(declare-fun e!3392096 () Bool)

(assert (=> d!1741066 (= (matchZipper!1583 (derivationStepZipper!1560 lt!2238235 (h!68718 s!2326)) (t!375625 s!2326)) e!3392096)))

(declare-fun b!5480873 () Bool)

(assert (=> b!5480873 (= e!3392096 (nullableZipper!1509 (derivationStepZipper!1560 lt!2238235 (h!68718 s!2326))))))

(declare-fun b!5480874 () Bool)

(assert (=> b!5480874 (= e!3392096 (matchZipper!1583 (derivationStepZipper!1560 (derivationStepZipper!1560 lt!2238235 (h!68718 s!2326)) (head!11740 (t!375625 s!2326))) (tail!10837 (t!375625 s!2326))))))

(assert (= (and d!1741066 c!957709) b!5480873))

(assert (= (and d!1741066 (not c!957709)) b!5480874))

(declare-fun m!6496758 () Bool)

(assert (=> d!1741066 m!6496758))

(assert (=> b!5480873 m!6496382))

(declare-fun m!6496760 () Bool)

(assert (=> b!5480873 m!6496760))

(declare-fun m!6496762 () Bool)

(assert (=> b!5480874 m!6496762))

(assert (=> b!5480874 m!6496382))

(assert (=> b!5480874 m!6496762))

(declare-fun m!6496764 () Bool)

(assert (=> b!5480874 m!6496764))

(declare-fun m!6496766 () Bool)

(assert (=> b!5480874 m!6496766))

(assert (=> b!5480874 m!6496764))

(assert (=> b!5480874 m!6496766))

(declare-fun m!6496768 () Bool)

(assert (=> b!5480874 m!6496768))

(assert (=> b!5480505 d!1741066))

(declare-fun bs!1266593 () Bool)

(declare-fun d!1741068 () Bool)

(assert (= bs!1266593 (and d!1741068 b!5480510)))

(declare-fun lambda!292489 () Int)

(assert (=> bs!1266593 (= lambda!292489 lambda!292443)))

(declare-fun bs!1266594 () Bool)

(assert (= bs!1266594 (and d!1741068 d!1741034)))

(assert (=> bs!1266594 (= lambda!292489 lambda!292480)))

(assert (=> d!1741068 true))

(assert (=> d!1741068 (= (derivationStepZipper!1560 lt!2238235 (h!68718 s!2326)) (flatMap!1068 lt!2238235 lambda!292489))))

(declare-fun bs!1266595 () Bool)

(assert (= bs!1266595 d!1741068))

(declare-fun m!6496770 () Bool)

(assert (=> bs!1266595 m!6496770))

(assert (=> b!5480505 d!1741068))

(declare-fun bs!1266596 () Bool)

(declare-fun d!1741070 () Bool)

(assert (= bs!1266596 (and d!1741070 b!5480517)))

(declare-fun lambda!292496 () Int)

(assert (=> bs!1266596 (= lambda!292496 lambda!292445)))

(declare-fun bs!1266597 () Bool)

(assert (= bs!1266597 (and d!1741070 d!1740950)))

(assert (=> bs!1266597 (= lambda!292496 lambda!292448)))

(declare-fun bs!1266598 () Bool)

(assert (= bs!1266598 (and d!1741070 d!1740952)))

(assert (=> bs!1266598 (= lambda!292496 lambda!292451)))

(declare-fun b!5480927 () Bool)

(declare-fun e!3392131 () Bool)

(declare-fun e!3392132 () Bool)

(assert (=> b!5480927 (= e!3392131 e!3392132)))

(declare-fun c!957729 () Bool)

(assert (=> b!5480927 (= c!957729 (isEmpty!34224 (unfocusZipperList!807 zl!343)))))

(declare-fun b!5480928 () Bool)

(declare-fun lt!2238321 () Regex!15365)

(declare-fun isEmptyLang!1052 (Regex!15365) Bool)

(assert (=> b!5480928 (= e!3392132 (isEmptyLang!1052 lt!2238321))))

(declare-fun b!5480929 () Bool)

(declare-fun e!3392128 () Bool)

(assert (=> b!5480929 (= e!3392128 (= lt!2238321 (head!11739 (unfocusZipperList!807 zl!343))))))

(declare-fun b!5480930 () Bool)

(declare-fun e!3392129 () Regex!15365)

(assert (=> b!5480930 (= e!3392129 (h!68719 (unfocusZipperList!807 zl!343)))))

(declare-fun b!5480931 () Bool)

(declare-fun isUnion!484 (Regex!15365) Bool)

(assert (=> b!5480931 (= e!3392128 (isUnion!484 lt!2238321))))

(declare-fun b!5480932 () Bool)

(declare-fun e!3392127 () Regex!15365)

(assert (=> b!5480932 (= e!3392129 e!3392127)))

(declare-fun c!957727 () Bool)

(assert (=> b!5480932 (= c!957727 ((_ is Cons!62271) (unfocusZipperList!807 zl!343)))))

(declare-fun b!5480933 () Bool)

(declare-fun e!3392130 () Bool)

(assert (=> b!5480933 (= e!3392130 (isEmpty!34224 (t!375626 (unfocusZipperList!807 zl!343))))))

(assert (=> d!1741070 e!3392131))

(declare-fun res!2336519 () Bool)

(assert (=> d!1741070 (=> (not res!2336519) (not e!3392131))))

(assert (=> d!1741070 (= res!2336519 (validRegex!7101 lt!2238321))))

(assert (=> d!1741070 (= lt!2238321 e!3392129)))

(declare-fun c!957726 () Bool)

(assert (=> d!1741070 (= c!957726 e!3392130)))

(declare-fun res!2336520 () Bool)

(assert (=> d!1741070 (=> (not res!2336520) (not e!3392130))))

(assert (=> d!1741070 (= res!2336520 ((_ is Cons!62271) (unfocusZipperList!807 zl!343)))))

(assert (=> d!1741070 (forall!14617 (unfocusZipperList!807 zl!343) lambda!292496)))

(assert (=> d!1741070 (= (generalisedUnion!1294 (unfocusZipperList!807 zl!343)) lt!2238321)))

(declare-fun b!5480934 () Bool)

(assert (=> b!5480934 (= e!3392127 (Union!15365 (h!68719 (unfocusZipperList!807 zl!343)) (generalisedUnion!1294 (t!375626 (unfocusZipperList!807 zl!343)))))))

(declare-fun b!5480935 () Bool)

(assert (=> b!5480935 (= e!3392132 e!3392128)))

(declare-fun c!957728 () Bool)

(assert (=> b!5480935 (= c!957728 (isEmpty!34224 (tail!10836 (unfocusZipperList!807 zl!343))))))

(declare-fun b!5480936 () Bool)

(assert (=> b!5480936 (= e!3392127 EmptyLang!15365)))

(assert (= (and d!1741070 res!2336520) b!5480933))

(assert (= (and d!1741070 c!957726) b!5480930))

(assert (= (and d!1741070 (not c!957726)) b!5480932))

(assert (= (and b!5480932 c!957727) b!5480934))

(assert (= (and b!5480932 (not c!957727)) b!5480936))

(assert (= (and d!1741070 res!2336519) b!5480927))

(assert (= (and b!5480927 c!957729) b!5480928))

(assert (= (and b!5480927 (not c!957729)) b!5480935))

(assert (= (and b!5480935 c!957728) b!5480929))

(assert (= (and b!5480935 (not c!957728)) b!5480931))

(declare-fun m!6496772 () Bool)

(assert (=> b!5480928 m!6496772))

(declare-fun m!6496774 () Bool)

(assert (=> b!5480931 m!6496774))

(assert (=> b!5480929 m!6496366))

(declare-fun m!6496776 () Bool)

(assert (=> b!5480929 m!6496776))

(declare-fun m!6496778 () Bool)

(assert (=> b!5480933 m!6496778))

(declare-fun m!6496780 () Bool)

(assert (=> d!1741070 m!6496780))

(assert (=> d!1741070 m!6496366))

(declare-fun m!6496782 () Bool)

(assert (=> d!1741070 m!6496782))

(assert (=> b!5480935 m!6496366))

(declare-fun m!6496784 () Bool)

(assert (=> b!5480935 m!6496784))

(assert (=> b!5480935 m!6496784))

(declare-fun m!6496786 () Bool)

(assert (=> b!5480935 m!6496786))

(declare-fun m!6496788 () Bool)

(assert (=> b!5480934 m!6496788))

(assert (=> b!5480927 m!6496366))

(declare-fun m!6496790 () Bool)

(assert (=> b!5480927 m!6496790))

(assert (=> b!5480514 d!1741070))

(declare-fun bs!1266608 () Bool)

(declare-fun d!1741072 () Bool)

(assert (= bs!1266608 (and d!1741072 b!5480517)))

(declare-fun lambda!292501 () Int)

(assert (=> bs!1266608 (= lambda!292501 lambda!292445)))

(declare-fun bs!1266609 () Bool)

(assert (= bs!1266609 (and d!1741072 d!1740950)))

(assert (=> bs!1266609 (= lambda!292501 lambda!292448)))

(declare-fun bs!1266610 () Bool)

(assert (= bs!1266610 (and d!1741072 d!1740952)))

(assert (=> bs!1266610 (= lambda!292501 lambda!292451)))

(declare-fun bs!1266611 () Bool)

(assert (= bs!1266611 (and d!1741072 d!1741070)))

(assert (=> bs!1266611 (= lambda!292501 lambda!292496)))

(declare-fun lt!2238324 () List!62395)

(assert (=> d!1741072 (forall!14617 lt!2238324 lambda!292501)))

(declare-fun e!3392142 () List!62395)

(assert (=> d!1741072 (= lt!2238324 e!3392142)))

(declare-fun c!957736 () Bool)

(assert (=> d!1741072 (= c!957736 ((_ is Cons!62272) zl!343))))

(assert (=> d!1741072 (= (unfocusZipperList!807 zl!343) lt!2238324)))

(declare-fun b!5480952 () Bool)

(assert (=> b!5480952 (= e!3392142 (Cons!62271 (generalisedConcat!1034 (exprs!5249 (h!68720 zl!343))) (unfocusZipperList!807 (t!375627 zl!343))))))

(declare-fun b!5480953 () Bool)

(assert (=> b!5480953 (= e!3392142 Nil!62271)))

(assert (= (and d!1741072 c!957736) b!5480952))

(assert (= (and d!1741072 (not c!957736)) b!5480953))

(declare-fun m!6496794 () Bool)

(assert (=> d!1741072 m!6496794))

(assert (=> b!5480952 m!6496402))

(declare-fun m!6496800 () Bool)

(assert (=> b!5480952 m!6496800))

(assert (=> b!5480514 d!1741072))

(declare-fun d!1741074 () Bool)

(declare-fun c!957737 () Bool)

(assert (=> d!1741074 (= c!957737 (isEmpty!34223 s!2326))))

(declare-fun e!3392143 () Bool)

(assert (=> d!1741074 (= (matchZipper!1583 z!1189 s!2326) e!3392143)))

(declare-fun b!5480954 () Bool)

(assert (=> b!5480954 (= e!3392143 (nullableZipper!1509 z!1189))))

(declare-fun b!5480955 () Bool)

(assert (=> b!5480955 (= e!3392143 (matchZipper!1583 (derivationStepZipper!1560 z!1189 (head!11740 s!2326)) (tail!10837 s!2326)))))

(assert (= (and d!1741074 c!957737) b!5480954))

(assert (= (and d!1741074 (not c!957737)) b!5480955))

(assert (=> d!1741074 m!6496448))

(declare-fun m!6496802 () Bool)

(assert (=> b!5480954 m!6496802))

(assert (=> b!5480955 m!6496624))

(assert (=> b!5480955 m!6496624))

(declare-fun m!6496804 () Bool)

(assert (=> b!5480955 m!6496804))

(assert (=> b!5480955 m!6496620))

(assert (=> b!5480955 m!6496804))

(assert (=> b!5480955 m!6496620))

(declare-fun m!6496806 () Bool)

(assert (=> b!5480955 m!6496806))

(assert (=> b!5480504 d!1741074))

(declare-fun bs!1266612 () Bool)

(declare-fun d!1741078 () Bool)

(assert (= bs!1266612 (and d!1741078 b!5480651)))

(declare-fun lambda!292506 () Int)

(assert (=> bs!1266612 (not (= lambda!292506 lambda!292459))))

(declare-fun bs!1266613 () Bool)

(assert (= bs!1266613 (and d!1741078 b!5480523)))

(assert (=> bs!1266613 (= lambda!292506 lambda!292440)))

(declare-fun bs!1266614 () Bool)

(assert (= bs!1266614 (and d!1741078 b!5480647)))

(assert (=> bs!1266614 (not (= lambda!292506 lambda!292456))))

(assert (=> bs!1266613 (not (= lambda!292506 lambda!292442))))

(assert (=> bs!1266613 (not (= lambda!292506 lambda!292441))))

(assert (=> d!1741078 true))

(assert (=> d!1741078 true))

(assert (=> d!1741078 true))

(declare-fun lambda!292507 () Int)

(assert (=> bs!1266612 (= (and (= (reg!15694 r!7292) (regOne!31242 r!7292)) (= r!7292 (regTwo!31242 r!7292))) (= lambda!292507 lambda!292459))))

(declare-fun bs!1266615 () Bool)

(assert (= bs!1266615 d!1741078))

(assert (=> bs!1266615 (not (= lambda!292507 lambda!292506))))

(assert (=> bs!1266613 (not (= lambda!292507 lambda!292440))))

(assert (=> bs!1266614 (not (= lambda!292507 lambda!292456))))

(assert (=> bs!1266613 (= lambda!292507 lambda!292442)))

(assert (=> bs!1266613 (not (= lambda!292507 lambda!292441))))

(assert (=> d!1741078 true))

(assert (=> d!1741078 true))

(assert (=> d!1741078 true))

(assert (=> d!1741078 (= (Exists!2544 lambda!292506) (Exists!2544 lambda!292507))))

(declare-fun lt!2238329 () Unit!155180)

(declare-fun choose!41706 (Regex!15365 Regex!15365 List!62394) Unit!155180)

(assert (=> d!1741078 (= lt!2238329 (choose!41706 (reg!15694 r!7292) r!7292 s!2326))))

(assert (=> d!1741078 (validRegex!7101 (reg!15694 r!7292))))

(assert (=> d!1741078 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1194 (reg!15694 r!7292) r!7292 s!2326) lt!2238329)))

(declare-fun m!6496818 () Bool)

(assert (=> bs!1266615 m!6496818))

(declare-fun m!6496820 () Bool)

(assert (=> bs!1266615 m!6496820))

(declare-fun m!6496822 () Bool)

(assert (=> bs!1266615 m!6496822))

(declare-fun m!6496824 () Bool)

(assert (=> bs!1266615 m!6496824))

(assert (=> b!5480523 d!1741078))

(declare-fun bs!1266635 () Bool)

(declare-fun d!1741082 () Bool)

(assert (= bs!1266635 (and d!1741082 b!5480651)))

(declare-fun lambda!292515 () Int)

(assert (=> bs!1266635 (not (= lambda!292515 lambda!292459))))

(declare-fun bs!1266636 () Bool)

(assert (= bs!1266636 (and d!1741082 d!1741078)))

(assert (=> bs!1266636 (= (= (Star!15365 (reg!15694 r!7292)) r!7292) (= lambda!292515 lambda!292506))))

(declare-fun bs!1266637 () Bool)

(assert (= bs!1266637 (and d!1741082 b!5480523)))

(assert (=> bs!1266637 (= (= (Star!15365 (reg!15694 r!7292)) r!7292) (= lambda!292515 lambda!292440))))

(declare-fun bs!1266638 () Bool)

(assert (= bs!1266638 (and d!1741082 b!5480647)))

(assert (=> bs!1266638 (not (= lambda!292515 lambda!292456))))

(assert (=> bs!1266636 (not (= lambda!292515 lambda!292507))))

(assert (=> bs!1266637 (not (= lambda!292515 lambda!292442))))

(assert (=> bs!1266637 (not (= lambda!292515 lambda!292441))))

(assert (=> d!1741082 true))

(assert (=> d!1741082 true))

(declare-fun lambda!292516 () Int)

(assert (=> bs!1266635 (not (= lambda!292516 lambda!292459))))

(assert (=> bs!1266636 (not (= lambda!292516 lambda!292506))))

(assert (=> bs!1266637 (not (= lambda!292516 lambda!292440))))

(assert (=> bs!1266638 (= (= (Star!15365 (reg!15694 r!7292)) r!7292) (= lambda!292516 lambda!292456))))

(assert (=> bs!1266636 (not (= lambda!292516 lambda!292507))))

(assert (=> bs!1266637 (not (= lambda!292516 lambda!292442))))

(assert (=> bs!1266637 (= (= (Star!15365 (reg!15694 r!7292)) r!7292) (= lambda!292516 lambda!292441))))

(declare-fun bs!1266639 () Bool)

(assert (= bs!1266639 d!1741082))

(assert (=> bs!1266639 (not (= lambda!292516 lambda!292515))))

(assert (=> d!1741082 true))

(assert (=> d!1741082 true))

(assert (=> d!1741082 (= (Exists!2544 lambda!292515) (Exists!2544 lambda!292516))))

(declare-fun lt!2238339 () Unit!155180)

(declare-fun choose!41707 (Regex!15365 List!62394) Unit!155180)

(assert (=> d!1741082 (= lt!2238339 (choose!41707 (reg!15694 r!7292) s!2326))))

(assert (=> d!1741082 (validRegex!7101 (reg!15694 r!7292))))

(assert (=> d!1741082 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!518 (reg!15694 r!7292) s!2326) lt!2238339)))

(declare-fun m!6496864 () Bool)

(assert (=> bs!1266639 m!6496864))

(declare-fun m!6496866 () Bool)

(assert (=> bs!1266639 m!6496866))

(declare-fun m!6496868 () Bool)

(assert (=> bs!1266639 m!6496868))

(assert (=> bs!1266639 m!6496824))

(assert (=> b!5480523 d!1741082))

(declare-fun d!1741098 () Bool)

(assert (=> d!1741098 (= (isEmpty!34223 s!2326) ((_ is Nil!62270) s!2326))))

(assert (=> b!5480523 d!1741098))

(declare-fun d!1741102 () Bool)

(declare-fun choose!41708 (Int) Bool)

(assert (=> d!1741102 (= (Exists!2544 lambda!292441) (choose!41708 lambda!292441))))

(declare-fun bs!1266641 () Bool)

(assert (= bs!1266641 d!1741102))

(declare-fun m!6496872 () Bool)

(assert (=> bs!1266641 m!6496872))

(assert (=> b!5480523 d!1741102))

(declare-fun d!1741104 () Bool)

(assert (=> d!1741104 (= (Exists!2544 lambda!292440) (choose!41708 lambda!292440))))

(declare-fun bs!1266642 () Bool)

(assert (= bs!1266642 d!1741104))

(declare-fun m!6496874 () Bool)

(assert (=> bs!1266642 m!6496874))

(assert (=> b!5480523 d!1741104))

(declare-fun d!1741106 () Bool)

(assert (=> d!1741106 (= (Exists!2544 lambda!292442) (choose!41708 lambda!292442))))

(declare-fun bs!1266643 () Bool)

(assert (= bs!1266643 d!1741106))

(declare-fun m!6496876 () Bool)

(assert (=> bs!1266643 m!6496876))

(assert (=> b!5480523 d!1741106))

(declare-fun d!1741108 () Bool)

(declare-fun isEmpty!34226 (Option!15474) Bool)

(assert (=> d!1741108 (= (isDefined!12177 (findConcatSeparation!1888 (reg!15694 r!7292) r!7292 Nil!62270 s!2326 s!2326)) (not (isEmpty!34226 (findConcatSeparation!1888 (reg!15694 r!7292) r!7292 Nil!62270 s!2326 s!2326))))))

(declare-fun bs!1266644 () Bool)

(assert (= bs!1266644 d!1741108))

(assert (=> bs!1266644 m!6496444))

(declare-fun m!6496878 () Bool)

(assert (=> bs!1266644 m!6496878))

(assert (=> b!5480523 d!1741108))

(declare-fun b!5481098 () Bool)

(declare-fun e!3392221 () Bool)

(declare-fun lt!2238359 () Option!15474)

(assert (=> b!5481098 (= e!3392221 (not (isDefined!12177 lt!2238359)))))

(declare-fun b!5481099 () Bool)

(declare-fun e!3392222 () Option!15474)

(assert (=> b!5481099 (= e!3392222 (Some!15473 (tuple2!65125 Nil!62270 s!2326)))))

(declare-fun d!1741110 () Bool)

(assert (=> d!1741110 e!3392221))

(declare-fun res!2336608 () Bool)

(assert (=> d!1741110 (=> res!2336608 e!3392221)))

(declare-fun e!3392219 () Bool)

(assert (=> d!1741110 (= res!2336608 e!3392219)))

(declare-fun res!2336611 () Bool)

(assert (=> d!1741110 (=> (not res!2336611) (not e!3392219))))

(assert (=> d!1741110 (= res!2336611 (isDefined!12177 lt!2238359))))

(assert (=> d!1741110 (= lt!2238359 e!3392222)))

(declare-fun c!957767 () Bool)

(declare-fun e!3392218 () Bool)

(assert (=> d!1741110 (= c!957767 e!3392218)))

(declare-fun res!2336609 () Bool)

(assert (=> d!1741110 (=> (not res!2336609) (not e!3392218))))

(assert (=> d!1741110 (= res!2336609 (matchR!7550 (reg!15694 r!7292) Nil!62270))))

(assert (=> d!1741110 (validRegex!7101 (reg!15694 r!7292))))

(assert (=> d!1741110 (= (findConcatSeparation!1888 (reg!15694 r!7292) r!7292 Nil!62270 s!2326 s!2326) lt!2238359)))

(declare-fun b!5481100 () Bool)

(declare-fun e!3392220 () Option!15474)

(assert (=> b!5481100 (= e!3392220 None!15473)))

(declare-fun b!5481101 () Bool)

(assert (=> b!5481101 (= e!3392222 e!3392220)))

(declare-fun c!957768 () Bool)

(assert (=> b!5481101 (= c!957768 ((_ is Nil!62270) s!2326))))

(declare-fun b!5481102 () Bool)

(declare-fun get!21474 (Option!15474) tuple2!65124)

(assert (=> b!5481102 (= e!3392219 (= (++!13706 (_1!35865 (get!21474 lt!2238359)) (_2!35865 (get!21474 lt!2238359))) s!2326))))

(declare-fun b!5481103 () Bool)

(assert (=> b!5481103 (= e!3392218 (matchR!7550 r!7292 s!2326))))

(declare-fun b!5481104 () Bool)

(declare-fun lt!2238358 () Unit!155180)

(declare-fun lt!2238360 () Unit!155180)

(assert (=> b!5481104 (= lt!2238358 lt!2238360)))

(assert (=> b!5481104 (= (++!13706 (++!13706 Nil!62270 (Cons!62270 (h!68718 s!2326) Nil!62270)) (t!375625 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1907 (List!62394 C!31000 List!62394 List!62394) Unit!155180)

(assert (=> b!5481104 (= lt!2238360 (lemmaMoveElementToOtherListKeepsConcatEq!1907 Nil!62270 (h!68718 s!2326) (t!375625 s!2326) s!2326))))

(assert (=> b!5481104 (= e!3392220 (findConcatSeparation!1888 (reg!15694 r!7292) r!7292 (++!13706 Nil!62270 (Cons!62270 (h!68718 s!2326) Nil!62270)) (t!375625 s!2326) s!2326))))

(declare-fun b!5481105 () Bool)

(declare-fun res!2336610 () Bool)

(assert (=> b!5481105 (=> (not res!2336610) (not e!3392219))))

(assert (=> b!5481105 (= res!2336610 (matchR!7550 r!7292 (_2!35865 (get!21474 lt!2238359))))))

(declare-fun b!5481106 () Bool)

(declare-fun res!2336612 () Bool)

(assert (=> b!5481106 (=> (not res!2336612) (not e!3392219))))

(assert (=> b!5481106 (= res!2336612 (matchR!7550 (reg!15694 r!7292) (_1!35865 (get!21474 lt!2238359))))))

(assert (= (and d!1741110 res!2336609) b!5481103))

(assert (= (and d!1741110 c!957767) b!5481099))

(assert (= (and d!1741110 (not c!957767)) b!5481101))

(assert (= (and b!5481101 c!957768) b!5481100))

(assert (= (and b!5481101 (not c!957768)) b!5481104))

(assert (= (and d!1741110 res!2336611) b!5481106))

(assert (= (and b!5481106 res!2336612) b!5481105))

(assert (= (and b!5481105 res!2336610) b!5481102))

(assert (= (and d!1741110 (not res!2336608)) b!5481098))

(declare-fun m!6496888 () Bool)

(assert (=> b!5481102 m!6496888))

(declare-fun m!6496894 () Bool)

(assert (=> b!5481102 m!6496894))

(declare-fun m!6496896 () Bool)

(assert (=> d!1741110 m!6496896))

(declare-fun m!6496900 () Bool)

(assert (=> d!1741110 m!6496900))

(assert (=> d!1741110 m!6496824))

(assert (=> b!5481106 m!6496888))

(declare-fun m!6496904 () Bool)

(assert (=> b!5481106 m!6496904))

(assert (=> b!5481105 m!6496888))

(declare-fun m!6496906 () Bool)

(assert (=> b!5481105 m!6496906))

(declare-fun m!6496908 () Bool)

(assert (=> b!5481104 m!6496908))

(assert (=> b!5481104 m!6496908))

(declare-fun m!6496910 () Bool)

(assert (=> b!5481104 m!6496910))

(declare-fun m!6496912 () Bool)

(assert (=> b!5481104 m!6496912))

(assert (=> b!5481104 m!6496908))

(declare-fun m!6496914 () Bool)

(assert (=> b!5481104 m!6496914))

(assert (=> b!5481098 m!6496896))

(assert (=> b!5481103 m!6496392))

(assert (=> b!5480523 d!1741110))

(declare-fun bs!1266646 () Bool)

(declare-fun d!1741114 () Bool)

(assert (= bs!1266646 (and d!1741114 b!5480651)))

(declare-fun lambda!292519 () Int)

(assert (=> bs!1266646 (not (= lambda!292519 lambda!292459))))

(declare-fun bs!1266647 () Bool)

(assert (= bs!1266647 (and d!1741114 d!1741078)))

(assert (=> bs!1266647 (= lambda!292519 lambda!292506)))

(declare-fun bs!1266648 () Bool)

(assert (= bs!1266648 (and d!1741114 b!5480523)))

(assert (=> bs!1266648 (= lambda!292519 lambda!292440)))

(declare-fun bs!1266649 () Bool)

(assert (= bs!1266649 (and d!1741114 b!5480647)))

(assert (=> bs!1266649 (not (= lambda!292519 lambda!292456))))

(assert (=> bs!1266647 (not (= lambda!292519 lambda!292507))))

(assert (=> bs!1266648 (not (= lambda!292519 lambda!292442))))

(declare-fun bs!1266650 () Bool)

(assert (= bs!1266650 (and d!1741114 d!1741082)))

(assert (=> bs!1266650 (not (= lambda!292519 lambda!292516))))

(assert (=> bs!1266648 (not (= lambda!292519 lambda!292441))))

(assert (=> bs!1266650 (= (= r!7292 (Star!15365 (reg!15694 r!7292))) (= lambda!292519 lambda!292515))))

(assert (=> d!1741114 true))

(assert (=> d!1741114 true))

(assert (=> d!1741114 true))

(assert (=> d!1741114 (= (isDefined!12177 (findConcatSeparation!1888 (reg!15694 r!7292) r!7292 Nil!62270 s!2326 s!2326)) (Exists!2544 lambda!292519))))

(declare-fun lt!2238366 () Unit!155180)

(declare-fun choose!41709 (Regex!15365 Regex!15365 List!62394) Unit!155180)

(assert (=> d!1741114 (= lt!2238366 (choose!41709 (reg!15694 r!7292) r!7292 s!2326))))

(assert (=> d!1741114 (validRegex!7101 (reg!15694 r!7292))))

(assert (=> d!1741114 (= (lemmaFindConcatSeparationEquivalentToExists!1652 (reg!15694 r!7292) r!7292 s!2326) lt!2238366)))

(declare-fun bs!1266651 () Bool)

(assert (= bs!1266651 d!1741114))

(declare-fun m!6496924 () Bool)

(assert (=> bs!1266651 m!6496924))

(assert (=> bs!1266651 m!6496444))

(declare-fun m!6496926 () Bool)

(assert (=> bs!1266651 m!6496926))

(assert (=> bs!1266651 m!6496444))

(assert (=> bs!1266651 m!6496446))

(assert (=> bs!1266651 m!6496824))

(assert (=> b!5480523 d!1741114))

(declare-fun d!1741118 () Bool)

(declare-fun lt!2238371 () Regex!15365)

(assert (=> d!1741118 (validRegex!7101 lt!2238371)))

(assert (=> d!1741118 (= lt!2238371 (generalisedUnion!1294 (unfocusZipperList!807 zl!343)))))

(assert (=> d!1741118 (= (unfocusZipper!1107 zl!343) lt!2238371)))

(declare-fun bs!1266652 () Bool)

(assert (= bs!1266652 d!1741118))

(declare-fun m!6496928 () Bool)

(assert (=> bs!1266652 m!6496928))

(assert (=> bs!1266652 m!6496366))

(assert (=> bs!1266652 m!6496366))

(assert (=> bs!1266652 m!6496368))

(assert (=> b!5480522 d!1741118))

(declare-fun bm!404546 () Bool)

(declare-fun call!404556 () (InoxSet Context!9498))

(declare-fun call!404555 () (InoxSet Context!9498))

(assert (=> bm!404546 (= call!404556 call!404555)))

(declare-fun b!5481131 () Bool)

(declare-fun c!957780 () Bool)

(declare-fun e!3392241 () Bool)

(assert (=> b!5481131 (= c!957780 e!3392241)))

(declare-fun res!2336621 () Bool)

(assert (=> b!5481131 (=> (not res!2336621) (not e!3392241))))

(assert (=> b!5481131 (= res!2336621 ((_ is Concat!24210) r!7292))))

(declare-fun e!3392239 () (InoxSet Context!9498))

(declare-fun e!3392238 () (InoxSet Context!9498))

(assert (=> b!5481131 (= e!3392239 e!3392238)))

(declare-fun bm!404547 () Bool)

(declare-fun call!404552 () List!62395)

(declare-fun call!404551 () List!62395)

(assert (=> bm!404547 (= call!404552 call!404551)))

(declare-fun b!5481133 () Bool)

(declare-fun call!404553 () (InoxSet Context!9498))

(assert (=> b!5481133 (= e!3392238 ((_ map or) call!404553 call!404555))))

(declare-fun bm!404548 () Bool)

(declare-fun call!404554 () (InoxSet Context!9498))

(assert (=> bm!404548 (= call!404555 call!404554)))

(declare-fun b!5481134 () Bool)

(declare-fun e!3392240 () (InoxSet Context!9498))

(assert (=> b!5481134 (= e!3392240 (store ((as const (Array Context!9498 Bool)) false) (Context!9499 Nil!62271) true))))

(declare-fun c!957781 () Bool)

(declare-fun bm!404549 () Bool)

(assert (=> bm!404549 (= call!404553 (derivationStepZipperDown!791 (ite c!957781 (regTwo!31243 r!7292) (regOne!31242 r!7292)) (ite c!957781 (Context!9499 Nil!62271) (Context!9499 call!404551)) (h!68718 s!2326)))))

(declare-fun bm!404550 () Bool)

(declare-fun c!957777 () Bool)

(assert (=> bm!404550 (= call!404554 (derivationStepZipperDown!791 (ite c!957781 (regOne!31243 r!7292) (ite c!957780 (regTwo!31242 r!7292) (ite c!957777 (regOne!31242 r!7292) (reg!15694 r!7292)))) (ite (or c!957781 c!957780) (Context!9499 Nil!62271) (Context!9499 call!404552)) (h!68718 s!2326)))))

(declare-fun b!5481135 () Bool)

(declare-fun e!3392237 () (InoxSet Context!9498))

(assert (=> b!5481135 (= e!3392237 ((as const (Array Context!9498 Bool)) false))))

(declare-fun bm!404551 () Bool)

(assert (=> bm!404551 (= call!404551 ($colon$colon!1558 (exprs!5249 (Context!9499 Nil!62271)) (ite (or c!957780 c!957777) (regTwo!31242 r!7292) r!7292)))))

(declare-fun b!5481136 () Bool)

(declare-fun e!3392242 () (InoxSet Context!9498))

(assert (=> b!5481136 (= e!3392242 call!404556)))

(declare-fun b!5481132 () Bool)

(assert (=> b!5481132 (= e!3392241 (nullable!5488 (regOne!31242 r!7292)))))

(declare-fun d!1741120 () Bool)

(declare-fun c!957779 () Bool)

(assert (=> d!1741120 (= c!957779 (and ((_ is ElementMatch!15365) r!7292) (= (c!957595 r!7292) (h!68718 s!2326))))))

(assert (=> d!1741120 (= (derivationStepZipperDown!791 r!7292 (Context!9499 Nil!62271) (h!68718 s!2326)) e!3392240)))

(declare-fun b!5481137 () Bool)

(assert (=> b!5481137 (= e!3392239 ((_ map or) call!404554 call!404553))))

(declare-fun b!5481138 () Bool)

(declare-fun c!957778 () Bool)

(assert (=> b!5481138 (= c!957778 ((_ is Star!15365) r!7292))))

(assert (=> b!5481138 (= e!3392242 e!3392237)))

(declare-fun b!5481139 () Bool)

(assert (=> b!5481139 (= e!3392238 e!3392242)))

(assert (=> b!5481139 (= c!957777 ((_ is Concat!24210) r!7292))))

(declare-fun b!5481140 () Bool)

(assert (=> b!5481140 (= e!3392237 call!404556)))

(declare-fun b!5481141 () Bool)

(assert (=> b!5481141 (= e!3392240 e!3392239)))

(assert (=> b!5481141 (= c!957781 ((_ is Union!15365) r!7292))))

(assert (= (and d!1741120 c!957779) b!5481134))

(assert (= (and d!1741120 (not c!957779)) b!5481141))

(assert (= (and b!5481141 c!957781) b!5481137))

(assert (= (and b!5481141 (not c!957781)) b!5481131))

(assert (= (and b!5481131 res!2336621) b!5481132))

(assert (= (and b!5481131 c!957780) b!5481133))

(assert (= (and b!5481131 (not c!957780)) b!5481139))

(assert (= (and b!5481139 c!957777) b!5481136))

(assert (= (and b!5481139 (not c!957777)) b!5481138))

(assert (= (and b!5481138 c!957778) b!5481140))

(assert (= (and b!5481138 (not c!957778)) b!5481135))

(assert (= (or b!5481136 b!5481140) bm!404547))

(assert (= (or b!5481136 b!5481140) bm!404546))

(assert (= (or b!5481133 bm!404547) bm!404551))

(assert (= (or b!5481133 bm!404546) bm!404548))

(assert (= (or b!5481137 b!5481133) bm!404549))

(assert (= (or b!5481137 bm!404548) bm!404550))

(declare-fun m!6496930 () Bool)

(assert (=> b!5481134 m!6496930))

(declare-fun m!6496932 () Bool)

(assert (=> bm!404550 m!6496932))

(declare-fun m!6496934 () Bool)

(assert (=> bm!404549 m!6496934))

(declare-fun m!6496936 () Bool)

(assert (=> b!5481132 m!6496936))

(declare-fun m!6496938 () Bool)

(assert (=> bm!404551 m!6496938))

(assert (=> b!5480512 d!1741120))

(declare-fun bm!404552 () Bool)

(declare-fun call!404557 () (InoxSet Context!9498))

(assert (=> bm!404552 (= call!404557 (derivationStepZipperDown!791 (h!68719 (exprs!5249 (Context!9499 (Cons!62271 r!7292 Nil!62271)))) (Context!9499 (t!375626 (exprs!5249 (Context!9499 (Cons!62271 r!7292 Nil!62271))))) (h!68718 s!2326)))))

(declare-fun b!5481143 () Bool)

(declare-fun e!3392245 () (InoxSet Context!9498))

(assert (=> b!5481143 (= e!3392245 ((as const (Array Context!9498 Bool)) false))))

(declare-fun e!3392244 () (InoxSet Context!9498))

(declare-fun b!5481144 () Bool)

(assert (=> b!5481144 (= e!3392244 ((_ map or) call!404557 (derivationStepZipperUp!717 (Context!9499 (t!375626 (exprs!5249 (Context!9499 (Cons!62271 r!7292 Nil!62271))))) (h!68718 s!2326))))))

(declare-fun d!1741122 () Bool)

(declare-fun c!957783 () Bool)

(declare-fun e!3392243 () Bool)

(assert (=> d!1741122 (= c!957783 e!3392243)))

(declare-fun res!2336622 () Bool)

(assert (=> d!1741122 (=> (not res!2336622) (not e!3392243))))

(assert (=> d!1741122 (= res!2336622 ((_ is Cons!62271) (exprs!5249 (Context!9499 (Cons!62271 r!7292 Nil!62271)))))))

(assert (=> d!1741122 (= (derivationStepZipperUp!717 (Context!9499 (Cons!62271 r!7292 Nil!62271)) (h!68718 s!2326)) e!3392244)))

(declare-fun b!5481142 () Bool)

(assert (=> b!5481142 (= e!3392244 e!3392245)))

(declare-fun c!957782 () Bool)

(assert (=> b!5481142 (= c!957782 ((_ is Cons!62271) (exprs!5249 (Context!9499 (Cons!62271 r!7292 Nil!62271)))))))

(declare-fun b!5481145 () Bool)

(assert (=> b!5481145 (= e!3392245 call!404557)))

(declare-fun b!5481146 () Bool)

(assert (=> b!5481146 (= e!3392243 (nullable!5488 (h!68719 (exprs!5249 (Context!9499 (Cons!62271 r!7292 Nil!62271))))))))

(assert (= (and d!1741122 res!2336622) b!5481146))

(assert (= (and d!1741122 c!957783) b!5481144))

(assert (= (and d!1741122 (not c!957783)) b!5481142))

(assert (= (and b!5481142 c!957782) b!5481145))

(assert (= (and b!5481142 (not c!957782)) b!5481143))

(assert (= (or b!5481144 b!5481145) bm!404552))

(declare-fun m!6496940 () Bool)

(assert (=> bm!404552 m!6496940))

(declare-fun m!6496942 () Bool)

(assert (=> b!5481144 m!6496942))

(declare-fun m!6496944 () Bool)

(assert (=> b!5481146 m!6496944))

(assert (=> b!5480512 d!1741122))

(declare-fun bs!1266653 () Bool)

(declare-fun d!1741124 () Bool)

(assert (= bs!1266653 (and d!1741124 b!5480510)))

(declare-fun lambda!292522 () Int)

(assert (=> bs!1266653 (= lambda!292522 lambda!292443)))

(declare-fun bs!1266654 () Bool)

(assert (= bs!1266654 (and d!1741124 d!1741034)))

(assert (=> bs!1266654 (= lambda!292522 lambda!292480)))

(declare-fun bs!1266656 () Bool)

(assert (= bs!1266656 (and d!1741124 d!1741068)))

(assert (=> bs!1266656 (= lambda!292522 lambda!292489)))

(assert (=> d!1741124 true))

(assert (=> d!1741124 (= (derivationStepZipper!1560 z!1189 (h!68718 s!2326)) (flatMap!1068 z!1189 lambda!292522))))

(declare-fun bs!1266659 () Bool)

(assert (= bs!1266659 d!1741124))

(declare-fun m!6496946 () Bool)

(assert (=> bs!1266659 m!6496946))

(assert (=> b!5480512 d!1741124))

(declare-fun d!1741126 () Bool)

(declare-fun e!3392255 () Bool)

(assert (=> d!1741126 e!3392255))

(declare-fun res!2336627 () Bool)

(assert (=> d!1741126 (=> (not res!2336627) (not e!3392255))))

(declare-fun lt!2238375 () List!62396)

(declare-fun noDuplicate!1462 (List!62396) Bool)

(assert (=> d!1741126 (= res!2336627 (noDuplicate!1462 lt!2238375))))

(declare-fun choose!41711 ((InoxSet Context!9498)) List!62396)

(assert (=> d!1741126 (= lt!2238375 (choose!41711 z!1189))))

(assert (=> d!1741126 (= (toList!9149 z!1189) lt!2238375)))

(declare-fun b!5481161 () Bool)

(declare-fun content!11209 (List!62396) (InoxSet Context!9498))

(assert (=> b!5481161 (= e!3392255 (= (content!11209 lt!2238375) z!1189))))

(assert (= (and d!1741126 res!2336627) b!5481161))

(declare-fun m!6496974 () Bool)

(assert (=> d!1741126 m!6496974))

(declare-fun m!6496976 () Bool)

(assert (=> d!1741126 m!6496976))

(declare-fun m!6496978 () Bool)

(assert (=> b!5481161 m!6496978))

(assert (=> b!5480501 d!1741126))

(declare-fun d!1741132 () Bool)

(assert (=> d!1741132 (= (flatMap!1068 z!1189 lambda!292443) (choose!41698 z!1189 lambda!292443))))

(declare-fun bs!1266660 () Bool)

(assert (= bs!1266660 d!1741132))

(declare-fun m!6496980 () Bool)

(assert (=> bs!1266660 m!6496980))

(assert (=> b!5480510 d!1741132))

(declare-fun bm!404553 () Bool)

(declare-fun call!404558 () (InoxSet Context!9498))

(assert (=> bm!404553 (= call!404558 (derivationStepZipperDown!791 (h!68719 (exprs!5249 (h!68720 zl!343))) (Context!9499 (t!375626 (exprs!5249 (h!68720 zl!343)))) (h!68718 s!2326)))))

(declare-fun b!5481163 () Bool)

(declare-fun e!3392258 () (InoxSet Context!9498))

(assert (=> b!5481163 (= e!3392258 ((as const (Array Context!9498 Bool)) false))))

(declare-fun b!5481164 () Bool)

(declare-fun e!3392257 () (InoxSet Context!9498))

(assert (=> b!5481164 (= e!3392257 ((_ map or) call!404558 (derivationStepZipperUp!717 (Context!9499 (t!375626 (exprs!5249 (h!68720 zl!343)))) (h!68718 s!2326))))))

(declare-fun d!1741134 () Bool)

(declare-fun c!957790 () Bool)

(declare-fun e!3392256 () Bool)

(assert (=> d!1741134 (= c!957790 e!3392256)))

(declare-fun res!2336628 () Bool)

(assert (=> d!1741134 (=> (not res!2336628) (not e!3392256))))

(assert (=> d!1741134 (= res!2336628 ((_ is Cons!62271) (exprs!5249 (h!68720 zl!343))))))

(assert (=> d!1741134 (= (derivationStepZipperUp!717 (h!68720 zl!343) (h!68718 s!2326)) e!3392257)))

(declare-fun b!5481162 () Bool)

(assert (=> b!5481162 (= e!3392257 e!3392258)))

(declare-fun c!957789 () Bool)

(assert (=> b!5481162 (= c!957789 ((_ is Cons!62271) (exprs!5249 (h!68720 zl!343))))))

(declare-fun b!5481165 () Bool)

(assert (=> b!5481165 (= e!3392258 call!404558)))

(declare-fun b!5481166 () Bool)

(assert (=> b!5481166 (= e!3392256 (nullable!5488 (h!68719 (exprs!5249 (h!68720 zl!343)))))))

(assert (= (and d!1741134 res!2336628) b!5481166))

(assert (= (and d!1741134 c!957790) b!5481164))

(assert (= (and d!1741134 (not c!957790)) b!5481162))

(assert (= (and b!5481162 c!957789) b!5481165))

(assert (= (and b!5481162 (not c!957789)) b!5481163))

(assert (= (or b!5481164 b!5481165) bm!404553))

(declare-fun m!6496982 () Bool)

(assert (=> bm!404553 m!6496982))

(declare-fun m!6496984 () Bool)

(assert (=> b!5481164 m!6496984))

(declare-fun m!6496986 () Bool)

(assert (=> b!5481166 m!6496986))

(assert (=> b!5480510 d!1741134))

(declare-fun d!1741136 () Bool)

(assert (=> d!1741136 (= (flatMap!1068 z!1189 lambda!292443) (dynLambda!24439 lambda!292443 (h!68720 zl!343)))))

(declare-fun lt!2238376 () Unit!155180)

(assert (=> d!1741136 (= lt!2238376 (choose!41697 z!1189 (h!68720 zl!343) lambda!292443))))

(assert (=> d!1741136 (= z!1189 (store ((as const (Array Context!9498 Bool)) false) (h!68720 zl!343) true))))

(assert (=> d!1741136 (= (lemmaFlatMapOnSingletonSet!600 z!1189 (h!68720 zl!343) lambda!292443) lt!2238376)))

(declare-fun b_lambda!208275 () Bool)

(assert (=> (not b_lambda!208275) (not d!1741136)))

(declare-fun bs!1266661 () Bool)

(assert (= bs!1266661 d!1741136))

(assert (=> bs!1266661 m!6496432))

(declare-fun m!6496988 () Bool)

(assert (=> bs!1266661 m!6496988))

(declare-fun m!6496990 () Bool)

(assert (=> bs!1266661 m!6496990))

(declare-fun m!6496992 () Bool)

(assert (=> bs!1266661 m!6496992))

(assert (=> b!5480510 d!1741136))

(declare-fun bs!1266662 () Bool)

(declare-fun d!1741138 () Bool)

(assert (= bs!1266662 (and d!1741138 b!5480517)))

(declare-fun lambda!292524 () Int)

(assert (=> bs!1266662 (= lambda!292524 lambda!292445)))

(declare-fun bs!1266663 () Bool)

(assert (= bs!1266663 (and d!1741138 d!1740952)))

(assert (=> bs!1266663 (= lambda!292524 lambda!292451)))

(declare-fun bs!1266664 () Bool)

(assert (= bs!1266664 (and d!1741138 d!1741072)))

(assert (=> bs!1266664 (= lambda!292524 lambda!292501)))

(declare-fun bs!1266665 () Bool)

(assert (= bs!1266665 (and d!1741138 d!1740950)))

(assert (=> bs!1266665 (= lambda!292524 lambda!292448)))

(declare-fun bs!1266666 () Bool)

(assert (= bs!1266666 (and d!1741138 d!1741070)))

(assert (=> bs!1266666 (= lambda!292524 lambda!292496)))

(assert (=> d!1741138 (= (inv!81659 (h!68720 zl!343)) (forall!14617 (exprs!5249 (h!68720 zl!343)) lambda!292524))))

(declare-fun bs!1266667 () Bool)

(assert (= bs!1266667 d!1741138))

(declare-fun m!6496994 () Bool)

(assert (=> bs!1266667 m!6496994))

(assert (=> b!5480500 d!1741138))

(declare-fun d!1741140 () Bool)

(declare-fun lt!2238377 () Regex!15365)

(assert (=> d!1741140 (validRegex!7101 lt!2238377)))

(assert (=> d!1741140 (= lt!2238377 (generalisedUnion!1294 (unfocusZipperList!807 (Cons!62272 lt!2238258 Nil!62272))))))

(assert (=> d!1741140 (= (unfocusZipper!1107 (Cons!62272 lt!2238258 Nil!62272)) lt!2238377)))

(declare-fun bs!1266668 () Bool)

(assert (= bs!1266668 d!1741140))

(declare-fun m!6496996 () Bool)

(assert (=> bs!1266668 m!6496996))

(declare-fun m!6496998 () Bool)

(assert (=> bs!1266668 m!6496998))

(assert (=> bs!1266668 m!6496998))

(declare-fun m!6497000 () Bool)

(assert (=> bs!1266668 m!6497000))

(assert (=> b!5480519 d!1741140))

(declare-fun d!1741142 () Bool)

(assert (=> d!1741142 (= (isEmpty!34222 (t!375627 zl!343)) ((_ is Nil!62272) (t!375627 zl!343)))))

(assert (=> b!5480508 d!1741142))

(declare-fun d!1741144 () Bool)

(declare-fun lt!2238378 () Regex!15365)

(assert (=> d!1741144 (validRegex!7101 lt!2238378)))

(assert (=> d!1741144 (= lt!2238378 (generalisedUnion!1294 (unfocusZipperList!807 (Cons!62272 lt!2238253 Nil!62272))))))

(assert (=> d!1741144 (= (unfocusZipper!1107 (Cons!62272 lt!2238253 Nil!62272)) lt!2238378)))

(declare-fun bs!1266669 () Bool)

(assert (= bs!1266669 d!1741144))

(declare-fun m!6497002 () Bool)

(assert (=> bs!1266669 m!6497002))

(declare-fun m!6497004 () Bool)

(assert (=> bs!1266669 m!6497004))

(assert (=> bs!1266669 m!6497004))

(declare-fun m!6497006 () Bool)

(assert (=> bs!1266669 m!6497006))

(assert (=> b!5480528 d!1741144))

(declare-fun b!5481205 () Bool)

(declare-fun e!3392285 () Bool)

(declare-fun lt!2238381 () List!62394)

(assert (=> b!5481205 (= e!3392285 (or (not (= s!2326 Nil!62270)) (= lt!2238381 Nil!62270)))))

(declare-fun d!1741146 () Bool)

(assert (=> d!1741146 e!3392285))

(declare-fun res!2336648 () Bool)

(assert (=> d!1741146 (=> (not res!2336648) (not e!3392285))))

(declare-fun content!11210 (List!62394) (InoxSet C!31000))

(assert (=> d!1741146 (= res!2336648 (= (content!11210 lt!2238381) ((_ map or) (content!11210 Nil!62270) (content!11210 s!2326))))))

(declare-fun e!3392284 () List!62394)

(assert (=> d!1741146 (= lt!2238381 e!3392284)))

(declare-fun c!957799 () Bool)

(assert (=> d!1741146 (= c!957799 ((_ is Nil!62270) Nil!62270))))

(assert (=> d!1741146 (= (++!13706 Nil!62270 s!2326) lt!2238381)))

(declare-fun b!5481202 () Bool)

(assert (=> b!5481202 (= e!3392284 s!2326)))

(declare-fun b!5481204 () Bool)

(declare-fun res!2336649 () Bool)

(assert (=> b!5481204 (=> (not res!2336649) (not e!3392285))))

(declare-fun size!39917 (List!62394) Int)

(assert (=> b!5481204 (= res!2336649 (= (size!39917 lt!2238381) (+ (size!39917 Nil!62270) (size!39917 s!2326))))))

(declare-fun b!5481203 () Bool)

(assert (=> b!5481203 (= e!3392284 (Cons!62270 (h!68718 Nil!62270) (++!13706 (t!375625 Nil!62270) s!2326)))))

(assert (= (and d!1741146 c!957799) b!5481202))

(assert (= (and d!1741146 (not c!957799)) b!5481203))

(assert (= (and d!1741146 res!2336648) b!5481204))

(assert (= (and b!5481204 res!2336649) b!5481205))

(declare-fun m!6497014 () Bool)

(assert (=> d!1741146 m!6497014))

(declare-fun m!6497016 () Bool)

(assert (=> d!1741146 m!6497016))

(declare-fun m!6497018 () Bool)

(assert (=> d!1741146 m!6497018))

(declare-fun m!6497020 () Bool)

(assert (=> b!5481204 m!6497020))

(declare-fun m!6497022 () Bool)

(assert (=> b!5481204 m!6497022))

(declare-fun m!6497024 () Bool)

(assert (=> b!5481204 m!6497024))

(declare-fun m!6497026 () Bool)

(assert (=> b!5481203 m!6497026))

(assert (=> b!5480518 d!1741146))

(declare-fun d!1741150 () Bool)

(assert (=> d!1741150 (= (isDefined!12177 (findConcatSeparationZippers!92 lt!2238232 lt!2238248 Nil!62270 s!2326 s!2326)) (not (isEmpty!34226 (findConcatSeparationZippers!92 lt!2238232 lt!2238248 Nil!62270 s!2326 s!2326))))))

(declare-fun bs!1266670 () Bool)

(assert (= bs!1266670 d!1741150))

(assert (=> bs!1266670 m!6496458))

(declare-fun m!6497028 () Bool)

(assert (=> bs!1266670 m!6497028))

(assert (=> b!5480518 d!1741150))

(declare-fun b!5481301 () Bool)

(declare-fun res!2336669 () Bool)

(declare-fun e!3392334 () Bool)

(assert (=> b!5481301 (=> (not res!2336669) (not e!3392334))))

(declare-fun lt!2238395 () Option!15474)

(assert (=> b!5481301 (= res!2336669 (matchZipper!1583 lt!2238232 (_1!35865 (get!21474 lt!2238395))))))

(declare-fun d!1741152 () Bool)

(declare-fun e!3392335 () Bool)

(assert (=> d!1741152 e!3392335))

(declare-fun res!2336667 () Bool)

(assert (=> d!1741152 (=> res!2336667 e!3392335)))

(assert (=> d!1741152 (= res!2336667 e!3392334)))

(declare-fun res!2336666 () Bool)

(assert (=> d!1741152 (=> (not res!2336666) (not e!3392334))))

(assert (=> d!1741152 (= res!2336666 (isDefined!12177 lt!2238395))))

(declare-fun e!3392331 () Option!15474)

(assert (=> d!1741152 (= lt!2238395 e!3392331)))

(declare-fun c!957820 () Bool)

(declare-fun e!3392332 () Bool)

(assert (=> d!1741152 (= c!957820 e!3392332)))

(declare-fun res!2336668 () Bool)

(assert (=> d!1741152 (=> (not res!2336668) (not e!3392332))))

(assert (=> d!1741152 (= res!2336668 (matchZipper!1583 lt!2238232 Nil!62270))))

(assert (=> d!1741152 (= (++!13706 Nil!62270 s!2326) s!2326)))

(assert (=> d!1741152 (= (findConcatSeparationZippers!92 lt!2238232 lt!2238248 Nil!62270 s!2326 s!2326) lt!2238395)))

(declare-fun b!5481302 () Bool)

(declare-fun e!3392333 () Option!15474)

(assert (=> b!5481302 (= e!3392333 None!15473)))

(declare-fun b!5481303 () Bool)

(assert (=> b!5481303 (= e!3392335 (not (isDefined!12177 lt!2238395)))))

(declare-fun b!5481304 () Bool)

(declare-fun res!2336670 () Bool)

(assert (=> b!5481304 (=> (not res!2336670) (not e!3392334))))

(assert (=> b!5481304 (= res!2336670 (matchZipper!1583 lt!2238248 (_2!35865 (get!21474 lt!2238395))))))

(declare-fun b!5481305 () Bool)

(assert (=> b!5481305 (= e!3392331 e!3392333)))

(declare-fun c!957819 () Bool)

(assert (=> b!5481305 (= c!957819 ((_ is Nil!62270) s!2326))))

(declare-fun b!5481306 () Bool)

(assert (=> b!5481306 (= e!3392332 (matchZipper!1583 lt!2238248 s!2326))))

(declare-fun b!5481307 () Bool)

(assert (=> b!5481307 (= e!3392331 (Some!15473 (tuple2!65125 Nil!62270 s!2326)))))

(declare-fun b!5481308 () Bool)

(declare-fun lt!2238396 () Unit!155180)

(declare-fun lt!2238394 () Unit!155180)

(assert (=> b!5481308 (= lt!2238396 lt!2238394)))

(assert (=> b!5481308 (= (++!13706 (++!13706 Nil!62270 (Cons!62270 (h!68718 s!2326) Nil!62270)) (t!375625 s!2326)) s!2326)))

(assert (=> b!5481308 (= lt!2238394 (lemmaMoveElementToOtherListKeepsConcatEq!1907 Nil!62270 (h!68718 s!2326) (t!375625 s!2326) s!2326))))

(assert (=> b!5481308 (= e!3392333 (findConcatSeparationZippers!92 lt!2238232 lt!2238248 (++!13706 Nil!62270 (Cons!62270 (h!68718 s!2326) Nil!62270)) (t!375625 s!2326) s!2326))))

(declare-fun b!5481309 () Bool)

(assert (=> b!5481309 (= e!3392334 (= (++!13706 (_1!35865 (get!21474 lt!2238395)) (_2!35865 (get!21474 lt!2238395))) s!2326))))

(assert (= (and d!1741152 res!2336668) b!5481306))

(assert (= (and d!1741152 c!957820) b!5481307))

(assert (= (and d!1741152 (not c!957820)) b!5481305))

(assert (= (and b!5481305 c!957819) b!5481302))

(assert (= (and b!5481305 (not c!957819)) b!5481308))

(assert (= (and d!1741152 res!2336666) b!5481301))

(assert (= (and b!5481301 res!2336669) b!5481304))

(assert (= (and b!5481304 res!2336670) b!5481309))

(assert (= (and d!1741152 (not res!2336667)) b!5481303))

(assert (=> b!5481308 m!6496908))

(assert (=> b!5481308 m!6496908))

(assert (=> b!5481308 m!6496910))

(assert (=> b!5481308 m!6496912))

(assert (=> b!5481308 m!6496908))

(declare-fun m!6497058 () Bool)

(assert (=> b!5481308 m!6497058))

(declare-fun m!6497060 () Bool)

(assert (=> b!5481306 m!6497060))

(declare-fun m!6497062 () Bool)

(assert (=> b!5481309 m!6497062))

(declare-fun m!6497064 () Bool)

(assert (=> b!5481309 m!6497064))

(assert (=> b!5481301 m!6497062))

(declare-fun m!6497066 () Bool)

(assert (=> b!5481301 m!6497066))

(assert (=> b!5481304 m!6497062))

(declare-fun m!6497068 () Bool)

(assert (=> b!5481304 m!6497068))

(declare-fun m!6497070 () Bool)

(assert (=> b!5481303 m!6497070))

(assert (=> d!1741152 m!6497070))

(declare-fun m!6497072 () Bool)

(assert (=> d!1741152 m!6497072))

(assert (=> d!1741152 m!6496456))

(assert (=> b!5480518 d!1741152))

(declare-fun d!1741158 () Bool)

(assert (=> d!1741158 (isDefined!12177 (findConcatSeparationZippers!92 lt!2238232 (store ((as const (Array Context!9498 Bool)) false) lt!2238253 true) Nil!62270 s!2326 s!2326))))

(declare-fun lt!2238400 () Unit!155180)

(declare-fun choose!41712 ((InoxSet Context!9498) Context!9498 List!62394) Unit!155180)

(assert (=> d!1741158 (= lt!2238400 (choose!41712 lt!2238232 lt!2238253 s!2326))))

(assert (=> d!1741158 (matchZipper!1583 (appendTo!84 lt!2238232 lt!2238253) s!2326)))

(assert (=> d!1741158 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!92 lt!2238232 lt!2238253 s!2326) lt!2238400)))

(declare-fun bs!1266685 () Bool)

(assert (= bs!1266685 d!1741158))

(assert (=> bs!1266685 m!6496412))

(declare-fun m!6497078 () Bool)

(assert (=> bs!1266685 m!6497078))

(declare-fun m!6497080 () Bool)

(assert (=> bs!1266685 m!6497080))

(assert (=> bs!1266685 m!6496412))

(declare-fun m!6497082 () Bool)

(assert (=> bs!1266685 m!6497082))

(declare-fun m!6497084 () Bool)

(assert (=> bs!1266685 m!6497084))

(assert (=> bs!1266685 m!6496344))

(assert (=> bs!1266685 m!6497082))

(assert (=> bs!1266685 m!6496344))

(assert (=> b!5480518 d!1741158))

(declare-fun d!1741168 () Bool)

(declare-fun lt!2238401 () Regex!15365)

(assert (=> d!1741168 (validRegex!7101 lt!2238401)))

(assert (=> d!1741168 (= lt!2238401 (generalisedUnion!1294 (unfocusZipperList!807 (Cons!62272 lt!2238236 Nil!62272))))))

(assert (=> d!1741168 (= (unfocusZipper!1107 (Cons!62272 lt!2238236 Nil!62272)) lt!2238401)))

(declare-fun bs!1266686 () Bool)

(assert (= bs!1266686 d!1741168))

(declare-fun m!6497086 () Bool)

(assert (=> bs!1266686 m!6497086))

(declare-fun m!6497088 () Bool)

(assert (=> bs!1266686 m!6497088))

(assert (=> bs!1266686 m!6497088))

(declare-fun m!6497090 () Bool)

(assert (=> bs!1266686 m!6497090))

(assert (=> b!5480507 d!1741168))

(declare-fun bs!1266687 () Bool)

(declare-fun b!5481323 () Bool)

(assert (= bs!1266687 (and b!5481323 b!5480651)))

(declare-fun lambda!292531 () Int)

(assert (=> bs!1266687 (not (= lambda!292531 lambda!292459))))

(declare-fun bs!1266688 () Bool)

(assert (= bs!1266688 (and b!5481323 d!1741078)))

(assert (=> bs!1266688 (not (= lambda!292531 lambda!292506))))

(declare-fun bs!1266689 () Bool)

(assert (= bs!1266689 (and b!5481323 b!5480523)))

(assert (=> bs!1266689 (not (= lambda!292531 lambda!292440))))

(declare-fun bs!1266690 () Bool)

(assert (= bs!1266690 (and b!5481323 b!5480647)))

(assert (=> bs!1266690 (= (and (= (reg!15694 lt!2238233) (reg!15694 r!7292)) (= lt!2238233 r!7292)) (= lambda!292531 lambda!292456))))

(assert (=> bs!1266688 (not (= lambda!292531 lambda!292507))))

(assert (=> bs!1266689 (not (= lambda!292531 lambda!292442))))

(declare-fun bs!1266691 () Bool)

(assert (= bs!1266691 (and b!5481323 d!1741114)))

(assert (=> bs!1266691 (not (= lambda!292531 lambda!292519))))

(declare-fun bs!1266692 () Bool)

(assert (= bs!1266692 (and b!5481323 d!1741082)))

(assert (=> bs!1266692 (= (and (= (reg!15694 lt!2238233) (reg!15694 r!7292)) (= lt!2238233 (Star!15365 (reg!15694 r!7292)))) (= lambda!292531 lambda!292516))))

(assert (=> bs!1266689 (= (and (= (reg!15694 lt!2238233) (reg!15694 r!7292)) (= lt!2238233 r!7292)) (= lambda!292531 lambda!292441))))

(assert (=> bs!1266692 (not (= lambda!292531 lambda!292515))))

(assert (=> b!5481323 true))

(assert (=> b!5481323 true))

(declare-fun bs!1266693 () Bool)

(declare-fun b!5481327 () Bool)

(assert (= bs!1266693 (and b!5481327 b!5481323)))

(declare-fun lambda!292532 () Int)

(assert (=> bs!1266693 (not (= lambda!292532 lambda!292531))))

(declare-fun bs!1266694 () Bool)

(assert (= bs!1266694 (and b!5481327 b!5480651)))

(assert (=> bs!1266694 (= (and (= (regOne!31242 lt!2238233) (regOne!31242 r!7292)) (= (regTwo!31242 lt!2238233) (regTwo!31242 r!7292))) (= lambda!292532 lambda!292459))))

(declare-fun bs!1266695 () Bool)

(assert (= bs!1266695 (and b!5481327 d!1741078)))

(assert (=> bs!1266695 (not (= lambda!292532 lambda!292506))))

(declare-fun bs!1266696 () Bool)

(assert (= bs!1266696 (and b!5481327 b!5480523)))

(assert (=> bs!1266696 (not (= lambda!292532 lambda!292440))))

(declare-fun bs!1266697 () Bool)

(assert (= bs!1266697 (and b!5481327 b!5480647)))

(assert (=> bs!1266697 (not (= lambda!292532 lambda!292456))))

(assert (=> bs!1266695 (= (and (= (regOne!31242 lt!2238233) (reg!15694 r!7292)) (= (regTwo!31242 lt!2238233) r!7292)) (= lambda!292532 lambda!292507))))

(assert (=> bs!1266696 (= (and (= (regOne!31242 lt!2238233) (reg!15694 r!7292)) (= (regTwo!31242 lt!2238233) r!7292)) (= lambda!292532 lambda!292442))))

(declare-fun bs!1266698 () Bool)

(assert (= bs!1266698 (and b!5481327 d!1741114)))

(assert (=> bs!1266698 (not (= lambda!292532 lambda!292519))))

(declare-fun bs!1266699 () Bool)

(assert (= bs!1266699 (and b!5481327 d!1741082)))

(assert (=> bs!1266699 (not (= lambda!292532 lambda!292516))))

(assert (=> bs!1266696 (not (= lambda!292532 lambda!292441))))

(assert (=> bs!1266699 (not (= lambda!292532 lambda!292515))))

(assert (=> b!5481327 true))

(assert (=> b!5481327 true))

(declare-fun e!3392348 () Bool)

(declare-fun call!404568 () Bool)

(assert (=> b!5481323 (= e!3392348 call!404568)))

(declare-fun bm!404563 () Bool)

(declare-fun call!404569 () Bool)

(assert (=> bm!404563 (= call!404569 (isEmpty!34223 s!2326))))

(declare-fun b!5481324 () Bool)

(declare-fun e!3392350 () Bool)

(declare-fun e!3392349 () Bool)

(assert (=> b!5481324 (= e!3392350 e!3392349)))

(declare-fun c!957821 () Bool)

(assert (=> b!5481324 (= c!957821 ((_ is Star!15365) lt!2238233))))

(declare-fun b!5481325 () Bool)

(declare-fun c!957824 () Bool)

(assert (=> b!5481325 (= c!957824 ((_ is ElementMatch!15365) lt!2238233))))

(declare-fun e!3392347 () Bool)

(declare-fun e!3392346 () Bool)

(assert (=> b!5481325 (= e!3392347 e!3392346)))

(declare-fun b!5481326 () Bool)

(declare-fun c!957822 () Bool)

(assert (=> b!5481326 (= c!957822 ((_ is Union!15365) lt!2238233))))

(assert (=> b!5481326 (= e!3392346 e!3392350)))

(declare-fun d!1741170 () Bool)

(declare-fun c!957823 () Bool)

(assert (=> d!1741170 (= c!957823 ((_ is EmptyExpr!15365) lt!2238233))))

(declare-fun e!3392351 () Bool)

(assert (=> d!1741170 (= (matchRSpec!2468 lt!2238233 s!2326) e!3392351)))

(declare-fun bm!404564 () Bool)

(assert (=> bm!404564 (= call!404568 (Exists!2544 (ite c!957821 lambda!292531 lambda!292532)))))

(assert (=> b!5481327 (= e!3392349 call!404568)))

(declare-fun b!5481328 () Bool)

(assert (=> b!5481328 (= e!3392351 e!3392347)))

(declare-fun res!2336673 () Bool)

(assert (=> b!5481328 (= res!2336673 (not ((_ is EmptyLang!15365) lt!2238233)))))

(assert (=> b!5481328 (=> (not res!2336673) (not e!3392347))))

(declare-fun b!5481329 () Bool)

(assert (=> b!5481329 (= e!3392351 call!404569)))

(declare-fun b!5481330 () Bool)

(declare-fun e!3392345 () Bool)

(assert (=> b!5481330 (= e!3392350 e!3392345)))

(declare-fun res!2336672 () Bool)

(assert (=> b!5481330 (= res!2336672 (matchRSpec!2468 (regOne!31243 lt!2238233) s!2326))))

(assert (=> b!5481330 (=> res!2336672 e!3392345)))

(declare-fun b!5481331 () Bool)

(assert (=> b!5481331 (= e!3392345 (matchRSpec!2468 (regTwo!31243 lt!2238233) s!2326))))

(declare-fun b!5481332 () Bool)

(declare-fun res!2336671 () Bool)

(assert (=> b!5481332 (=> res!2336671 e!3392348)))

(assert (=> b!5481332 (= res!2336671 call!404569)))

(assert (=> b!5481332 (= e!3392349 e!3392348)))

(declare-fun b!5481333 () Bool)

(assert (=> b!5481333 (= e!3392346 (= s!2326 (Cons!62270 (c!957595 lt!2238233) Nil!62270)))))

(assert (= (and d!1741170 c!957823) b!5481329))

(assert (= (and d!1741170 (not c!957823)) b!5481328))

(assert (= (and b!5481328 res!2336673) b!5481325))

(assert (= (and b!5481325 c!957824) b!5481333))

(assert (= (and b!5481325 (not c!957824)) b!5481326))

(assert (= (and b!5481326 c!957822) b!5481330))

(assert (= (and b!5481326 (not c!957822)) b!5481324))

(assert (= (and b!5481330 (not res!2336672)) b!5481331))

(assert (= (and b!5481324 c!957821) b!5481332))

(assert (= (and b!5481324 (not c!957821)) b!5481327))

(assert (= (and b!5481332 (not res!2336671)) b!5481323))

(assert (= (or b!5481323 b!5481327) bm!404564))

(assert (= (or b!5481329 b!5481332) bm!404563))

(assert (=> bm!404563 m!6496448))

(declare-fun m!6497092 () Bool)

(assert (=> bm!404564 m!6497092))

(declare-fun m!6497094 () Bool)

(assert (=> b!5481330 m!6497094))

(declare-fun m!6497096 () Bool)

(assert (=> b!5481331 m!6497096))

(assert (=> b!5480497 d!1741170))

(declare-fun b!5481334 () Bool)

(declare-fun e!3392358 () Bool)

(assert (=> b!5481334 (= e!3392358 (nullable!5488 lt!2238233))))

(declare-fun b!5481336 () Bool)

(declare-fun res!2336674 () Bool)

(declare-fun e!3392357 () Bool)

(assert (=> b!5481336 (=> res!2336674 e!3392357)))

(declare-fun e!3392356 () Bool)

(assert (=> b!5481336 (= res!2336674 e!3392356)))

(declare-fun res!2336680 () Bool)

(assert (=> b!5481336 (=> (not res!2336680) (not e!3392356))))

(declare-fun lt!2238402 () Bool)

(assert (=> b!5481336 (= res!2336680 lt!2238402)))

(declare-fun b!5481337 () Bool)

(assert (=> b!5481337 (= e!3392358 (matchR!7550 (derivativeStep!4332 lt!2238233 (head!11740 s!2326)) (tail!10837 s!2326)))))

(declare-fun b!5481338 () Bool)

(declare-fun e!3392353 () Bool)

(declare-fun e!3392352 () Bool)

(assert (=> b!5481338 (= e!3392353 e!3392352)))

(declare-fun res!2336679 () Bool)

(assert (=> b!5481338 (=> res!2336679 e!3392352)))

(declare-fun call!404570 () Bool)

(assert (=> b!5481338 (= res!2336679 call!404570)))

(declare-fun b!5481339 () Bool)

(assert (=> b!5481339 (= e!3392357 e!3392353)))

(declare-fun res!2336677 () Bool)

(assert (=> b!5481339 (=> (not res!2336677) (not e!3392353))))

(assert (=> b!5481339 (= res!2336677 (not lt!2238402))))

(declare-fun b!5481340 () Bool)

(declare-fun e!3392355 () Bool)

(assert (=> b!5481340 (= e!3392355 (= lt!2238402 call!404570))))

(declare-fun b!5481341 () Bool)

(declare-fun res!2336678 () Bool)

(assert (=> b!5481341 (=> res!2336678 e!3392352)))

(assert (=> b!5481341 (= res!2336678 (not (isEmpty!34223 (tail!10837 s!2326))))))

(declare-fun b!5481342 () Bool)

(declare-fun res!2336681 () Bool)

(assert (=> b!5481342 (=> res!2336681 e!3392357)))

(assert (=> b!5481342 (= res!2336681 (not ((_ is ElementMatch!15365) lt!2238233)))))

(declare-fun e!3392354 () Bool)

(assert (=> b!5481342 (= e!3392354 e!3392357)))

(declare-fun b!5481343 () Bool)

(assert (=> b!5481343 (= e!3392356 (= (head!11740 s!2326) (c!957595 lt!2238233)))))

(declare-fun b!5481344 () Bool)

(declare-fun res!2336675 () Bool)

(assert (=> b!5481344 (=> (not res!2336675) (not e!3392356))))

(assert (=> b!5481344 (= res!2336675 (not call!404570))))

(declare-fun bm!404565 () Bool)

(assert (=> bm!404565 (= call!404570 (isEmpty!34223 s!2326))))

(declare-fun b!5481345 () Bool)

(declare-fun res!2336676 () Bool)

(assert (=> b!5481345 (=> (not res!2336676) (not e!3392356))))

(assert (=> b!5481345 (= res!2336676 (isEmpty!34223 (tail!10837 s!2326)))))

(declare-fun b!5481346 () Bool)

(assert (=> b!5481346 (= e!3392355 e!3392354)))

(declare-fun c!957826 () Bool)

(assert (=> b!5481346 (= c!957826 ((_ is EmptyLang!15365) lt!2238233))))

(declare-fun b!5481347 () Bool)

(assert (=> b!5481347 (= e!3392352 (not (= (head!11740 s!2326) (c!957595 lt!2238233))))))

(declare-fun b!5481335 () Bool)

(assert (=> b!5481335 (= e!3392354 (not lt!2238402))))

(declare-fun d!1741172 () Bool)

(assert (=> d!1741172 e!3392355))

(declare-fun c!957825 () Bool)

(assert (=> d!1741172 (= c!957825 ((_ is EmptyExpr!15365) lt!2238233))))

(assert (=> d!1741172 (= lt!2238402 e!3392358)))

(declare-fun c!957827 () Bool)

(assert (=> d!1741172 (= c!957827 (isEmpty!34223 s!2326))))

(assert (=> d!1741172 (validRegex!7101 lt!2238233)))

(assert (=> d!1741172 (= (matchR!7550 lt!2238233 s!2326) lt!2238402)))

(assert (= (and d!1741172 c!957827) b!5481334))

(assert (= (and d!1741172 (not c!957827)) b!5481337))

(assert (= (and d!1741172 c!957825) b!5481340))

(assert (= (and d!1741172 (not c!957825)) b!5481346))

(assert (= (and b!5481346 c!957826) b!5481335))

(assert (= (and b!5481346 (not c!957826)) b!5481342))

(assert (= (and b!5481342 (not res!2336681)) b!5481336))

(assert (= (and b!5481336 res!2336680) b!5481344))

(assert (= (and b!5481344 res!2336675) b!5481345))

(assert (= (and b!5481345 res!2336676) b!5481343))

(assert (= (and b!5481336 (not res!2336674)) b!5481339))

(assert (= (and b!5481339 res!2336677) b!5481338))

(assert (= (and b!5481338 (not res!2336679)) b!5481341))

(assert (= (and b!5481341 (not res!2336678)) b!5481347))

(assert (= (or b!5481340 b!5481338 b!5481344) bm!404565))

(declare-fun m!6497098 () Bool)

(assert (=> b!5481334 m!6497098))

(assert (=> b!5481341 m!6496620))

(assert (=> b!5481341 m!6496620))

(assert (=> b!5481341 m!6496622))

(assert (=> b!5481337 m!6496624))

(assert (=> b!5481337 m!6496624))

(declare-fun m!6497100 () Bool)

(assert (=> b!5481337 m!6497100))

(assert (=> b!5481337 m!6496620))

(assert (=> b!5481337 m!6497100))

(assert (=> b!5481337 m!6496620))

(declare-fun m!6497102 () Bool)

(assert (=> b!5481337 m!6497102))

(assert (=> b!5481343 m!6496624))

(assert (=> bm!404565 m!6496448))

(assert (=> d!1741172 m!6496448))

(declare-fun m!6497104 () Bool)

(assert (=> d!1741172 m!6497104))

(assert (=> b!5481347 m!6496624))

(assert (=> b!5481345 m!6496620))

(assert (=> b!5481345 m!6496620))

(assert (=> b!5481345 m!6496622))

(assert (=> b!5480497 d!1741172))

(declare-fun d!1741174 () Bool)

(assert (=> d!1741174 (= (matchR!7550 lt!2238233 s!2326) (matchRSpec!2468 lt!2238233 s!2326))))

(declare-fun lt!2238403 () Unit!155180)

(assert (=> d!1741174 (= lt!2238403 (choose!41696 lt!2238233 s!2326))))

(assert (=> d!1741174 (validRegex!7101 lt!2238233)))

(assert (=> d!1741174 (= (mainMatchTheorem!2468 lt!2238233 s!2326) lt!2238403)))

(declare-fun bs!1266700 () Bool)

(assert (= bs!1266700 d!1741174))

(assert (=> bs!1266700 m!6496398))

(assert (=> bs!1266700 m!6496396))

(declare-fun m!6497106 () Bool)

(assert (=> bs!1266700 m!6497106))

(assert (=> bs!1266700 m!6497104))

(assert (=> b!5480497 d!1741174))

(declare-fun b!5481366 () Bool)

(declare-fun e!3392377 () Bool)

(declare-fun e!3392378 () Bool)

(assert (=> b!5481366 (= e!3392377 e!3392378)))

(declare-fun res!2336695 () Bool)

(assert (=> b!5481366 (= res!2336695 (not (nullable!5488 (reg!15694 r!7292))))))

(assert (=> b!5481366 (=> (not res!2336695) (not e!3392378))))

(declare-fun b!5481367 () Bool)

(declare-fun e!3392379 () Bool)

(declare-fun e!3392376 () Bool)

(assert (=> b!5481367 (= e!3392379 e!3392376)))

(declare-fun res!2336696 () Bool)

(assert (=> b!5481367 (=> (not res!2336696) (not e!3392376))))

(declare-fun call!404578 () Bool)

(assert (=> b!5481367 (= res!2336696 call!404578)))

(declare-fun b!5481368 () Bool)

(declare-fun call!404579 () Bool)

(assert (=> b!5481368 (= e!3392378 call!404579)))

(declare-fun b!5481369 () Bool)

(declare-fun call!404577 () Bool)

(assert (=> b!5481369 (= e!3392376 call!404577)))

(declare-fun b!5481370 () Bool)

(declare-fun e!3392373 () Bool)

(assert (=> b!5481370 (= e!3392373 call!404577)))

(declare-fun b!5481371 () Bool)

(declare-fun res!2336692 () Bool)

(assert (=> b!5481371 (=> (not res!2336692) (not e!3392373))))

(assert (=> b!5481371 (= res!2336692 call!404578)))

(declare-fun e!3392374 () Bool)

(assert (=> b!5481371 (= e!3392374 e!3392373)))

(declare-fun b!5481372 () Bool)

(assert (=> b!5481372 (= e!3392377 e!3392374)))

(declare-fun c!957832 () Bool)

(assert (=> b!5481372 (= c!957832 ((_ is Union!15365) r!7292))))

(declare-fun bm!404572 () Bool)

(declare-fun c!957833 () Bool)

(assert (=> bm!404572 (= call!404579 (validRegex!7101 (ite c!957833 (reg!15694 r!7292) (ite c!957832 (regOne!31243 r!7292) (regOne!31242 r!7292)))))))

(declare-fun b!5481373 () Bool)

(declare-fun e!3392375 () Bool)

(assert (=> b!5481373 (= e!3392375 e!3392377)))

(assert (=> b!5481373 (= c!957833 ((_ is Star!15365) r!7292))))

(declare-fun bm!404573 () Bool)

(assert (=> bm!404573 (= call!404577 (validRegex!7101 (ite c!957832 (regTwo!31243 r!7292) (regTwo!31242 r!7292))))))

(declare-fun b!5481374 () Bool)

(declare-fun res!2336694 () Bool)

(assert (=> b!5481374 (=> res!2336694 e!3392379)))

(assert (=> b!5481374 (= res!2336694 (not ((_ is Concat!24210) r!7292)))))

(assert (=> b!5481374 (= e!3392374 e!3392379)))

(declare-fun d!1741176 () Bool)

(declare-fun res!2336693 () Bool)

(assert (=> d!1741176 (=> res!2336693 e!3392375)))

(assert (=> d!1741176 (= res!2336693 ((_ is ElementMatch!15365) r!7292))))

(assert (=> d!1741176 (= (validRegex!7101 r!7292) e!3392375)))

(declare-fun bm!404574 () Bool)

(assert (=> bm!404574 (= call!404578 call!404579)))

(assert (= (and d!1741176 (not res!2336693)) b!5481373))

(assert (= (and b!5481373 c!957833) b!5481366))

(assert (= (and b!5481373 (not c!957833)) b!5481372))

(assert (= (and b!5481366 res!2336695) b!5481368))

(assert (= (and b!5481372 c!957832) b!5481371))

(assert (= (and b!5481372 (not c!957832)) b!5481374))

(assert (= (and b!5481371 res!2336692) b!5481370))

(assert (= (and b!5481374 (not res!2336694)) b!5481367))

(assert (= (and b!5481367 res!2336696) b!5481369))

(assert (= (or b!5481370 b!5481369) bm!404573))

(assert (= (or b!5481371 b!5481367) bm!404574))

(assert (= (or b!5481368 bm!404574) bm!404572))

(declare-fun m!6497108 () Bool)

(assert (=> b!5481366 m!6497108))

(declare-fun m!6497110 () Bool)

(assert (=> bm!404572 m!6497110))

(declare-fun m!6497112 () Bool)

(assert (=> bm!404573 m!6497112))

(assert (=> start!573258 d!1741176))

(declare-fun d!1741178 () Bool)

(declare-fun choose!41714 ((InoxSet Context!9498) Int) (InoxSet Context!9498))

(assert (=> d!1741178 (= (map!14304 lt!2238232 lambda!292444) (choose!41714 lt!2238232 lambda!292444))))

(declare-fun bs!1266701 () Bool)

(assert (= bs!1266701 d!1741178))

(declare-fun m!6497114 () Bool)

(assert (=> bs!1266701 m!6497114))

(assert (=> b!5480517 d!1741178))

(declare-fun d!1741180 () Bool)

(assert (=> d!1741180 (forall!14617 (++!13705 (Cons!62271 (reg!15694 r!7292) Nil!62271) lt!2238249) lambda!292445)))

(declare-fun lt!2238406 () Unit!155180)

(declare-fun choose!41715 (List!62395 List!62395 Int) Unit!155180)

(assert (=> d!1741180 (= lt!2238406 (choose!41715 (Cons!62271 (reg!15694 r!7292) Nil!62271) lt!2238249 lambda!292445))))

(assert (=> d!1741180 (forall!14617 (Cons!62271 (reg!15694 r!7292) Nil!62271) lambda!292445)))

(assert (=> d!1741180 (= (lemmaConcatPreservesForall!266 (Cons!62271 (reg!15694 r!7292) Nil!62271) lt!2238249 lambda!292445) lt!2238406)))

(declare-fun bs!1266702 () Bool)

(assert (= bs!1266702 d!1741180))

(assert (=> bs!1266702 m!6496406))

(assert (=> bs!1266702 m!6496406))

(declare-fun m!6497116 () Bool)

(assert (=> bs!1266702 m!6497116))

(declare-fun m!6497118 () Bool)

(assert (=> bs!1266702 m!6497118))

(declare-fun m!6497120 () Bool)

(assert (=> bs!1266702 m!6497120))

(assert (=> b!5480517 d!1741180))

(declare-fun b!5481385 () Bool)

(declare-fun res!2336701 () Bool)

(declare-fun e!3392385 () Bool)

(assert (=> b!5481385 (=> (not res!2336701) (not e!3392385))))

(declare-fun lt!2238409 () List!62395)

(declare-fun size!39919 (List!62395) Int)

(assert (=> b!5481385 (= res!2336701 (= (size!39919 lt!2238409) (+ (size!39919 (Cons!62271 (reg!15694 r!7292) Nil!62271)) (size!39919 lt!2238249))))))

(declare-fun b!5481384 () Bool)

(declare-fun e!3392384 () List!62395)

(assert (=> b!5481384 (= e!3392384 (Cons!62271 (h!68719 (Cons!62271 (reg!15694 r!7292) Nil!62271)) (++!13705 (t!375626 (Cons!62271 (reg!15694 r!7292) Nil!62271)) lt!2238249)))))

(declare-fun b!5481383 () Bool)

(assert (=> b!5481383 (= e!3392384 lt!2238249)))

(declare-fun d!1741182 () Bool)

(assert (=> d!1741182 e!3392385))

(declare-fun res!2336702 () Bool)

(assert (=> d!1741182 (=> (not res!2336702) (not e!3392385))))

(declare-fun content!11212 (List!62395) (InoxSet Regex!15365))

(assert (=> d!1741182 (= res!2336702 (= (content!11212 lt!2238409) ((_ map or) (content!11212 (Cons!62271 (reg!15694 r!7292) Nil!62271)) (content!11212 lt!2238249))))))

(assert (=> d!1741182 (= lt!2238409 e!3392384)))

(declare-fun c!957836 () Bool)

(assert (=> d!1741182 (= c!957836 ((_ is Nil!62271) (Cons!62271 (reg!15694 r!7292) Nil!62271)))))

(assert (=> d!1741182 (= (++!13705 (Cons!62271 (reg!15694 r!7292) Nil!62271) lt!2238249) lt!2238409)))

(declare-fun b!5481386 () Bool)

(assert (=> b!5481386 (= e!3392385 (or (not (= lt!2238249 Nil!62271)) (= lt!2238409 (Cons!62271 (reg!15694 r!7292) Nil!62271))))))

(assert (= (and d!1741182 c!957836) b!5481383))

(assert (= (and d!1741182 (not c!957836)) b!5481384))

(assert (= (and d!1741182 res!2336702) b!5481385))

(assert (= (and b!5481385 res!2336701) b!5481386))

(declare-fun m!6497122 () Bool)

(assert (=> b!5481385 m!6497122))

(declare-fun m!6497124 () Bool)

(assert (=> b!5481385 m!6497124))

(declare-fun m!6497126 () Bool)

(assert (=> b!5481385 m!6497126))

(declare-fun m!6497128 () Bool)

(assert (=> b!5481384 m!6497128))

(declare-fun m!6497130 () Bool)

(assert (=> d!1741182 m!6497130))

(declare-fun m!6497132 () Bool)

(assert (=> d!1741182 m!6497132))

(declare-fun m!6497134 () Bool)

(assert (=> d!1741182 m!6497134))

(assert (=> b!5480517 d!1741182))

(declare-fun d!1741184 () Bool)

(declare-fun dynLambda!24441 (Int Context!9498) Context!9498)

(assert (=> d!1741184 (= (map!14304 lt!2238232 lambda!292444) (store ((as const (Array Context!9498 Bool)) false) (dynLambda!24441 lambda!292444 lt!2238258) true))))

(declare-fun lt!2238412 () Unit!155180)

(declare-fun choose!41716 ((InoxSet Context!9498) Context!9498 Int) Unit!155180)

(assert (=> d!1741184 (= lt!2238412 (choose!41716 lt!2238232 lt!2238258 lambda!292444))))

(assert (=> d!1741184 (= lt!2238232 (store ((as const (Array Context!9498 Bool)) false) lt!2238258 true))))

(assert (=> d!1741184 (= (lemmaMapOnSingletonSet!96 lt!2238232 lt!2238258 lambda!292444) lt!2238412)))

(declare-fun b_lambda!208287 () Bool)

(assert (=> (not b_lambda!208287) (not d!1741184)))

(declare-fun bs!1266703 () Bool)

(assert (= bs!1266703 d!1741184))

(assert (=> bs!1266703 m!6496354))

(assert (=> bs!1266703 m!6496414))

(declare-fun m!6497136 () Bool)

(assert (=> bs!1266703 m!6497136))

(declare-fun m!6497138 () Bool)

(assert (=> bs!1266703 m!6497138))

(declare-fun m!6497140 () Bool)

(assert (=> bs!1266703 m!6497140))

(assert (=> bs!1266703 m!6497136))

(assert (=> b!5480517 d!1741184))

(declare-fun bs!1266704 () Bool)

(declare-fun d!1741186 () Bool)

(assert (= bs!1266704 (and d!1741186 b!5480517)))

(declare-fun lambda!292537 () Int)

(assert (=> bs!1266704 (= (= (exprs!5249 lt!2238253) lt!2238249) (= lambda!292537 lambda!292444))))

(assert (=> d!1741186 true))

(assert (=> d!1741186 (= (appendTo!84 lt!2238232 lt!2238253) (map!14304 lt!2238232 lambda!292537))))

(declare-fun bs!1266705 () Bool)

(assert (= bs!1266705 d!1741186))

(declare-fun m!6497142 () Bool)

(assert (=> bs!1266705 m!6497142))

(assert (=> b!5480517 d!1741186))

(declare-fun condSetEmpty!36045 () Bool)

(assert (=> setNonEmpty!36039 (= condSetEmpty!36045 (= setRest!36039 ((as const (Array Context!9498 Bool)) false)))))

(declare-fun setRes!36045 () Bool)

(assert (=> setNonEmpty!36039 (= tp!1506207 setRes!36045)))

(declare-fun setIsEmpty!36045 () Bool)

(assert (=> setIsEmpty!36045 setRes!36045))

(declare-fun setElem!36045 () Context!9498)

(declare-fun tp!1506278 () Bool)

(declare-fun setNonEmpty!36045 () Bool)

(declare-fun e!3392388 () Bool)

(assert (=> setNonEmpty!36045 (= setRes!36045 (and tp!1506278 (inv!81659 setElem!36045) e!3392388))))

(declare-fun setRest!36045 () (InoxSet Context!9498))

(assert (=> setNonEmpty!36045 (= setRest!36039 ((_ map or) (store ((as const (Array Context!9498 Bool)) false) setElem!36045 true) setRest!36045))))

(declare-fun b!5481393 () Bool)

(declare-fun tp!1506279 () Bool)

(assert (=> b!5481393 (= e!3392388 tp!1506279)))

(assert (= (and setNonEmpty!36039 condSetEmpty!36045) setIsEmpty!36045))

(assert (= (and setNonEmpty!36039 (not condSetEmpty!36045)) setNonEmpty!36045))

(assert (= setNonEmpty!36045 b!5481393))

(declare-fun m!6497144 () Bool)

(assert (=> setNonEmpty!36045 m!6497144))

(declare-fun b!5481404 () Bool)

(declare-fun e!3392391 () Bool)

(assert (=> b!5481404 (= e!3392391 tp_is_empty!39983)))

(declare-fun b!5481406 () Bool)

(declare-fun tp!1506291 () Bool)

(assert (=> b!5481406 (= e!3392391 tp!1506291)))

(declare-fun b!5481407 () Bool)

(declare-fun tp!1506294 () Bool)

(declare-fun tp!1506293 () Bool)

(assert (=> b!5481407 (= e!3392391 (and tp!1506294 tp!1506293))))

(assert (=> b!5480515 (= tp!1506214 e!3392391)))

(declare-fun b!5481405 () Bool)

(declare-fun tp!1506290 () Bool)

(declare-fun tp!1506292 () Bool)

(assert (=> b!5481405 (= e!3392391 (and tp!1506290 tp!1506292))))

(assert (= (and b!5480515 ((_ is ElementMatch!15365) (regOne!31242 r!7292))) b!5481404))

(assert (= (and b!5480515 ((_ is Concat!24210) (regOne!31242 r!7292))) b!5481405))

(assert (= (and b!5480515 ((_ is Star!15365) (regOne!31242 r!7292))) b!5481406))

(assert (= (and b!5480515 ((_ is Union!15365) (regOne!31242 r!7292))) b!5481407))

(declare-fun b!5481408 () Bool)

(declare-fun e!3392392 () Bool)

(assert (=> b!5481408 (= e!3392392 tp_is_empty!39983)))

(declare-fun b!5481410 () Bool)

(declare-fun tp!1506296 () Bool)

(assert (=> b!5481410 (= e!3392392 tp!1506296)))

(declare-fun b!5481411 () Bool)

(declare-fun tp!1506299 () Bool)

(declare-fun tp!1506298 () Bool)

(assert (=> b!5481411 (= e!3392392 (and tp!1506299 tp!1506298))))

(assert (=> b!5480515 (= tp!1506211 e!3392392)))

(declare-fun b!5481409 () Bool)

(declare-fun tp!1506295 () Bool)

(declare-fun tp!1506297 () Bool)

(assert (=> b!5481409 (= e!3392392 (and tp!1506295 tp!1506297))))

(assert (= (and b!5480515 ((_ is ElementMatch!15365) (regTwo!31242 r!7292))) b!5481408))

(assert (= (and b!5480515 ((_ is Concat!24210) (regTwo!31242 r!7292))) b!5481409))

(assert (= (and b!5480515 ((_ is Star!15365) (regTwo!31242 r!7292))) b!5481410))

(assert (= (and b!5480515 ((_ is Union!15365) (regTwo!31242 r!7292))) b!5481411))

(declare-fun b!5481419 () Bool)

(declare-fun e!3392398 () Bool)

(declare-fun tp!1506304 () Bool)

(assert (=> b!5481419 (= e!3392398 tp!1506304)))

(declare-fun e!3392397 () Bool)

(declare-fun b!5481418 () Bool)

(declare-fun tp!1506305 () Bool)

(assert (=> b!5481418 (= e!3392397 (and (inv!81659 (h!68720 (t!375627 zl!343))) e!3392398 tp!1506305))))

(assert (=> b!5480500 (= tp!1506209 e!3392397)))

(assert (= b!5481418 b!5481419))

(assert (= (and b!5480500 ((_ is Cons!62272) (t!375627 zl!343))) b!5481418))

(declare-fun m!6497146 () Bool)

(assert (=> b!5481418 m!6497146))

(declare-fun b!5481420 () Bool)

(declare-fun e!3392399 () Bool)

(assert (=> b!5481420 (= e!3392399 tp_is_empty!39983)))

(declare-fun b!5481422 () Bool)

(declare-fun tp!1506307 () Bool)

(assert (=> b!5481422 (= e!3392399 tp!1506307)))

(declare-fun b!5481423 () Bool)

(declare-fun tp!1506310 () Bool)

(declare-fun tp!1506309 () Bool)

(assert (=> b!5481423 (= e!3392399 (and tp!1506310 tp!1506309))))

(assert (=> b!5480520 (= tp!1506206 e!3392399)))

(declare-fun b!5481421 () Bool)

(declare-fun tp!1506306 () Bool)

(declare-fun tp!1506308 () Bool)

(assert (=> b!5481421 (= e!3392399 (and tp!1506306 tp!1506308))))

(assert (= (and b!5480520 ((_ is ElementMatch!15365) (regOne!31243 r!7292))) b!5481420))

(assert (= (and b!5480520 ((_ is Concat!24210) (regOne!31243 r!7292))) b!5481421))

(assert (= (and b!5480520 ((_ is Star!15365) (regOne!31243 r!7292))) b!5481422))

(assert (= (and b!5480520 ((_ is Union!15365) (regOne!31243 r!7292))) b!5481423))

(declare-fun b!5481424 () Bool)

(declare-fun e!3392400 () Bool)

(assert (=> b!5481424 (= e!3392400 tp_is_empty!39983)))

(declare-fun b!5481426 () Bool)

(declare-fun tp!1506312 () Bool)

(assert (=> b!5481426 (= e!3392400 tp!1506312)))

(declare-fun b!5481427 () Bool)

(declare-fun tp!1506315 () Bool)

(declare-fun tp!1506314 () Bool)

(assert (=> b!5481427 (= e!3392400 (and tp!1506315 tp!1506314))))

(assert (=> b!5480520 (= tp!1506208 e!3392400)))

(declare-fun b!5481425 () Bool)

(declare-fun tp!1506311 () Bool)

(declare-fun tp!1506313 () Bool)

(assert (=> b!5481425 (= e!3392400 (and tp!1506311 tp!1506313))))

(assert (= (and b!5480520 ((_ is ElementMatch!15365) (regTwo!31243 r!7292))) b!5481424))

(assert (= (and b!5480520 ((_ is Concat!24210) (regTwo!31243 r!7292))) b!5481425))

(assert (= (and b!5480520 ((_ is Star!15365) (regTwo!31243 r!7292))) b!5481426))

(assert (= (and b!5480520 ((_ is Union!15365) (regTwo!31243 r!7292))) b!5481427))

(declare-fun b!5481428 () Bool)

(declare-fun e!3392401 () Bool)

(assert (=> b!5481428 (= e!3392401 tp_is_empty!39983)))

(declare-fun b!5481430 () Bool)

(declare-fun tp!1506317 () Bool)

(assert (=> b!5481430 (= e!3392401 tp!1506317)))

(declare-fun b!5481431 () Bool)

(declare-fun tp!1506320 () Bool)

(declare-fun tp!1506319 () Bool)

(assert (=> b!5481431 (= e!3392401 (and tp!1506320 tp!1506319))))

(assert (=> b!5480524 (= tp!1506212 e!3392401)))

(declare-fun b!5481429 () Bool)

(declare-fun tp!1506316 () Bool)

(declare-fun tp!1506318 () Bool)

(assert (=> b!5481429 (= e!3392401 (and tp!1506316 tp!1506318))))

(assert (= (and b!5480524 ((_ is ElementMatch!15365) (reg!15694 r!7292))) b!5481428))

(assert (= (and b!5480524 ((_ is Concat!24210) (reg!15694 r!7292))) b!5481429))

(assert (= (and b!5480524 ((_ is Star!15365) (reg!15694 r!7292))) b!5481430))

(assert (= (and b!5480524 ((_ is Union!15365) (reg!15694 r!7292))) b!5481431))

(declare-fun b!5481436 () Bool)

(declare-fun e!3392404 () Bool)

(declare-fun tp!1506323 () Bool)

(assert (=> b!5481436 (= e!3392404 (and tp_is_empty!39983 tp!1506323))))

(assert (=> b!5480499 (= tp!1506210 e!3392404)))

(assert (= (and b!5480499 ((_ is Cons!62270) (t!375625 s!2326))) b!5481436))

(declare-fun b!5481441 () Bool)

(declare-fun e!3392407 () Bool)

(declare-fun tp!1506328 () Bool)

(declare-fun tp!1506329 () Bool)

(assert (=> b!5481441 (= e!3392407 (and tp!1506328 tp!1506329))))

(assert (=> b!5480513 (= tp!1506215 e!3392407)))

(assert (= (and b!5480513 ((_ is Cons!62271) (exprs!5249 (h!68720 zl!343)))) b!5481441))

(declare-fun b!5481442 () Bool)

(declare-fun e!3392408 () Bool)

(declare-fun tp!1506330 () Bool)

(declare-fun tp!1506331 () Bool)

(assert (=> b!5481442 (= e!3392408 (and tp!1506330 tp!1506331))))

(assert (=> b!5480498 (= tp!1506213 e!3392408)))

(assert (= (and b!5480498 ((_ is Cons!62271) (exprs!5249 setElem!36039))) b!5481442))

(declare-fun b_lambda!208289 () Bool)

(assert (= b_lambda!208267 (or b!5480510 b_lambda!208289)))

(declare-fun bs!1266706 () Bool)

(declare-fun d!1741188 () Bool)

(assert (= bs!1266706 (and d!1741188 b!5480510)))

(assert (=> bs!1266706 (= (dynLambda!24439 lambda!292443 lt!2238258) (derivationStepZipperUp!717 lt!2238258 (h!68718 s!2326)))))

(assert (=> bs!1266706 m!6496346))

(assert (=> d!1741028 d!1741188))

(declare-fun b_lambda!208291 () Bool)

(assert (= b_lambda!208271 (or b!5480510 b_lambda!208291)))

(declare-fun bs!1266707 () Bool)

(declare-fun d!1741190 () Bool)

(assert (= bs!1266707 (and d!1741190 b!5480510)))

(assert (=> bs!1266707 (= (dynLambda!24439 lambda!292443 lt!2238236) (derivationStepZipperUp!717 lt!2238236 (h!68718 s!2326)))))

(assert (=> bs!1266707 m!6496422))

(assert (=> d!1741056 d!1741190))

(declare-fun b_lambda!208293 () Bool)

(assert (= b_lambda!208269 (or b!5480510 b_lambda!208293)))

(declare-fun bs!1266708 () Bool)

(declare-fun d!1741192 () Bool)

(assert (= bs!1266708 (and d!1741192 b!5480510)))

(assert (=> bs!1266708 (= (dynLambda!24439 lambda!292443 lt!2238253) (derivationStepZipperUp!717 lt!2238253 (h!68718 s!2326)))))

(assert (=> bs!1266708 m!6496342))

(assert (=> d!1741030 d!1741192))

(declare-fun b_lambda!208295 () Bool)

(assert (= b_lambda!208287 (or b!5480517 b_lambda!208295)))

(declare-fun bs!1266709 () Bool)

(declare-fun d!1741194 () Bool)

(assert (= bs!1266709 (and d!1741194 b!5480517)))

(declare-fun lt!2238415 () Unit!155180)

(assert (=> bs!1266709 (= lt!2238415 (lemmaConcatPreservesForall!266 (exprs!5249 lt!2238258) lt!2238249 lambda!292445))))

(assert (=> bs!1266709 (= (dynLambda!24441 lambda!292444 lt!2238258) (Context!9499 (++!13705 (exprs!5249 lt!2238258) lt!2238249)))))

(declare-fun m!6497148 () Bool)

(assert (=> bs!1266709 m!6497148))

(declare-fun m!6497150 () Bool)

(assert (=> bs!1266709 m!6497150))

(assert (=> d!1741184 d!1741194))

(declare-fun b_lambda!208297 () Bool)

(assert (= b_lambda!208275 (or b!5480510 b_lambda!208297)))

(declare-fun bs!1266710 () Bool)

(declare-fun d!1741196 () Bool)

(assert (= bs!1266710 (and d!1741196 b!5480510)))

(assert (=> bs!1266710 (= (dynLambda!24439 lambda!292443 (h!68720 zl!343)) (derivationStepZipperUp!717 (h!68720 zl!343) (h!68718 s!2326)))))

(assert (=> bs!1266710 m!6496434))

(assert (=> d!1741136 d!1741196))

(check-sat (not bm!404514) (not d!1741150) (not d!1741070) (not b!5480873) (not b!5481384) (not b_lambda!208289) (not d!1741152) (not d!1741104) (not bm!404497) (not bs!1266707) (not bm!404510) (not b!5481341) (not bm!404532) (not bm!404530) (not d!1741184) (not b!5480558) (not b!5480559) (not d!1741178) (not b!5480747) (not b!5480929) (not b!5481330) (not b!5481309) (not b!5480751) (not d!1741182) (not b!5480776) (not b!5481419) (not d!1741144) (not bm!404573) (not bm!404531) (not bs!1266706) (not d!1741172) (not b!5480774) (not d!1740950) (not b!5480872) (not b!5481421) (not b!5481429) (not d!1741068) (not bm!404565) (not b!5480753) (not d!1741114) (not b!5481411) (not b!5481132) (not bm!404549) (not bm!404553) (not b!5481102) (not b!5481423) (not b!5481144) (not b!5481410) (not d!1741108) (not b!5480927) (not b!5480743) (not b!5481427) (not d!1741082) (not d!1741138) (not b!5480955) (not b!5481366) (not d!1741036) (not d!1741118) (not d!1741014) (not bm!404563) (not d!1741058) (not b!5481345) (not b!5481103) (not b!5480779) (not bm!404513) (not d!1741052) (not b!5480860) (not bm!404533) (not bs!1266708) (not b!5480874) (not b!5481306) (not d!1741066) (not b!5481204) (not b_lambda!208293) (not b!5481436) (not d!1741078) (not b!5481409) (not b!5481161) (not d!1741028) (not b!5481301) (not d!1741158) (not d!1741074) (not b!5481104) (not b!5480954) (not b!5480931) (not d!1741124) (not b!5481304) (not b!5481203) (not d!1741174) (not b!5481331) (not d!1740952) (not bm!404550) (not bm!404572) (not b!5481385) (not b!5481308) (not b!5481441) (not b!5481105) (not b!5480840) (not b!5481422) (not b!5481425) (not d!1741056) (not bm!404551) (not d!1741034) (not b_lambda!208291) (not b!5480934) (not b!5480749) (not b!5480654) (not d!1741072) (not bs!1266709) (not b!5481166) (not b!5481164) (not b!5480566) (not d!1741032) (not d!1741126) (not d!1741136) (not b!5481407) (not b!5481098) (not bm!404496) (not b!5481347) (not d!1741146) (not b!5480935) (not b!5481430) (not b!5480562) (not b!5480561) (not b!5481303) (not b!5480952) (not b!5481106) (not bs!1266710) (not b!5481442) (not b!5481431) (not b!5480862) (not b_lambda!208297) (not d!1740986) (not d!1741140) (not b!5481337) (not b!5480557) (not d!1741180) (not d!1741168) tp_is_empty!39983 (not b!5480781) (not b!5481406) (not d!1741102) (not d!1741030) (not b!5480928) (not b!5480871) (not b!5481393) (not b!5481146) (not b_lambda!208295) (not b!5481418) (not b!5480564) (not d!1741110) (not bm!404564) (not b!5481405) (not b!5480655) (not b!5480740) (not d!1741132) (not b!5480933) (not d!1741186) (not bm!404552) (not d!1741106) (not b!5481334) (not setNonEmpty!36045) (not b!5481426) (not b!5481343))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!641122 () Bool)

(assert start!641122)

(declare-fun b!6543292 () Bool)

(assert (=> b!6543292 true))

(assert (=> b!6543292 true))

(declare-fun lambda!363082 () Int)

(declare-fun lambda!363081 () Int)

(assert (=> b!6543292 (not (= lambda!363082 lambda!363081))))

(assert (=> b!6543292 true))

(assert (=> b!6543292 true))

(declare-fun b!6543320 () Bool)

(assert (=> b!6543320 true))

(declare-fun b!6543286 () Bool)

(assert (=> b!6543286 true))

(declare-fun tp!1810470 () Bool)

(declare-fun setNonEmpty!44640 () Bool)

(declare-datatypes ((C!33096 0))(
  ( (C!33097 (val!26250 Int)) )
))
(declare-datatypes ((Regex!16413 0))(
  ( (ElementMatch!16413 (c!1201588 C!33096)) (Concat!25258 (regOne!33338 Regex!16413) (regTwo!33338 Regex!16413)) (EmptyExpr!16413) (Star!16413 (reg!16742 Regex!16413)) (EmptyLang!16413) (Union!16413 (regOne!33339 Regex!16413) (regTwo!33339 Regex!16413)) )
))
(declare-datatypes ((List!65538 0))(
  ( (Nil!65414) (Cons!65414 (h!71862 Regex!16413) (t!379180 List!65538)) )
))
(declare-datatypes ((Context!11594 0))(
  ( (Context!11595 (exprs!6297 List!65538)) )
))
(declare-fun setElem!44640 () Context!11594)

(declare-fun setRes!44640 () Bool)

(declare-fun e!3961990 () Bool)

(declare-fun inv!84279 (Context!11594) Bool)

(assert (=> setNonEmpty!44640 (= setRes!44640 (and tp!1810470 (inv!84279 setElem!44640) e!3961990))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11594))

(declare-fun setRest!44640 () (InoxSet Context!11594))

(assert (=> setNonEmpty!44640 (= z!1189 ((_ map or) (store ((as const (Array Context!11594 Bool)) false) setElem!44640 true) setRest!44640))))

(declare-fun b!6543280 () Bool)

(declare-fun e!3961977 () Bool)

(declare-fun e!3961992 () Bool)

(assert (=> b!6543280 (= e!3961977 e!3961992)))

(declare-fun res!2684018 () Bool)

(assert (=> b!6543280 (=> (not res!2684018) (not e!3961992))))

(declare-fun r!7292 () Regex!16413)

(declare-fun validRegex!8149 (Regex!16413) Bool)

(assert (=> b!6543280 (= res!2684018 (validRegex!8149 (reg!16742 (regOne!33338 r!7292))))))

(declare-fun lt!2399441 () Regex!16413)

(declare-datatypes ((List!65539 0))(
  ( (Nil!65415) (Cons!65415 (h!71863 C!33096) (t!379181 List!65539)) )
))
(declare-datatypes ((tuple2!66784 0))(
  ( (tuple2!66785 (_1!36695 List!65539) (_2!36695 List!65539)) )
))
(declare-fun lt!2399472 () tuple2!66784)

(declare-fun matchR!8596 (Regex!16413 List!65539) Bool)

(assert (=> b!6543280 (matchR!8596 lt!2399441 (_2!36695 lt!2399472))))

(declare-datatypes ((Unit!158987 0))(
  ( (Unit!158988) )
))
(declare-fun lt!2399454 () Unit!158987)

(declare-fun lt!2399479 () (InoxSet Context!11594))

(declare-datatypes ((List!65540 0))(
  ( (Nil!65416) (Cons!65416 (h!71864 Context!11594) (t!379182 List!65540)) )
))
(declare-fun lt!2399481 () List!65540)

(declare-fun theoremZipperRegexEquiv!849 ((InoxSet Context!11594) List!65540 Regex!16413 List!65539) Unit!158987)

(assert (=> b!6543280 (= lt!2399454 (theoremZipperRegexEquiv!849 lt!2399479 lt!2399481 lt!2399441 (_2!36695 lt!2399472)))))

(assert (=> b!6543280 (matchR!8596 (reg!16742 (regOne!33338 r!7292)) (_1!36695 lt!2399472))))

(declare-fun lt!2399453 () List!65540)

(declare-fun lt!2399468 () (InoxSet Context!11594))

(declare-fun lt!2399474 () Unit!158987)

(assert (=> b!6543280 (= lt!2399474 (theoremZipperRegexEquiv!849 lt!2399468 lt!2399453 (reg!16742 (regOne!33338 r!7292)) (_1!36695 lt!2399472)))))

(declare-fun lt!2399462 () List!65538)

(declare-fun lt!2399477 () List!65538)

(declare-fun lt!2399461 () List!65539)

(declare-fun matchZipper!2425 ((InoxSet Context!11594) List!65539) Bool)

(declare-fun ++!14528 (List!65538 List!65538) List!65538)

(assert (=> b!6543280 (matchZipper!2425 (store ((as const (Array Context!11594 Bool)) false) (Context!11595 (++!14528 lt!2399462 lt!2399477)) true) lt!2399461)))

(declare-fun lt!2399452 () Unit!158987)

(declare-fun lambda!363085 () Int)

(declare-fun lemmaConcatPreservesForall!386 (List!65538 List!65538 Int) Unit!158987)

(assert (=> b!6543280 (= lt!2399452 (lemmaConcatPreservesForall!386 lt!2399462 lt!2399477 lambda!363085))))

(declare-fun lt!2399455 () Context!11594)

(declare-fun lt!2399456 () Context!11594)

(declare-fun lt!2399484 () Unit!158987)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!194 (Context!11594 Context!11594 List!65539 List!65539) Unit!158987)

(assert (=> b!6543280 (= lt!2399484 (lemmaConcatenateContextMatchesConcatOfStrings!194 lt!2399456 lt!2399455 (_1!36695 lt!2399472) (_2!36695 lt!2399472)))))

(declare-fun e!3961987 () Bool)

(declare-fun b!6543281 () Bool)

(declare-fun e!3961986 () Bool)

(declare-fun tp!1810471 () Bool)

(declare-fun zl!343 () List!65540)

(assert (=> b!6543281 (= e!3961986 (and (inv!84279 (h!71864 zl!343)) e!3961987 tp!1810471))))

(declare-fun b!6543282 () Bool)

(declare-fun e!3961978 () Bool)

(declare-fun lt!2399466 () (InoxSet Context!11594))

(declare-fun s!2326 () List!65539)

(assert (=> b!6543282 (= e!3961978 (not (matchZipper!2425 lt!2399466 (t!379181 s!2326))))))

(declare-fun b!6543283 () Bool)

(declare-fun e!3961996 () Bool)

(declare-fun tp_is_empty!42079 () Bool)

(assert (=> b!6543283 (= e!3961996 tp_is_empty!42079)))

(declare-fun b!6543284 () Bool)

(declare-fun e!3961975 () Bool)

(declare-fun e!3961981 () Bool)

(assert (=> b!6543284 (= e!3961975 e!3961981)))

(declare-fun res!2684030 () Bool)

(assert (=> b!6543284 (=> res!2684030 e!3961981)))

(declare-fun lt!2399469 () (InoxSet Context!11594))

(declare-fun lt!2399458 () (InoxSet Context!11594))

(assert (=> b!6543284 (= res!2684030 (not (= lt!2399469 lt!2399458)))))

(declare-fun lt!2399480 () Context!11594)

(declare-fun lt!2399445 () (InoxSet Context!11594))

(declare-fun lambda!363083 () Int)

(declare-fun flatMap!1918 ((InoxSet Context!11594) Int) (InoxSet Context!11594))

(declare-fun derivationStepZipperUp!1587 (Context!11594 C!33096) (InoxSet Context!11594))

(assert (=> b!6543284 (= (flatMap!1918 lt!2399445 lambda!363083) (derivationStepZipperUp!1587 lt!2399480 (h!71863 s!2326)))))

(declare-fun lt!2399447 () Unit!158987)

(declare-fun lemmaFlatMapOnSingletonSet!1444 ((InoxSet Context!11594) Context!11594 Int) Unit!158987)

(assert (=> b!6543284 (= lt!2399447 (lemmaFlatMapOnSingletonSet!1444 lt!2399445 lt!2399480 lambda!363083))))

(declare-fun lt!2399457 () (InoxSet Context!11594))

(assert (=> b!6543284 (= lt!2399457 (derivationStepZipperUp!1587 lt!2399480 (h!71863 s!2326)))))

(declare-fun derivationStepZipper!2379 ((InoxSet Context!11594) C!33096) (InoxSet Context!11594))

(assert (=> b!6543284 (= lt!2399469 (derivationStepZipper!2379 lt!2399445 (h!71863 s!2326)))))

(assert (=> b!6543284 (= lt!2399445 (store ((as const (Array Context!11594 Bool)) false) lt!2399480 true))))

(assert (=> b!6543284 (= lt!2399480 (Context!11595 (Cons!65414 (reg!16742 (regOne!33338 r!7292)) lt!2399477)))))

(declare-fun b!6543285 () Bool)

(declare-fun e!3961991 () Bool)

(declare-fun e!3961997 () Bool)

(assert (=> b!6543285 (= e!3961991 e!3961997)))

(declare-fun res!2684021 () Bool)

(assert (=> b!6543285 (=> res!2684021 e!3961997)))

(assert (=> b!6543285 (= res!2684021 (not (= r!7292 lt!2399441)))))

(declare-fun lt!2399463 () Regex!16413)

(assert (=> b!6543285 (= lt!2399441 (Concat!25258 lt!2399463 (regTwo!33338 r!7292)))))

(declare-fun e!3961988 () Bool)

(declare-fun e!3961999 () Bool)

(assert (=> b!6543286 (= e!3961988 e!3961999)))

(declare-fun res!2684010 () Bool)

(assert (=> b!6543286 (=> res!2684010 e!3961999)))

(declare-fun appendTo!174 ((InoxSet Context!11594) Context!11594) (InoxSet Context!11594))

(assert (=> b!6543286 (= res!2684010 (not (= (appendTo!174 lt!2399468 lt!2399455) lt!2399445)))))

(declare-fun lambda!363084 () Int)

(declare-fun map!14928 ((InoxSet Context!11594) Int) (InoxSet Context!11594))

(assert (=> b!6543286 (= (map!14928 lt!2399468 lambda!363084) (store ((as const (Array Context!11594 Bool)) false) (Context!11595 (++!14528 lt!2399462 lt!2399477)) true))))

(declare-fun lt!2399443 () Unit!158987)

(assert (=> b!6543286 (= lt!2399443 (lemmaConcatPreservesForall!386 lt!2399462 lt!2399477 lambda!363085))))

(declare-fun lt!2399487 () Unit!158987)

(declare-fun lemmaMapOnSingletonSet!196 ((InoxSet Context!11594) Context!11594 Int) Unit!158987)

(assert (=> b!6543286 (= lt!2399487 (lemmaMapOnSingletonSet!196 lt!2399468 lt!2399456 lambda!363084))))

(declare-fun b!6543287 () Bool)

(declare-fun e!3961984 () Bool)

(declare-fun nullable!6406 (Regex!16413) Bool)

(assert (=> b!6543287 (= e!3961984 (nullable!6406 (regOne!33338 (regOne!33338 r!7292))))))

(declare-fun b!6543288 () Bool)

(declare-fun res!2684011 () Bool)

(declare-fun e!3961993 () Bool)

(assert (=> b!6543288 (=> res!2684011 e!3961993)))

(get-info :version)

(assert (=> b!6543288 (= res!2684011 (or ((_ is EmptyExpr!16413) r!7292) ((_ is EmptyLang!16413) r!7292) ((_ is ElementMatch!16413) r!7292) ((_ is Union!16413) r!7292) (not ((_ is Concat!25258) r!7292))))))

(declare-fun b!6543289 () Bool)

(declare-fun e!3962000 () Unit!158987)

(declare-fun Unit!158989 () Unit!158987)

(assert (=> b!6543289 (= e!3962000 Unit!158989)))

(declare-fun lt!2399473 () Unit!158987)

(declare-fun lt!2399475 () (InoxSet Context!11594))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1244 ((InoxSet Context!11594) (InoxSet Context!11594) List!65539) Unit!158987)

(assert (=> b!6543289 (= lt!2399473 (lemmaZipperConcatMatchesSameAsBothZippers!1244 lt!2399475 lt!2399466 (t!379181 s!2326)))))

(declare-fun res!2684038 () Bool)

(assert (=> b!6543289 (= res!2684038 (matchZipper!2425 lt!2399475 (t!379181 s!2326)))))

(declare-fun e!3961983 () Bool)

(assert (=> b!6543289 (=> res!2684038 e!3961983)))

(assert (=> b!6543289 (= (matchZipper!2425 ((_ map or) lt!2399475 lt!2399466) (t!379181 s!2326)) e!3961983)))

(declare-fun b!6543290 () Bool)

(declare-fun tp!1810472 () Bool)

(assert (=> b!6543290 (= e!3961987 tp!1810472)))

(declare-fun b!6543291 () Bool)

(declare-fun res!2684036 () Bool)

(assert (=> b!6543291 (=> res!2684036 e!3961977)))

(assert (=> b!6543291 (= res!2684036 (not (matchZipper!2425 lt!2399468 (_1!36695 lt!2399472))))))

(declare-fun e!3961982 () Bool)

(assert (=> b!6543292 (= e!3961993 e!3961982)))

(declare-fun res!2684034 () Bool)

(assert (=> b!6543292 (=> res!2684034 e!3961982)))

(declare-fun lt!2399459 () Bool)

(declare-fun lt!2399465 () Bool)

(assert (=> b!6543292 (= res!2684034 (or (not (= lt!2399459 lt!2399465)) ((_ is Nil!65415) s!2326)))))

(declare-fun Exists!3483 (Int) Bool)

(assert (=> b!6543292 (= (Exists!3483 lambda!363081) (Exists!3483 lambda!363082))))

(declare-fun lt!2399464 () Unit!158987)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2020 (Regex!16413 Regex!16413 List!65539) Unit!158987)

(assert (=> b!6543292 (= lt!2399464 (lemmaExistCutMatchRandMatchRSpecEquivalent!2020 (regOne!33338 r!7292) (regTwo!33338 r!7292) s!2326))))

(assert (=> b!6543292 (= lt!2399465 (Exists!3483 lambda!363081))))

(declare-datatypes ((Option!16304 0))(
  ( (None!16303) (Some!16303 (v!52488 tuple2!66784)) )
))
(declare-fun isDefined!13007 (Option!16304) Bool)

(declare-fun findConcatSeparation!2718 (Regex!16413 Regex!16413 List!65539 List!65539 List!65539) Option!16304)

(assert (=> b!6543292 (= lt!2399465 (isDefined!13007 (findConcatSeparation!2718 (regOne!33338 r!7292) (regTwo!33338 r!7292) Nil!65415 s!2326 s!2326)))))

(declare-fun lt!2399467 () Unit!158987)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2482 (Regex!16413 Regex!16413 List!65539) Unit!158987)

(assert (=> b!6543292 (= lt!2399467 (lemmaFindConcatSeparationEquivalentToExists!2482 (regOne!33338 r!7292) (regTwo!33338 r!7292) s!2326))))

(declare-fun res!2684015 () Bool)

(declare-fun e!3961989 () Bool)

(assert (=> start!641122 (=> (not res!2684015) (not e!3961989))))

(assert (=> start!641122 (= res!2684015 (validRegex!8149 r!7292))))

(assert (=> start!641122 e!3961989))

(assert (=> start!641122 e!3961996))

(declare-fun condSetEmpty!44640 () Bool)

(assert (=> start!641122 (= condSetEmpty!44640 (= z!1189 ((as const (Array Context!11594 Bool)) false)))))

(assert (=> start!641122 setRes!44640))

(assert (=> start!641122 e!3961986))

(declare-fun e!3961998 () Bool)

(assert (=> start!641122 e!3961998))

(declare-fun b!6543293 () Bool)

(declare-fun e!3961995 () Bool)

(assert (=> b!6543293 (= e!3961995 e!3961988)))

(declare-fun res!2684022 () Bool)

(assert (=> b!6543293 (=> res!2684022 e!3961988)))

(assert (=> b!6543293 (= res!2684022 e!3961978)))

(declare-fun res!2684026 () Bool)

(assert (=> b!6543293 (=> (not res!2684026) (not e!3961978))))

(declare-fun lt!2399449 () Bool)

(assert (=> b!6543293 (= res!2684026 (not lt!2399449))))

(assert (=> b!6543293 (= lt!2399449 (matchZipper!2425 lt!2399475 (t!379181 s!2326)))))

(declare-fun b!6543294 () Bool)

(declare-fun res!2684019 () Bool)

(assert (=> b!6543294 (=> res!2684019 e!3961993)))

(declare-fun generalisedConcat!2010 (List!65538) Regex!16413)

(assert (=> b!6543294 (= res!2684019 (not (= r!7292 (generalisedConcat!2010 (exprs!6297 (h!71864 zl!343))))))))

(declare-fun b!6543295 () Bool)

(declare-fun e!3961980 () Bool)

(assert (=> b!6543295 (= e!3961980 (not e!3961993))))

(declare-fun res!2684017 () Bool)

(assert (=> b!6543295 (=> res!2684017 e!3961993)))

(assert (=> b!6543295 (= res!2684017 (not ((_ is Cons!65416) zl!343)))))

(declare-fun matchRSpec!3514 (Regex!16413 List!65539) Bool)

(assert (=> b!6543295 (= lt!2399459 (matchRSpec!3514 r!7292 s!2326))))

(assert (=> b!6543295 (= lt!2399459 (matchR!8596 r!7292 s!2326))))

(declare-fun lt!2399446 () Unit!158987)

(declare-fun mainMatchTheorem!3514 (Regex!16413 List!65539) Unit!158987)

(assert (=> b!6543295 (= lt!2399446 (mainMatchTheorem!3514 r!7292 s!2326))))

(declare-fun b!6543296 () Bool)

(declare-fun res!2684033 () Bool)

(assert (=> b!6543296 (=> res!2684033 e!3961993)))

(declare-fun isEmpty!37633 (List!65540) Bool)

(assert (=> b!6543296 (= res!2684033 (not (isEmpty!37633 (t!379182 zl!343))))))

(declare-fun b!6543297 () Bool)

(declare-fun e!3961976 () Bool)

(assert (=> b!6543297 (= e!3961997 e!3961976)))

(declare-fun res!2684028 () Bool)

(assert (=> b!6543297 (=> res!2684028 e!3961976)))

(declare-fun lt!2399483 () Regex!16413)

(declare-fun unfocusZipper!2155 (List!65540) Regex!16413)

(assert (=> b!6543297 (= res!2684028 (not (= (unfocusZipper!2155 (Cons!65416 lt!2399480 Nil!65416)) lt!2399483)))))

(assert (=> b!6543297 (= lt!2399483 (Concat!25258 (reg!16742 (regOne!33338 r!7292)) lt!2399441))))

(declare-fun b!6543298 () Bool)

(declare-fun res!2684041 () Bool)

(assert (=> b!6543298 (=> res!2684041 e!3961977)))

(assert (=> b!6543298 (= res!2684041 (not (matchZipper!2425 lt!2399479 (_2!36695 lt!2399472))))))

(declare-fun b!6543299 () Bool)

(declare-fun e!3961985 () Bool)

(assert (=> b!6543299 (= e!3961976 e!3961985)))

(declare-fun res!2684031 () Bool)

(assert (=> b!6543299 (=> res!2684031 e!3961985)))

(assert (=> b!6543299 (= res!2684031 (not (= (unfocusZipper!2155 lt!2399453) (reg!16742 (regOne!33338 r!7292)))))))

(assert (=> b!6543299 (= lt!2399453 (Cons!65416 lt!2399456 Nil!65416))))

(assert (=> b!6543299 (= (flatMap!1918 lt!2399479 lambda!363083) (derivationStepZipperUp!1587 lt!2399455 (h!71863 s!2326)))))

(declare-fun lt!2399470 () Unit!158987)

(assert (=> b!6543299 (= lt!2399470 (lemmaFlatMapOnSingletonSet!1444 lt!2399479 lt!2399455 lambda!363083))))

(assert (=> b!6543299 (= (flatMap!1918 lt!2399468 lambda!363083) (derivationStepZipperUp!1587 lt!2399456 (h!71863 s!2326)))))

(declare-fun lt!2399482 () Unit!158987)

(assert (=> b!6543299 (= lt!2399482 (lemmaFlatMapOnSingletonSet!1444 lt!2399468 lt!2399456 lambda!363083))))

(declare-fun lt!2399486 () (InoxSet Context!11594))

(assert (=> b!6543299 (= lt!2399486 (derivationStepZipperUp!1587 lt!2399455 (h!71863 s!2326)))))

(declare-fun lt!2399444 () (InoxSet Context!11594))

(assert (=> b!6543299 (= lt!2399444 (derivationStepZipperUp!1587 lt!2399456 (h!71863 s!2326)))))

(assert (=> b!6543299 (= lt!2399479 (store ((as const (Array Context!11594 Bool)) false) lt!2399455 true))))

(assert (=> b!6543299 (= lt!2399468 (store ((as const (Array Context!11594 Bool)) false) lt!2399456 true))))

(assert (=> b!6543299 (= lt!2399456 (Context!11595 lt!2399462))))

(assert (=> b!6543299 (= lt!2399462 (Cons!65414 (reg!16742 (regOne!33338 r!7292)) Nil!65414))))

(declare-fun b!6543300 () Bool)

(declare-fun res!2684040 () Bool)

(declare-fun e!3961979 () Bool)

(assert (=> b!6543300 (=> res!2684040 e!3961979)))

(assert (=> b!6543300 (= res!2684040 e!3961984)))

(declare-fun res!2684039 () Bool)

(assert (=> b!6543300 (=> (not res!2684039) (not e!3961984))))

(assert (=> b!6543300 (= res!2684039 ((_ is Concat!25258) (regOne!33338 r!7292)))))

(declare-fun b!6543301 () Bool)

(declare-fun res!2684035 () Bool)

(assert (=> b!6543301 (=> res!2684035 e!3961993)))

(assert (=> b!6543301 (= res!2684035 (not ((_ is Cons!65414) (exprs!6297 (h!71864 zl!343)))))))

(declare-fun b!6543302 () Bool)

(declare-fun tp!1810473 () Bool)

(assert (=> b!6543302 (= e!3961998 (and tp_is_empty!42079 tp!1810473))))

(declare-fun b!6543303 () Bool)

(declare-fun res!2684012 () Bool)

(assert (=> b!6543303 (=> res!2684012 e!3961995)))

(declare-fun lt!2399451 () Bool)

(assert (=> b!6543303 (= res!2684012 (not lt!2399451))))

(declare-fun b!6543304 () Bool)

(declare-fun res!2684027 () Bool)

(assert (=> b!6543304 (=> res!2684027 e!3961993)))

(declare-fun generalisedUnion!2257 (List!65538) Regex!16413)

(declare-fun unfocusZipperList!1834 (List!65540) List!65538)

(assert (=> b!6543304 (= res!2684027 (not (= r!7292 (generalisedUnion!2257 (unfocusZipperList!1834 zl!343)))))))

(declare-fun b!6543305 () Bool)

(declare-fun e!3961994 () Bool)

(assert (=> b!6543305 (= e!3961994 e!3961995)))

(declare-fun res!2684020 () Bool)

(assert (=> b!6543305 (=> res!2684020 e!3961995)))

(assert (=> b!6543305 (= res!2684020 lt!2399459)))

(assert (=> b!6543305 (= (matchR!8596 lt!2399483 s!2326) (matchRSpec!3514 lt!2399483 s!2326))))

(declare-fun lt!2399442 () Unit!158987)

(assert (=> b!6543305 (= lt!2399442 (mainMatchTheorem!3514 lt!2399483 s!2326))))

(declare-fun b!6543306 () Bool)

(declare-fun tp!1810469 () Bool)

(assert (=> b!6543306 (= e!3961990 tp!1810469)))

(declare-fun b!6543307 () Bool)

(assert (=> b!6543307 (= e!3961983 (matchZipper!2425 lt!2399466 (t!379181 s!2326)))))

(declare-fun b!6543308 () Bool)

(assert (=> b!6543308 (= e!3961989 e!3961980)))

(declare-fun res!2684023 () Bool)

(assert (=> b!6543308 (=> (not res!2684023) (not e!3961980))))

(declare-fun lt!2399460 () Regex!16413)

(assert (=> b!6543308 (= res!2684023 (= r!7292 lt!2399460))))

(assert (=> b!6543308 (= lt!2399460 (unfocusZipper!2155 zl!343))))

(declare-fun b!6543309 () Bool)

(declare-fun Unit!158990 () Unit!158987)

(assert (=> b!6543309 (= e!3962000 Unit!158990)))

(declare-fun b!6543310 () Bool)

(declare-fun tp!1810467 () Bool)

(declare-fun tp!1810466 () Bool)

(assert (=> b!6543310 (= e!3961996 (and tp!1810467 tp!1810466))))

(declare-fun b!6543311 () Bool)

(assert (=> b!6543311 (= e!3961979 e!3961975)))

(declare-fun res!2684008 () Bool)

(assert (=> b!6543311 (=> res!2684008 e!3961975)))

(assert (=> b!6543311 (= res!2684008 (not (= lt!2399475 lt!2399458)))))

(declare-fun derivationStepZipperDown!1661 (Regex!16413 Context!11594 C!33096) (InoxSet Context!11594))

(assert (=> b!6543311 (= lt!2399458 (derivationStepZipperDown!1661 (reg!16742 (regOne!33338 r!7292)) lt!2399455 (h!71863 s!2326)))))

(assert (=> b!6543311 (= lt!2399455 (Context!11595 lt!2399477))))

(assert (=> b!6543311 (= lt!2399477 (Cons!65414 lt!2399463 (t!379180 (exprs!6297 (h!71864 zl!343)))))))

(assert (=> b!6543311 (= lt!2399463 (Star!16413 (reg!16742 (regOne!33338 r!7292))))))

(declare-fun b!6543312 () Bool)

(declare-fun res!2684013 () Bool)

(assert (=> b!6543312 (=> (not res!2684013) (not e!3961989))))

(declare-fun toList!10197 ((InoxSet Context!11594)) List!65540)

(assert (=> b!6543312 (= res!2684013 (= (toList!10197 z!1189) zl!343))))

(declare-fun b!6543313 () Bool)

(declare-fun res!2684037 () Bool)

(assert (=> b!6543313 (=> res!2684037 e!3961988)))

(declare-fun lt!2399488 () Bool)

(assert (=> b!6543313 (= res!2684037 (or (not lt!2399449) (not lt!2399488)))))

(declare-fun b!6543314 () Bool)

(declare-fun tp!1810468 () Bool)

(assert (=> b!6543314 (= e!3961996 tp!1810468)))

(declare-fun b!6543315 () Bool)

(declare-fun res!2684032 () Bool)

(assert (=> b!6543315 (=> res!2684032 e!3961979)))

(assert (=> b!6543315 (= res!2684032 (or ((_ is Concat!25258) (regOne!33338 r!7292)) (not ((_ is Star!16413) (regOne!33338 r!7292)))))))

(declare-fun b!6543316 () Bool)

(declare-fun res!2684014 () Bool)

(assert (=> b!6543316 (=> res!2684014 e!3961991)))

(assert (=> b!6543316 (= res!2684014 (not (= lt!2399460 r!7292)))))

(declare-fun b!6543317 () Bool)

(assert (=> b!6543317 (= e!3961992 (validRegex!8149 lt!2399441))))

(declare-fun b!6543318 () Bool)

(declare-fun res!2684024 () Bool)

(assert (=> b!6543318 (=> res!2684024 e!3961982)))

(declare-fun isEmpty!37634 (List!65538) Bool)

(assert (=> b!6543318 (= res!2684024 (isEmpty!37634 (t!379180 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun b!6543319 () Bool)

(assert (=> b!6543319 (= e!3961999 e!3961977)))

(declare-fun res!2684042 () Bool)

(assert (=> b!6543319 (=> res!2684042 e!3961977)))

(assert (=> b!6543319 (= res!2684042 (not (= s!2326 lt!2399461)))))

(declare-fun ++!14529 (List!65539 List!65539) List!65539)

(assert (=> b!6543319 (= lt!2399461 (++!14529 (_1!36695 lt!2399472) (_2!36695 lt!2399472)))))

(declare-fun lt!2399471 () Option!16304)

(declare-fun get!22701 (Option!16304) tuple2!66784)

(assert (=> b!6543319 (= lt!2399472 (get!22701 lt!2399471))))

(assert (=> b!6543319 (isDefined!13007 lt!2399471)))

(declare-fun findConcatSeparationZippers!178 ((InoxSet Context!11594) (InoxSet Context!11594) List!65539 List!65539 List!65539) Option!16304)

(assert (=> b!6543319 (= lt!2399471 (findConcatSeparationZippers!178 lt!2399468 lt!2399479 Nil!65415 s!2326 s!2326))))

(declare-fun lt!2399476 () Unit!158987)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!178 ((InoxSet Context!11594) Context!11594 List!65539) Unit!158987)

(assert (=> b!6543319 (= lt!2399476 (lemmaConcatZipperMatchesStringThenFindConcatDefined!178 lt!2399468 lt!2399455 s!2326))))

(assert (=> b!6543320 (= e!3961982 e!3961979)))

(declare-fun res!2684016 () Bool)

(assert (=> b!6543320 (=> res!2684016 e!3961979)))

(assert (=> b!6543320 (= res!2684016 (or (and ((_ is ElementMatch!16413) (regOne!33338 r!7292)) (= (c!1201588 (regOne!33338 r!7292)) (h!71863 s!2326))) ((_ is Union!16413) (regOne!33338 r!7292))))))

(declare-fun lt!2399478 () Unit!158987)

(assert (=> b!6543320 (= lt!2399478 e!3962000)))

(declare-fun c!1201587 () Bool)

(assert (=> b!6543320 (= c!1201587 lt!2399451)))

(assert (=> b!6543320 (= lt!2399451 (nullable!6406 (h!71862 (exprs!6297 (h!71864 zl!343)))))))

(assert (=> b!6543320 (= (flatMap!1918 z!1189 lambda!363083) (derivationStepZipperUp!1587 (h!71864 zl!343) (h!71863 s!2326)))))

(declare-fun lt!2399448 () Unit!158987)

(assert (=> b!6543320 (= lt!2399448 (lemmaFlatMapOnSingletonSet!1444 z!1189 (h!71864 zl!343) lambda!363083))))

(declare-fun lt!2399450 () Context!11594)

(assert (=> b!6543320 (= lt!2399466 (derivationStepZipperUp!1587 lt!2399450 (h!71863 s!2326)))))

(assert (=> b!6543320 (= lt!2399475 (derivationStepZipperDown!1661 (h!71862 (exprs!6297 (h!71864 zl!343))) lt!2399450 (h!71863 s!2326)))))

(assert (=> b!6543320 (= lt!2399450 (Context!11595 (t!379180 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun lt!2399485 () (InoxSet Context!11594))

(assert (=> b!6543320 (= lt!2399485 (derivationStepZipperUp!1587 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343))))) (h!71863 s!2326)))))

(declare-fun b!6543321 () Bool)

(declare-fun res!2684009 () Bool)

(assert (=> b!6543321 (=> res!2684009 e!3961995)))

(assert (=> b!6543321 (= res!2684009 (not (matchZipper!2425 z!1189 s!2326)))))

(declare-fun b!6543322 () Bool)

(assert (=> b!6543322 (= e!3961985 e!3961994)))

(declare-fun res!2684025 () Bool)

(assert (=> b!6543322 (=> res!2684025 e!3961994)))

(assert (=> b!6543322 (= res!2684025 (not (= (unfocusZipper!2155 lt!2399481) lt!2399441)))))

(assert (=> b!6543322 (= lt!2399481 (Cons!65416 lt!2399455 Nil!65416))))

(declare-fun b!6543323 () Bool)

(assert (=> b!6543323 (= e!3961981 e!3961991)))

(declare-fun res!2684029 () Bool)

(assert (=> b!6543323 (=> res!2684029 e!3961991)))

(assert (=> b!6543323 (= res!2684029 (not (= lt!2399488 (matchZipper!2425 lt!2399469 (t!379181 s!2326)))))))

(assert (=> b!6543323 (= lt!2399488 (matchZipper!2425 lt!2399445 s!2326))))

(declare-fun setIsEmpty!44640 () Bool)

(assert (=> setIsEmpty!44640 setRes!44640))

(declare-fun b!6543324 () Bool)

(declare-fun tp!1810475 () Bool)

(declare-fun tp!1810474 () Bool)

(assert (=> b!6543324 (= e!3961996 (and tp!1810475 tp!1810474))))

(assert (= (and start!641122 res!2684015) b!6543312))

(assert (= (and b!6543312 res!2684013) b!6543308))

(assert (= (and b!6543308 res!2684023) b!6543295))

(assert (= (and b!6543295 (not res!2684017)) b!6543296))

(assert (= (and b!6543296 (not res!2684033)) b!6543294))

(assert (= (and b!6543294 (not res!2684019)) b!6543301))

(assert (= (and b!6543301 (not res!2684035)) b!6543304))

(assert (= (and b!6543304 (not res!2684027)) b!6543288))

(assert (= (and b!6543288 (not res!2684011)) b!6543292))

(assert (= (and b!6543292 (not res!2684034)) b!6543318))

(assert (= (and b!6543318 (not res!2684024)) b!6543320))

(assert (= (and b!6543320 c!1201587) b!6543289))

(assert (= (and b!6543320 (not c!1201587)) b!6543309))

(assert (= (and b!6543289 (not res!2684038)) b!6543307))

(assert (= (and b!6543320 (not res!2684016)) b!6543300))

(assert (= (and b!6543300 res!2684039) b!6543287))

(assert (= (and b!6543300 (not res!2684040)) b!6543315))

(assert (= (and b!6543315 (not res!2684032)) b!6543311))

(assert (= (and b!6543311 (not res!2684008)) b!6543284))

(assert (= (and b!6543284 (not res!2684030)) b!6543323))

(assert (= (and b!6543323 (not res!2684029)) b!6543316))

(assert (= (and b!6543316 (not res!2684014)) b!6543285))

(assert (= (and b!6543285 (not res!2684021)) b!6543297))

(assert (= (and b!6543297 (not res!2684028)) b!6543299))

(assert (= (and b!6543299 (not res!2684031)) b!6543322))

(assert (= (and b!6543322 (not res!2684025)) b!6543305))

(assert (= (and b!6543305 (not res!2684020)) b!6543321))

(assert (= (and b!6543321 (not res!2684009)) b!6543303))

(assert (= (and b!6543303 (not res!2684012)) b!6543293))

(assert (= (and b!6543293 res!2684026) b!6543282))

(assert (= (and b!6543293 (not res!2684022)) b!6543313))

(assert (= (and b!6543313 (not res!2684037)) b!6543286))

(assert (= (and b!6543286 (not res!2684010)) b!6543319))

(assert (= (and b!6543319 (not res!2684042)) b!6543291))

(assert (= (and b!6543291 (not res!2684036)) b!6543298))

(assert (= (and b!6543298 (not res!2684041)) b!6543280))

(assert (= (and b!6543280 res!2684018) b!6543317))

(assert (= (and start!641122 ((_ is ElementMatch!16413) r!7292)) b!6543283))

(assert (= (and start!641122 ((_ is Concat!25258) r!7292)) b!6543310))

(assert (= (and start!641122 ((_ is Star!16413) r!7292)) b!6543314))

(assert (= (and start!641122 ((_ is Union!16413) r!7292)) b!6543324))

(assert (= (and start!641122 condSetEmpty!44640) setIsEmpty!44640))

(assert (= (and start!641122 (not condSetEmpty!44640)) setNonEmpty!44640))

(assert (= setNonEmpty!44640 b!6543306))

(assert (= b!6543281 b!6543290))

(assert (= (and start!641122 ((_ is Cons!65416) zl!343)) b!6543281))

(assert (= (and start!641122 ((_ is Cons!65415) s!2326)) b!6543302))

(declare-fun m!7326374 () Bool)

(assert (=> b!6543297 m!7326374))

(declare-fun m!7326376 () Bool)

(assert (=> setNonEmpty!44640 m!7326376))

(declare-fun m!7326378 () Bool)

(assert (=> b!6543287 m!7326378))

(declare-fun m!7326380 () Bool)

(assert (=> b!6543289 m!7326380))

(declare-fun m!7326382 () Bool)

(assert (=> b!6543289 m!7326382))

(declare-fun m!7326384 () Bool)

(assert (=> b!6543289 m!7326384))

(declare-fun m!7326386 () Bool)

(assert (=> b!6543305 m!7326386))

(declare-fun m!7326388 () Bool)

(assert (=> b!6543305 m!7326388))

(declare-fun m!7326390 () Bool)

(assert (=> b!6543305 m!7326390))

(declare-fun m!7326392 () Bool)

(assert (=> b!6543311 m!7326392))

(declare-fun m!7326394 () Bool)

(assert (=> start!641122 m!7326394))

(declare-fun m!7326396 () Bool)

(assert (=> b!6543298 m!7326396))

(declare-fun m!7326398 () Bool)

(assert (=> b!6543299 m!7326398))

(declare-fun m!7326400 () Bool)

(assert (=> b!6543299 m!7326400))

(declare-fun m!7326402 () Bool)

(assert (=> b!6543299 m!7326402))

(declare-fun m!7326404 () Bool)

(assert (=> b!6543299 m!7326404))

(declare-fun m!7326406 () Bool)

(assert (=> b!6543299 m!7326406))

(declare-fun m!7326408 () Bool)

(assert (=> b!6543299 m!7326408))

(declare-fun m!7326410 () Bool)

(assert (=> b!6543299 m!7326410))

(declare-fun m!7326412 () Bool)

(assert (=> b!6543299 m!7326412))

(declare-fun m!7326414 () Bool)

(assert (=> b!6543299 m!7326414))

(declare-fun m!7326416 () Bool)

(assert (=> b!6543295 m!7326416))

(declare-fun m!7326418 () Bool)

(assert (=> b!6543295 m!7326418))

(declare-fun m!7326420 () Bool)

(assert (=> b!6543295 m!7326420))

(declare-fun m!7326422 () Bool)

(assert (=> b!6543304 m!7326422))

(assert (=> b!6543304 m!7326422))

(declare-fun m!7326424 () Bool)

(assert (=> b!6543304 m!7326424))

(declare-fun m!7326426 () Bool)

(assert (=> b!6543319 m!7326426))

(declare-fun m!7326428 () Bool)

(assert (=> b!6543319 m!7326428))

(declare-fun m!7326430 () Bool)

(assert (=> b!6543319 m!7326430))

(declare-fun m!7326432 () Bool)

(assert (=> b!6543319 m!7326432))

(declare-fun m!7326434 () Bool)

(assert (=> b!6543319 m!7326434))

(declare-fun m!7326436 () Bool)

(assert (=> b!6543284 m!7326436))

(declare-fun m!7326438 () Bool)

(assert (=> b!6543284 m!7326438))

(declare-fun m!7326440 () Bool)

(assert (=> b!6543284 m!7326440))

(declare-fun m!7326442 () Bool)

(assert (=> b!6543284 m!7326442))

(declare-fun m!7326444 () Bool)

(assert (=> b!6543284 m!7326444))

(declare-fun m!7326446 () Bool)

(assert (=> b!6543281 m!7326446))

(declare-fun m!7326448 () Bool)

(assert (=> b!6543312 m!7326448))

(declare-fun m!7326450 () Bool)

(assert (=> b!6543323 m!7326450))

(declare-fun m!7326452 () Bool)

(assert (=> b!6543323 m!7326452))

(declare-fun m!7326454 () Bool)

(assert (=> b!6543308 m!7326454))

(declare-fun m!7326456 () Bool)

(assert (=> b!6543282 m!7326456))

(declare-fun m!7326458 () Bool)

(assert (=> b!6543320 m!7326458))

(declare-fun m!7326460 () Bool)

(assert (=> b!6543320 m!7326460))

(declare-fun m!7326462 () Bool)

(assert (=> b!6543320 m!7326462))

(declare-fun m!7326464 () Bool)

(assert (=> b!6543320 m!7326464))

(declare-fun m!7326466 () Bool)

(assert (=> b!6543320 m!7326466))

(declare-fun m!7326468 () Bool)

(assert (=> b!6543320 m!7326468))

(declare-fun m!7326470 () Bool)

(assert (=> b!6543320 m!7326470))

(declare-fun m!7326472 () Bool)

(assert (=> b!6543280 m!7326472))

(declare-fun m!7326474 () Bool)

(assert (=> b!6543280 m!7326474))

(declare-fun m!7326476 () Bool)

(assert (=> b!6543280 m!7326476))

(declare-fun m!7326478 () Bool)

(assert (=> b!6543280 m!7326478))

(declare-fun m!7326480 () Bool)

(assert (=> b!6543280 m!7326480))

(declare-fun m!7326482 () Bool)

(assert (=> b!6543280 m!7326482))

(declare-fun m!7326484 () Bool)

(assert (=> b!6543280 m!7326484))

(declare-fun m!7326486 () Bool)

(assert (=> b!6543280 m!7326486))

(assert (=> b!6543280 m!7326482))

(declare-fun m!7326488 () Bool)

(assert (=> b!6543280 m!7326488))

(declare-fun m!7326490 () Bool)

(assert (=> b!6543280 m!7326490))

(declare-fun m!7326492 () Bool)

(assert (=> b!6543291 m!7326492))

(declare-fun m!7326494 () Bool)

(assert (=> b!6543294 m!7326494))

(assert (=> b!6543307 m!7326456))

(assert (=> b!6543286 m!7326488))

(declare-fun m!7326496 () Bool)

(assert (=> b!6543286 m!7326496))

(declare-fun m!7326498 () Bool)

(assert (=> b!6543286 m!7326498))

(declare-fun m!7326500 () Bool)

(assert (=> b!6543286 m!7326500))

(assert (=> b!6543286 m!7326486))

(assert (=> b!6543286 m!7326482))

(assert (=> b!6543293 m!7326382))

(declare-fun m!7326502 () Bool)

(assert (=> b!6543292 m!7326502))

(assert (=> b!6543292 m!7326502))

(declare-fun m!7326504 () Bool)

(assert (=> b!6543292 m!7326504))

(declare-fun m!7326506 () Bool)

(assert (=> b!6543292 m!7326506))

(declare-fun m!7326508 () Bool)

(assert (=> b!6543292 m!7326508))

(declare-fun m!7326510 () Bool)

(assert (=> b!6543292 m!7326510))

(assert (=> b!6543292 m!7326504))

(declare-fun m!7326512 () Bool)

(assert (=> b!6543292 m!7326512))

(declare-fun m!7326514 () Bool)

(assert (=> b!6543296 m!7326514))

(declare-fun m!7326516 () Bool)

(assert (=> b!6543321 m!7326516))

(declare-fun m!7326518 () Bool)

(assert (=> b!6543317 m!7326518))

(declare-fun m!7326520 () Bool)

(assert (=> b!6543318 m!7326520))

(declare-fun m!7326522 () Bool)

(assert (=> b!6543322 m!7326522))

(check-sat (not b!6543292) (not b!6543310) tp_is_empty!42079 (not b!6543293) (not b!6543290) (not b!6543314) (not b!6543304) (not b!6543286) (not b!6543317) (not b!6543323) (not b!6543280) (not b!6543287) (not b!6543307) (not b!6543322) (not b!6543281) (not b!6543311) (not start!641122) (not b!6543298) (not b!6543289) (not b!6543295) (not b!6543319) (not b!6543305) (not b!6543284) (not b!6543297) (not b!6543282) (not b!6543291) (not b!6543318) (not b!6543308) (not b!6543302) (not b!6543306) (not b!6543299) (not b!6543324) (not setNonEmpty!44640) (not b!6543321) (not b!6543296) (not b!6543294) (not b!6543312) (not b!6543320))
(check-sat)
(get-model)

(declare-fun d!2054306 () Bool)

(declare-fun lt!2399514 () Regex!16413)

(assert (=> d!2054306 (validRegex!8149 lt!2399514)))

(assert (=> d!2054306 (= lt!2399514 (generalisedUnion!2257 (unfocusZipperList!1834 zl!343)))))

(assert (=> d!2054306 (= (unfocusZipper!2155 zl!343) lt!2399514)))

(declare-fun bs!1671298 () Bool)

(assert (= bs!1671298 d!2054306))

(declare-fun m!7326638 () Bool)

(assert (=> bs!1671298 m!7326638))

(assert (=> bs!1671298 m!7326422))

(assert (=> bs!1671298 m!7326422))

(assert (=> bs!1671298 m!7326424))

(assert (=> b!6543308 d!2054306))

(declare-fun d!2054308 () Bool)

(declare-fun nullableFct!2333 (Regex!16413) Bool)

(assert (=> d!2054308 (= (nullable!6406 (regOne!33338 (regOne!33338 r!7292))) (nullableFct!2333 (regOne!33338 (regOne!33338 r!7292))))))

(declare-fun bs!1671299 () Bool)

(assert (= bs!1671299 d!2054308))

(declare-fun m!7326640 () Bool)

(assert (=> bs!1671299 m!7326640))

(assert (=> b!6543287 d!2054308))

(declare-fun d!2054310 () Bool)

(declare-fun dynLambda!26000 (Int Context!11594) Context!11594)

(assert (=> d!2054310 (= (map!14928 lt!2399468 lambda!363084) (store ((as const (Array Context!11594 Bool)) false) (dynLambda!26000 lambda!363084 lt!2399456) true))))

(declare-fun lt!2399517 () Unit!158987)

(declare-fun choose!48583 ((InoxSet Context!11594) Context!11594 Int) Unit!158987)

(assert (=> d!2054310 (= lt!2399517 (choose!48583 lt!2399468 lt!2399456 lambda!363084))))

(assert (=> d!2054310 (= lt!2399468 (store ((as const (Array Context!11594 Bool)) false) lt!2399456 true))))

(assert (=> d!2054310 (= (lemmaMapOnSingletonSet!196 lt!2399468 lt!2399456 lambda!363084) lt!2399517)))

(declare-fun b_lambda!247721 () Bool)

(assert (=> (not b_lambda!247721) (not d!2054310)))

(declare-fun bs!1671301 () Bool)

(assert (= bs!1671301 d!2054310))

(declare-fun m!7326664 () Bool)

(assert (=> bs!1671301 m!7326664))

(declare-fun m!7326666 () Bool)

(assert (=> bs!1671301 m!7326666))

(assert (=> bs!1671301 m!7326664))

(declare-fun m!7326668 () Bool)

(assert (=> bs!1671301 m!7326668))

(assert (=> bs!1671301 m!7326398))

(assert (=> bs!1671301 m!7326496))

(assert (=> b!6543286 d!2054310))

(declare-fun bs!1671302 () Bool)

(declare-fun d!2054320 () Bool)

(assert (= bs!1671302 (and d!2054320 b!6543286)))

(declare-fun lambda!363093 () Int)

(assert (=> bs!1671302 (= (= (exprs!6297 lt!2399455) lt!2399477) (= lambda!363093 lambda!363084))))

(assert (=> d!2054320 true))

(assert (=> d!2054320 (= (appendTo!174 lt!2399468 lt!2399455) (map!14928 lt!2399468 lambda!363093))))

(declare-fun bs!1671303 () Bool)

(assert (= bs!1671303 d!2054320))

(declare-fun m!7326670 () Bool)

(assert (=> bs!1671303 m!7326670))

(assert (=> b!6543286 d!2054320))

(declare-fun d!2054322 () Bool)

(declare-fun choose!48584 ((InoxSet Context!11594) Int) (InoxSet Context!11594))

(assert (=> d!2054322 (= (map!14928 lt!2399468 lambda!363084) (choose!48584 lt!2399468 lambda!363084))))

(declare-fun bs!1671304 () Bool)

(assert (= bs!1671304 d!2054322))

(declare-fun m!7326672 () Bool)

(assert (=> bs!1671304 m!7326672))

(assert (=> b!6543286 d!2054322))

(declare-fun lt!2399533 () List!65538)

(declare-fun e!3962104 () Bool)

(declare-fun b!6543521 () Bool)

(assert (=> b!6543521 (= e!3962104 (or (not (= lt!2399477 Nil!65414)) (= lt!2399533 lt!2399462)))))

(declare-fun b!6543520 () Bool)

(declare-fun res!2684124 () Bool)

(assert (=> b!6543520 (=> (not res!2684124) (not e!3962104))))

(declare-fun size!40479 (List!65538) Int)

(assert (=> b!6543520 (= res!2684124 (= (size!40479 lt!2399533) (+ (size!40479 lt!2399462) (size!40479 lt!2399477))))))

(declare-fun d!2054324 () Bool)

(assert (=> d!2054324 e!3962104))

(declare-fun res!2684125 () Bool)

(assert (=> d!2054324 (=> (not res!2684125) (not e!3962104))))

(declare-fun content!12526 (List!65538) (InoxSet Regex!16413))

(assert (=> d!2054324 (= res!2684125 (= (content!12526 lt!2399533) ((_ map or) (content!12526 lt!2399462) (content!12526 lt!2399477))))))

(declare-fun e!3962103 () List!65538)

(assert (=> d!2054324 (= lt!2399533 e!3962103)))

(declare-fun c!1201642 () Bool)

(assert (=> d!2054324 (= c!1201642 ((_ is Nil!65414) lt!2399462))))

(assert (=> d!2054324 (= (++!14528 lt!2399462 lt!2399477) lt!2399533)))

(declare-fun b!6543518 () Bool)

(assert (=> b!6543518 (= e!3962103 lt!2399477)))

(declare-fun b!6543519 () Bool)

(assert (=> b!6543519 (= e!3962103 (Cons!65414 (h!71862 lt!2399462) (++!14528 (t!379180 lt!2399462) lt!2399477)))))

(assert (= (and d!2054324 c!1201642) b!6543518))

(assert (= (and d!2054324 (not c!1201642)) b!6543519))

(assert (= (and d!2054324 res!2684125) b!6543520))

(assert (= (and b!6543520 res!2684124) b!6543521))

(declare-fun m!7326700 () Bool)

(assert (=> b!6543520 m!7326700))

(declare-fun m!7326702 () Bool)

(assert (=> b!6543520 m!7326702))

(declare-fun m!7326704 () Bool)

(assert (=> b!6543520 m!7326704))

(declare-fun m!7326706 () Bool)

(assert (=> d!2054324 m!7326706))

(declare-fun m!7326708 () Bool)

(assert (=> d!2054324 m!7326708))

(declare-fun m!7326710 () Bool)

(assert (=> d!2054324 m!7326710))

(declare-fun m!7326712 () Bool)

(assert (=> b!6543519 m!7326712))

(assert (=> b!6543286 d!2054324))

(declare-fun d!2054330 () Bool)

(declare-fun forall!15587 (List!65538 Int) Bool)

(assert (=> d!2054330 (forall!15587 (++!14528 lt!2399462 lt!2399477) lambda!363085)))

(declare-fun lt!2399537 () Unit!158987)

(declare-fun choose!48586 (List!65538 List!65538 Int) Unit!158987)

(assert (=> d!2054330 (= lt!2399537 (choose!48586 lt!2399462 lt!2399477 lambda!363085))))

(assert (=> d!2054330 (forall!15587 lt!2399462 lambda!363085)))

(assert (=> d!2054330 (= (lemmaConcatPreservesForall!386 lt!2399462 lt!2399477 lambda!363085) lt!2399537)))

(declare-fun bs!1671308 () Bool)

(assert (= bs!1671308 d!2054330))

(assert (=> bs!1671308 m!7326486))

(assert (=> bs!1671308 m!7326486))

(declare-fun m!7326718 () Bool)

(assert (=> bs!1671308 m!7326718))

(declare-fun m!7326720 () Bool)

(assert (=> bs!1671308 m!7326720))

(declare-fun m!7326722 () Bool)

(assert (=> bs!1671308 m!7326722))

(assert (=> b!6543286 d!2054330))

(declare-fun d!2054334 () Bool)

(declare-fun c!1201645 () Bool)

(declare-fun isEmpty!37636 (List!65539) Bool)

(assert (=> d!2054334 (= c!1201645 (isEmpty!37636 (t!379181 s!2326)))))

(declare-fun e!3962111 () Bool)

(assert (=> d!2054334 (= (matchZipper!2425 lt!2399466 (t!379181 s!2326)) e!3962111)))

(declare-fun b!6543534 () Bool)

(declare-fun nullableZipper!2160 ((InoxSet Context!11594)) Bool)

(assert (=> b!6543534 (= e!3962111 (nullableZipper!2160 lt!2399466))))

(declare-fun b!6543535 () Bool)

(declare-fun head!13280 (List!65539) C!33096)

(declare-fun tail!12365 (List!65539) List!65539)

(assert (=> b!6543535 (= e!3962111 (matchZipper!2425 (derivationStepZipper!2379 lt!2399466 (head!13280 (t!379181 s!2326))) (tail!12365 (t!379181 s!2326))))))

(assert (= (and d!2054334 c!1201645) b!6543534))

(assert (= (and d!2054334 (not c!1201645)) b!6543535))

(declare-fun m!7326724 () Bool)

(assert (=> d!2054334 m!7326724))

(declare-fun m!7326726 () Bool)

(assert (=> b!6543534 m!7326726))

(declare-fun m!7326728 () Bool)

(assert (=> b!6543535 m!7326728))

(assert (=> b!6543535 m!7326728))

(declare-fun m!7326730 () Bool)

(assert (=> b!6543535 m!7326730))

(declare-fun m!7326732 () Bool)

(assert (=> b!6543535 m!7326732))

(assert (=> b!6543535 m!7326730))

(assert (=> b!6543535 m!7326732))

(declare-fun m!7326734 () Bool)

(assert (=> b!6543535 m!7326734))

(assert (=> b!6543307 d!2054334))

(declare-fun d!2054336 () Bool)

(declare-fun choose!48588 ((InoxSet Context!11594) Int) (InoxSet Context!11594))

(assert (=> d!2054336 (= (flatMap!1918 lt!2399445 lambda!363083) (choose!48588 lt!2399445 lambda!363083))))

(declare-fun bs!1671311 () Bool)

(assert (= bs!1671311 d!2054336))

(declare-fun m!7326736 () Bool)

(assert (=> bs!1671311 m!7326736))

(assert (=> b!6543284 d!2054336))

(declare-fun b!6543546 () Bool)

(declare-fun e!3962119 () Bool)

(assert (=> b!6543546 (= e!3962119 (nullable!6406 (h!71862 (exprs!6297 lt!2399480))))))

(declare-fun b!6543547 () Bool)

(declare-fun e!3962120 () (InoxSet Context!11594))

(declare-fun call!569137 () (InoxSet Context!11594))

(assert (=> b!6543547 (= e!3962120 call!569137)))

(declare-fun bm!569132 () Bool)

(assert (=> bm!569132 (= call!569137 (derivationStepZipperDown!1661 (h!71862 (exprs!6297 lt!2399480)) (Context!11595 (t!379180 (exprs!6297 lt!2399480))) (h!71863 s!2326)))))

(declare-fun e!3962118 () (InoxSet Context!11594))

(declare-fun b!6543548 () Bool)

(assert (=> b!6543548 (= e!3962118 ((_ map or) call!569137 (derivationStepZipperUp!1587 (Context!11595 (t!379180 (exprs!6297 lt!2399480))) (h!71863 s!2326))))))

(declare-fun b!6543549 () Bool)

(assert (=> b!6543549 (= e!3962120 ((as const (Array Context!11594 Bool)) false))))

(declare-fun d!2054338 () Bool)

(declare-fun c!1201651 () Bool)

(assert (=> d!2054338 (= c!1201651 e!3962119)))

(declare-fun res!2684136 () Bool)

(assert (=> d!2054338 (=> (not res!2684136) (not e!3962119))))

(assert (=> d!2054338 (= res!2684136 ((_ is Cons!65414) (exprs!6297 lt!2399480)))))

(assert (=> d!2054338 (= (derivationStepZipperUp!1587 lt!2399480 (h!71863 s!2326)) e!3962118)))

(declare-fun b!6543550 () Bool)

(assert (=> b!6543550 (= e!3962118 e!3962120)))

(declare-fun c!1201650 () Bool)

(assert (=> b!6543550 (= c!1201650 ((_ is Cons!65414) (exprs!6297 lt!2399480)))))

(assert (= (and d!2054338 res!2684136) b!6543546))

(assert (= (and d!2054338 c!1201651) b!6543548))

(assert (= (and d!2054338 (not c!1201651)) b!6543550))

(assert (= (and b!6543550 c!1201650) b!6543547))

(assert (= (and b!6543550 (not c!1201650)) b!6543549))

(assert (= (or b!6543548 b!6543547) bm!569132))

(declare-fun m!7326746 () Bool)

(assert (=> b!6543546 m!7326746))

(declare-fun m!7326748 () Bool)

(assert (=> bm!569132 m!7326748))

(declare-fun m!7326750 () Bool)

(assert (=> b!6543548 m!7326750))

(assert (=> b!6543284 d!2054338))

(declare-fun d!2054344 () Bool)

(declare-fun dynLambda!26001 (Int Context!11594) (InoxSet Context!11594))

(assert (=> d!2054344 (= (flatMap!1918 lt!2399445 lambda!363083) (dynLambda!26001 lambda!363083 lt!2399480))))

(declare-fun lt!2399549 () Unit!158987)

(declare-fun choose!48589 ((InoxSet Context!11594) Context!11594 Int) Unit!158987)

(assert (=> d!2054344 (= lt!2399549 (choose!48589 lt!2399445 lt!2399480 lambda!363083))))

(assert (=> d!2054344 (= lt!2399445 (store ((as const (Array Context!11594 Bool)) false) lt!2399480 true))))

(assert (=> d!2054344 (= (lemmaFlatMapOnSingletonSet!1444 lt!2399445 lt!2399480 lambda!363083) lt!2399549)))

(declare-fun b_lambda!247723 () Bool)

(assert (=> (not b_lambda!247723) (not d!2054344)))

(declare-fun bs!1671314 () Bool)

(assert (= bs!1671314 d!2054344))

(assert (=> bs!1671314 m!7326442))

(declare-fun m!7326752 () Bool)

(assert (=> bs!1671314 m!7326752))

(declare-fun m!7326754 () Bool)

(assert (=> bs!1671314 m!7326754))

(assert (=> bs!1671314 m!7326438))

(assert (=> b!6543284 d!2054344))

(declare-fun bs!1671315 () Bool)

(declare-fun d!2054346 () Bool)

(assert (= bs!1671315 (and d!2054346 b!6543320)))

(declare-fun lambda!363105 () Int)

(assert (=> bs!1671315 (= lambda!363105 lambda!363083)))

(assert (=> d!2054346 true))

(assert (=> d!2054346 (= (derivationStepZipper!2379 lt!2399445 (h!71863 s!2326)) (flatMap!1918 lt!2399445 lambda!363105))))

(declare-fun bs!1671316 () Bool)

(assert (= bs!1671316 d!2054346))

(declare-fun m!7326756 () Bool)

(assert (=> bs!1671316 m!7326756))

(assert (=> b!6543284 d!2054346))

(declare-fun b!6543630 () Bool)

(declare-fun e!3962162 () Bool)

(declare-fun lt!2399561 () Bool)

(assert (=> b!6543630 (= e!3962162 (not lt!2399561))))

(declare-fun b!6543631 () Bool)

(declare-fun e!3962166 () Bool)

(assert (=> b!6543631 (= e!3962166 e!3962162)))

(declare-fun c!1201673 () Bool)

(assert (=> b!6543631 (= c!1201673 ((_ is EmptyLang!16413) lt!2399483))))

(declare-fun b!6543632 () Bool)

(declare-fun res!2684176 () Bool)

(declare-fun e!3962168 () Bool)

(assert (=> b!6543632 (=> res!2684176 e!3962168)))

(assert (=> b!6543632 (= res!2684176 (not (isEmpty!37636 (tail!12365 s!2326))))))

(declare-fun b!6543633 () Bool)

(declare-fun res!2684177 () Bool)

(declare-fun e!3962167 () Bool)

(assert (=> b!6543633 (=> (not res!2684177) (not e!3962167))))

(assert (=> b!6543633 (= res!2684177 (isEmpty!37636 (tail!12365 s!2326)))))

(declare-fun b!6543634 () Bool)

(declare-fun e!3962165 () Bool)

(assert (=> b!6543634 (= e!3962165 (nullable!6406 lt!2399483))))

(declare-fun b!6543635 () Bool)

(declare-fun call!569142 () Bool)

(assert (=> b!6543635 (= e!3962166 (= lt!2399561 call!569142))))

(declare-fun b!6543636 () Bool)

(declare-fun e!3962163 () Bool)

(assert (=> b!6543636 (= e!3962163 e!3962168)))

(declare-fun res!2684182 () Bool)

(assert (=> b!6543636 (=> res!2684182 e!3962168)))

(assert (=> b!6543636 (= res!2684182 call!569142)))

(declare-fun b!6543638 () Bool)

(declare-fun derivativeStep!5099 (Regex!16413 C!33096) Regex!16413)

(assert (=> b!6543638 (= e!3962165 (matchR!8596 (derivativeStep!5099 lt!2399483 (head!13280 s!2326)) (tail!12365 s!2326)))))

(declare-fun b!6543639 () Bool)

(declare-fun e!3962164 () Bool)

(assert (=> b!6543639 (= e!3962164 e!3962163)))

(declare-fun res!2684178 () Bool)

(assert (=> b!6543639 (=> (not res!2684178) (not e!3962163))))

(assert (=> b!6543639 (= res!2684178 (not lt!2399561))))

(declare-fun b!6543640 () Bool)

(declare-fun res!2684180 () Bool)

(assert (=> b!6543640 (=> res!2684180 e!3962164)))

(assert (=> b!6543640 (= res!2684180 e!3962167)))

(declare-fun res!2684183 () Bool)

(assert (=> b!6543640 (=> (not res!2684183) (not e!3962167))))

(assert (=> b!6543640 (= res!2684183 lt!2399561)))

(declare-fun b!6543637 () Bool)

(assert (=> b!6543637 (= e!3962167 (= (head!13280 s!2326) (c!1201588 lt!2399483)))))

(declare-fun d!2054348 () Bool)

(assert (=> d!2054348 e!3962166))

(declare-fun c!1201674 () Bool)

(assert (=> d!2054348 (= c!1201674 ((_ is EmptyExpr!16413) lt!2399483))))

(assert (=> d!2054348 (= lt!2399561 e!3962165)))

(declare-fun c!1201675 () Bool)

(assert (=> d!2054348 (= c!1201675 (isEmpty!37636 s!2326))))

(assert (=> d!2054348 (validRegex!8149 lt!2399483)))

(assert (=> d!2054348 (= (matchR!8596 lt!2399483 s!2326) lt!2399561)))

(declare-fun bm!569137 () Bool)

(assert (=> bm!569137 (= call!569142 (isEmpty!37636 s!2326))))

(declare-fun b!6543641 () Bool)

(declare-fun res!2684181 () Bool)

(assert (=> b!6543641 (=> res!2684181 e!3962164)))

(assert (=> b!6543641 (= res!2684181 (not ((_ is ElementMatch!16413) lt!2399483)))))

(assert (=> b!6543641 (= e!3962162 e!3962164)))

(declare-fun b!6543642 () Bool)

(assert (=> b!6543642 (= e!3962168 (not (= (head!13280 s!2326) (c!1201588 lt!2399483))))))

(declare-fun b!6543643 () Bool)

(declare-fun res!2684179 () Bool)

(assert (=> b!6543643 (=> (not res!2684179) (not e!3962167))))

(assert (=> b!6543643 (= res!2684179 (not call!569142))))

(assert (= (and d!2054348 c!1201675) b!6543634))

(assert (= (and d!2054348 (not c!1201675)) b!6543638))

(assert (= (and d!2054348 c!1201674) b!6543635))

(assert (= (and d!2054348 (not c!1201674)) b!6543631))

(assert (= (and b!6543631 c!1201673) b!6543630))

(assert (= (and b!6543631 (not c!1201673)) b!6543641))

(assert (= (and b!6543641 (not res!2684181)) b!6543640))

(assert (= (and b!6543640 res!2684183) b!6543643))

(assert (= (and b!6543643 res!2684179) b!6543633))

(assert (= (and b!6543633 res!2684177) b!6543637))

(assert (= (and b!6543640 (not res!2684180)) b!6543639))

(assert (= (and b!6543639 res!2684178) b!6543636))

(assert (= (and b!6543636 (not res!2684182)) b!6543632))

(assert (= (and b!6543632 (not res!2684176)) b!6543642))

(assert (= (or b!6543635 b!6543636 b!6543643) bm!569137))

(declare-fun m!7326802 () Bool)

(assert (=> b!6543633 m!7326802))

(assert (=> b!6543633 m!7326802))

(declare-fun m!7326804 () Bool)

(assert (=> b!6543633 m!7326804))

(declare-fun m!7326806 () Bool)

(assert (=> b!6543634 m!7326806))

(declare-fun m!7326808 () Bool)

(assert (=> b!6543642 m!7326808))

(declare-fun m!7326810 () Bool)

(assert (=> bm!569137 m!7326810))

(assert (=> d!2054348 m!7326810))

(declare-fun m!7326812 () Bool)

(assert (=> d!2054348 m!7326812))

(assert (=> b!6543637 m!7326808))

(assert (=> b!6543638 m!7326808))

(assert (=> b!6543638 m!7326808))

(declare-fun m!7326814 () Bool)

(assert (=> b!6543638 m!7326814))

(assert (=> b!6543638 m!7326802))

(assert (=> b!6543638 m!7326814))

(assert (=> b!6543638 m!7326802))

(declare-fun m!7326816 () Bool)

(assert (=> b!6543638 m!7326816))

(assert (=> b!6543632 m!7326802))

(assert (=> b!6543632 m!7326802))

(assert (=> b!6543632 m!7326804))

(assert (=> b!6543305 d!2054348))

(declare-fun bs!1671325 () Bool)

(declare-fun b!6543717 () Bool)

(assert (= bs!1671325 (and b!6543717 b!6543292)))

(declare-fun lambda!363116 () Int)

(assert (=> bs!1671325 (not (= lambda!363116 lambda!363081))))

(assert (=> bs!1671325 (not (= lambda!363116 lambda!363082))))

(assert (=> b!6543717 true))

(assert (=> b!6543717 true))

(declare-fun bs!1671326 () Bool)

(declare-fun b!6543718 () Bool)

(assert (= bs!1671326 (and b!6543718 b!6543292)))

(declare-fun lambda!363117 () Int)

(assert (=> bs!1671326 (not (= lambda!363117 lambda!363081))))

(assert (=> bs!1671326 (= (and (= (regOne!33338 lt!2399483) (regOne!33338 r!7292)) (= (regTwo!33338 lt!2399483) (regTwo!33338 r!7292))) (= lambda!363117 lambda!363082))))

(declare-fun bs!1671327 () Bool)

(assert (= bs!1671327 (and b!6543718 b!6543717)))

(assert (=> bs!1671327 (not (= lambda!363117 lambda!363116))))

(assert (=> b!6543718 true))

(assert (=> b!6543718 true))

(declare-fun b!6543715 () Bool)

(declare-fun e!3962212 () Bool)

(assert (=> b!6543715 (= e!3962212 (matchRSpec!3514 (regTwo!33339 lt!2399483) s!2326))))

(declare-fun e!3962210 () Bool)

(declare-fun call!569148 () Bool)

(assert (=> b!6543717 (= e!3962210 call!569148)))

(declare-fun e!3962211 () Bool)

(assert (=> b!6543718 (= e!3962211 call!569148)))

(declare-fun b!6543719 () Bool)

(declare-fun e!3962214 () Bool)

(assert (=> b!6543719 (= e!3962214 e!3962211)))

(declare-fun c!1201702 () Bool)

(assert (=> b!6543719 (= c!1201702 ((_ is Star!16413) lt!2399483))))

(declare-fun b!6543720 () Bool)

(declare-fun e!3962209 () Bool)

(declare-fun e!3962215 () Bool)

(assert (=> b!6543720 (= e!3962209 e!3962215)))

(declare-fun res!2684207 () Bool)

(assert (=> b!6543720 (= res!2684207 (not ((_ is EmptyLang!16413) lt!2399483)))))

(assert (=> b!6543720 (=> (not res!2684207) (not e!3962215))))

(declare-fun b!6543721 () Bool)

(declare-fun c!1201704 () Bool)

(assert (=> b!6543721 (= c!1201704 ((_ is Union!16413) lt!2399483))))

(declare-fun e!3962213 () Bool)

(assert (=> b!6543721 (= e!3962213 e!3962214)))

(declare-fun bm!569143 () Bool)

(assert (=> bm!569143 (= call!569148 (Exists!3483 (ite c!1201702 lambda!363116 lambda!363117)))))

(declare-fun bm!569144 () Bool)

(declare-fun call!569149 () Bool)

(assert (=> bm!569144 (= call!569149 (isEmpty!37636 s!2326))))

(declare-fun b!6543722 () Bool)

(assert (=> b!6543722 (= e!3962209 call!569149)))

(declare-fun b!6543723 () Bool)

(assert (=> b!6543723 (= e!3962214 e!3962212)))

(declare-fun res!2684209 () Bool)

(assert (=> b!6543723 (= res!2684209 (matchRSpec!3514 (regOne!33339 lt!2399483) s!2326))))

(assert (=> b!6543723 (=> res!2684209 e!3962212)))

(declare-fun b!6543724 () Bool)

(assert (=> b!6543724 (= e!3962213 (= s!2326 (Cons!65415 (c!1201588 lt!2399483) Nil!65415)))))

(declare-fun b!6543725 () Bool)

(declare-fun c!1201703 () Bool)

(assert (=> b!6543725 (= c!1201703 ((_ is ElementMatch!16413) lt!2399483))))

(assert (=> b!6543725 (= e!3962215 e!3962213)))

(declare-fun d!2054362 () Bool)

(declare-fun c!1201701 () Bool)

(assert (=> d!2054362 (= c!1201701 ((_ is EmptyExpr!16413) lt!2399483))))

(assert (=> d!2054362 (= (matchRSpec!3514 lt!2399483 s!2326) e!3962209)))

(declare-fun b!6543716 () Bool)

(declare-fun res!2684208 () Bool)

(assert (=> b!6543716 (=> res!2684208 e!3962210)))

(assert (=> b!6543716 (= res!2684208 call!569149)))

(assert (=> b!6543716 (= e!3962211 e!3962210)))

(assert (= (and d!2054362 c!1201701) b!6543722))

(assert (= (and d!2054362 (not c!1201701)) b!6543720))

(assert (= (and b!6543720 res!2684207) b!6543725))

(assert (= (and b!6543725 c!1201703) b!6543724))

(assert (= (and b!6543725 (not c!1201703)) b!6543721))

(assert (= (and b!6543721 c!1201704) b!6543723))

(assert (= (and b!6543721 (not c!1201704)) b!6543719))

(assert (= (and b!6543723 (not res!2684209)) b!6543715))

(assert (= (and b!6543719 c!1201702) b!6543716))

(assert (= (and b!6543719 (not c!1201702)) b!6543718))

(assert (= (and b!6543716 (not res!2684208)) b!6543717))

(assert (= (or b!6543717 b!6543718) bm!569143))

(assert (= (or b!6543722 b!6543716) bm!569144))

(declare-fun m!7326854 () Bool)

(assert (=> b!6543715 m!7326854))

(declare-fun m!7326856 () Bool)

(assert (=> bm!569143 m!7326856))

(assert (=> bm!569144 m!7326810))

(declare-fun m!7326858 () Bool)

(assert (=> b!6543723 m!7326858))

(assert (=> b!6543305 d!2054362))

(declare-fun d!2054374 () Bool)

(assert (=> d!2054374 (= (matchR!8596 lt!2399483 s!2326) (matchRSpec!3514 lt!2399483 s!2326))))

(declare-fun lt!2399572 () Unit!158987)

(declare-fun choose!48593 (Regex!16413 List!65539) Unit!158987)

(assert (=> d!2054374 (= lt!2399572 (choose!48593 lt!2399483 s!2326))))

(assert (=> d!2054374 (validRegex!8149 lt!2399483)))

(assert (=> d!2054374 (= (mainMatchTheorem!3514 lt!2399483 s!2326) lt!2399572)))

(declare-fun bs!1671328 () Bool)

(assert (= bs!1671328 d!2054374))

(assert (=> bs!1671328 m!7326386))

(assert (=> bs!1671328 m!7326388))

(declare-fun m!7326860 () Bool)

(assert (=> bs!1671328 m!7326860))

(assert (=> bs!1671328 m!7326812))

(assert (=> b!6543305 d!2054374))

(declare-fun bs!1671336 () Bool)

(declare-fun d!2054376 () Bool)

(assert (= bs!1671336 (and d!2054376 b!6543286)))

(declare-fun lambda!363126 () Int)

(assert (=> bs!1671336 (= lambda!363126 lambda!363085)))

(declare-fun b!6543782 () Bool)

(declare-fun e!3962253 () Bool)

(declare-fun e!3962252 () Bool)

(assert (=> b!6543782 (= e!3962253 e!3962252)))

(declare-fun c!1201731 () Bool)

(declare-fun tail!12367 (List!65538) List!65538)

(assert (=> b!6543782 (= c!1201731 (isEmpty!37634 (tail!12367 (unfocusZipperList!1834 zl!343))))))

(declare-fun b!6543783 () Bool)

(declare-fun e!3962249 () Regex!16413)

(assert (=> b!6543783 (= e!3962249 EmptyLang!16413)))

(declare-fun e!3962251 () Bool)

(assert (=> d!2054376 e!3962251))

(declare-fun res!2684220 () Bool)

(assert (=> d!2054376 (=> (not res!2684220) (not e!3962251))))

(declare-fun lt!2399579 () Regex!16413)

(assert (=> d!2054376 (= res!2684220 (validRegex!8149 lt!2399579))))

(declare-fun e!3962250 () Regex!16413)

(assert (=> d!2054376 (= lt!2399579 e!3962250)))

(declare-fun c!1201728 () Bool)

(declare-fun e!3962254 () Bool)

(assert (=> d!2054376 (= c!1201728 e!3962254)))

(declare-fun res!2684221 () Bool)

(assert (=> d!2054376 (=> (not res!2684221) (not e!3962254))))

(assert (=> d!2054376 (= res!2684221 ((_ is Cons!65414) (unfocusZipperList!1834 zl!343)))))

(assert (=> d!2054376 (forall!15587 (unfocusZipperList!1834 zl!343) lambda!363126)))

(assert (=> d!2054376 (= (generalisedUnion!2257 (unfocusZipperList!1834 zl!343)) lt!2399579)))

(declare-fun b!6543784 () Bool)

(assert (=> b!6543784 (= e!3962250 (h!71862 (unfocusZipperList!1834 zl!343)))))

(declare-fun b!6543785 () Bool)

(assert (=> b!6543785 (= e!3962254 (isEmpty!37634 (t!379180 (unfocusZipperList!1834 zl!343))))))

(declare-fun b!6543786 () Bool)

(declare-fun head!13282 (List!65538) Regex!16413)

(assert (=> b!6543786 (= e!3962252 (= lt!2399579 (head!13282 (unfocusZipperList!1834 zl!343))))))

(declare-fun b!6543787 () Bool)

(assert (=> b!6543787 (= e!3962249 (Union!16413 (h!71862 (unfocusZipperList!1834 zl!343)) (generalisedUnion!2257 (t!379180 (unfocusZipperList!1834 zl!343)))))))

(declare-fun b!6543788 () Bool)

(declare-fun isUnion!1231 (Regex!16413) Bool)

(assert (=> b!6543788 (= e!3962252 (isUnion!1231 lt!2399579))))

(declare-fun b!6543789 () Bool)

(assert (=> b!6543789 (= e!3962251 e!3962253)))

(declare-fun c!1201730 () Bool)

(assert (=> b!6543789 (= c!1201730 (isEmpty!37634 (unfocusZipperList!1834 zl!343)))))

(declare-fun b!6543790 () Bool)

(declare-fun isEmptyLang!1801 (Regex!16413) Bool)

(assert (=> b!6543790 (= e!3962253 (isEmptyLang!1801 lt!2399579))))

(declare-fun b!6543791 () Bool)

(assert (=> b!6543791 (= e!3962250 e!3962249)))

(declare-fun c!1201729 () Bool)

(assert (=> b!6543791 (= c!1201729 ((_ is Cons!65414) (unfocusZipperList!1834 zl!343)))))

(assert (= (and d!2054376 res!2684221) b!6543785))

(assert (= (and d!2054376 c!1201728) b!6543784))

(assert (= (and d!2054376 (not c!1201728)) b!6543791))

(assert (= (and b!6543791 c!1201729) b!6543787))

(assert (= (and b!6543791 (not c!1201729)) b!6543783))

(assert (= (and d!2054376 res!2684220) b!6543789))

(assert (= (and b!6543789 c!1201730) b!6543790))

(assert (= (and b!6543789 (not c!1201730)) b!6543782))

(assert (= (and b!6543782 c!1201731) b!6543786))

(assert (= (and b!6543782 (not c!1201731)) b!6543788))

(declare-fun m!7326886 () Bool)

(assert (=> b!6543790 m!7326886))

(declare-fun m!7326888 () Bool)

(assert (=> b!6543785 m!7326888))

(declare-fun m!7326890 () Bool)

(assert (=> d!2054376 m!7326890))

(assert (=> d!2054376 m!7326422))

(declare-fun m!7326892 () Bool)

(assert (=> d!2054376 m!7326892))

(declare-fun m!7326894 () Bool)

(assert (=> b!6543788 m!7326894))

(declare-fun m!7326896 () Bool)

(assert (=> b!6543787 m!7326896))

(assert (=> b!6543789 m!7326422))

(declare-fun m!7326898 () Bool)

(assert (=> b!6543789 m!7326898))

(assert (=> b!6543786 m!7326422))

(declare-fun m!7326900 () Bool)

(assert (=> b!6543786 m!7326900))

(assert (=> b!6543782 m!7326422))

(declare-fun m!7326902 () Bool)

(assert (=> b!6543782 m!7326902))

(assert (=> b!6543782 m!7326902))

(declare-fun m!7326904 () Bool)

(assert (=> b!6543782 m!7326904))

(assert (=> b!6543304 d!2054376))

(declare-fun bs!1671343 () Bool)

(declare-fun d!2054382 () Bool)

(assert (= bs!1671343 (and d!2054382 b!6543286)))

(declare-fun lambda!363132 () Int)

(assert (=> bs!1671343 (= lambda!363132 lambda!363085)))

(declare-fun bs!1671344 () Bool)

(assert (= bs!1671344 (and d!2054382 d!2054376)))

(assert (=> bs!1671344 (= lambda!363132 lambda!363126)))

(declare-fun lt!2399582 () List!65538)

(assert (=> d!2054382 (forall!15587 lt!2399582 lambda!363132)))

(declare-fun e!3962257 () List!65538)

(assert (=> d!2054382 (= lt!2399582 e!3962257)))

(declare-fun c!1201734 () Bool)

(assert (=> d!2054382 (= c!1201734 ((_ is Cons!65416) zl!343))))

(assert (=> d!2054382 (= (unfocusZipperList!1834 zl!343) lt!2399582)))

(declare-fun b!6543796 () Bool)

(assert (=> b!6543796 (= e!3962257 (Cons!65414 (generalisedConcat!2010 (exprs!6297 (h!71864 zl!343))) (unfocusZipperList!1834 (t!379182 zl!343))))))

(declare-fun b!6543797 () Bool)

(assert (=> b!6543797 (= e!3962257 Nil!65414)))

(assert (= (and d!2054382 c!1201734) b!6543796))

(assert (= (and d!2054382 (not c!1201734)) b!6543797))

(declare-fun m!7326908 () Bool)

(assert (=> d!2054382 m!7326908))

(assert (=> b!6543796 m!7326494))

(declare-fun m!7326910 () Bool)

(assert (=> b!6543796 m!7326910))

(assert (=> b!6543304 d!2054382))

(declare-fun d!2054386 () Bool)

(declare-fun choose!48594 (Int) Bool)

(assert (=> d!2054386 (= (Exists!3483 lambda!363081) (choose!48594 lambda!363081))))

(declare-fun bs!1671345 () Bool)

(assert (= bs!1671345 d!2054386))

(declare-fun m!7326912 () Bool)

(assert (=> bs!1671345 m!7326912))

(assert (=> b!6543292 d!2054386))

(declare-fun b!6543823 () Bool)

(declare-fun e!3962272 () Option!16304)

(declare-fun e!3962274 () Option!16304)

(assert (=> b!6543823 (= e!3962272 e!3962274)))

(declare-fun c!1201741 () Bool)

(assert (=> b!6543823 (= c!1201741 ((_ is Nil!65415) s!2326))))

(declare-fun b!6543824 () Bool)

(declare-fun e!3962276 () Bool)

(declare-fun lt!2399597 () Option!16304)

(assert (=> b!6543824 (= e!3962276 (= (++!14529 (_1!36695 (get!22701 lt!2399597)) (_2!36695 (get!22701 lt!2399597))) s!2326))))

(declare-fun b!6543825 () Bool)

(declare-fun res!2684237 () Bool)

(assert (=> b!6543825 (=> (not res!2684237) (not e!3962276))))

(assert (=> b!6543825 (= res!2684237 (matchR!8596 (regTwo!33338 r!7292) (_2!36695 (get!22701 lt!2399597))))))

(declare-fun b!6543826 () Bool)

(declare-fun e!3962275 () Bool)

(assert (=> b!6543826 (= e!3962275 (not (isDefined!13007 lt!2399597)))))

(declare-fun b!6543827 () Bool)

(declare-fun e!3962273 () Bool)

(assert (=> b!6543827 (= e!3962273 (matchR!8596 (regTwo!33338 r!7292) s!2326))))

(declare-fun b!6543828 () Bool)

(assert (=> b!6543828 (= e!3962274 None!16303)))

(declare-fun d!2054388 () Bool)

(assert (=> d!2054388 e!3962275))

(declare-fun res!2684238 () Bool)

(assert (=> d!2054388 (=> res!2684238 e!3962275)))

(assert (=> d!2054388 (= res!2684238 e!3962276)))

(declare-fun res!2684236 () Bool)

(assert (=> d!2054388 (=> (not res!2684236) (not e!3962276))))

(assert (=> d!2054388 (= res!2684236 (isDefined!13007 lt!2399597))))

(assert (=> d!2054388 (= lt!2399597 e!3962272)))

(declare-fun c!1201742 () Bool)

(assert (=> d!2054388 (= c!1201742 e!3962273)))

(declare-fun res!2684239 () Bool)

(assert (=> d!2054388 (=> (not res!2684239) (not e!3962273))))

(assert (=> d!2054388 (= res!2684239 (matchR!8596 (regOne!33338 r!7292) Nil!65415))))

(assert (=> d!2054388 (validRegex!8149 (regOne!33338 r!7292))))

(assert (=> d!2054388 (= (findConcatSeparation!2718 (regOne!33338 r!7292) (regTwo!33338 r!7292) Nil!65415 s!2326 s!2326) lt!2399597)))

(declare-fun b!6543829 () Bool)

(assert (=> b!6543829 (= e!3962272 (Some!16303 (tuple2!66785 Nil!65415 s!2326)))))

(declare-fun b!6543830 () Bool)

(declare-fun res!2684235 () Bool)

(assert (=> b!6543830 (=> (not res!2684235) (not e!3962276))))

(assert (=> b!6543830 (= res!2684235 (matchR!8596 (regOne!33338 r!7292) (_1!36695 (get!22701 lt!2399597))))))

(declare-fun b!6543831 () Bool)

(declare-fun lt!2399598 () Unit!158987)

(declare-fun lt!2399599 () Unit!158987)

(assert (=> b!6543831 (= lt!2399598 lt!2399599)))

(assert (=> b!6543831 (= (++!14529 (++!14529 Nil!65415 (Cons!65415 (h!71863 s!2326) Nil!65415)) (t!379181 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2558 (List!65539 C!33096 List!65539 List!65539) Unit!158987)

(assert (=> b!6543831 (= lt!2399599 (lemmaMoveElementToOtherListKeepsConcatEq!2558 Nil!65415 (h!71863 s!2326) (t!379181 s!2326) s!2326))))

(assert (=> b!6543831 (= e!3962274 (findConcatSeparation!2718 (regOne!33338 r!7292) (regTwo!33338 r!7292) (++!14529 Nil!65415 (Cons!65415 (h!71863 s!2326) Nil!65415)) (t!379181 s!2326) s!2326))))

(assert (= (and d!2054388 res!2684239) b!6543827))

(assert (= (and d!2054388 c!1201742) b!6543829))

(assert (= (and d!2054388 (not c!1201742)) b!6543823))

(assert (= (and b!6543823 c!1201741) b!6543828))

(assert (= (and b!6543823 (not c!1201741)) b!6543831))

(assert (= (and d!2054388 res!2684236) b!6543830))

(assert (= (and b!6543830 res!2684235) b!6543825))

(assert (= (and b!6543825 res!2684237) b!6543824))

(assert (= (and d!2054388 (not res!2684238)) b!6543826))

(declare-fun m!7326934 () Bool)

(assert (=> b!6543827 m!7326934))

(declare-fun m!7326936 () Bool)

(assert (=> d!2054388 m!7326936))

(declare-fun m!7326938 () Bool)

(assert (=> d!2054388 m!7326938))

(declare-fun m!7326940 () Bool)

(assert (=> d!2054388 m!7326940))

(declare-fun m!7326942 () Bool)

(assert (=> b!6543830 m!7326942))

(declare-fun m!7326944 () Bool)

(assert (=> b!6543830 m!7326944))

(declare-fun m!7326946 () Bool)

(assert (=> b!6543831 m!7326946))

(assert (=> b!6543831 m!7326946))

(declare-fun m!7326948 () Bool)

(assert (=> b!6543831 m!7326948))

(declare-fun m!7326950 () Bool)

(assert (=> b!6543831 m!7326950))

(assert (=> b!6543831 m!7326946))

(declare-fun m!7326952 () Bool)

(assert (=> b!6543831 m!7326952))

(assert (=> b!6543825 m!7326942))

(declare-fun m!7326954 () Bool)

(assert (=> b!6543825 m!7326954))

(assert (=> b!6543826 m!7326936))

(assert (=> b!6543824 m!7326942))

(declare-fun m!7326956 () Bool)

(assert (=> b!6543824 m!7326956))

(assert (=> b!6543292 d!2054388))

(declare-fun d!2054404 () Bool)

(assert (=> d!2054404 (= (Exists!3483 lambda!363082) (choose!48594 lambda!363082))))

(declare-fun bs!1671357 () Bool)

(assert (= bs!1671357 d!2054404))

(declare-fun m!7326958 () Bool)

(assert (=> bs!1671357 m!7326958))

(assert (=> b!6543292 d!2054404))

(declare-fun bs!1671358 () Bool)

(declare-fun d!2054406 () Bool)

(assert (= bs!1671358 (and d!2054406 b!6543292)))

(declare-fun lambda!363145 () Int)

(assert (=> bs!1671358 (= lambda!363145 lambda!363081)))

(assert (=> bs!1671358 (not (= lambda!363145 lambda!363082))))

(declare-fun bs!1671359 () Bool)

(assert (= bs!1671359 (and d!2054406 b!6543717)))

(assert (=> bs!1671359 (not (= lambda!363145 lambda!363116))))

(declare-fun bs!1671361 () Bool)

(assert (= bs!1671361 (and d!2054406 b!6543718)))

(assert (=> bs!1671361 (not (= lambda!363145 lambda!363117))))

(assert (=> d!2054406 true))

(assert (=> d!2054406 true))

(assert (=> d!2054406 true))

(assert (=> d!2054406 (= (isDefined!13007 (findConcatSeparation!2718 (regOne!33338 r!7292) (regTwo!33338 r!7292) Nil!65415 s!2326 s!2326)) (Exists!3483 lambda!363145))))

(declare-fun lt!2399602 () Unit!158987)

(declare-fun choose!48598 (Regex!16413 Regex!16413 List!65539) Unit!158987)

(assert (=> d!2054406 (= lt!2399602 (choose!48598 (regOne!33338 r!7292) (regTwo!33338 r!7292) s!2326))))

(assert (=> d!2054406 (validRegex!8149 (regOne!33338 r!7292))))

(assert (=> d!2054406 (= (lemmaFindConcatSeparationEquivalentToExists!2482 (regOne!33338 r!7292) (regTwo!33338 r!7292) s!2326) lt!2399602)))

(declare-fun bs!1671364 () Bool)

(assert (= bs!1671364 d!2054406))

(assert (=> bs!1671364 m!7326504))

(assert (=> bs!1671364 m!7326506))

(assert (=> bs!1671364 m!7326940))

(declare-fun m!7326960 () Bool)

(assert (=> bs!1671364 m!7326960))

(declare-fun m!7326962 () Bool)

(assert (=> bs!1671364 m!7326962))

(assert (=> bs!1671364 m!7326504))

(assert (=> b!6543292 d!2054406))

(declare-fun bs!1671372 () Bool)

(declare-fun d!2054408 () Bool)

(assert (= bs!1671372 (and d!2054408 d!2054406)))

(declare-fun lambda!363153 () Int)

(assert (=> bs!1671372 (= lambda!363153 lambda!363145)))

(declare-fun bs!1671374 () Bool)

(assert (= bs!1671374 (and d!2054408 b!6543717)))

(assert (=> bs!1671374 (not (= lambda!363153 lambda!363116))))

(declare-fun bs!1671376 () Bool)

(assert (= bs!1671376 (and d!2054408 b!6543718)))

(assert (=> bs!1671376 (not (= lambda!363153 lambda!363117))))

(declare-fun bs!1671378 () Bool)

(assert (= bs!1671378 (and d!2054408 b!6543292)))

(assert (=> bs!1671378 (= lambda!363153 lambda!363081)))

(assert (=> bs!1671378 (not (= lambda!363153 lambda!363082))))

(assert (=> d!2054408 true))

(assert (=> d!2054408 true))

(assert (=> d!2054408 true))

(declare-fun lambda!363154 () Int)

(assert (=> bs!1671372 (not (= lambda!363154 lambda!363145))))

(declare-fun bs!1671380 () Bool)

(assert (= bs!1671380 d!2054408))

(assert (=> bs!1671380 (not (= lambda!363154 lambda!363153))))

(assert (=> bs!1671374 (not (= lambda!363154 lambda!363116))))

(assert (=> bs!1671376 (= (and (= (regOne!33338 r!7292) (regOne!33338 lt!2399483)) (= (regTwo!33338 r!7292) (regTwo!33338 lt!2399483))) (= lambda!363154 lambda!363117))))

(assert (=> bs!1671378 (not (= lambda!363154 lambda!363081))))

(assert (=> bs!1671378 (= lambda!363154 lambda!363082)))

(assert (=> d!2054408 true))

(assert (=> d!2054408 true))

(assert (=> d!2054408 true))

(assert (=> d!2054408 (= (Exists!3483 lambda!363153) (Exists!3483 lambda!363154))))

(declare-fun lt!2399610 () Unit!158987)

(declare-fun choose!48599 (Regex!16413 Regex!16413 List!65539) Unit!158987)

(assert (=> d!2054408 (= lt!2399610 (choose!48599 (regOne!33338 r!7292) (regTwo!33338 r!7292) s!2326))))

(assert (=> d!2054408 (validRegex!8149 (regOne!33338 r!7292))))

(assert (=> d!2054408 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2020 (regOne!33338 r!7292) (regTwo!33338 r!7292) s!2326) lt!2399610)))

(declare-fun m!7326990 () Bool)

(assert (=> bs!1671380 m!7326990))

(declare-fun m!7326992 () Bool)

(assert (=> bs!1671380 m!7326992))

(declare-fun m!7326994 () Bool)

(assert (=> bs!1671380 m!7326994))

(assert (=> bs!1671380 m!7326940))

(assert (=> b!6543292 d!2054408))

(declare-fun d!2054422 () Bool)

(declare-fun isEmpty!37638 (Option!16304) Bool)

(assert (=> d!2054422 (= (isDefined!13007 (findConcatSeparation!2718 (regOne!33338 r!7292) (regTwo!33338 r!7292) Nil!65415 s!2326 s!2326)) (not (isEmpty!37638 (findConcatSeparation!2718 (regOne!33338 r!7292) (regTwo!33338 r!7292) Nil!65415 s!2326 s!2326))))))

(declare-fun bs!1671387 () Bool)

(assert (= bs!1671387 d!2054422))

(assert (=> bs!1671387 m!7326504))

(declare-fun m!7327002 () Bool)

(assert (=> bs!1671387 m!7327002))

(assert (=> b!6543292 d!2054422))

(declare-fun d!2054426 () Bool)

(declare-fun e!3962335 () Bool)

(assert (=> d!2054426 e!3962335))

(declare-fun res!2684293 () Bool)

(assert (=> d!2054426 (=> (not res!2684293) (not e!3962335))))

(declare-fun lt!2399617 () List!65540)

(declare-fun noDuplicate!2220 (List!65540) Bool)

(assert (=> d!2054426 (= res!2684293 (noDuplicate!2220 lt!2399617))))

(declare-fun choose!48600 ((InoxSet Context!11594)) List!65540)

(assert (=> d!2054426 (= lt!2399617 (choose!48600 z!1189))))

(assert (=> d!2054426 (= (toList!10197 z!1189) lt!2399617)))

(declare-fun b!6543935 () Bool)

(declare-fun content!12528 (List!65540) (InoxSet Context!11594))

(assert (=> b!6543935 (= e!3962335 (= (content!12528 lt!2399617) z!1189))))

(assert (= (and d!2054426 res!2684293) b!6543935))

(declare-fun m!7327032 () Bool)

(assert (=> d!2054426 m!7327032))

(declare-fun m!7327034 () Bool)

(assert (=> d!2054426 m!7327034))

(declare-fun m!7327036 () Bool)

(assert (=> b!6543935 m!7327036))

(assert (=> b!6543312 d!2054426))

(declare-fun d!2054440 () Bool)

(declare-fun c!1201770 () Bool)

(assert (=> d!2054440 (= c!1201770 (isEmpty!37636 (_1!36695 lt!2399472)))))

(declare-fun e!3962339 () Bool)

(assert (=> d!2054440 (= (matchZipper!2425 lt!2399468 (_1!36695 lt!2399472)) e!3962339)))

(declare-fun b!6543941 () Bool)

(assert (=> b!6543941 (= e!3962339 (nullableZipper!2160 lt!2399468))))

(declare-fun b!6543942 () Bool)

(assert (=> b!6543942 (= e!3962339 (matchZipper!2425 (derivationStepZipper!2379 lt!2399468 (head!13280 (_1!36695 lt!2399472))) (tail!12365 (_1!36695 lt!2399472))))))

(assert (= (and d!2054440 c!1201770) b!6543941))

(assert (= (and d!2054440 (not c!1201770)) b!6543942))

(declare-fun m!7327040 () Bool)

(assert (=> d!2054440 m!7327040))

(declare-fun m!7327042 () Bool)

(assert (=> b!6543941 m!7327042))

(declare-fun m!7327046 () Bool)

(assert (=> b!6543942 m!7327046))

(assert (=> b!6543942 m!7327046))

(declare-fun m!7327050 () Bool)

(assert (=> b!6543942 m!7327050))

(declare-fun m!7327052 () Bool)

(assert (=> b!6543942 m!7327052))

(assert (=> b!6543942 m!7327050))

(assert (=> b!6543942 m!7327052))

(declare-fun m!7327054 () Bool)

(assert (=> b!6543942 m!7327054))

(assert (=> b!6543291 d!2054440))

(declare-fun d!2054444 () Bool)

(declare-fun e!3962355 () Bool)

(assert (=> d!2054444 (= (matchZipper!2425 ((_ map or) lt!2399475 lt!2399466) (t!379181 s!2326)) e!3962355)))

(declare-fun res!2684306 () Bool)

(assert (=> d!2054444 (=> res!2684306 e!3962355)))

(assert (=> d!2054444 (= res!2684306 (matchZipper!2425 lt!2399475 (t!379181 s!2326)))))

(declare-fun lt!2399624 () Unit!158987)

(declare-fun choose!48601 ((InoxSet Context!11594) (InoxSet Context!11594) List!65539) Unit!158987)

(assert (=> d!2054444 (= lt!2399624 (choose!48601 lt!2399475 lt!2399466 (t!379181 s!2326)))))

(assert (=> d!2054444 (= (lemmaZipperConcatMatchesSameAsBothZippers!1244 lt!2399475 lt!2399466 (t!379181 s!2326)) lt!2399624)))

(declare-fun b!6543962 () Bool)

(assert (=> b!6543962 (= e!3962355 (matchZipper!2425 lt!2399466 (t!379181 s!2326)))))

(assert (= (and d!2054444 (not res!2684306)) b!6543962))

(assert (=> d!2054444 m!7326384))

(assert (=> d!2054444 m!7326382))

(declare-fun m!7327084 () Bool)

(assert (=> d!2054444 m!7327084))

(assert (=> b!6543962 m!7326456))

(assert (=> b!6543289 d!2054444))

(declare-fun d!2054458 () Bool)

(declare-fun c!1201780 () Bool)

(assert (=> d!2054458 (= c!1201780 (isEmpty!37636 (t!379181 s!2326)))))

(declare-fun e!3962362 () Bool)

(assert (=> d!2054458 (= (matchZipper!2425 lt!2399475 (t!379181 s!2326)) e!3962362)))

(declare-fun b!6543974 () Bool)

(assert (=> b!6543974 (= e!3962362 (nullableZipper!2160 lt!2399475))))

(declare-fun b!6543975 () Bool)

(assert (=> b!6543975 (= e!3962362 (matchZipper!2425 (derivationStepZipper!2379 lt!2399475 (head!13280 (t!379181 s!2326))) (tail!12365 (t!379181 s!2326))))))

(assert (= (and d!2054458 c!1201780) b!6543974))

(assert (= (and d!2054458 (not c!1201780)) b!6543975))

(assert (=> d!2054458 m!7326724))

(declare-fun m!7327086 () Bool)

(assert (=> b!6543974 m!7327086))

(assert (=> b!6543975 m!7326728))

(assert (=> b!6543975 m!7326728))

(declare-fun m!7327088 () Bool)

(assert (=> b!6543975 m!7327088))

(assert (=> b!6543975 m!7326732))

(assert (=> b!6543975 m!7327088))

(assert (=> b!6543975 m!7326732))

(declare-fun m!7327090 () Bool)

(assert (=> b!6543975 m!7327090))

(assert (=> b!6543289 d!2054458))

(declare-fun d!2054460 () Bool)

(declare-fun c!1201781 () Bool)

(assert (=> d!2054460 (= c!1201781 (isEmpty!37636 (t!379181 s!2326)))))

(declare-fun e!3962363 () Bool)

(assert (=> d!2054460 (= (matchZipper!2425 ((_ map or) lt!2399475 lt!2399466) (t!379181 s!2326)) e!3962363)))

(declare-fun b!6543976 () Bool)

(assert (=> b!6543976 (= e!3962363 (nullableZipper!2160 ((_ map or) lt!2399475 lt!2399466)))))

(declare-fun b!6543977 () Bool)

(assert (=> b!6543977 (= e!3962363 (matchZipper!2425 (derivationStepZipper!2379 ((_ map or) lt!2399475 lt!2399466) (head!13280 (t!379181 s!2326))) (tail!12365 (t!379181 s!2326))))))

(assert (= (and d!2054460 c!1201781) b!6543976))

(assert (= (and d!2054460 (not c!1201781)) b!6543977))

(assert (=> d!2054460 m!7326724))

(declare-fun m!7327092 () Bool)

(assert (=> b!6543976 m!7327092))

(assert (=> b!6543977 m!7326728))

(assert (=> b!6543977 m!7326728))

(declare-fun m!7327094 () Bool)

(assert (=> b!6543977 m!7327094))

(assert (=> b!6543977 m!7326732))

(assert (=> b!6543977 m!7327094))

(assert (=> b!6543977 m!7326732))

(declare-fun m!7327100 () Bool)

(assert (=> b!6543977 m!7327100))

(assert (=> b!6543289 d!2054460))

(declare-fun b!6544073 () Bool)

(declare-fun e!3962414 () Bool)

(assert (=> b!6544073 (= e!3962414 (nullable!6406 (regOne!33338 (reg!16742 (regOne!33338 r!7292)))))))

(declare-fun b!6544074 () Bool)

(declare-fun e!3962412 () (InoxSet Context!11594))

(declare-fun call!569190 () (InoxSet Context!11594))

(assert (=> b!6544074 (= e!3962412 call!569190)))

(declare-fun b!6544075 () Bool)

(declare-fun e!3962417 () (InoxSet Context!11594))

(declare-fun call!569193 () (InoxSet Context!11594))

(declare-fun call!569191 () (InoxSet Context!11594))

(assert (=> b!6544075 (= e!3962417 ((_ map or) call!569193 call!569191))))

(declare-fun b!6544076 () Bool)

(assert (=> b!6544076 (= e!3962412 ((as const (Array Context!11594 Bool)) false))))

(declare-fun b!6544077 () Bool)

(declare-fun e!3962413 () (InoxSet Context!11594))

(declare-fun call!569189 () (InoxSet Context!11594))

(assert (=> b!6544077 (= e!3962413 ((_ map or) call!569189 call!569193))))

(declare-fun b!6544078 () Bool)

(declare-fun c!1201800 () Bool)

(assert (=> b!6544078 (= c!1201800 ((_ is Star!16413) (reg!16742 (regOne!33338 r!7292))))))

(declare-fun e!3962415 () (InoxSet Context!11594))

(assert (=> b!6544078 (= e!3962415 e!3962412)))

(declare-fun b!6544079 () Bool)

(assert (=> b!6544079 (= e!3962417 e!3962415)))

(declare-fun c!1201801 () Bool)

(assert (=> b!6544079 (= c!1201801 ((_ is Concat!25258) (reg!16742 (regOne!33338 r!7292))))))

(declare-fun c!1201799 () Bool)

(declare-fun bm!569184 () Bool)

(declare-fun call!569194 () List!65538)

(declare-fun $colon$colon!2256 (List!65538 Regex!16413) List!65538)

(assert (=> bm!569184 (= call!569194 ($colon$colon!2256 (exprs!6297 lt!2399455) (ite (or c!1201799 c!1201801) (regTwo!33338 (reg!16742 (regOne!33338 r!7292))) (reg!16742 (regOne!33338 r!7292)))))))

(declare-fun d!2054462 () Bool)

(declare-fun c!1201802 () Bool)

(assert (=> d!2054462 (= c!1201802 (and ((_ is ElementMatch!16413) (reg!16742 (regOne!33338 r!7292))) (= (c!1201588 (reg!16742 (regOne!33338 r!7292))) (h!71863 s!2326))))))

(declare-fun e!3962416 () (InoxSet Context!11594))

(assert (=> d!2054462 (= (derivationStepZipperDown!1661 (reg!16742 (regOne!33338 r!7292)) lt!2399455 (h!71863 s!2326)) e!3962416)))

(declare-fun bm!569185 () Bool)

(assert (=> bm!569185 (= call!569191 call!569189)))

(declare-fun b!6544080 () Bool)

(assert (=> b!6544080 (= e!3962415 call!569190)))

(declare-fun bm!569186 () Bool)

(declare-fun c!1201798 () Bool)

(assert (=> bm!569186 (= call!569193 (derivationStepZipperDown!1661 (ite c!1201798 (regTwo!33339 (reg!16742 (regOne!33338 r!7292))) (regOne!33338 (reg!16742 (regOne!33338 r!7292)))) (ite c!1201798 lt!2399455 (Context!11595 call!569194)) (h!71863 s!2326)))))

(declare-fun bm!569187 () Bool)

(declare-fun call!569192 () List!65538)

(assert (=> bm!569187 (= call!569192 call!569194)))

(declare-fun b!6544081 () Bool)

(assert (=> b!6544081 (= e!3962416 (store ((as const (Array Context!11594 Bool)) false) lt!2399455 true))))

(declare-fun bm!569188 () Bool)

(assert (=> bm!569188 (= call!569189 (derivationStepZipperDown!1661 (ite c!1201798 (regOne!33339 (reg!16742 (regOne!33338 r!7292))) (ite c!1201799 (regTwo!33338 (reg!16742 (regOne!33338 r!7292))) (ite c!1201801 (regOne!33338 (reg!16742 (regOne!33338 r!7292))) (reg!16742 (reg!16742 (regOne!33338 r!7292)))))) (ite (or c!1201798 c!1201799) lt!2399455 (Context!11595 call!569192)) (h!71863 s!2326)))))

(declare-fun b!6544082 () Bool)

(assert (=> b!6544082 (= c!1201799 e!3962414)))

(declare-fun res!2684317 () Bool)

(assert (=> b!6544082 (=> (not res!2684317) (not e!3962414))))

(assert (=> b!6544082 (= res!2684317 ((_ is Concat!25258) (reg!16742 (regOne!33338 r!7292))))))

(assert (=> b!6544082 (= e!3962413 e!3962417)))

(declare-fun b!6544083 () Bool)

(assert (=> b!6544083 (= e!3962416 e!3962413)))

(assert (=> b!6544083 (= c!1201798 ((_ is Union!16413) (reg!16742 (regOne!33338 r!7292))))))

(declare-fun bm!569189 () Bool)

(assert (=> bm!569189 (= call!569190 call!569191)))

(assert (= (and d!2054462 c!1201802) b!6544081))

(assert (= (and d!2054462 (not c!1201802)) b!6544083))

(assert (= (and b!6544083 c!1201798) b!6544077))

(assert (= (and b!6544083 (not c!1201798)) b!6544082))

(assert (= (and b!6544082 res!2684317) b!6544073))

(assert (= (and b!6544082 c!1201799) b!6544075))

(assert (= (and b!6544082 (not c!1201799)) b!6544079))

(assert (= (and b!6544079 c!1201801) b!6544080))

(assert (= (and b!6544079 (not c!1201801)) b!6544078))

(assert (= (and b!6544078 c!1201800) b!6544074))

(assert (= (and b!6544078 (not c!1201800)) b!6544076))

(assert (= (or b!6544080 b!6544074) bm!569187))

(assert (= (or b!6544080 b!6544074) bm!569189))

(assert (= (or b!6544075 bm!569187) bm!569184))

(assert (= (or b!6544075 bm!569189) bm!569185))

(assert (= (or b!6544077 b!6544075) bm!569186))

(assert (= (or b!6544077 bm!569185) bm!569188))

(assert (=> b!6544081 m!7326406))

(declare-fun m!7327148 () Bool)

(assert (=> bm!569188 m!7327148))

(declare-fun m!7327150 () Bool)

(assert (=> b!6544073 m!7327150))

(declare-fun m!7327152 () Bool)

(assert (=> bm!569186 m!7327152))

(declare-fun m!7327154 () Bool)

(assert (=> bm!569184 m!7327154))

(assert (=> b!6543311 d!2054462))

(declare-fun d!2054488 () Bool)

(declare-fun lt!2399628 () Regex!16413)

(assert (=> d!2054488 (validRegex!8149 lt!2399628)))

(assert (=> d!2054488 (= lt!2399628 (generalisedUnion!2257 (unfocusZipperList!1834 (Cons!65416 lt!2399480 Nil!65416))))))

(assert (=> d!2054488 (= (unfocusZipper!2155 (Cons!65416 lt!2399480 Nil!65416)) lt!2399628)))

(declare-fun bs!1671404 () Bool)

(assert (= bs!1671404 d!2054488))

(declare-fun m!7327156 () Bool)

(assert (=> bs!1671404 m!7327156))

(declare-fun m!7327158 () Bool)

(assert (=> bs!1671404 m!7327158))

(assert (=> bs!1671404 m!7327158))

(declare-fun m!7327160 () Bool)

(assert (=> bs!1671404 m!7327160))

(assert (=> b!6543297 d!2054488))

(declare-fun d!2054490 () Bool)

(declare-fun c!1201803 () Bool)

(assert (=> d!2054490 (= c!1201803 (isEmpty!37636 (_2!36695 lt!2399472)))))

(declare-fun e!3962418 () Bool)

(assert (=> d!2054490 (= (matchZipper!2425 lt!2399479 (_2!36695 lt!2399472)) e!3962418)))

(declare-fun b!6544084 () Bool)

(assert (=> b!6544084 (= e!3962418 (nullableZipper!2160 lt!2399479))))

(declare-fun b!6544085 () Bool)

(assert (=> b!6544085 (= e!3962418 (matchZipper!2425 (derivationStepZipper!2379 lt!2399479 (head!13280 (_2!36695 lt!2399472))) (tail!12365 (_2!36695 lt!2399472))))))

(assert (= (and d!2054490 c!1201803) b!6544084))

(assert (= (and d!2054490 (not c!1201803)) b!6544085))

(declare-fun m!7327162 () Bool)

(assert (=> d!2054490 m!7327162))

(declare-fun m!7327164 () Bool)

(assert (=> b!6544084 m!7327164))

(declare-fun m!7327166 () Bool)

(assert (=> b!6544085 m!7327166))

(assert (=> b!6544085 m!7327166))

(declare-fun m!7327168 () Bool)

(assert (=> b!6544085 m!7327168))

(declare-fun m!7327170 () Bool)

(assert (=> b!6544085 m!7327170))

(assert (=> b!6544085 m!7327168))

(assert (=> b!6544085 m!7327170))

(declare-fun m!7327172 () Bool)

(assert (=> b!6544085 m!7327172))

(assert (=> b!6543298 d!2054490))

(declare-fun b!6544104 () Bool)

(declare-fun e!3962435 () Bool)

(declare-fun e!3962434 () Bool)

(assert (=> b!6544104 (= e!3962435 e!3962434)))

(declare-fun res!2684330 () Bool)

(assert (=> b!6544104 (=> (not res!2684330) (not e!3962434))))

(declare-fun call!569202 () Bool)

(assert (=> b!6544104 (= res!2684330 call!569202)))

(declare-fun b!6544105 () Bool)

(declare-fun e!3962437 () Bool)

(declare-fun e!3962433 () Bool)

(assert (=> b!6544105 (= e!3962437 e!3962433)))

(declare-fun res!2684331 () Bool)

(assert (=> b!6544105 (= res!2684331 (not (nullable!6406 (reg!16742 r!7292))))))

(assert (=> b!6544105 (=> (not res!2684331) (not e!3962433))))

(declare-fun d!2054492 () Bool)

(declare-fun res!2684332 () Bool)

(declare-fun e!3962436 () Bool)

(assert (=> d!2054492 (=> res!2684332 e!3962436)))

(assert (=> d!2054492 (= res!2684332 ((_ is ElementMatch!16413) r!7292))))

(assert (=> d!2054492 (= (validRegex!8149 r!7292) e!3962436)))

(declare-fun b!6544106 () Bool)

(declare-fun e!3962438 () Bool)

(assert (=> b!6544106 (= e!3962437 e!3962438)))

(declare-fun c!1201808 () Bool)

(assert (=> b!6544106 (= c!1201808 ((_ is Union!16413) r!7292))))

(declare-fun b!6544107 () Bool)

(declare-fun call!569203 () Bool)

(assert (=> b!6544107 (= e!3962434 call!569203)))

(declare-fun b!6544108 () Bool)

(declare-fun call!569201 () Bool)

(assert (=> b!6544108 (= e!3962433 call!569201)))

(declare-fun b!6544109 () Bool)

(declare-fun e!3962439 () Bool)

(assert (=> b!6544109 (= e!3962439 call!569203)))

(declare-fun c!1201809 () Bool)

(declare-fun bm!569196 () Bool)

(assert (=> bm!569196 (= call!569201 (validRegex!8149 (ite c!1201809 (reg!16742 r!7292) (ite c!1201808 (regOne!33339 r!7292) (regOne!33338 r!7292)))))))

(declare-fun b!6544110 () Bool)

(declare-fun res!2684329 () Bool)

(assert (=> b!6544110 (=> (not res!2684329) (not e!3962439))))

(assert (=> b!6544110 (= res!2684329 call!569202)))

(assert (=> b!6544110 (= e!3962438 e!3962439)))

(declare-fun b!6544111 () Bool)

(assert (=> b!6544111 (= e!3962436 e!3962437)))

(assert (=> b!6544111 (= c!1201809 ((_ is Star!16413) r!7292))))

(declare-fun b!6544112 () Bool)

(declare-fun res!2684328 () Bool)

(assert (=> b!6544112 (=> res!2684328 e!3962435)))

(assert (=> b!6544112 (= res!2684328 (not ((_ is Concat!25258) r!7292)))))

(assert (=> b!6544112 (= e!3962438 e!3962435)))

(declare-fun bm!569197 () Bool)

(assert (=> bm!569197 (= call!569203 (validRegex!8149 (ite c!1201808 (regTwo!33339 r!7292) (regTwo!33338 r!7292))))))

(declare-fun bm!569198 () Bool)

(assert (=> bm!569198 (= call!569202 call!569201)))

(assert (= (and d!2054492 (not res!2684332)) b!6544111))

(assert (= (and b!6544111 c!1201809) b!6544105))

(assert (= (and b!6544111 (not c!1201809)) b!6544106))

(assert (= (and b!6544105 res!2684331) b!6544108))

(assert (= (and b!6544106 c!1201808) b!6544110))

(assert (= (and b!6544106 (not c!1201808)) b!6544112))

(assert (= (and b!6544110 res!2684329) b!6544109))

(assert (= (and b!6544112 (not res!2684328)) b!6544104))

(assert (= (and b!6544104 res!2684330) b!6544107))

(assert (= (or b!6544109 b!6544107) bm!569197))

(assert (= (or b!6544110 b!6544104) bm!569198))

(assert (= (or b!6544108 bm!569198) bm!569196))

(declare-fun m!7327174 () Bool)

(assert (=> b!6544105 m!7327174))

(declare-fun m!7327176 () Bool)

(assert (=> bm!569196 m!7327176))

(declare-fun m!7327178 () Bool)

(assert (=> bm!569197 m!7327178))

(assert (=> start!641122 d!2054492))

(declare-fun b!6544131 () Bool)

(declare-fun res!2684345 () Bool)

(declare-fun e!3962451 () Bool)

(assert (=> b!6544131 (=> (not res!2684345) (not e!3962451))))

(declare-fun lt!2399635 () Option!16304)

(assert (=> b!6544131 (= res!2684345 (matchZipper!2425 lt!2399468 (_1!36695 (get!22701 lt!2399635))))))

(declare-fun b!6544132 () Bool)

(declare-fun res!2684347 () Bool)

(assert (=> b!6544132 (=> (not res!2684347) (not e!3962451))))

(assert (=> b!6544132 (= res!2684347 (matchZipper!2425 lt!2399479 (_2!36695 (get!22701 lt!2399635))))))

(declare-fun b!6544133 () Bool)

(declare-fun e!3962452 () Option!16304)

(declare-fun e!3962454 () Option!16304)

(assert (=> b!6544133 (= e!3962452 e!3962454)))

(declare-fun c!1201814 () Bool)

(assert (=> b!6544133 (= c!1201814 ((_ is Nil!65415) s!2326))))

(declare-fun b!6544134 () Bool)

(declare-fun e!3962450 () Bool)

(assert (=> b!6544134 (= e!3962450 (matchZipper!2425 lt!2399479 s!2326))))

(declare-fun b!6544135 () Bool)

(declare-fun e!3962453 () Bool)

(assert (=> b!6544135 (= e!3962453 (not (isDefined!13007 lt!2399635)))))

(declare-fun d!2054494 () Bool)

(assert (=> d!2054494 e!3962453))

(declare-fun res!2684343 () Bool)

(assert (=> d!2054494 (=> res!2684343 e!3962453)))

(assert (=> d!2054494 (= res!2684343 e!3962451)))

(declare-fun res!2684344 () Bool)

(assert (=> d!2054494 (=> (not res!2684344) (not e!3962451))))

(assert (=> d!2054494 (= res!2684344 (isDefined!13007 lt!2399635))))

(assert (=> d!2054494 (= lt!2399635 e!3962452)))

(declare-fun c!1201815 () Bool)

(assert (=> d!2054494 (= c!1201815 e!3962450)))

(declare-fun res!2684346 () Bool)

(assert (=> d!2054494 (=> (not res!2684346) (not e!3962450))))

(assert (=> d!2054494 (= res!2684346 (matchZipper!2425 lt!2399468 Nil!65415))))

(assert (=> d!2054494 (= (++!14529 Nil!65415 s!2326) s!2326)))

(assert (=> d!2054494 (= (findConcatSeparationZippers!178 lt!2399468 lt!2399479 Nil!65415 s!2326 s!2326) lt!2399635)))

(declare-fun b!6544136 () Bool)

(assert (=> b!6544136 (= e!3962454 None!16303)))

(declare-fun b!6544137 () Bool)

(assert (=> b!6544137 (= e!3962451 (= (++!14529 (_1!36695 (get!22701 lt!2399635)) (_2!36695 (get!22701 lt!2399635))) s!2326))))

(declare-fun b!6544138 () Bool)

(assert (=> b!6544138 (= e!3962452 (Some!16303 (tuple2!66785 Nil!65415 s!2326)))))

(declare-fun b!6544139 () Bool)

(declare-fun lt!2399637 () Unit!158987)

(declare-fun lt!2399636 () Unit!158987)

(assert (=> b!6544139 (= lt!2399637 lt!2399636)))

(assert (=> b!6544139 (= (++!14529 (++!14529 Nil!65415 (Cons!65415 (h!71863 s!2326) Nil!65415)) (t!379181 s!2326)) s!2326)))

(assert (=> b!6544139 (= lt!2399636 (lemmaMoveElementToOtherListKeepsConcatEq!2558 Nil!65415 (h!71863 s!2326) (t!379181 s!2326) s!2326))))

(assert (=> b!6544139 (= e!3962454 (findConcatSeparationZippers!178 lt!2399468 lt!2399479 (++!14529 Nil!65415 (Cons!65415 (h!71863 s!2326) Nil!65415)) (t!379181 s!2326) s!2326))))

(assert (= (and d!2054494 res!2684346) b!6544134))

(assert (= (and d!2054494 c!1201815) b!6544138))

(assert (= (and d!2054494 (not c!1201815)) b!6544133))

(assert (= (and b!6544133 c!1201814) b!6544136))

(assert (= (and b!6544133 (not c!1201814)) b!6544139))

(assert (= (and d!2054494 res!2684344) b!6544131))

(assert (= (and b!6544131 res!2684345) b!6544132))

(assert (= (and b!6544132 res!2684347) b!6544137))

(assert (= (and d!2054494 (not res!2684343)) b!6544135))

(declare-fun m!7327180 () Bool)

(assert (=> d!2054494 m!7327180))

(declare-fun m!7327182 () Bool)

(assert (=> d!2054494 m!7327182))

(declare-fun m!7327184 () Bool)

(assert (=> d!2054494 m!7327184))

(declare-fun m!7327186 () Bool)

(assert (=> b!6544131 m!7327186))

(declare-fun m!7327188 () Bool)

(assert (=> b!6544131 m!7327188))

(assert (=> b!6544137 m!7327186))

(declare-fun m!7327190 () Bool)

(assert (=> b!6544137 m!7327190))

(assert (=> b!6544135 m!7327180))

(assert (=> b!6544132 m!7327186))

(declare-fun m!7327192 () Bool)

(assert (=> b!6544132 m!7327192))

(assert (=> b!6544139 m!7326946))

(assert (=> b!6544139 m!7326946))

(assert (=> b!6544139 m!7326948))

(assert (=> b!6544139 m!7326950))

(assert (=> b!6544139 m!7326946))

(declare-fun m!7327194 () Bool)

(assert (=> b!6544139 m!7327194))

(declare-fun m!7327196 () Bool)

(assert (=> b!6544134 m!7327196))

(assert (=> b!6543319 d!2054494))

(declare-fun d!2054496 () Bool)

(assert (=> d!2054496 (= (isDefined!13007 lt!2399471) (not (isEmpty!37638 lt!2399471)))))

(declare-fun bs!1671405 () Bool)

(assert (= bs!1671405 d!2054496))

(declare-fun m!7327198 () Bool)

(assert (=> bs!1671405 m!7327198))

(assert (=> b!6543319 d!2054496))

(declare-fun d!2054498 () Bool)

(assert (=> d!2054498 (isDefined!13007 (findConcatSeparationZippers!178 lt!2399468 (store ((as const (Array Context!11594 Bool)) false) lt!2399455 true) Nil!65415 s!2326 s!2326))))

(declare-fun lt!2399640 () Unit!158987)

(declare-fun choose!48603 ((InoxSet Context!11594) Context!11594 List!65539) Unit!158987)

(assert (=> d!2054498 (= lt!2399640 (choose!48603 lt!2399468 lt!2399455 s!2326))))

(assert (=> d!2054498 (matchZipper!2425 (appendTo!174 lt!2399468 lt!2399455) s!2326)))

(assert (=> d!2054498 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!178 lt!2399468 lt!2399455 s!2326) lt!2399640)))

(declare-fun bs!1671406 () Bool)

(assert (= bs!1671406 d!2054498))

(assert (=> bs!1671406 m!7326406))

(declare-fun m!7327200 () Bool)

(assert (=> bs!1671406 m!7327200))

(assert (=> bs!1671406 m!7327200))

(declare-fun m!7327202 () Bool)

(assert (=> bs!1671406 m!7327202))

(declare-fun m!7327204 () Bool)

(assert (=> bs!1671406 m!7327204))

(assert (=> bs!1671406 m!7326498))

(declare-fun m!7327206 () Bool)

(assert (=> bs!1671406 m!7327206))

(assert (=> bs!1671406 m!7326406))

(assert (=> bs!1671406 m!7326498))

(assert (=> b!6543319 d!2054498))

(declare-fun d!2054500 () Bool)

(assert (=> d!2054500 (= (get!22701 lt!2399471) (v!52488 lt!2399471))))

(assert (=> b!6543319 d!2054500))

(declare-fun b!6544149 () Bool)

(declare-fun e!3962459 () List!65539)

(assert (=> b!6544149 (= e!3962459 (Cons!65415 (h!71863 (_1!36695 lt!2399472)) (++!14529 (t!379181 (_1!36695 lt!2399472)) (_2!36695 lt!2399472))))))

(declare-fun b!6544150 () Bool)

(declare-fun res!2684353 () Bool)

(declare-fun e!3962460 () Bool)

(assert (=> b!6544150 (=> (not res!2684353) (not e!3962460))))

(declare-fun lt!2399643 () List!65539)

(declare-fun size!40481 (List!65539) Int)

(assert (=> b!6544150 (= res!2684353 (= (size!40481 lt!2399643) (+ (size!40481 (_1!36695 lt!2399472)) (size!40481 (_2!36695 lt!2399472)))))))

(declare-fun d!2054502 () Bool)

(assert (=> d!2054502 e!3962460))

(declare-fun res!2684352 () Bool)

(assert (=> d!2054502 (=> (not res!2684352) (not e!3962460))))

(declare-fun content!12529 (List!65539) (InoxSet C!33096))

(assert (=> d!2054502 (= res!2684352 (= (content!12529 lt!2399643) ((_ map or) (content!12529 (_1!36695 lt!2399472)) (content!12529 (_2!36695 lt!2399472)))))))

(assert (=> d!2054502 (= lt!2399643 e!3962459)))

(declare-fun c!1201818 () Bool)

(assert (=> d!2054502 (= c!1201818 ((_ is Nil!65415) (_1!36695 lt!2399472)))))

(assert (=> d!2054502 (= (++!14529 (_1!36695 lt!2399472) (_2!36695 lt!2399472)) lt!2399643)))

(declare-fun b!6544151 () Bool)

(assert (=> b!6544151 (= e!3962460 (or (not (= (_2!36695 lt!2399472) Nil!65415)) (= lt!2399643 (_1!36695 lt!2399472))))))

(declare-fun b!6544148 () Bool)

(assert (=> b!6544148 (= e!3962459 (_2!36695 lt!2399472))))

(assert (= (and d!2054502 c!1201818) b!6544148))

(assert (= (and d!2054502 (not c!1201818)) b!6544149))

(assert (= (and d!2054502 res!2684352) b!6544150))

(assert (= (and b!6544150 res!2684353) b!6544151))

(declare-fun m!7327208 () Bool)

(assert (=> b!6544149 m!7327208))

(declare-fun m!7327210 () Bool)

(assert (=> b!6544150 m!7327210))

(declare-fun m!7327212 () Bool)

(assert (=> b!6544150 m!7327212))

(declare-fun m!7327214 () Bool)

(assert (=> b!6544150 m!7327214))

(declare-fun m!7327216 () Bool)

(assert (=> d!2054502 m!7327216))

(declare-fun m!7327218 () Bool)

(assert (=> d!2054502 m!7327218))

(declare-fun m!7327220 () Bool)

(assert (=> d!2054502 m!7327220))

(assert (=> b!6543319 d!2054502))

(declare-fun d!2054504 () Bool)

(assert (=> d!2054504 (= (isEmpty!37633 (t!379182 zl!343)) ((_ is Nil!65416) (t!379182 zl!343)))))

(assert (=> b!6543296 d!2054504))

(declare-fun b!6544152 () Bool)

(declare-fun e!3962463 () Bool)

(declare-fun e!3962462 () Bool)

(assert (=> b!6544152 (= e!3962463 e!3962462)))

(declare-fun res!2684356 () Bool)

(assert (=> b!6544152 (=> (not res!2684356) (not e!3962462))))

(declare-fun call!569205 () Bool)

(assert (=> b!6544152 (= res!2684356 call!569205)))

(declare-fun b!6544153 () Bool)

(declare-fun e!3962465 () Bool)

(declare-fun e!3962461 () Bool)

(assert (=> b!6544153 (= e!3962465 e!3962461)))

(declare-fun res!2684357 () Bool)

(assert (=> b!6544153 (= res!2684357 (not (nullable!6406 (reg!16742 lt!2399441))))))

(assert (=> b!6544153 (=> (not res!2684357) (not e!3962461))))

(declare-fun d!2054506 () Bool)

(declare-fun res!2684358 () Bool)

(declare-fun e!3962464 () Bool)

(assert (=> d!2054506 (=> res!2684358 e!3962464)))

(assert (=> d!2054506 (= res!2684358 ((_ is ElementMatch!16413) lt!2399441))))

(assert (=> d!2054506 (= (validRegex!8149 lt!2399441) e!3962464)))

(declare-fun b!6544154 () Bool)

(declare-fun e!3962466 () Bool)

(assert (=> b!6544154 (= e!3962465 e!3962466)))

(declare-fun c!1201819 () Bool)

(assert (=> b!6544154 (= c!1201819 ((_ is Union!16413) lt!2399441))))

(declare-fun b!6544155 () Bool)

(declare-fun call!569206 () Bool)

(assert (=> b!6544155 (= e!3962462 call!569206)))

(declare-fun b!6544156 () Bool)

(declare-fun call!569204 () Bool)

(assert (=> b!6544156 (= e!3962461 call!569204)))

(declare-fun b!6544157 () Bool)

(declare-fun e!3962467 () Bool)

(assert (=> b!6544157 (= e!3962467 call!569206)))

(declare-fun bm!569199 () Bool)

(declare-fun c!1201820 () Bool)

(assert (=> bm!569199 (= call!569204 (validRegex!8149 (ite c!1201820 (reg!16742 lt!2399441) (ite c!1201819 (regOne!33339 lt!2399441) (regOne!33338 lt!2399441)))))))

(declare-fun b!6544158 () Bool)

(declare-fun res!2684355 () Bool)

(assert (=> b!6544158 (=> (not res!2684355) (not e!3962467))))

(assert (=> b!6544158 (= res!2684355 call!569205)))

(assert (=> b!6544158 (= e!3962466 e!3962467)))

(declare-fun b!6544159 () Bool)

(assert (=> b!6544159 (= e!3962464 e!3962465)))

(assert (=> b!6544159 (= c!1201820 ((_ is Star!16413) lt!2399441))))

(declare-fun b!6544160 () Bool)

(declare-fun res!2684354 () Bool)

(assert (=> b!6544160 (=> res!2684354 e!3962463)))

(assert (=> b!6544160 (= res!2684354 (not ((_ is Concat!25258) lt!2399441)))))

(assert (=> b!6544160 (= e!3962466 e!3962463)))

(declare-fun bm!569200 () Bool)

(assert (=> bm!569200 (= call!569206 (validRegex!8149 (ite c!1201819 (regTwo!33339 lt!2399441) (regTwo!33338 lt!2399441))))))

(declare-fun bm!569201 () Bool)

(assert (=> bm!569201 (= call!569205 call!569204)))

(assert (= (and d!2054506 (not res!2684358)) b!6544159))

(assert (= (and b!6544159 c!1201820) b!6544153))

(assert (= (and b!6544159 (not c!1201820)) b!6544154))

(assert (= (and b!6544153 res!2684357) b!6544156))

(assert (= (and b!6544154 c!1201819) b!6544158))

(assert (= (and b!6544154 (not c!1201819)) b!6544160))

(assert (= (and b!6544158 res!2684355) b!6544157))

(assert (= (and b!6544160 (not res!2684354)) b!6544152))

(assert (= (and b!6544152 res!2684356) b!6544155))

(assert (= (or b!6544157 b!6544155) bm!569200))

(assert (= (or b!6544158 b!6544152) bm!569201))

(assert (= (or b!6544156 bm!569201) bm!569199))

(declare-fun m!7327222 () Bool)

(assert (=> b!6544153 m!7327222))

(declare-fun m!7327224 () Bool)

(assert (=> bm!569199 m!7327224))

(declare-fun m!7327226 () Bool)

(assert (=> bm!569200 m!7327226))

(assert (=> b!6543317 d!2054506))

(declare-fun d!2054508 () Bool)

(assert (=> d!2054508 (= (isEmpty!37634 (t!379180 (exprs!6297 (h!71864 zl!343)))) ((_ is Nil!65414) (t!379180 (exprs!6297 (h!71864 zl!343)))))))

(assert (=> b!6543318 d!2054508))

(declare-fun bs!1671407 () Bool)

(declare-fun b!6544163 () Bool)

(assert (= bs!1671407 (and b!6544163 d!2054406)))

(declare-fun lambda!363156 () Int)

(assert (=> bs!1671407 (not (= lambda!363156 lambda!363145))))

(declare-fun bs!1671408 () Bool)

(assert (= bs!1671408 (and b!6544163 d!2054408)))

(assert (=> bs!1671408 (not (= lambda!363156 lambda!363154))))

(assert (=> bs!1671408 (not (= lambda!363156 lambda!363153))))

(declare-fun bs!1671409 () Bool)

(assert (= bs!1671409 (and b!6544163 b!6543717)))

(assert (=> bs!1671409 (= (and (= (reg!16742 r!7292) (reg!16742 lt!2399483)) (= r!7292 lt!2399483)) (= lambda!363156 lambda!363116))))

(declare-fun bs!1671410 () Bool)

(assert (= bs!1671410 (and b!6544163 b!6543718)))

(assert (=> bs!1671410 (not (= lambda!363156 lambda!363117))))

(declare-fun bs!1671411 () Bool)

(assert (= bs!1671411 (and b!6544163 b!6543292)))

(assert (=> bs!1671411 (not (= lambda!363156 lambda!363081))))

(assert (=> bs!1671411 (not (= lambda!363156 lambda!363082))))

(assert (=> b!6544163 true))

(assert (=> b!6544163 true))

(declare-fun bs!1671412 () Bool)

(declare-fun b!6544164 () Bool)

(assert (= bs!1671412 (and b!6544164 d!2054408)))

(declare-fun lambda!363157 () Int)

(assert (=> bs!1671412 (= lambda!363157 lambda!363154)))

(assert (=> bs!1671412 (not (= lambda!363157 lambda!363153))))

(declare-fun bs!1671413 () Bool)

(assert (= bs!1671413 (and b!6544164 b!6543717)))

(assert (=> bs!1671413 (not (= lambda!363157 lambda!363116))))

(declare-fun bs!1671414 () Bool)

(assert (= bs!1671414 (and b!6544164 b!6543718)))

(assert (=> bs!1671414 (= (and (= (regOne!33338 r!7292) (regOne!33338 lt!2399483)) (= (regTwo!33338 r!7292) (regTwo!33338 lt!2399483))) (= lambda!363157 lambda!363117))))

(declare-fun bs!1671415 () Bool)

(assert (= bs!1671415 (and b!6544164 b!6543292)))

(assert (=> bs!1671415 (not (= lambda!363157 lambda!363081))))

(assert (=> bs!1671415 (= lambda!363157 lambda!363082)))

(declare-fun bs!1671416 () Bool)

(assert (= bs!1671416 (and b!6544164 b!6544163)))

(assert (=> bs!1671416 (not (= lambda!363157 lambda!363156))))

(declare-fun bs!1671417 () Bool)

(assert (= bs!1671417 (and b!6544164 d!2054406)))

(assert (=> bs!1671417 (not (= lambda!363157 lambda!363145))))

(assert (=> b!6544164 true))

(assert (=> b!6544164 true))

(declare-fun b!6544161 () Bool)

(declare-fun e!3962471 () Bool)

(assert (=> b!6544161 (= e!3962471 (matchRSpec!3514 (regTwo!33339 r!7292) s!2326))))

(declare-fun e!3962469 () Bool)

(declare-fun call!569207 () Bool)

(assert (=> b!6544163 (= e!3962469 call!569207)))

(declare-fun e!3962470 () Bool)

(assert (=> b!6544164 (= e!3962470 call!569207)))

(declare-fun b!6544165 () Bool)

(declare-fun e!3962473 () Bool)

(assert (=> b!6544165 (= e!3962473 e!3962470)))

(declare-fun c!1201822 () Bool)

(assert (=> b!6544165 (= c!1201822 ((_ is Star!16413) r!7292))))

(declare-fun b!6544166 () Bool)

(declare-fun e!3962468 () Bool)

(declare-fun e!3962474 () Bool)

(assert (=> b!6544166 (= e!3962468 e!3962474)))

(declare-fun res!2684359 () Bool)

(assert (=> b!6544166 (= res!2684359 (not ((_ is EmptyLang!16413) r!7292)))))

(assert (=> b!6544166 (=> (not res!2684359) (not e!3962474))))

(declare-fun b!6544167 () Bool)

(declare-fun c!1201824 () Bool)

(assert (=> b!6544167 (= c!1201824 ((_ is Union!16413) r!7292))))

(declare-fun e!3962472 () Bool)

(assert (=> b!6544167 (= e!3962472 e!3962473)))

(declare-fun bm!569202 () Bool)

(assert (=> bm!569202 (= call!569207 (Exists!3483 (ite c!1201822 lambda!363156 lambda!363157)))))

(declare-fun bm!569203 () Bool)

(declare-fun call!569208 () Bool)

(assert (=> bm!569203 (= call!569208 (isEmpty!37636 s!2326))))

(declare-fun b!6544168 () Bool)

(assert (=> b!6544168 (= e!3962468 call!569208)))

(declare-fun b!6544169 () Bool)

(assert (=> b!6544169 (= e!3962473 e!3962471)))

(declare-fun res!2684361 () Bool)

(assert (=> b!6544169 (= res!2684361 (matchRSpec!3514 (regOne!33339 r!7292) s!2326))))

(assert (=> b!6544169 (=> res!2684361 e!3962471)))

(declare-fun b!6544170 () Bool)

(assert (=> b!6544170 (= e!3962472 (= s!2326 (Cons!65415 (c!1201588 r!7292) Nil!65415)))))

(declare-fun b!6544171 () Bool)

(declare-fun c!1201823 () Bool)

(assert (=> b!6544171 (= c!1201823 ((_ is ElementMatch!16413) r!7292))))

(assert (=> b!6544171 (= e!3962474 e!3962472)))

(declare-fun d!2054510 () Bool)

(declare-fun c!1201821 () Bool)

(assert (=> d!2054510 (= c!1201821 ((_ is EmptyExpr!16413) r!7292))))

(assert (=> d!2054510 (= (matchRSpec!3514 r!7292 s!2326) e!3962468)))

(declare-fun b!6544162 () Bool)

(declare-fun res!2684360 () Bool)

(assert (=> b!6544162 (=> res!2684360 e!3962469)))

(assert (=> b!6544162 (= res!2684360 call!569208)))

(assert (=> b!6544162 (= e!3962470 e!3962469)))

(assert (= (and d!2054510 c!1201821) b!6544168))

(assert (= (and d!2054510 (not c!1201821)) b!6544166))

(assert (= (and b!6544166 res!2684359) b!6544171))

(assert (= (and b!6544171 c!1201823) b!6544170))

(assert (= (and b!6544171 (not c!1201823)) b!6544167))

(assert (= (and b!6544167 c!1201824) b!6544169))

(assert (= (and b!6544167 (not c!1201824)) b!6544165))

(assert (= (and b!6544169 (not res!2684361)) b!6544161))

(assert (= (and b!6544165 c!1201822) b!6544162))

(assert (= (and b!6544165 (not c!1201822)) b!6544164))

(assert (= (and b!6544162 (not res!2684360)) b!6544163))

(assert (= (or b!6544163 b!6544164) bm!569202))

(assert (= (or b!6544168 b!6544162) bm!569203))

(declare-fun m!7327228 () Bool)

(assert (=> b!6544161 m!7327228))

(declare-fun m!7327230 () Bool)

(assert (=> bm!569202 m!7327230))

(assert (=> bm!569203 m!7326810))

(declare-fun m!7327232 () Bool)

(assert (=> b!6544169 m!7327232))

(assert (=> b!6543295 d!2054510))

(declare-fun b!6544172 () Bool)

(declare-fun e!3962475 () Bool)

(declare-fun lt!2399644 () Bool)

(assert (=> b!6544172 (= e!3962475 (not lt!2399644))))

(declare-fun b!6544173 () Bool)

(declare-fun e!3962479 () Bool)

(assert (=> b!6544173 (= e!3962479 e!3962475)))

(declare-fun c!1201825 () Bool)

(assert (=> b!6544173 (= c!1201825 ((_ is EmptyLang!16413) r!7292))))

(declare-fun b!6544174 () Bool)

(declare-fun res!2684362 () Bool)

(declare-fun e!3962481 () Bool)

(assert (=> b!6544174 (=> res!2684362 e!3962481)))

(assert (=> b!6544174 (= res!2684362 (not (isEmpty!37636 (tail!12365 s!2326))))))

(declare-fun b!6544175 () Bool)

(declare-fun res!2684363 () Bool)

(declare-fun e!3962480 () Bool)

(assert (=> b!6544175 (=> (not res!2684363) (not e!3962480))))

(assert (=> b!6544175 (= res!2684363 (isEmpty!37636 (tail!12365 s!2326)))))

(declare-fun b!6544176 () Bool)

(declare-fun e!3962478 () Bool)

(assert (=> b!6544176 (= e!3962478 (nullable!6406 r!7292))))

(declare-fun b!6544177 () Bool)

(declare-fun call!569209 () Bool)

(assert (=> b!6544177 (= e!3962479 (= lt!2399644 call!569209))))

(declare-fun b!6544178 () Bool)

(declare-fun e!3962476 () Bool)

(assert (=> b!6544178 (= e!3962476 e!3962481)))

(declare-fun res!2684368 () Bool)

(assert (=> b!6544178 (=> res!2684368 e!3962481)))

(assert (=> b!6544178 (= res!2684368 call!569209)))

(declare-fun b!6544180 () Bool)

(assert (=> b!6544180 (= e!3962478 (matchR!8596 (derivativeStep!5099 r!7292 (head!13280 s!2326)) (tail!12365 s!2326)))))

(declare-fun b!6544181 () Bool)

(declare-fun e!3962477 () Bool)

(assert (=> b!6544181 (= e!3962477 e!3962476)))

(declare-fun res!2684364 () Bool)

(assert (=> b!6544181 (=> (not res!2684364) (not e!3962476))))

(assert (=> b!6544181 (= res!2684364 (not lt!2399644))))

(declare-fun b!6544182 () Bool)

(declare-fun res!2684366 () Bool)

(assert (=> b!6544182 (=> res!2684366 e!3962477)))

(assert (=> b!6544182 (= res!2684366 e!3962480)))

(declare-fun res!2684369 () Bool)

(assert (=> b!6544182 (=> (not res!2684369) (not e!3962480))))

(assert (=> b!6544182 (= res!2684369 lt!2399644)))

(declare-fun b!6544179 () Bool)

(assert (=> b!6544179 (= e!3962480 (= (head!13280 s!2326) (c!1201588 r!7292)))))

(declare-fun d!2054512 () Bool)

(assert (=> d!2054512 e!3962479))

(declare-fun c!1201826 () Bool)

(assert (=> d!2054512 (= c!1201826 ((_ is EmptyExpr!16413) r!7292))))

(assert (=> d!2054512 (= lt!2399644 e!3962478)))

(declare-fun c!1201827 () Bool)

(assert (=> d!2054512 (= c!1201827 (isEmpty!37636 s!2326))))

(assert (=> d!2054512 (validRegex!8149 r!7292)))

(assert (=> d!2054512 (= (matchR!8596 r!7292 s!2326) lt!2399644)))

(declare-fun bm!569204 () Bool)

(assert (=> bm!569204 (= call!569209 (isEmpty!37636 s!2326))))

(declare-fun b!6544183 () Bool)

(declare-fun res!2684367 () Bool)

(assert (=> b!6544183 (=> res!2684367 e!3962477)))

(assert (=> b!6544183 (= res!2684367 (not ((_ is ElementMatch!16413) r!7292)))))

(assert (=> b!6544183 (= e!3962475 e!3962477)))

(declare-fun b!6544184 () Bool)

(assert (=> b!6544184 (= e!3962481 (not (= (head!13280 s!2326) (c!1201588 r!7292))))))

(declare-fun b!6544185 () Bool)

(declare-fun res!2684365 () Bool)

(assert (=> b!6544185 (=> (not res!2684365) (not e!3962480))))

(assert (=> b!6544185 (= res!2684365 (not call!569209))))

(assert (= (and d!2054512 c!1201827) b!6544176))

(assert (= (and d!2054512 (not c!1201827)) b!6544180))

(assert (= (and d!2054512 c!1201826) b!6544177))

(assert (= (and d!2054512 (not c!1201826)) b!6544173))

(assert (= (and b!6544173 c!1201825) b!6544172))

(assert (= (and b!6544173 (not c!1201825)) b!6544183))

(assert (= (and b!6544183 (not res!2684367)) b!6544182))

(assert (= (and b!6544182 res!2684369) b!6544185))

(assert (= (and b!6544185 res!2684365) b!6544175))

(assert (= (and b!6544175 res!2684363) b!6544179))

(assert (= (and b!6544182 (not res!2684366)) b!6544181))

(assert (= (and b!6544181 res!2684364) b!6544178))

(assert (= (and b!6544178 (not res!2684368)) b!6544174))

(assert (= (and b!6544174 (not res!2684362)) b!6544184))

(assert (= (or b!6544177 b!6544178 b!6544185) bm!569204))

(assert (=> b!6544175 m!7326802))

(assert (=> b!6544175 m!7326802))

(assert (=> b!6544175 m!7326804))

(declare-fun m!7327234 () Bool)

(assert (=> b!6544176 m!7327234))

(assert (=> b!6544184 m!7326808))

(assert (=> bm!569204 m!7326810))

(assert (=> d!2054512 m!7326810))

(assert (=> d!2054512 m!7326394))

(assert (=> b!6544179 m!7326808))

(assert (=> b!6544180 m!7326808))

(assert (=> b!6544180 m!7326808))

(declare-fun m!7327236 () Bool)

(assert (=> b!6544180 m!7327236))

(assert (=> b!6544180 m!7326802))

(assert (=> b!6544180 m!7327236))

(assert (=> b!6544180 m!7326802))

(declare-fun m!7327238 () Bool)

(assert (=> b!6544180 m!7327238))

(assert (=> b!6544174 m!7326802))

(assert (=> b!6544174 m!7326802))

(assert (=> b!6544174 m!7326804))

(assert (=> b!6543295 d!2054512))

(declare-fun d!2054514 () Bool)

(assert (=> d!2054514 (= (matchR!8596 r!7292 s!2326) (matchRSpec!3514 r!7292 s!2326))))

(declare-fun lt!2399645 () Unit!158987)

(assert (=> d!2054514 (= lt!2399645 (choose!48593 r!7292 s!2326))))

(assert (=> d!2054514 (validRegex!8149 r!7292)))

(assert (=> d!2054514 (= (mainMatchTheorem!3514 r!7292 s!2326) lt!2399645)))

(declare-fun bs!1671418 () Bool)

(assert (= bs!1671418 d!2054514))

(assert (=> bs!1671418 m!7326418))

(assert (=> bs!1671418 m!7326416))

(declare-fun m!7327240 () Bool)

(assert (=> bs!1671418 m!7327240))

(assert (=> bs!1671418 m!7326394))

(assert (=> b!6543295 d!2054514))

(assert (=> b!6543293 d!2054458))

(declare-fun bs!1671419 () Bool)

(declare-fun d!2054516 () Bool)

(assert (= bs!1671419 (and d!2054516 b!6543286)))

(declare-fun lambda!363160 () Int)

(assert (=> bs!1671419 (= lambda!363160 lambda!363085)))

(declare-fun bs!1671420 () Bool)

(assert (= bs!1671420 (and d!2054516 d!2054376)))

(assert (=> bs!1671420 (= lambda!363160 lambda!363126)))

(declare-fun bs!1671421 () Bool)

(assert (= bs!1671421 (and d!2054516 d!2054382)))

(assert (=> bs!1671421 (= lambda!363160 lambda!363132)))

(declare-fun b!6544206 () Bool)

(declare-fun e!3962496 () Regex!16413)

(assert (=> b!6544206 (= e!3962496 (Concat!25258 (h!71862 (exprs!6297 (h!71864 zl!343))) (generalisedConcat!2010 (t!379180 (exprs!6297 (h!71864 zl!343))))))))

(declare-fun b!6544207 () Bool)

(assert (=> b!6544207 (= e!3962496 EmptyExpr!16413)))

(declare-fun e!3962494 () Bool)

(assert (=> d!2054516 e!3962494))

(declare-fun res!2684374 () Bool)

(assert (=> d!2054516 (=> (not res!2684374) (not e!3962494))))

(declare-fun lt!2399648 () Regex!16413)

(assert (=> d!2054516 (= res!2684374 (validRegex!8149 lt!2399648))))

(declare-fun e!3962498 () Regex!16413)

(assert (=> d!2054516 (= lt!2399648 e!3962498)))

(declare-fun c!1201839 () Bool)

(declare-fun e!3962497 () Bool)

(assert (=> d!2054516 (= c!1201839 e!3962497)))

(declare-fun res!2684375 () Bool)

(assert (=> d!2054516 (=> (not res!2684375) (not e!3962497))))

(assert (=> d!2054516 (= res!2684375 ((_ is Cons!65414) (exprs!6297 (h!71864 zl!343))))))

(assert (=> d!2054516 (forall!15587 (exprs!6297 (h!71864 zl!343)) lambda!363160)))

(assert (=> d!2054516 (= (generalisedConcat!2010 (exprs!6297 (h!71864 zl!343))) lt!2399648)))

(declare-fun b!6544208 () Bool)

(declare-fun e!3962495 () Bool)

(declare-fun e!3962499 () Bool)

(assert (=> b!6544208 (= e!3962495 e!3962499)))

(declare-fun c!1201836 () Bool)

(assert (=> b!6544208 (= c!1201836 (isEmpty!37634 (tail!12367 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun b!6544209 () Bool)

(assert (=> b!6544209 (= e!3962494 e!3962495)))

(declare-fun c!1201838 () Bool)

(assert (=> b!6544209 (= c!1201838 (isEmpty!37634 (exprs!6297 (h!71864 zl!343))))))

(declare-fun b!6544210 () Bool)

(declare-fun isConcat!1317 (Regex!16413) Bool)

(assert (=> b!6544210 (= e!3962499 (isConcat!1317 lt!2399648))))

(declare-fun b!6544211 () Bool)

(assert (=> b!6544211 (= e!3962498 (h!71862 (exprs!6297 (h!71864 zl!343))))))

(declare-fun b!6544212 () Bool)

(assert (=> b!6544212 (= e!3962499 (= lt!2399648 (head!13282 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun b!6544213 () Bool)

(assert (=> b!6544213 (= e!3962498 e!3962496)))

(declare-fun c!1201837 () Bool)

(assert (=> b!6544213 (= c!1201837 ((_ is Cons!65414) (exprs!6297 (h!71864 zl!343))))))

(declare-fun b!6544214 () Bool)

(assert (=> b!6544214 (= e!3962497 (isEmpty!37634 (t!379180 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun b!6544215 () Bool)

(declare-fun isEmptyExpr!1794 (Regex!16413) Bool)

(assert (=> b!6544215 (= e!3962495 (isEmptyExpr!1794 lt!2399648))))

(assert (= (and d!2054516 res!2684375) b!6544214))

(assert (= (and d!2054516 c!1201839) b!6544211))

(assert (= (and d!2054516 (not c!1201839)) b!6544213))

(assert (= (and b!6544213 c!1201837) b!6544206))

(assert (= (and b!6544213 (not c!1201837)) b!6544207))

(assert (= (and d!2054516 res!2684374) b!6544209))

(assert (= (and b!6544209 c!1201838) b!6544215))

(assert (= (and b!6544209 (not c!1201838)) b!6544208))

(assert (= (and b!6544208 c!1201836) b!6544212))

(assert (= (and b!6544208 (not c!1201836)) b!6544210))

(declare-fun m!7327242 () Bool)

(assert (=> b!6544210 m!7327242))

(declare-fun m!7327244 () Bool)

(assert (=> b!6544208 m!7327244))

(assert (=> b!6544208 m!7327244))

(declare-fun m!7327246 () Bool)

(assert (=> b!6544208 m!7327246))

(declare-fun m!7327248 () Bool)

(assert (=> b!6544212 m!7327248))

(declare-fun m!7327250 () Bool)

(assert (=> d!2054516 m!7327250))

(declare-fun m!7327252 () Bool)

(assert (=> d!2054516 m!7327252))

(assert (=> b!6544214 m!7326520))

(declare-fun m!7327254 () Bool)

(assert (=> b!6544215 m!7327254))

(declare-fun m!7327256 () Bool)

(assert (=> b!6544209 m!7327256))

(declare-fun m!7327258 () Bool)

(assert (=> b!6544206 m!7327258))

(assert (=> b!6543294 d!2054516))

(declare-fun bs!1671422 () Bool)

(declare-fun d!2054518 () Bool)

(assert (= bs!1671422 (and d!2054518 b!6543286)))

(declare-fun lambda!363163 () Int)

(assert (=> bs!1671422 (= lambda!363163 lambda!363085)))

(declare-fun bs!1671423 () Bool)

(assert (= bs!1671423 (and d!2054518 d!2054376)))

(assert (=> bs!1671423 (= lambda!363163 lambda!363126)))

(declare-fun bs!1671424 () Bool)

(assert (= bs!1671424 (and d!2054518 d!2054382)))

(assert (=> bs!1671424 (= lambda!363163 lambda!363132)))

(declare-fun bs!1671425 () Bool)

(assert (= bs!1671425 (and d!2054518 d!2054516)))

(assert (=> bs!1671425 (= lambda!363163 lambda!363160)))

(assert (=> d!2054518 (= (inv!84279 (h!71864 zl!343)) (forall!15587 (exprs!6297 (h!71864 zl!343)) lambda!363163))))

(declare-fun bs!1671426 () Bool)

(assert (= bs!1671426 d!2054518))

(declare-fun m!7327260 () Bool)

(assert (=> bs!1671426 m!7327260))

(assert (=> b!6543281 d!2054518))

(assert (=> b!6543282 d!2054334))

(declare-fun d!2054520 () Bool)

(assert (=> d!2054520 (= (matchR!8596 (reg!16742 (regOne!33338 r!7292)) (_1!36695 lt!2399472)) (matchZipper!2425 lt!2399468 (_1!36695 lt!2399472)))))

(declare-fun lt!2399651 () Unit!158987)

(declare-fun choose!48605 ((InoxSet Context!11594) List!65540 Regex!16413 List!65539) Unit!158987)

(assert (=> d!2054520 (= lt!2399651 (choose!48605 lt!2399468 lt!2399453 (reg!16742 (regOne!33338 r!7292)) (_1!36695 lt!2399472)))))

(assert (=> d!2054520 (validRegex!8149 (reg!16742 (regOne!33338 r!7292)))))

(assert (=> d!2054520 (= (theoremZipperRegexEquiv!849 lt!2399468 lt!2399453 (reg!16742 (regOne!33338 r!7292)) (_1!36695 lt!2399472)) lt!2399651)))

(declare-fun bs!1671427 () Bool)

(assert (= bs!1671427 d!2054520))

(assert (=> bs!1671427 m!7326478))

(assert (=> bs!1671427 m!7326492))

(declare-fun m!7327262 () Bool)

(assert (=> bs!1671427 m!7327262))

(assert (=> bs!1671427 m!7326490))

(assert (=> b!6543280 d!2054520))

(declare-fun d!2054522 () Bool)

(assert (=> d!2054522 (= (matchR!8596 lt!2399441 (_2!36695 lt!2399472)) (matchZipper!2425 lt!2399479 (_2!36695 lt!2399472)))))

(declare-fun lt!2399652 () Unit!158987)

(assert (=> d!2054522 (= lt!2399652 (choose!48605 lt!2399479 lt!2399481 lt!2399441 (_2!36695 lt!2399472)))))

(assert (=> d!2054522 (validRegex!8149 lt!2399441)))

(assert (=> d!2054522 (= (theoremZipperRegexEquiv!849 lt!2399479 lt!2399481 lt!2399441 (_2!36695 lt!2399472)) lt!2399652)))

(declare-fun bs!1671428 () Bool)

(assert (= bs!1671428 d!2054522))

(assert (=> bs!1671428 m!7326476))

(assert (=> bs!1671428 m!7326396))

(declare-fun m!7327264 () Bool)

(assert (=> bs!1671428 m!7327264))

(assert (=> bs!1671428 m!7326518))

(assert (=> b!6543280 d!2054522))

(declare-fun b!6544216 () Bool)

(declare-fun e!3962500 () Bool)

(declare-fun lt!2399653 () Bool)

(assert (=> b!6544216 (= e!3962500 (not lt!2399653))))

(declare-fun b!6544217 () Bool)

(declare-fun e!3962504 () Bool)

(assert (=> b!6544217 (= e!3962504 e!3962500)))

(declare-fun c!1201840 () Bool)

(assert (=> b!6544217 (= c!1201840 ((_ is EmptyLang!16413) lt!2399441))))

(declare-fun b!6544218 () Bool)

(declare-fun res!2684376 () Bool)

(declare-fun e!3962506 () Bool)

(assert (=> b!6544218 (=> res!2684376 e!3962506)))

(assert (=> b!6544218 (= res!2684376 (not (isEmpty!37636 (tail!12365 (_2!36695 lt!2399472)))))))

(declare-fun b!6544219 () Bool)

(declare-fun res!2684377 () Bool)

(declare-fun e!3962505 () Bool)

(assert (=> b!6544219 (=> (not res!2684377) (not e!3962505))))

(assert (=> b!6544219 (= res!2684377 (isEmpty!37636 (tail!12365 (_2!36695 lt!2399472))))))

(declare-fun b!6544220 () Bool)

(declare-fun e!3962503 () Bool)

(assert (=> b!6544220 (= e!3962503 (nullable!6406 lt!2399441))))

(declare-fun b!6544221 () Bool)

(declare-fun call!569210 () Bool)

(assert (=> b!6544221 (= e!3962504 (= lt!2399653 call!569210))))

(declare-fun b!6544222 () Bool)

(declare-fun e!3962501 () Bool)

(assert (=> b!6544222 (= e!3962501 e!3962506)))

(declare-fun res!2684382 () Bool)

(assert (=> b!6544222 (=> res!2684382 e!3962506)))

(assert (=> b!6544222 (= res!2684382 call!569210)))

(declare-fun b!6544224 () Bool)

(assert (=> b!6544224 (= e!3962503 (matchR!8596 (derivativeStep!5099 lt!2399441 (head!13280 (_2!36695 lt!2399472))) (tail!12365 (_2!36695 lt!2399472))))))

(declare-fun b!6544225 () Bool)

(declare-fun e!3962502 () Bool)

(assert (=> b!6544225 (= e!3962502 e!3962501)))

(declare-fun res!2684378 () Bool)

(assert (=> b!6544225 (=> (not res!2684378) (not e!3962501))))

(assert (=> b!6544225 (= res!2684378 (not lt!2399653))))

(declare-fun b!6544226 () Bool)

(declare-fun res!2684380 () Bool)

(assert (=> b!6544226 (=> res!2684380 e!3962502)))

(assert (=> b!6544226 (= res!2684380 e!3962505)))

(declare-fun res!2684383 () Bool)

(assert (=> b!6544226 (=> (not res!2684383) (not e!3962505))))

(assert (=> b!6544226 (= res!2684383 lt!2399653)))

(declare-fun b!6544223 () Bool)

(assert (=> b!6544223 (= e!3962505 (= (head!13280 (_2!36695 lt!2399472)) (c!1201588 lt!2399441)))))

(declare-fun d!2054524 () Bool)

(assert (=> d!2054524 e!3962504))

(declare-fun c!1201841 () Bool)

(assert (=> d!2054524 (= c!1201841 ((_ is EmptyExpr!16413) lt!2399441))))

(assert (=> d!2054524 (= lt!2399653 e!3962503)))

(declare-fun c!1201842 () Bool)

(assert (=> d!2054524 (= c!1201842 (isEmpty!37636 (_2!36695 lt!2399472)))))

(assert (=> d!2054524 (validRegex!8149 lt!2399441)))

(assert (=> d!2054524 (= (matchR!8596 lt!2399441 (_2!36695 lt!2399472)) lt!2399653)))

(declare-fun bm!569205 () Bool)

(assert (=> bm!569205 (= call!569210 (isEmpty!37636 (_2!36695 lt!2399472)))))

(declare-fun b!6544227 () Bool)

(declare-fun res!2684381 () Bool)

(assert (=> b!6544227 (=> res!2684381 e!3962502)))

(assert (=> b!6544227 (= res!2684381 (not ((_ is ElementMatch!16413) lt!2399441)))))

(assert (=> b!6544227 (= e!3962500 e!3962502)))

(declare-fun b!6544228 () Bool)

(assert (=> b!6544228 (= e!3962506 (not (= (head!13280 (_2!36695 lt!2399472)) (c!1201588 lt!2399441))))))

(declare-fun b!6544229 () Bool)

(declare-fun res!2684379 () Bool)

(assert (=> b!6544229 (=> (not res!2684379) (not e!3962505))))

(assert (=> b!6544229 (= res!2684379 (not call!569210))))

(assert (= (and d!2054524 c!1201842) b!6544220))

(assert (= (and d!2054524 (not c!1201842)) b!6544224))

(assert (= (and d!2054524 c!1201841) b!6544221))

(assert (= (and d!2054524 (not c!1201841)) b!6544217))

(assert (= (and b!6544217 c!1201840) b!6544216))

(assert (= (and b!6544217 (not c!1201840)) b!6544227))

(assert (= (and b!6544227 (not res!2684381)) b!6544226))

(assert (= (and b!6544226 res!2684383) b!6544229))

(assert (= (and b!6544229 res!2684379) b!6544219))

(assert (= (and b!6544219 res!2684377) b!6544223))

(assert (= (and b!6544226 (not res!2684380)) b!6544225))

(assert (= (and b!6544225 res!2684378) b!6544222))

(assert (= (and b!6544222 (not res!2684382)) b!6544218))

(assert (= (and b!6544218 (not res!2684376)) b!6544228))

(assert (= (or b!6544221 b!6544222 b!6544229) bm!569205))

(assert (=> b!6544219 m!7327170))

(assert (=> b!6544219 m!7327170))

(declare-fun m!7327266 () Bool)

(assert (=> b!6544219 m!7327266))

(declare-fun m!7327268 () Bool)

(assert (=> b!6544220 m!7327268))

(assert (=> b!6544228 m!7327166))

(assert (=> bm!569205 m!7327162))

(assert (=> d!2054524 m!7327162))

(assert (=> d!2054524 m!7326518))

(assert (=> b!6544223 m!7327166))

(assert (=> b!6544224 m!7327166))

(assert (=> b!6544224 m!7327166))

(declare-fun m!7327270 () Bool)

(assert (=> b!6544224 m!7327270))

(assert (=> b!6544224 m!7327170))

(assert (=> b!6544224 m!7327270))

(assert (=> b!6544224 m!7327170))

(declare-fun m!7327272 () Bool)

(assert (=> b!6544224 m!7327272))

(assert (=> b!6544218 m!7327170))

(assert (=> b!6544218 m!7327170))

(assert (=> b!6544218 m!7327266))

(assert (=> b!6543280 d!2054524))

(declare-fun d!2054526 () Bool)

(declare-fun c!1201843 () Bool)

(assert (=> d!2054526 (= c!1201843 (isEmpty!37636 lt!2399461))))

(declare-fun e!3962507 () Bool)

(assert (=> d!2054526 (= (matchZipper!2425 (store ((as const (Array Context!11594 Bool)) false) (Context!11595 (++!14528 lt!2399462 lt!2399477)) true) lt!2399461) e!3962507)))

(declare-fun b!6544230 () Bool)

(assert (=> b!6544230 (= e!3962507 (nullableZipper!2160 (store ((as const (Array Context!11594 Bool)) false) (Context!11595 (++!14528 lt!2399462 lt!2399477)) true)))))

(declare-fun b!6544231 () Bool)

(assert (=> b!6544231 (= e!3962507 (matchZipper!2425 (derivationStepZipper!2379 (store ((as const (Array Context!11594 Bool)) false) (Context!11595 (++!14528 lt!2399462 lt!2399477)) true) (head!13280 lt!2399461)) (tail!12365 lt!2399461)))))

(assert (= (and d!2054526 c!1201843) b!6544230))

(assert (= (and d!2054526 (not c!1201843)) b!6544231))

(declare-fun m!7327274 () Bool)

(assert (=> d!2054526 m!7327274))

(assert (=> b!6544230 m!7326482))

(declare-fun m!7327276 () Bool)

(assert (=> b!6544230 m!7327276))

(declare-fun m!7327278 () Bool)

(assert (=> b!6544231 m!7327278))

(assert (=> b!6544231 m!7326482))

(assert (=> b!6544231 m!7327278))

(declare-fun m!7327280 () Bool)

(assert (=> b!6544231 m!7327280))

(declare-fun m!7327282 () Bool)

(assert (=> b!6544231 m!7327282))

(assert (=> b!6544231 m!7327280))

(assert (=> b!6544231 m!7327282))

(declare-fun m!7327284 () Bool)

(assert (=> b!6544231 m!7327284))

(assert (=> b!6543280 d!2054526))

(declare-fun bs!1671429 () Bool)

(declare-fun d!2054528 () Bool)

(assert (= bs!1671429 (and d!2054528 d!2054382)))

(declare-fun lambda!363166 () Int)

(assert (=> bs!1671429 (= lambda!363166 lambda!363132)))

(declare-fun bs!1671430 () Bool)

(assert (= bs!1671430 (and d!2054528 d!2054516)))

(assert (=> bs!1671430 (= lambda!363166 lambda!363160)))

(declare-fun bs!1671431 () Bool)

(assert (= bs!1671431 (and d!2054528 b!6543286)))

(assert (=> bs!1671431 (= lambda!363166 lambda!363085)))

(declare-fun bs!1671432 () Bool)

(assert (= bs!1671432 (and d!2054528 d!2054376)))

(assert (=> bs!1671432 (= lambda!363166 lambda!363126)))

(declare-fun bs!1671433 () Bool)

(assert (= bs!1671433 (and d!2054528 d!2054518)))

(assert (=> bs!1671433 (= lambda!363166 lambda!363163)))

(assert (=> d!2054528 (matchZipper!2425 (store ((as const (Array Context!11594 Bool)) false) (Context!11595 (++!14528 (exprs!6297 lt!2399456) (exprs!6297 lt!2399455))) true) (++!14529 (_1!36695 lt!2399472) (_2!36695 lt!2399472)))))

(declare-fun lt!2399659 () Unit!158987)

(assert (=> d!2054528 (= lt!2399659 (lemmaConcatPreservesForall!386 (exprs!6297 lt!2399456) (exprs!6297 lt!2399455) lambda!363166))))

(declare-fun lt!2399658 () Unit!158987)

(declare-fun choose!48606 (Context!11594 Context!11594 List!65539 List!65539) Unit!158987)

(assert (=> d!2054528 (= lt!2399658 (choose!48606 lt!2399456 lt!2399455 (_1!36695 lt!2399472) (_2!36695 lt!2399472)))))

(assert (=> d!2054528 (matchZipper!2425 (store ((as const (Array Context!11594 Bool)) false) lt!2399456 true) (_1!36695 lt!2399472))))

(assert (=> d!2054528 (= (lemmaConcatenateContextMatchesConcatOfStrings!194 lt!2399456 lt!2399455 (_1!36695 lt!2399472) (_2!36695 lt!2399472)) lt!2399658)))

(declare-fun bs!1671434 () Bool)

(assert (= bs!1671434 d!2054528))

(declare-fun m!7327286 () Bool)

(assert (=> bs!1671434 m!7327286))

(assert (=> bs!1671434 m!7326398))

(declare-fun m!7327288 () Bool)

(assert (=> bs!1671434 m!7327288))

(declare-fun m!7327290 () Bool)

(assert (=> bs!1671434 m!7327290))

(assert (=> bs!1671434 m!7327290))

(assert (=> bs!1671434 m!7326434))

(declare-fun m!7327292 () Bool)

(assert (=> bs!1671434 m!7327292))

(assert (=> bs!1671434 m!7326434))

(declare-fun m!7327294 () Bool)

(assert (=> bs!1671434 m!7327294))

(assert (=> bs!1671434 m!7326398))

(declare-fun m!7327296 () Bool)

(assert (=> bs!1671434 m!7327296))

(assert (=> b!6543280 d!2054528))

(declare-fun b!6544232 () Bool)

(declare-fun e!3962510 () Bool)

(declare-fun e!3962509 () Bool)

(assert (=> b!6544232 (= e!3962510 e!3962509)))

(declare-fun res!2684386 () Bool)

(assert (=> b!6544232 (=> (not res!2684386) (not e!3962509))))

(declare-fun call!569212 () Bool)

(assert (=> b!6544232 (= res!2684386 call!569212)))

(declare-fun b!6544233 () Bool)

(declare-fun e!3962512 () Bool)

(declare-fun e!3962508 () Bool)

(assert (=> b!6544233 (= e!3962512 e!3962508)))

(declare-fun res!2684387 () Bool)

(assert (=> b!6544233 (= res!2684387 (not (nullable!6406 (reg!16742 (reg!16742 (regOne!33338 r!7292))))))))

(assert (=> b!6544233 (=> (not res!2684387) (not e!3962508))))

(declare-fun d!2054530 () Bool)

(declare-fun res!2684388 () Bool)

(declare-fun e!3962511 () Bool)

(assert (=> d!2054530 (=> res!2684388 e!3962511)))

(assert (=> d!2054530 (= res!2684388 ((_ is ElementMatch!16413) (reg!16742 (regOne!33338 r!7292))))))

(assert (=> d!2054530 (= (validRegex!8149 (reg!16742 (regOne!33338 r!7292))) e!3962511)))

(declare-fun b!6544234 () Bool)

(declare-fun e!3962513 () Bool)

(assert (=> b!6544234 (= e!3962512 e!3962513)))

(declare-fun c!1201844 () Bool)

(assert (=> b!6544234 (= c!1201844 ((_ is Union!16413) (reg!16742 (regOne!33338 r!7292))))))

(declare-fun b!6544235 () Bool)

(declare-fun call!569213 () Bool)

(assert (=> b!6544235 (= e!3962509 call!569213)))

(declare-fun b!6544236 () Bool)

(declare-fun call!569211 () Bool)

(assert (=> b!6544236 (= e!3962508 call!569211)))

(declare-fun b!6544237 () Bool)

(declare-fun e!3962514 () Bool)

(assert (=> b!6544237 (= e!3962514 call!569213)))

(declare-fun bm!569206 () Bool)

(declare-fun c!1201845 () Bool)

(assert (=> bm!569206 (= call!569211 (validRegex!8149 (ite c!1201845 (reg!16742 (reg!16742 (regOne!33338 r!7292))) (ite c!1201844 (regOne!33339 (reg!16742 (regOne!33338 r!7292))) (regOne!33338 (reg!16742 (regOne!33338 r!7292)))))))))

(declare-fun b!6544238 () Bool)

(declare-fun res!2684385 () Bool)

(assert (=> b!6544238 (=> (not res!2684385) (not e!3962514))))

(assert (=> b!6544238 (= res!2684385 call!569212)))

(assert (=> b!6544238 (= e!3962513 e!3962514)))

(declare-fun b!6544239 () Bool)

(assert (=> b!6544239 (= e!3962511 e!3962512)))

(assert (=> b!6544239 (= c!1201845 ((_ is Star!16413) (reg!16742 (regOne!33338 r!7292))))))

(declare-fun b!6544240 () Bool)

(declare-fun res!2684384 () Bool)

(assert (=> b!6544240 (=> res!2684384 e!3962510)))

(assert (=> b!6544240 (= res!2684384 (not ((_ is Concat!25258) (reg!16742 (regOne!33338 r!7292)))))))

(assert (=> b!6544240 (= e!3962513 e!3962510)))

(declare-fun bm!569207 () Bool)

(assert (=> bm!569207 (= call!569213 (validRegex!8149 (ite c!1201844 (regTwo!33339 (reg!16742 (regOne!33338 r!7292))) (regTwo!33338 (reg!16742 (regOne!33338 r!7292))))))))

(declare-fun bm!569208 () Bool)

(assert (=> bm!569208 (= call!569212 call!569211)))

(assert (= (and d!2054530 (not res!2684388)) b!6544239))

(assert (= (and b!6544239 c!1201845) b!6544233))

(assert (= (and b!6544239 (not c!1201845)) b!6544234))

(assert (= (and b!6544233 res!2684387) b!6544236))

(assert (= (and b!6544234 c!1201844) b!6544238))

(assert (= (and b!6544234 (not c!1201844)) b!6544240))

(assert (= (and b!6544238 res!2684385) b!6544237))

(assert (= (and b!6544240 (not res!2684384)) b!6544232))

(assert (= (and b!6544232 res!2684386) b!6544235))

(assert (= (or b!6544237 b!6544235) bm!569207))

(assert (= (or b!6544238 b!6544232) bm!569208))

(assert (= (or b!6544236 bm!569208) bm!569206))

(declare-fun m!7327298 () Bool)

(assert (=> b!6544233 m!7327298))

(declare-fun m!7327300 () Bool)

(assert (=> bm!569206 m!7327300))

(declare-fun m!7327302 () Bool)

(assert (=> bm!569207 m!7327302))

(assert (=> b!6543280 d!2054530))

(declare-fun b!6544241 () Bool)

(declare-fun e!3962515 () Bool)

(declare-fun lt!2399660 () Bool)

(assert (=> b!6544241 (= e!3962515 (not lt!2399660))))

(declare-fun b!6544242 () Bool)

(declare-fun e!3962519 () Bool)

(assert (=> b!6544242 (= e!3962519 e!3962515)))

(declare-fun c!1201846 () Bool)

(assert (=> b!6544242 (= c!1201846 ((_ is EmptyLang!16413) (reg!16742 (regOne!33338 r!7292))))))

(declare-fun b!6544243 () Bool)

(declare-fun res!2684389 () Bool)

(declare-fun e!3962521 () Bool)

(assert (=> b!6544243 (=> res!2684389 e!3962521)))

(assert (=> b!6544243 (= res!2684389 (not (isEmpty!37636 (tail!12365 (_1!36695 lt!2399472)))))))

(declare-fun b!6544244 () Bool)

(declare-fun res!2684390 () Bool)

(declare-fun e!3962520 () Bool)

(assert (=> b!6544244 (=> (not res!2684390) (not e!3962520))))

(assert (=> b!6544244 (= res!2684390 (isEmpty!37636 (tail!12365 (_1!36695 lt!2399472))))))

(declare-fun b!6544245 () Bool)

(declare-fun e!3962518 () Bool)

(assert (=> b!6544245 (= e!3962518 (nullable!6406 (reg!16742 (regOne!33338 r!7292))))))

(declare-fun b!6544246 () Bool)

(declare-fun call!569214 () Bool)

(assert (=> b!6544246 (= e!3962519 (= lt!2399660 call!569214))))

(declare-fun b!6544247 () Bool)

(declare-fun e!3962516 () Bool)

(assert (=> b!6544247 (= e!3962516 e!3962521)))

(declare-fun res!2684395 () Bool)

(assert (=> b!6544247 (=> res!2684395 e!3962521)))

(assert (=> b!6544247 (= res!2684395 call!569214)))

(declare-fun b!6544249 () Bool)

(assert (=> b!6544249 (= e!3962518 (matchR!8596 (derivativeStep!5099 (reg!16742 (regOne!33338 r!7292)) (head!13280 (_1!36695 lt!2399472))) (tail!12365 (_1!36695 lt!2399472))))))

(declare-fun b!6544250 () Bool)

(declare-fun e!3962517 () Bool)

(assert (=> b!6544250 (= e!3962517 e!3962516)))

(declare-fun res!2684391 () Bool)

(assert (=> b!6544250 (=> (not res!2684391) (not e!3962516))))

(assert (=> b!6544250 (= res!2684391 (not lt!2399660))))

(declare-fun b!6544251 () Bool)

(declare-fun res!2684393 () Bool)

(assert (=> b!6544251 (=> res!2684393 e!3962517)))

(assert (=> b!6544251 (= res!2684393 e!3962520)))

(declare-fun res!2684396 () Bool)

(assert (=> b!6544251 (=> (not res!2684396) (not e!3962520))))

(assert (=> b!6544251 (= res!2684396 lt!2399660)))

(declare-fun b!6544248 () Bool)

(assert (=> b!6544248 (= e!3962520 (= (head!13280 (_1!36695 lt!2399472)) (c!1201588 (reg!16742 (regOne!33338 r!7292)))))))

(declare-fun d!2054532 () Bool)

(assert (=> d!2054532 e!3962519))

(declare-fun c!1201847 () Bool)

(assert (=> d!2054532 (= c!1201847 ((_ is EmptyExpr!16413) (reg!16742 (regOne!33338 r!7292))))))

(assert (=> d!2054532 (= lt!2399660 e!3962518)))

(declare-fun c!1201848 () Bool)

(assert (=> d!2054532 (= c!1201848 (isEmpty!37636 (_1!36695 lt!2399472)))))

(assert (=> d!2054532 (validRegex!8149 (reg!16742 (regOne!33338 r!7292)))))

(assert (=> d!2054532 (= (matchR!8596 (reg!16742 (regOne!33338 r!7292)) (_1!36695 lt!2399472)) lt!2399660)))

(declare-fun bm!569209 () Bool)

(assert (=> bm!569209 (= call!569214 (isEmpty!37636 (_1!36695 lt!2399472)))))

(declare-fun b!6544252 () Bool)

(declare-fun res!2684394 () Bool)

(assert (=> b!6544252 (=> res!2684394 e!3962517)))

(assert (=> b!6544252 (= res!2684394 (not ((_ is ElementMatch!16413) (reg!16742 (regOne!33338 r!7292)))))))

(assert (=> b!6544252 (= e!3962515 e!3962517)))

(declare-fun b!6544253 () Bool)

(assert (=> b!6544253 (= e!3962521 (not (= (head!13280 (_1!36695 lt!2399472)) (c!1201588 (reg!16742 (regOne!33338 r!7292))))))))

(declare-fun b!6544254 () Bool)

(declare-fun res!2684392 () Bool)

(assert (=> b!6544254 (=> (not res!2684392) (not e!3962520))))

(assert (=> b!6544254 (= res!2684392 (not call!569214))))

(assert (= (and d!2054532 c!1201848) b!6544245))

(assert (= (and d!2054532 (not c!1201848)) b!6544249))

(assert (= (and d!2054532 c!1201847) b!6544246))

(assert (= (and d!2054532 (not c!1201847)) b!6544242))

(assert (= (and b!6544242 c!1201846) b!6544241))

(assert (= (and b!6544242 (not c!1201846)) b!6544252))

(assert (= (and b!6544252 (not res!2684394)) b!6544251))

(assert (= (and b!6544251 res!2684396) b!6544254))

(assert (= (and b!6544254 res!2684392) b!6544244))

(assert (= (and b!6544244 res!2684390) b!6544248))

(assert (= (and b!6544251 (not res!2684393)) b!6544250))

(assert (= (and b!6544250 res!2684391) b!6544247))

(assert (= (and b!6544247 (not res!2684395)) b!6544243))

(assert (= (and b!6544243 (not res!2684389)) b!6544253))

(assert (= (or b!6544246 b!6544247 b!6544254) bm!569209))

(assert (=> b!6544244 m!7327052))

(assert (=> b!6544244 m!7327052))

(declare-fun m!7327304 () Bool)

(assert (=> b!6544244 m!7327304))

(declare-fun m!7327306 () Bool)

(assert (=> b!6544245 m!7327306))

(assert (=> b!6544253 m!7327046))

(assert (=> bm!569209 m!7327040))

(assert (=> d!2054532 m!7327040))

(assert (=> d!2054532 m!7326490))

(assert (=> b!6544248 m!7327046))

(assert (=> b!6544249 m!7327046))

(assert (=> b!6544249 m!7327046))

(declare-fun m!7327308 () Bool)

(assert (=> b!6544249 m!7327308))

(assert (=> b!6544249 m!7327052))

(assert (=> b!6544249 m!7327308))

(assert (=> b!6544249 m!7327052))

(declare-fun m!7327310 () Bool)

(assert (=> b!6544249 m!7327310))

(assert (=> b!6544243 m!7327052))

(assert (=> b!6544243 m!7327052))

(assert (=> b!6544243 m!7327304))

(assert (=> b!6543280 d!2054532))

(assert (=> b!6543280 d!2054324))

(assert (=> b!6543280 d!2054330))

(declare-fun d!2054534 () Bool)

(declare-fun c!1201849 () Bool)

(assert (=> d!2054534 (= c!1201849 (isEmpty!37636 (t!379181 s!2326)))))

(declare-fun e!3962522 () Bool)

(assert (=> d!2054534 (= (matchZipper!2425 lt!2399469 (t!379181 s!2326)) e!3962522)))

(declare-fun b!6544255 () Bool)

(assert (=> b!6544255 (= e!3962522 (nullableZipper!2160 lt!2399469))))

(declare-fun b!6544256 () Bool)

(assert (=> b!6544256 (= e!3962522 (matchZipper!2425 (derivationStepZipper!2379 lt!2399469 (head!13280 (t!379181 s!2326))) (tail!12365 (t!379181 s!2326))))))

(assert (= (and d!2054534 c!1201849) b!6544255))

(assert (= (and d!2054534 (not c!1201849)) b!6544256))

(assert (=> d!2054534 m!7326724))

(declare-fun m!7327312 () Bool)

(assert (=> b!6544255 m!7327312))

(assert (=> b!6544256 m!7326728))

(assert (=> b!6544256 m!7326728))

(declare-fun m!7327314 () Bool)

(assert (=> b!6544256 m!7327314))

(assert (=> b!6544256 m!7326732))

(assert (=> b!6544256 m!7327314))

(assert (=> b!6544256 m!7326732))

(declare-fun m!7327316 () Bool)

(assert (=> b!6544256 m!7327316))

(assert (=> b!6543323 d!2054534))

(declare-fun d!2054536 () Bool)

(declare-fun c!1201850 () Bool)

(assert (=> d!2054536 (= c!1201850 (isEmpty!37636 s!2326))))

(declare-fun e!3962523 () Bool)

(assert (=> d!2054536 (= (matchZipper!2425 lt!2399445 s!2326) e!3962523)))

(declare-fun b!6544257 () Bool)

(assert (=> b!6544257 (= e!3962523 (nullableZipper!2160 lt!2399445))))

(declare-fun b!6544258 () Bool)

(assert (=> b!6544258 (= e!3962523 (matchZipper!2425 (derivationStepZipper!2379 lt!2399445 (head!13280 s!2326)) (tail!12365 s!2326)))))

(assert (= (and d!2054536 c!1201850) b!6544257))

(assert (= (and d!2054536 (not c!1201850)) b!6544258))

(assert (=> d!2054536 m!7326810))

(declare-fun m!7327318 () Bool)

(assert (=> b!6544257 m!7327318))

(assert (=> b!6544258 m!7326808))

(assert (=> b!6544258 m!7326808))

(declare-fun m!7327320 () Bool)

(assert (=> b!6544258 m!7327320))

(assert (=> b!6544258 m!7326802))

(assert (=> b!6544258 m!7327320))

(assert (=> b!6544258 m!7326802))

(declare-fun m!7327322 () Bool)

(assert (=> b!6544258 m!7327322))

(assert (=> b!6543323 d!2054536))

(declare-fun d!2054538 () Bool)

(declare-fun c!1201851 () Bool)

(assert (=> d!2054538 (= c!1201851 (isEmpty!37636 s!2326))))

(declare-fun e!3962524 () Bool)

(assert (=> d!2054538 (= (matchZipper!2425 z!1189 s!2326) e!3962524)))

(declare-fun b!6544259 () Bool)

(assert (=> b!6544259 (= e!3962524 (nullableZipper!2160 z!1189))))

(declare-fun b!6544260 () Bool)

(assert (=> b!6544260 (= e!3962524 (matchZipper!2425 (derivationStepZipper!2379 z!1189 (head!13280 s!2326)) (tail!12365 s!2326)))))

(assert (= (and d!2054538 c!1201851) b!6544259))

(assert (= (and d!2054538 (not c!1201851)) b!6544260))

(assert (=> d!2054538 m!7326810))

(declare-fun m!7327324 () Bool)

(assert (=> b!6544259 m!7327324))

(assert (=> b!6544260 m!7326808))

(assert (=> b!6544260 m!7326808))

(declare-fun m!7327326 () Bool)

(assert (=> b!6544260 m!7327326))

(assert (=> b!6544260 m!7326802))

(assert (=> b!6544260 m!7327326))

(assert (=> b!6544260 m!7326802))

(declare-fun m!7327328 () Bool)

(assert (=> b!6544260 m!7327328))

(assert (=> b!6543321 d!2054538))

(declare-fun d!2054540 () Bool)

(declare-fun lt!2399661 () Regex!16413)

(assert (=> d!2054540 (validRegex!8149 lt!2399661)))

(assert (=> d!2054540 (= lt!2399661 (generalisedUnion!2257 (unfocusZipperList!1834 lt!2399481)))))

(assert (=> d!2054540 (= (unfocusZipper!2155 lt!2399481) lt!2399661)))

(declare-fun bs!1671435 () Bool)

(assert (= bs!1671435 d!2054540))

(declare-fun m!7327330 () Bool)

(assert (=> bs!1671435 m!7327330))

(declare-fun m!7327332 () Bool)

(assert (=> bs!1671435 m!7327332))

(assert (=> bs!1671435 m!7327332))

(declare-fun m!7327334 () Bool)

(assert (=> bs!1671435 m!7327334))

(assert (=> b!6543322 d!2054540))

(declare-fun bs!1671436 () Bool)

(declare-fun d!2054542 () Bool)

(assert (= bs!1671436 (and d!2054542 d!2054382)))

(declare-fun lambda!363167 () Int)

(assert (=> bs!1671436 (= lambda!363167 lambda!363132)))

(declare-fun bs!1671437 () Bool)

(assert (= bs!1671437 (and d!2054542 b!6543286)))

(assert (=> bs!1671437 (= lambda!363167 lambda!363085)))

(declare-fun bs!1671438 () Bool)

(assert (= bs!1671438 (and d!2054542 d!2054376)))

(assert (=> bs!1671438 (= lambda!363167 lambda!363126)))

(declare-fun bs!1671439 () Bool)

(assert (= bs!1671439 (and d!2054542 d!2054518)))

(assert (=> bs!1671439 (= lambda!363167 lambda!363163)))

(declare-fun bs!1671440 () Bool)

(assert (= bs!1671440 (and d!2054542 d!2054528)))

(assert (=> bs!1671440 (= lambda!363167 lambda!363166)))

(declare-fun bs!1671441 () Bool)

(assert (= bs!1671441 (and d!2054542 d!2054516)))

(assert (=> bs!1671441 (= lambda!363167 lambda!363160)))

(assert (=> d!2054542 (= (inv!84279 setElem!44640) (forall!15587 (exprs!6297 setElem!44640) lambda!363167))))

(declare-fun bs!1671442 () Bool)

(assert (= bs!1671442 d!2054542))

(declare-fun m!7327336 () Bool)

(assert (=> bs!1671442 m!7327336))

(assert (=> setNonEmpty!44640 d!2054542))

(declare-fun b!6544261 () Bool)

(declare-fun e!3962527 () Bool)

(assert (=> b!6544261 (= e!3962527 (nullable!6406 (regOne!33338 (h!71862 (exprs!6297 (h!71864 zl!343))))))))

(declare-fun b!6544262 () Bool)

(declare-fun e!3962525 () (InoxSet Context!11594))

(declare-fun call!569216 () (InoxSet Context!11594))

(assert (=> b!6544262 (= e!3962525 call!569216)))

(declare-fun b!6544263 () Bool)

(declare-fun e!3962530 () (InoxSet Context!11594))

(declare-fun call!569219 () (InoxSet Context!11594))

(declare-fun call!569217 () (InoxSet Context!11594))

(assert (=> b!6544263 (= e!3962530 ((_ map or) call!569219 call!569217))))

(declare-fun b!6544264 () Bool)

(assert (=> b!6544264 (= e!3962525 ((as const (Array Context!11594 Bool)) false))))

(declare-fun b!6544265 () Bool)

(declare-fun e!3962526 () (InoxSet Context!11594))

(declare-fun call!569215 () (InoxSet Context!11594))

(assert (=> b!6544265 (= e!3962526 ((_ map or) call!569215 call!569219))))

(declare-fun b!6544266 () Bool)

(declare-fun c!1201854 () Bool)

(assert (=> b!6544266 (= c!1201854 ((_ is Star!16413) (h!71862 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun e!3962528 () (InoxSet Context!11594))

(assert (=> b!6544266 (= e!3962528 e!3962525)))

(declare-fun b!6544267 () Bool)

(assert (=> b!6544267 (= e!3962530 e!3962528)))

(declare-fun c!1201855 () Bool)

(assert (=> b!6544267 (= c!1201855 ((_ is Concat!25258) (h!71862 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun c!1201853 () Bool)

(declare-fun call!569220 () List!65538)

(declare-fun bm!569210 () Bool)

(assert (=> bm!569210 (= call!569220 ($colon$colon!2256 (exprs!6297 lt!2399450) (ite (or c!1201853 c!1201855) (regTwo!33338 (h!71862 (exprs!6297 (h!71864 zl!343)))) (h!71862 (exprs!6297 (h!71864 zl!343))))))))

(declare-fun d!2054544 () Bool)

(declare-fun c!1201856 () Bool)

(assert (=> d!2054544 (= c!1201856 (and ((_ is ElementMatch!16413) (h!71862 (exprs!6297 (h!71864 zl!343)))) (= (c!1201588 (h!71862 (exprs!6297 (h!71864 zl!343)))) (h!71863 s!2326))))))

(declare-fun e!3962529 () (InoxSet Context!11594))

(assert (=> d!2054544 (= (derivationStepZipperDown!1661 (h!71862 (exprs!6297 (h!71864 zl!343))) lt!2399450 (h!71863 s!2326)) e!3962529)))

(declare-fun bm!569211 () Bool)

(assert (=> bm!569211 (= call!569217 call!569215)))

(declare-fun b!6544268 () Bool)

(assert (=> b!6544268 (= e!3962528 call!569216)))

(declare-fun c!1201852 () Bool)

(declare-fun bm!569212 () Bool)

(assert (=> bm!569212 (= call!569219 (derivationStepZipperDown!1661 (ite c!1201852 (regTwo!33339 (h!71862 (exprs!6297 (h!71864 zl!343)))) (regOne!33338 (h!71862 (exprs!6297 (h!71864 zl!343))))) (ite c!1201852 lt!2399450 (Context!11595 call!569220)) (h!71863 s!2326)))))

(declare-fun bm!569213 () Bool)

(declare-fun call!569218 () List!65538)

(assert (=> bm!569213 (= call!569218 call!569220)))

(declare-fun b!6544269 () Bool)

(assert (=> b!6544269 (= e!3962529 (store ((as const (Array Context!11594 Bool)) false) lt!2399450 true))))

(declare-fun bm!569214 () Bool)

(assert (=> bm!569214 (= call!569215 (derivationStepZipperDown!1661 (ite c!1201852 (regOne!33339 (h!71862 (exprs!6297 (h!71864 zl!343)))) (ite c!1201853 (regTwo!33338 (h!71862 (exprs!6297 (h!71864 zl!343)))) (ite c!1201855 (regOne!33338 (h!71862 (exprs!6297 (h!71864 zl!343)))) (reg!16742 (h!71862 (exprs!6297 (h!71864 zl!343))))))) (ite (or c!1201852 c!1201853) lt!2399450 (Context!11595 call!569218)) (h!71863 s!2326)))))

(declare-fun b!6544270 () Bool)

(assert (=> b!6544270 (= c!1201853 e!3962527)))

(declare-fun res!2684397 () Bool)

(assert (=> b!6544270 (=> (not res!2684397) (not e!3962527))))

(assert (=> b!6544270 (= res!2684397 ((_ is Concat!25258) (h!71862 (exprs!6297 (h!71864 zl!343)))))))

(assert (=> b!6544270 (= e!3962526 e!3962530)))

(declare-fun b!6544271 () Bool)

(assert (=> b!6544271 (= e!3962529 e!3962526)))

(assert (=> b!6544271 (= c!1201852 ((_ is Union!16413) (h!71862 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun bm!569215 () Bool)

(assert (=> bm!569215 (= call!569216 call!569217)))

(assert (= (and d!2054544 c!1201856) b!6544269))

(assert (= (and d!2054544 (not c!1201856)) b!6544271))

(assert (= (and b!6544271 c!1201852) b!6544265))

(assert (= (and b!6544271 (not c!1201852)) b!6544270))

(assert (= (and b!6544270 res!2684397) b!6544261))

(assert (= (and b!6544270 c!1201853) b!6544263))

(assert (= (and b!6544270 (not c!1201853)) b!6544267))

(assert (= (and b!6544267 c!1201855) b!6544268))

(assert (= (and b!6544267 (not c!1201855)) b!6544266))

(assert (= (and b!6544266 c!1201854) b!6544262))

(assert (= (and b!6544266 (not c!1201854)) b!6544264))

(assert (= (or b!6544268 b!6544262) bm!569213))

(assert (= (or b!6544268 b!6544262) bm!569215))

(assert (= (or b!6544263 bm!569213) bm!569210))

(assert (= (or b!6544263 bm!569215) bm!569211))

(assert (= (or b!6544265 b!6544263) bm!569212))

(assert (= (or b!6544265 bm!569211) bm!569214))

(declare-fun m!7327338 () Bool)

(assert (=> b!6544269 m!7327338))

(declare-fun m!7327340 () Bool)

(assert (=> bm!569214 m!7327340))

(declare-fun m!7327342 () Bool)

(assert (=> b!6544261 m!7327342))

(declare-fun m!7327344 () Bool)

(assert (=> bm!569212 m!7327344))

(declare-fun m!7327346 () Bool)

(assert (=> bm!569210 m!7327346))

(assert (=> b!6543320 d!2054544))

(declare-fun d!2054546 () Bool)

(assert (=> d!2054546 (= (flatMap!1918 z!1189 lambda!363083) (dynLambda!26001 lambda!363083 (h!71864 zl!343)))))

(declare-fun lt!2399662 () Unit!158987)

(assert (=> d!2054546 (= lt!2399662 (choose!48589 z!1189 (h!71864 zl!343) lambda!363083))))

(assert (=> d!2054546 (= z!1189 (store ((as const (Array Context!11594 Bool)) false) (h!71864 zl!343) true))))

(assert (=> d!2054546 (= (lemmaFlatMapOnSingletonSet!1444 z!1189 (h!71864 zl!343) lambda!363083) lt!2399662)))

(declare-fun b_lambda!247745 () Bool)

(assert (=> (not b_lambda!247745) (not d!2054546)))

(declare-fun bs!1671443 () Bool)

(assert (= bs!1671443 d!2054546))

(assert (=> bs!1671443 m!7326464))

(declare-fun m!7327348 () Bool)

(assert (=> bs!1671443 m!7327348))

(declare-fun m!7327350 () Bool)

(assert (=> bs!1671443 m!7327350))

(declare-fun m!7327352 () Bool)

(assert (=> bs!1671443 m!7327352))

(assert (=> b!6543320 d!2054546))

(declare-fun d!2054548 () Bool)

(assert (=> d!2054548 (= (nullable!6406 (h!71862 (exprs!6297 (h!71864 zl!343)))) (nullableFct!2333 (h!71862 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun bs!1671444 () Bool)

(assert (= bs!1671444 d!2054548))

(declare-fun m!7327354 () Bool)

(assert (=> bs!1671444 m!7327354))

(assert (=> b!6543320 d!2054548))

(declare-fun b!6544272 () Bool)

(declare-fun e!3962532 () Bool)

(assert (=> b!6544272 (= e!3962532 (nullable!6406 (h!71862 (exprs!6297 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343)))))))))))

(declare-fun b!6544273 () Bool)

(declare-fun e!3962533 () (InoxSet Context!11594))

(declare-fun call!569221 () (InoxSet Context!11594))

(assert (=> b!6544273 (= e!3962533 call!569221)))

(declare-fun bm!569216 () Bool)

(assert (=> bm!569216 (= call!569221 (derivationStepZipperDown!1661 (h!71862 (exprs!6297 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343))))))) (Context!11595 (t!379180 (exprs!6297 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343)))))))) (h!71863 s!2326)))))

(declare-fun e!3962531 () (InoxSet Context!11594))

(declare-fun b!6544274 () Bool)

(assert (=> b!6544274 (= e!3962531 ((_ map or) call!569221 (derivationStepZipperUp!1587 (Context!11595 (t!379180 (exprs!6297 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343)))))))) (h!71863 s!2326))))))

(declare-fun b!6544275 () Bool)

(assert (=> b!6544275 (= e!3962533 ((as const (Array Context!11594 Bool)) false))))

(declare-fun d!2054550 () Bool)

(declare-fun c!1201858 () Bool)

(assert (=> d!2054550 (= c!1201858 e!3962532)))

(declare-fun res!2684398 () Bool)

(assert (=> d!2054550 (=> (not res!2684398) (not e!3962532))))

(assert (=> d!2054550 (= res!2684398 ((_ is Cons!65414) (exprs!6297 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343))))))))))

(assert (=> d!2054550 (= (derivationStepZipperUp!1587 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343))))) (h!71863 s!2326)) e!3962531)))

(declare-fun b!6544276 () Bool)

(assert (=> b!6544276 (= e!3962531 e!3962533)))

(declare-fun c!1201857 () Bool)

(assert (=> b!6544276 (= c!1201857 ((_ is Cons!65414) (exprs!6297 (Context!11595 (Cons!65414 (h!71862 (exprs!6297 (h!71864 zl!343))) (t!379180 (exprs!6297 (h!71864 zl!343))))))))))

(assert (= (and d!2054550 res!2684398) b!6544272))

(assert (= (and d!2054550 c!1201858) b!6544274))

(assert (= (and d!2054550 (not c!1201858)) b!6544276))

(assert (= (and b!6544276 c!1201857) b!6544273))

(assert (= (and b!6544276 (not c!1201857)) b!6544275))

(assert (= (or b!6544274 b!6544273) bm!569216))

(declare-fun m!7327356 () Bool)

(assert (=> b!6544272 m!7327356))

(declare-fun m!7327358 () Bool)

(assert (=> bm!569216 m!7327358))

(declare-fun m!7327360 () Bool)

(assert (=> b!6544274 m!7327360))

(assert (=> b!6543320 d!2054550))

(declare-fun d!2054552 () Bool)

(assert (=> d!2054552 (= (flatMap!1918 z!1189 lambda!363083) (choose!48588 z!1189 lambda!363083))))

(declare-fun bs!1671445 () Bool)

(assert (= bs!1671445 d!2054552))

(declare-fun m!7327362 () Bool)

(assert (=> bs!1671445 m!7327362))

(assert (=> b!6543320 d!2054552))

(declare-fun b!6544277 () Bool)

(declare-fun e!3962535 () Bool)

(assert (=> b!6544277 (= e!3962535 (nullable!6406 (h!71862 (exprs!6297 (h!71864 zl!343)))))))

(declare-fun b!6544278 () Bool)

(declare-fun e!3962536 () (InoxSet Context!11594))

(declare-fun call!569222 () (InoxSet Context!11594))

(assert (=> b!6544278 (= e!3962536 call!569222)))

(declare-fun bm!569217 () Bool)

(assert (=> bm!569217 (= call!569222 (derivationStepZipperDown!1661 (h!71862 (exprs!6297 (h!71864 zl!343))) (Context!11595 (t!379180 (exprs!6297 (h!71864 zl!343)))) (h!71863 s!2326)))))

(declare-fun b!6544279 () Bool)

(declare-fun e!3962534 () (InoxSet Context!11594))

(assert (=> b!6544279 (= e!3962534 ((_ map or) call!569222 (derivationStepZipperUp!1587 (Context!11595 (t!379180 (exprs!6297 (h!71864 zl!343)))) (h!71863 s!2326))))))

(declare-fun b!6544280 () Bool)

(assert (=> b!6544280 (= e!3962536 ((as const (Array Context!11594 Bool)) false))))

(declare-fun d!2054554 () Bool)

(declare-fun c!1201860 () Bool)

(assert (=> d!2054554 (= c!1201860 e!3962535)))

(declare-fun res!2684399 () Bool)

(assert (=> d!2054554 (=> (not res!2684399) (not e!3962535))))

(assert (=> d!2054554 (= res!2684399 ((_ is Cons!65414) (exprs!6297 (h!71864 zl!343))))))

(assert (=> d!2054554 (= (derivationStepZipperUp!1587 (h!71864 zl!343) (h!71863 s!2326)) e!3962534)))

(declare-fun b!6544281 () Bool)

(assert (=> b!6544281 (= e!3962534 e!3962536)))

(declare-fun c!1201859 () Bool)

(assert (=> b!6544281 (= c!1201859 ((_ is Cons!65414) (exprs!6297 (h!71864 zl!343))))))

(assert (= (and d!2054554 res!2684399) b!6544277))

(assert (= (and d!2054554 c!1201860) b!6544279))

(assert (= (and d!2054554 (not c!1201860)) b!6544281))

(assert (= (and b!6544281 c!1201859) b!6544278))

(assert (= (and b!6544281 (not c!1201859)) b!6544280))

(assert (= (or b!6544279 b!6544278) bm!569217))

(assert (=> b!6544277 m!7326468))

(declare-fun m!7327364 () Bool)

(assert (=> bm!569217 m!7327364))

(declare-fun m!7327366 () Bool)

(assert (=> b!6544279 m!7327366))

(assert (=> b!6543320 d!2054554))

(declare-fun b!6544282 () Bool)

(declare-fun e!3962538 () Bool)

(assert (=> b!6544282 (= e!3962538 (nullable!6406 (h!71862 (exprs!6297 lt!2399450))))))

(declare-fun b!6544283 () Bool)

(declare-fun e!3962539 () (InoxSet Context!11594))

(declare-fun call!569223 () (InoxSet Context!11594))

(assert (=> b!6544283 (= e!3962539 call!569223)))

(declare-fun bm!569218 () Bool)

(assert (=> bm!569218 (= call!569223 (derivationStepZipperDown!1661 (h!71862 (exprs!6297 lt!2399450)) (Context!11595 (t!379180 (exprs!6297 lt!2399450))) (h!71863 s!2326)))))

(declare-fun e!3962537 () (InoxSet Context!11594))

(declare-fun b!6544284 () Bool)

(assert (=> b!6544284 (= e!3962537 ((_ map or) call!569223 (derivationStepZipperUp!1587 (Context!11595 (t!379180 (exprs!6297 lt!2399450))) (h!71863 s!2326))))))

(declare-fun b!6544285 () Bool)

(assert (=> b!6544285 (= e!3962539 ((as const (Array Context!11594 Bool)) false))))

(declare-fun d!2054556 () Bool)

(declare-fun c!1201862 () Bool)

(assert (=> d!2054556 (= c!1201862 e!3962538)))

(declare-fun res!2684400 () Bool)

(assert (=> d!2054556 (=> (not res!2684400) (not e!3962538))))

(assert (=> d!2054556 (= res!2684400 ((_ is Cons!65414) (exprs!6297 lt!2399450)))))

(assert (=> d!2054556 (= (derivationStepZipperUp!1587 lt!2399450 (h!71863 s!2326)) e!3962537)))

(declare-fun b!6544286 () Bool)

(assert (=> b!6544286 (= e!3962537 e!3962539)))

(declare-fun c!1201861 () Bool)

(assert (=> b!6544286 (= c!1201861 ((_ is Cons!65414) (exprs!6297 lt!2399450)))))

(assert (= (and d!2054556 res!2684400) b!6544282))

(assert (= (and d!2054556 c!1201862) b!6544284))

(assert (= (and d!2054556 (not c!1201862)) b!6544286))

(assert (= (and b!6544286 c!1201861) b!6544283))

(assert (= (and b!6544286 (not c!1201861)) b!6544285))

(assert (= (or b!6544284 b!6544283) bm!569218))

(declare-fun m!7327368 () Bool)

(assert (=> b!6544282 m!7327368))

(declare-fun m!7327370 () Bool)

(assert (=> bm!569218 m!7327370))

(declare-fun m!7327372 () Bool)

(assert (=> b!6544284 m!7327372))

(assert (=> b!6543320 d!2054556))

(declare-fun b!6544287 () Bool)

(declare-fun e!3962541 () Bool)

(assert (=> b!6544287 (= e!3962541 (nullable!6406 (h!71862 (exprs!6297 lt!2399456))))))

(declare-fun b!6544288 () Bool)

(declare-fun e!3962542 () (InoxSet Context!11594))

(declare-fun call!569224 () (InoxSet Context!11594))

(assert (=> b!6544288 (= e!3962542 call!569224)))

(declare-fun bm!569219 () Bool)

(assert (=> bm!569219 (= call!569224 (derivationStepZipperDown!1661 (h!71862 (exprs!6297 lt!2399456)) (Context!11595 (t!379180 (exprs!6297 lt!2399456))) (h!71863 s!2326)))))

(declare-fun b!6544289 () Bool)

(declare-fun e!3962540 () (InoxSet Context!11594))

(assert (=> b!6544289 (= e!3962540 ((_ map or) call!569224 (derivationStepZipperUp!1587 (Context!11595 (t!379180 (exprs!6297 lt!2399456))) (h!71863 s!2326))))))

(declare-fun b!6544290 () Bool)

(assert (=> b!6544290 (= e!3962542 ((as const (Array Context!11594 Bool)) false))))

(declare-fun d!2054558 () Bool)

(declare-fun c!1201864 () Bool)

(assert (=> d!2054558 (= c!1201864 e!3962541)))

(declare-fun res!2684401 () Bool)

(assert (=> d!2054558 (=> (not res!2684401) (not e!3962541))))

(assert (=> d!2054558 (= res!2684401 ((_ is Cons!65414) (exprs!6297 lt!2399456)))))

(assert (=> d!2054558 (= (derivationStepZipperUp!1587 lt!2399456 (h!71863 s!2326)) e!3962540)))

(declare-fun b!6544291 () Bool)

(assert (=> b!6544291 (= e!3962540 e!3962542)))

(declare-fun c!1201863 () Bool)

(assert (=> b!6544291 (= c!1201863 ((_ is Cons!65414) (exprs!6297 lt!2399456)))))

(assert (= (and d!2054558 res!2684401) b!6544287))

(assert (= (and d!2054558 c!1201864) b!6544289))

(assert (= (and d!2054558 (not c!1201864)) b!6544291))

(assert (= (and b!6544291 c!1201863) b!6544288))

(assert (= (and b!6544291 (not c!1201863)) b!6544290))

(assert (= (or b!6544289 b!6544288) bm!569219))

(declare-fun m!7327374 () Bool)

(assert (=> b!6544287 m!7327374))

(declare-fun m!7327376 () Bool)

(assert (=> bm!569219 m!7327376))

(declare-fun m!7327378 () Bool)

(assert (=> b!6544289 m!7327378))

(assert (=> b!6543299 d!2054558))

(declare-fun d!2054560 () Bool)

(assert (=> d!2054560 (= (flatMap!1918 lt!2399468 lambda!363083) (dynLambda!26001 lambda!363083 lt!2399456))))

(declare-fun lt!2399663 () Unit!158987)

(assert (=> d!2054560 (= lt!2399663 (choose!48589 lt!2399468 lt!2399456 lambda!363083))))

(assert (=> d!2054560 (= lt!2399468 (store ((as const (Array Context!11594 Bool)) false) lt!2399456 true))))

(assert (=> d!2054560 (= (lemmaFlatMapOnSingletonSet!1444 lt!2399468 lt!2399456 lambda!363083) lt!2399663)))

(declare-fun b_lambda!247747 () Bool)

(assert (=> (not b_lambda!247747) (not d!2054560)))

(declare-fun bs!1671446 () Bool)

(assert (= bs!1671446 d!2054560))

(assert (=> bs!1671446 m!7326412))

(declare-fun m!7327380 () Bool)

(assert (=> bs!1671446 m!7327380))

(declare-fun m!7327382 () Bool)

(assert (=> bs!1671446 m!7327382))

(assert (=> bs!1671446 m!7326398))

(assert (=> b!6543299 d!2054560))

(declare-fun d!2054562 () Bool)

(declare-fun lt!2399664 () Regex!16413)

(assert (=> d!2054562 (validRegex!8149 lt!2399664)))

(assert (=> d!2054562 (= lt!2399664 (generalisedUnion!2257 (unfocusZipperList!1834 lt!2399453)))))

(assert (=> d!2054562 (= (unfocusZipper!2155 lt!2399453) lt!2399664)))

(declare-fun bs!1671447 () Bool)

(assert (= bs!1671447 d!2054562))

(declare-fun m!7327384 () Bool)

(assert (=> bs!1671447 m!7327384))

(declare-fun m!7327386 () Bool)

(assert (=> bs!1671447 m!7327386))

(assert (=> bs!1671447 m!7327386))

(declare-fun m!7327388 () Bool)

(assert (=> bs!1671447 m!7327388))

(assert (=> b!6543299 d!2054562))

(declare-fun d!2054564 () Bool)

(assert (=> d!2054564 (= (flatMap!1918 lt!2399479 lambda!363083) (choose!48588 lt!2399479 lambda!363083))))

(declare-fun bs!1671448 () Bool)

(assert (= bs!1671448 d!2054564))

(declare-fun m!7327390 () Bool)

(assert (=> bs!1671448 m!7327390))

(assert (=> b!6543299 d!2054564))

(declare-fun b!6544292 () Bool)

(declare-fun e!3962544 () Bool)

(assert (=> b!6544292 (= e!3962544 (nullable!6406 (h!71862 (exprs!6297 lt!2399455))))))

(declare-fun b!6544293 () Bool)

(declare-fun e!3962545 () (InoxSet Context!11594))

(declare-fun call!569225 () (InoxSet Context!11594))

(assert (=> b!6544293 (= e!3962545 call!569225)))

(declare-fun bm!569220 () Bool)

(assert (=> bm!569220 (= call!569225 (derivationStepZipperDown!1661 (h!71862 (exprs!6297 lt!2399455)) (Context!11595 (t!379180 (exprs!6297 lt!2399455))) (h!71863 s!2326)))))

(declare-fun e!3962543 () (InoxSet Context!11594))

(declare-fun b!6544294 () Bool)

(assert (=> b!6544294 (= e!3962543 ((_ map or) call!569225 (derivationStepZipperUp!1587 (Context!11595 (t!379180 (exprs!6297 lt!2399455))) (h!71863 s!2326))))))

(declare-fun b!6544295 () Bool)

(assert (=> b!6544295 (= e!3962545 ((as const (Array Context!11594 Bool)) false))))

(declare-fun d!2054566 () Bool)

(declare-fun c!1201866 () Bool)

(assert (=> d!2054566 (= c!1201866 e!3962544)))

(declare-fun res!2684402 () Bool)

(assert (=> d!2054566 (=> (not res!2684402) (not e!3962544))))

(assert (=> d!2054566 (= res!2684402 ((_ is Cons!65414) (exprs!6297 lt!2399455)))))

(assert (=> d!2054566 (= (derivationStepZipperUp!1587 lt!2399455 (h!71863 s!2326)) e!3962543)))

(declare-fun b!6544296 () Bool)

(assert (=> b!6544296 (= e!3962543 e!3962545)))

(declare-fun c!1201865 () Bool)

(assert (=> b!6544296 (= c!1201865 ((_ is Cons!65414) (exprs!6297 lt!2399455)))))

(assert (= (and d!2054566 res!2684402) b!6544292))

(assert (= (and d!2054566 c!1201866) b!6544294))

(assert (= (and d!2054566 (not c!1201866)) b!6544296))

(assert (= (and b!6544296 c!1201865) b!6544293))

(assert (= (and b!6544296 (not c!1201865)) b!6544295))

(assert (= (or b!6544294 b!6544293) bm!569220))

(declare-fun m!7327392 () Bool)

(assert (=> b!6544292 m!7327392))

(declare-fun m!7327394 () Bool)

(assert (=> bm!569220 m!7327394))

(declare-fun m!7327396 () Bool)

(assert (=> b!6544294 m!7327396))

(assert (=> b!6543299 d!2054566))

(declare-fun d!2054568 () Bool)

(assert (=> d!2054568 (= (flatMap!1918 lt!2399479 lambda!363083) (dynLambda!26001 lambda!363083 lt!2399455))))

(declare-fun lt!2399665 () Unit!158987)

(assert (=> d!2054568 (= lt!2399665 (choose!48589 lt!2399479 lt!2399455 lambda!363083))))

(assert (=> d!2054568 (= lt!2399479 (store ((as const (Array Context!11594 Bool)) false) lt!2399455 true))))

(assert (=> d!2054568 (= (lemmaFlatMapOnSingletonSet!1444 lt!2399479 lt!2399455 lambda!363083) lt!2399665)))

(declare-fun b_lambda!247749 () Bool)

(assert (=> (not b_lambda!247749) (not d!2054568)))

(declare-fun bs!1671449 () Bool)

(assert (= bs!1671449 d!2054568))

(assert (=> bs!1671449 m!7326400))

(declare-fun m!7327398 () Bool)

(assert (=> bs!1671449 m!7327398))

(declare-fun m!7327400 () Bool)

(assert (=> bs!1671449 m!7327400))

(assert (=> bs!1671449 m!7326406))

(assert (=> b!6543299 d!2054568))

(declare-fun d!2054570 () Bool)

(assert (=> d!2054570 (= (flatMap!1918 lt!2399468 lambda!363083) (choose!48588 lt!2399468 lambda!363083))))

(declare-fun bs!1671450 () Bool)

(assert (= bs!1671450 d!2054570))

(declare-fun m!7327402 () Bool)

(assert (=> bs!1671450 m!7327402))

(assert (=> b!6543299 d!2054570))

(declare-fun b!6544304 () Bool)

(declare-fun e!3962551 () Bool)

(declare-fun tp!1810538 () Bool)

(assert (=> b!6544304 (= e!3962551 tp!1810538)))

(declare-fun tp!1810539 () Bool)

(declare-fun e!3962550 () Bool)

(declare-fun b!6544303 () Bool)

(assert (=> b!6544303 (= e!3962550 (and (inv!84279 (h!71864 (t!379182 zl!343))) e!3962551 tp!1810539))))

(assert (=> b!6543281 (= tp!1810471 e!3962550)))

(assert (= b!6544303 b!6544304))

(assert (= (and b!6543281 ((_ is Cons!65416) (t!379182 zl!343))) b!6544303))

(declare-fun m!7327404 () Bool)

(assert (=> b!6544303 m!7327404))

(declare-fun b!6544315 () Bool)

(declare-fun e!3962554 () Bool)

(assert (=> b!6544315 (= e!3962554 tp_is_empty!42079)))

(declare-fun b!6544316 () Bool)

(declare-fun tp!1810550 () Bool)

(declare-fun tp!1810553 () Bool)

(assert (=> b!6544316 (= e!3962554 (and tp!1810550 tp!1810553))))

(assert (=> b!6543314 (= tp!1810468 e!3962554)))

(declare-fun b!6544317 () Bool)

(declare-fun tp!1810554 () Bool)

(assert (=> b!6544317 (= e!3962554 tp!1810554)))

(declare-fun b!6544318 () Bool)

(declare-fun tp!1810552 () Bool)

(declare-fun tp!1810551 () Bool)

(assert (=> b!6544318 (= e!3962554 (and tp!1810552 tp!1810551))))

(assert (= (and b!6543314 ((_ is ElementMatch!16413) (reg!16742 r!7292))) b!6544315))

(assert (= (and b!6543314 ((_ is Concat!25258) (reg!16742 r!7292))) b!6544316))

(assert (= (and b!6543314 ((_ is Star!16413) (reg!16742 r!7292))) b!6544317))

(assert (= (and b!6543314 ((_ is Union!16413) (reg!16742 r!7292))) b!6544318))

(declare-fun b!6544323 () Bool)

(declare-fun e!3962557 () Bool)

(declare-fun tp!1810557 () Bool)

(assert (=> b!6544323 (= e!3962557 (and tp_is_empty!42079 tp!1810557))))

(assert (=> b!6543302 (= tp!1810473 e!3962557)))

(assert (= (and b!6543302 ((_ is Cons!65415) (t!379181 s!2326))) b!6544323))

(declare-fun b!6544328 () Bool)

(declare-fun e!3962560 () Bool)

(declare-fun tp!1810562 () Bool)

(declare-fun tp!1810563 () Bool)

(assert (=> b!6544328 (= e!3962560 (and tp!1810562 tp!1810563))))

(assert (=> b!6543306 (= tp!1810469 e!3962560)))

(assert (= (and b!6543306 ((_ is Cons!65414) (exprs!6297 setElem!44640))) b!6544328))

(declare-fun b!6544329 () Bool)

(declare-fun e!3962561 () Bool)

(declare-fun tp!1810564 () Bool)

(declare-fun tp!1810565 () Bool)

(assert (=> b!6544329 (= e!3962561 (and tp!1810564 tp!1810565))))

(assert (=> b!6543290 (= tp!1810472 e!3962561)))

(assert (= (and b!6543290 ((_ is Cons!65414) (exprs!6297 (h!71864 zl!343)))) b!6544329))

(declare-fun condSetEmpty!44646 () Bool)

(assert (=> setNonEmpty!44640 (= condSetEmpty!44646 (= setRest!44640 ((as const (Array Context!11594 Bool)) false)))))

(declare-fun setRes!44646 () Bool)

(assert (=> setNonEmpty!44640 (= tp!1810470 setRes!44646)))

(declare-fun setIsEmpty!44646 () Bool)

(assert (=> setIsEmpty!44646 setRes!44646))

(declare-fun setNonEmpty!44646 () Bool)

(declare-fun e!3962564 () Bool)

(declare-fun tp!1810571 () Bool)

(declare-fun setElem!44646 () Context!11594)

(assert (=> setNonEmpty!44646 (= setRes!44646 (and tp!1810571 (inv!84279 setElem!44646) e!3962564))))

(declare-fun setRest!44646 () (InoxSet Context!11594))

(assert (=> setNonEmpty!44646 (= setRest!44640 ((_ map or) (store ((as const (Array Context!11594 Bool)) false) setElem!44646 true) setRest!44646))))

(declare-fun b!6544334 () Bool)

(declare-fun tp!1810570 () Bool)

(assert (=> b!6544334 (= e!3962564 tp!1810570)))

(assert (= (and setNonEmpty!44640 condSetEmpty!44646) setIsEmpty!44646))

(assert (= (and setNonEmpty!44640 (not condSetEmpty!44646)) setNonEmpty!44646))

(assert (= setNonEmpty!44646 b!6544334))

(declare-fun m!7327406 () Bool)

(assert (=> setNonEmpty!44646 m!7327406))

(declare-fun b!6544335 () Bool)

(declare-fun e!3962565 () Bool)

(assert (=> b!6544335 (= e!3962565 tp_is_empty!42079)))

(declare-fun b!6544336 () Bool)

(declare-fun tp!1810572 () Bool)

(declare-fun tp!1810575 () Bool)

(assert (=> b!6544336 (= e!3962565 (and tp!1810572 tp!1810575))))

(assert (=> b!6543324 (= tp!1810475 e!3962565)))

(declare-fun b!6544337 () Bool)

(declare-fun tp!1810576 () Bool)

(assert (=> b!6544337 (= e!3962565 tp!1810576)))

(declare-fun b!6544338 () Bool)

(declare-fun tp!1810574 () Bool)

(declare-fun tp!1810573 () Bool)

(assert (=> b!6544338 (= e!3962565 (and tp!1810574 tp!1810573))))

(assert (= (and b!6543324 ((_ is ElementMatch!16413) (regOne!33339 r!7292))) b!6544335))

(assert (= (and b!6543324 ((_ is Concat!25258) (regOne!33339 r!7292))) b!6544336))

(assert (= (and b!6543324 ((_ is Star!16413) (regOne!33339 r!7292))) b!6544337))

(assert (= (and b!6543324 ((_ is Union!16413) (regOne!33339 r!7292))) b!6544338))

(declare-fun b!6544339 () Bool)

(declare-fun e!3962566 () Bool)

(assert (=> b!6544339 (= e!3962566 tp_is_empty!42079)))

(declare-fun b!6544340 () Bool)

(declare-fun tp!1810577 () Bool)

(declare-fun tp!1810580 () Bool)

(assert (=> b!6544340 (= e!3962566 (and tp!1810577 tp!1810580))))

(assert (=> b!6543324 (= tp!1810474 e!3962566)))

(declare-fun b!6544341 () Bool)

(declare-fun tp!1810581 () Bool)

(assert (=> b!6544341 (= e!3962566 tp!1810581)))

(declare-fun b!6544342 () Bool)

(declare-fun tp!1810579 () Bool)

(declare-fun tp!1810578 () Bool)

(assert (=> b!6544342 (= e!3962566 (and tp!1810579 tp!1810578))))

(assert (= (and b!6543324 ((_ is ElementMatch!16413) (regTwo!33339 r!7292))) b!6544339))

(assert (= (and b!6543324 ((_ is Concat!25258) (regTwo!33339 r!7292))) b!6544340))

(assert (= (and b!6543324 ((_ is Star!16413) (regTwo!33339 r!7292))) b!6544341))

(assert (= (and b!6543324 ((_ is Union!16413) (regTwo!33339 r!7292))) b!6544342))

(declare-fun b!6544343 () Bool)

(declare-fun e!3962567 () Bool)

(assert (=> b!6544343 (= e!3962567 tp_is_empty!42079)))

(declare-fun b!6544344 () Bool)

(declare-fun tp!1810582 () Bool)

(declare-fun tp!1810585 () Bool)

(assert (=> b!6544344 (= e!3962567 (and tp!1810582 tp!1810585))))

(assert (=> b!6543310 (= tp!1810467 e!3962567)))

(declare-fun b!6544345 () Bool)

(declare-fun tp!1810586 () Bool)

(assert (=> b!6544345 (= e!3962567 tp!1810586)))

(declare-fun b!6544346 () Bool)

(declare-fun tp!1810584 () Bool)

(declare-fun tp!1810583 () Bool)

(assert (=> b!6544346 (= e!3962567 (and tp!1810584 tp!1810583))))

(assert (= (and b!6543310 ((_ is ElementMatch!16413) (regOne!33338 r!7292))) b!6544343))

(assert (= (and b!6543310 ((_ is Concat!25258) (regOne!33338 r!7292))) b!6544344))

(assert (= (and b!6543310 ((_ is Star!16413) (regOne!33338 r!7292))) b!6544345))

(assert (= (and b!6543310 ((_ is Union!16413) (regOne!33338 r!7292))) b!6544346))

(declare-fun b!6544347 () Bool)

(declare-fun e!3962568 () Bool)

(assert (=> b!6544347 (= e!3962568 tp_is_empty!42079)))

(declare-fun b!6544348 () Bool)

(declare-fun tp!1810587 () Bool)

(declare-fun tp!1810590 () Bool)

(assert (=> b!6544348 (= e!3962568 (and tp!1810587 tp!1810590))))

(assert (=> b!6543310 (= tp!1810466 e!3962568)))

(declare-fun b!6544349 () Bool)

(declare-fun tp!1810591 () Bool)

(assert (=> b!6544349 (= e!3962568 tp!1810591)))

(declare-fun b!6544350 () Bool)

(declare-fun tp!1810589 () Bool)

(declare-fun tp!1810588 () Bool)

(assert (=> b!6544350 (= e!3962568 (and tp!1810589 tp!1810588))))

(assert (= (and b!6543310 ((_ is ElementMatch!16413) (regTwo!33338 r!7292))) b!6544347))

(assert (= (and b!6543310 ((_ is Concat!25258) (regTwo!33338 r!7292))) b!6544348))

(assert (= (and b!6543310 ((_ is Star!16413) (regTwo!33338 r!7292))) b!6544349))

(assert (= (and b!6543310 ((_ is Union!16413) (regTwo!33338 r!7292))) b!6544350))

(declare-fun b_lambda!247751 () Bool)

(assert (= b_lambda!247721 (or b!6543286 b_lambda!247751)))

(declare-fun bs!1671451 () Bool)

(declare-fun d!2054572 () Bool)

(assert (= bs!1671451 (and d!2054572 b!6543286)))

(declare-fun lt!2399666 () Unit!158987)

(assert (=> bs!1671451 (= lt!2399666 (lemmaConcatPreservesForall!386 (exprs!6297 lt!2399456) lt!2399477 lambda!363085))))

(assert (=> bs!1671451 (= (dynLambda!26000 lambda!363084 lt!2399456) (Context!11595 (++!14528 (exprs!6297 lt!2399456) lt!2399477)))))

(declare-fun m!7327408 () Bool)

(assert (=> bs!1671451 m!7327408))

(declare-fun m!7327410 () Bool)

(assert (=> bs!1671451 m!7327410))

(assert (=> d!2054310 d!2054572))

(declare-fun b_lambda!247753 () Bool)

(assert (= b_lambda!247745 (or b!6543320 b_lambda!247753)))

(declare-fun bs!1671452 () Bool)

(declare-fun d!2054574 () Bool)

(assert (= bs!1671452 (and d!2054574 b!6543320)))

(assert (=> bs!1671452 (= (dynLambda!26001 lambda!363083 (h!71864 zl!343)) (derivationStepZipperUp!1587 (h!71864 zl!343) (h!71863 s!2326)))))

(assert (=> bs!1671452 m!7326462))

(assert (=> d!2054546 d!2054574))

(declare-fun b_lambda!247755 () Bool)

(assert (= b_lambda!247723 (or b!6543320 b_lambda!247755)))

(declare-fun bs!1671453 () Bool)

(declare-fun d!2054576 () Bool)

(assert (= bs!1671453 (and d!2054576 b!6543320)))

(assert (=> bs!1671453 (= (dynLambda!26001 lambda!363083 lt!2399480) (derivationStepZipperUp!1587 lt!2399480 (h!71863 s!2326)))))

(assert (=> bs!1671453 m!7326440))

(assert (=> d!2054344 d!2054576))

(declare-fun b_lambda!247757 () Bool)

(assert (= b_lambda!247747 (or b!6543320 b_lambda!247757)))

(declare-fun bs!1671454 () Bool)

(declare-fun d!2054578 () Bool)

(assert (= bs!1671454 (and d!2054578 b!6543320)))

(assert (=> bs!1671454 (= (dynLambda!26001 lambda!363083 lt!2399456) (derivationStepZipperUp!1587 lt!2399456 (h!71863 s!2326)))))

(assert (=> bs!1671454 m!7326414))

(assert (=> d!2054560 d!2054578))

(declare-fun b_lambda!247759 () Bool)

(assert (= b_lambda!247749 (or b!6543320 b_lambda!247759)))

(declare-fun bs!1671455 () Bool)

(declare-fun d!2054580 () Bool)

(assert (= bs!1671455 (and d!2054580 b!6543320)))

(assert (=> bs!1671455 (= (dynLambda!26001 lambda!363083 lt!2399455) (derivationStepZipperUp!1587 lt!2399455 (h!71863 s!2326)))))

(assert (=> bs!1671455 m!7326404))

(assert (=> d!2054568 d!2054580))

(check-sat (not b!6544341) (not b!6544292) (not b!6543975) (not bm!569219) (not b!6544139) (not b!6543826) (not b!6543632) (not d!2054336) (not d!2054524) (not b!6544228) (not b!6544131) (not d!2054346) (not b!6543824) (not d!2054458) (not b!6544245) (not bm!569199) (not b!6543535) (not b!6543974) (not b!6544179) (not b!6544174) (not b!6543519) (not d!2054324) (not bm!569205) (not bm!569203) (not d!2054490) (not b!6544176) (not b!6543789) (not b!6543785) (not b!6544289) (not d!2054526) (not b!6543788) (not b!6544105) (not bm!569217) (not b!6543782) (not b!6544304) (not b!6544175) (not d!2054374) (not bm!569143) (not d!2054534) (not bm!569204) (not bm!569196) (not b!6544073) (not b!6544153) (not d!2054388) (not b!6544137) (not d!2054498) (not b!6544220) (not d!2054516) (not b_lambda!247759) (not b!6544260) (not b!6544282) (not d!2054444) (not b!6544338) (not bm!569197) (not d!2054344) (not b!6544184) (not b!6544161) (not b!6544212) (not b!6543638) (not b!6543546) (not b!6544210) (not b!6544294) (not d!2054502) (not b!6544249) (not d!2054494) (not bm!569132) (not b!6544208) (not b!6544134) (not d!2054404) (not d!2054512) (not d!2054308) (not b!6543548) (not b!6544284) (not d!2054538) (not b!6543634) (not d!2054440) (not b!6544334) (not b!6544255) (not b!6544349) (not b!6543962) (not b!6544233) (not b!6544344) (not d!2054426) (not b!6543715) (not b!6544259) (not b!6543723) (not d!2054460) (not b!6544219) (not b!6544206) (not b!6543827) (not b!6543942) tp_is_empty!42079 (not d!2054330) (not b!6544132) (not b!6544346) (not b!6543637) (not bm!569210) (not b!6544279) (not d!2054564) (not bm!569206) (not bm!569209) (not d!2054310) (not b!6544224) (not b!6543786) (not d!2054548) (not b!6543787) (not d!2054382) (not b!6543796) (not b!6544253) (not b!6543977) (not bm!569184) (not d!2054406) (not b!6543830) (not b_lambda!247753) (not b!6544272) (not b!6544243) (not b!6543941) (not b!6544323) (not d!2054560) (not setNonEmpty!44646) (not b!6544149) (not bs!1671453) (not b!6544218) (not b!6544277) (not b!6544180) (not b_lambda!247757) (not d!2054536) (not bm!569202) (not b!6544135) (not b!6543976) (not d!2054542) (not d!2054518) (not b!6544169) (not bm!569207) (not d!2054386) (not bm!569200) (not b!6544316) (not bs!1671454) (not bm!569220) (not b!6543790) (not d!2054322) (not b!6543534) (not d!2054562) (not b!6544303) (not d!2054408) (not b!6544085) (not bm!569212) (not b!6544328) (not b!6544244) (not b!6544261) (not d!2054514) (not d!2054568) (not b!6544214) (not d!2054306) (not b!6544345) (not d!2054348) (not b!6544215) (not bm!569218) (not b!6544256) (not d!2054520) (not d!2054422) (not d!2054570) (not bs!1671451) (not d!2054320) (not b!6544318) (not bm!569144) (not b!6543935) (not b!6544230) (not d!2054376) (not d!2054546) (not b!6544150) (not d!2054528) (not d!2054522) (not b!6543825) (not b_lambda!247751) (not bm!569137) (not bs!1671455) (not b_lambda!247755) (not b!6544340) (not d!2054540) (not b!6544223) (not b!6543633) (not b!6544274) (not b!6544287) (not bm!569188) (not b!6544342) (not b!6544231) (not b!6544248) (not d!2054552) (not d!2054334) (not b!6544348) (not b!6544350) (not b!6543831) (not b!6544258) (not bs!1671452) (not b!6544084) (not b!6544336) (not b!6544257) (not b!6544329) (not d!2054488) (not d!2054532) (not b!6543520) (not bm!569216) (not b!6544209) (not bm!569214) (not bm!569186) (not b!6544337) (not b!6544317) (not d!2054496) (not b!6543642))
(check-sat)

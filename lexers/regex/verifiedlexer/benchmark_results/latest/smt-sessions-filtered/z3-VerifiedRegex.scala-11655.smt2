; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!652608 () Bool)

(assert start!652608)

(declare-fun b!6729490 () Bool)

(assert (=> b!6729490 true))

(assert (=> b!6729490 true))

(declare-fun lambda!377653 () Int)

(declare-fun lambda!377652 () Int)

(assert (=> b!6729490 (not (= lambda!377653 lambda!377652))))

(assert (=> b!6729490 true))

(assert (=> b!6729490 true))

(declare-fun lambda!377654 () Int)

(assert (=> b!6729490 (not (= lambda!377654 lambda!377652))))

(assert (=> b!6729490 (not (= lambda!377654 lambda!377653))))

(assert (=> b!6729490 true))

(assert (=> b!6729490 true))

(declare-fun b!6729480 () Bool)

(assert (=> b!6729480 true))

(declare-fun e!4065522 () Bool)

(declare-fun e!4065528 () Bool)

(assert (=> b!6729480 (= e!4065522 e!4065528)))

(declare-fun res!2753209 () Bool)

(assert (=> b!6729480 (=> res!2753209 e!4065528)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33384 0))(
  ( (C!33385 (val!26394 Int)) )
))
(declare-datatypes ((Regex!16557 0))(
  ( (ElementMatch!16557 (c!1247791 C!33384)) (Concat!25402 (regOne!33626 Regex!16557) (regTwo!33626 Regex!16557)) (EmptyExpr!16557) (Star!16557 (reg!16886 Regex!16557)) (EmptyLang!16557) (Union!16557 (regOne!33627 Regex!16557) (regTwo!33627 Regex!16557)) )
))
(declare-datatypes ((List!65970 0))(
  ( (Nil!65846) (Cons!65846 (h!72294 Regex!16557) (t!379657 List!65970)) )
))
(declare-datatypes ((Context!11882 0))(
  ( (Context!11883 (exprs!6441 List!65970)) )
))
(declare-fun lt!2437635 () (InoxSet Context!11882))

(declare-fun lt!2437643 () (InoxSet Context!11882))

(assert (=> b!6729480 (= res!2753209 (not (= lt!2437635 lt!2437643)))))

(declare-datatypes ((List!65971 0))(
  ( (Nil!65847) (Cons!65847 (h!72295 C!33384) (t!379658 List!65971)) )
))
(declare-fun s!2326 () List!65971)

(declare-fun z!1189 () (InoxSet Context!11882))

(declare-datatypes ((List!65972 0))(
  ( (Nil!65848) (Cons!65848 (h!72296 Context!11882) (t!379659 List!65972)) )
))
(declare-fun zl!343 () List!65972)

(declare-fun lambda!377655 () Int)

(declare-fun flatMap!2038 ((InoxSet Context!11882) Int) (InoxSet Context!11882))

(declare-fun derivationStepZipperUp!1711 (Context!11882 C!33384) (InoxSet Context!11882))

(assert (=> b!6729480 (= (flatMap!2038 z!1189 lambda!377655) (derivationStepZipperUp!1711 (h!72296 zl!343) (h!72295 s!2326)))))

(declare-datatypes ((Unit!159805 0))(
  ( (Unit!159806) )
))
(declare-fun lt!2437641 () Unit!159805)

(declare-fun lemmaFlatMapOnSingletonSet!1564 ((InoxSet Context!11882) Context!11882 Int) Unit!159805)

(assert (=> b!6729480 (= lt!2437641 (lemmaFlatMapOnSingletonSet!1564 z!1189 (h!72296 zl!343) lambda!377655))))

(declare-fun b!6729481 () Bool)

(declare-fun e!4065524 () Bool)

(declare-fun tp!1845146 () Bool)

(assert (=> b!6729481 (= e!4065524 tp!1845146)))

(declare-fun b!6729482 () Bool)

(declare-fun e!4065516 () Bool)

(declare-fun e!4065517 () Bool)

(assert (=> b!6729482 (= e!4065516 e!4065517)))

(declare-fun res!2753210 () Bool)

(assert (=> b!6729482 (=> (not res!2753210) (not e!4065517))))

(declare-fun r!7292 () Regex!16557)

(declare-fun lt!2437632 () Regex!16557)

(assert (=> b!6729482 (= res!2753210 (= r!7292 lt!2437632))))

(declare-fun unfocusZipper!2299 (List!65972) Regex!16557)

(assert (=> b!6729482 (= lt!2437632 (unfocusZipper!2299 zl!343))))

(declare-fun b!6729484 () Bool)

(declare-fun e!4065518 () Bool)

(assert (=> b!6729484 (= e!4065528 e!4065518)))

(declare-fun res!2753220 () Bool)

(assert (=> b!6729484 (=> res!2753220 e!4065518)))

(declare-fun lt!2437634 () List!65970)

(declare-fun derivationStepZipperDown!1785 (Regex!16557 Context!11882 C!33384) (InoxSet Context!11882))

(assert (=> b!6729484 (= res!2753220 (not (= lt!2437635 (derivationStepZipperDown!1785 (reg!16886 r!7292) (Context!11883 lt!2437634) (h!72295 s!2326)))))))

(declare-fun lt!2437631 () (InoxSet Context!11882))

(declare-fun lt!2437639 () Context!11882)

(assert (=> b!6729484 (= (flatMap!2038 lt!2437631 lambda!377655) (derivationStepZipperUp!1711 lt!2437639 (h!72295 s!2326)))))

(declare-fun lt!2437646 () Unit!159805)

(assert (=> b!6729484 (= lt!2437646 (lemmaFlatMapOnSingletonSet!1564 lt!2437631 lt!2437639 lambda!377655))))

(declare-fun lt!2437636 () (InoxSet Context!11882))

(assert (=> b!6729484 (= lt!2437636 (derivationStepZipperUp!1711 lt!2437639 (h!72295 s!2326)))))

(assert (=> b!6729484 (= lt!2437631 (store ((as const (Array Context!11882 Bool)) false) lt!2437639 true))))

(assert (=> b!6729484 (= lt!2437639 (Context!11883 (Cons!65846 (reg!16886 r!7292) lt!2437634)))))

(assert (=> b!6729484 (= lt!2437634 (Cons!65846 r!7292 Nil!65846))))

(declare-fun b!6729485 () Bool)

(declare-fun res!2753221 () Bool)

(declare-fun e!4065527 () Bool)

(assert (=> b!6729485 (=> res!2753221 e!4065527)))

(get-info :version)

(assert (=> b!6729485 (= res!2753221 ((_ is Nil!65847) s!2326))))

(declare-fun b!6729486 () Bool)

(declare-fun e!4065525 () Bool)

(declare-fun tp!1845148 () Bool)

(declare-fun tp!1845147 () Bool)

(assert (=> b!6729486 (= e!4065525 (and tp!1845148 tp!1845147))))

(declare-fun b!6729487 () Bool)

(declare-fun res!2753217 () Bool)

(assert (=> b!6729487 (=> (not res!2753217) (not e!4065516))))

(declare-fun toList!10341 ((InoxSet Context!11882)) List!65972)

(assert (=> b!6729487 (= res!2753217 (= (toList!10341 z!1189) zl!343))))

(declare-fun b!6729488 () Bool)

(declare-fun e!4065523 () Bool)

(declare-fun tp_is_empty!42367 () Bool)

(declare-fun tp!1845151 () Bool)

(assert (=> b!6729488 (= e!4065523 (and tp_is_empty!42367 tp!1845151))))

(declare-fun b!6729489 () Bool)

(assert (=> b!6729489 (= e!4065525 tp_is_empty!42367)))

(declare-fun e!4065519 () Bool)

(assert (=> b!6729490 (= e!4065519 e!4065527)))

(declare-fun res!2753216 () Bool)

(assert (=> b!6729490 (=> res!2753216 e!4065527)))

(declare-fun lt!2437637 () Bool)

(declare-fun e!4065526 () Bool)

(assert (=> b!6729490 (= res!2753216 (not (= lt!2437637 e!4065526)))))

(declare-fun res!2753208 () Bool)

(assert (=> b!6729490 (=> res!2753208 e!4065526)))

(declare-fun isEmpty!38177 (List!65971) Bool)

(assert (=> b!6729490 (= res!2753208 (isEmpty!38177 s!2326))))

(declare-fun Exists!3625 (Int) Bool)

(assert (=> b!6729490 (= (Exists!3625 lambda!377652) (Exists!3625 lambda!377654))))

(declare-fun lt!2437633 () Unit!159805)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2152 (Regex!16557 Regex!16557 List!65971) Unit!159805)

(assert (=> b!6729490 (= lt!2437633 (lemmaExistCutMatchRandMatchRSpecEquivalent!2152 (reg!16886 r!7292) r!7292 s!2326))))

(assert (=> b!6729490 (= (Exists!3625 lambda!377652) (Exists!3625 lambda!377653))))

(declare-fun lt!2437645 () Unit!159805)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!716 (Regex!16557 List!65971) Unit!159805)

(assert (=> b!6729490 (= lt!2437645 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!716 (reg!16886 r!7292) s!2326))))

(declare-fun lt!2437642 () Bool)

(assert (=> b!6729490 (= lt!2437642 (Exists!3625 lambda!377652))))

(declare-datatypes ((tuple2!67064 0))(
  ( (tuple2!67065 (_1!36835 List!65971) (_2!36835 List!65971)) )
))
(declare-datatypes ((Option!16444 0))(
  ( (None!16443) (Some!16443 (v!52643 tuple2!67064)) )
))
(declare-fun isDefined!13147 (Option!16444) Bool)

(declare-fun findConcatSeparation!2858 (Regex!16557 Regex!16557 List!65971 List!65971 List!65971) Option!16444)

(assert (=> b!6729490 (= lt!2437642 (isDefined!13147 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326)))))

(declare-fun lt!2437638 () Unit!159805)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2622 (Regex!16557 Regex!16557 List!65971) Unit!159805)

(assert (=> b!6729490 (= lt!2437638 (lemmaFindConcatSeparationEquivalentToExists!2622 (reg!16886 r!7292) r!7292 s!2326))))

(declare-fun b!6729491 () Bool)

(declare-fun res!2753214 () Bool)

(assert (=> b!6729491 (=> res!2753214 e!4065519)))

(declare-fun generalisedConcat!2154 (List!65970) Regex!16557)

(assert (=> b!6729491 (= res!2753214 (not (= r!7292 (generalisedConcat!2154 (exprs!6441 (h!72296 zl!343))))))))

(declare-fun b!6729492 () Bool)

(declare-fun res!2753205 () Bool)

(assert (=> b!6729492 (=> res!2753205 e!4065519)))

(assert (=> b!6729492 (= res!2753205 (not ((_ is Cons!65846) (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6729493 () Bool)

(declare-fun res!2753211 () Bool)

(assert (=> b!6729493 (=> res!2753211 e!4065518)))

(assert (=> b!6729493 (= res!2753211 (not (= (unfocusZipper!2299 (Cons!65848 lt!2437639 Nil!65848)) (Concat!25402 (reg!16886 r!7292) r!7292))))))

(declare-fun b!6729494 () Bool)

(declare-fun inv!84639 (Context!11882) Bool)

(assert (=> b!6729494 (= e!4065518 (inv!84639 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846))))))

(declare-fun b!6729483 () Bool)

(declare-fun res!2753212 () Bool)

(assert (=> b!6729483 (=> res!2753212 e!4065518)))

(declare-fun matchZipper!2543 ((InoxSet Context!11882) List!65971) Bool)

(declare-fun derivationStepZipper!2501 ((InoxSet Context!11882) C!33384) (InoxSet Context!11882))

(assert (=> b!6729483 (= res!2753212 (not (= (matchZipper!2543 lt!2437631 s!2326) (matchZipper!2543 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (t!379658 s!2326)))))))

(declare-fun res!2753207 () Bool)

(assert (=> start!652608 (=> (not res!2753207) (not e!4065516))))

(declare-fun validRegex!8293 (Regex!16557) Bool)

(assert (=> start!652608 (= res!2753207 (validRegex!8293 r!7292))))

(assert (=> start!652608 e!4065516))

(assert (=> start!652608 e!4065525))

(declare-fun condSetEmpty!45899 () Bool)

(assert (=> start!652608 (= condSetEmpty!45899 (= z!1189 ((as const (Array Context!11882 Bool)) false)))))

(declare-fun setRes!45899 () Bool)

(assert (=> start!652608 setRes!45899))

(declare-fun e!4065521 () Bool)

(assert (=> start!652608 e!4065521))

(assert (=> start!652608 e!4065523))

(declare-fun b!6729495 () Bool)

(assert (=> b!6729495 (= e!4065526 lt!2437642)))

(declare-fun b!6729496 () Bool)

(declare-fun res!2753222 () Bool)

(assert (=> b!6729496 (=> res!2753222 e!4065519)))

(declare-fun generalisedUnion!2401 (List!65970) Regex!16557)

(declare-fun unfocusZipperList!1978 (List!65972) List!65970)

(assert (=> b!6729496 (= res!2753222 (not (= r!7292 (generalisedUnion!2401 (unfocusZipperList!1978 zl!343)))))))

(declare-fun b!6729497 () Bool)

(declare-fun res!2753215 () Bool)

(assert (=> b!6729497 (=> res!2753215 e!4065518)))

(assert (=> b!6729497 (= res!2753215 (or (not (= lt!2437632 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6729498 () Bool)

(declare-fun res!2753218 () Bool)

(assert (=> b!6729498 (=> res!2753218 e!4065519)))

(declare-fun isEmpty!38178 (List!65972) Bool)

(assert (=> b!6729498 (= res!2753218 (not (isEmpty!38178 (t!379659 zl!343))))))

(declare-fun b!6729499 () Bool)

(declare-fun tp!1845149 () Bool)

(assert (=> b!6729499 (= e!4065521 (and (inv!84639 (h!72296 zl!343)) e!4065524 tp!1845149))))

(declare-fun setIsEmpty!45899 () Bool)

(assert (=> setIsEmpty!45899 setRes!45899))

(declare-fun b!6729500 () Bool)

(declare-fun e!4065520 () Bool)

(declare-fun tp!1845153 () Bool)

(assert (=> b!6729500 (= e!4065520 tp!1845153)))

(declare-fun b!6729501 () Bool)

(assert (=> b!6729501 (= e!4065527 e!4065522)))

(declare-fun res!2753213 () Bool)

(assert (=> b!6729501 (=> res!2753213 e!4065522)))

(declare-fun lt!2437640 () (InoxSet Context!11882))

(assert (=> b!6729501 (= res!2753213 (not (= lt!2437640 lt!2437643)))))

(assert (=> b!6729501 (= lt!2437643 (derivationStepZipperDown!1785 r!7292 (Context!11883 Nil!65846) (h!72295 s!2326)))))

(assert (=> b!6729501 (= lt!2437640 (derivationStepZipperUp!1711 (Context!11883 (Cons!65846 r!7292 Nil!65846)) (h!72295 s!2326)))))

(assert (=> b!6729501 (= lt!2437635 (derivationStepZipper!2501 z!1189 (h!72295 s!2326)))))

(declare-fun b!6729502 () Bool)

(assert (=> b!6729502 (= e!4065517 (not e!4065519))))

(declare-fun res!2753219 () Bool)

(assert (=> b!6729502 (=> res!2753219 e!4065519)))

(assert (=> b!6729502 (= res!2753219 (not ((_ is Cons!65848) zl!343)))))

(declare-fun matchRSpec!3658 (Regex!16557 List!65971) Bool)

(assert (=> b!6729502 (= lt!2437637 (matchRSpec!3658 r!7292 s!2326))))

(declare-fun matchR!8740 (Regex!16557 List!65971) Bool)

(assert (=> b!6729502 (= lt!2437637 (matchR!8740 r!7292 s!2326))))

(declare-fun lt!2437644 () Unit!159805)

(declare-fun mainMatchTheorem!3658 (Regex!16557 List!65971) Unit!159805)

(assert (=> b!6729502 (= lt!2437644 (mainMatchTheorem!3658 r!7292 s!2326))))

(declare-fun b!6729503 () Bool)

(declare-fun res!2753206 () Bool)

(assert (=> b!6729503 (=> res!2753206 e!4065519)))

(assert (=> b!6729503 (= res!2753206 (or ((_ is EmptyExpr!16557) r!7292) ((_ is EmptyLang!16557) r!7292) ((_ is ElementMatch!16557) r!7292) ((_ is Union!16557) r!7292) ((_ is Concat!25402) r!7292)))))

(declare-fun setElem!45899 () Context!11882)

(declare-fun tp!1845152 () Bool)

(declare-fun setNonEmpty!45899 () Bool)

(assert (=> setNonEmpty!45899 (= setRes!45899 (and tp!1845152 (inv!84639 setElem!45899) e!4065520))))

(declare-fun setRest!45899 () (InoxSet Context!11882))

(assert (=> setNonEmpty!45899 (= z!1189 ((_ map or) (store ((as const (Array Context!11882 Bool)) false) setElem!45899 true) setRest!45899))))

(declare-fun b!6729504 () Bool)

(declare-fun tp!1845144 () Bool)

(assert (=> b!6729504 (= e!4065525 tp!1845144)))

(declare-fun b!6729505 () Bool)

(declare-fun tp!1845145 () Bool)

(declare-fun tp!1845150 () Bool)

(assert (=> b!6729505 (= e!4065525 (and tp!1845145 tp!1845150))))

(assert (= (and start!652608 res!2753207) b!6729487))

(assert (= (and b!6729487 res!2753217) b!6729482))

(assert (= (and b!6729482 res!2753210) b!6729502))

(assert (= (and b!6729502 (not res!2753219)) b!6729498))

(assert (= (and b!6729498 (not res!2753218)) b!6729491))

(assert (= (and b!6729491 (not res!2753214)) b!6729492))

(assert (= (and b!6729492 (not res!2753205)) b!6729496))

(assert (= (and b!6729496 (not res!2753222)) b!6729503))

(assert (= (and b!6729503 (not res!2753206)) b!6729490))

(assert (= (and b!6729490 (not res!2753208)) b!6729495))

(assert (= (and b!6729490 (not res!2753216)) b!6729485))

(assert (= (and b!6729485 (not res!2753221)) b!6729501))

(assert (= (and b!6729501 (not res!2753213)) b!6729480))

(assert (= (and b!6729480 (not res!2753209)) b!6729484))

(assert (= (and b!6729484 (not res!2753220)) b!6729483))

(assert (= (and b!6729483 (not res!2753212)) b!6729497))

(assert (= (and b!6729497 (not res!2753215)) b!6729493))

(assert (= (and b!6729493 (not res!2753211)) b!6729494))

(assert (= (and start!652608 ((_ is ElementMatch!16557) r!7292)) b!6729489))

(assert (= (and start!652608 ((_ is Concat!25402) r!7292)) b!6729486))

(assert (= (and start!652608 ((_ is Star!16557) r!7292)) b!6729504))

(assert (= (and start!652608 ((_ is Union!16557) r!7292)) b!6729505))

(assert (= (and start!652608 condSetEmpty!45899) setIsEmpty!45899))

(assert (= (and start!652608 (not condSetEmpty!45899)) setNonEmpty!45899))

(assert (= setNonEmpty!45899 b!6729500))

(assert (= b!6729499 b!6729481))

(assert (= (and start!652608 ((_ is Cons!65848) zl!343)) b!6729499))

(assert (= (and start!652608 ((_ is Cons!65847) s!2326)) b!6729488))

(declare-fun m!7488446 () Bool)

(assert (=> b!6729484 m!7488446))

(declare-fun m!7488448 () Bool)

(assert (=> b!6729484 m!7488448))

(declare-fun m!7488450 () Bool)

(assert (=> b!6729484 m!7488450))

(declare-fun m!7488452 () Bool)

(assert (=> b!6729484 m!7488452))

(declare-fun m!7488454 () Bool)

(assert (=> b!6729484 m!7488454))

(declare-fun m!7488456 () Bool)

(assert (=> start!652608 m!7488456))

(declare-fun m!7488458 () Bool)

(assert (=> b!6729480 m!7488458))

(declare-fun m!7488460 () Bool)

(assert (=> b!6729480 m!7488460))

(declare-fun m!7488462 () Bool)

(assert (=> b!6729480 m!7488462))

(declare-fun m!7488464 () Bool)

(assert (=> b!6729491 m!7488464))

(declare-fun m!7488466 () Bool)

(assert (=> b!6729498 m!7488466))

(declare-fun m!7488468 () Bool)

(assert (=> b!6729490 m!7488468))

(declare-fun m!7488470 () Bool)

(assert (=> b!6729490 m!7488470))

(declare-fun m!7488472 () Bool)

(assert (=> b!6729490 m!7488472))

(declare-fun m!7488474 () Bool)

(assert (=> b!6729490 m!7488474))

(assert (=> b!6729490 m!7488468))

(declare-fun m!7488476 () Bool)

(assert (=> b!6729490 m!7488476))

(assert (=> b!6729490 m!7488468))

(declare-fun m!7488478 () Bool)

(assert (=> b!6729490 m!7488478))

(declare-fun m!7488480 () Bool)

(assert (=> b!6729490 m!7488480))

(declare-fun m!7488482 () Bool)

(assert (=> b!6729490 m!7488482))

(assert (=> b!6729490 m!7488478))

(declare-fun m!7488484 () Bool)

(assert (=> b!6729490 m!7488484))

(declare-fun m!7488486 () Bool)

(assert (=> b!6729487 m!7488486))

(declare-fun m!7488488 () Bool)

(assert (=> b!6729502 m!7488488))

(declare-fun m!7488490 () Bool)

(assert (=> b!6729502 m!7488490))

(declare-fun m!7488492 () Bool)

(assert (=> b!6729502 m!7488492))

(declare-fun m!7488494 () Bool)

(assert (=> b!6729482 m!7488494))

(declare-fun m!7488496 () Bool)

(assert (=> b!6729501 m!7488496))

(declare-fun m!7488498 () Bool)

(assert (=> b!6729501 m!7488498))

(declare-fun m!7488500 () Bool)

(assert (=> b!6729501 m!7488500))

(declare-fun m!7488502 () Bool)

(assert (=> setNonEmpty!45899 m!7488502))

(declare-fun m!7488504 () Bool)

(assert (=> b!6729494 m!7488504))

(declare-fun m!7488506 () Bool)

(assert (=> b!6729496 m!7488506))

(assert (=> b!6729496 m!7488506))

(declare-fun m!7488508 () Bool)

(assert (=> b!6729496 m!7488508))

(declare-fun m!7488510 () Bool)

(assert (=> b!6729483 m!7488510))

(declare-fun m!7488512 () Bool)

(assert (=> b!6729483 m!7488512))

(assert (=> b!6729483 m!7488512))

(declare-fun m!7488514 () Bool)

(assert (=> b!6729483 m!7488514))

(declare-fun m!7488516 () Bool)

(assert (=> b!6729493 m!7488516))

(declare-fun m!7488518 () Bool)

(assert (=> b!6729499 m!7488518))

(check-sat (not b!6729491) (not b!6729501) (not b!6729481) (not b!6729502) (not start!652608) (not b!6729488) tp_is_empty!42367 (not b!6729499) (not b!6729505) (not b!6729504) (not b!6729480) (not b!6729500) (not b!6729482) (not b!6729486) (not b!6729498) (not b!6729483) (not setNonEmpty!45899) (not b!6729493) (not b!6729490) (not b!6729494) (not b!6729496) (not b!6729487) (not b!6729484))
(check-sat)
(get-model)

(declare-fun b!6729577 () Bool)

(declare-fun e!4065570 () Bool)

(declare-fun e!4065571 () Bool)

(assert (=> b!6729577 (= e!4065570 e!4065571)))

(declare-fun c!1247811 () Bool)

(assert (=> b!6729577 (= c!1247811 ((_ is Star!16557) r!7292))))

(declare-fun b!6729578 () Bool)

(declare-fun res!2753253 () Bool)

(declare-fun e!4065575 () Bool)

(assert (=> b!6729578 (=> (not res!2753253) (not e!4065575))))

(declare-fun call!607743 () Bool)

(assert (=> b!6729578 (= res!2753253 call!607743)))

(declare-fun e!4065573 () Bool)

(assert (=> b!6729578 (= e!4065573 e!4065575)))

(declare-fun c!1247810 () Bool)

(declare-fun call!607744 () Bool)

(declare-fun bm!607738 () Bool)

(assert (=> bm!607738 (= call!607744 (validRegex!8293 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))

(declare-fun d!2114486 () Bool)

(declare-fun res!2753254 () Bool)

(assert (=> d!2114486 (=> res!2753254 e!4065570)))

(assert (=> d!2114486 (= res!2753254 ((_ is ElementMatch!16557) r!7292))))

(assert (=> d!2114486 (= (validRegex!8293 r!7292) e!4065570)))

(declare-fun b!6729579 () Bool)

(declare-fun call!607745 () Bool)

(assert (=> b!6729579 (= e!4065575 call!607745)))

(declare-fun bm!607739 () Bool)

(assert (=> bm!607739 (= call!607743 call!607744)))

(declare-fun b!6729580 () Bool)

(declare-fun e!4065574 () Bool)

(declare-fun e!4065576 () Bool)

(assert (=> b!6729580 (= e!4065574 e!4065576)))

(declare-fun res!2753252 () Bool)

(assert (=> b!6729580 (=> (not res!2753252) (not e!4065576))))

(assert (=> b!6729580 (= res!2753252 call!607743)))

(declare-fun b!6729581 () Bool)

(assert (=> b!6729581 (= e!4065571 e!4065573)))

(assert (=> b!6729581 (= c!1247810 ((_ is Union!16557) r!7292))))

(declare-fun b!6729582 () Bool)

(declare-fun e!4065572 () Bool)

(assert (=> b!6729582 (= e!4065571 e!4065572)))

(declare-fun res!2753255 () Bool)

(declare-fun nullable!6544 (Regex!16557) Bool)

(assert (=> b!6729582 (= res!2753255 (not (nullable!6544 (reg!16886 r!7292))))))

(assert (=> b!6729582 (=> (not res!2753255) (not e!4065572))))

(declare-fun bm!607740 () Bool)

(assert (=> bm!607740 (= call!607745 (validRegex!8293 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))))))

(declare-fun b!6729583 () Bool)

(assert (=> b!6729583 (= e!4065572 call!607744)))

(declare-fun b!6729584 () Bool)

(declare-fun res!2753256 () Bool)

(assert (=> b!6729584 (=> res!2753256 e!4065574)))

(assert (=> b!6729584 (= res!2753256 (not ((_ is Concat!25402) r!7292)))))

(assert (=> b!6729584 (= e!4065573 e!4065574)))

(declare-fun b!6729585 () Bool)

(assert (=> b!6729585 (= e!4065576 call!607745)))

(assert (= (and d!2114486 (not res!2753254)) b!6729577))

(assert (= (and b!6729577 c!1247811) b!6729582))

(assert (= (and b!6729577 (not c!1247811)) b!6729581))

(assert (= (and b!6729582 res!2753255) b!6729583))

(assert (= (and b!6729581 c!1247810) b!6729578))

(assert (= (and b!6729581 (not c!1247810)) b!6729584))

(assert (= (and b!6729578 res!2753253) b!6729579))

(assert (= (and b!6729584 (not res!2753256)) b!6729580))

(assert (= (and b!6729580 res!2753252) b!6729585))

(assert (= (or b!6729579 b!6729585) bm!607740))

(assert (= (or b!6729578 b!6729580) bm!607739))

(assert (= (or b!6729583 bm!607739) bm!607738))

(declare-fun m!7488544 () Bool)

(assert (=> bm!607738 m!7488544))

(declare-fun m!7488546 () Bool)

(assert (=> b!6729582 m!7488546))

(declare-fun m!7488548 () Bool)

(assert (=> bm!607740 m!7488548))

(assert (=> start!652608 d!2114486))

(declare-fun bs!1789784 () Bool)

(declare-fun b!6729674 () Bool)

(assert (= bs!1789784 (and b!6729674 b!6729490)))

(declare-fun lambda!377669 () Int)

(assert (=> bs!1789784 (not (= lambda!377669 lambda!377652))))

(assert (=> bs!1789784 (= lambda!377669 lambda!377653)))

(assert (=> bs!1789784 (not (= lambda!377669 lambda!377654))))

(assert (=> b!6729674 true))

(assert (=> b!6729674 true))

(declare-fun bs!1789785 () Bool)

(declare-fun b!6729675 () Bool)

(assert (= bs!1789785 (and b!6729675 b!6729490)))

(declare-fun lambda!377670 () Int)

(assert (=> bs!1789785 (not (= lambda!377670 lambda!377652))))

(assert (=> bs!1789785 (not (= lambda!377670 lambda!377653))))

(assert (=> bs!1789785 (= (and (= (regOne!33626 r!7292) (reg!16886 r!7292)) (= (regTwo!33626 r!7292) r!7292)) (= lambda!377670 lambda!377654))))

(declare-fun bs!1789786 () Bool)

(assert (= bs!1789786 (and b!6729675 b!6729674)))

(assert (=> bs!1789786 (not (= lambda!377670 lambda!377669))))

(assert (=> b!6729675 true))

(assert (=> b!6729675 true))

(declare-fun b!6729671 () Bool)

(declare-fun c!1247833 () Bool)

(assert (=> b!6729671 (= c!1247833 ((_ is ElementMatch!16557) r!7292))))

(declare-fun e!4065626 () Bool)

(declare-fun e!4065629 () Bool)

(assert (=> b!6729671 (= e!4065626 e!4065629)))

(declare-fun b!6729672 () Bool)

(declare-fun e!4065623 () Bool)

(assert (=> b!6729672 (= e!4065623 e!4065626)))

(declare-fun res!2753302 () Bool)

(assert (=> b!6729672 (= res!2753302 (not ((_ is EmptyLang!16557) r!7292)))))

(assert (=> b!6729672 (=> (not res!2753302) (not e!4065626))))

(declare-fun b!6729673 () Bool)

(declare-fun e!4065624 () Bool)

(assert (=> b!6729673 (= e!4065624 (matchRSpec!3658 (regTwo!33627 r!7292) s!2326))))

(declare-fun e!4065625 () Bool)

(declare-fun call!607756 () Bool)

(assert (=> b!6729674 (= e!4065625 call!607756)))

(declare-fun e!4065628 () Bool)

(assert (=> b!6729675 (= e!4065628 call!607756)))

(declare-fun d!2114488 () Bool)

(declare-fun c!1247834 () Bool)

(assert (=> d!2114488 (= c!1247834 ((_ is EmptyExpr!16557) r!7292))))

(assert (=> d!2114488 (= (matchRSpec!3658 r!7292 s!2326) e!4065623)))

(declare-fun b!6729676 () Bool)

(declare-fun c!1247836 () Bool)

(assert (=> b!6729676 (= c!1247836 ((_ is Union!16557) r!7292))))

(declare-fun e!4065627 () Bool)

(assert (=> b!6729676 (= e!4065629 e!4065627)))

(declare-fun b!6729677 () Bool)

(declare-fun res!2753301 () Bool)

(assert (=> b!6729677 (=> res!2753301 e!4065625)))

(declare-fun call!607755 () Bool)

(assert (=> b!6729677 (= res!2753301 call!607755)))

(assert (=> b!6729677 (= e!4065628 e!4065625)))

(declare-fun b!6729678 () Bool)

(assert (=> b!6729678 (= e!4065627 e!4065624)))

(declare-fun res!2753300 () Bool)

(assert (=> b!6729678 (= res!2753300 (matchRSpec!3658 (regOne!33627 r!7292) s!2326))))

(assert (=> b!6729678 (=> res!2753300 e!4065624)))

(declare-fun b!6729679 () Bool)

(assert (=> b!6729679 (= e!4065627 e!4065628)))

(declare-fun c!1247835 () Bool)

(assert (=> b!6729679 (= c!1247835 ((_ is Star!16557) r!7292))))

(declare-fun bm!607750 () Bool)

(assert (=> bm!607750 (= call!607755 (isEmpty!38177 s!2326))))

(declare-fun b!6729680 () Bool)

(assert (=> b!6729680 (= e!4065623 call!607755)))

(declare-fun bm!607751 () Bool)

(assert (=> bm!607751 (= call!607756 (Exists!3625 (ite c!1247835 lambda!377669 lambda!377670)))))

(declare-fun b!6729681 () Bool)

(assert (=> b!6729681 (= e!4065629 (= s!2326 (Cons!65847 (c!1247791 r!7292) Nil!65847)))))

(assert (= (and d!2114488 c!1247834) b!6729680))

(assert (= (and d!2114488 (not c!1247834)) b!6729672))

(assert (= (and b!6729672 res!2753302) b!6729671))

(assert (= (and b!6729671 c!1247833) b!6729681))

(assert (= (and b!6729671 (not c!1247833)) b!6729676))

(assert (= (and b!6729676 c!1247836) b!6729678))

(assert (= (and b!6729676 (not c!1247836)) b!6729679))

(assert (= (and b!6729678 (not res!2753300)) b!6729673))

(assert (= (and b!6729679 c!1247835) b!6729677))

(assert (= (and b!6729679 (not c!1247835)) b!6729675))

(assert (= (and b!6729677 (not res!2753301)) b!6729674))

(assert (= (or b!6729674 b!6729675) bm!607751))

(assert (= (or b!6729680 b!6729677) bm!607750))

(declare-fun m!7488568 () Bool)

(assert (=> b!6729673 m!7488568))

(declare-fun m!7488570 () Bool)

(assert (=> b!6729678 m!7488570))

(assert (=> bm!607750 m!7488470))

(declare-fun m!7488572 () Bool)

(assert (=> bm!607751 m!7488572))

(assert (=> b!6729502 d!2114488))

(declare-fun bm!607754 () Bool)

(declare-fun call!607759 () Bool)

(assert (=> bm!607754 (= call!607759 (isEmpty!38177 s!2326))))

(declare-fun b!6729733 () Bool)

(declare-fun e!4065660 () Bool)

(declare-fun head!13540 (List!65971) C!33384)

(assert (=> b!6729733 (= e!4065660 (not (= (head!13540 s!2326) (c!1247791 r!7292))))))

(declare-fun b!6729734 () Bool)

(declare-fun e!4065652 () Bool)

(declare-fun e!4065659 () Bool)

(assert (=> b!6729734 (= e!4065652 e!4065659)))

(declare-fun c!1247854 () Bool)

(assert (=> b!6729734 (= c!1247854 ((_ is EmptyLang!16557) r!7292))))

(declare-fun b!6729735 () Bool)

(declare-fun e!4065655 () Bool)

(assert (=> b!6729735 (= e!4065655 e!4065660)))

(declare-fun res!2753323 () Bool)

(assert (=> b!6729735 (=> res!2753323 e!4065660)))

(assert (=> b!6729735 (= res!2753323 call!607759)))

(declare-fun b!6729736 () Bool)

(declare-fun res!2753322 () Bool)

(assert (=> b!6729736 (=> res!2753322 e!4065660)))

(declare-fun tail!12625 (List!65971) List!65971)

(assert (=> b!6729736 (= res!2753322 (not (isEmpty!38177 (tail!12625 s!2326))))))

(declare-fun b!6729737 () Bool)

(declare-fun e!4065653 () Bool)

(assert (=> b!6729737 (= e!4065653 e!4065655)))

(declare-fun res!2753320 () Bool)

(assert (=> b!6729737 (=> (not res!2753320) (not e!4065655))))

(declare-fun lt!2437662 () Bool)

(assert (=> b!6729737 (= res!2753320 (not lt!2437662))))

(declare-fun b!6729738 () Bool)

(declare-fun e!4065654 () Bool)

(assert (=> b!6729738 (= e!4065654 (nullable!6544 r!7292))))

(declare-fun b!6729741 () Bool)

(declare-fun e!4065657 () Bool)

(assert (=> b!6729741 (= e!4065657 (= (head!13540 s!2326) (c!1247791 r!7292)))))

(declare-fun b!6729742 () Bool)

(declare-fun res!2753326 () Bool)

(assert (=> b!6729742 (=> res!2753326 e!4065653)))

(assert (=> b!6729742 (= res!2753326 e!4065657)))

(declare-fun res!2753319 () Bool)

(assert (=> b!6729742 (=> (not res!2753319) (not e!4065657))))

(assert (=> b!6729742 (= res!2753319 lt!2437662)))

(declare-fun b!6729743 () Bool)

(assert (=> b!6729743 (= e!4065652 (= lt!2437662 call!607759))))

(declare-fun b!6729732 () Bool)

(declare-fun derivativeStep!5229 (Regex!16557 C!33384) Regex!16557)

(assert (=> b!6729732 (= e!4065654 (matchR!8740 (derivativeStep!5229 r!7292 (head!13540 s!2326)) (tail!12625 s!2326)))))

(declare-fun d!2114494 () Bool)

(assert (=> d!2114494 e!4065652))

(declare-fun c!1247853 () Bool)

(assert (=> d!2114494 (= c!1247853 ((_ is EmptyExpr!16557) r!7292))))

(assert (=> d!2114494 (= lt!2437662 e!4065654)))

(declare-fun c!1247857 () Bool)

(assert (=> d!2114494 (= c!1247857 (isEmpty!38177 s!2326))))

(assert (=> d!2114494 (validRegex!8293 r!7292)))

(assert (=> d!2114494 (= (matchR!8740 r!7292 s!2326) lt!2437662)))

(declare-fun b!6729744 () Bool)

(declare-fun res!2753321 () Bool)

(assert (=> b!6729744 (=> (not res!2753321) (not e!4065657))))

(assert (=> b!6729744 (= res!2753321 (isEmpty!38177 (tail!12625 s!2326)))))

(declare-fun b!6729745 () Bool)

(declare-fun res!2753324 () Bool)

(assert (=> b!6729745 (=> res!2753324 e!4065653)))

(assert (=> b!6729745 (= res!2753324 (not ((_ is ElementMatch!16557) r!7292)))))

(assert (=> b!6729745 (= e!4065659 e!4065653)))

(declare-fun b!6729746 () Bool)

(assert (=> b!6729746 (= e!4065659 (not lt!2437662))))

(declare-fun b!6729747 () Bool)

(declare-fun res!2753325 () Bool)

(assert (=> b!6729747 (=> (not res!2753325) (not e!4065657))))

(assert (=> b!6729747 (= res!2753325 (not call!607759))))

(assert (= (and d!2114494 c!1247857) b!6729738))

(assert (= (and d!2114494 (not c!1247857)) b!6729732))

(assert (= (and d!2114494 c!1247853) b!6729743))

(assert (= (and d!2114494 (not c!1247853)) b!6729734))

(assert (= (and b!6729734 c!1247854) b!6729746))

(assert (= (and b!6729734 (not c!1247854)) b!6729745))

(assert (= (and b!6729745 (not res!2753324)) b!6729742))

(assert (= (and b!6729742 res!2753319) b!6729747))

(assert (= (and b!6729747 res!2753325) b!6729744))

(assert (= (and b!6729744 res!2753321) b!6729741))

(assert (= (and b!6729742 (not res!2753326)) b!6729737))

(assert (= (and b!6729737 res!2753320) b!6729735))

(assert (= (and b!6729735 (not res!2753323)) b!6729736))

(assert (= (and b!6729736 (not res!2753322)) b!6729733))

(assert (= (or b!6729743 b!6729735 b!6729747) bm!607754))

(assert (=> bm!607754 m!7488470))

(declare-fun m!7488596 () Bool)

(assert (=> b!6729733 m!7488596))

(assert (=> b!6729741 m!7488596))

(assert (=> b!6729732 m!7488596))

(assert (=> b!6729732 m!7488596))

(declare-fun m!7488598 () Bool)

(assert (=> b!6729732 m!7488598))

(declare-fun m!7488600 () Bool)

(assert (=> b!6729732 m!7488600))

(assert (=> b!6729732 m!7488598))

(assert (=> b!6729732 m!7488600))

(declare-fun m!7488602 () Bool)

(assert (=> b!6729732 m!7488602))

(assert (=> b!6729736 m!7488600))

(assert (=> b!6729736 m!7488600))

(declare-fun m!7488604 () Bool)

(assert (=> b!6729736 m!7488604))

(assert (=> b!6729744 m!7488600))

(assert (=> b!6729744 m!7488600))

(assert (=> b!6729744 m!7488604))

(declare-fun m!7488606 () Bool)

(assert (=> b!6729738 m!7488606))

(assert (=> d!2114494 m!7488470))

(assert (=> d!2114494 m!7488456))

(assert (=> b!6729502 d!2114494))

(declare-fun d!2114504 () Bool)

(assert (=> d!2114504 (= (matchR!8740 r!7292 s!2326) (matchRSpec!3658 r!7292 s!2326))))

(declare-fun lt!2437665 () Unit!159805)

(declare-fun choose!50148 (Regex!16557 List!65971) Unit!159805)

(assert (=> d!2114504 (= lt!2437665 (choose!50148 r!7292 s!2326))))

(assert (=> d!2114504 (validRegex!8293 r!7292)))

(assert (=> d!2114504 (= (mainMatchTheorem!3658 r!7292 s!2326) lt!2437665)))

(declare-fun bs!1789790 () Bool)

(assert (= bs!1789790 d!2114504))

(assert (=> bs!1789790 m!7488490))

(assert (=> bs!1789790 m!7488488))

(declare-fun m!7488608 () Bool)

(assert (=> bs!1789790 m!7488608))

(assert (=> bs!1789790 m!7488456))

(assert (=> b!6729502 d!2114504))

(declare-fun d!2114506 () Bool)

(declare-fun lt!2437668 () Regex!16557)

(assert (=> d!2114506 (validRegex!8293 lt!2437668)))

(assert (=> d!2114506 (= lt!2437668 (generalisedUnion!2401 (unfocusZipperList!1978 zl!343)))))

(assert (=> d!2114506 (= (unfocusZipper!2299 zl!343) lt!2437668)))

(declare-fun bs!1789791 () Bool)

(assert (= bs!1789791 d!2114506))

(declare-fun m!7488610 () Bool)

(assert (=> bs!1789791 m!7488610))

(assert (=> bs!1789791 m!7488506))

(assert (=> bs!1789791 m!7488506))

(assert (=> bs!1789791 m!7488508))

(assert (=> b!6729482 d!2114506))

(declare-fun d!2114508 () Bool)

(declare-fun choose!50149 ((InoxSet Context!11882) Int) (InoxSet Context!11882))

(assert (=> d!2114508 (= (flatMap!2038 z!1189 lambda!377655) (choose!50149 z!1189 lambda!377655))))

(declare-fun bs!1789792 () Bool)

(assert (= bs!1789792 d!2114508))

(declare-fun m!7488612 () Bool)

(assert (=> bs!1789792 m!7488612))

(assert (=> b!6729480 d!2114508))

(declare-fun b!6729782 () Bool)

(declare-fun e!4065683 () (InoxSet Context!11882))

(declare-fun e!4065682 () (InoxSet Context!11882))

(assert (=> b!6729782 (= e!4065683 e!4065682)))

(declare-fun c!1247873 () Bool)

(assert (=> b!6729782 (= c!1247873 ((_ is Cons!65846) (exprs!6441 (h!72296 zl!343))))))

(declare-fun b!6729783 () Bool)

(declare-fun call!607781 () (InoxSet Context!11882))

(assert (=> b!6729783 (= e!4065683 ((_ map or) call!607781 (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))) (h!72295 s!2326))))))

(declare-fun b!6729784 () Bool)

(assert (=> b!6729784 (= e!4065682 call!607781)))

(declare-fun d!2114510 () Bool)

(declare-fun c!1247874 () Bool)

(declare-fun e!4065684 () Bool)

(assert (=> d!2114510 (= c!1247874 e!4065684)))

(declare-fun res!2753333 () Bool)

(assert (=> d!2114510 (=> (not res!2753333) (not e!4065684))))

(assert (=> d!2114510 (= res!2753333 ((_ is Cons!65846) (exprs!6441 (h!72296 zl!343))))))

(assert (=> d!2114510 (= (derivationStepZipperUp!1711 (h!72296 zl!343) (h!72295 s!2326)) e!4065683)))

(declare-fun bm!607776 () Bool)

(assert (=> bm!607776 (= call!607781 (derivationStepZipperDown!1785 (h!72294 (exprs!6441 (h!72296 zl!343))) (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))) (h!72295 s!2326)))))

(declare-fun b!6729785 () Bool)

(assert (=> b!6729785 (= e!4065682 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6729786 () Bool)

(assert (=> b!6729786 (= e!4065684 (nullable!6544 (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(assert (= (and d!2114510 res!2753333) b!6729786))

(assert (= (and d!2114510 c!1247874) b!6729783))

(assert (= (and d!2114510 (not c!1247874)) b!6729782))

(assert (= (and b!6729782 c!1247873) b!6729784))

(assert (= (and b!6729782 (not c!1247873)) b!6729785))

(assert (= (or b!6729783 b!6729784) bm!607776))

(declare-fun m!7488642 () Bool)

(assert (=> b!6729783 m!7488642))

(declare-fun m!7488644 () Bool)

(assert (=> bm!607776 m!7488644))

(declare-fun m!7488646 () Bool)

(assert (=> b!6729786 m!7488646))

(assert (=> b!6729480 d!2114510))

(declare-fun d!2114526 () Bool)

(declare-fun dynLambda!26264 (Int Context!11882) (InoxSet Context!11882))

(assert (=> d!2114526 (= (flatMap!2038 z!1189 lambda!377655) (dynLambda!26264 lambda!377655 (h!72296 zl!343)))))

(declare-fun lt!2437672 () Unit!159805)

(declare-fun choose!50150 ((InoxSet Context!11882) Context!11882 Int) Unit!159805)

(assert (=> d!2114526 (= lt!2437672 (choose!50150 z!1189 (h!72296 zl!343) lambda!377655))))

(assert (=> d!2114526 (= z!1189 (store ((as const (Array Context!11882 Bool)) false) (h!72296 zl!343) true))))

(assert (=> d!2114526 (= (lemmaFlatMapOnSingletonSet!1564 z!1189 (h!72296 zl!343) lambda!377655) lt!2437672)))

(declare-fun b_lambda!253375 () Bool)

(assert (=> (not b_lambda!253375) (not d!2114526)))

(declare-fun bs!1789798 () Bool)

(assert (= bs!1789798 d!2114526))

(assert (=> bs!1789798 m!7488458))

(declare-fun m!7488648 () Bool)

(assert (=> bs!1789798 m!7488648))

(declare-fun m!7488650 () Bool)

(assert (=> bs!1789798 m!7488650))

(declare-fun m!7488652 () Bool)

(assert (=> bs!1789798 m!7488652))

(assert (=> b!6729480 d!2114526))

(declare-fun b!6729815 () Bool)

(declare-fun e!4065705 () Bool)

(declare-fun e!4065702 () Bool)

(assert (=> b!6729815 (= e!4065705 e!4065702)))

(declare-fun c!1247885 () Bool)

(declare-fun isEmpty!38179 (List!65970) Bool)

(assert (=> b!6729815 (= c!1247885 (isEmpty!38179 (exprs!6441 (h!72296 zl!343))))))

(declare-fun b!6729816 () Bool)

(declare-fun lt!2437678 () Regex!16557)

(declare-fun isEmptyExpr!1922 (Regex!16557) Bool)

(assert (=> b!6729816 (= e!4065702 (isEmptyExpr!1922 lt!2437678))))

(declare-fun b!6729817 () Bool)

(declare-fun e!4065701 () Regex!16557)

(assert (=> b!6729817 (= e!4065701 (Concat!25402 (h!72294 (exprs!6441 (h!72296 zl!343))) (generalisedConcat!2154 (t!379657 (exprs!6441 (h!72296 zl!343))))))))

(declare-fun b!6729818 () Bool)

(declare-fun e!4065703 () Bool)

(declare-fun isConcat!1445 (Regex!16557) Bool)

(assert (=> b!6729818 (= e!4065703 (isConcat!1445 lt!2437678))))

(declare-fun d!2114528 () Bool)

(assert (=> d!2114528 e!4065705))

(declare-fun res!2753346 () Bool)

(assert (=> d!2114528 (=> (not res!2753346) (not e!4065705))))

(assert (=> d!2114528 (= res!2753346 (validRegex!8293 lt!2437678))))

(declare-fun e!4065706 () Regex!16557)

(assert (=> d!2114528 (= lt!2437678 e!4065706)))

(declare-fun c!1247886 () Bool)

(declare-fun e!4065704 () Bool)

(assert (=> d!2114528 (= c!1247886 e!4065704)))

(declare-fun res!2753347 () Bool)

(assert (=> d!2114528 (=> (not res!2753347) (not e!4065704))))

(assert (=> d!2114528 (= res!2753347 ((_ is Cons!65846) (exprs!6441 (h!72296 zl!343))))))

(declare-fun lambda!377682 () Int)

(declare-fun forall!15757 (List!65970 Int) Bool)

(assert (=> d!2114528 (forall!15757 (exprs!6441 (h!72296 zl!343)) lambda!377682)))

(assert (=> d!2114528 (= (generalisedConcat!2154 (exprs!6441 (h!72296 zl!343))) lt!2437678)))

(declare-fun b!6729819 () Bool)

(assert (=> b!6729819 (= e!4065701 EmptyExpr!16557)))

(declare-fun b!6729820 () Bool)

(assert (=> b!6729820 (= e!4065704 (isEmpty!38179 (t!379657 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6729821 () Bool)

(assert (=> b!6729821 (= e!4065706 e!4065701)))

(declare-fun c!1247884 () Bool)

(assert (=> b!6729821 (= c!1247884 ((_ is Cons!65846) (exprs!6441 (h!72296 zl!343))))))

(declare-fun b!6729822 () Bool)

(assert (=> b!6729822 (= e!4065706 (h!72294 (exprs!6441 (h!72296 zl!343))))))

(declare-fun b!6729823 () Bool)

(declare-fun head!13541 (List!65970) Regex!16557)

(assert (=> b!6729823 (= e!4065703 (= lt!2437678 (head!13541 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6729824 () Bool)

(assert (=> b!6729824 (= e!4065702 e!4065703)))

(declare-fun c!1247883 () Bool)

(declare-fun tail!12626 (List!65970) List!65970)

(assert (=> b!6729824 (= c!1247883 (isEmpty!38179 (tail!12626 (exprs!6441 (h!72296 zl!343)))))))

(assert (= (and d!2114528 res!2753347) b!6729820))

(assert (= (and d!2114528 c!1247886) b!6729822))

(assert (= (and d!2114528 (not c!1247886)) b!6729821))

(assert (= (and b!6729821 c!1247884) b!6729817))

(assert (= (and b!6729821 (not c!1247884)) b!6729819))

(assert (= (and d!2114528 res!2753346) b!6729815))

(assert (= (and b!6729815 c!1247885) b!6729816))

(assert (= (and b!6729815 (not c!1247885)) b!6729824))

(assert (= (and b!6729824 c!1247883) b!6729823))

(assert (= (and b!6729824 (not c!1247883)) b!6729818))

(declare-fun m!7488662 () Bool)

(assert (=> b!6729816 m!7488662))

(declare-fun m!7488664 () Bool)

(assert (=> b!6729824 m!7488664))

(assert (=> b!6729824 m!7488664))

(declare-fun m!7488666 () Bool)

(assert (=> b!6729824 m!7488666))

(declare-fun m!7488668 () Bool)

(assert (=> b!6729820 m!7488668))

(declare-fun m!7488670 () Bool)

(assert (=> b!6729818 m!7488670))

(declare-fun m!7488672 () Bool)

(assert (=> b!6729823 m!7488672))

(declare-fun m!7488674 () Bool)

(assert (=> d!2114528 m!7488674))

(declare-fun m!7488676 () Bool)

(assert (=> d!2114528 m!7488676))

(declare-fun m!7488678 () Bool)

(assert (=> b!6729817 m!7488678))

(declare-fun m!7488680 () Bool)

(assert (=> b!6729815 m!7488680))

(assert (=> b!6729491 d!2114528))

(declare-fun b!6729857 () Bool)

(declare-fun e!4065726 () (InoxSet Context!11882))

(declare-fun e!4065724 () (InoxSet Context!11882))

(assert (=> b!6729857 (= e!4065726 e!4065724)))

(declare-fun c!1247898 () Bool)

(assert (=> b!6729857 (= c!1247898 ((_ is Union!16557) r!7292))))

(declare-fun call!607797 () List!65970)

(declare-fun c!1247901 () Bool)

(declare-fun bm!607789 () Bool)

(declare-fun call!607796 () (InoxSet Context!11882))

(declare-fun c!1247897 () Bool)

(assert (=> bm!607789 (= call!607796 (derivationStepZipperDown!1785 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292)))) (ite (or c!1247898 c!1247897) (Context!11883 Nil!65846) (Context!11883 call!607797)) (h!72295 s!2326)))))

(declare-fun b!6729858 () Bool)

(declare-fun call!607794 () (InoxSet Context!11882))

(assert (=> b!6729858 (= e!4065724 ((_ map or) call!607794 call!607796))))

(declare-fun b!6729859 () Bool)

(declare-fun e!4065728 () (InoxSet Context!11882))

(declare-fun e!4065727 () (InoxSet Context!11882))

(assert (=> b!6729859 (= e!4065728 e!4065727)))

(assert (=> b!6729859 (= c!1247901 ((_ is Concat!25402) r!7292))))

(declare-fun bm!607790 () Bool)

(declare-fun call!607795 () List!65970)

(assert (=> bm!607790 (= call!607794 (derivationStepZipperDown!1785 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292)) (ite c!1247898 (Context!11883 Nil!65846) (Context!11883 call!607795)) (h!72295 s!2326)))))

(declare-fun b!6729860 () Bool)

(declare-fun e!4065725 () (InoxSet Context!11882))

(declare-fun call!607799 () (InoxSet Context!11882))

(assert (=> b!6729860 (= e!4065725 call!607799)))

(declare-fun bm!607791 () Bool)

(declare-fun $colon$colon!2374 (List!65970 Regex!16557) List!65970)

(assert (=> bm!607791 (= call!607795 ($colon$colon!2374 (exprs!6441 (Context!11883 Nil!65846)) (ite (or c!1247897 c!1247901) (regTwo!33626 r!7292) r!7292)))))

(declare-fun b!6729861 () Bool)

(declare-fun e!4065723 () Bool)

(assert (=> b!6729861 (= c!1247897 e!4065723)))

(declare-fun res!2753360 () Bool)

(assert (=> b!6729861 (=> (not res!2753360) (not e!4065723))))

(assert (=> b!6729861 (= res!2753360 ((_ is Concat!25402) r!7292))))

(assert (=> b!6729861 (= e!4065724 e!4065728)))

(declare-fun b!6729862 () Bool)

(assert (=> b!6729862 (= e!4065727 call!607799)))

(declare-fun d!2114532 () Bool)

(declare-fun c!1247899 () Bool)

(assert (=> d!2114532 (= c!1247899 (and ((_ is ElementMatch!16557) r!7292) (= (c!1247791 r!7292) (h!72295 s!2326))))))

(assert (=> d!2114532 (= (derivationStepZipperDown!1785 r!7292 (Context!11883 Nil!65846) (h!72295 s!2326)) e!4065726)))

(declare-fun bm!607792 () Bool)

(declare-fun call!607798 () (InoxSet Context!11882))

(assert (=> bm!607792 (= call!607799 call!607798)))

(declare-fun b!6729863 () Bool)

(assert (=> b!6729863 (= e!4065725 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6729864 () Bool)

(declare-fun c!1247900 () Bool)

(assert (=> b!6729864 (= c!1247900 ((_ is Star!16557) r!7292))))

(assert (=> b!6729864 (= e!4065727 e!4065725)))

(declare-fun bm!607793 () Bool)

(assert (=> bm!607793 (= call!607797 call!607795)))

(declare-fun b!6729865 () Bool)

(assert (=> b!6729865 (= e!4065728 ((_ map or) call!607794 call!607798))))

(declare-fun bm!607794 () Bool)

(assert (=> bm!607794 (= call!607798 call!607796)))

(declare-fun b!6729866 () Bool)

(assert (=> b!6729866 (= e!4065726 (store ((as const (Array Context!11882 Bool)) false) (Context!11883 Nil!65846) true))))

(declare-fun b!6729867 () Bool)

(assert (=> b!6729867 (= e!4065723 (nullable!6544 (regOne!33626 r!7292)))))

(assert (= (and d!2114532 c!1247899) b!6729866))

(assert (= (and d!2114532 (not c!1247899)) b!6729857))

(assert (= (and b!6729857 c!1247898) b!6729858))

(assert (= (and b!6729857 (not c!1247898)) b!6729861))

(assert (= (and b!6729861 res!2753360) b!6729867))

(assert (= (and b!6729861 c!1247897) b!6729865))

(assert (= (and b!6729861 (not c!1247897)) b!6729859))

(assert (= (and b!6729859 c!1247901) b!6729862))

(assert (= (and b!6729859 (not c!1247901)) b!6729864))

(assert (= (and b!6729864 c!1247900) b!6729860))

(assert (= (and b!6729864 (not c!1247900)) b!6729863))

(assert (= (or b!6729862 b!6729860) bm!607793))

(assert (= (or b!6729862 b!6729860) bm!607792))

(assert (= (or b!6729865 bm!607793) bm!607791))

(assert (= (or b!6729865 bm!607792) bm!607794))

(assert (= (or b!6729858 bm!607794) bm!607789))

(assert (= (or b!6729858 b!6729865) bm!607790))

(declare-fun m!7488688 () Bool)

(assert (=> bm!607789 m!7488688))

(declare-fun m!7488690 () Bool)

(assert (=> b!6729866 m!7488690))

(declare-fun m!7488692 () Bool)

(assert (=> bm!607791 m!7488692))

(declare-fun m!7488696 () Bool)

(assert (=> bm!607790 m!7488696))

(declare-fun m!7488698 () Bool)

(assert (=> b!6729867 m!7488698))

(assert (=> b!6729501 d!2114532))

(declare-fun b!6729868 () Bool)

(declare-fun e!4065730 () (InoxSet Context!11882))

(declare-fun e!4065729 () (InoxSet Context!11882))

(assert (=> b!6729868 (= e!4065730 e!4065729)))

(declare-fun c!1247902 () Bool)

(assert (=> b!6729868 (= c!1247902 ((_ is Cons!65846) (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))

(declare-fun b!6729869 () Bool)

(declare-fun call!607800 () (InoxSet Context!11882))

(assert (=> b!6729869 (= e!4065730 ((_ map or) call!607800 (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (h!72295 s!2326))))))

(declare-fun b!6729870 () Bool)

(assert (=> b!6729870 (= e!4065729 call!607800)))

(declare-fun d!2114540 () Bool)

(declare-fun c!1247903 () Bool)

(declare-fun e!4065731 () Bool)

(assert (=> d!2114540 (= c!1247903 e!4065731)))

(declare-fun res!2753361 () Bool)

(assert (=> d!2114540 (=> (not res!2753361) (not e!4065731))))

(assert (=> d!2114540 (= res!2753361 ((_ is Cons!65846) (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))

(assert (=> d!2114540 (= (derivationStepZipperUp!1711 (Context!11883 (Cons!65846 r!7292 Nil!65846)) (h!72295 s!2326)) e!4065730)))

(declare-fun bm!607795 () Bool)

(assert (=> bm!607795 (= call!607800 (derivationStepZipperDown!1785 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))) (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (h!72295 s!2326)))))

(declare-fun b!6729871 () Bool)

(assert (=> b!6729871 (= e!4065729 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6729872 () Bool)

(assert (=> b!6729872 (= e!4065731 (nullable!6544 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))

(assert (= (and d!2114540 res!2753361) b!6729872))

(assert (= (and d!2114540 c!1247903) b!6729869))

(assert (= (and d!2114540 (not c!1247903)) b!6729868))

(assert (= (and b!6729868 c!1247902) b!6729870))

(assert (= (and b!6729868 (not c!1247902)) b!6729871))

(assert (= (or b!6729869 b!6729870) bm!607795))

(declare-fun m!7488700 () Bool)

(assert (=> b!6729869 m!7488700))

(declare-fun m!7488702 () Bool)

(assert (=> bm!607795 m!7488702))

(declare-fun m!7488704 () Bool)

(assert (=> b!6729872 m!7488704))

(assert (=> b!6729501 d!2114540))

(declare-fun bs!1789809 () Bool)

(declare-fun d!2114542 () Bool)

(assert (= bs!1789809 (and d!2114542 b!6729480)))

(declare-fun lambda!377691 () Int)

(assert (=> bs!1789809 (= lambda!377691 lambda!377655)))

(assert (=> d!2114542 true))

(assert (=> d!2114542 (= (derivationStepZipper!2501 z!1189 (h!72295 s!2326)) (flatMap!2038 z!1189 lambda!377691))))

(declare-fun bs!1789810 () Bool)

(assert (= bs!1789810 d!2114542))

(declare-fun m!7488706 () Bool)

(assert (=> bs!1789810 m!7488706))

(assert (=> b!6729501 d!2114542))

(declare-fun bs!1789811 () Bool)

(declare-fun d!2114544 () Bool)

(assert (= bs!1789811 (and d!2114544 d!2114528)))

(declare-fun lambda!377694 () Int)

(assert (=> bs!1789811 (= lambda!377694 lambda!377682)))

(assert (=> d!2114544 (= (inv!84639 setElem!45899) (forall!15757 (exprs!6441 setElem!45899) lambda!377694))))

(declare-fun bs!1789812 () Bool)

(assert (= bs!1789812 d!2114544))

(declare-fun m!7488708 () Bool)

(assert (=> bs!1789812 m!7488708))

(assert (=> setNonEmpty!45899 d!2114544))

(declare-fun b!6729875 () Bool)

(declare-fun e!4065735 () (InoxSet Context!11882))

(declare-fun e!4065733 () (InoxSet Context!11882))

(assert (=> b!6729875 (= e!4065735 e!4065733)))

(declare-fun c!1247907 () Bool)

(assert (=> b!6729875 (= c!1247907 ((_ is Union!16557) (reg!16886 r!7292)))))

(declare-fun c!1247906 () Bool)

(declare-fun call!607803 () (InoxSet Context!11882))

(declare-fun c!1247910 () Bool)

(declare-fun bm!607796 () Bool)

(declare-fun call!607804 () List!65970)

(assert (=> bm!607796 (= call!607803 (derivationStepZipperDown!1785 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292))))) (ite (or c!1247907 c!1247906) (Context!11883 lt!2437634) (Context!11883 call!607804)) (h!72295 s!2326)))))

(declare-fun b!6729876 () Bool)

(declare-fun call!607801 () (InoxSet Context!11882))

(assert (=> b!6729876 (= e!4065733 ((_ map or) call!607801 call!607803))))

(declare-fun b!6729877 () Bool)

(declare-fun e!4065737 () (InoxSet Context!11882))

(declare-fun e!4065736 () (InoxSet Context!11882))

(assert (=> b!6729877 (= e!4065737 e!4065736)))

(assert (=> b!6729877 (= c!1247910 ((_ is Concat!25402) (reg!16886 r!7292)))))

(declare-fun bm!607797 () Bool)

(declare-fun call!607802 () List!65970)

(assert (=> bm!607797 (= call!607801 (derivationStepZipperDown!1785 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292))) (ite c!1247907 (Context!11883 lt!2437634) (Context!11883 call!607802)) (h!72295 s!2326)))))

(declare-fun b!6729878 () Bool)

(declare-fun e!4065734 () (InoxSet Context!11882))

(declare-fun call!607806 () (InoxSet Context!11882))

(assert (=> b!6729878 (= e!4065734 call!607806)))

(declare-fun bm!607798 () Bool)

(assert (=> bm!607798 (= call!607802 ($colon$colon!2374 (exprs!6441 (Context!11883 lt!2437634)) (ite (or c!1247906 c!1247910) (regTwo!33626 (reg!16886 r!7292)) (reg!16886 r!7292))))))

(declare-fun b!6729879 () Bool)

(declare-fun e!4065732 () Bool)

(assert (=> b!6729879 (= c!1247906 e!4065732)))

(declare-fun res!2753362 () Bool)

(assert (=> b!6729879 (=> (not res!2753362) (not e!4065732))))

(assert (=> b!6729879 (= res!2753362 ((_ is Concat!25402) (reg!16886 r!7292)))))

(assert (=> b!6729879 (= e!4065733 e!4065737)))

(declare-fun b!6729880 () Bool)

(assert (=> b!6729880 (= e!4065736 call!607806)))

(declare-fun d!2114546 () Bool)

(declare-fun c!1247908 () Bool)

(assert (=> d!2114546 (= c!1247908 (and ((_ is ElementMatch!16557) (reg!16886 r!7292)) (= (c!1247791 (reg!16886 r!7292)) (h!72295 s!2326))))))

(assert (=> d!2114546 (= (derivationStepZipperDown!1785 (reg!16886 r!7292) (Context!11883 lt!2437634) (h!72295 s!2326)) e!4065735)))

(declare-fun bm!607799 () Bool)

(declare-fun call!607805 () (InoxSet Context!11882))

(assert (=> bm!607799 (= call!607806 call!607805)))

(declare-fun b!6729881 () Bool)

(assert (=> b!6729881 (= e!4065734 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6729882 () Bool)

(declare-fun c!1247909 () Bool)

(assert (=> b!6729882 (= c!1247909 ((_ is Star!16557) (reg!16886 r!7292)))))

(assert (=> b!6729882 (= e!4065736 e!4065734)))

(declare-fun bm!607800 () Bool)

(assert (=> bm!607800 (= call!607804 call!607802)))

(declare-fun b!6729883 () Bool)

(assert (=> b!6729883 (= e!4065737 ((_ map or) call!607801 call!607805))))

(declare-fun bm!607801 () Bool)

(assert (=> bm!607801 (= call!607805 call!607803)))

(declare-fun b!6729884 () Bool)

(assert (=> b!6729884 (= e!4065735 (store ((as const (Array Context!11882 Bool)) false) (Context!11883 lt!2437634) true))))

(declare-fun b!6729885 () Bool)

(assert (=> b!6729885 (= e!4065732 (nullable!6544 (regOne!33626 (reg!16886 r!7292))))))

(assert (= (and d!2114546 c!1247908) b!6729884))

(assert (= (and d!2114546 (not c!1247908)) b!6729875))

(assert (= (and b!6729875 c!1247907) b!6729876))

(assert (= (and b!6729875 (not c!1247907)) b!6729879))

(assert (= (and b!6729879 res!2753362) b!6729885))

(assert (= (and b!6729879 c!1247906) b!6729883))

(assert (= (and b!6729879 (not c!1247906)) b!6729877))

(assert (= (and b!6729877 c!1247910) b!6729880))

(assert (= (and b!6729877 (not c!1247910)) b!6729882))

(assert (= (and b!6729882 c!1247909) b!6729878))

(assert (= (and b!6729882 (not c!1247909)) b!6729881))

(assert (= (or b!6729880 b!6729878) bm!607800))

(assert (= (or b!6729880 b!6729878) bm!607799))

(assert (= (or b!6729883 bm!607800) bm!607798))

(assert (= (or b!6729883 bm!607799) bm!607801))

(assert (= (or b!6729876 bm!607801) bm!607796))

(assert (= (or b!6729876 b!6729883) bm!607797))

(declare-fun m!7488710 () Bool)

(assert (=> bm!607796 m!7488710))

(declare-fun m!7488712 () Bool)

(assert (=> b!6729884 m!7488712))

(declare-fun m!7488714 () Bool)

(assert (=> bm!607798 m!7488714))

(declare-fun m!7488716 () Bool)

(assert (=> bm!607797 m!7488716))

(declare-fun m!7488718 () Bool)

(assert (=> b!6729885 m!7488718))

(assert (=> b!6729484 d!2114546))

(declare-fun d!2114548 () Bool)

(assert (=> d!2114548 (= (flatMap!2038 lt!2437631 lambda!377655) (choose!50149 lt!2437631 lambda!377655))))

(declare-fun bs!1789813 () Bool)

(assert (= bs!1789813 d!2114548))

(declare-fun m!7488720 () Bool)

(assert (=> bs!1789813 m!7488720))

(assert (=> b!6729484 d!2114548))

(declare-fun b!6729886 () Bool)

(declare-fun e!4065739 () (InoxSet Context!11882))

(declare-fun e!4065738 () (InoxSet Context!11882))

(assert (=> b!6729886 (= e!4065739 e!4065738)))

(declare-fun c!1247911 () Bool)

(assert (=> b!6729886 (= c!1247911 ((_ is Cons!65846) (exprs!6441 lt!2437639)))))

(declare-fun call!607807 () (InoxSet Context!11882))

(declare-fun b!6729887 () Bool)

(assert (=> b!6729887 (= e!4065739 ((_ map or) call!607807 (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 lt!2437639))) (h!72295 s!2326))))))

(declare-fun b!6729888 () Bool)

(assert (=> b!6729888 (= e!4065738 call!607807)))

(declare-fun d!2114550 () Bool)

(declare-fun c!1247912 () Bool)

(declare-fun e!4065740 () Bool)

(assert (=> d!2114550 (= c!1247912 e!4065740)))

(declare-fun res!2753363 () Bool)

(assert (=> d!2114550 (=> (not res!2753363) (not e!4065740))))

(assert (=> d!2114550 (= res!2753363 ((_ is Cons!65846) (exprs!6441 lt!2437639)))))

(assert (=> d!2114550 (= (derivationStepZipperUp!1711 lt!2437639 (h!72295 s!2326)) e!4065739)))

(declare-fun bm!607802 () Bool)

(assert (=> bm!607802 (= call!607807 (derivationStepZipperDown!1785 (h!72294 (exprs!6441 lt!2437639)) (Context!11883 (t!379657 (exprs!6441 lt!2437639))) (h!72295 s!2326)))))

(declare-fun b!6729889 () Bool)

(assert (=> b!6729889 (= e!4065738 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6729890 () Bool)

(assert (=> b!6729890 (= e!4065740 (nullable!6544 (h!72294 (exprs!6441 lt!2437639))))))

(assert (= (and d!2114550 res!2753363) b!6729890))

(assert (= (and d!2114550 c!1247912) b!6729887))

(assert (= (and d!2114550 (not c!1247912)) b!6729886))

(assert (= (and b!6729886 c!1247911) b!6729888))

(assert (= (and b!6729886 (not c!1247911)) b!6729889))

(assert (= (or b!6729887 b!6729888) bm!607802))

(declare-fun m!7488722 () Bool)

(assert (=> b!6729887 m!7488722))

(declare-fun m!7488724 () Bool)

(assert (=> bm!607802 m!7488724))

(declare-fun m!7488726 () Bool)

(assert (=> b!6729890 m!7488726))

(assert (=> b!6729484 d!2114550))

(declare-fun d!2114552 () Bool)

(assert (=> d!2114552 (= (flatMap!2038 lt!2437631 lambda!377655) (dynLambda!26264 lambda!377655 lt!2437639))))

(declare-fun lt!2437682 () Unit!159805)

(assert (=> d!2114552 (= lt!2437682 (choose!50150 lt!2437631 lt!2437639 lambda!377655))))

(assert (=> d!2114552 (= lt!2437631 (store ((as const (Array Context!11882 Bool)) false) lt!2437639 true))))

(assert (=> d!2114552 (= (lemmaFlatMapOnSingletonSet!1564 lt!2437631 lt!2437639 lambda!377655) lt!2437682)))

(declare-fun b_lambda!253377 () Bool)

(assert (=> (not b_lambda!253377) (not d!2114552)))

(declare-fun bs!1789814 () Bool)

(assert (= bs!1789814 d!2114552))

(assert (=> bs!1789814 m!7488452))

(declare-fun m!7488728 () Bool)

(assert (=> bs!1789814 m!7488728))

(declare-fun m!7488730 () Bool)

(assert (=> bs!1789814 m!7488730))

(assert (=> bs!1789814 m!7488454))

(assert (=> b!6729484 d!2114552))

(declare-fun d!2114554 () Bool)

(declare-fun lt!2437683 () Regex!16557)

(assert (=> d!2114554 (validRegex!8293 lt!2437683)))

(assert (=> d!2114554 (= lt!2437683 (generalisedUnion!2401 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))))))

(assert (=> d!2114554 (= (unfocusZipper!2299 (Cons!65848 lt!2437639 Nil!65848)) lt!2437683)))

(declare-fun bs!1789815 () Bool)

(assert (= bs!1789815 d!2114554))

(declare-fun m!7488732 () Bool)

(assert (=> bs!1789815 m!7488732))

(declare-fun m!7488734 () Bool)

(assert (=> bs!1789815 m!7488734))

(assert (=> bs!1789815 m!7488734))

(declare-fun m!7488736 () Bool)

(assert (=> bs!1789815 m!7488736))

(assert (=> b!6729493 d!2114554))

(declare-fun d!2114556 () Bool)

(declare-fun c!1247919 () Bool)

(assert (=> d!2114556 (= c!1247919 (isEmpty!38177 s!2326))))

(declare-fun e!4065753 () Bool)

(assert (=> d!2114556 (= (matchZipper!2543 lt!2437631 s!2326) e!4065753)))

(declare-fun b!6729909 () Bool)

(declare-fun nullableZipper!2272 ((InoxSet Context!11882)) Bool)

(assert (=> b!6729909 (= e!4065753 (nullableZipper!2272 lt!2437631))))

(declare-fun b!6729910 () Bool)

(assert (=> b!6729910 (= e!4065753 (matchZipper!2543 (derivationStepZipper!2501 lt!2437631 (head!13540 s!2326)) (tail!12625 s!2326)))))

(assert (= (and d!2114556 c!1247919) b!6729909))

(assert (= (and d!2114556 (not c!1247919)) b!6729910))

(assert (=> d!2114556 m!7488470))

(declare-fun m!7488738 () Bool)

(assert (=> b!6729909 m!7488738))

(assert (=> b!6729910 m!7488596))

(assert (=> b!6729910 m!7488596))

(declare-fun m!7488740 () Bool)

(assert (=> b!6729910 m!7488740))

(assert (=> b!6729910 m!7488600))

(assert (=> b!6729910 m!7488740))

(assert (=> b!6729910 m!7488600))

(declare-fun m!7488742 () Bool)

(assert (=> b!6729910 m!7488742))

(assert (=> b!6729483 d!2114556))

(declare-fun d!2114558 () Bool)

(declare-fun c!1247920 () Bool)

(assert (=> d!2114558 (= c!1247920 (isEmpty!38177 (t!379658 s!2326)))))

(declare-fun e!4065754 () Bool)

(assert (=> d!2114558 (= (matchZipper!2543 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (t!379658 s!2326)) e!4065754)))

(declare-fun b!6729915 () Bool)

(assert (=> b!6729915 (= e!4065754 (nullableZipper!2272 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326))))))

(declare-fun b!6729916 () Bool)

(assert (=> b!6729916 (= e!4065754 (matchZipper!2543 (derivationStepZipper!2501 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (head!13540 (t!379658 s!2326))) (tail!12625 (t!379658 s!2326))))))

(assert (= (and d!2114558 c!1247920) b!6729915))

(assert (= (and d!2114558 (not c!1247920)) b!6729916))

(declare-fun m!7488744 () Bool)

(assert (=> d!2114558 m!7488744))

(assert (=> b!6729915 m!7488512))

(declare-fun m!7488746 () Bool)

(assert (=> b!6729915 m!7488746))

(declare-fun m!7488748 () Bool)

(assert (=> b!6729916 m!7488748))

(assert (=> b!6729916 m!7488512))

(assert (=> b!6729916 m!7488748))

(declare-fun m!7488750 () Bool)

(assert (=> b!6729916 m!7488750))

(declare-fun m!7488752 () Bool)

(assert (=> b!6729916 m!7488752))

(assert (=> b!6729916 m!7488750))

(assert (=> b!6729916 m!7488752))

(declare-fun m!7488754 () Bool)

(assert (=> b!6729916 m!7488754))

(assert (=> b!6729483 d!2114558))

(declare-fun bs!1789816 () Bool)

(declare-fun d!2114560 () Bool)

(assert (= bs!1789816 (and d!2114560 b!6729480)))

(declare-fun lambda!377695 () Int)

(assert (=> bs!1789816 (= lambda!377695 lambda!377655)))

(declare-fun bs!1789817 () Bool)

(assert (= bs!1789817 (and d!2114560 d!2114542)))

(assert (=> bs!1789817 (= lambda!377695 lambda!377691)))

(assert (=> d!2114560 true))

(assert (=> d!2114560 (= (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (flatMap!2038 lt!2437631 lambda!377695))))

(declare-fun bs!1789818 () Bool)

(assert (= bs!1789818 d!2114560))

(declare-fun m!7488756 () Bool)

(assert (=> bs!1789818 m!7488756))

(assert (=> b!6729483 d!2114560))

(declare-fun bs!1789819 () Bool)

(declare-fun d!2114562 () Bool)

(assert (= bs!1789819 (and d!2114562 d!2114528)))

(declare-fun lambda!377696 () Int)

(assert (=> bs!1789819 (= lambda!377696 lambda!377682)))

(declare-fun bs!1789820 () Bool)

(assert (= bs!1789820 (and d!2114562 d!2114544)))

(assert (=> bs!1789820 (= lambda!377696 lambda!377694)))

(assert (=> d!2114562 (= (inv!84639 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846))) (forall!15757 (exprs!6441 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846))) lambda!377696))))

(declare-fun bs!1789821 () Bool)

(assert (= bs!1789821 d!2114562))

(declare-fun m!7488758 () Bool)

(assert (=> bs!1789821 m!7488758))

(assert (=> b!6729494 d!2114562))

(declare-fun d!2114564 () Bool)

(declare-fun e!4065762 () Bool)

(assert (=> d!2114564 e!4065762))

(declare-fun res!2753381 () Bool)

(assert (=> d!2114564 (=> (not res!2753381) (not e!4065762))))

(declare-fun lt!2437695 () List!65972)

(declare-fun noDuplicate!2350 (List!65972) Bool)

(assert (=> d!2114564 (= res!2753381 (noDuplicate!2350 lt!2437695))))

(declare-fun choose!50156 ((InoxSet Context!11882)) List!65972)

(assert (=> d!2114564 (= lt!2437695 (choose!50156 z!1189))))

(assert (=> d!2114564 (= (toList!10341 z!1189) lt!2437695)))

(declare-fun b!6729928 () Bool)

(declare-fun content!12783 (List!65972) (InoxSet Context!11882))

(assert (=> b!6729928 (= e!4065762 (= (content!12783 lt!2437695) z!1189))))

(assert (= (and d!2114564 res!2753381) b!6729928))

(declare-fun m!7488760 () Bool)

(assert (=> d!2114564 m!7488760))

(declare-fun m!7488762 () Bool)

(assert (=> d!2114564 m!7488762))

(declare-fun m!7488764 () Bool)

(assert (=> b!6729928 m!7488764))

(assert (=> b!6729487 d!2114564))

(declare-fun d!2114566 () Bool)

(assert (=> d!2114566 (= (isEmpty!38178 (t!379659 zl!343)) ((_ is Nil!65848) (t!379659 zl!343)))))

(assert (=> b!6729498 d!2114566))

(declare-fun bs!1789822 () Bool)

(declare-fun d!2114568 () Bool)

(assert (= bs!1789822 (and d!2114568 d!2114528)))

(declare-fun lambda!377701 () Int)

(assert (=> bs!1789822 (= lambda!377701 lambda!377682)))

(declare-fun bs!1789823 () Bool)

(assert (= bs!1789823 (and d!2114568 d!2114544)))

(assert (=> bs!1789823 (= lambda!377701 lambda!377694)))

(declare-fun bs!1789824 () Bool)

(assert (= bs!1789824 (and d!2114568 d!2114562)))

(assert (=> bs!1789824 (= lambda!377701 lambda!377696)))

(declare-fun b!6729953 () Bool)

(declare-fun e!4065779 () Bool)

(assert (=> b!6729953 (= e!4065779 (isEmpty!38179 (t!379657 (unfocusZipperList!1978 zl!343))))))

(declare-fun e!4065782 () Bool)

(assert (=> d!2114568 e!4065782))

(declare-fun res!2753390 () Bool)

(assert (=> d!2114568 (=> (not res!2753390) (not e!4065782))))

(declare-fun lt!2437700 () Regex!16557)

(assert (=> d!2114568 (= res!2753390 (validRegex!8293 lt!2437700))))

(declare-fun e!4065780 () Regex!16557)

(assert (=> d!2114568 (= lt!2437700 e!4065780)))

(declare-fun c!1247932 () Bool)

(assert (=> d!2114568 (= c!1247932 e!4065779)))

(declare-fun res!2753391 () Bool)

(assert (=> d!2114568 (=> (not res!2753391) (not e!4065779))))

(assert (=> d!2114568 (= res!2753391 ((_ is Cons!65846) (unfocusZipperList!1978 zl!343)))))

(assert (=> d!2114568 (forall!15757 (unfocusZipperList!1978 zl!343) lambda!377701)))

(assert (=> d!2114568 (= (generalisedUnion!2401 (unfocusZipperList!1978 zl!343)) lt!2437700)))

(declare-fun b!6729954 () Bool)

(declare-fun e!4065778 () Bool)

(declare-fun e!4065781 () Bool)

(assert (=> b!6729954 (= e!4065778 e!4065781)))

(declare-fun c!1247934 () Bool)

(assert (=> b!6729954 (= c!1247934 (isEmpty!38179 (tail!12626 (unfocusZipperList!1978 zl!343))))))

(declare-fun b!6729955 () Bool)

(assert (=> b!6729955 (= e!4065781 (= lt!2437700 (head!13541 (unfocusZipperList!1978 zl!343))))))

(declare-fun b!6729956 () Bool)

(assert (=> b!6729956 (= e!4065780 (h!72294 (unfocusZipperList!1978 zl!343)))))

(declare-fun b!6729957 () Bool)

(declare-fun isUnion!1360 (Regex!16557) Bool)

(assert (=> b!6729957 (= e!4065781 (isUnion!1360 lt!2437700))))

(declare-fun b!6729958 () Bool)

(assert (=> b!6729958 (= e!4065782 e!4065778)))

(declare-fun c!1247931 () Bool)

(assert (=> b!6729958 (= c!1247931 (isEmpty!38179 (unfocusZipperList!1978 zl!343)))))

(declare-fun b!6729959 () Bool)

(declare-fun e!4065777 () Regex!16557)

(assert (=> b!6729959 (= e!4065780 e!4065777)))

(declare-fun c!1247933 () Bool)

(assert (=> b!6729959 (= c!1247933 ((_ is Cons!65846) (unfocusZipperList!1978 zl!343)))))

(declare-fun b!6729960 () Bool)

(assert (=> b!6729960 (= e!4065777 (Union!16557 (h!72294 (unfocusZipperList!1978 zl!343)) (generalisedUnion!2401 (t!379657 (unfocusZipperList!1978 zl!343)))))))

(declare-fun b!6729961 () Bool)

(assert (=> b!6729961 (= e!4065777 EmptyLang!16557)))

(declare-fun b!6729962 () Bool)

(declare-fun isEmptyLang!1930 (Regex!16557) Bool)

(assert (=> b!6729962 (= e!4065778 (isEmptyLang!1930 lt!2437700))))

(assert (= (and d!2114568 res!2753391) b!6729953))

(assert (= (and d!2114568 c!1247932) b!6729956))

(assert (= (and d!2114568 (not c!1247932)) b!6729959))

(assert (= (and b!6729959 c!1247933) b!6729960))

(assert (= (and b!6729959 (not c!1247933)) b!6729961))

(assert (= (and d!2114568 res!2753390) b!6729958))

(assert (= (and b!6729958 c!1247931) b!6729962))

(assert (= (and b!6729958 (not c!1247931)) b!6729954))

(assert (= (and b!6729954 c!1247934) b!6729955))

(assert (= (and b!6729954 (not c!1247934)) b!6729957))

(declare-fun m!7488786 () Bool)

(assert (=> b!6729960 m!7488786))

(declare-fun m!7488788 () Bool)

(assert (=> b!6729957 m!7488788))

(declare-fun m!7488790 () Bool)

(assert (=> d!2114568 m!7488790))

(assert (=> d!2114568 m!7488506))

(declare-fun m!7488792 () Bool)

(assert (=> d!2114568 m!7488792))

(declare-fun m!7488794 () Bool)

(assert (=> b!6729953 m!7488794))

(assert (=> b!6729955 m!7488506))

(declare-fun m!7488796 () Bool)

(assert (=> b!6729955 m!7488796))

(declare-fun m!7488798 () Bool)

(assert (=> b!6729962 m!7488798))

(assert (=> b!6729954 m!7488506))

(declare-fun m!7488800 () Bool)

(assert (=> b!6729954 m!7488800))

(assert (=> b!6729954 m!7488800))

(declare-fun m!7488802 () Bool)

(assert (=> b!6729954 m!7488802))

(assert (=> b!6729958 m!7488506))

(declare-fun m!7488804 () Bool)

(assert (=> b!6729958 m!7488804))

(assert (=> b!6729496 d!2114568))

(declare-fun bs!1789831 () Bool)

(declare-fun d!2114572 () Bool)

(assert (= bs!1789831 (and d!2114572 d!2114528)))

(declare-fun lambda!377705 () Int)

(assert (=> bs!1789831 (= lambda!377705 lambda!377682)))

(declare-fun bs!1789832 () Bool)

(assert (= bs!1789832 (and d!2114572 d!2114544)))

(assert (=> bs!1789832 (= lambda!377705 lambda!377694)))

(declare-fun bs!1789833 () Bool)

(assert (= bs!1789833 (and d!2114572 d!2114562)))

(assert (=> bs!1789833 (= lambda!377705 lambda!377696)))

(declare-fun bs!1789834 () Bool)

(assert (= bs!1789834 (and d!2114572 d!2114568)))

(assert (=> bs!1789834 (= lambda!377705 lambda!377701)))

(declare-fun lt!2437704 () List!65970)

(assert (=> d!2114572 (forall!15757 lt!2437704 lambda!377705)))

(declare-fun e!4065785 () List!65970)

(assert (=> d!2114572 (= lt!2437704 e!4065785)))

(declare-fun c!1247937 () Bool)

(assert (=> d!2114572 (= c!1247937 ((_ is Cons!65848) zl!343))))

(assert (=> d!2114572 (= (unfocusZipperList!1978 zl!343) lt!2437704)))

(declare-fun b!6729967 () Bool)

(assert (=> b!6729967 (= e!4065785 (Cons!65846 (generalisedConcat!2154 (exprs!6441 (h!72296 zl!343))) (unfocusZipperList!1978 (t!379659 zl!343))))))

(declare-fun b!6729968 () Bool)

(assert (=> b!6729968 (= e!4065785 Nil!65846)))

(assert (= (and d!2114572 c!1247937) b!6729967))

(assert (= (and d!2114572 (not c!1247937)) b!6729968))

(declare-fun m!7488810 () Bool)

(assert (=> d!2114572 m!7488810))

(assert (=> b!6729967 m!7488464))

(declare-fun m!7488812 () Bool)

(assert (=> b!6729967 m!7488812))

(assert (=> b!6729496 d!2114572))

(declare-fun d!2114578 () Bool)

(declare-fun choose!50157 (Int) Bool)

(assert (=> d!2114578 (= (Exists!3625 lambda!377652) (choose!50157 lambda!377652))))

(declare-fun bs!1789835 () Bool)

(assert (= bs!1789835 d!2114578))

(declare-fun m!7488814 () Bool)

(assert (=> bs!1789835 m!7488814))

(assert (=> b!6729490 d!2114578))

(declare-fun bs!1789840 () Bool)

(declare-fun d!2114580 () Bool)

(assert (= bs!1789840 (and d!2114580 b!6729674)))

(declare-fun lambda!377714 () Int)

(assert (=> bs!1789840 (not (= lambda!377714 lambda!377669))))

(declare-fun bs!1789841 () Bool)

(assert (= bs!1789841 (and d!2114580 b!6729675)))

(assert (=> bs!1789841 (not (= lambda!377714 lambda!377670))))

(declare-fun bs!1789842 () Bool)

(assert (= bs!1789842 (and d!2114580 b!6729490)))

(assert (=> bs!1789842 (not (= lambda!377714 lambda!377654))))

(assert (=> bs!1789842 (= lambda!377714 lambda!377652)))

(assert (=> bs!1789842 (not (= lambda!377714 lambda!377653))))

(assert (=> d!2114580 true))

(assert (=> d!2114580 true))

(assert (=> d!2114580 true))

(declare-fun lambda!377715 () Int)

(assert (=> bs!1789840 (not (= lambda!377715 lambda!377669))))

(assert (=> bs!1789841 (= (and (= (reg!16886 r!7292) (regOne!33626 r!7292)) (= r!7292 (regTwo!33626 r!7292))) (= lambda!377715 lambda!377670))))

(assert (=> bs!1789842 (= lambda!377715 lambda!377654)))

(assert (=> bs!1789842 (not (= lambda!377715 lambda!377653))))

(declare-fun bs!1789843 () Bool)

(assert (= bs!1789843 d!2114580))

(assert (=> bs!1789843 (not (= lambda!377715 lambda!377714))))

(assert (=> bs!1789842 (not (= lambda!377715 lambda!377652))))

(assert (=> d!2114580 true))

(assert (=> d!2114580 true))

(assert (=> d!2114580 true))

(assert (=> d!2114580 (= (Exists!3625 lambda!377714) (Exists!3625 lambda!377715))))

(declare-fun lt!2437713 () Unit!159805)

(declare-fun choose!50158 (Regex!16557 Regex!16557 List!65971) Unit!159805)

(assert (=> d!2114580 (= lt!2437713 (choose!50158 (reg!16886 r!7292) r!7292 s!2326))))

(assert (=> d!2114580 (validRegex!8293 (reg!16886 r!7292))))

(assert (=> d!2114580 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2152 (reg!16886 r!7292) r!7292 s!2326) lt!2437713)))

(declare-fun m!7488860 () Bool)

(assert (=> bs!1789843 m!7488860))

(declare-fun m!7488862 () Bool)

(assert (=> bs!1789843 m!7488862))

(declare-fun m!7488864 () Bool)

(assert (=> bs!1789843 m!7488864))

(declare-fun m!7488866 () Bool)

(assert (=> bs!1789843 m!7488866))

(assert (=> b!6729490 d!2114580))

(declare-fun bs!1789851 () Bool)

(declare-fun d!2114592 () Bool)

(assert (= bs!1789851 (and d!2114592 b!6729674)))

(declare-fun lambda!377722 () Int)

(assert (=> bs!1789851 (not (= lambda!377722 lambda!377669))))

(declare-fun bs!1789852 () Bool)

(assert (= bs!1789852 (and d!2114592 d!2114580)))

(assert (=> bs!1789852 (not (= lambda!377722 lambda!377715))))

(declare-fun bs!1789853 () Bool)

(assert (= bs!1789853 (and d!2114592 b!6729675)))

(assert (=> bs!1789853 (not (= lambda!377722 lambda!377670))))

(declare-fun bs!1789854 () Bool)

(assert (= bs!1789854 (and d!2114592 b!6729490)))

(assert (=> bs!1789854 (not (= lambda!377722 lambda!377654))))

(assert (=> bs!1789854 (not (= lambda!377722 lambda!377653))))

(assert (=> bs!1789852 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377722 lambda!377714))))

(assert (=> bs!1789854 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377722 lambda!377652))))

(assert (=> d!2114592 true))

(assert (=> d!2114592 true))

(declare-fun lambda!377725 () Int)

(assert (=> bs!1789851 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377725 lambda!377669))))

(assert (=> bs!1789852 (not (= lambda!377725 lambda!377715))))

(declare-fun bs!1789855 () Bool)

(assert (= bs!1789855 d!2114592))

(assert (=> bs!1789855 (not (= lambda!377725 lambda!377722))))

(assert (=> bs!1789853 (not (= lambda!377725 lambda!377670))))

(assert (=> bs!1789854 (not (= lambda!377725 lambda!377654))))

(assert (=> bs!1789854 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377725 lambda!377653))))

(assert (=> bs!1789852 (not (= lambda!377725 lambda!377714))))

(assert (=> bs!1789854 (not (= lambda!377725 lambda!377652))))

(assert (=> d!2114592 true))

(assert (=> d!2114592 true))

(assert (=> d!2114592 (= (Exists!3625 lambda!377722) (Exists!3625 lambda!377725))))

(declare-fun lt!2437716 () Unit!159805)

(declare-fun choose!50159 (Regex!16557 List!65971) Unit!159805)

(assert (=> d!2114592 (= lt!2437716 (choose!50159 (reg!16886 r!7292) s!2326))))

(assert (=> d!2114592 (validRegex!8293 (reg!16886 r!7292))))

(assert (=> d!2114592 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!716 (reg!16886 r!7292) s!2326) lt!2437716)))

(declare-fun m!7488878 () Bool)

(assert (=> bs!1789855 m!7488878))

(declare-fun m!7488880 () Bool)

(assert (=> bs!1789855 m!7488880))

(declare-fun m!7488882 () Bool)

(assert (=> bs!1789855 m!7488882))

(assert (=> bs!1789855 m!7488866))

(assert (=> b!6729490 d!2114592))

(declare-fun d!2114600 () Bool)

(assert (=> d!2114600 (= (Exists!3625 lambda!377654) (choose!50157 lambda!377654))))

(declare-fun bs!1789856 () Bool)

(assert (= bs!1789856 d!2114600))

(declare-fun m!7488884 () Bool)

(assert (=> bs!1789856 m!7488884))

(assert (=> b!6729490 d!2114600))

(declare-fun d!2114602 () Bool)

(assert (=> d!2114602 (= (isEmpty!38177 s!2326) ((_ is Nil!65847) s!2326))))

(assert (=> b!6729490 d!2114602))

(declare-fun d!2114604 () Bool)

(assert (=> d!2114604 (= (Exists!3625 lambda!377653) (choose!50157 lambda!377653))))

(declare-fun bs!1789857 () Bool)

(assert (= bs!1789857 d!2114604))

(declare-fun m!7488886 () Bool)

(assert (=> bs!1789857 m!7488886))

(assert (=> b!6729490 d!2114604))

(declare-fun d!2114606 () Bool)

(declare-fun isEmpty!38182 (Option!16444) Bool)

(assert (=> d!2114606 (= (isDefined!13147 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326)) (not (isEmpty!38182 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326))))))

(declare-fun bs!1789858 () Bool)

(assert (= bs!1789858 d!2114606))

(assert (=> bs!1789858 m!7488478))

(declare-fun m!7488888 () Bool)

(assert (=> bs!1789858 m!7488888))

(assert (=> b!6729490 d!2114606))

(declare-fun b!6730171 () Bool)

(declare-fun lt!2437730 () Unit!159805)

(declare-fun lt!2437729 () Unit!159805)

(assert (=> b!6730171 (= lt!2437730 lt!2437729)))

(declare-fun ++!14713 (List!65971 List!65971) List!65971)

(assert (=> b!6730171 (= (++!14713 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (t!379658 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2686 (List!65971 C!33384 List!65971 List!65971) Unit!159805)

(assert (=> b!6730171 (= lt!2437729 (lemmaMoveElementToOtherListKeepsConcatEq!2686 Nil!65847 (h!72295 s!2326) (t!379658 s!2326) s!2326))))

(declare-fun e!4065901 () Option!16444)

(assert (=> b!6730171 (= e!4065901 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (t!379658 s!2326) s!2326))))

(declare-fun b!6730172 () Bool)

(declare-fun res!2753454 () Bool)

(declare-fun e!4065899 () Bool)

(assert (=> b!6730172 (=> (not res!2753454) (not e!4065899))))

(declare-fun lt!2437731 () Option!16444)

(declare-fun get!22907 (Option!16444) tuple2!67064)

(assert (=> b!6730172 (= res!2753454 (matchR!8740 r!7292 (_2!36835 (get!22907 lt!2437731))))))

(declare-fun b!6730173 () Bool)

(declare-fun e!4065902 () Bool)

(assert (=> b!6730173 (= e!4065902 (matchR!8740 r!7292 s!2326))))

(declare-fun b!6730174 () Bool)

(assert (=> b!6730174 (= e!4065899 (= (++!14713 (_1!36835 (get!22907 lt!2437731)) (_2!36835 (get!22907 lt!2437731))) s!2326))))

(declare-fun d!2114608 () Bool)

(declare-fun e!4065903 () Bool)

(assert (=> d!2114608 e!4065903))

(declare-fun res!2753456 () Bool)

(assert (=> d!2114608 (=> res!2753456 e!4065903)))

(assert (=> d!2114608 (= res!2753456 e!4065899)))

(declare-fun res!2753452 () Bool)

(assert (=> d!2114608 (=> (not res!2753452) (not e!4065899))))

(assert (=> d!2114608 (= res!2753452 (isDefined!13147 lt!2437731))))

(declare-fun e!4065900 () Option!16444)

(assert (=> d!2114608 (= lt!2437731 e!4065900)))

(declare-fun c!1247982 () Bool)

(assert (=> d!2114608 (= c!1247982 e!4065902)))

(declare-fun res!2753453 () Bool)

(assert (=> d!2114608 (=> (not res!2753453) (not e!4065902))))

(assert (=> d!2114608 (= res!2753453 (matchR!8740 (reg!16886 r!7292) Nil!65847))))

(assert (=> d!2114608 (validRegex!8293 (reg!16886 r!7292))))

(assert (=> d!2114608 (= (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326) lt!2437731)))

(declare-fun b!6730175 () Bool)

(assert (=> b!6730175 (= e!4065903 (not (isDefined!13147 lt!2437731)))))

(declare-fun b!6730176 () Bool)

(declare-fun res!2753455 () Bool)

(assert (=> b!6730176 (=> (not res!2753455) (not e!4065899))))

(assert (=> b!6730176 (= res!2753455 (matchR!8740 (reg!16886 r!7292) (_1!36835 (get!22907 lt!2437731))))))

(declare-fun b!6730177 () Bool)

(assert (=> b!6730177 (= e!4065900 (Some!16443 (tuple2!67065 Nil!65847 s!2326)))))

(declare-fun b!6730178 () Bool)

(assert (=> b!6730178 (= e!4065901 None!16443)))

(declare-fun b!6730179 () Bool)

(assert (=> b!6730179 (= e!4065900 e!4065901)))

(declare-fun c!1247983 () Bool)

(assert (=> b!6730179 (= c!1247983 ((_ is Nil!65847) s!2326))))

(assert (= (and d!2114608 res!2753453) b!6730173))

(assert (= (and d!2114608 c!1247982) b!6730177))

(assert (= (and d!2114608 (not c!1247982)) b!6730179))

(assert (= (and b!6730179 c!1247983) b!6730178))

(assert (= (and b!6730179 (not c!1247983)) b!6730171))

(assert (= (and d!2114608 res!2753452) b!6730176))

(assert (= (and b!6730176 res!2753455) b!6730172))

(assert (= (and b!6730172 res!2753454) b!6730174))

(assert (= (and d!2114608 (not res!2753456)) b!6730175))

(assert (=> b!6730173 m!7488490))

(declare-fun m!7488918 () Bool)

(assert (=> b!6730172 m!7488918))

(declare-fun m!7488920 () Bool)

(assert (=> b!6730172 m!7488920))

(declare-fun m!7488922 () Bool)

(assert (=> b!6730171 m!7488922))

(assert (=> b!6730171 m!7488922))

(declare-fun m!7488924 () Bool)

(assert (=> b!6730171 m!7488924))

(declare-fun m!7488926 () Bool)

(assert (=> b!6730171 m!7488926))

(assert (=> b!6730171 m!7488922))

(declare-fun m!7488928 () Bool)

(assert (=> b!6730171 m!7488928))

(assert (=> b!6730176 m!7488918))

(declare-fun m!7488930 () Bool)

(assert (=> b!6730176 m!7488930))

(declare-fun m!7488932 () Bool)

(assert (=> b!6730175 m!7488932))

(assert (=> d!2114608 m!7488932))

(declare-fun m!7488934 () Bool)

(assert (=> d!2114608 m!7488934))

(assert (=> d!2114608 m!7488866))

(assert (=> b!6730174 m!7488918))

(declare-fun m!7488936 () Bool)

(assert (=> b!6730174 m!7488936))

(assert (=> b!6729490 d!2114608))

(declare-fun bs!1789870 () Bool)

(declare-fun d!2114616 () Bool)

(assert (= bs!1789870 (and d!2114616 b!6729674)))

(declare-fun lambda!377732 () Int)

(assert (=> bs!1789870 (not (= lambda!377732 lambda!377669))))

(declare-fun bs!1789871 () Bool)

(assert (= bs!1789871 (and d!2114616 d!2114580)))

(assert (=> bs!1789871 (not (= lambda!377732 lambda!377715))))

(declare-fun bs!1789872 () Bool)

(assert (= bs!1789872 (and d!2114616 d!2114592)))

(assert (=> bs!1789872 (= (= r!7292 (Star!16557 (reg!16886 r!7292))) (= lambda!377732 lambda!377722))))

(declare-fun bs!1789873 () Bool)

(assert (= bs!1789873 (and d!2114616 b!6729675)))

(assert (=> bs!1789873 (not (= lambda!377732 lambda!377670))))

(declare-fun bs!1789874 () Bool)

(assert (= bs!1789874 (and d!2114616 b!6729490)))

(assert (=> bs!1789874 (not (= lambda!377732 lambda!377654))))

(assert (=> bs!1789872 (not (= lambda!377732 lambda!377725))))

(assert (=> bs!1789874 (not (= lambda!377732 lambda!377653))))

(assert (=> bs!1789871 (= lambda!377732 lambda!377714)))

(assert (=> bs!1789874 (= lambda!377732 lambda!377652)))

(assert (=> d!2114616 true))

(assert (=> d!2114616 true))

(assert (=> d!2114616 true))

(assert (=> d!2114616 (= (isDefined!13147 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326)) (Exists!3625 lambda!377732))))

(declare-fun lt!2437734 () Unit!159805)

(declare-fun choose!50160 (Regex!16557 Regex!16557 List!65971) Unit!159805)

(assert (=> d!2114616 (= lt!2437734 (choose!50160 (reg!16886 r!7292) r!7292 s!2326))))

(assert (=> d!2114616 (validRegex!8293 (reg!16886 r!7292))))

(assert (=> d!2114616 (= (lemmaFindConcatSeparationEquivalentToExists!2622 (reg!16886 r!7292) r!7292 s!2326) lt!2437734)))

(declare-fun bs!1789875 () Bool)

(assert (= bs!1789875 d!2114616))

(assert (=> bs!1789875 m!7488478))

(assert (=> bs!1789875 m!7488478))

(assert (=> bs!1789875 m!7488484))

(declare-fun m!7488938 () Bool)

(assert (=> bs!1789875 m!7488938))

(assert (=> bs!1789875 m!7488866))

(declare-fun m!7488940 () Bool)

(assert (=> bs!1789875 m!7488940))

(assert (=> b!6729490 d!2114616))

(declare-fun bs!1789876 () Bool)

(declare-fun d!2114618 () Bool)

(assert (= bs!1789876 (and d!2114618 d!2114572)))

(declare-fun lambda!377733 () Int)

(assert (=> bs!1789876 (= lambda!377733 lambda!377705)))

(declare-fun bs!1789877 () Bool)

(assert (= bs!1789877 (and d!2114618 d!2114568)))

(assert (=> bs!1789877 (= lambda!377733 lambda!377701)))

(declare-fun bs!1789878 () Bool)

(assert (= bs!1789878 (and d!2114618 d!2114528)))

(assert (=> bs!1789878 (= lambda!377733 lambda!377682)))

(declare-fun bs!1789879 () Bool)

(assert (= bs!1789879 (and d!2114618 d!2114562)))

(assert (=> bs!1789879 (= lambda!377733 lambda!377696)))

(declare-fun bs!1789880 () Bool)

(assert (= bs!1789880 (and d!2114618 d!2114544)))

(assert (=> bs!1789880 (= lambda!377733 lambda!377694)))

(assert (=> d!2114618 (= (inv!84639 (h!72296 zl!343)) (forall!15757 (exprs!6441 (h!72296 zl!343)) lambda!377733))))

(declare-fun bs!1789881 () Bool)

(assert (= bs!1789881 d!2114618))

(declare-fun m!7488942 () Bool)

(assert (=> bs!1789881 m!7488942))

(assert (=> b!6729499 d!2114618))

(declare-fun b!6730188 () Bool)

(declare-fun e!4065908 () Bool)

(declare-fun tp!1845216 () Bool)

(declare-fun tp!1845217 () Bool)

(assert (=> b!6730188 (= e!4065908 (and tp!1845216 tp!1845217))))

(assert (=> b!6729481 (= tp!1845146 e!4065908)))

(assert (= (and b!6729481 ((_ is Cons!65846) (exprs!6441 (h!72296 zl!343)))) b!6730188))

(declare-fun b!6730189 () Bool)

(declare-fun e!4065909 () Bool)

(declare-fun tp!1845218 () Bool)

(declare-fun tp!1845219 () Bool)

(assert (=> b!6730189 (= e!4065909 (and tp!1845218 tp!1845219))))

(assert (=> b!6729500 (= tp!1845153 e!4065909)))

(assert (= (and b!6729500 ((_ is Cons!65846) (exprs!6441 setElem!45899))) b!6730189))

(declare-fun b!6730201 () Bool)

(declare-fun e!4065912 () Bool)

(declare-fun tp!1845233 () Bool)

(declare-fun tp!1845234 () Bool)

(assert (=> b!6730201 (= e!4065912 (and tp!1845233 tp!1845234))))

(assert (=> b!6729505 (= tp!1845145 e!4065912)))

(declare-fun b!6730202 () Bool)

(declare-fun tp!1845232 () Bool)

(assert (=> b!6730202 (= e!4065912 tp!1845232)))

(declare-fun b!6730200 () Bool)

(assert (=> b!6730200 (= e!4065912 tp_is_empty!42367)))

(declare-fun b!6730203 () Bool)

(declare-fun tp!1845231 () Bool)

(declare-fun tp!1845230 () Bool)

(assert (=> b!6730203 (= e!4065912 (and tp!1845231 tp!1845230))))

(assert (= (and b!6729505 ((_ is ElementMatch!16557) (regOne!33627 r!7292))) b!6730200))

(assert (= (and b!6729505 ((_ is Concat!25402) (regOne!33627 r!7292))) b!6730201))

(assert (= (and b!6729505 ((_ is Star!16557) (regOne!33627 r!7292))) b!6730202))

(assert (= (and b!6729505 ((_ is Union!16557) (regOne!33627 r!7292))) b!6730203))

(declare-fun b!6730205 () Bool)

(declare-fun e!4065913 () Bool)

(declare-fun tp!1845238 () Bool)

(declare-fun tp!1845239 () Bool)

(assert (=> b!6730205 (= e!4065913 (and tp!1845238 tp!1845239))))

(assert (=> b!6729505 (= tp!1845150 e!4065913)))

(declare-fun b!6730206 () Bool)

(declare-fun tp!1845237 () Bool)

(assert (=> b!6730206 (= e!4065913 tp!1845237)))

(declare-fun b!6730204 () Bool)

(assert (=> b!6730204 (= e!4065913 tp_is_empty!42367)))

(declare-fun b!6730207 () Bool)

(declare-fun tp!1845236 () Bool)

(declare-fun tp!1845235 () Bool)

(assert (=> b!6730207 (= e!4065913 (and tp!1845236 tp!1845235))))

(assert (= (and b!6729505 ((_ is ElementMatch!16557) (regTwo!33627 r!7292))) b!6730204))

(assert (= (and b!6729505 ((_ is Concat!25402) (regTwo!33627 r!7292))) b!6730205))

(assert (= (and b!6729505 ((_ is Star!16557) (regTwo!33627 r!7292))) b!6730206))

(assert (= (and b!6729505 ((_ is Union!16557) (regTwo!33627 r!7292))) b!6730207))

(declare-fun b!6730209 () Bool)

(declare-fun e!4065914 () Bool)

(declare-fun tp!1845243 () Bool)

(declare-fun tp!1845244 () Bool)

(assert (=> b!6730209 (= e!4065914 (and tp!1845243 tp!1845244))))

(assert (=> b!6729486 (= tp!1845148 e!4065914)))

(declare-fun b!6730210 () Bool)

(declare-fun tp!1845242 () Bool)

(assert (=> b!6730210 (= e!4065914 tp!1845242)))

(declare-fun b!6730208 () Bool)

(assert (=> b!6730208 (= e!4065914 tp_is_empty!42367)))

(declare-fun b!6730211 () Bool)

(declare-fun tp!1845241 () Bool)

(declare-fun tp!1845240 () Bool)

(assert (=> b!6730211 (= e!4065914 (and tp!1845241 tp!1845240))))

(assert (= (and b!6729486 ((_ is ElementMatch!16557) (regOne!33626 r!7292))) b!6730208))

(assert (= (and b!6729486 ((_ is Concat!25402) (regOne!33626 r!7292))) b!6730209))

(assert (= (and b!6729486 ((_ is Star!16557) (regOne!33626 r!7292))) b!6730210))

(assert (= (and b!6729486 ((_ is Union!16557) (regOne!33626 r!7292))) b!6730211))

(declare-fun b!6730213 () Bool)

(declare-fun e!4065915 () Bool)

(declare-fun tp!1845248 () Bool)

(declare-fun tp!1845249 () Bool)

(assert (=> b!6730213 (= e!4065915 (and tp!1845248 tp!1845249))))

(assert (=> b!6729486 (= tp!1845147 e!4065915)))

(declare-fun b!6730214 () Bool)

(declare-fun tp!1845247 () Bool)

(assert (=> b!6730214 (= e!4065915 tp!1845247)))

(declare-fun b!6730212 () Bool)

(assert (=> b!6730212 (= e!4065915 tp_is_empty!42367)))

(declare-fun b!6730215 () Bool)

(declare-fun tp!1845246 () Bool)

(declare-fun tp!1845245 () Bool)

(assert (=> b!6730215 (= e!4065915 (and tp!1845246 tp!1845245))))

(assert (= (and b!6729486 ((_ is ElementMatch!16557) (regTwo!33626 r!7292))) b!6730212))

(assert (= (and b!6729486 ((_ is Concat!25402) (regTwo!33626 r!7292))) b!6730213))

(assert (= (and b!6729486 ((_ is Star!16557) (regTwo!33626 r!7292))) b!6730214))

(assert (= (and b!6729486 ((_ is Union!16557) (regTwo!33626 r!7292))) b!6730215))

(declare-fun condSetEmpty!45905 () Bool)

(assert (=> setNonEmpty!45899 (= condSetEmpty!45905 (= setRest!45899 ((as const (Array Context!11882 Bool)) false)))))

(declare-fun setRes!45905 () Bool)

(assert (=> setNonEmpty!45899 (= tp!1845152 setRes!45905)))

(declare-fun setIsEmpty!45905 () Bool)

(assert (=> setIsEmpty!45905 setRes!45905))

(declare-fun setElem!45905 () Context!11882)

(declare-fun tp!1845254 () Bool)

(declare-fun e!4065918 () Bool)

(declare-fun setNonEmpty!45905 () Bool)

(assert (=> setNonEmpty!45905 (= setRes!45905 (and tp!1845254 (inv!84639 setElem!45905) e!4065918))))

(declare-fun setRest!45905 () (InoxSet Context!11882))

(assert (=> setNonEmpty!45905 (= setRest!45899 ((_ map or) (store ((as const (Array Context!11882 Bool)) false) setElem!45905 true) setRest!45905))))

(declare-fun b!6730220 () Bool)

(declare-fun tp!1845255 () Bool)

(assert (=> b!6730220 (= e!4065918 tp!1845255)))

(assert (= (and setNonEmpty!45899 condSetEmpty!45905) setIsEmpty!45905))

(assert (= (and setNonEmpty!45899 (not condSetEmpty!45905)) setNonEmpty!45905))

(assert (= setNonEmpty!45905 b!6730220))

(declare-fun m!7488944 () Bool)

(assert (=> setNonEmpty!45905 m!7488944))

(declare-fun b!6730222 () Bool)

(declare-fun e!4065919 () Bool)

(declare-fun tp!1845259 () Bool)

(declare-fun tp!1845260 () Bool)

(assert (=> b!6730222 (= e!4065919 (and tp!1845259 tp!1845260))))

(assert (=> b!6729504 (= tp!1845144 e!4065919)))

(declare-fun b!6730223 () Bool)

(declare-fun tp!1845258 () Bool)

(assert (=> b!6730223 (= e!4065919 tp!1845258)))

(declare-fun b!6730221 () Bool)

(assert (=> b!6730221 (= e!4065919 tp_is_empty!42367)))

(declare-fun b!6730224 () Bool)

(declare-fun tp!1845257 () Bool)

(declare-fun tp!1845256 () Bool)

(assert (=> b!6730224 (= e!4065919 (and tp!1845257 tp!1845256))))

(assert (= (and b!6729504 ((_ is ElementMatch!16557) (reg!16886 r!7292))) b!6730221))

(assert (= (and b!6729504 ((_ is Concat!25402) (reg!16886 r!7292))) b!6730222))

(assert (= (and b!6729504 ((_ is Star!16557) (reg!16886 r!7292))) b!6730223))

(assert (= (and b!6729504 ((_ is Union!16557) (reg!16886 r!7292))) b!6730224))

(declare-fun b!6730229 () Bool)

(declare-fun e!4065922 () Bool)

(declare-fun tp!1845263 () Bool)

(assert (=> b!6730229 (= e!4065922 (and tp_is_empty!42367 tp!1845263))))

(assert (=> b!6729488 (= tp!1845151 e!4065922)))

(assert (= (and b!6729488 ((_ is Cons!65847) (t!379658 s!2326))) b!6730229))

(declare-fun b!6730237 () Bool)

(declare-fun e!4065928 () Bool)

(declare-fun tp!1845268 () Bool)

(assert (=> b!6730237 (= e!4065928 tp!1845268)))

(declare-fun b!6730236 () Bool)

(declare-fun e!4065927 () Bool)

(declare-fun tp!1845269 () Bool)

(assert (=> b!6730236 (= e!4065927 (and (inv!84639 (h!72296 (t!379659 zl!343))) e!4065928 tp!1845269))))

(assert (=> b!6729499 (= tp!1845149 e!4065927)))

(assert (= b!6730236 b!6730237))

(assert (= (and b!6729499 ((_ is Cons!65848) (t!379659 zl!343))) b!6730236))

(declare-fun m!7488946 () Bool)

(assert (=> b!6730236 m!7488946))

(declare-fun b_lambda!253383 () Bool)

(assert (= b_lambda!253377 (or b!6729480 b_lambda!253383)))

(declare-fun bs!1789882 () Bool)

(declare-fun d!2114620 () Bool)

(assert (= bs!1789882 (and d!2114620 b!6729480)))

(assert (=> bs!1789882 (= (dynLambda!26264 lambda!377655 lt!2437639) (derivationStepZipperUp!1711 lt!2437639 (h!72295 s!2326)))))

(assert (=> bs!1789882 m!7488448))

(assert (=> d!2114552 d!2114620))

(declare-fun b_lambda!253385 () Bool)

(assert (= b_lambda!253375 (or b!6729480 b_lambda!253385)))

(declare-fun bs!1789883 () Bool)

(declare-fun d!2114622 () Bool)

(assert (= bs!1789883 (and d!2114622 b!6729480)))

(assert (=> bs!1789883 (= (dynLambda!26264 lambda!377655 (h!72296 zl!343)) (derivationStepZipperUp!1711 (h!72296 zl!343) (h!72295 s!2326)))))

(assert (=> bs!1789883 m!7488460))

(assert (=> d!2114526 d!2114622))

(check-sat (not d!2114494) (not b!6730223) (not b!6729818) (not bm!607750) (not d!2114560) (not b!6729967) (not d!2114554) (not b!6730237) (not b!6730189) (not b!6729890) (not d!2114542) (not d!2114544) (not b!6729783) (not b!6729678) (not b!6730215) (not b!6729786) (not d!2114526) (not bm!607795) (not b!6729885) (not d!2114558) (not b!6729910) (not b!6729817) (not b!6729738) (not b!6729824) (not b!6730173) (not d!2114568) (not b!6729916) (not setNonEmpty!45905) (not b!6729957) (not b!6729815) (not b!6730174) (not bm!607738) (not bs!1789882) (not b!6729741) (not b!6730211) (not b!6730214) (not b!6730209) (not b_lambda!253383) (not d!2114600) (not b!6730220) (not b!6729820) (not bm!607797) (not d!2114528) (not b!6729582) (not b!6729915) (not d!2114506) (not d!2114578) (not b!6730175) (not b!6730205) (not bm!607796) (not b!6730171) (not b!6730176) (not b!6730203) (not b!6729960) (not d!2114592) (not b!6729872) (not d!2114548) (not b!6730206) (not bm!607751) (not b!6729744) (not b!6730210) (not b!6729736) (not bm!607791) (not b!6729928) (not b!6730222) (not d!2114616) (not b!6729954) (not b!6729962) (not b!6730224) (not d!2114618) (not b!6729673) (not b!6730213) (not d!2114580) (not b!6729867) (not b!6730188) (not b!6730236) tp_is_empty!42367 (not b!6729816) (not b!6730202) (not bm!607740) (not b!6729823) (not d!2114562) (not bm!607798) (not b!6730172) (not b!6729887) (not bm!607754) (not bm!607789) (not bs!1789883) (not b!6729869) (not b!6730229) (not b!6729733) (not b!6729909) (not d!2114556) (not bm!607802) (not d!2114552) (not b!6729953) (not d!2114564) (not d!2114572) (not d!2114508) (not d!2114604) (not d!2114608) (not b_lambda!253385) (not bm!607776) (not b!6729958) (not d!2114606) (not b!6730207) (not d!2114504) (not b!6730201) (not b!6729955) (not bm!607790) (not b!6729732))
(check-sat)
(get-model)

(declare-fun d!2114624 () Bool)

(assert (=> d!2114624 (= (isEmpty!38182 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326)) (not ((_ is Some!16443) (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326))))))

(assert (=> d!2114606 d!2114624))

(assert (=> d!2114552 d!2114548))

(declare-fun d!2114626 () Bool)

(assert (=> d!2114626 (= (flatMap!2038 lt!2437631 lambda!377655) (dynLambda!26264 lambda!377655 lt!2437639))))

(assert (=> d!2114626 true))

(declare-fun _$13!4034 () Unit!159805)

(assert (=> d!2114626 (= (choose!50150 lt!2437631 lt!2437639 lambda!377655) _$13!4034)))

(declare-fun b_lambda!253387 () Bool)

(assert (=> (not b_lambda!253387) (not d!2114626)))

(declare-fun bs!1789884 () Bool)

(assert (= bs!1789884 d!2114626))

(assert (=> bs!1789884 m!7488452))

(assert (=> bs!1789884 m!7488728))

(assert (=> d!2114552 d!2114626))

(declare-fun d!2114628 () Bool)

(assert (=> d!2114628 (= (isEmpty!38179 (t!379657 (unfocusZipperList!1978 zl!343))) ((_ is Nil!65846) (t!379657 (unfocusZipperList!1978 zl!343))))))

(assert (=> b!6729953 d!2114628))

(declare-fun d!2114630 () Bool)

(assert (=> d!2114630 (= (head!13541 (unfocusZipperList!1978 zl!343)) (h!72294 (unfocusZipperList!1978 zl!343)))))

(assert (=> b!6729955 d!2114630))

(declare-fun bs!1789885 () Bool)

(declare-fun b!6730241 () Bool)

(assert (= bs!1789885 (and b!6730241 b!6729674)))

(declare-fun lambda!377734 () Int)

(assert (=> bs!1789885 (= (and (= (reg!16886 (regTwo!33627 r!7292)) (reg!16886 r!7292)) (= (regTwo!33627 r!7292) r!7292)) (= lambda!377734 lambda!377669))))

(declare-fun bs!1789886 () Bool)

(assert (= bs!1789886 (and b!6730241 d!2114580)))

(assert (=> bs!1789886 (not (= lambda!377734 lambda!377715))))

(declare-fun bs!1789887 () Bool)

(assert (= bs!1789887 (and b!6730241 d!2114592)))

(assert (=> bs!1789887 (not (= lambda!377734 lambda!377722))))

(declare-fun bs!1789888 () Bool)

(assert (= bs!1789888 (and b!6730241 b!6729675)))

(assert (=> bs!1789888 (not (= lambda!377734 lambda!377670))))

(declare-fun bs!1789889 () Bool)

(assert (= bs!1789889 (and b!6730241 b!6729490)))

(assert (=> bs!1789889 (not (= lambda!377734 lambda!377654))))

(declare-fun bs!1789890 () Bool)

(assert (= bs!1789890 (and b!6730241 d!2114616)))

(assert (=> bs!1789890 (not (= lambda!377734 lambda!377732))))

(assert (=> bs!1789887 (= (and (= (reg!16886 (regTwo!33627 r!7292)) (reg!16886 r!7292)) (= (regTwo!33627 r!7292) (Star!16557 (reg!16886 r!7292)))) (= lambda!377734 lambda!377725))))

(assert (=> bs!1789889 (= (and (= (reg!16886 (regTwo!33627 r!7292)) (reg!16886 r!7292)) (= (regTwo!33627 r!7292) r!7292)) (= lambda!377734 lambda!377653))))

(assert (=> bs!1789886 (not (= lambda!377734 lambda!377714))))

(assert (=> bs!1789889 (not (= lambda!377734 lambda!377652))))

(assert (=> b!6730241 true))

(assert (=> b!6730241 true))

(declare-fun bs!1789891 () Bool)

(declare-fun b!6730242 () Bool)

(assert (= bs!1789891 (and b!6730242 b!6729674)))

(declare-fun lambda!377735 () Int)

(assert (=> bs!1789891 (not (= lambda!377735 lambda!377669))))

(declare-fun bs!1789892 () Bool)

(assert (= bs!1789892 (and b!6730242 d!2114580)))

(assert (=> bs!1789892 (= (and (= (regOne!33626 (regTwo!33627 r!7292)) (reg!16886 r!7292)) (= (regTwo!33626 (regTwo!33627 r!7292)) r!7292)) (= lambda!377735 lambda!377715))))

(declare-fun bs!1789893 () Bool)

(assert (= bs!1789893 (and b!6730242 b!6730241)))

(assert (=> bs!1789893 (not (= lambda!377735 lambda!377734))))

(declare-fun bs!1789894 () Bool)

(assert (= bs!1789894 (and b!6730242 d!2114592)))

(assert (=> bs!1789894 (not (= lambda!377735 lambda!377722))))

(declare-fun bs!1789895 () Bool)

(assert (= bs!1789895 (and b!6730242 b!6729675)))

(assert (=> bs!1789895 (= (and (= (regOne!33626 (regTwo!33627 r!7292)) (regOne!33626 r!7292)) (= (regTwo!33626 (regTwo!33627 r!7292)) (regTwo!33626 r!7292))) (= lambda!377735 lambda!377670))))

(declare-fun bs!1789896 () Bool)

(assert (= bs!1789896 (and b!6730242 b!6729490)))

(assert (=> bs!1789896 (= (and (= (regOne!33626 (regTwo!33627 r!7292)) (reg!16886 r!7292)) (= (regTwo!33626 (regTwo!33627 r!7292)) r!7292)) (= lambda!377735 lambda!377654))))

(declare-fun bs!1789897 () Bool)

(assert (= bs!1789897 (and b!6730242 d!2114616)))

(assert (=> bs!1789897 (not (= lambda!377735 lambda!377732))))

(assert (=> bs!1789894 (not (= lambda!377735 lambda!377725))))

(assert (=> bs!1789896 (not (= lambda!377735 lambda!377653))))

(assert (=> bs!1789892 (not (= lambda!377735 lambda!377714))))

(assert (=> bs!1789896 (not (= lambda!377735 lambda!377652))))

(assert (=> b!6730242 true))

(assert (=> b!6730242 true))

(declare-fun b!6730238 () Bool)

(declare-fun c!1247984 () Bool)

(assert (=> b!6730238 (= c!1247984 ((_ is ElementMatch!16557) (regTwo!33627 r!7292)))))

(declare-fun e!4065932 () Bool)

(declare-fun e!4065935 () Bool)

(assert (=> b!6730238 (= e!4065932 e!4065935)))

(declare-fun b!6730239 () Bool)

(declare-fun e!4065929 () Bool)

(assert (=> b!6730239 (= e!4065929 e!4065932)))

(declare-fun res!2753463 () Bool)

(assert (=> b!6730239 (= res!2753463 (not ((_ is EmptyLang!16557) (regTwo!33627 r!7292))))))

(assert (=> b!6730239 (=> (not res!2753463) (not e!4065932))))

(declare-fun b!6730240 () Bool)

(declare-fun e!4065930 () Bool)

(assert (=> b!6730240 (= e!4065930 (matchRSpec!3658 (regTwo!33627 (regTwo!33627 r!7292)) s!2326))))

(declare-fun e!4065931 () Bool)

(declare-fun call!607825 () Bool)

(assert (=> b!6730241 (= e!4065931 call!607825)))

(declare-fun e!4065934 () Bool)

(assert (=> b!6730242 (= e!4065934 call!607825)))

(declare-fun d!2114632 () Bool)

(declare-fun c!1247985 () Bool)

(assert (=> d!2114632 (= c!1247985 ((_ is EmptyExpr!16557) (regTwo!33627 r!7292)))))

(assert (=> d!2114632 (= (matchRSpec!3658 (regTwo!33627 r!7292) s!2326) e!4065929)))

(declare-fun b!6730243 () Bool)

(declare-fun c!1247987 () Bool)

(assert (=> b!6730243 (= c!1247987 ((_ is Union!16557) (regTwo!33627 r!7292)))))

(declare-fun e!4065933 () Bool)

(assert (=> b!6730243 (= e!4065935 e!4065933)))

(declare-fun b!6730244 () Bool)

(declare-fun res!2753462 () Bool)

(assert (=> b!6730244 (=> res!2753462 e!4065931)))

(declare-fun call!607824 () Bool)

(assert (=> b!6730244 (= res!2753462 call!607824)))

(assert (=> b!6730244 (= e!4065934 e!4065931)))

(declare-fun b!6730245 () Bool)

(assert (=> b!6730245 (= e!4065933 e!4065930)))

(declare-fun res!2753461 () Bool)

(assert (=> b!6730245 (= res!2753461 (matchRSpec!3658 (regOne!33627 (regTwo!33627 r!7292)) s!2326))))

(assert (=> b!6730245 (=> res!2753461 e!4065930)))

(declare-fun b!6730246 () Bool)

(assert (=> b!6730246 (= e!4065933 e!4065934)))

(declare-fun c!1247986 () Bool)

(assert (=> b!6730246 (= c!1247986 ((_ is Star!16557) (regTwo!33627 r!7292)))))

(declare-fun bm!607819 () Bool)

(assert (=> bm!607819 (= call!607824 (isEmpty!38177 s!2326))))

(declare-fun b!6730247 () Bool)

(assert (=> b!6730247 (= e!4065929 call!607824)))

(declare-fun bm!607820 () Bool)

(assert (=> bm!607820 (= call!607825 (Exists!3625 (ite c!1247986 lambda!377734 lambda!377735)))))

(declare-fun b!6730248 () Bool)

(assert (=> b!6730248 (= e!4065935 (= s!2326 (Cons!65847 (c!1247791 (regTwo!33627 r!7292)) Nil!65847)))))

(assert (= (and d!2114632 c!1247985) b!6730247))

(assert (= (and d!2114632 (not c!1247985)) b!6730239))

(assert (= (and b!6730239 res!2753463) b!6730238))

(assert (= (and b!6730238 c!1247984) b!6730248))

(assert (= (and b!6730238 (not c!1247984)) b!6730243))

(assert (= (and b!6730243 c!1247987) b!6730245))

(assert (= (and b!6730243 (not c!1247987)) b!6730246))

(assert (= (and b!6730245 (not res!2753461)) b!6730240))

(assert (= (and b!6730246 c!1247986) b!6730244))

(assert (= (and b!6730246 (not c!1247986)) b!6730242))

(assert (= (and b!6730244 (not res!2753462)) b!6730241))

(assert (= (or b!6730241 b!6730242) bm!607820))

(assert (= (or b!6730247 b!6730244) bm!607819))

(declare-fun m!7488948 () Bool)

(assert (=> b!6730240 m!7488948))

(declare-fun m!7488950 () Bool)

(assert (=> b!6730245 m!7488950))

(assert (=> bm!607819 m!7488470))

(declare-fun m!7488952 () Bool)

(assert (=> bm!607820 m!7488952))

(assert (=> b!6729673 d!2114632))

(declare-fun d!2114634 () Bool)

(declare-fun c!1247990 () Bool)

(assert (=> d!2114634 (= c!1247990 ((_ is Nil!65848) lt!2437695))))

(declare-fun e!4065938 () (InoxSet Context!11882))

(assert (=> d!2114634 (= (content!12783 lt!2437695) e!4065938)))

(declare-fun b!6730253 () Bool)

(assert (=> b!6730253 (= e!4065938 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730254 () Bool)

(assert (=> b!6730254 (= e!4065938 ((_ map or) (store ((as const (Array Context!11882 Bool)) false) (h!72296 lt!2437695) true) (content!12783 (t!379659 lt!2437695))))))

(assert (= (and d!2114634 c!1247990) b!6730253))

(assert (= (and d!2114634 (not c!1247990)) b!6730254))

(declare-fun m!7488954 () Bool)

(assert (=> b!6730254 m!7488954))

(declare-fun m!7488956 () Bool)

(assert (=> b!6730254 m!7488956))

(assert (=> b!6729928 d!2114634))

(declare-fun d!2114636 () Bool)

(assert (=> d!2114636 (= ($colon$colon!2374 (exprs!6441 (Context!11883 Nil!65846)) (ite (or c!1247897 c!1247901) (regTwo!33626 r!7292) r!7292)) (Cons!65846 (ite (or c!1247897 c!1247901) (regTwo!33626 r!7292) r!7292) (exprs!6441 (Context!11883 Nil!65846))))))

(assert (=> bm!607791 d!2114636))

(declare-fun d!2114638 () Bool)

(declare-fun lambda!377738 () Int)

(declare-fun exists!2690 ((InoxSet Context!11882) Int) Bool)

(assert (=> d!2114638 (= (nullableZipper!2272 lt!2437631) (exists!2690 lt!2437631 lambda!377738))))

(declare-fun bs!1789898 () Bool)

(assert (= bs!1789898 d!2114638))

(declare-fun m!7488958 () Bool)

(assert (=> bs!1789898 m!7488958))

(assert (=> b!6729909 d!2114638))

(declare-fun b!6730255 () Bool)

(declare-fun e!4065939 () Bool)

(declare-fun e!4065940 () Bool)

(assert (=> b!6730255 (= e!4065939 e!4065940)))

(declare-fun c!1247994 () Bool)

(assert (=> b!6730255 (= c!1247994 ((_ is Star!16557) lt!2437668))))

(declare-fun b!6730256 () Bool)

(declare-fun res!2753465 () Bool)

(declare-fun e!4065944 () Bool)

(assert (=> b!6730256 (=> (not res!2753465) (not e!4065944))))

(declare-fun call!607826 () Bool)

(assert (=> b!6730256 (= res!2753465 call!607826)))

(declare-fun e!4065942 () Bool)

(assert (=> b!6730256 (= e!4065942 e!4065944)))

(declare-fun bm!607821 () Bool)

(declare-fun call!607827 () Bool)

(declare-fun c!1247993 () Bool)

(assert (=> bm!607821 (= call!607827 (validRegex!8293 (ite c!1247994 (reg!16886 lt!2437668) (ite c!1247993 (regOne!33627 lt!2437668) (regOne!33626 lt!2437668)))))))

(declare-fun d!2114640 () Bool)

(declare-fun res!2753466 () Bool)

(assert (=> d!2114640 (=> res!2753466 e!4065939)))

(assert (=> d!2114640 (= res!2753466 ((_ is ElementMatch!16557) lt!2437668))))

(assert (=> d!2114640 (= (validRegex!8293 lt!2437668) e!4065939)))

(declare-fun b!6730257 () Bool)

(declare-fun call!607828 () Bool)

(assert (=> b!6730257 (= e!4065944 call!607828)))

(declare-fun bm!607822 () Bool)

(assert (=> bm!607822 (= call!607826 call!607827)))

(declare-fun b!6730258 () Bool)

(declare-fun e!4065943 () Bool)

(declare-fun e!4065945 () Bool)

(assert (=> b!6730258 (= e!4065943 e!4065945)))

(declare-fun res!2753464 () Bool)

(assert (=> b!6730258 (=> (not res!2753464) (not e!4065945))))

(assert (=> b!6730258 (= res!2753464 call!607826)))

(declare-fun b!6730259 () Bool)

(assert (=> b!6730259 (= e!4065940 e!4065942)))

(assert (=> b!6730259 (= c!1247993 ((_ is Union!16557) lt!2437668))))

(declare-fun b!6730260 () Bool)

(declare-fun e!4065941 () Bool)

(assert (=> b!6730260 (= e!4065940 e!4065941)))

(declare-fun res!2753467 () Bool)

(assert (=> b!6730260 (= res!2753467 (not (nullable!6544 (reg!16886 lt!2437668))))))

(assert (=> b!6730260 (=> (not res!2753467) (not e!4065941))))

(declare-fun bm!607823 () Bool)

(assert (=> bm!607823 (= call!607828 (validRegex!8293 (ite c!1247993 (regTwo!33627 lt!2437668) (regTwo!33626 lt!2437668))))))

(declare-fun b!6730261 () Bool)

(assert (=> b!6730261 (= e!4065941 call!607827)))

(declare-fun b!6730262 () Bool)

(declare-fun res!2753468 () Bool)

(assert (=> b!6730262 (=> res!2753468 e!4065943)))

(assert (=> b!6730262 (= res!2753468 (not ((_ is Concat!25402) lt!2437668)))))

(assert (=> b!6730262 (= e!4065942 e!4065943)))

(declare-fun b!6730263 () Bool)

(assert (=> b!6730263 (= e!4065945 call!607828)))

(assert (= (and d!2114640 (not res!2753466)) b!6730255))

(assert (= (and b!6730255 c!1247994) b!6730260))

(assert (= (and b!6730255 (not c!1247994)) b!6730259))

(assert (= (and b!6730260 res!2753467) b!6730261))

(assert (= (and b!6730259 c!1247993) b!6730256))

(assert (= (and b!6730259 (not c!1247993)) b!6730262))

(assert (= (and b!6730256 res!2753465) b!6730257))

(assert (= (and b!6730262 (not res!2753468)) b!6730258))

(assert (= (and b!6730258 res!2753464) b!6730263))

(assert (= (or b!6730257 b!6730263) bm!607823))

(assert (= (or b!6730256 b!6730258) bm!607822))

(assert (= (or b!6730261 bm!607822) bm!607821))

(declare-fun m!7488960 () Bool)

(assert (=> bm!607821 m!7488960))

(declare-fun m!7488962 () Bool)

(assert (=> b!6730260 m!7488962))

(declare-fun m!7488964 () Bool)

(assert (=> bm!607823 m!7488964))

(assert (=> d!2114506 d!2114640))

(assert (=> d!2114506 d!2114568))

(assert (=> d!2114506 d!2114572))

(assert (=> bm!607754 d!2114602))

(declare-fun d!2114642 () Bool)

(assert (=> d!2114642 (= (head!13540 s!2326) (h!72295 s!2326))))

(assert (=> b!6729733 d!2114642))

(declare-fun d!2114644 () Bool)

(assert (=> d!2114644 (= (isUnion!1360 lt!2437700) ((_ is Union!16557) lt!2437700))))

(assert (=> b!6729957 d!2114644))

(declare-fun d!2114646 () Bool)

(assert (=> d!2114646 (= (isEmpty!38179 (exprs!6441 (h!72296 zl!343))) ((_ is Nil!65846) (exprs!6441 (h!72296 zl!343))))))

(assert (=> b!6729815 d!2114646))

(declare-fun d!2114648 () Bool)

(declare-fun nullableFct!2457 (Regex!16557) Bool)

(assert (=> d!2114648 (= (nullable!6544 (regOne!33626 (reg!16886 r!7292))) (nullableFct!2457 (regOne!33626 (reg!16886 r!7292))))))

(declare-fun bs!1789899 () Bool)

(assert (= bs!1789899 d!2114648))

(declare-fun m!7488966 () Bool)

(assert (=> bs!1789899 m!7488966))

(assert (=> b!6729885 d!2114648))

(declare-fun b!6730272 () Bool)

(declare-fun e!4065951 () List!65971)

(assert (=> b!6730272 (= e!4065951 (t!379658 s!2326))))

(declare-fun b!6730273 () Bool)

(assert (=> b!6730273 (= e!4065951 (Cons!65847 (h!72295 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847))) (++!14713 (t!379658 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847))) (t!379658 s!2326))))))

(declare-fun d!2114650 () Bool)

(declare-fun e!4065950 () Bool)

(assert (=> d!2114650 e!4065950))

(declare-fun res!2753474 () Bool)

(assert (=> d!2114650 (=> (not res!2753474) (not e!4065950))))

(declare-fun lt!2437737 () List!65971)

(declare-fun content!12784 (List!65971) (InoxSet C!33384))

(assert (=> d!2114650 (= res!2753474 (= (content!12784 lt!2437737) ((_ map or) (content!12784 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847))) (content!12784 (t!379658 s!2326)))))))

(assert (=> d!2114650 (= lt!2437737 e!4065951)))

(declare-fun c!1247997 () Bool)

(assert (=> d!2114650 (= c!1247997 ((_ is Nil!65847) (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847))))))

(assert (=> d!2114650 (= (++!14713 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (t!379658 s!2326)) lt!2437737)))

(declare-fun b!6730275 () Bool)

(assert (=> b!6730275 (= e!4065950 (or (not (= (t!379658 s!2326) Nil!65847)) (= lt!2437737 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)))))))

(declare-fun b!6730274 () Bool)

(declare-fun res!2753473 () Bool)

(assert (=> b!6730274 (=> (not res!2753473) (not e!4065950))))

(declare-fun size!40606 (List!65971) Int)

(assert (=> b!6730274 (= res!2753473 (= (size!40606 lt!2437737) (+ (size!40606 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847))) (size!40606 (t!379658 s!2326)))))))

(assert (= (and d!2114650 c!1247997) b!6730272))

(assert (= (and d!2114650 (not c!1247997)) b!6730273))

(assert (= (and d!2114650 res!2753474) b!6730274))

(assert (= (and b!6730274 res!2753473) b!6730275))

(declare-fun m!7488968 () Bool)

(assert (=> b!6730273 m!7488968))

(declare-fun m!7488970 () Bool)

(assert (=> d!2114650 m!7488970))

(assert (=> d!2114650 m!7488922))

(declare-fun m!7488972 () Bool)

(assert (=> d!2114650 m!7488972))

(declare-fun m!7488974 () Bool)

(assert (=> d!2114650 m!7488974))

(declare-fun m!7488976 () Bool)

(assert (=> b!6730274 m!7488976))

(assert (=> b!6730274 m!7488922))

(declare-fun m!7488978 () Bool)

(assert (=> b!6730274 m!7488978))

(declare-fun m!7488980 () Bool)

(assert (=> b!6730274 m!7488980))

(assert (=> b!6730171 d!2114650))

(declare-fun b!6730276 () Bool)

(declare-fun e!4065953 () List!65971)

(assert (=> b!6730276 (= e!4065953 (Cons!65847 (h!72295 s!2326) Nil!65847))))

(declare-fun b!6730277 () Bool)

(assert (=> b!6730277 (= e!4065953 (Cons!65847 (h!72295 Nil!65847) (++!14713 (t!379658 Nil!65847) (Cons!65847 (h!72295 s!2326) Nil!65847))))))

(declare-fun d!2114652 () Bool)

(declare-fun e!4065952 () Bool)

(assert (=> d!2114652 e!4065952))

(declare-fun res!2753476 () Bool)

(assert (=> d!2114652 (=> (not res!2753476) (not e!4065952))))

(declare-fun lt!2437738 () List!65971)

(assert (=> d!2114652 (= res!2753476 (= (content!12784 lt!2437738) ((_ map or) (content!12784 Nil!65847) (content!12784 (Cons!65847 (h!72295 s!2326) Nil!65847)))))))

(assert (=> d!2114652 (= lt!2437738 e!4065953)))

(declare-fun c!1247998 () Bool)

(assert (=> d!2114652 (= c!1247998 ((_ is Nil!65847) Nil!65847))))

(assert (=> d!2114652 (= (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) lt!2437738)))

(declare-fun b!6730279 () Bool)

(assert (=> b!6730279 (= e!4065952 (or (not (= (Cons!65847 (h!72295 s!2326) Nil!65847) Nil!65847)) (= lt!2437738 Nil!65847)))))

(declare-fun b!6730278 () Bool)

(declare-fun res!2753475 () Bool)

(assert (=> b!6730278 (=> (not res!2753475) (not e!4065952))))

(assert (=> b!6730278 (= res!2753475 (= (size!40606 lt!2437738) (+ (size!40606 Nil!65847) (size!40606 (Cons!65847 (h!72295 s!2326) Nil!65847)))))))

(assert (= (and d!2114652 c!1247998) b!6730276))

(assert (= (and d!2114652 (not c!1247998)) b!6730277))

(assert (= (and d!2114652 res!2753476) b!6730278))

(assert (= (and b!6730278 res!2753475) b!6730279))

(declare-fun m!7488982 () Bool)

(assert (=> b!6730277 m!7488982))

(declare-fun m!7488984 () Bool)

(assert (=> d!2114652 m!7488984))

(declare-fun m!7488986 () Bool)

(assert (=> d!2114652 m!7488986))

(declare-fun m!7488988 () Bool)

(assert (=> d!2114652 m!7488988))

(declare-fun m!7488990 () Bool)

(assert (=> b!6730278 m!7488990))

(declare-fun m!7488992 () Bool)

(assert (=> b!6730278 m!7488992))

(declare-fun m!7488994 () Bool)

(assert (=> b!6730278 m!7488994))

(assert (=> b!6730171 d!2114652))

(declare-fun d!2114654 () Bool)

(assert (=> d!2114654 (= (++!14713 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (t!379658 s!2326)) s!2326)))

(declare-fun lt!2437741 () Unit!159805)

(declare-fun choose!50161 (List!65971 C!33384 List!65971 List!65971) Unit!159805)

(assert (=> d!2114654 (= lt!2437741 (choose!50161 Nil!65847 (h!72295 s!2326) (t!379658 s!2326) s!2326))))

(assert (=> d!2114654 (= (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) (t!379658 s!2326))) s!2326)))

(assert (=> d!2114654 (= (lemmaMoveElementToOtherListKeepsConcatEq!2686 Nil!65847 (h!72295 s!2326) (t!379658 s!2326) s!2326) lt!2437741)))

(declare-fun bs!1789900 () Bool)

(assert (= bs!1789900 d!2114654))

(assert (=> bs!1789900 m!7488922))

(assert (=> bs!1789900 m!7488922))

(assert (=> bs!1789900 m!7488924))

(declare-fun m!7488996 () Bool)

(assert (=> bs!1789900 m!7488996))

(declare-fun m!7488998 () Bool)

(assert (=> bs!1789900 m!7488998))

(assert (=> b!6730171 d!2114654))

(declare-fun b!6730280 () Bool)

(declare-fun lt!2437743 () Unit!159805)

(declare-fun lt!2437742 () Unit!159805)

(assert (=> b!6730280 (= lt!2437743 lt!2437742)))

(assert (=> b!6730280 (= (++!14713 (++!14713 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (Cons!65847 (h!72295 (t!379658 s!2326)) Nil!65847)) (t!379658 (t!379658 s!2326))) s!2326)))

(assert (=> b!6730280 (= lt!2437742 (lemmaMoveElementToOtherListKeepsConcatEq!2686 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (h!72295 (t!379658 s!2326)) (t!379658 (t!379658 s!2326)) s!2326))))

(declare-fun e!4065956 () Option!16444)

(assert (=> b!6730280 (= e!4065956 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 (++!14713 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (Cons!65847 (h!72295 (t!379658 s!2326)) Nil!65847)) (t!379658 (t!379658 s!2326)) s!2326))))

(declare-fun b!6730281 () Bool)

(declare-fun res!2753479 () Bool)

(declare-fun e!4065954 () Bool)

(assert (=> b!6730281 (=> (not res!2753479) (not e!4065954))))

(declare-fun lt!2437744 () Option!16444)

(assert (=> b!6730281 (= res!2753479 (matchR!8740 r!7292 (_2!36835 (get!22907 lt!2437744))))))

(declare-fun b!6730282 () Bool)

(declare-fun e!4065957 () Bool)

(assert (=> b!6730282 (= e!4065957 (matchR!8740 r!7292 (t!379658 s!2326)))))

(declare-fun b!6730283 () Bool)

(assert (=> b!6730283 (= e!4065954 (= (++!14713 (_1!36835 (get!22907 lt!2437744)) (_2!36835 (get!22907 lt!2437744))) s!2326))))

(declare-fun d!2114656 () Bool)

(declare-fun e!4065958 () Bool)

(assert (=> d!2114656 e!4065958))

(declare-fun res!2753481 () Bool)

(assert (=> d!2114656 (=> res!2753481 e!4065958)))

(assert (=> d!2114656 (= res!2753481 e!4065954)))

(declare-fun res!2753477 () Bool)

(assert (=> d!2114656 (=> (not res!2753477) (not e!4065954))))

(assert (=> d!2114656 (= res!2753477 (isDefined!13147 lt!2437744))))

(declare-fun e!4065955 () Option!16444)

(assert (=> d!2114656 (= lt!2437744 e!4065955)))

(declare-fun c!1247999 () Bool)

(assert (=> d!2114656 (= c!1247999 e!4065957)))

(declare-fun res!2753478 () Bool)

(assert (=> d!2114656 (=> (not res!2753478) (not e!4065957))))

(assert (=> d!2114656 (= res!2753478 (matchR!8740 (reg!16886 r!7292) (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847))))))

(assert (=> d!2114656 (validRegex!8293 (reg!16886 r!7292))))

(assert (=> d!2114656 (= (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (t!379658 s!2326) s!2326) lt!2437744)))

(declare-fun b!6730284 () Bool)

(assert (=> b!6730284 (= e!4065958 (not (isDefined!13147 lt!2437744)))))

(declare-fun b!6730285 () Bool)

(declare-fun res!2753480 () Bool)

(assert (=> b!6730285 (=> (not res!2753480) (not e!4065954))))

(assert (=> b!6730285 (= res!2753480 (matchR!8740 (reg!16886 r!7292) (_1!36835 (get!22907 lt!2437744))))))

(declare-fun b!6730286 () Bool)

(assert (=> b!6730286 (= e!4065955 (Some!16443 (tuple2!67065 (++!14713 Nil!65847 (Cons!65847 (h!72295 s!2326) Nil!65847)) (t!379658 s!2326))))))

(declare-fun b!6730287 () Bool)

(assert (=> b!6730287 (= e!4065956 None!16443)))

(declare-fun b!6730288 () Bool)

(assert (=> b!6730288 (= e!4065955 e!4065956)))

(declare-fun c!1248000 () Bool)

(assert (=> b!6730288 (= c!1248000 ((_ is Nil!65847) (t!379658 s!2326)))))

(assert (= (and d!2114656 res!2753478) b!6730282))

(assert (= (and d!2114656 c!1247999) b!6730286))

(assert (= (and d!2114656 (not c!1247999)) b!6730288))

(assert (= (and b!6730288 c!1248000) b!6730287))

(assert (= (and b!6730288 (not c!1248000)) b!6730280))

(assert (= (and d!2114656 res!2753477) b!6730285))

(assert (= (and b!6730285 res!2753480) b!6730281))

(assert (= (and b!6730281 res!2753479) b!6730283))

(assert (= (and d!2114656 (not res!2753481)) b!6730284))

(declare-fun m!7489000 () Bool)

(assert (=> b!6730282 m!7489000))

(declare-fun m!7489002 () Bool)

(assert (=> b!6730281 m!7489002))

(declare-fun m!7489004 () Bool)

(assert (=> b!6730281 m!7489004))

(assert (=> b!6730280 m!7488922))

(declare-fun m!7489006 () Bool)

(assert (=> b!6730280 m!7489006))

(assert (=> b!6730280 m!7489006))

(declare-fun m!7489008 () Bool)

(assert (=> b!6730280 m!7489008))

(assert (=> b!6730280 m!7488922))

(declare-fun m!7489010 () Bool)

(assert (=> b!6730280 m!7489010))

(assert (=> b!6730280 m!7489006))

(declare-fun m!7489012 () Bool)

(assert (=> b!6730280 m!7489012))

(assert (=> b!6730285 m!7489002))

(declare-fun m!7489014 () Bool)

(assert (=> b!6730285 m!7489014))

(declare-fun m!7489016 () Bool)

(assert (=> b!6730284 m!7489016))

(assert (=> d!2114656 m!7489016))

(assert (=> d!2114656 m!7488922))

(declare-fun m!7489018 () Bool)

(assert (=> d!2114656 m!7489018))

(assert (=> d!2114656 m!7488866))

(assert (=> b!6730283 m!7489002))

(declare-fun m!7489020 () Bool)

(assert (=> b!6730283 m!7489020))

(assert (=> b!6730171 d!2114656))

(declare-fun d!2114658 () Bool)

(assert (=> d!2114658 true))

(assert (=> d!2114658 true))

(declare-fun res!2753484 () Bool)

(assert (=> d!2114658 (= (choose!50157 lambda!377654) res!2753484)))

(assert (=> d!2114600 d!2114658))

(declare-fun bs!1789901 () Bool)

(declare-fun d!2114660 () Bool)

(assert (= bs!1789901 (and d!2114660 d!2114572)))

(declare-fun lambda!377739 () Int)

(assert (=> bs!1789901 (= lambda!377739 lambda!377705)))

(declare-fun bs!1789902 () Bool)

(assert (= bs!1789902 (and d!2114660 d!2114568)))

(assert (=> bs!1789902 (= lambda!377739 lambda!377701)))

(declare-fun bs!1789903 () Bool)

(assert (= bs!1789903 (and d!2114660 d!2114528)))

(assert (=> bs!1789903 (= lambda!377739 lambda!377682)))

(declare-fun bs!1789904 () Bool)

(assert (= bs!1789904 (and d!2114660 d!2114562)))

(assert (=> bs!1789904 (= lambda!377739 lambda!377696)))

(declare-fun bs!1789905 () Bool)

(assert (= bs!1789905 (and d!2114660 d!2114618)))

(assert (=> bs!1789905 (= lambda!377739 lambda!377733)))

(declare-fun bs!1789906 () Bool)

(assert (= bs!1789906 (and d!2114660 d!2114544)))

(assert (=> bs!1789906 (= lambda!377739 lambda!377694)))

(assert (=> d!2114660 (= (inv!84639 (h!72296 (t!379659 zl!343))) (forall!15757 (exprs!6441 (h!72296 (t!379659 zl!343))) lambda!377739))))

(declare-fun bs!1789907 () Bool)

(assert (= bs!1789907 d!2114660))

(declare-fun m!7489022 () Bool)

(assert (=> bs!1789907 m!7489022))

(assert (=> b!6730236 d!2114660))

(declare-fun bs!1789908 () Bool)

(declare-fun d!2114662 () Bool)

(assert (= bs!1789908 (and d!2114662 d!2114572)))

(declare-fun lambda!377740 () Int)

(assert (=> bs!1789908 (= lambda!377740 lambda!377705)))

(declare-fun bs!1789909 () Bool)

(assert (= bs!1789909 (and d!2114662 d!2114568)))

(assert (=> bs!1789909 (= lambda!377740 lambda!377701)))

(declare-fun bs!1789910 () Bool)

(assert (= bs!1789910 (and d!2114662 d!2114528)))

(assert (=> bs!1789910 (= lambda!377740 lambda!377682)))

(declare-fun bs!1789911 () Bool)

(assert (= bs!1789911 (and d!2114662 d!2114562)))

(assert (=> bs!1789911 (= lambda!377740 lambda!377696)))

(declare-fun bs!1789912 () Bool)

(assert (= bs!1789912 (and d!2114662 d!2114660)))

(assert (=> bs!1789912 (= lambda!377740 lambda!377739)))

(declare-fun bs!1789913 () Bool)

(assert (= bs!1789913 (and d!2114662 d!2114618)))

(assert (=> bs!1789913 (= lambda!377740 lambda!377733)))

(declare-fun bs!1789914 () Bool)

(assert (= bs!1789914 (and d!2114662 d!2114544)))

(assert (=> bs!1789914 (= lambda!377740 lambda!377694)))

(declare-fun b!6730289 () Bool)

(declare-fun e!4065963 () Bool)

(declare-fun e!4065960 () Bool)

(assert (=> b!6730289 (= e!4065963 e!4065960)))

(declare-fun c!1248003 () Bool)

(assert (=> b!6730289 (= c!1248003 (isEmpty!38179 (t!379657 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6730290 () Bool)

(declare-fun lt!2437745 () Regex!16557)

(assert (=> b!6730290 (= e!4065960 (isEmptyExpr!1922 lt!2437745))))

(declare-fun b!6730291 () Bool)

(declare-fun e!4065959 () Regex!16557)

(assert (=> b!6730291 (= e!4065959 (Concat!25402 (h!72294 (t!379657 (exprs!6441 (h!72296 zl!343)))) (generalisedConcat!2154 (t!379657 (t!379657 (exprs!6441 (h!72296 zl!343)))))))))

(declare-fun b!6730292 () Bool)

(declare-fun e!4065961 () Bool)

(assert (=> b!6730292 (= e!4065961 (isConcat!1445 lt!2437745))))

(assert (=> d!2114662 e!4065963))

(declare-fun res!2753485 () Bool)

(assert (=> d!2114662 (=> (not res!2753485) (not e!4065963))))

(assert (=> d!2114662 (= res!2753485 (validRegex!8293 lt!2437745))))

(declare-fun e!4065964 () Regex!16557)

(assert (=> d!2114662 (= lt!2437745 e!4065964)))

(declare-fun c!1248004 () Bool)

(declare-fun e!4065962 () Bool)

(assert (=> d!2114662 (= c!1248004 e!4065962)))

(declare-fun res!2753486 () Bool)

(assert (=> d!2114662 (=> (not res!2753486) (not e!4065962))))

(assert (=> d!2114662 (= res!2753486 ((_ is Cons!65846) (t!379657 (exprs!6441 (h!72296 zl!343)))))))

(assert (=> d!2114662 (forall!15757 (t!379657 (exprs!6441 (h!72296 zl!343))) lambda!377740)))

(assert (=> d!2114662 (= (generalisedConcat!2154 (t!379657 (exprs!6441 (h!72296 zl!343)))) lt!2437745)))

(declare-fun b!6730293 () Bool)

(assert (=> b!6730293 (= e!4065959 EmptyExpr!16557)))

(declare-fun b!6730294 () Bool)

(assert (=> b!6730294 (= e!4065962 (isEmpty!38179 (t!379657 (t!379657 (exprs!6441 (h!72296 zl!343))))))))

(declare-fun b!6730295 () Bool)

(assert (=> b!6730295 (= e!4065964 e!4065959)))

(declare-fun c!1248002 () Bool)

(assert (=> b!6730295 (= c!1248002 ((_ is Cons!65846) (t!379657 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6730296 () Bool)

(assert (=> b!6730296 (= e!4065964 (h!72294 (t!379657 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6730297 () Bool)

(assert (=> b!6730297 (= e!4065961 (= lt!2437745 (head!13541 (t!379657 (exprs!6441 (h!72296 zl!343))))))))

(declare-fun b!6730298 () Bool)

(assert (=> b!6730298 (= e!4065960 e!4065961)))

(declare-fun c!1248001 () Bool)

(assert (=> b!6730298 (= c!1248001 (isEmpty!38179 (tail!12626 (t!379657 (exprs!6441 (h!72296 zl!343))))))))

(assert (= (and d!2114662 res!2753486) b!6730294))

(assert (= (and d!2114662 c!1248004) b!6730296))

(assert (= (and d!2114662 (not c!1248004)) b!6730295))

(assert (= (and b!6730295 c!1248002) b!6730291))

(assert (= (and b!6730295 (not c!1248002)) b!6730293))

(assert (= (and d!2114662 res!2753485) b!6730289))

(assert (= (and b!6730289 c!1248003) b!6730290))

(assert (= (and b!6730289 (not c!1248003)) b!6730298))

(assert (= (and b!6730298 c!1248001) b!6730297))

(assert (= (and b!6730298 (not c!1248001)) b!6730292))

(declare-fun m!7489024 () Bool)

(assert (=> b!6730290 m!7489024))

(declare-fun m!7489026 () Bool)

(assert (=> b!6730298 m!7489026))

(assert (=> b!6730298 m!7489026))

(declare-fun m!7489028 () Bool)

(assert (=> b!6730298 m!7489028))

(declare-fun m!7489030 () Bool)

(assert (=> b!6730294 m!7489030))

(declare-fun m!7489032 () Bool)

(assert (=> b!6730292 m!7489032))

(declare-fun m!7489034 () Bool)

(assert (=> b!6730297 m!7489034))

(declare-fun m!7489036 () Bool)

(assert (=> d!2114662 m!7489036))

(declare-fun m!7489038 () Bool)

(assert (=> d!2114662 m!7489038))

(declare-fun m!7489040 () Bool)

(assert (=> b!6730291 m!7489040))

(assert (=> b!6730289 m!7488668))

(assert (=> b!6729817 d!2114662))

(declare-fun d!2114664 () Bool)

(assert (=> d!2114664 (= (isDefined!13147 lt!2437731) (not (isEmpty!38182 lt!2437731)))))

(declare-fun bs!1789915 () Bool)

(assert (= bs!1789915 d!2114664))

(declare-fun m!7489042 () Bool)

(assert (=> bs!1789915 m!7489042))

(assert (=> d!2114608 d!2114664))

(declare-fun bm!607824 () Bool)

(declare-fun call!607829 () Bool)

(assert (=> bm!607824 (= call!607829 (isEmpty!38177 Nil!65847))))

(declare-fun b!6730300 () Bool)

(declare-fun e!4065971 () Bool)

(assert (=> b!6730300 (= e!4065971 (not (= (head!13540 Nil!65847) (c!1247791 (reg!16886 r!7292)))))))

(declare-fun b!6730301 () Bool)

(declare-fun e!4065965 () Bool)

(declare-fun e!4065970 () Bool)

(assert (=> b!6730301 (= e!4065965 e!4065970)))

(declare-fun c!1248006 () Bool)

(assert (=> b!6730301 (= c!1248006 ((_ is EmptyLang!16557) (reg!16886 r!7292)))))

(declare-fun b!6730302 () Bool)

(declare-fun e!4065968 () Bool)

(assert (=> b!6730302 (= e!4065968 e!4065971)))

(declare-fun res!2753491 () Bool)

(assert (=> b!6730302 (=> res!2753491 e!4065971)))

(assert (=> b!6730302 (= res!2753491 call!607829)))

(declare-fun b!6730303 () Bool)

(declare-fun res!2753490 () Bool)

(assert (=> b!6730303 (=> res!2753490 e!4065971)))

(assert (=> b!6730303 (= res!2753490 (not (isEmpty!38177 (tail!12625 Nil!65847))))))

(declare-fun b!6730304 () Bool)

(declare-fun e!4065966 () Bool)

(assert (=> b!6730304 (= e!4065966 e!4065968)))

(declare-fun res!2753488 () Bool)

(assert (=> b!6730304 (=> (not res!2753488) (not e!4065968))))

(declare-fun lt!2437746 () Bool)

(assert (=> b!6730304 (= res!2753488 (not lt!2437746))))

(declare-fun b!6730305 () Bool)

(declare-fun e!4065967 () Bool)

(assert (=> b!6730305 (= e!4065967 (nullable!6544 (reg!16886 r!7292)))))

(declare-fun b!6730306 () Bool)

(declare-fun e!4065969 () Bool)

(assert (=> b!6730306 (= e!4065969 (= (head!13540 Nil!65847) (c!1247791 (reg!16886 r!7292))))))

(declare-fun b!6730307 () Bool)

(declare-fun res!2753494 () Bool)

(assert (=> b!6730307 (=> res!2753494 e!4065966)))

(assert (=> b!6730307 (= res!2753494 e!4065969)))

(declare-fun res!2753487 () Bool)

(assert (=> b!6730307 (=> (not res!2753487) (not e!4065969))))

(assert (=> b!6730307 (= res!2753487 lt!2437746)))

(declare-fun b!6730308 () Bool)

(assert (=> b!6730308 (= e!4065965 (= lt!2437746 call!607829))))

(declare-fun b!6730299 () Bool)

(assert (=> b!6730299 (= e!4065967 (matchR!8740 (derivativeStep!5229 (reg!16886 r!7292) (head!13540 Nil!65847)) (tail!12625 Nil!65847)))))

(declare-fun d!2114666 () Bool)

(assert (=> d!2114666 e!4065965))

(declare-fun c!1248005 () Bool)

(assert (=> d!2114666 (= c!1248005 ((_ is EmptyExpr!16557) (reg!16886 r!7292)))))

(assert (=> d!2114666 (= lt!2437746 e!4065967)))

(declare-fun c!1248007 () Bool)

(assert (=> d!2114666 (= c!1248007 (isEmpty!38177 Nil!65847))))

(assert (=> d!2114666 (validRegex!8293 (reg!16886 r!7292))))

(assert (=> d!2114666 (= (matchR!8740 (reg!16886 r!7292) Nil!65847) lt!2437746)))

(declare-fun b!6730309 () Bool)

(declare-fun res!2753489 () Bool)

(assert (=> b!6730309 (=> (not res!2753489) (not e!4065969))))

(assert (=> b!6730309 (= res!2753489 (isEmpty!38177 (tail!12625 Nil!65847)))))

(declare-fun b!6730310 () Bool)

(declare-fun res!2753492 () Bool)

(assert (=> b!6730310 (=> res!2753492 e!4065966)))

(assert (=> b!6730310 (= res!2753492 (not ((_ is ElementMatch!16557) (reg!16886 r!7292))))))

(assert (=> b!6730310 (= e!4065970 e!4065966)))

(declare-fun b!6730311 () Bool)

(assert (=> b!6730311 (= e!4065970 (not lt!2437746))))

(declare-fun b!6730312 () Bool)

(declare-fun res!2753493 () Bool)

(assert (=> b!6730312 (=> (not res!2753493) (not e!4065969))))

(assert (=> b!6730312 (= res!2753493 (not call!607829))))

(assert (= (and d!2114666 c!1248007) b!6730305))

(assert (= (and d!2114666 (not c!1248007)) b!6730299))

(assert (= (and d!2114666 c!1248005) b!6730308))

(assert (= (and d!2114666 (not c!1248005)) b!6730301))

(assert (= (and b!6730301 c!1248006) b!6730311))

(assert (= (and b!6730301 (not c!1248006)) b!6730310))

(assert (= (and b!6730310 (not res!2753492)) b!6730307))

(assert (= (and b!6730307 res!2753487) b!6730312))

(assert (= (and b!6730312 res!2753493) b!6730309))

(assert (= (and b!6730309 res!2753489) b!6730306))

(assert (= (and b!6730307 (not res!2753494)) b!6730304))

(assert (= (and b!6730304 res!2753488) b!6730302))

(assert (= (and b!6730302 (not res!2753491)) b!6730303))

(assert (= (and b!6730303 (not res!2753490)) b!6730300))

(assert (= (or b!6730308 b!6730302 b!6730312) bm!607824))

(declare-fun m!7489044 () Bool)

(assert (=> bm!607824 m!7489044))

(declare-fun m!7489046 () Bool)

(assert (=> b!6730300 m!7489046))

(assert (=> b!6730306 m!7489046))

(assert (=> b!6730299 m!7489046))

(assert (=> b!6730299 m!7489046))

(declare-fun m!7489048 () Bool)

(assert (=> b!6730299 m!7489048))

(declare-fun m!7489050 () Bool)

(assert (=> b!6730299 m!7489050))

(assert (=> b!6730299 m!7489048))

(assert (=> b!6730299 m!7489050))

(declare-fun m!7489052 () Bool)

(assert (=> b!6730299 m!7489052))

(assert (=> b!6730303 m!7489050))

(assert (=> b!6730303 m!7489050))

(declare-fun m!7489054 () Bool)

(assert (=> b!6730303 m!7489054))

(assert (=> b!6730309 m!7489050))

(assert (=> b!6730309 m!7489050))

(assert (=> b!6730309 m!7489054))

(assert (=> b!6730305 m!7488546))

(assert (=> d!2114666 m!7489044))

(assert (=> d!2114666 m!7488866))

(assert (=> d!2114608 d!2114666))

(declare-fun b!6730313 () Bool)

(declare-fun e!4065972 () Bool)

(declare-fun e!4065973 () Bool)

(assert (=> b!6730313 (= e!4065972 e!4065973)))

(declare-fun c!1248009 () Bool)

(assert (=> b!6730313 (= c!1248009 ((_ is Star!16557) (reg!16886 r!7292)))))

(declare-fun b!6730314 () Bool)

(declare-fun res!2753496 () Bool)

(declare-fun e!4065977 () Bool)

(assert (=> b!6730314 (=> (not res!2753496) (not e!4065977))))

(declare-fun call!607830 () Bool)

(assert (=> b!6730314 (= res!2753496 call!607830)))

(declare-fun e!4065975 () Bool)

(assert (=> b!6730314 (= e!4065975 e!4065977)))

(declare-fun bm!607825 () Bool)

(declare-fun call!607831 () Bool)

(declare-fun c!1248008 () Bool)

(assert (=> bm!607825 (= call!607831 (validRegex!8293 (ite c!1248009 (reg!16886 (reg!16886 r!7292)) (ite c!1248008 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292))))))))

(declare-fun d!2114668 () Bool)

(declare-fun res!2753497 () Bool)

(assert (=> d!2114668 (=> res!2753497 e!4065972)))

(assert (=> d!2114668 (= res!2753497 ((_ is ElementMatch!16557) (reg!16886 r!7292)))))

(assert (=> d!2114668 (= (validRegex!8293 (reg!16886 r!7292)) e!4065972)))

(declare-fun b!6730315 () Bool)

(declare-fun call!607832 () Bool)

(assert (=> b!6730315 (= e!4065977 call!607832)))

(declare-fun bm!607826 () Bool)

(assert (=> bm!607826 (= call!607830 call!607831)))

(declare-fun b!6730316 () Bool)

(declare-fun e!4065976 () Bool)

(declare-fun e!4065978 () Bool)

(assert (=> b!6730316 (= e!4065976 e!4065978)))

(declare-fun res!2753495 () Bool)

(assert (=> b!6730316 (=> (not res!2753495) (not e!4065978))))

(assert (=> b!6730316 (= res!2753495 call!607830)))

(declare-fun b!6730317 () Bool)

(assert (=> b!6730317 (= e!4065973 e!4065975)))

(assert (=> b!6730317 (= c!1248008 ((_ is Union!16557) (reg!16886 r!7292)))))

(declare-fun b!6730318 () Bool)

(declare-fun e!4065974 () Bool)

(assert (=> b!6730318 (= e!4065973 e!4065974)))

(declare-fun res!2753498 () Bool)

(assert (=> b!6730318 (= res!2753498 (not (nullable!6544 (reg!16886 (reg!16886 r!7292)))))))

(assert (=> b!6730318 (=> (not res!2753498) (not e!4065974))))

(declare-fun bm!607827 () Bool)

(assert (=> bm!607827 (= call!607832 (validRegex!8293 (ite c!1248008 (regTwo!33627 (reg!16886 r!7292)) (regTwo!33626 (reg!16886 r!7292)))))))

(declare-fun b!6730319 () Bool)

(assert (=> b!6730319 (= e!4065974 call!607831)))

(declare-fun b!6730320 () Bool)

(declare-fun res!2753499 () Bool)

(assert (=> b!6730320 (=> res!2753499 e!4065976)))

(assert (=> b!6730320 (= res!2753499 (not ((_ is Concat!25402) (reg!16886 r!7292))))))

(assert (=> b!6730320 (= e!4065975 e!4065976)))

(declare-fun b!6730321 () Bool)

(assert (=> b!6730321 (= e!4065978 call!607832)))

(assert (= (and d!2114668 (not res!2753497)) b!6730313))

(assert (= (and b!6730313 c!1248009) b!6730318))

(assert (= (and b!6730313 (not c!1248009)) b!6730317))

(assert (= (and b!6730318 res!2753498) b!6730319))

(assert (= (and b!6730317 c!1248008) b!6730314))

(assert (= (and b!6730317 (not c!1248008)) b!6730320))

(assert (= (and b!6730314 res!2753496) b!6730315))

(assert (= (and b!6730320 (not res!2753499)) b!6730316))

(assert (= (and b!6730316 res!2753495) b!6730321))

(assert (= (or b!6730315 b!6730321) bm!607827))

(assert (= (or b!6730314 b!6730316) bm!607826))

(assert (= (or b!6730319 bm!607826) bm!607825))

(declare-fun m!7489056 () Bool)

(assert (=> bm!607825 m!7489056))

(declare-fun m!7489058 () Bool)

(assert (=> b!6730318 m!7489058))

(declare-fun m!7489060 () Bool)

(assert (=> bm!607827 m!7489060))

(assert (=> d!2114608 d!2114668))

(assert (=> b!6730173 d!2114494))

(declare-fun b!6730322 () Bool)

(declare-fun e!4065979 () Bool)

(declare-fun e!4065980 () Bool)

(assert (=> b!6730322 (= e!4065979 e!4065980)))

(declare-fun c!1248011 () Bool)

(assert (=> b!6730322 (= c!1248011 ((_ is Star!16557) (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))

(declare-fun b!6730323 () Bool)

(declare-fun res!2753501 () Bool)

(declare-fun e!4065984 () Bool)

(assert (=> b!6730323 (=> (not res!2753501) (not e!4065984))))

(declare-fun call!607833 () Bool)

(assert (=> b!6730323 (= res!2753501 call!607833)))

(declare-fun e!4065982 () Bool)

(assert (=> b!6730323 (= e!4065982 e!4065984)))

(declare-fun c!1248010 () Bool)

(declare-fun bm!607828 () Bool)

(declare-fun call!607834 () Bool)

(assert (=> bm!607828 (= call!607834 (validRegex!8293 (ite c!1248011 (reg!16886 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))) (ite c!1248010 (regOne!33627 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))) (regOne!33626 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292))))))))))

(declare-fun d!2114670 () Bool)

(declare-fun res!2753502 () Bool)

(assert (=> d!2114670 (=> res!2753502 e!4065979)))

(assert (=> d!2114670 (= res!2753502 ((_ is ElementMatch!16557) (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))

(assert (=> d!2114670 (= (validRegex!8293 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))) e!4065979)))

(declare-fun b!6730324 () Bool)

(declare-fun call!607835 () Bool)

(assert (=> b!6730324 (= e!4065984 call!607835)))

(declare-fun bm!607829 () Bool)

(assert (=> bm!607829 (= call!607833 call!607834)))

(declare-fun b!6730325 () Bool)

(declare-fun e!4065983 () Bool)

(declare-fun e!4065985 () Bool)

(assert (=> b!6730325 (= e!4065983 e!4065985)))

(declare-fun res!2753500 () Bool)

(assert (=> b!6730325 (=> (not res!2753500) (not e!4065985))))

(assert (=> b!6730325 (= res!2753500 call!607833)))

(declare-fun b!6730326 () Bool)

(assert (=> b!6730326 (= e!4065980 e!4065982)))

(assert (=> b!6730326 (= c!1248010 ((_ is Union!16557) (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))

(declare-fun b!6730327 () Bool)

(declare-fun e!4065981 () Bool)

(assert (=> b!6730327 (= e!4065980 e!4065981)))

(declare-fun res!2753503 () Bool)

(assert (=> b!6730327 (= res!2753503 (not (nullable!6544 (reg!16886 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))))

(assert (=> b!6730327 (=> (not res!2753503) (not e!4065981))))

(declare-fun bm!607830 () Bool)

(assert (=> bm!607830 (= call!607835 (validRegex!8293 (ite c!1248010 (regTwo!33627 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))) (regTwo!33626 (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))))

(declare-fun b!6730328 () Bool)

(assert (=> b!6730328 (= e!4065981 call!607834)))

(declare-fun b!6730329 () Bool)

(declare-fun res!2753504 () Bool)

(assert (=> b!6730329 (=> res!2753504 e!4065983)))

(assert (=> b!6730329 (= res!2753504 (not ((_ is Concat!25402) (ite c!1247811 (reg!16886 r!7292) (ite c!1247810 (regOne!33627 r!7292) (regOne!33626 r!7292))))))))

(assert (=> b!6730329 (= e!4065982 e!4065983)))

(declare-fun b!6730330 () Bool)

(assert (=> b!6730330 (= e!4065985 call!607835)))

(assert (= (and d!2114670 (not res!2753502)) b!6730322))

(assert (= (and b!6730322 c!1248011) b!6730327))

(assert (= (and b!6730322 (not c!1248011)) b!6730326))

(assert (= (and b!6730327 res!2753503) b!6730328))

(assert (= (and b!6730326 c!1248010) b!6730323))

(assert (= (and b!6730326 (not c!1248010)) b!6730329))

(assert (= (and b!6730323 res!2753501) b!6730324))

(assert (= (and b!6730329 (not res!2753504)) b!6730325))

(assert (= (and b!6730325 res!2753500) b!6730330))

(assert (= (or b!6730324 b!6730330) bm!607830))

(assert (= (or b!6730323 b!6730325) bm!607829))

(assert (= (or b!6730328 bm!607829) bm!607828))

(declare-fun m!7489062 () Bool)

(assert (=> bm!607828 m!7489062))

(declare-fun m!7489064 () Bool)

(assert (=> b!6730327 m!7489064))

(declare-fun m!7489066 () Bool)

(assert (=> bm!607830 m!7489066))

(assert (=> bm!607738 d!2114670))

(declare-fun d!2114672 () Bool)

(assert (=> d!2114672 (= (nullable!6544 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (nullableFct!2457 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))

(declare-fun bs!1789916 () Bool)

(assert (= bs!1789916 d!2114672))

(declare-fun m!7489068 () Bool)

(assert (=> bs!1789916 m!7489068))

(assert (=> b!6729872 d!2114672))

(declare-fun d!2114674 () Bool)

(assert (=> d!2114674 (= (isEmpty!38179 (t!379657 (exprs!6441 (h!72296 zl!343)))) ((_ is Nil!65846) (t!379657 (exprs!6441 (h!72296 zl!343)))))))

(assert (=> b!6729820 d!2114674))

(declare-fun b!6730331 () Bool)

(declare-fun e!4065989 () (InoxSet Context!11882))

(declare-fun e!4065987 () (InoxSet Context!11882))

(assert (=> b!6730331 (= e!4065989 e!4065987)))

(declare-fun c!1248013 () Bool)

(assert (=> b!6730331 (= c!1248013 ((_ is Union!16557) (h!72294 (exprs!6441 lt!2437639))))))

(declare-fun c!1248016 () Bool)

(declare-fun call!607838 () (InoxSet Context!11882))

(declare-fun call!607839 () List!65970)

(declare-fun c!1248012 () Bool)

(declare-fun bm!607831 () Bool)

(assert (=> bm!607831 (= call!607838 (derivationStepZipperDown!1785 (ite c!1248013 (regTwo!33627 (h!72294 (exprs!6441 lt!2437639))) (ite c!1248012 (regTwo!33626 (h!72294 (exprs!6441 lt!2437639))) (ite c!1248016 (regOne!33626 (h!72294 (exprs!6441 lt!2437639))) (reg!16886 (h!72294 (exprs!6441 lt!2437639)))))) (ite (or c!1248013 c!1248012) (Context!11883 (t!379657 (exprs!6441 lt!2437639))) (Context!11883 call!607839)) (h!72295 s!2326)))))

(declare-fun b!6730332 () Bool)

(declare-fun call!607836 () (InoxSet Context!11882))

(assert (=> b!6730332 (= e!4065987 ((_ map or) call!607836 call!607838))))

(declare-fun b!6730333 () Bool)

(declare-fun e!4065991 () (InoxSet Context!11882))

(declare-fun e!4065990 () (InoxSet Context!11882))

(assert (=> b!6730333 (= e!4065991 e!4065990)))

(assert (=> b!6730333 (= c!1248016 ((_ is Concat!25402) (h!72294 (exprs!6441 lt!2437639))))))

(declare-fun bm!607832 () Bool)

(declare-fun call!607837 () List!65970)

(assert (=> bm!607832 (= call!607836 (derivationStepZipperDown!1785 (ite c!1248013 (regOne!33627 (h!72294 (exprs!6441 lt!2437639))) (regOne!33626 (h!72294 (exprs!6441 lt!2437639)))) (ite c!1248013 (Context!11883 (t!379657 (exprs!6441 lt!2437639))) (Context!11883 call!607837)) (h!72295 s!2326)))))

(declare-fun b!6730334 () Bool)

(declare-fun e!4065988 () (InoxSet Context!11882))

(declare-fun call!607841 () (InoxSet Context!11882))

(assert (=> b!6730334 (= e!4065988 call!607841)))

(declare-fun bm!607833 () Bool)

(assert (=> bm!607833 (= call!607837 ($colon$colon!2374 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 lt!2437639)))) (ite (or c!1248012 c!1248016) (regTwo!33626 (h!72294 (exprs!6441 lt!2437639))) (h!72294 (exprs!6441 lt!2437639)))))))

(declare-fun b!6730335 () Bool)

(declare-fun e!4065986 () Bool)

(assert (=> b!6730335 (= c!1248012 e!4065986)))

(declare-fun res!2753505 () Bool)

(assert (=> b!6730335 (=> (not res!2753505) (not e!4065986))))

(assert (=> b!6730335 (= res!2753505 ((_ is Concat!25402) (h!72294 (exprs!6441 lt!2437639))))))

(assert (=> b!6730335 (= e!4065987 e!4065991)))

(declare-fun b!6730336 () Bool)

(assert (=> b!6730336 (= e!4065990 call!607841)))

(declare-fun d!2114676 () Bool)

(declare-fun c!1248014 () Bool)

(assert (=> d!2114676 (= c!1248014 (and ((_ is ElementMatch!16557) (h!72294 (exprs!6441 lt!2437639))) (= (c!1247791 (h!72294 (exprs!6441 lt!2437639))) (h!72295 s!2326))))))

(assert (=> d!2114676 (= (derivationStepZipperDown!1785 (h!72294 (exprs!6441 lt!2437639)) (Context!11883 (t!379657 (exprs!6441 lt!2437639))) (h!72295 s!2326)) e!4065989)))

(declare-fun bm!607834 () Bool)

(declare-fun call!607840 () (InoxSet Context!11882))

(assert (=> bm!607834 (= call!607841 call!607840)))

(declare-fun b!6730337 () Bool)

(assert (=> b!6730337 (= e!4065988 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730338 () Bool)

(declare-fun c!1248015 () Bool)

(assert (=> b!6730338 (= c!1248015 ((_ is Star!16557) (h!72294 (exprs!6441 lt!2437639))))))

(assert (=> b!6730338 (= e!4065990 e!4065988)))

(declare-fun bm!607835 () Bool)

(assert (=> bm!607835 (= call!607839 call!607837)))

(declare-fun b!6730339 () Bool)

(assert (=> b!6730339 (= e!4065991 ((_ map or) call!607836 call!607840))))

(declare-fun bm!607836 () Bool)

(assert (=> bm!607836 (= call!607840 call!607838)))

(declare-fun b!6730340 () Bool)

(assert (=> b!6730340 (= e!4065989 (store ((as const (Array Context!11882 Bool)) false) (Context!11883 (t!379657 (exprs!6441 lt!2437639))) true))))

(declare-fun b!6730341 () Bool)

(assert (=> b!6730341 (= e!4065986 (nullable!6544 (regOne!33626 (h!72294 (exprs!6441 lt!2437639)))))))

(assert (= (and d!2114676 c!1248014) b!6730340))

(assert (= (and d!2114676 (not c!1248014)) b!6730331))

(assert (= (and b!6730331 c!1248013) b!6730332))

(assert (= (and b!6730331 (not c!1248013)) b!6730335))

(assert (= (and b!6730335 res!2753505) b!6730341))

(assert (= (and b!6730335 c!1248012) b!6730339))

(assert (= (and b!6730335 (not c!1248012)) b!6730333))

(assert (= (and b!6730333 c!1248016) b!6730336))

(assert (= (and b!6730333 (not c!1248016)) b!6730338))

(assert (= (and b!6730338 c!1248015) b!6730334))

(assert (= (and b!6730338 (not c!1248015)) b!6730337))

(assert (= (or b!6730336 b!6730334) bm!607835))

(assert (= (or b!6730336 b!6730334) bm!607834))

(assert (= (or b!6730339 bm!607835) bm!607833))

(assert (= (or b!6730339 bm!607834) bm!607836))

(assert (= (or b!6730332 bm!607836) bm!607831))

(assert (= (or b!6730332 b!6730339) bm!607832))

(declare-fun m!7489070 () Bool)

(assert (=> bm!607831 m!7489070))

(declare-fun m!7489072 () Bool)

(assert (=> b!6730340 m!7489072))

(declare-fun m!7489074 () Bool)

(assert (=> bm!607833 m!7489074))

(declare-fun m!7489076 () Bool)

(assert (=> bm!607832 m!7489076))

(declare-fun m!7489078 () Bool)

(assert (=> b!6730341 m!7489078))

(assert (=> bm!607802 d!2114676))

(declare-fun bm!607837 () Bool)

(declare-fun call!607842 () Bool)

(assert (=> bm!607837 (= call!607842 (isEmpty!38177 (_1!36835 (get!22907 lt!2437731))))))

(declare-fun b!6730343 () Bool)

(declare-fun e!4065998 () Bool)

(assert (=> b!6730343 (= e!4065998 (not (= (head!13540 (_1!36835 (get!22907 lt!2437731))) (c!1247791 (reg!16886 r!7292)))))))

(declare-fun b!6730344 () Bool)

(declare-fun e!4065992 () Bool)

(declare-fun e!4065997 () Bool)

(assert (=> b!6730344 (= e!4065992 e!4065997)))

(declare-fun c!1248018 () Bool)

(assert (=> b!6730344 (= c!1248018 ((_ is EmptyLang!16557) (reg!16886 r!7292)))))

(declare-fun b!6730345 () Bool)

(declare-fun e!4065995 () Bool)

(assert (=> b!6730345 (= e!4065995 e!4065998)))

(declare-fun res!2753510 () Bool)

(assert (=> b!6730345 (=> res!2753510 e!4065998)))

(assert (=> b!6730345 (= res!2753510 call!607842)))

(declare-fun b!6730346 () Bool)

(declare-fun res!2753509 () Bool)

(assert (=> b!6730346 (=> res!2753509 e!4065998)))

(assert (=> b!6730346 (= res!2753509 (not (isEmpty!38177 (tail!12625 (_1!36835 (get!22907 lt!2437731))))))))

(declare-fun b!6730347 () Bool)

(declare-fun e!4065993 () Bool)

(assert (=> b!6730347 (= e!4065993 e!4065995)))

(declare-fun res!2753507 () Bool)

(assert (=> b!6730347 (=> (not res!2753507) (not e!4065995))))

(declare-fun lt!2437747 () Bool)

(assert (=> b!6730347 (= res!2753507 (not lt!2437747))))

(declare-fun b!6730348 () Bool)

(declare-fun e!4065994 () Bool)

(assert (=> b!6730348 (= e!4065994 (nullable!6544 (reg!16886 r!7292)))))

(declare-fun b!6730349 () Bool)

(declare-fun e!4065996 () Bool)

(assert (=> b!6730349 (= e!4065996 (= (head!13540 (_1!36835 (get!22907 lt!2437731))) (c!1247791 (reg!16886 r!7292))))))

(declare-fun b!6730350 () Bool)

(declare-fun res!2753513 () Bool)

(assert (=> b!6730350 (=> res!2753513 e!4065993)))

(assert (=> b!6730350 (= res!2753513 e!4065996)))

(declare-fun res!2753506 () Bool)

(assert (=> b!6730350 (=> (not res!2753506) (not e!4065996))))

(assert (=> b!6730350 (= res!2753506 lt!2437747)))

(declare-fun b!6730351 () Bool)

(assert (=> b!6730351 (= e!4065992 (= lt!2437747 call!607842))))

(declare-fun b!6730342 () Bool)

(assert (=> b!6730342 (= e!4065994 (matchR!8740 (derivativeStep!5229 (reg!16886 r!7292) (head!13540 (_1!36835 (get!22907 lt!2437731)))) (tail!12625 (_1!36835 (get!22907 lt!2437731)))))))

(declare-fun d!2114678 () Bool)

(assert (=> d!2114678 e!4065992))

(declare-fun c!1248017 () Bool)

(assert (=> d!2114678 (= c!1248017 ((_ is EmptyExpr!16557) (reg!16886 r!7292)))))

(assert (=> d!2114678 (= lt!2437747 e!4065994)))

(declare-fun c!1248019 () Bool)

(assert (=> d!2114678 (= c!1248019 (isEmpty!38177 (_1!36835 (get!22907 lt!2437731))))))

(assert (=> d!2114678 (validRegex!8293 (reg!16886 r!7292))))

(assert (=> d!2114678 (= (matchR!8740 (reg!16886 r!7292) (_1!36835 (get!22907 lt!2437731))) lt!2437747)))

(declare-fun b!6730352 () Bool)

(declare-fun res!2753508 () Bool)

(assert (=> b!6730352 (=> (not res!2753508) (not e!4065996))))

(assert (=> b!6730352 (= res!2753508 (isEmpty!38177 (tail!12625 (_1!36835 (get!22907 lt!2437731)))))))

(declare-fun b!6730353 () Bool)

(declare-fun res!2753511 () Bool)

(assert (=> b!6730353 (=> res!2753511 e!4065993)))

(assert (=> b!6730353 (= res!2753511 (not ((_ is ElementMatch!16557) (reg!16886 r!7292))))))

(assert (=> b!6730353 (= e!4065997 e!4065993)))

(declare-fun b!6730354 () Bool)

(assert (=> b!6730354 (= e!4065997 (not lt!2437747))))

(declare-fun b!6730355 () Bool)

(declare-fun res!2753512 () Bool)

(assert (=> b!6730355 (=> (not res!2753512) (not e!4065996))))

(assert (=> b!6730355 (= res!2753512 (not call!607842))))

(assert (= (and d!2114678 c!1248019) b!6730348))

(assert (= (and d!2114678 (not c!1248019)) b!6730342))

(assert (= (and d!2114678 c!1248017) b!6730351))

(assert (= (and d!2114678 (not c!1248017)) b!6730344))

(assert (= (and b!6730344 c!1248018) b!6730354))

(assert (= (and b!6730344 (not c!1248018)) b!6730353))

(assert (= (and b!6730353 (not res!2753511)) b!6730350))

(assert (= (and b!6730350 res!2753506) b!6730355))

(assert (= (and b!6730355 res!2753512) b!6730352))

(assert (= (and b!6730352 res!2753508) b!6730349))

(assert (= (and b!6730350 (not res!2753513)) b!6730347))

(assert (= (and b!6730347 res!2753507) b!6730345))

(assert (= (and b!6730345 (not res!2753510)) b!6730346))

(assert (= (and b!6730346 (not res!2753509)) b!6730343))

(assert (= (or b!6730351 b!6730345 b!6730355) bm!607837))

(declare-fun m!7489080 () Bool)

(assert (=> bm!607837 m!7489080))

(declare-fun m!7489082 () Bool)

(assert (=> b!6730343 m!7489082))

(assert (=> b!6730349 m!7489082))

(assert (=> b!6730342 m!7489082))

(assert (=> b!6730342 m!7489082))

(declare-fun m!7489084 () Bool)

(assert (=> b!6730342 m!7489084))

(declare-fun m!7489086 () Bool)

(assert (=> b!6730342 m!7489086))

(assert (=> b!6730342 m!7489084))

(assert (=> b!6730342 m!7489086))

(declare-fun m!7489088 () Bool)

(assert (=> b!6730342 m!7489088))

(assert (=> b!6730346 m!7489086))

(assert (=> b!6730346 m!7489086))

(declare-fun m!7489090 () Bool)

(assert (=> b!6730346 m!7489090))

(assert (=> b!6730352 m!7489086))

(assert (=> b!6730352 m!7489086))

(assert (=> b!6730352 m!7489090))

(assert (=> b!6730348 m!7488546))

(assert (=> d!2114678 m!7489080))

(assert (=> d!2114678 m!7488866))

(assert (=> b!6730176 d!2114678))

(declare-fun d!2114680 () Bool)

(assert (=> d!2114680 (= (get!22907 lt!2437731) (v!52643 lt!2437731))))

(assert (=> b!6730176 d!2114680))

(declare-fun d!2114682 () Bool)

(assert (=> d!2114682 (= (isEmpty!38177 (t!379658 s!2326)) ((_ is Nil!65847) (t!379658 s!2326)))))

(assert (=> d!2114558 d!2114682))

(declare-fun d!2114684 () Bool)

(assert (=> d!2114684 true))

(declare-fun setRes!45908 () Bool)

(assert (=> d!2114684 setRes!45908))

(declare-fun condSetEmpty!45908 () Bool)

(declare-fun res!2753516 () (InoxSet Context!11882))

(assert (=> d!2114684 (= condSetEmpty!45908 (= res!2753516 ((as const (Array Context!11882 Bool)) false)))))

(assert (=> d!2114684 (= (choose!50149 z!1189 lambda!377655) res!2753516)))

(declare-fun setIsEmpty!45908 () Bool)

(assert (=> setIsEmpty!45908 setRes!45908))

(declare-fun e!4066001 () Bool)

(declare-fun setNonEmpty!45908 () Bool)

(declare-fun tp!1845274 () Bool)

(declare-fun setElem!45908 () Context!11882)

(assert (=> setNonEmpty!45908 (= setRes!45908 (and tp!1845274 (inv!84639 setElem!45908) e!4066001))))

(declare-fun setRest!45908 () (InoxSet Context!11882))

(assert (=> setNonEmpty!45908 (= res!2753516 ((_ map or) (store ((as const (Array Context!11882 Bool)) false) setElem!45908 true) setRest!45908))))

(declare-fun b!6730358 () Bool)

(declare-fun tp!1845275 () Bool)

(assert (=> b!6730358 (= e!4066001 tp!1845275)))

(assert (= (and d!2114684 condSetEmpty!45908) setIsEmpty!45908))

(assert (= (and d!2114684 (not condSetEmpty!45908)) setNonEmpty!45908))

(assert (= setNonEmpty!45908 b!6730358))

(declare-fun m!7489092 () Bool)

(assert (=> setNonEmpty!45908 m!7489092))

(assert (=> d!2114508 d!2114684))

(declare-fun d!2114686 () Bool)

(assert (=> d!2114686 (= (nullable!6544 (h!72294 (exprs!6441 lt!2437639))) (nullableFct!2457 (h!72294 (exprs!6441 lt!2437639))))))

(declare-fun bs!1789917 () Bool)

(assert (= bs!1789917 d!2114686))

(declare-fun m!7489094 () Bool)

(assert (=> bs!1789917 m!7489094))

(assert (=> b!6729890 d!2114686))

(declare-fun d!2114688 () Bool)

(assert (=> d!2114688 (= (nullable!6544 r!7292) (nullableFct!2457 r!7292))))

(declare-fun bs!1789918 () Bool)

(assert (= bs!1789918 d!2114688))

(declare-fun m!7489096 () Bool)

(assert (=> bs!1789918 m!7489096))

(assert (=> b!6729738 d!2114688))

(declare-fun d!2114690 () Bool)

(assert (=> d!2114690 (= (isEmpty!38179 (tail!12626 (exprs!6441 (h!72296 zl!343)))) ((_ is Nil!65846) (tail!12626 (exprs!6441 (h!72296 zl!343)))))))

(assert (=> b!6729824 d!2114690))

(declare-fun d!2114692 () Bool)

(assert (=> d!2114692 (= (tail!12626 (exprs!6441 (h!72296 zl!343))) (t!379657 (exprs!6441 (h!72296 zl!343))))))

(assert (=> b!6729824 d!2114692))

(declare-fun b!6730359 () Bool)

(declare-fun e!4066002 () Bool)

(declare-fun e!4066003 () Bool)

(assert (=> b!6730359 (= e!4066002 e!4066003)))

(declare-fun c!1248021 () Bool)

(assert (=> b!6730359 (= c!1248021 ((_ is Star!16557) lt!2437700))))

(declare-fun b!6730360 () Bool)

(declare-fun res!2753518 () Bool)

(declare-fun e!4066007 () Bool)

(assert (=> b!6730360 (=> (not res!2753518) (not e!4066007))))

(declare-fun call!607843 () Bool)

(assert (=> b!6730360 (= res!2753518 call!607843)))

(declare-fun e!4066005 () Bool)

(assert (=> b!6730360 (= e!4066005 e!4066007)))

(declare-fun c!1248020 () Bool)

(declare-fun bm!607838 () Bool)

(declare-fun call!607844 () Bool)

(assert (=> bm!607838 (= call!607844 (validRegex!8293 (ite c!1248021 (reg!16886 lt!2437700) (ite c!1248020 (regOne!33627 lt!2437700) (regOne!33626 lt!2437700)))))))

(declare-fun d!2114694 () Bool)

(declare-fun res!2753519 () Bool)

(assert (=> d!2114694 (=> res!2753519 e!4066002)))

(assert (=> d!2114694 (= res!2753519 ((_ is ElementMatch!16557) lt!2437700))))

(assert (=> d!2114694 (= (validRegex!8293 lt!2437700) e!4066002)))

(declare-fun b!6730361 () Bool)

(declare-fun call!607845 () Bool)

(assert (=> b!6730361 (= e!4066007 call!607845)))

(declare-fun bm!607839 () Bool)

(assert (=> bm!607839 (= call!607843 call!607844)))

(declare-fun b!6730362 () Bool)

(declare-fun e!4066006 () Bool)

(declare-fun e!4066008 () Bool)

(assert (=> b!6730362 (= e!4066006 e!4066008)))

(declare-fun res!2753517 () Bool)

(assert (=> b!6730362 (=> (not res!2753517) (not e!4066008))))

(assert (=> b!6730362 (= res!2753517 call!607843)))

(declare-fun b!6730363 () Bool)

(assert (=> b!6730363 (= e!4066003 e!4066005)))

(assert (=> b!6730363 (= c!1248020 ((_ is Union!16557) lt!2437700))))

(declare-fun b!6730364 () Bool)

(declare-fun e!4066004 () Bool)

(assert (=> b!6730364 (= e!4066003 e!4066004)))

(declare-fun res!2753520 () Bool)

(assert (=> b!6730364 (= res!2753520 (not (nullable!6544 (reg!16886 lt!2437700))))))

(assert (=> b!6730364 (=> (not res!2753520) (not e!4066004))))

(declare-fun bm!607840 () Bool)

(assert (=> bm!607840 (= call!607845 (validRegex!8293 (ite c!1248020 (regTwo!33627 lt!2437700) (regTwo!33626 lt!2437700))))))

(declare-fun b!6730365 () Bool)

(assert (=> b!6730365 (= e!4066004 call!607844)))

(declare-fun b!6730366 () Bool)

(declare-fun res!2753521 () Bool)

(assert (=> b!6730366 (=> res!2753521 e!4066006)))

(assert (=> b!6730366 (= res!2753521 (not ((_ is Concat!25402) lt!2437700)))))

(assert (=> b!6730366 (= e!4066005 e!4066006)))

(declare-fun b!6730367 () Bool)

(assert (=> b!6730367 (= e!4066008 call!607845)))

(assert (= (and d!2114694 (not res!2753519)) b!6730359))

(assert (= (and b!6730359 c!1248021) b!6730364))

(assert (= (and b!6730359 (not c!1248021)) b!6730363))

(assert (= (and b!6730364 res!2753520) b!6730365))

(assert (= (and b!6730363 c!1248020) b!6730360))

(assert (= (and b!6730363 (not c!1248020)) b!6730366))

(assert (= (and b!6730360 res!2753518) b!6730361))

(assert (= (and b!6730366 (not res!2753521)) b!6730362))

(assert (= (and b!6730362 res!2753517) b!6730367))

(assert (= (or b!6730361 b!6730367) bm!607840))

(assert (= (or b!6730360 b!6730362) bm!607839))

(assert (= (or b!6730365 bm!607839) bm!607838))

(declare-fun m!7489098 () Bool)

(assert (=> bm!607838 m!7489098))

(declare-fun m!7489100 () Bool)

(assert (=> b!6730364 m!7489100))

(declare-fun m!7489102 () Bool)

(assert (=> bm!607840 m!7489102))

(assert (=> d!2114568 d!2114694))

(declare-fun d!2114696 () Bool)

(declare-fun res!2753526 () Bool)

(declare-fun e!4066013 () Bool)

(assert (=> d!2114696 (=> res!2753526 e!4066013)))

(assert (=> d!2114696 (= res!2753526 ((_ is Nil!65846) (unfocusZipperList!1978 zl!343)))))

(assert (=> d!2114696 (= (forall!15757 (unfocusZipperList!1978 zl!343) lambda!377701) e!4066013)))

(declare-fun b!6730372 () Bool)

(declare-fun e!4066014 () Bool)

(assert (=> b!6730372 (= e!4066013 e!4066014)))

(declare-fun res!2753527 () Bool)

(assert (=> b!6730372 (=> (not res!2753527) (not e!4066014))))

(declare-fun dynLambda!26266 (Int Regex!16557) Bool)

(assert (=> b!6730372 (= res!2753527 (dynLambda!26266 lambda!377701 (h!72294 (unfocusZipperList!1978 zl!343))))))

(declare-fun b!6730373 () Bool)

(assert (=> b!6730373 (= e!4066014 (forall!15757 (t!379657 (unfocusZipperList!1978 zl!343)) lambda!377701))))

(assert (= (and d!2114696 (not res!2753526)) b!6730372))

(assert (= (and b!6730372 res!2753527) b!6730373))

(declare-fun b_lambda!253389 () Bool)

(assert (=> (not b_lambda!253389) (not b!6730372)))

(declare-fun m!7489104 () Bool)

(assert (=> b!6730372 m!7489104))

(declare-fun m!7489106 () Bool)

(assert (=> b!6730373 m!7489106))

(assert (=> d!2114568 d!2114696))

(declare-fun b!6730374 () Bool)

(declare-fun e!4066018 () (InoxSet Context!11882))

(declare-fun e!4066016 () (InoxSet Context!11882))

(assert (=> b!6730374 (= e!4066018 e!4066016)))

(declare-fun c!1248023 () Bool)

(assert (=> b!6730374 (= c!1248023 ((_ is Union!16557) (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))))))

(declare-fun c!1248026 () Bool)

(declare-fun call!607849 () List!65970)

(declare-fun bm!607841 () Bool)

(declare-fun c!1248022 () Bool)

(declare-fun call!607848 () (InoxSet Context!11882))

(assert (=> bm!607841 (= call!607848 (derivationStepZipperDown!1785 (ite c!1248023 (regTwo!33627 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))) (ite c!1248022 (regTwo!33626 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))) (ite c!1248026 (regOne!33626 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))) (reg!16886 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292))))))) (ite (or c!1248023 c!1248022) (ite c!1247907 (Context!11883 lt!2437634) (Context!11883 call!607802)) (Context!11883 call!607849)) (h!72295 s!2326)))))

(declare-fun b!6730375 () Bool)

(declare-fun call!607846 () (InoxSet Context!11882))

(assert (=> b!6730375 (= e!4066016 ((_ map or) call!607846 call!607848))))

(declare-fun b!6730376 () Bool)

(declare-fun e!4066020 () (InoxSet Context!11882))

(declare-fun e!4066019 () (InoxSet Context!11882))

(assert (=> b!6730376 (= e!4066020 e!4066019)))

(assert (=> b!6730376 (= c!1248026 ((_ is Concat!25402) (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))))))

(declare-fun call!607847 () List!65970)

(declare-fun bm!607842 () Bool)

(assert (=> bm!607842 (= call!607846 (derivationStepZipperDown!1785 (ite c!1248023 (regOne!33627 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))) (regOne!33626 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292))))) (ite c!1248023 (ite c!1247907 (Context!11883 lt!2437634) (Context!11883 call!607802)) (Context!11883 call!607847)) (h!72295 s!2326)))))

(declare-fun b!6730377 () Bool)

(declare-fun e!4066017 () (InoxSet Context!11882))

(declare-fun call!607851 () (InoxSet Context!11882))

(assert (=> b!6730377 (= e!4066017 call!607851)))

(declare-fun bm!607843 () Bool)

(assert (=> bm!607843 (= call!607847 ($colon$colon!2374 (exprs!6441 (ite c!1247907 (Context!11883 lt!2437634) (Context!11883 call!607802))) (ite (or c!1248022 c!1248026) (regTwo!33626 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))) (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292))))))))

(declare-fun b!6730378 () Bool)

(declare-fun e!4066015 () Bool)

(assert (=> b!6730378 (= c!1248022 e!4066015)))

(declare-fun res!2753528 () Bool)

(assert (=> b!6730378 (=> (not res!2753528) (not e!4066015))))

(assert (=> b!6730378 (= res!2753528 ((_ is Concat!25402) (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))))))

(assert (=> b!6730378 (= e!4066016 e!4066020)))

(declare-fun b!6730379 () Bool)

(assert (=> b!6730379 (= e!4066019 call!607851)))

(declare-fun c!1248024 () Bool)

(declare-fun d!2114698 () Bool)

(assert (=> d!2114698 (= c!1248024 (and ((_ is ElementMatch!16557) (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))) (= (c!1247791 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))) (h!72295 s!2326))))))

(assert (=> d!2114698 (= (derivationStepZipperDown!1785 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292))) (ite c!1247907 (Context!11883 lt!2437634) (Context!11883 call!607802)) (h!72295 s!2326)) e!4066018)))

(declare-fun bm!607844 () Bool)

(declare-fun call!607850 () (InoxSet Context!11882))

(assert (=> bm!607844 (= call!607851 call!607850)))

(declare-fun b!6730380 () Bool)

(assert (=> b!6730380 (= e!4066017 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730381 () Bool)

(declare-fun c!1248025 () Bool)

(assert (=> b!6730381 (= c!1248025 ((_ is Star!16557) (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292)))))))

(assert (=> b!6730381 (= e!4066019 e!4066017)))

(declare-fun bm!607845 () Bool)

(assert (=> bm!607845 (= call!607849 call!607847)))

(declare-fun b!6730382 () Bool)

(assert (=> b!6730382 (= e!4066020 ((_ map or) call!607846 call!607850))))

(declare-fun bm!607846 () Bool)

(assert (=> bm!607846 (= call!607850 call!607848)))

(declare-fun b!6730383 () Bool)

(assert (=> b!6730383 (= e!4066018 (store ((as const (Array Context!11882 Bool)) false) (ite c!1247907 (Context!11883 lt!2437634) (Context!11883 call!607802)) true))))

(declare-fun b!6730384 () Bool)

(assert (=> b!6730384 (= e!4066015 (nullable!6544 (regOne!33626 (ite c!1247907 (regOne!33627 (reg!16886 r!7292)) (regOne!33626 (reg!16886 r!7292))))))))

(assert (= (and d!2114698 c!1248024) b!6730383))

(assert (= (and d!2114698 (not c!1248024)) b!6730374))

(assert (= (and b!6730374 c!1248023) b!6730375))

(assert (= (and b!6730374 (not c!1248023)) b!6730378))

(assert (= (and b!6730378 res!2753528) b!6730384))

(assert (= (and b!6730378 c!1248022) b!6730382))

(assert (= (and b!6730378 (not c!1248022)) b!6730376))

(assert (= (and b!6730376 c!1248026) b!6730379))

(assert (= (and b!6730376 (not c!1248026)) b!6730381))

(assert (= (and b!6730381 c!1248025) b!6730377))

(assert (= (and b!6730381 (not c!1248025)) b!6730380))

(assert (= (or b!6730379 b!6730377) bm!607845))

(assert (= (or b!6730379 b!6730377) bm!607844))

(assert (= (or b!6730382 bm!607845) bm!607843))

(assert (= (or b!6730382 bm!607844) bm!607846))

(assert (= (or b!6730375 bm!607846) bm!607841))

(assert (= (or b!6730375 b!6730382) bm!607842))

(declare-fun m!7489108 () Bool)

(assert (=> bm!607841 m!7489108))

(declare-fun m!7489110 () Bool)

(assert (=> b!6730383 m!7489110))

(declare-fun m!7489112 () Bool)

(assert (=> bm!607843 m!7489112))

(declare-fun m!7489114 () Bool)

(assert (=> bm!607842 m!7489114))

(declare-fun m!7489116 () Bool)

(assert (=> b!6730384 m!7489116))

(assert (=> bm!607797 d!2114698))

(declare-fun d!2114700 () Bool)

(assert (=> d!2114700 (= ($colon$colon!2374 (exprs!6441 (Context!11883 lt!2437634)) (ite (or c!1247906 c!1247910) (regTwo!33626 (reg!16886 r!7292)) (reg!16886 r!7292))) (Cons!65846 (ite (or c!1247906 c!1247910) (regTwo!33626 (reg!16886 r!7292)) (reg!16886 r!7292)) (exprs!6441 (Context!11883 lt!2437634))))))

(assert (=> bm!607798 d!2114700))

(declare-fun b!6730385 () Bool)

(declare-fun e!4066021 () Bool)

(declare-fun e!4066022 () Bool)

(assert (=> b!6730385 (= e!4066021 e!4066022)))

(declare-fun c!1248028 () Bool)

(assert (=> b!6730385 (= c!1248028 ((_ is Star!16557) (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))))))

(declare-fun b!6730386 () Bool)

(declare-fun res!2753530 () Bool)

(declare-fun e!4066026 () Bool)

(assert (=> b!6730386 (=> (not res!2753530) (not e!4066026))))

(declare-fun call!607852 () Bool)

(assert (=> b!6730386 (= res!2753530 call!607852)))

(declare-fun e!4066024 () Bool)

(assert (=> b!6730386 (= e!4066024 e!4066026)))

(declare-fun bm!607847 () Bool)

(declare-fun c!1248027 () Bool)

(declare-fun call!607853 () Bool)

(assert (=> bm!607847 (= call!607853 (validRegex!8293 (ite c!1248028 (reg!16886 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))) (ite c!1248027 (regOne!33627 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))) (regOne!33626 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292)))))))))

(declare-fun d!2114702 () Bool)

(declare-fun res!2753531 () Bool)

(assert (=> d!2114702 (=> res!2753531 e!4066021)))

(assert (=> d!2114702 (= res!2753531 ((_ is ElementMatch!16557) (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))))))

(assert (=> d!2114702 (= (validRegex!8293 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))) e!4066021)))

(declare-fun b!6730387 () Bool)

(declare-fun call!607854 () Bool)

(assert (=> b!6730387 (= e!4066026 call!607854)))

(declare-fun bm!607848 () Bool)

(assert (=> bm!607848 (= call!607852 call!607853)))

(declare-fun b!6730388 () Bool)

(declare-fun e!4066025 () Bool)

(declare-fun e!4066027 () Bool)

(assert (=> b!6730388 (= e!4066025 e!4066027)))

(declare-fun res!2753529 () Bool)

(assert (=> b!6730388 (=> (not res!2753529) (not e!4066027))))

(assert (=> b!6730388 (= res!2753529 call!607852)))

(declare-fun b!6730389 () Bool)

(assert (=> b!6730389 (= e!4066022 e!4066024)))

(assert (=> b!6730389 (= c!1248027 ((_ is Union!16557) (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))))))

(declare-fun b!6730390 () Bool)

(declare-fun e!4066023 () Bool)

(assert (=> b!6730390 (= e!4066022 e!4066023)))

(declare-fun res!2753532 () Bool)

(assert (=> b!6730390 (= res!2753532 (not (nullable!6544 (reg!16886 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))))))))

(assert (=> b!6730390 (=> (not res!2753532) (not e!4066023))))

(declare-fun bm!607849 () Bool)

(assert (=> bm!607849 (= call!607854 (validRegex!8293 (ite c!1248027 (regTwo!33627 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))) (regTwo!33626 (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292))))))))

(declare-fun b!6730391 () Bool)

(assert (=> b!6730391 (= e!4066023 call!607853)))

(declare-fun b!6730392 () Bool)

(declare-fun res!2753533 () Bool)

(assert (=> b!6730392 (=> res!2753533 e!4066025)))

(assert (=> b!6730392 (= res!2753533 (not ((_ is Concat!25402) (ite c!1247810 (regTwo!33627 r!7292) (regTwo!33626 r!7292)))))))

(assert (=> b!6730392 (= e!4066024 e!4066025)))

(declare-fun b!6730393 () Bool)

(assert (=> b!6730393 (= e!4066027 call!607854)))

(assert (= (and d!2114702 (not res!2753531)) b!6730385))

(assert (= (and b!6730385 c!1248028) b!6730390))

(assert (= (and b!6730385 (not c!1248028)) b!6730389))

(assert (= (and b!6730390 res!2753532) b!6730391))

(assert (= (and b!6730389 c!1248027) b!6730386))

(assert (= (and b!6730389 (not c!1248027)) b!6730392))

(assert (= (and b!6730386 res!2753530) b!6730387))

(assert (= (and b!6730392 (not res!2753533)) b!6730388))

(assert (= (and b!6730388 res!2753529) b!6730393))

(assert (= (or b!6730387 b!6730393) bm!607849))

(assert (= (or b!6730386 b!6730388) bm!607848))

(assert (= (or b!6730391 bm!607848) bm!607847))

(declare-fun m!7489118 () Bool)

(assert (=> bm!607847 m!7489118))

(declare-fun m!7489120 () Bool)

(assert (=> b!6730390 m!7489120))

(declare-fun m!7489122 () Bool)

(assert (=> bm!607849 m!7489122))

(assert (=> bm!607740 d!2114702))

(declare-fun d!2114704 () Bool)

(declare-fun c!1248029 () Bool)

(assert (=> d!2114704 (= c!1248029 (isEmpty!38177 (tail!12625 (t!379658 s!2326))))))

(declare-fun e!4066028 () Bool)

(assert (=> d!2114704 (= (matchZipper!2543 (derivationStepZipper!2501 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (head!13540 (t!379658 s!2326))) (tail!12625 (t!379658 s!2326))) e!4066028)))

(declare-fun b!6730394 () Bool)

(assert (=> b!6730394 (= e!4066028 (nullableZipper!2272 (derivationStepZipper!2501 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (head!13540 (t!379658 s!2326)))))))

(declare-fun b!6730395 () Bool)

(assert (=> b!6730395 (= e!4066028 (matchZipper!2543 (derivationStepZipper!2501 (derivationStepZipper!2501 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (head!13540 (t!379658 s!2326))) (head!13540 (tail!12625 (t!379658 s!2326)))) (tail!12625 (tail!12625 (t!379658 s!2326)))))))

(assert (= (and d!2114704 c!1248029) b!6730394))

(assert (= (and d!2114704 (not c!1248029)) b!6730395))

(assert (=> d!2114704 m!7488752))

(declare-fun m!7489124 () Bool)

(assert (=> d!2114704 m!7489124))

(assert (=> b!6730394 m!7488750))

(declare-fun m!7489126 () Bool)

(assert (=> b!6730394 m!7489126))

(assert (=> b!6730395 m!7488752))

(declare-fun m!7489128 () Bool)

(assert (=> b!6730395 m!7489128))

(assert (=> b!6730395 m!7488750))

(assert (=> b!6730395 m!7489128))

(declare-fun m!7489130 () Bool)

(assert (=> b!6730395 m!7489130))

(assert (=> b!6730395 m!7488752))

(declare-fun m!7489132 () Bool)

(assert (=> b!6730395 m!7489132))

(assert (=> b!6730395 m!7489130))

(assert (=> b!6730395 m!7489132))

(declare-fun m!7489134 () Bool)

(assert (=> b!6730395 m!7489134))

(assert (=> b!6729916 d!2114704))

(declare-fun bs!1789919 () Bool)

(declare-fun d!2114706 () Bool)

(assert (= bs!1789919 (and d!2114706 b!6729480)))

(declare-fun lambda!377741 () Int)

(assert (=> bs!1789919 (= (= (head!13540 (t!379658 s!2326)) (h!72295 s!2326)) (= lambda!377741 lambda!377655))))

(declare-fun bs!1789920 () Bool)

(assert (= bs!1789920 (and d!2114706 d!2114542)))

(assert (=> bs!1789920 (= (= (head!13540 (t!379658 s!2326)) (h!72295 s!2326)) (= lambda!377741 lambda!377691))))

(declare-fun bs!1789921 () Bool)

(assert (= bs!1789921 (and d!2114706 d!2114560)))

(assert (=> bs!1789921 (= (= (head!13540 (t!379658 s!2326)) (h!72295 s!2326)) (= lambda!377741 lambda!377695))))

(assert (=> d!2114706 true))

(assert (=> d!2114706 (= (derivationStepZipper!2501 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) (head!13540 (t!379658 s!2326))) (flatMap!2038 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) lambda!377741))))

(declare-fun bs!1789922 () Bool)

(assert (= bs!1789922 d!2114706))

(assert (=> bs!1789922 m!7488512))

(declare-fun m!7489136 () Bool)

(assert (=> bs!1789922 m!7489136))

(assert (=> b!6729916 d!2114706))

(declare-fun d!2114708 () Bool)

(assert (=> d!2114708 (= (head!13540 (t!379658 s!2326)) (h!72295 (t!379658 s!2326)))))

(assert (=> b!6729916 d!2114708))

(declare-fun d!2114710 () Bool)

(assert (=> d!2114710 (= (tail!12625 (t!379658 s!2326)) (t!379658 (t!379658 s!2326)))))

(assert (=> b!6729916 d!2114710))

(assert (=> d!2114616 d!2114606))

(declare-fun bs!1789923 () Bool)

(declare-fun d!2114712 () Bool)

(assert (= bs!1789923 (and d!2114712 b!6729674)))

(declare-fun lambda!377744 () Int)

(assert (=> bs!1789923 (not (= lambda!377744 lambda!377669))))

(declare-fun bs!1789924 () Bool)

(assert (= bs!1789924 (and d!2114712 d!2114580)))

(assert (=> bs!1789924 (not (= lambda!377744 lambda!377715))))

(declare-fun bs!1789925 () Bool)

(assert (= bs!1789925 (and d!2114712 b!6730241)))

(assert (=> bs!1789925 (not (= lambda!377744 lambda!377734))))

(declare-fun bs!1789926 () Bool)

(assert (= bs!1789926 (and d!2114712 d!2114592)))

(assert (=> bs!1789926 (= (= r!7292 (Star!16557 (reg!16886 r!7292))) (= lambda!377744 lambda!377722))))

(declare-fun bs!1789927 () Bool)

(assert (= bs!1789927 (and d!2114712 b!6729675)))

(assert (=> bs!1789927 (not (= lambda!377744 lambda!377670))))

(declare-fun bs!1789928 () Bool)

(assert (= bs!1789928 (and d!2114712 b!6729490)))

(assert (=> bs!1789928 (not (= lambda!377744 lambda!377654))))

(declare-fun bs!1789929 () Bool)

(assert (= bs!1789929 (and d!2114712 d!2114616)))

(assert (=> bs!1789929 (= lambda!377744 lambda!377732)))

(assert (=> bs!1789926 (not (= lambda!377744 lambda!377725))))

(declare-fun bs!1789930 () Bool)

(assert (= bs!1789930 (and d!2114712 b!6730242)))

(assert (=> bs!1789930 (not (= lambda!377744 lambda!377735))))

(assert (=> bs!1789928 (not (= lambda!377744 lambda!377653))))

(assert (=> bs!1789924 (= lambda!377744 lambda!377714)))

(assert (=> bs!1789928 (= lambda!377744 lambda!377652)))

(assert (=> d!2114712 true))

(assert (=> d!2114712 true))

(assert (=> d!2114712 true))

(assert (=> d!2114712 (= (isDefined!13147 (findConcatSeparation!2858 (reg!16886 r!7292) r!7292 Nil!65847 s!2326 s!2326)) (Exists!3625 lambda!377744))))

(assert (=> d!2114712 true))

(declare-fun _$89!2947 () Unit!159805)

(assert (=> d!2114712 (= (choose!50160 (reg!16886 r!7292) r!7292 s!2326) _$89!2947)))

(declare-fun bs!1789931 () Bool)

(assert (= bs!1789931 d!2114712))

(assert (=> bs!1789931 m!7488478))

(assert (=> bs!1789931 m!7488478))

(assert (=> bs!1789931 m!7488484))

(declare-fun m!7489148 () Bool)

(assert (=> bs!1789931 m!7489148))

(assert (=> d!2114616 d!2114712))

(declare-fun d!2114718 () Bool)

(assert (=> d!2114718 (= (Exists!3625 lambda!377732) (choose!50157 lambda!377732))))

(declare-fun bs!1789933 () Bool)

(assert (= bs!1789933 d!2114718))

(declare-fun m!7489150 () Bool)

(assert (=> bs!1789933 m!7489150))

(assert (=> d!2114616 d!2114718))

(assert (=> d!2114616 d!2114608))

(assert (=> d!2114616 d!2114668))

(declare-fun d!2114720 () Bool)

(assert (=> d!2114720 (= (flatMap!2038 z!1189 lambda!377691) (choose!50149 z!1189 lambda!377691))))

(declare-fun bs!1789935 () Bool)

(assert (= bs!1789935 d!2114720))

(declare-fun m!7489152 () Bool)

(assert (=> bs!1789935 m!7489152))

(assert (=> d!2114542 d!2114720))

(declare-fun d!2114722 () Bool)

(assert (=> d!2114722 (= (isEmpty!38177 (tail!12625 s!2326)) ((_ is Nil!65847) (tail!12625 s!2326)))))

(assert (=> b!6729744 d!2114722))

(declare-fun d!2114724 () Bool)

(assert (=> d!2114724 (= (tail!12625 s!2326) (t!379658 s!2326))))

(assert (=> b!6729744 d!2114724))

(assert (=> bs!1789883 d!2114510))

(declare-fun b!6730402 () Bool)

(declare-fun e!4066035 () (InoxSet Context!11882))

(declare-fun e!4066033 () (InoxSet Context!11882))

(assert (=> b!6730402 (= e!4066035 e!4066033)))

(declare-fun c!1248032 () Bool)

(assert (=> b!6730402 (= c!1248032 ((_ is Union!16557) (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))))))

(declare-fun call!607858 () List!65970)

(declare-fun bm!607850 () Bool)

(declare-fun call!607857 () (InoxSet Context!11882))

(declare-fun c!1248031 () Bool)

(declare-fun c!1248035 () Bool)

(assert (=> bm!607850 (= call!607857 (derivationStepZipperDown!1785 (ite c!1248032 (regTwo!33627 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))) (ite c!1248031 (regTwo!33626 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))) (ite c!1248035 (regOne!33626 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))) (reg!16886 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292)))))) (ite (or c!1248032 c!1248031) (ite c!1247898 (Context!11883 Nil!65846) (Context!11883 call!607795)) (Context!11883 call!607858)) (h!72295 s!2326)))))

(declare-fun b!6730403 () Bool)

(declare-fun call!607855 () (InoxSet Context!11882))

(assert (=> b!6730403 (= e!4066033 ((_ map or) call!607855 call!607857))))

(declare-fun b!6730404 () Bool)

(declare-fun e!4066037 () (InoxSet Context!11882))

(declare-fun e!4066036 () (InoxSet Context!11882))

(assert (=> b!6730404 (= e!4066037 e!4066036)))

(assert (=> b!6730404 (= c!1248035 ((_ is Concat!25402) (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))))))

(declare-fun bm!607851 () Bool)

(declare-fun call!607856 () List!65970)

(assert (=> bm!607851 (= call!607855 (derivationStepZipperDown!1785 (ite c!1248032 (regOne!33627 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))) (regOne!33626 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292)))) (ite c!1248032 (ite c!1247898 (Context!11883 Nil!65846) (Context!11883 call!607795)) (Context!11883 call!607856)) (h!72295 s!2326)))))

(declare-fun b!6730405 () Bool)

(declare-fun e!4066034 () (InoxSet Context!11882))

(declare-fun call!607860 () (InoxSet Context!11882))

(assert (=> b!6730405 (= e!4066034 call!607860)))

(declare-fun bm!607852 () Bool)

(assert (=> bm!607852 (= call!607856 ($colon$colon!2374 (exprs!6441 (ite c!1247898 (Context!11883 Nil!65846) (Context!11883 call!607795))) (ite (or c!1248031 c!1248035) (regTwo!33626 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))) (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))

(declare-fun b!6730406 () Bool)

(declare-fun e!4066032 () Bool)

(assert (=> b!6730406 (= c!1248031 e!4066032)))

(declare-fun res!2753538 () Bool)

(assert (=> b!6730406 (=> (not res!2753538) (not e!4066032))))

(assert (=> b!6730406 (= res!2753538 ((_ is Concat!25402) (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))))))

(assert (=> b!6730406 (= e!4066033 e!4066037)))

(declare-fun b!6730407 () Bool)

(assert (=> b!6730407 (= e!4066036 call!607860)))

(declare-fun d!2114726 () Bool)

(declare-fun c!1248033 () Bool)

(assert (=> d!2114726 (= c!1248033 (and ((_ is ElementMatch!16557) (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))) (= (c!1247791 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))) (h!72295 s!2326))))))

(assert (=> d!2114726 (= (derivationStepZipperDown!1785 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292)) (ite c!1247898 (Context!11883 Nil!65846) (Context!11883 call!607795)) (h!72295 s!2326)) e!4066035)))

(declare-fun bm!607853 () Bool)

(declare-fun call!607859 () (InoxSet Context!11882))

(assert (=> bm!607853 (= call!607860 call!607859)))

(declare-fun b!6730408 () Bool)

(assert (=> b!6730408 (= e!4066034 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730409 () Bool)

(declare-fun c!1248034 () Bool)

(assert (=> b!6730409 (= c!1248034 ((_ is Star!16557) (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292))))))

(assert (=> b!6730409 (= e!4066036 e!4066034)))

(declare-fun bm!607854 () Bool)

(assert (=> bm!607854 (= call!607858 call!607856)))

(declare-fun b!6730410 () Bool)

(assert (=> b!6730410 (= e!4066037 ((_ map or) call!607855 call!607859))))

(declare-fun bm!607855 () Bool)

(assert (=> bm!607855 (= call!607859 call!607857)))

(declare-fun b!6730411 () Bool)

(assert (=> b!6730411 (= e!4066035 (store ((as const (Array Context!11882 Bool)) false) (ite c!1247898 (Context!11883 Nil!65846) (Context!11883 call!607795)) true))))

(declare-fun b!6730412 () Bool)

(assert (=> b!6730412 (= e!4066032 (nullable!6544 (regOne!33626 (ite c!1247898 (regOne!33627 r!7292) (regOne!33626 r!7292)))))))

(assert (= (and d!2114726 c!1248033) b!6730411))

(assert (= (and d!2114726 (not c!1248033)) b!6730402))

(assert (= (and b!6730402 c!1248032) b!6730403))

(assert (= (and b!6730402 (not c!1248032)) b!6730406))

(assert (= (and b!6730406 res!2753538) b!6730412))

(assert (= (and b!6730406 c!1248031) b!6730410))

(assert (= (and b!6730406 (not c!1248031)) b!6730404))

(assert (= (and b!6730404 c!1248035) b!6730407))

(assert (= (and b!6730404 (not c!1248035)) b!6730409))

(assert (= (and b!6730409 c!1248034) b!6730405))

(assert (= (and b!6730409 (not c!1248034)) b!6730408))

(assert (= (or b!6730407 b!6730405) bm!607854))

(assert (= (or b!6730407 b!6730405) bm!607853))

(assert (= (or b!6730410 bm!607854) bm!607852))

(assert (= (or b!6730410 bm!607853) bm!607855))

(assert (= (or b!6730403 bm!607855) bm!607850))

(assert (= (or b!6730403 b!6730410) bm!607851))

(declare-fun m!7489156 () Bool)

(assert (=> bm!607850 m!7489156))

(declare-fun m!7489158 () Bool)

(assert (=> b!6730411 m!7489158))

(declare-fun m!7489160 () Bool)

(assert (=> bm!607852 m!7489160))

(declare-fun m!7489162 () Bool)

(assert (=> bm!607851 m!7489162))

(declare-fun m!7489164 () Bool)

(assert (=> b!6730412 m!7489164))

(assert (=> bm!607790 d!2114726))

(declare-fun d!2114730 () Bool)

(assert (=> d!2114730 (= (isEmpty!38179 (tail!12626 (unfocusZipperList!1978 zl!343))) ((_ is Nil!65846) (tail!12626 (unfocusZipperList!1978 zl!343))))))

(assert (=> b!6729954 d!2114730))

(declare-fun d!2114732 () Bool)

(assert (=> d!2114732 (= (tail!12626 (unfocusZipperList!1978 zl!343)) (t!379657 (unfocusZipperList!1978 zl!343)))))

(assert (=> b!6729954 d!2114732))

(declare-fun d!2114736 () Bool)

(declare-fun c!1248036 () Bool)

(assert (=> d!2114736 (= c!1248036 (isEmpty!38177 (tail!12625 s!2326)))))

(declare-fun e!4066038 () Bool)

(assert (=> d!2114736 (= (matchZipper!2543 (derivationStepZipper!2501 lt!2437631 (head!13540 s!2326)) (tail!12625 s!2326)) e!4066038)))

(declare-fun b!6730413 () Bool)

(assert (=> b!6730413 (= e!4066038 (nullableZipper!2272 (derivationStepZipper!2501 lt!2437631 (head!13540 s!2326))))))

(declare-fun b!6730414 () Bool)

(assert (=> b!6730414 (= e!4066038 (matchZipper!2543 (derivationStepZipper!2501 (derivationStepZipper!2501 lt!2437631 (head!13540 s!2326)) (head!13540 (tail!12625 s!2326))) (tail!12625 (tail!12625 s!2326))))))

(assert (= (and d!2114736 c!1248036) b!6730413))

(assert (= (and d!2114736 (not c!1248036)) b!6730414))

(assert (=> d!2114736 m!7488600))

(assert (=> d!2114736 m!7488604))

(assert (=> b!6730413 m!7488740))

(declare-fun m!7489166 () Bool)

(assert (=> b!6730413 m!7489166))

(assert (=> b!6730414 m!7488600))

(declare-fun m!7489168 () Bool)

(assert (=> b!6730414 m!7489168))

(assert (=> b!6730414 m!7488740))

(assert (=> b!6730414 m!7489168))

(declare-fun m!7489170 () Bool)

(assert (=> b!6730414 m!7489170))

(assert (=> b!6730414 m!7488600))

(declare-fun m!7489172 () Bool)

(assert (=> b!6730414 m!7489172))

(assert (=> b!6730414 m!7489170))

(assert (=> b!6730414 m!7489172))

(declare-fun m!7489174 () Bool)

(assert (=> b!6730414 m!7489174))

(assert (=> b!6729910 d!2114736))

(declare-fun bs!1789938 () Bool)

(declare-fun d!2114738 () Bool)

(assert (= bs!1789938 (and d!2114738 b!6729480)))

(declare-fun lambda!377746 () Int)

(assert (=> bs!1789938 (= (= (head!13540 s!2326) (h!72295 s!2326)) (= lambda!377746 lambda!377655))))

(declare-fun bs!1789939 () Bool)

(assert (= bs!1789939 (and d!2114738 d!2114542)))

(assert (=> bs!1789939 (= (= (head!13540 s!2326) (h!72295 s!2326)) (= lambda!377746 lambda!377691))))

(declare-fun bs!1789940 () Bool)

(assert (= bs!1789940 (and d!2114738 d!2114560)))

(assert (=> bs!1789940 (= (= (head!13540 s!2326) (h!72295 s!2326)) (= lambda!377746 lambda!377695))))

(declare-fun bs!1789941 () Bool)

(assert (= bs!1789941 (and d!2114738 d!2114706)))

(assert (=> bs!1789941 (= (= (head!13540 s!2326) (head!13540 (t!379658 s!2326))) (= lambda!377746 lambda!377741))))

(assert (=> d!2114738 true))

(assert (=> d!2114738 (= (derivationStepZipper!2501 lt!2437631 (head!13540 s!2326)) (flatMap!2038 lt!2437631 lambda!377746))))

(declare-fun bs!1789942 () Bool)

(assert (= bs!1789942 d!2114738))

(declare-fun m!7489176 () Bool)

(assert (=> bs!1789942 m!7489176))

(assert (=> b!6729910 d!2114738))

(assert (=> b!6729910 d!2114642))

(assert (=> b!6729910 d!2114724))

(assert (=> d!2114494 d!2114602))

(assert (=> d!2114494 d!2114486))

(declare-fun d!2114742 () Bool)

(assert (=> d!2114742 true))

(assert (=> d!2114742 true))

(declare-fun res!2753539 () Bool)

(assert (=> d!2114742 (= (choose!50157 lambda!377652) res!2753539)))

(assert (=> d!2114578 d!2114742))

(declare-fun bm!607856 () Bool)

(declare-fun call!607861 () Bool)

(assert (=> bm!607856 (= call!607861 (isEmpty!38177 (tail!12625 s!2326)))))

(declare-fun b!6730416 () Bool)

(declare-fun e!4066045 () Bool)

(assert (=> b!6730416 (= e!4066045 (not (= (head!13540 (tail!12625 s!2326)) (c!1247791 (derivativeStep!5229 r!7292 (head!13540 s!2326))))))))

(declare-fun b!6730417 () Bool)

(declare-fun e!4066039 () Bool)

(declare-fun e!4066044 () Bool)

(assert (=> b!6730417 (= e!4066039 e!4066044)))

(declare-fun c!1248038 () Bool)

(assert (=> b!6730417 (= c!1248038 ((_ is EmptyLang!16557) (derivativeStep!5229 r!7292 (head!13540 s!2326))))))

(declare-fun b!6730418 () Bool)

(declare-fun e!4066042 () Bool)

(assert (=> b!6730418 (= e!4066042 e!4066045)))

(declare-fun res!2753544 () Bool)

(assert (=> b!6730418 (=> res!2753544 e!4066045)))

(assert (=> b!6730418 (= res!2753544 call!607861)))

(declare-fun b!6730419 () Bool)

(declare-fun res!2753543 () Bool)

(assert (=> b!6730419 (=> res!2753543 e!4066045)))

(assert (=> b!6730419 (= res!2753543 (not (isEmpty!38177 (tail!12625 (tail!12625 s!2326)))))))

(declare-fun b!6730420 () Bool)

(declare-fun e!4066040 () Bool)

(assert (=> b!6730420 (= e!4066040 e!4066042)))

(declare-fun res!2753541 () Bool)

(assert (=> b!6730420 (=> (not res!2753541) (not e!4066042))))

(declare-fun lt!2437748 () Bool)

(assert (=> b!6730420 (= res!2753541 (not lt!2437748))))

(declare-fun b!6730421 () Bool)

(declare-fun e!4066041 () Bool)

(assert (=> b!6730421 (= e!4066041 (nullable!6544 (derivativeStep!5229 r!7292 (head!13540 s!2326))))))

(declare-fun b!6730422 () Bool)

(declare-fun e!4066043 () Bool)

(assert (=> b!6730422 (= e!4066043 (= (head!13540 (tail!12625 s!2326)) (c!1247791 (derivativeStep!5229 r!7292 (head!13540 s!2326)))))))

(declare-fun b!6730423 () Bool)

(declare-fun res!2753547 () Bool)

(assert (=> b!6730423 (=> res!2753547 e!4066040)))

(assert (=> b!6730423 (= res!2753547 e!4066043)))

(declare-fun res!2753540 () Bool)

(assert (=> b!6730423 (=> (not res!2753540) (not e!4066043))))

(assert (=> b!6730423 (= res!2753540 lt!2437748)))

(declare-fun b!6730424 () Bool)

(assert (=> b!6730424 (= e!4066039 (= lt!2437748 call!607861))))

(declare-fun b!6730415 () Bool)

(assert (=> b!6730415 (= e!4066041 (matchR!8740 (derivativeStep!5229 (derivativeStep!5229 r!7292 (head!13540 s!2326)) (head!13540 (tail!12625 s!2326))) (tail!12625 (tail!12625 s!2326))))))

(declare-fun d!2114744 () Bool)

(assert (=> d!2114744 e!4066039))

(declare-fun c!1248037 () Bool)

(assert (=> d!2114744 (= c!1248037 ((_ is EmptyExpr!16557) (derivativeStep!5229 r!7292 (head!13540 s!2326))))))

(assert (=> d!2114744 (= lt!2437748 e!4066041)))

(declare-fun c!1248039 () Bool)

(assert (=> d!2114744 (= c!1248039 (isEmpty!38177 (tail!12625 s!2326)))))

(assert (=> d!2114744 (validRegex!8293 (derivativeStep!5229 r!7292 (head!13540 s!2326)))))

(assert (=> d!2114744 (= (matchR!8740 (derivativeStep!5229 r!7292 (head!13540 s!2326)) (tail!12625 s!2326)) lt!2437748)))

(declare-fun b!6730425 () Bool)

(declare-fun res!2753542 () Bool)

(assert (=> b!6730425 (=> (not res!2753542) (not e!4066043))))

(assert (=> b!6730425 (= res!2753542 (isEmpty!38177 (tail!12625 (tail!12625 s!2326))))))

(declare-fun b!6730426 () Bool)

(declare-fun res!2753545 () Bool)

(assert (=> b!6730426 (=> res!2753545 e!4066040)))

(assert (=> b!6730426 (= res!2753545 (not ((_ is ElementMatch!16557) (derivativeStep!5229 r!7292 (head!13540 s!2326)))))))

(assert (=> b!6730426 (= e!4066044 e!4066040)))

(declare-fun b!6730427 () Bool)

(assert (=> b!6730427 (= e!4066044 (not lt!2437748))))

(declare-fun b!6730428 () Bool)

(declare-fun res!2753546 () Bool)

(assert (=> b!6730428 (=> (not res!2753546) (not e!4066043))))

(assert (=> b!6730428 (= res!2753546 (not call!607861))))

(assert (= (and d!2114744 c!1248039) b!6730421))

(assert (= (and d!2114744 (not c!1248039)) b!6730415))

(assert (= (and d!2114744 c!1248037) b!6730424))

(assert (= (and d!2114744 (not c!1248037)) b!6730417))

(assert (= (and b!6730417 c!1248038) b!6730427))

(assert (= (and b!6730417 (not c!1248038)) b!6730426))

(assert (= (and b!6730426 (not res!2753545)) b!6730423))

(assert (= (and b!6730423 res!2753540) b!6730428))

(assert (= (and b!6730428 res!2753546) b!6730425))

(assert (= (and b!6730425 res!2753542) b!6730422))

(assert (= (and b!6730423 (not res!2753547)) b!6730420))

(assert (= (and b!6730420 res!2753541) b!6730418))

(assert (= (and b!6730418 (not res!2753544)) b!6730419))

(assert (= (and b!6730419 (not res!2753543)) b!6730416))

(assert (= (or b!6730424 b!6730418 b!6730428) bm!607856))

(assert (=> bm!607856 m!7488600))

(assert (=> bm!607856 m!7488604))

(assert (=> b!6730416 m!7488600))

(assert (=> b!6730416 m!7489168))

(assert (=> b!6730422 m!7488600))

(assert (=> b!6730422 m!7489168))

(assert (=> b!6730415 m!7488600))

(assert (=> b!6730415 m!7489168))

(assert (=> b!6730415 m!7488598))

(assert (=> b!6730415 m!7489168))

(declare-fun m!7489180 () Bool)

(assert (=> b!6730415 m!7489180))

(assert (=> b!6730415 m!7488600))

(assert (=> b!6730415 m!7489172))

(assert (=> b!6730415 m!7489180))

(assert (=> b!6730415 m!7489172))

(declare-fun m!7489182 () Bool)

(assert (=> b!6730415 m!7489182))

(assert (=> b!6730419 m!7488600))

(assert (=> b!6730419 m!7489172))

(assert (=> b!6730419 m!7489172))

(declare-fun m!7489184 () Bool)

(assert (=> b!6730419 m!7489184))

(assert (=> b!6730425 m!7488600))

(assert (=> b!6730425 m!7489172))

(assert (=> b!6730425 m!7489172))

(assert (=> b!6730425 m!7489184))

(assert (=> b!6730421 m!7488598))

(declare-fun m!7489186 () Bool)

(assert (=> b!6730421 m!7489186))

(assert (=> d!2114744 m!7488600))

(assert (=> d!2114744 m!7488604))

(assert (=> d!2114744 m!7488598))

(declare-fun m!7489188 () Bool)

(assert (=> d!2114744 m!7489188))

(assert (=> b!6729732 d!2114744))

(declare-fun b!6730484 () Bool)

(declare-fun e!4066086 () Regex!16557)

(declare-fun e!4066084 () Regex!16557)

(assert (=> b!6730484 (= e!4066086 e!4066084)))

(declare-fun c!1248061 () Bool)

(assert (=> b!6730484 (= c!1248061 ((_ is ElementMatch!16557) r!7292))))

(declare-fun b!6730485 () Bool)

(declare-fun e!4066087 () Regex!16557)

(declare-fun call!607878 () Regex!16557)

(declare-fun call!607880 () Regex!16557)

(assert (=> b!6730485 (= e!4066087 (Union!16557 call!607878 call!607880))))

(declare-fun b!6730486 () Bool)

(assert (=> b!6730486 (= e!4066084 (ite (= (head!13540 s!2326) (c!1247791 r!7292)) EmptyExpr!16557 EmptyLang!16557))))

(declare-fun b!6730487 () Bool)

(declare-fun c!1248058 () Bool)

(assert (=> b!6730487 (= c!1248058 ((_ is Union!16557) r!7292))))

(assert (=> b!6730487 (= e!4066084 e!4066087)))

(declare-fun bm!607873 () Bool)

(declare-fun c!1248062 () Bool)

(assert (=> bm!607873 (= call!607880 (derivativeStep!5229 (ite c!1248058 (regTwo!33627 r!7292) (ite c!1248062 (reg!16886 r!7292) (regOne!33626 r!7292))) (head!13540 s!2326)))))

(declare-fun b!6730488 () Bool)

(declare-fun e!4066083 () Regex!16557)

(declare-fun call!607879 () Regex!16557)

(assert (=> b!6730488 (= e!4066083 (Concat!25402 call!607879 r!7292))))

(declare-fun c!1248059 () Bool)

(declare-fun bm!607874 () Bool)

(assert (=> bm!607874 (= call!607878 (derivativeStep!5229 (ite c!1248058 (regOne!33627 r!7292) (ite c!1248059 (regTwo!33626 r!7292) (regOne!33626 r!7292))) (head!13540 s!2326)))))

(declare-fun d!2114748 () Bool)

(declare-fun lt!2437751 () Regex!16557)

(assert (=> d!2114748 (validRegex!8293 lt!2437751)))

(assert (=> d!2114748 (= lt!2437751 e!4066086)))

(declare-fun c!1248060 () Bool)

(assert (=> d!2114748 (= c!1248060 (or ((_ is EmptyExpr!16557) r!7292) ((_ is EmptyLang!16557) r!7292)))))

(assert (=> d!2114748 (validRegex!8293 r!7292)))

(assert (=> d!2114748 (= (derivativeStep!5229 r!7292 (head!13540 s!2326)) lt!2437751)))

(declare-fun b!6730489 () Bool)

(assert (=> b!6730489 (= e!4066086 EmptyLang!16557)))

(declare-fun b!6730490 () Bool)

(assert (=> b!6730490 (= c!1248059 (nullable!6544 (regOne!33626 r!7292)))))

(declare-fun e!4066085 () Regex!16557)

(assert (=> b!6730490 (= e!4066083 e!4066085)))

(declare-fun bm!607875 () Bool)

(declare-fun call!607881 () Regex!16557)

(assert (=> bm!607875 (= call!607881 call!607878)))

(declare-fun b!6730491 () Bool)

(assert (=> b!6730491 (= e!4066087 e!4066083)))

(assert (=> b!6730491 (= c!1248062 ((_ is Star!16557) r!7292))))

(declare-fun b!6730492 () Bool)

(assert (=> b!6730492 (= e!4066085 (Union!16557 (Concat!25402 call!607881 (regTwo!33626 r!7292)) EmptyLang!16557))))

(declare-fun b!6730493 () Bool)

(assert (=> b!6730493 (= e!4066085 (Union!16557 (Concat!25402 call!607879 (regTwo!33626 r!7292)) call!607881))))

(declare-fun bm!607876 () Bool)

(assert (=> bm!607876 (= call!607879 call!607880)))

(assert (= (and d!2114748 c!1248060) b!6730489))

(assert (= (and d!2114748 (not c!1248060)) b!6730484))

(assert (= (and b!6730484 c!1248061) b!6730486))

(assert (= (and b!6730484 (not c!1248061)) b!6730487))

(assert (= (and b!6730487 c!1248058) b!6730485))

(assert (= (and b!6730487 (not c!1248058)) b!6730491))

(assert (= (and b!6730491 c!1248062) b!6730488))

(assert (= (and b!6730491 (not c!1248062)) b!6730490))

(assert (= (and b!6730490 c!1248059) b!6730493))

(assert (= (and b!6730490 (not c!1248059)) b!6730492))

(assert (= (or b!6730493 b!6730492) bm!607875))

(assert (= (or b!6730488 b!6730493) bm!607876))

(assert (= (or b!6730485 bm!607876) bm!607873))

(assert (= (or b!6730485 bm!607875) bm!607874))

(assert (=> bm!607873 m!7488596))

(declare-fun m!7489206 () Bool)

(assert (=> bm!607873 m!7489206))

(assert (=> bm!607874 m!7488596))

(declare-fun m!7489208 () Bool)

(assert (=> bm!607874 m!7489208))

(declare-fun m!7489210 () Bool)

(assert (=> d!2114748 m!7489210))

(assert (=> d!2114748 m!7488456))

(assert (=> b!6730490 m!7488698))

(assert (=> b!6729732 d!2114748))

(assert (=> b!6729732 d!2114642))

(assert (=> b!6729732 d!2114724))

(declare-fun d!2114762 () Bool)

(assert (=> d!2114762 (= (isEmpty!38179 (unfocusZipperList!1978 zl!343)) ((_ is Nil!65846) (unfocusZipperList!1978 zl!343)))))

(assert (=> b!6729958 d!2114762))

(assert (=> bm!607750 d!2114602))

(declare-fun d!2114764 () Bool)

(declare-fun res!2753571 () Bool)

(declare-fun e!4066092 () Bool)

(assert (=> d!2114764 (=> res!2753571 e!4066092)))

(assert (=> d!2114764 (= res!2753571 ((_ is Nil!65848) lt!2437695))))

(assert (=> d!2114764 (= (noDuplicate!2350 lt!2437695) e!4066092)))

(declare-fun b!6730498 () Bool)

(declare-fun e!4066093 () Bool)

(assert (=> b!6730498 (= e!4066092 e!4066093)))

(declare-fun res!2753572 () Bool)

(assert (=> b!6730498 (=> (not res!2753572) (not e!4066093))))

(declare-fun contains!20254 (List!65972 Context!11882) Bool)

(assert (=> b!6730498 (= res!2753572 (not (contains!20254 (t!379659 lt!2437695) (h!72296 lt!2437695))))))

(declare-fun b!6730499 () Bool)

(assert (=> b!6730499 (= e!4066093 (noDuplicate!2350 (t!379659 lt!2437695)))))

(assert (= (and d!2114764 (not res!2753571)) b!6730498))

(assert (= (and b!6730498 res!2753572) b!6730499))

(declare-fun m!7489212 () Bool)

(assert (=> b!6730498 m!7489212))

(declare-fun m!7489214 () Bool)

(assert (=> b!6730499 m!7489214))

(assert (=> d!2114564 d!2114764))

(declare-fun d!2114766 () Bool)

(declare-fun e!4066102 () Bool)

(assert (=> d!2114766 e!4066102))

(declare-fun res!2753578 () Bool)

(assert (=> d!2114766 (=> (not res!2753578) (not e!4066102))))

(declare-fun res!2753577 () List!65972)

(assert (=> d!2114766 (= res!2753578 (noDuplicate!2350 res!2753577))))

(declare-fun e!4066100 () Bool)

(assert (=> d!2114766 e!4066100))

(assert (=> d!2114766 (= (choose!50156 z!1189) res!2753577)))

(declare-fun b!6730507 () Bool)

(declare-fun e!4066101 () Bool)

(declare-fun tp!1845281 () Bool)

(assert (=> b!6730507 (= e!4066101 tp!1845281)))

(declare-fun b!6730506 () Bool)

(declare-fun tp!1845280 () Bool)

(assert (=> b!6730506 (= e!4066100 (and (inv!84639 (h!72296 res!2753577)) e!4066101 tp!1845280))))

(declare-fun b!6730508 () Bool)

(assert (=> b!6730508 (= e!4066102 (= (content!12783 res!2753577) z!1189))))

(assert (= b!6730506 b!6730507))

(assert (= (and d!2114766 ((_ is Cons!65848) res!2753577)) b!6730506))

(assert (= (and d!2114766 res!2753578) b!6730508))

(declare-fun m!7489216 () Bool)

(assert (=> d!2114766 m!7489216))

(declare-fun m!7489218 () Bool)

(assert (=> b!6730506 m!7489218))

(declare-fun m!7489220 () Bool)

(assert (=> b!6730508 m!7489220))

(assert (=> d!2114564 d!2114766))

(declare-fun b!6730509 () Bool)

(declare-fun e!4066103 () Bool)

(declare-fun e!4066104 () Bool)

(assert (=> b!6730509 (= e!4066103 e!4066104)))

(declare-fun c!1248064 () Bool)

(assert (=> b!6730509 (= c!1248064 ((_ is Star!16557) lt!2437678))))

(declare-fun b!6730510 () Bool)

(declare-fun res!2753580 () Bool)

(declare-fun e!4066108 () Bool)

(assert (=> b!6730510 (=> (not res!2753580) (not e!4066108))))

(declare-fun call!607882 () Bool)

(assert (=> b!6730510 (= res!2753580 call!607882)))

(declare-fun e!4066106 () Bool)

(assert (=> b!6730510 (= e!4066106 e!4066108)))

(declare-fun bm!607877 () Bool)

(declare-fun c!1248063 () Bool)

(declare-fun call!607883 () Bool)

(assert (=> bm!607877 (= call!607883 (validRegex!8293 (ite c!1248064 (reg!16886 lt!2437678) (ite c!1248063 (regOne!33627 lt!2437678) (regOne!33626 lt!2437678)))))))

(declare-fun d!2114768 () Bool)

(declare-fun res!2753581 () Bool)

(assert (=> d!2114768 (=> res!2753581 e!4066103)))

(assert (=> d!2114768 (= res!2753581 ((_ is ElementMatch!16557) lt!2437678))))

(assert (=> d!2114768 (= (validRegex!8293 lt!2437678) e!4066103)))

(declare-fun b!6730511 () Bool)

(declare-fun call!607884 () Bool)

(assert (=> b!6730511 (= e!4066108 call!607884)))

(declare-fun bm!607878 () Bool)

(assert (=> bm!607878 (= call!607882 call!607883)))

(declare-fun b!6730512 () Bool)

(declare-fun e!4066107 () Bool)

(declare-fun e!4066109 () Bool)

(assert (=> b!6730512 (= e!4066107 e!4066109)))

(declare-fun res!2753579 () Bool)

(assert (=> b!6730512 (=> (not res!2753579) (not e!4066109))))

(assert (=> b!6730512 (= res!2753579 call!607882)))

(declare-fun b!6730513 () Bool)

(assert (=> b!6730513 (= e!4066104 e!4066106)))

(assert (=> b!6730513 (= c!1248063 ((_ is Union!16557) lt!2437678))))

(declare-fun b!6730514 () Bool)

(declare-fun e!4066105 () Bool)

(assert (=> b!6730514 (= e!4066104 e!4066105)))

(declare-fun res!2753582 () Bool)

(assert (=> b!6730514 (= res!2753582 (not (nullable!6544 (reg!16886 lt!2437678))))))

(assert (=> b!6730514 (=> (not res!2753582) (not e!4066105))))

(declare-fun bm!607879 () Bool)

(assert (=> bm!607879 (= call!607884 (validRegex!8293 (ite c!1248063 (regTwo!33627 lt!2437678) (regTwo!33626 lt!2437678))))))

(declare-fun b!6730515 () Bool)

(assert (=> b!6730515 (= e!4066105 call!607883)))

(declare-fun b!6730516 () Bool)

(declare-fun res!2753583 () Bool)

(assert (=> b!6730516 (=> res!2753583 e!4066107)))

(assert (=> b!6730516 (= res!2753583 (not ((_ is Concat!25402) lt!2437678)))))

(assert (=> b!6730516 (= e!4066106 e!4066107)))

(declare-fun b!6730517 () Bool)

(assert (=> b!6730517 (= e!4066109 call!607884)))

(assert (= (and d!2114768 (not res!2753581)) b!6730509))

(assert (= (and b!6730509 c!1248064) b!6730514))

(assert (= (and b!6730509 (not c!1248064)) b!6730513))

(assert (= (and b!6730514 res!2753582) b!6730515))

(assert (= (and b!6730513 c!1248063) b!6730510))

(assert (= (and b!6730513 (not c!1248063)) b!6730516))

(assert (= (and b!6730510 res!2753580) b!6730511))

(assert (= (and b!6730516 (not res!2753583)) b!6730512))

(assert (= (and b!6730512 res!2753579) b!6730517))

(assert (= (or b!6730511 b!6730517) bm!607879))

(assert (= (or b!6730510 b!6730512) bm!607878))

(assert (= (or b!6730515 bm!607878) bm!607877))

(declare-fun m!7489222 () Bool)

(assert (=> bm!607877 m!7489222))

(declare-fun m!7489224 () Bool)

(assert (=> b!6730514 m!7489224))

(declare-fun m!7489226 () Bool)

(assert (=> bm!607879 m!7489226))

(assert (=> d!2114528 d!2114768))

(declare-fun d!2114770 () Bool)

(declare-fun res!2753584 () Bool)

(declare-fun e!4066110 () Bool)

(assert (=> d!2114770 (=> res!2753584 e!4066110)))

(assert (=> d!2114770 (= res!2753584 ((_ is Nil!65846) (exprs!6441 (h!72296 zl!343))))))

(assert (=> d!2114770 (= (forall!15757 (exprs!6441 (h!72296 zl!343)) lambda!377682) e!4066110)))

(declare-fun b!6730518 () Bool)

(declare-fun e!4066111 () Bool)

(assert (=> b!6730518 (= e!4066110 e!4066111)))

(declare-fun res!2753585 () Bool)

(assert (=> b!6730518 (=> (not res!2753585) (not e!4066111))))

(assert (=> b!6730518 (= res!2753585 (dynLambda!26266 lambda!377682 (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6730519 () Bool)

(assert (=> b!6730519 (= e!4066111 (forall!15757 (t!379657 (exprs!6441 (h!72296 zl!343))) lambda!377682))))

(assert (= (and d!2114770 (not res!2753584)) b!6730518))

(assert (= (and b!6730518 res!2753585) b!6730519))

(declare-fun b_lambda!253393 () Bool)

(assert (=> (not b_lambda!253393) (not b!6730518)))

(declare-fun m!7489228 () Bool)

(assert (=> b!6730518 m!7489228))

(declare-fun m!7489230 () Bool)

(assert (=> b!6730519 m!7489230))

(assert (=> d!2114528 d!2114770))

(declare-fun bs!1789957 () Bool)

(declare-fun b!6730523 () Bool)

(assert (= bs!1789957 (and b!6730523 d!2114712)))

(declare-fun lambda!377749 () Int)

(assert (=> bs!1789957 (not (= lambda!377749 lambda!377744))))

(declare-fun bs!1789958 () Bool)

(assert (= bs!1789958 (and b!6730523 b!6729674)))

(assert (=> bs!1789958 (= (and (= (reg!16886 (regOne!33627 r!7292)) (reg!16886 r!7292)) (= (regOne!33627 r!7292) r!7292)) (= lambda!377749 lambda!377669))))

(declare-fun bs!1789959 () Bool)

(assert (= bs!1789959 (and b!6730523 d!2114580)))

(assert (=> bs!1789959 (not (= lambda!377749 lambda!377715))))

(declare-fun bs!1789960 () Bool)

(assert (= bs!1789960 (and b!6730523 b!6730241)))

(assert (=> bs!1789960 (= (and (= (reg!16886 (regOne!33627 r!7292)) (reg!16886 (regTwo!33627 r!7292))) (= (regOne!33627 r!7292) (regTwo!33627 r!7292))) (= lambda!377749 lambda!377734))))

(declare-fun bs!1789961 () Bool)

(assert (= bs!1789961 (and b!6730523 d!2114592)))

(assert (=> bs!1789961 (not (= lambda!377749 lambda!377722))))

(declare-fun bs!1789962 () Bool)

(assert (= bs!1789962 (and b!6730523 b!6729675)))

(assert (=> bs!1789962 (not (= lambda!377749 lambda!377670))))

(declare-fun bs!1789963 () Bool)

(assert (= bs!1789963 (and b!6730523 b!6729490)))

(assert (=> bs!1789963 (not (= lambda!377749 lambda!377654))))

(declare-fun bs!1789964 () Bool)

(assert (= bs!1789964 (and b!6730523 d!2114616)))

(assert (=> bs!1789964 (not (= lambda!377749 lambda!377732))))

(assert (=> bs!1789961 (= (and (= (reg!16886 (regOne!33627 r!7292)) (reg!16886 r!7292)) (= (regOne!33627 r!7292) (Star!16557 (reg!16886 r!7292)))) (= lambda!377749 lambda!377725))))

(declare-fun bs!1789965 () Bool)

(assert (= bs!1789965 (and b!6730523 b!6730242)))

(assert (=> bs!1789965 (not (= lambda!377749 lambda!377735))))

(assert (=> bs!1789963 (= (and (= (reg!16886 (regOne!33627 r!7292)) (reg!16886 r!7292)) (= (regOne!33627 r!7292) r!7292)) (= lambda!377749 lambda!377653))))

(assert (=> bs!1789959 (not (= lambda!377749 lambda!377714))))

(assert (=> bs!1789963 (not (= lambda!377749 lambda!377652))))

(assert (=> b!6730523 true))

(assert (=> b!6730523 true))

(declare-fun bs!1789969 () Bool)

(declare-fun b!6730524 () Bool)

(assert (= bs!1789969 (and b!6730524 d!2114712)))

(declare-fun lambda!377751 () Int)

(assert (=> bs!1789969 (not (= lambda!377751 lambda!377744))))

(declare-fun bs!1789971 () Bool)

(assert (= bs!1789971 (and b!6730524 b!6729674)))

(assert (=> bs!1789971 (not (= lambda!377751 lambda!377669))))

(declare-fun bs!1789973 () Bool)

(assert (= bs!1789973 (and b!6730524 d!2114580)))

(assert (=> bs!1789973 (= (and (= (regOne!33626 (regOne!33627 r!7292)) (reg!16886 r!7292)) (= (regTwo!33626 (regOne!33627 r!7292)) r!7292)) (= lambda!377751 lambda!377715))))

(declare-fun bs!1789975 () Bool)

(assert (= bs!1789975 (and b!6730524 b!6730241)))

(assert (=> bs!1789975 (not (= lambda!377751 lambda!377734))))

(declare-fun bs!1789976 () Bool)

(assert (= bs!1789976 (and b!6730524 d!2114592)))

(assert (=> bs!1789976 (not (= lambda!377751 lambda!377722))))

(declare-fun bs!1789977 () Bool)

(assert (= bs!1789977 (and b!6730524 b!6729675)))

(assert (=> bs!1789977 (= (and (= (regOne!33626 (regOne!33627 r!7292)) (regOne!33626 r!7292)) (= (regTwo!33626 (regOne!33627 r!7292)) (regTwo!33626 r!7292))) (= lambda!377751 lambda!377670))))

(declare-fun bs!1789979 () Bool)

(assert (= bs!1789979 (and b!6730524 b!6729490)))

(assert (=> bs!1789979 (= (and (= (regOne!33626 (regOne!33627 r!7292)) (reg!16886 r!7292)) (= (regTwo!33626 (regOne!33627 r!7292)) r!7292)) (= lambda!377751 lambda!377654))))

(declare-fun bs!1789980 () Bool)

(assert (= bs!1789980 (and b!6730524 d!2114616)))

(assert (=> bs!1789980 (not (= lambda!377751 lambda!377732))))

(assert (=> bs!1789976 (not (= lambda!377751 lambda!377725))))

(declare-fun bs!1789981 () Bool)

(assert (= bs!1789981 (and b!6730524 b!6730242)))

(assert (=> bs!1789981 (= (and (= (regOne!33626 (regOne!33627 r!7292)) (regOne!33626 (regTwo!33627 r!7292))) (= (regTwo!33626 (regOne!33627 r!7292)) (regTwo!33626 (regTwo!33627 r!7292)))) (= lambda!377751 lambda!377735))))

(assert (=> bs!1789973 (not (= lambda!377751 lambda!377714))))

(assert (=> bs!1789979 (not (= lambda!377751 lambda!377652))))

(assert (=> bs!1789979 (not (= lambda!377751 lambda!377653))))

(declare-fun bs!1789982 () Bool)

(assert (= bs!1789982 (and b!6730524 b!6730523)))

(assert (=> bs!1789982 (not (= lambda!377751 lambda!377749))))

(assert (=> b!6730524 true))

(assert (=> b!6730524 true))

(declare-fun b!6730520 () Bool)

(declare-fun c!1248065 () Bool)

(assert (=> b!6730520 (= c!1248065 ((_ is ElementMatch!16557) (regOne!33627 r!7292)))))

(declare-fun e!4066115 () Bool)

(declare-fun e!4066118 () Bool)

(assert (=> b!6730520 (= e!4066115 e!4066118)))

(declare-fun b!6730521 () Bool)

(declare-fun e!4066112 () Bool)

(assert (=> b!6730521 (= e!4066112 e!4066115)))

(declare-fun res!2753588 () Bool)

(assert (=> b!6730521 (= res!2753588 (not ((_ is EmptyLang!16557) (regOne!33627 r!7292))))))

(assert (=> b!6730521 (=> (not res!2753588) (not e!4066115))))

(declare-fun b!6730522 () Bool)

(declare-fun e!4066113 () Bool)

(assert (=> b!6730522 (= e!4066113 (matchRSpec!3658 (regTwo!33627 (regOne!33627 r!7292)) s!2326))))

(declare-fun e!4066114 () Bool)

(declare-fun call!607886 () Bool)

(assert (=> b!6730523 (= e!4066114 call!607886)))

(declare-fun e!4066117 () Bool)

(assert (=> b!6730524 (= e!4066117 call!607886)))

(declare-fun d!2114772 () Bool)

(declare-fun c!1248066 () Bool)

(assert (=> d!2114772 (= c!1248066 ((_ is EmptyExpr!16557) (regOne!33627 r!7292)))))

(assert (=> d!2114772 (= (matchRSpec!3658 (regOne!33627 r!7292) s!2326) e!4066112)))

(declare-fun b!6730525 () Bool)

(declare-fun c!1248068 () Bool)

(assert (=> b!6730525 (= c!1248068 ((_ is Union!16557) (regOne!33627 r!7292)))))

(declare-fun e!4066116 () Bool)

(assert (=> b!6730525 (= e!4066118 e!4066116)))

(declare-fun b!6730526 () Bool)

(declare-fun res!2753587 () Bool)

(assert (=> b!6730526 (=> res!2753587 e!4066114)))

(declare-fun call!607885 () Bool)

(assert (=> b!6730526 (= res!2753587 call!607885)))

(assert (=> b!6730526 (= e!4066117 e!4066114)))

(declare-fun b!6730527 () Bool)

(assert (=> b!6730527 (= e!4066116 e!4066113)))

(declare-fun res!2753586 () Bool)

(assert (=> b!6730527 (= res!2753586 (matchRSpec!3658 (regOne!33627 (regOne!33627 r!7292)) s!2326))))

(assert (=> b!6730527 (=> res!2753586 e!4066113)))

(declare-fun b!6730528 () Bool)

(assert (=> b!6730528 (= e!4066116 e!4066117)))

(declare-fun c!1248067 () Bool)

(assert (=> b!6730528 (= c!1248067 ((_ is Star!16557) (regOne!33627 r!7292)))))

(declare-fun bm!607880 () Bool)

(assert (=> bm!607880 (= call!607885 (isEmpty!38177 s!2326))))

(declare-fun b!6730529 () Bool)

(assert (=> b!6730529 (= e!4066112 call!607885)))

(declare-fun bm!607881 () Bool)

(assert (=> bm!607881 (= call!607886 (Exists!3625 (ite c!1248067 lambda!377749 lambda!377751)))))

(declare-fun b!6730530 () Bool)

(assert (=> b!6730530 (= e!4066118 (= s!2326 (Cons!65847 (c!1247791 (regOne!33627 r!7292)) Nil!65847)))))

(assert (= (and d!2114772 c!1248066) b!6730529))

(assert (= (and d!2114772 (not c!1248066)) b!6730521))

(assert (= (and b!6730521 res!2753588) b!6730520))

(assert (= (and b!6730520 c!1248065) b!6730530))

(assert (= (and b!6730520 (not c!1248065)) b!6730525))

(assert (= (and b!6730525 c!1248068) b!6730527))

(assert (= (and b!6730525 (not c!1248068)) b!6730528))

(assert (= (and b!6730527 (not res!2753586)) b!6730522))

(assert (= (and b!6730528 c!1248067) b!6730526))

(assert (= (and b!6730528 (not c!1248067)) b!6730524))

(assert (= (and b!6730526 (not res!2753587)) b!6730523))

(assert (= (or b!6730523 b!6730524) bm!607881))

(assert (= (or b!6730529 b!6730526) bm!607880))

(declare-fun m!7489246 () Bool)

(assert (=> b!6730522 m!7489246))

(declare-fun m!7489248 () Bool)

(assert (=> b!6730527 m!7489248))

(assert (=> bm!607880 m!7488470))

(declare-fun m!7489250 () Bool)

(assert (=> bm!607881 m!7489250))

(assert (=> b!6729678 d!2114772))

(declare-fun b!6730540 () Bool)

(declare-fun e!4066127 () (InoxSet Context!11882))

(declare-fun e!4066126 () (InoxSet Context!11882))

(assert (=> b!6730540 (= e!4066127 e!4066126)))

(declare-fun c!1248071 () Bool)

(assert (=> b!6730540 (= c!1248071 ((_ is Cons!65846) (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))))

(declare-fun call!607890 () (InoxSet Context!11882))

(declare-fun b!6730541 () Bool)

(assert (=> b!6730541 (= e!4066127 ((_ map or) call!607890 (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))) (h!72295 s!2326))))))

(declare-fun b!6730542 () Bool)

(assert (=> b!6730542 (= e!4066126 call!607890)))

(declare-fun d!2114782 () Bool)

(declare-fun c!1248072 () Bool)

(declare-fun e!4066128 () Bool)

(assert (=> d!2114782 (= c!1248072 e!4066128)))

(declare-fun res!2753594 () Bool)

(assert (=> d!2114782 (=> (not res!2753594) (not e!4066128))))

(assert (=> d!2114782 (= res!2753594 ((_ is Cons!65846) (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))))

(assert (=> d!2114782 (= (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (h!72295 s!2326)) e!4066127)))

(declare-fun bm!607885 () Bool)

(assert (=> bm!607885 (= call!607890 (derivationStepZipperDown!1785 (h!72294 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))) (Context!11883 (t!379657 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))) (h!72295 s!2326)))))

(declare-fun b!6730543 () Bool)

(assert (=> b!6730543 (= e!4066126 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730544 () Bool)

(assert (=> b!6730544 (= e!4066128 (nullable!6544 (h!72294 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))))))

(assert (= (and d!2114782 res!2753594) b!6730544))

(assert (= (and d!2114782 c!1248072) b!6730541))

(assert (= (and d!2114782 (not c!1248072)) b!6730540))

(assert (= (and b!6730540 c!1248071) b!6730542))

(assert (= (and b!6730540 (not c!1248071)) b!6730543))

(assert (= (or b!6730541 b!6730542) bm!607885))

(declare-fun m!7489252 () Bool)

(assert (=> b!6730541 m!7489252))

(declare-fun m!7489254 () Bool)

(assert (=> bm!607885 m!7489254))

(declare-fun m!7489256 () Bool)

(assert (=> b!6730544 m!7489256))

(assert (=> b!6729869 d!2114782))

(assert (=> b!6729736 d!2114722))

(assert (=> b!6729736 d!2114724))

(assert (=> d!2114526 d!2114508))

(declare-fun d!2114784 () Bool)

(assert (=> d!2114784 (= (flatMap!2038 z!1189 lambda!377655) (dynLambda!26264 lambda!377655 (h!72296 zl!343)))))

(assert (=> d!2114784 true))

(declare-fun _$13!4035 () Unit!159805)

(assert (=> d!2114784 (= (choose!50150 z!1189 (h!72296 zl!343) lambda!377655) _$13!4035)))

(declare-fun b_lambda!253395 () Bool)

(assert (=> (not b_lambda!253395) (not d!2114784)))

(declare-fun bs!1789983 () Bool)

(assert (= bs!1789983 d!2114784))

(assert (=> bs!1789983 m!7488458))

(assert (=> bs!1789983 m!7488648))

(assert (=> d!2114526 d!2114784))

(declare-fun d!2114786 () Bool)

(assert (=> d!2114786 (= (isEmptyExpr!1922 lt!2437678) ((_ is EmptyExpr!16557) lt!2437678))))

(assert (=> b!6729816 d!2114786))

(declare-fun bs!1789984 () Bool)

(declare-fun d!2114788 () Bool)

(assert (= bs!1789984 (and d!2114788 d!2114572)))

(declare-fun lambda!377752 () Int)

(assert (=> bs!1789984 (= lambda!377752 lambda!377705)))

(declare-fun bs!1789985 () Bool)

(assert (= bs!1789985 (and d!2114788 d!2114568)))

(assert (=> bs!1789985 (= lambda!377752 lambda!377701)))

(declare-fun bs!1789986 () Bool)

(assert (= bs!1789986 (and d!2114788 d!2114528)))

(assert (=> bs!1789986 (= lambda!377752 lambda!377682)))

(declare-fun bs!1789987 () Bool)

(assert (= bs!1789987 (and d!2114788 d!2114662)))

(assert (=> bs!1789987 (= lambda!377752 lambda!377740)))

(declare-fun bs!1789988 () Bool)

(assert (= bs!1789988 (and d!2114788 d!2114562)))

(assert (=> bs!1789988 (= lambda!377752 lambda!377696)))

(declare-fun bs!1789989 () Bool)

(assert (= bs!1789989 (and d!2114788 d!2114660)))

(assert (=> bs!1789989 (= lambda!377752 lambda!377739)))

(declare-fun bs!1789990 () Bool)

(assert (= bs!1789990 (and d!2114788 d!2114618)))

(assert (=> bs!1789990 (= lambda!377752 lambda!377733)))

(declare-fun bs!1789991 () Bool)

(assert (= bs!1789991 (and d!2114788 d!2114544)))

(assert (=> bs!1789991 (= lambda!377752 lambda!377694)))

(declare-fun b!6730547 () Bool)

(declare-fun e!4066133 () Bool)

(assert (=> b!6730547 (= e!4066133 (isEmpty!38179 (t!379657 (t!379657 (unfocusZipperList!1978 zl!343)))))))

(declare-fun e!4066136 () Bool)

(assert (=> d!2114788 e!4066136))

(declare-fun res!2753597 () Bool)

(assert (=> d!2114788 (=> (not res!2753597) (not e!4066136))))

(declare-fun lt!2437752 () Regex!16557)

(assert (=> d!2114788 (= res!2753597 (validRegex!8293 lt!2437752))))

(declare-fun e!4066134 () Regex!16557)

(assert (=> d!2114788 (= lt!2437752 e!4066134)))

(declare-fun c!1248074 () Bool)

(assert (=> d!2114788 (= c!1248074 e!4066133)))

(declare-fun res!2753598 () Bool)

(assert (=> d!2114788 (=> (not res!2753598) (not e!4066133))))

(assert (=> d!2114788 (= res!2753598 ((_ is Cons!65846) (t!379657 (unfocusZipperList!1978 zl!343))))))

(assert (=> d!2114788 (forall!15757 (t!379657 (unfocusZipperList!1978 zl!343)) lambda!377752)))

(assert (=> d!2114788 (= (generalisedUnion!2401 (t!379657 (unfocusZipperList!1978 zl!343))) lt!2437752)))

(declare-fun b!6730548 () Bool)

(declare-fun e!4066132 () Bool)

(declare-fun e!4066135 () Bool)

(assert (=> b!6730548 (= e!4066132 e!4066135)))

(declare-fun c!1248076 () Bool)

(assert (=> b!6730548 (= c!1248076 (isEmpty!38179 (tail!12626 (t!379657 (unfocusZipperList!1978 zl!343)))))))

(declare-fun b!6730549 () Bool)

(assert (=> b!6730549 (= e!4066135 (= lt!2437752 (head!13541 (t!379657 (unfocusZipperList!1978 zl!343)))))))

(declare-fun b!6730550 () Bool)

(assert (=> b!6730550 (= e!4066134 (h!72294 (t!379657 (unfocusZipperList!1978 zl!343))))))

(declare-fun b!6730551 () Bool)

(assert (=> b!6730551 (= e!4066135 (isUnion!1360 lt!2437752))))

(declare-fun b!6730552 () Bool)

(assert (=> b!6730552 (= e!4066136 e!4066132)))

(declare-fun c!1248073 () Bool)

(assert (=> b!6730552 (= c!1248073 (isEmpty!38179 (t!379657 (unfocusZipperList!1978 zl!343))))))

(declare-fun b!6730553 () Bool)

(declare-fun e!4066131 () Regex!16557)

(assert (=> b!6730553 (= e!4066134 e!4066131)))

(declare-fun c!1248075 () Bool)

(assert (=> b!6730553 (= c!1248075 ((_ is Cons!65846) (t!379657 (unfocusZipperList!1978 zl!343))))))

(declare-fun b!6730554 () Bool)

(assert (=> b!6730554 (= e!4066131 (Union!16557 (h!72294 (t!379657 (unfocusZipperList!1978 zl!343))) (generalisedUnion!2401 (t!379657 (t!379657 (unfocusZipperList!1978 zl!343))))))))

(declare-fun b!6730555 () Bool)

(assert (=> b!6730555 (= e!4066131 EmptyLang!16557)))

(declare-fun b!6730556 () Bool)

(assert (=> b!6730556 (= e!4066132 (isEmptyLang!1930 lt!2437752))))

(assert (= (and d!2114788 res!2753598) b!6730547))

(assert (= (and d!2114788 c!1248074) b!6730550))

(assert (= (and d!2114788 (not c!1248074)) b!6730553))

(assert (= (and b!6730553 c!1248075) b!6730554))

(assert (= (and b!6730553 (not c!1248075)) b!6730555))

(assert (= (and d!2114788 res!2753597) b!6730552))

(assert (= (and b!6730552 c!1248073) b!6730556))

(assert (= (and b!6730552 (not c!1248073)) b!6730548))

(assert (= (and b!6730548 c!1248076) b!6730549))

(assert (= (and b!6730548 (not c!1248076)) b!6730551))

(declare-fun m!7489258 () Bool)

(assert (=> b!6730554 m!7489258))

(declare-fun m!7489260 () Bool)

(assert (=> b!6730551 m!7489260))

(declare-fun m!7489262 () Bool)

(assert (=> d!2114788 m!7489262))

(declare-fun m!7489266 () Bool)

(assert (=> d!2114788 m!7489266))

(declare-fun m!7489268 () Bool)

(assert (=> b!6730547 m!7489268))

(declare-fun m!7489270 () Bool)

(assert (=> b!6730549 m!7489270))

(declare-fun m!7489272 () Bool)

(assert (=> b!6730556 m!7489272))

(declare-fun m!7489274 () Bool)

(assert (=> b!6730548 m!7489274))

(assert (=> b!6730548 m!7489274))

(declare-fun m!7489276 () Bool)

(assert (=> b!6730548 m!7489276))

(assert (=> b!6730552 m!7488794))

(assert (=> b!6729960 d!2114788))

(declare-fun d!2114792 () Bool)

(assert (=> d!2114792 (= (Exists!3625 (ite c!1247835 lambda!377669 lambda!377670)) (choose!50157 (ite c!1247835 lambda!377669 lambda!377670)))))

(declare-fun bs!1789992 () Bool)

(assert (= bs!1789992 d!2114792))

(declare-fun m!7489278 () Bool)

(assert (=> bs!1789992 m!7489278))

(assert (=> bm!607751 d!2114792))

(declare-fun d!2114794 () Bool)

(assert (=> d!2114794 (= (isEmptyLang!1930 lt!2437700) ((_ is EmptyLang!16557) lt!2437700))))

(assert (=> b!6729962 d!2114794))

(declare-fun bm!607886 () Bool)

(declare-fun call!607891 () Bool)

(assert (=> bm!607886 (= call!607891 (isEmpty!38177 (_2!36835 (get!22907 lt!2437731))))))

(declare-fun b!6730559 () Bool)

(declare-fun e!4066144 () Bool)

(assert (=> b!6730559 (= e!4066144 (not (= (head!13540 (_2!36835 (get!22907 lt!2437731))) (c!1247791 r!7292))))))

(declare-fun b!6730560 () Bool)

(declare-fun e!4066138 () Bool)

(declare-fun e!4066143 () Bool)

(assert (=> b!6730560 (= e!4066138 e!4066143)))

(declare-fun c!1248078 () Bool)

(assert (=> b!6730560 (= c!1248078 ((_ is EmptyLang!16557) r!7292))))

(declare-fun b!6730561 () Bool)

(declare-fun e!4066141 () Bool)

(assert (=> b!6730561 (= e!4066141 e!4066144)))

(declare-fun res!2753604 () Bool)

(assert (=> b!6730561 (=> res!2753604 e!4066144)))

(assert (=> b!6730561 (= res!2753604 call!607891)))

(declare-fun b!6730562 () Bool)

(declare-fun res!2753603 () Bool)

(assert (=> b!6730562 (=> res!2753603 e!4066144)))

(assert (=> b!6730562 (= res!2753603 (not (isEmpty!38177 (tail!12625 (_2!36835 (get!22907 lt!2437731))))))))

(declare-fun b!6730563 () Bool)

(declare-fun e!4066139 () Bool)

(assert (=> b!6730563 (= e!4066139 e!4066141)))

(declare-fun res!2753601 () Bool)

(assert (=> b!6730563 (=> (not res!2753601) (not e!4066141))))

(declare-fun lt!2437753 () Bool)

(assert (=> b!6730563 (= res!2753601 (not lt!2437753))))

(declare-fun b!6730564 () Bool)

(declare-fun e!4066140 () Bool)

(assert (=> b!6730564 (= e!4066140 (nullable!6544 r!7292))))

(declare-fun b!6730565 () Bool)

(declare-fun e!4066142 () Bool)

(assert (=> b!6730565 (= e!4066142 (= (head!13540 (_2!36835 (get!22907 lt!2437731))) (c!1247791 r!7292)))))

(declare-fun b!6730566 () Bool)

(declare-fun res!2753607 () Bool)

(assert (=> b!6730566 (=> res!2753607 e!4066139)))

(assert (=> b!6730566 (= res!2753607 e!4066142)))

(declare-fun res!2753600 () Bool)

(assert (=> b!6730566 (=> (not res!2753600) (not e!4066142))))

(assert (=> b!6730566 (= res!2753600 lt!2437753)))

(declare-fun b!6730567 () Bool)

(assert (=> b!6730567 (= e!4066138 (= lt!2437753 call!607891))))

(declare-fun b!6730558 () Bool)

(assert (=> b!6730558 (= e!4066140 (matchR!8740 (derivativeStep!5229 r!7292 (head!13540 (_2!36835 (get!22907 lt!2437731)))) (tail!12625 (_2!36835 (get!22907 lt!2437731)))))))

(declare-fun d!2114796 () Bool)

(assert (=> d!2114796 e!4066138))

(declare-fun c!1248077 () Bool)

(assert (=> d!2114796 (= c!1248077 ((_ is EmptyExpr!16557) r!7292))))

(assert (=> d!2114796 (= lt!2437753 e!4066140)))

(declare-fun c!1248079 () Bool)

(assert (=> d!2114796 (= c!1248079 (isEmpty!38177 (_2!36835 (get!22907 lt!2437731))))))

(assert (=> d!2114796 (validRegex!8293 r!7292)))

(assert (=> d!2114796 (= (matchR!8740 r!7292 (_2!36835 (get!22907 lt!2437731))) lt!2437753)))

(declare-fun b!6730568 () Bool)

(declare-fun res!2753602 () Bool)

(assert (=> b!6730568 (=> (not res!2753602) (not e!4066142))))

(assert (=> b!6730568 (= res!2753602 (isEmpty!38177 (tail!12625 (_2!36835 (get!22907 lt!2437731)))))))

(declare-fun b!6730569 () Bool)

(declare-fun res!2753605 () Bool)

(assert (=> b!6730569 (=> res!2753605 e!4066139)))

(assert (=> b!6730569 (= res!2753605 (not ((_ is ElementMatch!16557) r!7292)))))

(assert (=> b!6730569 (= e!4066143 e!4066139)))

(declare-fun b!6730570 () Bool)

(assert (=> b!6730570 (= e!4066143 (not lt!2437753))))

(declare-fun b!6730571 () Bool)

(declare-fun res!2753606 () Bool)

(assert (=> b!6730571 (=> (not res!2753606) (not e!4066142))))

(assert (=> b!6730571 (= res!2753606 (not call!607891))))

(assert (= (and d!2114796 c!1248079) b!6730564))

(assert (= (and d!2114796 (not c!1248079)) b!6730558))

(assert (= (and d!2114796 c!1248077) b!6730567))

(assert (= (and d!2114796 (not c!1248077)) b!6730560))

(assert (= (and b!6730560 c!1248078) b!6730570))

(assert (= (and b!6730560 (not c!1248078)) b!6730569))

(assert (= (and b!6730569 (not res!2753605)) b!6730566))

(assert (= (and b!6730566 res!2753600) b!6730571))

(assert (= (and b!6730571 res!2753606) b!6730568))

(assert (= (and b!6730568 res!2753602) b!6730565))

(assert (= (and b!6730566 (not res!2753607)) b!6730563))

(assert (= (and b!6730563 res!2753601) b!6730561))

(assert (= (and b!6730561 (not res!2753604)) b!6730562))

(assert (= (and b!6730562 (not res!2753603)) b!6730559))

(assert (= (or b!6730567 b!6730561 b!6730571) bm!607886))

(declare-fun m!7489280 () Bool)

(assert (=> bm!607886 m!7489280))

(declare-fun m!7489282 () Bool)

(assert (=> b!6730559 m!7489282))

(assert (=> b!6730565 m!7489282))

(assert (=> b!6730558 m!7489282))

(assert (=> b!6730558 m!7489282))

(declare-fun m!7489284 () Bool)

(assert (=> b!6730558 m!7489284))

(declare-fun m!7489286 () Bool)

(assert (=> b!6730558 m!7489286))

(assert (=> b!6730558 m!7489284))

(assert (=> b!6730558 m!7489286))

(declare-fun m!7489288 () Bool)

(assert (=> b!6730558 m!7489288))

(assert (=> b!6730562 m!7489286))

(assert (=> b!6730562 m!7489286))

(declare-fun m!7489290 () Bool)

(assert (=> b!6730562 m!7489290))

(assert (=> b!6730568 m!7489286))

(assert (=> b!6730568 m!7489286))

(assert (=> b!6730568 m!7489290))

(assert (=> b!6730564 m!7488606))

(assert (=> d!2114796 m!7489280))

(assert (=> d!2114796 m!7488456))

(assert (=> b!6730172 d!2114796))

(assert (=> b!6730172 d!2114680))

(declare-fun b!6730572 () Bool)

(declare-fun e!4066146 () (InoxSet Context!11882))

(declare-fun e!4066145 () (InoxSet Context!11882))

(assert (=> b!6730572 (= e!4066146 e!4066145)))

(declare-fun c!1248080 () Bool)

(assert (=> b!6730572 (= c!1248080 ((_ is Cons!65846) (exprs!6441 (Context!11883 (t!379657 (exprs!6441 lt!2437639))))))))

(declare-fun call!607892 () (InoxSet Context!11882))

(declare-fun b!6730573 () Bool)

(assert (=> b!6730573 (= e!4066146 ((_ map or) call!607892 (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 lt!2437639)))))) (h!72295 s!2326))))))

(declare-fun b!6730574 () Bool)

(assert (=> b!6730574 (= e!4066145 call!607892)))

(declare-fun d!2114806 () Bool)

(declare-fun c!1248081 () Bool)

(declare-fun e!4066147 () Bool)

(assert (=> d!2114806 (= c!1248081 e!4066147)))

(declare-fun res!2753608 () Bool)

(assert (=> d!2114806 (=> (not res!2753608) (not e!4066147))))

(assert (=> d!2114806 (= res!2753608 ((_ is Cons!65846) (exprs!6441 (Context!11883 (t!379657 (exprs!6441 lt!2437639))))))))

(assert (=> d!2114806 (= (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 lt!2437639))) (h!72295 s!2326)) e!4066146)))

(declare-fun bm!607887 () Bool)

(assert (=> bm!607887 (= call!607892 (derivationStepZipperDown!1785 (h!72294 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 lt!2437639))))) (Context!11883 (t!379657 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 lt!2437639)))))) (h!72295 s!2326)))))

(declare-fun b!6730575 () Bool)

(assert (=> b!6730575 (= e!4066145 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730576 () Bool)

(assert (=> b!6730576 (= e!4066147 (nullable!6544 (h!72294 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 lt!2437639)))))))))

(assert (= (and d!2114806 res!2753608) b!6730576))

(assert (= (and d!2114806 c!1248081) b!6730573))

(assert (= (and d!2114806 (not c!1248081)) b!6730572))

(assert (= (and b!6730572 c!1248080) b!6730574))

(assert (= (and b!6730572 (not c!1248080)) b!6730575))

(assert (= (or b!6730573 b!6730574) bm!607887))

(declare-fun m!7489292 () Bool)

(assert (=> b!6730573 m!7489292))

(declare-fun m!7489294 () Bool)

(assert (=> bm!607887 m!7489294))

(declare-fun m!7489296 () Bool)

(assert (=> b!6730576 m!7489296))

(assert (=> b!6729887 d!2114806))

(declare-fun b!6730577 () Bool)

(declare-fun e!4066149 () List!65971)

(assert (=> b!6730577 (= e!4066149 (_2!36835 (get!22907 lt!2437731)))))

(declare-fun b!6730578 () Bool)

(assert (=> b!6730578 (= e!4066149 (Cons!65847 (h!72295 (_1!36835 (get!22907 lt!2437731))) (++!14713 (t!379658 (_1!36835 (get!22907 lt!2437731))) (_2!36835 (get!22907 lt!2437731)))))))

(declare-fun d!2114808 () Bool)

(declare-fun e!4066148 () Bool)

(assert (=> d!2114808 e!4066148))

(declare-fun res!2753613 () Bool)

(assert (=> d!2114808 (=> (not res!2753613) (not e!4066148))))

(declare-fun lt!2437754 () List!65971)

(assert (=> d!2114808 (= res!2753613 (= (content!12784 lt!2437754) ((_ map or) (content!12784 (_1!36835 (get!22907 lt!2437731))) (content!12784 (_2!36835 (get!22907 lt!2437731))))))))

(assert (=> d!2114808 (= lt!2437754 e!4066149)))

(declare-fun c!1248082 () Bool)

(assert (=> d!2114808 (= c!1248082 ((_ is Nil!65847) (_1!36835 (get!22907 lt!2437731))))))

(assert (=> d!2114808 (= (++!14713 (_1!36835 (get!22907 lt!2437731)) (_2!36835 (get!22907 lt!2437731))) lt!2437754)))

(declare-fun b!6730580 () Bool)

(assert (=> b!6730580 (= e!4066148 (or (not (= (_2!36835 (get!22907 lt!2437731)) Nil!65847)) (= lt!2437754 (_1!36835 (get!22907 lt!2437731)))))))

(declare-fun b!6730579 () Bool)

(declare-fun res!2753612 () Bool)

(assert (=> b!6730579 (=> (not res!2753612) (not e!4066148))))

(assert (=> b!6730579 (= res!2753612 (= (size!40606 lt!2437754) (+ (size!40606 (_1!36835 (get!22907 lt!2437731))) (size!40606 (_2!36835 (get!22907 lt!2437731))))))))

(assert (= (and d!2114808 c!1248082) b!6730577))

(assert (= (and d!2114808 (not c!1248082)) b!6730578))

(assert (= (and d!2114808 res!2753613) b!6730579))

(assert (= (and b!6730579 res!2753612) b!6730580))

(declare-fun m!7489298 () Bool)

(assert (=> b!6730578 m!7489298))

(declare-fun m!7489300 () Bool)

(assert (=> d!2114808 m!7489300))

(declare-fun m!7489302 () Bool)

(assert (=> d!2114808 m!7489302))

(declare-fun m!7489304 () Bool)

(assert (=> d!2114808 m!7489304))

(declare-fun m!7489306 () Bool)

(assert (=> b!6730579 m!7489306))

(declare-fun m!7489308 () Bool)

(assert (=> b!6730579 m!7489308))

(declare-fun m!7489310 () Bool)

(assert (=> b!6730579 m!7489310))

(assert (=> b!6730174 d!2114808))

(assert (=> b!6730174 d!2114680))

(declare-fun b!6730592 () Bool)

(declare-fun e!4066159 () (InoxSet Context!11882))

(declare-fun e!4066157 () (InoxSet Context!11882))

(assert (=> b!6730592 (= e!4066159 e!4066157)))

(declare-fun c!1248089 () Bool)

(assert (=> b!6730592 (= c!1248089 ((_ is Union!16557) (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))

(declare-fun call!607901 () (InoxSet Context!11882))

(declare-fun c!1248088 () Bool)

(declare-fun c!1248092 () Bool)

(declare-fun call!607902 () List!65970)

(declare-fun bm!607894 () Bool)

(assert (=> bm!607894 (= call!607901 (derivationStepZipperDown!1785 (ite c!1248089 (regTwo!33627 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (ite c!1248088 (regTwo!33626 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (ite c!1248092 (regOne!33626 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (reg!16886 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))) (ite (or c!1248089 c!1248088) (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (Context!11883 call!607902)) (h!72295 s!2326)))))

(declare-fun b!6730593 () Bool)

(declare-fun call!607899 () (InoxSet Context!11882))

(assert (=> b!6730593 (= e!4066157 ((_ map or) call!607899 call!607901))))

(declare-fun b!6730594 () Bool)

(declare-fun e!4066161 () (InoxSet Context!11882))

(declare-fun e!4066160 () (InoxSet Context!11882))

(assert (=> b!6730594 (= e!4066161 e!4066160)))

(assert (=> b!6730594 (= c!1248092 ((_ is Concat!25402) (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))

(declare-fun call!607900 () List!65970)

(declare-fun bm!607895 () Bool)

(assert (=> bm!607895 (= call!607899 (derivationStepZipperDown!1785 (ite c!1248089 (regOne!33627 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (regOne!33626 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))) (ite c!1248089 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (Context!11883 call!607900)) (h!72295 s!2326)))))

(declare-fun b!6730595 () Bool)

(declare-fun e!4066158 () (InoxSet Context!11882))

(declare-fun call!607904 () (InoxSet Context!11882))

(assert (=> b!6730595 (= e!4066158 call!607904)))

(declare-fun bm!607896 () Bool)

(assert (=> bm!607896 (= call!607900 ($colon$colon!2374 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))) (ite (or c!1248088 c!1248092) (regTwo!33626 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))))

(declare-fun b!6730596 () Bool)

(declare-fun e!4066156 () Bool)

(assert (=> b!6730596 (= c!1248088 e!4066156)))

(declare-fun res!2753615 () Bool)

(assert (=> b!6730596 (=> (not res!2753615) (not e!4066156))))

(assert (=> b!6730596 (= res!2753615 ((_ is Concat!25402) (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))

(assert (=> b!6730596 (= e!4066157 e!4066161)))

(declare-fun b!6730597 () Bool)

(assert (=> b!6730597 (= e!4066160 call!607904)))

(declare-fun d!2114812 () Bool)

(declare-fun c!1248090 () Bool)

(assert (=> d!2114812 (= c!1248090 (and ((_ is ElementMatch!16557) (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (= (c!1247791 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (h!72295 s!2326))))))

(assert (=> d!2114812 (= (derivationStepZipperDown!1785 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))) (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) (h!72295 s!2326)) e!4066159)))

(declare-fun bm!607897 () Bool)

(declare-fun call!607903 () (InoxSet Context!11882))

(assert (=> bm!607897 (= call!607904 call!607903)))

(declare-fun b!6730598 () Bool)

(assert (=> b!6730598 (= e!4066158 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730599 () Bool)

(declare-fun c!1248091 () Bool)

(assert (=> b!6730599 (= c!1248091 ((_ is Star!16557) (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))))))

(assert (=> b!6730599 (= e!4066160 e!4066158)))

(declare-fun bm!607898 () Bool)

(assert (=> bm!607898 (= call!607902 call!607900)))

(declare-fun b!6730600 () Bool)

(assert (=> b!6730600 (= e!4066161 ((_ map or) call!607899 call!607903))))

(declare-fun bm!607899 () Bool)

(assert (=> bm!607899 (= call!607903 call!607901)))

(declare-fun b!6730601 () Bool)

(assert (=> b!6730601 (= e!4066159 (store ((as const (Array Context!11882 Bool)) false) (Context!11883 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846))))) true))))

(declare-fun b!6730602 () Bool)

(assert (=> b!6730602 (= e!4066156 (nullable!6544 (regOne!33626 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 r!7292 Nil!65846)))))))))

(assert (= (and d!2114812 c!1248090) b!6730601))

(assert (= (and d!2114812 (not c!1248090)) b!6730592))

(assert (= (and b!6730592 c!1248089) b!6730593))

(assert (= (and b!6730592 (not c!1248089)) b!6730596))

(assert (= (and b!6730596 res!2753615) b!6730602))

(assert (= (and b!6730596 c!1248088) b!6730600))

(assert (= (and b!6730596 (not c!1248088)) b!6730594))

(assert (= (and b!6730594 c!1248092) b!6730597))

(assert (= (and b!6730594 (not c!1248092)) b!6730599))

(assert (= (and b!6730599 c!1248091) b!6730595))

(assert (= (and b!6730599 (not c!1248091)) b!6730598))

(assert (= (or b!6730597 b!6730595) bm!607898))

(assert (= (or b!6730597 b!6730595) bm!607897))

(assert (= (or b!6730600 bm!607898) bm!607896))

(assert (= (or b!6730600 bm!607897) bm!607899))

(assert (= (or b!6730593 bm!607899) bm!607894))

(assert (= (or b!6730593 b!6730600) bm!607895))

(declare-fun m!7489312 () Bool)

(assert (=> bm!607894 m!7489312))

(declare-fun m!7489314 () Bool)

(assert (=> b!6730601 m!7489314))

(declare-fun m!7489316 () Bool)

(assert (=> bm!607896 m!7489316))

(declare-fun m!7489318 () Bool)

(assert (=> bm!607895 m!7489318))

(declare-fun m!7489320 () Bool)

(assert (=> b!6730602 m!7489320))

(assert (=> bm!607795 d!2114812))

(declare-fun d!2114814 () Bool)

(assert (=> d!2114814 (= (isConcat!1445 lt!2437678) ((_ is Concat!25402) lt!2437678))))

(assert (=> b!6729818 d!2114814))

(declare-fun d!2114816 () Bool)

(assert (=> d!2114816 (= (Exists!3625 lambda!377714) (choose!50157 lambda!377714))))

(declare-fun bs!1789993 () Bool)

(assert (= bs!1789993 d!2114816))

(declare-fun m!7489324 () Bool)

(assert (=> bs!1789993 m!7489324))

(assert (=> d!2114580 d!2114816))

(declare-fun d!2114818 () Bool)

(assert (=> d!2114818 (= (Exists!3625 lambda!377715) (choose!50157 lambda!377715))))

(declare-fun bs!1789994 () Bool)

(assert (= bs!1789994 d!2114818))

(declare-fun m!7489326 () Bool)

(assert (=> bs!1789994 m!7489326))

(assert (=> d!2114580 d!2114818))

(declare-fun bs!1789997 () Bool)

(declare-fun d!2114820 () Bool)

(assert (= bs!1789997 (and d!2114820 d!2114712)))

(declare-fun lambda!377760 () Int)

(assert (=> bs!1789997 (= lambda!377760 lambda!377744)))

(declare-fun bs!1789998 () Bool)

(assert (= bs!1789998 (and d!2114820 b!6729674)))

(assert (=> bs!1789998 (not (= lambda!377760 lambda!377669))))

(declare-fun bs!1789999 () Bool)

(assert (= bs!1789999 (and d!2114820 d!2114580)))

(assert (=> bs!1789999 (not (= lambda!377760 lambda!377715))))

(declare-fun bs!1790000 () Bool)

(assert (= bs!1790000 (and d!2114820 b!6730241)))

(assert (=> bs!1790000 (not (= lambda!377760 lambda!377734))))

(declare-fun bs!1790001 () Bool)

(assert (= bs!1790001 (and d!2114820 d!2114592)))

(assert (=> bs!1790001 (= (= r!7292 (Star!16557 (reg!16886 r!7292))) (= lambda!377760 lambda!377722))))

(declare-fun bs!1790002 () Bool)

(assert (= bs!1790002 (and d!2114820 b!6729675)))

(assert (=> bs!1790002 (not (= lambda!377760 lambda!377670))))

(declare-fun bs!1790003 () Bool)

(assert (= bs!1790003 (and d!2114820 b!6729490)))

(assert (=> bs!1790003 (not (= lambda!377760 lambda!377654))))

(declare-fun bs!1790005 () Bool)

(assert (= bs!1790005 (and d!2114820 b!6730524)))

(assert (=> bs!1790005 (not (= lambda!377760 lambda!377751))))

(declare-fun bs!1790006 () Bool)

(assert (= bs!1790006 (and d!2114820 d!2114616)))

(assert (=> bs!1790006 (= lambda!377760 lambda!377732)))

(assert (=> bs!1790001 (not (= lambda!377760 lambda!377725))))

(declare-fun bs!1790007 () Bool)

(assert (= bs!1790007 (and d!2114820 b!6730242)))

(assert (=> bs!1790007 (not (= lambda!377760 lambda!377735))))

(assert (=> bs!1789999 (= lambda!377760 lambda!377714)))

(assert (=> bs!1790003 (= lambda!377760 lambda!377652)))

(assert (=> bs!1790003 (not (= lambda!377760 lambda!377653))))

(declare-fun bs!1790008 () Bool)

(assert (= bs!1790008 (and d!2114820 b!6730523)))

(assert (=> bs!1790008 (not (= lambda!377760 lambda!377749))))

(assert (=> d!2114820 true))

(assert (=> d!2114820 true))

(assert (=> d!2114820 true))

(declare-fun lambda!377761 () Int)

(assert (=> bs!1789997 (not (= lambda!377761 lambda!377744))))

(assert (=> bs!1789998 (not (= lambda!377761 lambda!377669))))

(assert (=> bs!1789999 (= lambda!377761 lambda!377715)))

(assert (=> bs!1790000 (not (= lambda!377761 lambda!377734))))

(assert (=> bs!1790001 (not (= lambda!377761 lambda!377722))))

(assert (=> bs!1790002 (= (and (= (reg!16886 r!7292) (regOne!33626 r!7292)) (= r!7292 (regTwo!33626 r!7292))) (= lambda!377761 lambda!377670))))

(assert (=> bs!1790003 (= lambda!377761 lambda!377654)))

(assert (=> bs!1790005 (= (and (= (reg!16886 r!7292) (regOne!33626 (regOne!33627 r!7292))) (= r!7292 (regTwo!33626 (regOne!33627 r!7292)))) (= lambda!377761 lambda!377751))))

(assert (=> bs!1790006 (not (= lambda!377761 lambda!377732))))

(declare-fun bs!1790009 () Bool)

(assert (= bs!1790009 d!2114820))

(assert (=> bs!1790009 (not (= lambda!377761 lambda!377760))))

(assert (=> bs!1790001 (not (= lambda!377761 lambda!377725))))

(assert (=> bs!1790007 (= (and (= (reg!16886 r!7292) (regOne!33626 (regTwo!33627 r!7292))) (= r!7292 (regTwo!33626 (regTwo!33627 r!7292)))) (= lambda!377761 lambda!377735))))

(assert (=> bs!1789999 (not (= lambda!377761 lambda!377714))))

(assert (=> bs!1790003 (not (= lambda!377761 lambda!377652))))

(assert (=> bs!1790003 (not (= lambda!377761 lambda!377653))))

(assert (=> bs!1790008 (not (= lambda!377761 lambda!377749))))

(assert (=> d!2114820 true))

(assert (=> d!2114820 true))

(assert (=> d!2114820 true))

(assert (=> d!2114820 (= (Exists!3625 lambda!377760) (Exists!3625 lambda!377761))))

(assert (=> d!2114820 true))

(declare-fun _$90!2569 () Unit!159805)

(assert (=> d!2114820 (= (choose!50158 (reg!16886 r!7292) r!7292 s!2326) _$90!2569)))

(declare-fun m!7489354 () Bool)

(assert (=> bs!1790009 m!7489354))

(declare-fun m!7489356 () Bool)

(assert (=> bs!1790009 m!7489356))

(assert (=> d!2114580 d!2114820))

(assert (=> d!2114580 d!2114668))

(declare-fun b!6730633 () Bool)

(declare-fun e!4066182 () (InoxSet Context!11882))

(declare-fun e!4066180 () (InoxSet Context!11882))

(assert (=> b!6730633 (= e!4066182 e!4066180)))

(declare-fun c!1248105 () Bool)

(assert (=> b!6730633 (= c!1248105 ((_ is Union!16557) (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))))))

(declare-fun call!607915 () (InoxSet Context!11882))

(declare-fun call!607916 () List!65970)

(declare-fun bm!607908 () Bool)

(declare-fun c!1248104 () Bool)

(declare-fun c!1248108 () Bool)

(assert (=> bm!607908 (= call!607915 (derivationStepZipperDown!1785 (ite c!1248105 (regTwo!33627 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))) (ite c!1248104 (regTwo!33626 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))) (ite c!1248108 (regOne!33626 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))) (reg!16886 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292))))))))) (ite (or c!1248105 c!1248104) (ite (or c!1247907 c!1247906) (Context!11883 lt!2437634) (Context!11883 call!607804)) (Context!11883 call!607916)) (h!72295 s!2326)))))

(declare-fun b!6730634 () Bool)

(declare-fun call!607913 () (InoxSet Context!11882))

(assert (=> b!6730634 (= e!4066180 ((_ map or) call!607913 call!607915))))

(declare-fun b!6730635 () Bool)

(declare-fun e!4066184 () (InoxSet Context!11882))

(declare-fun e!4066183 () (InoxSet Context!11882))

(assert (=> b!6730635 (= e!4066184 e!4066183)))

(assert (=> b!6730635 (= c!1248108 ((_ is Concat!25402) (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))))))

(declare-fun call!607914 () List!65970)

(declare-fun bm!607909 () Bool)

(assert (=> bm!607909 (= call!607913 (derivationStepZipperDown!1785 (ite c!1248105 (regOne!33627 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))) (regOne!33626 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292))))))) (ite c!1248105 (ite (or c!1247907 c!1247906) (Context!11883 lt!2437634) (Context!11883 call!607804)) (Context!11883 call!607914)) (h!72295 s!2326)))))

(declare-fun b!6730636 () Bool)

(declare-fun e!4066181 () (InoxSet Context!11882))

(declare-fun call!607918 () (InoxSet Context!11882))

(assert (=> b!6730636 (= e!4066181 call!607918)))

(declare-fun bm!607910 () Bool)

(assert (=> bm!607910 (= call!607914 ($colon$colon!2374 (exprs!6441 (ite (or c!1247907 c!1247906) (Context!11883 lt!2437634) (Context!11883 call!607804))) (ite (or c!1248104 c!1248108) (regTwo!33626 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))) (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292))))))))))

(declare-fun b!6730637 () Bool)

(declare-fun e!4066179 () Bool)

(assert (=> b!6730637 (= c!1248104 e!4066179)))

(declare-fun res!2753629 () Bool)

(assert (=> b!6730637 (=> (not res!2753629) (not e!4066179))))

(assert (=> b!6730637 (= res!2753629 ((_ is Concat!25402) (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))))))

(assert (=> b!6730637 (= e!4066180 e!4066184)))

(declare-fun b!6730638 () Bool)

(assert (=> b!6730638 (= e!4066183 call!607918)))

(declare-fun c!1248106 () Bool)

(declare-fun d!2114842 () Bool)

(assert (=> d!2114842 (= c!1248106 (and ((_ is ElementMatch!16557) (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))) (= (c!1247791 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))) (h!72295 s!2326))))))

(assert (=> d!2114842 (= (derivationStepZipperDown!1785 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292))))) (ite (or c!1247907 c!1247906) (Context!11883 lt!2437634) (Context!11883 call!607804)) (h!72295 s!2326)) e!4066182)))

(declare-fun bm!607911 () Bool)

(declare-fun call!607917 () (InoxSet Context!11882))

(assert (=> bm!607911 (= call!607918 call!607917)))

(declare-fun b!6730639 () Bool)

(assert (=> b!6730639 (= e!4066181 ((as const (Array Context!11882 Bool)) false))))

(declare-fun c!1248107 () Bool)

(declare-fun b!6730640 () Bool)

(assert (=> b!6730640 (= c!1248107 ((_ is Star!16557) (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292)))))))))

(assert (=> b!6730640 (= e!4066183 e!4066181)))

(declare-fun bm!607912 () Bool)

(assert (=> bm!607912 (= call!607916 call!607914)))

(declare-fun b!6730641 () Bool)

(assert (=> b!6730641 (= e!4066184 ((_ map or) call!607913 call!607917))))

(declare-fun bm!607913 () Bool)

(assert (=> bm!607913 (= call!607917 call!607915)))

(declare-fun b!6730642 () Bool)

(assert (=> b!6730642 (= e!4066182 (store ((as const (Array Context!11882 Bool)) false) (ite (or c!1247907 c!1247906) (Context!11883 lt!2437634) (Context!11883 call!607804)) true))))

(declare-fun b!6730643 () Bool)

(assert (=> b!6730643 (= e!4066179 (nullable!6544 (regOne!33626 (ite c!1247907 (regTwo!33627 (reg!16886 r!7292)) (ite c!1247906 (regTwo!33626 (reg!16886 r!7292)) (ite c!1247910 (regOne!33626 (reg!16886 r!7292)) (reg!16886 (reg!16886 r!7292))))))))))

(assert (= (and d!2114842 c!1248106) b!6730642))

(assert (= (and d!2114842 (not c!1248106)) b!6730633))

(assert (= (and b!6730633 c!1248105) b!6730634))

(assert (= (and b!6730633 (not c!1248105)) b!6730637))

(assert (= (and b!6730637 res!2753629) b!6730643))

(assert (= (and b!6730637 c!1248104) b!6730641))

(assert (= (and b!6730637 (not c!1248104)) b!6730635))

(assert (= (and b!6730635 c!1248108) b!6730638))

(assert (= (and b!6730635 (not c!1248108)) b!6730640))

(assert (= (and b!6730640 c!1248107) b!6730636))

(assert (= (and b!6730640 (not c!1248107)) b!6730639))

(assert (= (or b!6730638 b!6730636) bm!607912))

(assert (= (or b!6730638 b!6730636) bm!607911))

(assert (= (or b!6730641 bm!607912) bm!607910))

(assert (= (or b!6730641 bm!607911) bm!607913))

(assert (= (or b!6730634 bm!607913) bm!607908))

(assert (= (or b!6730634 b!6730641) bm!607909))

(declare-fun m!7489368 () Bool)

(assert (=> bm!607908 m!7489368))

(declare-fun m!7489370 () Bool)

(assert (=> b!6730642 m!7489370))

(declare-fun m!7489374 () Bool)

(assert (=> bm!607910 m!7489374))

(declare-fun m!7489376 () Bool)

(assert (=> bm!607909 m!7489376))

(declare-fun m!7489378 () Bool)

(assert (=> b!6730643 m!7489378))

(assert (=> bm!607796 d!2114842))

(assert (=> b!6730175 d!2114664))

(declare-fun d!2114848 () Bool)

(assert (=> d!2114848 (= (nullable!6544 (regOne!33626 r!7292)) (nullableFct!2457 (regOne!33626 r!7292)))))

(declare-fun bs!1790012 () Bool)

(assert (= bs!1790012 d!2114848))

(declare-fun m!7489382 () Bool)

(assert (=> bs!1790012 m!7489382))

(assert (=> b!6729867 d!2114848))

(declare-fun d!2114852 () Bool)

(assert (=> d!2114852 (= (flatMap!2038 lt!2437631 lambda!377695) (choose!50149 lt!2437631 lambda!377695))))

(declare-fun bs!1790013 () Bool)

(assert (= bs!1790013 d!2114852))

(declare-fun m!7489384 () Bool)

(assert (=> bs!1790013 m!7489384))

(assert (=> d!2114560 d!2114852))

(declare-fun b!6730644 () Bool)

(declare-fun e!4066185 () Bool)

(declare-fun e!4066186 () Bool)

(assert (=> b!6730644 (= e!4066185 e!4066186)))

(declare-fun c!1248110 () Bool)

(assert (=> b!6730644 (= c!1248110 ((_ is Star!16557) lt!2437683))))

(declare-fun b!6730645 () Bool)

(declare-fun res!2753631 () Bool)

(declare-fun e!4066190 () Bool)

(assert (=> b!6730645 (=> (not res!2753631) (not e!4066190))))

(declare-fun call!607919 () Bool)

(assert (=> b!6730645 (= res!2753631 call!607919)))

(declare-fun e!4066188 () Bool)

(assert (=> b!6730645 (= e!4066188 e!4066190)))

(declare-fun bm!607914 () Bool)

(declare-fun call!607920 () Bool)

(declare-fun c!1248109 () Bool)

(assert (=> bm!607914 (= call!607920 (validRegex!8293 (ite c!1248110 (reg!16886 lt!2437683) (ite c!1248109 (regOne!33627 lt!2437683) (regOne!33626 lt!2437683)))))))

(declare-fun d!2114854 () Bool)

(declare-fun res!2753632 () Bool)

(assert (=> d!2114854 (=> res!2753632 e!4066185)))

(assert (=> d!2114854 (= res!2753632 ((_ is ElementMatch!16557) lt!2437683))))

(assert (=> d!2114854 (= (validRegex!8293 lt!2437683) e!4066185)))

(declare-fun b!6730646 () Bool)

(declare-fun call!607921 () Bool)

(assert (=> b!6730646 (= e!4066190 call!607921)))

(declare-fun bm!607915 () Bool)

(assert (=> bm!607915 (= call!607919 call!607920)))

(declare-fun b!6730647 () Bool)

(declare-fun e!4066189 () Bool)

(declare-fun e!4066191 () Bool)

(assert (=> b!6730647 (= e!4066189 e!4066191)))

(declare-fun res!2753630 () Bool)

(assert (=> b!6730647 (=> (not res!2753630) (not e!4066191))))

(assert (=> b!6730647 (= res!2753630 call!607919)))

(declare-fun b!6730648 () Bool)

(assert (=> b!6730648 (= e!4066186 e!4066188)))

(assert (=> b!6730648 (= c!1248109 ((_ is Union!16557) lt!2437683))))

(declare-fun b!6730649 () Bool)

(declare-fun e!4066187 () Bool)

(assert (=> b!6730649 (= e!4066186 e!4066187)))

(declare-fun res!2753633 () Bool)

(assert (=> b!6730649 (= res!2753633 (not (nullable!6544 (reg!16886 lt!2437683))))))

(assert (=> b!6730649 (=> (not res!2753633) (not e!4066187))))

(declare-fun bm!607916 () Bool)

(assert (=> bm!607916 (= call!607921 (validRegex!8293 (ite c!1248109 (regTwo!33627 lt!2437683) (regTwo!33626 lt!2437683))))))

(declare-fun b!6730650 () Bool)

(assert (=> b!6730650 (= e!4066187 call!607920)))

(declare-fun b!6730651 () Bool)

(declare-fun res!2753634 () Bool)

(assert (=> b!6730651 (=> res!2753634 e!4066189)))

(assert (=> b!6730651 (= res!2753634 (not ((_ is Concat!25402) lt!2437683)))))

(assert (=> b!6730651 (= e!4066188 e!4066189)))

(declare-fun b!6730652 () Bool)

(assert (=> b!6730652 (= e!4066191 call!607921)))

(assert (= (and d!2114854 (not res!2753632)) b!6730644))

(assert (= (and b!6730644 c!1248110) b!6730649))

(assert (= (and b!6730644 (not c!1248110)) b!6730648))

(assert (= (and b!6730649 res!2753633) b!6730650))

(assert (= (and b!6730648 c!1248109) b!6730645))

(assert (= (and b!6730648 (not c!1248109)) b!6730651))

(assert (= (and b!6730645 res!2753631) b!6730646))

(assert (= (and b!6730651 (not res!2753634)) b!6730647))

(assert (= (and b!6730647 res!2753630) b!6730652))

(assert (= (or b!6730646 b!6730652) bm!607916))

(assert (= (or b!6730645 b!6730647) bm!607915))

(assert (= (or b!6730650 bm!607915) bm!607914))

(declare-fun m!7489386 () Bool)

(assert (=> bm!607914 m!7489386))

(declare-fun m!7489388 () Bool)

(assert (=> b!6730649 m!7489388))

(declare-fun m!7489390 () Bool)

(assert (=> bm!607916 m!7489390))

(assert (=> d!2114554 d!2114854))

(declare-fun bs!1790014 () Bool)

(declare-fun d!2114856 () Bool)

(assert (= bs!1790014 (and d!2114856 d!2114572)))

(declare-fun lambda!377762 () Int)

(assert (=> bs!1790014 (= lambda!377762 lambda!377705)))

(declare-fun bs!1790015 () Bool)

(assert (= bs!1790015 (and d!2114856 d!2114568)))

(assert (=> bs!1790015 (= lambda!377762 lambda!377701)))

(declare-fun bs!1790016 () Bool)

(assert (= bs!1790016 (and d!2114856 d!2114528)))

(assert (=> bs!1790016 (= lambda!377762 lambda!377682)))

(declare-fun bs!1790017 () Bool)

(assert (= bs!1790017 (and d!2114856 d!2114662)))

(assert (=> bs!1790017 (= lambda!377762 lambda!377740)))

(declare-fun bs!1790018 () Bool)

(assert (= bs!1790018 (and d!2114856 d!2114562)))

(assert (=> bs!1790018 (= lambda!377762 lambda!377696)))

(declare-fun bs!1790019 () Bool)

(assert (= bs!1790019 (and d!2114856 d!2114660)))

(assert (=> bs!1790019 (= lambda!377762 lambda!377739)))

(declare-fun bs!1790020 () Bool)

(assert (= bs!1790020 (and d!2114856 d!2114618)))

(assert (=> bs!1790020 (= lambda!377762 lambda!377733)))

(declare-fun bs!1790021 () Bool)

(assert (= bs!1790021 (and d!2114856 d!2114544)))

(assert (=> bs!1790021 (= lambda!377762 lambda!377694)))

(declare-fun bs!1790022 () Bool)

(assert (= bs!1790022 (and d!2114856 d!2114788)))

(assert (=> bs!1790022 (= lambda!377762 lambda!377752)))

(declare-fun b!6730653 () Bool)

(declare-fun e!4066194 () Bool)

(assert (=> b!6730653 (= e!4066194 (isEmpty!38179 (t!379657 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848)))))))

(declare-fun e!4066197 () Bool)

(assert (=> d!2114856 e!4066197))

(declare-fun res!2753635 () Bool)

(assert (=> d!2114856 (=> (not res!2753635) (not e!4066197))))

(declare-fun lt!2437755 () Regex!16557)

(assert (=> d!2114856 (= res!2753635 (validRegex!8293 lt!2437755))))

(declare-fun e!4066195 () Regex!16557)

(assert (=> d!2114856 (= lt!2437755 e!4066195)))

(declare-fun c!1248112 () Bool)

(assert (=> d!2114856 (= c!1248112 e!4066194)))

(declare-fun res!2753636 () Bool)

(assert (=> d!2114856 (=> (not res!2753636) (not e!4066194))))

(assert (=> d!2114856 (= res!2753636 ((_ is Cons!65846) (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))))))

(assert (=> d!2114856 (forall!15757 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848)) lambda!377762)))

(assert (=> d!2114856 (= (generalisedUnion!2401 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))) lt!2437755)))

(declare-fun b!6730654 () Bool)

(declare-fun e!4066193 () Bool)

(declare-fun e!4066196 () Bool)

(assert (=> b!6730654 (= e!4066193 e!4066196)))

(declare-fun c!1248114 () Bool)

(assert (=> b!6730654 (= c!1248114 (isEmpty!38179 (tail!12626 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848)))))))

(declare-fun b!6730655 () Bool)

(assert (=> b!6730655 (= e!4066196 (= lt!2437755 (head!13541 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848)))))))

(declare-fun b!6730656 () Bool)

(assert (=> b!6730656 (= e!4066195 (h!72294 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))))))

(declare-fun b!6730657 () Bool)

(assert (=> b!6730657 (= e!4066196 (isUnion!1360 lt!2437755))))

(declare-fun b!6730658 () Bool)

(assert (=> b!6730658 (= e!4066197 e!4066193)))

(declare-fun c!1248111 () Bool)

(assert (=> b!6730658 (= c!1248111 (isEmpty!38179 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))))))

(declare-fun b!6730659 () Bool)

(declare-fun e!4066192 () Regex!16557)

(assert (=> b!6730659 (= e!4066195 e!4066192)))

(declare-fun c!1248113 () Bool)

(assert (=> b!6730659 (= c!1248113 ((_ is Cons!65846) (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))))))

(declare-fun b!6730660 () Bool)

(assert (=> b!6730660 (= e!4066192 (Union!16557 (h!72294 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))) (generalisedUnion!2401 (t!379657 (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848))))))))

(declare-fun b!6730661 () Bool)

(assert (=> b!6730661 (= e!4066192 EmptyLang!16557)))

(declare-fun b!6730662 () Bool)

(assert (=> b!6730662 (= e!4066193 (isEmptyLang!1930 lt!2437755))))

(assert (= (and d!2114856 res!2753636) b!6730653))

(assert (= (and d!2114856 c!1248112) b!6730656))

(assert (= (and d!2114856 (not c!1248112)) b!6730659))

(assert (= (and b!6730659 c!1248113) b!6730660))

(assert (= (and b!6730659 (not c!1248113)) b!6730661))

(assert (= (and d!2114856 res!2753635) b!6730658))

(assert (= (and b!6730658 c!1248111) b!6730662))

(assert (= (and b!6730658 (not c!1248111)) b!6730654))

(assert (= (and b!6730654 c!1248114) b!6730655))

(assert (= (and b!6730654 (not c!1248114)) b!6730657))

(declare-fun m!7489392 () Bool)

(assert (=> b!6730660 m!7489392))

(declare-fun m!7489394 () Bool)

(assert (=> b!6730657 m!7489394))

(declare-fun m!7489396 () Bool)

(assert (=> d!2114856 m!7489396))

(assert (=> d!2114856 m!7488734))

(declare-fun m!7489398 () Bool)

(assert (=> d!2114856 m!7489398))

(declare-fun m!7489400 () Bool)

(assert (=> b!6730653 m!7489400))

(assert (=> b!6730655 m!7488734))

(declare-fun m!7489402 () Bool)

(assert (=> b!6730655 m!7489402))

(declare-fun m!7489404 () Bool)

(assert (=> b!6730662 m!7489404))

(assert (=> b!6730654 m!7488734))

(declare-fun m!7489406 () Bool)

(assert (=> b!6730654 m!7489406))

(assert (=> b!6730654 m!7489406))

(declare-fun m!7489408 () Bool)

(assert (=> b!6730654 m!7489408))

(assert (=> b!6730658 m!7488734))

(declare-fun m!7489410 () Bool)

(assert (=> b!6730658 m!7489410))

(assert (=> d!2114554 d!2114856))

(declare-fun bs!1790023 () Bool)

(declare-fun d!2114858 () Bool)

(assert (= bs!1790023 (and d!2114858 d!2114572)))

(declare-fun lambda!377763 () Int)

(assert (=> bs!1790023 (= lambda!377763 lambda!377705)))

(declare-fun bs!1790024 () Bool)

(assert (= bs!1790024 (and d!2114858 d!2114568)))

(assert (=> bs!1790024 (= lambda!377763 lambda!377701)))

(declare-fun bs!1790025 () Bool)

(assert (= bs!1790025 (and d!2114858 d!2114528)))

(assert (=> bs!1790025 (= lambda!377763 lambda!377682)))

(declare-fun bs!1790026 () Bool)

(assert (= bs!1790026 (and d!2114858 d!2114662)))

(assert (=> bs!1790026 (= lambda!377763 lambda!377740)))

(declare-fun bs!1790027 () Bool)

(assert (= bs!1790027 (and d!2114858 d!2114562)))

(assert (=> bs!1790027 (= lambda!377763 lambda!377696)))

(declare-fun bs!1790028 () Bool)

(assert (= bs!1790028 (and d!2114858 d!2114660)))

(assert (=> bs!1790028 (= lambda!377763 lambda!377739)))

(declare-fun bs!1790029 () Bool)

(assert (= bs!1790029 (and d!2114858 d!2114544)))

(assert (=> bs!1790029 (= lambda!377763 lambda!377694)))

(declare-fun bs!1790030 () Bool)

(assert (= bs!1790030 (and d!2114858 d!2114788)))

(assert (=> bs!1790030 (= lambda!377763 lambda!377752)))

(declare-fun bs!1790031 () Bool)

(assert (= bs!1790031 (and d!2114858 d!2114856)))

(assert (=> bs!1790031 (= lambda!377763 lambda!377762)))

(declare-fun bs!1790032 () Bool)

(assert (= bs!1790032 (and d!2114858 d!2114618)))

(assert (=> bs!1790032 (= lambda!377763 lambda!377733)))

(declare-fun lt!2437756 () List!65970)

(assert (=> d!2114858 (forall!15757 lt!2437756 lambda!377763)))

(declare-fun e!4066198 () List!65970)

(assert (=> d!2114858 (= lt!2437756 e!4066198)))

(declare-fun c!1248115 () Bool)

(assert (=> d!2114858 (= c!1248115 ((_ is Cons!65848) (Cons!65848 lt!2437639 Nil!65848)))))

(assert (=> d!2114858 (= (unfocusZipperList!1978 (Cons!65848 lt!2437639 Nil!65848)) lt!2437756)))

(declare-fun b!6730663 () Bool)

(assert (=> b!6730663 (= e!4066198 (Cons!65846 (generalisedConcat!2154 (exprs!6441 (h!72296 (Cons!65848 lt!2437639 Nil!65848)))) (unfocusZipperList!1978 (t!379659 (Cons!65848 lt!2437639 Nil!65848)))))))

(declare-fun b!6730664 () Bool)

(assert (=> b!6730664 (= e!4066198 Nil!65846)))

(assert (= (and d!2114858 c!1248115) b!6730663))

(assert (= (and d!2114858 (not c!1248115)) b!6730664))

(declare-fun m!7489412 () Bool)

(assert (=> d!2114858 m!7489412))

(declare-fun m!7489414 () Bool)

(assert (=> b!6730663 m!7489414))

(declare-fun m!7489416 () Bool)

(assert (=> b!6730663 m!7489416))

(assert (=> d!2114554 d!2114858))

(assert (=> b!6729967 d!2114528))

(declare-fun bs!1790033 () Bool)

(declare-fun d!2114860 () Bool)

(assert (= bs!1790033 (and d!2114860 d!2114568)))

(declare-fun lambda!377764 () Int)

(assert (=> bs!1790033 (= lambda!377764 lambda!377701)))

(declare-fun bs!1790034 () Bool)

(assert (= bs!1790034 (and d!2114860 d!2114528)))

(assert (=> bs!1790034 (= lambda!377764 lambda!377682)))

(declare-fun bs!1790035 () Bool)

(assert (= bs!1790035 (and d!2114860 d!2114662)))

(assert (=> bs!1790035 (= lambda!377764 lambda!377740)))

(declare-fun bs!1790036 () Bool)

(assert (= bs!1790036 (and d!2114860 d!2114562)))

(assert (=> bs!1790036 (= lambda!377764 lambda!377696)))

(declare-fun bs!1790037 () Bool)

(assert (= bs!1790037 (and d!2114860 d!2114660)))

(assert (=> bs!1790037 (= lambda!377764 lambda!377739)))

(declare-fun bs!1790038 () Bool)

(assert (= bs!1790038 (and d!2114860 d!2114544)))

(assert (=> bs!1790038 (= lambda!377764 lambda!377694)))

(declare-fun bs!1790039 () Bool)

(assert (= bs!1790039 (and d!2114860 d!2114788)))

(assert (=> bs!1790039 (= lambda!377764 lambda!377752)))

(declare-fun bs!1790040 () Bool)

(assert (= bs!1790040 (and d!2114860 d!2114572)))

(assert (=> bs!1790040 (= lambda!377764 lambda!377705)))

(declare-fun bs!1790041 () Bool)

(assert (= bs!1790041 (and d!2114860 d!2114858)))

(assert (=> bs!1790041 (= lambda!377764 lambda!377763)))

(declare-fun bs!1790042 () Bool)

(assert (= bs!1790042 (and d!2114860 d!2114856)))

(assert (=> bs!1790042 (= lambda!377764 lambda!377762)))

(declare-fun bs!1790043 () Bool)

(assert (= bs!1790043 (and d!2114860 d!2114618)))

(assert (=> bs!1790043 (= lambda!377764 lambda!377733)))

(declare-fun lt!2437757 () List!65970)

(assert (=> d!2114860 (forall!15757 lt!2437757 lambda!377764)))

(declare-fun e!4066199 () List!65970)

(assert (=> d!2114860 (= lt!2437757 e!4066199)))

(declare-fun c!1248116 () Bool)

(assert (=> d!2114860 (= c!1248116 ((_ is Cons!65848) (t!379659 zl!343)))))

(assert (=> d!2114860 (= (unfocusZipperList!1978 (t!379659 zl!343)) lt!2437757)))

(declare-fun b!6730665 () Bool)

(assert (=> b!6730665 (= e!4066199 (Cons!65846 (generalisedConcat!2154 (exprs!6441 (h!72296 (t!379659 zl!343)))) (unfocusZipperList!1978 (t!379659 (t!379659 zl!343)))))))

(declare-fun b!6730666 () Bool)

(assert (=> b!6730666 (= e!4066199 Nil!65846)))

(assert (= (and d!2114860 c!1248116) b!6730665))

(assert (= (and d!2114860 (not c!1248116)) b!6730666))

(declare-fun m!7489418 () Bool)

(assert (=> d!2114860 m!7489418))

(declare-fun m!7489420 () Bool)

(assert (=> b!6730665 m!7489420))

(declare-fun m!7489422 () Bool)

(assert (=> b!6730665 m!7489422))

(assert (=> b!6729967 d!2114860))

(declare-fun d!2114862 () Bool)

(assert (=> d!2114862 (= (head!13541 (exprs!6441 (h!72296 zl!343))) (h!72294 (exprs!6441 (h!72296 zl!343))))))

(assert (=> b!6729823 d!2114862))

(declare-fun b!6730667 () Bool)

(declare-fun e!4066201 () (InoxSet Context!11882))

(declare-fun e!4066200 () (InoxSet Context!11882))

(assert (=> b!6730667 (= e!4066201 e!4066200)))

(declare-fun c!1248117 () Bool)

(assert (=> b!6730667 (= c!1248117 ((_ is Cons!65846) (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))))))))

(declare-fun call!607922 () (InoxSet Context!11882))

(declare-fun b!6730668 () Bool)

(assert (=> b!6730668 (= e!4066201 ((_ map or) call!607922 (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343))))))) (h!72295 s!2326))))))

(declare-fun b!6730669 () Bool)

(assert (=> b!6730669 (= e!4066200 call!607922)))

(declare-fun d!2114864 () Bool)

(declare-fun c!1248118 () Bool)

(declare-fun e!4066202 () Bool)

(assert (=> d!2114864 (= c!1248118 e!4066202)))

(declare-fun res!2753637 () Bool)

(assert (=> d!2114864 (=> (not res!2753637) (not e!4066202))))

(assert (=> d!2114864 (= res!2753637 ((_ is Cons!65846) (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))))))))

(assert (=> d!2114864 (= (derivationStepZipperUp!1711 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))) (h!72295 s!2326)) e!4066201)))

(declare-fun bm!607917 () Bool)

(assert (=> bm!607917 (= call!607922 (derivationStepZipperDown!1785 (h!72294 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))))) (Context!11883 (t!379657 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343))))))) (h!72295 s!2326)))))

(declare-fun b!6730670 () Bool)

(assert (=> b!6730670 (= e!4066200 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730671 () Bool)

(assert (=> b!6730671 (= e!4066202 (nullable!6544 (h!72294 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343))))))))))

(assert (= (and d!2114864 res!2753637) b!6730671))

(assert (= (and d!2114864 c!1248118) b!6730668))

(assert (= (and d!2114864 (not c!1248118)) b!6730667))

(assert (= (and b!6730667 c!1248117) b!6730669))

(assert (= (and b!6730667 (not c!1248117)) b!6730670))

(assert (= (or b!6730668 b!6730669) bm!607917))

(declare-fun m!7489424 () Bool)

(assert (=> b!6730668 m!7489424))

(declare-fun m!7489426 () Bool)

(assert (=> bm!607917 m!7489426))

(declare-fun m!7489428 () Bool)

(assert (=> b!6730671 m!7489428))

(assert (=> b!6729783 d!2114864))

(declare-fun d!2114866 () Bool)

(assert (=> d!2114866 (= (Exists!3625 lambda!377722) (choose!50157 lambda!377722))))

(declare-fun bs!1790044 () Bool)

(assert (= bs!1790044 d!2114866))

(declare-fun m!7489430 () Bool)

(assert (=> bs!1790044 m!7489430))

(assert (=> d!2114592 d!2114866))

(declare-fun d!2114868 () Bool)

(assert (=> d!2114868 (= (Exists!3625 lambda!377725) (choose!50157 lambda!377725))))

(declare-fun bs!1790045 () Bool)

(assert (= bs!1790045 d!2114868))

(declare-fun m!7489432 () Bool)

(assert (=> bs!1790045 m!7489432))

(assert (=> d!2114592 d!2114868))

(declare-fun bs!1790046 () Bool)

(declare-fun d!2114870 () Bool)

(assert (= bs!1790046 (and d!2114870 d!2114712)))

(declare-fun lambda!377773 () Int)

(assert (=> bs!1790046 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377773 lambda!377744))))

(declare-fun bs!1790047 () Bool)

(assert (= bs!1790047 (and d!2114870 b!6729674)))

(assert (=> bs!1790047 (not (= lambda!377773 lambda!377669))))

(declare-fun bs!1790048 () Bool)

(assert (= bs!1790048 (and d!2114870 d!2114580)))

(assert (=> bs!1790048 (not (= lambda!377773 lambda!377715))))

(declare-fun bs!1790049 () Bool)

(assert (= bs!1790049 (and d!2114870 b!6730241)))

(assert (=> bs!1790049 (not (= lambda!377773 lambda!377734))))

(declare-fun bs!1790050 () Bool)

(assert (= bs!1790050 (and d!2114870 d!2114592)))

(assert (=> bs!1790050 (= lambda!377773 lambda!377722)))

(declare-fun bs!1790051 () Bool)

(assert (= bs!1790051 (and d!2114870 b!6729675)))

(assert (=> bs!1790051 (not (= lambda!377773 lambda!377670))))

(declare-fun bs!1790052 () Bool)

(assert (= bs!1790052 (and d!2114870 b!6729490)))

(assert (=> bs!1790052 (not (= lambda!377773 lambda!377654))))

(declare-fun bs!1790053 () Bool)

(assert (= bs!1790053 (and d!2114870 b!6730524)))

(assert (=> bs!1790053 (not (= lambda!377773 lambda!377751))))

(declare-fun bs!1790054 () Bool)

(assert (= bs!1790054 (and d!2114870 d!2114616)))

(assert (=> bs!1790054 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377773 lambda!377732))))

(declare-fun bs!1790055 () Bool)

(assert (= bs!1790055 (and d!2114870 d!2114820)))

(assert (=> bs!1790055 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377773 lambda!377760))))

(assert (=> bs!1790050 (not (= lambda!377773 lambda!377725))))

(declare-fun bs!1790056 () Bool)

(assert (= bs!1790056 (and d!2114870 b!6730242)))

(assert (=> bs!1790056 (not (= lambda!377773 lambda!377735))))

(assert (=> bs!1790055 (not (= lambda!377773 lambda!377761))))

(assert (=> bs!1790048 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377773 lambda!377714))))

(assert (=> bs!1790052 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377773 lambda!377652))))

(assert (=> bs!1790052 (not (= lambda!377773 lambda!377653))))

(declare-fun bs!1790057 () Bool)

(assert (= bs!1790057 (and d!2114870 b!6730523)))

(assert (=> bs!1790057 (not (= lambda!377773 lambda!377749))))

(assert (=> d!2114870 true))

(assert (=> d!2114870 true))

(declare-fun lambda!377775 () Int)

(assert (=> bs!1790046 (not (= lambda!377775 lambda!377744))))

(assert (=> bs!1790047 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377775 lambda!377669))))

(assert (=> bs!1790048 (not (= lambda!377775 lambda!377715))))

(assert (=> bs!1790049 (= (and (= (reg!16886 r!7292) (reg!16886 (regTwo!33627 r!7292))) (= (Star!16557 (reg!16886 r!7292)) (regTwo!33627 r!7292))) (= lambda!377775 lambda!377734))))

(assert (=> bs!1790050 (not (= lambda!377775 lambda!377722))))

(assert (=> bs!1790051 (not (= lambda!377775 lambda!377670))))

(assert (=> bs!1790052 (not (= lambda!377775 lambda!377654))))

(assert (=> bs!1790053 (not (= lambda!377775 lambda!377751))))

(assert (=> bs!1790054 (not (= lambda!377775 lambda!377732))))

(assert (=> bs!1790055 (not (= lambda!377775 lambda!377760))))

(assert (=> bs!1790050 (= lambda!377775 lambda!377725)))

(assert (=> bs!1790056 (not (= lambda!377775 lambda!377735))))

(assert (=> bs!1790048 (not (= lambda!377775 lambda!377714))))

(assert (=> bs!1790052 (not (= lambda!377775 lambda!377652))))

(declare-fun bs!1790066 () Bool)

(assert (= bs!1790066 d!2114870))

(assert (=> bs!1790066 (not (= lambda!377775 lambda!377773))))

(assert (=> bs!1790055 (not (= lambda!377775 lambda!377761))))

(assert (=> bs!1790052 (= (= (Star!16557 (reg!16886 r!7292)) r!7292) (= lambda!377775 lambda!377653))))

(assert (=> bs!1790057 (= (and (= (reg!16886 r!7292) (reg!16886 (regOne!33627 r!7292))) (= (Star!16557 (reg!16886 r!7292)) (regOne!33627 r!7292))) (= lambda!377775 lambda!377749))))

(assert (=> d!2114870 true))

(assert (=> d!2114870 true))

(assert (=> d!2114870 (= (Exists!3625 lambda!377773) (Exists!3625 lambda!377775))))

(assert (=> d!2114870 true))

(declare-fun _$91!691 () Unit!159805)

(assert (=> d!2114870 (= (choose!50159 (reg!16886 r!7292) s!2326) _$91!691)))

(declare-fun m!7489434 () Bool)

(assert (=> bs!1790066 m!7489434))

(declare-fun m!7489436 () Bool)

(assert (=> bs!1790066 m!7489436))

(assert (=> d!2114592 d!2114870))

(assert (=> d!2114592 d!2114668))

(declare-fun d!2114872 () Bool)

(declare-fun res!2753658 () Bool)

(declare-fun e!4066211 () Bool)

(assert (=> d!2114872 (=> res!2753658 e!4066211)))

(assert (=> d!2114872 (= res!2753658 ((_ is Nil!65846) (exprs!6441 (h!72296 zl!343))))))

(assert (=> d!2114872 (= (forall!15757 (exprs!6441 (h!72296 zl!343)) lambda!377733) e!4066211)))

(declare-fun b!6730692 () Bool)

(declare-fun e!4066212 () Bool)

(assert (=> b!6730692 (= e!4066211 e!4066212)))

(declare-fun res!2753659 () Bool)

(assert (=> b!6730692 (=> (not res!2753659) (not e!4066212))))

(assert (=> b!6730692 (= res!2753659 (dynLambda!26266 lambda!377733 (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun b!6730693 () Bool)

(assert (=> b!6730693 (= e!4066212 (forall!15757 (t!379657 (exprs!6441 (h!72296 zl!343))) lambda!377733))))

(assert (= (and d!2114872 (not res!2753658)) b!6730692))

(assert (= (and b!6730692 res!2753659) b!6730693))

(declare-fun b_lambda!253399 () Bool)

(assert (=> (not b_lambda!253399) (not b!6730692)))

(declare-fun m!7489438 () Bool)

(assert (=> b!6730692 m!7489438))

(declare-fun m!7489440 () Bool)

(assert (=> b!6730693 m!7489440))

(assert (=> d!2114618 d!2114872))

(assert (=> b!6729741 d!2114642))

(declare-fun d!2114874 () Bool)

(assert (=> d!2114874 true))

(assert (=> d!2114874 true))

(declare-fun res!2753660 () Bool)

(assert (=> d!2114874 (= (choose!50157 lambda!377653) res!2753660)))

(assert (=> d!2114604 d!2114874))

(assert (=> d!2114504 d!2114494))

(assert (=> d!2114504 d!2114488))

(declare-fun d!2114876 () Bool)

(assert (=> d!2114876 (= (matchR!8740 r!7292 s!2326) (matchRSpec!3658 r!7292 s!2326))))

(assert (=> d!2114876 true))

(declare-fun _$88!5471 () Unit!159805)

(assert (=> d!2114876 (= (choose!50148 r!7292 s!2326) _$88!5471)))

(declare-fun bs!1790068 () Bool)

(assert (= bs!1790068 d!2114876))

(assert (=> bs!1790068 m!7488490))

(assert (=> bs!1790068 m!7488488))

(assert (=> d!2114504 d!2114876))

(assert (=> d!2114504 d!2114486))

(assert (=> bs!1789882 d!2114550))

(declare-fun b!6730694 () Bool)

(declare-fun e!4066216 () (InoxSet Context!11882))

(declare-fun e!4066214 () (InoxSet Context!11882))

(assert (=> b!6730694 (= e!4066216 e!4066214)))

(declare-fun c!1248120 () Bool)

(assert (=> b!6730694 (= c!1248120 ((_ is Union!16557) (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))))))

(declare-fun c!1248119 () Bool)

(declare-fun call!607925 () (InoxSet Context!11882))

(declare-fun bm!607918 () Bool)

(declare-fun c!1248123 () Bool)

(declare-fun call!607926 () List!65970)

(assert (=> bm!607918 (= call!607925 (derivationStepZipperDown!1785 (ite c!1248120 (regTwo!33627 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))) (ite c!1248119 (regTwo!33626 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))) (ite c!1248123 (regOne!33626 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))) (reg!16886 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292)))))))) (ite (or c!1248120 c!1248119) (ite (or c!1247898 c!1247897) (Context!11883 Nil!65846) (Context!11883 call!607797)) (Context!11883 call!607926)) (h!72295 s!2326)))))

(declare-fun b!6730695 () Bool)

(declare-fun call!607923 () (InoxSet Context!11882))

(assert (=> b!6730695 (= e!4066214 ((_ map or) call!607923 call!607925))))

(declare-fun b!6730696 () Bool)

(declare-fun e!4066218 () (InoxSet Context!11882))

(declare-fun e!4066217 () (InoxSet Context!11882))

(assert (=> b!6730696 (= e!4066218 e!4066217)))

(assert (=> b!6730696 (= c!1248123 ((_ is Concat!25402) (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))))))

(declare-fun call!607924 () List!65970)

(declare-fun bm!607919 () Bool)

(assert (=> bm!607919 (= call!607923 (derivationStepZipperDown!1785 (ite c!1248120 (regOne!33627 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))) (regOne!33626 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292)))))) (ite c!1248120 (ite (or c!1247898 c!1247897) (Context!11883 Nil!65846) (Context!11883 call!607797)) (Context!11883 call!607924)) (h!72295 s!2326)))))

(declare-fun b!6730697 () Bool)

(declare-fun e!4066215 () (InoxSet Context!11882))

(declare-fun call!607928 () (InoxSet Context!11882))

(assert (=> b!6730697 (= e!4066215 call!607928)))

(declare-fun bm!607920 () Bool)

(assert (=> bm!607920 (= call!607924 ($colon$colon!2374 (exprs!6441 (ite (or c!1247898 c!1247897) (Context!11883 Nil!65846) (Context!11883 call!607797))) (ite (or c!1248119 c!1248123) (regTwo!33626 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))) (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292)))))))))

(declare-fun b!6730698 () Bool)

(declare-fun e!4066213 () Bool)

(assert (=> b!6730698 (= c!1248119 e!4066213)))

(declare-fun res!2753661 () Bool)

(assert (=> b!6730698 (=> (not res!2753661) (not e!4066213))))

(assert (=> b!6730698 (= res!2753661 ((_ is Concat!25402) (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))))))

(assert (=> b!6730698 (= e!4066214 e!4066218)))

(declare-fun b!6730699 () Bool)

(assert (=> b!6730699 (= e!4066217 call!607928)))

(declare-fun c!1248121 () Bool)

(declare-fun d!2114878 () Bool)

(assert (=> d!2114878 (= c!1248121 (and ((_ is ElementMatch!16557) (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))) (= (c!1247791 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))) (h!72295 s!2326))))))

(assert (=> d!2114878 (= (derivationStepZipperDown!1785 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292)))) (ite (or c!1247898 c!1247897) (Context!11883 Nil!65846) (Context!11883 call!607797)) (h!72295 s!2326)) e!4066216)))

(declare-fun bm!607921 () Bool)

(declare-fun call!607927 () (InoxSet Context!11882))

(assert (=> bm!607921 (= call!607928 call!607927)))

(declare-fun b!6730700 () Bool)

(assert (=> b!6730700 (= e!4066215 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730701 () Bool)

(declare-fun c!1248122 () Bool)

(assert (=> b!6730701 (= c!1248122 ((_ is Star!16557) (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292))))))))

(assert (=> b!6730701 (= e!4066217 e!4066215)))

(declare-fun bm!607922 () Bool)

(assert (=> bm!607922 (= call!607926 call!607924)))

(declare-fun b!6730702 () Bool)

(assert (=> b!6730702 (= e!4066218 ((_ map or) call!607923 call!607927))))

(declare-fun bm!607923 () Bool)

(assert (=> bm!607923 (= call!607927 call!607925)))

(declare-fun b!6730703 () Bool)

(assert (=> b!6730703 (= e!4066216 (store ((as const (Array Context!11882 Bool)) false) (ite (or c!1247898 c!1247897) (Context!11883 Nil!65846) (Context!11883 call!607797)) true))))

(declare-fun b!6730704 () Bool)

(assert (=> b!6730704 (= e!4066213 (nullable!6544 (regOne!33626 (ite c!1247898 (regTwo!33627 r!7292) (ite c!1247897 (regTwo!33626 r!7292) (ite c!1247901 (regOne!33626 r!7292) (reg!16886 r!7292)))))))))

(assert (= (and d!2114878 c!1248121) b!6730703))

(assert (= (and d!2114878 (not c!1248121)) b!6730694))

(assert (= (and b!6730694 c!1248120) b!6730695))

(assert (= (and b!6730694 (not c!1248120)) b!6730698))

(assert (= (and b!6730698 res!2753661) b!6730704))

(assert (= (and b!6730698 c!1248119) b!6730702))

(assert (= (and b!6730698 (not c!1248119)) b!6730696))

(assert (= (and b!6730696 c!1248123) b!6730699))

(assert (= (and b!6730696 (not c!1248123)) b!6730701))

(assert (= (and b!6730701 c!1248122) b!6730697))

(assert (= (and b!6730701 (not c!1248122)) b!6730700))

(assert (= (or b!6730699 b!6730697) bm!607922))

(assert (= (or b!6730699 b!6730697) bm!607921))

(assert (= (or b!6730702 bm!607922) bm!607920))

(assert (= (or b!6730702 bm!607921) bm!607923))

(assert (= (or b!6730695 bm!607923) bm!607918))

(assert (= (or b!6730695 b!6730702) bm!607919))

(declare-fun m!7489446 () Bool)

(assert (=> bm!607918 m!7489446))

(declare-fun m!7489448 () Bool)

(assert (=> b!6730703 m!7489448))

(declare-fun m!7489450 () Bool)

(assert (=> bm!607920 m!7489450))

(declare-fun m!7489452 () Bool)

(assert (=> bm!607919 m!7489452))

(declare-fun m!7489454 () Bool)

(assert (=> b!6730704 m!7489454))

(assert (=> bm!607789 d!2114878))

(declare-fun d!2114882 () Bool)

(assert (=> d!2114882 (= (nullable!6544 (reg!16886 r!7292)) (nullableFct!2457 (reg!16886 r!7292)))))

(declare-fun bs!1790069 () Bool)

(assert (= bs!1790069 d!2114882))

(declare-fun m!7489456 () Bool)

(assert (=> bs!1790069 m!7489456))

(assert (=> b!6729582 d!2114882))

(declare-fun d!2114884 () Bool)

(assert (=> d!2114884 true))

(declare-fun setRes!45913 () Bool)

(assert (=> d!2114884 setRes!45913))

(declare-fun condSetEmpty!45913 () Bool)

(declare-fun res!2753667 () (InoxSet Context!11882))

(assert (=> d!2114884 (= condSetEmpty!45913 (= res!2753667 ((as const (Array Context!11882 Bool)) false)))))

(assert (=> d!2114884 (= (choose!50149 lt!2437631 lambda!377655) res!2753667)))

(declare-fun setIsEmpty!45913 () Bool)

(assert (=> setIsEmpty!45913 setRes!45913))

(declare-fun setNonEmpty!45913 () Bool)

(declare-fun setElem!45913 () Context!11882)

(declare-fun tp!1845290 () Bool)

(declare-fun e!4066226 () Bool)

(assert (=> setNonEmpty!45913 (= setRes!45913 (and tp!1845290 (inv!84639 setElem!45913) e!4066226))))

(declare-fun setRest!45913 () (InoxSet Context!11882))

(assert (=> setNonEmpty!45913 (= res!2753667 ((_ map or) (store ((as const (Array Context!11882 Bool)) false) setElem!45913 true) setRest!45913))))

(declare-fun b!6730714 () Bool)

(declare-fun tp!1845291 () Bool)

(assert (=> b!6730714 (= e!4066226 tp!1845291)))

(assert (= (and d!2114884 condSetEmpty!45913) setIsEmpty!45913))

(assert (= (and d!2114884 (not condSetEmpty!45913)) setNonEmpty!45913))

(assert (= setNonEmpty!45913 b!6730714))

(declare-fun m!7489458 () Bool)

(assert (=> setNonEmpty!45913 m!7489458))

(assert (=> d!2114548 d!2114884))

(declare-fun bs!1790070 () Bool)

(declare-fun d!2114886 () Bool)

(assert (= bs!1790070 (and d!2114886 d!2114638)))

(declare-fun lambda!377777 () Int)

(assert (=> bs!1790070 (= lambda!377777 lambda!377738)))

(assert (=> d!2114886 (= (nullableZipper!2272 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326))) (exists!2690 (derivationStepZipper!2501 lt!2437631 (h!72295 s!2326)) lambda!377777))))

(declare-fun bs!1790071 () Bool)

(assert (= bs!1790071 d!2114886))

(assert (=> bs!1790071 m!7488512))

(declare-fun m!7489460 () Bool)

(assert (=> bs!1790071 m!7489460))

(assert (=> b!6729915 d!2114886))

(declare-fun d!2114888 () Bool)

(declare-fun res!2753668 () Bool)

(declare-fun e!4066227 () Bool)

(assert (=> d!2114888 (=> res!2753668 e!4066227)))

(assert (=> d!2114888 (= res!2753668 ((_ is Nil!65846) lt!2437704))))

(assert (=> d!2114888 (= (forall!15757 lt!2437704 lambda!377705) e!4066227)))

(declare-fun b!6730715 () Bool)

(declare-fun e!4066228 () Bool)

(assert (=> b!6730715 (= e!4066227 e!4066228)))

(declare-fun res!2753669 () Bool)

(assert (=> b!6730715 (=> (not res!2753669) (not e!4066228))))

(assert (=> b!6730715 (= res!2753669 (dynLambda!26266 lambda!377705 (h!72294 lt!2437704)))))

(declare-fun b!6730716 () Bool)

(assert (=> b!6730716 (= e!4066228 (forall!15757 (t!379657 lt!2437704) lambda!377705))))

(assert (= (and d!2114888 (not res!2753668)) b!6730715))

(assert (= (and b!6730715 res!2753669) b!6730716))

(declare-fun b_lambda!253401 () Bool)

(assert (=> (not b_lambda!253401) (not b!6730715)))

(declare-fun m!7489468 () Bool)

(assert (=> b!6730715 m!7489468))

(declare-fun m!7489470 () Bool)

(assert (=> b!6730716 m!7489470))

(assert (=> d!2114572 d!2114888))

(declare-fun d!2114892 () Bool)

(declare-fun res!2753670 () Bool)

(declare-fun e!4066229 () Bool)

(assert (=> d!2114892 (=> res!2753670 e!4066229)))

(assert (=> d!2114892 (= res!2753670 ((_ is Nil!65846) (exprs!6441 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846)))))))

(assert (=> d!2114892 (= (forall!15757 (exprs!6441 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846))) lambda!377696) e!4066229)))

(declare-fun b!6730717 () Bool)

(declare-fun e!4066230 () Bool)

(assert (=> b!6730717 (= e!4066229 e!4066230)))

(declare-fun res!2753671 () Bool)

(assert (=> b!6730717 (=> (not res!2753671) (not e!4066230))))

(assert (=> b!6730717 (= res!2753671 (dynLambda!26266 lambda!377696 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846))))))))

(declare-fun b!6730718 () Bool)

(assert (=> b!6730718 (= e!4066230 (forall!15757 (t!379657 (exprs!6441 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846)))) lambda!377696))))

(assert (= (and d!2114892 (not res!2753670)) b!6730717))

(assert (= (and b!6730717 res!2753671) b!6730718))

(declare-fun b_lambda!253403 () Bool)

(assert (=> (not b_lambda!253403) (not b!6730717)))

(declare-fun m!7489472 () Bool)

(assert (=> b!6730717 m!7489472))

(declare-fun m!7489474 () Bool)

(assert (=> b!6730718 m!7489474))

(assert (=> d!2114562 d!2114892))

(declare-fun b!6730719 () Bool)

(declare-fun e!4066234 () (InoxSet Context!11882))

(declare-fun e!4066232 () (InoxSet Context!11882))

(assert (=> b!6730719 (= e!4066234 e!4066232)))

(declare-fun c!1248127 () Bool)

(assert (=> b!6730719 (= c!1248127 ((_ is Union!16557) (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun c!1248126 () Bool)

(declare-fun call!607935 () List!65970)

(declare-fun bm!607927 () Bool)

(declare-fun c!1248130 () Bool)

(declare-fun call!607934 () (InoxSet Context!11882))

(assert (=> bm!607927 (= call!607934 (derivationStepZipperDown!1785 (ite c!1248127 (regTwo!33627 (h!72294 (exprs!6441 (h!72296 zl!343)))) (ite c!1248126 (regTwo!33626 (h!72294 (exprs!6441 (h!72296 zl!343)))) (ite c!1248130 (regOne!33626 (h!72294 (exprs!6441 (h!72296 zl!343)))) (reg!16886 (h!72294 (exprs!6441 (h!72296 zl!343))))))) (ite (or c!1248127 c!1248126) (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))) (Context!11883 call!607935)) (h!72295 s!2326)))))

(declare-fun b!6730720 () Bool)

(declare-fun call!607932 () (InoxSet Context!11882))

(assert (=> b!6730720 (= e!4066232 ((_ map or) call!607932 call!607934))))

(declare-fun b!6730721 () Bool)

(declare-fun e!4066236 () (InoxSet Context!11882))

(declare-fun e!4066235 () (InoxSet Context!11882))

(assert (=> b!6730721 (= e!4066236 e!4066235)))

(assert (=> b!6730721 (= c!1248130 ((_ is Concat!25402) (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun bm!607928 () Bool)

(declare-fun call!607933 () List!65970)

(assert (=> bm!607928 (= call!607932 (derivationStepZipperDown!1785 (ite c!1248127 (regOne!33627 (h!72294 (exprs!6441 (h!72296 zl!343)))) (regOne!33626 (h!72294 (exprs!6441 (h!72296 zl!343))))) (ite c!1248127 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))) (Context!11883 call!607933)) (h!72295 s!2326)))))

(declare-fun b!6730722 () Bool)

(declare-fun e!4066233 () (InoxSet Context!11882))

(declare-fun call!607937 () (InoxSet Context!11882))

(assert (=> b!6730722 (= e!4066233 call!607937)))

(declare-fun bm!607929 () Bool)

(assert (=> bm!607929 (= call!607933 ($colon$colon!2374 (exprs!6441 (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343))))) (ite (or c!1248126 c!1248130) (regTwo!33626 (h!72294 (exprs!6441 (h!72296 zl!343)))) (h!72294 (exprs!6441 (h!72296 zl!343))))))))

(declare-fun b!6730723 () Bool)

(declare-fun e!4066231 () Bool)

(assert (=> b!6730723 (= c!1248126 e!4066231)))

(declare-fun res!2753672 () Bool)

(assert (=> b!6730723 (=> (not res!2753672) (not e!4066231))))

(assert (=> b!6730723 (= res!2753672 ((_ is Concat!25402) (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(assert (=> b!6730723 (= e!4066232 e!4066236)))

(declare-fun b!6730724 () Bool)

(assert (=> b!6730724 (= e!4066235 call!607937)))

(declare-fun d!2114894 () Bool)

(declare-fun c!1248128 () Bool)

(assert (=> d!2114894 (= c!1248128 (and ((_ is ElementMatch!16557) (h!72294 (exprs!6441 (h!72296 zl!343)))) (= (c!1247791 (h!72294 (exprs!6441 (h!72296 zl!343)))) (h!72295 s!2326))))))

(assert (=> d!2114894 (= (derivationStepZipperDown!1785 (h!72294 (exprs!6441 (h!72296 zl!343))) (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))) (h!72295 s!2326)) e!4066234)))

(declare-fun bm!607930 () Bool)

(declare-fun call!607936 () (InoxSet Context!11882))

(assert (=> bm!607930 (= call!607937 call!607936)))

(declare-fun b!6730725 () Bool)

(assert (=> b!6730725 (= e!4066233 ((as const (Array Context!11882 Bool)) false))))

(declare-fun b!6730726 () Bool)

(declare-fun c!1248129 () Bool)

(assert (=> b!6730726 (= c!1248129 ((_ is Star!16557) (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(assert (=> b!6730726 (= e!4066235 e!4066233)))

(declare-fun bm!607931 () Bool)

(assert (=> bm!607931 (= call!607935 call!607933)))

(declare-fun b!6730727 () Bool)

(assert (=> b!6730727 (= e!4066236 ((_ map or) call!607932 call!607936))))

(declare-fun bm!607932 () Bool)

(assert (=> bm!607932 (= call!607936 call!607934)))

(declare-fun b!6730728 () Bool)

(assert (=> b!6730728 (= e!4066234 (store ((as const (Array Context!11882 Bool)) false) (Context!11883 (t!379657 (exprs!6441 (h!72296 zl!343)))) true))))

(declare-fun b!6730729 () Bool)

(assert (=> b!6730729 (= e!4066231 (nullable!6544 (regOne!33626 (h!72294 (exprs!6441 (h!72296 zl!343))))))))

(assert (= (and d!2114894 c!1248128) b!6730728))

(assert (= (and d!2114894 (not c!1248128)) b!6730719))

(assert (= (and b!6730719 c!1248127) b!6730720))

(assert (= (and b!6730719 (not c!1248127)) b!6730723))

(assert (= (and b!6730723 res!2753672) b!6730729))

(assert (= (and b!6730723 c!1248126) b!6730727))

(assert (= (and b!6730723 (not c!1248126)) b!6730721))

(assert (= (and b!6730721 c!1248130) b!6730724))

(assert (= (and b!6730721 (not c!1248130)) b!6730726))

(assert (= (and b!6730726 c!1248129) b!6730722))

(assert (= (and b!6730726 (not c!1248129)) b!6730725))

(assert (= (or b!6730724 b!6730722) bm!607931))

(assert (= (or b!6730724 b!6730722) bm!607930))

(assert (= (or b!6730727 bm!607931) bm!607929))

(assert (= (or b!6730727 bm!607930) bm!607932))

(assert (= (or b!6730720 bm!607932) bm!607927))

(assert (= (or b!6730720 b!6730727) bm!607928))

(declare-fun m!7489476 () Bool)

(assert (=> bm!607927 m!7489476))

(declare-fun m!7489478 () Bool)

(assert (=> b!6730728 m!7489478))

(declare-fun m!7489480 () Bool)

(assert (=> bm!607929 m!7489480))

(declare-fun m!7489482 () Bool)

(assert (=> bm!607928 m!7489482))

(declare-fun m!7489484 () Bool)

(assert (=> b!6730729 m!7489484))

(assert (=> bm!607776 d!2114894))

(declare-fun d!2114900 () Bool)

(assert (=> d!2114900 (= (nullable!6544 (h!72294 (exprs!6441 (h!72296 zl!343)))) (nullableFct!2457 (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun bs!1790072 () Bool)

(assert (= bs!1790072 d!2114900))

(declare-fun m!7489486 () Bool)

(assert (=> bs!1790072 m!7489486))

(assert (=> b!6729786 d!2114900))

(declare-fun bs!1790073 () Bool)

(declare-fun d!2114902 () Bool)

(assert (= bs!1790073 (and d!2114902 d!2114568)))

(declare-fun lambda!377778 () Int)

(assert (=> bs!1790073 (= lambda!377778 lambda!377701)))

(declare-fun bs!1790074 () Bool)

(assert (= bs!1790074 (and d!2114902 d!2114528)))

(assert (=> bs!1790074 (= lambda!377778 lambda!377682)))

(declare-fun bs!1790075 () Bool)

(assert (= bs!1790075 (and d!2114902 d!2114662)))

(assert (=> bs!1790075 (= lambda!377778 lambda!377740)))

(declare-fun bs!1790076 () Bool)

(assert (= bs!1790076 (and d!2114902 d!2114562)))

(assert (=> bs!1790076 (= lambda!377778 lambda!377696)))

(declare-fun bs!1790077 () Bool)

(assert (= bs!1790077 (and d!2114902 d!2114660)))

(assert (=> bs!1790077 (= lambda!377778 lambda!377739)))

(declare-fun bs!1790078 () Bool)

(assert (= bs!1790078 (and d!2114902 d!2114860)))

(assert (=> bs!1790078 (= lambda!377778 lambda!377764)))

(declare-fun bs!1790079 () Bool)

(assert (= bs!1790079 (and d!2114902 d!2114544)))

(assert (=> bs!1790079 (= lambda!377778 lambda!377694)))

(declare-fun bs!1790080 () Bool)

(assert (= bs!1790080 (and d!2114902 d!2114788)))

(assert (=> bs!1790080 (= lambda!377778 lambda!377752)))

(declare-fun bs!1790081 () Bool)

(assert (= bs!1790081 (and d!2114902 d!2114572)))

(assert (=> bs!1790081 (= lambda!377778 lambda!377705)))

(declare-fun bs!1790082 () Bool)

(assert (= bs!1790082 (and d!2114902 d!2114858)))

(assert (=> bs!1790082 (= lambda!377778 lambda!377763)))

(declare-fun bs!1790083 () Bool)

(assert (= bs!1790083 (and d!2114902 d!2114856)))

(assert (=> bs!1790083 (= lambda!377778 lambda!377762)))

(declare-fun bs!1790084 () Bool)

(assert (= bs!1790084 (and d!2114902 d!2114618)))

(assert (=> bs!1790084 (= lambda!377778 lambda!377733)))

(assert (=> d!2114902 (= (inv!84639 setElem!45905) (forall!15757 (exprs!6441 setElem!45905) lambda!377778))))

(declare-fun bs!1790085 () Bool)

(assert (= bs!1790085 d!2114902))

(declare-fun m!7489488 () Bool)

(assert (=> bs!1790085 m!7489488))

(assert (=> setNonEmpty!45905 d!2114902))

(assert (=> d!2114556 d!2114602))

(declare-fun d!2114904 () Bool)

(declare-fun res!2753674 () Bool)

(declare-fun e!4066243 () Bool)

(assert (=> d!2114904 (=> res!2753674 e!4066243)))

(assert (=> d!2114904 (= res!2753674 ((_ is Nil!65846) (exprs!6441 setElem!45899)))))

(assert (=> d!2114904 (= (forall!15757 (exprs!6441 setElem!45899) lambda!377694) e!4066243)))

(declare-fun b!6730741 () Bool)

(declare-fun e!4066244 () Bool)

(assert (=> b!6730741 (= e!4066243 e!4066244)))

(declare-fun res!2753675 () Bool)

(assert (=> b!6730741 (=> (not res!2753675) (not e!4066244))))

(assert (=> b!6730741 (= res!2753675 (dynLambda!26266 lambda!377694 (h!72294 (exprs!6441 setElem!45899))))))

(declare-fun b!6730742 () Bool)

(assert (=> b!6730742 (= e!4066244 (forall!15757 (t!379657 (exprs!6441 setElem!45899)) lambda!377694))))

(assert (= (and d!2114904 (not res!2753674)) b!6730741))

(assert (= (and b!6730741 res!2753675) b!6730742))

(declare-fun b_lambda!253405 () Bool)

(assert (=> (not b_lambda!253405) (not b!6730741)))

(declare-fun m!7489500 () Bool)

(assert (=> b!6730741 m!7489500))

(declare-fun m!7489502 () Bool)

(assert (=> b!6730742 m!7489502))

(assert (=> d!2114544 d!2114904))

(declare-fun b!6730752 () Bool)

(declare-fun e!4066252 () Bool)

(declare-fun tp!1845292 () Bool)

(declare-fun tp!1845293 () Bool)

(assert (=> b!6730752 (= e!4066252 (and tp!1845292 tp!1845293))))

(assert (=> b!6730220 (= tp!1845255 e!4066252)))

(assert (= (and b!6730220 ((_ is Cons!65846) (exprs!6441 setElem!45905))) b!6730752))

(declare-fun b!6730754 () Bool)

(declare-fun e!4066253 () Bool)

(declare-fun tp!1845297 () Bool)

(declare-fun tp!1845298 () Bool)

(assert (=> b!6730754 (= e!4066253 (and tp!1845297 tp!1845298))))

(assert (=> b!6730188 (= tp!1845216 e!4066253)))

(declare-fun b!6730755 () Bool)

(declare-fun tp!1845296 () Bool)

(assert (=> b!6730755 (= e!4066253 tp!1845296)))

(declare-fun b!6730753 () Bool)

(assert (=> b!6730753 (= e!4066253 tp_is_empty!42367)))

(declare-fun b!6730756 () Bool)

(declare-fun tp!1845295 () Bool)

(declare-fun tp!1845294 () Bool)

(assert (=> b!6730756 (= e!4066253 (and tp!1845295 tp!1845294))))

(assert (= (and b!6730188 ((_ is ElementMatch!16557) (h!72294 (exprs!6441 (h!72296 zl!343))))) b!6730753))

(assert (= (and b!6730188 ((_ is Concat!25402) (h!72294 (exprs!6441 (h!72296 zl!343))))) b!6730754))

(assert (= (and b!6730188 ((_ is Star!16557) (h!72294 (exprs!6441 (h!72296 zl!343))))) b!6730755))

(assert (= (and b!6730188 ((_ is Union!16557) (h!72294 (exprs!6441 (h!72296 zl!343))))) b!6730756))

(declare-fun b!6730759 () Bool)

(declare-fun e!4066256 () Bool)

(declare-fun tp!1845299 () Bool)

(declare-fun tp!1845300 () Bool)

(assert (=> b!6730759 (= e!4066256 (and tp!1845299 tp!1845300))))

(assert (=> b!6730188 (= tp!1845217 e!4066256)))

(assert (= (and b!6730188 ((_ is Cons!65846) (t!379657 (exprs!6441 (h!72296 zl!343))))) b!6730759))

(declare-fun b!6730761 () Bool)

(declare-fun e!4066257 () Bool)

(declare-fun tp!1845304 () Bool)

(declare-fun tp!1845305 () Bool)

(assert (=> b!6730761 (= e!4066257 (and tp!1845304 tp!1845305))))

(assert (=> b!6730189 (= tp!1845218 e!4066257)))

(declare-fun b!6730762 () Bool)

(declare-fun tp!1845303 () Bool)

(assert (=> b!6730762 (= e!4066257 tp!1845303)))

(declare-fun b!6730760 () Bool)

(assert (=> b!6730760 (= e!4066257 tp_is_empty!42367)))

(declare-fun b!6730763 () Bool)

(declare-fun tp!1845302 () Bool)

(declare-fun tp!1845301 () Bool)

(assert (=> b!6730763 (= e!4066257 (and tp!1845302 tp!1845301))))

(assert (= (and b!6730189 ((_ is ElementMatch!16557) (h!72294 (exprs!6441 setElem!45899)))) b!6730760))

(assert (= (and b!6730189 ((_ is Concat!25402) (h!72294 (exprs!6441 setElem!45899)))) b!6730761))

(assert (= (and b!6730189 ((_ is Star!16557) (h!72294 (exprs!6441 setElem!45899)))) b!6730762))

(assert (= (and b!6730189 ((_ is Union!16557) (h!72294 (exprs!6441 setElem!45899)))) b!6730763))

(declare-fun b!6730764 () Bool)

(declare-fun e!4066258 () Bool)

(declare-fun tp!1845306 () Bool)

(declare-fun tp!1845307 () Bool)

(assert (=> b!6730764 (= e!4066258 (and tp!1845306 tp!1845307))))

(assert (=> b!6730189 (= tp!1845219 e!4066258)))

(assert (= (and b!6730189 ((_ is Cons!65846) (t!379657 (exprs!6441 setElem!45899)))) b!6730764))

(declare-fun b!6730766 () Bool)

(declare-fun e!4066259 () Bool)

(declare-fun tp!1845311 () Bool)

(declare-fun tp!1845312 () Bool)

(assert (=> b!6730766 (= e!4066259 (and tp!1845311 tp!1845312))))

(assert (=> b!6730213 (= tp!1845248 e!4066259)))

(declare-fun b!6730767 () Bool)

(declare-fun tp!1845310 () Bool)

(assert (=> b!6730767 (= e!4066259 tp!1845310)))

(declare-fun b!6730765 () Bool)

(assert (=> b!6730765 (= e!4066259 tp_is_empty!42367)))

(declare-fun b!6730768 () Bool)

(declare-fun tp!1845309 () Bool)

(declare-fun tp!1845308 () Bool)

(assert (=> b!6730768 (= e!4066259 (and tp!1845309 tp!1845308))))

(assert (= (and b!6730213 ((_ is ElementMatch!16557) (regOne!33626 (regTwo!33626 r!7292)))) b!6730765))

(assert (= (and b!6730213 ((_ is Concat!25402) (regOne!33626 (regTwo!33626 r!7292)))) b!6730766))

(assert (= (and b!6730213 ((_ is Star!16557) (regOne!33626 (regTwo!33626 r!7292)))) b!6730767))

(assert (= (and b!6730213 ((_ is Union!16557) (regOne!33626 (regTwo!33626 r!7292)))) b!6730768))

(declare-fun b!6730770 () Bool)

(declare-fun e!4066260 () Bool)

(declare-fun tp!1845316 () Bool)

(declare-fun tp!1845317 () Bool)

(assert (=> b!6730770 (= e!4066260 (and tp!1845316 tp!1845317))))

(assert (=> b!6730213 (= tp!1845249 e!4066260)))

(declare-fun b!6730771 () Bool)

(declare-fun tp!1845315 () Bool)

(assert (=> b!6730771 (= e!4066260 tp!1845315)))

(declare-fun b!6730769 () Bool)

(assert (=> b!6730769 (= e!4066260 tp_is_empty!42367)))

(declare-fun b!6730772 () Bool)

(declare-fun tp!1845314 () Bool)

(declare-fun tp!1845313 () Bool)

(assert (=> b!6730772 (= e!4066260 (and tp!1845314 tp!1845313))))

(assert (= (and b!6730213 ((_ is ElementMatch!16557) (regTwo!33626 (regTwo!33626 r!7292)))) b!6730769))

(assert (= (and b!6730213 ((_ is Concat!25402) (regTwo!33626 (regTwo!33626 r!7292)))) b!6730770))

(assert (= (and b!6730213 ((_ is Star!16557) (regTwo!33626 (regTwo!33626 r!7292)))) b!6730771))

(assert (= (and b!6730213 ((_ is Union!16557) (regTwo!33626 (regTwo!33626 r!7292)))) b!6730772))

(declare-fun b!6730788 () Bool)

(declare-fun e!4066268 () Bool)

(declare-fun tp!1845321 () Bool)

(declare-fun tp!1845322 () Bool)

(assert (=> b!6730788 (= e!4066268 (and tp!1845321 tp!1845322))))

(assert (=> b!6730214 (= tp!1845247 e!4066268)))

(declare-fun b!6730789 () Bool)

(declare-fun tp!1845320 () Bool)

(assert (=> b!6730789 (= e!4066268 tp!1845320)))

(declare-fun b!6730787 () Bool)

(assert (=> b!6730787 (= e!4066268 tp_is_empty!42367)))

(declare-fun b!6730790 () Bool)

(declare-fun tp!1845319 () Bool)

(declare-fun tp!1845318 () Bool)

(assert (=> b!6730790 (= e!4066268 (and tp!1845319 tp!1845318))))

(assert (= (and b!6730214 ((_ is ElementMatch!16557) (reg!16886 (regTwo!33626 r!7292)))) b!6730787))

(assert (= (and b!6730214 ((_ is Concat!25402) (reg!16886 (regTwo!33626 r!7292)))) b!6730788))

(assert (= (and b!6730214 ((_ is Star!16557) (reg!16886 (regTwo!33626 r!7292)))) b!6730789))

(assert (= (and b!6730214 ((_ is Union!16557) (reg!16886 (regTwo!33626 r!7292)))) b!6730790))

(declare-fun b!6730791 () Bool)

(declare-fun e!4066269 () Bool)

(declare-fun tp!1845323 () Bool)

(assert (=> b!6730791 (= e!4066269 (and tp_is_empty!42367 tp!1845323))))

(assert (=> b!6730229 (= tp!1845263 e!4066269)))

(assert (= (and b!6730229 ((_ is Cons!65847) (t!379658 (t!379658 s!2326)))) b!6730791))

(declare-fun b!6730793 () Bool)

(declare-fun e!4066270 () Bool)

(declare-fun tp!1845327 () Bool)

(declare-fun tp!1845328 () Bool)

(assert (=> b!6730793 (= e!4066270 (and tp!1845327 tp!1845328))))

(assert (=> b!6730205 (= tp!1845238 e!4066270)))

(declare-fun b!6730794 () Bool)

(declare-fun tp!1845326 () Bool)

(assert (=> b!6730794 (= e!4066270 tp!1845326)))

(declare-fun b!6730792 () Bool)

(assert (=> b!6730792 (= e!4066270 tp_is_empty!42367)))

(declare-fun b!6730795 () Bool)

(declare-fun tp!1845325 () Bool)

(declare-fun tp!1845324 () Bool)

(assert (=> b!6730795 (= e!4066270 (and tp!1845325 tp!1845324))))

(assert (= (and b!6730205 ((_ is ElementMatch!16557) (regOne!33626 (regTwo!33627 r!7292)))) b!6730792))

(assert (= (and b!6730205 ((_ is Concat!25402) (regOne!33626 (regTwo!33627 r!7292)))) b!6730793))

(assert (= (and b!6730205 ((_ is Star!16557) (regOne!33626 (regTwo!33627 r!7292)))) b!6730794))

(assert (= (and b!6730205 ((_ is Union!16557) (regOne!33626 (regTwo!33627 r!7292)))) b!6730795))

(declare-fun b!6730797 () Bool)

(declare-fun e!4066271 () Bool)

(declare-fun tp!1845332 () Bool)

(declare-fun tp!1845333 () Bool)

(assert (=> b!6730797 (= e!4066271 (and tp!1845332 tp!1845333))))

(assert (=> b!6730205 (= tp!1845239 e!4066271)))

(declare-fun b!6730798 () Bool)

(declare-fun tp!1845331 () Bool)

(assert (=> b!6730798 (= e!4066271 tp!1845331)))

(declare-fun b!6730796 () Bool)

(assert (=> b!6730796 (= e!4066271 tp_is_empty!42367)))

(declare-fun b!6730799 () Bool)

(declare-fun tp!1845330 () Bool)

(declare-fun tp!1845329 () Bool)

(assert (=> b!6730799 (= e!4066271 (and tp!1845330 tp!1845329))))

(assert (= (and b!6730205 ((_ is ElementMatch!16557) (regTwo!33626 (regTwo!33627 r!7292)))) b!6730796))

(assert (= (and b!6730205 ((_ is Concat!25402) (regTwo!33626 (regTwo!33627 r!7292)))) b!6730797))

(assert (= (and b!6730205 ((_ is Star!16557) (regTwo!33626 (regTwo!33627 r!7292)))) b!6730798))

(assert (= (and b!6730205 ((_ is Union!16557) (regTwo!33626 (regTwo!33627 r!7292)))) b!6730799))

(declare-fun b!6730801 () Bool)

(declare-fun e!4066272 () Bool)

(declare-fun tp!1845337 () Bool)

(declare-fun tp!1845338 () Bool)

(assert (=> b!6730801 (= e!4066272 (and tp!1845337 tp!1845338))))

(assert (=> b!6730206 (= tp!1845237 e!4066272)))

(declare-fun b!6730802 () Bool)

(declare-fun tp!1845336 () Bool)

(assert (=> b!6730802 (= e!4066272 tp!1845336)))

(declare-fun b!6730800 () Bool)

(assert (=> b!6730800 (= e!4066272 tp_is_empty!42367)))

(declare-fun b!6730803 () Bool)

(declare-fun tp!1845335 () Bool)

(declare-fun tp!1845334 () Bool)

(assert (=> b!6730803 (= e!4066272 (and tp!1845335 tp!1845334))))

(assert (= (and b!6730206 ((_ is ElementMatch!16557) (reg!16886 (regTwo!33627 r!7292)))) b!6730800))

(assert (= (and b!6730206 ((_ is Concat!25402) (reg!16886 (regTwo!33627 r!7292)))) b!6730801))

(assert (= (and b!6730206 ((_ is Star!16557) (reg!16886 (regTwo!33627 r!7292)))) b!6730802))

(assert (= (and b!6730206 ((_ is Union!16557) (reg!16886 (regTwo!33627 r!7292)))) b!6730803))

(declare-fun b!6730805 () Bool)

(declare-fun e!4066273 () Bool)

(declare-fun tp!1845342 () Bool)

(declare-fun tp!1845343 () Bool)

(assert (=> b!6730805 (= e!4066273 (and tp!1845342 tp!1845343))))

(assert (=> b!6730215 (= tp!1845246 e!4066273)))

(declare-fun b!6730806 () Bool)

(declare-fun tp!1845341 () Bool)

(assert (=> b!6730806 (= e!4066273 tp!1845341)))

(declare-fun b!6730804 () Bool)

(assert (=> b!6730804 (= e!4066273 tp_is_empty!42367)))

(declare-fun b!6730807 () Bool)

(declare-fun tp!1845340 () Bool)

(declare-fun tp!1845339 () Bool)

(assert (=> b!6730807 (= e!4066273 (and tp!1845340 tp!1845339))))

(assert (= (and b!6730215 ((_ is ElementMatch!16557) (regOne!33627 (regTwo!33626 r!7292)))) b!6730804))

(assert (= (and b!6730215 ((_ is Concat!25402) (regOne!33627 (regTwo!33626 r!7292)))) b!6730805))

(assert (= (and b!6730215 ((_ is Star!16557) (regOne!33627 (regTwo!33626 r!7292)))) b!6730806))

(assert (= (and b!6730215 ((_ is Union!16557) (regOne!33627 (regTwo!33626 r!7292)))) b!6730807))

(declare-fun b!6730809 () Bool)

(declare-fun e!4066274 () Bool)

(declare-fun tp!1845347 () Bool)

(declare-fun tp!1845348 () Bool)

(assert (=> b!6730809 (= e!4066274 (and tp!1845347 tp!1845348))))

(assert (=> b!6730215 (= tp!1845245 e!4066274)))

(declare-fun b!6730810 () Bool)

(declare-fun tp!1845346 () Bool)

(assert (=> b!6730810 (= e!4066274 tp!1845346)))

(declare-fun b!6730808 () Bool)

(assert (=> b!6730808 (= e!4066274 tp_is_empty!42367)))

(declare-fun b!6730811 () Bool)

(declare-fun tp!1845345 () Bool)

(declare-fun tp!1845344 () Bool)

(assert (=> b!6730811 (= e!4066274 (and tp!1845345 tp!1845344))))

(assert (= (and b!6730215 ((_ is ElementMatch!16557) (regTwo!33627 (regTwo!33626 r!7292)))) b!6730808))

(assert (= (and b!6730215 ((_ is Concat!25402) (regTwo!33627 (regTwo!33626 r!7292)))) b!6730809))

(assert (= (and b!6730215 ((_ is Star!16557) (regTwo!33627 (regTwo!33626 r!7292)))) b!6730810))

(assert (= (and b!6730215 ((_ is Union!16557) (regTwo!33627 (regTwo!33626 r!7292)))) b!6730811))

(declare-fun b!6730813 () Bool)

(declare-fun e!4066276 () Bool)

(declare-fun tp!1845349 () Bool)

(assert (=> b!6730813 (= e!4066276 tp!1845349)))

(declare-fun tp!1845350 () Bool)

(declare-fun e!4066275 () Bool)

(declare-fun b!6730812 () Bool)

(assert (=> b!6730812 (= e!4066275 (and (inv!84639 (h!72296 (t!379659 (t!379659 zl!343)))) e!4066276 tp!1845350))))

(assert (=> b!6730236 (= tp!1845269 e!4066275)))

(assert (= b!6730812 b!6730813))

(assert (= (and b!6730236 ((_ is Cons!65848) (t!379659 (t!379659 zl!343)))) b!6730812))

(declare-fun m!7489528 () Bool)

(assert (=> b!6730812 m!7489528))

(declare-fun b!6730814 () Bool)

(declare-fun e!4066277 () Bool)

(declare-fun tp!1845351 () Bool)

(declare-fun tp!1845352 () Bool)

(assert (=> b!6730814 (= e!4066277 (and tp!1845351 tp!1845352))))

(assert (=> b!6730237 (= tp!1845268 e!4066277)))

(assert (= (and b!6730237 ((_ is Cons!65846) (exprs!6441 (h!72296 (t!379659 zl!343))))) b!6730814))

(declare-fun b!6730816 () Bool)

(declare-fun e!4066278 () Bool)

(declare-fun tp!1845356 () Bool)

(declare-fun tp!1845357 () Bool)

(assert (=> b!6730816 (= e!4066278 (and tp!1845356 tp!1845357))))

(assert (=> b!6730207 (= tp!1845236 e!4066278)))

(declare-fun b!6730817 () Bool)

(declare-fun tp!1845355 () Bool)

(assert (=> b!6730817 (= e!4066278 tp!1845355)))

(declare-fun b!6730815 () Bool)

(assert (=> b!6730815 (= e!4066278 tp_is_empty!42367)))

(declare-fun b!6730818 () Bool)

(declare-fun tp!1845354 () Bool)

(declare-fun tp!1845353 () Bool)

(assert (=> b!6730818 (= e!4066278 (and tp!1845354 tp!1845353))))

(assert (= (and b!6730207 ((_ is ElementMatch!16557) (regOne!33627 (regTwo!33627 r!7292)))) b!6730815))

(assert (= (and b!6730207 ((_ is Concat!25402) (regOne!33627 (regTwo!33627 r!7292)))) b!6730816))

(assert (= (and b!6730207 ((_ is Star!16557) (regOne!33627 (regTwo!33627 r!7292)))) b!6730817))

(assert (= (and b!6730207 ((_ is Union!16557) (regOne!33627 (regTwo!33627 r!7292)))) b!6730818))

(declare-fun b!6730820 () Bool)

(declare-fun e!4066279 () Bool)

(declare-fun tp!1845361 () Bool)

(declare-fun tp!1845362 () Bool)

(assert (=> b!6730820 (= e!4066279 (and tp!1845361 tp!1845362))))

(assert (=> b!6730207 (= tp!1845235 e!4066279)))

(declare-fun b!6730821 () Bool)

(declare-fun tp!1845360 () Bool)

(assert (=> b!6730821 (= e!4066279 tp!1845360)))

(declare-fun b!6730819 () Bool)

(assert (=> b!6730819 (= e!4066279 tp_is_empty!42367)))

(declare-fun b!6730822 () Bool)

(declare-fun tp!1845359 () Bool)

(declare-fun tp!1845358 () Bool)

(assert (=> b!6730822 (= e!4066279 (and tp!1845359 tp!1845358))))

(assert (= (and b!6730207 ((_ is ElementMatch!16557) (regTwo!33627 (regTwo!33627 r!7292)))) b!6730819))

(assert (= (and b!6730207 ((_ is Concat!25402) (regTwo!33627 (regTwo!33627 r!7292)))) b!6730820))

(assert (= (and b!6730207 ((_ is Star!16557) (regTwo!33627 (regTwo!33627 r!7292)))) b!6730821))

(assert (= (and b!6730207 ((_ is Union!16557) (regTwo!33627 (regTwo!33627 r!7292)))) b!6730822))

(declare-fun b!6730824 () Bool)

(declare-fun e!4066280 () Bool)

(declare-fun tp!1845366 () Bool)

(declare-fun tp!1845367 () Bool)

(assert (=> b!6730824 (= e!4066280 (and tp!1845366 tp!1845367))))

(assert (=> b!6730222 (= tp!1845259 e!4066280)))

(declare-fun b!6730825 () Bool)

(declare-fun tp!1845365 () Bool)

(assert (=> b!6730825 (= e!4066280 tp!1845365)))

(declare-fun b!6730823 () Bool)

(assert (=> b!6730823 (= e!4066280 tp_is_empty!42367)))

(declare-fun b!6730826 () Bool)

(declare-fun tp!1845364 () Bool)

(declare-fun tp!1845363 () Bool)

(assert (=> b!6730826 (= e!4066280 (and tp!1845364 tp!1845363))))

(assert (= (and b!6730222 ((_ is ElementMatch!16557) (regOne!33626 (reg!16886 r!7292)))) b!6730823))

(assert (= (and b!6730222 ((_ is Concat!25402) (regOne!33626 (reg!16886 r!7292)))) b!6730824))

(assert (= (and b!6730222 ((_ is Star!16557) (regOne!33626 (reg!16886 r!7292)))) b!6730825))

(assert (= (and b!6730222 ((_ is Union!16557) (regOne!33626 (reg!16886 r!7292)))) b!6730826))

(declare-fun b!6730828 () Bool)

(declare-fun e!4066281 () Bool)

(declare-fun tp!1845371 () Bool)

(declare-fun tp!1845372 () Bool)

(assert (=> b!6730828 (= e!4066281 (and tp!1845371 tp!1845372))))

(assert (=> b!6730222 (= tp!1845260 e!4066281)))

(declare-fun b!6730829 () Bool)

(declare-fun tp!1845370 () Bool)

(assert (=> b!6730829 (= e!4066281 tp!1845370)))

(declare-fun b!6730827 () Bool)

(assert (=> b!6730827 (= e!4066281 tp_is_empty!42367)))

(declare-fun b!6730830 () Bool)

(declare-fun tp!1845369 () Bool)

(declare-fun tp!1845368 () Bool)

(assert (=> b!6730830 (= e!4066281 (and tp!1845369 tp!1845368))))

(assert (= (and b!6730222 ((_ is ElementMatch!16557) (regTwo!33626 (reg!16886 r!7292)))) b!6730827))

(assert (= (and b!6730222 ((_ is Concat!25402) (regTwo!33626 (reg!16886 r!7292)))) b!6730828))

(assert (= (and b!6730222 ((_ is Star!16557) (regTwo!33626 (reg!16886 r!7292)))) b!6730829))

(assert (= (and b!6730222 ((_ is Union!16557) (regTwo!33626 (reg!16886 r!7292)))) b!6730830))

(declare-fun b!6730832 () Bool)

(declare-fun e!4066282 () Bool)

(declare-fun tp!1845376 () Bool)

(declare-fun tp!1845377 () Bool)

(assert (=> b!6730832 (= e!4066282 (and tp!1845376 tp!1845377))))

(assert (=> b!6730223 (= tp!1845258 e!4066282)))

(declare-fun b!6730833 () Bool)

(declare-fun tp!1845375 () Bool)

(assert (=> b!6730833 (= e!4066282 tp!1845375)))

(declare-fun b!6730831 () Bool)

(assert (=> b!6730831 (= e!4066282 tp_is_empty!42367)))

(declare-fun b!6730834 () Bool)

(declare-fun tp!1845374 () Bool)

(declare-fun tp!1845373 () Bool)

(assert (=> b!6730834 (= e!4066282 (and tp!1845374 tp!1845373))))

(assert (= (and b!6730223 ((_ is ElementMatch!16557) (reg!16886 (reg!16886 r!7292)))) b!6730831))

(assert (= (and b!6730223 ((_ is Concat!25402) (reg!16886 (reg!16886 r!7292)))) b!6730832))

(assert (= (and b!6730223 ((_ is Star!16557) (reg!16886 (reg!16886 r!7292)))) b!6730833))

(assert (= (and b!6730223 ((_ is Union!16557) (reg!16886 (reg!16886 r!7292)))) b!6730834))

(declare-fun b!6730836 () Bool)

(declare-fun e!4066283 () Bool)

(declare-fun tp!1845381 () Bool)

(declare-fun tp!1845382 () Bool)

(assert (=> b!6730836 (= e!4066283 (and tp!1845381 tp!1845382))))

(assert (=> b!6730224 (= tp!1845257 e!4066283)))

(declare-fun b!6730837 () Bool)

(declare-fun tp!1845380 () Bool)

(assert (=> b!6730837 (= e!4066283 tp!1845380)))

(declare-fun b!6730835 () Bool)

(assert (=> b!6730835 (= e!4066283 tp_is_empty!42367)))

(declare-fun b!6730838 () Bool)

(declare-fun tp!1845379 () Bool)

(declare-fun tp!1845378 () Bool)

(assert (=> b!6730838 (= e!4066283 (and tp!1845379 tp!1845378))))

(assert (= (and b!6730224 ((_ is ElementMatch!16557) (regOne!33627 (reg!16886 r!7292)))) b!6730835))

(assert (= (and b!6730224 ((_ is Concat!25402) (regOne!33627 (reg!16886 r!7292)))) b!6730836))

(assert (= (and b!6730224 ((_ is Star!16557) (regOne!33627 (reg!16886 r!7292)))) b!6730837))

(assert (= (and b!6730224 ((_ is Union!16557) (regOne!33627 (reg!16886 r!7292)))) b!6730838))

(declare-fun b!6730840 () Bool)

(declare-fun e!4066284 () Bool)

(declare-fun tp!1845386 () Bool)

(declare-fun tp!1845387 () Bool)

(assert (=> b!6730840 (= e!4066284 (and tp!1845386 tp!1845387))))

(assert (=> b!6730224 (= tp!1845256 e!4066284)))

(declare-fun b!6730841 () Bool)

(declare-fun tp!1845385 () Bool)

(assert (=> b!6730841 (= e!4066284 tp!1845385)))

(declare-fun b!6730839 () Bool)

(assert (=> b!6730839 (= e!4066284 tp_is_empty!42367)))

(declare-fun b!6730842 () Bool)

(declare-fun tp!1845384 () Bool)

(declare-fun tp!1845383 () Bool)

(assert (=> b!6730842 (= e!4066284 (and tp!1845384 tp!1845383))))

(assert (= (and b!6730224 ((_ is ElementMatch!16557) (regTwo!33627 (reg!16886 r!7292)))) b!6730839))

(assert (= (and b!6730224 ((_ is Concat!25402) (regTwo!33627 (reg!16886 r!7292)))) b!6730840))

(assert (= (and b!6730224 ((_ is Star!16557) (regTwo!33627 (reg!16886 r!7292)))) b!6730841))

(assert (= (and b!6730224 ((_ is Union!16557) (regTwo!33627 (reg!16886 r!7292)))) b!6730842))

(declare-fun b!6730844 () Bool)

(declare-fun e!4066285 () Bool)

(declare-fun tp!1845391 () Bool)

(declare-fun tp!1845392 () Bool)

(assert (=> b!6730844 (= e!4066285 (and tp!1845391 tp!1845392))))

(assert (=> b!6730209 (= tp!1845243 e!4066285)))

(declare-fun b!6730845 () Bool)

(declare-fun tp!1845390 () Bool)

(assert (=> b!6730845 (= e!4066285 tp!1845390)))

(declare-fun b!6730843 () Bool)

(assert (=> b!6730843 (= e!4066285 tp_is_empty!42367)))

(declare-fun b!6730846 () Bool)

(declare-fun tp!1845389 () Bool)

(declare-fun tp!1845388 () Bool)

(assert (=> b!6730846 (= e!4066285 (and tp!1845389 tp!1845388))))

(assert (= (and b!6730209 ((_ is ElementMatch!16557) (regOne!33626 (regOne!33626 r!7292)))) b!6730843))

(assert (= (and b!6730209 ((_ is Concat!25402) (regOne!33626 (regOne!33626 r!7292)))) b!6730844))

(assert (= (and b!6730209 ((_ is Star!16557) (regOne!33626 (regOne!33626 r!7292)))) b!6730845))

(assert (= (and b!6730209 ((_ is Union!16557) (regOne!33626 (regOne!33626 r!7292)))) b!6730846))

(declare-fun b!6730848 () Bool)

(declare-fun e!4066286 () Bool)

(declare-fun tp!1845396 () Bool)

(declare-fun tp!1845397 () Bool)

(assert (=> b!6730848 (= e!4066286 (and tp!1845396 tp!1845397))))

(assert (=> b!6730209 (= tp!1845244 e!4066286)))

(declare-fun b!6730849 () Bool)

(declare-fun tp!1845395 () Bool)

(assert (=> b!6730849 (= e!4066286 tp!1845395)))

(declare-fun b!6730847 () Bool)

(assert (=> b!6730847 (= e!4066286 tp_is_empty!42367)))

(declare-fun b!6730850 () Bool)

(declare-fun tp!1845394 () Bool)

(declare-fun tp!1845393 () Bool)

(assert (=> b!6730850 (= e!4066286 (and tp!1845394 tp!1845393))))

(assert (= (and b!6730209 ((_ is ElementMatch!16557) (regTwo!33626 (regOne!33626 r!7292)))) b!6730847))

(assert (= (and b!6730209 ((_ is Concat!25402) (regTwo!33626 (regOne!33626 r!7292)))) b!6730848))

(assert (= (and b!6730209 ((_ is Star!16557) (regTwo!33626 (regOne!33626 r!7292)))) b!6730849))

(assert (= (and b!6730209 ((_ is Union!16557) (regTwo!33626 (regOne!33626 r!7292)))) b!6730850))

(declare-fun b!6730852 () Bool)

(declare-fun e!4066287 () Bool)

(declare-fun tp!1845401 () Bool)

(declare-fun tp!1845402 () Bool)

(assert (=> b!6730852 (= e!4066287 (and tp!1845401 tp!1845402))))

(assert (=> b!6730210 (= tp!1845242 e!4066287)))

(declare-fun b!6730853 () Bool)

(declare-fun tp!1845400 () Bool)

(assert (=> b!6730853 (= e!4066287 tp!1845400)))

(declare-fun b!6730851 () Bool)

(assert (=> b!6730851 (= e!4066287 tp_is_empty!42367)))

(declare-fun b!6730854 () Bool)

(declare-fun tp!1845399 () Bool)

(declare-fun tp!1845398 () Bool)

(assert (=> b!6730854 (= e!4066287 (and tp!1845399 tp!1845398))))

(assert (= (and b!6730210 ((_ is ElementMatch!16557) (reg!16886 (regOne!33626 r!7292)))) b!6730851))

(assert (= (and b!6730210 ((_ is Concat!25402) (reg!16886 (regOne!33626 r!7292)))) b!6730852))

(assert (= (and b!6730210 ((_ is Star!16557) (reg!16886 (regOne!33626 r!7292)))) b!6730853))

(assert (= (and b!6730210 ((_ is Union!16557) (reg!16886 (regOne!33626 r!7292)))) b!6730854))

(declare-fun b!6730856 () Bool)

(declare-fun e!4066288 () Bool)

(declare-fun tp!1845406 () Bool)

(declare-fun tp!1845407 () Bool)

(assert (=> b!6730856 (= e!4066288 (and tp!1845406 tp!1845407))))

(assert (=> b!6730201 (= tp!1845233 e!4066288)))

(declare-fun b!6730857 () Bool)

(declare-fun tp!1845405 () Bool)

(assert (=> b!6730857 (= e!4066288 tp!1845405)))

(declare-fun b!6730855 () Bool)

(assert (=> b!6730855 (= e!4066288 tp_is_empty!42367)))

(declare-fun b!6730858 () Bool)

(declare-fun tp!1845404 () Bool)

(declare-fun tp!1845403 () Bool)

(assert (=> b!6730858 (= e!4066288 (and tp!1845404 tp!1845403))))

(assert (= (and b!6730201 ((_ is ElementMatch!16557) (regOne!33626 (regOne!33627 r!7292)))) b!6730855))

(assert (= (and b!6730201 ((_ is Concat!25402) (regOne!33626 (regOne!33627 r!7292)))) b!6730856))

(assert (= (and b!6730201 ((_ is Star!16557) (regOne!33626 (regOne!33627 r!7292)))) b!6730857))

(assert (= (and b!6730201 ((_ is Union!16557) (regOne!33626 (regOne!33627 r!7292)))) b!6730858))

(declare-fun b!6730860 () Bool)

(declare-fun e!4066289 () Bool)

(declare-fun tp!1845411 () Bool)

(declare-fun tp!1845412 () Bool)

(assert (=> b!6730860 (= e!4066289 (and tp!1845411 tp!1845412))))

(assert (=> b!6730201 (= tp!1845234 e!4066289)))

(declare-fun b!6730861 () Bool)

(declare-fun tp!1845410 () Bool)

(assert (=> b!6730861 (= e!4066289 tp!1845410)))

(declare-fun b!6730859 () Bool)

(assert (=> b!6730859 (= e!4066289 tp_is_empty!42367)))

(declare-fun b!6730862 () Bool)

(declare-fun tp!1845409 () Bool)

(declare-fun tp!1845408 () Bool)

(assert (=> b!6730862 (= e!4066289 (and tp!1845409 tp!1845408))))

(assert (= (and b!6730201 ((_ is ElementMatch!16557) (regTwo!33626 (regOne!33627 r!7292)))) b!6730859))

(assert (= (and b!6730201 ((_ is Concat!25402) (regTwo!33626 (regOne!33627 r!7292)))) b!6730860))

(assert (= (and b!6730201 ((_ is Star!16557) (regTwo!33626 (regOne!33627 r!7292)))) b!6730861))

(assert (= (and b!6730201 ((_ is Union!16557) (regTwo!33626 (regOne!33627 r!7292)))) b!6730862))

(declare-fun b!6730864 () Bool)

(declare-fun e!4066290 () Bool)

(declare-fun tp!1845416 () Bool)

(declare-fun tp!1845417 () Bool)

(assert (=> b!6730864 (= e!4066290 (and tp!1845416 tp!1845417))))

(assert (=> b!6730202 (= tp!1845232 e!4066290)))

(declare-fun b!6730865 () Bool)

(declare-fun tp!1845415 () Bool)

(assert (=> b!6730865 (= e!4066290 tp!1845415)))

(declare-fun b!6730863 () Bool)

(assert (=> b!6730863 (= e!4066290 tp_is_empty!42367)))

(declare-fun b!6730866 () Bool)

(declare-fun tp!1845414 () Bool)

(declare-fun tp!1845413 () Bool)

(assert (=> b!6730866 (= e!4066290 (and tp!1845414 tp!1845413))))

(assert (= (and b!6730202 ((_ is ElementMatch!16557) (reg!16886 (regOne!33627 r!7292)))) b!6730863))

(assert (= (and b!6730202 ((_ is Concat!25402) (reg!16886 (regOne!33627 r!7292)))) b!6730864))

(assert (= (and b!6730202 ((_ is Star!16557) (reg!16886 (regOne!33627 r!7292)))) b!6730865))

(assert (= (and b!6730202 ((_ is Union!16557) (reg!16886 (regOne!33627 r!7292)))) b!6730866))

(declare-fun b!6730868 () Bool)

(declare-fun e!4066291 () Bool)

(declare-fun tp!1845421 () Bool)

(declare-fun tp!1845422 () Bool)

(assert (=> b!6730868 (= e!4066291 (and tp!1845421 tp!1845422))))

(assert (=> b!6730211 (= tp!1845241 e!4066291)))

(declare-fun b!6730869 () Bool)

(declare-fun tp!1845420 () Bool)

(assert (=> b!6730869 (= e!4066291 tp!1845420)))

(declare-fun b!6730867 () Bool)

(assert (=> b!6730867 (= e!4066291 tp_is_empty!42367)))

(declare-fun b!6730870 () Bool)

(declare-fun tp!1845419 () Bool)

(declare-fun tp!1845418 () Bool)

(assert (=> b!6730870 (= e!4066291 (and tp!1845419 tp!1845418))))

(assert (= (and b!6730211 ((_ is ElementMatch!16557) (regOne!33627 (regOne!33626 r!7292)))) b!6730867))

(assert (= (and b!6730211 ((_ is Concat!25402) (regOne!33627 (regOne!33626 r!7292)))) b!6730868))

(assert (= (and b!6730211 ((_ is Star!16557) (regOne!33627 (regOne!33626 r!7292)))) b!6730869))

(assert (= (and b!6730211 ((_ is Union!16557) (regOne!33627 (regOne!33626 r!7292)))) b!6730870))

(declare-fun b!6730876 () Bool)

(declare-fun e!4066294 () Bool)

(declare-fun tp!1845426 () Bool)

(declare-fun tp!1845427 () Bool)

(assert (=> b!6730876 (= e!4066294 (and tp!1845426 tp!1845427))))

(assert (=> b!6730211 (= tp!1845240 e!4066294)))

(declare-fun b!6730877 () Bool)

(declare-fun tp!1845425 () Bool)

(assert (=> b!6730877 (= e!4066294 tp!1845425)))

(declare-fun b!6730875 () Bool)

(assert (=> b!6730875 (= e!4066294 tp_is_empty!42367)))

(declare-fun b!6730878 () Bool)

(declare-fun tp!1845424 () Bool)

(declare-fun tp!1845423 () Bool)

(assert (=> b!6730878 (= e!4066294 (and tp!1845424 tp!1845423))))

(assert (= (and b!6730211 ((_ is ElementMatch!16557) (regTwo!33627 (regOne!33626 r!7292)))) b!6730875))

(assert (= (and b!6730211 ((_ is Concat!25402) (regTwo!33627 (regOne!33626 r!7292)))) b!6730876))

(assert (= (and b!6730211 ((_ is Star!16557) (regTwo!33627 (regOne!33626 r!7292)))) b!6730877))

(assert (= (and b!6730211 ((_ is Union!16557) (regTwo!33627 (regOne!33626 r!7292)))) b!6730878))

(declare-fun b!6730880 () Bool)

(declare-fun e!4066295 () Bool)

(declare-fun tp!1845431 () Bool)

(declare-fun tp!1845432 () Bool)

(assert (=> b!6730880 (= e!4066295 (and tp!1845431 tp!1845432))))

(assert (=> b!6730203 (= tp!1845231 e!4066295)))

(declare-fun b!6730881 () Bool)

(declare-fun tp!1845430 () Bool)

(assert (=> b!6730881 (= e!4066295 tp!1845430)))

(declare-fun b!6730879 () Bool)

(assert (=> b!6730879 (= e!4066295 tp_is_empty!42367)))

(declare-fun b!6730882 () Bool)

(declare-fun tp!1845429 () Bool)

(declare-fun tp!1845428 () Bool)

(assert (=> b!6730882 (= e!4066295 (and tp!1845429 tp!1845428))))

(assert (= (and b!6730203 ((_ is ElementMatch!16557) (regOne!33627 (regOne!33627 r!7292)))) b!6730879))

(assert (= (and b!6730203 ((_ is Concat!25402) (regOne!33627 (regOne!33627 r!7292)))) b!6730880))

(assert (= (and b!6730203 ((_ is Star!16557) (regOne!33627 (regOne!33627 r!7292)))) b!6730881))

(assert (= (and b!6730203 ((_ is Union!16557) (regOne!33627 (regOne!33627 r!7292)))) b!6730882))

(declare-fun b!6730888 () Bool)

(declare-fun e!4066298 () Bool)

(declare-fun tp!1845436 () Bool)

(declare-fun tp!1845437 () Bool)

(assert (=> b!6730888 (= e!4066298 (and tp!1845436 tp!1845437))))

(assert (=> b!6730203 (= tp!1845230 e!4066298)))

(declare-fun b!6730889 () Bool)

(declare-fun tp!1845435 () Bool)

(assert (=> b!6730889 (= e!4066298 tp!1845435)))

(declare-fun b!6730887 () Bool)

(assert (=> b!6730887 (= e!4066298 tp_is_empty!42367)))

(declare-fun b!6730890 () Bool)

(declare-fun tp!1845434 () Bool)

(declare-fun tp!1845433 () Bool)

(assert (=> b!6730890 (= e!4066298 (and tp!1845434 tp!1845433))))

(assert (= (and b!6730203 ((_ is ElementMatch!16557) (regTwo!33627 (regOne!33627 r!7292)))) b!6730887))

(assert (= (and b!6730203 ((_ is Concat!25402) (regTwo!33627 (regOne!33627 r!7292)))) b!6730888))

(assert (= (and b!6730203 ((_ is Star!16557) (regTwo!33627 (regOne!33627 r!7292)))) b!6730889))

(assert (= (and b!6730203 ((_ is Union!16557) (regTwo!33627 (regOne!33627 r!7292)))) b!6730890))

(declare-fun condSetEmpty!45914 () Bool)

(assert (=> setNonEmpty!45905 (= condSetEmpty!45914 (= setRest!45905 ((as const (Array Context!11882 Bool)) false)))))

(declare-fun setRes!45914 () Bool)

(assert (=> setNonEmpty!45905 (= tp!1845254 setRes!45914)))

(declare-fun setIsEmpty!45914 () Bool)

(assert (=> setIsEmpty!45914 setRes!45914))

(declare-fun e!4066299 () Bool)

(declare-fun tp!1845438 () Bool)

(declare-fun setNonEmpty!45914 () Bool)

(declare-fun setElem!45914 () Context!11882)

(assert (=> setNonEmpty!45914 (= setRes!45914 (and tp!1845438 (inv!84639 setElem!45914) e!4066299))))

(declare-fun setRest!45914 () (InoxSet Context!11882))

(assert (=> setNonEmpty!45914 (= setRest!45905 ((_ map or) (store ((as const (Array Context!11882 Bool)) false) setElem!45914 true) setRest!45914))))

(declare-fun b!6730891 () Bool)

(declare-fun tp!1845439 () Bool)

(assert (=> b!6730891 (= e!4066299 tp!1845439)))

(assert (= (and setNonEmpty!45905 condSetEmpty!45914) setIsEmpty!45914))

(assert (= (and setNonEmpty!45905 (not condSetEmpty!45914)) setNonEmpty!45914))

(assert (= setNonEmpty!45914 b!6730891))

(declare-fun m!7489530 () Bool)

(assert (=> setNonEmpty!45914 m!7489530))

(declare-fun b_lambda!253409 () Bool)

(assert (= b_lambda!253399 (or d!2114618 b_lambda!253409)))

(declare-fun bs!1790087 () Bool)

(declare-fun d!2114916 () Bool)

(assert (= bs!1790087 (and d!2114916 d!2114618)))

(assert (=> bs!1790087 (= (dynLambda!26266 lambda!377733 (h!72294 (exprs!6441 (h!72296 zl!343)))) (validRegex!8293 (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(declare-fun m!7489532 () Bool)

(assert (=> bs!1790087 m!7489532))

(assert (=> b!6730692 d!2114916))

(declare-fun b_lambda!253411 () Bool)

(assert (= b_lambda!253393 (or d!2114528 b_lambda!253411)))

(declare-fun bs!1790088 () Bool)

(declare-fun d!2114918 () Bool)

(assert (= bs!1790088 (and d!2114918 d!2114528)))

(assert (=> bs!1790088 (= (dynLambda!26266 lambda!377682 (h!72294 (exprs!6441 (h!72296 zl!343)))) (validRegex!8293 (h!72294 (exprs!6441 (h!72296 zl!343)))))))

(assert (=> bs!1790088 m!7489532))

(assert (=> b!6730518 d!2114918))

(declare-fun b_lambda!253413 () Bool)

(assert (= b_lambda!253403 (or d!2114562 b_lambda!253413)))

(declare-fun bs!1790089 () Bool)

(declare-fun d!2114920 () Bool)

(assert (= bs!1790089 (and d!2114920 d!2114562)))

(assert (=> bs!1790089 (= (dynLambda!26266 lambda!377696 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846))))) (validRegex!8293 (h!72294 (exprs!6441 (Context!11883 (Cons!65846 (reg!16886 r!7292) Nil!65846))))))))

(declare-fun m!7489534 () Bool)

(assert (=> bs!1790089 m!7489534))

(assert (=> b!6730717 d!2114920))

(declare-fun b_lambda!253415 () Bool)

(assert (= b_lambda!253395 (or b!6729480 b_lambda!253415)))

(assert (=> d!2114784 d!2114622))

(declare-fun b_lambda!253417 () Bool)

(assert (= b_lambda!253387 (or b!6729480 b_lambda!253417)))

(assert (=> d!2114626 d!2114620))

(declare-fun b_lambda!253419 () Bool)

(assert (= b_lambda!253401 (or d!2114572 b_lambda!253419)))

(declare-fun bs!1790090 () Bool)

(declare-fun d!2114922 () Bool)

(assert (= bs!1790090 (and d!2114922 d!2114572)))

(assert (=> bs!1790090 (= (dynLambda!26266 lambda!377705 (h!72294 lt!2437704)) (validRegex!8293 (h!72294 lt!2437704)))))

(declare-fun m!7489536 () Bool)

(assert (=> bs!1790090 m!7489536))

(assert (=> b!6730715 d!2114922))

(declare-fun b_lambda!253421 () Bool)

(assert (= b_lambda!253405 (or d!2114544 b_lambda!253421)))

(declare-fun bs!1790091 () Bool)

(declare-fun d!2114924 () Bool)

(assert (= bs!1790091 (and d!2114924 d!2114544)))

(assert (=> bs!1790091 (= (dynLambda!26266 lambda!377694 (h!72294 (exprs!6441 setElem!45899))) (validRegex!8293 (h!72294 (exprs!6441 setElem!45899))))))

(declare-fun m!7489538 () Bool)

(assert (=> bs!1790091 m!7489538))

(assert (=> b!6730741 d!2114924))

(declare-fun b_lambda!253423 () Bool)

(assert (= b_lambda!253389 (or d!2114568 b_lambda!253423)))

(declare-fun bs!1790092 () Bool)

(declare-fun d!2114926 () Bool)

(assert (= bs!1790092 (and d!2114926 d!2114568)))

(assert (=> bs!1790092 (= (dynLambda!26266 lambda!377701 (h!72294 (unfocusZipperList!1978 zl!343))) (validRegex!8293 (h!72294 (unfocusZipperList!1978 zl!343))))))

(declare-fun m!7489540 () Bool)

(assert (=> bs!1790092 m!7489540))

(assert (=> b!6730372 d!2114926))

(check-sat (not b!6730864) (not bm!607909) (not bm!607828) (not b!6730802) (not b!6730568) (not b!6730285) (not d!2114660) (not d!2114686) (not b!6730869) (not b!6730888) (not b_lambda!253417) (not b!6730348) (not bm!607837) (not b!6730490) (not b!6730861) (not bm!607910) (not b!6730559) (not b!6730498) (not b!6730277) (not b!6730541) (not b!6730832) (not bm!607824) (not b!6730856) (not d!2114820) (not b!6730812) (not b!6730846) (not bs!1790090) (not b_lambda!253411) (not bm!607842) (not d!2114704) (not d!2114648) (not b!6730840) (not b!6730579) (not b!6730772) (not setNonEmpty!45914) (not b!6730514) (not b!6730549) (not b!6730742) (not bm!607881) (not b!6730842) (not bm!607894) (not b!6730754) (not bm!607916) (not bm!607895) (not b!6730412) (not bm!607917) (not b!6730825) (not b!6730854) (not b!6730663) (not b!6730714) (not bm!607918) (not b!6730849) (not b!6730519) (not b!6730364) (not d!2114902) (not b!6730857) (not b!6730292) (not bm!607852) (not b!6730657) (not b!6730807) (not b!6730771) (not b!6730870) (not bm!607830) (not b!6730818) (not bm!607880) (not b!6730548) (not bm!607849) (not b!6730810) (not b_lambda!253409) (not b!6730547) (not bs!1790087) (not b!6730718) (not d!2114818) (not b!6730770) (not b!6730283) (not b!6730299) (not d!2114796) (not b!6730795) (not b!6730865) (not d!2114860) (not d!2114868) (not b!6730660) (not bm!607929) (not d!2114866) (not d!2114688) (not b!6730294) (not b!6730300) (not d!2114816) (not b!6730834) (not b!6730281) (not bm!607825) (not bm!607847) (not bm!607819) (not d!2114886) (not d!2114738) (not d!2114638) (not d!2114852) (not d!2114662) (not bs!1790089) (not b!6730882) (not bm!607879) (not b_lambda!253383) (not bm!607840) (not bm!607820) (not b!6730756) (not d!2114656) (not b!6730793) (not b!6730833) (not b!6730544) (not d!2114720) (not d!2114666) (not b!6730799) (not d!2114848) (not bm!607874) (not bm!607877) (not b!6730858) (not d!2114788) (not b_lambda!253413) (not d!2114856) (not b!6730798) (not b!6730273) (not bm!607920) (not d!2114652) (not b!6730805) (not b!6730318) (not setNonEmpty!45913) (not bm!607885) (not bm!607823) (not b!6730578) (not bm!607873) (not b!6730349) (not b!6730704) (not d!2114748) (not b!6730838) (not b!6730809) (not bm!607919) (not b!6730358) (not bm!607821) (not b!6730352) (not b!6730343) (not bm!607886) (not b!6730562) (not b!6730552) (not bm!607827) (not bm!607908) (not b!6730384) (not b!6730767) (not bm!607914) (not bm!607887) (not b!6730394) (not b!6730763) (not b!6730853) (not b!6730816) (not b!6730860) (not b!6730817) (not b!6730829) (not b!6730289) (not b!6730761) (not b!6730826) (not b!6730654) (not b!6730803) (not b!6730373) (not b!6730797) (not b!6730240) (not b!6730341) (not d!2114736) (not b!6730499) (not b!6730291) (not b_lambda!253423) (not b!6730298) (not b!6730643) (not b!6730862) (not b!6730508) (not b!6730422) (not b!6730655) (not b!6730245) (not b!6730421) (not b!6730602) (not d!2114664) (not b!6730254) (not b!6730576) (not bs!1790088) (not b!6730662) (not b!6730522) (not setNonEmpty!45908) (not d!2114654) (not b!6730880) (not b!6730556) (not b!6730419) (not b!6730789) (not b!6730305) (not b!6730649) (not d!2114718) (not b!6730413) (not b!6730558) (not b!6730425) (not d!2114882) (not b!6730822) (not b!6730844) (not b!6730768) (not d!2114808) (not b!6730506) (not b!6730845) (not b!6730755) (not b!6730309) (not b!6730284) (not b!6730416) (not d!2114672) (not d!2114706) tp_is_empty!42367 (not b!6730841) (not b!6730848) (not d!2114712) (not b!6730565) (not b!6730762) (not d!2114784) (not b!6730693) (not b!6730716) (not b!6730866) (not b!6730653) (not b!6730415) (not b!6730390) (not b!6730788) (not bm!607927) (not d!2114650) (not bm!607833) (not b!6730881) (not b!6730729) (not b!6730764) (not b!6730759) (not b!6730766) (not bm!607841) (not b!6730346) (not d!2114870) (not bm!607851) (not b!6730806) (not b!6730280) (not b!6730527) (not b!6730671) (not b!6730306) (not b!6730790) (not b!6730891) (not b!6730274) (not b!6730824) (not bm!607896) (not d!2114766) (not b!6730414) (not b!6730290) (not b!6730342) (not b!6730554) (not b!6730668) (not b!6730791) (not b!6730297) (not bm!607856) (not b!6730658) (not b!6730303) (not b!6730830) (not d!2114900) (not bm!607832) (not b!6730877) (not bs!1790092) (not bs!1790091) (not b_lambda!253421) (not b!6730836) (not d!2114792) (not b!6730837) (not bm!607850) (not b!6730821) (not b!6730564) (not b!6730876) (not b!6730813) (not bm!607928) (not b!6730665) (not bm!607831) (not b_lambda!253385) (not b!6730278) (not b!6730752) (not b!6730814) (not bm!607838) (not b!6730890) (not d!2114744) (not d!2114858) (not b!6730828) (not b!6730852) (not b!6730260) (not b!6730282) (not b!6730573) (not bm!607843) (not b!6730878) (not b!6730820) (not b!6730551) (not b!6730868) (not d!2114876) (not b!6730811) (not b!6730327) (not b!6730794) (not b!6730507) (not b!6730395) (not d!2114626) (not b_lambda!253415) (not b!6730889) (not b!6730801) (not b!6730850) (not d!2114678) (not b_lambda!253419))
(check-sat)

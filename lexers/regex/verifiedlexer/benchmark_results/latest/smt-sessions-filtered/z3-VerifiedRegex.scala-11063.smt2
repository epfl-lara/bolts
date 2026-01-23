; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573402 () Bool)

(assert start!573402)

(declare-fun b!5482473 () Bool)

(assert (=> b!5482473 true))

(assert (=> b!5482473 true))

(declare-fun lambda!292781 () Int)

(declare-fun lambda!292780 () Int)

(assert (=> b!5482473 (not (= lambda!292781 lambda!292780))))

(assert (=> b!5482473 true))

(assert (=> b!5482473 true))

(declare-fun lambda!292782 () Int)

(assert (=> b!5482473 (not (= lambda!292782 lambda!292780))))

(assert (=> b!5482473 (not (= lambda!292782 lambda!292781))))

(assert (=> b!5482473 true))

(assert (=> b!5482473 true))

(declare-fun b!5482480 () Bool)

(assert (=> b!5482480 true))

(declare-fun b!5482491 () Bool)

(assert (=> b!5482491 true))

(declare-fun b!5482467 () Bool)

(declare-fun e!3392922 () Bool)

(declare-fun lt!2239229 () Bool)

(assert (=> b!5482467 (= e!3392922 lt!2239229)))

(declare-fun b!5482468 () Bool)

(declare-fun e!3392926 () Bool)

(declare-fun tp!1506567 () Bool)

(declare-fun tp!1506562 () Bool)

(assert (=> b!5482468 (= e!3392926 (and tp!1506567 tp!1506562))))

(declare-fun b!5482469 () Bool)

(declare-fun res!2337511 () Bool)

(declare-fun e!3392917 () Bool)

(assert (=> b!5482469 (=> res!2337511 e!3392917)))

(declare-datatypes ((C!31016 0))(
  ( (C!31017 (val!25210 Int)) )
))
(declare-datatypes ((Regex!15373 0))(
  ( (ElementMatch!15373 (c!957933 C!31016)) (Concat!24218 (regOne!31258 Regex!15373) (regTwo!31258 Regex!15373)) (EmptyExpr!15373) (Star!15373 (reg!15702 Regex!15373)) (EmptyLang!15373) (Union!15373 (regOne!31259 Regex!15373) (regTwo!31259 Regex!15373)) )
))
(declare-datatypes ((List!62418 0))(
  ( (Nil!62294) (Cons!62294 (h!68742 Regex!15373) (t!375649 List!62418)) )
))
(declare-datatypes ((Context!9514 0))(
  ( (Context!9515 (exprs!5257 List!62418)) )
))
(declare-fun lt!2239242 () Context!9514)

(declare-fun r!7292 () Regex!15373)

(declare-datatypes ((List!62419 0))(
  ( (Nil!62295) (Cons!62295 (h!68743 Context!9514) (t!375650 List!62419)) )
))
(declare-fun unfocusZipper!1115 (List!62419) Regex!15373)

(assert (=> b!5482469 (= res!2337511 (not (= (unfocusZipper!1115 (Cons!62295 lt!2239242 Nil!62295)) r!7292)))))

(declare-fun b!5482470 () Bool)

(declare-fun e!3392921 () Bool)

(declare-fun e!3392931 () Bool)

(assert (=> b!5482470 (= e!3392921 e!3392931)))

(declare-fun res!2337506 () Bool)

(assert (=> b!5482470 (=> res!2337506 e!3392931)))

(declare-fun lt!2239259 () Context!9514)

(declare-fun lt!2239256 () Regex!15373)

(assert (=> b!5482470 (= res!2337506 (not (= (unfocusZipper!1115 (Cons!62295 lt!2239259 Nil!62295)) lt!2239256)))))

(assert (=> b!5482470 (= lt!2239256 (Concat!24218 (reg!15702 r!7292) r!7292))))

(declare-fun b!5482471 () Bool)

(declare-fun e!3392916 () Bool)

(declare-fun e!3392913 () Bool)

(assert (=> b!5482471 (= e!3392916 (not e!3392913))))

(declare-fun res!2337504 () Bool)

(assert (=> b!5482471 (=> res!2337504 e!3392913)))

(declare-fun zl!343 () List!62419)

(get-info :version)

(assert (=> b!5482471 (= res!2337504 (not ((_ is Cons!62295) zl!343)))))

(declare-fun lt!2239237 () Bool)

(declare-datatypes ((List!62420 0))(
  ( (Nil!62296) (Cons!62296 (h!68744 C!31016) (t!375651 List!62420)) )
))
(declare-fun s!2326 () List!62420)

(declare-fun matchRSpec!2476 (Regex!15373 List!62420) Bool)

(assert (=> b!5482471 (= lt!2239237 (matchRSpec!2476 r!7292 s!2326))))

(declare-fun matchR!7558 (Regex!15373 List!62420) Bool)

(assert (=> b!5482471 (= lt!2239237 (matchR!7558 r!7292 s!2326))))

(declare-datatypes ((Unit!155196 0))(
  ( (Unit!155197) )
))
(declare-fun lt!2239252 () Unit!155196)

(declare-fun mainMatchTheorem!2476 (Regex!15373 List!62420) Unit!155196)

(assert (=> b!5482471 (= lt!2239252 (mainMatchTheorem!2476 r!7292 s!2326))))

(declare-fun b!5482472 () Bool)

(declare-fun e!3392914 () Bool)

(declare-fun tp!1506564 () Bool)

(assert (=> b!5482472 (= e!3392914 tp!1506564)))

(declare-fun e!3392920 () Bool)

(assert (=> b!5482473 (= e!3392913 e!3392920)))

(declare-fun res!2337505 () Bool)

(assert (=> b!5482473 (=> res!2337505 e!3392920)))

(assert (=> b!5482473 (= res!2337505 (not (= lt!2239237 e!3392922)))))

(declare-fun res!2337502 () Bool)

(assert (=> b!5482473 (=> res!2337502 e!3392922)))

(declare-fun isEmpty!34242 (List!62420) Bool)

(assert (=> b!5482473 (= res!2337502 (isEmpty!34242 s!2326))))

(declare-fun Exists!2552 (Int) Bool)

(assert (=> b!5482473 (= (Exists!2552 lambda!292780) (Exists!2552 lambda!292782))))

(declare-fun lt!2239250 () Unit!155196)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1202 (Regex!15373 Regex!15373 List!62420) Unit!155196)

(assert (=> b!5482473 (= lt!2239250 (lemmaExistCutMatchRandMatchRSpecEquivalent!1202 (reg!15702 r!7292) r!7292 s!2326))))

(assert (=> b!5482473 (= (Exists!2552 lambda!292780) (Exists!2552 lambda!292781))))

(declare-fun lt!2239263 () Unit!155196)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!526 (Regex!15373 List!62420) Unit!155196)

(assert (=> b!5482473 (= lt!2239263 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!526 (reg!15702 r!7292) s!2326))))

(assert (=> b!5482473 (= lt!2239229 (Exists!2552 lambda!292780))))

(declare-datatypes ((tuple2!65140 0))(
  ( (tuple2!65141 (_1!35873 List!62420) (_2!35873 List!62420)) )
))
(declare-datatypes ((Option!15482 0))(
  ( (None!15481) (Some!15481 (v!51510 tuple2!65140)) )
))
(declare-fun isDefined!12185 (Option!15482) Bool)

(declare-fun findConcatSeparation!1896 (Regex!15373 Regex!15373 List!62420 List!62420 List!62420) Option!15482)

(assert (=> b!5482473 (= lt!2239229 (isDefined!12185 (findConcatSeparation!1896 (reg!15702 r!7292) r!7292 Nil!62296 s!2326 s!2326)))))

(declare-fun lt!2239240 () Unit!155196)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1660 (Regex!15373 Regex!15373 List!62420) Unit!155196)

(assert (=> b!5482473 (= lt!2239240 (lemmaFindConcatSeparationEquivalentToExists!1660 (reg!15702 r!7292) r!7292 s!2326))))

(declare-fun b!5482474 () Bool)

(declare-fun tp!1506568 () Bool)

(declare-fun tp!1506571 () Bool)

(assert (=> b!5482474 (= e!3392926 (and tp!1506568 tp!1506571))))

(declare-fun b!5482475 () Bool)

(declare-fun res!2337494 () Bool)

(assert (=> b!5482475 (=> res!2337494 e!3392913)))

(assert (=> b!5482475 (= res!2337494 (or ((_ is EmptyExpr!15373) r!7292) ((_ is EmptyLang!15373) r!7292) ((_ is ElementMatch!15373) r!7292) ((_ is Union!15373) r!7292) ((_ is Concat!24218) r!7292)))))

(declare-fun b!5482476 () Bool)

(declare-fun res!2337497 () Bool)

(declare-fun e!3392925 () Bool)

(assert (=> b!5482476 (=> res!2337497 e!3392925)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2239251 () (InoxSet Context!9514))

(declare-fun lt!2239238 () tuple2!65140)

(declare-fun matchZipper!1591 ((InoxSet Context!9514) List!62420) Bool)

(assert (=> b!5482476 (= res!2337497 (not (matchZipper!1591 lt!2239251 (_1!35873 lt!2239238))))))

(declare-fun b!5482477 () Bool)

(declare-fun res!2337498 () Bool)

(assert (=> b!5482477 (=> res!2337498 e!3392913)))

(declare-fun generalisedConcat!1042 (List!62418) Regex!15373)

(assert (=> b!5482477 (= res!2337498 (not (= r!7292 (generalisedConcat!1042 (exprs!5257 (h!68743 zl!343))))))))

(declare-fun b!5482478 () Bool)

(declare-fun res!2337488 () Bool)

(declare-fun e!3392915 () Bool)

(assert (=> b!5482478 (=> res!2337488 e!3392915)))

(declare-fun z!1189 () (InoxSet Context!9514))

(assert (=> b!5482478 (= res!2337488 (not (matchZipper!1591 z!1189 s!2326)))))

(declare-fun b!5482479 () Bool)

(declare-fun tp!1506566 () Bool)

(declare-fun e!3392930 () Bool)

(declare-fun inv!81679 (Context!9514) Bool)

(assert (=> b!5482479 (= e!3392930 (and (inv!81679 (h!68743 zl!343)) e!3392914 tp!1506566))))

(declare-fun e!3392932 () Bool)

(declare-fun e!3392927 () Bool)

(assert (=> b!5482480 (= e!3392932 e!3392927)))

(declare-fun res!2337495 () Bool)

(assert (=> b!5482480 (=> res!2337495 e!3392927)))

(declare-fun lt!2239261 () (InoxSet Context!9514))

(declare-fun lt!2239255 () (InoxSet Context!9514))

(assert (=> b!5482480 (= res!2337495 (not (= lt!2239261 lt!2239255)))))

(declare-fun lambda!292783 () Int)

(declare-fun flatMap!1076 ((InoxSet Context!9514) Int) (InoxSet Context!9514))

(declare-fun derivationStepZipperUp!725 (Context!9514 C!31016) (InoxSet Context!9514))

(assert (=> b!5482480 (= (flatMap!1076 z!1189 lambda!292783) (derivationStepZipperUp!725 (h!68743 zl!343) (h!68744 s!2326)))))

(declare-fun lt!2239234 () Unit!155196)

(declare-fun lemmaFlatMapOnSingletonSet!608 ((InoxSet Context!9514) Context!9514 Int) Unit!155196)

(assert (=> b!5482480 (= lt!2239234 (lemmaFlatMapOnSingletonSet!608 z!1189 (h!68743 zl!343) lambda!292783))))

(declare-fun b!5482481 () Bool)

(assert (=> b!5482481 (= e!3392927 e!3392921)))

(declare-fun res!2337493 () Bool)

(assert (=> b!5482481 (=> res!2337493 e!3392921)))

(declare-fun derivationStepZipperDown!799 (Regex!15373 Context!9514 C!31016) (InoxSet Context!9514))

(assert (=> b!5482481 (= res!2337493 (not (= lt!2239261 (derivationStepZipperDown!799 (reg!15702 r!7292) lt!2239242 (h!68744 s!2326)))))))

(declare-fun lt!2239244 () List!62418)

(assert (=> b!5482481 (= lt!2239242 (Context!9515 lt!2239244))))

(declare-fun lt!2239264 () (InoxSet Context!9514))

(assert (=> b!5482481 (= (flatMap!1076 lt!2239264 lambda!292783) (derivationStepZipperUp!725 lt!2239259 (h!68744 s!2326)))))

(declare-fun lt!2239230 () Unit!155196)

(assert (=> b!5482481 (= lt!2239230 (lemmaFlatMapOnSingletonSet!608 lt!2239264 lt!2239259 lambda!292783))))

(declare-fun lt!2239254 () (InoxSet Context!9514))

(assert (=> b!5482481 (= lt!2239254 (derivationStepZipperUp!725 lt!2239259 (h!68744 s!2326)))))

(assert (=> b!5482481 (= lt!2239264 (store ((as const (Array Context!9514 Bool)) false) lt!2239259 true))))

(assert (=> b!5482481 (= lt!2239259 (Context!9515 (Cons!62294 (reg!15702 r!7292) lt!2239244)))))

(assert (=> b!5482481 (= lt!2239244 (Cons!62294 r!7292 Nil!62294))))

(declare-fun res!2337487 () Bool)

(declare-fun e!3392924 () Bool)

(assert (=> start!573402 (=> (not res!2337487) (not e!3392924))))

(declare-fun validRegex!7109 (Regex!15373) Bool)

(assert (=> start!573402 (= res!2337487 (validRegex!7109 r!7292))))

(assert (=> start!573402 e!3392924))

(assert (=> start!573402 e!3392926))

(declare-fun condSetEmpty!36069 () Bool)

(assert (=> start!573402 (= condSetEmpty!36069 (= z!1189 ((as const (Array Context!9514 Bool)) false)))))

(declare-fun setRes!36069 () Bool)

(assert (=> start!573402 setRes!36069))

(assert (=> start!573402 e!3392930))

(declare-fun e!3392923 () Bool)

(assert (=> start!573402 e!3392923))

(declare-fun setIsEmpty!36069 () Bool)

(assert (=> setIsEmpty!36069 setRes!36069))

(declare-fun b!5482482 () Bool)

(declare-fun e!3392928 () Bool)

(assert (=> b!5482482 (= e!3392928 e!3392917)))

(declare-fun res!2337499 () Bool)

(assert (=> b!5482482 (=> res!2337499 e!3392917)))

(declare-fun lt!2239239 () List!62419)

(assert (=> b!5482482 (= res!2337499 (not (= (unfocusZipper!1115 lt!2239239) (reg!15702 r!7292))))))

(declare-fun lt!2239227 () Context!9514)

(assert (=> b!5482482 (= lt!2239239 (Cons!62295 lt!2239227 Nil!62295))))

(declare-fun b!5482483 () Bool)

(declare-fun res!2337512 () Bool)

(assert (=> b!5482483 (=> res!2337512 e!3392913)))

(declare-fun isEmpty!34243 (List!62419) Bool)

(assert (=> b!5482483 (= res!2337512 (not (isEmpty!34243 (t!375650 zl!343))))))

(declare-fun b!5482484 () Bool)

(assert (=> b!5482484 (= e!3392931 e!3392928)))

(declare-fun res!2337489 () Bool)

(assert (=> b!5482484 (=> res!2337489 e!3392928)))

(declare-fun lt!2239253 () (InoxSet Context!9514))

(declare-fun derivationStepZipper!1568 ((InoxSet Context!9514) C!31016) (InoxSet Context!9514))

(assert (=> b!5482484 (= res!2337489 (not (= lt!2239261 (derivationStepZipper!1568 lt!2239253 (h!68744 s!2326)))))))

(assert (=> b!5482484 (= (flatMap!1076 lt!2239253 lambda!292783) (derivationStepZipperUp!725 lt!2239242 (h!68744 s!2326)))))

(declare-fun lt!2239260 () Unit!155196)

(assert (=> b!5482484 (= lt!2239260 (lemmaFlatMapOnSingletonSet!608 lt!2239253 lt!2239242 lambda!292783))))

(assert (=> b!5482484 (= (flatMap!1076 lt!2239251 lambda!292783) (derivationStepZipperUp!725 lt!2239227 (h!68744 s!2326)))))

(declare-fun lt!2239257 () Unit!155196)

(assert (=> b!5482484 (= lt!2239257 (lemmaFlatMapOnSingletonSet!608 lt!2239251 lt!2239227 lambda!292783))))

(declare-fun lt!2239265 () (InoxSet Context!9514))

(assert (=> b!5482484 (= lt!2239265 (derivationStepZipperUp!725 lt!2239242 (h!68744 s!2326)))))

(declare-fun lt!2239235 () (InoxSet Context!9514))

(assert (=> b!5482484 (= lt!2239235 (derivationStepZipperUp!725 lt!2239227 (h!68744 s!2326)))))

(assert (=> b!5482484 (= lt!2239253 (store ((as const (Array Context!9514 Bool)) false) lt!2239242 true))))

(assert (=> b!5482484 (= lt!2239251 (store ((as const (Array Context!9514 Bool)) false) lt!2239227 true))))

(declare-fun lt!2239258 () List!62418)

(assert (=> b!5482484 (= lt!2239227 (Context!9515 lt!2239258))))

(assert (=> b!5482484 (= lt!2239258 (Cons!62294 (reg!15702 r!7292) Nil!62294))))

(declare-fun b!5482485 () Bool)

(declare-fun e!3392918 () Bool)

(assert (=> b!5482485 (= e!3392925 e!3392918)))

(declare-fun res!2337503 () Bool)

(assert (=> b!5482485 (=> res!2337503 e!3392918)))

(assert (=> b!5482485 (= res!2337503 (not (validRegex!7109 r!7292)))))

(assert (=> b!5482485 (matchR!7558 (reg!15702 r!7292) (_1!35873 lt!2239238))))

(declare-fun lt!2239247 () Unit!155196)

(declare-fun theoremZipperRegexEquiv!581 ((InoxSet Context!9514) List!62419 Regex!15373 List!62420) Unit!155196)

(assert (=> b!5482485 (= lt!2239247 (theoremZipperRegexEquiv!581 lt!2239251 lt!2239239 (reg!15702 r!7292) (_1!35873 lt!2239238)))))

(declare-fun lt!2239236 () List!62420)

(declare-fun ++!13719 (List!62418 List!62418) List!62418)

(assert (=> b!5482485 (matchZipper!1591 (store ((as const (Array Context!9514 Bool)) false) (Context!9515 (++!13719 lt!2239258 lt!2239244)) true) lt!2239236)))

(declare-fun lt!2239228 () Unit!155196)

(declare-fun lambda!292785 () Int)

(declare-fun lemmaConcatPreservesForall!274 (List!62418 List!62418 Int) Unit!155196)

(assert (=> b!5482485 (= lt!2239228 (lemmaConcatPreservesForall!274 lt!2239258 lt!2239244 lambda!292785))))

(declare-fun lt!2239246 () Unit!155196)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!114 (Context!9514 Context!9514 List!62420 List!62420) Unit!155196)

(assert (=> b!5482485 (= lt!2239246 (lemmaConcatenateContextMatchesConcatOfStrings!114 lt!2239227 lt!2239242 (_1!35873 lt!2239238) (_2!35873 lt!2239238)))))

(declare-fun b!5482486 () Bool)

(declare-fun e!3392919 () Bool)

(assert (=> b!5482486 (= e!3392919 e!3392925)))

(declare-fun res!2337491 () Bool)

(assert (=> b!5482486 (=> res!2337491 e!3392925)))

(assert (=> b!5482486 (= res!2337491 (not (= s!2326 lt!2239236)))))

(declare-fun ++!13720 (List!62420 List!62420) List!62420)

(assert (=> b!5482486 (= lt!2239236 (++!13720 (_1!35873 lt!2239238) (_2!35873 lt!2239238)))))

(declare-fun lt!2239231 () Option!15482)

(declare-fun get!21484 (Option!15482) tuple2!65140)

(assert (=> b!5482486 (= lt!2239238 (get!21484 lt!2239231))))

(assert (=> b!5482486 (isDefined!12185 lt!2239231)))

(declare-fun findConcatSeparationZippers!100 ((InoxSet Context!9514) (InoxSet Context!9514) List!62420 List!62420 List!62420) Option!15482)

(assert (=> b!5482486 (= lt!2239231 (findConcatSeparationZippers!100 lt!2239251 lt!2239253 Nil!62296 s!2326 s!2326))))

(declare-fun lt!2239262 () Unit!155196)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!100 ((InoxSet Context!9514) Context!9514 List!62420) Unit!155196)

(assert (=> b!5482486 (= lt!2239262 (lemmaConcatZipperMatchesStringThenFindConcatDefined!100 lt!2239251 lt!2239242 s!2326))))

(declare-fun b!5482487 () Bool)

(declare-fun tp_is_empty!39999 () Bool)

(declare-fun tp!1506570 () Bool)

(assert (=> b!5482487 (= e!3392923 (and tp_is_empty!39999 tp!1506570))))

(declare-fun b!5482488 () Bool)

(declare-fun e!3392929 () Bool)

(declare-fun tp!1506569 () Bool)

(assert (=> b!5482488 (= e!3392929 tp!1506569)))

(declare-fun b!5482489 () Bool)

(assert (=> b!5482489 (= e!3392926 tp_is_empty!39999)))

(declare-fun b!5482490 () Bool)

(assert (=> b!5482490 (= e!3392924 e!3392916)))

(declare-fun res!2337508 () Bool)

(assert (=> b!5482490 (=> (not res!2337508) (not e!3392916))))

(declare-fun lt!2239249 () Regex!15373)

(assert (=> b!5482490 (= res!2337508 (= r!7292 lt!2239249))))

(assert (=> b!5482490 (= lt!2239249 (unfocusZipper!1115 zl!343))))

(assert (=> b!5482491 (= e!3392915 e!3392919)))

(declare-fun res!2337514 () Bool)

(assert (=> b!5482491 (=> res!2337514 e!3392919)))

(declare-fun appendTo!92 ((InoxSet Context!9514) Context!9514) (InoxSet Context!9514))

(assert (=> b!5482491 (= res!2337514 (not (= (appendTo!92 lt!2239251 lt!2239242) lt!2239264)))))

(declare-fun lambda!292784 () Int)

(declare-fun map!14316 ((InoxSet Context!9514) Int) (InoxSet Context!9514))

(assert (=> b!5482491 (= (map!14316 lt!2239251 lambda!292784) (store ((as const (Array Context!9514 Bool)) false) (Context!9515 (++!13719 lt!2239258 lt!2239244)) true))))

(declare-fun lt!2239243 () Unit!155196)

(assert (=> b!5482491 (= lt!2239243 (lemmaConcatPreservesForall!274 lt!2239258 lt!2239244 lambda!292785))))

(declare-fun lt!2239241 () Unit!155196)

(declare-fun lemmaMapOnSingletonSet!104 ((InoxSet Context!9514) Context!9514 Int) Unit!155196)

(assert (=> b!5482491 (= lt!2239241 (lemmaMapOnSingletonSet!104 lt!2239251 lt!2239227 lambda!292784))))

(declare-fun b!5482492 () Bool)

(declare-fun res!2337510 () Bool)

(assert (=> b!5482492 (=> res!2337510 e!3392920)))

(assert (=> b!5482492 (= res!2337510 ((_ is Nil!62296) s!2326))))

(declare-fun tp!1506563 () Bool)

(declare-fun setElem!36069 () Context!9514)

(declare-fun setNonEmpty!36069 () Bool)

(assert (=> setNonEmpty!36069 (= setRes!36069 (and tp!1506563 (inv!81679 setElem!36069) e!3392929))))

(declare-fun setRest!36069 () (InoxSet Context!9514))

(assert (=> setNonEmpty!36069 (= z!1189 ((_ map or) (store ((as const (Array Context!9514 Bool)) false) setElem!36069 true) setRest!36069))))

(declare-fun b!5482493 () Bool)

(declare-fun res!2337509 () Bool)

(assert (=> b!5482493 (=> res!2337509 e!3392925)))

(assert (=> b!5482493 (= res!2337509 (not (matchZipper!1591 lt!2239253 (_2!35873 lt!2239238))))))

(declare-fun b!5482494 () Bool)

(assert (=> b!5482494 (= e!3392920 e!3392932)))

(declare-fun res!2337492 () Bool)

(assert (=> b!5482494 (=> res!2337492 e!3392932)))

(declare-fun lt!2239248 () (InoxSet Context!9514))

(assert (=> b!5482494 (= res!2337492 (not (= lt!2239248 lt!2239255)))))

(assert (=> b!5482494 (= lt!2239255 (derivationStepZipperDown!799 r!7292 (Context!9515 Nil!62294) (h!68744 s!2326)))))

(assert (=> b!5482494 (= lt!2239248 (derivationStepZipperUp!725 (Context!9515 (Cons!62294 r!7292 Nil!62294)) (h!68744 s!2326)))))

(assert (=> b!5482494 (= lt!2239261 (derivationStepZipper!1568 z!1189 (h!68744 s!2326)))))

(declare-fun b!5482495 () Bool)

(assert (=> b!5482495 (= e!3392917 e!3392915)))

(declare-fun res!2337500 () Bool)

(assert (=> b!5482495 (=> res!2337500 e!3392915)))

(declare-fun lt!2239232 () Bool)

(assert (=> b!5482495 (= res!2337500 lt!2239232)))

(assert (=> b!5482495 (= lt!2239232 (matchRSpec!2476 lt!2239256 s!2326))))

(assert (=> b!5482495 (= lt!2239232 (matchR!7558 lt!2239256 s!2326))))

(declare-fun lt!2239233 () Unit!155196)

(assert (=> b!5482495 (= lt!2239233 (mainMatchTheorem!2476 lt!2239256 s!2326))))

(declare-fun b!5482496 () Bool)

(declare-fun res!2337513 () Bool)

(assert (=> b!5482496 (=> res!2337513 e!3392913)))

(declare-fun generalisedUnion!1302 (List!62418) Regex!15373)

(declare-fun unfocusZipperList!815 (List!62419) List!62418)

(assert (=> b!5482496 (= res!2337513 (not (= r!7292 (generalisedUnion!1302 (unfocusZipperList!815 zl!343)))))))

(declare-fun b!5482497 () Bool)

(declare-fun res!2337507 () Bool)

(assert (=> b!5482497 (=> (not res!2337507) (not e!3392924))))

(declare-fun toList!9157 ((InoxSet Context!9514)) List!62419)

(assert (=> b!5482497 (= res!2337507 (= (toList!9157 z!1189) zl!343))))

(declare-fun b!5482498 () Bool)

(declare-fun res!2337501 () Bool)

(assert (=> b!5482498 (=> res!2337501 e!3392921)))

(assert (=> b!5482498 (= res!2337501 (or (not (= lt!2239249 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5482499 () Bool)

(assert (=> b!5482499 (= e!3392918 true)))

(declare-fun lt!2239245 () List!62419)

(assert (=> b!5482499 (= lt!2239245 (toList!9157 lt!2239253))))

(declare-fun b!5482500 () Bool)

(declare-fun res!2337496 () Bool)

(assert (=> b!5482500 (=> res!2337496 e!3392913)))

(assert (=> b!5482500 (= res!2337496 (not ((_ is Cons!62294) (exprs!5257 (h!68743 zl!343)))))))

(declare-fun b!5482501 () Bool)

(declare-fun tp!1506565 () Bool)

(assert (=> b!5482501 (= e!3392926 tp!1506565)))

(declare-fun b!5482502 () Bool)

(declare-fun res!2337490 () Bool)

(assert (=> b!5482502 (=> res!2337490 e!3392921)))

(assert (=> b!5482502 (= res!2337490 (not (= (matchZipper!1591 lt!2239264 s!2326) (matchZipper!1591 (derivationStepZipper!1568 lt!2239264 (h!68744 s!2326)) (t!375651 s!2326)))))))

(assert (= (and start!573402 res!2337487) b!5482497))

(assert (= (and b!5482497 res!2337507) b!5482490))

(assert (= (and b!5482490 res!2337508) b!5482471))

(assert (= (and b!5482471 (not res!2337504)) b!5482483))

(assert (= (and b!5482483 (not res!2337512)) b!5482477))

(assert (= (and b!5482477 (not res!2337498)) b!5482500))

(assert (= (and b!5482500 (not res!2337496)) b!5482496))

(assert (= (and b!5482496 (not res!2337513)) b!5482475))

(assert (= (and b!5482475 (not res!2337494)) b!5482473))

(assert (= (and b!5482473 (not res!2337502)) b!5482467))

(assert (= (and b!5482473 (not res!2337505)) b!5482492))

(assert (= (and b!5482492 (not res!2337510)) b!5482494))

(assert (= (and b!5482494 (not res!2337492)) b!5482480))

(assert (= (and b!5482480 (not res!2337495)) b!5482481))

(assert (= (and b!5482481 (not res!2337493)) b!5482502))

(assert (= (and b!5482502 (not res!2337490)) b!5482498))

(assert (= (and b!5482498 (not res!2337501)) b!5482470))

(assert (= (and b!5482470 (not res!2337506)) b!5482484))

(assert (= (and b!5482484 (not res!2337489)) b!5482482))

(assert (= (and b!5482482 (not res!2337499)) b!5482469))

(assert (= (and b!5482469 (not res!2337511)) b!5482495))

(assert (= (and b!5482495 (not res!2337500)) b!5482478))

(assert (= (and b!5482478 (not res!2337488)) b!5482491))

(assert (= (and b!5482491 (not res!2337514)) b!5482486))

(assert (= (and b!5482486 (not res!2337491)) b!5482476))

(assert (= (and b!5482476 (not res!2337497)) b!5482493))

(assert (= (and b!5482493 (not res!2337509)) b!5482485))

(assert (= (and b!5482485 (not res!2337503)) b!5482499))

(assert (= (and start!573402 ((_ is ElementMatch!15373) r!7292)) b!5482489))

(assert (= (and start!573402 ((_ is Concat!24218) r!7292)) b!5482474))

(assert (= (and start!573402 ((_ is Star!15373) r!7292)) b!5482501))

(assert (= (and start!573402 ((_ is Union!15373) r!7292)) b!5482468))

(assert (= (and start!573402 condSetEmpty!36069) setIsEmpty!36069))

(assert (= (and start!573402 (not condSetEmpty!36069)) setNonEmpty!36069))

(assert (= setNonEmpty!36069 b!5482488))

(assert (= b!5482479 b!5482472))

(assert (= (and start!573402 ((_ is Cons!62295) zl!343)) b!5482479))

(assert (= (and start!573402 ((_ is Cons!62296) s!2326)) b!5482487))

(declare-fun m!6498058 () Bool)

(assert (=> b!5482470 m!6498058))

(declare-fun m!6498060 () Bool)

(assert (=> b!5482477 m!6498060))

(declare-fun m!6498062 () Bool)

(assert (=> b!5482481 m!6498062))

(declare-fun m!6498064 () Bool)

(assert (=> b!5482481 m!6498064))

(declare-fun m!6498066 () Bool)

(assert (=> b!5482481 m!6498066))

(declare-fun m!6498068 () Bool)

(assert (=> b!5482481 m!6498068))

(declare-fun m!6498070 () Bool)

(assert (=> b!5482481 m!6498070))

(declare-fun m!6498072 () Bool)

(assert (=> b!5482476 m!6498072))

(declare-fun m!6498074 () Bool)

(assert (=> b!5482478 m!6498074))

(declare-fun m!6498076 () Bool)

(assert (=> b!5482499 m!6498076))

(declare-fun m!6498078 () Bool)

(assert (=> b!5482473 m!6498078))

(declare-fun m!6498080 () Bool)

(assert (=> b!5482473 m!6498080))

(declare-fun m!6498082 () Bool)

(assert (=> b!5482473 m!6498082))

(assert (=> b!5482473 m!6498080))

(declare-fun m!6498084 () Bool)

(assert (=> b!5482473 m!6498084))

(declare-fun m!6498086 () Bool)

(assert (=> b!5482473 m!6498086))

(assert (=> b!5482473 m!6498086))

(declare-fun m!6498088 () Bool)

(assert (=> b!5482473 m!6498088))

(declare-fun m!6498090 () Bool)

(assert (=> b!5482473 m!6498090))

(declare-fun m!6498092 () Bool)

(assert (=> b!5482473 m!6498092))

(assert (=> b!5482473 m!6498080))

(declare-fun m!6498094 () Bool)

(assert (=> b!5482473 m!6498094))

(declare-fun m!6498096 () Bool)

(assert (=> b!5482491 m!6498096))

(declare-fun m!6498098 () Bool)

(assert (=> b!5482491 m!6498098))

(declare-fun m!6498100 () Bool)

(assert (=> b!5482491 m!6498100))

(declare-fun m!6498102 () Bool)

(assert (=> b!5482491 m!6498102))

(declare-fun m!6498104 () Bool)

(assert (=> b!5482491 m!6498104))

(declare-fun m!6498106 () Bool)

(assert (=> b!5482491 m!6498106))

(declare-fun m!6498108 () Bool)

(assert (=> b!5482496 m!6498108))

(assert (=> b!5482496 m!6498108))

(declare-fun m!6498110 () Bool)

(assert (=> b!5482496 m!6498110))

(declare-fun m!6498112 () Bool)

(assert (=> start!573402 m!6498112))

(declare-fun m!6498114 () Bool)

(assert (=> b!5482479 m!6498114))

(declare-fun m!6498116 () Bool)

(assert (=> b!5482495 m!6498116))

(declare-fun m!6498118 () Bool)

(assert (=> b!5482495 m!6498118))

(declare-fun m!6498120 () Bool)

(assert (=> b!5482495 m!6498120))

(declare-fun m!6498122 () Bool)

(assert (=> b!5482469 m!6498122))

(declare-fun m!6498124 () Bool)

(assert (=> b!5482493 m!6498124))

(declare-fun m!6498126 () Bool)

(assert (=> b!5482486 m!6498126))

(declare-fun m!6498128 () Bool)

(assert (=> b!5482486 m!6498128))

(declare-fun m!6498130 () Bool)

(assert (=> b!5482486 m!6498130))

(declare-fun m!6498132 () Bool)

(assert (=> b!5482486 m!6498132))

(declare-fun m!6498134 () Bool)

(assert (=> b!5482486 m!6498134))

(declare-fun m!6498136 () Bool)

(assert (=> setNonEmpty!36069 m!6498136))

(declare-fun m!6498138 () Bool)

(assert (=> b!5482490 m!6498138))

(declare-fun m!6498140 () Bool)

(assert (=> b!5482502 m!6498140))

(declare-fun m!6498142 () Bool)

(assert (=> b!5482502 m!6498142))

(assert (=> b!5482502 m!6498142))

(declare-fun m!6498144 () Bool)

(assert (=> b!5482502 m!6498144))

(assert (=> b!5482485 m!6498096))

(declare-fun m!6498146 () Bool)

(assert (=> b!5482485 m!6498146))

(assert (=> b!5482485 m!6498112))

(assert (=> b!5482485 m!6498096))

(assert (=> b!5482485 m!6498102))

(declare-fun m!6498148 () Bool)

(assert (=> b!5482485 m!6498148))

(declare-fun m!6498150 () Bool)

(assert (=> b!5482485 m!6498150))

(declare-fun m!6498152 () Bool)

(assert (=> b!5482485 m!6498152))

(assert (=> b!5482485 m!6498100))

(declare-fun m!6498154 () Bool)

(assert (=> b!5482484 m!6498154))

(declare-fun m!6498156 () Bool)

(assert (=> b!5482484 m!6498156))

(declare-fun m!6498158 () Bool)

(assert (=> b!5482484 m!6498158))

(declare-fun m!6498160 () Bool)

(assert (=> b!5482484 m!6498160))

(declare-fun m!6498162 () Bool)

(assert (=> b!5482484 m!6498162))

(declare-fun m!6498164 () Bool)

(assert (=> b!5482484 m!6498164))

(declare-fun m!6498166 () Bool)

(assert (=> b!5482484 m!6498166))

(declare-fun m!6498168 () Bool)

(assert (=> b!5482484 m!6498168))

(declare-fun m!6498170 () Bool)

(assert (=> b!5482484 m!6498170))

(declare-fun m!6498172 () Bool)

(assert (=> b!5482482 m!6498172))

(declare-fun m!6498174 () Bool)

(assert (=> b!5482480 m!6498174))

(declare-fun m!6498176 () Bool)

(assert (=> b!5482480 m!6498176))

(declare-fun m!6498178 () Bool)

(assert (=> b!5482480 m!6498178))

(declare-fun m!6498180 () Bool)

(assert (=> b!5482497 m!6498180))

(declare-fun m!6498182 () Bool)

(assert (=> b!5482494 m!6498182))

(declare-fun m!6498184 () Bool)

(assert (=> b!5482494 m!6498184))

(declare-fun m!6498186 () Bool)

(assert (=> b!5482494 m!6498186))

(declare-fun m!6498188 () Bool)

(assert (=> b!5482471 m!6498188))

(declare-fun m!6498190 () Bool)

(assert (=> b!5482471 m!6498190))

(declare-fun m!6498192 () Bool)

(assert (=> b!5482471 m!6498192))

(declare-fun m!6498194 () Bool)

(assert (=> b!5482483 m!6498194))

(check-sat (not b!5482495) (not b!5482481) (not b!5482493) (not setNonEmpty!36069) (not b!5482485) (not b!5482469) (not b!5482501) (not b!5482488) (not b!5482478) (not b!5482486) (not b!5482490) (not start!573402) (not b!5482482) (not b!5482487) (not b!5482484) (not b!5482496) (not b!5482473) (not b!5482477) (not b!5482476) (not b!5482491) (not b!5482474) (not b!5482502) (not b!5482472) (not b!5482483) (not b!5482499) (not b!5482494) (not b!5482471) (not b!5482470) tp_is_empty!39999 (not b!5482497) (not b!5482480) (not b!5482468) (not b!5482479))
(check-sat)

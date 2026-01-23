; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!592604 () Bool)

(assert start!592604)

(declare-fun b!5769489 () Bool)

(assert (=> b!5769489 true))

(assert (=> b!5769489 true))

(declare-fun lambda!313430 () Int)

(declare-fun lambda!313429 () Int)

(assert (=> b!5769489 (not (= lambda!313430 lambda!313429))))

(assert (=> b!5769489 true))

(assert (=> b!5769489 true))

(declare-fun b!5769498 () Bool)

(assert (=> b!5769498 true))

(declare-fun b!5769474 () Bool)

(declare-fun e!3544471 () Bool)

(declare-fun tp!1594190 () Bool)

(assert (=> b!5769474 (= e!3544471 tp!1594190)))

(declare-fun b!5769475 () Bool)

(declare-fun res!2434714 () Bool)

(declare-fun e!3544479 () Bool)

(assert (=> b!5769475 (=> res!2434714 e!3544479)))

(declare-datatypes ((C!31836 0))(
  ( (C!31837 (val!25620 Int)) )
))
(declare-datatypes ((Regex!15783 0))(
  ( (ElementMatch!15783 (c!1020117 C!31836)) (Concat!24628 (regOne!32078 Regex!15783) (regTwo!32078 Regex!15783)) (EmptyExpr!15783) (Star!15783 (reg!16112 Regex!15783)) (EmptyLang!15783) (Union!15783 (regOne!32079 Regex!15783) (regTwo!32079 Regex!15783)) )
))
(declare-fun r!7292 () Regex!15783)

(get-info :version)

(assert (=> b!5769475 (= res!2434714 (or ((_ is Concat!24628) (regOne!32078 r!7292)) ((_ is Star!15783) (regOne!32078 r!7292)) ((_ is EmptyExpr!15783) (regOne!32078 r!7292))))))

(declare-fun b!5769476 () Bool)

(declare-fun e!3544480 () Bool)

(declare-fun tp!1594193 () Bool)

(declare-fun tp!1594194 () Bool)

(assert (=> b!5769476 (= e!3544480 (and tp!1594193 tp!1594194))))

(declare-fun b!5769477 () Bool)

(declare-fun tp!1594189 () Bool)

(assert (=> b!5769477 (= e!3544480 tp!1594189)))

(declare-fun b!5769478 () Bool)

(declare-fun e!3544476 () Bool)

(declare-fun nullable!5815 (Regex!15783) Bool)

(assert (=> b!5769478 (= e!3544476 (nullable!5815 (regOne!32078 (regOne!32078 r!7292))))))

(declare-fun b!5769479 () Bool)

(declare-fun res!2434713 () Bool)

(declare-fun e!3544477 () Bool)

(assert (=> b!5769479 (=> res!2434713 e!3544477)))

(declare-datatypes ((List!63648 0))(
  ( (Nil!63524) (Cons!63524 (h!69972 Regex!15783) (t!376986 List!63648)) )
))
(declare-datatypes ((Context!10334 0))(
  ( (Context!10335 (exprs!5667 List!63648)) )
))
(declare-datatypes ((List!63649 0))(
  ( (Nil!63525) (Cons!63525 (h!69973 Context!10334) (t!376987 List!63649)) )
))
(declare-fun zl!343 () List!63649)

(assert (=> b!5769479 (= res!2434713 (not ((_ is Cons!63524) (exprs!5667 (h!69973 zl!343)))))))

(declare-fun b!5769480 () Bool)

(declare-fun res!2434704 () Bool)

(assert (=> b!5769480 (=> res!2434704 e!3544477)))

(declare-fun isEmpty!35421 (List!63649) Bool)

(assert (=> b!5769480 (= res!2434704 (not (isEmpty!35421 (t!376987 zl!343))))))

(declare-fun b!5769481 () Bool)

(declare-fun res!2434708 () Bool)

(assert (=> b!5769481 (=> res!2434708 e!3544477)))

(declare-fun generalisedUnion!1646 (List!63648) Regex!15783)

(declare-fun unfocusZipperList!1211 (List!63649) List!63648)

(assert (=> b!5769481 (= res!2434708 (not (= r!7292 (generalisedUnion!1646 (unfocusZipperList!1211 zl!343)))))))

(declare-fun b!5769482 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2289959 () (InoxSet Context!10334))

(assert (=> b!5769482 (= e!3544479 (or (not (= lt!2289959 ((as const (Array Context!10334 Bool)) false))) (= r!7292 (Concat!24628 (regOne!32078 r!7292) (regTwo!32078 r!7292)))))))

(declare-datatypes ((List!63650 0))(
  ( (Nil!63526) (Cons!63526 (h!69974 C!31836) (t!376988 List!63650)) )
))
(declare-fun s!2326 () List!63650)

(declare-fun matchZipper!1921 ((InoxSet Context!10334) List!63650) Bool)

(assert (=> b!5769482 (not (matchZipper!1921 lt!2289959 (t!376988 s!2326)))))

(declare-datatypes ((Unit!156664 0))(
  ( (Unit!156665) )
))
(declare-fun lt!2289958 () Unit!156664)

(declare-fun lemmaEmptyZipperMatchesNothing!68 ((InoxSet Context!10334) List!63650) Unit!156664)

(assert (=> b!5769482 (= lt!2289958 (lemmaEmptyZipperMatchesNothing!68 lt!2289959 (t!376988 s!2326)))))

(declare-fun b!5769483 () Bool)

(declare-fun res!2434711 () Bool)

(declare-fun e!3544478 () Bool)

(assert (=> b!5769483 (=> (not res!2434711) (not e!3544478))))

(declare-fun unfocusZipper!1525 (List!63649) Regex!15783)

(assert (=> b!5769483 (= res!2434711 (= r!7292 (unfocusZipper!1525 zl!343)))))

(declare-fun b!5769484 () Bool)

(declare-fun tp!1594196 () Bool)

(declare-fun tp!1594191 () Bool)

(assert (=> b!5769484 (= e!3544480 (and tp!1594196 tp!1594191))))

(declare-fun b!5769485 () Bool)

(declare-fun e!3544472 () Bool)

(declare-fun tp_is_empty!40819 () Bool)

(declare-fun tp!1594197 () Bool)

(assert (=> b!5769485 (= e!3544472 (and tp_is_empty!40819 tp!1594197))))

(declare-fun b!5769486 () Bool)

(declare-fun e!3544474 () Unit!156664)

(declare-fun Unit!156666 () Unit!156664)

(assert (=> b!5769486 (= e!3544474 Unit!156666)))

(declare-fun b!5769487 () Bool)

(declare-fun e!3544470 () Bool)

(declare-fun tp!1594198 () Bool)

(assert (=> b!5769487 (= e!3544470 tp!1594198)))

(declare-fun b!5769488 () Bool)

(declare-fun res!2434702 () Bool)

(assert (=> b!5769488 (=> (not res!2434702) (not e!3544478))))

(declare-fun z!1189 () (InoxSet Context!10334))

(declare-fun toList!9567 ((InoxSet Context!10334)) List!63649)

(assert (=> b!5769488 (= res!2434702 (= (toList!9567 z!1189) zl!343))))

(declare-fun b!5769490 () Bool)

(declare-fun res!2434706 () Bool)

(assert (=> b!5769490 (=> res!2434706 e!3544479)))

(assert (=> b!5769490 (= res!2434706 e!3544476)))

(declare-fun res!2434715 () Bool)

(assert (=> b!5769490 (=> (not res!2434715) (not e!3544476))))

(assert (=> b!5769490 (= res!2434715 ((_ is Concat!24628) (regOne!32078 r!7292)))))

(declare-fun e!3544473 () Bool)

(declare-fun b!5769491 () Bool)

(declare-fun tp!1594195 () Bool)

(declare-fun inv!82704 (Context!10334) Bool)

(assert (=> b!5769491 (= e!3544473 (and (inv!82704 (h!69973 zl!343)) e!3544471 tp!1594195))))

(declare-fun b!5769492 () Bool)

(declare-fun e!3544469 () Bool)

(declare-fun lt!2289951 () (InoxSet Context!10334))

(assert (=> b!5769492 (= e!3544469 (matchZipper!1921 lt!2289951 (t!376988 s!2326)))))

(declare-fun b!5769493 () Bool)

(declare-fun res!2434700 () Bool)

(declare-fun e!3544475 () Bool)

(assert (=> b!5769493 (=> res!2434700 e!3544475)))

(declare-fun isEmpty!35422 (List!63648) Bool)

(assert (=> b!5769493 (= res!2434700 (isEmpty!35422 (t!376986 (exprs!5667 (h!69973 zl!343)))))))

(declare-fun b!5769494 () Bool)

(declare-fun res!2434703 () Bool)

(assert (=> b!5769494 (=> res!2434703 e!3544477)))

(assert (=> b!5769494 (= res!2434703 (or ((_ is EmptyExpr!15783) r!7292) ((_ is EmptyLang!15783) r!7292) ((_ is ElementMatch!15783) r!7292) ((_ is Union!15783) r!7292) (not ((_ is Concat!24628) r!7292))))))

(declare-fun setIsEmpty!38775 () Bool)

(declare-fun setRes!38775 () Bool)

(assert (=> setIsEmpty!38775 setRes!38775))

(declare-fun tp!1594192 () Bool)

(declare-fun setElem!38775 () Context!10334)

(declare-fun setNonEmpty!38775 () Bool)

(assert (=> setNonEmpty!38775 (= setRes!38775 (and tp!1594192 (inv!82704 setElem!38775) e!3544470))))

(declare-fun setRest!38775 () (InoxSet Context!10334))

(assert (=> setNonEmpty!38775 (= z!1189 ((_ map or) (store ((as const (Array Context!10334 Bool)) false) setElem!38775 true) setRest!38775))))

(declare-fun b!5769495 () Bool)

(declare-fun Unit!156667 () Unit!156664)

(assert (=> b!5769495 (= e!3544474 Unit!156667)))

(declare-fun lt!2289950 () Unit!156664)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!808 ((InoxSet Context!10334) (InoxSet Context!10334) List!63650) Unit!156664)

(assert (=> b!5769495 (= lt!2289950 (lemmaZipperConcatMatchesSameAsBothZippers!808 lt!2289959 lt!2289951 (t!376988 s!2326)))))

(declare-fun res!2434709 () Bool)

(assert (=> b!5769495 (= res!2434709 (matchZipper!1921 lt!2289959 (t!376988 s!2326)))))

(assert (=> b!5769495 (=> res!2434709 e!3544469)))

(assert (=> b!5769495 (= (matchZipper!1921 ((_ map or) lt!2289959 lt!2289951) (t!376988 s!2326)) e!3544469)))

(declare-fun b!5769496 () Bool)

(declare-fun res!2434712 () Bool)

(assert (=> b!5769496 (=> res!2434712 e!3544477)))

(declare-fun generalisedConcat!1398 (List!63648) Regex!15783)

(assert (=> b!5769496 (= res!2434712 (not (= r!7292 (generalisedConcat!1398 (exprs!5667 (h!69973 zl!343))))))))

(declare-fun b!5769497 () Bool)

(assert (=> b!5769497 (= e!3544480 tp_is_empty!40819)))

(assert (=> b!5769498 (= e!3544475 e!3544479)))

(declare-fun res!2434701 () Bool)

(assert (=> b!5769498 (=> res!2434701 e!3544479)))

(assert (=> b!5769498 (= res!2434701 (or (and ((_ is ElementMatch!15783) (regOne!32078 r!7292)) (= (c!1020117 (regOne!32078 r!7292)) (h!69974 s!2326))) ((_ is Union!15783) (regOne!32078 r!7292))))))

(declare-fun lt!2289962 () Unit!156664)

(assert (=> b!5769498 (= lt!2289962 e!3544474)))

(declare-fun c!1020116 () Bool)

(assert (=> b!5769498 (= c!1020116 (nullable!5815 (h!69972 (exprs!5667 (h!69973 zl!343)))))))

(declare-fun lambda!313431 () Int)

(declare-fun flatMap!1396 ((InoxSet Context!10334) Int) (InoxSet Context!10334))

(declare-fun derivationStepZipperUp!1051 (Context!10334 C!31836) (InoxSet Context!10334))

(assert (=> b!5769498 (= (flatMap!1396 z!1189 lambda!313431) (derivationStepZipperUp!1051 (h!69973 zl!343) (h!69974 s!2326)))))

(declare-fun lt!2289954 () Unit!156664)

(declare-fun lemmaFlatMapOnSingletonSet!928 ((InoxSet Context!10334) Context!10334 Int) Unit!156664)

(assert (=> b!5769498 (= lt!2289954 (lemmaFlatMapOnSingletonSet!928 z!1189 (h!69973 zl!343) lambda!313431))))

(declare-fun lt!2289956 () Context!10334)

(assert (=> b!5769498 (= lt!2289951 (derivationStepZipperUp!1051 lt!2289956 (h!69974 s!2326)))))

(declare-fun derivationStepZipperDown!1125 (Regex!15783 Context!10334 C!31836) (InoxSet Context!10334))

(assert (=> b!5769498 (= lt!2289959 (derivationStepZipperDown!1125 (h!69972 (exprs!5667 (h!69973 zl!343))) lt!2289956 (h!69974 s!2326)))))

(assert (=> b!5769498 (= lt!2289956 (Context!10335 (t!376986 (exprs!5667 (h!69973 zl!343)))))))

(declare-fun lt!2289957 () (InoxSet Context!10334))

(assert (=> b!5769498 (= lt!2289957 (derivationStepZipperUp!1051 (Context!10335 (Cons!63524 (h!69972 (exprs!5667 (h!69973 zl!343))) (t!376986 (exprs!5667 (h!69973 zl!343))))) (h!69974 s!2326)))))

(declare-fun b!5769499 () Bool)

(assert (=> b!5769499 (= e!3544478 (not e!3544477))))

(declare-fun res!2434707 () Bool)

(assert (=> b!5769499 (=> res!2434707 e!3544477)))

(assert (=> b!5769499 (= res!2434707 (not ((_ is Cons!63525) zl!343)))))

(declare-fun lt!2289952 () Bool)

(declare-fun matchRSpec!2886 (Regex!15783 List!63650) Bool)

(assert (=> b!5769499 (= lt!2289952 (matchRSpec!2886 r!7292 s!2326))))

(declare-fun matchR!7968 (Regex!15783 List!63650) Bool)

(assert (=> b!5769499 (= lt!2289952 (matchR!7968 r!7292 s!2326))))

(declare-fun lt!2289960 () Unit!156664)

(declare-fun mainMatchTheorem!2886 (Regex!15783 List!63650) Unit!156664)

(assert (=> b!5769499 (= lt!2289960 (mainMatchTheorem!2886 r!7292 s!2326))))

(assert (=> b!5769489 (= e!3544477 e!3544475)))

(declare-fun res!2434705 () Bool)

(assert (=> b!5769489 (=> res!2434705 e!3544475)))

(declare-fun lt!2289953 () Bool)

(assert (=> b!5769489 (= res!2434705 (or (not (= lt!2289952 lt!2289953)) ((_ is Nil!63526) s!2326)))))

(declare-fun Exists!2883 (Int) Bool)

(assert (=> b!5769489 (= (Exists!2883 lambda!313429) (Exists!2883 lambda!313430))))

(declare-fun lt!2289955 () Unit!156664)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1512 (Regex!15783 Regex!15783 List!63650) Unit!156664)

(assert (=> b!5769489 (= lt!2289955 (lemmaExistCutMatchRandMatchRSpecEquivalent!1512 (regOne!32078 r!7292) (regTwo!32078 r!7292) s!2326))))

(assert (=> b!5769489 (= lt!2289953 (Exists!2883 lambda!313429))))

(declare-datatypes ((tuple2!65760 0))(
  ( (tuple2!65761 (_1!36183 List!63650) (_2!36183 List!63650)) )
))
(declare-datatypes ((Option!15792 0))(
  ( (None!15791) (Some!15791 (v!51850 tuple2!65760)) )
))
(declare-fun isDefined!12495 (Option!15792) Bool)

(declare-fun findConcatSeparation!2206 (Regex!15783 Regex!15783 List!63650 List!63650 List!63650) Option!15792)

(assert (=> b!5769489 (= lt!2289953 (isDefined!12495 (findConcatSeparation!2206 (regOne!32078 r!7292) (regTwo!32078 r!7292) Nil!63526 s!2326 s!2326)))))

(declare-fun lt!2289961 () Unit!156664)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1970 (Regex!15783 Regex!15783 List!63650) Unit!156664)

(assert (=> b!5769489 (= lt!2289961 (lemmaFindConcatSeparationEquivalentToExists!1970 (regOne!32078 r!7292) (regTwo!32078 r!7292) s!2326))))

(declare-fun res!2434710 () Bool)

(assert (=> start!592604 (=> (not res!2434710) (not e!3544478))))

(declare-fun validRegex!7519 (Regex!15783) Bool)

(assert (=> start!592604 (= res!2434710 (validRegex!7519 r!7292))))

(assert (=> start!592604 e!3544478))

(assert (=> start!592604 e!3544480))

(declare-fun condSetEmpty!38775 () Bool)

(assert (=> start!592604 (= condSetEmpty!38775 (= z!1189 ((as const (Array Context!10334 Bool)) false)))))

(assert (=> start!592604 setRes!38775))

(assert (=> start!592604 e!3544473))

(assert (=> start!592604 e!3544472))

(assert (= (and start!592604 res!2434710) b!5769488))

(assert (= (and b!5769488 res!2434702) b!5769483))

(assert (= (and b!5769483 res!2434711) b!5769499))

(assert (= (and b!5769499 (not res!2434707)) b!5769480))

(assert (= (and b!5769480 (not res!2434704)) b!5769496))

(assert (= (and b!5769496 (not res!2434712)) b!5769479))

(assert (= (and b!5769479 (not res!2434713)) b!5769481))

(assert (= (and b!5769481 (not res!2434708)) b!5769494))

(assert (= (and b!5769494 (not res!2434703)) b!5769489))

(assert (= (and b!5769489 (not res!2434705)) b!5769493))

(assert (= (and b!5769493 (not res!2434700)) b!5769498))

(assert (= (and b!5769498 c!1020116) b!5769495))

(assert (= (and b!5769498 (not c!1020116)) b!5769486))

(assert (= (and b!5769495 (not res!2434709)) b!5769492))

(assert (= (and b!5769498 (not res!2434701)) b!5769490))

(assert (= (and b!5769490 res!2434715) b!5769478))

(assert (= (and b!5769490 (not res!2434706)) b!5769475))

(assert (= (and b!5769475 (not res!2434714)) b!5769482))

(assert (= (and start!592604 ((_ is ElementMatch!15783) r!7292)) b!5769497))

(assert (= (and start!592604 ((_ is Concat!24628) r!7292)) b!5769484))

(assert (= (and start!592604 ((_ is Star!15783) r!7292)) b!5769477))

(assert (= (and start!592604 ((_ is Union!15783) r!7292)) b!5769476))

(assert (= (and start!592604 condSetEmpty!38775) setIsEmpty!38775))

(assert (= (and start!592604 (not condSetEmpty!38775)) setNonEmpty!38775))

(assert (= setNonEmpty!38775 b!5769487))

(assert (= b!5769491 b!5769474))

(assert (= (and start!592604 ((_ is Cons!63525) zl!343)) b!5769491))

(assert (= (and start!592604 ((_ is Cons!63526) s!2326)) b!5769485))

(declare-fun m!6714362 () Bool)

(assert (=> start!592604 m!6714362))

(declare-fun m!6714364 () Bool)

(assert (=> b!5769483 m!6714364))

(declare-fun m!6714366 () Bool)

(assert (=> b!5769496 m!6714366))

(declare-fun m!6714368 () Bool)

(assert (=> b!5769489 m!6714368))

(declare-fun m!6714370 () Bool)

(assert (=> b!5769489 m!6714370))

(declare-fun m!6714372 () Bool)

(assert (=> b!5769489 m!6714372))

(assert (=> b!5769489 m!6714372))

(declare-fun m!6714374 () Bool)

(assert (=> b!5769489 m!6714374))

(declare-fun m!6714376 () Bool)

(assert (=> b!5769489 m!6714376))

(assert (=> b!5769489 m!6714368))

(declare-fun m!6714378 () Bool)

(assert (=> b!5769489 m!6714378))

(declare-fun m!6714380 () Bool)

(assert (=> setNonEmpty!38775 m!6714380))

(declare-fun m!6714382 () Bool)

(assert (=> b!5769498 m!6714382))

(declare-fun m!6714384 () Bool)

(assert (=> b!5769498 m!6714384))

(declare-fun m!6714386 () Bool)

(assert (=> b!5769498 m!6714386))

(declare-fun m!6714388 () Bool)

(assert (=> b!5769498 m!6714388))

(declare-fun m!6714390 () Bool)

(assert (=> b!5769498 m!6714390))

(declare-fun m!6714392 () Bool)

(assert (=> b!5769498 m!6714392))

(declare-fun m!6714394 () Bool)

(assert (=> b!5769498 m!6714394))

(declare-fun m!6714396 () Bool)

(assert (=> b!5769492 m!6714396))

(declare-fun m!6714398 () Bool)

(assert (=> b!5769495 m!6714398))

(declare-fun m!6714400 () Bool)

(assert (=> b!5769495 m!6714400))

(declare-fun m!6714402 () Bool)

(assert (=> b!5769495 m!6714402))

(declare-fun m!6714404 () Bool)

(assert (=> b!5769493 m!6714404))

(assert (=> b!5769482 m!6714400))

(declare-fun m!6714406 () Bool)

(assert (=> b!5769482 m!6714406))

(declare-fun m!6714408 () Bool)

(assert (=> b!5769491 m!6714408))

(declare-fun m!6714410 () Bool)

(assert (=> b!5769488 m!6714410))

(declare-fun m!6714412 () Bool)

(assert (=> b!5769499 m!6714412))

(declare-fun m!6714414 () Bool)

(assert (=> b!5769499 m!6714414))

(declare-fun m!6714416 () Bool)

(assert (=> b!5769499 m!6714416))

(declare-fun m!6714418 () Bool)

(assert (=> b!5769478 m!6714418))

(declare-fun m!6714420 () Bool)

(assert (=> b!5769481 m!6714420))

(assert (=> b!5769481 m!6714420))

(declare-fun m!6714422 () Bool)

(assert (=> b!5769481 m!6714422))

(declare-fun m!6714424 () Bool)

(assert (=> b!5769480 m!6714424))

(check-sat (not b!5769482) (not b!5769498) (not setNonEmpty!38775) (not b!5769487) (not b!5769484) (not b!5769483) (not b!5769488) (not b!5769492) (not b!5769478) tp_is_empty!40819 (not b!5769480) (not b!5769485) (not b!5769489) (not b!5769491) (not b!5769481) (not b!5769476) (not b!5769474) (not b!5769495) (not b!5769499) (not b!5769496) (not start!592604) (not b!5769493) (not b!5769477))
(check-sat)

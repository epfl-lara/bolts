; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582372 () Bool)

(assert start!582372)

(declare-fun b!5620378 () Bool)

(assert (=> b!5620378 true))

(assert (=> b!5620378 true))

(declare-fun lambda!301729 () Int)

(declare-fun lambda!301728 () Int)

(assert (=> b!5620378 (not (= lambda!301729 lambda!301728))))

(assert (=> b!5620378 true))

(assert (=> b!5620378 true))

(declare-fun b!5620372 () Bool)

(assert (=> b!5620372 true))

(declare-fun b!5620354 () Bool)

(declare-datatypes ((Unit!155932 0))(
  ( (Unit!155933) )
))
(declare-fun e!3464693 () Unit!155932)

(declare-fun Unit!155934 () Unit!155932)

(assert (=> b!5620354 (= e!3464693 Unit!155934)))

(declare-fun b!5620355 () Bool)

(declare-fun Unit!155935 () Unit!155932)

(assert (=> b!5620355 (= e!3464693 Unit!155935)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31480 0))(
  ( (C!31481 (val!25442 Int)) )
))
(declare-datatypes ((Regex!15605 0))(
  ( (ElementMatch!15605 (c!986263 C!31480)) (Concat!24450 (regOne!31722 Regex!15605) (regTwo!31722 Regex!15605)) (EmptyExpr!15605) (Star!15605 (reg!15934 Regex!15605)) (EmptyLang!15605) (Union!15605 (regOne!31723 Regex!15605) (regTwo!31723 Regex!15605)) )
))
(declare-datatypes ((List!63114 0))(
  ( (Nil!62990) (Cons!62990 (h!69438 Regex!15605) (t!376404 List!63114)) )
))
(declare-datatypes ((Context!9978 0))(
  ( (Context!9979 (exprs!5489 List!63114)) )
))
(declare-fun lt!2260012 () (InoxSet Context!9978))

(declare-datatypes ((List!63115 0))(
  ( (Nil!62991) (Cons!62991 (h!69439 C!31480) (t!376405 List!63115)) )
))
(declare-fun s!2326 () List!63115)

(declare-fun lt!2260010 () Unit!155932)

(declare-fun lt!2259990 () (InoxSet Context!9978))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!630 ((InoxSet Context!9978) (InoxSet Context!9978) List!63115) Unit!155932)

(assert (=> b!5620355 (= lt!2260010 (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259990 lt!2260012 (t!376405 s!2326)))))

(declare-fun res!2380656 () Bool)

(declare-fun lt!2260020 () Bool)

(assert (=> b!5620355 (= res!2380656 lt!2260020)))

(declare-fun e!3464688 () Bool)

(assert (=> b!5620355 (=> res!2380656 e!3464688)))

(declare-fun matchZipper!1743 ((InoxSet Context!9978) List!63115) Bool)

(assert (=> b!5620355 (= (matchZipper!1743 ((_ map or) lt!2259990 lt!2260012) (t!376405 s!2326)) e!3464688)))

(declare-fun b!5620356 () Bool)

(declare-fun e!3464699 () Bool)

(declare-fun e!3464692 () Bool)

(assert (=> b!5620356 (= e!3464699 e!3464692)))

(declare-fun res!2380673 () Bool)

(assert (=> b!5620356 (=> res!2380673 e!3464692)))

(declare-fun lt!2260001 () Bool)

(declare-fun e!3464689 () Bool)

(assert (=> b!5620356 (= res!2380673 (not (= lt!2260001 e!3464689)))))

(declare-fun res!2380669 () Bool)

(assert (=> b!5620356 (=> res!2380669 e!3464689)))

(declare-fun lt!2260007 () Bool)

(assert (=> b!5620356 (= res!2380669 lt!2260007)))

(declare-fun z!1189 () (InoxSet Context!9978))

(assert (=> b!5620356 (= lt!2260001 (matchZipper!1743 z!1189 s!2326))))

(declare-fun lt!2259981 () (InoxSet Context!9978))

(assert (=> b!5620356 (= lt!2260007 (matchZipper!1743 lt!2259981 s!2326))))

(declare-fun lt!2260021 () Unit!155932)

(declare-fun e!3464701 () Unit!155932)

(assert (=> b!5620356 (= lt!2260021 e!3464701)))

(declare-fun c!986262 () Bool)

(declare-fun r!7292 () Regex!15605)

(declare-fun nullable!5637 (Regex!15605) Bool)

(assert (=> b!5620356 (= c!986262 (nullable!5637 (regTwo!31723 (regOne!31722 r!7292))))))

(declare-fun lt!2259995 () (InoxSet Context!9978))

(declare-fun lambda!301730 () Int)

(declare-fun lt!2259993 () Context!9978)

(declare-fun flatMap!1218 ((InoxSet Context!9978) Int) (InoxSet Context!9978))

(declare-fun derivationStepZipperUp!873 (Context!9978 C!31480) (InoxSet Context!9978))

(assert (=> b!5620356 (= (flatMap!1218 lt!2259995 lambda!301730) (derivationStepZipperUp!873 lt!2259993 (h!69439 s!2326)))))

(declare-fun lt!2259994 () Unit!155932)

(declare-fun lemmaFlatMapOnSingletonSet!750 ((InoxSet Context!9978) Context!9978 Int) Unit!155932)

(assert (=> b!5620356 (= lt!2259994 (lemmaFlatMapOnSingletonSet!750 lt!2259995 lt!2259993 lambda!301730))))

(declare-fun lt!2260022 () (InoxSet Context!9978))

(assert (=> b!5620356 (= lt!2260022 (derivationStepZipperUp!873 lt!2259993 (h!69439 s!2326)))))

(declare-fun lt!2259988 () Unit!155932)

(assert (=> b!5620356 (= lt!2259988 e!3464693)))

(declare-fun c!986260 () Bool)

(assert (=> b!5620356 (= c!986260 (nullable!5637 (regOne!31723 (regOne!31722 r!7292))))))

(declare-fun lt!2259992 () Context!9978)

(assert (=> b!5620356 (= (flatMap!1218 lt!2259981 lambda!301730) (derivationStepZipperUp!873 lt!2259992 (h!69439 s!2326)))))

(declare-fun lt!2260011 () Unit!155932)

(assert (=> b!5620356 (= lt!2260011 (lemmaFlatMapOnSingletonSet!750 lt!2259981 lt!2259992 lambda!301730))))

(declare-fun lt!2260013 () (InoxSet Context!9978))

(assert (=> b!5620356 (= lt!2260013 (derivationStepZipperUp!873 lt!2259992 (h!69439 s!2326)))))

(assert (=> b!5620356 (= lt!2259995 (store ((as const (Array Context!9978 Bool)) false) lt!2259993 true))))

(declare-fun lt!2259989 () List!63114)

(assert (=> b!5620356 (= lt!2259993 (Context!9979 lt!2259989))))

(declare-datatypes ((List!63116 0))(
  ( (Nil!62992) (Cons!62992 (h!69440 Context!9978) (t!376406 List!63116)) )
))
(declare-fun zl!343 () List!63116)

(assert (=> b!5620356 (= lt!2259989 (Cons!62990 (regTwo!31723 (regOne!31722 r!7292)) (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(assert (=> b!5620356 (= lt!2259981 (store ((as const (Array Context!9978 Bool)) false) lt!2259992 true))))

(declare-fun lt!2259982 () List!63114)

(assert (=> b!5620356 (= lt!2259992 (Context!9979 lt!2259982))))

(assert (=> b!5620356 (= lt!2259982 (Cons!62990 (regOne!31723 (regOne!31722 r!7292)) (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5620357 () Bool)

(declare-fun Unit!155936 () Unit!155932)

(assert (=> b!5620357 (= e!3464701 Unit!155936)))

(declare-fun b!5620358 () Bool)

(declare-fun e!3464682 () Bool)

(declare-fun e!3464695 () Bool)

(assert (=> b!5620358 (= e!3464682 e!3464695)))

(declare-fun res!2380664 () Bool)

(assert (=> b!5620358 (=> res!2380664 e!3464695)))

(declare-fun lt!2259999 () Bool)

(declare-fun lt!2260003 () Bool)

(assert (=> b!5620358 (= res!2380664 (or (and (not (= lt!2260001 lt!2259999)) (not lt!2260003)) (not (= r!7292 (Concat!24450 (Union!15605 (regOne!31723 (regOne!31722 r!7292)) (regTwo!31723 (regOne!31722 r!7292))) (regTwo!31722 r!7292))))))))

(declare-fun lt!2260009 () Regex!15605)

(declare-fun matchRSpec!2708 (Regex!15605 List!63115) Bool)

(assert (=> b!5620358 (= lt!2260003 (matchRSpec!2708 lt!2260009 s!2326))))

(declare-fun lt!2260017 () Unit!155932)

(declare-fun mainMatchTheorem!2708 (Regex!15605 List!63115) Unit!155932)

(assert (=> b!5620358 (= lt!2260017 (mainMatchTheorem!2708 lt!2260009 s!2326))))

(declare-fun lt!2259977 () Regex!15605)

(assert (=> b!5620358 (= lt!2259999 (matchRSpec!2708 lt!2259977 s!2326))))

(declare-fun lt!2259996 () Unit!155932)

(assert (=> b!5620358 (= lt!2259996 (mainMatchTheorem!2708 lt!2259977 s!2326))))

(assert (=> b!5620358 (= lt!2260003 (matchZipper!1743 lt!2259995 s!2326))))

(declare-fun matchR!7790 (Regex!15605 List!63115) Bool)

(assert (=> b!5620358 (= lt!2260003 (matchR!7790 lt!2260009 s!2326))))

(declare-fun lt!2259984 () Unit!155932)

(declare-fun lt!2259985 () List!63116)

(declare-fun theoremZipperRegexEquiv!621 ((InoxSet Context!9978) List!63116 Regex!15605 List!63115) Unit!155932)

(assert (=> b!5620358 (= lt!2259984 (theoremZipperRegexEquiv!621 lt!2259995 lt!2259985 lt!2260009 s!2326))))

(declare-fun generalisedConcat!1220 (List!63114) Regex!15605)

(assert (=> b!5620358 (= lt!2260009 (generalisedConcat!1220 lt!2259989))))

(assert (=> b!5620358 (= lt!2259999 lt!2260007)))

(assert (=> b!5620358 (= lt!2259999 (matchR!7790 lt!2259977 s!2326))))

(declare-fun lt!2260006 () Unit!155932)

(declare-fun lt!2260015 () List!63116)

(assert (=> b!5620358 (= lt!2260006 (theoremZipperRegexEquiv!621 lt!2259981 lt!2260015 lt!2259977 s!2326))))

(assert (=> b!5620358 (= lt!2259977 (generalisedConcat!1220 lt!2259982))))

(declare-fun b!5620359 () Bool)

(declare-fun e!3464703 () Unit!155932)

(declare-fun Unit!155937 () Unit!155932)

(assert (=> b!5620359 (= e!3464703 Unit!155937)))

(declare-fun b!5620360 () Bool)

(declare-fun Unit!155938 () Unit!155932)

(assert (=> b!5620360 (= e!3464701 Unit!155938)))

(declare-fun lt!2259983 () Unit!155932)

(declare-fun lt!2259987 () (InoxSet Context!9978))

(assert (=> b!5620360 (= lt!2259983 (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259987 lt!2260012 (t!376405 s!2326)))))

(declare-fun res!2380674 () Bool)

(assert (=> b!5620360 (= res!2380674 (matchZipper!1743 lt!2259987 (t!376405 s!2326)))))

(declare-fun e!3464683 () Bool)

(assert (=> b!5620360 (=> res!2380674 e!3464683)))

(assert (=> b!5620360 (= (matchZipper!1743 ((_ map or) lt!2259987 lt!2260012) (t!376405 s!2326)) e!3464683)))

(declare-fun b!5620361 () Bool)

(assert (=> b!5620361 (= e!3464689 (matchZipper!1743 lt!2259995 s!2326))))

(declare-fun b!5620362 () Bool)

(declare-fun e!3464696 () Bool)

(assert (=> b!5620362 (= e!3464696 e!3464699)))

(declare-fun res!2380668 () Bool)

(assert (=> b!5620362 (=> res!2380668 e!3464699)))

(declare-fun e!3464706 () Bool)

(assert (=> b!5620362 (= res!2380668 e!3464706)))

(declare-fun res!2380653 () Bool)

(assert (=> b!5620362 (=> (not res!2380653) (not e!3464706))))

(declare-fun lt!2259991 () (InoxSet Context!9978))

(assert (=> b!5620362 (= res!2380653 (not (= (matchZipper!1743 lt!2259991 (t!376405 s!2326)) lt!2260020)))))

(declare-fun lt!2260018 () (InoxSet Context!9978))

(declare-fun e!3464702 () Bool)

(assert (=> b!5620362 (= (matchZipper!1743 lt!2260018 (t!376405 s!2326)) e!3464702)))

(declare-fun res!2380654 () Bool)

(assert (=> b!5620362 (=> res!2380654 e!3464702)))

(assert (=> b!5620362 (= res!2380654 lt!2260020)))

(assert (=> b!5620362 (= lt!2260020 (matchZipper!1743 lt!2259990 (t!376405 s!2326)))))

(declare-fun lt!2259980 () Unit!155932)

(assert (=> b!5620362 (= lt!2259980 (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259990 lt!2259987 (t!376405 s!2326)))))

(declare-fun b!5620363 () Bool)

(declare-fun e!3464704 () Bool)

(assert (=> b!5620363 (= e!3464704 e!3464696)))

(declare-fun res!2380658 () Bool)

(assert (=> b!5620363 (=> res!2380658 e!3464696)))

(assert (=> b!5620363 (= res!2380658 (not (= lt!2259991 lt!2260018)))))

(assert (=> b!5620363 (= lt!2260018 ((_ map or) lt!2259990 lt!2259987))))

(declare-fun lt!2260005 () Context!9978)

(declare-fun derivationStepZipperDown!947 (Regex!15605 Context!9978 C!31480) (InoxSet Context!9978))

(assert (=> b!5620363 (= lt!2259987 (derivationStepZipperDown!947 (regTwo!31723 (regOne!31722 r!7292)) lt!2260005 (h!69439 s!2326)))))

(assert (=> b!5620363 (= lt!2259990 (derivationStepZipperDown!947 (regOne!31723 (regOne!31722 r!7292)) lt!2260005 (h!69439 s!2326)))))

(declare-fun b!5620364 () Bool)

(declare-fun res!2380660 () Bool)

(declare-fun e!3464690 () Bool)

(assert (=> b!5620364 (=> (not res!2380660) (not e!3464690))))

(declare-fun toList!9389 ((InoxSet Context!9978)) List!63116)

(assert (=> b!5620364 (= res!2380660 (= (toList!9389 z!1189) zl!343))))

(declare-fun b!5620365 () Bool)

(assert (=> b!5620365 (= e!3464706 (not (matchZipper!1743 lt!2259987 (t!376405 s!2326))))))

(declare-fun setElem!37496 () Context!9978)

(declare-fun setRes!37496 () Bool)

(declare-fun tp!1556626 () Bool)

(declare-fun e!3464691 () Bool)

(declare-fun setNonEmpty!37496 () Bool)

(declare-fun inv!82259 (Context!9978) Bool)

(assert (=> setNonEmpty!37496 (= setRes!37496 (and tp!1556626 (inv!82259 setElem!37496) e!3464691))))

(declare-fun setRest!37496 () (InoxSet Context!9978))

(assert (=> setNonEmpty!37496 (= z!1189 ((_ map or) (store ((as const (Array Context!9978 Bool)) false) setElem!37496 true) setRest!37496))))

(declare-fun lt!2259998 () Regex!15605)

(declare-fun b!5620366 () Bool)

(assert (=> b!5620366 (= e!3464695 (or (not (= lt!2259977 (Concat!24450 (regOne!31723 (regOne!31722 r!7292)) lt!2259998))) (not (= lt!2260009 (Concat!24450 (regTwo!31723 (regOne!31722 r!7292)) lt!2259998))) (= (regTwo!31722 r!7292) lt!2259998)))))

(assert (=> b!5620366 (= lt!2259998 (generalisedConcat!1220 (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5620368 () Bool)

(declare-fun e!3464698 () Bool)

(declare-fun tp_is_empty!40463 () Bool)

(assert (=> b!5620368 (= e!3464698 tp_is_empty!40463)))

(declare-fun setIsEmpty!37496 () Bool)

(assert (=> setIsEmpty!37496 setRes!37496))

(declare-fun b!5620369 () Bool)

(declare-fun e!3464684 () Bool)

(declare-fun tp!1556621 () Bool)

(assert (=> b!5620369 (= e!3464684 tp!1556621)))

(declare-fun tp!1556624 () Bool)

(declare-fun e!3464687 () Bool)

(declare-fun b!5620370 () Bool)

(assert (=> b!5620370 (= e!3464687 (and (inv!82259 (h!69440 zl!343)) e!3464684 tp!1556624))))

(declare-fun b!5620371 () Bool)

(declare-fun res!2380661 () Bool)

(declare-fun e!3464697 () Bool)

(assert (=> b!5620371 (=> res!2380661 e!3464697)))

(get-info :version)

(assert (=> b!5620371 (= res!2380661 (or ((_ is EmptyExpr!15605) r!7292) ((_ is EmptyLang!15605) r!7292) ((_ is ElementMatch!15605) r!7292) ((_ is Union!15605) r!7292) (not ((_ is Concat!24450) r!7292))))))

(declare-fun e!3464685 () Bool)

(assert (=> b!5620372 (= e!3464685 e!3464704)))

(declare-fun res!2380657 () Bool)

(assert (=> b!5620372 (=> res!2380657 e!3464704)))

(assert (=> b!5620372 (= res!2380657 (or (and ((_ is ElementMatch!15605) (regOne!31722 r!7292)) (= (c!986263 (regOne!31722 r!7292)) (h!69439 s!2326))) (not ((_ is Union!15605) (regOne!31722 r!7292)))))))

(declare-fun lt!2260019 () Unit!155932)

(assert (=> b!5620372 (= lt!2260019 e!3464703)))

(declare-fun c!986261 () Bool)

(assert (=> b!5620372 (= c!986261 (nullable!5637 (h!69438 (exprs!5489 (h!69440 zl!343)))))))

(assert (=> b!5620372 (= (flatMap!1218 z!1189 lambda!301730) (derivationStepZipperUp!873 (h!69440 zl!343) (h!69439 s!2326)))))

(declare-fun lt!2259976 () Unit!155932)

(assert (=> b!5620372 (= lt!2259976 (lemmaFlatMapOnSingletonSet!750 z!1189 (h!69440 zl!343) lambda!301730))))

(assert (=> b!5620372 (= lt!2260012 (derivationStepZipperUp!873 lt!2260005 (h!69439 s!2326)))))

(assert (=> b!5620372 (= lt!2259991 (derivationStepZipperDown!947 (h!69438 (exprs!5489 (h!69440 zl!343))) lt!2260005 (h!69439 s!2326)))))

(assert (=> b!5620372 (= lt!2260005 (Context!9979 (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun lt!2259997 () (InoxSet Context!9978))

(assert (=> b!5620372 (= lt!2259997 (derivationStepZipperUp!873 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343))))) (h!69439 s!2326)))))

(declare-fun b!5620373 () Bool)

(declare-fun e!3464694 () Bool)

(assert (=> b!5620373 (= e!3464694 (matchZipper!1743 lt!2260012 (t!376405 s!2326)))))

(declare-fun b!5620374 () Bool)

(declare-fun e!3464700 () Bool)

(assert (=> b!5620374 (= e!3464690 e!3464700)))

(declare-fun res!2380652 () Bool)

(assert (=> b!5620374 (=> (not res!2380652) (not e!3464700))))

(declare-fun lt!2260008 () Regex!15605)

(assert (=> b!5620374 (= res!2380652 (= r!7292 lt!2260008))))

(declare-fun unfocusZipper!1347 (List!63116) Regex!15605)

(assert (=> b!5620374 (= lt!2260008 (unfocusZipper!1347 zl!343))))

(declare-fun b!5620375 () Bool)

(declare-fun tp!1556622 () Bool)

(assert (=> b!5620375 (= e!3464698 tp!1556622)))

(declare-fun b!5620376 () Bool)

(declare-fun res!2380665 () Bool)

(assert (=> b!5620376 (=> res!2380665 e!3464697)))

(declare-fun isEmpty!34818 (List!63116) Bool)

(assert (=> b!5620376 (= res!2380665 (not (isEmpty!34818 (t!376406 zl!343))))))

(declare-fun b!5620377 () Bool)

(declare-fun tp!1556619 () Bool)

(assert (=> b!5620377 (= e!3464691 tp!1556619)))

(assert (=> b!5620378 (= e!3464697 e!3464685)))

(declare-fun res!2380663 () Bool)

(assert (=> b!5620378 (=> res!2380663 e!3464685)))

(declare-fun lt!2260014 () Bool)

(declare-fun lt!2260016 () Bool)

(assert (=> b!5620378 (= res!2380663 (or (not (= lt!2260014 lt!2260016)) ((_ is Nil!62991) s!2326)))))

(declare-fun Exists!2705 (Int) Bool)

(assert (=> b!5620378 (= (Exists!2705 lambda!301728) (Exists!2705 lambda!301729))))

(declare-fun lt!2259978 () Unit!155932)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1334 (Regex!15605 Regex!15605 List!63115) Unit!155932)

(assert (=> b!5620378 (= lt!2259978 (lemmaExistCutMatchRandMatchRSpecEquivalent!1334 (regOne!31722 r!7292) (regTwo!31722 r!7292) s!2326))))

(assert (=> b!5620378 (= lt!2260016 (Exists!2705 lambda!301728))))

(declare-datatypes ((tuple2!65404 0))(
  ( (tuple2!65405 (_1!36005 List!63115) (_2!36005 List!63115)) )
))
(declare-datatypes ((Option!15614 0))(
  ( (None!15613) (Some!15613 (v!51658 tuple2!65404)) )
))
(declare-fun isDefined!12317 (Option!15614) Bool)

(declare-fun findConcatSeparation!2028 (Regex!15605 Regex!15605 List!63115 List!63115 List!63115) Option!15614)

(assert (=> b!5620378 (= lt!2260016 (isDefined!12317 (findConcatSeparation!2028 (regOne!31722 r!7292) (regTwo!31722 r!7292) Nil!62991 s!2326 s!2326)))))

(declare-fun lt!2260000 () Unit!155932)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1792 (Regex!15605 Regex!15605 List!63115) Unit!155932)

(assert (=> b!5620378 (= lt!2260000 (lemmaFindConcatSeparationEquivalentToExists!1792 (regOne!31722 r!7292) (regTwo!31722 r!7292) s!2326))))

(declare-fun b!5620379 () Bool)

(declare-fun res!2380655 () Bool)

(assert (=> b!5620379 (=> res!2380655 e!3464697)))

(declare-fun generalisedUnion!1468 (List!63114) Regex!15605)

(declare-fun unfocusZipperList!1033 (List!63116) List!63114)

(assert (=> b!5620379 (= res!2380655 (not (= r!7292 (generalisedUnion!1468 (unfocusZipperList!1033 zl!343)))))))

(declare-fun b!5620380 () Bool)

(declare-fun tp!1556627 () Bool)

(declare-fun tp!1556623 () Bool)

(assert (=> b!5620380 (= e!3464698 (and tp!1556627 tp!1556623))))

(declare-fun b!5620381 () Bool)

(declare-fun e!3464705 () Bool)

(declare-fun tp!1556618 () Bool)

(assert (=> b!5620381 (= e!3464705 (and tp_is_empty!40463 tp!1556618))))

(declare-fun b!5620382 () Bool)

(assert (=> b!5620382 (= e!3464683 (matchZipper!1743 lt!2260012 (t!376405 s!2326)))))

(declare-fun b!5620383 () Bool)

(declare-fun e!3464686 () Bool)

(assert (=> b!5620383 (= e!3464686 e!3464682)))

(declare-fun res!2380659 () Bool)

(assert (=> b!5620383 (=> res!2380659 e!3464682)))

(declare-fun lt!2259979 () Int)

(declare-fun zipperDepthTotal!230 (List!63116) Int)

(assert (=> b!5620383 (= res!2380659 (>= (zipperDepthTotal!230 lt!2259985) lt!2259979))))

(assert (=> b!5620383 (= lt!2259985 (Cons!62992 lt!2259993 Nil!62992))))

(declare-fun b!5620384 () Bool)

(assert (=> b!5620384 (= e!3464688 (matchZipper!1743 lt!2260012 (t!376405 s!2326)))))

(declare-fun b!5620385 () Bool)

(declare-fun res!2380662 () Bool)

(assert (=> b!5620385 (=> res!2380662 e!3464697)))

(assert (=> b!5620385 (= res!2380662 (not ((_ is Cons!62990) (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5620386 () Bool)

(declare-fun Unit!155939 () Unit!155932)

(assert (=> b!5620386 (= e!3464703 Unit!155939)))

(declare-fun lt!2260002 () Unit!155932)

(assert (=> b!5620386 (= lt!2260002 (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259991 lt!2260012 (t!376405 s!2326)))))

(declare-fun res!2380666 () Bool)

(assert (=> b!5620386 (= res!2380666 (matchZipper!1743 lt!2259991 (t!376405 s!2326)))))

(assert (=> b!5620386 (=> res!2380666 e!3464694)))

(assert (=> b!5620386 (= (matchZipper!1743 ((_ map or) lt!2259991 lt!2260012) (t!376405 s!2326)) e!3464694)))

(declare-fun b!5620387 () Bool)

(assert (=> b!5620387 (= e!3464692 e!3464686)))

(declare-fun res!2380670 () Bool)

(assert (=> b!5620387 (=> res!2380670 e!3464686)))

(declare-fun lt!2260004 () Int)

(assert (=> b!5620387 (= res!2380670 (>= lt!2260004 lt!2259979))))

(assert (=> b!5620387 (= lt!2259979 (zipperDepthTotal!230 zl!343))))

(assert (=> b!5620387 (= lt!2260004 (zipperDepthTotal!230 lt!2260015))))

(assert (=> b!5620387 (= lt!2260015 (Cons!62992 lt!2259992 Nil!62992))))

(declare-fun b!5620388 () Bool)

(assert (=> b!5620388 (= e!3464702 (matchZipper!1743 lt!2259987 (t!376405 s!2326)))))

(declare-fun b!5620389 () Bool)

(declare-fun res!2380672 () Bool)

(assert (=> b!5620389 (=> res!2380672 e!3464692)))

(assert (=> b!5620389 (= res!2380672 (or (not (= lt!2260008 r!7292)) (not (= (exprs!5489 (h!69440 zl!343)) (Cons!62990 (regOne!31722 r!7292) (t!376404 (exprs!5489 (h!69440 zl!343))))))))))

(declare-fun b!5620390 () Bool)

(assert (=> b!5620390 (= e!3464700 (not e!3464697))))

(declare-fun res!2380651 () Bool)

(assert (=> b!5620390 (=> res!2380651 e!3464697)))

(assert (=> b!5620390 (= res!2380651 (not ((_ is Cons!62992) zl!343)))))

(assert (=> b!5620390 (= lt!2260014 (matchRSpec!2708 r!7292 s!2326))))

(assert (=> b!5620390 (= lt!2260014 (matchR!7790 r!7292 s!2326))))

(declare-fun lt!2259986 () Unit!155932)

(assert (=> b!5620390 (= lt!2259986 (mainMatchTheorem!2708 r!7292 s!2326))))

(declare-fun b!5620391 () Bool)

(declare-fun tp!1556625 () Bool)

(declare-fun tp!1556620 () Bool)

(assert (=> b!5620391 (= e!3464698 (and tp!1556625 tp!1556620))))

(declare-fun b!5620392 () Bool)

(declare-fun res!2380650 () Bool)

(assert (=> b!5620392 (=> res!2380650 e!3464697)))

(assert (=> b!5620392 (= res!2380650 (not (= r!7292 (generalisedConcat!1220 (exprs!5489 (h!69440 zl!343))))))))

(declare-fun res!2380667 () Bool)

(assert (=> start!582372 (=> (not res!2380667) (not e!3464690))))

(declare-fun validRegex!7341 (Regex!15605) Bool)

(assert (=> start!582372 (= res!2380667 (validRegex!7341 r!7292))))

(assert (=> start!582372 e!3464690))

(assert (=> start!582372 e!3464698))

(declare-fun condSetEmpty!37496 () Bool)

(assert (=> start!582372 (= condSetEmpty!37496 (= z!1189 ((as const (Array Context!9978 Bool)) false)))))

(assert (=> start!582372 setRes!37496))

(assert (=> start!582372 e!3464687))

(assert (=> start!582372 e!3464705))

(declare-fun b!5620367 () Bool)

(declare-fun res!2380671 () Bool)

(assert (=> b!5620367 (=> res!2380671 e!3464685)))

(declare-fun isEmpty!34819 (List!63114) Bool)

(assert (=> b!5620367 (= res!2380671 (isEmpty!34819 (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(assert (= (and start!582372 res!2380667) b!5620364))

(assert (= (and b!5620364 res!2380660) b!5620374))

(assert (= (and b!5620374 res!2380652) b!5620390))

(assert (= (and b!5620390 (not res!2380651)) b!5620376))

(assert (= (and b!5620376 (not res!2380665)) b!5620392))

(assert (= (and b!5620392 (not res!2380650)) b!5620385))

(assert (= (and b!5620385 (not res!2380662)) b!5620379))

(assert (= (and b!5620379 (not res!2380655)) b!5620371))

(assert (= (and b!5620371 (not res!2380661)) b!5620378))

(assert (= (and b!5620378 (not res!2380663)) b!5620367))

(assert (= (and b!5620367 (not res!2380671)) b!5620372))

(assert (= (and b!5620372 c!986261) b!5620386))

(assert (= (and b!5620372 (not c!986261)) b!5620359))

(assert (= (and b!5620386 (not res!2380666)) b!5620373))

(assert (= (and b!5620372 (not res!2380657)) b!5620363))

(assert (= (and b!5620363 (not res!2380658)) b!5620362))

(assert (= (and b!5620362 (not res!2380654)) b!5620388))

(assert (= (and b!5620362 res!2380653) b!5620365))

(assert (= (and b!5620362 (not res!2380668)) b!5620356))

(assert (= (and b!5620356 c!986260) b!5620355))

(assert (= (and b!5620356 (not c!986260)) b!5620354))

(assert (= (and b!5620355 (not res!2380656)) b!5620384))

(assert (= (and b!5620356 c!986262) b!5620360))

(assert (= (and b!5620356 (not c!986262)) b!5620357))

(assert (= (and b!5620360 (not res!2380674)) b!5620382))

(assert (= (and b!5620356 (not res!2380669)) b!5620361))

(assert (= (and b!5620356 (not res!2380673)) b!5620389))

(assert (= (and b!5620389 (not res!2380672)) b!5620387))

(assert (= (and b!5620387 (not res!2380670)) b!5620383))

(assert (= (and b!5620383 (not res!2380659)) b!5620358))

(assert (= (and b!5620358 (not res!2380664)) b!5620366))

(assert (= (and start!582372 ((_ is ElementMatch!15605) r!7292)) b!5620368))

(assert (= (and start!582372 ((_ is Concat!24450) r!7292)) b!5620380))

(assert (= (and start!582372 ((_ is Star!15605) r!7292)) b!5620375))

(assert (= (and start!582372 ((_ is Union!15605) r!7292)) b!5620391))

(assert (= (and start!582372 condSetEmpty!37496) setIsEmpty!37496))

(assert (= (and start!582372 (not condSetEmpty!37496)) setNonEmpty!37496))

(assert (= setNonEmpty!37496 b!5620377))

(assert (= b!5620370 b!5620369))

(assert (= (and start!582372 ((_ is Cons!62992) zl!343)) b!5620370))

(assert (= (and start!582372 ((_ is Cons!62991) s!2326)) b!5620381))

(declare-fun m!6593822 () Bool)

(assert (=> b!5620363 m!6593822))

(declare-fun m!6593824 () Bool)

(assert (=> b!5620363 m!6593824))

(declare-fun m!6593826 () Bool)

(assert (=> b!5620365 m!6593826))

(declare-fun m!6593828 () Bool)

(assert (=> b!5620382 m!6593828))

(declare-fun m!6593830 () Bool)

(assert (=> start!582372 m!6593830))

(declare-fun m!6593832 () Bool)

(assert (=> b!5620392 m!6593832))

(assert (=> b!5620373 m!6593828))

(declare-fun m!6593834 () Bool)

(assert (=> b!5620364 m!6593834))

(declare-fun m!6593836 () Bool)

(assert (=> b!5620356 m!6593836))

(declare-fun m!6593838 () Bool)

(assert (=> b!5620356 m!6593838))

(declare-fun m!6593840 () Bool)

(assert (=> b!5620356 m!6593840))

(declare-fun m!6593842 () Bool)

(assert (=> b!5620356 m!6593842))

(declare-fun m!6593844 () Bool)

(assert (=> b!5620356 m!6593844))

(declare-fun m!6593846 () Bool)

(assert (=> b!5620356 m!6593846))

(declare-fun m!6593848 () Bool)

(assert (=> b!5620356 m!6593848))

(declare-fun m!6593850 () Bool)

(assert (=> b!5620356 m!6593850))

(declare-fun m!6593852 () Bool)

(assert (=> b!5620356 m!6593852))

(declare-fun m!6593854 () Bool)

(assert (=> b!5620356 m!6593854))

(declare-fun m!6593856 () Bool)

(assert (=> b!5620356 m!6593856))

(declare-fun m!6593858 () Bool)

(assert (=> b!5620356 m!6593858))

(declare-fun m!6593860 () Bool)

(assert (=> setNonEmpty!37496 m!6593860))

(declare-fun m!6593862 () Bool)

(assert (=> b!5620379 m!6593862))

(assert (=> b!5620379 m!6593862))

(declare-fun m!6593864 () Bool)

(assert (=> b!5620379 m!6593864))

(declare-fun m!6593866 () Bool)

(assert (=> b!5620358 m!6593866))

(declare-fun m!6593868 () Bool)

(assert (=> b!5620358 m!6593868))

(declare-fun m!6593870 () Bool)

(assert (=> b!5620358 m!6593870))

(declare-fun m!6593872 () Bool)

(assert (=> b!5620358 m!6593872))

(declare-fun m!6593874 () Bool)

(assert (=> b!5620358 m!6593874))

(declare-fun m!6593876 () Bool)

(assert (=> b!5620358 m!6593876))

(declare-fun m!6593878 () Bool)

(assert (=> b!5620358 m!6593878))

(declare-fun m!6593880 () Bool)

(assert (=> b!5620358 m!6593880))

(declare-fun m!6593882 () Bool)

(assert (=> b!5620358 m!6593882))

(declare-fun m!6593884 () Bool)

(assert (=> b!5620358 m!6593884))

(declare-fun m!6593886 () Bool)

(assert (=> b!5620358 m!6593886))

(declare-fun m!6593888 () Bool)

(assert (=> b!5620383 m!6593888))

(declare-fun m!6593890 () Bool)

(assert (=> b!5620374 m!6593890))

(assert (=> b!5620361 m!6593884))

(declare-fun m!6593892 () Bool)

(assert (=> b!5620386 m!6593892))

(declare-fun m!6593894 () Bool)

(assert (=> b!5620386 m!6593894))

(declare-fun m!6593896 () Bool)

(assert (=> b!5620386 m!6593896))

(declare-fun m!6593898 () Bool)

(assert (=> b!5620390 m!6593898))

(declare-fun m!6593900 () Bool)

(assert (=> b!5620390 m!6593900))

(declare-fun m!6593902 () Bool)

(assert (=> b!5620390 m!6593902))

(declare-fun m!6593904 () Bool)

(assert (=> b!5620378 m!6593904))

(declare-fun m!6593906 () Bool)

(assert (=> b!5620378 m!6593906))

(declare-fun m!6593908 () Bool)

(assert (=> b!5620378 m!6593908))

(assert (=> b!5620378 m!6593908))

(assert (=> b!5620378 m!6593904))

(declare-fun m!6593910 () Bool)

(assert (=> b!5620378 m!6593910))

(declare-fun m!6593912 () Bool)

(assert (=> b!5620378 m!6593912))

(declare-fun m!6593914 () Bool)

(assert (=> b!5620378 m!6593914))

(declare-fun m!6593916 () Bool)

(assert (=> b!5620370 m!6593916))

(declare-fun m!6593918 () Bool)

(assert (=> b!5620387 m!6593918))

(declare-fun m!6593920 () Bool)

(assert (=> b!5620387 m!6593920))

(assert (=> b!5620362 m!6593894))

(declare-fun m!6593922 () Bool)

(assert (=> b!5620362 m!6593922))

(declare-fun m!6593924 () Bool)

(assert (=> b!5620362 m!6593924))

(declare-fun m!6593926 () Bool)

(assert (=> b!5620362 m!6593926))

(declare-fun m!6593928 () Bool)

(assert (=> b!5620372 m!6593928))

(declare-fun m!6593930 () Bool)

(assert (=> b!5620372 m!6593930))

(declare-fun m!6593932 () Bool)

(assert (=> b!5620372 m!6593932))

(declare-fun m!6593934 () Bool)

(assert (=> b!5620372 m!6593934))

(declare-fun m!6593936 () Bool)

(assert (=> b!5620372 m!6593936))

(declare-fun m!6593938 () Bool)

(assert (=> b!5620372 m!6593938))

(declare-fun m!6593940 () Bool)

(assert (=> b!5620372 m!6593940))

(declare-fun m!6593942 () Bool)

(assert (=> b!5620355 m!6593942))

(declare-fun m!6593944 () Bool)

(assert (=> b!5620355 m!6593944))

(declare-fun m!6593946 () Bool)

(assert (=> b!5620367 m!6593946))

(assert (=> b!5620384 m!6593828))

(declare-fun m!6593948 () Bool)

(assert (=> b!5620360 m!6593948))

(assert (=> b!5620360 m!6593826))

(declare-fun m!6593950 () Bool)

(assert (=> b!5620360 m!6593950))

(assert (=> b!5620388 m!6593826))

(declare-fun m!6593952 () Bool)

(assert (=> b!5620366 m!6593952))

(declare-fun m!6593954 () Bool)

(assert (=> b!5620376 m!6593954))

(check-sat (not b!5620372) (not b!5620378) (not b!5620382) (not b!5620383) tp_is_empty!40463 (not b!5620361) (not b!5620376) (not b!5620388) (not b!5620365) (not b!5620386) (not b!5620364) (not b!5620362) (not b!5620358) (not b!5620380) (not b!5620391) (not b!5620374) (not b!5620355) (not b!5620387) (not b!5620392) (not start!582372) (not b!5620384) (not b!5620363) (not setNonEmpty!37496) (not b!5620356) (not b!5620369) (not b!5620390) (not b!5620366) (not b!5620377) (not b!5620375) (not b!5620367) (not b!5620381) (not b!5620373) (not b!5620360) (not b!5620370) (not b!5620379))
(check-sat)
(get-model)

(declare-fun d!1776164 () Bool)

(declare-fun lambda!301765 () Int)

(declare-fun forall!14764 (List!63114 Int) Bool)

(assert (=> d!1776164 (= (inv!82259 setElem!37496) (forall!14764 (exprs!5489 setElem!37496) lambda!301765))))

(declare-fun bs!1301570 () Bool)

(assert (= bs!1301570 d!1776164))

(declare-fun m!6594252 () Bool)

(assert (=> bs!1301570 m!6594252))

(assert (=> setNonEmpty!37496 d!1776164))

(declare-fun d!1776174 () Bool)

(declare-fun c!986391 () Bool)

(declare-fun isEmpty!34822 (List!63115) Bool)

(assert (=> d!1776174 (= c!986391 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3464934 () Bool)

(assert (=> d!1776174 (= (matchZipper!1743 lt!2259987 (t!376405 s!2326)) e!3464934)))

(declare-fun b!5620791 () Bool)

(declare-fun nullableZipper!1592 ((InoxSet Context!9978)) Bool)

(assert (=> b!5620791 (= e!3464934 (nullableZipper!1592 lt!2259987))))

(declare-fun b!5620792 () Bool)

(declare-fun derivationStepZipper!1696 ((InoxSet Context!9978) C!31480) (InoxSet Context!9978))

(declare-fun head!11963 (List!63115) C!31480)

(declare-fun tail!11058 (List!63115) List!63115)

(assert (=> b!5620792 (= e!3464934 (matchZipper!1743 (derivationStepZipper!1696 lt!2259987 (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776174 c!986391) b!5620791))

(assert (= (and d!1776174 (not c!986391)) b!5620792))

(declare-fun m!6594302 () Bool)

(assert (=> d!1776174 m!6594302))

(declare-fun m!6594304 () Bool)

(assert (=> b!5620791 m!6594304))

(declare-fun m!6594306 () Bool)

(assert (=> b!5620792 m!6594306))

(assert (=> b!5620792 m!6594306))

(declare-fun m!6594308 () Bool)

(assert (=> b!5620792 m!6594308))

(declare-fun m!6594310 () Bool)

(assert (=> b!5620792 m!6594310))

(assert (=> b!5620792 m!6594308))

(assert (=> b!5620792 m!6594310))

(declare-fun m!6594312 () Bool)

(assert (=> b!5620792 m!6594312))

(assert (=> b!5620365 d!1776174))

(declare-fun bs!1301593 () Bool)

(declare-fun d!1776188 () Bool)

(assert (= bs!1301593 (and d!1776188 d!1776164)))

(declare-fun lambda!301771 () Int)

(assert (=> bs!1301593 (= lambda!301771 lambda!301765)))

(declare-fun b!5620890 () Bool)

(declare-fun e!3464991 () Regex!15605)

(assert (=> b!5620890 (= e!3464991 EmptyExpr!15605)))

(declare-fun b!5620891 () Bool)

(declare-fun e!3464990 () Bool)

(declare-fun lt!2260088 () Regex!15605)

(declare-fun isEmptyExpr!1151 (Regex!15605) Bool)

(assert (=> b!5620891 (= e!3464990 (isEmptyExpr!1151 lt!2260088))))

(declare-fun b!5620892 () Bool)

(declare-fun e!3464987 () Bool)

(declare-fun head!11964 (List!63114) Regex!15605)

(assert (=> b!5620892 (= e!3464987 (= lt!2260088 (head!11964 (t!376404 (exprs!5489 (h!69440 zl!343))))))))

(declare-fun b!5620893 () Bool)

(declare-fun isConcat!674 (Regex!15605) Bool)

(assert (=> b!5620893 (= e!3464987 (isConcat!674 lt!2260088))))

(declare-fun b!5620894 () Bool)

(declare-fun e!3464986 () Bool)

(assert (=> b!5620894 (= e!3464986 e!3464990)))

(declare-fun c!986421 () Bool)

(assert (=> b!5620894 (= c!986421 (isEmpty!34819 (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5620895 () Bool)

(assert (=> b!5620895 (= e!3464990 e!3464987)))

(declare-fun c!986419 () Bool)

(declare-fun tail!11059 (List!63114) List!63114)

(assert (=> b!5620895 (= c!986419 (isEmpty!34819 (tail!11059 (t!376404 (exprs!5489 (h!69440 zl!343))))))))

(declare-fun b!5620896 () Bool)

(declare-fun e!3464988 () Regex!15605)

(assert (=> b!5620896 (= e!3464988 (h!69438 (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5620897 () Bool)

(declare-fun e!3464989 () Bool)

(assert (=> b!5620897 (= e!3464989 (isEmpty!34819 (t!376404 (t!376404 (exprs!5489 (h!69440 zl!343))))))))

(declare-fun b!5620898 () Bool)

(assert (=> b!5620898 (= e!3464991 (Concat!24450 (h!69438 (t!376404 (exprs!5489 (h!69440 zl!343)))) (generalisedConcat!1220 (t!376404 (t!376404 (exprs!5489 (h!69440 zl!343)))))))))

(assert (=> d!1776188 e!3464986))

(declare-fun res!2380825 () Bool)

(assert (=> d!1776188 (=> (not res!2380825) (not e!3464986))))

(assert (=> d!1776188 (= res!2380825 (validRegex!7341 lt!2260088))))

(assert (=> d!1776188 (= lt!2260088 e!3464988)))

(declare-fun c!986418 () Bool)

(assert (=> d!1776188 (= c!986418 e!3464989)))

(declare-fun res!2380826 () Bool)

(assert (=> d!1776188 (=> (not res!2380826) (not e!3464989))))

(assert (=> d!1776188 (= res!2380826 ((_ is Cons!62990) (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(assert (=> d!1776188 (forall!14764 (t!376404 (exprs!5489 (h!69440 zl!343))) lambda!301771)))

(assert (=> d!1776188 (= (generalisedConcat!1220 (t!376404 (exprs!5489 (h!69440 zl!343)))) lt!2260088)))

(declare-fun b!5620899 () Bool)

(assert (=> b!5620899 (= e!3464988 e!3464991)))

(declare-fun c!986420 () Bool)

(assert (=> b!5620899 (= c!986420 ((_ is Cons!62990) (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(assert (= (and d!1776188 res!2380826) b!5620897))

(assert (= (and d!1776188 c!986418) b!5620896))

(assert (= (and d!1776188 (not c!986418)) b!5620899))

(assert (= (and b!5620899 c!986420) b!5620898))

(assert (= (and b!5620899 (not c!986420)) b!5620890))

(assert (= (and d!1776188 res!2380825) b!5620894))

(assert (= (and b!5620894 c!986421) b!5620891))

(assert (= (and b!5620894 (not c!986421)) b!5620895))

(assert (= (and b!5620895 c!986419) b!5620892))

(assert (= (and b!5620895 (not c!986419)) b!5620893))

(assert (=> b!5620894 m!6593946))

(declare-fun m!6594362 () Bool)

(assert (=> d!1776188 m!6594362))

(declare-fun m!6594364 () Bool)

(assert (=> d!1776188 m!6594364))

(declare-fun m!6594366 () Bool)

(assert (=> b!5620897 m!6594366))

(declare-fun m!6594368 () Bool)

(assert (=> b!5620895 m!6594368))

(assert (=> b!5620895 m!6594368))

(declare-fun m!6594370 () Bool)

(assert (=> b!5620895 m!6594370))

(declare-fun m!6594372 () Bool)

(assert (=> b!5620898 m!6594372))

(declare-fun m!6594374 () Bool)

(assert (=> b!5620893 m!6594374))

(declare-fun m!6594376 () Bool)

(assert (=> b!5620891 m!6594376))

(declare-fun m!6594378 () Bool)

(assert (=> b!5620892 m!6594378))

(assert (=> b!5620366 d!1776188))

(declare-fun e!3465004 () Bool)

(declare-fun d!1776216 () Bool)

(assert (=> d!1776216 (= (matchZipper!1743 ((_ map or) lt!2259991 lt!2260012) (t!376405 s!2326)) e!3465004)))

(declare-fun res!2380829 () Bool)

(assert (=> d!1776216 (=> res!2380829 e!3465004)))

(assert (=> d!1776216 (= res!2380829 (matchZipper!1743 lt!2259991 (t!376405 s!2326)))))

(declare-fun lt!2260091 () Unit!155932)

(declare-fun choose!42565 ((InoxSet Context!9978) (InoxSet Context!9978) List!63115) Unit!155932)

(assert (=> d!1776216 (= lt!2260091 (choose!42565 lt!2259991 lt!2260012 (t!376405 s!2326)))))

(assert (=> d!1776216 (= (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259991 lt!2260012 (t!376405 s!2326)) lt!2260091)))

(declare-fun b!5620923 () Bool)

(assert (=> b!5620923 (= e!3465004 (matchZipper!1743 lt!2260012 (t!376405 s!2326)))))

(assert (= (and d!1776216 (not res!2380829)) b!5620923))

(assert (=> d!1776216 m!6593896))

(assert (=> d!1776216 m!6593894))

(declare-fun m!6594380 () Bool)

(assert (=> d!1776216 m!6594380))

(assert (=> b!5620923 m!6593828))

(assert (=> b!5620386 d!1776216))

(declare-fun d!1776218 () Bool)

(declare-fun c!986422 () Bool)

(assert (=> d!1776218 (= c!986422 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3465005 () Bool)

(assert (=> d!1776218 (= (matchZipper!1743 lt!2259991 (t!376405 s!2326)) e!3465005)))

(declare-fun b!5620924 () Bool)

(assert (=> b!5620924 (= e!3465005 (nullableZipper!1592 lt!2259991))))

(declare-fun b!5620925 () Bool)

(assert (=> b!5620925 (= e!3465005 (matchZipper!1743 (derivationStepZipper!1696 lt!2259991 (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776218 c!986422) b!5620924))

(assert (= (and d!1776218 (not c!986422)) b!5620925))

(assert (=> d!1776218 m!6594302))

(declare-fun m!6594382 () Bool)

(assert (=> b!5620924 m!6594382))

(assert (=> b!5620925 m!6594306))

(assert (=> b!5620925 m!6594306))

(declare-fun m!6594384 () Bool)

(assert (=> b!5620925 m!6594384))

(assert (=> b!5620925 m!6594310))

(assert (=> b!5620925 m!6594384))

(assert (=> b!5620925 m!6594310))

(declare-fun m!6594386 () Bool)

(assert (=> b!5620925 m!6594386))

(assert (=> b!5620386 d!1776218))

(declare-fun d!1776220 () Bool)

(declare-fun c!986423 () Bool)

(assert (=> d!1776220 (= c!986423 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3465006 () Bool)

(assert (=> d!1776220 (= (matchZipper!1743 ((_ map or) lt!2259991 lt!2260012) (t!376405 s!2326)) e!3465006)))

(declare-fun b!5620926 () Bool)

(assert (=> b!5620926 (= e!3465006 (nullableZipper!1592 ((_ map or) lt!2259991 lt!2260012)))))

(declare-fun b!5620927 () Bool)

(assert (=> b!5620927 (= e!3465006 (matchZipper!1743 (derivationStepZipper!1696 ((_ map or) lt!2259991 lt!2260012) (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776220 c!986423) b!5620926))

(assert (= (and d!1776220 (not c!986423)) b!5620927))

(assert (=> d!1776220 m!6594302))

(declare-fun m!6594388 () Bool)

(assert (=> b!5620926 m!6594388))

(assert (=> b!5620927 m!6594306))

(assert (=> b!5620927 m!6594306))

(declare-fun m!6594390 () Bool)

(assert (=> b!5620927 m!6594390))

(assert (=> b!5620927 m!6594310))

(assert (=> b!5620927 m!6594390))

(assert (=> b!5620927 m!6594310))

(declare-fun m!6594392 () Bool)

(assert (=> b!5620927 m!6594392))

(assert (=> b!5620386 d!1776220))

(declare-fun b!5620946 () Bool)

(declare-fun e!3465023 () Bool)

(declare-fun e!3465025 () Bool)

(assert (=> b!5620946 (= e!3465023 e!3465025)))

(declare-fun c!986428 () Bool)

(assert (=> b!5620946 (= c!986428 ((_ is Star!15605) r!7292))))

(declare-fun b!5620947 () Bool)

(declare-fun e!3465024 () Bool)

(declare-fun call!423231 () Bool)

(assert (=> b!5620947 (= e!3465024 call!423231)))

(declare-fun b!5620948 () Bool)

(declare-fun res!2380844 () Bool)

(declare-fun e!3465026 () Bool)

(assert (=> b!5620948 (=> res!2380844 e!3465026)))

(assert (=> b!5620948 (= res!2380844 (not ((_ is Concat!24450) r!7292)))))

(declare-fun e!3465027 () Bool)

(assert (=> b!5620948 (= e!3465027 e!3465026)))

(declare-fun bm!423226 () Bool)

(declare-fun call!423232 () Bool)

(declare-fun c!986429 () Bool)

(assert (=> bm!423226 (= call!423232 (validRegex!7341 (ite c!986429 (regOne!31723 r!7292) (regOne!31722 r!7292))))))

(declare-fun b!5620949 () Bool)

(declare-fun e!3465022 () Bool)

(assert (=> b!5620949 (= e!3465026 e!3465022)))

(declare-fun res!2380842 () Bool)

(assert (=> b!5620949 (=> (not res!2380842) (not e!3465022))))

(assert (=> b!5620949 (= res!2380842 call!423232)))

(declare-fun call!423233 () Bool)

(declare-fun bm!423227 () Bool)

(assert (=> bm!423227 (= call!423233 (validRegex!7341 (ite c!986428 (reg!15934 r!7292) (ite c!986429 (regTwo!31723 r!7292) (regTwo!31722 r!7292)))))))

(declare-fun b!5620950 () Bool)

(assert (=> b!5620950 (= e!3465025 e!3465027)))

(assert (=> b!5620950 (= c!986429 ((_ is Union!15605) r!7292))))

(declare-fun b!5620951 () Bool)

(declare-fun res!2380841 () Bool)

(assert (=> b!5620951 (=> (not res!2380841) (not e!3465024))))

(assert (=> b!5620951 (= res!2380841 call!423232)))

(assert (=> b!5620951 (= e!3465027 e!3465024)))

(declare-fun b!5620952 () Bool)

(declare-fun e!3465021 () Bool)

(assert (=> b!5620952 (= e!3465021 call!423233)))

(declare-fun b!5620953 () Bool)

(assert (=> b!5620953 (= e!3465022 call!423231)))

(declare-fun d!1776222 () Bool)

(declare-fun res!2380843 () Bool)

(assert (=> d!1776222 (=> res!2380843 e!3465023)))

(assert (=> d!1776222 (= res!2380843 ((_ is ElementMatch!15605) r!7292))))

(assert (=> d!1776222 (= (validRegex!7341 r!7292) e!3465023)))

(declare-fun b!5620954 () Bool)

(assert (=> b!5620954 (= e!3465025 e!3465021)))

(declare-fun res!2380840 () Bool)

(assert (=> b!5620954 (= res!2380840 (not (nullable!5637 (reg!15934 r!7292))))))

(assert (=> b!5620954 (=> (not res!2380840) (not e!3465021))))

(declare-fun bm!423228 () Bool)

(assert (=> bm!423228 (= call!423231 call!423233)))

(assert (= (and d!1776222 (not res!2380843)) b!5620946))

(assert (= (and b!5620946 c!986428) b!5620954))

(assert (= (and b!5620946 (not c!986428)) b!5620950))

(assert (= (and b!5620954 res!2380840) b!5620952))

(assert (= (and b!5620950 c!986429) b!5620951))

(assert (= (and b!5620950 (not c!986429)) b!5620948))

(assert (= (and b!5620951 res!2380841) b!5620947))

(assert (= (and b!5620948 (not res!2380844)) b!5620949))

(assert (= (and b!5620949 res!2380842) b!5620953))

(assert (= (or b!5620947 b!5620953) bm!423228))

(assert (= (or b!5620951 b!5620949) bm!423226))

(assert (= (or b!5620952 bm!423228) bm!423227))

(declare-fun m!6594394 () Bool)

(assert (=> bm!423226 m!6594394))

(declare-fun m!6594396 () Bool)

(assert (=> bm!423227 m!6594396))

(declare-fun m!6594398 () Bool)

(assert (=> b!5620954 m!6594398))

(assert (=> start!582372 d!1776222))

(declare-fun b!5620977 () Bool)

(declare-fun e!3465045 () (InoxSet Context!9978))

(declare-fun e!3465043 () (InoxSet Context!9978))

(assert (=> b!5620977 (= e!3465045 e!3465043)))

(declare-fun c!986441 () Bool)

(assert (=> b!5620977 (= c!986441 ((_ is Union!15605) (regTwo!31723 (regOne!31722 r!7292))))))

(declare-fun bm!423241 () Bool)

(declare-fun call!423251 () List!63114)

(declare-fun c!986444 () Bool)

(declare-fun c!986443 () Bool)

(declare-fun $colon$colon!1660 (List!63114 Regex!15605) List!63114)

(assert (=> bm!423241 (= call!423251 ($colon$colon!1660 (exprs!5489 lt!2260005) (ite (or c!986444 c!986443) (regTwo!31722 (regTwo!31723 (regOne!31722 r!7292))) (regTwo!31723 (regOne!31722 r!7292)))))))

(declare-fun bm!423242 () Bool)

(declare-fun call!423248 () (InoxSet Context!9978))

(declare-fun call!423249 () (InoxSet Context!9978))

(assert (=> bm!423242 (= call!423248 call!423249)))

(declare-fun b!5620978 () Bool)

(declare-fun e!3465041 () (InoxSet Context!9978))

(assert (=> b!5620978 (= e!3465041 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5620979 () Bool)

(declare-fun e!3465044 () (InoxSet Context!9978))

(declare-fun e!3465042 () (InoxSet Context!9978))

(assert (=> b!5620979 (= e!3465044 e!3465042)))

(assert (=> b!5620979 (= c!986443 ((_ is Concat!24450) (regTwo!31723 (regOne!31722 r!7292))))))

(declare-fun bm!423243 () Bool)

(declare-fun call!423247 () (InoxSet Context!9978))

(assert (=> bm!423243 (= call!423247 call!423248)))

(declare-fun b!5620980 () Bool)

(declare-fun e!3465040 () Bool)

(assert (=> b!5620980 (= c!986444 e!3465040)))

(declare-fun res!2380847 () Bool)

(assert (=> b!5620980 (=> (not res!2380847) (not e!3465040))))

(assert (=> b!5620980 (= res!2380847 ((_ is Concat!24450) (regTwo!31723 (regOne!31722 r!7292))))))

(assert (=> b!5620980 (= e!3465043 e!3465044)))

(declare-fun b!5620981 () Bool)

(assert (=> b!5620981 (= e!3465042 call!423247)))

(declare-fun bm!423244 () Bool)

(declare-fun call!423250 () List!63114)

(assert (=> bm!423244 (= call!423249 (derivationStepZipperDown!947 (ite c!986441 (regTwo!31723 (regTwo!31723 (regOne!31722 r!7292))) (ite c!986444 (regTwo!31722 (regTwo!31723 (regOne!31722 r!7292))) (ite c!986443 (regOne!31722 (regTwo!31723 (regOne!31722 r!7292))) (reg!15934 (regTwo!31723 (regOne!31722 r!7292)))))) (ite (or c!986441 c!986444) lt!2260005 (Context!9979 call!423250)) (h!69439 s!2326)))))

(declare-fun b!5620982 () Bool)

(declare-fun call!423246 () (InoxSet Context!9978))

(assert (=> b!5620982 (= e!3465043 ((_ map or) call!423246 call!423249))))

(declare-fun d!1776224 () Bool)

(declare-fun c!986440 () Bool)

(assert (=> d!1776224 (= c!986440 (and ((_ is ElementMatch!15605) (regTwo!31723 (regOne!31722 r!7292))) (= (c!986263 (regTwo!31723 (regOne!31722 r!7292))) (h!69439 s!2326))))))

(assert (=> d!1776224 (= (derivationStepZipperDown!947 (regTwo!31723 (regOne!31722 r!7292)) lt!2260005 (h!69439 s!2326)) e!3465045)))

(declare-fun b!5620983 () Bool)

(assert (=> b!5620983 (= e!3465045 (store ((as const (Array Context!9978 Bool)) false) lt!2260005 true))))

(declare-fun b!5620984 () Bool)

(assert (=> b!5620984 (= e!3465041 call!423247)))

(declare-fun bm!423245 () Bool)

(assert (=> bm!423245 (= call!423246 (derivationStepZipperDown!947 (ite c!986441 (regOne!31723 (regTwo!31723 (regOne!31722 r!7292))) (regOne!31722 (regTwo!31723 (regOne!31722 r!7292)))) (ite c!986441 lt!2260005 (Context!9979 call!423251)) (h!69439 s!2326)))))

(declare-fun bm!423246 () Bool)

(assert (=> bm!423246 (= call!423250 call!423251)))

(declare-fun b!5620985 () Bool)

(declare-fun c!986442 () Bool)

(assert (=> b!5620985 (= c!986442 ((_ is Star!15605) (regTwo!31723 (regOne!31722 r!7292))))))

(assert (=> b!5620985 (= e!3465042 e!3465041)))

(declare-fun b!5620986 () Bool)

(assert (=> b!5620986 (= e!3465044 ((_ map or) call!423246 call!423248))))

(declare-fun b!5620987 () Bool)

(assert (=> b!5620987 (= e!3465040 (nullable!5637 (regOne!31722 (regTwo!31723 (regOne!31722 r!7292)))))))

(assert (= (and d!1776224 c!986440) b!5620983))

(assert (= (and d!1776224 (not c!986440)) b!5620977))

(assert (= (and b!5620977 c!986441) b!5620982))

(assert (= (and b!5620977 (not c!986441)) b!5620980))

(assert (= (and b!5620980 res!2380847) b!5620987))

(assert (= (and b!5620980 c!986444) b!5620986))

(assert (= (and b!5620980 (not c!986444)) b!5620979))

(assert (= (and b!5620979 c!986443) b!5620981))

(assert (= (and b!5620979 (not c!986443)) b!5620985))

(assert (= (and b!5620985 c!986442) b!5620984))

(assert (= (and b!5620985 (not c!986442)) b!5620978))

(assert (= (or b!5620981 b!5620984) bm!423246))

(assert (= (or b!5620981 b!5620984) bm!423243))

(assert (= (or b!5620986 bm!423246) bm!423241))

(assert (= (or b!5620986 bm!423243) bm!423242))

(assert (= (or b!5620982 bm!423242) bm!423244))

(assert (= (or b!5620982 b!5620986) bm!423245))

(declare-fun m!6594400 () Bool)

(assert (=> bm!423244 m!6594400))

(declare-fun m!6594402 () Bool)

(assert (=> b!5620983 m!6594402))

(declare-fun m!6594404 () Bool)

(assert (=> b!5620987 m!6594404))

(declare-fun m!6594406 () Bool)

(assert (=> bm!423241 m!6594406))

(declare-fun m!6594408 () Bool)

(assert (=> bm!423245 m!6594408))

(assert (=> b!5620363 d!1776224))

(declare-fun b!5620988 () Bool)

(declare-fun e!3465051 () (InoxSet Context!9978))

(declare-fun e!3465049 () (InoxSet Context!9978))

(assert (=> b!5620988 (= e!3465051 e!3465049)))

(declare-fun c!986446 () Bool)

(assert (=> b!5620988 (= c!986446 ((_ is Union!15605) (regOne!31723 (regOne!31722 r!7292))))))

(declare-fun bm!423247 () Bool)

(declare-fun c!986449 () Bool)

(declare-fun c!986448 () Bool)

(declare-fun call!423257 () List!63114)

(assert (=> bm!423247 (= call!423257 ($colon$colon!1660 (exprs!5489 lt!2260005) (ite (or c!986449 c!986448) (regTwo!31722 (regOne!31723 (regOne!31722 r!7292))) (regOne!31723 (regOne!31722 r!7292)))))))

(declare-fun bm!423248 () Bool)

(declare-fun call!423254 () (InoxSet Context!9978))

(declare-fun call!423255 () (InoxSet Context!9978))

(assert (=> bm!423248 (= call!423254 call!423255)))

(declare-fun b!5620989 () Bool)

(declare-fun e!3465047 () (InoxSet Context!9978))

(assert (=> b!5620989 (= e!3465047 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5620990 () Bool)

(declare-fun e!3465050 () (InoxSet Context!9978))

(declare-fun e!3465048 () (InoxSet Context!9978))

(assert (=> b!5620990 (= e!3465050 e!3465048)))

(assert (=> b!5620990 (= c!986448 ((_ is Concat!24450) (regOne!31723 (regOne!31722 r!7292))))))

(declare-fun bm!423249 () Bool)

(declare-fun call!423253 () (InoxSet Context!9978))

(assert (=> bm!423249 (= call!423253 call!423254)))

(declare-fun b!5620991 () Bool)

(declare-fun e!3465046 () Bool)

(assert (=> b!5620991 (= c!986449 e!3465046)))

(declare-fun res!2380848 () Bool)

(assert (=> b!5620991 (=> (not res!2380848) (not e!3465046))))

(assert (=> b!5620991 (= res!2380848 ((_ is Concat!24450) (regOne!31723 (regOne!31722 r!7292))))))

(assert (=> b!5620991 (= e!3465049 e!3465050)))

(declare-fun b!5620992 () Bool)

(assert (=> b!5620992 (= e!3465048 call!423253)))

(declare-fun call!423256 () List!63114)

(declare-fun bm!423250 () Bool)

(assert (=> bm!423250 (= call!423255 (derivationStepZipperDown!947 (ite c!986446 (regTwo!31723 (regOne!31723 (regOne!31722 r!7292))) (ite c!986449 (regTwo!31722 (regOne!31723 (regOne!31722 r!7292))) (ite c!986448 (regOne!31722 (regOne!31723 (regOne!31722 r!7292))) (reg!15934 (regOne!31723 (regOne!31722 r!7292)))))) (ite (or c!986446 c!986449) lt!2260005 (Context!9979 call!423256)) (h!69439 s!2326)))))

(declare-fun b!5620993 () Bool)

(declare-fun call!423252 () (InoxSet Context!9978))

(assert (=> b!5620993 (= e!3465049 ((_ map or) call!423252 call!423255))))

(declare-fun d!1776226 () Bool)

(declare-fun c!986445 () Bool)

(assert (=> d!1776226 (= c!986445 (and ((_ is ElementMatch!15605) (regOne!31723 (regOne!31722 r!7292))) (= (c!986263 (regOne!31723 (regOne!31722 r!7292))) (h!69439 s!2326))))))

(assert (=> d!1776226 (= (derivationStepZipperDown!947 (regOne!31723 (regOne!31722 r!7292)) lt!2260005 (h!69439 s!2326)) e!3465051)))

(declare-fun b!5620994 () Bool)

(assert (=> b!5620994 (= e!3465051 (store ((as const (Array Context!9978 Bool)) false) lt!2260005 true))))

(declare-fun b!5620995 () Bool)

(assert (=> b!5620995 (= e!3465047 call!423253)))

(declare-fun bm!423251 () Bool)

(assert (=> bm!423251 (= call!423252 (derivationStepZipperDown!947 (ite c!986446 (regOne!31723 (regOne!31723 (regOne!31722 r!7292))) (regOne!31722 (regOne!31723 (regOne!31722 r!7292)))) (ite c!986446 lt!2260005 (Context!9979 call!423257)) (h!69439 s!2326)))))

(declare-fun bm!423252 () Bool)

(assert (=> bm!423252 (= call!423256 call!423257)))

(declare-fun b!5620996 () Bool)

(declare-fun c!986447 () Bool)

(assert (=> b!5620996 (= c!986447 ((_ is Star!15605) (regOne!31723 (regOne!31722 r!7292))))))

(assert (=> b!5620996 (= e!3465048 e!3465047)))

(declare-fun b!5620997 () Bool)

(assert (=> b!5620997 (= e!3465050 ((_ map or) call!423252 call!423254))))

(declare-fun b!5620998 () Bool)

(assert (=> b!5620998 (= e!3465046 (nullable!5637 (regOne!31722 (regOne!31723 (regOne!31722 r!7292)))))))

(assert (= (and d!1776226 c!986445) b!5620994))

(assert (= (and d!1776226 (not c!986445)) b!5620988))

(assert (= (and b!5620988 c!986446) b!5620993))

(assert (= (and b!5620988 (not c!986446)) b!5620991))

(assert (= (and b!5620991 res!2380848) b!5620998))

(assert (= (and b!5620991 c!986449) b!5620997))

(assert (= (and b!5620991 (not c!986449)) b!5620990))

(assert (= (and b!5620990 c!986448) b!5620992))

(assert (= (and b!5620990 (not c!986448)) b!5620996))

(assert (= (and b!5620996 c!986447) b!5620995))

(assert (= (and b!5620996 (not c!986447)) b!5620989))

(assert (= (or b!5620992 b!5620995) bm!423252))

(assert (= (or b!5620992 b!5620995) bm!423249))

(assert (= (or b!5620997 bm!423252) bm!423247))

(assert (= (or b!5620997 bm!423249) bm!423248))

(assert (= (or b!5620993 bm!423248) bm!423250))

(assert (= (or b!5620993 b!5620997) bm!423251))

(declare-fun m!6594410 () Bool)

(assert (=> bm!423250 m!6594410))

(assert (=> b!5620994 m!6594402))

(declare-fun m!6594412 () Bool)

(assert (=> b!5620998 m!6594412))

(declare-fun m!6594414 () Bool)

(assert (=> bm!423247 m!6594414))

(declare-fun m!6594416 () Bool)

(assert (=> bm!423251 m!6594416))

(assert (=> b!5620363 d!1776226))

(declare-fun d!1776228 () Bool)

(declare-fun c!986450 () Bool)

(assert (=> d!1776228 (= c!986450 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3465052 () Bool)

(assert (=> d!1776228 (= (matchZipper!1743 lt!2260012 (t!376405 s!2326)) e!3465052)))

(declare-fun b!5620999 () Bool)

(assert (=> b!5620999 (= e!3465052 (nullableZipper!1592 lt!2260012))))

(declare-fun b!5621000 () Bool)

(assert (=> b!5621000 (= e!3465052 (matchZipper!1743 (derivationStepZipper!1696 lt!2260012 (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776228 c!986450) b!5620999))

(assert (= (and d!1776228 (not c!986450)) b!5621000))

(assert (=> d!1776228 m!6594302))

(declare-fun m!6594418 () Bool)

(assert (=> b!5620999 m!6594418))

(assert (=> b!5621000 m!6594306))

(assert (=> b!5621000 m!6594306))

(declare-fun m!6594420 () Bool)

(assert (=> b!5621000 m!6594420))

(assert (=> b!5621000 m!6594310))

(assert (=> b!5621000 m!6594420))

(assert (=> b!5621000 m!6594310))

(declare-fun m!6594422 () Bool)

(assert (=> b!5621000 m!6594422))

(assert (=> b!5620382 d!1776228))

(assert (=> b!5620384 d!1776228))

(declare-fun d!1776230 () Bool)

(declare-fun e!3465055 () Bool)

(assert (=> d!1776230 e!3465055))

(declare-fun res!2380851 () Bool)

(assert (=> d!1776230 (=> (not res!2380851) (not e!3465055))))

(declare-fun lt!2260094 () List!63116)

(declare-fun noDuplicate!1573 (List!63116) Bool)

(assert (=> d!1776230 (= res!2380851 (noDuplicate!1573 lt!2260094))))

(declare-fun choose!42566 ((InoxSet Context!9978)) List!63116)

(assert (=> d!1776230 (= lt!2260094 (choose!42566 z!1189))))

(assert (=> d!1776230 (= (toList!9389 z!1189) lt!2260094)))

(declare-fun b!5621003 () Bool)

(declare-fun content!11382 (List!63116) (InoxSet Context!9978))

(assert (=> b!5621003 (= e!3465055 (= (content!11382 lt!2260094) z!1189))))

(assert (= (and d!1776230 res!2380851) b!5621003))

(declare-fun m!6594424 () Bool)

(assert (=> d!1776230 m!6594424))

(declare-fun m!6594426 () Bool)

(assert (=> d!1776230 m!6594426))

(declare-fun m!6594428 () Bool)

(assert (=> b!5621003 m!6594428))

(assert (=> b!5620364 d!1776230))

(declare-fun d!1776232 () Bool)

(declare-fun lt!2260097 () Int)

(assert (=> d!1776232 (>= lt!2260097 0)))

(declare-fun e!3465058 () Int)

(assert (=> d!1776232 (= lt!2260097 e!3465058)))

(declare-fun c!986453 () Bool)

(assert (=> d!1776232 (= c!986453 ((_ is Cons!62992) lt!2259985))))

(assert (=> d!1776232 (= (zipperDepthTotal!230 lt!2259985) lt!2260097)))

(declare-fun b!5621008 () Bool)

(declare-fun contextDepthTotal!205 (Context!9978) Int)

(assert (=> b!5621008 (= e!3465058 (+ (contextDepthTotal!205 (h!69440 lt!2259985)) (zipperDepthTotal!230 (t!376406 lt!2259985))))))

(declare-fun b!5621009 () Bool)

(assert (=> b!5621009 (= e!3465058 0)))

(assert (= (and d!1776232 c!986453) b!5621008))

(assert (= (and d!1776232 (not c!986453)) b!5621009))

(declare-fun m!6594430 () Bool)

(assert (=> b!5621008 m!6594430))

(declare-fun m!6594432 () Bool)

(assert (=> b!5621008 m!6594432))

(assert (=> b!5620383 d!1776232))

(declare-fun bs!1301597 () Bool)

(declare-fun b!5621045 () Bool)

(assert (= bs!1301597 (and b!5621045 b!5620378)))

(declare-fun lambda!301776 () Int)

(assert (=> bs!1301597 (not (= lambda!301776 lambda!301728))))

(assert (=> bs!1301597 (not (= lambda!301776 lambda!301729))))

(assert (=> b!5621045 true))

(assert (=> b!5621045 true))

(declare-fun bs!1301598 () Bool)

(declare-fun b!5621046 () Bool)

(assert (= bs!1301598 (and b!5621046 b!5620378)))

(declare-fun lambda!301777 () Int)

(assert (=> bs!1301598 (not (= lambda!301777 lambda!301728))))

(assert (=> bs!1301598 (= lambda!301777 lambda!301729)))

(declare-fun bs!1301599 () Bool)

(assert (= bs!1301599 (and b!5621046 b!5621045)))

(assert (=> bs!1301599 (not (= lambda!301777 lambda!301776))))

(assert (=> b!5621046 true))

(assert (=> b!5621046 true))

(declare-fun b!5621042 () Bool)

(declare-fun e!3465081 () Bool)

(declare-fun e!3465077 () Bool)

(assert (=> b!5621042 (= e!3465081 e!3465077)))

(declare-fun res!2380868 () Bool)

(assert (=> b!5621042 (= res!2380868 (not ((_ is EmptyLang!15605) r!7292)))))

(assert (=> b!5621042 (=> (not res!2380868) (not e!3465077))))

(declare-fun bm!423257 () Bool)

(declare-fun call!423263 () Bool)

(assert (=> bm!423257 (= call!423263 (isEmpty!34822 s!2326))))

(declare-fun b!5621043 () Bool)

(declare-fun c!986463 () Bool)

(assert (=> b!5621043 (= c!986463 ((_ is ElementMatch!15605) r!7292))))

(declare-fun e!3465083 () Bool)

(assert (=> b!5621043 (= e!3465077 e!3465083)))

(declare-fun b!5621044 () Bool)

(assert (=> b!5621044 (= e!3465083 (= s!2326 (Cons!62991 (c!986263 r!7292) Nil!62991)))))

(declare-fun e!3465080 () Bool)

(declare-fun call!423262 () Bool)

(assert (=> b!5621045 (= e!3465080 call!423262)))

(declare-fun e!3465078 () Bool)

(assert (=> b!5621046 (= e!3465078 call!423262)))

(declare-fun b!5621048 () Bool)

(declare-fun e!3465079 () Bool)

(declare-fun e!3465082 () Bool)

(assert (=> b!5621048 (= e!3465079 e!3465082)))

(declare-fun res!2380869 () Bool)

(assert (=> b!5621048 (= res!2380869 (matchRSpec!2708 (regOne!31723 r!7292) s!2326))))

(assert (=> b!5621048 (=> res!2380869 e!3465082)))

(declare-fun b!5621049 () Bool)

(declare-fun res!2380870 () Bool)

(assert (=> b!5621049 (=> res!2380870 e!3465080)))

(assert (=> b!5621049 (= res!2380870 call!423263)))

(assert (=> b!5621049 (= e!3465078 e!3465080)))

(declare-fun b!5621050 () Bool)

(declare-fun c!986465 () Bool)

(assert (=> b!5621050 (= c!986465 ((_ is Union!15605) r!7292))))

(assert (=> b!5621050 (= e!3465083 e!3465079)))

(declare-fun b!5621051 () Bool)

(assert (=> b!5621051 (= e!3465081 call!423263)))

(declare-fun bm!423258 () Bool)

(declare-fun c!986462 () Bool)

(assert (=> bm!423258 (= call!423262 (Exists!2705 (ite c!986462 lambda!301776 lambda!301777)))))

(declare-fun b!5621052 () Bool)

(assert (=> b!5621052 (= e!3465079 e!3465078)))

(assert (=> b!5621052 (= c!986462 ((_ is Star!15605) r!7292))))

(declare-fun b!5621047 () Bool)

(assert (=> b!5621047 (= e!3465082 (matchRSpec!2708 (regTwo!31723 r!7292) s!2326))))

(declare-fun d!1776234 () Bool)

(declare-fun c!986464 () Bool)

(assert (=> d!1776234 (= c!986464 ((_ is EmptyExpr!15605) r!7292))))

(assert (=> d!1776234 (= (matchRSpec!2708 r!7292 s!2326) e!3465081)))

(assert (= (and d!1776234 c!986464) b!5621051))

(assert (= (and d!1776234 (not c!986464)) b!5621042))

(assert (= (and b!5621042 res!2380868) b!5621043))

(assert (= (and b!5621043 c!986463) b!5621044))

(assert (= (and b!5621043 (not c!986463)) b!5621050))

(assert (= (and b!5621050 c!986465) b!5621048))

(assert (= (and b!5621050 (not c!986465)) b!5621052))

(assert (= (and b!5621048 (not res!2380869)) b!5621047))

(assert (= (and b!5621052 c!986462) b!5621049))

(assert (= (and b!5621052 (not c!986462)) b!5621046))

(assert (= (and b!5621049 (not res!2380870)) b!5621045))

(assert (= (or b!5621045 b!5621046) bm!423258))

(assert (= (or b!5621051 b!5621049) bm!423257))

(declare-fun m!6594434 () Bool)

(assert (=> bm!423257 m!6594434))

(declare-fun m!6594436 () Bool)

(assert (=> b!5621048 m!6594436))

(declare-fun m!6594438 () Bool)

(assert (=> bm!423258 m!6594438))

(declare-fun m!6594440 () Bool)

(assert (=> b!5621047 m!6594440))

(assert (=> b!5620390 d!1776234))

(declare-fun b!5621081 () Bool)

(declare-fun e!3465102 () Bool)

(declare-fun lt!2260100 () Bool)

(declare-fun call!423266 () Bool)

(assert (=> b!5621081 (= e!3465102 (= lt!2260100 call!423266))))

(declare-fun b!5621082 () Bool)

(declare-fun e!3465103 () Bool)

(assert (=> b!5621082 (= e!3465103 (not lt!2260100))))

(declare-fun b!5621083 () Bool)

(declare-fun e!3465099 () Bool)

(assert (=> b!5621083 (= e!3465099 (= (head!11963 s!2326) (c!986263 r!7292)))))

(declare-fun b!5621084 () Bool)

(declare-fun res!2380890 () Bool)

(assert (=> b!5621084 (=> (not res!2380890) (not e!3465099))))

(assert (=> b!5621084 (= res!2380890 (isEmpty!34822 (tail!11058 s!2326)))))

(declare-fun b!5621085 () Bool)

(declare-fun res!2380887 () Bool)

(declare-fun e!3465098 () Bool)

(assert (=> b!5621085 (=> res!2380887 e!3465098)))

(assert (=> b!5621085 (= res!2380887 e!3465099)))

(declare-fun res!2380888 () Bool)

(assert (=> b!5621085 (=> (not res!2380888) (not e!3465099))))

(assert (=> b!5621085 (= res!2380888 lt!2260100)))

(declare-fun b!5621086 () Bool)

(assert (=> b!5621086 (= e!3465102 e!3465103)))

(declare-fun c!986473 () Bool)

(assert (=> b!5621086 (= c!986473 ((_ is EmptyLang!15605) r!7292))))

(declare-fun b!5621087 () Bool)

(declare-fun res!2380889 () Bool)

(assert (=> b!5621087 (=> res!2380889 e!3465098)))

(assert (=> b!5621087 (= res!2380889 (not ((_ is ElementMatch!15605) r!7292)))))

(assert (=> b!5621087 (= e!3465103 e!3465098)))

(declare-fun d!1776236 () Bool)

(assert (=> d!1776236 e!3465102))

(declare-fun c!986474 () Bool)

(assert (=> d!1776236 (= c!986474 ((_ is EmptyExpr!15605) r!7292))))

(declare-fun e!3465104 () Bool)

(assert (=> d!1776236 (= lt!2260100 e!3465104)))

(declare-fun c!986472 () Bool)

(assert (=> d!1776236 (= c!986472 (isEmpty!34822 s!2326))))

(assert (=> d!1776236 (validRegex!7341 r!7292)))

(assert (=> d!1776236 (= (matchR!7790 r!7292 s!2326) lt!2260100)))

(declare-fun b!5621088 () Bool)

(declare-fun res!2380891 () Bool)

(declare-fun e!3465100 () Bool)

(assert (=> b!5621088 (=> res!2380891 e!3465100)))

(assert (=> b!5621088 (= res!2380891 (not (isEmpty!34822 (tail!11058 s!2326))))))

(declare-fun bm!423261 () Bool)

(assert (=> bm!423261 (= call!423266 (isEmpty!34822 s!2326))))

(declare-fun b!5621089 () Bool)

(declare-fun e!3465101 () Bool)

(assert (=> b!5621089 (= e!3465101 e!3465100)))

(declare-fun res!2380894 () Bool)

(assert (=> b!5621089 (=> res!2380894 e!3465100)))

(assert (=> b!5621089 (= res!2380894 call!423266)))

(declare-fun b!5621090 () Bool)

(declare-fun derivativeStep!4445 (Regex!15605 C!31480) Regex!15605)

(assert (=> b!5621090 (= e!3465104 (matchR!7790 (derivativeStep!4445 r!7292 (head!11963 s!2326)) (tail!11058 s!2326)))))

(declare-fun b!5621091 () Bool)

(assert (=> b!5621091 (= e!3465104 (nullable!5637 r!7292))))

(declare-fun b!5621092 () Bool)

(declare-fun res!2380892 () Bool)

(assert (=> b!5621092 (=> (not res!2380892) (not e!3465099))))

(assert (=> b!5621092 (= res!2380892 (not call!423266))))

(declare-fun b!5621093 () Bool)

(assert (=> b!5621093 (= e!3465098 e!3465101)))

(declare-fun res!2380893 () Bool)

(assert (=> b!5621093 (=> (not res!2380893) (not e!3465101))))

(assert (=> b!5621093 (= res!2380893 (not lt!2260100))))

(declare-fun b!5621094 () Bool)

(assert (=> b!5621094 (= e!3465100 (not (= (head!11963 s!2326) (c!986263 r!7292))))))

(assert (= (and d!1776236 c!986472) b!5621091))

(assert (= (and d!1776236 (not c!986472)) b!5621090))

(assert (= (and d!1776236 c!986474) b!5621081))

(assert (= (and d!1776236 (not c!986474)) b!5621086))

(assert (= (and b!5621086 c!986473) b!5621082))

(assert (= (and b!5621086 (not c!986473)) b!5621087))

(assert (= (and b!5621087 (not res!2380889)) b!5621085))

(assert (= (and b!5621085 res!2380888) b!5621092))

(assert (= (and b!5621092 res!2380892) b!5621084))

(assert (= (and b!5621084 res!2380890) b!5621083))

(assert (= (and b!5621085 (not res!2380887)) b!5621093))

(assert (= (and b!5621093 res!2380893) b!5621089))

(assert (= (and b!5621089 (not res!2380894)) b!5621088))

(assert (= (and b!5621088 (not res!2380891)) b!5621094))

(assert (= (or b!5621081 b!5621092 b!5621089) bm!423261))

(declare-fun m!6594442 () Bool)

(assert (=> b!5621091 m!6594442))

(declare-fun m!6594444 () Bool)

(assert (=> b!5621083 m!6594444))

(assert (=> d!1776236 m!6594434))

(assert (=> d!1776236 m!6593830))

(declare-fun m!6594446 () Bool)

(assert (=> b!5621088 m!6594446))

(assert (=> b!5621088 m!6594446))

(declare-fun m!6594448 () Bool)

(assert (=> b!5621088 m!6594448))

(assert (=> b!5621090 m!6594444))

(assert (=> b!5621090 m!6594444))

(declare-fun m!6594450 () Bool)

(assert (=> b!5621090 m!6594450))

(assert (=> b!5621090 m!6594446))

(assert (=> b!5621090 m!6594450))

(assert (=> b!5621090 m!6594446))

(declare-fun m!6594452 () Bool)

(assert (=> b!5621090 m!6594452))

(assert (=> b!5621084 m!6594446))

(assert (=> b!5621084 m!6594446))

(assert (=> b!5621084 m!6594448))

(assert (=> b!5621094 m!6594444))

(assert (=> bm!423261 m!6594434))

(assert (=> b!5620390 d!1776236))

(declare-fun d!1776238 () Bool)

(assert (=> d!1776238 (= (matchR!7790 r!7292 s!2326) (matchRSpec!2708 r!7292 s!2326))))

(declare-fun lt!2260103 () Unit!155932)

(declare-fun choose!42567 (Regex!15605 List!63115) Unit!155932)

(assert (=> d!1776238 (= lt!2260103 (choose!42567 r!7292 s!2326))))

(assert (=> d!1776238 (validRegex!7341 r!7292)))

(assert (=> d!1776238 (= (mainMatchTheorem!2708 r!7292 s!2326) lt!2260103)))

(declare-fun bs!1301600 () Bool)

(assert (= bs!1301600 d!1776238))

(assert (=> bs!1301600 m!6593900))

(assert (=> bs!1301600 m!6593898))

(declare-fun m!6594454 () Bool)

(assert (=> bs!1301600 m!6594454))

(assert (=> bs!1301600 m!6593830))

(assert (=> b!5620390 d!1776238))

(declare-fun bs!1301601 () Bool)

(declare-fun d!1776240 () Bool)

(assert (= bs!1301601 (and d!1776240 d!1776164)))

(declare-fun lambda!301778 () Int)

(assert (=> bs!1301601 (= lambda!301778 lambda!301765)))

(declare-fun bs!1301602 () Bool)

(assert (= bs!1301602 (and d!1776240 d!1776188)))

(assert (=> bs!1301602 (= lambda!301778 lambda!301771)))

(declare-fun b!5621095 () Bool)

(declare-fun e!3465110 () Regex!15605)

(assert (=> b!5621095 (= e!3465110 EmptyExpr!15605)))

(declare-fun b!5621096 () Bool)

(declare-fun e!3465109 () Bool)

(declare-fun lt!2260104 () Regex!15605)

(assert (=> b!5621096 (= e!3465109 (isEmptyExpr!1151 lt!2260104))))

(declare-fun b!5621097 () Bool)

(declare-fun e!3465106 () Bool)

(assert (=> b!5621097 (= e!3465106 (= lt!2260104 (head!11964 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5621098 () Bool)

(assert (=> b!5621098 (= e!3465106 (isConcat!674 lt!2260104))))

(declare-fun b!5621099 () Bool)

(declare-fun e!3465105 () Bool)

(assert (=> b!5621099 (= e!3465105 e!3465109)))

(declare-fun c!986478 () Bool)

(assert (=> b!5621099 (= c!986478 (isEmpty!34819 (exprs!5489 (h!69440 zl!343))))))

(declare-fun b!5621100 () Bool)

(assert (=> b!5621100 (= e!3465109 e!3465106)))

(declare-fun c!986476 () Bool)

(assert (=> b!5621100 (= c!986476 (isEmpty!34819 (tail!11059 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5621101 () Bool)

(declare-fun e!3465107 () Regex!15605)

(assert (=> b!5621101 (= e!3465107 (h!69438 (exprs!5489 (h!69440 zl!343))))))

(declare-fun b!5621102 () Bool)

(declare-fun e!3465108 () Bool)

(assert (=> b!5621102 (= e!3465108 (isEmpty!34819 (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun b!5621103 () Bool)

(assert (=> b!5621103 (= e!3465110 (Concat!24450 (h!69438 (exprs!5489 (h!69440 zl!343))) (generalisedConcat!1220 (t!376404 (exprs!5489 (h!69440 zl!343))))))))

(assert (=> d!1776240 e!3465105))

(declare-fun res!2380895 () Bool)

(assert (=> d!1776240 (=> (not res!2380895) (not e!3465105))))

(assert (=> d!1776240 (= res!2380895 (validRegex!7341 lt!2260104))))

(assert (=> d!1776240 (= lt!2260104 e!3465107)))

(declare-fun c!986475 () Bool)

(assert (=> d!1776240 (= c!986475 e!3465108)))

(declare-fun res!2380896 () Bool)

(assert (=> d!1776240 (=> (not res!2380896) (not e!3465108))))

(assert (=> d!1776240 (= res!2380896 ((_ is Cons!62990) (exprs!5489 (h!69440 zl!343))))))

(assert (=> d!1776240 (forall!14764 (exprs!5489 (h!69440 zl!343)) lambda!301778)))

(assert (=> d!1776240 (= (generalisedConcat!1220 (exprs!5489 (h!69440 zl!343))) lt!2260104)))

(declare-fun b!5621104 () Bool)

(assert (=> b!5621104 (= e!3465107 e!3465110)))

(declare-fun c!986477 () Bool)

(assert (=> b!5621104 (= c!986477 ((_ is Cons!62990) (exprs!5489 (h!69440 zl!343))))))

(assert (= (and d!1776240 res!2380896) b!5621102))

(assert (= (and d!1776240 c!986475) b!5621101))

(assert (= (and d!1776240 (not c!986475)) b!5621104))

(assert (= (and b!5621104 c!986477) b!5621103))

(assert (= (and b!5621104 (not c!986477)) b!5621095))

(assert (= (and d!1776240 res!2380895) b!5621099))

(assert (= (and b!5621099 c!986478) b!5621096))

(assert (= (and b!5621099 (not c!986478)) b!5621100))

(assert (= (and b!5621100 c!986476) b!5621097))

(assert (= (and b!5621100 (not c!986476)) b!5621098))

(declare-fun m!6594456 () Bool)

(assert (=> b!5621099 m!6594456))

(declare-fun m!6594458 () Bool)

(assert (=> d!1776240 m!6594458))

(declare-fun m!6594460 () Bool)

(assert (=> d!1776240 m!6594460))

(assert (=> b!5621102 m!6593946))

(declare-fun m!6594462 () Bool)

(assert (=> b!5621100 m!6594462))

(assert (=> b!5621100 m!6594462))

(declare-fun m!6594464 () Bool)

(assert (=> b!5621100 m!6594464))

(assert (=> b!5621103 m!6593952))

(declare-fun m!6594466 () Bool)

(assert (=> b!5621098 m!6594466))

(declare-fun m!6594468 () Bool)

(assert (=> b!5621096 m!6594468))

(declare-fun m!6594470 () Bool)

(assert (=> b!5621097 m!6594470))

(assert (=> b!5620392 d!1776240))

(declare-fun bs!1301603 () Bool)

(declare-fun d!1776242 () Bool)

(assert (= bs!1301603 (and d!1776242 d!1776164)))

(declare-fun lambda!301779 () Int)

(assert (=> bs!1301603 (= lambda!301779 lambda!301765)))

(declare-fun bs!1301604 () Bool)

(assert (= bs!1301604 (and d!1776242 d!1776188)))

(assert (=> bs!1301604 (= lambda!301779 lambda!301771)))

(declare-fun bs!1301605 () Bool)

(assert (= bs!1301605 (and d!1776242 d!1776240)))

(assert (=> bs!1301605 (= lambda!301779 lambda!301778)))

(assert (=> d!1776242 (= (inv!82259 (h!69440 zl!343)) (forall!14764 (exprs!5489 (h!69440 zl!343)) lambda!301779))))

(declare-fun bs!1301606 () Bool)

(assert (= bs!1301606 d!1776242))

(declare-fun m!6594472 () Bool)

(assert (=> bs!1301606 m!6594472))

(assert (=> b!5620370 d!1776242))

(assert (=> b!5620388 d!1776174))

(declare-fun d!1776244 () Bool)

(assert (=> d!1776244 (= (isEmpty!34819 (t!376404 (exprs!5489 (h!69440 zl!343)))) ((_ is Nil!62990) (t!376404 (exprs!5489 (h!69440 zl!343)))))))

(assert (=> b!5620367 d!1776244))

(declare-fun d!1776246 () Bool)

(declare-fun lt!2260105 () Int)

(assert (=> d!1776246 (>= lt!2260105 0)))

(declare-fun e!3465111 () Int)

(assert (=> d!1776246 (= lt!2260105 e!3465111)))

(declare-fun c!986479 () Bool)

(assert (=> d!1776246 (= c!986479 ((_ is Cons!62992) zl!343))))

(assert (=> d!1776246 (= (zipperDepthTotal!230 zl!343) lt!2260105)))

(declare-fun b!5621105 () Bool)

(assert (=> b!5621105 (= e!3465111 (+ (contextDepthTotal!205 (h!69440 zl!343)) (zipperDepthTotal!230 (t!376406 zl!343))))))

(declare-fun b!5621106 () Bool)

(assert (=> b!5621106 (= e!3465111 0)))

(assert (= (and d!1776246 c!986479) b!5621105))

(assert (= (and d!1776246 (not c!986479)) b!5621106))

(declare-fun m!6594474 () Bool)

(assert (=> b!5621105 m!6594474))

(declare-fun m!6594476 () Bool)

(assert (=> b!5621105 m!6594476))

(assert (=> b!5620387 d!1776246))

(declare-fun d!1776248 () Bool)

(declare-fun lt!2260106 () Int)

(assert (=> d!1776248 (>= lt!2260106 0)))

(declare-fun e!3465112 () Int)

(assert (=> d!1776248 (= lt!2260106 e!3465112)))

(declare-fun c!986480 () Bool)

(assert (=> d!1776248 (= c!986480 ((_ is Cons!62992) lt!2260015))))

(assert (=> d!1776248 (= (zipperDepthTotal!230 lt!2260015) lt!2260106)))

(declare-fun b!5621107 () Bool)

(assert (=> b!5621107 (= e!3465112 (+ (contextDepthTotal!205 (h!69440 lt!2260015)) (zipperDepthTotal!230 (t!376406 lt!2260015))))))

(declare-fun b!5621108 () Bool)

(assert (=> b!5621108 (= e!3465112 0)))

(assert (= (and d!1776248 c!986480) b!5621107))

(assert (= (and d!1776248 (not c!986480)) b!5621108))

(declare-fun m!6594478 () Bool)

(assert (=> b!5621107 m!6594478))

(declare-fun m!6594480 () Bool)

(assert (=> b!5621107 m!6594480))

(assert (=> b!5620387 d!1776248))

(declare-fun d!1776250 () Bool)

(declare-fun e!3465113 () Bool)

(assert (=> d!1776250 (= (matchZipper!1743 ((_ map or) lt!2259990 lt!2260012) (t!376405 s!2326)) e!3465113)))

(declare-fun res!2380897 () Bool)

(assert (=> d!1776250 (=> res!2380897 e!3465113)))

(assert (=> d!1776250 (= res!2380897 (matchZipper!1743 lt!2259990 (t!376405 s!2326)))))

(declare-fun lt!2260107 () Unit!155932)

(assert (=> d!1776250 (= lt!2260107 (choose!42565 lt!2259990 lt!2260012 (t!376405 s!2326)))))

(assert (=> d!1776250 (= (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259990 lt!2260012 (t!376405 s!2326)) lt!2260107)))

(declare-fun b!5621109 () Bool)

(assert (=> b!5621109 (= e!3465113 (matchZipper!1743 lt!2260012 (t!376405 s!2326)))))

(assert (= (and d!1776250 (not res!2380897)) b!5621109))

(assert (=> d!1776250 m!6593944))

(assert (=> d!1776250 m!6593924))

(declare-fun m!6594482 () Bool)

(assert (=> d!1776250 m!6594482))

(assert (=> b!5621109 m!6593828))

(assert (=> b!5620355 d!1776250))

(declare-fun d!1776252 () Bool)

(declare-fun c!986481 () Bool)

(assert (=> d!1776252 (= c!986481 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3465114 () Bool)

(assert (=> d!1776252 (= (matchZipper!1743 ((_ map or) lt!2259990 lt!2260012) (t!376405 s!2326)) e!3465114)))

(declare-fun b!5621110 () Bool)

(assert (=> b!5621110 (= e!3465114 (nullableZipper!1592 ((_ map or) lt!2259990 lt!2260012)))))

(declare-fun b!5621111 () Bool)

(assert (=> b!5621111 (= e!3465114 (matchZipper!1743 (derivationStepZipper!1696 ((_ map or) lt!2259990 lt!2260012) (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776252 c!986481) b!5621110))

(assert (= (and d!1776252 (not c!986481)) b!5621111))

(assert (=> d!1776252 m!6594302))

(declare-fun m!6594484 () Bool)

(assert (=> b!5621110 m!6594484))

(assert (=> b!5621111 m!6594306))

(assert (=> b!5621111 m!6594306))

(declare-fun m!6594486 () Bool)

(assert (=> b!5621111 m!6594486))

(assert (=> b!5621111 m!6594310))

(assert (=> b!5621111 m!6594486))

(assert (=> b!5621111 m!6594310))

(declare-fun m!6594488 () Bool)

(assert (=> b!5621111 m!6594488))

(assert (=> b!5620355 d!1776252))

(declare-fun d!1776254 () Bool)

(declare-fun lt!2260110 () Regex!15605)

(assert (=> d!1776254 (validRegex!7341 lt!2260110)))

(assert (=> d!1776254 (= lt!2260110 (generalisedUnion!1468 (unfocusZipperList!1033 zl!343)))))

(assert (=> d!1776254 (= (unfocusZipper!1347 zl!343) lt!2260110)))

(declare-fun bs!1301607 () Bool)

(assert (= bs!1301607 d!1776254))

(declare-fun m!6594490 () Bool)

(assert (=> bs!1301607 m!6594490))

(assert (=> bs!1301607 m!6593862))

(assert (=> bs!1301607 m!6593862))

(assert (=> bs!1301607 m!6593864))

(assert (=> b!5620374 d!1776254))

(declare-fun d!1776256 () Bool)

(assert (=> d!1776256 (= (isEmpty!34818 (t!376406 zl!343)) ((_ is Nil!62992) (t!376406 zl!343)))))

(assert (=> b!5620376 d!1776256))

(declare-fun d!1776258 () Bool)

(declare-fun nullableFct!1738 (Regex!15605) Bool)

(assert (=> d!1776258 (= (nullable!5637 (regTwo!31723 (regOne!31722 r!7292))) (nullableFct!1738 (regTwo!31723 (regOne!31722 r!7292))))))

(declare-fun bs!1301608 () Bool)

(assert (= bs!1301608 d!1776258))

(declare-fun m!6594492 () Bool)

(assert (=> bs!1301608 m!6594492))

(assert (=> b!5620356 d!1776258))

(declare-fun d!1776260 () Bool)

(declare-fun choose!42568 ((InoxSet Context!9978) Int) (InoxSet Context!9978))

(assert (=> d!1776260 (= (flatMap!1218 lt!2259981 lambda!301730) (choose!42568 lt!2259981 lambda!301730))))

(declare-fun bs!1301609 () Bool)

(assert (= bs!1301609 d!1776260))

(declare-fun m!6594494 () Bool)

(assert (=> bs!1301609 m!6594494))

(assert (=> b!5620356 d!1776260))

(declare-fun d!1776262 () Bool)

(declare-fun c!986482 () Bool)

(assert (=> d!1776262 (= c!986482 (isEmpty!34822 s!2326))))

(declare-fun e!3465115 () Bool)

(assert (=> d!1776262 (= (matchZipper!1743 z!1189 s!2326) e!3465115)))

(declare-fun b!5621112 () Bool)

(assert (=> b!5621112 (= e!3465115 (nullableZipper!1592 z!1189))))

(declare-fun b!5621113 () Bool)

(assert (=> b!5621113 (= e!3465115 (matchZipper!1743 (derivationStepZipper!1696 z!1189 (head!11963 s!2326)) (tail!11058 s!2326)))))

(assert (= (and d!1776262 c!986482) b!5621112))

(assert (= (and d!1776262 (not c!986482)) b!5621113))

(assert (=> d!1776262 m!6594434))

(declare-fun m!6594496 () Bool)

(assert (=> b!5621112 m!6594496))

(assert (=> b!5621113 m!6594444))

(assert (=> b!5621113 m!6594444))

(declare-fun m!6594498 () Bool)

(assert (=> b!5621113 m!6594498))

(assert (=> b!5621113 m!6594446))

(assert (=> b!5621113 m!6594498))

(assert (=> b!5621113 m!6594446))

(declare-fun m!6594500 () Bool)

(assert (=> b!5621113 m!6594500))

(assert (=> b!5620356 d!1776262))

(declare-fun d!1776264 () Bool)

(declare-fun dynLambda!24636 (Int Context!9978) (InoxSet Context!9978))

(assert (=> d!1776264 (= (flatMap!1218 lt!2259981 lambda!301730) (dynLambda!24636 lambda!301730 lt!2259992))))

(declare-fun lt!2260113 () Unit!155932)

(declare-fun choose!42569 ((InoxSet Context!9978) Context!9978 Int) Unit!155932)

(assert (=> d!1776264 (= lt!2260113 (choose!42569 lt!2259981 lt!2259992 lambda!301730))))

(assert (=> d!1776264 (= lt!2259981 (store ((as const (Array Context!9978 Bool)) false) lt!2259992 true))))

(assert (=> d!1776264 (= (lemmaFlatMapOnSingletonSet!750 lt!2259981 lt!2259992 lambda!301730) lt!2260113)))

(declare-fun b_lambda!212703 () Bool)

(assert (=> (not b_lambda!212703) (not d!1776264)))

(declare-fun bs!1301610 () Bool)

(assert (= bs!1301610 d!1776264))

(assert (=> bs!1301610 m!6593840))

(declare-fun m!6594502 () Bool)

(assert (=> bs!1301610 m!6594502))

(declare-fun m!6594504 () Bool)

(assert (=> bs!1301610 m!6594504))

(assert (=> bs!1301610 m!6593852))

(assert (=> b!5620356 d!1776264))

(declare-fun d!1776266 () Bool)

(assert (=> d!1776266 (= (flatMap!1218 lt!2259995 lambda!301730) (dynLambda!24636 lambda!301730 lt!2259993))))

(declare-fun lt!2260114 () Unit!155932)

(assert (=> d!1776266 (= lt!2260114 (choose!42569 lt!2259995 lt!2259993 lambda!301730))))

(assert (=> d!1776266 (= lt!2259995 (store ((as const (Array Context!9978 Bool)) false) lt!2259993 true))))

(assert (=> d!1776266 (= (lemmaFlatMapOnSingletonSet!750 lt!2259995 lt!2259993 lambda!301730) lt!2260114)))

(declare-fun b_lambda!212705 () Bool)

(assert (=> (not b_lambda!212705) (not d!1776266)))

(declare-fun bs!1301611 () Bool)

(assert (= bs!1301611 d!1776266))

(assert (=> bs!1301611 m!6593842))

(declare-fun m!6594506 () Bool)

(assert (=> bs!1301611 m!6594506))

(declare-fun m!6594508 () Bool)

(assert (=> bs!1301611 m!6594508))

(assert (=> bs!1301611 m!6593836))

(assert (=> b!5620356 d!1776266))

(declare-fun b!5621124 () Bool)

(declare-fun e!3465124 () (InoxSet Context!9978))

(assert (=> b!5621124 (= e!3465124 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5621125 () Bool)

(declare-fun e!3465123 () Bool)

(assert (=> b!5621125 (= e!3465123 (nullable!5637 (h!69438 (exprs!5489 lt!2259993))))))

(declare-fun bm!423264 () Bool)

(declare-fun call!423269 () (InoxSet Context!9978))

(assert (=> bm!423264 (= call!423269 (derivationStepZipperDown!947 (h!69438 (exprs!5489 lt!2259993)) (Context!9979 (t!376404 (exprs!5489 lt!2259993))) (h!69439 s!2326)))))

(declare-fun b!5621126 () Bool)

(assert (=> b!5621126 (= e!3465124 call!423269)))

(declare-fun e!3465122 () (InoxSet Context!9978))

(declare-fun b!5621127 () Bool)

(assert (=> b!5621127 (= e!3465122 ((_ map or) call!423269 (derivationStepZipperUp!873 (Context!9979 (t!376404 (exprs!5489 lt!2259993))) (h!69439 s!2326))))))

(declare-fun d!1776268 () Bool)

(declare-fun c!986488 () Bool)

(assert (=> d!1776268 (= c!986488 e!3465123)))

(declare-fun res!2380900 () Bool)

(assert (=> d!1776268 (=> (not res!2380900) (not e!3465123))))

(assert (=> d!1776268 (= res!2380900 ((_ is Cons!62990) (exprs!5489 lt!2259993)))))

(assert (=> d!1776268 (= (derivationStepZipperUp!873 lt!2259993 (h!69439 s!2326)) e!3465122)))

(declare-fun b!5621128 () Bool)

(assert (=> b!5621128 (= e!3465122 e!3465124)))

(declare-fun c!986487 () Bool)

(assert (=> b!5621128 (= c!986487 ((_ is Cons!62990) (exprs!5489 lt!2259993)))))

(assert (= (and d!1776268 res!2380900) b!5621125))

(assert (= (and d!1776268 c!986488) b!5621127))

(assert (= (and d!1776268 (not c!986488)) b!5621128))

(assert (= (and b!5621128 c!986487) b!5621126))

(assert (= (and b!5621128 (not c!986487)) b!5621124))

(assert (= (or b!5621127 b!5621126) bm!423264))

(declare-fun m!6594510 () Bool)

(assert (=> b!5621125 m!6594510))

(declare-fun m!6594512 () Bool)

(assert (=> bm!423264 m!6594512))

(declare-fun m!6594514 () Bool)

(assert (=> b!5621127 m!6594514))

(assert (=> b!5620356 d!1776268))

(declare-fun d!1776270 () Bool)

(assert (=> d!1776270 (= (flatMap!1218 lt!2259995 lambda!301730) (choose!42568 lt!2259995 lambda!301730))))

(declare-fun bs!1301612 () Bool)

(assert (= bs!1301612 d!1776270))

(declare-fun m!6594516 () Bool)

(assert (=> bs!1301612 m!6594516))

(assert (=> b!5620356 d!1776270))

(declare-fun d!1776272 () Bool)

(declare-fun c!986489 () Bool)

(assert (=> d!1776272 (= c!986489 (isEmpty!34822 s!2326))))

(declare-fun e!3465125 () Bool)

(assert (=> d!1776272 (= (matchZipper!1743 lt!2259981 s!2326) e!3465125)))

(declare-fun b!5621129 () Bool)

(assert (=> b!5621129 (= e!3465125 (nullableZipper!1592 lt!2259981))))

(declare-fun b!5621130 () Bool)

(assert (=> b!5621130 (= e!3465125 (matchZipper!1743 (derivationStepZipper!1696 lt!2259981 (head!11963 s!2326)) (tail!11058 s!2326)))))

(assert (= (and d!1776272 c!986489) b!5621129))

(assert (= (and d!1776272 (not c!986489)) b!5621130))

(assert (=> d!1776272 m!6594434))

(declare-fun m!6594518 () Bool)

(assert (=> b!5621129 m!6594518))

(assert (=> b!5621130 m!6594444))

(assert (=> b!5621130 m!6594444))

(declare-fun m!6594520 () Bool)

(assert (=> b!5621130 m!6594520))

(assert (=> b!5621130 m!6594446))

(assert (=> b!5621130 m!6594520))

(assert (=> b!5621130 m!6594446))

(declare-fun m!6594522 () Bool)

(assert (=> b!5621130 m!6594522))

(assert (=> b!5620356 d!1776272))

(declare-fun b!5621131 () Bool)

(declare-fun e!3465128 () (InoxSet Context!9978))

(assert (=> b!5621131 (= e!3465128 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5621132 () Bool)

(declare-fun e!3465127 () Bool)

(assert (=> b!5621132 (= e!3465127 (nullable!5637 (h!69438 (exprs!5489 lt!2259992))))))

(declare-fun bm!423265 () Bool)

(declare-fun call!423270 () (InoxSet Context!9978))

(assert (=> bm!423265 (= call!423270 (derivationStepZipperDown!947 (h!69438 (exprs!5489 lt!2259992)) (Context!9979 (t!376404 (exprs!5489 lt!2259992))) (h!69439 s!2326)))))

(declare-fun b!5621133 () Bool)

(assert (=> b!5621133 (= e!3465128 call!423270)))

(declare-fun b!5621134 () Bool)

(declare-fun e!3465126 () (InoxSet Context!9978))

(assert (=> b!5621134 (= e!3465126 ((_ map or) call!423270 (derivationStepZipperUp!873 (Context!9979 (t!376404 (exprs!5489 lt!2259992))) (h!69439 s!2326))))))

(declare-fun d!1776274 () Bool)

(declare-fun c!986491 () Bool)

(assert (=> d!1776274 (= c!986491 e!3465127)))

(declare-fun res!2380901 () Bool)

(assert (=> d!1776274 (=> (not res!2380901) (not e!3465127))))

(assert (=> d!1776274 (= res!2380901 ((_ is Cons!62990) (exprs!5489 lt!2259992)))))

(assert (=> d!1776274 (= (derivationStepZipperUp!873 lt!2259992 (h!69439 s!2326)) e!3465126)))

(declare-fun b!5621135 () Bool)

(assert (=> b!5621135 (= e!3465126 e!3465128)))

(declare-fun c!986490 () Bool)

(assert (=> b!5621135 (= c!986490 ((_ is Cons!62990) (exprs!5489 lt!2259992)))))

(assert (= (and d!1776274 res!2380901) b!5621132))

(assert (= (and d!1776274 c!986491) b!5621134))

(assert (= (and d!1776274 (not c!986491)) b!5621135))

(assert (= (and b!5621135 c!986490) b!5621133))

(assert (= (and b!5621135 (not c!986490)) b!5621131))

(assert (= (or b!5621134 b!5621133) bm!423265))

(declare-fun m!6594524 () Bool)

(assert (=> b!5621132 m!6594524))

(declare-fun m!6594526 () Bool)

(assert (=> bm!423265 m!6594526))

(declare-fun m!6594528 () Bool)

(assert (=> b!5621134 m!6594528))

(assert (=> b!5620356 d!1776274))

(declare-fun d!1776276 () Bool)

(assert (=> d!1776276 (= (nullable!5637 (regOne!31723 (regOne!31722 r!7292))) (nullableFct!1738 (regOne!31723 (regOne!31722 r!7292))))))

(declare-fun bs!1301613 () Bool)

(assert (= bs!1301613 d!1776276))

(declare-fun m!6594530 () Bool)

(assert (=> bs!1301613 m!6594530))

(assert (=> b!5620356 d!1776276))

(declare-fun b!5621136 () Bool)

(declare-fun e!3465131 () (InoxSet Context!9978))

(assert (=> b!5621136 (= e!3465131 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5621137 () Bool)

(declare-fun e!3465130 () Bool)

(assert (=> b!5621137 (= e!3465130 (nullable!5637 (h!69438 (exprs!5489 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343)))))))))))

(declare-fun bm!423266 () Bool)

(declare-fun call!423271 () (InoxSet Context!9978))

(assert (=> bm!423266 (= call!423271 (derivationStepZipperDown!947 (h!69438 (exprs!5489 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343))))))) (Context!9979 (t!376404 (exprs!5489 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343)))))))) (h!69439 s!2326)))))

(declare-fun b!5621138 () Bool)

(assert (=> b!5621138 (= e!3465131 call!423271)))

(declare-fun e!3465129 () (InoxSet Context!9978))

(declare-fun b!5621139 () Bool)

(assert (=> b!5621139 (= e!3465129 ((_ map or) call!423271 (derivationStepZipperUp!873 (Context!9979 (t!376404 (exprs!5489 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343)))))))) (h!69439 s!2326))))))

(declare-fun d!1776278 () Bool)

(declare-fun c!986493 () Bool)

(assert (=> d!1776278 (= c!986493 e!3465130)))

(declare-fun res!2380902 () Bool)

(assert (=> d!1776278 (=> (not res!2380902) (not e!3465130))))

(assert (=> d!1776278 (= res!2380902 ((_ is Cons!62990) (exprs!5489 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343))))))))))

(assert (=> d!1776278 (= (derivationStepZipperUp!873 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343))))) (h!69439 s!2326)) e!3465129)))

(declare-fun b!5621140 () Bool)

(assert (=> b!5621140 (= e!3465129 e!3465131)))

(declare-fun c!986492 () Bool)

(assert (=> b!5621140 (= c!986492 ((_ is Cons!62990) (exprs!5489 (Context!9979 (Cons!62990 (h!69438 (exprs!5489 (h!69440 zl!343))) (t!376404 (exprs!5489 (h!69440 zl!343))))))))))

(assert (= (and d!1776278 res!2380902) b!5621137))

(assert (= (and d!1776278 c!986493) b!5621139))

(assert (= (and d!1776278 (not c!986493)) b!5621140))

(assert (= (and b!5621140 c!986492) b!5621138))

(assert (= (and b!5621140 (not c!986492)) b!5621136))

(assert (= (or b!5621139 b!5621138) bm!423266))

(declare-fun m!6594532 () Bool)

(assert (=> b!5621137 m!6594532))

(declare-fun m!6594534 () Bool)

(assert (=> bm!423266 m!6594534))

(declare-fun m!6594536 () Bool)

(assert (=> b!5621139 m!6594536))

(assert (=> b!5620372 d!1776278))

(declare-fun d!1776280 () Bool)

(assert (=> d!1776280 (= (flatMap!1218 z!1189 lambda!301730) (choose!42568 z!1189 lambda!301730))))

(declare-fun bs!1301614 () Bool)

(assert (= bs!1301614 d!1776280))

(declare-fun m!6594538 () Bool)

(assert (=> bs!1301614 m!6594538))

(assert (=> b!5620372 d!1776280))

(declare-fun b!5621141 () Bool)

(declare-fun e!3465134 () (InoxSet Context!9978))

(assert (=> b!5621141 (= e!3465134 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5621142 () Bool)

(declare-fun e!3465133 () Bool)

(assert (=> b!5621142 (= e!3465133 (nullable!5637 (h!69438 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun bm!423267 () Bool)

(declare-fun call!423272 () (InoxSet Context!9978))

(assert (=> bm!423267 (= call!423272 (derivationStepZipperDown!947 (h!69438 (exprs!5489 (h!69440 zl!343))) (Context!9979 (t!376404 (exprs!5489 (h!69440 zl!343)))) (h!69439 s!2326)))))

(declare-fun b!5621143 () Bool)

(assert (=> b!5621143 (= e!3465134 call!423272)))

(declare-fun b!5621144 () Bool)

(declare-fun e!3465132 () (InoxSet Context!9978))

(assert (=> b!5621144 (= e!3465132 ((_ map or) call!423272 (derivationStepZipperUp!873 (Context!9979 (t!376404 (exprs!5489 (h!69440 zl!343)))) (h!69439 s!2326))))))

(declare-fun d!1776282 () Bool)

(declare-fun c!986495 () Bool)

(assert (=> d!1776282 (= c!986495 e!3465133)))

(declare-fun res!2380903 () Bool)

(assert (=> d!1776282 (=> (not res!2380903) (not e!3465133))))

(assert (=> d!1776282 (= res!2380903 ((_ is Cons!62990) (exprs!5489 (h!69440 zl!343))))))

(assert (=> d!1776282 (= (derivationStepZipperUp!873 (h!69440 zl!343) (h!69439 s!2326)) e!3465132)))

(declare-fun b!5621145 () Bool)

(assert (=> b!5621145 (= e!3465132 e!3465134)))

(declare-fun c!986494 () Bool)

(assert (=> b!5621145 (= c!986494 ((_ is Cons!62990) (exprs!5489 (h!69440 zl!343))))))

(assert (= (and d!1776282 res!2380903) b!5621142))

(assert (= (and d!1776282 c!986495) b!5621144))

(assert (= (and d!1776282 (not c!986495)) b!5621145))

(assert (= (and b!5621145 c!986494) b!5621143))

(assert (= (and b!5621145 (not c!986494)) b!5621141))

(assert (= (or b!5621144 b!5621143) bm!423267))

(assert (=> b!5621142 m!6593938))

(declare-fun m!6594540 () Bool)

(assert (=> bm!423267 m!6594540))

(declare-fun m!6594542 () Bool)

(assert (=> b!5621144 m!6594542))

(assert (=> b!5620372 d!1776282))

(declare-fun b!5621146 () Bool)

(declare-fun e!3465140 () (InoxSet Context!9978))

(declare-fun e!3465138 () (InoxSet Context!9978))

(assert (=> b!5621146 (= e!3465140 e!3465138)))

(declare-fun c!986497 () Bool)

(assert (=> b!5621146 (= c!986497 ((_ is Union!15605) (h!69438 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun c!986500 () Bool)

(declare-fun bm!423268 () Bool)

(declare-fun call!423278 () List!63114)

(declare-fun c!986499 () Bool)

(assert (=> bm!423268 (= call!423278 ($colon$colon!1660 (exprs!5489 lt!2260005) (ite (or c!986500 c!986499) (regTwo!31722 (h!69438 (exprs!5489 (h!69440 zl!343)))) (h!69438 (exprs!5489 (h!69440 zl!343))))))))

(declare-fun bm!423269 () Bool)

(declare-fun call!423275 () (InoxSet Context!9978))

(declare-fun call!423276 () (InoxSet Context!9978))

(assert (=> bm!423269 (= call!423275 call!423276)))

(declare-fun b!5621147 () Bool)

(declare-fun e!3465136 () (InoxSet Context!9978))

(assert (=> b!5621147 (= e!3465136 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5621148 () Bool)

(declare-fun e!3465139 () (InoxSet Context!9978))

(declare-fun e!3465137 () (InoxSet Context!9978))

(assert (=> b!5621148 (= e!3465139 e!3465137)))

(assert (=> b!5621148 (= c!986499 ((_ is Concat!24450) (h!69438 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun bm!423270 () Bool)

(declare-fun call!423274 () (InoxSet Context!9978))

(assert (=> bm!423270 (= call!423274 call!423275)))

(declare-fun b!5621149 () Bool)

(declare-fun e!3465135 () Bool)

(assert (=> b!5621149 (= c!986500 e!3465135)))

(declare-fun res!2380904 () Bool)

(assert (=> b!5621149 (=> (not res!2380904) (not e!3465135))))

(assert (=> b!5621149 (= res!2380904 ((_ is Concat!24450) (h!69438 (exprs!5489 (h!69440 zl!343)))))))

(assert (=> b!5621149 (= e!3465138 e!3465139)))

(declare-fun b!5621150 () Bool)

(assert (=> b!5621150 (= e!3465137 call!423274)))

(declare-fun bm!423271 () Bool)

(declare-fun call!423277 () List!63114)

(assert (=> bm!423271 (= call!423276 (derivationStepZipperDown!947 (ite c!986497 (regTwo!31723 (h!69438 (exprs!5489 (h!69440 zl!343)))) (ite c!986500 (regTwo!31722 (h!69438 (exprs!5489 (h!69440 zl!343)))) (ite c!986499 (regOne!31722 (h!69438 (exprs!5489 (h!69440 zl!343)))) (reg!15934 (h!69438 (exprs!5489 (h!69440 zl!343))))))) (ite (or c!986497 c!986500) lt!2260005 (Context!9979 call!423277)) (h!69439 s!2326)))))

(declare-fun b!5621151 () Bool)

(declare-fun call!423273 () (InoxSet Context!9978))

(assert (=> b!5621151 (= e!3465138 ((_ map or) call!423273 call!423276))))

(declare-fun d!1776284 () Bool)

(declare-fun c!986496 () Bool)

(assert (=> d!1776284 (= c!986496 (and ((_ is ElementMatch!15605) (h!69438 (exprs!5489 (h!69440 zl!343)))) (= (c!986263 (h!69438 (exprs!5489 (h!69440 zl!343)))) (h!69439 s!2326))))))

(assert (=> d!1776284 (= (derivationStepZipperDown!947 (h!69438 (exprs!5489 (h!69440 zl!343))) lt!2260005 (h!69439 s!2326)) e!3465140)))

(declare-fun b!5621152 () Bool)

(assert (=> b!5621152 (= e!3465140 (store ((as const (Array Context!9978 Bool)) false) lt!2260005 true))))

(declare-fun b!5621153 () Bool)

(assert (=> b!5621153 (= e!3465136 call!423274)))

(declare-fun bm!423272 () Bool)

(assert (=> bm!423272 (= call!423273 (derivationStepZipperDown!947 (ite c!986497 (regOne!31723 (h!69438 (exprs!5489 (h!69440 zl!343)))) (regOne!31722 (h!69438 (exprs!5489 (h!69440 zl!343))))) (ite c!986497 lt!2260005 (Context!9979 call!423278)) (h!69439 s!2326)))))

(declare-fun bm!423273 () Bool)

(assert (=> bm!423273 (= call!423277 call!423278)))

(declare-fun b!5621154 () Bool)

(declare-fun c!986498 () Bool)

(assert (=> b!5621154 (= c!986498 ((_ is Star!15605) (h!69438 (exprs!5489 (h!69440 zl!343)))))))

(assert (=> b!5621154 (= e!3465137 e!3465136)))

(declare-fun b!5621155 () Bool)

(assert (=> b!5621155 (= e!3465139 ((_ map or) call!423273 call!423275))))

(declare-fun b!5621156 () Bool)

(assert (=> b!5621156 (= e!3465135 (nullable!5637 (regOne!31722 (h!69438 (exprs!5489 (h!69440 zl!343))))))))

(assert (= (and d!1776284 c!986496) b!5621152))

(assert (= (and d!1776284 (not c!986496)) b!5621146))

(assert (= (and b!5621146 c!986497) b!5621151))

(assert (= (and b!5621146 (not c!986497)) b!5621149))

(assert (= (and b!5621149 res!2380904) b!5621156))

(assert (= (and b!5621149 c!986500) b!5621155))

(assert (= (and b!5621149 (not c!986500)) b!5621148))

(assert (= (and b!5621148 c!986499) b!5621150))

(assert (= (and b!5621148 (not c!986499)) b!5621154))

(assert (= (and b!5621154 c!986498) b!5621153))

(assert (= (and b!5621154 (not c!986498)) b!5621147))

(assert (= (or b!5621150 b!5621153) bm!423273))

(assert (= (or b!5621150 b!5621153) bm!423270))

(assert (= (or b!5621155 bm!423273) bm!423268))

(assert (= (or b!5621155 bm!423270) bm!423269))

(assert (= (or b!5621151 bm!423269) bm!423271))

(assert (= (or b!5621151 b!5621155) bm!423272))

(declare-fun m!6594544 () Bool)

(assert (=> bm!423271 m!6594544))

(assert (=> b!5621152 m!6594402))

(declare-fun m!6594546 () Bool)

(assert (=> b!5621156 m!6594546))

(declare-fun m!6594548 () Bool)

(assert (=> bm!423268 m!6594548))

(declare-fun m!6594550 () Bool)

(assert (=> bm!423272 m!6594550))

(assert (=> b!5620372 d!1776284))

(declare-fun d!1776286 () Bool)

(assert (=> d!1776286 (= (flatMap!1218 z!1189 lambda!301730) (dynLambda!24636 lambda!301730 (h!69440 zl!343)))))

(declare-fun lt!2260115 () Unit!155932)

(assert (=> d!1776286 (= lt!2260115 (choose!42569 z!1189 (h!69440 zl!343) lambda!301730))))

(assert (=> d!1776286 (= z!1189 (store ((as const (Array Context!9978 Bool)) false) (h!69440 zl!343) true))))

(assert (=> d!1776286 (= (lemmaFlatMapOnSingletonSet!750 z!1189 (h!69440 zl!343) lambda!301730) lt!2260115)))

(declare-fun b_lambda!212707 () Bool)

(assert (=> (not b_lambda!212707) (not d!1776286)))

(declare-fun bs!1301615 () Bool)

(assert (= bs!1301615 d!1776286))

(assert (=> bs!1301615 m!6593936))

(declare-fun m!6594552 () Bool)

(assert (=> bs!1301615 m!6594552))

(declare-fun m!6594554 () Bool)

(assert (=> bs!1301615 m!6594554))

(declare-fun m!6594556 () Bool)

(assert (=> bs!1301615 m!6594556))

(assert (=> b!5620372 d!1776286))

(declare-fun b!5621157 () Bool)

(declare-fun e!3465143 () (InoxSet Context!9978))

(assert (=> b!5621157 (= e!3465143 ((as const (Array Context!9978 Bool)) false))))

(declare-fun b!5621158 () Bool)

(declare-fun e!3465142 () Bool)

(assert (=> b!5621158 (= e!3465142 (nullable!5637 (h!69438 (exprs!5489 lt!2260005))))))

(declare-fun bm!423274 () Bool)

(declare-fun call!423279 () (InoxSet Context!9978))

(assert (=> bm!423274 (= call!423279 (derivationStepZipperDown!947 (h!69438 (exprs!5489 lt!2260005)) (Context!9979 (t!376404 (exprs!5489 lt!2260005))) (h!69439 s!2326)))))

(declare-fun b!5621159 () Bool)

(assert (=> b!5621159 (= e!3465143 call!423279)))

(declare-fun b!5621160 () Bool)

(declare-fun e!3465141 () (InoxSet Context!9978))

(assert (=> b!5621160 (= e!3465141 ((_ map or) call!423279 (derivationStepZipperUp!873 (Context!9979 (t!376404 (exprs!5489 lt!2260005))) (h!69439 s!2326))))))

(declare-fun d!1776288 () Bool)

(declare-fun c!986502 () Bool)

(assert (=> d!1776288 (= c!986502 e!3465142)))

(declare-fun res!2380905 () Bool)

(assert (=> d!1776288 (=> (not res!2380905) (not e!3465142))))

(assert (=> d!1776288 (= res!2380905 ((_ is Cons!62990) (exprs!5489 lt!2260005)))))

(assert (=> d!1776288 (= (derivationStepZipperUp!873 lt!2260005 (h!69439 s!2326)) e!3465141)))

(declare-fun b!5621161 () Bool)

(assert (=> b!5621161 (= e!3465141 e!3465143)))

(declare-fun c!986501 () Bool)

(assert (=> b!5621161 (= c!986501 ((_ is Cons!62990) (exprs!5489 lt!2260005)))))

(assert (= (and d!1776288 res!2380905) b!5621158))

(assert (= (and d!1776288 c!986502) b!5621160))

(assert (= (and d!1776288 (not c!986502)) b!5621161))

(assert (= (and b!5621161 c!986501) b!5621159))

(assert (= (and b!5621161 (not c!986501)) b!5621157))

(assert (= (or b!5621160 b!5621159) bm!423274))

(declare-fun m!6594558 () Bool)

(assert (=> b!5621158 m!6594558))

(declare-fun m!6594560 () Bool)

(assert (=> bm!423274 m!6594560))

(declare-fun m!6594562 () Bool)

(assert (=> b!5621160 m!6594562))

(assert (=> b!5620372 d!1776288))

(declare-fun d!1776290 () Bool)

(assert (=> d!1776290 (= (nullable!5637 (h!69438 (exprs!5489 (h!69440 zl!343)))) (nullableFct!1738 (h!69438 (exprs!5489 (h!69440 zl!343)))))))

(declare-fun bs!1301616 () Bool)

(assert (= bs!1301616 d!1776290))

(declare-fun m!6594564 () Bool)

(assert (=> bs!1301616 m!6594564))

(assert (=> b!5620372 d!1776290))

(assert (=> b!5620373 d!1776228))

(declare-fun d!1776292 () Bool)

(declare-fun e!3465144 () Bool)

(assert (=> d!1776292 (= (matchZipper!1743 ((_ map or) lt!2259987 lt!2260012) (t!376405 s!2326)) e!3465144)))

(declare-fun res!2380906 () Bool)

(assert (=> d!1776292 (=> res!2380906 e!3465144)))

(assert (=> d!1776292 (= res!2380906 (matchZipper!1743 lt!2259987 (t!376405 s!2326)))))

(declare-fun lt!2260116 () Unit!155932)

(assert (=> d!1776292 (= lt!2260116 (choose!42565 lt!2259987 lt!2260012 (t!376405 s!2326)))))

(assert (=> d!1776292 (= (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259987 lt!2260012 (t!376405 s!2326)) lt!2260116)))

(declare-fun b!5621162 () Bool)

(assert (=> b!5621162 (= e!3465144 (matchZipper!1743 lt!2260012 (t!376405 s!2326)))))

(assert (= (and d!1776292 (not res!2380906)) b!5621162))

(assert (=> d!1776292 m!6593950))

(assert (=> d!1776292 m!6593826))

(declare-fun m!6594566 () Bool)

(assert (=> d!1776292 m!6594566))

(assert (=> b!5621162 m!6593828))

(assert (=> b!5620360 d!1776292))

(assert (=> b!5620360 d!1776174))

(declare-fun d!1776294 () Bool)

(declare-fun c!986503 () Bool)

(assert (=> d!1776294 (= c!986503 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3465145 () Bool)

(assert (=> d!1776294 (= (matchZipper!1743 ((_ map or) lt!2259987 lt!2260012) (t!376405 s!2326)) e!3465145)))

(declare-fun b!5621163 () Bool)

(assert (=> b!5621163 (= e!3465145 (nullableZipper!1592 ((_ map or) lt!2259987 lt!2260012)))))

(declare-fun b!5621164 () Bool)

(assert (=> b!5621164 (= e!3465145 (matchZipper!1743 (derivationStepZipper!1696 ((_ map or) lt!2259987 lt!2260012) (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776294 c!986503) b!5621163))

(assert (= (and d!1776294 (not c!986503)) b!5621164))

(assert (=> d!1776294 m!6594302))

(declare-fun m!6594568 () Bool)

(assert (=> b!5621163 m!6594568))

(assert (=> b!5621164 m!6594306))

(assert (=> b!5621164 m!6594306))

(declare-fun m!6594570 () Bool)

(assert (=> b!5621164 m!6594570))

(assert (=> b!5621164 m!6594310))

(assert (=> b!5621164 m!6594570))

(assert (=> b!5621164 m!6594310))

(declare-fun m!6594572 () Bool)

(assert (=> b!5621164 m!6594572))

(assert (=> b!5620360 d!1776294))

(declare-fun bs!1301617 () Bool)

(declare-fun d!1776296 () Bool)

(assert (= bs!1301617 (and d!1776296 d!1776164)))

(declare-fun lambda!301782 () Int)

(assert (=> bs!1301617 (= lambda!301782 lambda!301765)))

(declare-fun bs!1301618 () Bool)

(assert (= bs!1301618 (and d!1776296 d!1776188)))

(assert (=> bs!1301618 (= lambda!301782 lambda!301771)))

(declare-fun bs!1301619 () Bool)

(assert (= bs!1301619 (and d!1776296 d!1776240)))

(assert (=> bs!1301619 (= lambda!301782 lambda!301778)))

(declare-fun bs!1301620 () Bool)

(assert (= bs!1301620 (and d!1776296 d!1776242)))

(assert (=> bs!1301620 (= lambda!301782 lambda!301779)))

(declare-fun b!5621185 () Bool)

(declare-fun e!3465159 () Regex!15605)

(assert (=> b!5621185 (= e!3465159 (Union!15605 (h!69438 (unfocusZipperList!1033 zl!343)) (generalisedUnion!1468 (t!376404 (unfocusZipperList!1033 zl!343)))))))

(declare-fun b!5621186 () Bool)

(declare-fun e!3465163 () Bool)

(declare-fun e!3465161 () Bool)

(assert (=> b!5621186 (= e!3465163 e!3465161)))

(declare-fun c!986512 () Bool)

(assert (=> b!5621186 (= c!986512 (isEmpty!34819 (unfocusZipperList!1033 zl!343)))))

(assert (=> d!1776296 e!3465163))

(declare-fun res!2380911 () Bool)

(assert (=> d!1776296 (=> (not res!2380911) (not e!3465163))))

(declare-fun lt!2260119 () Regex!15605)

(assert (=> d!1776296 (= res!2380911 (validRegex!7341 lt!2260119))))

(declare-fun e!3465158 () Regex!15605)

(assert (=> d!1776296 (= lt!2260119 e!3465158)))

(declare-fun c!986513 () Bool)

(declare-fun e!3465162 () Bool)

(assert (=> d!1776296 (= c!986513 e!3465162)))

(declare-fun res!2380912 () Bool)

(assert (=> d!1776296 (=> (not res!2380912) (not e!3465162))))

(assert (=> d!1776296 (= res!2380912 ((_ is Cons!62990) (unfocusZipperList!1033 zl!343)))))

(assert (=> d!1776296 (forall!14764 (unfocusZipperList!1033 zl!343) lambda!301782)))

(assert (=> d!1776296 (= (generalisedUnion!1468 (unfocusZipperList!1033 zl!343)) lt!2260119)))

(declare-fun b!5621187 () Bool)

(assert (=> b!5621187 (= e!3465159 EmptyLang!15605)))

(declare-fun b!5621188 () Bool)

(declare-fun e!3465160 () Bool)

(declare-fun isUnion!591 (Regex!15605) Bool)

(assert (=> b!5621188 (= e!3465160 (isUnion!591 lt!2260119))))

(declare-fun b!5621189 () Bool)

(assert (=> b!5621189 (= e!3465160 (= lt!2260119 (head!11964 (unfocusZipperList!1033 zl!343))))))

(declare-fun b!5621190 () Bool)

(declare-fun isEmptyLang!1161 (Regex!15605) Bool)

(assert (=> b!5621190 (= e!3465161 (isEmptyLang!1161 lt!2260119))))

(declare-fun b!5621191 () Bool)

(assert (=> b!5621191 (= e!3465158 (h!69438 (unfocusZipperList!1033 zl!343)))))

(declare-fun b!5621192 () Bool)

(assert (=> b!5621192 (= e!3465161 e!3465160)))

(declare-fun c!986515 () Bool)

(assert (=> b!5621192 (= c!986515 (isEmpty!34819 (tail!11059 (unfocusZipperList!1033 zl!343))))))

(declare-fun b!5621193 () Bool)

(assert (=> b!5621193 (= e!3465162 (isEmpty!34819 (t!376404 (unfocusZipperList!1033 zl!343))))))

(declare-fun b!5621194 () Bool)

(assert (=> b!5621194 (= e!3465158 e!3465159)))

(declare-fun c!986514 () Bool)

(assert (=> b!5621194 (= c!986514 ((_ is Cons!62990) (unfocusZipperList!1033 zl!343)))))

(assert (= (and d!1776296 res!2380912) b!5621193))

(assert (= (and d!1776296 c!986513) b!5621191))

(assert (= (and d!1776296 (not c!986513)) b!5621194))

(assert (= (and b!5621194 c!986514) b!5621185))

(assert (= (and b!5621194 (not c!986514)) b!5621187))

(assert (= (and d!1776296 res!2380911) b!5621186))

(assert (= (and b!5621186 c!986512) b!5621190))

(assert (= (and b!5621186 (not c!986512)) b!5621192))

(assert (= (and b!5621192 c!986515) b!5621189))

(assert (= (and b!5621192 (not c!986515)) b!5621188))

(assert (=> b!5621189 m!6593862))

(declare-fun m!6594574 () Bool)

(assert (=> b!5621189 m!6594574))

(assert (=> b!5621192 m!6593862))

(declare-fun m!6594576 () Bool)

(assert (=> b!5621192 m!6594576))

(assert (=> b!5621192 m!6594576))

(declare-fun m!6594578 () Bool)

(assert (=> b!5621192 m!6594578))

(declare-fun m!6594580 () Bool)

(assert (=> b!5621193 m!6594580))

(declare-fun m!6594582 () Bool)

(assert (=> b!5621190 m!6594582))

(declare-fun m!6594584 () Bool)

(assert (=> d!1776296 m!6594584))

(assert (=> d!1776296 m!6593862))

(declare-fun m!6594586 () Bool)

(assert (=> d!1776296 m!6594586))

(declare-fun m!6594588 () Bool)

(assert (=> b!5621188 m!6594588))

(assert (=> b!5621186 m!6593862))

(declare-fun m!6594590 () Bool)

(assert (=> b!5621186 m!6594590))

(declare-fun m!6594592 () Bool)

(assert (=> b!5621185 m!6594592))

(assert (=> b!5620379 d!1776296))

(declare-fun bs!1301621 () Bool)

(declare-fun d!1776298 () Bool)

(assert (= bs!1301621 (and d!1776298 d!1776296)))

(declare-fun lambda!301785 () Int)

(assert (=> bs!1301621 (= lambda!301785 lambda!301782)))

(declare-fun bs!1301622 () Bool)

(assert (= bs!1301622 (and d!1776298 d!1776188)))

(assert (=> bs!1301622 (= lambda!301785 lambda!301771)))

(declare-fun bs!1301623 () Bool)

(assert (= bs!1301623 (and d!1776298 d!1776242)))

(assert (=> bs!1301623 (= lambda!301785 lambda!301779)))

(declare-fun bs!1301624 () Bool)

(assert (= bs!1301624 (and d!1776298 d!1776164)))

(assert (=> bs!1301624 (= lambda!301785 lambda!301765)))

(declare-fun bs!1301625 () Bool)

(assert (= bs!1301625 (and d!1776298 d!1776240)))

(assert (=> bs!1301625 (= lambda!301785 lambda!301778)))

(declare-fun lt!2260122 () List!63114)

(assert (=> d!1776298 (forall!14764 lt!2260122 lambda!301785)))

(declare-fun e!3465166 () List!63114)

(assert (=> d!1776298 (= lt!2260122 e!3465166)))

(declare-fun c!986518 () Bool)

(assert (=> d!1776298 (= c!986518 ((_ is Cons!62992) zl!343))))

(assert (=> d!1776298 (= (unfocusZipperList!1033 zl!343) lt!2260122)))

(declare-fun b!5621199 () Bool)

(assert (=> b!5621199 (= e!3465166 (Cons!62990 (generalisedConcat!1220 (exprs!5489 (h!69440 zl!343))) (unfocusZipperList!1033 (t!376406 zl!343))))))

(declare-fun b!5621200 () Bool)

(assert (=> b!5621200 (= e!3465166 Nil!62990)))

(assert (= (and d!1776298 c!986518) b!5621199))

(assert (= (and d!1776298 (not c!986518)) b!5621200))

(declare-fun m!6594594 () Bool)

(assert (=> d!1776298 m!6594594))

(assert (=> b!5621199 m!6593832))

(declare-fun m!6594596 () Bool)

(assert (=> b!5621199 m!6594596))

(assert (=> b!5620379 d!1776298))

(assert (=> b!5620362 d!1776218))

(declare-fun d!1776300 () Bool)

(declare-fun c!986519 () Bool)

(assert (=> d!1776300 (= c!986519 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3465167 () Bool)

(assert (=> d!1776300 (= (matchZipper!1743 lt!2260018 (t!376405 s!2326)) e!3465167)))

(declare-fun b!5621201 () Bool)

(assert (=> b!5621201 (= e!3465167 (nullableZipper!1592 lt!2260018))))

(declare-fun b!5621202 () Bool)

(assert (=> b!5621202 (= e!3465167 (matchZipper!1743 (derivationStepZipper!1696 lt!2260018 (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776300 c!986519) b!5621201))

(assert (= (and d!1776300 (not c!986519)) b!5621202))

(assert (=> d!1776300 m!6594302))

(declare-fun m!6594598 () Bool)

(assert (=> b!5621201 m!6594598))

(assert (=> b!5621202 m!6594306))

(assert (=> b!5621202 m!6594306))

(declare-fun m!6594600 () Bool)

(assert (=> b!5621202 m!6594600))

(assert (=> b!5621202 m!6594310))

(assert (=> b!5621202 m!6594600))

(assert (=> b!5621202 m!6594310))

(declare-fun m!6594602 () Bool)

(assert (=> b!5621202 m!6594602))

(assert (=> b!5620362 d!1776300))

(declare-fun d!1776302 () Bool)

(declare-fun c!986520 () Bool)

(assert (=> d!1776302 (= c!986520 (isEmpty!34822 (t!376405 s!2326)))))

(declare-fun e!3465168 () Bool)

(assert (=> d!1776302 (= (matchZipper!1743 lt!2259990 (t!376405 s!2326)) e!3465168)))

(declare-fun b!5621203 () Bool)

(assert (=> b!5621203 (= e!3465168 (nullableZipper!1592 lt!2259990))))

(declare-fun b!5621204 () Bool)

(assert (=> b!5621204 (= e!3465168 (matchZipper!1743 (derivationStepZipper!1696 lt!2259990 (head!11963 (t!376405 s!2326))) (tail!11058 (t!376405 s!2326))))))

(assert (= (and d!1776302 c!986520) b!5621203))

(assert (= (and d!1776302 (not c!986520)) b!5621204))

(assert (=> d!1776302 m!6594302))

(declare-fun m!6594604 () Bool)

(assert (=> b!5621203 m!6594604))

(assert (=> b!5621204 m!6594306))

(assert (=> b!5621204 m!6594306))

(declare-fun m!6594606 () Bool)

(assert (=> b!5621204 m!6594606))

(assert (=> b!5621204 m!6594310))

(assert (=> b!5621204 m!6594606))

(assert (=> b!5621204 m!6594310))

(declare-fun m!6594608 () Bool)

(assert (=> b!5621204 m!6594608))

(assert (=> b!5620362 d!1776302))

(declare-fun d!1776304 () Bool)

(declare-fun e!3465169 () Bool)

(assert (=> d!1776304 (= (matchZipper!1743 ((_ map or) lt!2259990 lt!2259987) (t!376405 s!2326)) e!3465169)))

(declare-fun res!2380913 () Bool)

(assert (=> d!1776304 (=> res!2380913 e!3465169)))

(assert (=> d!1776304 (= res!2380913 (matchZipper!1743 lt!2259990 (t!376405 s!2326)))))

(declare-fun lt!2260123 () Unit!155932)

(assert (=> d!1776304 (= lt!2260123 (choose!42565 lt!2259990 lt!2259987 (t!376405 s!2326)))))

(assert (=> d!1776304 (= (lemmaZipperConcatMatchesSameAsBothZippers!630 lt!2259990 lt!2259987 (t!376405 s!2326)) lt!2260123)))

(declare-fun b!5621205 () Bool)

(assert (=> b!5621205 (= e!3465169 (matchZipper!1743 lt!2259987 (t!376405 s!2326)))))

(assert (= (and d!1776304 (not res!2380913)) b!5621205))

(declare-fun m!6594610 () Bool)

(assert (=> d!1776304 m!6594610))

(assert (=> d!1776304 m!6593924))

(declare-fun m!6594612 () Bool)

(assert (=> d!1776304 m!6594612))

(assert (=> b!5621205 m!6593826))

(assert (=> b!5620362 d!1776304))

(declare-fun d!1776306 () Bool)

(declare-fun c!986521 () Bool)

(assert (=> d!1776306 (= c!986521 (isEmpty!34822 s!2326))))

(declare-fun e!3465170 () Bool)

(assert (=> d!1776306 (= (matchZipper!1743 lt!2259995 s!2326) e!3465170)))

(declare-fun b!5621206 () Bool)

(assert (=> b!5621206 (= e!3465170 (nullableZipper!1592 lt!2259995))))

(declare-fun b!5621207 () Bool)

(assert (=> b!5621207 (= e!3465170 (matchZipper!1743 (derivationStepZipper!1696 lt!2259995 (head!11963 s!2326)) (tail!11058 s!2326)))))

(assert (= (and d!1776306 c!986521) b!5621206))

(assert (= (and d!1776306 (not c!986521)) b!5621207))

(assert (=> d!1776306 m!6594434))

(declare-fun m!6594614 () Bool)

(assert (=> b!5621206 m!6594614))

(assert (=> b!5621207 m!6594444))

(assert (=> b!5621207 m!6594444))

(declare-fun m!6594616 () Bool)

(assert (=> b!5621207 m!6594616))

(assert (=> b!5621207 m!6594446))

(assert (=> b!5621207 m!6594616))

(assert (=> b!5621207 m!6594446))

(declare-fun m!6594618 () Bool)

(assert (=> b!5621207 m!6594618))

(assert (=> b!5620361 d!1776306))

(declare-fun b!5621208 () Bool)

(declare-fun e!3465175 () Bool)

(declare-fun lt!2260124 () Bool)

(declare-fun call!423280 () Bool)

(assert (=> b!5621208 (= e!3465175 (= lt!2260124 call!423280))))

(declare-fun b!5621209 () Bool)

(declare-fun e!3465176 () Bool)

(assert (=> b!5621209 (= e!3465176 (not lt!2260124))))

(declare-fun b!5621210 () Bool)

(declare-fun e!3465172 () Bool)

(assert (=> b!5621210 (= e!3465172 (= (head!11963 s!2326) (c!986263 lt!2260009)))))

(declare-fun b!5621211 () Bool)

(declare-fun res!2380917 () Bool)

(assert (=> b!5621211 (=> (not res!2380917) (not e!3465172))))

(assert (=> b!5621211 (= res!2380917 (isEmpty!34822 (tail!11058 s!2326)))))

(declare-fun b!5621212 () Bool)

(declare-fun res!2380914 () Bool)

(declare-fun e!3465171 () Bool)

(assert (=> b!5621212 (=> res!2380914 e!3465171)))

(assert (=> b!5621212 (= res!2380914 e!3465172)))

(declare-fun res!2380915 () Bool)

(assert (=> b!5621212 (=> (not res!2380915) (not e!3465172))))

(assert (=> b!5621212 (= res!2380915 lt!2260124)))

(declare-fun b!5621213 () Bool)

(assert (=> b!5621213 (= e!3465175 e!3465176)))

(declare-fun c!986523 () Bool)

(assert (=> b!5621213 (= c!986523 ((_ is EmptyLang!15605) lt!2260009))))

(declare-fun b!5621214 () Bool)

(declare-fun res!2380916 () Bool)

(assert (=> b!5621214 (=> res!2380916 e!3465171)))

(assert (=> b!5621214 (= res!2380916 (not ((_ is ElementMatch!15605) lt!2260009)))))

(assert (=> b!5621214 (= e!3465176 e!3465171)))

(declare-fun d!1776308 () Bool)

(assert (=> d!1776308 e!3465175))

(declare-fun c!986524 () Bool)

(assert (=> d!1776308 (= c!986524 ((_ is EmptyExpr!15605) lt!2260009))))

(declare-fun e!3465177 () Bool)

(assert (=> d!1776308 (= lt!2260124 e!3465177)))

(declare-fun c!986522 () Bool)

(assert (=> d!1776308 (= c!986522 (isEmpty!34822 s!2326))))

(assert (=> d!1776308 (validRegex!7341 lt!2260009)))

(assert (=> d!1776308 (= (matchR!7790 lt!2260009 s!2326) lt!2260124)))

(declare-fun b!5621215 () Bool)

(declare-fun res!2380918 () Bool)

(declare-fun e!3465173 () Bool)

(assert (=> b!5621215 (=> res!2380918 e!3465173)))

(assert (=> b!5621215 (= res!2380918 (not (isEmpty!34822 (tail!11058 s!2326))))))

(declare-fun bm!423275 () Bool)

(assert (=> bm!423275 (= call!423280 (isEmpty!34822 s!2326))))

(declare-fun b!5621216 () Bool)

(declare-fun e!3465174 () Bool)

(assert (=> b!5621216 (= e!3465174 e!3465173)))

(declare-fun res!2380921 () Bool)

(assert (=> b!5621216 (=> res!2380921 e!3465173)))

(assert (=> b!5621216 (= res!2380921 call!423280)))

(declare-fun b!5621217 () Bool)

(assert (=> b!5621217 (= e!3465177 (matchR!7790 (derivativeStep!4445 lt!2260009 (head!11963 s!2326)) (tail!11058 s!2326)))))

(declare-fun b!5621218 () Bool)

(assert (=> b!5621218 (= e!3465177 (nullable!5637 lt!2260009))))

(declare-fun b!5621219 () Bool)

(declare-fun res!2380919 () Bool)

(assert (=> b!5621219 (=> (not res!2380919) (not e!3465172))))

(assert (=> b!5621219 (= res!2380919 (not call!423280))))

(declare-fun b!5621220 () Bool)

(assert (=> b!5621220 (= e!3465171 e!3465174)))

(declare-fun res!2380920 () Bool)

(assert (=> b!5621220 (=> (not res!2380920) (not e!3465174))))

(assert (=> b!5621220 (= res!2380920 (not lt!2260124))))

(declare-fun b!5621221 () Bool)

(assert (=> b!5621221 (= e!3465173 (not (= (head!11963 s!2326) (c!986263 lt!2260009))))))

(assert (= (and d!1776308 c!986522) b!5621218))

(assert (= (and d!1776308 (not c!986522)) b!5621217))

(assert (= (and d!1776308 c!986524) b!5621208))

(assert (= (and d!1776308 (not c!986524)) b!5621213))

(assert (= (and b!5621213 c!986523) b!5621209))

(assert (= (and b!5621213 (not c!986523)) b!5621214))

(assert (= (and b!5621214 (not res!2380916)) b!5621212))

(assert (= (and b!5621212 res!2380915) b!5621219))

(assert (= (and b!5621219 res!2380919) b!5621211))

(assert (= (and b!5621211 res!2380917) b!5621210))

(assert (= (and b!5621212 (not res!2380914)) b!5621220))

(assert (= (and b!5621220 res!2380920) b!5621216))

(assert (= (and b!5621216 (not res!2380921)) b!5621215))

(assert (= (and b!5621215 (not res!2380918)) b!5621221))

(assert (= (or b!5621208 b!5621219 b!5621216) bm!423275))

(declare-fun m!6594620 () Bool)

(assert (=> b!5621218 m!6594620))

(assert (=> b!5621210 m!6594444))

(assert (=> d!1776308 m!6594434))

(declare-fun m!6594622 () Bool)

(assert (=> d!1776308 m!6594622))

(assert (=> b!5621215 m!6594446))

(assert (=> b!5621215 m!6594446))

(assert (=> b!5621215 m!6594448))

(assert (=> b!5621217 m!6594444))

(assert (=> b!5621217 m!6594444))

(declare-fun m!6594624 () Bool)

(assert (=> b!5621217 m!6594624))

(assert (=> b!5621217 m!6594446))

(assert (=> b!5621217 m!6594624))

(assert (=> b!5621217 m!6594446))

(declare-fun m!6594626 () Bool)

(assert (=> b!5621217 m!6594626))

(assert (=> b!5621211 m!6594446))

(assert (=> b!5621211 m!6594446))

(assert (=> b!5621211 m!6594448))

(assert (=> b!5621221 m!6594444))

(assert (=> bm!423275 m!6594434))

(assert (=> b!5620358 d!1776308))

(declare-fun bs!1301626 () Bool)

(declare-fun d!1776310 () Bool)

(assert (= bs!1301626 (and d!1776310 d!1776296)))

(declare-fun lambda!301786 () Int)

(assert (=> bs!1301626 (= lambda!301786 lambda!301782)))

(declare-fun bs!1301627 () Bool)

(assert (= bs!1301627 (and d!1776310 d!1776188)))

(assert (=> bs!1301627 (= lambda!301786 lambda!301771)))

(declare-fun bs!1301628 () Bool)

(assert (= bs!1301628 (and d!1776310 d!1776242)))

(assert (=> bs!1301628 (= lambda!301786 lambda!301779)))

(declare-fun bs!1301629 () Bool)

(assert (= bs!1301629 (and d!1776310 d!1776298)))

(assert (=> bs!1301629 (= lambda!301786 lambda!301785)))

(declare-fun bs!1301630 () Bool)

(assert (= bs!1301630 (and d!1776310 d!1776164)))

(assert (=> bs!1301630 (= lambda!301786 lambda!301765)))

(declare-fun bs!1301631 () Bool)

(assert (= bs!1301631 (and d!1776310 d!1776240)))

(assert (=> bs!1301631 (= lambda!301786 lambda!301778)))

(declare-fun b!5621222 () Bool)

(declare-fun e!3465183 () Regex!15605)

(assert (=> b!5621222 (= e!3465183 EmptyExpr!15605)))

(declare-fun b!5621223 () Bool)

(declare-fun e!3465182 () Bool)

(declare-fun lt!2260125 () Regex!15605)

(assert (=> b!5621223 (= e!3465182 (isEmptyExpr!1151 lt!2260125))))

(declare-fun b!5621224 () Bool)

(declare-fun e!3465179 () Bool)

(assert (=> b!5621224 (= e!3465179 (= lt!2260125 (head!11964 lt!2259982)))))

(declare-fun b!5621225 () Bool)

(assert (=> b!5621225 (= e!3465179 (isConcat!674 lt!2260125))))

(declare-fun b!5621226 () Bool)

(declare-fun e!3465178 () Bool)

(assert (=> b!5621226 (= e!3465178 e!3465182)))

(declare-fun c!986528 () Bool)

(assert (=> b!5621226 (= c!986528 (isEmpty!34819 lt!2259982))))

(declare-fun b!5621227 () Bool)

(assert (=> b!5621227 (= e!3465182 e!3465179)))

(declare-fun c!986526 () Bool)

(assert (=> b!5621227 (= c!986526 (isEmpty!34819 (tail!11059 lt!2259982)))))

(declare-fun b!5621228 () Bool)

(declare-fun e!3465180 () Regex!15605)

(assert (=> b!5621228 (= e!3465180 (h!69438 lt!2259982))))

(declare-fun b!5621229 () Bool)

(declare-fun e!3465181 () Bool)

(assert (=> b!5621229 (= e!3465181 (isEmpty!34819 (t!376404 lt!2259982)))))

(declare-fun b!5621230 () Bool)

(assert (=> b!5621230 (= e!3465183 (Concat!24450 (h!69438 lt!2259982) (generalisedConcat!1220 (t!376404 lt!2259982))))))

(assert (=> d!1776310 e!3465178))

(declare-fun res!2380922 () Bool)

(assert (=> d!1776310 (=> (not res!2380922) (not e!3465178))))

(assert (=> d!1776310 (= res!2380922 (validRegex!7341 lt!2260125))))

(assert (=> d!1776310 (= lt!2260125 e!3465180)))

(declare-fun c!986525 () Bool)

(assert (=> d!1776310 (= c!986525 e!3465181)))

(declare-fun res!2380923 () Bool)

(assert (=> d!1776310 (=> (not res!2380923) (not e!3465181))))

(assert (=> d!1776310 (= res!2380923 ((_ is Cons!62990) lt!2259982))))

(assert (=> d!1776310 (forall!14764 lt!2259982 lambda!301786)))

(assert (=> d!1776310 (= (generalisedConcat!1220 lt!2259982) lt!2260125)))

(declare-fun b!5621231 () Bool)

(assert (=> b!5621231 (= e!3465180 e!3465183)))

(declare-fun c!986527 () Bool)

(assert (=> b!5621231 (= c!986527 ((_ is Cons!62990) lt!2259982))))

(assert (= (and d!1776310 res!2380923) b!5621229))

(assert (= (and d!1776310 c!986525) b!5621228))

(assert (= (and d!1776310 (not c!986525)) b!5621231))

(assert (= (and b!5621231 c!986527) b!5621230))

(assert (= (and b!5621231 (not c!986527)) b!5621222))

(assert (= (and d!1776310 res!2380922) b!5621226))

(assert (= (and b!5621226 c!986528) b!5621223))

(assert (= (and b!5621226 (not c!986528)) b!5621227))

(assert (= (and b!5621227 c!986526) b!5621224))

(assert (= (and b!5621227 (not c!986526)) b!5621225))

(declare-fun m!6594628 () Bool)

(assert (=> b!5621226 m!6594628))

(declare-fun m!6594630 () Bool)

(assert (=> d!1776310 m!6594630))

(declare-fun m!6594632 () Bool)

(assert (=> d!1776310 m!6594632))

(declare-fun m!6594634 () Bool)

(assert (=> b!5621229 m!6594634))

(declare-fun m!6594636 () Bool)

(assert (=> b!5621227 m!6594636))

(assert (=> b!5621227 m!6594636))

(declare-fun m!6594638 () Bool)

(assert (=> b!5621227 m!6594638))

(declare-fun m!6594640 () Bool)

(assert (=> b!5621230 m!6594640))

(declare-fun m!6594642 () Bool)

(assert (=> b!5621225 m!6594642))

(declare-fun m!6594644 () Bool)

(assert (=> b!5621223 m!6594644))

(declare-fun m!6594646 () Bool)

(assert (=> b!5621224 m!6594646))

(assert (=> b!5620358 d!1776310))

(declare-fun bs!1301632 () Bool)

(declare-fun d!1776312 () Bool)

(assert (= bs!1301632 (and d!1776312 d!1776296)))

(declare-fun lambda!301787 () Int)

(assert (=> bs!1301632 (= lambda!301787 lambda!301782)))

(declare-fun bs!1301633 () Bool)

(assert (= bs!1301633 (and d!1776312 d!1776188)))

(assert (=> bs!1301633 (= lambda!301787 lambda!301771)))

(declare-fun bs!1301634 () Bool)

(assert (= bs!1301634 (and d!1776312 d!1776310)))

(assert (=> bs!1301634 (= lambda!301787 lambda!301786)))

(declare-fun bs!1301635 () Bool)

(assert (= bs!1301635 (and d!1776312 d!1776242)))

(assert (=> bs!1301635 (= lambda!301787 lambda!301779)))

(declare-fun bs!1301636 () Bool)

(assert (= bs!1301636 (and d!1776312 d!1776298)))

(assert (=> bs!1301636 (= lambda!301787 lambda!301785)))

(declare-fun bs!1301637 () Bool)

(assert (= bs!1301637 (and d!1776312 d!1776164)))

(assert (=> bs!1301637 (= lambda!301787 lambda!301765)))

(declare-fun bs!1301638 () Bool)

(assert (= bs!1301638 (and d!1776312 d!1776240)))

(assert (=> bs!1301638 (= lambda!301787 lambda!301778)))

(declare-fun b!5621232 () Bool)

(declare-fun e!3465189 () Regex!15605)

(assert (=> b!5621232 (= e!3465189 EmptyExpr!15605)))

(declare-fun b!5621233 () Bool)

(declare-fun e!3465188 () Bool)

(declare-fun lt!2260126 () Regex!15605)

(assert (=> b!5621233 (= e!3465188 (isEmptyExpr!1151 lt!2260126))))

(declare-fun b!5621234 () Bool)

(declare-fun e!3465185 () Bool)

(assert (=> b!5621234 (= e!3465185 (= lt!2260126 (head!11964 lt!2259989)))))

(declare-fun b!5621235 () Bool)

(assert (=> b!5621235 (= e!3465185 (isConcat!674 lt!2260126))))

(declare-fun b!5621236 () Bool)

(declare-fun e!3465184 () Bool)

(assert (=> b!5621236 (= e!3465184 e!3465188)))

(declare-fun c!986532 () Bool)

(assert (=> b!5621236 (= c!986532 (isEmpty!34819 lt!2259989))))

(declare-fun b!5621237 () Bool)

(assert (=> b!5621237 (= e!3465188 e!3465185)))

(declare-fun c!986530 () Bool)

(assert (=> b!5621237 (= c!986530 (isEmpty!34819 (tail!11059 lt!2259989)))))

(declare-fun b!5621238 () Bool)

(declare-fun e!3465186 () Regex!15605)

(assert (=> b!5621238 (= e!3465186 (h!69438 lt!2259989))))

(declare-fun b!5621239 () Bool)

(declare-fun e!3465187 () Bool)

(assert (=> b!5621239 (= e!3465187 (isEmpty!34819 (t!376404 lt!2259989)))))

(declare-fun b!5621240 () Bool)

(assert (=> b!5621240 (= e!3465189 (Concat!24450 (h!69438 lt!2259989) (generalisedConcat!1220 (t!376404 lt!2259989))))))

(assert (=> d!1776312 e!3465184))

(declare-fun res!2380924 () Bool)

(assert (=> d!1776312 (=> (not res!2380924) (not e!3465184))))

(assert (=> d!1776312 (= res!2380924 (validRegex!7341 lt!2260126))))

(assert (=> d!1776312 (= lt!2260126 e!3465186)))

(declare-fun c!986529 () Bool)

(assert (=> d!1776312 (= c!986529 e!3465187)))

(declare-fun res!2380925 () Bool)

(assert (=> d!1776312 (=> (not res!2380925) (not e!3465187))))

(assert (=> d!1776312 (= res!2380925 ((_ is Cons!62990) lt!2259989))))

(assert (=> d!1776312 (forall!14764 lt!2259989 lambda!301787)))

(assert (=> d!1776312 (= (generalisedConcat!1220 lt!2259989) lt!2260126)))

(declare-fun b!5621241 () Bool)

(assert (=> b!5621241 (= e!3465186 e!3465189)))

(declare-fun c!986531 () Bool)

(assert (=> b!5621241 (= c!986531 ((_ is Cons!62990) lt!2259989))))

(assert (= (and d!1776312 res!2380925) b!5621239))

(assert (= (and d!1776312 c!986529) b!5621238))

(assert (= (and d!1776312 (not c!986529)) b!5621241))

(assert (= (and b!5621241 c!986531) b!5621240))

(assert (= (and b!5621241 (not c!986531)) b!5621232))

(assert (= (and d!1776312 res!2380924) b!5621236))

(assert (= (and b!5621236 c!986532) b!5621233))

(assert (= (and b!5621236 (not c!986532)) b!5621237))

(assert (= (and b!5621237 c!986530) b!5621234))

(assert (= (and b!5621237 (not c!986530)) b!5621235))

(declare-fun m!6594648 () Bool)

(assert (=> b!5621236 m!6594648))

(declare-fun m!6594650 () Bool)

(assert (=> d!1776312 m!6594650))

(declare-fun m!6594652 () Bool)

(assert (=> d!1776312 m!6594652))

(declare-fun m!6594654 () Bool)

(assert (=> b!5621239 m!6594654))

(declare-fun m!6594656 () Bool)

(assert (=> b!5621237 m!6594656))

(assert (=> b!5621237 m!6594656))

(declare-fun m!6594658 () Bool)

(assert (=> b!5621237 m!6594658))

(declare-fun m!6594660 () Bool)

(assert (=> b!5621240 m!6594660))

(declare-fun m!6594662 () Bool)

(assert (=> b!5621235 m!6594662))

(declare-fun m!6594664 () Bool)

(assert (=> b!5621233 m!6594664))

(declare-fun m!6594666 () Bool)

(assert (=> b!5621234 m!6594666))

(assert (=> b!5620358 d!1776312))

(declare-fun bs!1301639 () Bool)

(declare-fun b!5621245 () Bool)

(assert (= bs!1301639 (and b!5621245 b!5620378)))

(declare-fun lambda!301788 () Int)

(assert (=> bs!1301639 (not (= lambda!301788 lambda!301728))))

(assert (=> bs!1301639 (not (= lambda!301788 lambda!301729))))

(declare-fun bs!1301640 () Bool)

(assert (= bs!1301640 (and b!5621245 b!5621045)))

(assert (=> bs!1301640 (= (and (= (reg!15934 lt!2259977) (reg!15934 r!7292)) (= lt!2259977 r!7292)) (= lambda!301788 lambda!301776))))

(declare-fun bs!1301641 () Bool)

(assert (= bs!1301641 (and b!5621245 b!5621046)))

(assert (=> bs!1301641 (not (= lambda!301788 lambda!301777))))

(assert (=> b!5621245 true))

(assert (=> b!5621245 true))

(declare-fun bs!1301642 () Bool)

(declare-fun b!5621246 () Bool)

(assert (= bs!1301642 (and b!5621246 b!5621045)))

(declare-fun lambda!301789 () Int)

(assert (=> bs!1301642 (not (= lambda!301789 lambda!301776))))

(declare-fun bs!1301643 () Bool)

(assert (= bs!1301643 (and b!5621246 b!5620378)))

(assert (=> bs!1301643 (= (and (= (regOne!31722 lt!2259977) (regOne!31722 r!7292)) (= (regTwo!31722 lt!2259977) (regTwo!31722 r!7292))) (= lambda!301789 lambda!301729))))

(declare-fun bs!1301644 () Bool)

(assert (= bs!1301644 (and b!5621246 b!5621046)))

(assert (=> bs!1301644 (= (and (= (regOne!31722 lt!2259977) (regOne!31722 r!7292)) (= (regTwo!31722 lt!2259977) (regTwo!31722 r!7292))) (= lambda!301789 lambda!301777))))

(declare-fun bs!1301645 () Bool)

(assert (= bs!1301645 (and b!5621246 b!5621245)))

(assert (=> bs!1301645 (not (= lambda!301789 lambda!301788))))

(assert (=> bs!1301643 (not (= lambda!301789 lambda!301728))))

(assert (=> b!5621246 true))

(assert (=> b!5621246 true))

(declare-fun b!5621242 () Bool)

(declare-fun e!3465194 () Bool)

(declare-fun e!3465190 () Bool)

(assert (=> b!5621242 (= e!3465194 e!3465190)))

(declare-fun res!2380926 () Bool)

(assert (=> b!5621242 (= res!2380926 (not ((_ is EmptyLang!15605) lt!2259977)))))

(assert (=> b!5621242 (=> (not res!2380926) (not e!3465190))))

(declare-fun bm!423276 () Bool)

(declare-fun call!423282 () Bool)

(assert (=> bm!423276 (= call!423282 (isEmpty!34822 s!2326))))

(declare-fun b!5621243 () Bool)

(declare-fun c!986534 () Bool)

(assert (=> b!5621243 (= c!986534 ((_ is ElementMatch!15605) lt!2259977))))

(declare-fun e!3465196 () Bool)

(assert (=> b!5621243 (= e!3465190 e!3465196)))

(declare-fun b!5621244 () Bool)

(assert (=> b!5621244 (= e!3465196 (= s!2326 (Cons!62991 (c!986263 lt!2259977) Nil!62991)))))

(declare-fun e!3465193 () Bool)

(declare-fun call!423281 () Bool)

(assert (=> b!5621245 (= e!3465193 call!423281)))

(declare-fun e!3465191 () Bool)

(assert (=> b!5621246 (= e!3465191 call!423281)))

(declare-fun b!5621248 () Bool)

(declare-fun e!3465192 () Bool)

(declare-fun e!3465195 () Bool)

(assert (=> b!5621248 (= e!3465192 e!3465195)))

(declare-fun res!2380927 () Bool)

(assert (=> b!5621248 (= res!2380927 (matchRSpec!2708 (regOne!31723 lt!2259977) s!2326))))

(assert (=> b!5621248 (=> res!2380927 e!3465195)))

(declare-fun b!5621249 () Bool)

(declare-fun res!2380928 () Bool)

(assert (=> b!5621249 (=> res!2380928 e!3465193)))

(assert (=> b!5621249 (= res!2380928 call!423282)))

(assert (=> b!5621249 (= e!3465191 e!3465193)))

(declare-fun b!5621250 () Bool)

(declare-fun c!986536 () Bool)

(assert (=> b!5621250 (= c!986536 ((_ is Union!15605) lt!2259977))))

(assert (=> b!5621250 (= e!3465196 e!3465192)))

(declare-fun b!5621251 () Bool)

(assert (=> b!5621251 (= e!3465194 call!423282)))

(declare-fun bm!423277 () Bool)

(declare-fun c!986533 () Bool)

(assert (=> bm!423277 (= call!423281 (Exists!2705 (ite c!986533 lambda!301788 lambda!301789)))))

(declare-fun b!5621252 () Bool)

(assert (=> b!5621252 (= e!3465192 e!3465191)))

(assert (=> b!5621252 (= c!986533 ((_ is Star!15605) lt!2259977))))

(declare-fun b!5621247 () Bool)

(assert (=> b!5621247 (= e!3465195 (matchRSpec!2708 (regTwo!31723 lt!2259977) s!2326))))

(declare-fun d!1776314 () Bool)

(declare-fun c!986535 () Bool)

(assert (=> d!1776314 (= c!986535 ((_ is EmptyExpr!15605) lt!2259977))))

(assert (=> d!1776314 (= (matchRSpec!2708 lt!2259977 s!2326) e!3465194)))

(assert (= (and d!1776314 c!986535) b!5621251))

(assert (= (and d!1776314 (not c!986535)) b!5621242))

(assert (= (and b!5621242 res!2380926) b!5621243))

(assert (= (and b!5621243 c!986534) b!5621244))

(assert (= (and b!5621243 (not c!986534)) b!5621250))

(assert (= (and b!5621250 c!986536) b!5621248))

(assert (= (and b!5621250 (not c!986536)) b!5621252))

(assert (= (and b!5621248 (not res!2380927)) b!5621247))

(assert (= (and b!5621252 c!986533) b!5621249))

(assert (= (and b!5621252 (not c!986533)) b!5621246))

(assert (= (and b!5621249 (not res!2380928)) b!5621245))

(assert (= (or b!5621245 b!5621246) bm!423277))

(assert (= (or b!5621251 b!5621249) bm!423276))

(assert (=> bm!423276 m!6594434))

(declare-fun m!6594668 () Bool)

(assert (=> b!5621248 m!6594668))

(declare-fun m!6594670 () Bool)

(assert (=> bm!423277 m!6594670))

(declare-fun m!6594672 () Bool)

(assert (=> b!5621247 m!6594672))

(assert (=> b!5620358 d!1776314))

(declare-fun b!5621253 () Bool)

(declare-fun e!3465201 () Bool)

(declare-fun lt!2260127 () Bool)

(declare-fun call!423283 () Bool)

(assert (=> b!5621253 (= e!3465201 (= lt!2260127 call!423283))))

(declare-fun b!5621254 () Bool)

(declare-fun e!3465202 () Bool)

(assert (=> b!5621254 (= e!3465202 (not lt!2260127))))

(declare-fun b!5621255 () Bool)

(declare-fun e!3465198 () Bool)

(assert (=> b!5621255 (= e!3465198 (= (head!11963 s!2326) (c!986263 lt!2259977)))))

(declare-fun b!5621256 () Bool)

(declare-fun res!2380932 () Bool)

(assert (=> b!5621256 (=> (not res!2380932) (not e!3465198))))

(assert (=> b!5621256 (= res!2380932 (isEmpty!34822 (tail!11058 s!2326)))))

(declare-fun b!5621257 () Bool)

(declare-fun res!2380929 () Bool)

(declare-fun e!3465197 () Bool)

(assert (=> b!5621257 (=> res!2380929 e!3465197)))

(assert (=> b!5621257 (= res!2380929 e!3465198)))

(declare-fun res!2380930 () Bool)

(assert (=> b!5621257 (=> (not res!2380930) (not e!3465198))))

(assert (=> b!5621257 (= res!2380930 lt!2260127)))

(declare-fun b!5621258 () Bool)

(assert (=> b!5621258 (= e!3465201 e!3465202)))

(declare-fun c!986538 () Bool)

(assert (=> b!5621258 (= c!986538 ((_ is EmptyLang!15605) lt!2259977))))

(declare-fun b!5621259 () Bool)

(declare-fun res!2380931 () Bool)

(assert (=> b!5621259 (=> res!2380931 e!3465197)))

(assert (=> b!5621259 (= res!2380931 (not ((_ is ElementMatch!15605) lt!2259977)))))

(assert (=> b!5621259 (= e!3465202 e!3465197)))

(declare-fun d!1776316 () Bool)

(assert (=> d!1776316 e!3465201))

(declare-fun c!986539 () Bool)

(assert (=> d!1776316 (= c!986539 ((_ is EmptyExpr!15605) lt!2259977))))

(declare-fun e!3465203 () Bool)

(assert (=> d!1776316 (= lt!2260127 e!3465203)))

(declare-fun c!986537 () Bool)

(assert (=> d!1776316 (= c!986537 (isEmpty!34822 s!2326))))

(assert (=> d!1776316 (validRegex!7341 lt!2259977)))

(assert (=> d!1776316 (= (matchR!7790 lt!2259977 s!2326) lt!2260127)))

(declare-fun b!5621260 () Bool)

(declare-fun res!2380933 () Bool)

(declare-fun e!3465199 () Bool)

(assert (=> b!5621260 (=> res!2380933 e!3465199)))

(assert (=> b!5621260 (= res!2380933 (not (isEmpty!34822 (tail!11058 s!2326))))))

(declare-fun bm!423278 () Bool)

(assert (=> bm!423278 (= call!423283 (isEmpty!34822 s!2326))))

(declare-fun b!5621261 () Bool)

(declare-fun e!3465200 () Bool)

(assert (=> b!5621261 (= e!3465200 e!3465199)))

(declare-fun res!2380936 () Bool)

(assert (=> b!5621261 (=> res!2380936 e!3465199)))

(assert (=> b!5621261 (= res!2380936 call!423283)))

(declare-fun b!5621262 () Bool)

(assert (=> b!5621262 (= e!3465203 (matchR!7790 (derivativeStep!4445 lt!2259977 (head!11963 s!2326)) (tail!11058 s!2326)))))

(declare-fun b!5621263 () Bool)

(assert (=> b!5621263 (= e!3465203 (nullable!5637 lt!2259977))))

(declare-fun b!5621264 () Bool)

(declare-fun res!2380934 () Bool)

(assert (=> b!5621264 (=> (not res!2380934) (not e!3465198))))

(assert (=> b!5621264 (= res!2380934 (not call!423283))))

(declare-fun b!5621265 () Bool)

(assert (=> b!5621265 (= e!3465197 e!3465200)))

(declare-fun res!2380935 () Bool)

(assert (=> b!5621265 (=> (not res!2380935) (not e!3465200))))

(assert (=> b!5621265 (= res!2380935 (not lt!2260127))))

(declare-fun b!5621266 () Bool)

(assert (=> b!5621266 (= e!3465199 (not (= (head!11963 s!2326) (c!986263 lt!2259977))))))

(assert (= (and d!1776316 c!986537) b!5621263))

(assert (= (and d!1776316 (not c!986537)) b!5621262))

(assert (= (and d!1776316 c!986539) b!5621253))

(assert (= (and d!1776316 (not c!986539)) b!5621258))

(assert (= (and b!5621258 c!986538) b!5621254))

(assert (= (and b!5621258 (not c!986538)) b!5621259))

(assert (= (and b!5621259 (not res!2380931)) b!5621257))

(assert (= (and b!5621257 res!2380930) b!5621264))

(assert (= (and b!5621264 res!2380934) b!5621256))

(assert (= (and b!5621256 res!2380932) b!5621255))

(assert (= (and b!5621257 (not res!2380929)) b!5621265))

(assert (= (and b!5621265 res!2380935) b!5621261))

(assert (= (and b!5621261 (not res!2380936)) b!5621260))

(assert (= (and b!5621260 (not res!2380933)) b!5621266))

(assert (= (or b!5621253 b!5621264 b!5621261) bm!423278))

(declare-fun m!6594674 () Bool)

(assert (=> b!5621263 m!6594674))

(assert (=> b!5621255 m!6594444))

(assert (=> d!1776316 m!6594434))

(declare-fun m!6594676 () Bool)

(assert (=> d!1776316 m!6594676))

(assert (=> b!5621260 m!6594446))

(assert (=> b!5621260 m!6594446))

(assert (=> b!5621260 m!6594448))

(assert (=> b!5621262 m!6594444))

(assert (=> b!5621262 m!6594444))

(declare-fun m!6594678 () Bool)

(assert (=> b!5621262 m!6594678))

(assert (=> b!5621262 m!6594446))

(assert (=> b!5621262 m!6594678))

(assert (=> b!5621262 m!6594446))

(declare-fun m!6594680 () Bool)

(assert (=> b!5621262 m!6594680))

(assert (=> b!5621256 m!6594446))

(assert (=> b!5621256 m!6594446))

(assert (=> b!5621256 m!6594448))

(assert (=> b!5621266 m!6594444))

(assert (=> bm!423278 m!6594434))

(assert (=> b!5620358 d!1776316))

(assert (=> b!5620358 d!1776306))

(declare-fun d!1776318 () Bool)

(assert (=> d!1776318 (= (matchR!7790 lt!2259977 s!2326) (matchRSpec!2708 lt!2259977 s!2326))))

(declare-fun lt!2260128 () Unit!155932)

(assert (=> d!1776318 (= lt!2260128 (choose!42567 lt!2259977 s!2326))))

(assert (=> d!1776318 (validRegex!7341 lt!2259977)))

(assert (=> d!1776318 (= (mainMatchTheorem!2708 lt!2259977 s!2326) lt!2260128)))

(declare-fun bs!1301646 () Bool)

(assert (= bs!1301646 d!1776318))

(assert (=> bs!1301646 m!6593868))

(assert (=> bs!1301646 m!6593872))

(declare-fun m!6594682 () Bool)

(assert (=> bs!1301646 m!6594682))

(assert (=> bs!1301646 m!6594676))

(assert (=> b!5620358 d!1776318))

(declare-fun d!1776320 () Bool)

(assert (=> d!1776320 (= (matchR!7790 lt!2260009 s!2326) (matchZipper!1743 lt!2259995 s!2326))))

(declare-fun lt!2260131 () Unit!155932)

(declare-fun choose!42570 ((InoxSet Context!9978) List!63116 Regex!15605 List!63115) Unit!155932)

(assert (=> d!1776320 (= lt!2260131 (choose!42570 lt!2259995 lt!2259985 lt!2260009 s!2326))))

(assert (=> d!1776320 (validRegex!7341 lt!2260009)))

(assert (=> d!1776320 (= (theoremZipperRegexEquiv!621 lt!2259995 lt!2259985 lt!2260009 s!2326) lt!2260131)))

(declare-fun bs!1301647 () Bool)

(assert (= bs!1301647 d!1776320))

(assert (=> bs!1301647 m!6593866))

(assert (=> bs!1301647 m!6593884))

(declare-fun m!6594684 () Bool)

(assert (=> bs!1301647 m!6594684))

(assert (=> bs!1301647 m!6594622))

(assert (=> b!5620358 d!1776320))

(declare-fun bs!1301648 () Bool)

(declare-fun b!5621270 () Bool)

(assert (= bs!1301648 (and b!5621270 b!5621045)))

(declare-fun lambda!301790 () Int)

(assert (=> bs!1301648 (= (and (= (reg!15934 lt!2260009) (reg!15934 r!7292)) (= lt!2260009 r!7292)) (= lambda!301790 lambda!301776))))

(declare-fun bs!1301649 () Bool)

(assert (= bs!1301649 (and b!5621270 b!5620378)))

(assert (=> bs!1301649 (not (= lambda!301790 lambda!301729))))

(declare-fun bs!1301650 () Bool)

(assert (= bs!1301650 (and b!5621270 b!5621046)))

(assert (=> bs!1301650 (not (= lambda!301790 lambda!301777))))

(declare-fun bs!1301651 () Bool)

(assert (= bs!1301651 (and b!5621270 b!5621245)))

(assert (=> bs!1301651 (= (and (= (reg!15934 lt!2260009) (reg!15934 lt!2259977)) (= lt!2260009 lt!2259977)) (= lambda!301790 lambda!301788))))

(declare-fun bs!1301652 () Bool)

(assert (= bs!1301652 (and b!5621270 b!5621246)))

(assert (=> bs!1301652 (not (= lambda!301790 lambda!301789))))

(assert (=> bs!1301649 (not (= lambda!301790 lambda!301728))))

(assert (=> b!5621270 true))

(assert (=> b!5621270 true))

(declare-fun bs!1301653 () Bool)

(declare-fun b!5621271 () Bool)

(assert (= bs!1301653 (and b!5621271 b!5621045)))

(declare-fun lambda!301791 () Int)

(assert (=> bs!1301653 (not (= lambda!301791 lambda!301776))))

(declare-fun bs!1301654 () Bool)

(assert (= bs!1301654 (and b!5621271 b!5620378)))

(assert (=> bs!1301654 (= (and (= (regOne!31722 lt!2260009) (regOne!31722 r!7292)) (= (regTwo!31722 lt!2260009) (regTwo!31722 r!7292))) (= lambda!301791 lambda!301729))))

(declare-fun bs!1301655 () Bool)

(assert (= bs!1301655 (and b!5621271 b!5621046)))

(assert (=> bs!1301655 (= (and (= (regOne!31722 lt!2260009) (regOne!31722 r!7292)) (= (regTwo!31722 lt!2260009) (regTwo!31722 r!7292))) (= lambda!301791 lambda!301777))))

(declare-fun bs!1301656 () Bool)

(assert (= bs!1301656 (and b!5621271 b!5621245)))

(assert (=> bs!1301656 (not (= lambda!301791 lambda!301788))))

(declare-fun bs!1301657 () Bool)

(assert (= bs!1301657 (and b!5621271 b!5621246)))

(assert (=> bs!1301657 (= (and (= (regOne!31722 lt!2260009) (regOne!31722 lt!2259977)) (= (regTwo!31722 lt!2260009) (regTwo!31722 lt!2259977))) (= lambda!301791 lambda!301789))))

(declare-fun bs!1301658 () Bool)

(assert (= bs!1301658 (and b!5621271 b!5621270)))

(assert (=> bs!1301658 (not (= lambda!301791 lambda!301790))))

(assert (=> bs!1301654 (not (= lambda!301791 lambda!301728))))

(assert (=> b!5621271 true))

(assert (=> b!5621271 true))

(declare-fun b!5621267 () Bool)

(declare-fun e!3465208 () Bool)

(declare-fun e!3465204 () Bool)

(assert (=> b!5621267 (= e!3465208 e!3465204)))

(declare-fun res!2380937 () Bool)

(assert (=> b!5621267 (= res!2380937 (not ((_ is EmptyLang!15605) lt!2260009)))))

(assert (=> b!5621267 (=> (not res!2380937) (not e!3465204))))

(declare-fun bm!423279 () Bool)

(declare-fun call!423285 () Bool)

(assert (=> bm!423279 (= call!423285 (isEmpty!34822 s!2326))))

(declare-fun b!5621268 () Bool)

(declare-fun c!986541 () Bool)

(assert (=> b!5621268 (= c!986541 ((_ is ElementMatch!15605) lt!2260009))))

(declare-fun e!3465210 () Bool)

(assert (=> b!5621268 (= e!3465204 e!3465210)))

(declare-fun b!5621269 () Bool)

(assert (=> b!5621269 (= e!3465210 (= s!2326 (Cons!62991 (c!986263 lt!2260009) Nil!62991)))))

(declare-fun e!3465207 () Bool)

(declare-fun call!423284 () Bool)

(assert (=> b!5621270 (= e!3465207 call!423284)))

(declare-fun e!3465205 () Bool)

(assert (=> b!5621271 (= e!3465205 call!423284)))

(declare-fun b!5621273 () Bool)

(declare-fun e!3465206 () Bool)

(declare-fun e!3465209 () Bool)

(assert (=> b!5621273 (= e!3465206 e!3465209)))

(declare-fun res!2380938 () Bool)

(assert (=> b!5621273 (= res!2380938 (matchRSpec!2708 (regOne!31723 lt!2260009) s!2326))))

(assert (=> b!5621273 (=> res!2380938 e!3465209)))

(declare-fun b!5621274 () Bool)

(declare-fun res!2380939 () Bool)

(assert (=> b!5621274 (=> res!2380939 e!3465207)))

(assert (=> b!5621274 (= res!2380939 call!423285)))

(assert (=> b!5621274 (= e!3465205 e!3465207)))

(declare-fun b!5621275 () Bool)

(declare-fun c!986543 () Bool)

(assert (=> b!5621275 (= c!986543 ((_ is Union!15605) lt!2260009))))

(assert (=> b!5621275 (= e!3465210 e!3465206)))

(declare-fun b!5621276 () Bool)

(assert (=> b!5621276 (= e!3465208 call!423285)))

(declare-fun c!986540 () Bool)

(declare-fun bm!423280 () Bool)

(assert (=> bm!423280 (= call!423284 (Exists!2705 (ite c!986540 lambda!301790 lambda!301791)))))

(declare-fun b!5621277 () Bool)

(assert (=> b!5621277 (= e!3465206 e!3465205)))

(assert (=> b!5621277 (= c!986540 ((_ is Star!15605) lt!2260009))))

(declare-fun b!5621272 () Bool)

(assert (=> b!5621272 (= e!3465209 (matchRSpec!2708 (regTwo!31723 lt!2260009) s!2326))))

(declare-fun d!1776322 () Bool)

(declare-fun c!986542 () Bool)

(assert (=> d!1776322 (= c!986542 ((_ is EmptyExpr!15605) lt!2260009))))

(assert (=> d!1776322 (= (matchRSpec!2708 lt!2260009 s!2326) e!3465208)))

(assert (= (and d!1776322 c!986542) b!5621276))

(assert (= (and d!1776322 (not c!986542)) b!5621267))

(assert (= (and b!5621267 res!2380937) b!5621268))

(assert (= (and b!5621268 c!986541) b!5621269))

(assert (= (and b!5621268 (not c!986541)) b!5621275))

(assert (= (and b!5621275 c!986543) b!5621273))

(assert (= (and b!5621275 (not c!986543)) b!5621277))

(assert (= (and b!5621273 (not res!2380938)) b!5621272))

(assert (= (and b!5621277 c!986540) b!5621274))

(assert (= (and b!5621277 (not c!986540)) b!5621271))

(assert (= (and b!5621274 (not res!2380939)) b!5621270))

(assert (= (or b!5621270 b!5621271) bm!423280))

(assert (= (or b!5621276 b!5621274) bm!423279))

(assert (=> bm!423279 m!6594434))

(declare-fun m!6594686 () Bool)

(assert (=> b!5621273 m!6594686))

(declare-fun m!6594688 () Bool)

(assert (=> bm!423280 m!6594688))

(declare-fun m!6594690 () Bool)

(assert (=> b!5621272 m!6594690))

(assert (=> b!5620358 d!1776322))

(declare-fun d!1776324 () Bool)

(assert (=> d!1776324 (= (matchR!7790 lt!2259977 s!2326) (matchZipper!1743 lt!2259981 s!2326))))

(declare-fun lt!2260132 () Unit!155932)

(assert (=> d!1776324 (= lt!2260132 (choose!42570 lt!2259981 lt!2260015 lt!2259977 s!2326))))

(assert (=> d!1776324 (validRegex!7341 lt!2259977)))

(assert (=> d!1776324 (= (theoremZipperRegexEquiv!621 lt!2259981 lt!2260015 lt!2259977 s!2326) lt!2260132)))

(declare-fun bs!1301659 () Bool)

(assert (= bs!1301659 d!1776324))

(assert (=> bs!1301659 m!6593868))

(assert (=> bs!1301659 m!6593838))

(declare-fun m!6594692 () Bool)

(assert (=> bs!1301659 m!6594692))

(assert (=> bs!1301659 m!6594676))

(assert (=> b!5620358 d!1776324))

(declare-fun d!1776326 () Bool)

(assert (=> d!1776326 (= (matchR!7790 lt!2260009 s!2326) (matchRSpec!2708 lt!2260009 s!2326))))

(declare-fun lt!2260133 () Unit!155932)

(assert (=> d!1776326 (= lt!2260133 (choose!42567 lt!2260009 s!2326))))

(assert (=> d!1776326 (validRegex!7341 lt!2260009)))

(assert (=> d!1776326 (= (mainMatchTheorem!2708 lt!2260009 s!2326) lt!2260133)))

(declare-fun bs!1301660 () Bool)

(assert (= bs!1301660 d!1776326))

(assert (=> bs!1301660 m!6593866))

(assert (=> bs!1301660 m!6593874))

(declare-fun m!6594694 () Bool)

(assert (=> bs!1301660 m!6594694))

(assert (=> bs!1301660 m!6594622))

(assert (=> b!5620358 d!1776326))

(declare-fun d!1776328 () Bool)

(declare-fun choose!42571 (Int) Bool)

(assert (=> d!1776328 (= (Exists!2705 lambda!301729) (choose!42571 lambda!301729))))

(declare-fun bs!1301661 () Bool)

(assert (= bs!1301661 d!1776328))

(declare-fun m!6594696 () Bool)

(assert (=> bs!1301661 m!6594696))

(assert (=> b!5620378 d!1776328))

(declare-fun b!5621296 () Bool)

(declare-fun e!3465225 () Option!15614)

(declare-fun e!3465224 () Option!15614)

(assert (=> b!5621296 (= e!3465225 e!3465224)))

(declare-fun c!986549 () Bool)

(assert (=> b!5621296 (= c!986549 ((_ is Nil!62991) s!2326))))

(declare-fun b!5621297 () Bool)

(declare-fun e!3465222 () Bool)

(assert (=> b!5621297 (= e!3465222 (matchR!7790 (regTwo!31722 r!7292) s!2326))))

(declare-fun b!5621298 () Bool)

(declare-fun e!3465223 () Bool)

(declare-fun lt!2260140 () Option!15614)

(assert (=> b!5621298 (= e!3465223 (not (isDefined!12317 lt!2260140)))))

(declare-fun b!5621299 () Bool)

(declare-fun res!2380953 () Bool)

(declare-fun e!3465221 () Bool)

(assert (=> b!5621299 (=> (not res!2380953) (not e!3465221))))

(declare-fun get!21696 (Option!15614) tuple2!65404)

(assert (=> b!5621299 (= res!2380953 (matchR!7790 (regTwo!31722 r!7292) (_2!36005 (get!21696 lt!2260140))))))

(declare-fun b!5621300 () Bool)

(assert (=> b!5621300 (= e!3465225 (Some!15613 (tuple2!65405 Nil!62991 s!2326)))))

(declare-fun d!1776330 () Bool)

(assert (=> d!1776330 e!3465223))

(declare-fun res!2380950 () Bool)

(assert (=> d!1776330 (=> res!2380950 e!3465223)))

(assert (=> d!1776330 (= res!2380950 e!3465221)))

(declare-fun res!2380951 () Bool)

(assert (=> d!1776330 (=> (not res!2380951) (not e!3465221))))

(assert (=> d!1776330 (= res!2380951 (isDefined!12317 lt!2260140))))

(assert (=> d!1776330 (= lt!2260140 e!3465225)))

(declare-fun c!986548 () Bool)

(assert (=> d!1776330 (= c!986548 e!3465222)))

(declare-fun res!2380954 () Bool)

(assert (=> d!1776330 (=> (not res!2380954) (not e!3465222))))

(assert (=> d!1776330 (= res!2380954 (matchR!7790 (regOne!31722 r!7292) Nil!62991))))

(assert (=> d!1776330 (validRegex!7341 (regOne!31722 r!7292))))

(assert (=> d!1776330 (= (findConcatSeparation!2028 (regOne!31722 r!7292) (regTwo!31722 r!7292) Nil!62991 s!2326 s!2326) lt!2260140)))

(declare-fun b!5621301 () Bool)

(declare-fun ++!13826 (List!63115 List!63115) List!63115)

(assert (=> b!5621301 (= e!3465221 (= (++!13826 (_1!36005 (get!21696 lt!2260140)) (_2!36005 (get!21696 lt!2260140))) s!2326))))

(declare-fun b!5621302 () Bool)

(assert (=> b!5621302 (= e!3465224 None!15613)))

(declare-fun b!5621303 () Bool)

(declare-fun res!2380952 () Bool)

(assert (=> b!5621303 (=> (not res!2380952) (not e!3465221))))

(assert (=> b!5621303 (= res!2380952 (matchR!7790 (regOne!31722 r!7292) (_1!36005 (get!21696 lt!2260140))))))

(declare-fun b!5621304 () Bool)

(declare-fun lt!2260142 () Unit!155932)

(declare-fun lt!2260141 () Unit!155932)

(assert (=> b!5621304 (= lt!2260142 lt!2260141)))

(assert (=> b!5621304 (= (++!13826 (++!13826 Nil!62991 (Cons!62991 (h!69439 s!2326) Nil!62991)) (t!376405 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1995 (List!63115 C!31480 List!63115 List!63115) Unit!155932)

(assert (=> b!5621304 (= lt!2260141 (lemmaMoveElementToOtherListKeepsConcatEq!1995 Nil!62991 (h!69439 s!2326) (t!376405 s!2326) s!2326))))

(assert (=> b!5621304 (= e!3465224 (findConcatSeparation!2028 (regOne!31722 r!7292) (regTwo!31722 r!7292) (++!13826 Nil!62991 (Cons!62991 (h!69439 s!2326) Nil!62991)) (t!376405 s!2326) s!2326))))

(assert (= (and d!1776330 res!2380954) b!5621297))

(assert (= (and d!1776330 c!986548) b!5621300))

(assert (= (and d!1776330 (not c!986548)) b!5621296))

(assert (= (and b!5621296 c!986549) b!5621302))

(assert (= (and b!5621296 (not c!986549)) b!5621304))

(assert (= (and d!1776330 res!2380951) b!5621303))

(assert (= (and b!5621303 res!2380952) b!5621299))

(assert (= (and b!5621299 res!2380953) b!5621301))

(assert (= (and d!1776330 (not res!2380950)) b!5621298))

(declare-fun m!6594698 () Bool)

(assert (=> d!1776330 m!6594698))

(declare-fun m!6594700 () Bool)

(assert (=> d!1776330 m!6594700))

(declare-fun m!6594702 () Bool)

(assert (=> d!1776330 m!6594702))

(declare-fun m!6594704 () Bool)

(assert (=> b!5621301 m!6594704))

(declare-fun m!6594706 () Bool)

(assert (=> b!5621301 m!6594706))

(assert (=> b!5621298 m!6594698))

(declare-fun m!6594708 () Bool)

(assert (=> b!5621297 m!6594708))

(assert (=> b!5621303 m!6594704))

(declare-fun m!6594710 () Bool)

(assert (=> b!5621303 m!6594710))

(declare-fun m!6594712 () Bool)

(assert (=> b!5621304 m!6594712))

(assert (=> b!5621304 m!6594712))

(declare-fun m!6594714 () Bool)

(assert (=> b!5621304 m!6594714))

(declare-fun m!6594716 () Bool)

(assert (=> b!5621304 m!6594716))

(assert (=> b!5621304 m!6594712))

(declare-fun m!6594718 () Bool)

(assert (=> b!5621304 m!6594718))

(assert (=> b!5621299 m!6594704))

(declare-fun m!6594720 () Bool)

(assert (=> b!5621299 m!6594720))

(assert (=> b!5620378 d!1776330))

(declare-fun d!1776332 () Bool)

(assert (=> d!1776332 (= (Exists!2705 lambda!301728) (choose!42571 lambda!301728))))

(declare-fun bs!1301662 () Bool)

(assert (= bs!1301662 d!1776332))

(declare-fun m!6594722 () Bool)

(assert (=> bs!1301662 m!6594722))

(assert (=> b!5620378 d!1776332))

(declare-fun bs!1301663 () Bool)

(declare-fun d!1776334 () Bool)

(assert (= bs!1301663 (and d!1776334 b!5621045)))

(declare-fun lambda!301794 () Int)

(assert (=> bs!1301663 (not (= lambda!301794 lambda!301776))))

(declare-fun bs!1301664 () Bool)

(assert (= bs!1301664 (and d!1776334 b!5620378)))

(assert (=> bs!1301664 (not (= lambda!301794 lambda!301729))))

(declare-fun bs!1301665 () Bool)

(assert (= bs!1301665 (and d!1776334 b!5621046)))

(assert (=> bs!1301665 (not (= lambda!301794 lambda!301777))))

(declare-fun bs!1301666 () Bool)

(assert (= bs!1301666 (and d!1776334 b!5621245)))

(assert (=> bs!1301666 (not (= lambda!301794 lambda!301788))))

(declare-fun bs!1301667 () Bool)

(assert (= bs!1301667 (and d!1776334 b!5621270)))

(assert (=> bs!1301667 (not (= lambda!301794 lambda!301790))))

(assert (=> bs!1301664 (= lambda!301794 lambda!301728)))

(declare-fun bs!1301668 () Bool)

(assert (= bs!1301668 (and d!1776334 b!5621271)))

(assert (=> bs!1301668 (not (= lambda!301794 lambda!301791))))

(declare-fun bs!1301669 () Bool)

(assert (= bs!1301669 (and d!1776334 b!5621246)))

(assert (=> bs!1301669 (not (= lambda!301794 lambda!301789))))

(assert (=> d!1776334 true))

(assert (=> d!1776334 true))

(assert (=> d!1776334 true))

(assert (=> d!1776334 (= (isDefined!12317 (findConcatSeparation!2028 (regOne!31722 r!7292) (regTwo!31722 r!7292) Nil!62991 s!2326 s!2326)) (Exists!2705 lambda!301794))))

(declare-fun lt!2260145 () Unit!155932)

(declare-fun choose!42572 (Regex!15605 Regex!15605 List!63115) Unit!155932)

(assert (=> d!1776334 (= lt!2260145 (choose!42572 (regOne!31722 r!7292) (regTwo!31722 r!7292) s!2326))))

(assert (=> d!1776334 (validRegex!7341 (regOne!31722 r!7292))))

(assert (=> d!1776334 (= (lemmaFindConcatSeparationEquivalentToExists!1792 (regOne!31722 r!7292) (regTwo!31722 r!7292) s!2326) lt!2260145)))

(declare-fun bs!1301670 () Bool)

(assert (= bs!1301670 d!1776334))

(assert (=> bs!1301670 m!6593904))

(declare-fun m!6594724 () Bool)

(assert (=> bs!1301670 m!6594724))

(declare-fun m!6594726 () Bool)

(assert (=> bs!1301670 m!6594726))

(assert (=> bs!1301670 m!6594702))

(assert (=> bs!1301670 m!6593904))

(assert (=> bs!1301670 m!6593906))

(assert (=> b!5620378 d!1776334))

(declare-fun bs!1301671 () Bool)

(declare-fun d!1776336 () Bool)

(assert (= bs!1301671 (and d!1776336 b!5621045)))

(declare-fun lambda!301799 () Int)

(assert (=> bs!1301671 (not (= lambda!301799 lambda!301776))))

(declare-fun bs!1301672 () Bool)

(assert (= bs!1301672 (and d!1776336 b!5620378)))

(assert (=> bs!1301672 (not (= lambda!301799 lambda!301729))))

(declare-fun bs!1301673 () Bool)

(assert (= bs!1301673 (and d!1776336 b!5621046)))

(assert (=> bs!1301673 (not (= lambda!301799 lambda!301777))))

(declare-fun bs!1301674 () Bool)

(assert (= bs!1301674 (and d!1776336 b!5621245)))

(assert (=> bs!1301674 (not (= lambda!301799 lambda!301788))))

(declare-fun bs!1301675 () Bool)

(assert (= bs!1301675 (and d!1776336 d!1776334)))

(assert (=> bs!1301675 (= lambda!301799 lambda!301794)))

(declare-fun bs!1301676 () Bool)

(assert (= bs!1301676 (and d!1776336 b!5621270)))

(assert (=> bs!1301676 (not (= lambda!301799 lambda!301790))))

(assert (=> bs!1301672 (= lambda!301799 lambda!301728)))

(declare-fun bs!1301677 () Bool)

(assert (= bs!1301677 (and d!1776336 b!5621271)))

(assert (=> bs!1301677 (not (= lambda!301799 lambda!301791))))

(declare-fun bs!1301678 () Bool)

(assert (= bs!1301678 (and d!1776336 b!5621246)))

(assert (=> bs!1301678 (not (= lambda!301799 lambda!301789))))

(assert (=> d!1776336 true))

(assert (=> d!1776336 true))

(assert (=> d!1776336 true))

(declare-fun lambda!301800 () Int)

(assert (=> bs!1301671 (not (= lambda!301800 lambda!301776))))

(assert (=> bs!1301672 (= lambda!301800 lambda!301729)))

(assert (=> bs!1301673 (= lambda!301800 lambda!301777)))

(assert (=> bs!1301674 (not (= lambda!301800 lambda!301788))))

(assert (=> bs!1301675 (not (= lambda!301800 lambda!301794))))

(assert (=> bs!1301676 (not (= lambda!301800 lambda!301790))))

(assert (=> bs!1301672 (not (= lambda!301800 lambda!301728))))

(declare-fun bs!1301679 () Bool)

(assert (= bs!1301679 d!1776336))

(assert (=> bs!1301679 (not (= lambda!301800 lambda!301799))))

(assert (=> bs!1301677 (= (and (= (regOne!31722 r!7292) (regOne!31722 lt!2260009)) (= (regTwo!31722 r!7292) (regTwo!31722 lt!2260009))) (= lambda!301800 lambda!301791))))

(assert (=> bs!1301678 (= (and (= (regOne!31722 r!7292) (regOne!31722 lt!2259977)) (= (regTwo!31722 r!7292) (regTwo!31722 lt!2259977))) (= lambda!301800 lambda!301789))))

(assert (=> d!1776336 true))

(assert (=> d!1776336 true))

(assert (=> d!1776336 true))

(assert (=> d!1776336 (= (Exists!2705 lambda!301799) (Exists!2705 lambda!301800))))

(declare-fun lt!2260148 () Unit!155932)

(declare-fun choose!42573 (Regex!15605 Regex!15605 List!63115) Unit!155932)

(assert (=> d!1776336 (= lt!2260148 (choose!42573 (regOne!31722 r!7292) (regTwo!31722 r!7292) s!2326))))

(assert (=> d!1776336 (validRegex!7341 (regOne!31722 r!7292))))

(assert (=> d!1776336 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1334 (regOne!31722 r!7292) (regTwo!31722 r!7292) s!2326) lt!2260148)))

(declare-fun m!6594728 () Bool)

(assert (=> bs!1301679 m!6594728))

(declare-fun m!6594730 () Bool)

(assert (=> bs!1301679 m!6594730))

(declare-fun m!6594732 () Bool)

(assert (=> bs!1301679 m!6594732))

(assert (=> bs!1301679 m!6594702))

(assert (=> b!5620378 d!1776336))

(declare-fun d!1776338 () Bool)

(declare-fun isEmpty!34823 (Option!15614) Bool)

(assert (=> d!1776338 (= (isDefined!12317 (findConcatSeparation!2028 (regOne!31722 r!7292) (regTwo!31722 r!7292) Nil!62991 s!2326 s!2326)) (not (isEmpty!34823 (findConcatSeparation!2028 (regOne!31722 r!7292) (regTwo!31722 r!7292) Nil!62991 s!2326 s!2326))))))

(declare-fun bs!1301680 () Bool)

(assert (= bs!1301680 d!1776338))

(assert (=> bs!1301680 m!6593904))

(declare-fun m!6594734 () Bool)

(assert (=> bs!1301680 m!6594734))

(assert (=> b!5620378 d!1776338))

(declare-fun b!5621329 () Bool)

(declare-fun e!3465234 () Bool)

(declare-fun tp!1556696 () Bool)

(assert (=> b!5621329 (= e!3465234 tp!1556696)))

(declare-fun b!5621327 () Bool)

(assert (=> b!5621327 (= e!3465234 tp_is_empty!40463)))

(assert (=> b!5620380 (= tp!1556627 e!3465234)))

(declare-fun b!5621328 () Bool)

(declare-fun tp!1556698 () Bool)

(declare-fun tp!1556700 () Bool)

(assert (=> b!5621328 (= e!3465234 (and tp!1556698 tp!1556700))))

(declare-fun b!5621330 () Bool)

(declare-fun tp!1556699 () Bool)

(declare-fun tp!1556697 () Bool)

(assert (=> b!5621330 (= e!3465234 (and tp!1556699 tp!1556697))))

(assert (= (and b!5620380 ((_ is ElementMatch!15605) (regOne!31722 r!7292))) b!5621327))

(assert (= (and b!5620380 ((_ is Concat!24450) (regOne!31722 r!7292))) b!5621328))

(assert (= (and b!5620380 ((_ is Star!15605) (regOne!31722 r!7292))) b!5621329))

(assert (= (and b!5620380 ((_ is Union!15605) (regOne!31722 r!7292))) b!5621330))

(declare-fun b!5621333 () Bool)

(declare-fun e!3465235 () Bool)

(declare-fun tp!1556701 () Bool)

(assert (=> b!5621333 (= e!3465235 tp!1556701)))

(declare-fun b!5621331 () Bool)

(assert (=> b!5621331 (= e!3465235 tp_is_empty!40463)))

(assert (=> b!5620380 (= tp!1556623 e!3465235)))

(declare-fun b!5621332 () Bool)

(declare-fun tp!1556703 () Bool)

(declare-fun tp!1556705 () Bool)

(assert (=> b!5621332 (= e!3465235 (and tp!1556703 tp!1556705))))

(declare-fun b!5621334 () Bool)

(declare-fun tp!1556704 () Bool)

(declare-fun tp!1556702 () Bool)

(assert (=> b!5621334 (= e!3465235 (and tp!1556704 tp!1556702))))

(assert (= (and b!5620380 ((_ is ElementMatch!15605) (regTwo!31722 r!7292))) b!5621331))

(assert (= (and b!5620380 ((_ is Concat!24450) (regTwo!31722 r!7292))) b!5621332))

(assert (= (and b!5620380 ((_ is Star!15605) (regTwo!31722 r!7292))) b!5621333))

(assert (= (and b!5620380 ((_ is Union!15605) (regTwo!31722 r!7292))) b!5621334))

(declare-fun condSetEmpty!37502 () Bool)

(assert (=> setNonEmpty!37496 (= condSetEmpty!37502 (= setRest!37496 ((as const (Array Context!9978 Bool)) false)))))

(declare-fun setRes!37502 () Bool)

(assert (=> setNonEmpty!37496 (= tp!1556626 setRes!37502)))

(declare-fun setIsEmpty!37502 () Bool)

(assert (=> setIsEmpty!37502 setRes!37502))

(declare-fun tp!1556711 () Bool)

(declare-fun e!3465238 () Bool)

(declare-fun setNonEmpty!37502 () Bool)

(declare-fun setElem!37502 () Context!9978)

(assert (=> setNonEmpty!37502 (= setRes!37502 (and tp!1556711 (inv!82259 setElem!37502) e!3465238))))

(declare-fun setRest!37502 () (InoxSet Context!9978))

(assert (=> setNonEmpty!37502 (= setRest!37496 ((_ map or) (store ((as const (Array Context!9978 Bool)) false) setElem!37502 true) setRest!37502))))

(declare-fun b!5621339 () Bool)

(declare-fun tp!1556710 () Bool)

(assert (=> b!5621339 (= e!3465238 tp!1556710)))

(assert (= (and setNonEmpty!37496 condSetEmpty!37502) setIsEmpty!37502))

(assert (= (and setNonEmpty!37496 (not condSetEmpty!37502)) setNonEmpty!37502))

(assert (= setNonEmpty!37502 b!5621339))

(declare-fun m!6594736 () Bool)

(assert (=> setNonEmpty!37502 m!6594736))

(declare-fun b!5621344 () Bool)

(declare-fun e!3465241 () Bool)

(declare-fun tp!1556716 () Bool)

(declare-fun tp!1556717 () Bool)

(assert (=> b!5621344 (= e!3465241 (and tp!1556716 tp!1556717))))

(assert (=> b!5620369 (= tp!1556621 e!3465241)))

(assert (= (and b!5620369 ((_ is Cons!62990) (exprs!5489 (h!69440 zl!343)))) b!5621344))

(declare-fun b!5621349 () Bool)

(declare-fun e!3465244 () Bool)

(declare-fun tp!1556720 () Bool)

(assert (=> b!5621349 (= e!3465244 (and tp_is_empty!40463 tp!1556720))))

(assert (=> b!5620381 (= tp!1556618 e!3465244)))

(assert (= (and b!5620381 ((_ is Cons!62991) (t!376405 s!2326))) b!5621349))

(declare-fun b!5621357 () Bool)

(declare-fun e!3465250 () Bool)

(declare-fun tp!1556725 () Bool)

(assert (=> b!5621357 (= e!3465250 tp!1556725)))

(declare-fun b!5621356 () Bool)

(declare-fun e!3465249 () Bool)

(declare-fun tp!1556726 () Bool)

(assert (=> b!5621356 (= e!3465249 (and (inv!82259 (h!69440 (t!376406 zl!343))) e!3465250 tp!1556726))))

(assert (=> b!5620370 (= tp!1556624 e!3465249)))

(assert (= b!5621356 b!5621357))

(assert (= (and b!5620370 ((_ is Cons!62992) (t!376406 zl!343))) b!5621356))

(declare-fun m!6594738 () Bool)

(assert (=> b!5621356 m!6594738))

(declare-fun b!5621360 () Bool)

(declare-fun e!3465251 () Bool)

(declare-fun tp!1556727 () Bool)

(assert (=> b!5621360 (= e!3465251 tp!1556727)))

(declare-fun b!5621358 () Bool)

(assert (=> b!5621358 (= e!3465251 tp_is_empty!40463)))

(assert (=> b!5620391 (= tp!1556625 e!3465251)))

(declare-fun b!5621359 () Bool)

(declare-fun tp!1556729 () Bool)

(declare-fun tp!1556731 () Bool)

(assert (=> b!5621359 (= e!3465251 (and tp!1556729 tp!1556731))))

(declare-fun b!5621361 () Bool)

(declare-fun tp!1556730 () Bool)

(declare-fun tp!1556728 () Bool)

(assert (=> b!5621361 (= e!3465251 (and tp!1556730 tp!1556728))))

(assert (= (and b!5620391 ((_ is ElementMatch!15605) (regOne!31723 r!7292))) b!5621358))

(assert (= (and b!5620391 ((_ is Concat!24450) (regOne!31723 r!7292))) b!5621359))

(assert (= (and b!5620391 ((_ is Star!15605) (regOne!31723 r!7292))) b!5621360))

(assert (= (and b!5620391 ((_ is Union!15605) (regOne!31723 r!7292))) b!5621361))

(declare-fun b!5621364 () Bool)

(declare-fun e!3465252 () Bool)

(declare-fun tp!1556732 () Bool)

(assert (=> b!5621364 (= e!3465252 tp!1556732)))

(declare-fun b!5621362 () Bool)

(assert (=> b!5621362 (= e!3465252 tp_is_empty!40463)))

(assert (=> b!5620391 (= tp!1556620 e!3465252)))

(declare-fun b!5621363 () Bool)

(declare-fun tp!1556734 () Bool)

(declare-fun tp!1556736 () Bool)

(assert (=> b!5621363 (= e!3465252 (and tp!1556734 tp!1556736))))

(declare-fun b!5621365 () Bool)

(declare-fun tp!1556735 () Bool)

(declare-fun tp!1556733 () Bool)

(assert (=> b!5621365 (= e!3465252 (and tp!1556735 tp!1556733))))

(assert (= (and b!5620391 ((_ is ElementMatch!15605) (regTwo!31723 r!7292))) b!5621362))

(assert (= (and b!5620391 ((_ is Concat!24450) (regTwo!31723 r!7292))) b!5621363))

(assert (= (and b!5620391 ((_ is Star!15605) (regTwo!31723 r!7292))) b!5621364))

(assert (= (and b!5620391 ((_ is Union!15605) (regTwo!31723 r!7292))) b!5621365))

(declare-fun b!5621368 () Bool)

(declare-fun e!3465253 () Bool)

(declare-fun tp!1556737 () Bool)

(assert (=> b!5621368 (= e!3465253 tp!1556737)))

(declare-fun b!5621366 () Bool)

(assert (=> b!5621366 (= e!3465253 tp_is_empty!40463)))

(assert (=> b!5620375 (= tp!1556622 e!3465253)))

(declare-fun b!5621367 () Bool)

(declare-fun tp!1556739 () Bool)

(declare-fun tp!1556741 () Bool)

(assert (=> b!5621367 (= e!3465253 (and tp!1556739 tp!1556741))))

(declare-fun b!5621369 () Bool)

(declare-fun tp!1556740 () Bool)

(declare-fun tp!1556738 () Bool)

(assert (=> b!5621369 (= e!3465253 (and tp!1556740 tp!1556738))))

(assert (= (and b!5620375 ((_ is ElementMatch!15605) (reg!15934 r!7292))) b!5621366))

(assert (= (and b!5620375 ((_ is Concat!24450) (reg!15934 r!7292))) b!5621367))

(assert (= (and b!5620375 ((_ is Star!15605) (reg!15934 r!7292))) b!5621368))

(assert (= (and b!5620375 ((_ is Union!15605) (reg!15934 r!7292))) b!5621369))

(declare-fun b!5621370 () Bool)

(declare-fun e!3465254 () Bool)

(declare-fun tp!1556742 () Bool)

(declare-fun tp!1556743 () Bool)

(assert (=> b!5621370 (= e!3465254 (and tp!1556742 tp!1556743))))

(assert (=> b!5620377 (= tp!1556619 e!3465254)))

(assert (= (and b!5620377 ((_ is Cons!62990) (exprs!5489 setElem!37496))) b!5621370))

(declare-fun b_lambda!212709 () Bool)

(assert (= b_lambda!212707 (or b!5620372 b_lambda!212709)))

(declare-fun bs!1301681 () Bool)

(declare-fun d!1776340 () Bool)

(assert (= bs!1301681 (and d!1776340 b!5620372)))

(assert (=> bs!1301681 (= (dynLambda!24636 lambda!301730 (h!69440 zl!343)) (derivationStepZipperUp!873 (h!69440 zl!343) (h!69439 s!2326)))))

(assert (=> bs!1301681 m!6593930))

(assert (=> d!1776286 d!1776340))

(declare-fun b_lambda!212711 () Bool)

(assert (= b_lambda!212703 (or b!5620372 b_lambda!212711)))

(declare-fun bs!1301682 () Bool)

(declare-fun d!1776342 () Bool)

(assert (= bs!1301682 (and d!1776342 b!5620372)))

(assert (=> bs!1301682 (= (dynLambda!24636 lambda!301730 lt!2259992) (derivationStepZipperUp!873 lt!2259992 (h!69439 s!2326)))))

(assert (=> bs!1301682 m!6593856))

(assert (=> d!1776264 d!1776342))

(declare-fun b_lambda!212713 () Bool)

(assert (= b_lambda!212705 (or b!5620372 b_lambda!212713)))

(declare-fun bs!1301683 () Bool)

(declare-fun d!1776344 () Bool)

(assert (= bs!1301683 (and d!1776344 b!5620372)))

(assert (=> bs!1301683 (= (dynLambda!24636 lambda!301730 lt!2259993) (derivationStepZipperUp!873 lt!2259993 (h!69439 s!2326)))))

(assert (=> bs!1301683 m!6593858))

(assert (=> d!1776266 d!1776344))

(check-sat (not d!1776318) (not d!1776332) (not b!5620924) (not bm!423245) (not d!1776254) (not b!5621367) (not bm!423247) (not b!5621363) (not b!5621359) (not d!1776324) (not b!5621127) (not b!5621188) (not b!5621230) (not d!1776264) (not bm!423261) (not b!5621163) (not b!5621090) (not b!5621193) (not b!5621229) (not b!5621203) (not d!1776236) (not d!1776304) (not b!5621137) (not b!5621109) (not b!5621224) (not b_lambda!212709) (not b!5621113) (not b!5621094) (not b!5620987) (not bm!423264) (not d!1776266) (not b!5620791) (not d!1776290) (not d!1776242) (not b!5621263) (not d!1776270) (not b!5621199) (not b!5621003) (not bm!423278) (not b!5621107) (not b!5621365) (not b!5621240) (not b!5621368) (not b!5621344) (not b!5621099) (not b!5621204) (not d!1776294) (not d!1776258) (not b!5621255) (not bm!423227) (not b!5621142) (not b!5621221) (not d!1776306) (not b!5621260) (not b!5621144) (not bm!423268) (not b!5621356) (not b!5621328) (not b!5620891) (not b!5621332) (not bm!423274) (not b!5620893) (not b!5621369) (not b!5621329) (not b!5621256) (not b!5621207) (not bm!423226) (not b!5621158) (not d!1776326) (not d!1776336) (not bs!1301682) (not bm!423266) (not d!1776252) (not b_lambda!212713) (not b!5621130) (not d!1776286) (not b!5621361) (not b!5621266) (not d!1776292) (not b!5620898) (not b!5621233) (not b!5621333) (not d!1776230) (not b!5620894) tp_is_empty!40463 (not b!5621189) (not b!5621088) (not b!5621162) (not b!5621202) (not d!1776338) (not b!5621218) (not b!5621186) (not bm!423267) (not bs!1301683) (not bm!423258) (not bm!423280) (not b!5621262) (not d!1776220) (not bm!423279) (not b!5621227) (not b!5621298) (not b!5621273) (not b!5621160) (not bm!423272) (not b!5621301) (not d!1776328) (not bm!423265) (not d!1776218) (not bm!423244) (not b!5621100) (not b!5621225) (not bm!423251) (not bm!423277) (not b!5621008) (not b!5620927) (not b!5620925) (not b!5620998) (not b!5621226) (not b!5620897) (not b!5621083) (not d!1776260) (not d!1776272) (not b!5621211) (not d!1776298) (not b!5621215) (not b!5621206) (not bs!1301681) (not b!5621192) (not b!5621239) (not b!5621105) (not b!5621299) (not b!5621217) (not b!5620923) (not b!5621156) (not d!1776308) (not b!5620954) (not b!5621370) (not b!5621364) (not b!5621304) (not b!5621139) (not d!1776330) (not d!1776262) (not b!5621247) (not b!5621223) (not b!5621164) (not b!5621096) (not b!5621201) (not b!5621303) (not b!5621360) (not b!5621000) (not b!5621112) (not b!5621357) (not b!5621334) (not b!5621235) (not b!5621084) (not b!5621236) (not b!5621047) (not b!5621048) (not b!5621190) (not bm!423275) (not b!5620926) (not b!5621339) (not b!5621110) (not d!1776280) (not d!1776296) (not b!5620892) (not d!1776334) (not setNonEmpty!37502) (not b!5620999) (not d!1776316) (not bm!423271) (not b!5621210) (not b!5621205) (not d!1776250) (not b!5621272) (not bm!423241) (not bm!423250) (not d!1776320) (not d!1776300) (not b!5621132) (not b!5621091) (not bm!423257) (not d!1776188) (not b!5621097) (not d!1776174) (not d!1776240) (not d!1776238) (not b!5621349) (not b!5621111) (not b!5621125) (not b!5621297) (not d!1776312) (not bm!423276) (not b!5621237) (not d!1776228) (not b!5621134) (not d!1776164) (not b!5620792) (not b!5621234) (not b!5621103) (not b!5621102) (not d!1776216) (not b_lambda!212711) (not b!5621330) (not d!1776310) (not b!5621098) (not d!1776276) (not d!1776302) (not b!5621129) (not b!5620895) (not b!5621248) (not b!5621185))
(check-sat)

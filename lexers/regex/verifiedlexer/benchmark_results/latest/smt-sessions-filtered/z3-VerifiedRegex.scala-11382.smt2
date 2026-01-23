; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!605986 () Bool)

(assert start!605986)

(declare-fun b!5998489 () Bool)

(assert (=> b!5998489 true))

(assert (=> b!5998489 true))

(declare-fun lambda!327356 () Int)

(declare-fun lambda!327355 () Int)

(assert (=> b!5998489 (not (= lambda!327356 lambda!327355))))

(assert (=> b!5998489 true))

(assert (=> b!5998489 true))

(declare-fun b!5998487 () Bool)

(assert (=> b!5998487 true))

(declare-fun b!5998472 () Bool)

(declare-fun e!3666460 () Bool)

(declare-fun tp!1668672 () Bool)

(assert (=> b!5998472 (= e!3666460 tp!1668672)))

(declare-fun b!5998473 () Bool)

(declare-fun res!2503761 () Bool)

(declare-fun e!3666462 () Bool)

(assert (=> b!5998473 (=> res!2503761 e!3666462)))

(declare-datatypes ((C!32292 0))(
  ( (C!32293 (val!25848 Int)) )
))
(declare-datatypes ((Regex!16011 0))(
  ( (ElementMatch!16011 (c!1071586 C!32292)) (Concat!24856 (regOne!32534 Regex!16011) (regTwo!32534 Regex!16011)) (EmptyExpr!16011) (Star!16011 (reg!16340 Regex!16011)) (EmptyLang!16011) (Union!16011 (regOne!32535 Regex!16011) (regTwo!32535 Regex!16011)) )
))
(declare-fun r!7292 () Regex!16011)

(declare-datatypes ((List!64332 0))(
  ( (Nil!64208) (Cons!64208 (h!70656 Regex!16011) (t!377753 List!64332)) )
))
(declare-datatypes ((Context!10790 0))(
  ( (Context!10791 (exprs!5895 List!64332)) )
))
(declare-datatypes ((List!64333 0))(
  ( (Nil!64209) (Cons!64209 (h!70657 Context!10790) (t!377754 List!64333)) )
))
(declare-fun zl!343 () List!64333)

(declare-fun generalisedConcat!1608 (List!64332) Regex!16011)

(assert (=> b!5998473 (= res!2503761 (not (= r!7292 (generalisedConcat!1608 (exprs!5895 (h!70657 zl!343))))))))

(declare-fun b!5998475 () Bool)

(declare-fun e!3666465 () Bool)

(declare-fun tp!1668669 () Bool)

(assert (=> b!5998475 (= e!3666465 tp!1668669)))

(declare-fun b!5998476 () Bool)

(declare-fun res!2503753 () Bool)

(assert (=> b!5998476 (=> res!2503753 e!3666462)))

(get-info :version)

(assert (=> b!5998476 (= res!2503753 (or ((_ is EmptyExpr!16011) r!7292) ((_ is EmptyLang!16011) r!7292) ((_ is ElementMatch!16011) r!7292) ((_ is Union!16011) r!7292) (not ((_ is Concat!24856) r!7292))))))

(declare-fun b!5998477 () Bool)

(declare-fun tp_is_empty!41275 () Bool)

(assert (=> b!5998477 (= e!3666460 tp_is_empty!41275)))

(declare-fun b!5998478 () Bool)

(declare-fun e!3666456 () Bool)

(declare-fun e!3666457 () Bool)

(assert (=> b!5998478 (= e!3666456 e!3666457)))

(declare-fun res!2503767 () Bool)

(assert (=> b!5998478 (=> res!2503767 e!3666457)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2318660 () (InoxSet Context!10790))

(declare-fun lt!2318673 () (InoxSet Context!10790))

(assert (=> b!5998478 (= res!2503767 (not (= lt!2318660 lt!2318673)))))

(declare-datatypes ((List!64334 0))(
  ( (Nil!64210) (Cons!64210 (h!70658 C!32292) (t!377755 List!64334)) )
))
(declare-fun s!2326 () List!64334)

(declare-fun lt!2318656 () Context!10790)

(declare-fun derivationStepZipperDown!1261 (Regex!16011 Context!10790 C!32292) (InoxSet Context!10790))

(assert (=> b!5998478 (= lt!2318673 (derivationStepZipperDown!1261 r!7292 lt!2318656 (h!70658 s!2326)))))

(assert (=> b!5998478 (= lt!2318656 (Context!10791 Nil!64208))))

(declare-fun lt!2318655 () Context!10790)

(declare-fun derivationStepZipperUp!1187 (Context!10790 C!32292) (InoxSet Context!10790))

(assert (=> b!5998478 (= lt!2318660 (derivationStepZipperUp!1187 lt!2318655 (h!70658 s!2326)))))

(assert (=> b!5998478 (= lt!2318655 (Context!10791 (Cons!64208 r!7292 Nil!64208)))))

(declare-fun lt!2318652 () (InoxSet Context!10790))

(declare-fun z!1189 () (InoxSet Context!10790))

(declare-fun derivationStepZipper!1992 ((InoxSet Context!10790) C!32292) (InoxSet Context!10790))

(assert (=> b!5998478 (= lt!2318652 (derivationStepZipper!1992 z!1189 (h!70658 s!2326)))))

(declare-fun tp!1668675 () Bool)

(declare-fun b!5998479 () Bool)

(declare-fun e!3666451 () Bool)

(declare-fun inv!83274 (Context!10790) Bool)

(assert (=> b!5998479 (= e!3666451 (and (inv!83274 (h!70657 zl!343)) e!3666465 tp!1668675))))

(declare-fun b!5998480 () Bool)

(declare-fun res!2503772 () Bool)

(declare-fun e!3666452 () Bool)

(assert (=> b!5998480 (=> res!2503772 e!3666452)))

(declare-fun lt!2318661 () (InoxSet Context!10790))

(declare-fun lt!2318671 () (InoxSet Context!10790))

(declare-fun lt!2318659 () (InoxSet Context!10790))

(declare-fun lt!2318653 () (InoxSet Context!10790))

(assert (=> b!5998480 (= res!2503772 (or (not (= lt!2318659 ((_ map or) lt!2318661 lt!2318653))) (not (= lt!2318659 lt!2318671)) (not (= lt!2318659 lt!2318652))))))

(declare-fun b!5998481 () Bool)

(declare-fun res!2503755 () Bool)

(declare-fun e!3666454 () Bool)

(assert (=> b!5998481 (=> res!2503755 e!3666454)))

(declare-fun lt!2318663 () Context!10790)

(declare-fun lt!2318662 () Int)

(declare-fun zipperDepth!260 (List!64333) Int)

(assert (=> b!5998481 (= res!2503755 (>= (zipperDepth!260 (Cons!64209 lt!2318663 Nil!64209)) lt!2318662))))

(declare-fun b!5998482 () Bool)

(declare-fun res!2503759 () Bool)

(declare-fun e!3666459 () Bool)

(assert (=> b!5998482 (=> (not res!2503759) (not e!3666459))))

(declare-fun toList!9795 ((InoxSet Context!10790)) List!64333)

(assert (=> b!5998482 (= res!2503759 (= (toList!9795 z!1189) zl!343))))

(declare-fun b!5998483 () Bool)

(declare-fun res!2503771 () Bool)

(declare-fun e!3666466 () Bool)

(assert (=> b!5998483 (=> res!2503771 e!3666466)))

(declare-fun lt!2318668 () (InoxSet Context!10790))

(declare-fun matchZipper!2047 ((InoxSet Context!10790) List!64334) Bool)

(assert (=> b!5998483 (= res!2503771 (not (= (matchZipper!2047 lt!2318668 s!2326) (matchZipper!2047 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (t!377755 s!2326)))))))

(declare-fun b!5998484 () Bool)

(declare-fun e!3666458 () Bool)

(assert (=> b!5998484 (= e!3666458 (inv!83274 lt!2318663))))

(declare-fun lt!2318683 () Regex!16011)

(declare-fun lt!2318667 () Bool)

(declare-fun matchR!8194 (Regex!16011 List!64334) Bool)

(assert (=> b!5998484 (= (matchR!8194 lt!2318683 s!2326) lt!2318667)))

(declare-fun lt!2318664 () List!64333)

(declare-fun lt!2318676 () (InoxSet Context!10790))

(declare-datatypes ((Unit!157293 0))(
  ( (Unit!157294) )
))
(declare-fun lt!2318674 () Unit!157293)

(declare-fun theoremZipperRegexEquiv!703 ((InoxSet Context!10790) List!64333 Regex!16011 List!64334) Unit!157293)

(assert (=> b!5998484 (= lt!2318674 (theoremZipperRegexEquiv!703 lt!2318676 lt!2318664 lt!2318683 s!2326))))

(declare-fun b!5998485 () Bool)

(declare-fun tp!1668671 () Bool)

(declare-fun tp!1668668 () Bool)

(assert (=> b!5998485 (= e!3666460 (and tp!1668671 tp!1668668))))

(declare-fun b!5998486 () Bool)

(declare-fun res!2503768 () Bool)

(assert (=> b!5998486 (=> res!2503768 e!3666456)))

(declare-fun isEmpty!36101 (List!64332) Bool)

(assert (=> b!5998486 (= res!2503768 (not (isEmpty!36101 (t!377753 (exprs!5895 (h!70657 zl!343))))))))

(declare-fun e!3666455 () Bool)

(assert (=> b!5998487 (= e!3666457 e!3666455)))

(declare-fun res!2503751 () Bool)

(assert (=> b!5998487 (=> res!2503751 e!3666455)))

(assert (=> b!5998487 (= res!2503751 (not (= lt!2318652 lt!2318673)))))

(declare-fun lambda!327357 () Int)

(declare-fun flatMap!1524 ((InoxSet Context!10790) Int) (InoxSet Context!10790))

(assert (=> b!5998487 (= (flatMap!1524 z!1189 lambda!327357) (derivationStepZipperUp!1187 (h!70657 zl!343) (h!70658 s!2326)))))

(declare-fun lt!2318684 () Unit!157293)

(declare-fun lemmaFlatMapOnSingletonSet!1050 ((InoxSet Context!10790) Context!10790 Int) Unit!157293)

(assert (=> b!5998487 (= lt!2318684 (lemmaFlatMapOnSingletonSet!1050 z!1189 (h!70657 zl!343) lambda!327357))))

(declare-fun b!5998488 () Bool)

(declare-fun res!2503769 () Bool)

(assert (=> b!5998488 (=> res!2503769 e!3666454)))

(declare-fun lt!2318677 () Int)

(declare-fun contextDepth!159 (Context!10790) Int)

(assert (=> b!5998488 (= res!2503769 (>= (contextDepth!159 lt!2318663) lt!2318677))))

(assert (=> b!5998489 (= e!3666462 e!3666456)))

(declare-fun res!2503760 () Bool)

(assert (=> b!5998489 (=> res!2503760 e!3666456)))

(declare-fun lt!2318685 () Bool)

(declare-fun lt!2318670 () Bool)

(assert (=> b!5998489 (= res!2503760 (or (not (= lt!2318670 lt!2318685)) ((_ is Nil!64210) s!2326)))))

(declare-fun Exists!3081 (Int) Bool)

(assert (=> b!5998489 (= (Exists!3081 lambda!327355) (Exists!3081 lambda!327356))))

(declare-fun lt!2318665 () Unit!157293)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1618 (Regex!16011 Regex!16011 List!64334) Unit!157293)

(assert (=> b!5998489 (= lt!2318665 (lemmaExistCutMatchRandMatchRSpecEquivalent!1618 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326))))

(assert (=> b!5998489 (= lt!2318685 (Exists!3081 lambda!327355))))

(declare-datatypes ((tuple2!65980 0))(
  ( (tuple2!65981 (_1!36293 List!64334) (_2!36293 List!64334)) )
))
(declare-datatypes ((Option!15902 0))(
  ( (None!15901) (Some!15901 (v!52012 tuple2!65980)) )
))
(declare-fun isDefined!12605 (Option!15902) Bool)

(declare-fun findConcatSeparation!2316 (Regex!16011 Regex!16011 List!64334 List!64334 List!64334) Option!15902)

(assert (=> b!5998489 (= lt!2318685 (isDefined!12605 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326)))))

(declare-fun lt!2318680 () Unit!157293)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2080 (Regex!16011 Regex!16011 List!64334) Unit!157293)

(assert (=> b!5998489 (= lt!2318680 (lemmaFindConcatSeparationEquivalentToExists!2080 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326))))

(declare-fun b!5998490 () Bool)

(declare-fun e!3666450 () Bool)

(declare-fun e!3666453 () Bool)

(assert (=> b!5998490 (= e!3666450 e!3666453)))

(declare-fun res!2503773 () Bool)

(assert (=> b!5998490 (=> res!2503773 e!3666453)))

(assert (=> b!5998490 (= res!2503773 (not (= lt!2318652 lt!2318671)))))

(declare-fun lt!2318651 () (InoxSet Context!10790))

(assert (=> b!5998490 (= lt!2318671 ((_ map or) lt!2318661 lt!2318651))))

(declare-fun b!5998474 () Bool)

(declare-fun e!3666463 () Bool)

(declare-fun tp!1668670 () Bool)

(assert (=> b!5998474 (= e!3666463 (and tp_is_empty!41275 tp!1668670))))

(declare-fun res!2503763 () Bool)

(assert (=> start!605986 (=> (not res!2503763) (not e!3666459))))

(declare-fun validRegex!7747 (Regex!16011) Bool)

(assert (=> start!605986 (= res!2503763 (validRegex!7747 r!7292))))

(assert (=> start!605986 e!3666459))

(assert (=> start!605986 e!3666460))

(declare-fun condSetEmpty!40676 () Bool)

(assert (=> start!605986 (= condSetEmpty!40676 (= z!1189 ((as const (Array Context!10790 Bool)) false)))))

(declare-fun setRes!40676 () Bool)

(assert (=> start!605986 setRes!40676))

(assert (=> start!605986 e!3666451))

(assert (=> start!605986 e!3666463))

(declare-fun b!5998491 () Bool)

(declare-fun res!2503764 () Bool)

(assert (=> b!5998491 (=> res!2503764 e!3666462)))

(declare-fun isEmpty!36102 (List!64333) Bool)

(assert (=> b!5998491 (= res!2503764 (not (isEmpty!36102 (t!377754 zl!343))))))

(declare-fun b!5998492 () Bool)

(assert (=> b!5998492 (= e!3666455 e!3666450)))

(declare-fun res!2503766 () Bool)

(assert (=> b!5998492 (=> res!2503766 e!3666450)))

(declare-fun nullable!6006 (Regex!16011) Bool)

(assert (=> b!5998492 (= res!2503766 (not (nullable!6006 (regOne!32534 r!7292))))))

(assert (=> b!5998492 (= lt!2318651 (derivationStepZipperDown!1261 (regTwo!32534 r!7292) lt!2318656 (h!70658 s!2326)))))

(assert (=> b!5998492 (= lt!2318661 (derivationStepZipperDown!1261 (regOne!32534 r!7292) lt!2318663 (h!70658 s!2326)))))

(assert (=> b!5998492 (= (flatMap!1524 lt!2318668 lambda!327357) (derivationStepZipperUp!1187 lt!2318663 (h!70658 s!2326)))))

(declare-fun lt!2318682 () Unit!157293)

(assert (=> b!5998492 (= lt!2318682 (lemmaFlatMapOnSingletonSet!1050 lt!2318668 lt!2318663 lambda!327357))))

(declare-fun lt!2318654 () Context!10790)

(assert (=> b!5998492 (= (flatMap!1524 lt!2318676 lambda!327357) (derivationStepZipperUp!1187 lt!2318654 (h!70658 s!2326)))))

(declare-fun lt!2318681 () Unit!157293)

(assert (=> b!5998492 (= lt!2318681 (lemmaFlatMapOnSingletonSet!1050 lt!2318676 lt!2318654 lambda!327357))))

(assert (=> b!5998492 (= lt!2318653 (derivationStepZipperUp!1187 lt!2318663 (h!70658 s!2326)))))

(assert (=> b!5998492 (= lt!2318659 (derivationStepZipperUp!1187 lt!2318654 (h!70658 s!2326)))))

(assert (=> b!5998492 (= lt!2318668 (store ((as const (Array Context!10790 Bool)) false) lt!2318663 true))))

(declare-fun lt!2318672 () List!64332)

(assert (=> b!5998492 (= lt!2318663 (Context!10791 lt!2318672))))

(assert (=> b!5998492 (= lt!2318676 (store ((as const (Array Context!10790 Bool)) false) lt!2318654 true))))

(assert (=> b!5998492 (= lt!2318654 (Context!10791 (Cons!64208 (regOne!32534 r!7292) lt!2318672)))))

(assert (=> b!5998492 (= lt!2318672 (Cons!64208 (regTwo!32534 r!7292) Nil!64208))))

(declare-fun b!5998493 () Bool)

(declare-fun res!2503749 () Bool)

(assert (=> b!5998493 (=> (not res!2503749) (not e!3666459))))

(declare-fun unfocusZipper!1753 (List!64333) Regex!16011)

(assert (=> b!5998493 (= res!2503749 (= r!7292 (unfocusZipper!1753 zl!343)))))

(declare-fun b!5998494 () Bool)

(declare-fun e!3666449 () Bool)

(declare-fun tp!1668674 () Bool)

(assert (=> b!5998494 (= e!3666449 tp!1668674)))

(declare-fun b!5998495 () Bool)

(declare-fun tp!1668673 () Bool)

(declare-fun tp!1668676 () Bool)

(assert (=> b!5998495 (= e!3666460 (and tp!1668673 tp!1668676))))

(declare-fun b!5998496 () Bool)

(declare-fun e!3666461 () Bool)

(assert (=> b!5998496 (= e!3666461 (matchZipper!2047 lt!2318651 (t!377755 s!2326)))))

(declare-fun b!5998497 () Bool)

(assert (=> b!5998497 (= e!3666452 e!3666466)))

(declare-fun res!2503752 () Bool)

(assert (=> b!5998497 (=> res!2503752 e!3666466)))

(assert (=> b!5998497 (= res!2503752 (not (= lt!2318667 (matchZipper!2047 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (t!377755 s!2326)))))))

(assert (=> b!5998497 (= lt!2318667 (matchZipper!2047 lt!2318676 s!2326))))

(declare-fun b!5998498 () Bool)

(declare-fun res!2503770 () Bool)

(assert (=> b!5998498 (=> res!2503770 e!3666462)))

(declare-fun generalisedUnion!1855 (List!64332) Regex!16011)

(declare-fun unfocusZipperList!1432 (List!64333) List!64332)

(assert (=> b!5998498 (= res!2503770 (not (= r!7292 (generalisedUnion!1855 (unfocusZipperList!1432 zl!343)))))))

(declare-fun b!5998499 () Bool)

(assert (=> b!5998499 (= e!3666459 (not e!3666462))))

(declare-fun res!2503756 () Bool)

(assert (=> b!5998499 (=> res!2503756 e!3666462)))

(assert (=> b!5998499 (= res!2503756 (not ((_ is Cons!64209) zl!343)))))

(declare-fun matchRSpec!3112 (Regex!16011 List!64334) Bool)

(assert (=> b!5998499 (= lt!2318670 (matchRSpec!3112 r!7292 s!2326))))

(assert (=> b!5998499 (= lt!2318670 (matchR!8194 r!7292 s!2326))))

(declare-fun lt!2318679 () Unit!157293)

(declare-fun mainMatchTheorem!3112 (Regex!16011 List!64334) Unit!157293)

(assert (=> b!5998499 (= lt!2318679 (mainMatchTheorem!3112 r!7292 s!2326))))

(declare-fun tp!1668677 () Bool)

(declare-fun setElem!40676 () Context!10790)

(declare-fun setNonEmpty!40676 () Bool)

(assert (=> setNonEmpty!40676 (= setRes!40676 (and tp!1668677 (inv!83274 setElem!40676) e!3666449))))

(declare-fun setRest!40676 () (InoxSet Context!10790))

(assert (=> setNonEmpty!40676 (= z!1189 ((_ map or) (store ((as const (Array Context!10790 Bool)) false) setElem!40676 true) setRest!40676))))

(declare-fun b!5998500 () Bool)

(declare-fun e!3666464 () Bool)

(assert (=> b!5998500 (= e!3666466 e!3666464)))

(declare-fun res!2503762 () Bool)

(assert (=> b!5998500 (=> res!2503762 e!3666464)))

(declare-fun lt!2318658 () Int)

(assert (=> b!5998500 (= res!2503762 (>= lt!2318658 lt!2318677))))

(assert (=> b!5998500 (= lt!2318677 (contextDepth!159 lt!2318655))))

(assert (=> b!5998500 (= lt!2318658 (contextDepth!159 lt!2318654))))

(declare-fun b!5998501 () Bool)

(declare-fun res!2503750 () Bool)

(assert (=> b!5998501 (=> res!2503750 e!3666462)))

(assert (=> b!5998501 (= res!2503750 (not ((_ is Cons!64208) (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!5998502 () Bool)

(assert (=> b!5998502 (= e!3666454 e!3666458)))

(declare-fun res!2503758 () Bool)

(assert (=> b!5998502 (=> res!2503758 e!3666458)))

(declare-fun regexDepth!268 (Regex!16011) Int)

(assert (=> b!5998502 (= res!2503758 (not (= (regexDepth!268 r!7292) (regexDepth!268 lt!2318683))))))

(assert (=> b!5998502 (= lt!2318683 (Concat!24856 (regOne!32534 r!7292) (regTwo!32534 r!7292)))))

(declare-fun b!5998503 () Bool)

(assert (=> b!5998503 (= e!3666464 e!3666454)))

(declare-fun res!2503757 () Bool)

(assert (=> b!5998503 (=> res!2503757 e!3666454)))

(declare-fun lt!2318657 () Int)

(assert (=> b!5998503 (= res!2503757 (>= lt!2318657 lt!2318662))))

(assert (=> b!5998503 (= lt!2318662 (zipperDepth!260 (Cons!64209 lt!2318655 Nil!64209)))))

(assert (=> b!5998503 (= lt!2318657 (zipperDepth!260 lt!2318664))))

(assert (=> b!5998503 (= lt!2318664 (Cons!64209 lt!2318654 Nil!64209))))

(declare-fun setIsEmpty!40676 () Bool)

(assert (=> setIsEmpty!40676 setRes!40676))

(declare-fun b!5998504 () Bool)

(assert (=> b!5998504 (= e!3666453 e!3666452)))

(declare-fun res!2503754 () Bool)

(assert (=> b!5998504 (=> res!2503754 e!3666452)))

(declare-fun lt!2318666 () Bool)

(assert (=> b!5998504 (= res!2503754 (not (= lt!2318666 (matchZipper!2047 lt!2318652 (t!377755 s!2326)))))))

(declare-fun lt!2318678 () Bool)

(assert (=> b!5998504 (= lt!2318678 lt!2318666)))

(assert (=> b!5998504 (= lt!2318666 e!3666461)))

(declare-fun res!2503765 () Bool)

(assert (=> b!5998504 (=> res!2503765 e!3666461)))

(declare-fun lt!2318675 () Bool)

(assert (=> b!5998504 (= res!2503765 lt!2318675)))

(assert (=> b!5998504 (= lt!2318678 (matchZipper!2047 lt!2318671 (t!377755 s!2326)))))

(assert (=> b!5998504 (= lt!2318675 (matchZipper!2047 lt!2318661 (t!377755 s!2326)))))

(declare-fun lt!2318669 () Unit!157293)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!878 ((InoxSet Context!10790) (InoxSet Context!10790) List!64334) Unit!157293)

(assert (=> b!5998504 (= lt!2318669 (lemmaZipperConcatMatchesSameAsBothZippers!878 lt!2318661 lt!2318651 (t!377755 s!2326)))))

(assert (= (and start!605986 res!2503763) b!5998482))

(assert (= (and b!5998482 res!2503759) b!5998493))

(assert (= (and b!5998493 res!2503749) b!5998499))

(assert (= (and b!5998499 (not res!2503756)) b!5998491))

(assert (= (and b!5998491 (not res!2503764)) b!5998473))

(assert (= (and b!5998473 (not res!2503761)) b!5998501))

(assert (= (and b!5998501 (not res!2503750)) b!5998498))

(assert (= (and b!5998498 (not res!2503770)) b!5998476))

(assert (= (and b!5998476 (not res!2503753)) b!5998489))

(assert (= (and b!5998489 (not res!2503760)) b!5998486))

(assert (= (and b!5998486 (not res!2503768)) b!5998478))

(assert (= (and b!5998478 (not res!2503767)) b!5998487))

(assert (= (and b!5998487 (not res!2503751)) b!5998492))

(assert (= (and b!5998492 (not res!2503766)) b!5998490))

(assert (= (and b!5998490 (not res!2503773)) b!5998504))

(assert (= (and b!5998504 (not res!2503765)) b!5998496))

(assert (= (and b!5998504 (not res!2503754)) b!5998480))

(assert (= (and b!5998480 (not res!2503772)) b!5998497))

(assert (= (and b!5998497 (not res!2503752)) b!5998483))

(assert (= (and b!5998483 (not res!2503771)) b!5998500))

(assert (= (and b!5998500 (not res!2503762)) b!5998503))

(assert (= (and b!5998503 (not res!2503757)) b!5998488))

(assert (= (and b!5998488 (not res!2503769)) b!5998481))

(assert (= (and b!5998481 (not res!2503755)) b!5998502))

(assert (= (and b!5998502 (not res!2503758)) b!5998484))

(assert (= (and start!605986 ((_ is ElementMatch!16011) r!7292)) b!5998477))

(assert (= (and start!605986 ((_ is Concat!24856) r!7292)) b!5998495))

(assert (= (and start!605986 ((_ is Star!16011) r!7292)) b!5998472))

(assert (= (and start!605986 ((_ is Union!16011) r!7292)) b!5998485))

(assert (= (and start!605986 condSetEmpty!40676) setIsEmpty!40676))

(assert (= (and start!605986 (not condSetEmpty!40676)) setNonEmpty!40676))

(assert (= setNonEmpty!40676 b!5998494))

(assert (= b!5998479 b!5998475))

(assert (= (and start!605986 ((_ is Cons!64209) zl!343)) b!5998479))

(assert (= (and start!605986 ((_ is Cons!64210) s!2326)) b!5998474))

(declare-fun m!6876902 () Bool)

(assert (=> b!5998502 m!6876902))

(declare-fun m!6876904 () Bool)

(assert (=> b!5998502 m!6876904))

(declare-fun m!6876906 () Bool)

(assert (=> b!5998488 m!6876906))

(declare-fun m!6876908 () Bool)

(assert (=> b!5998482 m!6876908))

(declare-fun m!6876910 () Bool)

(assert (=> b!5998503 m!6876910))

(declare-fun m!6876912 () Bool)

(assert (=> b!5998503 m!6876912))

(declare-fun m!6876914 () Bool)

(assert (=> b!5998484 m!6876914))

(declare-fun m!6876916 () Bool)

(assert (=> b!5998484 m!6876916))

(declare-fun m!6876918 () Bool)

(assert (=> b!5998484 m!6876918))

(declare-fun m!6876920 () Bool)

(assert (=> start!605986 m!6876920))

(declare-fun m!6876922 () Bool)

(assert (=> b!5998498 m!6876922))

(assert (=> b!5998498 m!6876922))

(declare-fun m!6876924 () Bool)

(assert (=> b!5998498 m!6876924))

(declare-fun m!6876926 () Bool)

(assert (=> b!5998496 m!6876926))

(declare-fun m!6876928 () Bool)

(assert (=> b!5998497 m!6876928))

(assert (=> b!5998497 m!6876928))

(declare-fun m!6876930 () Bool)

(assert (=> b!5998497 m!6876930))

(declare-fun m!6876932 () Bool)

(assert (=> b!5998497 m!6876932))

(declare-fun m!6876934 () Bool)

(assert (=> b!5998504 m!6876934))

(declare-fun m!6876936 () Bool)

(assert (=> b!5998504 m!6876936))

(declare-fun m!6876938 () Bool)

(assert (=> b!5998504 m!6876938))

(declare-fun m!6876940 () Bool)

(assert (=> b!5998504 m!6876940))

(declare-fun m!6876942 () Bool)

(assert (=> b!5998489 m!6876942))

(declare-fun m!6876944 () Bool)

(assert (=> b!5998489 m!6876944))

(declare-fun m!6876946 () Bool)

(assert (=> b!5998489 m!6876946))

(assert (=> b!5998489 m!6876942))

(declare-fun m!6876948 () Bool)

(assert (=> b!5998489 m!6876948))

(declare-fun m!6876950 () Bool)

(assert (=> b!5998489 m!6876950))

(assert (=> b!5998489 m!6876944))

(declare-fun m!6876952 () Bool)

(assert (=> b!5998489 m!6876952))

(declare-fun m!6876954 () Bool)

(assert (=> b!5998500 m!6876954))

(declare-fun m!6876956 () Bool)

(assert (=> b!5998500 m!6876956))

(declare-fun m!6876958 () Bool)

(assert (=> b!5998486 m!6876958))

(declare-fun m!6876960 () Bool)

(assert (=> b!5998478 m!6876960))

(declare-fun m!6876962 () Bool)

(assert (=> b!5998478 m!6876962))

(declare-fun m!6876964 () Bool)

(assert (=> b!5998478 m!6876964))

(declare-fun m!6876966 () Bool)

(assert (=> b!5998499 m!6876966))

(declare-fun m!6876968 () Bool)

(assert (=> b!5998499 m!6876968))

(declare-fun m!6876970 () Bool)

(assert (=> b!5998499 m!6876970))

(declare-fun m!6876972 () Bool)

(assert (=> b!5998473 m!6876972))

(declare-fun m!6876974 () Bool)

(assert (=> b!5998491 m!6876974))

(declare-fun m!6876976 () Bool)

(assert (=> b!5998492 m!6876976))

(declare-fun m!6876978 () Bool)

(assert (=> b!5998492 m!6876978))

(declare-fun m!6876980 () Bool)

(assert (=> b!5998492 m!6876980))

(declare-fun m!6876982 () Bool)

(assert (=> b!5998492 m!6876982))

(declare-fun m!6876984 () Bool)

(assert (=> b!5998492 m!6876984))

(declare-fun m!6876986 () Bool)

(assert (=> b!5998492 m!6876986))

(declare-fun m!6876988 () Bool)

(assert (=> b!5998492 m!6876988))

(declare-fun m!6876990 () Bool)

(assert (=> b!5998492 m!6876990))

(declare-fun m!6876992 () Bool)

(assert (=> b!5998492 m!6876992))

(declare-fun m!6876994 () Bool)

(assert (=> b!5998492 m!6876994))

(declare-fun m!6876996 () Bool)

(assert (=> b!5998492 m!6876996))

(declare-fun m!6876998 () Bool)

(assert (=> b!5998493 m!6876998))

(declare-fun m!6877000 () Bool)

(assert (=> b!5998483 m!6877000))

(declare-fun m!6877002 () Bool)

(assert (=> b!5998483 m!6877002))

(assert (=> b!5998483 m!6877002))

(declare-fun m!6877004 () Bool)

(assert (=> b!5998483 m!6877004))

(declare-fun m!6877006 () Bool)

(assert (=> b!5998479 m!6877006))

(declare-fun m!6877008 () Bool)

(assert (=> b!5998487 m!6877008))

(declare-fun m!6877010 () Bool)

(assert (=> b!5998487 m!6877010))

(declare-fun m!6877012 () Bool)

(assert (=> b!5998487 m!6877012))

(declare-fun m!6877014 () Bool)

(assert (=> b!5998481 m!6877014))

(declare-fun m!6877016 () Bool)

(assert (=> setNonEmpty!40676 m!6877016))

(check-sat (not b!5998478) (not b!5998472) (not b!5998504) (not b!5998489) (not b!5998497) (not b!5998474) (not b!5998482) (not b!5998488) (not b!5998479) (not b!5998485) tp_is_empty!41275 (not b!5998500) (not b!5998491) (not b!5998502) (not b!5998493) (not b!5998496) (not b!5998503) (not b!5998473) (not b!5998498) (not b!5998492) (not setNonEmpty!40676) (not b!5998495) (not b!5998475) (not b!5998499) (not b!5998494) (not b!5998483) (not b!5998484) (not b!5998481) (not start!605986) (not b!5998487) (not b!5998486))
(check-sat)
(get-model)

(declare-fun d!1881005 () Bool)

(assert (=> d!1881005 (= (isEmpty!36101 (t!377753 (exprs!5895 (h!70657 zl!343)))) ((_ is Nil!64208) (t!377753 (exprs!5895 (h!70657 zl!343)))))))

(assert (=> b!5998486 d!1881005))

(declare-fun b!5999017 () Bool)

(assert (=> b!5999017 true))

(declare-fun bs!1453502 () Bool)

(declare-fun b!5999019 () Bool)

(assert (= bs!1453502 (and b!5999019 b!5999017)))

(declare-fun lt!2318786 () Int)

(declare-fun lt!2318787 () Int)

(declare-fun lambda!327422 () Int)

(declare-fun lambda!327421 () Int)

(assert (=> bs!1453502 (= (= lt!2318787 lt!2318786) (= lambda!327422 lambda!327421))))

(assert (=> b!5999019 true))

(declare-fun d!1881007 () Bool)

(declare-fun e!3666753 () Bool)

(assert (=> d!1881007 e!3666753))

(declare-fun res!2503920 () Bool)

(assert (=> d!1881007 (=> (not res!2503920) (not e!3666753))))

(assert (=> d!1881007 (= res!2503920 (>= lt!2318787 0))))

(declare-fun e!3666752 () Int)

(assert (=> d!1881007 (= lt!2318787 e!3666752)))

(declare-fun c!1071747 () Bool)

(assert (=> d!1881007 (= c!1071747 ((_ is Cons!64208) (exprs!5895 lt!2318663)))))

(assert (=> d!1881007 (= (contextDepth!159 lt!2318663) lt!2318787)))

(assert (=> b!5999017 (= e!3666752 lt!2318786)))

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!5999017 (= lt!2318786 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 lt!2318663))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))))))

(declare-fun lt!2318789 () Unit!157293)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!58 (List!64332 Int Int) Unit!157293)

(assert (=> b!5999017 (= lt!2318789 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 lt!2318663)) lt!2318786 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))))))

(declare-fun forall!15109 (List!64332 Int) Bool)

(assert (=> b!5999017 (forall!15109 (t!377753 (exprs!5895 lt!2318663)) lambda!327421)))

(declare-fun lt!2318788 () Unit!157293)

(assert (=> b!5999017 (= lt!2318788 lt!2318789)))

(declare-fun b!5999018 () Bool)

(assert (=> b!5999018 (= e!3666752 0)))

(assert (=> b!5999019 (= e!3666753 (forall!15109 (exprs!5895 lt!2318663) lambda!327422))))

(assert (= (and d!1881007 c!1071747) b!5999017))

(assert (= (and d!1881007 (not c!1071747)) b!5999018))

(assert (= (and d!1881007 res!2503920) b!5999019))

(declare-fun m!6877382 () Bool)

(assert (=> b!5999017 m!6877382))

(declare-fun m!6877384 () Bool)

(assert (=> b!5999017 m!6877384))

(declare-fun m!6877386 () Bool)

(assert (=> b!5999017 m!6877386))

(assert (=> b!5999017 m!6877384))

(declare-fun m!6877388 () Bool)

(assert (=> b!5999017 m!6877388))

(assert (=> b!5999017 m!6877384))

(declare-fun m!6877390 () Bool)

(assert (=> b!5999017 m!6877390))

(assert (=> b!5999017 m!6877382))

(declare-fun m!6877392 () Bool)

(assert (=> b!5999019 m!6877392))

(assert (=> b!5998488 d!1881007))

(declare-fun d!1881015 () Bool)

(declare-fun choose!45004 ((InoxSet Context!10790) Int) (InoxSet Context!10790))

(assert (=> d!1881015 (= (flatMap!1524 z!1189 lambda!327357) (choose!45004 z!1189 lambda!327357))))

(declare-fun bs!1453503 () Bool)

(assert (= bs!1453503 d!1881015))

(declare-fun m!6877394 () Bool)

(assert (=> bs!1453503 m!6877394))

(assert (=> b!5998487 d!1881015))

(declare-fun b!5999032 () Bool)

(declare-fun e!3666761 () Bool)

(assert (=> b!5999032 (= e!3666761 (nullable!6006 (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun call!484636 () (InoxSet Context!10790))

(declare-fun b!5999033 () Bool)

(declare-fun e!3666762 () (InoxSet Context!10790))

(assert (=> b!5999033 (= e!3666762 ((_ map or) call!484636 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))) (h!70658 s!2326))))))

(declare-fun bm!484631 () Bool)

(assert (=> bm!484631 (= call!484636 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 (h!70657 zl!343))) (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))) (h!70658 s!2326)))))

(declare-fun d!1881017 () Bool)

(declare-fun c!1071753 () Bool)

(assert (=> d!1881017 (= c!1071753 e!3666761)))

(declare-fun res!2503923 () Bool)

(assert (=> d!1881017 (=> (not res!2503923) (not e!3666761))))

(assert (=> d!1881017 (= res!2503923 ((_ is Cons!64208) (exprs!5895 (h!70657 zl!343))))))

(assert (=> d!1881017 (= (derivationStepZipperUp!1187 (h!70657 zl!343) (h!70658 s!2326)) e!3666762)))

(declare-fun b!5999034 () Bool)

(declare-fun e!3666760 () (InoxSet Context!10790))

(assert (=> b!5999034 (= e!3666762 e!3666760)))

(declare-fun c!1071752 () Bool)

(assert (=> b!5999034 (= c!1071752 ((_ is Cons!64208) (exprs!5895 (h!70657 zl!343))))))

(declare-fun b!5999035 () Bool)

(assert (=> b!5999035 (= e!3666760 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!5999036 () Bool)

(assert (=> b!5999036 (= e!3666760 call!484636)))

(assert (= (and d!1881017 res!2503923) b!5999032))

(assert (= (and d!1881017 c!1071753) b!5999033))

(assert (= (and d!1881017 (not c!1071753)) b!5999034))

(assert (= (and b!5999034 c!1071752) b!5999036))

(assert (= (and b!5999034 (not c!1071752)) b!5999035))

(assert (= (or b!5999033 b!5999036) bm!484631))

(declare-fun m!6877396 () Bool)

(assert (=> b!5999032 m!6877396))

(declare-fun m!6877398 () Bool)

(assert (=> b!5999033 m!6877398))

(declare-fun m!6877400 () Bool)

(assert (=> bm!484631 m!6877400))

(assert (=> b!5998487 d!1881017))

(declare-fun d!1881019 () Bool)

(declare-fun dynLambda!25167 (Int Context!10790) (InoxSet Context!10790))

(assert (=> d!1881019 (= (flatMap!1524 z!1189 lambda!327357) (dynLambda!25167 lambda!327357 (h!70657 zl!343)))))

(declare-fun lt!2318792 () Unit!157293)

(declare-fun choose!45005 ((InoxSet Context!10790) Context!10790 Int) Unit!157293)

(assert (=> d!1881019 (= lt!2318792 (choose!45005 z!1189 (h!70657 zl!343) lambda!327357))))

(assert (=> d!1881019 (= z!1189 (store ((as const (Array Context!10790 Bool)) false) (h!70657 zl!343) true))))

(assert (=> d!1881019 (= (lemmaFlatMapOnSingletonSet!1050 z!1189 (h!70657 zl!343) lambda!327357) lt!2318792)))

(declare-fun b_lambda!226697 () Bool)

(assert (=> (not b_lambda!226697) (not d!1881019)))

(declare-fun bs!1453504 () Bool)

(assert (= bs!1453504 d!1881019))

(assert (=> bs!1453504 m!6877008))

(declare-fun m!6877402 () Bool)

(assert (=> bs!1453504 m!6877402))

(declare-fun m!6877404 () Bool)

(assert (=> bs!1453504 m!6877404))

(declare-fun m!6877406 () Bool)

(assert (=> bs!1453504 m!6877406))

(assert (=> b!5998487 d!1881019))

(declare-fun b!5999055 () Bool)

(declare-fun lt!2318801 () Unit!157293)

(declare-fun lt!2318800 () Unit!157293)

(assert (=> b!5999055 (= lt!2318801 lt!2318800)))

(declare-fun ++!14106 (List!64334 List!64334) List!64334)

(assert (=> b!5999055 (= (++!14106 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (t!377755 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2201 (List!64334 C!32292 List!64334 List!64334) Unit!157293)

(assert (=> b!5999055 (= lt!2318800 (lemmaMoveElementToOtherListKeepsConcatEq!2201 Nil!64210 (h!70658 s!2326) (t!377755 s!2326) s!2326))))

(declare-fun e!3666776 () Option!15902)

(assert (=> b!5999055 (= e!3666776 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (t!377755 s!2326) s!2326))))

(declare-fun b!5999056 () Bool)

(declare-fun e!3666773 () Option!15902)

(assert (=> b!5999056 (= e!3666773 (Some!15901 (tuple2!65981 Nil!64210 s!2326)))))

(declare-fun b!5999057 () Bool)

(declare-fun res!2503935 () Bool)

(declare-fun e!3666775 () Bool)

(assert (=> b!5999057 (=> (not res!2503935) (not e!3666775))))

(declare-fun lt!2318799 () Option!15902)

(declare-fun get!22127 (Option!15902) tuple2!65980)

(assert (=> b!5999057 (= res!2503935 (matchR!8194 (regOne!32534 r!7292) (_1!36293 (get!22127 lt!2318799))))))

(declare-fun b!5999058 () Bool)

(declare-fun e!3666774 () Bool)

(assert (=> b!5999058 (= e!3666774 (not (isDefined!12605 lt!2318799)))))

(declare-fun b!5999059 () Bool)

(assert (=> b!5999059 (= e!3666775 (= (++!14106 (_1!36293 (get!22127 lt!2318799)) (_2!36293 (get!22127 lt!2318799))) s!2326))))

(declare-fun b!5999061 () Bool)

(declare-fun e!3666777 () Bool)

(assert (=> b!5999061 (= e!3666777 (matchR!8194 (regTwo!32534 r!7292) s!2326))))

(declare-fun d!1881021 () Bool)

(assert (=> d!1881021 e!3666774))

(declare-fun res!2503934 () Bool)

(assert (=> d!1881021 (=> res!2503934 e!3666774)))

(assert (=> d!1881021 (= res!2503934 e!3666775)))

(declare-fun res!2503937 () Bool)

(assert (=> d!1881021 (=> (not res!2503937) (not e!3666775))))

(assert (=> d!1881021 (= res!2503937 (isDefined!12605 lt!2318799))))

(assert (=> d!1881021 (= lt!2318799 e!3666773)))

(declare-fun c!1071759 () Bool)

(assert (=> d!1881021 (= c!1071759 e!3666777)))

(declare-fun res!2503936 () Bool)

(assert (=> d!1881021 (=> (not res!2503936) (not e!3666777))))

(assert (=> d!1881021 (= res!2503936 (matchR!8194 (regOne!32534 r!7292) Nil!64210))))

(assert (=> d!1881021 (validRegex!7747 (regOne!32534 r!7292))))

(assert (=> d!1881021 (= (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326) lt!2318799)))

(declare-fun b!5999060 () Bool)

(assert (=> b!5999060 (= e!3666776 None!15901)))

(declare-fun b!5999062 () Bool)

(declare-fun res!2503938 () Bool)

(assert (=> b!5999062 (=> (not res!2503938) (not e!3666775))))

(assert (=> b!5999062 (= res!2503938 (matchR!8194 (regTwo!32534 r!7292) (_2!36293 (get!22127 lt!2318799))))))

(declare-fun b!5999063 () Bool)

(assert (=> b!5999063 (= e!3666773 e!3666776)))

(declare-fun c!1071758 () Bool)

(assert (=> b!5999063 (= c!1071758 ((_ is Nil!64210) s!2326))))

(assert (= (and d!1881021 res!2503936) b!5999061))

(assert (= (and d!1881021 c!1071759) b!5999056))

(assert (= (and d!1881021 (not c!1071759)) b!5999063))

(assert (= (and b!5999063 c!1071758) b!5999060))

(assert (= (and b!5999063 (not c!1071758)) b!5999055))

(assert (= (and d!1881021 res!2503937) b!5999057))

(assert (= (and b!5999057 res!2503935) b!5999062))

(assert (= (and b!5999062 res!2503938) b!5999059))

(assert (= (and d!1881021 (not res!2503934)) b!5999058))

(declare-fun m!6877408 () Bool)

(assert (=> b!5999057 m!6877408))

(declare-fun m!6877410 () Bool)

(assert (=> b!5999057 m!6877410))

(declare-fun m!6877412 () Bool)

(assert (=> b!5999061 m!6877412))

(assert (=> b!5999059 m!6877408))

(declare-fun m!6877414 () Bool)

(assert (=> b!5999059 m!6877414))

(declare-fun m!6877416 () Bool)

(assert (=> d!1881021 m!6877416))

(declare-fun m!6877418 () Bool)

(assert (=> d!1881021 m!6877418))

(declare-fun m!6877420 () Bool)

(assert (=> d!1881021 m!6877420))

(assert (=> b!5999062 m!6877408))

(declare-fun m!6877422 () Bool)

(assert (=> b!5999062 m!6877422))

(assert (=> b!5999058 m!6877416))

(declare-fun m!6877424 () Bool)

(assert (=> b!5999055 m!6877424))

(assert (=> b!5999055 m!6877424))

(declare-fun m!6877426 () Bool)

(assert (=> b!5999055 m!6877426))

(declare-fun m!6877428 () Bool)

(assert (=> b!5999055 m!6877428))

(assert (=> b!5999055 m!6877424))

(declare-fun m!6877430 () Bool)

(assert (=> b!5999055 m!6877430))

(assert (=> b!5998489 d!1881021))

(declare-fun d!1881023 () Bool)

(declare-fun choose!45008 (Int) Bool)

(assert (=> d!1881023 (= (Exists!3081 lambda!327356) (choose!45008 lambda!327356))))

(declare-fun bs!1453505 () Bool)

(assert (= bs!1453505 d!1881023))

(declare-fun m!6877432 () Bool)

(assert (=> bs!1453505 m!6877432))

(assert (=> b!5998489 d!1881023))

(declare-fun d!1881025 () Bool)

(assert (=> d!1881025 (= (Exists!3081 lambda!327355) (choose!45008 lambda!327355))))

(declare-fun bs!1453506 () Bool)

(assert (= bs!1453506 d!1881025))

(declare-fun m!6877434 () Bool)

(assert (=> bs!1453506 m!6877434))

(assert (=> b!5998489 d!1881025))

(declare-fun bs!1453507 () Bool)

(declare-fun d!1881027 () Bool)

(assert (= bs!1453507 (and d!1881027 b!5998489)))

(declare-fun lambda!327425 () Int)

(assert (=> bs!1453507 (= lambda!327425 lambda!327355)))

(assert (=> bs!1453507 (not (= lambda!327425 lambda!327356))))

(assert (=> d!1881027 true))

(assert (=> d!1881027 true))

(assert (=> d!1881027 true))

(assert (=> d!1881027 (= (isDefined!12605 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326)) (Exists!3081 lambda!327425))))

(declare-fun lt!2318804 () Unit!157293)

(declare-fun choose!45009 (Regex!16011 Regex!16011 List!64334) Unit!157293)

(assert (=> d!1881027 (= lt!2318804 (choose!45009 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326))))

(assert (=> d!1881027 (validRegex!7747 (regOne!32534 r!7292))))

(assert (=> d!1881027 (= (lemmaFindConcatSeparationEquivalentToExists!2080 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326) lt!2318804)))

(declare-fun bs!1453508 () Bool)

(assert (= bs!1453508 d!1881027))

(assert (=> bs!1453508 m!6876944))

(assert (=> bs!1453508 m!6876946))

(declare-fun m!6877436 () Bool)

(assert (=> bs!1453508 m!6877436))

(declare-fun m!6877438 () Bool)

(assert (=> bs!1453508 m!6877438))

(assert (=> bs!1453508 m!6877420))

(assert (=> bs!1453508 m!6876944))

(assert (=> b!5998489 d!1881027))

(declare-fun bs!1453509 () Bool)

(declare-fun d!1881029 () Bool)

(assert (= bs!1453509 (and d!1881029 b!5998489)))

(declare-fun lambda!327430 () Int)

(assert (=> bs!1453509 (= lambda!327430 lambda!327355)))

(assert (=> bs!1453509 (not (= lambda!327430 lambda!327356))))

(declare-fun bs!1453510 () Bool)

(assert (= bs!1453510 (and d!1881029 d!1881027)))

(assert (=> bs!1453510 (= lambda!327430 lambda!327425)))

(assert (=> d!1881029 true))

(assert (=> d!1881029 true))

(assert (=> d!1881029 true))

(declare-fun lambda!327431 () Int)

(assert (=> bs!1453509 (not (= lambda!327431 lambda!327355))))

(assert (=> bs!1453509 (= lambda!327431 lambda!327356)))

(assert (=> bs!1453510 (not (= lambda!327431 lambda!327425))))

(declare-fun bs!1453511 () Bool)

(assert (= bs!1453511 d!1881029))

(assert (=> bs!1453511 (not (= lambda!327431 lambda!327430))))

(assert (=> d!1881029 true))

(assert (=> d!1881029 true))

(assert (=> d!1881029 true))

(assert (=> d!1881029 (= (Exists!3081 lambda!327430) (Exists!3081 lambda!327431))))

(declare-fun lt!2318807 () Unit!157293)

(declare-fun choose!45010 (Regex!16011 Regex!16011 List!64334) Unit!157293)

(assert (=> d!1881029 (= lt!2318807 (choose!45010 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326))))

(assert (=> d!1881029 (validRegex!7747 (regOne!32534 r!7292))))

(assert (=> d!1881029 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1618 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326) lt!2318807)))

(declare-fun m!6877440 () Bool)

(assert (=> bs!1453511 m!6877440))

(declare-fun m!6877442 () Bool)

(assert (=> bs!1453511 m!6877442))

(declare-fun m!6877444 () Bool)

(assert (=> bs!1453511 m!6877444))

(assert (=> bs!1453511 m!6877420))

(assert (=> b!5998489 d!1881029))

(declare-fun d!1881031 () Bool)

(declare-fun isEmpty!36105 (Option!15902) Bool)

(assert (=> d!1881031 (= (isDefined!12605 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326)) (not (isEmpty!36105 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326))))))

(declare-fun bs!1453512 () Bool)

(assert (= bs!1453512 d!1881031))

(assert (=> bs!1453512 m!6876944))

(declare-fun m!6877446 () Bool)

(assert (=> bs!1453512 m!6877446))

(assert (=> b!5998489 d!1881031))

(declare-fun b!5999082 () Bool)

(assert (=> b!5999082 true))

(declare-fun bs!1453513 () Bool)

(declare-fun b!5999084 () Bool)

(assert (= bs!1453513 (and b!5999084 b!5999082)))

(declare-fun lambda!327439 () Int)

(declare-fun lt!2318816 () Int)

(declare-fun lambda!327440 () Int)

(declare-fun lt!2318818 () Int)

(assert (=> bs!1453513 (= (= lt!2318816 lt!2318818) (= lambda!327440 lambda!327439))))

(assert (=> b!5999084 true))

(declare-fun d!1881033 () Bool)

(declare-fun e!3666789 () Bool)

(assert (=> d!1881033 e!3666789))

(declare-fun res!2503953 () Bool)

(assert (=> d!1881033 (=> (not res!2503953) (not e!3666789))))

(assert (=> d!1881033 (= res!2503953 (>= lt!2318816 0))))

(declare-fun e!3666788 () Int)

(assert (=> d!1881033 (= lt!2318816 e!3666788)))

(declare-fun c!1071768 () Bool)

(assert (=> d!1881033 (= c!1071768 ((_ is Cons!64209) (Cons!64209 lt!2318663 Nil!64209)))))

(assert (=> d!1881033 (= (zipperDepth!260 (Cons!64209 lt!2318663 Nil!64209)) lt!2318816)))

(assert (=> b!5999082 (= e!3666788 lt!2318818)))

(assert (=> b!5999082 (= lt!2318818 (maxBigInt!0 (contextDepth!159 (h!70657 (Cons!64209 lt!2318663 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))))))

(declare-fun lambda!327438 () Int)

(declare-fun lt!2318819 () Unit!157293)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!143 (List!64333 Int Int Int) Unit!157293)

(assert (=> b!5999082 (= lt!2318819 (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lt!2318818 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209))) lambda!327438))))

(declare-fun forall!15110 (List!64333 Int) Bool)

(assert (=> b!5999082 (forall!15110 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lambda!327439)))

(declare-fun lt!2318817 () Unit!157293)

(assert (=> b!5999082 (= lt!2318817 lt!2318819)))

(declare-fun b!5999083 () Bool)

(assert (=> b!5999083 (= e!3666788 0)))

(assert (=> b!5999084 (= e!3666789 (forall!15110 (Cons!64209 lt!2318663 Nil!64209) lambda!327440))))

(assert (= (and d!1881033 c!1071768) b!5999082))

(assert (= (and d!1881033 (not c!1071768)) b!5999083))

(assert (= (and d!1881033 res!2503953) b!5999084))

(declare-fun m!6877448 () Bool)

(assert (=> b!5999082 m!6877448))

(declare-fun m!6877450 () Bool)

(assert (=> b!5999082 m!6877450))

(assert (=> b!5999082 m!6877450))

(declare-fun m!6877452 () Bool)

(assert (=> b!5999082 m!6877452))

(declare-fun m!6877454 () Bool)

(assert (=> b!5999082 m!6877454))

(assert (=> b!5999082 m!6877452))

(declare-fun m!6877456 () Bool)

(assert (=> b!5999082 m!6877456))

(assert (=> b!5999082 m!6877452))

(declare-fun m!6877458 () Bool)

(assert (=> b!5999084 m!6877458))

(assert (=> b!5998481 d!1881033))

(declare-fun bs!1453514 () Bool)

(declare-fun b!5999087 () Bool)

(assert (= bs!1453514 (and b!5999087 b!5999082)))

(declare-fun lambda!327441 () Int)

(assert (=> bs!1453514 (= lambda!327441 lambda!327438)))

(declare-fun lambda!327442 () Int)

(declare-fun lt!2318822 () Int)

(assert (=> bs!1453514 (= (= lt!2318822 lt!2318818) (= lambda!327442 lambda!327439))))

(declare-fun bs!1453515 () Bool)

(assert (= bs!1453515 (and b!5999087 b!5999084)))

(assert (=> bs!1453515 (= (= lt!2318822 lt!2318816) (= lambda!327442 lambda!327440))))

(assert (=> b!5999087 true))

(declare-fun bs!1453516 () Bool)

(declare-fun b!5999089 () Bool)

(assert (= bs!1453516 (and b!5999089 b!5999082)))

(declare-fun lambda!327443 () Int)

(declare-fun lt!2318820 () Int)

(assert (=> bs!1453516 (= (= lt!2318820 lt!2318818) (= lambda!327443 lambda!327439))))

(declare-fun bs!1453517 () Bool)

(assert (= bs!1453517 (and b!5999089 b!5999084)))

(assert (=> bs!1453517 (= (= lt!2318820 lt!2318816) (= lambda!327443 lambda!327440))))

(declare-fun bs!1453518 () Bool)

(assert (= bs!1453518 (and b!5999089 b!5999087)))

(assert (=> bs!1453518 (= (= lt!2318820 lt!2318822) (= lambda!327443 lambda!327442))))

(assert (=> b!5999089 true))

(declare-fun d!1881035 () Bool)

(declare-fun e!3666791 () Bool)

(assert (=> d!1881035 e!3666791))

(declare-fun res!2503954 () Bool)

(assert (=> d!1881035 (=> (not res!2503954) (not e!3666791))))

(assert (=> d!1881035 (= res!2503954 (>= lt!2318820 0))))

(declare-fun e!3666790 () Int)

(assert (=> d!1881035 (= lt!2318820 e!3666790)))

(declare-fun c!1071769 () Bool)

(assert (=> d!1881035 (= c!1071769 ((_ is Cons!64209) (Cons!64209 lt!2318655 Nil!64209)))))

(assert (=> d!1881035 (= (zipperDepth!260 (Cons!64209 lt!2318655 Nil!64209)) lt!2318820)))

(assert (=> b!5999087 (= e!3666790 lt!2318822)))

(assert (=> b!5999087 (= lt!2318822 (maxBigInt!0 (contextDepth!159 (h!70657 (Cons!64209 lt!2318655 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))))))

(declare-fun lt!2318823 () Unit!157293)

(assert (=> b!5999087 (= lt!2318823 (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lt!2318822 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209))) lambda!327441))))

(assert (=> b!5999087 (forall!15110 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lambda!327442)))

(declare-fun lt!2318821 () Unit!157293)

(assert (=> b!5999087 (= lt!2318821 lt!2318823)))

(declare-fun b!5999088 () Bool)

(assert (=> b!5999088 (= e!3666790 0)))

(assert (=> b!5999089 (= e!3666791 (forall!15110 (Cons!64209 lt!2318655 Nil!64209) lambda!327443))))

(assert (= (and d!1881035 c!1071769) b!5999087))

(assert (= (and d!1881035 (not c!1071769)) b!5999088))

(assert (= (and d!1881035 res!2503954) b!5999089))

(declare-fun m!6877460 () Bool)

(assert (=> b!5999087 m!6877460))

(declare-fun m!6877462 () Bool)

(assert (=> b!5999087 m!6877462))

(assert (=> b!5999087 m!6877462))

(declare-fun m!6877464 () Bool)

(assert (=> b!5999087 m!6877464))

(declare-fun m!6877466 () Bool)

(assert (=> b!5999087 m!6877466))

(assert (=> b!5999087 m!6877464))

(declare-fun m!6877468 () Bool)

(assert (=> b!5999087 m!6877468))

(assert (=> b!5999087 m!6877464))

(declare-fun m!6877470 () Bool)

(assert (=> b!5999089 m!6877470))

(assert (=> b!5998503 d!1881035))

(declare-fun bs!1453519 () Bool)

(declare-fun b!5999090 () Bool)

(assert (= bs!1453519 (and b!5999090 b!5999082)))

(declare-fun lambda!327444 () Int)

(assert (=> bs!1453519 (= lambda!327444 lambda!327438)))

(declare-fun bs!1453520 () Bool)

(assert (= bs!1453520 (and b!5999090 b!5999087)))

(assert (=> bs!1453520 (= lambda!327444 lambda!327441)))

(declare-fun lt!2318826 () Int)

(declare-fun lambda!327445 () Int)

(assert (=> bs!1453519 (= (= lt!2318826 lt!2318818) (= lambda!327445 lambda!327439))))

(declare-fun bs!1453521 () Bool)

(assert (= bs!1453521 (and b!5999090 b!5999084)))

(assert (=> bs!1453521 (= (= lt!2318826 lt!2318816) (= lambda!327445 lambda!327440))))

(assert (=> bs!1453520 (= (= lt!2318826 lt!2318822) (= lambda!327445 lambda!327442))))

(declare-fun bs!1453522 () Bool)

(assert (= bs!1453522 (and b!5999090 b!5999089)))

(assert (=> bs!1453522 (= (= lt!2318826 lt!2318820) (= lambda!327445 lambda!327443))))

(assert (=> b!5999090 true))

(declare-fun bs!1453523 () Bool)

(declare-fun b!5999092 () Bool)

(assert (= bs!1453523 (and b!5999092 b!5999084)))

(declare-fun lambda!327446 () Int)

(declare-fun lt!2318824 () Int)

(assert (=> bs!1453523 (= (= lt!2318824 lt!2318816) (= lambda!327446 lambda!327440))))

(declare-fun bs!1453524 () Bool)

(assert (= bs!1453524 (and b!5999092 b!5999089)))

(assert (=> bs!1453524 (= (= lt!2318824 lt!2318820) (= lambda!327446 lambda!327443))))

(declare-fun bs!1453525 () Bool)

(assert (= bs!1453525 (and b!5999092 b!5999082)))

(assert (=> bs!1453525 (= (= lt!2318824 lt!2318818) (= lambda!327446 lambda!327439))))

(declare-fun bs!1453526 () Bool)

(assert (= bs!1453526 (and b!5999092 b!5999087)))

(assert (=> bs!1453526 (= (= lt!2318824 lt!2318822) (= lambda!327446 lambda!327442))))

(declare-fun bs!1453527 () Bool)

(assert (= bs!1453527 (and b!5999092 b!5999090)))

(assert (=> bs!1453527 (= (= lt!2318824 lt!2318826) (= lambda!327446 lambda!327445))))

(assert (=> b!5999092 true))

(declare-fun d!1881037 () Bool)

(declare-fun e!3666793 () Bool)

(assert (=> d!1881037 e!3666793))

(declare-fun res!2503955 () Bool)

(assert (=> d!1881037 (=> (not res!2503955) (not e!3666793))))

(assert (=> d!1881037 (= res!2503955 (>= lt!2318824 0))))

(declare-fun e!3666792 () Int)

(assert (=> d!1881037 (= lt!2318824 e!3666792)))

(declare-fun c!1071770 () Bool)

(assert (=> d!1881037 (= c!1071770 ((_ is Cons!64209) lt!2318664))))

(assert (=> d!1881037 (= (zipperDepth!260 lt!2318664) lt!2318824)))

(assert (=> b!5999090 (= e!3666792 lt!2318826)))

(assert (=> b!5999090 (= lt!2318826 (maxBigInt!0 (contextDepth!159 (h!70657 lt!2318664)) (zipperDepth!260 (t!377754 lt!2318664))))))

(declare-fun lt!2318827 () Unit!157293)

(assert (=> b!5999090 (= lt!2318827 (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 lt!2318664) lt!2318826 (zipperDepth!260 (t!377754 lt!2318664)) lambda!327444))))

(assert (=> b!5999090 (forall!15110 (t!377754 lt!2318664) lambda!327445)))

(declare-fun lt!2318825 () Unit!157293)

(assert (=> b!5999090 (= lt!2318825 lt!2318827)))

(declare-fun b!5999091 () Bool)

(assert (=> b!5999091 (= e!3666792 0)))

(assert (=> b!5999092 (= e!3666793 (forall!15110 lt!2318664 lambda!327446))))

(assert (= (and d!1881037 c!1071770) b!5999090))

(assert (= (and d!1881037 (not c!1071770)) b!5999091))

(assert (= (and d!1881037 res!2503955) b!5999092))

(declare-fun m!6877472 () Bool)

(assert (=> b!5999090 m!6877472))

(declare-fun m!6877474 () Bool)

(assert (=> b!5999090 m!6877474))

(assert (=> b!5999090 m!6877474))

(declare-fun m!6877476 () Bool)

(assert (=> b!5999090 m!6877476))

(declare-fun m!6877478 () Bool)

(assert (=> b!5999090 m!6877478))

(assert (=> b!5999090 m!6877476))

(declare-fun m!6877480 () Bool)

(assert (=> b!5999090 m!6877480))

(assert (=> b!5999090 m!6877476))

(declare-fun m!6877482 () Bool)

(assert (=> b!5999092 m!6877482))

(assert (=> b!5998503 d!1881037))

(declare-fun d!1881039 () Bool)

(declare-fun e!3666796 () Bool)

(assert (=> d!1881039 e!3666796))

(declare-fun res!2503958 () Bool)

(assert (=> d!1881039 (=> (not res!2503958) (not e!3666796))))

(declare-fun lt!2318830 () List!64333)

(declare-fun noDuplicate!1866 (List!64333) Bool)

(assert (=> d!1881039 (= res!2503958 (noDuplicate!1866 lt!2318830))))

(declare-fun choose!45011 ((InoxSet Context!10790)) List!64333)

(assert (=> d!1881039 (= lt!2318830 (choose!45011 z!1189))))

(assert (=> d!1881039 (= (toList!9795 z!1189) lt!2318830)))

(declare-fun b!5999095 () Bool)

(declare-fun content!11867 (List!64333) (InoxSet Context!10790))

(assert (=> b!5999095 (= e!3666796 (= (content!11867 lt!2318830) z!1189))))

(assert (= (and d!1881039 res!2503958) b!5999095))

(declare-fun m!6877484 () Bool)

(assert (=> d!1881039 m!6877484))

(declare-fun m!6877486 () Bool)

(assert (=> d!1881039 m!6877486))

(declare-fun m!6877488 () Bool)

(assert (=> b!5999095 m!6877488))

(assert (=> b!5998482 d!1881039))

(declare-fun b!5999130 () Bool)

(declare-fun c!1071787 () Bool)

(assert (=> b!5999130 (= c!1071787 ((_ is Star!16011) r!7292))))

(declare-fun e!3666817 () Bool)

(declare-fun e!3666821 () Bool)

(assert (=> b!5999130 (= e!3666817 e!3666821)))

(declare-fun b!5999131 () Bool)

(declare-fun c!1071791 () Bool)

(assert (=> b!5999131 (= c!1071791 ((_ is Union!16011) r!7292))))

(declare-fun e!3666818 () Int)

(declare-fun e!3666824 () Int)

(assert (=> b!5999131 (= e!3666818 e!3666824)))

(declare-fun b!5999132 () Bool)

(declare-fun e!3666825 () Bool)

(declare-fun lt!2318833 () Int)

(declare-fun call!484655 () Int)

(assert (=> b!5999132 (= e!3666825 (> lt!2318833 call!484655))))

(declare-fun b!5999133 () Bool)

(declare-fun e!3666822 () Bool)

(assert (=> b!5999133 (= e!3666822 e!3666825)))

(declare-fun res!2503965 () Bool)

(declare-fun call!484656 () Int)

(assert (=> b!5999133 (= res!2503965 (> lt!2318833 call!484656))))

(assert (=> b!5999133 (=> (not res!2503965) (not e!3666825))))

(declare-fun b!5999134 () Bool)

(declare-fun e!3666823 () Int)

(assert (=> b!5999134 (= e!3666823 1)))

(declare-fun c!1071785 () Bool)

(declare-fun call!484653 () Int)

(declare-fun bm!484646 () Bool)

(assert (=> bm!484646 (= call!484653 (regexDepth!268 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun b!5999135 () Bool)

(declare-fun res!2503966 () Bool)

(declare-fun e!3666819 () Bool)

(assert (=> b!5999135 (=> (not res!2503966) (not e!3666819))))

(declare-fun call!484651 () Int)

(assert (=> b!5999135 (= res!2503966 (> lt!2318833 call!484651))))

(assert (=> b!5999135 (= e!3666817 e!3666819)))

(declare-fun bm!484647 () Bool)

(declare-fun call!484652 () Int)

(assert (=> bm!484647 (= call!484652 call!484653)))

(declare-fun bm!484648 () Bool)

(assert (=> bm!484648 (= call!484651 call!484656)))

(declare-fun bm!484649 () Bool)

(declare-fun call!484657 () Int)

(assert (=> bm!484649 (= call!484657 (regexDepth!268 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun bm!484650 () Bool)

(declare-fun call!484654 () Int)

(assert (=> bm!484650 (= call!484654 (maxBigInt!0 (ite c!1071791 call!484657 call!484652) (ite c!1071791 call!484652 call!484657)))))

(declare-fun b!5999136 () Bool)

(assert (=> b!5999136 (= e!3666823 (+ 1 call!484654))))

(declare-fun bm!484651 () Bool)

(declare-fun c!1071788 () Bool)

(assert (=> bm!484651 (= call!484655 (regexDepth!268 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun b!5999137 () Bool)

(declare-fun e!3666820 () Int)

(assert (=> b!5999137 (= e!3666820 1)))

(declare-fun b!5999138 () Bool)

(assert (=> b!5999138 (= e!3666824 e!3666823)))

(declare-fun c!1071786 () Bool)

(assert (=> b!5999138 (= c!1071786 ((_ is Concat!24856) r!7292))))

(declare-fun d!1881041 () Bool)

(declare-fun e!3666826 () Bool)

(assert (=> d!1881041 e!3666826))

(declare-fun res!2503967 () Bool)

(assert (=> d!1881041 (=> (not res!2503967) (not e!3666826))))

(assert (=> d!1881041 (= res!2503967 (> lt!2318833 0))))

(assert (=> d!1881041 (= lt!2318833 e!3666820)))

(declare-fun c!1071790 () Bool)

(assert (=> d!1881041 (= c!1071790 ((_ is ElementMatch!16011) r!7292))))

(assert (=> d!1881041 (= (regexDepth!268 r!7292) lt!2318833)))

(declare-fun b!5999139 () Bool)

(assert (=> b!5999139 (= e!3666819 (> lt!2318833 call!484655))))

(declare-fun b!5999140 () Bool)

(assert (=> b!5999140 (= e!3666822 e!3666817)))

(declare-fun c!1071789 () Bool)

(assert (=> b!5999140 (= c!1071789 ((_ is Concat!24856) r!7292))))

(declare-fun b!5999141 () Bool)

(assert (=> b!5999141 (= e!3666821 (> lt!2318833 call!484651))))

(declare-fun b!5999142 () Bool)

(assert (=> b!5999142 (= e!3666824 (+ 1 call!484654))))

(declare-fun b!5999143 () Bool)

(assert (=> b!5999143 (= e!3666826 e!3666822)))

(assert (=> b!5999143 (= c!1071788 ((_ is Union!16011) r!7292))))

(declare-fun b!5999144 () Bool)

(assert (=> b!5999144 (= e!3666821 (= lt!2318833 1))))

(declare-fun b!5999145 () Bool)

(assert (=> b!5999145 (= e!3666818 (+ 1 call!484653))))

(declare-fun bm!484652 () Bool)

(assert (=> bm!484652 (= call!484656 (regexDepth!268 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(declare-fun b!5999146 () Bool)

(assert (=> b!5999146 (= e!3666820 e!3666818)))

(assert (=> b!5999146 (= c!1071785 ((_ is Star!16011) r!7292))))

(assert (= (and d!1881041 c!1071790) b!5999137))

(assert (= (and d!1881041 (not c!1071790)) b!5999146))

(assert (= (and b!5999146 c!1071785) b!5999145))

(assert (= (and b!5999146 (not c!1071785)) b!5999131))

(assert (= (and b!5999131 c!1071791) b!5999142))

(assert (= (and b!5999131 (not c!1071791)) b!5999138))

(assert (= (and b!5999138 c!1071786) b!5999136))

(assert (= (and b!5999138 (not c!1071786)) b!5999134))

(assert (= (or b!5999142 b!5999136) bm!484647))

(assert (= (or b!5999142 b!5999136) bm!484649))

(assert (= (or b!5999142 b!5999136) bm!484650))

(assert (= (or b!5999145 bm!484647) bm!484646))

(assert (= (and d!1881041 res!2503967) b!5999143))

(assert (= (and b!5999143 c!1071788) b!5999133))

(assert (= (and b!5999143 (not c!1071788)) b!5999140))

(assert (= (and b!5999133 res!2503965) b!5999132))

(assert (= (and b!5999140 c!1071789) b!5999135))

(assert (= (and b!5999140 (not c!1071789)) b!5999130))

(assert (= (and b!5999135 res!2503966) b!5999139))

(assert (= (and b!5999130 c!1071787) b!5999141))

(assert (= (and b!5999130 (not c!1071787)) b!5999144))

(assert (= (or b!5999135 b!5999141) bm!484648))

(assert (= (or b!5999132 b!5999139) bm!484651))

(assert (= (or b!5999133 bm!484648) bm!484652))

(declare-fun m!6877490 () Bool)

(assert (=> bm!484649 m!6877490))

(declare-fun m!6877492 () Bool)

(assert (=> bm!484650 m!6877492))

(declare-fun m!6877494 () Bool)

(assert (=> bm!484646 m!6877494))

(declare-fun m!6877496 () Bool)

(assert (=> bm!484652 m!6877496))

(declare-fun m!6877498 () Bool)

(assert (=> bm!484651 m!6877498))

(assert (=> b!5998502 d!1881041))

(declare-fun b!5999147 () Bool)

(declare-fun c!1071794 () Bool)

(assert (=> b!5999147 (= c!1071794 ((_ is Star!16011) lt!2318683))))

(declare-fun e!3666827 () Bool)

(declare-fun e!3666831 () Bool)

(assert (=> b!5999147 (= e!3666827 e!3666831)))

(declare-fun b!5999148 () Bool)

(declare-fun c!1071798 () Bool)

(assert (=> b!5999148 (= c!1071798 ((_ is Union!16011) lt!2318683))))

(declare-fun e!3666828 () Int)

(declare-fun e!3666834 () Int)

(assert (=> b!5999148 (= e!3666828 e!3666834)))

(declare-fun b!5999149 () Bool)

(declare-fun e!3666835 () Bool)

(declare-fun lt!2318834 () Int)

(declare-fun call!484662 () Int)

(assert (=> b!5999149 (= e!3666835 (> lt!2318834 call!484662))))

(declare-fun b!5999150 () Bool)

(declare-fun e!3666832 () Bool)

(assert (=> b!5999150 (= e!3666832 e!3666835)))

(declare-fun res!2503968 () Bool)

(declare-fun call!484663 () Int)

(assert (=> b!5999150 (= res!2503968 (> lt!2318834 call!484663))))

(assert (=> b!5999150 (=> (not res!2503968) (not e!3666835))))

(declare-fun b!5999151 () Bool)

(declare-fun e!3666833 () Int)

(assert (=> b!5999151 (= e!3666833 1)))

(declare-fun c!1071792 () Bool)

(declare-fun call!484660 () Int)

(declare-fun bm!484653 () Bool)

(assert (=> bm!484653 (= call!484660 (regexDepth!268 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(declare-fun b!5999152 () Bool)

(declare-fun res!2503969 () Bool)

(declare-fun e!3666829 () Bool)

(assert (=> b!5999152 (=> (not res!2503969) (not e!3666829))))

(declare-fun call!484658 () Int)

(assert (=> b!5999152 (= res!2503969 (> lt!2318834 call!484658))))

(assert (=> b!5999152 (= e!3666827 e!3666829)))

(declare-fun bm!484654 () Bool)

(declare-fun call!484659 () Int)

(assert (=> bm!484654 (= call!484659 call!484660)))

(declare-fun bm!484655 () Bool)

(assert (=> bm!484655 (= call!484658 call!484663)))

(declare-fun bm!484656 () Bool)

(declare-fun call!484664 () Int)

(assert (=> bm!484656 (= call!484664 (regexDepth!268 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun bm!484657 () Bool)

(declare-fun call!484661 () Int)

(assert (=> bm!484657 (= call!484661 (maxBigInt!0 (ite c!1071798 call!484664 call!484659) (ite c!1071798 call!484659 call!484664)))))

(declare-fun b!5999153 () Bool)

(assert (=> b!5999153 (= e!3666833 (+ 1 call!484661))))

(declare-fun bm!484658 () Bool)

(declare-fun c!1071795 () Bool)

(assert (=> bm!484658 (= call!484662 (regexDepth!268 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun b!5999154 () Bool)

(declare-fun e!3666830 () Int)

(assert (=> b!5999154 (= e!3666830 1)))

(declare-fun b!5999155 () Bool)

(assert (=> b!5999155 (= e!3666834 e!3666833)))

(declare-fun c!1071793 () Bool)

(assert (=> b!5999155 (= c!1071793 ((_ is Concat!24856) lt!2318683))))

(declare-fun d!1881043 () Bool)

(declare-fun e!3666836 () Bool)

(assert (=> d!1881043 e!3666836))

(declare-fun res!2503970 () Bool)

(assert (=> d!1881043 (=> (not res!2503970) (not e!3666836))))

(assert (=> d!1881043 (= res!2503970 (> lt!2318834 0))))

(assert (=> d!1881043 (= lt!2318834 e!3666830)))

(declare-fun c!1071797 () Bool)

(assert (=> d!1881043 (= c!1071797 ((_ is ElementMatch!16011) lt!2318683))))

(assert (=> d!1881043 (= (regexDepth!268 lt!2318683) lt!2318834)))

(declare-fun b!5999156 () Bool)

(assert (=> b!5999156 (= e!3666829 (> lt!2318834 call!484662))))

(declare-fun b!5999157 () Bool)

(assert (=> b!5999157 (= e!3666832 e!3666827)))

(declare-fun c!1071796 () Bool)

(assert (=> b!5999157 (= c!1071796 ((_ is Concat!24856) lt!2318683))))

(declare-fun b!5999158 () Bool)

(assert (=> b!5999158 (= e!3666831 (> lt!2318834 call!484658))))

(declare-fun b!5999159 () Bool)

(assert (=> b!5999159 (= e!3666834 (+ 1 call!484661))))

(declare-fun b!5999160 () Bool)

(assert (=> b!5999160 (= e!3666836 e!3666832)))

(assert (=> b!5999160 (= c!1071795 ((_ is Union!16011) lt!2318683))))

(declare-fun b!5999161 () Bool)

(assert (=> b!5999161 (= e!3666831 (= lt!2318834 1))))

(declare-fun b!5999162 () Bool)

(assert (=> b!5999162 (= e!3666828 (+ 1 call!484660))))

(declare-fun bm!484659 () Bool)

(assert (=> bm!484659 (= call!484663 (regexDepth!268 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(declare-fun b!5999163 () Bool)

(assert (=> b!5999163 (= e!3666830 e!3666828)))

(assert (=> b!5999163 (= c!1071792 ((_ is Star!16011) lt!2318683))))

(assert (= (and d!1881043 c!1071797) b!5999154))

(assert (= (and d!1881043 (not c!1071797)) b!5999163))

(assert (= (and b!5999163 c!1071792) b!5999162))

(assert (= (and b!5999163 (not c!1071792)) b!5999148))

(assert (= (and b!5999148 c!1071798) b!5999159))

(assert (= (and b!5999148 (not c!1071798)) b!5999155))

(assert (= (and b!5999155 c!1071793) b!5999153))

(assert (= (and b!5999155 (not c!1071793)) b!5999151))

(assert (= (or b!5999159 b!5999153) bm!484654))

(assert (= (or b!5999159 b!5999153) bm!484656))

(assert (= (or b!5999159 b!5999153) bm!484657))

(assert (= (or b!5999162 bm!484654) bm!484653))

(assert (= (and d!1881043 res!2503970) b!5999160))

(assert (= (and b!5999160 c!1071795) b!5999150))

(assert (= (and b!5999160 (not c!1071795)) b!5999157))

(assert (= (and b!5999150 res!2503968) b!5999149))

(assert (= (and b!5999157 c!1071796) b!5999152))

(assert (= (and b!5999157 (not c!1071796)) b!5999147))

(assert (= (and b!5999152 res!2503969) b!5999156))

(assert (= (and b!5999147 c!1071794) b!5999158))

(assert (= (and b!5999147 (not c!1071794)) b!5999161))

(assert (= (or b!5999152 b!5999158) bm!484655))

(assert (= (or b!5999149 b!5999156) bm!484658))

(assert (= (or b!5999150 bm!484655) bm!484659))

(declare-fun m!6877500 () Bool)

(assert (=> bm!484656 m!6877500))

(declare-fun m!6877502 () Bool)

(assert (=> bm!484657 m!6877502))

(declare-fun m!6877504 () Bool)

(assert (=> bm!484653 m!6877504))

(declare-fun m!6877506 () Bool)

(assert (=> bm!484659 m!6877506))

(declare-fun m!6877508 () Bool)

(assert (=> bm!484658 m!6877508))

(assert (=> b!5998502 d!1881043))

(declare-fun bs!1453528 () Bool)

(declare-fun d!1881045 () Bool)

(assert (= bs!1453528 (and d!1881045 b!5999017)))

(declare-fun lambda!327449 () Int)

(assert (=> bs!1453528 (not (= lambda!327449 lambda!327421))))

(declare-fun bs!1453529 () Bool)

(assert (= bs!1453529 (and d!1881045 b!5999019)))

(assert (=> bs!1453529 (not (= lambda!327449 lambda!327422))))

(assert (=> d!1881045 (= (inv!83274 lt!2318663) (forall!15109 (exprs!5895 lt!2318663) lambda!327449))))

(declare-fun bs!1453530 () Bool)

(assert (= bs!1453530 d!1881045))

(declare-fun m!6877510 () Bool)

(assert (=> bs!1453530 m!6877510))

(assert (=> b!5998484 d!1881045))

(declare-fun b!5999193 () Bool)

(declare-fun e!3666856 () Bool)

(declare-fun derivativeStep!4740 (Regex!16011 C!32292) Regex!16011)

(declare-fun head!12559 (List!64334) C!32292)

(declare-fun tail!11644 (List!64334) List!64334)

(assert (=> b!5999193 (= e!3666856 (matchR!8194 (derivativeStep!4740 lt!2318683 (head!12559 s!2326)) (tail!11644 s!2326)))))

(declare-fun b!5999194 () Bool)

(declare-fun e!3666855 () Bool)

(declare-fun e!3666857 () Bool)

(assert (=> b!5999194 (= e!3666855 e!3666857)))

(declare-fun res!2503991 () Bool)

(assert (=> b!5999194 (=> res!2503991 e!3666857)))

(declare-fun call!484667 () Bool)

(assert (=> b!5999194 (= res!2503991 call!484667)))

(declare-fun b!5999195 () Bool)

(declare-fun e!3666853 () Bool)

(declare-fun e!3666851 () Bool)

(assert (=> b!5999195 (= e!3666853 e!3666851)))

(declare-fun c!1071806 () Bool)

(assert (=> b!5999195 (= c!1071806 ((_ is EmptyLang!16011) lt!2318683))))

(declare-fun b!5999196 () Bool)

(declare-fun res!2503988 () Bool)

(declare-fun e!3666852 () Bool)

(assert (=> b!5999196 (=> (not res!2503988) (not e!3666852))))

(assert (=> b!5999196 (= res!2503988 (not call!484667))))

(declare-fun b!5999197 () Bool)

(declare-fun res!2503990 () Bool)

(declare-fun e!3666854 () Bool)

(assert (=> b!5999197 (=> res!2503990 e!3666854)))

(assert (=> b!5999197 (= res!2503990 e!3666852)))

(declare-fun res!2503994 () Bool)

(assert (=> b!5999197 (=> (not res!2503994) (not e!3666852))))

(declare-fun lt!2318837 () Bool)

(assert (=> b!5999197 (= res!2503994 lt!2318837)))

(declare-fun bm!484662 () Bool)

(declare-fun isEmpty!36106 (List!64334) Bool)

(assert (=> bm!484662 (= call!484667 (isEmpty!36106 s!2326))))

(declare-fun b!5999198 () Bool)

(assert (=> b!5999198 (= e!3666851 (not lt!2318837))))

(declare-fun b!5999199 () Bool)

(declare-fun res!2503989 () Bool)

(assert (=> b!5999199 (=> res!2503989 e!3666854)))

(assert (=> b!5999199 (= res!2503989 (not ((_ is ElementMatch!16011) lt!2318683)))))

(assert (=> b!5999199 (= e!3666851 e!3666854)))

(declare-fun b!5999200 () Bool)

(declare-fun res!2503987 () Bool)

(assert (=> b!5999200 (=> (not res!2503987) (not e!3666852))))

(assert (=> b!5999200 (= res!2503987 (isEmpty!36106 (tail!11644 s!2326)))))

(declare-fun b!5999192 () Bool)

(assert (=> b!5999192 (= e!3666852 (= (head!12559 s!2326) (c!1071586 lt!2318683)))))

(declare-fun d!1881047 () Bool)

(assert (=> d!1881047 e!3666853))

(declare-fun c!1071807 () Bool)

(assert (=> d!1881047 (= c!1071807 ((_ is EmptyExpr!16011) lt!2318683))))

(assert (=> d!1881047 (= lt!2318837 e!3666856)))

(declare-fun c!1071805 () Bool)

(assert (=> d!1881047 (= c!1071805 (isEmpty!36106 s!2326))))

(assert (=> d!1881047 (validRegex!7747 lt!2318683)))

(assert (=> d!1881047 (= (matchR!8194 lt!2318683 s!2326) lt!2318837)))

(declare-fun b!5999201 () Bool)

(assert (=> b!5999201 (= e!3666854 e!3666855)))

(declare-fun res!2503992 () Bool)

(assert (=> b!5999201 (=> (not res!2503992) (not e!3666855))))

(assert (=> b!5999201 (= res!2503992 (not lt!2318837))))

(declare-fun b!5999202 () Bool)

(assert (=> b!5999202 (= e!3666856 (nullable!6006 lt!2318683))))

(declare-fun b!5999203 () Bool)

(assert (=> b!5999203 (= e!3666857 (not (= (head!12559 s!2326) (c!1071586 lt!2318683))))))

(declare-fun b!5999204 () Bool)

(declare-fun res!2503993 () Bool)

(assert (=> b!5999204 (=> res!2503993 e!3666857)))

(assert (=> b!5999204 (= res!2503993 (not (isEmpty!36106 (tail!11644 s!2326))))))

(declare-fun b!5999205 () Bool)

(assert (=> b!5999205 (= e!3666853 (= lt!2318837 call!484667))))

(assert (= (and d!1881047 c!1071805) b!5999202))

(assert (= (and d!1881047 (not c!1071805)) b!5999193))

(assert (= (and d!1881047 c!1071807) b!5999205))

(assert (= (and d!1881047 (not c!1071807)) b!5999195))

(assert (= (and b!5999195 c!1071806) b!5999198))

(assert (= (and b!5999195 (not c!1071806)) b!5999199))

(assert (= (and b!5999199 (not res!2503989)) b!5999197))

(assert (= (and b!5999197 res!2503994) b!5999196))

(assert (= (and b!5999196 res!2503988) b!5999200))

(assert (= (and b!5999200 res!2503987) b!5999192))

(assert (= (and b!5999197 (not res!2503990)) b!5999201))

(assert (= (and b!5999201 res!2503992) b!5999194))

(assert (= (and b!5999194 (not res!2503991)) b!5999204))

(assert (= (and b!5999204 (not res!2503993)) b!5999203))

(assert (= (or b!5999205 b!5999194 b!5999196) bm!484662))

(declare-fun m!6877512 () Bool)

(assert (=> b!5999193 m!6877512))

(assert (=> b!5999193 m!6877512))

(declare-fun m!6877514 () Bool)

(assert (=> b!5999193 m!6877514))

(declare-fun m!6877516 () Bool)

(assert (=> b!5999193 m!6877516))

(assert (=> b!5999193 m!6877514))

(assert (=> b!5999193 m!6877516))

(declare-fun m!6877518 () Bool)

(assert (=> b!5999193 m!6877518))

(declare-fun m!6877520 () Bool)

(assert (=> d!1881047 m!6877520))

(declare-fun m!6877522 () Bool)

(assert (=> d!1881047 m!6877522))

(assert (=> b!5999200 m!6877516))

(assert (=> b!5999200 m!6877516))

(declare-fun m!6877524 () Bool)

(assert (=> b!5999200 m!6877524))

(assert (=> b!5999192 m!6877512))

(assert (=> b!5999203 m!6877512))

(assert (=> bm!484662 m!6877520))

(assert (=> b!5999204 m!6877516))

(assert (=> b!5999204 m!6877516))

(assert (=> b!5999204 m!6877524))

(declare-fun m!6877526 () Bool)

(assert (=> b!5999202 m!6877526))

(assert (=> b!5998484 d!1881047))

(declare-fun d!1881049 () Bool)

(assert (=> d!1881049 (= (matchR!8194 lt!2318683 s!2326) (matchZipper!2047 lt!2318676 s!2326))))

(declare-fun lt!2318840 () Unit!157293)

(declare-fun choose!45012 ((InoxSet Context!10790) List!64333 Regex!16011 List!64334) Unit!157293)

(assert (=> d!1881049 (= lt!2318840 (choose!45012 lt!2318676 lt!2318664 lt!2318683 s!2326))))

(assert (=> d!1881049 (validRegex!7747 lt!2318683)))

(assert (=> d!1881049 (= (theoremZipperRegexEquiv!703 lt!2318676 lt!2318664 lt!2318683 s!2326) lt!2318840)))

(declare-fun bs!1453531 () Bool)

(assert (= bs!1453531 d!1881049))

(assert (=> bs!1453531 m!6876916))

(assert (=> bs!1453531 m!6876932))

(declare-fun m!6877528 () Bool)

(assert (=> bs!1453531 m!6877528))

(assert (=> bs!1453531 m!6877522))

(assert (=> b!5998484 d!1881049))

(declare-fun d!1881051 () Bool)

(declare-fun c!1071810 () Bool)

(assert (=> d!1881051 (= c!1071810 (isEmpty!36106 s!2326))))

(declare-fun e!3666860 () Bool)

(assert (=> d!1881051 (= (matchZipper!2047 lt!2318668 s!2326) e!3666860)))

(declare-fun b!5999210 () Bool)

(declare-fun nullableZipper!1816 ((InoxSet Context!10790)) Bool)

(assert (=> b!5999210 (= e!3666860 (nullableZipper!1816 lt!2318668))))

(declare-fun b!5999211 () Bool)

(assert (=> b!5999211 (= e!3666860 (matchZipper!2047 (derivationStepZipper!1992 lt!2318668 (head!12559 s!2326)) (tail!11644 s!2326)))))

(assert (= (and d!1881051 c!1071810) b!5999210))

(assert (= (and d!1881051 (not c!1071810)) b!5999211))

(assert (=> d!1881051 m!6877520))

(declare-fun m!6877530 () Bool)

(assert (=> b!5999210 m!6877530))

(assert (=> b!5999211 m!6877512))

(assert (=> b!5999211 m!6877512))

(declare-fun m!6877532 () Bool)

(assert (=> b!5999211 m!6877532))

(assert (=> b!5999211 m!6877516))

(assert (=> b!5999211 m!6877532))

(assert (=> b!5999211 m!6877516))

(declare-fun m!6877534 () Bool)

(assert (=> b!5999211 m!6877534))

(assert (=> b!5998483 d!1881051))

(declare-fun d!1881053 () Bool)

(declare-fun c!1071811 () Bool)

(assert (=> d!1881053 (= c!1071811 (isEmpty!36106 (t!377755 s!2326)))))

(declare-fun e!3666861 () Bool)

(assert (=> d!1881053 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (t!377755 s!2326)) e!3666861)))

(declare-fun b!5999212 () Bool)

(assert (=> b!5999212 (= e!3666861 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326))))))

(declare-fun b!5999213 () Bool)

(assert (=> b!5999213 (= e!3666861 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))))))

(assert (= (and d!1881053 c!1071811) b!5999212))

(assert (= (and d!1881053 (not c!1071811)) b!5999213))

(declare-fun m!6877536 () Bool)

(assert (=> d!1881053 m!6877536))

(assert (=> b!5999212 m!6877002))

(declare-fun m!6877538 () Bool)

(assert (=> b!5999212 m!6877538))

(declare-fun m!6877540 () Bool)

(assert (=> b!5999213 m!6877540))

(assert (=> b!5999213 m!6877002))

(assert (=> b!5999213 m!6877540))

(declare-fun m!6877542 () Bool)

(assert (=> b!5999213 m!6877542))

(declare-fun m!6877544 () Bool)

(assert (=> b!5999213 m!6877544))

(assert (=> b!5999213 m!6877542))

(assert (=> b!5999213 m!6877544))

(declare-fun m!6877546 () Bool)

(assert (=> b!5999213 m!6877546))

(assert (=> b!5998483 d!1881053))

(declare-fun bs!1453532 () Bool)

(declare-fun d!1881055 () Bool)

(assert (= bs!1453532 (and d!1881055 b!5998487)))

(declare-fun lambda!327452 () Int)

(assert (=> bs!1453532 (= lambda!327452 lambda!327357)))

(assert (=> d!1881055 true))

(assert (=> d!1881055 (= (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (flatMap!1524 lt!2318668 lambda!327452))))

(declare-fun bs!1453533 () Bool)

(assert (= bs!1453533 d!1881055))

(declare-fun m!6877548 () Bool)

(assert (=> bs!1453533 m!6877548))

(assert (=> b!5998483 d!1881055))

(declare-fun d!1881057 () Bool)

(declare-fun c!1071814 () Bool)

(assert (=> d!1881057 (= c!1071814 (isEmpty!36106 (t!377755 s!2326)))))

(declare-fun e!3666862 () Bool)

(assert (=> d!1881057 (= (matchZipper!2047 lt!2318652 (t!377755 s!2326)) e!3666862)))

(declare-fun b!5999216 () Bool)

(assert (=> b!5999216 (= e!3666862 (nullableZipper!1816 lt!2318652))))

(declare-fun b!5999217 () Bool)

(assert (=> b!5999217 (= e!3666862 (matchZipper!2047 (derivationStepZipper!1992 lt!2318652 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))))))

(assert (= (and d!1881057 c!1071814) b!5999216))

(assert (= (and d!1881057 (not c!1071814)) b!5999217))

(assert (=> d!1881057 m!6877536))

(declare-fun m!6877550 () Bool)

(assert (=> b!5999216 m!6877550))

(assert (=> b!5999217 m!6877540))

(assert (=> b!5999217 m!6877540))

(declare-fun m!6877552 () Bool)

(assert (=> b!5999217 m!6877552))

(assert (=> b!5999217 m!6877544))

(assert (=> b!5999217 m!6877552))

(assert (=> b!5999217 m!6877544))

(declare-fun m!6877554 () Bool)

(assert (=> b!5999217 m!6877554))

(assert (=> b!5998504 d!1881057))

(declare-fun d!1881059 () Bool)

(declare-fun c!1071815 () Bool)

(assert (=> d!1881059 (= c!1071815 (isEmpty!36106 (t!377755 s!2326)))))

(declare-fun e!3666863 () Bool)

(assert (=> d!1881059 (= (matchZipper!2047 lt!2318671 (t!377755 s!2326)) e!3666863)))

(declare-fun b!5999218 () Bool)

(assert (=> b!5999218 (= e!3666863 (nullableZipper!1816 lt!2318671))))

(declare-fun b!5999219 () Bool)

(assert (=> b!5999219 (= e!3666863 (matchZipper!2047 (derivationStepZipper!1992 lt!2318671 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))))))

(assert (= (and d!1881059 c!1071815) b!5999218))

(assert (= (and d!1881059 (not c!1071815)) b!5999219))

(assert (=> d!1881059 m!6877536))

(declare-fun m!6877556 () Bool)

(assert (=> b!5999218 m!6877556))

(assert (=> b!5999219 m!6877540))

(assert (=> b!5999219 m!6877540))

(declare-fun m!6877558 () Bool)

(assert (=> b!5999219 m!6877558))

(assert (=> b!5999219 m!6877544))

(assert (=> b!5999219 m!6877558))

(assert (=> b!5999219 m!6877544))

(declare-fun m!6877560 () Bool)

(assert (=> b!5999219 m!6877560))

(assert (=> b!5998504 d!1881059))

(declare-fun d!1881061 () Bool)

(declare-fun c!1071816 () Bool)

(assert (=> d!1881061 (= c!1071816 (isEmpty!36106 (t!377755 s!2326)))))

(declare-fun e!3666864 () Bool)

(assert (=> d!1881061 (= (matchZipper!2047 lt!2318661 (t!377755 s!2326)) e!3666864)))

(declare-fun b!5999220 () Bool)

(assert (=> b!5999220 (= e!3666864 (nullableZipper!1816 lt!2318661))))

(declare-fun b!5999221 () Bool)

(assert (=> b!5999221 (= e!3666864 (matchZipper!2047 (derivationStepZipper!1992 lt!2318661 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))))))

(assert (= (and d!1881061 c!1071816) b!5999220))

(assert (= (and d!1881061 (not c!1071816)) b!5999221))

(assert (=> d!1881061 m!6877536))

(declare-fun m!6877562 () Bool)

(assert (=> b!5999220 m!6877562))

(assert (=> b!5999221 m!6877540))

(assert (=> b!5999221 m!6877540))

(declare-fun m!6877564 () Bool)

(assert (=> b!5999221 m!6877564))

(assert (=> b!5999221 m!6877544))

(assert (=> b!5999221 m!6877564))

(assert (=> b!5999221 m!6877544))

(declare-fun m!6877566 () Bool)

(assert (=> b!5999221 m!6877566))

(assert (=> b!5998504 d!1881061))

(declare-fun e!3666867 () Bool)

(declare-fun d!1881063 () Bool)

(assert (=> d!1881063 (= (matchZipper!2047 ((_ map or) lt!2318661 lt!2318651) (t!377755 s!2326)) e!3666867)))

(declare-fun res!2503997 () Bool)

(assert (=> d!1881063 (=> res!2503997 e!3666867)))

(assert (=> d!1881063 (= res!2503997 (matchZipper!2047 lt!2318661 (t!377755 s!2326)))))

(declare-fun lt!2318843 () Unit!157293)

(declare-fun choose!45013 ((InoxSet Context!10790) (InoxSet Context!10790) List!64334) Unit!157293)

(assert (=> d!1881063 (= lt!2318843 (choose!45013 lt!2318661 lt!2318651 (t!377755 s!2326)))))

(assert (=> d!1881063 (= (lemmaZipperConcatMatchesSameAsBothZippers!878 lt!2318661 lt!2318651 (t!377755 s!2326)) lt!2318843)))

(declare-fun b!5999224 () Bool)

(assert (=> b!5999224 (= e!3666867 (matchZipper!2047 lt!2318651 (t!377755 s!2326)))))

(assert (= (and d!1881063 (not res!2503997)) b!5999224))

(declare-fun m!6877568 () Bool)

(assert (=> d!1881063 m!6877568))

(assert (=> d!1881063 m!6876938))

(declare-fun m!6877570 () Bool)

(assert (=> d!1881063 m!6877570))

(assert (=> b!5999224 m!6876926))

(assert (=> b!5998504 d!1881063))

(declare-fun d!1881065 () Bool)

(declare-fun c!1071817 () Bool)

(assert (=> d!1881065 (= c!1071817 (isEmpty!36106 (t!377755 s!2326)))))

(declare-fun e!3666868 () Bool)

(assert (=> d!1881065 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (t!377755 s!2326)) e!3666868)))

(declare-fun b!5999225 () Bool)

(assert (=> b!5999225 (= e!3666868 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326))))))

(declare-fun b!5999226 () Bool)

(assert (=> b!5999226 (= e!3666868 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))))))

(assert (= (and d!1881065 c!1071817) b!5999225))

(assert (= (and d!1881065 (not c!1071817)) b!5999226))

(assert (=> d!1881065 m!6877536))

(assert (=> b!5999225 m!6876928))

(declare-fun m!6877572 () Bool)

(assert (=> b!5999225 m!6877572))

(assert (=> b!5999226 m!6877540))

(assert (=> b!5999226 m!6876928))

(assert (=> b!5999226 m!6877540))

(declare-fun m!6877574 () Bool)

(assert (=> b!5999226 m!6877574))

(assert (=> b!5999226 m!6877544))

(assert (=> b!5999226 m!6877574))

(assert (=> b!5999226 m!6877544))

(declare-fun m!6877576 () Bool)

(assert (=> b!5999226 m!6877576))

(assert (=> b!5998497 d!1881065))

(declare-fun bs!1453534 () Bool)

(declare-fun d!1881067 () Bool)

(assert (= bs!1453534 (and d!1881067 b!5998487)))

(declare-fun lambda!327453 () Int)

(assert (=> bs!1453534 (= lambda!327453 lambda!327357)))

(declare-fun bs!1453535 () Bool)

(assert (= bs!1453535 (and d!1881067 d!1881055)))

(assert (=> bs!1453535 (= lambda!327453 lambda!327452)))

(assert (=> d!1881067 true))

(assert (=> d!1881067 (= (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (flatMap!1524 lt!2318676 lambda!327453))))

(declare-fun bs!1453536 () Bool)

(assert (= bs!1453536 d!1881067))

(declare-fun m!6877578 () Bool)

(assert (=> bs!1453536 m!6877578))

(assert (=> b!5998497 d!1881067))

(declare-fun d!1881069 () Bool)

(declare-fun c!1071818 () Bool)

(assert (=> d!1881069 (= c!1071818 (isEmpty!36106 s!2326))))

(declare-fun e!3666869 () Bool)

(assert (=> d!1881069 (= (matchZipper!2047 lt!2318676 s!2326) e!3666869)))

(declare-fun b!5999227 () Bool)

(assert (=> b!5999227 (= e!3666869 (nullableZipper!1816 lt!2318676))))

(declare-fun b!5999228 () Bool)

(assert (=> b!5999228 (= e!3666869 (matchZipper!2047 (derivationStepZipper!1992 lt!2318676 (head!12559 s!2326)) (tail!11644 s!2326)))))

(assert (= (and d!1881069 c!1071818) b!5999227))

(assert (= (and d!1881069 (not c!1071818)) b!5999228))

(assert (=> d!1881069 m!6877520))

(declare-fun m!6877580 () Bool)

(assert (=> b!5999227 m!6877580))

(assert (=> b!5999228 m!6877512))

(assert (=> b!5999228 m!6877512))

(declare-fun m!6877582 () Bool)

(assert (=> b!5999228 m!6877582))

(assert (=> b!5999228 m!6877516))

(assert (=> b!5999228 m!6877582))

(assert (=> b!5999228 m!6877516))

(declare-fun m!6877584 () Bool)

(assert (=> b!5999228 m!6877584))

(assert (=> b!5998497 d!1881069))

(declare-fun bs!1453537 () Bool)

(declare-fun d!1881071 () Bool)

(assert (= bs!1453537 (and d!1881071 b!5999017)))

(declare-fun lambda!327456 () Int)

(assert (=> bs!1453537 (not (= lambda!327456 lambda!327421))))

(declare-fun bs!1453538 () Bool)

(assert (= bs!1453538 (and d!1881071 b!5999019)))

(assert (=> bs!1453538 (not (= lambda!327456 lambda!327422))))

(declare-fun bs!1453539 () Bool)

(assert (= bs!1453539 (and d!1881071 d!1881045)))

(assert (=> bs!1453539 (= lambda!327456 lambda!327449)))

(declare-fun b!5999249 () Bool)

(declare-fun e!3666884 () Bool)

(declare-fun lt!2318846 () Regex!16011)

(declare-fun isUnion!876 (Regex!16011) Bool)

(assert (=> b!5999249 (= e!3666884 (isUnion!876 lt!2318846))))

(declare-fun b!5999250 () Bool)

(declare-fun e!3666883 () Regex!16011)

(assert (=> b!5999250 (= e!3666883 EmptyLang!16011)))

(declare-fun b!5999251 () Bool)

(declare-fun e!3666886 () Bool)

(declare-fun isEmptyLang!1446 (Regex!16011) Bool)

(assert (=> b!5999251 (= e!3666886 (isEmptyLang!1446 lt!2318846))))

(declare-fun b!5999252 () Bool)

(declare-fun e!3666882 () Regex!16011)

(assert (=> b!5999252 (= e!3666882 (h!70656 (unfocusZipperList!1432 zl!343)))))

(declare-fun b!5999253 () Bool)

(declare-fun e!3666887 () Bool)

(assert (=> b!5999253 (= e!3666887 e!3666886)))

(declare-fun c!1071829 () Bool)

(assert (=> b!5999253 (= c!1071829 (isEmpty!36101 (unfocusZipperList!1432 zl!343)))))

(declare-fun b!5999254 () Bool)

(assert (=> b!5999254 (= e!3666883 (Union!16011 (h!70656 (unfocusZipperList!1432 zl!343)) (generalisedUnion!1855 (t!377753 (unfocusZipperList!1432 zl!343)))))))

(declare-fun b!5999255 () Bool)

(declare-fun e!3666885 () Bool)

(assert (=> b!5999255 (= e!3666885 (isEmpty!36101 (t!377753 (unfocusZipperList!1432 zl!343))))))

(assert (=> d!1881071 e!3666887))

(declare-fun res!2504003 () Bool)

(assert (=> d!1881071 (=> (not res!2504003) (not e!3666887))))

(assert (=> d!1881071 (= res!2504003 (validRegex!7747 lt!2318846))))

(assert (=> d!1881071 (= lt!2318846 e!3666882)))

(declare-fun c!1071827 () Bool)

(assert (=> d!1881071 (= c!1071827 e!3666885)))

(declare-fun res!2504002 () Bool)

(assert (=> d!1881071 (=> (not res!2504002) (not e!3666885))))

(assert (=> d!1881071 (= res!2504002 ((_ is Cons!64208) (unfocusZipperList!1432 zl!343)))))

(assert (=> d!1881071 (forall!15109 (unfocusZipperList!1432 zl!343) lambda!327456)))

(assert (=> d!1881071 (= (generalisedUnion!1855 (unfocusZipperList!1432 zl!343)) lt!2318846)))

(declare-fun b!5999256 () Bool)

(assert (=> b!5999256 (= e!3666886 e!3666884)))

(declare-fun c!1071830 () Bool)

(declare-fun tail!11645 (List!64332) List!64332)

(assert (=> b!5999256 (= c!1071830 (isEmpty!36101 (tail!11645 (unfocusZipperList!1432 zl!343))))))

(declare-fun b!5999257 () Bool)

(declare-fun head!12560 (List!64332) Regex!16011)

(assert (=> b!5999257 (= e!3666884 (= lt!2318846 (head!12560 (unfocusZipperList!1432 zl!343))))))

(declare-fun b!5999258 () Bool)

(assert (=> b!5999258 (= e!3666882 e!3666883)))

(declare-fun c!1071828 () Bool)

(assert (=> b!5999258 (= c!1071828 ((_ is Cons!64208) (unfocusZipperList!1432 zl!343)))))

(assert (= (and d!1881071 res!2504002) b!5999255))

(assert (= (and d!1881071 c!1071827) b!5999252))

(assert (= (and d!1881071 (not c!1071827)) b!5999258))

(assert (= (and b!5999258 c!1071828) b!5999254))

(assert (= (and b!5999258 (not c!1071828)) b!5999250))

(assert (= (and d!1881071 res!2504003) b!5999253))

(assert (= (and b!5999253 c!1071829) b!5999251))

(assert (= (and b!5999253 (not c!1071829)) b!5999256))

(assert (= (and b!5999256 c!1071830) b!5999257))

(assert (= (and b!5999256 (not c!1071830)) b!5999249))

(assert (=> b!5999257 m!6876922))

(declare-fun m!6877586 () Bool)

(assert (=> b!5999257 m!6877586))

(declare-fun m!6877588 () Bool)

(assert (=> d!1881071 m!6877588))

(assert (=> d!1881071 m!6876922))

(declare-fun m!6877590 () Bool)

(assert (=> d!1881071 m!6877590))

(declare-fun m!6877592 () Bool)

(assert (=> b!5999255 m!6877592))

(declare-fun m!6877594 () Bool)

(assert (=> b!5999254 m!6877594))

(declare-fun m!6877596 () Bool)

(assert (=> b!5999251 m!6877596))

(assert (=> b!5999253 m!6876922))

(declare-fun m!6877598 () Bool)

(assert (=> b!5999253 m!6877598))

(assert (=> b!5999256 m!6876922))

(declare-fun m!6877600 () Bool)

(assert (=> b!5999256 m!6877600))

(assert (=> b!5999256 m!6877600))

(declare-fun m!6877602 () Bool)

(assert (=> b!5999256 m!6877602))

(declare-fun m!6877604 () Bool)

(assert (=> b!5999249 m!6877604))

(assert (=> b!5998498 d!1881071))

(declare-fun bs!1453540 () Bool)

(declare-fun d!1881073 () Bool)

(assert (= bs!1453540 (and d!1881073 b!5999017)))

(declare-fun lambda!327459 () Int)

(assert (=> bs!1453540 (not (= lambda!327459 lambda!327421))))

(declare-fun bs!1453541 () Bool)

(assert (= bs!1453541 (and d!1881073 b!5999019)))

(assert (=> bs!1453541 (not (= lambda!327459 lambda!327422))))

(declare-fun bs!1453542 () Bool)

(assert (= bs!1453542 (and d!1881073 d!1881045)))

(assert (=> bs!1453542 (= lambda!327459 lambda!327449)))

(declare-fun bs!1453543 () Bool)

(assert (= bs!1453543 (and d!1881073 d!1881071)))

(assert (=> bs!1453543 (= lambda!327459 lambda!327456)))

(declare-fun lt!2318849 () List!64332)

(assert (=> d!1881073 (forall!15109 lt!2318849 lambda!327459)))

(declare-fun e!3666890 () List!64332)

(assert (=> d!1881073 (= lt!2318849 e!3666890)))

(declare-fun c!1071833 () Bool)

(assert (=> d!1881073 (= c!1071833 ((_ is Cons!64209) zl!343))))

(assert (=> d!1881073 (= (unfocusZipperList!1432 zl!343) lt!2318849)))

(declare-fun b!5999263 () Bool)

(assert (=> b!5999263 (= e!3666890 (Cons!64208 (generalisedConcat!1608 (exprs!5895 (h!70657 zl!343))) (unfocusZipperList!1432 (t!377754 zl!343))))))

(declare-fun b!5999264 () Bool)

(assert (=> b!5999264 (= e!3666890 Nil!64208)))

(assert (= (and d!1881073 c!1071833) b!5999263))

(assert (= (and d!1881073 (not c!1071833)) b!5999264))

(declare-fun m!6877606 () Bool)

(assert (=> d!1881073 m!6877606))

(assert (=> b!5999263 m!6876972))

(declare-fun m!6877608 () Bool)

(assert (=> b!5999263 m!6877608))

(assert (=> b!5998498 d!1881073))

(declare-fun bs!1453544 () Bool)

(declare-fun d!1881075 () Bool)

(assert (= bs!1453544 (and d!1881075 d!1881071)))

(declare-fun lambda!327460 () Int)

(assert (=> bs!1453544 (= lambda!327460 lambda!327456)))

(declare-fun bs!1453545 () Bool)

(assert (= bs!1453545 (and d!1881075 b!5999017)))

(assert (=> bs!1453545 (not (= lambda!327460 lambda!327421))))

(declare-fun bs!1453546 () Bool)

(assert (= bs!1453546 (and d!1881075 d!1881045)))

(assert (=> bs!1453546 (= lambda!327460 lambda!327449)))

(declare-fun bs!1453547 () Bool)

(assert (= bs!1453547 (and d!1881075 d!1881073)))

(assert (=> bs!1453547 (= lambda!327460 lambda!327459)))

(declare-fun bs!1453548 () Bool)

(assert (= bs!1453548 (and d!1881075 b!5999019)))

(assert (=> bs!1453548 (not (= lambda!327460 lambda!327422))))

(assert (=> d!1881075 (= (inv!83274 setElem!40676) (forall!15109 (exprs!5895 setElem!40676) lambda!327460))))

(declare-fun bs!1453549 () Bool)

(assert (= bs!1453549 d!1881075))

(declare-fun m!6877610 () Bool)

(assert (=> bs!1453549 m!6877610))

(assert (=> setNonEmpty!40676 d!1881075))

(declare-fun bm!484675 () Bool)

(declare-fun call!484680 () (InoxSet Context!10790))

(declare-fun call!484682 () (InoxSet Context!10790))

(assert (=> bm!484675 (= call!484680 call!484682)))

(declare-fun b!5999288 () Bool)

(declare-fun c!1071845 () Bool)

(declare-fun e!3666905 () Bool)

(assert (=> b!5999288 (= c!1071845 e!3666905)))

(declare-fun res!2504006 () Bool)

(assert (=> b!5999288 (=> (not res!2504006) (not e!3666905))))

(assert (=> b!5999288 (= res!2504006 ((_ is Concat!24856) r!7292))))

(declare-fun e!3666904 () (InoxSet Context!10790))

(declare-fun e!3666903 () (InoxSet Context!10790))

(assert (=> b!5999288 (= e!3666904 e!3666903)))

(declare-fun bm!484676 () Bool)

(declare-fun call!484683 () (InoxSet Context!10790))

(declare-fun call!484684 () List!64332)

(declare-fun c!1071847 () Bool)

(assert (=> bm!484676 (= call!484683 (derivationStepZipperDown!1261 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292)) (ite c!1071847 lt!2318656 (Context!10791 call!484684)) (h!70658 s!2326)))))

(declare-fun b!5999289 () Bool)

(declare-fun e!3666908 () (InoxSet Context!10790))

(assert (=> b!5999289 (= e!3666908 call!484680)))

(declare-fun bm!484677 () Bool)

(declare-fun call!484685 () List!64332)

(assert (=> bm!484677 (= call!484685 call!484684)))

(declare-fun bm!484678 () Bool)

(declare-fun c!1071844 () Bool)

(declare-fun $colon$colon!1896 (List!64332 Regex!16011) List!64332)

(assert (=> bm!484678 (= call!484684 ($colon$colon!1896 (exprs!5895 lt!2318656) (ite (or c!1071845 c!1071844) (regTwo!32534 r!7292) r!7292)))))

(declare-fun call!484681 () (InoxSet Context!10790))

(declare-fun bm!484679 () Bool)

(assert (=> bm!484679 (= call!484681 (derivationStepZipperDown!1261 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292)))) (ite (or c!1071847 c!1071845) lt!2318656 (Context!10791 call!484685)) (h!70658 s!2326)))))

(declare-fun b!5999290 () Bool)

(assert (=> b!5999290 (= e!3666904 ((_ map or) call!484683 call!484681))))

(declare-fun b!5999291 () Bool)

(declare-fun c!1071848 () Bool)

(assert (=> b!5999291 (= c!1071848 ((_ is Star!16011) r!7292))))

(declare-fun e!3666907 () (InoxSet Context!10790))

(assert (=> b!5999291 (= e!3666908 e!3666907)))

(declare-fun bm!484680 () Bool)

(assert (=> bm!484680 (= call!484682 call!484681)))

(declare-fun b!5999292 () Bool)

(declare-fun e!3666906 () (InoxSet Context!10790))

(assert (=> b!5999292 (= e!3666906 e!3666904)))

(assert (=> b!5999292 (= c!1071847 ((_ is Union!16011) r!7292))))

(declare-fun d!1881077 () Bool)

(declare-fun c!1071846 () Bool)

(assert (=> d!1881077 (= c!1071846 (and ((_ is ElementMatch!16011) r!7292) (= (c!1071586 r!7292) (h!70658 s!2326))))))

(assert (=> d!1881077 (= (derivationStepZipperDown!1261 r!7292 lt!2318656 (h!70658 s!2326)) e!3666906)))

(declare-fun b!5999287 () Bool)

(assert (=> b!5999287 (= e!3666907 call!484680)))

(declare-fun b!5999293 () Bool)

(assert (=> b!5999293 (= e!3666903 ((_ map or) call!484683 call!484682))))

(declare-fun b!5999294 () Bool)

(assert (=> b!5999294 (= e!3666907 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!5999295 () Bool)

(assert (=> b!5999295 (= e!3666906 (store ((as const (Array Context!10790 Bool)) false) lt!2318656 true))))

(declare-fun b!5999296 () Bool)

(assert (=> b!5999296 (= e!3666903 e!3666908)))

(assert (=> b!5999296 (= c!1071844 ((_ is Concat!24856) r!7292))))

(declare-fun b!5999297 () Bool)

(assert (=> b!5999297 (= e!3666905 (nullable!6006 (regOne!32534 r!7292)))))

(assert (= (and d!1881077 c!1071846) b!5999295))

(assert (= (and d!1881077 (not c!1071846)) b!5999292))

(assert (= (and b!5999292 c!1071847) b!5999290))

(assert (= (and b!5999292 (not c!1071847)) b!5999288))

(assert (= (and b!5999288 res!2504006) b!5999297))

(assert (= (and b!5999288 c!1071845) b!5999293))

(assert (= (and b!5999288 (not c!1071845)) b!5999296))

(assert (= (and b!5999296 c!1071844) b!5999289))

(assert (= (and b!5999296 (not c!1071844)) b!5999291))

(assert (= (and b!5999291 c!1071848) b!5999287))

(assert (= (and b!5999291 (not c!1071848)) b!5999294))

(assert (= (or b!5999289 b!5999287) bm!484677))

(assert (= (or b!5999289 b!5999287) bm!484675))

(assert (= (or b!5999293 bm!484677) bm!484678))

(assert (= (or b!5999293 bm!484675) bm!484680))

(assert (= (or b!5999290 bm!484680) bm!484679))

(assert (= (or b!5999290 b!5999293) bm!484676))

(assert (=> b!5999297 m!6876984))

(declare-fun m!6877612 () Bool)

(assert (=> bm!484676 m!6877612))

(declare-fun m!6877614 () Bool)

(assert (=> b!5999295 m!6877614))

(declare-fun m!6877616 () Bool)

(assert (=> bm!484678 m!6877616))

(declare-fun m!6877618 () Bool)

(assert (=> bm!484679 m!6877618))

(assert (=> b!5998478 d!1881077))

(declare-fun b!5999298 () Bool)

(declare-fun e!3666910 () Bool)

(assert (=> b!5999298 (= e!3666910 (nullable!6006 (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun call!484686 () (InoxSet Context!10790))

(declare-fun e!3666911 () (InoxSet Context!10790))

(declare-fun b!5999299 () Bool)

(assert (=> b!5999299 (= e!3666911 ((_ map or) call!484686 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 lt!2318655))) (h!70658 s!2326))))))

(declare-fun bm!484681 () Bool)

(assert (=> bm!484681 (= call!484686 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 lt!2318655)) (Context!10791 (t!377753 (exprs!5895 lt!2318655))) (h!70658 s!2326)))))

(declare-fun d!1881079 () Bool)

(declare-fun c!1071850 () Bool)

(assert (=> d!1881079 (= c!1071850 e!3666910)))

(declare-fun res!2504007 () Bool)

(assert (=> d!1881079 (=> (not res!2504007) (not e!3666910))))

(assert (=> d!1881079 (= res!2504007 ((_ is Cons!64208) (exprs!5895 lt!2318655)))))

(assert (=> d!1881079 (= (derivationStepZipperUp!1187 lt!2318655 (h!70658 s!2326)) e!3666911)))

(declare-fun b!5999300 () Bool)

(declare-fun e!3666909 () (InoxSet Context!10790))

(assert (=> b!5999300 (= e!3666911 e!3666909)))

(declare-fun c!1071849 () Bool)

(assert (=> b!5999300 (= c!1071849 ((_ is Cons!64208) (exprs!5895 lt!2318655)))))

(declare-fun b!5999301 () Bool)

(assert (=> b!5999301 (= e!3666909 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!5999302 () Bool)

(assert (=> b!5999302 (= e!3666909 call!484686)))

(assert (= (and d!1881079 res!2504007) b!5999298))

(assert (= (and d!1881079 c!1071850) b!5999299))

(assert (= (and d!1881079 (not c!1071850)) b!5999300))

(assert (= (and b!5999300 c!1071849) b!5999302))

(assert (= (and b!5999300 (not c!1071849)) b!5999301))

(assert (= (or b!5999299 b!5999302) bm!484681))

(declare-fun m!6877620 () Bool)

(assert (=> b!5999298 m!6877620))

(declare-fun m!6877622 () Bool)

(assert (=> b!5999299 m!6877622))

(declare-fun m!6877624 () Bool)

(assert (=> bm!484681 m!6877624))

(assert (=> b!5998478 d!1881079))

(declare-fun bs!1453550 () Bool)

(declare-fun d!1881081 () Bool)

(assert (= bs!1453550 (and d!1881081 b!5998487)))

(declare-fun lambda!327461 () Int)

(assert (=> bs!1453550 (= lambda!327461 lambda!327357)))

(declare-fun bs!1453551 () Bool)

(assert (= bs!1453551 (and d!1881081 d!1881055)))

(assert (=> bs!1453551 (= lambda!327461 lambda!327452)))

(declare-fun bs!1453552 () Bool)

(assert (= bs!1453552 (and d!1881081 d!1881067)))

(assert (=> bs!1453552 (= lambda!327461 lambda!327453)))

(assert (=> d!1881081 true))

(assert (=> d!1881081 (= (derivationStepZipper!1992 z!1189 (h!70658 s!2326)) (flatMap!1524 z!1189 lambda!327461))))

(declare-fun bs!1453553 () Bool)

(assert (= bs!1453553 d!1881081))

(declare-fun m!6877626 () Bool)

(assert (=> bs!1453553 m!6877626))

(assert (=> b!5998478 d!1881081))

(declare-fun bs!1453554 () Bool)

(declare-fun b!5999339 () Bool)

(assert (= bs!1453554 (and b!5999339 d!1881027)))

(declare-fun lambda!327466 () Int)

(assert (=> bs!1453554 (not (= lambda!327466 lambda!327425))))

(declare-fun bs!1453555 () Bool)

(assert (= bs!1453555 (and b!5999339 b!5998489)))

(assert (=> bs!1453555 (not (= lambda!327466 lambda!327356))))

(declare-fun bs!1453556 () Bool)

(assert (= bs!1453556 (and b!5999339 d!1881029)))

(assert (=> bs!1453556 (not (= lambda!327466 lambda!327430))))

(assert (=> bs!1453555 (not (= lambda!327466 lambda!327355))))

(assert (=> bs!1453556 (not (= lambda!327466 lambda!327431))))

(assert (=> b!5999339 true))

(assert (=> b!5999339 true))

(declare-fun bs!1453557 () Bool)

(declare-fun b!5999340 () Bool)

(assert (= bs!1453557 (and b!5999340 d!1881027)))

(declare-fun lambda!327467 () Int)

(assert (=> bs!1453557 (not (= lambda!327467 lambda!327425))))

(declare-fun bs!1453558 () Bool)

(assert (= bs!1453558 (and b!5999340 b!5998489)))

(assert (=> bs!1453558 (= lambda!327467 lambda!327356)))

(declare-fun bs!1453559 () Bool)

(assert (= bs!1453559 (and b!5999340 d!1881029)))

(assert (=> bs!1453559 (not (= lambda!327467 lambda!327430))))

(declare-fun bs!1453560 () Bool)

(assert (= bs!1453560 (and b!5999340 b!5999339)))

(assert (=> bs!1453560 (not (= lambda!327467 lambda!327466))))

(assert (=> bs!1453558 (not (= lambda!327467 lambda!327355))))

(assert (=> bs!1453559 (= lambda!327467 lambda!327431)))

(assert (=> b!5999340 true))

(assert (=> b!5999340 true))

(declare-fun b!5999335 () Bool)

(declare-fun e!3666934 () Bool)

(assert (=> b!5999335 (= e!3666934 (matchRSpec!3112 (regTwo!32535 r!7292) s!2326))))

(declare-fun b!5999336 () Bool)

(declare-fun e!3666935 () Bool)

(declare-fun call!484691 () Bool)

(assert (=> b!5999336 (= e!3666935 call!484691)))

(declare-fun b!5999337 () Bool)

(declare-fun c!1071859 () Bool)

(assert (=> b!5999337 (= c!1071859 ((_ is Union!16011) r!7292))))

(declare-fun e!3666930 () Bool)

(declare-fun e!3666936 () Bool)

(assert (=> b!5999337 (= e!3666930 e!3666936)))

(declare-fun b!5999338 () Bool)

(declare-fun e!3666931 () Bool)

(assert (=> b!5999338 (= e!3666935 e!3666931)))

(declare-fun res!2504026 () Bool)

(assert (=> b!5999338 (= res!2504026 (not ((_ is EmptyLang!16011) r!7292)))))

(assert (=> b!5999338 (=> (not res!2504026) (not e!3666931))))

(declare-fun e!3666932 () Bool)

(declare-fun call!484692 () Bool)

(assert (=> b!5999339 (= e!3666932 call!484692)))

(declare-fun bm!484686 () Bool)

(assert (=> bm!484686 (= call!484691 (isEmpty!36106 s!2326))))

(declare-fun bm!484687 () Bool)

(declare-fun c!1071860 () Bool)

(assert (=> bm!484687 (= call!484692 (Exists!3081 (ite c!1071860 lambda!327466 lambda!327467)))))

(declare-fun e!3666933 () Bool)

(assert (=> b!5999340 (= e!3666933 call!484692)))

(declare-fun d!1881083 () Bool)

(declare-fun c!1071862 () Bool)

(assert (=> d!1881083 (= c!1071862 ((_ is EmptyExpr!16011) r!7292))))

(assert (=> d!1881083 (= (matchRSpec!3112 r!7292 s!2326) e!3666935)))

(declare-fun b!5999341 () Bool)

(declare-fun res!2504025 () Bool)

(assert (=> b!5999341 (=> res!2504025 e!3666932)))

(assert (=> b!5999341 (= res!2504025 call!484691)))

(assert (=> b!5999341 (= e!3666933 e!3666932)))

(declare-fun b!5999342 () Bool)

(assert (=> b!5999342 (= e!3666936 e!3666933)))

(assert (=> b!5999342 (= c!1071860 ((_ is Star!16011) r!7292))))

(declare-fun b!5999343 () Bool)

(assert (=> b!5999343 (= e!3666930 (= s!2326 (Cons!64210 (c!1071586 r!7292) Nil!64210)))))

(declare-fun b!5999344 () Bool)

(assert (=> b!5999344 (= e!3666936 e!3666934)))

(declare-fun res!2504024 () Bool)

(assert (=> b!5999344 (= res!2504024 (matchRSpec!3112 (regOne!32535 r!7292) s!2326))))

(assert (=> b!5999344 (=> res!2504024 e!3666934)))

(declare-fun b!5999345 () Bool)

(declare-fun c!1071861 () Bool)

(assert (=> b!5999345 (= c!1071861 ((_ is ElementMatch!16011) r!7292))))

(assert (=> b!5999345 (= e!3666931 e!3666930)))

(assert (= (and d!1881083 c!1071862) b!5999336))

(assert (= (and d!1881083 (not c!1071862)) b!5999338))

(assert (= (and b!5999338 res!2504026) b!5999345))

(assert (= (and b!5999345 c!1071861) b!5999343))

(assert (= (and b!5999345 (not c!1071861)) b!5999337))

(assert (= (and b!5999337 c!1071859) b!5999344))

(assert (= (and b!5999337 (not c!1071859)) b!5999342))

(assert (= (and b!5999344 (not res!2504024)) b!5999335))

(assert (= (and b!5999342 c!1071860) b!5999341))

(assert (= (and b!5999342 (not c!1071860)) b!5999340))

(assert (= (and b!5999341 (not res!2504025)) b!5999339))

(assert (= (or b!5999339 b!5999340) bm!484687))

(assert (= (or b!5999336 b!5999341) bm!484686))

(declare-fun m!6877628 () Bool)

(assert (=> b!5999335 m!6877628))

(assert (=> bm!484686 m!6877520))

(declare-fun m!6877630 () Bool)

(assert (=> bm!484687 m!6877630))

(declare-fun m!6877632 () Bool)

(assert (=> b!5999344 m!6877632))

(assert (=> b!5998499 d!1881083))

(declare-fun b!5999347 () Bool)

(declare-fun e!3666942 () Bool)

(assert (=> b!5999347 (= e!3666942 (matchR!8194 (derivativeStep!4740 r!7292 (head!12559 s!2326)) (tail!11644 s!2326)))))

(declare-fun b!5999348 () Bool)

(declare-fun e!3666941 () Bool)

(declare-fun e!3666943 () Bool)

(assert (=> b!5999348 (= e!3666941 e!3666943)))

(declare-fun res!2504031 () Bool)

(assert (=> b!5999348 (=> res!2504031 e!3666943)))

(declare-fun call!484693 () Bool)

(assert (=> b!5999348 (= res!2504031 call!484693)))

(declare-fun b!5999349 () Bool)

(declare-fun e!3666939 () Bool)

(declare-fun e!3666937 () Bool)

(assert (=> b!5999349 (= e!3666939 e!3666937)))

(declare-fun c!1071864 () Bool)

(assert (=> b!5999349 (= c!1071864 ((_ is EmptyLang!16011) r!7292))))

(declare-fun b!5999350 () Bool)

(declare-fun res!2504028 () Bool)

(declare-fun e!3666938 () Bool)

(assert (=> b!5999350 (=> (not res!2504028) (not e!3666938))))

(assert (=> b!5999350 (= res!2504028 (not call!484693))))

(declare-fun b!5999351 () Bool)

(declare-fun res!2504030 () Bool)

(declare-fun e!3666940 () Bool)

(assert (=> b!5999351 (=> res!2504030 e!3666940)))

(assert (=> b!5999351 (= res!2504030 e!3666938)))

(declare-fun res!2504034 () Bool)

(assert (=> b!5999351 (=> (not res!2504034) (not e!3666938))))

(declare-fun lt!2318850 () Bool)

(assert (=> b!5999351 (= res!2504034 lt!2318850)))

(declare-fun bm!484688 () Bool)

(assert (=> bm!484688 (= call!484693 (isEmpty!36106 s!2326))))

(declare-fun b!5999352 () Bool)

(assert (=> b!5999352 (= e!3666937 (not lt!2318850))))

(declare-fun b!5999353 () Bool)

(declare-fun res!2504029 () Bool)

(assert (=> b!5999353 (=> res!2504029 e!3666940)))

(assert (=> b!5999353 (= res!2504029 (not ((_ is ElementMatch!16011) r!7292)))))

(assert (=> b!5999353 (= e!3666937 e!3666940)))

(declare-fun b!5999354 () Bool)

(declare-fun res!2504027 () Bool)

(assert (=> b!5999354 (=> (not res!2504027) (not e!3666938))))

(assert (=> b!5999354 (= res!2504027 (isEmpty!36106 (tail!11644 s!2326)))))

(declare-fun b!5999346 () Bool)

(assert (=> b!5999346 (= e!3666938 (= (head!12559 s!2326) (c!1071586 r!7292)))))

(declare-fun d!1881085 () Bool)

(assert (=> d!1881085 e!3666939))

(declare-fun c!1071865 () Bool)

(assert (=> d!1881085 (= c!1071865 ((_ is EmptyExpr!16011) r!7292))))

(assert (=> d!1881085 (= lt!2318850 e!3666942)))

(declare-fun c!1071863 () Bool)

(assert (=> d!1881085 (= c!1071863 (isEmpty!36106 s!2326))))

(assert (=> d!1881085 (validRegex!7747 r!7292)))

(assert (=> d!1881085 (= (matchR!8194 r!7292 s!2326) lt!2318850)))

(declare-fun b!5999355 () Bool)

(assert (=> b!5999355 (= e!3666940 e!3666941)))

(declare-fun res!2504032 () Bool)

(assert (=> b!5999355 (=> (not res!2504032) (not e!3666941))))

(assert (=> b!5999355 (= res!2504032 (not lt!2318850))))

(declare-fun b!5999356 () Bool)

(assert (=> b!5999356 (= e!3666942 (nullable!6006 r!7292))))

(declare-fun b!5999357 () Bool)

(assert (=> b!5999357 (= e!3666943 (not (= (head!12559 s!2326) (c!1071586 r!7292))))))

(declare-fun b!5999358 () Bool)

(declare-fun res!2504033 () Bool)

(assert (=> b!5999358 (=> res!2504033 e!3666943)))

(assert (=> b!5999358 (= res!2504033 (not (isEmpty!36106 (tail!11644 s!2326))))))

(declare-fun b!5999359 () Bool)

(assert (=> b!5999359 (= e!3666939 (= lt!2318850 call!484693))))

(assert (= (and d!1881085 c!1071863) b!5999356))

(assert (= (and d!1881085 (not c!1071863)) b!5999347))

(assert (= (and d!1881085 c!1071865) b!5999359))

(assert (= (and d!1881085 (not c!1071865)) b!5999349))

(assert (= (and b!5999349 c!1071864) b!5999352))

(assert (= (and b!5999349 (not c!1071864)) b!5999353))

(assert (= (and b!5999353 (not res!2504029)) b!5999351))

(assert (= (and b!5999351 res!2504034) b!5999350))

(assert (= (and b!5999350 res!2504028) b!5999354))

(assert (= (and b!5999354 res!2504027) b!5999346))

(assert (= (and b!5999351 (not res!2504030)) b!5999355))

(assert (= (and b!5999355 res!2504032) b!5999348))

(assert (= (and b!5999348 (not res!2504031)) b!5999358))

(assert (= (and b!5999358 (not res!2504033)) b!5999357))

(assert (= (or b!5999359 b!5999348 b!5999350) bm!484688))

(assert (=> b!5999347 m!6877512))

(assert (=> b!5999347 m!6877512))

(declare-fun m!6877634 () Bool)

(assert (=> b!5999347 m!6877634))

(assert (=> b!5999347 m!6877516))

(assert (=> b!5999347 m!6877634))

(assert (=> b!5999347 m!6877516))

(declare-fun m!6877636 () Bool)

(assert (=> b!5999347 m!6877636))

(assert (=> d!1881085 m!6877520))

(assert (=> d!1881085 m!6876920))

(assert (=> b!5999354 m!6877516))

(assert (=> b!5999354 m!6877516))

(assert (=> b!5999354 m!6877524))

(assert (=> b!5999346 m!6877512))

(assert (=> b!5999357 m!6877512))

(assert (=> bm!484688 m!6877520))

(assert (=> b!5999358 m!6877516))

(assert (=> b!5999358 m!6877516))

(assert (=> b!5999358 m!6877524))

(declare-fun m!6877638 () Bool)

(assert (=> b!5999356 m!6877638))

(assert (=> b!5998499 d!1881085))

(declare-fun d!1881087 () Bool)

(assert (=> d!1881087 (= (matchR!8194 r!7292 s!2326) (matchRSpec!3112 r!7292 s!2326))))

(declare-fun lt!2318853 () Unit!157293)

(declare-fun choose!45015 (Regex!16011 List!64334) Unit!157293)

(assert (=> d!1881087 (= lt!2318853 (choose!45015 r!7292 s!2326))))

(assert (=> d!1881087 (validRegex!7747 r!7292)))

(assert (=> d!1881087 (= (mainMatchTheorem!3112 r!7292 s!2326) lt!2318853)))

(declare-fun bs!1453561 () Bool)

(assert (= bs!1453561 d!1881087))

(assert (=> bs!1453561 m!6876968))

(assert (=> bs!1453561 m!6876966))

(declare-fun m!6877640 () Bool)

(assert (=> bs!1453561 m!6877640))

(assert (=> bs!1453561 m!6876920))

(assert (=> b!5998499 d!1881087))

(declare-fun bs!1453562 () Bool)

(declare-fun b!5999360 () Bool)

(assert (= bs!1453562 (and b!5999360 d!1881071)))

(declare-fun lambda!327468 () Int)

(assert (=> bs!1453562 (not (= lambda!327468 lambda!327456))))

(declare-fun bs!1453563 () Bool)

(assert (= bs!1453563 (and b!5999360 b!5999017)))

(declare-fun lt!2318854 () Int)

(assert (=> bs!1453563 (= (= lt!2318854 lt!2318786) (= lambda!327468 lambda!327421))))

(declare-fun bs!1453564 () Bool)

(assert (= bs!1453564 (and b!5999360 d!1881073)))

(assert (=> bs!1453564 (not (= lambda!327468 lambda!327459))))

(declare-fun bs!1453565 () Bool)

(assert (= bs!1453565 (and b!5999360 b!5999019)))

(assert (=> bs!1453565 (= (= lt!2318854 lt!2318787) (= lambda!327468 lambda!327422))))

(declare-fun bs!1453566 () Bool)

(assert (= bs!1453566 (and b!5999360 d!1881075)))

(assert (=> bs!1453566 (not (= lambda!327468 lambda!327460))))

(declare-fun bs!1453567 () Bool)

(assert (= bs!1453567 (and b!5999360 d!1881045)))

(assert (=> bs!1453567 (not (= lambda!327468 lambda!327449))))

(assert (=> b!5999360 true))

(declare-fun bs!1453568 () Bool)

(declare-fun b!5999362 () Bool)

(assert (= bs!1453568 (and b!5999362 d!1881071)))

(declare-fun lambda!327469 () Int)

(assert (=> bs!1453568 (not (= lambda!327469 lambda!327456))))

(declare-fun bs!1453569 () Bool)

(assert (= bs!1453569 (and b!5999362 b!5999017)))

(declare-fun lt!2318855 () Int)

(assert (=> bs!1453569 (= (= lt!2318855 lt!2318786) (= lambda!327469 lambda!327421))))

(declare-fun bs!1453570 () Bool)

(assert (= bs!1453570 (and b!5999362 d!1881073)))

(assert (=> bs!1453570 (not (= lambda!327469 lambda!327459))))

(declare-fun bs!1453571 () Bool)

(assert (= bs!1453571 (and b!5999362 b!5999360)))

(assert (=> bs!1453571 (= (= lt!2318855 lt!2318854) (= lambda!327469 lambda!327468))))

(declare-fun bs!1453572 () Bool)

(assert (= bs!1453572 (and b!5999362 b!5999019)))

(assert (=> bs!1453572 (= (= lt!2318855 lt!2318787) (= lambda!327469 lambda!327422))))

(declare-fun bs!1453573 () Bool)

(assert (= bs!1453573 (and b!5999362 d!1881075)))

(assert (=> bs!1453573 (not (= lambda!327469 lambda!327460))))

(declare-fun bs!1453574 () Bool)

(assert (= bs!1453574 (and b!5999362 d!1881045)))

(assert (=> bs!1453574 (not (= lambda!327469 lambda!327449))))

(assert (=> b!5999362 true))

(declare-fun d!1881089 () Bool)

(declare-fun e!3666945 () Bool)

(assert (=> d!1881089 e!3666945))

(declare-fun res!2504035 () Bool)

(assert (=> d!1881089 (=> (not res!2504035) (not e!3666945))))

(assert (=> d!1881089 (= res!2504035 (>= lt!2318855 0))))

(declare-fun e!3666944 () Int)

(assert (=> d!1881089 (= lt!2318855 e!3666944)))

(declare-fun c!1071866 () Bool)

(assert (=> d!1881089 (= c!1071866 ((_ is Cons!64208) (exprs!5895 lt!2318655)))))

(assert (=> d!1881089 (= (contextDepth!159 lt!2318655) lt!2318855)))

(assert (=> b!5999360 (= e!3666944 lt!2318854)))

(assert (=> b!5999360 (= lt!2318854 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 lt!2318655))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))))))

(declare-fun lt!2318857 () Unit!157293)

(assert (=> b!5999360 (= lt!2318857 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 lt!2318655)) lt!2318854 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))))))

(assert (=> b!5999360 (forall!15109 (t!377753 (exprs!5895 lt!2318655)) lambda!327468)))

(declare-fun lt!2318856 () Unit!157293)

(assert (=> b!5999360 (= lt!2318856 lt!2318857)))

(declare-fun b!5999361 () Bool)

(assert (=> b!5999361 (= e!3666944 0)))

(assert (=> b!5999362 (= e!3666945 (forall!15109 (exprs!5895 lt!2318655) lambda!327469))))

(assert (= (and d!1881089 c!1071866) b!5999360))

(assert (= (and d!1881089 (not c!1071866)) b!5999361))

(assert (= (and d!1881089 res!2504035) b!5999362))

(declare-fun m!6877642 () Bool)

(assert (=> b!5999360 m!6877642))

(declare-fun m!6877644 () Bool)

(assert (=> b!5999360 m!6877644))

(declare-fun m!6877646 () Bool)

(assert (=> b!5999360 m!6877646))

(assert (=> b!5999360 m!6877644))

(declare-fun m!6877648 () Bool)

(assert (=> b!5999360 m!6877648))

(assert (=> b!5999360 m!6877644))

(declare-fun m!6877650 () Bool)

(assert (=> b!5999360 m!6877650))

(assert (=> b!5999360 m!6877642))

(declare-fun m!6877652 () Bool)

(assert (=> b!5999362 m!6877652))

(assert (=> b!5998500 d!1881089))

(declare-fun bs!1453575 () Bool)

(declare-fun b!5999363 () Bool)

(assert (= bs!1453575 (and b!5999363 d!1881071)))

(declare-fun lambda!327470 () Int)

(assert (=> bs!1453575 (not (= lambda!327470 lambda!327456))))

(declare-fun bs!1453576 () Bool)

(assert (= bs!1453576 (and b!5999363 b!5999017)))

(declare-fun lt!2318858 () Int)

(assert (=> bs!1453576 (= (= lt!2318858 lt!2318786) (= lambda!327470 lambda!327421))))

(declare-fun bs!1453577 () Bool)

(assert (= bs!1453577 (and b!5999363 d!1881073)))

(assert (=> bs!1453577 (not (= lambda!327470 lambda!327459))))

(declare-fun bs!1453578 () Bool)

(assert (= bs!1453578 (and b!5999363 b!5999362)))

(assert (=> bs!1453578 (= (= lt!2318858 lt!2318855) (= lambda!327470 lambda!327469))))

(declare-fun bs!1453579 () Bool)

(assert (= bs!1453579 (and b!5999363 b!5999360)))

(assert (=> bs!1453579 (= (= lt!2318858 lt!2318854) (= lambda!327470 lambda!327468))))

(declare-fun bs!1453580 () Bool)

(assert (= bs!1453580 (and b!5999363 b!5999019)))

(assert (=> bs!1453580 (= (= lt!2318858 lt!2318787) (= lambda!327470 lambda!327422))))

(declare-fun bs!1453581 () Bool)

(assert (= bs!1453581 (and b!5999363 d!1881075)))

(assert (=> bs!1453581 (not (= lambda!327470 lambda!327460))))

(declare-fun bs!1453582 () Bool)

(assert (= bs!1453582 (and b!5999363 d!1881045)))

(assert (=> bs!1453582 (not (= lambda!327470 lambda!327449))))

(assert (=> b!5999363 true))

(declare-fun bs!1453583 () Bool)

(declare-fun b!5999365 () Bool)

(assert (= bs!1453583 (and b!5999365 d!1881071)))

(declare-fun lambda!327471 () Int)

(assert (=> bs!1453583 (not (= lambda!327471 lambda!327456))))

(declare-fun bs!1453584 () Bool)

(assert (= bs!1453584 (and b!5999365 b!5999363)))

(declare-fun lt!2318859 () Int)

(assert (=> bs!1453584 (= (= lt!2318859 lt!2318858) (= lambda!327471 lambda!327470))))

(declare-fun bs!1453585 () Bool)

(assert (= bs!1453585 (and b!5999365 b!5999017)))

(assert (=> bs!1453585 (= (= lt!2318859 lt!2318786) (= lambda!327471 lambda!327421))))

(declare-fun bs!1453586 () Bool)

(assert (= bs!1453586 (and b!5999365 d!1881073)))

(assert (=> bs!1453586 (not (= lambda!327471 lambda!327459))))

(declare-fun bs!1453587 () Bool)

(assert (= bs!1453587 (and b!5999365 b!5999362)))

(assert (=> bs!1453587 (= (= lt!2318859 lt!2318855) (= lambda!327471 lambda!327469))))

(declare-fun bs!1453588 () Bool)

(assert (= bs!1453588 (and b!5999365 b!5999360)))

(assert (=> bs!1453588 (= (= lt!2318859 lt!2318854) (= lambda!327471 lambda!327468))))

(declare-fun bs!1453589 () Bool)

(assert (= bs!1453589 (and b!5999365 b!5999019)))

(assert (=> bs!1453589 (= (= lt!2318859 lt!2318787) (= lambda!327471 lambda!327422))))

(declare-fun bs!1453590 () Bool)

(assert (= bs!1453590 (and b!5999365 d!1881075)))

(assert (=> bs!1453590 (not (= lambda!327471 lambda!327460))))

(declare-fun bs!1453591 () Bool)

(assert (= bs!1453591 (and b!5999365 d!1881045)))

(assert (=> bs!1453591 (not (= lambda!327471 lambda!327449))))

(assert (=> b!5999365 true))

(declare-fun d!1881091 () Bool)

(declare-fun e!3666947 () Bool)

(assert (=> d!1881091 e!3666947))

(declare-fun res!2504036 () Bool)

(assert (=> d!1881091 (=> (not res!2504036) (not e!3666947))))

(assert (=> d!1881091 (= res!2504036 (>= lt!2318859 0))))

(declare-fun e!3666946 () Int)

(assert (=> d!1881091 (= lt!2318859 e!3666946)))

(declare-fun c!1071867 () Bool)

(assert (=> d!1881091 (= c!1071867 ((_ is Cons!64208) (exprs!5895 lt!2318654)))))

(assert (=> d!1881091 (= (contextDepth!159 lt!2318654) lt!2318859)))

(assert (=> b!5999363 (= e!3666946 lt!2318858)))

(assert (=> b!5999363 (= lt!2318858 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 lt!2318654))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))))))

(declare-fun lt!2318861 () Unit!157293)

(assert (=> b!5999363 (= lt!2318861 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 lt!2318654)) lt!2318858 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))))))

(assert (=> b!5999363 (forall!15109 (t!377753 (exprs!5895 lt!2318654)) lambda!327470)))

(declare-fun lt!2318860 () Unit!157293)

(assert (=> b!5999363 (= lt!2318860 lt!2318861)))

(declare-fun b!5999364 () Bool)

(assert (=> b!5999364 (= e!3666946 0)))

(assert (=> b!5999365 (= e!3666947 (forall!15109 (exprs!5895 lt!2318654) lambda!327471))))

(assert (= (and d!1881091 c!1071867) b!5999363))

(assert (= (and d!1881091 (not c!1071867)) b!5999364))

(assert (= (and d!1881091 res!2504036) b!5999365))

(declare-fun m!6877654 () Bool)

(assert (=> b!5999363 m!6877654))

(declare-fun m!6877656 () Bool)

(assert (=> b!5999363 m!6877656))

(declare-fun m!6877658 () Bool)

(assert (=> b!5999363 m!6877658))

(assert (=> b!5999363 m!6877656))

(declare-fun m!6877660 () Bool)

(assert (=> b!5999363 m!6877660))

(assert (=> b!5999363 m!6877656))

(declare-fun m!6877662 () Bool)

(assert (=> b!5999363 m!6877662))

(assert (=> b!5999363 m!6877654))

(declare-fun m!6877664 () Bool)

(assert (=> b!5999365 m!6877664))

(assert (=> b!5998500 d!1881091))

(declare-fun bs!1453592 () Bool)

(declare-fun d!1881093 () Bool)

(assert (= bs!1453592 (and d!1881093 d!1881071)))

(declare-fun lambda!327472 () Int)

(assert (=> bs!1453592 (= lambda!327472 lambda!327456)))

(declare-fun bs!1453593 () Bool)

(assert (= bs!1453593 (and d!1881093 b!5999363)))

(assert (=> bs!1453593 (not (= lambda!327472 lambda!327470))))

(declare-fun bs!1453594 () Bool)

(assert (= bs!1453594 (and d!1881093 b!5999365)))

(assert (=> bs!1453594 (not (= lambda!327472 lambda!327471))))

(declare-fun bs!1453595 () Bool)

(assert (= bs!1453595 (and d!1881093 b!5999017)))

(assert (=> bs!1453595 (not (= lambda!327472 lambda!327421))))

(declare-fun bs!1453596 () Bool)

(assert (= bs!1453596 (and d!1881093 d!1881073)))

(assert (=> bs!1453596 (= lambda!327472 lambda!327459)))

(declare-fun bs!1453597 () Bool)

(assert (= bs!1453597 (and d!1881093 b!5999362)))

(assert (=> bs!1453597 (not (= lambda!327472 lambda!327469))))

(declare-fun bs!1453598 () Bool)

(assert (= bs!1453598 (and d!1881093 b!5999360)))

(assert (=> bs!1453598 (not (= lambda!327472 lambda!327468))))

(declare-fun bs!1453599 () Bool)

(assert (= bs!1453599 (and d!1881093 b!5999019)))

(assert (=> bs!1453599 (not (= lambda!327472 lambda!327422))))

(declare-fun bs!1453600 () Bool)

(assert (= bs!1453600 (and d!1881093 d!1881075)))

(assert (=> bs!1453600 (= lambda!327472 lambda!327460)))

(declare-fun bs!1453601 () Bool)

(assert (= bs!1453601 (and d!1881093 d!1881045)))

(assert (=> bs!1453601 (= lambda!327472 lambda!327449)))

(assert (=> d!1881093 (= (inv!83274 (h!70657 zl!343)) (forall!15109 (exprs!5895 (h!70657 zl!343)) lambda!327472))))

(declare-fun bs!1453602 () Bool)

(assert (= bs!1453602 d!1881093))

(declare-fun m!6877666 () Bool)

(assert (=> bs!1453602 m!6877666))

(assert (=> b!5998479 d!1881093))

(declare-fun bm!484689 () Bool)

(declare-fun call!484694 () (InoxSet Context!10790))

(declare-fun call!484696 () (InoxSet Context!10790))

(assert (=> bm!484689 (= call!484694 call!484696)))

(declare-fun b!5999367 () Bool)

(declare-fun c!1071869 () Bool)

(declare-fun e!3666950 () Bool)

(assert (=> b!5999367 (= c!1071869 e!3666950)))

(declare-fun res!2504037 () Bool)

(assert (=> b!5999367 (=> (not res!2504037) (not e!3666950))))

(assert (=> b!5999367 (= res!2504037 ((_ is Concat!24856) (regTwo!32534 r!7292)))))

(declare-fun e!3666949 () (InoxSet Context!10790))

(declare-fun e!3666948 () (InoxSet Context!10790))

(assert (=> b!5999367 (= e!3666949 e!3666948)))

(declare-fun call!484697 () (InoxSet Context!10790))

(declare-fun call!484698 () List!64332)

(declare-fun bm!484690 () Bool)

(declare-fun c!1071871 () Bool)

(assert (=> bm!484690 (= call!484697 (derivationStepZipperDown!1261 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292))) (ite c!1071871 lt!2318656 (Context!10791 call!484698)) (h!70658 s!2326)))))

(declare-fun b!5999368 () Bool)

(declare-fun e!3666953 () (InoxSet Context!10790))

(assert (=> b!5999368 (= e!3666953 call!484694)))

(declare-fun bm!484691 () Bool)

(declare-fun call!484699 () List!64332)

(assert (=> bm!484691 (= call!484699 call!484698)))

(declare-fun c!1071868 () Bool)

(declare-fun bm!484692 () Bool)

(assert (=> bm!484692 (= call!484698 ($colon$colon!1896 (exprs!5895 lt!2318656) (ite (or c!1071869 c!1071868) (regTwo!32534 (regTwo!32534 r!7292)) (regTwo!32534 r!7292))))))

(declare-fun bm!484693 () Bool)

(declare-fun call!484695 () (InoxSet Context!10790))

(assert (=> bm!484693 (= call!484695 (derivationStepZipperDown!1261 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292))))) (ite (or c!1071871 c!1071869) lt!2318656 (Context!10791 call!484699)) (h!70658 s!2326)))))

(declare-fun b!5999369 () Bool)

(assert (=> b!5999369 (= e!3666949 ((_ map or) call!484697 call!484695))))

(declare-fun b!5999370 () Bool)

(declare-fun c!1071872 () Bool)

(assert (=> b!5999370 (= c!1071872 ((_ is Star!16011) (regTwo!32534 r!7292)))))

(declare-fun e!3666952 () (InoxSet Context!10790))

(assert (=> b!5999370 (= e!3666953 e!3666952)))

(declare-fun bm!484694 () Bool)

(assert (=> bm!484694 (= call!484696 call!484695)))

(declare-fun b!5999371 () Bool)

(declare-fun e!3666951 () (InoxSet Context!10790))

(assert (=> b!5999371 (= e!3666951 e!3666949)))

(assert (=> b!5999371 (= c!1071871 ((_ is Union!16011) (regTwo!32534 r!7292)))))

(declare-fun d!1881095 () Bool)

(declare-fun c!1071870 () Bool)

(assert (=> d!1881095 (= c!1071870 (and ((_ is ElementMatch!16011) (regTwo!32534 r!7292)) (= (c!1071586 (regTwo!32534 r!7292)) (h!70658 s!2326))))))

(assert (=> d!1881095 (= (derivationStepZipperDown!1261 (regTwo!32534 r!7292) lt!2318656 (h!70658 s!2326)) e!3666951)))

(declare-fun b!5999366 () Bool)

(assert (=> b!5999366 (= e!3666952 call!484694)))

(declare-fun b!5999372 () Bool)

(assert (=> b!5999372 (= e!3666948 ((_ map or) call!484697 call!484696))))

(declare-fun b!5999373 () Bool)

(assert (=> b!5999373 (= e!3666952 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!5999374 () Bool)

(assert (=> b!5999374 (= e!3666951 (store ((as const (Array Context!10790 Bool)) false) lt!2318656 true))))

(declare-fun b!5999375 () Bool)

(assert (=> b!5999375 (= e!3666948 e!3666953)))

(assert (=> b!5999375 (= c!1071868 ((_ is Concat!24856) (regTwo!32534 r!7292)))))

(declare-fun b!5999376 () Bool)

(assert (=> b!5999376 (= e!3666950 (nullable!6006 (regOne!32534 (regTwo!32534 r!7292))))))

(assert (= (and d!1881095 c!1071870) b!5999374))

(assert (= (and d!1881095 (not c!1071870)) b!5999371))

(assert (= (and b!5999371 c!1071871) b!5999369))

(assert (= (and b!5999371 (not c!1071871)) b!5999367))

(assert (= (and b!5999367 res!2504037) b!5999376))

(assert (= (and b!5999367 c!1071869) b!5999372))

(assert (= (and b!5999367 (not c!1071869)) b!5999375))

(assert (= (and b!5999375 c!1071868) b!5999368))

(assert (= (and b!5999375 (not c!1071868)) b!5999370))

(assert (= (and b!5999370 c!1071872) b!5999366))

(assert (= (and b!5999370 (not c!1071872)) b!5999373))

(assert (= (or b!5999368 b!5999366) bm!484691))

(assert (= (or b!5999368 b!5999366) bm!484689))

(assert (= (or b!5999372 bm!484691) bm!484692))

(assert (= (or b!5999372 bm!484689) bm!484694))

(assert (= (or b!5999369 bm!484694) bm!484693))

(assert (= (or b!5999369 b!5999372) bm!484690))

(declare-fun m!6877668 () Bool)

(assert (=> b!5999376 m!6877668))

(declare-fun m!6877670 () Bool)

(assert (=> bm!484690 m!6877670))

(assert (=> b!5999374 m!6877614))

(declare-fun m!6877672 () Bool)

(assert (=> bm!484692 m!6877672))

(declare-fun m!6877674 () Bool)

(assert (=> bm!484693 m!6877674))

(assert (=> b!5998492 d!1881095))

(declare-fun d!1881097 () Bool)

(assert (=> d!1881097 (= (flatMap!1524 lt!2318668 lambda!327357) (choose!45004 lt!2318668 lambda!327357))))

(declare-fun bs!1453603 () Bool)

(assert (= bs!1453603 d!1881097))

(declare-fun m!6877676 () Bool)

(assert (=> bs!1453603 m!6877676))

(assert (=> b!5998492 d!1881097))

(declare-fun b!5999377 () Bool)

(declare-fun e!3666955 () Bool)

(assert (=> b!5999377 (= e!3666955 (nullable!6006 (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun call!484700 () (InoxSet Context!10790))

(declare-fun b!5999378 () Bool)

(declare-fun e!3666956 () (InoxSet Context!10790))

(assert (=> b!5999378 (= e!3666956 ((_ map or) call!484700 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 lt!2318663))) (h!70658 s!2326))))))

(declare-fun bm!484695 () Bool)

(assert (=> bm!484695 (= call!484700 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 lt!2318663)) (Context!10791 (t!377753 (exprs!5895 lt!2318663))) (h!70658 s!2326)))))

(declare-fun d!1881099 () Bool)

(declare-fun c!1071874 () Bool)

(assert (=> d!1881099 (= c!1071874 e!3666955)))

(declare-fun res!2504038 () Bool)

(assert (=> d!1881099 (=> (not res!2504038) (not e!3666955))))

(assert (=> d!1881099 (= res!2504038 ((_ is Cons!64208) (exprs!5895 lt!2318663)))))

(assert (=> d!1881099 (= (derivationStepZipperUp!1187 lt!2318663 (h!70658 s!2326)) e!3666956)))

(declare-fun b!5999379 () Bool)

(declare-fun e!3666954 () (InoxSet Context!10790))

(assert (=> b!5999379 (= e!3666956 e!3666954)))

(declare-fun c!1071873 () Bool)

(assert (=> b!5999379 (= c!1071873 ((_ is Cons!64208) (exprs!5895 lt!2318663)))))

(declare-fun b!5999380 () Bool)

(assert (=> b!5999380 (= e!3666954 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!5999381 () Bool)

(assert (=> b!5999381 (= e!3666954 call!484700)))

(assert (= (and d!1881099 res!2504038) b!5999377))

(assert (= (and d!1881099 c!1071874) b!5999378))

(assert (= (and d!1881099 (not c!1071874)) b!5999379))

(assert (= (and b!5999379 c!1071873) b!5999381))

(assert (= (and b!5999379 (not c!1071873)) b!5999380))

(assert (= (or b!5999378 b!5999381) bm!484695))

(declare-fun m!6877678 () Bool)

(assert (=> b!5999377 m!6877678))

(declare-fun m!6877680 () Bool)

(assert (=> b!5999378 m!6877680))

(declare-fun m!6877682 () Bool)

(assert (=> bm!484695 m!6877682))

(assert (=> b!5998492 d!1881099))

(declare-fun d!1881101 () Bool)

(assert (=> d!1881101 (= (flatMap!1524 lt!2318676 lambda!327357) (choose!45004 lt!2318676 lambda!327357))))

(declare-fun bs!1453604 () Bool)

(assert (= bs!1453604 d!1881101))

(declare-fun m!6877684 () Bool)

(assert (=> bs!1453604 m!6877684))

(assert (=> b!5998492 d!1881101))

(declare-fun b!5999382 () Bool)

(declare-fun e!3666958 () Bool)

(assert (=> b!5999382 (= e!3666958 (nullable!6006 (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun b!5999383 () Bool)

(declare-fun call!484701 () (InoxSet Context!10790))

(declare-fun e!3666959 () (InoxSet Context!10790))

(assert (=> b!5999383 (= e!3666959 ((_ map or) call!484701 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 lt!2318654))) (h!70658 s!2326))))))

(declare-fun bm!484696 () Bool)

(assert (=> bm!484696 (= call!484701 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 lt!2318654)) (Context!10791 (t!377753 (exprs!5895 lt!2318654))) (h!70658 s!2326)))))

(declare-fun d!1881103 () Bool)

(declare-fun c!1071876 () Bool)

(assert (=> d!1881103 (= c!1071876 e!3666958)))

(declare-fun res!2504039 () Bool)

(assert (=> d!1881103 (=> (not res!2504039) (not e!3666958))))

(assert (=> d!1881103 (= res!2504039 ((_ is Cons!64208) (exprs!5895 lt!2318654)))))

(assert (=> d!1881103 (= (derivationStepZipperUp!1187 lt!2318654 (h!70658 s!2326)) e!3666959)))

(declare-fun b!5999384 () Bool)

(declare-fun e!3666957 () (InoxSet Context!10790))

(assert (=> b!5999384 (= e!3666959 e!3666957)))

(declare-fun c!1071875 () Bool)

(assert (=> b!5999384 (= c!1071875 ((_ is Cons!64208) (exprs!5895 lt!2318654)))))

(declare-fun b!5999385 () Bool)

(assert (=> b!5999385 (= e!3666957 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!5999386 () Bool)

(assert (=> b!5999386 (= e!3666957 call!484701)))

(assert (= (and d!1881103 res!2504039) b!5999382))

(assert (= (and d!1881103 c!1071876) b!5999383))

(assert (= (and d!1881103 (not c!1071876)) b!5999384))

(assert (= (and b!5999384 c!1071875) b!5999386))

(assert (= (and b!5999384 (not c!1071875)) b!5999385))

(assert (= (or b!5999383 b!5999386) bm!484696))

(declare-fun m!6877686 () Bool)

(assert (=> b!5999382 m!6877686))

(declare-fun m!6877688 () Bool)

(assert (=> b!5999383 m!6877688))

(declare-fun m!6877690 () Bool)

(assert (=> bm!484696 m!6877690))

(assert (=> b!5998492 d!1881103))

(declare-fun bm!484697 () Bool)

(declare-fun call!484702 () (InoxSet Context!10790))

(declare-fun call!484704 () (InoxSet Context!10790))

(assert (=> bm!484697 (= call!484702 call!484704)))

(declare-fun b!5999388 () Bool)

(declare-fun c!1071878 () Bool)

(declare-fun e!3666962 () Bool)

(assert (=> b!5999388 (= c!1071878 e!3666962)))

(declare-fun res!2504040 () Bool)

(assert (=> b!5999388 (=> (not res!2504040) (not e!3666962))))

(assert (=> b!5999388 (= res!2504040 ((_ is Concat!24856) (regOne!32534 r!7292)))))

(declare-fun e!3666961 () (InoxSet Context!10790))

(declare-fun e!3666960 () (InoxSet Context!10790))

(assert (=> b!5999388 (= e!3666961 e!3666960)))

(declare-fun bm!484698 () Bool)

(declare-fun call!484706 () List!64332)

(declare-fun call!484705 () (InoxSet Context!10790))

(declare-fun c!1071880 () Bool)

(assert (=> bm!484698 (= call!484705 (derivationStepZipperDown!1261 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292))) (ite c!1071880 lt!2318663 (Context!10791 call!484706)) (h!70658 s!2326)))))

(declare-fun b!5999389 () Bool)

(declare-fun e!3666965 () (InoxSet Context!10790))

(assert (=> b!5999389 (= e!3666965 call!484702)))

(declare-fun bm!484699 () Bool)

(declare-fun call!484707 () List!64332)

(assert (=> bm!484699 (= call!484707 call!484706)))

(declare-fun c!1071877 () Bool)

(declare-fun bm!484700 () Bool)

(assert (=> bm!484700 (= call!484706 ($colon$colon!1896 (exprs!5895 lt!2318663) (ite (or c!1071878 c!1071877) (regTwo!32534 (regOne!32534 r!7292)) (regOne!32534 r!7292))))))

(declare-fun call!484703 () (InoxSet Context!10790))

(declare-fun bm!484701 () Bool)

(assert (=> bm!484701 (= call!484703 (derivationStepZipperDown!1261 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292))))) (ite (or c!1071880 c!1071878) lt!2318663 (Context!10791 call!484707)) (h!70658 s!2326)))))

(declare-fun b!5999390 () Bool)

(assert (=> b!5999390 (= e!3666961 ((_ map or) call!484705 call!484703))))

(declare-fun b!5999391 () Bool)

(declare-fun c!1071881 () Bool)

(assert (=> b!5999391 (= c!1071881 ((_ is Star!16011) (regOne!32534 r!7292)))))

(declare-fun e!3666964 () (InoxSet Context!10790))

(assert (=> b!5999391 (= e!3666965 e!3666964)))

(declare-fun bm!484702 () Bool)

(assert (=> bm!484702 (= call!484704 call!484703)))

(declare-fun b!5999392 () Bool)

(declare-fun e!3666963 () (InoxSet Context!10790))

(assert (=> b!5999392 (= e!3666963 e!3666961)))

(assert (=> b!5999392 (= c!1071880 ((_ is Union!16011) (regOne!32534 r!7292)))))

(declare-fun d!1881105 () Bool)

(declare-fun c!1071879 () Bool)

(assert (=> d!1881105 (= c!1071879 (and ((_ is ElementMatch!16011) (regOne!32534 r!7292)) (= (c!1071586 (regOne!32534 r!7292)) (h!70658 s!2326))))))

(assert (=> d!1881105 (= (derivationStepZipperDown!1261 (regOne!32534 r!7292) lt!2318663 (h!70658 s!2326)) e!3666963)))

(declare-fun b!5999387 () Bool)

(assert (=> b!5999387 (= e!3666964 call!484702)))

(declare-fun b!5999393 () Bool)

(assert (=> b!5999393 (= e!3666960 ((_ map or) call!484705 call!484704))))

(declare-fun b!5999394 () Bool)

(assert (=> b!5999394 (= e!3666964 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!5999395 () Bool)

(assert (=> b!5999395 (= e!3666963 (store ((as const (Array Context!10790 Bool)) false) lt!2318663 true))))

(declare-fun b!5999396 () Bool)

(assert (=> b!5999396 (= e!3666960 e!3666965)))

(assert (=> b!5999396 (= c!1071877 ((_ is Concat!24856) (regOne!32534 r!7292)))))

(declare-fun b!5999397 () Bool)

(assert (=> b!5999397 (= e!3666962 (nullable!6006 (regOne!32534 (regOne!32534 r!7292))))))

(assert (= (and d!1881105 c!1071879) b!5999395))

(assert (= (and d!1881105 (not c!1071879)) b!5999392))

(assert (= (and b!5999392 c!1071880) b!5999390))

(assert (= (and b!5999392 (not c!1071880)) b!5999388))

(assert (= (and b!5999388 res!2504040) b!5999397))

(assert (= (and b!5999388 c!1071878) b!5999393))

(assert (= (and b!5999388 (not c!1071878)) b!5999396))

(assert (= (and b!5999396 c!1071877) b!5999389))

(assert (= (and b!5999396 (not c!1071877)) b!5999391))

(assert (= (and b!5999391 c!1071881) b!5999387))

(assert (= (and b!5999391 (not c!1071881)) b!5999394))

(assert (= (or b!5999389 b!5999387) bm!484699))

(assert (= (or b!5999389 b!5999387) bm!484697))

(assert (= (or b!5999393 bm!484699) bm!484700))

(assert (= (or b!5999393 bm!484697) bm!484702))

(assert (= (or b!5999390 bm!484702) bm!484701))

(assert (= (or b!5999390 b!5999393) bm!484698))

(declare-fun m!6877692 () Bool)

(assert (=> b!5999397 m!6877692))

(declare-fun m!6877694 () Bool)

(assert (=> bm!484698 m!6877694))

(assert (=> b!5999395 m!6876992))

(declare-fun m!6877696 () Bool)

(assert (=> bm!484700 m!6877696))

(declare-fun m!6877698 () Bool)

(assert (=> bm!484701 m!6877698))

(assert (=> b!5998492 d!1881105))

(declare-fun d!1881107 () Bool)

(assert (=> d!1881107 (= (flatMap!1524 lt!2318676 lambda!327357) (dynLambda!25167 lambda!327357 lt!2318654))))

(declare-fun lt!2318862 () Unit!157293)

(assert (=> d!1881107 (= lt!2318862 (choose!45005 lt!2318676 lt!2318654 lambda!327357))))

(assert (=> d!1881107 (= lt!2318676 (store ((as const (Array Context!10790 Bool)) false) lt!2318654 true))))

(assert (=> d!1881107 (= (lemmaFlatMapOnSingletonSet!1050 lt!2318676 lt!2318654 lambda!327357) lt!2318862)))

(declare-fun b_lambda!226699 () Bool)

(assert (=> (not b_lambda!226699) (not d!1881107)))

(declare-fun bs!1453605 () Bool)

(assert (= bs!1453605 d!1881107))

(assert (=> bs!1453605 m!6876980))

(declare-fun m!6877700 () Bool)

(assert (=> bs!1453605 m!6877700))

(declare-fun m!6877702 () Bool)

(assert (=> bs!1453605 m!6877702))

(assert (=> bs!1453605 m!6876990))

(assert (=> b!5998492 d!1881107))

(declare-fun d!1881109 () Bool)

(declare-fun nullableFct!1976 (Regex!16011) Bool)

(assert (=> d!1881109 (= (nullable!6006 (regOne!32534 r!7292)) (nullableFct!1976 (regOne!32534 r!7292)))))

(declare-fun bs!1453606 () Bool)

(assert (= bs!1453606 d!1881109))

(declare-fun m!6877704 () Bool)

(assert (=> bs!1453606 m!6877704))

(assert (=> b!5998492 d!1881109))

(declare-fun d!1881111 () Bool)

(assert (=> d!1881111 (= (flatMap!1524 lt!2318668 lambda!327357) (dynLambda!25167 lambda!327357 lt!2318663))))

(declare-fun lt!2318863 () Unit!157293)

(assert (=> d!1881111 (= lt!2318863 (choose!45005 lt!2318668 lt!2318663 lambda!327357))))

(assert (=> d!1881111 (= lt!2318668 (store ((as const (Array Context!10790 Bool)) false) lt!2318663 true))))

(assert (=> d!1881111 (= (lemmaFlatMapOnSingletonSet!1050 lt!2318668 lt!2318663 lambda!327357) lt!2318863)))

(declare-fun b_lambda!226701 () Bool)

(assert (=> (not b_lambda!226701) (not d!1881111)))

(declare-fun bs!1453607 () Bool)

(assert (= bs!1453607 d!1881111))

(assert (=> bs!1453607 m!6876982))

(declare-fun m!6877706 () Bool)

(assert (=> bs!1453607 m!6877706))

(declare-fun m!6877708 () Bool)

(assert (=> bs!1453607 m!6877708))

(assert (=> bs!1453607 m!6876992))

(assert (=> b!5998492 d!1881111))

(declare-fun d!1881113 () Bool)

(assert (=> d!1881113 (= (isEmpty!36102 (t!377754 zl!343)) ((_ is Nil!64209) (t!377754 zl!343)))))

(assert (=> b!5998491 d!1881113))

(declare-fun d!1881115 () Bool)

(declare-fun lt!2318866 () Regex!16011)

(assert (=> d!1881115 (validRegex!7747 lt!2318866)))

(assert (=> d!1881115 (= lt!2318866 (generalisedUnion!1855 (unfocusZipperList!1432 zl!343)))))

(assert (=> d!1881115 (= (unfocusZipper!1753 zl!343) lt!2318866)))

(declare-fun bs!1453608 () Bool)

(assert (= bs!1453608 d!1881115))

(declare-fun m!6877710 () Bool)

(assert (=> bs!1453608 m!6877710))

(assert (=> bs!1453608 m!6876922))

(assert (=> bs!1453608 m!6876922))

(assert (=> bs!1453608 m!6876924))

(assert (=> b!5998493 d!1881115))

(declare-fun bs!1453609 () Bool)

(declare-fun d!1881117 () Bool)

(assert (= bs!1453609 (and d!1881117 d!1881071)))

(declare-fun lambda!327475 () Int)

(assert (=> bs!1453609 (= lambda!327475 lambda!327456)))

(declare-fun bs!1453610 () Bool)

(assert (= bs!1453610 (and d!1881117 b!5999363)))

(assert (=> bs!1453610 (not (= lambda!327475 lambda!327470))))

(declare-fun bs!1453611 () Bool)

(assert (= bs!1453611 (and d!1881117 b!5999365)))

(assert (=> bs!1453611 (not (= lambda!327475 lambda!327471))))

(declare-fun bs!1453612 () Bool)

(assert (= bs!1453612 (and d!1881117 b!5999017)))

(assert (=> bs!1453612 (not (= lambda!327475 lambda!327421))))

(declare-fun bs!1453613 () Bool)

(assert (= bs!1453613 (and d!1881117 d!1881073)))

(assert (=> bs!1453613 (= lambda!327475 lambda!327459)))

(declare-fun bs!1453614 () Bool)

(assert (= bs!1453614 (and d!1881117 b!5999362)))

(assert (=> bs!1453614 (not (= lambda!327475 lambda!327469))))

(declare-fun bs!1453615 () Bool)

(assert (= bs!1453615 (and d!1881117 b!5999360)))

(assert (=> bs!1453615 (not (= lambda!327475 lambda!327468))))

(declare-fun bs!1453616 () Bool)

(assert (= bs!1453616 (and d!1881117 b!5999019)))

(assert (=> bs!1453616 (not (= lambda!327475 lambda!327422))))

(declare-fun bs!1453617 () Bool)

(assert (= bs!1453617 (and d!1881117 d!1881093)))

(assert (=> bs!1453617 (= lambda!327475 lambda!327472)))

(declare-fun bs!1453618 () Bool)

(assert (= bs!1453618 (and d!1881117 d!1881075)))

(assert (=> bs!1453618 (= lambda!327475 lambda!327460)))

(declare-fun bs!1453619 () Bool)

(assert (= bs!1453619 (and d!1881117 d!1881045)))

(assert (=> bs!1453619 (= lambda!327475 lambda!327449)))

(declare-fun b!5999418 () Bool)

(declare-fun e!3666982 () Bool)

(declare-fun lt!2318869 () Regex!16011)

(declare-fun isConcat!959 (Regex!16011) Bool)

(assert (=> b!5999418 (= e!3666982 (isConcat!959 lt!2318869))))

(declare-fun e!3666983 () Bool)

(assert (=> d!1881117 e!3666983))

(declare-fun res!2504045 () Bool)

(assert (=> d!1881117 (=> (not res!2504045) (not e!3666983))))

(assert (=> d!1881117 (= res!2504045 (validRegex!7747 lt!2318869))))

(declare-fun e!3666980 () Regex!16011)

(assert (=> d!1881117 (= lt!2318869 e!3666980)))

(declare-fun c!1071892 () Bool)

(declare-fun e!3666979 () Bool)

(assert (=> d!1881117 (= c!1071892 e!3666979)))

(declare-fun res!2504046 () Bool)

(assert (=> d!1881117 (=> (not res!2504046) (not e!3666979))))

(assert (=> d!1881117 (= res!2504046 ((_ is Cons!64208) (exprs!5895 (h!70657 zl!343))))))

(assert (=> d!1881117 (forall!15109 (exprs!5895 (h!70657 zl!343)) lambda!327475)))

(assert (=> d!1881117 (= (generalisedConcat!1608 (exprs!5895 (h!70657 zl!343))) lt!2318869)))

(declare-fun b!5999419 () Bool)

(declare-fun e!3666981 () Regex!16011)

(assert (=> b!5999419 (= e!3666981 EmptyExpr!16011)))

(declare-fun b!5999420 () Bool)

(assert (=> b!5999420 (= e!3666980 (h!70656 (exprs!5895 (h!70657 zl!343))))))

(declare-fun b!5999421 () Bool)

(declare-fun e!3666978 () Bool)

(assert (=> b!5999421 (= e!3666983 e!3666978)))

(declare-fun c!1071893 () Bool)

(assert (=> b!5999421 (= c!1071893 (isEmpty!36101 (exprs!5895 (h!70657 zl!343))))))

(declare-fun b!5999422 () Bool)

(assert (=> b!5999422 (= e!3666979 (isEmpty!36101 (t!377753 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!5999423 () Bool)

(assert (=> b!5999423 (= e!3666980 e!3666981)))

(declare-fun c!1071890 () Bool)

(assert (=> b!5999423 (= c!1071890 ((_ is Cons!64208) (exprs!5895 (h!70657 zl!343))))))

(declare-fun b!5999424 () Bool)

(assert (=> b!5999424 (= e!3666982 (= lt!2318869 (head!12560 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!5999425 () Bool)

(declare-fun isEmptyExpr!1436 (Regex!16011) Bool)

(assert (=> b!5999425 (= e!3666978 (isEmptyExpr!1436 lt!2318869))))

(declare-fun b!5999426 () Bool)

(assert (=> b!5999426 (= e!3666978 e!3666982)))

(declare-fun c!1071891 () Bool)

(assert (=> b!5999426 (= c!1071891 (isEmpty!36101 (tail!11645 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!5999427 () Bool)

(assert (=> b!5999427 (= e!3666981 (Concat!24856 (h!70656 (exprs!5895 (h!70657 zl!343))) (generalisedConcat!1608 (t!377753 (exprs!5895 (h!70657 zl!343))))))))

(assert (= (and d!1881117 res!2504046) b!5999422))

(assert (= (and d!1881117 c!1071892) b!5999420))

(assert (= (and d!1881117 (not c!1071892)) b!5999423))

(assert (= (and b!5999423 c!1071890) b!5999427))

(assert (= (and b!5999423 (not c!1071890)) b!5999419))

(assert (= (and d!1881117 res!2504045) b!5999421))

(assert (= (and b!5999421 c!1071893) b!5999425))

(assert (= (and b!5999421 (not c!1071893)) b!5999426))

(assert (= (and b!5999426 c!1071891) b!5999424))

(assert (= (and b!5999426 (not c!1071891)) b!5999418))

(declare-fun m!6877712 () Bool)

(assert (=> b!5999426 m!6877712))

(assert (=> b!5999426 m!6877712))

(declare-fun m!6877714 () Bool)

(assert (=> b!5999426 m!6877714))

(declare-fun m!6877716 () Bool)

(assert (=> b!5999418 m!6877716))

(declare-fun m!6877718 () Bool)

(assert (=> b!5999424 m!6877718))

(declare-fun m!6877720 () Bool)

(assert (=> b!5999421 m!6877720))

(declare-fun m!6877722 () Bool)

(assert (=> d!1881117 m!6877722))

(declare-fun m!6877724 () Bool)

(assert (=> d!1881117 m!6877724))

(declare-fun m!6877726 () Bool)

(assert (=> b!5999425 m!6877726))

(assert (=> b!5999422 m!6876958))

(declare-fun m!6877728 () Bool)

(assert (=> b!5999427 m!6877728))

(assert (=> b!5998473 d!1881117))

(declare-fun bm!484709 () Bool)

(declare-fun call!484715 () Bool)

(declare-fun call!484714 () Bool)

(assert (=> bm!484709 (= call!484715 call!484714)))

(declare-fun bm!484710 () Bool)

(declare-fun call!484716 () Bool)

(declare-fun c!1071898 () Bool)

(assert (=> bm!484710 (= call!484716 (validRegex!7747 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun b!5999446 () Bool)

(declare-fun res!2504061 () Bool)

(declare-fun e!3666998 () Bool)

(assert (=> b!5999446 (=> (not res!2504061) (not e!3666998))))

(assert (=> b!5999446 (= res!2504061 call!484715)))

(declare-fun e!3667004 () Bool)

(assert (=> b!5999446 (= e!3667004 e!3666998)))

(declare-fun b!5999447 () Bool)

(declare-fun e!3667002 () Bool)

(assert (=> b!5999447 (= e!3667002 e!3667004)))

(assert (=> b!5999447 (= c!1071898 ((_ is Union!16011) r!7292))))

(declare-fun b!5999449 () Bool)

(declare-fun e!3667000 () Bool)

(assert (=> b!5999449 (= e!3667002 e!3667000)))

(declare-fun res!2504060 () Bool)

(assert (=> b!5999449 (= res!2504060 (not (nullable!6006 (reg!16340 r!7292))))))

(assert (=> b!5999449 (=> (not res!2504060) (not e!3667000))))

(declare-fun b!5999450 () Bool)

(declare-fun res!2504059 () Bool)

(declare-fun e!3667001 () Bool)

(assert (=> b!5999450 (=> res!2504059 e!3667001)))

(assert (=> b!5999450 (= res!2504059 (not ((_ is Concat!24856) r!7292)))))

(assert (=> b!5999450 (= e!3667004 e!3667001)))

(declare-fun b!5999451 () Bool)

(declare-fun e!3667003 () Bool)

(assert (=> b!5999451 (= e!3667003 e!3667002)))

(declare-fun c!1071899 () Bool)

(assert (=> b!5999451 (= c!1071899 ((_ is Star!16011) r!7292))))

(declare-fun bm!484711 () Bool)

(assert (=> bm!484711 (= call!484714 (validRegex!7747 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun b!5999452 () Bool)

(assert (=> b!5999452 (= e!3666998 call!484716)))

(declare-fun b!5999453 () Bool)

(declare-fun e!3666999 () Bool)

(assert (=> b!5999453 (= e!3666999 call!484716)))

(declare-fun b!5999454 () Bool)

(assert (=> b!5999454 (= e!3667000 call!484714)))

(declare-fun b!5999448 () Bool)

(assert (=> b!5999448 (= e!3667001 e!3666999)))

(declare-fun res!2504058 () Bool)

(assert (=> b!5999448 (=> (not res!2504058) (not e!3666999))))

(assert (=> b!5999448 (= res!2504058 call!484715)))

(declare-fun d!1881119 () Bool)

(declare-fun res!2504057 () Bool)

(assert (=> d!1881119 (=> res!2504057 e!3667003)))

(assert (=> d!1881119 (= res!2504057 ((_ is ElementMatch!16011) r!7292))))

(assert (=> d!1881119 (= (validRegex!7747 r!7292) e!3667003)))

(assert (= (and d!1881119 (not res!2504057)) b!5999451))

(assert (= (and b!5999451 c!1071899) b!5999449))

(assert (= (and b!5999451 (not c!1071899)) b!5999447))

(assert (= (and b!5999449 res!2504060) b!5999454))

(assert (= (and b!5999447 c!1071898) b!5999446))

(assert (= (and b!5999447 (not c!1071898)) b!5999450))

(assert (= (and b!5999446 res!2504061) b!5999452))

(assert (= (and b!5999450 (not res!2504059)) b!5999448))

(assert (= (and b!5999448 res!2504058) b!5999453))

(assert (= (or b!5999452 b!5999453) bm!484710))

(assert (= (or b!5999446 b!5999448) bm!484709))

(assert (= (or b!5999454 bm!484709) bm!484711))

(declare-fun m!6877730 () Bool)

(assert (=> bm!484710 m!6877730))

(declare-fun m!6877732 () Bool)

(assert (=> b!5999449 m!6877732))

(declare-fun m!6877734 () Bool)

(assert (=> bm!484711 m!6877734))

(assert (=> start!605986 d!1881119))

(declare-fun d!1881121 () Bool)

(declare-fun c!1071900 () Bool)

(assert (=> d!1881121 (= c!1071900 (isEmpty!36106 (t!377755 s!2326)))))

(declare-fun e!3667005 () Bool)

(assert (=> d!1881121 (= (matchZipper!2047 lt!2318651 (t!377755 s!2326)) e!3667005)))

(declare-fun b!5999455 () Bool)

(assert (=> b!5999455 (= e!3667005 (nullableZipper!1816 lt!2318651))))

(declare-fun b!5999456 () Bool)

(assert (=> b!5999456 (= e!3667005 (matchZipper!2047 (derivationStepZipper!1992 lt!2318651 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))))))

(assert (= (and d!1881121 c!1071900) b!5999455))

(assert (= (and d!1881121 (not c!1071900)) b!5999456))

(assert (=> d!1881121 m!6877536))

(declare-fun m!6877736 () Bool)

(assert (=> b!5999455 m!6877736))

(assert (=> b!5999456 m!6877540))

(assert (=> b!5999456 m!6877540))

(declare-fun m!6877738 () Bool)

(assert (=> b!5999456 m!6877738))

(assert (=> b!5999456 m!6877544))

(assert (=> b!5999456 m!6877738))

(assert (=> b!5999456 m!6877544))

(declare-fun m!6877740 () Bool)

(assert (=> b!5999456 m!6877740))

(assert (=> b!5998496 d!1881121))

(declare-fun b!5999461 () Bool)

(declare-fun e!3667008 () Bool)

(declare-fun tp!1668740 () Bool)

(declare-fun tp!1668741 () Bool)

(assert (=> b!5999461 (= e!3667008 (and tp!1668740 tp!1668741))))

(assert (=> b!5998475 (= tp!1668669 e!3667008)))

(assert (= (and b!5998475 ((_ is Cons!64208) (exprs!5895 (h!70657 zl!343)))) b!5999461))

(declare-fun b!5999475 () Bool)

(declare-fun e!3667011 () Bool)

(declare-fun tp!1668755 () Bool)

(declare-fun tp!1668754 () Bool)

(assert (=> b!5999475 (= e!3667011 (and tp!1668755 tp!1668754))))

(declare-fun b!5999474 () Bool)

(declare-fun tp!1668753 () Bool)

(assert (=> b!5999474 (= e!3667011 tp!1668753)))

(declare-fun b!5999472 () Bool)

(assert (=> b!5999472 (= e!3667011 tp_is_empty!41275)))

(assert (=> b!5998472 (= tp!1668672 e!3667011)))

(declare-fun b!5999473 () Bool)

(declare-fun tp!1668752 () Bool)

(declare-fun tp!1668756 () Bool)

(assert (=> b!5999473 (= e!3667011 (and tp!1668752 tp!1668756))))

(assert (= (and b!5998472 ((_ is ElementMatch!16011) (reg!16340 r!7292))) b!5999472))

(assert (= (and b!5998472 ((_ is Concat!24856) (reg!16340 r!7292))) b!5999473))

(assert (= (and b!5998472 ((_ is Star!16011) (reg!16340 r!7292))) b!5999474))

(assert (= (and b!5998472 ((_ is Union!16011) (reg!16340 r!7292))) b!5999475))

(declare-fun condSetEmpty!40682 () Bool)

(assert (=> setNonEmpty!40676 (= condSetEmpty!40682 (= setRest!40676 ((as const (Array Context!10790 Bool)) false)))))

(declare-fun setRes!40682 () Bool)

(assert (=> setNonEmpty!40676 (= tp!1668677 setRes!40682)))

(declare-fun setIsEmpty!40682 () Bool)

(assert (=> setIsEmpty!40682 setRes!40682))

(declare-fun tp!1668762 () Bool)

(declare-fun e!3667014 () Bool)

(declare-fun setElem!40682 () Context!10790)

(declare-fun setNonEmpty!40682 () Bool)

(assert (=> setNonEmpty!40682 (= setRes!40682 (and tp!1668762 (inv!83274 setElem!40682) e!3667014))))

(declare-fun setRest!40682 () (InoxSet Context!10790))

(assert (=> setNonEmpty!40682 (= setRest!40676 ((_ map or) (store ((as const (Array Context!10790 Bool)) false) setElem!40682 true) setRest!40682))))

(declare-fun b!5999480 () Bool)

(declare-fun tp!1668761 () Bool)

(assert (=> b!5999480 (= e!3667014 tp!1668761)))

(assert (= (and setNonEmpty!40676 condSetEmpty!40682) setIsEmpty!40682))

(assert (= (and setNonEmpty!40676 (not condSetEmpty!40682)) setNonEmpty!40682))

(assert (= setNonEmpty!40682 b!5999480))

(declare-fun m!6877742 () Bool)

(assert (=> setNonEmpty!40682 m!6877742))

(declare-fun b!5999481 () Bool)

(declare-fun e!3667015 () Bool)

(declare-fun tp!1668763 () Bool)

(declare-fun tp!1668764 () Bool)

(assert (=> b!5999481 (= e!3667015 (and tp!1668763 tp!1668764))))

(assert (=> b!5998494 (= tp!1668674 e!3667015)))

(assert (= (and b!5998494 ((_ is Cons!64208) (exprs!5895 setElem!40676))) b!5999481))

(declare-fun b!5999485 () Bool)

(declare-fun e!3667016 () Bool)

(declare-fun tp!1668768 () Bool)

(declare-fun tp!1668767 () Bool)

(assert (=> b!5999485 (= e!3667016 (and tp!1668768 tp!1668767))))

(declare-fun b!5999484 () Bool)

(declare-fun tp!1668766 () Bool)

(assert (=> b!5999484 (= e!3667016 tp!1668766)))

(declare-fun b!5999482 () Bool)

(assert (=> b!5999482 (= e!3667016 tp_is_empty!41275)))

(assert (=> b!5998485 (= tp!1668671 e!3667016)))

(declare-fun b!5999483 () Bool)

(declare-fun tp!1668765 () Bool)

(declare-fun tp!1668769 () Bool)

(assert (=> b!5999483 (= e!3667016 (and tp!1668765 tp!1668769))))

(assert (= (and b!5998485 ((_ is ElementMatch!16011) (regOne!32535 r!7292))) b!5999482))

(assert (= (and b!5998485 ((_ is Concat!24856) (regOne!32535 r!7292))) b!5999483))

(assert (= (and b!5998485 ((_ is Star!16011) (regOne!32535 r!7292))) b!5999484))

(assert (= (and b!5998485 ((_ is Union!16011) (regOne!32535 r!7292))) b!5999485))

(declare-fun b!5999489 () Bool)

(declare-fun e!3667017 () Bool)

(declare-fun tp!1668773 () Bool)

(declare-fun tp!1668772 () Bool)

(assert (=> b!5999489 (= e!3667017 (and tp!1668773 tp!1668772))))

(declare-fun b!5999488 () Bool)

(declare-fun tp!1668771 () Bool)

(assert (=> b!5999488 (= e!3667017 tp!1668771)))

(declare-fun b!5999486 () Bool)

(assert (=> b!5999486 (= e!3667017 tp_is_empty!41275)))

(assert (=> b!5998485 (= tp!1668668 e!3667017)))

(declare-fun b!5999487 () Bool)

(declare-fun tp!1668770 () Bool)

(declare-fun tp!1668774 () Bool)

(assert (=> b!5999487 (= e!3667017 (and tp!1668770 tp!1668774))))

(assert (= (and b!5998485 ((_ is ElementMatch!16011) (regTwo!32535 r!7292))) b!5999486))

(assert (= (and b!5998485 ((_ is Concat!24856) (regTwo!32535 r!7292))) b!5999487))

(assert (= (and b!5998485 ((_ is Star!16011) (regTwo!32535 r!7292))) b!5999488))

(assert (= (and b!5998485 ((_ is Union!16011) (regTwo!32535 r!7292))) b!5999489))

(declare-fun b!5999494 () Bool)

(declare-fun e!3667020 () Bool)

(declare-fun tp!1668777 () Bool)

(assert (=> b!5999494 (= e!3667020 (and tp_is_empty!41275 tp!1668777))))

(assert (=> b!5998474 (= tp!1668670 e!3667020)))

(assert (= (and b!5998474 ((_ is Cons!64210) (t!377755 s!2326))) b!5999494))

(declare-fun b!5999502 () Bool)

(declare-fun e!3667026 () Bool)

(declare-fun tp!1668782 () Bool)

(assert (=> b!5999502 (= e!3667026 tp!1668782)))

(declare-fun b!5999501 () Bool)

(declare-fun e!3667025 () Bool)

(declare-fun tp!1668783 () Bool)

(assert (=> b!5999501 (= e!3667025 (and (inv!83274 (h!70657 (t!377754 zl!343))) e!3667026 tp!1668783))))

(assert (=> b!5998479 (= tp!1668675 e!3667025)))

(assert (= b!5999501 b!5999502))

(assert (= (and b!5998479 ((_ is Cons!64209) (t!377754 zl!343))) b!5999501))

(declare-fun m!6877744 () Bool)

(assert (=> b!5999501 m!6877744))

(declare-fun b!5999506 () Bool)

(declare-fun e!3667027 () Bool)

(declare-fun tp!1668787 () Bool)

(declare-fun tp!1668786 () Bool)

(assert (=> b!5999506 (= e!3667027 (and tp!1668787 tp!1668786))))

(declare-fun b!5999505 () Bool)

(declare-fun tp!1668785 () Bool)

(assert (=> b!5999505 (= e!3667027 tp!1668785)))

(declare-fun b!5999503 () Bool)

(assert (=> b!5999503 (= e!3667027 tp_is_empty!41275)))

(assert (=> b!5998495 (= tp!1668673 e!3667027)))

(declare-fun b!5999504 () Bool)

(declare-fun tp!1668784 () Bool)

(declare-fun tp!1668788 () Bool)

(assert (=> b!5999504 (= e!3667027 (and tp!1668784 tp!1668788))))

(assert (= (and b!5998495 ((_ is ElementMatch!16011) (regOne!32534 r!7292))) b!5999503))

(assert (= (and b!5998495 ((_ is Concat!24856) (regOne!32534 r!7292))) b!5999504))

(assert (= (and b!5998495 ((_ is Star!16011) (regOne!32534 r!7292))) b!5999505))

(assert (= (and b!5998495 ((_ is Union!16011) (regOne!32534 r!7292))) b!5999506))

(declare-fun b!5999510 () Bool)

(declare-fun e!3667028 () Bool)

(declare-fun tp!1668792 () Bool)

(declare-fun tp!1668791 () Bool)

(assert (=> b!5999510 (= e!3667028 (and tp!1668792 tp!1668791))))

(declare-fun b!5999509 () Bool)

(declare-fun tp!1668790 () Bool)

(assert (=> b!5999509 (= e!3667028 tp!1668790)))

(declare-fun b!5999507 () Bool)

(assert (=> b!5999507 (= e!3667028 tp_is_empty!41275)))

(assert (=> b!5998495 (= tp!1668676 e!3667028)))

(declare-fun b!5999508 () Bool)

(declare-fun tp!1668789 () Bool)

(declare-fun tp!1668793 () Bool)

(assert (=> b!5999508 (= e!3667028 (and tp!1668789 tp!1668793))))

(assert (= (and b!5998495 ((_ is ElementMatch!16011) (regTwo!32534 r!7292))) b!5999507))

(assert (= (and b!5998495 ((_ is Concat!24856) (regTwo!32534 r!7292))) b!5999508))

(assert (= (and b!5998495 ((_ is Star!16011) (regTwo!32534 r!7292))) b!5999509))

(assert (= (and b!5998495 ((_ is Union!16011) (regTwo!32534 r!7292))) b!5999510))

(declare-fun b_lambda!226703 () Bool)

(assert (= b_lambda!226697 (or b!5998487 b_lambda!226703)))

(declare-fun bs!1453620 () Bool)

(declare-fun d!1881123 () Bool)

(assert (= bs!1453620 (and d!1881123 b!5998487)))

(assert (=> bs!1453620 (= (dynLambda!25167 lambda!327357 (h!70657 zl!343)) (derivationStepZipperUp!1187 (h!70657 zl!343) (h!70658 s!2326)))))

(assert (=> bs!1453620 m!6877010))

(assert (=> d!1881019 d!1881123))

(declare-fun b_lambda!226705 () Bool)

(assert (= b_lambda!226699 (or b!5998487 b_lambda!226705)))

(declare-fun bs!1453621 () Bool)

(declare-fun d!1881125 () Bool)

(assert (= bs!1453621 (and d!1881125 b!5998487)))

(assert (=> bs!1453621 (= (dynLambda!25167 lambda!327357 lt!2318654) (derivationStepZipperUp!1187 lt!2318654 (h!70658 s!2326)))))

(assert (=> bs!1453621 m!6876996))

(assert (=> d!1881107 d!1881125))

(declare-fun b_lambda!226707 () Bool)

(assert (= b_lambda!226701 (or b!5998487 b_lambda!226707)))

(declare-fun bs!1453622 () Bool)

(declare-fun d!1881127 () Bool)

(assert (= bs!1453622 (and d!1881127 b!5998487)))

(assert (=> bs!1453622 (= (dynLambda!25167 lambda!327357 lt!2318663) (derivationStepZipperUp!1187 lt!2318663 (h!70658 s!2326)))))

(assert (=> bs!1453622 m!6876988))

(assert (=> d!1881111 d!1881127))

(check-sat (not d!1881055) (not b!5999505) (not bm!484662) (not b!5999363) (not b!5999494) (not b!5999257) (not b!5999502) (not b!5999357) (not d!1881111) (not d!1881081) (not b!5999203) (not b!5999358) (not b!5999455) (not b!5999501) (not b_lambda!226705) (not bm!484650) (not d!1881065) (not bm!484653) (not b!5999095) (not b!5999456) (not d!1881047) (not bm!484686) (not bm!484678) (not bs!1453621) (not b!5999378) (not d!1881049) (not b!5999225) (not bm!484701) (not d!1881025) (not b!5999376) (not bm!484656) (not b!5999089) (not d!1881101) (not b!5999263) (not bs!1453620) (not b!5999220) (not bm!484657) (not b!5999204) (not d!1881073) (not b!5999216) (not d!1881067) (not d!1881071) (not b!5999092) (not d!1881115) (not b!5999221) (not d!1881027) (not b!5999365) (not bm!484698) (not d!1881051) (not b!5999421) (not b!5999202) (not b!5999297) (not b!5999217) (not bm!484690) (not b!5999213) (not b!5999298) (not b!5999356) (not b!5999504) (not b!5999508) (not bm!484695) (not b!5999033) (not b!5999212) (not b!5999397) (not b!5999228) (not b!5999424) (not b!5999425) (not d!1881039) (not b!5999362) (not bm!484676) (not bm!484693) (not d!1881093) (not b!5999347) (not b!5999192) (not b!5999377) (not b!5999418) (not b!5999193) (not b!5999218) (not d!1881021) (not b!5999360) (not d!1881097) (not b!5999061) (not b!5999382) (not d!1881023) (not b!5999082) (not b!5999227) (not b!5999200) (not b!5999449) (not bm!484692) (not b!5999426) (not d!1881061) (not d!1881087) (not b!5999475) (not bm!484658) (not bm!484631) (not b!5999211) (not b!5999484) (not b!5999219) (not bm!484681) (not d!1881019) (not b!5999510) (not b_lambda!226707) (not b!5999354) (not bm!484710) (not b!5999059) (not b!5999084) (not b!5999017) (not b!5999019) (not b!5999485) (not d!1881069) (not bm!484652) (not d!1881107) (not b!5999251) (not d!1881121) (not b!5999090) (not b!5999461) (not d!1881059) (not bm!484711) (not b!5999062) (not d!1881045) (not b!5999487) (not b!5999489) (not d!1881085) (not b!5999254) (not b!5999255) (not b!5999299) (not b!5999224) (not bm!484696) (not bm!484688) (not b!5999481) tp_is_empty!41275 (not bm!484649) (not d!1881109) (not bm!484700) (not b!5999249) (not d!1881015) (not bs!1453622) (not b!5999346) (not b!5999480) (not bm!484679) (not d!1881053) (not bm!484646) (not setNonEmpty!40682) (not d!1881117) (not b!5999058) (not bm!484651) (not b!5999383) (not d!1881031) (not b!5999483) (not b!5999488) (not b!5999226) (not b!5999474) (not b_lambda!226703) (not b!5999427) (not b!5999344) (not b!5999087) (not b!5999032) (not b!5999055) (not b!5999506) (not bm!484687) (not b!5999473) (not b!5999509) (not b!5999335) (not d!1881029) (not d!1881057) (not d!1881063) (not b!5999253) (not b!5999256) (not b!5999057) (not b!5999210) (not b!5999422) (not d!1881075) (not bm!484659))
(check-sat)
(get-model)

(declare-fun bm!484906 () Bool)

(declare-fun call!484912 () Bool)

(declare-fun call!484911 () Bool)

(assert (=> bm!484906 (= call!484912 call!484911)))

(declare-fun bm!484907 () Bool)

(declare-fun call!484913 () Bool)

(declare-fun c!1072140 () Bool)

(assert (=> bm!484907 (= call!484913 (validRegex!7747 (ite c!1072140 (regTwo!32535 lt!2318869) (regTwo!32534 lt!2318869))))))

(declare-fun b!6000360 () Bool)

(declare-fun res!2504325 () Bool)

(declare-fun e!3667520 () Bool)

(assert (=> b!6000360 (=> (not res!2504325) (not e!3667520))))

(assert (=> b!6000360 (= res!2504325 call!484912)))

(declare-fun e!3667526 () Bool)

(assert (=> b!6000360 (= e!3667526 e!3667520)))

(declare-fun b!6000361 () Bool)

(declare-fun e!3667524 () Bool)

(assert (=> b!6000361 (= e!3667524 e!3667526)))

(assert (=> b!6000361 (= c!1072140 ((_ is Union!16011) lt!2318869))))

(declare-fun b!6000363 () Bool)

(declare-fun e!3667522 () Bool)

(assert (=> b!6000363 (= e!3667524 e!3667522)))

(declare-fun res!2504324 () Bool)

(assert (=> b!6000363 (= res!2504324 (not (nullable!6006 (reg!16340 lt!2318869))))))

(assert (=> b!6000363 (=> (not res!2504324) (not e!3667522))))

(declare-fun b!6000364 () Bool)

(declare-fun res!2504323 () Bool)

(declare-fun e!3667523 () Bool)

(assert (=> b!6000364 (=> res!2504323 e!3667523)))

(assert (=> b!6000364 (= res!2504323 (not ((_ is Concat!24856) lt!2318869)))))

(assert (=> b!6000364 (= e!3667526 e!3667523)))

(declare-fun b!6000365 () Bool)

(declare-fun e!3667525 () Bool)

(assert (=> b!6000365 (= e!3667525 e!3667524)))

(declare-fun c!1072141 () Bool)

(assert (=> b!6000365 (= c!1072141 ((_ is Star!16011) lt!2318869))))

(declare-fun bm!484908 () Bool)

(assert (=> bm!484908 (= call!484911 (validRegex!7747 (ite c!1072141 (reg!16340 lt!2318869) (ite c!1072140 (regOne!32535 lt!2318869) (regOne!32534 lt!2318869)))))))

(declare-fun b!6000366 () Bool)

(assert (=> b!6000366 (= e!3667520 call!484913)))

(declare-fun b!6000367 () Bool)

(declare-fun e!3667521 () Bool)

(assert (=> b!6000367 (= e!3667521 call!484913)))

(declare-fun b!6000368 () Bool)

(assert (=> b!6000368 (= e!3667522 call!484911)))

(declare-fun b!6000362 () Bool)

(assert (=> b!6000362 (= e!3667523 e!3667521)))

(declare-fun res!2504322 () Bool)

(assert (=> b!6000362 (=> (not res!2504322) (not e!3667521))))

(assert (=> b!6000362 (= res!2504322 call!484912)))

(declare-fun d!1881519 () Bool)

(declare-fun res!2504321 () Bool)

(assert (=> d!1881519 (=> res!2504321 e!3667525)))

(assert (=> d!1881519 (= res!2504321 ((_ is ElementMatch!16011) lt!2318869))))

(assert (=> d!1881519 (= (validRegex!7747 lt!2318869) e!3667525)))

(assert (= (and d!1881519 (not res!2504321)) b!6000365))

(assert (= (and b!6000365 c!1072141) b!6000363))

(assert (= (and b!6000365 (not c!1072141)) b!6000361))

(assert (= (and b!6000363 res!2504324) b!6000368))

(assert (= (and b!6000361 c!1072140) b!6000360))

(assert (= (and b!6000361 (not c!1072140)) b!6000364))

(assert (= (and b!6000360 res!2504325) b!6000366))

(assert (= (and b!6000364 (not res!2504323)) b!6000362))

(assert (= (and b!6000362 res!2504322) b!6000367))

(assert (= (or b!6000366 b!6000367) bm!484907))

(assert (= (or b!6000360 b!6000362) bm!484906))

(assert (= (or b!6000368 bm!484906) bm!484908))

(declare-fun m!6878608 () Bool)

(assert (=> bm!484907 m!6878608))

(declare-fun m!6878610 () Bool)

(assert (=> b!6000363 m!6878610))

(declare-fun m!6878612 () Bool)

(assert (=> bm!484908 m!6878612))

(assert (=> d!1881117 d!1881519))

(declare-fun d!1881521 () Bool)

(declare-fun res!2504330 () Bool)

(declare-fun e!3667531 () Bool)

(assert (=> d!1881521 (=> res!2504330 e!3667531)))

(assert (=> d!1881521 (= res!2504330 ((_ is Nil!64208) (exprs!5895 (h!70657 zl!343))))))

(assert (=> d!1881521 (= (forall!15109 (exprs!5895 (h!70657 zl!343)) lambda!327475) e!3667531)))

(declare-fun b!6000373 () Bool)

(declare-fun e!3667532 () Bool)

(assert (=> b!6000373 (= e!3667531 e!3667532)))

(declare-fun res!2504331 () Bool)

(assert (=> b!6000373 (=> (not res!2504331) (not e!3667532))))

(declare-fun dynLambda!25172 (Int Regex!16011) Bool)

(assert (=> b!6000373 (= res!2504331 (dynLambda!25172 lambda!327475 (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!6000374 () Bool)

(assert (=> b!6000374 (= e!3667532 (forall!15109 (t!377753 (exprs!5895 (h!70657 zl!343))) lambda!327475))))

(assert (= (and d!1881521 (not res!2504330)) b!6000373))

(assert (= (and b!6000373 res!2504331) b!6000374))

(declare-fun b_lambda!226793 () Bool)

(assert (=> (not b_lambda!226793) (not b!6000373)))

(declare-fun m!6878614 () Bool)

(assert (=> b!6000373 m!6878614))

(declare-fun m!6878616 () Bool)

(assert (=> b!6000374 m!6878616))

(assert (=> d!1881117 d!1881521))

(declare-fun d!1881523 () Bool)

(declare-fun res!2504332 () Bool)

(declare-fun e!3667533 () Bool)

(assert (=> d!1881523 (=> res!2504332 e!3667533)))

(assert (=> d!1881523 (= res!2504332 ((_ is Nil!64208) (exprs!5895 lt!2318654)))))

(assert (=> d!1881523 (= (forall!15109 (exprs!5895 lt!2318654) lambda!327471) e!3667533)))

(declare-fun b!6000375 () Bool)

(declare-fun e!3667534 () Bool)

(assert (=> b!6000375 (= e!3667533 e!3667534)))

(declare-fun res!2504333 () Bool)

(assert (=> b!6000375 (=> (not res!2504333) (not e!3667534))))

(assert (=> b!6000375 (= res!2504333 (dynLambda!25172 lambda!327471 (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun b!6000376 () Bool)

(assert (=> b!6000376 (= e!3667534 (forall!15109 (t!377753 (exprs!5895 lt!2318654)) lambda!327471))))

(assert (= (and d!1881523 (not res!2504332)) b!6000375))

(assert (= (and b!6000375 res!2504333) b!6000376))

(declare-fun b_lambda!226795 () Bool)

(assert (=> (not b_lambda!226795) (not b!6000375)))

(declare-fun m!6878618 () Bool)

(assert (=> b!6000375 m!6878618))

(declare-fun m!6878620 () Bool)

(assert (=> b!6000376 m!6878620))

(assert (=> b!5999365 d!1881523))

(declare-fun d!1881525 () Bool)

(declare-fun res!2504338 () Bool)

(declare-fun e!3667539 () Bool)

(assert (=> d!1881525 (=> res!2504338 e!3667539)))

(assert (=> d!1881525 (= res!2504338 ((_ is Nil!64209) lt!2318830))))

(assert (=> d!1881525 (= (noDuplicate!1866 lt!2318830) e!3667539)))

(declare-fun b!6000381 () Bool)

(declare-fun e!3667540 () Bool)

(assert (=> b!6000381 (= e!3667539 e!3667540)))

(declare-fun res!2504339 () Bool)

(assert (=> b!6000381 (=> (not res!2504339) (not e!3667540))))

(declare-fun contains!19986 (List!64333 Context!10790) Bool)

(assert (=> b!6000381 (= res!2504339 (not (contains!19986 (t!377754 lt!2318830) (h!70657 lt!2318830))))))

(declare-fun b!6000382 () Bool)

(assert (=> b!6000382 (= e!3667540 (noDuplicate!1866 (t!377754 lt!2318830)))))

(assert (= (and d!1881525 (not res!2504338)) b!6000381))

(assert (= (and b!6000381 res!2504339) b!6000382))

(declare-fun m!6878622 () Bool)

(assert (=> b!6000381 m!6878622))

(declare-fun m!6878624 () Bool)

(assert (=> b!6000382 m!6878624))

(assert (=> d!1881039 d!1881525))

(declare-fun d!1881527 () Bool)

(declare-fun e!3667547 () Bool)

(assert (=> d!1881527 e!3667547))

(declare-fun res!2504345 () Bool)

(assert (=> d!1881527 (=> (not res!2504345) (not e!3667547))))

(declare-fun res!2504344 () List!64333)

(assert (=> d!1881527 (= res!2504345 (noDuplicate!1866 res!2504344))))

(declare-fun e!3667549 () Bool)

(assert (=> d!1881527 e!3667549))

(assert (=> d!1881527 (= (choose!45011 z!1189) res!2504344)))

(declare-fun b!6000390 () Bool)

(declare-fun e!3667548 () Bool)

(declare-fun tp!1668963 () Bool)

(assert (=> b!6000390 (= e!3667548 tp!1668963)))

(declare-fun tp!1668962 () Bool)

(declare-fun b!6000389 () Bool)

(assert (=> b!6000389 (= e!3667549 (and (inv!83274 (h!70657 res!2504344)) e!3667548 tp!1668962))))

(declare-fun b!6000391 () Bool)

(assert (=> b!6000391 (= e!3667547 (= (content!11867 res!2504344) z!1189))))

(assert (= b!6000389 b!6000390))

(assert (= (and d!1881527 ((_ is Cons!64209) res!2504344)) b!6000389))

(assert (= (and d!1881527 res!2504345) b!6000391))

(declare-fun m!6878626 () Bool)

(assert (=> d!1881527 m!6878626))

(declare-fun m!6878628 () Bool)

(assert (=> b!6000389 m!6878628))

(declare-fun m!6878630 () Bool)

(assert (=> b!6000391 m!6878630))

(assert (=> d!1881039 d!1881527))

(declare-fun bs!1454463 () Bool)

(declare-fun d!1881529 () Bool)

(assert (= bs!1454463 (and d!1881529 b!5999084)))

(declare-fun lambda!327545 () Int)

(assert (=> bs!1454463 (not (= lambda!327545 lambda!327440))))

(declare-fun bs!1454464 () Bool)

(assert (= bs!1454464 (and d!1881529 b!5999089)))

(assert (=> bs!1454464 (not (= lambda!327545 lambda!327443))))

(declare-fun bs!1454465 () Bool)

(assert (= bs!1454465 (and d!1881529 b!5999082)))

(assert (=> bs!1454465 (not (= lambda!327545 lambda!327439))))

(declare-fun bs!1454466 () Bool)

(assert (= bs!1454466 (and d!1881529 b!5999092)))

(assert (=> bs!1454466 (not (= lambda!327545 lambda!327446))))

(declare-fun bs!1454467 () Bool)

(assert (= bs!1454467 (and d!1881529 b!5999087)))

(assert (=> bs!1454467 (not (= lambda!327545 lambda!327442))))

(declare-fun bs!1454468 () Bool)

(assert (= bs!1454468 (and d!1881529 b!5999090)))

(assert (=> bs!1454468 (not (= lambda!327545 lambda!327445))))

(declare-fun exists!2372 ((InoxSet Context!10790) Int) Bool)

(assert (=> d!1881529 (= (nullableZipper!1816 lt!2318661) (exists!2372 lt!2318661 lambda!327545))))

(declare-fun bs!1454469 () Bool)

(assert (= bs!1454469 d!1881529))

(declare-fun m!6878632 () Bool)

(assert (=> bs!1454469 m!6878632))

(assert (=> b!5999220 d!1881529))

(declare-fun d!1881531 () Bool)

(assert (=> d!1881531 (= (isDefined!12605 lt!2318799) (not (isEmpty!36105 lt!2318799)))))

(declare-fun bs!1454470 () Bool)

(assert (= bs!1454470 d!1881531))

(declare-fun m!6878634 () Bool)

(assert (=> bs!1454470 m!6878634))

(assert (=> b!5999058 d!1881531))

(declare-fun d!1881533 () Bool)

(assert (=> d!1881533 (= (nullable!6006 (regOne!32534 (regTwo!32534 r!7292))) (nullableFct!1976 (regOne!32534 (regTwo!32534 r!7292))))))

(declare-fun bs!1454471 () Bool)

(assert (= bs!1454471 d!1881533))

(declare-fun m!6878636 () Bool)

(assert (=> bs!1454471 m!6878636))

(assert (=> b!5999376 d!1881533))

(declare-fun d!1881535 () Bool)

(declare-fun c!1072144 () Bool)

(assert (=> d!1881535 (= c!1072144 (isEmpty!36106 (tail!11644 (t!377755 s!2326))))))

(declare-fun e!3667550 () Bool)

(assert (=> d!1881535 (= (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))) e!3667550)))

(declare-fun b!6000392 () Bool)

(assert (=> b!6000392 (= e!3667550 (nullableZipper!1816 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (head!12559 (t!377755 s!2326)))))))

(declare-fun b!6000393 () Bool)

(assert (=> b!6000393 (= e!3667550 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (head!12559 (tail!11644 (t!377755 s!2326)))) (tail!11644 (tail!11644 (t!377755 s!2326)))))))

(assert (= (and d!1881535 c!1072144) b!6000392))

(assert (= (and d!1881535 (not c!1072144)) b!6000393))

(assert (=> d!1881535 m!6877544))

(declare-fun m!6878638 () Bool)

(assert (=> d!1881535 m!6878638))

(assert (=> b!6000392 m!6877542))

(declare-fun m!6878640 () Bool)

(assert (=> b!6000392 m!6878640))

(assert (=> b!6000393 m!6877544))

(declare-fun m!6878642 () Bool)

(assert (=> b!6000393 m!6878642))

(assert (=> b!6000393 m!6877542))

(assert (=> b!6000393 m!6878642))

(declare-fun m!6878644 () Bool)

(assert (=> b!6000393 m!6878644))

(assert (=> b!6000393 m!6877544))

(declare-fun m!6878646 () Bool)

(assert (=> b!6000393 m!6878646))

(assert (=> b!6000393 m!6878644))

(assert (=> b!6000393 m!6878646))

(declare-fun m!6878648 () Bool)

(assert (=> b!6000393 m!6878648))

(assert (=> b!5999213 d!1881535))

(declare-fun bs!1454472 () Bool)

(declare-fun d!1881537 () Bool)

(assert (= bs!1454472 (and d!1881537 b!5998487)))

(declare-fun lambda!327546 () Int)

(assert (=> bs!1454472 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327546 lambda!327357))))

(declare-fun bs!1454473 () Bool)

(assert (= bs!1454473 (and d!1881537 d!1881055)))

(assert (=> bs!1454473 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327546 lambda!327452))))

(declare-fun bs!1454474 () Bool)

(assert (= bs!1454474 (and d!1881537 d!1881067)))

(assert (=> bs!1454474 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327546 lambda!327453))))

(declare-fun bs!1454475 () Bool)

(assert (= bs!1454475 (and d!1881537 d!1881081)))

(assert (=> bs!1454475 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327546 lambda!327461))))

(assert (=> d!1881537 true))

(assert (=> d!1881537 (= (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (flatMap!1524 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) lambda!327546))))

(declare-fun bs!1454476 () Bool)

(assert (= bs!1454476 d!1881537))

(assert (=> bs!1454476 m!6877002))

(declare-fun m!6878650 () Bool)

(assert (=> bs!1454476 m!6878650))

(assert (=> b!5999213 d!1881537))

(declare-fun d!1881539 () Bool)

(assert (=> d!1881539 (= (head!12559 (t!377755 s!2326)) (h!70658 (t!377755 s!2326)))))

(assert (=> b!5999213 d!1881539))

(declare-fun d!1881541 () Bool)

(assert (=> d!1881541 (= (tail!11644 (t!377755 s!2326)) (t!377755 (t!377755 s!2326)))))

(assert (=> b!5999213 d!1881541))

(declare-fun d!1881543 () Bool)

(assert (=> d!1881543 (= (isEmpty!36106 s!2326) ((_ is Nil!64210) s!2326))))

(assert (=> bm!484686 d!1881543))

(declare-fun d!1881545 () Bool)

(assert (=> d!1881545 (= (head!12559 s!2326) (h!70658 s!2326))))

(assert (=> b!5999203 d!1881545))

(declare-fun bm!484909 () Bool)

(declare-fun call!484914 () (InoxSet Context!10790))

(declare-fun call!484916 () (InoxSet Context!10790))

(assert (=> bm!484909 (= call!484914 call!484916)))

(declare-fun b!6000395 () Bool)

(declare-fun c!1072146 () Bool)

(declare-fun e!3667553 () Bool)

(assert (=> b!6000395 (= c!1072146 e!3667553)))

(declare-fun res!2504346 () Bool)

(assert (=> b!6000395 (=> (not res!2504346) (not e!3667553))))

(assert (=> b!6000395 (= res!2504346 ((_ is Concat!24856) (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))))))

(declare-fun e!3667552 () (InoxSet Context!10790))

(declare-fun e!3667551 () (InoxSet Context!10790))

(assert (=> b!6000395 (= e!3667552 e!3667551)))

(declare-fun bm!484910 () Bool)

(declare-fun call!484917 () (InoxSet Context!10790))

(declare-fun c!1072148 () Bool)

(declare-fun call!484918 () List!64332)

(assert (=> bm!484910 (= call!484917 (derivationStepZipperDown!1261 (ite c!1072148 (regOne!32535 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))) (regOne!32534 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292))))) (ite c!1072148 (ite c!1071880 lt!2318663 (Context!10791 call!484706)) (Context!10791 call!484918)) (h!70658 s!2326)))))

(declare-fun b!6000396 () Bool)

(declare-fun e!3667556 () (InoxSet Context!10790))

(assert (=> b!6000396 (= e!3667556 call!484914)))

(declare-fun bm!484911 () Bool)

(declare-fun call!484919 () List!64332)

(assert (=> bm!484911 (= call!484919 call!484918)))

(declare-fun bm!484912 () Bool)

(declare-fun c!1072145 () Bool)

(assert (=> bm!484912 (= call!484918 ($colon$colon!1896 (exprs!5895 (ite c!1071880 lt!2318663 (Context!10791 call!484706))) (ite (or c!1072146 c!1072145) (regTwo!32534 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))) (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292))))))))

(declare-fun bm!484913 () Bool)

(declare-fun call!484915 () (InoxSet Context!10790))

(assert (=> bm!484913 (= call!484915 (derivationStepZipperDown!1261 (ite c!1072148 (regTwo!32535 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))) (ite c!1072146 (regTwo!32534 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))) (ite c!1072145 (regOne!32534 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))) (reg!16340 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292))))))) (ite (or c!1072148 c!1072146) (ite c!1071880 lt!2318663 (Context!10791 call!484706)) (Context!10791 call!484919)) (h!70658 s!2326)))))

(declare-fun b!6000397 () Bool)

(assert (=> b!6000397 (= e!3667552 ((_ map or) call!484917 call!484915))))

(declare-fun b!6000398 () Bool)

(declare-fun c!1072149 () Bool)

(assert (=> b!6000398 (= c!1072149 ((_ is Star!16011) (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))))))

(declare-fun e!3667555 () (InoxSet Context!10790))

(assert (=> b!6000398 (= e!3667556 e!3667555)))

(declare-fun bm!484914 () Bool)

(assert (=> bm!484914 (= call!484916 call!484915)))

(declare-fun b!6000399 () Bool)

(declare-fun e!3667554 () (InoxSet Context!10790))

(assert (=> b!6000399 (= e!3667554 e!3667552)))

(assert (=> b!6000399 (= c!1072148 ((_ is Union!16011) (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))))))

(declare-fun c!1072147 () Bool)

(declare-fun d!1881547 () Bool)

(assert (=> d!1881547 (= c!1072147 (and ((_ is ElementMatch!16011) (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))) (= (c!1071586 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))) (h!70658 s!2326))))))

(assert (=> d!1881547 (= (derivationStepZipperDown!1261 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292))) (ite c!1071880 lt!2318663 (Context!10791 call!484706)) (h!70658 s!2326)) e!3667554)))

(declare-fun b!6000394 () Bool)

(assert (=> b!6000394 (= e!3667555 call!484914)))

(declare-fun b!6000400 () Bool)

(assert (=> b!6000400 (= e!3667551 ((_ map or) call!484917 call!484916))))

(declare-fun b!6000401 () Bool)

(assert (=> b!6000401 (= e!3667555 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000402 () Bool)

(assert (=> b!6000402 (= e!3667554 (store ((as const (Array Context!10790 Bool)) false) (ite c!1071880 lt!2318663 (Context!10791 call!484706)) true))))

(declare-fun b!6000403 () Bool)

(assert (=> b!6000403 (= e!3667551 e!3667556)))

(assert (=> b!6000403 (= c!1072145 ((_ is Concat!24856) (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))))))

(declare-fun b!6000404 () Bool)

(assert (=> b!6000404 (= e!3667553 (nullable!6006 (regOne!32534 (ite c!1071880 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292))))))))

(assert (= (and d!1881547 c!1072147) b!6000402))

(assert (= (and d!1881547 (not c!1072147)) b!6000399))

(assert (= (and b!6000399 c!1072148) b!6000397))

(assert (= (and b!6000399 (not c!1072148)) b!6000395))

(assert (= (and b!6000395 res!2504346) b!6000404))

(assert (= (and b!6000395 c!1072146) b!6000400))

(assert (= (and b!6000395 (not c!1072146)) b!6000403))

(assert (= (and b!6000403 c!1072145) b!6000396))

(assert (= (and b!6000403 (not c!1072145)) b!6000398))

(assert (= (and b!6000398 c!1072149) b!6000394))

(assert (= (and b!6000398 (not c!1072149)) b!6000401))

(assert (= (or b!6000396 b!6000394) bm!484911))

(assert (= (or b!6000396 b!6000394) bm!484909))

(assert (= (or b!6000400 bm!484911) bm!484912))

(assert (= (or b!6000400 bm!484909) bm!484914))

(assert (= (or b!6000397 bm!484914) bm!484913))

(assert (= (or b!6000397 b!6000400) bm!484910))

(declare-fun m!6878652 () Bool)

(assert (=> b!6000404 m!6878652))

(declare-fun m!6878654 () Bool)

(assert (=> bm!484910 m!6878654))

(declare-fun m!6878656 () Bool)

(assert (=> b!6000402 m!6878656))

(declare-fun m!6878658 () Bool)

(assert (=> bm!484912 m!6878658))

(declare-fun m!6878660 () Bool)

(assert (=> bm!484913 m!6878660))

(assert (=> bm!484698 d!1881547))

(declare-fun b!6000405 () Bool)

(declare-fun e!3667558 () Bool)

(assert (=> b!6000405 (= e!3667558 (nullable!6006 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))))))))

(declare-fun e!3667559 () (InoxSet Context!10790))

(declare-fun call!484920 () (InoxSet Context!10790))

(declare-fun b!6000406 () Bool)

(assert (=> b!6000406 (= e!3667559 ((_ map or) call!484920 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))))) (h!70658 s!2326))))))

(declare-fun bm!484915 () Bool)

(assert (=> bm!484915 (= call!484920 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))) (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))))) (h!70658 s!2326)))))

(declare-fun d!1881549 () Bool)

(declare-fun c!1072151 () Bool)

(assert (=> d!1881549 (= c!1072151 e!3667558)))

(declare-fun res!2504347 () Bool)

(assert (=> d!1881549 (=> (not res!2504347) (not e!3667558))))

(assert (=> d!1881549 (= res!2504347 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))))))

(assert (=> d!1881549 (= (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 lt!2318655))) (h!70658 s!2326)) e!3667559)))

(declare-fun b!6000407 () Bool)

(declare-fun e!3667557 () (InoxSet Context!10790))

(assert (=> b!6000407 (= e!3667559 e!3667557)))

(declare-fun c!1072150 () Bool)

(assert (=> b!6000407 (= c!1072150 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))))))

(declare-fun b!6000408 () Bool)

(assert (=> b!6000408 (= e!3667557 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000409 () Bool)

(assert (=> b!6000409 (= e!3667557 call!484920)))

(assert (= (and d!1881549 res!2504347) b!6000405))

(assert (= (and d!1881549 c!1072151) b!6000406))

(assert (= (and d!1881549 (not c!1072151)) b!6000407))

(assert (= (and b!6000407 c!1072150) b!6000409))

(assert (= (and b!6000407 (not c!1072150)) b!6000408))

(assert (= (or b!6000406 b!6000409) bm!484915))

(declare-fun m!6878662 () Bool)

(assert (=> b!6000405 m!6878662))

(declare-fun m!6878664 () Bool)

(assert (=> b!6000406 m!6878664))

(declare-fun m!6878666 () Bool)

(assert (=> bm!484915 m!6878666))

(assert (=> b!5999299 d!1881549))

(declare-fun bm!484916 () Bool)

(declare-fun call!484922 () Bool)

(declare-fun call!484921 () Bool)

(assert (=> bm!484916 (= call!484922 call!484921)))

(declare-fun c!1072152 () Bool)

(declare-fun call!484923 () Bool)

(declare-fun bm!484917 () Bool)

(assert (=> bm!484917 (= call!484923 (validRegex!7747 (ite c!1072152 (regTwo!32535 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))) (regTwo!32534 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))))

(declare-fun b!6000410 () Bool)

(declare-fun res!2504352 () Bool)

(declare-fun e!3667560 () Bool)

(assert (=> b!6000410 (=> (not res!2504352) (not e!3667560))))

(assert (=> b!6000410 (= res!2504352 call!484922)))

(declare-fun e!3667566 () Bool)

(assert (=> b!6000410 (= e!3667566 e!3667560)))

(declare-fun b!6000411 () Bool)

(declare-fun e!3667564 () Bool)

(assert (=> b!6000411 (= e!3667564 e!3667566)))

(assert (=> b!6000411 (= c!1072152 ((_ is Union!16011) (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun b!6000413 () Bool)

(declare-fun e!3667562 () Bool)

(assert (=> b!6000413 (= e!3667564 e!3667562)))

(declare-fun res!2504351 () Bool)

(assert (=> b!6000413 (= res!2504351 (not (nullable!6006 (reg!16340 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))))

(assert (=> b!6000413 (=> (not res!2504351) (not e!3667562))))

(declare-fun b!6000414 () Bool)

(declare-fun res!2504350 () Bool)

(declare-fun e!3667563 () Bool)

(assert (=> b!6000414 (=> res!2504350 e!3667563)))

(assert (=> b!6000414 (= res!2504350 (not ((_ is Concat!24856) (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292))))))))

(assert (=> b!6000414 (= e!3667566 e!3667563)))

(declare-fun b!6000415 () Bool)

(declare-fun e!3667565 () Bool)

(assert (=> b!6000415 (= e!3667565 e!3667564)))

(declare-fun c!1072153 () Bool)

(assert (=> b!6000415 (= c!1072153 ((_ is Star!16011) (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun bm!484918 () Bool)

(assert (=> bm!484918 (= call!484921 (validRegex!7747 (ite c!1072153 (reg!16340 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))) (ite c!1072152 (regOne!32535 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))) (regOne!32534 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292))))))))))

(declare-fun b!6000416 () Bool)

(assert (=> b!6000416 (= e!3667560 call!484923)))

(declare-fun b!6000417 () Bool)

(declare-fun e!3667561 () Bool)

(assert (=> b!6000417 (= e!3667561 call!484923)))

(declare-fun b!6000418 () Bool)

(assert (=> b!6000418 (= e!3667562 call!484921)))

(declare-fun b!6000412 () Bool)

(assert (=> b!6000412 (= e!3667563 e!3667561)))

(declare-fun res!2504349 () Bool)

(assert (=> b!6000412 (=> (not res!2504349) (not e!3667561))))

(assert (=> b!6000412 (= res!2504349 call!484922)))

(declare-fun d!1881551 () Bool)

(declare-fun res!2504348 () Bool)

(assert (=> d!1881551 (=> res!2504348 e!3667565)))

(assert (=> d!1881551 (= res!2504348 ((_ is ElementMatch!16011) (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))

(assert (=> d!1881551 (= (validRegex!7747 (ite c!1071899 (reg!16340 r!7292) (ite c!1071898 (regOne!32535 r!7292) (regOne!32534 r!7292)))) e!3667565)))

(assert (= (and d!1881551 (not res!2504348)) b!6000415))

(assert (= (and b!6000415 c!1072153) b!6000413))

(assert (= (and b!6000415 (not c!1072153)) b!6000411))

(assert (= (and b!6000413 res!2504351) b!6000418))

(assert (= (and b!6000411 c!1072152) b!6000410))

(assert (= (and b!6000411 (not c!1072152)) b!6000414))

(assert (= (and b!6000410 res!2504352) b!6000416))

(assert (= (and b!6000414 (not res!2504350)) b!6000412))

(assert (= (and b!6000412 res!2504349) b!6000417))

(assert (= (or b!6000416 b!6000417) bm!484917))

(assert (= (or b!6000410 b!6000412) bm!484916))

(assert (= (or b!6000418 bm!484916) bm!484918))

(declare-fun m!6878668 () Bool)

(assert (=> bm!484917 m!6878668))

(declare-fun m!6878670 () Bool)

(assert (=> b!6000413 m!6878670))

(declare-fun m!6878672 () Bool)

(assert (=> bm!484918 m!6878672))

(assert (=> bm!484711 d!1881551))

(declare-fun d!1881553 () Bool)

(assert (=> d!1881553 (= ($colon$colon!1896 (exprs!5895 lt!2318656) (ite (or c!1071845 c!1071844) (regTwo!32534 r!7292) r!7292)) (Cons!64208 (ite (or c!1071845 c!1071844) (regTwo!32534 r!7292) r!7292) (exprs!5895 lt!2318656)))))

(assert (=> bm!484678 d!1881553))

(declare-fun d!1881555 () Bool)

(declare-fun c!1072156 () Bool)

(assert (=> d!1881555 (= c!1072156 ((_ is Nil!64209) lt!2318830))))

(declare-fun e!3667569 () (InoxSet Context!10790))

(assert (=> d!1881555 (= (content!11867 lt!2318830) e!3667569)))

(declare-fun b!6000423 () Bool)

(assert (=> b!6000423 (= e!3667569 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000424 () Bool)

(assert (=> b!6000424 (= e!3667569 ((_ map or) (store ((as const (Array Context!10790 Bool)) false) (h!70657 lt!2318830) true) (content!11867 (t!377754 lt!2318830))))))

(assert (= (and d!1881555 c!1072156) b!6000423))

(assert (= (and d!1881555 (not c!1072156)) b!6000424))

(declare-fun m!6878674 () Bool)

(assert (=> b!6000424 m!6878674))

(declare-fun m!6878676 () Bool)

(assert (=> b!6000424 m!6878676))

(assert (=> b!5999095 d!1881555))

(declare-fun bm!484919 () Bool)

(declare-fun call!484924 () (InoxSet Context!10790))

(declare-fun call!484926 () (InoxSet Context!10790))

(assert (=> bm!484919 (= call!484924 call!484926)))

(declare-fun b!6000426 () Bool)

(declare-fun c!1072158 () Bool)

(declare-fun e!3667572 () Bool)

(assert (=> b!6000426 (= c!1072158 e!3667572)))

(declare-fun res!2504353 () Bool)

(assert (=> b!6000426 (=> (not res!2504353) (not e!3667572))))

(assert (=> b!6000426 (= res!2504353 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun e!3667571 () (InoxSet Context!10790))

(declare-fun e!3667570 () (InoxSet Context!10790))

(assert (=> b!6000426 (= e!3667571 e!3667570)))

(declare-fun call!484927 () (InoxSet Context!10790))

(declare-fun bm!484920 () Bool)

(declare-fun call!484928 () List!64332)

(declare-fun c!1072160 () Bool)

(assert (=> bm!484920 (= call!484927 (derivationStepZipperDown!1261 (ite c!1072160 (regOne!32535 (h!70656 (exprs!5895 lt!2318663))) (regOne!32534 (h!70656 (exprs!5895 lt!2318663)))) (ite c!1072160 (Context!10791 (t!377753 (exprs!5895 lt!2318663))) (Context!10791 call!484928)) (h!70658 s!2326)))))

(declare-fun b!6000427 () Bool)

(declare-fun e!3667575 () (InoxSet Context!10790))

(assert (=> b!6000427 (= e!3667575 call!484924)))

(declare-fun bm!484921 () Bool)

(declare-fun call!484929 () List!64332)

(assert (=> bm!484921 (= call!484929 call!484928)))

(declare-fun bm!484922 () Bool)

(declare-fun c!1072157 () Bool)

(assert (=> bm!484922 (= call!484928 ($colon$colon!1896 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))) (ite (or c!1072158 c!1072157) (regTwo!32534 (h!70656 (exprs!5895 lt!2318663))) (h!70656 (exprs!5895 lt!2318663)))))))

(declare-fun call!484925 () (InoxSet Context!10790))

(declare-fun bm!484923 () Bool)

(assert (=> bm!484923 (= call!484925 (derivationStepZipperDown!1261 (ite c!1072160 (regTwo!32535 (h!70656 (exprs!5895 lt!2318663))) (ite c!1072158 (regTwo!32534 (h!70656 (exprs!5895 lt!2318663))) (ite c!1072157 (regOne!32534 (h!70656 (exprs!5895 lt!2318663))) (reg!16340 (h!70656 (exprs!5895 lt!2318663)))))) (ite (or c!1072160 c!1072158) (Context!10791 (t!377753 (exprs!5895 lt!2318663))) (Context!10791 call!484929)) (h!70658 s!2326)))))

(declare-fun b!6000428 () Bool)

(assert (=> b!6000428 (= e!3667571 ((_ map or) call!484927 call!484925))))

(declare-fun b!6000429 () Bool)

(declare-fun c!1072161 () Bool)

(assert (=> b!6000429 (= c!1072161 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun e!3667574 () (InoxSet Context!10790))

(assert (=> b!6000429 (= e!3667575 e!3667574)))

(declare-fun bm!484924 () Bool)

(assert (=> bm!484924 (= call!484926 call!484925)))

(declare-fun b!6000430 () Bool)

(declare-fun e!3667573 () (InoxSet Context!10790))

(assert (=> b!6000430 (= e!3667573 e!3667571)))

(assert (=> b!6000430 (= c!1072160 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun d!1881557 () Bool)

(declare-fun c!1072159 () Bool)

(assert (=> d!1881557 (= c!1072159 (and ((_ is ElementMatch!16011) (h!70656 (exprs!5895 lt!2318663))) (= (c!1071586 (h!70656 (exprs!5895 lt!2318663))) (h!70658 s!2326))))))

(assert (=> d!1881557 (= (derivationStepZipperDown!1261 (h!70656 (exprs!5895 lt!2318663)) (Context!10791 (t!377753 (exprs!5895 lt!2318663))) (h!70658 s!2326)) e!3667573)))

(declare-fun b!6000425 () Bool)

(assert (=> b!6000425 (= e!3667574 call!484924)))

(declare-fun b!6000431 () Bool)

(assert (=> b!6000431 (= e!3667570 ((_ map or) call!484927 call!484926))))

(declare-fun b!6000432 () Bool)

(assert (=> b!6000432 (= e!3667574 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000433 () Bool)

(assert (=> b!6000433 (= e!3667573 (store ((as const (Array Context!10790 Bool)) false) (Context!10791 (t!377753 (exprs!5895 lt!2318663))) true))))

(declare-fun b!6000434 () Bool)

(assert (=> b!6000434 (= e!3667570 e!3667575)))

(assert (=> b!6000434 (= c!1072157 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun b!6000435 () Bool)

(assert (=> b!6000435 (= e!3667572 (nullable!6006 (regOne!32534 (h!70656 (exprs!5895 lt!2318663)))))))

(assert (= (and d!1881557 c!1072159) b!6000433))

(assert (= (and d!1881557 (not c!1072159)) b!6000430))

(assert (= (and b!6000430 c!1072160) b!6000428))

(assert (= (and b!6000430 (not c!1072160)) b!6000426))

(assert (= (and b!6000426 res!2504353) b!6000435))

(assert (= (and b!6000426 c!1072158) b!6000431))

(assert (= (and b!6000426 (not c!1072158)) b!6000434))

(assert (= (and b!6000434 c!1072157) b!6000427))

(assert (= (and b!6000434 (not c!1072157)) b!6000429))

(assert (= (and b!6000429 c!1072161) b!6000425))

(assert (= (and b!6000429 (not c!1072161)) b!6000432))

(assert (= (or b!6000427 b!6000425) bm!484921))

(assert (= (or b!6000427 b!6000425) bm!484919))

(assert (= (or b!6000431 bm!484921) bm!484922))

(assert (= (or b!6000431 bm!484919) bm!484924))

(assert (= (or b!6000428 bm!484924) bm!484923))

(assert (= (or b!6000428 b!6000431) bm!484920))

(declare-fun m!6878678 () Bool)

(assert (=> b!6000435 m!6878678))

(declare-fun m!6878680 () Bool)

(assert (=> bm!484920 m!6878680))

(declare-fun m!6878682 () Bool)

(assert (=> b!6000433 m!6878682))

(declare-fun m!6878684 () Bool)

(assert (=> bm!484922 m!6878684))

(declare-fun m!6878686 () Bool)

(assert (=> bm!484923 m!6878686))

(assert (=> bm!484695 d!1881557))

(assert (=> bs!1453621 d!1881103))

(declare-fun bm!484925 () Bool)

(declare-fun call!484930 () (InoxSet Context!10790))

(declare-fun call!484932 () (InoxSet Context!10790))

(assert (=> bm!484925 (= call!484930 call!484932)))

(declare-fun b!6000437 () Bool)

(declare-fun c!1072163 () Bool)

(declare-fun e!3667578 () Bool)

(assert (=> b!6000437 (= c!1072163 e!3667578)))

(declare-fun res!2504354 () Bool)

(assert (=> b!6000437 (=> (not res!2504354) (not e!3667578))))

(assert (=> b!6000437 (= res!2504354 ((_ is Concat!24856) (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))))))

(declare-fun e!3667577 () (InoxSet Context!10790))

(declare-fun e!3667576 () (InoxSet Context!10790))

(assert (=> b!6000437 (= e!3667577 e!3667576)))

(declare-fun c!1072165 () Bool)

(declare-fun call!484933 () (InoxSet Context!10790))

(declare-fun bm!484926 () Bool)

(declare-fun call!484934 () List!64332)

(assert (=> bm!484926 (= call!484933 (derivationStepZipperDown!1261 (ite c!1072165 (regOne!32535 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))) (regOne!32534 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292))))))) (ite c!1072165 (ite (or c!1071880 c!1071878) lt!2318663 (Context!10791 call!484707)) (Context!10791 call!484934)) (h!70658 s!2326)))))

(declare-fun b!6000438 () Bool)

(declare-fun e!3667581 () (InoxSet Context!10790))

(assert (=> b!6000438 (= e!3667581 call!484930)))

(declare-fun bm!484927 () Bool)

(declare-fun call!484935 () List!64332)

(assert (=> bm!484927 (= call!484935 call!484934)))

(declare-fun bm!484928 () Bool)

(declare-fun c!1072162 () Bool)

(assert (=> bm!484928 (= call!484934 ($colon$colon!1896 (exprs!5895 (ite (or c!1071880 c!1071878) lt!2318663 (Context!10791 call!484707))) (ite (or c!1072163 c!1072162) (regTwo!32534 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))) (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292))))))))))

(declare-fun call!484931 () (InoxSet Context!10790))

(declare-fun bm!484929 () Bool)

(assert (=> bm!484929 (= call!484931 (derivationStepZipperDown!1261 (ite c!1072165 (regTwo!32535 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))) (ite c!1072163 (regTwo!32534 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))) (ite c!1072162 (regOne!32534 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))) (reg!16340 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292))))))))) (ite (or c!1072165 c!1072163) (ite (or c!1071880 c!1071878) lt!2318663 (Context!10791 call!484707)) (Context!10791 call!484935)) (h!70658 s!2326)))))

(declare-fun b!6000439 () Bool)

(assert (=> b!6000439 (= e!3667577 ((_ map or) call!484933 call!484931))))

(declare-fun b!6000440 () Bool)

(declare-fun c!1072166 () Bool)

(assert (=> b!6000440 (= c!1072166 ((_ is Star!16011) (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))))))

(declare-fun e!3667580 () (InoxSet Context!10790))

(assert (=> b!6000440 (= e!3667581 e!3667580)))

(declare-fun bm!484930 () Bool)

(assert (=> bm!484930 (= call!484932 call!484931)))

(declare-fun b!6000441 () Bool)

(declare-fun e!3667579 () (InoxSet Context!10790))

(assert (=> b!6000441 (= e!3667579 e!3667577)))

(assert (=> b!6000441 (= c!1072165 ((_ is Union!16011) (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))))))

(declare-fun c!1072164 () Bool)

(declare-fun d!1881559 () Bool)

(assert (=> d!1881559 (= c!1072164 (and ((_ is ElementMatch!16011) (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))) (= (c!1071586 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))) (h!70658 s!2326))))))

(assert (=> d!1881559 (= (derivationStepZipperDown!1261 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292))))) (ite (or c!1071880 c!1071878) lt!2318663 (Context!10791 call!484707)) (h!70658 s!2326)) e!3667579)))

(declare-fun b!6000436 () Bool)

(assert (=> b!6000436 (= e!3667580 call!484930)))

(declare-fun b!6000442 () Bool)

(assert (=> b!6000442 (= e!3667576 ((_ map or) call!484933 call!484932))))

(declare-fun b!6000443 () Bool)

(assert (=> b!6000443 (= e!3667580 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000444 () Bool)

(assert (=> b!6000444 (= e!3667579 (store ((as const (Array Context!10790 Bool)) false) (ite (or c!1071880 c!1071878) lt!2318663 (Context!10791 call!484707)) true))))

(declare-fun b!6000445 () Bool)

(assert (=> b!6000445 (= e!3667576 e!3667581)))

(assert (=> b!6000445 (= c!1072162 ((_ is Concat!24856) (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292)))))))))

(declare-fun b!6000446 () Bool)

(assert (=> b!6000446 (= e!3667578 (nullable!6006 (regOne!32534 (ite c!1071880 (regTwo!32535 (regOne!32534 r!7292)) (ite c!1071878 (regTwo!32534 (regOne!32534 r!7292)) (ite c!1071877 (regOne!32534 (regOne!32534 r!7292)) (reg!16340 (regOne!32534 r!7292))))))))))

(assert (= (and d!1881559 c!1072164) b!6000444))

(assert (= (and d!1881559 (not c!1072164)) b!6000441))

(assert (= (and b!6000441 c!1072165) b!6000439))

(assert (= (and b!6000441 (not c!1072165)) b!6000437))

(assert (= (and b!6000437 res!2504354) b!6000446))

(assert (= (and b!6000437 c!1072163) b!6000442))

(assert (= (and b!6000437 (not c!1072163)) b!6000445))

(assert (= (and b!6000445 c!1072162) b!6000438))

(assert (= (and b!6000445 (not c!1072162)) b!6000440))

(assert (= (and b!6000440 c!1072166) b!6000436))

(assert (= (and b!6000440 (not c!1072166)) b!6000443))

(assert (= (or b!6000438 b!6000436) bm!484927))

(assert (= (or b!6000438 b!6000436) bm!484925))

(assert (= (or b!6000442 bm!484927) bm!484928))

(assert (= (or b!6000442 bm!484925) bm!484930))

(assert (= (or b!6000439 bm!484930) bm!484929))

(assert (= (or b!6000439 b!6000442) bm!484926))

(declare-fun m!6878688 () Bool)

(assert (=> b!6000446 m!6878688))

(declare-fun m!6878690 () Bool)

(assert (=> bm!484926 m!6878690))

(declare-fun m!6878692 () Bool)

(assert (=> b!6000444 m!6878692))

(declare-fun m!6878694 () Bool)

(assert (=> bm!484928 m!6878694))

(declare-fun m!6878696 () Bool)

(assert (=> bm!484929 m!6878696))

(assert (=> bm!484701 d!1881559))

(declare-fun b!6000448 () Bool)

(declare-fun e!3667587 () Bool)

(assert (=> b!6000448 (= e!3667587 (matchR!8194 (derivativeStep!4740 (derivativeStep!4740 r!7292 (head!12559 s!2326)) (head!12559 (tail!11644 s!2326))) (tail!11644 (tail!11644 s!2326))))))

(declare-fun b!6000449 () Bool)

(declare-fun e!3667586 () Bool)

(declare-fun e!3667588 () Bool)

(assert (=> b!6000449 (= e!3667586 e!3667588)))

(declare-fun res!2504359 () Bool)

(assert (=> b!6000449 (=> res!2504359 e!3667588)))

(declare-fun call!484936 () Bool)

(assert (=> b!6000449 (= res!2504359 call!484936)))

(declare-fun b!6000450 () Bool)

(declare-fun e!3667584 () Bool)

(declare-fun e!3667582 () Bool)

(assert (=> b!6000450 (= e!3667584 e!3667582)))

(declare-fun c!1072168 () Bool)

(assert (=> b!6000450 (= c!1072168 ((_ is EmptyLang!16011) (derivativeStep!4740 r!7292 (head!12559 s!2326))))))

(declare-fun b!6000451 () Bool)

(declare-fun res!2504356 () Bool)

(declare-fun e!3667583 () Bool)

(assert (=> b!6000451 (=> (not res!2504356) (not e!3667583))))

(assert (=> b!6000451 (= res!2504356 (not call!484936))))

(declare-fun b!6000452 () Bool)

(declare-fun res!2504358 () Bool)

(declare-fun e!3667585 () Bool)

(assert (=> b!6000452 (=> res!2504358 e!3667585)))

(assert (=> b!6000452 (= res!2504358 e!3667583)))

(declare-fun res!2504362 () Bool)

(assert (=> b!6000452 (=> (not res!2504362) (not e!3667583))))

(declare-fun lt!2318951 () Bool)

(assert (=> b!6000452 (= res!2504362 lt!2318951)))

(declare-fun bm!484931 () Bool)

(assert (=> bm!484931 (= call!484936 (isEmpty!36106 (tail!11644 s!2326)))))

(declare-fun b!6000453 () Bool)

(assert (=> b!6000453 (= e!3667582 (not lt!2318951))))

(declare-fun b!6000454 () Bool)

(declare-fun res!2504357 () Bool)

(assert (=> b!6000454 (=> res!2504357 e!3667585)))

(assert (=> b!6000454 (= res!2504357 (not ((_ is ElementMatch!16011) (derivativeStep!4740 r!7292 (head!12559 s!2326)))))))

(assert (=> b!6000454 (= e!3667582 e!3667585)))

(declare-fun b!6000455 () Bool)

(declare-fun res!2504355 () Bool)

(assert (=> b!6000455 (=> (not res!2504355) (not e!3667583))))

(assert (=> b!6000455 (= res!2504355 (isEmpty!36106 (tail!11644 (tail!11644 s!2326))))))

(declare-fun b!6000447 () Bool)

(assert (=> b!6000447 (= e!3667583 (= (head!12559 (tail!11644 s!2326)) (c!1071586 (derivativeStep!4740 r!7292 (head!12559 s!2326)))))))

(declare-fun d!1881561 () Bool)

(assert (=> d!1881561 e!3667584))

(declare-fun c!1072169 () Bool)

(assert (=> d!1881561 (= c!1072169 ((_ is EmptyExpr!16011) (derivativeStep!4740 r!7292 (head!12559 s!2326))))))

(assert (=> d!1881561 (= lt!2318951 e!3667587)))

(declare-fun c!1072167 () Bool)

(assert (=> d!1881561 (= c!1072167 (isEmpty!36106 (tail!11644 s!2326)))))

(assert (=> d!1881561 (validRegex!7747 (derivativeStep!4740 r!7292 (head!12559 s!2326)))))

(assert (=> d!1881561 (= (matchR!8194 (derivativeStep!4740 r!7292 (head!12559 s!2326)) (tail!11644 s!2326)) lt!2318951)))

(declare-fun b!6000456 () Bool)

(assert (=> b!6000456 (= e!3667585 e!3667586)))

(declare-fun res!2504360 () Bool)

(assert (=> b!6000456 (=> (not res!2504360) (not e!3667586))))

(assert (=> b!6000456 (= res!2504360 (not lt!2318951))))

(declare-fun b!6000457 () Bool)

(assert (=> b!6000457 (= e!3667587 (nullable!6006 (derivativeStep!4740 r!7292 (head!12559 s!2326))))))

(declare-fun b!6000458 () Bool)

(assert (=> b!6000458 (= e!3667588 (not (= (head!12559 (tail!11644 s!2326)) (c!1071586 (derivativeStep!4740 r!7292 (head!12559 s!2326))))))))

(declare-fun b!6000459 () Bool)

(declare-fun res!2504361 () Bool)

(assert (=> b!6000459 (=> res!2504361 e!3667588)))

(assert (=> b!6000459 (= res!2504361 (not (isEmpty!36106 (tail!11644 (tail!11644 s!2326)))))))

(declare-fun b!6000460 () Bool)

(assert (=> b!6000460 (= e!3667584 (= lt!2318951 call!484936))))

(assert (= (and d!1881561 c!1072167) b!6000457))

(assert (= (and d!1881561 (not c!1072167)) b!6000448))

(assert (= (and d!1881561 c!1072169) b!6000460))

(assert (= (and d!1881561 (not c!1072169)) b!6000450))

(assert (= (and b!6000450 c!1072168) b!6000453))

(assert (= (and b!6000450 (not c!1072168)) b!6000454))

(assert (= (and b!6000454 (not res!2504357)) b!6000452))

(assert (= (and b!6000452 res!2504362) b!6000451))

(assert (= (and b!6000451 res!2504356) b!6000455))

(assert (= (and b!6000455 res!2504355) b!6000447))

(assert (= (and b!6000452 (not res!2504358)) b!6000456))

(assert (= (and b!6000456 res!2504360) b!6000449))

(assert (= (and b!6000449 (not res!2504359)) b!6000459))

(assert (= (and b!6000459 (not res!2504361)) b!6000458))

(assert (= (or b!6000460 b!6000449 b!6000451) bm!484931))

(assert (=> b!6000448 m!6877516))

(declare-fun m!6878698 () Bool)

(assert (=> b!6000448 m!6878698))

(assert (=> b!6000448 m!6877634))

(assert (=> b!6000448 m!6878698))

(declare-fun m!6878700 () Bool)

(assert (=> b!6000448 m!6878700))

(assert (=> b!6000448 m!6877516))

(declare-fun m!6878702 () Bool)

(assert (=> b!6000448 m!6878702))

(assert (=> b!6000448 m!6878700))

(assert (=> b!6000448 m!6878702))

(declare-fun m!6878704 () Bool)

(assert (=> b!6000448 m!6878704))

(assert (=> d!1881561 m!6877516))

(assert (=> d!1881561 m!6877524))

(assert (=> d!1881561 m!6877634))

(declare-fun m!6878706 () Bool)

(assert (=> d!1881561 m!6878706))

(assert (=> b!6000455 m!6877516))

(assert (=> b!6000455 m!6878702))

(assert (=> b!6000455 m!6878702))

(declare-fun m!6878708 () Bool)

(assert (=> b!6000455 m!6878708))

(assert (=> b!6000447 m!6877516))

(assert (=> b!6000447 m!6878698))

(assert (=> b!6000458 m!6877516))

(assert (=> b!6000458 m!6878698))

(assert (=> bm!484931 m!6877516))

(assert (=> bm!484931 m!6877524))

(assert (=> b!6000459 m!6877516))

(assert (=> b!6000459 m!6878702))

(assert (=> b!6000459 m!6878702))

(assert (=> b!6000459 m!6878708))

(assert (=> b!6000457 m!6877634))

(declare-fun m!6878710 () Bool)

(assert (=> b!6000457 m!6878710))

(assert (=> b!5999347 d!1881561))

(declare-fun b!6000481 () Bool)

(declare-fun e!3667601 () Regex!16011)

(declare-fun call!484947 () Regex!16011)

(assert (=> b!6000481 (= e!3667601 (Union!16011 (Concat!24856 call!484947 (regTwo!32534 r!7292)) EmptyLang!16011))))

(declare-fun bm!484940 () Bool)

(declare-fun call!484948 () Regex!16011)

(assert (=> bm!484940 (= call!484947 call!484948)))

(declare-fun b!6000482 () Bool)

(declare-fun e!3667603 () Regex!16011)

(declare-fun call!484946 () Regex!16011)

(assert (=> b!6000482 (= e!3667603 (Concat!24856 call!484946 r!7292))))

(declare-fun b!6000483 () Bool)

(declare-fun e!3667602 () Regex!16011)

(assert (=> b!6000483 (= e!3667602 e!3667603)))

(declare-fun c!1072182 () Bool)

(assert (=> b!6000483 (= c!1072182 ((_ is Star!16011) r!7292))))

(declare-fun b!6000484 () Bool)

(declare-fun e!3667600 () Regex!16011)

(assert (=> b!6000484 (= e!3667600 (ite (= (head!12559 s!2326) (c!1071586 r!7292)) EmptyExpr!16011 EmptyLang!16011))))

(declare-fun b!6000485 () Bool)

(declare-fun e!3667599 () Regex!16011)

(assert (=> b!6000485 (= e!3667599 e!3667600)))

(declare-fun c!1072184 () Bool)

(assert (=> b!6000485 (= c!1072184 ((_ is ElementMatch!16011) r!7292))))

(declare-fun b!6000486 () Bool)

(assert (=> b!6000486 (= e!3667599 EmptyLang!16011)))

(declare-fun b!6000487 () Bool)

(declare-fun call!484945 () Regex!16011)

(assert (=> b!6000487 (= e!3667602 (Union!16011 call!484948 call!484945))))

(declare-fun b!6000488 () Bool)

(assert (=> b!6000488 (= e!3667601 (Union!16011 (Concat!24856 call!484946 (regTwo!32534 r!7292)) call!484947))))

(declare-fun bm!484941 () Bool)

(declare-fun c!1072180 () Bool)

(declare-fun c!1072181 () Bool)

(assert (=> bm!484941 (= call!484948 (derivativeStep!4740 (ite c!1072181 (regOne!32535 r!7292) (ite c!1072180 (regTwo!32534 r!7292) (regOne!32534 r!7292))) (head!12559 s!2326)))))

(declare-fun bm!484942 () Bool)

(assert (=> bm!484942 (= call!484946 call!484945)))

(declare-fun d!1881563 () Bool)

(declare-fun lt!2318954 () Regex!16011)

(assert (=> d!1881563 (validRegex!7747 lt!2318954)))

(assert (=> d!1881563 (= lt!2318954 e!3667599)))

(declare-fun c!1072183 () Bool)

(assert (=> d!1881563 (= c!1072183 (or ((_ is EmptyExpr!16011) r!7292) ((_ is EmptyLang!16011) r!7292)))))

(assert (=> d!1881563 (validRegex!7747 r!7292)))

(assert (=> d!1881563 (= (derivativeStep!4740 r!7292 (head!12559 s!2326)) lt!2318954)))

(declare-fun b!6000489 () Bool)

(assert (=> b!6000489 (= c!1072181 ((_ is Union!16011) r!7292))))

(assert (=> b!6000489 (= e!3667600 e!3667602)))

(declare-fun b!6000490 () Bool)

(assert (=> b!6000490 (= c!1072180 (nullable!6006 (regOne!32534 r!7292)))))

(assert (=> b!6000490 (= e!3667603 e!3667601)))

(declare-fun bm!484943 () Bool)

(assert (=> bm!484943 (= call!484945 (derivativeStep!4740 (ite c!1072181 (regTwo!32535 r!7292) (ite c!1072182 (reg!16340 r!7292) (regOne!32534 r!7292))) (head!12559 s!2326)))))

(assert (= (and d!1881563 c!1072183) b!6000486))

(assert (= (and d!1881563 (not c!1072183)) b!6000485))

(assert (= (and b!6000485 c!1072184) b!6000484))

(assert (= (and b!6000485 (not c!1072184)) b!6000489))

(assert (= (and b!6000489 c!1072181) b!6000487))

(assert (= (and b!6000489 (not c!1072181)) b!6000483))

(assert (= (and b!6000483 c!1072182) b!6000482))

(assert (= (and b!6000483 (not c!1072182)) b!6000490))

(assert (= (and b!6000490 c!1072180) b!6000488))

(assert (= (and b!6000490 (not c!1072180)) b!6000481))

(assert (= (or b!6000488 b!6000481) bm!484940))

(assert (= (or b!6000482 b!6000488) bm!484942))

(assert (= (or b!6000487 bm!484942) bm!484943))

(assert (= (or b!6000487 bm!484940) bm!484941))

(assert (=> bm!484941 m!6877512))

(declare-fun m!6878712 () Bool)

(assert (=> bm!484941 m!6878712))

(declare-fun m!6878714 () Bool)

(assert (=> d!1881563 m!6878714))

(assert (=> d!1881563 m!6876920))

(assert (=> b!6000490 m!6876984))

(assert (=> bm!484943 m!6877512))

(declare-fun m!6878716 () Bool)

(assert (=> bm!484943 m!6878716))

(assert (=> b!5999347 d!1881563))

(assert (=> b!5999347 d!1881545))

(declare-fun d!1881565 () Bool)

(assert (=> d!1881565 (= (tail!11644 s!2326) (t!377755 s!2326))))

(assert (=> b!5999347 d!1881565))

(assert (=> d!1881087 d!1881085))

(assert (=> d!1881087 d!1881083))

(declare-fun d!1881567 () Bool)

(assert (=> d!1881567 (= (matchR!8194 r!7292 s!2326) (matchRSpec!3112 r!7292 s!2326))))

(assert (=> d!1881567 true))

(declare-fun _$88!4494 () Unit!157293)

(assert (=> d!1881567 (= (choose!45015 r!7292 s!2326) _$88!4494)))

(declare-fun bs!1454477 () Bool)

(assert (= bs!1454477 d!1881567))

(assert (=> bs!1454477 m!6876968))

(assert (=> bs!1454477 m!6876966))

(assert (=> d!1881087 d!1881567))

(assert (=> d!1881087 d!1881119))

(declare-fun d!1881569 () Bool)

(assert (=> d!1881569 (= (nullable!6006 (h!70656 (exprs!5895 (h!70657 zl!343)))) (nullableFct!1976 (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun bs!1454478 () Bool)

(assert (= bs!1454478 d!1881569))

(declare-fun m!6878718 () Bool)

(assert (=> bs!1454478 m!6878718))

(assert (=> b!5999032 d!1881569))

(declare-fun d!1881571 () Bool)

(declare-fun res!2504363 () Bool)

(declare-fun e!3667604 () Bool)

(assert (=> d!1881571 (=> res!2504363 e!3667604)))

(assert (=> d!1881571 (= res!2504363 ((_ is Nil!64208) (t!377753 (exprs!5895 lt!2318655))))))

(assert (=> d!1881571 (= (forall!15109 (t!377753 (exprs!5895 lt!2318655)) lambda!327468) e!3667604)))

(declare-fun b!6000491 () Bool)

(declare-fun e!3667605 () Bool)

(assert (=> b!6000491 (= e!3667604 e!3667605)))

(declare-fun res!2504364 () Bool)

(assert (=> b!6000491 (=> (not res!2504364) (not e!3667605))))

(assert (=> b!6000491 (= res!2504364 (dynLambda!25172 lambda!327468 (h!70656 (t!377753 (exprs!5895 lt!2318655)))))))

(declare-fun b!6000492 () Bool)

(assert (=> b!6000492 (= e!3667605 (forall!15109 (t!377753 (t!377753 (exprs!5895 lt!2318655))) lambda!327468))))

(assert (= (and d!1881571 (not res!2504363)) b!6000491))

(assert (= (and b!6000491 res!2504364) b!6000492))

(declare-fun b_lambda!226797 () Bool)

(assert (=> (not b_lambda!226797) (not b!6000491)))

(declare-fun m!6878720 () Bool)

(assert (=> b!6000491 m!6878720))

(declare-fun m!6878722 () Bool)

(assert (=> b!6000492 m!6878722))

(assert (=> b!5999360 d!1881571))

(declare-fun d!1881573 () Bool)

(assert (=> d!1881573 (= (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 lt!2318655))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))) (ite (>= (regexDepth!268 (h!70656 (exprs!5895 lt!2318655))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))) (regexDepth!268 (h!70656 (exprs!5895 lt!2318655))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))))))

(assert (=> b!5999360 d!1881573))

(declare-fun bs!1454479 () Bool)

(declare-fun b!6000494 () Bool)

(assert (= bs!1454479 (and b!6000494 d!1881071)))

(declare-fun lambda!327547 () Int)

(assert (=> bs!1454479 (not (= lambda!327547 lambda!327456))))

(declare-fun bs!1454480 () Bool)

(assert (= bs!1454480 (and b!6000494 b!5999363)))

(declare-fun lt!2318955 () Int)

(assert (=> bs!1454480 (= (= lt!2318955 lt!2318858) (= lambda!327547 lambda!327470))))

(declare-fun bs!1454481 () Bool)

(assert (= bs!1454481 (and b!6000494 b!5999365)))

(assert (=> bs!1454481 (= (= lt!2318955 lt!2318859) (= lambda!327547 lambda!327471))))

(declare-fun bs!1454482 () Bool)

(assert (= bs!1454482 (and b!6000494 b!5999017)))

(assert (=> bs!1454482 (= (= lt!2318955 lt!2318786) (= lambda!327547 lambda!327421))))

(declare-fun bs!1454483 () Bool)

(assert (= bs!1454483 (and b!6000494 d!1881117)))

(assert (=> bs!1454483 (not (= lambda!327547 lambda!327475))))

(declare-fun bs!1454484 () Bool)

(assert (= bs!1454484 (and b!6000494 d!1881073)))

(assert (=> bs!1454484 (not (= lambda!327547 lambda!327459))))

(declare-fun bs!1454485 () Bool)

(assert (= bs!1454485 (and b!6000494 b!5999362)))

(assert (=> bs!1454485 (= (= lt!2318955 lt!2318855) (= lambda!327547 lambda!327469))))

(declare-fun bs!1454486 () Bool)

(assert (= bs!1454486 (and b!6000494 b!5999360)))

(assert (=> bs!1454486 (= (= lt!2318955 lt!2318854) (= lambda!327547 lambda!327468))))

(declare-fun bs!1454487 () Bool)

(assert (= bs!1454487 (and b!6000494 b!5999019)))

(assert (=> bs!1454487 (= (= lt!2318955 lt!2318787) (= lambda!327547 lambda!327422))))

(declare-fun bs!1454488 () Bool)

(assert (= bs!1454488 (and b!6000494 d!1881093)))

(assert (=> bs!1454488 (not (= lambda!327547 lambda!327472))))

(declare-fun bs!1454489 () Bool)

(assert (= bs!1454489 (and b!6000494 d!1881075)))

(assert (=> bs!1454489 (not (= lambda!327547 lambda!327460))))

(declare-fun bs!1454490 () Bool)

(assert (= bs!1454490 (and b!6000494 d!1881045)))

(assert (=> bs!1454490 (not (= lambda!327547 lambda!327449))))

(assert (=> b!6000494 true))

(declare-fun bs!1454491 () Bool)

(declare-fun b!6000496 () Bool)

(assert (= bs!1454491 (and b!6000496 b!5999363)))

(declare-fun lambda!327548 () Int)

(declare-fun lt!2318956 () Int)

(assert (=> bs!1454491 (= (= lt!2318956 lt!2318858) (= lambda!327548 lambda!327470))))

(declare-fun bs!1454492 () Bool)

(assert (= bs!1454492 (and b!6000496 b!5999365)))

(assert (=> bs!1454492 (= (= lt!2318956 lt!2318859) (= lambda!327548 lambda!327471))))

(declare-fun bs!1454493 () Bool)

(assert (= bs!1454493 (and b!6000496 b!5999017)))

(assert (=> bs!1454493 (= (= lt!2318956 lt!2318786) (= lambda!327548 lambda!327421))))

(declare-fun bs!1454494 () Bool)

(assert (= bs!1454494 (and b!6000496 d!1881117)))

(assert (=> bs!1454494 (not (= lambda!327548 lambda!327475))))

(declare-fun bs!1454495 () Bool)

(assert (= bs!1454495 (and b!6000496 d!1881073)))

(assert (=> bs!1454495 (not (= lambda!327548 lambda!327459))))

(declare-fun bs!1454496 () Bool)

(assert (= bs!1454496 (and b!6000496 b!5999362)))

(assert (=> bs!1454496 (= (= lt!2318956 lt!2318855) (= lambda!327548 lambda!327469))))

(declare-fun bs!1454497 () Bool)

(assert (= bs!1454497 (and b!6000496 b!5999360)))

(assert (=> bs!1454497 (= (= lt!2318956 lt!2318854) (= lambda!327548 lambda!327468))))

(declare-fun bs!1454498 () Bool)

(assert (= bs!1454498 (and b!6000496 b!5999019)))

(assert (=> bs!1454498 (= (= lt!2318956 lt!2318787) (= lambda!327548 lambda!327422))))

(declare-fun bs!1454499 () Bool)

(assert (= bs!1454499 (and b!6000496 d!1881093)))

(assert (=> bs!1454499 (not (= lambda!327548 lambda!327472))))

(declare-fun bs!1454500 () Bool)

(assert (= bs!1454500 (and b!6000496 b!6000494)))

(assert (=> bs!1454500 (= (= lt!2318956 lt!2318955) (= lambda!327548 lambda!327547))))

(declare-fun bs!1454501 () Bool)

(assert (= bs!1454501 (and b!6000496 d!1881071)))

(assert (=> bs!1454501 (not (= lambda!327548 lambda!327456))))

(declare-fun bs!1454502 () Bool)

(assert (= bs!1454502 (and b!6000496 d!1881075)))

(assert (=> bs!1454502 (not (= lambda!327548 lambda!327460))))

(declare-fun bs!1454503 () Bool)

(assert (= bs!1454503 (and b!6000496 d!1881045)))

(assert (=> bs!1454503 (not (= lambda!327548 lambda!327449))))

(assert (=> b!6000496 true))

(declare-fun d!1881575 () Bool)

(declare-fun e!3667607 () Bool)

(assert (=> d!1881575 e!3667607))

(declare-fun res!2504365 () Bool)

(assert (=> d!1881575 (=> (not res!2504365) (not e!3667607))))

(assert (=> d!1881575 (= res!2504365 (>= lt!2318956 0))))

(declare-fun e!3667606 () Int)

(assert (=> d!1881575 (= lt!2318956 e!3667606)))

(declare-fun c!1072185 () Bool)

(assert (=> d!1881575 (= c!1072185 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))))))

(assert (=> d!1881575 (= (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))) lt!2318956)))

(assert (=> b!6000494 (= e!3667606 lt!2318955)))

(assert (=> b!6000494 (= lt!2318955 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))))))))))

(declare-fun lt!2318958 () Unit!157293)

(assert (=> b!6000494 (= lt!2318958 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))) lt!2318955 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))))))))))

(assert (=> b!6000494 (forall!15109 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))) lambda!327547)))

(declare-fun lt!2318957 () Unit!157293)

(assert (=> b!6000494 (= lt!2318957 lt!2318958)))

(declare-fun b!6000495 () Bool)

(assert (=> b!6000495 (= e!3667606 0)))

(assert (=> b!6000496 (= e!3667607 (forall!15109 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))) lambda!327548))))

(assert (= (and d!1881575 c!1072185) b!6000494))

(assert (= (and d!1881575 (not c!1072185)) b!6000495))

(assert (= (and d!1881575 res!2504365) b!6000496))

(declare-fun m!6878724 () Bool)

(assert (=> b!6000494 m!6878724))

(declare-fun m!6878726 () Bool)

(assert (=> b!6000494 m!6878726))

(declare-fun m!6878728 () Bool)

(assert (=> b!6000494 m!6878728))

(assert (=> b!6000494 m!6878726))

(declare-fun m!6878730 () Bool)

(assert (=> b!6000494 m!6878730))

(assert (=> b!6000494 m!6878726))

(declare-fun m!6878732 () Bool)

(assert (=> b!6000494 m!6878732))

(assert (=> b!6000494 m!6878724))

(declare-fun m!6878734 () Bool)

(assert (=> b!6000496 m!6878734))

(assert (=> b!5999360 d!1881575))

(declare-fun bs!1454504 () Bool)

(declare-fun d!1881577 () Bool)

(assert (= bs!1454504 (and d!1881577 b!5999363)))

(declare-fun lambda!327551 () Int)

(assert (=> bs!1454504 (= (= lt!2318854 lt!2318858) (= lambda!327551 lambda!327470))))

(declare-fun bs!1454505 () Bool)

(assert (= bs!1454505 (and d!1881577 b!5999365)))

(assert (=> bs!1454505 (= (= lt!2318854 lt!2318859) (= lambda!327551 lambda!327471))))

(declare-fun bs!1454506 () Bool)

(assert (= bs!1454506 (and d!1881577 b!5999017)))

(assert (=> bs!1454506 (= (= lt!2318854 lt!2318786) (= lambda!327551 lambda!327421))))

(declare-fun bs!1454507 () Bool)

(assert (= bs!1454507 (and d!1881577 d!1881073)))

(assert (=> bs!1454507 (not (= lambda!327551 lambda!327459))))

(declare-fun bs!1454508 () Bool)

(assert (= bs!1454508 (and d!1881577 b!5999362)))

(assert (=> bs!1454508 (= (= lt!2318854 lt!2318855) (= lambda!327551 lambda!327469))))

(declare-fun bs!1454509 () Bool)

(assert (= bs!1454509 (and d!1881577 b!5999360)))

(assert (=> bs!1454509 (= lambda!327551 lambda!327468)))

(declare-fun bs!1454510 () Bool)

(assert (= bs!1454510 (and d!1881577 b!5999019)))

(assert (=> bs!1454510 (= (= lt!2318854 lt!2318787) (= lambda!327551 lambda!327422))))

(declare-fun bs!1454511 () Bool)

(assert (= bs!1454511 (and d!1881577 d!1881093)))

(assert (=> bs!1454511 (not (= lambda!327551 lambda!327472))))

(declare-fun bs!1454512 () Bool)

(assert (= bs!1454512 (and d!1881577 b!6000494)))

(assert (=> bs!1454512 (= (= lt!2318854 lt!2318955) (= lambda!327551 lambda!327547))))

(declare-fun bs!1454513 () Bool)

(assert (= bs!1454513 (and d!1881577 d!1881071)))

(assert (=> bs!1454513 (not (= lambda!327551 lambda!327456))))

(declare-fun bs!1454514 () Bool)

(assert (= bs!1454514 (and d!1881577 d!1881117)))

(assert (=> bs!1454514 (not (= lambda!327551 lambda!327475))))

(declare-fun bs!1454515 () Bool)

(assert (= bs!1454515 (and d!1881577 b!6000496)))

(assert (=> bs!1454515 (= (= lt!2318854 lt!2318956) (= lambda!327551 lambda!327548))))

(declare-fun bs!1454516 () Bool)

(assert (= bs!1454516 (and d!1881577 d!1881075)))

(assert (=> bs!1454516 (not (= lambda!327551 lambda!327460))))

(declare-fun bs!1454517 () Bool)

(assert (= bs!1454517 (and d!1881577 d!1881045)))

(assert (=> bs!1454517 (not (= lambda!327551 lambda!327449))))

(assert (=> d!1881577 true))

(assert (=> d!1881577 (forall!15109 (t!377753 (exprs!5895 lt!2318655)) lambda!327551)))

(declare-fun lt!2318961 () Unit!157293)

(declare-fun choose!45018 (List!64332 Int Int) Unit!157293)

(assert (=> d!1881577 (= lt!2318961 (choose!45018 (t!377753 (exprs!5895 lt!2318655)) lt!2318854 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))))))

(assert (=> d!1881577 (>= lt!2318854 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))))))

(assert (=> d!1881577 (= (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 lt!2318655)) lt!2318854 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318655))))) lt!2318961)))

(declare-fun bs!1454518 () Bool)

(assert (= bs!1454518 d!1881577))

(declare-fun m!6878736 () Bool)

(assert (=> bs!1454518 m!6878736))

(assert (=> bs!1454518 m!6877644))

(declare-fun m!6878738 () Bool)

(assert (=> bs!1454518 m!6878738))

(assert (=> b!5999360 d!1881577))

(declare-fun b!6000498 () Bool)

(declare-fun c!1072188 () Bool)

(assert (=> b!6000498 (= c!1072188 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun e!3667608 () Bool)

(declare-fun e!3667612 () Bool)

(assert (=> b!6000498 (= e!3667608 e!3667612)))

(declare-fun b!6000499 () Bool)

(declare-fun c!1072192 () Bool)

(assert (=> b!6000499 (= c!1072192 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun e!3667609 () Int)

(declare-fun e!3667615 () Int)

(assert (=> b!6000499 (= e!3667609 e!3667615)))

(declare-fun b!6000500 () Bool)

(declare-fun e!3667616 () Bool)

(declare-fun lt!2318962 () Int)

(declare-fun call!484953 () Int)

(assert (=> b!6000500 (= e!3667616 (> lt!2318962 call!484953))))

(declare-fun b!6000501 () Bool)

(declare-fun e!3667613 () Bool)

(assert (=> b!6000501 (= e!3667613 e!3667616)))

(declare-fun res!2504366 () Bool)

(declare-fun call!484954 () Int)

(assert (=> b!6000501 (= res!2504366 (> lt!2318962 call!484954))))

(assert (=> b!6000501 (=> (not res!2504366) (not e!3667616))))

(declare-fun b!6000502 () Bool)

(declare-fun e!3667614 () Int)

(assert (=> b!6000502 (= e!3667614 1)))

(declare-fun call!484951 () Int)

(declare-fun c!1072186 () Bool)

(declare-fun bm!484944 () Bool)

(assert (=> bm!484944 (= call!484951 (regexDepth!268 (ite c!1072186 (reg!16340 (h!70656 (exprs!5895 lt!2318655))) (ite c!1072192 (regTwo!32535 (h!70656 (exprs!5895 lt!2318655))) (regOne!32534 (h!70656 (exprs!5895 lt!2318655)))))))))

(declare-fun b!6000503 () Bool)

(declare-fun res!2504367 () Bool)

(declare-fun e!3667610 () Bool)

(assert (=> b!6000503 (=> (not res!2504367) (not e!3667610))))

(declare-fun call!484949 () Int)

(assert (=> b!6000503 (= res!2504367 (> lt!2318962 call!484949))))

(assert (=> b!6000503 (= e!3667608 e!3667610)))

(declare-fun bm!484945 () Bool)

(declare-fun call!484950 () Int)

(assert (=> bm!484945 (= call!484950 call!484951)))

(declare-fun bm!484946 () Bool)

(assert (=> bm!484946 (= call!484949 call!484954)))

(declare-fun bm!484947 () Bool)

(declare-fun call!484955 () Int)

(assert (=> bm!484947 (= call!484955 (regexDepth!268 (ite c!1072192 (regOne!32535 (h!70656 (exprs!5895 lt!2318655))) (regTwo!32534 (h!70656 (exprs!5895 lt!2318655))))))))

(declare-fun call!484952 () Int)

(declare-fun bm!484948 () Bool)

(assert (=> bm!484948 (= call!484952 (maxBigInt!0 (ite c!1072192 call!484955 call!484950) (ite c!1072192 call!484950 call!484955)))))

(declare-fun b!6000504 () Bool)

(assert (=> b!6000504 (= e!3667614 (+ 1 call!484952))))

(declare-fun bm!484949 () Bool)

(declare-fun c!1072189 () Bool)

(assert (=> bm!484949 (= call!484953 (regexDepth!268 (ite c!1072189 (regTwo!32535 (h!70656 (exprs!5895 lt!2318655))) (regTwo!32534 (h!70656 (exprs!5895 lt!2318655))))))))

(declare-fun b!6000505 () Bool)

(declare-fun e!3667611 () Int)

(assert (=> b!6000505 (= e!3667611 1)))

(declare-fun b!6000506 () Bool)

(assert (=> b!6000506 (= e!3667615 e!3667614)))

(declare-fun c!1072187 () Bool)

(assert (=> b!6000506 (= c!1072187 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun d!1881579 () Bool)

(declare-fun e!3667617 () Bool)

(assert (=> d!1881579 e!3667617))

(declare-fun res!2504368 () Bool)

(assert (=> d!1881579 (=> (not res!2504368) (not e!3667617))))

(assert (=> d!1881579 (= res!2504368 (> lt!2318962 0))))

(assert (=> d!1881579 (= lt!2318962 e!3667611)))

(declare-fun c!1072191 () Bool)

(assert (=> d!1881579 (= c!1072191 ((_ is ElementMatch!16011) (h!70656 (exprs!5895 lt!2318655))))))

(assert (=> d!1881579 (= (regexDepth!268 (h!70656 (exprs!5895 lt!2318655))) lt!2318962)))

(declare-fun b!6000507 () Bool)

(assert (=> b!6000507 (= e!3667610 (> lt!2318962 call!484953))))

(declare-fun b!6000508 () Bool)

(assert (=> b!6000508 (= e!3667613 e!3667608)))

(declare-fun c!1072190 () Bool)

(assert (=> b!6000508 (= c!1072190 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun b!6000509 () Bool)

(assert (=> b!6000509 (= e!3667612 (> lt!2318962 call!484949))))

(declare-fun b!6000510 () Bool)

(assert (=> b!6000510 (= e!3667615 (+ 1 call!484952))))

(declare-fun b!6000511 () Bool)

(assert (=> b!6000511 (= e!3667617 e!3667613)))

(assert (=> b!6000511 (= c!1072189 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun b!6000512 () Bool)

(assert (=> b!6000512 (= e!3667612 (= lt!2318962 1))))

(declare-fun b!6000513 () Bool)

(assert (=> b!6000513 (= e!3667609 (+ 1 call!484951))))

(declare-fun bm!484950 () Bool)

(assert (=> bm!484950 (= call!484954 (regexDepth!268 (ite c!1072189 (regOne!32535 (h!70656 (exprs!5895 lt!2318655))) (ite c!1072190 (regOne!32534 (h!70656 (exprs!5895 lt!2318655))) (reg!16340 (h!70656 (exprs!5895 lt!2318655)))))))))

(declare-fun b!6000514 () Bool)

(assert (=> b!6000514 (= e!3667611 e!3667609)))

(assert (=> b!6000514 (= c!1072186 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318655))))))

(assert (= (and d!1881579 c!1072191) b!6000505))

(assert (= (and d!1881579 (not c!1072191)) b!6000514))

(assert (= (and b!6000514 c!1072186) b!6000513))

(assert (= (and b!6000514 (not c!1072186)) b!6000499))

(assert (= (and b!6000499 c!1072192) b!6000510))

(assert (= (and b!6000499 (not c!1072192)) b!6000506))

(assert (= (and b!6000506 c!1072187) b!6000504))

(assert (= (and b!6000506 (not c!1072187)) b!6000502))

(assert (= (or b!6000510 b!6000504) bm!484945))

(assert (= (or b!6000510 b!6000504) bm!484947))

(assert (= (or b!6000510 b!6000504) bm!484948))

(assert (= (or b!6000513 bm!484945) bm!484944))

(assert (= (and d!1881579 res!2504368) b!6000511))

(assert (= (and b!6000511 c!1072189) b!6000501))

(assert (= (and b!6000511 (not c!1072189)) b!6000508))

(assert (= (and b!6000501 res!2504366) b!6000500))

(assert (= (and b!6000508 c!1072190) b!6000503))

(assert (= (and b!6000508 (not c!1072190)) b!6000498))

(assert (= (and b!6000503 res!2504367) b!6000507))

(assert (= (and b!6000498 c!1072188) b!6000509))

(assert (= (and b!6000498 (not c!1072188)) b!6000512))

(assert (= (or b!6000503 b!6000509) bm!484946))

(assert (= (or b!6000500 b!6000507) bm!484949))

(assert (= (or b!6000501 bm!484946) bm!484950))

(declare-fun m!6878740 () Bool)

(assert (=> bm!484947 m!6878740))

(declare-fun m!6878742 () Bool)

(assert (=> bm!484948 m!6878742))

(declare-fun m!6878744 () Bool)

(assert (=> bm!484944 m!6878744))

(declare-fun m!6878746 () Bool)

(assert (=> bm!484950 m!6878746))

(declare-fun m!6878748 () Bool)

(assert (=> bm!484949 m!6878748))

(assert (=> b!5999360 d!1881579))

(assert (=> d!1881021 d!1881531))

(declare-fun b!6000516 () Bool)

(declare-fun e!3667623 () Bool)

(assert (=> b!6000516 (= e!3667623 (matchR!8194 (derivativeStep!4740 (regOne!32534 r!7292) (head!12559 Nil!64210)) (tail!11644 Nil!64210)))))

(declare-fun b!6000517 () Bool)

(declare-fun e!3667622 () Bool)

(declare-fun e!3667624 () Bool)

(assert (=> b!6000517 (= e!3667622 e!3667624)))

(declare-fun res!2504373 () Bool)

(assert (=> b!6000517 (=> res!2504373 e!3667624)))

(declare-fun call!484956 () Bool)

(assert (=> b!6000517 (= res!2504373 call!484956)))

(declare-fun b!6000518 () Bool)

(declare-fun e!3667620 () Bool)

(declare-fun e!3667618 () Bool)

(assert (=> b!6000518 (= e!3667620 e!3667618)))

(declare-fun c!1072194 () Bool)

(assert (=> b!6000518 (= c!1072194 ((_ is EmptyLang!16011) (regOne!32534 r!7292)))))

(declare-fun b!6000519 () Bool)

(declare-fun res!2504370 () Bool)

(declare-fun e!3667619 () Bool)

(assert (=> b!6000519 (=> (not res!2504370) (not e!3667619))))

(assert (=> b!6000519 (= res!2504370 (not call!484956))))

(declare-fun b!6000520 () Bool)

(declare-fun res!2504372 () Bool)

(declare-fun e!3667621 () Bool)

(assert (=> b!6000520 (=> res!2504372 e!3667621)))

(assert (=> b!6000520 (= res!2504372 e!3667619)))

(declare-fun res!2504376 () Bool)

(assert (=> b!6000520 (=> (not res!2504376) (not e!3667619))))

(declare-fun lt!2318963 () Bool)

(assert (=> b!6000520 (= res!2504376 lt!2318963)))

(declare-fun bm!484951 () Bool)

(assert (=> bm!484951 (= call!484956 (isEmpty!36106 Nil!64210))))

(declare-fun b!6000521 () Bool)

(assert (=> b!6000521 (= e!3667618 (not lt!2318963))))

(declare-fun b!6000522 () Bool)

(declare-fun res!2504371 () Bool)

(assert (=> b!6000522 (=> res!2504371 e!3667621)))

(assert (=> b!6000522 (= res!2504371 (not ((_ is ElementMatch!16011) (regOne!32534 r!7292))))))

(assert (=> b!6000522 (= e!3667618 e!3667621)))

(declare-fun b!6000523 () Bool)

(declare-fun res!2504369 () Bool)

(assert (=> b!6000523 (=> (not res!2504369) (not e!3667619))))

(assert (=> b!6000523 (= res!2504369 (isEmpty!36106 (tail!11644 Nil!64210)))))

(declare-fun b!6000515 () Bool)

(assert (=> b!6000515 (= e!3667619 (= (head!12559 Nil!64210) (c!1071586 (regOne!32534 r!7292))))))

(declare-fun d!1881581 () Bool)

(assert (=> d!1881581 e!3667620))

(declare-fun c!1072195 () Bool)

(assert (=> d!1881581 (= c!1072195 ((_ is EmptyExpr!16011) (regOne!32534 r!7292)))))

(assert (=> d!1881581 (= lt!2318963 e!3667623)))

(declare-fun c!1072193 () Bool)

(assert (=> d!1881581 (= c!1072193 (isEmpty!36106 Nil!64210))))

(assert (=> d!1881581 (validRegex!7747 (regOne!32534 r!7292))))

(assert (=> d!1881581 (= (matchR!8194 (regOne!32534 r!7292) Nil!64210) lt!2318963)))

(declare-fun b!6000524 () Bool)

(assert (=> b!6000524 (= e!3667621 e!3667622)))

(declare-fun res!2504374 () Bool)

(assert (=> b!6000524 (=> (not res!2504374) (not e!3667622))))

(assert (=> b!6000524 (= res!2504374 (not lt!2318963))))

(declare-fun b!6000525 () Bool)

(assert (=> b!6000525 (= e!3667623 (nullable!6006 (regOne!32534 r!7292)))))

(declare-fun b!6000526 () Bool)

(assert (=> b!6000526 (= e!3667624 (not (= (head!12559 Nil!64210) (c!1071586 (regOne!32534 r!7292)))))))

(declare-fun b!6000527 () Bool)

(declare-fun res!2504375 () Bool)

(assert (=> b!6000527 (=> res!2504375 e!3667624)))

(assert (=> b!6000527 (= res!2504375 (not (isEmpty!36106 (tail!11644 Nil!64210))))))

(declare-fun b!6000528 () Bool)

(assert (=> b!6000528 (= e!3667620 (= lt!2318963 call!484956))))

(assert (= (and d!1881581 c!1072193) b!6000525))

(assert (= (and d!1881581 (not c!1072193)) b!6000516))

(assert (= (and d!1881581 c!1072195) b!6000528))

(assert (= (and d!1881581 (not c!1072195)) b!6000518))

(assert (= (and b!6000518 c!1072194) b!6000521))

(assert (= (and b!6000518 (not c!1072194)) b!6000522))

(assert (= (and b!6000522 (not res!2504371)) b!6000520))

(assert (= (and b!6000520 res!2504376) b!6000519))

(assert (= (and b!6000519 res!2504370) b!6000523))

(assert (= (and b!6000523 res!2504369) b!6000515))

(assert (= (and b!6000520 (not res!2504372)) b!6000524))

(assert (= (and b!6000524 res!2504374) b!6000517))

(assert (= (and b!6000517 (not res!2504373)) b!6000527))

(assert (= (and b!6000527 (not res!2504375)) b!6000526))

(assert (= (or b!6000528 b!6000517 b!6000519) bm!484951))

(declare-fun m!6878750 () Bool)

(assert (=> b!6000516 m!6878750))

(assert (=> b!6000516 m!6878750))

(declare-fun m!6878752 () Bool)

(assert (=> b!6000516 m!6878752))

(declare-fun m!6878754 () Bool)

(assert (=> b!6000516 m!6878754))

(assert (=> b!6000516 m!6878752))

(assert (=> b!6000516 m!6878754))

(declare-fun m!6878756 () Bool)

(assert (=> b!6000516 m!6878756))

(declare-fun m!6878758 () Bool)

(assert (=> d!1881581 m!6878758))

(assert (=> d!1881581 m!6877420))

(assert (=> b!6000523 m!6878754))

(assert (=> b!6000523 m!6878754))

(declare-fun m!6878760 () Bool)

(assert (=> b!6000523 m!6878760))

(assert (=> b!6000515 m!6878750))

(assert (=> b!6000526 m!6878750))

(assert (=> bm!484951 m!6878758))

(assert (=> b!6000527 m!6878754))

(assert (=> b!6000527 m!6878754))

(assert (=> b!6000527 m!6878760))

(assert (=> b!6000525 m!6876984))

(assert (=> d!1881021 d!1881581))

(declare-fun bm!484952 () Bool)

(declare-fun call!484958 () Bool)

(declare-fun call!484957 () Bool)

(assert (=> bm!484952 (= call!484958 call!484957)))

(declare-fun bm!484953 () Bool)

(declare-fun call!484959 () Bool)

(declare-fun c!1072196 () Bool)

(assert (=> bm!484953 (= call!484959 (validRegex!7747 (ite c!1072196 (regTwo!32535 (regOne!32534 r!7292)) (regTwo!32534 (regOne!32534 r!7292)))))))

(declare-fun b!6000529 () Bool)

(declare-fun res!2504381 () Bool)

(declare-fun e!3667625 () Bool)

(assert (=> b!6000529 (=> (not res!2504381) (not e!3667625))))

(assert (=> b!6000529 (= res!2504381 call!484958)))

(declare-fun e!3667631 () Bool)

(assert (=> b!6000529 (= e!3667631 e!3667625)))

(declare-fun b!6000530 () Bool)

(declare-fun e!3667629 () Bool)

(assert (=> b!6000530 (= e!3667629 e!3667631)))

(assert (=> b!6000530 (= c!1072196 ((_ is Union!16011) (regOne!32534 r!7292)))))

(declare-fun b!6000532 () Bool)

(declare-fun e!3667627 () Bool)

(assert (=> b!6000532 (= e!3667629 e!3667627)))

(declare-fun res!2504380 () Bool)

(assert (=> b!6000532 (= res!2504380 (not (nullable!6006 (reg!16340 (regOne!32534 r!7292)))))))

(assert (=> b!6000532 (=> (not res!2504380) (not e!3667627))))

(declare-fun b!6000533 () Bool)

(declare-fun res!2504379 () Bool)

(declare-fun e!3667628 () Bool)

(assert (=> b!6000533 (=> res!2504379 e!3667628)))

(assert (=> b!6000533 (= res!2504379 (not ((_ is Concat!24856) (regOne!32534 r!7292))))))

(assert (=> b!6000533 (= e!3667631 e!3667628)))

(declare-fun b!6000534 () Bool)

(declare-fun e!3667630 () Bool)

(assert (=> b!6000534 (= e!3667630 e!3667629)))

(declare-fun c!1072197 () Bool)

(assert (=> b!6000534 (= c!1072197 ((_ is Star!16011) (regOne!32534 r!7292)))))

(declare-fun bm!484954 () Bool)

(assert (=> bm!484954 (= call!484957 (validRegex!7747 (ite c!1072197 (reg!16340 (regOne!32534 r!7292)) (ite c!1072196 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292))))))))

(declare-fun b!6000535 () Bool)

(assert (=> b!6000535 (= e!3667625 call!484959)))

(declare-fun b!6000536 () Bool)

(declare-fun e!3667626 () Bool)

(assert (=> b!6000536 (= e!3667626 call!484959)))

(declare-fun b!6000537 () Bool)

(assert (=> b!6000537 (= e!3667627 call!484957)))

(declare-fun b!6000531 () Bool)

(assert (=> b!6000531 (= e!3667628 e!3667626)))

(declare-fun res!2504378 () Bool)

(assert (=> b!6000531 (=> (not res!2504378) (not e!3667626))))

(assert (=> b!6000531 (= res!2504378 call!484958)))

(declare-fun d!1881583 () Bool)

(declare-fun res!2504377 () Bool)

(assert (=> d!1881583 (=> res!2504377 e!3667630)))

(assert (=> d!1881583 (= res!2504377 ((_ is ElementMatch!16011) (regOne!32534 r!7292)))))

(assert (=> d!1881583 (= (validRegex!7747 (regOne!32534 r!7292)) e!3667630)))

(assert (= (and d!1881583 (not res!2504377)) b!6000534))

(assert (= (and b!6000534 c!1072197) b!6000532))

(assert (= (and b!6000534 (not c!1072197)) b!6000530))

(assert (= (and b!6000532 res!2504380) b!6000537))

(assert (= (and b!6000530 c!1072196) b!6000529))

(assert (= (and b!6000530 (not c!1072196)) b!6000533))

(assert (= (and b!6000529 res!2504381) b!6000535))

(assert (= (and b!6000533 (not res!2504379)) b!6000531))

(assert (= (and b!6000531 res!2504378) b!6000536))

(assert (= (or b!6000535 b!6000536) bm!484953))

(assert (= (or b!6000529 b!6000531) bm!484952))

(assert (= (or b!6000537 bm!484952) bm!484954))

(declare-fun m!6878762 () Bool)

(assert (=> bm!484953 m!6878762))

(declare-fun m!6878764 () Bool)

(assert (=> b!6000532 m!6878764))

(declare-fun m!6878766 () Bool)

(assert (=> bm!484954 m!6878766))

(assert (=> d!1881021 d!1881583))

(declare-fun bm!484955 () Bool)

(declare-fun call!484960 () (InoxSet Context!10790))

(declare-fun call!484962 () (InoxSet Context!10790))

(assert (=> bm!484955 (= call!484960 call!484962)))

(declare-fun b!6000539 () Bool)

(declare-fun c!1072199 () Bool)

(declare-fun e!3667634 () Bool)

(assert (=> b!6000539 (= c!1072199 e!3667634)))

(declare-fun res!2504382 () Bool)

(assert (=> b!6000539 (=> (not res!2504382) (not e!3667634))))

(assert (=> b!6000539 (= res!2504382 ((_ is Concat!24856) (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))))))

(declare-fun e!3667633 () (InoxSet Context!10790))

(declare-fun e!3667632 () (InoxSet Context!10790))

(assert (=> b!6000539 (= e!3667633 e!3667632)))

(declare-fun c!1072201 () Bool)

(declare-fun call!484964 () List!64332)

(declare-fun bm!484956 () Bool)

(declare-fun call!484963 () (InoxSet Context!10790))

(assert (=> bm!484956 (= call!484963 (derivationStepZipperDown!1261 (ite c!1072201 (regOne!32535 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))) (regOne!32534 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292))))))) (ite c!1072201 (ite (or c!1071871 c!1071869) lt!2318656 (Context!10791 call!484699)) (Context!10791 call!484964)) (h!70658 s!2326)))))

(declare-fun b!6000540 () Bool)

(declare-fun e!3667637 () (InoxSet Context!10790))

(assert (=> b!6000540 (= e!3667637 call!484960)))

(declare-fun bm!484957 () Bool)

(declare-fun call!484965 () List!64332)

(assert (=> bm!484957 (= call!484965 call!484964)))

(declare-fun c!1072198 () Bool)

(declare-fun bm!484958 () Bool)

(assert (=> bm!484958 (= call!484964 ($colon$colon!1896 (exprs!5895 (ite (or c!1071871 c!1071869) lt!2318656 (Context!10791 call!484699))) (ite (or c!1072199 c!1072198) (regTwo!32534 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))) (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292))))))))))

(declare-fun call!484961 () (InoxSet Context!10790))

(declare-fun bm!484959 () Bool)

(assert (=> bm!484959 (= call!484961 (derivationStepZipperDown!1261 (ite c!1072201 (regTwo!32535 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))) (ite c!1072199 (regTwo!32534 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))) (ite c!1072198 (regOne!32534 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))) (reg!16340 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292))))))))) (ite (or c!1072201 c!1072199) (ite (or c!1071871 c!1071869) lt!2318656 (Context!10791 call!484699)) (Context!10791 call!484965)) (h!70658 s!2326)))))

(declare-fun b!6000541 () Bool)

(assert (=> b!6000541 (= e!3667633 ((_ map or) call!484963 call!484961))))

(declare-fun c!1072202 () Bool)

(declare-fun b!6000542 () Bool)

(assert (=> b!6000542 (= c!1072202 ((_ is Star!16011) (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))))))

(declare-fun e!3667636 () (InoxSet Context!10790))

(assert (=> b!6000542 (= e!3667637 e!3667636)))

(declare-fun bm!484960 () Bool)

(assert (=> bm!484960 (= call!484962 call!484961)))

(declare-fun b!6000543 () Bool)

(declare-fun e!3667635 () (InoxSet Context!10790))

(assert (=> b!6000543 (= e!3667635 e!3667633)))

(assert (=> b!6000543 (= c!1072201 ((_ is Union!16011) (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))))))

(declare-fun c!1072200 () Bool)

(declare-fun d!1881585 () Bool)

(assert (=> d!1881585 (= c!1072200 (and ((_ is ElementMatch!16011) (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))) (= (c!1071586 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))) (h!70658 s!2326))))))

(assert (=> d!1881585 (= (derivationStepZipperDown!1261 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292))))) (ite (or c!1071871 c!1071869) lt!2318656 (Context!10791 call!484699)) (h!70658 s!2326)) e!3667635)))

(declare-fun b!6000538 () Bool)

(assert (=> b!6000538 (= e!3667636 call!484960)))

(declare-fun b!6000544 () Bool)

(assert (=> b!6000544 (= e!3667632 ((_ map or) call!484963 call!484962))))

(declare-fun b!6000545 () Bool)

(assert (=> b!6000545 (= e!3667636 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000546 () Bool)

(assert (=> b!6000546 (= e!3667635 (store ((as const (Array Context!10790 Bool)) false) (ite (or c!1071871 c!1071869) lt!2318656 (Context!10791 call!484699)) true))))

(declare-fun b!6000547 () Bool)

(assert (=> b!6000547 (= e!3667632 e!3667637)))

(assert (=> b!6000547 (= c!1072198 ((_ is Concat!24856) (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292)))))))))

(declare-fun b!6000548 () Bool)

(assert (=> b!6000548 (= e!3667634 (nullable!6006 (regOne!32534 (ite c!1071871 (regTwo!32535 (regTwo!32534 r!7292)) (ite c!1071869 (regTwo!32534 (regTwo!32534 r!7292)) (ite c!1071868 (regOne!32534 (regTwo!32534 r!7292)) (reg!16340 (regTwo!32534 r!7292))))))))))

(assert (= (and d!1881585 c!1072200) b!6000546))

(assert (= (and d!1881585 (not c!1072200)) b!6000543))

(assert (= (and b!6000543 c!1072201) b!6000541))

(assert (= (and b!6000543 (not c!1072201)) b!6000539))

(assert (= (and b!6000539 res!2504382) b!6000548))

(assert (= (and b!6000539 c!1072199) b!6000544))

(assert (= (and b!6000539 (not c!1072199)) b!6000547))

(assert (= (and b!6000547 c!1072198) b!6000540))

(assert (= (and b!6000547 (not c!1072198)) b!6000542))

(assert (= (and b!6000542 c!1072202) b!6000538))

(assert (= (and b!6000542 (not c!1072202)) b!6000545))

(assert (= (or b!6000540 b!6000538) bm!484957))

(assert (= (or b!6000540 b!6000538) bm!484955))

(assert (= (or b!6000544 bm!484957) bm!484958))

(assert (= (or b!6000544 bm!484955) bm!484960))

(assert (= (or b!6000541 bm!484960) bm!484959))

(assert (= (or b!6000541 b!6000544) bm!484956))

(declare-fun m!6878768 () Bool)

(assert (=> b!6000548 m!6878768))

(declare-fun m!6878770 () Bool)

(assert (=> bm!484956 m!6878770))

(declare-fun m!6878772 () Bool)

(assert (=> b!6000546 m!6878772))

(declare-fun m!6878774 () Bool)

(assert (=> bm!484958 m!6878774))

(declare-fun m!6878776 () Bool)

(assert (=> bm!484959 m!6878776))

(assert (=> bm!484693 d!1881585))

(declare-fun d!1881587 () Bool)

(assert (=> d!1881587 (= (isEmpty!36101 (tail!11645 (unfocusZipperList!1432 zl!343))) ((_ is Nil!64208) (tail!11645 (unfocusZipperList!1432 zl!343))))))

(assert (=> b!5999256 d!1881587))

(declare-fun d!1881589 () Bool)

(assert (=> d!1881589 (= (tail!11645 (unfocusZipperList!1432 zl!343)) (t!377753 (unfocusZipperList!1432 zl!343)))))

(assert (=> b!5999256 d!1881589))

(declare-fun d!1881591 () Bool)

(assert (=> d!1881591 (= (isEmpty!36106 (tail!11644 s!2326)) ((_ is Nil!64210) (tail!11644 s!2326)))))

(assert (=> b!5999354 d!1881591))

(assert (=> b!5999354 d!1881565))

(declare-fun b!6000563 () Bool)

(declare-fun e!3667652 () Bool)

(declare-fun e!3667650 () Bool)

(assert (=> b!6000563 (= e!3667652 e!3667650)))

(declare-fun res!2504393 () Bool)

(assert (=> b!6000563 (=> (not res!2504393) (not e!3667650))))

(assert (=> b!6000563 (= res!2504393 (and (not ((_ is EmptyLang!16011) (regOne!32534 r!7292))) (not ((_ is ElementMatch!16011) (regOne!32534 r!7292)))))))

(declare-fun bm!484965 () Bool)

(declare-fun call!484970 () Bool)

(declare-fun c!1072205 () Bool)

(assert (=> bm!484965 (= call!484970 (nullable!6006 (ite c!1072205 (regOne!32535 (regOne!32534 r!7292)) (regOne!32534 (regOne!32534 r!7292)))))))

(declare-fun b!6000564 () Bool)

(declare-fun e!3667655 () Bool)

(assert (=> b!6000564 (= e!3667650 e!3667655)))

(declare-fun res!2504397 () Bool)

(assert (=> b!6000564 (=> res!2504397 e!3667655)))

(assert (=> b!6000564 (= res!2504397 ((_ is Star!16011) (regOne!32534 r!7292)))))

(declare-fun b!6000565 () Bool)

(declare-fun e!3667653 () Bool)

(assert (=> b!6000565 (= e!3667655 e!3667653)))

(assert (=> b!6000565 (= c!1072205 ((_ is Union!16011) (regOne!32534 r!7292)))))

(declare-fun d!1881593 () Bool)

(declare-fun res!2504394 () Bool)

(assert (=> d!1881593 (=> res!2504394 e!3667652)))

(assert (=> d!1881593 (= res!2504394 ((_ is EmptyExpr!16011) (regOne!32534 r!7292)))))

(assert (=> d!1881593 (= (nullableFct!1976 (regOne!32534 r!7292)) e!3667652)))

(declare-fun b!6000566 () Bool)

(declare-fun e!3667651 () Bool)

(assert (=> b!6000566 (= e!3667653 e!3667651)))

(declare-fun res!2504396 () Bool)

(assert (=> b!6000566 (= res!2504396 call!484970)))

(assert (=> b!6000566 (=> (not res!2504396) (not e!3667651))))

(declare-fun bm!484966 () Bool)

(declare-fun call!484971 () Bool)

(assert (=> bm!484966 (= call!484971 (nullable!6006 (ite c!1072205 (regTwo!32535 (regOne!32534 r!7292)) (regTwo!32534 (regOne!32534 r!7292)))))))

(declare-fun b!6000567 () Bool)

(declare-fun e!3667654 () Bool)

(assert (=> b!6000567 (= e!3667653 e!3667654)))

(declare-fun res!2504395 () Bool)

(assert (=> b!6000567 (= res!2504395 call!484970)))

(assert (=> b!6000567 (=> res!2504395 e!3667654)))

(declare-fun b!6000568 () Bool)

(assert (=> b!6000568 (= e!3667654 call!484971)))

(declare-fun b!6000569 () Bool)

(assert (=> b!6000569 (= e!3667651 call!484971)))

(assert (= (and d!1881593 (not res!2504394)) b!6000563))

(assert (= (and b!6000563 res!2504393) b!6000564))

(assert (= (and b!6000564 (not res!2504397)) b!6000565))

(assert (= (and b!6000565 c!1072205) b!6000567))

(assert (= (and b!6000565 (not c!1072205)) b!6000566))

(assert (= (and b!6000567 (not res!2504395)) b!6000568))

(assert (= (and b!6000566 res!2504396) b!6000569))

(assert (= (or b!6000568 b!6000569) bm!484966))

(assert (= (or b!6000567 b!6000566) bm!484965))

(declare-fun m!6878778 () Bool)

(assert (=> bm!484965 m!6878778))

(declare-fun m!6878780 () Bool)

(assert (=> bm!484966 m!6878780))

(assert (=> d!1881109 d!1881593))

(declare-fun d!1881595 () Bool)

(assert (=> d!1881595 (= (isEmpty!36101 (exprs!5895 (h!70657 zl!343))) ((_ is Nil!64208) (exprs!5895 (h!70657 zl!343))))))

(assert (=> b!5999421 d!1881595))

(declare-fun bm!484967 () Bool)

(declare-fun call!484972 () (InoxSet Context!10790))

(declare-fun call!484974 () (InoxSet Context!10790))

(assert (=> bm!484967 (= call!484972 call!484974)))

(declare-fun b!6000571 () Bool)

(declare-fun c!1072207 () Bool)

(declare-fun e!3667658 () Bool)

(assert (=> b!6000571 (= c!1072207 e!3667658)))

(declare-fun res!2504398 () Bool)

(assert (=> b!6000571 (=> (not res!2504398) (not e!3667658))))

(assert (=> b!6000571 (= res!2504398 ((_ is Concat!24856) (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))))))

(declare-fun e!3667657 () (InoxSet Context!10790))

(declare-fun e!3667656 () (InoxSet Context!10790))

(assert (=> b!6000571 (= e!3667657 e!3667656)))

(declare-fun call!484975 () (InoxSet Context!10790))

(declare-fun c!1072209 () Bool)

(declare-fun bm!484968 () Bool)

(declare-fun call!484976 () List!64332)

(assert (=> bm!484968 (= call!484975 (derivationStepZipperDown!1261 (ite c!1072209 (regOne!32535 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))) (regOne!32534 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292))))) (ite c!1072209 (ite c!1071871 lt!2318656 (Context!10791 call!484698)) (Context!10791 call!484976)) (h!70658 s!2326)))))

(declare-fun b!6000572 () Bool)

(declare-fun e!3667661 () (InoxSet Context!10790))

(assert (=> b!6000572 (= e!3667661 call!484972)))

(declare-fun bm!484969 () Bool)

(declare-fun call!484977 () List!64332)

(assert (=> bm!484969 (= call!484977 call!484976)))

(declare-fun c!1072206 () Bool)

(declare-fun bm!484970 () Bool)

(assert (=> bm!484970 (= call!484976 ($colon$colon!1896 (exprs!5895 (ite c!1071871 lt!2318656 (Context!10791 call!484698))) (ite (or c!1072207 c!1072206) (regTwo!32534 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))) (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292))))))))

(declare-fun call!484973 () (InoxSet Context!10790))

(declare-fun bm!484971 () Bool)

(assert (=> bm!484971 (= call!484973 (derivationStepZipperDown!1261 (ite c!1072209 (regTwo!32535 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))) (ite c!1072207 (regTwo!32534 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))) (ite c!1072206 (regOne!32534 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))) (reg!16340 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292))))))) (ite (or c!1072209 c!1072207) (ite c!1071871 lt!2318656 (Context!10791 call!484698)) (Context!10791 call!484977)) (h!70658 s!2326)))))

(declare-fun b!6000573 () Bool)

(assert (=> b!6000573 (= e!3667657 ((_ map or) call!484975 call!484973))))

(declare-fun b!6000574 () Bool)

(declare-fun c!1072210 () Bool)

(assert (=> b!6000574 (= c!1072210 ((_ is Star!16011) (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))))))

(declare-fun e!3667660 () (InoxSet Context!10790))

(assert (=> b!6000574 (= e!3667661 e!3667660)))

(declare-fun bm!484972 () Bool)

(assert (=> bm!484972 (= call!484974 call!484973)))

(declare-fun b!6000575 () Bool)

(declare-fun e!3667659 () (InoxSet Context!10790))

(assert (=> b!6000575 (= e!3667659 e!3667657)))

(assert (=> b!6000575 (= c!1072209 ((_ is Union!16011) (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))))))

(declare-fun d!1881597 () Bool)

(declare-fun c!1072208 () Bool)

(assert (=> d!1881597 (= c!1072208 (and ((_ is ElementMatch!16011) (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))) (= (c!1071586 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))) (h!70658 s!2326))))))

(assert (=> d!1881597 (= (derivationStepZipperDown!1261 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292))) (ite c!1071871 lt!2318656 (Context!10791 call!484698)) (h!70658 s!2326)) e!3667659)))

(declare-fun b!6000570 () Bool)

(assert (=> b!6000570 (= e!3667660 call!484972)))

(declare-fun b!6000576 () Bool)

(assert (=> b!6000576 (= e!3667656 ((_ map or) call!484975 call!484974))))

(declare-fun b!6000577 () Bool)

(assert (=> b!6000577 (= e!3667660 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000578 () Bool)

(assert (=> b!6000578 (= e!3667659 (store ((as const (Array Context!10790 Bool)) false) (ite c!1071871 lt!2318656 (Context!10791 call!484698)) true))))

(declare-fun b!6000579 () Bool)

(assert (=> b!6000579 (= e!3667656 e!3667661)))

(assert (=> b!6000579 (= c!1072206 ((_ is Concat!24856) (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292)))))))

(declare-fun b!6000580 () Bool)

(assert (=> b!6000580 (= e!3667658 (nullable!6006 (regOne!32534 (ite c!1071871 (regOne!32535 (regTwo!32534 r!7292)) (regOne!32534 (regTwo!32534 r!7292))))))))

(assert (= (and d!1881597 c!1072208) b!6000578))

(assert (= (and d!1881597 (not c!1072208)) b!6000575))

(assert (= (and b!6000575 c!1072209) b!6000573))

(assert (= (and b!6000575 (not c!1072209)) b!6000571))

(assert (= (and b!6000571 res!2504398) b!6000580))

(assert (= (and b!6000571 c!1072207) b!6000576))

(assert (= (and b!6000571 (not c!1072207)) b!6000579))

(assert (= (and b!6000579 c!1072206) b!6000572))

(assert (= (and b!6000579 (not c!1072206)) b!6000574))

(assert (= (and b!6000574 c!1072210) b!6000570))

(assert (= (and b!6000574 (not c!1072210)) b!6000577))

(assert (= (or b!6000572 b!6000570) bm!484969))

(assert (= (or b!6000572 b!6000570) bm!484967))

(assert (= (or b!6000576 bm!484969) bm!484970))

(assert (= (or b!6000576 bm!484967) bm!484972))

(assert (= (or b!6000573 bm!484972) bm!484971))

(assert (= (or b!6000573 b!6000576) bm!484968))

(declare-fun m!6878782 () Bool)

(assert (=> b!6000580 m!6878782))

(declare-fun m!6878784 () Bool)

(assert (=> bm!484968 m!6878784))

(declare-fun m!6878786 () Bool)

(assert (=> b!6000578 m!6878786))

(declare-fun m!6878788 () Bool)

(assert (=> bm!484970 m!6878788))

(declare-fun m!6878790 () Bool)

(assert (=> bm!484971 m!6878790))

(assert (=> bm!484690 d!1881597))

(declare-fun d!1881599 () Bool)

(assert (=> d!1881599 (= (flatMap!1524 z!1189 lambda!327461) (choose!45004 z!1189 lambda!327461))))

(declare-fun bs!1454519 () Bool)

(assert (= bs!1454519 d!1881599))

(declare-fun m!6878792 () Bool)

(assert (=> bs!1454519 m!6878792))

(assert (=> d!1881081 d!1881599))

(declare-fun b!6000581 () Bool)

(declare-fun e!3667663 () Bool)

(assert (=> b!6000581 (= e!3667663 (nullable!6006 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))))))))

(declare-fun e!3667664 () (InoxSet Context!10790))

(declare-fun call!484978 () (InoxSet Context!10790))

(declare-fun b!6000582 () Bool)

(assert (=> b!6000582 (= e!3667664 ((_ map or) call!484978 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))))) (h!70658 s!2326))))))

(declare-fun bm!484973 () Bool)

(assert (=> bm!484973 (= call!484978 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))) (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))))) (h!70658 s!2326)))))

(declare-fun d!1881601 () Bool)

(declare-fun c!1072212 () Bool)

(assert (=> d!1881601 (= c!1072212 e!3667663)))

(declare-fun res!2504399 () Bool)

(assert (=> d!1881601 (=> (not res!2504399) (not e!3667663))))

(assert (=> d!1881601 (= res!2504399 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))))))

(assert (=> d!1881601 (= (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 lt!2318654))) (h!70658 s!2326)) e!3667664)))

(declare-fun b!6000583 () Bool)

(declare-fun e!3667662 () (InoxSet Context!10790))

(assert (=> b!6000583 (= e!3667664 e!3667662)))

(declare-fun c!1072211 () Bool)

(assert (=> b!6000583 (= c!1072211 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))))))

(declare-fun b!6000584 () Bool)

(assert (=> b!6000584 (= e!3667662 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000585 () Bool)

(assert (=> b!6000585 (= e!3667662 call!484978)))

(assert (= (and d!1881601 res!2504399) b!6000581))

(assert (= (and d!1881601 c!1072212) b!6000582))

(assert (= (and d!1881601 (not c!1072212)) b!6000583))

(assert (= (and b!6000583 c!1072211) b!6000585))

(assert (= (and b!6000583 (not c!1072211)) b!6000584))

(assert (= (or b!6000582 b!6000585) bm!484973))

(declare-fun m!6878794 () Bool)

(assert (=> b!6000581 m!6878794))

(declare-fun m!6878796 () Bool)

(assert (=> b!6000582 m!6878796))

(declare-fun m!6878798 () Bool)

(assert (=> bm!484973 m!6878798))

(assert (=> b!5999383 d!1881601))

(declare-fun b!6000587 () Bool)

(declare-fun e!3667670 () Bool)

(assert (=> b!6000587 (= e!3667670 (matchR!8194 (derivativeStep!4740 (regTwo!32534 r!7292) (head!12559 (_2!36293 (get!22127 lt!2318799)))) (tail!11644 (_2!36293 (get!22127 lt!2318799)))))))

(declare-fun b!6000588 () Bool)

(declare-fun e!3667669 () Bool)

(declare-fun e!3667671 () Bool)

(assert (=> b!6000588 (= e!3667669 e!3667671)))

(declare-fun res!2504404 () Bool)

(assert (=> b!6000588 (=> res!2504404 e!3667671)))

(declare-fun call!484979 () Bool)

(assert (=> b!6000588 (= res!2504404 call!484979)))

(declare-fun b!6000589 () Bool)

(declare-fun e!3667667 () Bool)

(declare-fun e!3667665 () Bool)

(assert (=> b!6000589 (= e!3667667 e!3667665)))

(declare-fun c!1072214 () Bool)

(assert (=> b!6000589 (= c!1072214 ((_ is EmptyLang!16011) (regTwo!32534 r!7292)))))

(declare-fun b!6000590 () Bool)

(declare-fun res!2504401 () Bool)

(declare-fun e!3667666 () Bool)

(assert (=> b!6000590 (=> (not res!2504401) (not e!3667666))))

(assert (=> b!6000590 (= res!2504401 (not call!484979))))

(declare-fun b!6000591 () Bool)

(declare-fun res!2504403 () Bool)

(declare-fun e!3667668 () Bool)

(assert (=> b!6000591 (=> res!2504403 e!3667668)))

(assert (=> b!6000591 (= res!2504403 e!3667666)))

(declare-fun res!2504407 () Bool)

(assert (=> b!6000591 (=> (not res!2504407) (not e!3667666))))

(declare-fun lt!2318964 () Bool)

(assert (=> b!6000591 (= res!2504407 lt!2318964)))

(declare-fun bm!484974 () Bool)

(assert (=> bm!484974 (= call!484979 (isEmpty!36106 (_2!36293 (get!22127 lt!2318799))))))

(declare-fun b!6000592 () Bool)

(assert (=> b!6000592 (= e!3667665 (not lt!2318964))))

(declare-fun b!6000593 () Bool)

(declare-fun res!2504402 () Bool)

(assert (=> b!6000593 (=> res!2504402 e!3667668)))

(assert (=> b!6000593 (= res!2504402 (not ((_ is ElementMatch!16011) (regTwo!32534 r!7292))))))

(assert (=> b!6000593 (= e!3667665 e!3667668)))

(declare-fun b!6000594 () Bool)

(declare-fun res!2504400 () Bool)

(assert (=> b!6000594 (=> (not res!2504400) (not e!3667666))))

(assert (=> b!6000594 (= res!2504400 (isEmpty!36106 (tail!11644 (_2!36293 (get!22127 lt!2318799)))))))

(declare-fun b!6000586 () Bool)

(assert (=> b!6000586 (= e!3667666 (= (head!12559 (_2!36293 (get!22127 lt!2318799))) (c!1071586 (regTwo!32534 r!7292))))))

(declare-fun d!1881603 () Bool)

(assert (=> d!1881603 e!3667667))

(declare-fun c!1072215 () Bool)

(assert (=> d!1881603 (= c!1072215 ((_ is EmptyExpr!16011) (regTwo!32534 r!7292)))))

(assert (=> d!1881603 (= lt!2318964 e!3667670)))

(declare-fun c!1072213 () Bool)

(assert (=> d!1881603 (= c!1072213 (isEmpty!36106 (_2!36293 (get!22127 lt!2318799))))))

(assert (=> d!1881603 (validRegex!7747 (regTwo!32534 r!7292))))

(assert (=> d!1881603 (= (matchR!8194 (regTwo!32534 r!7292) (_2!36293 (get!22127 lt!2318799))) lt!2318964)))

(declare-fun b!6000595 () Bool)

(assert (=> b!6000595 (= e!3667668 e!3667669)))

(declare-fun res!2504405 () Bool)

(assert (=> b!6000595 (=> (not res!2504405) (not e!3667669))))

(assert (=> b!6000595 (= res!2504405 (not lt!2318964))))

(declare-fun b!6000596 () Bool)

(assert (=> b!6000596 (= e!3667670 (nullable!6006 (regTwo!32534 r!7292)))))

(declare-fun b!6000597 () Bool)

(assert (=> b!6000597 (= e!3667671 (not (= (head!12559 (_2!36293 (get!22127 lt!2318799))) (c!1071586 (regTwo!32534 r!7292)))))))

(declare-fun b!6000598 () Bool)

(declare-fun res!2504406 () Bool)

(assert (=> b!6000598 (=> res!2504406 e!3667671)))

(assert (=> b!6000598 (= res!2504406 (not (isEmpty!36106 (tail!11644 (_2!36293 (get!22127 lt!2318799))))))))

(declare-fun b!6000599 () Bool)

(assert (=> b!6000599 (= e!3667667 (= lt!2318964 call!484979))))

(assert (= (and d!1881603 c!1072213) b!6000596))

(assert (= (and d!1881603 (not c!1072213)) b!6000587))

(assert (= (and d!1881603 c!1072215) b!6000599))

(assert (= (and d!1881603 (not c!1072215)) b!6000589))

(assert (= (and b!6000589 c!1072214) b!6000592))

(assert (= (and b!6000589 (not c!1072214)) b!6000593))

(assert (= (and b!6000593 (not res!2504402)) b!6000591))

(assert (= (and b!6000591 res!2504407) b!6000590))

(assert (= (and b!6000590 res!2504401) b!6000594))

(assert (= (and b!6000594 res!2504400) b!6000586))

(assert (= (and b!6000591 (not res!2504403)) b!6000595))

(assert (= (and b!6000595 res!2504405) b!6000588))

(assert (= (and b!6000588 (not res!2504404)) b!6000598))

(assert (= (and b!6000598 (not res!2504406)) b!6000597))

(assert (= (or b!6000599 b!6000588 b!6000590) bm!484974))

(declare-fun m!6878800 () Bool)

(assert (=> b!6000587 m!6878800))

(assert (=> b!6000587 m!6878800))

(declare-fun m!6878802 () Bool)

(assert (=> b!6000587 m!6878802))

(declare-fun m!6878804 () Bool)

(assert (=> b!6000587 m!6878804))

(assert (=> b!6000587 m!6878802))

(assert (=> b!6000587 m!6878804))

(declare-fun m!6878806 () Bool)

(assert (=> b!6000587 m!6878806))

(declare-fun m!6878808 () Bool)

(assert (=> d!1881603 m!6878808))

(declare-fun m!6878810 () Bool)

(assert (=> d!1881603 m!6878810))

(assert (=> b!6000594 m!6878804))

(assert (=> b!6000594 m!6878804))

(declare-fun m!6878812 () Bool)

(assert (=> b!6000594 m!6878812))

(assert (=> b!6000586 m!6878800))

(assert (=> b!6000597 m!6878800))

(assert (=> bm!484974 m!6878808))

(assert (=> b!6000598 m!6878804))

(assert (=> b!6000598 m!6878804))

(assert (=> b!6000598 m!6878812))

(declare-fun m!6878814 () Bool)

(assert (=> b!6000596 m!6878814))

(assert (=> b!5999062 d!1881603))

(declare-fun d!1881605 () Bool)

(assert (=> d!1881605 (= (get!22127 lt!2318799) (v!52012 lt!2318799))))

(assert (=> b!5999062 d!1881605))

(declare-fun d!1881607 () Bool)

(assert (=> d!1881607 (= (maxBigInt!0 (ite c!1071798 call!484664 call!484659) (ite c!1071798 call!484659 call!484664)) (ite (>= (ite c!1071798 call!484664 call!484659) (ite c!1071798 call!484659 call!484664)) (ite c!1071798 call!484664 call!484659) (ite c!1071798 call!484659 call!484664)))))

(assert (=> bm!484657 d!1881607))

(declare-fun d!1881609 () Bool)

(declare-fun res!2504412 () Bool)

(declare-fun e!3667676 () Bool)

(assert (=> d!1881609 (=> res!2504412 e!3667676)))

(assert (=> d!1881609 (= res!2504412 ((_ is Nil!64209) (Cons!64209 lt!2318655 Nil!64209)))))

(assert (=> d!1881609 (= (forall!15110 (Cons!64209 lt!2318655 Nil!64209) lambda!327443) e!3667676)))

(declare-fun b!6000604 () Bool)

(declare-fun e!3667677 () Bool)

(assert (=> b!6000604 (= e!3667676 e!3667677)))

(declare-fun res!2504413 () Bool)

(assert (=> b!6000604 (=> (not res!2504413) (not e!3667677))))

(declare-fun dynLambda!25173 (Int Context!10790) Bool)

(assert (=> b!6000604 (= res!2504413 (dynLambda!25173 lambda!327443 (h!70657 (Cons!64209 lt!2318655 Nil!64209))))))

(declare-fun b!6000605 () Bool)

(assert (=> b!6000605 (= e!3667677 (forall!15110 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lambda!327443))))

(assert (= (and d!1881609 (not res!2504412)) b!6000604))

(assert (= (and b!6000604 res!2504413) b!6000605))

(declare-fun b_lambda!226799 () Bool)

(assert (=> (not b_lambda!226799) (not b!6000604)))

(declare-fun m!6878816 () Bool)

(assert (=> b!6000604 m!6878816))

(declare-fun m!6878818 () Bool)

(assert (=> b!6000605 m!6878818))

(assert (=> b!5999089 d!1881609))

(declare-fun bs!1454520 () Bool)

(declare-fun b!6000610 () Bool)

(assert (= bs!1454520 (and b!6000610 d!1881027)))

(declare-fun lambda!327552 () Int)

(assert (=> bs!1454520 (not (= lambda!327552 lambda!327425))))

(declare-fun bs!1454521 () Bool)

(assert (= bs!1454521 (and b!6000610 b!5999340)))

(assert (=> bs!1454521 (not (= lambda!327552 lambda!327467))))

(declare-fun bs!1454522 () Bool)

(assert (= bs!1454522 (and b!6000610 b!5998489)))

(assert (=> bs!1454522 (not (= lambda!327552 lambda!327356))))

(declare-fun bs!1454523 () Bool)

(assert (= bs!1454523 (and b!6000610 d!1881029)))

(assert (=> bs!1454523 (not (= lambda!327552 lambda!327430))))

(declare-fun bs!1454524 () Bool)

(assert (= bs!1454524 (and b!6000610 b!5999339)))

(assert (=> bs!1454524 (= (and (= (reg!16340 (regTwo!32535 r!7292)) (reg!16340 r!7292)) (= (regTwo!32535 r!7292) r!7292)) (= lambda!327552 lambda!327466))))

(assert (=> bs!1454522 (not (= lambda!327552 lambda!327355))))

(assert (=> bs!1454523 (not (= lambda!327552 lambda!327431))))

(assert (=> b!6000610 true))

(assert (=> b!6000610 true))

(declare-fun bs!1454525 () Bool)

(declare-fun b!6000611 () Bool)

(assert (= bs!1454525 (and b!6000611 d!1881027)))

(declare-fun lambda!327553 () Int)

(assert (=> bs!1454525 (not (= lambda!327553 lambda!327425))))

(declare-fun bs!1454526 () Bool)

(assert (= bs!1454526 (and b!6000611 b!6000610)))

(assert (=> bs!1454526 (not (= lambda!327553 lambda!327552))))

(declare-fun bs!1454527 () Bool)

(assert (= bs!1454527 (and b!6000611 b!5999340)))

(assert (=> bs!1454527 (= (and (= (regOne!32534 (regTwo!32535 r!7292)) (regOne!32534 r!7292)) (= (regTwo!32534 (regTwo!32535 r!7292)) (regTwo!32534 r!7292))) (= lambda!327553 lambda!327467))))

(declare-fun bs!1454528 () Bool)

(assert (= bs!1454528 (and b!6000611 b!5998489)))

(assert (=> bs!1454528 (= (and (= (regOne!32534 (regTwo!32535 r!7292)) (regOne!32534 r!7292)) (= (regTwo!32534 (regTwo!32535 r!7292)) (regTwo!32534 r!7292))) (= lambda!327553 lambda!327356))))

(declare-fun bs!1454529 () Bool)

(assert (= bs!1454529 (and b!6000611 d!1881029)))

(assert (=> bs!1454529 (not (= lambda!327553 lambda!327430))))

(declare-fun bs!1454530 () Bool)

(assert (= bs!1454530 (and b!6000611 b!5999339)))

(assert (=> bs!1454530 (not (= lambda!327553 lambda!327466))))

(assert (=> bs!1454528 (not (= lambda!327553 lambda!327355))))

(assert (=> bs!1454529 (= (and (= (regOne!32534 (regTwo!32535 r!7292)) (regOne!32534 r!7292)) (= (regTwo!32534 (regTwo!32535 r!7292)) (regTwo!32534 r!7292))) (= lambda!327553 lambda!327431))))

(assert (=> b!6000611 true))

(assert (=> b!6000611 true))

(declare-fun b!6000606 () Bool)

(declare-fun e!3667682 () Bool)

(assert (=> b!6000606 (= e!3667682 (matchRSpec!3112 (regTwo!32535 (regTwo!32535 r!7292)) s!2326))))

(declare-fun b!6000607 () Bool)

(declare-fun e!3667683 () Bool)

(declare-fun call!484980 () Bool)

(assert (=> b!6000607 (= e!3667683 call!484980)))

(declare-fun b!6000608 () Bool)

(declare-fun c!1072216 () Bool)

(assert (=> b!6000608 (= c!1072216 ((_ is Union!16011) (regTwo!32535 r!7292)))))

(declare-fun e!3667678 () Bool)

(declare-fun e!3667684 () Bool)

(assert (=> b!6000608 (= e!3667678 e!3667684)))

(declare-fun b!6000609 () Bool)

(declare-fun e!3667679 () Bool)

(assert (=> b!6000609 (= e!3667683 e!3667679)))

(declare-fun res!2504416 () Bool)

(assert (=> b!6000609 (= res!2504416 (not ((_ is EmptyLang!16011) (regTwo!32535 r!7292))))))

(assert (=> b!6000609 (=> (not res!2504416) (not e!3667679))))

(declare-fun e!3667680 () Bool)

(declare-fun call!484981 () Bool)

(assert (=> b!6000610 (= e!3667680 call!484981)))

(declare-fun bm!484975 () Bool)

(assert (=> bm!484975 (= call!484980 (isEmpty!36106 s!2326))))

(declare-fun c!1072217 () Bool)

(declare-fun bm!484976 () Bool)

(assert (=> bm!484976 (= call!484981 (Exists!3081 (ite c!1072217 lambda!327552 lambda!327553)))))

(declare-fun e!3667681 () Bool)

(assert (=> b!6000611 (= e!3667681 call!484981)))

(declare-fun d!1881611 () Bool)

(declare-fun c!1072219 () Bool)

(assert (=> d!1881611 (= c!1072219 ((_ is EmptyExpr!16011) (regTwo!32535 r!7292)))))

(assert (=> d!1881611 (= (matchRSpec!3112 (regTwo!32535 r!7292) s!2326) e!3667683)))

(declare-fun b!6000612 () Bool)

(declare-fun res!2504415 () Bool)

(assert (=> b!6000612 (=> res!2504415 e!3667680)))

(assert (=> b!6000612 (= res!2504415 call!484980)))

(assert (=> b!6000612 (= e!3667681 e!3667680)))

(declare-fun b!6000613 () Bool)

(assert (=> b!6000613 (= e!3667684 e!3667681)))

(assert (=> b!6000613 (= c!1072217 ((_ is Star!16011) (regTwo!32535 r!7292)))))

(declare-fun b!6000614 () Bool)

(assert (=> b!6000614 (= e!3667678 (= s!2326 (Cons!64210 (c!1071586 (regTwo!32535 r!7292)) Nil!64210)))))

(declare-fun b!6000615 () Bool)

(assert (=> b!6000615 (= e!3667684 e!3667682)))

(declare-fun res!2504414 () Bool)

(assert (=> b!6000615 (= res!2504414 (matchRSpec!3112 (regOne!32535 (regTwo!32535 r!7292)) s!2326))))

(assert (=> b!6000615 (=> res!2504414 e!3667682)))

(declare-fun b!6000616 () Bool)

(declare-fun c!1072218 () Bool)

(assert (=> b!6000616 (= c!1072218 ((_ is ElementMatch!16011) (regTwo!32535 r!7292)))))

(assert (=> b!6000616 (= e!3667679 e!3667678)))

(assert (= (and d!1881611 c!1072219) b!6000607))

(assert (= (and d!1881611 (not c!1072219)) b!6000609))

(assert (= (and b!6000609 res!2504416) b!6000616))

(assert (= (and b!6000616 c!1072218) b!6000614))

(assert (= (and b!6000616 (not c!1072218)) b!6000608))

(assert (= (and b!6000608 c!1072216) b!6000615))

(assert (= (and b!6000608 (not c!1072216)) b!6000613))

(assert (= (and b!6000615 (not res!2504414)) b!6000606))

(assert (= (and b!6000613 c!1072217) b!6000612))

(assert (= (and b!6000613 (not c!1072217)) b!6000611))

(assert (= (and b!6000612 (not res!2504415)) b!6000610))

(assert (= (or b!6000610 b!6000611) bm!484976))

(assert (= (or b!6000607 b!6000612) bm!484975))

(declare-fun m!6878820 () Bool)

(assert (=> b!6000606 m!6878820))

(assert (=> bm!484975 m!6877520))

(declare-fun m!6878822 () Bool)

(assert (=> bm!484976 m!6878822))

(declare-fun m!6878824 () Bool)

(assert (=> b!6000615 m!6878824))

(assert (=> b!5999335 d!1881611))

(assert (=> b!5999358 d!1881591))

(assert (=> b!5999358 d!1881565))

(declare-fun d!1881613 () Bool)

(declare-fun res!2504417 () Bool)

(declare-fun e!3667685 () Bool)

(assert (=> d!1881613 (=> res!2504417 e!3667685)))

(assert (=> d!1881613 (= res!2504417 ((_ is Nil!64208) (exprs!5895 lt!2318663)))))

(assert (=> d!1881613 (= (forall!15109 (exprs!5895 lt!2318663) lambda!327449) e!3667685)))

(declare-fun b!6000617 () Bool)

(declare-fun e!3667686 () Bool)

(assert (=> b!6000617 (= e!3667685 e!3667686)))

(declare-fun res!2504418 () Bool)

(assert (=> b!6000617 (=> (not res!2504418) (not e!3667686))))

(assert (=> b!6000617 (= res!2504418 (dynLambda!25172 lambda!327449 (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun b!6000618 () Bool)

(assert (=> b!6000618 (= e!3667686 (forall!15109 (t!377753 (exprs!5895 lt!2318663)) lambda!327449))))

(assert (= (and d!1881613 (not res!2504417)) b!6000617))

(assert (= (and b!6000617 res!2504418) b!6000618))

(declare-fun b_lambda!226801 () Bool)

(assert (=> (not b_lambda!226801) (not b!6000617)))

(declare-fun m!6878826 () Bool)

(assert (=> b!6000617 m!6878826))

(declare-fun m!6878828 () Bool)

(assert (=> b!6000618 m!6878828))

(assert (=> d!1881045 d!1881613))

(declare-fun d!1881615 () Bool)

(declare-fun res!2504419 () Bool)

(declare-fun e!3667687 () Bool)

(assert (=> d!1881615 (=> res!2504419 e!3667687)))

(assert (=> d!1881615 (= res!2504419 ((_ is Nil!64208) (exprs!5895 (h!70657 zl!343))))))

(assert (=> d!1881615 (= (forall!15109 (exprs!5895 (h!70657 zl!343)) lambda!327472) e!3667687)))

(declare-fun b!6000619 () Bool)

(declare-fun e!3667688 () Bool)

(assert (=> b!6000619 (= e!3667687 e!3667688)))

(declare-fun res!2504420 () Bool)

(assert (=> b!6000619 (=> (not res!2504420) (not e!3667688))))

(assert (=> b!6000619 (= res!2504420 (dynLambda!25172 lambda!327472 (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!6000620 () Bool)

(assert (=> b!6000620 (= e!3667688 (forall!15109 (t!377753 (exprs!5895 (h!70657 zl!343))) lambda!327472))))

(assert (= (and d!1881615 (not res!2504419)) b!6000619))

(assert (= (and b!6000619 res!2504420) b!6000620))

(declare-fun b_lambda!226803 () Bool)

(assert (=> (not b_lambda!226803) (not b!6000619)))

(declare-fun m!6878830 () Bool)

(assert (=> b!6000619 m!6878830))

(declare-fun m!6878832 () Bool)

(assert (=> b!6000620 m!6878832))

(assert (=> d!1881093 d!1881615))

(declare-fun d!1881617 () Bool)

(declare-fun c!1072220 () Bool)

(assert (=> d!1881617 (= c!1072220 (isEmpty!36106 (tail!11644 s!2326)))))

(declare-fun e!3667689 () Bool)

(assert (=> d!1881617 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318668 (head!12559 s!2326)) (tail!11644 s!2326)) e!3667689)))

(declare-fun b!6000621 () Bool)

(assert (=> b!6000621 (= e!3667689 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318668 (head!12559 s!2326))))))

(declare-fun b!6000622 () Bool)

(assert (=> b!6000622 (= e!3667689 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318668 (head!12559 s!2326)) (head!12559 (tail!11644 s!2326))) (tail!11644 (tail!11644 s!2326))))))

(assert (= (and d!1881617 c!1072220) b!6000621))

(assert (= (and d!1881617 (not c!1072220)) b!6000622))

(assert (=> d!1881617 m!6877516))

(assert (=> d!1881617 m!6877524))

(assert (=> b!6000621 m!6877532))

(declare-fun m!6878834 () Bool)

(assert (=> b!6000621 m!6878834))

(assert (=> b!6000622 m!6877516))

(assert (=> b!6000622 m!6878698))

(assert (=> b!6000622 m!6877532))

(assert (=> b!6000622 m!6878698))

(declare-fun m!6878836 () Bool)

(assert (=> b!6000622 m!6878836))

(assert (=> b!6000622 m!6877516))

(assert (=> b!6000622 m!6878702))

(assert (=> b!6000622 m!6878836))

(assert (=> b!6000622 m!6878702))

(declare-fun m!6878838 () Bool)

(assert (=> b!6000622 m!6878838))

(assert (=> b!5999211 d!1881617))

(declare-fun bs!1454531 () Bool)

(declare-fun d!1881619 () Bool)

(assert (= bs!1454531 (and d!1881619 d!1881537)))

(declare-fun lambda!327554 () Int)

(assert (=> bs!1454531 (= (= (head!12559 s!2326) (head!12559 (t!377755 s!2326))) (= lambda!327554 lambda!327546))))

(declare-fun bs!1454532 () Bool)

(assert (= bs!1454532 (and d!1881619 b!5998487)))

(assert (=> bs!1454532 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327554 lambda!327357))))

(declare-fun bs!1454533 () Bool)

(assert (= bs!1454533 (and d!1881619 d!1881067)))

(assert (=> bs!1454533 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327554 lambda!327453))))

(declare-fun bs!1454534 () Bool)

(assert (= bs!1454534 (and d!1881619 d!1881081)))

(assert (=> bs!1454534 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327554 lambda!327461))))

(declare-fun bs!1454535 () Bool)

(assert (= bs!1454535 (and d!1881619 d!1881055)))

(assert (=> bs!1454535 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327554 lambda!327452))))

(assert (=> d!1881619 true))

(assert (=> d!1881619 (= (derivationStepZipper!1992 lt!2318668 (head!12559 s!2326)) (flatMap!1524 lt!2318668 lambda!327554))))

(declare-fun bs!1454536 () Bool)

(assert (= bs!1454536 d!1881619))

(declare-fun m!6878840 () Bool)

(assert (=> bs!1454536 m!6878840))

(assert (=> b!5999211 d!1881619))

(assert (=> b!5999211 d!1881545))

(assert (=> b!5999211 d!1881565))

(declare-fun d!1881621 () Bool)

(assert (=> d!1881621 (= (isEmptyExpr!1436 lt!2318869) ((_ is EmptyExpr!16011) lt!2318869))))

(assert (=> b!5999425 d!1881621))

(declare-fun d!1881623 () Bool)

(assert (=> d!1881623 (= ($colon$colon!1896 (exprs!5895 lt!2318663) (ite (or c!1071878 c!1071877) (regTwo!32534 (regOne!32534 r!7292)) (regOne!32534 r!7292))) (Cons!64208 (ite (or c!1071878 c!1071877) (regTwo!32534 (regOne!32534 r!7292)) (regOne!32534 r!7292)) (exprs!5895 lt!2318663)))))

(assert (=> bm!484700 d!1881623))

(assert (=> b!5999346 d!1881545))

(declare-fun c!1072223 () Bool)

(declare-fun b!6000623 () Bool)

(assert (=> b!6000623 (= c!1072223 ((_ is Star!16011) (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(declare-fun e!3667690 () Bool)

(declare-fun e!3667694 () Bool)

(assert (=> b!6000623 (= e!3667690 e!3667694)))

(declare-fun c!1072227 () Bool)

(declare-fun b!6000624 () Bool)

(assert (=> b!6000624 (= c!1072227 ((_ is Union!16011) (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(declare-fun e!3667691 () Int)

(declare-fun e!3667697 () Int)

(assert (=> b!6000624 (= e!3667691 e!3667697)))

(declare-fun b!6000625 () Bool)

(declare-fun e!3667698 () Bool)

(declare-fun lt!2318965 () Int)

(declare-fun call!484986 () Int)

(assert (=> b!6000625 (= e!3667698 (> lt!2318965 call!484986))))

(declare-fun b!6000626 () Bool)

(declare-fun e!3667695 () Bool)

(assert (=> b!6000626 (= e!3667695 e!3667698)))

(declare-fun res!2504421 () Bool)

(declare-fun call!484987 () Int)

(assert (=> b!6000626 (= res!2504421 (> lt!2318965 call!484987))))

(assert (=> b!6000626 (=> (not res!2504421) (not e!3667698))))

(declare-fun b!6000627 () Bool)

(declare-fun e!3667696 () Int)

(assert (=> b!6000627 (= e!3667696 1)))

(declare-fun bm!484977 () Bool)

(declare-fun c!1072221 () Bool)

(declare-fun call!484984 () Int)

(assert (=> bm!484977 (= call!484984 (regexDepth!268 (ite c!1072221 (reg!16340 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))) (ite c!1072227 (regTwo!32535 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))) (regOne!32534 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683))))))))))

(declare-fun b!6000628 () Bool)

(declare-fun res!2504422 () Bool)

(declare-fun e!3667692 () Bool)

(assert (=> b!6000628 (=> (not res!2504422) (not e!3667692))))

(declare-fun call!484982 () Int)

(assert (=> b!6000628 (= res!2504422 (> lt!2318965 call!484982))))

(assert (=> b!6000628 (= e!3667690 e!3667692)))

(declare-fun bm!484978 () Bool)

(declare-fun call!484983 () Int)

(assert (=> bm!484978 (= call!484983 call!484984)))

(declare-fun bm!484979 () Bool)

(assert (=> bm!484979 (= call!484982 call!484987)))

(declare-fun call!484988 () Int)

(declare-fun bm!484980 () Bool)

(assert (=> bm!484980 (= call!484988 (regexDepth!268 (ite c!1072227 (regOne!32535 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))) (regTwo!32534 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))))

(declare-fun call!484985 () Int)

(declare-fun bm!484981 () Bool)

(assert (=> bm!484981 (= call!484985 (maxBigInt!0 (ite c!1072227 call!484988 call!484983) (ite c!1072227 call!484983 call!484988)))))

(declare-fun b!6000629 () Bool)

(assert (=> b!6000629 (= e!3667696 (+ 1 call!484985))))

(declare-fun c!1072224 () Bool)

(declare-fun bm!484982 () Bool)

(assert (=> bm!484982 (= call!484986 (regexDepth!268 (ite c!1072224 (regTwo!32535 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))) (regTwo!32534 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))))

(declare-fun b!6000630 () Bool)

(declare-fun e!3667693 () Int)

(assert (=> b!6000630 (= e!3667693 1)))

(declare-fun b!6000631 () Bool)

(assert (=> b!6000631 (= e!3667697 e!3667696)))

(declare-fun c!1072222 () Bool)

(assert (=> b!6000631 (= c!1072222 ((_ is Concat!24856) (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(declare-fun d!1881625 () Bool)

(declare-fun e!3667699 () Bool)

(assert (=> d!1881625 e!3667699))

(declare-fun res!2504423 () Bool)

(assert (=> d!1881625 (=> (not res!2504423) (not e!3667699))))

(assert (=> d!1881625 (= res!2504423 (> lt!2318965 0))))

(assert (=> d!1881625 (= lt!2318965 e!3667693)))

(declare-fun c!1072226 () Bool)

(assert (=> d!1881625 (= c!1072226 ((_ is ElementMatch!16011) (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(assert (=> d!1881625 (= (regexDepth!268 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))) lt!2318965)))

(declare-fun b!6000632 () Bool)

(assert (=> b!6000632 (= e!3667692 (> lt!2318965 call!484986))))

(declare-fun b!6000633 () Bool)

(assert (=> b!6000633 (= e!3667695 e!3667690)))

(declare-fun c!1072225 () Bool)

(assert (=> b!6000633 (= c!1072225 ((_ is Concat!24856) (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(declare-fun b!6000634 () Bool)

(assert (=> b!6000634 (= e!3667694 (> lt!2318965 call!484982))))

(declare-fun b!6000635 () Bool)

(assert (=> b!6000635 (= e!3667697 (+ 1 call!484985))))

(declare-fun b!6000636 () Bool)

(assert (=> b!6000636 (= e!3667699 e!3667695)))

(assert (=> b!6000636 (= c!1072224 ((_ is Union!16011) (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(declare-fun b!6000637 () Bool)

(assert (=> b!6000637 (= e!3667694 (= lt!2318965 1))))

(declare-fun b!6000638 () Bool)

(assert (=> b!6000638 (= e!3667691 (+ 1 call!484984))))

(declare-fun bm!484983 () Bool)

(assert (=> bm!484983 (= call!484987 (regexDepth!268 (ite c!1072224 (regOne!32535 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))) (ite c!1072225 (regOne!32534 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))) (reg!16340 (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683))))))))))

(declare-fun b!6000639 () Bool)

(assert (=> b!6000639 (= e!3667693 e!3667691)))

(assert (=> b!6000639 (= c!1072221 ((_ is Star!16011) (ite c!1071792 (reg!16340 lt!2318683) (ite c!1071798 (regTwo!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(assert (= (and d!1881625 c!1072226) b!6000630))

(assert (= (and d!1881625 (not c!1072226)) b!6000639))

(assert (= (and b!6000639 c!1072221) b!6000638))

(assert (= (and b!6000639 (not c!1072221)) b!6000624))

(assert (= (and b!6000624 c!1072227) b!6000635))

(assert (= (and b!6000624 (not c!1072227)) b!6000631))

(assert (= (and b!6000631 c!1072222) b!6000629))

(assert (= (and b!6000631 (not c!1072222)) b!6000627))

(assert (= (or b!6000635 b!6000629) bm!484978))

(assert (= (or b!6000635 b!6000629) bm!484980))

(assert (= (or b!6000635 b!6000629) bm!484981))

(assert (= (or b!6000638 bm!484978) bm!484977))

(assert (= (and d!1881625 res!2504423) b!6000636))

(assert (= (and b!6000636 c!1072224) b!6000626))

(assert (= (and b!6000636 (not c!1072224)) b!6000633))

(assert (= (and b!6000626 res!2504421) b!6000625))

(assert (= (and b!6000633 c!1072225) b!6000628))

(assert (= (and b!6000633 (not c!1072225)) b!6000623))

(assert (= (and b!6000628 res!2504422) b!6000632))

(assert (= (and b!6000623 c!1072223) b!6000634))

(assert (= (and b!6000623 (not c!1072223)) b!6000637))

(assert (= (or b!6000628 b!6000634) bm!484979))

(assert (= (or b!6000625 b!6000632) bm!484982))

(assert (= (or b!6000626 bm!484979) bm!484983))

(declare-fun m!6878842 () Bool)

(assert (=> bm!484980 m!6878842))

(declare-fun m!6878844 () Bool)

(assert (=> bm!484981 m!6878844))

(declare-fun m!6878846 () Bool)

(assert (=> bm!484977 m!6878846))

(declare-fun m!6878848 () Bool)

(assert (=> bm!484983 m!6878848))

(declare-fun m!6878850 () Bool)

(assert (=> bm!484982 m!6878850))

(assert (=> bm!484653 d!1881625))

(declare-fun b!6000641 () Bool)

(declare-fun e!3667705 () Bool)

(assert (=> b!6000641 (= e!3667705 (matchR!8194 (derivativeStep!4740 (regOne!32534 r!7292) (head!12559 (_1!36293 (get!22127 lt!2318799)))) (tail!11644 (_1!36293 (get!22127 lt!2318799)))))))

(declare-fun b!6000642 () Bool)

(declare-fun e!3667704 () Bool)

(declare-fun e!3667706 () Bool)

(assert (=> b!6000642 (= e!3667704 e!3667706)))

(declare-fun res!2504428 () Bool)

(assert (=> b!6000642 (=> res!2504428 e!3667706)))

(declare-fun call!484989 () Bool)

(assert (=> b!6000642 (= res!2504428 call!484989)))

(declare-fun b!6000643 () Bool)

(declare-fun e!3667702 () Bool)

(declare-fun e!3667700 () Bool)

(assert (=> b!6000643 (= e!3667702 e!3667700)))

(declare-fun c!1072229 () Bool)

(assert (=> b!6000643 (= c!1072229 ((_ is EmptyLang!16011) (regOne!32534 r!7292)))))

(declare-fun b!6000644 () Bool)

(declare-fun res!2504425 () Bool)

(declare-fun e!3667701 () Bool)

(assert (=> b!6000644 (=> (not res!2504425) (not e!3667701))))

(assert (=> b!6000644 (= res!2504425 (not call!484989))))

(declare-fun b!6000645 () Bool)

(declare-fun res!2504427 () Bool)

(declare-fun e!3667703 () Bool)

(assert (=> b!6000645 (=> res!2504427 e!3667703)))

(assert (=> b!6000645 (= res!2504427 e!3667701)))

(declare-fun res!2504431 () Bool)

(assert (=> b!6000645 (=> (not res!2504431) (not e!3667701))))

(declare-fun lt!2318966 () Bool)

(assert (=> b!6000645 (= res!2504431 lt!2318966)))

(declare-fun bm!484984 () Bool)

(assert (=> bm!484984 (= call!484989 (isEmpty!36106 (_1!36293 (get!22127 lt!2318799))))))

(declare-fun b!6000646 () Bool)

(assert (=> b!6000646 (= e!3667700 (not lt!2318966))))

(declare-fun b!6000647 () Bool)

(declare-fun res!2504426 () Bool)

(assert (=> b!6000647 (=> res!2504426 e!3667703)))

(assert (=> b!6000647 (= res!2504426 (not ((_ is ElementMatch!16011) (regOne!32534 r!7292))))))

(assert (=> b!6000647 (= e!3667700 e!3667703)))

(declare-fun b!6000648 () Bool)

(declare-fun res!2504424 () Bool)

(assert (=> b!6000648 (=> (not res!2504424) (not e!3667701))))

(assert (=> b!6000648 (= res!2504424 (isEmpty!36106 (tail!11644 (_1!36293 (get!22127 lt!2318799)))))))

(declare-fun b!6000640 () Bool)

(assert (=> b!6000640 (= e!3667701 (= (head!12559 (_1!36293 (get!22127 lt!2318799))) (c!1071586 (regOne!32534 r!7292))))))

(declare-fun d!1881627 () Bool)

(assert (=> d!1881627 e!3667702))

(declare-fun c!1072230 () Bool)

(assert (=> d!1881627 (= c!1072230 ((_ is EmptyExpr!16011) (regOne!32534 r!7292)))))

(assert (=> d!1881627 (= lt!2318966 e!3667705)))

(declare-fun c!1072228 () Bool)

(assert (=> d!1881627 (= c!1072228 (isEmpty!36106 (_1!36293 (get!22127 lt!2318799))))))

(assert (=> d!1881627 (validRegex!7747 (regOne!32534 r!7292))))

(assert (=> d!1881627 (= (matchR!8194 (regOne!32534 r!7292) (_1!36293 (get!22127 lt!2318799))) lt!2318966)))

(declare-fun b!6000649 () Bool)

(assert (=> b!6000649 (= e!3667703 e!3667704)))

(declare-fun res!2504429 () Bool)

(assert (=> b!6000649 (=> (not res!2504429) (not e!3667704))))

(assert (=> b!6000649 (= res!2504429 (not lt!2318966))))

(declare-fun b!6000650 () Bool)

(assert (=> b!6000650 (= e!3667705 (nullable!6006 (regOne!32534 r!7292)))))

(declare-fun b!6000651 () Bool)

(assert (=> b!6000651 (= e!3667706 (not (= (head!12559 (_1!36293 (get!22127 lt!2318799))) (c!1071586 (regOne!32534 r!7292)))))))

(declare-fun b!6000652 () Bool)

(declare-fun res!2504430 () Bool)

(assert (=> b!6000652 (=> res!2504430 e!3667706)))

(assert (=> b!6000652 (= res!2504430 (not (isEmpty!36106 (tail!11644 (_1!36293 (get!22127 lt!2318799))))))))

(declare-fun b!6000653 () Bool)

(assert (=> b!6000653 (= e!3667702 (= lt!2318966 call!484989))))

(assert (= (and d!1881627 c!1072228) b!6000650))

(assert (= (and d!1881627 (not c!1072228)) b!6000641))

(assert (= (and d!1881627 c!1072230) b!6000653))

(assert (= (and d!1881627 (not c!1072230)) b!6000643))

(assert (= (and b!6000643 c!1072229) b!6000646))

(assert (= (and b!6000643 (not c!1072229)) b!6000647))

(assert (= (and b!6000647 (not res!2504426)) b!6000645))

(assert (= (and b!6000645 res!2504431) b!6000644))

(assert (= (and b!6000644 res!2504425) b!6000648))

(assert (= (and b!6000648 res!2504424) b!6000640))

(assert (= (and b!6000645 (not res!2504427)) b!6000649))

(assert (= (and b!6000649 res!2504429) b!6000642))

(assert (= (and b!6000642 (not res!2504428)) b!6000652))

(assert (= (and b!6000652 (not res!2504430)) b!6000651))

(assert (= (or b!6000653 b!6000642 b!6000644) bm!484984))

(declare-fun m!6878852 () Bool)

(assert (=> b!6000641 m!6878852))

(assert (=> b!6000641 m!6878852))

(declare-fun m!6878854 () Bool)

(assert (=> b!6000641 m!6878854))

(declare-fun m!6878856 () Bool)

(assert (=> b!6000641 m!6878856))

(assert (=> b!6000641 m!6878854))

(assert (=> b!6000641 m!6878856))

(declare-fun m!6878858 () Bool)

(assert (=> b!6000641 m!6878858))

(declare-fun m!6878860 () Bool)

(assert (=> d!1881627 m!6878860))

(assert (=> d!1881627 m!6877420))

(assert (=> b!6000648 m!6878856))

(assert (=> b!6000648 m!6878856))

(declare-fun m!6878862 () Bool)

(assert (=> b!6000648 m!6878862))

(assert (=> b!6000640 m!6878852))

(assert (=> b!6000651 m!6878852))

(assert (=> bm!484984 m!6878860))

(assert (=> b!6000652 m!6878856))

(assert (=> b!6000652 m!6878856))

(assert (=> b!6000652 m!6878862))

(assert (=> b!6000650 m!6876984))

(assert (=> b!5999057 d!1881627))

(assert (=> b!5999057 d!1881605))

(declare-fun bs!1454537 () Bool)

(declare-fun d!1881629 () Bool)

(assert (= bs!1454537 (and d!1881629 d!1881529)))

(declare-fun lambda!327555 () Int)

(assert (=> bs!1454537 (= lambda!327555 lambda!327545)))

(declare-fun bs!1454538 () Bool)

(assert (= bs!1454538 (and d!1881629 b!5999084)))

(assert (=> bs!1454538 (not (= lambda!327555 lambda!327440))))

(declare-fun bs!1454539 () Bool)

(assert (= bs!1454539 (and d!1881629 b!5999089)))

(assert (=> bs!1454539 (not (= lambda!327555 lambda!327443))))

(declare-fun bs!1454540 () Bool)

(assert (= bs!1454540 (and d!1881629 b!5999082)))

(assert (=> bs!1454540 (not (= lambda!327555 lambda!327439))))

(declare-fun bs!1454541 () Bool)

(assert (= bs!1454541 (and d!1881629 b!5999092)))

(assert (=> bs!1454541 (not (= lambda!327555 lambda!327446))))

(declare-fun bs!1454542 () Bool)

(assert (= bs!1454542 (and d!1881629 b!5999087)))

(assert (=> bs!1454542 (not (= lambda!327555 lambda!327442))))

(declare-fun bs!1454543 () Bool)

(assert (= bs!1454543 (and d!1881629 b!5999090)))

(assert (=> bs!1454543 (not (= lambda!327555 lambda!327445))))

(assert (=> d!1881629 (= (nullableZipper!1816 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326))) (exists!2372 (derivationStepZipper!1992 lt!2318668 (h!70658 s!2326)) lambda!327555))))

(declare-fun bs!1454544 () Bool)

(assert (= bs!1454544 d!1881629))

(assert (=> bs!1454544 m!6877002))

(declare-fun m!6878864 () Bool)

(assert (=> bs!1454544 m!6878864))

(assert (=> b!5999212 d!1881629))

(assert (=> d!1881049 d!1881047))

(assert (=> d!1881049 d!1881069))

(declare-fun d!1881631 () Bool)

(assert (=> d!1881631 (= (matchR!8194 lt!2318683 s!2326) (matchZipper!2047 lt!2318676 s!2326))))

(assert (=> d!1881631 true))

(declare-fun _$44!1484 () Unit!157293)

(assert (=> d!1881631 (= (choose!45012 lt!2318676 lt!2318664 lt!2318683 s!2326) _$44!1484)))

(declare-fun bs!1454545 () Bool)

(assert (= bs!1454545 d!1881631))

(assert (=> bs!1454545 m!6876916))

(assert (=> bs!1454545 m!6876932))

(assert (=> d!1881049 d!1881631))

(declare-fun bm!484985 () Bool)

(declare-fun call!484991 () Bool)

(declare-fun call!484990 () Bool)

(assert (=> bm!484985 (= call!484991 call!484990)))

(declare-fun bm!484986 () Bool)

(declare-fun call!484992 () Bool)

(declare-fun c!1072231 () Bool)

(assert (=> bm!484986 (= call!484992 (validRegex!7747 (ite c!1072231 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun b!6000654 () Bool)

(declare-fun res!2504436 () Bool)

(declare-fun e!3667707 () Bool)

(assert (=> b!6000654 (=> (not res!2504436) (not e!3667707))))

(assert (=> b!6000654 (= res!2504436 call!484991)))

(declare-fun e!3667713 () Bool)

(assert (=> b!6000654 (= e!3667713 e!3667707)))

(declare-fun b!6000655 () Bool)

(declare-fun e!3667711 () Bool)

(assert (=> b!6000655 (= e!3667711 e!3667713)))

(assert (=> b!6000655 (= c!1072231 ((_ is Union!16011) lt!2318683))))

(declare-fun b!6000657 () Bool)

(declare-fun e!3667709 () Bool)

(assert (=> b!6000657 (= e!3667711 e!3667709)))

(declare-fun res!2504435 () Bool)

(assert (=> b!6000657 (= res!2504435 (not (nullable!6006 (reg!16340 lt!2318683))))))

(assert (=> b!6000657 (=> (not res!2504435) (not e!3667709))))

(declare-fun b!6000658 () Bool)

(declare-fun res!2504434 () Bool)

(declare-fun e!3667710 () Bool)

(assert (=> b!6000658 (=> res!2504434 e!3667710)))

(assert (=> b!6000658 (= res!2504434 (not ((_ is Concat!24856) lt!2318683)))))

(assert (=> b!6000658 (= e!3667713 e!3667710)))

(declare-fun b!6000659 () Bool)

(declare-fun e!3667712 () Bool)

(assert (=> b!6000659 (= e!3667712 e!3667711)))

(declare-fun c!1072232 () Bool)

(assert (=> b!6000659 (= c!1072232 ((_ is Star!16011) lt!2318683))))

(declare-fun bm!484987 () Bool)

(assert (=> bm!484987 (= call!484990 (validRegex!7747 (ite c!1072232 (reg!16340 lt!2318683) (ite c!1072231 (regOne!32535 lt!2318683) (regOne!32534 lt!2318683)))))))

(declare-fun b!6000660 () Bool)

(assert (=> b!6000660 (= e!3667707 call!484992)))

(declare-fun b!6000661 () Bool)

(declare-fun e!3667708 () Bool)

(assert (=> b!6000661 (= e!3667708 call!484992)))

(declare-fun b!6000662 () Bool)

(assert (=> b!6000662 (= e!3667709 call!484990)))

(declare-fun b!6000656 () Bool)

(assert (=> b!6000656 (= e!3667710 e!3667708)))

(declare-fun res!2504433 () Bool)

(assert (=> b!6000656 (=> (not res!2504433) (not e!3667708))))

(assert (=> b!6000656 (= res!2504433 call!484991)))

(declare-fun d!1881633 () Bool)

(declare-fun res!2504432 () Bool)

(assert (=> d!1881633 (=> res!2504432 e!3667712)))

(assert (=> d!1881633 (= res!2504432 ((_ is ElementMatch!16011) lt!2318683))))

(assert (=> d!1881633 (= (validRegex!7747 lt!2318683) e!3667712)))

(assert (= (and d!1881633 (not res!2504432)) b!6000659))

(assert (= (and b!6000659 c!1072232) b!6000657))

(assert (= (and b!6000659 (not c!1072232)) b!6000655))

(assert (= (and b!6000657 res!2504435) b!6000662))

(assert (= (and b!6000655 c!1072231) b!6000654))

(assert (= (and b!6000655 (not c!1072231)) b!6000658))

(assert (= (and b!6000654 res!2504436) b!6000660))

(assert (= (and b!6000658 (not res!2504434)) b!6000656))

(assert (= (and b!6000656 res!2504433) b!6000661))

(assert (= (or b!6000660 b!6000661) bm!484986))

(assert (= (or b!6000654 b!6000656) bm!484985))

(assert (= (or b!6000662 bm!484985) bm!484987))

(declare-fun m!6878866 () Bool)

(assert (=> bm!484986 m!6878866))

(declare-fun m!6878868 () Bool)

(assert (=> b!6000657 m!6878868))

(declare-fun m!6878870 () Bool)

(assert (=> bm!484987 m!6878870))

(assert (=> d!1881049 d!1881633))

(declare-fun d!1881635 () Bool)

(assert (=> d!1881635 (= (nullable!6006 lt!2318683) (nullableFct!1976 lt!2318683))))

(declare-fun bs!1454546 () Bool)

(assert (= bs!1454546 d!1881635))

(declare-fun m!6878872 () Bool)

(assert (=> bs!1454546 m!6878872))

(assert (=> b!5999202 d!1881635))

(declare-fun d!1881637 () Bool)

(assert (=> d!1881637 (= (nullable!6006 (h!70656 (exprs!5895 lt!2318655))) (nullableFct!1976 (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun bs!1454547 () Bool)

(assert (= bs!1454547 d!1881637))

(declare-fun m!6878874 () Bool)

(assert (=> bs!1454547 m!6878874))

(assert (=> b!5999298 d!1881637))

(declare-fun b!6000663 () Bool)

(declare-fun c!1072235 () Bool)

(assert (=> b!6000663 (= c!1072235 ((_ is Star!16011) (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun e!3667714 () Bool)

(declare-fun e!3667718 () Bool)

(assert (=> b!6000663 (= e!3667714 e!3667718)))

(declare-fun b!6000664 () Bool)

(declare-fun c!1072239 () Bool)

(assert (=> b!6000664 (= c!1072239 ((_ is Union!16011) (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun e!3667715 () Int)

(declare-fun e!3667721 () Int)

(assert (=> b!6000664 (= e!3667715 e!3667721)))

(declare-fun b!6000665 () Bool)

(declare-fun e!3667722 () Bool)

(declare-fun lt!2318967 () Int)

(declare-fun call!484997 () Int)

(assert (=> b!6000665 (= e!3667722 (> lt!2318967 call!484997))))

(declare-fun b!6000666 () Bool)

(declare-fun e!3667719 () Bool)

(assert (=> b!6000666 (= e!3667719 e!3667722)))

(declare-fun res!2504437 () Bool)

(declare-fun call!484998 () Int)

(assert (=> b!6000666 (= res!2504437 (> lt!2318967 call!484998))))

(assert (=> b!6000666 (=> (not res!2504437) (not e!3667722))))

(declare-fun b!6000667 () Bool)

(declare-fun e!3667720 () Int)

(assert (=> b!6000667 (= e!3667720 1)))

(declare-fun call!484995 () Int)

(declare-fun bm!484988 () Bool)

(declare-fun c!1072233 () Bool)

(assert (=> bm!484988 (= call!484995 (regexDepth!268 (ite c!1072233 (reg!16340 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))) (ite c!1072239 (regTwo!32535 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))) (regOne!32534 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683)))))))))

(declare-fun b!6000668 () Bool)

(declare-fun res!2504438 () Bool)

(declare-fun e!3667716 () Bool)

(assert (=> b!6000668 (=> (not res!2504438) (not e!3667716))))

(declare-fun call!484993 () Int)

(assert (=> b!6000668 (= res!2504438 (> lt!2318967 call!484993))))

(assert (=> b!6000668 (= e!3667714 e!3667716)))

(declare-fun bm!484989 () Bool)

(declare-fun call!484994 () Int)

(assert (=> bm!484989 (= call!484994 call!484995)))

(declare-fun bm!484990 () Bool)

(assert (=> bm!484990 (= call!484993 call!484998)))

(declare-fun call!484999 () Int)

(declare-fun bm!484991 () Bool)

(assert (=> bm!484991 (= call!484999 (regexDepth!268 (ite c!1072239 (regOne!32535 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))) (regTwo!32534 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))))

(declare-fun call!484996 () Int)

(declare-fun bm!484992 () Bool)

(assert (=> bm!484992 (= call!484996 (maxBigInt!0 (ite c!1072239 call!484999 call!484994) (ite c!1072239 call!484994 call!484999)))))

(declare-fun b!6000669 () Bool)

(assert (=> b!6000669 (= e!3667720 (+ 1 call!484996))))

(declare-fun c!1072236 () Bool)

(declare-fun bm!484993 () Bool)

(assert (=> bm!484993 (= call!484997 (regexDepth!268 (ite c!1072236 (regTwo!32535 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))) (regTwo!32534 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))))

(declare-fun b!6000670 () Bool)

(declare-fun e!3667717 () Int)

(assert (=> b!6000670 (= e!3667717 1)))

(declare-fun b!6000671 () Bool)

(assert (=> b!6000671 (= e!3667721 e!3667720)))

(declare-fun c!1072234 () Bool)

(assert (=> b!6000671 (= c!1072234 ((_ is Concat!24856) (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun d!1881639 () Bool)

(declare-fun e!3667723 () Bool)

(assert (=> d!1881639 e!3667723))

(declare-fun res!2504439 () Bool)

(assert (=> d!1881639 (=> (not res!2504439) (not e!3667723))))

(assert (=> d!1881639 (= res!2504439 (> lt!2318967 0))))

(assert (=> d!1881639 (= lt!2318967 e!3667717)))

(declare-fun c!1072238 () Bool)

(assert (=> d!1881639 (= c!1072238 ((_ is ElementMatch!16011) (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(assert (=> d!1881639 (= (regexDepth!268 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))) lt!2318967)))

(declare-fun b!6000672 () Bool)

(assert (=> b!6000672 (= e!3667716 (> lt!2318967 call!484997))))

(declare-fun b!6000673 () Bool)

(assert (=> b!6000673 (= e!3667719 e!3667714)))

(declare-fun c!1072237 () Bool)

(assert (=> b!6000673 (= c!1072237 ((_ is Concat!24856) (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun b!6000674 () Bool)

(assert (=> b!6000674 (= e!3667718 (> lt!2318967 call!484993))))

(declare-fun b!6000675 () Bool)

(assert (=> b!6000675 (= e!3667721 (+ 1 call!484996))))

(declare-fun b!6000676 () Bool)

(assert (=> b!6000676 (= e!3667723 e!3667719)))

(assert (=> b!6000676 (= c!1072236 ((_ is Union!16011) (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun b!6000677 () Bool)

(assert (=> b!6000677 (= e!3667718 (= lt!2318967 1))))

(declare-fun b!6000678 () Bool)

(assert (=> b!6000678 (= e!3667715 (+ 1 call!484995))))

(declare-fun bm!484994 () Bool)

(assert (=> bm!484994 (= call!484998 (regexDepth!268 (ite c!1072236 (regOne!32535 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))) (ite c!1072237 (regOne!32534 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))) (reg!16340 (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683)))))))))

(declare-fun b!6000679 () Bool)

(assert (=> b!6000679 (= e!3667717 e!3667715)))

(assert (=> b!6000679 (= c!1072233 ((_ is Star!16011) (ite c!1071798 (regOne!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(assert (= (and d!1881639 c!1072238) b!6000670))

(assert (= (and d!1881639 (not c!1072238)) b!6000679))

(assert (= (and b!6000679 c!1072233) b!6000678))

(assert (= (and b!6000679 (not c!1072233)) b!6000664))

(assert (= (and b!6000664 c!1072239) b!6000675))

(assert (= (and b!6000664 (not c!1072239)) b!6000671))

(assert (= (and b!6000671 c!1072234) b!6000669))

(assert (= (and b!6000671 (not c!1072234)) b!6000667))

(assert (= (or b!6000675 b!6000669) bm!484989))

(assert (= (or b!6000675 b!6000669) bm!484991))

(assert (= (or b!6000675 b!6000669) bm!484992))

(assert (= (or b!6000678 bm!484989) bm!484988))

(assert (= (and d!1881639 res!2504439) b!6000676))

(assert (= (and b!6000676 c!1072236) b!6000666))

(assert (= (and b!6000676 (not c!1072236)) b!6000673))

(assert (= (and b!6000666 res!2504437) b!6000665))

(assert (= (and b!6000673 c!1072237) b!6000668))

(assert (= (and b!6000673 (not c!1072237)) b!6000663))

(assert (= (and b!6000668 res!2504438) b!6000672))

(assert (= (and b!6000663 c!1072235) b!6000674))

(assert (= (and b!6000663 (not c!1072235)) b!6000677))

(assert (= (or b!6000668 b!6000674) bm!484990))

(assert (= (or b!6000665 b!6000672) bm!484993))

(assert (= (or b!6000666 bm!484990) bm!484994))

(declare-fun m!6878876 () Bool)

(assert (=> bm!484991 m!6878876))

(declare-fun m!6878878 () Bool)

(assert (=> bm!484992 m!6878878))

(declare-fun m!6878880 () Bool)

(assert (=> bm!484988 m!6878880))

(declare-fun m!6878882 () Bool)

(assert (=> bm!484994 m!6878882))

(declare-fun m!6878884 () Bool)

(assert (=> bm!484993 m!6878884))

(assert (=> bm!484656 d!1881639))

(assert (=> d!1881111 d!1881097))

(declare-fun d!1881641 () Bool)

(assert (=> d!1881641 (= (flatMap!1524 lt!2318668 lambda!327357) (dynLambda!25167 lambda!327357 lt!2318663))))

(assert (=> d!1881641 true))

(declare-fun _$13!2809 () Unit!157293)

(assert (=> d!1881641 (= (choose!45005 lt!2318668 lt!2318663 lambda!327357) _$13!2809)))

(declare-fun b_lambda!226805 () Bool)

(assert (=> (not b_lambda!226805) (not d!1881641)))

(declare-fun bs!1454548 () Bool)

(assert (= bs!1454548 d!1881641))

(assert (=> bs!1454548 m!6876982))

(assert (=> bs!1454548 m!6877706))

(assert (=> d!1881111 d!1881641))

(declare-fun b!6000681 () Bool)

(declare-fun e!3667729 () Bool)

(assert (=> b!6000681 (= e!3667729 (matchR!8194 (derivativeStep!4740 (regTwo!32534 r!7292) (head!12559 s!2326)) (tail!11644 s!2326)))))

(declare-fun b!6000682 () Bool)

(declare-fun e!3667728 () Bool)

(declare-fun e!3667730 () Bool)

(assert (=> b!6000682 (= e!3667728 e!3667730)))

(declare-fun res!2504444 () Bool)

(assert (=> b!6000682 (=> res!2504444 e!3667730)))

(declare-fun call!485000 () Bool)

(assert (=> b!6000682 (= res!2504444 call!485000)))

(declare-fun b!6000683 () Bool)

(declare-fun e!3667726 () Bool)

(declare-fun e!3667724 () Bool)

(assert (=> b!6000683 (= e!3667726 e!3667724)))

(declare-fun c!1072241 () Bool)

(assert (=> b!6000683 (= c!1072241 ((_ is EmptyLang!16011) (regTwo!32534 r!7292)))))

(declare-fun b!6000684 () Bool)

(declare-fun res!2504441 () Bool)

(declare-fun e!3667725 () Bool)

(assert (=> b!6000684 (=> (not res!2504441) (not e!3667725))))

(assert (=> b!6000684 (= res!2504441 (not call!485000))))

(declare-fun b!6000685 () Bool)

(declare-fun res!2504443 () Bool)

(declare-fun e!3667727 () Bool)

(assert (=> b!6000685 (=> res!2504443 e!3667727)))

(assert (=> b!6000685 (= res!2504443 e!3667725)))

(declare-fun res!2504447 () Bool)

(assert (=> b!6000685 (=> (not res!2504447) (not e!3667725))))

(declare-fun lt!2318968 () Bool)

(assert (=> b!6000685 (= res!2504447 lt!2318968)))

(declare-fun bm!484995 () Bool)

(assert (=> bm!484995 (= call!485000 (isEmpty!36106 s!2326))))

(declare-fun b!6000686 () Bool)

(assert (=> b!6000686 (= e!3667724 (not lt!2318968))))

(declare-fun b!6000687 () Bool)

(declare-fun res!2504442 () Bool)

(assert (=> b!6000687 (=> res!2504442 e!3667727)))

(assert (=> b!6000687 (= res!2504442 (not ((_ is ElementMatch!16011) (regTwo!32534 r!7292))))))

(assert (=> b!6000687 (= e!3667724 e!3667727)))

(declare-fun b!6000688 () Bool)

(declare-fun res!2504440 () Bool)

(assert (=> b!6000688 (=> (not res!2504440) (not e!3667725))))

(assert (=> b!6000688 (= res!2504440 (isEmpty!36106 (tail!11644 s!2326)))))

(declare-fun b!6000680 () Bool)

(assert (=> b!6000680 (= e!3667725 (= (head!12559 s!2326) (c!1071586 (regTwo!32534 r!7292))))))

(declare-fun d!1881643 () Bool)

(assert (=> d!1881643 e!3667726))

(declare-fun c!1072242 () Bool)

(assert (=> d!1881643 (= c!1072242 ((_ is EmptyExpr!16011) (regTwo!32534 r!7292)))))

(assert (=> d!1881643 (= lt!2318968 e!3667729)))

(declare-fun c!1072240 () Bool)

(assert (=> d!1881643 (= c!1072240 (isEmpty!36106 s!2326))))

(assert (=> d!1881643 (validRegex!7747 (regTwo!32534 r!7292))))

(assert (=> d!1881643 (= (matchR!8194 (regTwo!32534 r!7292) s!2326) lt!2318968)))

(declare-fun b!6000689 () Bool)

(assert (=> b!6000689 (= e!3667727 e!3667728)))

(declare-fun res!2504445 () Bool)

(assert (=> b!6000689 (=> (not res!2504445) (not e!3667728))))

(assert (=> b!6000689 (= res!2504445 (not lt!2318968))))

(declare-fun b!6000690 () Bool)

(assert (=> b!6000690 (= e!3667729 (nullable!6006 (regTwo!32534 r!7292)))))

(declare-fun b!6000691 () Bool)

(assert (=> b!6000691 (= e!3667730 (not (= (head!12559 s!2326) (c!1071586 (regTwo!32534 r!7292)))))))

(declare-fun b!6000692 () Bool)

(declare-fun res!2504446 () Bool)

(assert (=> b!6000692 (=> res!2504446 e!3667730)))

(assert (=> b!6000692 (= res!2504446 (not (isEmpty!36106 (tail!11644 s!2326))))))

(declare-fun b!6000693 () Bool)

(assert (=> b!6000693 (= e!3667726 (= lt!2318968 call!485000))))

(assert (= (and d!1881643 c!1072240) b!6000690))

(assert (= (and d!1881643 (not c!1072240)) b!6000681))

(assert (= (and d!1881643 c!1072242) b!6000693))

(assert (= (and d!1881643 (not c!1072242)) b!6000683))

(assert (= (and b!6000683 c!1072241) b!6000686))

(assert (= (and b!6000683 (not c!1072241)) b!6000687))

(assert (= (and b!6000687 (not res!2504442)) b!6000685))

(assert (= (and b!6000685 res!2504447) b!6000684))

(assert (= (and b!6000684 res!2504441) b!6000688))

(assert (= (and b!6000688 res!2504440) b!6000680))

(assert (= (and b!6000685 (not res!2504443)) b!6000689))

(assert (= (and b!6000689 res!2504445) b!6000682))

(assert (= (and b!6000682 (not res!2504444)) b!6000692))

(assert (= (and b!6000692 (not res!2504446)) b!6000691))

(assert (= (or b!6000693 b!6000682 b!6000684) bm!484995))

(assert (=> b!6000681 m!6877512))

(assert (=> b!6000681 m!6877512))

(declare-fun m!6878886 () Bool)

(assert (=> b!6000681 m!6878886))

(assert (=> b!6000681 m!6877516))

(assert (=> b!6000681 m!6878886))

(assert (=> b!6000681 m!6877516))

(declare-fun m!6878888 () Bool)

(assert (=> b!6000681 m!6878888))

(assert (=> d!1881643 m!6877520))

(assert (=> d!1881643 m!6878810))

(assert (=> b!6000688 m!6877516))

(assert (=> b!6000688 m!6877516))

(assert (=> b!6000688 m!6877524))

(assert (=> b!6000680 m!6877512))

(assert (=> b!6000691 m!6877512))

(assert (=> bm!484995 m!6877520))

(assert (=> b!6000692 m!6877516))

(assert (=> b!6000692 m!6877516))

(assert (=> b!6000692 m!6877524))

(assert (=> b!6000690 m!6878814))

(assert (=> b!5999061 d!1881643))

(declare-fun d!1881645 () Bool)

(assert (=> d!1881645 (= (nullable!6006 (h!70656 (exprs!5895 lt!2318654))) (nullableFct!1976 (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun bs!1454549 () Bool)

(assert (= bs!1454549 d!1881645))

(declare-fun m!6878890 () Bool)

(assert (=> bs!1454549 m!6878890))

(assert (=> b!5999382 d!1881645))

(assert (=> bs!1453622 d!1881099))

(declare-fun d!1881647 () Bool)

(assert (=> d!1881647 (= (Exists!3081 lambda!327430) (choose!45008 lambda!327430))))

(declare-fun bs!1454550 () Bool)

(assert (= bs!1454550 d!1881647))

(declare-fun m!6878892 () Bool)

(assert (=> bs!1454550 m!6878892))

(assert (=> d!1881029 d!1881647))

(declare-fun d!1881649 () Bool)

(assert (=> d!1881649 (= (Exists!3081 lambda!327431) (choose!45008 lambda!327431))))

(declare-fun bs!1454551 () Bool)

(assert (= bs!1454551 d!1881649))

(declare-fun m!6878894 () Bool)

(assert (=> bs!1454551 m!6878894))

(assert (=> d!1881029 d!1881649))

(declare-fun bs!1454552 () Bool)

(declare-fun d!1881651 () Bool)

(assert (= bs!1454552 (and d!1881651 d!1881027)))

(declare-fun lambda!327560 () Int)

(assert (=> bs!1454552 (= lambda!327560 lambda!327425)))

(declare-fun bs!1454553 () Bool)

(assert (= bs!1454553 (and d!1881651 b!6000610)))

(assert (=> bs!1454553 (not (= lambda!327560 lambda!327552))))

(declare-fun bs!1454554 () Bool)

(assert (= bs!1454554 (and d!1881651 b!5999340)))

(assert (=> bs!1454554 (not (= lambda!327560 lambda!327467))))

(declare-fun bs!1454555 () Bool)

(assert (= bs!1454555 (and d!1881651 b!5998489)))

(assert (=> bs!1454555 (not (= lambda!327560 lambda!327356))))

(declare-fun bs!1454556 () Bool)

(assert (= bs!1454556 (and d!1881651 b!6000611)))

(assert (=> bs!1454556 (not (= lambda!327560 lambda!327553))))

(declare-fun bs!1454557 () Bool)

(assert (= bs!1454557 (and d!1881651 d!1881029)))

(assert (=> bs!1454557 (= lambda!327560 lambda!327430)))

(declare-fun bs!1454558 () Bool)

(assert (= bs!1454558 (and d!1881651 b!5999339)))

(assert (=> bs!1454558 (not (= lambda!327560 lambda!327466))))

(assert (=> bs!1454555 (= lambda!327560 lambda!327355)))

(assert (=> bs!1454557 (not (= lambda!327560 lambda!327431))))

(assert (=> d!1881651 true))

(assert (=> d!1881651 true))

(assert (=> d!1881651 true))

(declare-fun lambda!327561 () Int)

(assert (=> bs!1454552 (not (= lambda!327561 lambda!327425))))

(assert (=> bs!1454553 (not (= lambda!327561 lambda!327552))))

(assert (=> bs!1454554 (= lambda!327561 lambda!327467)))

(assert (=> bs!1454555 (= lambda!327561 lambda!327356)))

(assert (=> bs!1454556 (= (and (= (regOne!32534 r!7292) (regOne!32534 (regTwo!32535 r!7292))) (= (regTwo!32534 r!7292) (regTwo!32534 (regTwo!32535 r!7292)))) (= lambda!327561 lambda!327553))))

(declare-fun bs!1454559 () Bool)

(assert (= bs!1454559 d!1881651))

(assert (=> bs!1454559 (not (= lambda!327561 lambda!327560))))

(assert (=> bs!1454557 (not (= lambda!327561 lambda!327430))))

(assert (=> bs!1454558 (not (= lambda!327561 lambda!327466))))

(assert (=> bs!1454555 (not (= lambda!327561 lambda!327355))))

(assert (=> bs!1454557 (= lambda!327561 lambda!327431)))

(assert (=> d!1881651 true))

(assert (=> d!1881651 true))

(assert (=> d!1881651 true))

(assert (=> d!1881651 (= (Exists!3081 lambda!327560) (Exists!3081 lambda!327561))))

(assert (=> d!1881651 true))

(declare-fun _$90!1680 () Unit!157293)

(assert (=> d!1881651 (= (choose!45010 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326) _$90!1680)))

(declare-fun m!6878896 () Bool)

(assert (=> bs!1454559 m!6878896))

(declare-fun m!6878898 () Bool)

(assert (=> bs!1454559 m!6878898))

(assert (=> d!1881029 d!1881651))

(assert (=> d!1881029 d!1881583))

(declare-fun c!1072245 () Bool)

(declare-fun b!6000702 () Bool)

(assert (=> b!6000702 (= c!1072245 ((_ is Star!16011) (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(declare-fun e!3667735 () Bool)

(declare-fun e!3667739 () Bool)

(assert (=> b!6000702 (= e!3667735 e!3667739)))

(declare-fun b!6000703 () Bool)

(declare-fun c!1072249 () Bool)

(assert (=> b!6000703 (= c!1072249 ((_ is Union!16011) (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(declare-fun e!3667736 () Int)

(declare-fun e!3667742 () Int)

(assert (=> b!6000703 (= e!3667736 e!3667742)))

(declare-fun b!6000704 () Bool)

(declare-fun e!3667743 () Bool)

(declare-fun lt!2318969 () Int)

(declare-fun call!485005 () Int)

(assert (=> b!6000704 (= e!3667743 (> lt!2318969 call!485005))))

(declare-fun b!6000705 () Bool)

(declare-fun e!3667740 () Bool)

(assert (=> b!6000705 (= e!3667740 e!3667743)))

(declare-fun res!2504456 () Bool)

(declare-fun call!485006 () Int)

(assert (=> b!6000705 (= res!2504456 (> lt!2318969 call!485006))))

(assert (=> b!6000705 (=> (not res!2504456) (not e!3667743))))

(declare-fun b!6000706 () Bool)

(declare-fun e!3667741 () Int)

(assert (=> b!6000706 (= e!3667741 1)))

(declare-fun bm!484996 () Bool)

(declare-fun call!485003 () Int)

(declare-fun c!1072243 () Bool)

(assert (=> bm!484996 (= call!485003 (regexDepth!268 (ite c!1072243 (reg!16340 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))) (ite c!1072249 (regTwo!32535 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))) (regOne!32534 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683))))))))))

(declare-fun b!6000707 () Bool)

(declare-fun res!2504457 () Bool)

(declare-fun e!3667737 () Bool)

(assert (=> b!6000707 (=> (not res!2504457) (not e!3667737))))

(declare-fun call!485001 () Int)

(assert (=> b!6000707 (= res!2504457 (> lt!2318969 call!485001))))

(assert (=> b!6000707 (= e!3667735 e!3667737)))

(declare-fun bm!484997 () Bool)

(declare-fun call!485002 () Int)

(assert (=> bm!484997 (= call!485002 call!485003)))

(declare-fun bm!484998 () Bool)

(assert (=> bm!484998 (= call!485001 call!485006)))

(declare-fun call!485007 () Int)

(declare-fun bm!484999 () Bool)

(assert (=> bm!484999 (= call!485007 (regexDepth!268 (ite c!1072249 (regOne!32535 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))) (regTwo!32534 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))))

(declare-fun bm!485000 () Bool)

(declare-fun call!485004 () Int)

(assert (=> bm!485000 (= call!485004 (maxBigInt!0 (ite c!1072249 call!485007 call!485002) (ite c!1072249 call!485002 call!485007)))))

(declare-fun b!6000708 () Bool)

(assert (=> b!6000708 (= e!3667741 (+ 1 call!485004))))

(declare-fun bm!485001 () Bool)

(declare-fun c!1072246 () Bool)

(assert (=> bm!485001 (= call!485005 (regexDepth!268 (ite c!1072246 (regTwo!32535 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))) (regTwo!32534 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))))

(declare-fun b!6000709 () Bool)

(declare-fun e!3667738 () Int)

(assert (=> b!6000709 (= e!3667738 1)))

(declare-fun b!6000710 () Bool)

(assert (=> b!6000710 (= e!3667742 e!3667741)))

(declare-fun c!1072244 () Bool)

(assert (=> b!6000710 (= c!1072244 ((_ is Concat!24856) (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(declare-fun d!1881653 () Bool)

(declare-fun e!3667744 () Bool)

(assert (=> d!1881653 e!3667744))

(declare-fun res!2504458 () Bool)

(assert (=> d!1881653 (=> (not res!2504458) (not e!3667744))))

(assert (=> d!1881653 (= res!2504458 (> lt!2318969 0))))

(assert (=> d!1881653 (= lt!2318969 e!3667738)))

(declare-fun c!1072248 () Bool)

(assert (=> d!1881653 (= c!1072248 ((_ is ElementMatch!16011) (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(assert (=> d!1881653 (= (regexDepth!268 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))) lt!2318969)))

(declare-fun b!6000711 () Bool)

(assert (=> b!6000711 (= e!3667737 (> lt!2318969 call!485005))))

(declare-fun b!6000712 () Bool)

(assert (=> b!6000712 (= e!3667740 e!3667735)))

(declare-fun c!1072247 () Bool)

(assert (=> b!6000712 (= c!1072247 ((_ is Concat!24856) (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(declare-fun b!6000713 () Bool)

(assert (=> b!6000713 (= e!3667739 (> lt!2318969 call!485001))))

(declare-fun b!6000714 () Bool)

(assert (=> b!6000714 (= e!3667742 (+ 1 call!485004))))

(declare-fun b!6000715 () Bool)

(assert (=> b!6000715 (= e!3667744 e!3667740)))

(assert (=> b!6000715 (= c!1072246 ((_ is Union!16011) (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(declare-fun b!6000716 () Bool)

(assert (=> b!6000716 (= e!3667739 (= lt!2318969 1))))

(declare-fun b!6000717 () Bool)

(assert (=> b!6000717 (= e!3667736 (+ 1 call!485003))))

(declare-fun bm!485002 () Bool)

(assert (=> bm!485002 (= call!485006 (regexDepth!268 (ite c!1072246 (regOne!32535 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))) (ite c!1072247 (regOne!32534 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))) (reg!16340 (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683))))))))))

(declare-fun b!6000718 () Bool)

(assert (=> b!6000718 (= e!3667738 e!3667736)))

(assert (=> b!6000718 (= c!1072243 ((_ is Star!16011) (ite c!1071795 (regOne!32535 lt!2318683) (ite c!1071796 (regOne!32534 lt!2318683) (reg!16340 lt!2318683)))))))

(assert (= (and d!1881653 c!1072248) b!6000709))

(assert (= (and d!1881653 (not c!1072248)) b!6000718))

(assert (= (and b!6000718 c!1072243) b!6000717))

(assert (= (and b!6000718 (not c!1072243)) b!6000703))

(assert (= (and b!6000703 c!1072249) b!6000714))

(assert (= (and b!6000703 (not c!1072249)) b!6000710))

(assert (= (and b!6000710 c!1072244) b!6000708))

(assert (= (and b!6000710 (not c!1072244)) b!6000706))

(assert (= (or b!6000714 b!6000708) bm!484997))

(assert (= (or b!6000714 b!6000708) bm!484999))

(assert (= (or b!6000714 b!6000708) bm!485000))

(assert (= (or b!6000717 bm!484997) bm!484996))

(assert (= (and d!1881653 res!2504458) b!6000715))

(assert (= (and b!6000715 c!1072246) b!6000705))

(assert (= (and b!6000715 (not c!1072246)) b!6000712))

(assert (= (and b!6000705 res!2504456) b!6000704))

(assert (= (and b!6000712 c!1072247) b!6000707))

(assert (= (and b!6000712 (not c!1072247)) b!6000702))

(assert (= (and b!6000707 res!2504457) b!6000711))

(assert (= (and b!6000702 c!1072245) b!6000713))

(assert (= (and b!6000702 (not c!1072245)) b!6000716))

(assert (= (or b!6000707 b!6000713) bm!484998))

(assert (= (or b!6000704 b!6000711) bm!485001))

(assert (= (or b!6000705 bm!484998) bm!485002))

(declare-fun m!6878900 () Bool)

(assert (=> bm!484999 m!6878900))

(declare-fun m!6878902 () Bool)

(assert (=> bm!485000 m!6878902))

(declare-fun m!6878904 () Bool)

(assert (=> bm!484996 m!6878904))

(declare-fun m!6878906 () Bool)

(assert (=> bm!485002 m!6878906))

(declare-fun m!6878908 () Bool)

(assert (=> bm!485001 m!6878908))

(assert (=> bm!484659 d!1881653))

(declare-fun d!1881655 () Bool)

(declare-fun res!2504459 () Bool)

(declare-fun e!3667745 () Bool)

(assert (=> d!1881655 (=> res!2504459 e!3667745)))

(assert (=> d!1881655 (= res!2504459 ((_ is Nil!64209) lt!2318664))))

(assert (=> d!1881655 (= (forall!15110 lt!2318664 lambda!327446) e!3667745)))

(declare-fun b!6000719 () Bool)

(declare-fun e!3667746 () Bool)

(assert (=> b!6000719 (= e!3667745 e!3667746)))

(declare-fun res!2504460 () Bool)

(assert (=> b!6000719 (=> (not res!2504460) (not e!3667746))))

(assert (=> b!6000719 (= res!2504460 (dynLambda!25173 lambda!327446 (h!70657 lt!2318664)))))

(declare-fun b!6000720 () Bool)

(assert (=> b!6000720 (= e!3667746 (forall!15110 (t!377754 lt!2318664) lambda!327446))))

(assert (= (and d!1881655 (not res!2504459)) b!6000719))

(assert (= (and b!6000719 res!2504460) b!6000720))

(declare-fun b_lambda!226807 () Bool)

(assert (=> (not b_lambda!226807) (not b!6000719)))

(declare-fun m!6878910 () Bool)

(assert (=> b!6000719 m!6878910))

(declare-fun m!6878912 () Bool)

(assert (=> b!6000720 m!6878912))

(assert (=> b!5999092 d!1881655))

(assert (=> b!5999263 d!1881117))

(declare-fun bs!1454560 () Bool)

(declare-fun d!1881657 () Bool)

(assert (= bs!1454560 (and d!1881657 b!5999365)))

(declare-fun lambda!327562 () Int)

(assert (=> bs!1454560 (not (= lambda!327562 lambda!327471))))

(declare-fun bs!1454561 () Bool)

(assert (= bs!1454561 (and d!1881657 b!5999017)))

(assert (=> bs!1454561 (not (= lambda!327562 lambda!327421))))

(declare-fun bs!1454562 () Bool)

(assert (= bs!1454562 (and d!1881657 d!1881073)))

(assert (=> bs!1454562 (= lambda!327562 lambda!327459)))

(declare-fun bs!1454563 () Bool)

(assert (= bs!1454563 (and d!1881657 b!5999362)))

(assert (=> bs!1454563 (not (= lambda!327562 lambda!327469))))

(declare-fun bs!1454564 () Bool)

(assert (= bs!1454564 (and d!1881657 b!5999360)))

(assert (=> bs!1454564 (not (= lambda!327562 lambda!327468))))

(declare-fun bs!1454565 () Bool)

(assert (= bs!1454565 (and d!1881657 b!5999019)))

(assert (=> bs!1454565 (not (= lambda!327562 lambda!327422))))

(declare-fun bs!1454566 () Bool)

(assert (= bs!1454566 (and d!1881657 d!1881093)))

(assert (=> bs!1454566 (= lambda!327562 lambda!327472)))

(declare-fun bs!1454567 () Bool)

(assert (= bs!1454567 (and d!1881657 b!6000494)))

(assert (=> bs!1454567 (not (= lambda!327562 lambda!327547))))

(declare-fun bs!1454568 () Bool)

(assert (= bs!1454568 (and d!1881657 d!1881071)))

(assert (=> bs!1454568 (= lambda!327562 lambda!327456)))

(declare-fun bs!1454569 () Bool)

(assert (= bs!1454569 (and d!1881657 b!5999363)))

(assert (=> bs!1454569 (not (= lambda!327562 lambda!327470))))

(declare-fun bs!1454570 () Bool)

(assert (= bs!1454570 (and d!1881657 d!1881577)))

(assert (=> bs!1454570 (not (= lambda!327562 lambda!327551))))

(declare-fun bs!1454571 () Bool)

(assert (= bs!1454571 (and d!1881657 d!1881117)))

(assert (=> bs!1454571 (= lambda!327562 lambda!327475)))

(declare-fun bs!1454572 () Bool)

(assert (= bs!1454572 (and d!1881657 b!6000496)))

(assert (=> bs!1454572 (not (= lambda!327562 lambda!327548))))

(declare-fun bs!1454573 () Bool)

(assert (= bs!1454573 (and d!1881657 d!1881075)))

(assert (=> bs!1454573 (= lambda!327562 lambda!327460)))

(declare-fun bs!1454574 () Bool)

(assert (= bs!1454574 (and d!1881657 d!1881045)))

(assert (=> bs!1454574 (= lambda!327562 lambda!327449)))

(declare-fun lt!2318970 () List!64332)

(assert (=> d!1881657 (forall!15109 lt!2318970 lambda!327562)))

(declare-fun e!3667747 () List!64332)

(assert (=> d!1881657 (= lt!2318970 e!3667747)))

(declare-fun c!1072250 () Bool)

(assert (=> d!1881657 (= c!1072250 ((_ is Cons!64209) (t!377754 zl!343)))))

(assert (=> d!1881657 (= (unfocusZipperList!1432 (t!377754 zl!343)) lt!2318970)))

(declare-fun b!6000721 () Bool)

(assert (=> b!6000721 (= e!3667747 (Cons!64208 (generalisedConcat!1608 (exprs!5895 (h!70657 (t!377754 zl!343)))) (unfocusZipperList!1432 (t!377754 (t!377754 zl!343)))))))

(declare-fun b!6000722 () Bool)

(assert (=> b!6000722 (= e!3667747 Nil!64208)))

(assert (= (and d!1881657 c!1072250) b!6000721))

(assert (= (and d!1881657 (not c!1072250)) b!6000722))

(declare-fun m!6878914 () Bool)

(assert (=> d!1881657 m!6878914))

(declare-fun m!6878916 () Bool)

(assert (=> b!6000721 m!6878916))

(declare-fun m!6878918 () Bool)

(assert (=> b!6000721 m!6878918))

(assert (=> b!5999263 d!1881657))

(declare-fun d!1881659 () Bool)

(assert (=> d!1881659 (= (isEmpty!36106 (t!377755 s!2326)) ((_ is Nil!64210) (t!377755 s!2326)))))

(assert (=> d!1881053 d!1881659))

(declare-fun b!6000723 () Bool)

(declare-fun e!3667749 () Bool)

(assert (=> b!6000723 (= e!3667749 (nullable!6006 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))))))))

(declare-fun b!6000724 () Bool)

(declare-fun e!3667750 () (InoxSet Context!10790))

(declare-fun call!485008 () (InoxSet Context!10790))

(assert (=> b!6000724 (= e!3667750 ((_ map or) call!485008 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))))) (h!70658 s!2326))))))

(declare-fun bm!485003 () Bool)

(assert (=> bm!485003 (= call!485008 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))) (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))))) (h!70658 s!2326)))))

(declare-fun d!1881661 () Bool)

(declare-fun c!1072252 () Bool)

(assert (=> d!1881661 (= c!1072252 e!3667749)))

(declare-fun res!2504461 () Bool)

(assert (=> d!1881661 (=> (not res!2504461) (not e!3667749))))

(assert (=> d!1881661 (= res!2504461 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))))))

(assert (=> d!1881661 (= (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 lt!2318663))) (h!70658 s!2326)) e!3667750)))

(declare-fun b!6000725 () Bool)

(declare-fun e!3667748 () (InoxSet Context!10790))

(assert (=> b!6000725 (= e!3667750 e!3667748)))

(declare-fun c!1072251 () Bool)

(assert (=> b!6000725 (= c!1072251 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))))))

(declare-fun b!6000726 () Bool)

(assert (=> b!6000726 (= e!3667748 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000727 () Bool)

(assert (=> b!6000727 (= e!3667748 call!485008)))

(assert (= (and d!1881661 res!2504461) b!6000723))

(assert (= (and d!1881661 c!1072252) b!6000724))

(assert (= (and d!1881661 (not c!1072252)) b!6000725))

(assert (= (and b!6000725 c!1072251) b!6000727))

(assert (= (and b!6000725 (not c!1072251)) b!6000726))

(assert (= (or b!6000724 b!6000727) bm!485003))

(declare-fun m!6878920 () Bool)

(assert (=> b!6000723 m!6878920))

(declare-fun m!6878922 () Bool)

(assert (=> b!6000724 m!6878922))

(declare-fun m!6878924 () Bool)

(assert (=> bm!485003 m!6878924))

(assert (=> b!5999378 d!1881661))

(assert (=> d!1881085 d!1881543))

(assert (=> d!1881085 d!1881119))

(declare-fun b!6000728 () Bool)

(declare-fun c!1072255 () Bool)

(assert (=> b!6000728 (= c!1072255 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun e!3667751 () Bool)

(declare-fun e!3667755 () Bool)

(assert (=> b!6000728 (= e!3667751 e!3667755)))

(declare-fun b!6000729 () Bool)

(declare-fun c!1072259 () Bool)

(assert (=> b!6000729 (= c!1072259 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun e!3667752 () Int)

(declare-fun e!3667758 () Int)

(assert (=> b!6000729 (= e!3667752 e!3667758)))

(declare-fun b!6000730 () Bool)

(declare-fun e!3667759 () Bool)

(declare-fun lt!2318971 () Int)

(declare-fun call!485013 () Int)

(assert (=> b!6000730 (= e!3667759 (> lt!2318971 call!485013))))

(declare-fun b!6000731 () Bool)

(declare-fun e!3667756 () Bool)

(assert (=> b!6000731 (= e!3667756 e!3667759)))

(declare-fun res!2504462 () Bool)

(declare-fun call!485014 () Int)

(assert (=> b!6000731 (= res!2504462 (> lt!2318971 call!485014))))

(assert (=> b!6000731 (=> (not res!2504462) (not e!3667759))))

(declare-fun b!6000732 () Bool)

(declare-fun e!3667757 () Int)

(assert (=> b!6000732 (= e!3667757 1)))

(declare-fun call!485011 () Int)

(declare-fun c!1072253 () Bool)

(declare-fun bm!485004 () Bool)

(assert (=> bm!485004 (= call!485011 (regexDepth!268 (ite c!1072253 (reg!16340 (h!70656 (exprs!5895 lt!2318663))) (ite c!1072259 (regTwo!32535 (h!70656 (exprs!5895 lt!2318663))) (regOne!32534 (h!70656 (exprs!5895 lt!2318663)))))))))

(declare-fun b!6000733 () Bool)

(declare-fun res!2504463 () Bool)

(declare-fun e!3667753 () Bool)

(assert (=> b!6000733 (=> (not res!2504463) (not e!3667753))))

(declare-fun call!485009 () Int)

(assert (=> b!6000733 (= res!2504463 (> lt!2318971 call!485009))))

(assert (=> b!6000733 (= e!3667751 e!3667753)))

(declare-fun bm!485005 () Bool)

(declare-fun call!485010 () Int)

(assert (=> bm!485005 (= call!485010 call!485011)))

(declare-fun bm!485006 () Bool)

(assert (=> bm!485006 (= call!485009 call!485014)))

(declare-fun bm!485007 () Bool)

(declare-fun call!485015 () Int)

(assert (=> bm!485007 (= call!485015 (regexDepth!268 (ite c!1072259 (regOne!32535 (h!70656 (exprs!5895 lt!2318663))) (regTwo!32534 (h!70656 (exprs!5895 lt!2318663))))))))

(declare-fun bm!485008 () Bool)

(declare-fun call!485012 () Int)

(assert (=> bm!485008 (= call!485012 (maxBigInt!0 (ite c!1072259 call!485015 call!485010) (ite c!1072259 call!485010 call!485015)))))

(declare-fun b!6000734 () Bool)

(assert (=> b!6000734 (= e!3667757 (+ 1 call!485012))))

(declare-fun bm!485009 () Bool)

(declare-fun c!1072256 () Bool)

(assert (=> bm!485009 (= call!485013 (regexDepth!268 (ite c!1072256 (regTwo!32535 (h!70656 (exprs!5895 lt!2318663))) (regTwo!32534 (h!70656 (exprs!5895 lt!2318663))))))))

(declare-fun b!6000735 () Bool)

(declare-fun e!3667754 () Int)

(assert (=> b!6000735 (= e!3667754 1)))

(declare-fun b!6000736 () Bool)

(assert (=> b!6000736 (= e!3667758 e!3667757)))

(declare-fun c!1072254 () Bool)

(assert (=> b!6000736 (= c!1072254 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun d!1881663 () Bool)

(declare-fun e!3667760 () Bool)

(assert (=> d!1881663 e!3667760))

(declare-fun res!2504464 () Bool)

(assert (=> d!1881663 (=> (not res!2504464) (not e!3667760))))

(assert (=> d!1881663 (= res!2504464 (> lt!2318971 0))))

(assert (=> d!1881663 (= lt!2318971 e!3667754)))

(declare-fun c!1072258 () Bool)

(assert (=> d!1881663 (= c!1072258 ((_ is ElementMatch!16011) (h!70656 (exprs!5895 lt!2318663))))))

(assert (=> d!1881663 (= (regexDepth!268 (h!70656 (exprs!5895 lt!2318663))) lt!2318971)))

(declare-fun b!6000737 () Bool)

(assert (=> b!6000737 (= e!3667753 (> lt!2318971 call!485013))))

(declare-fun b!6000738 () Bool)

(assert (=> b!6000738 (= e!3667756 e!3667751)))

(declare-fun c!1072257 () Bool)

(assert (=> b!6000738 (= c!1072257 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun b!6000739 () Bool)

(assert (=> b!6000739 (= e!3667755 (> lt!2318971 call!485009))))

(declare-fun b!6000740 () Bool)

(assert (=> b!6000740 (= e!3667758 (+ 1 call!485012))))

(declare-fun b!6000741 () Bool)

(assert (=> b!6000741 (= e!3667760 e!3667756)))

(assert (=> b!6000741 (= c!1072256 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun b!6000742 () Bool)

(assert (=> b!6000742 (= e!3667755 (= lt!2318971 1))))

(declare-fun b!6000743 () Bool)

(assert (=> b!6000743 (= e!3667752 (+ 1 call!485011))))

(declare-fun bm!485010 () Bool)

(assert (=> bm!485010 (= call!485014 (regexDepth!268 (ite c!1072256 (regOne!32535 (h!70656 (exprs!5895 lt!2318663))) (ite c!1072257 (regOne!32534 (h!70656 (exprs!5895 lt!2318663))) (reg!16340 (h!70656 (exprs!5895 lt!2318663)))))))))

(declare-fun b!6000744 () Bool)

(assert (=> b!6000744 (= e!3667754 e!3667752)))

(assert (=> b!6000744 (= c!1072253 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318663))))))

(assert (= (and d!1881663 c!1072258) b!6000735))

(assert (= (and d!1881663 (not c!1072258)) b!6000744))

(assert (= (and b!6000744 c!1072253) b!6000743))

(assert (= (and b!6000744 (not c!1072253)) b!6000729))

(assert (= (and b!6000729 c!1072259) b!6000740))

(assert (= (and b!6000729 (not c!1072259)) b!6000736))

(assert (= (and b!6000736 c!1072254) b!6000734))

(assert (= (and b!6000736 (not c!1072254)) b!6000732))

(assert (= (or b!6000740 b!6000734) bm!485005))

(assert (= (or b!6000740 b!6000734) bm!485007))

(assert (= (or b!6000740 b!6000734) bm!485008))

(assert (= (or b!6000743 bm!485005) bm!485004))

(assert (= (and d!1881663 res!2504464) b!6000741))

(assert (= (and b!6000741 c!1072256) b!6000731))

(assert (= (and b!6000741 (not c!1072256)) b!6000738))

(assert (= (and b!6000731 res!2504462) b!6000730))

(assert (= (and b!6000738 c!1072257) b!6000733))

(assert (= (and b!6000738 (not c!1072257)) b!6000728))

(assert (= (and b!6000733 res!2504463) b!6000737))

(assert (= (and b!6000728 c!1072255) b!6000739))

(assert (= (and b!6000728 (not c!1072255)) b!6000742))

(assert (= (or b!6000733 b!6000739) bm!485006))

(assert (= (or b!6000730 b!6000737) bm!485009))

(assert (= (or b!6000731 bm!485006) bm!485010))

(declare-fun m!6878926 () Bool)

(assert (=> bm!485007 m!6878926))

(declare-fun m!6878928 () Bool)

(assert (=> bm!485008 m!6878928))

(declare-fun m!6878930 () Bool)

(assert (=> bm!485004 m!6878930))

(declare-fun m!6878932 () Bool)

(assert (=> bm!485010 m!6878932))

(declare-fun m!6878934 () Bool)

(assert (=> bm!485009 m!6878934))

(assert (=> b!5999017 d!1881663))

(declare-fun d!1881665 () Bool)

(declare-fun res!2504465 () Bool)

(declare-fun e!3667761 () Bool)

(assert (=> d!1881665 (=> res!2504465 e!3667761)))

(assert (=> d!1881665 (= res!2504465 ((_ is Nil!64208) (t!377753 (exprs!5895 lt!2318663))))))

(assert (=> d!1881665 (= (forall!15109 (t!377753 (exprs!5895 lt!2318663)) lambda!327421) e!3667761)))

(declare-fun b!6000745 () Bool)

(declare-fun e!3667762 () Bool)

(assert (=> b!6000745 (= e!3667761 e!3667762)))

(declare-fun res!2504466 () Bool)

(assert (=> b!6000745 (=> (not res!2504466) (not e!3667762))))

(assert (=> b!6000745 (= res!2504466 (dynLambda!25172 lambda!327421 (h!70656 (t!377753 (exprs!5895 lt!2318663)))))))

(declare-fun b!6000746 () Bool)

(assert (=> b!6000746 (= e!3667762 (forall!15109 (t!377753 (t!377753 (exprs!5895 lt!2318663))) lambda!327421))))

(assert (= (and d!1881665 (not res!2504465)) b!6000745))

(assert (= (and b!6000745 res!2504466) b!6000746))

(declare-fun b_lambda!226809 () Bool)

(assert (=> (not b_lambda!226809) (not b!6000745)))

(declare-fun m!6878936 () Bool)

(assert (=> b!6000745 m!6878936))

(declare-fun m!6878938 () Bool)

(assert (=> b!6000746 m!6878938))

(assert (=> b!5999017 d!1881665))

(declare-fun bs!1454575 () Bool)

(declare-fun d!1881667 () Bool)

(assert (= bs!1454575 (and d!1881667 d!1881657)))

(declare-fun lambda!327563 () Int)

(assert (=> bs!1454575 (not (= lambda!327563 lambda!327562))))

(declare-fun bs!1454576 () Bool)

(assert (= bs!1454576 (and d!1881667 b!5999365)))

(assert (=> bs!1454576 (= (= lt!2318786 lt!2318859) (= lambda!327563 lambda!327471))))

(declare-fun bs!1454577 () Bool)

(assert (= bs!1454577 (and d!1881667 b!5999017)))

(assert (=> bs!1454577 (= lambda!327563 lambda!327421)))

(declare-fun bs!1454578 () Bool)

(assert (= bs!1454578 (and d!1881667 d!1881073)))

(assert (=> bs!1454578 (not (= lambda!327563 lambda!327459))))

(declare-fun bs!1454579 () Bool)

(assert (= bs!1454579 (and d!1881667 b!5999362)))

(assert (=> bs!1454579 (= (= lt!2318786 lt!2318855) (= lambda!327563 lambda!327469))))

(declare-fun bs!1454580 () Bool)

(assert (= bs!1454580 (and d!1881667 b!5999360)))

(assert (=> bs!1454580 (= (= lt!2318786 lt!2318854) (= lambda!327563 lambda!327468))))

(declare-fun bs!1454581 () Bool)

(assert (= bs!1454581 (and d!1881667 b!5999019)))

(assert (=> bs!1454581 (= (= lt!2318786 lt!2318787) (= lambda!327563 lambda!327422))))

(declare-fun bs!1454582 () Bool)

(assert (= bs!1454582 (and d!1881667 d!1881093)))

(assert (=> bs!1454582 (not (= lambda!327563 lambda!327472))))

(declare-fun bs!1454583 () Bool)

(assert (= bs!1454583 (and d!1881667 b!6000494)))

(assert (=> bs!1454583 (= (= lt!2318786 lt!2318955) (= lambda!327563 lambda!327547))))

(declare-fun bs!1454584 () Bool)

(assert (= bs!1454584 (and d!1881667 d!1881071)))

(assert (=> bs!1454584 (not (= lambda!327563 lambda!327456))))

(declare-fun bs!1454585 () Bool)

(assert (= bs!1454585 (and d!1881667 b!5999363)))

(assert (=> bs!1454585 (= (= lt!2318786 lt!2318858) (= lambda!327563 lambda!327470))))

(declare-fun bs!1454586 () Bool)

(assert (= bs!1454586 (and d!1881667 d!1881577)))

(assert (=> bs!1454586 (= (= lt!2318786 lt!2318854) (= lambda!327563 lambda!327551))))

(declare-fun bs!1454587 () Bool)

(assert (= bs!1454587 (and d!1881667 d!1881117)))

(assert (=> bs!1454587 (not (= lambda!327563 lambda!327475))))

(declare-fun bs!1454588 () Bool)

(assert (= bs!1454588 (and d!1881667 b!6000496)))

(assert (=> bs!1454588 (= (= lt!2318786 lt!2318956) (= lambda!327563 lambda!327548))))

(declare-fun bs!1454589 () Bool)

(assert (= bs!1454589 (and d!1881667 d!1881075)))

(assert (=> bs!1454589 (not (= lambda!327563 lambda!327460))))

(declare-fun bs!1454590 () Bool)

(assert (= bs!1454590 (and d!1881667 d!1881045)))

(assert (=> bs!1454590 (not (= lambda!327563 lambda!327449))))

(assert (=> d!1881667 true))

(assert (=> d!1881667 (forall!15109 (t!377753 (exprs!5895 lt!2318663)) lambda!327563)))

(declare-fun lt!2318972 () Unit!157293)

(assert (=> d!1881667 (= lt!2318972 (choose!45018 (t!377753 (exprs!5895 lt!2318663)) lt!2318786 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))))))

(assert (=> d!1881667 (>= lt!2318786 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))))))

(assert (=> d!1881667 (= (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 lt!2318663)) lt!2318786 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))) lt!2318972)))

(declare-fun bs!1454591 () Bool)

(assert (= bs!1454591 d!1881667))

(declare-fun m!6878940 () Bool)

(assert (=> bs!1454591 m!6878940))

(assert (=> bs!1454591 m!6877384))

(declare-fun m!6878942 () Bool)

(assert (=> bs!1454591 m!6878942))

(assert (=> b!5999017 d!1881667))

(declare-fun bs!1454592 () Bool)

(declare-fun b!6000747 () Bool)

(assert (= bs!1454592 (and b!6000747 d!1881657)))

(declare-fun lambda!327564 () Int)

(assert (=> bs!1454592 (not (= lambda!327564 lambda!327562))))

(declare-fun bs!1454593 () Bool)

(assert (= bs!1454593 (and b!6000747 b!5999365)))

(declare-fun lt!2318973 () Int)

(assert (=> bs!1454593 (= (= lt!2318973 lt!2318859) (= lambda!327564 lambda!327471))))

(declare-fun bs!1454594 () Bool)

(assert (= bs!1454594 (and b!6000747 b!5999017)))

(assert (=> bs!1454594 (= (= lt!2318973 lt!2318786) (= lambda!327564 lambda!327421))))

(declare-fun bs!1454595 () Bool)

(assert (= bs!1454595 (and b!6000747 d!1881667)))

(assert (=> bs!1454595 (= (= lt!2318973 lt!2318786) (= lambda!327564 lambda!327563))))

(declare-fun bs!1454596 () Bool)

(assert (= bs!1454596 (and b!6000747 d!1881073)))

(assert (=> bs!1454596 (not (= lambda!327564 lambda!327459))))

(declare-fun bs!1454597 () Bool)

(assert (= bs!1454597 (and b!6000747 b!5999362)))

(assert (=> bs!1454597 (= (= lt!2318973 lt!2318855) (= lambda!327564 lambda!327469))))

(declare-fun bs!1454598 () Bool)

(assert (= bs!1454598 (and b!6000747 b!5999360)))

(assert (=> bs!1454598 (= (= lt!2318973 lt!2318854) (= lambda!327564 lambda!327468))))

(declare-fun bs!1454599 () Bool)

(assert (= bs!1454599 (and b!6000747 b!5999019)))

(assert (=> bs!1454599 (= (= lt!2318973 lt!2318787) (= lambda!327564 lambda!327422))))

(declare-fun bs!1454600 () Bool)

(assert (= bs!1454600 (and b!6000747 d!1881093)))

(assert (=> bs!1454600 (not (= lambda!327564 lambda!327472))))

(declare-fun bs!1454601 () Bool)

(assert (= bs!1454601 (and b!6000747 b!6000494)))

(assert (=> bs!1454601 (= (= lt!2318973 lt!2318955) (= lambda!327564 lambda!327547))))

(declare-fun bs!1454602 () Bool)

(assert (= bs!1454602 (and b!6000747 d!1881071)))

(assert (=> bs!1454602 (not (= lambda!327564 lambda!327456))))

(declare-fun bs!1454603 () Bool)

(assert (= bs!1454603 (and b!6000747 b!5999363)))

(assert (=> bs!1454603 (= (= lt!2318973 lt!2318858) (= lambda!327564 lambda!327470))))

(declare-fun bs!1454604 () Bool)

(assert (= bs!1454604 (and b!6000747 d!1881577)))

(assert (=> bs!1454604 (= (= lt!2318973 lt!2318854) (= lambda!327564 lambda!327551))))

(declare-fun bs!1454605 () Bool)

(assert (= bs!1454605 (and b!6000747 d!1881117)))

(assert (=> bs!1454605 (not (= lambda!327564 lambda!327475))))

(declare-fun bs!1454606 () Bool)

(assert (= bs!1454606 (and b!6000747 b!6000496)))

(assert (=> bs!1454606 (= (= lt!2318973 lt!2318956) (= lambda!327564 lambda!327548))))

(declare-fun bs!1454607 () Bool)

(assert (= bs!1454607 (and b!6000747 d!1881075)))

(assert (=> bs!1454607 (not (= lambda!327564 lambda!327460))))

(declare-fun bs!1454608 () Bool)

(assert (= bs!1454608 (and b!6000747 d!1881045)))

(assert (=> bs!1454608 (not (= lambda!327564 lambda!327449))))

(assert (=> b!6000747 true))

(declare-fun bs!1454609 () Bool)

(declare-fun b!6000749 () Bool)

(assert (= bs!1454609 (and b!6000749 d!1881657)))

(declare-fun lambda!327565 () Int)

(assert (=> bs!1454609 (not (= lambda!327565 lambda!327562))))

(declare-fun bs!1454610 () Bool)

(assert (= bs!1454610 (and b!6000749 b!5999365)))

(declare-fun lt!2318974 () Int)

(assert (=> bs!1454610 (= (= lt!2318974 lt!2318859) (= lambda!327565 lambda!327471))))

(declare-fun bs!1454611 () Bool)

(assert (= bs!1454611 (and b!6000749 b!5999017)))

(assert (=> bs!1454611 (= (= lt!2318974 lt!2318786) (= lambda!327565 lambda!327421))))

(declare-fun bs!1454612 () Bool)

(assert (= bs!1454612 (and b!6000749 d!1881667)))

(assert (=> bs!1454612 (= (= lt!2318974 lt!2318786) (= lambda!327565 lambda!327563))))

(declare-fun bs!1454613 () Bool)

(assert (= bs!1454613 (and b!6000749 d!1881073)))

(assert (=> bs!1454613 (not (= lambda!327565 lambda!327459))))

(declare-fun bs!1454614 () Bool)

(assert (= bs!1454614 (and b!6000749 b!5999362)))

(assert (=> bs!1454614 (= (= lt!2318974 lt!2318855) (= lambda!327565 lambda!327469))))

(declare-fun bs!1454615 () Bool)

(assert (= bs!1454615 (and b!6000749 b!5999360)))

(assert (=> bs!1454615 (= (= lt!2318974 lt!2318854) (= lambda!327565 lambda!327468))))

(declare-fun bs!1454616 () Bool)

(assert (= bs!1454616 (and b!6000749 b!5999019)))

(assert (=> bs!1454616 (= (= lt!2318974 lt!2318787) (= lambda!327565 lambda!327422))))

(declare-fun bs!1454617 () Bool)

(assert (= bs!1454617 (and b!6000749 d!1881093)))

(assert (=> bs!1454617 (not (= lambda!327565 lambda!327472))))

(declare-fun bs!1454618 () Bool)

(assert (= bs!1454618 (and b!6000749 b!6000747)))

(assert (=> bs!1454618 (= (= lt!2318974 lt!2318973) (= lambda!327565 lambda!327564))))

(declare-fun bs!1454619 () Bool)

(assert (= bs!1454619 (and b!6000749 b!6000494)))

(assert (=> bs!1454619 (= (= lt!2318974 lt!2318955) (= lambda!327565 lambda!327547))))

(declare-fun bs!1454620 () Bool)

(assert (= bs!1454620 (and b!6000749 d!1881071)))

(assert (=> bs!1454620 (not (= lambda!327565 lambda!327456))))

(declare-fun bs!1454621 () Bool)

(assert (= bs!1454621 (and b!6000749 b!5999363)))

(assert (=> bs!1454621 (= (= lt!2318974 lt!2318858) (= lambda!327565 lambda!327470))))

(declare-fun bs!1454622 () Bool)

(assert (= bs!1454622 (and b!6000749 d!1881577)))

(assert (=> bs!1454622 (= (= lt!2318974 lt!2318854) (= lambda!327565 lambda!327551))))

(declare-fun bs!1454623 () Bool)

(assert (= bs!1454623 (and b!6000749 d!1881117)))

(assert (=> bs!1454623 (not (= lambda!327565 lambda!327475))))

(declare-fun bs!1454624 () Bool)

(assert (= bs!1454624 (and b!6000749 b!6000496)))

(assert (=> bs!1454624 (= (= lt!2318974 lt!2318956) (= lambda!327565 lambda!327548))))

(declare-fun bs!1454625 () Bool)

(assert (= bs!1454625 (and b!6000749 d!1881075)))

(assert (=> bs!1454625 (not (= lambda!327565 lambda!327460))))

(declare-fun bs!1454626 () Bool)

(assert (= bs!1454626 (and b!6000749 d!1881045)))

(assert (=> bs!1454626 (not (= lambda!327565 lambda!327449))))

(assert (=> b!6000749 true))

(declare-fun d!1881669 () Bool)

(declare-fun e!3667764 () Bool)

(assert (=> d!1881669 e!3667764))

(declare-fun res!2504467 () Bool)

(assert (=> d!1881669 (=> (not res!2504467) (not e!3667764))))

(assert (=> d!1881669 (= res!2504467 (>= lt!2318974 0))))

(declare-fun e!3667763 () Int)

(assert (=> d!1881669 (= lt!2318974 e!3667763)))

(declare-fun c!1072260 () Bool)

(assert (=> d!1881669 (= c!1072260 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))))))

(assert (=> d!1881669 (= (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))) lt!2318974)))

(assert (=> b!6000747 (= e!3667763 lt!2318973)))

(assert (=> b!6000747 (= lt!2318973 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))))))))))

(declare-fun lt!2318976 () Unit!157293)

(assert (=> b!6000747 (= lt!2318976 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))) lt!2318973 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))))))))))

(assert (=> b!6000747 (forall!15109 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))) lambda!327564)))

(declare-fun lt!2318975 () Unit!157293)

(assert (=> b!6000747 (= lt!2318975 lt!2318976)))

(declare-fun b!6000748 () Bool)

(assert (=> b!6000748 (= e!3667763 0)))

(assert (=> b!6000749 (= e!3667764 (forall!15109 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318663)))) lambda!327565))))

(assert (= (and d!1881669 c!1072260) b!6000747))

(assert (= (and d!1881669 (not c!1072260)) b!6000748))

(assert (= (and d!1881669 res!2504467) b!6000749))

(declare-fun m!6878944 () Bool)

(assert (=> b!6000747 m!6878944))

(declare-fun m!6878946 () Bool)

(assert (=> b!6000747 m!6878946))

(declare-fun m!6878948 () Bool)

(assert (=> b!6000747 m!6878948))

(assert (=> b!6000747 m!6878946))

(declare-fun m!6878950 () Bool)

(assert (=> b!6000747 m!6878950))

(assert (=> b!6000747 m!6878946))

(declare-fun m!6878952 () Bool)

(assert (=> b!6000747 m!6878952))

(assert (=> b!6000747 m!6878944))

(declare-fun m!6878954 () Bool)

(assert (=> b!6000749 m!6878954))

(assert (=> b!5999017 d!1881669))

(declare-fun d!1881671 () Bool)

(assert (=> d!1881671 (= (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 lt!2318663))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))) (ite (>= (regexDepth!268 (h!70656 (exprs!5895 lt!2318663))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))) (regexDepth!268 (h!70656 (exprs!5895 lt!2318663))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318663))))))))

(assert (=> b!5999017 d!1881671))

(declare-fun d!1881673 () Bool)

(assert (=> d!1881673 (= (head!12560 (exprs!5895 (h!70657 zl!343))) (h!70656 (exprs!5895 (h!70657 zl!343))))))

(assert (=> b!5999424 d!1881673))

(assert (=> d!1881065 d!1881659))

(declare-fun d!1881675 () Bool)

(assert (=> d!1881675 (= ($colon$colon!1896 (exprs!5895 lt!2318656) (ite (or c!1071869 c!1071868) (regTwo!32534 (regTwo!32534 r!7292)) (regTwo!32534 r!7292))) (Cons!64208 (ite (or c!1071869 c!1071868) (regTwo!32534 (regTwo!32534 r!7292)) (regTwo!32534 r!7292)) (exprs!5895 lt!2318656)))))

(assert (=> bm!484692 d!1881675))

(declare-fun bs!1454627 () Bool)

(declare-fun d!1881677 () Bool)

(assert (= bs!1454627 (and d!1881677 d!1881657)))

(declare-fun lambda!327566 () Int)

(assert (=> bs!1454627 (= lambda!327566 lambda!327562)))

(declare-fun bs!1454628 () Bool)

(assert (= bs!1454628 (and d!1881677 b!5999365)))

(assert (=> bs!1454628 (not (= lambda!327566 lambda!327471))))

(declare-fun bs!1454629 () Bool)

(assert (= bs!1454629 (and d!1881677 b!5999017)))

(assert (=> bs!1454629 (not (= lambda!327566 lambda!327421))))

(declare-fun bs!1454630 () Bool)

(assert (= bs!1454630 (and d!1881677 d!1881667)))

(assert (=> bs!1454630 (not (= lambda!327566 lambda!327563))))

(declare-fun bs!1454631 () Bool)

(assert (= bs!1454631 (and d!1881677 d!1881073)))

(assert (=> bs!1454631 (= lambda!327566 lambda!327459)))

(declare-fun bs!1454632 () Bool)

(assert (= bs!1454632 (and d!1881677 b!5999362)))

(assert (=> bs!1454632 (not (= lambda!327566 lambda!327469))))

(declare-fun bs!1454633 () Bool)

(assert (= bs!1454633 (and d!1881677 b!5999360)))

(assert (=> bs!1454633 (not (= lambda!327566 lambda!327468))))

(declare-fun bs!1454634 () Bool)

(assert (= bs!1454634 (and d!1881677 b!5999019)))

(assert (=> bs!1454634 (not (= lambda!327566 lambda!327422))))

(declare-fun bs!1454635 () Bool)

(assert (= bs!1454635 (and d!1881677 d!1881093)))

(assert (=> bs!1454635 (= lambda!327566 lambda!327472)))

(declare-fun bs!1454636 () Bool)

(assert (= bs!1454636 (and d!1881677 b!6000747)))

(assert (=> bs!1454636 (not (= lambda!327566 lambda!327564))))

(declare-fun bs!1454637 () Bool)

(assert (= bs!1454637 (and d!1881677 b!6000494)))

(assert (=> bs!1454637 (not (= lambda!327566 lambda!327547))))

(declare-fun bs!1454638 () Bool)

(assert (= bs!1454638 (and d!1881677 d!1881071)))

(assert (=> bs!1454638 (= lambda!327566 lambda!327456)))

(declare-fun bs!1454639 () Bool)

(assert (= bs!1454639 (and d!1881677 b!5999363)))

(assert (=> bs!1454639 (not (= lambda!327566 lambda!327470))))

(declare-fun bs!1454640 () Bool)

(assert (= bs!1454640 (and d!1881677 b!6000749)))

(assert (=> bs!1454640 (not (= lambda!327566 lambda!327565))))

(declare-fun bs!1454641 () Bool)

(assert (= bs!1454641 (and d!1881677 d!1881577)))

(assert (=> bs!1454641 (not (= lambda!327566 lambda!327551))))

(declare-fun bs!1454642 () Bool)

(assert (= bs!1454642 (and d!1881677 d!1881117)))

(assert (=> bs!1454642 (= lambda!327566 lambda!327475)))

(declare-fun bs!1454643 () Bool)

(assert (= bs!1454643 (and d!1881677 b!6000496)))

(assert (=> bs!1454643 (not (= lambda!327566 lambda!327548))))

(declare-fun bs!1454644 () Bool)

(assert (= bs!1454644 (and d!1881677 d!1881075)))

(assert (=> bs!1454644 (= lambda!327566 lambda!327460)))

(declare-fun bs!1454645 () Bool)

(assert (= bs!1454645 (and d!1881677 d!1881045)))

(assert (=> bs!1454645 (= lambda!327566 lambda!327449)))

(assert (=> d!1881677 (= (inv!83274 (h!70657 (t!377754 zl!343))) (forall!15109 (exprs!5895 (h!70657 (t!377754 zl!343))) lambda!327566))))

(declare-fun bs!1454646 () Bool)

(assert (= bs!1454646 d!1881677))

(declare-fun m!6878956 () Bool)

(assert (=> bs!1454646 m!6878956))

(assert (=> b!5999501 d!1881677))

(declare-fun d!1881679 () Bool)

(declare-fun res!2504468 () Bool)

(declare-fun e!3667765 () Bool)

(assert (=> d!1881679 (=> res!2504468 e!3667765)))

(assert (=> d!1881679 (= res!2504468 ((_ is Nil!64209) (Cons!64209 lt!2318663 Nil!64209)))))

(assert (=> d!1881679 (= (forall!15110 (Cons!64209 lt!2318663 Nil!64209) lambda!327440) e!3667765)))

(declare-fun b!6000750 () Bool)

(declare-fun e!3667766 () Bool)

(assert (=> b!6000750 (= e!3667765 e!3667766)))

(declare-fun res!2504469 () Bool)

(assert (=> b!6000750 (=> (not res!2504469) (not e!3667766))))

(assert (=> b!6000750 (= res!2504469 (dynLambda!25173 lambda!327440 (h!70657 (Cons!64209 lt!2318663 Nil!64209))))))

(declare-fun b!6000751 () Bool)

(assert (=> b!6000751 (= e!3667766 (forall!15110 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lambda!327440))))

(assert (= (and d!1881679 (not res!2504468)) b!6000750))

(assert (= (and b!6000750 res!2504469) b!6000751))

(declare-fun b_lambda!226811 () Bool)

(assert (=> (not b_lambda!226811) (not b!6000750)))

(declare-fun m!6878958 () Bool)

(assert (=> b!6000750 m!6878958))

(declare-fun m!6878960 () Bool)

(assert (=> b!6000751 m!6878960))

(assert (=> b!5999084 d!1881679))

(declare-fun d!1881681 () Bool)

(assert (=> d!1881681 true))

(declare-fun setRes!40691 () Bool)

(assert (=> d!1881681 setRes!40691))

(declare-fun condSetEmpty!40691 () Bool)

(declare-fun res!2504472 () (InoxSet Context!10790))

(assert (=> d!1881681 (= condSetEmpty!40691 (= res!2504472 ((as const (Array Context!10790 Bool)) false)))))

(assert (=> d!1881681 (= (choose!45004 z!1189 lambda!327357) res!2504472)))

(declare-fun setIsEmpty!40691 () Bool)

(assert (=> setIsEmpty!40691 setRes!40691))

(declare-fun tp!1668968 () Bool)

(declare-fun setNonEmpty!40691 () Bool)

(declare-fun setElem!40691 () Context!10790)

(declare-fun e!3667769 () Bool)

(assert (=> setNonEmpty!40691 (= setRes!40691 (and tp!1668968 (inv!83274 setElem!40691) e!3667769))))

(declare-fun setRest!40691 () (InoxSet Context!10790))

(assert (=> setNonEmpty!40691 (= res!2504472 ((_ map or) (store ((as const (Array Context!10790 Bool)) false) setElem!40691 true) setRest!40691))))

(declare-fun b!6000754 () Bool)

(declare-fun tp!1668969 () Bool)

(assert (=> b!6000754 (= e!3667769 tp!1668969)))

(assert (= (and d!1881681 condSetEmpty!40691) setIsEmpty!40691))

(assert (= (and d!1881681 (not condSetEmpty!40691)) setNonEmpty!40691))

(assert (= setNonEmpty!40691 b!6000754))

(declare-fun m!6878962 () Bool)

(assert (=> setNonEmpty!40691 m!6878962))

(assert (=> d!1881015 d!1881681))

(declare-fun d!1881683 () Bool)

(declare-fun c!1072261 () Bool)

(assert (=> d!1881683 (= c!1072261 (isEmpty!36106 (tail!11644 (t!377755 s!2326))))))

(declare-fun e!3667770 () Bool)

(assert (=> d!1881683 (= (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))) e!3667770)))

(declare-fun b!6000755 () Bool)

(assert (=> b!6000755 (= e!3667770 (nullableZipper!1816 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (head!12559 (t!377755 s!2326)))))))

(declare-fun b!6000756 () Bool)

(assert (=> b!6000756 (= e!3667770 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (head!12559 (tail!11644 (t!377755 s!2326)))) (tail!11644 (tail!11644 (t!377755 s!2326)))))))

(assert (= (and d!1881683 c!1072261) b!6000755))

(assert (= (and d!1881683 (not c!1072261)) b!6000756))

(assert (=> d!1881683 m!6877544))

(assert (=> d!1881683 m!6878638))

(assert (=> b!6000755 m!6877574))

(declare-fun m!6878964 () Bool)

(assert (=> b!6000755 m!6878964))

(assert (=> b!6000756 m!6877544))

(assert (=> b!6000756 m!6878642))

(assert (=> b!6000756 m!6877574))

(assert (=> b!6000756 m!6878642))

(declare-fun m!6878966 () Bool)

(assert (=> b!6000756 m!6878966))

(assert (=> b!6000756 m!6877544))

(assert (=> b!6000756 m!6878646))

(assert (=> b!6000756 m!6878966))

(assert (=> b!6000756 m!6878646))

(declare-fun m!6878968 () Bool)

(assert (=> b!6000756 m!6878968))

(assert (=> b!5999226 d!1881683))

(declare-fun bs!1454647 () Bool)

(declare-fun d!1881685 () Bool)

(assert (= bs!1454647 (and d!1881685 d!1881537)))

(declare-fun lambda!327567 () Int)

(assert (=> bs!1454647 (= lambda!327567 lambda!327546)))

(declare-fun bs!1454648 () Bool)

(assert (= bs!1454648 (and d!1881685 b!5998487)))

(assert (=> bs!1454648 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327567 lambda!327357))))

(declare-fun bs!1454649 () Bool)

(assert (= bs!1454649 (and d!1881685 d!1881067)))

(assert (=> bs!1454649 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327567 lambda!327453))))

(declare-fun bs!1454650 () Bool)

(assert (= bs!1454650 (and d!1881685 d!1881619)))

(assert (=> bs!1454650 (= (= (head!12559 (t!377755 s!2326)) (head!12559 s!2326)) (= lambda!327567 lambda!327554))))

(declare-fun bs!1454651 () Bool)

(assert (= bs!1454651 (and d!1881685 d!1881081)))

(assert (=> bs!1454651 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327567 lambda!327461))))

(declare-fun bs!1454652 () Bool)

(assert (= bs!1454652 (and d!1881685 d!1881055)))

(assert (=> bs!1454652 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327567 lambda!327452))))

(assert (=> d!1881685 true))

(assert (=> d!1881685 (= (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) (head!12559 (t!377755 s!2326))) (flatMap!1524 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) lambda!327567))))

(declare-fun bs!1454653 () Bool)

(assert (= bs!1454653 d!1881685))

(assert (=> bs!1454653 m!6876928))

(declare-fun m!6878970 () Bool)

(assert (=> bs!1454653 m!6878970))

(assert (=> b!5999226 d!1881685))

(assert (=> b!5999226 d!1881539))

(assert (=> b!5999226 d!1881541))

(declare-fun d!1881687 () Bool)

(assert (=> d!1881687 (= (maxBigInt!0 (ite c!1071791 call!484657 call!484652) (ite c!1071791 call!484652 call!484657)) (ite (>= (ite c!1071791 call!484657 call!484652) (ite c!1071791 call!484652 call!484657)) (ite c!1071791 call!484657 call!484652) (ite c!1071791 call!484652 call!484657)))))

(assert (=> bm!484650 d!1881687))

(assert (=> d!1881121 d!1881659))

(declare-fun d!1881689 () Bool)

(assert (=> d!1881689 (= (isEmptyLang!1446 lt!2318846) ((_ is EmptyLang!16011) lt!2318846))))

(assert (=> b!5999251 d!1881689))

(declare-fun d!1881691 () Bool)

(assert (=> d!1881691 true))

(declare-fun setRes!40692 () Bool)

(assert (=> d!1881691 setRes!40692))

(declare-fun condSetEmpty!40692 () Bool)

(declare-fun res!2504473 () (InoxSet Context!10790))

(assert (=> d!1881691 (= condSetEmpty!40692 (= res!2504473 ((as const (Array Context!10790 Bool)) false)))))

(assert (=> d!1881691 (= (choose!45004 lt!2318676 lambda!327357) res!2504473)))

(declare-fun setIsEmpty!40692 () Bool)

(assert (=> setIsEmpty!40692 setRes!40692))

(declare-fun e!3667771 () Bool)

(declare-fun setElem!40692 () Context!10790)

(declare-fun setNonEmpty!40692 () Bool)

(declare-fun tp!1668970 () Bool)

(assert (=> setNonEmpty!40692 (= setRes!40692 (and tp!1668970 (inv!83274 setElem!40692) e!3667771))))

(declare-fun setRest!40692 () (InoxSet Context!10790))

(assert (=> setNonEmpty!40692 (= res!2504473 ((_ map or) (store ((as const (Array Context!10790 Bool)) false) setElem!40692 true) setRest!40692))))

(declare-fun b!6000757 () Bool)

(declare-fun tp!1668971 () Bool)

(assert (=> b!6000757 (= e!3667771 tp!1668971)))

(assert (= (and d!1881691 condSetEmpty!40692) setIsEmpty!40692))

(assert (= (and d!1881691 (not condSetEmpty!40692)) setNonEmpty!40692))

(assert (= setNonEmpty!40692 b!6000757))

(declare-fun m!6878972 () Bool)

(assert (=> setNonEmpty!40692 m!6878972))

(assert (=> d!1881101 d!1881691))

(declare-fun d!1881693 () Bool)

(declare-fun res!2504474 () Bool)

(declare-fun e!3667772 () Bool)

(assert (=> d!1881693 (=> res!2504474 e!3667772)))

(assert (=> d!1881693 (= res!2504474 ((_ is Nil!64208) (exprs!5895 setElem!40676)))))

(assert (=> d!1881693 (= (forall!15109 (exprs!5895 setElem!40676) lambda!327460) e!3667772)))

(declare-fun b!6000758 () Bool)

(declare-fun e!3667773 () Bool)

(assert (=> b!6000758 (= e!3667772 e!3667773)))

(declare-fun res!2504475 () Bool)

(assert (=> b!6000758 (=> (not res!2504475) (not e!3667773))))

(assert (=> b!6000758 (= res!2504475 (dynLambda!25172 lambda!327460 (h!70656 (exprs!5895 setElem!40676))))))

(declare-fun b!6000759 () Bool)

(assert (=> b!6000759 (= e!3667773 (forall!15109 (t!377753 (exprs!5895 setElem!40676)) lambda!327460))))

(assert (= (and d!1881693 (not res!2504474)) b!6000758))

(assert (= (and b!6000758 res!2504475) b!6000759))

(declare-fun b_lambda!226813 () Bool)

(assert (=> (not b_lambda!226813) (not b!6000758)))

(declare-fun m!6878974 () Bool)

(assert (=> b!6000758 m!6878974))

(declare-fun m!6878976 () Bool)

(assert (=> b!6000759 m!6878976))

(assert (=> d!1881075 d!1881693))

(declare-fun bs!1454654 () Bool)

(declare-fun d!1881695 () Bool)

(assert (= bs!1454654 (and d!1881695 d!1881529)))

(declare-fun lambda!327568 () Int)

(assert (=> bs!1454654 (= lambda!327568 lambda!327545)))

(declare-fun bs!1454655 () Bool)

(assert (= bs!1454655 (and d!1881695 b!5999084)))

(assert (=> bs!1454655 (not (= lambda!327568 lambda!327440))))

(declare-fun bs!1454656 () Bool)

(assert (= bs!1454656 (and d!1881695 b!5999082)))

(assert (=> bs!1454656 (not (= lambda!327568 lambda!327439))))

(declare-fun bs!1454657 () Bool)

(assert (= bs!1454657 (and d!1881695 b!5999092)))

(assert (=> bs!1454657 (not (= lambda!327568 lambda!327446))))

(declare-fun bs!1454658 () Bool)

(assert (= bs!1454658 (and d!1881695 b!5999087)))

(assert (=> bs!1454658 (not (= lambda!327568 lambda!327442))))

(declare-fun bs!1454659 () Bool)

(assert (= bs!1454659 (and d!1881695 b!5999090)))

(assert (=> bs!1454659 (not (= lambda!327568 lambda!327445))))

(declare-fun bs!1454660 () Bool)

(assert (= bs!1454660 (and d!1881695 b!5999089)))

(assert (=> bs!1454660 (not (= lambda!327568 lambda!327443))))

(declare-fun bs!1454661 () Bool)

(assert (= bs!1454661 (and d!1881695 d!1881629)))

(assert (=> bs!1454661 (= lambda!327568 lambda!327555)))

(assert (=> d!1881695 (= (nullableZipper!1816 lt!2318668) (exists!2372 lt!2318668 lambda!327568))))

(declare-fun bs!1454662 () Bool)

(assert (= bs!1454662 d!1881695))

(declare-fun m!6878978 () Bool)

(assert (=> bs!1454662 m!6878978))

(assert (=> b!5999210 d!1881695))

(assert (=> b!5999357 d!1881545))

(declare-fun d!1881697 () Bool)

(assert (=> d!1881697 (= (isEmpty!36101 (t!377753 (unfocusZipperList!1432 zl!343))) ((_ is Nil!64208) (t!377753 (unfocusZipperList!1432 zl!343))))))

(assert (=> b!5999255 d!1881697))

(declare-fun d!1881699 () Bool)

(assert (=> d!1881699 (= (nullable!6006 (h!70656 (exprs!5895 lt!2318663))) (nullableFct!1976 (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun bs!1454663 () Bool)

(assert (= bs!1454663 d!1881699))

(declare-fun m!6878980 () Bool)

(assert (=> bs!1454663 m!6878980))

(assert (=> b!5999377 d!1881699))

(declare-fun c!1072264 () Bool)

(declare-fun b!6000760 () Bool)

(assert (=> b!6000760 (= c!1072264 ((_ is Star!16011) (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun e!3667774 () Bool)

(declare-fun e!3667778 () Bool)

(assert (=> b!6000760 (= e!3667774 e!3667778)))

(declare-fun c!1072268 () Bool)

(declare-fun b!6000761 () Bool)

(assert (=> b!6000761 (= c!1072268 ((_ is Union!16011) (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun e!3667775 () Int)

(declare-fun e!3667781 () Int)

(assert (=> b!6000761 (= e!3667775 e!3667781)))

(declare-fun b!6000762 () Bool)

(declare-fun e!3667782 () Bool)

(declare-fun lt!2318977 () Int)

(declare-fun call!485020 () Int)

(assert (=> b!6000762 (= e!3667782 (> lt!2318977 call!485020))))

(declare-fun b!6000763 () Bool)

(declare-fun e!3667779 () Bool)

(assert (=> b!6000763 (= e!3667779 e!3667782)))

(declare-fun res!2504476 () Bool)

(declare-fun call!485021 () Int)

(assert (=> b!6000763 (= res!2504476 (> lt!2318977 call!485021))))

(assert (=> b!6000763 (=> (not res!2504476) (not e!3667782))))

(declare-fun b!6000764 () Bool)

(declare-fun e!3667780 () Int)

(assert (=> b!6000764 (= e!3667780 1)))

(declare-fun bm!485011 () Bool)

(declare-fun c!1072262 () Bool)

(declare-fun call!485018 () Int)

(assert (=> bm!485011 (= call!485018 (regexDepth!268 (ite c!1072262 (reg!16340 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))) (ite c!1072268 (regTwo!32535 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))) (regOne!32534 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292))))))))))

(declare-fun b!6000765 () Bool)

(declare-fun res!2504477 () Bool)

(declare-fun e!3667776 () Bool)

(assert (=> b!6000765 (=> (not res!2504477) (not e!3667776))))

(declare-fun call!485016 () Int)

(assert (=> b!6000765 (= res!2504477 (> lt!2318977 call!485016))))

(assert (=> b!6000765 (= e!3667774 e!3667776)))

(declare-fun bm!485012 () Bool)

(declare-fun call!485017 () Int)

(assert (=> bm!485012 (= call!485017 call!485018)))

(declare-fun bm!485013 () Bool)

(assert (=> bm!485013 (= call!485016 call!485021)))

(declare-fun call!485022 () Int)

(declare-fun bm!485014 () Bool)

(assert (=> bm!485014 (= call!485022 (regexDepth!268 (ite c!1072268 (regOne!32535 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))) (regTwo!32534 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))))

(declare-fun bm!485015 () Bool)

(declare-fun call!485019 () Int)

(assert (=> bm!485015 (= call!485019 (maxBigInt!0 (ite c!1072268 call!485022 call!485017) (ite c!1072268 call!485017 call!485022)))))

(declare-fun b!6000766 () Bool)

(assert (=> b!6000766 (= e!3667780 (+ 1 call!485019))))

(declare-fun c!1072265 () Bool)

(declare-fun bm!485016 () Bool)

(assert (=> bm!485016 (= call!485020 (regexDepth!268 (ite c!1072265 (regTwo!32535 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))) (regTwo!32534 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))))

(declare-fun b!6000767 () Bool)

(declare-fun e!3667777 () Int)

(assert (=> b!6000767 (= e!3667777 1)))

(declare-fun b!6000768 () Bool)

(assert (=> b!6000768 (= e!3667781 e!3667780)))

(declare-fun c!1072263 () Bool)

(assert (=> b!6000768 (= c!1072263 ((_ is Concat!24856) (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun d!1881701 () Bool)

(declare-fun e!3667783 () Bool)

(assert (=> d!1881701 e!3667783))

(declare-fun res!2504478 () Bool)

(assert (=> d!1881701 (=> (not res!2504478) (not e!3667783))))

(assert (=> d!1881701 (= res!2504478 (> lt!2318977 0))))

(assert (=> d!1881701 (= lt!2318977 e!3667777)))

(declare-fun c!1072267 () Bool)

(assert (=> d!1881701 (= c!1072267 ((_ is ElementMatch!16011) (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(assert (=> d!1881701 (= (regexDepth!268 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))) lt!2318977)))

(declare-fun b!6000769 () Bool)

(assert (=> b!6000769 (= e!3667776 (> lt!2318977 call!485020))))

(declare-fun b!6000770 () Bool)

(assert (=> b!6000770 (= e!3667779 e!3667774)))

(declare-fun c!1072266 () Bool)

(assert (=> b!6000770 (= c!1072266 ((_ is Concat!24856) (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun b!6000771 () Bool)

(assert (=> b!6000771 (= e!3667778 (> lt!2318977 call!485016))))

(declare-fun b!6000772 () Bool)

(assert (=> b!6000772 (= e!3667781 (+ 1 call!485019))))

(declare-fun b!6000773 () Bool)

(assert (=> b!6000773 (= e!3667783 e!3667779)))

(assert (=> b!6000773 (= c!1072265 ((_ is Union!16011) (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun b!6000774 () Bool)

(assert (=> b!6000774 (= e!3667778 (= lt!2318977 1))))

(declare-fun b!6000775 () Bool)

(assert (=> b!6000775 (= e!3667775 (+ 1 call!485018))))

(declare-fun bm!485017 () Bool)

(assert (=> bm!485017 (= call!485021 (regexDepth!268 (ite c!1072265 (regOne!32535 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))) (ite c!1072266 (regOne!32534 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))) (reg!16340 (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292))))))))))

(declare-fun b!6000776 () Bool)

(assert (=> b!6000776 (= e!3667777 e!3667775)))

(assert (=> b!6000776 (= c!1072262 ((_ is Star!16011) (ite c!1071785 (reg!16340 r!7292) (ite c!1071791 (regTwo!32535 r!7292) (regOne!32534 r!7292)))))))

(assert (= (and d!1881701 c!1072267) b!6000767))

(assert (= (and d!1881701 (not c!1072267)) b!6000776))

(assert (= (and b!6000776 c!1072262) b!6000775))

(assert (= (and b!6000776 (not c!1072262)) b!6000761))

(assert (= (and b!6000761 c!1072268) b!6000772))

(assert (= (and b!6000761 (not c!1072268)) b!6000768))

(assert (= (and b!6000768 c!1072263) b!6000766))

(assert (= (and b!6000768 (not c!1072263)) b!6000764))

(assert (= (or b!6000772 b!6000766) bm!485012))

(assert (= (or b!6000772 b!6000766) bm!485014))

(assert (= (or b!6000772 b!6000766) bm!485015))

(assert (= (or b!6000775 bm!485012) bm!485011))

(assert (= (and d!1881701 res!2504478) b!6000773))

(assert (= (and b!6000773 c!1072265) b!6000763))

(assert (= (and b!6000773 (not c!1072265)) b!6000770))

(assert (= (and b!6000763 res!2504476) b!6000762))

(assert (= (and b!6000770 c!1072266) b!6000765))

(assert (= (and b!6000770 (not c!1072266)) b!6000760))

(assert (= (and b!6000765 res!2504477) b!6000769))

(assert (= (and b!6000760 c!1072264) b!6000771))

(assert (= (and b!6000760 (not c!1072264)) b!6000774))

(assert (= (or b!6000765 b!6000771) bm!485013))

(assert (= (or b!6000762 b!6000769) bm!485016))

(assert (= (or b!6000763 bm!485013) bm!485017))

(declare-fun m!6878982 () Bool)

(assert (=> bm!485014 m!6878982))

(declare-fun m!6878984 () Bool)

(assert (=> bm!485015 m!6878984))

(declare-fun m!6878986 () Bool)

(assert (=> bm!485011 m!6878986))

(declare-fun m!6878988 () Bool)

(assert (=> bm!485017 m!6878988))

(declare-fun m!6878990 () Bool)

(assert (=> bm!485016 m!6878990))

(assert (=> bm!484646 d!1881701))

(assert (=> d!1881107 d!1881101))

(declare-fun d!1881703 () Bool)

(assert (=> d!1881703 (= (flatMap!1524 lt!2318676 lambda!327357) (dynLambda!25167 lambda!327357 lt!2318654))))

(assert (=> d!1881703 true))

(declare-fun _$13!2810 () Unit!157293)

(assert (=> d!1881703 (= (choose!45005 lt!2318676 lt!2318654 lambda!327357) _$13!2810)))

(declare-fun b_lambda!226815 () Bool)

(assert (=> (not b_lambda!226815) (not d!1881703)))

(declare-fun bs!1454664 () Bool)

(assert (= bs!1454664 d!1881703))

(assert (=> bs!1454664 m!6876980))

(assert (=> bs!1454664 m!6877700))

(assert (=> d!1881107 d!1881703))

(declare-fun d!1881705 () Bool)

(declare-fun c!1072269 () Bool)

(assert (=> d!1881705 (= c!1072269 (isEmpty!36106 (tail!11644 (t!377755 s!2326))))))

(declare-fun e!3667784 () Bool)

(assert (=> d!1881705 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318651 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))) e!3667784)))

(declare-fun b!6000777 () Bool)

(assert (=> b!6000777 (= e!3667784 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318651 (head!12559 (t!377755 s!2326)))))))

(declare-fun b!6000778 () Bool)

(assert (=> b!6000778 (= e!3667784 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318651 (head!12559 (t!377755 s!2326))) (head!12559 (tail!11644 (t!377755 s!2326)))) (tail!11644 (tail!11644 (t!377755 s!2326)))))))

(assert (= (and d!1881705 c!1072269) b!6000777))

(assert (= (and d!1881705 (not c!1072269)) b!6000778))

(assert (=> d!1881705 m!6877544))

(assert (=> d!1881705 m!6878638))

(assert (=> b!6000777 m!6877738))

(declare-fun m!6878992 () Bool)

(assert (=> b!6000777 m!6878992))

(assert (=> b!6000778 m!6877544))

(assert (=> b!6000778 m!6878642))

(assert (=> b!6000778 m!6877738))

(assert (=> b!6000778 m!6878642))

(declare-fun m!6878994 () Bool)

(assert (=> b!6000778 m!6878994))

(assert (=> b!6000778 m!6877544))

(assert (=> b!6000778 m!6878646))

(assert (=> b!6000778 m!6878994))

(assert (=> b!6000778 m!6878646))

(declare-fun m!6878996 () Bool)

(assert (=> b!6000778 m!6878996))

(assert (=> b!5999456 d!1881705))

(declare-fun bs!1454665 () Bool)

(declare-fun d!1881707 () Bool)

(assert (= bs!1454665 (and d!1881707 d!1881685)))

(declare-fun lambda!327569 () Int)

(assert (=> bs!1454665 (= lambda!327569 lambda!327567)))

(declare-fun bs!1454666 () Bool)

(assert (= bs!1454666 (and d!1881707 d!1881537)))

(assert (=> bs!1454666 (= lambda!327569 lambda!327546)))

(declare-fun bs!1454667 () Bool)

(assert (= bs!1454667 (and d!1881707 b!5998487)))

(assert (=> bs!1454667 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327569 lambda!327357))))

(declare-fun bs!1454668 () Bool)

(assert (= bs!1454668 (and d!1881707 d!1881067)))

(assert (=> bs!1454668 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327569 lambda!327453))))

(declare-fun bs!1454669 () Bool)

(assert (= bs!1454669 (and d!1881707 d!1881619)))

(assert (=> bs!1454669 (= (= (head!12559 (t!377755 s!2326)) (head!12559 s!2326)) (= lambda!327569 lambda!327554))))

(declare-fun bs!1454670 () Bool)

(assert (= bs!1454670 (and d!1881707 d!1881081)))

(assert (=> bs!1454670 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327569 lambda!327461))))

(declare-fun bs!1454671 () Bool)

(assert (= bs!1454671 (and d!1881707 d!1881055)))

(assert (=> bs!1454671 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327569 lambda!327452))))

(assert (=> d!1881707 true))

(assert (=> d!1881707 (= (derivationStepZipper!1992 lt!2318651 (head!12559 (t!377755 s!2326))) (flatMap!1524 lt!2318651 lambda!327569))))

(declare-fun bs!1454672 () Bool)

(assert (= bs!1454672 d!1881707))

(declare-fun m!6878998 () Bool)

(assert (=> bs!1454672 m!6878998))

(assert (=> b!5999456 d!1881707))

(assert (=> b!5999456 d!1881539))

(assert (=> b!5999456 d!1881541))

(declare-fun bm!485018 () Bool)

(declare-fun call!485023 () (InoxSet Context!10790))

(declare-fun call!485025 () (InoxSet Context!10790))

(assert (=> bm!485018 (= call!485023 call!485025)))

(declare-fun b!6000780 () Bool)

(declare-fun c!1072271 () Bool)

(declare-fun e!3667787 () Bool)

(assert (=> b!6000780 (= c!1072271 e!3667787)))

(declare-fun res!2504479 () Bool)

(assert (=> b!6000780 (=> (not res!2504479) (not e!3667787))))

(assert (=> b!6000780 (= res!2504479 ((_ is Concat!24856) (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun e!3667786 () (InoxSet Context!10790))

(declare-fun e!3667785 () (InoxSet Context!10790))

(assert (=> b!6000780 (= e!3667786 e!3667785)))

(declare-fun c!1072273 () Bool)

(declare-fun call!485026 () (InoxSet Context!10790))

(declare-fun call!485027 () List!64332)

(declare-fun bm!485019 () Bool)

(assert (=> bm!485019 (= call!485026 (derivationStepZipperDown!1261 (ite c!1072273 (regOne!32535 (h!70656 (exprs!5895 (h!70657 zl!343)))) (regOne!32534 (h!70656 (exprs!5895 (h!70657 zl!343))))) (ite c!1072273 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))) (Context!10791 call!485027)) (h!70658 s!2326)))))

(declare-fun b!6000781 () Bool)

(declare-fun e!3667790 () (InoxSet Context!10790))

(assert (=> b!6000781 (= e!3667790 call!485023)))

(declare-fun bm!485020 () Bool)

(declare-fun call!485028 () List!64332)

(assert (=> bm!485020 (= call!485028 call!485027)))

(declare-fun bm!485021 () Bool)

(declare-fun c!1072270 () Bool)

(assert (=> bm!485021 (= call!485027 ($colon$colon!1896 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343))))) (ite (or c!1072271 c!1072270) (regTwo!32534 (h!70656 (exprs!5895 (h!70657 zl!343)))) (h!70656 (exprs!5895 (h!70657 zl!343))))))))

(declare-fun call!485024 () (InoxSet Context!10790))

(declare-fun bm!485022 () Bool)

(assert (=> bm!485022 (= call!485024 (derivationStepZipperDown!1261 (ite c!1072273 (regTwo!32535 (h!70656 (exprs!5895 (h!70657 zl!343)))) (ite c!1072271 (regTwo!32534 (h!70656 (exprs!5895 (h!70657 zl!343)))) (ite c!1072270 (regOne!32534 (h!70656 (exprs!5895 (h!70657 zl!343)))) (reg!16340 (h!70656 (exprs!5895 (h!70657 zl!343))))))) (ite (or c!1072273 c!1072271) (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))) (Context!10791 call!485028)) (h!70658 s!2326)))))

(declare-fun b!6000782 () Bool)

(assert (=> b!6000782 (= e!3667786 ((_ map or) call!485026 call!485024))))

(declare-fun b!6000783 () Bool)

(declare-fun c!1072274 () Bool)

(assert (=> b!6000783 (= c!1072274 ((_ is Star!16011) (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun e!3667789 () (InoxSet Context!10790))

(assert (=> b!6000783 (= e!3667790 e!3667789)))

(declare-fun bm!485023 () Bool)

(assert (=> bm!485023 (= call!485025 call!485024)))

(declare-fun b!6000784 () Bool)

(declare-fun e!3667788 () (InoxSet Context!10790))

(assert (=> b!6000784 (= e!3667788 e!3667786)))

(assert (=> b!6000784 (= c!1072273 ((_ is Union!16011) (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun d!1881709 () Bool)

(declare-fun c!1072272 () Bool)

(assert (=> d!1881709 (= c!1072272 (and ((_ is ElementMatch!16011) (h!70656 (exprs!5895 (h!70657 zl!343)))) (= (c!1071586 (h!70656 (exprs!5895 (h!70657 zl!343)))) (h!70658 s!2326))))))

(assert (=> d!1881709 (= (derivationStepZipperDown!1261 (h!70656 (exprs!5895 (h!70657 zl!343))) (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))) (h!70658 s!2326)) e!3667788)))

(declare-fun b!6000779 () Bool)

(assert (=> b!6000779 (= e!3667789 call!485023)))

(declare-fun b!6000785 () Bool)

(assert (=> b!6000785 (= e!3667785 ((_ map or) call!485026 call!485025))))

(declare-fun b!6000786 () Bool)

(assert (=> b!6000786 (= e!3667789 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000787 () Bool)

(assert (=> b!6000787 (= e!3667788 (store ((as const (Array Context!10790 Bool)) false) (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))) true))))

(declare-fun b!6000788 () Bool)

(assert (=> b!6000788 (= e!3667785 e!3667790)))

(assert (=> b!6000788 (= c!1072270 ((_ is Concat!24856) (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!6000789 () Bool)

(assert (=> b!6000789 (= e!3667787 (nullable!6006 (regOne!32534 (h!70656 (exprs!5895 (h!70657 zl!343))))))))

(assert (= (and d!1881709 c!1072272) b!6000787))

(assert (= (and d!1881709 (not c!1072272)) b!6000784))

(assert (= (and b!6000784 c!1072273) b!6000782))

(assert (= (and b!6000784 (not c!1072273)) b!6000780))

(assert (= (and b!6000780 res!2504479) b!6000789))

(assert (= (and b!6000780 c!1072271) b!6000785))

(assert (= (and b!6000780 (not c!1072271)) b!6000788))

(assert (= (and b!6000788 c!1072270) b!6000781))

(assert (= (and b!6000788 (not c!1072270)) b!6000783))

(assert (= (and b!6000783 c!1072274) b!6000779))

(assert (= (and b!6000783 (not c!1072274)) b!6000786))

(assert (= (or b!6000781 b!6000779) bm!485020))

(assert (= (or b!6000781 b!6000779) bm!485018))

(assert (= (or b!6000785 bm!485020) bm!485021))

(assert (= (or b!6000785 bm!485018) bm!485023))

(assert (= (or b!6000782 bm!485023) bm!485022))

(assert (= (or b!6000782 b!6000785) bm!485019))

(declare-fun m!6879000 () Bool)

(assert (=> b!6000789 m!6879000))

(declare-fun m!6879002 () Bool)

(assert (=> bm!485019 m!6879002))

(declare-fun m!6879004 () Bool)

(assert (=> b!6000787 m!6879004))

(declare-fun m!6879006 () Bool)

(assert (=> bm!485021 m!6879006))

(declare-fun m!6879008 () Bool)

(assert (=> bm!485022 m!6879008))

(assert (=> bm!484631 d!1881709))

(declare-fun d!1881711 () Bool)

(assert (=> d!1881711 (= (flatMap!1524 lt!2318676 lambda!327453) (choose!45004 lt!2318676 lambda!327453))))

(declare-fun bs!1454673 () Bool)

(assert (= bs!1454673 d!1881711))

(declare-fun m!6879010 () Bool)

(assert (=> bs!1454673 m!6879010))

(assert (=> d!1881067 d!1881711))

(declare-fun bs!1454674 () Bool)

(declare-fun d!1881713 () Bool)

(assert (= bs!1454674 (and d!1881713 d!1881657)))

(declare-fun lambda!327570 () Int)

(assert (=> bs!1454674 (not (= lambda!327570 lambda!327562))))

(declare-fun bs!1454675 () Bool)

(assert (= bs!1454675 (and d!1881713 b!5999365)))

(assert (=> bs!1454675 (= (= lt!2318858 lt!2318859) (= lambda!327570 lambda!327471))))

(declare-fun bs!1454676 () Bool)

(assert (= bs!1454676 (and d!1881713 b!5999017)))

(assert (=> bs!1454676 (= (= lt!2318858 lt!2318786) (= lambda!327570 lambda!327421))))

(declare-fun bs!1454677 () Bool)

(assert (= bs!1454677 (and d!1881713 d!1881667)))

(assert (=> bs!1454677 (= (= lt!2318858 lt!2318786) (= lambda!327570 lambda!327563))))

(declare-fun bs!1454678 () Bool)

(assert (= bs!1454678 (and d!1881713 d!1881073)))

(assert (=> bs!1454678 (not (= lambda!327570 lambda!327459))))

(declare-fun bs!1454679 () Bool)

(assert (= bs!1454679 (and d!1881713 b!5999362)))

(assert (=> bs!1454679 (= (= lt!2318858 lt!2318855) (= lambda!327570 lambda!327469))))

(declare-fun bs!1454680 () Bool)

(assert (= bs!1454680 (and d!1881713 b!5999019)))

(assert (=> bs!1454680 (= (= lt!2318858 lt!2318787) (= lambda!327570 lambda!327422))))

(declare-fun bs!1454681 () Bool)

(assert (= bs!1454681 (and d!1881713 d!1881093)))

(assert (=> bs!1454681 (not (= lambda!327570 lambda!327472))))

(declare-fun bs!1454682 () Bool)

(assert (= bs!1454682 (and d!1881713 b!6000747)))

(assert (=> bs!1454682 (= (= lt!2318858 lt!2318973) (= lambda!327570 lambda!327564))))

(declare-fun bs!1454683 () Bool)

(assert (= bs!1454683 (and d!1881713 b!6000494)))

(assert (=> bs!1454683 (= (= lt!2318858 lt!2318955) (= lambda!327570 lambda!327547))))

(declare-fun bs!1454684 () Bool)

(assert (= bs!1454684 (and d!1881713 d!1881071)))

(assert (=> bs!1454684 (not (= lambda!327570 lambda!327456))))

(declare-fun bs!1454685 () Bool)

(assert (= bs!1454685 (and d!1881713 b!5999363)))

(assert (=> bs!1454685 (= lambda!327570 lambda!327470)))

(declare-fun bs!1454686 () Bool)

(assert (= bs!1454686 (and d!1881713 b!6000749)))

(assert (=> bs!1454686 (= (= lt!2318858 lt!2318974) (= lambda!327570 lambda!327565))))

(declare-fun bs!1454687 () Bool)

(assert (= bs!1454687 (and d!1881713 d!1881577)))

(assert (=> bs!1454687 (= (= lt!2318858 lt!2318854) (= lambda!327570 lambda!327551))))

(declare-fun bs!1454688 () Bool)

(assert (= bs!1454688 (and d!1881713 d!1881117)))

(assert (=> bs!1454688 (not (= lambda!327570 lambda!327475))))

(declare-fun bs!1454689 () Bool)

(assert (= bs!1454689 (and d!1881713 b!6000496)))

(assert (=> bs!1454689 (= (= lt!2318858 lt!2318956) (= lambda!327570 lambda!327548))))

(declare-fun bs!1454690 () Bool)

(assert (= bs!1454690 (and d!1881713 d!1881075)))

(assert (=> bs!1454690 (not (= lambda!327570 lambda!327460))))

(declare-fun bs!1454691 () Bool)

(assert (= bs!1454691 (and d!1881713 d!1881045)))

(assert (=> bs!1454691 (not (= lambda!327570 lambda!327449))))

(declare-fun bs!1454692 () Bool)

(assert (= bs!1454692 (and d!1881713 d!1881677)))

(assert (=> bs!1454692 (not (= lambda!327570 lambda!327566))))

(declare-fun bs!1454693 () Bool)

(assert (= bs!1454693 (and d!1881713 b!5999360)))

(assert (=> bs!1454693 (= (= lt!2318858 lt!2318854) (= lambda!327570 lambda!327468))))

(assert (=> d!1881713 true))

(assert (=> d!1881713 (forall!15109 (t!377753 (exprs!5895 lt!2318654)) lambda!327570)))

(declare-fun lt!2318978 () Unit!157293)

(assert (=> d!1881713 (= lt!2318978 (choose!45018 (t!377753 (exprs!5895 lt!2318654)) lt!2318858 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))))))

(assert (=> d!1881713 (>= lt!2318858 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))))))

(assert (=> d!1881713 (= (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 lt!2318654)) lt!2318858 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))) lt!2318978)))

(declare-fun bs!1454694 () Bool)

(assert (= bs!1454694 d!1881713))

(declare-fun m!6879012 () Bool)

(assert (=> bs!1454694 m!6879012))

(assert (=> bs!1454694 m!6877656))

(declare-fun m!6879014 () Bool)

(assert (=> bs!1454694 m!6879014))

(assert (=> b!5999363 d!1881713))

(declare-fun bs!1454695 () Bool)

(declare-fun b!6000790 () Bool)

(assert (= bs!1454695 (and b!6000790 b!5999365)))

(declare-fun lambda!327571 () Int)

(declare-fun lt!2318979 () Int)

(assert (=> bs!1454695 (= (= lt!2318979 lt!2318859) (= lambda!327571 lambda!327471))))

(declare-fun bs!1454696 () Bool)

(assert (= bs!1454696 (and b!6000790 b!5999017)))

(assert (=> bs!1454696 (= (= lt!2318979 lt!2318786) (= lambda!327571 lambda!327421))))

(declare-fun bs!1454697 () Bool)

(assert (= bs!1454697 (and b!6000790 d!1881667)))

(assert (=> bs!1454697 (= (= lt!2318979 lt!2318786) (= lambda!327571 lambda!327563))))

(declare-fun bs!1454698 () Bool)

(assert (= bs!1454698 (and b!6000790 d!1881073)))

(assert (=> bs!1454698 (not (= lambda!327571 lambda!327459))))

(declare-fun bs!1454699 () Bool)

(assert (= bs!1454699 (and b!6000790 b!5999362)))

(assert (=> bs!1454699 (= (= lt!2318979 lt!2318855) (= lambda!327571 lambda!327469))))

(declare-fun bs!1454700 () Bool)

(assert (= bs!1454700 (and b!6000790 b!5999019)))

(assert (=> bs!1454700 (= (= lt!2318979 lt!2318787) (= lambda!327571 lambda!327422))))

(declare-fun bs!1454701 () Bool)

(assert (= bs!1454701 (and b!6000790 d!1881093)))

(assert (=> bs!1454701 (not (= lambda!327571 lambda!327472))))

(declare-fun bs!1454702 () Bool)

(assert (= bs!1454702 (and b!6000790 d!1881713)))

(assert (=> bs!1454702 (= (= lt!2318979 lt!2318858) (= lambda!327571 lambda!327570))))

(declare-fun bs!1454703 () Bool)

(assert (= bs!1454703 (and b!6000790 d!1881657)))

(assert (=> bs!1454703 (not (= lambda!327571 lambda!327562))))

(declare-fun bs!1454704 () Bool)

(assert (= bs!1454704 (and b!6000790 b!6000747)))

(assert (=> bs!1454704 (= (= lt!2318979 lt!2318973) (= lambda!327571 lambda!327564))))

(declare-fun bs!1454705 () Bool)

(assert (= bs!1454705 (and b!6000790 b!6000494)))

(assert (=> bs!1454705 (= (= lt!2318979 lt!2318955) (= lambda!327571 lambda!327547))))

(declare-fun bs!1454706 () Bool)

(assert (= bs!1454706 (and b!6000790 d!1881071)))

(assert (=> bs!1454706 (not (= lambda!327571 lambda!327456))))

(declare-fun bs!1454707 () Bool)

(assert (= bs!1454707 (and b!6000790 b!5999363)))

(assert (=> bs!1454707 (= (= lt!2318979 lt!2318858) (= lambda!327571 lambda!327470))))

(declare-fun bs!1454708 () Bool)

(assert (= bs!1454708 (and b!6000790 b!6000749)))

(assert (=> bs!1454708 (= (= lt!2318979 lt!2318974) (= lambda!327571 lambda!327565))))

(declare-fun bs!1454709 () Bool)

(assert (= bs!1454709 (and b!6000790 d!1881577)))

(assert (=> bs!1454709 (= (= lt!2318979 lt!2318854) (= lambda!327571 lambda!327551))))

(declare-fun bs!1454710 () Bool)

(assert (= bs!1454710 (and b!6000790 d!1881117)))

(assert (=> bs!1454710 (not (= lambda!327571 lambda!327475))))

(declare-fun bs!1454711 () Bool)

(assert (= bs!1454711 (and b!6000790 b!6000496)))

(assert (=> bs!1454711 (= (= lt!2318979 lt!2318956) (= lambda!327571 lambda!327548))))

(declare-fun bs!1454712 () Bool)

(assert (= bs!1454712 (and b!6000790 d!1881075)))

(assert (=> bs!1454712 (not (= lambda!327571 lambda!327460))))

(declare-fun bs!1454713 () Bool)

(assert (= bs!1454713 (and b!6000790 d!1881045)))

(assert (=> bs!1454713 (not (= lambda!327571 lambda!327449))))

(declare-fun bs!1454714 () Bool)

(assert (= bs!1454714 (and b!6000790 d!1881677)))

(assert (=> bs!1454714 (not (= lambda!327571 lambda!327566))))

(declare-fun bs!1454715 () Bool)

(assert (= bs!1454715 (and b!6000790 b!5999360)))

(assert (=> bs!1454715 (= (= lt!2318979 lt!2318854) (= lambda!327571 lambda!327468))))

(assert (=> b!6000790 true))

(declare-fun bs!1454716 () Bool)

(declare-fun b!6000792 () Bool)

(assert (= bs!1454716 (and b!6000792 b!5999365)))

(declare-fun lambda!327572 () Int)

(declare-fun lt!2318980 () Int)

(assert (=> bs!1454716 (= (= lt!2318980 lt!2318859) (= lambda!327572 lambda!327471))))

(declare-fun bs!1454717 () Bool)

(assert (= bs!1454717 (and b!6000792 b!5999017)))

(assert (=> bs!1454717 (= (= lt!2318980 lt!2318786) (= lambda!327572 lambda!327421))))

(declare-fun bs!1454718 () Bool)

(assert (= bs!1454718 (and b!6000792 d!1881667)))

(assert (=> bs!1454718 (= (= lt!2318980 lt!2318786) (= lambda!327572 lambda!327563))))

(declare-fun bs!1454719 () Bool)

(assert (= bs!1454719 (and b!6000792 b!5999362)))

(assert (=> bs!1454719 (= (= lt!2318980 lt!2318855) (= lambda!327572 lambda!327469))))

(declare-fun bs!1454720 () Bool)

(assert (= bs!1454720 (and b!6000792 b!5999019)))

(assert (=> bs!1454720 (= (= lt!2318980 lt!2318787) (= lambda!327572 lambda!327422))))

(declare-fun bs!1454721 () Bool)

(assert (= bs!1454721 (and b!6000792 d!1881093)))

(assert (=> bs!1454721 (not (= lambda!327572 lambda!327472))))

(declare-fun bs!1454722 () Bool)

(assert (= bs!1454722 (and b!6000792 d!1881713)))

(assert (=> bs!1454722 (= (= lt!2318980 lt!2318858) (= lambda!327572 lambda!327570))))

(declare-fun bs!1454723 () Bool)

(assert (= bs!1454723 (and b!6000792 d!1881657)))

(assert (=> bs!1454723 (not (= lambda!327572 lambda!327562))))

(declare-fun bs!1454724 () Bool)

(assert (= bs!1454724 (and b!6000792 b!6000747)))

(assert (=> bs!1454724 (= (= lt!2318980 lt!2318973) (= lambda!327572 lambda!327564))))

(declare-fun bs!1454725 () Bool)

(assert (= bs!1454725 (and b!6000792 b!6000494)))

(assert (=> bs!1454725 (= (= lt!2318980 lt!2318955) (= lambda!327572 lambda!327547))))

(declare-fun bs!1454726 () Bool)

(assert (= bs!1454726 (and b!6000792 d!1881071)))

(assert (=> bs!1454726 (not (= lambda!327572 lambda!327456))))

(declare-fun bs!1454727 () Bool)

(assert (= bs!1454727 (and b!6000792 b!5999363)))

(assert (=> bs!1454727 (= (= lt!2318980 lt!2318858) (= lambda!327572 lambda!327470))))

(declare-fun bs!1454728 () Bool)

(assert (= bs!1454728 (and b!6000792 b!6000749)))

(assert (=> bs!1454728 (= (= lt!2318980 lt!2318974) (= lambda!327572 lambda!327565))))

(declare-fun bs!1454729 () Bool)

(assert (= bs!1454729 (and b!6000792 d!1881577)))

(assert (=> bs!1454729 (= (= lt!2318980 lt!2318854) (= lambda!327572 lambda!327551))))

(declare-fun bs!1454730 () Bool)

(assert (= bs!1454730 (and b!6000792 d!1881117)))

(assert (=> bs!1454730 (not (= lambda!327572 lambda!327475))))

(declare-fun bs!1454731 () Bool)

(assert (= bs!1454731 (and b!6000792 b!6000496)))

(assert (=> bs!1454731 (= (= lt!2318980 lt!2318956) (= lambda!327572 lambda!327548))))

(declare-fun bs!1454732 () Bool)

(assert (= bs!1454732 (and b!6000792 d!1881075)))

(assert (=> bs!1454732 (not (= lambda!327572 lambda!327460))))

(declare-fun bs!1454733 () Bool)

(assert (= bs!1454733 (and b!6000792 d!1881045)))

(assert (=> bs!1454733 (not (= lambda!327572 lambda!327449))))

(declare-fun bs!1454734 () Bool)

(assert (= bs!1454734 (and b!6000792 b!6000790)))

(assert (=> bs!1454734 (= (= lt!2318980 lt!2318979) (= lambda!327572 lambda!327571))))

(declare-fun bs!1454735 () Bool)

(assert (= bs!1454735 (and b!6000792 d!1881073)))

(assert (=> bs!1454735 (not (= lambda!327572 lambda!327459))))

(declare-fun bs!1454736 () Bool)

(assert (= bs!1454736 (and b!6000792 d!1881677)))

(assert (=> bs!1454736 (not (= lambda!327572 lambda!327566))))

(declare-fun bs!1454737 () Bool)

(assert (= bs!1454737 (and b!6000792 b!5999360)))

(assert (=> bs!1454737 (= (= lt!2318980 lt!2318854) (= lambda!327572 lambda!327468))))

(assert (=> b!6000792 true))

(declare-fun d!1881715 () Bool)

(declare-fun e!3667792 () Bool)

(assert (=> d!1881715 e!3667792))

(declare-fun res!2504480 () Bool)

(assert (=> d!1881715 (=> (not res!2504480) (not e!3667792))))

(assert (=> d!1881715 (= res!2504480 (>= lt!2318980 0))))

(declare-fun e!3667791 () Int)

(assert (=> d!1881715 (= lt!2318980 e!3667791)))

(declare-fun c!1072275 () Bool)

(assert (=> d!1881715 (= c!1072275 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))))))

(assert (=> d!1881715 (= (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))) lt!2318980)))

(assert (=> b!6000790 (= e!3667791 lt!2318979)))

(assert (=> b!6000790 (= lt!2318979 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))))))))))

(declare-fun lt!2318982 () Unit!157293)

(assert (=> b!6000790 (= lt!2318982 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))) lt!2318979 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))))))))))

(assert (=> b!6000790 (forall!15109 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))) lambda!327571)))

(declare-fun lt!2318981 () Unit!157293)

(assert (=> b!6000790 (= lt!2318981 lt!2318982)))

(declare-fun b!6000791 () Bool)

(assert (=> b!6000791 (= e!3667791 0)))

(assert (=> b!6000792 (= e!3667792 (forall!15109 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))) lambda!327572))))

(assert (= (and d!1881715 c!1072275) b!6000790))

(assert (= (and d!1881715 (not c!1072275)) b!6000791))

(assert (= (and d!1881715 res!2504480) b!6000792))

(declare-fun m!6879016 () Bool)

(assert (=> b!6000790 m!6879016))

(declare-fun m!6879018 () Bool)

(assert (=> b!6000790 m!6879018))

(declare-fun m!6879020 () Bool)

(assert (=> b!6000790 m!6879020))

(assert (=> b!6000790 m!6879018))

(declare-fun m!6879022 () Bool)

(assert (=> b!6000790 m!6879022))

(assert (=> b!6000790 m!6879018))

(declare-fun m!6879024 () Bool)

(assert (=> b!6000790 m!6879024))

(assert (=> b!6000790 m!6879016))

(declare-fun m!6879026 () Bool)

(assert (=> b!6000792 m!6879026))

(assert (=> b!5999363 d!1881715))

(declare-fun d!1881717 () Bool)

(assert (=> d!1881717 (= (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 lt!2318654))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))) (ite (>= (regexDepth!268 (h!70656 (exprs!5895 lt!2318654))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))) (regexDepth!268 (h!70656 (exprs!5895 lt!2318654))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 lt!2318654))))))))

(assert (=> b!5999363 d!1881717))

(declare-fun b!6000793 () Bool)

(declare-fun c!1072278 () Bool)

(assert (=> b!6000793 (= c!1072278 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun e!3667793 () Bool)

(declare-fun e!3667797 () Bool)

(assert (=> b!6000793 (= e!3667793 e!3667797)))

(declare-fun b!6000794 () Bool)

(declare-fun c!1072282 () Bool)

(assert (=> b!6000794 (= c!1072282 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun e!3667794 () Int)

(declare-fun e!3667800 () Int)

(assert (=> b!6000794 (= e!3667794 e!3667800)))

(declare-fun b!6000795 () Bool)

(declare-fun e!3667801 () Bool)

(declare-fun lt!2318983 () Int)

(declare-fun call!485033 () Int)

(assert (=> b!6000795 (= e!3667801 (> lt!2318983 call!485033))))

(declare-fun b!6000796 () Bool)

(declare-fun e!3667798 () Bool)

(assert (=> b!6000796 (= e!3667798 e!3667801)))

(declare-fun res!2504481 () Bool)

(declare-fun call!485034 () Int)

(assert (=> b!6000796 (= res!2504481 (> lt!2318983 call!485034))))

(assert (=> b!6000796 (=> (not res!2504481) (not e!3667801))))

(declare-fun b!6000797 () Bool)

(declare-fun e!3667799 () Int)

(assert (=> b!6000797 (= e!3667799 1)))

(declare-fun c!1072276 () Bool)

(declare-fun call!485031 () Int)

(declare-fun bm!485024 () Bool)

(assert (=> bm!485024 (= call!485031 (regexDepth!268 (ite c!1072276 (reg!16340 (h!70656 (exprs!5895 lt!2318654))) (ite c!1072282 (regTwo!32535 (h!70656 (exprs!5895 lt!2318654))) (regOne!32534 (h!70656 (exprs!5895 lt!2318654)))))))))

(declare-fun b!6000798 () Bool)

(declare-fun res!2504482 () Bool)

(declare-fun e!3667795 () Bool)

(assert (=> b!6000798 (=> (not res!2504482) (not e!3667795))))

(declare-fun call!485029 () Int)

(assert (=> b!6000798 (= res!2504482 (> lt!2318983 call!485029))))

(assert (=> b!6000798 (= e!3667793 e!3667795)))

(declare-fun bm!485025 () Bool)

(declare-fun call!485030 () Int)

(assert (=> bm!485025 (= call!485030 call!485031)))

(declare-fun bm!485026 () Bool)

(assert (=> bm!485026 (= call!485029 call!485034)))

(declare-fun bm!485027 () Bool)

(declare-fun call!485035 () Int)

(assert (=> bm!485027 (= call!485035 (regexDepth!268 (ite c!1072282 (regOne!32535 (h!70656 (exprs!5895 lt!2318654))) (regTwo!32534 (h!70656 (exprs!5895 lt!2318654))))))))

(declare-fun call!485032 () Int)

(declare-fun bm!485028 () Bool)

(assert (=> bm!485028 (= call!485032 (maxBigInt!0 (ite c!1072282 call!485035 call!485030) (ite c!1072282 call!485030 call!485035)))))

(declare-fun b!6000799 () Bool)

(assert (=> b!6000799 (= e!3667799 (+ 1 call!485032))))

(declare-fun bm!485029 () Bool)

(declare-fun c!1072279 () Bool)

(assert (=> bm!485029 (= call!485033 (regexDepth!268 (ite c!1072279 (regTwo!32535 (h!70656 (exprs!5895 lt!2318654))) (regTwo!32534 (h!70656 (exprs!5895 lt!2318654))))))))

(declare-fun b!6000800 () Bool)

(declare-fun e!3667796 () Int)

(assert (=> b!6000800 (= e!3667796 1)))

(declare-fun b!6000801 () Bool)

(assert (=> b!6000801 (= e!3667800 e!3667799)))

(declare-fun c!1072277 () Bool)

(assert (=> b!6000801 (= c!1072277 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun d!1881719 () Bool)

(declare-fun e!3667802 () Bool)

(assert (=> d!1881719 e!3667802))

(declare-fun res!2504483 () Bool)

(assert (=> d!1881719 (=> (not res!2504483) (not e!3667802))))

(assert (=> d!1881719 (= res!2504483 (> lt!2318983 0))))

(assert (=> d!1881719 (= lt!2318983 e!3667796)))

(declare-fun c!1072281 () Bool)

(assert (=> d!1881719 (= c!1072281 ((_ is ElementMatch!16011) (h!70656 (exprs!5895 lt!2318654))))))

(assert (=> d!1881719 (= (regexDepth!268 (h!70656 (exprs!5895 lt!2318654))) lt!2318983)))

(declare-fun b!6000802 () Bool)

(assert (=> b!6000802 (= e!3667795 (> lt!2318983 call!485033))))

(declare-fun b!6000803 () Bool)

(assert (=> b!6000803 (= e!3667798 e!3667793)))

(declare-fun c!1072280 () Bool)

(assert (=> b!6000803 (= c!1072280 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun b!6000804 () Bool)

(assert (=> b!6000804 (= e!3667797 (> lt!2318983 call!485029))))

(declare-fun b!6000805 () Bool)

(assert (=> b!6000805 (= e!3667800 (+ 1 call!485032))))

(declare-fun b!6000806 () Bool)

(assert (=> b!6000806 (= e!3667802 e!3667798)))

(assert (=> b!6000806 (= c!1072279 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun b!6000807 () Bool)

(assert (=> b!6000807 (= e!3667797 (= lt!2318983 1))))

(declare-fun b!6000808 () Bool)

(assert (=> b!6000808 (= e!3667794 (+ 1 call!485031))))

(declare-fun bm!485030 () Bool)

(assert (=> bm!485030 (= call!485034 (regexDepth!268 (ite c!1072279 (regOne!32535 (h!70656 (exprs!5895 lt!2318654))) (ite c!1072280 (regOne!32534 (h!70656 (exprs!5895 lt!2318654))) (reg!16340 (h!70656 (exprs!5895 lt!2318654)))))))))

(declare-fun b!6000809 () Bool)

(assert (=> b!6000809 (= e!3667796 e!3667794)))

(assert (=> b!6000809 (= c!1072276 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318654))))))

(assert (= (and d!1881719 c!1072281) b!6000800))

(assert (= (and d!1881719 (not c!1072281)) b!6000809))

(assert (= (and b!6000809 c!1072276) b!6000808))

(assert (= (and b!6000809 (not c!1072276)) b!6000794))

(assert (= (and b!6000794 c!1072282) b!6000805))

(assert (= (and b!6000794 (not c!1072282)) b!6000801))

(assert (= (and b!6000801 c!1072277) b!6000799))

(assert (= (and b!6000801 (not c!1072277)) b!6000797))

(assert (= (or b!6000805 b!6000799) bm!485025))

(assert (= (or b!6000805 b!6000799) bm!485027))

(assert (= (or b!6000805 b!6000799) bm!485028))

(assert (= (or b!6000808 bm!485025) bm!485024))

(assert (= (and d!1881719 res!2504483) b!6000806))

(assert (= (and b!6000806 c!1072279) b!6000796))

(assert (= (and b!6000806 (not c!1072279)) b!6000803))

(assert (= (and b!6000796 res!2504481) b!6000795))

(assert (= (and b!6000803 c!1072280) b!6000798))

(assert (= (and b!6000803 (not c!1072280)) b!6000793))

(assert (= (and b!6000798 res!2504482) b!6000802))

(assert (= (and b!6000793 c!1072278) b!6000804))

(assert (= (and b!6000793 (not c!1072278)) b!6000807))

(assert (= (or b!6000798 b!6000804) bm!485026))

(assert (= (or b!6000795 b!6000802) bm!485029))

(assert (= (or b!6000796 bm!485026) bm!485030))

(declare-fun m!6879028 () Bool)

(assert (=> bm!485027 m!6879028))

(declare-fun m!6879030 () Bool)

(assert (=> bm!485028 m!6879030))

(declare-fun m!6879032 () Bool)

(assert (=> bm!485024 m!6879032))

(declare-fun m!6879034 () Bool)

(assert (=> bm!485030 m!6879034))

(declare-fun m!6879036 () Bool)

(assert (=> bm!485029 m!6879036))

(assert (=> b!5999363 d!1881719))

(declare-fun d!1881721 () Bool)

(declare-fun res!2504484 () Bool)

(declare-fun e!3667803 () Bool)

(assert (=> d!1881721 (=> res!2504484 e!3667803)))

(assert (=> d!1881721 (= res!2504484 ((_ is Nil!64208) (t!377753 (exprs!5895 lt!2318654))))))

(assert (=> d!1881721 (= (forall!15109 (t!377753 (exprs!5895 lt!2318654)) lambda!327470) e!3667803)))

(declare-fun b!6000810 () Bool)

(declare-fun e!3667804 () Bool)

(assert (=> b!6000810 (= e!3667803 e!3667804)))

(declare-fun res!2504485 () Bool)

(assert (=> b!6000810 (=> (not res!2504485) (not e!3667804))))

(assert (=> b!6000810 (= res!2504485 (dynLambda!25172 lambda!327470 (h!70656 (t!377753 (exprs!5895 lt!2318654)))))))

(declare-fun b!6000811 () Bool)

(assert (=> b!6000811 (= e!3667804 (forall!15109 (t!377753 (t!377753 (exprs!5895 lt!2318654))) lambda!327470))))

(assert (= (and d!1881721 (not res!2504484)) b!6000810))

(assert (= (and b!6000810 res!2504485) b!6000811))

(declare-fun b_lambda!226817 () Bool)

(assert (=> (not b_lambda!226817) (not b!6000810)))

(declare-fun m!6879038 () Bool)

(assert (=> b!6000810 m!6879038))

(declare-fun m!6879040 () Bool)

(assert (=> b!6000811 m!6879040))

(assert (=> b!5999363 d!1881721))

(assert (=> d!1881027 d!1881021))

(assert (=> d!1881027 d!1881583))

(assert (=> d!1881027 d!1881031))

(declare-fun d!1881723 () Bool)

(assert (=> d!1881723 (= (Exists!3081 lambda!327425) (choose!45008 lambda!327425))))

(declare-fun bs!1454738 () Bool)

(assert (= bs!1454738 d!1881723))

(declare-fun m!6879042 () Bool)

(assert (=> bs!1454738 m!6879042))

(assert (=> d!1881027 d!1881723))

(declare-fun bs!1454739 () Bool)

(declare-fun d!1881725 () Bool)

(assert (= bs!1454739 (and d!1881725 d!1881027)))

(declare-fun lambda!327575 () Int)

(assert (=> bs!1454739 (= lambda!327575 lambda!327425)))

(declare-fun bs!1454740 () Bool)

(assert (= bs!1454740 (and d!1881725 b!6000610)))

(assert (=> bs!1454740 (not (= lambda!327575 lambda!327552))))

(declare-fun bs!1454741 () Bool)

(assert (= bs!1454741 (and d!1881725 d!1881651)))

(assert (=> bs!1454741 (not (= lambda!327575 lambda!327561))))

(declare-fun bs!1454742 () Bool)

(assert (= bs!1454742 (and d!1881725 b!5999340)))

(assert (=> bs!1454742 (not (= lambda!327575 lambda!327467))))

(declare-fun bs!1454743 () Bool)

(assert (= bs!1454743 (and d!1881725 b!5998489)))

(assert (=> bs!1454743 (not (= lambda!327575 lambda!327356))))

(declare-fun bs!1454744 () Bool)

(assert (= bs!1454744 (and d!1881725 b!6000611)))

(assert (=> bs!1454744 (not (= lambda!327575 lambda!327553))))

(assert (=> bs!1454741 (= lambda!327575 lambda!327560)))

(declare-fun bs!1454745 () Bool)

(assert (= bs!1454745 (and d!1881725 d!1881029)))

(assert (=> bs!1454745 (= lambda!327575 lambda!327430)))

(declare-fun bs!1454746 () Bool)

(assert (= bs!1454746 (and d!1881725 b!5999339)))

(assert (=> bs!1454746 (not (= lambda!327575 lambda!327466))))

(assert (=> bs!1454743 (= lambda!327575 lambda!327355)))

(assert (=> bs!1454745 (not (= lambda!327575 lambda!327431))))

(assert (=> d!1881725 true))

(assert (=> d!1881725 true))

(assert (=> d!1881725 true))

(assert (=> d!1881725 (= (isDefined!12605 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326)) (Exists!3081 lambda!327575))))

(assert (=> d!1881725 true))

(declare-fun _$89!2056 () Unit!157293)

(assert (=> d!1881725 (= (choose!45009 (regOne!32534 r!7292) (regTwo!32534 r!7292) s!2326) _$89!2056)))

(declare-fun bs!1454747 () Bool)

(assert (= bs!1454747 d!1881725))

(assert (=> bs!1454747 m!6876944))

(assert (=> bs!1454747 m!6876944))

(assert (=> bs!1454747 m!6876946))

(declare-fun m!6879044 () Bool)

(assert (=> bs!1454747 m!6879044))

(assert (=> d!1881027 d!1881725))

(assert (=> d!1881047 d!1881543))

(assert (=> d!1881047 d!1881633))

(declare-fun bs!1454748 () Bool)

(declare-fun d!1881727 () Bool)

(assert (= bs!1454748 (and d!1881727 d!1881529)))

(declare-fun lambda!327578 () Int)

(assert (=> bs!1454748 (not (= lambda!327578 lambda!327545))))

(declare-fun bs!1454749 () Bool)

(assert (= bs!1454749 (and d!1881727 b!5999084)))

(assert (=> bs!1454749 (not (= lambda!327578 lambda!327440))))

(declare-fun bs!1454750 () Bool)

(assert (= bs!1454750 (and d!1881727 b!5999082)))

(assert (=> bs!1454750 (not (= lambda!327578 lambda!327439))))

(declare-fun bs!1454751 () Bool)

(assert (= bs!1454751 (and d!1881727 b!5999092)))

(assert (=> bs!1454751 (not (= lambda!327578 lambda!327446))))

(declare-fun bs!1454752 () Bool)

(assert (= bs!1454752 (and d!1881727 b!5999087)))

(assert (=> bs!1454752 (not (= lambda!327578 lambda!327442))))

(declare-fun bs!1454753 () Bool)

(assert (= bs!1454753 (and d!1881727 b!5999090)))

(assert (=> bs!1454753 (not (= lambda!327578 lambda!327445))))

(declare-fun bs!1454754 () Bool)

(assert (= bs!1454754 (and d!1881727 b!5999089)))

(assert (=> bs!1454754 (not (= lambda!327578 lambda!327443))))

(declare-fun bs!1454755 () Bool)

(assert (= bs!1454755 (and d!1881727 d!1881695)))

(assert (=> bs!1454755 (not (= lambda!327578 lambda!327568))))

(declare-fun bs!1454756 () Bool)

(assert (= bs!1454756 (and d!1881727 d!1881629)))

(assert (=> bs!1454756 (not (= lambda!327578 lambda!327555))))

(assert (=> d!1881727 true))

(assert (=> d!1881727 true))

(declare-fun order!27297 () Int)

(declare-fun order!27299 () Int)

(declare-fun dynLambda!25174 (Int Int) Int)

(declare-fun dynLambda!25175 (Int Int) Int)

(assert (=> d!1881727 (< (dynLambda!25174 order!27297 lambda!327441) (dynLambda!25175 order!27299 lambda!327578))))

(assert (=> d!1881727 (forall!15110 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lambda!327578)))

(declare-fun lt!2318986 () Unit!157293)

(declare-fun choose!45019 (List!64333 Int Int Int) Unit!157293)

(assert (=> d!1881727 (= lt!2318986 (choose!45019 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lt!2318822 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209))) lambda!327441))))

(assert (=> d!1881727 (>= lt!2318822 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209))))))

(assert (=> d!1881727 (= (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lt!2318822 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209))) lambda!327441) lt!2318986)))

(declare-fun bs!1454757 () Bool)

(assert (= bs!1454757 d!1881727))

(declare-fun m!6879046 () Bool)

(assert (=> bs!1454757 m!6879046))

(assert (=> bs!1454757 m!6877464))

(declare-fun m!6879048 () Bool)

(assert (=> bs!1454757 m!6879048))

(assert (=> b!5999087 d!1881727))

(declare-fun d!1881729 () Bool)

(assert (=> d!1881729 (= (maxBigInt!0 (contextDepth!159 (h!70657 (Cons!64209 lt!2318655 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))) (ite (>= (contextDepth!159 (h!70657 (Cons!64209 lt!2318655 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))) (contextDepth!159 (h!70657 (Cons!64209 lt!2318655 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))))))

(assert (=> b!5999087 d!1881729))

(declare-fun d!1881731 () Bool)

(declare-fun res!2504490 () Bool)

(declare-fun e!3667807 () Bool)

(assert (=> d!1881731 (=> res!2504490 e!3667807)))

(assert (=> d!1881731 (= res!2504490 ((_ is Nil!64209) (t!377754 (Cons!64209 lt!2318655 Nil!64209))))))

(assert (=> d!1881731 (= (forall!15110 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lambda!327442) e!3667807)))

(declare-fun b!6000819 () Bool)

(declare-fun e!3667808 () Bool)

(assert (=> b!6000819 (= e!3667807 e!3667808)))

(declare-fun res!2504491 () Bool)

(assert (=> b!6000819 (=> (not res!2504491) (not e!3667808))))

(assert (=> b!6000819 (= res!2504491 (dynLambda!25173 lambda!327442 (h!70657 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))))))

(declare-fun b!6000820 () Bool)

(assert (=> b!6000820 (= e!3667808 (forall!15110 (t!377754 (t!377754 (Cons!64209 lt!2318655 Nil!64209))) lambda!327442))))

(assert (= (and d!1881731 (not res!2504490)) b!6000819))

(assert (= (and b!6000819 res!2504491) b!6000820))

(declare-fun b_lambda!226819 () Bool)

(assert (=> (not b_lambda!226819) (not b!6000819)))

(declare-fun m!6879050 () Bool)

(assert (=> b!6000819 m!6879050))

(declare-fun m!6879052 () Bool)

(assert (=> b!6000820 m!6879052))

(assert (=> b!5999087 d!1881731))

(declare-fun bs!1454758 () Bool)

(declare-fun b!6000821 () Bool)

(assert (= bs!1454758 (and b!6000821 b!5999082)))

(declare-fun lambda!327579 () Int)

(assert (=> bs!1454758 (= lambda!327579 lambda!327438)))

(declare-fun bs!1454759 () Bool)

(assert (= bs!1454759 (and b!6000821 b!5999087)))

(assert (=> bs!1454759 (= lambda!327579 lambda!327441)))

(declare-fun bs!1454760 () Bool)

(assert (= bs!1454760 (and b!6000821 b!5999090)))

(assert (=> bs!1454760 (= lambda!327579 lambda!327444)))

(declare-fun bs!1454761 () Bool)

(assert (= bs!1454761 (and b!6000821 d!1881529)))

(declare-fun lambda!327580 () Int)

(assert (=> bs!1454761 (not (= lambda!327580 lambda!327545))))

(declare-fun bs!1454762 () Bool)

(assert (= bs!1454762 (and b!6000821 b!5999084)))

(declare-fun lt!2318989 () Int)

(assert (=> bs!1454762 (= (= lt!2318989 lt!2318816) (= lambda!327580 lambda!327440))))

(assert (=> bs!1454758 (= (= lt!2318989 lt!2318818) (= lambda!327580 lambda!327439))))

(declare-fun bs!1454763 () Bool)

(assert (= bs!1454763 (and b!6000821 b!5999092)))

(assert (=> bs!1454763 (= (= lt!2318989 lt!2318824) (= lambda!327580 lambda!327446))))

(assert (=> bs!1454759 (= (= lt!2318989 lt!2318822) (= lambda!327580 lambda!327442))))

(declare-fun bs!1454764 () Bool)

(assert (= bs!1454764 (and b!6000821 d!1881727)))

(assert (=> bs!1454764 (not (= lambda!327580 lambda!327578))))

(assert (=> bs!1454760 (= (= lt!2318989 lt!2318826) (= lambda!327580 lambda!327445))))

(declare-fun bs!1454765 () Bool)

(assert (= bs!1454765 (and b!6000821 b!5999089)))

(assert (=> bs!1454765 (= (= lt!2318989 lt!2318820) (= lambda!327580 lambda!327443))))

(declare-fun bs!1454766 () Bool)

(assert (= bs!1454766 (and b!6000821 d!1881695)))

(assert (=> bs!1454766 (not (= lambda!327580 lambda!327568))))

(declare-fun bs!1454767 () Bool)

(assert (= bs!1454767 (and b!6000821 d!1881629)))

(assert (=> bs!1454767 (not (= lambda!327580 lambda!327555))))

(assert (=> b!6000821 true))

(declare-fun bs!1454768 () Bool)

(declare-fun b!6000823 () Bool)

(assert (= bs!1454768 (and b!6000823 b!5999084)))

(declare-fun lambda!327581 () Int)

(declare-fun lt!2318987 () Int)

(assert (=> bs!1454768 (= (= lt!2318987 lt!2318816) (= lambda!327581 lambda!327440))))

(declare-fun bs!1454769 () Bool)

(assert (= bs!1454769 (and b!6000823 b!5999082)))

(assert (=> bs!1454769 (= (= lt!2318987 lt!2318818) (= lambda!327581 lambda!327439))))

(declare-fun bs!1454770 () Bool)

(assert (= bs!1454770 (and b!6000823 b!5999092)))

(assert (=> bs!1454770 (= (= lt!2318987 lt!2318824) (= lambda!327581 lambda!327446))))

(declare-fun bs!1454771 () Bool)

(assert (= bs!1454771 (and b!6000823 b!5999087)))

(assert (=> bs!1454771 (= (= lt!2318987 lt!2318822) (= lambda!327581 lambda!327442))))

(declare-fun bs!1454772 () Bool)

(assert (= bs!1454772 (and b!6000823 d!1881727)))

(assert (=> bs!1454772 (not (= lambda!327581 lambda!327578))))

(declare-fun bs!1454773 () Bool)

(assert (= bs!1454773 (and b!6000823 b!5999090)))

(assert (=> bs!1454773 (= (= lt!2318987 lt!2318826) (= lambda!327581 lambda!327445))))

(declare-fun bs!1454774 () Bool)

(assert (= bs!1454774 (and b!6000823 d!1881529)))

(assert (=> bs!1454774 (not (= lambda!327581 lambda!327545))))

(declare-fun bs!1454775 () Bool)

(assert (= bs!1454775 (and b!6000823 b!6000821)))

(assert (=> bs!1454775 (= (= lt!2318987 lt!2318989) (= lambda!327581 lambda!327580))))

(declare-fun bs!1454776 () Bool)

(assert (= bs!1454776 (and b!6000823 b!5999089)))

(assert (=> bs!1454776 (= (= lt!2318987 lt!2318820) (= lambda!327581 lambda!327443))))

(declare-fun bs!1454777 () Bool)

(assert (= bs!1454777 (and b!6000823 d!1881695)))

(assert (=> bs!1454777 (not (= lambda!327581 lambda!327568))))

(declare-fun bs!1454778 () Bool)

(assert (= bs!1454778 (and b!6000823 d!1881629)))

(assert (=> bs!1454778 (not (= lambda!327581 lambda!327555))))

(assert (=> b!6000823 true))

(declare-fun d!1881733 () Bool)

(declare-fun e!3667810 () Bool)

(assert (=> d!1881733 e!3667810))

(declare-fun res!2504492 () Bool)

(assert (=> d!1881733 (=> (not res!2504492) (not e!3667810))))

(assert (=> d!1881733 (= res!2504492 (>= lt!2318987 0))))

(declare-fun e!3667809 () Int)

(assert (=> d!1881733 (= lt!2318987 e!3667809)))

(declare-fun c!1072285 () Bool)

(assert (=> d!1881733 (= c!1072285 ((_ is Cons!64209) (t!377754 (Cons!64209 lt!2318655 Nil!64209))))))

(assert (=> d!1881733 (= (zipperDepth!260 (t!377754 (Cons!64209 lt!2318655 Nil!64209))) lt!2318987)))

(assert (=> b!6000821 (= e!3667809 lt!2318989)))

(assert (=> b!6000821 (= lt!2318989 (maxBigInt!0 (contextDepth!159 (h!70657 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))) (zipperDepth!260 (t!377754 (t!377754 (Cons!64209 lt!2318655 Nil!64209))))))))

(declare-fun lt!2318990 () Unit!157293)

(assert (=> b!6000821 (= lt!2318990 (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 (t!377754 (Cons!64209 lt!2318655 Nil!64209))) lt!2318989 (zipperDepth!260 (t!377754 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))) lambda!327579))))

(assert (=> b!6000821 (forall!15110 (t!377754 (t!377754 (Cons!64209 lt!2318655 Nil!64209))) lambda!327580)))

(declare-fun lt!2318988 () Unit!157293)

(assert (=> b!6000821 (= lt!2318988 lt!2318990)))

(declare-fun b!6000822 () Bool)

(assert (=> b!6000822 (= e!3667809 0)))

(assert (=> b!6000823 (= e!3667810 (forall!15110 (t!377754 (Cons!64209 lt!2318655 Nil!64209)) lambda!327581))))

(assert (= (and d!1881733 c!1072285) b!6000821))

(assert (= (and d!1881733 (not c!1072285)) b!6000822))

(assert (= (and d!1881733 res!2504492) b!6000823))

(declare-fun m!6879054 () Bool)

(assert (=> b!6000821 m!6879054))

(declare-fun m!6879056 () Bool)

(assert (=> b!6000821 m!6879056))

(assert (=> b!6000821 m!6879056))

(declare-fun m!6879058 () Bool)

(assert (=> b!6000821 m!6879058))

(declare-fun m!6879060 () Bool)

(assert (=> b!6000821 m!6879060))

(assert (=> b!6000821 m!6879058))

(declare-fun m!6879062 () Bool)

(assert (=> b!6000821 m!6879062))

(assert (=> b!6000821 m!6879058))

(declare-fun m!6879064 () Bool)

(assert (=> b!6000823 m!6879064))

(assert (=> b!5999087 d!1881733))

(declare-fun bs!1454779 () Bool)

(declare-fun b!6000824 () Bool)

(assert (= bs!1454779 (and b!6000824 b!5999365)))

(declare-fun lt!2318991 () Int)

(declare-fun lambda!327582 () Int)

(assert (=> bs!1454779 (= (= lt!2318991 lt!2318859) (= lambda!327582 lambda!327471))))

(declare-fun bs!1454780 () Bool)

(assert (= bs!1454780 (and b!6000824 b!5999017)))

(assert (=> bs!1454780 (= (= lt!2318991 lt!2318786) (= lambda!327582 lambda!327421))))

(declare-fun bs!1454781 () Bool)

(assert (= bs!1454781 (and b!6000824 d!1881667)))

(assert (=> bs!1454781 (= (= lt!2318991 lt!2318786) (= lambda!327582 lambda!327563))))

(declare-fun bs!1454782 () Bool)

(assert (= bs!1454782 (and b!6000824 b!5999362)))

(assert (=> bs!1454782 (= (= lt!2318991 lt!2318855) (= lambda!327582 lambda!327469))))

(declare-fun bs!1454783 () Bool)

(assert (= bs!1454783 (and b!6000824 b!5999019)))

(assert (=> bs!1454783 (= (= lt!2318991 lt!2318787) (= lambda!327582 lambda!327422))))

(declare-fun bs!1454784 () Bool)

(assert (= bs!1454784 (and b!6000824 d!1881093)))

(assert (=> bs!1454784 (not (= lambda!327582 lambda!327472))))

(declare-fun bs!1454785 () Bool)

(assert (= bs!1454785 (and b!6000824 d!1881713)))

(assert (=> bs!1454785 (= (= lt!2318991 lt!2318858) (= lambda!327582 lambda!327570))))

(declare-fun bs!1454786 () Bool)

(assert (= bs!1454786 (and b!6000824 d!1881657)))

(assert (=> bs!1454786 (not (= lambda!327582 lambda!327562))))

(declare-fun bs!1454787 () Bool)

(assert (= bs!1454787 (and b!6000824 b!6000747)))

(assert (=> bs!1454787 (= (= lt!2318991 lt!2318973) (= lambda!327582 lambda!327564))))

(declare-fun bs!1454788 () Bool)

(assert (= bs!1454788 (and b!6000824 b!6000494)))

(assert (=> bs!1454788 (= (= lt!2318991 lt!2318955) (= lambda!327582 lambda!327547))))

(declare-fun bs!1454789 () Bool)

(assert (= bs!1454789 (and b!6000824 d!1881071)))

(assert (=> bs!1454789 (not (= lambda!327582 lambda!327456))))

(declare-fun bs!1454790 () Bool)

(assert (= bs!1454790 (and b!6000824 b!5999363)))

(assert (=> bs!1454790 (= (= lt!2318991 lt!2318858) (= lambda!327582 lambda!327470))))

(declare-fun bs!1454791 () Bool)

(assert (= bs!1454791 (and b!6000824 b!6000749)))

(assert (=> bs!1454791 (= (= lt!2318991 lt!2318974) (= lambda!327582 lambda!327565))))

(declare-fun bs!1454792 () Bool)

(assert (= bs!1454792 (and b!6000824 d!1881577)))

(assert (=> bs!1454792 (= (= lt!2318991 lt!2318854) (= lambda!327582 lambda!327551))))

(declare-fun bs!1454793 () Bool)

(assert (= bs!1454793 (and b!6000824 d!1881117)))

(assert (=> bs!1454793 (not (= lambda!327582 lambda!327475))))

(declare-fun bs!1454794 () Bool)

(assert (= bs!1454794 (and b!6000824 b!6000496)))

(assert (=> bs!1454794 (= (= lt!2318991 lt!2318956) (= lambda!327582 lambda!327548))))

(declare-fun bs!1454795 () Bool)

(assert (= bs!1454795 (and b!6000824 d!1881075)))

(assert (=> bs!1454795 (not (= lambda!327582 lambda!327460))))

(declare-fun bs!1454796 () Bool)

(assert (= bs!1454796 (and b!6000824 d!1881045)))

(assert (=> bs!1454796 (not (= lambda!327582 lambda!327449))))

(declare-fun bs!1454797 () Bool)

(assert (= bs!1454797 (and b!6000824 b!6000790)))

(assert (=> bs!1454797 (= (= lt!2318991 lt!2318979) (= lambda!327582 lambda!327571))))

(declare-fun bs!1454798 () Bool)

(assert (= bs!1454798 (and b!6000824 d!1881073)))

(assert (=> bs!1454798 (not (= lambda!327582 lambda!327459))))

(declare-fun bs!1454799 () Bool)

(assert (= bs!1454799 (and b!6000824 d!1881677)))

(assert (=> bs!1454799 (not (= lambda!327582 lambda!327566))))

(declare-fun bs!1454800 () Bool)

(assert (= bs!1454800 (and b!6000824 b!6000792)))

(assert (=> bs!1454800 (= (= lt!2318991 lt!2318980) (= lambda!327582 lambda!327572))))

(declare-fun bs!1454801 () Bool)

(assert (= bs!1454801 (and b!6000824 b!5999360)))

(assert (=> bs!1454801 (= (= lt!2318991 lt!2318854) (= lambda!327582 lambda!327468))))

(assert (=> b!6000824 true))

(declare-fun bs!1454802 () Bool)

(declare-fun b!6000826 () Bool)

(assert (= bs!1454802 (and b!6000826 b!5999365)))

(declare-fun lambda!327583 () Int)

(declare-fun lt!2318992 () Int)

(assert (=> bs!1454802 (= (= lt!2318992 lt!2318859) (= lambda!327583 lambda!327471))))

(declare-fun bs!1454803 () Bool)

(assert (= bs!1454803 (and b!6000826 b!5999017)))

(assert (=> bs!1454803 (= (= lt!2318992 lt!2318786) (= lambda!327583 lambda!327421))))

(declare-fun bs!1454804 () Bool)

(assert (= bs!1454804 (and b!6000826 d!1881667)))

(assert (=> bs!1454804 (= (= lt!2318992 lt!2318786) (= lambda!327583 lambda!327563))))

(declare-fun bs!1454805 () Bool)

(assert (= bs!1454805 (and b!6000826 b!5999362)))

(assert (=> bs!1454805 (= (= lt!2318992 lt!2318855) (= lambda!327583 lambda!327469))))

(declare-fun bs!1454806 () Bool)

(assert (= bs!1454806 (and b!6000826 b!5999019)))

(assert (=> bs!1454806 (= (= lt!2318992 lt!2318787) (= lambda!327583 lambda!327422))))

(declare-fun bs!1454807 () Bool)

(assert (= bs!1454807 (and b!6000826 d!1881093)))

(assert (=> bs!1454807 (not (= lambda!327583 lambda!327472))))

(declare-fun bs!1454808 () Bool)

(assert (= bs!1454808 (and b!6000826 d!1881713)))

(assert (=> bs!1454808 (= (= lt!2318992 lt!2318858) (= lambda!327583 lambda!327570))))

(declare-fun bs!1454809 () Bool)

(assert (= bs!1454809 (and b!6000826 b!6000824)))

(assert (=> bs!1454809 (= (= lt!2318992 lt!2318991) (= lambda!327583 lambda!327582))))

(declare-fun bs!1454810 () Bool)

(assert (= bs!1454810 (and b!6000826 d!1881657)))

(assert (=> bs!1454810 (not (= lambda!327583 lambda!327562))))

(declare-fun bs!1454811 () Bool)

(assert (= bs!1454811 (and b!6000826 b!6000747)))

(assert (=> bs!1454811 (= (= lt!2318992 lt!2318973) (= lambda!327583 lambda!327564))))

(declare-fun bs!1454812 () Bool)

(assert (= bs!1454812 (and b!6000826 b!6000494)))

(assert (=> bs!1454812 (= (= lt!2318992 lt!2318955) (= lambda!327583 lambda!327547))))

(declare-fun bs!1454813 () Bool)

(assert (= bs!1454813 (and b!6000826 d!1881071)))

(assert (=> bs!1454813 (not (= lambda!327583 lambda!327456))))

(declare-fun bs!1454814 () Bool)

(assert (= bs!1454814 (and b!6000826 b!5999363)))

(assert (=> bs!1454814 (= (= lt!2318992 lt!2318858) (= lambda!327583 lambda!327470))))

(declare-fun bs!1454815 () Bool)

(assert (= bs!1454815 (and b!6000826 b!6000749)))

(assert (=> bs!1454815 (= (= lt!2318992 lt!2318974) (= lambda!327583 lambda!327565))))

(declare-fun bs!1454816 () Bool)

(assert (= bs!1454816 (and b!6000826 d!1881577)))

(assert (=> bs!1454816 (= (= lt!2318992 lt!2318854) (= lambda!327583 lambda!327551))))

(declare-fun bs!1454817 () Bool)

(assert (= bs!1454817 (and b!6000826 d!1881117)))

(assert (=> bs!1454817 (not (= lambda!327583 lambda!327475))))

(declare-fun bs!1454818 () Bool)

(assert (= bs!1454818 (and b!6000826 b!6000496)))

(assert (=> bs!1454818 (= (= lt!2318992 lt!2318956) (= lambda!327583 lambda!327548))))

(declare-fun bs!1454819 () Bool)

(assert (= bs!1454819 (and b!6000826 d!1881075)))

(assert (=> bs!1454819 (not (= lambda!327583 lambda!327460))))

(declare-fun bs!1454820 () Bool)

(assert (= bs!1454820 (and b!6000826 d!1881045)))

(assert (=> bs!1454820 (not (= lambda!327583 lambda!327449))))

(declare-fun bs!1454821 () Bool)

(assert (= bs!1454821 (and b!6000826 b!6000790)))

(assert (=> bs!1454821 (= (= lt!2318992 lt!2318979) (= lambda!327583 lambda!327571))))

(declare-fun bs!1454822 () Bool)

(assert (= bs!1454822 (and b!6000826 d!1881073)))

(assert (=> bs!1454822 (not (= lambda!327583 lambda!327459))))

(declare-fun bs!1454823 () Bool)

(assert (= bs!1454823 (and b!6000826 d!1881677)))

(assert (=> bs!1454823 (not (= lambda!327583 lambda!327566))))

(declare-fun bs!1454824 () Bool)

(assert (= bs!1454824 (and b!6000826 b!6000792)))

(assert (=> bs!1454824 (= (= lt!2318992 lt!2318980) (= lambda!327583 lambda!327572))))

(declare-fun bs!1454825 () Bool)

(assert (= bs!1454825 (and b!6000826 b!5999360)))

(assert (=> bs!1454825 (= (= lt!2318992 lt!2318854) (= lambda!327583 lambda!327468))))

(assert (=> b!6000826 true))

(declare-fun d!1881735 () Bool)

(declare-fun e!3667812 () Bool)

(assert (=> d!1881735 e!3667812))

(declare-fun res!2504493 () Bool)

(assert (=> d!1881735 (=> (not res!2504493) (not e!3667812))))

(assert (=> d!1881735 (= res!2504493 (>= lt!2318992 0))))

(declare-fun e!3667811 () Int)

(assert (=> d!1881735 (= lt!2318992 e!3667811)))

(declare-fun c!1072286 () Bool)

(assert (=> d!1881735 (= c!1072286 ((_ is Cons!64208) (exprs!5895 (h!70657 (Cons!64209 lt!2318655 Nil!64209)))))))

(assert (=> d!1881735 (= (contextDepth!159 (h!70657 (Cons!64209 lt!2318655 Nil!64209))) lt!2318992)))

(assert (=> b!6000824 (= e!3667811 lt!2318991)))

(assert (=> b!6000824 (= lt!2318991 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 (h!70657 (Cons!64209 lt!2318655 Nil!64209))))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318655 Nil!64209))))))))))

(declare-fun lt!2318994 () Unit!157293)

(assert (=> b!6000824 (= lt!2318994 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318655 Nil!64209)))) lt!2318991 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318655 Nil!64209))))))))))

(assert (=> b!6000824 (forall!15109 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318655 Nil!64209)))) lambda!327582)))

(declare-fun lt!2318993 () Unit!157293)

(assert (=> b!6000824 (= lt!2318993 lt!2318994)))

(declare-fun b!6000825 () Bool)

(assert (=> b!6000825 (= e!3667811 0)))

(assert (=> b!6000826 (= e!3667812 (forall!15109 (exprs!5895 (h!70657 (Cons!64209 lt!2318655 Nil!64209))) lambda!327583))))

(assert (= (and d!1881735 c!1072286) b!6000824))

(assert (= (and d!1881735 (not c!1072286)) b!6000825))

(assert (= (and d!1881735 res!2504493) b!6000826))

(declare-fun m!6879066 () Bool)

(assert (=> b!6000824 m!6879066))

(declare-fun m!6879068 () Bool)

(assert (=> b!6000824 m!6879068))

(declare-fun m!6879070 () Bool)

(assert (=> b!6000824 m!6879070))

(assert (=> b!6000824 m!6879068))

(declare-fun m!6879072 () Bool)

(assert (=> b!6000824 m!6879072))

(assert (=> b!6000824 m!6879068))

(declare-fun m!6879074 () Bool)

(assert (=> b!6000824 m!6879074))

(assert (=> b!6000824 m!6879066))

(declare-fun m!6879076 () Bool)

(assert (=> b!6000826 m!6879076))

(assert (=> b!5999087 d!1881735))

(declare-fun b!6000827 () Bool)

(declare-fun c!1072289 () Bool)

(assert (=> b!6000827 (= c!1072289 ((_ is Star!16011) (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun e!3667813 () Bool)

(declare-fun e!3667817 () Bool)

(assert (=> b!6000827 (= e!3667813 e!3667817)))

(declare-fun b!6000828 () Bool)

(declare-fun c!1072293 () Bool)

(assert (=> b!6000828 (= c!1072293 ((_ is Union!16011) (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun e!3667814 () Int)

(declare-fun e!3667820 () Int)

(assert (=> b!6000828 (= e!3667814 e!3667820)))

(declare-fun b!6000829 () Bool)

(declare-fun e!3667821 () Bool)

(declare-fun lt!2318995 () Int)

(declare-fun call!485040 () Int)

(assert (=> b!6000829 (= e!3667821 (> lt!2318995 call!485040))))

(declare-fun b!6000830 () Bool)

(declare-fun e!3667818 () Bool)

(assert (=> b!6000830 (= e!3667818 e!3667821)))

(declare-fun res!2504494 () Bool)

(declare-fun call!485041 () Int)

(assert (=> b!6000830 (= res!2504494 (> lt!2318995 call!485041))))

(assert (=> b!6000830 (=> (not res!2504494) (not e!3667821))))

(declare-fun b!6000831 () Bool)

(declare-fun e!3667819 () Int)

(assert (=> b!6000831 (= e!3667819 1)))

(declare-fun c!1072287 () Bool)

(declare-fun call!485038 () Int)

(declare-fun bm!485031 () Bool)

(assert (=> bm!485031 (= call!485038 (regexDepth!268 (ite c!1072287 (reg!16340 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))) (ite c!1072293 (regTwo!32535 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))) (regOne!32534 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292)))))))))

(declare-fun b!6000832 () Bool)

(declare-fun res!2504495 () Bool)

(declare-fun e!3667815 () Bool)

(assert (=> b!6000832 (=> (not res!2504495) (not e!3667815))))

(declare-fun call!485036 () Int)

(assert (=> b!6000832 (= res!2504495 (> lt!2318995 call!485036))))

(assert (=> b!6000832 (= e!3667813 e!3667815)))

(declare-fun bm!485032 () Bool)

(declare-fun call!485037 () Int)

(assert (=> bm!485032 (= call!485037 call!485038)))

(declare-fun bm!485033 () Bool)

(assert (=> bm!485033 (= call!485036 call!485041)))

(declare-fun call!485042 () Int)

(declare-fun bm!485034 () Bool)

(assert (=> bm!485034 (= call!485042 (regexDepth!268 (ite c!1072293 (regOne!32535 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))) (regTwo!32534 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))))

(declare-fun call!485039 () Int)

(declare-fun bm!485035 () Bool)

(assert (=> bm!485035 (= call!485039 (maxBigInt!0 (ite c!1072293 call!485042 call!485037) (ite c!1072293 call!485037 call!485042)))))

(declare-fun b!6000833 () Bool)

(assert (=> b!6000833 (= e!3667819 (+ 1 call!485039))))

(declare-fun bm!485036 () Bool)

(declare-fun c!1072290 () Bool)

(assert (=> bm!485036 (= call!485040 (regexDepth!268 (ite c!1072290 (regTwo!32535 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))) (regTwo!32534 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))))

(declare-fun b!6000834 () Bool)

(declare-fun e!3667816 () Int)

(assert (=> b!6000834 (= e!3667816 1)))

(declare-fun b!6000835 () Bool)

(assert (=> b!6000835 (= e!3667820 e!3667819)))

(declare-fun c!1072288 () Bool)

(assert (=> b!6000835 (= c!1072288 ((_ is Concat!24856) (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun d!1881737 () Bool)

(declare-fun e!3667822 () Bool)

(assert (=> d!1881737 e!3667822))

(declare-fun res!2504496 () Bool)

(assert (=> d!1881737 (=> (not res!2504496) (not e!3667822))))

(assert (=> d!1881737 (= res!2504496 (> lt!2318995 0))))

(assert (=> d!1881737 (= lt!2318995 e!3667816)))

(declare-fun c!1072292 () Bool)

(assert (=> d!1881737 (= c!1072292 ((_ is ElementMatch!16011) (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(assert (=> d!1881737 (= (regexDepth!268 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))) lt!2318995)))

(declare-fun b!6000836 () Bool)

(assert (=> b!6000836 (= e!3667815 (> lt!2318995 call!485040))))

(declare-fun b!6000837 () Bool)

(assert (=> b!6000837 (= e!3667818 e!3667813)))

(declare-fun c!1072291 () Bool)

(assert (=> b!6000837 (= c!1072291 ((_ is Concat!24856) (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun b!6000838 () Bool)

(assert (=> b!6000838 (= e!3667817 (> lt!2318995 call!485036))))

(declare-fun b!6000839 () Bool)

(assert (=> b!6000839 (= e!3667820 (+ 1 call!485039))))

(declare-fun b!6000840 () Bool)

(assert (=> b!6000840 (= e!3667822 e!3667818)))

(assert (=> b!6000840 (= c!1072290 ((_ is Union!16011) (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun b!6000841 () Bool)

(assert (=> b!6000841 (= e!3667817 (= lt!2318995 1))))

(declare-fun b!6000842 () Bool)

(assert (=> b!6000842 (= e!3667814 (+ 1 call!485038))))

(declare-fun bm!485037 () Bool)

(assert (=> bm!485037 (= call!485041 (regexDepth!268 (ite c!1072290 (regOne!32535 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))) (ite c!1072291 (regOne!32534 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))) (reg!16340 (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292)))))))))

(declare-fun b!6000843 () Bool)

(assert (=> b!6000843 (= e!3667816 e!3667814)))

(assert (=> b!6000843 (= c!1072287 ((_ is Star!16011) (ite c!1071791 (regOne!32535 r!7292) (regTwo!32534 r!7292))))))

(assert (= (and d!1881737 c!1072292) b!6000834))

(assert (= (and d!1881737 (not c!1072292)) b!6000843))

(assert (= (and b!6000843 c!1072287) b!6000842))

(assert (= (and b!6000843 (not c!1072287)) b!6000828))

(assert (= (and b!6000828 c!1072293) b!6000839))

(assert (= (and b!6000828 (not c!1072293)) b!6000835))

(assert (= (and b!6000835 c!1072288) b!6000833))

(assert (= (and b!6000835 (not c!1072288)) b!6000831))

(assert (= (or b!6000839 b!6000833) bm!485032))

(assert (= (or b!6000839 b!6000833) bm!485034))

(assert (= (or b!6000839 b!6000833) bm!485035))

(assert (= (or b!6000842 bm!485032) bm!485031))

(assert (= (and d!1881737 res!2504496) b!6000840))

(assert (= (and b!6000840 c!1072290) b!6000830))

(assert (= (and b!6000840 (not c!1072290)) b!6000837))

(assert (= (and b!6000830 res!2504494) b!6000829))

(assert (= (and b!6000837 c!1072291) b!6000832))

(assert (= (and b!6000837 (not c!1072291)) b!6000827))

(assert (= (and b!6000832 res!2504495) b!6000836))

(assert (= (and b!6000827 c!1072289) b!6000838))

(assert (= (and b!6000827 (not c!1072289)) b!6000841))

(assert (= (or b!6000832 b!6000838) bm!485033))

(assert (= (or b!6000829 b!6000836) bm!485036))

(assert (= (or b!6000830 bm!485033) bm!485037))

(declare-fun m!6879078 () Bool)

(assert (=> bm!485034 m!6879078))

(declare-fun m!6879080 () Bool)

(assert (=> bm!485035 m!6879080))

(declare-fun m!6879082 () Bool)

(assert (=> bm!485031 m!6879082))

(declare-fun m!6879084 () Bool)

(assert (=> bm!485037 m!6879084))

(declare-fun m!6879086 () Bool)

(assert (=> bm!485036 m!6879086))

(assert (=> bm!484649 d!1881737))

(assert (=> d!1881057 d!1881659))

(declare-fun b!6000844 () Bool)

(declare-fun c!1072296 () Bool)

(assert (=> b!6000844 (= c!1072296 ((_ is Star!16011) (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(declare-fun e!3667823 () Bool)

(declare-fun e!3667827 () Bool)

(assert (=> b!6000844 (= e!3667823 e!3667827)))

(declare-fun b!6000845 () Bool)

(declare-fun c!1072300 () Bool)

(assert (=> b!6000845 (= c!1072300 ((_ is Union!16011) (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(declare-fun e!3667824 () Int)

(declare-fun e!3667830 () Int)

(assert (=> b!6000845 (= e!3667824 e!3667830)))

(declare-fun b!6000846 () Bool)

(declare-fun e!3667831 () Bool)

(declare-fun lt!2318996 () Int)

(declare-fun call!485047 () Int)

(assert (=> b!6000846 (= e!3667831 (> lt!2318996 call!485047))))

(declare-fun b!6000847 () Bool)

(declare-fun e!3667828 () Bool)

(assert (=> b!6000847 (= e!3667828 e!3667831)))

(declare-fun res!2504497 () Bool)

(declare-fun call!485048 () Int)

(assert (=> b!6000847 (= res!2504497 (> lt!2318996 call!485048))))

(assert (=> b!6000847 (=> (not res!2504497) (not e!3667831))))

(declare-fun b!6000848 () Bool)

(declare-fun e!3667829 () Int)

(assert (=> b!6000848 (= e!3667829 1)))

(declare-fun bm!485038 () Bool)

(declare-fun call!485045 () Int)

(declare-fun c!1072294 () Bool)

(assert (=> bm!485038 (= call!485045 (regexDepth!268 (ite c!1072294 (reg!16340 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))) (ite c!1072300 (regTwo!32535 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))) (regOne!32534 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292))))))))))

(declare-fun b!6000849 () Bool)

(declare-fun res!2504498 () Bool)

(declare-fun e!3667825 () Bool)

(assert (=> b!6000849 (=> (not res!2504498) (not e!3667825))))

(declare-fun call!485043 () Int)

(assert (=> b!6000849 (= res!2504498 (> lt!2318996 call!485043))))

(assert (=> b!6000849 (= e!3667823 e!3667825)))

(declare-fun bm!485039 () Bool)

(declare-fun call!485044 () Int)

(assert (=> bm!485039 (= call!485044 call!485045)))

(declare-fun bm!485040 () Bool)

(assert (=> bm!485040 (= call!485043 call!485048)))

(declare-fun call!485049 () Int)

(declare-fun bm!485041 () Bool)

(assert (=> bm!485041 (= call!485049 (regexDepth!268 (ite c!1072300 (regOne!32535 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))) (regTwo!32534 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))))

(declare-fun call!485046 () Int)

(declare-fun bm!485042 () Bool)

(assert (=> bm!485042 (= call!485046 (maxBigInt!0 (ite c!1072300 call!485049 call!485044) (ite c!1072300 call!485044 call!485049)))))

(declare-fun b!6000850 () Bool)

(assert (=> b!6000850 (= e!3667829 (+ 1 call!485046))))

(declare-fun bm!485043 () Bool)

(declare-fun c!1072297 () Bool)

(assert (=> bm!485043 (= call!485047 (regexDepth!268 (ite c!1072297 (regTwo!32535 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))) (regTwo!32534 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))))

(declare-fun b!6000851 () Bool)

(declare-fun e!3667826 () Int)

(assert (=> b!6000851 (= e!3667826 1)))

(declare-fun b!6000852 () Bool)

(assert (=> b!6000852 (= e!3667830 e!3667829)))

(declare-fun c!1072295 () Bool)

(assert (=> b!6000852 (= c!1072295 ((_ is Concat!24856) (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(declare-fun d!1881739 () Bool)

(declare-fun e!3667832 () Bool)

(assert (=> d!1881739 e!3667832))

(declare-fun res!2504499 () Bool)

(assert (=> d!1881739 (=> (not res!2504499) (not e!3667832))))

(assert (=> d!1881739 (= res!2504499 (> lt!2318996 0))))

(assert (=> d!1881739 (= lt!2318996 e!3667826)))

(declare-fun c!1072299 () Bool)

(assert (=> d!1881739 (= c!1072299 ((_ is ElementMatch!16011) (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(assert (=> d!1881739 (= (regexDepth!268 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))) lt!2318996)))

(declare-fun b!6000853 () Bool)

(assert (=> b!6000853 (= e!3667825 (> lt!2318996 call!485047))))

(declare-fun b!6000854 () Bool)

(assert (=> b!6000854 (= e!3667828 e!3667823)))

(declare-fun c!1072298 () Bool)

(assert (=> b!6000854 (= c!1072298 ((_ is Concat!24856) (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(declare-fun b!6000855 () Bool)

(assert (=> b!6000855 (= e!3667827 (> lt!2318996 call!485043))))

(declare-fun b!6000856 () Bool)

(assert (=> b!6000856 (= e!3667830 (+ 1 call!485046))))

(declare-fun b!6000857 () Bool)

(assert (=> b!6000857 (= e!3667832 e!3667828)))

(assert (=> b!6000857 (= c!1072297 ((_ is Union!16011) (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(declare-fun b!6000858 () Bool)

(assert (=> b!6000858 (= e!3667827 (= lt!2318996 1))))

(declare-fun b!6000859 () Bool)

(assert (=> b!6000859 (= e!3667824 (+ 1 call!485045))))

(declare-fun bm!485044 () Bool)

(assert (=> bm!485044 (= call!485048 (regexDepth!268 (ite c!1072297 (regOne!32535 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))) (ite c!1072298 (regOne!32534 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))) (reg!16340 (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292))))))))))

(declare-fun b!6000860 () Bool)

(assert (=> b!6000860 (= e!3667826 e!3667824)))

(assert (=> b!6000860 (= c!1072294 ((_ is Star!16011) (ite c!1071788 (regOne!32535 r!7292) (ite c!1071789 (regOne!32534 r!7292) (reg!16340 r!7292)))))))

(assert (= (and d!1881739 c!1072299) b!6000851))

(assert (= (and d!1881739 (not c!1072299)) b!6000860))

(assert (= (and b!6000860 c!1072294) b!6000859))

(assert (= (and b!6000860 (not c!1072294)) b!6000845))

(assert (= (and b!6000845 c!1072300) b!6000856))

(assert (= (and b!6000845 (not c!1072300)) b!6000852))

(assert (= (and b!6000852 c!1072295) b!6000850))

(assert (= (and b!6000852 (not c!1072295)) b!6000848))

(assert (= (or b!6000856 b!6000850) bm!485039))

(assert (= (or b!6000856 b!6000850) bm!485041))

(assert (= (or b!6000856 b!6000850) bm!485042))

(assert (= (or b!6000859 bm!485039) bm!485038))

(assert (= (and d!1881739 res!2504499) b!6000857))

(assert (= (and b!6000857 c!1072297) b!6000847))

(assert (= (and b!6000857 (not c!1072297)) b!6000854))

(assert (= (and b!6000847 res!2504497) b!6000846))

(assert (= (and b!6000854 c!1072298) b!6000849))

(assert (= (and b!6000854 (not c!1072298)) b!6000844))

(assert (= (and b!6000849 res!2504498) b!6000853))

(assert (= (and b!6000844 c!1072296) b!6000855))

(assert (= (and b!6000844 (not c!1072296)) b!6000858))

(assert (= (or b!6000849 b!6000855) bm!485040))

(assert (= (or b!6000846 b!6000853) bm!485043))

(assert (= (or b!6000847 bm!485040) bm!485044))

(declare-fun m!6879088 () Bool)

(assert (=> bm!485041 m!6879088))

(declare-fun m!6879090 () Bool)

(assert (=> bm!485042 m!6879090))

(declare-fun m!6879092 () Bool)

(assert (=> bm!485038 m!6879092))

(declare-fun m!6879094 () Bool)

(assert (=> bm!485044 m!6879094))

(declare-fun m!6879096 () Bool)

(assert (=> bm!485043 m!6879096))

(assert (=> bm!484652 d!1881739))

(declare-fun d!1881741 () Bool)

(declare-fun res!2504500 () Bool)

(declare-fun e!3667833 () Bool)

(assert (=> d!1881741 (=> res!2504500 e!3667833)))

(assert (=> d!1881741 (= res!2504500 ((_ is Nil!64208) lt!2318849))))

(assert (=> d!1881741 (= (forall!15109 lt!2318849 lambda!327459) e!3667833)))

(declare-fun b!6000861 () Bool)

(declare-fun e!3667834 () Bool)

(assert (=> b!6000861 (= e!3667833 e!3667834)))

(declare-fun res!2504501 () Bool)

(assert (=> b!6000861 (=> (not res!2504501) (not e!3667834))))

(assert (=> b!6000861 (= res!2504501 (dynLambda!25172 lambda!327459 (h!70656 lt!2318849)))))

(declare-fun b!6000862 () Bool)

(assert (=> b!6000862 (= e!3667834 (forall!15109 (t!377753 lt!2318849) lambda!327459))))

(assert (= (and d!1881741 (not res!2504500)) b!6000861))

(assert (= (and b!6000861 res!2504501) b!6000862))

(declare-fun b_lambda!226821 () Bool)

(assert (=> (not b_lambda!226821) (not b!6000861)))

(declare-fun m!6879098 () Bool)

(assert (=> b!6000861 m!6879098))

(declare-fun m!6879100 () Bool)

(assert (=> b!6000862 m!6879100))

(assert (=> d!1881073 d!1881741))

(declare-fun bs!1454826 () Bool)

(declare-fun b!6000867 () Bool)

(assert (= bs!1454826 (and b!6000867 d!1881725)))

(declare-fun lambda!327584 () Int)

(assert (=> bs!1454826 (not (= lambda!327584 lambda!327575))))

(declare-fun bs!1454827 () Bool)

(assert (= bs!1454827 (and b!6000867 d!1881027)))

(assert (=> bs!1454827 (not (= lambda!327584 lambda!327425))))

(declare-fun bs!1454828 () Bool)

(assert (= bs!1454828 (and b!6000867 b!6000610)))

(assert (=> bs!1454828 (= (and (= (reg!16340 (regOne!32535 r!7292)) (reg!16340 (regTwo!32535 r!7292))) (= (regOne!32535 r!7292) (regTwo!32535 r!7292))) (= lambda!327584 lambda!327552))))

(declare-fun bs!1454829 () Bool)

(assert (= bs!1454829 (and b!6000867 d!1881651)))

(assert (=> bs!1454829 (not (= lambda!327584 lambda!327561))))

(declare-fun bs!1454830 () Bool)

(assert (= bs!1454830 (and b!6000867 b!5999340)))

(assert (=> bs!1454830 (not (= lambda!327584 lambda!327467))))

(declare-fun bs!1454831 () Bool)

(assert (= bs!1454831 (and b!6000867 b!5998489)))

(assert (=> bs!1454831 (not (= lambda!327584 lambda!327356))))

(declare-fun bs!1454832 () Bool)

(assert (= bs!1454832 (and b!6000867 b!6000611)))

(assert (=> bs!1454832 (not (= lambda!327584 lambda!327553))))

(assert (=> bs!1454829 (not (= lambda!327584 lambda!327560))))

(declare-fun bs!1454833 () Bool)

(assert (= bs!1454833 (and b!6000867 d!1881029)))

(assert (=> bs!1454833 (not (= lambda!327584 lambda!327430))))

(declare-fun bs!1454834 () Bool)

(assert (= bs!1454834 (and b!6000867 b!5999339)))

(assert (=> bs!1454834 (= (and (= (reg!16340 (regOne!32535 r!7292)) (reg!16340 r!7292)) (= (regOne!32535 r!7292) r!7292)) (= lambda!327584 lambda!327466))))

(assert (=> bs!1454831 (not (= lambda!327584 lambda!327355))))

(assert (=> bs!1454833 (not (= lambda!327584 lambda!327431))))

(assert (=> b!6000867 true))

(assert (=> b!6000867 true))

(declare-fun bs!1454835 () Bool)

(declare-fun b!6000868 () Bool)

(assert (= bs!1454835 (and b!6000868 d!1881725)))

(declare-fun lambda!327585 () Int)

(assert (=> bs!1454835 (not (= lambda!327585 lambda!327575))))

(declare-fun bs!1454836 () Bool)

(assert (= bs!1454836 (and b!6000868 d!1881027)))

(assert (=> bs!1454836 (not (= lambda!327585 lambda!327425))))

(declare-fun bs!1454837 () Bool)

(assert (= bs!1454837 (and b!6000868 b!6000610)))

(assert (=> bs!1454837 (not (= lambda!327585 lambda!327552))))

(declare-fun bs!1454838 () Bool)

(assert (= bs!1454838 (and b!6000868 d!1881651)))

(assert (=> bs!1454838 (= (and (= (regOne!32534 (regOne!32535 r!7292)) (regOne!32534 r!7292)) (= (regTwo!32534 (regOne!32535 r!7292)) (regTwo!32534 r!7292))) (= lambda!327585 lambda!327561))))

(declare-fun bs!1454839 () Bool)

(assert (= bs!1454839 (and b!6000868 b!5999340)))

(assert (=> bs!1454839 (= (and (= (regOne!32534 (regOne!32535 r!7292)) (regOne!32534 r!7292)) (= (regTwo!32534 (regOne!32535 r!7292)) (regTwo!32534 r!7292))) (= lambda!327585 lambda!327467))))

(declare-fun bs!1454840 () Bool)

(assert (= bs!1454840 (and b!6000868 b!5998489)))

(assert (=> bs!1454840 (= (and (= (regOne!32534 (regOne!32535 r!7292)) (regOne!32534 r!7292)) (= (regTwo!32534 (regOne!32535 r!7292)) (regTwo!32534 r!7292))) (= lambda!327585 lambda!327356))))

(declare-fun bs!1454841 () Bool)

(assert (= bs!1454841 (and b!6000868 b!6000867)))

(assert (=> bs!1454841 (not (= lambda!327585 lambda!327584))))

(declare-fun bs!1454842 () Bool)

(assert (= bs!1454842 (and b!6000868 b!6000611)))

(assert (=> bs!1454842 (= (and (= (regOne!32534 (regOne!32535 r!7292)) (regOne!32534 (regTwo!32535 r!7292))) (= (regTwo!32534 (regOne!32535 r!7292)) (regTwo!32534 (regTwo!32535 r!7292)))) (= lambda!327585 lambda!327553))))

(assert (=> bs!1454838 (not (= lambda!327585 lambda!327560))))

(declare-fun bs!1454843 () Bool)

(assert (= bs!1454843 (and b!6000868 d!1881029)))

(assert (=> bs!1454843 (not (= lambda!327585 lambda!327430))))

(declare-fun bs!1454844 () Bool)

(assert (= bs!1454844 (and b!6000868 b!5999339)))

(assert (=> bs!1454844 (not (= lambda!327585 lambda!327466))))

(assert (=> bs!1454840 (not (= lambda!327585 lambda!327355))))

(assert (=> bs!1454843 (= (and (= (regOne!32534 (regOne!32535 r!7292)) (regOne!32534 r!7292)) (= (regTwo!32534 (regOne!32535 r!7292)) (regTwo!32534 r!7292))) (= lambda!327585 lambda!327431))))

(assert (=> b!6000868 true))

(assert (=> b!6000868 true))

(declare-fun b!6000863 () Bool)

(declare-fun e!3667839 () Bool)

(assert (=> b!6000863 (= e!3667839 (matchRSpec!3112 (regTwo!32535 (regOne!32535 r!7292)) s!2326))))

(declare-fun b!6000864 () Bool)

(declare-fun e!3667840 () Bool)

(declare-fun call!485050 () Bool)

(assert (=> b!6000864 (= e!3667840 call!485050)))

(declare-fun b!6000865 () Bool)

(declare-fun c!1072301 () Bool)

(assert (=> b!6000865 (= c!1072301 ((_ is Union!16011) (regOne!32535 r!7292)))))

(declare-fun e!3667835 () Bool)

(declare-fun e!3667841 () Bool)

(assert (=> b!6000865 (= e!3667835 e!3667841)))

(declare-fun b!6000866 () Bool)

(declare-fun e!3667836 () Bool)

(assert (=> b!6000866 (= e!3667840 e!3667836)))

(declare-fun res!2504504 () Bool)

(assert (=> b!6000866 (= res!2504504 (not ((_ is EmptyLang!16011) (regOne!32535 r!7292))))))

(assert (=> b!6000866 (=> (not res!2504504) (not e!3667836))))

(declare-fun e!3667837 () Bool)

(declare-fun call!485051 () Bool)

(assert (=> b!6000867 (= e!3667837 call!485051)))

(declare-fun bm!485045 () Bool)

(assert (=> bm!485045 (= call!485050 (isEmpty!36106 s!2326))))

(declare-fun bm!485046 () Bool)

(declare-fun c!1072302 () Bool)

(assert (=> bm!485046 (= call!485051 (Exists!3081 (ite c!1072302 lambda!327584 lambda!327585)))))

(declare-fun e!3667838 () Bool)

(assert (=> b!6000868 (= e!3667838 call!485051)))

(declare-fun d!1881743 () Bool)

(declare-fun c!1072304 () Bool)

(assert (=> d!1881743 (= c!1072304 ((_ is EmptyExpr!16011) (regOne!32535 r!7292)))))

(assert (=> d!1881743 (= (matchRSpec!3112 (regOne!32535 r!7292) s!2326) e!3667840)))

(declare-fun b!6000869 () Bool)

(declare-fun res!2504503 () Bool)

(assert (=> b!6000869 (=> res!2504503 e!3667837)))

(assert (=> b!6000869 (= res!2504503 call!485050)))

(assert (=> b!6000869 (= e!3667838 e!3667837)))

(declare-fun b!6000870 () Bool)

(assert (=> b!6000870 (= e!3667841 e!3667838)))

(assert (=> b!6000870 (= c!1072302 ((_ is Star!16011) (regOne!32535 r!7292)))))

(declare-fun b!6000871 () Bool)

(assert (=> b!6000871 (= e!3667835 (= s!2326 (Cons!64210 (c!1071586 (regOne!32535 r!7292)) Nil!64210)))))

(declare-fun b!6000872 () Bool)

(assert (=> b!6000872 (= e!3667841 e!3667839)))

(declare-fun res!2504502 () Bool)

(assert (=> b!6000872 (= res!2504502 (matchRSpec!3112 (regOne!32535 (regOne!32535 r!7292)) s!2326))))

(assert (=> b!6000872 (=> res!2504502 e!3667839)))

(declare-fun b!6000873 () Bool)

(declare-fun c!1072303 () Bool)

(assert (=> b!6000873 (= c!1072303 ((_ is ElementMatch!16011) (regOne!32535 r!7292)))))

(assert (=> b!6000873 (= e!3667836 e!3667835)))

(assert (= (and d!1881743 c!1072304) b!6000864))

(assert (= (and d!1881743 (not c!1072304)) b!6000866))

(assert (= (and b!6000866 res!2504504) b!6000873))

(assert (= (and b!6000873 c!1072303) b!6000871))

(assert (= (and b!6000873 (not c!1072303)) b!6000865))

(assert (= (and b!6000865 c!1072301) b!6000872))

(assert (= (and b!6000865 (not c!1072301)) b!6000870))

(assert (= (and b!6000872 (not res!2504502)) b!6000863))

(assert (= (and b!6000870 c!1072302) b!6000869))

(assert (= (and b!6000870 (not c!1072302)) b!6000868))

(assert (= (and b!6000869 (not res!2504503)) b!6000867))

(assert (= (or b!6000867 b!6000868) bm!485046))

(assert (= (or b!6000864 b!6000869) bm!485045))

(declare-fun m!6879102 () Bool)

(assert (=> b!6000863 m!6879102))

(assert (=> bm!485045 m!6877520))

(declare-fun m!6879104 () Bool)

(assert (=> bm!485046 m!6879104))

(declare-fun m!6879106 () Bool)

(assert (=> b!6000872 m!6879106))

(assert (=> b!5999344 d!1881743))

(assert (=> bm!484662 d!1881543))

(declare-fun d!1881745 () Bool)

(declare-fun res!2504505 () Bool)

(declare-fun e!3667842 () Bool)

(assert (=> d!1881745 (=> res!2504505 e!3667842)))

(assert (=> d!1881745 (= res!2504505 ((_ is Nil!64208) (exprs!5895 lt!2318655)))))

(assert (=> d!1881745 (= (forall!15109 (exprs!5895 lt!2318655) lambda!327469) e!3667842)))

(declare-fun b!6000874 () Bool)

(declare-fun e!3667843 () Bool)

(assert (=> b!6000874 (= e!3667842 e!3667843)))

(declare-fun res!2504506 () Bool)

(assert (=> b!6000874 (=> (not res!2504506) (not e!3667843))))

(assert (=> b!6000874 (= res!2504506 (dynLambda!25172 lambda!327469 (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun b!6000875 () Bool)

(assert (=> b!6000875 (= e!3667843 (forall!15109 (t!377753 (exprs!5895 lt!2318655)) lambda!327469))))

(assert (= (and d!1881745 (not res!2504505)) b!6000874))

(assert (= (and b!6000874 res!2504506) b!6000875))

(declare-fun b_lambda!226823 () Bool)

(assert (=> (not b_lambda!226823) (not b!6000874)))

(declare-fun m!6879108 () Bool)

(assert (=> b!6000874 m!6879108))

(declare-fun m!6879110 () Bool)

(assert (=> b!6000875 m!6879110))

(assert (=> b!5999362 d!1881745))

(declare-fun d!1881747 () Bool)

(declare-fun c!1072305 () Bool)

(assert (=> d!1881747 (= c!1072305 (isEmpty!36106 (tail!11644 (t!377755 s!2326))))))

(declare-fun e!3667844 () Bool)

(assert (=> d!1881747 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318652 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))) e!3667844)))

(declare-fun b!6000876 () Bool)

(assert (=> b!6000876 (= e!3667844 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318652 (head!12559 (t!377755 s!2326)))))))

(declare-fun b!6000877 () Bool)

(assert (=> b!6000877 (= e!3667844 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318652 (head!12559 (t!377755 s!2326))) (head!12559 (tail!11644 (t!377755 s!2326)))) (tail!11644 (tail!11644 (t!377755 s!2326)))))))

(assert (= (and d!1881747 c!1072305) b!6000876))

(assert (= (and d!1881747 (not c!1072305)) b!6000877))

(assert (=> d!1881747 m!6877544))

(assert (=> d!1881747 m!6878638))

(assert (=> b!6000876 m!6877552))

(declare-fun m!6879112 () Bool)

(assert (=> b!6000876 m!6879112))

(assert (=> b!6000877 m!6877544))

(assert (=> b!6000877 m!6878642))

(assert (=> b!6000877 m!6877552))

(assert (=> b!6000877 m!6878642))

(declare-fun m!6879114 () Bool)

(assert (=> b!6000877 m!6879114))

(assert (=> b!6000877 m!6877544))

(assert (=> b!6000877 m!6878646))

(assert (=> b!6000877 m!6879114))

(assert (=> b!6000877 m!6878646))

(declare-fun m!6879116 () Bool)

(assert (=> b!6000877 m!6879116))

(assert (=> b!5999217 d!1881747))

(declare-fun bs!1454845 () Bool)

(declare-fun d!1881749 () Bool)

(assert (= bs!1454845 (and d!1881749 d!1881537)))

(declare-fun lambda!327586 () Int)

(assert (=> bs!1454845 (= lambda!327586 lambda!327546)))

(declare-fun bs!1454846 () Bool)

(assert (= bs!1454846 (and d!1881749 b!5998487)))

(assert (=> bs!1454846 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327586 lambda!327357))))

(declare-fun bs!1454847 () Bool)

(assert (= bs!1454847 (and d!1881749 d!1881067)))

(assert (=> bs!1454847 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327586 lambda!327453))))

(declare-fun bs!1454848 () Bool)

(assert (= bs!1454848 (and d!1881749 d!1881619)))

(assert (=> bs!1454848 (= (= (head!12559 (t!377755 s!2326)) (head!12559 s!2326)) (= lambda!327586 lambda!327554))))

(declare-fun bs!1454849 () Bool)

(assert (= bs!1454849 (and d!1881749 d!1881685)))

(assert (=> bs!1454849 (= lambda!327586 lambda!327567)))

(declare-fun bs!1454850 () Bool)

(assert (= bs!1454850 (and d!1881749 d!1881707)))

(assert (=> bs!1454850 (= lambda!327586 lambda!327569)))

(declare-fun bs!1454851 () Bool)

(assert (= bs!1454851 (and d!1881749 d!1881081)))

(assert (=> bs!1454851 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327586 lambda!327461))))

(declare-fun bs!1454852 () Bool)

(assert (= bs!1454852 (and d!1881749 d!1881055)))

(assert (=> bs!1454852 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327586 lambda!327452))))

(assert (=> d!1881749 true))

(assert (=> d!1881749 (= (derivationStepZipper!1992 lt!2318652 (head!12559 (t!377755 s!2326))) (flatMap!1524 lt!2318652 lambda!327586))))

(declare-fun bs!1454853 () Bool)

(assert (= bs!1454853 d!1881749))

(declare-fun m!6879118 () Bool)

(assert (=> bs!1454853 m!6879118))

(assert (=> b!5999217 d!1881749))

(assert (=> b!5999217 d!1881539))

(assert (=> b!5999217 d!1881541))

(declare-fun bm!485047 () Bool)

(declare-fun call!485053 () Bool)

(declare-fun call!485052 () Bool)

(assert (=> bm!485047 (= call!485053 call!485052)))

(declare-fun bm!485048 () Bool)

(declare-fun call!485054 () Bool)

(declare-fun c!1072306 () Bool)

(assert (=> bm!485048 (= call!485054 (validRegex!7747 (ite c!1072306 (regTwo!32535 lt!2318866) (regTwo!32534 lt!2318866))))))

(declare-fun b!6000878 () Bool)

(declare-fun res!2504511 () Bool)

(declare-fun e!3667845 () Bool)

(assert (=> b!6000878 (=> (not res!2504511) (not e!3667845))))

(assert (=> b!6000878 (= res!2504511 call!485053)))

(declare-fun e!3667851 () Bool)

(assert (=> b!6000878 (= e!3667851 e!3667845)))

(declare-fun b!6000879 () Bool)

(declare-fun e!3667849 () Bool)

(assert (=> b!6000879 (= e!3667849 e!3667851)))

(assert (=> b!6000879 (= c!1072306 ((_ is Union!16011) lt!2318866))))

(declare-fun b!6000881 () Bool)

(declare-fun e!3667847 () Bool)

(assert (=> b!6000881 (= e!3667849 e!3667847)))

(declare-fun res!2504510 () Bool)

(assert (=> b!6000881 (= res!2504510 (not (nullable!6006 (reg!16340 lt!2318866))))))

(assert (=> b!6000881 (=> (not res!2504510) (not e!3667847))))

(declare-fun b!6000882 () Bool)

(declare-fun res!2504509 () Bool)

(declare-fun e!3667848 () Bool)

(assert (=> b!6000882 (=> res!2504509 e!3667848)))

(assert (=> b!6000882 (= res!2504509 (not ((_ is Concat!24856) lt!2318866)))))

(assert (=> b!6000882 (= e!3667851 e!3667848)))

(declare-fun b!6000883 () Bool)

(declare-fun e!3667850 () Bool)

(assert (=> b!6000883 (= e!3667850 e!3667849)))

(declare-fun c!1072307 () Bool)

(assert (=> b!6000883 (= c!1072307 ((_ is Star!16011) lt!2318866))))

(declare-fun bm!485049 () Bool)

(assert (=> bm!485049 (= call!485052 (validRegex!7747 (ite c!1072307 (reg!16340 lt!2318866) (ite c!1072306 (regOne!32535 lt!2318866) (regOne!32534 lt!2318866)))))))

(declare-fun b!6000884 () Bool)

(assert (=> b!6000884 (= e!3667845 call!485054)))

(declare-fun b!6000885 () Bool)

(declare-fun e!3667846 () Bool)

(assert (=> b!6000885 (= e!3667846 call!485054)))

(declare-fun b!6000886 () Bool)

(assert (=> b!6000886 (= e!3667847 call!485052)))

(declare-fun b!6000880 () Bool)

(assert (=> b!6000880 (= e!3667848 e!3667846)))

(declare-fun res!2504508 () Bool)

(assert (=> b!6000880 (=> (not res!2504508) (not e!3667846))))

(assert (=> b!6000880 (= res!2504508 call!485053)))

(declare-fun d!1881751 () Bool)

(declare-fun res!2504507 () Bool)

(assert (=> d!1881751 (=> res!2504507 e!3667850)))

(assert (=> d!1881751 (= res!2504507 ((_ is ElementMatch!16011) lt!2318866))))

(assert (=> d!1881751 (= (validRegex!7747 lt!2318866) e!3667850)))

(assert (= (and d!1881751 (not res!2504507)) b!6000883))

(assert (= (and b!6000883 c!1072307) b!6000881))

(assert (= (and b!6000883 (not c!1072307)) b!6000879))

(assert (= (and b!6000881 res!2504510) b!6000886))

(assert (= (and b!6000879 c!1072306) b!6000878))

(assert (= (and b!6000879 (not c!1072306)) b!6000882))

(assert (= (and b!6000878 res!2504511) b!6000884))

(assert (= (and b!6000882 (not res!2504509)) b!6000880))

(assert (= (and b!6000880 res!2504508) b!6000885))

(assert (= (or b!6000884 b!6000885) bm!485048))

(assert (= (or b!6000878 b!6000880) bm!485047))

(assert (= (or b!6000886 bm!485047) bm!485049))

(declare-fun m!6879120 () Bool)

(assert (=> bm!485048 m!6879120))

(declare-fun m!6879122 () Bool)

(assert (=> b!6000881 m!6879122))

(declare-fun m!6879124 () Bool)

(assert (=> bm!485049 m!6879124))

(assert (=> d!1881115 d!1881751))

(assert (=> d!1881115 d!1881071))

(assert (=> d!1881115 d!1881073))

(declare-fun d!1881753 () Bool)

(declare-fun c!1072308 () Bool)

(assert (=> d!1881753 (= c!1072308 (isEmpty!36106 (tail!11644 (t!377755 s!2326))))))

(declare-fun e!3667852 () Bool)

(assert (=> d!1881753 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318671 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))) e!3667852)))

(declare-fun b!6000887 () Bool)

(assert (=> b!6000887 (= e!3667852 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318671 (head!12559 (t!377755 s!2326)))))))

(declare-fun b!6000888 () Bool)

(assert (=> b!6000888 (= e!3667852 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318671 (head!12559 (t!377755 s!2326))) (head!12559 (tail!11644 (t!377755 s!2326)))) (tail!11644 (tail!11644 (t!377755 s!2326)))))))

(assert (= (and d!1881753 c!1072308) b!6000887))

(assert (= (and d!1881753 (not c!1072308)) b!6000888))

(assert (=> d!1881753 m!6877544))

(assert (=> d!1881753 m!6878638))

(assert (=> b!6000887 m!6877558))

(declare-fun m!6879126 () Bool)

(assert (=> b!6000887 m!6879126))

(assert (=> b!6000888 m!6877544))

(assert (=> b!6000888 m!6878642))

(assert (=> b!6000888 m!6877558))

(assert (=> b!6000888 m!6878642))

(declare-fun m!6879128 () Bool)

(assert (=> b!6000888 m!6879128))

(assert (=> b!6000888 m!6877544))

(assert (=> b!6000888 m!6878646))

(assert (=> b!6000888 m!6879128))

(assert (=> b!6000888 m!6878646))

(declare-fun m!6879130 () Bool)

(assert (=> b!6000888 m!6879130))

(assert (=> b!5999219 d!1881753))

(declare-fun bs!1454854 () Bool)

(declare-fun d!1881755 () Bool)

(assert (= bs!1454854 (and d!1881755 d!1881537)))

(declare-fun lambda!327587 () Int)

(assert (=> bs!1454854 (= lambda!327587 lambda!327546)))

(declare-fun bs!1454855 () Bool)

(assert (= bs!1454855 (and d!1881755 b!5998487)))

(assert (=> bs!1454855 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327587 lambda!327357))))

(declare-fun bs!1454856 () Bool)

(assert (= bs!1454856 (and d!1881755 d!1881749)))

(assert (=> bs!1454856 (= lambda!327587 lambda!327586)))

(declare-fun bs!1454857 () Bool)

(assert (= bs!1454857 (and d!1881755 d!1881067)))

(assert (=> bs!1454857 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327587 lambda!327453))))

(declare-fun bs!1454858 () Bool)

(assert (= bs!1454858 (and d!1881755 d!1881619)))

(assert (=> bs!1454858 (= (= (head!12559 (t!377755 s!2326)) (head!12559 s!2326)) (= lambda!327587 lambda!327554))))

(declare-fun bs!1454859 () Bool)

(assert (= bs!1454859 (and d!1881755 d!1881685)))

(assert (=> bs!1454859 (= lambda!327587 lambda!327567)))

(declare-fun bs!1454860 () Bool)

(assert (= bs!1454860 (and d!1881755 d!1881707)))

(assert (=> bs!1454860 (= lambda!327587 lambda!327569)))

(declare-fun bs!1454861 () Bool)

(assert (= bs!1454861 (and d!1881755 d!1881081)))

(assert (=> bs!1454861 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327587 lambda!327461))))

(declare-fun bs!1454862 () Bool)

(assert (= bs!1454862 (and d!1881755 d!1881055)))

(assert (=> bs!1454862 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327587 lambda!327452))))

(assert (=> d!1881755 true))

(assert (=> d!1881755 (= (derivationStepZipper!1992 lt!2318671 (head!12559 (t!377755 s!2326))) (flatMap!1524 lt!2318671 lambda!327587))))

(declare-fun bs!1454863 () Bool)

(assert (= bs!1454863 d!1881755))

(declare-fun m!6879132 () Bool)

(assert (=> bs!1454863 m!6879132))

(assert (=> b!5999219 d!1881755))

(assert (=> b!5999219 d!1881539))

(assert (=> b!5999219 d!1881541))

(declare-fun d!1881757 () Bool)

(assert (=> d!1881757 true))

(assert (=> d!1881757 true))

(declare-fun res!2504514 () Bool)

(assert (=> d!1881757 (= (choose!45008 lambda!327356) res!2504514)))

(assert (=> d!1881023 d!1881757))

(declare-fun d!1881759 () Bool)

(assert (=> d!1881759 true))

(declare-fun setRes!40693 () Bool)

(assert (=> d!1881759 setRes!40693))

(declare-fun condSetEmpty!40693 () Bool)

(declare-fun res!2504515 () (InoxSet Context!10790))

(assert (=> d!1881759 (= condSetEmpty!40693 (= res!2504515 ((as const (Array Context!10790 Bool)) false)))))

(assert (=> d!1881759 (= (choose!45004 lt!2318668 lambda!327357) res!2504515)))

(declare-fun setIsEmpty!40693 () Bool)

(assert (=> setIsEmpty!40693 setRes!40693))

(declare-fun setElem!40693 () Context!10790)

(declare-fun e!3667853 () Bool)

(declare-fun setNonEmpty!40693 () Bool)

(declare-fun tp!1668972 () Bool)

(assert (=> setNonEmpty!40693 (= setRes!40693 (and tp!1668972 (inv!83274 setElem!40693) e!3667853))))

(declare-fun setRest!40693 () (InoxSet Context!10790))

(assert (=> setNonEmpty!40693 (= res!2504515 ((_ map or) (store ((as const (Array Context!10790 Bool)) false) setElem!40693 true) setRest!40693))))

(declare-fun b!6000889 () Bool)

(declare-fun tp!1668973 () Bool)

(assert (=> b!6000889 (= e!3667853 tp!1668973)))

(assert (= (and d!1881759 condSetEmpty!40693) setIsEmpty!40693))

(assert (= (and d!1881759 (not condSetEmpty!40693)) setNonEmpty!40693))

(assert (= setNonEmpty!40693 b!6000889))

(declare-fun m!6879134 () Bool)

(assert (=> setNonEmpty!40693 m!6879134))

(assert (=> d!1881097 d!1881759))

(declare-fun b!6000891 () Bool)

(declare-fun e!3667859 () Bool)

(assert (=> b!6000891 (= e!3667859 (matchR!8194 (derivativeStep!4740 (derivativeStep!4740 lt!2318683 (head!12559 s!2326)) (head!12559 (tail!11644 s!2326))) (tail!11644 (tail!11644 s!2326))))))

(declare-fun b!6000892 () Bool)

(declare-fun e!3667858 () Bool)

(declare-fun e!3667860 () Bool)

(assert (=> b!6000892 (= e!3667858 e!3667860)))

(declare-fun res!2504520 () Bool)

(assert (=> b!6000892 (=> res!2504520 e!3667860)))

(declare-fun call!485055 () Bool)

(assert (=> b!6000892 (= res!2504520 call!485055)))

(declare-fun b!6000893 () Bool)

(declare-fun e!3667856 () Bool)

(declare-fun e!3667854 () Bool)

(assert (=> b!6000893 (= e!3667856 e!3667854)))

(declare-fun c!1072310 () Bool)

(assert (=> b!6000893 (= c!1072310 ((_ is EmptyLang!16011) (derivativeStep!4740 lt!2318683 (head!12559 s!2326))))))

(declare-fun b!6000894 () Bool)

(declare-fun res!2504517 () Bool)

(declare-fun e!3667855 () Bool)

(assert (=> b!6000894 (=> (not res!2504517) (not e!3667855))))

(assert (=> b!6000894 (= res!2504517 (not call!485055))))

(declare-fun b!6000895 () Bool)

(declare-fun res!2504519 () Bool)

(declare-fun e!3667857 () Bool)

(assert (=> b!6000895 (=> res!2504519 e!3667857)))

(assert (=> b!6000895 (= res!2504519 e!3667855)))

(declare-fun res!2504523 () Bool)

(assert (=> b!6000895 (=> (not res!2504523) (not e!3667855))))

(declare-fun lt!2318997 () Bool)

(assert (=> b!6000895 (= res!2504523 lt!2318997)))

(declare-fun bm!485050 () Bool)

(assert (=> bm!485050 (= call!485055 (isEmpty!36106 (tail!11644 s!2326)))))

(declare-fun b!6000896 () Bool)

(assert (=> b!6000896 (= e!3667854 (not lt!2318997))))

(declare-fun b!6000897 () Bool)

(declare-fun res!2504518 () Bool)

(assert (=> b!6000897 (=> res!2504518 e!3667857)))

(assert (=> b!6000897 (= res!2504518 (not ((_ is ElementMatch!16011) (derivativeStep!4740 lt!2318683 (head!12559 s!2326)))))))

(assert (=> b!6000897 (= e!3667854 e!3667857)))

(declare-fun b!6000898 () Bool)

(declare-fun res!2504516 () Bool)

(assert (=> b!6000898 (=> (not res!2504516) (not e!3667855))))

(assert (=> b!6000898 (= res!2504516 (isEmpty!36106 (tail!11644 (tail!11644 s!2326))))))

(declare-fun b!6000890 () Bool)

(assert (=> b!6000890 (= e!3667855 (= (head!12559 (tail!11644 s!2326)) (c!1071586 (derivativeStep!4740 lt!2318683 (head!12559 s!2326)))))))

(declare-fun d!1881761 () Bool)

(assert (=> d!1881761 e!3667856))

(declare-fun c!1072311 () Bool)

(assert (=> d!1881761 (= c!1072311 ((_ is EmptyExpr!16011) (derivativeStep!4740 lt!2318683 (head!12559 s!2326))))))

(assert (=> d!1881761 (= lt!2318997 e!3667859)))

(declare-fun c!1072309 () Bool)

(assert (=> d!1881761 (= c!1072309 (isEmpty!36106 (tail!11644 s!2326)))))

(assert (=> d!1881761 (validRegex!7747 (derivativeStep!4740 lt!2318683 (head!12559 s!2326)))))

(assert (=> d!1881761 (= (matchR!8194 (derivativeStep!4740 lt!2318683 (head!12559 s!2326)) (tail!11644 s!2326)) lt!2318997)))

(declare-fun b!6000899 () Bool)

(assert (=> b!6000899 (= e!3667857 e!3667858)))

(declare-fun res!2504521 () Bool)

(assert (=> b!6000899 (=> (not res!2504521) (not e!3667858))))

(assert (=> b!6000899 (= res!2504521 (not lt!2318997))))

(declare-fun b!6000900 () Bool)

(assert (=> b!6000900 (= e!3667859 (nullable!6006 (derivativeStep!4740 lt!2318683 (head!12559 s!2326))))))

(declare-fun b!6000901 () Bool)

(assert (=> b!6000901 (= e!3667860 (not (= (head!12559 (tail!11644 s!2326)) (c!1071586 (derivativeStep!4740 lt!2318683 (head!12559 s!2326))))))))

(declare-fun b!6000902 () Bool)

(declare-fun res!2504522 () Bool)

(assert (=> b!6000902 (=> res!2504522 e!3667860)))

(assert (=> b!6000902 (= res!2504522 (not (isEmpty!36106 (tail!11644 (tail!11644 s!2326)))))))

(declare-fun b!6000903 () Bool)

(assert (=> b!6000903 (= e!3667856 (= lt!2318997 call!485055))))

(assert (= (and d!1881761 c!1072309) b!6000900))

(assert (= (and d!1881761 (not c!1072309)) b!6000891))

(assert (= (and d!1881761 c!1072311) b!6000903))

(assert (= (and d!1881761 (not c!1072311)) b!6000893))

(assert (= (and b!6000893 c!1072310) b!6000896))

(assert (= (and b!6000893 (not c!1072310)) b!6000897))

(assert (= (and b!6000897 (not res!2504518)) b!6000895))

(assert (= (and b!6000895 res!2504523) b!6000894))

(assert (= (and b!6000894 res!2504517) b!6000898))

(assert (= (and b!6000898 res!2504516) b!6000890))

(assert (= (and b!6000895 (not res!2504519)) b!6000899))

(assert (= (and b!6000899 res!2504521) b!6000892))

(assert (= (and b!6000892 (not res!2504520)) b!6000902))

(assert (= (and b!6000902 (not res!2504522)) b!6000901))

(assert (= (or b!6000903 b!6000892 b!6000894) bm!485050))

(assert (=> b!6000891 m!6877516))

(assert (=> b!6000891 m!6878698))

(assert (=> b!6000891 m!6877514))

(assert (=> b!6000891 m!6878698))

(declare-fun m!6879136 () Bool)

(assert (=> b!6000891 m!6879136))

(assert (=> b!6000891 m!6877516))

(assert (=> b!6000891 m!6878702))

(assert (=> b!6000891 m!6879136))

(assert (=> b!6000891 m!6878702))

(declare-fun m!6879138 () Bool)

(assert (=> b!6000891 m!6879138))

(assert (=> d!1881761 m!6877516))

(assert (=> d!1881761 m!6877524))

(assert (=> d!1881761 m!6877514))

(declare-fun m!6879140 () Bool)

(assert (=> d!1881761 m!6879140))

(assert (=> b!6000898 m!6877516))

(assert (=> b!6000898 m!6878702))

(assert (=> b!6000898 m!6878702))

(assert (=> b!6000898 m!6878708))

(assert (=> b!6000890 m!6877516))

(assert (=> b!6000890 m!6878698))

(assert (=> b!6000901 m!6877516))

(assert (=> b!6000901 m!6878698))

(assert (=> bm!485050 m!6877516))

(assert (=> bm!485050 m!6877524))

(assert (=> b!6000902 m!6877516))

(assert (=> b!6000902 m!6878702))

(assert (=> b!6000902 m!6878702))

(assert (=> b!6000902 m!6878708))

(assert (=> b!6000900 m!6877514))

(declare-fun m!6879142 () Bool)

(assert (=> b!6000900 m!6879142))

(assert (=> b!5999193 d!1881761))

(declare-fun b!6000904 () Bool)

(declare-fun e!3667863 () Regex!16011)

(declare-fun call!485058 () Regex!16011)

(assert (=> b!6000904 (= e!3667863 (Union!16011 (Concat!24856 call!485058 (regTwo!32534 lt!2318683)) EmptyLang!16011))))

(declare-fun bm!485051 () Bool)

(declare-fun call!485059 () Regex!16011)

(assert (=> bm!485051 (= call!485058 call!485059)))

(declare-fun b!6000905 () Bool)

(declare-fun e!3667865 () Regex!16011)

(declare-fun call!485057 () Regex!16011)

(assert (=> b!6000905 (= e!3667865 (Concat!24856 call!485057 lt!2318683))))

(declare-fun b!6000906 () Bool)

(declare-fun e!3667864 () Regex!16011)

(assert (=> b!6000906 (= e!3667864 e!3667865)))

(declare-fun c!1072314 () Bool)

(assert (=> b!6000906 (= c!1072314 ((_ is Star!16011) lt!2318683))))

(declare-fun b!6000907 () Bool)

(declare-fun e!3667862 () Regex!16011)

(assert (=> b!6000907 (= e!3667862 (ite (= (head!12559 s!2326) (c!1071586 lt!2318683)) EmptyExpr!16011 EmptyLang!16011))))

(declare-fun b!6000908 () Bool)

(declare-fun e!3667861 () Regex!16011)

(assert (=> b!6000908 (= e!3667861 e!3667862)))

(declare-fun c!1072316 () Bool)

(assert (=> b!6000908 (= c!1072316 ((_ is ElementMatch!16011) lt!2318683))))

(declare-fun b!6000909 () Bool)

(assert (=> b!6000909 (= e!3667861 EmptyLang!16011)))

(declare-fun b!6000910 () Bool)

(declare-fun call!485056 () Regex!16011)

(assert (=> b!6000910 (= e!3667864 (Union!16011 call!485059 call!485056))))

(declare-fun b!6000911 () Bool)

(assert (=> b!6000911 (= e!3667863 (Union!16011 (Concat!24856 call!485057 (regTwo!32534 lt!2318683)) call!485058))))

(declare-fun bm!485052 () Bool)

(declare-fun c!1072312 () Bool)

(declare-fun c!1072313 () Bool)

(assert (=> bm!485052 (= call!485059 (derivativeStep!4740 (ite c!1072313 (regOne!32535 lt!2318683) (ite c!1072312 (regTwo!32534 lt!2318683) (regOne!32534 lt!2318683))) (head!12559 s!2326)))))

(declare-fun bm!485053 () Bool)

(assert (=> bm!485053 (= call!485057 call!485056)))

(declare-fun d!1881763 () Bool)

(declare-fun lt!2318998 () Regex!16011)

(assert (=> d!1881763 (validRegex!7747 lt!2318998)))

(assert (=> d!1881763 (= lt!2318998 e!3667861)))

(declare-fun c!1072315 () Bool)

(assert (=> d!1881763 (= c!1072315 (or ((_ is EmptyExpr!16011) lt!2318683) ((_ is EmptyLang!16011) lt!2318683)))))

(assert (=> d!1881763 (validRegex!7747 lt!2318683)))

(assert (=> d!1881763 (= (derivativeStep!4740 lt!2318683 (head!12559 s!2326)) lt!2318998)))

(declare-fun b!6000912 () Bool)

(assert (=> b!6000912 (= c!1072313 ((_ is Union!16011) lt!2318683))))

(assert (=> b!6000912 (= e!3667862 e!3667864)))

(declare-fun b!6000913 () Bool)

(assert (=> b!6000913 (= c!1072312 (nullable!6006 (regOne!32534 lt!2318683)))))

(assert (=> b!6000913 (= e!3667865 e!3667863)))

(declare-fun bm!485054 () Bool)

(assert (=> bm!485054 (= call!485056 (derivativeStep!4740 (ite c!1072313 (regTwo!32535 lt!2318683) (ite c!1072314 (reg!16340 lt!2318683) (regOne!32534 lt!2318683))) (head!12559 s!2326)))))

(assert (= (and d!1881763 c!1072315) b!6000909))

(assert (= (and d!1881763 (not c!1072315)) b!6000908))

(assert (= (and b!6000908 c!1072316) b!6000907))

(assert (= (and b!6000908 (not c!1072316)) b!6000912))

(assert (= (and b!6000912 c!1072313) b!6000910))

(assert (= (and b!6000912 (not c!1072313)) b!6000906))

(assert (= (and b!6000906 c!1072314) b!6000905))

(assert (= (and b!6000906 (not c!1072314)) b!6000913))

(assert (= (and b!6000913 c!1072312) b!6000911))

(assert (= (and b!6000913 (not c!1072312)) b!6000904))

(assert (= (or b!6000911 b!6000904) bm!485051))

(assert (= (or b!6000905 b!6000911) bm!485053))

(assert (= (or b!6000910 bm!485053) bm!485054))

(assert (= (or b!6000910 bm!485051) bm!485052))

(assert (=> bm!485052 m!6877512))

(declare-fun m!6879144 () Bool)

(assert (=> bm!485052 m!6879144))

(declare-fun m!6879146 () Bool)

(assert (=> d!1881763 m!6879146))

(assert (=> d!1881763 m!6877522))

(declare-fun m!6879148 () Bool)

(assert (=> b!6000913 m!6879148))

(assert (=> bm!485054 m!6877512))

(declare-fun m!6879150 () Bool)

(assert (=> bm!485054 m!6879150))

(assert (=> b!5999193 d!1881763))

(assert (=> b!5999193 d!1881545))

(assert (=> b!5999193 d!1881565))

(declare-fun bm!485055 () Bool)

(declare-fun call!485060 () (InoxSet Context!10790))

(declare-fun call!485062 () (InoxSet Context!10790))

(assert (=> bm!485055 (= call!485060 call!485062)))

(declare-fun b!6000915 () Bool)

(declare-fun c!1072318 () Bool)

(declare-fun e!3667868 () Bool)

(assert (=> b!6000915 (= c!1072318 e!3667868)))

(declare-fun res!2504524 () Bool)

(assert (=> b!6000915 (=> (not res!2504524) (not e!3667868))))

(assert (=> b!6000915 (= res!2504524 ((_ is Concat!24856) (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))))))

(declare-fun e!3667867 () (InoxSet Context!10790))

(declare-fun e!3667866 () (InoxSet Context!10790))

(assert (=> b!6000915 (= e!3667867 e!3667866)))

(declare-fun call!485064 () List!64332)

(declare-fun bm!485056 () Bool)

(declare-fun call!485063 () (InoxSet Context!10790))

(declare-fun c!1072320 () Bool)

(assert (=> bm!485056 (= call!485063 (derivationStepZipperDown!1261 (ite c!1072320 (regOne!32535 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))) (regOne!32534 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292)))) (ite c!1072320 (ite c!1071847 lt!2318656 (Context!10791 call!484684)) (Context!10791 call!485064)) (h!70658 s!2326)))))

(declare-fun b!6000916 () Bool)

(declare-fun e!3667871 () (InoxSet Context!10790))

(assert (=> b!6000916 (= e!3667871 call!485060)))

(declare-fun bm!485057 () Bool)

(declare-fun call!485065 () List!64332)

(assert (=> bm!485057 (= call!485065 call!485064)))

(declare-fun c!1072317 () Bool)

(declare-fun bm!485058 () Bool)

(assert (=> bm!485058 (= call!485064 ($colon$colon!1896 (exprs!5895 (ite c!1071847 lt!2318656 (Context!10791 call!484684))) (ite (or c!1072318 c!1072317) (regTwo!32534 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))) (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))

(declare-fun call!485061 () (InoxSet Context!10790))

(declare-fun bm!485059 () Bool)

(assert (=> bm!485059 (= call!485061 (derivationStepZipperDown!1261 (ite c!1072320 (regTwo!32535 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))) (ite c!1072318 (regTwo!32534 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))) (ite c!1072317 (regOne!32534 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))) (reg!16340 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292)))))) (ite (or c!1072320 c!1072318) (ite c!1071847 lt!2318656 (Context!10791 call!484684)) (Context!10791 call!485065)) (h!70658 s!2326)))))

(declare-fun b!6000917 () Bool)

(assert (=> b!6000917 (= e!3667867 ((_ map or) call!485063 call!485061))))

(declare-fun b!6000918 () Bool)

(declare-fun c!1072321 () Bool)

(assert (=> b!6000918 (= c!1072321 ((_ is Star!16011) (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))))))

(declare-fun e!3667870 () (InoxSet Context!10790))

(assert (=> b!6000918 (= e!3667871 e!3667870)))

(declare-fun bm!485060 () Bool)

(assert (=> bm!485060 (= call!485062 call!485061)))

(declare-fun b!6000919 () Bool)

(declare-fun e!3667869 () (InoxSet Context!10790))

(assert (=> b!6000919 (= e!3667869 e!3667867)))

(assert (=> b!6000919 (= c!1072320 ((_ is Union!16011) (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))))))

(declare-fun d!1881765 () Bool)

(declare-fun c!1072319 () Bool)

(assert (=> d!1881765 (= c!1072319 (and ((_ is ElementMatch!16011) (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))) (= (c!1071586 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))) (h!70658 s!2326))))))

(assert (=> d!1881765 (= (derivationStepZipperDown!1261 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292)) (ite c!1071847 lt!2318656 (Context!10791 call!484684)) (h!70658 s!2326)) e!3667869)))

(declare-fun b!6000914 () Bool)

(assert (=> b!6000914 (= e!3667870 call!485060)))

(declare-fun b!6000920 () Bool)

(assert (=> b!6000920 (= e!3667866 ((_ map or) call!485063 call!485062))))

(declare-fun b!6000921 () Bool)

(assert (=> b!6000921 (= e!3667870 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000922 () Bool)

(assert (=> b!6000922 (= e!3667869 (store ((as const (Array Context!10790 Bool)) false) (ite c!1071847 lt!2318656 (Context!10791 call!484684)) true))))

(declare-fun b!6000923 () Bool)

(assert (=> b!6000923 (= e!3667866 e!3667871)))

(assert (=> b!6000923 (= c!1072317 ((_ is Concat!24856) (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292))))))

(declare-fun b!6000924 () Bool)

(assert (=> b!6000924 (= e!3667868 (nullable!6006 (regOne!32534 (ite c!1071847 (regOne!32535 r!7292) (regOne!32534 r!7292)))))))

(assert (= (and d!1881765 c!1072319) b!6000922))

(assert (= (and d!1881765 (not c!1072319)) b!6000919))

(assert (= (and b!6000919 c!1072320) b!6000917))

(assert (= (and b!6000919 (not c!1072320)) b!6000915))

(assert (= (and b!6000915 res!2504524) b!6000924))

(assert (= (and b!6000915 c!1072318) b!6000920))

(assert (= (and b!6000915 (not c!1072318)) b!6000923))

(assert (= (and b!6000923 c!1072317) b!6000916))

(assert (= (and b!6000923 (not c!1072317)) b!6000918))

(assert (= (and b!6000918 c!1072321) b!6000914))

(assert (= (and b!6000918 (not c!1072321)) b!6000921))

(assert (= (or b!6000916 b!6000914) bm!485057))

(assert (= (or b!6000916 b!6000914) bm!485055))

(assert (= (or b!6000920 bm!485057) bm!485058))

(assert (= (or b!6000920 bm!485055) bm!485060))

(assert (= (or b!6000917 bm!485060) bm!485059))

(assert (= (or b!6000917 b!6000920) bm!485056))

(declare-fun m!6879152 () Bool)

(assert (=> b!6000924 m!6879152))

(declare-fun m!6879154 () Bool)

(assert (=> bm!485056 m!6879154))

(declare-fun m!6879156 () Bool)

(assert (=> b!6000922 m!6879156))

(declare-fun m!6879158 () Bool)

(assert (=> bm!485058 m!6879158))

(declare-fun m!6879160 () Bool)

(assert (=> bm!485059 m!6879160))

(assert (=> bm!484676 d!1881765))

(declare-fun d!1881767 () Bool)

(declare-fun c!1072322 () Bool)

(assert (=> d!1881767 (= c!1072322 (isEmpty!36106 (tail!11644 s!2326)))))

(declare-fun e!3667872 () Bool)

(assert (=> d!1881767 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318676 (head!12559 s!2326)) (tail!11644 s!2326)) e!3667872)))

(declare-fun b!6000925 () Bool)

(assert (=> b!6000925 (= e!3667872 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318676 (head!12559 s!2326))))))

(declare-fun b!6000926 () Bool)

(assert (=> b!6000926 (= e!3667872 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318676 (head!12559 s!2326)) (head!12559 (tail!11644 s!2326))) (tail!11644 (tail!11644 s!2326))))))

(assert (= (and d!1881767 c!1072322) b!6000925))

(assert (= (and d!1881767 (not c!1072322)) b!6000926))

(assert (=> d!1881767 m!6877516))

(assert (=> d!1881767 m!6877524))

(assert (=> b!6000925 m!6877582))

(declare-fun m!6879162 () Bool)

(assert (=> b!6000925 m!6879162))

(assert (=> b!6000926 m!6877516))

(assert (=> b!6000926 m!6878698))

(assert (=> b!6000926 m!6877582))

(assert (=> b!6000926 m!6878698))

(declare-fun m!6879164 () Bool)

(assert (=> b!6000926 m!6879164))

(assert (=> b!6000926 m!6877516))

(assert (=> b!6000926 m!6878702))

(assert (=> b!6000926 m!6879164))

(assert (=> b!6000926 m!6878702))

(declare-fun m!6879166 () Bool)

(assert (=> b!6000926 m!6879166))

(assert (=> b!5999228 d!1881767))

(declare-fun bs!1454864 () Bool)

(declare-fun d!1881769 () Bool)

(assert (= bs!1454864 (and d!1881769 d!1881537)))

(declare-fun lambda!327588 () Int)

(assert (=> bs!1454864 (= (= (head!12559 s!2326) (head!12559 (t!377755 s!2326))) (= lambda!327588 lambda!327546))))

(declare-fun bs!1454865 () Bool)

(assert (= bs!1454865 (and d!1881769 b!5998487)))

(assert (=> bs!1454865 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327588 lambda!327357))))

(declare-fun bs!1454866 () Bool)

(assert (= bs!1454866 (and d!1881769 d!1881755)))

(assert (=> bs!1454866 (= (= (head!12559 s!2326) (head!12559 (t!377755 s!2326))) (= lambda!327588 lambda!327587))))

(declare-fun bs!1454867 () Bool)

(assert (= bs!1454867 (and d!1881769 d!1881749)))

(assert (=> bs!1454867 (= (= (head!12559 s!2326) (head!12559 (t!377755 s!2326))) (= lambda!327588 lambda!327586))))

(declare-fun bs!1454868 () Bool)

(assert (= bs!1454868 (and d!1881769 d!1881067)))

(assert (=> bs!1454868 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327588 lambda!327453))))

(declare-fun bs!1454869 () Bool)

(assert (= bs!1454869 (and d!1881769 d!1881619)))

(assert (=> bs!1454869 (= lambda!327588 lambda!327554)))

(declare-fun bs!1454870 () Bool)

(assert (= bs!1454870 (and d!1881769 d!1881685)))

(assert (=> bs!1454870 (= (= (head!12559 s!2326) (head!12559 (t!377755 s!2326))) (= lambda!327588 lambda!327567))))

(declare-fun bs!1454871 () Bool)

(assert (= bs!1454871 (and d!1881769 d!1881707)))

(assert (=> bs!1454871 (= (= (head!12559 s!2326) (head!12559 (t!377755 s!2326))) (= lambda!327588 lambda!327569))))

(declare-fun bs!1454872 () Bool)

(assert (= bs!1454872 (and d!1881769 d!1881081)))

(assert (=> bs!1454872 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327588 lambda!327461))))

(declare-fun bs!1454873 () Bool)

(assert (= bs!1454873 (and d!1881769 d!1881055)))

(assert (=> bs!1454873 (= (= (head!12559 s!2326) (h!70658 s!2326)) (= lambda!327588 lambda!327452))))

(assert (=> d!1881769 true))

(assert (=> d!1881769 (= (derivationStepZipper!1992 lt!2318676 (head!12559 s!2326)) (flatMap!1524 lt!2318676 lambda!327588))))

(declare-fun bs!1454874 () Bool)

(assert (= bs!1454874 d!1881769))

(declare-fun m!6879168 () Bool)

(assert (=> bs!1454874 m!6879168))

(assert (=> b!5999228 d!1881769))

(assert (=> b!5999228 d!1881545))

(assert (=> b!5999228 d!1881565))

(declare-fun bs!1454875 () Bool)

(declare-fun d!1881771 () Bool)

(assert (= bs!1454875 (and d!1881771 b!5999084)))

(declare-fun lambda!327589 () Int)

(assert (=> bs!1454875 (not (= lambda!327589 lambda!327440))))

(declare-fun bs!1454876 () Bool)

(assert (= bs!1454876 (and d!1881771 b!5999082)))

(assert (=> bs!1454876 (not (= lambda!327589 lambda!327439))))

(declare-fun bs!1454877 () Bool)

(assert (= bs!1454877 (and d!1881771 b!5999092)))

(assert (=> bs!1454877 (not (= lambda!327589 lambda!327446))))

(declare-fun bs!1454878 () Bool)

(assert (= bs!1454878 (and d!1881771 b!6000823)))

(assert (=> bs!1454878 (not (= lambda!327589 lambda!327581))))

(declare-fun bs!1454879 () Bool)

(assert (= bs!1454879 (and d!1881771 b!5999087)))

(assert (=> bs!1454879 (not (= lambda!327589 lambda!327442))))

(declare-fun bs!1454880 () Bool)

(assert (= bs!1454880 (and d!1881771 d!1881727)))

(assert (=> bs!1454880 (not (= lambda!327589 lambda!327578))))

(declare-fun bs!1454881 () Bool)

(assert (= bs!1454881 (and d!1881771 b!5999090)))

(assert (=> bs!1454881 (not (= lambda!327589 lambda!327445))))

(declare-fun bs!1454882 () Bool)

(assert (= bs!1454882 (and d!1881771 d!1881529)))

(assert (=> bs!1454882 (= lambda!327589 lambda!327545)))

(declare-fun bs!1454883 () Bool)

(assert (= bs!1454883 (and d!1881771 b!6000821)))

(assert (=> bs!1454883 (not (= lambda!327589 lambda!327580))))

(declare-fun bs!1454884 () Bool)

(assert (= bs!1454884 (and d!1881771 b!5999089)))

(assert (=> bs!1454884 (not (= lambda!327589 lambda!327443))))

(declare-fun bs!1454885 () Bool)

(assert (= bs!1454885 (and d!1881771 d!1881695)))

(assert (=> bs!1454885 (= lambda!327589 lambda!327568)))

(declare-fun bs!1454886 () Bool)

(assert (= bs!1454886 (and d!1881771 d!1881629)))

(assert (=> bs!1454886 (= lambda!327589 lambda!327555)))

(assert (=> d!1881771 (= (nullableZipper!1816 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326))) (exists!2372 (derivationStepZipper!1992 lt!2318676 (h!70658 s!2326)) lambda!327589))))

(declare-fun bs!1454887 () Bool)

(assert (= bs!1454887 d!1881771))

(assert (=> bs!1454887 m!6876928))

(declare-fun m!6879170 () Bool)

(assert (=> bs!1454887 m!6879170))

(assert (=> b!5999225 d!1881771))

(declare-fun d!1881773 () Bool)

(assert (=> d!1881773 (= (maxBigInt!0 (contextDepth!159 (h!70657 lt!2318664)) (zipperDepth!260 (t!377754 lt!2318664))) (ite (>= (contextDepth!159 (h!70657 lt!2318664)) (zipperDepth!260 (t!377754 lt!2318664))) (contextDepth!159 (h!70657 lt!2318664)) (zipperDepth!260 (t!377754 lt!2318664))))))

(assert (=> b!5999090 d!1881773))

(declare-fun bs!1454888 () Bool)

(declare-fun d!1881775 () Bool)

(assert (= bs!1454888 (and d!1881775 b!5999084)))

(declare-fun lambda!327590 () Int)

(assert (=> bs!1454888 (not (= lambda!327590 lambda!327440))))

(declare-fun bs!1454889 () Bool)

(assert (= bs!1454889 (and d!1881775 b!5999082)))

(assert (=> bs!1454889 (not (= lambda!327590 lambda!327439))))

(declare-fun bs!1454890 () Bool)

(assert (= bs!1454890 (and d!1881775 b!5999092)))

(assert (=> bs!1454890 (not (= lambda!327590 lambda!327446))))

(declare-fun bs!1454891 () Bool)

(assert (= bs!1454891 (and d!1881775 d!1881771)))

(assert (=> bs!1454891 (not (= lambda!327590 lambda!327589))))

(declare-fun bs!1454892 () Bool)

(assert (= bs!1454892 (and d!1881775 b!6000823)))

(assert (=> bs!1454892 (not (= lambda!327590 lambda!327581))))

(declare-fun bs!1454893 () Bool)

(assert (= bs!1454893 (and d!1881775 b!5999087)))

(assert (=> bs!1454893 (not (= lambda!327590 lambda!327442))))

(declare-fun bs!1454894 () Bool)

(assert (= bs!1454894 (and d!1881775 d!1881727)))

(assert (=> bs!1454894 (= (and (= lt!2318826 lt!2318822) (= lambda!327444 lambda!327441)) (= lambda!327590 lambda!327578))))

(declare-fun bs!1454895 () Bool)

(assert (= bs!1454895 (and d!1881775 b!5999090)))

(assert (=> bs!1454895 (not (= lambda!327590 lambda!327445))))

(declare-fun bs!1454896 () Bool)

(assert (= bs!1454896 (and d!1881775 d!1881529)))

(assert (=> bs!1454896 (not (= lambda!327590 lambda!327545))))

(declare-fun bs!1454897 () Bool)

(assert (= bs!1454897 (and d!1881775 b!6000821)))

(assert (=> bs!1454897 (not (= lambda!327590 lambda!327580))))

(declare-fun bs!1454898 () Bool)

(assert (= bs!1454898 (and d!1881775 b!5999089)))

(assert (=> bs!1454898 (not (= lambda!327590 lambda!327443))))

(declare-fun bs!1454899 () Bool)

(assert (= bs!1454899 (and d!1881775 d!1881695)))

(assert (=> bs!1454899 (not (= lambda!327590 lambda!327568))))

(declare-fun bs!1454900 () Bool)

(assert (= bs!1454900 (and d!1881775 d!1881629)))

(assert (=> bs!1454900 (not (= lambda!327590 lambda!327555))))

(assert (=> d!1881775 true))

(assert (=> d!1881775 true))

(assert (=> d!1881775 (< (dynLambda!25174 order!27297 lambda!327444) (dynLambda!25175 order!27299 lambda!327590))))

(assert (=> d!1881775 (forall!15110 (t!377754 lt!2318664) lambda!327590)))

(declare-fun lt!2318999 () Unit!157293)

(assert (=> d!1881775 (= lt!2318999 (choose!45019 (t!377754 lt!2318664) lt!2318826 (zipperDepth!260 (t!377754 lt!2318664)) lambda!327444))))

(assert (=> d!1881775 (>= lt!2318826 (zipperDepth!260 (t!377754 lt!2318664)))))

(assert (=> d!1881775 (= (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 lt!2318664) lt!2318826 (zipperDepth!260 (t!377754 lt!2318664)) lambda!327444) lt!2318999)))

(declare-fun bs!1454901 () Bool)

(assert (= bs!1454901 d!1881775))

(declare-fun m!6879172 () Bool)

(assert (=> bs!1454901 m!6879172))

(assert (=> bs!1454901 m!6877476))

(declare-fun m!6879174 () Bool)

(assert (=> bs!1454901 m!6879174))

(assert (=> b!5999090 d!1881775))

(declare-fun bs!1454902 () Bool)

(declare-fun b!6000927 () Bool)

(assert (= bs!1454902 (and b!6000927 b!5999365)))

(declare-fun lt!2319000 () Int)

(declare-fun lambda!327591 () Int)

(assert (=> bs!1454902 (= (= lt!2319000 lt!2318859) (= lambda!327591 lambda!327471))))

(declare-fun bs!1454903 () Bool)

(assert (= bs!1454903 (and b!6000927 b!5999017)))

(assert (=> bs!1454903 (= (= lt!2319000 lt!2318786) (= lambda!327591 lambda!327421))))

(declare-fun bs!1454904 () Bool)

(assert (= bs!1454904 (and b!6000927 d!1881667)))

(assert (=> bs!1454904 (= (= lt!2319000 lt!2318786) (= lambda!327591 lambda!327563))))

(declare-fun bs!1454905 () Bool)

(assert (= bs!1454905 (and b!6000927 b!5999362)))

(assert (=> bs!1454905 (= (= lt!2319000 lt!2318855) (= lambda!327591 lambda!327469))))

(declare-fun bs!1454906 () Bool)

(assert (= bs!1454906 (and b!6000927 b!5999019)))

(assert (=> bs!1454906 (= (= lt!2319000 lt!2318787) (= lambda!327591 lambda!327422))))

(declare-fun bs!1454907 () Bool)

(assert (= bs!1454907 (and b!6000927 d!1881713)))

(assert (=> bs!1454907 (= (= lt!2319000 lt!2318858) (= lambda!327591 lambda!327570))))

(declare-fun bs!1454908 () Bool)

(assert (= bs!1454908 (and b!6000927 b!6000824)))

(assert (=> bs!1454908 (= (= lt!2319000 lt!2318991) (= lambda!327591 lambda!327582))))

(declare-fun bs!1454909 () Bool)

(assert (= bs!1454909 (and b!6000927 d!1881657)))

(assert (=> bs!1454909 (not (= lambda!327591 lambda!327562))))

(declare-fun bs!1454910 () Bool)

(assert (= bs!1454910 (and b!6000927 b!6000747)))

(assert (=> bs!1454910 (= (= lt!2319000 lt!2318973) (= lambda!327591 lambda!327564))))

(declare-fun bs!1454911 () Bool)

(assert (= bs!1454911 (and b!6000927 b!6000494)))

(assert (=> bs!1454911 (= (= lt!2319000 lt!2318955) (= lambda!327591 lambda!327547))))

(declare-fun bs!1454912 () Bool)

(assert (= bs!1454912 (and b!6000927 d!1881071)))

(assert (=> bs!1454912 (not (= lambda!327591 lambda!327456))))

(declare-fun bs!1454913 () Bool)

(assert (= bs!1454913 (and b!6000927 b!5999363)))

(assert (=> bs!1454913 (= (= lt!2319000 lt!2318858) (= lambda!327591 lambda!327470))))

(declare-fun bs!1454914 () Bool)

(assert (= bs!1454914 (and b!6000927 b!6000749)))

(assert (=> bs!1454914 (= (= lt!2319000 lt!2318974) (= lambda!327591 lambda!327565))))

(declare-fun bs!1454915 () Bool)

(assert (= bs!1454915 (and b!6000927 d!1881577)))

(assert (=> bs!1454915 (= (= lt!2319000 lt!2318854) (= lambda!327591 lambda!327551))))

(declare-fun bs!1454916 () Bool)

(assert (= bs!1454916 (and b!6000927 d!1881117)))

(assert (=> bs!1454916 (not (= lambda!327591 lambda!327475))))

(declare-fun bs!1454917 () Bool)

(assert (= bs!1454917 (and b!6000927 b!6000496)))

(assert (=> bs!1454917 (= (= lt!2319000 lt!2318956) (= lambda!327591 lambda!327548))))

(declare-fun bs!1454918 () Bool)

(assert (= bs!1454918 (and b!6000927 d!1881075)))

(assert (=> bs!1454918 (not (= lambda!327591 lambda!327460))))

(declare-fun bs!1454919 () Bool)

(assert (= bs!1454919 (and b!6000927 d!1881045)))

(assert (=> bs!1454919 (not (= lambda!327591 lambda!327449))))

(declare-fun bs!1454920 () Bool)

(assert (= bs!1454920 (and b!6000927 b!6000790)))

(assert (=> bs!1454920 (= (= lt!2319000 lt!2318979) (= lambda!327591 lambda!327571))))

(declare-fun bs!1454921 () Bool)

(assert (= bs!1454921 (and b!6000927 d!1881073)))

(assert (=> bs!1454921 (not (= lambda!327591 lambda!327459))))

(declare-fun bs!1454922 () Bool)

(assert (= bs!1454922 (and b!6000927 d!1881677)))

(assert (=> bs!1454922 (not (= lambda!327591 lambda!327566))))

(declare-fun bs!1454923 () Bool)

(assert (= bs!1454923 (and b!6000927 b!6000792)))

(assert (=> bs!1454923 (= (= lt!2319000 lt!2318980) (= lambda!327591 lambda!327572))))

(declare-fun bs!1454924 () Bool)

(assert (= bs!1454924 (and b!6000927 b!5999360)))

(assert (=> bs!1454924 (= (= lt!2319000 lt!2318854) (= lambda!327591 lambda!327468))))

(declare-fun bs!1454925 () Bool)

(assert (= bs!1454925 (and b!6000927 b!6000826)))

(assert (=> bs!1454925 (= (= lt!2319000 lt!2318992) (= lambda!327591 lambda!327583))))

(declare-fun bs!1454926 () Bool)

(assert (= bs!1454926 (and b!6000927 d!1881093)))

(assert (=> bs!1454926 (not (= lambda!327591 lambda!327472))))

(assert (=> b!6000927 true))

(declare-fun bs!1454927 () Bool)

(declare-fun b!6000929 () Bool)

(assert (= bs!1454927 (and b!6000929 b!5999365)))

(declare-fun lambda!327592 () Int)

(declare-fun lt!2319001 () Int)

(assert (=> bs!1454927 (= (= lt!2319001 lt!2318859) (= lambda!327592 lambda!327471))))

(declare-fun bs!1454928 () Bool)

(assert (= bs!1454928 (and b!6000929 b!5999017)))

(assert (=> bs!1454928 (= (= lt!2319001 lt!2318786) (= lambda!327592 lambda!327421))))

(declare-fun bs!1454929 () Bool)

(assert (= bs!1454929 (and b!6000929 b!6000927)))

(assert (=> bs!1454929 (= (= lt!2319001 lt!2319000) (= lambda!327592 lambda!327591))))

(declare-fun bs!1454930 () Bool)

(assert (= bs!1454930 (and b!6000929 d!1881667)))

(assert (=> bs!1454930 (= (= lt!2319001 lt!2318786) (= lambda!327592 lambda!327563))))

(declare-fun bs!1454931 () Bool)

(assert (= bs!1454931 (and b!6000929 b!5999362)))

(assert (=> bs!1454931 (= (= lt!2319001 lt!2318855) (= lambda!327592 lambda!327469))))

(declare-fun bs!1454932 () Bool)

(assert (= bs!1454932 (and b!6000929 b!5999019)))

(assert (=> bs!1454932 (= (= lt!2319001 lt!2318787) (= lambda!327592 lambda!327422))))

(declare-fun bs!1454933 () Bool)

(assert (= bs!1454933 (and b!6000929 d!1881713)))

(assert (=> bs!1454933 (= (= lt!2319001 lt!2318858) (= lambda!327592 lambda!327570))))

(declare-fun bs!1454934 () Bool)

(assert (= bs!1454934 (and b!6000929 b!6000824)))

(assert (=> bs!1454934 (= (= lt!2319001 lt!2318991) (= lambda!327592 lambda!327582))))

(declare-fun bs!1454935 () Bool)

(assert (= bs!1454935 (and b!6000929 d!1881657)))

(assert (=> bs!1454935 (not (= lambda!327592 lambda!327562))))

(declare-fun bs!1454936 () Bool)

(assert (= bs!1454936 (and b!6000929 b!6000747)))

(assert (=> bs!1454936 (= (= lt!2319001 lt!2318973) (= lambda!327592 lambda!327564))))

(declare-fun bs!1454937 () Bool)

(assert (= bs!1454937 (and b!6000929 b!6000494)))

(assert (=> bs!1454937 (= (= lt!2319001 lt!2318955) (= lambda!327592 lambda!327547))))

(declare-fun bs!1454938 () Bool)

(assert (= bs!1454938 (and b!6000929 d!1881071)))

(assert (=> bs!1454938 (not (= lambda!327592 lambda!327456))))

(declare-fun bs!1454939 () Bool)

(assert (= bs!1454939 (and b!6000929 b!5999363)))

(assert (=> bs!1454939 (= (= lt!2319001 lt!2318858) (= lambda!327592 lambda!327470))))

(declare-fun bs!1454940 () Bool)

(assert (= bs!1454940 (and b!6000929 b!6000749)))

(assert (=> bs!1454940 (= (= lt!2319001 lt!2318974) (= lambda!327592 lambda!327565))))

(declare-fun bs!1454941 () Bool)

(assert (= bs!1454941 (and b!6000929 d!1881577)))

(assert (=> bs!1454941 (= (= lt!2319001 lt!2318854) (= lambda!327592 lambda!327551))))

(declare-fun bs!1454942 () Bool)

(assert (= bs!1454942 (and b!6000929 d!1881117)))

(assert (=> bs!1454942 (not (= lambda!327592 lambda!327475))))

(declare-fun bs!1454943 () Bool)

(assert (= bs!1454943 (and b!6000929 b!6000496)))

(assert (=> bs!1454943 (= (= lt!2319001 lt!2318956) (= lambda!327592 lambda!327548))))

(declare-fun bs!1454944 () Bool)

(assert (= bs!1454944 (and b!6000929 d!1881075)))

(assert (=> bs!1454944 (not (= lambda!327592 lambda!327460))))

(declare-fun bs!1454945 () Bool)

(assert (= bs!1454945 (and b!6000929 d!1881045)))

(assert (=> bs!1454945 (not (= lambda!327592 lambda!327449))))

(declare-fun bs!1454946 () Bool)

(assert (= bs!1454946 (and b!6000929 b!6000790)))

(assert (=> bs!1454946 (= (= lt!2319001 lt!2318979) (= lambda!327592 lambda!327571))))

(declare-fun bs!1454947 () Bool)

(assert (= bs!1454947 (and b!6000929 d!1881073)))

(assert (=> bs!1454947 (not (= lambda!327592 lambda!327459))))

(declare-fun bs!1454948 () Bool)

(assert (= bs!1454948 (and b!6000929 d!1881677)))

(assert (=> bs!1454948 (not (= lambda!327592 lambda!327566))))

(declare-fun bs!1454949 () Bool)

(assert (= bs!1454949 (and b!6000929 b!6000792)))

(assert (=> bs!1454949 (= (= lt!2319001 lt!2318980) (= lambda!327592 lambda!327572))))

(declare-fun bs!1454950 () Bool)

(assert (= bs!1454950 (and b!6000929 b!5999360)))

(assert (=> bs!1454950 (= (= lt!2319001 lt!2318854) (= lambda!327592 lambda!327468))))

(declare-fun bs!1454951 () Bool)

(assert (= bs!1454951 (and b!6000929 b!6000826)))

(assert (=> bs!1454951 (= (= lt!2319001 lt!2318992) (= lambda!327592 lambda!327583))))

(declare-fun bs!1454952 () Bool)

(assert (= bs!1454952 (and b!6000929 d!1881093)))

(assert (=> bs!1454952 (not (= lambda!327592 lambda!327472))))

(assert (=> b!6000929 true))

(declare-fun d!1881777 () Bool)

(declare-fun e!3667874 () Bool)

(assert (=> d!1881777 e!3667874))

(declare-fun res!2504525 () Bool)

(assert (=> d!1881777 (=> (not res!2504525) (not e!3667874))))

(assert (=> d!1881777 (= res!2504525 (>= lt!2319001 0))))

(declare-fun e!3667873 () Int)

(assert (=> d!1881777 (= lt!2319001 e!3667873)))

(declare-fun c!1072323 () Bool)

(assert (=> d!1881777 (= c!1072323 ((_ is Cons!64208) (exprs!5895 (h!70657 lt!2318664))))))

(assert (=> d!1881777 (= (contextDepth!159 (h!70657 lt!2318664)) lt!2319001)))

(assert (=> b!6000927 (= e!3667873 lt!2319000)))

(assert (=> b!6000927 (= lt!2319000 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 (h!70657 lt!2318664)))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (h!70657 lt!2318664)))))))))

(declare-fun lt!2319003 () Unit!157293)

(assert (=> b!6000927 (= lt!2319003 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 (h!70657 lt!2318664))) lt!2319000 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (h!70657 lt!2318664)))))))))

(assert (=> b!6000927 (forall!15109 (t!377753 (exprs!5895 (h!70657 lt!2318664))) lambda!327591)))

(declare-fun lt!2319002 () Unit!157293)

(assert (=> b!6000927 (= lt!2319002 lt!2319003)))

(declare-fun b!6000928 () Bool)

(assert (=> b!6000928 (= e!3667873 0)))

(assert (=> b!6000929 (= e!3667874 (forall!15109 (exprs!5895 (h!70657 lt!2318664)) lambda!327592))))

(assert (= (and d!1881777 c!1072323) b!6000927))

(assert (= (and d!1881777 (not c!1072323)) b!6000928))

(assert (= (and d!1881777 res!2504525) b!6000929))

(declare-fun m!6879176 () Bool)

(assert (=> b!6000927 m!6879176))

(declare-fun m!6879178 () Bool)

(assert (=> b!6000927 m!6879178))

(declare-fun m!6879180 () Bool)

(assert (=> b!6000927 m!6879180))

(assert (=> b!6000927 m!6879178))

(declare-fun m!6879182 () Bool)

(assert (=> b!6000927 m!6879182))

(assert (=> b!6000927 m!6879178))

(declare-fun m!6879184 () Bool)

(assert (=> b!6000927 m!6879184))

(assert (=> b!6000927 m!6879176))

(declare-fun m!6879186 () Bool)

(assert (=> b!6000929 m!6879186))

(assert (=> b!5999090 d!1881777))

(declare-fun d!1881779 () Bool)

(declare-fun res!2504526 () Bool)

(declare-fun e!3667875 () Bool)

(assert (=> d!1881779 (=> res!2504526 e!3667875)))

(assert (=> d!1881779 (= res!2504526 ((_ is Nil!64209) (t!377754 lt!2318664)))))

(assert (=> d!1881779 (= (forall!15110 (t!377754 lt!2318664) lambda!327445) e!3667875)))

(declare-fun b!6000930 () Bool)

(declare-fun e!3667876 () Bool)

(assert (=> b!6000930 (= e!3667875 e!3667876)))

(declare-fun res!2504527 () Bool)

(assert (=> b!6000930 (=> (not res!2504527) (not e!3667876))))

(assert (=> b!6000930 (= res!2504527 (dynLambda!25173 lambda!327445 (h!70657 (t!377754 lt!2318664))))))

(declare-fun b!6000931 () Bool)

(assert (=> b!6000931 (= e!3667876 (forall!15110 (t!377754 (t!377754 lt!2318664)) lambda!327445))))

(assert (= (and d!1881779 (not res!2504526)) b!6000930))

(assert (= (and b!6000930 res!2504527) b!6000931))

(declare-fun b_lambda!226825 () Bool)

(assert (=> (not b_lambda!226825) (not b!6000930)))

(declare-fun m!6879188 () Bool)

(assert (=> b!6000930 m!6879188))

(declare-fun m!6879190 () Bool)

(assert (=> b!6000931 m!6879190))

(assert (=> b!5999090 d!1881779))

(declare-fun bs!1454953 () Bool)

(declare-fun b!6000932 () Bool)

(assert (= bs!1454953 (and b!6000932 b!5999082)))

(declare-fun lambda!327593 () Int)

(assert (=> bs!1454953 (= lambda!327593 lambda!327438)))

(declare-fun bs!1454954 () Bool)

(assert (= bs!1454954 (and b!6000932 b!5999087)))

(assert (=> bs!1454954 (= lambda!327593 lambda!327441)))

(declare-fun bs!1454955 () Bool)

(assert (= bs!1454955 (and b!6000932 b!5999090)))

(assert (=> bs!1454955 (= lambda!327593 lambda!327444)))

(declare-fun bs!1454956 () Bool)

(assert (= bs!1454956 (and b!6000932 b!6000821)))

(assert (=> bs!1454956 (= lambda!327593 lambda!327579)))

(declare-fun bs!1454957 () Bool)

(assert (= bs!1454957 (and b!6000932 b!5999084)))

(declare-fun lambda!327594 () Int)

(declare-fun lt!2319006 () Int)

(assert (=> bs!1454957 (= (= lt!2319006 lt!2318816) (= lambda!327594 lambda!327440))))

(assert (=> bs!1454953 (= (= lt!2319006 lt!2318818) (= lambda!327594 lambda!327439))))

(declare-fun bs!1454958 () Bool)

(assert (= bs!1454958 (and b!6000932 d!1881771)))

(assert (=> bs!1454958 (not (= lambda!327594 lambda!327589))))

(declare-fun bs!1454959 () Bool)

(assert (= bs!1454959 (and b!6000932 b!6000823)))

(assert (=> bs!1454959 (= (= lt!2319006 lt!2318987) (= lambda!327594 lambda!327581))))

(assert (=> bs!1454954 (= (= lt!2319006 lt!2318822) (= lambda!327594 lambda!327442))))

(declare-fun bs!1454960 () Bool)

(assert (= bs!1454960 (and b!6000932 d!1881727)))

(assert (=> bs!1454960 (not (= lambda!327594 lambda!327578))))

(assert (=> bs!1454955 (= (= lt!2319006 lt!2318826) (= lambda!327594 lambda!327445))))

(declare-fun bs!1454961 () Bool)

(assert (= bs!1454961 (and b!6000932 d!1881529)))

(assert (=> bs!1454961 (not (= lambda!327594 lambda!327545))))

(assert (=> bs!1454956 (= (= lt!2319006 lt!2318989) (= lambda!327594 lambda!327580))))

(declare-fun bs!1454962 () Bool)

(assert (= bs!1454962 (and b!6000932 b!5999089)))

(assert (=> bs!1454962 (= (= lt!2319006 lt!2318820) (= lambda!327594 lambda!327443))))

(declare-fun bs!1454963 () Bool)

(assert (= bs!1454963 (and b!6000932 d!1881695)))

(assert (=> bs!1454963 (not (= lambda!327594 lambda!327568))))

(declare-fun bs!1454964 () Bool)

(assert (= bs!1454964 (and b!6000932 d!1881629)))

(assert (=> bs!1454964 (not (= lambda!327594 lambda!327555))))

(declare-fun bs!1454965 () Bool)

(assert (= bs!1454965 (and b!6000932 b!5999092)))

(assert (=> bs!1454965 (= (= lt!2319006 lt!2318824) (= lambda!327594 lambda!327446))))

(declare-fun bs!1454966 () Bool)

(assert (= bs!1454966 (and b!6000932 d!1881775)))

(assert (=> bs!1454966 (not (= lambda!327594 lambda!327590))))

(assert (=> b!6000932 true))

(declare-fun bs!1454967 () Bool)

(declare-fun b!6000934 () Bool)

(assert (= bs!1454967 (and b!6000934 b!5999082)))

(declare-fun lt!2319004 () Int)

(declare-fun lambda!327595 () Int)

(assert (=> bs!1454967 (= (= lt!2319004 lt!2318818) (= lambda!327595 lambda!327439))))

(declare-fun bs!1454968 () Bool)

(assert (= bs!1454968 (and b!6000934 d!1881771)))

(assert (=> bs!1454968 (not (= lambda!327595 lambda!327589))))

(declare-fun bs!1454969 () Bool)

(assert (= bs!1454969 (and b!6000934 b!6000823)))

(assert (=> bs!1454969 (= (= lt!2319004 lt!2318987) (= lambda!327595 lambda!327581))))

(declare-fun bs!1454970 () Bool)

(assert (= bs!1454970 (and b!6000934 b!5999087)))

(assert (=> bs!1454970 (= (= lt!2319004 lt!2318822) (= lambda!327595 lambda!327442))))

(declare-fun bs!1454971 () Bool)

(assert (= bs!1454971 (and b!6000934 d!1881727)))

(assert (=> bs!1454971 (not (= lambda!327595 lambda!327578))))

(declare-fun bs!1454972 () Bool)

(assert (= bs!1454972 (and b!6000934 b!5999090)))

(assert (=> bs!1454972 (= (= lt!2319004 lt!2318826) (= lambda!327595 lambda!327445))))

(declare-fun bs!1454973 () Bool)

(assert (= bs!1454973 (and b!6000934 d!1881529)))

(assert (=> bs!1454973 (not (= lambda!327595 lambda!327545))))

(declare-fun bs!1454974 () Bool)

(assert (= bs!1454974 (and b!6000934 b!6000821)))

(assert (=> bs!1454974 (= (= lt!2319004 lt!2318989) (= lambda!327595 lambda!327580))))

(declare-fun bs!1454975 () Bool)

(assert (= bs!1454975 (and b!6000934 b!6000932)))

(assert (=> bs!1454975 (= (= lt!2319004 lt!2319006) (= lambda!327595 lambda!327594))))

(declare-fun bs!1454976 () Bool)

(assert (= bs!1454976 (and b!6000934 b!5999084)))

(assert (=> bs!1454976 (= (= lt!2319004 lt!2318816) (= lambda!327595 lambda!327440))))

(declare-fun bs!1454977 () Bool)

(assert (= bs!1454977 (and b!6000934 b!5999089)))

(assert (=> bs!1454977 (= (= lt!2319004 lt!2318820) (= lambda!327595 lambda!327443))))

(declare-fun bs!1454978 () Bool)

(assert (= bs!1454978 (and b!6000934 d!1881695)))

(assert (=> bs!1454978 (not (= lambda!327595 lambda!327568))))

(declare-fun bs!1454979 () Bool)

(assert (= bs!1454979 (and b!6000934 d!1881629)))

(assert (=> bs!1454979 (not (= lambda!327595 lambda!327555))))

(declare-fun bs!1454980 () Bool)

(assert (= bs!1454980 (and b!6000934 b!5999092)))

(assert (=> bs!1454980 (= (= lt!2319004 lt!2318824) (= lambda!327595 lambda!327446))))

(declare-fun bs!1454981 () Bool)

(assert (= bs!1454981 (and b!6000934 d!1881775)))

(assert (=> bs!1454981 (not (= lambda!327595 lambda!327590))))

(assert (=> b!6000934 true))

(declare-fun d!1881781 () Bool)

(declare-fun e!3667878 () Bool)

(assert (=> d!1881781 e!3667878))

(declare-fun res!2504528 () Bool)

(assert (=> d!1881781 (=> (not res!2504528) (not e!3667878))))

(assert (=> d!1881781 (= res!2504528 (>= lt!2319004 0))))

(declare-fun e!3667877 () Int)

(assert (=> d!1881781 (= lt!2319004 e!3667877)))

(declare-fun c!1072324 () Bool)

(assert (=> d!1881781 (= c!1072324 ((_ is Cons!64209) (t!377754 lt!2318664)))))

(assert (=> d!1881781 (= (zipperDepth!260 (t!377754 lt!2318664)) lt!2319004)))

(assert (=> b!6000932 (= e!3667877 lt!2319006)))

(assert (=> b!6000932 (= lt!2319006 (maxBigInt!0 (contextDepth!159 (h!70657 (t!377754 lt!2318664))) (zipperDepth!260 (t!377754 (t!377754 lt!2318664)))))))

(declare-fun lt!2319007 () Unit!157293)

(assert (=> b!6000932 (= lt!2319007 (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 (t!377754 lt!2318664)) lt!2319006 (zipperDepth!260 (t!377754 (t!377754 lt!2318664))) lambda!327593))))

(assert (=> b!6000932 (forall!15110 (t!377754 (t!377754 lt!2318664)) lambda!327594)))

(declare-fun lt!2319005 () Unit!157293)

(assert (=> b!6000932 (= lt!2319005 lt!2319007)))

(declare-fun b!6000933 () Bool)

(assert (=> b!6000933 (= e!3667877 0)))

(assert (=> b!6000934 (= e!3667878 (forall!15110 (t!377754 lt!2318664) lambda!327595))))

(assert (= (and d!1881781 c!1072324) b!6000932))

(assert (= (and d!1881781 (not c!1072324)) b!6000933))

(assert (= (and d!1881781 res!2504528) b!6000934))

(declare-fun m!6879192 () Bool)

(assert (=> b!6000932 m!6879192))

(declare-fun m!6879194 () Bool)

(assert (=> b!6000932 m!6879194))

(assert (=> b!6000932 m!6879194))

(declare-fun m!6879196 () Bool)

(assert (=> b!6000932 m!6879196))

(declare-fun m!6879198 () Bool)

(assert (=> b!6000932 m!6879198))

(assert (=> b!6000932 m!6879196))

(declare-fun m!6879200 () Bool)

(assert (=> b!6000932 m!6879200))

(assert (=> b!6000932 m!6879196))

(declare-fun m!6879202 () Bool)

(assert (=> b!6000934 m!6879202))

(assert (=> b!5999090 d!1881781))

(assert (=> b!5999297 d!1881109))

(declare-fun b!6000935 () Bool)

(declare-fun c!1072327 () Bool)

(assert (=> b!6000935 (= c!1072327 ((_ is Star!16011) (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun e!3667879 () Bool)

(declare-fun e!3667883 () Bool)

(assert (=> b!6000935 (= e!3667879 e!3667883)))

(declare-fun b!6000936 () Bool)

(declare-fun c!1072331 () Bool)

(assert (=> b!6000936 (= c!1072331 ((_ is Union!16011) (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun e!3667880 () Int)

(declare-fun e!3667886 () Int)

(assert (=> b!6000936 (= e!3667880 e!3667886)))

(declare-fun b!6000937 () Bool)

(declare-fun e!3667887 () Bool)

(declare-fun lt!2319008 () Int)

(declare-fun call!485070 () Int)

(assert (=> b!6000937 (= e!3667887 (> lt!2319008 call!485070))))

(declare-fun b!6000938 () Bool)

(declare-fun e!3667884 () Bool)

(assert (=> b!6000938 (= e!3667884 e!3667887)))

(declare-fun res!2504529 () Bool)

(declare-fun call!485071 () Int)

(assert (=> b!6000938 (= res!2504529 (> lt!2319008 call!485071))))

(assert (=> b!6000938 (=> (not res!2504529) (not e!3667887))))

(declare-fun b!6000939 () Bool)

(declare-fun e!3667885 () Int)

(assert (=> b!6000939 (= e!3667885 1)))

(declare-fun bm!485061 () Bool)

(declare-fun c!1072325 () Bool)

(declare-fun call!485068 () Int)

(assert (=> bm!485061 (= call!485068 (regexDepth!268 (ite c!1072325 (reg!16340 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))) (ite c!1072331 (regTwo!32535 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))) (regOne!32534 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683)))))))))

(declare-fun b!6000940 () Bool)

(declare-fun res!2504530 () Bool)

(declare-fun e!3667881 () Bool)

(assert (=> b!6000940 (=> (not res!2504530) (not e!3667881))))

(declare-fun call!485066 () Int)

(assert (=> b!6000940 (= res!2504530 (> lt!2319008 call!485066))))

(assert (=> b!6000940 (= e!3667879 e!3667881)))

(declare-fun bm!485062 () Bool)

(declare-fun call!485067 () Int)

(assert (=> bm!485062 (= call!485067 call!485068)))

(declare-fun bm!485063 () Bool)

(assert (=> bm!485063 (= call!485066 call!485071)))

(declare-fun call!485072 () Int)

(declare-fun bm!485064 () Bool)

(assert (=> bm!485064 (= call!485072 (regexDepth!268 (ite c!1072331 (regOne!32535 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))) (regTwo!32534 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))))

(declare-fun call!485069 () Int)

(declare-fun bm!485065 () Bool)

(assert (=> bm!485065 (= call!485069 (maxBigInt!0 (ite c!1072331 call!485072 call!485067) (ite c!1072331 call!485067 call!485072)))))

(declare-fun b!6000941 () Bool)

(assert (=> b!6000941 (= e!3667885 (+ 1 call!485069))))

(declare-fun c!1072328 () Bool)

(declare-fun bm!485066 () Bool)

(assert (=> bm!485066 (= call!485070 (regexDepth!268 (ite c!1072328 (regTwo!32535 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))) (regTwo!32534 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))))

(declare-fun b!6000942 () Bool)

(declare-fun e!3667882 () Int)

(assert (=> b!6000942 (= e!3667882 1)))

(declare-fun b!6000943 () Bool)

(assert (=> b!6000943 (= e!3667886 e!3667885)))

(declare-fun c!1072326 () Bool)

(assert (=> b!6000943 (= c!1072326 ((_ is Concat!24856) (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun d!1881783 () Bool)

(declare-fun e!3667888 () Bool)

(assert (=> d!1881783 e!3667888))

(declare-fun res!2504531 () Bool)

(assert (=> d!1881783 (=> (not res!2504531) (not e!3667888))))

(assert (=> d!1881783 (= res!2504531 (> lt!2319008 0))))

(assert (=> d!1881783 (= lt!2319008 e!3667882)))

(declare-fun c!1072330 () Bool)

(assert (=> d!1881783 (= c!1072330 ((_ is ElementMatch!16011) (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(assert (=> d!1881783 (= (regexDepth!268 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))) lt!2319008)))

(declare-fun b!6000944 () Bool)

(assert (=> b!6000944 (= e!3667881 (> lt!2319008 call!485070))))

(declare-fun b!6000945 () Bool)

(assert (=> b!6000945 (= e!3667884 e!3667879)))

(declare-fun c!1072329 () Bool)

(assert (=> b!6000945 (= c!1072329 ((_ is Concat!24856) (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun b!6000946 () Bool)

(assert (=> b!6000946 (= e!3667883 (> lt!2319008 call!485066))))

(declare-fun b!6000947 () Bool)

(assert (=> b!6000947 (= e!3667886 (+ 1 call!485069))))

(declare-fun b!6000948 () Bool)

(assert (=> b!6000948 (= e!3667888 e!3667884)))

(assert (=> b!6000948 (= c!1072328 ((_ is Union!16011) (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(declare-fun b!6000949 () Bool)

(assert (=> b!6000949 (= e!3667883 (= lt!2319008 1))))

(declare-fun b!6000950 () Bool)

(assert (=> b!6000950 (= e!3667880 (+ 1 call!485068))))

(declare-fun bm!485067 () Bool)

(assert (=> bm!485067 (= call!485071 (regexDepth!268 (ite c!1072328 (regOne!32535 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))) (ite c!1072329 (regOne!32534 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))) (reg!16340 (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683)))))))))

(declare-fun b!6000951 () Bool)

(assert (=> b!6000951 (= e!3667882 e!3667880)))

(assert (=> b!6000951 (= c!1072325 ((_ is Star!16011) (ite c!1071795 (regTwo!32535 lt!2318683) (regTwo!32534 lt!2318683))))))

(assert (= (and d!1881783 c!1072330) b!6000942))

(assert (= (and d!1881783 (not c!1072330)) b!6000951))

(assert (= (and b!6000951 c!1072325) b!6000950))

(assert (= (and b!6000951 (not c!1072325)) b!6000936))

(assert (= (and b!6000936 c!1072331) b!6000947))

(assert (= (and b!6000936 (not c!1072331)) b!6000943))

(assert (= (and b!6000943 c!1072326) b!6000941))

(assert (= (and b!6000943 (not c!1072326)) b!6000939))

(assert (= (or b!6000947 b!6000941) bm!485062))

(assert (= (or b!6000947 b!6000941) bm!485064))

(assert (= (or b!6000947 b!6000941) bm!485065))

(assert (= (or b!6000950 bm!485062) bm!485061))

(assert (= (and d!1881783 res!2504531) b!6000948))

(assert (= (and b!6000948 c!1072328) b!6000938))

(assert (= (and b!6000948 (not c!1072328)) b!6000945))

(assert (= (and b!6000938 res!2504529) b!6000937))

(assert (= (and b!6000945 c!1072329) b!6000940))

(assert (= (and b!6000945 (not c!1072329)) b!6000935))

(assert (= (and b!6000940 res!2504530) b!6000944))

(assert (= (and b!6000935 c!1072327) b!6000946))

(assert (= (and b!6000935 (not c!1072327)) b!6000949))

(assert (= (or b!6000940 b!6000946) bm!485063))

(assert (= (or b!6000937 b!6000944) bm!485066))

(assert (= (or b!6000938 bm!485063) bm!485067))

(declare-fun m!6879204 () Bool)

(assert (=> bm!485064 m!6879204))

(declare-fun m!6879206 () Bool)

(assert (=> bm!485065 m!6879206))

(declare-fun m!6879208 () Bool)

(assert (=> bm!485061 m!6879208))

(declare-fun m!6879210 () Bool)

(assert (=> bm!485067 m!6879210))

(declare-fun m!6879212 () Bool)

(assert (=> bm!485066 m!6879212))

(assert (=> bm!484658 d!1881783))

(assert (=> d!1881059 d!1881659))

(declare-fun bs!1454982 () Bool)

(declare-fun d!1881785 () Bool)

(assert (= bs!1454982 (and d!1881785 b!6000929)))

(declare-fun lambda!327596 () Int)

(assert (=> bs!1454982 (not (= lambda!327596 lambda!327592))))

(declare-fun bs!1454983 () Bool)

(assert (= bs!1454983 (and d!1881785 b!5999365)))

(assert (=> bs!1454983 (not (= lambda!327596 lambda!327471))))

(declare-fun bs!1454984 () Bool)

(assert (= bs!1454984 (and d!1881785 b!5999017)))

(assert (=> bs!1454984 (not (= lambda!327596 lambda!327421))))

(declare-fun bs!1454985 () Bool)

(assert (= bs!1454985 (and d!1881785 b!6000927)))

(assert (=> bs!1454985 (not (= lambda!327596 lambda!327591))))

(declare-fun bs!1454986 () Bool)

(assert (= bs!1454986 (and d!1881785 d!1881667)))

(assert (=> bs!1454986 (not (= lambda!327596 lambda!327563))))

(declare-fun bs!1454987 () Bool)

(assert (= bs!1454987 (and d!1881785 b!5999362)))

(assert (=> bs!1454987 (not (= lambda!327596 lambda!327469))))

(declare-fun bs!1454988 () Bool)

(assert (= bs!1454988 (and d!1881785 b!5999019)))

(assert (=> bs!1454988 (not (= lambda!327596 lambda!327422))))

(declare-fun bs!1454989 () Bool)

(assert (= bs!1454989 (and d!1881785 d!1881713)))

(assert (=> bs!1454989 (not (= lambda!327596 lambda!327570))))

(declare-fun bs!1454990 () Bool)

(assert (= bs!1454990 (and d!1881785 b!6000824)))

(assert (=> bs!1454990 (not (= lambda!327596 lambda!327582))))

(declare-fun bs!1454991 () Bool)

(assert (= bs!1454991 (and d!1881785 d!1881657)))

(assert (=> bs!1454991 (= lambda!327596 lambda!327562)))

(declare-fun bs!1454992 () Bool)

(assert (= bs!1454992 (and d!1881785 b!6000747)))

(assert (=> bs!1454992 (not (= lambda!327596 lambda!327564))))

(declare-fun bs!1454993 () Bool)

(assert (= bs!1454993 (and d!1881785 b!6000494)))

(assert (=> bs!1454993 (not (= lambda!327596 lambda!327547))))

(declare-fun bs!1454994 () Bool)

(assert (= bs!1454994 (and d!1881785 d!1881071)))

(assert (=> bs!1454994 (= lambda!327596 lambda!327456)))

(declare-fun bs!1454995 () Bool)

(assert (= bs!1454995 (and d!1881785 b!5999363)))

(assert (=> bs!1454995 (not (= lambda!327596 lambda!327470))))

(declare-fun bs!1454996 () Bool)

(assert (= bs!1454996 (and d!1881785 b!6000749)))

(assert (=> bs!1454996 (not (= lambda!327596 lambda!327565))))

(declare-fun bs!1454997 () Bool)

(assert (= bs!1454997 (and d!1881785 d!1881577)))

(assert (=> bs!1454997 (not (= lambda!327596 lambda!327551))))

(declare-fun bs!1454998 () Bool)

(assert (= bs!1454998 (and d!1881785 d!1881117)))

(assert (=> bs!1454998 (= lambda!327596 lambda!327475)))

(declare-fun bs!1454999 () Bool)

(assert (= bs!1454999 (and d!1881785 b!6000496)))

(assert (=> bs!1454999 (not (= lambda!327596 lambda!327548))))

(declare-fun bs!1455000 () Bool)

(assert (= bs!1455000 (and d!1881785 d!1881075)))

(assert (=> bs!1455000 (= lambda!327596 lambda!327460)))

(declare-fun bs!1455001 () Bool)

(assert (= bs!1455001 (and d!1881785 d!1881045)))

(assert (=> bs!1455001 (= lambda!327596 lambda!327449)))

(declare-fun bs!1455002 () Bool)

(assert (= bs!1455002 (and d!1881785 b!6000790)))

(assert (=> bs!1455002 (not (= lambda!327596 lambda!327571))))

(declare-fun bs!1455003 () Bool)

(assert (= bs!1455003 (and d!1881785 d!1881073)))

(assert (=> bs!1455003 (= lambda!327596 lambda!327459)))

(declare-fun bs!1455004 () Bool)

(assert (= bs!1455004 (and d!1881785 d!1881677)))

(assert (=> bs!1455004 (= lambda!327596 lambda!327566)))

(declare-fun bs!1455005 () Bool)

(assert (= bs!1455005 (and d!1881785 b!6000792)))

(assert (=> bs!1455005 (not (= lambda!327596 lambda!327572))))

(declare-fun bs!1455006 () Bool)

(assert (= bs!1455006 (and d!1881785 b!5999360)))

(assert (=> bs!1455006 (not (= lambda!327596 lambda!327468))))

(declare-fun bs!1455007 () Bool)

(assert (= bs!1455007 (and d!1881785 b!6000826)))

(assert (=> bs!1455007 (not (= lambda!327596 lambda!327583))))

(declare-fun bs!1455008 () Bool)

(assert (= bs!1455008 (and d!1881785 d!1881093)))

(assert (=> bs!1455008 (= lambda!327596 lambda!327472)))

(declare-fun b!6000952 () Bool)

(declare-fun e!3667893 () Bool)

(declare-fun lt!2319009 () Regex!16011)

(assert (=> b!6000952 (= e!3667893 (isConcat!959 lt!2319009))))

(declare-fun e!3667894 () Bool)

(assert (=> d!1881785 e!3667894))

(declare-fun res!2504532 () Bool)

(assert (=> d!1881785 (=> (not res!2504532) (not e!3667894))))

(assert (=> d!1881785 (= res!2504532 (validRegex!7747 lt!2319009))))

(declare-fun e!3667891 () Regex!16011)

(assert (=> d!1881785 (= lt!2319009 e!3667891)))

(declare-fun c!1072334 () Bool)

(declare-fun e!3667890 () Bool)

(assert (=> d!1881785 (= c!1072334 e!3667890)))

(declare-fun res!2504533 () Bool)

(assert (=> d!1881785 (=> (not res!2504533) (not e!3667890))))

(assert (=> d!1881785 (= res!2504533 ((_ is Cons!64208) (t!377753 (exprs!5895 (h!70657 zl!343)))))))

(assert (=> d!1881785 (forall!15109 (t!377753 (exprs!5895 (h!70657 zl!343))) lambda!327596)))

(assert (=> d!1881785 (= (generalisedConcat!1608 (t!377753 (exprs!5895 (h!70657 zl!343)))) lt!2319009)))

(declare-fun b!6000953 () Bool)

(declare-fun e!3667892 () Regex!16011)

(assert (=> b!6000953 (= e!3667892 EmptyExpr!16011)))

(declare-fun b!6000954 () Bool)

(assert (=> b!6000954 (= e!3667891 (h!70656 (t!377753 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!6000955 () Bool)

(declare-fun e!3667889 () Bool)

(assert (=> b!6000955 (= e!3667894 e!3667889)))

(declare-fun c!1072335 () Bool)

(assert (=> b!6000955 (= c!1072335 (isEmpty!36101 (t!377753 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!6000956 () Bool)

(assert (=> b!6000956 (= e!3667890 (isEmpty!36101 (t!377753 (t!377753 (exprs!5895 (h!70657 zl!343))))))))

(declare-fun b!6000957 () Bool)

(assert (=> b!6000957 (= e!3667891 e!3667892)))

(declare-fun c!1072332 () Bool)

(assert (=> b!6000957 (= c!1072332 ((_ is Cons!64208) (t!377753 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun b!6000958 () Bool)

(assert (=> b!6000958 (= e!3667893 (= lt!2319009 (head!12560 (t!377753 (exprs!5895 (h!70657 zl!343))))))))

(declare-fun b!6000959 () Bool)

(assert (=> b!6000959 (= e!3667889 (isEmptyExpr!1436 lt!2319009))))

(declare-fun b!6000960 () Bool)

(assert (=> b!6000960 (= e!3667889 e!3667893)))

(declare-fun c!1072333 () Bool)

(assert (=> b!6000960 (= c!1072333 (isEmpty!36101 (tail!11645 (t!377753 (exprs!5895 (h!70657 zl!343))))))))

(declare-fun b!6000961 () Bool)

(assert (=> b!6000961 (= e!3667892 (Concat!24856 (h!70656 (t!377753 (exprs!5895 (h!70657 zl!343)))) (generalisedConcat!1608 (t!377753 (t!377753 (exprs!5895 (h!70657 zl!343)))))))))

(assert (= (and d!1881785 res!2504533) b!6000956))

(assert (= (and d!1881785 c!1072334) b!6000954))

(assert (= (and d!1881785 (not c!1072334)) b!6000957))

(assert (= (and b!6000957 c!1072332) b!6000961))

(assert (= (and b!6000957 (not c!1072332)) b!6000953))

(assert (= (and d!1881785 res!2504532) b!6000955))

(assert (= (and b!6000955 c!1072335) b!6000959))

(assert (= (and b!6000955 (not c!1072335)) b!6000960))

(assert (= (and b!6000960 c!1072333) b!6000958))

(assert (= (and b!6000960 (not c!1072333)) b!6000952))

(declare-fun m!6879214 () Bool)

(assert (=> b!6000960 m!6879214))

(assert (=> b!6000960 m!6879214))

(declare-fun m!6879216 () Bool)

(assert (=> b!6000960 m!6879216))

(declare-fun m!6879218 () Bool)

(assert (=> b!6000952 m!6879218))

(declare-fun m!6879220 () Bool)

(assert (=> b!6000958 m!6879220))

(assert (=> b!6000955 m!6876958))

(declare-fun m!6879222 () Bool)

(assert (=> d!1881785 m!6879222))

(declare-fun m!6879224 () Bool)

(assert (=> d!1881785 m!6879224))

(declare-fun m!6879226 () Bool)

(assert (=> b!6000959 m!6879226))

(declare-fun m!6879228 () Bool)

(assert (=> b!6000956 m!6879228))

(declare-fun m!6879230 () Bool)

(assert (=> b!6000961 m!6879230))

(assert (=> b!5999427 d!1881785))

(declare-fun bs!1455009 () Bool)

(declare-fun d!1881787 () Bool)

(assert (= bs!1455009 (and d!1881787 b!6000929)))

(declare-fun lambda!327597 () Int)

(assert (=> bs!1455009 (not (= lambda!327597 lambda!327592))))

(declare-fun bs!1455010 () Bool)

(assert (= bs!1455010 (and d!1881787 b!5999365)))

(assert (=> bs!1455010 (not (= lambda!327597 lambda!327471))))

(declare-fun bs!1455011 () Bool)

(assert (= bs!1455011 (and d!1881787 b!5999017)))

(assert (=> bs!1455011 (not (= lambda!327597 lambda!327421))))

(declare-fun bs!1455012 () Bool)

(assert (= bs!1455012 (and d!1881787 d!1881785)))

(assert (=> bs!1455012 (= lambda!327597 lambda!327596)))

(declare-fun bs!1455013 () Bool)

(assert (= bs!1455013 (and d!1881787 b!6000927)))

(assert (=> bs!1455013 (not (= lambda!327597 lambda!327591))))

(declare-fun bs!1455014 () Bool)

(assert (= bs!1455014 (and d!1881787 d!1881667)))

(assert (=> bs!1455014 (not (= lambda!327597 lambda!327563))))

(declare-fun bs!1455015 () Bool)

(assert (= bs!1455015 (and d!1881787 b!5999362)))

(assert (=> bs!1455015 (not (= lambda!327597 lambda!327469))))

(declare-fun bs!1455016 () Bool)

(assert (= bs!1455016 (and d!1881787 b!5999019)))

(assert (=> bs!1455016 (not (= lambda!327597 lambda!327422))))

(declare-fun bs!1455017 () Bool)

(assert (= bs!1455017 (and d!1881787 d!1881713)))

(assert (=> bs!1455017 (not (= lambda!327597 lambda!327570))))

(declare-fun bs!1455018 () Bool)

(assert (= bs!1455018 (and d!1881787 b!6000824)))

(assert (=> bs!1455018 (not (= lambda!327597 lambda!327582))))

(declare-fun bs!1455019 () Bool)

(assert (= bs!1455019 (and d!1881787 d!1881657)))

(assert (=> bs!1455019 (= lambda!327597 lambda!327562)))

(declare-fun bs!1455020 () Bool)

(assert (= bs!1455020 (and d!1881787 b!6000747)))

(assert (=> bs!1455020 (not (= lambda!327597 lambda!327564))))

(declare-fun bs!1455021 () Bool)

(assert (= bs!1455021 (and d!1881787 b!6000494)))

(assert (=> bs!1455021 (not (= lambda!327597 lambda!327547))))

(declare-fun bs!1455022 () Bool)

(assert (= bs!1455022 (and d!1881787 d!1881071)))

(assert (=> bs!1455022 (= lambda!327597 lambda!327456)))

(declare-fun bs!1455023 () Bool)

(assert (= bs!1455023 (and d!1881787 b!5999363)))

(assert (=> bs!1455023 (not (= lambda!327597 lambda!327470))))

(declare-fun bs!1455024 () Bool)

(assert (= bs!1455024 (and d!1881787 b!6000749)))

(assert (=> bs!1455024 (not (= lambda!327597 lambda!327565))))

(declare-fun bs!1455025 () Bool)

(assert (= bs!1455025 (and d!1881787 d!1881577)))

(assert (=> bs!1455025 (not (= lambda!327597 lambda!327551))))

(declare-fun bs!1455026 () Bool)

(assert (= bs!1455026 (and d!1881787 d!1881117)))

(assert (=> bs!1455026 (= lambda!327597 lambda!327475)))

(declare-fun bs!1455027 () Bool)

(assert (= bs!1455027 (and d!1881787 b!6000496)))

(assert (=> bs!1455027 (not (= lambda!327597 lambda!327548))))

(declare-fun bs!1455028 () Bool)

(assert (= bs!1455028 (and d!1881787 d!1881075)))

(assert (=> bs!1455028 (= lambda!327597 lambda!327460)))

(declare-fun bs!1455029 () Bool)

(assert (= bs!1455029 (and d!1881787 d!1881045)))

(assert (=> bs!1455029 (= lambda!327597 lambda!327449)))

(declare-fun bs!1455030 () Bool)

(assert (= bs!1455030 (and d!1881787 b!6000790)))

(assert (=> bs!1455030 (not (= lambda!327597 lambda!327571))))

(declare-fun bs!1455031 () Bool)

(assert (= bs!1455031 (and d!1881787 d!1881073)))

(assert (=> bs!1455031 (= lambda!327597 lambda!327459)))

(declare-fun bs!1455032 () Bool)

(assert (= bs!1455032 (and d!1881787 d!1881677)))

(assert (=> bs!1455032 (= lambda!327597 lambda!327566)))

(declare-fun bs!1455033 () Bool)

(assert (= bs!1455033 (and d!1881787 b!6000792)))

(assert (=> bs!1455033 (not (= lambda!327597 lambda!327572))))

(declare-fun bs!1455034 () Bool)

(assert (= bs!1455034 (and d!1881787 b!5999360)))

(assert (=> bs!1455034 (not (= lambda!327597 lambda!327468))))

(declare-fun bs!1455035 () Bool)

(assert (= bs!1455035 (and d!1881787 b!6000826)))

(assert (=> bs!1455035 (not (= lambda!327597 lambda!327583))))

(declare-fun bs!1455036 () Bool)

(assert (= bs!1455036 (and d!1881787 d!1881093)))

(assert (=> bs!1455036 (= lambda!327597 lambda!327472)))

(declare-fun b!6000962 () Bool)

(declare-fun e!3667897 () Bool)

(declare-fun lt!2319010 () Regex!16011)

(assert (=> b!6000962 (= e!3667897 (isUnion!876 lt!2319010))))

(declare-fun b!6000963 () Bool)

(declare-fun e!3667896 () Regex!16011)

(assert (=> b!6000963 (= e!3667896 EmptyLang!16011)))

(declare-fun b!6000964 () Bool)

(declare-fun e!3667899 () Bool)

(assert (=> b!6000964 (= e!3667899 (isEmptyLang!1446 lt!2319010))))

(declare-fun b!6000965 () Bool)

(declare-fun e!3667895 () Regex!16011)

(assert (=> b!6000965 (= e!3667895 (h!70656 (t!377753 (unfocusZipperList!1432 zl!343))))))

(declare-fun b!6000966 () Bool)

(declare-fun e!3667900 () Bool)

(assert (=> b!6000966 (= e!3667900 e!3667899)))

(declare-fun c!1072338 () Bool)

(assert (=> b!6000966 (= c!1072338 (isEmpty!36101 (t!377753 (unfocusZipperList!1432 zl!343))))))

(declare-fun b!6000967 () Bool)

(assert (=> b!6000967 (= e!3667896 (Union!16011 (h!70656 (t!377753 (unfocusZipperList!1432 zl!343))) (generalisedUnion!1855 (t!377753 (t!377753 (unfocusZipperList!1432 zl!343))))))))

(declare-fun b!6000968 () Bool)

(declare-fun e!3667898 () Bool)

(assert (=> b!6000968 (= e!3667898 (isEmpty!36101 (t!377753 (t!377753 (unfocusZipperList!1432 zl!343)))))))

(assert (=> d!1881787 e!3667900))

(declare-fun res!2504535 () Bool)

(assert (=> d!1881787 (=> (not res!2504535) (not e!3667900))))

(assert (=> d!1881787 (= res!2504535 (validRegex!7747 lt!2319010))))

(assert (=> d!1881787 (= lt!2319010 e!3667895)))

(declare-fun c!1072336 () Bool)

(assert (=> d!1881787 (= c!1072336 e!3667898)))

(declare-fun res!2504534 () Bool)

(assert (=> d!1881787 (=> (not res!2504534) (not e!3667898))))

(assert (=> d!1881787 (= res!2504534 ((_ is Cons!64208) (t!377753 (unfocusZipperList!1432 zl!343))))))

(assert (=> d!1881787 (forall!15109 (t!377753 (unfocusZipperList!1432 zl!343)) lambda!327597)))

(assert (=> d!1881787 (= (generalisedUnion!1855 (t!377753 (unfocusZipperList!1432 zl!343))) lt!2319010)))

(declare-fun b!6000969 () Bool)

(assert (=> b!6000969 (= e!3667899 e!3667897)))

(declare-fun c!1072339 () Bool)

(assert (=> b!6000969 (= c!1072339 (isEmpty!36101 (tail!11645 (t!377753 (unfocusZipperList!1432 zl!343)))))))

(declare-fun b!6000970 () Bool)

(assert (=> b!6000970 (= e!3667897 (= lt!2319010 (head!12560 (t!377753 (unfocusZipperList!1432 zl!343)))))))

(declare-fun b!6000971 () Bool)

(assert (=> b!6000971 (= e!3667895 e!3667896)))

(declare-fun c!1072337 () Bool)

(assert (=> b!6000971 (= c!1072337 ((_ is Cons!64208) (t!377753 (unfocusZipperList!1432 zl!343))))))

(assert (= (and d!1881787 res!2504534) b!6000968))

(assert (= (and d!1881787 c!1072336) b!6000965))

(assert (= (and d!1881787 (not c!1072336)) b!6000971))

(assert (= (and b!6000971 c!1072337) b!6000967))

(assert (= (and b!6000971 (not c!1072337)) b!6000963))

(assert (= (and d!1881787 res!2504535) b!6000966))

(assert (= (and b!6000966 c!1072338) b!6000964))

(assert (= (and b!6000966 (not c!1072338)) b!6000969))

(assert (= (and b!6000969 c!1072339) b!6000970))

(assert (= (and b!6000969 (not c!1072339)) b!6000962))

(declare-fun m!6879232 () Bool)

(assert (=> b!6000970 m!6879232))

(declare-fun m!6879234 () Bool)

(assert (=> d!1881787 m!6879234))

(declare-fun m!6879236 () Bool)

(assert (=> d!1881787 m!6879236))

(declare-fun m!6879238 () Bool)

(assert (=> b!6000968 m!6879238))

(declare-fun m!6879240 () Bool)

(assert (=> b!6000967 m!6879240))

(declare-fun m!6879242 () Bool)

(assert (=> b!6000964 m!6879242))

(assert (=> b!6000966 m!6877592))

(declare-fun m!6879244 () Bool)

(assert (=> b!6000969 m!6879244))

(assert (=> b!6000969 m!6879244))

(declare-fun m!6879246 () Bool)

(assert (=> b!6000969 m!6879246))

(declare-fun m!6879248 () Bool)

(assert (=> b!6000962 m!6879248))

(assert (=> b!5999254 d!1881787))

(declare-fun d!1881789 () Bool)

(assert (=> d!1881789 (= (isEmpty!36105 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326)) (not ((_ is Some!15901) (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) Nil!64210 s!2326 s!2326))))))

(assert (=> d!1881031 d!1881789))

(assert (=> d!1881069 d!1881543))

(declare-fun d!1881791 () Bool)

(assert (=> d!1881791 (= (nullable!6006 r!7292) (nullableFct!1976 r!7292))))

(declare-fun bs!1455037 () Bool)

(assert (= bs!1455037 d!1881791))

(declare-fun m!6879250 () Bool)

(assert (=> bs!1455037 m!6879250))

(assert (=> b!5999356 d!1881791))

(declare-fun b!6000972 () Bool)

(declare-fun e!3667902 () Bool)

(assert (=> b!6000972 (= e!3667902 (nullable!6006 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343))))))))))

(declare-fun call!485073 () (InoxSet Context!10790))

(declare-fun e!3667903 () (InoxSet Context!10790))

(declare-fun b!6000973 () Bool)

(assert (=> b!6000973 (= e!3667903 ((_ map or) call!485073 (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343))))))) (h!70658 s!2326))))))

(declare-fun bm!485068 () Bool)

(assert (=> bm!485068 (= call!485073 (derivationStepZipperDown!1261 (h!70656 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))))) (Context!10791 (t!377753 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343))))))) (h!70658 s!2326)))))

(declare-fun d!1881793 () Bool)

(declare-fun c!1072341 () Bool)

(assert (=> d!1881793 (= c!1072341 e!3667902)))

(declare-fun res!2504536 () Bool)

(assert (=> d!1881793 (=> (not res!2504536) (not e!3667902))))

(assert (=> d!1881793 (= res!2504536 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))))))))

(assert (=> d!1881793 (= (derivationStepZipperUp!1187 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))) (h!70658 s!2326)) e!3667903)))

(declare-fun b!6000974 () Bool)

(declare-fun e!3667901 () (InoxSet Context!10790))

(assert (=> b!6000974 (= e!3667903 e!3667901)))

(declare-fun c!1072340 () Bool)

(assert (=> b!6000974 (= c!1072340 ((_ is Cons!64208) (exprs!5895 (Context!10791 (t!377753 (exprs!5895 (h!70657 zl!343)))))))))

(declare-fun b!6000975 () Bool)

(assert (=> b!6000975 (= e!3667901 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6000976 () Bool)

(assert (=> b!6000976 (= e!3667901 call!485073)))

(assert (= (and d!1881793 res!2504536) b!6000972))

(assert (= (and d!1881793 c!1072341) b!6000973))

(assert (= (and d!1881793 (not c!1072341)) b!6000974))

(assert (= (and b!6000974 c!1072340) b!6000976))

(assert (= (and b!6000974 (not c!1072340)) b!6000975))

(assert (= (or b!6000973 b!6000976) bm!485068))

(declare-fun m!6879252 () Bool)

(assert (=> b!6000972 m!6879252))

(declare-fun m!6879254 () Bool)

(assert (=> b!6000973 m!6879254))

(declare-fun m!6879256 () Bool)

(assert (=> bm!485068 m!6879256))

(assert (=> b!5999033 d!1881793))

(assert (=> b!5999200 d!1881591))

(assert (=> b!5999200 d!1881565))

(declare-fun bm!485069 () Bool)

(declare-fun call!485075 () Bool)

(declare-fun call!485074 () Bool)

(assert (=> bm!485069 (= call!485075 call!485074)))

(declare-fun bm!485070 () Bool)

(declare-fun call!485076 () Bool)

(declare-fun c!1072342 () Bool)

(assert (=> bm!485070 (= call!485076 (validRegex!7747 (ite c!1072342 (regTwo!32535 lt!2318846) (regTwo!32534 lt!2318846))))))

(declare-fun b!6000977 () Bool)

(declare-fun res!2504541 () Bool)

(declare-fun e!3667904 () Bool)

(assert (=> b!6000977 (=> (not res!2504541) (not e!3667904))))

(assert (=> b!6000977 (= res!2504541 call!485075)))

(declare-fun e!3667910 () Bool)

(assert (=> b!6000977 (= e!3667910 e!3667904)))

(declare-fun b!6000978 () Bool)

(declare-fun e!3667908 () Bool)

(assert (=> b!6000978 (= e!3667908 e!3667910)))

(assert (=> b!6000978 (= c!1072342 ((_ is Union!16011) lt!2318846))))

(declare-fun b!6000980 () Bool)

(declare-fun e!3667906 () Bool)

(assert (=> b!6000980 (= e!3667908 e!3667906)))

(declare-fun res!2504540 () Bool)

(assert (=> b!6000980 (= res!2504540 (not (nullable!6006 (reg!16340 lt!2318846))))))

(assert (=> b!6000980 (=> (not res!2504540) (not e!3667906))))

(declare-fun b!6000981 () Bool)

(declare-fun res!2504539 () Bool)

(declare-fun e!3667907 () Bool)

(assert (=> b!6000981 (=> res!2504539 e!3667907)))

(assert (=> b!6000981 (= res!2504539 (not ((_ is Concat!24856) lt!2318846)))))

(assert (=> b!6000981 (= e!3667910 e!3667907)))

(declare-fun b!6000982 () Bool)

(declare-fun e!3667909 () Bool)

(assert (=> b!6000982 (= e!3667909 e!3667908)))

(declare-fun c!1072343 () Bool)

(assert (=> b!6000982 (= c!1072343 ((_ is Star!16011) lt!2318846))))

(declare-fun bm!485071 () Bool)

(assert (=> bm!485071 (= call!485074 (validRegex!7747 (ite c!1072343 (reg!16340 lt!2318846) (ite c!1072342 (regOne!32535 lt!2318846) (regOne!32534 lt!2318846)))))))

(declare-fun b!6000983 () Bool)

(assert (=> b!6000983 (= e!3667904 call!485076)))

(declare-fun b!6000984 () Bool)

(declare-fun e!3667905 () Bool)

(assert (=> b!6000984 (= e!3667905 call!485076)))

(declare-fun b!6000985 () Bool)

(assert (=> b!6000985 (= e!3667906 call!485074)))

(declare-fun b!6000979 () Bool)

(assert (=> b!6000979 (= e!3667907 e!3667905)))

(declare-fun res!2504538 () Bool)

(assert (=> b!6000979 (=> (not res!2504538) (not e!3667905))))

(assert (=> b!6000979 (= res!2504538 call!485075)))

(declare-fun d!1881795 () Bool)

(declare-fun res!2504537 () Bool)

(assert (=> d!1881795 (=> res!2504537 e!3667909)))

(assert (=> d!1881795 (= res!2504537 ((_ is ElementMatch!16011) lt!2318846))))

(assert (=> d!1881795 (= (validRegex!7747 lt!2318846) e!3667909)))

(assert (= (and d!1881795 (not res!2504537)) b!6000982))

(assert (= (and b!6000982 c!1072343) b!6000980))

(assert (= (and b!6000982 (not c!1072343)) b!6000978))

(assert (= (and b!6000980 res!2504540) b!6000985))

(assert (= (and b!6000978 c!1072342) b!6000977))

(assert (= (and b!6000978 (not c!1072342)) b!6000981))

(assert (= (and b!6000977 res!2504541) b!6000983))

(assert (= (and b!6000981 (not res!2504539)) b!6000979))

(assert (= (and b!6000979 res!2504538) b!6000984))

(assert (= (or b!6000983 b!6000984) bm!485070))

(assert (= (or b!6000977 b!6000979) bm!485069))

(assert (= (or b!6000985 bm!485069) bm!485071))

(declare-fun m!6879258 () Bool)

(assert (=> bm!485070 m!6879258))

(declare-fun m!6879260 () Bool)

(assert (=> b!6000980 m!6879260))

(declare-fun m!6879262 () Bool)

(assert (=> bm!485071 m!6879262))

(assert (=> d!1881071 d!1881795))

(declare-fun d!1881797 () Bool)

(declare-fun res!2504542 () Bool)

(declare-fun e!3667911 () Bool)

(assert (=> d!1881797 (=> res!2504542 e!3667911)))

(assert (=> d!1881797 (= res!2504542 ((_ is Nil!64208) (unfocusZipperList!1432 zl!343)))))

(assert (=> d!1881797 (= (forall!15109 (unfocusZipperList!1432 zl!343) lambda!327456) e!3667911)))

(declare-fun b!6000986 () Bool)

(declare-fun e!3667912 () Bool)

(assert (=> b!6000986 (= e!3667911 e!3667912)))

(declare-fun res!2504543 () Bool)

(assert (=> b!6000986 (=> (not res!2504543) (not e!3667912))))

(assert (=> b!6000986 (= res!2504543 (dynLambda!25172 lambda!327456 (h!70656 (unfocusZipperList!1432 zl!343))))))

(declare-fun b!6000987 () Bool)

(assert (=> b!6000987 (= e!3667912 (forall!15109 (t!377753 (unfocusZipperList!1432 zl!343)) lambda!327456))))

(assert (= (and d!1881797 (not res!2504542)) b!6000986))

(assert (= (and b!6000986 res!2504543) b!6000987))

(declare-fun b_lambda!226827 () Bool)

(assert (=> (not b_lambda!226827) (not b!6000986)))

(declare-fun m!6879264 () Bool)

(assert (=> b!6000986 m!6879264))

(declare-fun m!6879266 () Bool)

(assert (=> b!6000987 m!6879266))

(assert (=> d!1881071 d!1881797))

(declare-fun d!1881799 () Bool)

(assert (=> d!1881799 (= (Exists!3081 (ite c!1071860 lambda!327466 lambda!327467)) (choose!45008 (ite c!1071860 lambda!327466 lambda!327467)))))

(declare-fun bs!1455038 () Bool)

(assert (= bs!1455038 d!1881799))

(declare-fun m!6879268 () Bool)

(assert (=> bs!1455038 m!6879268))

(assert (=> bm!484687 d!1881799))

(assert (=> bs!1453620 d!1881017))

(declare-fun d!1881801 () Bool)

(declare-fun c!1072344 () Bool)

(assert (=> d!1881801 (= c!1072344 (isEmpty!36106 (tail!11644 (t!377755 s!2326))))))

(declare-fun e!3667913 () Bool)

(assert (=> d!1881801 (= (matchZipper!2047 (derivationStepZipper!1992 lt!2318661 (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))) e!3667913)))

(declare-fun b!6000988 () Bool)

(assert (=> b!6000988 (= e!3667913 (nullableZipper!1816 (derivationStepZipper!1992 lt!2318661 (head!12559 (t!377755 s!2326)))))))

(declare-fun b!6000989 () Bool)

(assert (=> b!6000989 (= e!3667913 (matchZipper!2047 (derivationStepZipper!1992 (derivationStepZipper!1992 lt!2318661 (head!12559 (t!377755 s!2326))) (head!12559 (tail!11644 (t!377755 s!2326)))) (tail!11644 (tail!11644 (t!377755 s!2326)))))))

(assert (= (and d!1881801 c!1072344) b!6000988))

(assert (= (and d!1881801 (not c!1072344)) b!6000989))

(assert (=> d!1881801 m!6877544))

(assert (=> d!1881801 m!6878638))

(assert (=> b!6000988 m!6877564))

(declare-fun m!6879270 () Bool)

(assert (=> b!6000988 m!6879270))

(assert (=> b!6000989 m!6877544))

(assert (=> b!6000989 m!6878642))

(assert (=> b!6000989 m!6877564))

(assert (=> b!6000989 m!6878642))

(declare-fun m!6879272 () Bool)

(assert (=> b!6000989 m!6879272))

(assert (=> b!6000989 m!6877544))

(assert (=> b!6000989 m!6878646))

(assert (=> b!6000989 m!6879272))

(assert (=> b!6000989 m!6878646))

(declare-fun m!6879274 () Bool)

(assert (=> b!6000989 m!6879274))

(assert (=> b!5999221 d!1881801))

(declare-fun bs!1455039 () Bool)

(declare-fun d!1881803 () Bool)

(assert (= bs!1455039 (and d!1881803 d!1881537)))

(declare-fun lambda!327598 () Int)

(assert (=> bs!1455039 (= lambda!327598 lambda!327546)))

(declare-fun bs!1455040 () Bool)

(assert (= bs!1455040 (and d!1881803 b!5998487)))

(assert (=> bs!1455040 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327598 lambda!327357))))

(declare-fun bs!1455041 () Bool)

(assert (= bs!1455041 (and d!1881803 d!1881755)))

(assert (=> bs!1455041 (= lambda!327598 lambda!327587)))

(declare-fun bs!1455042 () Bool)

(assert (= bs!1455042 (and d!1881803 d!1881749)))

(assert (=> bs!1455042 (= lambda!327598 lambda!327586)))

(declare-fun bs!1455043 () Bool)

(assert (= bs!1455043 (and d!1881803 d!1881067)))

(assert (=> bs!1455043 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327598 lambda!327453))))

(declare-fun bs!1455044 () Bool)

(assert (= bs!1455044 (and d!1881803 d!1881769)))

(assert (=> bs!1455044 (= (= (head!12559 (t!377755 s!2326)) (head!12559 s!2326)) (= lambda!327598 lambda!327588))))

(declare-fun bs!1455045 () Bool)

(assert (= bs!1455045 (and d!1881803 d!1881619)))

(assert (=> bs!1455045 (= (= (head!12559 (t!377755 s!2326)) (head!12559 s!2326)) (= lambda!327598 lambda!327554))))

(declare-fun bs!1455046 () Bool)

(assert (= bs!1455046 (and d!1881803 d!1881685)))

(assert (=> bs!1455046 (= lambda!327598 lambda!327567)))

(declare-fun bs!1455047 () Bool)

(assert (= bs!1455047 (and d!1881803 d!1881707)))

(assert (=> bs!1455047 (= lambda!327598 lambda!327569)))

(declare-fun bs!1455048 () Bool)

(assert (= bs!1455048 (and d!1881803 d!1881081)))

(assert (=> bs!1455048 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327598 lambda!327461))))

(declare-fun bs!1455049 () Bool)

(assert (= bs!1455049 (and d!1881803 d!1881055)))

(assert (=> bs!1455049 (= (= (head!12559 (t!377755 s!2326)) (h!70658 s!2326)) (= lambda!327598 lambda!327452))))

(assert (=> d!1881803 true))

(assert (=> d!1881803 (= (derivationStepZipper!1992 lt!2318661 (head!12559 (t!377755 s!2326))) (flatMap!1524 lt!2318661 lambda!327598))))

(declare-fun bs!1455050 () Bool)

(assert (= bs!1455050 d!1881803))

(declare-fun m!6879276 () Bool)

(assert (=> bs!1455050 m!6879276))

(assert (=> b!5999221 d!1881803))

(assert (=> b!5999221 d!1881539))

(assert (=> b!5999221 d!1881541))

(declare-fun bm!485072 () Bool)

(declare-fun call!485078 () Bool)

(declare-fun call!485077 () Bool)

(assert (=> bm!485072 (= call!485078 call!485077)))

(declare-fun bm!485073 () Bool)

(declare-fun call!485079 () Bool)

(declare-fun c!1072345 () Bool)

(assert (=> bm!485073 (= call!485079 (validRegex!7747 (ite c!1072345 (regTwo!32535 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (regTwo!32534 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))))

(declare-fun b!6000990 () Bool)

(declare-fun res!2504548 () Bool)

(declare-fun e!3667914 () Bool)

(assert (=> b!6000990 (=> (not res!2504548) (not e!3667914))))

(assert (=> b!6000990 (= res!2504548 call!485078)))

(declare-fun e!3667920 () Bool)

(assert (=> b!6000990 (= e!3667920 e!3667914)))

(declare-fun b!6000991 () Bool)

(declare-fun e!3667918 () Bool)

(assert (=> b!6000991 (= e!3667918 e!3667920)))

(assert (=> b!6000991 (= c!1072345 ((_ is Union!16011) (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun b!6000993 () Bool)

(declare-fun e!3667916 () Bool)

(assert (=> b!6000993 (= e!3667918 e!3667916)))

(declare-fun res!2504547 () Bool)

(assert (=> b!6000993 (= res!2504547 (not (nullable!6006 (reg!16340 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))))

(assert (=> b!6000993 (=> (not res!2504547) (not e!3667916))))

(declare-fun b!6000994 () Bool)

(declare-fun res!2504546 () Bool)

(declare-fun e!3667917 () Bool)

(assert (=> b!6000994 (=> res!2504546 e!3667917)))

(assert (=> b!6000994 (= res!2504546 (not ((_ is Concat!24856) (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292)))))))

(assert (=> b!6000994 (= e!3667920 e!3667917)))

(declare-fun b!6000995 () Bool)

(declare-fun e!3667919 () Bool)

(assert (=> b!6000995 (= e!3667919 e!3667918)))

(declare-fun c!1072346 () Bool)

(assert (=> b!6000995 (= c!1072346 ((_ is Star!16011) (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun bm!485074 () Bool)

(assert (=> bm!485074 (= call!485077 (validRegex!7747 (ite c!1072346 (reg!16340 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (ite c!1072345 (regOne!32535 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (regOne!32534 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292)))))))))

(declare-fun b!6000996 () Bool)

(assert (=> b!6000996 (= e!3667914 call!485079)))

(declare-fun b!6000997 () Bool)

(declare-fun e!3667915 () Bool)

(assert (=> b!6000997 (= e!3667915 call!485079)))

(declare-fun b!6000998 () Bool)

(assert (=> b!6000998 (= e!3667916 call!485077)))

(declare-fun b!6000992 () Bool)

(assert (=> b!6000992 (= e!3667917 e!3667915)))

(declare-fun res!2504545 () Bool)

(assert (=> b!6000992 (=> (not res!2504545) (not e!3667915))))

(assert (=> b!6000992 (= res!2504545 call!485078)))

(declare-fun d!1881805 () Bool)

(declare-fun res!2504544 () Bool)

(assert (=> d!1881805 (=> res!2504544 e!3667919)))

(assert (=> d!1881805 (= res!2504544 ((_ is ElementMatch!16011) (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(assert (=> d!1881805 (= (validRegex!7747 (ite c!1071898 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) e!3667919)))

(assert (= (and d!1881805 (not res!2504544)) b!6000995))

(assert (= (and b!6000995 c!1072346) b!6000993))

(assert (= (and b!6000995 (not c!1072346)) b!6000991))

(assert (= (and b!6000993 res!2504547) b!6000998))

(assert (= (and b!6000991 c!1072345) b!6000990))

(assert (= (and b!6000991 (not c!1072345)) b!6000994))

(assert (= (and b!6000990 res!2504548) b!6000996))

(assert (= (and b!6000994 (not res!2504546)) b!6000992))

(assert (= (and b!6000992 res!2504545) b!6000997))

(assert (= (or b!6000996 b!6000997) bm!485073))

(assert (= (or b!6000990 b!6000992) bm!485072))

(assert (= (or b!6000998 bm!485072) bm!485074))

(declare-fun m!6879278 () Bool)

(assert (=> bm!485073 m!6879278))

(declare-fun m!6879280 () Bool)

(assert (=> b!6000993 m!6879280))

(declare-fun m!6879282 () Bool)

(assert (=> bm!485074 m!6879282))

(assert (=> bm!484710 d!1881805))

(declare-fun bs!1455051 () Bool)

(declare-fun d!1881807 () Bool)

(assert (= bs!1455051 (and d!1881807 b!5999082)))

(declare-fun lambda!327599 () Int)

(assert (=> bs!1455051 (not (= lambda!327599 lambda!327439))))

(declare-fun bs!1455052 () Bool)

(assert (= bs!1455052 (and d!1881807 d!1881771)))

(assert (=> bs!1455052 (= lambda!327599 lambda!327589)))

(declare-fun bs!1455053 () Bool)

(assert (= bs!1455053 (and d!1881807 b!6000823)))

(assert (=> bs!1455053 (not (= lambda!327599 lambda!327581))))

(declare-fun bs!1455054 () Bool)

(assert (= bs!1455054 (and d!1881807 b!5999087)))

(assert (=> bs!1455054 (not (= lambda!327599 lambda!327442))))

(declare-fun bs!1455055 () Bool)

(assert (= bs!1455055 (and d!1881807 b!5999090)))

(assert (=> bs!1455055 (not (= lambda!327599 lambda!327445))))

(declare-fun bs!1455056 () Bool)

(assert (= bs!1455056 (and d!1881807 d!1881529)))

(assert (=> bs!1455056 (= lambda!327599 lambda!327545)))

(declare-fun bs!1455057 () Bool)

(assert (= bs!1455057 (and d!1881807 b!6000821)))

(assert (=> bs!1455057 (not (= lambda!327599 lambda!327580))))

(declare-fun bs!1455058 () Bool)

(assert (= bs!1455058 (and d!1881807 b!6000932)))

(assert (=> bs!1455058 (not (= lambda!327599 lambda!327594))))

(declare-fun bs!1455059 () Bool)

(assert (= bs!1455059 (and d!1881807 b!5999084)))

(assert (=> bs!1455059 (not (= lambda!327599 lambda!327440))))

(declare-fun bs!1455060 () Bool)

(assert (= bs!1455060 (and d!1881807 b!5999089)))

(assert (=> bs!1455060 (not (= lambda!327599 lambda!327443))))

(declare-fun bs!1455061 () Bool)

(assert (= bs!1455061 (and d!1881807 d!1881695)))

(assert (=> bs!1455061 (= lambda!327599 lambda!327568)))

(declare-fun bs!1455062 () Bool)

(assert (= bs!1455062 (and d!1881807 d!1881629)))

(assert (=> bs!1455062 (= lambda!327599 lambda!327555)))

(declare-fun bs!1455063 () Bool)

(assert (= bs!1455063 (and d!1881807 b!5999092)))

(assert (=> bs!1455063 (not (= lambda!327599 lambda!327446))))

(declare-fun bs!1455064 () Bool)

(assert (= bs!1455064 (and d!1881807 d!1881775)))

(assert (=> bs!1455064 (not (= lambda!327599 lambda!327590))))

(declare-fun bs!1455065 () Bool)

(assert (= bs!1455065 (and d!1881807 d!1881727)))

(assert (=> bs!1455065 (not (= lambda!327599 lambda!327578))))

(declare-fun bs!1455066 () Bool)

(assert (= bs!1455066 (and d!1881807 b!6000934)))

(assert (=> bs!1455066 (not (= lambda!327599 lambda!327595))))

(assert (=> d!1881807 (= (nullableZipper!1816 lt!2318651) (exists!2372 lt!2318651 lambda!327599))))

(declare-fun bs!1455067 () Bool)

(assert (= bs!1455067 d!1881807))

(declare-fun m!6879284 () Bool)

(assert (=> bs!1455067 m!6879284))

(assert (=> b!5999455 d!1881807))

(declare-fun b!6001008 () Bool)

(declare-fun e!3667925 () List!64334)

(assert (=> b!6001008 (= e!3667925 (Cons!64210 (h!70658 (_1!36293 (get!22127 lt!2318799))) (++!14106 (t!377755 (_1!36293 (get!22127 lt!2318799))) (_2!36293 (get!22127 lt!2318799)))))))

(declare-fun b!6001010 () Bool)

(declare-fun e!3667926 () Bool)

(declare-fun lt!2319013 () List!64334)

(assert (=> b!6001010 (= e!3667926 (or (not (= (_2!36293 (get!22127 lt!2318799)) Nil!64210)) (= lt!2319013 (_1!36293 (get!22127 lt!2318799)))))))

(declare-fun d!1881809 () Bool)

(assert (=> d!1881809 e!3667926))

(declare-fun res!2504553 () Bool)

(assert (=> d!1881809 (=> (not res!2504553) (not e!3667926))))

(declare-fun content!11869 (List!64334) (InoxSet C!32292))

(assert (=> d!1881809 (= res!2504553 (= (content!11869 lt!2319013) ((_ map or) (content!11869 (_1!36293 (get!22127 lt!2318799))) (content!11869 (_2!36293 (get!22127 lt!2318799))))))))

(assert (=> d!1881809 (= lt!2319013 e!3667925)))

(declare-fun c!1072349 () Bool)

(assert (=> d!1881809 (= c!1072349 ((_ is Nil!64210) (_1!36293 (get!22127 lt!2318799))))))

(assert (=> d!1881809 (= (++!14106 (_1!36293 (get!22127 lt!2318799)) (_2!36293 (get!22127 lt!2318799))) lt!2319013)))

(declare-fun b!6001009 () Bool)

(declare-fun res!2504554 () Bool)

(assert (=> b!6001009 (=> (not res!2504554) (not e!3667926))))

(declare-fun size!40168 (List!64334) Int)

(assert (=> b!6001009 (= res!2504554 (= (size!40168 lt!2319013) (+ (size!40168 (_1!36293 (get!22127 lt!2318799))) (size!40168 (_2!36293 (get!22127 lt!2318799))))))))

(declare-fun b!6001007 () Bool)

(assert (=> b!6001007 (= e!3667925 (_2!36293 (get!22127 lt!2318799)))))

(assert (= (and d!1881809 c!1072349) b!6001007))

(assert (= (and d!1881809 (not c!1072349)) b!6001008))

(assert (= (and d!1881809 res!2504553) b!6001009))

(assert (= (and b!6001009 res!2504554) b!6001010))

(declare-fun m!6879286 () Bool)

(assert (=> b!6001008 m!6879286))

(declare-fun m!6879288 () Bool)

(assert (=> d!1881809 m!6879288))

(declare-fun m!6879290 () Bool)

(assert (=> d!1881809 m!6879290))

(declare-fun m!6879292 () Bool)

(assert (=> d!1881809 m!6879292))

(declare-fun m!6879294 () Bool)

(assert (=> b!6001009 m!6879294))

(declare-fun m!6879296 () Bool)

(assert (=> b!6001009 m!6879296))

(declare-fun m!6879298 () Bool)

(assert (=> b!6001009 m!6879298))

(assert (=> b!5999059 d!1881809))

(assert (=> b!5999059 d!1881605))

(declare-fun d!1881811 () Bool)

(assert (=> d!1881811 (= (isUnion!876 lt!2318846) ((_ is Union!16011) lt!2318846))))

(assert (=> b!5999249 d!1881811))

(assert (=> b!5999204 d!1881591))

(assert (=> b!5999204 d!1881565))

(declare-fun bm!485075 () Bool)

(declare-fun call!485080 () (InoxSet Context!10790))

(declare-fun call!485082 () (InoxSet Context!10790))

(assert (=> bm!485075 (= call!485080 call!485082)))

(declare-fun b!6001012 () Bool)

(declare-fun c!1072351 () Bool)

(declare-fun e!3667929 () Bool)

(assert (=> b!6001012 (= c!1072351 e!3667929)))

(declare-fun res!2504555 () Bool)

(assert (=> b!6001012 (=> (not res!2504555) (not e!3667929))))

(assert (=> b!6001012 (= res!2504555 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun e!3667928 () (InoxSet Context!10790))

(declare-fun e!3667927 () (InoxSet Context!10790))

(assert (=> b!6001012 (= e!3667928 e!3667927)))

(declare-fun bm!485076 () Bool)

(declare-fun call!485084 () List!64332)

(declare-fun call!485083 () (InoxSet Context!10790))

(declare-fun c!1072353 () Bool)

(assert (=> bm!485076 (= call!485083 (derivationStepZipperDown!1261 (ite c!1072353 (regOne!32535 (h!70656 (exprs!5895 lt!2318655))) (regOne!32534 (h!70656 (exprs!5895 lt!2318655)))) (ite c!1072353 (Context!10791 (t!377753 (exprs!5895 lt!2318655))) (Context!10791 call!485084)) (h!70658 s!2326)))))

(declare-fun b!6001013 () Bool)

(declare-fun e!3667932 () (InoxSet Context!10790))

(assert (=> b!6001013 (= e!3667932 call!485080)))

(declare-fun bm!485077 () Bool)

(declare-fun call!485085 () List!64332)

(assert (=> bm!485077 (= call!485085 call!485084)))

(declare-fun c!1072350 () Bool)

(declare-fun bm!485078 () Bool)

(assert (=> bm!485078 (= call!485084 ($colon$colon!1896 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318655)))) (ite (or c!1072351 c!1072350) (regTwo!32534 (h!70656 (exprs!5895 lt!2318655))) (h!70656 (exprs!5895 lt!2318655)))))))

(declare-fun call!485081 () (InoxSet Context!10790))

(declare-fun bm!485079 () Bool)

(assert (=> bm!485079 (= call!485081 (derivationStepZipperDown!1261 (ite c!1072353 (regTwo!32535 (h!70656 (exprs!5895 lt!2318655))) (ite c!1072351 (regTwo!32534 (h!70656 (exprs!5895 lt!2318655))) (ite c!1072350 (regOne!32534 (h!70656 (exprs!5895 lt!2318655))) (reg!16340 (h!70656 (exprs!5895 lt!2318655)))))) (ite (or c!1072353 c!1072351) (Context!10791 (t!377753 (exprs!5895 lt!2318655))) (Context!10791 call!485085)) (h!70658 s!2326)))))

(declare-fun b!6001014 () Bool)

(assert (=> b!6001014 (= e!3667928 ((_ map or) call!485083 call!485081))))

(declare-fun b!6001015 () Bool)

(declare-fun c!1072354 () Bool)

(assert (=> b!6001015 (= c!1072354 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun e!3667931 () (InoxSet Context!10790))

(assert (=> b!6001015 (= e!3667932 e!3667931)))

(declare-fun bm!485080 () Bool)

(assert (=> bm!485080 (= call!485082 call!485081)))

(declare-fun b!6001016 () Bool)

(declare-fun e!3667930 () (InoxSet Context!10790))

(assert (=> b!6001016 (= e!3667930 e!3667928)))

(assert (=> b!6001016 (= c!1072353 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun d!1881813 () Bool)

(declare-fun c!1072352 () Bool)

(assert (=> d!1881813 (= c!1072352 (and ((_ is ElementMatch!16011) (h!70656 (exprs!5895 lt!2318655))) (= (c!1071586 (h!70656 (exprs!5895 lt!2318655))) (h!70658 s!2326))))))

(assert (=> d!1881813 (= (derivationStepZipperDown!1261 (h!70656 (exprs!5895 lt!2318655)) (Context!10791 (t!377753 (exprs!5895 lt!2318655))) (h!70658 s!2326)) e!3667930)))

(declare-fun b!6001011 () Bool)

(assert (=> b!6001011 (= e!3667931 call!485080)))

(declare-fun b!6001017 () Bool)

(assert (=> b!6001017 (= e!3667927 ((_ map or) call!485083 call!485082))))

(declare-fun b!6001018 () Bool)

(assert (=> b!6001018 (= e!3667931 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6001019 () Bool)

(assert (=> b!6001019 (= e!3667930 (store ((as const (Array Context!10790 Bool)) false) (Context!10791 (t!377753 (exprs!5895 lt!2318655))) true))))

(declare-fun b!6001020 () Bool)

(assert (=> b!6001020 (= e!3667927 e!3667932)))

(assert (=> b!6001020 (= c!1072350 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318655))))))

(declare-fun b!6001021 () Bool)

(assert (=> b!6001021 (= e!3667929 (nullable!6006 (regOne!32534 (h!70656 (exprs!5895 lt!2318655)))))))

(assert (= (and d!1881813 c!1072352) b!6001019))

(assert (= (and d!1881813 (not c!1072352)) b!6001016))

(assert (= (and b!6001016 c!1072353) b!6001014))

(assert (= (and b!6001016 (not c!1072353)) b!6001012))

(assert (= (and b!6001012 res!2504555) b!6001021))

(assert (= (and b!6001012 c!1072351) b!6001017))

(assert (= (and b!6001012 (not c!1072351)) b!6001020))

(assert (= (and b!6001020 c!1072350) b!6001013))

(assert (= (and b!6001020 (not c!1072350)) b!6001015))

(assert (= (and b!6001015 c!1072354) b!6001011))

(assert (= (and b!6001015 (not c!1072354)) b!6001018))

(assert (= (or b!6001013 b!6001011) bm!485077))

(assert (= (or b!6001013 b!6001011) bm!485075))

(assert (= (or b!6001017 bm!485077) bm!485078))

(assert (= (or b!6001017 bm!485075) bm!485080))

(assert (= (or b!6001014 bm!485080) bm!485079))

(assert (= (or b!6001014 b!6001017) bm!485076))

(declare-fun m!6879300 () Bool)

(assert (=> b!6001021 m!6879300))

(declare-fun m!6879302 () Bool)

(assert (=> bm!485076 m!6879302))

(declare-fun m!6879304 () Bool)

(assert (=> b!6001019 m!6879304))

(declare-fun m!6879306 () Bool)

(assert (=> bm!485078 m!6879306))

(declare-fun m!6879308 () Bool)

(assert (=> bm!485079 m!6879308))

(assert (=> bm!484681 d!1881813))

(declare-fun d!1881815 () Bool)

(assert (=> d!1881815 (= (flatMap!1524 lt!2318668 lambda!327452) (choose!45004 lt!2318668 lambda!327452))))

(declare-fun bs!1455068 () Bool)

(assert (= bs!1455068 d!1881815))

(declare-fun m!6879310 () Bool)

(assert (=> bs!1455068 m!6879310))

(assert (=> d!1881055 d!1881815))

(declare-fun d!1881817 () Bool)

(assert (=> d!1881817 (= (isConcat!959 lt!2318869) ((_ is Concat!24856) lt!2318869))))

(assert (=> b!5999418 d!1881817))

(declare-fun bm!485081 () Bool)

(declare-fun call!485086 () (InoxSet Context!10790))

(declare-fun call!485088 () (InoxSet Context!10790))

(assert (=> bm!485081 (= call!485086 call!485088)))

(declare-fun b!6001023 () Bool)

(declare-fun c!1072356 () Bool)

(declare-fun e!3667935 () Bool)

(assert (=> b!6001023 (= c!1072356 e!3667935)))

(declare-fun res!2504556 () Bool)

(assert (=> b!6001023 (=> (not res!2504556) (not e!3667935))))

(assert (=> b!6001023 (= res!2504556 ((_ is Concat!24856) (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))))))

(declare-fun e!3667934 () (InoxSet Context!10790))

(declare-fun e!3667933 () (InoxSet Context!10790))

(assert (=> b!6001023 (= e!3667934 e!3667933)))

(declare-fun c!1072358 () Bool)

(declare-fun bm!485082 () Bool)

(declare-fun call!485090 () List!64332)

(declare-fun call!485089 () (InoxSet Context!10790))

(assert (=> bm!485082 (= call!485089 (derivationStepZipperDown!1261 (ite c!1072358 (regOne!32535 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))) (regOne!32534 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292)))))) (ite c!1072358 (ite (or c!1071847 c!1071845) lt!2318656 (Context!10791 call!484685)) (Context!10791 call!485090)) (h!70658 s!2326)))))

(declare-fun b!6001024 () Bool)

(declare-fun e!3667938 () (InoxSet Context!10790))

(assert (=> b!6001024 (= e!3667938 call!485086)))

(declare-fun bm!485083 () Bool)

(declare-fun call!485091 () List!64332)

(assert (=> bm!485083 (= call!485091 call!485090)))

(declare-fun bm!485084 () Bool)

(declare-fun c!1072355 () Bool)

(assert (=> bm!485084 (= call!485090 ($colon$colon!1896 (exprs!5895 (ite (or c!1071847 c!1071845) lt!2318656 (Context!10791 call!484685))) (ite (or c!1072356 c!1072355) (regTwo!32534 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))) (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292)))))))))

(declare-fun bm!485085 () Bool)

(declare-fun call!485087 () (InoxSet Context!10790))

(assert (=> bm!485085 (= call!485087 (derivationStepZipperDown!1261 (ite c!1072358 (regTwo!32535 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))) (ite c!1072356 (regTwo!32534 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))) (ite c!1072355 (regOne!32534 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))) (reg!16340 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292)))))))) (ite (or c!1072358 c!1072356) (ite (or c!1071847 c!1071845) lt!2318656 (Context!10791 call!484685)) (Context!10791 call!485091)) (h!70658 s!2326)))))

(declare-fun b!6001025 () Bool)

(assert (=> b!6001025 (= e!3667934 ((_ map or) call!485089 call!485087))))

(declare-fun b!6001026 () Bool)

(declare-fun c!1072359 () Bool)

(assert (=> b!6001026 (= c!1072359 ((_ is Star!16011) (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))))))

(declare-fun e!3667937 () (InoxSet Context!10790))

(assert (=> b!6001026 (= e!3667938 e!3667937)))

(declare-fun bm!485086 () Bool)

(assert (=> bm!485086 (= call!485088 call!485087)))

(declare-fun b!6001027 () Bool)

(declare-fun e!3667936 () (InoxSet Context!10790))

(assert (=> b!6001027 (= e!3667936 e!3667934)))

(assert (=> b!6001027 (= c!1072358 ((_ is Union!16011) (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))))))

(declare-fun c!1072357 () Bool)

(declare-fun d!1881819 () Bool)

(assert (=> d!1881819 (= c!1072357 (and ((_ is ElementMatch!16011) (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))) (= (c!1071586 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))) (h!70658 s!2326))))))

(assert (=> d!1881819 (= (derivationStepZipperDown!1261 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292)))) (ite (or c!1071847 c!1071845) lt!2318656 (Context!10791 call!484685)) (h!70658 s!2326)) e!3667936)))

(declare-fun b!6001022 () Bool)

(assert (=> b!6001022 (= e!3667937 call!485086)))

(declare-fun b!6001028 () Bool)

(assert (=> b!6001028 (= e!3667933 ((_ map or) call!485089 call!485088))))

(declare-fun b!6001029 () Bool)

(assert (=> b!6001029 (= e!3667937 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6001030 () Bool)

(assert (=> b!6001030 (= e!3667936 (store ((as const (Array Context!10790 Bool)) false) (ite (or c!1071847 c!1071845) lt!2318656 (Context!10791 call!484685)) true))))

(declare-fun b!6001031 () Bool)

(assert (=> b!6001031 (= e!3667933 e!3667938)))

(assert (=> b!6001031 (= c!1072355 ((_ is Concat!24856) (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292))))))))

(declare-fun b!6001032 () Bool)

(assert (=> b!6001032 (= e!3667935 (nullable!6006 (regOne!32534 (ite c!1071847 (regTwo!32535 r!7292) (ite c!1071845 (regTwo!32534 r!7292) (ite c!1071844 (regOne!32534 r!7292) (reg!16340 r!7292)))))))))

(assert (= (and d!1881819 c!1072357) b!6001030))

(assert (= (and d!1881819 (not c!1072357)) b!6001027))

(assert (= (and b!6001027 c!1072358) b!6001025))

(assert (= (and b!6001027 (not c!1072358)) b!6001023))

(assert (= (and b!6001023 res!2504556) b!6001032))

(assert (= (and b!6001023 c!1072356) b!6001028))

(assert (= (and b!6001023 (not c!1072356)) b!6001031))

(assert (= (and b!6001031 c!1072355) b!6001024))

(assert (= (and b!6001031 (not c!1072355)) b!6001026))

(assert (= (and b!6001026 c!1072359) b!6001022))

(assert (= (and b!6001026 (not c!1072359)) b!6001029))

(assert (= (or b!6001024 b!6001022) bm!485083))

(assert (= (or b!6001024 b!6001022) bm!485081))

(assert (= (or b!6001028 bm!485083) bm!485084))

(assert (= (or b!6001028 bm!485081) bm!485086))

(assert (= (or b!6001025 bm!485086) bm!485085))

(assert (= (or b!6001025 b!6001028) bm!485082))

(declare-fun m!6879312 () Bool)

(assert (=> b!6001032 m!6879312))

(declare-fun m!6879314 () Bool)

(assert (=> bm!485082 m!6879314))

(declare-fun m!6879316 () Bool)

(assert (=> b!6001030 m!6879316))

(declare-fun m!6879318 () Bool)

(assert (=> bm!485084 m!6879318))

(declare-fun m!6879320 () Bool)

(assert (=> bm!485085 m!6879320))

(assert (=> bm!484679 d!1881819))

(assert (=> d!1881061 d!1881659))

(declare-fun d!1881821 () Bool)

(assert (=> d!1881821 (= (nullable!6006 (reg!16340 r!7292)) (nullableFct!1976 (reg!16340 r!7292)))))

(declare-fun bs!1455069 () Bool)

(assert (= bs!1455069 d!1881821))

(declare-fun m!6879322 () Bool)

(assert (=> bs!1455069 m!6879322))

(assert (=> b!5999449 d!1881821))

(declare-fun d!1881823 () Bool)

(assert (=> d!1881823 true))

(assert (=> d!1881823 true))

(declare-fun res!2504557 () Bool)

(assert (=> d!1881823 (= (choose!45008 lambda!327355) res!2504557)))

(assert (=> d!1881025 d!1881823))

(declare-fun bs!1455070 () Bool)

(declare-fun d!1881825 () Bool)

(assert (= bs!1455070 (and d!1881825 b!5999082)))

(declare-fun lambda!327600 () Int)

(assert (=> bs!1455070 (not (= lambda!327600 lambda!327439))))

(declare-fun bs!1455071 () Bool)

(assert (= bs!1455071 (and d!1881825 d!1881771)))

(assert (=> bs!1455071 (= lambda!327600 lambda!327589)))

(declare-fun bs!1455072 () Bool)

(assert (= bs!1455072 (and d!1881825 b!6000823)))

(assert (=> bs!1455072 (not (= lambda!327600 lambda!327581))))

(declare-fun bs!1455073 () Bool)

(assert (= bs!1455073 (and d!1881825 b!5999087)))

(assert (=> bs!1455073 (not (= lambda!327600 lambda!327442))))

(declare-fun bs!1455074 () Bool)

(assert (= bs!1455074 (and d!1881825 b!5999090)))

(assert (=> bs!1455074 (not (= lambda!327600 lambda!327445))))

(declare-fun bs!1455075 () Bool)

(assert (= bs!1455075 (and d!1881825 d!1881807)))

(assert (=> bs!1455075 (= lambda!327600 lambda!327599)))

(declare-fun bs!1455076 () Bool)

(assert (= bs!1455076 (and d!1881825 d!1881529)))

(assert (=> bs!1455076 (= lambda!327600 lambda!327545)))

(declare-fun bs!1455077 () Bool)

(assert (= bs!1455077 (and d!1881825 b!6000821)))

(assert (=> bs!1455077 (not (= lambda!327600 lambda!327580))))

(declare-fun bs!1455078 () Bool)

(assert (= bs!1455078 (and d!1881825 b!6000932)))

(assert (=> bs!1455078 (not (= lambda!327600 lambda!327594))))

(declare-fun bs!1455079 () Bool)

(assert (= bs!1455079 (and d!1881825 b!5999084)))

(assert (=> bs!1455079 (not (= lambda!327600 lambda!327440))))

(declare-fun bs!1455080 () Bool)

(assert (= bs!1455080 (and d!1881825 b!5999089)))

(assert (=> bs!1455080 (not (= lambda!327600 lambda!327443))))

(declare-fun bs!1455081 () Bool)

(assert (= bs!1455081 (and d!1881825 d!1881695)))

(assert (=> bs!1455081 (= lambda!327600 lambda!327568)))

(declare-fun bs!1455082 () Bool)

(assert (= bs!1455082 (and d!1881825 d!1881629)))

(assert (=> bs!1455082 (= lambda!327600 lambda!327555)))

(declare-fun bs!1455083 () Bool)

(assert (= bs!1455083 (and d!1881825 b!5999092)))

(assert (=> bs!1455083 (not (= lambda!327600 lambda!327446))))

(declare-fun bs!1455084 () Bool)

(assert (= bs!1455084 (and d!1881825 d!1881775)))

(assert (=> bs!1455084 (not (= lambda!327600 lambda!327590))))

(declare-fun bs!1455085 () Bool)

(assert (= bs!1455085 (and d!1881825 d!1881727)))

(assert (=> bs!1455085 (not (= lambda!327600 lambda!327578))))

(declare-fun bs!1455086 () Bool)

(assert (= bs!1455086 (and d!1881825 b!6000934)))

(assert (=> bs!1455086 (not (= lambda!327600 lambda!327595))))

(assert (=> d!1881825 (= (nullableZipper!1816 lt!2318652) (exists!2372 lt!2318652 lambda!327600))))

(declare-fun bs!1455087 () Bool)

(assert (= bs!1455087 d!1881825))

(declare-fun m!6879324 () Bool)

(assert (=> bs!1455087 m!6879324))

(assert (=> b!5999216 d!1881825))

(declare-fun b!6001034 () Bool)

(declare-fun e!3667939 () List!64334)

(assert (=> b!6001034 (= e!3667939 (Cons!64210 (h!70658 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210))) (++!14106 (t!377755 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210))) (t!377755 s!2326))))))

(declare-fun b!6001036 () Bool)

(declare-fun e!3667940 () Bool)

(declare-fun lt!2319014 () List!64334)

(assert (=> b!6001036 (= e!3667940 (or (not (= (t!377755 s!2326) Nil!64210)) (= lt!2319014 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)))))))

(declare-fun d!1881827 () Bool)

(assert (=> d!1881827 e!3667940))

(declare-fun res!2504558 () Bool)

(assert (=> d!1881827 (=> (not res!2504558) (not e!3667940))))

(assert (=> d!1881827 (= res!2504558 (= (content!11869 lt!2319014) ((_ map or) (content!11869 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210))) (content!11869 (t!377755 s!2326)))))))

(assert (=> d!1881827 (= lt!2319014 e!3667939)))

(declare-fun c!1072360 () Bool)

(assert (=> d!1881827 (= c!1072360 ((_ is Nil!64210) (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210))))))

(assert (=> d!1881827 (= (++!14106 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (t!377755 s!2326)) lt!2319014)))

(declare-fun b!6001035 () Bool)

(declare-fun res!2504559 () Bool)

(assert (=> b!6001035 (=> (not res!2504559) (not e!3667940))))

(assert (=> b!6001035 (= res!2504559 (= (size!40168 lt!2319014) (+ (size!40168 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210))) (size!40168 (t!377755 s!2326)))))))

(declare-fun b!6001033 () Bool)

(assert (=> b!6001033 (= e!3667939 (t!377755 s!2326))))

(assert (= (and d!1881827 c!1072360) b!6001033))

(assert (= (and d!1881827 (not c!1072360)) b!6001034))

(assert (= (and d!1881827 res!2504558) b!6001035))

(assert (= (and b!6001035 res!2504559) b!6001036))

(declare-fun m!6879326 () Bool)

(assert (=> b!6001034 m!6879326))

(declare-fun m!6879328 () Bool)

(assert (=> d!1881827 m!6879328))

(assert (=> d!1881827 m!6877424))

(declare-fun m!6879330 () Bool)

(assert (=> d!1881827 m!6879330))

(declare-fun m!6879332 () Bool)

(assert (=> d!1881827 m!6879332))

(declare-fun m!6879334 () Bool)

(assert (=> b!6001035 m!6879334))

(assert (=> b!6001035 m!6877424))

(declare-fun m!6879336 () Bool)

(assert (=> b!6001035 m!6879336))

(declare-fun m!6879338 () Bool)

(assert (=> b!6001035 m!6879338))

(assert (=> b!5999055 d!1881827))

(declare-fun b!6001038 () Bool)

(declare-fun e!3667941 () List!64334)

(assert (=> b!6001038 (= e!3667941 (Cons!64210 (h!70658 Nil!64210) (++!14106 (t!377755 Nil!64210) (Cons!64210 (h!70658 s!2326) Nil!64210))))))

(declare-fun b!6001040 () Bool)

(declare-fun e!3667942 () Bool)

(declare-fun lt!2319015 () List!64334)

(assert (=> b!6001040 (= e!3667942 (or (not (= (Cons!64210 (h!70658 s!2326) Nil!64210) Nil!64210)) (= lt!2319015 Nil!64210)))))

(declare-fun d!1881829 () Bool)

(assert (=> d!1881829 e!3667942))

(declare-fun res!2504560 () Bool)

(assert (=> d!1881829 (=> (not res!2504560) (not e!3667942))))

(assert (=> d!1881829 (= res!2504560 (= (content!11869 lt!2319015) ((_ map or) (content!11869 Nil!64210) (content!11869 (Cons!64210 (h!70658 s!2326) Nil!64210)))))))

(assert (=> d!1881829 (= lt!2319015 e!3667941)))

(declare-fun c!1072361 () Bool)

(assert (=> d!1881829 (= c!1072361 ((_ is Nil!64210) Nil!64210))))

(assert (=> d!1881829 (= (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) lt!2319015)))

(declare-fun b!6001039 () Bool)

(declare-fun res!2504561 () Bool)

(assert (=> b!6001039 (=> (not res!2504561) (not e!3667942))))

(assert (=> b!6001039 (= res!2504561 (= (size!40168 lt!2319015) (+ (size!40168 Nil!64210) (size!40168 (Cons!64210 (h!70658 s!2326) Nil!64210)))))))

(declare-fun b!6001037 () Bool)

(assert (=> b!6001037 (= e!3667941 (Cons!64210 (h!70658 s!2326) Nil!64210))))

(assert (= (and d!1881829 c!1072361) b!6001037))

(assert (= (and d!1881829 (not c!1072361)) b!6001038))

(assert (= (and d!1881829 res!2504560) b!6001039))

(assert (= (and b!6001039 res!2504561) b!6001040))

(declare-fun m!6879340 () Bool)

(assert (=> b!6001038 m!6879340))

(declare-fun m!6879342 () Bool)

(assert (=> d!1881829 m!6879342))

(declare-fun m!6879344 () Bool)

(assert (=> d!1881829 m!6879344))

(declare-fun m!6879346 () Bool)

(assert (=> d!1881829 m!6879346))

(declare-fun m!6879348 () Bool)

(assert (=> b!6001039 m!6879348))

(declare-fun m!6879350 () Bool)

(assert (=> b!6001039 m!6879350))

(declare-fun m!6879352 () Bool)

(assert (=> b!6001039 m!6879352))

(assert (=> b!5999055 d!1881829))

(declare-fun d!1881831 () Bool)

(assert (=> d!1881831 (= (++!14106 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (t!377755 s!2326)) s!2326)))

(declare-fun lt!2319018 () Unit!157293)

(declare-fun choose!45021 (List!64334 C!32292 List!64334 List!64334) Unit!157293)

(assert (=> d!1881831 (= lt!2319018 (choose!45021 Nil!64210 (h!70658 s!2326) (t!377755 s!2326) s!2326))))

(assert (=> d!1881831 (= (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) (t!377755 s!2326))) s!2326)))

(assert (=> d!1881831 (= (lemmaMoveElementToOtherListKeepsConcatEq!2201 Nil!64210 (h!70658 s!2326) (t!377755 s!2326) s!2326) lt!2319018)))

(declare-fun bs!1455088 () Bool)

(assert (= bs!1455088 d!1881831))

(assert (=> bs!1455088 m!6877424))

(assert (=> bs!1455088 m!6877424))

(assert (=> bs!1455088 m!6877426))

(declare-fun m!6879354 () Bool)

(assert (=> bs!1455088 m!6879354))

(declare-fun m!6879356 () Bool)

(assert (=> bs!1455088 m!6879356))

(assert (=> b!5999055 d!1881831))

(declare-fun b!6001041 () Bool)

(declare-fun lt!2319021 () Unit!157293)

(declare-fun lt!2319020 () Unit!157293)

(assert (=> b!6001041 (= lt!2319021 lt!2319020)))

(assert (=> b!6001041 (= (++!14106 (++!14106 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (Cons!64210 (h!70658 (t!377755 s!2326)) Nil!64210)) (t!377755 (t!377755 s!2326))) s!2326)))

(assert (=> b!6001041 (= lt!2319020 (lemmaMoveElementToOtherListKeepsConcatEq!2201 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (h!70658 (t!377755 s!2326)) (t!377755 (t!377755 s!2326)) s!2326))))

(declare-fun e!3667946 () Option!15902)

(assert (=> b!6001041 (= e!3667946 (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) (++!14106 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (Cons!64210 (h!70658 (t!377755 s!2326)) Nil!64210)) (t!377755 (t!377755 s!2326)) s!2326))))

(declare-fun b!6001042 () Bool)

(declare-fun e!3667943 () Option!15902)

(assert (=> b!6001042 (= e!3667943 (Some!15901 (tuple2!65981 (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (t!377755 s!2326))))))

(declare-fun b!6001043 () Bool)

(declare-fun res!2504563 () Bool)

(declare-fun e!3667945 () Bool)

(assert (=> b!6001043 (=> (not res!2504563) (not e!3667945))))

(declare-fun lt!2319019 () Option!15902)

(assert (=> b!6001043 (= res!2504563 (matchR!8194 (regOne!32534 r!7292) (_1!36293 (get!22127 lt!2319019))))))

(declare-fun b!6001044 () Bool)

(declare-fun e!3667944 () Bool)

(assert (=> b!6001044 (= e!3667944 (not (isDefined!12605 lt!2319019)))))

(declare-fun b!6001045 () Bool)

(assert (=> b!6001045 (= e!3667945 (= (++!14106 (_1!36293 (get!22127 lt!2319019)) (_2!36293 (get!22127 lt!2319019))) s!2326))))

(declare-fun b!6001047 () Bool)

(declare-fun e!3667947 () Bool)

(assert (=> b!6001047 (= e!3667947 (matchR!8194 (regTwo!32534 r!7292) (t!377755 s!2326)))))

(declare-fun d!1881833 () Bool)

(assert (=> d!1881833 e!3667944))

(declare-fun res!2504562 () Bool)

(assert (=> d!1881833 (=> res!2504562 e!3667944)))

(assert (=> d!1881833 (= res!2504562 e!3667945)))

(declare-fun res!2504565 () Bool)

(assert (=> d!1881833 (=> (not res!2504565) (not e!3667945))))

(assert (=> d!1881833 (= res!2504565 (isDefined!12605 lt!2319019))))

(assert (=> d!1881833 (= lt!2319019 e!3667943)))

(declare-fun c!1072363 () Bool)

(assert (=> d!1881833 (= c!1072363 e!3667947)))

(declare-fun res!2504564 () Bool)

(assert (=> d!1881833 (=> (not res!2504564) (not e!3667947))))

(assert (=> d!1881833 (= res!2504564 (matchR!8194 (regOne!32534 r!7292) (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210))))))

(assert (=> d!1881833 (validRegex!7747 (regOne!32534 r!7292))))

(assert (=> d!1881833 (= (findConcatSeparation!2316 (regOne!32534 r!7292) (regTwo!32534 r!7292) (++!14106 Nil!64210 (Cons!64210 (h!70658 s!2326) Nil!64210)) (t!377755 s!2326) s!2326) lt!2319019)))

(declare-fun b!6001046 () Bool)

(assert (=> b!6001046 (= e!3667946 None!15901)))

(declare-fun b!6001048 () Bool)

(declare-fun res!2504566 () Bool)

(assert (=> b!6001048 (=> (not res!2504566) (not e!3667945))))

(assert (=> b!6001048 (= res!2504566 (matchR!8194 (regTwo!32534 r!7292) (_2!36293 (get!22127 lt!2319019))))))

(declare-fun b!6001049 () Bool)

(assert (=> b!6001049 (= e!3667943 e!3667946)))

(declare-fun c!1072362 () Bool)

(assert (=> b!6001049 (= c!1072362 ((_ is Nil!64210) (t!377755 s!2326)))))

(assert (= (and d!1881833 res!2504564) b!6001047))

(assert (= (and d!1881833 c!1072363) b!6001042))

(assert (= (and d!1881833 (not c!1072363)) b!6001049))

(assert (= (and b!6001049 c!1072362) b!6001046))

(assert (= (and b!6001049 (not c!1072362)) b!6001041))

(assert (= (and d!1881833 res!2504565) b!6001043))

(assert (= (and b!6001043 res!2504563) b!6001048))

(assert (= (and b!6001048 res!2504566) b!6001045))

(assert (= (and d!1881833 (not res!2504562)) b!6001044))

(declare-fun m!6879358 () Bool)

(assert (=> b!6001043 m!6879358))

(declare-fun m!6879360 () Bool)

(assert (=> b!6001043 m!6879360))

(declare-fun m!6879362 () Bool)

(assert (=> b!6001047 m!6879362))

(assert (=> b!6001045 m!6879358))

(declare-fun m!6879364 () Bool)

(assert (=> b!6001045 m!6879364))

(declare-fun m!6879366 () Bool)

(assert (=> d!1881833 m!6879366))

(assert (=> d!1881833 m!6877424))

(declare-fun m!6879368 () Bool)

(assert (=> d!1881833 m!6879368))

(assert (=> d!1881833 m!6877420))

(assert (=> b!6001048 m!6879358))

(declare-fun m!6879370 () Bool)

(assert (=> b!6001048 m!6879370))

(assert (=> b!6001044 m!6879366))

(assert (=> b!6001041 m!6877424))

(declare-fun m!6879372 () Bool)

(assert (=> b!6001041 m!6879372))

(assert (=> b!6001041 m!6879372))

(declare-fun m!6879374 () Bool)

(assert (=> b!6001041 m!6879374))

(assert (=> b!6001041 m!6877424))

(declare-fun m!6879376 () Bool)

(assert (=> b!6001041 m!6879376))

(assert (=> b!6001041 m!6879372))

(declare-fun m!6879378 () Bool)

(assert (=> b!6001041 m!6879378))

(assert (=> b!5999055 d!1881833))

(declare-fun d!1881835 () Bool)

(assert (=> d!1881835 (= (nullable!6006 (regOne!32534 (regOne!32534 r!7292))) (nullableFct!1976 (regOne!32534 (regOne!32534 r!7292))))))

(declare-fun bs!1455089 () Bool)

(assert (= bs!1455089 d!1881835))

(declare-fun m!6879380 () Bool)

(assert (=> bs!1455089 m!6879380))

(assert (=> b!5999397 d!1881835))

(declare-fun bs!1455090 () Bool)

(declare-fun b!6001050 () Bool)

(assert (= bs!1455090 (and b!6001050 b!5999087)))

(declare-fun lambda!327601 () Int)

(assert (=> bs!1455090 (= lambda!327601 lambda!327441)))

(declare-fun bs!1455091 () Bool)

(assert (= bs!1455091 (and b!6001050 b!5999082)))

(assert (=> bs!1455091 (= lambda!327601 lambda!327438)))

(declare-fun bs!1455092 () Bool)

(assert (= bs!1455092 (and b!6001050 b!6000821)))

(assert (=> bs!1455092 (= lambda!327601 lambda!327579)))

(declare-fun bs!1455093 () Bool)

(assert (= bs!1455093 (and b!6001050 b!5999090)))

(assert (=> bs!1455093 (= lambda!327601 lambda!327444)))

(declare-fun bs!1455094 () Bool)

(assert (= bs!1455094 (and b!6001050 b!6000932)))

(assert (=> bs!1455094 (= lambda!327601 lambda!327593)))

(declare-fun bs!1455095 () Bool)

(assert (= bs!1455095 (and b!6001050 d!1881825)))

(declare-fun lambda!327602 () Int)

(assert (=> bs!1455095 (not (= lambda!327602 lambda!327600))))

(declare-fun lt!2319024 () Int)

(assert (=> bs!1455091 (= (= lt!2319024 lt!2318818) (= lambda!327602 lambda!327439))))

(declare-fun bs!1455096 () Bool)

(assert (= bs!1455096 (and b!6001050 d!1881771)))

(assert (=> bs!1455096 (not (= lambda!327602 lambda!327589))))

(declare-fun bs!1455097 () Bool)

(assert (= bs!1455097 (and b!6001050 b!6000823)))

(assert (=> bs!1455097 (= (= lt!2319024 lt!2318987) (= lambda!327602 lambda!327581))))

(assert (=> bs!1455090 (= (= lt!2319024 lt!2318822) (= lambda!327602 lambda!327442))))

(assert (=> bs!1455093 (= (= lt!2319024 lt!2318826) (= lambda!327602 lambda!327445))))

(declare-fun bs!1455098 () Bool)

(assert (= bs!1455098 (and b!6001050 d!1881807)))

(assert (=> bs!1455098 (not (= lambda!327602 lambda!327599))))

(declare-fun bs!1455099 () Bool)

(assert (= bs!1455099 (and b!6001050 d!1881529)))

(assert (=> bs!1455099 (not (= lambda!327602 lambda!327545))))

(assert (=> bs!1455092 (= (= lt!2319024 lt!2318989) (= lambda!327602 lambda!327580))))

(assert (=> bs!1455094 (= (= lt!2319024 lt!2319006) (= lambda!327602 lambda!327594))))

(declare-fun bs!1455100 () Bool)

(assert (= bs!1455100 (and b!6001050 b!5999084)))

(assert (=> bs!1455100 (= (= lt!2319024 lt!2318816) (= lambda!327602 lambda!327440))))

(declare-fun bs!1455101 () Bool)

(assert (= bs!1455101 (and b!6001050 b!5999089)))

(assert (=> bs!1455101 (= (= lt!2319024 lt!2318820) (= lambda!327602 lambda!327443))))

(declare-fun bs!1455102 () Bool)

(assert (= bs!1455102 (and b!6001050 d!1881695)))

(assert (=> bs!1455102 (not (= lambda!327602 lambda!327568))))

(declare-fun bs!1455103 () Bool)

(assert (= bs!1455103 (and b!6001050 d!1881629)))

(assert (=> bs!1455103 (not (= lambda!327602 lambda!327555))))

(declare-fun bs!1455104 () Bool)

(assert (= bs!1455104 (and b!6001050 b!5999092)))

(assert (=> bs!1455104 (= (= lt!2319024 lt!2318824) (= lambda!327602 lambda!327446))))

(declare-fun bs!1455105 () Bool)

(assert (= bs!1455105 (and b!6001050 d!1881775)))

(assert (=> bs!1455105 (not (= lambda!327602 lambda!327590))))

(declare-fun bs!1455106 () Bool)

(assert (= bs!1455106 (and b!6001050 d!1881727)))

(assert (=> bs!1455106 (not (= lambda!327602 lambda!327578))))

(declare-fun bs!1455107 () Bool)

(assert (= bs!1455107 (and b!6001050 b!6000934)))

(assert (=> bs!1455107 (= (= lt!2319024 lt!2319004) (= lambda!327602 lambda!327595))))

(assert (=> b!6001050 true))

(declare-fun bs!1455108 () Bool)

(declare-fun b!6001052 () Bool)

(assert (= bs!1455108 (and b!6001052 d!1881825)))

(declare-fun lambda!327603 () Int)

(assert (=> bs!1455108 (not (= lambda!327603 lambda!327600))))

(declare-fun bs!1455109 () Bool)

(assert (= bs!1455109 (and b!6001052 b!6001050)))

(declare-fun lt!2319022 () Int)

(assert (=> bs!1455109 (= (= lt!2319022 lt!2319024) (= lambda!327603 lambda!327602))))

(declare-fun bs!1455110 () Bool)

(assert (= bs!1455110 (and b!6001052 b!5999082)))

(assert (=> bs!1455110 (= (= lt!2319022 lt!2318818) (= lambda!327603 lambda!327439))))

(declare-fun bs!1455111 () Bool)

(assert (= bs!1455111 (and b!6001052 d!1881771)))

(assert (=> bs!1455111 (not (= lambda!327603 lambda!327589))))

(declare-fun bs!1455112 () Bool)

(assert (= bs!1455112 (and b!6001052 b!6000823)))

(assert (=> bs!1455112 (= (= lt!2319022 lt!2318987) (= lambda!327603 lambda!327581))))

(declare-fun bs!1455113 () Bool)

(assert (= bs!1455113 (and b!6001052 b!5999087)))

(assert (=> bs!1455113 (= (= lt!2319022 lt!2318822) (= lambda!327603 lambda!327442))))

(declare-fun bs!1455114 () Bool)

(assert (= bs!1455114 (and b!6001052 b!5999090)))

(assert (=> bs!1455114 (= (= lt!2319022 lt!2318826) (= lambda!327603 lambda!327445))))

(declare-fun bs!1455115 () Bool)

(assert (= bs!1455115 (and b!6001052 d!1881807)))

(assert (=> bs!1455115 (not (= lambda!327603 lambda!327599))))

(declare-fun bs!1455116 () Bool)

(assert (= bs!1455116 (and b!6001052 d!1881529)))

(assert (=> bs!1455116 (not (= lambda!327603 lambda!327545))))

(declare-fun bs!1455117 () Bool)

(assert (= bs!1455117 (and b!6001052 b!6000821)))

(assert (=> bs!1455117 (= (= lt!2319022 lt!2318989) (= lambda!327603 lambda!327580))))

(declare-fun bs!1455118 () Bool)

(assert (= bs!1455118 (and b!6001052 b!6000932)))

(assert (=> bs!1455118 (= (= lt!2319022 lt!2319006) (= lambda!327603 lambda!327594))))

(declare-fun bs!1455119 () Bool)

(assert (= bs!1455119 (and b!6001052 b!5999084)))

(assert (=> bs!1455119 (= (= lt!2319022 lt!2318816) (= lambda!327603 lambda!327440))))

(declare-fun bs!1455120 () Bool)

(assert (= bs!1455120 (and b!6001052 b!5999089)))

(assert (=> bs!1455120 (= (= lt!2319022 lt!2318820) (= lambda!327603 lambda!327443))))

(declare-fun bs!1455121 () Bool)

(assert (= bs!1455121 (and b!6001052 d!1881695)))

(assert (=> bs!1455121 (not (= lambda!327603 lambda!327568))))

(declare-fun bs!1455122 () Bool)

(assert (= bs!1455122 (and b!6001052 d!1881629)))

(assert (=> bs!1455122 (not (= lambda!327603 lambda!327555))))

(declare-fun bs!1455123 () Bool)

(assert (= bs!1455123 (and b!6001052 b!5999092)))

(assert (=> bs!1455123 (= (= lt!2319022 lt!2318824) (= lambda!327603 lambda!327446))))

(declare-fun bs!1455124 () Bool)

(assert (= bs!1455124 (and b!6001052 d!1881775)))

(assert (=> bs!1455124 (not (= lambda!327603 lambda!327590))))

(declare-fun bs!1455125 () Bool)

(assert (= bs!1455125 (and b!6001052 d!1881727)))

(assert (=> bs!1455125 (not (= lambda!327603 lambda!327578))))

(declare-fun bs!1455126 () Bool)

(assert (= bs!1455126 (and b!6001052 b!6000934)))

(assert (=> bs!1455126 (= (= lt!2319022 lt!2319004) (= lambda!327603 lambda!327595))))

(assert (=> b!6001052 true))

(declare-fun d!1881837 () Bool)

(declare-fun e!3667949 () Bool)

(assert (=> d!1881837 e!3667949))

(declare-fun res!2504567 () Bool)

(assert (=> d!1881837 (=> (not res!2504567) (not e!3667949))))

(assert (=> d!1881837 (= res!2504567 (>= lt!2319022 0))))

(declare-fun e!3667948 () Int)

(assert (=> d!1881837 (= lt!2319022 e!3667948)))

(declare-fun c!1072364 () Bool)

(assert (=> d!1881837 (= c!1072364 ((_ is Cons!64209) (t!377754 (Cons!64209 lt!2318663 Nil!64209))))))

(assert (=> d!1881837 (= (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209))) lt!2319022)))

(assert (=> b!6001050 (= e!3667948 lt!2319024)))

(assert (=> b!6001050 (= lt!2319024 (maxBigInt!0 (contextDepth!159 (h!70657 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))) (zipperDepth!260 (t!377754 (t!377754 (Cons!64209 lt!2318663 Nil!64209))))))))

(declare-fun lt!2319025 () Unit!157293)

(assert (=> b!6001050 (= lt!2319025 (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 (t!377754 (Cons!64209 lt!2318663 Nil!64209))) lt!2319024 (zipperDepth!260 (t!377754 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))) lambda!327601))))

(assert (=> b!6001050 (forall!15110 (t!377754 (t!377754 (Cons!64209 lt!2318663 Nil!64209))) lambda!327602)))

(declare-fun lt!2319023 () Unit!157293)

(assert (=> b!6001050 (= lt!2319023 lt!2319025)))

(declare-fun b!6001051 () Bool)

(assert (=> b!6001051 (= e!3667948 0)))

(assert (=> b!6001052 (= e!3667949 (forall!15110 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lambda!327603))))

(assert (= (and d!1881837 c!1072364) b!6001050))

(assert (= (and d!1881837 (not c!1072364)) b!6001051))

(assert (= (and d!1881837 res!2504567) b!6001052))

(declare-fun m!6879382 () Bool)

(assert (=> b!6001050 m!6879382))

(declare-fun m!6879384 () Bool)

(assert (=> b!6001050 m!6879384))

(assert (=> b!6001050 m!6879384))

(declare-fun m!6879386 () Bool)

(assert (=> b!6001050 m!6879386))

(declare-fun m!6879388 () Bool)

(assert (=> b!6001050 m!6879388))

(assert (=> b!6001050 m!6879386))

(declare-fun m!6879390 () Bool)

(assert (=> b!6001050 m!6879390))

(assert (=> b!6001050 m!6879386))

(declare-fun m!6879392 () Bool)

(assert (=> b!6001052 m!6879392))

(assert (=> b!5999082 d!1881837))

(declare-fun bs!1455127 () Bool)

(declare-fun b!6001053 () Bool)

(assert (= bs!1455127 (and b!6001053 b!6000929)))

(declare-fun lambda!327604 () Int)

(declare-fun lt!2319026 () Int)

(assert (=> bs!1455127 (= (= lt!2319026 lt!2319001) (= lambda!327604 lambda!327592))))

(declare-fun bs!1455128 () Bool)

(assert (= bs!1455128 (and b!6001053 b!5999365)))

(assert (=> bs!1455128 (= (= lt!2319026 lt!2318859) (= lambda!327604 lambda!327471))))

(declare-fun bs!1455129 () Bool)

(assert (= bs!1455129 (and b!6001053 b!5999017)))

(assert (=> bs!1455129 (= (= lt!2319026 lt!2318786) (= lambda!327604 lambda!327421))))

(declare-fun bs!1455130 () Bool)

(assert (= bs!1455130 (and b!6001053 d!1881785)))

(assert (=> bs!1455130 (not (= lambda!327604 lambda!327596))))

(declare-fun bs!1455131 () Bool)

(assert (= bs!1455131 (and b!6001053 b!6000927)))

(assert (=> bs!1455131 (= (= lt!2319026 lt!2319000) (= lambda!327604 lambda!327591))))

(declare-fun bs!1455132 () Bool)

(assert (= bs!1455132 (and b!6001053 d!1881667)))

(assert (=> bs!1455132 (= (= lt!2319026 lt!2318786) (= lambda!327604 lambda!327563))))

(declare-fun bs!1455133 () Bool)

(assert (= bs!1455133 (and b!6001053 b!5999362)))

(assert (=> bs!1455133 (= (= lt!2319026 lt!2318855) (= lambda!327604 lambda!327469))))

(declare-fun bs!1455134 () Bool)

(assert (= bs!1455134 (and b!6001053 b!5999019)))

(assert (=> bs!1455134 (= (= lt!2319026 lt!2318787) (= lambda!327604 lambda!327422))))

(declare-fun bs!1455135 () Bool)

(assert (= bs!1455135 (and b!6001053 d!1881713)))

(assert (=> bs!1455135 (= (= lt!2319026 lt!2318858) (= lambda!327604 lambda!327570))))

(declare-fun bs!1455136 () Bool)

(assert (= bs!1455136 (and b!6001053 b!6000824)))

(assert (=> bs!1455136 (= (= lt!2319026 lt!2318991) (= lambda!327604 lambda!327582))))

(declare-fun bs!1455137 () Bool)

(assert (= bs!1455137 (and b!6001053 d!1881657)))

(assert (=> bs!1455137 (not (= lambda!327604 lambda!327562))))

(declare-fun bs!1455138 () Bool)

(assert (= bs!1455138 (and b!6001053 b!6000747)))

(assert (=> bs!1455138 (= (= lt!2319026 lt!2318973) (= lambda!327604 lambda!327564))))

(declare-fun bs!1455139 () Bool)

(assert (= bs!1455139 (and b!6001053 b!6000494)))

(assert (=> bs!1455139 (= (= lt!2319026 lt!2318955) (= lambda!327604 lambda!327547))))

(declare-fun bs!1455140 () Bool)

(assert (= bs!1455140 (and b!6001053 d!1881071)))

(assert (=> bs!1455140 (not (= lambda!327604 lambda!327456))))

(declare-fun bs!1455141 () Bool)

(assert (= bs!1455141 (and b!6001053 b!5999363)))

(assert (=> bs!1455141 (= (= lt!2319026 lt!2318858) (= lambda!327604 lambda!327470))))

(declare-fun bs!1455142 () Bool)

(assert (= bs!1455142 (and b!6001053 b!6000749)))

(assert (=> bs!1455142 (= (= lt!2319026 lt!2318974) (= lambda!327604 lambda!327565))))

(declare-fun bs!1455143 () Bool)

(assert (= bs!1455143 (and b!6001053 d!1881577)))

(assert (=> bs!1455143 (= (= lt!2319026 lt!2318854) (= lambda!327604 lambda!327551))))

(declare-fun bs!1455144 () Bool)

(assert (= bs!1455144 (and b!6001053 d!1881117)))

(assert (=> bs!1455144 (not (= lambda!327604 lambda!327475))))

(declare-fun bs!1455145 () Bool)

(assert (= bs!1455145 (and b!6001053 b!6000496)))

(assert (=> bs!1455145 (= (= lt!2319026 lt!2318956) (= lambda!327604 lambda!327548))))

(declare-fun bs!1455146 () Bool)

(assert (= bs!1455146 (and b!6001053 d!1881075)))

(assert (=> bs!1455146 (not (= lambda!327604 lambda!327460))))

(declare-fun bs!1455147 () Bool)

(assert (= bs!1455147 (and b!6001053 d!1881787)))

(assert (=> bs!1455147 (not (= lambda!327604 lambda!327597))))

(declare-fun bs!1455148 () Bool)

(assert (= bs!1455148 (and b!6001053 d!1881045)))

(assert (=> bs!1455148 (not (= lambda!327604 lambda!327449))))

(declare-fun bs!1455149 () Bool)

(assert (= bs!1455149 (and b!6001053 b!6000790)))

(assert (=> bs!1455149 (= (= lt!2319026 lt!2318979) (= lambda!327604 lambda!327571))))

(declare-fun bs!1455150 () Bool)

(assert (= bs!1455150 (and b!6001053 d!1881073)))

(assert (=> bs!1455150 (not (= lambda!327604 lambda!327459))))

(declare-fun bs!1455151 () Bool)

(assert (= bs!1455151 (and b!6001053 d!1881677)))

(assert (=> bs!1455151 (not (= lambda!327604 lambda!327566))))

(declare-fun bs!1455152 () Bool)

(assert (= bs!1455152 (and b!6001053 b!6000792)))

(assert (=> bs!1455152 (= (= lt!2319026 lt!2318980) (= lambda!327604 lambda!327572))))

(declare-fun bs!1455153 () Bool)

(assert (= bs!1455153 (and b!6001053 b!5999360)))

(assert (=> bs!1455153 (= (= lt!2319026 lt!2318854) (= lambda!327604 lambda!327468))))

(declare-fun bs!1455154 () Bool)

(assert (= bs!1455154 (and b!6001053 b!6000826)))

(assert (=> bs!1455154 (= (= lt!2319026 lt!2318992) (= lambda!327604 lambda!327583))))

(declare-fun bs!1455155 () Bool)

(assert (= bs!1455155 (and b!6001053 d!1881093)))

(assert (=> bs!1455155 (not (= lambda!327604 lambda!327472))))

(assert (=> b!6001053 true))

(declare-fun bs!1455156 () Bool)

(declare-fun b!6001055 () Bool)

(assert (= bs!1455156 (and b!6001055 b!6000929)))

(declare-fun lt!2319027 () Int)

(declare-fun lambda!327605 () Int)

(assert (=> bs!1455156 (= (= lt!2319027 lt!2319001) (= lambda!327605 lambda!327592))))

(declare-fun bs!1455157 () Bool)

(assert (= bs!1455157 (and b!6001055 b!5999365)))

(assert (=> bs!1455157 (= (= lt!2319027 lt!2318859) (= lambda!327605 lambda!327471))))

(declare-fun bs!1455158 () Bool)

(assert (= bs!1455158 (and b!6001055 d!1881785)))

(assert (=> bs!1455158 (not (= lambda!327605 lambda!327596))))

(declare-fun bs!1455159 () Bool)

(assert (= bs!1455159 (and b!6001055 b!6000927)))

(assert (=> bs!1455159 (= (= lt!2319027 lt!2319000) (= lambda!327605 lambda!327591))))

(declare-fun bs!1455160 () Bool)

(assert (= bs!1455160 (and b!6001055 d!1881667)))

(assert (=> bs!1455160 (= (= lt!2319027 lt!2318786) (= lambda!327605 lambda!327563))))

(declare-fun bs!1455161 () Bool)

(assert (= bs!1455161 (and b!6001055 b!5999362)))

(assert (=> bs!1455161 (= (= lt!2319027 lt!2318855) (= lambda!327605 lambda!327469))))

(declare-fun bs!1455162 () Bool)

(assert (= bs!1455162 (and b!6001055 b!5999019)))

(assert (=> bs!1455162 (= (= lt!2319027 lt!2318787) (= lambda!327605 lambda!327422))))

(declare-fun bs!1455163 () Bool)

(assert (= bs!1455163 (and b!6001055 d!1881713)))

(assert (=> bs!1455163 (= (= lt!2319027 lt!2318858) (= lambda!327605 lambda!327570))))

(declare-fun bs!1455164 () Bool)

(assert (= bs!1455164 (and b!6001055 b!6000824)))

(assert (=> bs!1455164 (= (= lt!2319027 lt!2318991) (= lambda!327605 lambda!327582))))

(declare-fun bs!1455165 () Bool)

(assert (= bs!1455165 (and b!6001055 d!1881657)))

(assert (=> bs!1455165 (not (= lambda!327605 lambda!327562))))

(declare-fun bs!1455166 () Bool)

(assert (= bs!1455166 (and b!6001055 b!6000747)))

(assert (=> bs!1455166 (= (= lt!2319027 lt!2318973) (= lambda!327605 lambda!327564))))

(declare-fun bs!1455167 () Bool)

(assert (= bs!1455167 (and b!6001055 b!6000494)))

(assert (=> bs!1455167 (= (= lt!2319027 lt!2318955) (= lambda!327605 lambda!327547))))

(declare-fun bs!1455168 () Bool)

(assert (= bs!1455168 (and b!6001055 d!1881071)))

(assert (=> bs!1455168 (not (= lambda!327605 lambda!327456))))

(declare-fun bs!1455169 () Bool)

(assert (= bs!1455169 (and b!6001055 b!5999363)))

(assert (=> bs!1455169 (= (= lt!2319027 lt!2318858) (= lambda!327605 lambda!327470))))

(declare-fun bs!1455170 () Bool)

(assert (= bs!1455170 (and b!6001055 b!6000749)))

(assert (=> bs!1455170 (= (= lt!2319027 lt!2318974) (= lambda!327605 lambda!327565))))

(declare-fun bs!1455171 () Bool)

(assert (= bs!1455171 (and b!6001055 d!1881577)))

(assert (=> bs!1455171 (= (= lt!2319027 lt!2318854) (= lambda!327605 lambda!327551))))

(declare-fun bs!1455172 () Bool)

(assert (= bs!1455172 (and b!6001055 b!5999017)))

(assert (=> bs!1455172 (= (= lt!2319027 lt!2318786) (= lambda!327605 lambda!327421))))

(declare-fun bs!1455173 () Bool)

(assert (= bs!1455173 (and b!6001055 b!6001053)))

(assert (=> bs!1455173 (= (= lt!2319027 lt!2319026) (= lambda!327605 lambda!327604))))

(declare-fun bs!1455174 () Bool)

(assert (= bs!1455174 (and b!6001055 d!1881117)))

(assert (=> bs!1455174 (not (= lambda!327605 lambda!327475))))

(declare-fun bs!1455175 () Bool)

(assert (= bs!1455175 (and b!6001055 b!6000496)))

(assert (=> bs!1455175 (= (= lt!2319027 lt!2318956) (= lambda!327605 lambda!327548))))

(declare-fun bs!1455176 () Bool)

(assert (= bs!1455176 (and b!6001055 d!1881075)))

(assert (=> bs!1455176 (not (= lambda!327605 lambda!327460))))

(declare-fun bs!1455177 () Bool)

(assert (= bs!1455177 (and b!6001055 d!1881787)))

(assert (=> bs!1455177 (not (= lambda!327605 lambda!327597))))

(declare-fun bs!1455178 () Bool)

(assert (= bs!1455178 (and b!6001055 d!1881045)))

(assert (=> bs!1455178 (not (= lambda!327605 lambda!327449))))

(declare-fun bs!1455179 () Bool)

(assert (= bs!1455179 (and b!6001055 b!6000790)))

(assert (=> bs!1455179 (= (= lt!2319027 lt!2318979) (= lambda!327605 lambda!327571))))

(declare-fun bs!1455180 () Bool)

(assert (= bs!1455180 (and b!6001055 d!1881073)))

(assert (=> bs!1455180 (not (= lambda!327605 lambda!327459))))

(declare-fun bs!1455181 () Bool)

(assert (= bs!1455181 (and b!6001055 d!1881677)))

(assert (=> bs!1455181 (not (= lambda!327605 lambda!327566))))

(declare-fun bs!1455182 () Bool)

(assert (= bs!1455182 (and b!6001055 b!6000792)))

(assert (=> bs!1455182 (= (= lt!2319027 lt!2318980) (= lambda!327605 lambda!327572))))

(declare-fun bs!1455183 () Bool)

(assert (= bs!1455183 (and b!6001055 b!5999360)))

(assert (=> bs!1455183 (= (= lt!2319027 lt!2318854) (= lambda!327605 lambda!327468))))

(declare-fun bs!1455184 () Bool)

(assert (= bs!1455184 (and b!6001055 b!6000826)))

(assert (=> bs!1455184 (= (= lt!2319027 lt!2318992) (= lambda!327605 lambda!327583))))

(declare-fun bs!1455185 () Bool)

(assert (= bs!1455185 (and b!6001055 d!1881093)))

(assert (=> bs!1455185 (not (= lambda!327605 lambda!327472))))

(assert (=> b!6001055 true))

(declare-fun d!1881839 () Bool)

(declare-fun e!3667951 () Bool)

(assert (=> d!1881839 e!3667951))

(declare-fun res!2504568 () Bool)

(assert (=> d!1881839 (=> (not res!2504568) (not e!3667951))))

(assert (=> d!1881839 (= res!2504568 (>= lt!2319027 0))))

(declare-fun e!3667950 () Int)

(assert (=> d!1881839 (= lt!2319027 e!3667950)))

(declare-fun c!1072365 () Bool)

(assert (=> d!1881839 (= c!1072365 ((_ is Cons!64208) (exprs!5895 (h!70657 (Cons!64209 lt!2318663 Nil!64209)))))))

(assert (=> d!1881839 (= (contextDepth!159 (h!70657 (Cons!64209 lt!2318663 Nil!64209))) lt!2319027)))

(assert (=> b!6001053 (= e!3667950 lt!2319026)))

(assert (=> b!6001053 (= lt!2319026 (maxBigInt!0 (regexDepth!268 (h!70656 (exprs!5895 (h!70657 (Cons!64209 lt!2318663 Nil!64209))))) (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318663 Nil!64209))))))))))

(declare-fun lt!2319029 () Unit!157293)

(assert (=> b!6001053 (= lt!2319029 (lemmaForallRegexDepthBiggerThanTransitive!58 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318663 Nil!64209)))) lt!2319026 (contextDepth!159 (Context!10791 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318663 Nil!64209))))))))))

(assert (=> b!6001053 (forall!15109 (t!377753 (exprs!5895 (h!70657 (Cons!64209 lt!2318663 Nil!64209)))) lambda!327604)))

(declare-fun lt!2319028 () Unit!157293)

(assert (=> b!6001053 (= lt!2319028 lt!2319029)))

(declare-fun b!6001054 () Bool)

(assert (=> b!6001054 (= e!3667950 0)))

(assert (=> b!6001055 (= e!3667951 (forall!15109 (exprs!5895 (h!70657 (Cons!64209 lt!2318663 Nil!64209))) lambda!327605))))

(assert (= (and d!1881839 c!1072365) b!6001053))

(assert (= (and d!1881839 (not c!1072365)) b!6001054))

(assert (= (and d!1881839 res!2504568) b!6001055))

(declare-fun m!6879394 () Bool)

(assert (=> b!6001053 m!6879394))

(declare-fun m!6879396 () Bool)

(assert (=> b!6001053 m!6879396))

(declare-fun m!6879398 () Bool)

(assert (=> b!6001053 m!6879398))

(assert (=> b!6001053 m!6879396))

(declare-fun m!6879400 () Bool)

(assert (=> b!6001053 m!6879400))

(assert (=> b!6001053 m!6879396))

(declare-fun m!6879402 () Bool)

(assert (=> b!6001053 m!6879402))

(assert (=> b!6001053 m!6879394))

(declare-fun m!6879404 () Bool)

(assert (=> b!6001055 m!6879404))

(assert (=> b!5999082 d!1881839))

(declare-fun bs!1455186 () Bool)

(declare-fun d!1881841 () Bool)

(assert (= bs!1455186 (and d!1881841 d!1881825)))

(declare-fun lambda!327606 () Int)

(assert (=> bs!1455186 (not (= lambda!327606 lambda!327600))))

(declare-fun bs!1455187 () Bool)

(assert (= bs!1455187 (and d!1881841 b!6001050)))

(assert (=> bs!1455187 (not (= lambda!327606 lambda!327602))))

(declare-fun bs!1455188 () Bool)

(assert (= bs!1455188 (and d!1881841 b!5999082)))

(assert (=> bs!1455188 (not (= lambda!327606 lambda!327439))))

(declare-fun bs!1455189 () Bool)

(assert (= bs!1455189 (and d!1881841 d!1881771)))

(assert (=> bs!1455189 (not (= lambda!327606 lambda!327589))))

(declare-fun bs!1455190 () Bool)

(assert (= bs!1455190 (and d!1881841 b!6000823)))

(assert (=> bs!1455190 (not (= lambda!327606 lambda!327581))))

(declare-fun bs!1455191 () Bool)

(assert (= bs!1455191 (and d!1881841 b!5999087)))

(assert (=> bs!1455191 (not (= lambda!327606 lambda!327442))))

(declare-fun bs!1455192 () Bool)

(assert (= bs!1455192 (and d!1881841 b!5999090)))

(assert (=> bs!1455192 (not (= lambda!327606 lambda!327445))))

(declare-fun bs!1455193 () Bool)

(assert (= bs!1455193 (and d!1881841 b!6001052)))

(assert (=> bs!1455193 (not (= lambda!327606 lambda!327603))))

(declare-fun bs!1455194 () Bool)

(assert (= bs!1455194 (and d!1881841 d!1881807)))

(assert (=> bs!1455194 (not (= lambda!327606 lambda!327599))))

(declare-fun bs!1455195 () Bool)

(assert (= bs!1455195 (and d!1881841 d!1881529)))

(assert (=> bs!1455195 (not (= lambda!327606 lambda!327545))))

(declare-fun bs!1455196 () Bool)

(assert (= bs!1455196 (and d!1881841 b!6000821)))

(assert (=> bs!1455196 (not (= lambda!327606 lambda!327580))))

(declare-fun bs!1455197 () Bool)

(assert (= bs!1455197 (and d!1881841 b!6000932)))

(assert (=> bs!1455197 (not (= lambda!327606 lambda!327594))))

(declare-fun bs!1455198 () Bool)

(assert (= bs!1455198 (and d!1881841 b!5999084)))

(assert (=> bs!1455198 (not (= lambda!327606 lambda!327440))))

(declare-fun bs!1455199 () Bool)

(assert (= bs!1455199 (and d!1881841 b!5999089)))

(assert (=> bs!1455199 (not (= lambda!327606 lambda!327443))))

(declare-fun bs!1455200 () Bool)

(assert (= bs!1455200 (and d!1881841 d!1881695)))

(assert (=> bs!1455200 (not (= lambda!327606 lambda!327568))))

(declare-fun bs!1455201 () Bool)

(assert (= bs!1455201 (and d!1881841 d!1881629)))

(assert (=> bs!1455201 (not (= lambda!327606 lambda!327555))))

(declare-fun bs!1455202 () Bool)

(assert (= bs!1455202 (and d!1881841 b!5999092)))

(assert (=> bs!1455202 (not (= lambda!327606 lambda!327446))))

(declare-fun bs!1455203 () Bool)

(assert (= bs!1455203 (and d!1881841 d!1881775)))

(assert (=> bs!1455203 (= (and (= lt!2318818 lt!2318826) (= lambda!327438 lambda!327444)) (= lambda!327606 lambda!327590))))

(declare-fun bs!1455204 () Bool)

(assert (= bs!1455204 (and d!1881841 d!1881727)))

(assert (=> bs!1455204 (= (and (= lt!2318818 lt!2318822) (= lambda!327438 lambda!327441)) (= lambda!327606 lambda!327578))))

(declare-fun bs!1455205 () Bool)

(assert (= bs!1455205 (and d!1881841 b!6000934)))

(assert (=> bs!1455205 (not (= lambda!327606 lambda!327595))))

(assert (=> d!1881841 true))

(assert (=> d!1881841 true))

(assert (=> d!1881841 (< (dynLambda!25174 order!27297 lambda!327438) (dynLambda!25175 order!27299 lambda!327606))))

(assert (=> d!1881841 (forall!15110 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lambda!327606)))

(declare-fun lt!2319030 () Unit!157293)

(assert (=> d!1881841 (= lt!2319030 (choose!45019 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lt!2318818 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209))) lambda!327438))))

(assert (=> d!1881841 (>= lt!2318818 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209))))))

(assert (=> d!1881841 (= (lemmaForallContextDepthBiggerThanTransitive!143 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lt!2318818 (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209))) lambda!327438) lt!2319030)))

(declare-fun bs!1455206 () Bool)

(assert (= bs!1455206 d!1881841))

(declare-fun m!6879406 () Bool)

(assert (=> bs!1455206 m!6879406))

(assert (=> bs!1455206 m!6877452))

(declare-fun m!6879408 () Bool)

(assert (=> bs!1455206 m!6879408))

(assert (=> b!5999082 d!1881841))

(declare-fun d!1881843 () Bool)

(assert (=> d!1881843 (= (maxBigInt!0 (contextDepth!159 (h!70657 (Cons!64209 lt!2318663 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))) (ite (>= (contextDepth!159 (h!70657 (Cons!64209 lt!2318663 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))) (contextDepth!159 (h!70657 (Cons!64209 lt!2318663 Nil!64209))) (zipperDepth!260 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))))))

(assert (=> b!5999082 d!1881843))

(declare-fun d!1881845 () Bool)

(declare-fun res!2504569 () Bool)

(declare-fun e!3667952 () Bool)

(assert (=> d!1881845 (=> res!2504569 e!3667952)))

(assert (=> d!1881845 (= res!2504569 ((_ is Nil!64209) (t!377754 (Cons!64209 lt!2318663 Nil!64209))))))

(assert (=> d!1881845 (= (forall!15110 (t!377754 (Cons!64209 lt!2318663 Nil!64209)) lambda!327439) e!3667952)))

(declare-fun b!6001056 () Bool)

(declare-fun e!3667953 () Bool)

(assert (=> b!6001056 (= e!3667952 e!3667953)))

(declare-fun res!2504570 () Bool)

(assert (=> b!6001056 (=> (not res!2504570) (not e!3667953))))

(assert (=> b!6001056 (= res!2504570 (dynLambda!25173 lambda!327439 (h!70657 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))))))

(declare-fun b!6001057 () Bool)

(assert (=> b!6001057 (= e!3667953 (forall!15110 (t!377754 (t!377754 (Cons!64209 lt!2318663 Nil!64209))) lambda!327439))))

(assert (= (and d!1881845 (not res!2504569)) b!6001056))

(assert (= (and b!6001056 res!2504570) b!6001057))

(declare-fun b_lambda!226829 () Bool)

(assert (=> (not b_lambda!226829) (not b!6001056)))

(declare-fun m!6879410 () Bool)

(assert (=> b!6001056 m!6879410))

(declare-fun m!6879412 () Bool)

(assert (=> b!6001057 m!6879412))

(assert (=> b!5999082 d!1881845))

(assert (=> d!1881019 d!1881015))

(declare-fun d!1881847 () Bool)

(assert (=> d!1881847 (= (flatMap!1524 z!1189 lambda!327357) (dynLambda!25167 lambda!327357 (h!70657 zl!343)))))

(assert (=> d!1881847 true))

(declare-fun _$13!2811 () Unit!157293)

(assert (=> d!1881847 (= (choose!45005 z!1189 (h!70657 zl!343) lambda!327357) _$13!2811)))

(declare-fun b_lambda!226831 () Bool)

(assert (=> (not b_lambda!226831) (not d!1881847)))

(declare-fun bs!1455207 () Bool)

(assert (= bs!1455207 d!1881847))

(assert (=> bs!1455207 m!6877008))

(assert (=> bs!1455207 m!6877402))

(assert (=> d!1881019 d!1881847))

(declare-fun d!1881849 () Bool)

(assert (=> d!1881849 (= (head!12560 (unfocusZipperList!1432 zl!343)) (h!70656 (unfocusZipperList!1432 zl!343)))))

(assert (=> b!5999257 d!1881849))

(assert (=> b!5999192 d!1881545))

(declare-fun bs!1455208 () Bool)

(declare-fun d!1881851 () Bool)

(assert (= bs!1455208 (and d!1881851 b!5999365)))

(declare-fun lambda!327607 () Int)

(assert (=> bs!1455208 (not (= lambda!327607 lambda!327471))))

(declare-fun bs!1455209 () Bool)

(assert (= bs!1455209 (and d!1881851 d!1881785)))

(assert (=> bs!1455209 (= lambda!327607 lambda!327596)))

(declare-fun bs!1455210 () Bool)

(assert (= bs!1455210 (and d!1881851 b!6000927)))

(assert (=> bs!1455210 (not (= lambda!327607 lambda!327591))))

(declare-fun bs!1455211 () Bool)

(assert (= bs!1455211 (and d!1881851 d!1881667)))

(assert (=> bs!1455211 (not (= lambda!327607 lambda!327563))))

(declare-fun bs!1455212 () Bool)

(assert (= bs!1455212 (and d!1881851 b!5999362)))

(assert (=> bs!1455212 (not (= lambda!327607 lambda!327469))))

(declare-fun bs!1455213 () Bool)

(assert (= bs!1455213 (and d!1881851 b!5999019)))

(assert (=> bs!1455213 (not (= lambda!327607 lambda!327422))))

(declare-fun bs!1455214 () Bool)

(assert (= bs!1455214 (and d!1881851 d!1881713)))

(assert (=> bs!1455214 (not (= lambda!327607 lambda!327570))))

(declare-fun bs!1455215 () Bool)

(assert (= bs!1455215 (and d!1881851 b!6000824)))

(assert (=> bs!1455215 (not (= lambda!327607 lambda!327582))))

(declare-fun bs!1455216 () Bool)

(assert (= bs!1455216 (and d!1881851 d!1881657)))

(assert (=> bs!1455216 (= lambda!327607 lambda!327562)))

(declare-fun bs!1455217 () Bool)

(assert (= bs!1455217 (and d!1881851 b!6000747)))

(assert (=> bs!1455217 (not (= lambda!327607 lambda!327564))))

(declare-fun bs!1455218 () Bool)

(assert (= bs!1455218 (and d!1881851 b!6000494)))

(assert (=> bs!1455218 (not (= lambda!327607 lambda!327547))))

(declare-fun bs!1455219 () Bool)

(assert (= bs!1455219 (and d!1881851 d!1881071)))

(assert (=> bs!1455219 (= lambda!327607 lambda!327456)))

(declare-fun bs!1455220 () Bool)

(assert (= bs!1455220 (and d!1881851 b!5999363)))

(assert (=> bs!1455220 (not (= lambda!327607 lambda!327470))))

(declare-fun bs!1455221 () Bool)

(assert (= bs!1455221 (and d!1881851 b!6000749)))

(assert (=> bs!1455221 (not (= lambda!327607 lambda!327565))))

(declare-fun bs!1455222 () Bool)

(assert (= bs!1455222 (and d!1881851 d!1881577)))

(assert (=> bs!1455222 (not (= lambda!327607 lambda!327551))))

(declare-fun bs!1455223 () Bool)

(assert (= bs!1455223 (and d!1881851 b!6001055)))

(assert (=> bs!1455223 (not (= lambda!327607 lambda!327605))))

(declare-fun bs!1455224 () Bool)

(assert (= bs!1455224 (and d!1881851 b!6000929)))

(assert (=> bs!1455224 (not (= lambda!327607 lambda!327592))))

(declare-fun bs!1455225 () Bool)

(assert (= bs!1455225 (and d!1881851 b!5999017)))

(assert (=> bs!1455225 (not (= lambda!327607 lambda!327421))))

(declare-fun bs!1455226 () Bool)

(assert (= bs!1455226 (and d!1881851 b!6001053)))

(assert (=> bs!1455226 (not (= lambda!327607 lambda!327604))))

(declare-fun bs!1455227 () Bool)

(assert (= bs!1455227 (and d!1881851 d!1881117)))

(assert (=> bs!1455227 (= lambda!327607 lambda!327475)))

(declare-fun bs!1455228 () Bool)

(assert (= bs!1455228 (and d!1881851 b!6000496)))

(assert (=> bs!1455228 (not (= lambda!327607 lambda!327548))))

(declare-fun bs!1455229 () Bool)

(assert (= bs!1455229 (and d!1881851 d!1881075)))

(assert (=> bs!1455229 (= lambda!327607 lambda!327460)))

(declare-fun bs!1455230 () Bool)

(assert (= bs!1455230 (and d!1881851 d!1881787)))

(assert (=> bs!1455230 (= lambda!327607 lambda!327597)))

(declare-fun bs!1455231 () Bool)

(assert (= bs!1455231 (and d!1881851 d!1881045)))

(assert (=> bs!1455231 (= lambda!327607 lambda!327449)))

(declare-fun bs!1455232 () Bool)

(assert (= bs!1455232 (and d!1881851 b!6000790)))

(assert (=> bs!1455232 (not (= lambda!327607 lambda!327571))))

(declare-fun bs!1455233 () Bool)

(assert (= bs!1455233 (and d!1881851 d!1881073)))

(assert (=> bs!1455233 (= lambda!327607 lambda!327459)))

(declare-fun bs!1455234 () Bool)

(assert (= bs!1455234 (and d!1881851 d!1881677)))

(assert (=> bs!1455234 (= lambda!327607 lambda!327566)))

(declare-fun bs!1455235 () Bool)

(assert (= bs!1455235 (and d!1881851 b!6000792)))

(assert (=> bs!1455235 (not (= lambda!327607 lambda!327572))))

(declare-fun bs!1455236 () Bool)

(assert (= bs!1455236 (and d!1881851 b!5999360)))

(assert (=> bs!1455236 (not (= lambda!327607 lambda!327468))))

(declare-fun bs!1455237 () Bool)

(assert (= bs!1455237 (and d!1881851 b!6000826)))

(assert (=> bs!1455237 (not (= lambda!327607 lambda!327583))))

(declare-fun bs!1455238 () Bool)

(assert (= bs!1455238 (and d!1881851 d!1881093)))

(assert (=> bs!1455238 (= lambda!327607 lambda!327472)))

(assert (=> d!1881851 (= (inv!83274 setElem!40682) (forall!15109 (exprs!5895 setElem!40682) lambda!327607))))

(declare-fun bs!1455239 () Bool)

(assert (= bs!1455239 d!1881851))

(declare-fun m!6879414 () Bool)

(assert (=> bs!1455239 m!6879414))

(assert (=> setNonEmpty!40682 d!1881851))

(declare-fun d!1881853 () Bool)

(declare-fun res!2504571 () Bool)

(declare-fun e!3667954 () Bool)

(assert (=> d!1881853 (=> res!2504571 e!3667954)))

(assert (=> d!1881853 (= res!2504571 ((_ is Nil!64208) (exprs!5895 lt!2318663)))))

(assert (=> d!1881853 (= (forall!15109 (exprs!5895 lt!2318663) lambda!327422) e!3667954)))

(declare-fun b!6001058 () Bool)

(declare-fun e!3667955 () Bool)

(assert (=> b!6001058 (= e!3667954 e!3667955)))

(declare-fun res!2504572 () Bool)

(assert (=> b!6001058 (=> (not res!2504572) (not e!3667955))))

(assert (=> b!6001058 (= res!2504572 (dynLambda!25172 lambda!327422 (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun b!6001059 () Bool)

(assert (=> b!6001059 (= e!3667955 (forall!15109 (t!377753 (exprs!5895 lt!2318663)) lambda!327422))))

(assert (= (and d!1881853 (not res!2504571)) b!6001058))

(assert (= (and b!6001058 res!2504572) b!6001059))

(declare-fun b_lambda!226833 () Bool)

(assert (=> (not b_lambda!226833) (not b!6001058)))

(declare-fun m!6879416 () Bool)

(assert (=> b!6001058 m!6879416))

(declare-fun m!6879418 () Bool)

(assert (=> b!6001059 m!6879418))

(assert (=> b!5999019 d!1881853))

(declare-fun bs!1455240 () Bool)

(declare-fun d!1881855 () Bool)

(assert (= bs!1455240 (and d!1881855 b!6001050)))

(declare-fun lambda!327608 () Int)

(assert (=> bs!1455240 (not (= lambda!327608 lambda!327602))))

(declare-fun bs!1455241 () Bool)

(assert (= bs!1455241 (and d!1881855 b!5999082)))

(assert (=> bs!1455241 (not (= lambda!327608 lambda!327439))))

(declare-fun bs!1455242 () Bool)

(assert (= bs!1455242 (and d!1881855 d!1881771)))

(assert (=> bs!1455242 (= lambda!327608 lambda!327589)))

(declare-fun bs!1455243 () Bool)

(assert (= bs!1455243 (and d!1881855 b!6000823)))

(assert (=> bs!1455243 (not (= lambda!327608 lambda!327581))))

(declare-fun bs!1455244 () Bool)

(assert (= bs!1455244 (and d!1881855 b!5999087)))

(assert (=> bs!1455244 (not (= lambda!327608 lambda!327442))))

(declare-fun bs!1455245 () Bool)

(assert (= bs!1455245 (and d!1881855 b!5999090)))

(assert (=> bs!1455245 (not (= lambda!327608 lambda!327445))))

(declare-fun bs!1455246 () Bool)

(assert (= bs!1455246 (and d!1881855 b!6001052)))

(assert (=> bs!1455246 (not (= lambda!327608 lambda!327603))))

(declare-fun bs!1455247 () Bool)

(assert (= bs!1455247 (and d!1881855 d!1881807)))

(assert (=> bs!1455247 (= lambda!327608 lambda!327599)))

(declare-fun bs!1455248 () Bool)

(assert (= bs!1455248 (and d!1881855 d!1881529)))

(assert (=> bs!1455248 (= lambda!327608 lambda!327545)))

(declare-fun bs!1455249 () Bool)

(assert (= bs!1455249 (and d!1881855 b!6000821)))

(assert (=> bs!1455249 (not (= lambda!327608 lambda!327580))))

(declare-fun bs!1455250 () Bool)

(assert (= bs!1455250 (and d!1881855 b!6000932)))

(assert (=> bs!1455250 (not (= lambda!327608 lambda!327594))))

(declare-fun bs!1455251 () Bool)

(assert (= bs!1455251 (and d!1881855 b!5999084)))

(assert (=> bs!1455251 (not (= lambda!327608 lambda!327440))))

(declare-fun bs!1455252 () Bool)

(assert (= bs!1455252 (and d!1881855 b!5999089)))

(assert (=> bs!1455252 (not (= lambda!327608 lambda!327443))))

(declare-fun bs!1455253 () Bool)

(assert (= bs!1455253 (and d!1881855 d!1881695)))

(assert (=> bs!1455253 (= lambda!327608 lambda!327568)))

(declare-fun bs!1455254 () Bool)

(assert (= bs!1455254 (and d!1881855 d!1881629)))

(assert (=> bs!1455254 (= lambda!327608 lambda!327555)))

(declare-fun bs!1455255 () Bool)

(assert (= bs!1455255 (and d!1881855 d!1881841)))

(assert (=> bs!1455255 (not (= lambda!327608 lambda!327606))))

(declare-fun bs!1455256 () Bool)

(assert (= bs!1455256 (and d!1881855 d!1881825)))

(assert (=> bs!1455256 (= lambda!327608 lambda!327600)))

(declare-fun bs!1455257 () Bool)

(assert (= bs!1455257 (and d!1881855 b!5999092)))

(assert (=> bs!1455257 (not (= lambda!327608 lambda!327446))))

(declare-fun bs!1455258 () Bool)

(assert (= bs!1455258 (and d!1881855 d!1881775)))

(assert (=> bs!1455258 (not (= lambda!327608 lambda!327590))))

(declare-fun bs!1455259 () Bool)

(assert (= bs!1455259 (and d!1881855 d!1881727)))

(assert (=> bs!1455259 (not (= lambda!327608 lambda!327578))))

(declare-fun bs!1455260 () Bool)

(assert (= bs!1455260 (and d!1881855 b!6000934)))

(assert (=> bs!1455260 (not (= lambda!327608 lambda!327595))))

(assert (=> d!1881855 (= (nullableZipper!1816 lt!2318676) (exists!2372 lt!2318676 lambda!327608))))

(declare-fun bs!1455261 () Bool)

(assert (= bs!1455261 d!1881855))

(declare-fun m!6879420 () Bool)

(assert (=> bs!1455261 m!6879420))

(assert (=> b!5999227 d!1881855))

(assert (=> b!5999422 d!1881005))

(declare-fun bm!485087 () Bool)

(declare-fun call!485092 () (InoxSet Context!10790))

(declare-fun call!485094 () (InoxSet Context!10790))

(assert (=> bm!485087 (= call!485092 call!485094)))

(declare-fun b!6001061 () Bool)

(declare-fun c!1072367 () Bool)

(declare-fun e!3667958 () Bool)

(assert (=> b!6001061 (= c!1072367 e!3667958)))

(declare-fun res!2504573 () Bool)

(assert (=> b!6001061 (=> (not res!2504573) (not e!3667958))))

(assert (=> b!6001061 (= res!2504573 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun e!3667957 () (InoxSet Context!10790))

(declare-fun e!3667956 () (InoxSet Context!10790))

(assert (=> b!6001061 (= e!3667957 e!3667956)))

(declare-fun call!485095 () (InoxSet Context!10790))

(declare-fun c!1072369 () Bool)

(declare-fun bm!485088 () Bool)

(declare-fun call!485096 () List!64332)

(assert (=> bm!485088 (= call!485095 (derivationStepZipperDown!1261 (ite c!1072369 (regOne!32535 (h!70656 (exprs!5895 lt!2318654))) (regOne!32534 (h!70656 (exprs!5895 lt!2318654)))) (ite c!1072369 (Context!10791 (t!377753 (exprs!5895 lt!2318654))) (Context!10791 call!485096)) (h!70658 s!2326)))))

(declare-fun b!6001062 () Bool)

(declare-fun e!3667961 () (InoxSet Context!10790))

(assert (=> b!6001062 (= e!3667961 call!485092)))

(declare-fun bm!485089 () Bool)

(declare-fun call!485097 () List!64332)

(assert (=> bm!485089 (= call!485097 call!485096)))

(declare-fun c!1072366 () Bool)

(declare-fun bm!485090 () Bool)

(assert (=> bm!485090 (= call!485096 ($colon$colon!1896 (exprs!5895 (Context!10791 (t!377753 (exprs!5895 lt!2318654)))) (ite (or c!1072367 c!1072366) (regTwo!32534 (h!70656 (exprs!5895 lt!2318654))) (h!70656 (exprs!5895 lt!2318654)))))))

(declare-fun bm!485091 () Bool)

(declare-fun call!485093 () (InoxSet Context!10790))

(assert (=> bm!485091 (= call!485093 (derivationStepZipperDown!1261 (ite c!1072369 (regTwo!32535 (h!70656 (exprs!5895 lt!2318654))) (ite c!1072367 (regTwo!32534 (h!70656 (exprs!5895 lt!2318654))) (ite c!1072366 (regOne!32534 (h!70656 (exprs!5895 lt!2318654))) (reg!16340 (h!70656 (exprs!5895 lt!2318654)))))) (ite (or c!1072369 c!1072367) (Context!10791 (t!377753 (exprs!5895 lt!2318654))) (Context!10791 call!485097)) (h!70658 s!2326)))))

(declare-fun b!6001063 () Bool)

(assert (=> b!6001063 (= e!3667957 ((_ map or) call!485095 call!485093))))

(declare-fun b!6001064 () Bool)

(declare-fun c!1072370 () Bool)

(assert (=> b!6001064 (= c!1072370 ((_ is Star!16011) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun e!3667960 () (InoxSet Context!10790))

(assert (=> b!6001064 (= e!3667961 e!3667960)))

(declare-fun bm!485092 () Bool)

(assert (=> bm!485092 (= call!485094 call!485093)))

(declare-fun b!6001065 () Bool)

(declare-fun e!3667959 () (InoxSet Context!10790))

(assert (=> b!6001065 (= e!3667959 e!3667957)))

(assert (=> b!6001065 (= c!1072369 ((_ is Union!16011) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun d!1881857 () Bool)

(declare-fun c!1072368 () Bool)

(assert (=> d!1881857 (= c!1072368 (and ((_ is ElementMatch!16011) (h!70656 (exprs!5895 lt!2318654))) (= (c!1071586 (h!70656 (exprs!5895 lt!2318654))) (h!70658 s!2326))))))

(assert (=> d!1881857 (= (derivationStepZipperDown!1261 (h!70656 (exprs!5895 lt!2318654)) (Context!10791 (t!377753 (exprs!5895 lt!2318654))) (h!70658 s!2326)) e!3667959)))

(declare-fun b!6001060 () Bool)

(assert (=> b!6001060 (= e!3667960 call!485092)))

(declare-fun b!6001066 () Bool)

(assert (=> b!6001066 (= e!3667956 ((_ map or) call!485095 call!485094))))

(declare-fun b!6001067 () Bool)

(assert (=> b!6001067 (= e!3667960 ((as const (Array Context!10790 Bool)) false))))

(declare-fun b!6001068 () Bool)

(assert (=> b!6001068 (= e!3667959 (store ((as const (Array Context!10790 Bool)) false) (Context!10791 (t!377753 (exprs!5895 lt!2318654))) true))))

(declare-fun b!6001069 () Bool)

(assert (=> b!6001069 (= e!3667956 e!3667961)))

(assert (=> b!6001069 (= c!1072366 ((_ is Concat!24856) (h!70656 (exprs!5895 lt!2318654))))))

(declare-fun b!6001070 () Bool)

(assert (=> b!6001070 (= e!3667958 (nullable!6006 (regOne!32534 (h!70656 (exprs!5895 lt!2318654)))))))

(assert (= (and d!1881857 c!1072368) b!6001068))

(assert (= (and d!1881857 (not c!1072368)) b!6001065))

(assert (= (and b!6001065 c!1072369) b!6001063))

(assert (= (and b!6001065 (not c!1072369)) b!6001061))

(assert (= (and b!6001061 res!2504573) b!6001070))

(assert (= (and b!6001061 c!1072367) b!6001066))

(assert (= (and b!6001061 (not c!1072367)) b!6001069))

(assert (= (and b!6001069 c!1072366) b!6001062))

(assert (= (and b!6001069 (not c!1072366)) b!6001064))

(assert (= (and b!6001064 c!1072370) b!6001060))

(assert (= (and b!6001064 (not c!1072370)) b!6001067))

(assert (= (or b!6001062 b!6001060) bm!485089))

(assert (= (or b!6001062 b!6001060) bm!485087))

(assert (= (or b!6001066 bm!485089) bm!485090))

(assert (= (or b!6001066 bm!485087) bm!485092))

(assert (= (or b!6001063 bm!485092) bm!485091))

(assert (= (or b!6001063 b!6001066) bm!485088))

(declare-fun m!6879422 () Bool)

(assert (=> b!6001070 m!6879422))

(declare-fun m!6879424 () Bool)

(assert (=> bm!485088 m!6879424))

(declare-fun m!6879426 () Bool)

(assert (=> b!6001068 m!6879426))

(declare-fun m!6879428 () Bool)

(assert (=> bm!485090 m!6879428))

(declare-fun m!6879430 () Bool)

(assert (=> bm!485091 m!6879430))

(assert (=> bm!484696 d!1881857))

(assert (=> bm!484688 d!1881543))

(assert (=> d!1881051 d!1881543))

(assert (=> b!5999224 d!1881121))

(declare-fun b!6001071 () Bool)

(declare-fun c!1072373 () Bool)

(assert (=> b!6001071 (= c!1072373 ((_ is Star!16011) (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun e!3667962 () Bool)

(declare-fun e!3667966 () Bool)

(assert (=> b!6001071 (= e!3667962 e!3667966)))

(declare-fun b!6001072 () Bool)

(declare-fun c!1072377 () Bool)

(assert (=> b!6001072 (= c!1072377 ((_ is Union!16011) (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun e!3667963 () Int)

(declare-fun e!3667969 () Int)

(assert (=> b!6001072 (= e!3667963 e!3667969)))

(declare-fun b!6001073 () Bool)

(declare-fun e!3667970 () Bool)

(declare-fun lt!2319031 () Int)

(declare-fun call!485102 () Int)

(assert (=> b!6001073 (= e!3667970 (> lt!2319031 call!485102))))

(declare-fun b!6001074 () Bool)

(declare-fun e!3667967 () Bool)

(assert (=> b!6001074 (= e!3667967 e!3667970)))

(declare-fun res!2504574 () Bool)

(declare-fun call!485103 () Int)

(assert (=> b!6001074 (= res!2504574 (> lt!2319031 call!485103))))

(assert (=> b!6001074 (=> (not res!2504574) (not e!3667970))))

(declare-fun b!6001075 () Bool)

(declare-fun e!3667968 () Int)

(assert (=> b!6001075 (= e!3667968 1)))

(declare-fun call!485100 () Int)

(declare-fun bm!485093 () Bool)

(declare-fun c!1072371 () Bool)

(assert (=> bm!485093 (= call!485100 (regexDepth!268 (ite c!1072371 (reg!16340 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (ite c!1072377 (regTwo!32535 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (regOne!32534 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292)))))))))

(declare-fun b!6001076 () Bool)

(declare-fun res!2504575 () Bool)

(declare-fun e!3667964 () Bool)

(assert (=> b!6001076 (=> (not res!2504575) (not e!3667964))))

(declare-fun call!485098 () Int)

(assert (=> b!6001076 (= res!2504575 (> lt!2319031 call!485098))))

(assert (=> b!6001076 (= e!3667962 e!3667964)))

(declare-fun bm!485094 () Bool)

(declare-fun call!485099 () Int)

(assert (=> bm!485094 (= call!485099 call!485100)))

(declare-fun bm!485095 () Bool)

(assert (=> bm!485095 (= call!485098 call!485103)))

(declare-fun call!485104 () Int)

(declare-fun bm!485096 () Bool)

(assert (=> bm!485096 (= call!485104 (regexDepth!268 (ite c!1072377 (regOne!32535 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (regTwo!32534 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))))

(declare-fun bm!485097 () Bool)

(declare-fun call!485101 () Int)

(assert (=> bm!485097 (= call!485101 (maxBigInt!0 (ite c!1072377 call!485104 call!485099) (ite c!1072377 call!485099 call!485104)))))

(declare-fun b!6001077 () Bool)

(assert (=> b!6001077 (= e!3667968 (+ 1 call!485101))))

(declare-fun bm!485098 () Bool)

(declare-fun c!1072374 () Bool)

(assert (=> bm!485098 (= call!485102 (regexDepth!268 (ite c!1072374 (regTwo!32535 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (regTwo!32534 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))))

(declare-fun b!6001078 () Bool)

(declare-fun e!3667965 () Int)

(assert (=> b!6001078 (= e!3667965 1)))

(declare-fun b!6001079 () Bool)

(assert (=> b!6001079 (= e!3667969 e!3667968)))

(declare-fun c!1072372 () Bool)

(assert (=> b!6001079 (= c!1072372 ((_ is Concat!24856) (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun d!1881859 () Bool)

(declare-fun e!3667971 () Bool)

(assert (=> d!1881859 e!3667971))

(declare-fun res!2504576 () Bool)

(assert (=> d!1881859 (=> (not res!2504576) (not e!3667971))))

(assert (=> d!1881859 (= res!2504576 (> lt!2319031 0))))

(assert (=> d!1881859 (= lt!2319031 e!3667965)))

(declare-fun c!1072376 () Bool)

(assert (=> d!1881859 (= c!1072376 ((_ is ElementMatch!16011) (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(assert (=> d!1881859 (= (regexDepth!268 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) lt!2319031)))

(declare-fun b!6001080 () Bool)

(assert (=> b!6001080 (= e!3667964 (> lt!2319031 call!485102))))

(declare-fun b!6001081 () Bool)

(assert (=> b!6001081 (= e!3667967 e!3667962)))

(declare-fun c!1072375 () Bool)

(assert (=> b!6001081 (= c!1072375 ((_ is Concat!24856) (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun b!6001082 () Bool)

(assert (=> b!6001082 (= e!3667966 (> lt!2319031 call!485098))))

(declare-fun b!6001083 () Bool)

(assert (=> b!6001083 (= e!3667969 (+ 1 call!485101))))

(declare-fun b!6001084 () Bool)

(assert (=> b!6001084 (= e!3667971 e!3667967)))

(assert (=> b!6001084 (= c!1072374 ((_ is Union!16011) (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(declare-fun b!6001085 () Bool)

(assert (=> b!6001085 (= e!3667966 (= lt!2319031 1))))

(declare-fun b!6001086 () Bool)

(assert (=> b!6001086 (= e!3667963 (+ 1 call!485100))))

(declare-fun bm!485099 () Bool)

(assert (=> bm!485099 (= call!485103 (regexDepth!268 (ite c!1072374 (regOne!32535 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (ite c!1072375 (regOne!32534 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))) (reg!16340 (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292)))))))))

(declare-fun b!6001087 () Bool)

(assert (=> b!6001087 (= e!3667965 e!3667963)))

(assert (=> b!6001087 (= c!1072371 ((_ is Star!16011) (ite c!1071788 (regTwo!32535 r!7292) (regTwo!32534 r!7292))))))

(assert (= (and d!1881859 c!1072376) b!6001078))

(assert (= (and d!1881859 (not c!1072376)) b!6001087))

(assert (= (and b!6001087 c!1072371) b!6001086))

(assert (= (and b!6001087 (not c!1072371)) b!6001072))

(assert (= (and b!6001072 c!1072377) b!6001083))

(assert (= (and b!6001072 (not c!1072377)) b!6001079))

(assert (= (and b!6001079 c!1072372) b!6001077))

(assert (= (and b!6001079 (not c!1072372)) b!6001075))

(assert (= (or b!6001083 b!6001077) bm!485094))

(assert (= (or b!6001083 b!6001077) bm!485096))

(assert (= (or b!6001083 b!6001077) bm!485097))

(assert (= (or b!6001086 bm!485094) bm!485093))

(assert (= (and d!1881859 res!2504576) b!6001084))

(assert (= (and b!6001084 c!1072374) b!6001074))

(assert (= (and b!6001084 (not c!1072374)) b!6001081))

(assert (= (and b!6001074 res!2504574) b!6001073))

(assert (= (and b!6001081 c!1072375) b!6001076))

(assert (= (and b!6001081 (not c!1072375)) b!6001071))

(assert (= (and b!6001076 res!2504575) b!6001080))

(assert (= (and b!6001071 c!1072373) b!6001082))

(assert (= (and b!6001071 (not c!1072373)) b!6001085))

(assert (= (or b!6001076 b!6001082) bm!485095))

(assert (= (or b!6001073 b!6001080) bm!485098))

(assert (= (or b!6001074 bm!485095) bm!485099))

(declare-fun m!6879432 () Bool)

(assert (=> bm!485096 m!6879432))

(declare-fun m!6879434 () Bool)

(assert (=> bm!485097 m!6879434))

(declare-fun m!6879436 () Bool)

(assert (=> bm!485093 m!6879436))

(declare-fun m!6879438 () Bool)

(assert (=> bm!485099 m!6879438))

(declare-fun m!6879440 () Bool)

(assert (=> bm!485098 m!6879440))

(assert (=> bm!484651 d!1881859))

(declare-fun d!1881861 () Bool)

(assert (=> d!1881861 (= (isEmpty!36101 (unfocusZipperList!1432 zl!343)) ((_ is Nil!64208) (unfocusZipperList!1432 zl!343)))))

(assert (=> b!5999253 d!1881861))

(declare-fun d!1881863 () Bool)

(assert (=> d!1881863 (= (isEmpty!36101 (tail!11645 (exprs!5895 (h!70657 zl!343)))) ((_ is Nil!64208) (tail!11645 (exprs!5895 (h!70657 zl!343)))))))

(assert (=> b!5999426 d!1881863))

(declare-fun d!1881865 () Bool)

(assert (=> d!1881865 (= (tail!11645 (exprs!5895 (h!70657 zl!343))) (t!377753 (exprs!5895 (h!70657 zl!343))))))

(assert (=> b!5999426 d!1881865))

(declare-fun d!1881867 () Bool)

(declare-fun c!1072378 () Bool)

(assert (=> d!1881867 (= c!1072378 (isEmpty!36106 (t!377755 s!2326)))))

(declare-fun e!3667972 () Bool)

(assert (=> d!1881867 (= (matchZipper!2047 ((_ map or) lt!2318661 lt!2318651) (t!377755 s!2326)) e!3667972)))

(declare-fun b!6001088 () Bool)

(assert (=> b!6001088 (= e!3667972 (nullableZipper!1816 ((_ map or) lt!2318661 lt!2318651)))))

(declare-fun b!6001089 () Bool)

(assert (=> b!6001089 (= e!3667972 (matchZipper!2047 (derivationStepZipper!1992 ((_ map or) lt!2318661 lt!2318651) (head!12559 (t!377755 s!2326))) (tail!11644 (t!377755 s!2326))))))

(assert (= (and d!1881867 c!1072378) b!6001088))

(assert (= (and d!1881867 (not c!1072378)) b!6001089))

(assert (=> d!1881867 m!6877536))

(declare-fun m!6879442 () Bool)

(assert (=> b!6001088 m!6879442))

(assert (=> b!6001089 m!6877540))

(assert (=> b!6001089 m!6877540))

(declare-fun m!6879444 () Bool)

(assert (=> b!6001089 m!6879444))

(assert (=> b!6001089 m!6877544))

(assert (=> b!6001089 m!6879444))

(assert (=> b!6001089 m!6877544))

(declare-fun m!6879446 () Bool)

(assert (=> b!6001089 m!6879446))

(assert (=> d!1881063 d!1881867))

(assert (=> d!1881063 d!1881061))

(declare-fun d!1881869 () Bool)

(declare-fun e!3667975 () Bool)

(assert (=> d!1881869 (= (matchZipper!2047 ((_ map or) lt!2318661 lt!2318651) (t!377755 s!2326)) e!3667975)))

(declare-fun res!2504579 () Bool)

(assert (=> d!1881869 (=> res!2504579 e!3667975)))

(assert (=> d!1881869 (= res!2504579 (matchZipper!2047 lt!2318661 (t!377755 s!2326)))))

(assert (=> d!1881869 true))

(declare-fun _$48!1539 () Unit!157293)

(assert (=> d!1881869 (= (choose!45013 lt!2318661 lt!2318651 (t!377755 s!2326)) _$48!1539)))

(declare-fun b!6001092 () Bool)

(assert (=> b!6001092 (= e!3667975 (matchZipper!2047 lt!2318651 (t!377755 s!2326)))))

(assert (= (and d!1881869 (not res!2504579)) b!6001092))

(assert (=> d!1881869 m!6877568))

(assert (=> d!1881869 m!6876938))

(assert (=> b!6001092 m!6876926))

(assert (=> d!1881063 d!1881869))

(declare-fun bs!1455262 () Bool)

(declare-fun d!1881871 () Bool)

(assert (= bs!1455262 (and d!1881871 b!6001050)))

(declare-fun lambda!327609 () Int)

(assert (=> bs!1455262 (not (= lambda!327609 lambda!327602))))

(declare-fun bs!1455263 () Bool)

(assert (= bs!1455263 (and d!1881871 d!1881855)))

(assert (=> bs!1455263 (= lambda!327609 lambda!327608)))

(declare-fun bs!1455264 () Bool)

(assert (= bs!1455264 (and d!1881871 b!5999082)))

(assert (=> bs!1455264 (not (= lambda!327609 lambda!327439))))

(declare-fun bs!1455265 () Bool)

(assert (= bs!1455265 (and d!1881871 d!1881771)))

(assert (=> bs!1455265 (= lambda!327609 lambda!327589)))

(declare-fun bs!1455266 () Bool)

(assert (= bs!1455266 (and d!1881871 b!6000823)))

(assert (=> bs!1455266 (not (= lambda!327609 lambda!327581))))

(declare-fun bs!1455267 () Bool)

(assert (= bs!1455267 (and d!1881871 b!5999087)))

(assert (=> bs!1455267 (not (= lambda!327609 lambda!327442))))

(declare-fun bs!1455268 () Bool)

(assert (= bs!1455268 (and d!1881871 b!5999090)))

(assert (=> bs!1455268 (not (= lambda!327609 lambda!327445))))

(declare-fun bs!1455269 () Bool)

(assert (= bs!1455269 (and d!1881871 b!6001052)))

(assert (=> bs!1455269 (not (= lambda!327609 lambda!327603))))

(declare-fun bs!1455270 () Bool)

(assert (= bs!1455270 (and d!1881871 d!1881807)))

(assert (=> bs!1455270 (= lambda!327609 lambda!327599)))

(declare-fun bs!1455271 () Bool)

(assert (= bs!1455271 (and d!1881871 d!1881529)))

(assert (=> bs!1455271 (= lambda!327609 lambda!327545)))

(declare-fun bs!1455272 () Bool)

(assert (= bs!1455272 (and d!1881871 b!6000821)))

(assert (=> bs!1455272 (not (= lambda!327609 lambda!327580))))

(declare-fun bs!1455273 () Bool)

(assert (= bs!1455273 (and d!1881871 b!6000932)))

(assert (=> bs!1455273 (not (= lambda!327609 lambda!327594))))

(declare-fun bs!1455274 () Bool)

(assert (= bs!1455274 (and d!1881871 b!5999084)))

(assert (=> bs!1455274 (not (= lambda!327609 lambda!327440))))

(declare-fun bs!1455275 () Bool)

(assert (= bs!1455275 (and d!1881871 b!5999089)))

(assert (=> bs!1455275 (not (= lambda!327609 lambda!327443))))

(declare-fun bs!1455276 () Bool)

(assert (= bs!1455276 (and d!1881871 d!1881695)))

(assert (=> bs!1455276 (= lambda!327609 lambda!327568)))

(declare-fun bs!1455277 () Bool)

(assert (= bs!1455277 (and d!1881871 d!1881629)))

(assert (=> bs!1455277 (= lambda!327609 lambda!327555)))

(declare-fun bs!1455278 () Bool)

(assert (= bs!1455278 (and d!1881871 d!1881841)))

(assert (=> bs!1455278 (not (= lambda!327609 lambda!327606))))

(declare-fun bs!1455279 () Bool)

(assert (= bs!1455279 (and d!1881871 d!1881825)))

(assert (=> bs!1455279 (= lambda!327609 lambda!327600)))

(declare-fun bs!1455280 () Bool)

(assert (= bs!1455280 (and d!1881871 b!5999092)))

(assert (=> bs!1455280 (not (= lambda!327609 lambda!327446))))

(declare-fun bs!1455281 () Bool)

(assert (= bs!1455281 (and d!1881871 d!1881775)))

(assert (=> bs!1455281 (not (= lambda!327609 lambda!327590))))

(declare-fun bs!1455282 () Bool)

(assert (= bs!1455282 (and d!1881871 d!1881727)))

(assert (=> bs!1455282 (not (= lambda!327609 lambda!327578))))

(declare-fun bs!1455283 () Bool)

(assert (= bs!1455283 (and d!1881871 b!6000934)))

(assert (=> bs!1455283 (not (= lambda!327609 lambda!327595))))

(assert (=> d!1881871 (= (nullableZipper!1816 lt!2318671) (exists!2372 lt!2318671 lambda!327609))))

(declare-fun bs!1455284 () Bool)

(assert (= bs!1455284 d!1881871))

(declare-fun m!6879448 () Bool)

(assert (=> bs!1455284 m!6879448))

(assert (=> b!5999218 d!1881871))

(declare-fun b!6001096 () Bool)

(declare-fun e!3667976 () Bool)

(declare-fun tp!1668977 () Bool)

(declare-fun tp!1668976 () Bool)

(assert (=> b!6001096 (= e!3667976 (and tp!1668977 tp!1668976))))

(declare-fun b!6001095 () Bool)

(declare-fun tp!1668975 () Bool)

(assert (=> b!6001095 (= e!3667976 tp!1668975)))

(declare-fun b!6001093 () Bool)

(assert (=> b!6001093 (= e!3667976 tp_is_empty!41275)))

(assert (=> b!5999505 (= tp!1668785 e!3667976)))

(declare-fun b!6001094 () Bool)

(declare-fun tp!1668974 () Bool)

(declare-fun tp!1668978 () Bool)

(assert (=> b!6001094 (= e!3667976 (and tp!1668974 tp!1668978))))

(assert (= (and b!5999505 ((_ is ElementMatch!16011) (reg!16340 (regOne!32534 r!7292)))) b!6001093))

(assert (= (and b!5999505 ((_ is Concat!24856) (reg!16340 (regOne!32534 r!7292)))) b!6001094))

(assert (= (and b!5999505 ((_ is Star!16011) (reg!16340 (regOne!32534 r!7292)))) b!6001095))

(assert (= (and b!5999505 ((_ is Union!16011) (reg!16340 (regOne!32534 r!7292)))) b!6001096))

(declare-fun b!6001100 () Bool)

(declare-fun e!3667977 () Bool)

(declare-fun tp!1668982 () Bool)

(declare-fun tp!1668981 () Bool)

(assert (=> b!6001100 (= e!3667977 (and tp!1668982 tp!1668981))))

(declare-fun b!6001099 () Bool)

(declare-fun tp!1668980 () Bool)

(assert (=> b!6001099 (= e!3667977 tp!1668980)))

(declare-fun b!6001097 () Bool)

(assert (=> b!6001097 (= e!3667977 tp_is_empty!41275)))

(assert (=> b!5999504 (= tp!1668784 e!3667977)))

(declare-fun b!6001098 () Bool)

(declare-fun tp!1668979 () Bool)

(declare-fun tp!1668983 () Bool)

(assert (=> b!6001098 (= e!3667977 (and tp!1668979 tp!1668983))))

(assert (= (and b!5999504 ((_ is ElementMatch!16011) (regOne!32534 (regOne!32534 r!7292)))) b!6001097))

(assert (= (and b!5999504 ((_ is Concat!24856) (regOne!32534 (regOne!32534 r!7292)))) b!6001098))

(assert (= (and b!5999504 ((_ is Star!16011) (regOne!32534 (regOne!32534 r!7292)))) b!6001099))

(assert (= (and b!5999504 ((_ is Union!16011) (regOne!32534 (regOne!32534 r!7292)))) b!6001100))

(declare-fun b!6001104 () Bool)

(declare-fun e!3667978 () Bool)

(declare-fun tp!1668987 () Bool)

(declare-fun tp!1668986 () Bool)

(assert (=> b!6001104 (= e!3667978 (and tp!1668987 tp!1668986))))

(declare-fun b!6001103 () Bool)

(declare-fun tp!1668985 () Bool)

(assert (=> b!6001103 (= e!3667978 tp!1668985)))

(declare-fun b!6001101 () Bool)

(assert (=> b!6001101 (= e!3667978 tp_is_empty!41275)))

(assert (=> b!5999504 (= tp!1668788 e!3667978)))

(declare-fun b!6001102 () Bool)

(declare-fun tp!1668984 () Bool)

(declare-fun tp!1668988 () Bool)

(assert (=> b!6001102 (= e!3667978 (and tp!1668984 tp!1668988))))

(assert (= (and b!5999504 ((_ is ElementMatch!16011) (regTwo!32534 (regOne!32534 r!7292)))) b!6001101))

(assert (= (and b!5999504 ((_ is Concat!24856) (regTwo!32534 (regOne!32534 r!7292)))) b!6001102))

(assert (= (and b!5999504 ((_ is Star!16011) (regTwo!32534 (regOne!32534 r!7292)))) b!6001103))

(assert (= (and b!5999504 ((_ is Union!16011) (regTwo!32534 (regOne!32534 r!7292)))) b!6001104))

(declare-fun b!6001108 () Bool)

(declare-fun e!3667979 () Bool)

(declare-fun tp!1668992 () Bool)

(declare-fun tp!1668991 () Bool)

(assert (=> b!6001108 (= e!3667979 (and tp!1668992 tp!1668991))))

(declare-fun b!6001107 () Bool)

(declare-fun tp!1668990 () Bool)

(assert (=> b!6001107 (= e!3667979 tp!1668990)))

(declare-fun b!6001105 () Bool)

(assert (=> b!6001105 (= e!3667979 tp_is_empty!41275)))

(assert (=> b!5999485 (= tp!1668768 e!3667979)))

(declare-fun b!6001106 () Bool)

(declare-fun tp!1668989 () Bool)

(declare-fun tp!1668993 () Bool)

(assert (=> b!6001106 (= e!3667979 (and tp!1668989 tp!1668993))))

(assert (= (and b!5999485 ((_ is ElementMatch!16011) (regOne!32535 (regOne!32535 r!7292)))) b!6001105))

(assert (= (and b!5999485 ((_ is Concat!24856) (regOne!32535 (regOne!32535 r!7292)))) b!6001106))

(assert (= (and b!5999485 ((_ is Star!16011) (regOne!32535 (regOne!32535 r!7292)))) b!6001107))

(assert (= (and b!5999485 ((_ is Union!16011) (regOne!32535 (regOne!32535 r!7292)))) b!6001108))

(declare-fun b!6001112 () Bool)

(declare-fun e!3667980 () Bool)

(declare-fun tp!1668997 () Bool)

(declare-fun tp!1668996 () Bool)

(assert (=> b!6001112 (= e!3667980 (and tp!1668997 tp!1668996))))

(declare-fun b!6001111 () Bool)

(declare-fun tp!1668995 () Bool)

(assert (=> b!6001111 (= e!3667980 tp!1668995)))

(declare-fun b!6001109 () Bool)

(assert (=> b!6001109 (= e!3667980 tp_is_empty!41275)))

(assert (=> b!5999485 (= tp!1668767 e!3667980)))

(declare-fun b!6001110 () Bool)

(declare-fun tp!1668994 () Bool)

(declare-fun tp!1668998 () Bool)

(assert (=> b!6001110 (= e!3667980 (and tp!1668994 tp!1668998))))

(assert (= (and b!5999485 ((_ is ElementMatch!16011) (regTwo!32535 (regOne!32535 r!7292)))) b!6001109))

(assert (= (and b!5999485 ((_ is Concat!24856) (regTwo!32535 (regOne!32535 r!7292)))) b!6001110))

(assert (= (and b!5999485 ((_ is Star!16011) (regTwo!32535 (regOne!32535 r!7292)))) b!6001111))

(assert (= (and b!5999485 ((_ is Union!16011) (regTwo!32535 (regOne!32535 r!7292)))) b!6001112))

(declare-fun b!6001116 () Bool)

(declare-fun e!3667981 () Bool)

(declare-fun tp!1669002 () Bool)

(declare-fun tp!1669001 () Bool)

(assert (=> b!6001116 (= e!3667981 (and tp!1669002 tp!1669001))))

(declare-fun b!6001115 () Bool)

(declare-fun tp!1669000 () Bool)

(assert (=> b!6001115 (= e!3667981 tp!1669000)))

(declare-fun b!6001113 () Bool)

(assert (=> b!6001113 (= e!3667981 tp_is_empty!41275)))

(assert (=> b!5999484 (= tp!1668766 e!3667981)))

(declare-fun b!6001114 () Bool)

(declare-fun tp!1668999 () Bool)

(declare-fun tp!1669003 () Bool)

(assert (=> b!6001114 (= e!3667981 (and tp!1668999 tp!1669003))))

(assert (= (and b!5999484 ((_ is ElementMatch!16011) (reg!16340 (regOne!32535 r!7292)))) b!6001113))

(assert (= (and b!5999484 ((_ is Concat!24856) (reg!16340 (regOne!32535 r!7292)))) b!6001114))

(assert (= (and b!5999484 ((_ is Star!16011) (reg!16340 (regOne!32535 r!7292)))) b!6001115))

(assert (= (and b!5999484 ((_ is Union!16011) (reg!16340 (regOne!32535 r!7292)))) b!6001116))

(declare-fun b!6001120 () Bool)

(declare-fun e!3667982 () Bool)

(declare-fun tp!1669007 () Bool)

(declare-fun tp!1669006 () Bool)

(assert (=> b!6001120 (= e!3667982 (and tp!1669007 tp!1669006))))

(declare-fun b!6001119 () Bool)

(declare-fun tp!1669005 () Bool)

(assert (=> b!6001119 (= e!3667982 tp!1669005)))

(declare-fun b!6001117 () Bool)

(assert (=> b!6001117 (= e!3667982 tp_is_empty!41275)))

(assert (=> b!5999483 (= tp!1668765 e!3667982)))

(declare-fun b!6001118 () Bool)

(declare-fun tp!1669004 () Bool)

(declare-fun tp!1669008 () Bool)

(assert (=> b!6001118 (= e!3667982 (and tp!1669004 tp!1669008))))

(assert (= (and b!5999483 ((_ is ElementMatch!16011) (regOne!32534 (regOne!32535 r!7292)))) b!6001117))

(assert (= (and b!5999483 ((_ is Concat!24856) (regOne!32534 (regOne!32535 r!7292)))) b!6001118))

(assert (= (and b!5999483 ((_ is Star!16011) (regOne!32534 (regOne!32535 r!7292)))) b!6001119))

(assert (= (and b!5999483 ((_ is Union!16011) (regOne!32534 (regOne!32535 r!7292)))) b!6001120))

(declare-fun b!6001124 () Bool)

(declare-fun e!3667983 () Bool)

(declare-fun tp!1669012 () Bool)

(declare-fun tp!1669011 () Bool)

(assert (=> b!6001124 (= e!3667983 (and tp!1669012 tp!1669011))))

(declare-fun b!6001123 () Bool)

(declare-fun tp!1669010 () Bool)

(assert (=> b!6001123 (= e!3667983 tp!1669010)))

(declare-fun b!6001121 () Bool)

(assert (=> b!6001121 (= e!3667983 tp_is_empty!41275)))

(assert (=> b!5999483 (= tp!1668769 e!3667983)))

(declare-fun b!6001122 () Bool)

(declare-fun tp!1669009 () Bool)

(declare-fun tp!1669013 () Bool)

(assert (=> b!6001122 (= e!3667983 (and tp!1669009 tp!1669013))))

(assert (= (and b!5999483 ((_ is ElementMatch!16011) (regTwo!32534 (regOne!32535 r!7292)))) b!6001121))

(assert (= (and b!5999483 ((_ is Concat!24856) (regTwo!32534 (regOne!32535 r!7292)))) b!6001122))

(assert (= (and b!5999483 ((_ is Star!16011) (regTwo!32534 (regOne!32535 r!7292)))) b!6001123))

(assert (= (and b!5999483 ((_ is Union!16011) (regTwo!32534 (regOne!32535 r!7292)))) b!6001124))

(declare-fun b!6001128 () Bool)

(declare-fun e!3667984 () Bool)

(declare-fun tp!1669017 () Bool)

(declare-fun tp!1669016 () Bool)

(assert (=> b!6001128 (= e!3667984 (and tp!1669017 tp!1669016))))

(declare-fun b!6001127 () Bool)

(declare-fun tp!1669015 () Bool)

(assert (=> b!6001127 (= e!3667984 tp!1669015)))

(declare-fun b!6001125 () Bool)

(assert (=> b!6001125 (= e!3667984 tp_is_empty!41275)))

(assert (=> b!5999461 (= tp!1668740 e!3667984)))

(declare-fun b!6001126 () Bool)

(declare-fun tp!1669014 () Bool)

(declare-fun tp!1669018 () Bool)

(assert (=> b!6001126 (= e!3667984 (and tp!1669014 tp!1669018))))

(assert (= (and b!5999461 ((_ is ElementMatch!16011) (h!70656 (exprs!5895 (h!70657 zl!343))))) b!6001125))

(assert (= (and b!5999461 ((_ is Concat!24856) (h!70656 (exprs!5895 (h!70657 zl!343))))) b!6001126))

(assert (= (and b!5999461 ((_ is Star!16011) (h!70656 (exprs!5895 (h!70657 zl!343))))) b!6001127))

(assert (= (and b!5999461 ((_ is Union!16011) (h!70656 (exprs!5895 (h!70657 zl!343))))) b!6001128))

(declare-fun b!6001129 () Bool)

(declare-fun e!3667985 () Bool)

(declare-fun tp!1669019 () Bool)

(declare-fun tp!1669020 () Bool)

(assert (=> b!6001129 (= e!3667985 (and tp!1669019 tp!1669020))))

(assert (=> b!5999461 (= tp!1668741 e!3667985)))

(assert (= (and b!5999461 ((_ is Cons!64208) (t!377753 (exprs!5895 (h!70657 zl!343))))) b!6001129))

(declare-fun b!6001133 () Bool)

(declare-fun e!3667986 () Bool)

(declare-fun tp!1669024 () Bool)

(declare-fun tp!1669023 () Bool)

(assert (=> b!6001133 (= e!3667986 (and tp!1669024 tp!1669023))))

(declare-fun b!6001132 () Bool)

(declare-fun tp!1669022 () Bool)

(assert (=> b!6001132 (= e!3667986 tp!1669022)))

(declare-fun b!6001130 () Bool)

(assert (=> b!6001130 (= e!3667986 tp_is_empty!41275)))

(assert (=> b!5999506 (= tp!1668787 e!3667986)))

(declare-fun b!6001131 () Bool)

(declare-fun tp!1669021 () Bool)

(declare-fun tp!1669025 () Bool)

(assert (=> b!6001131 (= e!3667986 (and tp!1669021 tp!1669025))))

(assert (= (and b!5999506 ((_ is ElementMatch!16011) (regOne!32535 (regOne!32534 r!7292)))) b!6001130))

(assert (= (and b!5999506 ((_ is Concat!24856) (regOne!32535 (regOne!32534 r!7292)))) b!6001131))

(assert (= (and b!5999506 ((_ is Star!16011) (regOne!32535 (regOne!32534 r!7292)))) b!6001132))

(assert (= (and b!5999506 ((_ is Union!16011) (regOne!32535 (regOne!32534 r!7292)))) b!6001133))

(declare-fun b!6001137 () Bool)

(declare-fun e!3667987 () Bool)

(declare-fun tp!1669029 () Bool)

(declare-fun tp!1669028 () Bool)

(assert (=> b!6001137 (= e!3667987 (and tp!1669029 tp!1669028))))

(declare-fun b!6001136 () Bool)

(declare-fun tp!1669027 () Bool)

(assert (=> b!6001136 (= e!3667987 tp!1669027)))

(declare-fun b!6001134 () Bool)

(assert (=> b!6001134 (= e!3667987 tp_is_empty!41275)))

(assert (=> b!5999506 (= tp!1668786 e!3667987)))

(declare-fun b!6001135 () Bool)

(declare-fun tp!1669026 () Bool)

(declare-fun tp!1669030 () Bool)

(assert (=> b!6001135 (= e!3667987 (and tp!1669026 tp!1669030))))

(assert (= (and b!5999506 ((_ is ElementMatch!16011) (regTwo!32535 (regOne!32534 r!7292)))) b!6001134))

(assert (= (and b!5999506 ((_ is Concat!24856) (regTwo!32535 (regOne!32534 r!7292)))) b!6001135))

(assert (= (and b!5999506 ((_ is Star!16011) (regTwo!32535 (regOne!32534 r!7292)))) b!6001136))

(assert (= (and b!5999506 ((_ is Union!16011) (regTwo!32535 (regOne!32534 r!7292)))) b!6001137))

(declare-fun b!6001138 () Bool)

(declare-fun e!3667988 () Bool)

(declare-fun tp!1669031 () Bool)

(declare-fun tp!1669032 () Bool)

(assert (=> b!6001138 (= e!3667988 (and tp!1669031 tp!1669032))))

(assert (=> b!5999502 (= tp!1668782 e!3667988)))

(assert (= (and b!5999502 ((_ is Cons!64208) (exprs!5895 (h!70657 (t!377754 zl!343))))) b!6001138))

(declare-fun b!6001142 () Bool)

(declare-fun e!3667989 () Bool)

(declare-fun tp!1669036 () Bool)

(declare-fun tp!1669035 () Bool)

(assert (=> b!6001142 (= e!3667989 (and tp!1669036 tp!1669035))))

(declare-fun b!6001141 () Bool)

(declare-fun tp!1669034 () Bool)

(assert (=> b!6001141 (= e!3667989 tp!1669034)))

(declare-fun b!6001139 () Bool)

(assert (=> b!6001139 (= e!3667989 tp_is_empty!41275)))

(assert (=> b!5999509 (= tp!1668790 e!3667989)))

(declare-fun b!6001140 () Bool)

(declare-fun tp!1669033 () Bool)

(declare-fun tp!1669037 () Bool)

(assert (=> b!6001140 (= e!3667989 (and tp!1669033 tp!1669037))))

(assert (= (and b!5999509 ((_ is ElementMatch!16011) (reg!16340 (regTwo!32534 r!7292)))) b!6001139))

(assert (= (and b!5999509 ((_ is Concat!24856) (reg!16340 (regTwo!32534 r!7292)))) b!6001140))

(assert (= (and b!5999509 ((_ is Star!16011) (reg!16340 (regTwo!32534 r!7292)))) b!6001141))

(assert (= (and b!5999509 ((_ is Union!16011) (reg!16340 (regTwo!32534 r!7292)))) b!6001142))

(declare-fun b!6001144 () Bool)

(declare-fun e!3667991 () Bool)

(declare-fun tp!1669038 () Bool)

(assert (=> b!6001144 (= e!3667991 tp!1669038)))

(declare-fun e!3667990 () Bool)

(declare-fun tp!1669039 () Bool)

(declare-fun b!6001143 () Bool)

(assert (=> b!6001143 (= e!3667990 (and (inv!83274 (h!70657 (t!377754 (t!377754 zl!343)))) e!3667991 tp!1669039))))

(assert (=> b!5999501 (= tp!1668783 e!3667990)))

(assert (= b!6001143 b!6001144))

(assert (= (and b!5999501 ((_ is Cons!64209) (t!377754 (t!377754 zl!343)))) b!6001143))

(declare-fun m!6879450 () Bool)

(assert (=> b!6001143 m!6879450))

(declare-fun b!6001145 () Bool)

(declare-fun e!3667992 () Bool)

(declare-fun tp!1669040 () Bool)

(declare-fun tp!1669041 () Bool)

(assert (=> b!6001145 (= e!3667992 (and tp!1669040 tp!1669041))))

(assert (=> b!5999480 (= tp!1668761 e!3667992)))

(assert (= (and b!5999480 ((_ is Cons!64208) (exprs!5895 setElem!40682))) b!6001145))

(declare-fun b!6001149 () Bool)

(declare-fun e!3667993 () Bool)

(declare-fun tp!1669045 () Bool)

(declare-fun tp!1669044 () Bool)

(assert (=> b!6001149 (= e!3667993 (and tp!1669045 tp!1669044))))

(declare-fun b!6001148 () Bool)

(declare-fun tp!1669043 () Bool)

(assert (=> b!6001148 (= e!3667993 tp!1669043)))

(declare-fun b!6001146 () Bool)

(assert (=> b!6001146 (= e!3667993 tp_is_empty!41275)))

(assert (=> b!5999508 (= tp!1668789 e!3667993)))

(declare-fun b!6001147 () Bool)

(declare-fun tp!1669042 () Bool)

(declare-fun tp!1669046 () Bool)

(assert (=> b!6001147 (= e!3667993 (and tp!1669042 tp!1669046))))

(assert (= (and b!5999508 ((_ is ElementMatch!16011) (regOne!32534 (regTwo!32534 r!7292)))) b!6001146))

(assert (= (and b!5999508 ((_ is Concat!24856) (regOne!32534 (regTwo!32534 r!7292)))) b!6001147))

(assert (= (and b!5999508 ((_ is Star!16011) (regOne!32534 (regTwo!32534 r!7292)))) b!6001148))

(assert (= (and b!5999508 ((_ is Union!16011) (regOne!32534 (regTwo!32534 r!7292)))) b!6001149))

(declare-fun b!6001153 () Bool)

(declare-fun e!3667994 () Bool)

(declare-fun tp!1669050 () Bool)

(declare-fun tp!1669049 () Bool)

(assert (=> b!6001153 (= e!3667994 (and tp!1669050 tp!1669049))))

(declare-fun b!6001152 () Bool)

(declare-fun tp!1669048 () Bool)

(assert (=> b!6001152 (= e!3667994 tp!1669048)))

(declare-fun b!6001150 () Bool)

(assert (=> b!6001150 (= e!3667994 tp_is_empty!41275)))

(assert (=> b!5999508 (= tp!1668793 e!3667994)))

(declare-fun b!6001151 () Bool)

(declare-fun tp!1669047 () Bool)

(declare-fun tp!1669051 () Bool)

(assert (=> b!6001151 (= e!3667994 (and tp!1669047 tp!1669051))))

(assert (= (and b!5999508 ((_ is ElementMatch!16011) (regTwo!32534 (regTwo!32534 r!7292)))) b!6001150))

(assert (= (and b!5999508 ((_ is Concat!24856) (regTwo!32534 (regTwo!32534 r!7292)))) b!6001151))

(assert (= (and b!5999508 ((_ is Star!16011) (regTwo!32534 (regTwo!32534 r!7292)))) b!6001152))

(assert (= (and b!5999508 ((_ is Union!16011) (regTwo!32534 (regTwo!32534 r!7292)))) b!6001153))

(declare-fun condSetEmpty!40694 () Bool)

(assert (=> setNonEmpty!40682 (= condSetEmpty!40694 (= setRest!40682 ((as const (Array Context!10790 Bool)) false)))))

(declare-fun setRes!40694 () Bool)

(assert (=> setNonEmpty!40682 (= tp!1668762 setRes!40694)))

(declare-fun setIsEmpty!40694 () Bool)

(assert (=> setIsEmpty!40694 setRes!40694))

(declare-fun setNonEmpty!40694 () Bool)

(declare-fun e!3667995 () Bool)

(declare-fun tp!1669053 () Bool)

(declare-fun setElem!40694 () Context!10790)

(assert (=> setNonEmpty!40694 (= setRes!40694 (and tp!1669053 (inv!83274 setElem!40694) e!3667995))))

(declare-fun setRest!40694 () (InoxSet Context!10790))

(assert (=> setNonEmpty!40694 (= setRest!40682 ((_ map or) (store ((as const (Array Context!10790 Bool)) false) setElem!40694 true) setRest!40694))))

(declare-fun b!6001154 () Bool)

(declare-fun tp!1669052 () Bool)

(assert (=> b!6001154 (= e!3667995 tp!1669052)))

(assert (= (and setNonEmpty!40682 condSetEmpty!40694) setIsEmpty!40694))

(assert (= (and setNonEmpty!40682 (not condSetEmpty!40694)) setNonEmpty!40694))

(assert (= setNonEmpty!40694 b!6001154))

(declare-fun m!6879452 () Bool)

(assert (=> setNonEmpty!40694 m!6879452))

(declare-fun b!6001155 () Bool)

(declare-fun e!3667996 () Bool)

(declare-fun tp!1669054 () Bool)

(assert (=> b!6001155 (= e!3667996 (and tp_is_empty!41275 tp!1669054))))

(assert (=> b!5999494 (= tp!1668777 e!3667996)))

(assert (= (and b!5999494 ((_ is Cons!64210) (t!377755 (t!377755 s!2326)))) b!6001155))

(declare-fun b!6001159 () Bool)

(declare-fun e!3667997 () Bool)

(declare-fun tp!1669058 () Bool)

(declare-fun tp!1669057 () Bool)

(assert (=> b!6001159 (= e!3667997 (and tp!1669058 tp!1669057))))

(declare-fun b!6001158 () Bool)

(declare-fun tp!1669056 () Bool)

(assert (=> b!6001158 (= e!3667997 tp!1669056)))

(declare-fun b!6001156 () Bool)

(assert (=> b!6001156 (= e!3667997 tp_is_empty!41275)))

(assert (=> b!5999475 (= tp!1668755 e!3667997)))

(declare-fun b!6001157 () Bool)

(declare-fun tp!1669055 () Bool)

(declare-fun tp!1669059 () Bool)

(assert (=> b!6001157 (= e!3667997 (and tp!1669055 tp!1669059))))

(assert (= (and b!5999475 ((_ is ElementMatch!16011) (regOne!32535 (reg!16340 r!7292)))) b!6001156))

(assert (= (and b!5999475 ((_ is Concat!24856) (regOne!32535 (reg!16340 r!7292)))) b!6001157))

(assert (= (and b!5999475 ((_ is Star!16011) (regOne!32535 (reg!16340 r!7292)))) b!6001158))

(assert (= (and b!5999475 ((_ is Union!16011) (regOne!32535 (reg!16340 r!7292)))) b!6001159))

(declare-fun b!6001163 () Bool)

(declare-fun e!3667998 () Bool)

(declare-fun tp!1669063 () Bool)

(declare-fun tp!1669062 () Bool)

(assert (=> b!6001163 (= e!3667998 (and tp!1669063 tp!1669062))))

(declare-fun b!6001162 () Bool)

(declare-fun tp!1669061 () Bool)

(assert (=> b!6001162 (= e!3667998 tp!1669061)))

(declare-fun b!6001160 () Bool)

(assert (=> b!6001160 (= e!3667998 tp_is_empty!41275)))

(assert (=> b!5999475 (= tp!1668754 e!3667998)))

(declare-fun b!6001161 () Bool)

(declare-fun tp!1669060 () Bool)

(declare-fun tp!1669064 () Bool)

(assert (=> b!6001161 (= e!3667998 (and tp!1669060 tp!1669064))))

(assert (= (and b!5999475 ((_ is ElementMatch!16011) (regTwo!32535 (reg!16340 r!7292)))) b!6001160))

(assert (= (and b!5999475 ((_ is Concat!24856) (regTwo!32535 (reg!16340 r!7292)))) b!6001161))

(assert (= (and b!5999475 ((_ is Star!16011) (regTwo!32535 (reg!16340 r!7292)))) b!6001162))

(assert (= (and b!5999475 ((_ is Union!16011) (regTwo!32535 (reg!16340 r!7292)))) b!6001163))

(declare-fun b!6001167 () Bool)

(declare-fun e!3667999 () Bool)

(declare-fun tp!1669068 () Bool)

(declare-fun tp!1669067 () Bool)

(assert (=> b!6001167 (= e!3667999 (and tp!1669068 tp!1669067))))

(declare-fun b!6001166 () Bool)

(declare-fun tp!1669066 () Bool)

(assert (=> b!6001166 (= e!3667999 tp!1669066)))

(declare-fun b!6001164 () Bool)

(assert (=> b!6001164 (= e!3667999 tp_is_empty!41275)))

(assert (=> b!5999481 (= tp!1668763 e!3667999)))

(declare-fun b!6001165 () Bool)

(declare-fun tp!1669065 () Bool)

(declare-fun tp!1669069 () Bool)

(assert (=> b!6001165 (= e!3667999 (and tp!1669065 tp!1669069))))

(assert (= (and b!5999481 ((_ is ElementMatch!16011) (h!70656 (exprs!5895 setElem!40676)))) b!6001164))

(assert (= (and b!5999481 ((_ is Concat!24856) (h!70656 (exprs!5895 setElem!40676)))) b!6001165))

(assert (= (and b!5999481 ((_ is Star!16011) (h!70656 (exprs!5895 setElem!40676)))) b!6001166))

(assert (= (and b!5999481 ((_ is Union!16011) (h!70656 (exprs!5895 setElem!40676)))) b!6001167))

(declare-fun b!6001168 () Bool)

(declare-fun e!3668000 () Bool)

(declare-fun tp!1669070 () Bool)

(declare-fun tp!1669071 () Bool)

(assert (=> b!6001168 (= e!3668000 (and tp!1669070 tp!1669071))))

(assert (=> b!5999481 (= tp!1668764 e!3668000)))

(assert (= (and b!5999481 ((_ is Cons!64208) (t!377753 (exprs!5895 setElem!40676)))) b!6001168))

(declare-fun b!6001172 () Bool)

(declare-fun e!3668001 () Bool)

(declare-fun tp!1669075 () Bool)

(declare-fun tp!1669074 () Bool)

(assert (=> b!6001172 (= e!3668001 (and tp!1669075 tp!1669074))))

(declare-fun b!6001171 () Bool)

(declare-fun tp!1669073 () Bool)

(assert (=> b!6001171 (= e!3668001 tp!1669073)))

(declare-fun b!6001169 () Bool)

(assert (=> b!6001169 (= e!3668001 tp_is_empty!41275)))

(assert (=> b!5999474 (= tp!1668753 e!3668001)))

(declare-fun b!6001170 () Bool)

(declare-fun tp!1669072 () Bool)

(declare-fun tp!1669076 () Bool)

(assert (=> b!6001170 (= e!3668001 (and tp!1669072 tp!1669076))))

(assert (= (and b!5999474 ((_ is ElementMatch!16011) (reg!16340 (reg!16340 r!7292)))) b!6001169))

(assert (= (and b!5999474 ((_ is Concat!24856) (reg!16340 (reg!16340 r!7292)))) b!6001170))

(assert (= (and b!5999474 ((_ is Star!16011) (reg!16340 (reg!16340 r!7292)))) b!6001171))

(assert (= (and b!5999474 ((_ is Union!16011) (reg!16340 (reg!16340 r!7292)))) b!6001172))

(declare-fun b!6001176 () Bool)

(declare-fun e!3668002 () Bool)

(declare-fun tp!1669080 () Bool)

(declare-fun tp!1669079 () Bool)

(assert (=> b!6001176 (= e!3668002 (and tp!1669080 tp!1669079))))

(declare-fun b!6001175 () Bool)

(declare-fun tp!1669078 () Bool)

(assert (=> b!6001175 (= e!3668002 tp!1669078)))

(declare-fun b!6001173 () Bool)

(assert (=> b!6001173 (= e!3668002 tp_is_empty!41275)))

(assert (=> b!5999489 (= tp!1668773 e!3668002)))

(declare-fun b!6001174 () Bool)

(declare-fun tp!1669077 () Bool)

(declare-fun tp!1669081 () Bool)

(assert (=> b!6001174 (= e!3668002 (and tp!1669077 tp!1669081))))

(assert (= (and b!5999489 ((_ is ElementMatch!16011) (regOne!32535 (regTwo!32535 r!7292)))) b!6001173))

(assert (= (and b!5999489 ((_ is Concat!24856) (regOne!32535 (regTwo!32535 r!7292)))) b!6001174))

(assert (= (and b!5999489 ((_ is Star!16011) (regOne!32535 (regTwo!32535 r!7292)))) b!6001175))

(assert (= (and b!5999489 ((_ is Union!16011) (regOne!32535 (regTwo!32535 r!7292)))) b!6001176))

(declare-fun b!6001180 () Bool)

(declare-fun e!3668003 () Bool)

(declare-fun tp!1669085 () Bool)

(declare-fun tp!1669084 () Bool)

(assert (=> b!6001180 (= e!3668003 (and tp!1669085 tp!1669084))))

(declare-fun b!6001179 () Bool)

(declare-fun tp!1669083 () Bool)

(assert (=> b!6001179 (= e!3668003 tp!1669083)))

(declare-fun b!6001177 () Bool)

(assert (=> b!6001177 (= e!3668003 tp_is_empty!41275)))

(assert (=> b!5999489 (= tp!1668772 e!3668003)))

(declare-fun b!6001178 () Bool)

(declare-fun tp!1669082 () Bool)

(declare-fun tp!1669086 () Bool)

(assert (=> b!6001178 (= e!3668003 (and tp!1669082 tp!1669086))))

(assert (= (and b!5999489 ((_ is ElementMatch!16011) (regTwo!32535 (regTwo!32535 r!7292)))) b!6001177))

(assert (= (and b!5999489 ((_ is Concat!24856) (regTwo!32535 (regTwo!32535 r!7292)))) b!6001178))

(assert (= (and b!5999489 ((_ is Star!16011) (regTwo!32535 (regTwo!32535 r!7292)))) b!6001179))

(assert (= (and b!5999489 ((_ is Union!16011) (regTwo!32535 (regTwo!32535 r!7292)))) b!6001180))

(declare-fun b!6001184 () Bool)

(declare-fun e!3668004 () Bool)

(declare-fun tp!1669090 () Bool)

(declare-fun tp!1669089 () Bool)

(assert (=> b!6001184 (= e!3668004 (and tp!1669090 tp!1669089))))

(declare-fun b!6001183 () Bool)

(declare-fun tp!1669088 () Bool)

(assert (=> b!6001183 (= e!3668004 tp!1669088)))

(declare-fun b!6001181 () Bool)

(assert (=> b!6001181 (= e!3668004 tp_is_empty!41275)))

(assert (=> b!5999473 (= tp!1668752 e!3668004)))

(declare-fun b!6001182 () Bool)

(declare-fun tp!1669087 () Bool)

(declare-fun tp!1669091 () Bool)

(assert (=> b!6001182 (= e!3668004 (and tp!1669087 tp!1669091))))

(assert (= (and b!5999473 ((_ is ElementMatch!16011) (regOne!32534 (reg!16340 r!7292)))) b!6001181))

(assert (= (and b!5999473 ((_ is Concat!24856) (regOne!32534 (reg!16340 r!7292)))) b!6001182))

(assert (= (and b!5999473 ((_ is Star!16011) (regOne!32534 (reg!16340 r!7292)))) b!6001183))

(assert (= (and b!5999473 ((_ is Union!16011) (regOne!32534 (reg!16340 r!7292)))) b!6001184))

(declare-fun b!6001188 () Bool)

(declare-fun e!3668005 () Bool)

(declare-fun tp!1669095 () Bool)

(declare-fun tp!1669094 () Bool)

(assert (=> b!6001188 (= e!3668005 (and tp!1669095 tp!1669094))))

(declare-fun b!6001187 () Bool)

(declare-fun tp!1669093 () Bool)

(assert (=> b!6001187 (= e!3668005 tp!1669093)))

(declare-fun b!6001185 () Bool)

(assert (=> b!6001185 (= e!3668005 tp_is_empty!41275)))

(assert (=> b!5999473 (= tp!1668756 e!3668005)))

(declare-fun b!6001186 () Bool)

(declare-fun tp!1669092 () Bool)

(declare-fun tp!1669096 () Bool)

(assert (=> b!6001186 (= e!3668005 (and tp!1669092 tp!1669096))))

(assert (= (and b!5999473 ((_ is ElementMatch!16011) (regTwo!32534 (reg!16340 r!7292)))) b!6001185))

(assert (= (and b!5999473 ((_ is Concat!24856) (regTwo!32534 (reg!16340 r!7292)))) b!6001186))

(assert (= (and b!5999473 ((_ is Star!16011) (regTwo!32534 (reg!16340 r!7292)))) b!6001187))

(assert (= (and b!5999473 ((_ is Union!16011) (regTwo!32534 (reg!16340 r!7292)))) b!6001188))

(declare-fun b!6001192 () Bool)

(declare-fun e!3668006 () Bool)

(declare-fun tp!1669100 () Bool)

(declare-fun tp!1669099 () Bool)

(assert (=> b!6001192 (= e!3668006 (and tp!1669100 tp!1669099))))

(declare-fun b!6001191 () Bool)

(declare-fun tp!1669098 () Bool)

(assert (=> b!6001191 (= e!3668006 tp!1669098)))

(declare-fun b!6001189 () Bool)

(assert (=> b!6001189 (= e!3668006 tp_is_empty!41275)))

(assert (=> b!5999488 (= tp!1668771 e!3668006)))

(declare-fun b!6001190 () Bool)

(declare-fun tp!1669097 () Bool)

(declare-fun tp!1669101 () Bool)

(assert (=> b!6001190 (= e!3668006 (and tp!1669097 tp!1669101))))

(assert (= (and b!5999488 ((_ is ElementMatch!16011) (reg!16340 (regTwo!32535 r!7292)))) b!6001189))

(assert (= (and b!5999488 ((_ is Concat!24856) (reg!16340 (regTwo!32535 r!7292)))) b!6001190))

(assert (= (and b!5999488 ((_ is Star!16011) (reg!16340 (regTwo!32535 r!7292)))) b!6001191))

(assert (= (and b!5999488 ((_ is Union!16011) (reg!16340 (regTwo!32535 r!7292)))) b!6001192))

(declare-fun b!6001196 () Bool)

(declare-fun e!3668007 () Bool)

(declare-fun tp!1669105 () Bool)

(declare-fun tp!1669104 () Bool)

(assert (=> b!6001196 (= e!3668007 (and tp!1669105 tp!1669104))))

(declare-fun b!6001195 () Bool)

(declare-fun tp!1669103 () Bool)

(assert (=> b!6001195 (= e!3668007 tp!1669103)))

(declare-fun b!6001193 () Bool)

(assert (=> b!6001193 (= e!3668007 tp_is_empty!41275)))

(assert (=> b!5999487 (= tp!1668770 e!3668007)))

(declare-fun b!6001194 () Bool)

(declare-fun tp!1669102 () Bool)

(declare-fun tp!1669106 () Bool)

(assert (=> b!6001194 (= e!3668007 (and tp!1669102 tp!1669106))))

(assert (= (and b!5999487 ((_ is ElementMatch!16011) (regOne!32534 (regTwo!32535 r!7292)))) b!6001193))

(assert (= (and b!5999487 ((_ is Concat!24856) (regOne!32534 (regTwo!32535 r!7292)))) b!6001194))

(assert (= (and b!5999487 ((_ is Star!16011) (regOne!32534 (regTwo!32535 r!7292)))) b!6001195))

(assert (= (and b!5999487 ((_ is Union!16011) (regOne!32534 (regTwo!32535 r!7292)))) b!6001196))

(declare-fun b!6001200 () Bool)

(declare-fun e!3668008 () Bool)

(declare-fun tp!1669110 () Bool)

(declare-fun tp!1669109 () Bool)

(assert (=> b!6001200 (= e!3668008 (and tp!1669110 tp!1669109))))

(declare-fun b!6001199 () Bool)

(declare-fun tp!1669108 () Bool)

(assert (=> b!6001199 (= e!3668008 tp!1669108)))

(declare-fun b!6001197 () Bool)

(assert (=> b!6001197 (= e!3668008 tp_is_empty!41275)))

(assert (=> b!5999487 (= tp!1668774 e!3668008)))

(declare-fun b!6001198 () Bool)

(declare-fun tp!1669107 () Bool)

(declare-fun tp!1669111 () Bool)

(assert (=> b!6001198 (= e!3668008 (and tp!1669107 tp!1669111))))

(assert (= (and b!5999487 ((_ is ElementMatch!16011) (regTwo!32534 (regTwo!32535 r!7292)))) b!6001197))

(assert (= (and b!5999487 ((_ is Concat!24856) (regTwo!32534 (regTwo!32535 r!7292)))) b!6001198))

(assert (= (and b!5999487 ((_ is Star!16011) (regTwo!32534 (regTwo!32535 r!7292)))) b!6001199))

(assert (= (and b!5999487 ((_ is Union!16011) (regTwo!32534 (regTwo!32535 r!7292)))) b!6001200))

(declare-fun b!6001204 () Bool)

(declare-fun e!3668009 () Bool)

(declare-fun tp!1669115 () Bool)

(declare-fun tp!1669114 () Bool)

(assert (=> b!6001204 (= e!3668009 (and tp!1669115 tp!1669114))))

(declare-fun b!6001203 () Bool)

(declare-fun tp!1669113 () Bool)

(assert (=> b!6001203 (= e!3668009 tp!1669113)))

(declare-fun b!6001201 () Bool)

(assert (=> b!6001201 (= e!3668009 tp_is_empty!41275)))

(assert (=> b!5999510 (= tp!1668792 e!3668009)))

(declare-fun b!6001202 () Bool)

(declare-fun tp!1669112 () Bool)

(declare-fun tp!1669116 () Bool)

(assert (=> b!6001202 (= e!3668009 (and tp!1669112 tp!1669116))))

(assert (= (and b!5999510 ((_ is ElementMatch!16011) (regOne!32535 (regTwo!32534 r!7292)))) b!6001201))

(assert (= (and b!5999510 ((_ is Concat!24856) (regOne!32535 (regTwo!32534 r!7292)))) b!6001202))

(assert (= (and b!5999510 ((_ is Star!16011) (regOne!32535 (regTwo!32534 r!7292)))) b!6001203))

(assert (= (and b!5999510 ((_ is Union!16011) (regOne!32535 (regTwo!32534 r!7292)))) b!6001204))

(declare-fun b!6001208 () Bool)

(declare-fun e!3668010 () Bool)

(declare-fun tp!1669120 () Bool)

(declare-fun tp!1669119 () Bool)

(assert (=> b!6001208 (= e!3668010 (and tp!1669120 tp!1669119))))

(declare-fun b!6001207 () Bool)

(declare-fun tp!1669118 () Bool)

(assert (=> b!6001207 (= e!3668010 tp!1669118)))

(declare-fun b!6001205 () Bool)

(assert (=> b!6001205 (= e!3668010 tp_is_empty!41275)))

(assert (=> b!5999510 (= tp!1668791 e!3668010)))

(declare-fun b!6001206 () Bool)

(declare-fun tp!1669117 () Bool)

(declare-fun tp!1669121 () Bool)

(assert (=> b!6001206 (= e!3668010 (and tp!1669117 tp!1669121))))

(assert (= (and b!5999510 ((_ is ElementMatch!16011) (regTwo!32535 (regTwo!32534 r!7292)))) b!6001205))

(assert (= (and b!5999510 ((_ is Concat!24856) (regTwo!32535 (regTwo!32534 r!7292)))) b!6001206))

(assert (= (and b!5999510 ((_ is Star!16011) (regTwo!32535 (regTwo!32534 r!7292)))) b!6001207))

(assert (= (and b!5999510 ((_ is Union!16011) (regTwo!32535 (regTwo!32534 r!7292)))) b!6001208))

(declare-fun b_lambda!226835 () Bool)

(assert (= b_lambda!226825 (or b!5999090 b_lambda!226835)))

(declare-fun bs!1455285 () Bool)

(declare-fun d!1881873 () Bool)

(assert (= bs!1455285 (and d!1881873 b!5999090)))

(assert (=> bs!1455285 (= (dynLambda!25173 lambda!327445 (h!70657 (t!377754 lt!2318664))) (>= lt!2318826 (contextDepth!159 (h!70657 (t!377754 lt!2318664)))))))

(assert (=> bs!1455285 m!6879194))

(assert (=> b!6000930 d!1881873))

(declare-fun b_lambda!226837 () Bool)

(assert (= b_lambda!226833 (or b!5999019 b_lambda!226837)))

(declare-fun bs!1455286 () Bool)

(declare-fun d!1881875 () Bool)

(assert (= bs!1455286 (and d!1881875 b!5999019)))

(assert (=> bs!1455286 (= (dynLambda!25172 lambda!327422 (h!70656 (exprs!5895 lt!2318663))) (>= lt!2318787 (regexDepth!268 (h!70656 (exprs!5895 lt!2318663)))))))

(assert (=> bs!1455286 m!6877382))

(assert (=> b!6001058 d!1881875))

(declare-fun b_lambda!226839 () Bool)

(assert (= b_lambda!226813 (or d!1881075 b_lambda!226839)))

(declare-fun bs!1455287 () Bool)

(declare-fun d!1881877 () Bool)

(assert (= bs!1455287 (and d!1881877 d!1881075)))

(assert (=> bs!1455287 (= (dynLambda!25172 lambda!327460 (h!70656 (exprs!5895 setElem!40676))) (validRegex!7747 (h!70656 (exprs!5895 setElem!40676))))))

(declare-fun m!6879454 () Bool)

(assert (=> bs!1455287 m!6879454))

(assert (=> b!6000758 d!1881877))

(declare-fun b_lambda!226841 () Bool)

(assert (= b_lambda!226811 (or b!5999084 b_lambda!226841)))

(declare-fun bs!1455288 () Bool)

(declare-fun d!1881879 () Bool)

(assert (= bs!1455288 (and d!1881879 b!5999084)))

(assert (=> bs!1455288 (= (dynLambda!25173 lambda!327440 (h!70657 (Cons!64209 lt!2318663 Nil!64209))) (>= lt!2318816 (contextDepth!159 (h!70657 (Cons!64209 lt!2318663 Nil!64209)))))))

(assert (=> bs!1455288 m!6877450))

(assert (=> b!6000750 d!1881879))

(declare-fun b_lambda!226843 () Bool)

(assert (= b_lambda!226821 (or d!1881073 b_lambda!226843)))

(declare-fun bs!1455289 () Bool)

(declare-fun d!1881881 () Bool)

(assert (= bs!1455289 (and d!1881881 d!1881073)))

(assert (=> bs!1455289 (= (dynLambda!25172 lambda!327459 (h!70656 lt!2318849)) (validRegex!7747 (h!70656 lt!2318849)))))

(declare-fun m!6879456 () Bool)

(assert (=> bs!1455289 m!6879456))

(assert (=> b!6000861 d!1881881))

(declare-fun b_lambda!226845 () Bool)

(assert (= b_lambda!226795 (or b!5999365 b_lambda!226845)))

(declare-fun bs!1455290 () Bool)

(declare-fun d!1881883 () Bool)

(assert (= bs!1455290 (and d!1881883 b!5999365)))

(assert (=> bs!1455290 (= (dynLambda!25172 lambda!327471 (h!70656 (exprs!5895 lt!2318654))) (>= lt!2318859 (regexDepth!268 (h!70656 (exprs!5895 lt!2318654)))))))

(assert (=> bs!1455290 m!6877654))

(assert (=> b!6000375 d!1881883))

(declare-fun b_lambda!226847 () Bool)

(assert (= b_lambda!226799 (or b!5999089 b_lambda!226847)))

(declare-fun bs!1455291 () Bool)

(declare-fun d!1881885 () Bool)

(assert (= bs!1455291 (and d!1881885 b!5999089)))

(assert (=> bs!1455291 (= (dynLambda!25173 lambda!327443 (h!70657 (Cons!64209 lt!2318655 Nil!64209))) (>= lt!2318820 (contextDepth!159 (h!70657 (Cons!64209 lt!2318655 Nil!64209)))))))

(assert (=> bs!1455291 m!6877462))

(assert (=> b!6000604 d!1881885))

(declare-fun b_lambda!226849 () Bool)

(assert (= b_lambda!226817 (or b!5999363 b_lambda!226849)))

(declare-fun bs!1455292 () Bool)

(declare-fun d!1881887 () Bool)

(assert (= bs!1455292 (and d!1881887 b!5999363)))

(assert (=> bs!1455292 (= (dynLambda!25172 lambda!327470 (h!70656 (t!377753 (exprs!5895 lt!2318654)))) (>= lt!2318858 (regexDepth!268 (h!70656 (t!377753 (exprs!5895 lt!2318654))))))))

(declare-fun m!6879458 () Bool)

(assert (=> bs!1455292 m!6879458))

(assert (=> b!6000810 d!1881887))

(declare-fun b_lambda!226851 () Bool)

(assert (= b_lambda!226819 (or b!5999087 b_lambda!226851)))

(declare-fun bs!1455293 () Bool)

(declare-fun d!1881889 () Bool)

(assert (= bs!1455293 (and d!1881889 b!5999087)))

(assert (=> bs!1455293 (= (dynLambda!25173 lambda!327442 (h!70657 (t!377754 (Cons!64209 lt!2318655 Nil!64209)))) (>= lt!2318822 (contextDepth!159 (h!70657 (t!377754 (Cons!64209 lt!2318655 Nil!64209))))))))

(assert (=> bs!1455293 m!6879056))

(assert (=> b!6000819 d!1881889))

(declare-fun b_lambda!226853 () Bool)

(assert (= b_lambda!226809 (or b!5999017 b_lambda!226853)))

(declare-fun bs!1455294 () Bool)

(declare-fun d!1881891 () Bool)

(assert (= bs!1455294 (and d!1881891 b!5999017)))

(assert (=> bs!1455294 (= (dynLambda!25172 lambda!327421 (h!70656 (t!377753 (exprs!5895 lt!2318663)))) (>= lt!2318786 (regexDepth!268 (h!70656 (t!377753 (exprs!5895 lt!2318663))))))))

(declare-fun m!6879460 () Bool)

(assert (=> bs!1455294 m!6879460))

(assert (=> b!6000745 d!1881891))

(declare-fun b_lambda!226855 () Bool)

(assert (= b_lambda!226823 (or b!5999362 b_lambda!226855)))

(declare-fun bs!1455295 () Bool)

(declare-fun d!1881893 () Bool)

(assert (= bs!1455295 (and d!1881893 b!5999362)))

(assert (=> bs!1455295 (= (dynLambda!25172 lambda!327469 (h!70656 (exprs!5895 lt!2318655))) (>= lt!2318855 (regexDepth!268 (h!70656 (exprs!5895 lt!2318655)))))))

(assert (=> bs!1455295 m!6877642))

(assert (=> b!6000874 d!1881893))

(declare-fun b_lambda!226857 () Bool)

(assert (= b_lambda!226827 (or d!1881071 b_lambda!226857)))

(declare-fun bs!1455296 () Bool)

(declare-fun d!1881895 () Bool)

(assert (= bs!1455296 (and d!1881895 d!1881071)))

(assert (=> bs!1455296 (= (dynLambda!25172 lambda!327456 (h!70656 (unfocusZipperList!1432 zl!343))) (validRegex!7747 (h!70656 (unfocusZipperList!1432 zl!343))))))

(declare-fun m!6879462 () Bool)

(assert (=> bs!1455296 m!6879462))

(assert (=> b!6000986 d!1881895))

(declare-fun b_lambda!226859 () Bool)

(assert (= b_lambda!226805 (or b!5998487 b_lambda!226859)))

(assert (=> d!1881641 d!1881127))

(declare-fun b_lambda!226861 () Bool)

(assert (= b_lambda!226793 (or d!1881117 b_lambda!226861)))

(declare-fun bs!1455297 () Bool)

(declare-fun d!1881897 () Bool)

(assert (= bs!1455297 (and d!1881897 d!1881117)))

(assert (=> bs!1455297 (= (dynLambda!25172 lambda!327475 (h!70656 (exprs!5895 (h!70657 zl!343)))) (validRegex!7747 (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(declare-fun m!6879464 () Bool)

(assert (=> bs!1455297 m!6879464))

(assert (=> b!6000373 d!1881897))

(declare-fun b_lambda!226863 () Bool)

(assert (= b_lambda!226815 (or b!5998487 b_lambda!226863)))

(assert (=> d!1881703 d!1881125))

(declare-fun b_lambda!226865 () Bool)

(assert (= b_lambda!226797 (or b!5999360 b_lambda!226865)))

(declare-fun bs!1455298 () Bool)

(declare-fun d!1881899 () Bool)

(assert (= bs!1455298 (and d!1881899 b!5999360)))

(assert (=> bs!1455298 (= (dynLambda!25172 lambda!327468 (h!70656 (t!377753 (exprs!5895 lt!2318655)))) (>= lt!2318854 (regexDepth!268 (h!70656 (t!377753 (exprs!5895 lt!2318655))))))))

(declare-fun m!6879466 () Bool)

(assert (=> bs!1455298 m!6879466))

(assert (=> b!6000491 d!1881899))

(declare-fun b_lambda!226867 () Bool)

(assert (= b_lambda!226831 (or b!5998487 b_lambda!226867)))

(assert (=> d!1881847 d!1881123))

(declare-fun b_lambda!226869 () Bool)

(assert (= b_lambda!226803 (or d!1881093 b_lambda!226869)))

(declare-fun bs!1455299 () Bool)

(declare-fun d!1881901 () Bool)

(assert (= bs!1455299 (and d!1881901 d!1881093)))

(assert (=> bs!1455299 (= (dynLambda!25172 lambda!327472 (h!70656 (exprs!5895 (h!70657 zl!343)))) (validRegex!7747 (h!70656 (exprs!5895 (h!70657 zl!343)))))))

(assert (=> bs!1455299 m!6879464))

(assert (=> b!6000619 d!1881901))

(declare-fun b_lambda!226871 () Bool)

(assert (= b_lambda!226829 (or b!5999082 b_lambda!226871)))

(declare-fun bs!1455300 () Bool)

(declare-fun d!1881903 () Bool)

(assert (= bs!1455300 (and d!1881903 b!5999082)))

(assert (=> bs!1455300 (= (dynLambda!25173 lambda!327439 (h!70657 (t!377754 (Cons!64209 lt!2318663 Nil!64209)))) (>= lt!2318818 (contextDepth!159 (h!70657 (t!377754 (Cons!64209 lt!2318663 Nil!64209))))))))

(assert (=> bs!1455300 m!6879384))

(assert (=> b!6001056 d!1881903))

(declare-fun b_lambda!226873 () Bool)

(assert (= b_lambda!226801 (or d!1881045 b_lambda!226873)))

(declare-fun bs!1455301 () Bool)

(declare-fun d!1881905 () Bool)

(assert (= bs!1455301 (and d!1881905 d!1881045)))

(assert (=> bs!1455301 (= (dynLambda!25172 lambda!327449 (h!70656 (exprs!5895 lt!2318663))) (validRegex!7747 (h!70656 (exprs!5895 lt!2318663))))))

(declare-fun m!6879468 () Bool)

(assert (=> bs!1455301 m!6879468))

(assert (=> b!6000617 d!1881905))

(declare-fun b_lambda!226875 () Bool)

(assert (= b_lambda!226807 (or b!5999092 b_lambda!226875)))

(declare-fun bs!1455302 () Bool)

(declare-fun d!1881907 () Bool)

(assert (= bs!1455302 (and d!1881907 b!5999092)))

(assert (=> bs!1455302 (= (dynLambda!25173 lambda!327446 (h!70657 lt!2318664)) (>= lt!2318824 (contextDepth!159 (h!70657 lt!2318664))))))

(assert (=> bs!1455302 m!6877474))

(assert (=> b!6000719 d!1881907))

(check-sat (not b!6000606) (not b!6000724) (not b!6001092) (not bs!1455295) (not b!6001103) (not d!1881871) (not bm!485084) (not b!6000404) (not b!6000887) (not b!6000751) (not b!6001053) (not b!6000381) (not d!1881707) (not d!1881767) (not b!6001149) (not b!6000582) (not b!6000692) (not b!6001190) (not d!1881533) (not b!6001202) (not b!6001133) (not bm!485009) (not b!6001167) (not b!6001165) (not b!6001141) (not b!6000913) (not b!6001132) (not b!6000526) (not b!6000523) (not b_lambda!226705) (not b!6001155) (not b!6001199) (not bm!485036) (not b!6001159) (not d!1881821) (not b!6000720) (not bm!484923) (not b!6000821) (not b!6000754) (not bm!484971) (not bm!484948) (not bm!484987) (not b_lambda!226859) (not bm!485082) (not bm!485038) (not bm!485090) (not bs!1455293) (not b!6000877) (not d!1881711) (not b!6000970) (not bm!485028) (not b!6000723) (not b!6001204) (not b!6001045) (not b!6000690) (not bm!484996) (not b!6000363) (not b!6000934) (not bs!1455290) (not b!6000581) (not b!6001142) (not b!6001136) (not b!6001176) (not bs!1455287) (not bm!485042) (not bs!1455286) (not b!6000964) (not b!6000515) (not bm!485076) (not b!6001144) (not b_lambda!226839) (not b!6001143) (not d!1881803) (not d!1881775) (not d!1881627) (not bm!484915) (not bm!485058) (not b!6001182) (not d!1881851) (not b!6001161) (not b!6000580) (not bm!485029) (not b!6000424) (not bs!1455292) (not b!6000778) (not b!6000881) (not b!6001032) (not b!6000789) (not d!1881629) (not b!6001186) (not b!6000657) (not b!6000492) (not bs!1455289) (not bm!485066) (not bm!484975) (not b!6001154) (not b!6000652) (not d!1881647) (not bm!484986) (not b_lambda!226873) (not bm!485078) (not b!6000392) (not b!6000759) (not b!6000989) (not b!6001180) (not b!6000792) (not b!6000749) (not bm!485097) (not d!1881727) (not b!6001098) (not b!6000721) (not b!6001148) (not bm!484956) (not b!6001021) (not b!6000824) (not bs!1455301) (not b!6000527) (not bm!484968) (not d!1881785) (not b!6001145) (not b!6000875) (not bm!485037) (not d!1881657) (not b!6000376) (not b!6000826) (not b_lambda!226843) (not b!6001140) (not b!6000889) (not b!6000691) (not b!6000458) (not bm!485059) (not b_lambda!226867) (not b!6001192) (not b!6000890) (not b!6000457) (not b!6000648) (not b!6001194) (not d!1881835) (not d!1881641) (not b!6000823) (not bm!485004) (not d!1881801) (not bm!484950) (not d!1881535) (not b!6001108) (not bm!485093) (not b!6000447) (not d!1881581) (not b!6001187) (not bm!485098) (not d!1881695) (not b!6001008) (not b_lambda!226847) (not bm!484951) (not b!6001147) (not b!6000688) (not b!6001118) (not bm!484994) (not b_lambda!226865) (not b!6001059) (not bm!485050) (not bs!1455302) (not d!1881617) (not b!6000924) (not b!6001183) (not bm!485099) (not bm!484928) (not b!6001158) (not bm!485061) (not b_lambda!226845) (not b!6000455) (not b!6000405) (not b!6001057) (not b!6000927) (not bm!485048) (not b!6001157) (not d!1881787) (not b!6001035) (not b!6000988) (not b!6001043) (not b!6001191) (not d!1881651) (not d!1881637) (not bm!484966) (not d!1881619) (not d!1881829) (not b!6000618) (not d!1881815) (not d!1881825) (not d!1881827) (not bm!484943) (not bm!485071) (not bm!484958) (not b_lambda!226875) (not bm!484988) (not b!6001166) (not b!6000586) (not bm!485002) (not bm!485021) (not bm!484974) (not bm!485041) (not b!6001124) (not b!6000746) (not setNonEmpty!40691) (not b!6001172) (not b!6000929) (not bm!485030) (not b!6000680) (not bm!485016) (not b!6001198) (not d!1881563) (not b!6001044) (not b!6000932) (not b!6000898) (not b!6000790) (not d!1881791) (not bm!484992) (not b!6000390) (not bs!1455288) (not d!1881683) (not bm!484931) (not b!6000900) (not b!6000980) (not bm!485003) (not b!6001162) (not b!6001195) (not b!6000952) (not b!6000615) (not b!6001206) (not bm!484907) (not d!1881703) (not b!6001126) (not b!6000413) (not d!1881635) (not bm!485007) (not bm!485085) (not b!6001048) (not bm!485001) (not b_lambda!226851) (not bm!485044) (not bm!485010) (not bm!484910) (not d!1881799) (not bs!1455294) (not b!6001094) (not b!6001170) (not bm!485019) (not b!6001203) (not bm!485022) (not b!6000962) (not bs!1455285) (not b!6001047) (not b!6000382) (not bm!484984) (not b!6001178) (not d!1881847) (not b!6001196) (not b_lambda!226707) (not b!6000973) (not d!1881645) (not d!1881725) (not b!6000931) (not d!1881527) (not b!6000967) (not b!6001114) (not b!6000496) (not b!6001123) (not bm!484977) (not b!6001110) (not bs!1455299) (not bm!485027) (not b!6000681) (not b!6001128) (not bm!485035) (not b_lambda!226849) (not b!6001120) (not b!6000969) (not b!6000406) (not b!6001152) (not b!6001050) (not b!6001171) (not bm!484947) (not b!6000872) (not b!6000777) (not bm!484982) (not b!6000756) (not bm!484944) (not b!6001179) (not b!6001127) (not b!6000389) (not bm!485017) (not b!6000525) (not b!6000956) (not bm!484949) (not b!6000993) (not bm!485056) (not b_lambda!226861) (not d!1881809) (not bs!1455298) (not b!6001208) (not bm!485073) (not b!6000532) (not setNonEmpty!40693) (not b!6000374) (not bm!485067) (not bm!484976) (not b!6001034) (not d!1881649) (not b!6000587) (not bm!484929) (not b!6000747) (not b!6000594) (not b!6001207) (not bs!1455297) (not bm!484954) (not d!1881631) (not bm!484913) (not b!6000494) (not bm!484983) (not d!1881529) (not b!6001041) (not d!1881763) (not bm!484981) (not b!6001135) (not b!6000605) (not d!1881749) (not d!1881747) (not b_lambda!226871) (not bm!485064) (not b!6000961) (not bm!484920) (not b!6000596) (not d!1881567) (not bm!484908) (not d!1881699) (not b!6000968) (not b!6000901) (not b_lambda!226841) (not b!6000448) (not d!1881577) (not b!6001163) (not b!6000863) tp_is_empty!41275 (not b!6000446) (not d!1881841) (not b!6001137) (not d!1881869) (not bm!484953) (not bs!1455291) (not b!6001038) (not b!6001100) (not b!6001104) (not b!6001153) (not bm!484991) (not b!6000459) (not b!6001115) (not b!6001131) (not b_lambda!226863) (not d!1881603) (not b!6001174) (not b!6000862) (not bm!485088) (not bm!485024) (not b!6001119) (not b!6001184) (not b!6000876) (not d!1881771) (not bm!484941) (not d!1881723) (not b!6001070) (not b!6001188) (not bm!485045) (not bm!484912) (not b!6001111) (not d!1881643) (not b!6000987) (not bm!484999) (not b!6000640) (not b!6001151) (not b!6001138) (not b!6001088) (not b!6001089) (not b!6001099) (not bm!484973) (not d!1881855) (not b!6001129) (not bm!484922) (not bm!485046) (not b!6001200) (not b!6001122) (not b_lambda!226837) (not d!1881569) (not bm!485049) (not d!1881867) (not b_lambda!226855) (not d!1881713) (not b!6000516) (not b!6001102) (not d!1881531) (not b!6001106) (not b_lambda!226857) (not b!6001052) (not d!1881761) (not b!6000757) (not d!1881769) (not d!1881561) (not b!6000651) (not b!6000959) (not bm!484917) (not d!1881807) (not bm!485034) (not d!1881685) (not b!6001168) (not bm!484980) (not bm!485074) (not bm!485054) (not b!6000393) (not bm!485070) (not bm!484918) (not setNonEmpty!40694) (not b_lambda!226835) (not b!6000622) (not bs!1455296) (not b!6001055) (not b!6000925) (not d!1881667) (not b!6000597) (not bm!485068) (not b!6000435) (not b!6000955) (not bm!485079) (not b!6001116) (not b_lambda!226703) (not b!6001107) (not d!1881831) (not b!6000888) (not b!6000902) (not b!6000755) (not b!6000966) (not b!6000391) (not d!1881705) (not b!6001039) (not d!1881753) (not b!6000620) (not d!1881599) (not bm!484965) (not bm!485014) (not b!6000650) (not bs!1455300) (not b!6000490) (not bm!485008) (not b!6000958) (not bm!484926) (not d!1881833) (not bm!485031) (not bm!485091) (not bm!485011) (not b!6001175) (not b!6000891) (not b_lambda!226853) (not bm!485052) (not b!6000972) (not b!6000926) (not bm!485043) (not b!6001095) (not bm!484959) (not b!6001009) (not b!6000641) (not setNonEmpty!40692) (not d!1881755) (not b!6000960) (not b!6000598) (not bm!485000) (not b!6000820) (not b!6001112) (not b!6000548) (not b_lambda!226869) (not bm!484993) (not bm!485096) (not bm!485015) (not b!6000811) (not b!6001096) (not b!6000621) (not d!1881537) (not d!1881677) (not bm!485065) (not bm!484995) (not bm!484970))
(check-sat)

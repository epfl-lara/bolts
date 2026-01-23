; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!622298 () Bool)

(assert start!622298)

(declare-fun b!6255548 () Bool)

(assert (=> b!6255548 true))

(assert (=> b!6255548 true))

(declare-fun lambda!342314 () Int)

(declare-fun lambda!342313 () Int)

(assert (=> b!6255548 (not (= lambda!342314 lambda!342313))))

(assert (=> b!6255548 true))

(assert (=> b!6255548 true))

(declare-fun b!6255545 () Bool)

(assert (=> b!6255545 true))

(declare-fun b!6255528 () Bool)

(declare-fun res!2581786 () Bool)

(declare-fun e!3805489 () Bool)

(assert (=> b!6255528 (=> res!2581786 e!3805489)))

(declare-datatypes ((C!32632 0))(
  ( (C!32633 (val!26018 Int)) )
))
(declare-datatypes ((Regex!16181 0))(
  ( (ElementMatch!16181 (c!1132364 C!32632)) (Concat!25026 (regOne!32874 Regex!16181) (regTwo!32874 Regex!16181)) (EmptyExpr!16181) (Star!16181 (reg!16510 Regex!16181)) (EmptyLang!16181) (Union!16181 (regOne!32875 Regex!16181) (regTwo!32875 Regex!16181)) )
))
(declare-datatypes ((List!64842 0))(
  ( (Nil!64718) (Cons!64718 (h!71166 Regex!16181) (t!378392 List!64842)) )
))
(declare-datatypes ((Context!11130 0))(
  ( (Context!11131 (exprs!6065 List!64842)) )
))
(declare-datatypes ((List!64843 0))(
  ( (Nil!64719) (Cons!64719 (h!71167 Context!11130) (t!378393 List!64843)) )
))
(declare-fun zl!343 () List!64843)

(declare-fun r!7292 () Regex!16181)

(assert (=> b!6255528 (= res!2581786 (not (= (exprs!6065 (h!71167 zl!343)) (Cons!64718 (Concat!25026 (regOne!32874 (regOne!32874 r!7292)) (regTwo!32874 (regOne!32874 r!7292))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6255529 () Bool)

(declare-fun e!3805487 () Bool)

(declare-fun e!3805493 () Bool)

(assert (=> b!6255529 (= e!3805487 e!3805493)))

(declare-fun res!2581781 () Bool)

(assert (=> b!6255529 (=> res!2581781 e!3805493)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2349544 () (InoxSet Context!11130))

(declare-fun lt!2349540 () (InoxSet Context!11130))

(assert (=> b!6255529 (= res!2581781 (not (= lt!2349544 lt!2349540)))))

(declare-fun lt!2349534 () (InoxSet Context!11130))

(declare-fun lt!2349532 () (InoxSet Context!11130))

(assert (=> b!6255529 (= lt!2349540 ((_ map or) lt!2349534 lt!2349532))))

(declare-datatypes ((List!64844 0))(
  ( (Nil!64720) (Cons!64720 (h!71168 C!32632) (t!378394 List!64844)) )
))
(declare-fun s!2326 () List!64844)

(declare-fun lt!2349549 () Context!11130)

(declare-fun derivationStepZipperDown!1429 (Regex!16181 Context!11130 C!32632) (InoxSet Context!11130))

(assert (=> b!6255529 (= lt!2349532 (derivationStepZipperDown!1429 (regTwo!32874 (regOne!32874 r!7292)) lt!2349549 (h!71168 s!2326)))))

(declare-fun lt!2349551 () Context!11130)

(assert (=> b!6255529 (= lt!2349534 (derivationStepZipperDown!1429 (regOne!32874 (regOne!32874 r!7292)) lt!2349551 (h!71168 s!2326)))))

(declare-fun lt!2349553 () List!64842)

(assert (=> b!6255529 (= lt!2349551 (Context!11131 lt!2349553))))

(assert (=> b!6255529 (= lt!2349553 (Cons!64718 (regTwo!32874 (regOne!32874 r!7292)) (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6255530 () Bool)

(declare-fun res!2581795 () Bool)

(declare-fun e!3805491 () Bool)

(assert (=> b!6255530 (=> res!2581795 e!3805491)))

(declare-fun isEmpty!36742 (List!64842) Bool)

(assert (=> b!6255530 (= res!2581795 (isEmpty!36742 (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6255531 () Bool)

(declare-fun e!3805481 () Bool)

(declare-fun tp!1745409 () Bool)

(declare-fun tp!1745405 () Bool)

(assert (=> b!6255531 (= e!3805481 (and tp!1745409 tp!1745405))))

(declare-fun b!6255532 () Bool)

(declare-fun res!2581797 () Bool)

(declare-fun e!3805496 () Bool)

(assert (=> b!6255532 (=> (not res!2581797) (not e!3805496))))

(declare-fun z!1189 () (InoxSet Context!11130))

(declare-fun toList!9965 ((InoxSet Context!11130)) List!64843)

(assert (=> b!6255532 (= res!2581797 (= (toList!9965 z!1189) zl!343))))

(declare-fun b!6255533 () Bool)

(declare-fun e!3805482 () Bool)

(declare-fun lt!2349545 () (InoxSet Context!11130))

(declare-fun matchZipper!2193 ((InoxSet Context!11130) List!64844) Bool)

(declare-fun derivationStepZipper!2147 ((InoxSet Context!11130) C!32632) (InoxSet Context!11130))

(assert (=> b!6255533 (= e!3805482 (not (matchZipper!2193 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (t!378394 s!2326))))))

(declare-fun b!6255534 () Bool)

(declare-fun e!3805488 () Bool)

(assert (=> b!6255534 (= e!3805496 (not e!3805488))))

(declare-fun res!2581789 () Bool)

(assert (=> b!6255534 (=> res!2581789 e!3805488)))

(get-info :version)

(assert (=> b!6255534 (= res!2581789 (not ((_ is Cons!64719) zl!343)))))

(declare-fun lt!2349548 () Bool)

(declare-fun matchRSpec!3282 (Regex!16181 List!64844) Bool)

(assert (=> b!6255534 (= lt!2349548 (matchRSpec!3282 r!7292 s!2326))))

(declare-fun matchR!8364 (Regex!16181 List!64844) Bool)

(assert (=> b!6255534 (= lt!2349548 (matchR!8364 r!7292 s!2326))))

(declare-datatypes ((Unit!158055 0))(
  ( (Unit!158056) )
))
(declare-fun lt!2349536 () Unit!158055)

(declare-fun mainMatchTheorem!3282 (Regex!16181 List!64844) Unit!158055)

(assert (=> b!6255534 (= lt!2349536 (mainMatchTheorem!3282 r!7292 s!2326))))

(declare-fun b!6255535 () Bool)

(declare-fun res!2581788 () Bool)

(declare-fun e!3805485 () Bool)

(assert (=> b!6255535 (=> res!2581788 e!3805485)))

(declare-fun lt!2349542 () List!64843)

(declare-fun zipperDepth!306 (List!64843) Int)

(assert (=> b!6255535 (= res!2581788 (> (zipperDepth!306 lt!2349542) (zipperDepth!306 zl!343)))))

(declare-fun b!6255536 () Bool)

(declare-fun res!2581780 () Bool)

(assert (=> b!6255536 (=> res!2581780 e!3805488)))

(assert (=> b!6255536 (= res!2581780 (not ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6255537 () Bool)

(assert (=> b!6255537 (= e!3805489 e!3805485)))

(declare-fun res!2581800 () Bool)

(assert (=> b!6255537 (=> res!2581800 e!3805485)))

(declare-fun zipperDepthTotal!334 (List!64843) Int)

(assert (=> b!6255537 (= res!2581800 (>= (zipperDepthTotal!334 lt!2349542) (zipperDepthTotal!334 zl!343)))))

(declare-fun lt!2349538 () Context!11130)

(assert (=> b!6255537 (= lt!2349542 (Cons!64719 lt!2349538 Nil!64719))))

(declare-fun b!6255538 () Bool)

(declare-fun res!2581783 () Bool)

(assert (=> b!6255538 (=> res!2581783 e!3805488)))

(assert (=> b!6255538 (= res!2581783 (or ((_ is EmptyExpr!16181) r!7292) ((_ is EmptyLang!16181) r!7292) ((_ is ElementMatch!16181) r!7292) ((_ is Union!16181) r!7292) (not ((_ is Concat!25026) r!7292))))))

(declare-fun b!6255539 () Bool)

(declare-fun e!3805495 () Bool)

(assert (=> b!6255539 (= e!3805495 e!3805489)))

(declare-fun res!2581790 () Bool)

(assert (=> b!6255539 (=> res!2581790 e!3805489)))

(assert (=> b!6255539 (= res!2581790 e!3805482)))

(declare-fun res!2581775 () Bool)

(assert (=> b!6255539 (=> (not res!2581775) (not e!3805482))))

(declare-fun lt!2349530 () Bool)

(declare-fun lt!2349558 () (InoxSet Context!11130))

(assert (=> b!6255539 (= res!2581775 (not (= lt!2349530 (matchZipper!2193 lt!2349558 (t!378394 s!2326)))))))

(declare-fun lt!2349552 () (InoxSet Context!11130))

(declare-fun e!3805490 () Bool)

(assert (=> b!6255539 (= (matchZipper!2193 lt!2349552 (t!378394 s!2326)) e!3805490)))

(declare-fun res!2581787 () Bool)

(assert (=> b!6255539 (=> res!2581787 e!3805490)))

(declare-fun lt!2349531 () Bool)

(assert (=> b!6255539 (= res!2581787 lt!2349531)))

(declare-fun lt!2349560 () (InoxSet Context!11130))

(declare-fun lt!2349535 () Unit!158055)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1012 ((InoxSet Context!11130) (InoxSet Context!11130) List!64844) Unit!158055)

(assert (=> b!6255539 (= lt!2349535 (lemmaZipperConcatMatchesSameAsBothZippers!1012 lt!2349534 lt!2349560 (t!378394 s!2326)))))

(declare-fun lambda!342315 () Int)

(declare-fun flatMap!1686 ((InoxSet Context!11130) Int) (InoxSet Context!11130))

(declare-fun derivationStepZipperUp!1355 (Context!11130 C!32632) (InoxSet Context!11130))

(assert (=> b!6255539 (= (flatMap!1686 lt!2349545 lambda!342315) (derivationStepZipperUp!1355 lt!2349551 (h!71168 s!2326)))))

(declare-fun lt!2349559 () Unit!158055)

(declare-fun lemmaFlatMapOnSingletonSet!1212 ((InoxSet Context!11130) Context!11130 Int) Unit!158055)

(assert (=> b!6255539 (= lt!2349559 (lemmaFlatMapOnSingletonSet!1212 lt!2349545 lt!2349551 lambda!342315))))

(declare-fun b!6255540 () Bool)

(declare-fun e!3805494 () Bool)

(assert (=> b!6255540 (= e!3805494 e!3805495)))

(declare-fun res!2581777 () Bool)

(assert (=> b!6255540 (=> res!2581777 e!3805495)))

(assert (=> b!6255540 (= res!2581777 (not (= lt!2349558 lt!2349552)))))

(assert (=> b!6255540 (= lt!2349552 ((_ map or) lt!2349534 lt!2349560))))

(assert (=> b!6255540 (= lt!2349560 (derivationStepZipperUp!1355 lt!2349551 (h!71168 s!2326)))))

(declare-fun lt!2349541 () (InoxSet Context!11130))

(assert (=> b!6255540 (= (flatMap!1686 lt!2349541 lambda!342315) (derivationStepZipperUp!1355 lt!2349538 (h!71168 s!2326)))))

(declare-fun lt!2349528 () Unit!158055)

(assert (=> b!6255540 (= lt!2349528 (lemmaFlatMapOnSingletonSet!1212 lt!2349541 lt!2349538 lambda!342315))))

(declare-fun lt!2349555 () (InoxSet Context!11130))

(assert (=> b!6255540 (= lt!2349555 (derivationStepZipperUp!1355 lt!2349538 (h!71168 s!2326)))))

(assert (=> b!6255540 (= lt!2349558 (derivationStepZipper!2147 lt!2349541 (h!71168 s!2326)))))

(assert (=> b!6255540 (= lt!2349545 (store ((as const (Array Context!11130 Bool)) false) lt!2349551 true))))

(assert (=> b!6255540 (= lt!2349541 (store ((as const (Array Context!11130 Bool)) false) lt!2349538 true))))

(declare-fun lt!2349529 () List!64842)

(assert (=> b!6255540 (= lt!2349538 (Context!11131 lt!2349529))))

(assert (=> b!6255540 (= lt!2349529 (Cons!64718 (regOne!32874 (regOne!32874 r!7292)) lt!2349553))))

(declare-fun b!6255541 () Bool)

(declare-fun e!3805480 () Bool)

(assert (=> b!6255541 (= e!3805480 (matchZipper!2193 lt!2349532 (t!378394 s!2326)))))

(declare-fun e!3805483 () Bool)

(declare-fun e!3805477 () Bool)

(declare-fun b!6255542 () Bool)

(declare-fun tp!1745411 () Bool)

(declare-fun inv!83699 (Context!11130) Bool)

(assert (=> b!6255542 (= e!3805477 (and (inv!83699 (h!71167 zl!343)) e!3805483 tp!1745411))))

(declare-fun b!6255543 () Bool)

(declare-fun e!3805484 () Bool)

(declare-fun lt!2349547 () (InoxSet Context!11130))

(assert (=> b!6255543 (= e!3805484 (matchZipper!2193 lt!2349547 (t!378394 s!2326)))))

(declare-fun b!6255544 () Bool)

(declare-fun tp!1745413 () Bool)

(declare-fun tp!1745407 () Bool)

(assert (=> b!6255544 (= e!3805481 (and tp!1745413 tp!1745407))))

(declare-fun setNonEmpty!42536 () Bool)

(declare-fun setElem!42536 () Context!11130)

(declare-fun setRes!42536 () Bool)

(declare-fun e!3805492 () Bool)

(declare-fun tp!1745412 () Bool)

(assert (=> setNonEmpty!42536 (= setRes!42536 (and tp!1745412 (inv!83699 setElem!42536) e!3805492))))

(declare-fun setRest!42536 () (InoxSet Context!11130))

(assert (=> setNonEmpty!42536 (= z!1189 ((_ map or) (store ((as const (Array Context!11130 Bool)) false) setElem!42536 true) setRest!42536))))

(assert (=> b!6255545 (= e!3805491 e!3805487)))

(declare-fun res!2581779 () Bool)

(assert (=> b!6255545 (=> res!2581779 e!3805487)))

(assert (=> b!6255545 (= res!2581779 (or (and ((_ is ElementMatch!16181) (regOne!32874 r!7292)) (= (c!1132364 (regOne!32874 r!7292)) (h!71168 s!2326))) ((_ is Union!16181) (regOne!32874 r!7292)) (not ((_ is Concat!25026) (regOne!32874 r!7292)))))))

(declare-fun lt!2349546 () Unit!158055)

(declare-fun e!3805479 () Unit!158055)

(assert (=> b!6255545 (= lt!2349546 e!3805479)))

(declare-fun c!1132363 () Bool)

(declare-fun nullable!6174 (Regex!16181) Bool)

(assert (=> b!6255545 (= c!1132363 (nullable!6174 (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> b!6255545 (= (flatMap!1686 z!1189 lambda!342315) (derivationStepZipperUp!1355 (h!71167 zl!343) (h!71168 s!2326)))))

(declare-fun lt!2349554 () Unit!158055)

(assert (=> b!6255545 (= lt!2349554 (lemmaFlatMapOnSingletonSet!1212 z!1189 (h!71167 zl!343) lambda!342315))))

(assert (=> b!6255545 (= lt!2349547 (derivationStepZipperUp!1355 lt!2349549 (h!71168 s!2326)))))

(assert (=> b!6255545 (= lt!2349544 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (h!71167 zl!343))) lt!2349549 (h!71168 s!2326)))))

(assert (=> b!6255545 (= lt!2349549 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun lt!2349556 () (InoxSet Context!11130))

(assert (=> b!6255545 (= lt!2349556 (derivationStepZipperUp!1355 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))) (h!71168 s!2326)))))

(declare-fun b!6255546 () Bool)

(declare-fun e!3805486 () Bool)

(assert (=> b!6255546 (= e!3805486 (not (matchZipper!2193 lt!2349532 (t!378394 s!2326))))))

(declare-fun b!6255547 () Bool)

(declare-fun res!2581776 () Bool)

(assert (=> b!6255547 (=> (not res!2581776) (not e!3805496))))

(declare-fun unfocusZipper!1923 (List!64843) Regex!16181)

(assert (=> b!6255547 (= res!2581776 (= r!7292 (unfocusZipper!1923 zl!343)))))

(assert (=> b!6255548 (= e!3805488 e!3805491)))

(declare-fun res!2581793 () Bool)

(assert (=> b!6255548 (=> res!2581793 e!3805491)))

(declare-fun lt!2349537 () Bool)

(assert (=> b!6255548 (= res!2581793 (or (not (= lt!2349548 lt!2349537)) ((_ is Nil!64720) s!2326)))))

(declare-fun Exists!3251 (Int) Bool)

(assert (=> b!6255548 (= (Exists!3251 lambda!342313) (Exists!3251 lambda!342314))))

(declare-fun lt!2349527 () Unit!158055)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1788 (Regex!16181 Regex!16181 List!64844) Unit!158055)

(assert (=> b!6255548 (= lt!2349527 (lemmaExistCutMatchRandMatchRSpecEquivalent!1788 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326))))

(assert (=> b!6255548 (= lt!2349537 (Exists!3251 lambda!342313))))

(declare-datatypes ((tuple2!66320 0))(
  ( (tuple2!66321 (_1!36463 List!64844) (_2!36463 List!64844)) )
))
(declare-datatypes ((Option!16072 0))(
  ( (None!16071) (Some!16071 (v!52224 tuple2!66320)) )
))
(declare-fun isDefined!12775 (Option!16072) Bool)

(declare-fun findConcatSeparation!2486 (Regex!16181 Regex!16181 List!64844 List!64844 List!64844) Option!16072)

(assert (=> b!6255548 (= lt!2349537 (isDefined!12775 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326)))))

(declare-fun lt!2349550 () Unit!158055)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2250 (Regex!16181 Regex!16181 List!64844) Unit!158055)

(assert (=> b!6255548 (= lt!2349550 (lemmaFindConcatSeparationEquivalentToExists!2250 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326))))

(declare-fun b!6255549 () Bool)

(declare-fun res!2581791 () Bool)

(assert (=> b!6255549 (=> res!2581791 e!3805488)))

(declare-fun generalisedUnion!2025 (List!64842) Regex!16181)

(declare-fun unfocusZipperList!1602 (List!64843) List!64842)

(assert (=> b!6255549 (= res!2581791 (not (= r!7292 (generalisedUnion!2025 (unfocusZipperList!1602 zl!343)))))))

(declare-fun setIsEmpty!42536 () Bool)

(assert (=> setIsEmpty!42536 setRes!42536))

(declare-fun b!6255550 () Bool)

(declare-fun res!2581784 () Bool)

(assert (=> b!6255550 (=> res!2581784 e!3805489)))

(declare-fun contextDepthTotal!304 (Context!11130) Int)

(assert (=> b!6255550 (= res!2581784 (>= (contextDepthTotal!304 lt!2349538) (contextDepthTotal!304 (h!71167 zl!343))))))

(declare-fun b!6255551 () Bool)

(declare-fun tp_is_empty!41615 () Bool)

(assert (=> b!6255551 (= e!3805481 tp_is_empty!41615)))

(declare-fun b!6255552 () Bool)

(declare-fun res!2581796 () Bool)

(assert (=> b!6255552 (=> res!2581796 e!3805488)))

(declare-fun generalisedConcat!1778 (List!64842) Regex!16181)

(assert (=> b!6255552 (= res!2581796 (not (= r!7292 (generalisedConcat!1778 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun b!6255553 () Bool)

(declare-fun tp!1745408 () Bool)

(assert (=> b!6255553 (= e!3805481 tp!1745408)))

(declare-fun b!6255554 () Bool)

(declare-fun Unit!158057 () Unit!158055)

(assert (=> b!6255554 (= e!3805479 Unit!158057)))

(declare-fun b!6255555 () Bool)

(assert (=> b!6255555 (= e!3805485 (inv!83699 lt!2349551))))

(declare-fun lt!2349533 () Regex!16181)

(assert (=> b!6255555 (= (matchR!8364 lt!2349533 s!2326) (matchZipper!2193 lt!2349541 s!2326))))

(declare-fun lt!2349539 () Unit!158055)

(declare-fun theoremZipperRegexEquiv!751 ((InoxSet Context!11130) List!64843 Regex!16181 List!64844) Unit!158055)

(assert (=> b!6255555 (= lt!2349539 (theoremZipperRegexEquiv!751 lt!2349541 lt!2349542 lt!2349533 s!2326))))

(assert (=> b!6255555 (= lt!2349533 (generalisedConcat!1778 lt!2349529))))

(declare-fun b!6255556 () Bool)

(declare-fun e!3805478 () Bool)

(declare-fun tp!1745410 () Bool)

(assert (=> b!6255556 (= e!3805478 (and tp_is_empty!41615 tp!1745410))))

(declare-fun b!6255557 () Bool)

(declare-fun res!2581798 () Bool)

(assert (=> b!6255557 (=> res!2581798 e!3805488)))

(declare-fun isEmpty!36743 (List!64843) Bool)

(assert (=> b!6255557 (= res!2581798 (not (isEmpty!36743 (t!378393 zl!343))))))

(declare-fun b!6255558 () Bool)

(declare-fun res!2581792 () Bool)

(assert (=> b!6255558 (=> res!2581792 e!3805487)))

(assert (=> b!6255558 (= res!2581792 (not (nullable!6174 (regOne!32874 (regOne!32874 r!7292)))))))

(declare-fun b!6255559 () Bool)

(declare-fun Unit!158058 () Unit!158055)

(assert (=> b!6255559 (= e!3805479 Unit!158058)))

(declare-fun lt!2349557 () Unit!158055)

(assert (=> b!6255559 (= lt!2349557 (lemmaZipperConcatMatchesSameAsBothZippers!1012 lt!2349544 lt!2349547 (t!378394 s!2326)))))

(declare-fun res!2581778 () Bool)

(assert (=> b!6255559 (= res!2581778 (matchZipper!2193 lt!2349544 (t!378394 s!2326)))))

(assert (=> b!6255559 (=> res!2581778 e!3805484)))

(assert (=> b!6255559 (= (matchZipper!2193 ((_ map or) lt!2349544 lt!2349547) (t!378394 s!2326)) e!3805484)))

(declare-fun b!6255560 () Bool)

(declare-fun tp!1745406 () Bool)

(assert (=> b!6255560 (= e!3805492 tp!1745406)))

(declare-fun b!6255561 () Bool)

(declare-fun tp!1745414 () Bool)

(assert (=> b!6255561 (= e!3805483 tp!1745414)))

(declare-fun res!2581799 () Bool)

(assert (=> start!622298 (=> (not res!2581799) (not e!3805496))))

(declare-fun validRegex!7917 (Regex!16181) Bool)

(assert (=> start!622298 (= res!2581799 (validRegex!7917 r!7292))))

(assert (=> start!622298 e!3805496))

(assert (=> start!622298 e!3805481))

(declare-fun condSetEmpty!42536 () Bool)

(assert (=> start!622298 (= condSetEmpty!42536 (= z!1189 ((as const (Array Context!11130 Bool)) false)))))

(assert (=> start!622298 setRes!42536))

(assert (=> start!622298 e!3805477))

(assert (=> start!622298 e!3805478))

(declare-fun b!6255562 () Bool)

(assert (=> b!6255562 (= e!3805493 e!3805494)))

(declare-fun res!2581782 () Bool)

(assert (=> b!6255562 (=> res!2581782 e!3805494)))

(assert (=> b!6255562 (= res!2581782 e!3805486)))

(declare-fun res!2581785 () Bool)

(assert (=> b!6255562 (=> (not res!2581785) (not e!3805486))))

(assert (=> b!6255562 (= res!2581785 (not (= lt!2349530 lt!2349531)))))

(assert (=> b!6255562 (= lt!2349530 (matchZipper!2193 lt!2349544 (t!378394 s!2326)))))

(assert (=> b!6255562 (= (matchZipper!2193 lt!2349540 (t!378394 s!2326)) e!3805480)))

(declare-fun res!2581794 () Bool)

(assert (=> b!6255562 (=> res!2581794 e!3805480)))

(assert (=> b!6255562 (= res!2581794 lt!2349531)))

(assert (=> b!6255562 (= lt!2349531 (matchZipper!2193 lt!2349534 (t!378394 s!2326)))))

(declare-fun lt!2349543 () Unit!158055)

(assert (=> b!6255562 (= lt!2349543 (lemmaZipperConcatMatchesSameAsBothZippers!1012 lt!2349534 lt!2349532 (t!378394 s!2326)))))

(declare-fun b!6255563 () Bool)

(assert (=> b!6255563 (= e!3805490 (matchZipper!2193 lt!2349560 (t!378394 s!2326)))))

(assert (= (and start!622298 res!2581799) b!6255532))

(assert (= (and b!6255532 res!2581797) b!6255547))

(assert (= (and b!6255547 res!2581776) b!6255534))

(assert (= (and b!6255534 (not res!2581789)) b!6255557))

(assert (= (and b!6255557 (not res!2581798)) b!6255552))

(assert (= (and b!6255552 (not res!2581796)) b!6255536))

(assert (= (and b!6255536 (not res!2581780)) b!6255549))

(assert (= (and b!6255549 (not res!2581791)) b!6255538))

(assert (= (and b!6255538 (not res!2581783)) b!6255548))

(assert (= (and b!6255548 (not res!2581793)) b!6255530))

(assert (= (and b!6255530 (not res!2581795)) b!6255545))

(assert (= (and b!6255545 c!1132363) b!6255559))

(assert (= (and b!6255545 (not c!1132363)) b!6255554))

(assert (= (and b!6255559 (not res!2581778)) b!6255543))

(assert (= (and b!6255545 (not res!2581779)) b!6255558))

(assert (= (and b!6255558 (not res!2581792)) b!6255529))

(assert (= (and b!6255529 (not res!2581781)) b!6255562))

(assert (= (and b!6255562 (not res!2581794)) b!6255541))

(assert (= (and b!6255562 res!2581785) b!6255546))

(assert (= (and b!6255562 (not res!2581782)) b!6255540))

(assert (= (and b!6255540 (not res!2581777)) b!6255539))

(assert (= (and b!6255539 (not res!2581787)) b!6255563))

(assert (= (and b!6255539 res!2581775) b!6255533))

(assert (= (and b!6255539 (not res!2581790)) b!6255528))

(assert (= (and b!6255528 (not res!2581786)) b!6255550))

(assert (= (and b!6255550 (not res!2581784)) b!6255537))

(assert (= (and b!6255537 (not res!2581800)) b!6255535))

(assert (= (and b!6255535 (not res!2581788)) b!6255555))

(assert (= (and start!622298 ((_ is ElementMatch!16181) r!7292)) b!6255551))

(assert (= (and start!622298 ((_ is Concat!25026) r!7292)) b!6255544))

(assert (= (and start!622298 ((_ is Star!16181) r!7292)) b!6255553))

(assert (= (and start!622298 ((_ is Union!16181) r!7292)) b!6255531))

(assert (= (and start!622298 condSetEmpty!42536) setIsEmpty!42536))

(assert (= (and start!622298 (not condSetEmpty!42536)) setNonEmpty!42536))

(assert (= setNonEmpty!42536 b!6255560))

(assert (= b!6255542 b!6255561))

(assert (= (and start!622298 ((_ is Cons!64719) zl!343)) b!6255542))

(assert (= (and start!622298 ((_ is Cons!64720) s!2326)) b!6255556))

(declare-fun m!7078418 () Bool)

(assert (=> b!6255541 m!7078418))

(declare-fun m!7078420 () Bool)

(assert (=> b!6255552 m!7078420))

(declare-fun m!7078422 () Bool)

(assert (=> b!6255550 m!7078422))

(declare-fun m!7078424 () Bool)

(assert (=> b!6255550 m!7078424))

(declare-fun m!7078426 () Bool)

(assert (=> b!6255562 m!7078426))

(declare-fun m!7078428 () Bool)

(assert (=> b!6255562 m!7078428))

(declare-fun m!7078430 () Bool)

(assert (=> b!6255562 m!7078430))

(declare-fun m!7078432 () Bool)

(assert (=> b!6255562 m!7078432))

(declare-fun m!7078434 () Bool)

(assert (=> b!6255549 m!7078434))

(assert (=> b!6255549 m!7078434))

(declare-fun m!7078436 () Bool)

(assert (=> b!6255549 m!7078436))

(declare-fun m!7078438 () Bool)

(assert (=> b!6255555 m!7078438))

(declare-fun m!7078440 () Bool)

(assert (=> b!6255555 m!7078440))

(declare-fun m!7078442 () Bool)

(assert (=> b!6255555 m!7078442))

(declare-fun m!7078444 () Bool)

(assert (=> b!6255555 m!7078444))

(declare-fun m!7078446 () Bool)

(assert (=> b!6255555 m!7078446))

(declare-fun m!7078448 () Bool)

(assert (=> b!6255559 m!7078448))

(assert (=> b!6255559 m!7078426))

(declare-fun m!7078450 () Bool)

(assert (=> b!6255559 m!7078450))

(declare-fun m!7078452 () Bool)

(assert (=> b!6255535 m!7078452))

(declare-fun m!7078454 () Bool)

(assert (=> b!6255535 m!7078454))

(declare-fun m!7078456 () Bool)

(assert (=> b!6255529 m!7078456))

(declare-fun m!7078458 () Bool)

(assert (=> b!6255529 m!7078458))

(declare-fun m!7078460 () Bool)

(assert (=> b!6255532 m!7078460))

(declare-fun m!7078462 () Bool)

(assert (=> b!6255530 m!7078462))

(declare-fun m!7078464 () Bool)

(assert (=> b!6255557 m!7078464))

(assert (=> b!6255546 m!7078418))

(declare-fun m!7078466 () Bool)

(assert (=> b!6255545 m!7078466))

(declare-fun m!7078468 () Bool)

(assert (=> b!6255545 m!7078468))

(declare-fun m!7078470 () Bool)

(assert (=> b!6255545 m!7078470))

(declare-fun m!7078472 () Bool)

(assert (=> b!6255545 m!7078472))

(declare-fun m!7078474 () Bool)

(assert (=> b!6255545 m!7078474))

(declare-fun m!7078476 () Bool)

(assert (=> b!6255545 m!7078476))

(declare-fun m!7078478 () Bool)

(assert (=> b!6255545 m!7078478))

(declare-fun m!7078480 () Bool)

(assert (=> b!6255537 m!7078480))

(declare-fun m!7078482 () Bool)

(assert (=> b!6255537 m!7078482))

(declare-fun m!7078484 () Bool)

(assert (=> b!6255547 m!7078484))

(declare-fun m!7078486 () Bool)

(assert (=> b!6255533 m!7078486))

(assert (=> b!6255533 m!7078486))

(declare-fun m!7078488 () Bool)

(assert (=> b!6255533 m!7078488))

(declare-fun m!7078490 () Bool)

(assert (=> b!6255548 m!7078490))

(assert (=> b!6255548 m!7078490))

(declare-fun m!7078492 () Bool)

(assert (=> b!6255548 m!7078492))

(declare-fun m!7078494 () Bool)

(assert (=> b!6255548 m!7078494))

(declare-fun m!7078496 () Bool)

(assert (=> b!6255548 m!7078496))

(declare-fun m!7078498 () Bool)

(assert (=> b!6255548 m!7078498))

(assert (=> b!6255548 m!7078492))

(declare-fun m!7078500 () Bool)

(assert (=> b!6255548 m!7078500))

(declare-fun m!7078502 () Bool)

(assert (=> b!6255539 m!7078502))

(declare-fun m!7078504 () Bool)

(assert (=> b!6255539 m!7078504))

(declare-fun m!7078506 () Bool)

(assert (=> b!6255539 m!7078506))

(declare-fun m!7078508 () Bool)

(assert (=> b!6255539 m!7078508))

(declare-fun m!7078510 () Bool)

(assert (=> b!6255539 m!7078510))

(declare-fun m!7078512 () Bool)

(assert (=> b!6255539 m!7078512))

(declare-fun m!7078514 () Bool)

(assert (=> b!6255542 m!7078514))

(declare-fun m!7078516 () Bool)

(assert (=> b!6255558 m!7078516))

(declare-fun m!7078518 () Bool)

(assert (=> b!6255540 m!7078518))

(assert (=> b!6255540 m!7078504))

(declare-fun m!7078520 () Bool)

(assert (=> b!6255540 m!7078520))

(declare-fun m!7078522 () Bool)

(assert (=> b!6255540 m!7078522))

(declare-fun m!7078524 () Bool)

(assert (=> b!6255540 m!7078524))

(declare-fun m!7078526 () Bool)

(assert (=> b!6255540 m!7078526))

(declare-fun m!7078528 () Bool)

(assert (=> b!6255540 m!7078528))

(declare-fun m!7078530 () Bool)

(assert (=> start!622298 m!7078530))

(declare-fun m!7078532 () Bool)

(assert (=> setNonEmpty!42536 m!7078532))

(declare-fun m!7078534 () Bool)

(assert (=> b!6255543 m!7078534))

(declare-fun m!7078536 () Bool)

(assert (=> b!6255563 m!7078536))

(declare-fun m!7078538 () Bool)

(assert (=> b!6255534 m!7078538))

(declare-fun m!7078540 () Bool)

(assert (=> b!6255534 m!7078540))

(declare-fun m!7078542 () Bool)

(assert (=> b!6255534 m!7078542))

(check-sat (not b!6255531) (not b!6255548) (not b!6255561) (not b!6255547) (not b!6255541) (not b!6255535) (not b!6255544) (not b!6255539) (not b!6255537) (not b!6255558) (not b!6255552) (not b!6255563) (not b!6255545) (not b!6255560) (not b!6255542) (not b!6255546) (not b!6255543) (not b!6255530) (not b!6255534) (not b!6255532) (not b!6255533) (not b!6255540) (not b!6255553) (not b!6255555) (not b!6255562) tp_is_empty!41615 (not b!6255549) (not b!6255550) (not b!6255557) (not b!6255529) (not start!622298) (not b!6255556) (not b!6255559) (not setNonEmpty!42536))
(check-sat)
(get-model)

(declare-fun d!1962486 () Bool)

(declare-fun lambda!342355 () Int)

(declare-fun forall!15300 (List!64842 Int) Bool)

(assert (=> d!1962486 (= (inv!83699 (h!71167 zl!343)) (forall!15300 (exprs!6065 (h!71167 zl!343)) lambda!342355))))

(declare-fun bs!1557876 () Bool)

(assert (= bs!1557876 d!1962486))

(declare-fun m!7078784 () Bool)

(assert (=> bs!1557876 m!7078784))

(assert (=> b!6255542 d!1962486))

(declare-fun d!1962494 () Bool)

(declare-fun c!1132476 () Bool)

(declare-fun isEmpty!36746 (List!64844) Bool)

(assert (=> d!1962494 (= c!1132476 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805671 () Bool)

(assert (=> d!1962494 (= (matchZipper!2193 lt!2349532 (t!378394 s!2326)) e!3805671)))

(declare-fun b!6255884 () Bool)

(declare-fun nullableZipper!1951 ((InoxSet Context!11130)) Bool)

(assert (=> b!6255884 (= e!3805671 (nullableZipper!1951 lt!2349532))))

(declare-fun b!6255885 () Bool)

(declare-fun head!12862 (List!64844) C!32632)

(declare-fun tail!11947 (List!64844) List!64844)

(assert (=> b!6255885 (= e!3805671 (matchZipper!2193 (derivationStepZipper!2147 lt!2349532 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962494 c!1132476) b!6255884))

(assert (= (and d!1962494 (not c!1132476)) b!6255885))

(declare-fun m!7078798 () Bool)

(assert (=> d!1962494 m!7078798))

(declare-fun m!7078800 () Bool)

(assert (=> b!6255884 m!7078800))

(declare-fun m!7078802 () Bool)

(assert (=> b!6255885 m!7078802))

(assert (=> b!6255885 m!7078802))

(declare-fun m!7078804 () Bool)

(assert (=> b!6255885 m!7078804))

(declare-fun m!7078806 () Bool)

(assert (=> b!6255885 m!7078806))

(assert (=> b!6255885 m!7078804))

(assert (=> b!6255885 m!7078806))

(declare-fun m!7078808 () Bool)

(assert (=> b!6255885 m!7078808))

(assert (=> b!6255541 d!1962494))

(declare-fun d!1962502 () Bool)

(declare-fun e!3805687 () Bool)

(assert (=> d!1962502 (= (matchZipper!2193 ((_ map or) lt!2349544 lt!2349547) (t!378394 s!2326)) e!3805687)))

(declare-fun res!2581912 () Bool)

(assert (=> d!1962502 (=> res!2581912 e!3805687)))

(assert (=> d!1962502 (= res!2581912 (matchZipper!2193 lt!2349544 (t!378394 s!2326)))))

(declare-fun lt!2349631 () Unit!158055)

(declare-fun choose!46424 ((InoxSet Context!11130) (InoxSet Context!11130) List!64844) Unit!158055)

(assert (=> d!1962502 (= lt!2349631 (choose!46424 lt!2349544 lt!2349547 (t!378394 s!2326)))))

(assert (=> d!1962502 (= (lemmaZipperConcatMatchesSameAsBothZippers!1012 lt!2349544 lt!2349547 (t!378394 s!2326)) lt!2349631)))

(declare-fun b!6255911 () Bool)

(assert (=> b!6255911 (= e!3805687 (matchZipper!2193 lt!2349547 (t!378394 s!2326)))))

(assert (= (and d!1962502 (not res!2581912)) b!6255911))

(assert (=> d!1962502 m!7078450))

(assert (=> d!1962502 m!7078426))

(declare-fun m!7078860 () Bool)

(assert (=> d!1962502 m!7078860))

(assert (=> b!6255911 m!7078534))

(assert (=> b!6255559 d!1962502))

(declare-fun d!1962520 () Bool)

(declare-fun c!1132487 () Bool)

(assert (=> d!1962520 (= c!1132487 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805688 () Bool)

(assert (=> d!1962520 (= (matchZipper!2193 lt!2349544 (t!378394 s!2326)) e!3805688)))

(declare-fun b!6255912 () Bool)

(assert (=> b!6255912 (= e!3805688 (nullableZipper!1951 lt!2349544))))

(declare-fun b!6255913 () Bool)

(assert (=> b!6255913 (= e!3805688 (matchZipper!2193 (derivationStepZipper!2147 lt!2349544 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962520 c!1132487) b!6255912))

(assert (= (and d!1962520 (not c!1132487)) b!6255913))

(assert (=> d!1962520 m!7078798))

(declare-fun m!7078862 () Bool)

(assert (=> b!6255912 m!7078862))

(assert (=> b!6255913 m!7078802))

(assert (=> b!6255913 m!7078802))

(declare-fun m!7078864 () Bool)

(assert (=> b!6255913 m!7078864))

(assert (=> b!6255913 m!7078806))

(assert (=> b!6255913 m!7078864))

(assert (=> b!6255913 m!7078806))

(declare-fun m!7078866 () Bool)

(assert (=> b!6255913 m!7078866))

(assert (=> b!6255559 d!1962520))

(declare-fun d!1962522 () Bool)

(declare-fun c!1132488 () Bool)

(assert (=> d!1962522 (= c!1132488 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805689 () Bool)

(assert (=> d!1962522 (= (matchZipper!2193 ((_ map or) lt!2349544 lt!2349547) (t!378394 s!2326)) e!3805689)))

(declare-fun b!6255914 () Bool)

(assert (=> b!6255914 (= e!3805689 (nullableZipper!1951 ((_ map or) lt!2349544 lt!2349547)))))

(declare-fun b!6255915 () Bool)

(assert (=> b!6255915 (= e!3805689 (matchZipper!2193 (derivationStepZipper!2147 ((_ map or) lt!2349544 lt!2349547) (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962522 c!1132488) b!6255914))

(assert (= (and d!1962522 (not c!1132488)) b!6255915))

(assert (=> d!1962522 m!7078798))

(declare-fun m!7078868 () Bool)

(assert (=> b!6255914 m!7078868))

(assert (=> b!6255915 m!7078802))

(assert (=> b!6255915 m!7078802))

(declare-fun m!7078870 () Bool)

(assert (=> b!6255915 m!7078870))

(assert (=> b!6255915 m!7078806))

(assert (=> b!6255915 m!7078870))

(assert (=> b!6255915 m!7078806))

(declare-fun m!7078874 () Bool)

(assert (=> b!6255915 m!7078874))

(assert (=> b!6255559 d!1962522))

(declare-fun d!1962524 () Bool)

(declare-fun choose!46425 ((InoxSet Context!11130) Int) (InoxSet Context!11130))

(assert (=> d!1962524 (= (flatMap!1686 lt!2349541 lambda!342315) (choose!46425 lt!2349541 lambda!342315))))

(declare-fun bs!1557896 () Bool)

(assert (= bs!1557896 d!1962524))

(declare-fun m!7078882 () Bool)

(assert (=> bs!1557896 m!7078882))

(assert (=> b!6255540 d!1962524))

(declare-fun bm!527909 () Bool)

(declare-fun call!527914 () (InoxSet Context!11130))

(assert (=> bm!527909 (= call!527914 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 lt!2349551)) (Context!11131 (t!378392 (exprs!6065 lt!2349551))) (h!71168 s!2326)))))

(declare-fun d!1962530 () Bool)

(declare-fun c!1132513 () Bool)

(declare-fun e!3805733 () Bool)

(assert (=> d!1962530 (= c!1132513 e!3805733)))

(declare-fun res!2581932 () Bool)

(assert (=> d!1962530 (=> (not res!2581932) (not e!3805733))))

(assert (=> d!1962530 (= res!2581932 ((_ is Cons!64718) (exprs!6065 lt!2349551)))))

(declare-fun e!3805732 () (InoxSet Context!11130))

(assert (=> d!1962530 (= (derivationStepZipperUp!1355 lt!2349551 (h!71168 s!2326)) e!3805732)))

(declare-fun b!6255981 () Bool)

(assert (=> b!6255981 (= e!3805733 (nullable!6174 (h!71166 (exprs!6065 lt!2349551))))))

(declare-fun b!6255982 () Bool)

(assert (=> b!6255982 (= e!3805732 ((_ map or) call!527914 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 lt!2349551))) (h!71168 s!2326))))))

(declare-fun b!6255983 () Bool)

(declare-fun e!3805734 () (InoxSet Context!11130))

(assert (=> b!6255983 (= e!3805732 e!3805734)))

(declare-fun c!1132512 () Bool)

(assert (=> b!6255983 (= c!1132512 ((_ is Cons!64718) (exprs!6065 lt!2349551)))))

(declare-fun b!6255984 () Bool)

(assert (=> b!6255984 (= e!3805734 call!527914)))

(declare-fun b!6255985 () Bool)

(assert (=> b!6255985 (= e!3805734 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1962530 res!2581932) b!6255981))

(assert (= (and d!1962530 c!1132513) b!6255982))

(assert (= (and d!1962530 (not c!1132513)) b!6255983))

(assert (= (and b!6255983 c!1132512) b!6255984))

(assert (= (and b!6255983 (not c!1132512)) b!6255985))

(assert (= (or b!6255982 b!6255984) bm!527909))

(declare-fun m!7078930 () Bool)

(assert (=> bm!527909 m!7078930))

(declare-fun m!7078932 () Bool)

(assert (=> b!6255981 m!7078932))

(declare-fun m!7078934 () Bool)

(assert (=> b!6255982 m!7078934))

(assert (=> b!6255540 d!1962530))

(declare-fun bs!1557903 () Bool)

(declare-fun d!1962540 () Bool)

(assert (= bs!1557903 (and d!1962540 b!6255545)))

(declare-fun lambda!342367 () Int)

(assert (=> bs!1557903 (= lambda!342367 lambda!342315)))

(assert (=> d!1962540 true))

(assert (=> d!1962540 (= (derivationStepZipper!2147 lt!2349541 (h!71168 s!2326)) (flatMap!1686 lt!2349541 lambda!342367))))

(declare-fun bs!1557904 () Bool)

(assert (= bs!1557904 d!1962540))

(declare-fun m!7078940 () Bool)

(assert (=> bs!1557904 m!7078940))

(assert (=> b!6255540 d!1962540))

(declare-fun bm!527913 () Bool)

(declare-fun call!527918 () (InoxSet Context!11130))

(assert (=> bm!527913 (= call!527918 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 lt!2349538)) (Context!11131 (t!378392 (exprs!6065 lt!2349538))) (h!71168 s!2326)))))

(declare-fun d!1962542 () Bool)

(declare-fun c!1132519 () Bool)

(declare-fun e!3805766 () Bool)

(assert (=> d!1962542 (= c!1132519 e!3805766)))

(declare-fun res!2581938 () Bool)

(assert (=> d!1962542 (=> (not res!2581938) (not e!3805766))))

(assert (=> d!1962542 (= res!2581938 ((_ is Cons!64718) (exprs!6065 lt!2349538)))))

(declare-fun e!3805765 () (InoxSet Context!11130))

(assert (=> d!1962542 (= (derivationStepZipperUp!1355 lt!2349538 (h!71168 s!2326)) e!3805765)))

(declare-fun b!6256051 () Bool)

(assert (=> b!6256051 (= e!3805766 (nullable!6174 (h!71166 (exprs!6065 lt!2349538))))))

(declare-fun b!6256052 () Bool)

(assert (=> b!6256052 (= e!3805765 ((_ map or) call!527918 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 lt!2349538))) (h!71168 s!2326))))))

(declare-fun b!6256053 () Bool)

(declare-fun e!3805767 () (InoxSet Context!11130))

(assert (=> b!6256053 (= e!3805765 e!3805767)))

(declare-fun c!1132518 () Bool)

(assert (=> b!6256053 (= c!1132518 ((_ is Cons!64718) (exprs!6065 lt!2349538)))))

(declare-fun b!6256054 () Bool)

(assert (=> b!6256054 (= e!3805767 call!527918)))

(declare-fun b!6256055 () Bool)

(assert (=> b!6256055 (= e!3805767 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1962542 res!2581938) b!6256051))

(assert (= (and d!1962542 c!1132519) b!6256052))

(assert (= (and d!1962542 (not c!1132519)) b!6256053))

(assert (= (and b!6256053 c!1132518) b!6256054))

(assert (= (and b!6256053 (not c!1132518)) b!6256055))

(assert (= (or b!6256052 b!6256054) bm!527913))

(declare-fun m!7078942 () Bool)

(assert (=> bm!527913 m!7078942))

(declare-fun m!7078944 () Bool)

(assert (=> b!6256051 m!7078944))

(declare-fun m!7078946 () Bool)

(assert (=> b!6256052 m!7078946))

(assert (=> b!6255540 d!1962542))

(declare-fun d!1962550 () Bool)

(declare-fun dynLambda!25566 (Int Context!11130) (InoxSet Context!11130))

(assert (=> d!1962550 (= (flatMap!1686 lt!2349541 lambda!342315) (dynLambda!25566 lambda!342315 lt!2349538))))

(declare-fun lt!2349641 () Unit!158055)

(declare-fun choose!46426 ((InoxSet Context!11130) Context!11130 Int) Unit!158055)

(assert (=> d!1962550 (= lt!2349641 (choose!46426 lt!2349541 lt!2349538 lambda!342315))))

(assert (=> d!1962550 (= lt!2349541 (store ((as const (Array Context!11130 Bool)) false) lt!2349538 true))))

(assert (=> d!1962550 (= (lemmaFlatMapOnSingletonSet!1212 lt!2349541 lt!2349538 lambda!342315) lt!2349641)))

(declare-fun b_lambda!238057 () Bool)

(assert (=> (not b_lambda!238057) (not d!1962550)))

(declare-fun bs!1557908 () Bool)

(assert (= bs!1557908 d!1962550))

(assert (=> bs!1557908 m!7078522))

(declare-fun m!7078948 () Bool)

(assert (=> bs!1557908 m!7078948))

(declare-fun m!7078950 () Bool)

(assert (=> bs!1557908 m!7078950))

(assert (=> bs!1557908 m!7078518))

(assert (=> b!6255540 d!1962550))

(declare-fun d!1962552 () Bool)

(declare-fun c!1132520 () Bool)

(assert (=> d!1962552 (= c!1132520 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805768 () Bool)

(assert (=> d!1962552 (= (matchZipper!2193 lt!2349560 (t!378394 s!2326)) e!3805768)))

(declare-fun b!6256056 () Bool)

(assert (=> b!6256056 (= e!3805768 (nullableZipper!1951 lt!2349560))))

(declare-fun b!6256057 () Bool)

(assert (=> b!6256057 (= e!3805768 (matchZipper!2193 (derivationStepZipper!2147 lt!2349560 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962552 c!1132520) b!6256056))

(assert (= (and d!1962552 (not c!1132520)) b!6256057))

(assert (=> d!1962552 m!7078798))

(declare-fun m!7078952 () Bool)

(assert (=> b!6256056 m!7078952))

(assert (=> b!6256057 m!7078802))

(assert (=> b!6256057 m!7078802))

(declare-fun m!7078954 () Bool)

(assert (=> b!6256057 m!7078954))

(assert (=> b!6256057 m!7078806))

(assert (=> b!6256057 m!7078954))

(assert (=> b!6256057 m!7078806))

(declare-fun m!7078956 () Bool)

(assert (=> b!6256057 m!7078956))

(assert (=> b!6255563 d!1962552))

(declare-fun d!1962554 () Bool)

(declare-fun c!1132521 () Bool)

(assert (=> d!1962554 (= c!1132521 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805769 () Bool)

(assert (=> d!1962554 (= (matchZipper!2193 lt!2349547 (t!378394 s!2326)) e!3805769)))

(declare-fun b!6256058 () Bool)

(assert (=> b!6256058 (= e!3805769 (nullableZipper!1951 lt!2349547))))

(declare-fun b!6256059 () Bool)

(assert (=> b!6256059 (= e!3805769 (matchZipper!2193 (derivationStepZipper!2147 lt!2349547 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962554 c!1132521) b!6256058))

(assert (= (and d!1962554 (not c!1132521)) b!6256059))

(assert (=> d!1962554 m!7078798))

(declare-fun m!7078958 () Bool)

(assert (=> b!6256058 m!7078958))

(assert (=> b!6256059 m!7078802))

(assert (=> b!6256059 m!7078802))

(declare-fun m!7078960 () Bool)

(assert (=> b!6256059 m!7078960))

(assert (=> b!6256059 m!7078806))

(assert (=> b!6256059 m!7078960))

(assert (=> b!6256059 m!7078806))

(declare-fun m!7078962 () Bool)

(assert (=> b!6256059 m!7078962))

(assert (=> b!6255543 d!1962554))

(assert (=> b!6255562 d!1962520))

(declare-fun d!1962556 () Bool)

(declare-fun c!1132522 () Bool)

(assert (=> d!1962556 (= c!1132522 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805770 () Bool)

(assert (=> d!1962556 (= (matchZipper!2193 lt!2349540 (t!378394 s!2326)) e!3805770)))

(declare-fun b!6256060 () Bool)

(assert (=> b!6256060 (= e!3805770 (nullableZipper!1951 lt!2349540))))

(declare-fun b!6256061 () Bool)

(assert (=> b!6256061 (= e!3805770 (matchZipper!2193 (derivationStepZipper!2147 lt!2349540 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962556 c!1132522) b!6256060))

(assert (= (and d!1962556 (not c!1132522)) b!6256061))

(assert (=> d!1962556 m!7078798))

(declare-fun m!7078964 () Bool)

(assert (=> b!6256060 m!7078964))

(assert (=> b!6256061 m!7078802))

(assert (=> b!6256061 m!7078802))

(declare-fun m!7078966 () Bool)

(assert (=> b!6256061 m!7078966))

(assert (=> b!6256061 m!7078806))

(assert (=> b!6256061 m!7078966))

(assert (=> b!6256061 m!7078806))

(declare-fun m!7078968 () Bool)

(assert (=> b!6256061 m!7078968))

(assert (=> b!6255562 d!1962556))

(declare-fun d!1962558 () Bool)

(declare-fun c!1132523 () Bool)

(assert (=> d!1962558 (= c!1132523 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805771 () Bool)

(assert (=> d!1962558 (= (matchZipper!2193 lt!2349534 (t!378394 s!2326)) e!3805771)))

(declare-fun b!6256062 () Bool)

(assert (=> b!6256062 (= e!3805771 (nullableZipper!1951 lt!2349534))))

(declare-fun b!6256063 () Bool)

(assert (=> b!6256063 (= e!3805771 (matchZipper!2193 (derivationStepZipper!2147 lt!2349534 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962558 c!1132523) b!6256062))

(assert (= (and d!1962558 (not c!1132523)) b!6256063))

(assert (=> d!1962558 m!7078798))

(declare-fun m!7078970 () Bool)

(assert (=> b!6256062 m!7078970))

(assert (=> b!6256063 m!7078802))

(assert (=> b!6256063 m!7078802))

(declare-fun m!7078972 () Bool)

(assert (=> b!6256063 m!7078972))

(assert (=> b!6256063 m!7078806))

(assert (=> b!6256063 m!7078972))

(assert (=> b!6256063 m!7078806))

(declare-fun m!7078974 () Bool)

(assert (=> b!6256063 m!7078974))

(assert (=> b!6255562 d!1962558))

(declare-fun d!1962560 () Bool)

(declare-fun e!3805772 () Bool)

(assert (=> d!1962560 (= (matchZipper!2193 ((_ map or) lt!2349534 lt!2349532) (t!378394 s!2326)) e!3805772)))

(declare-fun res!2581939 () Bool)

(assert (=> d!1962560 (=> res!2581939 e!3805772)))

(assert (=> d!1962560 (= res!2581939 (matchZipper!2193 lt!2349534 (t!378394 s!2326)))))

(declare-fun lt!2349642 () Unit!158055)

(assert (=> d!1962560 (= lt!2349642 (choose!46424 lt!2349534 lt!2349532 (t!378394 s!2326)))))

(assert (=> d!1962560 (= (lemmaZipperConcatMatchesSameAsBothZippers!1012 lt!2349534 lt!2349532 (t!378394 s!2326)) lt!2349642)))

(declare-fun b!6256064 () Bool)

(assert (=> b!6256064 (= e!3805772 (matchZipper!2193 lt!2349532 (t!378394 s!2326)))))

(assert (= (and d!1962560 (not res!2581939)) b!6256064))

(declare-fun m!7078976 () Bool)

(assert (=> d!1962560 m!7078976))

(assert (=> d!1962560 m!7078430))

(declare-fun m!7078978 () Bool)

(assert (=> d!1962560 m!7078978))

(assert (=> b!6256064 m!7078418))

(assert (=> b!6255562 d!1962560))

(assert (=> b!6255546 d!1962494))

(declare-fun d!1962562 () Bool)

(assert (=> d!1962562 (= (flatMap!1686 z!1189 lambda!342315) (dynLambda!25566 lambda!342315 (h!71167 zl!343)))))

(declare-fun lt!2349643 () Unit!158055)

(assert (=> d!1962562 (= lt!2349643 (choose!46426 z!1189 (h!71167 zl!343) lambda!342315))))

(assert (=> d!1962562 (= z!1189 (store ((as const (Array Context!11130 Bool)) false) (h!71167 zl!343) true))))

(assert (=> d!1962562 (= (lemmaFlatMapOnSingletonSet!1212 z!1189 (h!71167 zl!343) lambda!342315) lt!2349643)))

(declare-fun b_lambda!238059 () Bool)

(assert (=> (not b_lambda!238059) (not d!1962562)))

(declare-fun bs!1557909 () Bool)

(assert (= bs!1557909 d!1962562))

(assert (=> bs!1557909 m!7078474))

(declare-fun m!7078980 () Bool)

(assert (=> bs!1557909 m!7078980))

(declare-fun m!7078982 () Bool)

(assert (=> bs!1557909 m!7078982))

(declare-fun m!7078984 () Bool)

(assert (=> bs!1557909 m!7078984))

(assert (=> b!6255545 d!1962562))

(declare-fun bm!527914 () Bool)

(declare-fun call!527919 () (InoxSet Context!11130))

(assert (=> bm!527914 (= call!527919 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (h!71168 s!2326)))))

(declare-fun d!1962564 () Bool)

(declare-fun c!1132525 () Bool)

(declare-fun e!3805774 () Bool)

(assert (=> d!1962564 (= c!1132525 e!3805774)))

(declare-fun res!2581940 () Bool)

(assert (=> d!1962564 (=> (not res!2581940) (not e!3805774))))

(assert (=> d!1962564 (= res!2581940 ((_ is Cons!64718) (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))

(declare-fun e!3805773 () (InoxSet Context!11130))

(assert (=> d!1962564 (= (derivationStepZipperUp!1355 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))) (h!71168 s!2326)) e!3805773)))

(declare-fun b!6256065 () Bool)

(assert (=> b!6256065 (= e!3805774 (nullable!6174 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))

(declare-fun b!6256066 () Bool)

(assert (=> b!6256066 (= e!3805773 ((_ map or) call!527919 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (h!71168 s!2326))))))

(declare-fun b!6256067 () Bool)

(declare-fun e!3805775 () (InoxSet Context!11130))

(assert (=> b!6256067 (= e!3805773 e!3805775)))

(declare-fun c!1132524 () Bool)

(assert (=> b!6256067 (= c!1132524 ((_ is Cons!64718) (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))

(declare-fun b!6256068 () Bool)

(assert (=> b!6256068 (= e!3805775 call!527919)))

(declare-fun b!6256069 () Bool)

(assert (=> b!6256069 (= e!3805775 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1962564 res!2581940) b!6256065))

(assert (= (and d!1962564 c!1132525) b!6256066))

(assert (= (and d!1962564 (not c!1132525)) b!6256067))

(assert (= (and b!6256067 c!1132524) b!6256068))

(assert (= (and b!6256067 (not c!1132524)) b!6256069))

(assert (= (or b!6256066 b!6256068) bm!527914))

(declare-fun m!7078986 () Bool)

(assert (=> bm!527914 m!7078986))

(declare-fun m!7078988 () Bool)

(assert (=> b!6256065 m!7078988))

(declare-fun m!7078990 () Bool)

(assert (=> b!6256066 m!7078990))

(assert (=> b!6255545 d!1962564))

(declare-fun bm!527915 () Bool)

(declare-fun call!527920 () (InoxSet Context!11130))

(assert (=> bm!527915 (= call!527920 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (h!71167 zl!343))) (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))) (h!71168 s!2326)))))

(declare-fun d!1962566 () Bool)

(declare-fun c!1132527 () Bool)

(declare-fun e!3805777 () Bool)

(assert (=> d!1962566 (= c!1132527 e!3805777)))

(declare-fun res!2581941 () Bool)

(assert (=> d!1962566 (=> (not res!2581941) (not e!3805777))))

(assert (=> d!1962566 (= res!2581941 ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343))))))

(declare-fun e!3805776 () (InoxSet Context!11130))

(assert (=> d!1962566 (= (derivationStepZipperUp!1355 (h!71167 zl!343) (h!71168 s!2326)) e!3805776)))

(declare-fun b!6256070 () Bool)

(assert (=> b!6256070 (= e!3805777 (nullable!6174 (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6256071 () Bool)

(assert (=> b!6256071 (= e!3805776 ((_ map or) call!527920 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))) (h!71168 s!2326))))))

(declare-fun b!6256072 () Bool)

(declare-fun e!3805778 () (InoxSet Context!11130))

(assert (=> b!6256072 (= e!3805776 e!3805778)))

(declare-fun c!1132526 () Bool)

(assert (=> b!6256072 (= c!1132526 ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343))))))

(declare-fun b!6256073 () Bool)

(assert (=> b!6256073 (= e!3805778 call!527920)))

(declare-fun b!6256074 () Bool)

(assert (=> b!6256074 (= e!3805778 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1962566 res!2581941) b!6256070))

(assert (= (and d!1962566 c!1132527) b!6256071))

(assert (= (and d!1962566 (not c!1132527)) b!6256072))

(assert (= (and b!6256072 c!1132526) b!6256073))

(assert (= (and b!6256072 (not c!1132526)) b!6256074))

(assert (= (or b!6256071 b!6256073) bm!527915))

(declare-fun m!7078992 () Bool)

(assert (=> bm!527915 m!7078992))

(assert (=> b!6256070 m!7078470))

(declare-fun m!7078994 () Bool)

(assert (=> b!6256071 m!7078994))

(assert (=> b!6255545 d!1962566))

(declare-fun b!6256097 () Bool)

(declare-fun e!3805794 () (InoxSet Context!11130))

(declare-fun call!527936 () (InoxSet Context!11130))

(declare-fun call!527935 () (InoxSet Context!11130))

(assert (=> b!6256097 (= e!3805794 ((_ map or) call!527936 call!527935))))

(declare-fun b!6256098 () Bool)

(declare-fun e!3805795 () (InoxSet Context!11130))

(declare-fun e!3805796 () (InoxSet Context!11130))

(assert (=> b!6256098 (= e!3805795 e!3805796)))

(declare-fun c!1132541 () Bool)

(assert (=> b!6256098 (= c!1132541 ((_ is Union!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6256099 () Bool)

(declare-fun e!3805791 () (InoxSet Context!11130))

(assert (=> b!6256099 (= e!3805791 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!527928 () Bool)

(declare-fun call!527934 () (InoxSet Context!11130))

(assert (=> bm!527928 (= call!527935 call!527934)))

(declare-fun bm!527929 () Bool)

(declare-fun call!527938 () (InoxSet Context!11130))

(assert (=> bm!527929 (= call!527938 call!527935)))

(declare-fun b!6256100 () Bool)

(assert (=> b!6256100 (= e!3805796 ((_ map or) call!527934 call!527936))))

(declare-fun d!1962568 () Bool)

(declare-fun c!1132542 () Bool)

(assert (=> d!1962568 (= c!1132542 (and ((_ is ElementMatch!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))) (= (c!1132364 (h!71166 (exprs!6065 (h!71167 zl!343)))) (h!71168 s!2326))))))

(assert (=> d!1962568 (= (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (h!71167 zl!343))) lt!2349549 (h!71168 s!2326)) e!3805795)))

(declare-fun bm!527930 () Bool)

(declare-fun call!527937 () List!64842)

(declare-fun call!527933 () List!64842)

(assert (=> bm!527930 (= call!527937 call!527933)))

(declare-fun b!6256101 () Bool)

(declare-fun e!3805792 () (InoxSet Context!11130))

(assert (=> b!6256101 (= e!3805794 e!3805792)))

(declare-fun c!1132539 () Bool)

(assert (=> b!6256101 (= c!1132539 ((_ is Concat!25026) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6256102 () Bool)

(declare-fun e!3805793 () Bool)

(assert (=> b!6256102 (= e!3805793 (nullable!6174 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun b!6256103 () Bool)

(assert (=> b!6256103 (= e!3805795 (store ((as const (Array Context!11130 Bool)) false) lt!2349549 true))))

(declare-fun c!1132540 () Bool)

(declare-fun bm!527931 () Bool)

(declare-fun $colon$colon!2046 (List!64842 Regex!16181) List!64842)

(assert (=> bm!527931 (= call!527933 ($colon$colon!2046 (exprs!6065 lt!2349549) (ite (or c!1132540 c!1132539) (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (h!71166 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun bm!527932 () Bool)

(assert (=> bm!527932 (= call!527934 (derivationStepZipperDown!1429 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343))))))) (ite (or c!1132541 c!1132540) lt!2349549 (Context!11131 call!527937)) (h!71168 s!2326)))))

(declare-fun b!6256104 () Bool)

(declare-fun c!1132538 () Bool)

(assert (=> b!6256104 (= c!1132538 ((_ is Star!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> b!6256104 (= e!3805792 e!3805791)))

(declare-fun bm!527933 () Bool)

(assert (=> bm!527933 (= call!527936 (derivationStepZipperDown!1429 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))) (ite c!1132541 lt!2349549 (Context!11131 call!527933)) (h!71168 s!2326)))))

(declare-fun b!6256105 () Bool)

(assert (=> b!6256105 (= e!3805792 call!527938)))

(declare-fun b!6256106 () Bool)

(assert (=> b!6256106 (= e!3805791 call!527938)))

(declare-fun b!6256107 () Bool)

(assert (=> b!6256107 (= c!1132540 e!3805793)))

(declare-fun res!2581944 () Bool)

(assert (=> b!6256107 (=> (not res!2581944) (not e!3805793))))

(assert (=> b!6256107 (= res!2581944 ((_ is Concat!25026) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> b!6256107 (= e!3805796 e!3805794)))

(assert (= (and d!1962568 c!1132542) b!6256103))

(assert (= (and d!1962568 (not c!1132542)) b!6256098))

(assert (= (and b!6256098 c!1132541) b!6256100))

(assert (= (and b!6256098 (not c!1132541)) b!6256107))

(assert (= (and b!6256107 res!2581944) b!6256102))

(assert (= (and b!6256107 c!1132540) b!6256097))

(assert (= (and b!6256107 (not c!1132540)) b!6256101))

(assert (= (and b!6256101 c!1132539) b!6256105))

(assert (= (and b!6256101 (not c!1132539)) b!6256104))

(assert (= (and b!6256104 c!1132538) b!6256106))

(assert (= (and b!6256104 (not c!1132538)) b!6256099))

(assert (= (or b!6256105 b!6256106) bm!527930))

(assert (= (or b!6256105 b!6256106) bm!527929))

(assert (= (or b!6256097 bm!527930) bm!527931))

(assert (= (or b!6256097 bm!527929) bm!527928))

(assert (= (or b!6256100 b!6256097) bm!527933))

(assert (= (or b!6256100 bm!527928) bm!527932))

(declare-fun m!7078996 () Bool)

(assert (=> bm!527931 m!7078996))

(declare-fun m!7078998 () Bool)

(assert (=> b!6256103 m!7078998))

(declare-fun m!7079000 () Bool)

(assert (=> bm!527933 m!7079000))

(declare-fun m!7079002 () Bool)

(assert (=> bm!527932 m!7079002))

(declare-fun m!7079004 () Bool)

(assert (=> b!6256102 m!7079004))

(assert (=> b!6255545 d!1962568))

(declare-fun d!1962570 () Bool)

(declare-fun nullableFct!2126 (Regex!16181) Bool)

(assert (=> d!1962570 (= (nullable!6174 (h!71166 (exprs!6065 (h!71167 zl!343)))) (nullableFct!2126 (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun bs!1557910 () Bool)

(assert (= bs!1557910 d!1962570))

(declare-fun m!7079006 () Bool)

(assert (=> bs!1557910 m!7079006))

(assert (=> b!6255545 d!1962570))

(declare-fun d!1962572 () Bool)

(assert (=> d!1962572 (= (flatMap!1686 z!1189 lambda!342315) (choose!46425 z!1189 lambda!342315))))

(declare-fun bs!1557911 () Bool)

(assert (= bs!1557911 d!1962572))

(declare-fun m!7079008 () Bool)

(assert (=> bs!1557911 m!7079008))

(assert (=> b!6255545 d!1962572))

(declare-fun bm!527934 () Bool)

(declare-fun call!527939 () (InoxSet Context!11130))

(assert (=> bm!527934 (= call!527939 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 lt!2349549)) (Context!11131 (t!378392 (exprs!6065 lt!2349549))) (h!71168 s!2326)))))

(declare-fun d!1962574 () Bool)

(declare-fun c!1132544 () Bool)

(declare-fun e!3805798 () Bool)

(assert (=> d!1962574 (= c!1132544 e!3805798)))

(declare-fun res!2581945 () Bool)

(assert (=> d!1962574 (=> (not res!2581945) (not e!3805798))))

(assert (=> d!1962574 (= res!2581945 ((_ is Cons!64718) (exprs!6065 lt!2349549)))))

(declare-fun e!3805797 () (InoxSet Context!11130))

(assert (=> d!1962574 (= (derivationStepZipperUp!1355 lt!2349549 (h!71168 s!2326)) e!3805797)))

(declare-fun b!6256108 () Bool)

(assert (=> b!6256108 (= e!3805798 (nullable!6174 (h!71166 (exprs!6065 lt!2349549))))))

(declare-fun b!6256109 () Bool)

(assert (=> b!6256109 (= e!3805797 ((_ map or) call!527939 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 lt!2349549))) (h!71168 s!2326))))))

(declare-fun b!6256110 () Bool)

(declare-fun e!3805799 () (InoxSet Context!11130))

(assert (=> b!6256110 (= e!3805797 e!3805799)))

(declare-fun c!1132543 () Bool)

(assert (=> b!6256110 (= c!1132543 ((_ is Cons!64718) (exprs!6065 lt!2349549)))))

(declare-fun b!6256111 () Bool)

(assert (=> b!6256111 (= e!3805799 call!527939)))

(declare-fun b!6256112 () Bool)

(assert (=> b!6256112 (= e!3805799 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1962574 res!2581945) b!6256108))

(assert (= (and d!1962574 c!1132544) b!6256109))

(assert (= (and d!1962574 (not c!1132544)) b!6256110))

(assert (= (and b!6256110 c!1132543) b!6256111))

(assert (= (and b!6256110 (not c!1132543)) b!6256112))

(assert (= (or b!6256109 b!6256111) bm!527934))

(declare-fun m!7079010 () Bool)

(assert (=> bm!527934 m!7079010))

(declare-fun m!7079012 () Bool)

(assert (=> b!6256108 m!7079012))

(declare-fun m!7079014 () Bool)

(assert (=> b!6256109 m!7079014))

(assert (=> b!6255545 d!1962574))

(declare-fun bs!1557912 () Bool)

(declare-fun d!1962576 () Bool)

(assert (= bs!1557912 (and d!1962576 d!1962486)))

(declare-fun lambda!342368 () Int)

(assert (=> bs!1557912 (= lambda!342368 lambda!342355)))

(assert (=> d!1962576 (= (inv!83699 setElem!42536) (forall!15300 (exprs!6065 setElem!42536) lambda!342368))))

(declare-fun bs!1557913 () Bool)

(assert (= bs!1557913 d!1962576))

(declare-fun m!7079016 () Bool)

(assert (=> bs!1557913 m!7079016))

(assert (=> setNonEmpty!42536 d!1962576))

(declare-fun bs!1557914 () Bool)

(declare-fun d!1962578 () Bool)

(assert (= bs!1557914 (and d!1962578 d!1962486)))

(declare-fun lambda!342371 () Int)

(assert (=> bs!1557914 (= lambda!342371 lambda!342355)))

(declare-fun bs!1557915 () Bool)

(assert (= bs!1557915 (and d!1962578 d!1962576)))

(assert (=> bs!1557915 (= lambda!342371 lambda!342368)))

(declare-fun b!6256133 () Bool)

(declare-fun e!3805817 () Bool)

(declare-fun e!3805814 () Bool)

(assert (=> b!6256133 (= e!3805817 e!3805814)))

(declare-fun c!1132555 () Bool)

(assert (=> b!6256133 (= c!1132555 (isEmpty!36742 (unfocusZipperList!1602 zl!343)))))

(declare-fun b!6256134 () Bool)

(declare-fun e!3805812 () Bool)

(declare-fun lt!2349646 () Regex!16181)

(declare-fun head!12863 (List!64842) Regex!16181)

(assert (=> b!6256134 (= e!3805812 (= lt!2349646 (head!12863 (unfocusZipperList!1602 zl!343))))))

(assert (=> d!1962578 e!3805817))

(declare-fun res!2581950 () Bool)

(assert (=> d!1962578 (=> (not res!2581950) (not e!3805817))))

(assert (=> d!1962578 (= res!2581950 (validRegex!7917 lt!2349646))))

(declare-fun e!3805813 () Regex!16181)

(assert (=> d!1962578 (= lt!2349646 e!3805813)))

(declare-fun c!1132556 () Bool)

(declare-fun e!3805816 () Bool)

(assert (=> d!1962578 (= c!1132556 e!3805816)))

(declare-fun res!2581951 () Bool)

(assert (=> d!1962578 (=> (not res!2581951) (not e!3805816))))

(assert (=> d!1962578 (= res!2581951 ((_ is Cons!64718) (unfocusZipperList!1602 zl!343)))))

(assert (=> d!1962578 (forall!15300 (unfocusZipperList!1602 zl!343) lambda!342371)))

(assert (=> d!1962578 (= (generalisedUnion!2025 (unfocusZipperList!1602 zl!343)) lt!2349646)))

(declare-fun b!6256135 () Bool)

(assert (=> b!6256135 (= e!3805814 e!3805812)))

(declare-fun c!1132553 () Bool)

(declare-fun tail!11948 (List!64842) List!64842)

(assert (=> b!6256135 (= c!1132553 (isEmpty!36742 (tail!11948 (unfocusZipperList!1602 zl!343))))))

(declare-fun b!6256136 () Bool)

(declare-fun isEmptyLang!1596 (Regex!16181) Bool)

(assert (=> b!6256136 (= e!3805814 (isEmptyLang!1596 lt!2349646))))

(declare-fun b!6256137 () Bool)

(assert (=> b!6256137 (= e!3805813 (h!71166 (unfocusZipperList!1602 zl!343)))))

(declare-fun b!6256138 () Bool)

(declare-fun e!3805815 () Regex!16181)

(assert (=> b!6256138 (= e!3805815 EmptyLang!16181)))

(declare-fun b!6256139 () Bool)

(declare-fun isUnion!1026 (Regex!16181) Bool)

(assert (=> b!6256139 (= e!3805812 (isUnion!1026 lt!2349646))))

(declare-fun b!6256140 () Bool)

(assert (=> b!6256140 (= e!3805815 (Union!16181 (h!71166 (unfocusZipperList!1602 zl!343)) (generalisedUnion!2025 (t!378392 (unfocusZipperList!1602 zl!343)))))))

(declare-fun b!6256141 () Bool)

(assert (=> b!6256141 (= e!3805813 e!3805815)))

(declare-fun c!1132554 () Bool)

(assert (=> b!6256141 (= c!1132554 ((_ is Cons!64718) (unfocusZipperList!1602 zl!343)))))

(declare-fun b!6256142 () Bool)

(assert (=> b!6256142 (= e!3805816 (isEmpty!36742 (t!378392 (unfocusZipperList!1602 zl!343))))))

(assert (= (and d!1962578 res!2581951) b!6256142))

(assert (= (and d!1962578 c!1132556) b!6256137))

(assert (= (and d!1962578 (not c!1132556)) b!6256141))

(assert (= (and b!6256141 c!1132554) b!6256140))

(assert (= (and b!6256141 (not c!1132554)) b!6256138))

(assert (= (and d!1962578 res!2581950) b!6256133))

(assert (= (and b!6256133 c!1132555) b!6256136))

(assert (= (and b!6256133 (not c!1132555)) b!6256135))

(assert (= (and b!6256135 c!1132553) b!6256134))

(assert (= (and b!6256135 (not c!1132553)) b!6256139))

(declare-fun m!7079018 () Bool)

(assert (=> b!6256136 m!7079018))

(declare-fun m!7079020 () Bool)

(assert (=> b!6256140 m!7079020))

(assert (=> b!6256133 m!7078434))

(declare-fun m!7079022 () Bool)

(assert (=> b!6256133 m!7079022))

(assert (=> b!6256135 m!7078434))

(declare-fun m!7079024 () Bool)

(assert (=> b!6256135 m!7079024))

(assert (=> b!6256135 m!7079024))

(declare-fun m!7079026 () Bool)

(assert (=> b!6256135 m!7079026))

(declare-fun m!7079028 () Bool)

(assert (=> b!6256142 m!7079028))

(declare-fun m!7079030 () Bool)

(assert (=> b!6256139 m!7079030))

(declare-fun m!7079032 () Bool)

(assert (=> d!1962578 m!7079032))

(assert (=> d!1962578 m!7078434))

(declare-fun m!7079034 () Bool)

(assert (=> d!1962578 m!7079034))

(assert (=> b!6256134 m!7078434))

(declare-fun m!7079036 () Bool)

(assert (=> b!6256134 m!7079036))

(assert (=> b!6255549 d!1962578))

(declare-fun bs!1557916 () Bool)

(declare-fun d!1962580 () Bool)

(assert (= bs!1557916 (and d!1962580 d!1962486)))

(declare-fun lambda!342374 () Int)

(assert (=> bs!1557916 (= lambda!342374 lambda!342355)))

(declare-fun bs!1557917 () Bool)

(assert (= bs!1557917 (and d!1962580 d!1962576)))

(assert (=> bs!1557917 (= lambda!342374 lambda!342368)))

(declare-fun bs!1557918 () Bool)

(assert (= bs!1557918 (and d!1962580 d!1962578)))

(assert (=> bs!1557918 (= lambda!342374 lambda!342371)))

(declare-fun lt!2349649 () List!64842)

(assert (=> d!1962580 (forall!15300 lt!2349649 lambda!342374)))

(declare-fun e!3805820 () List!64842)

(assert (=> d!1962580 (= lt!2349649 e!3805820)))

(declare-fun c!1132559 () Bool)

(assert (=> d!1962580 (= c!1132559 ((_ is Cons!64719) zl!343))))

(assert (=> d!1962580 (= (unfocusZipperList!1602 zl!343) lt!2349649)))

(declare-fun b!6256147 () Bool)

(assert (=> b!6256147 (= e!3805820 (Cons!64718 (generalisedConcat!1778 (exprs!6065 (h!71167 zl!343))) (unfocusZipperList!1602 (t!378393 zl!343))))))

(declare-fun b!6256148 () Bool)

(assert (=> b!6256148 (= e!3805820 Nil!64718)))

(assert (= (and d!1962580 c!1132559) b!6256147))

(assert (= (and d!1962580 (not c!1132559)) b!6256148))

(declare-fun m!7079038 () Bool)

(assert (=> d!1962580 m!7079038))

(assert (=> b!6256147 m!7078420))

(declare-fun m!7079040 () Bool)

(assert (=> b!6256147 m!7079040))

(assert (=> b!6255549 d!1962580))

(declare-fun b!6256167 () Bool)

(declare-fun e!3805835 () Option!16072)

(declare-fun e!3805831 () Option!16072)

(assert (=> b!6256167 (= e!3805835 e!3805831)))

(declare-fun c!1132564 () Bool)

(assert (=> b!6256167 (= c!1132564 ((_ is Nil!64720) s!2326))))

(declare-fun b!6256168 () Bool)

(assert (=> b!6256168 (= e!3805831 None!16071)))

(declare-fun b!6256169 () Bool)

(declare-fun e!3805832 () Bool)

(assert (=> b!6256169 (= e!3805832 (matchR!8364 (regTwo!32874 r!7292) s!2326))))

(declare-fun b!6256170 () Bool)

(declare-fun lt!2349656 () Unit!158055)

(declare-fun lt!2349658 () Unit!158055)

(assert (=> b!6256170 (= lt!2349656 lt!2349658)))

(declare-fun ++!14255 (List!64844 List!64844) List!64844)

(assert (=> b!6256170 (= (++!14255 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (t!378394 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2350 (List!64844 C!32632 List!64844 List!64844) Unit!158055)

(assert (=> b!6256170 (= lt!2349658 (lemmaMoveElementToOtherListKeepsConcatEq!2350 Nil!64720 (h!71168 s!2326) (t!378394 s!2326) s!2326))))

(assert (=> b!6256170 (= e!3805831 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (t!378394 s!2326) s!2326))))

(declare-fun b!6256171 () Bool)

(declare-fun res!2581964 () Bool)

(declare-fun e!3805833 () Bool)

(assert (=> b!6256171 (=> (not res!2581964) (not e!3805833))))

(declare-fun lt!2349657 () Option!16072)

(declare-fun get!22361 (Option!16072) tuple2!66320)

(assert (=> b!6256171 (= res!2581964 (matchR!8364 (regOne!32874 r!7292) (_1!36463 (get!22361 lt!2349657))))))

(declare-fun b!6256172 () Bool)

(assert (=> b!6256172 (= e!3805833 (= (++!14255 (_1!36463 (get!22361 lt!2349657)) (_2!36463 (get!22361 lt!2349657))) s!2326))))

(declare-fun b!6256174 () Bool)

(declare-fun e!3805834 () Bool)

(assert (=> b!6256174 (= e!3805834 (not (isDefined!12775 lt!2349657)))))

(declare-fun b!6256175 () Bool)

(assert (=> b!6256175 (= e!3805835 (Some!16071 (tuple2!66321 Nil!64720 s!2326)))))

(declare-fun b!6256173 () Bool)

(declare-fun res!2581963 () Bool)

(assert (=> b!6256173 (=> (not res!2581963) (not e!3805833))))

(assert (=> b!6256173 (= res!2581963 (matchR!8364 (regTwo!32874 r!7292) (_2!36463 (get!22361 lt!2349657))))))

(declare-fun d!1962582 () Bool)

(assert (=> d!1962582 e!3805834))

(declare-fun res!2581965 () Bool)

(assert (=> d!1962582 (=> res!2581965 e!3805834)))

(assert (=> d!1962582 (= res!2581965 e!3805833)))

(declare-fun res!2581962 () Bool)

(assert (=> d!1962582 (=> (not res!2581962) (not e!3805833))))

(assert (=> d!1962582 (= res!2581962 (isDefined!12775 lt!2349657))))

(assert (=> d!1962582 (= lt!2349657 e!3805835)))

(declare-fun c!1132565 () Bool)

(assert (=> d!1962582 (= c!1132565 e!3805832)))

(declare-fun res!2581966 () Bool)

(assert (=> d!1962582 (=> (not res!2581966) (not e!3805832))))

(assert (=> d!1962582 (= res!2581966 (matchR!8364 (regOne!32874 r!7292) Nil!64720))))

(assert (=> d!1962582 (validRegex!7917 (regOne!32874 r!7292))))

(assert (=> d!1962582 (= (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326) lt!2349657)))

(assert (= (and d!1962582 res!2581966) b!6256169))

(assert (= (and d!1962582 c!1132565) b!6256175))

(assert (= (and d!1962582 (not c!1132565)) b!6256167))

(assert (= (and b!6256167 c!1132564) b!6256168))

(assert (= (and b!6256167 (not c!1132564)) b!6256170))

(assert (= (and d!1962582 res!2581962) b!6256171))

(assert (= (and b!6256171 res!2581964) b!6256173))

(assert (= (and b!6256173 res!2581963) b!6256172))

(assert (= (and d!1962582 (not res!2581965)) b!6256174))

(declare-fun m!7079042 () Bool)

(assert (=> b!6256169 m!7079042))

(declare-fun m!7079044 () Bool)

(assert (=> b!6256174 m!7079044))

(declare-fun m!7079046 () Bool)

(assert (=> b!6256172 m!7079046))

(declare-fun m!7079048 () Bool)

(assert (=> b!6256172 m!7079048))

(assert (=> d!1962582 m!7079044))

(declare-fun m!7079050 () Bool)

(assert (=> d!1962582 m!7079050))

(declare-fun m!7079052 () Bool)

(assert (=> d!1962582 m!7079052))

(declare-fun m!7079054 () Bool)

(assert (=> b!6256170 m!7079054))

(assert (=> b!6256170 m!7079054))

(declare-fun m!7079056 () Bool)

(assert (=> b!6256170 m!7079056))

(declare-fun m!7079058 () Bool)

(assert (=> b!6256170 m!7079058))

(assert (=> b!6256170 m!7079054))

(declare-fun m!7079060 () Bool)

(assert (=> b!6256170 m!7079060))

(assert (=> b!6256171 m!7079046))

(declare-fun m!7079062 () Bool)

(assert (=> b!6256171 m!7079062))

(assert (=> b!6256173 m!7079046))

(declare-fun m!7079064 () Bool)

(assert (=> b!6256173 m!7079064))

(assert (=> b!6255548 d!1962582))

(declare-fun d!1962584 () Bool)

(declare-fun choose!46428 (Int) Bool)

(assert (=> d!1962584 (= (Exists!3251 lambda!342314) (choose!46428 lambda!342314))))

(declare-fun bs!1557919 () Bool)

(assert (= bs!1557919 d!1962584))

(declare-fun m!7079066 () Bool)

(assert (=> bs!1557919 m!7079066))

(assert (=> b!6255548 d!1962584))

(declare-fun d!1962586 () Bool)

(assert (=> d!1962586 (= (Exists!3251 lambda!342313) (choose!46428 lambda!342313))))

(declare-fun bs!1557920 () Bool)

(assert (= bs!1557920 d!1962586))

(declare-fun m!7079068 () Bool)

(assert (=> bs!1557920 m!7079068))

(assert (=> b!6255548 d!1962586))

(declare-fun bs!1557921 () Bool)

(declare-fun d!1962588 () Bool)

(assert (= bs!1557921 (and d!1962588 b!6255548)))

(declare-fun lambda!342377 () Int)

(assert (=> bs!1557921 (= lambda!342377 lambda!342313)))

(assert (=> bs!1557921 (not (= lambda!342377 lambda!342314))))

(assert (=> d!1962588 true))

(assert (=> d!1962588 true))

(assert (=> d!1962588 true))

(assert (=> d!1962588 (= (isDefined!12775 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326)) (Exists!3251 lambda!342377))))

(declare-fun lt!2349661 () Unit!158055)

(declare-fun choose!46429 (Regex!16181 Regex!16181 List!64844) Unit!158055)

(assert (=> d!1962588 (= lt!2349661 (choose!46429 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326))))

(assert (=> d!1962588 (validRegex!7917 (regOne!32874 r!7292))))

(assert (=> d!1962588 (= (lemmaFindConcatSeparationEquivalentToExists!2250 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326) lt!2349661)))

(declare-fun bs!1557922 () Bool)

(assert (= bs!1557922 d!1962588))

(assert (=> bs!1557922 m!7079052))

(assert (=> bs!1557922 m!7078492))

(assert (=> bs!1557922 m!7078494))

(declare-fun m!7079070 () Bool)

(assert (=> bs!1557922 m!7079070))

(assert (=> bs!1557922 m!7078492))

(declare-fun m!7079072 () Bool)

(assert (=> bs!1557922 m!7079072))

(assert (=> b!6255548 d!1962588))

(declare-fun bs!1557923 () Bool)

(declare-fun d!1962590 () Bool)

(assert (= bs!1557923 (and d!1962590 b!6255548)))

(declare-fun lambda!342382 () Int)

(assert (=> bs!1557923 (= lambda!342382 lambda!342313)))

(assert (=> bs!1557923 (not (= lambda!342382 lambda!342314))))

(declare-fun bs!1557924 () Bool)

(assert (= bs!1557924 (and d!1962590 d!1962588)))

(assert (=> bs!1557924 (= lambda!342382 lambda!342377)))

(assert (=> d!1962590 true))

(assert (=> d!1962590 true))

(assert (=> d!1962590 true))

(declare-fun lambda!342383 () Int)

(assert (=> bs!1557923 (not (= lambda!342383 lambda!342313))))

(assert (=> bs!1557923 (= lambda!342383 lambda!342314)))

(assert (=> bs!1557924 (not (= lambda!342383 lambda!342377))))

(declare-fun bs!1557925 () Bool)

(assert (= bs!1557925 d!1962590))

(assert (=> bs!1557925 (not (= lambda!342383 lambda!342382))))

(assert (=> d!1962590 true))

(assert (=> d!1962590 true))

(assert (=> d!1962590 true))

(assert (=> d!1962590 (= (Exists!3251 lambda!342382) (Exists!3251 lambda!342383))))

(declare-fun lt!2349664 () Unit!158055)

(declare-fun choose!46430 (Regex!16181 Regex!16181 List!64844) Unit!158055)

(assert (=> d!1962590 (= lt!2349664 (choose!46430 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326))))

(assert (=> d!1962590 (validRegex!7917 (regOne!32874 r!7292))))

(assert (=> d!1962590 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1788 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326) lt!2349664)))

(declare-fun m!7079074 () Bool)

(assert (=> bs!1557925 m!7079074))

(declare-fun m!7079076 () Bool)

(assert (=> bs!1557925 m!7079076))

(declare-fun m!7079078 () Bool)

(assert (=> bs!1557925 m!7079078))

(assert (=> bs!1557925 m!7079052))

(assert (=> b!6255548 d!1962590))

(declare-fun d!1962592 () Bool)

(declare-fun isEmpty!36747 (Option!16072) Bool)

(assert (=> d!1962592 (= (isDefined!12775 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326)) (not (isEmpty!36747 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326))))))

(declare-fun bs!1557926 () Bool)

(assert (= bs!1557926 d!1962592))

(assert (=> bs!1557926 m!7078492))

(declare-fun m!7079080 () Bool)

(assert (=> bs!1557926 m!7079080))

(assert (=> b!6255548 d!1962592))

(declare-fun d!1962594 () Bool)

(declare-fun lt!2349667 () Regex!16181)

(assert (=> d!1962594 (validRegex!7917 lt!2349667)))

(assert (=> d!1962594 (= lt!2349667 (generalisedUnion!2025 (unfocusZipperList!1602 zl!343)))))

(assert (=> d!1962594 (= (unfocusZipper!1923 zl!343) lt!2349667)))

(declare-fun bs!1557927 () Bool)

(assert (= bs!1557927 d!1962594))

(declare-fun m!7079082 () Bool)

(assert (=> bs!1557927 m!7079082))

(assert (=> bs!1557927 m!7078434))

(assert (=> bs!1557927 m!7078434))

(assert (=> bs!1557927 m!7078436))

(assert (=> b!6255547 d!1962594))

(declare-fun d!1962596 () Bool)

(declare-fun lt!2349670 () Int)

(assert (=> d!1962596 (>= lt!2349670 0)))

(declare-fun e!3805844 () Int)

(assert (=> d!1962596 (= lt!2349670 e!3805844)))

(declare-fun c!1132569 () Bool)

(assert (=> d!1962596 (= c!1132569 ((_ is Cons!64718) (exprs!6065 lt!2349538)))))

(assert (=> d!1962596 (= (contextDepthTotal!304 lt!2349538) lt!2349670)))

(declare-fun b!6256192 () Bool)

(declare-fun regexDepthTotal!157 (Regex!16181) Int)

(assert (=> b!6256192 (= e!3805844 (+ (regexDepthTotal!157 (h!71166 (exprs!6065 lt!2349538))) (contextDepthTotal!304 (Context!11131 (t!378392 (exprs!6065 lt!2349538))))))))

(declare-fun b!6256193 () Bool)

(assert (=> b!6256193 (= e!3805844 1)))

(assert (= (and d!1962596 c!1132569) b!6256192))

(assert (= (and d!1962596 (not c!1132569)) b!6256193))

(declare-fun m!7079084 () Bool)

(assert (=> b!6256192 m!7079084))

(declare-fun m!7079086 () Bool)

(assert (=> b!6256192 m!7079086))

(assert (=> b!6255550 d!1962596))

(declare-fun d!1962598 () Bool)

(declare-fun lt!2349671 () Int)

(assert (=> d!1962598 (>= lt!2349671 0)))

(declare-fun e!3805845 () Int)

(assert (=> d!1962598 (= lt!2349671 e!3805845)))

(declare-fun c!1132570 () Bool)

(assert (=> d!1962598 (= c!1132570 ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343))))))

(assert (=> d!1962598 (= (contextDepthTotal!304 (h!71167 zl!343)) lt!2349671)))

(declare-fun b!6256194 () Bool)

(assert (=> b!6256194 (= e!3805845 (+ (regexDepthTotal!157 (h!71166 (exprs!6065 (h!71167 zl!343)))) (contextDepthTotal!304 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6256195 () Bool)

(assert (=> b!6256195 (= e!3805845 1)))

(assert (= (and d!1962598 c!1132570) b!6256194))

(assert (= (and d!1962598 (not c!1132570)) b!6256195))

(declare-fun m!7079088 () Bool)

(assert (=> b!6256194 m!7079088))

(declare-fun m!7079090 () Bool)

(assert (=> b!6256194 m!7079090))

(assert (=> b!6255550 d!1962598))

(declare-fun d!1962600 () Bool)

(assert (=> d!1962600 (= (isEmpty!36742 (t!378392 (exprs!6065 (h!71167 zl!343)))) ((_ is Nil!64718) (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> b!6255530 d!1962600))

(declare-fun b!6256196 () Bool)

(declare-fun e!3805849 () (InoxSet Context!11130))

(declare-fun call!527943 () (InoxSet Context!11130))

(declare-fun call!527942 () (InoxSet Context!11130))

(assert (=> b!6256196 (= e!3805849 ((_ map or) call!527943 call!527942))))

(declare-fun b!6256197 () Bool)

(declare-fun e!3805850 () (InoxSet Context!11130))

(declare-fun e!3805851 () (InoxSet Context!11130))

(assert (=> b!6256197 (= e!3805850 e!3805851)))

(declare-fun c!1132574 () Bool)

(assert (=> b!6256197 (= c!1132574 ((_ is Union!16181) (regTwo!32874 (regOne!32874 r!7292))))))

(declare-fun b!6256198 () Bool)

(declare-fun e!3805846 () (InoxSet Context!11130))

(assert (=> b!6256198 (= e!3805846 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!527935 () Bool)

(declare-fun call!527941 () (InoxSet Context!11130))

(assert (=> bm!527935 (= call!527942 call!527941)))

(declare-fun bm!527936 () Bool)

(declare-fun call!527945 () (InoxSet Context!11130))

(assert (=> bm!527936 (= call!527945 call!527942)))

(declare-fun b!6256199 () Bool)

(assert (=> b!6256199 (= e!3805851 ((_ map or) call!527941 call!527943))))

(declare-fun d!1962602 () Bool)

(declare-fun c!1132575 () Bool)

(assert (=> d!1962602 (= c!1132575 (and ((_ is ElementMatch!16181) (regTwo!32874 (regOne!32874 r!7292))) (= (c!1132364 (regTwo!32874 (regOne!32874 r!7292))) (h!71168 s!2326))))))

(assert (=> d!1962602 (= (derivationStepZipperDown!1429 (regTwo!32874 (regOne!32874 r!7292)) lt!2349549 (h!71168 s!2326)) e!3805850)))

(declare-fun bm!527937 () Bool)

(declare-fun call!527944 () List!64842)

(declare-fun call!527940 () List!64842)

(assert (=> bm!527937 (= call!527944 call!527940)))

(declare-fun b!6256200 () Bool)

(declare-fun e!3805847 () (InoxSet Context!11130))

(assert (=> b!6256200 (= e!3805849 e!3805847)))

(declare-fun c!1132572 () Bool)

(assert (=> b!6256200 (= c!1132572 ((_ is Concat!25026) (regTwo!32874 (regOne!32874 r!7292))))))

(declare-fun b!6256201 () Bool)

(declare-fun e!3805848 () Bool)

(assert (=> b!6256201 (= e!3805848 (nullable!6174 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))))))

(declare-fun b!6256202 () Bool)

(assert (=> b!6256202 (= e!3805850 (store ((as const (Array Context!11130 Bool)) false) lt!2349549 true))))

(declare-fun c!1132573 () Bool)

(declare-fun bm!527938 () Bool)

(assert (=> bm!527938 (= call!527940 ($colon$colon!2046 (exprs!6065 lt!2349549) (ite (or c!1132573 c!1132572) (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (regTwo!32874 (regOne!32874 r!7292)))))))

(declare-fun bm!527939 () Bool)

(assert (=> bm!527939 (= call!527941 (derivationStepZipperDown!1429 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292)))))) (ite (or c!1132574 c!1132573) lt!2349549 (Context!11131 call!527944)) (h!71168 s!2326)))))

(declare-fun b!6256203 () Bool)

(declare-fun c!1132571 () Bool)

(assert (=> b!6256203 (= c!1132571 ((_ is Star!16181) (regTwo!32874 (regOne!32874 r!7292))))))

(assert (=> b!6256203 (= e!3805847 e!3805846)))

(declare-fun bm!527940 () Bool)

(assert (=> bm!527940 (= call!527943 (derivationStepZipperDown!1429 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))) (ite c!1132574 lt!2349549 (Context!11131 call!527940)) (h!71168 s!2326)))))

(declare-fun b!6256204 () Bool)

(assert (=> b!6256204 (= e!3805847 call!527945)))

(declare-fun b!6256205 () Bool)

(assert (=> b!6256205 (= e!3805846 call!527945)))

(declare-fun b!6256206 () Bool)

(assert (=> b!6256206 (= c!1132573 e!3805848)))

(declare-fun res!2581979 () Bool)

(assert (=> b!6256206 (=> (not res!2581979) (not e!3805848))))

(assert (=> b!6256206 (= res!2581979 ((_ is Concat!25026) (regTwo!32874 (regOne!32874 r!7292))))))

(assert (=> b!6256206 (= e!3805851 e!3805849)))

(assert (= (and d!1962602 c!1132575) b!6256202))

(assert (= (and d!1962602 (not c!1132575)) b!6256197))

(assert (= (and b!6256197 c!1132574) b!6256199))

(assert (= (and b!6256197 (not c!1132574)) b!6256206))

(assert (= (and b!6256206 res!2581979) b!6256201))

(assert (= (and b!6256206 c!1132573) b!6256196))

(assert (= (and b!6256206 (not c!1132573)) b!6256200))

(assert (= (and b!6256200 c!1132572) b!6256204))

(assert (= (and b!6256200 (not c!1132572)) b!6256203))

(assert (= (and b!6256203 c!1132571) b!6256205))

(assert (= (and b!6256203 (not c!1132571)) b!6256198))

(assert (= (or b!6256204 b!6256205) bm!527937))

(assert (= (or b!6256204 b!6256205) bm!527936))

(assert (= (or b!6256196 bm!527937) bm!527938))

(assert (= (or b!6256196 bm!527936) bm!527935))

(assert (= (or b!6256199 b!6256196) bm!527940))

(assert (= (or b!6256199 bm!527935) bm!527939))

(declare-fun m!7079092 () Bool)

(assert (=> bm!527938 m!7079092))

(assert (=> b!6256202 m!7078998))

(declare-fun m!7079094 () Bool)

(assert (=> bm!527940 m!7079094))

(declare-fun m!7079096 () Bool)

(assert (=> bm!527939 m!7079096))

(declare-fun m!7079098 () Bool)

(assert (=> b!6256201 m!7079098))

(assert (=> b!6255529 d!1962602))

(declare-fun b!6256207 () Bool)

(declare-fun e!3805855 () (InoxSet Context!11130))

(declare-fun call!527949 () (InoxSet Context!11130))

(declare-fun call!527948 () (InoxSet Context!11130))

(assert (=> b!6256207 (= e!3805855 ((_ map or) call!527949 call!527948))))

(declare-fun b!6256208 () Bool)

(declare-fun e!3805856 () (InoxSet Context!11130))

(declare-fun e!3805857 () (InoxSet Context!11130))

(assert (=> b!6256208 (= e!3805856 e!3805857)))

(declare-fun c!1132579 () Bool)

(assert (=> b!6256208 (= c!1132579 ((_ is Union!16181) (regOne!32874 (regOne!32874 r!7292))))))

(declare-fun b!6256209 () Bool)

(declare-fun e!3805852 () (InoxSet Context!11130))

(assert (=> b!6256209 (= e!3805852 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!527941 () Bool)

(declare-fun call!527947 () (InoxSet Context!11130))

(assert (=> bm!527941 (= call!527948 call!527947)))

(declare-fun bm!527942 () Bool)

(declare-fun call!527951 () (InoxSet Context!11130))

(assert (=> bm!527942 (= call!527951 call!527948)))

(declare-fun b!6256210 () Bool)

(assert (=> b!6256210 (= e!3805857 ((_ map or) call!527947 call!527949))))

(declare-fun d!1962604 () Bool)

(declare-fun c!1132580 () Bool)

(assert (=> d!1962604 (= c!1132580 (and ((_ is ElementMatch!16181) (regOne!32874 (regOne!32874 r!7292))) (= (c!1132364 (regOne!32874 (regOne!32874 r!7292))) (h!71168 s!2326))))))

(assert (=> d!1962604 (= (derivationStepZipperDown!1429 (regOne!32874 (regOne!32874 r!7292)) lt!2349551 (h!71168 s!2326)) e!3805856)))

(declare-fun bm!527943 () Bool)

(declare-fun call!527950 () List!64842)

(declare-fun call!527946 () List!64842)

(assert (=> bm!527943 (= call!527950 call!527946)))

(declare-fun b!6256211 () Bool)

(declare-fun e!3805853 () (InoxSet Context!11130))

(assert (=> b!6256211 (= e!3805855 e!3805853)))

(declare-fun c!1132577 () Bool)

(assert (=> b!6256211 (= c!1132577 ((_ is Concat!25026) (regOne!32874 (regOne!32874 r!7292))))))

(declare-fun b!6256212 () Bool)

(declare-fun e!3805854 () Bool)

(assert (=> b!6256212 (= e!3805854 (nullable!6174 (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))))))

(declare-fun b!6256213 () Bool)

(assert (=> b!6256213 (= e!3805856 (store ((as const (Array Context!11130 Bool)) false) lt!2349551 true))))

(declare-fun bm!527944 () Bool)

(declare-fun c!1132578 () Bool)

(assert (=> bm!527944 (= call!527946 ($colon$colon!2046 (exprs!6065 lt!2349551) (ite (or c!1132578 c!1132577) (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 r!7292)))))))

(declare-fun bm!527945 () Bool)

(assert (=> bm!527945 (= call!527947 (derivationStepZipperDown!1429 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292)))))) (ite (or c!1132579 c!1132578) lt!2349551 (Context!11131 call!527950)) (h!71168 s!2326)))))

(declare-fun b!6256214 () Bool)

(declare-fun c!1132576 () Bool)

(assert (=> b!6256214 (= c!1132576 ((_ is Star!16181) (regOne!32874 (regOne!32874 r!7292))))))

(assert (=> b!6256214 (= e!3805853 e!3805852)))

(declare-fun bm!527946 () Bool)

(assert (=> bm!527946 (= call!527949 (derivationStepZipperDown!1429 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))) (ite c!1132579 lt!2349551 (Context!11131 call!527946)) (h!71168 s!2326)))))

(declare-fun b!6256215 () Bool)

(assert (=> b!6256215 (= e!3805853 call!527951)))

(declare-fun b!6256216 () Bool)

(assert (=> b!6256216 (= e!3805852 call!527951)))

(declare-fun b!6256217 () Bool)

(assert (=> b!6256217 (= c!1132578 e!3805854)))

(declare-fun res!2581980 () Bool)

(assert (=> b!6256217 (=> (not res!2581980) (not e!3805854))))

(assert (=> b!6256217 (= res!2581980 ((_ is Concat!25026) (regOne!32874 (regOne!32874 r!7292))))))

(assert (=> b!6256217 (= e!3805857 e!3805855)))

(assert (= (and d!1962604 c!1132580) b!6256213))

(assert (= (and d!1962604 (not c!1132580)) b!6256208))

(assert (= (and b!6256208 c!1132579) b!6256210))

(assert (= (and b!6256208 (not c!1132579)) b!6256217))

(assert (= (and b!6256217 res!2581980) b!6256212))

(assert (= (and b!6256217 c!1132578) b!6256207))

(assert (= (and b!6256217 (not c!1132578)) b!6256211))

(assert (= (and b!6256211 c!1132577) b!6256215))

(assert (= (and b!6256211 (not c!1132577)) b!6256214))

(assert (= (and b!6256214 c!1132576) b!6256216))

(assert (= (and b!6256214 (not c!1132576)) b!6256209))

(assert (= (or b!6256215 b!6256216) bm!527943))

(assert (= (or b!6256215 b!6256216) bm!527942))

(assert (= (or b!6256207 bm!527943) bm!527944))

(assert (= (or b!6256207 bm!527942) bm!527941))

(assert (= (or b!6256210 b!6256207) bm!527946))

(assert (= (or b!6256210 bm!527941) bm!527945))

(declare-fun m!7079100 () Bool)

(assert (=> bm!527944 m!7079100))

(assert (=> b!6256213 m!7078524))

(declare-fun m!7079102 () Bool)

(assert (=> bm!527946 m!7079102))

(declare-fun m!7079104 () Bool)

(assert (=> bm!527945 m!7079104))

(declare-fun m!7079106 () Bool)

(assert (=> b!6256212 m!7079106))

(assert (=> b!6255529 d!1962604))

(declare-fun bs!1557928 () Bool)

(declare-fun b!6256257 () Bool)

(assert (= bs!1557928 (and b!6256257 d!1962590)))

(declare-fun lambda!342388 () Int)

(assert (=> bs!1557928 (not (= lambda!342388 lambda!342383))))

(declare-fun bs!1557929 () Bool)

(assert (= bs!1557929 (and b!6256257 b!6255548)))

(assert (=> bs!1557929 (not (= lambda!342388 lambda!342313))))

(assert (=> bs!1557929 (not (= lambda!342388 lambda!342314))))

(assert (=> bs!1557928 (not (= lambda!342388 lambda!342382))))

(declare-fun bs!1557930 () Bool)

(assert (= bs!1557930 (and b!6256257 d!1962588)))

(assert (=> bs!1557930 (not (= lambda!342388 lambda!342377))))

(assert (=> b!6256257 true))

(assert (=> b!6256257 true))

(declare-fun bs!1557931 () Bool)

(declare-fun b!6256253 () Bool)

(assert (= bs!1557931 (and b!6256253 d!1962590)))

(declare-fun lambda!342389 () Int)

(assert (=> bs!1557931 (= lambda!342389 lambda!342383)))

(declare-fun bs!1557932 () Bool)

(assert (= bs!1557932 (and b!6256253 b!6255548)))

(assert (=> bs!1557932 (not (= lambda!342389 lambda!342313))))

(assert (=> bs!1557931 (not (= lambda!342389 lambda!342382))))

(declare-fun bs!1557933 () Bool)

(assert (= bs!1557933 (and b!6256253 d!1962588)))

(assert (=> bs!1557933 (not (= lambda!342389 lambda!342377))))

(assert (=> bs!1557932 (= lambda!342389 lambda!342314)))

(declare-fun bs!1557934 () Bool)

(assert (= bs!1557934 (and b!6256253 b!6256257)))

(assert (=> bs!1557934 (not (= lambda!342389 lambda!342388))))

(assert (=> b!6256253 true))

(assert (=> b!6256253 true))

(declare-fun b!6256250 () Bool)

(declare-fun e!3805880 () Bool)

(assert (=> b!6256250 (= e!3805880 (matchRSpec!3282 (regTwo!32875 r!7292) s!2326))))

(declare-fun b!6256251 () Bool)

(declare-fun e!3805882 () Bool)

(declare-fun call!527956 () Bool)

(assert (=> b!6256251 (= e!3805882 call!527956)))

(declare-fun b!6256252 () Bool)

(declare-fun e!3805877 () Bool)

(assert (=> b!6256252 (= e!3805877 e!3805880)))

(declare-fun res!2581998 () Bool)

(assert (=> b!6256252 (= res!2581998 (matchRSpec!3282 (regOne!32875 r!7292) s!2326))))

(assert (=> b!6256252 (=> res!2581998 e!3805880)))

(declare-fun e!3805879 () Bool)

(declare-fun call!527957 () Bool)

(assert (=> b!6256253 (= e!3805879 call!527957)))

(declare-fun b!6256254 () Bool)

(declare-fun c!1132591 () Bool)

(assert (=> b!6256254 (= c!1132591 ((_ is ElementMatch!16181) r!7292))))

(declare-fun e!3805878 () Bool)

(declare-fun e!3805881 () Bool)

(assert (=> b!6256254 (= e!3805878 e!3805881)))

(declare-fun d!1962606 () Bool)

(declare-fun c!1132592 () Bool)

(assert (=> d!1962606 (= c!1132592 ((_ is EmptyExpr!16181) r!7292))))

(assert (=> d!1962606 (= (matchRSpec!3282 r!7292 s!2326) e!3805882)))

(declare-fun b!6256255 () Bool)

(assert (=> b!6256255 (= e!3805877 e!3805879)))

(declare-fun c!1132590 () Bool)

(assert (=> b!6256255 (= c!1132590 ((_ is Star!16181) r!7292))))

(declare-fun b!6256256 () Bool)

(assert (=> b!6256256 (= e!3805882 e!3805878)))

(declare-fun res!2581997 () Bool)

(assert (=> b!6256256 (= res!2581997 (not ((_ is EmptyLang!16181) r!7292)))))

(assert (=> b!6256256 (=> (not res!2581997) (not e!3805878))))

(declare-fun e!3805876 () Bool)

(assert (=> b!6256257 (= e!3805876 call!527957)))

(declare-fun bm!527951 () Bool)

(assert (=> bm!527951 (= call!527956 (isEmpty!36746 s!2326))))

(declare-fun b!6256258 () Bool)

(declare-fun c!1132589 () Bool)

(assert (=> b!6256258 (= c!1132589 ((_ is Union!16181) r!7292))))

(assert (=> b!6256258 (= e!3805881 e!3805877)))

(declare-fun bm!527952 () Bool)

(assert (=> bm!527952 (= call!527957 (Exists!3251 (ite c!1132590 lambda!342388 lambda!342389)))))

(declare-fun b!6256259 () Bool)

(assert (=> b!6256259 (= e!3805881 (= s!2326 (Cons!64720 (c!1132364 r!7292) Nil!64720)))))

(declare-fun b!6256260 () Bool)

(declare-fun res!2581999 () Bool)

(assert (=> b!6256260 (=> res!2581999 e!3805876)))

(assert (=> b!6256260 (= res!2581999 call!527956)))

(assert (=> b!6256260 (= e!3805879 e!3805876)))

(assert (= (and d!1962606 c!1132592) b!6256251))

(assert (= (and d!1962606 (not c!1132592)) b!6256256))

(assert (= (and b!6256256 res!2581997) b!6256254))

(assert (= (and b!6256254 c!1132591) b!6256259))

(assert (= (and b!6256254 (not c!1132591)) b!6256258))

(assert (= (and b!6256258 c!1132589) b!6256252))

(assert (= (and b!6256258 (not c!1132589)) b!6256255))

(assert (= (and b!6256252 (not res!2581998)) b!6256250))

(assert (= (and b!6256255 c!1132590) b!6256260))

(assert (= (and b!6256255 (not c!1132590)) b!6256253))

(assert (= (and b!6256260 (not res!2581999)) b!6256257))

(assert (= (or b!6256257 b!6256253) bm!527952))

(assert (= (or b!6256251 b!6256260) bm!527951))

(declare-fun m!7079108 () Bool)

(assert (=> b!6256250 m!7079108))

(declare-fun m!7079110 () Bool)

(assert (=> b!6256252 m!7079110))

(declare-fun m!7079112 () Bool)

(assert (=> bm!527951 m!7079112))

(declare-fun m!7079114 () Bool)

(assert (=> bm!527952 m!7079114))

(assert (=> b!6255534 d!1962606))

(declare-fun b!6256289 () Bool)

(declare-fun res!2582020 () Bool)

(declare-fun e!3805899 () Bool)

(assert (=> b!6256289 (=> res!2582020 e!3805899)))

(assert (=> b!6256289 (= res!2582020 (not ((_ is ElementMatch!16181) r!7292)))))

(declare-fun e!3805897 () Bool)

(assert (=> b!6256289 (= e!3805897 e!3805899)))

(declare-fun b!6256290 () Bool)

(declare-fun res!2582022 () Bool)

(assert (=> b!6256290 (=> res!2582022 e!3805899)))

(declare-fun e!3805903 () Bool)

(assert (=> b!6256290 (= res!2582022 e!3805903)))

(declare-fun res!2582018 () Bool)

(assert (=> b!6256290 (=> (not res!2582018) (not e!3805903))))

(declare-fun lt!2349674 () Bool)

(assert (=> b!6256290 (= res!2582018 lt!2349674)))

(declare-fun b!6256291 () Bool)

(declare-fun e!3805898 () Bool)

(assert (=> b!6256291 (= e!3805898 e!3805897)))

(declare-fun c!1132601 () Bool)

(assert (=> b!6256291 (= c!1132601 ((_ is EmptyLang!16181) r!7292))))

(declare-fun b!6256292 () Bool)

(declare-fun e!3805902 () Bool)

(assert (=> b!6256292 (= e!3805899 e!3805902)))

(declare-fun res!2582016 () Bool)

(assert (=> b!6256292 (=> (not res!2582016) (not e!3805902))))

(assert (=> b!6256292 (= res!2582016 (not lt!2349674))))

(declare-fun b!6256293 () Bool)

(assert (=> b!6256293 (= e!3805897 (not lt!2349674))))

(declare-fun b!6256294 () Bool)

(declare-fun res!2582017 () Bool)

(assert (=> b!6256294 (=> (not res!2582017) (not e!3805903))))

(declare-fun call!527960 () Bool)

(assert (=> b!6256294 (= res!2582017 (not call!527960))))

(declare-fun d!1962608 () Bool)

(assert (=> d!1962608 e!3805898))

(declare-fun c!1132599 () Bool)

(assert (=> d!1962608 (= c!1132599 ((_ is EmptyExpr!16181) r!7292))))

(declare-fun e!3805901 () Bool)

(assert (=> d!1962608 (= lt!2349674 e!3805901)))

(declare-fun c!1132600 () Bool)

(assert (=> d!1962608 (= c!1132600 (isEmpty!36746 s!2326))))

(assert (=> d!1962608 (validRegex!7917 r!7292)))

(assert (=> d!1962608 (= (matchR!8364 r!7292 s!2326) lt!2349674)))

(declare-fun bm!527955 () Bool)

(assert (=> bm!527955 (= call!527960 (isEmpty!36746 s!2326))))

(declare-fun b!6256295 () Bool)

(declare-fun e!3805900 () Bool)

(assert (=> b!6256295 (= e!3805900 (not (= (head!12862 s!2326) (c!1132364 r!7292))))))

(declare-fun b!6256296 () Bool)

(assert (=> b!6256296 (= e!3805903 (= (head!12862 s!2326) (c!1132364 r!7292)))))

(declare-fun b!6256297 () Bool)

(assert (=> b!6256297 (= e!3805901 (nullable!6174 r!7292))))

(declare-fun b!6256298 () Bool)

(assert (=> b!6256298 (= e!3805902 e!3805900)))

(declare-fun res!2582023 () Bool)

(assert (=> b!6256298 (=> res!2582023 e!3805900)))

(assert (=> b!6256298 (= res!2582023 call!527960)))

(declare-fun b!6256299 () Bool)

(declare-fun derivativeStep!4890 (Regex!16181 C!32632) Regex!16181)

(assert (=> b!6256299 (= e!3805901 (matchR!8364 (derivativeStep!4890 r!7292 (head!12862 s!2326)) (tail!11947 s!2326)))))

(declare-fun b!6256300 () Bool)

(declare-fun res!2582019 () Bool)

(assert (=> b!6256300 (=> res!2582019 e!3805900)))

(assert (=> b!6256300 (= res!2582019 (not (isEmpty!36746 (tail!11947 s!2326))))))

(declare-fun b!6256301 () Bool)

(declare-fun res!2582021 () Bool)

(assert (=> b!6256301 (=> (not res!2582021) (not e!3805903))))

(assert (=> b!6256301 (= res!2582021 (isEmpty!36746 (tail!11947 s!2326)))))

(declare-fun b!6256302 () Bool)

(assert (=> b!6256302 (= e!3805898 (= lt!2349674 call!527960))))

(assert (= (and d!1962608 c!1132600) b!6256297))

(assert (= (and d!1962608 (not c!1132600)) b!6256299))

(assert (= (and d!1962608 c!1132599) b!6256302))

(assert (= (and d!1962608 (not c!1132599)) b!6256291))

(assert (= (and b!6256291 c!1132601) b!6256293))

(assert (= (and b!6256291 (not c!1132601)) b!6256289))

(assert (= (and b!6256289 (not res!2582020)) b!6256290))

(assert (= (and b!6256290 res!2582018) b!6256294))

(assert (= (and b!6256294 res!2582017) b!6256301))

(assert (= (and b!6256301 res!2582021) b!6256296))

(assert (= (and b!6256290 (not res!2582022)) b!6256292))

(assert (= (and b!6256292 res!2582016) b!6256298))

(assert (= (and b!6256298 (not res!2582023)) b!6256300))

(assert (= (and b!6256300 (not res!2582019)) b!6256295))

(assert (= (or b!6256302 b!6256298 b!6256294) bm!527955))

(declare-fun m!7079116 () Bool)

(assert (=> b!6256300 m!7079116))

(assert (=> b!6256300 m!7079116))

(declare-fun m!7079118 () Bool)

(assert (=> b!6256300 m!7079118))

(assert (=> bm!527955 m!7079112))

(declare-fun m!7079120 () Bool)

(assert (=> b!6256295 m!7079120))

(assert (=> b!6256299 m!7079120))

(assert (=> b!6256299 m!7079120))

(declare-fun m!7079122 () Bool)

(assert (=> b!6256299 m!7079122))

(assert (=> b!6256299 m!7079116))

(assert (=> b!6256299 m!7079122))

(assert (=> b!6256299 m!7079116))

(declare-fun m!7079124 () Bool)

(assert (=> b!6256299 m!7079124))

(assert (=> b!6256296 m!7079120))

(declare-fun m!7079126 () Bool)

(assert (=> b!6256297 m!7079126))

(assert (=> d!1962608 m!7079112))

(assert (=> d!1962608 m!7078530))

(assert (=> b!6256301 m!7079116))

(assert (=> b!6256301 m!7079116))

(assert (=> b!6256301 m!7079118))

(assert (=> b!6255534 d!1962608))

(declare-fun d!1962610 () Bool)

(assert (=> d!1962610 (= (matchR!8364 r!7292 s!2326) (matchRSpec!3282 r!7292 s!2326))))

(declare-fun lt!2349677 () Unit!158055)

(declare-fun choose!46431 (Regex!16181 List!64844) Unit!158055)

(assert (=> d!1962610 (= lt!2349677 (choose!46431 r!7292 s!2326))))

(assert (=> d!1962610 (validRegex!7917 r!7292)))

(assert (=> d!1962610 (= (mainMatchTheorem!3282 r!7292 s!2326) lt!2349677)))

(declare-fun bs!1557935 () Bool)

(assert (= bs!1557935 d!1962610))

(assert (=> bs!1557935 m!7078540))

(assert (=> bs!1557935 m!7078538))

(declare-fun m!7079128 () Bool)

(assert (=> bs!1557935 m!7079128))

(assert (=> bs!1557935 m!7078530))

(assert (=> b!6255534 d!1962610))

(declare-fun d!1962612 () Bool)

(declare-fun c!1132602 () Bool)

(assert (=> d!1962612 (= c!1132602 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805904 () Bool)

(assert (=> d!1962612 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (t!378394 s!2326)) e!3805904)))

(declare-fun b!6256303 () Bool)

(assert (=> b!6256303 (= e!3805904 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326))))))

(declare-fun b!6256304 () Bool)

(assert (=> b!6256304 (= e!3805904 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962612 c!1132602) b!6256303))

(assert (= (and d!1962612 (not c!1132602)) b!6256304))

(assert (=> d!1962612 m!7078798))

(assert (=> b!6256303 m!7078486))

(declare-fun m!7079130 () Bool)

(assert (=> b!6256303 m!7079130))

(assert (=> b!6256304 m!7078802))

(assert (=> b!6256304 m!7078486))

(assert (=> b!6256304 m!7078802))

(declare-fun m!7079132 () Bool)

(assert (=> b!6256304 m!7079132))

(assert (=> b!6256304 m!7078806))

(assert (=> b!6256304 m!7079132))

(assert (=> b!6256304 m!7078806))

(declare-fun m!7079134 () Bool)

(assert (=> b!6256304 m!7079134))

(assert (=> b!6255533 d!1962612))

(declare-fun bs!1557936 () Bool)

(declare-fun d!1962614 () Bool)

(assert (= bs!1557936 (and d!1962614 b!6255545)))

(declare-fun lambda!342390 () Int)

(assert (=> bs!1557936 (= lambda!342390 lambda!342315)))

(declare-fun bs!1557937 () Bool)

(assert (= bs!1557937 (and d!1962614 d!1962540)))

(assert (=> bs!1557937 (= lambda!342390 lambda!342367)))

(assert (=> d!1962614 true))

(assert (=> d!1962614 (= (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (flatMap!1686 lt!2349545 lambda!342390))))

(declare-fun bs!1557938 () Bool)

(assert (= bs!1557938 d!1962614))

(declare-fun m!7079136 () Bool)

(assert (=> bs!1557938 m!7079136))

(assert (=> b!6255533 d!1962614))

(declare-fun bs!1557939 () Bool)

(declare-fun d!1962616 () Bool)

(assert (= bs!1557939 (and d!1962616 d!1962486)))

(declare-fun lambda!342393 () Int)

(assert (=> bs!1557939 (= lambda!342393 lambda!342355)))

(declare-fun bs!1557940 () Bool)

(assert (= bs!1557940 (and d!1962616 d!1962576)))

(assert (=> bs!1557940 (= lambda!342393 lambda!342368)))

(declare-fun bs!1557941 () Bool)

(assert (= bs!1557941 (and d!1962616 d!1962578)))

(assert (=> bs!1557941 (= lambda!342393 lambda!342371)))

(declare-fun bs!1557942 () Bool)

(assert (= bs!1557942 (and d!1962616 d!1962580)))

(assert (=> bs!1557942 (= lambda!342393 lambda!342374)))

(declare-fun b!6256325 () Bool)

(declare-fun e!3805920 () Regex!16181)

(assert (=> b!6256325 (= e!3805920 EmptyExpr!16181)))

(declare-fun b!6256326 () Bool)

(declare-fun e!3805919 () Bool)

(declare-fun lt!2349680 () Regex!16181)

(declare-fun isConcat!1110 (Regex!16181) Bool)

(assert (=> b!6256326 (= e!3805919 (isConcat!1110 lt!2349680))))

(declare-fun b!6256327 () Bool)

(declare-fun e!3805917 () Bool)

(assert (=> b!6256327 (= e!3805917 (isEmpty!36742 (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6256328 () Bool)

(declare-fun e!3805922 () Bool)

(declare-fun isEmptyExpr!1587 (Regex!16181) Bool)

(assert (=> b!6256328 (= e!3805922 (isEmptyExpr!1587 lt!2349680))))

(declare-fun b!6256329 () Bool)

(declare-fun e!3805921 () Regex!16181)

(assert (=> b!6256329 (= e!3805921 (h!71166 (exprs!6065 (h!71167 zl!343))))))

(declare-fun b!6256330 () Bool)

(assert (=> b!6256330 (= e!3805920 (Concat!25026 (h!71166 (exprs!6065 (h!71167 zl!343))) (generalisedConcat!1778 (t!378392 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun b!6256331 () Bool)

(declare-fun e!3805918 () Bool)

(assert (=> b!6256331 (= e!3805918 e!3805922)))

(declare-fun c!1132612 () Bool)

(assert (=> b!6256331 (= c!1132612 (isEmpty!36742 (exprs!6065 (h!71167 zl!343))))))

(declare-fun b!6256332 () Bool)

(assert (=> b!6256332 (= e!3805919 (= lt!2349680 (head!12863 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6256333 () Bool)

(assert (=> b!6256333 (= e!3805922 e!3805919)))

(declare-fun c!1132611 () Bool)

(assert (=> b!6256333 (= c!1132611 (isEmpty!36742 (tail!11948 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6256334 () Bool)

(assert (=> b!6256334 (= e!3805921 e!3805920)))

(declare-fun c!1132613 () Bool)

(assert (=> b!6256334 (= c!1132613 ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343))))))

(assert (=> d!1962616 e!3805918))

(declare-fun res!2582029 () Bool)

(assert (=> d!1962616 (=> (not res!2582029) (not e!3805918))))

(assert (=> d!1962616 (= res!2582029 (validRegex!7917 lt!2349680))))

(assert (=> d!1962616 (= lt!2349680 e!3805921)))

(declare-fun c!1132614 () Bool)

(assert (=> d!1962616 (= c!1132614 e!3805917)))

(declare-fun res!2582028 () Bool)

(assert (=> d!1962616 (=> (not res!2582028) (not e!3805917))))

(assert (=> d!1962616 (= res!2582028 ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343))))))

(assert (=> d!1962616 (forall!15300 (exprs!6065 (h!71167 zl!343)) lambda!342393)))

(assert (=> d!1962616 (= (generalisedConcat!1778 (exprs!6065 (h!71167 zl!343))) lt!2349680)))

(assert (= (and d!1962616 res!2582028) b!6256327))

(assert (= (and d!1962616 c!1132614) b!6256329))

(assert (= (and d!1962616 (not c!1132614)) b!6256334))

(assert (= (and b!6256334 c!1132613) b!6256330))

(assert (= (and b!6256334 (not c!1132613)) b!6256325))

(assert (= (and d!1962616 res!2582029) b!6256331))

(assert (= (and b!6256331 c!1132612) b!6256328))

(assert (= (and b!6256331 (not c!1132612)) b!6256333))

(assert (= (and b!6256333 c!1132611) b!6256332))

(assert (= (and b!6256333 (not c!1132611)) b!6256326))

(declare-fun m!7079138 () Bool)

(assert (=> b!6256328 m!7079138))

(declare-fun m!7079140 () Bool)

(assert (=> b!6256332 m!7079140))

(declare-fun m!7079142 () Bool)

(assert (=> b!6256333 m!7079142))

(assert (=> b!6256333 m!7079142))

(declare-fun m!7079144 () Bool)

(assert (=> b!6256333 m!7079144))

(assert (=> b!6256327 m!7078462))

(declare-fun m!7079146 () Bool)

(assert (=> b!6256331 m!7079146))

(declare-fun m!7079148 () Bool)

(assert (=> b!6256330 m!7079148))

(declare-fun m!7079150 () Bool)

(assert (=> b!6256326 m!7079150))

(declare-fun m!7079152 () Bool)

(assert (=> d!1962616 m!7079152))

(declare-fun m!7079154 () Bool)

(assert (=> d!1962616 m!7079154))

(assert (=> b!6255552 d!1962616))

(declare-fun d!1962618 () Bool)

(declare-fun e!3805925 () Bool)

(assert (=> d!1962618 e!3805925))

(declare-fun res!2582032 () Bool)

(assert (=> d!1962618 (=> (not res!2582032) (not e!3805925))))

(declare-fun lt!2349683 () List!64843)

(declare-fun noDuplicate!2015 (List!64843) Bool)

(assert (=> d!1962618 (= res!2582032 (noDuplicate!2015 lt!2349683))))

(declare-fun choose!46432 ((InoxSet Context!11130)) List!64843)

(assert (=> d!1962618 (= lt!2349683 (choose!46432 z!1189))))

(assert (=> d!1962618 (= (toList!9965 z!1189) lt!2349683)))

(declare-fun b!6256337 () Bool)

(declare-fun content!12146 (List!64843) (InoxSet Context!11130))

(assert (=> b!6256337 (= e!3805925 (= (content!12146 lt!2349683) z!1189))))

(assert (= (and d!1962618 res!2582032) b!6256337))

(declare-fun m!7079156 () Bool)

(assert (=> d!1962618 m!7079156))

(declare-fun m!7079158 () Bool)

(assert (=> d!1962618 m!7079158))

(declare-fun m!7079160 () Bool)

(assert (=> b!6256337 m!7079160))

(assert (=> b!6255532 d!1962618))

(declare-fun d!1962620 () Bool)

(assert (=> d!1962620 (= (matchR!8364 lt!2349533 s!2326) (matchZipper!2193 lt!2349541 s!2326))))

(declare-fun lt!2349686 () Unit!158055)

(declare-fun choose!46433 ((InoxSet Context!11130) List!64843 Regex!16181 List!64844) Unit!158055)

(assert (=> d!1962620 (= lt!2349686 (choose!46433 lt!2349541 lt!2349542 lt!2349533 s!2326))))

(assert (=> d!1962620 (validRegex!7917 lt!2349533)))

(assert (=> d!1962620 (= (theoremZipperRegexEquiv!751 lt!2349541 lt!2349542 lt!2349533 s!2326) lt!2349686)))

(declare-fun bs!1557943 () Bool)

(assert (= bs!1557943 d!1962620))

(assert (=> bs!1557943 m!7078442))

(assert (=> bs!1557943 m!7078440))

(declare-fun m!7079162 () Bool)

(assert (=> bs!1557943 m!7079162))

(declare-fun m!7079164 () Bool)

(assert (=> bs!1557943 m!7079164))

(assert (=> b!6255555 d!1962620))

(declare-fun b!6256338 () Bool)

(declare-fun res!2582037 () Bool)

(declare-fun e!3805928 () Bool)

(assert (=> b!6256338 (=> res!2582037 e!3805928)))

(assert (=> b!6256338 (= res!2582037 (not ((_ is ElementMatch!16181) lt!2349533)))))

(declare-fun e!3805926 () Bool)

(assert (=> b!6256338 (= e!3805926 e!3805928)))

(declare-fun b!6256339 () Bool)

(declare-fun res!2582039 () Bool)

(assert (=> b!6256339 (=> res!2582039 e!3805928)))

(declare-fun e!3805932 () Bool)

(assert (=> b!6256339 (= res!2582039 e!3805932)))

(declare-fun res!2582035 () Bool)

(assert (=> b!6256339 (=> (not res!2582035) (not e!3805932))))

(declare-fun lt!2349687 () Bool)

(assert (=> b!6256339 (= res!2582035 lt!2349687)))

(declare-fun b!6256340 () Bool)

(declare-fun e!3805927 () Bool)

(assert (=> b!6256340 (= e!3805927 e!3805926)))

(declare-fun c!1132617 () Bool)

(assert (=> b!6256340 (= c!1132617 ((_ is EmptyLang!16181) lt!2349533))))

(declare-fun b!6256341 () Bool)

(declare-fun e!3805931 () Bool)

(assert (=> b!6256341 (= e!3805928 e!3805931)))

(declare-fun res!2582033 () Bool)

(assert (=> b!6256341 (=> (not res!2582033) (not e!3805931))))

(assert (=> b!6256341 (= res!2582033 (not lt!2349687))))

(declare-fun b!6256342 () Bool)

(assert (=> b!6256342 (= e!3805926 (not lt!2349687))))

(declare-fun b!6256343 () Bool)

(declare-fun res!2582034 () Bool)

(assert (=> b!6256343 (=> (not res!2582034) (not e!3805932))))

(declare-fun call!527961 () Bool)

(assert (=> b!6256343 (= res!2582034 (not call!527961))))

(declare-fun d!1962622 () Bool)

(assert (=> d!1962622 e!3805927))

(declare-fun c!1132615 () Bool)

(assert (=> d!1962622 (= c!1132615 ((_ is EmptyExpr!16181) lt!2349533))))

(declare-fun e!3805930 () Bool)

(assert (=> d!1962622 (= lt!2349687 e!3805930)))

(declare-fun c!1132616 () Bool)

(assert (=> d!1962622 (= c!1132616 (isEmpty!36746 s!2326))))

(assert (=> d!1962622 (validRegex!7917 lt!2349533)))

(assert (=> d!1962622 (= (matchR!8364 lt!2349533 s!2326) lt!2349687)))

(declare-fun bm!527956 () Bool)

(assert (=> bm!527956 (= call!527961 (isEmpty!36746 s!2326))))

(declare-fun b!6256344 () Bool)

(declare-fun e!3805929 () Bool)

(assert (=> b!6256344 (= e!3805929 (not (= (head!12862 s!2326) (c!1132364 lt!2349533))))))

(declare-fun b!6256345 () Bool)

(assert (=> b!6256345 (= e!3805932 (= (head!12862 s!2326) (c!1132364 lt!2349533)))))

(declare-fun b!6256346 () Bool)

(assert (=> b!6256346 (= e!3805930 (nullable!6174 lt!2349533))))

(declare-fun b!6256347 () Bool)

(assert (=> b!6256347 (= e!3805931 e!3805929)))

(declare-fun res!2582040 () Bool)

(assert (=> b!6256347 (=> res!2582040 e!3805929)))

(assert (=> b!6256347 (= res!2582040 call!527961)))

(declare-fun b!6256348 () Bool)

(assert (=> b!6256348 (= e!3805930 (matchR!8364 (derivativeStep!4890 lt!2349533 (head!12862 s!2326)) (tail!11947 s!2326)))))

(declare-fun b!6256349 () Bool)

(declare-fun res!2582036 () Bool)

(assert (=> b!6256349 (=> res!2582036 e!3805929)))

(assert (=> b!6256349 (= res!2582036 (not (isEmpty!36746 (tail!11947 s!2326))))))

(declare-fun b!6256350 () Bool)

(declare-fun res!2582038 () Bool)

(assert (=> b!6256350 (=> (not res!2582038) (not e!3805932))))

(assert (=> b!6256350 (= res!2582038 (isEmpty!36746 (tail!11947 s!2326)))))

(declare-fun b!6256351 () Bool)

(assert (=> b!6256351 (= e!3805927 (= lt!2349687 call!527961))))

(assert (= (and d!1962622 c!1132616) b!6256346))

(assert (= (and d!1962622 (not c!1132616)) b!6256348))

(assert (= (and d!1962622 c!1132615) b!6256351))

(assert (= (and d!1962622 (not c!1132615)) b!6256340))

(assert (= (and b!6256340 c!1132617) b!6256342))

(assert (= (and b!6256340 (not c!1132617)) b!6256338))

(assert (= (and b!6256338 (not res!2582037)) b!6256339))

(assert (= (and b!6256339 res!2582035) b!6256343))

(assert (= (and b!6256343 res!2582034) b!6256350))

(assert (= (and b!6256350 res!2582038) b!6256345))

(assert (= (and b!6256339 (not res!2582039)) b!6256341))

(assert (= (and b!6256341 res!2582033) b!6256347))

(assert (= (and b!6256347 (not res!2582040)) b!6256349))

(assert (= (and b!6256349 (not res!2582036)) b!6256344))

(assert (= (or b!6256351 b!6256347 b!6256343) bm!527956))

(assert (=> b!6256349 m!7079116))

(assert (=> b!6256349 m!7079116))

(assert (=> b!6256349 m!7079118))

(assert (=> bm!527956 m!7079112))

(assert (=> b!6256344 m!7079120))

(assert (=> b!6256348 m!7079120))

(assert (=> b!6256348 m!7079120))

(declare-fun m!7079166 () Bool)

(assert (=> b!6256348 m!7079166))

(assert (=> b!6256348 m!7079116))

(assert (=> b!6256348 m!7079166))

(assert (=> b!6256348 m!7079116))

(declare-fun m!7079168 () Bool)

(assert (=> b!6256348 m!7079168))

(assert (=> b!6256345 m!7079120))

(declare-fun m!7079170 () Bool)

(assert (=> b!6256346 m!7079170))

(assert (=> d!1962622 m!7079112))

(assert (=> d!1962622 m!7079164))

(assert (=> b!6256350 m!7079116))

(assert (=> b!6256350 m!7079116))

(assert (=> b!6256350 m!7079118))

(assert (=> b!6255555 d!1962622))

(declare-fun bs!1557944 () Bool)

(declare-fun d!1962624 () Bool)

(assert (= bs!1557944 (and d!1962624 d!1962616)))

(declare-fun lambda!342394 () Int)

(assert (=> bs!1557944 (= lambda!342394 lambda!342393)))

(declare-fun bs!1557945 () Bool)

(assert (= bs!1557945 (and d!1962624 d!1962580)))

(assert (=> bs!1557945 (= lambda!342394 lambda!342374)))

(declare-fun bs!1557946 () Bool)

(assert (= bs!1557946 (and d!1962624 d!1962578)))

(assert (=> bs!1557946 (= lambda!342394 lambda!342371)))

(declare-fun bs!1557947 () Bool)

(assert (= bs!1557947 (and d!1962624 d!1962486)))

(assert (=> bs!1557947 (= lambda!342394 lambda!342355)))

(declare-fun bs!1557948 () Bool)

(assert (= bs!1557948 (and d!1962624 d!1962576)))

(assert (=> bs!1557948 (= lambda!342394 lambda!342368)))

(declare-fun b!6256352 () Bool)

(declare-fun e!3805936 () Regex!16181)

(assert (=> b!6256352 (= e!3805936 EmptyExpr!16181)))

(declare-fun b!6256353 () Bool)

(declare-fun e!3805935 () Bool)

(declare-fun lt!2349688 () Regex!16181)

(assert (=> b!6256353 (= e!3805935 (isConcat!1110 lt!2349688))))

(declare-fun b!6256354 () Bool)

(declare-fun e!3805933 () Bool)

(assert (=> b!6256354 (= e!3805933 (isEmpty!36742 (t!378392 lt!2349529)))))

(declare-fun b!6256355 () Bool)

(declare-fun e!3805938 () Bool)

(assert (=> b!6256355 (= e!3805938 (isEmptyExpr!1587 lt!2349688))))

(declare-fun b!6256356 () Bool)

(declare-fun e!3805937 () Regex!16181)

(assert (=> b!6256356 (= e!3805937 (h!71166 lt!2349529))))

(declare-fun b!6256357 () Bool)

(assert (=> b!6256357 (= e!3805936 (Concat!25026 (h!71166 lt!2349529) (generalisedConcat!1778 (t!378392 lt!2349529))))))

(declare-fun b!6256358 () Bool)

(declare-fun e!3805934 () Bool)

(assert (=> b!6256358 (= e!3805934 e!3805938)))

(declare-fun c!1132619 () Bool)

(assert (=> b!6256358 (= c!1132619 (isEmpty!36742 lt!2349529))))

(declare-fun b!6256359 () Bool)

(assert (=> b!6256359 (= e!3805935 (= lt!2349688 (head!12863 lt!2349529)))))

(declare-fun b!6256360 () Bool)

(assert (=> b!6256360 (= e!3805938 e!3805935)))

(declare-fun c!1132618 () Bool)

(assert (=> b!6256360 (= c!1132618 (isEmpty!36742 (tail!11948 lt!2349529)))))

(declare-fun b!6256361 () Bool)

(assert (=> b!6256361 (= e!3805937 e!3805936)))

(declare-fun c!1132620 () Bool)

(assert (=> b!6256361 (= c!1132620 ((_ is Cons!64718) lt!2349529))))

(assert (=> d!1962624 e!3805934))

(declare-fun res!2582042 () Bool)

(assert (=> d!1962624 (=> (not res!2582042) (not e!3805934))))

(assert (=> d!1962624 (= res!2582042 (validRegex!7917 lt!2349688))))

(assert (=> d!1962624 (= lt!2349688 e!3805937)))

(declare-fun c!1132621 () Bool)

(assert (=> d!1962624 (= c!1132621 e!3805933)))

(declare-fun res!2582041 () Bool)

(assert (=> d!1962624 (=> (not res!2582041) (not e!3805933))))

(assert (=> d!1962624 (= res!2582041 ((_ is Cons!64718) lt!2349529))))

(assert (=> d!1962624 (forall!15300 lt!2349529 lambda!342394)))

(assert (=> d!1962624 (= (generalisedConcat!1778 lt!2349529) lt!2349688)))

(assert (= (and d!1962624 res!2582041) b!6256354))

(assert (= (and d!1962624 c!1132621) b!6256356))

(assert (= (and d!1962624 (not c!1132621)) b!6256361))

(assert (= (and b!6256361 c!1132620) b!6256357))

(assert (= (and b!6256361 (not c!1132620)) b!6256352))

(assert (= (and d!1962624 res!2582042) b!6256358))

(assert (= (and b!6256358 c!1132619) b!6256355))

(assert (= (and b!6256358 (not c!1132619)) b!6256360))

(assert (= (and b!6256360 c!1132618) b!6256359))

(assert (= (and b!6256360 (not c!1132618)) b!6256353))

(declare-fun m!7079172 () Bool)

(assert (=> b!6256355 m!7079172))

(declare-fun m!7079174 () Bool)

(assert (=> b!6256359 m!7079174))

(declare-fun m!7079176 () Bool)

(assert (=> b!6256360 m!7079176))

(assert (=> b!6256360 m!7079176))

(declare-fun m!7079178 () Bool)

(assert (=> b!6256360 m!7079178))

(declare-fun m!7079180 () Bool)

(assert (=> b!6256354 m!7079180))

(declare-fun m!7079182 () Bool)

(assert (=> b!6256358 m!7079182))

(declare-fun m!7079184 () Bool)

(assert (=> b!6256357 m!7079184))

(declare-fun m!7079186 () Bool)

(assert (=> b!6256353 m!7079186))

(declare-fun m!7079188 () Bool)

(assert (=> d!1962624 m!7079188))

(declare-fun m!7079190 () Bool)

(assert (=> d!1962624 m!7079190))

(assert (=> b!6255555 d!1962624))

(declare-fun d!1962626 () Bool)

(declare-fun c!1132622 () Bool)

(assert (=> d!1962626 (= c!1132622 (isEmpty!36746 s!2326))))

(declare-fun e!3805939 () Bool)

(assert (=> d!1962626 (= (matchZipper!2193 lt!2349541 s!2326) e!3805939)))

(declare-fun b!6256362 () Bool)

(assert (=> b!6256362 (= e!3805939 (nullableZipper!1951 lt!2349541))))

(declare-fun b!6256363 () Bool)

(assert (=> b!6256363 (= e!3805939 (matchZipper!2193 (derivationStepZipper!2147 lt!2349541 (head!12862 s!2326)) (tail!11947 s!2326)))))

(assert (= (and d!1962626 c!1132622) b!6256362))

(assert (= (and d!1962626 (not c!1132622)) b!6256363))

(assert (=> d!1962626 m!7079112))

(declare-fun m!7079192 () Bool)

(assert (=> b!6256362 m!7079192))

(assert (=> b!6256363 m!7079120))

(assert (=> b!6256363 m!7079120))

(declare-fun m!7079194 () Bool)

(assert (=> b!6256363 m!7079194))

(assert (=> b!6256363 m!7079116))

(assert (=> b!6256363 m!7079194))

(assert (=> b!6256363 m!7079116))

(declare-fun m!7079196 () Bool)

(assert (=> b!6256363 m!7079196))

(assert (=> b!6255555 d!1962626))

(declare-fun bs!1557949 () Bool)

(declare-fun d!1962628 () Bool)

(assert (= bs!1557949 (and d!1962628 d!1962616)))

(declare-fun lambda!342395 () Int)

(assert (=> bs!1557949 (= lambda!342395 lambda!342393)))

(declare-fun bs!1557950 () Bool)

(assert (= bs!1557950 (and d!1962628 d!1962580)))

(assert (=> bs!1557950 (= lambda!342395 lambda!342374)))

(declare-fun bs!1557951 () Bool)

(assert (= bs!1557951 (and d!1962628 d!1962624)))

(assert (=> bs!1557951 (= lambda!342395 lambda!342394)))

(declare-fun bs!1557952 () Bool)

(assert (= bs!1557952 (and d!1962628 d!1962578)))

(assert (=> bs!1557952 (= lambda!342395 lambda!342371)))

(declare-fun bs!1557953 () Bool)

(assert (= bs!1557953 (and d!1962628 d!1962486)))

(assert (=> bs!1557953 (= lambda!342395 lambda!342355)))

(declare-fun bs!1557954 () Bool)

(assert (= bs!1557954 (and d!1962628 d!1962576)))

(assert (=> bs!1557954 (= lambda!342395 lambda!342368)))

(assert (=> d!1962628 (= (inv!83699 lt!2349551) (forall!15300 (exprs!6065 lt!2349551) lambda!342395))))

(declare-fun bs!1557955 () Bool)

(assert (= bs!1557955 d!1962628))

(declare-fun m!7079198 () Bool)

(assert (=> bs!1557955 m!7079198))

(assert (=> b!6255555 d!1962628))

(declare-fun b!6256370 () Bool)

(assert (=> b!6256370 true))

(declare-fun bs!1557956 () Bool)

(declare-fun b!6256372 () Bool)

(assert (= bs!1557956 (and b!6256372 b!6256370)))

(declare-fun lt!2349700 () Int)

(declare-fun lambda!342403 () Int)

(declare-fun lambda!342404 () Int)

(declare-fun lt!2349699 () Int)

(assert (=> bs!1557956 (= (= lt!2349699 lt!2349700) (= lambda!342404 lambda!342403))))

(assert (=> b!6256372 true))

(declare-fun d!1962630 () Bool)

(declare-fun e!3805944 () Bool)

(assert (=> d!1962630 e!3805944))

(declare-fun res!2582045 () Bool)

(assert (=> d!1962630 (=> (not res!2582045) (not e!3805944))))

(assert (=> d!1962630 (= res!2582045 (>= lt!2349699 0))))

(declare-fun e!3805945 () Int)

(assert (=> d!1962630 (= lt!2349699 e!3805945)))

(declare-fun c!1132631 () Bool)

(assert (=> d!1962630 (= c!1132631 ((_ is Cons!64719) lt!2349542))))

(assert (=> d!1962630 (= (zipperDepth!306 lt!2349542) lt!2349699)))

(assert (=> b!6256370 (= e!3805945 lt!2349700)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!199 (Context!11130) Int)

(assert (=> b!6256370 (= lt!2349700 (maxBigInt!0 (contextDepth!199 (h!71167 lt!2349542)) (zipperDepth!306 (t!378393 lt!2349542))))))

(declare-fun lt!2349697 () Unit!158055)

(declare-fun lambda!342402 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!183 (List!64843 Int Int Int) Unit!158055)

(assert (=> b!6256370 (= lt!2349697 (lemmaForallContextDepthBiggerThanTransitive!183 (t!378393 lt!2349542) lt!2349700 (zipperDepth!306 (t!378393 lt!2349542)) lambda!342402))))

(declare-fun forall!15301 (List!64843 Int) Bool)

(assert (=> b!6256370 (forall!15301 (t!378393 lt!2349542) lambda!342403)))

(declare-fun lt!2349698 () Unit!158055)

(assert (=> b!6256370 (= lt!2349698 lt!2349697)))

(declare-fun b!6256371 () Bool)

(assert (=> b!6256371 (= e!3805945 0)))

(assert (=> b!6256372 (= e!3805944 (forall!15301 lt!2349542 lambda!342404))))

(assert (= (and d!1962630 c!1132631) b!6256370))

(assert (= (and d!1962630 (not c!1132631)) b!6256371))

(assert (= (and d!1962630 res!2582045) b!6256372))

(declare-fun m!7079200 () Bool)

(assert (=> b!6256370 m!7079200))

(declare-fun m!7079202 () Bool)

(assert (=> b!6256370 m!7079202))

(declare-fun m!7079204 () Bool)

(assert (=> b!6256370 m!7079204))

(declare-fun m!7079206 () Bool)

(assert (=> b!6256370 m!7079206))

(assert (=> b!6256370 m!7079202))

(assert (=> b!6256370 m!7079202))

(declare-fun m!7079208 () Bool)

(assert (=> b!6256370 m!7079208))

(assert (=> b!6256370 m!7079200))

(declare-fun m!7079210 () Bool)

(assert (=> b!6256372 m!7079210))

(assert (=> b!6255535 d!1962630))

(declare-fun bs!1557957 () Bool)

(declare-fun b!6256375 () Bool)

(assert (= bs!1557957 (and b!6256375 b!6256370)))

(declare-fun lambda!342405 () Int)

(assert (=> bs!1557957 (= lambda!342405 lambda!342402)))

(declare-fun lt!2349704 () Int)

(declare-fun lambda!342406 () Int)

(assert (=> bs!1557957 (= (= lt!2349704 lt!2349700) (= lambda!342406 lambda!342403))))

(declare-fun bs!1557958 () Bool)

(assert (= bs!1557958 (and b!6256375 b!6256372)))

(assert (=> bs!1557958 (= (= lt!2349704 lt!2349699) (= lambda!342406 lambda!342404))))

(assert (=> b!6256375 true))

(declare-fun bs!1557959 () Bool)

(declare-fun b!6256377 () Bool)

(assert (= bs!1557959 (and b!6256377 b!6256370)))

(declare-fun lt!2349703 () Int)

(declare-fun lambda!342407 () Int)

(assert (=> bs!1557959 (= (= lt!2349703 lt!2349700) (= lambda!342407 lambda!342403))))

(declare-fun bs!1557960 () Bool)

(assert (= bs!1557960 (and b!6256377 b!6256372)))

(assert (=> bs!1557960 (= (= lt!2349703 lt!2349699) (= lambda!342407 lambda!342404))))

(declare-fun bs!1557961 () Bool)

(assert (= bs!1557961 (and b!6256377 b!6256375)))

(assert (=> bs!1557961 (= (= lt!2349703 lt!2349704) (= lambda!342407 lambda!342406))))

(assert (=> b!6256377 true))

(declare-fun d!1962632 () Bool)

(declare-fun e!3805946 () Bool)

(assert (=> d!1962632 e!3805946))

(declare-fun res!2582046 () Bool)

(assert (=> d!1962632 (=> (not res!2582046) (not e!3805946))))

(assert (=> d!1962632 (= res!2582046 (>= lt!2349703 0))))

(declare-fun e!3805947 () Int)

(assert (=> d!1962632 (= lt!2349703 e!3805947)))

(declare-fun c!1132632 () Bool)

(assert (=> d!1962632 (= c!1132632 ((_ is Cons!64719) zl!343))))

(assert (=> d!1962632 (= (zipperDepth!306 zl!343) lt!2349703)))

(assert (=> b!6256375 (= e!3805947 lt!2349704)))

(assert (=> b!6256375 (= lt!2349704 (maxBigInt!0 (contextDepth!199 (h!71167 zl!343)) (zipperDepth!306 (t!378393 zl!343))))))

(declare-fun lt!2349701 () Unit!158055)

(assert (=> b!6256375 (= lt!2349701 (lemmaForallContextDepthBiggerThanTransitive!183 (t!378393 zl!343) lt!2349704 (zipperDepth!306 (t!378393 zl!343)) lambda!342405))))

(assert (=> b!6256375 (forall!15301 (t!378393 zl!343) lambda!342406)))

(declare-fun lt!2349702 () Unit!158055)

(assert (=> b!6256375 (= lt!2349702 lt!2349701)))

(declare-fun b!6256376 () Bool)

(assert (=> b!6256376 (= e!3805947 0)))

(assert (=> b!6256377 (= e!3805946 (forall!15301 zl!343 lambda!342407))))

(assert (= (and d!1962632 c!1132632) b!6256375))

(assert (= (and d!1962632 (not c!1132632)) b!6256376))

(assert (= (and d!1962632 res!2582046) b!6256377))

(declare-fun m!7079212 () Bool)

(assert (=> b!6256375 m!7079212))

(declare-fun m!7079214 () Bool)

(assert (=> b!6256375 m!7079214))

(declare-fun m!7079216 () Bool)

(assert (=> b!6256375 m!7079216))

(declare-fun m!7079218 () Bool)

(assert (=> b!6256375 m!7079218))

(assert (=> b!6256375 m!7079214))

(assert (=> b!6256375 m!7079214))

(declare-fun m!7079220 () Bool)

(assert (=> b!6256375 m!7079220))

(assert (=> b!6256375 m!7079212))

(declare-fun m!7079222 () Bool)

(assert (=> b!6256377 m!7079222))

(assert (=> b!6255535 d!1962632))

(assert (=> b!6255539 d!1962530))

(declare-fun d!1962634 () Bool)

(declare-fun e!3805948 () Bool)

(assert (=> d!1962634 (= (matchZipper!2193 ((_ map or) lt!2349534 lt!2349560) (t!378394 s!2326)) e!3805948)))

(declare-fun res!2582047 () Bool)

(assert (=> d!1962634 (=> res!2582047 e!3805948)))

(assert (=> d!1962634 (= res!2582047 (matchZipper!2193 lt!2349534 (t!378394 s!2326)))))

(declare-fun lt!2349705 () Unit!158055)

(assert (=> d!1962634 (= lt!2349705 (choose!46424 lt!2349534 lt!2349560 (t!378394 s!2326)))))

(assert (=> d!1962634 (= (lemmaZipperConcatMatchesSameAsBothZippers!1012 lt!2349534 lt!2349560 (t!378394 s!2326)) lt!2349705)))

(declare-fun b!6256378 () Bool)

(assert (=> b!6256378 (= e!3805948 (matchZipper!2193 lt!2349560 (t!378394 s!2326)))))

(assert (= (and d!1962634 (not res!2582047)) b!6256378))

(declare-fun m!7079224 () Bool)

(assert (=> d!1962634 m!7079224))

(assert (=> d!1962634 m!7078430))

(declare-fun m!7079226 () Bool)

(assert (=> d!1962634 m!7079226))

(assert (=> b!6256378 m!7078536))

(assert (=> b!6255539 d!1962634))

(declare-fun d!1962636 () Bool)

(assert (=> d!1962636 (= (flatMap!1686 lt!2349545 lambda!342315) (dynLambda!25566 lambda!342315 lt!2349551))))

(declare-fun lt!2349706 () Unit!158055)

(assert (=> d!1962636 (= lt!2349706 (choose!46426 lt!2349545 lt!2349551 lambda!342315))))

(assert (=> d!1962636 (= lt!2349545 (store ((as const (Array Context!11130 Bool)) false) lt!2349551 true))))

(assert (=> d!1962636 (= (lemmaFlatMapOnSingletonSet!1212 lt!2349545 lt!2349551 lambda!342315) lt!2349706)))

(declare-fun b_lambda!238061 () Bool)

(assert (=> (not b_lambda!238061) (not d!1962636)))

(declare-fun bs!1557962 () Bool)

(assert (= bs!1557962 d!1962636))

(assert (=> bs!1557962 m!7078510))

(declare-fun m!7079228 () Bool)

(assert (=> bs!1557962 m!7079228))

(declare-fun m!7079230 () Bool)

(assert (=> bs!1557962 m!7079230))

(assert (=> bs!1557962 m!7078524))

(assert (=> b!6255539 d!1962636))

(declare-fun d!1962638 () Bool)

(assert (=> d!1962638 (= (flatMap!1686 lt!2349545 lambda!342315) (choose!46425 lt!2349545 lambda!342315))))

(declare-fun bs!1557963 () Bool)

(assert (= bs!1557963 d!1962638))

(declare-fun m!7079232 () Bool)

(assert (=> bs!1557963 m!7079232))

(assert (=> b!6255539 d!1962638))

(declare-fun d!1962640 () Bool)

(declare-fun c!1132633 () Bool)

(assert (=> d!1962640 (= c!1132633 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805949 () Bool)

(assert (=> d!1962640 (= (matchZipper!2193 lt!2349552 (t!378394 s!2326)) e!3805949)))

(declare-fun b!6256379 () Bool)

(assert (=> b!6256379 (= e!3805949 (nullableZipper!1951 lt!2349552))))

(declare-fun b!6256380 () Bool)

(assert (=> b!6256380 (= e!3805949 (matchZipper!2193 (derivationStepZipper!2147 lt!2349552 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962640 c!1132633) b!6256379))

(assert (= (and d!1962640 (not c!1132633)) b!6256380))

(assert (=> d!1962640 m!7078798))

(declare-fun m!7079234 () Bool)

(assert (=> b!6256379 m!7079234))

(assert (=> b!6256380 m!7078802))

(assert (=> b!6256380 m!7078802))

(declare-fun m!7079236 () Bool)

(assert (=> b!6256380 m!7079236))

(assert (=> b!6256380 m!7078806))

(assert (=> b!6256380 m!7079236))

(assert (=> b!6256380 m!7078806))

(declare-fun m!7079238 () Bool)

(assert (=> b!6256380 m!7079238))

(assert (=> b!6255539 d!1962640))

(declare-fun d!1962642 () Bool)

(declare-fun c!1132634 () Bool)

(assert (=> d!1962642 (= c!1132634 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3805950 () Bool)

(assert (=> d!1962642 (= (matchZipper!2193 lt!2349558 (t!378394 s!2326)) e!3805950)))

(declare-fun b!6256381 () Bool)

(assert (=> b!6256381 (= e!3805950 (nullableZipper!1951 lt!2349558))))

(declare-fun b!6256382 () Bool)

(assert (=> b!6256382 (= e!3805950 (matchZipper!2193 (derivationStepZipper!2147 lt!2349558 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1962642 c!1132634) b!6256381))

(assert (= (and d!1962642 (not c!1132634)) b!6256382))

(assert (=> d!1962642 m!7078798))

(declare-fun m!7079240 () Bool)

(assert (=> b!6256381 m!7079240))

(assert (=> b!6256382 m!7078802))

(assert (=> b!6256382 m!7078802))

(declare-fun m!7079242 () Bool)

(assert (=> b!6256382 m!7079242))

(assert (=> b!6256382 m!7078806))

(assert (=> b!6256382 m!7079242))

(assert (=> b!6256382 m!7078806))

(declare-fun m!7079244 () Bool)

(assert (=> b!6256382 m!7079244))

(assert (=> b!6255539 d!1962642))

(declare-fun d!1962644 () Bool)

(assert (=> d!1962644 (= (nullable!6174 (regOne!32874 (regOne!32874 r!7292))) (nullableFct!2126 (regOne!32874 (regOne!32874 r!7292))))))

(declare-fun bs!1557964 () Bool)

(assert (= bs!1557964 d!1962644))

(declare-fun m!7079246 () Bool)

(assert (=> bs!1557964 m!7079246))

(assert (=> b!6255558 d!1962644))

(declare-fun d!1962646 () Bool)

(assert (=> d!1962646 (= (isEmpty!36743 (t!378393 zl!343)) ((_ is Nil!64719) (t!378393 zl!343)))))

(assert (=> b!6255557 d!1962646))

(declare-fun c!1132640 () Bool)

(declare-fun bm!527963 () Bool)

(declare-fun call!527970 () Bool)

(declare-fun c!1132639 () Bool)

(assert (=> bm!527963 (= call!527970 (validRegex!7917 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))))))

(declare-fun b!6256401 () Bool)

(declare-fun e!3805968 () Bool)

(declare-fun call!527969 () Bool)

(assert (=> b!6256401 (= e!3805968 call!527969)))

(declare-fun bm!527964 () Bool)

(declare-fun call!527968 () Bool)

(assert (=> bm!527964 (= call!527968 call!527970)))

(declare-fun b!6256402 () Bool)

(declare-fun e!3805967 () Bool)

(declare-fun e!3805970 () Bool)

(assert (=> b!6256402 (= e!3805967 e!3805970)))

(declare-fun res!2582060 () Bool)

(assert (=> b!6256402 (= res!2582060 (not (nullable!6174 (reg!16510 r!7292))))))

(assert (=> b!6256402 (=> (not res!2582060) (not e!3805970))))

(declare-fun b!6256403 () Bool)

(declare-fun e!3805971 () Bool)

(assert (=> b!6256403 (= e!3805967 e!3805971)))

(assert (=> b!6256403 (= c!1132639 ((_ is Union!16181) r!7292))))

(declare-fun b!6256404 () Bool)

(declare-fun e!3805966 () Bool)

(declare-fun e!3805969 () Bool)

(assert (=> b!6256404 (= e!3805966 e!3805969)))

(declare-fun res!2582061 () Bool)

(assert (=> b!6256404 (=> (not res!2582061) (not e!3805969))))

(assert (=> b!6256404 (= res!2582061 call!527968)))

(declare-fun d!1962648 () Bool)

(declare-fun res!2582059 () Bool)

(declare-fun e!3805965 () Bool)

(assert (=> d!1962648 (=> res!2582059 e!3805965)))

(assert (=> d!1962648 (= res!2582059 ((_ is ElementMatch!16181) r!7292))))

(assert (=> d!1962648 (= (validRegex!7917 r!7292) e!3805965)))

(declare-fun b!6256405 () Bool)

(assert (=> b!6256405 (= e!3805970 call!527970)))

(declare-fun b!6256406 () Bool)

(assert (=> b!6256406 (= e!3805969 call!527969)))

(declare-fun b!6256407 () Bool)

(declare-fun res!2582062 () Bool)

(assert (=> b!6256407 (=> res!2582062 e!3805966)))

(assert (=> b!6256407 (= res!2582062 (not ((_ is Concat!25026) r!7292)))))

(assert (=> b!6256407 (= e!3805971 e!3805966)))

(declare-fun b!6256408 () Bool)

(declare-fun res!2582058 () Bool)

(assert (=> b!6256408 (=> (not res!2582058) (not e!3805968))))

(assert (=> b!6256408 (= res!2582058 call!527968)))

(assert (=> b!6256408 (= e!3805971 e!3805968)))

(declare-fun bm!527965 () Bool)

(assert (=> bm!527965 (= call!527969 (validRegex!7917 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))))))

(declare-fun b!6256409 () Bool)

(assert (=> b!6256409 (= e!3805965 e!3805967)))

(assert (=> b!6256409 (= c!1132640 ((_ is Star!16181) r!7292))))

(assert (= (and d!1962648 (not res!2582059)) b!6256409))

(assert (= (and b!6256409 c!1132640) b!6256402))

(assert (= (and b!6256409 (not c!1132640)) b!6256403))

(assert (= (and b!6256402 res!2582060) b!6256405))

(assert (= (and b!6256403 c!1132639) b!6256408))

(assert (= (and b!6256403 (not c!1132639)) b!6256407))

(assert (= (and b!6256408 res!2582058) b!6256401))

(assert (= (and b!6256407 (not res!2582062)) b!6256404))

(assert (= (and b!6256404 res!2582061) b!6256406))

(assert (= (or b!6256401 b!6256406) bm!527965))

(assert (= (or b!6256408 b!6256404) bm!527964))

(assert (= (or b!6256405 bm!527964) bm!527963))

(declare-fun m!7079248 () Bool)

(assert (=> bm!527963 m!7079248))

(declare-fun m!7079250 () Bool)

(assert (=> b!6256402 m!7079250))

(declare-fun m!7079252 () Bool)

(assert (=> bm!527965 m!7079252))

(assert (=> start!622298 d!1962648))

(declare-fun d!1962650 () Bool)

(declare-fun lt!2349709 () Int)

(assert (=> d!1962650 (>= lt!2349709 0)))

(declare-fun e!3805974 () Int)

(assert (=> d!1962650 (= lt!2349709 e!3805974)))

(declare-fun c!1132643 () Bool)

(assert (=> d!1962650 (= c!1132643 ((_ is Cons!64719) lt!2349542))))

(assert (=> d!1962650 (= (zipperDepthTotal!334 lt!2349542) lt!2349709)))

(declare-fun b!6256414 () Bool)

(assert (=> b!6256414 (= e!3805974 (+ (contextDepthTotal!304 (h!71167 lt!2349542)) (zipperDepthTotal!334 (t!378393 lt!2349542))))))

(declare-fun b!6256415 () Bool)

(assert (=> b!6256415 (= e!3805974 0)))

(assert (= (and d!1962650 c!1132643) b!6256414))

(assert (= (and d!1962650 (not c!1132643)) b!6256415))

(declare-fun m!7079254 () Bool)

(assert (=> b!6256414 m!7079254))

(declare-fun m!7079256 () Bool)

(assert (=> b!6256414 m!7079256))

(assert (=> b!6255537 d!1962650))

(declare-fun d!1962652 () Bool)

(declare-fun lt!2349710 () Int)

(assert (=> d!1962652 (>= lt!2349710 0)))

(declare-fun e!3805975 () Int)

(assert (=> d!1962652 (= lt!2349710 e!3805975)))

(declare-fun c!1132644 () Bool)

(assert (=> d!1962652 (= c!1132644 ((_ is Cons!64719) zl!343))))

(assert (=> d!1962652 (= (zipperDepthTotal!334 zl!343) lt!2349710)))

(declare-fun b!6256416 () Bool)

(assert (=> b!6256416 (= e!3805975 (+ (contextDepthTotal!304 (h!71167 zl!343)) (zipperDepthTotal!334 (t!378393 zl!343))))))

(declare-fun b!6256417 () Bool)

(assert (=> b!6256417 (= e!3805975 0)))

(assert (= (and d!1962652 c!1132644) b!6256416))

(assert (= (and d!1962652 (not c!1132644)) b!6256417))

(assert (=> b!6256416 m!7078424))

(declare-fun m!7079258 () Bool)

(assert (=> b!6256416 m!7079258))

(assert (=> b!6255537 d!1962652))

(declare-fun b!6256422 () Bool)

(declare-fun e!3805978 () Bool)

(declare-fun tp!1745477 () Bool)

(declare-fun tp!1745478 () Bool)

(assert (=> b!6256422 (= e!3805978 (and tp!1745477 tp!1745478))))

(assert (=> b!6255561 (= tp!1745414 e!3805978)))

(assert (= (and b!6255561 ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343)))) b!6256422))

(declare-fun b!6256436 () Bool)

(declare-fun e!3805981 () Bool)

(declare-fun tp!1745489 () Bool)

(declare-fun tp!1745491 () Bool)

(assert (=> b!6256436 (= e!3805981 (and tp!1745489 tp!1745491))))

(declare-fun b!6256434 () Bool)

(declare-fun tp!1745493 () Bool)

(declare-fun tp!1745490 () Bool)

(assert (=> b!6256434 (= e!3805981 (and tp!1745493 tp!1745490))))

(assert (=> b!6255531 (= tp!1745409 e!3805981)))

(declare-fun b!6256435 () Bool)

(declare-fun tp!1745492 () Bool)

(assert (=> b!6256435 (= e!3805981 tp!1745492)))

(declare-fun b!6256433 () Bool)

(assert (=> b!6256433 (= e!3805981 tp_is_empty!41615)))

(assert (= (and b!6255531 ((_ is ElementMatch!16181) (regOne!32875 r!7292))) b!6256433))

(assert (= (and b!6255531 ((_ is Concat!25026) (regOne!32875 r!7292))) b!6256434))

(assert (= (and b!6255531 ((_ is Star!16181) (regOne!32875 r!7292))) b!6256435))

(assert (= (and b!6255531 ((_ is Union!16181) (regOne!32875 r!7292))) b!6256436))

(declare-fun b!6256440 () Bool)

(declare-fun e!3805982 () Bool)

(declare-fun tp!1745494 () Bool)

(declare-fun tp!1745496 () Bool)

(assert (=> b!6256440 (= e!3805982 (and tp!1745494 tp!1745496))))

(declare-fun b!6256438 () Bool)

(declare-fun tp!1745498 () Bool)

(declare-fun tp!1745495 () Bool)

(assert (=> b!6256438 (= e!3805982 (and tp!1745498 tp!1745495))))

(assert (=> b!6255531 (= tp!1745405 e!3805982)))

(declare-fun b!6256439 () Bool)

(declare-fun tp!1745497 () Bool)

(assert (=> b!6256439 (= e!3805982 tp!1745497)))

(declare-fun b!6256437 () Bool)

(assert (=> b!6256437 (= e!3805982 tp_is_empty!41615)))

(assert (= (and b!6255531 ((_ is ElementMatch!16181) (regTwo!32875 r!7292))) b!6256437))

(assert (= (and b!6255531 ((_ is Concat!25026) (regTwo!32875 r!7292))) b!6256438))

(assert (= (and b!6255531 ((_ is Star!16181) (regTwo!32875 r!7292))) b!6256439))

(assert (= (and b!6255531 ((_ is Union!16181) (regTwo!32875 r!7292))) b!6256440))

(declare-fun b!6256448 () Bool)

(declare-fun e!3805988 () Bool)

(declare-fun tp!1745503 () Bool)

(assert (=> b!6256448 (= e!3805988 tp!1745503)))

(declare-fun e!3805987 () Bool)

(declare-fun b!6256447 () Bool)

(declare-fun tp!1745504 () Bool)

(assert (=> b!6256447 (= e!3805987 (and (inv!83699 (h!71167 (t!378393 zl!343))) e!3805988 tp!1745504))))

(assert (=> b!6255542 (= tp!1745411 e!3805987)))

(assert (= b!6256447 b!6256448))

(assert (= (and b!6255542 ((_ is Cons!64719) (t!378393 zl!343))) b!6256447))

(declare-fun m!7079260 () Bool)

(assert (=> b!6256447 m!7079260))

(declare-fun b!6256453 () Bool)

(declare-fun e!3805991 () Bool)

(declare-fun tp!1745507 () Bool)

(assert (=> b!6256453 (= e!3805991 (and tp_is_empty!41615 tp!1745507))))

(assert (=> b!6255556 (= tp!1745410 e!3805991)))

(assert (= (and b!6255556 ((_ is Cons!64720) (t!378394 s!2326))) b!6256453))

(declare-fun b!6256454 () Bool)

(declare-fun e!3805992 () Bool)

(declare-fun tp!1745508 () Bool)

(declare-fun tp!1745509 () Bool)

(assert (=> b!6256454 (= e!3805992 (and tp!1745508 tp!1745509))))

(assert (=> b!6255560 (= tp!1745406 e!3805992)))

(assert (= (and b!6255560 ((_ is Cons!64718) (exprs!6065 setElem!42536))) b!6256454))

(declare-fun condSetEmpty!42542 () Bool)

(assert (=> setNonEmpty!42536 (= condSetEmpty!42542 (= setRest!42536 ((as const (Array Context!11130 Bool)) false)))))

(declare-fun setRes!42542 () Bool)

(assert (=> setNonEmpty!42536 (= tp!1745412 setRes!42542)))

(declare-fun setIsEmpty!42542 () Bool)

(assert (=> setIsEmpty!42542 setRes!42542))

(declare-fun e!3805995 () Bool)

(declare-fun setElem!42542 () Context!11130)

(declare-fun tp!1745514 () Bool)

(declare-fun setNonEmpty!42542 () Bool)

(assert (=> setNonEmpty!42542 (= setRes!42542 (and tp!1745514 (inv!83699 setElem!42542) e!3805995))))

(declare-fun setRest!42542 () (InoxSet Context!11130))

(assert (=> setNonEmpty!42542 (= setRest!42536 ((_ map or) (store ((as const (Array Context!11130 Bool)) false) setElem!42542 true) setRest!42542))))

(declare-fun b!6256459 () Bool)

(declare-fun tp!1745515 () Bool)

(assert (=> b!6256459 (= e!3805995 tp!1745515)))

(assert (= (and setNonEmpty!42536 condSetEmpty!42542) setIsEmpty!42542))

(assert (= (and setNonEmpty!42536 (not condSetEmpty!42542)) setNonEmpty!42542))

(assert (= setNonEmpty!42542 b!6256459))

(declare-fun m!7079262 () Bool)

(assert (=> setNonEmpty!42542 m!7079262))

(declare-fun b!6256463 () Bool)

(declare-fun e!3805996 () Bool)

(declare-fun tp!1745516 () Bool)

(declare-fun tp!1745518 () Bool)

(assert (=> b!6256463 (= e!3805996 (and tp!1745516 tp!1745518))))

(declare-fun b!6256461 () Bool)

(declare-fun tp!1745520 () Bool)

(declare-fun tp!1745517 () Bool)

(assert (=> b!6256461 (= e!3805996 (and tp!1745520 tp!1745517))))

(assert (=> b!6255553 (= tp!1745408 e!3805996)))

(declare-fun b!6256462 () Bool)

(declare-fun tp!1745519 () Bool)

(assert (=> b!6256462 (= e!3805996 tp!1745519)))

(declare-fun b!6256460 () Bool)

(assert (=> b!6256460 (= e!3805996 tp_is_empty!41615)))

(assert (= (and b!6255553 ((_ is ElementMatch!16181) (reg!16510 r!7292))) b!6256460))

(assert (= (and b!6255553 ((_ is Concat!25026) (reg!16510 r!7292))) b!6256461))

(assert (= (and b!6255553 ((_ is Star!16181) (reg!16510 r!7292))) b!6256462))

(assert (= (and b!6255553 ((_ is Union!16181) (reg!16510 r!7292))) b!6256463))

(declare-fun b!6256467 () Bool)

(declare-fun e!3805997 () Bool)

(declare-fun tp!1745521 () Bool)

(declare-fun tp!1745523 () Bool)

(assert (=> b!6256467 (= e!3805997 (and tp!1745521 tp!1745523))))

(declare-fun b!6256465 () Bool)

(declare-fun tp!1745525 () Bool)

(declare-fun tp!1745522 () Bool)

(assert (=> b!6256465 (= e!3805997 (and tp!1745525 tp!1745522))))

(assert (=> b!6255544 (= tp!1745413 e!3805997)))

(declare-fun b!6256466 () Bool)

(declare-fun tp!1745524 () Bool)

(assert (=> b!6256466 (= e!3805997 tp!1745524)))

(declare-fun b!6256464 () Bool)

(assert (=> b!6256464 (= e!3805997 tp_is_empty!41615)))

(assert (= (and b!6255544 ((_ is ElementMatch!16181) (regOne!32874 r!7292))) b!6256464))

(assert (= (and b!6255544 ((_ is Concat!25026) (regOne!32874 r!7292))) b!6256465))

(assert (= (and b!6255544 ((_ is Star!16181) (regOne!32874 r!7292))) b!6256466))

(assert (= (and b!6255544 ((_ is Union!16181) (regOne!32874 r!7292))) b!6256467))

(declare-fun b!6256471 () Bool)

(declare-fun e!3805998 () Bool)

(declare-fun tp!1745526 () Bool)

(declare-fun tp!1745528 () Bool)

(assert (=> b!6256471 (= e!3805998 (and tp!1745526 tp!1745528))))

(declare-fun b!6256469 () Bool)

(declare-fun tp!1745530 () Bool)

(declare-fun tp!1745527 () Bool)

(assert (=> b!6256469 (= e!3805998 (and tp!1745530 tp!1745527))))

(assert (=> b!6255544 (= tp!1745407 e!3805998)))

(declare-fun b!6256470 () Bool)

(declare-fun tp!1745529 () Bool)

(assert (=> b!6256470 (= e!3805998 tp!1745529)))

(declare-fun b!6256468 () Bool)

(assert (=> b!6256468 (= e!3805998 tp_is_empty!41615)))

(assert (= (and b!6255544 ((_ is ElementMatch!16181) (regTwo!32874 r!7292))) b!6256468))

(assert (= (and b!6255544 ((_ is Concat!25026) (regTwo!32874 r!7292))) b!6256469))

(assert (= (and b!6255544 ((_ is Star!16181) (regTwo!32874 r!7292))) b!6256470))

(assert (= (and b!6255544 ((_ is Union!16181) (regTwo!32874 r!7292))) b!6256471))

(declare-fun b_lambda!238063 () Bool)

(assert (= b_lambda!238061 (or b!6255545 b_lambda!238063)))

(declare-fun bs!1557965 () Bool)

(declare-fun d!1962654 () Bool)

(assert (= bs!1557965 (and d!1962654 b!6255545)))

(assert (=> bs!1557965 (= (dynLambda!25566 lambda!342315 lt!2349551) (derivationStepZipperUp!1355 lt!2349551 (h!71168 s!2326)))))

(assert (=> bs!1557965 m!7078504))

(assert (=> d!1962636 d!1962654))

(declare-fun b_lambda!238065 () Bool)

(assert (= b_lambda!238059 (or b!6255545 b_lambda!238065)))

(declare-fun bs!1557966 () Bool)

(declare-fun d!1962656 () Bool)

(assert (= bs!1557966 (and d!1962656 b!6255545)))

(assert (=> bs!1557966 (= (dynLambda!25566 lambda!342315 (h!71167 zl!343)) (derivationStepZipperUp!1355 (h!71167 zl!343) (h!71168 s!2326)))))

(assert (=> bs!1557966 m!7078478))

(assert (=> d!1962562 d!1962656))

(declare-fun b_lambda!238067 () Bool)

(assert (= b_lambda!238057 (or b!6255545 b_lambda!238067)))

(declare-fun bs!1557967 () Bool)

(declare-fun d!1962658 () Bool)

(assert (= bs!1557967 (and d!1962658 b!6255545)))

(assert (=> bs!1557967 (= (dynLambda!25566 lambda!342315 lt!2349538) (derivationStepZipperUp!1355 lt!2349538 (h!71168 s!2326)))))

(assert (=> bs!1557967 m!7078528))

(assert (=> d!1962550 d!1962658))

(check-sat (not d!1962640) (not bm!527946) (not b!6255982) (not b!6256402) (not b!6255911) (not d!1962616) (not b!6256355) (not b_lambda!238063) (not b!6256058) (not b!6256357) (not b!6256052) (not d!1962608) (not d!1962560) (not b!6256370) (not d!1962620) (not d!1962644) (not d!1962642) (not b!6256348) (not b!6256360) (not b!6256372) (not b!6256295) (not b!6256447) (not b!6255915) (not bm!527938) (not bm!527914) (not b!6256330) (not b!6256139) (not bm!527955) (not b!6256453) (not b!6256142) (not b!6256466) (not b!6256065) (not d!1962558) (not bm!527940) (not d!1962550) (not d!1962502) (not b!6256353) (not d!1962586) (not b!6256147) (not bs!1557967) (not b!6256109) (not d!1962520) (not b!6256346) (not d!1962540) (not b!6256440) (not bm!527915) (not b!6256436) tp_is_empty!41615 (not b!6255981) (not b!6256134) (not d!1962622) (not b!6256062) (not b!6256382) (not b!6256462) (not b!6255914) (not bm!527909) (not b!6256172) (not b!6256140) (not b!6256252) (not b!6256057) (not b_lambda!238067) (not b!6256303) (not d!1962628) (not b!6256061) (not bm!527952) (not bm!527913) (not b!6256212) (not d!1962614) (not bm!527944) (not b!6256439) (not b!6256337) (not b!6256345) (not bm!527965) (not bm!527956) (not b!6256201) (not bs!1557966) (not b_lambda!238065) (not b!6256333) (not b!6256066) (not d!1962594) (not b!6256358) (not b!6256331) (not bm!527931) (not b!6256296) (not b!6256459) (not b!6256250) (not bm!527963) (not b!6256133) (not d!1962612) (not b!6256297) (not b!6256465) (not b!6256377) (not b!6256349) (not b!6256469) (not d!1962634) (not d!1962554) (not d!1962576) (not d!1962486) (not d!1962494) (not b!6256363) (not bm!527939) (not d!1962580) (not b!6256350) (not b!6256060) (not b!6256470) (not b!6256102) (not b!6256171) (not b!6256299) (not b!6256136) (not b!6256326) (not b!6256051) (not b!6256414) (not bm!527934) (not b!6256381) (not b!6256375) (not b!6256362) (not d!1962578) (not d!1962562) (not b!6256463) (not d!1962570) (not b!6256327) (not b!6256135) (not b!6255884) (not b!6255913) (not b!6256435) (not b!6256416) (not b!6256070) (not b!6256471) (not b!6256173) (not d!1962626) (not d!1962556) (not b!6256056) (not d!1962582) (not d!1962522) (not b!6256059) (not bs!1557965) (not d!1962636) (not b!6256461) (not b!6256063) (not b!6256438) (not b!6256064) (not b!6256169) (not d!1962572) (not b!6256380) (not b!6255885) (not b!6256422) (not d!1962610) (not b!6256448) (not d!1962590) (not bm!527933) (not b!6256194) (not b!6256378) (not b!6256108) (not b!6256454) (not b!6256300) (not b!6256434) (not b!6256304) (not d!1962552) (not b!6255912) (not bm!527951) (not b!6256170) (not b!6256192) (not b!6256379) (not d!1962584) (not b!6256328) (not b!6256359) (not d!1962592) (not d!1962638) (not b!6256332) (not b!6256071) (not b!6256301) (not b!6256174) (not b!6256467) (not d!1962618) (not bm!527945) (not d!1962588) (not d!1962524) (not bm!527932) (not b!6256344) (not b!6256354) (not setNonEmpty!42542) (not d!1962624))
(check-sat)
(get-model)

(declare-fun b!6257206 () Bool)

(declare-fun res!2582292 () Bool)

(declare-fun e!3806417 () Bool)

(assert (=> b!6257206 (=> res!2582292 e!3806417)))

(assert (=> b!6257206 (= res!2582292 (not ((_ is ElementMatch!16181) (derivativeStep!4890 lt!2349533 (head!12862 s!2326)))))))

(declare-fun e!3806415 () Bool)

(assert (=> b!6257206 (= e!3806415 e!3806417)))

(declare-fun b!6257207 () Bool)

(declare-fun res!2582294 () Bool)

(assert (=> b!6257207 (=> res!2582294 e!3806417)))

(declare-fun e!3806421 () Bool)

(assert (=> b!6257207 (= res!2582294 e!3806421)))

(declare-fun res!2582290 () Bool)

(assert (=> b!6257207 (=> (not res!2582290) (not e!3806421))))

(declare-fun lt!2349773 () Bool)

(assert (=> b!6257207 (= res!2582290 lt!2349773)))

(declare-fun b!6257208 () Bool)

(declare-fun e!3806416 () Bool)

(assert (=> b!6257208 (= e!3806416 e!3806415)))

(declare-fun c!1132846 () Bool)

(assert (=> b!6257208 (= c!1132846 ((_ is EmptyLang!16181) (derivativeStep!4890 lt!2349533 (head!12862 s!2326))))))

(declare-fun b!6257209 () Bool)

(declare-fun e!3806420 () Bool)

(assert (=> b!6257209 (= e!3806417 e!3806420)))

(declare-fun res!2582288 () Bool)

(assert (=> b!6257209 (=> (not res!2582288) (not e!3806420))))

(assert (=> b!6257209 (= res!2582288 (not lt!2349773))))

(declare-fun b!6257210 () Bool)

(assert (=> b!6257210 (= e!3806415 (not lt!2349773))))

(declare-fun b!6257211 () Bool)

(declare-fun res!2582289 () Bool)

(assert (=> b!6257211 (=> (not res!2582289) (not e!3806421))))

(declare-fun call!528112 () Bool)

(assert (=> b!6257211 (= res!2582289 (not call!528112))))

(declare-fun d!1963032 () Bool)

(assert (=> d!1963032 e!3806416))

(declare-fun c!1132844 () Bool)

(assert (=> d!1963032 (= c!1132844 ((_ is EmptyExpr!16181) (derivativeStep!4890 lt!2349533 (head!12862 s!2326))))))

(declare-fun e!3806419 () Bool)

(assert (=> d!1963032 (= lt!2349773 e!3806419)))

(declare-fun c!1132845 () Bool)

(assert (=> d!1963032 (= c!1132845 (isEmpty!36746 (tail!11947 s!2326)))))

(assert (=> d!1963032 (validRegex!7917 (derivativeStep!4890 lt!2349533 (head!12862 s!2326)))))

(assert (=> d!1963032 (= (matchR!8364 (derivativeStep!4890 lt!2349533 (head!12862 s!2326)) (tail!11947 s!2326)) lt!2349773)))

(declare-fun bm!528107 () Bool)

(assert (=> bm!528107 (= call!528112 (isEmpty!36746 (tail!11947 s!2326)))))

(declare-fun b!6257212 () Bool)

(declare-fun e!3806418 () Bool)

(assert (=> b!6257212 (= e!3806418 (not (= (head!12862 (tail!11947 s!2326)) (c!1132364 (derivativeStep!4890 lt!2349533 (head!12862 s!2326))))))))

(declare-fun b!6257213 () Bool)

(assert (=> b!6257213 (= e!3806421 (= (head!12862 (tail!11947 s!2326)) (c!1132364 (derivativeStep!4890 lt!2349533 (head!12862 s!2326)))))))

(declare-fun b!6257214 () Bool)

(assert (=> b!6257214 (= e!3806419 (nullable!6174 (derivativeStep!4890 lt!2349533 (head!12862 s!2326))))))

(declare-fun b!6257215 () Bool)

(assert (=> b!6257215 (= e!3806420 e!3806418)))

(declare-fun res!2582295 () Bool)

(assert (=> b!6257215 (=> res!2582295 e!3806418)))

(assert (=> b!6257215 (= res!2582295 call!528112)))

(declare-fun b!6257216 () Bool)

(assert (=> b!6257216 (= e!3806419 (matchR!8364 (derivativeStep!4890 (derivativeStep!4890 lt!2349533 (head!12862 s!2326)) (head!12862 (tail!11947 s!2326))) (tail!11947 (tail!11947 s!2326))))))

(declare-fun b!6257217 () Bool)

(declare-fun res!2582291 () Bool)

(assert (=> b!6257217 (=> res!2582291 e!3806418)))

(assert (=> b!6257217 (= res!2582291 (not (isEmpty!36746 (tail!11947 (tail!11947 s!2326)))))))

(declare-fun b!6257218 () Bool)

(declare-fun res!2582293 () Bool)

(assert (=> b!6257218 (=> (not res!2582293) (not e!3806421))))

(assert (=> b!6257218 (= res!2582293 (isEmpty!36746 (tail!11947 (tail!11947 s!2326))))))

(declare-fun b!6257219 () Bool)

(assert (=> b!6257219 (= e!3806416 (= lt!2349773 call!528112))))

(assert (= (and d!1963032 c!1132845) b!6257214))

(assert (= (and d!1963032 (not c!1132845)) b!6257216))

(assert (= (and d!1963032 c!1132844) b!6257219))

(assert (= (and d!1963032 (not c!1132844)) b!6257208))

(assert (= (and b!6257208 c!1132846) b!6257210))

(assert (= (and b!6257208 (not c!1132846)) b!6257206))

(assert (= (and b!6257206 (not res!2582292)) b!6257207))

(assert (= (and b!6257207 res!2582290) b!6257211))

(assert (= (and b!6257211 res!2582289) b!6257218))

(assert (= (and b!6257218 res!2582293) b!6257213))

(assert (= (and b!6257207 (not res!2582294)) b!6257209))

(assert (= (and b!6257209 res!2582288) b!6257215))

(assert (= (and b!6257215 (not res!2582295)) b!6257217))

(assert (= (and b!6257217 (not res!2582291)) b!6257212))

(assert (= (or b!6257219 b!6257215 b!6257211) bm!528107))

(assert (=> b!6257217 m!7079116))

(declare-fun m!7080016 () Bool)

(assert (=> b!6257217 m!7080016))

(assert (=> b!6257217 m!7080016))

(declare-fun m!7080018 () Bool)

(assert (=> b!6257217 m!7080018))

(assert (=> bm!528107 m!7079116))

(assert (=> bm!528107 m!7079118))

(assert (=> b!6257212 m!7079116))

(declare-fun m!7080020 () Bool)

(assert (=> b!6257212 m!7080020))

(assert (=> b!6257216 m!7079116))

(assert (=> b!6257216 m!7080020))

(assert (=> b!6257216 m!7079166))

(assert (=> b!6257216 m!7080020))

(declare-fun m!7080022 () Bool)

(assert (=> b!6257216 m!7080022))

(assert (=> b!6257216 m!7079116))

(assert (=> b!6257216 m!7080016))

(assert (=> b!6257216 m!7080022))

(assert (=> b!6257216 m!7080016))

(declare-fun m!7080024 () Bool)

(assert (=> b!6257216 m!7080024))

(assert (=> b!6257213 m!7079116))

(assert (=> b!6257213 m!7080020))

(assert (=> b!6257214 m!7079166))

(declare-fun m!7080026 () Bool)

(assert (=> b!6257214 m!7080026))

(assert (=> d!1963032 m!7079116))

(assert (=> d!1963032 m!7079118))

(assert (=> d!1963032 m!7079166))

(declare-fun m!7080028 () Bool)

(assert (=> d!1963032 m!7080028))

(assert (=> b!6257218 m!7079116))

(assert (=> b!6257218 m!7080016))

(assert (=> b!6257218 m!7080016))

(assert (=> b!6257218 m!7080018))

(assert (=> b!6256348 d!1963032))

(declare-fun b!6257240 () Bool)

(declare-fun c!1132860 () Bool)

(assert (=> b!6257240 (= c!1132860 (nullable!6174 (regOne!32874 lt!2349533)))))

(declare-fun e!3806435 () Regex!16181)

(declare-fun e!3806433 () Regex!16181)

(assert (=> b!6257240 (= e!3806435 e!3806433)))

(declare-fun b!6257241 () Bool)

(declare-fun call!528124 () Regex!16181)

(declare-fun call!528123 () Regex!16181)

(assert (=> b!6257241 (= e!3806433 (Union!16181 (Concat!25026 call!528123 (regTwo!32874 lt!2349533)) call!528124))))

(declare-fun b!6257242 () Bool)

(assert (=> b!6257242 (= e!3806433 (Union!16181 (Concat!25026 call!528124 (regTwo!32874 lt!2349533)) EmptyLang!16181))))

(declare-fun bm!528116 () Bool)

(declare-fun call!528122 () Regex!16181)

(declare-fun call!528121 () Regex!16181)

(assert (=> bm!528116 (= call!528122 call!528121)))

(declare-fun d!1963034 () Bool)

(declare-fun lt!2349776 () Regex!16181)

(assert (=> d!1963034 (validRegex!7917 lt!2349776)))

(declare-fun e!3806432 () Regex!16181)

(assert (=> d!1963034 (= lt!2349776 e!3806432)))

(declare-fun c!1132859 () Bool)

(assert (=> d!1963034 (= c!1132859 (or ((_ is EmptyExpr!16181) lt!2349533) ((_ is EmptyLang!16181) lt!2349533)))))

(assert (=> d!1963034 (validRegex!7917 lt!2349533)))

(assert (=> d!1963034 (= (derivativeStep!4890 lt!2349533 (head!12862 s!2326)) lt!2349776)))

(declare-fun b!6257243 () Bool)

(declare-fun e!3806436 () Regex!16181)

(assert (=> b!6257243 (= e!3806436 e!3806435)))

(declare-fun c!1132858 () Bool)

(assert (=> b!6257243 (= c!1132858 ((_ is Star!16181) lt!2349533))))

(declare-fun bm!528117 () Bool)

(declare-fun c!1132861 () Bool)

(assert (=> bm!528117 (= call!528121 (derivativeStep!4890 (ite c!1132861 (regTwo!32875 lt!2349533) (ite c!1132858 (reg!16510 lt!2349533) (ite c!1132860 (regTwo!32874 lt!2349533) (regOne!32874 lt!2349533)))) (head!12862 s!2326)))))

(declare-fun bm!528118 () Bool)

(assert (=> bm!528118 (= call!528124 call!528122)))

(declare-fun b!6257244 () Bool)

(assert (=> b!6257244 (= e!3806432 EmptyLang!16181)))

(declare-fun b!6257245 () Bool)

(assert (=> b!6257245 (= c!1132861 ((_ is Union!16181) lt!2349533))))

(declare-fun e!3806434 () Regex!16181)

(assert (=> b!6257245 (= e!3806434 e!3806436)))

(declare-fun b!6257246 () Bool)

(assert (=> b!6257246 (= e!3806436 (Union!16181 call!528123 call!528121))))

(declare-fun b!6257247 () Bool)

(assert (=> b!6257247 (= e!3806435 (Concat!25026 call!528122 lt!2349533))))

(declare-fun b!6257248 () Bool)

(assert (=> b!6257248 (= e!3806432 e!3806434)))

(declare-fun c!1132857 () Bool)

(assert (=> b!6257248 (= c!1132857 ((_ is ElementMatch!16181) lt!2349533))))

(declare-fun bm!528119 () Bool)

(assert (=> bm!528119 (= call!528123 (derivativeStep!4890 (ite c!1132861 (regOne!32875 lt!2349533) (regOne!32874 lt!2349533)) (head!12862 s!2326)))))

(declare-fun b!6257249 () Bool)

(assert (=> b!6257249 (= e!3806434 (ite (= (head!12862 s!2326) (c!1132364 lt!2349533)) EmptyExpr!16181 EmptyLang!16181))))

(assert (= (and d!1963034 c!1132859) b!6257244))

(assert (= (and d!1963034 (not c!1132859)) b!6257248))

(assert (= (and b!6257248 c!1132857) b!6257249))

(assert (= (and b!6257248 (not c!1132857)) b!6257245))

(assert (= (and b!6257245 c!1132861) b!6257246))

(assert (= (and b!6257245 (not c!1132861)) b!6257243))

(assert (= (and b!6257243 c!1132858) b!6257247))

(assert (= (and b!6257243 (not c!1132858)) b!6257240))

(assert (= (and b!6257240 c!1132860) b!6257241))

(assert (= (and b!6257240 (not c!1132860)) b!6257242))

(assert (= (or b!6257241 b!6257242) bm!528118))

(assert (= (or b!6257247 bm!528118) bm!528116))

(assert (= (or b!6257246 bm!528116) bm!528117))

(assert (= (or b!6257246 b!6257241) bm!528119))

(declare-fun m!7080030 () Bool)

(assert (=> b!6257240 m!7080030))

(declare-fun m!7080032 () Bool)

(assert (=> d!1963034 m!7080032))

(assert (=> d!1963034 m!7079164))

(assert (=> bm!528117 m!7079120))

(declare-fun m!7080034 () Bool)

(assert (=> bm!528117 m!7080034))

(assert (=> bm!528119 m!7079120))

(declare-fun m!7080036 () Bool)

(assert (=> bm!528119 m!7080036))

(assert (=> b!6256348 d!1963034))

(declare-fun d!1963036 () Bool)

(assert (=> d!1963036 (= (head!12862 s!2326) (h!71168 s!2326))))

(assert (=> b!6256348 d!1963036))

(declare-fun d!1963038 () Bool)

(assert (=> d!1963038 (= (tail!11947 s!2326) (t!378394 s!2326))))

(assert (=> b!6256348 d!1963038))

(declare-fun d!1963040 () Bool)

(assert (=> d!1963040 true))

(assert (=> d!1963040 true))

(declare-fun res!2582298 () Bool)

(assert (=> d!1963040 (= (choose!46428 lambda!342313) res!2582298)))

(assert (=> d!1962586 d!1963040))

(declare-fun bs!1558482 () Bool)

(declare-fun d!1963042 () Bool)

(assert (= bs!1558482 (and d!1963042 b!6256370)))

(declare-fun lambda!342471 () Int)

(assert (=> bs!1558482 (not (= lambda!342471 lambda!342403))))

(declare-fun bs!1558483 () Bool)

(assert (= bs!1558483 (and d!1963042 b!6256372)))

(assert (=> bs!1558483 (not (= lambda!342471 lambda!342404))))

(declare-fun bs!1558484 () Bool)

(assert (= bs!1558484 (and d!1963042 b!6256375)))

(assert (=> bs!1558484 (not (= lambda!342471 lambda!342406))))

(declare-fun bs!1558485 () Bool)

(assert (= bs!1558485 (and d!1963042 b!6256377)))

(assert (=> bs!1558485 (not (= lambda!342471 lambda!342407))))

(declare-fun exists!2515 ((InoxSet Context!11130) Int) Bool)

(assert (=> d!1963042 (= (nullableZipper!1951 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326))) (exists!2515 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) lambda!342471))))

(declare-fun bs!1558486 () Bool)

(assert (= bs!1558486 d!1963042))

(assert (=> bs!1558486 m!7078486))

(declare-fun m!7080038 () Bool)

(assert (=> bs!1558486 m!7080038))

(assert (=> b!6256303 d!1963042))

(assert (=> b!6256147 d!1962616))

(declare-fun bs!1558487 () Bool)

(declare-fun d!1963044 () Bool)

(assert (= bs!1558487 (and d!1963044 d!1962616)))

(declare-fun lambda!342472 () Int)

(assert (=> bs!1558487 (= lambda!342472 lambda!342393)))

(declare-fun bs!1558488 () Bool)

(assert (= bs!1558488 (and d!1963044 d!1962580)))

(assert (=> bs!1558488 (= lambda!342472 lambda!342374)))

(declare-fun bs!1558489 () Bool)

(assert (= bs!1558489 (and d!1963044 d!1962624)))

(assert (=> bs!1558489 (= lambda!342472 lambda!342394)))

(declare-fun bs!1558490 () Bool)

(assert (= bs!1558490 (and d!1963044 d!1962578)))

(assert (=> bs!1558490 (= lambda!342472 lambda!342371)))

(declare-fun bs!1558491 () Bool)

(assert (= bs!1558491 (and d!1963044 d!1962628)))

(assert (=> bs!1558491 (= lambda!342472 lambda!342395)))

(declare-fun bs!1558492 () Bool)

(assert (= bs!1558492 (and d!1963044 d!1962486)))

(assert (=> bs!1558492 (= lambda!342472 lambda!342355)))

(declare-fun bs!1558493 () Bool)

(assert (= bs!1558493 (and d!1963044 d!1962576)))

(assert (=> bs!1558493 (= lambda!342472 lambda!342368)))

(declare-fun lt!2349777 () List!64842)

(assert (=> d!1963044 (forall!15300 lt!2349777 lambda!342472)))

(declare-fun e!3806437 () List!64842)

(assert (=> d!1963044 (= lt!2349777 e!3806437)))

(declare-fun c!1132864 () Bool)

(assert (=> d!1963044 (= c!1132864 ((_ is Cons!64719) (t!378393 zl!343)))))

(assert (=> d!1963044 (= (unfocusZipperList!1602 (t!378393 zl!343)) lt!2349777)))

(declare-fun b!6257250 () Bool)

(assert (=> b!6257250 (= e!3806437 (Cons!64718 (generalisedConcat!1778 (exprs!6065 (h!71167 (t!378393 zl!343)))) (unfocusZipperList!1602 (t!378393 (t!378393 zl!343)))))))

(declare-fun b!6257251 () Bool)

(assert (=> b!6257251 (= e!3806437 Nil!64718)))

(assert (= (and d!1963044 c!1132864) b!6257250))

(assert (= (and d!1963044 (not c!1132864)) b!6257251))

(declare-fun m!7080040 () Bool)

(assert (=> d!1963044 m!7080040))

(declare-fun m!7080042 () Bool)

(assert (=> b!6257250 m!7080042))

(declare-fun m!7080044 () Bool)

(assert (=> b!6257250 m!7080044))

(assert (=> b!6256147 d!1963044))

(declare-fun b!6257252 () Bool)

(declare-fun e!3806441 () (InoxSet Context!11130))

(declare-fun call!528128 () (InoxSet Context!11130))

(declare-fun call!528127 () (InoxSet Context!11130))

(assert (=> b!6257252 (= e!3806441 ((_ map or) call!528128 call!528127))))

(declare-fun b!6257253 () Bool)

(declare-fun e!3806442 () (InoxSet Context!11130))

(declare-fun e!3806443 () (InoxSet Context!11130))

(assert (=> b!6257253 (= e!3806442 e!3806443)))

(declare-fun c!1132868 () Bool)

(assert (=> b!6257253 (= c!1132868 ((_ is Union!16181) (h!71166 (exprs!6065 lt!2349538))))))

(declare-fun b!6257254 () Bool)

(declare-fun e!3806438 () (InoxSet Context!11130))

(assert (=> b!6257254 (= e!3806438 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528120 () Bool)

(declare-fun call!528126 () (InoxSet Context!11130))

(assert (=> bm!528120 (= call!528127 call!528126)))

(declare-fun bm!528121 () Bool)

(declare-fun call!528130 () (InoxSet Context!11130))

(assert (=> bm!528121 (= call!528130 call!528127)))

(declare-fun b!6257255 () Bool)

(assert (=> b!6257255 (= e!3806443 ((_ map or) call!528126 call!528128))))

(declare-fun d!1963046 () Bool)

(declare-fun c!1132869 () Bool)

(assert (=> d!1963046 (= c!1132869 (and ((_ is ElementMatch!16181) (h!71166 (exprs!6065 lt!2349538))) (= (c!1132364 (h!71166 (exprs!6065 lt!2349538))) (h!71168 s!2326))))))

(assert (=> d!1963046 (= (derivationStepZipperDown!1429 (h!71166 (exprs!6065 lt!2349538)) (Context!11131 (t!378392 (exprs!6065 lt!2349538))) (h!71168 s!2326)) e!3806442)))

(declare-fun bm!528122 () Bool)

(declare-fun call!528129 () List!64842)

(declare-fun call!528125 () List!64842)

(assert (=> bm!528122 (= call!528129 call!528125)))

(declare-fun b!6257256 () Bool)

(declare-fun e!3806439 () (InoxSet Context!11130))

(assert (=> b!6257256 (= e!3806441 e!3806439)))

(declare-fun c!1132866 () Bool)

(assert (=> b!6257256 (= c!1132866 ((_ is Concat!25026) (h!71166 (exprs!6065 lt!2349538))))))

(declare-fun b!6257257 () Bool)

(declare-fun e!3806440 () Bool)

(assert (=> b!6257257 (= e!3806440 (nullable!6174 (regOne!32874 (h!71166 (exprs!6065 lt!2349538)))))))

(declare-fun b!6257258 () Bool)

(assert (=> b!6257258 (= e!3806442 (store ((as const (Array Context!11130 Bool)) false) (Context!11131 (t!378392 (exprs!6065 lt!2349538))) true))))

(declare-fun c!1132867 () Bool)

(declare-fun bm!528123 () Bool)

(assert (=> bm!528123 (= call!528125 ($colon$colon!2046 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538)))) (ite (or c!1132867 c!1132866) (regTwo!32874 (h!71166 (exprs!6065 lt!2349538))) (h!71166 (exprs!6065 lt!2349538)))))))

(declare-fun bm!528124 () Bool)

(assert (=> bm!528124 (= call!528126 (derivationStepZipperDown!1429 (ite c!1132868 (regOne!32875 (h!71166 (exprs!6065 lt!2349538))) (ite c!1132867 (regTwo!32874 (h!71166 (exprs!6065 lt!2349538))) (ite c!1132866 (regOne!32874 (h!71166 (exprs!6065 lt!2349538))) (reg!16510 (h!71166 (exprs!6065 lt!2349538)))))) (ite (or c!1132868 c!1132867) (Context!11131 (t!378392 (exprs!6065 lt!2349538))) (Context!11131 call!528129)) (h!71168 s!2326)))))

(declare-fun b!6257259 () Bool)

(declare-fun c!1132865 () Bool)

(assert (=> b!6257259 (= c!1132865 ((_ is Star!16181) (h!71166 (exprs!6065 lt!2349538))))))

(assert (=> b!6257259 (= e!3806439 e!3806438)))

(declare-fun bm!528125 () Bool)

(assert (=> bm!528125 (= call!528128 (derivationStepZipperDown!1429 (ite c!1132868 (regTwo!32875 (h!71166 (exprs!6065 lt!2349538))) (regOne!32874 (h!71166 (exprs!6065 lt!2349538)))) (ite c!1132868 (Context!11131 (t!378392 (exprs!6065 lt!2349538))) (Context!11131 call!528125)) (h!71168 s!2326)))))

(declare-fun b!6257260 () Bool)

(assert (=> b!6257260 (= e!3806439 call!528130)))

(declare-fun b!6257261 () Bool)

(assert (=> b!6257261 (= e!3806438 call!528130)))

(declare-fun b!6257262 () Bool)

(assert (=> b!6257262 (= c!1132867 e!3806440)))

(declare-fun res!2582299 () Bool)

(assert (=> b!6257262 (=> (not res!2582299) (not e!3806440))))

(assert (=> b!6257262 (= res!2582299 ((_ is Concat!25026) (h!71166 (exprs!6065 lt!2349538))))))

(assert (=> b!6257262 (= e!3806443 e!3806441)))

(assert (= (and d!1963046 c!1132869) b!6257258))

(assert (= (and d!1963046 (not c!1132869)) b!6257253))

(assert (= (and b!6257253 c!1132868) b!6257255))

(assert (= (and b!6257253 (not c!1132868)) b!6257262))

(assert (= (and b!6257262 res!2582299) b!6257257))

(assert (= (and b!6257262 c!1132867) b!6257252))

(assert (= (and b!6257262 (not c!1132867)) b!6257256))

(assert (= (and b!6257256 c!1132866) b!6257260))

(assert (= (and b!6257256 (not c!1132866)) b!6257259))

(assert (= (and b!6257259 c!1132865) b!6257261))

(assert (= (and b!6257259 (not c!1132865)) b!6257254))

(assert (= (or b!6257260 b!6257261) bm!528122))

(assert (= (or b!6257260 b!6257261) bm!528121))

(assert (= (or b!6257252 bm!528122) bm!528123))

(assert (= (or b!6257252 bm!528121) bm!528120))

(assert (= (or b!6257255 b!6257252) bm!528125))

(assert (= (or b!6257255 bm!528120) bm!528124))

(declare-fun m!7080046 () Bool)

(assert (=> bm!528123 m!7080046))

(declare-fun m!7080048 () Bool)

(assert (=> b!6257258 m!7080048))

(declare-fun m!7080050 () Bool)

(assert (=> bm!528125 m!7080050))

(declare-fun m!7080052 () Bool)

(assert (=> bm!528124 m!7080052))

(declare-fun m!7080054 () Bool)

(assert (=> b!6257257 m!7080054))

(assert (=> bm!527913 d!1963046))

(declare-fun d!1963048 () Bool)

(declare-fun res!2582304 () Bool)

(declare-fun e!3806448 () Bool)

(assert (=> d!1963048 (=> res!2582304 e!3806448)))

(assert (=> d!1963048 (= res!2582304 ((_ is Nil!64718) lt!2349649))))

(assert (=> d!1963048 (= (forall!15300 lt!2349649 lambda!342374) e!3806448)))

(declare-fun b!6257267 () Bool)

(declare-fun e!3806449 () Bool)

(assert (=> b!6257267 (= e!3806448 e!3806449)))

(declare-fun res!2582305 () Bool)

(assert (=> b!6257267 (=> (not res!2582305) (not e!3806449))))

(declare-fun dynLambda!25571 (Int Regex!16181) Bool)

(assert (=> b!6257267 (= res!2582305 (dynLambda!25571 lambda!342374 (h!71166 lt!2349649)))))

(declare-fun b!6257268 () Bool)

(assert (=> b!6257268 (= e!3806449 (forall!15300 (t!378392 lt!2349649) lambda!342374))))

(assert (= (and d!1963048 (not res!2582304)) b!6257267))

(assert (= (and b!6257267 res!2582305) b!6257268))

(declare-fun b_lambda!238125 () Bool)

(assert (=> (not b_lambda!238125) (not b!6257267)))

(declare-fun m!7080056 () Bool)

(assert (=> b!6257267 m!7080056))

(declare-fun m!7080058 () Bool)

(assert (=> b!6257268 m!7080058))

(assert (=> d!1962580 d!1963048))

(declare-fun bs!1558494 () Bool)

(declare-fun b!6257276 () Bool)

(assert (= bs!1558494 (and b!6257276 d!1962590)))

(declare-fun lambda!342473 () Int)

(assert (=> bs!1558494 (not (= lambda!342473 lambda!342383))))

(declare-fun bs!1558495 () Bool)

(assert (= bs!1558495 (and b!6257276 b!6255548)))

(assert (=> bs!1558495 (not (= lambda!342473 lambda!342313))))

(declare-fun bs!1558496 () Bool)

(assert (= bs!1558496 (and b!6257276 b!6256253)))

(assert (=> bs!1558496 (not (= lambda!342473 lambda!342389))))

(assert (=> bs!1558494 (not (= lambda!342473 lambda!342382))))

(declare-fun bs!1558497 () Bool)

(assert (= bs!1558497 (and b!6257276 d!1962588)))

(assert (=> bs!1558497 (not (= lambda!342473 lambda!342377))))

(assert (=> bs!1558495 (not (= lambda!342473 lambda!342314))))

(declare-fun bs!1558498 () Bool)

(assert (= bs!1558498 (and b!6257276 b!6256257)))

(assert (=> bs!1558498 (= (and (= (reg!16510 (regOne!32875 r!7292)) (reg!16510 r!7292)) (= (regOne!32875 r!7292) r!7292)) (= lambda!342473 lambda!342388))))

(assert (=> b!6257276 true))

(assert (=> b!6257276 true))

(declare-fun bs!1558499 () Bool)

(declare-fun b!6257272 () Bool)

(assert (= bs!1558499 (and b!6257272 d!1962590)))

(declare-fun lambda!342474 () Int)

(assert (=> bs!1558499 (= (and (= (regOne!32874 (regOne!32875 r!7292)) (regOne!32874 r!7292)) (= (regTwo!32874 (regOne!32875 r!7292)) (regTwo!32874 r!7292))) (= lambda!342474 lambda!342383))))

(declare-fun bs!1558500 () Bool)

(assert (= bs!1558500 (and b!6257272 b!6255548)))

(assert (=> bs!1558500 (not (= lambda!342474 lambda!342313))))

(declare-fun bs!1558501 () Bool)

(assert (= bs!1558501 (and b!6257272 b!6256253)))

(assert (=> bs!1558501 (= (and (= (regOne!32874 (regOne!32875 r!7292)) (regOne!32874 r!7292)) (= (regTwo!32874 (regOne!32875 r!7292)) (regTwo!32874 r!7292))) (= lambda!342474 lambda!342389))))

(declare-fun bs!1558502 () Bool)

(assert (= bs!1558502 (and b!6257272 b!6257276)))

(assert (=> bs!1558502 (not (= lambda!342474 lambda!342473))))

(assert (=> bs!1558499 (not (= lambda!342474 lambda!342382))))

(declare-fun bs!1558503 () Bool)

(assert (= bs!1558503 (and b!6257272 d!1962588)))

(assert (=> bs!1558503 (not (= lambda!342474 lambda!342377))))

(assert (=> bs!1558500 (= (and (= (regOne!32874 (regOne!32875 r!7292)) (regOne!32874 r!7292)) (= (regTwo!32874 (regOne!32875 r!7292)) (regTwo!32874 r!7292))) (= lambda!342474 lambda!342314))))

(declare-fun bs!1558504 () Bool)

(assert (= bs!1558504 (and b!6257272 b!6256257)))

(assert (=> bs!1558504 (not (= lambda!342474 lambda!342388))))

(assert (=> b!6257272 true))

(assert (=> b!6257272 true))

(declare-fun b!6257269 () Bool)

(declare-fun e!3806454 () Bool)

(assert (=> b!6257269 (= e!3806454 (matchRSpec!3282 (regTwo!32875 (regOne!32875 r!7292)) s!2326))))

(declare-fun b!6257270 () Bool)

(declare-fun e!3806456 () Bool)

(declare-fun call!528131 () Bool)

(assert (=> b!6257270 (= e!3806456 call!528131)))

(declare-fun b!6257271 () Bool)

(declare-fun e!3806451 () Bool)

(assert (=> b!6257271 (= e!3806451 e!3806454)))

(declare-fun res!2582307 () Bool)

(assert (=> b!6257271 (= res!2582307 (matchRSpec!3282 (regOne!32875 (regOne!32875 r!7292)) s!2326))))

(assert (=> b!6257271 (=> res!2582307 e!3806454)))

(declare-fun e!3806453 () Bool)

(declare-fun call!528132 () Bool)

(assert (=> b!6257272 (= e!3806453 call!528132)))

(declare-fun b!6257273 () Bool)

(declare-fun c!1132872 () Bool)

(assert (=> b!6257273 (= c!1132872 ((_ is ElementMatch!16181) (regOne!32875 r!7292)))))

(declare-fun e!3806452 () Bool)

(declare-fun e!3806455 () Bool)

(assert (=> b!6257273 (= e!3806452 e!3806455)))

(declare-fun d!1963050 () Bool)

(declare-fun c!1132873 () Bool)

(assert (=> d!1963050 (= c!1132873 ((_ is EmptyExpr!16181) (regOne!32875 r!7292)))))

(assert (=> d!1963050 (= (matchRSpec!3282 (regOne!32875 r!7292) s!2326) e!3806456)))

(declare-fun b!6257274 () Bool)

(assert (=> b!6257274 (= e!3806451 e!3806453)))

(declare-fun c!1132871 () Bool)

(assert (=> b!6257274 (= c!1132871 ((_ is Star!16181) (regOne!32875 r!7292)))))

(declare-fun b!6257275 () Bool)

(assert (=> b!6257275 (= e!3806456 e!3806452)))

(declare-fun res!2582306 () Bool)

(assert (=> b!6257275 (= res!2582306 (not ((_ is EmptyLang!16181) (regOne!32875 r!7292))))))

(assert (=> b!6257275 (=> (not res!2582306) (not e!3806452))))

(declare-fun e!3806450 () Bool)

(assert (=> b!6257276 (= e!3806450 call!528132)))

(declare-fun bm!528126 () Bool)

(assert (=> bm!528126 (= call!528131 (isEmpty!36746 s!2326))))

(declare-fun b!6257277 () Bool)

(declare-fun c!1132870 () Bool)

(assert (=> b!6257277 (= c!1132870 ((_ is Union!16181) (regOne!32875 r!7292)))))

(assert (=> b!6257277 (= e!3806455 e!3806451)))

(declare-fun bm!528127 () Bool)

(assert (=> bm!528127 (= call!528132 (Exists!3251 (ite c!1132871 lambda!342473 lambda!342474)))))

(declare-fun b!6257278 () Bool)

(assert (=> b!6257278 (= e!3806455 (= s!2326 (Cons!64720 (c!1132364 (regOne!32875 r!7292)) Nil!64720)))))

(declare-fun b!6257279 () Bool)

(declare-fun res!2582308 () Bool)

(assert (=> b!6257279 (=> res!2582308 e!3806450)))

(assert (=> b!6257279 (= res!2582308 call!528131)))

(assert (=> b!6257279 (= e!3806453 e!3806450)))

(assert (= (and d!1963050 c!1132873) b!6257270))

(assert (= (and d!1963050 (not c!1132873)) b!6257275))

(assert (= (and b!6257275 res!2582306) b!6257273))

(assert (= (and b!6257273 c!1132872) b!6257278))

(assert (= (and b!6257273 (not c!1132872)) b!6257277))

(assert (= (and b!6257277 c!1132870) b!6257271))

(assert (= (and b!6257277 (not c!1132870)) b!6257274))

(assert (= (and b!6257271 (not res!2582307)) b!6257269))

(assert (= (and b!6257274 c!1132871) b!6257279))

(assert (= (and b!6257274 (not c!1132871)) b!6257272))

(assert (= (and b!6257279 (not res!2582308)) b!6257276))

(assert (= (or b!6257276 b!6257272) bm!528127))

(assert (= (or b!6257270 b!6257279) bm!528126))

(declare-fun m!7080060 () Bool)

(assert (=> b!6257269 m!7080060))

(declare-fun m!7080062 () Bool)

(assert (=> b!6257271 m!7080062))

(assert (=> bm!528126 m!7079112))

(declare-fun m!7080064 () Bool)

(assert (=> bm!528127 m!7080064))

(assert (=> b!6256252 d!1963050))

(declare-fun d!1963052 () Bool)

(declare-fun res!2582321 () Bool)

(declare-fun e!3806470 () Bool)

(assert (=> d!1963052 (=> res!2582321 e!3806470)))

(assert (=> d!1963052 (= res!2582321 ((_ is EmptyExpr!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> d!1963052 (= (nullableFct!2126 (h!71166 (exprs!6065 (h!71167 zl!343)))) e!3806470)))

(declare-fun b!6257294 () Bool)

(declare-fun e!3806473 () Bool)

(declare-fun e!3806471 () Bool)

(assert (=> b!6257294 (= e!3806473 e!3806471)))

(declare-fun res!2582322 () Bool)

(declare-fun call!528138 () Bool)

(assert (=> b!6257294 (= res!2582322 call!528138)))

(assert (=> b!6257294 (=> res!2582322 e!3806471)))

(declare-fun b!6257295 () Bool)

(declare-fun e!3806472 () Bool)

(declare-fun call!528137 () Bool)

(assert (=> b!6257295 (= e!3806472 call!528137)))

(declare-fun b!6257296 () Bool)

(declare-fun e!3806469 () Bool)

(declare-fun e!3806474 () Bool)

(assert (=> b!6257296 (= e!3806469 e!3806474)))

(declare-fun res!2582319 () Bool)

(assert (=> b!6257296 (=> res!2582319 e!3806474)))

(assert (=> b!6257296 (= res!2582319 ((_ is Star!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257297 () Bool)

(assert (=> b!6257297 (= e!3806470 e!3806469)))

(declare-fun res!2582320 () Bool)

(assert (=> b!6257297 (=> (not res!2582320) (not e!3806469))))

(assert (=> b!6257297 (= res!2582320 (and (not ((_ is EmptyLang!16181) (h!71166 (exprs!6065 (h!71167 zl!343))))) (not ((_ is ElementMatch!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257298 () Bool)

(assert (=> b!6257298 (= e!3806474 e!3806473)))

(declare-fun c!1132876 () Bool)

(assert (=> b!6257298 (= c!1132876 ((_ is Union!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun bm!528132 () Bool)

(assert (=> bm!528132 (= call!528138 (nullable!6174 (ite c!1132876 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257299 () Bool)

(assert (=> b!6257299 (= e!3806473 e!3806472)))

(declare-fun res!2582323 () Bool)

(assert (=> b!6257299 (= res!2582323 call!528138)))

(assert (=> b!6257299 (=> (not res!2582323) (not e!3806472))))

(declare-fun bm!528133 () Bool)

(assert (=> bm!528133 (= call!528137 (nullable!6174 (ite c!1132876 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257300 () Bool)

(assert (=> b!6257300 (= e!3806471 call!528137)))

(assert (= (and d!1963052 (not res!2582321)) b!6257297))

(assert (= (and b!6257297 res!2582320) b!6257296))

(assert (= (and b!6257296 (not res!2582319)) b!6257298))

(assert (= (and b!6257298 c!1132876) b!6257294))

(assert (= (and b!6257298 (not c!1132876)) b!6257299))

(assert (= (and b!6257294 (not res!2582322)) b!6257300))

(assert (= (and b!6257299 res!2582323) b!6257295))

(assert (= (or b!6257300 b!6257295) bm!528133))

(assert (= (or b!6257294 b!6257299) bm!528132))

(declare-fun m!7080066 () Bool)

(assert (=> bm!528132 m!7080066))

(declare-fun m!7080068 () Bool)

(assert (=> bm!528133 m!7080068))

(assert (=> d!1962570 d!1963052))

(declare-fun b!6257301 () Bool)

(declare-fun res!2582328 () Bool)

(declare-fun e!3806477 () Bool)

(assert (=> b!6257301 (=> res!2582328 e!3806477)))

(assert (=> b!6257301 (= res!2582328 (not ((_ is ElementMatch!16181) (regOne!32874 r!7292))))))

(declare-fun e!3806475 () Bool)

(assert (=> b!6257301 (= e!3806475 e!3806477)))

(declare-fun b!6257302 () Bool)

(declare-fun res!2582330 () Bool)

(assert (=> b!6257302 (=> res!2582330 e!3806477)))

(declare-fun e!3806481 () Bool)

(assert (=> b!6257302 (= res!2582330 e!3806481)))

(declare-fun res!2582326 () Bool)

(assert (=> b!6257302 (=> (not res!2582326) (not e!3806481))))

(declare-fun lt!2349778 () Bool)

(assert (=> b!6257302 (= res!2582326 lt!2349778)))

(declare-fun b!6257303 () Bool)

(declare-fun e!3806476 () Bool)

(assert (=> b!6257303 (= e!3806476 e!3806475)))

(declare-fun c!1132879 () Bool)

(assert (=> b!6257303 (= c!1132879 ((_ is EmptyLang!16181) (regOne!32874 r!7292)))))

(declare-fun b!6257304 () Bool)

(declare-fun e!3806480 () Bool)

(assert (=> b!6257304 (= e!3806477 e!3806480)))

(declare-fun res!2582324 () Bool)

(assert (=> b!6257304 (=> (not res!2582324) (not e!3806480))))

(assert (=> b!6257304 (= res!2582324 (not lt!2349778))))

(declare-fun b!6257305 () Bool)

(assert (=> b!6257305 (= e!3806475 (not lt!2349778))))

(declare-fun b!6257306 () Bool)

(declare-fun res!2582325 () Bool)

(assert (=> b!6257306 (=> (not res!2582325) (not e!3806481))))

(declare-fun call!528139 () Bool)

(assert (=> b!6257306 (= res!2582325 (not call!528139))))

(declare-fun d!1963054 () Bool)

(assert (=> d!1963054 e!3806476))

(declare-fun c!1132877 () Bool)

(assert (=> d!1963054 (= c!1132877 ((_ is EmptyExpr!16181) (regOne!32874 r!7292)))))

(declare-fun e!3806479 () Bool)

(assert (=> d!1963054 (= lt!2349778 e!3806479)))

(declare-fun c!1132878 () Bool)

(assert (=> d!1963054 (= c!1132878 (isEmpty!36746 (_1!36463 (get!22361 lt!2349657))))))

(assert (=> d!1963054 (validRegex!7917 (regOne!32874 r!7292))))

(assert (=> d!1963054 (= (matchR!8364 (regOne!32874 r!7292) (_1!36463 (get!22361 lt!2349657))) lt!2349778)))

(declare-fun bm!528134 () Bool)

(assert (=> bm!528134 (= call!528139 (isEmpty!36746 (_1!36463 (get!22361 lt!2349657))))))

(declare-fun b!6257307 () Bool)

(declare-fun e!3806478 () Bool)

(assert (=> b!6257307 (= e!3806478 (not (= (head!12862 (_1!36463 (get!22361 lt!2349657))) (c!1132364 (regOne!32874 r!7292)))))))

(declare-fun b!6257308 () Bool)

(assert (=> b!6257308 (= e!3806481 (= (head!12862 (_1!36463 (get!22361 lt!2349657))) (c!1132364 (regOne!32874 r!7292))))))

(declare-fun b!6257309 () Bool)

(assert (=> b!6257309 (= e!3806479 (nullable!6174 (regOne!32874 r!7292)))))

(declare-fun b!6257310 () Bool)

(assert (=> b!6257310 (= e!3806480 e!3806478)))

(declare-fun res!2582331 () Bool)

(assert (=> b!6257310 (=> res!2582331 e!3806478)))

(assert (=> b!6257310 (= res!2582331 call!528139)))

(declare-fun b!6257311 () Bool)

(assert (=> b!6257311 (= e!3806479 (matchR!8364 (derivativeStep!4890 (regOne!32874 r!7292) (head!12862 (_1!36463 (get!22361 lt!2349657)))) (tail!11947 (_1!36463 (get!22361 lt!2349657)))))))

(declare-fun b!6257312 () Bool)

(declare-fun res!2582327 () Bool)

(assert (=> b!6257312 (=> res!2582327 e!3806478)))

(assert (=> b!6257312 (= res!2582327 (not (isEmpty!36746 (tail!11947 (_1!36463 (get!22361 lt!2349657))))))))

(declare-fun b!6257313 () Bool)

(declare-fun res!2582329 () Bool)

(assert (=> b!6257313 (=> (not res!2582329) (not e!3806481))))

(assert (=> b!6257313 (= res!2582329 (isEmpty!36746 (tail!11947 (_1!36463 (get!22361 lt!2349657)))))))

(declare-fun b!6257314 () Bool)

(assert (=> b!6257314 (= e!3806476 (= lt!2349778 call!528139))))

(assert (= (and d!1963054 c!1132878) b!6257309))

(assert (= (and d!1963054 (not c!1132878)) b!6257311))

(assert (= (and d!1963054 c!1132877) b!6257314))

(assert (= (and d!1963054 (not c!1132877)) b!6257303))

(assert (= (and b!6257303 c!1132879) b!6257305))

(assert (= (and b!6257303 (not c!1132879)) b!6257301))

(assert (= (and b!6257301 (not res!2582328)) b!6257302))

(assert (= (and b!6257302 res!2582326) b!6257306))

(assert (= (and b!6257306 res!2582325) b!6257313))

(assert (= (and b!6257313 res!2582329) b!6257308))

(assert (= (and b!6257302 (not res!2582330)) b!6257304))

(assert (= (and b!6257304 res!2582324) b!6257310))

(assert (= (and b!6257310 (not res!2582331)) b!6257312))

(assert (= (and b!6257312 (not res!2582327)) b!6257307))

(assert (= (or b!6257314 b!6257310 b!6257306) bm!528134))

(declare-fun m!7080070 () Bool)

(assert (=> b!6257312 m!7080070))

(assert (=> b!6257312 m!7080070))

(declare-fun m!7080072 () Bool)

(assert (=> b!6257312 m!7080072))

(declare-fun m!7080074 () Bool)

(assert (=> bm!528134 m!7080074))

(declare-fun m!7080076 () Bool)

(assert (=> b!6257307 m!7080076))

(assert (=> b!6257311 m!7080076))

(assert (=> b!6257311 m!7080076))

(declare-fun m!7080078 () Bool)

(assert (=> b!6257311 m!7080078))

(assert (=> b!6257311 m!7080070))

(assert (=> b!6257311 m!7080078))

(assert (=> b!6257311 m!7080070))

(declare-fun m!7080080 () Bool)

(assert (=> b!6257311 m!7080080))

(assert (=> b!6257308 m!7080076))

(declare-fun m!7080082 () Bool)

(assert (=> b!6257309 m!7080082))

(assert (=> d!1963054 m!7080074))

(assert (=> d!1963054 m!7079052))

(assert (=> b!6257313 m!7080070))

(assert (=> b!6257313 m!7080070))

(assert (=> b!6257313 m!7080072))

(assert (=> b!6256171 d!1963054))

(declare-fun d!1963056 () Bool)

(assert (=> d!1963056 (= (get!22361 lt!2349657) (v!52224 lt!2349657))))

(assert (=> b!6256171 d!1963056))

(declare-fun b!6257315 () Bool)

(declare-fun e!3806485 () (InoxSet Context!11130))

(declare-fun call!528143 () (InoxSet Context!11130))

(declare-fun call!528142 () (InoxSet Context!11130))

(assert (=> b!6257315 (= e!3806485 ((_ map or) call!528143 call!528142))))

(declare-fun b!6257316 () Bool)

(declare-fun e!3806486 () (InoxSet Context!11130))

(declare-fun e!3806487 () (InoxSet Context!11130))

(assert (=> b!6257316 (= e!3806486 e!3806487)))

(declare-fun c!1132883 () Bool)

(assert (=> b!6257316 (= c!1132883 ((_ is Union!16181) (h!71166 (exprs!6065 lt!2349549))))))

(declare-fun b!6257317 () Bool)

(declare-fun e!3806482 () (InoxSet Context!11130))

(assert (=> b!6257317 (= e!3806482 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528135 () Bool)

(declare-fun call!528141 () (InoxSet Context!11130))

(assert (=> bm!528135 (= call!528142 call!528141)))

(declare-fun bm!528136 () Bool)

(declare-fun call!528145 () (InoxSet Context!11130))

(assert (=> bm!528136 (= call!528145 call!528142)))

(declare-fun b!6257318 () Bool)

(assert (=> b!6257318 (= e!3806487 ((_ map or) call!528141 call!528143))))

(declare-fun d!1963058 () Bool)

(declare-fun c!1132884 () Bool)

(assert (=> d!1963058 (= c!1132884 (and ((_ is ElementMatch!16181) (h!71166 (exprs!6065 lt!2349549))) (= (c!1132364 (h!71166 (exprs!6065 lt!2349549))) (h!71168 s!2326))))))

(assert (=> d!1963058 (= (derivationStepZipperDown!1429 (h!71166 (exprs!6065 lt!2349549)) (Context!11131 (t!378392 (exprs!6065 lt!2349549))) (h!71168 s!2326)) e!3806486)))

(declare-fun bm!528137 () Bool)

(declare-fun call!528144 () List!64842)

(declare-fun call!528140 () List!64842)

(assert (=> bm!528137 (= call!528144 call!528140)))

(declare-fun b!6257319 () Bool)

(declare-fun e!3806483 () (InoxSet Context!11130))

(assert (=> b!6257319 (= e!3806485 e!3806483)))

(declare-fun c!1132881 () Bool)

(assert (=> b!6257319 (= c!1132881 ((_ is Concat!25026) (h!71166 (exprs!6065 lt!2349549))))))

(declare-fun b!6257320 () Bool)

(declare-fun e!3806484 () Bool)

(assert (=> b!6257320 (= e!3806484 (nullable!6174 (regOne!32874 (h!71166 (exprs!6065 lt!2349549)))))))

(declare-fun b!6257321 () Bool)

(assert (=> b!6257321 (= e!3806486 (store ((as const (Array Context!11130 Bool)) false) (Context!11131 (t!378392 (exprs!6065 lt!2349549))) true))))

(declare-fun bm!528138 () Bool)

(declare-fun c!1132882 () Bool)

(assert (=> bm!528138 (= call!528140 ($colon$colon!2046 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349549)))) (ite (or c!1132882 c!1132881) (regTwo!32874 (h!71166 (exprs!6065 lt!2349549))) (h!71166 (exprs!6065 lt!2349549)))))))

(declare-fun bm!528139 () Bool)

(assert (=> bm!528139 (= call!528141 (derivationStepZipperDown!1429 (ite c!1132883 (regOne!32875 (h!71166 (exprs!6065 lt!2349549))) (ite c!1132882 (regTwo!32874 (h!71166 (exprs!6065 lt!2349549))) (ite c!1132881 (regOne!32874 (h!71166 (exprs!6065 lt!2349549))) (reg!16510 (h!71166 (exprs!6065 lt!2349549)))))) (ite (or c!1132883 c!1132882) (Context!11131 (t!378392 (exprs!6065 lt!2349549))) (Context!11131 call!528144)) (h!71168 s!2326)))))

(declare-fun b!6257322 () Bool)

(declare-fun c!1132880 () Bool)

(assert (=> b!6257322 (= c!1132880 ((_ is Star!16181) (h!71166 (exprs!6065 lt!2349549))))))

(assert (=> b!6257322 (= e!3806483 e!3806482)))

(declare-fun bm!528140 () Bool)

(assert (=> bm!528140 (= call!528143 (derivationStepZipperDown!1429 (ite c!1132883 (regTwo!32875 (h!71166 (exprs!6065 lt!2349549))) (regOne!32874 (h!71166 (exprs!6065 lt!2349549)))) (ite c!1132883 (Context!11131 (t!378392 (exprs!6065 lt!2349549))) (Context!11131 call!528140)) (h!71168 s!2326)))))

(declare-fun b!6257323 () Bool)

(assert (=> b!6257323 (= e!3806483 call!528145)))

(declare-fun b!6257324 () Bool)

(assert (=> b!6257324 (= e!3806482 call!528145)))

(declare-fun b!6257325 () Bool)

(assert (=> b!6257325 (= c!1132882 e!3806484)))

(declare-fun res!2582332 () Bool)

(assert (=> b!6257325 (=> (not res!2582332) (not e!3806484))))

(assert (=> b!6257325 (= res!2582332 ((_ is Concat!25026) (h!71166 (exprs!6065 lt!2349549))))))

(assert (=> b!6257325 (= e!3806487 e!3806485)))

(assert (= (and d!1963058 c!1132884) b!6257321))

(assert (= (and d!1963058 (not c!1132884)) b!6257316))

(assert (= (and b!6257316 c!1132883) b!6257318))

(assert (= (and b!6257316 (not c!1132883)) b!6257325))

(assert (= (and b!6257325 res!2582332) b!6257320))

(assert (= (and b!6257325 c!1132882) b!6257315))

(assert (= (and b!6257325 (not c!1132882)) b!6257319))

(assert (= (and b!6257319 c!1132881) b!6257323))

(assert (= (and b!6257319 (not c!1132881)) b!6257322))

(assert (= (and b!6257322 c!1132880) b!6257324))

(assert (= (and b!6257322 (not c!1132880)) b!6257317))

(assert (= (or b!6257323 b!6257324) bm!528137))

(assert (= (or b!6257323 b!6257324) bm!528136))

(assert (= (or b!6257315 bm!528137) bm!528138))

(assert (= (or b!6257315 bm!528136) bm!528135))

(assert (= (or b!6257318 b!6257315) bm!528140))

(assert (= (or b!6257318 bm!528135) bm!528139))

(declare-fun m!7080084 () Bool)

(assert (=> bm!528138 m!7080084))

(declare-fun m!7080086 () Bool)

(assert (=> b!6257321 m!7080086))

(declare-fun m!7080088 () Bool)

(assert (=> bm!528140 m!7080088))

(declare-fun m!7080090 () Bool)

(assert (=> bm!528139 m!7080090))

(declare-fun m!7080092 () Bool)

(assert (=> b!6257320 m!7080092))

(assert (=> bm!527934 d!1963058))

(declare-fun d!1963060 () Bool)

(declare-fun c!1132887 () Bool)

(assert (=> d!1963060 (= c!1132887 ((_ is Nil!64719) lt!2349683))))

(declare-fun e!3806490 () (InoxSet Context!11130))

(assert (=> d!1963060 (= (content!12146 lt!2349683) e!3806490)))

(declare-fun b!6257330 () Bool)

(assert (=> b!6257330 (= e!3806490 ((as const (Array Context!11130 Bool)) false))))

(declare-fun b!6257331 () Bool)

(assert (=> b!6257331 (= e!3806490 ((_ map or) (store ((as const (Array Context!11130 Bool)) false) (h!71167 lt!2349683) true) (content!12146 (t!378393 lt!2349683))))))

(assert (= (and d!1963060 c!1132887) b!6257330))

(assert (= (and d!1963060 (not c!1132887)) b!6257331))

(declare-fun m!7080094 () Bool)

(assert (=> b!6257331 m!7080094))

(declare-fun m!7080096 () Bool)

(assert (=> b!6257331 m!7080096))

(assert (=> b!6256337 d!1963060))

(declare-fun d!1963062 () Bool)

(assert (=> d!1963062 (= (isEmpty!36746 (t!378394 s!2326)) ((_ is Nil!64720) (t!378394 s!2326)))))

(assert (=> d!1962642 d!1963062))

(declare-fun d!1963064 () Bool)

(assert (=> d!1963064 (= (nullable!6174 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))) (nullableFct!2126 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun bs!1558505 () Bool)

(assert (= bs!1558505 d!1963064))

(declare-fun m!7080098 () Bool)

(assert (=> bs!1558505 m!7080098))

(assert (=> b!6256102 d!1963064))

(declare-fun d!1963066 () Bool)

(declare-fun c!1132888 () Bool)

(assert (=> d!1963066 (= c!1132888 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806491 () Bool)

(assert (=> d!1963066 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349532 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806491)))

(declare-fun b!6257332 () Bool)

(assert (=> b!6257332 (= e!3806491 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349532 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257333 () Bool)

(assert (=> b!6257333 (= e!3806491 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349532 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963066 c!1132888) b!6257332))

(assert (= (and d!1963066 (not c!1132888)) b!6257333))

(assert (=> d!1963066 m!7078806))

(declare-fun m!7080100 () Bool)

(assert (=> d!1963066 m!7080100))

(assert (=> b!6257332 m!7078804))

(declare-fun m!7080102 () Bool)

(assert (=> b!6257332 m!7080102))

(assert (=> b!6257333 m!7078806))

(declare-fun m!7080104 () Bool)

(assert (=> b!6257333 m!7080104))

(assert (=> b!6257333 m!7078804))

(assert (=> b!6257333 m!7080104))

(declare-fun m!7080106 () Bool)

(assert (=> b!6257333 m!7080106))

(assert (=> b!6257333 m!7078806))

(declare-fun m!7080108 () Bool)

(assert (=> b!6257333 m!7080108))

(assert (=> b!6257333 m!7080106))

(assert (=> b!6257333 m!7080108))

(declare-fun m!7080110 () Bool)

(assert (=> b!6257333 m!7080110))

(assert (=> b!6255885 d!1963066))

(declare-fun bs!1558506 () Bool)

(declare-fun d!1963068 () Bool)

(assert (= bs!1558506 (and d!1963068 b!6255545)))

(declare-fun lambda!342475 () Int)

(assert (=> bs!1558506 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342475 lambda!342315))))

(declare-fun bs!1558507 () Bool)

(assert (= bs!1558507 (and d!1963068 d!1962540)))

(assert (=> bs!1558507 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342475 lambda!342367))))

(declare-fun bs!1558508 () Bool)

(assert (= bs!1558508 (and d!1963068 d!1962614)))

(assert (=> bs!1558508 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342475 lambda!342390))))

(assert (=> d!1963068 true))

(assert (=> d!1963068 (= (derivationStepZipper!2147 lt!2349532 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349532 lambda!342475))))

(declare-fun bs!1558509 () Bool)

(assert (= bs!1558509 d!1963068))

(declare-fun m!7080112 () Bool)

(assert (=> bs!1558509 m!7080112))

(assert (=> b!6255885 d!1963068))

(declare-fun d!1963070 () Bool)

(assert (=> d!1963070 (= (head!12862 (t!378394 s!2326)) (h!71168 (t!378394 s!2326)))))

(assert (=> b!6255885 d!1963070))

(declare-fun d!1963072 () Bool)

(assert (=> d!1963072 (= (tail!11947 (t!378394 s!2326)) (t!378394 (t!378394 s!2326)))))

(assert (=> b!6255885 d!1963072))

(declare-fun d!1963074 () Bool)

(assert (=> d!1963074 (= (isEmpty!36742 (tail!11948 (exprs!6065 (h!71167 zl!343)))) ((_ is Nil!64718) (tail!11948 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> b!6256333 d!1963074))

(declare-fun d!1963076 () Bool)

(assert (=> d!1963076 (= (tail!11948 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))

(assert (=> b!6256333 d!1963076))

(declare-fun d!1963078 () Bool)

(assert (=> d!1963078 (= (nullable!6174 r!7292) (nullableFct!2126 r!7292))))

(declare-fun bs!1558510 () Bool)

(assert (= bs!1558510 d!1963078))

(declare-fun m!7080114 () Bool)

(assert (=> bs!1558510 m!7080114))

(assert (=> b!6256297 d!1963078))

(assert (=> bs!1557967 d!1962542))

(declare-fun bs!1558511 () Bool)

(declare-fun d!1963080 () Bool)

(assert (= bs!1558511 (and d!1963080 b!6256372)))

(declare-fun lambda!342476 () Int)

(assert (=> bs!1558511 (not (= lambda!342476 lambda!342404))))

(declare-fun bs!1558512 () Bool)

(assert (= bs!1558512 (and d!1963080 b!6256377)))

(assert (=> bs!1558512 (not (= lambda!342476 lambda!342407))))

(declare-fun bs!1558513 () Bool)

(assert (= bs!1558513 (and d!1963080 d!1963042)))

(assert (=> bs!1558513 (= lambda!342476 lambda!342471)))

(declare-fun bs!1558514 () Bool)

(assert (= bs!1558514 (and d!1963080 b!6256375)))

(assert (=> bs!1558514 (not (= lambda!342476 lambda!342406))))

(declare-fun bs!1558515 () Bool)

(assert (= bs!1558515 (and d!1963080 b!6256370)))

(assert (=> bs!1558515 (not (= lambda!342476 lambda!342403))))

(assert (=> d!1963080 (= (nullableZipper!1951 ((_ map or) lt!2349544 lt!2349547)) (exists!2515 ((_ map or) lt!2349544 lt!2349547) lambda!342476))))

(declare-fun bs!1558516 () Bool)

(assert (= bs!1558516 d!1963080))

(declare-fun m!7080116 () Bool)

(assert (=> bs!1558516 m!7080116))

(assert (=> b!6255914 d!1963080))

(declare-fun d!1963082 () Bool)

(assert (=> d!1963082 (= (isEmpty!36746 s!2326) ((_ is Nil!64720) s!2326))))

(assert (=> d!1962608 d!1963082))

(assert (=> d!1962608 d!1962648))

(declare-fun d!1963084 () Bool)

(declare-fun res!2582337 () Bool)

(declare-fun e!3806496 () Bool)

(assert (=> d!1963084 (=> res!2582337 e!3806496)))

(assert (=> d!1963084 (= res!2582337 ((_ is Nil!64719) zl!343))))

(assert (=> d!1963084 (= (forall!15301 zl!343 lambda!342407) e!3806496)))

(declare-fun b!6257338 () Bool)

(declare-fun e!3806497 () Bool)

(assert (=> b!6257338 (= e!3806496 e!3806497)))

(declare-fun res!2582338 () Bool)

(assert (=> b!6257338 (=> (not res!2582338) (not e!3806497))))

(declare-fun dynLambda!25572 (Int Context!11130) Bool)

(assert (=> b!6257338 (= res!2582338 (dynLambda!25572 lambda!342407 (h!71167 zl!343)))))

(declare-fun b!6257339 () Bool)

(assert (=> b!6257339 (= e!3806497 (forall!15301 (t!378393 zl!343) lambda!342407))))

(assert (= (and d!1963084 (not res!2582337)) b!6257338))

(assert (= (and b!6257338 res!2582338) b!6257339))

(declare-fun b_lambda!238127 () Bool)

(assert (=> (not b_lambda!238127) (not b!6257338)))

(declare-fun m!7080118 () Bool)

(assert (=> b!6257338 m!7080118))

(declare-fun m!7080120 () Bool)

(assert (=> b!6257339 m!7080120))

(assert (=> b!6256377 d!1963084))

(declare-fun d!1963086 () Bool)

(declare-fun c!1132889 () Bool)

(assert (=> d!1963086 (= c!1132889 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806498 () Bool)

(assert (=> d!1963086 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349558 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806498)))

(declare-fun b!6257340 () Bool)

(assert (=> b!6257340 (= e!3806498 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349558 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257341 () Bool)

(assert (=> b!6257341 (= e!3806498 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349558 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963086 c!1132889) b!6257340))

(assert (= (and d!1963086 (not c!1132889)) b!6257341))

(assert (=> d!1963086 m!7078806))

(assert (=> d!1963086 m!7080100))

(assert (=> b!6257340 m!7079242))

(declare-fun m!7080122 () Bool)

(assert (=> b!6257340 m!7080122))

(assert (=> b!6257341 m!7078806))

(assert (=> b!6257341 m!7080104))

(assert (=> b!6257341 m!7079242))

(assert (=> b!6257341 m!7080104))

(declare-fun m!7080124 () Bool)

(assert (=> b!6257341 m!7080124))

(assert (=> b!6257341 m!7078806))

(assert (=> b!6257341 m!7080108))

(assert (=> b!6257341 m!7080124))

(assert (=> b!6257341 m!7080108))

(declare-fun m!7080126 () Bool)

(assert (=> b!6257341 m!7080126))

(assert (=> b!6256382 d!1963086))

(declare-fun bs!1558517 () Bool)

(declare-fun d!1963088 () Bool)

(assert (= bs!1558517 (and d!1963088 b!6255545)))

(declare-fun lambda!342477 () Int)

(assert (=> bs!1558517 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342477 lambda!342315))))

(declare-fun bs!1558518 () Bool)

(assert (= bs!1558518 (and d!1963088 d!1962540)))

(assert (=> bs!1558518 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342477 lambda!342367))))

(declare-fun bs!1558519 () Bool)

(assert (= bs!1558519 (and d!1963088 d!1962614)))

(assert (=> bs!1558519 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342477 lambda!342390))))

(declare-fun bs!1558520 () Bool)

(assert (= bs!1558520 (and d!1963088 d!1963068)))

(assert (=> bs!1558520 (= lambda!342477 lambda!342475)))

(assert (=> d!1963088 true))

(assert (=> d!1963088 (= (derivationStepZipper!2147 lt!2349558 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349558 lambda!342477))))

(declare-fun bs!1558521 () Bool)

(assert (= bs!1558521 d!1963088))

(declare-fun m!7080128 () Bool)

(assert (=> bs!1558521 m!7080128))

(assert (=> b!6256382 d!1963088))

(assert (=> b!6256382 d!1963070))

(assert (=> b!6256382 d!1963072))

(declare-fun d!1963090 () Bool)

(assert (=> d!1963090 true))

(declare-fun setRes!42551 () Bool)

(assert (=> d!1963090 setRes!42551))

(declare-fun condSetEmpty!42551 () Bool)

(declare-fun res!2582341 () (InoxSet Context!11130))

(assert (=> d!1963090 (= condSetEmpty!42551 (= res!2582341 ((as const (Array Context!11130 Bool)) false)))))

(assert (=> d!1963090 (= (choose!46425 lt!2349545 lambda!342315) res!2582341)))

(declare-fun setIsEmpty!42551 () Bool)

(assert (=> setIsEmpty!42551 setRes!42551))

(declare-fun setElem!42551 () Context!11130)

(declare-fun e!3806501 () Bool)

(declare-fun tp!1745700 () Bool)

(declare-fun setNonEmpty!42551 () Bool)

(assert (=> setNonEmpty!42551 (= setRes!42551 (and tp!1745700 (inv!83699 setElem!42551) e!3806501))))

(declare-fun setRest!42551 () (InoxSet Context!11130))

(assert (=> setNonEmpty!42551 (= res!2582341 ((_ map or) (store ((as const (Array Context!11130 Bool)) false) setElem!42551 true) setRest!42551))))

(declare-fun b!6257344 () Bool)

(declare-fun tp!1745699 () Bool)

(assert (=> b!6257344 (= e!3806501 tp!1745699)))

(assert (= (and d!1963090 condSetEmpty!42551) setIsEmpty!42551))

(assert (= (and d!1963090 (not condSetEmpty!42551)) setNonEmpty!42551))

(assert (= setNonEmpty!42551 b!6257344))

(declare-fun m!7080130 () Bool)

(assert (=> setNonEmpty!42551 m!7080130))

(assert (=> d!1962638 d!1963090))

(declare-fun b!6257345 () Bool)

(declare-fun e!3806505 () (InoxSet Context!11130))

(declare-fun call!528149 () (InoxSet Context!11130))

(declare-fun call!528148 () (InoxSet Context!11130))

(assert (=> b!6257345 (= e!3806505 ((_ map or) call!528149 call!528148))))

(declare-fun b!6257346 () Bool)

(declare-fun e!3806506 () (InoxSet Context!11130))

(declare-fun e!3806507 () (InoxSet Context!11130))

(assert (=> b!6257346 (= e!3806506 e!3806507)))

(declare-fun c!1132893 () Bool)

(assert (=> b!6257346 (= c!1132893 ((_ is Union!16181) (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))

(declare-fun b!6257347 () Bool)

(declare-fun e!3806502 () (InoxSet Context!11130))

(assert (=> b!6257347 (= e!3806502 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528141 () Bool)

(declare-fun call!528147 () (InoxSet Context!11130))

(assert (=> bm!528141 (= call!528148 call!528147)))

(declare-fun bm!528142 () Bool)

(declare-fun call!528151 () (InoxSet Context!11130))

(assert (=> bm!528142 (= call!528151 call!528148)))

(declare-fun b!6257348 () Bool)

(assert (=> b!6257348 (= e!3806507 ((_ map or) call!528147 call!528149))))

(declare-fun d!1963092 () Bool)

(declare-fun c!1132894 () Bool)

(assert (=> d!1963092 (= c!1132894 (and ((_ is ElementMatch!16181) (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (= (c!1132364 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (h!71168 s!2326))))))

(assert (=> d!1963092 (= (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (h!71168 s!2326)) e!3806506)))

(declare-fun bm!528143 () Bool)

(declare-fun call!528150 () List!64842)

(declare-fun call!528146 () List!64842)

(assert (=> bm!528143 (= call!528150 call!528146)))

(declare-fun b!6257349 () Bool)

(declare-fun e!3806503 () (InoxSet Context!11130))

(assert (=> b!6257349 (= e!3806505 e!3806503)))

(declare-fun c!1132891 () Bool)

(assert (=> b!6257349 (= c!1132891 ((_ is Concat!25026) (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))

(declare-fun b!6257350 () Bool)

(declare-fun e!3806504 () Bool)

(assert (=> b!6257350 (= e!3806504 (nullable!6174 (regOne!32874 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))))

(declare-fun b!6257351 () Bool)

(assert (=> b!6257351 (= e!3806506 (store ((as const (Array Context!11130 Bool)) false) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) true))))

(declare-fun bm!528144 () Bool)

(declare-fun c!1132892 () Bool)

(assert (=> bm!528144 (= call!528146 ($colon$colon!2046 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))) (ite (or c!1132892 c!1132891) (regTwo!32874 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))))

(declare-fun bm!528145 () Bool)

(assert (=> bm!528145 (= call!528147 (derivationStepZipperDown!1429 (ite c!1132893 (regOne!32875 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (ite c!1132892 (regTwo!32874 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (ite c!1132891 (regOne!32874 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (reg!16510 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))) (ite (or c!1132893 c!1132892) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (Context!11131 call!528150)) (h!71168 s!2326)))))

(declare-fun b!6257352 () Bool)

(declare-fun c!1132890 () Bool)

(assert (=> b!6257352 (= c!1132890 ((_ is Star!16181) (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))

(assert (=> b!6257352 (= e!3806503 e!3806502)))

(declare-fun bm!528146 () Bool)

(assert (=> bm!528146 (= call!528149 (derivationStepZipperDown!1429 (ite c!1132893 (regTwo!32875 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (regOne!32874 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))) (ite c!1132893 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (Context!11131 call!528146)) (h!71168 s!2326)))))

(declare-fun b!6257353 () Bool)

(assert (=> b!6257353 (= e!3806503 call!528151)))

(declare-fun b!6257354 () Bool)

(assert (=> b!6257354 (= e!3806502 call!528151)))

(declare-fun b!6257355 () Bool)

(assert (=> b!6257355 (= c!1132892 e!3806504)))

(declare-fun res!2582342 () Bool)

(assert (=> b!6257355 (=> (not res!2582342) (not e!3806504))))

(assert (=> b!6257355 (= res!2582342 ((_ is Concat!25026) (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))

(assert (=> b!6257355 (= e!3806507 e!3806505)))

(assert (= (and d!1963092 c!1132894) b!6257351))

(assert (= (and d!1963092 (not c!1132894)) b!6257346))

(assert (= (and b!6257346 c!1132893) b!6257348))

(assert (= (and b!6257346 (not c!1132893)) b!6257355))

(assert (= (and b!6257355 res!2582342) b!6257350))

(assert (= (and b!6257355 c!1132892) b!6257345))

(assert (= (and b!6257355 (not c!1132892)) b!6257349))

(assert (= (and b!6257349 c!1132891) b!6257353))

(assert (= (and b!6257349 (not c!1132891)) b!6257352))

(assert (= (and b!6257352 c!1132890) b!6257354))

(assert (= (and b!6257352 (not c!1132890)) b!6257347))

(assert (= (or b!6257353 b!6257354) bm!528143))

(assert (= (or b!6257353 b!6257354) bm!528142))

(assert (= (or b!6257345 bm!528143) bm!528144))

(assert (= (or b!6257345 bm!528142) bm!528141))

(assert (= (or b!6257348 b!6257345) bm!528146))

(assert (= (or b!6257348 bm!528141) bm!528145))

(declare-fun m!7080132 () Bool)

(assert (=> bm!528144 m!7080132))

(declare-fun m!7080134 () Bool)

(assert (=> b!6257351 m!7080134))

(declare-fun m!7080136 () Bool)

(assert (=> bm!528146 m!7080136))

(declare-fun m!7080138 () Bool)

(assert (=> bm!528145 m!7080138))

(declare-fun m!7080140 () Bool)

(assert (=> b!6257350 m!7080140))

(assert (=> bm!527914 d!1963092))

(declare-fun d!1963094 () Bool)

(assert (=> d!1963094 (= (isEmpty!36742 (unfocusZipperList!1602 zl!343)) ((_ is Nil!64718) (unfocusZipperList!1602 zl!343)))))

(assert (=> b!6256133 d!1963094))

(declare-fun d!1963096 () Bool)

(assert (=> d!1963096 (= (flatMap!1686 lt!2349541 lambda!342367) (choose!46425 lt!2349541 lambda!342367))))

(declare-fun bs!1558522 () Bool)

(assert (= bs!1558522 d!1963096))

(declare-fun m!7080142 () Bool)

(assert (=> bs!1558522 m!7080142))

(assert (=> d!1962540 d!1963096))

(declare-fun d!1963098 () Bool)

(assert (=> d!1963098 (= (Exists!3251 (ite c!1132590 lambda!342388 lambda!342389)) (choose!46428 (ite c!1132590 lambda!342388 lambda!342389)))))

(declare-fun bs!1558523 () Bool)

(assert (= bs!1558523 d!1963098))

(declare-fun m!7080144 () Bool)

(assert (=> bs!1558523 m!7080144))

(assert (=> bm!527952 d!1963098))

(declare-fun d!1963100 () Bool)

(assert (=> d!1963100 true))

(declare-fun setRes!42552 () Bool)

(assert (=> d!1963100 setRes!42552))

(declare-fun condSetEmpty!42552 () Bool)

(declare-fun res!2582343 () (InoxSet Context!11130))

(assert (=> d!1963100 (= condSetEmpty!42552 (= res!2582343 ((as const (Array Context!11130 Bool)) false)))))

(assert (=> d!1963100 (= (choose!46425 z!1189 lambda!342315) res!2582343)))

(declare-fun setIsEmpty!42552 () Bool)

(assert (=> setIsEmpty!42552 setRes!42552))

(declare-fun setElem!42552 () Context!11130)

(declare-fun tp!1745702 () Bool)

(declare-fun e!3806508 () Bool)

(declare-fun setNonEmpty!42552 () Bool)

(assert (=> setNonEmpty!42552 (= setRes!42552 (and tp!1745702 (inv!83699 setElem!42552) e!3806508))))

(declare-fun setRest!42552 () (InoxSet Context!11130))

(assert (=> setNonEmpty!42552 (= res!2582343 ((_ map or) (store ((as const (Array Context!11130 Bool)) false) setElem!42552 true) setRest!42552))))

(declare-fun b!6257356 () Bool)

(declare-fun tp!1745701 () Bool)

(assert (=> b!6257356 (= e!3806508 tp!1745701)))

(assert (= (and d!1963100 condSetEmpty!42552) setIsEmpty!42552))

(assert (= (and d!1963100 (not condSetEmpty!42552)) setNonEmpty!42552))

(assert (= setNonEmpty!42552 b!6257356))

(declare-fun m!7080146 () Bool)

(assert (=> setNonEmpty!42552 m!7080146))

(assert (=> d!1962572 d!1963100))

(declare-fun d!1963102 () Bool)

(assert (=> d!1963102 (= (isEmpty!36742 (tail!11948 lt!2349529)) ((_ is Nil!64718) (tail!11948 lt!2349529)))))

(assert (=> b!6256360 d!1963102))

(declare-fun d!1963104 () Bool)

(assert (=> d!1963104 (= (tail!11948 lt!2349529) (t!378392 lt!2349529))))

(assert (=> b!6256360 d!1963104))

(declare-fun d!1963106 () Bool)

(assert (=> d!1963106 (= (isEmpty!36746 (tail!11947 s!2326)) ((_ is Nil!64720) (tail!11947 s!2326)))))

(assert (=> b!6256301 d!1963106))

(assert (=> b!6256301 d!1963038))

(assert (=> d!1962620 d!1962622))

(assert (=> d!1962620 d!1962626))

(declare-fun d!1963108 () Bool)

(assert (=> d!1963108 (= (matchR!8364 lt!2349533 s!2326) (matchZipper!2193 lt!2349541 s!2326))))

(assert (=> d!1963108 true))

(declare-fun _$44!1582 () Unit!158055)

(assert (=> d!1963108 (= (choose!46433 lt!2349541 lt!2349542 lt!2349533 s!2326) _$44!1582)))

(declare-fun bs!1558524 () Bool)

(assert (= bs!1558524 d!1963108))

(assert (=> bs!1558524 m!7078442))

(assert (=> bs!1558524 m!7078440))

(assert (=> d!1962620 d!1963108))

(declare-fun bm!528147 () Bool)

(declare-fun c!1132895 () Bool)

(declare-fun call!528154 () Bool)

(declare-fun c!1132896 () Bool)

(assert (=> bm!528147 (= call!528154 (validRegex!7917 (ite c!1132896 (reg!16510 lt!2349533) (ite c!1132895 (regOne!32875 lt!2349533) (regOne!32874 lt!2349533)))))))

(declare-fun b!6257357 () Bool)

(declare-fun e!3806512 () Bool)

(declare-fun call!528153 () Bool)

(assert (=> b!6257357 (= e!3806512 call!528153)))

(declare-fun bm!528148 () Bool)

(declare-fun call!528152 () Bool)

(assert (=> bm!528148 (= call!528152 call!528154)))

(declare-fun b!6257358 () Bool)

(declare-fun e!3806511 () Bool)

(declare-fun e!3806514 () Bool)

(assert (=> b!6257358 (= e!3806511 e!3806514)))

(declare-fun res!2582346 () Bool)

(assert (=> b!6257358 (= res!2582346 (not (nullable!6174 (reg!16510 lt!2349533))))))

(assert (=> b!6257358 (=> (not res!2582346) (not e!3806514))))

(declare-fun b!6257359 () Bool)

(declare-fun e!3806515 () Bool)

(assert (=> b!6257359 (= e!3806511 e!3806515)))

(assert (=> b!6257359 (= c!1132895 ((_ is Union!16181) lt!2349533))))

(declare-fun b!6257360 () Bool)

(declare-fun e!3806510 () Bool)

(declare-fun e!3806513 () Bool)

(assert (=> b!6257360 (= e!3806510 e!3806513)))

(declare-fun res!2582347 () Bool)

(assert (=> b!6257360 (=> (not res!2582347) (not e!3806513))))

(assert (=> b!6257360 (= res!2582347 call!528152)))

(declare-fun d!1963110 () Bool)

(declare-fun res!2582345 () Bool)

(declare-fun e!3806509 () Bool)

(assert (=> d!1963110 (=> res!2582345 e!3806509)))

(assert (=> d!1963110 (= res!2582345 ((_ is ElementMatch!16181) lt!2349533))))

(assert (=> d!1963110 (= (validRegex!7917 lt!2349533) e!3806509)))

(declare-fun b!6257361 () Bool)

(assert (=> b!6257361 (= e!3806514 call!528154)))

(declare-fun b!6257362 () Bool)

(assert (=> b!6257362 (= e!3806513 call!528153)))

(declare-fun b!6257363 () Bool)

(declare-fun res!2582348 () Bool)

(assert (=> b!6257363 (=> res!2582348 e!3806510)))

(assert (=> b!6257363 (= res!2582348 (not ((_ is Concat!25026) lt!2349533)))))

(assert (=> b!6257363 (= e!3806515 e!3806510)))

(declare-fun b!6257364 () Bool)

(declare-fun res!2582344 () Bool)

(assert (=> b!6257364 (=> (not res!2582344) (not e!3806512))))

(assert (=> b!6257364 (= res!2582344 call!528152)))

(assert (=> b!6257364 (= e!3806515 e!3806512)))

(declare-fun bm!528149 () Bool)

(assert (=> bm!528149 (= call!528153 (validRegex!7917 (ite c!1132895 (regTwo!32875 lt!2349533) (regTwo!32874 lt!2349533))))))

(declare-fun b!6257365 () Bool)

(assert (=> b!6257365 (= e!3806509 e!3806511)))

(assert (=> b!6257365 (= c!1132896 ((_ is Star!16181) lt!2349533))))

(assert (= (and d!1963110 (not res!2582345)) b!6257365))

(assert (= (and b!6257365 c!1132896) b!6257358))

(assert (= (and b!6257365 (not c!1132896)) b!6257359))

(assert (= (and b!6257358 res!2582346) b!6257361))

(assert (= (and b!6257359 c!1132895) b!6257364))

(assert (= (and b!6257359 (not c!1132895)) b!6257363))

(assert (= (and b!6257364 res!2582344) b!6257357))

(assert (= (and b!6257363 (not res!2582348)) b!6257360))

(assert (= (and b!6257360 res!2582347) b!6257362))

(assert (= (or b!6257357 b!6257362) bm!528149))

(assert (= (or b!6257364 b!6257360) bm!528148))

(assert (= (or b!6257361 bm!528148) bm!528147))

(declare-fun m!7080148 () Bool)

(assert (=> bm!528147 m!7080148))

(declare-fun m!7080150 () Bool)

(assert (=> b!6257358 m!7080150))

(declare-fun m!7080152 () Bool)

(assert (=> bm!528149 m!7080152))

(assert (=> d!1962620 d!1963110))

(declare-fun d!1963112 () Bool)

(assert (=> d!1963112 (= ($colon$colon!2046 (exprs!6065 lt!2349549) (ite (or c!1132573 c!1132572) (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (regTwo!32874 (regOne!32874 r!7292)))) (Cons!64718 (ite (or c!1132573 c!1132572) (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (regTwo!32874 (regOne!32874 r!7292))) (exprs!6065 lt!2349549)))))

(assert (=> bm!527938 d!1963112))

(declare-fun bm!528150 () Bool)

(declare-fun call!528155 () (InoxSet Context!11130))

(assert (=> bm!528150 (= call!528155 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343))))))) (h!71168 s!2326)))))

(declare-fun d!1963114 () Bool)

(declare-fun c!1132898 () Bool)

(declare-fun e!3806517 () Bool)

(assert (=> d!1963114 (= c!1132898 e!3806517)))

(declare-fun res!2582349 () Bool)

(assert (=> d!1963114 (=> (not res!2582349) (not e!3806517))))

(assert (=> d!1963114 (= res!2582349 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun e!3806516 () (InoxSet Context!11130))

(assert (=> d!1963114 (= (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))) (h!71168 s!2326)) e!3806516)))

(declare-fun b!6257366 () Bool)

(assert (=> b!6257366 (= e!3806517 (nullable!6174 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343))))))))))

(declare-fun b!6257367 () Bool)

(assert (=> b!6257367 (= e!3806516 ((_ map or) call!528155 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343))))))) (h!71168 s!2326))))))

(declare-fun b!6257368 () Bool)

(declare-fun e!3806518 () (InoxSet Context!11130))

(assert (=> b!6257368 (= e!3806516 e!3806518)))

(declare-fun c!1132897 () Bool)

(assert (=> b!6257368 (= c!1132897 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257369 () Bool)

(assert (=> b!6257369 (= e!3806518 call!528155)))

(declare-fun b!6257370 () Bool)

(assert (=> b!6257370 (= e!3806518 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1963114 res!2582349) b!6257366))

(assert (= (and d!1963114 c!1132898) b!6257367))

(assert (= (and d!1963114 (not c!1132898)) b!6257368))

(assert (= (and b!6257368 c!1132897) b!6257369))

(assert (= (and b!6257368 (not c!1132897)) b!6257370))

(assert (= (or b!6257367 b!6257369) bm!528150))

(declare-fun m!7080154 () Bool)

(assert (=> bm!528150 m!7080154))

(declare-fun m!7080156 () Bool)

(assert (=> b!6257366 m!7080156))

(declare-fun m!7080158 () Bool)

(assert (=> b!6257367 m!7080158))

(assert (=> b!6256071 d!1963114))

(assert (=> d!1962552 d!1963062))

(declare-fun b!6257371 () Bool)

(declare-fun e!3806522 () (InoxSet Context!11130))

(declare-fun call!528159 () (InoxSet Context!11130))

(declare-fun call!528158 () (InoxSet Context!11130))

(assert (=> b!6257371 (= e!3806522 ((_ map or) call!528159 call!528158))))

(declare-fun b!6257372 () Bool)

(declare-fun e!3806523 () (InoxSet Context!11130))

(declare-fun e!3806524 () (InoxSet Context!11130))

(assert (=> b!6257372 (= e!3806523 e!3806524)))

(declare-fun c!1132902 () Bool)

(assert (=> b!6257372 (= c!1132902 ((_ is Union!16181) (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))))))

(declare-fun b!6257373 () Bool)

(declare-fun e!3806519 () (InoxSet Context!11130))

(assert (=> b!6257373 (= e!3806519 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528151 () Bool)

(declare-fun call!528157 () (InoxSet Context!11130))

(assert (=> bm!528151 (= call!528158 call!528157)))

(declare-fun bm!528152 () Bool)

(declare-fun call!528161 () (InoxSet Context!11130))

(assert (=> bm!528152 (= call!528161 call!528158)))

(declare-fun b!6257374 () Bool)

(assert (=> b!6257374 (= e!3806524 ((_ map or) call!528157 call!528159))))

(declare-fun d!1963116 () Bool)

(declare-fun c!1132903 () Bool)

(assert (=> d!1963116 (= c!1132903 (and ((_ is ElementMatch!16181) (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))) (= (c!1132364 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))) (h!71168 s!2326))))))

(assert (=> d!1963116 (= (derivationStepZipperDown!1429 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292)))))) (ite (or c!1132579 c!1132578) lt!2349551 (Context!11131 call!527950)) (h!71168 s!2326)) e!3806523)))

(declare-fun bm!528153 () Bool)

(declare-fun call!528160 () List!64842)

(declare-fun call!528156 () List!64842)

(assert (=> bm!528153 (= call!528160 call!528156)))

(declare-fun b!6257375 () Bool)

(declare-fun e!3806520 () (InoxSet Context!11130))

(assert (=> b!6257375 (= e!3806522 e!3806520)))

(declare-fun c!1132900 () Bool)

(assert (=> b!6257375 (= c!1132900 ((_ is Concat!25026) (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))))))

(declare-fun e!3806521 () Bool)

(declare-fun b!6257376 () Bool)

(assert (=> b!6257376 (= e!3806521 (nullable!6174 (regOne!32874 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292)))))))))))

(declare-fun b!6257377 () Bool)

(assert (=> b!6257377 (= e!3806523 (store ((as const (Array Context!11130 Bool)) false) (ite (or c!1132579 c!1132578) lt!2349551 (Context!11131 call!527950)) true))))

(declare-fun bm!528154 () Bool)

(declare-fun c!1132901 () Bool)

(assert (=> bm!528154 (= call!528156 ($colon$colon!2046 (exprs!6065 (ite (or c!1132579 c!1132578) lt!2349551 (Context!11131 call!527950))) (ite (or c!1132901 c!1132900) (regTwo!32874 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))) (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292)))))))))))

(declare-fun bm!528155 () Bool)

(assert (=> bm!528155 (= call!528157 (derivationStepZipperDown!1429 (ite c!1132902 (regOne!32875 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))) (ite c!1132901 (regTwo!32874 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))) (ite c!1132900 (regOne!32874 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))) (reg!16510 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292)))))))))) (ite (or c!1132902 c!1132901) (ite (or c!1132579 c!1132578) lt!2349551 (Context!11131 call!527950)) (Context!11131 call!528160)) (h!71168 s!2326)))))

(declare-fun c!1132899 () Bool)

(declare-fun b!6257378 () Bool)

(assert (=> b!6257378 (= c!1132899 ((_ is Star!16181) (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))))))

(assert (=> b!6257378 (= e!3806520 e!3806519)))

(declare-fun bm!528156 () Bool)

(assert (=> bm!528156 (= call!528159 (derivationStepZipperDown!1429 (ite c!1132902 (regTwo!32875 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))) (regOne!32874 (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292)))))))) (ite c!1132902 (ite (or c!1132579 c!1132578) lt!2349551 (Context!11131 call!527950)) (Context!11131 call!528156)) (h!71168 s!2326)))))

(declare-fun b!6257379 () Bool)

(assert (=> b!6257379 (= e!3806520 call!528161)))

(declare-fun b!6257380 () Bool)

(assert (=> b!6257380 (= e!3806519 call!528161)))

(declare-fun b!6257381 () Bool)

(assert (=> b!6257381 (= c!1132901 e!3806521)))

(declare-fun res!2582350 () Bool)

(assert (=> b!6257381 (=> (not res!2582350) (not e!3806521))))

(assert (=> b!6257381 (= res!2582350 ((_ is Concat!25026) (ite c!1132579 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132578 (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (ite c!1132577 (regOne!32874 (regOne!32874 (regOne!32874 r!7292))) (reg!16510 (regOne!32874 (regOne!32874 r!7292))))))))))

(assert (=> b!6257381 (= e!3806524 e!3806522)))

(assert (= (and d!1963116 c!1132903) b!6257377))

(assert (= (and d!1963116 (not c!1132903)) b!6257372))

(assert (= (and b!6257372 c!1132902) b!6257374))

(assert (= (and b!6257372 (not c!1132902)) b!6257381))

(assert (= (and b!6257381 res!2582350) b!6257376))

(assert (= (and b!6257381 c!1132901) b!6257371))

(assert (= (and b!6257381 (not c!1132901)) b!6257375))

(assert (= (and b!6257375 c!1132900) b!6257379))

(assert (= (and b!6257375 (not c!1132900)) b!6257378))

(assert (= (and b!6257378 c!1132899) b!6257380))

(assert (= (and b!6257378 (not c!1132899)) b!6257373))

(assert (= (or b!6257379 b!6257380) bm!528153))

(assert (= (or b!6257379 b!6257380) bm!528152))

(assert (= (or b!6257371 bm!528153) bm!528154))

(assert (= (or b!6257371 bm!528152) bm!528151))

(assert (= (or b!6257374 b!6257371) bm!528156))

(assert (= (or b!6257374 bm!528151) bm!528155))

(declare-fun m!7080160 () Bool)

(assert (=> bm!528154 m!7080160))

(declare-fun m!7080162 () Bool)

(assert (=> b!6257377 m!7080162))

(declare-fun m!7080164 () Bool)

(assert (=> bm!528156 m!7080164))

(declare-fun m!7080166 () Bool)

(assert (=> bm!528155 m!7080166))

(declare-fun m!7080168 () Bool)

(assert (=> b!6257376 m!7080168))

(assert (=> bm!527945 d!1963116))

(declare-fun d!1963118 () Bool)

(declare-fun res!2582353 () Bool)

(declare-fun e!3806526 () Bool)

(assert (=> d!1963118 (=> res!2582353 e!3806526)))

(assert (=> d!1963118 (= res!2582353 ((_ is EmptyExpr!16181) (regOne!32874 (regOne!32874 r!7292))))))

(assert (=> d!1963118 (= (nullableFct!2126 (regOne!32874 (regOne!32874 r!7292))) e!3806526)))

(declare-fun b!6257382 () Bool)

(declare-fun e!3806529 () Bool)

(declare-fun e!3806527 () Bool)

(assert (=> b!6257382 (= e!3806529 e!3806527)))

(declare-fun res!2582354 () Bool)

(declare-fun call!528163 () Bool)

(assert (=> b!6257382 (= res!2582354 call!528163)))

(assert (=> b!6257382 (=> res!2582354 e!3806527)))

(declare-fun b!6257383 () Bool)

(declare-fun e!3806528 () Bool)

(declare-fun call!528162 () Bool)

(assert (=> b!6257383 (= e!3806528 call!528162)))

(declare-fun b!6257384 () Bool)

(declare-fun e!3806525 () Bool)

(declare-fun e!3806530 () Bool)

(assert (=> b!6257384 (= e!3806525 e!3806530)))

(declare-fun res!2582351 () Bool)

(assert (=> b!6257384 (=> res!2582351 e!3806530)))

(assert (=> b!6257384 (= res!2582351 ((_ is Star!16181) (regOne!32874 (regOne!32874 r!7292))))))

(declare-fun b!6257385 () Bool)

(assert (=> b!6257385 (= e!3806526 e!3806525)))

(declare-fun res!2582352 () Bool)

(assert (=> b!6257385 (=> (not res!2582352) (not e!3806525))))

(assert (=> b!6257385 (= res!2582352 (and (not ((_ is EmptyLang!16181) (regOne!32874 (regOne!32874 r!7292)))) (not ((_ is ElementMatch!16181) (regOne!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257386 () Bool)

(assert (=> b!6257386 (= e!3806530 e!3806529)))

(declare-fun c!1132904 () Bool)

(assert (=> b!6257386 (= c!1132904 ((_ is Union!16181) (regOne!32874 (regOne!32874 r!7292))))))

(declare-fun bm!528157 () Bool)

(assert (=> bm!528157 (= call!528163 (nullable!6174 (ite c!1132904 (regOne!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257387 () Bool)

(assert (=> b!6257387 (= e!3806529 e!3806528)))

(declare-fun res!2582355 () Bool)

(assert (=> b!6257387 (= res!2582355 call!528163)))

(assert (=> b!6257387 (=> (not res!2582355) (not e!3806528))))

(declare-fun bm!528158 () Bool)

(assert (=> bm!528158 (= call!528162 (nullable!6174 (ite c!1132904 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257388 () Bool)

(assert (=> b!6257388 (= e!3806527 call!528162)))

(assert (= (and d!1963118 (not res!2582353)) b!6257385))

(assert (= (and b!6257385 res!2582352) b!6257384))

(assert (= (and b!6257384 (not res!2582351)) b!6257386))

(assert (= (and b!6257386 c!1132904) b!6257382))

(assert (= (and b!6257386 (not c!1132904)) b!6257387))

(assert (= (and b!6257382 (not res!2582354)) b!6257388))

(assert (= (and b!6257387 res!2582355) b!6257383))

(assert (= (or b!6257388 b!6257383) bm!528158))

(assert (= (or b!6257382 b!6257387) bm!528157))

(declare-fun m!7080170 () Bool)

(assert (=> bm!528157 m!7080170))

(declare-fun m!7080172 () Bool)

(assert (=> bm!528158 m!7080172))

(assert (=> d!1962644 d!1963118))

(assert (=> bm!527956 d!1963082))

(declare-fun bs!1558525 () Bool)

(declare-fun d!1963120 () Bool)

(assert (= bs!1558525 (and d!1963120 b!6256372)))

(declare-fun lambda!342478 () Int)

(assert (=> bs!1558525 (not (= lambda!342478 lambda!342404))))

(declare-fun bs!1558526 () Bool)

(assert (= bs!1558526 (and d!1963120 d!1963080)))

(assert (=> bs!1558526 (= lambda!342478 lambda!342476)))

(declare-fun bs!1558527 () Bool)

(assert (= bs!1558527 (and d!1963120 b!6256377)))

(assert (=> bs!1558527 (not (= lambda!342478 lambda!342407))))

(declare-fun bs!1558528 () Bool)

(assert (= bs!1558528 (and d!1963120 d!1963042)))

(assert (=> bs!1558528 (= lambda!342478 lambda!342471)))

(declare-fun bs!1558529 () Bool)

(assert (= bs!1558529 (and d!1963120 b!6256375)))

(assert (=> bs!1558529 (not (= lambda!342478 lambda!342406))))

(declare-fun bs!1558530 () Bool)

(assert (= bs!1558530 (and d!1963120 b!6256370)))

(assert (=> bs!1558530 (not (= lambda!342478 lambda!342403))))

(assert (=> d!1963120 (= (nullableZipper!1951 lt!2349552) (exists!2515 lt!2349552 lambda!342478))))

(declare-fun bs!1558531 () Bool)

(assert (= bs!1558531 d!1963120))

(declare-fun m!7080174 () Bool)

(assert (=> bs!1558531 m!7080174))

(assert (=> b!6256379 d!1963120))

(declare-fun d!1963122 () Bool)

(declare-fun c!1132905 () Bool)

(assert (=> d!1963122 (= c!1132905 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806531 () Bool)

(assert (=> d!1963122 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349560 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806531)))

(declare-fun b!6257389 () Bool)

(assert (=> b!6257389 (= e!3806531 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349560 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257390 () Bool)

(assert (=> b!6257390 (= e!3806531 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349560 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963122 c!1132905) b!6257389))

(assert (= (and d!1963122 (not c!1132905)) b!6257390))

(assert (=> d!1963122 m!7078806))

(assert (=> d!1963122 m!7080100))

(assert (=> b!6257389 m!7078954))

(declare-fun m!7080176 () Bool)

(assert (=> b!6257389 m!7080176))

(assert (=> b!6257390 m!7078806))

(assert (=> b!6257390 m!7080104))

(assert (=> b!6257390 m!7078954))

(assert (=> b!6257390 m!7080104))

(declare-fun m!7080178 () Bool)

(assert (=> b!6257390 m!7080178))

(assert (=> b!6257390 m!7078806))

(assert (=> b!6257390 m!7080108))

(assert (=> b!6257390 m!7080178))

(assert (=> b!6257390 m!7080108))

(declare-fun m!7080180 () Bool)

(assert (=> b!6257390 m!7080180))

(assert (=> b!6256057 d!1963122))

(declare-fun bs!1558532 () Bool)

(declare-fun d!1963124 () Bool)

(assert (= bs!1558532 (and d!1963124 b!6255545)))

(declare-fun lambda!342479 () Int)

(assert (=> bs!1558532 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342479 lambda!342315))))

(declare-fun bs!1558533 () Bool)

(assert (= bs!1558533 (and d!1963124 d!1962614)))

(assert (=> bs!1558533 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342479 lambda!342390))))

(declare-fun bs!1558534 () Bool)

(assert (= bs!1558534 (and d!1963124 d!1963088)))

(assert (=> bs!1558534 (= lambda!342479 lambda!342477)))

(declare-fun bs!1558535 () Bool)

(assert (= bs!1558535 (and d!1963124 d!1962540)))

(assert (=> bs!1558535 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342479 lambda!342367))))

(declare-fun bs!1558536 () Bool)

(assert (= bs!1558536 (and d!1963124 d!1963068)))

(assert (=> bs!1558536 (= lambda!342479 lambda!342475)))

(assert (=> d!1963124 true))

(assert (=> d!1963124 (= (derivationStepZipper!2147 lt!2349560 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349560 lambda!342479))))

(declare-fun bs!1558537 () Bool)

(assert (= bs!1558537 d!1963124))

(declare-fun m!7080182 () Bool)

(assert (=> bs!1558537 m!7080182))

(assert (=> b!6256057 d!1963124))

(assert (=> b!6256057 d!1963070))

(assert (=> b!6256057 d!1963072))

(assert (=> d!1962626 d!1963082))

(assert (=> b!6255911 d!1962554))

(declare-fun d!1963126 () Bool)

(assert (=> d!1963126 (= (isEmptyExpr!1587 lt!2349680) ((_ is EmptyExpr!16181) lt!2349680))))

(assert (=> b!6256328 d!1963126))

(declare-fun bs!1558538 () Bool)

(declare-fun d!1963128 () Bool)

(assert (= bs!1558538 (and d!1963128 b!6256372)))

(declare-fun lambda!342480 () Int)

(assert (=> bs!1558538 (not (= lambda!342480 lambda!342404))))

(declare-fun bs!1558539 () Bool)

(assert (= bs!1558539 (and d!1963128 d!1963080)))

(assert (=> bs!1558539 (= lambda!342480 lambda!342476)))

(declare-fun bs!1558540 () Bool)

(assert (= bs!1558540 (and d!1963128 b!6256377)))

(assert (=> bs!1558540 (not (= lambda!342480 lambda!342407))))

(declare-fun bs!1558541 () Bool)

(assert (= bs!1558541 (and d!1963128 d!1963120)))

(assert (=> bs!1558541 (= lambda!342480 lambda!342478)))

(declare-fun bs!1558542 () Bool)

(assert (= bs!1558542 (and d!1963128 d!1963042)))

(assert (=> bs!1558542 (= lambda!342480 lambda!342471)))

(declare-fun bs!1558543 () Bool)

(assert (= bs!1558543 (and d!1963128 b!6256375)))

(assert (=> bs!1558543 (not (= lambda!342480 lambda!342406))))

(declare-fun bs!1558544 () Bool)

(assert (= bs!1558544 (and d!1963128 b!6256370)))

(assert (=> bs!1558544 (not (= lambda!342480 lambda!342403))))

(assert (=> d!1963128 (= (nullableZipper!1951 lt!2349532) (exists!2515 lt!2349532 lambda!342480))))

(declare-fun bs!1558545 () Bool)

(assert (= bs!1558545 d!1963128))

(declare-fun m!7080184 () Bool)

(assert (=> bs!1558545 m!7080184))

(assert (=> b!6255884 d!1963128))

(declare-fun bm!528159 () Bool)

(declare-fun c!1132907 () Bool)

(declare-fun c!1132906 () Bool)

(declare-fun call!528166 () Bool)

(assert (=> bm!528159 (= call!528166 (validRegex!7917 (ite c!1132907 (reg!16510 lt!2349646) (ite c!1132906 (regOne!32875 lt!2349646) (regOne!32874 lt!2349646)))))))

(declare-fun b!6257391 () Bool)

(declare-fun e!3806535 () Bool)

(declare-fun call!528165 () Bool)

(assert (=> b!6257391 (= e!3806535 call!528165)))

(declare-fun bm!528160 () Bool)

(declare-fun call!528164 () Bool)

(assert (=> bm!528160 (= call!528164 call!528166)))

(declare-fun b!6257392 () Bool)

(declare-fun e!3806534 () Bool)

(declare-fun e!3806537 () Bool)

(assert (=> b!6257392 (= e!3806534 e!3806537)))

(declare-fun res!2582358 () Bool)

(assert (=> b!6257392 (= res!2582358 (not (nullable!6174 (reg!16510 lt!2349646))))))

(assert (=> b!6257392 (=> (not res!2582358) (not e!3806537))))

(declare-fun b!6257393 () Bool)

(declare-fun e!3806538 () Bool)

(assert (=> b!6257393 (= e!3806534 e!3806538)))

(assert (=> b!6257393 (= c!1132906 ((_ is Union!16181) lt!2349646))))

(declare-fun b!6257394 () Bool)

(declare-fun e!3806533 () Bool)

(declare-fun e!3806536 () Bool)

(assert (=> b!6257394 (= e!3806533 e!3806536)))

(declare-fun res!2582359 () Bool)

(assert (=> b!6257394 (=> (not res!2582359) (not e!3806536))))

(assert (=> b!6257394 (= res!2582359 call!528164)))

(declare-fun d!1963130 () Bool)

(declare-fun res!2582357 () Bool)

(declare-fun e!3806532 () Bool)

(assert (=> d!1963130 (=> res!2582357 e!3806532)))

(assert (=> d!1963130 (= res!2582357 ((_ is ElementMatch!16181) lt!2349646))))

(assert (=> d!1963130 (= (validRegex!7917 lt!2349646) e!3806532)))

(declare-fun b!6257395 () Bool)

(assert (=> b!6257395 (= e!3806537 call!528166)))

(declare-fun b!6257396 () Bool)

(assert (=> b!6257396 (= e!3806536 call!528165)))

(declare-fun b!6257397 () Bool)

(declare-fun res!2582360 () Bool)

(assert (=> b!6257397 (=> res!2582360 e!3806533)))

(assert (=> b!6257397 (= res!2582360 (not ((_ is Concat!25026) lt!2349646)))))

(assert (=> b!6257397 (= e!3806538 e!3806533)))

(declare-fun b!6257398 () Bool)

(declare-fun res!2582356 () Bool)

(assert (=> b!6257398 (=> (not res!2582356) (not e!3806535))))

(assert (=> b!6257398 (= res!2582356 call!528164)))

(assert (=> b!6257398 (= e!3806538 e!3806535)))

(declare-fun bm!528161 () Bool)

(assert (=> bm!528161 (= call!528165 (validRegex!7917 (ite c!1132906 (regTwo!32875 lt!2349646) (regTwo!32874 lt!2349646))))))

(declare-fun b!6257399 () Bool)

(assert (=> b!6257399 (= e!3806532 e!3806534)))

(assert (=> b!6257399 (= c!1132907 ((_ is Star!16181) lt!2349646))))

(assert (= (and d!1963130 (not res!2582357)) b!6257399))

(assert (= (and b!6257399 c!1132907) b!6257392))

(assert (= (and b!6257399 (not c!1132907)) b!6257393))

(assert (= (and b!6257392 res!2582358) b!6257395))

(assert (= (and b!6257393 c!1132906) b!6257398))

(assert (= (and b!6257393 (not c!1132906)) b!6257397))

(assert (= (and b!6257398 res!2582356) b!6257391))

(assert (= (and b!6257397 (not res!2582360)) b!6257394))

(assert (= (and b!6257394 res!2582359) b!6257396))

(assert (= (or b!6257391 b!6257396) bm!528161))

(assert (= (or b!6257398 b!6257394) bm!528160))

(assert (= (or b!6257395 bm!528160) bm!528159))

(declare-fun m!7080186 () Bool)

(assert (=> bm!528159 m!7080186))

(declare-fun m!7080188 () Bool)

(assert (=> b!6257392 m!7080188))

(declare-fun m!7080190 () Bool)

(assert (=> bm!528161 m!7080190))

(assert (=> d!1962578 d!1963130))

(declare-fun d!1963132 () Bool)

(declare-fun res!2582361 () Bool)

(declare-fun e!3806539 () Bool)

(assert (=> d!1963132 (=> res!2582361 e!3806539)))

(assert (=> d!1963132 (= res!2582361 ((_ is Nil!64718) (unfocusZipperList!1602 zl!343)))))

(assert (=> d!1963132 (= (forall!15300 (unfocusZipperList!1602 zl!343) lambda!342371) e!3806539)))

(declare-fun b!6257400 () Bool)

(declare-fun e!3806540 () Bool)

(assert (=> b!6257400 (= e!3806539 e!3806540)))

(declare-fun res!2582362 () Bool)

(assert (=> b!6257400 (=> (not res!2582362) (not e!3806540))))

(assert (=> b!6257400 (= res!2582362 (dynLambda!25571 lambda!342371 (h!71166 (unfocusZipperList!1602 zl!343))))))

(declare-fun b!6257401 () Bool)

(assert (=> b!6257401 (= e!3806540 (forall!15300 (t!378392 (unfocusZipperList!1602 zl!343)) lambda!342371))))

(assert (= (and d!1963132 (not res!2582361)) b!6257400))

(assert (= (and b!6257400 res!2582362) b!6257401))

(declare-fun b_lambda!238129 () Bool)

(assert (=> (not b_lambda!238129) (not b!6257400)))

(declare-fun m!7080192 () Bool)

(assert (=> b!6257400 m!7080192))

(declare-fun m!7080194 () Bool)

(assert (=> b!6257401 m!7080194))

(assert (=> d!1962578 d!1963132))

(declare-fun d!1963134 () Bool)

(assert (=> d!1963134 (= (nullable!6174 (reg!16510 r!7292)) (nullableFct!2126 (reg!16510 r!7292)))))

(declare-fun bs!1558546 () Bool)

(assert (= bs!1558546 d!1963134))

(declare-fun m!7080196 () Bool)

(assert (=> bs!1558546 m!7080196))

(assert (=> b!6256402 d!1963134))

(declare-fun d!1963136 () Bool)

(declare-fun c!1132908 () Bool)

(assert (=> d!1963136 (= c!1132908 (isEmpty!36746 (tail!11947 s!2326)))))

(declare-fun e!3806541 () Bool)

(assert (=> d!1963136 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349541 (head!12862 s!2326)) (tail!11947 s!2326)) e!3806541)))

(declare-fun b!6257402 () Bool)

(assert (=> b!6257402 (= e!3806541 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349541 (head!12862 s!2326))))))

(declare-fun b!6257403 () Bool)

(assert (=> b!6257403 (= e!3806541 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349541 (head!12862 s!2326)) (head!12862 (tail!11947 s!2326))) (tail!11947 (tail!11947 s!2326))))))

(assert (= (and d!1963136 c!1132908) b!6257402))

(assert (= (and d!1963136 (not c!1132908)) b!6257403))

(assert (=> d!1963136 m!7079116))

(assert (=> d!1963136 m!7079118))

(assert (=> b!6257402 m!7079194))

(declare-fun m!7080198 () Bool)

(assert (=> b!6257402 m!7080198))

(assert (=> b!6257403 m!7079116))

(assert (=> b!6257403 m!7080020))

(assert (=> b!6257403 m!7079194))

(assert (=> b!6257403 m!7080020))

(declare-fun m!7080200 () Bool)

(assert (=> b!6257403 m!7080200))

(assert (=> b!6257403 m!7079116))

(assert (=> b!6257403 m!7080016))

(assert (=> b!6257403 m!7080200))

(assert (=> b!6257403 m!7080016))

(declare-fun m!7080202 () Bool)

(assert (=> b!6257403 m!7080202))

(assert (=> b!6256363 d!1963136))

(declare-fun bs!1558547 () Bool)

(declare-fun d!1963138 () Bool)

(assert (= bs!1558547 (and d!1963138 b!6255545)))

(declare-fun lambda!342481 () Int)

(assert (=> bs!1558547 (= (= (head!12862 s!2326) (h!71168 s!2326)) (= lambda!342481 lambda!342315))))

(declare-fun bs!1558548 () Bool)

(assert (= bs!1558548 (and d!1963138 d!1962614)))

(assert (=> bs!1558548 (= (= (head!12862 s!2326) (h!71168 s!2326)) (= lambda!342481 lambda!342390))))

(declare-fun bs!1558549 () Bool)

(assert (= bs!1558549 (and d!1963138 d!1963088)))

(assert (=> bs!1558549 (= (= (head!12862 s!2326) (head!12862 (t!378394 s!2326))) (= lambda!342481 lambda!342477))))

(declare-fun bs!1558550 () Bool)

(assert (= bs!1558550 (and d!1963138 d!1963068)))

(assert (=> bs!1558550 (= (= (head!12862 s!2326) (head!12862 (t!378394 s!2326))) (= lambda!342481 lambda!342475))))

(declare-fun bs!1558551 () Bool)

(assert (= bs!1558551 (and d!1963138 d!1962540)))

(assert (=> bs!1558551 (= (= (head!12862 s!2326) (h!71168 s!2326)) (= lambda!342481 lambda!342367))))

(declare-fun bs!1558552 () Bool)

(assert (= bs!1558552 (and d!1963138 d!1963124)))

(assert (=> bs!1558552 (= (= (head!12862 s!2326) (head!12862 (t!378394 s!2326))) (= lambda!342481 lambda!342479))))

(assert (=> d!1963138 true))

(assert (=> d!1963138 (= (derivationStepZipper!2147 lt!2349541 (head!12862 s!2326)) (flatMap!1686 lt!2349541 lambda!342481))))

(declare-fun bs!1558553 () Bool)

(assert (= bs!1558553 d!1963138))

(declare-fun m!7080204 () Bool)

(assert (=> bs!1558553 m!7080204))

(assert (=> b!6256363 d!1963138))

(assert (=> b!6256363 d!1963036))

(assert (=> b!6256363 d!1963038))

(declare-fun b!6257412 () Bool)

(declare-fun e!3806547 () List!64844)

(assert (=> b!6257412 (= e!3806547 (t!378394 s!2326))))

(declare-fun b!6257414 () Bool)

(declare-fun res!2582367 () Bool)

(declare-fun e!3806546 () Bool)

(assert (=> b!6257414 (=> (not res!2582367) (not e!3806546))))

(declare-fun lt!2349781 () List!64844)

(declare-fun size!40303 (List!64844) Int)

(assert (=> b!6257414 (= res!2582367 (= (size!40303 lt!2349781) (+ (size!40303 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720))) (size!40303 (t!378394 s!2326)))))))

(declare-fun b!6257415 () Bool)

(assert (=> b!6257415 (= e!3806546 (or (not (= (t!378394 s!2326) Nil!64720)) (= lt!2349781 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)))))))

(declare-fun b!6257413 () Bool)

(assert (=> b!6257413 (= e!3806547 (Cons!64720 (h!71168 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720))) (++!14255 (t!378394 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720))) (t!378394 s!2326))))))

(declare-fun d!1963140 () Bool)

(assert (=> d!1963140 e!3806546))

(declare-fun res!2582368 () Bool)

(assert (=> d!1963140 (=> (not res!2582368) (not e!3806546))))

(declare-fun content!12147 (List!64844) (InoxSet C!32632))

(assert (=> d!1963140 (= res!2582368 (= (content!12147 lt!2349781) ((_ map or) (content!12147 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720))) (content!12147 (t!378394 s!2326)))))))

(assert (=> d!1963140 (= lt!2349781 e!3806547)))

(declare-fun c!1132911 () Bool)

(assert (=> d!1963140 (= c!1132911 ((_ is Nil!64720) (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720))))))

(assert (=> d!1963140 (= (++!14255 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (t!378394 s!2326)) lt!2349781)))

(assert (= (and d!1963140 c!1132911) b!6257412))

(assert (= (and d!1963140 (not c!1132911)) b!6257413))

(assert (= (and d!1963140 res!2582368) b!6257414))

(assert (= (and b!6257414 res!2582367) b!6257415))

(declare-fun m!7080206 () Bool)

(assert (=> b!6257414 m!7080206))

(assert (=> b!6257414 m!7079054))

(declare-fun m!7080208 () Bool)

(assert (=> b!6257414 m!7080208))

(declare-fun m!7080210 () Bool)

(assert (=> b!6257414 m!7080210))

(declare-fun m!7080212 () Bool)

(assert (=> b!6257413 m!7080212))

(declare-fun m!7080214 () Bool)

(assert (=> d!1963140 m!7080214))

(assert (=> d!1963140 m!7079054))

(declare-fun m!7080216 () Bool)

(assert (=> d!1963140 m!7080216))

(declare-fun m!7080218 () Bool)

(assert (=> d!1963140 m!7080218))

(assert (=> b!6256170 d!1963140))

(declare-fun b!6257416 () Bool)

(declare-fun e!3806549 () List!64844)

(assert (=> b!6257416 (= e!3806549 (Cons!64720 (h!71168 s!2326) Nil!64720))))

(declare-fun b!6257418 () Bool)

(declare-fun res!2582369 () Bool)

(declare-fun e!3806548 () Bool)

(assert (=> b!6257418 (=> (not res!2582369) (not e!3806548))))

(declare-fun lt!2349782 () List!64844)

(assert (=> b!6257418 (= res!2582369 (= (size!40303 lt!2349782) (+ (size!40303 Nil!64720) (size!40303 (Cons!64720 (h!71168 s!2326) Nil!64720)))))))

(declare-fun b!6257419 () Bool)

(assert (=> b!6257419 (= e!3806548 (or (not (= (Cons!64720 (h!71168 s!2326) Nil!64720) Nil!64720)) (= lt!2349782 Nil!64720)))))

(declare-fun b!6257417 () Bool)

(assert (=> b!6257417 (= e!3806549 (Cons!64720 (h!71168 Nil!64720) (++!14255 (t!378394 Nil!64720) (Cons!64720 (h!71168 s!2326) Nil!64720))))))

(declare-fun d!1963142 () Bool)

(assert (=> d!1963142 e!3806548))

(declare-fun res!2582370 () Bool)

(assert (=> d!1963142 (=> (not res!2582370) (not e!3806548))))

(assert (=> d!1963142 (= res!2582370 (= (content!12147 lt!2349782) ((_ map or) (content!12147 Nil!64720) (content!12147 (Cons!64720 (h!71168 s!2326) Nil!64720)))))))

(assert (=> d!1963142 (= lt!2349782 e!3806549)))

(declare-fun c!1132912 () Bool)

(assert (=> d!1963142 (= c!1132912 ((_ is Nil!64720) Nil!64720))))

(assert (=> d!1963142 (= (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) lt!2349782)))

(assert (= (and d!1963142 c!1132912) b!6257416))

(assert (= (and d!1963142 (not c!1132912)) b!6257417))

(assert (= (and d!1963142 res!2582370) b!6257418))

(assert (= (and b!6257418 res!2582369) b!6257419))

(declare-fun m!7080220 () Bool)

(assert (=> b!6257418 m!7080220))

(declare-fun m!7080222 () Bool)

(assert (=> b!6257418 m!7080222))

(declare-fun m!7080224 () Bool)

(assert (=> b!6257418 m!7080224))

(declare-fun m!7080226 () Bool)

(assert (=> b!6257417 m!7080226))

(declare-fun m!7080228 () Bool)

(assert (=> d!1963142 m!7080228))

(declare-fun m!7080230 () Bool)

(assert (=> d!1963142 m!7080230))

(declare-fun m!7080232 () Bool)

(assert (=> d!1963142 m!7080232))

(assert (=> b!6256170 d!1963142))

(declare-fun d!1963144 () Bool)

(assert (=> d!1963144 (= (++!14255 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (t!378394 s!2326)) s!2326)))

(declare-fun lt!2349785 () Unit!158055)

(declare-fun choose!46435 (List!64844 C!32632 List!64844 List!64844) Unit!158055)

(assert (=> d!1963144 (= lt!2349785 (choose!46435 Nil!64720 (h!71168 s!2326) (t!378394 s!2326) s!2326))))

(assert (=> d!1963144 (= (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) (t!378394 s!2326))) s!2326)))

(assert (=> d!1963144 (= (lemmaMoveElementToOtherListKeepsConcatEq!2350 Nil!64720 (h!71168 s!2326) (t!378394 s!2326) s!2326) lt!2349785)))

(declare-fun bs!1558554 () Bool)

(assert (= bs!1558554 d!1963144))

(assert (=> bs!1558554 m!7079054))

(assert (=> bs!1558554 m!7079054))

(assert (=> bs!1558554 m!7079056))

(declare-fun m!7080234 () Bool)

(assert (=> bs!1558554 m!7080234))

(declare-fun m!7080236 () Bool)

(assert (=> bs!1558554 m!7080236))

(assert (=> b!6256170 d!1963144))

(declare-fun b!6257420 () Bool)

(declare-fun e!3806554 () Option!16072)

(declare-fun e!3806550 () Option!16072)

(assert (=> b!6257420 (= e!3806554 e!3806550)))

(declare-fun c!1132913 () Bool)

(assert (=> b!6257420 (= c!1132913 ((_ is Nil!64720) (t!378394 s!2326)))))

(declare-fun b!6257421 () Bool)

(assert (=> b!6257421 (= e!3806550 None!16071)))

(declare-fun b!6257422 () Bool)

(declare-fun e!3806551 () Bool)

(assert (=> b!6257422 (= e!3806551 (matchR!8364 (regTwo!32874 r!7292) (t!378394 s!2326)))))

(declare-fun b!6257423 () Bool)

(declare-fun lt!2349786 () Unit!158055)

(declare-fun lt!2349788 () Unit!158055)

(assert (=> b!6257423 (= lt!2349786 lt!2349788)))

(assert (=> b!6257423 (= (++!14255 (++!14255 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (Cons!64720 (h!71168 (t!378394 s!2326)) Nil!64720)) (t!378394 (t!378394 s!2326))) s!2326)))

(assert (=> b!6257423 (= lt!2349788 (lemmaMoveElementToOtherListKeepsConcatEq!2350 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (h!71168 (t!378394 s!2326)) (t!378394 (t!378394 s!2326)) s!2326))))

(assert (=> b!6257423 (= e!3806550 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) (++!14255 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (Cons!64720 (h!71168 (t!378394 s!2326)) Nil!64720)) (t!378394 (t!378394 s!2326)) s!2326))))

(declare-fun b!6257424 () Bool)

(declare-fun res!2582373 () Bool)

(declare-fun e!3806552 () Bool)

(assert (=> b!6257424 (=> (not res!2582373) (not e!3806552))))

(declare-fun lt!2349787 () Option!16072)

(assert (=> b!6257424 (= res!2582373 (matchR!8364 (regOne!32874 r!7292) (_1!36463 (get!22361 lt!2349787))))))

(declare-fun b!6257425 () Bool)

(assert (=> b!6257425 (= e!3806552 (= (++!14255 (_1!36463 (get!22361 lt!2349787)) (_2!36463 (get!22361 lt!2349787))) s!2326))))

(declare-fun b!6257427 () Bool)

(declare-fun e!3806553 () Bool)

(assert (=> b!6257427 (= e!3806553 (not (isDefined!12775 lt!2349787)))))

(declare-fun b!6257428 () Bool)

(assert (=> b!6257428 (= e!3806554 (Some!16071 (tuple2!66321 (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (t!378394 s!2326))))))

(declare-fun b!6257426 () Bool)

(declare-fun res!2582372 () Bool)

(assert (=> b!6257426 (=> (not res!2582372) (not e!3806552))))

(assert (=> b!6257426 (= res!2582372 (matchR!8364 (regTwo!32874 r!7292) (_2!36463 (get!22361 lt!2349787))))))

(declare-fun d!1963146 () Bool)

(assert (=> d!1963146 e!3806553))

(declare-fun res!2582374 () Bool)

(assert (=> d!1963146 (=> res!2582374 e!3806553)))

(assert (=> d!1963146 (= res!2582374 e!3806552)))

(declare-fun res!2582371 () Bool)

(assert (=> d!1963146 (=> (not res!2582371) (not e!3806552))))

(assert (=> d!1963146 (= res!2582371 (isDefined!12775 lt!2349787))))

(assert (=> d!1963146 (= lt!2349787 e!3806554)))

(declare-fun c!1132914 () Bool)

(assert (=> d!1963146 (= c!1132914 e!3806551)))

(declare-fun res!2582375 () Bool)

(assert (=> d!1963146 (=> (not res!2582375) (not e!3806551))))

(assert (=> d!1963146 (= res!2582375 (matchR!8364 (regOne!32874 r!7292) (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720))))))

(assert (=> d!1963146 (validRegex!7917 (regOne!32874 r!7292))))

(assert (=> d!1963146 (= (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) (++!14255 Nil!64720 (Cons!64720 (h!71168 s!2326) Nil!64720)) (t!378394 s!2326) s!2326) lt!2349787)))

(assert (= (and d!1963146 res!2582375) b!6257422))

(assert (= (and d!1963146 c!1132914) b!6257428))

(assert (= (and d!1963146 (not c!1132914)) b!6257420))

(assert (= (and b!6257420 c!1132913) b!6257421))

(assert (= (and b!6257420 (not c!1132913)) b!6257423))

(assert (= (and d!1963146 res!2582371) b!6257424))

(assert (= (and b!6257424 res!2582373) b!6257426))

(assert (= (and b!6257426 res!2582372) b!6257425))

(assert (= (and d!1963146 (not res!2582374)) b!6257427))

(declare-fun m!7080238 () Bool)

(assert (=> b!6257422 m!7080238))

(declare-fun m!7080240 () Bool)

(assert (=> b!6257427 m!7080240))

(declare-fun m!7080242 () Bool)

(assert (=> b!6257425 m!7080242))

(declare-fun m!7080244 () Bool)

(assert (=> b!6257425 m!7080244))

(assert (=> d!1963146 m!7080240))

(assert (=> d!1963146 m!7079054))

(declare-fun m!7080246 () Bool)

(assert (=> d!1963146 m!7080246))

(assert (=> d!1963146 m!7079052))

(assert (=> b!6257423 m!7079054))

(declare-fun m!7080248 () Bool)

(assert (=> b!6257423 m!7080248))

(assert (=> b!6257423 m!7080248))

(declare-fun m!7080250 () Bool)

(assert (=> b!6257423 m!7080250))

(assert (=> b!6257423 m!7079054))

(declare-fun m!7080252 () Bool)

(assert (=> b!6257423 m!7080252))

(assert (=> b!6257423 m!7080248))

(declare-fun m!7080254 () Bool)

(assert (=> b!6257423 m!7080254))

(assert (=> b!6257424 m!7080242))

(declare-fun m!7080256 () Bool)

(assert (=> b!6257424 m!7080256))

(assert (=> b!6257426 m!7080242))

(declare-fun m!7080258 () Bool)

(assert (=> b!6257426 m!7080258))

(assert (=> b!6256170 d!1963146))

(declare-fun d!1963148 () Bool)

(assert (=> d!1963148 (= (head!12863 (exprs!6065 (h!71167 zl!343))) (h!71166 (exprs!6065 (h!71167 zl!343))))))

(assert (=> b!6256332 d!1963148))

(assert (=> d!1962554 d!1963062))

(declare-fun d!1963150 () Bool)

(assert (=> d!1963150 (= (isEmptyExpr!1587 lt!2349688) ((_ is EmptyExpr!16181) lt!2349688))))

(assert (=> b!6256355 d!1963150))

(assert (=> b!6256296 d!1963036))

(declare-fun bs!1558555 () Bool)

(declare-fun d!1963152 () Bool)

(assert (= bs!1558555 (and d!1963152 d!1962616)))

(declare-fun lambda!342482 () Int)

(assert (=> bs!1558555 (= lambda!342482 lambda!342393)))

(declare-fun bs!1558556 () Bool)

(assert (= bs!1558556 (and d!1963152 d!1963044)))

(assert (=> bs!1558556 (= lambda!342482 lambda!342472)))

(declare-fun bs!1558557 () Bool)

(assert (= bs!1558557 (and d!1963152 d!1962580)))

(assert (=> bs!1558557 (= lambda!342482 lambda!342374)))

(declare-fun bs!1558558 () Bool)

(assert (= bs!1558558 (and d!1963152 d!1962624)))

(assert (=> bs!1558558 (= lambda!342482 lambda!342394)))

(declare-fun bs!1558559 () Bool)

(assert (= bs!1558559 (and d!1963152 d!1962578)))

(assert (=> bs!1558559 (= lambda!342482 lambda!342371)))

(declare-fun bs!1558560 () Bool)

(assert (= bs!1558560 (and d!1963152 d!1962628)))

(assert (=> bs!1558560 (= lambda!342482 lambda!342395)))

(declare-fun bs!1558561 () Bool)

(assert (= bs!1558561 (and d!1963152 d!1962486)))

(assert (=> bs!1558561 (= lambda!342482 lambda!342355)))

(declare-fun bs!1558562 () Bool)

(assert (= bs!1558562 (and d!1963152 d!1962576)))

(assert (=> bs!1558562 (= lambda!342482 lambda!342368)))

(assert (=> d!1963152 (= (inv!83699 (h!71167 (t!378393 zl!343))) (forall!15300 (exprs!6065 (h!71167 (t!378393 zl!343))) lambda!342482))))

(declare-fun bs!1558563 () Bool)

(assert (= bs!1558563 d!1963152))

(declare-fun m!7080260 () Bool)

(assert (=> bs!1558563 m!7080260))

(assert (=> b!6256447 d!1963152))

(declare-fun b!6257429 () Bool)

(declare-fun e!3806558 () (InoxSet Context!11130))

(declare-fun call!528170 () (InoxSet Context!11130))

(declare-fun call!528169 () (InoxSet Context!11130))

(assert (=> b!6257429 (= e!3806558 ((_ map or) call!528170 call!528169))))

(declare-fun b!6257430 () Bool)

(declare-fun e!3806559 () (InoxSet Context!11130))

(declare-fun e!3806560 () (InoxSet Context!11130))

(assert (=> b!6257430 (= e!3806559 e!3806560)))

(declare-fun c!1132918 () Bool)

(assert (=> b!6257430 (= c!1132918 ((_ is Union!16181) (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))))

(declare-fun b!6257431 () Bool)

(declare-fun e!3806555 () (InoxSet Context!11130))

(assert (=> b!6257431 (= e!3806555 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528162 () Bool)

(declare-fun call!528168 () (InoxSet Context!11130))

(assert (=> bm!528162 (= call!528169 call!528168)))

(declare-fun bm!528163 () Bool)

(declare-fun call!528172 () (InoxSet Context!11130))

(assert (=> bm!528163 (= call!528172 call!528169)))

(declare-fun b!6257432 () Bool)

(assert (=> b!6257432 (= e!3806560 ((_ map or) call!528168 call!528170))))

(declare-fun d!1963154 () Bool)

(declare-fun c!1132919 () Bool)

(assert (=> d!1963154 (= c!1132919 (and ((_ is ElementMatch!16181) (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))) (= (c!1132364 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))) (h!71168 s!2326))))))

(assert (=> d!1963154 (= (derivationStepZipperDown!1429 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343))))))) (ite (or c!1132541 c!1132540) lt!2349549 (Context!11131 call!527937)) (h!71168 s!2326)) e!3806559)))

(declare-fun bm!528164 () Bool)

(declare-fun call!528171 () List!64842)

(declare-fun call!528167 () List!64842)

(assert (=> bm!528164 (= call!528171 call!528167)))

(declare-fun b!6257433 () Bool)

(declare-fun e!3806556 () (InoxSet Context!11130))

(assert (=> b!6257433 (= e!3806558 e!3806556)))

(declare-fun c!1132916 () Bool)

(assert (=> b!6257433 (= c!1132916 ((_ is Concat!25026) (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))))

(declare-fun b!6257434 () Bool)

(declare-fun e!3806557 () Bool)

(assert (=> b!6257434 (= e!3806557 (nullable!6174 (regOne!32874 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343))))))))))))

(declare-fun b!6257435 () Bool)

(assert (=> b!6257435 (= e!3806559 (store ((as const (Array Context!11130 Bool)) false) (ite (or c!1132541 c!1132540) lt!2349549 (Context!11131 call!527937)) true))))

(declare-fun bm!528165 () Bool)

(declare-fun c!1132917 () Bool)

(assert (=> bm!528165 (= call!528167 ($colon$colon!2046 (exprs!6065 (ite (or c!1132541 c!1132540) lt!2349549 (Context!11131 call!527937))) (ite (or c!1132917 c!1132916) (regTwo!32874 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))) (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343))))))))))))

(declare-fun bm!528166 () Bool)

(assert (=> bm!528166 (= call!528168 (derivationStepZipperDown!1429 (ite c!1132918 (regOne!32875 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))) (ite c!1132917 (regTwo!32874 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))) (ite c!1132916 (regOne!32874 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))) (reg!16510 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343))))))))))) (ite (or c!1132918 c!1132917) (ite (or c!1132541 c!1132540) lt!2349549 (Context!11131 call!527937)) (Context!11131 call!528171)) (h!71168 s!2326)))))

(declare-fun c!1132915 () Bool)

(declare-fun b!6257436 () Bool)

(assert (=> b!6257436 (= c!1132915 ((_ is Star!16181) (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))))

(assert (=> b!6257436 (= e!3806556 e!3806555)))

(declare-fun bm!528167 () Bool)

(assert (=> bm!528167 (= call!528170 (derivationStepZipperDown!1429 (ite c!1132918 (regTwo!32875 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))) (regOne!32874 (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343))))))))) (ite c!1132918 (ite (or c!1132541 c!1132540) lt!2349549 (Context!11131 call!527937)) (Context!11131 call!528167)) (h!71168 s!2326)))))

(declare-fun b!6257437 () Bool)

(assert (=> b!6257437 (= e!3806556 call!528172)))

(declare-fun b!6257438 () Bool)

(assert (=> b!6257438 (= e!3806555 call!528172)))

(declare-fun b!6257439 () Bool)

(assert (=> b!6257439 (= c!1132917 e!3806557)))

(declare-fun res!2582376 () Bool)

(assert (=> b!6257439 (=> (not res!2582376) (not e!3806557))))

(assert (=> b!6257439 (= res!2582376 ((_ is Concat!25026) (ite c!1132541 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132540 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132539 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))))

(assert (=> b!6257439 (= e!3806560 e!3806558)))

(assert (= (and d!1963154 c!1132919) b!6257435))

(assert (= (and d!1963154 (not c!1132919)) b!6257430))

(assert (= (and b!6257430 c!1132918) b!6257432))

(assert (= (and b!6257430 (not c!1132918)) b!6257439))

(assert (= (and b!6257439 res!2582376) b!6257434))

(assert (= (and b!6257439 c!1132917) b!6257429))

(assert (= (and b!6257439 (not c!1132917)) b!6257433))

(assert (= (and b!6257433 c!1132916) b!6257437))

(assert (= (and b!6257433 (not c!1132916)) b!6257436))

(assert (= (and b!6257436 c!1132915) b!6257438))

(assert (= (and b!6257436 (not c!1132915)) b!6257431))

(assert (= (or b!6257437 b!6257438) bm!528164))

(assert (= (or b!6257437 b!6257438) bm!528163))

(assert (= (or b!6257429 bm!528164) bm!528165))

(assert (= (or b!6257429 bm!528163) bm!528162))

(assert (= (or b!6257432 b!6257429) bm!528167))

(assert (= (or b!6257432 bm!528162) bm!528166))

(declare-fun m!7080262 () Bool)

(assert (=> bm!528165 m!7080262))

(declare-fun m!7080264 () Bool)

(assert (=> b!6257435 m!7080264))

(declare-fun m!7080266 () Bool)

(assert (=> bm!528167 m!7080266))

(declare-fun m!7080268 () Bool)

(assert (=> bm!528166 m!7080268))

(declare-fun m!7080270 () Bool)

(assert (=> b!6257434 m!7080270))

(assert (=> bm!527932 d!1963154))

(declare-fun d!1963156 () Bool)

(assert (=> d!1963156 (= (isDefined!12775 lt!2349657) (not (isEmpty!36747 lt!2349657)))))

(declare-fun bs!1558564 () Bool)

(assert (= bs!1558564 d!1963156))

(declare-fun m!7080272 () Bool)

(assert (=> bs!1558564 m!7080272))

(assert (=> b!6256174 d!1963156))

(declare-fun bs!1558565 () Bool)

(declare-fun d!1963158 () Bool)

(assert (= bs!1558565 (and d!1963158 b!6256372)))

(declare-fun lambda!342483 () Int)

(assert (=> bs!1558565 (not (= lambda!342483 lambda!342404))))

(declare-fun bs!1558566 () Bool)

(assert (= bs!1558566 (and d!1963158 d!1963128)))

(assert (=> bs!1558566 (= lambda!342483 lambda!342480)))

(declare-fun bs!1558567 () Bool)

(assert (= bs!1558567 (and d!1963158 d!1963080)))

(assert (=> bs!1558567 (= lambda!342483 lambda!342476)))

(declare-fun bs!1558568 () Bool)

(assert (= bs!1558568 (and d!1963158 b!6256377)))

(assert (=> bs!1558568 (not (= lambda!342483 lambda!342407))))

(declare-fun bs!1558569 () Bool)

(assert (= bs!1558569 (and d!1963158 d!1963120)))

(assert (=> bs!1558569 (= lambda!342483 lambda!342478)))

(declare-fun bs!1558570 () Bool)

(assert (= bs!1558570 (and d!1963158 d!1963042)))

(assert (=> bs!1558570 (= lambda!342483 lambda!342471)))

(declare-fun bs!1558571 () Bool)

(assert (= bs!1558571 (and d!1963158 b!6256375)))

(assert (=> bs!1558571 (not (= lambda!342483 lambda!342406))))

(declare-fun bs!1558572 () Bool)

(assert (= bs!1558572 (and d!1963158 b!6256370)))

(assert (=> bs!1558572 (not (= lambda!342483 lambda!342403))))

(assert (=> d!1963158 (= (nullableZipper!1951 lt!2349558) (exists!2515 lt!2349558 lambda!342483))))

(declare-fun bs!1558573 () Bool)

(assert (= bs!1558573 d!1963158))

(declare-fun m!7080274 () Bool)

(assert (=> bs!1558573 m!7080274))

(assert (=> b!6256381 d!1963158))

(declare-fun d!1963160 () Bool)

(assert (=> d!1963160 (= (isEmpty!36747 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326)) (not ((_ is Some!16071) (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326))))))

(assert (=> d!1962592 d!1963160))

(declare-fun d!1963162 () Bool)

(declare-fun c!1132920 () Bool)

(assert (=> d!1963162 (= c!1132920 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806561 () Bool)

(assert (=> d!1963162 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349547 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806561)))

(declare-fun b!6257440 () Bool)

(assert (=> b!6257440 (= e!3806561 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349547 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257441 () Bool)

(assert (=> b!6257441 (= e!3806561 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349547 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963162 c!1132920) b!6257440))

(assert (= (and d!1963162 (not c!1132920)) b!6257441))

(assert (=> d!1963162 m!7078806))

(assert (=> d!1963162 m!7080100))

(assert (=> b!6257440 m!7078960))

(declare-fun m!7080276 () Bool)

(assert (=> b!6257440 m!7080276))

(assert (=> b!6257441 m!7078806))

(assert (=> b!6257441 m!7080104))

(assert (=> b!6257441 m!7078960))

(assert (=> b!6257441 m!7080104))

(declare-fun m!7080278 () Bool)

(assert (=> b!6257441 m!7080278))

(assert (=> b!6257441 m!7078806))

(assert (=> b!6257441 m!7080108))

(assert (=> b!6257441 m!7080278))

(assert (=> b!6257441 m!7080108))

(declare-fun m!7080280 () Bool)

(assert (=> b!6257441 m!7080280))

(assert (=> b!6256059 d!1963162))

(declare-fun bs!1558574 () Bool)

(declare-fun d!1963164 () Bool)

(assert (= bs!1558574 (and d!1963164 b!6255545)))

(declare-fun lambda!342484 () Int)

(assert (=> bs!1558574 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342484 lambda!342315))))

(declare-fun bs!1558575 () Bool)

(assert (= bs!1558575 (and d!1963164 d!1962614)))

(assert (=> bs!1558575 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342484 lambda!342390))))

(declare-fun bs!1558576 () Bool)

(assert (= bs!1558576 (and d!1963164 d!1963088)))

(assert (=> bs!1558576 (= lambda!342484 lambda!342477)))

(declare-fun bs!1558577 () Bool)

(assert (= bs!1558577 (and d!1963164 d!1963138)))

(assert (=> bs!1558577 (= (= (head!12862 (t!378394 s!2326)) (head!12862 s!2326)) (= lambda!342484 lambda!342481))))

(declare-fun bs!1558578 () Bool)

(assert (= bs!1558578 (and d!1963164 d!1963068)))

(assert (=> bs!1558578 (= lambda!342484 lambda!342475)))

(declare-fun bs!1558579 () Bool)

(assert (= bs!1558579 (and d!1963164 d!1962540)))

(assert (=> bs!1558579 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342484 lambda!342367))))

(declare-fun bs!1558580 () Bool)

(assert (= bs!1558580 (and d!1963164 d!1963124)))

(assert (=> bs!1558580 (= lambda!342484 lambda!342479)))

(assert (=> d!1963164 true))

(assert (=> d!1963164 (= (derivationStepZipper!2147 lt!2349547 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349547 lambda!342484))))

(declare-fun bs!1558581 () Bool)

(assert (= bs!1558581 d!1963164))

(declare-fun m!7080282 () Bool)

(assert (=> bs!1558581 m!7080282))

(assert (=> b!6256059 d!1963164))

(assert (=> b!6256059 d!1963070))

(assert (=> b!6256059 d!1963072))

(declare-fun d!1963166 () Bool)

(assert (=> d!1963166 (= (head!12863 lt!2349529) (h!71166 lt!2349529))))

(assert (=> b!6256359 d!1963166))

(assert (=> b!6256300 d!1963106))

(assert (=> b!6256300 d!1963038))

(assert (=> d!1962562 d!1962572))

(declare-fun d!1963168 () Bool)

(assert (=> d!1963168 (= (flatMap!1686 z!1189 lambda!342315) (dynLambda!25566 lambda!342315 (h!71167 zl!343)))))

(assert (=> d!1963168 true))

(declare-fun _$13!3350 () Unit!158055)

(assert (=> d!1963168 (= (choose!46426 z!1189 (h!71167 zl!343) lambda!342315) _$13!3350)))

(declare-fun b_lambda!238131 () Bool)

(assert (=> (not b_lambda!238131) (not d!1963168)))

(declare-fun bs!1558582 () Bool)

(assert (= bs!1558582 d!1963168))

(assert (=> bs!1558582 m!7078474))

(assert (=> bs!1558582 m!7078980))

(assert (=> d!1962562 d!1963168))

(declare-fun d!1963170 () Bool)

(declare-fun res!2582377 () Bool)

(declare-fun e!3806562 () Bool)

(assert (=> d!1963170 (=> res!2582377 e!3806562)))

(assert (=> d!1963170 (= res!2582377 ((_ is Nil!64718) (exprs!6065 lt!2349551)))))

(assert (=> d!1963170 (= (forall!15300 (exprs!6065 lt!2349551) lambda!342395) e!3806562)))

(declare-fun b!6257442 () Bool)

(declare-fun e!3806563 () Bool)

(assert (=> b!6257442 (= e!3806562 e!3806563)))

(declare-fun res!2582378 () Bool)

(assert (=> b!6257442 (=> (not res!2582378) (not e!3806563))))

(assert (=> b!6257442 (= res!2582378 (dynLambda!25571 lambda!342395 (h!71166 (exprs!6065 lt!2349551))))))

(declare-fun b!6257443 () Bool)

(assert (=> b!6257443 (= e!3806563 (forall!15300 (t!378392 (exprs!6065 lt!2349551)) lambda!342395))))

(assert (= (and d!1963170 (not res!2582377)) b!6257442))

(assert (= (and b!6257442 res!2582378) b!6257443))

(declare-fun b_lambda!238133 () Bool)

(assert (=> (not b_lambda!238133) (not b!6257442)))

(declare-fun m!7080284 () Bool)

(assert (=> b!6257442 m!7080284))

(declare-fun m!7080286 () Bool)

(assert (=> b!6257443 m!7080286))

(assert (=> d!1962628 d!1963170))

(declare-fun bm!528168 () Bool)

(declare-fun c!1132921 () Bool)

(declare-fun call!528175 () Bool)

(declare-fun c!1132922 () Bool)

(assert (=> bm!528168 (= call!528175 (validRegex!7917 (ite c!1132922 (reg!16510 lt!2349688) (ite c!1132921 (regOne!32875 lt!2349688) (regOne!32874 lt!2349688)))))))

(declare-fun b!6257444 () Bool)

(declare-fun e!3806567 () Bool)

(declare-fun call!528174 () Bool)

(assert (=> b!6257444 (= e!3806567 call!528174)))

(declare-fun bm!528169 () Bool)

(declare-fun call!528173 () Bool)

(assert (=> bm!528169 (= call!528173 call!528175)))

(declare-fun b!6257445 () Bool)

(declare-fun e!3806566 () Bool)

(declare-fun e!3806569 () Bool)

(assert (=> b!6257445 (= e!3806566 e!3806569)))

(declare-fun res!2582381 () Bool)

(assert (=> b!6257445 (= res!2582381 (not (nullable!6174 (reg!16510 lt!2349688))))))

(assert (=> b!6257445 (=> (not res!2582381) (not e!3806569))))

(declare-fun b!6257446 () Bool)

(declare-fun e!3806570 () Bool)

(assert (=> b!6257446 (= e!3806566 e!3806570)))

(assert (=> b!6257446 (= c!1132921 ((_ is Union!16181) lt!2349688))))

(declare-fun b!6257447 () Bool)

(declare-fun e!3806565 () Bool)

(declare-fun e!3806568 () Bool)

(assert (=> b!6257447 (= e!3806565 e!3806568)))

(declare-fun res!2582382 () Bool)

(assert (=> b!6257447 (=> (not res!2582382) (not e!3806568))))

(assert (=> b!6257447 (= res!2582382 call!528173)))

(declare-fun d!1963172 () Bool)

(declare-fun res!2582380 () Bool)

(declare-fun e!3806564 () Bool)

(assert (=> d!1963172 (=> res!2582380 e!3806564)))

(assert (=> d!1963172 (= res!2582380 ((_ is ElementMatch!16181) lt!2349688))))

(assert (=> d!1963172 (= (validRegex!7917 lt!2349688) e!3806564)))

(declare-fun b!6257448 () Bool)

(assert (=> b!6257448 (= e!3806569 call!528175)))

(declare-fun b!6257449 () Bool)

(assert (=> b!6257449 (= e!3806568 call!528174)))

(declare-fun b!6257450 () Bool)

(declare-fun res!2582383 () Bool)

(assert (=> b!6257450 (=> res!2582383 e!3806565)))

(assert (=> b!6257450 (= res!2582383 (not ((_ is Concat!25026) lt!2349688)))))

(assert (=> b!6257450 (= e!3806570 e!3806565)))

(declare-fun b!6257451 () Bool)

(declare-fun res!2582379 () Bool)

(assert (=> b!6257451 (=> (not res!2582379) (not e!3806567))))

(assert (=> b!6257451 (= res!2582379 call!528173)))

(assert (=> b!6257451 (= e!3806570 e!3806567)))

(declare-fun bm!528170 () Bool)

(assert (=> bm!528170 (= call!528174 (validRegex!7917 (ite c!1132921 (regTwo!32875 lt!2349688) (regTwo!32874 lt!2349688))))))

(declare-fun b!6257452 () Bool)

(assert (=> b!6257452 (= e!3806564 e!3806566)))

(assert (=> b!6257452 (= c!1132922 ((_ is Star!16181) lt!2349688))))

(assert (= (and d!1963172 (not res!2582380)) b!6257452))

(assert (= (and b!6257452 c!1132922) b!6257445))

(assert (= (and b!6257452 (not c!1132922)) b!6257446))

(assert (= (and b!6257445 res!2582381) b!6257448))

(assert (= (and b!6257446 c!1132921) b!6257451))

(assert (= (and b!6257446 (not c!1132921)) b!6257450))

(assert (= (and b!6257451 res!2582379) b!6257444))

(assert (= (and b!6257450 (not res!2582383)) b!6257447))

(assert (= (and b!6257447 res!2582382) b!6257449))

(assert (= (or b!6257444 b!6257449) bm!528170))

(assert (= (or b!6257451 b!6257447) bm!528169))

(assert (= (or b!6257448 bm!528169) bm!528168))

(declare-fun m!7080288 () Bool)

(assert (=> bm!528168 m!7080288))

(declare-fun m!7080290 () Bool)

(assert (=> b!6257445 m!7080290))

(declare-fun m!7080292 () Bool)

(assert (=> bm!528170 m!7080292))

(assert (=> d!1962624 d!1963172))

(declare-fun d!1963174 () Bool)

(declare-fun res!2582384 () Bool)

(declare-fun e!3806571 () Bool)

(assert (=> d!1963174 (=> res!2582384 e!3806571)))

(assert (=> d!1963174 (= res!2582384 ((_ is Nil!64718) lt!2349529))))

(assert (=> d!1963174 (= (forall!15300 lt!2349529 lambda!342394) e!3806571)))

(declare-fun b!6257453 () Bool)

(declare-fun e!3806572 () Bool)

(assert (=> b!6257453 (= e!3806571 e!3806572)))

(declare-fun res!2582385 () Bool)

(assert (=> b!6257453 (=> (not res!2582385) (not e!3806572))))

(assert (=> b!6257453 (= res!2582385 (dynLambda!25571 lambda!342394 (h!71166 lt!2349529)))))

(declare-fun b!6257454 () Bool)

(assert (=> b!6257454 (= e!3806572 (forall!15300 (t!378392 lt!2349529) lambda!342394))))

(assert (= (and d!1963174 (not res!2582384)) b!6257453))

(assert (= (and b!6257453 res!2582385) b!6257454))

(declare-fun b_lambda!238135 () Bool)

(assert (=> (not b_lambda!238135) (not b!6257453)))

(declare-fun m!7080294 () Bool)

(assert (=> b!6257453 m!7080294))

(declare-fun m!7080296 () Bool)

(assert (=> b!6257454 m!7080296))

(assert (=> d!1962624 d!1963174))

(declare-fun d!1963176 () Bool)

(assert (=> d!1963176 (= (isEmptyLang!1596 lt!2349646) ((_ is EmptyLang!16181) lt!2349646))))

(assert (=> b!6256136 d!1963176))

(assert (=> b!6256070 d!1962570))

(declare-fun d!1963178 () Bool)

(declare-fun lt!2349789 () Int)

(assert (=> d!1963178 (>= lt!2349789 0)))

(declare-fun e!3806573 () Int)

(assert (=> d!1963178 (= lt!2349789 e!3806573)))

(declare-fun c!1132923 () Bool)

(assert (=> d!1963178 (= c!1132923 ((_ is Cons!64718) (exprs!6065 (h!71167 lt!2349542))))))

(assert (=> d!1963178 (= (contextDepthTotal!304 (h!71167 lt!2349542)) lt!2349789)))

(declare-fun b!6257455 () Bool)

(assert (=> b!6257455 (= e!3806573 (+ (regexDepthTotal!157 (h!71166 (exprs!6065 (h!71167 lt!2349542)))) (contextDepthTotal!304 (Context!11131 (t!378392 (exprs!6065 (h!71167 lt!2349542)))))))))

(declare-fun b!6257456 () Bool)

(assert (=> b!6257456 (= e!3806573 1)))

(assert (= (and d!1963178 c!1132923) b!6257455))

(assert (= (and d!1963178 (not c!1132923)) b!6257456))

(declare-fun m!7080298 () Bool)

(assert (=> b!6257455 m!7080298))

(declare-fun m!7080300 () Bool)

(assert (=> b!6257455 m!7080300))

(assert (=> b!6256414 d!1963178))

(declare-fun d!1963180 () Bool)

(declare-fun lt!2349790 () Int)

(assert (=> d!1963180 (>= lt!2349790 0)))

(declare-fun e!3806574 () Int)

(assert (=> d!1963180 (= lt!2349790 e!3806574)))

(declare-fun c!1132924 () Bool)

(assert (=> d!1963180 (= c!1132924 ((_ is Cons!64719) (t!378393 lt!2349542)))))

(assert (=> d!1963180 (= (zipperDepthTotal!334 (t!378393 lt!2349542)) lt!2349790)))

(declare-fun b!6257457 () Bool)

(assert (=> b!6257457 (= e!3806574 (+ (contextDepthTotal!304 (h!71167 (t!378393 lt!2349542))) (zipperDepthTotal!334 (t!378393 (t!378393 lt!2349542)))))))

(declare-fun b!6257458 () Bool)

(assert (=> b!6257458 (= e!3806574 0)))

(assert (= (and d!1963180 c!1132924) b!6257457))

(assert (= (and d!1963180 (not c!1132924)) b!6257458))

(declare-fun m!7080302 () Bool)

(assert (=> b!6257457 m!7080302))

(declare-fun m!7080304 () Bool)

(assert (=> b!6257457 m!7080304))

(assert (=> b!6256414 d!1963180))

(assert (=> d!1962582 d!1963156))

(declare-fun b!6257459 () Bool)

(declare-fun res!2582390 () Bool)

(declare-fun e!3806577 () Bool)

(assert (=> b!6257459 (=> res!2582390 e!3806577)))

(assert (=> b!6257459 (= res!2582390 (not ((_ is ElementMatch!16181) (regOne!32874 r!7292))))))

(declare-fun e!3806575 () Bool)

(assert (=> b!6257459 (= e!3806575 e!3806577)))

(declare-fun b!6257460 () Bool)

(declare-fun res!2582392 () Bool)

(assert (=> b!6257460 (=> res!2582392 e!3806577)))

(declare-fun e!3806581 () Bool)

(assert (=> b!6257460 (= res!2582392 e!3806581)))

(declare-fun res!2582388 () Bool)

(assert (=> b!6257460 (=> (not res!2582388) (not e!3806581))))

(declare-fun lt!2349791 () Bool)

(assert (=> b!6257460 (= res!2582388 lt!2349791)))

(declare-fun b!6257461 () Bool)

(declare-fun e!3806576 () Bool)

(assert (=> b!6257461 (= e!3806576 e!3806575)))

(declare-fun c!1132927 () Bool)

(assert (=> b!6257461 (= c!1132927 ((_ is EmptyLang!16181) (regOne!32874 r!7292)))))

(declare-fun b!6257462 () Bool)

(declare-fun e!3806580 () Bool)

(assert (=> b!6257462 (= e!3806577 e!3806580)))

(declare-fun res!2582386 () Bool)

(assert (=> b!6257462 (=> (not res!2582386) (not e!3806580))))

(assert (=> b!6257462 (= res!2582386 (not lt!2349791))))

(declare-fun b!6257463 () Bool)

(assert (=> b!6257463 (= e!3806575 (not lt!2349791))))

(declare-fun b!6257464 () Bool)

(declare-fun res!2582387 () Bool)

(assert (=> b!6257464 (=> (not res!2582387) (not e!3806581))))

(declare-fun call!528176 () Bool)

(assert (=> b!6257464 (= res!2582387 (not call!528176))))

(declare-fun d!1963182 () Bool)

(assert (=> d!1963182 e!3806576))

(declare-fun c!1132925 () Bool)

(assert (=> d!1963182 (= c!1132925 ((_ is EmptyExpr!16181) (regOne!32874 r!7292)))))

(declare-fun e!3806579 () Bool)

(assert (=> d!1963182 (= lt!2349791 e!3806579)))

(declare-fun c!1132926 () Bool)

(assert (=> d!1963182 (= c!1132926 (isEmpty!36746 Nil!64720))))

(assert (=> d!1963182 (validRegex!7917 (regOne!32874 r!7292))))

(assert (=> d!1963182 (= (matchR!8364 (regOne!32874 r!7292) Nil!64720) lt!2349791)))

(declare-fun bm!528171 () Bool)

(assert (=> bm!528171 (= call!528176 (isEmpty!36746 Nil!64720))))

(declare-fun b!6257465 () Bool)

(declare-fun e!3806578 () Bool)

(assert (=> b!6257465 (= e!3806578 (not (= (head!12862 Nil!64720) (c!1132364 (regOne!32874 r!7292)))))))

(declare-fun b!6257466 () Bool)

(assert (=> b!6257466 (= e!3806581 (= (head!12862 Nil!64720) (c!1132364 (regOne!32874 r!7292))))))

(declare-fun b!6257467 () Bool)

(assert (=> b!6257467 (= e!3806579 (nullable!6174 (regOne!32874 r!7292)))))

(declare-fun b!6257468 () Bool)

(assert (=> b!6257468 (= e!3806580 e!3806578)))

(declare-fun res!2582393 () Bool)

(assert (=> b!6257468 (=> res!2582393 e!3806578)))

(assert (=> b!6257468 (= res!2582393 call!528176)))

(declare-fun b!6257469 () Bool)

(assert (=> b!6257469 (= e!3806579 (matchR!8364 (derivativeStep!4890 (regOne!32874 r!7292) (head!12862 Nil!64720)) (tail!11947 Nil!64720)))))

(declare-fun b!6257470 () Bool)

(declare-fun res!2582389 () Bool)

(assert (=> b!6257470 (=> res!2582389 e!3806578)))

(assert (=> b!6257470 (= res!2582389 (not (isEmpty!36746 (tail!11947 Nil!64720))))))

(declare-fun b!6257471 () Bool)

(declare-fun res!2582391 () Bool)

(assert (=> b!6257471 (=> (not res!2582391) (not e!3806581))))

(assert (=> b!6257471 (= res!2582391 (isEmpty!36746 (tail!11947 Nil!64720)))))

(declare-fun b!6257472 () Bool)

(assert (=> b!6257472 (= e!3806576 (= lt!2349791 call!528176))))

(assert (= (and d!1963182 c!1132926) b!6257467))

(assert (= (and d!1963182 (not c!1132926)) b!6257469))

(assert (= (and d!1963182 c!1132925) b!6257472))

(assert (= (and d!1963182 (not c!1132925)) b!6257461))

(assert (= (and b!6257461 c!1132927) b!6257463))

(assert (= (and b!6257461 (not c!1132927)) b!6257459))

(assert (= (and b!6257459 (not res!2582390)) b!6257460))

(assert (= (and b!6257460 res!2582388) b!6257464))

(assert (= (and b!6257464 res!2582387) b!6257471))

(assert (= (and b!6257471 res!2582391) b!6257466))

(assert (= (and b!6257460 (not res!2582392)) b!6257462))

(assert (= (and b!6257462 res!2582386) b!6257468))

(assert (= (and b!6257468 (not res!2582393)) b!6257470))

(assert (= (and b!6257470 (not res!2582389)) b!6257465))

(assert (= (or b!6257472 b!6257468 b!6257464) bm!528171))

(declare-fun m!7080306 () Bool)

(assert (=> b!6257470 m!7080306))

(assert (=> b!6257470 m!7080306))

(declare-fun m!7080308 () Bool)

(assert (=> b!6257470 m!7080308))

(declare-fun m!7080310 () Bool)

(assert (=> bm!528171 m!7080310))

(declare-fun m!7080312 () Bool)

(assert (=> b!6257465 m!7080312))

(assert (=> b!6257469 m!7080312))

(assert (=> b!6257469 m!7080312))

(declare-fun m!7080314 () Bool)

(assert (=> b!6257469 m!7080314))

(assert (=> b!6257469 m!7080306))

(assert (=> b!6257469 m!7080314))

(assert (=> b!6257469 m!7080306))

(declare-fun m!7080316 () Bool)

(assert (=> b!6257469 m!7080316))

(assert (=> b!6257466 m!7080312))

(assert (=> b!6257467 m!7080082))

(assert (=> d!1963182 m!7080310))

(assert (=> d!1963182 m!7079052))

(assert (=> b!6257471 m!7080306))

(assert (=> b!6257471 m!7080306))

(assert (=> b!6257471 m!7080308))

(assert (=> d!1962582 d!1963182))

(declare-fun c!1132928 () Bool)

(declare-fun bm!528172 () Bool)

(declare-fun call!528179 () Bool)

(declare-fun c!1132929 () Bool)

(assert (=> bm!528172 (= call!528179 (validRegex!7917 (ite c!1132929 (reg!16510 (regOne!32874 r!7292)) (ite c!1132928 (regOne!32875 (regOne!32874 r!7292)) (regOne!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257473 () Bool)

(declare-fun e!3806585 () Bool)

(declare-fun call!528178 () Bool)

(assert (=> b!6257473 (= e!3806585 call!528178)))

(declare-fun bm!528173 () Bool)

(declare-fun call!528177 () Bool)

(assert (=> bm!528173 (= call!528177 call!528179)))

(declare-fun b!6257474 () Bool)

(declare-fun e!3806584 () Bool)

(declare-fun e!3806587 () Bool)

(assert (=> b!6257474 (= e!3806584 e!3806587)))

(declare-fun res!2582396 () Bool)

(assert (=> b!6257474 (= res!2582396 (not (nullable!6174 (reg!16510 (regOne!32874 r!7292)))))))

(assert (=> b!6257474 (=> (not res!2582396) (not e!3806587))))

(declare-fun b!6257475 () Bool)

(declare-fun e!3806588 () Bool)

(assert (=> b!6257475 (= e!3806584 e!3806588)))

(assert (=> b!6257475 (= c!1132928 ((_ is Union!16181) (regOne!32874 r!7292)))))

(declare-fun b!6257476 () Bool)

(declare-fun e!3806583 () Bool)

(declare-fun e!3806586 () Bool)

(assert (=> b!6257476 (= e!3806583 e!3806586)))

(declare-fun res!2582397 () Bool)

(assert (=> b!6257476 (=> (not res!2582397) (not e!3806586))))

(assert (=> b!6257476 (= res!2582397 call!528177)))

(declare-fun d!1963184 () Bool)

(declare-fun res!2582395 () Bool)

(declare-fun e!3806582 () Bool)

(assert (=> d!1963184 (=> res!2582395 e!3806582)))

(assert (=> d!1963184 (= res!2582395 ((_ is ElementMatch!16181) (regOne!32874 r!7292)))))

(assert (=> d!1963184 (= (validRegex!7917 (regOne!32874 r!7292)) e!3806582)))

(declare-fun b!6257477 () Bool)

(assert (=> b!6257477 (= e!3806587 call!528179)))

(declare-fun b!6257478 () Bool)

(assert (=> b!6257478 (= e!3806586 call!528178)))

(declare-fun b!6257479 () Bool)

(declare-fun res!2582398 () Bool)

(assert (=> b!6257479 (=> res!2582398 e!3806583)))

(assert (=> b!6257479 (= res!2582398 (not ((_ is Concat!25026) (regOne!32874 r!7292))))))

(assert (=> b!6257479 (= e!3806588 e!3806583)))

(declare-fun b!6257480 () Bool)

(declare-fun res!2582394 () Bool)

(assert (=> b!6257480 (=> (not res!2582394) (not e!3806585))))

(assert (=> b!6257480 (= res!2582394 call!528177)))

(assert (=> b!6257480 (= e!3806588 e!3806585)))

(declare-fun bm!528174 () Bool)

(assert (=> bm!528174 (= call!528178 (validRegex!7917 (ite c!1132928 (regTwo!32875 (regOne!32874 r!7292)) (regTwo!32874 (regOne!32874 r!7292)))))))

(declare-fun b!6257481 () Bool)

(assert (=> b!6257481 (= e!3806582 e!3806584)))

(assert (=> b!6257481 (= c!1132929 ((_ is Star!16181) (regOne!32874 r!7292)))))

(assert (= (and d!1963184 (not res!2582395)) b!6257481))

(assert (= (and b!6257481 c!1132929) b!6257474))

(assert (= (and b!6257481 (not c!1132929)) b!6257475))

(assert (= (and b!6257474 res!2582396) b!6257477))

(assert (= (and b!6257475 c!1132928) b!6257480))

(assert (= (and b!6257475 (not c!1132928)) b!6257479))

(assert (= (and b!6257480 res!2582394) b!6257473))

(assert (= (and b!6257479 (not res!2582398)) b!6257476))

(assert (= (and b!6257476 res!2582397) b!6257478))

(assert (= (or b!6257473 b!6257478) bm!528174))

(assert (= (or b!6257480 b!6257476) bm!528173))

(assert (= (or b!6257477 bm!528173) bm!528172))

(declare-fun m!7080318 () Bool)

(assert (=> bm!528172 m!7080318))

(declare-fun m!7080320 () Bool)

(assert (=> b!6257474 m!7080320))

(declare-fun m!7080322 () Bool)

(assert (=> bm!528174 m!7080322))

(assert (=> d!1962582 d!1963184))

(declare-fun b!6257482 () Bool)

(declare-fun e!3806592 () (InoxSet Context!11130))

(declare-fun call!528183 () (InoxSet Context!11130))

(declare-fun call!528182 () (InoxSet Context!11130))

(assert (=> b!6257482 (= e!3806592 ((_ map or) call!528183 call!528182))))

(declare-fun b!6257483 () Bool)

(declare-fun e!3806593 () (InoxSet Context!11130))

(declare-fun e!3806594 () (InoxSet Context!11130))

(assert (=> b!6257483 (= e!3806593 e!3806594)))

(declare-fun c!1132933 () Bool)

(assert (=> b!6257483 (= c!1132933 ((_ is Union!16181) (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257484 () Bool)

(declare-fun e!3806589 () (InoxSet Context!11130))

(assert (=> b!6257484 (= e!3806589 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528175 () Bool)

(declare-fun call!528181 () (InoxSet Context!11130))

(assert (=> bm!528175 (= call!528182 call!528181)))

(declare-fun bm!528176 () Bool)

(declare-fun call!528185 () (InoxSet Context!11130))

(assert (=> bm!528176 (= call!528185 call!528182)))

(declare-fun b!6257485 () Bool)

(assert (=> b!6257485 (= e!3806594 ((_ map or) call!528181 call!528183))))

(declare-fun c!1132934 () Bool)

(declare-fun d!1963186 () Bool)

(assert (=> d!1963186 (= c!1132934 (and ((_ is ElementMatch!16181) (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))) (= (c!1132364 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))) (h!71168 s!2326))))))

(assert (=> d!1963186 (= (derivationStepZipperDown!1429 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))) (ite c!1132574 lt!2349549 (Context!11131 call!527940)) (h!71168 s!2326)) e!3806593)))

(declare-fun bm!528177 () Bool)

(declare-fun call!528184 () List!64842)

(declare-fun call!528180 () List!64842)

(assert (=> bm!528177 (= call!528184 call!528180)))

(declare-fun b!6257486 () Bool)

(declare-fun e!3806590 () (InoxSet Context!11130))

(assert (=> b!6257486 (= e!3806592 e!3806590)))

(declare-fun c!1132931 () Bool)

(assert (=> b!6257486 (= c!1132931 ((_ is Concat!25026) (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257487 () Bool)

(declare-fun e!3806591 () Bool)

(assert (=> b!6257487 (= e!3806591 (nullable!6174 (regOne!32874 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))))))))

(declare-fun b!6257488 () Bool)

(assert (=> b!6257488 (= e!3806593 (store ((as const (Array Context!11130 Bool)) false) (ite c!1132574 lt!2349549 (Context!11131 call!527940)) true))))

(declare-fun c!1132932 () Bool)

(declare-fun bm!528178 () Bool)

(assert (=> bm!528178 (= call!528180 ($colon$colon!2046 (exprs!6065 (ite c!1132574 lt!2349549 (Context!11131 call!527940))) (ite (or c!1132932 c!1132931) (regTwo!32874 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))) (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))))))))

(declare-fun bm!528179 () Bool)

(assert (=> bm!528179 (= call!528181 (derivationStepZipperDown!1429 (ite c!1132933 (regOne!32875 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))) (ite c!1132932 (regTwo!32874 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))) (ite c!1132931 (regOne!32874 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))) (reg!16510 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))))))) (ite (or c!1132933 c!1132932) (ite c!1132574 lt!2349549 (Context!11131 call!527940)) (Context!11131 call!528184)) (h!71168 s!2326)))))

(declare-fun b!6257489 () Bool)

(declare-fun c!1132930 () Bool)

(assert (=> b!6257489 (= c!1132930 ((_ is Star!16181) (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))))))

(assert (=> b!6257489 (= e!3806590 e!3806589)))

(declare-fun bm!528180 () Bool)

(assert (=> bm!528180 (= call!528183 (derivationStepZipperDown!1429 (ite c!1132933 (regTwo!32875 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))) (regOne!32874 (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))))) (ite c!1132933 (ite c!1132574 lt!2349549 (Context!11131 call!527940)) (Context!11131 call!528180)) (h!71168 s!2326)))))

(declare-fun b!6257490 () Bool)

(assert (=> b!6257490 (= e!3806590 call!528185)))

(declare-fun b!6257491 () Bool)

(assert (=> b!6257491 (= e!3806589 call!528185)))

(declare-fun b!6257492 () Bool)

(assert (=> b!6257492 (= c!1132932 e!3806591)))

(declare-fun res!2582399 () Bool)

(assert (=> b!6257492 (=> (not res!2582399) (not e!3806591))))

(assert (=> b!6257492 (= res!2582399 ((_ is Concat!25026) (ite c!1132574 (regTwo!32875 (regTwo!32874 (regOne!32874 r!7292))) (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))))))))

(assert (=> b!6257492 (= e!3806594 e!3806592)))

(assert (= (and d!1963186 c!1132934) b!6257488))

(assert (= (and d!1963186 (not c!1132934)) b!6257483))

(assert (= (and b!6257483 c!1132933) b!6257485))

(assert (= (and b!6257483 (not c!1132933)) b!6257492))

(assert (= (and b!6257492 res!2582399) b!6257487))

(assert (= (and b!6257492 c!1132932) b!6257482))

(assert (= (and b!6257492 (not c!1132932)) b!6257486))

(assert (= (and b!6257486 c!1132931) b!6257490))

(assert (= (and b!6257486 (not c!1132931)) b!6257489))

(assert (= (and b!6257489 c!1132930) b!6257491))

(assert (= (and b!6257489 (not c!1132930)) b!6257484))

(assert (= (or b!6257490 b!6257491) bm!528177))

(assert (= (or b!6257490 b!6257491) bm!528176))

(assert (= (or b!6257482 bm!528177) bm!528178))

(assert (= (or b!6257482 bm!528176) bm!528175))

(assert (= (or b!6257485 b!6257482) bm!528180))

(assert (= (or b!6257485 bm!528175) bm!528179))

(declare-fun m!7080324 () Bool)

(assert (=> bm!528178 m!7080324))

(declare-fun m!7080326 () Bool)

(assert (=> b!6257488 m!7080326))

(declare-fun m!7080328 () Bool)

(assert (=> bm!528180 m!7080328))

(declare-fun m!7080330 () Bool)

(assert (=> bm!528179 m!7080330))

(declare-fun m!7080332 () Bool)

(assert (=> b!6257487 m!7080332))

(assert (=> bm!527940 d!1963186))

(declare-fun d!1963188 () Bool)

(assert (=> d!1963188 (= ($colon$colon!2046 (exprs!6065 lt!2349551) (ite (or c!1132578 c!1132577) (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 r!7292)))) (Cons!64718 (ite (or c!1132578 c!1132577) (regTwo!32874 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 r!7292))) (exprs!6065 lt!2349551)))))

(assert (=> bm!527944 d!1963188))

(declare-fun bs!1558583 () Bool)

(declare-fun d!1963190 () Bool)

(assert (= bs!1558583 (and d!1963190 d!1962616)))

(declare-fun lambda!342485 () Int)

(assert (=> bs!1558583 (= lambda!342485 lambda!342393)))

(declare-fun bs!1558584 () Bool)

(assert (= bs!1558584 (and d!1963190 d!1963044)))

(assert (=> bs!1558584 (= lambda!342485 lambda!342472)))

(declare-fun bs!1558585 () Bool)

(assert (= bs!1558585 (and d!1963190 d!1962580)))

(assert (=> bs!1558585 (= lambda!342485 lambda!342374)))

(declare-fun bs!1558586 () Bool)

(assert (= bs!1558586 (and d!1963190 d!1962624)))

(assert (=> bs!1558586 (= lambda!342485 lambda!342394)))

(declare-fun bs!1558587 () Bool)

(assert (= bs!1558587 (and d!1963190 d!1963152)))

(assert (=> bs!1558587 (= lambda!342485 lambda!342482)))

(declare-fun bs!1558588 () Bool)

(assert (= bs!1558588 (and d!1963190 d!1962578)))

(assert (=> bs!1558588 (= lambda!342485 lambda!342371)))

(declare-fun bs!1558589 () Bool)

(assert (= bs!1558589 (and d!1963190 d!1962628)))

(assert (=> bs!1558589 (= lambda!342485 lambda!342395)))

(declare-fun bs!1558590 () Bool)

(assert (= bs!1558590 (and d!1963190 d!1962486)))

(assert (=> bs!1558590 (= lambda!342485 lambda!342355)))

(declare-fun bs!1558591 () Bool)

(assert (= bs!1558591 (and d!1963190 d!1962576)))

(assert (=> bs!1558591 (= lambda!342485 lambda!342368)))

(declare-fun b!6257493 () Bool)

(declare-fun e!3806600 () Bool)

(declare-fun e!3806597 () Bool)

(assert (=> b!6257493 (= e!3806600 e!3806597)))

(declare-fun c!1132937 () Bool)

(assert (=> b!6257493 (= c!1132937 (isEmpty!36742 (t!378392 (unfocusZipperList!1602 zl!343))))))

(declare-fun b!6257494 () Bool)

(declare-fun e!3806595 () Bool)

(declare-fun lt!2349792 () Regex!16181)

(assert (=> b!6257494 (= e!3806595 (= lt!2349792 (head!12863 (t!378392 (unfocusZipperList!1602 zl!343)))))))

(assert (=> d!1963190 e!3806600))

(declare-fun res!2582400 () Bool)

(assert (=> d!1963190 (=> (not res!2582400) (not e!3806600))))

(assert (=> d!1963190 (= res!2582400 (validRegex!7917 lt!2349792))))

(declare-fun e!3806596 () Regex!16181)

(assert (=> d!1963190 (= lt!2349792 e!3806596)))

(declare-fun c!1132938 () Bool)

(declare-fun e!3806599 () Bool)

(assert (=> d!1963190 (= c!1132938 e!3806599)))

(declare-fun res!2582401 () Bool)

(assert (=> d!1963190 (=> (not res!2582401) (not e!3806599))))

(assert (=> d!1963190 (= res!2582401 ((_ is Cons!64718) (t!378392 (unfocusZipperList!1602 zl!343))))))

(assert (=> d!1963190 (forall!15300 (t!378392 (unfocusZipperList!1602 zl!343)) lambda!342485)))

(assert (=> d!1963190 (= (generalisedUnion!2025 (t!378392 (unfocusZipperList!1602 zl!343))) lt!2349792)))

(declare-fun b!6257495 () Bool)

(assert (=> b!6257495 (= e!3806597 e!3806595)))

(declare-fun c!1132935 () Bool)

(assert (=> b!6257495 (= c!1132935 (isEmpty!36742 (tail!11948 (t!378392 (unfocusZipperList!1602 zl!343)))))))

(declare-fun b!6257496 () Bool)

(assert (=> b!6257496 (= e!3806597 (isEmptyLang!1596 lt!2349792))))

(declare-fun b!6257497 () Bool)

(assert (=> b!6257497 (= e!3806596 (h!71166 (t!378392 (unfocusZipperList!1602 zl!343))))))

(declare-fun b!6257498 () Bool)

(declare-fun e!3806598 () Regex!16181)

(assert (=> b!6257498 (= e!3806598 EmptyLang!16181)))

(declare-fun b!6257499 () Bool)

(assert (=> b!6257499 (= e!3806595 (isUnion!1026 lt!2349792))))

(declare-fun b!6257500 () Bool)

(assert (=> b!6257500 (= e!3806598 (Union!16181 (h!71166 (t!378392 (unfocusZipperList!1602 zl!343))) (generalisedUnion!2025 (t!378392 (t!378392 (unfocusZipperList!1602 zl!343))))))))

(declare-fun b!6257501 () Bool)

(assert (=> b!6257501 (= e!3806596 e!3806598)))

(declare-fun c!1132936 () Bool)

(assert (=> b!6257501 (= c!1132936 ((_ is Cons!64718) (t!378392 (unfocusZipperList!1602 zl!343))))))

(declare-fun b!6257502 () Bool)

(assert (=> b!6257502 (= e!3806599 (isEmpty!36742 (t!378392 (t!378392 (unfocusZipperList!1602 zl!343)))))))

(assert (= (and d!1963190 res!2582401) b!6257502))

(assert (= (and d!1963190 c!1132938) b!6257497))

(assert (= (and d!1963190 (not c!1132938)) b!6257501))

(assert (= (and b!6257501 c!1132936) b!6257500))

(assert (= (and b!6257501 (not c!1132936)) b!6257498))

(assert (= (and d!1963190 res!2582400) b!6257493))

(assert (= (and b!6257493 c!1132937) b!6257496))

(assert (= (and b!6257493 (not c!1132937)) b!6257495))

(assert (= (and b!6257495 c!1132935) b!6257494))

(assert (= (and b!6257495 (not c!1132935)) b!6257499))

(declare-fun m!7080334 () Bool)

(assert (=> b!6257496 m!7080334))

(declare-fun m!7080336 () Bool)

(assert (=> b!6257500 m!7080336))

(assert (=> b!6257493 m!7079028))

(declare-fun m!7080338 () Bool)

(assert (=> b!6257495 m!7080338))

(assert (=> b!6257495 m!7080338))

(declare-fun m!7080340 () Bool)

(assert (=> b!6257495 m!7080340))

(declare-fun m!7080342 () Bool)

(assert (=> b!6257502 m!7080342))

(declare-fun m!7080344 () Bool)

(assert (=> b!6257499 m!7080344))

(declare-fun m!7080346 () Bool)

(assert (=> d!1963190 m!7080346))

(declare-fun m!7080348 () Bool)

(assert (=> d!1963190 m!7080348))

(declare-fun m!7080350 () Bool)

(assert (=> b!6257494 m!7080350))

(assert (=> b!6256140 d!1963190))

(declare-fun d!1963192 () Bool)

(declare-fun res!2582402 () Bool)

(declare-fun e!3806601 () Bool)

(assert (=> d!1963192 (=> res!2582402 e!3806601)))

(assert (=> d!1963192 (= res!2582402 ((_ is Nil!64719) lt!2349542))))

(assert (=> d!1963192 (= (forall!15301 lt!2349542 lambda!342404) e!3806601)))

(declare-fun b!6257503 () Bool)

(declare-fun e!3806602 () Bool)

(assert (=> b!6257503 (= e!3806601 e!3806602)))

(declare-fun res!2582403 () Bool)

(assert (=> b!6257503 (=> (not res!2582403) (not e!3806602))))

(assert (=> b!6257503 (= res!2582403 (dynLambda!25572 lambda!342404 (h!71167 lt!2349542)))))

(declare-fun b!6257504 () Bool)

(assert (=> b!6257504 (= e!3806602 (forall!15301 (t!378393 lt!2349542) lambda!342404))))

(assert (= (and d!1963192 (not res!2582402)) b!6257503))

(assert (= (and b!6257503 res!2582403) b!6257504))

(declare-fun b_lambda!238137 () Bool)

(assert (=> (not b_lambda!238137) (not b!6257503)))

(declare-fun m!7080352 () Bool)

(assert (=> b!6257503 m!7080352))

(declare-fun m!7080354 () Bool)

(assert (=> b!6257504 m!7080354))

(assert (=> b!6256372 d!1963192))

(declare-fun bm!528181 () Bool)

(declare-fun c!1132940 () Bool)

(declare-fun c!1132939 () Bool)

(declare-fun call!528188 () Bool)

(assert (=> bm!528181 (= call!528188 (validRegex!7917 (ite c!1132940 (reg!16510 lt!2349667) (ite c!1132939 (regOne!32875 lt!2349667) (regOne!32874 lt!2349667)))))))

(declare-fun b!6257505 () Bool)

(declare-fun e!3806606 () Bool)

(declare-fun call!528187 () Bool)

(assert (=> b!6257505 (= e!3806606 call!528187)))

(declare-fun bm!528182 () Bool)

(declare-fun call!528186 () Bool)

(assert (=> bm!528182 (= call!528186 call!528188)))

(declare-fun b!6257506 () Bool)

(declare-fun e!3806605 () Bool)

(declare-fun e!3806608 () Bool)

(assert (=> b!6257506 (= e!3806605 e!3806608)))

(declare-fun res!2582406 () Bool)

(assert (=> b!6257506 (= res!2582406 (not (nullable!6174 (reg!16510 lt!2349667))))))

(assert (=> b!6257506 (=> (not res!2582406) (not e!3806608))))

(declare-fun b!6257507 () Bool)

(declare-fun e!3806609 () Bool)

(assert (=> b!6257507 (= e!3806605 e!3806609)))

(assert (=> b!6257507 (= c!1132939 ((_ is Union!16181) lt!2349667))))

(declare-fun b!6257508 () Bool)

(declare-fun e!3806604 () Bool)

(declare-fun e!3806607 () Bool)

(assert (=> b!6257508 (= e!3806604 e!3806607)))

(declare-fun res!2582407 () Bool)

(assert (=> b!6257508 (=> (not res!2582407) (not e!3806607))))

(assert (=> b!6257508 (= res!2582407 call!528186)))

(declare-fun d!1963194 () Bool)

(declare-fun res!2582405 () Bool)

(declare-fun e!3806603 () Bool)

(assert (=> d!1963194 (=> res!2582405 e!3806603)))

(assert (=> d!1963194 (= res!2582405 ((_ is ElementMatch!16181) lt!2349667))))

(assert (=> d!1963194 (= (validRegex!7917 lt!2349667) e!3806603)))

(declare-fun b!6257509 () Bool)

(assert (=> b!6257509 (= e!3806608 call!528188)))

(declare-fun b!6257510 () Bool)

(assert (=> b!6257510 (= e!3806607 call!528187)))

(declare-fun b!6257511 () Bool)

(declare-fun res!2582408 () Bool)

(assert (=> b!6257511 (=> res!2582408 e!3806604)))

(assert (=> b!6257511 (= res!2582408 (not ((_ is Concat!25026) lt!2349667)))))

(assert (=> b!6257511 (= e!3806609 e!3806604)))

(declare-fun b!6257512 () Bool)

(declare-fun res!2582404 () Bool)

(assert (=> b!6257512 (=> (not res!2582404) (not e!3806606))))

(assert (=> b!6257512 (= res!2582404 call!528186)))

(assert (=> b!6257512 (= e!3806609 e!3806606)))

(declare-fun bm!528183 () Bool)

(assert (=> bm!528183 (= call!528187 (validRegex!7917 (ite c!1132939 (regTwo!32875 lt!2349667) (regTwo!32874 lt!2349667))))))

(declare-fun b!6257513 () Bool)

(assert (=> b!6257513 (= e!3806603 e!3806605)))

(assert (=> b!6257513 (= c!1132940 ((_ is Star!16181) lt!2349667))))

(assert (= (and d!1963194 (not res!2582405)) b!6257513))

(assert (= (and b!6257513 c!1132940) b!6257506))

(assert (= (and b!6257513 (not c!1132940)) b!6257507))

(assert (= (and b!6257506 res!2582406) b!6257509))

(assert (= (and b!6257507 c!1132939) b!6257512))

(assert (= (and b!6257507 (not c!1132939)) b!6257511))

(assert (= (and b!6257512 res!2582404) b!6257505))

(assert (= (and b!6257511 (not res!2582408)) b!6257508))

(assert (= (and b!6257508 res!2582407) b!6257510))

(assert (= (or b!6257505 b!6257510) bm!528183))

(assert (= (or b!6257512 b!6257508) bm!528182))

(assert (= (or b!6257509 bm!528182) bm!528181))

(declare-fun m!7080356 () Bool)

(assert (=> bm!528181 m!7080356))

(declare-fun m!7080358 () Bool)

(assert (=> b!6257506 m!7080358))

(declare-fun m!7080360 () Bool)

(assert (=> bm!528183 m!7080360))

(assert (=> d!1962594 d!1963194))

(assert (=> d!1962594 d!1962578))

(assert (=> d!1962594 d!1962580))

(declare-fun bm!528184 () Bool)

(declare-fun call!528189 () (InoxSet Context!11130))

(assert (=> bm!528184 (= call!528189 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349551))))) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349551)))))) (h!71168 s!2326)))))

(declare-fun d!1963196 () Bool)

(declare-fun c!1132942 () Bool)

(declare-fun e!3806611 () Bool)

(assert (=> d!1963196 (= c!1132942 e!3806611)))

(declare-fun res!2582409 () Bool)

(assert (=> d!1963196 (=> (not res!2582409) (not e!3806611))))

(assert (=> d!1963196 (= res!2582409 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349551))))))))

(declare-fun e!3806610 () (InoxSet Context!11130))

(assert (=> d!1963196 (= (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 lt!2349551))) (h!71168 s!2326)) e!3806610)))

(declare-fun b!6257514 () Bool)

(assert (=> b!6257514 (= e!3806611 (nullable!6174 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349551)))))))))

(declare-fun b!6257515 () Bool)

(assert (=> b!6257515 (= e!3806610 ((_ map or) call!528189 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349551)))))) (h!71168 s!2326))))))

(declare-fun b!6257516 () Bool)

(declare-fun e!3806612 () (InoxSet Context!11130))

(assert (=> b!6257516 (= e!3806610 e!3806612)))

(declare-fun c!1132941 () Bool)

(assert (=> b!6257516 (= c!1132941 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349551))))))))

(declare-fun b!6257517 () Bool)

(assert (=> b!6257517 (= e!3806612 call!528189)))

(declare-fun b!6257518 () Bool)

(assert (=> b!6257518 (= e!3806612 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1963196 res!2582409) b!6257514))

(assert (= (and d!1963196 c!1132942) b!6257515))

(assert (= (and d!1963196 (not c!1132942)) b!6257516))

(assert (= (and b!6257516 c!1132941) b!6257517))

(assert (= (and b!6257516 (not c!1132941)) b!6257518))

(assert (= (or b!6257515 b!6257517) bm!528184))

(declare-fun m!7080362 () Bool)

(assert (=> bm!528184 m!7080362))

(declare-fun m!7080364 () Bool)

(assert (=> b!6257514 m!7080364))

(declare-fun m!7080366 () Bool)

(assert (=> b!6257515 m!7080366))

(assert (=> b!6255982 d!1963196))

(assert (=> d!1962556 d!1963062))

(declare-fun d!1963198 () Bool)

(assert (=> d!1963198 (= (Exists!3251 lambda!342382) (choose!46428 lambda!342382))))

(declare-fun bs!1558592 () Bool)

(assert (= bs!1558592 d!1963198))

(declare-fun m!7080368 () Bool)

(assert (=> bs!1558592 m!7080368))

(assert (=> d!1962590 d!1963198))

(declare-fun d!1963200 () Bool)

(assert (=> d!1963200 (= (Exists!3251 lambda!342383) (choose!46428 lambda!342383))))

(declare-fun bs!1558593 () Bool)

(assert (= bs!1558593 d!1963200))

(declare-fun m!7080370 () Bool)

(assert (=> bs!1558593 m!7080370))

(assert (=> d!1962590 d!1963200))

(declare-fun bs!1558594 () Bool)

(declare-fun d!1963202 () Bool)

(assert (= bs!1558594 (and d!1963202 d!1962590)))

(declare-fun lambda!342490 () Int)

(assert (=> bs!1558594 (not (= lambda!342490 lambda!342383))))

(declare-fun bs!1558595 () Bool)

(assert (= bs!1558595 (and d!1963202 b!6255548)))

(assert (=> bs!1558595 (= lambda!342490 lambda!342313)))

(declare-fun bs!1558596 () Bool)

(assert (= bs!1558596 (and d!1963202 b!6256253)))

(assert (=> bs!1558596 (not (= lambda!342490 lambda!342389))))

(declare-fun bs!1558597 () Bool)

(assert (= bs!1558597 (and d!1963202 b!6257272)))

(assert (=> bs!1558597 (not (= lambda!342490 lambda!342474))))

(declare-fun bs!1558598 () Bool)

(assert (= bs!1558598 (and d!1963202 b!6257276)))

(assert (=> bs!1558598 (not (= lambda!342490 lambda!342473))))

(assert (=> bs!1558594 (= lambda!342490 lambda!342382)))

(declare-fun bs!1558599 () Bool)

(assert (= bs!1558599 (and d!1963202 d!1962588)))

(assert (=> bs!1558599 (= lambda!342490 lambda!342377)))

(assert (=> bs!1558595 (not (= lambda!342490 lambda!342314))))

(declare-fun bs!1558600 () Bool)

(assert (= bs!1558600 (and d!1963202 b!6256257)))

(assert (=> bs!1558600 (not (= lambda!342490 lambda!342388))))

(assert (=> d!1963202 true))

(assert (=> d!1963202 true))

(assert (=> d!1963202 true))

(declare-fun lambda!342491 () Int)

(assert (=> bs!1558594 (= lambda!342491 lambda!342383)))

(assert (=> bs!1558595 (not (= lambda!342491 lambda!342313))))

(assert (=> bs!1558597 (= (and (= (regOne!32874 r!7292) (regOne!32874 (regOne!32875 r!7292))) (= (regTwo!32874 r!7292) (regTwo!32874 (regOne!32875 r!7292)))) (= lambda!342491 lambda!342474))))

(assert (=> bs!1558598 (not (= lambda!342491 lambda!342473))))

(assert (=> bs!1558594 (not (= lambda!342491 lambda!342382))))

(assert (=> bs!1558599 (not (= lambda!342491 lambda!342377))))

(assert (=> bs!1558596 (= lambda!342491 lambda!342389)))

(declare-fun bs!1558601 () Bool)

(assert (= bs!1558601 d!1963202))

(assert (=> bs!1558601 (not (= lambda!342491 lambda!342490))))

(assert (=> bs!1558595 (= lambda!342491 lambda!342314)))

(assert (=> bs!1558600 (not (= lambda!342491 lambda!342388))))

(assert (=> d!1963202 true))

(assert (=> d!1963202 true))

(assert (=> d!1963202 true))

(assert (=> d!1963202 (= (Exists!3251 lambda!342490) (Exists!3251 lambda!342491))))

(assert (=> d!1963202 true))

(declare-fun _$90!2073 () Unit!158055)

(assert (=> d!1963202 (= (choose!46430 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326) _$90!2073)))

(declare-fun m!7080372 () Bool)

(assert (=> bs!1558601 m!7080372))

(declare-fun m!7080374 () Bool)

(assert (=> bs!1558601 m!7080374))

(assert (=> d!1962590 d!1963202))

(assert (=> d!1962590 d!1963184))

(assert (=> d!1962636 d!1962638))

(declare-fun d!1963204 () Bool)

(assert (=> d!1963204 (= (flatMap!1686 lt!2349545 lambda!342315) (dynLambda!25566 lambda!342315 lt!2349551))))

(assert (=> d!1963204 true))

(declare-fun _$13!3351 () Unit!158055)

(assert (=> d!1963204 (= (choose!46426 lt!2349545 lt!2349551 lambda!342315) _$13!3351)))

(declare-fun b_lambda!238139 () Bool)

(assert (=> (not b_lambda!238139) (not d!1963204)))

(declare-fun bs!1558602 () Bool)

(assert (= bs!1558602 d!1963204))

(assert (=> bs!1558602 m!7078510))

(assert (=> bs!1558602 m!7079228))

(assert (=> d!1962636 d!1963204))

(assert (=> d!1962550 d!1962524))

(declare-fun d!1963206 () Bool)

(assert (=> d!1963206 (= (flatMap!1686 lt!2349541 lambda!342315) (dynLambda!25566 lambda!342315 lt!2349538))))

(assert (=> d!1963206 true))

(declare-fun _$13!3352 () Unit!158055)

(assert (=> d!1963206 (= (choose!46426 lt!2349541 lt!2349538 lambda!342315) _$13!3352)))

(declare-fun b_lambda!238141 () Bool)

(assert (=> (not b_lambda!238141) (not d!1963206)))

(declare-fun bs!1558603 () Bool)

(assert (= bs!1558603 d!1963206))

(assert (=> bs!1558603 m!7078522))

(assert (=> bs!1558603 m!7078948))

(assert (=> d!1962550 d!1963206))

(declare-fun bs!1558604 () Bool)

(declare-fun d!1963208 () Bool)

(assert (= bs!1558604 (and d!1963208 b!6256372)))

(declare-fun lambda!342492 () Int)

(assert (=> bs!1558604 (not (= lambda!342492 lambda!342404))))

(declare-fun bs!1558605 () Bool)

(assert (= bs!1558605 (and d!1963208 d!1963128)))

(assert (=> bs!1558605 (= lambda!342492 lambda!342480)))

(declare-fun bs!1558606 () Bool)

(assert (= bs!1558606 (and d!1963208 d!1963080)))

(assert (=> bs!1558606 (= lambda!342492 lambda!342476)))

(declare-fun bs!1558607 () Bool)

(assert (= bs!1558607 (and d!1963208 b!6256377)))

(assert (=> bs!1558607 (not (= lambda!342492 lambda!342407))))

(declare-fun bs!1558608 () Bool)

(assert (= bs!1558608 (and d!1963208 d!1963158)))

(assert (=> bs!1558608 (= lambda!342492 lambda!342483)))

(declare-fun bs!1558609 () Bool)

(assert (= bs!1558609 (and d!1963208 d!1963120)))

(assert (=> bs!1558609 (= lambda!342492 lambda!342478)))

(declare-fun bs!1558610 () Bool)

(assert (= bs!1558610 (and d!1963208 d!1963042)))

(assert (=> bs!1558610 (= lambda!342492 lambda!342471)))

(declare-fun bs!1558611 () Bool)

(assert (= bs!1558611 (and d!1963208 b!6256375)))

(assert (=> bs!1558611 (not (= lambda!342492 lambda!342406))))

(declare-fun bs!1558612 () Bool)

(assert (= bs!1558612 (and d!1963208 b!6256370)))

(assert (=> bs!1558612 (not (= lambda!342492 lambda!342403))))

(assert (=> d!1963208 (= (nullableZipper!1951 lt!2349560) (exists!2515 lt!2349560 lambda!342492))))

(declare-fun bs!1558613 () Bool)

(assert (= bs!1558613 d!1963208))

(declare-fun m!7080376 () Bool)

(assert (=> bs!1558613 m!7080376))

(assert (=> b!6256056 d!1963208))

(declare-fun d!1963210 () Bool)

(assert (=> d!1963210 (= (nullable!6174 lt!2349533) (nullableFct!2126 lt!2349533))))

(declare-fun bs!1558614 () Bool)

(assert (= bs!1558614 d!1963210))

(declare-fun m!7080378 () Bool)

(assert (=> bs!1558614 m!7080378))

(assert (=> b!6256346 d!1963210))

(assert (=> b!6256327 d!1962600))

(declare-fun bs!1558615 () Bool)

(declare-fun b!6257534 () Bool)

(assert (= bs!1558615 (and b!6257534 d!1962590)))

(declare-fun lambda!342493 () Int)

(assert (=> bs!1558615 (not (= lambda!342493 lambda!342383))))

(declare-fun bs!1558616 () Bool)

(assert (= bs!1558616 (and b!6257534 b!6255548)))

(assert (=> bs!1558616 (not (= lambda!342493 lambda!342313))))

(declare-fun bs!1558617 () Bool)

(assert (= bs!1558617 (and b!6257534 d!1963202)))

(assert (=> bs!1558617 (not (= lambda!342493 lambda!342491))))

(declare-fun bs!1558618 () Bool)

(assert (= bs!1558618 (and b!6257534 b!6257272)))

(assert (=> bs!1558618 (not (= lambda!342493 lambda!342474))))

(declare-fun bs!1558619 () Bool)

(assert (= bs!1558619 (and b!6257534 b!6257276)))

(assert (=> bs!1558619 (= (and (= (reg!16510 (regTwo!32875 r!7292)) (reg!16510 (regOne!32875 r!7292))) (= (regTwo!32875 r!7292) (regOne!32875 r!7292))) (= lambda!342493 lambda!342473))))

(assert (=> bs!1558615 (not (= lambda!342493 lambda!342382))))

(declare-fun bs!1558620 () Bool)

(assert (= bs!1558620 (and b!6257534 d!1962588)))

(assert (=> bs!1558620 (not (= lambda!342493 lambda!342377))))

(declare-fun bs!1558621 () Bool)

(assert (= bs!1558621 (and b!6257534 b!6256253)))

(assert (=> bs!1558621 (not (= lambda!342493 lambda!342389))))

(assert (=> bs!1558617 (not (= lambda!342493 lambda!342490))))

(assert (=> bs!1558616 (not (= lambda!342493 lambda!342314))))

(declare-fun bs!1558622 () Bool)

(assert (= bs!1558622 (and b!6257534 b!6256257)))

(assert (=> bs!1558622 (= (and (= (reg!16510 (regTwo!32875 r!7292)) (reg!16510 r!7292)) (= (regTwo!32875 r!7292) r!7292)) (= lambda!342493 lambda!342388))))

(assert (=> b!6257534 true))

(assert (=> b!6257534 true))

(declare-fun bs!1558623 () Bool)

(declare-fun b!6257530 () Bool)

(assert (= bs!1558623 (and b!6257530 d!1962590)))

(declare-fun lambda!342494 () Int)

(assert (=> bs!1558623 (= (and (= (regOne!32874 (regTwo!32875 r!7292)) (regOne!32874 r!7292)) (= (regTwo!32874 (regTwo!32875 r!7292)) (regTwo!32874 r!7292))) (= lambda!342494 lambda!342383))))

(declare-fun bs!1558624 () Bool)

(assert (= bs!1558624 (and b!6257530 b!6255548)))

(assert (=> bs!1558624 (not (= lambda!342494 lambda!342313))))

(declare-fun bs!1558625 () Bool)

(assert (= bs!1558625 (and b!6257530 d!1963202)))

(assert (=> bs!1558625 (= (and (= (regOne!32874 (regTwo!32875 r!7292)) (regOne!32874 r!7292)) (= (regTwo!32874 (regTwo!32875 r!7292)) (regTwo!32874 r!7292))) (= lambda!342494 lambda!342491))))

(declare-fun bs!1558626 () Bool)

(assert (= bs!1558626 (and b!6257530 b!6257272)))

(assert (=> bs!1558626 (= (and (= (regOne!32874 (regTwo!32875 r!7292)) (regOne!32874 (regOne!32875 r!7292))) (= (regTwo!32874 (regTwo!32875 r!7292)) (regTwo!32874 (regOne!32875 r!7292)))) (= lambda!342494 lambda!342474))))

(declare-fun bs!1558627 () Bool)

(assert (= bs!1558627 (and b!6257530 b!6257276)))

(assert (=> bs!1558627 (not (= lambda!342494 lambda!342473))))

(assert (=> bs!1558623 (not (= lambda!342494 lambda!342382))))

(declare-fun bs!1558628 () Bool)

(assert (= bs!1558628 (and b!6257530 d!1962588)))

(assert (=> bs!1558628 (not (= lambda!342494 lambda!342377))))

(declare-fun bs!1558629 () Bool)

(assert (= bs!1558629 (and b!6257530 b!6257534)))

(assert (=> bs!1558629 (not (= lambda!342494 lambda!342493))))

(declare-fun bs!1558630 () Bool)

(assert (= bs!1558630 (and b!6257530 b!6256253)))

(assert (=> bs!1558630 (= (and (= (regOne!32874 (regTwo!32875 r!7292)) (regOne!32874 r!7292)) (= (regTwo!32874 (regTwo!32875 r!7292)) (regTwo!32874 r!7292))) (= lambda!342494 lambda!342389))))

(assert (=> bs!1558625 (not (= lambda!342494 lambda!342490))))

(assert (=> bs!1558624 (= (and (= (regOne!32874 (regTwo!32875 r!7292)) (regOne!32874 r!7292)) (= (regTwo!32874 (regTwo!32875 r!7292)) (regTwo!32874 r!7292))) (= lambda!342494 lambda!342314))))

(declare-fun bs!1558631 () Bool)

(assert (= bs!1558631 (and b!6257530 b!6256257)))

(assert (=> bs!1558631 (not (= lambda!342494 lambda!342388))))

(assert (=> b!6257530 true))

(assert (=> b!6257530 true))

(declare-fun b!6257527 () Bool)

(declare-fun e!3806621 () Bool)

(assert (=> b!6257527 (= e!3806621 (matchRSpec!3282 (regTwo!32875 (regTwo!32875 r!7292)) s!2326))))

(declare-fun b!6257528 () Bool)

(declare-fun e!3806623 () Bool)

(declare-fun call!528190 () Bool)

(assert (=> b!6257528 (= e!3806623 call!528190)))

(declare-fun b!6257529 () Bool)

(declare-fun e!3806618 () Bool)

(assert (=> b!6257529 (= e!3806618 e!3806621)))

(declare-fun res!2582419 () Bool)

(assert (=> b!6257529 (= res!2582419 (matchRSpec!3282 (regOne!32875 (regTwo!32875 r!7292)) s!2326))))

(assert (=> b!6257529 (=> res!2582419 e!3806621)))

(declare-fun e!3806620 () Bool)

(declare-fun call!528191 () Bool)

(assert (=> b!6257530 (= e!3806620 call!528191)))

(declare-fun b!6257531 () Bool)

(declare-fun c!1132945 () Bool)

(assert (=> b!6257531 (= c!1132945 ((_ is ElementMatch!16181) (regTwo!32875 r!7292)))))

(declare-fun e!3806619 () Bool)

(declare-fun e!3806622 () Bool)

(assert (=> b!6257531 (= e!3806619 e!3806622)))

(declare-fun d!1963212 () Bool)

(declare-fun c!1132946 () Bool)

(assert (=> d!1963212 (= c!1132946 ((_ is EmptyExpr!16181) (regTwo!32875 r!7292)))))

(assert (=> d!1963212 (= (matchRSpec!3282 (regTwo!32875 r!7292) s!2326) e!3806623)))

(declare-fun b!6257532 () Bool)

(assert (=> b!6257532 (= e!3806618 e!3806620)))

(declare-fun c!1132944 () Bool)

(assert (=> b!6257532 (= c!1132944 ((_ is Star!16181) (regTwo!32875 r!7292)))))

(declare-fun b!6257533 () Bool)

(assert (=> b!6257533 (= e!3806623 e!3806619)))

(declare-fun res!2582418 () Bool)

(assert (=> b!6257533 (= res!2582418 (not ((_ is EmptyLang!16181) (regTwo!32875 r!7292))))))

(assert (=> b!6257533 (=> (not res!2582418) (not e!3806619))))

(declare-fun e!3806617 () Bool)

(assert (=> b!6257534 (= e!3806617 call!528191)))

(declare-fun bm!528185 () Bool)

(assert (=> bm!528185 (= call!528190 (isEmpty!36746 s!2326))))

(declare-fun b!6257535 () Bool)

(declare-fun c!1132943 () Bool)

(assert (=> b!6257535 (= c!1132943 ((_ is Union!16181) (regTwo!32875 r!7292)))))

(assert (=> b!6257535 (= e!3806622 e!3806618)))

(declare-fun bm!528186 () Bool)

(assert (=> bm!528186 (= call!528191 (Exists!3251 (ite c!1132944 lambda!342493 lambda!342494)))))

(declare-fun b!6257536 () Bool)

(assert (=> b!6257536 (= e!3806622 (= s!2326 (Cons!64720 (c!1132364 (regTwo!32875 r!7292)) Nil!64720)))))

(declare-fun b!6257537 () Bool)

(declare-fun res!2582420 () Bool)

(assert (=> b!6257537 (=> res!2582420 e!3806617)))

(assert (=> b!6257537 (= res!2582420 call!528190)))

(assert (=> b!6257537 (= e!3806620 e!3806617)))

(assert (= (and d!1963212 c!1132946) b!6257528))

(assert (= (and d!1963212 (not c!1132946)) b!6257533))

(assert (= (and b!6257533 res!2582418) b!6257531))

(assert (= (and b!6257531 c!1132945) b!6257536))

(assert (= (and b!6257531 (not c!1132945)) b!6257535))

(assert (= (and b!6257535 c!1132943) b!6257529))

(assert (= (and b!6257535 (not c!1132943)) b!6257532))

(assert (= (and b!6257529 (not res!2582419)) b!6257527))

(assert (= (and b!6257532 c!1132944) b!6257537))

(assert (= (and b!6257532 (not c!1132944)) b!6257530))

(assert (= (and b!6257537 (not res!2582420)) b!6257534))

(assert (= (or b!6257534 b!6257530) bm!528186))

(assert (= (or b!6257528 b!6257537) bm!528185))

(declare-fun m!7080380 () Bool)

(assert (=> b!6257527 m!7080380))

(declare-fun m!7080382 () Bool)

(assert (=> b!6257529 m!7080382))

(assert (=> bm!528185 m!7079112))

(declare-fun m!7080384 () Bool)

(assert (=> bm!528186 m!7080384))

(assert (=> b!6256250 d!1963212))

(declare-fun d!1963214 () Bool)

(declare-fun c!1132947 () Bool)

(assert (=> d!1963214 (= c!1132947 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806624 () Bool)

(assert (=> d!1963214 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349540 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806624)))

(declare-fun b!6257538 () Bool)

(assert (=> b!6257538 (= e!3806624 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349540 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257539 () Bool)

(assert (=> b!6257539 (= e!3806624 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349540 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963214 c!1132947) b!6257538))

(assert (= (and d!1963214 (not c!1132947)) b!6257539))

(assert (=> d!1963214 m!7078806))

(assert (=> d!1963214 m!7080100))

(assert (=> b!6257538 m!7078966))

(declare-fun m!7080386 () Bool)

(assert (=> b!6257538 m!7080386))

(assert (=> b!6257539 m!7078806))

(assert (=> b!6257539 m!7080104))

(assert (=> b!6257539 m!7078966))

(assert (=> b!6257539 m!7080104))

(declare-fun m!7080388 () Bool)

(assert (=> b!6257539 m!7080388))

(assert (=> b!6257539 m!7078806))

(assert (=> b!6257539 m!7080108))

(assert (=> b!6257539 m!7080388))

(assert (=> b!6257539 m!7080108))

(declare-fun m!7080390 () Bool)

(assert (=> b!6257539 m!7080390))

(assert (=> b!6256061 d!1963214))

(declare-fun bs!1558632 () Bool)

(declare-fun d!1963216 () Bool)

(assert (= bs!1558632 (and d!1963216 b!6255545)))

(declare-fun lambda!342495 () Int)

(assert (=> bs!1558632 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342495 lambda!342315))))

(declare-fun bs!1558633 () Bool)

(assert (= bs!1558633 (and d!1963216 d!1962614)))

(assert (=> bs!1558633 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342495 lambda!342390))))

(declare-fun bs!1558634 () Bool)

(assert (= bs!1558634 (and d!1963216 d!1963088)))

(assert (=> bs!1558634 (= lambda!342495 lambda!342477)))

(declare-fun bs!1558635 () Bool)

(assert (= bs!1558635 (and d!1963216 d!1963138)))

(assert (=> bs!1558635 (= (= (head!12862 (t!378394 s!2326)) (head!12862 s!2326)) (= lambda!342495 lambda!342481))))

(declare-fun bs!1558636 () Bool)

(assert (= bs!1558636 (and d!1963216 d!1963164)))

(assert (=> bs!1558636 (= lambda!342495 lambda!342484)))

(declare-fun bs!1558637 () Bool)

(assert (= bs!1558637 (and d!1963216 d!1963068)))

(assert (=> bs!1558637 (= lambda!342495 lambda!342475)))

(declare-fun bs!1558638 () Bool)

(assert (= bs!1558638 (and d!1963216 d!1962540)))

(assert (=> bs!1558638 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342495 lambda!342367))))

(declare-fun bs!1558639 () Bool)

(assert (= bs!1558639 (and d!1963216 d!1963124)))

(assert (=> bs!1558639 (= lambda!342495 lambda!342479)))

(assert (=> d!1963216 true))

(assert (=> d!1963216 (= (derivationStepZipper!2147 lt!2349540 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349540 lambda!342495))))

(declare-fun bs!1558640 () Bool)

(assert (= bs!1558640 d!1963216))

(declare-fun m!7080392 () Bool)

(assert (=> bs!1558640 m!7080392))

(assert (=> b!6256061 d!1963216))

(assert (=> b!6256061 d!1963070))

(assert (=> b!6256061 d!1963072))

(declare-fun bs!1558641 () Bool)

(declare-fun d!1963218 () Bool)

(assert (= bs!1558641 (and d!1963218 b!6256372)))

(declare-fun lambda!342496 () Int)

(assert (=> bs!1558641 (not (= lambda!342496 lambda!342404))))

(declare-fun bs!1558642 () Bool)

(assert (= bs!1558642 (and d!1963218 d!1963208)))

(assert (=> bs!1558642 (= lambda!342496 lambda!342492)))

(declare-fun bs!1558643 () Bool)

(assert (= bs!1558643 (and d!1963218 d!1963128)))

(assert (=> bs!1558643 (= lambda!342496 lambda!342480)))

(declare-fun bs!1558644 () Bool)

(assert (= bs!1558644 (and d!1963218 d!1963080)))

(assert (=> bs!1558644 (= lambda!342496 lambda!342476)))

(declare-fun bs!1558645 () Bool)

(assert (= bs!1558645 (and d!1963218 b!6256377)))

(assert (=> bs!1558645 (not (= lambda!342496 lambda!342407))))

(declare-fun bs!1558646 () Bool)

(assert (= bs!1558646 (and d!1963218 d!1963158)))

(assert (=> bs!1558646 (= lambda!342496 lambda!342483)))

(declare-fun bs!1558647 () Bool)

(assert (= bs!1558647 (and d!1963218 d!1963120)))

(assert (=> bs!1558647 (= lambda!342496 lambda!342478)))

(declare-fun bs!1558648 () Bool)

(assert (= bs!1558648 (and d!1963218 d!1963042)))

(assert (=> bs!1558648 (= lambda!342496 lambda!342471)))

(declare-fun bs!1558649 () Bool)

(assert (= bs!1558649 (and d!1963218 b!6256375)))

(assert (=> bs!1558649 (not (= lambda!342496 lambda!342406))))

(declare-fun bs!1558650 () Bool)

(assert (= bs!1558650 (and d!1963218 b!6256370)))

(assert (=> bs!1558650 (not (= lambda!342496 lambda!342403))))

(assert (=> d!1963218 (= (nullableZipper!1951 lt!2349541) (exists!2515 lt!2349541 lambda!342496))))

(declare-fun bs!1558651 () Bool)

(assert (= bs!1558651 d!1963218))

(declare-fun m!7080394 () Bool)

(assert (=> bs!1558651 m!7080394))

(assert (=> b!6256362 d!1963218))

(assert (=> bs!1557965 d!1962530))

(declare-fun bm!528187 () Bool)

(declare-fun call!528192 () (InoxSet Context!11130))

(assert (=> bm!528187 (= call!528192 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538))))) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538)))))) (h!71168 s!2326)))))

(declare-fun d!1963220 () Bool)

(declare-fun c!1132949 () Bool)

(declare-fun e!3806626 () Bool)

(assert (=> d!1963220 (= c!1132949 e!3806626)))

(declare-fun res!2582421 () Bool)

(assert (=> d!1963220 (=> (not res!2582421) (not e!3806626))))

(assert (=> d!1963220 (= res!2582421 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538))))))))

(declare-fun e!3806625 () (InoxSet Context!11130))

(assert (=> d!1963220 (= (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 lt!2349538))) (h!71168 s!2326)) e!3806625)))

(declare-fun b!6257540 () Bool)

(assert (=> b!6257540 (= e!3806626 (nullable!6174 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538)))))))))

(declare-fun b!6257541 () Bool)

(assert (=> b!6257541 (= e!3806625 ((_ map or) call!528192 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538)))))) (h!71168 s!2326))))))

(declare-fun b!6257542 () Bool)

(declare-fun e!3806627 () (InoxSet Context!11130))

(assert (=> b!6257542 (= e!3806625 e!3806627)))

(declare-fun c!1132948 () Bool)

(assert (=> b!6257542 (= c!1132948 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538))))))))

(declare-fun b!6257543 () Bool)

(assert (=> b!6257543 (= e!3806627 call!528192)))

(declare-fun b!6257544 () Bool)

(assert (=> b!6257544 (= e!3806627 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1963220 res!2582421) b!6257540))

(assert (= (and d!1963220 c!1132949) b!6257541))

(assert (= (and d!1963220 (not c!1132949)) b!6257542))

(assert (= (and b!6257542 c!1132948) b!6257543))

(assert (= (and b!6257542 (not c!1132948)) b!6257544))

(assert (= (or b!6257541 b!6257543) bm!528187))

(declare-fun m!7080396 () Bool)

(assert (=> bm!528187 m!7080396))

(declare-fun m!7080398 () Bool)

(assert (=> b!6257540 m!7080398))

(declare-fun m!7080400 () Bool)

(assert (=> b!6257541 m!7080400))

(assert (=> b!6256052 d!1963220))

(declare-fun b!6257545 () Bool)

(declare-fun res!2582426 () Bool)

(declare-fun e!3806630 () Bool)

(assert (=> b!6257545 (=> res!2582426 e!3806630)))

(assert (=> b!6257545 (= res!2582426 (not ((_ is ElementMatch!16181) (regTwo!32874 r!7292))))))

(declare-fun e!3806628 () Bool)

(assert (=> b!6257545 (= e!3806628 e!3806630)))

(declare-fun b!6257546 () Bool)

(declare-fun res!2582428 () Bool)

(assert (=> b!6257546 (=> res!2582428 e!3806630)))

(declare-fun e!3806634 () Bool)

(assert (=> b!6257546 (= res!2582428 e!3806634)))

(declare-fun res!2582424 () Bool)

(assert (=> b!6257546 (=> (not res!2582424) (not e!3806634))))

(declare-fun lt!2349793 () Bool)

(assert (=> b!6257546 (= res!2582424 lt!2349793)))

(declare-fun b!6257547 () Bool)

(declare-fun e!3806629 () Bool)

(assert (=> b!6257547 (= e!3806629 e!3806628)))

(declare-fun c!1132952 () Bool)

(assert (=> b!6257547 (= c!1132952 ((_ is EmptyLang!16181) (regTwo!32874 r!7292)))))

(declare-fun b!6257548 () Bool)

(declare-fun e!3806633 () Bool)

(assert (=> b!6257548 (= e!3806630 e!3806633)))

(declare-fun res!2582422 () Bool)

(assert (=> b!6257548 (=> (not res!2582422) (not e!3806633))))

(assert (=> b!6257548 (= res!2582422 (not lt!2349793))))

(declare-fun b!6257549 () Bool)

(assert (=> b!6257549 (= e!3806628 (not lt!2349793))))

(declare-fun b!6257550 () Bool)

(declare-fun res!2582423 () Bool)

(assert (=> b!6257550 (=> (not res!2582423) (not e!3806634))))

(declare-fun call!528193 () Bool)

(assert (=> b!6257550 (= res!2582423 (not call!528193))))

(declare-fun d!1963222 () Bool)

(assert (=> d!1963222 e!3806629))

(declare-fun c!1132950 () Bool)

(assert (=> d!1963222 (= c!1132950 ((_ is EmptyExpr!16181) (regTwo!32874 r!7292)))))

(declare-fun e!3806632 () Bool)

(assert (=> d!1963222 (= lt!2349793 e!3806632)))

(declare-fun c!1132951 () Bool)

(assert (=> d!1963222 (= c!1132951 (isEmpty!36746 s!2326))))

(assert (=> d!1963222 (validRegex!7917 (regTwo!32874 r!7292))))

(assert (=> d!1963222 (= (matchR!8364 (regTwo!32874 r!7292) s!2326) lt!2349793)))

(declare-fun bm!528188 () Bool)

(assert (=> bm!528188 (= call!528193 (isEmpty!36746 s!2326))))

(declare-fun b!6257551 () Bool)

(declare-fun e!3806631 () Bool)

(assert (=> b!6257551 (= e!3806631 (not (= (head!12862 s!2326) (c!1132364 (regTwo!32874 r!7292)))))))

(declare-fun b!6257552 () Bool)

(assert (=> b!6257552 (= e!3806634 (= (head!12862 s!2326) (c!1132364 (regTwo!32874 r!7292))))))

(declare-fun b!6257553 () Bool)

(assert (=> b!6257553 (= e!3806632 (nullable!6174 (regTwo!32874 r!7292)))))

(declare-fun b!6257554 () Bool)

(assert (=> b!6257554 (= e!3806633 e!3806631)))

(declare-fun res!2582429 () Bool)

(assert (=> b!6257554 (=> res!2582429 e!3806631)))

(assert (=> b!6257554 (= res!2582429 call!528193)))

(declare-fun b!6257555 () Bool)

(assert (=> b!6257555 (= e!3806632 (matchR!8364 (derivativeStep!4890 (regTwo!32874 r!7292) (head!12862 s!2326)) (tail!11947 s!2326)))))

(declare-fun b!6257556 () Bool)

(declare-fun res!2582425 () Bool)

(assert (=> b!6257556 (=> res!2582425 e!3806631)))

(assert (=> b!6257556 (= res!2582425 (not (isEmpty!36746 (tail!11947 s!2326))))))

(declare-fun b!6257557 () Bool)

(declare-fun res!2582427 () Bool)

(assert (=> b!6257557 (=> (not res!2582427) (not e!3806634))))

(assert (=> b!6257557 (= res!2582427 (isEmpty!36746 (tail!11947 s!2326)))))

(declare-fun b!6257558 () Bool)

(assert (=> b!6257558 (= e!3806629 (= lt!2349793 call!528193))))

(assert (= (and d!1963222 c!1132951) b!6257553))

(assert (= (and d!1963222 (not c!1132951)) b!6257555))

(assert (= (and d!1963222 c!1132950) b!6257558))

(assert (= (and d!1963222 (not c!1132950)) b!6257547))

(assert (= (and b!6257547 c!1132952) b!6257549))

(assert (= (and b!6257547 (not c!1132952)) b!6257545))

(assert (= (and b!6257545 (not res!2582426)) b!6257546))

(assert (= (and b!6257546 res!2582424) b!6257550))

(assert (= (and b!6257550 res!2582423) b!6257557))

(assert (= (and b!6257557 res!2582427) b!6257552))

(assert (= (and b!6257546 (not res!2582428)) b!6257548))

(assert (= (and b!6257548 res!2582422) b!6257554))

(assert (= (and b!6257554 (not res!2582429)) b!6257556))

(assert (= (and b!6257556 (not res!2582425)) b!6257551))

(assert (= (or b!6257558 b!6257554 b!6257550) bm!528188))

(assert (=> b!6257556 m!7079116))

(assert (=> b!6257556 m!7079116))

(assert (=> b!6257556 m!7079118))

(assert (=> bm!528188 m!7079112))

(assert (=> b!6257551 m!7079120))

(assert (=> b!6257555 m!7079120))

(assert (=> b!6257555 m!7079120))

(declare-fun m!7080402 () Bool)

(assert (=> b!6257555 m!7080402))

(assert (=> b!6257555 m!7079116))

(assert (=> b!6257555 m!7080402))

(assert (=> b!6257555 m!7079116))

(declare-fun m!7080404 () Bool)

(assert (=> b!6257555 m!7080404))

(assert (=> b!6257552 m!7079120))

(declare-fun m!7080406 () Bool)

(assert (=> b!6257553 m!7080406))

(assert (=> d!1963222 m!7079112))

(declare-fun m!7080408 () Bool)

(assert (=> d!1963222 m!7080408))

(assert (=> b!6257557 m!7079116))

(assert (=> b!6257557 m!7079116))

(assert (=> b!6257557 m!7079118))

(assert (=> b!6256169 d!1963222))

(declare-fun bs!1558652 () Bool)

(declare-fun d!1963224 () Bool)

(assert (= bs!1558652 (and d!1963224 d!1962616)))

(declare-fun lambda!342497 () Int)

(assert (=> bs!1558652 (= lambda!342497 lambda!342393)))

(declare-fun bs!1558653 () Bool)

(assert (= bs!1558653 (and d!1963224 d!1963190)))

(assert (=> bs!1558653 (= lambda!342497 lambda!342485)))

(declare-fun bs!1558654 () Bool)

(assert (= bs!1558654 (and d!1963224 d!1963044)))

(assert (=> bs!1558654 (= lambda!342497 lambda!342472)))

(declare-fun bs!1558655 () Bool)

(assert (= bs!1558655 (and d!1963224 d!1962580)))

(assert (=> bs!1558655 (= lambda!342497 lambda!342374)))

(declare-fun bs!1558656 () Bool)

(assert (= bs!1558656 (and d!1963224 d!1962624)))

(assert (=> bs!1558656 (= lambda!342497 lambda!342394)))

(declare-fun bs!1558657 () Bool)

(assert (= bs!1558657 (and d!1963224 d!1963152)))

(assert (=> bs!1558657 (= lambda!342497 lambda!342482)))

(declare-fun bs!1558658 () Bool)

(assert (= bs!1558658 (and d!1963224 d!1962578)))

(assert (=> bs!1558658 (= lambda!342497 lambda!342371)))

(declare-fun bs!1558659 () Bool)

(assert (= bs!1558659 (and d!1963224 d!1962628)))

(assert (=> bs!1558659 (= lambda!342497 lambda!342395)))

(declare-fun bs!1558660 () Bool)

(assert (= bs!1558660 (and d!1963224 d!1962486)))

(assert (=> bs!1558660 (= lambda!342497 lambda!342355)))

(declare-fun bs!1558661 () Bool)

(assert (= bs!1558661 (and d!1963224 d!1962576)))

(assert (=> bs!1558661 (= lambda!342497 lambda!342368)))

(assert (=> d!1963224 (= (inv!83699 setElem!42542) (forall!15300 (exprs!6065 setElem!42542) lambda!342497))))

(declare-fun bs!1558662 () Bool)

(assert (= bs!1558662 d!1963224))

(declare-fun m!7080410 () Bool)

(assert (=> bs!1558662 m!7080410))

(assert (=> setNonEmpty!42542 d!1963224))

(assert (=> b!6256350 d!1963106))

(assert (=> b!6256350 d!1963038))

(declare-fun d!1963226 () Bool)

(assert (=> d!1963226 (= (isEmpty!36742 (exprs!6065 (h!71167 zl!343))) ((_ is Nil!64718) (exprs!6065 (h!71167 zl!343))))))

(assert (=> b!6256331 d!1963226))

(declare-fun b!6257575 () Bool)

(declare-fun e!3806643 () Int)

(assert (=> b!6257575 (= e!3806643 1)))

(declare-fun bm!528195 () Bool)

(declare-fun call!528202 () Int)

(declare-fun c!1132961 () Bool)

(assert (=> bm!528195 (= call!528202 (regexDepthTotal!157 (ite c!1132961 (regOne!32875 (h!71166 (exprs!6065 lt!2349538))) (regOne!32874 (h!71166 (exprs!6065 lt!2349538))))))))

(declare-fun b!6257576 () Bool)

(declare-fun e!3806644 () Int)

(assert (=> b!6257576 (= e!3806644 1)))

(declare-fun d!1963228 () Bool)

(declare-fun lt!2349796 () Int)

(assert (=> d!1963228 (> lt!2349796 0)))

(assert (=> d!1963228 (= lt!2349796 e!3806644)))

(declare-fun c!1132962 () Bool)

(assert (=> d!1963228 (= c!1132962 ((_ is ElementMatch!16181) (h!71166 (exprs!6065 lt!2349538))))))

(assert (=> d!1963228 (= (regexDepthTotal!157 (h!71166 (exprs!6065 lt!2349538))) lt!2349796)))

(declare-fun b!6257577 () Bool)

(assert (=> b!6257577 (= c!1132961 ((_ is Union!16181) (h!71166 (exprs!6065 lt!2349538))))))

(declare-fun e!3806645 () Int)

(declare-fun e!3806646 () Int)

(assert (=> b!6257577 (= e!3806645 e!3806646)))

(declare-fun b!6257578 () Bool)

(assert (=> b!6257578 (= e!3806646 e!3806643)))

(declare-fun c!1132964 () Bool)

(assert (=> b!6257578 (= c!1132964 ((_ is Concat!25026) (h!71166 (exprs!6065 lt!2349538))))))

(declare-fun b!6257579 () Bool)

(declare-fun call!528200 () Int)

(assert (=> b!6257579 (= e!3806645 (+ 1 call!528200))))

(declare-fun bm!528196 () Bool)

(declare-fun c!1132963 () Bool)

(assert (=> bm!528196 (= call!528200 (regexDepthTotal!157 (ite c!1132963 (reg!16510 (h!71166 (exprs!6065 lt!2349538))) (ite c!1132961 (regTwo!32875 (h!71166 (exprs!6065 lt!2349538))) (regTwo!32874 (h!71166 (exprs!6065 lt!2349538)))))))))

(declare-fun b!6257580 () Bool)

(declare-fun call!528201 () Int)

(assert (=> b!6257580 (= e!3806646 (+ 1 call!528202 call!528201))))

(declare-fun bm!528197 () Bool)

(assert (=> bm!528197 (= call!528201 call!528200)))

(declare-fun b!6257581 () Bool)

(assert (=> b!6257581 (= e!3806643 (+ 1 call!528202 call!528201))))

(declare-fun b!6257582 () Bool)

(assert (=> b!6257582 (= e!3806644 e!3806645)))

(assert (=> b!6257582 (= c!1132963 ((_ is Star!16181) (h!71166 (exprs!6065 lt!2349538))))))

(assert (= (and d!1963228 c!1132962) b!6257576))

(assert (= (and d!1963228 (not c!1132962)) b!6257582))

(assert (= (and b!6257582 c!1132963) b!6257579))

(assert (= (and b!6257582 (not c!1132963)) b!6257577))

(assert (= (and b!6257577 c!1132961) b!6257580))

(assert (= (and b!6257577 (not c!1132961)) b!6257578))

(assert (= (and b!6257578 c!1132964) b!6257581))

(assert (= (and b!6257578 (not c!1132964)) b!6257575))

(assert (= (or b!6257580 b!6257581) bm!528197))

(assert (= (or b!6257580 b!6257581) bm!528195))

(assert (= (or b!6257579 bm!528197) bm!528196))

(declare-fun m!7080412 () Bool)

(assert (=> bm!528195 m!7080412))

(declare-fun m!7080414 () Bool)

(assert (=> bm!528196 m!7080414))

(assert (=> b!6256192 d!1963228))

(declare-fun d!1963230 () Bool)

(declare-fun lt!2349797 () Int)

(assert (=> d!1963230 (>= lt!2349797 0)))

(declare-fun e!3806647 () Int)

(assert (=> d!1963230 (= lt!2349797 e!3806647)))

(declare-fun c!1132965 () Bool)

(assert (=> d!1963230 (= c!1132965 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538))))))))

(assert (=> d!1963230 (= (contextDepthTotal!304 (Context!11131 (t!378392 (exprs!6065 lt!2349538)))) lt!2349797)))

(declare-fun b!6257583 () Bool)

(assert (=> b!6257583 (= e!3806647 (+ (regexDepthTotal!157 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538)))))) (contextDepthTotal!304 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349538)))))))))))

(declare-fun b!6257584 () Bool)

(assert (=> b!6257584 (= e!3806647 1)))

(assert (= (and d!1963230 c!1132965) b!6257583))

(assert (= (and d!1963230 (not c!1132965)) b!6257584))

(declare-fun m!7080416 () Bool)

(assert (=> b!6257583 m!7080416))

(declare-fun m!7080418 () Bool)

(assert (=> b!6257583 m!7080418))

(assert (=> b!6256192 d!1963230))

(assert (=> d!1962610 d!1962608))

(assert (=> d!1962610 d!1962606))

(declare-fun d!1963232 () Bool)

(assert (=> d!1963232 (= (matchR!8364 r!7292 s!2326) (matchRSpec!3282 r!7292 s!2326))))

(assert (=> d!1963232 true))

(declare-fun _$88!4895 () Unit!158055)

(assert (=> d!1963232 (= (choose!46431 r!7292 s!2326) _$88!4895)))

(declare-fun bs!1558663 () Bool)

(assert (= bs!1558663 d!1963232))

(assert (=> bs!1558663 m!7078540))

(assert (=> bs!1558663 m!7078538))

(assert (=> d!1962610 d!1963232))

(assert (=> d!1962610 d!1962648))

(declare-fun d!1963234 () Bool)

(assert (=> d!1963234 (= ($colon$colon!2046 (exprs!6065 lt!2349549) (ite (or c!1132540 c!1132539) (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (h!71166 (exprs!6065 (h!71167 zl!343))))) (Cons!64718 (ite (or c!1132540 c!1132539) (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (h!71166 (exprs!6065 (h!71167 zl!343)))) (exprs!6065 lt!2349549)))))

(assert (=> bm!527931 d!1963234))

(declare-fun b!6257585 () Bool)

(declare-fun res!2582434 () Bool)

(declare-fun e!3806650 () Bool)

(assert (=> b!6257585 (=> res!2582434 e!3806650)))

(assert (=> b!6257585 (= res!2582434 (not ((_ is ElementMatch!16181) (regTwo!32874 r!7292))))))

(declare-fun e!3806648 () Bool)

(assert (=> b!6257585 (= e!3806648 e!3806650)))

(declare-fun b!6257586 () Bool)

(declare-fun res!2582436 () Bool)

(assert (=> b!6257586 (=> res!2582436 e!3806650)))

(declare-fun e!3806654 () Bool)

(assert (=> b!6257586 (= res!2582436 e!3806654)))

(declare-fun res!2582432 () Bool)

(assert (=> b!6257586 (=> (not res!2582432) (not e!3806654))))

(declare-fun lt!2349798 () Bool)

(assert (=> b!6257586 (= res!2582432 lt!2349798)))

(declare-fun b!6257587 () Bool)

(declare-fun e!3806649 () Bool)

(assert (=> b!6257587 (= e!3806649 e!3806648)))

(declare-fun c!1132968 () Bool)

(assert (=> b!6257587 (= c!1132968 ((_ is EmptyLang!16181) (regTwo!32874 r!7292)))))

(declare-fun b!6257588 () Bool)

(declare-fun e!3806653 () Bool)

(assert (=> b!6257588 (= e!3806650 e!3806653)))

(declare-fun res!2582430 () Bool)

(assert (=> b!6257588 (=> (not res!2582430) (not e!3806653))))

(assert (=> b!6257588 (= res!2582430 (not lt!2349798))))

(declare-fun b!6257589 () Bool)

(assert (=> b!6257589 (= e!3806648 (not lt!2349798))))

(declare-fun b!6257590 () Bool)

(declare-fun res!2582431 () Bool)

(assert (=> b!6257590 (=> (not res!2582431) (not e!3806654))))

(declare-fun call!528203 () Bool)

(assert (=> b!6257590 (= res!2582431 (not call!528203))))

(declare-fun d!1963236 () Bool)

(assert (=> d!1963236 e!3806649))

(declare-fun c!1132966 () Bool)

(assert (=> d!1963236 (= c!1132966 ((_ is EmptyExpr!16181) (regTwo!32874 r!7292)))))

(declare-fun e!3806652 () Bool)

(assert (=> d!1963236 (= lt!2349798 e!3806652)))

(declare-fun c!1132967 () Bool)

(assert (=> d!1963236 (= c!1132967 (isEmpty!36746 (_2!36463 (get!22361 lt!2349657))))))

(assert (=> d!1963236 (validRegex!7917 (regTwo!32874 r!7292))))

(assert (=> d!1963236 (= (matchR!8364 (regTwo!32874 r!7292) (_2!36463 (get!22361 lt!2349657))) lt!2349798)))

(declare-fun bm!528198 () Bool)

(assert (=> bm!528198 (= call!528203 (isEmpty!36746 (_2!36463 (get!22361 lt!2349657))))))

(declare-fun b!6257591 () Bool)

(declare-fun e!3806651 () Bool)

(assert (=> b!6257591 (= e!3806651 (not (= (head!12862 (_2!36463 (get!22361 lt!2349657))) (c!1132364 (regTwo!32874 r!7292)))))))

(declare-fun b!6257592 () Bool)

(assert (=> b!6257592 (= e!3806654 (= (head!12862 (_2!36463 (get!22361 lt!2349657))) (c!1132364 (regTwo!32874 r!7292))))))

(declare-fun b!6257593 () Bool)

(assert (=> b!6257593 (= e!3806652 (nullable!6174 (regTwo!32874 r!7292)))))

(declare-fun b!6257594 () Bool)

(assert (=> b!6257594 (= e!3806653 e!3806651)))

(declare-fun res!2582437 () Bool)

(assert (=> b!6257594 (=> res!2582437 e!3806651)))

(assert (=> b!6257594 (= res!2582437 call!528203)))

(declare-fun b!6257595 () Bool)

(assert (=> b!6257595 (= e!3806652 (matchR!8364 (derivativeStep!4890 (regTwo!32874 r!7292) (head!12862 (_2!36463 (get!22361 lt!2349657)))) (tail!11947 (_2!36463 (get!22361 lt!2349657)))))))

(declare-fun b!6257596 () Bool)

(declare-fun res!2582433 () Bool)

(assert (=> b!6257596 (=> res!2582433 e!3806651)))

(assert (=> b!6257596 (= res!2582433 (not (isEmpty!36746 (tail!11947 (_2!36463 (get!22361 lt!2349657))))))))

(declare-fun b!6257597 () Bool)

(declare-fun res!2582435 () Bool)

(assert (=> b!6257597 (=> (not res!2582435) (not e!3806654))))

(assert (=> b!6257597 (= res!2582435 (isEmpty!36746 (tail!11947 (_2!36463 (get!22361 lt!2349657)))))))

(declare-fun b!6257598 () Bool)

(assert (=> b!6257598 (= e!3806649 (= lt!2349798 call!528203))))

(assert (= (and d!1963236 c!1132967) b!6257593))

(assert (= (and d!1963236 (not c!1132967)) b!6257595))

(assert (= (and d!1963236 c!1132966) b!6257598))

(assert (= (and d!1963236 (not c!1132966)) b!6257587))

(assert (= (and b!6257587 c!1132968) b!6257589))

(assert (= (and b!6257587 (not c!1132968)) b!6257585))

(assert (= (and b!6257585 (not res!2582434)) b!6257586))

(assert (= (and b!6257586 res!2582432) b!6257590))

(assert (= (and b!6257590 res!2582431) b!6257597))

(assert (= (and b!6257597 res!2582435) b!6257592))

(assert (= (and b!6257586 (not res!2582436)) b!6257588))

(assert (= (and b!6257588 res!2582430) b!6257594))

(assert (= (and b!6257594 (not res!2582437)) b!6257596))

(assert (= (and b!6257596 (not res!2582433)) b!6257591))

(assert (= (or b!6257598 b!6257594 b!6257590) bm!528198))

(declare-fun m!7080420 () Bool)

(assert (=> b!6257596 m!7080420))

(assert (=> b!6257596 m!7080420))

(declare-fun m!7080422 () Bool)

(assert (=> b!6257596 m!7080422))

(declare-fun m!7080424 () Bool)

(assert (=> bm!528198 m!7080424))

(declare-fun m!7080426 () Bool)

(assert (=> b!6257591 m!7080426))

(assert (=> b!6257595 m!7080426))

(assert (=> b!6257595 m!7080426))

(declare-fun m!7080428 () Bool)

(assert (=> b!6257595 m!7080428))

(assert (=> b!6257595 m!7080420))

(assert (=> b!6257595 m!7080428))

(assert (=> b!6257595 m!7080420))

(declare-fun m!7080430 () Bool)

(assert (=> b!6257595 m!7080430))

(assert (=> b!6257592 m!7080426))

(assert (=> b!6257593 m!7080406))

(assert (=> d!1963236 m!7080424))

(assert (=> d!1963236 m!7080408))

(assert (=> b!6257597 m!7080420))

(assert (=> b!6257597 m!7080420))

(assert (=> b!6257597 m!7080422))

(assert (=> b!6256173 d!1963236))

(assert (=> b!6256173 d!1963056))

(declare-fun d!1963238 () Bool)

(assert (=> d!1963238 (= (isEmpty!36742 (t!378392 lt!2349529)) ((_ is Nil!64718) (t!378392 lt!2349529)))))

(assert (=> b!6256354 d!1963238))

(assert (=> b!6256295 d!1963036))

(declare-fun bm!528199 () Bool)

(declare-fun call!528204 () (InoxSet Context!11130))

(assert (=> bm!528199 (= call!528204 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349549))))) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349549)))))) (h!71168 s!2326)))))

(declare-fun d!1963240 () Bool)

(declare-fun c!1132970 () Bool)

(declare-fun e!3806656 () Bool)

(assert (=> d!1963240 (= c!1132970 e!3806656)))

(declare-fun res!2582438 () Bool)

(assert (=> d!1963240 (=> (not res!2582438) (not e!3806656))))

(assert (=> d!1963240 (= res!2582438 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349549))))))))

(declare-fun e!3806655 () (InoxSet Context!11130))

(assert (=> d!1963240 (= (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 lt!2349549))) (h!71168 s!2326)) e!3806655)))

(declare-fun b!6257599 () Bool)

(assert (=> b!6257599 (= e!3806656 (nullable!6174 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349549)))))))))

(declare-fun b!6257600 () Bool)

(assert (=> b!6257600 (= e!3806655 ((_ map or) call!528204 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349549)))))) (h!71168 s!2326))))))

(declare-fun b!6257601 () Bool)

(declare-fun e!3806657 () (InoxSet Context!11130))

(assert (=> b!6257601 (= e!3806655 e!3806657)))

(declare-fun c!1132969 () Bool)

(assert (=> b!6257601 (= c!1132969 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349549))))))))

(declare-fun b!6257602 () Bool)

(assert (=> b!6257602 (= e!3806657 call!528204)))

(declare-fun b!6257603 () Bool)

(assert (=> b!6257603 (= e!3806657 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1963240 res!2582438) b!6257599))

(assert (= (and d!1963240 c!1132970) b!6257600))

(assert (= (and d!1963240 (not c!1132970)) b!6257601))

(assert (= (and b!6257601 c!1132969) b!6257602))

(assert (= (and b!6257601 (not c!1132969)) b!6257603))

(assert (= (or b!6257600 b!6257602) bm!528199))

(declare-fun m!7080432 () Bool)

(assert (=> bm!528199 m!7080432))

(declare-fun m!7080434 () Bool)

(assert (=> b!6257599 m!7080434))

(declare-fun m!7080436 () Bool)

(assert (=> b!6257600 m!7080436))

(assert (=> b!6256109 d!1963240))

(assert (=> bm!527951 d!1963082))

(declare-fun d!1963242 () Bool)

(declare-fun res!2582439 () Bool)

(declare-fun e!3806658 () Bool)

(assert (=> d!1963242 (=> res!2582439 e!3806658)))

(assert (=> d!1963242 (= res!2582439 ((_ is Nil!64719) (t!378393 zl!343)))))

(assert (=> d!1963242 (= (forall!15301 (t!378393 zl!343) lambda!342406) e!3806658)))

(declare-fun b!6257604 () Bool)

(declare-fun e!3806659 () Bool)

(assert (=> b!6257604 (= e!3806658 e!3806659)))

(declare-fun res!2582440 () Bool)

(assert (=> b!6257604 (=> (not res!2582440) (not e!3806659))))

(assert (=> b!6257604 (= res!2582440 (dynLambda!25572 lambda!342406 (h!71167 (t!378393 zl!343))))))

(declare-fun b!6257605 () Bool)

(assert (=> b!6257605 (= e!3806659 (forall!15301 (t!378393 (t!378393 zl!343)) lambda!342406))))

(assert (= (and d!1963242 (not res!2582439)) b!6257604))

(assert (= (and b!6257604 res!2582440) b!6257605))

(declare-fun b_lambda!238143 () Bool)

(assert (=> (not b_lambda!238143) (not b!6257604)))

(declare-fun m!7080438 () Bool)

(assert (=> b!6257604 m!7080438))

(declare-fun m!7080440 () Bool)

(assert (=> b!6257605 m!7080440))

(assert (=> b!6256375 d!1963242))

(declare-fun bs!1558664 () Bool)

(declare-fun d!1963244 () Bool)

(assert (= bs!1558664 (and d!1963244 b!6256372)))

(declare-fun lambda!342500 () Int)

(assert (=> bs!1558664 (not (= lambda!342500 lambda!342404))))

(declare-fun bs!1558665 () Bool)

(assert (= bs!1558665 (and d!1963244 d!1963208)))

(assert (=> bs!1558665 (not (= lambda!342500 lambda!342492))))

(declare-fun bs!1558666 () Bool)

(assert (= bs!1558666 (and d!1963244 d!1963128)))

(assert (=> bs!1558666 (not (= lambda!342500 lambda!342480))))

(declare-fun bs!1558667 () Bool)

(assert (= bs!1558667 (and d!1963244 d!1963080)))

(assert (=> bs!1558667 (not (= lambda!342500 lambda!342476))))

(declare-fun bs!1558668 () Bool)

(assert (= bs!1558668 (and d!1963244 b!6256377)))

(assert (=> bs!1558668 (not (= lambda!342500 lambda!342407))))

(declare-fun bs!1558669 () Bool)

(assert (= bs!1558669 (and d!1963244 d!1963158)))

(assert (=> bs!1558669 (not (= lambda!342500 lambda!342483))))

(declare-fun bs!1558670 () Bool)

(assert (= bs!1558670 (and d!1963244 d!1963120)))

(assert (=> bs!1558670 (not (= lambda!342500 lambda!342478))))

(declare-fun bs!1558671 () Bool)

(assert (= bs!1558671 (and d!1963244 d!1963042)))

(assert (=> bs!1558671 (not (= lambda!342500 lambda!342471))))

(declare-fun bs!1558672 () Bool)

(assert (= bs!1558672 (and d!1963244 d!1963218)))

(assert (=> bs!1558672 (not (= lambda!342500 lambda!342496))))

(declare-fun bs!1558673 () Bool)

(assert (= bs!1558673 (and d!1963244 b!6256375)))

(assert (=> bs!1558673 (not (= lambda!342500 lambda!342406))))

(declare-fun bs!1558674 () Bool)

(assert (= bs!1558674 (and d!1963244 b!6256370)))

(assert (=> bs!1558674 (not (= lambda!342500 lambda!342403))))

(assert (=> d!1963244 true))

(assert (=> d!1963244 true))

(declare-fun order!27435 () Int)

(declare-fun order!27433 () Int)

(declare-fun dynLambda!25573 (Int Int) Int)

(declare-fun dynLambda!25574 (Int Int) Int)

(assert (=> d!1963244 (< (dynLambda!25573 order!27433 lambda!342405) (dynLambda!25574 order!27435 lambda!342500))))

(assert (=> d!1963244 (forall!15301 (t!378393 zl!343) lambda!342500)))

(declare-fun lt!2349801 () Unit!158055)

(declare-fun choose!46437 (List!64843 Int Int Int) Unit!158055)

(assert (=> d!1963244 (= lt!2349801 (choose!46437 (t!378393 zl!343) lt!2349704 (zipperDepth!306 (t!378393 zl!343)) lambda!342405))))

(assert (=> d!1963244 (>= lt!2349704 (zipperDepth!306 (t!378393 zl!343)))))

(assert (=> d!1963244 (= (lemmaForallContextDepthBiggerThanTransitive!183 (t!378393 zl!343) lt!2349704 (zipperDepth!306 (t!378393 zl!343)) lambda!342405) lt!2349801)))

(declare-fun bs!1558675 () Bool)

(assert (= bs!1558675 d!1963244))

(declare-fun m!7080442 () Bool)

(assert (=> bs!1558675 m!7080442))

(assert (=> bs!1558675 m!7079214))

(declare-fun m!7080444 () Bool)

(assert (=> bs!1558675 m!7080444))

(assert (=> b!6256375 d!1963244))

(declare-fun bs!1558676 () Bool)

(declare-fun b!6257615 () Bool)

(assert (= bs!1558676 (and b!6257615 d!1963224)))

(declare-fun lambda!342505 () Int)

(assert (=> bs!1558676 (not (= lambda!342505 lambda!342497))))

(declare-fun bs!1558677 () Bool)

(assert (= bs!1558677 (and b!6257615 d!1962616)))

(assert (=> bs!1558677 (not (= lambda!342505 lambda!342393))))

(declare-fun bs!1558678 () Bool)

(assert (= bs!1558678 (and b!6257615 d!1963190)))

(assert (=> bs!1558678 (not (= lambda!342505 lambda!342485))))

(declare-fun bs!1558679 () Bool)

(assert (= bs!1558679 (and b!6257615 d!1963044)))

(assert (=> bs!1558679 (not (= lambda!342505 lambda!342472))))

(declare-fun bs!1558680 () Bool)

(assert (= bs!1558680 (and b!6257615 d!1962580)))

(assert (=> bs!1558680 (not (= lambda!342505 lambda!342374))))

(declare-fun bs!1558681 () Bool)

(assert (= bs!1558681 (and b!6257615 d!1962624)))

(assert (=> bs!1558681 (not (= lambda!342505 lambda!342394))))

(declare-fun bs!1558682 () Bool)

(assert (= bs!1558682 (and b!6257615 d!1963152)))

(assert (=> bs!1558682 (not (= lambda!342505 lambda!342482))))

(declare-fun bs!1558683 () Bool)

(assert (= bs!1558683 (and b!6257615 d!1962578)))

(assert (=> bs!1558683 (not (= lambda!342505 lambda!342371))))

(declare-fun bs!1558684 () Bool)

(assert (= bs!1558684 (and b!6257615 d!1962628)))

(assert (=> bs!1558684 (not (= lambda!342505 lambda!342395))))

(declare-fun bs!1558685 () Bool)

(assert (= bs!1558685 (and b!6257615 d!1962486)))

(assert (=> bs!1558685 (not (= lambda!342505 lambda!342355))))

(declare-fun bs!1558686 () Bool)

(assert (= bs!1558686 (and b!6257615 d!1962576)))

(assert (=> bs!1558686 (not (= lambda!342505 lambda!342368))))

(assert (=> b!6257615 true))

(declare-fun bs!1558687 () Bool)

(declare-fun b!6257617 () Bool)

(assert (= bs!1558687 (and b!6257617 d!1963224)))

(declare-fun lambda!342506 () Int)

(assert (=> bs!1558687 (not (= lambda!342506 lambda!342497))))

(declare-fun bs!1558688 () Bool)

(assert (= bs!1558688 (and b!6257617 d!1962616)))

(assert (=> bs!1558688 (not (= lambda!342506 lambda!342393))))

(declare-fun bs!1558689 () Bool)

(assert (= bs!1558689 (and b!6257617 d!1963190)))

(assert (=> bs!1558689 (not (= lambda!342506 lambda!342485))))

(declare-fun bs!1558690 () Bool)

(assert (= bs!1558690 (and b!6257617 d!1963044)))

(assert (=> bs!1558690 (not (= lambda!342506 lambda!342472))))

(declare-fun bs!1558691 () Bool)

(assert (= bs!1558691 (and b!6257617 d!1962580)))

(assert (=> bs!1558691 (not (= lambda!342506 lambda!342374))))

(declare-fun bs!1558692 () Bool)

(assert (= bs!1558692 (and b!6257617 d!1962624)))

(assert (=> bs!1558692 (not (= lambda!342506 lambda!342394))))

(declare-fun bs!1558693 () Bool)

(assert (= bs!1558693 (and b!6257617 d!1963152)))

(assert (=> bs!1558693 (not (= lambda!342506 lambda!342482))))

(declare-fun bs!1558694 () Bool)

(assert (= bs!1558694 (and b!6257617 d!1962578)))

(assert (=> bs!1558694 (not (= lambda!342506 lambda!342371))))

(declare-fun bs!1558695 () Bool)

(assert (= bs!1558695 (and b!6257617 b!6257615)))

(declare-fun lt!2349812 () Int)

(declare-fun lt!2349811 () Int)

(assert (=> bs!1558695 (= (= lt!2349812 lt!2349811) (= lambda!342506 lambda!342505))))

(declare-fun bs!1558696 () Bool)

(assert (= bs!1558696 (and b!6257617 d!1962628)))

(assert (=> bs!1558696 (not (= lambda!342506 lambda!342395))))

(declare-fun bs!1558697 () Bool)

(assert (= bs!1558697 (and b!6257617 d!1962486)))

(assert (=> bs!1558697 (not (= lambda!342506 lambda!342355))))

(declare-fun bs!1558698 () Bool)

(assert (= bs!1558698 (and b!6257617 d!1962576)))

(assert (=> bs!1558698 (not (= lambda!342506 lambda!342368))))

(assert (=> b!6257617 true))

(declare-fun d!1963246 () Bool)

(declare-fun e!3806665 () Bool)

(assert (=> d!1963246 e!3806665))

(declare-fun res!2582443 () Bool)

(assert (=> d!1963246 (=> (not res!2582443) (not e!3806665))))

(assert (=> d!1963246 (= res!2582443 (>= lt!2349812 0))))

(declare-fun e!3806664 () Int)

(assert (=> d!1963246 (= lt!2349812 e!3806664)))

(declare-fun c!1132976 () Bool)

(assert (=> d!1963246 (= c!1132976 ((_ is Cons!64718) (exprs!6065 (h!71167 zl!343))))))

(assert (=> d!1963246 (= (contextDepth!199 (h!71167 zl!343)) lt!2349812)))

(assert (=> b!6257615 (= e!3806664 lt!2349811)))

(declare-fun regexDepth!304 (Regex!16181) Int)

(assert (=> b!6257615 (= lt!2349811 (maxBigInt!0 (regexDepth!304 (h!71166 (exprs!6065 (h!71167 zl!343)))) (contextDepth!199 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun lt!2349810 () Unit!158055)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!94 (List!64842 Int Int) Unit!158055)

(assert (=> b!6257615 (= lt!2349810 (lemmaForallRegexDepthBiggerThanTransitive!94 (t!378392 (exprs!6065 (h!71167 zl!343))) lt!2349811 (contextDepth!199 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(assert (=> b!6257615 (forall!15300 (t!378392 (exprs!6065 (h!71167 zl!343))) lambda!342505)))

(declare-fun lt!2349813 () Unit!158055)

(assert (=> b!6257615 (= lt!2349813 lt!2349810)))

(declare-fun b!6257616 () Bool)

(assert (=> b!6257616 (= e!3806664 0)))

(assert (=> b!6257617 (= e!3806665 (forall!15300 (exprs!6065 (h!71167 zl!343)) lambda!342506))))

(assert (= (and d!1963246 c!1132976) b!6257615))

(assert (= (and d!1963246 (not c!1132976)) b!6257616))

(assert (= (and d!1963246 res!2582443) b!6257617))

(declare-fun m!7080446 () Bool)

(assert (=> b!6257615 m!7080446))

(assert (=> b!6257615 m!7080446))

(declare-fun m!7080448 () Bool)

(assert (=> b!6257615 m!7080448))

(declare-fun m!7080450 () Bool)

(assert (=> b!6257615 m!7080450))

(assert (=> b!6257615 m!7080448))

(declare-fun m!7080452 () Bool)

(assert (=> b!6257615 m!7080452))

(assert (=> b!6257615 m!7080448))

(declare-fun m!7080454 () Bool)

(assert (=> b!6257615 m!7080454))

(declare-fun m!7080456 () Bool)

(assert (=> b!6257617 m!7080456))

(assert (=> b!6256375 d!1963246))

(declare-fun bs!1558699 () Bool)

(declare-fun b!6257620 () Bool)

(assert (= bs!1558699 (and b!6257620 b!6256370)))

(declare-fun lambda!342507 () Int)

(assert (=> bs!1558699 (= lambda!342507 lambda!342402)))

(declare-fun bs!1558700 () Bool)

(assert (= bs!1558700 (and b!6257620 b!6256375)))

(assert (=> bs!1558700 (= lambda!342507 lambda!342405)))

(declare-fun bs!1558701 () Bool)

(assert (= bs!1558701 (and b!6257620 b!6256372)))

(declare-fun lt!2349817 () Int)

(declare-fun lambda!342508 () Int)

(assert (=> bs!1558701 (= (= lt!2349817 lt!2349699) (= lambda!342508 lambda!342404))))

(declare-fun bs!1558702 () Bool)

(assert (= bs!1558702 (and b!6257620 d!1963208)))

(assert (=> bs!1558702 (not (= lambda!342508 lambda!342492))))

(declare-fun bs!1558703 () Bool)

(assert (= bs!1558703 (and b!6257620 d!1963244)))

(assert (=> bs!1558703 (not (= lambda!342508 lambda!342500))))

(declare-fun bs!1558704 () Bool)

(assert (= bs!1558704 (and b!6257620 d!1963128)))

(assert (=> bs!1558704 (not (= lambda!342508 lambda!342480))))

(declare-fun bs!1558705 () Bool)

(assert (= bs!1558705 (and b!6257620 d!1963080)))

(assert (=> bs!1558705 (not (= lambda!342508 lambda!342476))))

(declare-fun bs!1558706 () Bool)

(assert (= bs!1558706 (and b!6257620 b!6256377)))

(assert (=> bs!1558706 (= (= lt!2349817 lt!2349703) (= lambda!342508 lambda!342407))))

(declare-fun bs!1558707 () Bool)

(assert (= bs!1558707 (and b!6257620 d!1963158)))

(assert (=> bs!1558707 (not (= lambda!342508 lambda!342483))))

(declare-fun bs!1558708 () Bool)

(assert (= bs!1558708 (and b!6257620 d!1963120)))

(assert (=> bs!1558708 (not (= lambda!342508 lambda!342478))))

(declare-fun bs!1558709 () Bool)

(assert (= bs!1558709 (and b!6257620 d!1963042)))

(assert (=> bs!1558709 (not (= lambda!342508 lambda!342471))))

(declare-fun bs!1558710 () Bool)

(assert (= bs!1558710 (and b!6257620 d!1963218)))

(assert (=> bs!1558710 (not (= lambda!342508 lambda!342496))))

(assert (=> bs!1558700 (= (= lt!2349817 lt!2349704) (= lambda!342508 lambda!342406))))

(assert (=> bs!1558699 (= (= lt!2349817 lt!2349700) (= lambda!342508 lambda!342403))))

(assert (=> b!6257620 true))

(declare-fun bs!1558711 () Bool)

(declare-fun b!6257622 () Bool)

(assert (= bs!1558711 (and b!6257622 b!6256372)))

(declare-fun lt!2349816 () Int)

(declare-fun lambda!342509 () Int)

(assert (=> bs!1558711 (= (= lt!2349816 lt!2349699) (= lambda!342509 lambda!342404))))

(declare-fun bs!1558712 () Bool)

(assert (= bs!1558712 (and b!6257622 d!1963208)))

(assert (=> bs!1558712 (not (= lambda!342509 lambda!342492))))

(declare-fun bs!1558713 () Bool)

(assert (= bs!1558713 (and b!6257622 d!1963244)))

(assert (=> bs!1558713 (not (= lambda!342509 lambda!342500))))

(declare-fun bs!1558714 () Bool)

(assert (= bs!1558714 (and b!6257622 d!1963128)))

(assert (=> bs!1558714 (not (= lambda!342509 lambda!342480))))

(declare-fun bs!1558715 () Bool)

(assert (= bs!1558715 (and b!6257622 d!1963080)))

(assert (=> bs!1558715 (not (= lambda!342509 lambda!342476))))

(declare-fun bs!1558716 () Bool)

(assert (= bs!1558716 (and b!6257622 b!6256377)))

(assert (=> bs!1558716 (= (= lt!2349816 lt!2349703) (= lambda!342509 lambda!342407))))

(declare-fun bs!1558717 () Bool)

(assert (= bs!1558717 (and b!6257622 d!1963158)))

(assert (=> bs!1558717 (not (= lambda!342509 lambda!342483))))

(declare-fun bs!1558718 () Bool)

(assert (= bs!1558718 (and b!6257622 d!1963120)))

(assert (=> bs!1558718 (not (= lambda!342509 lambda!342478))))

(declare-fun bs!1558719 () Bool)

(assert (= bs!1558719 (and b!6257622 d!1963042)))

(assert (=> bs!1558719 (not (= lambda!342509 lambda!342471))))

(declare-fun bs!1558720 () Bool)

(assert (= bs!1558720 (and b!6257622 d!1963218)))

(assert (=> bs!1558720 (not (= lambda!342509 lambda!342496))))

(declare-fun bs!1558721 () Bool)

(assert (= bs!1558721 (and b!6257622 b!6257620)))

(assert (=> bs!1558721 (= (= lt!2349816 lt!2349817) (= lambda!342509 lambda!342508))))

(declare-fun bs!1558722 () Bool)

(assert (= bs!1558722 (and b!6257622 b!6256375)))

(assert (=> bs!1558722 (= (= lt!2349816 lt!2349704) (= lambda!342509 lambda!342406))))

(declare-fun bs!1558723 () Bool)

(assert (= bs!1558723 (and b!6257622 b!6256370)))

(assert (=> bs!1558723 (= (= lt!2349816 lt!2349700) (= lambda!342509 lambda!342403))))

(assert (=> b!6257622 true))

(declare-fun d!1963248 () Bool)

(declare-fun e!3806666 () Bool)

(assert (=> d!1963248 e!3806666))

(declare-fun res!2582444 () Bool)

(assert (=> d!1963248 (=> (not res!2582444) (not e!3806666))))

(assert (=> d!1963248 (= res!2582444 (>= lt!2349816 0))))

(declare-fun e!3806667 () Int)

(assert (=> d!1963248 (= lt!2349816 e!3806667)))

(declare-fun c!1132977 () Bool)

(assert (=> d!1963248 (= c!1132977 ((_ is Cons!64719) (t!378393 zl!343)))))

(assert (=> d!1963248 (= (zipperDepth!306 (t!378393 zl!343)) lt!2349816)))

(assert (=> b!6257620 (= e!3806667 lt!2349817)))

(assert (=> b!6257620 (= lt!2349817 (maxBigInt!0 (contextDepth!199 (h!71167 (t!378393 zl!343))) (zipperDepth!306 (t!378393 (t!378393 zl!343)))))))

(declare-fun lt!2349814 () Unit!158055)

(assert (=> b!6257620 (= lt!2349814 (lemmaForallContextDepthBiggerThanTransitive!183 (t!378393 (t!378393 zl!343)) lt!2349817 (zipperDepth!306 (t!378393 (t!378393 zl!343))) lambda!342507))))

(assert (=> b!6257620 (forall!15301 (t!378393 (t!378393 zl!343)) lambda!342508)))

(declare-fun lt!2349815 () Unit!158055)

(assert (=> b!6257620 (= lt!2349815 lt!2349814)))

(declare-fun b!6257621 () Bool)

(assert (=> b!6257621 (= e!3806667 0)))

(assert (=> b!6257622 (= e!3806666 (forall!15301 (t!378393 zl!343) lambda!342509))))

(assert (= (and d!1963248 c!1132977) b!6257620))

(assert (= (and d!1963248 (not c!1132977)) b!6257621))

(assert (= (and d!1963248 res!2582444) b!6257622))

(declare-fun m!7080458 () Bool)

(assert (=> b!6257620 m!7080458))

(declare-fun m!7080460 () Bool)

(assert (=> b!6257620 m!7080460))

(declare-fun m!7080462 () Bool)

(assert (=> b!6257620 m!7080462))

(declare-fun m!7080464 () Bool)

(assert (=> b!6257620 m!7080464))

(assert (=> b!6257620 m!7080460))

(assert (=> b!6257620 m!7080460))

(declare-fun m!7080466 () Bool)

(assert (=> b!6257620 m!7080466))

(assert (=> b!6257620 m!7080458))

(declare-fun m!7080468 () Bool)

(assert (=> b!6257622 m!7080468))

(assert (=> b!6256375 d!1963248))

(declare-fun d!1963250 () Bool)

(assert (=> d!1963250 (= (maxBigInt!0 (contextDepth!199 (h!71167 zl!343)) (zipperDepth!306 (t!378393 zl!343))) (ite (>= (contextDepth!199 (h!71167 zl!343)) (zipperDepth!306 (t!378393 zl!343))) (contextDepth!199 (h!71167 zl!343)) (zipperDepth!306 (t!378393 zl!343))))))

(assert (=> b!6256375 d!1963250))

(assert (=> d!1962558 d!1963062))

(declare-fun bm!528200 () Bool)

(declare-fun c!1132979 () Bool)

(declare-fun call!528207 () Bool)

(declare-fun c!1132978 () Bool)

(assert (=> bm!528200 (= call!528207 (validRegex!7917 (ite c!1132979 (reg!16510 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))) (ite c!1132978 (regOne!32875 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))) (regOne!32874 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292)))))))))

(declare-fun b!6257624 () Bool)

(declare-fun e!3806671 () Bool)

(declare-fun call!528206 () Bool)

(assert (=> b!6257624 (= e!3806671 call!528206)))

(declare-fun bm!528201 () Bool)

(declare-fun call!528205 () Bool)

(assert (=> bm!528201 (= call!528205 call!528207)))

(declare-fun b!6257625 () Bool)

(declare-fun e!3806670 () Bool)

(declare-fun e!3806673 () Bool)

(assert (=> b!6257625 (= e!3806670 e!3806673)))

(declare-fun res!2582447 () Bool)

(assert (=> b!6257625 (= res!2582447 (not (nullable!6174 (reg!16510 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))))))))

(assert (=> b!6257625 (=> (not res!2582447) (not e!3806673))))

(declare-fun b!6257626 () Bool)

(declare-fun e!3806674 () Bool)

(assert (=> b!6257626 (= e!3806670 e!3806674)))

(assert (=> b!6257626 (= c!1132978 ((_ is Union!16181) (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))))))

(declare-fun b!6257627 () Bool)

(declare-fun e!3806669 () Bool)

(declare-fun e!3806672 () Bool)

(assert (=> b!6257627 (= e!3806669 e!3806672)))

(declare-fun res!2582448 () Bool)

(assert (=> b!6257627 (=> (not res!2582448) (not e!3806672))))

(assert (=> b!6257627 (= res!2582448 call!528205)))

(declare-fun d!1963252 () Bool)

(declare-fun res!2582446 () Bool)

(declare-fun e!3806668 () Bool)

(assert (=> d!1963252 (=> res!2582446 e!3806668)))

(assert (=> d!1963252 (= res!2582446 ((_ is ElementMatch!16181) (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))))))

(assert (=> d!1963252 (= (validRegex!7917 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))) e!3806668)))

(declare-fun b!6257628 () Bool)

(assert (=> b!6257628 (= e!3806673 call!528207)))

(declare-fun b!6257629 () Bool)

(assert (=> b!6257629 (= e!3806672 call!528206)))

(declare-fun b!6257630 () Bool)

(declare-fun res!2582449 () Bool)

(assert (=> b!6257630 (=> res!2582449 e!3806669)))

(assert (=> b!6257630 (= res!2582449 (not ((_ is Concat!25026) (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292)))))))

(assert (=> b!6257630 (= e!3806674 e!3806669)))

(declare-fun b!6257631 () Bool)

(declare-fun res!2582445 () Bool)

(assert (=> b!6257631 (=> (not res!2582445) (not e!3806671))))

(assert (=> b!6257631 (= res!2582445 call!528205)))

(assert (=> b!6257631 (= e!3806674 e!3806671)))

(declare-fun bm!528202 () Bool)

(assert (=> bm!528202 (= call!528206 (validRegex!7917 (ite c!1132978 (regTwo!32875 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))) (regTwo!32874 (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))))))))

(declare-fun b!6257632 () Bool)

(assert (=> b!6257632 (= e!3806668 e!3806670)))

(assert (=> b!6257632 (= c!1132979 ((_ is Star!16181) (ite c!1132639 (regTwo!32875 r!7292) (regTwo!32874 r!7292))))))

(assert (= (and d!1963252 (not res!2582446)) b!6257632))

(assert (= (and b!6257632 c!1132979) b!6257625))

(assert (= (and b!6257632 (not c!1132979)) b!6257626))

(assert (= (and b!6257625 res!2582447) b!6257628))

(assert (= (and b!6257626 c!1132978) b!6257631))

(assert (= (and b!6257626 (not c!1132978)) b!6257630))

(assert (= (and b!6257631 res!2582445) b!6257624))

(assert (= (and b!6257630 (not res!2582449)) b!6257627))

(assert (= (and b!6257627 res!2582448) b!6257629))

(assert (= (or b!6257624 b!6257629) bm!528202))

(assert (= (or b!6257631 b!6257627) bm!528201))

(assert (= (or b!6257628 bm!528201) bm!528200))

(declare-fun m!7080470 () Bool)

(assert (=> bm!528200 m!7080470))

(declare-fun m!7080472 () Bool)

(assert (=> b!6257625 m!7080472))

(declare-fun m!7080474 () Bool)

(assert (=> bm!528202 m!7080474))

(assert (=> bm!527965 d!1963252))

(declare-fun d!1963254 () Bool)

(assert (=> d!1963254 (= (nullable!6174 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))) (nullableFct!2126 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292)))))))

(declare-fun bs!1558724 () Bool)

(assert (= bs!1558724 d!1963254))

(declare-fun m!7080476 () Bool)

(assert (=> bs!1558724 m!7080476))

(assert (=> b!6256201 d!1963254))

(assert (=> d!1962622 d!1963082))

(assert (=> d!1962622 d!1963110))

(declare-fun d!1963256 () Bool)

(assert (=> d!1963256 (= (isEmpty!36742 lt!2349529) ((_ is Nil!64718) lt!2349529))))

(assert (=> b!6256358 d!1963256))

(declare-fun b!6257633 () Bool)

(declare-fun res!2582454 () Bool)

(declare-fun e!3806677 () Bool)

(assert (=> b!6257633 (=> res!2582454 e!3806677)))

(assert (=> b!6257633 (= res!2582454 (not ((_ is ElementMatch!16181) (derivativeStep!4890 r!7292 (head!12862 s!2326)))))))

(declare-fun e!3806675 () Bool)

(assert (=> b!6257633 (= e!3806675 e!3806677)))

(declare-fun b!6257634 () Bool)

(declare-fun res!2582456 () Bool)

(assert (=> b!6257634 (=> res!2582456 e!3806677)))

(declare-fun e!3806681 () Bool)

(assert (=> b!6257634 (= res!2582456 e!3806681)))

(declare-fun res!2582452 () Bool)

(assert (=> b!6257634 (=> (not res!2582452) (not e!3806681))))

(declare-fun lt!2349818 () Bool)

(assert (=> b!6257634 (= res!2582452 lt!2349818)))

(declare-fun b!6257635 () Bool)

(declare-fun e!3806676 () Bool)

(assert (=> b!6257635 (= e!3806676 e!3806675)))

(declare-fun c!1132982 () Bool)

(assert (=> b!6257635 (= c!1132982 ((_ is EmptyLang!16181) (derivativeStep!4890 r!7292 (head!12862 s!2326))))))

(declare-fun b!6257636 () Bool)

(declare-fun e!3806680 () Bool)

(assert (=> b!6257636 (= e!3806677 e!3806680)))

(declare-fun res!2582450 () Bool)

(assert (=> b!6257636 (=> (not res!2582450) (not e!3806680))))

(assert (=> b!6257636 (= res!2582450 (not lt!2349818))))

(declare-fun b!6257637 () Bool)

(assert (=> b!6257637 (= e!3806675 (not lt!2349818))))

(declare-fun b!6257638 () Bool)

(declare-fun res!2582451 () Bool)

(assert (=> b!6257638 (=> (not res!2582451) (not e!3806681))))

(declare-fun call!528208 () Bool)

(assert (=> b!6257638 (= res!2582451 (not call!528208))))

(declare-fun d!1963258 () Bool)

(assert (=> d!1963258 e!3806676))

(declare-fun c!1132980 () Bool)

(assert (=> d!1963258 (= c!1132980 ((_ is EmptyExpr!16181) (derivativeStep!4890 r!7292 (head!12862 s!2326))))))

(declare-fun e!3806679 () Bool)

(assert (=> d!1963258 (= lt!2349818 e!3806679)))

(declare-fun c!1132981 () Bool)

(assert (=> d!1963258 (= c!1132981 (isEmpty!36746 (tail!11947 s!2326)))))

(assert (=> d!1963258 (validRegex!7917 (derivativeStep!4890 r!7292 (head!12862 s!2326)))))

(assert (=> d!1963258 (= (matchR!8364 (derivativeStep!4890 r!7292 (head!12862 s!2326)) (tail!11947 s!2326)) lt!2349818)))

(declare-fun bm!528203 () Bool)

(assert (=> bm!528203 (= call!528208 (isEmpty!36746 (tail!11947 s!2326)))))

(declare-fun b!6257639 () Bool)

(declare-fun e!3806678 () Bool)

(assert (=> b!6257639 (= e!3806678 (not (= (head!12862 (tail!11947 s!2326)) (c!1132364 (derivativeStep!4890 r!7292 (head!12862 s!2326))))))))

(declare-fun b!6257640 () Bool)

(assert (=> b!6257640 (= e!3806681 (= (head!12862 (tail!11947 s!2326)) (c!1132364 (derivativeStep!4890 r!7292 (head!12862 s!2326)))))))

(declare-fun b!6257641 () Bool)

(assert (=> b!6257641 (= e!3806679 (nullable!6174 (derivativeStep!4890 r!7292 (head!12862 s!2326))))))

(declare-fun b!6257642 () Bool)

(assert (=> b!6257642 (= e!3806680 e!3806678)))

(declare-fun res!2582457 () Bool)

(assert (=> b!6257642 (=> res!2582457 e!3806678)))

(assert (=> b!6257642 (= res!2582457 call!528208)))

(declare-fun b!6257643 () Bool)

(assert (=> b!6257643 (= e!3806679 (matchR!8364 (derivativeStep!4890 (derivativeStep!4890 r!7292 (head!12862 s!2326)) (head!12862 (tail!11947 s!2326))) (tail!11947 (tail!11947 s!2326))))))

(declare-fun b!6257644 () Bool)

(declare-fun res!2582453 () Bool)

(assert (=> b!6257644 (=> res!2582453 e!3806678)))

(assert (=> b!6257644 (= res!2582453 (not (isEmpty!36746 (tail!11947 (tail!11947 s!2326)))))))

(declare-fun b!6257645 () Bool)

(declare-fun res!2582455 () Bool)

(assert (=> b!6257645 (=> (not res!2582455) (not e!3806681))))

(assert (=> b!6257645 (= res!2582455 (isEmpty!36746 (tail!11947 (tail!11947 s!2326))))))

(declare-fun b!6257646 () Bool)

(assert (=> b!6257646 (= e!3806676 (= lt!2349818 call!528208))))

(assert (= (and d!1963258 c!1132981) b!6257641))

(assert (= (and d!1963258 (not c!1132981)) b!6257643))

(assert (= (and d!1963258 c!1132980) b!6257646))

(assert (= (and d!1963258 (not c!1132980)) b!6257635))

(assert (= (and b!6257635 c!1132982) b!6257637))

(assert (= (and b!6257635 (not c!1132982)) b!6257633))

(assert (= (and b!6257633 (not res!2582454)) b!6257634))

(assert (= (and b!6257634 res!2582452) b!6257638))

(assert (= (and b!6257638 res!2582451) b!6257645))

(assert (= (and b!6257645 res!2582455) b!6257640))

(assert (= (and b!6257634 (not res!2582456)) b!6257636))

(assert (= (and b!6257636 res!2582450) b!6257642))

(assert (= (and b!6257642 (not res!2582457)) b!6257644))

(assert (= (and b!6257644 (not res!2582453)) b!6257639))

(assert (= (or b!6257646 b!6257642 b!6257638) bm!528203))

(assert (=> b!6257644 m!7079116))

(assert (=> b!6257644 m!7080016))

(assert (=> b!6257644 m!7080016))

(assert (=> b!6257644 m!7080018))

(assert (=> bm!528203 m!7079116))

(assert (=> bm!528203 m!7079118))

(assert (=> b!6257639 m!7079116))

(assert (=> b!6257639 m!7080020))

(assert (=> b!6257643 m!7079116))

(assert (=> b!6257643 m!7080020))

(assert (=> b!6257643 m!7079122))

(assert (=> b!6257643 m!7080020))

(declare-fun m!7080478 () Bool)

(assert (=> b!6257643 m!7080478))

(assert (=> b!6257643 m!7079116))

(assert (=> b!6257643 m!7080016))

(assert (=> b!6257643 m!7080478))

(assert (=> b!6257643 m!7080016))

(declare-fun m!7080480 () Bool)

(assert (=> b!6257643 m!7080480))

(assert (=> b!6257640 m!7079116))

(assert (=> b!6257640 m!7080020))

(assert (=> b!6257641 m!7079122))

(declare-fun m!7080482 () Bool)

(assert (=> b!6257641 m!7080482))

(assert (=> d!1963258 m!7079116))

(assert (=> d!1963258 m!7079118))

(assert (=> d!1963258 m!7079122))

(declare-fun m!7080484 () Bool)

(assert (=> d!1963258 m!7080484))

(assert (=> b!6257645 m!7079116))

(assert (=> b!6257645 m!7080016))

(assert (=> b!6257645 m!7080016))

(assert (=> b!6257645 m!7080018))

(assert (=> b!6256299 d!1963258))

(declare-fun b!6257647 () Bool)

(declare-fun c!1132986 () Bool)

(assert (=> b!6257647 (= c!1132986 (nullable!6174 (regOne!32874 r!7292)))))

(declare-fun e!3806685 () Regex!16181)

(declare-fun e!3806683 () Regex!16181)

(assert (=> b!6257647 (= e!3806685 e!3806683)))

(declare-fun b!6257648 () Bool)

(declare-fun call!528211 () Regex!16181)

(declare-fun call!528212 () Regex!16181)

(assert (=> b!6257648 (= e!3806683 (Union!16181 (Concat!25026 call!528211 (regTwo!32874 r!7292)) call!528212))))

(declare-fun b!6257649 () Bool)

(assert (=> b!6257649 (= e!3806683 (Union!16181 (Concat!25026 call!528212 (regTwo!32874 r!7292)) EmptyLang!16181))))

(declare-fun bm!528204 () Bool)

(declare-fun call!528210 () Regex!16181)

(declare-fun call!528209 () Regex!16181)

(assert (=> bm!528204 (= call!528210 call!528209)))

(declare-fun d!1963260 () Bool)

(declare-fun lt!2349819 () Regex!16181)

(assert (=> d!1963260 (validRegex!7917 lt!2349819)))

(declare-fun e!3806682 () Regex!16181)

(assert (=> d!1963260 (= lt!2349819 e!3806682)))

(declare-fun c!1132985 () Bool)

(assert (=> d!1963260 (= c!1132985 (or ((_ is EmptyExpr!16181) r!7292) ((_ is EmptyLang!16181) r!7292)))))

(assert (=> d!1963260 (validRegex!7917 r!7292)))

(assert (=> d!1963260 (= (derivativeStep!4890 r!7292 (head!12862 s!2326)) lt!2349819)))

(declare-fun b!6257650 () Bool)

(declare-fun e!3806686 () Regex!16181)

(assert (=> b!6257650 (= e!3806686 e!3806685)))

(declare-fun c!1132984 () Bool)

(assert (=> b!6257650 (= c!1132984 ((_ is Star!16181) r!7292))))

(declare-fun bm!528205 () Bool)

(declare-fun c!1132987 () Bool)

(assert (=> bm!528205 (= call!528209 (derivativeStep!4890 (ite c!1132987 (regTwo!32875 r!7292) (ite c!1132984 (reg!16510 r!7292) (ite c!1132986 (regTwo!32874 r!7292) (regOne!32874 r!7292)))) (head!12862 s!2326)))))

(declare-fun bm!528206 () Bool)

(assert (=> bm!528206 (= call!528212 call!528210)))

(declare-fun b!6257651 () Bool)

(assert (=> b!6257651 (= e!3806682 EmptyLang!16181)))

(declare-fun b!6257652 () Bool)

(assert (=> b!6257652 (= c!1132987 ((_ is Union!16181) r!7292))))

(declare-fun e!3806684 () Regex!16181)

(assert (=> b!6257652 (= e!3806684 e!3806686)))

(declare-fun b!6257653 () Bool)

(assert (=> b!6257653 (= e!3806686 (Union!16181 call!528211 call!528209))))

(declare-fun b!6257654 () Bool)

(assert (=> b!6257654 (= e!3806685 (Concat!25026 call!528210 r!7292))))

(declare-fun b!6257655 () Bool)

(assert (=> b!6257655 (= e!3806682 e!3806684)))

(declare-fun c!1132983 () Bool)

(assert (=> b!6257655 (= c!1132983 ((_ is ElementMatch!16181) r!7292))))

(declare-fun bm!528207 () Bool)

(assert (=> bm!528207 (= call!528211 (derivativeStep!4890 (ite c!1132987 (regOne!32875 r!7292) (regOne!32874 r!7292)) (head!12862 s!2326)))))

(declare-fun b!6257656 () Bool)

(assert (=> b!6257656 (= e!3806684 (ite (= (head!12862 s!2326) (c!1132364 r!7292)) EmptyExpr!16181 EmptyLang!16181))))

(assert (= (and d!1963260 c!1132985) b!6257651))

(assert (= (and d!1963260 (not c!1132985)) b!6257655))

(assert (= (and b!6257655 c!1132983) b!6257656))

(assert (= (and b!6257655 (not c!1132983)) b!6257652))

(assert (= (and b!6257652 c!1132987) b!6257653))

(assert (= (and b!6257652 (not c!1132987)) b!6257650))

(assert (= (and b!6257650 c!1132984) b!6257654))

(assert (= (and b!6257650 (not c!1132984)) b!6257647))

(assert (= (and b!6257647 c!1132986) b!6257648))

(assert (= (and b!6257647 (not c!1132986)) b!6257649))

(assert (= (or b!6257648 b!6257649) bm!528206))

(assert (= (or b!6257654 bm!528206) bm!528204))

(assert (= (or b!6257653 bm!528204) bm!528205))

(assert (= (or b!6257653 b!6257648) bm!528207))

(assert (=> b!6257647 m!7080082))

(declare-fun m!7080486 () Bool)

(assert (=> d!1963260 m!7080486))

(assert (=> d!1963260 m!7078530))

(assert (=> bm!528205 m!7079120))

(declare-fun m!7080488 () Bool)

(assert (=> bm!528205 m!7080488))

(assert (=> bm!528207 m!7079120))

(declare-fun m!7080490 () Bool)

(assert (=> bm!528207 m!7080490))

(assert (=> b!6256299 d!1963260))

(assert (=> b!6256299 d!1963036))

(assert (=> b!6256299 d!1963038))

(declare-fun bs!1558725 () Bool)

(declare-fun d!1963262 () Bool)

(assert (= bs!1558725 (and d!1963262 b!6256372)))

(declare-fun lambda!342510 () Int)

(assert (=> bs!1558725 (not (= lambda!342510 lambda!342404))))

(declare-fun bs!1558726 () Bool)

(assert (= bs!1558726 (and d!1963262 d!1963208)))

(assert (=> bs!1558726 (= lambda!342510 lambda!342492)))

(declare-fun bs!1558727 () Bool)

(assert (= bs!1558727 (and d!1963262 d!1963244)))

(assert (=> bs!1558727 (not (= lambda!342510 lambda!342500))))

(declare-fun bs!1558728 () Bool)

(assert (= bs!1558728 (and d!1963262 d!1963128)))

(assert (=> bs!1558728 (= lambda!342510 lambda!342480)))

(declare-fun bs!1558729 () Bool)

(assert (= bs!1558729 (and d!1963262 b!6257622)))

(assert (=> bs!1558729 (not (= lambda!342510 lambda!342509))))

(declare-fun bs!1558730 () Bool)

(assert (= bs!1558730 (and d!1963262 d!1963080)))

(assert (=> bs!1558730 (= lambda!342510 lambda!342476)))

(declare-fun bs!1558731 () Bool)

(assert (= bs!1558731 (and d!1963262 b!6256377)))

(assert (=> bs!1558731 (not (= lambda!342510 lambda!342407))))

(declare-fun bs!1558732 () Bool)

(assert (= bs!1558732 (and d!1963262 d!1963158)))

(assert (=> bs!1558732 (= lambda!342510 lambda!342483)))

(declare-fun bs!1558733 () Bool)

(assert (= bs!1558733 (and d!1963262 d!1963120)))

(assert (=> bs!1558733 (= lambda!342510 lambda!342478)))

(declare-fun bs!1558734 () Bool)

(assert (= bs!1558734 (and d!1963262 d!1963042)))

(assert (=> bs!1558734 (= lambda!342510 lambda!342471)))

(declare-fun bs!1558735 () Bool)

(assert (= bs!1558735 (and d!1963262 d!1963218)))

(assert (=> bs!1558735 (= lambda!342510 lambda!342496)))

(declare-fun bs!1558736 () Bool)

(assert (= bs!1558736 (and d!1963262 b!6257620)))

(assert (=> bs!1558736 (not (= lambda!342510 lambda!342508))))

(declare-fun bs!1558737 () Bool)

(assert (= bs!1558737 (and d!1963262 b!6256375)))

(assert (=> bs!1558737 (not (= lambda!342510 lambda!342406))))

(declare-fun bs!1558738 () Bool)

(assert (= bs!1558738 (and d!1963262 b!6256370)))

(assert (=> bs!1558738 (not (= lambda!342510 lambda!342403))))

(assert (=> d!1963262 (= (nullableZipper!1951 lt!2349547) (exists!2515 lt!2349547 lambda!342510))))

(declare-fun bs!1558739 () Bool)

(assert (= bs!1558739 d!1963262))

(declare-fun m!7080492 () Bool)

(assert (=> bs!1558739 m!7080492))

(assert (=> b!6256058 d!1963262))

(declare-fun d!1963264 () Bool)

(declare-fun c!1132988 () Bool)

(assert (=> d!1963264 (= c!1132988 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806687 () Bool)

(assert (=> d!1963264 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349534 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806687)))

(declare-fun b!6257657 () Bool)

(assert (=> b!6257657 (= e!3806687 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349534 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257658 () Bool)

(assert (=> b!6257658 (= e!3806687 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349534 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963264 c!1132988) b!6257657))

(assert (= (and d!1963264 (not c!1132988)) b!6257658))

(assert (=> d!1963264 m!7078806))

(assert (=> d!1963264 m!7080100))

(assert (=> b!6257657 m!7078972))

(declare-fun m!7080494 () Bool)

(assert (=> b!6257657 m!7080494))

(assert (=> b!6257658 m!7078806))

(assert (=> b!6257658 m!7080104))

(assert (=> b!6257658 m!7078972))

(assert (=> b!6257658 m!7080104))

(declare-fun m!7080496 () Bool)

(assert (=> b!6257658 m!7080496))

(assert (=> b!6257658 m!7078806))

(assert (=> b!6257658 m!7080108))

(assert (=> b!6257658 m!7080496))

(assert (=> b!6257658 m!7080108))

(declare-fun m!7080498 () Bool)

(assert (=> b!6257658 m!7080498))

(assert (=> b!6256063 d!1963264))

(declare-fun bs!1558740 () Bool)

(declare-fun d!1963266 () Bool)

(assert (= bs!1558740 (and d!1963266 b!6255545)))

(declare-fun lambda!342511 () Int)

(assert (=> bs!1558740 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342511 lambda!342315))))

(declare-fun bs!1558741 () Bool)

(assert (= bs!1558741 (and d!1963266 d!1963216)))

(assert (=> bs!1558741 (= lambda!342511 lambda!342495)))

(declare-fun bs!1558742 () Bool)

(assert (= bs!1558742 (and d!1963266 d!1962614)))

(assert (=> bs!1558742 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342511 lambda!342390))))

(declare-fun bs!1558743 () Bool)

(assert (= bs!1558743 (and d!1963266 d!1963088)))

(assert (=> bs!1558743 (= lambda!342511 lambda!342477)))

(declare-fun bs!1558744 () Bool)

(assert (= bs!1558744 (and d!1963266 d!1963138)))

(assert (=> bs!1558744 (= (= (head!12862 (t!378394 s!2326)) (head!12862 s!2326)) (= lambda!342511 lambda!342481))))

(declare-fun bs!1558745 () Bool)

(assert (= bs!1558745 (and d!1963266 d!1963164)))

(assert (=> bs!1558745 (= lambda!342511 lambda!342484)))

(declare-fun bs!1558746 () Bool)

(assert (= bs!1558746 (and d!1963266 d!1963068)))

(assert (=> bs!1558746 (= lambda!342511 lambda!342475)))

(declare-fun bs!1558747 () Bool)

(assert (= bs!1558747 (and d!1963266 d!1962540)))

(assert (=> bs!1558747 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342511 lambda!342367))))

(declare-fun bs!1558748 () Bool)

(assert (= bs!1558748 (and d!1963266 d!1963124)))

(assert (=> bs!1558748 (= lambda!342511 lambda!342479)))

(assert (=> d!1963266 true))

(assert (=> d!1963266 (= (derivationStepZipper!2147 lt!2349534 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349534 lambda!342511))))

(declare-fun bs!1558749 () Bool)

(assert (= bs!1558749 d!1963266))

(declare-fun m!7080500 () Bool)

(assert (=> bs!1558749 m!7080500))

(assert (=> b!6256063 d!1963266))

(assert (=> b!6256063 d!1963070))

(assert (=> b!6256063 d!1963072))

(declare-fun bm!528208 () Bool)

(declare-fun call!528213 () (InoxSet Context!11130))

(assert (=> bm!528208 (= call!528213 (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))) (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))) (h!71168 s!2326)))))

(declare-fun d!1963268 () Bool)

(declare-fun c!1132990 () Bool)

(declare-fun e!3806689 () Bool)

(assert (=> d!1963268 (= c!1132990 e!3806689)))

(declare-fun res!2582458 () Bool)

(assert (=> d!1963268 (=> (not res!2582458) (not e!3806689))))

(assert (=> d!1963268 (= res!2582458 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))))

(declare-fun e!3806688 () (InoxSet Context!11130))

(assert (=> d!1963268 (= (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (h!71168 s!2326)) e!3806688)))

(declare-fun b!6257659 () Bool)

(assert (=> b!6257659 (= e!3806689 (nullable!6174 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))))))

(declare-fun b!6257660 () Bool)

(assert (=> b!6257660 (= e!3806688 ((_ map or) call!528213 (derivationStepZipperUp!1355 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343))))))))))) (h!71168 s!2326))))))

(declare-fun b!6257661 () Bool)

(declare-fun e!3806690 () (InoxSet Context!11130))

(assert (=> b!6257661 (= e!3806688 e!3806690)))

(declare-fun c!1132989 () Bool)

(assert (=> b!6257661 (= c!1132989 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))))

(declare-fun b!6257662 () Bool)

(assert (=> b!6257662 (= e!3806690 call!528213)))

(declare-fun b!6257663 () Bool)

(assert (=> b!6257663 (= e!3806690 ((as const (Array Context!11130 Bool)) false))))

(assert (= (and d!1963268 res!2582458) b!6257659))

(assert (= (and d!1963268 c!1132990) b!6257660))

(assert (= (and d!1963268 (not c!1132990)) b!6257661))

(assert (= (and b!6257661 c!1132989) b!6257662))

(assert (= (and b!6257661 (not c!1132989)) b!6257663))

(assert (= (or b!6257660 b!6257662) bm!528208))

(declare-fun m!7080502 () Bool)

(assert (=> bm!528208 m!7080502))

(declare-fun m!7080504 () Bool)

(assert (=> b!6257659 m!7080504))

(declare-fun m!7080506 () Bool)

(assert (=> b!6257660 m!7080506))

(assert (=> b!6256066 d!1963268))

(declare-fun d!1963270 () Bool)

(assert (=> d!1963270 (= (nullable!6174 (h!71166 (exprs!6065 lt!2349551))) (nullableFct!2126 (h!71166 (exprs!6065 lt!2349551))))))

(declare-fun bs!1558750 () Bool)

(assert (= bs!1558750 d!1963270))

(declare-fun m!7080508 () Bool)

(assert (=> bs!1558750 m!7080508))

(assert (=> b!6255981 d!1963270))

(declare-fun d!1963272 () Bool)

(assert (=> d!1963272 (= (isEmpty!36742 (tail!11948 (unfocusZipperList!1602 zl!343))) ((_ is Nil!64718) (tail!11948 (unfocusZipperList!1602 zl!343))))))

(assert (=> b!6256135 d!1963272))

(declare-fun d!1963274 () Bool)

(assert (=> d!1963274 (= (tail!11948 (unfocusZipperList!1602 zl!343)) (t!378392 (unfocusZipperList!1602 zl!343)))))

(assert (=> b!6256135 d!1963274))

(declare-fun b!6257664 () Bool)

(declare-fun e!3806694 () (InoxSet Context!11130))

(declare-fun call!528217 () (InoxSet Context!11130))

(declare-fun call!528216 () (InoxSet Context!11130))

(assert (=> b!6257664 (= e!3806694 ((_ map or) call!528217 call!528216))))

(declare-fun b!6257665 () Bool)

(declare-fun e!3806695 () (InoxSet Context!11130))

(declare-fun e!3806696 () (InoxSet Context!11130))

(assert (=> b!6257665 (= e!3806695 e!3806696)))

(declare-fun c!1132994 () Bool)

(assert (=> b!6257665 (= c!1132994 ((_ is Union!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257666 () Bool)

(declare-fun e!3806691 () (InoxSet Context!11130))

(assert (=> b!6257666 (= e!3806691 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528209 () Bool)

(declare-fun call!528215 () (InoxSet Context!11130))

(assert (=> bm!528209 (= call!528216 call!528215)))

(declare-fun bm!528210 () Bool)

(declare-fun call!528219 () (InoxSet Context!11130))

(assert (=> bm!528210 (= call!528219 call!528216)))

(declare-fun b!6257667 () Bool)

(assert (=> b!6257667 (= e!3806696 ((_ map or) call!528215 call!528217))))

(declare-fun d!1963276 () Bool)

(declare-fun c!1132995 () Bool)

(assert (=> d!1963276 (= c!1132995 (and ((_ is ElementMatch!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))) (= (c!1132364 (h!71166 (exprs!6065 (h!71167 zl!343)))) (h!71168 s!2326))))))

(assert (=> d!1963276 (= (derivationStepZipperDown!1429 (h!71166 (exprs!6065 (h!71167 zl!343))) (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))) (h!71168 s!2326)) e!3806695)))

(declare-fun bm!528211 () Bool)

(declare-fun call!528218 () List!64842)

(declare-fun call!528214 () List!64842)

(assert (=> bm!528211 (= call!528218 call!528214)))

(declare-fun b!6257668 () Bool)

(declare-fun e!3806692 () (InoxSet Context!11130))

(assert (=> b!6257668 (= e!3806694 e!3806692)))

(declare-fun c!1132992 () Bool)

(assert (=> b!6257668 (= c!1132992 ((_ is Concat!25026) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257669 () Bool)

(declare-fun e!3806693 () Bool)

(assert (=> b!6257669 (= e!3806693 (nullable!6174 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun b!6257670 () Bool)

(assert (=> b!6257670 (= e!3806695 (store ((as const (Array Context!11130 Bool)) false) (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))) true))))

(declare-fun bm!528212 () Bool)

(declare-fun c!1132993 () Bool)

(assert (=> bm!528212 (= call!528214 ($colon$colon!2046 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343))))) (ite (or c!1132993 c!1132992) (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (h!71166 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun bm!528213 () Bool)

(assert (=> bm!528213 (= call!528215 (derivationStepZipperDown!1429 (ite c!1132994 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132993 (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1132992 (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))) (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343))))))) (ite (or c!1132994 c!1132993) (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))) (Context!11131 call!528218)) (h!71168 s!2326)))))

(declare-fun b!6257671 () Bool)

(declare-fun c!1132991 () Bool)

(assert (=> b!6257671 (= c!1132991 ((_ is Star!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> b!6257671 (= e!3806692 e!3806691)))

(declare-fun bm!528214 () Bool)

(assert (=> bm!528214 (= call!528217 (derivationStepZipperDown!1429 (ite c!1132994 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))) (ite c!1132994 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))) (Context!11131 call!528214)) (h!71168 s!2326)))))

(declare-fun b!6257672 () Bool)

(assert (=> b!6257672 (= e!3806692 call!528219)))

(declare-fun b!6257673 () Bool)

(assert (=> b!6257673 (= e!3806691 call!528219)))

(declare-fun b!6257674 () Bool)

(assert (=> b!6257674 (= c!1132993 e!3806693)))

(declare-fun res!2582459 () Bool)

(assert (=> b!6257674 (=> (not res!2582459) (not e!3806693))))

(assert (=> b!6257674 (= res!2582459 ((_ is Concat!25026) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> b!6257674 (= e!3806696 e!3806694)))

(assert (= (and d!1963276 c!1132995) b!6257670))

(assert (= (and d!1963276 (not c!1132995)) b!6257665))

(assert (= (and b!6257665 c!1132994) b!6257667))

(assert (= (and b!6257665 (not c!1132994)) b!6257674))

(assert (= (and b!6257674 res!2582459) b!6257669))

(assert (= (and b!6257674 c!1132993) b!6257664))

(assert (= (and b!6257674 (not c!1132993)) b!6257668))

(assert (= (and b!6257668 c!1132992) b!6257672))

(assert (= (and b!6257668 (not c!1132992)) b!6257671))

(assert (= (and b!6257671 c!1132991) b!6257673))

(assert (= (and b!6257671 (not c!1132991)) b!6257666))

(assert (= (or b!6257672 b!6257673) bm!528211))

(assert (= (or b!6257672 b!6257673) bm!528210))

(assert (= (or b!6257664 bm!528211) bm!528212))

(assert (= (or b!6257664 bm!528210) bm!528209))

(assert (= (or b!6257667 b!6257664) bm!528214))

(assert (= (or b!6257667 bm!528209) bm!528213))

(declare-fun m!7080510 () Bool)

(assert (=> bm!528212 m!7080510))

(declare-fun m!7080512 () Bool)

(assert (=> b!6257670 m!7080512))

(declare-fun m!7080514 () Bool)

(assert (=> bm!528214 m!7080514))

(declare-fun m!7080516 () Bool)

(assert (=> bm!528213 m!7080516))

(assert (=> b!6257669 m!7079004))

(assert (=> bm!527915 d!1963276))

(assert (=> d!1962612 d!1963062))

(assert (=> d!1962520 d!1963062))

(declare-fun d!1963278 () Bool)

(assert (=> d!1963278 (= (isUnion!1026 lt!2349646) ((_ is Union!16181) lt!2349646))))

(assert (=> b!6256139 d!1963278))

(assert (=> b!6256345 d!1963036))

(declare-fun d!1963280 () Bool)

(declare-fun c!1132996 () Bool)

(assert (=> d!1963280 (= c!1132996 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806697 () Bool)

(assert (=> d!1963280 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349544 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806697)))

(declare-fun b!6257675 () Bool)

(assert (=> b!6257675 (= e!3806697 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349544 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257676 () Bool)

(assert (=> b!6257676 (= e!3806697 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349544 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963280 c!1132996) b!6257675))

(assert (= (and d!1963280 (not c!1132996)) b!6257676))

(assert (=> d!1963280 m!7078806))

(assert (=> d!1963280 m!7080100))

(assert (=> b!6257675 m!7078864))

(declare-fun m!7080518 () Bool)

(assert (=> b!6257675 m!7080518))

(assert (=> b!6257676 m!7078806))

(assert (=> b!6257676 m!7080104))

(assert (=> b!6257676 m!7078864))

(assert (=> b!6257676 m!7080104))

(declare-fun m!7080520 () Bool)

(assert (=> b!6257676 m!7080520))

(assert (=> b!6257676 m!7078806))

(assert (=> b!6257676 m!7080108))

(assert (=> b!6257676 m!7080520))

(assert (=> b!6257676 m!7080108))

(declare-fun m!7080522 () Bool)

(assert (=> b!6257676 m!7080522))

(assert (=> b!6255913 d!1963280))

(declare-fun bs!1558751 () Bool)

(declare-fun d!1963282 () Bool)

(assert (= bs!1558751 (and d!1963282 d!1963266)))

(declare-fun lambda!342512 () Int)

(assert (=> bs!1558751 (= lambda!342512 lambda!342511)))

(declare-fun bs!1558752 () Bool)

(assert (= bs!1558752 (and d!1963282 b!6255545)))

(assert (=> bs!1558752 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342512 lambda!342315))))

(declare-fun bs!1558753 () Bool)

(assert (= bs!1558753 (and d!1963282 d!1963216)))

(assert (=> bs!1558753 (= lambda!342512 lambda!342495)))

(declare-fun bs!1558754 () Bool)

(assert (= bs!1558754 (and d!1963282 d!1962614)))

(assert (=> bs!1558754 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342512 lambda!342390))))

(declare-fun bs!1558755 () Bool)

(assert (= bs!1558755 (and d!1963282 d!1963088)))

(assert (=> bs!1558755 (= lambda!342512 lambda!342477)))

(declare-fun bs!1558756 () Bool)

(assert (= bs!1558756 (and d!1963282 d!1963138)))

(assert (=> bs!1558756 (= (= (head!12862 (t!378394 s!2326)) (head!12862 s!2326)) (= lambda!342512 lambda!342481))))

(declare-fun bs!1558757 () Bool)

(assert (= bs!1558757 (and d!1963282 d!1963164)))

(assert (=> bs!1558757 (= lambda!342512 lambda!342484)))

(declare-fun bs!1558758 () Bool)

(assert (= bs!1558758 (and d!1963282 d!1963068)))

(assert (=> bs!1558758 (= lambda!342512 lambda!342475)))

(declare-fun bs!1558759 () Bool)

(assert (= bs!1558759 (and d!1963282 d!1962540)))

(assert (=> bs!1558759 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342512 lambda!342367))))

(declare-fun bs!1558760 () Bool)

(assert (= bs!1558760 (and d!1963282 d!1963124)))

(assert (=> bs!1558760 (= lambda!342512 lambda!342479)))

(assert (=> d!1963282 true))

(assert (=> d!1963282 (= (derivationStepZipper!2147 lt!2349544 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349544 lambda!342512))))

(declare-fun bs!1558761 () Bool)

(assert (= bs!1558761 d!1963282))

(declare-fun m!7080524 () Bool)

(assert (=> bs!1558761 m!7080524))

(assert (=> b!6255913 d!1963282))

(assert (=> b!6255913 d!1963070))

(assert (=> b!6255913 d!1963072))

(declare-fun b!6257677 () Bool)

(declare-fun e!3806701 () (InoxSet Context!11130))

(declare-fun call!528223 () (InoxSet Context!11130))

(declare-fun call!528222 () (InoxSet Context!11130))

(assert (=> b!6257677 (= e!3806701 ((_ map or) call!528223 call!528222))))

(declare-fun b!6257678 () Bool)

(declare-fun e!3806702 () (InoxSet Context!11130))

(declare-fun e!3806703 () (InoxSet Context!11130))

(assert (=> b!6257678 (= e!3806702 e!3806703)))

(declare-fun c!1133000 () Bool)

(assert (=> b!6257678 (= c!1133000 ((_ is Union!16181) (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257679 () Bool)

(declare-fun e!3806698 () (InoxSet Context!11130))

(assert (=> b!6257679 (= e!3806698 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528215 () Bool)

(declare-fun call!528221 () (InoxSet Context!11130))

(assert (=> bm!528215 (= call!528222 call!528221)))

(declare-fun bm!528216 () Bool)

(declare-fun call!528225 () (InoxSet Context!11130))

(assert (=> bm!528216 (= call!528225 call!528222)))

(declare-fun b!6257680 () Bool)

(assert (=> b!6257680 (= e!3806703 ((_ map or) call!528221 call!528223))))

(declare-fun d!1963284 () Bool)

(declare-fun c!1133001 () Bool)

(assert (=> d!1963284 (= c!1133001 (and ((_ is ElementMatch!16181) (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))) (= (c!1132364 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))) (h!71168 s!2326))))))

(assert (=> d!1963284 (= (derivationStepZipperDown!1429 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))) (ite c!1132579 lt!2349551 (Context!11131 call!527946)) (h!71168 s!2326)) e!3806702)))

(declare-fun bm!528217 () Bool)

(declare-fun call!528224 () List!64842)

(declare-fun call!528220 () List!64842)

(assert (=> bm!528217 (= call!528224 call!528220)))

(declare-fun b!6257681 () Bool)

(declare-fun e!3806699 () (InoxSet Context!11130))

(assert (=> b!6257681 (= e!3806701 e!3806699)))

(declare-fun c!1132998 () Bool)

(assert (=> b!6257681 (= c!1132998 ((_ is Concat!25026) (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))))))

(declare-fun b!6257682 () Bool)

(declare-fun e!3806700 () Bool)

(assert (=> b!6257682 (= e!3806700 (nullable!6174 (regOne!32874 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))))))))

(declare-fun b!6257683 () Bool)

(assert (=> b!6257683 (= e!3806702 (store ((as const (Array Context!11130 Bool)) false) (ite c!1132579 lt!2349551 (Context!11131 call!527946)) true))))

(declare-fun c!1132999 () Bool)

(declare-fun bm!528218 () Bool)

(assert (=> bm!528218 (= call!528220 ($colon$colon!2046 (exprs!6065 (ite c!1132579 lt!2349551 (Context!11131 call!527946))) (ite (or c!1132999 c!1132998) (regTwo!32874 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))) (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))))))))

(declare-fun bm!528219 () Bool)

(assert (=> bm!528219 (= call!528221 (derivationStepZipperDown!1429 (ite c!1133000 (regOne!32875 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))) (ite c!1132999 (regTwo!32874 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))) (ite c!1132998 (regOne!32874 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))) (reg!16510 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))))))) (ite (or c!1133000 c!1132999) (ite c!1132579 lt!2349551 (Context!11131 call!527946)) (Context!11131 call!528224)) (h!71168 s!2326)))))

(declare-fun b!6257684 () Bool)

(declare-fun c!1132997 () Bool)

(assert (=> b!6257684 (= c!1132997 ((_ is Star!16181) (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))))))

(assert (=> b!6257684 (= e!3806699 e!3806698)))

(declare-fun bm!528220 () Bool)

(assert (=> bm!528220 (= call!528223 (derivationStepZipperDown!1429 (ite c!1133000 (regTwo!32875 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))) (regOne!32874 (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))))) (ite c!1133000 (ite c!1132579 lt!2349551 (Context!11131 call!527946)) (Context!11131 call!528220)) (h!71168 s!2326)))))

(declare-fun b!6257685 () Bool)

(assert (=> b!6257685 (= e!3806699 call!528225)))

(declare-fun b!6257686 () Bool)

(assert (=> b!6257686 (= e!3806698 call!528225)))

(declare-fun b!6257687 () Bool)

(assert (=> b!6257687 (= c!1132999 e!3806700)))

(declare-fun res!2582460 () Bool)

(assert (=> b!6257687 (=> (not res!2582460) (not e!3806700))))

(assert (=> b!6257687 (= res!2582460 ((_ is Concat!25026) (ite c!1132579 (regTwo!32875 (regOne!32874 (regOne!32874 r!7292))) (regOne!32874 (regOne!32874 (regOne!32874 r!7292))))))))

(assert (=> b!6257687 (= e!3806703 e!3806701)))

(assert (= (and d!1963284 c!1133001) b!6257683))

(assert (= (and d!1963284 (not c!1133001)) b!6257678))

(assert (= (and b!6257678 c!1133000) b!6257680))

(assert (= (and b!6257678 (not c!1133000)) b!6257687))

(assert (= (and b!6257687 res!2582460) b!6257682))

(assert (= (and b!6257687 c!1132999) b!6257677))

(assert (= (and b!6257687 (not c!1132999)) b!6257681))

(assert (= (and b!6257681 c!1132998) b!6257685))

(assert (= (and b!6257681 (not c!1132998)) b!6257684))

(assert (= (and b!6257684 c!1132997) b!6257686))

(assert (= (and b!6257684 (not c!1132997)) b!6257679))

(assert (= (or b!6257685 b!6257686) bm!528217))

(assert (= (or b!6257685 b!6257686) bm!528216))

(assert (= (or b!6257677 bm!528217) bm!528218))

(assert (= (or b!6257677 bm!528216) bm!528215))

(assert (= (or b!6257680 b!6257677) bm!528220))

(assert (= (or b!6257680 bm!528215) bm!528219))

(declare-fun m!7080526 () Bool)

(assert (=> bm!528218 m!7080526))

(declare-fun m!7080528 () Bool)

(assert (=> b!6257683 m!7080528))

(declare-fun m!7080530 () Bool)

(assert (=> bm!528220 m!7080530))

(declare-fun m!7080532 () Bool)

(assert (=> bm!528219 m!7080532))

(declare-fun m!7080534 () Bool)

(assert (=> b!6257682 m!7080534))

(assert (=> bm!527946 d!1963284))

(declare-fun d!1963286 () Bool)

(assert (=> d!1963286 (= (isConcat!1110 lt!2349680) ((_ is Concat!25026) lt!2349680))))

(assert (=> b!6256326 d!1963286))

(assert (=> d!1962502 d!1962522))

(assert (=> d!1962502 d!1962520))

(declare-fun d!1963288 () Bool)

(declare-fun e!3806706 () Bool)

(assert (=> d!1963288 (= (matchZipper!2193 ((_ map or) lt!2349544 lt!2349547) (t!378394 s!2326)) e!3806706)))

(declare-fun res!2582463 () Bool)

(assert (=> d!1963288 (=> res!2582463 e!3806706)))

(assert (=> d!1963288 (= res!2582463 (matchZipper!2193 lt!2349544 (t!378394 s!2326)))))

(assert (=> d!1963288 true))

(declare-fun _$48!1992 () Unit!158055)

(assert (=> d!1963288 (= (choose!46424 lt!2349544 lt!2349547 (t!378394 s!2326)) _$48!1992)))

(declare-fun b!6257690 () Bool)

(assert (=> b!6257690 (= e!3806706 (matchZipper!2193 lt!2349547 (t!378394 s!2326)))))

(assert (= (and d!1963288 (not res!2582463)) b!6257690))

(assert (=> d!1963288 m!7078450))

(assert (=> d!1963288 m!7078426))

(assert (=> b!6257690 m!7078534))

(assert (=> d!1962502 d!1963288))

(declare-fun d!1963290 () Bool)

(declare-fun c!1133002 () Bool)

(assert (=> d!1963290 (= c!1133002 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3806707 () Bool)

(assert (=> d!1963290 (= (matchZipper!2193 ((_ map or) lt!2349534 lt!2349532) (t!378394 s!2326)) e!3806707)))

(declare-fun b!6257691 () Bool)

(assert (=> b!6257691 (= e!3806707 (nullableZipper!1951 ((_ map or) lt!2349534 lt!2349532)))))

(declare-fun b!6257692 () Bool)

(assert (=> b!6257692 (= e!3806707 (matchZipper!2193 (derivationStepZipper!2147 ((_ map or) lt!2349534 lt!2349532) (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1963290 c!1133002) b!6257691))

(assert (= (and d!1963290 (not c!1133002)) b!6257692))

(assert (=> d!1963290 m!7078798))

(declare-fun m!7080536 () Bool)

(assert (=> b!6257691 m!7080536))

(assert (=> b!6257692 m!7078802))

(assert (=> b!6257692 m!7078802))

(declare-fun m!7080538 () Bool)

(assert (=> b!6257692 m!7080538))

(assert (=> b!6257692 m!7078806))

(assert (=> b!6257692 m!7080538))

(assert (=> b!6257692 m!7078806))

(declare-fun m!7080540 () Bool)

(assert (=> b!6257692 m!7080540))

(assert (=> d!1962560 d!1963290))

(assert (=> d!1962560 d!1962558))

(declare-fun d!1963292 () Bool)

(declare-fun e!3806708 () Bool)

(assert (=> d!1963292 (= (matchZipper!2193 ((_ map or) lt!2349534 lt!2349532) (t!378394 s!2326)) e!3806708)))

(declare-fun res!2582464 () Bool)

(assert (=> d!1963292 (=> res!2582464 e!3806708)))

(assert (=> d!1963292 (= res!2582464 (matchZipper!2193 lt!2349534 (t!378394 s!2326)))))

(assert (=> d!1963292 true))

(declare-fun _$48!1993 () Unit!158055)

(assert (=> d!1963292 (= (choose!46424 lt!2349534 lt!2349532 (t!378394 s!2326)) _$48!1993)))

(declare-fun b!6257693 () Bool)

(assert (=> b!6257693 (= e!3806708 (matchZipper!2193 lt!2349532 (t!378394 s!2326)))))

(assert (= (and d!1963292 (not res!2582464)) b!6257693))

(assert (=> d!1963292 m!7078976))

(assert (=> d!1963292 m!7078430))

(assert (=> b!6257693 m!7078418))

(assert (=> d!1962560 d!1963292))

(declare-fun d!1963294 () Bool)

(declare-fun c!1133003 () Bool)

(assert (=> d!1963294 (= c!1133003 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806709 () Bool)

(assert (=> d!1963294 (= (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806709)))

(declare-fun b!6257694 () Bool)

(assert (=> b!6257694 (= e!3806709 (nullableZipper!1951 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257695 () Bool)

(assert (=> b!6257695 (= e!3806709 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963294 c!1133003) b!6257694))

(assert (= (and d!1963294 (not c!1133003)) b!6257695))

(assert (=> d!1963294 m!7078806))

(assert (=> d!1963294 m!7080100))

(assert (=> b!6257694 m!7079132))

(declare-fun m!7080542 () Bool)

(assert (=> b!6257694 m!7080542))

(assert (=> b!6257695 m!7078806))

(assert (=> b!6257695 m!7080104))

(assert (=> b!6257695 m!7079132))

(assert (=> b!6257695 m!7080104))

(declare-fun m!7080544 () Bool)

(assert (=> b!6257695 m!7080544))

(assert (=> b!6257695 m!7078806))

(assert (=> b!6257695 m!7080108))

(assert (=> b!6257695 m!7080544))

(assert (=> b!6257695 m!7080108))

(declare-fun m!7080546 () Bool)

(assert (=> b!6257695 m!7080546))

(assert (=> b!6256304 d!1963294))

(declare-fun bs!1558762 () Bool)

(declare-fun d!1963296 () Bool)

(assert (= bs!1558762 (and d!1963296 d!1963266)))

(declare-fun lambda!342513 () Int)

(assert (=> bs!1558762 (= lambda!342513 lambda!342511)))

(declare-fun bs!1558763 () Bool)

(assert (= bs!1558763 (and d!1963296 b!6255545)))

(assert (=> bs!1558763 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342513 lambda!342315))))

(declare-fun bs!1558764 () Bool)

(assert (= bs!1558764 (and d!1963296 d!1963216)))

(assert (=> bs!1558764 (= lambda!342513 lambda!342495)))

(declare-fun bs!1558765 () Bool)

(assert (= bs!1558765 (and d!1963296 d!1963088)))

(assert (=> bs!1558765 (= lambda!342513 lambda!342477)))

(declare-fun bs!1558766 () Bool)

(assert (= bs!1558766 (and d!1963296 d!1963138)))

(assert (=> bs!1558766 (= (= (head!12862 (t!378394 s!2326)) (head!12862 s!2326)) (= lambda!342513 lambda!342481))))

(declare-fun bs!1558767 () Bool)

(assert (= bs!1558767 (and d!1963296 d!1963164)))

(assert (=> bs!1558767 (= lambda!342513 lambda!342484)))

(declare-fun bs!1558768 () Bool)

(assert (= bs!1558768 (and d!1963296 d!1963068)))

(assert (=> bs!1558768 (= lambda!342513 lambda!342475)))

(declare-fun bs!1558769 () Bool)

(assert (= bs!1558769 (and d!1963296 d!1962614)))

(assert (=> bs!1558769 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342513 lambda!342390))))

(declare-fun bs!1558770 () Bool)

(assert (= bs!1558770 (and d!1963296 d!1963282)))

(assert (=> bs!1558770 (= lambda!342513 lambda!342512)))

(declare-fun bs!1558771 () Bool)

(assert (= bs!1558771 (and d!1963296 d!1962540)))

(assert (=> bs!1558771 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342513 lambda!342367))))

(declare-fun bs!1558772 () Bool)

(assert (= bs!1558772 (and d!1963296 d!1963124)))

(assert (=> bs!1558772 (= lambda!342513 lambda!342479)))

(assert (=> d!1963296 true))

(assert (=> d!1963296 (= (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) (head!12862 (t!378394 s!2326))) (flatMap!1686 (derivationStepZipper!2147 lt!2349545 (h!71168 s!2326)) lambda!342513))))

(declare-fun bs!1558773 () Bool)

(assert (= bs!1558773 d!1963296))

(assert (=> bs!1558773 m!7078486))

(declare-fun m!7080548 () Bool)

(assert (=> bs!1558773 m!7080548))

(assert (=> b!6256304 d!1963296))

(assert (=> b!6256304 d!1963070))

(assert (=> b!6256304 d!1963072))

(declare-fun d!1963298 () Bool)

(assert (=> d!1963298 (= (nullable!6174 (h!71166 (exprs!6065 lt!2349538))) (nullableFct!2126 (h!71166 (exprs!6065 lt!2349538))))))

(declare-fun bs!1558774 () Bool)

(assert (= bs!1558774 d!1963298))

(declare-fun m!7080550 () Bool)

(assert (=> bs!1558774 m!7080550))

(assert (=> b!6256051 d!1963298))

(assert (=> b!6256349 d!1963106))

(assert (=> b!6256349 d!1963038))

(assert (=> d!1962494 d!1963062))

(declare-fun bs!1558775 () Bool)

(declare-fun d!1963300 () Bool)

(assert (= bs!1558775 (and d!1963300 d!1963262)))

(declare-fun lambda!342514 () Int)

(assert (=> bs!1558775 (= lambda!342514 lambda!342510)))

(declare-fun bs!1558776 () Bool)

(assert (= bs!1558776 (and d!1963300 b!6256372)))

(assert (=> bs!1558776 (not (= lambda!342514 lambda!342404))))

(declare-fun bs!1558777 () Bool)

(assert (= bs!1558777 (and d!1963300 d!1963208)))

(assert (=> bs!1558777 (= lambda!342514 lambda!342492)))

(declare-fun bs!1558778 () Bool)

(assert (= bs!1558778 (and d!1963300 d!1963244)))

(assert (=> bs!1558778 (not (= lambda!342514 lambda!342500))))

(declare-fun bs!1558779 () Bool)

(assert (= bs!1558779 (and d!1963300 d!1963128)))

(assert (=> bs!1558779 (= lambda!342514 lambda!342480)))

(declare-fun bs!1558780 () Bool)

(assert (= bs!1558780 (and d!1963300 b!6257622)))

(assert (=> bs!1558780 (not (= lambda!342514 lambda!342509))))

(declare-fun bs!1558781 () Bool)

(assert (= bs!1558781 (and d!1963300 d!1963080)))

(assert (=> bs!1558781 (= lambda!342514 lambda!342476)))

(declare-fun bs!1558782 () Bool)

(assert (= bs!1558782 (and d!1963300 b!6256377)))

(assert (=> bs!1558782 (not (= lambda!342514 lambda!342407))))

(declare-fun bs!1558783 () Bool)

(assert (= bs!1558783 (and d!1963300 d!1963158)))

(assert (=> bs!1558783 (= lambda!342514 lambda!342483)))

(declare-fun bs!1558784 () Bool)

(assert (= bs!1558784 (and d!1963300 d!1963120)))

(assert (=> bs!1558784 (= lambda!342514 lambda!342478)))

(declare-fun bs!1558785 () Bool)

(assert (= bs!1558785 (and d!1963300 d!1963042)))

(assert (=> bs!1558785 (= lambda!342514 lambda!342471)))

(declare-fun bs!1558786 () Bool)

(assert (= bs!1558786 (and d!1963300 d!1963218)))

(assert (=> bs!1558786 (= lambda!342514 lambda!342496)))

(declare-fun bs!1558787 () Bool)

(assert (= bs!1558787 (and d!1963300 b!6257620)))

(assert (=> bs!1558787 (not (= lambda!342514 lambda!342508))))

(declare-fun bs!1558788 () Bool)

(assert (= bs!1558788 (and d!1963300 b!6256375)))

(assert (=> bs!1558788 (not (= lambda!342514 lambda!342406))))

(declare-fun bs!1558789 () Bool)

(assert (= bs!1558789 (and d!1963300 b!6256370)))

(assert (=> bs!1558789 (not (= lambda!342514 lambda!342403))))

(assert (=> d!1963300 (= (nullableZipper!1951 lt!2349540) (exists!2515 lt!2349540 lambda!342514))))

(declare-fun bs!1558790 () Bool)

(assert (= bs!1558790 d!1963300))

(declare-fun m!7080552 () Bool)

(assert (=> bs!1558790 m!7080552))

(assert (=> b!6256060 d!1963300))

(declare-fun bs!1558791 () Bool)

(declare-fun d!1963302 () Bool)

(assert (= bs!1558791 (and d!1963302 d!1963224)))

(declare-fun lambda!342515 () Int)

(assert (=> bs!1558791 (= lambda!342515 lambda!342497)))

(declare-fun bs!1558792 () Bool)

(assert (= bs!1558792 (and d!1963302 d!1962616)))

(assert (=> bs!1558792 (= lambda!342515 lambda!342393)))

(declare-fun bs!1558793 () Bool)

(assert (= bs!1558793 (and d!1963302 d!1963190)))

(assert (=> bs!1558793 (= lambda!342515 lambda!342485)))

(declare-fun bs!1558794 () Bool)

(assert (= bs!1558794 (and d!1963302 d!1963044)))

(assert (=> bs!1558794 (= lambda!342515 lambda!342472)))

(declare-fun bs!1558795 () Bool)

(assert (= bs!1558795 (and d!1963302 d!1962580)))

(assert (=> bs!1558795 (= lambda!342515 lambda!342374)))

(declare-fun bs!1558796 () Bool)

(assert (= bs!1558796 (and d!1963302 b!6257617)))

(assert (=> bs!1558796 (not (= lambda!342515 lambda!342506))))

(declare-fun bs!1558797 () Bool)

(assert (= bs!1558797 (and d!1963302 d!1962624)))

(assert (=> bs!1558797 (= lambda!342515 lambda!342394)))

(declare-fun bs!1558798 () Bool)

(assert (= bs!1558798 (and d!1963302 d!1963152)))

(assert (=> bs!1558798 (= lambda!342515 lambda!342482)))

(declare-fun bs!1558799 () Bool)

(assert (= bs!1558799 (and d!1963302 d!1962578)))

(assert (=> bs!1558799 (= lambda!342515 lambda!342371)))

(declare-fun bs!1558800 () Bool)

(assert (= bs!1558800 (and d!1963302 b!6257615)))

(assert (=> bs!1558800 (not (= lambda!342515 lambda!342505))))

(declare-fun bs!1558801 () Bool)

(assert (= bs!1558801 (and d!1963302 d!1962628)))

(assert (=> bs!1558801 (= lambda!342515 lambda!342395)))

(declare-fun bs!1558802 () Bool)

(assert (= bs!1558802 (and d!1963302 d!1962486)))

(assert (=> bs!1558802 (= lambda!342515 lambda!342355)))

(declare-fun bs!1558803 () Bool)

(assert (= bs!1558803 (and d!1963302 d!1962576)))

(assert (=> bs!1558803 (= lambda!342515 lambda!342368)))

(declare-fun b!6257696 () Bool)

(declare-fun e!3806713 () Regex!16181)

(assert (=> b!6257696 (= e!3806713 EmptyExpr!16181)))

(declare-fun b!6257697 () Bool)

(declare-fun e!3806712 () Bool)

(declare-fun lt!2349820 () Regex!16181)

(assert (=> b!6257697 (= e!3806712 (isConcat!1110 lt!2349820))))

(declare-fun b!6257698 () Bool)

(declare-fun e!3806710 () Bool)

(assert (=> b!6257698 (= e!3806710 (isEmpty!36742 (t!378392 (t!378392 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun b!6257699 () Bool)

(declare-fun e!3806715 () Bool)

(assert (=> b!6257699 (= e!3806715 (isEmptyExpr!1587 lt!2349820))))

(declare-fun b!6257700 () Bool)

(declare-fun e!3806714 () Regex!16181)

(assert (=> b!6257700 (= e!3806714 (h!71166 (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257701 () Bool)

(assert (=> b!6257701 (= e!3806713 (Concat!25026 (h!71166 (t!378392 (exprs!6065 (h!71167 zl!343)))) (generalisedConcat!1778 (t!378392 (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257702 () Bool)

(declare-fun e!3806711 () Bool)

(assert (=> b!6257702 (= e!3806711 e!3806715)))

(declare-fun c!1133005 () Bool)

(assert (=> b!6257702 (= c!1133005 (isEmpty!36742 (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257703 () Bool)

(assert (=> b!6257703 (= e!3806712 (= lt!2349820 (head!12863 (t!378392 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun b!6257704 () Bool)

(assert (=> b!6257704 (= e!3806715 e!3806712)))

(declare-fun c!1133004 () Bool)

(assert (=> b!6257704 (= c!1133004 (isEmpty!36742 (tail!11948 (t!378392 (exprs!6065 (h!71167 zl!343))))))))

(declare-fun b!6257705 () Bool)

(assert (=> b!6257705 (= e!3806714 e!3806713)))

(declare-fun c!1133006 () Bool)

(assert (=> b!6257705 (= c!1133006 ((_ is Cons!64718) (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> d!1963302 e!3806711))

(declare-fun res!2582466 () Bool)

(assert (=> d!1963302 (=> (not res!2582466) (not e!3806711))))

(assert (=> d!1963302 (= res!2582466 (validRegex!7917 lt!2349820))))

(assert (=> d!1963302 (= lt!2349820 e!3806714)))

(declare-fun c!1133007 () Bool)

(assert (=> d!1963302 (= c!1133007 e!3806710)))

(declare-fun res!2582465 () Bool)

(assert (=> d!1963302 (=> (not res!2582465) (not e!3806710))))

(assert (=> d!1963302 (= res!2582465 ((_ is Cons!64718) (t!378392 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> d!1963302 (forall!15300 (t!378392 (exprs!6065 (h!71167 zl!343))) lambda!342515)))

(assert (=> d!1963302 (= (generalisedConcat!1778 (t!378392 (exprs!6065 (h!71167 zl!343)))) lt!2349820)))

(assert (= (and d!1963302 res!2582465) b!6257698))

(assert (= (and d!1963302 c!1133007) b!6257700))

(assert (= (and d!1963302 (not c!1133007)) b!6257705))

(assert (= (and b!6257705 c!1133006) b!6257701))

(assert (= (and b!6257705 (not c!1133006)) b!6257696))

(assert (= (and d!1963302 res!2582466) b!6257702))

(assert (= (and b!6257702 c!1133005) b!6257699))

(assert (= (and b!6257702 (not c!1133005)) b!6257704))

(assert (= (and b!6257704 c!1133004) b!6257703))

(assert (= (and b!6257704 (not c!1133004)) b!6257697))

(declare-fun m!7080554 () Bool)

(assert (=> b!6257699 m!7080554))

(declare-fun m!7080556 () Bool)

(assert (=> b!6257703 m!7080556))

(declare-fun m!7080558 () Bool)

(assert (=> b!6257704 m!7080558))

(assert (=> b!6257704 m!7080558))

(declare-fun m!7080560 () Bool)

(assert (=> b!6257704 m!7080560))

(declare-fun m!7080562 () Bool)

(assert (=> b!6257698 m!7080562))

(assert (=> b!6257702 m!7078462))

(declare-fun m!7080564 () Bool)

(assert (=> b!6257701 m!7080564))

(declare-fun m!7080566 () Bool)

(assert (=> b!6257697 m!7080566))

(declare-fun m!7080568 () Bool)

(assert (=> d!1963302 m!7080568))

(declare-fun m!7080570 () Bool)

(assert (=> d!1963302 m!7080570))

(assert (=> b!6256330 d!1963302))

(assert (=> b!6256064 d!1962494))

(assert (=> bs!1557966 d!1962566))

(assert (=> b!6256416 d!1962598))

(declare-fun d!1963304 () Bool)

(declare-fun lt!2349821 () Int)

(assert (=> d!1963304 (>= lt!2349821 0)))

(declare-fun e!3806716 () Int)

(assert (=> d!1963304 (= lt!2349821 e!3806716)))

(declare-fun c!1133008 () Bool)

(assert (=> d!1963304 (= c!1133008 ((_ is Cons!64719) (t!378393 zl!343)))))

(assert (=> d!1963304 (= (zipperDepthTotal!334 (t!378393 zl!343)) lt!2349821)))

(declare-fun b!6257706 () Bool)

(assert (=> b!6257706 (= e!3806716 (+ (contextDepthTotal!304 (h!71167 (t!378393 zl!343))) (zipperDepthTotal!334 (t!378393 (t!378393 zl!343)))))))

(declare-fun b!6257707 () Bool)

(assert (=> b!6257707 (= e!3806716 0)))

(assert (= (and d!1963304 c!1133008) b!6257706))

(assert (= (and d!1963304 (not c!1133008)) b!6257707))

(declare-fun m!7080572 () Bool)

(assert (=> b!6257706 m!7080572))

(declare-fun m!7080574 () Bool)

(assert (=> b!6257706 m!7080574))

(assert (=> b!6256416 d!1963304))

(declare-fun d!1963306 () Bool)

(assert (=> d!1963306 true))

(declare-fun setRes!42553 () Bool)

(assert (=> d!1963306 setRes!42553))

(declare-fun condSetEmpty!42553 () Bool)

(declare-fun res!2582467 () (InoxSet Context!11130))

(assert (=> d!1963306 (= condSetEmpty!42553 (= res!2582467 ((as const (Array Context!11130 Bool)) false)))))

(assert (=> d!1963306 (= (choose!46425 lt!2349541 lambda!342315) res!2582467)))

(declare-fun setIsEmpty!42553 () Bool)

(assert (=> setIsEmpty!42553 setRes!42553))

(declare-fun tp!1745704 () Bool)

(declare-fun e!3806717 () Bool)

(declare-fun setNonEmpty!42553 () Bool)

(declare-fun setElem!42553 () Context!11130)

(assert (=> setNonEmpty!42553 (= setRes!42553 (and tp!1745704 (inv!83699 setElem!42553) e!3806717))))

(declare-fun setRest!42553 () (InoxSet Context!11130))

(assert (=> setNonEmpty!42553 (= res!2582467 ((_ map or) (store ((as const (Array Context!11130 Bool)) false) setElem!42553 true) setRest!42553))))

(declare-fun b!6257708 () Bool)

(declare-fun tp!1745703 () Bool)

(assert (=> b!6257708 (= e!3806717 tp!1745703)))

(assert (= (and d!1963306 condSetEmpty!42553) setIsEmpty!42553))

(assert (= (and d!1963306 (not condSetEmpty!42553)) setNonEmpty!42553))

(assert (= setNonEmpty!42553 b!6257708))

(declare-fun m!7080576 () Bool)

(assert (=> setNonEmpty!42553 m!7080576))

(assert (=> d!1962524 d!1963306))

(declare-fun b!6257709 () Bool)

(declare-fun e!3806719 () List!64844)

(assert (=> b!6257709 (= e!3806719 (_2!36463 (get!22361 lt!2349657)))))

(declare-fun b!6257711 () Bool)

(declare-fun res!2582468 () Bool)

(declare-fun e!3806718 () Bool)

(assert (=> b!6257711 (=> (not res!2582468) (not e!3806718))))

(declare-fun lt!2349822 () List!64844)

(assert (=> b!6257711 (= res!2582468 (= (size!40303 lt!2349822) (+ (size!40303 (_1!36463 (get!22361 lt!2349657))) (size!40303 (_2!36463 (get!22361 lt!2349657))))))))

(declare-fun b!6257712 () Bool)

(assert (=> b!6257712 (= e!3806718 (or (not (= (_2!36463 (get!22361 lt!2349657)) Nil!64720)) (= lt!2349822 (_1!36463 (get!22361 lt!2349657)))))))

(declare-fun b!6257710 () Bool)

(assert (=> b!6257710 (= e!3806719 (Cons!64720 (h!71168 (_1!36463 (get!22361 lt!2349657))) (++!14255 (t!378394 (_1!36463 (get!22361 lt!2349657))) (_2!36463 (get!22361 lt!2349657)))))))

(declare-fun d!1963308 () Bool)

(assert (=> d!1963308 e!3806718))

(declare-fun res!2582469 () Bool)

(assert (=> d!1963308 (=> (not res!2582469) (not e!3806718))))

(assert (=> d!1963308 (= res!2582469 (= (content!12147 lt!2349822) ((_ map or) (content!12147 (_1!36463 (get!22361 lt!2349657))) (content!12147 (_2!36463 (get!22361 lt!2349657))))))))

(assert (=> d!1963308 (= lt!2349822 e!3806719)))

(declare-fun c!1133009 () Bool)

(assert (=> d!1963308 (= c!1133009 ((_ is Nil!64720) (_1!36463 (get!22361 lt!2349657))))))

(assert (=> d!1963308 (= (++!14255 (_1!36463 (get!22361 lt!2349657)) (_2!36463 (get!22361 lt!2349657))) lt!2349822)))

(assert (= (and d!1963308 c!1133009) b!6257709))

(assert (= (and d!1963308 (not c!1133009)) b!6257710))

(assert (= (and d!1963308 res!2582469) b!6257711))

(assert (= (and b!6257711 res!2582468) b!6257712))

(declare-fun m!7080578 () Bool)

(assert (=> b!6257711 m!7080578))

(declare-fun m!7080580 () Bool)

(assert (=> b!6257711 m!7080580))

(declare-fun m!7080582 () Bool)

(assert (=> b!6257711 m!7080582))

(declare-fun m!7080584 () Bool)

(assert (=> b!6257710 m!7080584))

(declare-fun m!7080586 () Bool)

(assert (=> d!1963308 m!7080586))

(declare-fun m!7080588 () Bool)

(assert (=> d!1963308 m!7080588))

(declare-fun m!7080590 () Bool)

(assert (=> d!1963308 m!7080590))

(assert (=> b!6256172 d!1963308))

(assert (=> b!6256172 d!1963056))

(assert (=> d!1962522 d!1963062))

(declare-fun d!1963310 () Bool)

(assert (=> d!1963310 (= (nullable!6174 (h!71166 (exprs!6065 lt!2349549))) (nullableFct!2126 (h!71166 (exprs!6065 lt!2349549))))))

(declare-fun bs!1558804 () Bool)

(assert (= bs!1558804 d!1963310))

(declare-fun m!7080592 () Bool)

(assert (=> bs!1558804 m!7080592))

(assert (=> b!6256108 d!1963310))

(assert (=> d!1962588 d!1962582))

(declare-fun d!1963312 () Bool)

(assert (=> d!1963312 (= (Exists!3251 lambda!342377) (choose!46428 lambda!342377))))

(declare-fun bs!1558805 () Bool)

(assert (= bs!1558805 d!1963312))

(declare-fun m!7080594 () Bool)

(assert (=> bs!1558805 m!7080594))

(assert (=> d!1962588 d!1963312))

(assert (=> d!1962588 d!1963184))

(assert (=> d!1962588 d!1962592))

(declare-fun bs!1558806 () Bool)

(declare-fun d!1963314 () Bool)

(assert (= bs!1558806 (and d!1963314 d!1962590)))

(declare-fun lambda!342518 () Int)

(assert (=> bs!1558806 (not (= lambda!342518 lambda!342383))))

(declare-fun bs!1558807 () Bool)

(assert (= bs!1558807 (and d!1963314 b!6255548)))

(assert (=> bs!1558807 (= lambda!342518 lambda!342313)))

(declare-fun bs!1558808 () Bool)

(assert (= bs!1558808 (and d!1963314 d!1963202)))

(assert (=> bs!1558808 (not (= lambda!342518 lambda!342491))))

(declare-fun bs!1558809 () Bool)

(assert (= bs!1558809 (and d!1963314 b!6257276)))

(assert (=> bs!1558809 (not (= lambda!342518 lambda!342473))))

(assert (=> bs!1558806 (= lambda!342518 lambda!342382)))

(declare-fun bs!1558810 () Bool)

(assert (= bs!1558810 (and d!1963314 d!1962588)))

(assert (=> bs!1558810 (= lambda!342518 lambda!342377)))

(declare-fun bs!1558811 () Bool)

(assert (= bs!1558811 (and d!1963314 b!6257534)))

(assert (=> bs!1558811 (not (= lambda!342518 lambda!342493))))

(declare-fun bs!1558812 () Bool)

(assert (= bs!1558812 (and d!1963314 b!6256253)))

(assert (=> bs!1558812 (not (= lambda!342518 lambda!342389))))

(assert (=> bs!1558808 (= lambda!342518 lambda!342490)))

(declare-fun bs!1558813 () Bool)

(assert (= bs!1558813 (and d!1963314 b!6257272)))

(assert (=> bs!1558813 (not (= lambda!342518 lambda!342474))))

(declare-fun bs!1558814 () Bool)

(assert (= bs!1558814 (and d!1963314 b!6257530)))

(assert (=> bs!1558814 (not (= lambda!342518 lambda!342494))))

(assert (=> bs!1558807 (not (= lambda!342518 lambda!342314))))

(declare-fun bs!1558815 () Bool)

(assert (= bs!1558815 (and d!1963314 b!6256257)))

(assert (=> bs!1558815 (not (= lambda!342518 lambda!342388))))

(assert (=> d!1963314 true))

(assert (=> d!1963314 true))

(assert (=> d!1963314 true))

(assert (=> d!1963314 (= (isDefined!12775 (findConcatSeparation!2486 (regOne!32874 r!7292) (regTwo!32874 r!7292) Nil!64720 s!2326 s!2326)) (Exists!3251 lambda!342518))))

(assert (=> d!1963314 true))

(declare-fun _$89!2449 () Unit!158055)

(assert (=> d!1963314 (= (choose!46429 (regOne!32874 r!7292) (regTwo!32874 r!7292) s!2326) _$89!2449)))

(declare-fun bs!1558816 () Bool)

(assert (= bs!1558816 d!1963314))

(assert (=> bs!1558816 m!7078492))

(assert (=> bs!1558816 m!7078492))

(assert (=> bs!1558816 m!7078494))

(declare-fun m!7080596 () Bool)

(assert (=> bs!1558816 m!7080596))

(assert (=> d!1962588 d!1963314))

(declare-fun d!1963316 () Bool)

(assert (=> d!1963316 (= (isConcat!1110 lt!2349688) ((_ is Concat!25026) lt!2349688))))

(assert (=> b!6256353 d!1963316))

(assert (=> bm!527955 d!1963082))

(declare-fun d!1963318 () Bool)

(declare-fun res!2582474 () Bool)

(declare-fun e!3806722 () Bool)

(assert (=> d!1963318 (=> res!2582474 e!3806722)))

(assert (=> d!1963318 (= res!2582474 ((_ is Nil!64718) (exprs!6065 (h!71167 zl!343))))))

(assert (=> d!1963318 (= (forall!15300 (exprs!6065 (h!71167 zl!343)) lambda!342355) e!3806722)))

(declare-fun b!6257717 () Bool)

(declare-fun e!3806723 () Bool)

(assert (=> b!6257717 (= e!3806722 e!3806723)))

(declare-fun res!2582475 () Bool)

(assert (=> b!6257717 (=> (not res!2582475) (not e!3806723))))

(assert (=> b!6257717 (= res!2582475 (dynLambda!25571 lambda!342355 (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257718 () Bool)

(assert (=> b!6257718 (= e!3806723 (forall!15300 (t!378392 (exprs!6065 (h!71167 zl!343))) lambda!342355))))

(assert (= (and d!1963318 (not res!2582474)) b!6257717))

(assert (= (and b!6257717 res!2582475) b!6257718))

(declare-fun b_lambda!238145 () Bool)

(assert (=> (not b_lambda!238145) (not b!6257717)))

(declare-fun m!7080598 () Bool)

(assert (=> b!6257717 m!7080598))

(declare-fun m!7080600 () Bool)

(assert (=> b!6257718 m!7080600))

(assert (=> d!1962486 d!1963318))

(declare-fun d!1963320 () Bool)

(assert (=> d!1963320 (= (flatMap!1686 lt!2349545 lambda!342390) (choose!46425 lt!2349545 lambda!342390))))

(declare-fun bs!1558817 () Bool)

(assert (= bs!1558817 d!1963320))

(declare-fun m!7080602 () Bool)

(assert (=> bs!1558817 m!7080602))

(assert (=> d!1962614 d!1963320))

(declare-fun b!6257719 () Bool)

(declare-fun e!3806727 () (InoxSet Context!11130))

(declare-fun call!528229 () (InoxSet Context!11130))

(declare-fun call!528228 () (InoxSet Context!11130))

(assert (=> b!6257719 (= e!3806727 ((_ map or) call!528229 call!528228))))

(declare-fun b!6257720 () Bool)

(declare-fun e!3806728 () (InoxSet Context!11130))

(declare-fun e!3806729 () (InoxSet Context!11130))

(assert (=> b!6257720 (= e!3806728 e!3806729)))

(declare-fun c!1133013 () Bool)

(assert (=> b!6257720 (= c!1133013 ((_ is Union!16181) (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257721 () Bool)

(declare-fun e!3806724 () (InoxSet Context!11130))

(assert (=> b!6257721 (= e!3806724 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528221 () Bool)

(declare-fun call!528227 () (InoxSet Context!11130))

(assert (=> bm!528221 (= call!528228 call!528227)))

(declare-fun bm!528222 () Bool)

(declare-fun call!528231 () (InoxSet Context!11130))

(assert (=> bm!528222 (= call!528231 call!528228)))

(declare-fun b!6257722 () Bool)

(assert (=> b!6257722 (= e!3806729 ((_ map or) call!528227 call!528229))))

(declare-fun c!1133014 () Bool)

(declare-fun d!1963322 () Bool)

(assert (=> d!1963322 (= c!1133014 (and ((_ is ElementMatch!16181) (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))) (= (c!1132364 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))) (h!71168 s!2326))))))

(assert (=> d!1963322 (= (derivationStepZipperDown!1429 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))) (ite c!1132541 lt!2349549 (Context!11131 call!527933)) (h!71168 s!2326)) e!3806728)))

(declare-fun bm!528223 () Bool)

(declare-fun call!528230 () List!64842)

(declare-fun call!528226 () List!64842)

(assert (=> bm!528223 (= call!528230 call!528226)))

(declare-fun b!6257723 () Bool)

(declare-fun e!3806725 () (InoxSet Context!11130))

(assert (=> b!6257723 (= e!3806727 e!3806725)))

(declare-fun c!1133011 () Bool)

(assert (=> b!6257723 (= c!1133011 ((_ is Concat!25026) (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257724 () Bool)

(declare-fun e!3806726 () Bool)

(assert (=> b!6257724 (= e!3806726 (nullable!6174 (regOne!32874 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))))))

(declare-fun b!6257725 () Bool)

(assert (=> b!6257725 (= e!3806728 (store ((as const (Array Context!11130 Bool)) false) (ite c!1132541 lt!2349549 (Context!11131 call!527933)) true))))

(declare-fun c!1133012 () Bool)

(declare-fun bm!528224 () Bool)

(assert (=> bm!528224 (= call!528226 ($colon$colon!2046 (exprs!6065 (ite c!1132541 lt!2349549 (Context!11131 call!527933))) (ite (or c!1133012 c!1133011) (regTwo!32874 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))) (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))))))

(declare-fun bm!528225 () Bool)

(assert (=> bm!528225 (= call!528227 (derivationStepZipperDown!1429 (ite c!1133013 (regOne!32875 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))) (ite c!1133012 (regTwo!32874 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))) (ite c!1133011 (regOne!32874 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))) (reg!16510 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))))) (ite (or c!1133013 c!1133012) (ite c!1132541 lt!2349549 (Context!11131 call!527933)) (Context!11131 call!528230)) (h!71168 s!2326)))))

(declare-fun b!6257726 () Bool)

(declare-fun c!1133010 () Bool)

(assert (=> b!6257726 (= c!1133010 ((_ is Star!16181) (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(assert (=> b!6257726 (= e!3806725 e!3806724)))

(declare-fun bm!528226 () Bool)

(assert (=> bm!528226 (= call!528229 (derivationStepZipperDown!1429 (ite c!1133013 (regTwo!32875 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))) (regOne!32874 (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))) (ite c!1133013 (ite c!1132541 lt!2349549 (Context!11131 call!527933)) (Context!11131 call!528226)) (h!71168 s!2326)))))

(declare-fun b!6257727 () Bool)

(assert (=> b!6257727 (= e!3806725 call!528231)))

(declare-fun b!6257728 () Bool)

(assert (=> b!6257728 (= e!3806724 call!528231)))

(declare-fun b!6257729 () Bool)

(assert (=> b!6257729 (= c!1133012 e!3806726)))

(declare-fun res!2582476 () Bool)

(assert (=> b!6257729 (=> (not res!2582476) (not e!3806726))))

(assert (=> b!6257729 (= res!2582476 ((_ is Concat!25026) (ite c!1132541 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(assert (=> b!6257729 (= e!3806729 e!3806727)))

(assert (= (and d!1963322 c!1133014) b!6257725))

(assert (= (and d!1963322 (not c!1133014)) b!6257720))

(assert (= (and b!6257720 c!1133013) b!6257722))

(assert (= (and b!6257720 (not c!1133013)) b!6257729))

(assert (= (and b!6257729 res!2582476) b!6257724))

(assert (= (and b!6257729 c!1133012) b!6257719))

(assert (= (and b!6257729 (not c!1133012)) b!6257723))

(assert (= (and b!6257723 c!1133011) b!6257727))

(assert (= (and b!6257723 (not c!1133011)) b!6257726))

(assert (= (and b!6257726 c!1133010) b!6257728))

(assert (= (and b!6257726 (not c!1133010)) b!6257721))

(assert (= (or b!6257727 b!6257728) bm!528223))

(assert (= (or b!6257727 b!6257728) bm!528222))

(assert (= (or b!6257719 bm!528223) bm!528224))

(assert (= (or b!6257719 bm!528222) bm!528221))

(assert (= (or b!6257722 b!6257719) bm!528226))

(assert (= (or b!6257722 bm!528221) bm!528225))

(declare-fun m!7080604 () Bool)

(assert (=> bm!528224 m!7080604))

(declare-fun m!7080606 () Bool)

(assert (=> b!6257725 m!7080606))

(declare-fun m!7080608 () Bool)

(assert (=> bm!528226 m!7080608))

(declare-fun m!7080610 () Bool)

(assert (=> bm!528225 m!7080610))

(declare-fun m!7080612 () Bool)

(assert (=> b!6257724 m!7080612))

(assert (=> bm!527933 d!1963322))

(declare-fun bs!1558818 () Bool)

(declare-fun d!1963324 () Bool)

(assert (= bs!1558818 (and d!1963324 d!1963224)))

(declare-fun lambda!342519 () Int)

(assert (=> bs!1558818 (= lambda!342519 lambda!342497)))

(declare-fun bs!1558819 () Bool)

(assert (= bs!1558819 (and d!1963324 d!1963302)))

(assert (=> bs!1558819 (= lambda!342519 lambda!342515)))

(declare-fun bs!1558820 () Bool)

(assert (= bs!1558820 (and d!1963324 d!1962616)))

(assert (=> bs!1558820 (= lambda!342519 lambda!342393)))

(declare-fun bs!1558821 () Bool)

(assert (= bs!1558821 (and d!1963324 d!1963190)))

(assert (=> bs!1558821 (= lambda!342519 lambda!342485)))

(declare-fun bs!1558822 () Bool)

(assert (= bs!1558822 (and d!1963324 d!1963044)))

(assert (=> bs!1558822 (= lambda!342519 lambda!342472)))

(declare-fun bs!1558823 () Bool)

(assert (= bs!1558823 (and d!1963324 d!1962580)))

(assert (=> bs!1558823 (= lambda!342519 lambda!342374)))

(declare-fun bs!1558824 () Bool)

(assert (= bs!1558824 (and d!1963324 b!6257617)))

(assert (=> bs!1558824 (not (= lambda!342519 lambda!342506))))

(declare-fun bs!1558825 () Bool)

(assert (= bs!1558825 (and d!1963324 d!1962624)))

(assert (=> bs!1558825 (= lambda!342519 lambda!342394)))

(declare-fun bs!1558826 () Bool)

(assert (= bs!1558826 (and d!1963324 d!1963152)))

(assert (=> bs!1558826 (= lambda!342519 lambda!342482)))

(declare-fun bs!1558827 () Bool)

(assert (= bs!1558827 (and d!1963324 d!1962578)))

(assert (=> bs!1558827 (= lambda!342519 lambda!342371)))

(declare-fun bs!1558828 () Bool)

(assert (= bs!1558828 (and d!1963324 b!6257615)))

(assert (=> bs!1558828 (not (= lambda!342519 lambda!342505))))

(declare-fun bs!1558829 () Bool)

(assert (= bs!1558829 (and d!1963324 d!1962628)))

(assert (=> bs!1558829 (= lambda!342519 lambda!342395)))

(declare-fun bs!1558830 () Bool)

(assert (= bs!1558830 (and d!1963324 d!1962486)))

(assert (=> bs!1558830 (= lambda!342519 lambda!342355)))

(declare-fun bs!1558831 () Bool)

(assert (= bs!1558831 (and d!1963324 d!1962576)))

(assert (=> bs!1558831 (= lambda!342519 lambda!342368)))

(declare-fun b!6257730 () Bool)

(declare-fun e!3806733 () Regex!16181)

(assert (=> b!6257730 (= e!3806733 EmptyExpr!16181)))

(declare-fun b!6257731 () Bool)

(declare-fun e!3806732 () Bool)

(declare-fun lt!2349823 () Regex!16181)

(assert (=> b!6257731 (= e!3806732 (isConcat!1110 lt!2349823))))

(declare-fun b!6257732 () Bool)

(declare-fun e!3806730 () Bool)

(assert (=> b!6257732 (= e!3806730 (isEmpty!36742 (t!378392 (t!378392 lt!2349529))))))

(declare-fun b!6257733 () Bool)

(declare-fun e!3806735 () Bool)

(assert (=> b!6257733 (= e!3806735 (isEmptyExpr!1587 lt!2349823))))

(declare-fun b!6257734 () Bool)

(declare-fun e!3806734 () Regex!16181)

(assert (=> b!6257734 (= e!3806734 (h!71166 (t!378392 lt!2349529)))))

(declare-fun b!6257735 () Bool)

(assert (=> b!6257735 (= e!3806733 (Concat!25026 (h!71166 (t!378392 lt!2349529)) (generalisedConcat!1778 (t!378392 (t!378392 lt!2349529)))))))

(declare-fun b!6257736 () Bool)

(declare-fun e!3806731 () Bool)

(assert (=> b!6257736 (= e!3806731 e!3806735)))

(declare-fun c!1133016 () Bool)

(assert (=> b!6257736 (= c!1133016 (isEmpty!36742 (t!378392 lt!2349529)))))

(declare-fun b!6257737 () Bool)

(assert (=> b!6257737 (= e!3806732 (= lt!2349823 (head!12863 (t!378392 lt!2349529))))))

(declare-fun b!6257738 () Bool)

(assert (=> b!6257738 (= e!3806735 e!3806732)))

(declare-fun c!1133015 () Bool)

(assert (=> b!6257738 (= c!1133015 (isEmpty!36742 (tail!11948 (t!378392 lt!2349529))))))

(declare-fun b!6257739 () Bool)

(assert (=> b!6257739 (= e!3806734 e!3806733)))

(declare-fun c!1133017 () Bool)

(assert (=> b!6257739 (= c!1133017 ((_ is Cons!64718) (t!378392 lt!2349529)))))

(assert (=> d!1963324 e!3806731))

(declare-fun res!2582478 () Bool)

(assert (=> d!1963324 (=> (not res!2582478) (not e!3806731))))

(assert (=> d!1963324 (= res!2582478 (validRegex!7917 lt!2349823))))

(assert (=> d!1963324 (= lt!2349823 e!3806734)))

(declare-fun c!1133018 () Bool)

(assert (=> d!1963324 (= c!1133018 e!3806730)))

(declare-fun res!2582477 () Bool)

(assert (=> d!1963324 (=> (not res!2582477) (not e!3806730))))

(assert (=> d!1963324 (= res!2582477 ((_ is Cons!64718) (t!378392 lt!2349529)))))

(assert (=> d!1963324 (forall!15300 (t!378392 lt!2349529) lambda!342519)))

(assert (=> d!1963324 (= (generalisedConcat!1778 (t!378392 lt!2349529)) lt!2349823)))

(assert (= (and d!1963324 res!2582477) b!6257732))

(assert (= (and d!1963324 c!1133018) b!6257734))

(assert (= (and d!1963324 (not c!1133018)) b!6257739))

(assert (= (and b!6257739 c!1133017) b!6257735))

(assert (= (and b!6257739 (not c!1133017)) b!6257730))

(assert (= (and d!1963324 res!2582478) b!6257736))

(assert (= (and b!6257736 c!1133016) b!6257733))

(assert (= (and b!6257736 (not c!1133016)) b!6257738))

(assert (= (and b!6257738 c!1133015) b!6257737))

(assert (= (and b!6257738 (not c!1133015)) b!6257731))

(declare-fun m!7080614 () Bool)

(assert (=> b!6257733 m!7080614))

(declare-fun m!7080616 () Bool)

(assert (=> b!6257737 m!7080616))

(declare-fun m!7080618 () Bool)

(assert (=> b!6257738 m!7080618))

(assert (=> b!6257738 m!7080618))

(declare-fun m!7080620 () Bool)

(assert (=> b!6257738 m!7080620))

(declare-fun m!7080622 () Bool)

(assert (=> b!6257732 m!7080622))

(assert (=> b!6257736 m!7079180))

(declare-fun m!7080624 () Bool)

(assert (=> b!6257735 m!7080624))

(declare-fun m!7080626 () Bool)

(assert (=> b!6257731 m!7080626))

(declare-fun m!7080628 () Bool)

(assert (=> d!1963324 m!7080628))

(declare-fun m!7080630 () Bool)

(assert (=> d!1963324 m!7080630))

(assert (=> b!6256357 d!1963324))

(declare-fun d!1963326 () Bool)

(declare-fun res!2582483 () Bool)

(declare-fun e!3806740 () Bool)

(assert (=> d!1963326 (=> res!2582483 e!3806740)))

(assert (=> d!1963326 (= res!2582483 ((_ is Nil!64719) lt!2349683))))

(assert (=> d!1963326 (= (noDuplicate!2015 lt!2349683) e!3806740)))

(declare-fun b!6257744 () Bool)

(declare-fun e!3806741 () Bool)

(assert (=> b!6257744 (= e!3806740 e!3806741)))

(declare-fun res!2582484 () Bool)

(assert (=> b!6257744 (=> (not res!2582484) (not e!3806741))))

(declare-fun contains!20115 (List!64843 Context!11130) Bool)

(assert (=> b!6257744 (= res!2582484 (not (contains!20115 (t!378393 lt!2349683) (h!71167 lt!2349683))))))

(declare-fun b!6257745 () Bool)

(assert (=> b!6257745 (= e!3806741 (noDuplicate!2015 (t!378393 lt!2349683)))))

(assert (= (and d!1963326 (not res!2582483)) b!6257744))

(assert (= (and b!6257744 res!2582484) b!6257745))

(declare-fun m!7080632 () Bool)

(assert (=> b!6257744 m!7080632))

(declare-fun m!7080634 () Bool)

(assert (=> b!6257745 m!7080634))

(assert (=> d!1962618 d!1963326))

(declare-fun d!1963328 () Bool)

(declare-fun e!3806749 () Bool)

(assert (=> d!1963328 e!3806749))

(declare-fun res!2582489 () Bool)

(assert (=> d!1963328 (=> (not res!2582489) (not e!3806749))))

(declare-fun res!2582490 () List!64843)

(assert (=> d!1963328 (= res!2582489 (noDuplicate!2015 res!2582490))))

(declare-fun e!3806748 () Bool)

(assert (=> d!1963328 e!3806748))

(assert (=> d!1963328 (= (choose!46432 z!1189) res!2582490)))

(declare-fun b!6257753 () Bool)

(declare-fun e!3806750 () Bool)

(declare-fun tp!1745709 () Bool)

(assert (=> b!6257753 (= e!3806750 tp!1745709)))

(declare-fun tp!1745710 () Bool)

(declare-fun b!6257752 () Bool)

(assert (=> b!6257752 (= e!3806748 (and (inv!83699 (h!71167 res!2582490)) e!3806750 tp!1745710))))

(declare-fun b!6257754 () Bool)

(assert (=> b!6257754 (= e!3806749 (= (content!12146 res!2582490) z!1189))))

(assert (= b!6257752 b!6257753))

(assert (= (and d!1963328 ((_ is Cons!64719) res!2582490)) b!6257752))

(assert (= (and d!1963328 res!2582489) b!6257754))

(declare-fun m!7080636 () Bool)

(assert (=> d!1963328 m!7080636))

(declare-fun m!7080638 () Bool)

(assert (=> b!6257752 m!7080638))

(declare-fun m!7080640 () Bool)

(assert (=> b!6257754 m!7080640))

(assert (=> d!1962618 d!1963328))

(declare-fun d!1963330 () Bool)

(declare-fun c!1133019 () Bool)

(assert (=> d!1963330 (= c!1133019 (isEmpty!36746 (t!378394 s!2326)))))

(declare-fun e!3806751 () Bool)

(assert (=> d!1963330 (= (matchZipper!2193 ((_ map or) lt!2349534 lt!2349560) (t!378394 s!2326)) e!3806751)))

(declare-fun b!6257755 () Bool)

(assert (=> b!6257755 (= e!3806751 (nullableZipper!1951 ((_ map or) lt!2349534 lt!2349560)))))

(declare-fun b!6257756 () Bool)

(assert (=> b!6257756 (= e!3806751 (matchZipper!2193 (derivationStepZipper!2147 ((_ map or) lt!2349534 lt!2349560) (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))))))

(assert (= (and d!1963330 c!1133019) b!6257755))

(assert (= (and d!1963330 (not c!1133019)) b!6257756))

(assert (=> d!1963330 m!7078798))

(declare-fun m!7080642 () Bool)

(assert (=> b!6257755 m!7080642))

(assert (=> b!6257756 m!7078802))

(assert (=> b!6257756 m!7078802))

(declare-fun m!7080644 () Bool)

(assert (=> b!6257756 m!7080644))

(assert (=> b!6257756 m!7078806))

(assert (=> b!6257756 m!7080644))

(assert (=> b!6257756 m!7078806))

(declare-fun m!7080646 () Bool)

(assert (=> b!6257756 m!7080646))

(assert (=> d!1962634 d!1963330))

(assert (=> d!1962634 d!1962558))

(declare-fun e!3806752 () Bool)

(declare-fun d!1963332 () Bool)

(assert (=> d!1963332 (= (matchZipper!2193 ((_ map or) lt!2349534 lt!2349560) (t!378394 s!2326)) e!3806752)))

(declare-fun res!2582491 () Bool)

(assert (=> d!1963332 (=> res!2582491 e!3806752)))

(assert (=> d!1963332 (= res!2582491 (matchZipper!2193 lt!2349534 (t!378394 s!2326)))))

(assert (=> d!1963332 true))

(declare-fun _$48!1994 () Unit!158055)

(assert (=> d!1963332 (= (choose!46424 lt!2349534 lt!2349560 (t!378394 s!2326)) _$48!1994)))

(declare-fun b!6257757 () Bool)

(assert (=> b!6257757 (= e!3806752 (matchZipper!2193 lt!2349560 (t!378394 s!2326)))))

(assert (= (and d!1963332 (not res!2582491)) b!6257757))

(assert (=> d!1963332 m!7079224))

(assert (=> d!1963332 m!7078430))

(assert (=> b!6257757 m!7078536))

(assert (=> d!1962634 d!1963332))

(declare-fun d!1963334 () Bool)

(assert (=> d!1963334 (= (nullable!6174 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))) (nullableFct!2126 (h!71166 (exprs!6065 (Context!11131 (Cons!64718 (h!71166 (exprs!6065 (h!71167 zl!343))) (t!378392 (exprs!6065 (h!71167 zl!343)))))))))))

(declare-fun bs!1558832 () Bool)

(assert (= bs!1558832 d!1963334))

(declare-fun m!7080648 () Bool)

(assert (=> bs!1558832 m!7080648))

(assert (=> b!6256065 d!1963334))

(declare-fun d!1963336 () Bool)

(declare-fun c!1133020 () Bool)

(assert (=> d!1963336 (= c!1133020 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806753 () Bool)

(assert (=> d!1963336 (= (matchZipper!2193 (derivationStepZipper!2147 ((_ map or) lt!2349544 lt!2349547) (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806753)))

(declare-fun b!6257758 () Bool)

(assert (=> b!6257758 (= e!3806753 (nullableZipper!1951 (derivationStepZipper!2147 ((_ map or) lt!2349544 lt!2349547) (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257759 () Bool)

(assert (=> b!6257759 (= e!3806753 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 ((_ map or) lt!2349544 lt!2349547) (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963336 c!1133020) b!6257758))

(assert (= (and d!1963336 (not c!1133020)) b!6257759))

(assert (=> d!1963336 m!7078806))

(assert (=> d!1963336 m!7080100))

(assert (=> b!6257758 m!7078870))

(declare-fun m!7080650 () Bool)

(assert (=> b!6257758 m!7080650))

(assert (=> b!6257759 m!7078806))

(assert (=> b!6257759 m!7080104))

(assert (=> b!6257759 m!7078870))

(assert (=> b!6257759 m!7080104))

(declare-fun m!7080652 () Bool)

(assert (=> b!6257759 m!7080652))

(assert (=> b!6257759 m!7078806))

(assert (=> b!6257759 m!7080108))

(assert (=> b!6257759 m!7080652))

(assert (=> b!6257759 m!7080108))

(declare-fun m!7080654 () Bool)

(assert (=> b!6257759 m!7080654))

(assert (=> b!6255915 d!1963336))

(declare-fun bs!1558833 () Bool)

(declare-fun d!1963338 () Bool)

(assert (= bs!1558833 (and d!1963338 d!1963266)))

(declare-fun lambda!342520 () Int)

(assert (=> bs!1558833 (= lambda!342520 lambda!342511)))

(declare-fun bs!1558834 () Bool)

(assert (= bs!1558834 (and d!1963338 b!6255545)))

(assert (=> bs!1558834 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342520 lambda!342315))))

(declare-fun bs!1558835 () Bool)

(assert (= bs!1558835 (and d!1963338 d!1963216)))

(assert (=> bs!1558835 (= lambda!342520 lambda!342495)))

(declare-fun bs!1558836 () Bool)

(assert (= bs!1558836 (and d!1963338 d!1963296)))

(assert (=> bs!1558836 (= lambda!342520 lambda!342513)))

(declare-fun bs!1558837 () Bool)

(assert (= bs!1558837 (and d!1963338 d!1963088)))

(assert (=> bs!1558837 (= lambda!342520 lambda!342477)))

(declare-fun bs!1558838 () Bool)

(assert (= bs!1558838 (and d!1963338 d!1963138)))

(assert (=> bs!1558838 (= (= (head!12862 (t!378394 s!2326)) (head!12862 s!2326)) (= lambda!342520 lambda!342481))))

(declare-fun bs!1558839 () Bool)

(assert (= bs!1558839 (and d!1963338 d!1963164)))

(assert (=> bs!1558839 (= lambda!342520 lambda!342484)))

(declare-fun bs!1558840 () Bool)

(assert (= bs!1558840 (and d!1963338 d!1963068)))

(assert (=> bs!1558840 (= lambda!342520 lambda!342475)))

(declare-fun bs!1558841 () Bool)

(assert (= bs!1558841 (and d!1963338 d!1962614)))

(assert (=> bs!1558841 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342520 lambda!342390))))

(declare-fun bs!1558842 () Bool)

(assert (= bs!1558842 (and d!1963338 d!1963282)))

(assert (=> bs!1558842 (= lambda!342520 lambda!342512)))

(declare-fun bs!1558843 () Bool)

(assert (= bs!1558843 (and d!1963338 d!1962540)))

(assert (=> bs!1558843 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342520 lambda!342367))))

(declare-fun bs!1558844 () Bool)

(assert (= bs!1558844 (and d!1963338 d!1963124)))

(assert (=> bs!1558844 (= lambda!342520 lambda!342479)))

(assert (=> d!1963338 true))

(assert (=> d!1963338 (= (derivationStepZipper!2147 ((_ map or) lt!2349544 lt!2349547) (head!12862 (t!378394 s!2326))) (flatMap!1686 ((_ map or) lt!2349544 lt!2349547) lambda!342520))))

(declare-fun bs!1558845 () Bool)

(assert (= bs!1558845 d!1963338))

(declare-fun m!7080656 () Bool)

(assert (=> bs!1558845 m!7080656))

(assert (=> b!6255915 d!1963338))

(assert (=> b!6255915 d!1963070))

(assert (=> b!6255915 d!1963072))

(declare-fun d!1963340 () Bool)

(assert (=> d!1963340 (= (head!12863 (unfocusZipperList!1602 zl!343)) (h!71166 (unfocusZipperList!1602 zl!343)))))

(assert (=> b!6256134 d!1963340))

(declare-fun b!6257760 () Bool)

(declare-fun e!3806757 () (InoxSet Context!11130))

(declare-fun call!528235 () (InoxSet Context!11130))

(declare-fun call!528234 () (InoxSet Context!11130))

(assert (=> b!6257760 (= e!3806757 ((_ map or) call!528235 call!528234))))

(declare-fun b!6257761 () Bool)

(declare-fun e!3806758 () (InoxSet Context!11130))

(declare-fun e!3806759 () (InoxSet Context!11130))

(assert (=> b!6257761 (= e!3806758 e!3806759)))

(declare-fun c!1133024 () Bool)

(assert (=> b!6257761 (= c!1133024 ((_ is Union!16181) (h!71166 (exprs!6065 lt!2349551))))))

(declare-fun b!6257762 () Bool)

(declare-fun e!3806754 () (InoxSet Context!11130))

(assert (=> b!6257762 (= e!3806754 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528227 () Bool)

(declare-fun call!528233 () (InoxSet Context!11130))

(assert (=> bm!528227 (= call!528234 call!528233)))

(declare-fun bm!528228 () Bool)

(declare-fun call!528237 () (InoxSet Context!11130))

(assert (=> bm!528228 (= call!528237 call!528234)))

(declare-fun b!6257763 () Bool)

(assert (=> b!6257763 (= e!3806759 ((_ map or) call!528233 call!528235))))

(declare-fun d!1963342 () Bool)

(declare-fun c!1133025 () Bool)

(assert (=> d!1963342 (= c!1133025 (and ((_ is ElementMatch!16181) (h!71166 (exprs!6065 lt!2349551))) (= (c!1132364 (h!71166 (exprs!6065 lt!2349551))) (h!71168 s!2326))))))

(assert (=> d!1963342 (= (derivationStepZipperDown!1429 (h!71166 (exprs!6065 lt!2349551)) (Context!11131 (t!378392 (exprs!6065 lt!2349551))) (h!71168 s!2326)) e!3806758)))

(declare-fun bm!528229 () Bool)

(declare-fun call!528236 () List!64842)

(declare-fun call!528232 () List!64842)

(assert (=> bm!528229 (= call!528236 call!528232)))

(declare-fun b!6257764 () Bool)

(declare-fun e!3806755 () (InoxSet Context!11130))

(assert (=> b!6257764 (= e!3806757 e!3806755)))

(declare-fun c!1133022 () Bool)

(assert (=> b!6257764 (= c!1133022 ((_ is Concat!25026) (h!71166 (exprs!6065 lt!2349551))))))

(declare-fun b!6257765 () Bool)

(declare-fun e!3806756 () Bool)

(assert (=> b!6257765 (= e!3806756 (nullable!6174 (regOne!32874 (h!71166 (exprs!6065 lt!2349551)))))))

(declare-fun b!6257766 () Bool)

(assert (=> b!6257766 (= e!3806758 (store ((as const (Array Context!11130 Bool)) false) (Context!11131 (t!378392 (exprs!6065 lt!2349551))) true))))

(declare-fun bm!528230 () Bool)

(declare-fun c!1133023 () Bool)

(assert (=> bm!528230 (= call!528232 ($colon$colon!2046 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 lt!2349551)))) (ite (or c!1133023 c!1133022) (regTwo!32874 (h!71166 (exprs!6065 lt!2349551))) (h!71166 (exprs!6065 lt!2349551)))))))

(declare-fun bm!528231 () Bool)

(assert (=> bm!528231 (= call!528233 (derivationStepZipperDown!1429 (ite c!1133024 (regOne!32875 (h!71166 (exprs!6065 lt!2349551))) (ite c!1133023 (regTwo!32874 (h!71166 (exprs!6065 lt!2349551))) (ite c!1133022 (regOne!32874 (h!71166 (exprs!6065 lt!2349551))) (reg!16510 (h!71166 (exprs!6065 lt!2349551)))))) (ite (or c!1133024 c!1133023) (Context!11131 (t!378392 (exprs!6065 lt!2349551))) (Context!11131 call!528236)) (h!71168 s!2326)))))

(declare-fun b!6257767 () Bool)

(declare-fun c!1133021 () Bool)

(assert (=> b!6257767 (= c!1133021 ((_ is Star!16181) (h!71166 (exprs!6065 lt!2349551))))))

(assert (=> b!6257767 (= e!3806755 e!3806754)))

(declare-fun bm!528232 () Bool)

(assert (=> bm!528232 (= call!528235 (derivationStepZipperDown!1429 (ite c!1133024 (regTwo!32875 (h!71166 (exprs!6065 lt!2349551))) (regOne!32874 (h!71166 (exprs!6065 lt!2349551)))) (ite c!1133024 (Context!11131 (t!378392 (exprs!6065 lt!2349551))) (Context!11131 call!528232)) (h!71168 s!2326)))))

(declare-fun b!6257768 () Bool)

(assert (=> b!6257768 (= e!3806755 call!528237)))

(declare-fun b!6257769 () Bool)

(assert (=> b!6257769 (= e!3806754 call!528237)))

(declare-fun b!6257770 () Bool)

(assert (=> b!6257770 (= c!1133023 e!3806756)))

(declare-fun res!2582492 () Bool)

(assert (=> b!6257770 (=> (not res!2582492) (not e!3806756))))

(assert (=> b!6257770 (= res!2582492 ((_ is Concat!25026) (h!71166 (exprs!6065 lt!2349551))))))

(assert (=> b!6257770 (= e!3806759 e!3806757)))

(assert (= (and d!1963342 c!1133025) b!6257766))

(assert (= (and d!1963342 (not c!1133025)) b!6257761))

(assert (= (and b!6257761 c!1133024) b!6257763))

(assert (= (and b!6257761 (not c!1133024)) b!6257770))

(assert (= (and b!6257770 res!2582492) b!6257765))

(assert (= (and b!6257770 c!1133023) b!6257760))

(assert (= (and b!6257770 (not c!1133023)) b!6257764))

(assert (= (and b!6257764 c!1133022) b!6257768))

(assert (= (and b!6257764 (not c!1133022)) b!6257767))

(assert (= (and b!6257767 c!1133021) b!6257769))

(assert (= (and b!6257767 (not c!1133021)) b!6257762))

(assert (= (or b!6257768 b!6257769) bm!528229))

(assert (= (or b!6257768 b!6257769) bm!528228))

(assert (= (or b!6257760 bm!528229) bm!528230))

(assert (= (or b!6257760 bm!528228) bm!528227))

(assert (= (or b!6257763 b!6257760) bm!528232))

(assert (= (or b!6257763 bm!528227) bm!528231))

(declare-fun m!7080658 () Bool)

(assert (=> bm!528230 m!7080658))

(declare-fun m!7080660 () Bool)

(assert (=> b!6257766 m!7080660))

(declare-fun m!7080662 () Bool)

(assert (=> bm!528232 m!7080662))

(declare-fun m!7080664 () Bool)

(assert (=> bm!528231 m!7080664))

(declare-fun m!7080666 () Bool)

(assert (=> b!6257765 m!7080666))

(assert (=> bm!527909 d!1963342))

(declare-fun d!1963344 () Bool)

(assert (=> d!1963344 (= (nullable!6174 (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))) (nullableFct!2126 (regOne!32874 (regOne!32874 (regOne!32874 r!7292)))))))

(declare-fun bs!1558846 () Bool)

(assert (= bs!1558846 d!1963344))

(declare-fun m!7080668 () Bool)

(assert (=> bs!1558846 m!7080668))

(assert (=> b!6256212 d!1963344))

(declare-fun d!1963346 () Bool)

(assert (=> d!1963346 true))

(assert (=> d!1963346 true))

(declare-fun res!2582493 () Bool)

(assert (=> d!1963346 (= (choose!46428 lambda!342314) res!2582493)))

(assert (=> d!1962584 d!1963346))

(declare-fun bs!1558847 () Bool)

(declare-fun d!1963348 () Bool)

(assert (= bs!1558847 (and d!1963348 d!1963262)))

(declare-fun lambda!342521 () Int)

(assert (=> bs!1558847 (= lambda!342521 lambda!342510)))

(declare-fun bs!1558848 () Bool)

(assert (= bs!1558848 (and d!1963348 b!6256372)))

(assert (=> bs!1558848 (not (= lambda!342521 lambda!342404))))

(declare-fun bs!1558849 () Bool)

(assert (= bs!1558849 (and d!1963348 d!1963208)))

(assert (=> bs!1558849 (= lambda!342521 lambda!342492)))

(declare-fun bs!1558850 () Bool)

(assert (= bs!1558850 (and d!1963348 d!1963244)))

(assert (=> bs!1558850 (not (= lambda!342521 lambda!342500))))

(declare-fun bs!1558851 () Bool)

(assert (= bs!1558851 (and d!1963348 d!1963128)))

(assert (=> bs!1558851 (= lambda!342521 lambda!342480)))

(declare-fun bs!1558852 () Bool)

(assert (= bs!1558852 (and d!1963348 b!6257622)))

(assert (=> bs!1558852 (not (= lambda!342521 lambda!342509))))

(declare-fun bs!1558853 () Bool)

(assert (= bs!1558853 (and d!1963348 d!1963080)))

(assert (=> bs!1558853 (= lambda!342521 lambda!342476)))

(declare-fun bs!1558854 () Bool)

(assert (= bs!1558854 (and d!1963348 b!6256377)))

(assert (=> bs!1558854 (not (= lambda!342521 lambda!342407))))

(declare-fun bs!1558855 () Bool)

(assert (= bs!1558855 (and d!1963348 d!1963158)))

(assert (=> bs!1558855 (= lambda!342521 lambda!342483)))

(declare-fun bs!1558856 () Bool)

(assert (= bs!1558856 (and d!1963348 d!1963120)))

(assert (=> bs!1558856 (= lambda!342521 lambda!342478)))

(declare-fun bs!1558857 () Bool)

(assert (= bs!1558857 (and d!1963348 d!1963300)))

(assert (=> bs!1558857 (= lambda!342521 lambda!342514)))

(declare-fun bs!1558858 () Bool)

(assert (= bs!1558858 (and d!1963348 d!1963042)))

(assert (=> bs!1558858 (= lambda!342521 lambda!342471)))

(declare-fun bs!1558859 () Bool)

(assert (= bs!1558859 (and d!1963348 d!1963218)))

(assert (=> bs!1558859 (= lambda!342521 lambda!342496)))

(declare-fun bs!1558860 () Bool)

(assert (= bs!1558860 (and d!1963348 b!6257620)))

(assert (=> bs!1558860 (not (= lambda!342521 lambda!342508))))

(declare-fun bs!1558861 () Bool)

(assert (= bs!1558861 (and d!1963348 b!6256375)))

(assert (=> bs!1558861 (not (= lambda!342521 lambda!342406))))

(declare-fun bs!1558862 () Bool)

(assert (= bs!1558862 (and d!1963348 b!6256370)))

(assert (=> bs!1558862 (not (= lambda!342521 lambda!342403))))

(assert (=> d!1963348 (= (nullableZipper!1951 lt!2349534) (exists!2515 lt!2349534 lambda!342521))))

(declare-fun bs!1558863 () Bool)

(assert (= bs!1558863 d!1963348))

(declare-fun m!7080670 () Bool)

(assert (=> bs!1558863 m!7080670))

(assert (=> b!6256062 d!1963348))

(declare-fun b!6257771 () Bool)

(declare-fun e!3806760 () Int)

(assert (=> b!6257771 (= e!3806760 1)))

(declare-fun bm!528233 () Bool)

(declare-fun call!528240 () Int)

(declare-fun c!1133026 () Bool)

(assert (=> bm!528233 (= call!528240 (regexDepthTotal!157 (ite c!1133026 (regOne!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regOne!32874 (h!71166 (exprs!6065 (h!71167 zl!343)))))))))

(declare-fun b!6257772 () Bool)

(declare-fun e!3806761 () Int)

(assert (=> b!6257772 (= e!3806761 1)))

(declare-fun d!1963350 () Bool)

(declare-fun lt!2349824 () Int)

(assert (=> d!1963350 (> lt!2349824 0)))

(assert (=> d!1963350 (= lt!2349824 e!3806761)))

(declare-fun c!1133027 () Bool)

(assert (=> d!1963350 (= c!1133027 ((_ is ElementMatch!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> d!1963350 (= (regexDepthTotal!157 (h!71166 (exprs!6065 (h!71167 zl!343)))) lt!2349824)))

(declare-fun b!6257773 () Bool)

(assert (=> b!6257773 (= c!1133026 ((_ is Union!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun e!3806762 () Int)

(declare-fun e!3806763 () Int)

(assert (=> b!6257773 (= e!3806762 e!3806763)))

(declare-fun b!6257774 () Bool)

(assert (=> b!6257774 (= e!3806763 e!3806760)))

(declare-fun c!1133029 () Bool)

(assert (=> b!6257774 (= c!1133029 ((_ is Concat!25026) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257775 () Bool)

(declare-fun call!528238 () Int)

(assert (=> b!6257775 (= e!3806762 (+ 1 call!528238))))

(declare-fun bm!528234 () Bool)

(declare-fun c!1133028 () Bool)

(assert (=> bm!528234 (= call!528238 (regexDepthTotal!157 (ite c!1133028 (reg!16510 (h!71166 (exprs!6065 (h!71167 zl!343)))) (ite c!1133026 (regTwo!32875 (h!71166 (exprs!6065 (h!71167 zl!343)))) (regTwo!32874 (h!71166 (exprs!6065 (h!71167 zl!343))))))))))

(declare-fun b!6257776 () Bool)

(declare-fun call!528239 () Int)

(assert (=> b!6257776 (= e!3806763 (+ 1 call!528240 call!528239))))

(declare-fun bm!528235 () Bool)

(assert (=> bm!528235 (= call!528239 call!528238)))

(declare-fun b!6257777 () Bool)

(assert (=> b!6257777 (= e!3806760 (+ 1 call!528240 call!528239))))

(declare-fun b!6257778 () Bool)

(assert (=> b!6257778 (= e!3806761 e!3806762)))

(assert (=> b!6257778 (= c!1133028 ((_ is Star!16181) (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (= (and d!1963350 c!1133027) b!6257772))

(assert (= (and d!1963350 (not c!1133027)) b!6257778))

(assert (= (and b!6257778 c!1133028) b!6257775))

(assert (= (and b!6257778 (not c!1133028)) b!6257773))

(assert (= (and b!6257773 c!1133026) b!6257776))

(assert (= (and b!6257773 (not c!1133026)) b!6257774))

(assert (= (and b!6257774 c!1133029) b!6257777))

(assert (= (and b!6257774 (not c!1133029)) b!6257771))

(assert (= (or b!6257776 b!6257777) bm!528235))

(assert (= (or b!6257776 b!6257777) bm!528233))

(assert (= (or b!6257775 bm!528235) bm!528234))

(declare-fun m!7080672 () Bool)

(assert (=> bm!528233 m!7080672))

(declare-fun m!7080674 () Bool)

(assert (=> bm!528234 m!7080674))

(assert (=> b!6256194 d!1963350))

(declare-fun d!1963352 () Bool)

(declare-fun lt!2349825 () Int)

(assert (=> d!1963352 (>= lt!2349825 0)))

(declare-fun e!3806764 () Int)

(assert (=> d!1963352 (= lt!2349825 e!3806764)))

(declare-fun c!1133030 () Bool)

(assert (=> d!1963352 (= c!1133030 ((_ is Cons!64718) (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343)))))))))

(assert (=> d!1963352 (= (contextDepthTotal!304 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343))))) lt!2349825)))

(declare-fun b!6257779 () Bool)

(assert (=> b!6257779 (= e!3806764 (+ (regexDepthTotal!157 (h!71166 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343))))))) (contextDepthTotal!304 (Context!11131 (t!378392 (exprs!6065 (Context!11131 (t!378392 (exprs!6065 (h!71167 zl!343))))))))))))

(declare-fun b!6257780 () Bool)

(assert (=> b!6257780 (= e!3806764 1)))

(assert (= (and d!1963352 c!1133030) b!6257779))

(assert (= (and d!1963352 (not c!1133030)) b!6257780))

(declare-fun m!7080676 () Bool)

(assert (=> b!6257779 m!7080676))

(declare-fun m!7080678 () Bool)

(assert (=> b!6257779 m!7080678))

(assert (=> b!6256194 d!1963352))

(assert (=> d!1962640 d!1963062))

(declare-fun b!6257781 () Bool)

(declare-fun e!3806768 () (InoxSet Context!11130))

(declare-fun call!528244 () (InoxSet Context!11130))

(declare-fun call!528243 () (InoxSet Context!11130))

(assert (=> b!6257781 (= e!3806768 ((_ map or) call!528244 call!528243))))

(declare-fun b!6257782 () Bool)

(declare-fun e!3806769 () (InoxSet Context!11130))

(declare-fun e!3806770 () (InoxSet Context!11130))

(assert (=> b!6257782 (= e!3806769 e!3806770)))

(declare-fun c!1133034 () Bool)

(assert (=> b!6257782 (= c!1133034 ((_ is Union!16181) (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))))))

(declare-fun b!6257783 () Bool)

(declare-fun e!3806765 () (InoxSet Context!11130))

(assert (=> b!6257783 (= e!3806765 ((as const (Array Context!11130 Bool)) false))))

(declare-fun bm!528236 () Bool)

(declare-fun call!528242 () (InoxSet Context!11130))

(assert (=> bm!528236 (= call!528243 call!528242)))

(declare-fun bm!528237 () Bool)

(declare-fun call!528246 () (InoxSet Context!11130))

(assert (=> bm!528237 (= call!528246 call!528243)))

(declare-fun b!6257784 () Bool)

(assert (=> b!6257784 (= e!3806770 ((_ map or) call!528242 call!528244))))

(declare-fun c!1133035 () Bool)

(declare-fun d!1963354 () Bool)

(assert (=> d!1963354 (= c!1133035 (and ((_ is ElementMatch!16181) (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))) (= (c!1132364 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))) (h!71168 s!2326))))))

(assert (=> d!1963354 (= (derivationStepZipperDown!1429 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292)))))) (ite (or c!1132574 c!1132573) lt!2349549 (Context!11131 call!527944)) (h!71168 s!2326)) e!3806769)))

(declare-fun bm!528238 () Bool)

(declare-fun call!528245 () List!64842)

(declare-fun call!528241 () List!64842)

(assert (=> bm!528238 (= call!528245 call!528241)))

(declare-fun b!6257785 () Bool)

(declare-fun e!3806766 () (InoxSet Context!11130))

(assert (=> b!6257785 (= e!3806768 e!3806766)))

(declare-fun c!1133032 () Bool)

(assert (=> b!6257785 (= c!1133032 ((_ is Concat!25026) (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))))))

(declare-fun e!3806767 () Bool)

(declare-fun b!6257786 () Bool)

(assert (=> b!6257786 (= e!3806767 (nullable!6174 (regOne!32874 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292)))))))))))

(declare-fun b!6257787 () Bool)

(assert (=> b!6257787 (= e!3806769 (store ((as const (Array Context!11130 Bool)) false) (ite (or c!1132574 c!1132573) lt!2349549 (Context!11131 call!527944)) true))))

(declare-fun bm!528239 () Bool)

(declare-fun c!1133033 () Bool)

(assert (=> bm!528239 (= call!528241 ($colon$colon!2046 (exprs!6065 (ite (or c!1132574 c!1132573) lt!2349549 (Context!11131 call!527944))) (ite (or c!1133033 c!1133032) (regTwo!32874 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))) (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292)))))))))))

(declare-fun bm!528240 () Bool)

(assert (=> bm!528240 (= call!528242 (derivationStepZipperDown!1429 (ite c!1133034 (regOne!32875 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))) (ite c!1133033 (regTwo!32874 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))) (ite c!1133032 (regOne!32874 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))) (reg!16510 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292)))))))))) (ite (or c!1133034 c!1133033) (ite (or c!1132574 c!1132573) lt!2349549 (Context!11131 call!527944)) (Context!11131 call!528245)) (h!71168 s!2326)))))

(declare-fun b!6257788 () Bool)

(declare-fun c!1133031 () Bool)

(assert (=> b!6257788 (= c!1133031 ((_ is Star!16181) (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))))))

(assert (=> b!6257788 (= e!3806766 e!3806765)))

(declare-fun bm!528241 () Bool)

(assert (=> bm!528241 (= call!528244 (derivationStepZipperDown!1429 (ite c!1133034 (regTwo!32875 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))) (regOne!32874 (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292)))))))) (ite c!1133034 (ite (or c!1132574 c!1132573) lt!2349549 (Context!11131 call!527944)) (Context!11131 call!528241)) (h!71168 s!2326)))))

(declare-fun b!6257789 () Bool)

(assert (=> b!6257789 (= e!3806766 call!528246)))

(declare-fun b!6257790 () Bool)

(assert (=> b!6257790 (= e!3806765 call!528246)))

(declare-fun b!6257791 () Bool)

(assert (=> b!6257791 (= c!1133033 e!3806767)))

(declare-fun res!2582494 () Bool)

(assert (=> b!6257791 (=> (not res!2582494) (not e!3806767))))

(assert (=> b!6257791 (= res!2582494 ((_ is Concat!25026) (ite c!1132574 (regOne!32875 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132573 (regTwo!32874 (regTwo!32874 (regOne!32874 r!7292))) (ite c!1132572 (regOne!32874 (regTwo!32874 (regOne!32874 r!7292))) (reg!16510 (regTwo!32874 (regOne!32874 r!7292))))))))))

(assert (=> b!6257791 (= e!3806770 e!3806768)))

(assert (= (and d!1963354 c!1133035) b!6257787))

(assert (= (and d!1963354 (not c!1133035)) b!6257782))

(assert (= (and b!6257782 c!1133034) b!6257784))

(assert (= (and b!6257782 (not c!1133034)) b!6257791))

(assert (= (and b!6257791 res!2582494) b!6257786))

(assert (= (and b!6257791 c!1133033) b!6257781))

(assert (= (and b!6257791 (not c!1133033)) b!6257785))

(assert (= (and b!6257785 c!1133032) b!6257789))

(assert (= (and b!6257785 (not c!1133032)) b!6257788))

(assert (= (and b!6257788 c!1133031) b!6257790))

(assert (= (and b!6257788 (not c!1133031)) b!6257783))

(assert (= (or b!6257789 b!6257790) bm!528238))

(assert (= (or b!6257789 b!6257790) bm!528237))

(assert (= (or b!6257781 bm!528238) bm!528239))

(assert (= (or b!6257781 bm!528237) bm!528236))

(assert (= (or b!6257784 b!6257781) bm!528241))

(assert (= (or b!6257784 bm!528236) bm!528240))

(declare-fun m!7080680 () Bool)

(assert (=> bm!528239 m!7080680))

(declare-fun m!7080682 () Bool)

(assert (=> b!6257787 m!7080682))

(declare-fun m!7080684 () Bool)

(assert (=> bm!528241 m!7080684))

(declare-fun m!7080686 () Bool)

(assert (=> bm!528240 m!7080686))

(declare-fun m!7080688 () Bool)

(assert (=> b!6257786 m!7080688))

(assert (=> bm!527939 d!1963354))

(assert (=> b!6256378 d!1962552))

(declare-fun bm!528242 () Bool)

(declare-fun call!528249 () Bool)

(declare-fun c!1133037 () Bool)

(declare-fun c!1133036 () Bool)

(assert (=> bm!528242 (= call!528249 (validRegex!7917 (ite c!1133037 (reg!16510 lt!2349680) (ite c!1133036 (regOne!32875 lt!2349680) (regOne!32874 lt!2349680)))))))

(declare-fun b!6257792 () Bool)

(declare-fun e!3806774 () Bool)

(declare-fun call!528248 () Bool)

(assert (=> b!6257792 (= e!3806774 call!528248)))

(declare-fun bm!528243 () Bool)

(declare-fun call!528247 () Bool)

(assert (=> bm!528243 (= call!528247 call!528249)))

(declare-fun b!6257793 () Bool)

(declare-fun e!3806773 () Bool)

(declare-fun e!3806776 () Bool)

(assert (=> b!6257793 (= e!3806773 e!3806776)))

(declare-fun res!2582497 () Bool)

(assert (=> b!6257793 (= res!2582497 (not (nullable!6174 (reg!16510 lt!2349680))))))

(assert (=> b!6257793 (=> (not res!2582497) (not e!3806776))))

(declare-fun b!6257794 () Bool)

(declare-fun e!3806777 () Bool)

(assert (=> b!6257794 (= e!3806773 e!3806777)))

(assert (=> b!6257794 (= c!1133036 ((_ is Union!16181) lt!2349680))))

(declare-fun b!6257795 () Bool)

(declare-fun e!3806772 () Bool)

(declare-fun e!3806775 () Bool)

(assert (=> b!6257795 (= e!3806772 e!3806775)))

(declare-fun res!2582498 () Bool)

(assert (=> b!6257795 (=> (not res!2582498) (not e!3806775))))

(assert (=> b!6257795 (= res!2582498 call!528247)))

(declare-fun d!1963356 () Bool)

(declare-fun res!2582496 () Bool)

(declare-fun e!3806771 () Bool)

(assert (=> d!1963356 (=> res!2582496 e!3806771)))

(assert (=> d!1963356 (= res!2582496 ((_ is ElementMatch!16181) lt!2349680))))

(assert (=> d!1963356 (= (validRegex!7917 lt!2349680) e!3806771)))

(declare-fun b!6257796 () Bool)

(assert (=> b!6257796 (= e!3806776 call!528249)))

(declare-fun b!6257797 () Bool)

(assert (=> b!6257797 (= e!3806775 call!528248)))

(declare-fun b!6257798 () Bool)

(declare-fun res!2582499 () Bool)

(assert (=> b!6257798 (=> res!2582499 e!3806772)))

(assert (=> b!6257798 (= res!2582499 (not ((_ is Concat!25026) lt!2349680)))))

(assert (=> b!6257798 (= e!3806777 e!3806772)))

(declare-fun b!6257799 () Bool)

(declare-fun res!2582495 () Bool)

(assert (=> b!6257799 (=> (not res!2582495) (not e!3806774))))

(assert (=> b!6257799 (= res!2582495 call!528247)))

(assert (=> b!6257799 (= e!3806777 e!3806774)))

(declare-fun bm!528244 () Bool)

(assert (=> bm!528244 (= call!528248 (validRegex!7917 (ite c!1133036 (regTwo!32875 lt!2349680) (regTwo!32874 lt!2349680))))))

(declare-fun b!6257800 () Bool)

(assert (=> b!6257800 (= e!3806771 e!3806773)))

(assert (=> b!6257800 (= c!1133037 ((_ is Star!16181) lt!2349680))))

(assert (= (and d!1963356 (not res!2582496)) b!6257800))

(assert (= (and b!6257800 c!1133037) b!6257793))

(assert (= (and b!6257800 (not c!1133037)) b!6257794))

(assert (= (and b!6257793 res!2582497) b!6257796))

(assert (= (and b!6257794 c!1133036) b!6257799))

(assert (= (and b!6257794 (not c!1133036)) b!6257798))

(assert (= (and b!6257799 res!2582495) b!6257792))

(assert (= (and b!6257798 (not res!2582499)) b!6257795))

(assert (= (and b!6257795 res!2582498) b!6257797))

(assert (= (or b!6257792 b!6257797) bm!528244))

(assert (= (or b!6257799 b!6257795) bm!528243))

(assert (= (or b!6257796 bm!528243) bm!528242))

(declare-fun m!7080690 () Bool)

(assert (=> bm!528242 m!7080690))

(declare-fun m!7080692 () Bool)

(assert (=> b!6257793 m!7080692))

(declare-fun m!7080694 () Bool)

(assert (=> bm!528244 m!7080694))

(assert (=> d!1962616 d!1963356))

(declare-fun d!1963358 () Bool)

(declare-fun res!2582500 () Bool)

(declare-fun e!3806778 () Bool)

(assert (=> d!1963358 (=> res!2582500 e!3806778)))

(assert (=> d!1963358 (= res!2582500 ((_ is Nil!64718) (exprs!6065 (h!71167 zl!343))))))

(assert (=> d!1963358 (= (forall!15300 (exprs!6065 (h!71167 zl!343)) lambda!342393) e!3806778)))

(declare-fun b!6257801 () Bool)

(declare-fun e!3806779 () Bool)

(assert (=> b!6257801 (= e!3806778 e!3806779)))

(declare-fun res!2582501 () Bool)

(assert (=> b!6257801 (=> (not res!2582501) (not e!3806779))))

(assert (=> b!6257801 (= res!2582501 (dynLambda!25571 lambda!342393 (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun b!6257802 () Bool)

(assert (=> b!6257802 (= e!3806779 (forall!15300 (t!378392 (exprs!6065 (h!71167 zl!343))) lambda!342393))))

(assert (= (and d!1963358 (not res!2582500)) b!6257801))

(assert (= (and b!6257801 res!2582501) b!6257802))

(declare-fun b_lambda!238147 () Bool)

(assert (=> (not b_lambda!238147) (not b!6257801)))

(declare-fun m!7080696 () Bool)

(assert (=> b!6257801 m!7080696))

(declare-fun m!7080698 () Bool)

(assert (=> b!6257802 m!7080698))

(assert (=> d!1962616 d!1963358))

(declare-fun bs!1558864 () Bool)

(declare-fun b!6257803 () Bool)

(assert (= bs!1558864 (and b!6257803 b!6256370)))

(declare-fun lambda!342522 () Int)

(assert (=> bs!1558864 (= lambda!342522 lambda!342402)))

(declare-fun bs!1558865 () Bool)

(assert (= bs!1558865 (and b!6257803 b!6256375)))

(assert (=> bs!1558865 (= lambda!342522 lambda!342405)))

(declare-fun bs!1558866 () Bool)

(assert (= bs!1558866 (and b!6257803 b!6257620)))

(assert (=> bs!1558866 (= lambda!342522 lambda!342507)))

(declare-fun bs!1558867 () Bool)

(assert (= bs!1558867 (and b!6257803 d!1963262)))

(declare-fun lambda!342523 () Int)

(assert (=> bs!1558867 (not (= lambda!342523 lambda!342510))))

(declare-fun bs!1558868 () Bool)

(assert (= bs!1558868 (and b!6257803 b!6256372)))

(declare-fun lt!2349829 () Int)

(assert (=> bs!1558868 (= (= lt!2349829 lt!2349699) (= lambda!342523 lambda!342404))))

(declare-fun bs!1558869 () Bool)

(assert (= bs!1558869 (and b!6257803 d!1963208)))

(assert (=> bs!1558869 (not (= lambda!342523 lambda!342492))))

(declare-fun bs!1558870 () Bool)

(assert (= bs!1558870 (and b!6257803 d!1963244)))

(assert (=> bs!1558870 (not (= lambda!342523 lambda!342500))))

(declare-fun bs!1558871 () Bool)

(assert (= bs!1558871 (and b!6257803 d!1963128)))

(assert (=> bs!1558871 (not (= lambda!342523 lambda!342480))))

(declare-fun bs!1558872 () Bool)

(assert (= bs!1558872 (and b!6257803 b!6257622)))

(assert (=> bs!1558872 (= (= lt!2349829 lt!2349816) (= lambda!342523 lambda!342509))))

(declare-fun bs!1558873 () Bool)

(assert (= bs!1558873 (and b!6257803 d!1963080)))

(assert (=> bs!1558873 (not (= lambda!342523 lambda!342476))))

(declare-fun bs!1558874 () Bool)

(assert (= bs!1558874 (and b!6257803 b!6256377)))

(assert (=> bs!1558874 (= (= lt!2349829 lt!2349703) (= lambda!342523 lambda!342407))))

(declare-fun bs!1558875 () Bool)

(assert (= bs!1558875 (and b!6257803 d!1963158)))

(assert (=> bs!1558875 (not (= lambda!342523 lambda!342483))))

(declare-fun bs!1558876 () Bool)

(assert (= bs!1558876 (and b!6257803 d!1963120)))

(assert (=> bs!1558876 (not (= lambda!342523 lambda!342478))))

(declare-fun bs!1558877 () Bool)

(assert (= bs!1558877 (and b!6257803 d!1963300)))

(assert (=> bs!1558877 (not (= lambda!342523 lambda!342514))))

(declare-fun bs!1558878 () Bool)

(assert (= bs!1558878 (and b!6257803 d!1963042)))

(assert (=> bs!1558878 (not (= lambda!342523 lambda!342471))))

(declare-fun bs!1558879 () Bool)

(assert (= bs!1558879 (and b!6257803 d!1963218)))

(assert (=> bs!1558879 (not (= lambda!342523 lambda!342496))))

(assert (=> bs!1558865 (= (= lt!2349829 lt!2349704) (= lambda!342523 lambda!342406))))

(assert (=> bs!1558864 (= (= lt!2349829 lt!2349700) (= lambda!342523 lambda!342403))))

(declare-fun bs!1558880 () Bool)

(assert (= bs!1558880 (and b!6257803 d!1963348)))

(assert (=> bs!1558880 (not (= lambda!342523 lambda!342521))))

(assert (=> bs!1558866 (= (= lt!2349829 lt!2349817) (= lambda!342523 lambda!342508))))

(assert (=> b!6257803 true))

(declare-fun bs!1558881 () Bool)

(declare-fun b!6257805 () Bool)

(assert (= bs!1558881 (and b!6257805 d!1963262)))

(declare-fun lambda!342524 () Int)

(assert (=> bs!1558881 (not (= lambda!342524 lambda!342510))))

(declare-fun bs!1558882 () Bool)

(assert (= bs!1558882 (and b!6257805 b!6256372)))

(declare-fun lt!2349828 () Int)

(assert (=> bs!1558882 (= (= lt!2349828 lt!2349699) (= lambda!342524 lambda!342404))))

(declare-fun bs!1558883 () Bool)

(assert (= bs!1558883 (and b!6257805 d!1963208)))

(assert (=> bs!1558883 (not (= lambda!342524 lambda!342492))))

(declare-fun bs!1558884 () Bool)

(assert (= bs!1558884 (and b!6257805 d!1963244)))

(assert (=> bs!1558884 (not (= lambda!342524 lambda!342500))))

(declare-fun bs!1558885 () Bool)

(assert (= bs!1558885 (and b!6257805 d!1963128)))

(assert (=> bs!1558885 (not (= lambda!342524 lambda!342480))))

(declare-fun bs!1558886 () Bool)

(assert (= bs!1558886 (and b!6257805 b!6257622)))

(assert (=> bs!1558886 (= (= lt!2349828 lt!2349816) (= lambda!342524 lambda!342509))))

(declare-fun bs!1558887 () Bool)

(assert (= bs!1558887 (and b!6257805 d!1963080)))

(assert (=> bs!1558887 (not (= lambda!342524 lambda!342476))))

(declare-fun bs!1558888 () Bool)

(assert (= bs!1558888 (and b!6257805 b!6256377)))

(assert (=> bs!1558888 (= (= lt!2349828 lt!2349703) (= lambda!342524 lambda!342407))))

(declare-fun bs!1558889 () Bool)

(assert (= bs!1558889 (and b!6257805 d!1963120)))

(assert (=> bs!1558889 (not (= lambda!342524 lambda!342478))))

(declare-fun bs!1558890 () Bool)

(assert (= bs!1558890 (and b!6257805 d!1963300)))

(assert (=> bs!1558890 (not (= lambda!342524 lambda!342514))))

(declare-fun bs!1558891 () Bool)

(assert (= bs!1558891 (and b!6257805 d!1963042)))

(assert (=> bs!1558891 (not (= lambda!342524 lambda!342471))))

(declare-fun bs!1558892 () Bool)

(assert (= bs!1558892 (and b!6257805 d!1963218)))

(assert (=> bs!1558892 (not (= lambda!342524 lambda!342496))))

(declare-fun bs!1558893 () Bool)

(assert (= bs!1558893 (and b!6257805 b!6256375)))

(assert (=> bs!1558893 (= (= lt!2349828 lt!2349704) (= lambda!342524 lambda!342406))))

(declare-fun bs!1558894 () Bool)

(assert (= bs!1558894 (and b!6257805 b!6256370)))

(assert (=> bs!1558894 (= (= lt!2349828 lt!2349700) (= lambda!342524 lambda!342403))))

(declare-fun bs!1558895 () Bool)

(assert (= bs!1558895 (and b!6257805 b!6257803)))

(assert (=> bs!1558895 (= (= lt!2349828 lt!2349829) (= lambda!342524 lambda!342523))))

(declare-fun bs!1558896 () Bool)

(assert (= bs!1558896 (and b!6257805 d!1963158)))

(assert (=> bs!1558896 (not (= lambda!342524 lambda!342483))))

(declare-fun bs!1558897 () Bool)

(assert (= bs!1558897 (and b!6257805 d!1963348)))

(assert (=> bs!1558897 (not (= lambda!342524 lambda!342521))))

(declare-fun bs!1558898 () Bool)

(assert (= bs!1558898 (and b!6257805 b!6257620)))

(assert (=> bs!1558898 (= (= lt!2349828 lt!2349817) (= lambda!342524 lambda!342508))))

(assert (=> b!6257805 true))

(declare-fun d!1963360 () Bool)

(declare-fun e!3806780 () Bool)

(assert (=> d!1963360 e!3806780))

(declare-fun res!2582502 () Bool)

(assert (=> d!1963360 (=> (not res!2582502) (not e!3806780))))

(assert (=> d!1963360 (= res!2582502 (>= lt!2349828 0))))

(declare-fun e!3806781 () Int)

(assert (=> d!1963360 (= lt!2349828 e!3806781)))

(declare-fun c!1133038 () Bool)

(assert (=> d!1963360 (= c!1133038 ((_ is Cons!64719) (t!378393 lt!2349542)))))

(assert (=> d!1963360 (= (zipperDepth!306 (t!378393 lt!2349542)) lt!2349828)))

(assert (=> b!6257803 (= e!3806781 lt!2349829)))

(assert (=> b!6257803 (= lt!2349829 (maxBigInt!0 (contextDepth!199 (h!71167 (t!378393 lt!2349542))) (zipperDepth!306 (t!378393 (t!378393 lt!2349542)))))))

(declare-fun lt!2349826 () Unit!158055)

(assert (=> b!6257803 (= lt!2349826 (lemmaForallContextDepthBiggerThanTransitive!183 (t!378393 (t!378393 lt!2349542)) lt!2349829 (zipperDepth!306 (t!378393 (t!378393 lt!2349542))) lambda!342522))))

(assert (=> b!6257803 (forall!15301 (t!378393 (t!378393 lt!2349542)) lambda!342523)))

(declare-fun lt!2349827 () Unit!158055)

(assert (=> b!6257803 (= lt!2349827 lt!2349826)))

(declare-fun b!6257804 () Bool)

(assert (=> b!6257804 (= e!3806781 0)))

(assert (=> b!6257805 (= e!3806780 (forall!15301 (t!378393 lt!2349542) lambda!342524))))

(assert (= (and d!1963360 c!1133038) b!6257803))

(assert (= (and d!1963360 (not c!1133038)) b!6257804))

(assert (= (and d!1963360 res!2582502) b!6257805))

(declare-fun m!7080700 () Bool)

(assert (=> b!6257803 m!7080700))

(declare-fun m!7080702 () Bool)

(assert (=> b!6257803 m!7080702))

(declare-fun m!7080704 () Bool)

(assert (=> b!6257803 m!7080704))

(declare-fun m!7080706 () Bool)

(assert (=> b!6257803 m!7080706))

(assert (=> b!6257803 m!7080702))

(assert (=> b!6257803 m!7080702))

(declare-fun m!7080708 () Bool)

(assert (=> b!6257803 m!7080708))

(assert (=> b!6257803 m!7080700))

(declare-fun m!7080710 () Bool)

(assert (=> b!6257805 m!7080710))

(assert (=> b!6256370 d!1963360))

(declare-fun bs!1558899 () Bool)

(declare-fun d!1963362 () Bool)

(assert (= bs!1558899 (and d!1963362 d!1963262)))

(declare-fun lambda!342525 () Int)

(assert (=> bs!1558899 (not (= lambda!342525 lambda!342510))))

(declare-fun bs!1558900 () Bool)

(assert (= bs!1558900 (and d!1963362 b!6256372)))

(assert (=> bs!1558900 (not (= lambda!342525 lambda!342404))))

(declare-fun bs!1558901 () Bool)

(assert (= bs!1558901 (and d!1963362 d!1963208)))

(assert (=> bs!1558901 (not (= lambda!342525 lambda!342492))))

(declare-fun bs!1558902 () Bool)

(assert (= bs!1558902 (and d!1963362 d!1963244)))

(assert (=> bs!1558902 (= (and (= lt!2349700 lt!2349704) (= lambda!342402 lambda!342405)) (= lambda!342525 lambda!342500))))

(declare-fun bs!1558903 () Bool)

(assert (= bs!1558903 (and d!1963362 d!1963128)))

(assert (=> bs!1558903 (not (= lambda!342525 lambda!342480))))

(declare-fun bs!1558904 () Bool)

(assert (= bs!1558904 (and d!1963362 b!6257622)))

(assert (=> bs!1558904 (not (= lambda!342525 lambda!342509))))

(declare-fun bs!1558905 () Bool)

(assert (= bs!1558905 (and d!1963362 d!1963080)))

(assert (=> bs!1558905 (not (= lambda!342525 lambda!342476))))

(declare-fun bs!1558906 () Bool)

(assert (= bs!1558906 (and d!1963362 b!6256377)))

(assert (=> bs!1558906 (not (= lambda!342525 lambda!342407))))

(declare-fun bs!1558907 () Bool)

(assert (= bs!1558907 (and d!1963362 d!1963120)))

(assert (=> bs!1558907 (not (= lambda!342525 lambda!342478))))

(declare-fun bs!1558908 () Bool)

(assert (= bs!1558908 (and d!1963362 d!1963300)))

(assert (=> bs!1558908 (not (= lambda!342525 lambda!342514))))

(declare-fun bs!1558909 () Bool)

(assert (= bs!1558909 (and d!1963362 d!1963042)))

(assert (=> bs!1558909 (not (= lambda!342525 lambda!342471))))

(declare-fun bs!1558910 () Bool)

(assert (= bs!1558910 (and d!1963362 d!1963218)))

(assert (=> bs!1558910 (not (= lambda!342525 lambda!342496))))

(declare-fun bs!1558911 () Bool)

(assert (= bs!1558911 (and d!1963362 b!6256375)))

(assert (=> bs!1558911 (not (= lambda!342525 lambda!342406))))

(declare-fun bs!1558912 () Bool)

(assert (= bs!1558912 (and d!1963362 b!6256370)))

(assert (=> bs!1558912 (not (= lambda!342525 lambda!342403))))

(declare-fun bs!1558913 () Bool)

(assert (= bs!1558913 (and d!1963362 b!6257803)))

(assert (=> bs!1558913 (not (= lambda!342525 lambda!342523))))

(declare-fun bs!1558914 () Bool)

(assert (= bs!1558914 (and d!1963362 d!1963158)))

(assert (=> bs!1558914 (not (= lambda!342525 lambda!342483))))

(declare-fun bs!1558915 () Bool)

(assert (= bs!1558915 (and d!1963362 d!1963348)))

(assert (=> bs!1558915 (not (= lambda!342525 lambda!342521))))

(declare-fun bs!1558916 () Bool)

(assert (= bs!1558916 (and d!1963362 b!6257620)))

(assert (=> bs!1558916 (not (= lambda!342525 lambda!342508))))

(declare-fun bs!1558917 () Bool)

(assert (= bs!1558917 (and d!1963362 b!6257805)))

(assert (=> bs!1558917 (not (= lambda!342525 lambda!342524))))

(assert (=> d!1963362 true))

(assert (=> d!1963362 true))

(assert (=> d!1963362 (< (dynLambda!25573 order!27433 lambda!342402) (dynLambda!25574 order!27435 lambda!342525))))

(assert (=> d!1963362 (forall!15301 (t!378393 lt!2349542) lambda!342525)))

(declare-fun lt!2349830 () Unit!158055)

(assert (=> d!1963362 (= lt!2349830 (choose!46437 (t!378393 lt!2349542) lt!2349700 (zipperDepth!306 (t!378393 lt!2349542)) lambda!342402))))

(assert (=> d!1963362 (>= lt!2349700 (zipperDepth!306 (t!378393 lt!2349542)))))

(assert (=> d!1963362 (= (lemmaForallContextDepthBiggerThanTransitive!183 (t!378393 lt!2349542) lt!2349700 (zipperDepth!306 (t!378393 lt!2349542)) lambda!342402) lt!2349830)))

(declare-fun bs!1558918 () Bool)

(assert (= bs!1558918 d!1963362))

(declare-fun m!7080712 () Bool)

(assert (=> bs!1558918 m!7080712))

(assert (=> bs!1558918 m!7079202))

(declare-fun m!7080714 () Bool)

(assert (=> bs!1558918 m!7080714))

(assert (=> b!6256370 d!1963362))

(declare-fun d!1963364 () Bool)

(assert (=> d!1963364 (= (maxBigInt!0 (contextDepth!199 (h!71167 lt!2349542)) (zipperDepth!306 (t!378393 lt!2349542))) (ite (>= (contextDepth!199 (h!71167 lt!2349542)) (zipperDepth!306 (t!378393 lt!2349542))) (contextDepth!199 (h!71167 lt!2349542)) (zipperDepth!306 (t!378393 lt!2349542))))))

(assert (=> b!6256370 d!1963364))

(declare-fun bs!1558919 () Bool)

(declare-fun b!6257806 () Bool)

(assert (= bs!1558919 (and b!6257806 d!1963224)))

(declare-fun lambda!342526 () Int)

(assert (=> bs!1558919 (not (= lambda!342526 lambda!342497))))

(declare-fun bs!1558920 () Bool)

(assert (= bs!1558920 (and b!6257806 d!1963302)))

(assert (=> bs!1558920 (not (= lambda!342526 lambda!342515))))

(declare-fun bs!1558921 () Bool)

(assert (= bs!1558921 (and b!6257806 d!1962616)))

(assert (=> bs!1558921 (not (= lambda!342526 lambda!342393))))

(declare-fun bs!1558922 () Bool)

(assert (= bs!1558922 (and b!6257806 d!1963190)))

(assert (=> bs!1558922 (not (= lambda!342526 lambda!342485))))

(declare-fun bs!1558923 () Bool)

(assert (= bs!1558923 (and b!6257806 d!1963044)))

(assert (=> bs!1558923 (not (= lambda!342526 lambda!342472))))

(declare-fun bs!1558924 () Bool)

(assert (= bs!1558924 (and b!6257806 d!1962580)))

(assert (=> bs!1558924 (not (= lambda!342526 lambda!342374))))

(declare-fun bs!1558925 () Bool)

(assert (= bs!1558925 (and b!6257806 d!1963324)))

(assert (=> bs!1558925 (not (= lambda!342526 lambda!342519))))

(declare-fun bs!1558926 () Bool)

(assert (= bs!1558926 (and b!6257806 b!6257617)))

(declare-fun lt!2349832 () Int)

(assert (=> bs!1558926 (= (= lt!2349832 lt!2349812) (= lambda!342526 lambda!342506))))

(declare-fun bs!1558927 () Bool)

(assert (= bs!1558927 (and b!6257806 d!1962624)))

(assert (=> bs!1558927 (not (= lambda!342526 lambda!342394))))

(declare-fun bs!1558928 () Bool)

(assert (= bs!1558928 (and b!6257806 d!1963152)))

(assert (=> bs!1558928 (not (= lambda!342526 lambda!342482))))

(declare-fun bs!1558929 () Bool)

(assert (= bs!1558929 (and b!6257806 d!1962578)))

(assert (=> bs!1558929 (not (= lambda!342526 lambda!342371))))

(declare-fun bs!1558930 () Bool)

(assert (= bs!1558930 (and b!6257806 b!6257615)))

(assert (=> bs!1558930 (= (= lt!2349832 lt!2349811) (= lambda!342526 lambda!342505))))

(declare-fun bs!1558931 () Bool)

(assert (= bs!1558931 (and b!6257806 d!1962628)))

(assert (=> bs!1558931 (not (= lambda!342526 lambda!342395))))

(declare-fun bs!1558932 () Bool)

(assert (= bs!1558932 (and b!6257806 d!1962486)))

(assert (=> bs!1558932 (not (= lambda!342526 lambda!342355))))

(declare-fun bs!1558933 () Bool)

(assert (= bs!1558933 (and b!6257806 d!1962576)))

(assert (=> bs!1558933 (not (= lambda!342526 lambda!342368))))

(assert (=> b!6257806 true))

(declare-fun bs!1558934 () Bool)

(declare-fun b!6257808 () Bool)

(assert (= bs!1558934 (and b!6257808 d!1963224)))

(declare-fun lambda!342527 () Int)

(assert (=> bs!1558934 (not (= lambda!342527 lambda!342497))))

(declare-fun bs!1558935 () Bool)

(assert (= bs!1558935 (and b!6257808 d!1963302)))

(assert (=> bs!1558935 (not (= lambda!342527 lambda!342515))))

(declare-fun bs!1558936 () Bool)

(assert (= bs!1558936 (and b!6257808 d!1962616)))

(assert (=> bs!1558936 (not (= lambda!342527 lambda!342393))))

(declare-fun bs!1558937 () Bool)

(assert (= bs!1558937 (and b!6257808 d!1963190)))

(assert (=> bs!1558937 (not (= lambda!342527 lambda!342485))))

(declare-fun bs!1558938 () Bool)

(assert (= bs!1558938 (and b!6257808 b!6257806)))

(declare-fun lt!2349833 () Int)

(assert (=> bs!1558938 (= (= lt!2349833 lt!2349832) (= lambda!342527 lambda!342526))))

(declare-fun bs!1558939 () Bool)

(assert (= bs!1558939 (and b!6257808 d!1963044)))

(assert (=> bs!1558939 (not (= lambda!342527 lambda!342472))))

(declare-fun bs!1558940 () Bool)

(assert (= bs!1558940 (and b!6257808 d!1962580)))

(assert (=> bs!1558940 (not (= lambda!342527 lambda!342374))))

(declare-fun bs!1558941 () Bool)

(assert (= bs!1558941 (and b!6257808 d!1963324)))

(assert (=> bs!1558941 (not (= lambda!342527 lambda!342519))))

(declare-fun bs!1558942 () Bool)

(assert (= bs!1558942 (and b!6257808 b!6257617)))

(assert (=> bs!1558942 (= (= lt!2349833 lt!2349812) (= lambda!342527 lambda!342506))))

(declare-fun bs!1558943 () Bool)

(assert (= bs!1558943 (and b!6257808 d!1962624)))

(assert (=> bs!1558943 (not (= lambda!342527 lambda!342394))))

(declare-fun bs!1558944 () Bool)

(assert (= bs!1558944 (and b!6257808 d!1963152)))

(assert (=> bs!1558944 (not (= lambda!342527 lambda!342482))))

(declare-fun bs!1558945 () Bool)

(assert (= bs!1558945 (and b!6257808 d!1962578)))

(assert (=> bs!1558945 (not (= lambda!342527 lambda!342371))))

(declare-fun bs!1558946 () Bool)

(assert (= bs!1558946 (and b!6257808 b!6257615)))

(assert (=> bs!1558946 (= (= lt!2349833 lt!2349811) (= lambda!342527 lambda!342505))))

(declare-fun bs!1558947 () Bool)

(assert (= bs!1558947 (and b!6257808 d!1962628)))

(assert (=> bs!1558947 (not (= lambda!342527 lambda!342395))))

(declare-fun bs!1558948 () Bool)

(assert (= bs!1558948 (and b!6257808 d!1962486)))

(assert (=> bs!1558948 (not (= lambda!342527 lambda!342355))))

(declare-fun bs!1558949 () Bool)

(assert (= bs!1558949 (and b!6257808 d!1962576)))

(assert (=> bs!1558949 (not (= lambda!342527 lambda!342368))))

(assert (=> b!6257808 true))

(declare-fun d!1963366 () Bool)

(declare-fun e!3806783 () Bool)

(assert (=> d!1963366 e!3806783))

(declare-fun res!2582503 () Bool)

(assert (=> d!1963366 (=> (not res!2582503) (not e!3806783))))

(assert (=> d!1963366 (= res!2582503 (>= lt!2349833 0))))

(declare-fun e!3806782 () Int)

(assert (=> d!1963366 (= lt!2349833 e!3806782)))

(declare-fun c!1133039 () Bool)

(assert (=> d!1963366 (= c!1133039 ((_ is Cons!64718) (exprs!6065 (h!71167 lt!2349542))))))

(assert (=> d!1963366 (= (contextDepth!199 (h!71167 lt!2349542)) lt!2349833)))

(assert (=> b!6257806 (= e!3806782 lt!2349832)))

(assert (=> b!6257806 (= lt!2349832 (maxBigInt!0 (regexDepth!304 (h!71166 (exprs!6065 (h!71167 lt!2349542)))) (contextDepth!199 (Context!11131 (t!378392 (exprs!6065 (h!71167 lt!2349542)))))))))

(declare-fun lt!2349831 () Unit!158055)

(assert (=> b!6257806 (= lt!2349831 (lemmaForallRegexDepthBiggerThanTransitive!94 (t!378392 (exprs!6065 (h!71167 lt!2349542))) lt!2349832 (contextDepth!199 (Context!11131 (t!378392 (exprs!6065 (h!71167 lt!2349542)))))))))

(assert (=> b!6257806 (forall!15300 (t!378392 (exprs!6065 (h!71167 lt!2349542))) lambda!342526)))

(declare-fun lt!2349834 () Unit!158055)

(assert (=> b!6257806 (= lt!2349834 lt!2349831)))

(declare-fun b!6257807 () Bool)

(assert (=> b!6257807 (= e!3806782 0)))

(assert (=> b!6257808 (= e!3806783 (forall!15300 (exprs!6065 (h!71167 lt!2349542)) lambda!342527))))

(assert (= (and d!1963366 c!1133039) b!6257806))

(assert (= (and d!1963366 (not c!1133039)) b!6257807))

(assert (= (and d!1963366 res!2582503) b!6257808))

(declare-fun m!7080716 () Bool)

(assert (=> b!6257806 m!7080716))

(assert (=> b!6257806 m!7080716))

(declare-fun m!7080718 () Bool)

(assert (=> b!6257806 m!7080718))

(declare-fun m!7080720 () Bool)

(assert (=> b!6257806 m!7080720))

(assert (=> b!6257806 m!7080718))

(declare-fun m!7080722 () Bool)

(assert (=> b!6257806 m!7080722))

(assert (=> b!6257806 m!7080718))

(declare-fun m!7080724 () Bool)

(assert (=> b!6257806 m!7080724))

(declare-fun m!7080726 () Bool)

(assert (=> b!6257808 m!7080726))

(assert (=> b!6256370 d!1963366))

(declare-fun d!1963368 () Bool)

(declare-fun res!2582504 () Bool)

(declare-fun e!3806784 () Bool)

(assert (=> d!1963368 (=> res!2582504 e!3806784)))

(assert (=> d!1963368 (= res!2582504 ((_ is Nil!64719) (t!378393 lt!2349542)))))

(assert (=> d!1963368 (= (forall!15301 (t!378393 lt!2349542) lambda!342403) e!3806784)))

(declare-fun b!6257809 () Bool)

(declare-fun e!3806785 () Bool)

(assert (=> b!6257809 (= e!3806784 e!3806785)))

(declare-fun res!2582505 () Bool)

(assert (=> b!6257809 (=> (not res!2582505) (not e!3806785))))

(assert (=> b!6257809 (= res!2582505 (dynLambda!25572 lambda!342403 (h!71167 (t!378393 lt!2349542))))))

(declare-fun b!6257810 () Bool)

(assert (=> b!6257810 (= e!3806785 (forall!15301 (t!378393 (t!378393 lt!2349542)) lambda!342403))))

(assert (= (and d!1963368 (not res!2582504)) b!6257809))

(assert (= (and b!6257809 res!2582505) b!6257810))

(declare-fun b_lambda!238149 () Bool)

(assert (=> (not b_lambda!238149) (not b!6257809)))

(declare-fun m!7080728 () Bool)

(assert (=> b!6257809 m!7080728))

(declare-fun m!7080730 () Bool)

(assert (=> b!6257810 m!7080730))

(assert (=> b!6256370 d!1963368))

(assert (=> b!6256344 d!1963036))

(declare-fun d!1963370 () Bool)

(declare-fun res!2582506 () Bool)

(declare-fun e!3806786 () Bool)

(assert (=> d!1963370 (=> res!2582506 e!3806786)))

(assert (=> d!1963370 (= res!2582506 ((_ is Nil!64718) (exprs!6065 setElem!42536)))))

(assert (=> d!1963370 (= (forall!15300 (exprs!6065 setElem!42536) lambda!342368) e!3806786)))

(declare-fun b!6257811 () Bool)

(declare-fun e!3806787 () Bool)

(assert (=> b!6257811 (= e!3806786 e!3806787)))

(declare-fun res!2582507 () Bool)

(assert (=> b!6257811 (=> (not res!2582507) (not e!3806787))))

(assert (=> b!6257811 (= res!2582507 (dynLambda!25571 lambda!342368 (h!71166 (exprs!6065 setElem!42536))))))

(declare-fun b!6257812 () Bool)

(assert (=> b!6257812 (= e!3806787 (forall!15300 (t!378392 (exprs!6065 setElem!42536)) lambda!342368))))

(assert (= (and d!1963370 (not res!2582506)) b!6257811))

(assert (= (and b!6257811 res!2582507) b!6257812))

(declare-fun b_lambda!238151 () Bool)

(assert (=> (not b_lambda!238151) (not b!6257811)))

(declare-fun m!7080732 () Bool)

(assert (=> b!6257811 m!7080732))

(declare-fun m!7080734 () Bool)

(assert (=> b!6257812 m!7080734))

(assert (=> d!1962576 d!1963370))

(declare-fun d!1963372 () Bool)

(declare-fun c!1133040 () Bool)

(assert (=> d!1963372 (= c!1133040 (isEmpty!36746 (tail!11947 (t!378394 s!2326))))))

(declare-fun e!3806788 () Bool)

(assert (=> d!1963372 (= (matchZipper!2193 (derivationStepZipper!2147 lt!2349552 (head!12862 (t!378394 s!2326))) (tail!11947 (t!378394 s!2326))) e!3806788)))

(declare-fun b!6257813 () Bool)

(assert (=> b!6257813 (= e!3806788 (nullableZipper!1951 (derivationStepZipper!2147 lt!2349552 (head!12862 (t!378394 s!2326)))))))

(declare-fun b!6257814 () Bool)

(assert (=> b!6257814 (= e!3806788 (matchZipper!2193 (derivationStepZipper!2147 (derivationStepZipper!2147 lt!2349552 (head!12862 (t!378394 s!2326))) (head!12862 (tail!11947 (t!378394 s!2326)))) (tail!11947 (tail!11947 (t!378394 s!2326)))))))

(assert (= (and d!1963372 c!1133040) b!6257813))

(assert (= (and d!1963372 (not c!1133040)) b!6257814))

(assert (=> d!1963372 m!7078806))

(assert (=> d!1963372 m!7080100))

(assert (=> b!6257813 m!7079236))

(declare-fun m!7080736 () Bool)

(assert (=> b!6257813 m!7080736))

(assert (=> b!6257814 m!7078806))

(assert (=> b!6257814 m!7080104))

(assert (=> b!6257814 m!7079236))

(assert (=> b!6257814 m!7080104))

(declare-fun m!7080738 () Bool)

(assert (=> b!6257814 m!7080738))

(assert (=> b!6257814 m!7078806))

(assert (=> b!6257814 m!7080108))

(assert (=> b!6257814 m!7080738))

(assert (=> b!6257814 m!7080108))

(declare-fun m!7080740 () Bool)

(assert (=> b!6257814 m!7080740))

(assert (=> b!6256380 d!1963372))

(declare-fun bs!1558950 () Bool)

(declare-fun d!1963374 () Bool)

(assert (= bs!1558950 (and d!1963374 d!1963266)))

(declare-fun lambda!342528 () Int)

(assert (=> bs!1558950 (= lambda!342528 lambda!342511)))

(declare-fun bs!1558951 () Bool)

(assert (= bs!1558951 (and d!1963374 b!6255545)))

(assert (=> bs!1558951 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342528 lambda!342315))))

(declare-fun bs!1558952 () Bool)

(assert (= bs!1558952 (and d!1963374 d!1963338)))

(assert (=> bs!1558952 (= lambda!342528 lambda!342520)))

(declare-fun bs!1558953 () Bool)

(assert (= bs!1558953 (and d!1963374 d!1963216)))

(assert (=> bs!1558953 (= lambda!342528 lambda!342495)))

(declare-fun bs!1558954 () Bool)

(assert (= bs!1558954 (and d!1963374 d!1963296)))

(assert (=> bs!1558954 (= lambda!342528 lambda!342513)))

(declare-fun bs!1558955 () Bool)

(assert (= bs!1558955 (and d!1963374 d!1963088)))

(assert (=> bs!1558955 (= lambda!342528 lambda!342477)))

(declare-fun bs!1558956 () Bool)

(assert (= bs!1558956 (and d!1963374 d!1963138)))

(assert (=> bs!1558956 (= (= (head!12862 (t!378394 s!2326)) (head!12862 s!2326)) (= lambda!342528 lambda!342481))))

(declare-fun bs!1558957 () Bool)

(assert (= bs!1558957 (and d!1963374 d!1963164)))

(assert (=> bs!1558957 (= lambda!342528 lambda!342484)))

(declare-fun bs!1558958 () Bool)

(assert (= bs!1558958 (and d!1963374 d!1963068)))

(assert (=> bs!1558958 (= lambda!342528 lambda!342475)))

(declare-fun bs!1558959 () Bool)

(assert (= bs!1558959 (and d!1963374 d!1962614)))

(assert (=> bs!1558959 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342528 lambda!342390))))

(declare-fun bs!1558960 () Bool)

(assert (= bs!1558960 (and d!1963374 d!1963282)))

(assert (=> bs!1558960 (= lambda!342528 lambda!342512)))

(declare-fun bs!1558961 () Bool)

(assert (= bs!1558961 (and d!1963374 d!1962540)))

(assert (=> bs!1558961 (= (= (head!12862 (t!378394 s!2326)) (h!71168 s!2326)) (= lambda!342528 lambda!342367))))

(declare-fun bs!1558962 () Bool)

(assert (= bs!1558962 (and d!1963374 d!1963124)))

(assert (=> bs!1558962 (= lambda!342528 lambda!342479)))

(assert (=> d!1963374 true))

(assert (=> d!1963374 (= (derivationStepZipper!2147 lt!2349552 (head!12862 (t!378394 s!2326))) (flatMap!1686 lt!2349552 lambda!342528))))

(declare-fun bs!1558963 () Bool)

(assert (= bs!1558963 d!1963374))

(declare-fun m!7080742 () Bool)

(assert (=> bs!1558963 m!7080742))

(assert (=> b!6256380 d!1963374))

(assert (=> b!6256380 d!1963070))

(assert (=> b!6256380 d!1963072))

(declare-fun c!1133041 () Bool)

(declare-fun call!528252 () Bool)

(declare-fun c!1133042 () Bool)

(declare-fun bm!528245 () Bool)

(assert (=> bm!528245 (= call!528252 (validRegex!7917 (ite c!1133042 (reg!16510 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))) (ite c!1133041 (regOne!32875 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))) (regOne!32874 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292))))))))))

(declare-fun b!6257815 () Bool)

(declare-fun e!3806792 () Bool)

(declare-fun call!528251 () Bool)

(assert (=> b!6257815 (= e!3806792 call!528251)))

(declare-fun bm!528246 () Bool)

(declare-fun call!528250 () Bool)

(assert (=> bm!528246 (= call!528250 call!528252)))

(declare-fun b!6257816 () Bool)

(declare-fun e!3806791 () Bool)

(declare-fun e!3806794 () Bool)

(assert (=> b!6257816 (= e!3806791 e!3806794)))

(declare-fun res!2582510 () Bool)

(assert (=> b!6257816 (= res!2582510 (not (nullable!6174 (reg!16510 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))))))))

(assert (=> b!6257816 (=> (not res!2582510) (not e!3806794))))

(declare-fun b!6257817 () Bool)

(declare-fun e!3806795 () Bool)

(assert (=> b!6257817 (= e!3806791 e!3806795)))

(assert (=> b!6257817 (= c!1133041 ((_ is Union!16181) (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))))))

(declare-fun b!6257818 () Bool)

(declare-fun e!3806790 () Bool)

(declare-fun e!3806793 () Bool)

(assert (=> b!6257818 (= e!3806790 e!3806793)))

(declare-fun res!2582511 () Bool)

(assert (=> b!6257818 (=> (not res!2582511) (not e!3806793))))

(assert (=> b!6257818 (= res!2582511 call!528250)))

(declare-fun d!1963376 () Bool)

(declare-fun res!2582509 () Bool)

(declare-fun e!3806789 () Bool)

(assert (=> d!1963376 (=> res!2582509 e!3806789)))

(assert (=> d!1963376 (= res!2582509 ((_ is ElementMatch!16181) (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))))))

(assert (=> d!1963376 (= (validRegex!7917 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))) e!3806789)))

(declare-fun b!6257819 () Bool)

(assert (=> b!6257819 (= e!3806794 call!528252)))

(declare-fun b!6257820 () Bool)

(assert (=> b!6257820 (= e!3806793 call!528251)))

(declare-fun b!6257821 () Bool)

(declare-fun res!2582512 () Bool)

(assert (=> b!6257821 (=> res!2582512 e!3806790)))

(assert (=> b!6257821 (= res!2582512 (not ((_ is Concat!25026) (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292))))))))

(assert (=> b!6257821 (= e!3806795 e!3806790)))

(declare-fun b!6257822 () Bool)

(declare-fun res!2582508 () Bool)

(assert (=> b!6257822 (=> (not res!2582508) (not e!3806792))))

(assert (=> b!6257822 (= res!2582508 call!528250)))

(assert (=> b!6257822 (= e!3806795 e!3806792)))

(declare-fun bm!528247 () Bool)

(assert (=> bm!528247 (= call!528251 (validRegex!7917 (ite c!1133041 (regTwo!32875 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))) (regTwo!32874 (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))))))))

(declare-fun b!6257823 () Bool)

(assert (=> b!6257823 (= e!3806789 e!3806791)))

(assert (=> b!6257823 (= c!1133042 ((_ is Star!16181) (ite c!1132640 (reg!16510 r!7292) (ite c!1132639 (regOne!32875 r!7292) (regOne!32874 r!7292)))))))

(assert (= (and d!1963376 (not res!2582509)) b!6257823))

(assert (= (and b!6257823 c!1133042) b!6257816))

(assert (= (and b!6257823 (not c!1133042)) b!6257817))

(assert (= (and b!6257816 res!2582510) b!6257819))

(assert (= (and b!6257817 c!1133041) b!6257822))

(assert (= (and b!6257817 (not c!1133041)) b!6257821))

(assert (= (and b!6257822 res!2582508) b!6257815))

(assert (= (and b!6257821 (not res!2582512)) b!6257818))

(assert (= (and b!6257818 res!2582511) b!6257820))

(assert (= (or b!6257815 b!6257820) bm!528247))

(assert (= (or b!6257822 b!6257818) bm!528246))

(assert (= (or b!6257819 bm!528246) bm!528245))

(declare-fun m!7080744 () Bool)

(assert (=> bm!528245 m!7080744))

(declare-fun m!7080746 () Bool)

(assert (=> b!6257816 m!7080746))

(declare-fun m!7080748 () Bool)

(assert (=> bm!528247 m!7080748))

(assert (=> bm!527963 d!1963376))

(declare-fun d!1963378 () Bool)

(assert (=> d!1963378 (= (isEmpty!36742 (t!378392 (unfocusZipperList!1602 zl!343))) ((_ is Nil!64718) (t!378392 (unfocusZipperList!1602 zl!343))))))

(assert (=> b!6256142 d!1963378))

(declare-fun bs!1558964 () Bool)

(declare-fun d!1963380 () Bool)

(assert (= bs!1558964 (and d!1963380 d!1963262)))

(declare-fun lambda!342529 () Int)

(assert (=> bs!1558964 (= lambda!342529 lambda!342510)))

(declare-fun bs!1558965 () Bool)

(assert (= bs!1558965 (and d!1963380 b!6256372)))

(assert (=> bs!1558965 (not (= lambda!342529 lambda!342404))))

(declare-fun bs!1558966 () Bool)

(assert (= bs!1558966 (and d!1963380 d!1963208)))

(assert (=> bs!1558966 (= lambda!342529 lambda!342492)))

(declare-fun bs!1558967 () Bool)

(assert (= bs!1558967 (and d!1963380 d!1963244)))

(assert (=> bs!1558967 (not (= lambda!342529 lambda!342500))))

(declare-fun bs!1558968 () Bool)

(assert (= bs!1558968 (and d!1963380 d!1963128)))

(assert (=> bs!1558968 (= lambda!342529 lambda!342480)))

(declare-fun bs!1558969 () Bool)

(assert (= bs!1558969 (and d!1963380 b!6257622)))

(assert (=> bs!1558969 (not (= lambda!342529 lambda!342509))))

(declare-fun bs!1558970 () Bool)

(assert (= bs!1558970 (and d!1963380 d!1963362)))

(assert (=> bs!1558970 (not (= lambda!342529 lambda!342525))))

(declare-fun bs!1558971 () Bool)

(assert (= bs!1558971 (and d!1963380 d!1963080)))

(assert (=> bs!1558971 (= lambda!342529 lambda!342476)))

(declare-fun bs!1558972 () Bool)

(assert (= bs!1558972 (and d!1963380 b!6256377)))

(assert (=> bs!1558972 (not (= lambda!342529 lambda!342407))))

(declare-fun bs!1558973 () Bool)

(assert (= bs!1558973 (and d!1963380 d!1963120)))

(assert (=> bs!1558973 (= lambda!342529 lambda!342478)))

(declare-fun bs!1558974 () Bool)

(assert (= bs!1558974 (and d!1963380 d!1963300)))

(assert (=> bs!1558974 (= lambda!342529 lambda!342514)))

(declare-fun bs!1558975 () Bool)

(assert (= bs!1558975 (and d!1963380 d!1963042)))

(assert (=> bs!1558975 (= lambda!342529 lambda!342471)))

(declare-fun bs!1558976 () Bool)

(assert (= bs!1558976 (and d!1963380 d!1963218)))

(assert (=> bs!1558976 (= lambda!342529 lambda!342496)))

(declare-fun bs!1558977 () Bool)

(assert (= bs!1558977 (and d!1963380 b!6256375)))

(assert (=> bs!1558977 (not (= lambda!342529 lambda!342406))))

(declare-fun bs!1558978 () Bool)

(assert (= bs!1558978 (and d!1963380 b!6256370)))

(assert (=> bs!1558978 (not (= lambda!342529 lambda!342403))))

(declare-fun bs!1558979 () Bool)

(assert (= bs!1558979 (and d!1963380 b!6257803)))

(assert (=> bs!1558979 (not (= lambda!342529 lambda!342523))))

(declare-fun bs!1558980 () Bool)

(assert (= bs!1558980 (and d!1963380 d!1963158)))

(assert (=> bs!1558980 (= lambda!342529 lambda!342483)))

(declare-fun bs!1558981 () Bool)

(assert (= bs!1558981 (and d!1963380 d!1963348)))

(assert (=> bs!1558981 (= lambda!342529 lambda!342521)))

(declare-fun bs!1558982 () Bool)

(assert (= bs!1558982 (and d!1963380 b!6257620)))

(assert (=> bs!1558982 (not (= lambda!342529 lambda!342508))))

(declare-fun bs!1558983 () Bool)

(assert (= bs!1558983 (and d!1963380 b!6257805)))

(assert (=> bs!1558983 (not (= lambda!342529 lambda!342524))))

(assert (=> d!1963380 (= (nullableZipper!1951 lt!2349544) (exists!2515 lt!2349544 lambda!342529))))

(declare-fun bs!1558984 () Bool)

(assert (= bs!1558984 d!1963380))

(declare-fun m!7080750 () Bool)

(assert (=> bs!1558984 m!7080750))

(assert (=> b!6255912 d!1963380))

(declare-fun b!6257827 () Bool)

(declare-fun e!3806796 () Bool)

(declare-fun tp!1745711 () Bool)

(declare-fun tp!1745713 () Bool)

(assert (=> b!6257827 (= e!3806796 (and tp!1745711 tp!1745713))))

(declare-fun b!6257825 () Bool)

(declare-fun tp!1745715 () Bool)

(declare-fun tp!1745712 () Bool)

(assert (=> b!6257825 (= e!3806796 (and tp!1745715 tp!1745712))))

(assert (=> b!6256465 (= tp!1745525 e!3806796)))

(declare-fun b!6257826 () Bool)

(declare-fun tp!1745714 () Bool)

(assert (=> b!6257826 (= e!3806796 tp!1745714)))

(declare-fun b!6257824 () Bool)

(assert (=> b!6257824 (= e!3806796 tp_is_empty!41615)))

(assert (= (and b!6256465 ((_ is ElementMatch!16181) (regOne!32874 (regOne!32874 r!7292)))) b!6257824))

(assert (= (and b!6256465 ((_ is Concat!25026) (regOne!32874 (regOne!32874 r!7292)))) b!6257825))

(assert (= (and b!6256465 ((_ is Star!16181) (regOne!32874 (regOne!32874 r!7292)))) b!6257826))

(assert (= (and b!6256465 ((_ is Union!16181) (regOne!32874 (regOne!32874 r!7292)))) b!6257827))

(declare-fun b!6257831 () Bool)

(declare-fun e!3806797 () Bool)

(declare-fun tp!1745716 () Bool)

(declare-fun tp!1745718 () Bool)

(assert (=> b!6257831 (= e!3806797 (and tp!1745716 tp!1745718))))

(declare-fun b!6257829 () Bool)

(declare-fun tp!1745720 () Bool)

(declare-fun tp!1745717 () Bool)

(assert (=> b!6257829 (= e!3806797 (and tp!1745720 tp!1745717))))

(assert (=> b!6256465 (= tp!1745522 e!3806797)))

(declare-fun b!6257830 () Bool)

(declare-fun tp!1745719 () Bool)

(assert (=> b!6257830 (= e!3806797 tp!1745719)))

(declare-fun b!6257828 () Bool)

(assert (=> b!6257828 (= e!3806797 tp_is_empty!41615)))

(assert (= (and b!6256465 ((_ is ElementMatch!16181) (regTwo!32874 (regOne!32874 r!7292)))) b!6257828))

(assert (= (and b!6256465 ((_ is Concat!25026) (regTwo!32874 (regOne!32874 r!7292)))) b!6257829))

(assert (= (and b!6256465 ((_ is Star!16181) (regTwo!32874 (regOne!32874 r!7292)))) b!6257830))

(assert (= (and b!6256465 ((_ is Union!16181) (regTwo!32874 (regOne!32874 r!7292)))) b!6257831))

(declare-fun b!6257835 () Bool)

(declare-fun e!3806798 () Bool)

(declare-fun tp!1745721 () Bool)

(declare-fun tp!1745723 () Bool)

(assert (=> b!6257835 (= e!3806798 (and tp!1745721 tp!1745723))))

(declare-fun b!6257833 () Bool)

(declare-fun tp!1745725 () Bool)

(declare-fun tp!1745722 () Bool)

(assert (=> b!6257833 (= e!3806798 (and tp!1745725 tp!1745722))))

(assert (=> b!6256466 (= tp!1745524 e!3806798)))

(declare-fun b!6257834 () Bool)

(declare-fun tp!1745724 () Bool)

(assert (=> b!6257834 (= e!3806798 tp!1745724)))

(declare-fun b!6257832 () Bool)

(assert (=> b!6257832 (= e!3806798 tp_is_empty!41615)))

(assert (= (and b!6256466 ((_ is ElementMatch!16181) (reg!16510 (regOne!32874 r!7292)))) b!6257832))

(assert (= (and b!6256466 ((_ is Concat!25026) (reg!16510 (regOne!32874 r!7292)))) b!6257833))

(assert (= (and b!6256466 ((_ is Star!16181) (reg!16510 (regOne!32874 r!7292)))) b!6257834))

(assert (= (and b!6256466 ((_ is Union!16181) (reg!16510 (regOne!32874 r!7292)))) b!6257835))

(declare-fun b!6257836 () Bool)

(declare-fun e!3806799 () Bool)

(declare-fun tp!1745726 () Bool)

(declare-fun tp!1745727 () Bool)

(assert (=> b!6257836 (= e!3806799 (and tp!1745726 tp!1745727))))

(assert (=> b!6256459 (= tp!1745515 e!3806799)))

(assert (= (and b!6256459 ((_ is Cons!64718) (exprs!6065 setElem!42542))) b!6257836))

(declare-fun b!6257840 () Bool)

(declare-fun e!3806800 () Bool)

(declare-fun tp!1745728 () Bool)

(declare-fun tp!1745730 () Bool)

(assert (=> b!6257840 (= e!3806800 (and tp!1745728 tp!1745730))))

(declare-fun b!6257838 () Bool)

(declare-fun tp!1745732 () Bool)

(declare-fun tp!1745729 () Bool)

(assert (=> b!6257838 (= e!3806800 (and tp!1745732 tp!1745729))))

(assert (=> b!6256422 (= tp!1745477 e!3806800)))

(declare-fun b!6257839 () Bool)

(declare-fun tp!1745731 () Bool)

(assert (=> b!6257839 (= e!3806800 tp!1745731)))

(declare-fun b!6257837 () Bool)

(assert (=> b!6257837 (= e!3806800 tp_is_empty!41615)))

(assert (= (and b!6256422 ((_ is ElementMatch!16181) (h!71166 (exprs!6065 (h!71167 zl!343))))) b!6257837))

(assert (= (and b!6256422 ((_ is Concat!25026) (h!71166 (exprs!6065 (h!71167 zl!343))))) b!6257838))

(assert (= (and b!6256422 ((_ is Star!16181) (h!71166 (exprs!6065 (h!71167 zl!343))))) b!6257839))

(assert (= (and b!6256422 ((_ is Union!16181) (h!71166 (exprs!6065 (h!71167 zl!343))))) b!6257840))

(declare-fun b!6257841 () Bool)

(declare-fun e!3806801 () Bool)

(declare-fun tp!1745733 () Bool)

(declare-fun tp!1745734 () Bool)

(assert (=> b!6257841 (= e!3806801 (and tp!1745733 tp!1745734))))

(assert (=> b!6256422 (= tp!1745478 e!3806801)))

(assert (= (and b!6256422 ((_ is Cons!64718) (t!378392 (exprs!6065 (h!71167 zl!343))))) b!6257841))

(declare-fun condSetEmpty!42554 () Bool)

(assert (=> setNonEmpty!42542 (= condSetEmpty!42554 (= setRest!42542 ((as const (Array Context!11130 Bool)) false)))))

(declare-fun setRes!42554 () Bool)

(assert (=> setNonEmpty!42542 (= tp!1745514 setRes!42554)))

(declare-fun setIsEmpty!42554 () Bool)

(assert (=> setIsEmpty!42554 setRes!42554))

(declare-fun e!3806802 () Bool)

(declare-fun setNonEmpty!42554 () Bool)

(declare-fun setElem!42554 () Context!11130)

(declare-fun tp!1745735 () Bool)

(assert (=> setNonEmpty!42554 (= setRes!42554 (and tp!1745735 (inv!83699 setElem!42554) e!3806802))))

(declare-fun setRest!42554 () (InoxSet Context!11130))

(assert (=> setNonEmpty!42554 (= setRest!42542 ((_ map or) (store ((as const (Array Context!11130 Bool)) false) setElem!42554 true) setRest!42554))))

(declare-fun b!6257842 () Bool)

(declare-fun tp!1745736 () Bool)

(assert (=> b!6257842 (= e!3806802 tp!1745736)))

(assert (= (and setNonEmpty!42542 condSetEmpty!42554) setIsEmpty!42554))

(assert (= (and setNonEmpty!42542 (not condSetEmpty!42554)) setNonEmpty!42554))

(assert (= setNonEmpty!42554 b!6257842))

(declare-fun m!7080752 () Bool)

(assert (=> setNonEmpty!42554 m!7080752))

(declare-fun b!6257846 () Bool)

(declare-fun e!3806803 () Bool)

(declare-fun tp!1745737 () Bool)

(declare-fun tp!1745739 () Bool)

(assert (=> b!6257846 (= e!3806803 (and tp!1745737 tp!1745739))))

(declare-fun b!6257844 () Bool)

(declare-fun tp!1745741 () Bool)

(declare-fun tp!1745738 () Bool)

(assert (=> b!6257844 (= e!3806803 (and tp!1745741 tp!1745738))))

(assert (=> b!6256438 (= tp!1745498 e!3806803)))

(declare-fun b!6257845 () Bool)

(declare-fun tp!1745740 () Bool)

(assert (=> b!6257845 (= e!3806803 tp!1745740)))

(declare-fun b!6257843 () Bool)

(assert (=> b!6257843 (= e!3806803 tp_is_empty!41615)))

(assert (= (and b!6256438 ((_ is ElementMatch!16181) (regOne!32874 (regTwo!32875 r!7292)))) b!6257843))

(assert (= (and b!6256438 ((_ is Concat!25026) (regOne!32874 (regTwo!32875 r!7292)))) b!6257844))

(assert (= (and b!6256438 ((_ is Star!16181) (regOne!32874 (regTwo!32875 r!7292)))) b!6257845))

(assert (= (and b!6256438 ((_ is Union!16181) (regOne!32874 (regTwo!32875 r!7292)))) b!6257846))

(declare-fun b!6257850 () Bool)

(declare-fun e!3806804 () Bool)

(declare-fun tp!1745742 () Bool)

(declare-fun tp!1745744 () Bool)

(assert (=> b!6257850 (= e!3806804 (and tp!1745742 tp!1745744))))

(declare-fun b!6257848 () Bool)

(declare-fun tp!1745746 () Bool)

(declare-fun tp!1745743 () Bool)

(assert (=> b!6257848 (= e!3806804 (and tp!1745746 tp!1745743))))

(assert (=> b!6256438 (= tp!1745495 e!3806804)))

(declare-fun b!6257849 () Bool)

(declare-fun tp!1745745 () Bool)

(assert (=> b!6257849 (= e!3806804 tp!1745745)))

(declare-fun b!6257847 () Bool)

(assert (=> b!6257847 (= e!3806804 tp_is_empty!41615)))

(assert (= (and b!6256438 ((_ is ElementMatch!16181) (regTwo!32874 (regTwo!32875 r!7292)))) b!6257847))

(assert (= (and b!6256438 ((_ is Concat!25026) (regTwo!32874 (regTwo!32875 r!7292)))) b!6257848))

(assert (= (and b!6256438 ((_ is Star!16181) (regTwo!32874 (regTwo!32875 r!7292)))) b!6257849))

(assert (= (and b!6256438 ((_ is Union!16181) (regTwo!32874 (regTwo!32875 r!7292)))) b!6257850))

(declare-fun b!6257854 () Bool)

(declare-fun e!3806805 () Bool)

(declare-fun tp!1745747 () Bool)

(declare-fun tp!1745749 () Bool)

(assert (=> b!6257854 (= e!3806805 (and tp!1745747 tp!1745749))))

(declare-fun b!6257852 () Bool)

(declare-fun tp!1745751 () Bool)

(declare-fun tp!1745748 () Bool)

(assert (=> b!6257852 (= e!3806805 (and tp!1745751 tp!1745748))))

(assert (=> b!6256467 (= tp!1745521 e!3806805)))

(declare-fun b!6257853 () Bool)

(declare-fun tp!1745750 () Bool)

(assert (=> b!6257853 (= e!3806805 tp!1745750)))

(declare-fun b!6257851 () Bool)

(assert (=> b!6257851 (= e!3806805 tp_is_empty!41615)))

(assert (= (and b!6256467 ((_ is ElementMatch!16181) (regOne!32875 (regOne!32874 r!7292)))) b!6257851))

(assert (= (and b!6256467 ((_ is Concat!25026) (regOne!32875 (regOne!32874 r!7292)))) b!6257852))

(assert (= (and b!6256467 ((_ is Star!16181) (regOne!32875 (regOne!32874 r!7292)))) b!6257853))

(assert (= (and b!6256467 ((_ is Union!16181) (regOne!32875 (regOne!32874 r!7292)))) b!6257854))

(declare-fun b!6257858 () Bool)

(declare-fun e!3806806 () Bool)

(declare-fun tp!1745752 () Bool)

(declare-fun tp!1745754 () Bool)

(assert (=> b!6257858 (= e!3806806 (and tp!1745752 tp!1745754))))

(declare-fun b!6257856 () Bool)

(declare-fun tp!1745756 () Bool)

(declare-fun tp!1745753 () Bool)

(assert (=> b!6257856 (= e!3806806 (and tp!1745756 tp!1745753))))

(assert (=> b!6256467 (= tp!1745523 e!3806806)))

(declare-fun b!6257857 () Bool)

(declare-fun tp!1745755 () Bool)

(assert (=> b!6257857 (= e!3806806 tp!1745755)))

(declare-fun b!6257855 () Bool)

(assert (=> b!6257855 (= e!3806806 tp_is_empty!41615)))

(assert (= (and b!6256467 ((_ is ElementMatch!16181) (regTwo!32875 (regOne!32874 r!7292)))) b!6257855))

(assert (= (and b!6256467 ((_ is Concat!25026) (regTwo!32875 (regOne!32874 r!7292)))) b!6257856))

(assert (= (and b!6256467 ((_ is Star!16181) (regTwo!32875 (regOne!32874 r!7292)))) b!6257857))

(assert (= (and b!6256467 ((_ is Union!16181) (regTwo!32875 (regOne!32874 r!7292)))) b!6257858))

(declare-fun b!6257862 () Bool)

(declare-fun e!3806807 () Bool)

(declare-fun tp!1745757 () Bool)

(declare-fun tp!1745759 () Bool)

(assert (=> b!6257862 (= e!3806807 (and tp!1745757 tp!1745759))))

(declare-fun b!6257860 () Bool)

(declare-fun tp!1745761 () Bool)

(declare-fun tp!1745758 () Bool)

(assert (=> b!6257860 (= e!3806807 (and tp!1745761 tp!1745758))))

(assert (=> b!6256439 (= tp!1745497 e!3806807)))

(declare-fun b!6257861 () Bool)

(declare-fun tp!1745760 () Bool)

(assert (=> b!6257861 (= e!3806807 tp!1745760)))

(declare-fun b!6257859 () Bool)

(assert (=> b!6257859 (= e!3806807 tp_is_empty!41615)))

(assert (= (and b!6256439 ((_ is ElementMatch!16181) (reg!16510 (regTwo!32875 r!7292)))) b!6257859))

(assert (= (and b!6256439 ((_ is Concat!25026) (reg!16510 (regTwo!32875 r!7292)))) b!6257860))

(assert (= (and b!6256439 ((_ is Star!16181) (reg!16510 (regTwo!32875 r!7292)))) b!6257861))

(assert (= (and b!6256439 ((_ is Union!16181) (reg!16510 (regTwo!32875 r!7292)))) b!6257862))

(declare-fun b!6257863 () Bool)

(declare-fun e!3806808 () Bool)

(declare-fun tp!1745762 () Bool)

(assert (=> b!6257863 (= e!3806808 (and tp_is_empty!41615 tp!1745762))))

(assert (=> b!6256453 (= tp!1745507 e!3806808)))

(assert (= (and b!6256453 ((_ is Cons!64720) (t!378394 (t!378394 s!2326)))) b!6257863))

(declare-fun b!6257867 () Bool)

(declare-fun e!3806809 () Bool)

(declare-fun tp!1745763 () Bool)

(declare-fun tp!1745765 () Bool)

(assert (=> b!6257867 (= e!3806809 (and tp!1745763 tp!1745765))))

(declare-fun b!6257865 () Bool)

(declare-fun tp!1745767 () Bool)

(declare-fun tp!1745764 () Bool)

(assert (=> b!6257865 (= e!3806809 (and tp!1745767 tp!1745764))))

(assert (=> b!6256440 (= tp!1745494 e!3806809)))

(declare-fun b!6257866 () Bool)

(declare-fun tp!1745766 () Bool)

(assert (=> b!6257866 (= e!3806809 tp!1745766)))

(declare-fun b!6257864 () Bool)

(assert (=> b!6257864 (= e!3806809 tp_is_empty!41615)))

(assert (= (and b!6256440 ((_ is ElementMatch!16181) (regOne!32875 (regTwo!32875 r!7292)))) b!6257864))

(assert (= (and b!6256440 ((_ is Concat!25026) (regOne!32875 (regTwo!32875 r!7292)))) b!6257865))

(assert (= (and b!6256440 ((_ is Star!16181) (regOne!32875 (regTwo!32875 r!7292)))) b!6257866))

(assert (= (and b!6256440 ((_ is Union!16181) (regOne!32875 (regTwo!32875 r!7292)))) b!6257867))

(declare-fun b!6257871 () Bool)

(declare-fun e!3806810 () Bool)

(declare-fun tp!1745768 () Bool)

(declare-fun tp!1745770 () Bool)

(assert (=> b!6257871 (= e!3806810 (and tp!1745768 tp!1745770))))

(declare-fun b!6257869 () Bool)

(declare-fun tp!1745772 () Bool)

(declare-fun tp!1745769 () Bool)

(assert (=> b!6257869 (= e!3806810 (and tp!1745772 tp!1745769))))

(assert (=> b!6256440 (= tp!1745496 e!3806810)))

(declare-fun b!6257870 () Bool)

(declare-fun tp!1745771 () Bool)

(assert (=> b!6257870 (= e!3806810 tp!1745771)))

(declare-fun b!6257868 () Bool)

(assert (=> b!6257868 (= e!3806810 tp_is_empty!41615)))

(assert (= (and b!6256440 ((_ is ElementMatch!16181) (regTwo!32875 (regTwo!32875 r!7292)))) b!6257868))

(assert (= (and b!6256440 ((_ is Concat!25026) (regTwo!32875 (regTwo!32875 r!7292)))) b!6257869))

(assert (= (and b!6256440 ((_ is Star!16181) (regTwo!32875 (regTwo!32875 r!7292)))) b!6257870))

(assert (= (and b!6256440 ((_ is Union!16181) (regTwo!32875 (regTwo!32875 r!7292)))) b!6257871))

(declare-fun b!6257873 () Bool)

(declare-fun e!3806812 () Bool)

(declare-fun tp!1745773 () Bool)

(assert (=> b!6257873 (= e!3806812 tp!1745773)))

(declare-fun e!3806811 () Bool)

(declare-fun b!6257872 () Bool)

(declare-fun tp!1745774 () Bool)

(assert (=> b!6257872 (= e!3806811 (and (inv!83699 (h!71167 (t!378393 (t!378393 zl!343)))) e!3806812 tp!1745774))))

(assert (=> b!6256447 (= tp!1745504 e!3806811)))

(assert (= b!6257872 b!6257873))

(assert (= (and b!6256447 ((_ is Cons!64719) (t!378393 (t!378393 zl!343)))) b!6257872))

(declare-fun m!7080754 () Bool)

(assert (=> b!6257872 m!7080754))

(declare-fun b!6257877 () Bool)

(declare-fun e!3806813 () Bool)

(declare-fun tp!1745775 () Bool)

(declare-fun tp!1745777 () Bool)

(assert (=> b!6257877 (= e!3806813 (and tp!1745775 tp!1745777))))

(declare-fun b!6257875 () Bool)

(declare-fun tp!1745779 () Bool)

(declare-fun tp!1745776 () Bool)

(assert (=> b!6257875 (= e!3806813 (and tp!1745779 tp!1745776))))

(assert (=> b!6256454 (= tp!1745508 e!3806813)))

(declare-fun b!6257876 () Bool)

(declare-fun tp!1745778 () Bool)

(assert (=> b!6257876 (= e!3806813 tp!1745778)))

(declare-fun b!6257874 () Bool)

(assert (=> b!6257874 (= e!3806813 tp_is_empty!41615)))

(assert (= (and b!6256454 ((_ is ElementMatch!16181) (h!71166 (exprs!6065 setElem!42536)))) b!6257874))

(assert (= (and b!6256454 ((_ is Concat!25026) (h!71166 (exprs!6065 setElem!42536)))) b!6257875))

(assert (= (and b!6256454 ((_ is Star!16181) (h!71166 (exprs!6065 setElem!42536)))) b!6257876))

(assert (= (and b!6256454 ((_ is Union!16181) (h!71166 (exprs!6065 setElem!42536)))) b!6257877))

(declare-fun b!6257878 () Bool)

(declare-fun e!3806814 () Bool)

(declare-fun tp!1745780 () Bool)

(declare-fun tp!1745781 () Bool)

(assert (=> b!6257878 (= e!3806814 (and tp!1745780 tp!1745781))))

(assert (=> b!6256454 (= tp!1745509 e!3806814)))

(assert (= (and b!6256454 ((_ is Cons!64718) (t!378392 (exprs!6065 setElem!42536)))) b!6257878))

(declare-fun b!6257879 () Bool)

(declare-fun e!3806815 () Bool)

(declare-fun tp!1745782 () Bool)

(declare-fun tp!1745783 () Bool)

(assert (=> b!6257879 (= e!3806815 (and tp!1745782 tp!1745783))))

(assert (=> b!6256448 (= tp!1745503 e!3806815)))

(assert (= (and b!6256448 ((_ is Cons!64718) (exprs!6065 (h!71167 (t!378393 zl!343))))) b!6257879))

(declare-fun b!6257883 () Bool)

(declare-fun e!3806816 () Bool)

(declare-fun tp!1745784 () Bool)

(declare-fun tp!1745786 () Bool)

(assert (=> b!6257883 (= e!3806816 (and tp!1745784 tp!1745786))))

(declare-fun b!6257881 () Bool)

(declare-fun tp!1745788 () Bool)

(declare-fun tp!1745785 () Bool)

(assert (=> b!6257881 (= e!3806816 (and tp!1745788 tp!1745785))))

(assert (=> b!6256469 (= tp!1745530 e!3806816)))

(declare-fun b!6257882 () Bool)

(declare-fun tp!1745787 () Bool)

(assert (=> b!6257882 (= e!3806816 tp!1745787)))

(declare-fun b!6257880 () Bool)

(assert (=> b!6257880 (= e!3806816 tp_is_empty!41615)))

(assert (= (and b!6256469 ((_ is ElementMatch!16181) (regOne!32874 (regTwo!32874 r!7292)))) b!6257880))

(assert (= (and b!6256469 ((_ is Concat!25026) (regOne!32874 (regTwo!32874 r!7292)))) b!6257881))

(assert (= (and b!6256469 ((_ is Star!16181) (regOne!32874 (regTwo!32874 r!7292)))) b!6257882))

(assert (= (and b!6256469 ((_ is Union!16181) (regOne!32874 (regTwo!32874 r!7292)))) b!6257883))

(declare-fun b!6257887 () Bool)

(declare-fun e!3806817 () Bool)

(declare-fun tp!1745789 () Bool)

(declare-fun tp!1745791 () Bool)

(assert (=> b!6257887 (= e!3806817 (and tp!1745789 tp!1745791))))

(declare-fun b!6257885 () Bool)

(declare-fun tp!1745793 () Bool)

(declare-fun tp!1745790 () Bool)

(assert (=> b!6257885 (= e!3806817 (and tp!1745793 tp!1745790))))

(assert (=> b!6256469 (= tp!1745527 e!3806817)))

(declare-fun b!6257886 () Bool)

(declare-fun tp!1745792 () Bool)

(assert (=> b!6257886 (= e!3806817 tp!1745792)))

(declare-fun b!6257884 () Bool)

(assert (=> b!6257884 (= e!3806817 tp_is_empty!41615)))

(assert (= (and b!6256469 ((_ is ElementMatch!16181) (regTwo!32874 (regTwo!32874 r!7292)))) b!6257884))

(assert (= (and b!6256469 ((_ is Concat!25026) (regTwo!32874 (regTwo!32874 r!7292)))) b!6257885))

(assert (= (and b!6256469 ((_ is Star!16181) (regTwo!32874 (regTwo!32874 r!7292)))) b!6257886))

(assert (= (and b!6256469 ((_ is Union!16181) (regTwo!32874 (regTwo!32874 r!7292)))) b!6257887))

(declare-fun b!6257891 () Bool)

(declare-fun e!3806818 () Bool)

(declare-fun tp!1745794 () Bool)

(declare-fun tp!1745796 () Bool)

(assert (=> b!6257891 (= e!3806818 (and tp!1745794 tp!1745796))))

(declare-fun b!6257889 () Bool)

(declare-fun tp!1745798 () Bool)

(declare-fun tp!1745795 () Bool)

(assert (=> b!6257889 (= e!3806818 (and tp!1745798 tp!1745795))))

(assert (=> b!6256471 (= tp!1745526 e!3806818)))

(declare-fun b!6257890 () Bool)

(declare-fun tp!1745797 () Bool)

(assert (=> b!6257890 (= e!3806818 tp!1745797)))

(declare-fun b!6257888 () Bool)

(assert (=> b!6257888 (= e!3806818 tp_is_empty!41615)))

(assert (= (and b!6256471 ((_ is ElementMatch!16181) (regOne!32875 (regTwo!32874 r!7292)))) b!6257888))

(assert (= (and b!6256471 ((_ is Concat!25026) (regOne!32875 (regTwo!32874 r!7292)))) b!6257889))

(assert (= (and b!6256471 ((_ is Star!16181) (regOne!32875 (regTwo!32874 r!7292)))) b!6257890))

(assert (= (and b!6256471 ((_ is Union!16181) (regOne!32875 (regTwo!32874 r!7292)))) b!6257891))

(declare-fun b!6257895 () Bool)

(declare-fun e!3806819 () Bool)

(declare-fun tp!1745799 () Bool)

(declare-fun tp!1745801 () Bool)

(assert (=> b!6257895 (= e!3806819 (and tp!1745799 tp!1745801))))

(declare-fun b!6257893 () Bool)

(declare-fun tp!1745803 () Bool)

(declare-fun tp!1745800 () Bool)

(assert (=> b!6257893 (= e!3806819 (and tp!1745803 tp!1745800))))

(assert (=> b!6256471 (= tp!1745528 e!3806819)))

(declare-fun b!6257894 () Bool)

(declare-fun tp!1745802 () Bool)

(assert (=> b!6257894 (= e!3806819 tp!1745802)))

(declare-fun b!6257892 () Bool)

(assert (=> b!6257892 (= e!3806819 tp_is_empty!41615)))

(assert (= (and b!6256471 ((_ is ElementMatch!16181) (regTwo!32875 (regTwo!32874 r!7292)))) b!6257892))

(assert (= (and b!6256471 ((_ is Concat!25026) (regTwo!32875 (regTwo!32874 r!7292)))) b!6257893))

(assert (= (and b!6256471 ((_ is Star!16181) (regTwo!32875 (regTwo!32874 r!7292)))) b!6257894))

(assert (= (and b!6256471 ((_ is Union!16181) (regTwo!32875 (regTwo!32874 r!7292)))) b!6257895))

(declare-fun b!6257899 () Bool)

(declare-fun e!3806820 () Bool)

(declare-fun tp!1745804 () Bool)

(declare-fun tp!1745806 () Bool)

(assert (=> b!6257899 (= e!3806820 (and tp!1745804 tp!1745806))))

(declare-fun b!6257897 () Bool)

(declare-fun tp!1745808 () Bool)

(declare-fun tp!1745805 () Bool)

(assert (=> b!6257897 (= e!3806820 (and tp!1745808 tp!1745805))))

(assert (=> b!6256470 (= tp!1745529 e!3806820)))

(declare-fun b!6257898 () Bool)

(declare-fun tp!1745807 () Bool)

(assert (=> b!6257898 (= e!3806820 tp!1745807)))

(declare-fun b!6257896 () Bool)

(assert (=> b!6257896 (= e!3806820 tp_is_empty!41615)))

(assert (= (and b!6256470 ((_ is ElementMatch!16181) (reg!16510 (regTwo!32874 r!7292)))) b!6257896))

(assert (= (and b!6256470 ((_ is Concat!25026) (reg!16510 (regTwo!32874 r!7292)))) b!6257897))

(assert (= (and b!6256470 ((_ is Star!16181) (reg!16510 (regTwo!32874 r!7292)))) b!6257898))

(assert (= (and b!6256470 ((_ is Union!16181) (reg!16510 (regTwo!32874 r!7292)))) b!6257899))

(declare-fun b!6257903 () Bool)

(declare-fun e!3806821 () Bool)

(declare-fun tp!1745809 () Bool)

(declare-fun tp!1745811 () Bool)

(assert (=> b!6257903 (= e!3806821 (and tp!1745809 tp!1745811))))

(declare-fun b!6257901 () Bool)

(declare-fun tp!1745813 () Bool)

(declare-fun tp!1745810 () Bool)

(assert (=> b!6257901 (= e!3806821 (and tp!1745813 tp!1745810))))

(assert (=> b!6256461 (= tp!1745520 e!3806821)))

(declare-fun b!6257902 () Bool)

(declare-fun tp!1745812 () Bool)

(assert (=> b!6257902 (= e!3806821 tp!1745812)))

(declare-fun b!6257900 () Bool)

(assert (=> b!6257900 (= e!3806821 tp_is_empty!41615)))

(assert (= (and b!6256461 ((_ is ElementMatch!16181) (regOne!32874 (reg!16510 r!7292)))) b!6257900))

(assert (= (and b!6256461 ((_ is Concat!25026) (regOne!32874 (reg!16510 r!7292)))) b!6257901))

(assert (= (and b!6256461 ((_ is Star!16181) (regOne!32874 (reg!16510 r!7292)))) b!6257902))

(assert (= (and b!6256461 ((_ is Union!16181) (regOne!32874 (reg!16510 r!7292)))) b!6257903))

(declare-fun b!6257907 () Bool)

(declare-fun e!3806822 () Bool)

(declare-fun tp!1745814 () Bool)

(declare-fun tp!1745816 () Bool)

(assert (=> b!6257907 (= e!3806822 (and tp!1745814 tp!1745816))))

(declare-fun b!6257905 () Bool)

(declare-fun tp!1745818 () Bool)

(declare-fun tp!1745815 () Bool)

(assert (=> b!6257905 (= e!3806822 (and tp!1745818 tp!1745815))))

(assert (=> b!6256461 (= tp!1745517 e!3806822)))

(declare-fun b!6257906 () Bool)

(declare-fun tp!1745817 () Bool)

(assert (=> b!6257906 (= e!3806822 tp!1745817)))

(declare-fun b!6257904 () Bool)

(assert (=> b!6257904 (= e!3806822 tp_is_empty!41615)))

(assert (= (and b!6256461 ((_ is ElementMatch!16181) (regTwo!32874 (reg!16510 r!7292)))) b!6257904))

(assert (= (and b!6256461 ((_ is Concat!25026) (regTwo!32874 (reg!16510 r!7292)))) b!6257905))

(assert (= (and b!6256461 ((_ is Star!16181) (regTwo!32874 (reg!16510 r!7292)))) b!6257906))

(assert (= (and b!6256461 ((_ is Union!16181) (regTwo!32874 (reg!16510 r!7292)))) b!6257907))

(declare-fun b!6257911 () Bool)

(declare-fun e!3806823 () Bool)

(declare-fun tp!1745819 () Bool)

(declare-fun tp!1745821 () Bool)

(assert (=> b!6257911 (= e!3806823 (and tp!1745819 tp!1745821))))

(declare-fun b!6257909 () Bool)

(declare-fun tp!1745823 () Bool)

(declare-fun tp!1745820 () Bool)

(assert (=> b!6257909 (= e!3806823 (and tp!1745823 tp!1745820))))

(assert (=> b!6256463 (= tp!1745516 e!3806823)))

(declare-fun b!6257910 () Bool)

(declare-fun tp!1745822 () Bool)

(assert (=> b!6257910 (= e!3806823 tp!1745822)))

(declare-fun b!6257908 () Bool)

(assert (=> b!6257908 (= e!3806823 tp_is_empty!41615)))

(assert (= (and b!6256463 ((_ is ElementMatch!16181) (regOne!32875 (reg!16510 r!7292)))) b!6257908))

(assert (= (and b!6256463 ((_ is Concat!25026) (regOne!32875 (reg!16510 r!7292)))) b!6257909))

(assert (= (and b!6256463 ((_ is Star!16181) (regOne!32875 (reg!16510 r!7292)))) b!6257910))

(assert (= (and b!6256463 ((_ is Union!16181) (regOne!32875 (reg!16510 r!7292)))) b!6257911))

(declare-fun b!6257915 () Bool)

(declare-fun e!3806824 () Bool)

(declare-fun tp!1745824 () Bool)

(declare-fun tp!1745826 () Bool)

(assert (=> b!6257915 (= e!3806824 (and tp!1745824 tp!1745826))))

(declare-fun b!6257913 () Bool)

(declare-fun tp!1745828 () Bool)

(declare-fun tp!1745825 () Bool)

(assert (=> b!6257913 (= e!3806824 (and tp!1745828 tp!1745825))))

(assert (=> b!6256463 (= tp!1745518 e!3806824)))

(declare-fun b!6257914 () Bool)

(declare-fun tp!1745827 () Bool)

(assert (=> b!6257914 (= e!3806824 tp!1745827)))

(declare-fun b!6257912 () Bool)

(assert (=> b!6257912 (= e!3806824 tp_is_empty!41615)))

(assert (= (and b!6256463 ((_ is ElementMatch!16181) (regTwo!32875 (reg!16510 r!7292)))) b!6257912))

(assert (= (and b!6256463 ((_ is Concat!25026) (regTwo!32875 (reg!16510 r!7292)))) b!6257913))

(assert (= (and b!6256463 ((_ is Star!16181) (regTwo!32875 (reg!16510 r!7292)))) b!6257914))

(assert (= (and b!6256463 ((_ is Union!16181) (regTwo!32875 (reg!16510 r!7292)))) b!6257915))

(declare-fun b!6257919 () Bool)

(declare-fun e!3806825 () Bool)

(declare-fun tp!1745829 () Bool)

(declare-fun tp!1745831 () Bool)

(assert (=> b!6257919 (= e!3806825 (and tp!1745829 tp!1745831))))

(declare-fun b!6257917 () Bool)

(declare-fun tp!1745833 () Bool)

(declare-fun tp!1745830 () Bool)

(assert (=> b!6257917 (= e!3806825 (and tp!1745833 tp!1745830))))

(assert (=> b!6256462 (= tp!1745519 e!3806825)))

(declare-fun b!6257918 () Bool)

(declare-fun tp!1745832 () Bool)

(assert (=> b!6257918 (= e!3806825 tp!1745832)))

(declare-fun b!6257916 () Bool)

(assert (=> b!6257916 (= e!3806825 tp_is_empty!41615)))

(assert (= (and b!6256462 ((_ is ElementMatch!16181) (reg!16510 (reg!16510 r!7292)))) b!6257916))

(assert (= (and b!6256462 ((_ is Concat!25026) (reg!16510 (reg!16510 r!7292)))) b!6257917))

(assert (= (and b!6256462 ((_ is Star!16181) (reg!16510 (reg!16510 r!7292)))) b!6257918))

(assert (= (and b!6256462 ((_ is Union!16181) (reg!16510 (reg!16510 r!7292)))) b!6257919))

(declare-fun b!6257923 () Bool)

(declare-fun e!3806826 () Bool)

(declare-fun tp!1745834 () Bool)

(declare-fun tp!1745836 () Bool)

(assert (=> b!6257923 (= e!3806826 (and tp!1745834 tp!1745836))))

(declare-fun b!6257921 () Bool)

(declare-fun tp!1745838 () Bool)

(declare-fun tp!1745835 () Bool)

(assert (=> b!6257921 (= e!3806826 (and tp!1745838 tp!1745835))))

(assert (=> b!6256434 (= tp!1745493 e!3806826)))

(declare-fun b!6257922 () Bool)

(declare-fun tp!1745837 () Bool)

(assert (=> b!6257922 (= e!3806826 tp!1745837)))

(declare-fun b!6257920 () Bool)

(assert (=> b!6257920 (= e!3806826 tp_is_empty!41615)))

(assert (= (and b!6256434 ((_ is ElementMatch!16181) (regOne!32874 (regOne!32875 r!7292)))) b!6257920))

(assert (= (and b!6256434 ((_ is Concat!25026) (regOne!32874 (regOne!32875 r!7292)))) b!6257921))

(assert (= (and b!6256434 ((_ is Star!16181) (regOne!32874 (regOne!32875 r!7292)))) b!6257922))

(assert (= (and b!6256434 ((_ is Union!16181) (regOne!32874 (regOne!32875 r!7292)))) b!6257923))

(declare-fun b!6257927 () Bool)

(declare-fun e!3806827 () Bool)

(declare-fun tp!1745839 () Bool)

(declare-fun tp!1745841 () Bool)

(assert (=> b!6257927 (= e!3806827 (and tp!1745839 tp!1745841))))

(declare-fun b!6257925 () Bool)

(declare-fun tp!1745843 () Bool)

(declare-fun tp!1745840 () Bool)

(assert (=> b!6257925 (= e!3806827 (and tp!1745843 tp!1745840))))

(assert (=> b!6256434 (= tp!1745490 e!3806827)))

(declare-fun b!6257926 () Bool)

(declare-fun tp!1745842 () Bool)

(assert (=> b!6257926 (= e!3806827 tp!1745842)))

(declare-fun b!6257924 () Bool)

(assert (=> b!6257924 (= e!3806827 tp_is_empty!41615)))

(assert (= (and b!6256434 ((_ is ElementMatch!16181) (regTwo!32874 (regOne!32875 r!7292)))) b!6257924))

(assert (= (and b!6256434 ((_ is Concat!25026) (regTwo!32874 (regOne!32875 r!7292)))) b!6257925))

(assert (= (and b!6256434 ((_ is Star!16181) (regTwo!32874 (regOne!32875 r!7292)))) b!6257926))

(assert (= (and b!6256434 ((_ is Union!16181) (regTwo!32874 (regOne!32875 r!7292)))) b!6257927))

(declare-fun b!6257931 () Bool)

(declare-fun e!3806828 () Bool)

(declare-fun tp!1745844 () Bool)

(declare-fun tp!1745846 () Bool)

(assert (=> b!6257931 (= e!3806828 (and tp!1745844 tp!1745846))))

(declare-fun b!6257929 () Bool)

(declare-fun tp!1745848 () Bool)

(declare-fun tp!1745845 () Bool)

(assert (=> b!6257929 (= e!3806828 (and tp!1745848 tp!1745845))))

(assert (=> b!6256436 (= tp!1745489 e!3806828)))

(declare-fun b!6257930 () Bool)

(declare-fun tp!1745847 () Bool)

(assert (=> b!6257930 (= e!3806828 tp!1745847)))

(declare-fun b!6257928 () Bool)

(assert (=> b!6257928 (= e!3806828 tp_is_empty!41615)))

(assert (= (and b!6256436 ((_ is ElementMatch!16181) (regOne!32875 (regOne!32875 r!7292)))) b!6257928))

(assert (= (and b!6256436 ((_ is Concat!25026) (regOne!32875 (regOne!32875 r!7292)))) b!6257929))

(assert (= (and b!6256436 ((_ is Star!16181) (regOne!32875 (regOne!32875 r!7292)))) b!6257930))

(assert (= (and b!6256436 ((_ is Union!16181) (regOne!32875 (regOne!32875 r!7292)))) b!6257931))

(declare-fun b!6257935 () Bool)

(declare-fun e!3806829 () Bool)

(declare-fun tp!1745849 () Bool)

(declare-fun tp!1745851 () Bool)

(assert (=> b!6257935 (= e!3806829 (and tp!1745849 tp!1745851))))

(declare-fun b!6257933 () Bool)

(declare-fun tp!1745853 () Bool)

(declare-fun tp!1745850 () Bool)

(assert (=> b!6257933 (= e!3806829 (and tp!1745853 tp!1745850))))

(assert (=> b!6256436 (= tp!1745491 e!3806829)))

(declare-fun b!6257934 () Bool)

(declare-fun tp!1745852 () Bool)

(assert (=> b!6257934 (= e!3806829 tp!1745852)))

(declare-fun b!6257932 () Bool)

(assert (=> b!6257932 (= e!3806829 tp_is_empty!41615)))

(assert (= (and b!6256436 ((_ is ElementMatch!16181) (regTwo!32875 (regOne!32875 r!7292)))) b!6257932))

(assert (= (and b!6256436 ((_ is Concat!25026) (regTwo!32875 (regOne!32875 r!7292)))) b!6257933))

(assert (= (and b!6256436 ((_ is Star!16181) (regTwo!32875 (regOne!32875 r!7292)))) b!6257934))

(assert (= (and b!6256436 ((_ is Union!16181) (regTwo!32875 (regOne!32875 r!7292)))) b!6257935))

(declare-fun b!6257939 () Bool)

(declare-fun e!3806830 () Bool)

(declare-fun tp!1745854 () Bool)

(declare-fun tp!1745856 () Bool)

(assert (=> b!6257939 (= e!3806830 (and tp!1745854 tp!1745856))))

(declare-fun b!6257937 () Bool)

(declare-fun tp!1745858 () Bool)

(declare-fun tp!1745855 () Bool)

(assert (=> b!6257937 (= e!3806830 (and tp!1745858 tp!1745855))))

(assert (=> b!6256435 (= tp!1745492 e!3806830)))

(declare-fun b!6257938 () Bool)

(declare-fun tp!1745857 () Bool)

(assert (=> b!6257938 (= e!3806830 tp!1745857)))

(declare-fun b!6257936 () Bool)

(assert (=> b!6257936 (= e!3806830 tp_is_empty!41615)))

(assert (= (and b!6256435 ((_ is ElementMatch!16181) (reg!16510 (regOne!32875 r!7292)))) b!6257936))

(assert (= (and b!6256435 ((_ is Concat!25026) (reg!16510 (regOne!32875 r!7292)))) b!6257937))

(assert (= (and b!6256435 ((_ is Star!16181) (reg!16510 (regOne!32875 r!7292)))) b!6257938))

(assert (= (and b!6256435 ((_ is Union!16181) (reg!16510 (regOne!32875 r!7292)))) b!6257939))

(declare-fun b_lambda!238153 () Bool)

(assert (= b_lambda!238147 (or d!1962616 b_lambda!238153)))

(declare-fun bs!1558985 () Bool)

(declare-fun d!1963382 () Bool)

(assert (= bs!1558985 (and d!1963382 d!1962616)))

(assert (=> bs!1558985 (= (dynLambda!25571 lambda!342393 (h!71166 (exprs!6065 (h!71167 zl!343)))) (validRegex!7917 (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(declare-fun m!7080756 () Bool)

(assert (=> bs!1558985 m!7080756))

(assert (=> b!6257801 d!1963382))

(declare-fun b_lambda!238155 () Bool)

(assert (= b_lambda!238141 (or b!6255545 b_lambda!238155)))

(assert (=> d!1963206 d!1962658))

(declare-fun b_lambda!238157 () Bool)

(assert (= b_lambda!238149 (or b!6256370 b_lambda!238157)))

(declare-fun bs!1558986 () Bool)

(declare-fun d!1963384 () Bool)

(assert (= bs!1558986 (and d!1963384 b!6256370)))

(assert (=> bs!1558986 (= (dynLambda!25572 lambda!342403 (h!71167 (t!378393 lt!2349542))) (>= lt!2349700 (contextDepth!199 (h!71167 (t!378393 lt!2349542)))))))

(assert (=> bs!1558986 m!7080700))

(assert (=> b!6257809 d!1963384))

(declare-fun b_lambda!238159 () Bool)

(assert (= b_lambda!238139 (or b!6255545 b_lambda!238159)))

(assert (=> d!1963204 d!1962654))

(declare-fun b_lambda!238161 () Bool)

(assert (= b_lambda!238145 (or d!1962486 b_lambda!238161)))

(declare-fun bs!1558987 () Bool)

(declare-fun d!1963386 () Bool)

(assert (= bs!1558987 (and d!1963386 d!1962486)))

(assert (=> bs!1558987 (= (dynLambda!25571 lambda!342355 (h!71166 (exprs!6065 (h!71167 zl!343)))) (validRegex!7917 (h!71166 (exprs!6065 (h!71167 zl!343)))))))

(assert (=> bs!1558987 m!7080756))

(assert (=> b!6257717 d!1963386))

(declare-fun b_lambda!238163 () Bool)

(assert (= b_lambda!238125 (or d!1962580 b_lambda!238163)))

(declare-fun bs!1558988 () Bool)

(declare-fun d!1963388 () Bool)

(assert (= bs!1558988 (and d!1963388 d!1962580)))

(assert (=> bs!1558988 (= (dynLambda!25571 lambda!342374 (h!71166 lt!2349649)) (validRegex!7917 (h!71166 lt!2349649)))))

(declare-fun m!7080758 () Bool)

(assert (=> bs!1558988 m!7080758))

(assert (=> b!6257267 d!1963388))

(declare-fun b_lambda!238165 () Bool)

(assert (= b_lambda!238127 (or b!6256377 b_lambda!238165)))

(declare-fun bs!1558989 () Bool)

(declare-fun d!1963390 () Bool)

(assert (= bs!1558989 (and d!1963390 b!6256377)))

(assert (=> bs!1558989 (= (dynLambda!25572 lambda!342407 (h!71167 zl!343)) (>= lt!2349703 (contextDepth!199 (h!71167 zl!343))))))

(assert (=> bs!1558989 m!7079212))

(assert (=> b!6257338 d!1963390))

(declare-fun b_lambda!238167 () Bool)

(assert (= b_lambda!238135 (or d!1962624 b_lambda!238167)))

(declare-fun bs!1558990 () Bool)

(declare-fun d!1963392 () Bool)

(assert (= bs!1558990 (and d!1963392 d!1962624)))

(assert (=> bs!1558990 (= (dynLambda!25571 lambda!342394 (h!71166 lt!2349529)) (validRegex!7917 (h!71166 lt!2349529)))))

(declare-fun m!7080760 () Bool)

(assert (=> bs!1558990 m!7080760))

(assert (=> b!6257453 d!1963392))

(declare-fun b_lambda!238169 () Bool)

(assert (= b_lambda!238137 (or b!6256372 b_lambda!238169)))

(declare-fun bs!1558991 () Bool)

(declare-fun d!1963394 () Bool)

(assert (= bs!1558991 (and d!1963394 b!6256372)))

(assert (=> bs!1558991 (= (dynLambda!25572 lambda!342404 (h!71167 lt!2349542)) (>= lt!2349699 (contextDepth!199 (h!71167 lt!2349542))))))

(assert (=> bs!1558991 m!7079200))

(assert (=> b!6257503 d!1963394))

(declare-fun b_lambda!238171 () Bool)

(assert (= b_lambda!238131 (or b!6255545 b_lambda!238171)))

(assert (=> d!1963168 d!1962656))

(declare-fun b_lambda!238173 () Bool)

(assert (= b_lambda!238133 (or d!1962628 b_lambda!238173)))

(declare-fun bs!1558992 () Bool)

(declare-fun d!1963396 () Bool)

(assert (= bs!1558992 (and d!1963396 d!1962628)))

(assert (=> bs!1558992 (= (dynLambda!25571 lambda!342395 (h!71166 (exprs!6065 lt!2349551))) (validRegex!7917 (h!71166 (exprs!6065 lt!2349551))))))

(declare-fun m!7080762 () Bool)

(assert (=> bs!1558992 m!7080762))

(assert (=> b!6257442 d!1963396))

(declare-fun b_lambda!238175 () Bool)

(assert (= b_lambda!238151 (or d!1962576 b_lambda!238175)))

(declare-fun bs!1558993 () Bool)

(declare-fun d!1963398 () Bool)

(assert (= bs!1558993 (and d!1963398 d!1962576)))

(assert (=> bs!1558993 (= (dynLambda!25571 lambda!342368 (h!71166 (exprs!6065 setElem!42536))) (validRegex!7917 (h!71166 (exprs!6065 setElem!42536))))))

(declare-fun m!7080764 () Bool)

(assert (=> bs!1558993 m!7080764))

(assert (=> b!6257811 d!1963398))

(declare-fun b_lambda!238177 () Bool)

(assert (= b_lambda!238129 (or d!1962578 b_lambda!238177)))

(declare-fun bs!1558994 () Bool)

(declare-fun d!1963400 () Bool)

(assert (= bs!1558994 (and d!1963400 d!1962578)))

(assert (=> bs!1558994 (= (dynLambda!25571 lambda!342371 (h!71166 (unfocusZipperList!1602 zl!343))) (validRegex!7917 (h!71166 (unfocusZipperList!1602 zl!343))))))

(declare-fun m!7080766 () Bool)

(assert (=> bs!1558994 m!7080766))

(assert (=> b!6257400 d!1963400))

(declare-fun b_lambda!238179 () Bool)

(assert (= b_lambda!238143 (or b!6256375 b_lambda!238179)))

(declare-fun bs!1558995 () Bool)

(declare-fun d!1963402 () Bool)

(assert (= bs!1558995 (and d!1963402 b!6256375)))

(assert (=> bs!1558995 (= (dynLambda!25572 lambda!342406 (h!71167 (t!378393 zl!343))) (>= lt!2349704 (contextDepth!199 (h!71167 (t!378393 zl!343)))))))

(assert (=> bs!1558995 m!7080458))

(assert (=> b!6257604 d!1963402))

(check-sat (not b!6257697) (not b!6257344) (not b!6257312) (not bm!528213) (not d!1963254) (not d!1963334) (not b!6257682) (not d!1963122) (not b!6257269) (not b!6257881) (not bm!528207) (not d!1963258) (not b!6257313) (not b!6257659) (not bm!528234) (not b!6257339) (not bm!528181) (not b!6257445) (not b!6257873) (not b!6257557) (not bm!528159) (not b!6257502) (not bm!528218) (not d!1963262) (not b!6257645) (not d!1963280) (not b!6257311) (not b_lambda!238157) (not d!1963310) (not b_lambda!238063) (not b!6257902) (not b!6257905) (not b_lambda!238165) (not b!6257250) (not b!6257861) (not b!6257737) (not bm!528107) (not bm!528178) (not bs!1558992) (not b!6257268) (not b!6257643) (not bm!528185) (not bm!528214) (not bs!1558995) (not b!6257926) (not setNonEmpty!42551) (not b!6257500) (not b!6257805) (not d!1963282) (not b!6257514) (not setNonEmpty!42552) (not d!1963162) (not b!6257414) (not d!1963336) (not bm!528202) (not bm!528186) (not b!6257803) (not d!1963190) (not b!6257889) (not bm!528203) (not b!6257690) (not b!6257669) (not d!1963208) (not d!1963330) (not b!6257933) (not b!6257883) (not d!1963328) (not b!6257786) (not d!1963290) (not d!1963292) (not b!6257440) (not d!1963042) (not d!1963068) (not bm!528170) (not b!6257418) (not b!6257552) (not d!1963144) (not b!6257356) (not b!6257593) (not b!6257877) (not b!6257402) (not bm!528168) (not b!6257913) (not b!6257812) (not bm!528226) (not b!6257887) (not b!6257676) (not b!6257366) (not bm!528188) (not b!6257934) (not b!6257755) (not b!6257694) (not b!6257878) (not b!6257911) (not bm!528240) (not b!6257660) (not b!6257731) (not b!6257846) (not bm!528138) (not d!1963264) (not b!6257332) (not bm!528219) (not bm!528212) (not d!1963270) (not b!6257833) (not bm!528247) (not bm!528231) (not d!1963098) (not bm!528180) (not b!6257617) (not d!1963298) (not d!1963302) (not d!1963320) (not b!6257901) (not bm!528158) (not b!6257496) (not b!6257935) (not b!6257214) (not b!6257423) (not b!6257470) (not bm!528241) (not b_lambda!238179) (not b!6257401) (not b!6257849) (not bm!528145) (not bm!528165) tp_is_empty!41615 (not d!1963294) (not b!6257732) (not bm!528119) (not b!6257910) (not b_lambda!238163) (not bm!528123) (not b!6257918) (not b_lambda!238161) (not b!6257422) (not b!6257658) (not b!6257702) (not b!6257921) (not bm!528157) (not d!1963054) (not bs!1558994) (not bm!528154) (not d!1963080) (not b!6257639) (not bs!1558993) (not d!1963136) (not d!1963206) (not b!6257625) (not b!6257866) (not b!6257341) (not b!6257756) (not b!6257392) (not b_lambda!238067) (not d!1963124) (not b!6257825) (not b!6257622) (not bm!528140) (not bm!528147) (not d!1963096) (not bm!528144) (not b!6257839) (not d!1963138) (not bs!1558991) (not b!6257703) (not b!6257271) (not d!1963134) (not b!6257909) (not b!6257541) (not b!6257894) (not b!6257466) (not b!6257474) (not d!1963146) (not b!6257793) (not b!6257838) (not b!6257758) (not b!6257765) (not b!6257240) (not b!6257340) (not b!6257217) (not b!6257390) (not b!6257556) (not bm!528127) (not b!6257759) (not b!6257876) (not d!1963372) (not b!6257376) (not b!6257829) (not b!6257915) (not b!6257919) (not b!6257555) (not b!6257827) (not b!6257813) (not b_lambda!238065) (not b!6257413) (not b!6257733) (not b!6257752) (not b!6257389) (not d!1963200) (not b!6257605) (not b!6257806) (not b!6257872) (not b!6257886) (not b!6257882) (not b!6257441) (not b!6257891) (not d!1963210) (not d!1963324) (not d!1963152) (not b!6257641) (not b!6257701) (not b!6257367) (not bm!528134) (not d!1963142) (not b!6257906) (not b!6257493) (not b!6257835) (not bm!528200) (not b!6257487) (not b!6257735) (not b!6257427) (not d!1963032) (not b!6257515) (not b!6257308) (not b!6257596) (not d!1963182) (not b!6257923) (not b!6257695) (not b!6257871) (not d!1963066) (not bs!1558989) (not d!1963034) (not b!6257857) (not bm!528198) (not b_lambda!238169) (not b!6257863) (not d!1963374) (not bs!1558986) (not b!6257218) (not b!6257903) (not d!1963164) (not b!6257704) (not b!6257333) (not d!1963168) (not d!1963204) (not bm!528183) (not d!1963344) (not b!6257899) (not b!6257890) (not b!6257826) (not b!6257640) (not d!1963218) (not b!6257331) (not b!6257426) (not bm!528205) (not b!6257595) (not d!1963044) (not d!1963214) (not b!6257675) (not b!6257257) (not b!6257869) (not b!6257834) (not b!6257816) (not b!6257527) (not b!6257467) (not b!6257708) (not b!6257860) (not d!1963314) (not bs!1558988) (not b!6257867) (not b!6257506) (not b!6257802) (not b!6257744) (not b_lambda!238173) (not b!6257854) (not b!6257620) (not b!6257844) (not b!6257706) (not b!6257850) (not bm!528149) (not b!6257852) (not b!6257691) (not b!6257745) (not b!6257931) (not b!6257455) (not b!6257914) (not b!6257434) (not d!1963128) (not d!1963308) (not b!6257845) (not bm!528146) (not d!1963232) (not bm!528232) (not bm!528126) (not b!6257830) (not b!6257710) (not b_lambda!238155) (not b!6257583) (not b!6257724) (not bm!528220) (not bm!528187) (not b!6257504) (not b!6257757) (not d!1963202) (not b!6257358) (not b!6257840) (not b!6257736) (not setNonEmpty!42554) (not d!1963288) (not b!6257538) (not d!1963064) (not bm!528171) (not b!6257865) (not b!6257551) (not bm!528125) (not b!6257754) (not bm!528233) (not d!1963140) (not b!6257692) (not bm!528225) (not b!6257693) (not bm!528196) (not b!6257808) (not b!6257842) (not b_lambda!238159) (not d!1963300) (not bm!528242) (not b!6257853) (not b!6257862) (not b!6257895) (not d!1963236) (not bm!528166) (not b!6257925) (not b!6257738) (not b!6257885) (not bm!528150) (not d!1963266) (not d!1963222) (not b!6257938) (not d!1963216) (not bm!528172) (not d!1963078) (not b!6257309) (not b!6257471) (not b!6257814) (not b!6257753) (not b!6257457) (not b!6257417) (not bm!528139) (not b!6257879) (not d!1963332) (not bm!528174) (not b!6257875) (not bm!528208) (not d!1963338) (not b!6257647) (not b!6257350) (not d!1963086) (not b_lambda!238171) (not d!1963296) (not b!6257320) (not b!6257779) (not b!6257699) (not b!6257213) (not bm!528239) (not b!6257499) (not bm!528179) (not bm!528184) (not bm!528199) (not b!6257443) (not bs!1558985) (not b!6257848) (not b!6257856) (not b!6257425) (not b!6257907) (not b!6257600) (not bm!528230) (not d!1963158) (not d!1963260) (not b!6257599) (not setNonEmpty!42553) (not bm!528245) (not d!1963380) (not b!6257929) (not b!6257897) (not d!1963108) (not b_lambda!238167) (not b!6257836) (not b!6257615) (not b!6257592) (not d!1963088) (not bm!528155) (not b!6257540) (not b!6257591) (not d!1963224) (not bm!528195) (not b!6257927) (not d!1963348) (not bm!528117) (not b_lambda!238175) (not b_lambda!238177) (not b!6257870) (not b!6257922) (not bm!528133) (not bm!528156) (not d!1963362) (not b!6257930) (not b!6257831) (not b!6257494) (not b!6257553) (not b!6257403) (not b!6257841) (not b!6257893) (not b!6257898) (not d!1963312) (not b!6257529) (not b!6257495) (not b!6257469) (not bm!528161) (not bs!1558987) (not b!6257937) (not b!6257216) (not b!6257939) (not b!6257711) (not b!6257212) (not b!6257539) (not bm!528124) (not b!6257465) (not bm!528132) (not b!6257644) (not b!6257858) (not b!6257424) (not bm!528244) (not b!6257698) (not bs!1558990) (not d!1963120) (not bm!528224) (not bm!528167) (not b!6257917) (not b!6257718) (not d!1963244) (not d!1963198) (not b!6257597) (not d!1963156) (not b!6257657) (not b!6257454) (not b!6257307) (not b!6257810) (not b_lambda!238153))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!643842 () Bool)

(assert start!643842)

(declare-fun b!6571094 () Bool)

(assert (=> b!6571094 true))

(assert (=> b!6571094 true))

(declare-fun lambda!365924 () Int)

(declare-fun lambda!365923 () Int)

(assert (=> b!6571094 (not (= lambda!365924 lambda!365923))))

(assert (=> b!6571094 true))

(assert (=> b!6571094 true))

(declare-fun b!6571099 () Bool)

(assert (=> b!6571099 true))

(declare-fun e!3977402 () Bool)

(declare-fun e!3977390 () Bool)

(assert (=> b!6571094 (= e!3977402 e!3977390)))

(declare-fun res!2696663 () Bool)

(assert (=> b!6571094 (=> res!2696663 e!3977390)))

(declare-datatypes ((C!33164 0))(
  ( (C!33165 (val!26284 Int)) )
))
(declare-datatypes ((List!65640 0))(
  ( (Nil!65516) (Cons!65516 (h!71964 C!33164) (t!379286 List!65640)) )
))
(declare-fun s!2326 () List!65640)

(declare-fun lt!2408637 () Bool)

(declare-fun lt!2408644 () Bool)

(get-info :version)

(assert (=> b!6571094 (= res!2696663 (or (not (= lt!2408637 lt!2408644)) ((_ is Nil!65516) s!2326)))))

(declare-fun Exists!3517 (Int) Bool)

(assert (=> b!6571094 (= (Exists!3517 lambda!365923) (Exists!3517 lambda!365924))))

(declare-datatypes ((Unit!159123 0))(
  ( (Unit!159124) )
))
(declare-fun lt!2408649 () Unit!159123)

(declare-datatypes ((Regex!16447 0))(
  ( (ElementMatch!16447 (c!1207988 C!33164)) (Concat!25292 (regOne!33406 Regex!16447) (regTwo!33406 Regex!16447)) (EmptyExpr!16447) (Star!16447 (reg!16776 Regex!16447)) (EmptyLang!16447) (Union!16447 (regOne!33407 Regex!16447) (regTwo!33407 Regex!16447)) )
))
(declare-fun r!7292 () Regex!16447)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2054 (Regex!16447 Regex!16447 List!65640) Unit!159123)

(assert (=> b!6571094 (= lt!2408649 (lemmaExistCutMatchRandMatchRSpecEquivalent!2054 (regOne!33406 r!7292) (regTwo!33406 r!7292) s!2326))))

(assert (=> b!6571094 (= lt!2408644 (Exists!3517 lambda!365923))))

(declare-datatypes ((tuple2!66852 0))(
  ( (tuple2!66853 (_1!36729 List!65640) (_2!36729 List!65640)) )
))
(declare-datatypes ((Option!16338 0))(
  ( (None!16337) (Some!16337 (v!52522 tuple2!66852)) )
))
(declare-fun isDefined!13041 (Option!16338) Bool)

(declare-fun findConcatSeparation!2752 (Regex!16447 Regex!16447 List!65640 List!65640 List!65640) Option!16338)

(assert (=> b!6571094 (= lt!2408644 (isDefined!13041 (findConcatSeparation!2752 (regOne!33406 r!7292) (regTwo!33406 r!7292) Nil!65516 s!2326 s!2326)))))

(declare-fun lt!2408647 () Unit!159123)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2516 (Regex!16447 Regex!16447 List!65640) Unit!159123)

(assert (=> b!6571094 (= lt!2408647 (lemmaFindConcatSeparationEquivalentToExists!2516 (regOne!33406 r!7292) (regTwo!33406 r!7292) s!2326))))

(declare-fun b!6571095 () Bool)

(declare-fun e!3977394 () Bool)

(declare-fun nullable!6440 (Regex!16447) Bool)

(assert (=> b!6571095 (= e!3977394 (nullable!6440 (regOne!33406 (regOne!33406 r!7292))))))

(declare-fun e!3977400 () Bool)

(declare-fun e!3977401 () Bool)

(declare-fun b!6571096 () Bool)

(declare-datatypes ((List!65641 0))(
  ( (Nil!65517) (Cons!65517 (h!71965 Regex!16447) (t!379287 List!65641)) )
))
(declare-datatypes ((Context!11662 0))(
  ( (Context!11663 (exprs!6331 List!65641)) )
))
(declare-datatypes ((List!65642 0))(
  ( (Nil!65518) (Cons!65518 (h!71966 Context!11662) (t!379288 List!65642)) )
))
(declare-fun zl!343 () List!65642)

(declare-fun tp!1814027 () Bool)

(declare-fun inv!84364 (Context!11662) Bool)

(assert (=> b!6571096 (= e!3977401 (and (inv!84364 (h!71966 zl!343)) e!3977400 tp!1814027))))

(declare-fun b!6571097 () Bool)

(declare-fun res!2696686 () Bool)

(assert (=> b!6571097 (=> res!2696686 e!3977390)))

(declare-fun isEmpty!37765 (List!65641) Bool)

(assert (=> b!6571097 (= res!2696686 (isEmpty!37765 (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6571098 () Bool)

(declare-fun res!2696684 () Bool)

(declare-fun e!3977392 () Bool)

(assert (=> b!6571098 (=> res!2696684 e!3977392)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2408641 () (InoxSet Context!11662))

(declare-fun matchZipper!2459 ((InoxSet Context!11662) List!65640) Bool)

(assert (=> b!6571098 (= res!2696684 (not (matchZipper!2459 lt!2408641 (t!379286 s!2326))))))

(declare-fun e!3977389 () Bool)

(assert (=> b!6571099 (= e!3977390 e!3977389)))

(declare-fun res!2696681 () Bool)

(assert (=> b!6571099 (=> res!2696681 e!3977389)))

(assert (=> b!6571099 (= res!2696681 (or (and ((_ is ElementMatch!16447) (regOne!33406 r!7292)) (= (c!1207988 (regOne!33406 r!7292)) (h!71964 s!2326))) ((_ is Union!16447) (regOne!33406 r!7292))))))

(declare-fun lt!2408635 () Unit!159123)

(declare-fun e!3977405 () Unit!159123)

(assert (=> b!6571099 (= lt!2408635 e!3977405)))

(declare-fun c!1207987 () Bool)

(declare-fun lt!2408645 () Bool)

(assert (=> b!6571099 (= c!1207987 lt!2408645)))

(assert (=> b!6571099 (= lt!2408645 (nullable!6440 (h!71965 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11662))

(declare-fun lambda!365925 () Int)

(declare-fun flatMap!1952 ((InoxSet Context!11662) Int) (InoxSet Context!11662))

(declare-fun derivationStepZipperUp!1621 (Context!11662 C!33164) (InoxSet Context!11662))

(assert (=> b!6571099 (= (flatMap!1952 z!1189 lambda!365925) (derivationStepZipperUp!1621 (h!71966 zl!343) (h!71964 s!2326)))))

(declare-fun lt!2408648 () Unit!159123)

(declare-fun lemmaFlatMapOnSingletonSet!1478 ((InoxSet Context!11662) Context!11662 Int) Unit!159123)

(assert (=> b!6571099 (= lt!2408648 (lemmaFlatMapOnSingletonSet!1478 z!1189 (h!71966 zl!343) lambda!365925))))

(declare-fun lt!2408634 () Context!11662)

(assert (=> b!6571099 (= lt!2408641 (derivationStepZipperUp!1621 lt!2408634 (h!71964 s!2326)))))

(declare-fun lt!2408660 () (InoxSet Context!11662))

(declare-fun derivationStepZipperDown!1695 (Regex!16447 Context!11662 C!33164) (InoxSet Context!11662))

(assert (=> b!6571099 (= lt!2408660 (derivationStepZipperDown!1695 (h!71965 (exprs!6331 (h!71966 zl!343))) lt!2408634 (h!71964 s!2326)))))

(assert (=> b!6571099 (= lt!2408634 (Context!11663 (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun lt!2408640 () (InoxSet Context!11662))

(assert (=> b!6571099 (= lt!2408640 (derivationStepZipperUp!1621 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343))))) (h!71964 s!2326)))))

(declare-fun b!6571100 () Bool)

(declare-fun e!3977404 () Bool)

(declare-fun e!3977403 () Bool)

(assert (=> b!6571100 (= e!3977404 e!3977403)))

(declare-fun res!2696664 () Bool)

(assert (=> b!6571100 (=> res!2696664 e!3977403)))

(assert (=> b!6571100 (= res!2696664 lt!2408637)))

(declare-fun lt!2408638 () Regex!16447)

(declare-fun matchR!8630 (Regex!16447 List!65640) Bool)

(declare-fun matchRSpec!3548 (Regex!16447 List!65640) Bool)

(assert (=> b!6571100 (= (matchR!8630 lt!2408638 s!2326) (matchRSpec!3548 lt!2408638 s!2326))))

(declare-fun lt!2408646 () Unit!159123)

(declare-fun mainMatchTheorem!3548 (Regex!16447 List!65640) Unit!159123)

(assert (=> b!6571100 (= lt!2408646 (mainMatchTheorem!3548 lt!2408638 s!2326))))

(declare-fun b!6571101 () Bool)

(declare-fun e!3977395 () Bool)

(declare-fun e!3977399 () Bool)

(assert (=> b!6571101 (= e!3977395 e!3977399)))

(declare-fun res!2696675 () Bool)

(assert (=> b!6571101 (=> res!2696675 e!3977399)))

(declare-fun lt!2408663 () Regex!16447)

(assert (=> b!6571101 (= res!2696675 (not (= r!7292 lt!2408663)))))

(declare-fun lt!2408636 () Regex!16447)

(assert (=> b!6571101 (= lt!2408663 (Concat!25292 lt!2408636 (regTwo!33406 r!7292)))))

(declare-fun b!6571102 () Bool)

(declare-fun Unit!159125 () Unit!159123)

(assert (=> b!6571102 (= e!3977405 Unit!159125)))

(declare-fun lt!2408643 () Unit!159123)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1278 ((InoxSet Context!11662) (InoxSet Context!11662) List!65640) Unit!159123)

(assert (=> b!6571102 (= lt!2408643 (lemmaZipperConcatMatchesSameAsBothZippers!1278 lt!2408660 lt!2408641 (t!379286 s!2326)))))

(declare-fun res!2696669 () Bool)

(assert (=> b!6571102 (= res!2696669 (matchZipper!2459 lt!2408660 (t!379286 s!2326)))))

(declare-fun e!3977396 () Bool)

(assert (=> b!6571102 (=> res!2696669 e!3977396)))

(assert (=> b!6571102 (= (matchZipper!2459 ((_ map or) lt!2408660 lt!2408641) (t!379286 s!2326)) e!3977396)))

(declare-fun b!6571103 () Bool)

(declare-fun res!2696676 () Bool)

(assert (=> b!6571103 (=> res!2696676 e!3977395)))

(declare-fun lt!2408666 () (InoxSet Context!11662))

(declare-fun lt!2408655 () (InoxSet Context!11662))

(assert (=> b!6571103 (= res!2696676 (not (= (matchZipper!2459 lt!2408655 s!2326) (matchZipper!2459 lt!2408666 (t!379286 s!2326)))))))

(declare-fun b!6571104 () Bool)

(declare-fun e!3977397 () Bool)

(assert (=> b!6571104 (= e!3977389 e!3977397)))

(declare-fun res!2696679 () Bool)

(assert (=> b!6571104 (=> res!2696679 e!3977397)))

(declare-fun lt!2408656 () (InoxSet Context!11662))

(assert (=> b!6571104 (= res!2696679 (not (= lt!2408660 lt!2408656)))))

(declare-fun lt!2408659 () Context!11662)

(assert (=> b!6571104 (= lt!2408656 (derivationStepZipperDown!1695 (reg!16776 (regOne!33406 r!7292)) lt!2408659 (h!71964 s!2326)))))

(declare-fun lt!2408662 () List!65641)

(assert (=> b!6571104 (= lt!2408659 (Context!11663 lt!2408662))))

(assert (=> b!6571104 (= lt!2408662 (Cons!65517 lt!2408636 (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(assert (=> b!6571104 (= lt!2408636 (Star!16447 (reg!16776 (regOne!33406 r!7292))))))

(declare-fun b!6571105 () Bool)

(declare-fun res!2696682 () Bool)

(assert (=> b!6571105 (=> res!2696682 e!3977403)))

(assert (=> b!6571105 (= res!2696682 (not (matchZipper!2459 z!1189 s!2326)))))

(declare-fun b!6571107 () Bool)

(declare-fun res!2696660 () Bool)

(assert (=> b!6571107 (=> res!2696660 e!3977402)))

(assert (=> b!6571107 (= res!2696660 (or ((_ is EmptyExpr!16447) r!7292) ((_ is EmptyLang!16447) r!7292) ((_ is ElementMatch!16447) r!7292) ((_ is Union!16447) r!7292) (not ((_ is Concat!25292) r!7292))))))

(declare-fun tp!1814021 () Bool)

(declare-fun setRes!44872 () Bool)

(declare-fun setElem!44872 () Context!11662)

(declare-fun setNonEmpty!44872 () Bool)

(declare-fun e!3977387 () Bool)

(assert (=> setNonEmpty!44872 (= setRes!44872 (and tp!1814021 (inv!84364 setElem!44872) e!3977387))))

(declare-fun setRest!44872 () (InoxSet Context!11662))

(assert (=> setNonEmpty!44872 (= z!1189 ((_ map or) (store ((as const (Array Context!11662 Bool)) false) setElem!44872 true) setRest!44872))))

(declare-fun b!6571108 () Bool)

(declare-fun res!2696674 () Bool)

(assert (=> b!6571108 (=> res!2696674 e!3977389)))

(assert (=> b!6571108 (= res!2696674 e!3977394)))

(declare-fun res!2696661 () Bool)

(assert (=> b!6571108 (=> (not res!2696661) (not e!3977394))))

(assert (=> b!6571108 (= res!2696661 ((_ is Concat!25292) (regOne!33406 r!7292)))))

(declare-fun b!6571109 () Bool)

(declare-fun res!2696678 () Bool)

(declare-fun e!3977386 () Bool)

(assert (=> b!6571109 (=> (not res!2696678) (not e!3977386))))

(declare-fun toList!10231 ((InoxSet Context!11662)) List!65642)

(assert (=> b!6571109 (= res!2696678 (= (toList!10231 z!1189) zl!343))))

(declare-fun b!6571110 () Bool)

(declare-fun e!3977406 () Bool)

(assert (=> b!6571110 (= e!3977406 (inv!84364 lt!2408634))))

(declare-fun b!6571111 () Bool)

(assert (=> b!6571111 (= e!3977397 e!3977395)))

(declare-fun res!2696683 () Bool)

(assert (=> b!6571111 (=> res!2696683 e!3977395)))

(assert (=> b!6571111 (= res!2696683 (not (= lt!2408666 lt!2408656)))))

(declare-fun lt!2408665 () Context!11662)

(assert (=> b!6571111 (= (flatMap!1952 lt!2408655 lambda!365925) (derivationStepZipperUp!1621 lt!2408665 (h!71964 s!2326)))))

(declare-fun lt!2408642 () Unit!159123)

(assert (=> b!6571111 (= lt!2408642 (lemmaFlatMapOnSingletonSet!1478 lt!2408655 lt!2408665 lambda!365925))))

(declare-fun lt!2408639 () (InoxSet Context!11662))

(assert (=> b!6571111 (= lt!2408639 (derivationStepZipperUp!1621 lt!2408665 (h!71964 s!2326)))))

(declare-fun derivationStepZipper!2413 ((InoxSet Context!11662) C!33164) (InoxSet Context!11662))

(assert (=> b!6571111 (= lt!2408666 (derivationStepZipper!2413 lt!2408655 (h!71964 s!2326)))))

(assert (=> b!6571111 (= lt!2408655 (store ((as const (Array Context!11662 Bool)) false) lt!2408665 true))))

(assert (=> b!6571111 (= lt!2408665 (Context!11663 (Cons!65517 (reg!16776 (regOne!33406 r!7292)) lt!2408662)))))

(declare-fun b!6571112 () Bool)

(declare-fun e!3977398 () Bool)

(declare-fun tp_is_empty!42147 () Bool)

(assert (=> b!6571112 (= e!3977398 tp_is_empty!42147)))

(declare-fun b!6571113 () Bool)

(declare-fun res!2696655 () Bool)

(assert (=> b!6571113 (=> res!2696655 e!3977402)))

(assert (=> b!6571113 (= res!2696655 (not ((_ is Cons!65517) (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6571114 () Bool)

(declare-fun res!2696680 () Bool)

(assert (=> b!6571114 (=> res!2696680 e!3977395)))

(declare-fun lt!2408633 () Regex!16447)

(assert (=> b!6571114 (= res!2696680 (not (= lt!2408633 r!7292)))))

(declare-fun b!6571115 () Bool)

(declare-fun res!2696658 () Bool)

(assert (=> b!6571115 (=> res!2696658 e!3977402)))

(declare-fun generalisedConcat!2044 (List!65641) Regex!16447)

(assert (=> b!6571115 (= res!2696658 (not (= r!7292 (generalisedConcat!2044 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571116 () Bool)

(declare-fun e!3977391 () Bool)

(assert (=> b!6571116 (= e!3977399 e!3977391)))

(declare-fun res!2696673 () Bool)

(assert (=> b!6571116 (=> res!2696673 e!3977391)))

(declare-fun unfocusZipper!2189 (List!65642) Regex!16447)

(assert (=> b!6571116 (= res!2696673 (not (= (unfocusZipper!2189 (Cons!65518 lt!2408665 Nil!65518)) lt!2408638)))))

(assert (=> b!6571116 (= lt!2408638 (Concat!25292 (reg!16776 (regOne!33406 r!7292)) lt!2408663))))

(declare-fun b!6571117 () Bool)

(declare-fun res!2696670 () Bool)

(assert (=> b!6571117 (=> res!2696670 e!3977392)))

(declare-fun lt!2408661 () Bool)

(assert (=> b!6571117 (= res!2696670 lt!2408661)))

(declare-fun b!6571118 () Bool)

(declare-fun res!2696685 () Bool)

(assert (=> b!6571118 (=> res!2696685 e!3977404)))

(assert (=> b!6571118 (= res!2696685 (not (= (unfocusZipper!2189 (Cons!65518 lt!2408659 Nil!65518)) lt!2408663)))))

(declare-fun b!6571119 () Bool)

(declare-fun res!2696657 () Bool)

(assert (=> b!6571119 (=> res!2696657 e!3977406)))

(declare-fun regexDepth!344 (Regex!16447) Int)

(assert (=> b!6571119 (= res!2696657 (< (regexDepth!344 r!7292) (regexDepth!344 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343)))))))))

(declare-fun b!6571120 () Bool)

(declare-fun e!3977388 () Bool)

(declare-fun tp!1814018 () Bool)

(assert (=> b!6571120 (= e!3977388 (and tp_is_empty!42147 tp!1814018))))

(declare-fun b!6571121 () Bool)

(declare-fun res!2696659 () Bool)

(assert (=> b!6571121 (=> res!2696659 e!3977403)))

(assert (=> b!6571121 (= res!2696659 (not lt!2408645))))

(declare-fun b!6571122 () Bool)

(declare-fun res!2696672 () Bool)

(assert (=> b!6571122 (=> res!2696672 e!3977402)))

(declare-fun generalisedUnion!2291 (List!65641) Regex!16447)

(declare-fun unfocusZipperList!1868 (List!65642) List!65641)

(assert (=> b!6571122 (= res!2696672 (not (= r!7292 (generalisedUnion!2291 (unfocusZipperList!1868 zl!343)))))))

(declare-fun b!6571123 () Bool)

(declare-fun tp!1814026 () Bool)

(assert (=> b!6571123 (= e!3977400 tp!1814026)))

(declare-fun b!6571124 () Bool)

(assert (=> b!6571124 (= e!3977391 e!3977404)))

(declare-fun res!2696667 () Bool)

(assert (=> b!6571124 (=> res!2696667 e!3977404)))

(declare-fun lt!2408651 () Context!11662)

(assert (=> b!6571124 (= res!2696667 (not (= (unfocusZipper!2189 (Cons!65518 lt!2408651 Nil!65518)) (reg!16776 (regOne!33406 r!7292)))))))

(declare-fun lt!2408653 () (InoxSet Context!11662))

(assert (=> b!6571124 (= (flatMap!1952 lt!2408653 lambda!365925) (derivationStepZipperUp!1621 lt!2408659 (h!71964 s!2326)))))

(declare-fun lt!2408664 () Unit!159123)

(assert (=> b!6571124 (= lt!2408664 (lemmaFlatMapOnSingletonSet!1478 lt!2408653 lt!2408659 lambda!365925))))

(declare-fun lt!2408654 () (InoxSet Context!11662))

(assert (=> b!6571124 (= (flatMap!1952 lt!2408654 lambda!365925) (derivationStepZipperUp!1621 lt!2408651 (h!71964 s!2326)))))

(declare-fun lt!2408652 () Unit!159123)

(assert (=> b!6571124 (= lt!2408652 (lemmaFlatMapOnSingletonSet!1478 lt!2408654 lt!2408651 lambda!365925))))

(declare-fun lt!2408668 () (InoxSet Context!11662))

(assert (=> b!6571124 (= lt!2408668 (derivationStepZipperUp!1621 lt!2408659 (h!71964 s!2326)))))

(declare-fun lt!2408650 () (InoxSet Context!11662))

(assert (=> b!6571124 (= lt!2408650 (derivationStepZipperUp!1621 lt!2408651 (h!71964 s!2326)))))

(assert (=> b!6571124 (= lt!2408653 (store ((as const (Array Context!11662 Bool)) false) lt!2408659 true))))

(assert (=> b!6571124 (= lt!2408654 (store ((as const (Array Context!11662 Bool)) false) lt!2408651 true))))

(assert (=> b!6571124 (= lt!2408651 (Context!11663 (Cons!65517 (reg!16776 (regOne!33406 r!7292)) Nil!65517)))))

(declare-fun b!6571125 () Bool)

(declare-fun res!2696671 () Bool)

(assert (=> b!6571125 (=> res!2696671 e!3977389)))

(assert (=> b!6571125 (= res!2696671 (or ((_ is Concat!25292) (regOne!33406 r!7292)) (not ((_ is Star!16447) (regOne!33406 r!7292)))))))

(declare-fun b!6571126 () Bool)

(declare-fun tp!1814020 () Bool)

(assert (=> b!6571126 (= e!3977398 tp!1814020)))

(declare-fun b!6571127 () Bool)

(declare-fun e!3977385 () Bool)

(assert (=> b!6571127 (= e!3977385 (not (matchZipper!2459 lt!2408641 (t!379286 s!2326))))))

(declare-fun b!6571128 () Bool)

(assert (=> b!6571128 (= e!3977392 e!3977406)))

(declare-fun res!2696677 () Bool)

(assert (=> b!6571128 (=> res!2696677 e!3977406)))

(declare-fun lt!2408667 () (InoxSet Context!11662))

(assert (=> b!6571128 (= res!2696677 (not (= lt!2408641 (derivationStepZipper!2413 lt!2408667 (h!71964 s!2326)))))))

(assert (=> b!6571128 (= (flatMap!1952 lt!2408667 lambda!365925) (derivationStepZipperUp!1621 lt!2408634 (h!71964 s!2326)))))

(declare-fun lt!2408657 () Unit!159123)

(assert (=> b!6571128 (= lt!2408657 (lemmaFlatMapOnSingletonSet!1478 lt!2408667 lt!2408634 lambda!365925))))

(assert (=> b!6571128 (= lt!2408667 (store ((as const (Array Context!11662 Bool)) false) lt!2408634 true))))

(declare-fun b!6571129 () Bool)

(declare-fun e!3977393 () Bool)

(assert (=> b!6571129 (= e!3977393 (not e!3977402))))

(declare-fun res!2696665 () Bool)

(assert (=> b!6571129 (=> res!2696665 e!3977402)))

(assert (=> b!6571129 (= res!2696665 (not ((_ is Cons!65518) zl!343)))))

(assert (=> b!6571129 (= lt!2408637 (matchRSpec!3548 r!7292 s!2326))))

(assert (=> b!6571129 (= lt!2408637 (matchR!8630 r!7292 s!2326))))

(declare-fun lt!2408658 () Unit!159123)

(assert (=> b!6571129 (= lt!2408658 (mainMatchTheorem!3548 r!7292 s!2326))))

(declare-fun b!6571130 () Bool)

(declare-fun tp!1814024 () Bool)

(declare-fun tp!1814025 () Bool)

(assert (=> b!6571130 (= e!3977398 (and tp!1814024 tp!1814025))))

(declare-fun b!6571131 () Bool)

(declare-fun tp!1814022 () Bool)

(assert (=> b!6571131 (= e!3977387 tp!1814022)))

(declare-fun b!6571132 () Bool)

(declare-fun res!2696668 () Bool)

(assert (=> b!6571132 (=> res!2696668 e!3977402)))

(declare-fun isEmpty!37766 (List!65642) Bool)

(assert (=> b!6571132 (= res!2696668 (not (isEmpty!37766 (t!379288 zl!343))))))

(declare-fun b!6571133 () Bool)

(assert (=> b!6571133 (= e!3977403 e!3977392)))

(declare-fun res!2696654 () Bool)

(assert (=> b!6571133 (=> res!2696654 e!3977392)))

(assert (=> b!6571133 (= res!2696654 e!3977385)))

(declare-fun res!2696656 () Bool)

(assert (=> b!6571133 (=> (not res!2696656) (not e!3977385))))

(assert (=> b!6571133 (= res!2696656 (not lt!2408661))))

(assert (=> b!6571133 (= lt!2408661 (matchZipper!2459 lt!2408660 (t!379286 s!2326)))))

(declare-fun setIsEmpty!44872 () Bool)

(assert (=> setIsEmpty!44872 setRes!44872))

(declare-fun b!6571134 () Bool)

(declare-fun tp!1814019 () Bool)

(declare-fun tp!1814023 () Bool)

(assert (=> b!6571134 (= e!3977398 (and tp!1814019 tp!1814023))))

(declare-fun b!6571135 () Bool)

(declare-fun Unit!159126 () Unit!159123)

(assert (=> b!6571135 (= e!3977405 Unit!159126)))

(declare-fun b!6571136 () Bool)

(assert (=> b!6571136 (= e!3977386 e!3977393)))

(declare-fun res!2696662 () Bool)

(assert (=> b!6571136 (=> (not res!2696662) (not e!3977393))))

(assert (=> b!6571136 (= res!2696662 (= r!7292 lt!2408633))))

(assert (=> b!6571136 (= lt!2408633 (unfocusZipper!2189 zl!343))))

(declare-fun b!6571106 () Bool)

(assert (=> b!6571106 (= e!3977396 (matchZipper!2459 lt!2408641 (t!379286 s!2326)))))

(declare-fun res!2696666 () Bool)

(assert (=> start!643842 (=> (not res!2696666) (not e!3977386))))

(declare-fun validRegex!8183 (Regex!16447) Bool)

(assert (=> start!643842 (= res!2696666 (validRegex!8183 r!7292))))

(assert (=> start!643842 e!3977386))

(assert (=> start!643842 e!3977398))

(declare-fun condSetEmpty!44872 () Bool)

(assert (=> start!643842 (= condSetEmpty!44872 (= z!1189 ((as const (Array Context!11662 Bool)) false)))))

(assert (=> start!643842 setRes!44872))

(assert (=> start!643842 e!3977401))

(assert (=> start!643842 e!3977388))

(assert (= (and start!643842 res!2696666) b!6571109))

(assert (= (and b!6571109 res!2696678) b!6571136))

(assert (= (and b!6571136 res!2696662) b!6571129))

(assert (= (and b!6571129 (not res!2696665)) b!6571132))

(assert (= (and b!6571132 (not res!2696668)) b!6571115))

(assert (= (and b!6571115 (not res!2696658)) b!6571113))

(assert (= (and b!6571113 (not res!2696655)) b!6571122))

(assert (= (and b!6571122 (not res!2696672)) b!6571107))

(assert (= (and b!6571107 (not res!2696660)) b!6571094))

(assert (= (and b!6571094 (not res!2696663)) b!6571097))

(assert (= (and b!6571097 (not res!2696686)) b!6571099))

(assert (= (and b!6571099 c!1207987) b!6571102))

(assert (= (and b!6571099 (not c!1207987)) b!6571135))

(assert (= (and b!6571102 (not res!2696669)) b!6571106))

(assert (= (and b!6571099 (not res!2696681)) b!6571108))

(assert (= (and b!6571108 res!2696661) b!6571095))

(assert (= (and b!6571108 (not res!2696674)) b!6571125))

(assert (= (and b!6571125 (not res!2696671)) b!6571104))

(assert (= (and b!6571104 (not res!2696679)) b!6571111))

(assert (= (and b!6571111 (not res!2696683)) b!6571103))

(assert (= (and b!6571103 (not res!2696676)) b!6571114))

(assert (= (and b!6571114 (not res!2696680)) b!6571101))

(assert (= (and b!6571101 (not res!2696675)) b!6571116))

(assert (= (and b!6571116 (not res!2696673)) b!6571124))

(assert (= (and b!6571124 (not res!2696667)) b!6571118))

(assert (= (and b!6571118 (not res!2696685)) b!6571100))

(assert (= (and b!6571100 (not res!2696664)) b!6571105))

(assert (= (and b!6571105 (not res!2696682)) b!6571121))

(assert (= (and b!6571121 (not res!2696659)) b!6571133))

(assert (= (and b!6571133 res!2696656) b!6571127))

(assert (= (and b!6571133 (not res!2696654)) b!6571117))

(assert (= (and b!6571117 (not res!2696670)) b!6571098))

(assert (= (and b!6571098 (not res!2696684)) b!6571128))

(assert (= (and b!6571128 (not res!2696677)) b!6571119))

(assert (= (and b!6571119 (not res!2696657)) b!6571110))

(assert (= (and start!643842 ((_ is ElementMatch!16447) r!7292)) b!6571112))

(assert (= (and start!643842 ((_ is Concat!25292) r!7292)) b!6571134))

(assert (= (and start!643842 ((_ is Star!16447) r!7292)) b!6571126))

(assert (= (and start!643842 ((_ is Union!16447) r!7292)) b!6571130))

(assert (= (and start!643842 condSetEmpty!44872) setIsEmpty!44872))

(assert (= (and start!643842 (not condSetEmpty!44872)) setNonEmpty!44872))

(assert (= setNonEmpty!44872 b!6571131))

(assert (= b!6571096 b!6571123))

(assert (= (and start!643842 ((_ is Cons!65518) zl!343)) b!6571096))

(assert (= (and start!643842 ((_ is Cons!65516) s!2326)) b!6571120))

(declare-fun m!7352896 () Bool)

(assert (=> b!6571115 m!7352896))

(declare-fun m!7352898 () Bool)

(assert (=> b!6571119 m!7352898))

(declare-fun m!7352900 () Bool)

(assert (=> b!6571119 m!7352900))

(assert (=> b!6571119 m!7352900))

(declare-fun m!7352902 () Bool)

(assert (=> b!6571119 m!7352902))

(declare-fun m!7352904 () Bool)

(assert (=> b!6571100 m!7352904))

(declare-fun m!7352906 () Bool)

(assert (=> b!6571100 m!7352906))

(declare-fun m!7352908 () Bool)

(assert (=> b!6571100 m!7352908))

(declare-fun m!7352910 () Bool)

(assert (=> start!643842 m!7352910))

(declare-fun m!7352912 () Bool)

(assert (=> b!6571095 m!7352912))

(declare-fun m!7352914 () Bool)

(assert (=> b!6571094 m!7352914))

(assert (=> b!6571094 m!7352914))

(declare-fun m!7352916 () Bool)

(assert (=> b!6571094 m!7352916))

(declare-fun m!7352918 () Bool)

(assert (=> b!6571094 m!7352918))

(declare-fun m!7352920 () Bool)

(assert (=> b!6571094 m!7352920))

(declare-fun m!7352922 () Bool)

(assert (=> b!6571094 m!7352922))

(assert (=> b!6571094 m!7352916))

(declare-fun m!7352924 () Bool)

(assert (=> b!6571094 m!7352924))

(declare-fun m!7352926 () Bool)

(assert (=> b!6571127 m!7352926))

(declare-fun m!7352928 () Bool)

(assert (=> b!6571124 m!7352928))

(declare-fun m!7352930 () Bool)

(assert (=> b!6571124 m!7352930))

(declare-fun m!7352932 () Bool)

(assert (=> b!6571124 m!7352932))

(declare-fun m!7352934 () Bool)

(assert (=> b!6571124 m!7352934))

(declare-fun m!7352936 () Bool)

(assert (=> b!6571124 m!7352936))

(declare-fun m!7352938 () Bool)

(assert (=> b!6571124 m!7352938))

(declare-fun m!7352940 () Bool)

(assert (=> b!6571124 m!7352940))

(declare-fun m!7352942 () Bool)

(assert (=> b!6571124 m!7352942))

(declare-fun m!7352944 () Bool)

(assert (=> b!6571124 m!7352944))

(declare-fun m!7352946 () Bool)

(assert (=> b!6571109 m!7352946))

(declare-fun m!7352948 () Bool)

(assert (=> b!6571111 m!7352948))

(declare-fun m!7352950 () Bool)

(assert (=> b!6571111 m!7352950))

(declare-fun m!7352952 () Bool)

(assert (=> b!6571111 m!7352952))

(declare-fun m!7352954 () Bool)

(assert (=> b!6571111 m!7352954))

(declare-fun m!7352956 () Bool)

(assert (=> b!6571111 m!7352956))

(declare-fun m!7352958 () Bool)

(assert (=> b!6571099 m!7352958))

(declare-fun m!7352960 () Bool)

(assert (=> b!6571099 m!7352960))

(declare-fun m!7352962 () Bool)

(assert (=> b!6571099 m!7352962))

(declare-fun m!7352964 () Bool)

(assert (=> b!6571099 m!7352964))

(declare-fun m!7352966 () Bool)

(assert (=> b!6571099 m!7352966))

(declare-fun m!7352968 () Bool)

(assert (=> b!6571099 m!7352968))

(declare-fun m!7352970 () Bool)

(assert (=> b!6571099 m!7352970))

(declare-fun m!7352972 () Bool)

(assert (=> b!6571097 m!7352972))

(declare-fun m!7352974 () Bool)

(assert (=> setNonEmpty!44872 m!7352974))

(declare-fun m!7352976 () Bool)

(assert (=> b!6571122 m!7352976))

(assert (=> b!6571122 m!7352976))

(declare-fun m!7352978 () Bool)

(assert (=> b!6571122 m!7352978))

(declare-fun m!7352980 () Bool)

(assert (=> b!6571116 m!7352980))

(declare-fun m!7352982 () Bool)

(assert (=> b!6571110 m!7352982))

(declare-fun m!7352984 () Bool)

(assert (=> b!6571129 m!7352984))

(declare-fun m!7352986 () Bool)

(assert (=> b!6571129 m!7352986))

(declare-fun m!7352988 () Bool)

(assert (=> b!6571129 m!7352988))

(declare-fun m!7352990 () Bool)

(assert (=> b!6571128 m!7352990))

(assert (=> b!6571128 m!7352966))

(declare-fun m!7352992 () Bool)

(assert (=> b!6571128 m!7352992))

(declare-fun m!7352994 () Bool)

(assert (=> b!6571128 m!7352994))

(declare-fun m!7352996 () Bool)

(assert (=> b!6571128 m!7352996))

(declare-fun m!7352998 () Bool)

(assert (=> b!6571133 m!7352998))

(declare-fun m!7353000 () Bool)

(assert (=> b!6571104 m!7353000))

(declare-fun m!7353002 () Bool)

(assert (=> b!6571102 m!7353002))

(assert (=> b!6571102 m!7352998))

(declare-fun m!7353004 () Bool)

(assert (=> b!6571102 m!7353004))

(declare-fun m!7353006 () Bool)

(assert (=> b!6571118 m!7353006))

(declare-fun m!7353008 () Bool)

(assert (=> b!6571105 m!7353008))

(declare-fun m!7353010 () Bool)

(assert (=> b!6571136 m!7353010))

(assert (=> b!6571106 m!7352926))

(assert (=> b!6571098 m!7352926))

(declare-fun m!7353012 () Bool)

(assert (=> b!6571096 m!7353012))

(declare-fun m!7353014 () Bool)

(assert (=> b!6571103 m!7353014))

(declare-fun m!7353016 () Bool)

(assert (=> b!6571103 m!7353016))

(declare-fun m!7353018 () Bool)

(assert (=> b!6571132 m!7353018))

(check-sat (not b!6571103) (not b!6571129) (not b!6571099) (not b!6571118) (not b!6571102) (not start!643842) (not b!6571127) (not b!6571104) (not b!6571124) (not b!6571130) (not b!6571105) (not b!6571123) (not b!6571095) (not b!6571132) (not b!6571136) (not setNonEmpty!44872) (not b!6571106) (not b!6571133) (not b!6571096) (not b!6571109) (not b!6571131) (not b!6571094) (not b!6571110) (not b!6571111) (not b!6571134) (not b!6571126) (not b!6571128) (not b!6571116) (not b!6571100) (not b!6571097) (not b!6571119) (not b!6571115) (not b!6571120) (not b!6571098) (not b!6571122) tp_is_empty!42147)
(check-sat)
(get-model)

(declare-fun d!2061713 () Bool)

(assert (=> d!2061713 (= (isEmpty!37765 (t!379287 (exprs!6331 (h!71966 zl!343)))) ((_ is Nil!65517) (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(assert (=> b!6571097 d!2061713))

(declare-fun d!2061715 () Bool)

(declare-fun lt!2408680 () Regex!16447)

(assert (=> d!2061715 (validRegex!8183 lt!2408680)))

(assert (=> d!2061715 (= lt!2408680 (generalisedUnion!2291 (unfocusZipperList!1868 zl!343)))))

(assert (=> d!2061715 (= (unfocusZipper!2189 zl!343) lt!2408680)))

(declare-fun bs!1678601 () Bool)

(assert (= bs!1678601 d!2061715))

(declare-fun m!7353078 () Bool)

(assert (=> bs!1678601 m!7353078))

(assert (=> bs!1678601 m!7352976))

(assert (=> bs!1678601 m!7352976))

(assert (=> bs!1678601 m!7352978))

(assert (=> b!6571136 d!2061715))

(declare-fun d!2061717 () Bool)

(declare-fun nullableFct!2366 (Regex!16447) Bool)

(assert (=> d!2061717 (= (nullable!6440 (regOne!33406 (regOne!33406 r!7292))) (nullableFct!2366 (regOne!33406 (regOne!33406 r!7292))))))

(declare-fun bs!1678602 () Bool)

(assert (= bs!1678602 d!2061717))

(declare-fun m!7353080 () Bool)

(assert (=> bs!1678602 m!7353080))

(assert (=> b!6571095 d!2061717))

(declare-fun d!2061719 () Bool)

(declare-fun lambda!365934 () Int)

(declare-fun forall!15619 (List!65641 Int) Bool)

(assert (=> d!2061719 (= (inv!84364 (h!71966 zl!343)) (forall!15619 (exprs!6331 (h!71966 zl!343)) lambda!365934))))

(declare-fun bs!1678603 () Bool)

(assert (= bs!1678603 d!2061719))

(declare-fun m!7353082 () Bool)

(assert (=> bs!1678603 m!7353082))

(assert (=> b!6571096 d!2061719))

(declare-fun d!2061721 () Bool)

(declare-fun lt!2408687 () Regex!16447)

(assert (=> d!2061721 (validRegex!8183 lt!2408687)))

(assert (=> d!2061721 (= lt!2408687 (generalisedUnion!2291 (unfocusZipperList!1868 (Cons!65518 lt!2408665 Nil!65518))))))

(assert (=> d!2061721 (= (unfocusZipper!2189 (Cons!65518 lt!2408665 Nil!65518)) lt!2408687)))

(declare-fun bs!1678604 () Bool)

(assert (= bs!1678604 d!2061721))

(declare-fun m!7353084 () Bool)

(assert (=> bs!1678604 m!7353084))

(declare-fun m!7353086 () Bool)

(assert (=> bs!1678604 m!7353086))

(assert (=> bs!1678604 m!7353086))

(declare-fun m!7353088 () Bool)

(assert (=> bs!1678604 m!7353088))

(assert (=> b!6571116 d!2061721))

(declare-fun d!2061723 () Bool)

(assert (=> d!2061723 (= (nullable!6440 (h!71965 (exprs!6331 (h!71966 zl!343)))) (nullableFct!2366 (h!71965 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun bs!1678605 () Bool)

(assert (= bs!1678605 d!2061723))

(declare-fun m!7353090 () Bool)

(assert (=> bs!1678605 m!7353090))

(assert (=> b!6571099 d!2061723))

(declare-fun e!3977509 () (InoxSet Context!11662))

(declare-fun b!6571327 () Bool)

(declare-fun call!571868 () (InoxSet Context!11662))

(assert (=> b!6571327 (= e!3977509 ((_ map or) call!571868 (derivationStepZipperUp!1621 (Context!11663 (t!379287 (exprs!6331 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343)))))))) (h!71964 s!2326))))))

(declare-fun b!6571328 () Bool)

(declare-fun e!3977510 () (InoxSet Context!11662))

(assert (=> b!6571328 (= e!3977509 e!3977510)))

(declare-fun c!1208046 () Bool)

(assert (=> b!6571328 (= c!1208046 ((_ is Cons!65517) (exprs!6331 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343))))))))))

(declare-fun bm!571863 () Bool)

(assert (=> bm!571863 (= call!571868 (derivationStepZipperDown!1695 (h!71965 (exprs!6331 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343))))))) (Context!11663 (t!379287 (exprs!6331 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343)))))))) (h!71964 s!2326)))))

(declare-fun d!2061725 () Bool)

(declare-fun c!1208045 () Bool)

(declare-fun e!3977511 () Bool)

(assert (=> d!2061725 (= c!1208045 e!3977511)))

(declare-fun res!2696759 () Bool)

(assert (=> d!2061725 (=> (not res!2696759) (not e!3977511))))

(assert (=> d!2061725 (= res!2696759 ((_ is Cons!65517) (exprs!6331 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343))))))))))

(assert (=> d!2061725 (= (derivationStepZipperUp!1621 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343))))) (h!71964 s!2326)) e!3977509)))

(declare-fun b!6571329 () Bool)

(assert (=> b!6571329 (= e!3977511 (nullable!6440 (h!71965 (exprs!6331 (Context!11663 (Cons!65517 (h!71965 (exprs!6331 (h!71966 zl!343))) (t!379287 (exprs!6331 (h!71966 zl!343)))))))))))

(declare-fun b!6571330 () Bool)

(assert (=> b!6571330 (= e!3977510 ((as const (Array Context!11662 Bool)) false))))

(declare-fun b!6571331 () Bool)

(assert (=> b!6571331 (= e!3977510 call!571868)))

(assert (= (and d!2061725 res!2696759) b!6571329))

(assert (= (and d!2061725 c!1208045) b!6571327))

(assert (= (and d!2061725 (not c!1208045)) b!6571328))

(assert (= (and b!6571328 c!1208046) b!6571331))

(assert (= (and b!6571328 (not c!1208046)) b!6571330))

(assert (= (or b!6571327 b!6571331) bm!571863))

(declare-fun m!7353116 () Bool)

(assert (=> b!6571327 m!7353116))

(declare-fun m!7353118 () Bool)

(assert (=> bm!571863 m!7353118))

(declare-fun m!7353120 () Bool)

(assert (=> b!6571329 m!7353120))

(assert (=> b!6571099 d!2061725))

(declare-fun b!6571332 () Bool)

(declare-fun e!3977512 () (InoxSet Context!11662))

(declare-fun call!571869 () (InoxSet Context!11662))

(assert (=> b!6571332 (= e!3977512 ((_ map or) call!571869 (derivationStepZipperUp!1621 (Context!11663 (t!379287 (exprs!6331 lt!2408634))) (h!71964 s!2326))))))

(declare-fun b!6571333 () Bool)

(declare-fun e!3977513 () (InoxSet Context!11662))

(assert (=> b!6571333 (= e!3977512 e!3977513)))

(declare-fun c!1208048 () Bool)

(assert (=> b!6571333 (= c!1208048 ((_ is Cons!65517) (exprs!6331 lt!2408634)))))

(declare-fun bm!571864 () Bool)

(assert (=> bm!571864 (= call!571869 (derivationStepZipperDown!1695 (h!71965 (exprs!6331 lt!2408634)) (Context!11663 (t!379287 (exprs!6331 lt!2408634))) (h!71964 s!2326)))))

(declare-fun d!2061729 () Bool)

(declare-fun c!1208047 () Bool)

(declare-fun e!3977514 () Bool)

(assert (=> d!2061729 (= c!1208047 e!3977514)))

(declare-fun res!2696760 () Bool)

(assert (=> d!2061729 (=> (not res!2696760) (not e!3977514))))

(assert (=> d!2061729 (= res!2696760 ((_ is Cons!65517) (exprs!6331 lt!2408634)))))

(assert (=> d!2061729 (= (derivationStepZipperUp!1621 lt!2408634 (h!71964 s!2326)) e!3977512)))

(declare-fun b!6571334 () Bool)

(assert (=> b!6571334 (= e!3977514 (nullable!6440 (h!71965 (exprs!6331 lt!2408634))))))

(declare-fun b!6571335 () Bool)

(assert (=> b!6571335 (= e!3977513 ((as const (Array Context!11662 Bool)) false))))

(declare-fun b!6571336 () Bool)

(assert (=> b!6571336 (= e!3977513 call!571869)))

(assert (= (and d!2061729 res!2696760) b!6571334))

(assert (= (and d!2061729 c!1208047) b!6571332))

(assert (= (and d!2061729 (not c!1208047)) b!6571333))

(assert (= (and b!6571333 c!1208048) b!6571336))

(assert (= (and b!6571333 (not c!1208048)) b!6571335))

(assert (= (or b!6571332 b!6571336) bm!571864))

(declare-fun m!7353122 () Bool)

(assert (=> b!6571332 m!7353122))

(declare-fun m!7353124 () Bool)

(assert (=> bm!571864 m!7353124))

(declare-fun m!7353126 () Bool)

(assert (=> b!6571334 m!7353126))

(assert (=> b!6571099 d!2061729))

(declare-fun b!6571373 () Bool)

(declare-fun e!3977534 () (InoxSet Context!11662))

(assert (=> b!6571373 (= e!3977534 (store ((as const (Array Context!11662 Bool)) false) lt!2408634 true))))

(declare-fun b!6571374 () Bool)

(declare-fun e!3977538 () (InoxSet Context!11662))

(declare-fun e!3977536 () (InoxSet Context!11662))

(assert (=> b!6571374 (= e!3977538 e!3977536)))

(declare-fun c!1208066 () Bool)

(assert (=> b!6571374 (= c!1208066 ((_ is Concat!25292) (h!71965 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun bm!571877 () Bool)

(declare-fun call!571882 () (InoxSet Context!11662))

(declare-fun call!571885 () (InoxSet Context!11662))

(assert (=> bm!571877 (= call!571882 call!571885)))

(declare-fun bm!571878 () Bool)

(declare-fun call!571887 () (InoxSet Context!11662))

(assert (=> bm!571878 (= call!571885 call!571887)))

(declare-fun c!1208064 () Bool)

(declare-fun bm!571879 () Bool)

(declare-fun call!571883 () (InoxSet Context!11662))

(declare-fun call!571886 () List!65641)

(assert (=> bm!571879 (= call!571883 (derivationStepZipperDown!1695 (ite c!1208064 (regOne!33407 (h!71965 (exprs!6331 (h!71966 zl!343)))) (regOne!33406 (h!71965 (exprs!6331 (h!71966 zl!343))))) (ite c!1208064 lt!2408634 (Context!11663 call!571886)) (h!71964 s!2326)))))

(declare-fun b!6571376 () Bool)

(declare-fun c!1208063 () Bool)

(declare-fun e!3977535 () Bool)

(assert (=> b!6571376 (= c!1208063 e!3977535)))

(declare-fun res!2696771 () Bool)

(assert (=> b!6571376 (=> (not res!2696771) (not e!3977535))))

(assert (=> b!6571376 (= res!2696771 ((_ is Concat!25292) (h!71965 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun e!3977539 () (InoxSet Context!11662))

(assert (=> b!6571376 (= e!3977539 e!3977538)))

(declare-fun bm!571880 () Bool)

(declare-fun call!571884 () List!65641)

(assert (=> bm!571880 (= call!571887 (derivationStepZipperDown!1695 (ite c!1208064 (regTwo!33407 (h!71965 (exprs!6331 (h!71966 zl!343)))) (ite c!1208063 (regTwo!33406 (h!71965 (exprs!6331 (h!71966 zl!343)))) (ite c!1208066 (regOne!33406 (h!71965 (exprs!6331 (h!71966 zl!343)))) (reg!16776 (h!71965 (exprs!6331 (h!71966 zl!343))))))) (ite (or c!1208064 c!1208063) lt!2408634 (Context!11663 call!571884)) (h!71964 s!2326)))))

(declare-fun b!6571377 () Bool)

(assert (=> b!6571377 (= e!3977539 ((_ map or) call!571883 call!571887))))

(declare-fun b!6571378 () Bool)

(assert (=> b!6571378 (= e!3977536 call!571882)))

(declare-fun b!6571379 () Bool)

(assert (=> b!6571379 (= e!3977534 e!3977539)))

(assert (=> b!6571379 (= c!1208064 ((_ is Union!16447) (h!71965 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6571380 () Bool)

(declare-fun e!3977537 () (InoxSet Context!11662))

(assert (=> b!6571380 (= e!3977537 call!571882)))

(declare-fun b!6571381 () Bool)

(assert (=> b!6571381 (= e!3977535 (nullable!6440 (regOne!33406 (h!71965 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571375 () Bool)

(declare-fun c!1208062 () Bool)

(assert (=> b!6571375 (= c!1208062 ((_ is Star!16447) (h!71965 (exprs!6331 (h!71966 zl!343)))))))

(assert (=> b!6571375 (= e!3977536 e!3977537)))

(declare-fun d!2061731 () Bool)

(declare-fun c!1208065 () Bool)

(assert (=> d!2061731 (= c!1208065 (and ((_ is ElementMatch!16447) (h!71965 (exprs!6331 (h!71966 zl!343)))) (= (c!1207988 (h!71965 (exprs!6331 (h!71966 zl!343)))) (h!71964 s!2326))))))

(assert (=> d!2061731 (= (derivationStepZipperDown!1695 (h!71965 (exprs!6331 (h!71966 zl!343))) lt!2408634 (h!71964 s!2326)) e!3977534)))

(declare-fun b!6571382 () Bool)

(assert (=> b!6571382 (= e!3977537 ((as const (Array Context!11662 Bool)) false))))

(declare-fun bm!571881 () Bool)

(declare-fun $colon$colon!2288 (List!65641 Regex!16447) List!65641)

(assert (=> bm!571881 (= call!571886 ($colon$colon!2288 (exprs!6331 lt!2408634) (ite (or c!1208063 c!1208066) (regTwo!33406 (h!71965 (exprs!6331 (h!71966 zl!343)))) (h!71965 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571383 () Bool)

(assert (=> b!6571383 (= e!3977538 ((_ map or) call!571883 call!571885))))

(declare-fun bm!571882 () Bool)

(assert (=> bm!571882 (= call!571884 call!571886)))

(assert (= (and d!2061731 c!1208065) b!6571373))

(assert (= (and d!2061731 (not c!1208065)) b!6571379))

(assert (= (and b!6571379 c!1208064) b!6571377))

(assert (= (and b!6571379 (not c!1208064)) b!6571376))

(assert (= (and b!6571376 res!2696771) b!6571381))

(assert (= (and b!6571376 c!1208063) b!6571383))

(assert (= (and b!6571376 (not c!1208063)) b!6571374))

(assert (= (and b!6571374 c!1208066) b!6571378))

(assert (= (and b!6571374 (not c!1208066)) b!6571375))

(assert (= (and b!6571375 c!1208062) b!6571380))

(assert (= (and b!6571375 (not c!1208062)) b!6571382))

(assert (= (or b!6571378 b!6571380) bm!571882))

(assert (= (or b!6571378 b!6571380) bm!571877))

(assert (= (or b!6571383 bm!571882) bm!571881))

(assert (= (or b!6571383 bm!571877) bm!571878))

(assert (= (or b!6571377 bm!571878) bm!571880))

(assert (= (or b!6571377 b!6571383) bm!571879))

(declare-fun m!7353160 () Bool)

(assert (=> bm!571879 m!7353160))

(declare-fun m!7353162 () Bool)

(assert (=> bm!571880 m!7353162))

(declare-fun m!7353164 () Bool)

(assert (=> b!6571381 m!7353164))

(assert (=> b!6571373 m!7352996))

(declare-fun m!7353166 () Bool)

(assert (=> bm!571881 m!7353166))

(assert (=> b!6571099 d!2061731))

(declare-fun b!6571384 () Bool)

(declare-fun e!3977540 () (InoxSet Context!11662))

(declare-fun call!571888 () (InoxSet Context!11662))

(assert (=> b!6571384 (= e!3977540 ((_ map or) call!571888 (derivationStepZipperUp!1621 (Context!11663 (t!379287 (exprs!6331 (h!71966 zl!343)))) (h!71964 s!2326))))))

(declare-fun b!6571385 () Bool)

(declare-fun e!3977541 () (InoxSet Context!11662))

(assert (=> b!6571385 (= e!3977540 e!3977541)))

(declare-fun c!1208068 () Bool)

(assert (=> b!6571385 (= c!1208068 ((_ is Cons!65517) (exprs!6331 (h!71966 zl!343))))))

(declare-fun bm!571883 () Bool)

(assert (=> bm!571883 (= call!571888 (derivationStepZipperDown!1695 (h!71965 (exprs!6331 (h!71966 zl!343))) (Context!11663 (t!379287 (exprs!6331 (h!71966 zl!343)))) (h!71964 s!2326)))))

(declare-fun d!2061751 () Bool)

(declare-fun c!1208067 () Bool)

(declare-fun e!3977542 () Bool)

(assert (=> d!2061751 (= c!1208067 e!3977542)))

(declare-fun res!2696772 () Bool)

(assert (=> d!2061751 (=> (not res!2696772) (not e!3977542))))

(assert (=> d!2061751 (= res!2696772 ((_ is Cons!65517) (exprs!6331 (h!71966 zl!343))))))

(assert (=> d!2061751 (= (derivationStepZipperUp!1621 (h!71966 zl!343) (h!71964 s!2326)) e!3977540)))

(declare-fun b!6571386 () Bool)

(assert (=> b!6571386 (= e!3977542 (nullable!6440 (h!71965 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6571387 () Bool)

(assert (=> b!6571387 (= e!3977541 ((as const (Array Context!11662 Bool)) false))))

(declare-fun b!6571388 () Bool)

(assert (=> b!6571388 (= e!3977541 call!571888)))

(assert (= (and d!2061751 res!2696772) b!6571386))

(assert (= (and d!2061751 c!1208067) b!6571384))

(assert (= (and d!2061751 (not c!1208067)) b!6571385))

(assert (= (and b!6571385 c!1208068) b!6571388))

(assert (= (and b!6571385 (not c!1208068)) b!6571387))

(assert (= (or b!6571384 b!6571388) bm!571883))

(declare-fun m!7353168 () Bool)

(assert (=> b!6571384 m!7353168))

(declare-fun m!7353170 () Bool)

(assert (=> bm!571883 m!7353170))

(assert (=> b!6571386 m!7352968))

(assert (=> b!6571099 d!2061751))

(declare-fun d!2061753 () Bool)

(declare-fun dynLambda!26067 (Int Context!11662) (InoxSet Context!11662))

(assert (=> d!2061753 (= (flatMap!1952 z!1189 lambda!365925) (dynLambda!26067 lambda!365925 (h!71966 zl!343)))))

(declare-fun lt!2408701 () Unit!159123)

(declare-fun choose!49083 ((InoxSet Context!11662) Context!11662 Int) Unit!159123)

(assert (=> d!2061753 (= lt!2408701 (choose!49083 z!1189 (h!71966 zl!343) lambda!365925))))

(assert (=> d!2061753 (= z!1189 (store ((as const (Array Context!11662 Bool)) false) (h!71966 zl!343) true))))

(assert (=> d!2061753 (= (lemmaFlatMapOnSingletonSet!1478 z!1189 (h!71966 zl!343) lambda!365925) lt!2408701)))

(declare-fun b_lambda!248531 () Bool)

(assert (=> (not b_lambda!248531) (not d!2061753)))

(declare-fun bs!1678620 () Bool)

(assert (= bs!1678620 d!2061753))

(assert (=> bs!1678620 m!7352964))

(declare-fun m!7353172 () Bool)

(assert (=> bs!1678620 m!7353172))

(declare-fun m!7353174 () Bool)

(assert (=> bs!1678620 m!7353174))

(declare-fun m!7353176 () Bool)

(assert (=> bs!1678620 m!7353176))

(assert (=> b!6571099 d!2061753))

(declare-fun d!2061755 () Bool)

(declare-fun choose!49084 ((InoxSet Context!11662) Int) (InoxSet Context!11662))

(assert (=> d!2061755 (= (flatMap!1952 z!1189 lambda!365925) (choose!49084 z!1189 lambda!365925))))

(declare-fun bs!1678621 () Bool)

(assert (= bs!1678621 d!2061755))

(declare-fun m!7353178 () Bool)

(assert (=> bs!1678621 m!7353178))

(assert (=> b!6571099 d!2061755))

(declare-fun d!2061757 () Bool)

(declare-fun e!3977605 () Bool)

(assert (=> d!2061757 e!3977605))

(declare-fun c!1208106 () Bool)

(assert (=> d!2061757 (= c!1208106 ((_ is EmptyExpr!16447) lt!2408638))))

(declare-fun lt!2408714 () Bool)

(declare-fun e!3977602 () Bool)

(assert (=> d!2061757 (= lt!2408714 e!3977602)))

(declare-fun c!1208105 () Bool)

(declare-fun isEmpty!37769 (List!65640) Bool)

(assert (=> d!2061757 (= c!1208105 (isEmpty!37769 s!2326))))

(assert (=> d!2061757 (validRegex!8183 lt!2408638)))

(assert (=> d!2061757 (= (matchR!8630 lt!2408638 s!2326) lt!2408714)))

(declare-fun b!6571495 () Bool)

(declare-fun e!3977607 () Bool)

(declare-fun head!13345 (List!65640) C!33164)

(assert (=> b!6571495 (= e!3977607 (not (= (head!13345 s!2326) (c!1207988 lt!2408638))))))

(declare-fun b!6571496 () Bool)

(declare-fun e!3977604 () Bool)

(assert (=> b!6571496 (= e!3977604 e!3977607)))

(declare-fun res!2696813 () Bool)

(assert (=> b!6571496 (=> res!2696813 e!3977607)))

(declare-fun call!571902 () Bool)

(assert (=> b!6571496 (= res!2696813 call!571902)))

(declare-fun b!6571497 () Bool)

(assert (=> b!6571497 (= e!3977602 (nullable!6440 lt!2408638))))

(declare-fun b!6571498 () Bool)

(assert (=> b!6571498 (= e!3977605 (= lt!2408714 call!571902))))

(declare-fun b!6571499 () Bool)

(declare-fun e!3977601 () Bool)

(assert (=> b!6571499 (= e!3977601 (= (head!13345 s!2326) (c!1207988 lt!2408638)))))

(declare-fun b!6571500 () Bool)

(declare-fun res!2696809 () Bool)

(declare-fun e!3977606 () Bool)

(assert (=> b!6571500 (=> res!2696809 e!3977606)))

(assert (=> b!6571500 (= res!2696809 (not ((_ is ElementMatch!16447) lt!2408638)))))

(declare-fun e!3977603 () Bool)

(assert (=> b!6571500 (= e!3977603 e!3977606)))

(declare-fun b!6571501 () Bool)

(assert (=> b!6571501 (= e!3977603 (not lt!2408714))))

(declare-fun bm!571897 () Bool)

(assert (=> bm!571897 (= call!571902 (isEmpty!37769 s!2326))))

(declare-fun b!6571502 () Bool)

(declare-fun res!2696814 () Bool)

(assert (=> b!6571502 (=> res!2696814 e!3977607)))

(declare-fun tail!12430 (List!65640) List!65640)

(assert (=> b!6571502 (= res!2696814 (not (isEmpty!37769 (tail!12430 s!2326))))))

(declare-fun b!6571503 () Bool)

(assert (=> b!6571503 (= e!3977606 e!3977604)))

(declare-fun res!2696810 () Bool)

(assert (=> b!6571503 (=> (not res!2696810) (not e!3977604))))

(assert (=> b!6571503 (= res!2696810 (not lt!2408714))))

(declare-fun b!6571504 () Bool)

(assert (=> b!6571504 (= e!3977605 e!3977603)))

(declare-fun c!1208107 () Bool)

(assert (=> b!6571504 (= c!1208107 ((_ is EmptyLang!16447) lt!2408638))))

(declare-fun b!6571505 () Bool)

(declare-fun derivativeStep!5131 (Regex!16447 C!33164) Regex!16447)

(assert (=> b!6571505 (= e!3977602 (matchR!8630 (derivativeStep!5131 lt!2408638 (head!13345 s!2326)) (tail!12430 s!2326)))))

(declare-fun b!6571506 () Bool)

(declare-fun res!2696811 () Bool)

(assert (=> b!6571506 (=> (not res!2696811) (not e!3977601))))

(assert (=> b!6571506 (= res!2696811 (isEmpty!37769 (tail!12430 s!2326)))))

(declare-fun b!6571507 () Bool)

(declare-fun res!2696815 () Bool)

(assert (=> b!6571507 (=> (not res!2696815) (not e!3977601))))

(assert (=> b!6571507 (= res!2696815 (not call!571902))))

(declare-fun b!6571508 () Bool)

(declare-fun res!2696816 () Bool)

(assert (=> b!6571508 (=> res!2696816 e!3977606)))

(assert (=> b!6571508 (= res!2696816 e!3977601)))

(declare-fun res!2696812 () Bool)

(assert (=> b!6571508 (=> (not res!2696812) (not e!3977601))))

(assert (=> b!6571508 (= res!2696812 lt!2408714)))

(assert (= (and d!2061757 c!1208105) b!6571497))

(assert (= (and d!2061757 (not c!1208105)) b!6571505))

(assert (= (and d!2061757 c!1208106) b!6571498))

(assert (= (and d!2061757 (not c!1208106)) b!6571504))

(assert (= (and b!6571504 c!1208107) b!6571501))

(assert (= (and b!6571504 (not c!1208107)) b!6571500))

(assert (= (and b!6571500 (not res!2696809)) b!6571508))

(assert (= (and b!6571508 res!2696812) b!6571507))

(assert (= (and b!6571507 res!2696815) b!6571506))

(assert (= (and b!6571506 res!2696811) b!6571499))

(assert (= (and b!6571508 (not res!2696816)) b!6571503))

(assert (= (and b!6571503 res!2696810) b!6571496))

(assert (= (and b!6571496 (not res!2696813)) b!6571502))

(assert (= (and b!6571502 (not res!2696814)) b!6571495))

(assert (= (or b!6571498 b!6571496 b!6571507) bm!571897))

(declare-fun m!7353262 () Bool)

(assert (=> d!2061757 m!7353262))

(declare-fun m!7353264 () Bool)

(assert (=> d!2061757 m!7353264))

(assert (=> bm!571897 m!7353262))

(declare-fun m!7353266 () Bool)

(assert (=> b!6571497 m!7353266))

(declare-fun m!7353268 () Bool)

(assert (=> b!6571502 m!7353268))

(assert (=> b!6571502 m!7353268))

(declare-fun m!7353270 () Bool)

(assert (=> b!6571502 m!7353270))

(declare-fun m!7353272 () Bool)

(assert (=> b!6571495 m!7353272))

(assert (=> b!6571505 m!7353272))

(assert (=> b!6571505 m!7353272))

(declare-fun m!7353274 () Bool)

(assert (=> b!6571505 m!7353274))

(assert (=> b!6571505 m!7353268))

(assert (=> b!6571505 m!7353274))

(assert (=> b!6571505 m!7353268))

(declare-fun m!7353276 () Bool)

(assert (=> b!6571505 m!7353276))

(assert (=> b!6571506 m!7353268))

(assert (=> b!6571506 m!7353268))

(assert (=> b!6571506 m!7353270))

(assert (=> b!6571499 m!7353272))

(assert (=> b!6571100 d!2061757))

(declare-fun bs!1678657 () Bool)

(declare-fun b!6571647 () Bool)

(assert (= bs!1678657 (and b!6571647 b!6571094)))

(declare-fun lambda!365964 () Int)

(assert (=> bs!1678657 (not (= lambda!365964 lambda!365923))))

(assert (=> bs!1678657 (not (= lambda!365964 lambda!365924))))

(assert (=> b!6571647 true))

(assert (=> b!6571647 true))

(declare-fun bs!1678663 () Bool)

(declare-fun b!6571649 () Bool)

(assert (= bs!1678663 (and b!6571649 b!6571094)))

(declare-fun lambda!365966 () Int)

(assert (=> bs!1678663 (not (= lambda!365966 lambda!365923))))

(assert (=> bs!1678663 (= (and (= (regOne!33406 lt!2408638) (regOne!33406 r!7292)) (= (regTwo!33406 lt!2408638) (regTwo!33406 r!7292))) (= lambda!365966 lambda!365924))))

(declare-fun bs!1678664 () Bool)

(assert (= bs!1678664 (and b!6571649 b!6571647)))

(assert (=> bs!1678664 (not (= lambda!365966 lambda!365964))))

(assert (=> b!6571649 true))

(assert (=> b!6571649 true))

(declare-fun b!6571644 () Bool)

(declare-fun e!3977693 () Bool)

(declare-fun e!3977694 () Bool)

(assert (=> b!6571644 (= e!3977693 e!3977694)))

(declare-fun c!1208160 () Bool)

(assert (=> b!6571644 (= c!1208160 ((_ is Star!16447) lt!2408638))))

(declare-fun b!6571645 () Bool)

(declare-fun c!1208158 () Bool)

(assert (=> b!6571645 (= c!1208158 ((_ is ElementMatch!16447) lt!2408638))))

(declare-fun e!3977688 () Bool)

(declare-fun e!3977690 () Bool)

(assert (=> b!6571645 (= e!3977688 e!3977690)))

(declare-fun b!6571646 () Bool)

(declare-fun e!3977689 () Bool)

(assert (=> b!6571646 (= e!3977689 e!3977688)))

(declare-fun res!2696854 () Bool)

(assert (=> b!6571646 (= res!2696854 (not ((_ is EmptyLang!16447) lt!2408638)))))

(assert (=> b!6571646 (=> (not res!2696854) (not e!3977688))))

(declare-fun e!3977691 () Bool)

(declare-fun call!571936 () Bool)

(assert (=> b!6571647 (= e!3977691 call!571936)))

(declare-fun b!6571648 () Bool)

(declare-fun call!571935 () Bool)

(assert (=> b!6571648 (= e!3977689 call!571935)))

(assert (=> b!6571649 (= e!3977694 call!571936)))

(declare-fun b!6571650 () Bool)

(declare-fun e!3977692 () Bool)

(assert (=> b!6571650 (= e!3977693 e!3977692)))

(declare-fun res!2696855 () Bool)

(assert (=> b!6571650 (= res!2696855 (matchRSpec!3548 (regOne!33407 lt!2408638) s!2326))))

(assert (=> b!6571650 (=> res!2696855 e!3977692)))

(declare-fun b!6571651 () Bool)

(assert (=> b!6571651 (= e!3977692 (matchRSpec!3548 (regTwo!33407 lt!2408638) s!2326))))

(declare-fun d!2061793 () Bool)

(declare-fun c!1208159 () Bool)

(assert (=> d!2061793 (= c!1208159 ((_ is EmptyExpr!16447) lt!2408638))))

(assert (=> d!2061793 (= (matchRSpec!3548 lt!2408638 s!2326) e!3977689)))

(declare-fun b!6571652 () Bool)

(declare-fun c!1208157 () Bool)

(assert (=> b!6571652 (= c!1208157 ((_ is Union!16447) lt!2408638))))

(assert (=> b!6571652 (= e!3977690 e!3977693)))

(declare-fun b!6571653 () Bool)

(declare-fun res!2696856 () Bool)

(assert (=> b!6571653 (=> res!2696856 e!3977691)))

(assert (=> b!6571653 (= res!2696856 call!571935)))

(assert (=> b!6571653 (= e!3977694 e!3977691)))

(declare-fun bm!571930 () Bool)

(assert (=> bm!571930 (= call!571936 (Exists!3517 (ite c!1208160 lambda!365964 lambda!365966)))))

(declare-fun bm!571931 () Bool)

(assert (=> bm!571931 (= call!571935 (isEmpty!37769 s!2326))))

(declare-fun b!6571654 () Bool)

(assert (=> b!6571654 (= e!3977690 (= s!2326 (Cons!65516 (c!1207988 lt!2408638) Nil!65516)))))

(assert (= (and d!2061793 c!1208159) b!6571648))

(assert (= (and d!2061793 (not c!1208159)) b!6571646))

(assert (= (and b!6571646 res!2696854) b!6571645))

(assert (= (and b!6571645 c!1208158) b!6571654))

(assert (= (and b!6571645 (not c!1208158)) b!6571652))

(assert (= (and b!6571652 c!1208157) b!6571650))

(assert (= (and b!6571652 (not c!1208157)) b!6571644))

(assert (= (and b!6571650 (not res!2696855)) b!6571651))

(assert (= (and b!6571644 c!1208160) b!6571653))

(assert (= (and b!6571644 (not c!1208160)) b!6571649))

(assert (= (and b!6571653 (not res!2696856)) b!6571647))

(assert (= (or b!6571647 b!6571649) bm!571930))

(assert (= (or b!6571648 b!6571653) bm!571931))

(declare-fun m!7353350 () Bool)

(assert (=> b!6571650 m!7353350))

(declare-fun m!7353352 () Bool)

(assert (=> b!6571651 m!7353352))

(declare-fun m!7353354 () Bool)

(assert (=> bm!571930 m!7353354))

(assert (=> bm!571931 m!7353262))

(assert (=> b!6571100 d!2061793))

(declare-fun d!2061813 () Bool)

(assert (=> d!2061813 (= (matchR!8630 lt!2408638 s!2326) (matchRSpec!3548 lt!2408638 s!2326))))

(declare-fun lt!2408732 () Unit!159123)

(declare-fun choose!49085 (Regex!16447 List!65640) Unit!159123)

(assert (=> d!2061813 (= lt!2408732 (choose!49085 lt!2408638 s!2326))))

(assert (=> d!2061813 (validRegex!8183 lt!2408638)))

(assert (=> d!2061813 (= (mainMatchTheorem!3548 lt!2408638 s!2326) lt!2408732)))

(declare-fun bs!1678671 () Bool)

(assert (= bs!1678671 d!2061813))

(assert (=> bs!1678671 m!7352904))

(assert (=> bs!1678671 m!7352906))

(declare-fun m!7353360 () Bool)

(assert (=> bs!1678671 m!7353360))

(assert (=> bs!1678671 m!7353264))

(assert (=> b!6571100 d!2061813))

(declare-fun d!2061817 () Bool)

(declare-fun c!1208173 () Bool)

(assert (=> d!2061817 (= c!1208173 (isEmpty!37769 (t!379286 s!2326)))))

(declare-fun e!3977713 () Bool)

(assert (=> d!2061817 (= (matchZipper!2459 lt!2408641 (t!379286 s!2326)) e!3977713)))

(declare-fun b!6571685 () Bool)

(declare-fun nullableZipper!2192 ((InoxSet Context!11662)) Bool)

(assert (=> b!6571685 (= e!3977713 (nullableZipper!2192 lt!2408641))))

(declare-fun b!6571686 () Bool)

(assert (=> b!6571686 (= e!3977713 (matchZipper!2459 (derivationStepZipper!2413 lt!2408641 (head!13345 (t!379286 s!2326))) (tail!12430 (t!379286 s!2326))))))

(assert (= (and d!2061817 c!1208173) b!6571685))

(assert (= (and d!2061817 (not c!1208173)) b!6571686))

(declare-fun m!7353388 () Bool)

(assert (=> d!2061817 m!7353388))

(declare-fun m!7353390 () Bool)

(assert (=> b!6571685 m!7353390))

(declare-fun m!7353392 () Bool)

(assert (=> b!6571686 m!7353392))

(assert (=> b!6571686 m!7353392))

(declare-fun m!7353394 () Bool)

(assert (=> b!6571686 m!7353394))

(declare-fun m!7353396 () Bool)

(assert (=> b!6571686 m!7353396))

(assert (=> b!6571686 m!7353394))

(assert (=> b!6571686 m!7353396))

(declare-fun m!7353402 () Bool)

(assert (=> b!6571686 m!7353402))

(assert (=> b!6571098 d!2061817))

(declare-fun d!2061831 () Bool)

(declare-fun lt!2408737 () Regex!16447)

(assert (=> d!2061831 (validRegex!8183 lt!2408737)))

(assert (=> d!2061831 (= lt!2408737 (generalisedUnion!2291 (unfocusZipperList!1868 (Cons!65518 lt!2408659 Nil!65518))))))

(assert (=> d!2061831 (= (unfocusZipper!2189 (Cons!65518 lt!2408659 Nil!65518)) lt!2408737)))

(declare-fun bs!1678677 () Bool)

(assert (= bs!1678677 d!2061831))

(declare-fun m!7353406 () Bool)

(assert (=> bs!1678677 m!7353406))

(declare-fun m!7353410 () Bool)

(assert (=> bs!1678677 m!7353410))

(assert (=> bs!1678677 m!7353410))

(declare-fun m!7353416 () Bool)

(assert (=> bs!1678677 m!7353416))

(assert (=> b!6571118 d!2061831))

(declare-fun call!571966 () Int)

(declare-fun call!571967 () Int)

(declare-fun call!571963 () Int)

(declare-fun bm!571956 () Bool)

(declare-fun c!1208199 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!571956 (= call!571966 (maxBigInt!0 (ite c!1208199 call!571963 call!571967) (ite c!1208199 call!571967 call!571963)))))

(declare-fun c!1208203 () Bool)

(declare-fun bm!571957 () Bool)

(declare-fun call!571962 () Int)

(assert (=> bm!571957 (= call!571962 (regexDepth!344 (ite c!1208203 (reg!16776 r!7292) (ite c!1208199 (regOne!33407 r!7292) (regTwo!33406 r!7292)))))))

(declare-fun b!6571808 () Bool)

(declare-fun e!3977782 () Bool)

(declare-fun lt!2408741 () Int)

(declare-fun call!571964 () Int)

(assert (=> b!6571808 (= e!3977782 (> lt!2408741 call!571964))))

(declare-fun b!6571809 () Bool)

(declare-fun e!3977783 () Bool)

(declare-fun e!3977785 () Bool)

(assert (=> b!6571809 (= e!3977783 e!3977785)))

(declare-fun c!1208197 () Bool)

(assert (=> b!6571809 (= c!1208197 ((_ is Concat!25292) r!7292))))

(declare-fun b!6571810 () Bool)

(declare-fun e!3977788 () Int)

(assert (=> b!6571810 (= e!3977788 (+ 1 call!571962))))

(declare-fun b!6571811 () Bool)

(declare-fun e!3977784 () Int)

(assert (=> b!6571811 (= e!3977784 (+ 1 call!571966))))

(declare-fun bm!571958 () Bool)

(declare-fun c!1208200 () Bool)

(declare-fun call!571965 () Int)

(assert (=> bm!571958 (= call!571965 (regexDepth!344 (ite c!1208200 (regTwo!33407 r!7292) (ite c!1208197 (regOne!33406 r!7292) (reg!16776 r!7292)))))))

(declare-fun bm!571959 () Bool)

(assert (=> bm!571959 (= call!571967 (regexDepth!344 (ite c!1208199 (regTwo!33407 r!7292) (regOne!33406 r!7292))))))

(declare-fun b!6571812 () Bool)

(assert (=> b!6571812 (= c!1208199 ((_ is Union!16447) r!7292))))

(assert (=> b!6571812 (= e!3977788 e!3977784)))

(declare-fun bm!571960 () Bool)

(assert (=> bm!571960 (= call!571964 (regexDepth!344 (ite c!1208200 (regOne!33407 r!7292) (regTwo!33406 r!7292))))))

(declare-fun b!6571813 () Bool)

(declare-fun e!3977789 () Int)

(assert (=> b!6571813 (= e!3977784 e!3977789)))

(declare-fun c!1208201 () Bool)

(assert (=> b!6571813 (= c!1208201 ((_ is Concat!25292) r!7292))))

(declare-fun bm!571961 () Bool)

(assert (=> bm!571961 (= call!571963 call!571962)))

(declare-fun b!6571814 () Bool)

(declare-fun e!3977790 () Bool)

(assert (=> b!6571814 (= e!3977783 e!3977790)))

(declare-fun res!2696885 () Bool)

(assert (=> b!6571814 (= res!2696885 (> lt!2408741 call!571964))))

(assert (=> b!6571814 (=> (not res!2696885) (not e!3977790))))

(declare-fun b!6571815 () Bool)

(declare-fun e!3977786 () Int)

(assert (=> b!6571815 (= e!3977786 1)))

(declare-fun b!6571816 () Bool)

(assert (=> b!6571816 (= e!3977789 (+ 1 call!571966))))

(declare-fun b!6571817 () Bool)

(declare-fun res!2696886 () Bool)

(assert (=> b!6571817 (=> (not res!2696886) (not e!3977782))))

(declare-fun call!571961 () Int)

(assert (=> b!6571817 (= res!2696886 (> lt!2408741 call!571961))))

(assert (=> b!6571817 (= e!3977785 e!3977782)))

(declare-fun d!2061835 () Bool)

(declare-fun e!3977781 () Bool)

(assert (=> d!2061835 e!3977781))

(declare-fun res!2696884 () Bool)

(assert (=> d!2061835 (=> (not res!2696884) (not e!3977781))))

(assert (=> d!2061835 (= res!2696884 (> lt!2408741 0))))

(assert (=> d!2061835 (= lt!2408741 e!3977786)))

(declare-fun c!1208198 () Bool)

(assert (=> d!2061835 (= c!1208198 ((_ is ElementMatch!16447) r!7292))))

(assert (=> d!2061835 (= (regexDepth!344 r!7292) lt!2408741)))

(declare-fun b!6571818 () Bool)

(declare-fun e!3977787 () Bool)

(assert (=> b!6571818 (= e!3977787 (= lt!2408741 1))))

(declare-fun b!6571819 () Bool)

(assert (=> b!6571819 (= e!3977790 (> lt!2408741 call!571965))))

(declare-fun b!6571820 () Bool)

(assert (=> b!6571820 (= e!3977781 e!3977783)))

(assert (=> b!6571820 (= c!1208200 ((_ is Union!16447) r!7292))))

(declare-fun b!6571821 () Bool)

(assert (=> b!6571821 (= e!3977786 e!3977788)))

(assert (=> b!6571821 (= c!1208203 ((_ is Star!16447) r!7292))))

(declare-fun b!6571822 () Bool)

(assert (=> b!6571822 (= e!3977789 1)))

(declare-fun bm!571962 () Bool)

(assert (=> bm!571962 (= call!571961 call!571965)))

(declare-fun b!6571823 () Bool)

(declare-fun c!1208202 () Bool)

(assert (=> b!6571823 (= c!1208202 ((_ is Star!16447) r!7292))))

(assert (=> b!6571823 (= e!3977785 e!3977787)))

(declare-fun b!6571824 () Bool)

(assert (=> b!6571824 (= e!3977787 (> lt!2408741 call!571961))))

(assert (= (and d!2061835 c!1208198) b!6571815))

(assert (= (and d!2061835 (not c!1208198)) b!6571821))

(assert (= (and b!6571821 c!1208203) b!6571810))

(assert (= (and b!6571821 (not c!1208203)) b!6571812))

(assert (= (and b!6571812 c!1208199) b!6571811))

(assert (= (and b!6571812 (not c!1208199)) b!6571813))

(assert (= (and b!6571813 c!1208201) b!6571816))

(assert (= (and b!6571813 (not c!1208201)) b!6571822))

(assert (= (or b!6571811 b!6571816) bm!571959))

(assert (= (or b!6571811 b!6571816) bm!571961))

(assert (= (or b!6571811 b!6571816) bm!571956))

(assert (= (or b!6571810 bm!571961) bm!571957))

(assert (= (and d!2061835 res!2696884) b!6571820))

(assert (= (and b!6571820 c!1208200) b!6571814))

(assert (= (and b!6571820 (not c!1208200)) b!6571809))

(assert (= (and b!6571814 res!2696885) b!6571819))

(assert (= (and b!6571809 c!1208197) b!6571817))

(assert (= (and b!6571809 (not c!1208197)) b!6571823))

(assert (= (and b!6571817 res!2696886) b!6571808))

(assert (= (and b!6571823 c!1208202) b!6571824))

(assert (= (and b!6571823 (not c!1208202)) b!6571818))

(assert (= (or b!6571817 b!6571824) bm!571962))

(assert (= (or b!6571819 bm!571962) bm!571958))

(assert (= (or b!6571814 b!6571808) bm!571960))

(declare-fun m!7353440 () Bool)

(assert (=> bm!571958 m!7353440))

(declare-fun m!7353442 () Bool)

(assert (=> bm!571957 m!7353442))

(declare-fun m!7353444 () Bool)

(assert (=> bm!571956 m!7353444))

(declare-fun m!7353446 () Bool)

(assert (=> bm!571960 m!7353446))

(declare-fun m!7353448 () Bool)

(assert (=> bm!571959 m!7353448))

(assert (=> b!6571119 d!2061835))

(declare-fun call!571970 () Int)

(declare-fun c!1208206 () Bool)

(declare-fun call!571973 () Int)

(declare-fun call!571974 () Int)

(declare-fun bm!571963 () Bool)

(assert (=> bm!571963 (= call!571973 (maxBigInt!0 (ite c!1208206 call!571970 call!571974) (ite c!1208206 call!571974 call!571970)))))

(declare-fun bm!571964 () Bool)

(declare-fun c!1208210 () Bool)

(declare-fun call!571969 () Int)

(assert (=> bm!571964 (= call!571969 (regexDepth!344 (ite c!1208210 (reg!16776 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))) (ite c!1208206 (regOne!33407 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))) (regTwo!33406 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343)))))))))))

(declare-fun b!6571825 () Bool)

(declare-fun e!3977792 () Bool)

(declare-fun lt!2408742 () Int)

(declare-fun call!571971 () Int)

(assert (=> b!6571825 (= e!3977792 (> lt!2408742 call!571971))))

(declare-fun b!6571826 () Bool)

(declare-fun e!3977793 () Bool)

(declare-fun e!3977795 () Bool)

(assert (=> b!6571826 (= e!3977793 e!3977795)))

(declare-fun c!1208204 () Bool)

(assert (=> b!6571826 (= c!1208204 ((_ is Concat!25292) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571827 () Bool)

(declare-fun e!3977798 () Int)

(assert (=> b!6571827 (= e!3977798 (+ 1 call!571969))))

(declare-fun b!6571828 () Bool)

(declare-fun e!3977794 () Int)

(assert (=> b!6571828 (= e!3977794 (+ 1 call!571973))))

(declare-fun c!1208207 () Bool)

(declare-fun bm!571965 () Bool)

(declare-fun call!571972 () Int)

(assert (=> bm!571965 (= call!571972 (regexDepth!344 (ite c!1208207 (regTwo!33407 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))) (ite c!1208204 (regOne!33406 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))) (reg!16776 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343)))))))))))

(declare-fun bm!571966 () Bool)

(assert (=> bm!571966 (= call!571974 (regexDepth!344 (ite c!1208206 (regTwo!33407 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))) (regOne!33406 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))))

(declare-fun b!6571829 () Bool)

(assert (=> b!6571829 (= c!1208206 ((_ is Union!16447) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(assert (=> b!6571829 (= e!3977798 e!3977794)))

(declare-fun bm!571967 () Bool)

(assert (=> bm!571967 (= call!571971 (regexDepth!344 (ite c!1208207 (regOne!33407 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))) (regTwo!33406 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))))

(declare-fun b!6571830 () Bool)

(declare-fun e!3977799 () Int)

(assert (=> b!6571830 (= e!3977794 e!3977799)))

(declare-fun c!1208208 () Bool)

(assert (=> b!6571830 (= c!1208208 ((_ is Concat!25292) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun bm!571968 () Bool)

(assert (=> bm!571968 (= call!571970 call!571969)))

(declare-fun b!6571831 () Bool)

(declare-fun e!3977800 () Bool)

(assert (=> b!6571831 (= e!3977793 e!3977800)))

(declare-fun res!2696888 () Bool)

(assert (=> b!6571831 (= res!2696888 (> lt!2408742 call!571971))))

(assert (=> b!6571831 (=> (not res!2696888) (not e!3977800))))

(declare-fun b!6571832 () Bool)

(declare-fun e!3977796 () Int)

(assert (=> b!6571832 (= e!3977796 1)))

(declare-fun b!6571833 () Bool)

(assert (=> b!6571833 (= e!3977799 (+ 1 call!571973))))

(declare-fun b!6571834 () Bool)

(declare-fun res!2696889 () Bool)

(assert (=> b!6571834 (=> (not res!2696889) (not e!3977792))))

(declare-fun call!571968 () Int)

(assert (=> b!6571834 (= res!2696889 (> lt!2408742 call!571968))))

(assert (=> b!6571834 (= e!3977795 e!3977792)))

(declare-fun d!2061853 () Bool)

(declare-fun e!3977791 () Bool)

(assert (=> d!2061853 e!3977791))

(declare-fun res!2696887 () Bool)

(assert (=> d!2061853 (=> (not res!2696887) (not e!3977791))))

(assert (=> d!2061853 (= res!2696887 (> lt!2408742 0))))

(assert (=> d!2061853 (= lt!2408742 e!3977796)))

(declare-fun c!1208205 () Bool)

(assert (=> d!2061853 (= c!1208205 ((_ is ElementMatch!16447) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(assert (=> d!2061853 (= (regexDepth!344 (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))) lt!2408742)))

(declare-fun b!6571835 () Bool)

(declare-fun e!3977797 () Bool)

(assert (=> b!6571835 (= e!3977797 (= lt!2408742 1))))

(declare-fun b!6571836 () Bool)

(assert (=> b!6571836 (= e!3977800 (> lt!2408742 call!571972))))

(declare-fun b!6571837 () Bool)

(assert (=> b!6571837 (= e!3977791 e!3977793)))

(assert (=> b!6571837 (= c!1208207 ((_ is Union!16447) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571838 () Bool)

(assert (=> b!6571838 (= e!3977796 e!3977798)))

(assert (=> b!6571838 (= c!1208210 ((_ is Star!16447) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571839 () Bool)

(assert (=> b!6571839 (= e!3977799 1)))

(declare-fun bm!571969 () Bool)

(assert (=> bm!571969 (= call!571968 call!571972)))

(declare-fun b!6571840 () Bool)

(declare-fun c!1208209 () Bool)

(assert (=> b!6571840 (= c!1208209 ((_ is Star!16447) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(assert (=> b!6571840 (= e!3977795 e!3977797)))

(declare-fun b!6571841 () Bool)

(assert (=> b!6571841 (= e!3977797 (> lt!2408742 call!571968))))

(assert (= (and d!2061853 c!1208205) b!6571832))

(assert (= (and d!2061853 (not c!1208205)) b!6571838))

(assert (= (and b!6571838 c!1208210) b!6571827))

(assert (= (and b!6571838 (not c!1208210)) b!6571829))

(assert (= (and b!6571829 c!1208206) b!6571828))

(assert (= (and b!6571829 (not c!1208206)) b!6571830))

(assert (= (and b!6571830 c!1208208) b!6571833))

(assert (= (and b!6571830 (not c!1208208)) b!6571839))

(assert (= (or b!6571828 b!6571833) bm!571966))

(assert (= (or b!6571828 b!6571833) bm!571968))

(assert (= (or b!6571828 b!6571833) bm!571963))

(assert (= (or b!6571827 bm!571968) bm!571964))

(assert (= (and d!2061853 res!2696887) b!6571837))

(assert (= (and b!6571837 c!1208207) b!6571831))

(assert (= (and b!6571837 (not c!1208207)) b!6571826))

(assert (= (and b!6571831 res!2696888) b!6571836))

(assert (= (and b!6571826 c!1208204) b!6571834))

(assert (= (and b!6571826 (not c!1208204)) b!6571840))

(assert (= (and b!6571834 res!2696889) b!6571825))

(assert (= (and b!6571840 c!1208209) b!6571841))

(assert (= (and b!6571840 (not c!1208209)) b!6571835))

(assert (= (or b!6571834 b!6571841) bm!571969))

(assert (= (or b!6571836 bm!571969) bm!571965))

(assert (= (or b!6571831 b!6571825) bm!571967))

(declare-fun m!7353450 () Bool)

(assert (=> bm!571965 m!7353450))

(declare-fun m!7353452 () Bool)

(assert (=> bm!571964 m!7353452))

(declare-fun m!7353454 () Bool)

(assert (=> bm!571963 m!7353454))

(declare-fun m!7353456 () Bool)

(assert (=> bm!571967 m!7353456))

(declare-fun m!7353458 () Bool)

(assert (=> bm!571966 m!7353458))

(assert (=> b!6571119 d!2061853))

(declare-fun bs!1678684 () Bool)

(declare-fun d!2061855 () Bool)

(assert (= bs!1678684 (and d!2061855 d!2061719)))

(declare-fun lambda!365973 () Int)

(assert (=> bs!1678684 (= lambda!365973 lambda!365934)))

(declare-fun e!3977815 () Bool)

(assert (=> d!2061855 e!3977815))

(declare-fun res!2696894 () Bool)

(assert (=> d!2061855 (=> (not res!2696894) (not e!3977815))))

(declare-fun lt!2408745 () Regex!16447)

(assert (=> d!2061855 (= res!2696894 (validRegex!8183 lt!2408745))))

(declare-fun e!3977814 () Regex!16447)

(assert (=> d!2061855 (= lt!2408745 e!3977814)))

(declare-fun c!1208220 () Bool)

(declare-fun e!3977816 () Bool)

(assert (=> d!2061855 (= c!1208220 e!3977816)))

(declare-fun res!2696895 () Bool)

(assert (=> d!2061855 (=> (not res!2696895) (not e!3977816))))

(assert (=> d!2061855 (= res!2696895 ((_ is Cons!65517) (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(assert (=> d!2061855 (forall!15619 (t!379287 (exprs!6331 (h!71966 zl!343))) lambda!365973)))

(assert (=> d!2061855 (= (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343)))) lt!2408745)))

(declare-fun b!6571862 () Bool)

(declare-fun e!3977817 () Regex!16447)

(assert (=> b!6571862 (= e!3977814 e!3977817)))

(declare-fun c!1208221 () Bool)

(assert (=> b!6571862 (= c!1208221 ((_ is Cons!65517) (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6571863 () Bool)

(declare-fun e!3977818 () Bool)

(declare-fun isConcat!1348 (Regex!16447) Bool)

(assert (=> b!6571863 (= e!3977818 (isConcat!1348 lt!2408745))))

(declare-fun b!6571864 () Bool)

(assert (=> b!6571864 (= e!3977817 EmptyExpr!16447)))

(declare-fun b!6571865 () Bool)

(declare-fun e!3977813 () Bool)

(declare-fun isEmptyExpr!1825 (Regex!16447) Bool)

(assert (=> b!6571865 (= e!3977813 (isEmptyExpr!1825 lt!2408745))))

(declare-fun b!6571866 () Bool)

(declare-fun head!13346 (List!65641) Regex!16447)

(assert (=> b!6571866 (= e!3977818 (= lt!2408745 (head!13346 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571867 () Bool)

(assert (=> b!6571867 (= e!3977815 e!3977813)))

(declare-fun c!1208219 () Bool)

(assert (=> b!6571867 (= c!1208219 (isEmpty!37765 (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6571868 () Bool)

(assert (=> b!6571868 (= e!3977816 (isEmpty!37765 (t!379287 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571869 () Bool)

(assert (=> b!6571869 (= e!3977813 e!3977818)))

(declare-fun c!1208222 () Bool)

(declare-fun tail!12431 (List!65641) List!65641)

(assert (=> b!6571869 (= c!1208222 (isEmpty!37765 (tail!12431 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(declare-fun b!6571870 () Bool)

(assert (=> b!6571870 (= e!3977814 (h!71965 (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6571871 () Bool)

(assert (=> b!6571871 (= e!3977817 (Concat!25292 (h!71965 (t!379287 (exprs!6331 (h!71966 zl!343)))) (generalisedConcat!2044 (t!379287 (t!379287 (exprs!6331 (h!71966 zl!343)))))))))

(assert (= (and d!2061855 res!2696895) b!6571868))

(assert (= (and d!2061855 c!1208220) b!6571870))

(assert (= (and d!2061855 (not c!1208220)) b!6571862))

(assert (= (and b!6571862 c!1208221) b!6571871))

(assert (= (and b!6571862 (not c!1208221)) b!6571864))

(assert (= (and d!2061855 res!2696894) b!6571867))

(assert (= (and b!6571867 c!1208219) b!6571865))

(assert (= (and b!6571867 (not c!1208219)) b!6571869))

(assert (= (and b!6571869 c!1208222) b!6571866))

(assert (= (and b!6571869 (not c!1208222)) b!6571863))

(declare-fun m!7353460 () Bool)

(assert (=> b!6571866 m!7353460))

(declare-fun m!7353462 () Bool)

(assert (=> b!6571863 m!7353462))

(declare-fun m!7353464 () Bool)

(assert (=> b!6571869 m!7353464))

(assert (=> b!6571869 m!7353464))

(declare-fun m!7353466 () Bool)

(assert (=> b!6571869 m!7353466))

(declare-fun m!7353468 () Bool)

(assert (=> d!2061855 m!7353468))

(declare-fun m!7353470 () Bool)

(assert (=> d!2061855 m!7353470))

(declare-fun m!7353472 () Bool)

(assert (=> b!6571871 m!7353472))

(declare-fun m!7353474 () Bool)

(assert (=> b!6571865 m!7353474))

(assert (=> b!6571867 m!7352972))

(declare-fun m!7353476 () Bool)

(assert (=> b!6571868 m!7353476))

(assert (=> b!6571119 d!2061855))

(declare-fun e!3977821 () Bool)

(declare-fun d!2061857 () Bool)

(assert (=> d!2061857 (= (matchZipper!2459 ((_ map or) lt!2408660 lt!2408641) (t!379286 s!2326)) e!3977821)))

(declare-fun res!2696898 () Bool)

(assert (=> d!2061857 (=> res!2696898 e!3977821)))

(assert (=> d!2061857 (= res!2696898 (matchZipper!2459 lt!2408660 (t!379286 s!2326)))))

(declare-fun lt!2408748 () Unit!159123)

(declare-fun choose!49086 ((InoxSet Context!11662) (InoxSet Context!11662) List!65640) Unit!159123)

(assert (=> d!2061857 (= lt!2408748 (choose!49086 lt!2408660 lt!2408641 (t!379286 s!2326)))))

(assert (=> d!2061857 (= (lemmaZipperConcatMatchesSameAsBothZippers!1278 lt!2408660 lt!2408641 (t!379286 s!2326)) lt!2408748)))

(declare-fun b!6571874 () Bool)

(assert (=> b!6571874 (= e!3977821 (matchZipper!2459 lt!2408641 (t!379286 s!2326)))))

(assert (= (and d!2061857 (not res!2696898)) b!6571874))

(assert (=> d!2061857 m!7353004))

(assert (=> d!2061857 m!7352998))

(declare-fun m!7353478 () Bool)

(assert (=> d!2061857 m!7353478))

(assert (=> b!6571874 m!7352926))

(assert (=> b!6571102 d!2061857))

(declare-fun d!2061859 () Bool)

(declare-fun c!1208223 () Bool)

(assert (=> d!2061859 (= c!1208223 (isEmpty!37769 (t!379286 s!2326)))))

(declare-fun e!3977822 () Bool)

(assert (=> d!2061859 (= (matchZipper!2459 lt!2408660 (t!379286 s!2326)) e!3977822)))

(declare-fun b!6571875 () Bool)

(assert (=> b!6571875 (= e!3977822 (nullableZipper!2192 lt!2408660))))

(declare-fun b!6571876 () Bool)

(assert (=> b!6571876 (= e!3977822 (matchZipper!2459 (derivationStepZipper!2413 lt!2408660 (head!13345 (t!379286 s!2326))) (tail!12430 (t!379286 s!2326))))))

(assert (= (and d!2061859 c!1208223) b!6571875))

(assert (= (and d!2061859 (not c!1208223)) b!6571876))

(assert (=> d!2061859 m!7353388))

(declare-fun m!7353480 () Bool)

(assert (=> b!6571875 m!7353480))

(assert (=> b!6571876 m!7353392))

(assert (=> b!6571876 m!7353392))

(declare-fun m!7353482 () Bool)

(assert (=> b!6571876 m!7353482))

(assert (=> b!6571876 m!7353396))

(assert (=> b!6571876 m!7353482))

(assert (=> b!6571876 m!7353396))

(declare-fun m!7353484 () Bool)

(assert (=> b!6571876 m!7353484))

(assert (=> b!6571102 d!2061859))

(declare-fun d!2061861 () Bool)

(declare-fun c!1208224 () Bool)

(assert (=> d!2061861 (= c!1208224 (isEmpty!37769 (t!379286 s!2326)))))

(declare-fun e!3977823 () Bool)

(assert (=> d!2061861 (= (matchZipper!2459 ((_ map or) lt!2408660 lt!2408641) (t!379286 s!2326)) e!3977823)))

(declare-fun b!6571877 () Bool)

(assert (=> b!6571877 (= e!3977823 (nullableZipper!2192 ((_ map or) lt!2408660 lt!2408641)))))

(declare-fun b!6571878 () Bool)

(assert (=> b!6571878 (= e!3977823 (matchZipper!2459 (derivationStepZipper!2413 ((_ map or) lt!2408660 lt!2408641) (head!13345 (t!379286 s!2326))) (tail!12430 (t!379286 s!2326))))))

(assert (= (and d!2061861 c!1208224) b!6571877))

(assert (= (and d!2061861 (not c!1208224)) b!6571878))

(assert (=> d!2061861 m!7353388))

(declare-fun m!7353486 () Bool)

(assert (=> b!6571877 m!7353486))

(assert (=> b!6571878 m!7353392))

(assert (=> b!6571878 m!7353392))

(declare-fun m!7353488 () Bool)

(assert (=> b!6571878 m!7353488))

(assert (=> b!6571878 m!7353396))

(assert (=> b!6571878 m!7353488))

(assert (=> b!6571878 m!7353396))

(declare-fun m!7353490 () Bool)

(assert (=> b!6571878 m!7353490))

(assert (=> b!6571102 d!2061861))

(declare-fun bs!1678685 () Bool)

(declare-fun d!2061863 () Bool)

(assert (= bs!1678685 (and d!2061863 d!2061719)))

(declare-fun lambda!365976 () Int)

(assert (=> bs!1678685 (= lambda!365976 lambda!365934)))

(declare-fun bs!1678686 () Bool)

(assert (= bs!1678686 (and d!2061863 d!2061855)))

(assert (=> bs!1678686 (= lambda!365976 lambda!365973)))

(declare-fun b!6571899 () Bool)

(declare-fun e!3977838 () Bool)

(declare-fun lt!2408751 () Regex!16447)

(assert (=> b!6571899 (= e!3977838 (= lt!2408751 (head!13346 (unfocusZipperList!1868 zl!343))))))

(declare-fun e!3977841 () Bool)

(assert (=> d!2061863 e!3977841))

(declare-fun res!2696903 () Bool)

(assert (=> d!2061863 (=> (not res!2696903) (not e!3977841))))

(assert (=> d!2061863 (= res!2696903 (validRegex!8183 lt!2408751))))

(declare-fun e!3977836 () Regex!16447)

(assert (=> d!2061863 (= lt!2408751 e!3977836)))

(declare-fun c!1208233 () Bool)

(declare-fun e!3977840 () Bool)

(assert (=> d!2061863 (= c!1208233 e!3977840)))

(declare-fun res!2696904 () Bool)

(assert (=> d!2061863 (=> (not res!2696904) (not e!3977840))))

(assert (=> d!2061863 (= res!2696904 ((_ is Cons!65517) (unfocusZipperList!1868 zl!343)))))

(assert (=> d!2061863 (forall!15619 (unfocusZipperList!1868 zl!343) lambda!365976)))

(assert (=> d!2061863 (= (generalisedUnion!2291 (unfocusZipperList!1868 zl!343)) lt!2408751)))

(declare-fun b!6571900 () Bool)

(assert (=> b!6571900 (= e!3977836 (h!71965 (unfocusZipperList!1868 zl!343)))))

(declare-fun b!6571901 () Bool)

(declare-fun e!3977837 () Bool)

(assert (=> b!6571901 (= e!3977837 e!3977838)))

(declare-fun c!1208234 () Bool)

(assert (=> b!6571901 (= c!1208234 (isEmpty!37765 (tail!12431 (unfocusZipperList!1868 zl!343))))))

(declare-fun b!6571902 () Bool)

(declare-fun e!3977839 () Regex!16447)

(assert (=> b!6571902 (= e!3977836 e!3977839)))

(declare-fun c!1208236 () Bool)

(assert (=> b!6571902 (= c!1208236 ((_ is Cons!65517) (unfocusZipperList!1868 zl!343)))))

(declare-fun b!6571903 () Bool)

(assert (=> b!6571903 (= e!3977840 (isEmpty!37765 (t!379287 (unfocusZipperList!1868 zl!343))))))

(declare-fun b!6571904 () Bool)

(assert (=> b!6571904 (= e!3977841 e!3977837)))

(declare-fun c!1208235 () Bool)

(assert (=> b!6571904 (= c!1208235 (isEmpty!37765 (unfocusZipperList!1868 zl!343)))))

(declare-fun b!6571905 () Bool)

(declare-fun isUnion!1263 (Regex!16447) Bool)

(assert (=> b!6571905 (= e!3977838 (isUnion!1263 lt!2408751))))

(declare-fun b!6571906 () Bool)

(assert (=> b!6571906 (= e!3977839 EmptyLang!16447)))

(declare-fun b!6571907 () Bool)

(declare-fun isEmptyLang!1833 (Regex!16447) Bool)

(assert (=> b!6571907 (= e!3977837 (isEmptyLang!1833 lt!2408751))))

(declare-fun b!6571908 () Bool)

(assert (=> b!6571908 (= e!3977839 (Union!16447 (h!71965 (unfocusZipperList!1868 zl!343)) (generalisedUnion!2291 (t!379287 (unfocusZipperList!1868 zl!343)))))))

(assert (= (and d!2061863 res!2696904) b!6571903))

(assert (= (and d!2061863 c!1208233) b!6571900))

(assert (= (and d!2061863 (not c!1208233)) b!6571902))

(assert (= (and b!6571902 c!1208236) b!6571908))

(assert (= (and b!6571902 (not c!1208236)) b!6571906))

(assert (= (and d!2061863 res!2696903) b!6571904))

(assert (= (and b!6571904 c!1208235) b!6571907))

(assert (= (and b!6571904 (not c!1208235)) b!6571901))

(assert (= (and b!6571901 c!1208234) b!6571899))

(assert (= (and b!6571901 (not c!1208234)) b!6571905))

(declare-fun m!7353492 () Bool)

(assert (=> b!6571907 m!7353492))

(declare-fun m!7353494 () Bool)

(assert (=> d!2061863 m!7353494))

(assert (=> d!2061863 m!7352976))

(declare-fun m!7353496 () Bool)

(assert (=> d!2061863 m!7353496))

(assert (=> b!6571904 m!7352976))

(declare-fun m!7353498 () Bool)

(assert (=> b!6571904 m!7353498))

(declare-fun m!7353500 () Bool)

(assert (=> b!6571903 m!7353500))

(declare-fun m!7353502 () Bool)

(assert (=> b!6571908 m!7353502))

(declare-fun m!7353504 () Bool)

(assert (=> b!6571905 m!7353504))

(assert (=> b!6571899 m!7352976))

(declare-fun m!7353506 () Bool)

(assert (=> b!6571899 m!7353506))

(assert (=> b!6571901 m!7352976))

(declare-fun m!7353508 () Bool)

(assert (=> b!6571901 m!7353508))

(assert (=> b!6571901 m!7353508))

(declare-fun m!7353510 () Bool)

(assert (=> b!6571901 m!7353510))

(assert (=> b!6571122 d!2061863))

(declare-fun bs!1678687 () Bool)

(declare-fun d!2061865 () Bool)

(assert (= bs!1678687 (and d!2061865 d!2061719)))

(declare-fun lambda!365979 () Int)

(assert (=> bs!1678687 (= lambda!365979 lambda!365934)))

(declare-fun bs!1678688 () Bool)

(assert (= bs!1678688 (and d!2061865 d!2061855)))

(assert (=> bs!1678688 (= lambda!365979 lambda!365973)))

(declare-fun bs!1678689 () Bool)

(assert (= bs!1678689 (and d!2061865 d!2061863)))

(assert (=> bs!1678689 (= lambda!365979 lambda!365976)))

(declare-fun lt!2408754 () List!65641)

(assert (=> d!2061865 (forall!15619 lt!2408754 lambda!365979)))

(declare-fun e!3977844 () List!65641)

(assert (=> d!2061865 (= lt!2408754 e!3977844)))

(declare-fun c!1208239 () Bool)

(assert (=> d!2061865 (= c!1208239 ((_ is Cons!65518) zl!343))))

(assert (=> d!2061865 (= (unfocusZipperList!1868 zl!343) lt!2408754)))

(declare-fun b!6571913 () Bool)

(assert (=> b!6571913 (= e!3977844 (Cons!65517 (generalisedConcat!2044 (exprs!6331 (h!71966 zl!343))) (unfocusZipperList!1868 (t!379288 zl!343))))))

(declare-fun b!6571914 () Bool)

(assert (=> b!6571914 (= e!3977844 Nil!65517)))

(assert (= (and d!2061865 c!1208239) b!6571913))

(assert (= (and d!2061865 (not c!1208239)) b!6571914))

(declare-fun m!7353512 () Bool)

(assert (=> d!2061865 m!7353512))

(assert (=> b!6571913 m!7352896))

(declare-fun m!7353514 () Bool)

(assert (=> b!6571913 m!7353514))

(assert (=> b!6571122 d!2061865))

(declare-fun d!2061867 () Bool)

(declare-fun c!1208240 () Bool)

(assert (=> d!2061867 (= c!1208240 (isEmpty!37769 s!2326))))

(declare-fun e!3977845 () Bool)

(assert (=> d!2061867 (= (matchZipper!2459 z!1189 s!2326) e!3977845)))

(declare-fun b!6571915 () Bool)

(assert (=> b!6571915 (= e!3977845 (nullableZipper!2192 z!1189))))

(declare-fun b!6571916 () Bool)

(assert (=> b!6571916 (= e!3977845 (matchZipper!2459 (derivationStepZipper!2413 z!1189 (head!13345 s!2326)) (tail!12430 s!2326)))))

(assert (= (and d!2061867 c!1208240) b!6571915))

(assert (= (and d!2061867 (not c!1208240)) b!6571916))

(assert (=> d!2061867 m!7353262))

(declare-fun m!7353516 () Bool)

(assert (=> b!6571915 m!7353516))

(assert (=> b!6571916 m!7353272))

(assert (=> b!6571916 m!7353272))

(declare-fun m!7353518 () Bool)

(assert (=> b!6571916 m!7353518))

(assert (=> b!6571916 m!7353268))

(assert (=> b!6571916 m!7353518))

(assert (=> b!6571916 m!7353268))

(declare-fun m!7353520 () Bool)

(assert (=> b!6571916 m!7353520))

(assert (=> b!6571105 d!2061867))

(declare-fun d!2061869 () Bool)

(declare-fun c!1208241 () Bool)

(assert (=> d!2061869 (= c!1208241 (isEmpty!37769 s!2326))))

(declare-fun e!3977846 () Bool)

(assert (=> d!2061869 (= (matchZipper!2459 lt!2408655 s!2326) e!3977846)))

(declare-fun b!6571917 () Bool)

(assert (=> b!6571917 (= e!3977846 (nullableZipper!2192 lt!2408655))))

(declare-fun b!6571918 () Bool)

(assert (=> b!6571918 (= e!3977846 (matchZipper!2459 (derivationStepZipper!2413 lt!2408655 (head!13345 s!2326)) (tail!12430 s!2326)))))

(assert (= (and d!2061869 c!1208241) b!6571917))

(assert (= (and d!2061869 (not c!1208241)) b!6571918))

(assert (=> d!2061869 m!7353262))

(declare-fun m!7353522 () Bool)

(assert (=> b!6571917 m!7353522))

(assert (=> b!6571918 m!7353272))

(assert (=> b!6571918 m!7353272))

(declare-fun m!7353524 () Bool)

(assert (=> b!6571918 m!7353524))

(assert (=> b!6571918 m!7353268))

(assert (=> b!6571918 m!7353524))

(assert (=> b!6571918 m!7353268))

(declare-fun m!7353526 () Bool)

(assert (=> b!6571918 m!7353526))

(assert (=> b!6571103 d!2061869))

(declare-fun d!2061871 () Bool)

(declare-fun c!1208242 () Bool)

(assert (=> d!2061871 (= c!1208242 (isEmpty!37769 (t!379286 s!2326)))))

(declare-fun e!3977847 () Bool)

(assert (=> d!2061871 (= (matchZipper!2459 lt!2408666 (t!379286 s!2326)) e!3977847)))

(declare-fun b!6571919 () Bool)

(assert (=> b!6571919 (= e!3977847 (nullableZipper!2192 lt!2408666))))

(declare-fun b!6571920 () Bool)

(assert (=> b!6571920 (= e!3977847 (matchZipper!2459 (derivationStepZipper!2413 lt!2408666 (head!13345 (t!379286 s!2326))) (tail!12430 (t!379286 s!2326))))))

(assert (= (and d!2061871 c!1208242) b!6571919))

(assert (= (and d!2061871 (not c!1208242)) b!6571920))

(assert (=> d!2061871 m!7353388))

(declare-fun m!7353528 () Bool)

(assert (=> b!6571919 m!7353528))

(assert (=> b!6571920 m!7353392))

(assert (=> b!6571920 m!7353392))

(declare-fun m!7353530 () Bool)

(assert (=> b!6571920 m!7353530))

(assert (=> b!6571920 m!7353396))

(assert (=> b!6571920 m!7353530))

(assert (=> b!6571920 m!7353396))

(declare-fun m!7353532 () Bool)

(assert (=> b!6571920 m!7353532))

(assert (=> b!6571103 d!2061871))

(declare-fun b!6571921 () Bool)

(declare-fun e!3977848 () (InoxSet Context!11662))

(assert (=> b!6571921 (= e!3977848 (store ((as const (Array Context!11662 Bool)) false) lt!2408659 true))))

(declare-fun b!6571922 () Bool)

(declare-fun e!3977852 () (InoxSet Context!11662))

(declare-fun e!3977850 () (InoxSet Context!11662))

(assert (=> b!6571922 (= e!3977852 e!3977850)))

(declare-fun c!1208247 () Bool)

(assert (=> b!6571922 (= c!1208247 ((_ is Concat!25292) (reg!16776 (regOne!33406 r!7292))))))

(declare-fun bm!571970 () Bool)

(declare-fun call!571975 () (InoxSet Context!11662))

(declare-fun call!571978 () (InoxSet Context!11662))

(assert (=> bm!571970 (= call!571975 call!571978)))

(declare-fun bm!571971 () Bool)

(declare-fun call!571980 () (InoxSet Context!11662))

(assert (=> bm!571971 (= call!571978 call!571980)))

(declare-fun call!571979 () List!65641)

(declare-fun c!1208245 () Bool)

(declare-fun call!571976 () (InoxSet Context!11662))

(declare-fun bm!571972 () Bool)

(assert (=> bm!571972 (= call!571976 (derivationStepZipperDown!1695 (ite c!1208245 (regOne!33407 (reg!16776 (regOne!33406 r!7292))) (regOne!33406 (reg!16776 (regOne!33406 r!7292)))) (ite c!1208245 lt!2408659 (Context!11663 call!571979)) (h!71964 s!2326)))))

(declare-fun b!6571924 () Bool)

(declare-fun c!1208244 () Bool)

(declare-fun e!3977849 () Bool)

(assert (=> b!6571924 (= c!1208244 e!3977849)))

(declare-fun res!2696905 () Bool)

(assert (=> b!6571924 (=> (not res!2696905) (not e!3977849))))

(assert (=> b!6571924 (= res!2696905 ((_ is Concat!25292) (reg!16776 (regOne!33406 r!7292))))))

(declare-fun e!3977853 () (InoxSet Context!11662))

(assert (=> b!6571924 (= e!3977853 e!3977852)))

(declare-fun call!571977 () List!65641)

(declare-fun bm!571973 () Bool)

(assert (=> bm!571973 (= call!571980 (derivationStepZipperDown!1695 (ite c!1208245 (regTwo!33407 (reg!16776 (regOne!33406 r!7292))) (ite c!1208244 (regTwo!33406 (reg!16776 (regOne!33406 r!7292))) (ite c!1208247 (regOne!33406 (reg!16776 (regOne!33406 r!7292))) (reg!16776 (reg!16776 (regOne!33406 r!7292)))))) (ite (or c!1208245 c!1208244) lt!2408659 (Context!11663 call!571977)) (h!71964 s!2326)))))

(declare-fun b!6571925 () Bool)

(assert (=> b!6571925 (= e!3977853 ((_ map or) call!571976 call!571980))))

(declare-fun b!6571926 () Bool)

(assert (=> b!6571926 (= e!3977850 call!571975)))

(declare-fun b!6571927 () Bool)

(assert (=> b!6571927 (= e!3977848 e!3977853)))

(assert (=> b!6571927 (= c!1208245 ((_ is Union!16447) (reg!16776 (regOne!33406 r!7292))))))

(declare-fun b!6571928 () Bool)

(declare-fun e!3977851 () (InoxSet Context!11662))

(assert (=> b!6571928 (= e!3977851 call!571975)))

(declare-fun b!6571929 () Bool)

(assert (=> b!6571929 (= e!3977849 (nullable!6440 (regOne!33406 (reg!16776 (regOne!33406 r!7292)))))))

(declare-fun b!6571923 () Bool)

(declare-fun c!1208243 () Bool)

(assert (=> b!6571923 (= c!1208243 ((_ is Star!16447) (reg!16776 (regOne!33406 r!7292))))))

(assert (=> b!6571923 (= e!3977850 e!3977851)))

(declare-fun d!2061873 () Bool)

(declare-fun c!1208246 () Bool)

(assert (=> d!2061873 (= c!1208246 (and ((_ is ElementMatch!16447) (reg!16776 (regOne!33406 r!7292))) (= (c!1207988 (reg!16776 (regOne!33406 r!7292))) (h!71964 s!2326))))))

(assert (=> d!2061873 (= (derivationStepZipperDown!1695 (reg!16776 (regOne!33406 r!7292)) lt!2408659 (h!71964 s!2326)) e!3977848)))

(declare-fun b!6571930 () Bool)

(assert (=> b!6571930 (= e!3977851 ((as const (Array Context!11662 Bool)) false))))

(declare-fun bm!571974 () Bool)

(assert (=> bm!571974 (= call!571979 ($colon$colon!2288 (exprs!6331 lt!2408659) (ite (or c!1208244 c!1208247) (regTwo!33406 (reg!16776 (regOne!33406 r!7292))) (reg!16776 (regOne!33406 r!7292)))))))

(declare-fun b!6571931 () Bool)

(assert (=> b!6571931 (= e!3977852 ((_ map or) call!571976 call!571978))))

(declare-fun bm!571975 () Bool)

(assert (=> bm!571975 (= call!571977 call!571979)))

(assert (= (and d!2061873 c!1208246) b!6571921))

(assert (= (and d!2061873 (not c!1208246)) b!6571927))

(assert (= (and b!6571927 c!1208245) b!6571925))

(assert (= (and b!6571927 (not c!1208245)) b!6571924))

(assert (= (and b!6571924 res!2696905) b!6571929))

(assert (= (and b!6571924 c!1208244) b!6571931))

(assert (= (and b!6571924 (not c!1208244)) b!6571922))

(assert (= (and b!6571922 c!1208247) b!6571926))

(assert (= (and b!6571922 (not c!1208247)) b!6571923))

(assert (= (and b!6571923 c!1208243) b!6571928))

(assert (= (and b!6571923 (not c!1208243)) b!6571930))

(assert (= (or b!6571926 b!6571928) bm!571975))

(assert (= (or b!6571926 b!6571928) bm!571970))

(assert (= (or b!6571931 bm!571975) bm!571974))

(assert (= (or b!6571931 bm!571970) bm!571971))

(assert (= (or b!6571925 bm!571971) bm!571973))

(assert (= (or b!6571925 b!6571931) bm!571972))

(declare-fun m!7353534 () Bool)

(assert (=> bm!571972 m!7353534))

(declare-fun m!7353536 () Bool)

(assert (=> bm!571973 m!7353536))

(declare-fun m!7353538 () Bool)

(assert (=> b!6571929 m!7353538))

(assert (=> b!6571921 m!7352936))

(declare-fun m!7353540 () Bool)

(assert (=> bm!571974 m!7353540))

(assert (=> b!6571104 d!2061873))

(declare-fun call!571981 () (InoxSet Context!11662))

(declare-fun e!3977854 () (InoxSet Context!11662))

(declare-fun b!6571932 () Bool)

(assert (=> b!6571932 (= e!3977854 ((_ map or) call!571981 (derivationStepZipperUp!1621 (Context!11663 (t!379287 (exprs!6331 lt!2408651))) (h!71964 s!2326))))))

(declare-fun b!6571933 () Bool)

(declare-fun e!3977855 () (InoxSet Context!11662))

(assert (=> b!6571933 (= e!3977854 e!3977855)))

(declare-fun c!1208249 () Bool)

(assert (=> b!6571933 (= c!1208249 ((_ is Cons!65517) (exprs!6331 lt!2408651)))))

(declare-fun bm!571976 () Bool)

(assert (=> bm!571976 (= call!571981 (derivationStepZipperDown!1695 (h!71965 (exprs!6331 lt!2408651)) (Context!11663 (t!379287 (exprs!6331 lt!2408651))) (h!71964 s!2326)))))

(declare-fun d!2061875 () Bool)

(declare-fun c!1208248 () Bool)

(declare-fun e!3977856 () Bool)

(assert (=> d!2061875 (= c!1208248 e!3977856)))

(declare-fun res!2696906 () Bool)

(assert (=> d!2061875 (=> (not res!2696906) (not e!3977856))))

(assert (=> d!2061875 (= res!2696906 ((_ is Cons!65517) (exprs!6331 lt!2408651)))))

(assert (=> d!2061875 (= (derivationStepZipperUp!1621 lt!2408651 (h!71964 s!2326)) e!3977854)))

(declare-fun b!6571934 () Bool)

(assert (=> b!6571934 (= e!3977856 (nullable!6440 (h!71965 (exprs!6331 lt!2408651))))))

(declare-fun b!6571935 () Bool)

(assert (=> b!6571935 (= e!3977855 ((as const (Array Context!11662 Bool)) false))))

(declare-fun b!6571936 () Bool)

(assert (=> b!6571936 (= e!3977855 call!571981)))

(assert (= (and d!2061875 res!2696906) b!6571934))

(assert (= (and d!2061875 c!1208248) b!6571932))

(assert (= (and d!2061875 (not c!1208248)) b!6571933))

(assert (= (and b!6571933 c!1208249) b!6571936))

(assert (= (and b!6571933 (not c!1208249)) b!6571935))

(assert (= (or b!6571932 b!6571936) bm!571976))

(declare-fun m!7353542 () Bool)

(assert (=> b!6571932 m!7353542))

(declare-fun m!7353544 () Bool)

(assert (=> bm!571976 m!7353544))

(declare-fun m!7353546 () Bool)

(assert (=> b!6571934 m!7353546))

(assert (=> b!6571124 d!2061875))

(declare-fun d!2061877 () Bool)

(assert (=> d!2061877 (= (flatMap!1952 lt!2408654 lambda!365925) (choose!49084 lt!2408654 lambda!365925))))

(declare-fun bs!1678690 () Bool)

(assert (= bs!1678690 d!2061877))

(declare-fun m!7353548 () Bool)

(assert (=> bs!1678690 m!7353548))

(assert (=> b!6571124 d!2061877))

(declare-fun d!2061879 () Bool)

(declare-fun lt!2408755 () Regex!16447)

(assert (=> d!2061879 (validRegex!8183 lt!2408755)))

(assert (=> d!2061879 (= lt!2408755 (generalisedUnion!2291 (unfocusZipperList!1868 (Cons!65518 lt!2408651 Nil!65518))))))

(assert (=> d!2061879 (= (unfocusZipper!2189 (Cons!65518 lt!2408651 Nil!65518)) lt!2408755)))

(declare-fun bs!1678691 () Bool)

(assert (= bs!1678691 d!2061879))

(declare-fun m!7353550 () Bool)

(assert (=> bs!1678691 m!7353550))

(declare-fun m!7353552 () Bool)

(assert (=> bs!1678691 m!7353552))

(assert (=> bs!1678691 m!7353552))

(declare-fun m!7353554 () Bool)

(assert (=> bs!1678691 m!7353554))

(assert (=> b!6571124 d!2061879))

(declare-fun d!2061881 () Bool)

(assert (=> d!2061881 (= (flatMap!1952 lt!2408654 lambda!365925) (dynLambda!26067 lambda!365925 lt!2408651))))

(declare-fun lt!2408756 () Unit!159123)

(assert (=> d!2061881 (= lt!2408756 (choose!49083 lt!2408654 lt!2408651 lambda!365925))))

(assert (=> d!2061881 (= lt!2408654 (store ((as const (Array Context!11662 Bool)) false) lt!2408651 true))))

(assert (=> d!2061881 (= (lemmaFlatMapOnSingletonSet!1478 lt!2408654 lt!2408651 lambda!365925) lt!2408756)))

(declare-fun b_lambda!248551 () Bool)

(assert (=> (not b_lambda!248551) (not d!2061881)))

(declare-fun bs!1678692 () Bool)

(assert (= bs!1678692 d!2061881))

(assert (=> bs!1678692 m!7352944))

(declare-fun m!7353556 () Bool)

(assert (=> bs!1678692 m!7353556))

(declare-fun m!7353558 () Bool)

(assert (=> bs!1678692 m!7353558))

(assert (=> bs!1678692 m!7352932))

(assert (=> b!6571124 d!2061881))

(declare-fun d!2061883 () Bool)

(assert (=> d!2061883 (= (flatMap!1952 lt!2408653 lambda!365925) (choose!49084 lt!2408653 lambda!365925))))

(declare-fun bs!1678693 () Bool)

(assert (= bs!1678693 d!2061883))

(declare-fun m!7353560 () Bool)

(assert (=> bs!1678693 m!7353560))

(assert (=> b!6571124 d!2061883))

(declare-fun d!2061885 () Bool)

(assert (=> d!2061885 (= (flatMap!1952 lt!2408653 lambda!365925) (dynLambda!26067 lambda!365925 lt!2408659))))

(declare-fun lt!2408757 () Unit!159123)

(assert (=> d!2061885 (= lt!2408757 (choose!49083 lt!2408653 lt!2408659 lambda!365925))))

(assert (=> d!2061885 (= lt!2408653 (store ((as const (Array Context!11662 Bool)) false) lt!2408659 true))))

(assert (=> d!2061885 (= (lemmaFlatMapOnSingletonSet!1478 lt!2408653 lt!2408659 lambda!365925) lt!2408757)))

(declare-fun b_lambda!248553 () Bool)

(assert (=> (not b_lambda!248553) (not d!2061885)))

(declare-fun bs!1678694 () Bool)

(assert (= bs!1678694 d!2061885))

(assert (=> bs!1678694 m!7352938))

(declare-fun m!7353562 () Bool)

(assert (=> bs!1678694 m!7353562))

(declare-fun m!7353564 () Bool)

(assert (=> bs!1678694 m!7353564))

(assert (=> bs!1678694 m!7352936))

(assert (=> b!6571124 d!2061885))

(declare-fun call!571982 () (InoxSet Context!11662))

(declare-fun b!6571937 () Bool)

(declare-fun e!3977857 () (InoxSet Context!11662))

(assert (=> b!6571937 (= e!3977857 ((_ map or) call!571982 (derivationStepZipperUp!1621 (Context!11663 (t!379287 (exprs!6331 lt!2408659))) (h!71964 s!2326))))))

(declare-fun b!6571938 () Bool)

(declare-fun e!3977858 () (InoxSet Context!11662))

(assert (=> b!6571938 (= e!3977857 e!3977858)))

(declare-fun c!1208251 () Bool)

(assert (=> b!6571938 (= c!1208251 ((_ is Cons!65517) (exprs!6331 lt!2408659)))))

(declare-fun bm!571977 () Bool)

(assert (=> bm!571977 (= call!571982 (derivationStepZipperDown!1695 (h!71965 (exprs!6331 lt!2408659)) (Context!11663 (t!379287 (exprs!6331 lt!2408659))) (h!71964 s!2326)))))

(declare-fun d!2061887 () Bool)

(declare-fun c!1208250 () Bool)

(declare-fun e!3977859 () Bool)

(assert (=> d!2061887 (= c!1208250 e!3977859)))

(declare-fun res!2696907 () Bool)

(assert (=> d!2061887 (=> (not res!2696907) (not e!3977859))))

(assert (=> d!2061887 (= res!2696907 ((_ is Cons!65517) (exprs!6331 lt!2408659)))))

(assert (=> d!2061887 (= (derivationStepZipperUp!1621 lt!2408659 (h!71964 s!2326)) e!3977857)))

(declare-fun b!6571939 () Bool)

(assert (=> b!6571939 (= e!3977859 (nullable!6440 (h!71965 (exprs!6331 lt!2408659))))))

(declare-fun b!6571940 () Bool)

(assert (=> b!6571940 (= e!3977858 ((as const (Array Context!11662 Bool)) false))))

(declare-fun b!6571941 () Bool)

(assert (=> b!6571941 (= e!3977858 call!571982)))

(assert (= (and d!2061887 res!2696907) b!6571939))

(assert (= (and d!2061887 c!1208250) b!6571937))

(assert (= (and d!2061887 (not c!1208250)) b!6571938))

(assert (= (and b!6571938 c!1208251) b!6571941))

(assert (= (and b!6571938 (not c!1208251)) b!6571940))

(assert (= (or b!6571937 b!6571941) bm!571977))

(declare-fun m!7353566 () Bool)

(assert (=> b!6571937 m!7353566))

(declare-fun m!7353568 () Bool)

(assert (=> bm!571977 m!7353568))

(declare-fun m!7353570 () Bool)

(assert (=> b!6571939 m!7353570))

(assert (=> b!6571124 d!2061887))

(declare-fun bs!1678695 () Bool)

(declare-fun d!2061889 () Bool)

(assert (= bs!1678695 (and d!2061889 d!2061719)))

(declare-fun lambda!365980 () Int)

(assert (=> bs!1678695 (= lambda!365980 lambda!365934)))

(declare-fun bs!1678696 () Bool)

(assert (= bs!1678696 (and d!2061889 d!2061855)))

(assert (=> bs!1678696 (= lambda!365980 lambda!365973)))

(declare-fun bs!1678697 () Bool)

(assert (= bs!1678697 (and d!2061889 d!2061863)))

(assert (=> bs!1678697 (= lambda!365980 lambda!365976)))

(declare-fun bs!1678698 () Bool)

(assert (= bs!1678698 (and d!2061889 d!2061865)))

(assert (=> bs!1678698 (= lambda!365980 lambda!365979)))

(assert (=> d!2061889 (= (inv!84364 setElem!44872) (forall!15619 (exprs!6331 setElem!44872) lambda!365980))))

(declare-fun bs!1678699 () Bool)

(assert (= bs!1678699 d!2061889))

(declare-fun m!7353572 () Bool)

(assert (=> bs!1678699 m!7353572))

(assert (=> setNonEmpty!44872 d!2061889))

(declare-fun bs!1678700 () Bool)

(declare-fun d!2061891 () Bool)

(assert (= bs!1678700 (and d!2061891 b!6571099)))

(declare-fun lambda!365983 () Int)

(assert (=> bs!1678700 (= lambda!365983 lambda!365925)))

(assert (=> d!2061891 true))

(assert (=> d!2061891 (= (derivationStepZipper!2413 lt!2408667 (h!71964 s!2326)) (flatMap!1952 lt!2408667 lambda!365983))))

(declare-fun bs!1678701 () Bool)

(assert (= bs!1678701 d!2061891))

(declare-fun m!7353574 () Bool)

(assert (=> bs!1678701 m!7353574))

(assert (=> b!6571128 d!2061891))

(declare-fun d!2061893 () Bool)

(assert (=> d!2061893 (= (flatMap!1952 lt!2408667 lambda!365925) (choose!49084 lt!2408667 lambda!365925))))

(declare-fun bs!1678702 () Bool)

(assert (= bs!1678702 d!2061893))

(declare-fun m!7353576 () Bool)

(assert (=> bs!1678702 m!7353576))

(assert (=> b!6571128 d!2061893))

(assert (=> b!6571128 d!2061729))

(declare-fun d!2061895 () Bool)

(assert (=> d!2061895 (= (flatMap!1952 lt!2408667 lambda!365925) (dynLambda!26067 lambda!365925 lt!2408634))))

(declare-fun lt!2408758 () Unit!159123)

(assert (=> d!2061895 (= lt!2408758 (choose!49083 lt!2408667 lt!2408634 lambda!365925))))

(assert (=> d!2061895 (= lt!2408667 (store ((as const (Array Context!11662 Bool)) false) lt!2408634 true))))

(assert (=> d!2061895 (= (lemmaFlatMapOnSingletonSet!1478 lt!2408667 lt!2408634 lambda!365925) lt!2408758)))

(declare-fun b_lambda!248555 () Bool)

(assert (=> (not b_lambda!248555) (not d!2061895)))

(declare-fun bs!1678703 () Bool)

(assert (= bs!1678703 d!2061895))

(assert (=> bs!1678703 m!7352994))

(declare-fun m!7353578 () Bool)

(assert (=> bs!1678703 m!7353578))

(declare-fun m!7353580 () Bool)

(assert (=> bs!1678703 m!7353580))

(assert (=> bs!1678703 m!7352996))

(assert (=> b!6571128 d!2061895))

(assert (=> b!6571106 d!2061817))

(assert (=> b!6571127 d!2061817))

(declare-fun d!2061897 () Bool)

(declare-fun e!3977862 () Bool)

(assert (=> d!2061897 e!3977862))

(declare-fun res!2696910 () Bool)

(assert (=> d!2061897 (=> (not res!2696910) (not e!3977862))))

(declare-fun lt!2408761 () List!65642)

(declare-fun noDuplicate!2252 (List!65642) Bool)

(assert (=> d!2061897 (= res!2696910 (noDuplicate!2252 lt!2408761))))

(declare-fun choose!49089 ((InoxSet Context!11662)) List!65642)

(assert (=> d!2061897 (= lt!2408761 (choose!49089 z!1189))))

(assert (=> d!2061897 (= (toList!10231 z!1189) lt!2408761)))

(declare-fun b!6571946 () Bool)

(declare-fun content!12618 (List!65642) (InoxSet Context!11662))

(assert (=> b!6571946 (= e!3977862 (= (content!12618 lt!2408761) z!1189))))

(assert (= (and d!2061897 res!2696910) b!6571946))

(declare-fun m!7353582 () Bool)

(assert (=> d!2061897 m!7353582))

(declare-fun m!7353584 () Bool)

(assert (=> d!2061897 m!7353584))

(declare-fun m!7353586 () Bool)

(assert (=> b!6571946 m!7353586))

(assert (=> b!6571109 d!2061897))

(declare-fun b!6571965 () Bool)

(declare-fun e!3977879 () Bool)

(declare-fun call!571991 () Bool)

(assert (=> b!6571965 (= e!3977879 call!571991)))

(declare-fun b!6571966 () Bool)

(declare-fun e!3977882 () Bool)

(declare-fun call!571989 () Bool)

(assert (=> b!6571966 (= e!3977882 call!571989)))

(declare-fun b!6571967 () Bool)

(declare-fun e!3977883 () Bool)

(declare-fun e!3977881 () Bool)

(assert (=> b!6571967 (= e!3977883 e!3977881)))

(declare-fun c!1208258 () Bool)

(assert (=> b!6571967 (= c!1208258 ((_ is Star!16447) r!7292))))

(declare-fun d!2061899 () Bool)

(declare-fun res!2696922 () Bool)

(assert (=> d!2061899 (=> res!2696922 e!3977883)))

(assert (=> d!2061899 (= res!2696922 ((_ is ElementMatch!16447) r!7292))))

(assert (=> d!2061899 (= (validRegex!8183 r!7292) e!3977883)))

(declare-fun b!6571968 () Bool)

(declare-fun e!3977878 () Bool)

(assert (=> b!6571968 (= e!3977878 call!571991)))

(declare-fun b!6571969 () Bool)

(declare-fun res!2696925 () Bool)

(assert (=> b!6571969 (=> (not res!2696925) (not e!3977879))))

(declare-fun call!571990 () Bool)

(assert (=> b!6571969 (= res!2696925 call!571990)))

(declare-fun e!3977880 () Bool)

(assert (=> b!6571969 (= e!3977880 e!3977879)))

(declare-fun bm!571984 () Bool)

(declare-fun c!1208259 () Bool)

(assert (=> bm!571984 (= call!571990 (validRegex!8183 (ite c!1208259 (regOne!33407 r!7292) (regOne!33406 r!7292))))))

(declare-fun b!6571970 () Bool)

(declare-fun e!3977877 () Bool)

(assert (=> b!6571970 (= e!3977877 e!3977878)))

(declare-fun res!2696923 () Bool)

(assert (=> b!6571970 (=> (not res!2696923) (not e!3977878))))

(assert (=> b!6571970 (= res!2696923 call!571990)))

(declare-fun b!6571971 () Bool)

(declare-fun res!2696921 () Bool)

(assert (=> b!6571971 (=> res!2696921 e!3977877)))

(assert (=> b!6571971 (= res!2696921 (not ((_ is Concat!25292) r!7292)))))

(assert (=> b!6571971 (= e!3977880 e!3977877)))

(declare-fun bm!571985 () Bool)

(assert (=> bm!571985 (= call!571991 call!571989)))

(declare-fun b!6571972 () Bool)

(assert (=> b!6571972 (= e!3977881 e!3977882)))

(declare-fun res!2696924 () Bool)

(assert (=> b!6571972 (= res!2696924 (not (nullable!6440 (reg!16776 r!7292))))))

(assert (=> b!6571972 (=> (not res!2696924) (not e!3977882))))

(declare-fun b!6571973 () Bool)

(assert (=> b!6571973 (= e!3977881 e!3977880)))

(assert (=> b!6571973 (= c!1208259 ((_ is Union!16447) r!7292))))

(declare-fun bm!571986 () Bool)

(assert (=> bm!571986 (= call!571989 (validRegex!8183 (ite c!1208258 (reg!16776 r!7292) (ite c!1208259 (regTwo!33407 r!7292) (regTwo!33406 r!7292)))))))

(assert (= (and d!2061899 (not res!2696922)) b!6571967))

(assert (= (and b!6571967 c!1208258) b!6571972))

(assert (= (and b!6571967 (not c!1208258)) b!6571973))

(assert (= (and b!6571972 res!2696924) b!6571966))

(assert (= (and b!6571973 c!1208259) b!6571969))

(assert (= (and b!6571973 (not c!1208259)) b!6571971))

(assert (= (and b!6571969 res!2696925) b!6571965))

(assert (= (and b!6571971 (not res!2696921)) b!6571970))

(assert (= (and b!6571970 res!2696923) b!6571968))

(assert (= (or b!6571965 b!6571968) bm!571985))

(assert (= (or b!6571969 b!6571970) bm!571984))

(assert (= (or b!6571966 bm!571985) bm!571986))

(declare-fun m!7353588 () Bool)

(assert (=> bm!571984 m!7353588))

(declare-fun m!7353590 () Bool)

(assert (=> b!6571972 m!7353590))

(declare-fun m!7353592 () Bool)

(assert (=> bm!571986 m!7353592))

(assert (=> start!643842 d!2061899))

(declare-fun bs!1678704 () Bool)

(declare-fun b!6571977 () Bool)

(assert (= bs!1678704 (and b!6571977 b!6571094)))

(declare-fun lambda!365984 () Int)

(assert (=> bs!1678704 (not (= lambda!365984 lambda!365923))))

(assert (=> bs!1678704 (not (= lambda!365984 lambda!365924))))

(declare-fun bs!1678705 () Bool)

(assert (= bs!1678705 (and b!6571977 b!6571647)))

(assert (=> bs!1678705 (= (and (= (reg!16776 r!7292) (reg!16776 lt!2408638)) (= r!7292 lt!2408638)) (= lambda!365984 lambda!365964))))

(declare-fun bs!1678706 () Bool)

(assert (= bs!1678706 (and b!6571977 b!6571649)))

(assert (=> bs!1678706 (not (= lambda!365984 lambda!365966))))

(assert (=> b!6571977 true))

(assert (=> b!6571977 true))

(declare-fun bs!1678707 () Bool)

(declare-fun b!6571979 () Bool)

(assert (= bs!1678707 (and b!6571979 b!6571977)))

(declare-fun lambda!365985 () Int)

(assert (=> bs!1678707 (not (= lambda!365985 lambda!365984))))

(declare-fun bs!1678708 () Bool)

(assert (= bs!1678708 (and b!6571979 b!6571647)))

(assert (=> bs!1678708 (not (= lambda!365985 lambda!365964))))

(declare-fun bs!1678709 () Bool)

(assert (= bs!1678709 (and b!6571979 b!6571094)))

(assert (=> bs!1678709 (= lambda!365985 lambda!365924)))

(assert (=> bs!1678709 (not (= lambda!365985 lambda!365923))))

(declare-fun bs!1678710 () Bool)

(assert (= bs!1678710 (and b!6571979 b!6571649)))

(assert (=> bs!1678710 (= (and (= (regOne!33406 r!7292) (regOne!33406 lt!2408638)) (= (regTwo!33406 r!7292) (regTwo!33406 lt!2408638))) (= lambda!365985 lambda!365966))))

(assert (=> b!6571979 true))

(assert (=> b!6571979 true))

(declare-fun b!6571974 () Bool)

(declare-fun e!3977889 () Bool)

(declare-fun e!3977890 () Bool)

(assert (=> b!6571974 (= e!3977889 e!3977890)))

(declare-fun c!1208263 () Bool)

(assert (=> b!6571974 (= c!1208263 ((_ is Star!16447) r!7292))))

(declare-fun b!6571975 () Bool)

(declare-fun c!1208261 () Bool)

(assert (=> b!6571975 (= c!1208261 ((_ is ElementMatch!16447) r!7292))))

(declare-fun e!3977884 () Bool)

(declare-fun e!3977886 () Bool)

(assert (=> b!6571975 (= e!3977884 e!3977886)))

(declare-fun b!6571976 () Bool)

(declare-fun e!3977885 () Bool)

(assert (=> b!6571976 (= e!3977885 e!3977884)))

(declare-fun res!2696926 () Bool)

(assert (=> b!6571976 (= res!2696926 (not ((_ is EmptyLang!16447) r!7292)))))

(assert (=> b!6571976 (=> (not res!2696926) (not e!3977884))))

(declare-fun e!3977887 () Bool)

(declare-fun call!571993 () Bool)

(assert (=> b!6571977 (= e!3977887 call!571993)))

(declare-fun b!6571978 () Bool)

(declare-fun call!571992 () Bool)

(assert (=> b!6571978 (= e!3977885 call!571992)))

(assert (=> b!6571979 (= e!3977890 call!571993)))

(declare-fun b!6571980 () Bool)

(declare-fun e!3977888 () Bool)

(assert (=> b!6571980 (= e!3977889 e!3977888)))

(declare-fun res!2696927 () Bool)

(assert (=> b!6571980 (= res!2696927 (matchRSpec!3548 (regOne!33407 r!7292) s!2326))))

(assert (=> b!6571980 (=> res!2696927 e!3977888)))

(declare-fun b!6571981 () Bool)

(assert (=> b!6571981 (= e!3977888 (matchRSpec!3548 (regTwo!33407 r!7292) s!2326))))

(declare-fun d!2061901 () Bool)

(declare-fun c!1208262 () Bool)

(assert (=> d!2061901 (= c!1208262 ((_ is EmptyExpr!16447) r!7292))))

(assert (=> d!2061901 (= (matchRSpec!3548 r!7292 s!2326) e!3977885)))

(declare-fun b!6571982 () Bool)

(declare-fun c!1208260 () Bool)

(assert (=> b!6571982 (= c!1208260 ((_ is Union!16447) r!7292))))

(assert (=> b!6571982 (= e!3977886 e!3977889)))

(declare-fun b!6571983 () Bool)

(declare-fun res!2696928 () Bool)

(assert (=> b!6571983 (=> res!2696928 e!3977887)))

(assert (=> b!6571983 (= res!2696928 call!571992)))

(assert (=> b!6571983 (= e!3977890 e!3977887)))

(declare-fun bm!571987 () Bool)

(assert (=> bm!571987 (= call!571993 (Exists!3517 (ite c!1208263 lambda!365984 lambda!365985)))))

(declare-fun bm!571988 () Bool)

(assert (=> bm!571988 (= call!571992 (isEmpty!37769 s!2326))))

(declare-fun b!6571984 () Bool)

(assert (=> b!6571984 (= e!3977886 (= s!2326 (Cons!65516 (c!1207988 r!7292) Nil!65516)))))

(assert (= (and d!2061901 c!1208262) b!6571978))

(assert (= (and d!2061901 (not c!1208262)) b!6571976))

(assert (= (and b!6571976 res!2696926) b!6571975))

(assert (= (and b!6571975 c!1208261) b!6571984))

(assert (= (and b!6571975 (not c!1208261)) b!6571982))

(assert (= (and b!6571982 c!1208260) b!6571980))

(assert (= (and b!6571982 (not c!1208260)) b!6571974))

(assert (= (and b!6571980 (not res!2696927)) b!6571981))

(assert (= (and b!6571974 c!1208263) b!6571983))

(assert (= (and b!6571974 (not c!1208263)) b!6571979))

(assert (= (and b!6571983 (not res!2696928)) b!6571977))

(assert (= (or b!6571977 b!6571979) bm!571987))

(assert (= (or b!6571978 b!6571983) bm!571988))

(declare-fun m!7353594 () Bool)

(assert (=> b!6571980 m!7353594))

(declare-fun m!7353596 () Bool)

(assert (=> b!6571981 m!7353596))

(declare-fun m!7353598 () Bool)

(assert (=> bm!571987 m!7353598))

(assert (=> bm!571988 m!7353262))

(assert (=> b!6571129 d!2061901))

(declare-fun d!2061903 () Bool)

(declare-fun e!3977895 () Bool)

(assert (=> d!2061903 e!3977895))

(declare-fun c!1208265 () Bool)

(assert (=> d!2061903 (= c!1208265 ((_ is EmptyExpr!16447) r!7292))))

(declare-fun lt!2408762 () Bool)

(declare-fun e!3977892 () Bool)

(assert (=> d!2061903 (= lt!2408762 e!3977892)))

(declare-fun c!1208264 () Bool)

(assert (=> d!2061903 (= c!1208264 (isEmpty!37769 s!2326))))

(assert (=> d!2061903 (validRegex!8183 r!7292)))

(assert (=> d!2061903 (= (matchR!8630 r!7292 s!2326) lt!2408762)))

(declare-fun b!6571985 () Bool)

(declare-fun e!3977897 () Bool)

(assert (=> b!6571985 (= e!3977897 (not (= (head!13345 s!2326) (c!1207988 r!7292))))))

(declare-fun b!6571986 () Bool)

(declare-fun e!3977894 () Bool)

(assert (=> b!6571986 (= e!3977894 e!3977897)))

(declare-fun res!2696933 () Bool)

(assert (=> b!6571986 (=> res!2696933 e!3977897)))

(declare-fun call!571994 () Bool)

(assert (=> b!6571986 (= res!2696933 call!571994)))

(declare-fun b!6571987 () Bool)

(assert (=> b!6571987 (= e!3977892 (nullable!6440 r!7292))))

(declare-fun b!6571988 () Bool)

(assert (=> b!6571988 (= e!3977895 (= lt!2408762 call!571994))))

(declare-fun b!6571989 () Bool)

(declare-fun e!3977891 () Bool)

(assert (=> b!6571989 (= e!3977891 (= (head!13345 s!2326) (c!1207988 r!7292)))))

(declare-fun b!6571990 () Bool)

(declare-fun res!2696929 () Bool)

(declare-fun e!3977896 () Bool)

(assert (=> b!6571990 (=> res!2696929 e!3977896)))

(assert (=> b!6571990 (= res!2696929 (not ((_ is ElementMatch!16447) r!7292)))))

(declare-fun e!3977893 () Bool)

(assert (=> b!6571990 (= e!3977893 e!3977896)))

(declare-fun b!6571991 () Bool)

(assert (=> b!6571991 (= e!3977893 (not lt!2408762))))

(declare-fun bm!571989 () Bool)

(assert (=> bm!571989 (= call!571994 (isEmpty!37769 s!2326))))

(declare-fun b!6571992 () Bool)

(declare-fun res!2696934 () Bool)

(assert (=> b!6571992 (=> res!2696934 e!3977897)))

(assert (=> b!6571992 (= res!2696934 (not (isEmpty!37769 (tail!12430 s!2326))))))

(declare-fun b!6571993 () Bool)

(assert (=> b!6571993 (= e!3977896 e!3977894)))

(declare-fun res!2696930 () Bool)

(assert (=> b!6571993 (=> (not res!2696930) (not e!3977894))))

(assert (=> b!6571993 (= res!2696930 (not lt!2408762))))

(declare-fun b!6571994 () Bool)

(assert (=> b!6571994 (= e!3977895 e!3977893)))

(declare-fun c!1208266 () Bool)

(assert (=> b!6571994 (= c!1208266 ((_ is EmptyLang!16447) r!7292))))

(declare-fun b!6571995 () Bool)

(assert (=> b!6571995 (= e!3977892 (matchR!8630 (derivativeStep!5131 r!7292 (head!13345 s!2326)) (tail!12430 s!2326)))))

(declare-fun b!6571996 () Bool)

(declare-fun res!2696931 () Bool)

(assert (=> b!6571996 (=> (not res!2696931) (not e!3977891))))

(assert (=> b!6571996 (= res!2696931 (isEmpty!37769 (tail!12430 s!2326)))))

(declare-fun b!6571997 () Bool)

(declare-fun res!2696935 () Bool)

(assert (=> b!6571997 (=> (not res!2696935) (not e!3977891))))

(assert (=> b!6571997 (= res!2696935 (not call!571994))))

(declare-fun b!6571998 () Bool)

(declare-fun res!2696936 () Bool)

(assert (=> b!6571998 (=> res!2696936 e!3977896)))

(assert (=> b!6571998 (= res!2696936 e!3977891)))

(declare-fun res!2696932 () Bool)

(assert (=> b!6571998 (=> (not res!2696932) (not e!3977891))))

(assert (=> b!6571998 (= res!2696932 lt!2408762)))

(assert (= (and d!2061903 c!1208264) b!6571987))

(assert (= (and d!2061903 (not c!1208264)) b!6571995))

(assert (= (and d!2061903 c!1208265) b!6571988))

(assert (= (and d!2061903 (not c!1208265)) b!6571994))

(assert (= (and b!6571994 c!1208266) b!6571991))

(assert (= (and b!6571994 (not c!1208266)) b!6571990))

(assert (= (and b!6571990 (not res!2696929)) b!6571998))

(assert (= (and b!6571998 res!2696932) b!6571997))

(assert (= (and b!6571997 res!2696935) b!6571996))

(assert (= (and b!6571996 res!2696931) b!6571989))

(assert (= (and b!6571998 (not res!2696936)) b!6571993))

(assert (= (and b!6571993 res!2696930) b!6571986))

(assert (= (and b!6571986 (not res!2696933)) b!6571992))

(assert (= (and b!6571992 (not res!2696934)) b!6571985))

(assert (= (or b!6571988 b!6571986 b!6571997) bm!571989))

(assert (=> d!2061903 m!7353262))

(assert (=> d!2061903 m!7352910))

(assert (=> bm!571989 m!7353262))

(declare-fun m!7353600 () Bool)

(assert (=> b!6571987 m!7353600))

(assert (=> b!6571992 m!7353268))

(assert (=> b!6571992 m!7353268))

(assert (=> b!6571992 m!7353270))

(assert (=> b!6571985 m!7353272))

(assert (=> b!6571995 m!7353272))

(assert (=> b!6571995 m!7353272))

(declare-fun m!7353602 () Bool)

(assert (=> b!6571995 m!7353602))

(assert (=> b!6571995 m!7353268))

(assert (=> b!6571995 m!7353602))

(assert (=> b!6571995 m!7353268))

(declare-fun m!7353604 () Bool)

(assert (=> b!6571995 m!7353604))

(assert (=> b!6571996 m!7353268))

(assert (=> b!6571996 m!7353268))

(assert (=> b!6571996 m!7353270))

(assert (=> b!6571989 m!7353272))

(assert (=> b!6571129 d!2061903))

(declare-fun d!2061905 () Bool)

(assert (=> d!2061905 (= (matchR!8630 r!7292 s!2326) (matchRSpec!3548 r!7292 s!2326))))

(declare-fun lt!2408763 () Unit!159123)

(assert (=> d!2061905 (= lt!2408763 (choose!49085 r!7292 s!2326))))

(assert (=> d!2061905 (validRegex!8183 r!7292)))

(assert (=> d!2061905 (= (mainMatchTheorem!3548 r!7292 s!2326) lt!2408763)))

(declare-fun bs!1678711 () Bool)

(assert (= bs!1678711 d!2061905))

(assert (=> bs!1678711 m!7352986))

(assert (=> bs!1678711 m!7352984))

(declare-fun m!7353606 () Bool)

(assert (=> bs!1678711 m!7353606))

(assert (=> bs!1678711 m!7352910))

(assert (=> b!6571129 d!2061905))

(assert (=> b!6571133 d!2061859))

(declare-fun bs!1678712 () Bool)

(declare-fun d!2061907 () Bool)

(assert (= bs!1678712 (and d!2061907 d!2061863)))

(declare-fun lambda!365986 () Int)

(assert (=> bs!1678712 (= lambda!365986 lambda!365976)))

(declare-fun bs!1678713 () Bool)

(assert (= bs!1678713 (and d!2061907 d!2061719)))

(assert (=> bs!1678713 (= lambda!365986 lambda!365934)))

(declare-fun bs!1678714 () Bool)

(assert (= bs!1678714 (and d!2061907 d!2061855)))

(assert (=> bs!1678714 (= lambda!365986 lambda!365973)))

(declare-fun bs!1678715 () Bool)

(assert (= bs!1678715 (and d!2061907 d!2061889)))

(assert (=> bs!1678715 (= lambda!365986 lambda!365980)))

(declare-fun bs!1678716 () Bool)

(assert (= bs!1678716 (and d!2061907 d!2061865)))

(assert (=> bs!1678716 (= lambda!365986 lambda!365979)))

(assert (=> d!2061907 (= (inv!84364 lt!2408634) (forall!15619 (exprs!6331 lt!2408634) lambda!365986))))

(declare-fun bs!1678717 () Bool)

(assert (= bs!1678717 d!2061907))

(declare-fun m!7353608 () Bool)

(assert (=> bs!1678717 m!7353608))

(assert (=> b!6571110 d!2061907))

(declare-fun d!2061909 () Bool)

(assert (=> d!2061909 (= (flatMap!1952 lt!2408655 lambda!365925) (choose!49084 lt!2408655 lambda!365925))))

(declare-fun bs!1678718 () Bool)

(assert (= bs!1678718 d!2061909))

(declare-fun m!7353610 () Bool)

(assert (=> bs!1678718 m!7353610))

(assert (=> b!6571111 d!2061909))

(declare-fun call!571995 () (InoxSet Context!11662))

(declare-fun e!3977898 () (InoxSet Context!11662))

(declare-fun b!6571999 () Bool)

(assert (=> b!6571999 (= e!3977898 ((_ map or) call!571995 (derivationStepZipperUp!1621 (Context!11663 (t!379287 (exprs!6331 lt!2408665))) (h!71964 s!2326))))))

(declare-fun b!6572000 () Bool)

(declare-fun e!3977899 () (InoxSet Context!11662))

(assert (=> b!6572000 (= e!3977898 e!3977899)))

(declare-fun c!1208268 () Bool)

(assert (=> b!6572000 (= c!1208268 ((_ is Cons!65517) (exprs!6331 lt!2408665)))))

(declare-fun bm!571990 () Bool)

(assert (=> bm!571990 (= call!571995 (derivationStepZipperDown!1695 (h!71965 (exprs!6331 lt!2408665)) (Context!11663 (t!379287 (exprs!6331 lt!2408665))) (h!71964 s!2326)))))

(declare-fun d!2061911 () Bool)

(declare-fun c!1208267 () Bool)

(declare-fun e!3977900 () Bool)

(assert (=> d!2061911 (= c!1208267 e!3977900)))

(declare-fun res!2696937 () Bool)

(assert (=> d!2061911 (=> (not res!2696937) (not e!3977900))))

(assert (=> d!2061911 (= res!2696937 ((_ is Cons!65517) (exprs!6331 lt!2408665)))))

(assert (=> d!2061911 (= (derivationStepZipperUp!1621 lt!2408665 (h!71964 s!2326)) e!3977898)))

(declare-fun b!6572001 () Bool)

(assert (=> b!6572001 (= e!3977900 (nullable!6440 (h!71965 (exprs!6331 lt!2408665))))))

(declare-fun b!6572002 () Bool)

(assert (=> b!6572002 (= e!3977899 ((as const (Array Context!11662 Bool)) false))))

(declare-fun b!6572003 () Bool)

(assert (=> b!6572003 (= e!3977899 call!571995)))

(assert (= (and d!2061911 res!2696937) b!6572001))

(assert (= (and d!2061911 c!1208267) b!6571999))

(assert (= (and d!2061911 (not c!1208267)) b!6572000))

(assert (= (and b!6572000 c!1208268) b!6572003))

(assert (= (and b!6572000 (not c!1208268)) b!6572002))

(assert (= (or b!6571999 b!6572003) bm!571990))

(declare-fun m!7353612 () Bool)

(assert (=> b!6571999 m!7353612))

(declare-fun m!7353614 () Bool)

(assert (=> bm!571990 m!7353614))

(declare-fun m!7353616 () Bool)

(assert (=> b!6572001 m!7353616))

(assert (=> b!6571111 d!2061911))

(declare-fun d!2061913 () Bool)

(assert (=> d!2061913 (= (flatMap!1952 lt!2408655 lambda!365925) (dynLambda!26067 lambda!365925 lt!2408665))))

(declare-fun lt!2408764 () Unit!159123)

(assert (=> d!2061913 (= lt!2408764 (choose!49083 lt!2408655 lt!2408665 lambda!365925))))

(assert (=> d!2061913 (= lt!2408655 (store ((as const (Array Context!11662 Bool)) false) lt!2408665 true))))

(assert (=> d!2061913 (= (lemmaFlatMapOnSingletonSet!1478 lt!2408655 lt!2408665 lambda!365925) lt!2408764)))

(declare-fun b_lambda!248557 () Bool)

(assert (=> (not b_lambda!248557) (not d!2061913)))

(declare-fun bs!1678719 () Bool)

(assert (= bs!1678719 d!2061913))

(assert (=> bs!1678719 m!7352948))

(declare-fun m!7353618 () Bool)

(assert (=> bs!1678719 m!7353618))

(declare-fun m!7353620 () Bool)

(assert (=> bs!1678719 m!7353620))

(assert (=> bs!1678719 m!7352950))

(assert (=> b!6571111 d!2061913))

(declare-fun bs!1678720 () Bool)

(declare-fun d!2061915 () Bool)

(assert (= bs!1678720 (and d!2061915 b!6571099)))

(declare-fun lambda!365987 () Int)

(assert (=> bs!1678720 (= lambda!365987 lambda!365925)))

(declare-fun bs!1678721 () Bool)

(assert (= bs!1678721 (and d!2061915 d!2061891)))

(assert (=> bs!1678721 (= lambda!365987 lambda!365983)))

(assert (=> d!2061915 true))

(assert (=> d!2061915 (= (derivationStepZipper!2413 lt!2408655 (h!71964 s!2326)) (flatMap!1952 lt!2408655 lambda!365987))))

(declare-fun bs!1678722 () Bool)

(assert (= bs!1678722 d!2061915))

(declare-fun m!7353622 () Bool)

(assert (=> bs!1678722 m!7353622))

(assert (=> b!6571111 d!2061915))

(declare-fun d!2061917 () Bool)

(assert (=> d!2061917 (= (isEmpty!37766 (t!379288 zl!343)) ((_ is Nil!65518) (t!379288 zl!343)))))

(assert (=> b!6571132 d!2061917))

(declare-fun b!6572022 () Bool)

(declare-fun e!3977914 () Bool)

(declare-fun lt!2408773 () Option!16338)

(assert (=> b!6572022 (= e!3977914 (not (isDefined!13041 lt!2408773)))))

(declare-fun b!6572023 () Bool)

(declare-fun e!3977915 () Option!16338)

(declare-fun e!3977912 () Option!16338)

(assert (=> b!6572023 (= e!3977915 e!3977912)))

(declare-fun c!1208273 () Bool)

(assert (=> b!6572023 (= c!1208273 ((_ is Nil!65516) s!2326))))

(declare-fun b!6572024 () Bool)

(declare-fun res!2696951 () Bool)

(declare-fun e!3977913 () Bool)

(assert (=> b!6572024 (=> (not res!2696951) (not e!3977913))))

(declare-fun get!22752 (Option!16338) tuple2!66852)

(assert (=> b!6572024 (= res!2696951 (matchR!8630 (regTwo!33406 r!7292) (_2!36729 (get!22752 lt!2408773))))))

(declare-fun b!6572025 () Bool)

(assert (=> b!6572025 (= e!3977912 None!16337)))

(declare-fun b!6572026 () Bool)

(declare-fun e!3977911 () Bool)

(assert (=> b!6572026 (= e!3977911 (matchR!8630 (regTwo!33406 r!7292) s!2326))))

(declare-fun b!6572027 () Bool)

(declare-fun ++!14593 (List!65640 List!65640) List!65640)

(assert (=> b!6572027 (= e!3977913 (= (++!14593 (_1!36729 (get!22752 lt!2408773)) (_2!36729 (get!22752 lt!2408773))) s!2326))))

(declare-fun d!2061919 () Bool)

(assert (=> d!2061919 e!3977914))

(declare-fun res!2696950 () Bool)

(assert (=> d!2061919 (=> res!2696950 e!3977914)))

(assert (=> d!2061919 (= res!2696950 e!3977913)))

(declare-fun res!2696948 () Bool)

(assert (=> d!2061919 (=> (not res!2696948) (not e!3977913))))

(assert (=> d!2061919 (= res!2696948 (isDefined!13041 lt!2408773))))

(assert (=> d!2061919 (= lt!2408773 e!3977915)))

(declare-fun c!1208274 () Bool)

(assert (=> d!2061919 (= c!1208274 e!3977911)))

(declare-fun res!2696949 () Bool)

(assert (=> d!2061919 (=> (not res!2696949) (not e!3977911))))

(assert (=> d!2061919 (= res!2696949 (matchR!8630 (regOne!33406 r!7292) Nil!65516))))

(assert (=> d!2061919 (validRegex!8183 (regOne!33406 r!7292))))

(assert (=> d!2061919 (= (findConcatSeparation!2752 (regOne!33406 r!7292) (regTwo!33406 r!7292) Nil!65516 s!2326 s!2326) lt!2408773)))

(declare-fun b!6572028 () Bool)

(assert (=> b!6572028 (= e!3977915 (Some!16337 (tuple2!66853 Nil!65516 s!2326)))))

(declare-fun b!6572029 () Bool)

(declare-fun res!2696952 () Bool)

(assert (=> b!6572029 (=> (not res!2696952) (not e!3977913))))

(assert (=> b!6572029 (= res!2696952 (matchR!8630 (regOne!33406 r!7292) (_1!36729 (get!22752 lt!2408773))))))

(declare-fun b!6572030 () Bool)

(declare-fun lt!2408771 () Unit!159123)

(declare-fun lt!2408772 () Unit!159123)

(assert (=> b!6572030 (= lt!2408771 lt!2408772)))

(assert (=> b!6572030 (= (++!14593 (++!14593 Nil!65516 (Cons!65516 (h!71964 s!2326) Nil!65516)) (t!379286 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2590 (List!65640 C!33164 List!65640 List!65640) Unit!159123)

(assert (=> b!6572030 (= lt!2408772 (lemmaMoveElementToOtherListKeepsConcatEq!2590 Nil!65516 (h!71964 s!2326) (t!379286 s!2326) s!2326))))

(assert (=> b!6572030 (= e!3977912 (findConcatSeparation!2752 (regOne!33406 r!7292) (regTwo!33406 r!7292) (++!14593 Nil!65516 (Cons!65516 (h!71964 s!2326) Nil!65516)) (t!379286 s!2326) s!2326))))

(assert (= (and d!2061919 res!2696949) b!6572026))

(assert (= (and d!2061919 c!1208274) b!6572028))

(assert (= (and d!2061919 (not c!1208274)) b!6572023))

(assert (= (and b!6572023 c!1208273) b!6572025))

(assert (= (and b!6572023 (not c!1208273)) b!6572030))

(assert (= (and d!2061919 res!2696948) b!6572029))

(assert (= (and b!6572029 res!2696952) b!6572024))

(assert (= (and b!6572024 res!2696951) b!6572027))

(assert (= (and d!2061919 (not res!2696950)) b!6572022))

(declare-fun m!7353624 () Bool)

(assert (=> b!6572029 m!7353624))

(declare-fun m!7353626 () Bool)

(assert (=> b!6572029 m!7353626))

(declare-fun m!7353628 () Bool)

(assert (=> d!2061919 m!7353628))

(declare-fun m!7353630 () Bool)

(assert (=> d!2061919 m!7353630))

(declare-fun m!7353632 () Bool)

(assert (=> d!2061919 m!7353632))

(assert (=> b!6572024 m!7353624))

(declare-fun m!7353634 () Bool)

(assert (=> b!6572024 m!7353634))

(assert (=> b!6572022 m!7353628))

(assert (=> b!6572027 m!7353624))

(declare-fun m!7353636 () Bool)

(assert (=> b!6572027 m!7353636))

(declare-fun m!7353638 () Bool)

(assert (=> b!6572030 m!7353638))

(assert (=> b!6572030 m!7353638))

(declare-fun m!7353640 () Bool)

(assert (=> b!6572030 m!7353640))

(declare-fun m!7353642 () Bool)

(assert (=> b!6572030 m!7353642))

(assert (=> b!6572030 m!7353638))

(declare-fun m!7353644 () Bool)

(assert (=> b!6572030 m!7353644))

(declare-fun m!7353646 () Bool)

(assert (=> b!6572026 m!7353646))

(assert (=> b!6571094 d!2061919))

(declare-fun d!2061921 () Bool)

(declare-fun choose!49090 (Int) Bool)

(assert (=> d!2061921 (= (Exists!3517 lambda!365923) (choose!49090 lambda!365923))))

(declare-fun bs!1678723 () Bool)

(assert (= bs!1678723 d!2061921))

(declare-fun m!7353648 () Bool)

(assert (=> bs!1678723 m!7353648))

(assert (=> b!6571094 d!2061921))

(declare-fun d!2061923 () Bool)

(assert (=> d!2061923 (= (Exists!3517 lambda!365924) (choose!49090 lambda!365924))))

(declare-fun bs!1678724 () Bool)

(assert (= bs!1678724 d!2061923))

(declare-fun m!7353650 () Bool)

(assert (=> bs!1678724 m!7353650))

(assert (=> b!6571094 d!2061923))

(declare-fun bs!1678725 () Bool)

(declare-fun d!2061925 () Bool)

(assert (= bs!1678725 (and d!2061925 b!6571977)))

(declare-fun lambda!365990 () Int)

(assert (=> bs!1678725 (not (= lambda!365990 lambda!365984))))

(declare-fun bs!1678726 () Bool)

(assert (= bs!1678726 (and d!2061925 b!6571647)))

(assert (=> bs!1678726 (not (= lambda!365990 lambda!365964))))

(declare-fun bs!1678727 () Bool)

(assert (= bs!1678727 (and d!2061925 b!6571094)))

(assert (=> bs!1678727 (not (= lambda!365990 lambda!365924))))

(assert (=> bs!1678727 (= lambda!365990 lambda!365923)))

(declare-fun bs!1678728 () Bool)

(assert (= bs!1678728 (and d!2061925 b!6571649)))

(assert (=> bs!1678728 (not (= lambda!365990 lambda!365966))))

(declare-fun bs!1678729 () Bool)

(assert (= bs!1678729 (and d!2061925 b!6571979)))

(assert (=> bs!1678729 (not (= lambda!365990 lambda!365985))))

(assert (=> d!2061925 true))

(assert (=> d!2061925 true))

(assert (=> d!2061925 true))

(assert (=> d!2061925 (= (isDefined!13041 (findConcatSeparation!2752 (regOne!33406 r!7292) (regTwo!33406 r!7292) Nil!65516 s!2326 s!2326)) (Exists!3517 lambda!365990))))

(declare-fun lt!2408776 () Unit!159123)

(declare-fun choose!49091 (Regex!16447 Regex!16447 List!65640) Unit!159123)

(assert (=> d!2061925 (= lt!2408776 (choose!49091 (regOne!33406 r!7292) (regTwo!33406 r!7292) s!2326))))

(assert (=> d!2061925 (validRegex!8183 (regOne!33406 r!7292))))

(assert (=> d!2061925 (= (lemmaFindConcatSeparationEquivalentToExists!2516 (regOne!33406 r!7292) (regTwo!33406 r!7292) s!2326) lt!2408776)))

(declare-fun bs!1678730 () Bool)

(assert (= bs!1678730 d!2061925))

(assert (=> bs!1678730 m!7352916))

(assert (=> bs!1678730 m!7352918))

(declare-fun m!7353652 () Bool)

(assert (=> bs!1678730 m!7353652))

(declare-fun m!7353654 () Bool)

(assert (=> bs!1678730 m!7353654))

(assert (=> bs!1678730 m!7352916))

(assert (=> bs!1678730 m!7353632))

(assert (=> b!6571094 d!2061925))

(declare-fun bs!1678731 () Bool)

(declare-fun d!2061927 () Bool)

(assert (= bs!1678731 (and d!2061927 b!6571977)))

(declare-fun lambda!365995 () Int)

(assert (=> bs!1678731 (not (= lambda!365995 lambda!365984))))

(declare-fun bs!1678732 () Bool)

(assert (= bs!1678732 (and d!2061927 b!6571647)))

(assert (=> bs!1678732 (not (= lambda!365995 lambda!365964))))

(declare-fun bs!1678733 () Bool)

(assert (= bs!1678733 (and d!2061927 b!6571094)))

(assert (=> bs!1678733 (not (= lambda!365995 lambda!365924))))

(declare-fun bs!1678734 () Bool)

(assert (= bs!1678734 (and d!2061927 d!2061925)))

(assert (=> bs!1678734 (= lambda!365995 lambda!365990)))

(assert (=> bs!1678733 (= lambda!365995 lambda!365923)))

(declare-fun bs!1678735 () Bool)

(assert (= bs!1678735 (and d!2061927 b!6571649)))

(assert (=> bs!1678735 (not (= lambda!365995 lambda!365966))))

(declare-fun bs!1678736 () Bool)

(assert (= bs!1678736 (and d!2061927 b!6571979)))

(assert (=> bs!1678736 (not (= lambda!365995 lambda!365985))))

(assert (=> d!2061927 true))

(assert (=> d!2061927 true))

(assert (=> d!2061927 true))

(declare-fun lambda!365996 () Int)

(assert (=> bs!1678731 (not (= lambda!365996 lambda!365984))))

(declare-fun bs!1678737 () Bool)

(assert (= bs!1678737 d!2061927))

(assert (=> bs!1678737 (not (= lambda!365996 lambda!365995))))

(assert (=> bs!1678732 (not (= lambda!365996 lambda!365964))))

(assert (=> bs!1678733 (= lambda!365996 lambda!365924)))

(assert (=> bs!1678734 (not (= lambda!365996 lambda!365990))))

(assert (=> bs!1678733 (not (= lambda!365996 lambda!365923))))

(assert (=> bs!1678735 (= (and (= (regOne!33406 r!7292) (regOne!33406 lt!2408638)) (= (regTwo!33406 r!7292) (regTwo!33406 lt!2408638))) (= lambda!365996 lambda!365966))))

(assert (=> bs!1678736 (= lambda!365996 lambda!365985)))

(assert (=> d!2061927 true))

(assert (=> d!2061927 true))

(assert (=> d!2061927 true))

(assert (=> d!2061927 (= (Exists!3517 lambda!365995) (Exists!3517 lambda!365996))))

(declare-fun lt!2408779 () Unit!159123)

(declare-fun choose!49092 (Regex!16447 Regex!16447 List!65640) Unit!159123)

(assert (=> d!2061927 (= lt!2408779 (choose!49092 (regOne!33406 r!7292) (regTwo!33406 r!7292) s!2326))))

(assert (=> d!2061927 (validRegex!8183 (regOne!33406 r!7292))))

(assert (=> d!2061927 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2054 (regOne!33406 r!7292) (regTwo!33406 r!7292) s!2326) lt!2408779)))

(declare-fun m!7353656 () Bool)

(assert (=> bs!1678737 m!7353656))

(declare-fun m!7353658 () Bool)

(assert (=> bs!1678737 m!7353658))

(declare-fun m!7353660 () Bool)

(assert (=> bs!1678737 m!7353660))

(assert (=> bs!1678737 m!7353632))

(assert (=> b!6571094 d!2061927))

(declare-fun d!2061929 () Bool)

(declare-fun isEmpty!37770 (Option!16338) Bool)

(assert (=> d!2061929 (= (isDefined!13041 (findConcatSeparation!2752 (regOne!33406 r!7292) (regTwo!33406 r!7292) Nil!65516 s!2326 s!2326)) (not (isEmpty!37770 (findConcatSeparation!2752 (regOne!33406 r!7292) (regTwo!33406 r!7292) Nil!65516 s!2326 s!2326))))))

(declare-fun bs!1678738 () Bool)

(assert (= bs!1678738 d!2061929))

(assert (=> bs!1678738 m!7352916))

(declare-fun m!7353662 () Bool)

(assert (=> bs!1678738 m!7353662))

(assert (=> b!6571094 d!2061929))

(declare-fun bs!1678739 () Bool)

(declare-fun d!2061931 () Bool)

(assert (= bs!1678739 (and d!2061931 d!2061863)))

(declare-fun lambda!365997 () Int)

(assert (=> bs!1678739 (= lambda!365997 lambda!365976)))

(declare-fun bs!1678740 () Bool)

(assert (= bs!1678740 (and d!2061931 d!2061719)))

(assert (=> bs!1678740 (= lambda!365997 lambda!365934)))

(declare-fun bs!1678741 () Bool)

(assert (= bs!1678741 (and d!2061931 d!2061855)))

(assert (=> bs!1678741 (= lambda!365997 lambda!365973)))

(declare-fun bs!1678742 () Bool)

(assert (= bs!1678742 (and d!2061931 d!2061907)))

(assert (=> bs!1678742 (= lambda!365997 lambda!365986)))

(declare-fun bs!1678743 () Bool)

(assert (= bs!1678743 (and d!2061931 d!2061889)))

(assert (=> bs!1678743 (= lambda!365997 lambda!365980)))

(declare-fun bs!1678744 () Bool)

(assert (= bs!1678744 (and d!2061931 d!2061865)))

(assert (=> bs!1678744 (= lambda!365997 lambda!365979)))

(declare-fun e!3977924 () Bool)

(assert (=> d!2061931 e!3977924))

(declare-fun res!2696965 () Bool)

(assert (=> d!2061931 (=> (not res!2696965) (not e!3977924))))

(declare-fun lt!2408780 () Regex!16447)

(assert (=> d!2061931 (= res!2696965 (validRegex!8183 lt!2408780))))

(declare-fun e!3977923 () Regex!16447)

(assert (=> d!2061931 (= lt!2408780 e!3977923)))

(declare-fun c!1208276 () Bool)

(declare-fun e!3977925 () Bool)

(assert (=> d!2061931 (= c!1208276 e!3977925)))

(declare-fun res!2696966 () Bool)

(assert (=> d!2061931 (=> (not res!2696966) (not e!3977925))))

(assert (=> d!2061931 (= res!2696966 ((_ is Cons!65517) (exprs!6331 (h!71966 zl!343))))))

(assert (=> d!2061931 (forall!15619 (exprs!6331 (h!71966 zl!343)) lambda!365997)))

(assert (=> d!2061931 (= (generalisedConcat!2044 (exprs!6331 (h!71966 zl!343))) lt!2408780)))

(declare-fun b!6572043 () Bool)

(declare-fun e!3977926 () Regex!16447)

(assert (=> b!6572043 (= e!3977923 e!3977926)))

(declare-fun c!1208277 () Bool)

(assert (=> b!6572043 (= c!1208277 ((_ is Cons!65517) (exprs!6331 (h!71966 zl!343))))))

(declare-fun b!6572044 () Bool)

(declare-fun e!3977927 () Bool)

(assert (=> b!6572044 (= e!3977927 (isConcat!1348 lt!2408780))))

(declare-fun b!6572045 () Bool)

(assert (=> b!6572045 (= e!3977926 EmptyExpr!16447)))

(declare-fun b!6572046 () Bool)

(declare-fun e!3977922 () Bool)

(assert (=> b!6572046 (= e!3977922 (isEmptyExpr!1825 lt!2408780))))

(declare-fun b!6572047 () Bool)

(assert (=> b!6572047 (= e!3977927 (= lt!2408780 (head!13346 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6572048 () Bool)

(assert (=> b!6572048 (= e!3977924 e!3977922)))

(declare-fun c!1208275 () Bool)

(assert (=> b!6572048 (= c!1208275 (isEmpty!37765 (exprs!6331 (h!71966 zl!343))))))

(declare-fun b!6572049 () Bool)

(assert (=> b!6572049 (= e!3977925 (isEmpty!37765 (t!379287 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6572050 () Bool)

(assert (=> b!6572050 (= e!3977922 e!3977927)))

(declare-fun c!1208278 () Bool)

(assert (=> b!6572050 (= c!1208278 (isEmpty!37765 (tail!12431 (exprs!6331 (h!71966 zl!343)))))))

(declare-fun b!6572051 () Bool)

(assert (=> b!6572051 (= e!3977923 (h!71965 (exprs!6331 (h!71966 zl!343))))))

(declare-fun b!6572052 () Bool)

(assert (=> b!6572052 (= e!3977926 (Concat!25292 (h!71965 (exprs!6331 (h!71966 zl!343))) (generalisedConcat!2044 (t!379287 (exprs!6331 (h!71966 zl!343))))))))

(assert (= (and d!2061931 res!2696966) b!6572049))

(assert (= (and d!2061931 c!1208276) b!6572051))

(assert (= (and d!2061931 (not c!1208276)) b!6572043))

(assert (= (and b!6572043 c!1208277) b!6572052))

(assert (= (and b!6572043 (not c!1208277)) b!6572045))

(assert (= (and d!2061931 res!2696965) b!6572048))

(assert (= (and b!6572048 c!1208275) b!6572046))

(assert (= (and b!6572048 (not c!1208275)) b!6572050))

(assert (= (and b!6572050 c!1208278) b!6572047))

(assert (= (and b!6572050 (not c!1208278)) b!6572044))

(declare-fun m!7353664 () Bool)

(assert (=> b!6572047 m!7353664))

(declare-fun m!7353666 () Bool)

(assert (=> b!6572044 m!7353666))

(declare-fun m!7353668 () Bool)

(assert (=> b!6572050 m!7353668))

(assert (=> b!6572050 m!7353668))

(declare-fun m!7353670 () Bool)

(assert (=> b!6572050 m!7353670))

(declare-fun m!7353672 () Bool)

(assert (=> d!2061931 m!7353672))

(declare-fun m!7353674 () Bool)

(assert (=> d!2061931 m!7353674))

(assert (=> b!6572052 m!7352900))

(declare-fun m!7353676 () Bool)

(assert (=> b!6572046 m!7353676))

(declare-fun m!7353678 () Bool)

(assert (=> b!6572048 m!7353678))

(assert (=> b!6572049 m!7352972))

(assert (=> b!6571115 d!2061931))

(declare-fun b!6572057 () Bool)

(declare-fun e!3977930 () Bool)

(declare-fun tp!1814090 () Bool)

(declare-fun tp!1814091 () Bool)

(assert (=> b!6572057 (= e!3977930 (and tp!1814090 tp!1814091))))

(assert (=> b!6571123 (= tp!1814026 e!3977930)))

(assert (= (and b!6571123 ((_ is Cons!65517) (exprs!6331 (h!71966 zl!343)))) b!6572057))

(declare-fun condSetEmpty!44878 () Bool)

(assert (=> setNonEmpty!44872 (= condSetEmpty!44878 (= setRest!44872 ((as const (Array Context!11662 Bool)) false)))))

(declare-fun setRes!44878 () Bool)

(assert (=> setNonEmpty!44872 (= tp!1814021 setRes!44878)))

(declare-fun setIsEmpty!44878 () Bool)

(assert (=> setIsEmpty!44878 setRes!44878))

(declare-fun tp!1814096 () Bool)

(declare-fun setElem!44878 () Context!11662)

(declare-fun setNonEmpty!44878 () Bool)

(declare-fun e!3977933 () Bool)

(assert (=> setNonEmpty!44878 (= setRes!44878 (and tp!1814096 (inv!84364 setElem!44878) e!3977933))))

(declare-fun setRest!44878 () (InoxSet Context!11662))

(assert (=> setNonEmpty!44878 (= setRest!44872 ((_ map or) (store ((as const (Array Context!11662 Bool)) false) setElem!44878 true) setRest!44878))))

(declare-fun b!6572062 () Bool)

(declare-fun tp!1814097 () Bool)

(assert (=> b!6572062 (= e!3977933 tp!1814097)))

(assert (= (and setNonEmpty!44872 condSetEmpty!44878) setIsEmpty!44878))

(assert (= (and setNonEmpty!44872 (not condSetEmpty!44878)) setNonEmpty!44878))

(assert (= setNonEmpty!44878 b!6572062))

(declare-fun m!7353680 () Bool)

(assert (=> setNonEmpty!44878 m!7353680))

(declare-fun e!3977936 () Bool)

(assert (=> b!6571126 (= tp!1814020 e!3977936)))

(declare-fun b!6572076 () Bool)

(declare-fun tp!1814108 () Bool)

(declare-fun tp!1814112 () Bool)

(assert (=> b!6572076 (= e!3977936 (and tp!1814108 tp!1814112))))

(declare-fun b!6572075 () Bool)

(declare-fun tp!1814109 () Bool)

(assert (=> b!6572075 (= e!3977936 tp!1814109)))

(declare-fun b!6572073 () Bool)

(assert (=> b!6572073 (= e!3977936 tp_is_empty!42147)))

(declare-fun b!6572074 () Bool)

(declare-fun tp!1814110 () Bool)

(declare-fun tp!1814111 () Bool)

(assert (=> b!6572074 (= e!3977936 (and tp!1814110 tp!1814111))))

(assert (= (and b!6571126 ((_ is ElementMatch!16447) (reg!16776 r!7292))) b!6572073))

(assert (= (and b!6571126 ((_ is Concat!25292) (reg!16776 r!7292))) b!6572074))

(assert (= (and b!6571126 ((_ is Star!16447) (reg!16776 r!7292))) b!6572075))

(assert (= (and b!6571126 ((_ is Union!16447) (reg!16776 r!7292))) b!6572076))

(declare-fun b!6572084 () Bool)

(declare-fun e!3977942 () Bool)

(declare-fun tp!1814117 () Bool)

(assert (=> b!6572084 (= e!3977942 tp!1814117)))

(declare-fun tp!1814118 () Bool)

(declare-fun b!6572083 () Bool)

(declare-fun e!3977941 () Bool)

(assert (=> b!6572083 (= e!3977941 (and (inv!84364 (h!71966 (t!379288 zl!343))) e!3977942 tp!1814118))))

(assert (=> b!6571096 (= tp!1814027 e!3977941)))

(assert (= b!6572083 b!6572084))

(assert (= (and b!6571096 ((_ is Cons!65518) (t!379288 zl!343))) b!6572083))

(declare-fun m!7353682 () Bool)

(assert (=> b!6572083 m!7353682))

(declare-fun e!3977943 () Bool)

(assert (=> b!6571130 (= tp!1814024 e!3977943)))

(declare-fun b!6572088 () Bool)

(declare-fun tp!1814119 () Bool)

(declare-fun tp!1814123 () Bool)

(assert (=> b!6572088 (= e!3977943 (and tp!1814119 tp!1814123))))

(declare-fun b!6572087 () Bool)

(declare-fun tp!1814120 () Bool)

(assert (=> b!6572087 (= e!3977943 tp!1814120)))

(declare-fun b!6572085 () Bool)

(assert (=> b!6572085 (= e!3977943 tp_is_empty!42147)))

(declare-fun b!6572086 () Bool)

(declare-fun tp!1814121 () Bool)

(declare-fun tp!1814122 () Bool)

(assert (=> b!6572086 (= e!3977943 (and tp!1814121 tp!1814122))))

(assert (= (and b!6571130 ((_ is ElementMatch!16447) (regOne!33407 r!7292))) b!6572085))

(assert (= (and b!6571130 ((_ is Concat!25292) (regOne!33407 r!7292))) b!6572086))

(assert (= (and b!6571130 ((_ is Star!16447) (regOne!33407 r!7292))) b!6572087))

(assert (= (and b!6571130 ((_ is Union!16447) (regOne!33407 r!7292))) b!6572088))

(declare-fun e!3977944 () Bool)

(assert (=> b!6571130 (= tp!1814025 e!3977944)))

(declare-fun b!6572092 () Bool)

(declare-fun tp!1814124 () Bool)

(declare-fun tp!1814128 () Bool)

(assert (=> b!6572092 (= e!3977944 (and tp!1814124 tp!1814128))))

(declare-fun b!6572091 () Bool)

(declare-fun tp!1814125 () Bool)

(assert (=> b!6572091 (= e!3977944 tp!1814125)))

(declare-fun b!6572089 () Bool)

(assert (=> b!6572089 (= e!3977944 tp_is_empty!42147)))

(declare-fun b!6572090 () Bool)

(declare-fun tp!1814126 () Bool)

(declare-fun tp!1814127 () Bool)

(assert (=> b!6572090 (= e!3977944 (and tp!1814126 tp!1814127))))

(assert (= (and b!6571130 ((_ is ElementMatch!16447) (regTwo!33407 r!7292))) b!6572089))

(assert (= (and b!6571130 ((_ is Concat!25292) (regTwo!33407 r!7292))) b!6572090))

(assert (= (and b!6571130 ((_ is Star!16447) (regTwo!33407 r!7292))) b!6572091))

(assert (= (and b!6571130 ((_ is Union!16447) (regTwo!33407 r!7292))) b!6572092))

(declare-fun b!6572093 () Bool)

(declare-fun e!3977945 () Bool)

(declare-fun tp!1814129 () Bool)

(declare-fun tp!1814130 () Bool)

(assert (=> b!6572093 (= e!3977945 (and tp!1814129 tp!1814130))))

(assert (=> b!6571131 (= tp!1814022 e!3977945)))

(assert (= (and b!6571131 ((_ is Cons!65517) (exprs!6331 setElem!44872))) b!6572093))

(declare-fun b!6572098 () Bool)

(declare-fun e!3977948 () Bool)

(declare-fun tp!1814133 () Bool)

(assert (=> b!6572098 (= e!3977948 (and tp_is_empty!42147 tp!1814133))))

(assert (=> b!6571120 (= tp!1814018 e!3977948)))

(assert (= (and b!6571120 ((_ is Cons!65516) (t!379286 s!2326))) b!6572098))

(declare-fun e!3977949 () Bool)

(assert (=> b!6571134 (= tp!1814019 e!3977949)))

(declare-fun b!6572102 () Bool)

(declare-fun tp!1814134 () Bool)

(declare-fun tp!1814138 () Bool)

(assert (=> b!6572102 (= e!3977949 (and tp!1814134 tp!1814138))))

(declare-fun b!6572101 () Bool)

(declare-fun tp!1814135 () Bool)

(assert (=> b!6572101 (= e!3977949 tp!1814135)))

(declare-fun b!6572099 () Bool)

(assert (=> b!6572099 (= e!3977949 tp_is_empty!42147)))

(declare-fun b!6572100 () Bool)

(declare-fun tp!1814136 () Bool)

(declare-fun tp!1814137 () Bool)

(assert (=> b!6572100 (= e!3977949 (and tp!1814136 tp!1814137))))

(assert (= (and b!6571134 ((_ is ElementMatch!16447) (regOne!33406 r!7292))) b!6572099))

(assert (= (and b!6571134 ((_ is Concat!25292) (regOne!33406 r!7292))) b!6572100))

(assert (= (and b!6571134 ((_ is Star!16447) (regOne!33406 r!7292))) b!6572101))

(assert (= (and b!6571134 ((_ is Union!16447) (regOne!33406 r!7292))) b!6572102))

(declare-fun e!3977950 () Bool)

(assert (=> b!6571134 (= tp!1814023 e!3977950)))

(declare-fun b!6572106 () Bool)

(declare-fun tp!1814139 () Bool)

(declare-fun tp!1814143 () Bool)

(assert (=> b!6572106 (= e!3977950 (and tp!1814139 tp!1814143))))

(declare-fun b!6572105 () Bool)

(declare-fun tp!1814140 () Bool)

(assert (=> b!6572105 (= e!3977950 tp!1814140)))

(declare-fun b!6572103 () Bool)

(assert (=> b!6572103 (= e!3977950 tp_is_empty!42147)))

(declare-fun b!6572104 () Bool)

(declare-fun tp!1814141 () Bool)

(declare-fun tp!1814142 () Bool)

(assert (=> b!6572104 (= e!3977950 (and tp!1814141 tp!1814142))))

(assert (= (and b!6571134 ((_ is ElementMatch!16447) (regTwo!33406 r!7292))) b!6572103))

(assert (= (and b!6571134 ((_ is Concat!25292) (regTwo!33406 r!7292))) b!6572104))

(assert (= (and b!6571134 ((_ is Star!16447) (regTwo!33406 r!7292))) b!6572105))

(assert (= (and b!6571134 ((_ is Union!16447) (regTwo!33406 r!7292))) b!6572106))

(declare-fun b_lambda!248559 () Bool)

(assert (= b_lambda!248553 (or b!6571099 b_lambda!248559)))

(declare-fun bs!1678745 () Bool)

(declare-fun d!2061933 () Bool)

(assert (= bs!1678745 (and d!2061933 b!6571099)))

(assert (=> bs!1678745 (= (dynLambda!26067 lambda!365925 lt!2408659) (derivationStepZipperUp!1621 lt!2408659 (h!71964 s!2326)))))

(assert (=> bs!1678745 m!7352934))

(assert (=> d!2061885 d!2061933))

(declare-fun b_lambda!248561 () Bool)

(assert (= b_lambda!248531 (or b!6571099 b_lambda!248561)))

(declare-fun bs!1678746 () Bool)

(declare-fun d!2061935 () Bool)

(assert (= bs!1678746 (and d!2061935 b!6571099)))

(assert (=> bs!1678746 (= (dynLambda!26067 lambda!365925 (h!71966 zl!343)) (derivationStepZipperUp!1621 (h!71966 zl!343) (h!71964 s!2326)))))

(assert (=> bs!1678746 m!7352962))

(assert (=> d!2061753 d!2061935))

(declare-fun b_lambda!248563 () Bool)

(assert (= b_lambda!248555 (or b!6571099 b_lambda!248563)))

(declare-fun bs!1678747 () Bool)

(declare-fun d!2061937 () Bool)

(assert (= bs!1678747 (and d!2061937 b!6571099)))

(assert (=> bs!1678747 (= (dynLambda!26067 lambda!365925 lt!2408634) (derivationStepZipperUp!1621 lt!2408634 (h!71964 s!2326)))))

(assert (=> bs!1678747 m!7352966))

(assert (=> d!2061895 d!2061937))

(declare-fun b_lambda!248565 () Bool)

(assert (= b_lambda!248557 (or b!6571099 b_lambda!248565)))

(declare-fun bs!1678748 () Bool)

(declare-fun d!2061939 () Bool)

(assert (= bs!1678748 (and d!2061939 b!6571099)))

(assert (=> bs!1678748 (= (dynLambda!26067 lambda!365925 lt!2408665) (derivationStepZipperUp!1621 lt!2408665 (h!71964 s!2326)))))

(assert (=> bs!1678748 m!7352956))

(assert (=> d!2061913 d!2061939))

(declare-fun b_lambda!248567 () Bool)

(assert (= b_lambda!248551 (or b!6571099 b_lambda!248567)))

(declare-fun bs!1678749 () Bool)

(declare-fun d!2061941 () Bool)

(assert (= bs!1678749 (and d!2061941 b!6571099)))

(assert (=> bs!1678749 (= (dynLambda!26067 lambda!365925 lt!2408651) (derivationStepZipperUp!1621 lt!2408651 (h!71964 s!2326)))))

(assert (=> bs!1678749 m!7352940))

(assert (=> d!2061881 d!2061941))

(check-sat (not bm!571883) (not bm!571956) (not b!6571495) (not bm!571863) (not d!2061715) (not b!6572062) (not b!6571908) (not b!6571651) (not b!6571874) (not b!6572093) (not bs!1678747) (not bm!571984) (not b!6571865) (not d!2061925) (not d!2061919) (not b!6571868) (not bm!571976) (not b_lambda!248561) (not b!6572048) (not d!2061753) (not d!2061721) (not b!6571913) (not bm!571957) (not d!2061719) (not b!6571996) (not b!6571980) (not d!2061931) (not b!6572030) (not d!2061897) (not bm!571988) (not d!2061879) (not d!2061855) (not b!6571919) (not b!6571901) (not b!6571920) (not b!6571875) (not bm!571989) (not bm!571987) (not d!2061927) (not b!6572105) (not b!6572098) (not b!6571650) (not bs!1678746) (not d!2061923) (not b!6572026) (not d!2061883) (not b!6572027) (not b!6572052) (not b_lambda!248565) (not d!2061905) (not b!6572087) (not b!6571685) (not d!2061871) (not b!6571916) (not b!6572100) (not bm!571963) (not d!2061907) (not b!6571939) (not d!2061723) (not bs!1678745) (not bm!571931) (not d!2061813) (not d!2061831) (not d!2061863) (not bm!571990) (not b!6571981) (not b!6572088) (not b!6571915) (not d!2061865) (not b!6571869) (not bm!571966) (not b!6572092) (not b!6571992) (not bm!571977) (not bm!571967) (not b!6571903) (not d!2061891) (not b!6572049) (not bm!571959) (not b!6571327) (not b!6571499) (not b!6571497) (not d!2061915) (not bm!571897) (not b!6571332) (not d!2061909) (not b!6572104) (not d!2061885) (not b!6571506) (not d!2061757) (not b!6571987) (not d!2061859) (not b!6572091) (not setNonEmpty!44878) (not d!2061895) (not d!2061889) (not b!6571686) (not d!2061867) (not b!6572106) (not bm!571986) (not d!2061717) (not b!6572074) (not b!6571505) (not b!6571329) (not bm!571973) (not b!6571866) (not b!6571381) (not b!6572057) (not b!6571899) (not b!6571929) (not b!6571999) (not b!6572001) (not b!6572090) (not b!6571904) (not d!2061857) (not b!6572029) (not d!2061869) (not d!2061877) (not b!6572047) (not d!2061921) (not b!6571972) (not b!6571878) (not b!6571946) (not b!6571934) (not b!6572050) (not b!6571995) (not b!6571877) (not bs!1678749) (not b!6572022) (not b!6571932) (not b!6571863) (not b!6571502) (not b!6572084) (not b!6571937) (not bm!571880) (not b!6572024) (not bm!571972) (not b_lambda!248567) (not b!6571905) (not bm!571960) (not b!6572076) (not b!6572083) (not b!6572046) (not b!6571918) (not bs!1678748) (not bm!571958) (not b!6571917) (not b!6571907) (not b!6571876) (not b!6571985) (not b!6572102) (not b!6571871) (not b!6571989) (not d!2061903) (not b!6571386) (not d!2061929) (not d!2061893) (not b!6572086) (not bm!571974) (not d!2061881) (not b_lambda!248559) (not d!2061861) (not b_lambda!248563) (not b!6571334) (not b!6572101) (not bm!571881) (not d!2061755) (not bm!571879) (not b!6572044) (not bm!571864) (not bm!571964) (not bm!571965) (not d!2061913) (not d!2061817) (not b!6572075) (not bm!571930) (not b!6571867) (not b!6571384) tp_is_empty!42147)
(check-sat)

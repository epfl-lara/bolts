; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561590 () Bool)

(assert start!561590)

(declare-fun b!5327609 () Bool)

(assert (=> b!5327609 true))

(assert (=> b!5327609 true))

(declare-fun lambda!272065 () Int)

(declare-fun lambda!272064 () Int)

(assert (=> b!5327609 (not (= lambda!272065 lambda!272064))))

(assert (=> b!5327609 true))

(assert (=> b!5327609 true))

(declare-fun b!5327637 () Bool)

(assert (=> b!5327637 true))

(declare-fun bs!1234870 () Bool)

(declare-fun b!5327620 () Bool)

(assert (= bs!1234870 (and b!5327620 b!5327609)))

(declare-fun lambda!272067 () Int)

(declare-datatypes ((C!30252 0))(
  ( (C!30253 (val!24828 Int)) )
))
(declare-datatypes ((Regex!14991 0))(
  ( (ElementMatch!14991 (c!926319 C!30252)) (Concat!23836 (regOne!30494 Regex!14991) (regTwo!30494 Regex!14991)) (EmptyExpr!14991) (Star!14991 (reg!15320 Regex!14991)) (EmptyLang!14991) (Union!14991 (regOne!30495 Regex!14991) (regTwo!30495 Regex!14991)) )
))
(declare-fun lt!2173631 () Regex!14991)

(declare-fun r!7292 () Regex!14991)

(assert (=> bs!1234870 (= (and (= (regOne!30494 (regOne!30494 r!7292)) (regOne!30494 r!7292)) (= lt!2173631 (regTwo!30494 r!7292))) (= lambda!272067 lambda!272064))))

(assert (=> bs!1234870 (not (= lambda!272067 lambda!272065))))

(assert (=> b!5327620 true))

(assert (=> b!5327620 true))

(assert (=> b!5327620 true))

(declare-fun b!5327606 () Bool)

(declare-fun res!2259707 () Bool)

(declare-fun e!3309297 () Bool)

(assert (=> b!5327606 (=> res!2259707 e!3309297)))

(declare-fun e!3309292 () Bool)

(assert (=> b!5327606 (= res!2259707 e!3309292)))

(declare-fun res!2259721 () Bool)

(assert (=> b!5327606 (=> (not res!2259721) (not e!3309292))))

(get-info :version)

(assert (=> b!5327606 (= res!2259721 ((_ is Concat!23836) (regOne!30494 r!7292)))))

(declare-fun b!5327607 () Bool)

(declare-fun res!2259714 () Bool)

(declare-fun e!3309291 () Bool)

(assert (=> b!5327607 (=> res!2259714 e!3309291)))

(declare-datatypes ((List!61272 0))(
  ( (Nil!61148) (Cons!61148 (h!67596 Regex!14991) (t!374487 List!61272)) )
))
(declare-datatypes ((Context!8750 0))(
  ( (Context!8751 (exprs!4875 List!61272)) )
))
(declare-fun lt!2173639 () Context!8750)

(declare-datatypes ((List!61273 0))(
  ( (Nil!61149) (Cons!61149 (h!67597 Context!8750) (t!374488 List!61273)) )
))
(declare-fun zl!343 () List!61273)

(declare-fun contextDepthTotal!124 (Context!8750) Int)

(assert (=> b!5327607 (= res!2259714 (>= (contextDepthTotal!124 lt!2173639) (contextDepthTotal!124 (h!67597 zl!343))))))

(declare-fun b!5327608 () Bool)

(declare-fun res!2259701 () Bool)

(assert (=> b!5327608 (=> res!2259701 e!3309297)))

(assert (=> b!5327608 (= res!2259701 (not ((_ is Concat!23836) (regOne!30494 r!7292))))))

(declare-fun e!3309301 () Bool)

(declare-fun e!3309295 () Bool)

(assert (=> b!5327609 (= e!3309301 e!3309295)))

(declare-fun res!2259709 () Bool)

(assert (=> b!5327609 (=> res!2259709 e!3309295)))

(declare-fun lt!2173638 () Bool)

(declare-datatypes ((List!61274 0))(
  ( (Nil!61150) (Cons!61150 (h!67598 C!30252) (t!374489 List!61274)) )
))
(declare-fun s!2326 () List!61274)

(declare-fun lt!2173633 () Bool)

(assert (=> b!5327609 (= res!2259709 (or (not (= lt!2173638 lt!2173633)) ((_ is Nil!61150) s!2326)))))

(declare-fun Exists!2172 (Int) Bool)

(assert (=> b!5327609 (= (Exists!2172 lambda!272064) (Exists!2172 lambda!272065))))

(declare-datatypes ((Unit!153482 0))(
  ( (Unit!153483) )
))
(declare-fun lt!2173624 () Unit!153482)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!826 (Regex!14991 Regex!14991 List!61274) Unit!153482)

(assert (=> b!5327609 (= lt!2173624 (lemmaExistCutMatchRandMatchRSpecEquivalent!826 (regOne!30494 r!7292) (regTwo!30494 r!7292) s!2326))))

(assert (=> b!5327609 (= lt!2173633 (Exists!2172 lambda!272064))))

(declare-datatypes ((tuple2!64380 0))(
  ( (tuple2!64381 (_1!35493 List!61274) (_2!35493 List!61274)) )
))
(declare-datatypes ((Option!15102 0))(
  ( (None!15101) (Some!15101 (v!51130 tuple2!64380)) )
))
(declare-fun isDefined!11805 (Option!15102) Bool)

(declare-fun findConcatSeparation!1516 (Regex!14991 Regex!14991 List!61274 List!61274 List!61274) Option!15102)

(assert (=> b!5327609 (= lt!2173633 (isDefined!11805 (findConcatSeparation!1516 (regOne!30494 r!7292) (regTwo!30494 r!7292) Nil!61150 s!2326 s!2326)))))

(declare-fun lt!2173643 () Unit!153482)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1280 (Regex!14991 Regex!14991 List!61274) Unit!153482)

(assert (=> b!5327609 (= lt!2173643 (lemmaFindConcatSeparationEquivalentToExists!1280 (regOne!30494 r!7292) (regTwo!30494 r!7292) s!2326))))

(declare-fun b!5327610 () Bool)

(declare-fun res!2259703 () Bool)

(assert (=> b!5327610 (=> res!2259703 e!3309295)))

(declare-fun isEmpty!33119 (List!61272) Bool)

(assert (=> b!5327610 (= res!2259703 (isEmpty!33119 (t!374487 (exprs!4875 (h!67597 zl!343)))))))

(declare-fun b!5327611 () Bool)

(declare-fun e!3309294 () Unit!153482)

(declare-fun Unit!153484 () Unit!153482)

(assert (=> b!5327611 (= e!3309294 Unit!153484)))

(declare-fun b!5327612 () Bool)

(declare-fun res!2259705 () Bool)

(assert (=> b!5327612 (=> res!2259705 e!3309301)))

(declare-fun isEmpty!33120 (List!61273) Bool)

(assert (=> b!5327612 (= res!2259705 (not (isEmpty!33120 (t!374488 zl!343))))))

(declare-fun b!5327613 () Bool)

(declare-fun e!3309296 () Bool)

(declare-fun tp_is_empty!39235 () Bool)

(assert (=> b!5327613 (= e!3309296 tp_is_empty!39235)))

(declare-fun res!2259722 () Bool)

(declare-fun e!3309293 () Bool)

(assert (=> start!561590 (=> (not res!2259722) (not e!3309293))))

(declare-fun validRegex!6727 (Regex!14991) Bool)

(assert (=> start!561590 (= res!2259722 (validRegex!6727 r!7292))))

(assert (=> start!561590 e!3309293))

(assert (=> start!561590 e!3309296))

(declare-fun condSetEmpty!34329 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8750))

(assert (=> start!561590 (= condSetEmpty!34329 (= z!1189 ((as const (Array Context!8750 Bool)) false)))))

(declare-fun setRes!34329 () Bool)

(assert (=> start!561590 setRes!34329))

(declare-fun e!3309302 () Bool)

(assert (=> start!561590 e!3309302))

(declare-fun e!3309298 () Bool)

(assert (=> start!561590 e!3309298))

(declare-fun b!5327614 () Bool)

(declare-fun e!3309289 () Bool)

(assert (=> b!5327614 (= e!3309297 e!3309289)))

(declare-fun res!2259704 () Bool)

(assert (=> b!5327614 (=> res!2259704 e!3309289)))

(declare-fun lt!2173637 () (InoxSet Context!8750))

(declare-fun lt!2173619 () (InoxSet Context!8750))

(assert (=> b!5327614 (= res!2259704 (not (= lt!2173637 lt!2173619)))))

(declare-fun lt!2173641 () List!61272)

(declare-fun derivationStepZipperDown!439 (Regex!14991 Context!8750 C!30252) (InoxSet Context!8750))

(assert (=> b!5327614 (= lt!2173619 (derivationStepZipperDown!439 (regOne!30494 (regOne!30494 r!7292)) (Context!8751 lt!2173641) (h!67598 s!2326)))))

(assert (=> b!5327614 (= lt!2173641 (Cons!61148 (regTwo!30494 (regOne!30494 r!7292)) (t!374487 (exprs!4875 (h!67597 zl!343)))))))

(declare-fun b!5327615 () Bool)

(declare-fun tp!1483012 () Bool)

(declare-fun tp!1483005 () Bool)

(assert (=> b!5327615 (= e!3309296 (and tp!1483012 tp!1483005))))

(declare-fun b!5327616 () Bool)

(declare-fun res!2259713 () Bool)

(assert (=> b!5327616 (=> res!2259713 e!3309301)))

(assert (=> b!5327616 (= res!2259713 (not ((_ is Cons!61148) (exprs!4875 (h!67597 zl!343)))))))

(declare-fun b!5327617 () Bool)

(declare-fun res!2259706 () Bool)

(assert (=> b!5327617 (=> res!2259706 e!3309291)))

(assert (=> b!5327617 (= res!2259706 (not (= (exprs!4875 (h!67597 zl!343)) (Cons!61148 (Concat!23836 (regOne!30494 (regOne!30494 r!7292)) (regTwo!30494 (regOne!30494 r!7292))) (t!374487 (exprs!4875 (h!67597 zl!343)))))))))

(declare-fun b!5327618 () Bool)

(declare-fun e!3309287 () Bool)

(assert (=> b!5327618 (= e!3309291 e!3309287)))

(declare-fun res!2259711 () Bool)

(assert (=> b!5327618 (=> res!2259711 e!3309287)))

(declare-fun lt!2173634 () List!61273)

(declare-fun zipperDepthTotal!144 (List!61273) Int)

(assert (=> b!5327618 (= res!2259711 (>= (zipperDepthTotal!144 lt!2173634) (zipperDepthTotal!144 zl!343)))))

(assert (=> b!5327618 (= lt!2173634 (Cons!61149 lt!2173639 Nil!61149))))

(declare-fun b!5327619 () Bool)

(declare-fun e!3309299 () Bool)

(declare-fun tp!1483011 () Bool)

(assert (=> b!5327619 (= e!3309299 tp!1483011)))

(assert (=> b!5327620 (= e!3309287 true)))

(assert (=> b!5327620 (= (isDefined!11805 (findConcatSeparation!1516 (regOne!30494 (regOne!30494 r!7292)) lt!2173631 Nil!61150 s!2326 s!2326)) (Exists!2172 lambda!272067))))

(declare-fun lt!2173635 () Unit!153482)

(assert (=> b!5327620 (= lt!2173635 (lemmaFindConcatSeparationEquivalentToExists!1280 (regOne!30494 (regOne!30494 r!7292)) lt!2173631 s!2326))))

(declare-fun generalisedConcat!660 (List!61272) Regex!14991)

(assert (=> b!5327620 (= lt!2173631 (generalisedConcat!660 lt!2173641))))

(declare-fun lt!2173626 () Bool)

(declare-fun lt!2173632 () Regex!14991)

(declare-fun matchRSpec!2094 (Regex!14991 List!61274) Bool)

(assert (=> b!5327620 (= lt!2173626 (matchRSpec!2094 lt!2173632 s!2326))))

(declare-fun lt!2173640 () Unit!153482)

(declare-fun mainMatchTheorem!2094 (Regex!14991 List!61274) Unit!153482)

(assert (=> b!5327620 (= lt!2173640 (mainMatchTheorem!2094 lt!2173632 s!2326))))

(declare-fun lt!2173629 () (InoxSet Context!8750))

(declare-fun matchZipper!1235 ((InoxSet Context!8750) List!61274) Bool)

(assert (=> b!5327620 (= lt!2173626 (matchZipper!1235 lt!2173629 s!2326))))

(declare-fun matchR!7176 (Regex!14991 List!61274) Bool)

(assert (=> b!5327620 (= lt!2173626 (matchR!7176 lt!2173632 s!2326))))

(declare-fun lt!2173642 () Unit!153482)

(declare-fun theoremZipperRegexEquiv!389 ((InoxSet Context!8750) List!61273 Regex!14991 List!61274) Unit!153482)

(assert (=> b!5327620 (= lt!2173642 (theoremZipperRegexEquiv!389 lt!2173629 lt!2173634 lt!2173632 s!2326))))

(declare-fun lt!2173625 () List!61272)

(assert (=> b!5327620 (= lt!2173632 (generalisedConcat!660 lt!2173625))))

(declare-fun b!5327621 () Bool)

(declare-fun e!3309288 () Bool)

(assert (=> b!5327621 (= e!3309288 e!3309291)))

(declare-fun res!2259718 () Bool)

(assert (=> b!5327621 (=> res!2259718 e!3309291)))

(declare-fun lt!2173636 () (InoxSet Context!8750))

(assert (=> b!5327621 (= res!2259718 (not (= lt!2173636 lt!2173619)))))

(declare-fun lambda!272066 () Int)

(declare-fun flatMap!718 ((InoxSet Context!8750) Int) (InoxSet Context!8750))

(declare-fun derivationStepZipperUp!363 (Context!8750 C!30252) (InoxSet Context!8750))

(assert (=> b!5327621 (= (flatMap!718 lt!2173629 lambda!272066) (derivationStepZipperUp!363 lt!2173639 (h!67598 s!2326)))))

(declare-fun lt!2173621 () Unit!153482)

(declare-fun lemmaFlatMapOnSingletonSet!250 ((InoxSet Context!8750) Context!8750 Int) Unit!153482)

(assert (=> b!5327621 (= lt!2173621 (lemmaFlatMapOnSingletonSet!250 lt!2173629 lt!2173639 lambda!272066))))

(declare-fun lt!2173623 () (InoxSet Context!8750))

(assert (=> b!5327621 (= lt!2173623 (derivationStepZipperUp!363 lt!2173639 (h!67598 s!2326)))))

(declare-fun derivationStepZipper!1232 ((InoxSet Context!8750) C!30252) (InoxSet Context!8750))

(assert (=> b!5327621 (= lt!2173636 (derivationStepZipper!1232 lt!2173629 (h!67598 s!2326)))))

(assert (=> b!5327621 (= lt!2173629 (store ((as const (Array Context!8750 Bool)) false) lt!2173639 true))))

(assert (=> b!5327621 (= lt!2173639 (Context!8751 lt!2173625))))

(assert (=> b!5327621 (= lt!2173625 (Cons!61148 (regOne!30494 (regOne!30494 r!7292)) lt!2173641))))

(declare-fun setIsEmpty!34329 () Bool)

(assert (=> setIsEmpty!34329 setRes!34329))

(declare-fun b!5327622 () Bool)

(declare-fun tp!1483004 () Bool)

(assert (=> b!5327622 (= e!3309296 tp!1483004)))

(declare-fun b!5327623 () Bool)

(declare-fun res!2259720 () Bool)

(assert (=> b!5327623 (=> res!2259720 e!3309291)))

(declare-fun lt!2173630 () Bool)

(assert (=> b!5327623 (= res!2259720 (not (= lt!2173630 (matchZipper!1235 lt!2173636 (t!374489 s!2326)))))))

(declare-fun b!5327624 () Bool)

(declare-fun Unit!153485 () Unit!153482)

(assert (=> b!5327624 (= e!3309294 Unit!153485)))

(declare-fun lt!2173644 () (InoxSet Context!8750))

(declare-fun lt!2173627 () Unit!153482)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!228 ((InoxSet Context!8750) (InoxSet Context!8750) List!61274) Unit!153482)

(assert (=> b!5327624 (= lt!2173627 (lemmaZipperConcatMatchesSameAsBothZippers!228 lt!2173637 lt!2173644 (t!374489 s!2326)))))

(declare-fun res!2259702 () Bool)

(assert (=> b!5327624 (= res!2259702 (matchZipper!1235 lt!2173637 (t!374489 s!2326)))))

(declare-fun e!3309300 () Bool)

(assert (=> b!5327624 (=> res!2259702 e!3309300)))

(assert (=> b!5327624 (= (matchZipper!1235 ((_ map or) lt!2173637 lt!2173644) (t!374489 s!2326)) e!3309300)))

(declare-fun b!5327625 () Bool)

(declare-fun tp!1483009 () Bool)

(declare-fun e!3309290 () Bool)

(declare-fun inv!80724 (Context!8750) Bool)

(assert (=> b!5327625 (= e!3309302 (and (inv!80724 (h!67597 zl!343)) e!3309290 tp!1483009))))

(declare-fun b!5327626 () Bool)

(declare-fun tp!1483006 () Bool)

(declare-fun tp!1483010 () Bool)

(assert (=> b!5327626 (= e!3309296 (and tp!1483006 tp!1483010))))

(declare-fun b!5327627 () Bool)

(declare-fun res!2259710 () Bool)

(assert (=> b!5327627 (=> (not res!2259710) (not e!3309293))))

(declare-fun unfocusZipper!733 (List!61273) Regex!14991)

(assert (=> b!5327627 (= res!2259710 (= r!7292 (unfocusZipper!733 zl!343)))))

(declare-fun b!5327628 () Bool)

(assert (=> b!5327628 (= e!3309293 (not e!3309301))))

(declare-fun res!2259723 () Bool)

(assert (=> b!5327628 (=> res!2259723 e!3309301)))

(assert (=> b!5327628 (= res!2259723 (not ((_ is Cons!61149) zl!343)))))

(assert (=> b!5327628 (= lt!2173638 (matchRSpec!2094 r!7292 s!2326))))

(assert (=> b!5327628 (= lt!2173638 (matchR!7176 r!7292 s!2326))))

(declare-fun lt!2173620 () Unit!153482)

(assert (=> b!5327628 (= lt!2173620 (mainMatchTheorem!2094 r!7292 s!2326))))

(declare-fun b!5327629 () Bool)

(declare-fun tp!1483008 () Bool)

(assert (=> b!5327629 (= e!3309298 (and tp_is_empty!39235 tp!1483008))))

(declare-fun b!5327630 () Bool)

(declare-fun res!2259717 () Bool)

(assert (=> b!5327630 (=> res!2259717 e!3309301)))

(assert (=> b!5327630 (= res!2259717 (not (= r!7292 (generalisedConcat!660 (exprs!4875 (h!67597 zl!343))))))))

(declare-fun b!5327631 () Bool)

(declare-fun nullable!5160 (Regex!14991) Bool)

(assert (=> b!5327631 (= e!3309292 (nullable!5160 (regOne!30494 (regOne!30494 r!7292))))))

(declare-fun b!5327632 () Bool)

(declare-fun res!2259716 () Bool)

(assert (=> b!5327632 (=> (not res!2259716) (not e!3309293))))

(declare-fun toList!8775 ((InoxSet Context!8750)) List!61273)

(assert (=> b!5327632 (= res!2259716 (= (toList!8775 z!1189) zl!343))))

(declare-fun b!5327633 () Bool)

(declare-fun res!2259712 () Bool)

(assert (=> b!5327633 (=> res!2259712 e!3309301)))

(assert (=> b!5327633 (= res!2259712 (or ((_ is EmptyExpr!14991) r!7292) ((_ is EmptyLang!14991) r!7292) ((_ is ElementMatch!14991) r!7292) ((_ is Union!14991) r!7292) (not ((_ is Concat!23836) r!7292))))))

(declare-fun b!5327634 () Bool)

(assert (=> b!5327634 (= e!3309300 (matchZipper!1235 lt!2173644 (t!374489 s!2326)))))

(declare-fun b!5327635 () Bool)

(declare-fun res!2259715 () Bool)

(assert (=> b!5327635 (=> res!2259715 e!3309301)))

(declare-fun generalisedUnion!920 (List!61272) Regex!14991)

(declare-fun unfocusZipperList!433 (List!61273) List!61272)

(assert (=> b!5327635 (= res!2259715 (not (= r!7292 (generalisedUnion!920 (unfocusZipperList!433 zl!343)))))))

(declare-fun b!5327636 () Bool)

(declare-fun tp!1483013 () Bool)

(assert (=> b!5327636 (= e!3309290 tp!1483013)))

(declare-fun tp!1483007 () Bool)

(declare-fun setElem!34329 () Context!8750)

(declare-fun setNonEmpty!34329 () Bool)

(assert (=> setNonEmpty!34329 (= setRes!34329 (and tp!1483007 (inv!80724 setElem!34329) e!3309299))))

(declare-fun setRest!34329 () (InoxSet Context!8750))

(assert (=> setNonEmpty!34329 (= z!1189 ((_ map or) (store ((as const (Array Context!8750 Bool)) false) setElem!34329 true) setRest!34329))))

(assert (=> b!5327637 (= e!3309295 e!3309297)))

(declare-fun res!2259700 () Bool)

(assert (=> b!5327637 (=> res!2259700 e!3309297)))

(assert (=> b!5327637 (= res!2259700 (or (and ((_ is ElementMatch!14991) (regOne!30494 r!7292)) (= (c!926319 (regOne!30494 r!7292)) (h!67598 s!2326))) ((_ is Union!14991) (regOne!30494 r!7292))))))

(declare-fun lt!2173622 () Unit!153482)

(assert (=> b!5327637 (= lt!2173622 e!3309294)))

(declare-fun c!926318 () Bool)

(assert (=> b!5327637 (= c!926318 (nullable!5160 (h!67596 (exprs!4875 (h!67597 zl!343)))))))

(assert (=> b!5327637 (= (flatMap!718 z!1189 lambda!272066) (derivationStepZipperUp!363 (h!67597 zl!343) (h!67598 s!2326)))))

(declare-fun lt!2173617 () Unit!153482)

(assert (=> b!5327637 (= lt!2173617 (lemmaFlatMapOnSingletonSet!250 z!1189 (h!67597 zl!343) lambda!272066))))

(declare-fun lt!2173628 () Context!8750)

(assert (=> b!5327637 (= lt!2173644 (derivationStepZipperUp!363 lt!2173628 (h!67598 s!2326)))))

(assert (=> b!5327637 (= lt!2173637 (derivationStepZipperDown!439 (h!67596 (exprs!4875 (h!67597 zl!343))) lt!2173628 (h!67598 s!2326)))))

(assert (=> b!5327637 (= lt!2173628 (Context!8751 (t!374487 (exprs!4875 (h!67597 zl!343)))))))

(declare-fun lt!2173618 () (InoxSet Context!8750))

(assert (=> b!5327637 (= lt!2173618 (derivationStepZipperUp!363 (Context!8751 (Cons!61148 (h!67596 (exprs!4875 (h!67597 zl!343))) (t!374487 (exprs!4875 (h!67597 zl!343))))) (h!67598 s!2326)))))

(declare-fun b!5327638 () Bool)

(declare-fun res!2259719 () Bool)

(assert (=> b!5327638 (=> res!2259719 e!3309287)))

(declare-fun zipperDepth!100 (List!61273) Int)

(assert (=> b!5327638 (= res!2259719 (> (zipperDepth!100 lt!2173634) (zipperDepth!100 zl!343)))))

(declare-fun b!5327639 () Bool)

(assert (=> b!5327639 (= e!3309289 e!3309288)))

(declare-fun res!2259708 () Bool)

(assert (=> b!5327639 (=> res!2259708 e!3309288)))

(assert (=> b!5327639 (= res!2259708 (not (= lt!2173630 (matchZipper!1235 lt!2173619 (t!374489 s!2326)))))))

(assert (=> b!5327639 (= lt!2173630 (matchZipper!1235 lt!2173637 (t!374489 s!2326)))))

(assert (= (and start!561590 res!2259722) b!5327632))

(assert (= (and b!5327632 res!2259716) b!5327627))

(assert (= (and b!5327627 res!2259710) b!5327628))

(assert (= (and b!5327628 (not res!2259723)) b!5327612))

(assert (= (and b!5327612 (not res!2259705)) b!5327630))

(assert (= (and b!5327630 (not res!2259717)) b!5327616))

(assert (= (and b!5327616 (not res!2259713)) b!5327635))

(assert (= (and b!5327635 (not res!2259715)) b!5327633))

(assert (= (and b!5327633 (not res!2259712)) b!5327609))

(assert (= (and b!5327609 (not res!2259709)) b!5327610))

(assert (= (and b!5327610 (not res!2259703)) b!5327637))

(assert (= (and b!5327637 c!926318) b!5327624))

(assert (= (and b!5327637 (not c!926318)) b!5327611))

(assert (= (and b!5327624 (not res!2259702)) b!5327634))

(assert (= (and b!5327637 (not res!2259700)) b!5327606))

(assert (= (and b!5327606 res!2259721) b!5327631))

(assert (= (and b!5327606 (not res!2259707)) b!5327608))

(assert (= (and b!5327608 (not res!2259701)) b!5327614))

(assert (= (and b!5327614 (not res!2259704)) b!5327639))

(assert (= (and b!5327639 (not res!2259708)) b!5327621))

(assert (= (and b!5327621 (not res!2259718)) b!5327623))

(assert (= (and b!5327623 (not res!2259720)) b!5327617))

(assert (= (and b!5327617 (not res!2259706)) b!5327607))

(assert (= (and b!5327607 (not res!2259714)) b!5327618))

(assert (= (and b!5327618 (not res!2259711)) b!5327638))

(assert (= (and b!5327638 (not res!2259719)) b!5327620))

(assert (= (and start!561590 ((_ is ElementMatch!14991) r!7292)) b!5327613))

(assert (= (and start!561590 ((_ is Concat!23836) r!7292)) b!5327615))

(assert (= (and start!561590 ((_ is Star!14991) r!7292)) b!5327622))

(assert (= (and start!561590 ((_ is Union!14991) r!7292)) b!5327626))

(assert (= (and start!561590 condSetEmpty!34329) setIsEmpty!34329))

(assert (= (and start!561590 (not condSetEmpty!34329)) setNonEmpty!34329))

(assert (= setNonEmpty!34329 b!5327619))

(assert (= b!5327625 b!5327636))

(assert (= (and start!561590 ((_ is Cons!61149) zl!343)) b!5327625))

(assert (= (and start!561590 ((_ is Cons!61150) s!2326)) b!5327629))

(declare-fun m!6361436 () Bool)

(assert (=> b!5327638 m!6361436))

(declare-fun m!6361438 () Bool)

(assert (=> b!5327638 m!6361438))

(declare-fun m!6361440 () Bool)

(assert (=> b!5327639 m!6361440))

(declare-fun m!6361442 () Bool)

(assert (=> b!5327639 m!6361442))

(declare-fun m!6361444 () Bool)

(assert (=> b!5327625 m!6361444))

(declare-fun m!6361446 () Bool)

(assert (=> b!5327618 m!6361446))

(declare-fun m!6361448 () Bool)

(assert (=> b!5327618 m!6361448))

(declare-fun m!6361450 () Bool)

(assert (=> b!5327623 m!6361450))

(declare-fun m!6361452 () Bool)

(assert (=> b!5327620 m!6361452))

(declare-fun m!6361454 () Bool)

(assert (=> b!5327620 m!6361454))

(declare-fun m!6361456 () Bool)

(assert (=> b!5327620 m!6361456))

(declare-fun m!6361458 () Bool)

(assert (=> b!5327620 m!6361458))

(declare-fun m!6361460 () Bool)

(assert (=> b!5327620 m!6361460))

(declare-fun m!6361462 () Bool)

(assert (=> b!5327620 m!6361462))

(declare-fun m!6361464 () Bool)

(assert (=> b!5327620 m!6361464))

(assert (=> b!5327620 m!6361458))

(declare-fun m!6361466 () Bool)

(assert (=> b!5327620 m!6361466))

(declare-fun m!6361468 () Bool)

(assert (=> b!5327620 m!6361468))

(declare-fun m!6361470 () Bool)

(assert (=> b!5327620 m!6361470))

(declare-fun m!6361472 () Bool)

(assert (=> b!5327620 m!6361472))

(declare-fun m!6361474 () Bool)

(assert (=> b!5327612 m!6361474))

(declare-fun m!6361476 () Bool)

(assert (=> b!5327621 m!6361476))

(declare-fun m!6361478 () Bool)

(assert (=> b!5327621 m!6361478))

(declare-fun m!6361480 () Bool)

(assert (=> b!5327621 m!6361480))

(declare-fun m!6361482 () Bool)

(assert (=> b!5327621 m!6361482))

(declare-fun m!6361484 () Bool)

(assert (=> b!5327621 m!6361484))

(declare-fun m!6361486 () Bool)

(assert (=> b!5327627 m!6361486))

(declare-fun m!6361488 () Bool)

(assert (=> b!5327609 m!6361488))

(declare-fun m!6361490 () Bool)

(assert (=> b!5327609 m!6361490))

(declare-fun m!6361492 () Bool)

(assert (=> b!5327609 m!6361492))

(declare-fun m!6361494 () Bool)

(assert (=> b!5327609 m!6361494))

(assert (=> b!5327609 m!6361494))

(declare-fun m!6361496 () Bool)

(assert (=> b!5327609 m!6361496))

(assert (=> b!5327609 m!6361490))

(declare-fun m!6361498 () Bool)

(assert (=> b!5327609 m!6361498))

(declare-fun m!6361500 () Bool)

(assert (=> b!5327634 m!6361500))

(declare-fun m!6361502 () Bool)

(assert (=> b!5327624 m!6361502))

(assert (=> b!5327624 m!6361442))

(declare-fun m!6361504 () Bool)

(assert (=> b!5327624 m!6361504))

(declare-fun m!6361506 () Bool)

(assert (=> b!5327637 m!6361506))

(declare-fun m!6361508 () Bool)

(assert (=> b!5327637 m!6361508))

(declare-fun m!6361510 () Bool)

(assert (=> b!5327637 m!6361510))

(declare-fun m!6361512 () Bool)

(assert (=> b!5327637 m!6361512))

(declare-fun m!6361514 () Bool)

(assert (=> b!5327637 m!6361514))

(declare-fun m!6361516 () Bool)

(assert (=> b!5327637 m!6361516))

(declare-fun m!6361518 () Bool)

(assert (=> b!5327637 m!6361518))

(declare-fun m!6361520 () Bool)

(assert (=> b!5327630 m!6361520))

(declare-fun m!6361522 () Bool)

(assert (=> start!561590 m!6361522))

(declare-fun m!6361524 () Bool)

(assert (=> setNonEmpty!34329 m!6361524))

(declare-fun m!6361526 () Bool)

(assert (=> b!5327628 m!6361526))

(declare-fun m!6361528 () Bool)

(assert (=> b!5327628 m!6361528))

(declare-fun m!6361530 () Bool)

(assert (=> b!5327628 m!6361530))

(declare-fun m!6361532 () Bool)

(assert (=> b!5327614 m!6361532))

(declare-fun m!6361534 () Bool)

(assert (=> b!5327631 m!6361534))

(declare-fun m!6361536 () Bool)

(assert (=> b!5327607 m!6361536))

(declare-fun m!6361538 () Bool)

(assert (=> b!5327607 m!6361538))

(declare-fun m!6361540 () Bool)

(assert (=> b!5327635 m!6361540))

(assert (=> b!5327635 m!6361540))

(declare-fun m!6361542 () Bool)

(assert (=> b!5327635 m!6361542))

(declare-fun m!6361544 () Bool)

(assert (=> b!5327610 m!6361544))

(declare-fun m!6361546 () Bool)

(assert (=> b!5327632 m!6361546))

(check-sat (not b!5327615) (not b!5327635) (not b!5327623) (not b!5327629) (not b!5327628) (not start!561590) (not b!5327634) (not b!5327619) (not b!5327610) (not b!5327622) (not b!5327627) (not b!5327625) (not b!5327607) tp_is_empty!39235 (not b!5327626) (not b!5327609) (not b!5327639) (not b!5327621) (not b!5327630) (not b!5327620) (not setNonEmpty!34329) (not b!5327638) (not b!5327612) (not b!5327614) (not b!5327618) (not b!5327624) (not b!5327632) (not b!5327631) (not b!5327637) (not b!5327636))
(check-sat)

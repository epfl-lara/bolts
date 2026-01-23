; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563946 () Bool)

(assert start!563946)

(declare-fun b!5356665 () Bool)

(assert (=> b!5356665 true))

(assert (=> b!5356665 true))

(declare-fun lambda!275577 () Int)

(declare-fun lambda!275576 () Int)

(assert (=> b!5356665 (not (= lambda!275577 lambda!275576))))

(assert (=> b!5356665 true))

(assert (=> b!5356665 true))

(declare-fun b!5356659 () Bool)

(assert (=> b!5356659 true))

(declare-fun bs!1241186 () Bool)

(declare-fun b!5356685 () Bool)

(assert (= bs!1241186 (and b!5356685 b!5356665)))

(declare-datatypes ((C!30384 0))(
  ( (C!30385 (val!24894 Int)) )
))
(declare-datatypes ((Regex!15057 0))(
  ( (ElementMatch!15057 (c!932631 C!30384)) (Concat!23902 (regOne!30626 Regex!15057) (regTwo!30626 Regex!15057)) (EmptyExpr!15057) (Star!15057 (reg!15386 Regex!15057)) (EmptyLang!15057) (Union!15057 (regOne!30627 Regex!15057) (regTwo!30627 Regex!15057)) )
))
(declare-fun r!7292 () Regex!15057)

(declare-fun lt!2182829 () Regex!15057)

(declare-fun lambda!275579 () Int)

(assert (=> bs!1241186 (= (= lt!2182829 (regOne!30626 r!7292)) (= lambda!275579 lambda!275576))))

(assert (=> bs!1241186 (not (= lambda!275579 lambda!275577))))

(assert (=> b!5356685 true))

(assert (=> b!5356685 true))

(assert (=> b!5356685 true))

(declare-fun b!5356652 () Bool)

(declare-fun e!3324799 () Bool)

(declare-fun e!3324811 () Bool)

(assert (=> b!5356652 (= e!3324799 e!3324811)))

(declare-fun res!2273019 () Bool)

(assert (=> b!5356652 (=> res!2273019 e!3324811)))

(declare-datatypes ((List!61470 0))(
  ( (Nil!61346) (Cons!61346 (h!67794 Regex!15057) (t!374691 List!61470)) )
))
(declare-datatypes ((Context!8882 0))(
  ( (Context!8883 (exprs!4941 List!61470)) )
))
(declare-fun lt!2182852 () Context!8882)

(declare-datatypes ((List!61471 0))(
  ( (Nil!61347) (Cons!61347 (h!67795 Context!8882) (t!374692 List!61471)) )
))
(declare-fun unfocusZipper!799 (List!61471) Regex!15057)

(assert (=> b!5356652 (= res!2273019 (not (= (unfocusZipper!799 (Cons!61347 lt!2182852 Nil!61347)) (reg!15386 (regOne!30626 r!7292)))))))

(declare-datatypes ((List!61472 0))(
  ( (Nil!61348) (Cons!61348 (h!67796 C!30384) (t!374693 List!61472)) )
))
(declare-fun s!2326 () List!61472)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2182853 () (InoxSet Context!8882))

(declare-fun lambda!275578 () Int)

(declare-fun lt!2182832 () Context!8882)

(declare-fun flatMap!784 ((InoxSet Context!8882) Int) (InoxSet Context!8882))

(declare-fun derivationStepZipperUp!429 (Context!8882 C!30384) (InoxSet Context!8882))

(assert (=> b!5356652 (= (flatMap!784 lt!2182853 lambda!275578) (derivationStepZipperUp!429 lt!2182832 (h!67796 s!2326)))))

(declare-datatypes ((Unit!153746 0))(
  ( (Unit!153747) )
))
(declare-fun lt!2182844 () Unit!153746)

(declare-fun lemmaFlatMapOnSingletonSet!316 ((InoxSet Context!8882) Context!8882 Int) Unit!153746)

(assert (=> b!5356652 (= lt!2182844 (lemmaFlatMapOnSingletonSet!316 lt!2182853 lt!2182832 lambda!275578))))

(declare-fun lt!2182856 () (InoxSet Context!8882))

(assert (=> b!5356652 (= (flatMap!784 lt!2182856 lambda!275578) (derivationStepZipperUp!429 lt!2182852 (h!67796 s!2326)))))

(declare-fun lt!2182848 () Unit!153746)

(assert (=> b!5356652 (= lt!2182848 (lemmaFlatMapOnSingletonSet!316 lt!2182856 lt!2182852 lambda!275578))))

(declare-fun lt!2182847 () (InoxSet Context!8882))

(assert (=> b!5356652 (= lt!2182847 (derivationStepZipperUp!429 lt!2182832 (h!67796 s!2326)))))

(declare-fun lt!2182836 () (InoxSet Context!8882))

(assert (=> b!5356652 (= lt!2182836 (derivationStepZipperUp!429 lt!2182852 (h!67796 s!2326)))))

(assert (=> b!5356652 (= lt!2182853 (store ((as const (Array Context!8882 Bool)) false) lt!2182832 true))))

(assert (=> b!5356652 (= lt!2182856 (store ((as const (Array Context!8882 Bool)) false) lt!2182852 true))))

(assert (=> b!5356652 (= lt!2182852 (Context!8883 (Cons!61346 (reg!15386 (regOne!30626 r!7292)) Nil!61346)))))

(declare-fun b!5356653 () Bool)

(declare-fun e!3324803 () Bool)

(assert (=> b!5356653 (= e!3324811 e!3324803)))

(declare-fun res!2273023 () Bool)

(assert (=> b!5356653 (=> res!2273023 e!3324803)))

(declare-fun lt!2182840 () Bool)

(assert (=> b!5356653 (= res!2273023 (not lt!2182840))))

(declare-fun e!3324813 () Bool)

(assert (=> b!5356653 e!3324813))

(declare-fun res!2273012 () Bool)

(assert (=> b!5356653 (=> (not res!2273012) (not e!3324813))))

(declare-fun lt!2182839 () Regex!15057)

(declare-fun matchR!7242 (Regex!15057 List!61472) Bool)

(declare-fun matchRSpec!2160 (Regex!15057 List!61472) Bool)

(assert (=> b!5356653 (= res!2273012 (= (matchR!7242 lt!2182839 s!2326) (matchRSpec!2160 lt!2182839 s!2326)))))

(declare-fun lt!2182833 () Unit!153746)

(declare-fun mainMatchTheorem!2160 (Regex!15057 List!61472) Unit!153746)

(assert (=> b!5356653 (= lt!2182833 (mainMatchTheorem!2160 lt!2182839 s!2326))))

(declare-fun b!5356655 () Bool)

(declare-fun e!3324798 () Bool)

(assert (=> b!5356655 (= e!3324798 e!3324799)))

(declare-fun res!2273000 () Bool)

(assert (=> b!5356655 (=> res!2273000 e!3324799)))

(declare-fun lt!2182828 () Context!8882)

(assert (=> b!5356655 (= res!2273000 (not (= (unfocusZipper!799 (Cons!61347 lt!2182828 Nil!61347)) lt!2182839)))))

(declare-fun lt!2182842 () Regex!15057)

(assert (=> b!5356655 (= lt!2182839 (Concat!23902 (reg!15386 (regOne!30626 r!7292)) lt!2182842))))

(declare-fun b!5356656 () Bool)

(declare-fun res!2273025 () Bool)

(assert (=> b!5356656 (=> res!2273025 e!3324811)))

(assert (=> b!5356656 (= res!2273025 (not (= (unfocusZipper!799 (Cons!61347 lt!2182832 Nil!61347)) lt!2182842)))))

(declare-fun b!5356657 () Bool)

(declare-fun res!2273010 () Bool)

(declare-fun e!3324802 () Bool)

(assert (=> b!5356657 (=> res!2273010 e!3324802)))

(declare-fun e!3324804 () Bool)

(assert (=> b!5356657 (= res!2273010 e!3324804)))

(declare-fun res!2273011 () Bool)

(assert (=> b!5356657 (=> (not res!2273011) (not e!3324804))))

(get-info :version)

(assert (=> b!5356657 (= res!2273011 ((_ is Concat!23902) (regOne!30626 r!7292)))))

(declare-fun b!5356658 () Bool)

(declare-fun res!2273022 () Bool)

(declare-fun e!3324812 () Bool)

(assert (=> b!5356658 (=> (not res!2273022) (not e!3324812))))

(declare-fun z!1189 () (InoxSet Context!8882))

(declare-fun zl!343 () List!61471)

(declare-fun toList!8841 ((InoxSet Context!8882)) List!61471)

(assert (=> b!5356658 (= res!2273022 (= (toList!8841 z!1189) zl!343))))

(declare-fun e!3324801 () Bool)

(assert (=> b!5356659 (= e!3324801 e!3324802)))

(declare-fun res!2273002 () Bool)

(assert (=> b!5356659 (=> res!2273002 e!3324802)))

(assert (=> b!5356659 (= res!2273002 (or (and ((_ is ElementMatch!15057) (regOne!30626 r!7292)) (= (c!932631 (regOne!30626 r!7292)) (h!67796 s!2326))) ((_ is Union!15057) (regOne!30626 r!7292))))))

(declare-fun lt!2182826 () Unit!153746)

(declare-fun e!3324816 () Unit!153746)

(assert (=> b!5356659 (= lt!2182826 e!3324816)))

(declare-fun c!932630 () Bool)

(declare-fun nullable!5226 (Regex!15057) Bool)

(assert (=> b!5356659 (= c!932630 (nullable!5226 (h!67794 (exprs!4941 (h!67795 zl!343)))))))

(assert (=> b!5356659 (= (flatMap!784 z!1189 lambda!275578) (derivationStepZipperUp!429 (h!67795 zl!343) (h!67796 s!2326)))))

(declare-fun lt!2182855 () Unit!153746)

(assert (=> b!5356659 (= lt!2182855 (lemmaFlatMapOnSingletonSet!316 z!1189 (h!67795 zl!343) lambda!275578))))

(declare-fun lt!2182825 () (InoxSet Context!8882))

(declare-fun lt!2182823 () Context!8882)

(assert (=> b!5356659 (= lt!2182825 (derivationStepZipperUp!429 lt!2182823 (h!67796 s!2326)))))

(declare-fun lt!2182846 () (InoxSet Context!8882))

(declare-fun derivationStepZipperDown!505 (Regex!15057 Context!8882 C!30384) (InoxSet Context!8882))

(assert (=> b!5356659 (= lt!2182846 (derivationStepZipperDown!505 (h!67794 (exprs!4941 (h!67795 zl!343))) lt!2182823 (h!67796 s!2326)))))

(assert (=> b!5356659 (= lt!2182823 (Context!8883 (t!374691 (exprs!4941 (h!67795 zl!343)))))))

(declare-fun lt!2182850 () (InoxSet Context!8882))

(assert (=> b!5356659 (= lt!2182850 (derivationStepZipperUp!429 (Context!8883 (Cons!61346 (h!67794 (exprs!4941 (h!67795 zl!343))) (t!374691 (exprs!4941 (h!67795 zl!343))))) (h!67796 s!2326)))))

(declare-fun b!5356660 () Bool)

(declare-fun lt!2182830 () Bool)

(assert (=> b!5356660 (= e!3324813 (or (not lt!2182840) lt!2182830))))

(declare-fun b!5356661 () Bool)

(declare-fun res!2273005 () Bool)

(assert (=> b!5356661 (=> res!2273005 e!3324802)))

(assert (=> b!5356661 (= res!2273005 (or ((_ is Concat!23902) (regOne!30626 r!7292)) (not ((_ is Star!15057) (regOne!30626 r!7292)))))))

(declare-fun b!5356662 () Bool)

(declare-fun res!2273017 () Bool)

(declare-fun e!3324805 () Bool)

(assert (=> b!5356662 (=> res!2273017 e!3324805)))

(assert (=> b!5356662 (= res!2273017 (not ((_ is Cons!61346) (exprs!4941 (h!67795 zl!343)))))))

(declare-fun e!3324808 () Bool)

(declare-fun e!3324810 () Bool)

(declare-fun b!5356663 () Bool)

(declare-fun tp!1487808 () Bool)

(declare-fun inv!80889 (Context!8882) Bool)

(assert (=> b!5356663 (= e!3324810 (and (inv!80889 (h!67795 zl!343)) e!3324808 tp!1487808))))

(declare-fun b!5356664 () Bool)

(declare-fun tp!1487816 () Bool)

(assert (=> b!5356664 (= e!3324808 tp!1487816)))

(assert (=> b!5356665 (= e!3324805 e!3324801)))

(declare-fun res!2273006 () Bool)

(assert (=> b!5356665 (=> res!2273006 e!3324801)))

(declare-fun lt!2182827 () Bool)

(assert (=> b!5356665 (= res!2273006 (or (not (= lt!2182840 lt!2182827)) ((_ is Nil!61348) s!2326)))))

(declare-fun Exists!2238 (Int) Bool)

(assert (=> b!5356665 (= (Exists!2238 lambda!275576) (Exists!2238 lambda!275577))))

(declare-fun lt!2182824 () Unit!153746)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!892 (Regex!15057 Regex!15057 List!61472) Unit!153746)

(assert (=> b!5356665 (= lt!2182824 (lemmaExistCutMatchRandMatchRSpecEquivalent!892 (regOne!30626 r!7292) (regTwo!30626 r!7292) s!2326))))

(assert (=> b!5356665 (= lt!2182827 (Exists!2238 lambda!275576))))

(declare-datatypes ((tuple2!64512 0))(
  ( (tuple2!64513 (_1!35559 List!61472) (_2!35559 List!61472)) )
))
(declare-datatypes ((Option!15168 0))(
  ( (None!15167) (Some!15167 (v!51196 tuple2!64512)) )
))
(declare-fun isDefined!11871 (Option!15168) Bool)

(declare-fun findConcatSeparation!1582 (Regex!15057 Regex!15057 List!61472 List!61472 List!61472) Option!15168)

(assert (=> b!5356665 (= lt!2182827 (isDefined!11871 (findConcatSeparation!1582 (regOne!30626 r!7292) (regTwo!30626 r!7292) Nil!61348 s!2326 s!2326)))))

(declare-fun lt!2182841 () Unit!153746)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1346 (Regex!15057 Regex!15057 List!61472) Unit!153746)

(assert (=> b!5356665 (= lt!2182841 (lemmaFindConcatSeparationEquivalentToExists!1346 (regOne!30626 r!7292) (regTwo!30626 r!7292) s!2326))))

(declare-fun b!5356666 () Bool)

(declare-fun res!2273007 () Bool)

(declare-fun e!3324815 () Bool)

(assert (=> b!5356666 (=> res!2273007 e!3324815)))

(declare-fun lt!2182845 () (InoxSet Context!8882))

(declare-fun lt!2182838 () (InoxSet Context!8882))

(declare-fun matchZipper!1301 ((InoxSet Context!8882) List!61472) Bool)

(assert (=> b!5356666 (= res!2273007 (not (= (matchZipper!1301 lt!2182845 s!2326) (matchZipper!1301 lt!2182838 (t!374693 s!2326)))))))

(declare-fun b!5356667 () Bool)

(declare-fun e!3324800 () Bool)

(assert (=> b!5356667 (= e!3324800 (matchZipper!1301 lt!2182825 (t!374693 s!2326)))))

(declare-fun b!5356654 () Bool)

(declare-fun e!3324797 () Bool)

(assert (=> b!5356654 (= e!3324812 e!3324797)))

(declare-fun res!2273018 () Bool)

(assert (=> b!5356654 (=> (not res!2273018) (not e!3324797))))

(declare-fun lt!2182834 () Regex!15057)

(assert (=> b!5356654 (= res!2273018 (= r!7292 lt!2182834))))

(assert (=> b!5356654 (= lt!2182834 (unfocusZipper!799 zl!343))))

(declare-fun res!2273014 () Bool)

(assert (=> start!563946 (=> (not res!2273014) (not e!3324812))))

(declare-fun validRegex!6793 (Regex!15057) Bool)

(assert (=> start!563946 (= res!2273014 (validRegex!6793 r!7292))))

(assert (=> start!563946 e!3324812))

(declare-fun e!3324807 () Bool)

(assert (=> start!563946 e!3324807))

(declare-fun condSetEmpty!34651 () Bool)

(assert (=> start!563946 (= condSetEmpty!34651 (= z!1189 ((as const (Array Context!8882 Bool)) false)))))

(declare-fun setRes!34651 () Bool)

(assert (=> start!563946 setRes!34651))

(assert (=> start!563946 e!3324810))

(declare-fun e!3324806 () Bool)

(assert (=> start!563946 e!3324806))

(declare-fun b!5356668 () Bool)

(declare-fun tp!1487809 () Bool)

(declare-fun tp!1487817 () Bool)

(assert (=> b!5356668 (= e!3324807 (and tp!1487809 tp!1487817))))

(declare-fun b!5356669 () Bool)

(declare-fun tp_is_empty!39367 () Bool)

(declare-fun tp!1487815 () Bool)

(assert (=> b!5356669 (= e!3324806 (and tp_is_empty!39367 tp!1487815))))

(declare-fun b!5356670 () Bool)

(declare-fun e!3324809 () Bool)

(declare-fun tp!1487812 () Bool)

(assert (=> b!5356670 (= e!3324809 tp!1487812)))

(declare-fun b!5356671 () Bool)

(declare-fun res!2273016 () Bool)

(assert (=> b!5356671 (=> res!2273016 e!3324805)))

(declare-fun generalisedConcat!726 (List!61470) Regex!15057)

(assert (=> b!5356671 (= res!2273016 (not (= r!7292 (generalisedConcat!726 (exprs!4941 (h!67795 zl!343))))))))

(declare-fun setIsEmpty!34651 () Bool)

(assert (=> setIsEmpty!34651 setRes!34651))

(declare-fun b!5356672 () Bool)

(declare-fun res!2273001 () Bool)

(assert (=> b!5356672 (=> res!2273001 e!3324805)))

(declare-fun isEmpty!33315 (List!61471) Bool)

(assert (=> b!5356672 (= res!2273001 (not (isEmpty!33315 (t!374692 zl!343))))))

(declare-fun setElem!34651 () Context!8882)

(declare-fun tp!1487813 () Bool)

(declare-fun setNonEmpty!34651 () Bool)

(assert (=> setNonEmpty!34651 (= setRes!34651 (and tp!1487813 (inv!80889 setElem!34651) e!3324809))))

(declare-fun setRest!34651 () (InoxSet Context!8882))

(assert (=> setNonEmpty!34651 (= z!1189 ((_ map or) (store ((as const (Array Context!8882 Bool)) false) setElem!34651 true) setRest!34651))))

(declare-fun b!5356673 () Bool)

(declare-fun tp!1487814 () Bool)

(assert (=> b!5356673 (= e!3324807 tp!1487814)))

(declare-fun b!5356674 () Bool)

(declare-fun res!2273021 () Bool)

(assert (=> b!5356674 (=> res!2273021 e!3324805)))

(assert (=> b!5356674 (= res!2273021 (or ((_ is EmptyExpr!15057) r!7292) ((_ is EmptyLang!15057) r!7292) ((_ is ElementMatch!15057) r!7292) ((_ is Union!15057) r!7292) (not ((_ is Concat!23902) r!7292))))))

(declare-fun b!5356675 () Bool)

(assert (=> b!5356675 (= e!3324797 (not e!3324805))))

(declare-fun res!2273013 () Bool)

(assert (=> b!5356675 (=> res!2273013 e!3324805)))

(assert (=> b!5356675 (= res!2273013 (not ((_ is Cons!61347) zl!343)))))

(assert (=> b!5356675 (= lt!2182840 lt!2182830)))

(assert (=> b!5356675 (= lt!2182830 (matchRSpec!2160 r!7292 s!2326))))

(assert (=> b!5356675 (= lt!2182840 (matchR!7242 r!7292 s!2326))))

(declare-fun lt!2182849 () Unit!153746)

(assert (=> b!5356675 (= lt!2182849 (mainMatchTheorem!2160 r!7292 s!2326))))

(declare-fun b!5356676 () Bool)

(declare-fun e!3324814 () Bool)

(assert (=> b!5356676 (= e!3324814 e!3324815)))

(declare-fun res!2273004 () Bool)

(assert (=> b!5356676 (=> res!2273004 e!3324815)))

(declare-fun lt!2182854 () (InoxSet Context!8882))

(assert (=> b!5356676 (= res!2273004 (not (= lt!2182838 lt!2182854)))))

(assert (=> b!5356676 (= (flatMap!784 lt!2182845 lambda!275578) (derivationStepZipperUp!429 lt!2182828 (h!67796 s!2326)))))

(declare-fun lt!2182831 () Unit!153746)

(assert (=> b!5356676 (= lt!2182831 (lemmaFlatMapOnSingletonSet!316 lt!2182845 lt!2182828 lambda!275578))))

(declare-fun lt!2182837 () (InoxSet Context!8882))

(assert (=> b!5356676 (= lt!2182837 (derivationStepZipperUp!429 lt!2182828 (h!67796 s!2326)))))

(declare-fun derivationStepZipper!1296 ((InoxSet Context!8882) C!30384) (InoxSet Context!8882))

(assert (=> b!5356676 (= lt!2182838 (derivationStepZipper!1296 lt!2182845 (h!67796 s!2326)))))

(assert (=> b!5356676 (= lt!2182845 (store ((as const (Array Context!8882 Bool)) false) lt!2182828 true))))

(declare-fun lt!2182851 () List!61470)

(assert (=> b!5356676 (= lt!2182828 (Context!8883 (Cons!61346 (reg!15386 (regOne!30626 r!7292)) lt!2182851)))))

(declare-fun b!5356677 () Bool)

(declare-fun res!2273020 () Bool)

(assert (=> b!5356677 (=> res!2273020 e!3324805)))

(declare-fun generalisedUnion!986 (List!61470) Regex!15057)

(declare-fun unfocusZipperList!499 (List!61471) List!61470)

(assert (=> b!5356677 (= res!2273020 (not (= r!7292 (generalisedUnion!986 (unfocusZipperList!499 zl!343)))))))

(declare-fun b!5356678 () Bool)

(assert (=> b!5356678 (= e!3324807 tp_is_empty!39367)))

(declare-fun b!5356679 () Bool)

(assert (=> b!5356679 (= e!3324804 (nullable!5226 (regOne!30626 (regOne!30626 r!7292))))))

(declare-fun b!5356680 () Bool)

(declare-fun res!2273024 () Bool)

(assert (=> b!5356680 (=> res!2273024 e!3324815)))

(assert (=> b!5356680 (= res!2273024 (not (= lt!2182834 r!7292)))))

(declare-fun b!5356681 () Bool)

(declare-fun tp!1487810 () Bool)

(declare-fun tp!1487811 () Bool)

(assert (=> b!5356681 (= e!3324807 (and tp!1487810 tp!1487811))))

(declare-fun b!5356682 () Bool)

(declare-fun Unit!153748 () Unit!153746)

(assert (=> b!5356682 (= e!3324816 Unit!153748)))

(declare-fun lt!2182835 () Unit!153746)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!294 ((InoxSet Context!8882) (InoxSet Context!8882) List!61472) Unit!153746)

(assert (=> b!5356682 (= lt!2182835 (lemmaZipperConcatMatchesSameAsBothZippers!294 lt!2182846 lt!2182825 (t!374693 s!2326)))))

(declare-fun res!2273008 () Bool)

(assert (=> b!5356682 (= res!2273008 (matchZipper!1301 lt!2182846 (t!374693 s!2326)))))

(assert (=> b!5356682 (=> res!2273008 e!3324800)))

(assert (=> b!5356682 (= (matchZipper!1301 ((_ map or) lt!2182846 lt!2182825) (t!374693 s!2326)) e!3324800)))

(declare-fun b!5356683 () Bool)

(assert (=> b!5356683 (= e!3324815 e!3324798)))

(declare-fun res!2273009 () Bool)

(assert (=> b!5356683 (=> res!2273009 e!3324798)))

(assert (=> b!5356683 (= res!2273009 (not (= r!7292 lt!2182842)))))

(assert (=> b!5356683 (= lt!2182842 (Concat!23902 lt!2182829 (regTwo!30626 r!7292)))))

(declare-fun b!5356684 () Bool)

(declare-fun Unit!153749 () Unit!153746)

(assert (=> b!5356684 (= e!3324816 Unit!153749)))

(assert (=> b!5356685 (= e!3324803 true)))

(assert (=> b!5356685 (= (isDefined!11871 (findConcatSeparation!1582 lt!2182829 (regTwo!30626 r!7292) Nil!61348 s!2326 s!2326)) (Exists!2238 lambda!275579))))

(declare-fun lt!2182843 () Unit!153746)

(assert (=> b!5356685 (= lt!2182843 (lemmaFindConcatSeparationEquivalentToExists!1346 lt!2182829 (regTwo!30626 r!7292) s!2326))))

(declare-fun b!5356686 () Bool)

(declare-fun res!2273003 () Bool)

(assert (=> b!5356686 (=> res!2273003 e!3324801)))

(declare-fun isEmpty!33316 (List!61470) Bool)

(assert (=> b!5356686 (= res!2273003 (isEmpty!33316 (t!374691 (exprs!4941 (h!67795 zl!343)))))))

(declare-fun b!5356687 () Bool)

(assert (=> b!5356687 (= e!3324802 e!3324814)))

(declare-fun res!2273015 () Bool)

(assert (=> b!5356687 (=> res!2273015 e!3324814)))

(assert (=> b!5356687 (= res!2273015 (not (= lt!2182846 lt!2182854)))))

(assert (=> b!5356687 (= lt!2182854 (derivationStepZipperDown!505 (reg!15386 (regOne!30626 r!7292)) lt!2182832 (h!67796 s!2326)))))

(assert (=> b!5356687 (= lt!2182832 (Context!8883 lt!2182851))))

(assert (=> b!5356687 (= lt!2182851 (Cons!61346 lt!2182829 (t!374691 (exprs!4941 (h!67795 zl!343)))))))

(assert (=> b!5356687 (= lt!2182829 (Star!15057 (reg!15386 (regOne!30626 r!7292))))))

(assert (= (and start!563946 res!2273014) b!5356658))

(assert (= (and b!5356658 res!2273022) b!5356654))

(assert (= (and b!5356654 res!2273018) b!5356675))

(assert (= (and b!5356675 (not res!2273013)) b!5356672))

(assert (= (and b!5356672 (not res!2273001)) b!5356671))

(assert (= (and b!5356671 (not res!2273016)) b!5356662))

(assert (= (and b!5356662 (not res!2273017)) b!5356677))

(assert (= (and b!5356677 (not res!2273020)) b!5356674))

(assert (= (and b!5356674 (not res!2273021)) b!5356665))

(assert (= (and b!5356665 (not res!2273006)) b!5356686))

(assert (= (and b!5356686 (not res!2273003)) b!5356659))

(assert (= (and b!5356659 c!932630) b!5356682))

(assert (= (and b!5356659 (not c!932630)) b!5356684))

(assert (= (and b!5356682 (not res!2273008)) b!5356667))

(assert (= (and b!5356659 (not res!2273002)) b!5356657))

(assert (= (and b!5356657 res!2273011) b!5356679))

(assert (= (and b!5356657 (not res!2273010)) b!5356661))

(assert (= (and b!5356661 (not res!2273005)) b!5356687))

(assert (= (and b!5356687 (not res!2273015)) b!5356676))

(assert (= (and b!5356676 (not res!2273004)) b!5356666))

(assert (= (and b!5356666 (not res!2273007)) b!5356680))

(assert (= (and b!5356680 (not res!2273024)) b!5356683))

(assert (= (and b!5356683 (not res!2273009)) b!5356655))

(assert (= (and b!5356655 (not res!2273000)) b!5356652))

(assert (= (and b!5356652 (not res!2273019)) b!5356656))

(assert (= (and b!5356656 (not res!2273025)) b!5356653))

(assert (= (and b!5356653 res!2273012) b!5356660))

(assert (= (and b!5356653 (not res!2273023)) b!5356685))

(assert (= (and start!563946 ((_ is ElementMatch!15057) r!7292)) b!5356678))

(assert (= (and start!563946 ((_ is Concat!23902) r!7292)) b!5356681))

(assert (= (and start!563946 ((_ is Star!15057) r!7292)) b!5356673))

(assert (= (and start!563946 ((_ is Union!15057) r!7292)) b!5356668))

(assert (= (and start!563946 condSetEmpty!34651) setIsEmpty!34651))

(assert (= (and start!563946 (not condSetEmpty!34651)) setNonEmpty!34651))

(assert (= setNonEmpty!34651 b!5356670))

(assert (= b!5356663 b!5356664))

(assert (= (and start!563946 ((_ is Cons!61347) zl!343)) b!5356663))

(assert (= (and start!563946 ((_ is Cons!61348) s!2326)) b!5356669))

(declare-fun m!6386302 () Bool)

(assert (=> b!5356682 m!6386302))

(declare-fun m!6386304 () Bool)

(assert (=> b!5356682 m!6386304))

(declare-fun m!6386306 () Bool)

(assert (=> b!5356682 m!6386306))

(declare-fun m!6386308 () Bool)

(assert (=> b!5356679 m!6386308))

(declare-fun m!6386310 () Bool)

(assert (=> b!5356655 m!6386310))

(declare-fun m!6386312 () Bool)

(assert (=> b!5356687 m!6386312))

(declare-fun m!6386314 () Bool)

(assert (=> b!5356667 m!6386314))

(declare-fun m!6386316 () Bool)

(assert (=> b!5356654 m!6386316))

(declare-fun m!6386318 () Bool)

(assert (=> b!5356656 m!6386318))

(declare-fun m!6386320 () Bool)

(assert (=> b!5356663 m!6386320))

(declare-fun m!6386322 () Bool)

(assert (=> b!5356685 m!6386322))

(assert (=> b!5356685 m!6386322))

(declare-fun m!6386324 () Bool)

(assert (=> b!5356685 m!6386324))

(declare-fun m!6386326 () Bool)

(assert (=> b!5356685 m!6386326))

(declare-fun m!6386328 () Bool)

(assert (=> b!5356685 m!6386328))

(declare-fun m!6386330 () Bool)

(assert (=> b!5356659 m!6386330))

(declare-fun m!6386332 () Bool)

(assert (=> b!5356659 m!6386332))

(declare-fun m!6386334 () Bool)

(assert (=> b!5356659 m!6386334))

(declare-fun m!6386336 () Bool)

(assert (=> b!5356659 m!6386336))

(declare-fun m!6386338 () Bool)

(assert (=> b!5356659 m!6386338))

(declare-fun m!6386340 () Bool)

(assert (=> b!5356659 m!6386340))

(declare-fun m!6386342 () Bool)

(assert (=> b!5356659 m!6386342))

(declare-fun m!6386344 () Bool)

(assert (=> b!5356686 m!6386344))

(declare-fun m!6386346 () Bool)

(assert (=> b!5356677 m!6386346))

(assert (=> b!5356677 m!6386346))

(declare-fun m!6386348 () Bool)

(assert (=> b!5356677 m!6386348))

(declare-fun m!6386350 () Bool)

(assert (=> b!5356652 m!6386350))

(declare-fun m!6386352 () Bool)

(assert (=> b!5356652 m!6386352))

(declare-fun m!6386354 () Bool)

(assert (=> b!5356652 m!6386354))

(declare-fun m!6386356 () Bool)

(assert (=> b!5356652 m!6386356))

(declare-fun m!6386358 () Bool)

(assert (=> b!5356652 m!6386358))

(declare-fun m!6386360 () Bool)

(assert (=> b!5356652 m!6386360))

(declare-fun m!6386362 () Bool)

(assert (=> b!5356652 m!6386362))

(declare-fun m!6386364 () Bool)

(assert (=> b!5356652 m!6386364))

(declare-fun m!6386366 () Bool)

(assert (=> b!5356652 m!6386366))

(declare-fun m!6386368 () Bool)

(assert (=> b!5356658 m!6386368))

(declare-fun m!6386370 () Bool)

(assert (=> b!5356675 m!6386370))

(declare-fun m!6386372 () Bool)

(assert (=> b!5356675 m!6386372))

(declare-fun m!6386374 () Bool)

(assert (=> b!5356675 m!6386374))

(declare-fun m!6386376 () Bool)

(assert (=> b!5356666 m!6386376))

(declare-fun m!6386378 () Bool)

(assert (=> b!5356666 m!6386378))

(declare-fun m!6386380 () Bool)

(assert (=> b!5356653 m!6386380))

(declare-fun m!6386382 () Bool)

(assert (=> b!5356653 m!6386382))

(declare-fun m!6386384 () Bool)

(assert (=> b!5356653 m!6386384))

(declare-fun m!6386386 () Bool)

(assert (=> b!5356676 m!6386386))

(declare-fun m!6386388 () Bool)

(assert (=> b!5356676 m!6386388))

(declare-fun m!6386390 () Bool)

(assert (=> b!5356676 m!6386390))

(declare-fun m!6386392 () Bool)

(assert (=> b!5356676 m!6386392))

(declare-fun m!6386394 () Bool)

(assert (=> b!5356676 m!6386394))

(declare-fun m!6386396 () Bool)

(assert (=> b!5356671 m!6386396))

(declare-fun m!6386398 () Bool)

(assert (=> start!563946 m!6386398))

(declare-fun m!6386400 () Bool)

(assert (=> setNonEmpty!34651 m!6386400))

(declare-fun m!6386402 () Bool)

(assert (=> b!5356665 m!6386402))

(declare-fun m!6386404 () Bool)

(assert (=> b!5356665 m!6386404))

(declare-fun m!6386406 () Bool)

(assert (=> b!5356665 m!6386406))

(declare-fun m!6386408 () Bool)

(assert (=> b!5356665 m!6386408))

(assert (=> b!5356665 m!6386402))

(declare-fun m!6386410 () Bool)

(assert (=> b!5356665 m!6386410))

(declare-fun m!6386412 () Bool)

(assert (=> b!5356665 m!6386412))

(assert (=> b!5356665 m!6386406))

(declare-fun m!6386414 () Bool)

(assert (=> b!5356672 m!6386414))

(check-sat (not b!5356681) (not b!5356685) (not b!5356676) (not b!5356659) (not b!5356654) (not b!5356667) (not b!5356673) (not b!5356672) tp_is_empty!39367 (not b!5356687) (not b!5356670) (not b!5356655) (not b!5356686) (not b!5356658) (not start!563946) (not b!5356664) (not b!5356652) (not b!5356656) (not b!5356677) (not b!5356653) (not b!5356679) (not setNonEmpty!34651) (not b!5356671) (not b!5356675) (not b!5356663) (not b!5356665) (not b!5356668) (not b!5356669) (not b!5356682) (not b!5356666))
(check-sat)

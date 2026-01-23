; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!579242 () Bool)

(assert start!579242)

(declare-fun b!5576005 () Bool)

(assert (=> b!5576005 true))

(assert (=> b!5576005 true))

(declare-fun lambda!298901 () Int)

(declare-fun lambda!298900 () Int)

(assert (=> b!5576005 (not (= lambda!298901 lambda!298900))))

(assert (=> b!5576005 true))

(assert (=> b!5576005 true))

(declare-fun b!5576018 () Bool)

(assert (=> b!5576018 true))

(declare-fun b!5575995 () Bool)

(declare-fun e!3440893 () Bool)

(declare-fun tp!1543151 () Bool)

(assert (=> b!5575995 (= e!3440893 tp!1543151)))

(declare-fun b!5575996 () Bool)

(declare-fun res!2366690 () Bool)

(declare-fun e!3440894 () Bool)

(assert (=> b!5575996 (=> res!2366690 e!3440894)))

(declare-datatypes ((C!31384 0))(
  ( (C!31385 (val!25394 Int)) )
))
(declare-datatypes ((Regex!15557 0))(
  ( (ElementMatch!15557 (c!976080 C!31384)) (Concat!24402 (regOne!31626 Regex!15557) (regTwo!31626 Regex!15557)) (EmptyExpr!15557) (Star!15557 (reg!15886 Regex!15557)) (EmptyLang!15557) (Union!15557 (regOne!31627 Regex!15557) (regTwo!31627 Regex!15557)) )
))
(declare-datatypes ((List!62970 0))(
  ( (Nil!62846) (Cons!62846 (h!69294 Regex!15557) (t!376239 List!62970)) )
))
(declare-datatypes ((Context!9882 0))(
  ( (Context!9883 (exprs!5441 List!62970)) )
))
(declare-datatypes ((List!62971 0))(
  ( (Nil!62847) (Cons!62847 (h!69295 Context!9882) (t!376240 List!62971)) )
))
(declare-fun zl!343 () List!62971)

(declare-fun isEmpty!34651 (List!62970) Bool)

(assert (=> b!5575996 (= res!2366690 (isEmpty!34651 (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun setIsEmpty!37091 () Bool)

(declare-fun setRes!37091 () Bool)

(assert (=> setIsEmpty!37091 setRes!37091))

(declare-fun b!5575997 () Bool)

(declare-fun e!3440896 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2252695 () (InoxSet Context!9882))

(declare-datatypes ((List!62972 0))(
  ( (Nil!62848) (Cons!62848 (h!69296 C!31384) (t!376241 List!62972)) )
))
(declare-fun s!2326 () List!62972)

(declare-fun matchZipper!1695 ((InoxSet Context!9882) List!62972) Bool)

(assert (=> b!5575997 (= e!3440896 (matchZipper!1695 lt!2252695 (t!376241 s!2326)))))

(declare-fun b!5575998 () Bool)

(declare-fun e!3440888 () Bool)

(declare-fun e!3440895 () Bool)

(assert (=> b!5575998 (= e!3440888 (not e!3440895))))

(declare-fun res!2366685 () Bool)

(assert (=> b!5575998 (=> res!2366685 e!3440895)))

(get-info :version)

(assert (=> b!5575998 (= res!2366685 (not ((_ is Cons!62847) zl!343)))))

(declare-fun lt!2252694 () Bool)

(declare-fun r!7292 () Regex!15557)

(declare-fun matchRSpec!2660 (Regex!15557 List!62972) Bool)

(assert (=> b!5575998 (= lt!2252694 (matchRSpec!2660 r!7292 s!2326))))

(declare-fun matchR!7742 (Regex!15557 List!62972) Bool)

(assert (=> b!5575998 (= lt!2252694 (matchR!7742 r!7292 s!2326))))

(declare-datatypes ((Unit!155600 0))(
  ( (Unit!155601) )
))
(declare-fun lt!2252703 () Unit!155600)

(declare-fun mainMatchTheorem!2660 (Regex!15557 List!62972) Unit!155600)

(assert (=> b!5575998 (= lt!2252703 (mainMatchTheorem!2660 r!7292 s!2326))))

(declare-fun lt!2252700 () (InoxSet Context!9882))

(declare-fun e!3440891 () Bool)

(declare-fun b!5575999 () Bool)

(declare-fun lt!2252699 () (InoxSet Context!9882))

(assert (=> b!5575999 (= e!3440891 (= (matchZipper!1695 lt!2252699 s!2326) (matchZipper!1695 lt!2252700 (t!376241 s!2326))))))

(declare-fun b!5576000 () Bool)

(declare-fun e!3440887 () Unit!155600)

(declare-fun Unit!155602 () Unit!155600)

(assert (=> b!5576000 (= e!3440887 Unit!155602)))

(declare-fun b!5576001 () Bool)

(declare-fun tp_is_empty!40367 () Bool)

(assert (=> b!5576001 (= e!3440893 tp_is_empty!40367)))

(declare-fun b!5576002 () Bool)

(declare-fun tp!1543152 () Bool)

(declare-fun tp!1543156 () Bool)

(assert (=> b!5576002 (= e!3440893 (and tp!1543152 tp!1543156))))

(declare-fun b!5576003 () Bool)

(declare-fun res!2366695 () Bool)

(assert (=> b!5576003 (=> res!2366695 e!3440895)))

(assert (=> b!5576003 (= res!2366695 (or ((_ is EmptyExpr!15557) r!7292) ((_ is EmptyLang!15557) r!7292) ((_ is ElementMatch!15557) r!7292) ((_ is Union!15557) r!7292) (not ((_ is Concat!24402) r!7292))))))

(declare-fun b!5576004 () Bool)

(declare-fun res!2366686 () Bool)

(assert (=> b!5576004 (=> res!2366686 e!3440895)))

(assert (=> b!5576004 (= res!2366686 (not ((_ is Cons!62846) (exprs!5441 (h!69295 zl!343)))))))

(assert (=> b!5576005 (= e!3440895 e!3440894)))

(declare-fun res!2366700 () Bool)

(assert (=> b!5576005 (=> res!2366700 e!3440894)))

(declare-fun lt!2252688 () Bool)

(assert (=> b!5576005 (= res!2366700 (or (not (= lt!2252694 lt!2252688)) ((_ is Nil!62848) s!2326)))))

(declare-fun Exists!2657 (Int) Bool)

(assert (=> b!5576005 (= (Exists!2657 lambda!298900) (Exists!2657 lambda!298901))))

(declare-fun lt!2252689 () Unit!155600)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1286 (Regex!15557 Regex!15557 List!62972) Unit!155600)

(assert (=> b!5576005 (= lt!2252689 (lemmaExistCutMatchRandMatchRSpecEquivalent!1286 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326))))

(assert (=> b!5576005 (= lt!2252688 (Exists!2657 lambda!298900))))

(declare-datatypes ((tuple2!65308 0))(
  ( (tuple2!65309 (_1!35957 List!62972) (_2!35957 List!62972)) )
))
(declare-datatypes ((Option!15566 0))(
  ( (None!15565) (Some!15565 (v!51606 tuple2!65308)) )
))
(declare-fun isDefined!12269 (Option!15566) Bool)

(declare-fun findConcatSeparation!1980 (Regex!15557 Regex!15557 List!62972 List!62972 List!62972) Option!15566)

(assert (=> b!5576005 (= lt!2252688 (isDefined!12269 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326)))))

(declare-fun lt!2252685 () Unit!155600)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1744 (Regex!15557 Regex!15557 List!62972) Unit!155600)

(assert (=> b!5576005 (= lt!2252685 (lemmaFindConcatSeparationEquivalentToExists!1744 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326))))

(declare-fun b!5576006 () Bool)

(declare-fun e!3440899 () Bool)

(declare-fun tp!1543158 () Bool)

(assert (=> b!5576006 (= e!3440899 (and tp_is_empty!40367 tp!1543158))))

(declare-fun b!5575994 () Bool)

(declare-fun e!3440892 () Bool)

(declare-fun tp!1543159 () Bool)

(assert (=> b!5575994 (= e!3440892 tp!1543159)))

(declare-fun res!2366684 () Bool)

(assert (=> start!579242 (=> (not res!2366684) (not e!3440888))))

(declare-fun validRegex!7293 (Regex!15557) Bool)

(assert (=> start!579242 (= res!2366684 (validRegex!7293 r!7292))))

(assert (=> start!579242 e!3440888))

(assert (=> start!579242 e!3440893))

(declare-fun condSetEmpty!37091 () Bool)

(declare-fun z!1189 () (InoxSet Context!9882))

(assert (=> start!579242 (= condSetEmpty!37091 (= z!1189 ((as const (Array Context!9882 Bool)) false)))))

(assert (=> start!579242 setRes!37091))

(declare-fun e!3440897 () Bool)

(assert (=> start!579242 e!3440897))

(assert (=> start!579242 e!3440899))

(declare-fun b!5576007 () Bool)

(declare-fun Unit!155603 () Unit!155600)

(assert (=> b!5576007 (= e!3440887 Unit!155603)))

(declare-fun lt!2252702 () (InoxSet Context!9882))

(declare-fun lt!2252684 () (InoxSet Context!9882))

(declare-fun lt!2252693 () Unit!155600)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!582 ((InoxSet Context!9882) (InoxSet Context!9882) List!62972) Unit!155600)

(assert (=> b!5576007 (= lt!2252693 (lemmaZipperConcatMatchesSameAsBothZippers!582 lt!2252684 lt!2252702 (t!376241 s!2326)))))

(declare-fun res!2366697 () Bool)

(assert (=> b!5576007 (= res!2366697 (matchZipper!1695 lt!2252684 (t!376241 s!2326)))))

(declare-fun e!3440883 () Bool)

(assert (=> b!5576007 (=> res!2366697 e!3440883)))

(assert (=> b!5576007 (= (matchZipper!1695 ((_ map or) lt!2252684 lt!2252702) (t!376241 s!2326)) e!3440883)))

(declare-fun b!5576008 () Bool)

(declare-fun e!3440884 () Bool)

(assert (=> b!5576008 (= e!3440884 e!3440891)))

(declare-fun res!2366682 () Bool)

(assert (=> b!5576008 (=> res!2366682 e!3440891)))

(declare-fun lt!2252683 () (InoxSet Context!9882))

(declare-fun lt!2252692 () (InoxSet Context!9882))

(assert (=> b!5576008 (= res!2366682 (or (not (= lt!2252683 lt!2252692)) (not (= lt!2252700 lt!2252692))))))

(declare-fun lt!2252687 () (InoxSet Context!9882))

(assert (=> b!5576008 (= lt!2252692 ((_ map or) lt!2252687 lt!2252702))))

(declare-fun setElem!37091 () Context!9882)

(declare-fun tp!1543155 () Bool)

(declare-fun setNonEmpty!37091 () Bool)

(declare-fun inv!82139 (Context!9882) Bool)

(assert (=> setNonEmpty!37091 (= setRes!37091 (and tp!1543155 (inv!82139 setElem!37091) e!3440892))))

(declare-fun setRest!37091 () (InoxSet Context!9882))

(assert (=> setNonEmpty!37091 (= z!1189 ((_ map or) (store ((as const (Array Context!9882 Bool)) false) setElem!37091 true) setRest!37091))))

(declare-fun b!5576009 () Bool)

(declare-fun e!3440886 () Bool)

(declare-fun tp!1543154 () Bool)

(assert (=> b!5576009 (= e!3440886 tp!1543154)))

(declare-fun b!5576010 () Bool)

(declare-fun res!2366689 () Bool)

(assert (=> b!5576010 (=> (not res!2366689) (not e!3440888))))

(declare-fun toList!9341 ((InoxSet Context!9882)) List!62971)

(assert (=> b!5576010 (= res!2366689 (= (toList!9341 z!1189) zl!343))))

(declare-fun b!5576011 () Bool)

(assert (=> b!5576011 (= e!3440883 (matchZipper!1695 lt!2252702 (t!376241 s!2326)))))

(declare-fun b!5576012 () Bool)

(declare-fun e!3440889 () Bool)

(assert (=> b!5576012 (= e!3440889 (not (matchZipper!1695 lt!2252695 (t!376241 s!2326))))))

(declare-fun b!5576013 () Bool)

(declare-fun res!2366696 () Bool)

(assert (=> b!5576013 (=> (not res!2366696) (not e!3440888))))

(declare-fun unfocusZipper!1299 (List!62971) Regex!15557)

(assert (=> b!5576013 (= res!2366696 (= r!7292 (unfocusZipper!1299 zl!343)))))

(declare-fun b!5576014 () Bool)

(declare-fun tp!1543150 () Bool)

(declare-fun tp!1543157 () Bool)

(assert (=> b!5576014 (= e!3440893 (and tp!1543150 tp!1543157))))

(declare-fun b!5576015 () Bool)

(declare-fun e!3440885 () Bool)

(assert (=> b!5576015 (= e!3440885 e!3440884)))

(declare-fun res!2366692 () Bool)

(assert (=> b!5576015 (=> res!2366692 e!3440884)))

(declare-fun nullable!5589 (Regex!15557) Bool)

(assert (=> b!5576015 (= res!2366692 (not (nullable!5589 (regOne!31627 (regOne!31626 r!7292)))))))

(declare-fun lambda!298902 () Int)

(declare-fun lt!2252704 () Context!9882)

(declare-fun flatMap!1170 ((InoxSet Context!9882) Int) (InoxSet Context!9882))

(declare-fun derivationStepZipperUp!825 (Context!9882 C!31384) (InoxSet Context!9882))

(assert (=> b!5576015 (= (flatMap!1170 lt!2252699 lambda!298902) (derivationStepZipperUp!825 lt!2252704 (h!69296 s!2326)))))

(declare-fun lt!2252690 () Unit!155600)

(declare-fun lemmaFlatMapOnSingletonSet!702 ((InoxSet Context!9882) Context!9882 Int) Unit!155600)

(assert (=> b!5576015 (= lt!2252690 (lemmaFlatMapOnSingletonSet!702 lt!2252699 lt!2252704 lambda!298902))))

(assert (=> b!5576015 (= lt!2252683 (derivationStepZipperUp!825 lt!2252704 (h!69296 s!2326)))))

(declare-fun derivationStepZipper!1656 ((InoxSet Context!9882) C!31384) (InoxSet Context!9882))

(assert (=> b!5576015 (= lt!2252700 (derivationStepZipper!1656 lt!2252699 (h!69296 s!2326)))))

(assert (=> b!5576015 (= lt!2252699 (store ((as const (Array Context!9882 Bool)) false) lt!2252704 true))))

(assert (=> b!5576015 (= lt!2252704 (Context!9883 (Cons!62846 (regOne!31627 (regOne!31626 r!7292)) (t!376239 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun b!5576016 () Bool)

(declare-fun e!3440890 () Bool)

(declare-fun e!3440898 () Bool)

(assert (=> b!5576016 (= e!3440890 e!3440898)))

(declare-fun res!2366699 () Bool)

(assert (=> b!5576016 (=> res!2366699 e!3440898)))

(declare-fun lt!2252701 () (InoxSet Context!9882))

(assert (=> b!5576016 (= res!2366699 (not (= lt!2252684 lt!2252701)))))

(assert (=> b!5576016 (= lt!2252701 ((_ map or) lt!2252687 lt!2252695))))

(declare-fun lt!2252691 () Context!9882)

(declare-fun derivationStepZipperDown!899 (Regex!15557 Context!9882 C!31384) (InoxSet Context!9882))

(assert (=> b!5576016 (= lt!2252695 (derivationStepZipperDown!899 (regTwo!31627 (regOne!31626 r!7292)) lt!2252691 (h!69296 s!2326)))))

(assert (=> b!5576016 (= lt!2252687 (derivationStepZipperDown!899 (regOne!31627 (regOne!31626 r!7292)) lt!2252691 (h!69296 s!2326)))))

(declare-fun b!5576017 () Bool)

(declare-fun res!2366691 () Bool)

(assert (=> b!5576017 (=> res!2366691 e!3440895)))

(declare-fun generalisedConcat!1172 (List!62970) Regex!15557)

(assert (=> b!5576017 (= res!2366691 (not (= r!7292 (generalisedConcat!1172 (exprs!5441 (h!69295 zl!343))))))))

(assert (=> b!5576018 (= e!3440894 e!3440890)))

(declare-fun res!2366698 () Bool)

(assert (=> b!5576018 (=> res!2366698 e!3440890)))

(assert (=> b!5576018 (= res!2366698 (or (and ((_ is ElementMatch!15557) (regOne!31626 r!7292)) (= (c!976080 (regOne!31626 r!7292)) (h!69296 s!2326))) (not ((_ is Union!15557) (regOne!31626 r!7292)))))))

(declare-fun lt!2252696 () Unit!155600)

(assert (=> b!5576018 (= lt!2252696 e!3440887)))

(declare-fun c!976079 () Bool)

(assert (=> b!5576018 (= c!976079 (nullable!5589 (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(assert (=> b!5576018 (= (flatMap!1170 z!1189 lambda!298902) (derivationStepZipperUp!825 (h!69295 zl!343) (h!69296 s!2326)))))

(declare-fun lt!2252698 () Unit!155600)

(assert (=> b!5576018 (= lt!2252698 (lemmaFlatMapOnSingletonSet!702 z!1189 (h!69295 zl!343) lambda!298902))))

(assert (=> b!5576018 (= lt!2252702 (derivationStepZipperUp!825 lt!2252691 (h!69296 s!2326)))))

(assert (=> b!5576018 (= lt!2252684 (derivationStepZipperDown!899 (h!69294 (exprs!5441 (h!69295 zl!343))) lt!2252691 (h!69296 s!2326)))))

(assert (=> b!5576018 (= lt!2252691 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun lt!2252697 () (InoxSet Context!9882))

(assert (=> b!5576018 (= lt!2252697 (derivationStepZipperUp!825 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))) (h!69296 s!2326)))))

(declare-fun b!5576019 () Bool)

(declare-fun res!2366687 () Bool)

(assert (=> b!5576019 (=> res!2366687 e!3440895)))

(declare-fun generalisedUnion!1420 (List!62970) Regex!15557)

(declare-fun unfocusZipperList!985 (List!62971) List!62970)

(assert (=> b!5576019 (= res!2366687 (not (= r!7292 (generalisedUnion!1420 (unfocusZipperList!985 zl!343)))))))

(declare-fun tp!1543153 () Bool)

(declare-fun b!5576020 () Bool)

(assert (=> b!5576020 (= e!3440897 (and (inv!82139 (h!69295 zl!343)) e!3440886 tp!1543153))))

(declare-fun b!5576021 () Bool)

(assert (=> b!5576021 (= e!3440898 e!3440885)))

(declare-fun res!2366688 () Bool)

(assert (=> b!5576021 (=> res!2366688 e!3440885)))

(assert (=> b!5576021 (= res!2366688 e!3440889)))

(declare-fun res!2366683 () Bool)

(assert (=> b!5576021 (=> (not res!2366683) (not e!3440889))))

(declare-fun lt!2252686 () Bool)

(assert (=> b!5576021 (= res!2366683 (not (= (matchZipper!1695 lt!2252684 (t!376241 s!2326)) lt!2252686)))))

(assert (=> b!5576021 (= (matchZipper!1695 lt!2252701 (t!376241 s!2326)) e!3440896)))

(declare-fun res!2366693 () Bool)

(assert (=> b!5576021 (=> res!2366693 e!3440896)))

(assert (=> b!5576021 (= res!2366693 lt!2252686)))

(assert (=> b!5576021 (= lt!2252686 (matchZipper!1695 lt!2252687 (t!376241 s!2326)))))

(declare-fun lt!2252682 () Unit!155600)

(assert (=> b!5576021 (= lt!2252682 (lemmaZipperConcatMatchesSameAsBothZippers!582 lt!2252687 lt!2252695 (t!376241 s!2326)))))

(declare-fun b!5576022 () Bool)

(declare-fun res!2366694 () Bool)

(assert (=> b!5576022 (=> res!2366694 e!3440895)))

(declare-fun isEmpty!34652 (List!62971) Bool)

(assert (=> b!5576022 (= res!2366694 (not (isEmpty!34652 (t!376240 zl!343))))))

(assert (= (and start!579242 res!2366684) b!5576010))

(assert (= (and b!5576010 res!2366689) b!5576013))

(assert (= (and b!5576013 res!2366696) b!5575998))

(assert (= (and b!5575998 (not res!2366685)) b!5576022))

(assert (= (and b!5576022 (not res!2366694)) b!5576017))

(assert (= (and b!5576017 (not res!2366691)) b!5576004))

(assert (= (and b!5576004 (not res!2366686)) b!5576019))

(assert (= (and b!5576019 (not res!2366687)) b!5576003))

(assert (= (and b!5576003 (not res!2366695)) b!5576005))

(assert (= (and b!5576005 (not res!2366700)) b!5575996))

(assert (= (and b!5575996 (not res!2366690)) b!5576018))

(assert (= (and b!5576018 c!976079) b!5576007))

(assert (= (and b!5576018 (not c!976079)) b!5576000))

(assert (= (and b!5576007 (not res!2366697)) b!5576011))

(assert (= (and b!5576018 (not res!2366698)) b!5576016))

(assert (= (and b!5576016 (not res!2366699)) b!5576021))

(assert (= (and b!5576021 (not res!2366693)) b!5575997))

(assert (= (and b!5576021 res!2366683) b!5576012))

(assert (= (and b!5576021 (not res!2366688)) b!5576015))

(assert (= (and b!5576015 (not res!2366692)) b!5576008))

(assert (= (and b!5576008 (not res!2366682)) b!5575999))

(assert (= (and start!579242 ((_ is ElementMatch!15557) r!7292)) b!5576001))

(assert (= (and start!579242 ((_ is Concat!24402) r!7292)) b!5576014))

(assert (= (and start!579242 ((_ is Star!15557) r!7292)) b!5575995))

(assert (= (and start!579242 ((_ is Union!15557) r!7292)) b!5576002))

(assert (= (and start!579242 condSetEmpty!37091) setIsEmpty!37091))

(assert (= (and start!579242 (not condSetEmpty!37091)) setNonEmpty!37091))

(assert (= setNonEmpty!37091 b!5575994))

(assert (= b!5576020 b!5576009))

(assert (= (and start!579242 ((_ is Cons!62847) zl!343)) b!5576020))

(assert (= (and start!579242 ((_ is Cons!62848) s!2326)) b!5576006))

(declare-fun m!6559074 () Bool)

(assert (=> b!5576005 m!6559074))

(declare-fun m!6559076 () Bool)

(assert (=> b!5576005 m!6559076))

(declare-fun m!6559078 () Bool)

(assert (=> b!5576005 m!6559078))

(declare-fun m!6559080 () Bool)

(assert (=> b!5576005 m!6559080))

(assert (=> b!5576005 m!6559076))

(declare-fun m!6559082 () Bool)

(assert (=> b!5576005 m!6559082))

(assert (=> b!5576005 m!6559078))

(declare-fun m!6559084 () Bool)

(assert (=> b!5576005 m!6559084))

(declare-fun m!6559086 () Bool)

(assert (=> b!5576010 m!6559086))

(declare-fun m!6559088 () Bool)

(assert (=> b!5575996 m!6559088))

(declare-fun m!6559090 () Bool)

(assert (=> b!5576021 m!6559090))

(declare-fun m!6559092 () Bool)

(assert (=> b!5576021 m!6559092))

(declare-fun m!6559094 () Bool)

(assert (=> b!5576021 m!6559094))

(declare-fun m!6559096 () Bool)

(assert (=> b!5576021 m!6559096))

(declare-fun m!6559098 () Bool)

(assert (=> b!5576012 m!6559098))

(declare-fun m!6559100 () Bool)

(assert (=> b!5575998 m!6559100))

(declare-fun m!6559102 () Bool)

(assert (=> b!5575998 m!6559102))

(declare-fun m!6559104 () Bool)

(assert (=> b!5575998 m!6559104))

(declare-fun m!6559106 () Bool)

(assert (=> b!5576018 m!6559106))

(declare-fun m!6559108 () Bool)

(assert (=> b!5576018 m!6559108))

(declare-fun m!6559110 () Bool)

(assert (=> b!5576018 m!6559110))

(declare-fun m!6559112 () Bool)

(assert (=> b!5576018 m!6559112))

(declare-fun m!6559114 () Bool)

(assert (=> b!5576018 m!6559114))

(declare-fun m!6559116 () Bool)

(assert (=> b!5576018 m!6559116))

(declare-fun m!6559118 () Bool)

(assert (=> b!5576018 m!6559118))

(declare-fun m!6559120 () Bool)

(assert (=> b!5576015 m!6559120))

(declare-fun m!6559122 () Bool)

(assert (=> b!5576015 m!6559122))

(declare-fun m!6559124 () Bool)

(assert (=> b!5576015 m!6559124))

(declare-fun m!6559126 () Bool)

(assert (=> b!5576015 m!6559126))

(declare-fun m!6559128 () Bool)

(assert (=> b!5576015 m!6559128))

(declare-fun m!6559130 () Bool)

(assert (=> b!5576015 m!6559130))

(declare-fun m!6559132 () Bool)

(assert (=> start!579242 m!6559132))

(declare-fun m!6559134 () Bool)

(assert (=> b!5576022 m!6559134))

(declare-fun m!6559136 () Bool)

(assert (=> setNonEmpty!37091 m!6559136))

(declare-fun m!6559138 () Bool)

(assert (=> b!5575999 m!6559138))

(declare-fun m!6559140 () Bool)

(assert (=> b!5575999 m!6559140))

(declare-fun m!6559142 () Bool)

(assert (=> b!5576007 m!6559142))

(assert (=> b!5576007 m!6559090))

(declare-fun m!6559144 () Bool)

(assert (=> b!5576007 m!6559144))

(declare-fun m!6559146 () Bool)

(assert (=> b!5576011 m!6559146))

(declare-fun m!6559148 () Bool)

(assert (=> b!5576013 m!6559148))

(assert (=> b!5575997 m!6559098))

(declare-fun m!6559150 () Bool)

(assert (=> b!5576016 m!6559150))

(declare-fun m!6559152 () Bool)

(assert (=> b!5576016 m!6559152))

(declare-fun m!6559154 () Bool)

(assert (=> b!5576017 m!6559154))

(declare-fun m!6559156 () Bool)

(assert (=> b!5576019 m!6559156))

(assert (=> b!5576019 m!6559156))

(declare-fun m!6559158 () Bool)

(assert (=> b!5576019 m!6559158))

(declare-fun m!6559160 () Bool)

(assert (=> b!5576020 m!6559160))

(check-sat tp_is_empty!40367 (not b!5576006) (not b!5576017) (not b!5575998) (not b!5576002) (not b!5575999) (not b!5576010) (not b!5575995) (not b!5576005) (not b!5575996) (not b!5575994) (not b!5576015) (not b!5576012) (not b!5576021) (not b!5576019) (not b!5576007) (not b!5576016) (not b!5576011) (not setNonEmpty!37091) (not b!5576018) (not b!5576009) (not b!5575997) (not b!5576020) (not start!579242) (not b!5576013) (not b!5576022) (not b!5576014))
(check-sat)
(get-model)

(declare-fun b!5576432 () Bool)

(declare-fun e!3441133 () Bool)

(declare-fun call!416777 () Bool)

(assert (=> b!5576432 (= e!3441133 call!416777)))

(declare-fun bm!416772 () Bool)

(declare-fun call!416778 () Bool)

(declare-fun c!976194 () Bool)

(assert (=> bm!416772 (= call!416778 (validRegex!7293 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))))))

(declare-fun b!5576433 () Bool)

(declare-fun res!2366829 () Bool)

(declare-fun e!3441131 () Bool)

(assert (=> b!5576433 (=> res!2366829 e!3441131)))

(assert (=> b!5576433 (= res!2366829 (not ((_ is Concat!24402) r!7292)))))

(declare-fun e!3441130 () Bool)

(assert (=> b!5576433 (= e!3441130 e!3441131)))

(declare-fun b!5576434 () Bool)

(declare-fun e!3441135 () Bool)

(assert (=> b!5576434 (= e!3441135 e!3441130)))

(assert (=> b!5576434 (= c!976194 ((_ is Union!15557) r!7292))))

(declare-fun bm!416773 () Bool)

(declare-fun call!416779 () Bool)

(assert (=> bm!416773 (= call!416777 call!416779)))

(declare-fun b!5576435 () Bool)

(declare-fun e!3441134 () Bool)

(assert (=> b!5576435 (= e!3441135 e!3441134)))

(declare-fun res!2366826 () Bool)

(assert (=> b!5576435 (= res!2366826 (not (nullable!5589 (reg!15886 r!7292))))))

(assert (=> b!5576435 (=> (not res!2366826) (not e!3441134))))

(declare-fun c!976195 () Bool)

(declare-fun bm!416774 () Bool)

(assert (=> bm!416774 (= call!416779 (validRegex!7293 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))))))

(declare-fun b!5576436 () Bool)

(assert (=> b!5576436 (= e!3441134 call!416779)))

(declare-fun b!5576438 () Bool)

(declare-fun res!2366830 () Bool)

(declare-fun e!3441129 () Bool)

(assert (=> b!5576438 (=> (not res!2366830) (not e!3441129))))

(assert (=> b!5576438 (= res!2366830 call!416778)))

(assert (=> b!5576438 (= e!3441130 e!3441129)))

(declare-fun b!5576439 () Bool)

(assert (=> b!5576439 (= e!3441129 call!416777)))

(declare-fun b!5576440 () Bool)

(assert (=> b!5576440 (= e!3441131 e!3441133)))

(declare-fun res!2366828 () Bool)

(assert (=> b!5576440 (=> (not res!2366828) (not e!3441133))))

(assert (=> b!5576440 (= res!2366828 call!416778)))

(declare-fun d!1763010 () Bool)

(declare-fun res!2366827 () Bool)

(declare-fun e!3441132 () Bool)

(assert (=> d!1763010 (=> res!2366827 e!3441132)))

(assert (=> d!1763010 (= res!2366827 ((_ is ElementMatch!15557) r!7292))))

(assert (=> d!1763010 (= (validRegex!7293 r!7292) e!3441132)))

(declare-fun b!5576437 () Bool)

(assert (=> b!5576437 (= e!3441132 e!3441135)))

(assert (=> b!5576437 (= c!976195 ((_ is Star!15557) r!7292))))

(assert (= (and d!1763010 (not res!2366827)) b!5576437))

(assert (= (and b!5576437 c!976195) b!5576435))

(assert (= (and b!5576437 (not c!976195)) b!5576434))

(assert (= (and b!5576435 res!2366826) b!5576436))

(assert (= (and b!5576434 c!976194) b!5576438))

(assert (= (and b!5576434 (not c!976194)) b!5576433))

(assert (= (and b!5576438 res!2366830) b!5576439))

(assert (= (and b!5576433 (not res!2366829)) b!5576440))

(assert (= (and b!5576440 res!2366828) b!5576432))

(assert (= (or b!5576439 b!5576432) bm!416773))

(assert (= (or b!5576438 b!5576440) bm!416772))

(assert (= (or b!5576436 bm!416773) bm!416774))

(declare-fun m!6559416 () Bool)

(assert (=> bm!416772 m!6559416))

(declare-fun m!6559418 () Bool)

(assert (=> b!5576435 m!6559418))

(declare-fun m!6559420 () Bool)

(assert (=> bm!416774 m!6559420))

(assert (=> start!579242 d!1763010))

(declare-fun b!5576461 () Bool)

(declare-fun e!3441152 () Bool)

(declare-fun lt!2252751 () Regex!15557)

(declare-fun isUnion!557 (Regex!15557) Bool)

(assert (=> b!5576461 (= e!3441152 (isUnion!557 lt!2252751))))

(declare-fun b!5576462 () Bool)

(declare-fun e!3441153 () Bool)

(declare-fun e!3441150 () Bool)

(assert (=> b!5576462 (= e!3441153 e!3441150)))

(declare-fun c!976207 () Bool)

(assert (=> b!5576462 (= c!976207 (isEmpty!34651 (unfocusZipperList!985 zl!343)))))

(declare-fun b!5576463 () Bool)

(declare-fun e!3441148 () Regex!15557)

(assert (=> b!5576463 (= e!3441148 EmptyLang!15557)))

(declare-fun b!5576464 () Bool)

(assert (=> b!5576464 (= e!3441150 e!3441152)))

(declare-fun c!976204 () Bool)

(declare-fun tail!10987 (List!62970) List!62970)

(assert (=> b!5576464 (= c!976204 (isEmpty!34651 (tail!10987 (unfocusZipperList!985 zl!343))))))

(declare-fun b!5576466 () Bool)

(declare-fun isEmptyLang!1127 (Regex!15557) Bool)

(assert (=> b!5576466 (= e!3441150 (isEmptyLang!1127 lt!2252751))))

(declare-fun b!5576467 () Bool)

(declare-fun e!3441151 () Regex!15557)

(assert (=> b!5576467 (= e!3441151 (h!69294 (unfocusZipperList!985 zl!343)))))

(declare-fun b!5576468 () Bool)

(declare-fun head!11892 (List!62970) Regex!15557)

(assert (=> b!5576468 (= e!3441152 (= lt!2252751 (head!11892 (unfocusZipperList!985 zl!343))))))

(declare-fun b!5576469 () Bool)

(declare-fun e!3441149 () Bool)

(assert (=> b!5576469 (= e!3441149 (isEmpty!34651 (t!376239 (unfocusZipperList!985 zl!343))))))

(declare-fun b!5576470 () Bool)

(assert (=> b!5576470 (= e!3441148 (Union!15557 (h!69294 (unfocusZipperList!985 zl!343)) (generalisedUnion!1420 (t!376239 (unfocusZipperList!985 zl!343)))))))

(declare-fun b!5576465 () Bool)

(assert (=> b!5576465 (= e!3441151 e!3441148)))

(declare-fun c!976206 () Bool)

(assert (=> b!5576465 (= c!976206 ((_ is Cons!62846) (unfocusZipperList!985 zl!343)))))

(declare-fun d!1763012 () Bool)

(assert (=> d!1763012 e!3441153))

(declare-fun res!2366835 () Bool)

(assert (=> d!1763012 (=> (not res!2366835) (not e!3441153))))

(assert (=> d!1763012 (= res!2366835 (validRegex!7293 lt!2252751))))

(assert (=> d!1763012 (= lt!2252751 e!3441151)))

(declare-fun c!976205 () Bool)

(assert (=> d!1763012 (= c!976205 e!3441149)))

(declare-fun res!2366836 () Bool)

(assert (=> d!1763012 (=> (not res!2366836) (not e!3441149))))

(assert (=> d!1763012 (= res!2366836 ((_ is Cons!62846) (unfocusZipperList!985 zl!343)))))

(declare-fun lambda!298936 () Int)

(declare-fun forall!14728 (List!62970 Int) Bool)

(assert (=> d!1763012 (forall!14728 (unfocusZipperList!985 zl!343) lambda!298936)))

(assert (=> d!1763012 (= (generalisedUnion!1420 (unfocusZipperList!985 zl!343)) lt!2252751)))

(assert (= (and d!1763012 res!2366836) b!5576469))

(assert (= (and d!1763012 c!976205) b!5576467))

(assert (= (and d!1763012 (not c!976205)) b!5576465))

(assert (= (and b!5576465 c!976206) b!5576470))

(assert (= (and b!5576465 (not c!976206)) b!5576463))

(assert (= (and d!1763012 res!2366835) b!5576462))

(assert (= (and b!5576462 c!976207) b!5576466))

(assert (= (and b!5576462 (not c!976207)) b!5576464))

(assert (= (and b!5576464 c!976204) b!5576468))

(assert (= (and b!5576464 (not c!976204)) b!5576461))

(assert (=> b!5576464 m!6559156))

(declare-fun m!6559422 () Bool)

(assert (=> b!5576464 m!6559422))

(assert (=> b!5576464 m!6559422))

(declare-fun m!6559424 () Bool)

(assert (=> b!5576464 m!6559424))

(declare-fun m!6559426 () Bool)

(assert (=> d!1763012 m!6559426))

(assert (=> d!1763012 m!6559156))

(declare-fun m!6559428 () Bool)

(assert (=> d!1763012 m!6559428))

(declare-fun m!6559430 () Bool)

(assert (=> b!5576461 m!6559430))

(assert (=> b!5576462 m!6559156))

(declare-fun m!6559432 () Bool)

(assert (=> b!5576462 m!6559432))

(assert (=> b!5576468 m!6559156))

(declare-fun m!6559434 () Bool)

(assert (=> b!5576468 m!6559434))

(declare-fun m!6559436 () Bool)

(assert (=> b!5576466 m!6559436))

(declare-fun m!6559438 () Bool)

(assert (=> b!5576470 m!6559438))

(declare-fun m!6559440 () Bool)

(assert (=> b!5576469 m!6559440))

(assert (=> b!5576019 d!1763012))

(declare-fun bs!1290303 () Bool)

(declare-fun d!1763014 () Bool)

(assert (= bs!1290303 (and d!1763014 d!1763012)))

(declare-fun lambda!298939 () Int)

(assert (=> bs!1290303 (= lambda!298939 lambda!298936)))

(declare-fun lt!2252754 () List!62970)

(assert (=> d!1763014 (forall!14728 lt!2252754 lambda!298939)))

(declare-fun e!3441156 () List!62970)

(assert (=> d!1763014 (= lt!2252754 e!3441156)))

(declare-fun c!976210 () Bool)

(assert (=> d!1763014 (= c!976210 ((_ is Cons!62847) zl!343))))

(assert (=> d!1763014 (= (unfocusZipperList!985 zl!343) lt!2252754)))

(declare-fun b!5576475 () Bool)

(assert (=> b!5576475 (= e!3441156 (Cons!62846 (generalisedConcat!1172 (exprs!5441 (h!69295 zl!343))) (unfocusZipperList!985 (t!376240 zl!343))))))

(declare-fun b!5576476 () Bool)

(assert (=> b!5576476 (= e!3441156 Nil!62846)))

(assert (= (and d!1763014 c!976210) b!5576475))

(assert (= (and d!1763014 (not c!976210)) b!5576476))

(declare-fun m!6559442 () Bool)

(assert (=> d!1763014 m!6559442))

(assert (=> b!5576475 m!6559154))

(declare-fun m!6559444 () Bool)

(assert (=> b!5576475 m!6559444))

(assert (=> b!5576019 d!1763014))

(declare-fun bs!1290304 () Bool)

(declare-fun d!1763016 () Bool)

(assert (= bs!1290304 (and d!1763016 d!1763012)))

(declare-fun lambda!298942 () Int)

(assert (=> bs!1290304 (= lambda!298942 lambda!298936)))

(declare-fun bs!1290305 () Bool)

(assert (= bs!1290305 (and d!1763016 d!1763014)))

(assert (=> bs!1290305 (= lambda!298942 lambda!298939)))

(assert (=> d!1763016 (= (inv!82139 setElem!37091) (forall!14728 (exprs!5441 setElem!37091) lambda!298942))))

(declare-fun bs!1290306 () Bool)

(assert (= bs!1290306 d!1763016))

(declare-fun m!6559446 () Bool)

(assert (=> bs!1290306 m!6559446))

(assert (=> setNonEmpty!37091 d!1763016))

(declare-fun d!1763018 () Bool)

(declare-fun c!976213 () Bool)

(declare-fun isEmpty!34655 (List!62972) Bool)

(assert (=> d!1763018 (= c!976213 (isEmpty!34655 s!2326))))

(declare-fun e!3441159 () Bool)

(assert (=> d!1763018 (= (matchZipper!1695 lt!2252699 s!2326) e!3441159)))

(declare-fun b!5576481 () Bool)

(declare-fun nullableZipper!1556 ((InoxSet Context!9882)) Bool)

(assert (=> b!5576481 (= e!3441159 (nullableZipper!1556 lt!2252699))))

(declare-fun b!5576482 () Bool)

(declare-fun head!11893 (List!62972) C!31384)

(declare-fun tail!10988 (List!62972) List!62972)

(assert (=> b!5576482 (= e!3441159 (matchZipper!1695 (derivationStepZipper!1656 lt!2252699 (head!11893 s!2326)) (tail!10988 s!2326)))))

(assert (= (and d!1763018 c!976213) b!5576481))

(assert (= (and d!1763018 (not c!976213)) b!5576482))

(declare-fun m!6559448 () Bool)

(assert (=> d!1763018 m!6559448))

(declare-fun m!6559450 () Bool)

(assert (=> b!5576481 m!6559450))

(declare-fun m!6559452 () Bool)

(assert (=> b!5576482 m!6559452))

(assert (=> b!5576482 m!6559452))

(declare-fun m!6559454 () Bool)

(assert (=> b!5576482 m!6559454))

(declare-fun m!6559456 () Bool)

(assert (=> b!5576482 m!6559456))

(assert (=> b!5576482 m!6559454))

(assert (=> b!5576482 m!6559456))

(declare-fun m!6559458 () Bool)

(assert (=> b!5576482 m!6559458))

(assert (=> b!5575999 d!1763018))

(declare-fun d!1763020 () Bool)

(declare-fun c!976214 () Bool)

(assert (=> d!1763020 (= c!976214 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441160 () Bool)

(assert (=> d!1763020 (= (matchZipper!1695 lt!2252700 (t!376241 s!2326)) e!3441160)))

(declare-fun b!5576483 () Bool)

(assert (=> b!5576483 (= e!3441160 (nullableZipper!1556 lt!2252700))))

(declare-fun b!5576484 () Bool)

(assert (=> b!5576484 (= e!3441160 (matchZipper!1695 (derivationStepZipper!1656 lt!2252700 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763020 c!976214) b!5576483))

(assert (= (and d!1763020 (not c!976214)) b!5576484))

(declare-fun m!6559460 () Bool)

(assert (=> d!1763020 m!6559460))

(declare-fun m!6559462 () Bool)

(assert (=> b!5576483 m!6559462))

(declare-fun m!6559464 () Bool)

(assert (=> b!5576484 m!6559464))

(assert (=> b!5576484 m!6559464))

(declare-fun m!6559466 () Bool)

(assert (=> b!5576484 m!6559466))

(declare-fun m!6559468 () Bool)

(assert (=> b!5576484 m!6559468))

(assert (=> b!5576484 m!6559466))

(assert (=> b!5576484 m!6559468))

(declare-fun m!6559470 () Bool)

(assert (=> b!5576484 m!6559470))

(assert (=> b!5575999 d!1763020))

(declare-fun bs!1290307 () Bool)

(declare-fun d!1763022 () Bool)

(assert (= bs!1290307 (and d!1763022 d!1763012)))

(declare-fun lambda!298943 () Int)

(assert (=> bs!1290307 (= lambda!298943 lambda!298936)))

(declare-fun bs!1290308 () Bool)

(assert (= bs!1290308 (and d!1763022 d!1763014)))

(assert (=> bs!1290308 (= lambda!298943 lambda!298939)))

(declare-fun bs!1290309 () Bool)

(assert (= bs!1290309 (and d!1763022 d!1763016)))

(assert (=> bs!1290309 (= lambda!298943 lambda!298942)))

(assert (=> d!1763022 (= (inv!82139 (h!69295 zl!343)) (forall!14728 (exprs!5441 (h!69295 zl!343)) lambda!298943))))

(declare-fun bs!1290310 () Bool)

(assert (= bs!1290310 d!1763022))

(declare-fun m!6559472 () Bool)

(assert (=> bs!1290310 m!6559472))

(assert (=> b!5576020 d!1763022))

(declare-fun d!1763024 () Bool)

(declare-fun c!976215 () Bool)

(assert (=> d!1763024 (= c!976215 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441161 () Bool)

(assert (=> d!1763024 (= (matchZipper!1695 lt!2252684 (t!376241 s!2326)) e!3441161)))

(declare-fun b!5576485 () Bool)

(assert (=> b!5576485 (= e!3441161 (nullableZipper!1556 lt!2252684))))

(declare-fun b!5576486 () Bool)

(assert (=> b!5576486 (= e!3441161 (matchZipper!1695 (derivationStepZipper!1656 lt!2252684 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763024 c!976215) b!5576485))

(assert (= (and d!1763024 (not c!976215)) b!5576486))

(assert (=> d!1763024 m!6559460))

(declare-fun m!6559474 () Bool)

(assert (=> b!5576485 m!6559474))

(assert (=> b!5576486 m!6559464))

(assert (=> b!5576486 m!6559464))

(declare-fun m!6559476 () Bool)

(assert (=> b!5576486 m!6559476))

(assert (=> b!5576486 m!6559468))

(assert (=> b!5576486 m!6559476))

(assert (=> b!5576486 m!6559468))

(declare-fun m!6559478 () Bool)

(assert (=> b!5576486 m!6559478))

(assert (=> b!5576021 d!1763024))

(declare-fun d!1763026 () Bool)

(declare-fun c!976216 () Bool)

(assert (=> d!1763026 (= c!976216 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441162 () Bool)

(assert (=> d!1763026 (= (matchZipper!1695 lt!2252701 (t!376241 s!2326)) e!3441162)))

(declare-fun b!5576487 () Bool)

(assert (=> b!5576487 (= e!3441162 (nullableZipper!1556 lt!2252701))))

(declare-fun b!5576488 () Bool)

(assert (=> b!5576488 (= e!3441162 (matchZipper!1695 (derivationStepZipper!1656 lt!2252701 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763026 c!976216) b!5576487))

(assert (= (and d!1763026 (not c!976216)) b!5576488))

(assert (=> d!1763026 m!6559460))

(declare-fun m!6559480 () Bool)

(assert (=> b!5576487 m!6559480))

(assert (=> b!5576488 m!6559464))

(assert (=> b!5576488 m!6559464))

(declare-fun m!6559482 () Bool)

(assert (=> b!5576488 m!6559482))

(assert (=> b!5576488 m!6559468))

(assert (=> b!5576488 m!6559482))

(assert (=> b!5576488 m!6559468))

(declare-fun m!6559484 () Bool)

(assert (=> b!5576488 m!6559484))

(assert (=> b!5576021 d!1763026))

(declare-fun d!1763028 () Bool)

(declare-fun c!976217 () Bool)

(assert (=> d!1763028 (= c!976217 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441163 () Bool)

(assert (=> d!1763028 (= (matchZipper!1695 lt!2252687 (t!376241 s!2326)) e!3441163)))

(declare-fun b!5576489 () Bool)

(assert (=> b!5576489 (= e!3441163 (nullableZipper!1556 lt!2252687))))

(declare-fun b!5576490 () Bool)

(assert (=> b!5576490 (= e!3441163 (matchZipper!1695 (derivationStepZipper!1656 lt!2252687 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763028 c!976217) b!5576489))

(assert (= (and d!1763028 (not c!976217)) b!5576490))

(assert (=> d!1763028 m!6559460))

(declare-fun m!6559486 () Bool)

(assert (=> b!5576489 m!6559486))

(assert (=> b!5576490 m!6559464))

(assert (=> b!5576490 m!6559464))

(declare-fun m!6559488 () Bool)

(assert (=> b!5576490 m!6559488))

(assert (=> b!5576490 m!6559468))

(assert (=> b!5576490 m!6559488))

(assert (=> b!5576490 m!6559468))

(declare-fun m!6559490 () Bool)

(assert (=> b!5576490 m!6559490))

(assert (=> b!5576021 d!1763028))

(declare-fun d!1763030 () Bool)

(declare-fun e!3441166 () Bool)

(assert (=> d!1763030 (= (matchZipper!1695 ((_ map or) lt!2252687 lt!2252695) (t!376241 s!2326)) e!3441166)))

(declare-fun res!2366839 () Bool)

(assert (=> d!1763030 (=> res!2366839 e!3441166)))

(assert (=> d!1763030 (= res!2366839 (matchZipper!1695 lt!2252687 (t!376241 s!2326)))))

(declare-fun lt!2252757 () Unit!155600)

(declare-fun choose!42253 ((InoxSet Context!9882) (InoxSet Context!9882) List!62972) Unit!155600)

(assert (=> d!1763030 (= lt!2252757 (choose!42253 lt!2252687 lt!2252695 (t!376241 s!2326)))))

(assert (=> d!1763030 (= (lemmaZipperConcatMatchesSameAsBothZippers!582 lt!2252687 lt!2252695 (t!376241 s!2326)) lt!2252757)))

(declare-fun b!5576493 () Bool)

(assert (=> b!5576493 (= e!3441166 (matchZipper!1695 lt!2252695 (t!376241 s!2326)))))

(assert (= (and d!1763030 (not res!2366839)) b!5576493))

(declare-fun m!6559492 () Bool)

(assert (=> d!1763030 m!6559492))

(assert (=> d!1763030 m!6559094))

(declare-fun m!6559494 () Bool)

(assert (=> d!1763030 m!6559494))

(assert (=> b!5576493 m!6559098))

(assert (=> b!5576021 d!1763030))

(declare-fun d!1763032 () Bool)

(declare-fun e!3441169 () Bool)

(assert (=> d!1763032 e!3441169))

(declare-fun res!2366842 () Bool)

(assert (=> d!1763032 (=> (not res!2366842) (not e!3441169))))

(declare-fun lt!2252760 () List!62971)

(declare-fun noDuplicate!1537 (List!62971) Bool)

(assert (=> d!1763032 (= res!2366842 (noDuplicate!1537 lt!2252760))))

(declare-fun choose!42254 ((InoxSet Context!9882)) List!62971)

(assert (=> d!1763032 (= lt!2252760 (choose!42254 z!1189))))

(assert (=> d!1763032 (= (toList!9341 z!1189) lt!2252760)))

(declare-fun b!5576496 () Bool)

(declare-fun content!11325 (List!62971) (InoxSet Context!9882))

(assert (=> b!5576496 (= e!3441169 (= (content!11325 lt!2252760) z!1189))))

(assert (= (and d!1763032 res!2366842) b!5576496))

(declare-fun m!6559496 () Bool)

(assert (=> d!1763032 m!6559496))

(declare-fun m!6559498 () Bool)

(assert (=> d!1763032 m!6559498))

(declare-fun m!6559500 () Bool)

(assert (=> b!5576496 m!6559500))

(assert (=> b!5576010 d!1763032))

(declare-fun d!1763034 () Bool)

(declare-fun c!976218 () Bool)

(assert (=> d!1763034 (= c!976218 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441170 () Bool)

(assert (=> d!1763034 (= (matchZipper!1695 lt!2252702 (t!376241 s!2326)) e!3441170)))

(declare-fun b!5576497 () Bool)

(assert (=> b!5576497 (= e!3441170 (nullableZipper!1556 lt!2252702))))

(declare-fun b!5576498 () Bool)

(assert (=> b!5576498 (= e!3441170 (matchZipper!1695 (derivationStepZipper!1656 lt!2252702 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763034 c!976218) b!5576497))

(assert (= (and d!1763034 (not c!976218)) b!5576498))

(assert (=> d!1763034 m!6559460))

(declare-fun m!6559502 () Bool)

(assert (=> b!5576497 m!6559502))

(assert (=> b!5576498 m!6559464))

(assert (=> b!5576498 m!6559464))

(declare-fun m!6559504 () Bool)

(assert (=> b!5576498 m!6559504))

(assert (=> b!5576498 m!6559468))

(assert (=> b!5576498 m!6559504))

(assert (=> b!5576498 m!6559468))

(declare-fun m!6559506 () Bool)

(assert (=> b!5576498 m!6559506))

(assert (=> b!5576011 d!1763034))

(declare-fun d!1763036 () Bool)

(assert (=> d!1763036 (= (isEmpty!34652 (t!376240 zl!343)) ((_ is Nil!62847) (t!376240 zl!343)))))

(assert (=> b!5576022 d!1763036))

(declare-fun d!1763038 () Bool)

(declare-fun c!976219 () Bool)

(assert (=> d!1763038 (= c!976219 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441171 () Bool)

(assert (=> d!1763038 (= (matchZipper!1695 lt!2252695 (t!376241 s!2326)) e!3441171)))

(declare-fun b!5576499 () Bool)

(assert (=> b!5576499 (= e!3441171 (nullableZipper!1556 lt!2252695))))

(declare-fun b!5576500 () Bool)

(assert (=> b!5576500 (= e!3441171 (matchZipper!1695 (derivationStepZipper!1656 lt!2252695 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763038 c!976219) b!5576499))

(assert (= (and d!1763038 (not c!976219)) b!5576500))

(assert (=> d!1763038 m!6559460))

(declare-fun m!6559508 () Bool)

(assert (=> b!5576499 m!6559508))

(assert (=> b!5576500 m!6559464))

(assert (=> b!5576500 m!6559464))

(declare-fun m!6559510 () Bool)

(assert (=> b!5576500 m!6559510))

(assert (=> b!5576500 m!6559468))

(assert (=> b!5576500 m!6559510))

(assert (=> b!5576500 m!6559468))

(declare-fun m!6559512 () Bool)

(assert (=> b!5576500 m!6559512))

(assert (=> b!5576012 d!1763038))

(declare-fun d!1763040 () Bool)

(declare-fun lt!2252763 () Regex!15557)

(assert (=> d!1763040 (validRegex!7293 lt!2252763)))

(assert (=> d!1763040 (= lt!2252763 (generalisedUnion!1420 (unfocusZipperList!985 zl!343)))))

(assert (=> d!1763040 (= (unfocusZipper!1299 zl!343) lt!2252763)))

(declare-fun bs!1290311 () Bool)

(assert (= bs!1290311 d!1763040))

(declare-fun m!6559514 () Bool)

(assert (=> bs!1290311 m!6559514))

(assert (=> bs!1290311 m!6559156))

(assert (=> bs!1290311 m!6559156))

(assert (=> bs!1290311 m!6559158))

(assert (=> b!5576013 d!1763040))

(declare-fun bs!1290312 () Bool)

(declare-fun d!1763042 () Bool)

(assert (= bs!1290312 (and d!1763042 b!5576018)))

(declare-fun lambda!298946 () Int)

(assert (=> bs!1290312 (= lambda!298946 lambda!298902)))

(assert (=> d!1763042 true))

(assert (=> d!1763042 (= (derivationStepZipper!1656 lt!2252699 (h!69296 s!2326)) (flatMap!1170 lt!2252699 lambda!298946))))

(declare-fun bs!1290313 () Bool)

(assert (= bs!1290313 d!1763042))

(declare-fun m!6559516 () Bool)

(assert (=> bs!1290313 m!6559516))

(assert (=> b!5576015 d!1763042))

(declare-fun call!416782 () (InoxSet Context!9882))

(declare-fun b!5576513 () Bool)

(declare-fun e!3441179 () (InoxSet Context!9882))

(assert (=> b!5576513 (= e!3441179 ((_ map or) call!416782 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 lt!2252704))) (h!69296 s!2326))))))

(declare-fun b!5576514 () Bool)

(declare-fun e!3441180 () (InoxSet Context!9882))

(assert (=> b!5576514 (= e!3441180 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5576515 () Bool)

(assert (=> b!5576515 (= e!3441180 call!416782)))

(declare-fun b!5576516 () Bool)

(declare-fun e!3441178 () Bool)

(assert (=> b!5576516 (= e!3441178 (nullable!5589 (h!69294 (exprs!5441 lt!2252704))))))

(declare-fun d!1763044 () Bool)

(declare-fun c!976226 () Bool)

(assert (=> d!1763044 (= c!976226 e!3441178)))

(declare-fun res!2366845 () Bool)

(assert (=> d!1763044 (=> (not res!2366845) (not e!3441178))))

(assert (=> d!1763044 (= res!2366845 ((_ is Cons!62846) (exprs!5441 lt!2252704)))))

(assert (=> d!1763044 (= (derivationStepZipperUp!825 lt!2252704 (h!69296 s!2326)) e!3441179)))

(declare-fun b!5576517 () Bool)

(assert (=> b!5576517 (= e!3441179 e!3441180)))

(declare-fun c!976227 () Bool)

(assert (=> b!5576517 (= c!976227 ((_ is Cons!62846) (exprs!5441 lt!2252704)))))

(declare-fun bm!416777 () Bool)

(assert (=> bm!416777 (= call!416782 (derivationStepZipperDown!899 (h!69294 (exprs!5441 lt!2252704)) (Context!9883 (t!376239 (exprs!5441 lt!2252704))) (h!69296 s!2326)))))

(assert (= (and d!1763044 res!2366845) b!5576516))

(assert (= (and d!1763044 c!976226) b!5576513))

(assert (= (and d!1763044 (not c!976226)) b!5576517))

(assert (= (and b!5576517 c!976227) b!5576515))

(assert (= (and b!5576517 (not c!976227)) b!5576514))

(assert (= (or b!5576513 b!5576515) bm!416777))

(declare-fun m!6559518 () Bool)

(assert (=> b!5576513 m!6559518))

(declare-fun m!6559520 () Bool)

(assert (=> b!5576516 m!6559520))

(declare-fun m!6559522 () Bool)

(assert (=> bm!416777 m!6559522))

(assert (=> b!5576015 d!1763044))

(declare-fun d!1763046 () Bool)

(declare-fun choose!42255 ((InoxSet Context!9882) Int) (InoxSet Context!9882))

(assert (=> d!1763046 (= (flatMap!1170 lt!2252699 lambda!298902) (choose!42255 lt!2252699 lambda!298902))))

(declare-fun bs!1290314 () Bool)

(assert (= bs!1290314 d!1763046))

(declare-fun m!6559524 () Bool)

(assert (=> bs!1290314 m!6559524))

(assert (=> b!5576015 d!1763046))

(declare-fun d!1763048 () Bool)

(declare-fun dynLambda!24579 (Int Context!9882) (InoxSet Context!9882))

(assert (=> d!1763048 (= (flatMap!1170 lt!2252699 lambda!298902) (dynLambda!24579 lambda!298902 lt!2252704))))

(declare-fun lt!2252766 () Unit!155600)

(declare-fun choose!42256 ((InoxSet Context!9882) Context!9882 Int) Unit!155600)

(assert (=> d!1763048 (= lt!2252766 (choose!42256 lt!2252699 lt!2252704 lambda!298902))))

(assert (=> d!1763048 (= lt!2252699 (store ((as const (Array Context!9882 Bool)) false) lt!2252704 true))))

(assert (=> d!1763048 (= (lemmaFlatMapOnSingletonSet!702 lt!2252699 lt!2252704 lambda!298902) lt!2252766)))

(declare-fun b_lambda!211395 () Bool)

(assert (=> (not b_lambda!211395) (not d!1763048)))

(declare-fun bs!1290315 () Bool)

(assert (= bs!1290315 d!1763048))

(assert (=> bs!1290315 m!6559128))

(declare-fun m!6559526 () Bool)

(assert (=> bs!1290315 m!6559526))

(declare-fun m!6559528 () Bool)

(assert (=> bs!1290315 m!6559528))

(assert (=> bs!1290315 m!6559126))

(assert (=> b!5576015 d!1763048))

(declare-fun d!1763050 () Bool)

(declare-fun nullableFct!1703 (Regex!15557) Bool)

(assert (=> d!1763050 (= (nullable!5589 (regOne!31627 (regOne!31626 r!7292))) (nullableFct!1703 (regOne!31627 (regOne!31626 r!7292))))))

(declare-fun bs!1290316 () Bool)

(assert (= bs!1290316 d!1763050))

(declare-fun m!6559530 () Bool)

(assert (=> bs!1290316 m!6559530))

(assert (=> b!5576015 d!1763050))

(declare-fun b!5576536 () Bool)

(declare-fun res!2366856 () Bool)

(declare-fun e!3441191 () Bool)

(assert (=> b!5576536 (=> (not res!2366856) (not e!3441191))))

(declare-fun lt!2252775 () Option!15566)

(declare-fun get!21637 (Option!15566) tuple2!65308)

(assert (=> b!5576536 (= res!2366856 (matchR!7742 (regOne!31626 r!7292) (_1!35957 (get!21637 lt!2252775))))))

(declare-fun b!5576537 () Bool)

(declare-fun e!3441195 () Bool)

(assert (=> b!5576537 (= e!3441195 (not (isDefined!12269 lt!2252775)))))

(declare-fun b!5576538 () Bool)

(declare-fun ++!13791 (List!62972 List!62972) List!62972)

(assert (=> b!5576538 (= e!3441191 (= (++!13791 (_1!35957 (get!21637 lt!2252775)) (_2!35957 (get!21637 lt!2252775))) s!2326))))

(declare-fun b!5576539 () Bool)

(declare-fun e!3441194 () Option!15566)

(assert (=> b!5576539 (= e!3441194 (Some!15565 (tuple2!65309 Nil!62848 s!2326)))))

(declare-fun d!1763052 () Bool)

(assert (=> d!1763052 e!3441195))

(declare-fun res!2366859 () Bool)

(assert (=> d!1763052 (=> res!2366859 e!3441195)))

(assert (=> d!1763052 (= res!2366859 e!3441191)))

(declare-fun res!2366860 () Bool)

(assert (=> d!1763052 (=> (not res!2366860) (not e!3441191))))

(assert (=> d!1763052 (= res!2366860 (isDefined!12269 lt!2252775))))

(assert (=> d!1763052 (= lt!2252775 e!3441194)))

(declare-fun c!976232 () Bool)

(declare-fun e!3441193 () Bool)

(assert (=> d!1763052 (= c!976232 e!3441193)))

(declare-fun res!2366857 () Bool)

(assert (=> d!1763052 (=> (not res!2366857) (not e!3441193))))

(assert (=> d!1763052 (= res!2366857 (matchR!7742 (regOne!31626 r!7292) Nil!62848))))

(assert (=> d!1763052 (validRegex!7293 (regOne!31626 r!7292))))

(assert (=> d!1763052 (= (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326) lt!2252775)))

(declare-fun b!5576540 () Bool)

(assert (=> b!5576540 (= e!3441193 (matchR!7742 (regTwo!31626 r!7292) s!2326))))

(declare-fun b!5576541 () Bool)

(declare-fun e!3441192 () Option!15566)

(assert (=> b!5576541 (= e!3441194 e!3441192)))

(declare-fun c!976233 () Bool)

(assert (=> b!5576541 (= c!976233 ((_ is Nil!62848) s!2326))))

(declare-fun b!5576542 () Bool)

(declare-fun lt!2252773 () Unit!155600)

(declare-fun lt!2252774 () Unit!155600)

(assert (=> b!5576542 (= lt!2252773 lt!2252774)))

(assert (=> b!5576542 (= (++!13791 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (t!376241 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1960 (List!62972 C!31384 List!62972 List!62972) Unit!155600)

(assert (=> b!5576542 (= lt!2252774 (lemmaMoveElementToOtherListKeepsConcatEq!1960 Nil!62848 (h!69296 s!2326) (t!376241 s!2326) s!2326))))

(assert (=> b!5576542 (= e!3441192 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (t!376241 s!2326) s!2326))))

(declare-fun b!5576543 () Bool)

(declare-fun res!2366858 () Bool)

(assert (=> b!5576543 (=> (not res!2366858) (not e!3441191))))

(assert (=> b!5576543 (= res!2366858 (matchR!7742 (regTwo!31626 r!7292) (_2!35957 (get!21637 lt!2252775))))))

(declare-fun b!5576544 () Bool)

(assert (=> b!5576544 (= e!3441192 None!15565)))

(assert (= (and d!1763052 res!2366857) b!5576540))

(assert (= (and d!1763052 c!976232) b!5576539))

(assert (= (and d!1763052 (not c!976232)) b!5576541))

(assert (= (and b!5576541 c!976233) b!5576544))

(assert (= (and b!5576541 (not c!976233)) b!5576542))

(assert (= (and d!1763052 res!2366860) b!5576536))

(assert (= (and b!5576536 res!2366856) b!5576543))

(assert (= (and b!5576543 res!2366858) b!5576538))

(assert (= (and d!1763052 (not res!2366859)) b!5576537))

(declare-fun m!6559532 () Bool)

(assert (=> b!5576538 m!6559532))

(declare-fun m!6559534 () Bool)

(assert (=> b!5576538 m!6559534))

(declare-fun m!6559536 () Bool)

(assert (=> b!5576537 m!6559536))

(assert (=> b!5576536 m!6559532))

(declare-fun m!6559538 () Bool)

(assert (=> b!5576536 m!6559538))

(declare-fun m!6559540 () Bool)

(assert (=> b!5576540 m!6559540))

(assert (=> b!5576543 m!6559532))

(declare-fun m!6559542 () Bool)

(assert (=> b!5576543 m!6559542))

(declare-fun m!6559544 () Bool)

(assert (=> b!5576542 m!6559544))

(assert (=> b!5576542 m!6559544))

(declare-fun m!6559546 () Bool)

(assert (=> b!5576542 m!6559546))

(declare-fun m!6559548 () Bool)

(assert (=> b!5576542 m!6559548))

(assert (=> b!5576542 m!6559544))

(declare-fun m!6559550 () Bool)

(assert (=> b!5576542 m!6559550))

(assert (=> d!1763052 m!6559536))

(declare-fun m!6559552 () Bool)

(assert (=> d!1763052 m!6559552))

(declare-fun m!6559554 () Bool)

(assert (=> d!1763052 m!6559554))

(assert (=> b!5576005 d!1763052))

(declare-fun d!1763054 () Bool)

(declare-fun choose!42257 (Int) Bool)

(assert (=> d!1763054 (= (Exists!2657 lambda!298901) (choose!42257 lambda!298901))))

(declare-fun bs!1290317 () Bool)

(assert (= bs!1290317 d!1763054))

(declare-fun m!6559556 () Bool)

(assert (=> bs!1290317 m!6559556))

(assert (=> b!5576005 d!1763054))

(declare-fun d!1763056 () Bool)

(assert (=> d!1763056 (= (Exists!2657 lambda!298900) (choose!42257 lambda!298900))))

(declare-fun bs!1290318 () Bool)

(assert (= bs!1290318 d!1763056))

(declare-fun m!6559558 () Bool)

(assert (=> bs!1290318 m!6559558))

(assert (=> b!5576005 d!1763056))

(declare-fun bs!1290319 () Bool)

(declare-fun d!1763058 () Bool)

(assert (= bs!1290319 (and d!1763058 b!5576005)))

(declare-fun lambda!298949 () Int)

(assert (=> bs!1290319 (= lambda!298949 lambda!298900)))

(assert (=> bs!1290319 (not (= lambda!298949 lambda!298901))))

(assert (=> d!1763058 true))

(assert (=> d!1763058 true))

(assert (=> d!1763058 true))

(assert (=> d!1763058 (= (isDefined!12269 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326)) (Exists!2657 lambda!298949))))

(declare-fun lt!2252778 () Unit!155600)

(declare-fun choose!42258 (Regex!15557 Regex!15557 List!62972) Unit!155600)

(assert (=> d!1763058 (= lt!2252778 (choose!42258 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326))))

(assert (=> d!1763058 (validRegex!7293 (regOne!31626 r!7292))))

(assert (=> d!1763058 (= (lemmaFindConcatSeparationEquivalentToExists!1744 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326) lt!2252778)))

(declare-fun bs!1290320 () Bool)

(assert (= bs!1290320 d!1763058))

(assert (=> bs!1290320 m!6559554))

(declare-fun m!6559560 () Bool)

(assert (=> bs!1290320 m!6559560))

(declare-fun m!6559562 () Bool)

(assert (=> bs!1290320 m!6559562))

(assert (=> bs!1290320 m!6559078))

(assert (=> bs!1290320 m!6559078))

(assert (=> bs!1290320 m!6559080))

(assert (=> b!5576005 d!1763058))

(declare-fun bs!1290321 () Bool)

(declare-fun d!1763060 () Bool)

(assert (= bs!1290321 (and d!1763060 b!5576005)))

(declare-fun lambda!298954 () Int)

(assert (=> bs!1290321 (= lambda!298954 lambda!298900)))

(assert (=> bs!1290321 (not (= lambda!298954 lambda!298901))))

(declare-fun bs!1290322 () Bool)

(assert (= bs!1290322 (and d!1763060 d!1763058)))

(assert (=> bs!1290322 (= lambda!298954 lambda!298949)))

(assert (=> d!1763060 true))

(assert (=> d!1763060 true))

(assert (=> d!1763060 true))

(declare-fun lambda!298955 () Int)

(assert (=> bs!1290321 (not (= lambda!298955 lambda!298900))))

(assert (=> bs!1290321 (= lambda!298955 lambda!298901)))

(assert (=> bs!1290322 (not (= lambda!298955 lambda!298949))))

(declare-fun bs!1290323 () Bool)

(assert (= bs!1290323 d!1763060))

(assert (=> bs!1290323 (not (= lambda!298955 lambda!298954))))

(assert (=> d!1763060 true))

(assert (=> d!1763060 true))

(assert (=> d!1763060 true))

(assert (=> d!1763060 (= (Exists!2657 lambda!298954) (Exists!2657 lambda!298955))))

(declare-fun lt!2252781 () Unit!155600)

(declare-fun choose!42259 (Regex!15557 Regex!15557 List!62972) Unit!155600)

(assert (=> d!1763060 (= lt!2252781 (choose!42259 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326))))

(assert (=> d!1763060 (validRegex!7293 (regOne!31626 r!7292))))

(assert (=> d!1763060 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1286 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326) lt!2252781)))

(declare-fun m!6559564 () Bool)

(assert (=> bs!1290323 m!6559564))

(declare-fun m!6559566 () Bool)

(assert (=> bs!1290323 m!6559566))

(declare-fun m!6559568 () Bool)

(assert (=> bs!1290323 m!6559568))

(assert (=> bs!1290323 m!6559554))

(assert (=> b!5576005 d!1763060))

(declare-fun d!1763062 () Bool)

(declare-fun isEmpty!34656 (Option!15566) Bool)

(assert (=> d!1763062 (= (isDefined!12269 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326)) (not (isEmpty!34656 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326))))))

(declare-fun bs!1290324 () Bool)

(assert (= bs!1290324 d!1763062))

(assert (=> bs!1290324 m!6559078))

(declare-fun m!6559570 () Bool)

(assert (=> bs!1290324 m!6559570))

(assert (=> b!5576005 d!1763062))

(declare-fun d!1763064 () Bool)

(assert (=> d!1763064 (= (isEmpty!34651 (t!376239 (exprs!5441 (h!69295 zl!343)))) ((_ is Nil!62846) (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(assert (=> b!5575996 d!1763064))

(declare-fun b!5576579 () Bool)

(declare-fun e!3441219 () (InoxSet Context!9882))

(declare-fun call!416800 () (InoxSet Context!9882))

(declare-fun call!416799 () (InoxSet Context!9882))

(assert (=> b!5576579 (= e!3441219 ((_ map or) call!416800 call!416799))))

(declare-fun b!5576580 () Bool)

(declare-fun e!3441214 () (InoxSet Context!9882))

(assert (=> b!5576580 (= e!3441214 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5576581 () Bool)

(declare-fun call!416798 () (InoxSet Context!9882))

(assert (=> b!5576581 (= e!3441214 call!416798)))

(declare-fun b!5576582 () Bool)

(declare-fun c!976247 () Bool)

(declare-fun e!3441215 () Bool)

(assert (=> b!5576582 (= c!976247 e!3441215)))

(declare-fun res!2366875 () Bool)

(assert (=> b!5576582 (=> (not res!2366875) (not e!3441215))))

(assert (=> b!5576582 (= res!2366875 ((_ is Concat!24402) (regTwo!31627 (regOne!31626 r!7292))))))

(declare-fun e!3441216 () (InoxSet Context!9882))

(assert (=> b!5576582 (= e!3441216 e!3441219)))

(declare-fun b!5576583 () Bool)

(declare-fun e!3441218 () (InoxSet Context!9882))

(assert (=> b!5576583 (= e!3441218 e!3441216)))

(declare-fun c!976248 () Bool)

(assert (=> b!5576583 (= c!976248 ((_ is Union!15557) (regTwo!31627 (regOne!31626 r!7292))))))

(declare-fun b!5576584 () Bool)

(assert (=> b!5576584 (= e!3441218 (store ((as const (Array Context!9882 Bool)) false) lt!2252691 true))))

(declare-fun b!5576585 () Bool)

(assert (=> b!5576585 (= e!3441215 (nullable!5589 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))))))

(declare-fun b!5576586 () Bool)

(declare-fun c!976244 () Bool)

(assert (=> b!5576586 (= c!976244 ((_ is Star!15557) (regTwo!31627 (regOne!31626 r!7292))))))

(declare-fun e!3441217 () (InoxSet Context!9882))

(assert (=> b!5576586 (= e!3441217 e!3441214)))

(declare-fun b!5576587 () Bool)

(declare-fun call!416795 () (InoxSet Context!9882))

(assert (=> b!5576587 (= e!3441216 ((_ map or) call!416795 call!416800))))

(declare-fun bm!416791 () Bool)

(assert (=> bm!416791 (= call!416799 call!416795)))

(declare-fun b!5576588 () Bool)

(assert (=> b!5576588 (= e!3441217 call!416798)))

(declare-fun call!416797 () List!62970)

(declare-fun c!976245 () Bool)

(declare-fun bm!416792 () Bool)

(declare-fun $colon$colon!1624 (List!62970 Regex!15557) List!62970)

(assert (=> bm!416792 (= call!416797 ($colon$colon!1624 (exprs!5441 lt!2252691) (ite (or c!976247 c!976245) (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (regTwo!31627 (regOne!31626 r!7292)))))))

(declare-fun call!416796 () List!62970)

(declare-fun bm!416793 () Bool)

(assert (=> bm!416793 (= call!416795 (derivationStepZipperDown!899 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292)))))) (ite (or c!976248 c!976247) lt!2252691 (Context!9883 call!416796)) (h!69296 s!2326)))))

(declare-fun b!5576589 () Bool)

(assert (=> b!5576589 (= e!3441219 e!3441217)))

(assert (=> b!5576589 (= c!976245 ((_ is Concat!24402) (regTwo!31627 (regOne!31626 r!7292))))))

(declare-fun bm!416790 () Bool)

(assert (=> bm!416790 (= call!416798 call!416799)))

(declare-fun d!1763066 () Bool)

(declare-fun c!976246 () Bool)

(assert (=> d!1763066 (= c!976246 (and ((_ is ElementMatch!15557) (regTwo!31627 (regOne!31626 r!7292))) (= (c!976080 (regTwo!31627 (regOne!31626 r!7292))) (h!69296 s!2326))))))

(assert (=> d!1763066 (= (derivationStepZipperDown!899 (regTwo!31627 (regOne!31626 r!7292)) lt!2252691 (h!69296 s!2326)) e!3441218)))

(declare-fun bm!416794 () Bool)

(assert (=> bm!416794 (= call!416800 (derivationStepZipperDown!899 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))) (ite c!976248 lt!2252691 (Context!9883 call!416797)) (h!69296 s!2326)))))

(declare-fun bm!416795 () Bool)

(assert (=> bm!416795 (= call!416796 call!416797)))

(assert (= (and d!1763066 c!976246) b!5576584))

(assert (= (and d!1763066 (not c!976246)) b!5576583))

(assert (= (and b!5576583 c!976248) b!5576587))

(assert (= (and b!5576583 (not c!976248)) b!5576582))

(assert (= (and b!5576582 res!2366875) b!5576585))

(assert (= (and b!5576582 c!976247) b!5576579))

(assert (= (and b!5576582 (not c!976247)) b!5576589))

(assert (= (and b!5576589 c!976245) b!5576588))

(assert (= (and b!5576589 (not c!976245)) b!5576586))

(assert (= (and b!5576586 c!976244) b!5576581))

(assert (= (and b!5576586 (not c!976244)) b!5576580))

(assert (= (or b!5576588 b!5576581) bm!416795))

(assert (= (or b!5576588 b!5576581) bm!416790))

(assert (= (or b!5576579 bm!416795) bm!416792))

(assert (= (or b!5576579 bm!416790) bm!416791))

(assert (= (or b!5576587 b!5576579) bm!416794))

(assert (= (or b!5576587 bm!416791) bm!416793))

(declare-fun m!6559572 () Bool)

(assert (=> b!5576584 m!6559572))

(declare-fun m!6559574 () Bool)

(assert (=> bm!416792 m!6559574))

(declare-fun m!6559576 () Bool)

(assert (=> bm!416794 m!6559576))

(declare-fun m!6559578 () Bool)

(assert (=> b!5576585 m!6559578))

(declare-fun m!6559580 () Bool)

(assert (=> bm!416793 m!6559580))

(assert (=> b!5576016 d!1763066))

(declare-fun b!5576590 () Bool)

(declare-fun e!3441225 () (InoxSet Context!9882))

(declare-fun call!416806 () (InoxSet Context!9882))

(declare-fun call!416805 () (InoxSet Context!9882))

(assert (=> b!5576590 (= e!3441225 ((_ map or) call!416806 call!416805))))

(declare-fun b!5576591 () Bool)

(declare-fun e!3441220 () (InoxSet Context!9882))

(assert (=> b!5576591 (= e!3441220 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5576592 () Bool)

(declare-fun call!416804 () (InoxSet Context!9882))

(assert (=> b!5576592 (= e!3441220 call!416804)))

(declare-fun b!5576593 () Bool)

(declare-fun c!976252 () Bool)

(declare-fun e!3441221 () Bool)

(assert (=> b!5576593 (= c!976252 e!3441221)))

(declare-fun res!2366876 () Bool)

(assert (=> b!5576593 (=> (not res!2366876) (not e!3441221))))

(assert (=> b!5576593 (= res!2366876 ((_ is Concat!24402) (regOne!31627 (regOne!31626 r!7292))))))

(declare-fun e!3441222 () (InoxSet Context!9882))

(assert (=> b!5576593 (= e!3441222 e!3441225)))

(declare-fun b!5576594 () Bool)

(declare-fun e!3441224 () (InoxSet Context!9882))

(assert (=> b!5576594 (= e!3441224 e!3441222)))

(declare-fun c!976253 () Bool)

(assert (=> b!5576594 (= c!976253 ((_ is Union!15557) (regOne!31627 (regOne!31626 r!7292))))))

(declare-fun b!5576595 () Bool)

(assert (=> b!5576595 (= e!3441224 (store ((as const (Array Context!9882 Bool)) false) lt!2252691 true))))

(declare-fun b!5576596 () Bool)

(assert (=> b!5576596 (= e!3441221 (nullable!5589 (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))))))

(declare-fun b!5576597 () Bool)

(declare-fun c!976249 () Bool)

(assert (=> b!5576597 (= c!976249 ((_ is Star!15557) (regOne!31627 (regOne!31626 r!7292))))))

(declare-fun e!3441223 () (InoxSet Context!9882))

(assert (=> b!5576597 (= e!3441223 e!3441220)))

(declare-fun b!5576598 () Bool)

(declare-fun call!416801 () (InoxSet Context!9882))

(assert (=> b!5576598 (= e!3441222 ((_ map or) call!416801 call!416806))))

(declare-fun bm!416797 () Bool)

(assert (=> bm!416797 (= call!416805 call!416801)))

(declare-fun b!5576599 () Bool)

(assert (=> b!5576599 (= e!3441223 call!416804)))

(declare-fun c!976250 () Bool)

(declare-fun bm!416798 () Bool)

(declare-fun call!416803 () List!62970)

(assert (=> bm!416798 (= call!416803 ($colon$colon!1624 (exprs!5441 lt!2252691) (ite (or c!976252 c!976250) (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (regOne!31627 (regOne!31626 r!7292)))))))

(declare-fun bm!416799 () Bool)

(declare-fun call!416802 () List!62970)

(assert (=> bm!416799 (= call!416801 (derivationStepZipperDown!899 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292)))))) (ite (or c!976253 c!976252) lt!2252691 (Context!9883 call!416802)) (h!69296 s!2326)))))

(declare-fun b!5576600 () Bool)

(assert (=> b!5576600 (= e!3441225 e!3441223)))

(assert (=> b!5576600 (= c!976250 ((_ is Concat!24402) (regOne!31627 (regOne!31626 r!7292))))))

(declare-fun bm!416796 () Bool)

(assert (=> bm!416796 (= call!416804 call!416805)))

(declare-fun d!1763068 () Bool)

(declare-fun c!976251 () Bool)

(assert (=> d!1763068 (= c!976251 (and ((_ is ElementMatch!15557) (regOne!31627 (regOne!31626 r!7292))) (= (c!976080 (regOne!31627 (regOne!31626 r!7292))) (h!69296 s!2326))))))

(assert (=> d!1763068 (= (derivationStepZipperDown!899 (regOne!31627 (regOne!31626 r!7292)) lt!2252691 (h!69296 s!2326)) e!3441224)))

(declare-fun bm!416800 () Bool)

(assert (=> bm!416800 (= call!416806 (derivationStepZipperDown!899 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))) (ite c!976253 lt!2252691 (Context!9883 call!416803)) (h!69296 s!2326)))))

(declare-fun bm!416801 () Bool)

(assert (=> bm!416801 (= call!416802 call!416803)))

(assert (= (and d!1763068 c!976251) b!5576595))

(assert (= (and d!1763068 (not c!976251)) b!5576594))

(assert (= (and b!5576594 c!976253) b!5576598))

(assert (= (and b!5576594 (not c!976253)) b!5576593))

(assert (= (and b!5576593 res!2366876) b!5576596))

(assert (= (and b!5576593 c!976252) b!5576590))

(assert (= (and b!5576593 (not c!976252)) b!5576600))

(assert (= (and b!5576600 c!976250) b!5576599))

(assert (= (and b!5576600 (not c!976250)) b!5576597))

(assert (= (and b!5576597 c!976249) b!5576592))

(assert (= (and b!5576597 (not c!976249)) b!5576591))

(assert (= (or b!5576599 b!5576592) bm!416801))

(assert (= (or b!5576599 b!5576592) bm!416796))

(assert (= (or b!5576590 bm!416801) bm!416798))

(assert (= (or b!5576590 bm!416796) bm!416797))

(assert (= (or b!5576598 b!5576590) bm!416800))

(assert (= (or b!5576598 bm!416797) bm!416799))

(assert (=> b!5576595 m!6559572))

(declare-fun m!6559582 () Bool)

(assert (=> bm!416798 m!6559582))

(declare-fun m!6559584 () Bool)

(assert (=> bm!416800 m!6559584))

(declare-fun m!6559586 () Bool)

(assert (=> b!5576596 m!6559586))

(declare-fun m!6559588 () Bool)

(assert (=> bm!416799 m!6559588))

(assert (=> b!5576016 d!1763068))

(declare-fun bs!1290325 () Bool)

(declare-fun d!1763070 () Bool)

(assert (= bs!1290325 (and d!1763070 d!1763012)))

(declare-fun lambda!298958 () Int)

(assert (=> bs!1290325 (= lambda!298958 lambda!298936)))

(declare-fun bs!1290326 () Bool)

(assert (= bs!1290326 (and d!1763070 d!1763014)))

(assert (=> bs!1290326 (= lambda!298958 lambda!298939)))

(declare-fun bs!1290327 () Bool)

(assert (= bs!1290327 (and d!1763070 d!1763016)))

(assert (=> bs!1290327 (= lambda!298958 lambda!298942)))

(declare-fun bs!1290328 () Bool)

(assert (= bs!1290328 (and d!1763070 d!1763022)))

(assert (=> bs!1290328 (= lambda!298958 lambda!298943)))

(declare-fun b!5576621 () Bool)

(declare-fun e!3441242 () Bool)

(declare-fun e!3441238 () Bool)

(assert (=> b!5576621 (= e!3441242 e!3441238)))

(declare-fun c!976264 () Bool)

(assert (=> b!5576621 (= c!976264 (isEmpty!34651 (tail!10987 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5576622 () Bool)

(declare-fun e!3441243 () Regex!15557)

(assert (=> b!5576622 (= e!3441243 EmptyExpr!15557)))

(declare-fun b!5576623 () Bool)

(declare-fun e!3441241 () Regex!15557)

(assert (=> b!5576623 (= e!3441241 e!3441243)))

(declare-fun c!976263 () Bool)

(assert (=> b!5576623 (= c!976263 ((_ is Cons!62846) (exprs!5441 (h!69295 zl!343))))))

(declare-fun b!5576624 () Bool)

(declare-fun e!3441240 () Bool)

(assert (=> b!5576624 (= e!3441240 e!3441242)))

(declare-fun c!976262 () Bool)

(assert (=> b!5576624 (= c!976262 (isEmpty!34651 (exprs!5441 (h!69295 zl!343))))))

(declare-fun b!5576625 () Bool)

(assert (=> b!5576625 (= e!3441243 (Concat!24402 (h!69294 (exprs!5441 (h!69295 zl!343))) (generalisedConcat!1172 (t!376239 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun b!5576626 () Bool)

(declare-fun lt!2252784 () Regex!15557)

(assert (=> b!5576626 (= e!3441238 (= lt!2252784 (head!11892 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5576627 () Bool)

(declare-fun e!3441239 () Bool)

(assert (=> b!5576627 (= e!3441239 (isEmpty!34651 (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5576628 () Bool)

(declare-fun isConcat!639 (Regex!15557) Bool)

(assert (=> b!5576628 (= e!3441238 (isConcat!639 lt!2252784))))

(declare-fun b!5576629 () Bool)

(assert (=> b!5576629 (= e!3441241 (h!69294 (exprs!5441 (h!69295 zl!343))))))

(assert (=> d!1763070 e!3441240))

(declare-fun res!2366881 () Bool)

(assert (=> d!1763070 (=> (not res!2366881) (not e!3441240))))

(assert (=> d!1763070 (= res!2366881 (validRegex!7293 lt!2252784))))

(assert (=> d!1763070 (= lt!2252784 e!3441241)))

(declare-fun c!976265 () Bool)

(assert (=> d!1763070 (= c!976265 e!3441239)))

(declare-fun res!2366882 () Bool)

(assert (=> d!1763070 (=> (not res!2366882) (not e!3441239))))

(assert (=> d!1763070 (= res!2366882 ((_ is Cons!62846) (exprs!5441 (h!69295 zl!343))))))

(assert (=> d!1763070 (forall!14728 (exprs!5441 (h!69295 zl!343)) lambda!298958)))

(assert (=> d!1763070 (= (generalisedConcat!1172 (exprs!5441 (h!69295 zl!343))) lt!2252784)))

(declare-fun b!5576630 () Bool)

(declare-fun isEmptyExpr!1116 (Regex!15557) Bool)

(assert (=> b!5576630 (= e!3441242 (isEmptyExpr!1116 lt!2252784))))

(assert (= (and d!1763070 res!2366882) b!5576627))

(assert (= (and d!1763070 c!976265) b!5576629))

(assert (= (and d!1763070 (not c!976265)) b!5576623))

(assert (= (and b!5576623 c!976263) b!5576625))

(assert (= (and b!5576623 (not c!976263)) b!5576622))

(assert (= (and d!1763070 res!2366881) b!5576624))

(assert (= (and b!5576624 c!976262) b!5576630))

(assert (= (and b!5576624 (not c!976262)) b!5576621))

(assert (= (and b!5576621 c!976264) b!5576626))

(assert (= (and b!5576621 (not c!976264)) b!5576628))

(declare-fun m!6559590 () Bool)

(assert (=> b!5576621 m!6559590))

(assert (=> b!5576621 m!6559590))

(declare-fun m!6559592 () Bool)

(assert (=> b!5576621 m!6559592))

(declare-fun m!6559594 () Bool)

(assert (=> d!1763070 m!6559594))

(declare-fun m!6559596 () Bool)

(assert (=> d!1763070 m!6559596))

(declare-fun m!6559598 () Bool)

(assert (=> b!5576628 m!6559598))

(assert (=> b!5576627 m!6559088))

(declare-fun m!6559600 () Bool)

(assert (=> b!5576626 m!6559600))

(declare-fun m!6559602 () Bool)

(assert (=> b!5576630 m!6559602))

(declare-fun m!6559604 () Bool)

(assert (=> b!5576625 m!6559604))

(declare-fun m!6559606 () Bool)

(assert (=> b!5576624 m!6559606))

(assert (=> b!5576017 d!1763070))

(declare-fun d!1763072 () Bool)

(declare-fun e!3441244 () Bool)

(assert (=> d!1763072 (= (matchZipper!1695 ((_ map or) lt!2252684 lt!2252702) (t!376241 s!2326)) e!3441244)))

(declare-fun res!2366883 () Bool)

(assert (=> d!1763072 (=> res!2366883 e!3441244)))

(assert (=> d!1763072 (= res!2366883 (matchZipper!1695 lt!2252684 (t!376241 s!2326)))))

(declare-fun lt!2252785 () Unit!155600)

(assert (=> d!1763072 (= lt!2252785 (choose!42253 lt!2252684 lt!2252702 (t!376241 s!2326)))))

(assert (=> d!1763072 (= (lemmaZipperConcatMatchesSameAsBothZippers!582 lt!2252684 lt!2252702 (t!376241 s!2326)) lt!2252785)))

(declare-fun b!5576631 () Bool)

(assert (=> b!5576631 (= e!3441244 (matchZipper!1695 lt!2252702 (t!376241 s!2326)))))

(assert (= (and d!1763072 (not res!2366883)) b!5576631))

(assert (=> d!1763072 m!6559144))

(assert (=> d!1763072 m!6559090))

(declare-fun m!6559608 () Bool)

(assert (=> d!1763072 m!6559608))

(assert (=> b!5576631 m!6559146))

(assert (=> b!5576007 d!1763072))

(assert (=> b!5576007 d!1763024))

(declare-fun d!1763074 () Bool)

(declare-fun c!976266 () Bool)

(assert (=> d!1763074 (= c!976266 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441245 () Bool)

(assert (=> d!1763074 (= (matchZipper!1695 ((_ map or) lt!2252684 lt!2252702) (t!376241 s!2326)) e!3441245)))

(declare-fun b!5576632 () Bool)

(assert (=> b!5576632 (= e!3441245 (nullableZipper!1556 ((_ map or) lt!2252684 lt!2252702)))))

(declare-fun b!5576633 () Bool)

(assert (=> b!5576633 (= e!3441245 (matchZipper!1695 (derivationStepZipper!1656 ((_ map or) lt!2252684 lt!2252702) (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763074 c!976266) b!5576632))

(assert (= (and d!1763074 (not c!976266)) b!5576633))

(assert (=> d!1763074 m!6559460))

(declare-fun m!6559610 () Bool)

(assert (=> b!5576632 m!6559610))

(assert (=> b!5576633 m!6559464))

(assert (=> b!5576633 m!6559464))

(declare-fun m!6559612 () Bool)

(assert (=> b!5576633 m!6559612))

(assert (=> b!5576633 m!6559468))

(assert (=> b!5576633 m!6559612))

(assert (=> b!5576633 m!6559468))

(declare-fun m!6559614 () Bool)

(assert (=> b!5576633 m!6559614))

(assert (=> b!5576007 d!1763074))

(assert (=> b!5575997 d!1763038))

(declare-fun bs!1290329 () Bool)

(declare-fun b!5576666 () Bool)

(assert (= bs!1290329 (and b!5576666 b!5576005)))

(declare-fun lambda!298963 () Int)

(assert (=> bs!1290329 (not (= lambda!298963 lambda!298900))))

(declare-fun bs!1290330 () Bool)

(assert (= bs!1290330 (and b!5576666 d!1763060)))

(assert (=> bs!1290330 (not (= lambda!298963 lambda!298954))))

(declare-fun bs!1290331 () Bool)

(assert (= bs!1290331 (and b!5576666 d!1763058)))

(assert (=> bs!1290331 (not (= lambda!298963 lambda!298949))))

(assert (=> bs!1290329 (not (= lambda!298963 lambda!298901))))

(assert (=> bs!1290330 (not (= lambda!298963 lambda!298955))))

(assert (=> b!5576666 true))

(assert (=> b!5576666 true))

(declare-fun bs!1290332 () Bool)

(declare-fun b!5576668 () Bool)

(assert (= bs!1290332 (and b!5576668 b!5576005)))

(declare-fun lambda!298964 () Int)

(assert (=> bs!1290332 (not (= lambda!298964 lambda!298900))))

(declare-fun bs!1290333 () Bool)

(assert (= bs!1290333 (and b!5576668 b!5576666)))

(assert (=> bs!1290333 (not (= lambda!298964 lambda!298963))))

(declare-fun bs!1290334 () Bool)

(assert (= bs!1290334 (and b!5576668 d!1763060)))

(assert (=> bs!1290334 (not (= lambda!298964 lambda!298954))))

(declare-fun bs!1290335 () Bool)

(assert (= bs!1290335 (and b!5576668 d!1763058)))

(assert (=> bs!1290335 (not (= lambda!298964 lambda!298949))))

(assert (=> bs!1290332 (= lambda!298964 lambda!298901)))

(assert (=> bs!1290334 (= lambda!298964 lambda!298955)))

(assert (=> b!5576668 true))

(assert (=> b!5576668 true))

(declare-fun e!3441265 () Bool)

(declare-fun call!416812 () Bool)

(assert (=> b!5576666 (= e!3441265 call!416812)))

(declare-fun bm!416806 () Bool)

(declare-fun call!416811 () Bool)

(assert (=> bm!416806 (= call!416811 (isEmpty!34655 s!2326))))

(declare-fun b!5576667 () Bool)

(declare-fun c!976277 () Bool)

(assert (=> b!5576667 (= c!976277 ((_ is Union!15557) r!7292))))

(declare-fun e!3441266 () Bool)

(declare-fun e!3441270 () Bool)

(assert (=> b!5576667 (= e!3441266 e!3441270)))

(declare-fun d!1763076 () Bool)

(declare-fun c!976275 () Bool)

(assert (=> d!1763076 (= c!976275 ((_ is EmptyExpr!15557) r!7292))))

(declare-fun e!3441267 () Bool)

(assert (=> d!1763076 (= (matchRSpec!2660 r!7292 s!2326) e!3441267)))

(declare-fun e!3441269 () Bool)

(assert (=> b!5576668 (= e!3441269 call!416812)))

(declare-fun c!976278 () Bool)

(declare-fun bm!416807 () Bool)

(assert (=> bm!416807 (= call!416812 (Exists!2657 (ite c!976278 lambda!298963 lambda!298964)))))

(declare-fun b!5576669 () Bool)

(assert (=> b!5576669 (= e!3441270 e!3441269)))

(assert (=> b!5576669 (= c!976278 ((_ is Star!15557) r!7292))))

(declare-fun b!5576670 () Bool)

(declare-fun e!3441264 () Bool)

(assert (=> b!5576670 (= e!3441270 e!3441264)))

(declare-fun res!2366901 () Bool)

(assert (=> b!5576670 (= res!2366901 (matchRSpec!2660 (regOne!31627 r!7292) s!2326))))

(assert (=> b!5576670 (=> res!2366901 e!3441264)))

(declare-fun b!5576671 () Bool)

(declare-fun c!976276 () Bool)

(assert (=> b!5576671 (= c!976276 ((_ is ElementMatch!15557) r!7292))))

(declare-fun e!3441268 () Bool)

(assert (=> b!5576671 (= e!3441268 e!3441266)))

(declare-fun b!5576672 () Bool)

(assert (=> b!5576672 (= e!3441267 e!3441268)))

(declare-fun res!2366900 () Bool)

(assert (=> b!5576672 (= res!2366900 (not ((_ is EmptyLang!15557) r!7292)))))

(assert (=> b!5576672 (=> (not res!2366900) (not e!3441268))))

(declare-fun b!5576673 () Bool)

(assert (=> b!5576673 (= e!3441266 (= s!2326 (Cons!62848 (c!976080 r!7292) Nil!62848)))))

(declare-fun b!5576674 () Bool)

(assert (=> b!5576674 (= e!3441267 call!416811)))

(declare-fun b!5576675 () Bool)

(assert (=> b!5576675 (= e!3441264 (matchRSpec!2660 (regTwo!31627 r!7292) s!2326))))

(declare-fun b!5576676 () Bool)

(declare-fun res!2366902 () Bool)

(assert (=> b!5576676 (=> res!2366902 e!3441265)))

(assert (=> b!5576676 (= res!2366902 call!416811)))

(assert (=> b!5576676 (= e!3441269 e!3441265)))

(assert (= (and d!1763076 c!976275) b!5576674))

(assert (= (and d!1763076 (not c!976275)) b!5576672))

(assert (= (and b!5576672 res!2366900) b!5576671))

(assert (= (and b!5576671 c!976276) b!5576673))

(assert (= (and b!5576671 (not c!976276)) b!5576667))

(assert (= (and b!5576667 c!976277) b!5576670))

(assert (= (and b!5576667 (not c!976277)) b!5576669))

(assert (= (and b!5576670 (not res!2366901)) b!5576675))

(assert (= (and b!5576669 c!976278) b!5576676))

(assert (= (and b!5576669 (not c!976278)) b!5576668))

(assert (= (and b!5576676 (not res!2366902)) b!5576666))

(assert (= (or b!5576666 b!5576668) bm!416807))

(assert (= (or b!5576674 b!5576676) bm!416806))

(assert (=> bm!416806 m!6559448))

(declare-fun m!6559616 () Bool)

(assert (=> bm!416807 m!6559616))

(declare-fun m!6559618 () Bool)

(assert (=> b!5576670 m!6559618))

(declare-fun m!6559620 () Bool)

(assert (=> b!5576675 m!6559620))

(assert (=> b!5575998 d!1763076))

(declare-fun b!5576705 () Bool)

(declare-fun e!3441287 () Bool)

(declare-fun derivativeStep!4410 (Regex!15557 C!31384) Regex!15557)

(assert (=> b!5576705 (= e!3441287 (matchR!7742 (derivativeStep!4410 r!7292 (head!11893 s!2326)) (tail!10988 s!2326)))))

(declare-fun b!5576706 () Bool)

(declare-fun e!3441290 () Bool)

(assert (=> b!5576706 (= e!3441290 (not (= (head!11893 s!2326) (c!976080 r!7292))))))

(declare-fun b!5576707 () Bool)

(declare-fun res!2366923 () Bool)

(declare-fun e!3441288 () Bool)

(assert (=> b!5576707 (=> res!2366923 e!3441288)))

(assert (=> b!5576707 (= res!2366923 (not ((_ is ElementMatch!15557) r!7292)))))

(declare-fun e!3441285 () Bool)

(assert (=> b!5576707 (= e!3441285 e!3441288)))

(declare-fun b!5576708 () Bool)

(assert (=> b!5576708 (= e!3441287 (nullable!5589 r!7292))))

(declare-fun b!5576709 () Bool)

(declare-fun lt!2252788 () Bool)

(assert (=> b!5576709 (= e!3441285 (not lt!2252788))))

(declare-fun b!5576710 () Bool)

(declare-fun e!3441286 () Bool)

(declare-fun call!416815 () Bool)

(assert (=> b!5576710 (= e!3441286 (= lt!2252788 call!416815))))

(declare-fun b!5576711 () Bool)

(declare-fun res!2366921 () Bool)

(declare-fun e!3441291 () Bool)

(assert (=> b!5576711 (=> (not res!2366921) (not e!3441291))))

(assert (=> b!5576711 (= res!2366921 (not call!416815))))

(declare-fun b!5576712 () Bool)

(declare-fun res!2366920 () Bool)

(assert (=> b!5576712 (=> (not res!2366920) (not e!3441291))))

(assert (=> b!5576712 (= res!2366920 (isEmpty!34655 (tail!10988 s!2326)))))

(declare-fun b!5576713 () Bool)

(declare-fun e!3441289 () Bool)

(assert (=> b!5576713 (= e!3441289 e!3441290)))

(declare-fun res!2366926 () Bool)

(assert (=> b!5576713 (=> res!2366926 e!3441290)))

(assert (=> b!5576713 (= res!2366926 call!416815)))

(declare-fun b!5576714 () Bool)

(assert (=> b!5576714 (= e!3441286 e!3441285)))

(declare-fun c!976285 () Bool)

(assert (=> b!5576714 (= c!976285 ((_ is EmptyLang!15557) r!7292))))

(declare-fun d!1763078 () Bool)

(assert (=> d!1763078 e!3441286))

(declare-fun c!976286 () Bool)

(assert (=> d!1763078 (= c!976286 ((_ is EmptyExpr!15557) r!7292))))

(assert (=> d!1763078 (= lt!2252788 e!3441287)))

(declare-fun c!976287 () Bool)

(assert (=> d!1763078 (= c!976287 (isEmpty!34655 s!2326))))

(assert (=> d!1763078 (validRegex!7293 r!7292)))

(assert (=> d!1763078 (= (matchR!7742 r!7292 s!2326) lt!2252788)))

(declare-fun b!5576715 () Bool)

(assert (=> b!5576715 (= e!3441291 (= (head!11893 s!2326) (c!976080 r!7292)))))

(declare-fun bm!416810 () Bool)

(assert (=> bm!416810 (= call!416815 (isEmpty!34655 s!2326))))

(declare-fun b!5576716 () Bool)

(declare-fun res!2366925 () Bool)

(assert (=> b!5576716 (=> res!2366925 e!3441288)))

(assert (=> b!5576716 (= res!2366925 e!3441291)))

(declare-fun res!2366924 () Bool)

(assert (=> b!5576716 (=> (not res!2366924) (not e!3441291))))

(assert (=> b!5576716 (= res!2366924 lt!2252788)))

(declare-fun b!5576717 () Bool)

(declare-fun res!2366922 () Bool)

(assert (=> b!5576717 (=> res!2366922 e!3441290)))

(assert (=> b!5576717 (= res!2366922 (not (isEmpty!34655 (tail!10988 s!2326))))))

(declare-fun b!5576718 () Bool)

(assert (=> b!5576718 (= e!3441288 e!3441289)))

(declare-fun res!2366919 () Bool)

(assert (=> b!5576718 (=> (not res!2366919) (not e!3441289))))

(assert (=> b!5576718 (= res!2366919 (not lt!2252788))))

(assert (= (and d!1763078 c!976287) b!5576708))

(assert (= (and d!1763078 (not c!976287)) b!5576705))

(assert (= (and d!1763078 c!976286) b!5576710))

(assert (= (and d!1763078 (not c!976286)) b!5576714))

(assert (= (and b!5576714 c!976285) b!5576709))

(assert (= (and b!5576714 (not c!976285)) b!5576707))

(assert (= (and b!5576707 (not res!2366923)) b!5576716))

(assert (= (and b!5576716 res!2366924) b!5576711))

(assert (= (and b!5576711 res!2366921) b!5576712))

(assert (= (and b!5576712 res!2366920) b!5576715))

(assert (= (and b!5576716 (not res!2366925)) b!5576718))

(assert (= (and b!5576718 res!2366919) b!5576713))

(assert (= (and b!5576713 (not res!2366926)) b!5576717))

(assert (= (and b!5576717 (not res!2366922)) b!5576706))

(assert (= (or b!5576710 b!5576711 b!5576713) bm!416810))

(assert (=> b!5576706 m!6559452))

(assert (=> bm!416810 m!6559448))

(assert (=> d!1763078 m!6559448))

(assert (=> d!1763078 m!6559132))

(assert (=> b!5576717 m!6559456))

(assert (=> b!5576717 m!6559456))

(declare-fun m!6559622 () Bool)

(assert (=> b!5576717 m!6559622))

(assert (=> b!5576715 m!6559452))

(assert (=> b!5576712 m!6559456))

(assert (=> b!5576712 m!6559456))

(assert (=> b!5576712 m!6559622))

(declare-fun m!6559624 () Bool)

(assert (=> b!5576708 m!6559624))

(assert (=> b!5576705 m!6559452))

(assert (=> b!5576705 m!6559452))

(declare-fun m!6559626 () Bool)

(assert (=> b!5576705 m!6559626))

(assert (=> b!5576705 m!6559456))

(assert (=> b!5576705 m!6559626))

(assert (=> b!5576705 m!6559456))

(declare-fun m!6559628 () Bool)

(assert (=> b!5576705 m!6559628))

(assert (=> b!5575998 d!1763078))

(declare-fun d!1763080 () Bool)

(assert (=> d!1763080 (= (matchR!7742 r!7292 s!2326) (matchRSpec!2660 r!7292 s!2326))))

(declare-fun lt!2252791 () Unit!155600)

(declare-fun choose!42260 (Regex!15557 List!62972) Unit!155600)

(assert (=> d!1763080 (= lt!2252791 (choose!42260 r!7292 s!2326))))

(assert (=> d!1763080 (validRegex!7293 r!7292)))

(assert (=> d!1763080 (= (mainMatchTheorem!2660 r!7292 s!2326) lt!2252791)))

(declare-fun bs!1290336 () Bool)

(assert (= bs!1290336 d!1763080))

(assert (=> bs!1290336 m!6559102))

(assert (=> bs!1290336 m!6559100))

(declare-fun m!6559630 () Bool)

(assert (=> bs!1290336 m!6559630))

(assert (=> bs!1290336 m!6559132))

(assert (=> b!5575998 d!1763080))

(declare-fun d!1763082 () Bool)

(assert (=> d!1763082 (= (nullable!5589 (h!69294 (exprs!5441 (h!69295 zl!343)))) (nullableFct!1703 (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun bs!1290337 () Bool)

(assert (= bs!1290337 d!1763082))

(declare-fun m!6559632 () Bool)

(assert (=> bs!1290337 m!6559632))

(assert (=> b!5576018 d!1763082))

(declare-fun b!5576719 () Bool)

(declare-fun call!416816 () (InoxSet Context!9882))

(declare-fun e!3441293 () (InoxSet Context!9882))

(assert (=> b!5576719 (= e!3441293 ((_ map or) call!416816 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (h!69296 s!2326))))))

(declare-fun b!5576720 () Bool)

(declare-fun e!3441294 () (InoxSet Context!9882))

(assert (=> b!5576720 (= e!3441294 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5576721 () Bool)

(assert (=> b!5576721 (= e!3441294 call!416816)))

(declare-fun b!5576722 () Bool)

(declare-fun e!3441292 () Bool)

(assert (=> b!5576722 (= e!3441292 (nullable!5589 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun d!1763084 () Bool)

(declare-fun c!976288 () Bool)

(assert (=> d!1763084 (= c!976288 e!3441292)))

(declare-fun res!2366927 () Bool)

(assert (=> d!1763084 (=> (not res!2366927) (not e!3441292))))

(assert (=> d!1763084 (= res!2366927 ((_ is Cons!62846) (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))

(assert (=> d!1763084 (= (derivationStepZipperUp!825 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))) (h!69296 s!2326)) e!3441293)))

(declare-fun b!5576723 () Bool)

(assert (=> b!5576723 (= e!3441293 e!3441294)))

(declare-fun c!976289 () Bool)

(assert (=> b!5576723 (= c!976289 ((_ is Cons!62846) (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))

(declare-fun bm!416811 () Bool)

(assert (=> bm!416811 (= call!416816 (derivationStepZipperDown!899 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (h!69296 s!2326)))))

(assert (= (and d!1763084 res!2366927) b!5576722))

(assert (= (and d!1763084 c!976288) b!5576719))

(assert (= (and d!1763084 (not c!976288)) b!5576723))

(assert (= (and b!5576723 c!976289) b!5576721))

(assert (= (and b!5576723 (not c!976289)) b!5576720))

(assert (= (or b!5576719 b!5576721) bm!416811))

(declare-fun m!6559634 () Bool)

(assert (=> b!5576719 m!6559634))

(declare-fun m!6559636 () Bool)

(assert (=> b!5576722 m!6559636))

(declare-fun m!6559638 () Bool)

(assert (=> bm!416811 m!6559638))

(assert (=> b!5576018 d!1763084))

(declare-fun b!5576724 () Bool)

(declare-fun e!3441300 () (InoxSet Context!9882))

(declare-fun call!416822 () (InoxSet Context!9882))

(declare-fun call!416821 () (InoxSet Context!9882))

(assert (=> b!5576724 (= e!3441300 ((_ map or) call!416822 call!416821))))

(declare-fun b!5576725 () Bool)

(declare-fun e!3441295 () (InoxSet Context!9882))

(assert (=> b!5576725 (= e!3441295 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5576726 () Bool)

(declare-fun call!416820 () (InoxSet Context!9882))

(assert (=> b!5576726 (= e!3441295 call!416820)))

(declare-fun b!5576727 () Bool)

(declare-fun c!976293 () Bool)

(declare-fun e!3441296 () Bool)

(assert (=> b!5576727 (= c!976293 e!3441296)))

(declare-fun res!2366928 () Bool)

(assert (=> b!5576727 (=> (not res!2366928) (not e!3441296))))

(assert (=> b!5576727 (= res!2366928 ((_ is Concat!24402) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun e!3441297 () (InoxSet Context!9882))

(assert (=> b!5576727 (= e!3441297 e!3441300)))

(declare-fun b!5576728 () Bool)

(declare-fun e!3441299 () (InoxSet Context!9882))

(assert (=> b!5576728 (= e!3441299 e!3441297)))

(declare-fun c!976294 () Bool)

(assert (=> b!5576728 (= c!976294 ((_ is Union!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5576729 () Bool)

(assert (=> b!5576729 (= e!3441299 (store ((as const (Array Context!9882 Bool)) false) lt!2252691 true))))

(declare-fun b!5576730 () Bool)

(assert (=> b!5576730 (= e!3441296 (nullable!5589 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun b!5576731 () Bool)

(declare-fun c!976290 () Bool)

(assert (=> b!5576731 (= c!976290 ((_ is Star!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun e!3441298 () (InoxSet Context!9882))

(assert (=> b!5576731 (= e!3441298 e!3441295)))

(declare-fun b!5576732 () Bool)

(declare-fun call!416817 () (InoxSet Context!9882))

(assert (=> b!5576732 (= e!3441297 ((_ map or) call!416817 call!416822))))

(declare-fun bm!416813 () Bool)

(assert (=> bm!416813 (= call!416821 call!416817)))

(declare-fun b!5576733 () Bool)

(assert (=> b!5576733 (= e!3441298 call!416820)))

(declare-fun c!976291 () Bool)

(declare-fun bm!416814 () Bool)

(declare-fun call!416819 () List!62970)

(assert (=> bm!416814 (= call!416819 ($colon$colon!1624 (exprs!5441 lt!2252691) (ite (or c!976293 c!976291) (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (h!69294 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun bm!416815 () Bool)

(declare-fun call!416818 () List!62970)

(assert (=> bm!416815 (= call!416817 (derivationStepZipperDown!899 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343))))))) (ite (or c!976294 c!976293) lt!2252691 (Context!9883 call!416818)) (h!69296 s!2326)))))

(declare-fun b!5576734 () Bool)

(assert (=> b!5576734 (= e!3441300 e!3441298)))

(assert (=> b!5576734 (= c!976291 ((_ is Concat!24402) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun bm!416812 () Bool)

(assert (=> bm!416812 (= call!416820 call!416821)))

(declare-fun d!1763086 () Bool)

(declare-fun c!976292 () Bool)

(assert (=> d!1763086 (= c!976292 (and ((_ is ElementMatch!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))) (= (c!976080 (h!69294 (exprs!5441 (h!69295 zl!343)))) (h!69296 s!2326))))))

(assert (=> d!1763086 (= (derivationStepZipperDown!899 (h!69294 (exprs!5441 (h!69295 zl!343))) lt!2252691 (h!69296 s!2326)) e!3441299)))

(declare-fun bm!416816 () Bool)

(assert (=> bm!416816 (= call!416822 (derivationStepZipperDown!899 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))) (ite c!976294 lt!2252691 (Context!9883 call!416819)) (h!69296 s!2326)))))

(declare-fun bm!416817 () Bool)

(assert (=> bm!416817 (= call!416818 call!416819)))

(assert (= (and d!1763086 c!976292) b!5576729))

(assert (= (and d!1763086 (not c!976292)) b!5576728))

(assert (= (and b!5576728 c!976294) b!5576732))

(assert (= (and b!5576728 (not c!976294)) b!5576727))

(assert (= (and b!5576727 res!2366928) b!5576730))

(assert (= (and b!5576727 c!976293) b!5576724))

(assert (= (and b!5576727 (not c!976293)) b!5576734))

(assert (= (and b!5576734 c!976291) b!5576733))

(assert (= (and b!5576734 (not c!976291)) b!5576731))

(assert (= (and b!5576731 c!976290) b!5576726))

(assert (= (and b!5576731 (not c!976290)) b!5576725))

(assert (= (or b!5576733 b!5576726) bm!416817))

(assert (= (or b!5576733 b!5576726) bm!416812))

(assert (= (or b!5576724 bm!416817) bm!416814))

(assert (= (or b!5576724 bm!416812) bm!416813))

(assert (= (or b!5576732 b!5576724) bm!416816))

(assert (= (or b!5576732 bm!416813) bm!416815))

(assert (=> b!5576729 m!6559572))

(declare-fun m!6559640 () Bool)

(assert (=> bm!416814 m!6559640))

(declare-fun m!6559642 () Bool)

(assert (=> bm!416816 m!6559642))

(declare-fun m!6559644 () Bool)

(assert (=> b!5576730 m!6559644))

(declare-fun m!6559646 () Bool)

(assert (=> bm!416815 m!6559646))

(assert (=> b!5576018 d!1763086))

(declare-fun d!1763088 () Bool)

(assert (=> d!1763088 (= (flatMap!1170 z!1189 lambda!298902) (dynLambda!24579 lambda!298902 (h!69295 zl!343)))))

(declare-fun lt!2252792 () Unit!155600)

(assert (=> d!1763088 (= lt!2252792 (choose!42256 z!1189 (h!69295 zl!343) lambda!298902))))

(assert (=> d!1763088 (= z!1189 (store ((as const (Array Context!9882 Bool)) false) (h!69295 zl!343) true))))

(assert (=> d!1763088 (= (lemmaFlatMapOnSingletonSet!702 z!1189 (h!69295 zl!343) lambda!298902) lt!2252792)))

(declare-fun b_lambda!211397 () Bool)

(assert (=> (not b_lambda!211397) (not d!1763088)))

(declare-fun bs!1290338 () Bool)

(assert (= bs!1290338 d!1763088))

(assert (=> bs!1290338 m!6559118))

(declare-fun m!6559648 () Bool)

(assert (=> bs!1290338 m!6559648))

(declare-fun m!6559650 () Bool)

(assert (=> bs!1290338 m!6559650))

(declare-fun m!6559652 () Bool)

(assert (=> bs!1290338 m!6559652))

(assert (=> b!5576018 d!1763088))

(declare-fun call!416823 () (InoxSet Context!9882))

(declare-fun e!3441302 () (InoxSet Context!9882))

(declare-fun b!5576735 () Bool)

(assert (=> b!5576735 (= e!3441302 ((_ map or) call!416823 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))) (h!69296 s!2326))))))

(declare-fun b!5576736 () Bool)

(declare-fun e!3441303 () (InoxSet Context!9882))

(assert (=> b!5576736 (= e!3441303 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5576737 () Bool)

(assert (=> b!5576737 (= e!3441303 call!416823)))

(declare-fun b!5576738 () Bool)

(declare-fun e!3441301 () Bool)

(assert (=> b!5576738 (= e!3441301 (nullable!5589 (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun d!1763090 () Bool)

(declare-fun c!976295 () Bool)

(assert (=> d!1763090 (= c!976295 e!3441301)))

(declare-fun res!2366929 () Bool)

(assert (=> d!1763090 (=> (not res!2366929) (not e!3441301))))

(assert (=> d!1763090 (= res!2366929 ((_ is Cons!62846) (exprs!5441 (h!69295 zl!343))))))

(assert (=> d!1763090 (= (derivationStepZipperUp!825 (h!69295 zl!343) (h!69296 s!2326)) e!3441302)))

(declare-fun b!5576739 () Bool)

(assert (=> b!5576739 (= e!3441302 e!3441303)))

(declare-fun c!976296 () Bool)

(assert (=> b!5576739 (= c!976296 ((_ is Cons!62846) (exprs!5441 (h!69295 zl!343))))))

(declare-fun bm!416818 () Bool)

(assert (=> bm!416818 (= call!416823 (derivationStepZipperDown!899 (h!69294 (exprs!5441 (h!69295 zl!343))) (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))) (h!69296 s!2326)))))

(assert (= (and d!1763090 res!2366929) b!5576738))

(assert (= (and d!1763090 c!976295) b!5576735))

(assert (= (and d!1763090 (not c!976295)) b!5576739))

(assert (= (and b!5576739 c!976296) b!5576737))

(assert (= (and b!5576739 (not c!976296)) b!5576736))

(assert (= (or b!5576735 b!5576737) bm!416818))

(declare-fun m!6559654 () Bool)

(assert (=> b!5576735 m!6559654))

(assert (=> b!5576738 m!6559116))

(declare-fun m!6559656 () Bool)

(assert (=> bm!416818 m!6559656))

(assert (=> b!5576018 d!1763090))

(declare-fun e!3441305 () (InoxSet Context!9882))

(declare-fun call!416824 () (InoxSet Context!9882))

(declare-fun b!5576740 () Bool)

(assert (=> b!5576740 (= e!3441305 ((_ map or) call!416824 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 lt!2252691))) (h!69296 s!2326))))))

(declare-fun b!5576741 () Bool)

(declare-fun e!3441306 () (InoxSet Context!9882))

(assert (=> b!5576741 (= e!3441306 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5576742 () Bool)

(assert (=> b!5576742 (= e!3441306 call!416824)))

(declare-fun b!5576743 () Bool)

(declare-fun e!3441304 () Bool)

(assert (=> b!5576743 (= e!3441304 (nullable!5589 (h!69294 (exprs!5441 lt!2252691))))))

(declare-fun d!1763092 () Bool)

(declare-fun c!976297 () Bool)

(assert (=> d!1763092 (= c!976297 e!3441304)))

(declare-fun res!2366930 () Bool)

(assert (=> d!1763092 (=> (not res!2366930) (not e!3441304))))

(assert (=> d!1763092 (= res!2366930 ((_ is Cons!62846) (exprs!5441 lt!2252691)))))

(assert (=> d!1763092 (= (derivationStepZipperUp!825 lt!2252691 (h!69296 s!2326)) e!3441305)))

(declare-fun b!5576744 () Bool)

(assert (=> b!5576744 (= e!3441305 e!3441306)))

(declare-fun c!976298 () Bool)

(assert (=> b!5576744 (= c!976298 ((_ is Cons!62846) (exprs!5441 lt!2252691)))))

(declare-fun bm!416819 () Bool)

(assert (=> bm!416819 (= call!416824 (derivationStepZipperDown!899 (h!69294 (exprs!5441 lt!2252691)) (Context!9883 (t!376239 (exprs!5441 lt!2252691))) (h!69296 s!2326)))))

(assert (= (and d!1763092 res!2366930) b!5576743))

(assert (= (and d!1763092 c!976297) b!5576740))

(assert (= (and d!1763092 (not c!976297)) b!5576744))

(assert (= (and b!5576744 c!976298) b!5576742))

(assert (= (and b!5576744 (not c!976298)) b!5576741))

(assert (= (or b!5576740 b!5576742) bm!416819))

(declare-fun m!6559658 () Bool)

(assert (=> b!5576740 m!6559658))

(declare-fun m!6559660 () Bool)

(assert (=> b!5576743 m!6559660))

(declare-fun m!6559662 () Bool)

(assert (=> bm!416819 m!6559662))

(assert (=> b!5576018 d!1763092))

(declare-fun d!1763094 () Bool)

(assert (=> d!1763094 (= (flatMap!1170 z!1189 lambda!298902) (choose!42255 z!1189 lambda!298902))))

(declare-fun bs!1290339 () Bool)

(assert (= bs!1290339 d!1763094))

(declare-fun m!6559664 () Bool)

(assert (=> bs!1290339 m!6559664))

(assert (=> b!5576018 d!1763094))

(declare-fun b!5576749 () Bool)

(declare-fun e!3441309 () Bool)

(declare-fun tp!1543222 () Bool)

(declare-fun tp!1543223 () Bool)

(assert (=> b!5576749 (= e!3441309 (and tp!1543222 tp!1543223))))

(assert (=> b!5575994 (= tp!1543159 e!3441309)))

(assert (= (and b!5575994 ((_ is Cons!62846) (exprs!5441 setElem!37091))) b!5576749))

(declare-fun condSetEmpty!37097 () Bool)

(assert (=> setNonEmpty!37091 (= condSetEmpty!37097 (= setRest!37091 ((as const (Array Context!9882 Bool)) false)))))

(declare-fun setRes!37097 () Bool)

(assert (=> setNonEmpty!37091 (= tp!1543155 setRes!37097)))

(declare-fun setIsEmpty!37097 () Bool)

(assert (=> setIsEmpty!37097 setRes!37097))

(declare-fun setNonEmpty!37097 () Bool)

(declare-fun e!3441312 () Bool)

(declare-fun tp!1543228 () Bool)

(declare-fun setElem!37097 () Context!9882)

(assert (=> setNonEmpty!37097 (= setRes!37097 (and tp!1543228 (inv!82139 setElem!37097) e!3441312))))

(declare-fun setRest!37097 () (InoxSet Context!9882))

(assert (=> setNonEmpty!37097 (= setRest!37091 ((_ map or) (store ((as const (Array Context!9882 Bool)) false) setElem!37097 true) setRest!37097))))

(declare-fun b!5576754 () Bool)

(declare-fun tp!1543229 () Bool)

(assert (=> b!5576754 (= e!3441312 tp!1543229)))

(assert (= (and setNonEmpty!37091 condSetEmpty!37097) setIsEmpty!37097))

(assert (= (and setNonEmpty!37091 (not condSetEmpty!37097)) setNonEmpty!37097))

(assert (= setNonEmpty!37097 b!5576754))

(declare-fun m!6559666 () Bool)

(assert (=> setNonEmpty!37097 m!6559666))

(declare-fun e!3441315 () Bool)

(assert (=> b!5575995 (= tp!1543151 e!3441315)))

(declare-fun b!5576766 () Bool)

(declare-fun tp!1543243 () Bool)

(declare-fun tp!1543242 () Bool)

(assert (=> b!5576766 (= e!3441315 (and tp!1543243 tp!1543242))))

(declare-fun b!5576768 () Bool)

(declare-fun tp!1543244 () Bool)

(declare-fun tp!1543241 () Bool)

(assert (=> b!5576768 (= e!3441315 (and tp!1543244 tp!1543241))))

(declare-fun b!5576767 () Bool)

(declare-fun tp!1543240 () Bool)

(assert (=> b!5576767 (= e!3441315 tp!1543240)))

(declare-fun b!5576765 () Bool)

(assert (=> b!5576765 (= e!3441315 tp_is_empty!40367)))

(assert (= (and b!5575995 ((_ is ElementMatch!15557) (reg!15886 r!7292))) b!5576765))

(assert (= (and b!5575995 ((_ is Concat!24402) (reg!15886 r!7292))) b!5576766))

(assert (= (and b!5575995 ((_ is Star!15557) (reg!15886 r!7292))) b!5576767))

(assert (= (and b!5575995 ((_ is Union!15557) (reg!15886 r!7292))) b!5576768))

(declare-fun b!5576769 () Bool)

(declare-fun e!3441316 () Bool)

(declare-fun tp!1543245 () Bool)

(declare-fun tp!1543246 () Bool)

(assert (=> b!5576769 (= e!3441316 (and tp!1543245 tp!1543246))))

(assert (=> b!5576009 (= tp!1543154 e!3441316)))

(assert (= (and b!5576009 ((_ is Cons!62846) (exprs!5441 (h!69295 zl!343)))) b!5576769))

(declare-fun e!3441317 () Bool)

(assert (=> b!5576014 (= tp!1543150 e!3441317)))

(declare-fun b!5576771 () Bool)

(declare-fun tp!1543250 () Bool)

(declare-fun tp!1543249 () Bool)

(assert (=> b!5576771 (= e!3441317 (and tp!1543250 tp!1543249))))

(declare-fun b!5576773 () Bool)

(declare-fun tp!1543251 () Bool)

(declare-fun tp!1543248 () Bool)

(assert (=> b!5576773 (= e!3441317 (and tp!1543251 tp!1543248))))

(declare-fun b!5576772 () Bool)

(declare-fun tp!1543247 () Bool)

(assert (=> b!5576772 (= e!3441317 tp!1543247)))

(declare-fun b!5576770 () Bool)

(assert (=> b!5576770 (= e!3441317 tp_is_empty!40367)))

(assert (= (and b!5576014 ((_ is ElementMatch!15557) (regOne!31626 r!7292))) b!5576770))

(assert (= (and b!5576014 ((_ is Concat!24402) (regOne!31626 r!7292))) b!5576771))

(assert (= (and b!5576014 ((_ is Star!15557) (regOne!31626 r!7292))) b!5576772))

(assert (= (and b!5576014 ((_ is Union!15557) (regOne!31626 r!7292))) b!5576773))

(declare-fun e!3441318 () Bool)

(assert (=> b!5576014 (= tp!1543157 e!3441318)))

(declare-fun b!5576775 () Bool)

(declare-fun tp!1543255 () Bool)

(declare-fun tp!1543254 () Bool)

(assert (=> b!5576775 (= e!3441318 (and tp!1543255 tp!1543254))))

(declare-fun b!5576777 () Bool)

(declare-fun tp!1543256 () Bool)

(declare-fun tp!1543253 () Bool)

(assert (=> b!5576777 (= e!3441318 (and tp!1543256 tp!1543253))))

(declare-fun b!5576776 () Bool)

(declare-fun tp!1543252 () Bool)

(assert (=> b!5576776 (= e!3441318 tp!1543252)))

(declare-fun b!5576774 () Bool)

(assert (=> b!5576774 (= e!3441318 tp_is_empty!40367)))

(assert (= (and b!5576014 ((_ is ElementMatch!15557) (regTwo!31626 r!7292))) b!5576774))

(assert (= (and b!5576014 ((_ is Concat!24402) (regTwo!31626 r!7292))) b!5576775))

(assert (= (and b!5576014 ((_ is Star!15557) (regTwo!31626 r!7292))) b!5576776))

(assert (= (and b!5576014 ((_ is Union!15557) (regTwo!31626 r!7292))) b!5576777))

(declare-fun b!5576785 () Bool)

(declare-fun e!3441324 () Bool)

(declare-fun tp!1543261 () Bool)

(assert (=> b!5576785 (= e!3441324 tp!1543261)))

(declare-fun b!5576784 () Bool)

(declare-fun e!3441323 () Bool)

(declare-fun tp!1543262 () Bool)

(assert (=> b!5576784 (= e!3441323 (and (inv!82139 (h!69295 (t!376240 zl!343))) e!3441324 tp!1543262))))

(assert (=> b!5576020 (= tp!1543153 e!3441323)))

(assert (= b!5576784 b!5576785))

(assert (= (and b!5576020 ((_ is Cons!62847) (t!376240 zl!343))) b!5576784))

(declare-fun m!6559668 () Bool)

(assert (=> b!5576784 m!6559668))

(declare-fun b!5576790 () Bool)

(declare-fun e!3441327 () Bool)

(declare-fun tp!1543265 () Bool)

(assert (=> b!5576790 (= e!3441327 (and tp_is_empty!40367 tp!1543265))))

(assert (=> b!5576006 (= tp!1543158 e!3441327)))

(assert (= (and b!5576006 ((_ is Cons!62848) (t!376241 s!2326))) b!5576790))

(declare-fun e!3441328 () Bool)

(assert (=> b!5576002 (= tp!1543152 e!3441328)))

(declare-fun b!5576792 () Bool)

(declare-fun tp!1543269 () Bool)

(declare-fun tp!1543268 () Bool)

(assert (=> b!5576792 (= e!3441328 (and tp!1543269 tp!1543268))))

(declare-fun b!5576794 () Bool)

(declare-fun tp!1543270 () Bool)

(declare-fun tp!1543267 () Bool)

(assert (=> b!5576794 (= e!3441328 (and tp!1543270 tp!1543267))))

(declare-fun b!5576793 () Bool)

(declare-fun tp!1543266 () Bool)

(assert (=> b!5576793 (= e!3441328 tp!1543266)))

(declare-fun b!5576791 () Bool)

(assert (=> b!5576791 (= e!3441328 tp_is_empty!40367)))

(assert (= (and b!5576002 ((_ is ElementMatch!15557) (regOne!31627 r!7292))) b!5576791))

(assert (= (and b!5576002 ((_ is Concat!24402) (regOne!31627 r!7292))) b!5576792))

(assert (= (and b!5576002 ((_ is Star!15557) (regOne!31627 r!7292))) b!5576793))

(assert (= (and b!5576002 ((_ is Union!15557) (regOne!31627 r!7292))) b!5576794))

(declare-fun e!3441329 () Bool)

(assert (=> b!5576002 (= tp!1543156 e!3441329)))

(declare-fun b!5576796 () Bool)

(declare-fun tp!1543274 () Bool)

(declare-fun tp!1543273 () Bool)

(assert (=> b!5576796 (= e!3441329 (and tp!1543274 tp!1543273))))

(declare-fun b!5576798 () Bool)

(declare-fun tp!1543275 () Bool)

(declare-fun tp!1543272 () Bool)

(assert (=> b!5576798 (= e!3441329 (and tp!1543275 tp!1543272))))

(declare-fun b!5576797 () Bool)

(declare-fun tp!1543271 () Bool)

(assert (=> b!5576797 (= e!3441329 tp!1543271)))

(declare-fun b!5576795 () Bool)

(assert (=> b!5576795 (= e!3441329 tp_is_empty!40367)))

(assert (= (and b!5576002 ((_ is ElementMatch!15557) (regTwo!31627 r!7292))) b!5576795))

(assert (= (and b!5576002 ((_ is Concat!24402) (regTwo!31627 r!7292))) b!5576796))

(assert (= (and b!5576002 ((_ is Star!15557) (regTwo!31627 r!7292))) b!5576797))

(assert (= (and b!5576002 ((_ is Union!15557) (regTwo!31627 r!7292))) b!5576798))

(declare-fun b_lambda!211399 () Bool)

(assert (= b_lambda!211395 (or b!5576018 b_lambda!211399)))

(declare-fun bs!1290340 () Bool)

(declare-fun d!1763096 () Bool)

(assert (= bs!1290340 (and d!1763096 b!5576018)))

(assert (=> bs!1290340 (= (dynLambda!24579 lambda!298902 lt!2252704) (derivationStepZipperUp!825 lt!2252704 (h!69296 s!2326)))))

(assert (=> bs!1290340 m!6559122))

(assert (=> d!1763048 d!1763096))

(declare-fun b_lambda!211401 () Bool)

(assert (= b_lambda!211397 (or b!5576018 b_lambda!211401)))

(declare-fun bs!1290341 () Bool)

(declare-fun d!1763098 () Bool)

(assert (= bs!1290341 (and d!1763098 b!5576018)))

(assert (=> bs!1290341 (= (dynLambda!24579 lambda!298902 (h!69295 zl!343)) (derivationStepZipperUp!825 (h!69295 zl!343) (h!69296 s!2326)))))

(assert (=> bs!1290341 m!6559108))

(assert (=> d!1763088 d!1763098))

(check-sat (not b!5576536) (not b!5576482) (not bm!416777) tp_is_empty!40367 (not b!5576740) (not d!1763018) (not d!1763094) (not b!5576596) (not bm!416819) (not bm!416816) (not bm!416774) (not d!1763046) (not d!1763056) (not d!1763034) (not d!1763078) (not b!5576792) (not bm!416793) (not b!5576712) (not bm!416794) (not b!5576585) (not d!1763062) (not d!1763020) (not b!5576516) (not b!5576632) (not b!5576790) (not b!5576468) (not bs!1290341) (not b!5576708) (not b!5576784) (not b!5576543) (not b!5576628) (not d!1763080) (not b!5576621) (not d!1763024) (not bm!416800) (not b!5576771) (not bm!416811) (not d!1763050) (not d!1763040) (not b!5576488) (not b!5576705) (not d!1763030) (not b!5576719) (not bm!416807) (not b!5576738) (not b!5576775) (not b!5576754) (not b!5576633) (not b_lambda!211401) (not b!5576493) (not bm!416815) (not b!5576484) (not b!5576722) (not b!5576498) (not b!5576798) (not b!5576706) (not bs!1290340) (not b!5576769) (not b!5576625) (not d!1763052) (not b!5576487) (not b!5576485) (not d!1763012) (not b!5576475) (not d!1763042) (not b!5576464) (not d!1763022) (not d!1763028) (not d!1763054) (not b!5576776) (not bm!416799) (not b!5576670) (not b!5576486) (not d!1763074) (not b!5576717) (not b!5576481) (not b!5576627) (not d!1763014) (not d!1763088) (not d!1763048) (not b!5576496) (not b!5576542) (not b!5576489) (not b!5576513) (not setNonEmpty!37097) (not b!5576772) (not b!5576797) (not b!5576500) (not b!5576537) (not bm!416818) (not b!5576768) (not d!1763016) (not b!5576631) (not b!5576785) (not b!5576743) (not b!5576466) (not b!5576499) (not b!5576470) (not d!1763082) (not b!5576469) (not b!5576730) (not bm!416806) (not d!1763072) (not b!5576497) (not b!5576715) (not b!5576777) (not b!5576540) (not d!1763070) (not d!1763032) (not b_lambda!211399) (not b!5576793) (not bm!416772) (not b!5576796) (not b!5576624) (not b!5576462) (not bm!416810) (not d!1763058) (not b!5576483) (not b!5576767) (not bm!416798) (not b!5576749) (not b!5576630) (not b!5576794) (not d!1763060) (not d!1763026) (not b!5576766) (not b!5576626) (not bm!416792) (not b!5576490) (not b!5576435) (not b!5576538) (not d!1763038) (not b!5576461) (not b!5576735) (not bm!416814) (not b!5576773) (not b!5576675))
(check-sat)
(get-model)

(declare-fun d!1763214 () Bool)

(assert (=> d!1763214 (= (isEmpty!34655 s!2326) ((_ is Nil!62848) s!2326))))

(assert (=> bm!416806 d!1763214))

(declare-fun d!1763218 () Bool)

(assert (=> d!1763218 (= (isEmpty!34651 (tail!10987 (exprs!5441 (h!69295 zl!343)))) ((_ is Nil!62846) (tail!10987 (exprs!5441 (h!69295 zl!343)))))))

(assert (=> b!5576621 d!1763218))

(declare-fun d!1763220 () Bool)

(assert (=> d!1763220 (= (tail!10987 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))

(assert (=> b!5576621 d!1763220))

(assert (=> d!1763080 d!1763078))

(assert (=> d!1763080 d!1763076))

(declare-fun d!1763222 () Bool)

(assert (=> d!1763222 (= (matchR!7742 r!7292 s!2326) (matchRSpec!2660 r!7292 s!2326))))

(assert (=> d!1763222 true))

(declare-fun _$88!3844 () Unit!155600)

(assert (=> d!1763222 (= (choose!42260 r!7292 s!2326) _$88!3844)))

(declare-fun bs!1290426 () Bool)

(assert (= bs!1290426 d!1763222))

(assert (=> bs!1290426 m!6559102))

(assert (=> bs!1290426 m!6559100))

(assert (=> d!1763080 d!1763222))

(assert (=> d!1763080 d!1763010))

(declare-fun d!1763236 () Bool)

(assert (=> d!1763236 (= (nullable!5589 r!7292) (nullableFct!1703 r!7292))))

(declare-fun bs!1290427 () Bool)

(assert (= bs!1290427 d!1763236))

(declare-fun m!6559892 () Bool)

(assert (=> bs!1290427 m!6559892))

(assert (=> b!5576708 d!1763236))

(declare-fun d!1763238 () Bool)

(assert (=> d!1763238 (= (isEmpty!34655 (t!376241 s!2326)) ((_ is Nil!62848) (t!376241 s!2326)))))

(assert (=> d!1763074 d!1763238))

(declare-fun b!5576999 () Bool)

(declare-fun e!3441472 () Bool)

(declare-fun call!416876 () Bool)

(assert (=> b!5576999 (= e!3441472 call!416876)))

(declare-fun c!976359 () Bool)

(declare-fun bm!416871 () Bool)

(declare-fun call!416877 () Bool)

(assert (=> bm!416871 (= call!416877 (validRegex!7293 (ite c!976359 (regOne!31627 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))) (regOne!31626 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))))))))

(declare-fun b!5577000 () Bool)

(declare-fun res!2367015 () Bool)

(declare-fun e!3441470 () Bool)

(assert (=> b!5577000 (=> res!2367015 e!3441470)))

(assert (=> b!5577000 (= res!2367015 (not ((_ is Concat!24402) (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292)))))))

(declare-fun e!3441469 () Bool)

(assert (=> b!5577000 (= e!3441469 e!3441470)))

(declare-fun b!5577001 () Bool)

(declare-fun e!3441474 () Bool)

(assert (=> b!5577001 (= e!3441474 e!3441469)))

(assert (=> b!5577001 (= c!976359 ((_ is Union!15557) (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))))))

(declare-fun bm!416872 () Bool)

(declare-fun call!416878 () Bool)

(assert (=> bm!416872 (= call!416876 call!416878)))

(declare-fun b!5577002 () Bool)

(declare-fun e!3441473 () Bool)

(assert (=> b!5577002 (= e!3441474 e!3441473)))

(declare-fun res!2367012 () Bool)

(assert (=> b!5577002 (= res!2367012 (not (nullable!5589 (reg!15886 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))))))))

(assert (=> b!5577002 (=> (not res!2367012) (not e!3441473))))

(declare-fun c!976360 () Bool)

(declare-fun bm!416873 () Bool)

(assert (=> bm!416873 (= call!416878 (validRegex!7293 (ite c!976360 (reg!15886 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))) (ite c!976359 (regTwo!31627 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))) (regTwo!31626 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292)))))))))

(declare-fun b!5577003 () Bool)

(assert (=> b!5577003 (= e!3441473 call!416878)))

(declare-fun b!5577005 () Bool)

(declare-fun res!2367016 () Bool)

(declare-fun e!3441468 () Bool)

(assert (=> b!5577005 (=> (not res!2367016) (not e!3441468))))

(assert (=> b!5577005 (= res!2367016 call!416877)))

(assert (=> b!5577005 (= e!3441469 e!3441468)))

(declare-fun b!5577006 () Bool)

(assert (=> b!5577006 (= e!3441468 call!416876)))

(declare-fun b!5577007 () Bool)

(assert (=> b!5577007 (= e!3441470 e!3441472)))

(declare-fun res!2367014 () Bool)

(assert (=> b!5577007 (=> (not res!2367014) (not e!3441472))))

(assert (=> b!5577007 (= res!2367014 call!416877)))

(declare-fun d!1763240 () Bool)

(declare-fun res!2367013 () Bool)

(declare-fun e!3441471 () Bool)

(assert (=> d!1763240 (=> res!2367013 e!3441471)))

(assert (=> d!1763240 (= res!2367013 ((_ is ElementMatch!15557) (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))))))

(assert (=> d!1763240 (= (validRegex!7293 (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))) e!3441471)))

(declare-fun b!5577004 () Bool)

(assert (=> b!5577004 (= e!3441471 e!3441474)))

(assert (=> b!5577004 (= c!976360 ((_ is Star!15557) (ite c!976194 (regOne!31627 r!7292) (regOne!31626 r!7292))))))

(assert (= (and d!1763240 (not res!2367013)) b!5577004))

(assert (= (and b!5577004 c!976360) b!5577002))

(assert (= (and b!5577004 (not c!976360)) b!5577001))

(assert (= (and b!5577002 res!2367012) b!5577003))

(assert (= (and b!5577001 c!976359) b!5577005))

(assert (= (and b!5577001 (not c!976359)) b!5577000))

(assert (= (and b!5577005 res!2367016) b!5577006))

(assert (= (and b!5577000 (not res!2367015)) b!5577007))

(assert (= (and b!5577007 res!2367014) b!5576999))

(assert (= (or b!5577006 b!5576999) bm!416872))

(assert (= (or b!5577005 b!5577007) bm!416871))

(assert (= (or b!5577003 bm!416872) bm!416873))

(declare-fun m!6559908 () Bool)

(assert (=> bm!416871 m!6559908))

(declare-fun m!6559910 () Bool)

(assert (=> b!5577002 m!6559910))

(declare-fun m!6559912 () Bool)

(assert (=> bm!416873 m!6559912))

(assert (=> bm!416772 d!1763240))

(declare-fun bs!1290428 () Bool)

(declare-fun d!1763252 () Bool)

(assert (= bs!1290428 (and d!1763252 d!1763070)))

(declare-fun lambda!298987 () Int)

(assert (=> bs!1290428 (= lambda!298987 lambda!298958)))

(declare-fun bs!1290430 () Bool)

(assert (= bs!1290430 (and d!1763252 d!1763014)))

(assert (=> bs!1290430 (= lambda!298987 lambda!298939)))

(declare-fun bs!1290432 () Bool)

(assert (= bs!1290432 (and d!1763252 d!1763022)))

(assert (=> bs!1290432 (= lambda!298987 lambda!298943)))

(declare-fun bs!1290435 () Bool)

(assert (= bs!1290435 (and d!1763252 d!1763012)))

(assert (=> bs!1290435 (= lambda!298987 lambda!298936)))

(declare-fun bs!1290437 () Bool)

(assert (= bs!1290437 (and d!1763252 d!1763016)))

(assert (=> bs!1290437 (= lambda!298987 lambda!298942)))

(assert (=> d!1763252 (= (inv!82139 (h!69295 (t!376240 zl!343))) (forall!14728 (exprs!5441 (h!69295 (t!376240 zl!343))) lambda!298987))))

(declare-fun bs!1290439 () Bool)

(assert (= bs!1290439 d!1763252))

(declare-fun m!6559922 () Bool)

(assert (=> bs!1290439 m!6559922))

(assert (=> b!5576784 d!1763252))

(declare-fun b!5577077 () Bool)

(declare-fun e!3441516 () Bool)

(declare-fun lt!2252799 () List!62972)

(assert (=> b!5577077 (= e!3441516 (or (not (= (_2!35957 (get!21637 lt!2252775)) Nil!62848)) (= lt!2252799 (_1!35957 (get!21637 lt!2252775)))))))

(declare-fun b!5577076 () Bool)

(declare-fun res!2367046 () Bool)

(assert (=> b!5577076 (=> (not res!2367046) (not e!3441516))))

(declare-fun size!39955 (List!62972) Int)

(assert (=> b!5577076 (= res!2367046 (= (size!39955 lt!2252799) (+ (size!39955 (_1!35957 (get!21637 lt!2252775))) (size!39955 (_2!35957 (get!21637 lt!2252775))))))))

(declare-fun b!5577074 () Bool)

(declare-fun e!3441517 () List!62972)

(assert (=> b!5577074 (= e!3441517 (_2!35957 (get!21637 lt!2252775)))))

(declare-fun d!1763258 () Bool)

(assert (=> d!1763258 e!3441516))

(declare-fun res!2367045 () Bool)

(assert (=> d!1763258 (=> (not res!2367045) (not e!3441516))))

(declare-fun content!11326 (List!62972) (InoxSet C!31384))

(assert (=> d!1763258 (= res!2367045 (= (content!11326 lt!2252799) ((_ map or) (content!11326 (_1!35957 (get!21637 lt!2252775))) (content!11326 (_2!35957 (get!21637 lt!2252775))))))))

(assert (=> d!1763258 (= lt!2252799 e!3441517)))

(declare-fun c!976380 () Bool)

(assert (=> d!1763258 (= c!976380 ((_ is Nil!62848) (_1!35957 (get!21637 lt!2252775))))))

(assert (=> d!1763258 (= (++!13791 (_1!35957 (get!21637 lt!2252775)) (_2!35957 (get!21637 lt!2252775))) lt!2252799)))

(declare-fun b!5577075 () Bool)

(assert (=> b!5577075 (= e!3441517 (Cons!62848 (h!69296 (_1!35957 (get!21637 lt!2252775))) (++!13791 (t!376241 (_1!35957 (get!21637 lt!2252775))) (_2!35957 (get!21637 lt!2252775)))))))

(assert (= (and d!1763258 c!976380) b!5577074))

(assert (= (and d!1763258 (not c!976380)) b!5577075))

(assert (= (and d!1763258 res!2367045) b!5577076))

(assert (= (and b!5577076 res!2367046) b!5577077))

(declare-fun m!6559958 () Bool)

(assert (=> b!5577076 m!6559958))

(declare-fun m!6559960 () Bool)

(assert (=> b!5577076 m!6559960))

(declare-fun m!6559962 () Bool)

(assert (=> b!5577076 m!6559962))

(declare-fun m!6559964 () Bool)

(assert (=> d!1763258 m!6559964))

(declare-fun m!6559966 () Bool)

(assert (=> d!1763258 m!6559966))

(declare-fun m!6559968 () Bool)

(assert (=> d!1763258 m!6559968))

(declare-fun m!6559970 () Bool)

(assert (=> b!5577075 m!6559970))

(assert (=> b!5576538 d!1763258))

(declare-fun d!1763270 () Bool)

(assert (=> d!1763270 (= (get!21637 lt!2252775) (v!51606 lt!2252775))))

(assert (=> b!5576538 d!1763270))

(declare-fun b!5577093 () Bool)

(declare-fun e!3441531 () Bool)

(declare-fun call!416900 () Bool)

(assert (=> b!5577093 (= e!3441531 call!416900)))

(declare-fun bm!416895 () Bool)

(declare-fun call!416901 () Bool)

(declare-fun c!976387 () Bool)

(assert (=> bm!416895 (= call!416901 (validRegex!7293 (ite c!976387 (regOne!31627 lt!2252784) (regOne!31626 lt!2252784))))))

(declare-fun b!5577094 () Bool)

(declare-fun res!2367053 () Bool)

(declare-fun e!3441529 () Bool)

(assert (=> b!5577094 (=> res!2367053 e!3441529)))

(assert (=> b!5577094 (= res!2367053 (not ((_ is Concat!24402) lt!2252784)))))

(declare-fun e!3441528 () Bool)

(assert (=> b!5577094 (= e!3441528 e!3441529)))

(declare-fun b!5577095 () Bool)

(declare-fun e!3441533 () Bool)

(assert (=> b!5577095 (= e!3441533 e!3441528)))

(assert (=> b!5577095 (= c!976387 ((_ is Union!15557) lt!2252784))))

(declare-fun bm!416896 () Bool)

(declare-fun call!416902 () Bool)

(assert (=> bm!416896 (= call!416900 call!416902)))

(declare-fun b!5577096 () Bool)

(declare-fun e!3441532 () Bool)

(assert (=> b!5577096 (= e!3441533 e!3441532)))

(declare-fun res!2367050 () Bool)

(assert (=> b!5577096 (= res!2367050 (not (nullable!5589 (reg!15886 lt!2252784))))))

(assert (=> b!5577096 (=> (not res!2367050) (not e!3441532))))

(declare-fun bm!416897 () Bool)

(declare-fun c!976388 () Bool)

(assert (=> bm!416897 (= call!416902 (validRegex!7293 (ite c!976388 (reg!15886 lt!2252784) (ite c!976387 (regTwo!31627 lt!2252784) (regTwo!31626 lt!2252784)))))))

(declare-fun b!5577097 () Bool)

(assert (=> b!5577097 (= e!3441532 call!416902)))

(declare-fun b!5577099 () Bool)

(declare-fun res!2367054 () Bool)

(declare-fun e!3441527 () Bool)

(assert (=> b!5577099 (=> (not res!2367054) (not e!3441527))))

(assert (=> b!5577099 (= res!2367054 call!416901)))

(assert (=> b!5577099 (= e!3441528 e!3441527)))

(declare-fun b!5577100 () Bool)

(assert (=> b!5577100 (= e!3441527 call!416900)))

(declare-fun b!5577101 () Bool)

(assert (=> b!5577101 (= e!3441529 e!3441531)))

(declare-fun res!2367052 () Bool)

(assert (=> b!5577101 (=> (not res!2367052) (not e!3441531))))

(assert (=> b!5577101 (= res!2367052 call!416901)))

(declare-fun d!1763274 () Bool)

(declare-fun res!2367051 () Bool)

(declare-fun e!3441530 () Bool)

(assert (=> d!1763274 (=> res!2367051 e!3441530)))

(assert (=> d!1763274 (= res!2367051 ((_ is ElementMatch!15557) lt!2252784))))

(assert (=> d!1763274 (= (validRegex!7293 lt!2252784) e!3441530)))

(declare-fun b!5577098 () Bool)

(assert (=> b!5577098 (= e!3441530 e!3441533)))

(assert (=> b!5577098 (= c!976388 ((_ is Star!15557) lt!2252784))))

(assert (= (and d!1763274 (not res!2367051)) b!5577098))

(assert (= (and b!5577098 c!976388) b!5577096))

(assert (= (and b!5577098 (not c!976388)) b!5577095))

(assert (= (and b!5577096 res!2367050) b!5577097))

(assert (= (and b!5577095 c!976387) b!5577099))

(assert (= (and b!5577095 (not c!976387)) b!5577094))

(assert (= (and b!5577099 res!2367054) b!5577100))

(assert (= (and b!5577094 (not res!2367053)) b!5577101))

(assert (= (and b!5577101 res!2367052) b!5577093))

(assert (= (or b!5577100 b!5577093) bm!416896))

(assert (= (or b!5577099 b!5577101) bm!416895))

(assert (= (or b!5577097 bm!416896) bm!416897))

(declare-fun m!6559986 () Bool)

(assert (=> bm!416895 m!6559986))

(declare-fun m!6559988 () Bool)

(assert (=> b!5577096 m!6559988))

(declare-fun m!6559992 () Bool)

(assert (=> bm!416897 m!6559992))

(assert (=> d!1763070 d!1763274))

(declare-fun d!1763280 () Bool)

(declare-fun res!2367068 () Bool)

(declare-fun e!3441551 () Bool)

(assert (=> d!1763280 (=> res!2367068 e!3441551)))

(assert (=> d!1763280 (= res!2367068 ((_ is Nil!62846) (exprs!5441 (h!69295 zl!343))))))

(assert (=> d!1763280 (= (forall!14728 (exprs!5441 (h!69295 zl!343)) lambda!298958) e!3441551)))

(declare-fun b!5577131 () Bool)

(declare-fun e!3441552 () Bool)

(assert (=> b!5577131 (= e!3441551 e!3441552)))

(declare-fun res!2367069 () Bool)

(assert (=> b!5577131 (=> (not res!2367069) (not e!3441552))))

(declare-fun dynLambda!24580 (Int Regex!15557) Bool)

(assert (=> b!5577131 (= res!2367069 (dynLambda!24580 lambda!298958 (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5577132 () Bool)

(assert (=> b!5577132 (= e!3441552 (forall!14728 (t!376239 (exprs!5441 (h!69295 zl!343))) lambda!298958))))

(assert (= (and d!1763280 (not res!2367068)) b!5577131))

(assert (= (and b!5577131 res!2367069) b!5577132))

(declare-fun b_lambda!211411 () Bool)

(assert (=> (not b_lambda!211411) (not b!5577131)))

(declare-fun m!6560022 () Bool)

(assert (=> b!5577131 m!6560022))

(declare-fun m!6560026 () Bool)

(assert (=> b!5577132 m!6560026))

(assert (=> d!1763070 d!1763280))

(declare-fun d!1763294 () Bool)

(declare-fun res!2367074 () Bool)

(declare-fun e!3441557 () Bool)

(assert (=> d!1763294 (=> res!2367074 e!3441557)))

(assert (=> d!1763294 (= res!2367074 ((_ is Nil!62847) lt!2252760))))

(assert (=> d!1763294 (= (noDuplicate!1537 lt!2252760) e!3441557)))

(declare-fun b!5577137 () Bool)

(declare-fun e!3441558 () Bool)

(assert (=> b!5577137 (= e!3441557 e!3441558)))

(declare-fun res!2367075 () Bool)

(assert (=> b!5577137 (=> (not res!2367075) (not e!3441558))))

(declare-fun contains!19803 (List!62971 Context!9882) Bool)

(assert (=> b!5577137 (= res!2367075 (not (contains!19803 (t!376240 lt!2252760) (h!69295 lt!2252760))))))

(declare-fun b!5577138 () Bool)

(assert (=> b!5577138 (= e!3441558 (noDuplicate!1537 (t!376240 lt!2252760)))))

(assert (= (and d!1763294 (not res!2367074)) b!5577137))

(assert (= (and b!5577137 res!2367075) b!5577138))

(declare-fun m!6560028 () Bool)

(assert (=> b!5577137 m!6560028))

(declare-fun m!6560030 () Bool)

(assert (=> b!5577138 m!6560030))

(assert (=> d!1763032 d!1763294))

(declare-fun d!1763296 () Bool)

(declare-fun e!3441567 () Bool)

(assert (=> d!1763296 e!3441567))

(declare-fun res!2367085 () Bool)

(assert (=> d!1763296 (=> (not res!2367085) (not e!3441567))))

(declare-fun res!2367084 () List!62971)

(assert (=> d!1763296 (= res!2367085 (noDuplicate!1537 res!2367084))))

(declare-fun e!3441568 () Bool)

(assert (=> d!1763296 e!3441568))

(assert (=> d!1763296 (= (choose!42254 z!1189) res!2367084)))

(declare-fun b!5577150 () Bool)

(declare-fun e!3441569 () Bool)

(declare-fun tp!1543292 () Bool)

(assert (=> b!5577150 (= e!3441569 tp!1543292)))

(declare-fun tp!1543293 () Bool)

(declare-fun b!5577149 () Bool)

(assert (=> b!5577149 (= e!3441568 (and (inv!82139 (h!69295 res!2367084)) e!3441569 tp!1543293))))

(declare-fun b!5577151 () Bool)

(assert (=> b!5577151 (= e!3441567 (= (content!11325 res!2367084) z!1189))))

(assert (= b!5577149 b!5577150))

(assert (= (and d!1763296 ((_ is Cons!62847) res!2367084)) b!5577149))

(assert (= (and d!1763296 res!2367085) b!5577151))

(declare-fun m!6560032 () Bool)

(assert (=> d!1763296 m!6560032))

(declare-fun m!6560034 () Bool)

(assert (=> b!5577149 m!6560034))

(declare-fun m!6560036 () Bool)

(assert (=> b!5577151 m!6560036))

(assert (=> d!1763032 d!1763296))

(declare-fun d!1763298 () Bool)

(assert (=> d!1763298 (= (flatMap!1170 lt!2252699 lambda!298946) (choose!42255 lt!2252699 lambda!298946))))

(declare-fun bs!1290472 () Bool)

(assert (= bs!1290472 d!1763298))

(declare-fun m!6560038 () Bool)

(assert (=> bs!1290472 m!6560038))

(assert (=> d!1763042 d!1763298))

(declare-fun d!1763300 () Bool)

(assert (=> d!1763300 (= (isEmpty!34651 (unfocusZipperList!985 zl!343)) ((_ is Nil!62846) (unfocusZipperList!985 zl!343)))))

(assert (=> b!5576462 d!1763300))

(declare-fun b!5577152 () Bool)

(declare-fun e!3441575 () (InoxSet Context!9882))

(declare-fun call!416915 () (InoxSet Context!9882))

(declare-fun call!416914 () (InoxSet Context!9882))

(assert (=> b!5577152 (= e!3441575 ((_ map or) call!416915 call!416914))))

(declare-fun b!5577153 () Bool)

(declare-fun e!3441570 () (InoxSet Context!9882))

(assert (=> b!5577153 (= e!3441570 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577154 () Bool)

(declare-fun call!416913 () (InoxSet Context!9882))

(assert (=> b!5577154 (= e!3441570 call!416913)))

(declare-fun b!5577155 () Bool)

(declare-fun c!976400 () Bool)

(declare-fun e!3441571 () Bool)

(assert (=> b!5577155 (= c!976400 e!3441571)))

(declare-fun res!2367086 () Bool)

(assert (=> b!5577155 (=> (not res!2367086) (not e!3441571))))

(assert (=> b!5577155 (= res!2367086 ((_ is Concat!24402) (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))))))

(declare-fun e!3441572 () (InoxSet Context!9882))

(assert (=> b!5577155 (= e!3441572 e!3441575)))

(declare-fun b!5577156 () Bool)

(declare-fun e!3441574 () (InoxSet Context!9882))

(assert (=> b!5577156 (= e!3441574 e!3441572)))

(declare-fun c!976401 () Bool)

(assert (=> b!5577156 (= c!976401 ((_ is Union!15557) (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))))))

(declare-fun b!5577157 () Bool)

(assert (=> b!5577157 (= e!3441574 (store ((as const (Array Context!9882 Bool)) false) (ite (or c!976253 c!976252) lt!2252691 (Context!9883 call!416802)) true))))

(declare-fun b!5577158 () Bool)

(assert (=> b!5577158 (= e!3441571 (nullable!5589 (regOne!31626 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292)))))))))))

(declare-fun c!976397 () Bool)

(declare-fun b!5577159 () Bool)

(assert (=> b!5577159 (= c!976397 ((_ is Star!15557) (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))))))

(declare-fun e!3441573 () (InoxSet Context!9882))

(assert (=> b!5577159 (= e!3441573 e!3441570)))

(declare-fun b!5577160 () Bool)

(declare-fun call!416910 () (InoxSet Context!9882))

(assert (=> b!5577160 (= e!3441572 ((_ map or) call!416910 call!416915))))

(declare-fun bm!416906 () Bool)

(assert (=> bm!416906 (= call!416914 call!416910)))

(declare-fun b!5577161 () Bool)

(assert (=> b!5577161 (= e!3441573 call!416913)))

(declare-fun bm!416907 () Bool)

(declare-fun c!976398 () Bool)

(declare-fun call!416912 () List!62970)

(assert (=> bm!416907 (= call!416912 ($colon$colon!1624 (exprs!5441 (ite (or c!976253 c!976252) lt!2252691 (Context!9883 call!416802))) (ite (or c!976400 c!976398) (regTwo!31626 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))) (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292)))))))))))

(declare-fun bm!416908 () Bool)

(declare-fun call!416911 () List!62970)

(assert (=> bm!416908 (= call!416910 (derivationStepZipperDown!899 (ite c!976401 (regOne!31627 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))) (ite c!976400 (regTwo!31626 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))) (ite c!976398 (regOne!31626 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))) (reg!15886 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292)))))))))) (ite (or c!976401 c!976400) (ite (or c!976253 c!976252) lt!2252691 (Context!9883 call!416802)) (Context!9883 call!416911)) (h!69296 s!2326)))))

(declare-fun b!5577162 () Bool)

(assert (=> b!5577162 (= e!3441575 e!3441573)))

(assert (=> b!5577162 (= c!976398 ((_ is Concat!24402) (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))))))

(declare-fun bm!416905 () Bool)

(assert (=> bm!416905 (= call!416913 call!416914)))

(declare-fun c!976399 () Bool)

(declare-fun d!1763302 () Bool)

(assert (=> d!1763302 (= c!976399 (and ((_ is ElementMatch!15557) (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))) (= (c!976080 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))) (h!69296 s!2326))))))

(assert (=> d!1763302 (= (derivationStepZipperDown!899 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292)))))) (ite (or c!976253 c!976252) lt!2252691 (Context!9883 call!416802)) (h!69296 s!2326)) e!3441574)))

(declare-fun bm!416909 () Bool)

(assert (=> bm!416909 (= call!416915 (derivationStepZipperDown!899 (ite c!976401 (regTwo!31627 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292))))))) (regOne!31626 (ite c!976253 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (ite c!976252 (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (ite c!976250 (regOne!31626 (regOne!31627 (regOne!31626 r!7292))) (reg!15886 (regOne!31627 (regOne!31626 r!7292)))))))) (ite c!976401 (ite (or c!976253 c!976252) lt!2252691 (Context!9883 call!416802)) (Context!9883 call!416912)) (h!69296 s!2326)))))

(declare-fun bm!416910 () Bool)

(assert (=> bm!416910 (= call!416911 call!416912)))

(assert (= (and d!1763302 c!976399) b!5577157))

(assert (= (and d!1763302 (not c!976399)) b!5577156))

(assert (= (and b!5577156 c!976401) b!5577160))

(assert (= (and b!5577156 (not c!976401)) b!5577155))

(assert (= (and b!5577155 res!2367086) b!5577158))

(assert (= (and b!5577155 c!976400) b!5577152))

(assert (= (and b!5577155 (not c!976400)) b!5577162))

(assert (= (and b!5577162 c!976398) b!5577161))

(assert (= (and b!5577162 (not c!976398)) b!5577159))

(assert (= (and b!5577159 c!976397) b!5577154))

(assert (= (and b!5577159 (not c!976397)) b!5577153))

(assert (= (or b!5577161 b!5577154) bm!416910))

(assert (= (or b!5577161 b!5577154) bm!416905))

(assert (= (or b!5577152 bm!416910) bm!416907))

(assert (= (or b!5577152 bm!416905) bm!416906))

(assert (= (or b!5577160 b!5577152) bm!416909))

(assert (= (or b!5577160 bm!416906) bm!416908))

(declare-fun m!6560040 () Bool)

(assert (=> b!5577157 m!6560040))

(declare-fun m!6560042 () Bool)

(assert (=> bm!416907 m!6560042))

(declare-fun m!6560044 () Bool)

(assert (=> bm!416909 m!6560044))

(declare-fun m!6560046 () Bool)

(assert (=> b!5577158 m!6560046))

(declare-fun m!6560048 () Bool)

(assert (=> bm!416908 m!6560048))

(assert (=> bm!416799 d!1763302))

(assert (=> d!1763048 d!1763046))

(declare-fun d!1763304 () Bool)

(assert (=> d!1763304 (= (flatMap!1170 lt!2252699 lambda!298902) (dynLambda!24579 lambda!298902 lt!2252704))))

(assert (=> d!1763304 true))

(declare-fun _$13!2148 () Unit!155600)

(assert (=> d!1763304 (= (choose!42256 lt!2252699 lt!2252704 lambda!298902) _$13!2148)))

(declare-fun b_lambda!211413 () Bool)

(assert (=> (not b_lambda!211413) (not d!1763304)))

(declare-fun bs!1290484 () Bool)

(assert (= bs!1290484 d!1763304))

(assert (=> bs!1290484 m!6559128))

(assert (=> bs!1290484 m!6559526))

(assert (=> d!1763048 d!1763304))

(declare-fun bs!1290485 () Bool)

(declare-fun d!1763308 () Bool)

(assert (= bs!1290485 (and d!1763308 d!1763070)))

(declare-fun lambda!298996 () Int)

(assert (=> bs!1290485 (= lambda!298996 lambda!298958)))

(declare-fun bs!1290486 () Bool)

(assert (= bs!1290486 (and d!1763308 d!1763252)))

(assert (=> bs!1290486 (= lambda!298996 lambda!298987)))

(declare-fun bs!1290487 () Bool)

(assert (= bs!1290487 (and d!1763308 d!1763014)))

(assert (=> bs!1290487 (= lambda!298996 lambda!298939)))

(declare-fun bs!1290488 () Bool)

(assert (= bs!1290488 (and d!1763308 d!1763022)))

(assert (=> bs!1290488 (= lambda!298996 lambda!298943)))

(declare-fun bs!1290489 () Bool)

(assert (= bs!1290489 (and d!1763308 d!1763012)))

(assert (=> bs!1290489 (= lambda!298996 lambda!298936)))

(declare-fun bs!1290490 () Bool)

(assert (= bs!1290490 (and d!1763308 d!1763016)))

(assert (=> bs!1290490 (= lambda!298996 lambda!298942)))

(declare-fun b!5577163 () Bool)

(declare-fun e!3441580 () Bool)

(declare-fun e!3441576 () Bool)

(assert (=> b!5577163 (= e!3441580 e!3441576)))

(declare-fun c!976404 () Bool)

(assert (=> b!5577163 (= c!976404 (isEmpty!34651 (tail!10987 (t!376239 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun b!5577164 () Bool)

(declare-fun e!3441581 () Regex!15557)

(assert (=> b!5577164 (= e!3441581 EmptyExpr!15557)))

(declare-fun b!5577165 () Bool)

(declare-fun e!3441579 () Regex!15557)

(assert (=> b!5577165 (= e!3441579 e!3441581)))

(declare-fun c!976403 () Bool)

(assert (=> b!5577165 (= c!976403 ((_ is Cons!62846) (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5577166 () Bool)

(declare-fun e!3441578 () Bool)

(assert (=> b!5577166 (= e!3441578 e!3441580)))

(declare-fun c!976402 () Bool)

(assert (=> b!5577166 (= c!976402 (isEmpty!34651 (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5577167 () Bool)

(assert (=> b!5577167 (= e!3441581 (Concat!24402 (h!69294 (t!376239 (exprs!5441 (h!69295 zl!343)))) (generalisedConcat!1172 (t!376239 (t!376239 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun b!5577168 () Bool)

(declare-fun lt!2252801 () Regex!15557)

(assert (=> b!5577168 (= e!3441576 (= lt!2252801 (head!11892 (t!376239 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun b!5577169 () Bool)

(declare-fun e!3441577 () Bool)

(assert (=> b!5577169 (= e!3441577 (isEmpty!34651 (t!376239 (t!376239 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun b!5577170 () Bool)

(assert (=> b!5577170 (= e!3441576 (isConcat!639 lt!2252801))))

(declare-fun b!5577171 () Bool)

(assert (=> b!5577171 (= e!3441579 (h!69294 (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(assert (=> d!1763308 e!3441578))

(declare-fun res!2367089 () Bool)

(assert (=> d!1763308 (=> (not res!2367089) (not e!3441578))))

(assert (=> d!1763308 (= res!2367089 (validRegex!7293 lt!2252801))))

(assert (=> d!1763308 (= lt!2252801 e!3441579)))

(declare-fun c!976405 () Bool)

(assert (=> d!1763308 (= c!976405 e!3441577)))

(declare-fun res!2367090 () Bool)

(assert (=> d!1763308 (=> (not res!2367090) (not e!3441577))))

(assert (=> d!1763308 (= res!2367090 ((_ is Cons!62846) (t!376239 (exprs!5441 (h!69295 zl!343)))))))

(assert (=> d!1763308 (forall!14728 (t!376239 (exprs!5441 (h!69295 zl!343))) lambda!298996)))

(assert (=> d!1763308 (= (generalisedConcat!1172 (t!376239 (exprs!5441 (h!69295 zl!343)))) lt!2252801)))

(declare-fun b!5577172 () Bool)

(assert (=> b!5577172 (= e!3441580 (isEmptyExpr!1116 lt!2252801))))

(assert (= (and d!1763308 res!2367090) b!5577169))

(assert (= (and d!1763308 c!976405) b!5577171))

(assert (= (and d!1763308 (not c!976405)) b!5577165))

(assert (= (and b!5577165 c!976403) b!5577167))

(assert (= (and b!5577165 (not c!976403)) b!5577164))

(assert (= (and d!1763308 res!2367089) b!5577166))

(assert (= (and b!5577166 c!976402) b!5577172))

(assert (= (and b!5577166 (not c!976402)) b!5577163))

(assert (= (and b!5577163 c!976404) b!5577168))

(assert (= (and b!5577163 (not c!976404)) b!5577170))

(declare-fun m!6560054 () Bool)

(assert (=> b!5577163 m!6560054))

(assert (=> b!5577163 m!6560054))

(declare-fun m!6560056 () Bool)

(assert (=> b!5577163 m!6560056))

(declare-fun m!6560058 () Bool)

(assert (=> d!1763308 m!6560058))

(declare-fun m!6560060 () Bool)

(assert (=> d!1763308 m!6560060))

(declare-fun m!6560062 () Bool)

(assert (=> b!5577170 m!6560062))

(declare-fun m!6560064 () Bool)

(assert (=> b!5577169 m!6560064))

(declare-fun m!6560066 () Bool)

(assert (=> b!5577168 m!6560066))

(declare-fun m!6560068 () Bool)

(assert (=> b!5577172 m!6560068))

(declare-fun m!6560070 () Bool)

(assert (=> b!5577167 m!6560070))

(assert (=> b!5577166 m!6559088))

(assert (=> b!5576625 d!1763308))

(declare-fun d!1763320 () Bool)

(assert (=> d!1763320 (= (isEmpty!34655 (tail!10988 s!2326)) ((_ is Nil!62848) (tail!10988 s!2326)))))

(assert (=> b!5576712 d!1763320))

(declare-fun d!1763322 () Bool)

(assert (=> d!1763322 (= (tail!10988 s!2326) (t!376241 s!2326))))

(assert (=> b!5576712 d!1763322))

(declare-fun d!1763326 () Bool)

(declare-fun c!976410 () Bool)

(assert (=> d!1763326 (= c!976410 (isEmpty!34655 (tail!10988 (t!376241 s!2326))))))

(declare-fun e!3441588 () Bool)

(assert (=> d!1763326 (= (matchZipper!1695 (derivationStepZipper!1656 ((_ map or) lt!2252684 lt!2252702) (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))) e!3441588)))

(declare-fun b!5577183 () Bool)

(assert (=> b!5577183 (= e!3441588 (nullableZipper!1556 (derivationStepZipper!1656 ((_ map or) lt!2252684 lt!2252702) (head!11893 (t!376241 s!2326)))))))

(declare-fun b!5577184 () Bool)

(assert (=> b!5577184 (= e!3441588 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 ((_ map or) lt!2252684 lt!2252702) (head!11893 (t!376241 s!2326))) (head!11893 (tail!10988 (t!376241 s!2326)))) (tail!10988 (tail!10988 (t!376241 s!2326)))))))

(assert (= (and d!1763326 c!976410) b!5577183))

(assert (= (and d!1763326 (not c!976410)) b!5577184))

(assert (=> d!1763326 m!6559468))

(declare-fun m!6560078 () Bool)

(assert (=> d!1763326 m!6560078))

(assert (=> b!5577183 m!6559612))

(declare-fun m!6560080 () Bool)

(assert (=> b!5577183 m!6560080))

(assert (=> b!5577184 m!6559468))

(declare-fun m!6560084 () Bool)

(assert (=> b!5577184 m!6560084))

(assert (=> b!5577184 m!6559612))

(assert (=> b!5577184 m!6560084))

(declare-fun m!6560088 () Bool)

(assert (=> b!5577184 m!6560088))

(assert (=> b!5577184 m!6559468))

(declare-fun m!6560092 () Bool)

(assert (=> b!5577184 m!6560092))

(assert (=> b!5577184 m!6560088))

(assert (=> b!5577184 m!6560092))

(declare-fun m!6560094 () Bool)

(assert (=> b!5577184 m!6560094))

(assert (=> b!5576633 d!1763326))

(declare-fun bs!1290492 () Bool)

(declare-fun d!1763330 () Bool)

(assert (= bs!1290492 (and d!1763330 b!5576018)))

(declare-fun lambda!298997 () Int)

(assert (=> bs!1290492 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!298997 lambda!298902))))

(declare-fun bs!1290493 () Bool)

(assert (= bs!1290493 (and d!1763330 d!1763042)))

(assert (=> bs!1290493 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!298997 lambda!298946))))

(assert (=> d!1763330 true))

(assert (=> d!1763330 (= (derivationStepZipper!1656 ((_ map or) lt!2252684 lt!2252702) (head!11893 (t!376241 s!2326))) (flatMap!1170 ((_ map or) lt!2252684 lt!2252702) lambda!298997))))

(declare-fun bs!1290494 () Bool)

(assert (= bs!1290494 d!1763330))

(declare-fun m!6560102 () Bool)

(assert (=> bs!1290494 m!6560102))

(assert (=> b!5576633 d!1763330))

(declare-fun d!1763334 () Bool)

(assert (=> d!1763334 (= (head!11893 (t!376241 s!2326)) (h!69296 (t!376241 s!2326)))))

(assert (=> b!5576633 d!1763334))

(declare-fun d!1763336 () Bool)

(assert (=> d!1763336 (= (tail!10988 (t!376241 s!2326)) (t!376241 (t!376241 s!2326)))))

(assert (=> b!5576633 d!1763336))

(declare-fun d!1763338 () Bool)

(assert (=> d!1763338 (= (nullable!5589 (reg!15886 r!7292)) (nullableFct!1703 (reg!15886 r!7292)))))

(declare-fun bs!1290501 () Bool)

(assert (= bs!1290501 d!1763338))

(declare-fun m!6560104 () Bool)

(assert (=> bs!1290501 m!6560104))

(assert (=> b!5576435 d!1763338))

(declare-fun e!3441591 () (InoxSet Context!9882))

(declare-fun call!416918 () (InoxSet Context!9882))

(declare-fun b!5577187 () Bool)

(assert (=> b!5577187 (= e!3441591 ((_ map or) call!416918 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))) (h!69296 s!2326))))))

(declare-fun b!5577188 () Bool)

(declare-fun e!3441592 () (InoxSet Context!9882))

(assert (=> b!5577188 (= e!3441592 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577189 () Bool)

(assert (=> b!5577189 (= e!3441592 call!416918)))

(declare-fun b!5577190 () Bool)

(declare-fun e!3441590 () Bool)

(assert (=> b!5577190 (= e!3441590 (nullable!5589 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))))))

(declare-fun d!1763340 () Bool)

(declare-fun c!976412 () Bool)

(assert (=> d!1763340 (= c!976412 e!3441590)))

(declare-fun res!2367094 () Bool)

(assert (=> d!1763340 (=> (not res!2367094) (not e!3441590))))

(assert (=> d!1763340 (= res!2367094 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))))

(assert (=> d!1763340 (= (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (h!69296 s!2326)) e!3441591)))

(declare-fun b!5577191 () Bool)

(assert (=> b!5577191 (= e!3441591 e!3441592)))

(declare-fun c!976413 () Bool)

(assert (=> b!5577191 (= c!976413 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))))

(declare-fun bm!416913 () Bool)

(assert (=> bm!416913 (= call!416918 (derivationStepZipperDown!899 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))) (h!69296 s!2326)))))

(assert (= (and d!1763340 res!2367094) b!5577190))

(assert (= (and d!1763340 c!976412) b!5577187))

(assert (= (and d!1763340 (not c!976412)) b!5577191))

(assert (= (and b!5577191 c!976413) b!5577189))

(assert (= (and b!5577191 (not c!976413)) b!5577188))

(assert (= (or b!5577187 b!5577189) bm!416913))

(declare-fun m!6560108 () Bool)

(assert (=> b!5577187 m!6560108))

(declare-fun m!6560110 () Bool)

(assert (=> b!5577190 m!6560110))

(declare-fun m!6560112 () Bool)

(assert (=> bm!416913 m!6560112))

(assert (=> b!5576719 d!1763340))

(declare-fun b!5577209 () Bool)

(declare-fun e!3441600 () Bool)

(declare-fun lt!2252803 () List!62972)

(assert (=> b!5577209 (= e!3441600 (or (not (= (t!376241 s!2326) Nil!62848)) (= lt!2252803 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)))))))

(declare-fun b!5577208 () Bool)

(declare-fun res!2367104 () Bool)

(assert (=> b!5577208 (=> (not res!2367104) (not e!3441600))))

(assert (=> b!5577208 (= res!2367104 (= (size!39955 lt!2252803) (+ (size!39955 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848))) (size!39955 (t!376241 s!2326)))))))

(declare-fun b!5577206 () Bool)

(declare-fun e!3441601 () List!62972)

(assert (=> b!5577206 (= e!3441601 (t!376241 s!2326))))

(declare-fun d!1763344 () Bool)

(assert (=> d!1763344 e!3441600))

(declare-fun res!2367103 () Bool)

(assert (=> d!1763344 (=> (not res!2367103) (not e!3441600))))

(assert (=> d!1763344 (= res!2367103 (= (content!11326 lt!2252803) ((_ map or) (content!11326 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848))) (content!11326 (t!376241 s!2326)))))))

(assert (=> d!1763344 (= lt!2252803 e!3441601)))

(declare-fun c!976417 () Bool)

(assert (=> d!1763344 (= c!976417 ((_ is Nil!62848) (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848))))))

(assert (=> d!1763344 (= (++!13791 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (t!376241 s!2326)) lt!2252803)))

(declare-fun b!5577207 () Bool)

(assert (=> b!5577207 (= e!3441601 (Cons!62848 (h!69296 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848))) (++!13791 (t!376241 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848))) (t!376241 s!2326))))))

(assert (= (and d!1763344 c!976417) b!5577206))

(assert (= (and d!1763344 (not c!976417)) b!5577207))

(assert (= (and d!1763344 res!2367103) b!5577208))

(assert (= (and b!5577208 res!2367104) b!5577209))

(declare-fun m!6560122 () Bool)

(assert (=> b!5577208 m!6560122))

(assert (=> b!5577208 m!6559544))

(declare-fun m!6560125 () Bool)

(assert (=> b!5577208 m!6560125))

(declare-fun m!6560128 () Bool)

(assert (=> b!5577208 m!6560128))

(declare-fun m!6560130 () Bool)

(assert (=> d!1763344 m!6560130))

(assert (=> d!1763344 m!6559544))

(declare-fun m!6560132 () Bool)

(assert (=> d!1763344 m!6560132))

(declare-fun m!6560136 () Bool)

(assert (=> d!1763344 m!6560136))

(declare-fun m!6560138 () Bool)

(assert (=> b!5577207 m!6560138))

(assert (=> b!5576542 d!1763344))

(declare-fun b!5577213 () Bool)

(declare-fun e!3441602 () Bool)

(declare-fun lt!2252804 () List!62972)

(assert (=> b!5577213 (= e!3441602 (or (not (= (Cons!62848 (h!69296 s!2326) Nil!62848) Nil!62848)) (= lt!2252804 Nil!62848)))))

(declare-fun b!5577212 () Bool)

(declare-fun res!2367106 () Bool)

(assert (=> b!5577212 (=> (not res!2367106) (not e!3441602))))

(assert (=> b!5577212 (= res!2367106 (= (size!39955 lt!2252804) (+ (size!39955 Nil!62848) (size!39955 (Cons!62848 (h!69296 s!2326) Nil!62848)))))))

(declare-fun b!5577210 () Bool)

(declare-fun e!3441603 () List!62972)

(assert (=> b!5577210 (= e!3441603 (Cons!62848 (h!69296 s!2326) Nil!62848))))

(declare-fun d!1763348 () Bool)

(assert (=> d!1763348 e!3441602))

(declare-fun res!2367105 () Bool)

(assert (=> d!1763348 (=> (not res!2367105) (not e!3441602))))

(assert (=> d!1763348 (= res!2367105 (= (content!11326 lt!2252804) ((_ map or) (content!11326 Nil!62848) (content!11326 (Cons!62848 (h!69296 s!2326) Nil!62848)))))))

(assert (=> d!1763348 (= lt!2252804 e!3441603)))

(declare-fun c!976418 () Bool)

(assert (=> d!1763348 (= c!976418 ((_ is Nil!62848) Nil!62848))))

(assert (=> d!1763348 (= (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) lt!2252804)))

(declare-fun b!5577211 () Bool)

(assert (=> b!5577211 (= e!3441603 (Cons!62848 (h!69296 Nil!62848) (++!13791 (t!376241 Nil!62848) (Cons!62848 (h!69296 s!2326) Nil!62848))))))

(assert (= (and d!1763348 c!976418) b!5577210))

(assert (= (and d!1763348 (not c!976418)) b!5577211))

(assert (= (and d!1763348 res!2367105) b!5577212))

(assert (= (and b!5577212 res!2367106) b!5577213))

(declare-fun m!6560140 () Bool)

(assert (=> b!5577212 m!6560140))

(declare-fun m!6560142 () Bool)

(assert (=> b!5577212 m!6560142))

(declare-fun m!6560144 () Bool)

(assert (=> b!5577212 m!6560144))

(declare-fun m!6560146 () Bool)

(assert (=> d!1763348 m!6560146))

(declare-fun m!6560148 () Bool)

(assert (=> d!1763348 m!6560148))

(declare-fun m!6560150 () Bool)

(assert (=> d!1763348 m!6560150))

(declare-fun m!6560152 () Bool)

(assert (=> b!5577211 m!6560152))

(assert (=> b!5576542 d!1763348))

(declare-fun d!1763350 () Bool)

(assert (=> d!1763350 (= (++!13791 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (t!376241 s!2326)) s!2326)))

(declare-fun lt!2252807 () Unit!155600)

(declare-fun choose!42261 (List!62972 C!31384 List!62972 List!62972) Unit!155600)

(assert (=> d!1763350 (= lt!2252807 (choose!42261 Nil!62848 (h!69296 s!2326) (t!376241 s!2326) s!2326))))

(assert (=> d!1763350 (= (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) (t!376241 s!2326))) s!2326)))

(assert (=> d!1763350 (= (lemmaMoveElementToOtherListKeepsConcatEq!1960 Nil!62848 (h!69296 s!2326) (t!376241 s!2326) s!2326) lt!2252807)))

(declare-fun bs!1290512 () Bool)

(assert (= bs!1290512 d!1763350))

(assert (=> bs!1290512 m!6559544))

(assert (=> bs!1290512 m!6559544))

(assert (=> bs!1290512 m!6559546))

(declare-fun m!6560172 () Bool)

(assert (=> bs!1290512 m!6560172))

(declare-fun m!6560174 () Bool)

(assert (=> bs!1290512 m!6560174))

(assert (=> b!5576542 d!1763350))

(declare-fun b!5577238 () Bool)

(declare-fun res!2367111 () Bool)

(declare-fun e!3441618 () Bool)

(assert (=> b!5577238 (=> (not res!2367111) (not e!3441618))))

(declare-fun lt!2252810 () Option!15566)

(assert (=> b!5577238 (= res!2367111 (matchR!7742 (regOne!31626 r!7292) (_1!35957 (get!21637 lt!2252810))))))

(declare-fun b!5577239 () Bool)

(declare-fun e!3441622 () Bool)

(assert (=> b!5577239 (= e!3441622 (not (isDefined!12269 lt!2252810)))))

(declare-fun b!5577240 () Bool)

(assert (=> b!5577240 (= e!3441618 (= (++!13791 (_1!35957 (get!21637 lt!2252810)) (_2!35957 (get!21637 lt!2252810))) s!2326))))

(declare-fun b!5577241 () Bool)

(declare-fun e!3441621 () Option!15566)

(assert (=> b!5577241 (= e!3441621 (Some!15565 (tuple2!65309 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (t!376241 s!2326))))))

(declare-fun d!1763360 () Bool)

(assert (=> d!1763360 e!3441622))

(declare-fun res!2367114 () Bool)

(assert (=> d!1763360 (=> res!2367114 e!3441622)))

(assert (=> d!1763360 (= res!2367114 e!3441618)))

(declare-fun res!2367115 () Bool)

(assert (=> d!1763360 (=> (not res!2367115) (not e!3441618))))

(assert (=> d!1763360 (= res!2367115 (isDefined!12269 lt!2252810))))

(assert (=> d!1763360 (= lt!2252810 e!3441621)))

(declare-fun c!976429 () Bool)

(declare-fun e!3441620 () Bool)

(assert (=> d!1763360 (= c!976429 e!3441620)))

(declare-fun res!2367112 () Bool)

(assert (=> d!1763360 (=> (not res!2367112) (not e!3441620))))

(assert (=> d!1763360 (= res!2367112 (matchR!7742 (regOne!31626 r!7292) (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848))))))

(assert (=> d!1763360 (validRegex!7293 (regOne!31626 r!7292))))

(assert (=> d!1763360 (= (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (t!376241 s!2326) s!2326) lt!2252810)))

(declare-fun b!5577242 () Bool)

(assert (=> b!5577242 (= e!3441620 (matchR!7742 (regTwo!31626 r!7292) (t!376241 s!2326)))))

(declare-fun b!5577243 () Bool)

(declare-fun e!3441619 () Option!15566)

(assert (=> b!5577243 (= e!3441621 e!3441619)))

(declare-fun c!976430 () Bool)

(assert (=> b!5577243 (= c!976430 ((_ is Nil!62848) (t!376241 s!2326)))))

(declare-fun b!5577244 () Bool)

(declare-fun lt!2252808 () Unit!155600)

(declare-fun lt!2252809 () Unit!155600)

(assert (=> b!5577244 (= lt!2252808 lt!2252809)))

(assert (=> b!5577244 (= (++!13791 (++!13791 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (Cons!62848 (h!69296 (t!376241 s!2326)) Nil!62848)) (t!376241 (t!376241 s!2326))) s!2326)))

(assert (=> b!5577244 (= lt!2252809 (lemmaMoveElementToOtherListKeepsConcatEq!1960 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (h!69296 (t!376241 s!2326)) (t!376241 (t!376241 s!2326)) s!2326))))

(assert (=> b!5577244 (= e!3441619 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) (++!13791 (++!13791 Nil!62848 (Cons!62848 (h!69296 s!2326) Nil!62848)) (Cons!62848 (h!69296 (t!376241 s!2326)) Nil!62848)) (t!376241 (t!376241 s!2326)) s!2326))))

(declare-fun b!5577245 () Bool)

(declare-fun res!2367113 () Bool)

(assert (=> b!5577245 (=> (not res!2367113) (not e!3441618))))

(assert (=> b!5577245 (= res!2367113 (matchR!7742 (regTwo!31626 r!7292) (_2!35957 (get!21637 lt!2252810))))))

(declare-fun b!5577246 () Bool)

(assert (=> b!5577246 (= e!3441619 None!15565)))

(assert (= (and d!1763360 res!2367112) b!5577242))

(assert (= (and d!1763360 c!976429) b!5577241))

(assert (= (and d!1763360 (not c!976429)) b!5577243))

(assert (= (and b!5577243 c!976430) b!5577246))

(assert (= (and b!5577243 (not c!976430)) b!5577244))

(assert (= (and d!1763360 res!2367115) b!5577238))

(assert (= (and b!5577238 res!2367111) b!5577245))

(assert (= (and b!5577245 res!2367113) b!5577240))

(assert (= (and d!1763360 (not res!2367114)) b!5577239))

(declare-fun m!6560186 () Bool)

(assert (=> b!5577240 m!6560186))

(declare-fun m!6560190 () Bool)

(assert (=> b!5577240 m!6560190))

(declare-fun m!6560194 () Bool)

(assert (=> b!5577239 m!6560194))

(assert (=> b!5577238 m!6560186))

(declare-fun m!6560196 () Bool)

(assert (=> b!5577238 m!6560196))

(declare-fun m!6560198 () Bool)

(assert (=> b!5577242 m!6560198))

(assert (=> b!5577245 m!6560186))

(declare-fun m!6560200 () Bool)

(assert (=> b!5577245 m!6560200))

(assert (=> b!5577244 m!6559544))

(declare-fun m!6560202 () Bool)

(assert (=> b!5577244 m!6560202))

(assert (=> b!5577244 m!6560202))

(declare-fun m!6560204 () Bool)

(assert (=> b!5577244 m!6560204))

(assert (=> b!5577244 m!6559544))

(declare-fun m!6560206 () Bool)

(assert (=> b!5577244 m!6560206))

(assert (=> b!5577244 m!6560202))

(declare-fun m!6560208 () Bool)

(assert (=> b!5577244 m!6560208))

(assert (=> d!1763360 m!6560194))

(assert (=> d!1763360 m!6559544))

(declare-fun m!6560210 () Bool)

(assert (=> d!1763360 m!6560210))

(assert (=> d!1763360 m!6559554))

(assert (=> b!5576542 d!1763360))

(declare-fun d!1763368 () Bool)

(declare-fun c!976432 () Bool)

(assert (=> d!1763368 (= c!976432 (isEmpty!34655 (tail!10988 s!2326)))))

(declare-fun e!3441629 () Bool)

(assert (=> d!1763368 (= (matchZipper!1695 (derivationStepZipper!1656 lt!2252699 (head!11893 s!2326)) (tail!10988 s!2326)) e!3441629)))

(declare-fun b!5577254 () Bool)

(assert (=> b!5577254 (= e!3441629 (nullableZipper!1556 (derivationStepZipper!1656 lt!2252699 (head!11893 s!2326))))))

(declare-fun b!5577255 () Bool)

(assert (=> b!5577255 (= e!3441629 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 lt!2252699 (head!11893 s!2326)) (head!11893 (tail!10988 s!2326))) (tail!10988 (tail!10988 s!2326))))))

(assert (= (and d!1763368 c!976432) b!5577254))

(assert (= (and d!1763368 (not c!976432)) b!5577255))

(assert (=> d!1763368 m!6559456))

(assert (=> d!1763368 m!6559622))

(assert (=> b!5577254 m!6559454))

(declare-fun m!6560212 () Bool)

(assert (=> b!5577254 m!6560212))

(assert (=> b!5577255 m!6559456))

(declare-fun m!6560214 () Bool)

(assert (=> b!5577255 m!6560214))

(assert (=> b!5577255 m!6559454))

(assert (=> b!5577255 m!6560214))

(declare-fun m!6560216 () Bool)

(assert (=> b!5577255 m!6560216))

(assert (=> b!5577255 m!6559456))

(declare-fun m!6560218 () Bool)

(assert (=> b!5577255 m!6560218))

(assert (=> b!5577255 m!6560216))

(assert (=> b!5577255 m!6560218))

(declare-fun m!6560220 () Bool)

(assert (=> b!5577255 m!6560220))

(assert (=> b!5576482 d!1763368))

(declare-fun bs!1290513 () Bool)

(declare-fun d!1763370 () Bool)

(assert (= bs!1290513 (and d!1763370 b!5576018)))

(declare-fun lambda!299000 () Int)

(assert (=> bs!1290513 (= (= (head!11893 s!2326) (h!69296 s!2326)) (= lambda!299000 lambda!298902))))

(declare-fun bs!1290514 () Bool)

(assert (= bs!1290514 (and d!1763370 d!1763042)))

(assert (=> bs!1290514 (= (= (head!11893 s!2326) (h!69296 s!2326)) (= lambda!299000 lambda!298946))))

(declare-fun bs!1290515 () Bool)

(assert (= bs!1290515 (and d!1763370 d!1763330)))

(assert (=> bs!1290515 (= (= (head!11893 s!2326) (head!11893 (t!376241 s!2326))) (= lambda!299000 lambda!298997))))

(assert (=> d!1763370 true))

(assert (=> d!1763370 (= (derivationStepZipper!1656 lt!2252699 (head!11893 s!2326)) (flatMap!1170 lt!2252699 lambda!299000))))

(declare-fun bs!1290516 () Bool)

(assert (= bs!1290516 d!1763370))

(declare-fun m!6560222 () Bool)

(assert (=> bs!1290516 m!6560222))

(assert (=> b!5576482 d!1763370))

(declare-fun d!1763372 () Bool)

(assert (=> d!1763372 (= (head!11893 s!2326) (h!69296 s!2326))))

(assert (=> b!5576482 d!1763372))

(assert (=> b!5576482 d!1763322))

(declare-fun b!5577282 () Bool)

(declare-fun e!3441648 () Bool)

(declare-fun e!3441650 () Bool)

(assert (=> b!5577282 (= e!3441648 e!3441650)))

(declare-fun res!2367140 () Bool)

(assert (=> b!5577282 (=> res!2367140 e!3441650)))

(assert (=> b!5577282 (= res!2367140 ((_ is Star!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5577283 () Bool)

(declare-fun e!3441652 () Bool)

(assert (=> b!5577283 (= e!3441652 e!3441648)))

(declare-fun res!2367138 () Bool)

(assert (=> b!5577283 (=> (not res!2367138) (not e!3441648))))

(assert (=> b!5577283 (= res!2367138 (and (not ((_ is EmptyLang!15557) (h!69294 (exprs!5441 (h!69295 zl!343))))) (not ((_ is ElementMatch!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun bm!416933 () Bool)

(declare-fun call!416939 () Bool)

(declare-fun c!976438 () Bool)

(assert (=> bm!416933 (= call!416939 (nullable!5589 (ite c!976438 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun b!5577284 () Bool)

(declare-fun e!3441649 () Bool)

(declare-fun e!3441653 () Bool)

(assert (=> b!5577284 (= e!3441649 e!3441653)))

(declare-fun res!2367139 () Bool)

(assert (=> b!5577284 (= res!2367139 call!416939)))

(assert (=> b!5577284 (=> res!2367139 e!3441653)))

(declare-fun b!5577286 () Bool)

(declare-fun e!3441651 () Bool)

(declare-fun call!416938 () Bool)

(assert (=> b!5577286 (= e!3441651 call!416938)))

(declare-fun bm!416934 () Bool)

(assert (=> bm!416934 (= call!416938 (nullable!5589 (ite c!976438 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun b!5577285 () Bool)

(assert (=> b!5577285 (= e!3441650 e!3441649)))

(assert (=> b!5577285 (= c!976438 ((_ is Union!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun d!1763374 () Bool)

(declare-fun res!2367141 () Bool)

(assert (=> d!1763374 (=> res!2367141 e!3441652)))

(assert (=> d!1763374 (= res!2367141 ((_ is EmptyExpr!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(assert (=> d!1763374 (= (nullableFct!1703 (h!69294 (exprs!5441 (h!69295 zl!343)))) e!3441652)))

(declare-fun b!5577287 () Bool)

(assert (=> b!5577287 (= e!3441653 call!416938)))

(declare-fun b!5577288 () Bool)

(assert (=> b!5577288 (= e!3441649 e!3441651)))

(declare-fun res!2367142 () Bool)

(assert (=> b!5577288 (= res!2367142 call!416939)))

(assert (=> b!5577288 (=> (not res!2367142) (not e!3441651))))

(assert (= (and d!1763374 (not res!2367141)) b!5577283))

(assert (= (and b!5577283 res!2367138) b!5577282))

(assert (= (and b!5577282 (not res!2367140)) b!5577285))

(assert (= (and b!5577285 c!976438) b!5577284))

(assert (= (and b!5577285 (not c!976438)) b!5577288))

(assert (= (and b!5577284 (not res!2367139)) b!5577287))

(assert (= (and b!5577288 res!2367142) b!5577286))

(assert (= (or b!5577287 b!5577286) bm!416934))

(assert (= (or b!5577284 b!5577288) bm!416933))

(declare-fun m!6560243 () Bool)

(assert (=> bm!416933 m!6560243))

(declare-fun m!6560246 () Bool)

(assert (=> bm!416934 m!6560246))

(assert (=> d!1763082 d!1763374))

(declare-fun d!1763386 () Bool)

(assert (=> d!1763386 (= (isEmptyLang!1127 lt!2252751) ((_ is EmptyLang!15557) lt!2252751))))

(assert (=> b!5576466 d!1763386))

(declare-fun d!1763388 () Bool)

(declare-fun lambda!299005 () Int)

(declare-fun exists!2159 ((InoxSet Context!9882) Int) Bool)

(assert (=> d!1763388 (= (nullableZipper!1556 lt!2252700) (exists!2159 lt!2252700 lambda!299005))))

(declare-fun bs!1290537 () Bool)

(assert (= bs!1290537 d!1763388))

(declare-fun m!6560262 () Bool)

(assert (=> bs!1290537 m!6560262))

(assert (=> b!5576483 d!1763388))

(assert (=> bm!416810 d!1763214))

(declare-fun d!1763394 () Bool)

(assert (=> d!1763394 (= (nullable!5589 (h!69294 (exprs!5441 lt!2252691))) (nullableFct!1703 (h!69294 (exprs!5441 lt!2252691))))))

(declare-fun bs!1290538 () Bool)

(assert (= bs!1290538 d!1763394))

(declare-fun m!6560265 () Bool)

(assert (=> bs!1290538 m!6560265))

(assert (=> b!5576743 d!1763394))

(declare-fun d!1763396 () Bool)

(assert (=> d!1763396 true))

(declare-fun setRes!37104 () Bool)

(assert (=> d!1763396 setRes!37104))

(declare-fun condSetEmpty!37104 () Bool)

(declare-fun res!2367154 () (InoxSet Context!9882))

(assert (=> d!1763396 (= condSetEmpty!37104 (= res!2367154 ((as const (Array Context!9882 Bool)) false)))))

(assert (=> d!1763396 (= (choose!42255 lt!2252699 lambda!298902) res!2367154)))

(declare-fun setIsEmpty!37104 () Bool)

(assert (=> setIsEmpty!37104 setRes!37104))

(declare-fun tp!1543301 () Bool)

(declare-fun setNonEmpty!37104 () Bool)

(declare-fun setElem!37104 () Context!9882)

(declare-fun e!3441665 () Bool)

(assert (=> setNonEmpty!37104 (= setRes!37104 (and tp!1543301 (inv!82139 setElem!37104) e!3441665))))

(declare-fun setRest!37104 () (InoxSet Context!9882))

(assert (=> setNonEmpty!37104 (= res!2367154 ((_ map or) (store ((as const (Array Context!9882 Bool)) false) setElem!37104 true) setRest!37104))))

(declare-fun b!5577308 () Bool)

(declare-fun tp!1543300 () Bool)

(assert (=> b!5577308 (= e!3441665 tp!1543300)))

(assert (= (and d!1763396 condSetEmpty!37104) setIsEmpty!37104))

(assert (= (and d!1763396 (not condSetEmpty!37104)) setNonEmpty!37104))

(assert (= setNonEmpty!37104 b!5577308))

(declare-fun m!6560270 () Bool)

(assert (=> setNonEmpty!37104 m!6560270))

(assert (=> d!1763046 d!1763396))

(declare-fun bs!1290539 () Bool)

(declare-fun d!1763400 () Bool)

(assert (= bs!1290539 (and d!1763400 d!1763070)))

(declare-fun lambda!299006 () Int)

(assert (=> bs!1290539 (= lambda!299006 lambda!298958)))

(declare-fun bs!1290540 () Bool)

(assert (= bs!1290540 (and d!1763400 d!1763252)))

(assert (=> bs!1290540 (= lambda!299006 lambda!298987)))

(declare-fun bs!1290541 () Bool)

(assert (= bs!1290541 (and d!1763400 d!1763014)))

(assert (=> bs!1290541 (= lambda!299006 lambda!298939)))

(declare-fun bs!1290542 () Bool)

(assert (= bs!1290542 (and d!1763400 d!1763022)))

(assert (=> bs!1290542 (= lambda!299006 lambda!298943)))

(declare-fun bs!1290543 () Bool)

(assert (= bs!1290543 (and d!1763400 d!1763012)))

(assert (=> bs!1290543 (= lambda!299006 lambda!298936)))

(declare-fun bs!1290544 () Bool)

(assert (= bs!1290544 (and d!1763400 d!1763308)))

(assert (=> bs!1290544 (= lambda!299006 lambda!298996)))

(declare-fun bs!1290545 () Bool)

(assert (= bs!1290545 (and d!1763400 d!1763016)))

(assert (=> bs!1290545 (= lambda!299006 lambda!298942)))

(declare-fun b!5577309 () Bool)

(declare-fun e!3441670 () Bool)

(declare-fun lt!2252815 () Regex!15557)

(assert (=> b!5577309 (= e!3441670 (isUnion!557 lt!2252815))))

(declare-fun b!5577310 () Bool)

(declare-fun e!3441671 () Bool)

(declare-fun e!3441668 () Bool)

(assert (=> b!5577310 (= e!3441671 e!3441668)))

(declare-fun c!976448 () Bool)

(assert (=> b!5577310 (= c!976448 (isEmpty!34651 (t!376239 (unfocusZipperList!985 zl!343))))))

(declare-fun b!5577311 () Bool)

(declare-fun e!3441666 () Regex!15557)

(assert (=> b!5577311 (= e!3441666 EmptyLang!15557)))

(declare-fun b!5577312 () Bool)

(assert (=> b!5577312 (= e!3441668 e!3441670)))

(declare-fun c!976445 () Bool)

(assert (=> b!5577312 (= c!976445 (isEmpty!34651 (tail!10987 (t!376239 (unfocusZipperList!985 zl!343)))))))

(declare-fun b!5577314 () Bool)

(assert (=> b!5577314 (= e!3441668 (isEmptyLang!1127 lt!2252815))))

(declare-fun b!5577315 () Bool)

(declare-fun e!3441669 () Regex!15557)

(assert (=> b!5577315 (= e!3441669 (h!69294 (t!376239 (unfocusZipperList!985 zl!343))))))

(declare-fun b!5577316 () Bool)

(assert (=> b!5577316 (= e!3441670 (= lt!2252815 (head!11892 (t!376239 (unfocusZipperList!985 zl!343)))))))

(declare-fun b!5577317 () Bool)

(declare-fun e!3441667 () Bool)

(assert (=> b!5577317 (= e!3441667 (isEmpty!34651 (t!376239 (t!376239 (unfocusZipperList!985 zl!343)))))))

(declare-fun b!5577318 () Bool)

(assert (=> b!5577318 (= e!3441666 (Union!15557 (h!69294 (t!376239 (unfocusZipperList!985 zl!343))) (generalisedUnion!1420 (t!376239 (t!376239 (unfocusZipperList!985 zl!343))))))))

(declare-fun b!5577313 () Bool)

(assert (=> b!5577313 (= e!3441669 e!3441666)))

(declare-fun c!976447 () Bool)

(assert (=> b!5577313 (= c!976447 ((_ is Cons!62846) (t!376239 (unfocusZipperList!985 zl!343))))))

(assert (=> d!1763400 e!3441671))

(declare-fun res!2367155 () Bool)

(assert (=> d!1763400 (=> (not res!2367155) (not e!3441671))))

(assert (=> d!1763400 (= res!2367155 (validRegex!7293 lt!2252815))))

(assert (=> d!1763400 (= lt!2252815 e!3441669)))

(declare-fun c!976446 () Bool)

(assert (=> d!1763400 (= c!976446 e!3441667)))

(declare-fun res!2367156 () Bool)

(assert (=> d!1763400 (=> (not res!2367156) (not e!3441667))))

(assert (=> d!1763400 (= res!2367156 ((_ is Cons!62846) (t!376239 (unfocusZipperList!985 zl!343))))))

(assert (=> d!1763400 (forall!14728 (t!376239 (unfocusZipperList!985 zl!343)) lambda!299006)))

(assert (=> d!1763400 (= (generalisedUnion!1420 (t!376239 (unfocusZipperList!985 zl!343))) lt!2252815)))

(assert (= (and d!1763400 res!2367156) b!5577317))

(assert (= (and d!1763400 c!976446) b!5577315))

(assert (= (and d!1763400 (not c!976446)) b!5577313))

(assert (= (and b!5577313 c!976447) b!5577318))

(assert (= (and b!5577313 (not c!976447)) b!5577311))

(assert (= (and d!1763400 res!2367155) b!5577310))

(assert (= (and b!5577310 c!976448) b!5577314))

(assert (= (and b!5577310 (not c!976448)) b!5577312))

(assert (= (and b!5577312 c!976445) b!5577316))

(assert (= (and b!5577312 (not c!976445)) b!5577309))

(declare-fun m!6560272 () Bool)

(assert (=> b!5577312 m!6560272))

(assert (=> b!5577312 m!6560272))

(declare-fun m!6560274 () Bool)

(assert (=> b!5577312 m!6560274))

(declare-fun m!6560276 () Bool)

(assert (=> d!1763400 m!6560276))

(declare-fun m!6560278 () Bool)

(assert (=> d!1763400 m!6560278))

(declare-fun m!6560280 () Bool)

(assert (=> b!5577309 m!6560280))

(assert (=> b!5577310 m!6559440))

(declare-fun m!6560282 () Bool)

(assert (=> b!5577316 m!6560282))

(declare-fun m!6560284 () Bool)

(assert (=> b!5577314 m!6560284))

(declare-fun m!6560286 () Bool)

(assert (=> b!5577318 m!6560286))

(declare-fun m!6560288 () Bool)

(assert (=> b!5577317 m!6560288))

(assert (=> b!5576470 d!1763400))

(declare-fun b!5577319 () Bool)

(declare-fun e!3441677 () (InoxSet Context!9882))

(declare-fun call!416946 () (InoxSet Context!9882))

(declare-fun call!416945 () (InoxSet Context!9882))

(assert (=> b!5577319 (= e!3441677 ((_ map or) call!416946 call!416945))))

(declare-fun b!5577320 () Bool)

(declare-fun e!3441672 () (InoxSet Context!9882))

(assert (=> b!5577320 (= e!3441672 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577321 () Bool)

(declare-fun call!416944 () (InoxSet Context!9882))

(assert (=> b!5577321 (= e!3441672 call!416944)))

(declare-fun b!5577322 () Bool)

(declare-fun c!976452 () Bool)

(declare-fun e!3441673 () Bool)

(assert (=> b!5577322 (= c!976452 e!3441673)))

(declare-fun res!2367157 () Bool)

(assert (=> b!5577322 (=> (not res!2367157) (not e!3441673))))

(assert (=> b!5577322 (= res!2367157 ((_ is Concat!24402) (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))))))

(declare-fun e!3441674 () (InoxSet Context!9882))

(assert (=> b!5577322 (= e!3441674 e!3441677)))

(declare-fun b!5577323 () Bool)

(declare-fun e!3441676 () (InoxSet Context!9882))

(assert (=> b!5577323 (= e!3441676 e!3441674)))

(declare-fun c!976453 () Bool)

(assert (=> b!5577323 (= c!976453 ((_ is Union!15557) (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))))))

(declare-fun b!5577324 () Bool)

(assert (=> b!5577324 (= e!3441676 (store ((as const (Array Context!9882 Bool)) false) (ite (or c!976248 c!976247) lt!2252691 (Context!9883 call!416796)) true))))

(declare-fun b!5577325 () Bool)

(assert (=> b!5577325 (= e!3441673 (nullable!5589 (regOne!31626 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292)))))))))))

(declare-fun c!976449 () Bool)

(declare-fun b!5577326 () Bool)

(assert (=> b!5577326 (= c!976449 ((_ is Star!15557) (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))))))

(declare-fun e!3441675 () (InoxSet Context!9882))

(assert (=> b!5577326 (= e!3441675 e!3441672)))

(declare-fun b!5577327 () Bool)

(declare-fun call!416941 () (InoxSet Context!9882))

(assert (=> b!5577327 (= e!3441674 ((_ map or) call!416941 call!416946))))

(declare-fun bm!416937 () Bool)

(assert (=> bm!416937 (= call!416945 call!416941)))

(declare-fun b!5577328 () Bool)

(assert (=> b!5577328 (= e!3441675 call!416944)))

(declare-fun call!416943 () List!62970)

(declare-fun bm!416938 () Bool)

(declare-fun c!976450 () Bool)

(assert (=> bm!416938 (= call!416943 ($colon$colon!1624 (exprs!5441 (ite (or c!976248 c!976247) lt!2252691 (Context!9883 call!416796))) (ite (or c!976452 c!976450) (regTwo!31626 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))) (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292)))))))))))

(declare-fun bm!416939 () Bool)

(declare-fun call!416942 () List!62970)

(assert (=> bm!416939 (= call!416941 (derivationStepZipperDown!899 (ite c!976453 (regOne!31627 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))) (ite c!976452 (regTwo!31626 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))) (ite c!976450 (regOne!31626 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))) (reg!15886 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292)))))))))) (ite (or c!976453 c!976452) (ite (or c!976248 c!976247) lt!2252691 (Context!9883 call!416796)) (Context!9883 call!416942)) (h!69296 s!2326)))))

(declare-fun b!5577329 () Bool)

(assert (=> b!5577329 (= e!3441677 e!3441675)))

(assert (=> b!5577329 (= c!976450 ((_ is Concat!24402) (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))))))

(declare-fun bm!416936 () Bool)

(assert (=> bm!416936 (= call!416944 call!416945)))

(declare-fun d!1763402 () Bool)

(declare-fun c!976451 () Bool)

(assert (=> d!1763402 (= c!976451 (and ((_ is ElementMatch!15557) (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))) (= (c!976080 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))) (h!69296 s!2326))))))

(assert (=> d!1763402 (= (derivationStepZipperDown!899 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292)))))) (ite (or c!976248 c!976247) lt!2252691 (Context!9883 call!416796)) (h!69296 s!2326)) e!3441676)))

(declare-fun bm!416940 () Bool)

(assert (=> bm!416940 (= call!416946 (derivationStepZipperDown!899 (ite c!976453 (regTwo!31627 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292))))))) (regOne!31626 (ite c!976248 (regOne!31627 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976247 (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (ite c!976245 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))) (reg!15886 (regTwo!31627 (regOne!31626 r!7292)))))))) (ite c!976453 (ite (or c!976248 c!976247) lt!2252691 (Context!9883 call!416796)) (Context!9883 call!416943)) (h!69296 s!2326)))))

(declare-fun bm!416941 () Bool)

(assert (=> bm!416941 (= call!416942 call!416943)))

(assert (= (and d!1763402 c!976451) b!5577324))

(assert (= (and d!1763402 (not c!976451)) b!5577323))

(assert (= (and b!5577323 c!976453) b!5577327))

(assert (= (and b!5577323 (not c!976453)) b!5577322))

(assert (= (and b!5577322 res!2367157) b!5577325))

(assert (= (and b!5577322 c!976452) b!5577319))

(assert (= (and b!5577322 (not c!976452)) b!5577329))

(assert (= (and b!5577329 c!976450) b!5577328))

(assert (= (and b!5577329 (not c!976450)) b!5577326))

(assert (= (and b!5577326 c!976449) b!5577321))

(assert (= (and b!5577326 (not c!976449)) b!5577320))

(assert (= (or b!5577328 b!5577321) bm!416941))

(assert (= (or b!5577328 b!5577321) bm!416936))

(assert (= (or b!5577319 bm!416941) bm!416938))

(assert (= (or b!5577319 bm!416936) bm!416937))

(assert (= (or b!5577327 b!5577319) bm!416940))

(assert (= (or b!5577327 bm!416937) bm!416939))

(declare-fun m!6560290 () Bool)

(assert (=> b!5577324 m!6560290))

(declare-fun m!6560292 () Bool)

(assert (=> bm!416938 m!6560292))

(declare-fun m!6560294 () Bool)

(assert (=> bm!416940 m!6560294))

(declare-fun m!6560296 () Bool)

(assert (=> b!5577325 m!6560296))

(declare-fun m!6560298 () Bool)

(assert (=> bm!416939 m!6560298))

(assert (=> bm!416793 d!1763402))

(assert (=> d!1763058 d!1763052))

(declare-fun d!1763404 () Bool)

(assert (=> d!1763404 (= (Exists!2657 lambda!298949) (choose!42257 lambda!298949))))

(declare-fun bs!1290546 () Bool)

(assert (= bs!1290546 d!1763404))

(declare-fun m!6560300 () Bool)

(assert (=> bs!1290546 m!6560300))

(assert (=> d!1763058 d!1763404))

(declare-fun b!5577350 () Bool)

(declare-fun e!3441692 () Bool)

(declare-fun call!416951 () Bool)

(assert (=> b!5577350 (= e!3441692 call!416951)))

(declare-fun bm!416946 () Bool)

(declare-fun call!416952 () Bool)

(declare-fun c!976464 () Bool)

(assert (=> bm!416946 (= call!416952 (validRegex!7293 (ite c!976464 (regOne!31627 (regOne!31626 r!7292)) (regOne!31626 (regOne!31626 r!7292)))))))

(declare-fun b!5577351 () Bool)

(declare-fun res!2367161 () Bool)

(declare-fun e!3441690 () Bool)

(assert (=> b!5577351 (=> res!2367161 e!3441690)))

(assert (=> b!5577351 (= res!2367161 (not ((_ is Concat!24402) (regOne!31626 r!7292))))))

(declare-fun e!3441689 () Bool)

(assert (=> b!5577351 (= e!3441689 e!3441690)))

(declare-fun b!5577352 () Bool)

(declare-fun e!3441694 () Bool)

(assert (=> b!5577352 (= e!3441694 e!3441689)))

(assert (=> b!5577352 (= c!976464 ((_ is Union!15557) (regOne!31626 r!7292)))))

(declare-fun bm!416947 () Bool)

(declare-fun call!416953 () Bool)

(assert (=> bm!416947 (= call!416951 call!416953)))

(declare-fun b!5577353 () Bool)

(declare-fun e!3441693 () Bool)

(assert (=> b!5577353 (= e!3441694 e!3441693)))

(declare-fun res!2367158 () Bool)

(assert (=> b!5577353 (= res!2367158 (not (nullable!5589 (reg!15886 (regOne!31626 r!7292)))))))

(assert (=> b!5577353 (=> (not res!2367158) (not e!3441693))))

(declare-fun bm!416948 () Bool)

(declare-fun c!976465 () Bool)

(assert (=> bm!416948 (= call!416953 (validRegex!7293 (ite c!976465 (reg!15886 (regOne!31626 r!7292)) (ite c!976464 (regTwo!31627 (regOne!31626 r!7292)) (regTwo!31626 (regOne!31626 r!7292))))))))

(declare-fun b!5577354 () Bool)

(assert (=> b!5577354 (= e!3441693 call!416953)))

(declare-fun b!5577356 () Bool)

(declare-fun res!2367162 () Bool)

(declare-fun e!3441688 () Bool)

(assert (=> b!5577356 (=> (not res!2367162) (not e!3441688))))

(assert (=> b!5577356 (= res!2367162 call!416952)))

(assert (=> b!5577356 (= e!3441689 e!3441688)))

(declare-fun b!5577357 () Bool)

(assert (=> b!5577357 (= e!3441688 call!416951)))

(declare-fun b!5577358 () Bool)

(assert (=> b!5577358 (= e!3441690 e!3441692)))

(declare-fun res!2367160 () Bool)

(assert (=> b!5577358 (=> (not res!2367160) (not e!3441692))))

(assert (=> b!5577358 (= res!2367160 call!416952)))

(declare-fun d!1763406 () Bool)

(declare-fun res!2367159 () Bool)

(declare-fun e!3441691 () Bool)

(assert (=> d!1763406 (=> res!2367159 e!3441691)))

(assert (=> d!1763406 (= res!2367159 ((_ is ElementMatch!15557) (regOne!31626 r!7292)))))

(assert (=> d!1763406 (= (validRegex!7293 (regOne!31626 r!7292)) e!3441691)))

(declare-fun b!5577355 () Bool)

(assert (=> b!5577355 (= e!3441691 e!3441694)))

(assert (=> b!5577355 (= c!976465 ((_ is Star!15557) (regOne!31626 r!7292)))))

(assert (= (and d!1763406 (not res!2367159)) b!5577355))

(assert (= (and b!5577355 c!976465) b!5577353))

(assert (= (and b!5577355 (not c!976465)) b!5577352))

(assert (= (and b!5577353 res!2367158) b!5577354))

(assert (= (and b!5577352 c!976464) b!5577356))

(assert (= (and b!5577352 (not c!976464)) b!5577351))

(assert (= (and b!5577356 res!2367162) b!5577357))

(assert (= (and b!5577351 (not res!2367161)) b!5577358))

(assert (= (and b!5577358 res!2367160) b!5577350))

(assert (= (or b!5577357 b!5577350) bm!416947))

(assert (= (or b!5577356 b!5577358) bm!416946))

(assert (= (or b!5577354 bm!416947) bm!416948))

(declare-fun m!6560302 () Bool)

(assert (=> bm!416946 m!6560302))

(declare-fun m!6560304 () Bool)

(assert (=> b!5577353 m!6560304))

(declare-fun m!6560306 () Bool)

(assert (=> bm!416948 m!6560306))

(assert (=> d!1763058 d!1763406))

(assert (=> d!1763058 d!1763062))

(declare-fun bs!1290551 () Bool)

(declare-fun d!1763408 () Bool)

(assert (= bs!1290551 (and d!1763408 b!5576005)))

(declare-fun lambda!299010 () Int)

(assert (=> bs!1290551 (= lambda!299010 lambda!298900)))

(declare-fun bs!1290554 () Bool)

(assert (= bs!1290554 (and d!1763408 b!5576666)))

(assert (=> bs!1290554 (not (= lambda!299010 lambda!298963))))

(declare-fun bs!1290557 () Bool)

(assert (= bs!1290557 (and d!1763408 d!1763060)))

(assert (=> bs!1290557 (= lambda!299010 lambda!298954)))

(declare-fun bs!1290559 () Bool)

(assert (= bs!1290559 (and d!1763408 d!1763058)))

(assert (=> bs!1290559 (= lambda!299010 lambda!298949)))

(declare-fun bs!1290561 () Bool)

(assert (= bs!1290561 (and d!1763408 b!5576668)))

(assert (=> bs!1290561 (not (= lambda!299010 lambda!298964))))

(assert (=> bs!1290551 (not (= lambda!299010 lambda!298901))))

(assert (=> bs!1290557 (not (= lambda!299010 lambda!298955))))

(assert (=> d!1763408 true))

(assert (=> d!1763408 true))

(assert (=> d!1763408 true))

(assert (=> d!1763408 (= (isDefined!12269 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326)) (Exists!2657 lambda!299010))))

(assert (=> d!1763408 true))

(declare-fun _$89!1674 () Unit!155600)

(assert (=> d!1763408 (= (choose!42258 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326) _$89!1674)))

(declare-fun bs!1290562 () Bool)

(assert (= bs!1290562 d!1763408))

(assert (=> bs!1290562 m!6559078))

(assert (=> bs!1290562 m!6559078))

(assert (=> bs!1290562 m!6559080))

(declare-fun m!6560328 () Bool)

(assert (=> bs!1290562 m!6560328))

(assert (=> d!1763058 d!1763408))

(declare-fun b!5577394 () Bool)

(declare-fun e!3441718 () (InoxSet Context!9882))

(declare-fun call!416969 () (InoxSet Context!9882))

(declare-fun call!416968 () (InoxSet Context!9882))

(assert (=> b!5577394 (= e!3441718 ((_ map or) call!416969 call!416968))))

(declare-fun b!5577395 () Bool)

(declare-fun e!3441713 () (InoxSet Context!9882))

(assert (=> b!5577395 (= e!3441713 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577396 () Bool)

(declare-fun call!416967 () (InoxSet Context!9882))

(assert (=> b!5577396 (= e!3441713 call!416967)))

(declare-fun b!5577397 () Bool)

(declare-fun c!976480 () Bool)

(declare-fun e!3441714 () Bool)

(assert (=> b!5577397 (= c!976480 e!3441714)))

(declare-fun res!2367176 () Bool)

(assert (=> b!5577397 (=> (not res!2367176) (not e!3441714))))

(assert (=> b!5577397 (= res!2367176 ((_ is Concat!24402) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun e!3441715 () (InoxSet Context!9882))

(assert (=> b!5577397 (= e!3441715 e!3441718)))

(declare-fun b!5577398 () Bool)

(declare-fun e!3441717 () (InoxSet Context!9882))

(assert (=> b!5577398 (= e!3441717 e!3441715)))

(declare-fun c!976481 () Bool)

(assert (=> b!5577398 (= c!976481 ((_ is Union!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5577399 () Bool)

(assert (=> b!5577399 (= e!3441717 (store ((as const (Array Context!9882 Bool)) false) (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))) true))))

(declare-fun b!5577400 () Bool)

(assert (=> b!5577400 (= e!3441714 (nullable!5589 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun b!5577401 () Bool)

(declare-fun c!976477 () Bool)

(assert (=> b!5577401 (= c!976477 ((_ is Star!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun e!3441716 () (InoxSet Context!9882))

(assert (=> b!5577401 (= e!3441716 e!3441713)))

(declare-fun b!5577402 () Bool)

(declare-fun call!416964 () (InoxSet Context!9882))

(assert (=> b!5577402 (= e!3441715 ((_ map or) call!416964 call!416969))))

(declare-fun bm!416960 () Bool)

(assert (=> bm!416960 (= call!416968 call!416964)))

(declare-fun b!5577403 () Bool)

(assert (=> b!5577403 (= e!3441716 call!416967)))

(declare-fun c!976478 () Bool)

(declare-fun bm!416961 () Bool)

(declare-fun call!416966 () List!62970)

(assert (=> bm!416961 (= call!416966 ($colon$colon!1624 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343))))) (ite (or c!976480 c!976478) (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (h!69294 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun bm!416962 () Bool)

(declare-fun call!416965 () List!62970)

(assert (=> bm!416962 (= call!416964 (derivationStepZipperDown!899 (ite c!976481 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976480 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976478 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343))))))) (ite (or c!976481 c!976480) (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))) (Context!9883 call!416965)) (h!69296 s!2326)))))

(declare-fun b!5577404 () Bool)

(assert (=> b!5577404 (= e!3441718 e!3441716)))

(assert (=> b!5577404 (= c!976478 ((_ is Concat!24402) (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun bm!416959 () Bool)

(assert (=> bm!416959 (= call!416967 call!416968)))

(declare-fun d!1763418 () Bool)

(declare-fun c!976479 () Bool)

(assert (=> d!1763418 (= c!976479 (and ((_ is ElementMatch!15557) (h!69294 (exprs!5441 (h!69295 zl!343)))) (= (c!976080 (h!69294 (exprs!5441 (h!69295 zl!343)))) (h!69296 s!2326))))))

(assert (=> d!1763418 (= (derivationStepZipperDown!899 (h!69294 (exprs!5441 (h!69295 zl!343))) (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))) (h!69296 s!2326)) e!3441717)))

(declare-fun bm!416963 () Bool)

(assert (=> bm!416963 (= call!416969 (derivationStepZipperDown!899 (ite c!976481 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))) (ite c!976481 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))) (Context!9883 call!416966)) (h!69296 s!2326)))))

(declare-fun bm!416964 () Bool)

(assert (=> bm!416964 (= call!416965 call!416966)))

(assert (= (and d!1763418 c!976479) b!5577399))

(assert (= (and d!1763418 (not c!976479)) b!5577398))

(assert (= (and b!5577398 c!976481) b!5577402))

(assert (= (and b!5577398 (not c!976481)) b!5577397))

(assert (= (and b!5577397 res!2367176) b!5577400))

(assert (= (and b!5577397 c!976480) b!5577394))

(assert (= (and b!5577397 (not c!976480)) b!5577404))

(assert (= (and b!5577404 c!976478) b!5577403))

(assert (= (and b!5577404 (not c!976478)) b!5577401))

(assert (= (and b!5577401 c!976477) b!5577396))

(assert (= (and b!5577401 (not c!976477)) b!5577395))

(assert (= (or b!5577403 b!5577396) bm!416964))

(assert (= (or b!5577403 b!5577396) bm!416959))

(assert (= (or b!5577394 bm!416964) bm!416961))

(assert (= (or b!5577394 bm!416959) bm!416960))

(assert (= (or b!5577402 b!5577394) bm!416963))

(assert (= (or b!5577402 bm!416960) bm!416962))

(declare-fun m!6560342 () Bool)

(assert (=> b!5577399 m!6560342))

(declare-fun m!6560344 () Bool)

(assert (=> bm!416961 m!6560344))

(declare-fun m!6560346 () Bool)

(assert (=> bm!416963 m!6560346))

(assert (=> b!5577400 m!6559644))

(declare-fun m!6560352 () Bool)

(assert (=> bm!416962 m!6560352))

(assert (=> bm!416818 d!1763418))

(assert (=> bs!1290340 d!1763044))

(declare-fun d!1763424 () Bool)

(assert (=> d!1763424 (= (isDefined!12269 lt!2252775) (not (isEmpty!34656 lt!2252775)))))

(declare-fun bs!1290563 () Bool)

(assert (= bs!1290563 d!1763424))

(declare-fun m!6560354 () Bool)

(assert (=> bs!1290563 m!6560354))

(assert (=> b!5576537 d!1763424))

(assert (=> d!1763088 d!1763094))

(declare-fun d!1763428 () Bool)

(assert (=> d!1763428 (= (flatMap!1170 z!1189 lambda!298902) (dynLambda!24579 lambda!298902 (h!69295 zl!343)))))

(assert (=> d!1763428 true))

(declare-fun _$13!2149 () Unit!155600)

(assert (=> d!1763428 (= (choose!42256 z!1189 (h!69295 zl!343) lambda!298902) _$13!2149)))

(declare-fun b_lambda!211419 () Bool)

(assert (=> (not b_lambda!211419) (not d!1763428)))

(declare-fun bs!1290568 () Bool)

(assert (= bs!1290568 d!1763428))

(assert (=> bs!1290568 m!6559118))

(assert (=> bs!1290568 m!6559648))

(assert (=> d!1763088 d!1763428))

(assert (=> b!5576715 d!1763372))

(declare-fun d!1763430 () Bool)

(assert (=> d!1763430 (= (nullable!5589 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (nullableFct!1703 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun bs!1290572 () Bool)

(assert (= bs!1290572 d!1763430))

(declare-fun m!6560356 () Bool)

(assert (=> bs!1290572 m!6560356))

(assert (=> b!5576722 d!1763430))

(declare-fun b!5577407 () Bool)

(declare-fun e!3441726 () (InoxSet Context!9882))

(declare-fun call!416975 () (InoxSet Context!9882))

(declare-fun call!416974 () (InoxSet Context!9882))

(assert (=> b!5577407 (= e!3441726 ((_ map or) call!416975 call!416974))))

(declare-fun b!5577408 () Bool)

(declare-fun e!3441721 () (InoxSet Context!9882))

(assert (=> b!5577408 (= e!3441721 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577409 () Bool)

(declare-fun call!416973 () (InoxSet Context!9882))

(assert (=> b!5577409 (= e!3441721 call!416973)))

(declare-fun b!5577410 () Bool)

(declare-fun c!976485 () Bool)

(declare-fun e!3441722 () Bool)

(assert (=> b!5577410 (= c!976485 e!3441722)))

(declare-fun res!2367179 () Bool)

(assert (=> b!5577410 (=> (not res!2367179) (not e!3441722))))

(assert (=> b!5577410 (= res!2367179 ((_ is Concat!24402) (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun e!3441723 () (InoxSet Context!9882))

(assert (=> b!5577410 (= e!3441723 e!3441726)))

(declare-fun b!5577411 () Bool)

(declare-fun e!3441725 () (InoxSet Context!9882))

(assert (=> b!5577411 (= e!3441725 e!3441723)))

(declare-fun c!976486 () Bool)

(assert (=> b!5577411 (= c!976486 ((_ is Union!15557) (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun b!5577412 () Bool)

(assert (=> b!5577412 (= e!3441725 (store ((as const (Array Context!9882 Bool)) false) (ite (or c!976294 c!976293) lt!2252691 (Context!9883 call!416818)) true))))

(declare-fun b!5577413 () Bool)

(assert (=> b!5577413 (= e!3441722 (nullable!5589 (regOne!31626 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343))))))))))))

(declare-fun b!5577414 () Bool)

(declare-fun c!976482 () Bool)

(assert (=> b!5577414 (= c!976482 ((_ is Star!15557) (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun e!3441724 () (InoxSet Context!9882))

(assert (=> b!5577414 (= e!3441724 e!3441721)))

(declare-fun b!5577415 () Bool)

(declare-fun call!416970 () (InoxSet Context!9882))

(assert (=> b!5577415 (= e!3441723 ((_ map or) call!416970 call!416975))))

(declare-fun bm!416966 () Bool)

(assert (=> bm!416966 (= call!416974 call!416970)))

(declare-fun b!5577416 () Bool)

(assert (=> b!5577416 (= e!3441724 call!416973)))

(declare-fun bm!416967 () Bool)

(declare-fun call!416972 () List!62970)

(declare-fun c!976483 () Bool)

(assert (=> bm!416967 (= call!416972 ($colon$colon!1624 (exprs!5441 (ite (or c!976294 c!976293) lt!2252691 (Context!9883 call!416818))) (ite (or c!976485 c!976483) (regTwo!31626 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))) (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343))))))))))))

(declare-fun bm!416968 () Bool)

(declare-fun call!416971 () List!62970)

(assert (=> bm!416968 (= call!416970 (derivationStepZipperDown!899 (ite c!976486 (regOne!31627 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))) (ite c!976485 (regTwo!31626 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))) (ite c!976483 (regOne!31626 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))) (reg!15886 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343))))))))))) (ite (or c!976486 c!976485) (ite (or c!976294 c!976293) lt!2252691 (Context!9883 call!416818)) (Context!9883 call!416971)) (h!69296 s!2326)))))

(declare-fun b!5577417 () Bool)

(assert (=> b!5577417 (= e!3441726 e!3441724)))

(assert (=> b!5577417 (= c!976483 ((_ is Concat!24402) (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun bm!416965 () Bool)

(assert (=> bm!416965 (= call!416973 call!416974)))

(declare-fun c!976484 () Bool)

(declare-fun d!1763432 () Bool)

(assert (=> d!1763432 (= c!976484 (and ((_ is ElementMatch!15557) (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))) (= (c!976080 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))) (h!69296 s!2326))))))

(assert (=> d!1763432 (= (derivationStepZipperDown!899 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343))))))) (ite (or c!976294 c!976293) lt!2252691 (Context!9883 call!416818)) (h!69296 s!2326)) e!3441725)))

(declare-fun bm!416969 () Bool)

(assert (=> bm!416969 (= call!416975 (derivationStepZipperDown!899 (ite c!976486 (regTwo!31627 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343)))))))) (regOne!31626 (ite c!976294 (regOne!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976293 (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (ite c!976291 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (reg!15886 (h!69294 (exprs!5441 (h!69295 zl!343))))))))) (ite c!976486 (ite (or c!976294 c!976293) lt!2252691 (Context!9883 call!416818)) (Context!9883 call!416972)) (h!69296 s!2326)))))

(declare-fun bm!416970 () Bool)

(assert (=> bm!416970 (= call!416971 call!416972)))

(assert (= (and d!1763432 c!976484) b!5577412))

(assert (= (and d!1763432 (not c!976484)) b!5577411))

(assert (= (and b!5577411 c!976486) b!5577415))

(assert (= (and b!5577411 (not c!976486)) b!5577410))

(assert (= (and b!5577410 res!2367179) b!5577413))

(assert (= (and b!5577410 c!976485) b!5577407))

(assert (= (and b!5577410 (not c!976485)) b!5577417))

(assert (= (and b!5577417 c!976483) b!5577416))

(assert (= (and b!5577417 (not c!976483)) b!5577414))

(assert (= (and b!5577414 c!976482) b!5577409))

(assert (= (and b!5577414 (not c!976482)) b!5577408))

(assert (= (or b!5577416 b!5577409) bm!416970))

(assert (= (or b!5577416 b!5577409) bm!416965))

(assert (= (or b!5577407 bm!416970) bm!416967))

(assert (= (or b!5577407 bm!416965) bm!416966))

(assert (= (or b!5577415 b!5577407) bm!416969))

(assert (= (or b!5577415 bm!416966) bm!416968))

(declare-fun m!6560374 () Bool)

(assert (=> b!5577412 m!6560374))

(declare-fun m!6560376 () Bool)

(assert (=> bm!416967 m!6560376))

(declare-fun m!6560378 () Bool)

(assert (=> bm!416969 m!6560378))

(declare-fun m!6560385 () Bool)

(assert (=> b!5577413 m!6560385))

(declare-fun m!6560396 () Bool)

(assert (=> bm!416968 m!6560396))

(assert (=> bm!416815 d!1763432))

(declare-fun d!1763442 () Bool)

(assert (=> d!1763442 (= ($colon$colon!1624 (exprs!5441 lt!2252691) (ite (or c!976252 c!976250) (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (regOne!31627 (regOne!31626 r!7292)))) (Cons!62846 (ite (or c!976252 c!976250) (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))) (regOne!31627 (regOne!31626 r!7292))) (exprs!5441 lt!2252691)))))

(assert (=> bm!416798 d!1763442))

(declare-fun d!1763444 () Bool)

(assert (=> d!1763444 (= (Exists!2657 (ite c!976278 lambda!298963 lambda!298964)) (choose!42257 (ite c!976278 lambda!298963 lambda!298964)))))

(declare-fun bs!1290575 () Bool)

(assert (= bs!1290575 d!1763444))

(declare-fun m!6560398 () Bool)

(assert (=> bs!1290575 m!6560398))

(assert (=> bm!416807 d!1763444))

(declare-fun d!1763446 () Bool)

(assert (=> d!1763446 (= (isUnion!557 lt!2252751) ((_ is Union!15557) lt!2252751))))

(assert (=> b!5576461 d!1763446))

(declare-fun d!1763448 () Bool)

(assert (=> d!1763448 (= (isEmpty!34651 (exprs!5441 (h!69295 zl!343))) ((_ is Nil!62846) (exprs!5441 (h!69295 zl!343))))))

(assert (=> b!5576624 d!1763448))

(declare-fun bs!1290576 () Bool)

(declare-fun d!1763450 () Bool)

(assert (= bs!1290576 (and d!1763450 d!1763388)))

(declare-fun lambda!299012 () Int)

(assert (=> bs!1290576 (= lambda!299012 lambda!299005)))

(assert (=> d!1763450 (= (nullableZipper!1556 ((_ map or) lt!2252684 lt!2252702)) (exists!2159 ((_ map or) lt!2252684 lt!2252702) lambda!299012))))

(declare-fun bs!1290577 () Bool)

(assert (= bs!1290577 d!1763450))

(declare-fun m!6560400 () Bool)

(assert (=> bs!1290577 m!6560400))

(assert (=> b!5576632 d!1763450))

(declare-fun d!1763452 () Bool)

(assert (=> d!1763452 (= (isEmpty!34651 (t!376239 (unfocusZipperList!985 zl!343))) ((_ is Nil!62846) (t!376239 (unfocusZipperList!985 zl!343))))))

(assert (=> b!5576469 d!1763452))

(declare-fun bs!1290578 () Bool)

(declare-fun d!1763454 () Bool)

(assert (= bs!1290578 (and d!1763454 d!1763388)))

(declare-fun lambda!299013 () Int)

(assert (=> bs!1290578 (= lambda!299013 lambda!299005)))

(declare-fun bs!1290579 () Bool)

(assert (= bs!1290579 (and d!1763454 d!1763450)))

(assert (=> bs!1290579 (= lambda!299013 lambda!299012)))

(assert (=> d!1763454 (= (nullableZipper!1556 lt!2252699) (exists!2159 lt!2252699 lambda!299013))))

(declare-fun bs!1290580 () Bool)

(assert (= bs!1290580 d!1763454))

(declare-fun m!6560402 () Bool)

(assert (=> bs!1290580 m!6560402))

(assert (=> b!5576481 d!1763454))

(assert (=> d!1763024 d!1763238))

(declare-fun d!1763456 () Bool)

(assert (=> d!1763456 true))

(assert (=> d!1763456 true))

(declare-fun res!2367186 () Bool)

(assert (=> d!1763456 (= (choose!42257 lambda!298901) res!2367186)))

(assert (=> d!1763054 d!1763456))

(assert (=> d!1763078 d!1763214))

(assert (=> d!1763078 d!1763010))

(declare-fun b!5577426 () Bool)

(declare-fun e!3441736 () (InoxSet Context!9882))

(declare-fun call!416981 () (InoxSet Context!9882))

(declare-fun call!416980 () (InoxSet Context!9882))

(assert (=> b!5577426 (= e!3441736 ((_ map or) call!416981 call!416980))))

(declare-fun b!5577427 () Bool)

(declare-fun e!3441731 () (InoxSet Context!9882))

(assert (=> b!5577427 (= e!3441731 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577428 () Bool)

(declare-fun call!416979 () (InoxSet Context!9882))

(assert (=> b!5577428 (= e!3441731 call!416979)))

(declare-fun b!5577429 () Bool)

(declare-fun c!976492 () Bool)

(declare-fun e!3441732 () Bool)

(assert (=> b!5577429 (= c!976492 e!3441732)))

(declare-fun res!2367187 () Bool)

(assert (=> b!5577429 (=> (not res!2367187) (not e!3441732))))

(assert (=> b!5577429 (= res!2367187 ((_ is Concat!24402) (h!69294 (exprs!5441 lt!2252704))))))

(declare-fun e!3441733 () (InoxSet Context!9882))

(assert (=> b!5577429 (= e!3441733 e!3441736)))

(declare-fun b!5577430 () Bool)

(declare-fun e!3441735 () (InoxSet Context!9882))

(assert (=> b!5577430 (= e!3441735 e!3441733)))

(declare-fun c!976493 () Bool)

(assert (=> b!5577430 (= c!976493 ((_ is Union!15557) (h!69294 (exprs!5441 lt!2252704))))))

(declare-fun b!5577431 () Bool)

(assert (=> b!5577431 (= e!3441735 (store ((as const (Array Context!9882 Bool)) false) (Context!9883 (t!376239 (exprs!5441 lt!2252704))) true))))

(declare-fun b!5577432 () Bool)

(assert (=> b!5577432 (= e!3441732 (nullable!5589 (regOne!31626 (h!69294 (exprs!5441 lt!2252704)))))))

(declare-fun b!5577433 () Bool)

(declare-fun c!976489 () Bool)

(assert (=> b!5577433 (= c!976489 ((_ is Star!15557) (h!69294 (exprs!5441 lt!2252704))))))

(declare-fun e!3441734 () (InoxSet Context!9882))

(assert (=> b!5577433 (= e!3441734 e!3441731)))

(declare-fun b!5577434 () Bool)

(declare-fun call!416976 () (InoxSet Context!9882))

(assert (=> b!5577434 (= e!3441733 ((_ map or) call!416976 call!416981))))

(declare-fun bm!416972 () Bool)

(assert (=> bm!416972 (= call!416980 call!416976)))

(declare-fun b!5577435 () Bool)

(assert (=> b!5577435 (= e!3441734 call!416979)))

(declare-fun c!976490 () Bool)

(declare-fun call!416978 () List!62970)

(declare-fun bm!416973 () Bool)

(assert (=> bm!416973 (= call!416978 ($colon$colon!1624 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252704)))) (ite (or c!976492 c!976490) (regTwo!31626 (h!69294 (exprs!5441 lt!2252704))) (h!69294 (exprs!5441 lt!2252704)))))))

(declare-fun call!416977 () List!62970)

(declare-fun bm!416974 () Bool)

(assert (=> bm!416974 (= call!416976 (derivationStepZipperDown!899 (ite c!976493 (regOne!31627 (h!69294 (exprs!5441 lt!2252704))) (ite c!976492 (regTwo!31626 (h!69294 (exprs!5441 lt!2252704))) (ite c!976490 (regOne!31626 (h!69294 (exprs!5441 lt!2252704))) (reg!15886 (h!69294 (exprs!5441 lt!2252704)))))) (ite (or c!976493 c!976492) (Context!9883 (t!376239 (exprs!5441 lt!2252704))) (Context!9883 call!416977)) (h!69296 s!2326)))))

(declare-fun b!5577436 () Bool)

(assert (=> b!5577436 (= e!3441736 e!3441734)))

(assert (=> b!5577436 (= c!976490 ((_ is Concat!24402) (h!69294 (exprs!5441 lt!2252704))))))

(declare-fun bm!416971 () Bool)

(assert (=> bm!416971 (= call!416979 call!416980)))

(declare-fun d!1763458 () Bool)

(declare-fun c!976491 () Bool)

(assert (=> d!1763458 (= c!976491 (and ((_ is ElementMatch!15557) (h!69294 (exprs!5441 lt!2252704))) (= (c!976080 (h!69294 (exprs!5441 lt!2252704))) (h!69296 s!2326))))))

(assert (=> d!1763458 (= (derivationStepZipperDown!899 (h!69294 (exprs!5441 lt!2252704)) (Context!9883 (t!376239 (exprs!5441 lt!2252704))) (h!69296 s!2326)) e!3441735)))

(declare-fun bm!416975 () Bool)

(assert (=> bm!416975 (= call!416981 (derivationStepZipperDown!899 (ite c!976493 (regTwo!31627 (h!69294 (exprs!5441 lt!2252704))) (regOne!31626 (h!69294 (exprs!5441 lt!2252704)))) (ite c!976493 (Context!9883 (t!376239 (exprs!5441 lt!2252704))) (Context!9883 call!416978)) (h!69296 s!2326)))))

(declare-fun bm!416976 () Bool)

(assert (=> bm!416976 (= call!416977 call!416978)))

(assert (= (and d!1763458 c!976491) b!5577431))

(assert (= (and d!1763458 (not c!976491)) b!5577430))

(assert (= (and b!5577430 c!976493) b!5577434))

(assert (= (and b!5577430 (not c!976493)) b!5577429))

(assert (= (and b!5577429 res!2367187) b!5577432))

(assert (= (and b!5577429 c!976492) b!5577426))

(assert (= (and b!5577429 (not c!976492)) b!5577436))

(assert (= (and b!5577436 c!976490) b!5577435))

(assert (= (and b!5577436 (not c!976490)) b!5577433))

(assert (= (and b!5577433 c!976489) b!5577428))

(assert (= (and b!5577433 (not c!976489)) b!5577427))

(assert (= (or b!5577435 b!5577428) bm!416976))

(assert (= (or b!5577435 b!5577428) bm!416971))

(assert (= (or b!5577426 bm!416976) bm!416973))

(assert (= (or b!5577426 bm!416971) bm!416972))

(assert (= (or b!5577434 b!5577426) bm!416975))

(assert (= (or b!5577434 bm!416972) bm!416974))

(declare-fun m!6560408 () Bool)

(assert (=> b!5577431 m!6560408))

(declare-fun m!6560410 () Bool)

(assert (=> bm!416973 m!6560410))

(declare-fun m!6560412 () Bool)

(assert (=> bm!416975 m!6560412))

(declare-fun m!6560414 () Bool)

(assert (=> b!5577432 m!6560414))

(declare-fun m!6560416 () Bool)

(assert (=> bm!416974 m!6560416))

(assert (=> bm!416777 d!1763458))

(declare-fun d!1763462 () Bool)

(assert (=> d!1763462 (= (isConcat!639 lt!2252784) ((_ is Concat!24402) lt!2252784))))

(assert (=> b!5576628 d!1763462))

(declare-fun b!5577446 () Bool)

(declare-fun e!3441746 () Bool)

(declare-fun call!416982 () Bool)

(assert (=> b!5577446 (= e!3441746 call!416982)))

(declare-fun bm!416977 () Bool)

(declare-fun call!416983 () Bool)

(declare-fun c!976496 () Bool)

(assert (=> bm!416977 (= call!416983 (validRegex!7293 (ite c!976496 (regOne!31627 lt!2252751) (regOne!31626 lt!2252751))))))

(declare-fun b!5577447 () Bool)

(declare-fun res!2367196 () Bool)

(declare-fun e!3441744 () Bool)

(assert (=> b!5577447 (=> res!2367196 e!3441744)))

(assert (=> b!5577447 (= res!2367196 (not ((_ is Concat!24402) lt!2252751)))))

(declare-fun e!3441743 () Bool)

(assert (=> b!5577447 (= e!3441743 e!3441744)))

(declare-fun b!5577448 () Bool)

(declare-fun e!3441748 () Bool)

(assert (=> b!5577448 (= e!3441748 e!3441743)))

(assert (=> b!5577448 (= c!976496 ((_ is Union!15557) lt!2252751))))

(declare-fun bm!416978 () Bool)

(declare-fun call!416984 () Bool)

(assert (=> bm!416978 (= call!416982 call!416984)))

(declare-fun b!5577449 () Bool)

(declare-fun e!3441747 () Bool)

(assert (=> b!5577449 (= e!3441748 e!3441747)))

(declare-fun res!2367193 () Bool)

(assert (=> b!5577449 (= res!2367193 (not (nullable!5589 (reg!15886 lt!2252751))))))

(assert (=> b!5577449 (=> (not res!2367193) (not e!3441747))))

(declare-fun bm!416979 () Bool)

(declare-fun c!976497 () Bool)

(assert (=> bm!416979 (= call!416984 (validRegex!7293 (ite c!976497 (reg!15886 lt!2252751) (ite c!976496 (regTwo!31627 lt!2252751) (regTwo!31626 lt!2252751)))))))

(declare-fun b!5577450 () Bool)

(assert (=> b!5577450 (= e!3441747 call!416984)))

(declare-fun b!5577452 () Bool)

(declare-fun res!2367197 () Bool)

(declare-fun e!3441742 () Bool)

(assert (=> b!5577452 (=> (not res!2367197) (not e!3441742))))

(assert (=> b!5577452 (= res!2367197 call!416983)))

(assert (=> b!5577452 (= e!3441743 e!3441742)))

(declare-fun b!5577453 () Bool)

(assert (=> b!5577453 (= e!3441742 call!416982)))

(declare-fun b!5577454 () Bool)

(assert (=> b!5577454 (= e!3441744 e!3441746)))

(declare-fun res!2367195 () Bool)

(assert (=> b!5577454 (=> (not res!2367195) (not e!3441746))))

(assert (=> b!5577454 (= res!2367195 call!416983)))

(declare-fun d!1763464 () Bool)

(declare-fun res!2367194 () Bool)

(declare-fun e!3441745 () Bool)

(assert (=> d!1763464 (=> res!2367194 e!3441745)))

(assert (=> d!1763464 (= res!2367194 ((_ is ElementMatch!15557) lt!2252751))))

(assert (=> d!1763464 (= (validRegex!7293 lt!2252751) e!3441745)))

(declare-fun b!5577451 () Bool)

(assert (=> b!5577451 (= e!3441745 e!3441748)))

(assert (=> b!5577451 (= c!976497 ((_ is Star!15557) lt!2252751))))

(assert (= (and d!1763464 (not res!2367194)) b!5577451))

(assert (= (and b!5577451 c!976497) b!5577449))

(assert (= (and b!5577451 (not c!976497)) b!5577448))

(assert (= (and b!5577449 res!2367193) b!5577450))

(assert (= (and b!5577448 c!976496) b!5577452))

(assert (= (and b!5577448 (not c!976496)) b!5577447))

(assert (= (and b!5577452 res!2367197) b!5577453))

(assert (= (and b!5577447 (not res!2367196)) b!5577454))

(assert (= (and b!5577454 res!2367195) b!5577446))

(assert (= (or b!5577453 b!5577446) bm!416978))

(assert (= (or b!5577452 b!5577454) bm!416977))

(assert (= (or b!5577450 bm!416978) bm!416979))

(declare-fun m!6560440 () Bool)

(assert (=> bm!416977 m!6560440))

(declare-fun m!6560442 () Bool)

(assert (=> b!5577449 m!6560442))

(declare-fun m!6560444 () Bool)

(assert (=> bm!416979 m!6560444))

(assert (=> d!1763012 d!1763464))

(declare-fun d!1763466 () Bool)

(declare-fun res!2367198 () Bool)

(declare-fun e!3441749 () Bool)

(assert (=> d!1763466 (=> res!2367198 e!3441749)))

(assert (=> d!1763466 (= res!2367198 ((_ is Nil!62846) (unfocusZipperList!985 zl!343)))))

(assert (=> d!1763466 (= (forall!14728 (unfocusZipperList!985 zl!343) lambda!298936) e!3441749)))

(declare-fun b!5577455 () Bool)

(declare-fun e!3441750 () Bool)

(assert (=> b!5577455 (= e!3441749 e!3441750)))

(declare-fun res!2367199 () Bool)

(assert (=> b!5577455 (=> (not res!2367199) (not e!3441750))))

(assert (=> b!5577455 (= res!2367199 (dynLambda!24580 lambda!298936 (h!69294 (unfocusZipperList!985 zl!343))))))

(declare-fun b!5577456 () Bool)

(assert (=> b!5577456 (= e!3441750 (forall!14728 (t!376239 (unfocusZipperList!985 zl!343)) lambda!298936))))

(assert (= (and d!1763466 (not res!2367198)) b!5577455))

(assert (= (and b!5577455 res!2367199) b!5577456))

(declare-fun b_lambda!211423 () Bool)

(assert (=> (not b_lambda!211423) (not b!5577455)))

(declare-fun m!6560446 () Bool)

(assert (=> b!5577455 m!6560446))

(declare-fun m!6560448 () Bool)

(assert (=> b!5577456 m!6560448))

(assert (=> d!1763012 d!1763466))

(declare-fun b!5577462 () Bool)

(declare-fun e!3441755 () Bool)

(assert (=> b!5577462 (= e!3441755 (matchR!7742 (derivativeStep!4410 (regOne!31626 r!7292) (head!11893 (_1!35957 (get!21637 lt!2252775)))) (tail!10988 (_1!35957 (get!21637 lt!2252775)))))))

(declare-fun b!5577463 () Bool)

(declare-fun e!3441758 () Bool)

(assert (=> b!5577463 (= e!3441758 (not (= (head!11893 (_1!35957 (get!21637 lt!2252775))) (c!976080 (regOne!31626 r!7292)))))))

(declare-fun b!5577464 () Bool)

(declare-fun res!2367204 () Bool)

(declare-fun e!3441756 () Bool)

(assert (=> b!5577464 (=> res!2367204 e!3441756)))

(assert (=> b!5577464 (= res!2367204 (not ((_ is ElementMatch!15557) (regOne!31626 r!7292))))))

(declare-fun e!3441753 () Bool)

(assert (=> b!5577464 (= e!3441753 e!3441756)))

(declare-fun b!5577465 () Bool)

(assert (=> b!5577465 (= e!3441755 (nullable!5589 (regOne!31626 r!7292)))))

(declare-fun b!5577466 () Bool)

(declare-fun lt!2252828 () Bool)

(assert (=> b!5577466 (= e!3441753 (not lt!2252828))))

(declare-fun b!5577467 () Bool)

(declare-fun e!3441754 () Bool)

(declare-fun call!416985 () Bool)

(assert (=> b!5577467 (= e!3441754 (= lt!2252828 call!416985))))

(declare-fun b!5577468 () Bool)

(declare-fun res!2367202 () Bool)

(declare-fun e!3441759 () Bool)

(assert (=> b!5577468 (=> (not res!2367202) (not e!3441759))))

(assert (=> b!5577468 (= res!2367202 (not call!416985))))

(declare-fun b!5577469 () Bool)

(declare-fun res!2367201 () Bool)

(assert (=> b!5577469 (=> (not res!2367201) (not e!3441759))))

(assert (=> b!5577469 (= res!2367201 (isEmpty!34655 (tail!10988 (_1!35957 (get!21637 lt!2252775)))))))

(declare-fun b!5577470 () Bool)

(declare-fun e!3441757 () Bool)

(assert (=> b!5577470 (= e!3441757 e!3441758)))

(declare-fun res!2367207 () Bool)

(assert (=> b!5577470 (=> res!2367207 e!3441758)))

(assert (=> b!5577470 (= res!2367207 call!416985)))

(declare-fun b!5577471 () Bool)

(assert (=> b!5577471 (= e!3441754 e!3441753)))

(declare-fun c!976498 () Bool)

(assert (=> b!5577471 (= c!976498 ((_ is EmptyLang!15557) (regOne!31626 r!7292)))))

(declare-fun d!1763468 () Bool)

(assert (=> d!1763468 e!3441754))

(declare-fun c!976499 () Bool)

(assert (=> d!1763468 (= c!976499 ((_ is EmptyExpr!15557) (regOne!31626 r!7292)))))

(assert (=> d!1763468 (= lt!2252828 e!3441755)))

(declare-fun c!976500 () Bool)

(assert (=> d!1763468 (= c!976500 (isEmpty!34655 (_1!35957 (get!21637 lt!2252775))))))

(assert (=> d!1763468 (validRegex!7293 (regOne!31626 r!7292))))

(assert (=> d!1763468 (= (matchR!7742 (regOne!31626 r!7292) (_1!35957 (get!21637 lt!2252775))) lt!2252828)))

(declare-fun b!5577472 () Bool)

(assert (=> b!5577472 (= e!3441759 (= (head!11893 (_1!35957 (get!21637 lt!2252775))) (c!976080 (regOne!31626 r!7292))))))

(declare-fun bm!416980 () Bool)

(assert (=> bm!416980 (= call!416985 (isEmpty!34655 (_1!35957 (get!21637 lt!2252775))))))

(declare-fun b!5577473 () Bool)

(declare-fun res!2367206 () Bool)

(assert (=> b!5577473 (=> res!2367206 e!3441756)))

(assert (=> b!5577473 (= res!2367206 e!3441759)))

(declare-fun res!2367205 () Bool)

(assert (=> b!5577473 (=> (not res!2367205) (not e!3441759))))

(assert (=> b!5577473 (= res!2367205 lt!2252828)))

(declare-fun b!5577474 () Bool)

(declare-fun res!2367203 () Bool)

(assert (=> b!5577474 (=> res!2367203 e!3441758)))

(assert (=> b!5577474 (= res!2367203 (not (isEmpty!34655 (tail!10988 (_1!35957 (get!21637 lt!2252775))))))))

(declare-fun b!5577475 () Bool)

(assert (=> b!5577475 (= e!3441756 e!3441757)))

(declare-fun res!2367200 () Bool)

(assert (=> b!5577475 (=> (not res!2367200) (not e!3441757))))

(assert (=> b!5577475 (= res!2367200 (not lt!2252828))))

(assert (= (and d!1763468 c!976500) b!5577465))

(assert (= (and d!1763468 (not c!976500)) b!5577462))

(assert (= (and d!1763468 c!976499) b!5577467))

(assert (= (and d!1763468 (not c!976499)) b!5577471))

(assert (= (and b!5577471 c!976498) b!5577466))

(assert (= (and b!5577471 (not c!976498)) b!5577464))

(assert (= (and b!5577464 (not res!2367204)) b!5577473))

(assert (= (and b!5577473 res!2367205) b!5577468))

(assert (= (and b!5577468 res!2367202) b!5577469))

(assert (= (and b!5577469 res!2367201) b!5577472))

(assert (= (and b!5577473 (not res!2367206)) b!5577475))

(assert (= (and b!5577475 res!2367200) b!5577470))

(assert (= (and b!5577470 (not res!2367207)) b!5577474))

(assert (= (and b!5577474 (not res!2367203)) b!5577463))

(assert (= (or b!5577467 b!5577468 b!5577470) bm!416980))

(declare-fun m!6560450 () Bool)

(assert (=> b!5577463 m!6560450))

(declare-fun m!6560452 () Bool)

(assert (=> bm!416980 m!6560452))

(assert (=> d!1763468 m!6560452))

(assert (=> d!1763468 m!6559554))

(declare-fun m!6560454 () Bool)

(assert (=> b!5577474 m!6560454))

(assert (=> b!5577474 m!6560454))

(declare-fun m!6560456 () Bool)

(assert (=> b!5577474 m!6560456))

(assert (=> b!5577472 m!6560450))

(assert (=> b!5577469 m!6560454))

(assert (=> b!5577469 m!6560454))

(assert (=> b!5577469 m!6560456))

(declare-fun m!6560458 () Bool)

(assert (=> b!5577465 m!6560458))

(assert (=> b!5577462 m!6560450))

(assert (=> b!5577462 m!6560450))

(declare-fun m!6560460 () Bool)

(assert (=> b!5577462 m!6560460))

(assert (=> b!5577462 m!6560454))

(assert (=> b!5577462 m!6560460))

(assert (=> b!5577462 m!6560454))

(declare-fun m!6560462 () Bool)

(assert (=> b!5577462 m!6560462))

(assert (=> b!5576536 d!1763468))

(assert (=> b!5576536 d!1763270))

(declare-fun d!1763470 () Bool)

(assert (=> d!1763470 true))

(assert (=> d!1763470 true))

(declare-fun res!2367208 () Bool)

(assert (=> d!1763470 (= (choose!42257 lambda!298900) res!2367208)))

(assert (=> d!1763056 d!1763470))

(declare-fun call!416986 () (InoxSet Context!9882))

(declare-fun e!3441770 () (InoxSet Context!9882))

(declare-fun b!5577512 () Bool)

(assert (=> b!5577512 (= e!3441770 ((_ map or) call!416986 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343))))))) (h!69296 s!2326))))))

(declare-fun b!5577513 () Bool)

(declare-fun e!3441771 () (InoxSet Context!9882))

(assert (=> b!5577513 (= e!3441771 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577514 () Bool)

(assert (=> b!5577514 (= e!3441771 call!416986)))

(declare-fun b!5577515 () Bool)

(declare-fun e!3441769 () Bool)

(assert (=> b!5577515 (= e!3441769 (nullable!5589 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343))))))))))

(declare-fun d!1763472 () Bool)

(declare-fun c!976501 () Bool)

(assert (=> d!1763472 (= c!976501 e!3441769)))

(declare-fun res!2367209 () Bool)

(assert (=> d!1763472 (=> (not res!2367209) (not e!3441769))))

(assert (=> d!1763472 (= res!2367209 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))))))))

(assert (=> d!1763472 (= (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))) (h!69296 s!2326)) e!3441770)))

(declare-fun b!5577516 () Bool)

(assert (=> b!5577516 (= e!3441770 e!3441771)))

(declare-fun c!976502 () Bool)

(assert (=> b!5577516 (= c!976502 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun bm!416981 () Bool)

(assert (=> bm!416981 (= call!416986 (derivationStepZipperDown!899 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343)))))) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (h!69295 zl!343))))))) (h!69296 s!2326)))))

(assert (= (and d!1763472 res!2367209) b!5577515))

(assert (= (and d!1763472 c!976501) b!5577512))

(assert (= (and d!1763472 (not c!976501)) b!5577516))

(assert (= (and b!5577516 c!976502) b!5577514))

(assert (= (and b!5577516 (not c!976502)) b!5577513))

(assert (= (or b!5577512 b!5577514) bm!416981))

(declare-fun m!6560464 () Bool)

(assert (=> b!5577512 m!6560464))

(declare-fun m!6560466 () Bool)

(assert (=> b!5577515 m!6560466))

(declare-fun m!6560468 () Bool)

(assert (=> bm!416981 m!6560468))

(assert (=> b!5576735 d!1763472))

(declare-fun d!1763474 () Bool)

(declare-fun c!976503 () Bool)

(assert (=> d!1763474 (= c!976503 (isEmpty!34655 (tail!10988 (t!376241 s!2326))))))

(declare-fun e!3441777 () Bool)

(assert (=> d!1763474 (= (matchZipper!1695 (derivationStepZipper!1656 lt!2252684 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))) e!3441777)))

(declare-fun b!5577525 () Bool)

(assert (=> b!5577525 (= e!3441777 (nullableZipper!1556 (derivationStepZipper!1656 lt!2252684 (head!11893 (t!376241 s!2326)))))))

(declare-fun b!5577526 () Bool)

(assert (=> b!5577526 (= e!3441777 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 lt!2252684 (head!11893 (t!376241 s!2326))) (head!11893 (tail!10988 (t!376241 s!2326)))) (tail!10988 (tail!10988 (t!376241 s!2326)))))))

(assert (= (and d!1763474 c!976503) b!5577525))

(assert (= (and d!1763474 (not c!976503)) b!5577526))

(assert (=> d!1763474 m!6559468))

(assert (=> d!1763474 m!6560078))

(assert (=> b!5577525 m!6559476))

(declare-fun m!6560472 () Bool)

(assert (=> b!5577525 m!6560472))

(assert (=> b!5577526 m!6559468))

(assert (=> b!5577526 m!6560084))

(assert (=> b!5577526 m!6559476))

(assert (=> b!5577526 m!6560084))

(declare-fun m!6560474 () Bool)

(assert (=> b!5577526 m!6560474))

(assert (=> b!5577526 m!6559468))

(assert (=> b!5577526 m!6560092))

(assert (=> b!5577526 m!6560474))

(assert (=> b!5577526 m!6560092))

(declare-fun m!6560476 () Bool)

(assert (=> b!5577526 m!6560476))

(assert (=> b!5576486 d!1763474))

(declare-fun bs!1290582 () Bool)

(declare-fun d!1763476 () Bool)

(assert (= bs!1290582 (and d!1763476 b!5576018)))

(declare-fun lambda!299014 () Int)

(assert (=> bs!1290582 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299014 lambda!298902))))

(declare-fun bs!1290583 () Bool)

(assert (= bs!1290583 (and d!1763476 d!1763042)))

(assert (=> bs!1290583 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299014 lambda!298946))))

(declare-fun bs!1290584 () Bool)

(assert (= bs!1290584 (and d!1763476 d!1763330)))

(assert (=> bs!1290584 (= lambda!299014 lambda!298997)))

(declare-fun bs!1290585 () Bool)

(assert (= bs!1290585 (and d!1763476 d!1763370)))

(assert (=> bs!1290585 (= (= (head!11893 (t!376241 s!2326)) (head!11893 s!2326)) (= lambda!299014 lambda!299000))))

(assert (=> d!1763476 true))

(assert (=> d!1763476 (= (derivationStepZipper!1656 lt!2252684 (head!11893 (t!376241 s!2326))) (flatMap!1170 lt!2252684 lambda!299014))))

(declare-fun bs!1290586 () Bool)

(assert (= bs!1290586 d!1763476))

(declare-fun m!6560478 () Bool)

(assert (=> bs!1290586 m!6560478))

(assert (=> b!5576486 d!1763476))

(assert (=> b!5576486 d!1763334))

(assert (=> b!5576486 d!1763336))

(assert (=> d!1763028 d!1763238))

(declare-fun d!1763478 () Bool)

(declare-fun res!2367210 () Bool)

(declare-fun e!3441784 () Bool)

(assert (=> d!1763478 (=> res!2367210 e!3441784)))

(assert (=> d!1763478 (= res!2367210 ((_ is Nil!62846) (exprs!5441 (h!69295 zl!343))))))

(assert (=> d!1763478 (= (forall!14728 (exprs!5441 (h!69295 zl!343)) lambda!298943) e!3441784)))

(declare-fun b!5577548 () Bool)

(declare-fun e!3441786 () Bool)

(assert (=> b!5577548 (= e!3441784 e!3441786)))

(declare-fun res!2367211 () Bool)

(assert (=> b!5577548 (=> (not res!2367211) (not e!3441786))))

(assert (=> b!5577548 (= res!2367211 (dynLambda!24580 lambda!298943 (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun b!5577549 () Bool)

(assert (=> b!5577549 (= e!3441786 (forall!14728 (t!376239 (exprs!5441 (h!69295 zl!343))) lambda!298943))))

(assert (= (and d!1763478 (not res!2367210)) b!5577548))

(assert (= (and b!5577548 res!2367211) b!5577549))

(declare-fun b_lambda!211425 () Bool)

(assert (=> (not b_lambda!211425) (not b!5577548)))

(declare-fun m!6560480 () Bool)

(assert (=> b!5577548 m!6560480))

(declare-fun m!6560482 () Bool)

(assert (=> b!5577549 m!6560482))

(assert (=> d!1763022 d!1763478))

(assert (=> d!1763026 d!1763238))

(assert (=> b!5576493 d!1763038))

(declare-fun d!1763480 () Bool)

(declare-fun c!976506 () Bool)

(assert (=> d!1763480 (= c!976506 ((_ is Nil!62847) lt!2252760))))

(declare-fun e!3441799 () (InoxSet Context!9882))

(assert (=> d!1763480 (= (content!11325 lt!2252760) e!3441799)))

(declare-fun b!5577598 () Bool)

(assert (=> b!5577598 (= e!3441799 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577599 () Bool)

(assert (=> b!5577599 (= e!3441799 ((_ map or) (store ((as const (Array Context!9882 Bool)) false) (h!69295 lt!2252760) true) (content!11325 (t!376240 lt!2252760))))))

(assert (= (and d!1763480 c!976506) b!5577598))

(assert (= (and d!1763480 (not c!976506)) b!5577599))

(declare-fun m!6560484 () Bool)

(assert (=> b!5577599 m!6560484))

(declare-fun m!6560486 () Bool)

(assert (=> b!5577599 m!6560486))

(assert (=> b!5576496 d!1763480))

(declare-fun d!1763482 () Bool)

(assert (=> d!1763482 (= ($colon$colon!1624 (exprs!5441 lt!2252691) (ite (or c!976247 c!976245) (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (regTwo!31627 (regOne!31626 r!7292)))) (Cons!62846 (ite (or c!976247 c!976245) (regTwo!31626 (regTwo!31627 (regOne!31626 r!7292))) (regTwo!31627 (regOne!31626 r!7292))) (exprs!5441 lt!2252691)))))

(assert (=> bm!416792 d!1763482))

(declare-fun b!5577602 () Bool)

(declare-fun e!3441804 () Bool)

(assert (=> b!5577602 (= e!3441804 (matchR!7742 (derivativeStep!4410 (regTwo!31626 r!7292) (head!11893 s!2326)) (tail!10988 s!2326)))))

(declare-fun b!5577603 () Bool)

(declare-fun e!3441807 () Bool)

(assert (=> b!5577603 (= e!3441807 (not (= (head!11893 s!2326) (c!976080 (regTwo!31626 r!7292)))))))

(declare-fun b!5577604 () Bool)

(declare-fun res!2367216 () Bool)

(declare-fun e!3441805 () Bool)

(assert (=> b!5577604 (=> res!2367216 e!3441805)))

(assert (=> b!5577604 (= res!2367216 (not ((_ is ElementMatch!15557) (regTwo!31626 r!7292))))))

(declare-fun e!3441802 () Bool)

(assert (=> b!5577604 (= e!3441802 e!3441805)))

(declare-fun b!5577605 () Bool)

(assert (=> b!5577605 (= e!3441804 (nullable!5589 (regTwo!31626 r!7292)))))

(declare-fun b!5577606 () Bool)

(declare-fun lt!2252829 () Bool)

(assert (=> b!5577606 (= e!3441802 (not lt!2252829))))

(declare-fun b!5577607 () Bool)

(declare-fun e!3441803 () Bool)

(declare-fun call!416987 () Bool)

(assert (=> b!5577607 (= e!3441803 (= lt!2252829 call!416987))))

(declare-fun b!5577608 () Bool)

(declare-fun res!2367214 () Bool)

(declare-fun e!3441808 () Bool)

(assert (=> b!5577608 (=> (not res!2367214) (not e!3441808))))

(assert (=> b!5577608 (= res!2367214 (not call!416987))))

(declare-fun b!5577609 () Bool)

(declare-fun res!2367213 () Bool)

(assert (=> b!5577609 (=> (not res!2367213) (not e!3441808))))

(assert (=> b!5577609 (= res!2367213 (isEmpty!34655 (tail!10988 s!2326)))))

(declare-fun b!5577610 () Bool)

(declare-fun e!3441806 () Bool)

(assert (=> b!5577610 (= e!3441806 e!3441807)))

(declare-fun res!2367219 () Bool)

(assert (=> b!5577610 (=> res!2367219 e!3441807)))

(assert (=> b!5577610 (= res!2367219 call!416987)))

(declare-fun b!5577611 () Bool)

(assert (=> b!5577611 (= e!3441803 e!3441802)))

(declare-fun c!976507 () Bool)

(assert (=> b!5577611 (= c!976507 ((_ is EmptyLang!15557) (regTwo!31626 r!7292)))))

(declare-fun d!1763484 () Bool)

(assert (=> d!1763484 e!3441803))

(declare-fun c!976508 () Bool)

(assert (=> d!1763484 (= c!976508 ((_ is EmptyExpr!15557) (regTwo!31626 r!7292)))))

(assert (=> d!1763484 (= lt!2252829 e!3441804)))

(declare-fun c!976509 () Bool)

(assert (=> d!1763484 (= c!976509 (isEmpty!34655 s!2326))))

(assert (=> d!1763484 (validRegex!7293 (regTwo!31626 r!7292))))

(assert (=> d!1763484 (= (matchR!7742 (regTwo!31626 r!7292) s!2326) lt!2252829)))

(declare-fun b!5577612 () Bool)

(assert (=> b!5577612 (= e!3441808 (= (head!11893 s!2326) (c!976080 (regTwo!31626 r!7292))))))

(declare-fun bm!416982 () Bool)

(assert (=> bm!416982 (= call!416987 (isEmpty!34655 s!2326))))

(declare-fun b!5577613 () Bool)

(declare-fun res!2367218 () Bool)

(assert (=> b!5577613 (=> res!2367218 e!3441805)))

(assert (=> b!5577613 (= res!2367218 e!3441808)))

(declare-fun res!2367217 () Bool)

(assert (=> b!5577613 (=> (not res!2367217) (not e!3441808))))

(assert (=> b!5577613 (= res!2367217 lt!2252829)))

(declare-fun b!5577614 () Bool)

(declare-fun res!2367215 () Bool)

(assert (=> b!5577614 (=> res!2367215 e!3441807)))

(assert (=> b!5577614 (= res!2367215 (not (isEmpty!34655 (tail!10988 s!2326))))))

(declare-fun b!5577615 () Bool)

(assert (=> b!5577615 (= e!3441805 e!3441806)))

(declare-fun res!2367212 () Bool)

(assert (=> b!5577615 (=> (not res!2367212) (not e!3441806))))

(assert (=> b!5577615 (= res!2367212 (not lt!2252829))))

(assert (= (and d!1763484 c!976509) b!5577605))

(assert (= (and d!1763484 (not c!976509)) b!5577602))

(assert (= (and d!1763484 c!976508) b!5577607))

(assert (= (and d!1763484 (not c!976508)) b!5577611))

(assert (= (and b!5577611 c!976507) b!5577606))

(assert (= (and b!5577611 (not c!976507)) b!5577604))

(assert (= (and b!5577604 (not res!2367216)) b!5577613))

(assert (= (and b!5577613 res!2367217) b!5577608))

(assert (= (and b!5577608 res!2367214) b!5577609))

(assert (= (and b!5577609 res!2367213) b!5577612))

(assert (= (and b!5577613 (not res!2367218)) b!5577615))

(assert (= (and b!5577615 res!2367212) b!5577610))

(assert (= (and b!5577610 (not res!2367219)) b!5577614))

(assert (= (and b!5577614 (not res!2367215)) b!5577603))

(assert (= (or b!5577607 b!5577608 b!5577610) bm!416982))

(assert (=> b!5577603 m!6559452))

(assert (=> bm!416982 m!6559448))

(assert (=> d!1763484 m!6559448))

(declare-fun m!6560496 () Bool)

(assert (=> d!1763484 m!6560496))

(assert (=> b!5577614 m!6559456))

(assert (=> b!5577614 m!6559456))

(assert (=> b!5577614 m!6559622))

(assert (=> b!5577612 m!6559452))

(assert (=> b!5577609 m!6559456))

(assert (=> b!5577609 m!6559456))

(assert (=> b!5577609 m!6559622))

(declare-fun m!6560500 () Bool)

(assert (=> b!5577605 m!6560500))

(assert (=> b!5577602 m!6559452))

(assert (=> b!5577602 m!6559452))

(declare-fun m!6560502 () Bool)

(assert (=> b!5577602 m!6560502))

(assert (=> b!5577602 m!6559456))

(assert (=> b!5577602 m!6560502))

(assert (=> b!5577602 m!6559456))

(declare-fun m!6560504 () Bool)

(assert (=> b!5577602 m!6560504))

(assert (=> b!5576540 d!1763484))

(declare-fun d!1763496 () Bool)

(assert (=> d!1763496 (= (nullable!5589 (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))) (nullableFct!1703 (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))))))

(declare-fun bs!1290592 () Bool)

(assert (= bs!1290592 d!1763496))

(declare-fun m!6560506 () Bool)

(assert (=> bs!1290592 m!6560506))

(assert (=> b!5576596 d!1763496))

(declare-fun bs!1290593 () Bool)

(declare-fun d!1763498 () Bool)

(assert (= bs!1290593 (and d!1763498 d!1763252)))

(declare-fun lambda!299015 () Int)

(assert (=> bs!1290593 (= lambda!299015 lambda!298987)))

(declare-fun bs!1290594 () Bool)

(assert (= bs!1290594 (and d!1763498 d!1763014)))

(assert (=> bs!1290594 (= lambda!299015 lambda!298939)))

(declare-fun bs!1290595 () Bool)

(assert (= bs!1290595 (and d!1763498 d!1763022)))

(assert (=> bs!1290595 (= lambda!299015 lambda!298943)))

(declare-fun bs!1290596 () Bool)

(assert (= bs!1290596 (and d!1763498 d!1763012)))

(assert (=> bs!1290596 (= lambda!299015 lambda!298936)))

(declare-fun bs!1290597 () Bool)

(assert (= bs!1290597 (and d!1763498 d!1763308)))

(assert (=> bs!1290597 (= lambda!299015 lambda!298996)))

(declare-fun bs!1290598 () Bool)

(assert (= bs!1290598 (and d!1763498 d!1763016)))

(assert (=> bs!1290598 (= lambda!299015 lambda!298942)))

(declare-fun bs!1290599 () Bool)

(assert (= bs!1290599 (and d!1763498 d!1763070)))

(assert (=> bs!1290599 (= lambda!299015 lambda!298958)))

(declare-fun bs!1290600 () Bool)

(assert (= bs!1290600 (and d!1763498 d!1763400)))

(assert (=> bs!1290600 (= lambda!299015 lambda!299006)))

(assert (=> d!1763498 (= (inv!82139 setElem!37097) (forall!14728 (exprs!5441 setElem!37097) lambda!299015))))

(declare-fun bs!1290601 () Bool)

(assert (= bs!1290601 d!1763498))

(declare-fun m!6560508 () Bool)

(assert (=> bs!1290601 m!6560508))

(assert (=> setNonEmpty!37097 d!1763498))

(assert (=> b!5576706 d!1763372))

(declare-fun d!1763500 () Bool)

(declare-fun c!976510 () Bool)

(assert (=> d!1763500 (= c!976510 (isEmpty!34655 (tail!10988 (t!376241 s!2326))))))

(declare-fun e!3441809 () Bool)

(assert (=> d!1763500 (= (matchZipper!1695 (derivationStepZipper!1656 lt!2252687 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))) e!3441809)))

(declare-fun b!5577616 () Bool)

(assert (=> b!5577616 (= e!3441809 (nullableZipper!1556 (derivationStepZipper!1656 lt!2252687 (head!11893 (t!376241 s!2326)))))))

(declare-fun b!5577617 () Bool)

(assert (=> b!5577617 (= e!3441809 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 lt!2252687 (head!11893 (t!376241 s!2326))) (head!11893 (tail!10988 (t!376241 s!2326)))) (tail!10988 (tail!10988 (t!376241 s!2326)))))))

(assert (= (and d!1763500 c!976510) b!5577616))

(assert (= (and d!1763500 (not c!976510)) b!5577617))

(assert (=> d!1763500 m!6559468))

(assert (=> d!1763500 m!6560078))

(assert (=> b!5577616 m!6559488))

(declare-fun m!6560510 () Bool)

(assert (=> b!5577616 m!6560510))

(assert (=> b!5577617 m!6559468))

(assert (=> b!5577617 m!6560084))

(assert (=> b!5577617 m!6559488))

(assert (=> b!5577617 m!6560084))

(declare-fun m!6560512 () Bool)

(assert (=> b!5577617 m!6560512))

(assert (=> b!5577617 m!6559468))

(assert (=> b!5577617 m!6560092))

(assert (=> b!5577617 m!6560512))

(assert (=> b!5577617 m!6560092))

(declare-fun m!6560514 () Bool)

(assert (=> b!5577617 m!6560514))

(assert (=> b!5576490 d!1763500))

(declare-fun bs!1290602 () Bool)

(declare-fun d!1763502 () Bool)

(assert (= bs!1290602 (and d!1763502 d!1763330)))

(declare-fun lambda!299016 () Int)

(assert (=> bs!1290602 (= lambda!299016 lambda!298997)))

(declare-fun bs!1290603 () Bool)

(assert (= bs!1290603 (and d!1763502 d!1763370)))

(assert (=> bs!1290603 (= (= (head!11893 (t!376241 s!2326)) (head!11893 s!2326)) (= lambda!299016 lambda!299000))))

(declare-fun bs!1290604 () Bool)

(assert (= bs!1290604 (and d!1763502 d!1763476)))

(assert (=> bs!1290604 (= lambda!299016 lambda!299014)))

(declare-fun bs!1290605 () Bool)

(assert (= bs!1290605 (and d!1763502 d!1763042)))

(assert (=> bs!1290605 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299016 lambda!298946))))

(declare-fun bs!1290606 () Bool)

(assert (= bs!1290606 (and d!1763502 b!5576018)))

(assert (=> bs!1290606 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299016 lambda!298902))))

(assert (=> d!1763502 true))

(assert (=> d!1763502 (= (derivationStepZipper!1656 lt!2252687 (head!11893 (t!376241 s!2326))) (flatMap!1170 lt!2252687 lambda!299016))))

(declare-fun bs!1290607 () Bool)

(assert (= bs!1290607 d!1763502))

(declare-fun m!6560516 () Bool)

(assert (=> bs!1290607 m!6560516))

(assert (=> b!5576490 d!1763502))

(assert (=> b!5576490 d!1763334))

(assert (=> b!5576490 d!1763336))

(assert (=> b!5576627 d!1763064))

(declare-fun d!1763504 () Bool)

(declare-fun c!976511 () Bool)

(assert (=> d!1763504 (= c!976511 (isEmpty!34655 (tail!10988 (t!376241 s!2326))))))

(declare-fun e!3441810 () Bool)

(assert (=> d!1763504 (= (matchZipper!1695 (derivationStepZipper!1656 lt!2252701 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))) e!3441810)))

(declare-fun b!5577618 () Bool)

(assert (=> b!5577618 (= e!3441810 (nullableZipper!1556 (derivationStepZipper!1656 lt!2252701 (head!11893 (t!376241 s!2326)))))))

(declare-fun b!5577619 () Bool)

(assert (=> b!5577619 (= e!3441810 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 lt!2252701 (head!11893 (t!376241 s!2326))) (head!11893 (tail!10988 (t!376241 s!2326)))) (tail!10988 (tail!10988 (t!376241 s!2326)))))))

(assert (= (and d!1763504 c!976511) b!5577618))

(assert (= (and d!1763504 (not c!976511)) b!5577619))

(assert (=> d!1763504 m!6559468))

(assert (=> d!1763504 m!6560078))

(assert (=> b!5577618 m!6559482))

(declare-fun m!6560518 () Bool)

(assert (=> b!5577618 m!6560518))

(assert (=> b!5577619 m!6559468))

(assert (=> b!5577619 m!6560084))

(assert (=> b!5577619 m!6559482))

(assert (=> b!5577619 m!6560084))

(declare-fun m!6560520 () Bool)

(assert (=> b!5577619 m!6560520))

(assert (=> b!5577619 m!6559468))

(assert (=> b!5577619 m!6560092))

(assert (=> b!5577619 m!6560520))

(assert (=> b!5577619 m!6560092))

(declare-fun m!6560522 () Bool)

(assert (=> b!5577619 m!6560522))

(assert (=> b!5576488 d!1763504))

(declare-fun bs!1290608 () Bool)

(declare-fun d!1763506 () Bool)

(assert (= bs!1290608 (and d!1763506 d!1763330)))

(declare-fun lambda!299017 () Int)

(assert (=> bs!1290608 (= lambda!299017 lambda!298997)))

(declare-fun bs!1290609 () Bool)

(assert (= bs!1290609 (and d!1763506 d!1763502)))

(assert (=> bs!1290609 (= lambda!299017 lambda!299016)))

(declare-fun bs!1290610 () Bool)

(assert (= bs!1290610 (and d!1763506 d!1763370)))

(assert (=> bs!1290610 (= (= (head!11893 (t!376241 s!2326)) (head!11893 s!2326)) (= lambda!299017 lambda!299000))))

(declare-fun bs!1290611 () Bool)

(assert (= bs!1290611 (and d!1763506 d!1763476)))

(assert (=> bs!1290611 (= lambda!299017 lambda!299014)))

(declare-fun bs!1290612 () Bool)

(assert (= bs!1290612 (and d!1763506 d!1763042)))

(assert (=> bs!1290612 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299017 lambda!298946))))

(declare-fun bs!1290613 () Bool)

(assert (= bs!1290613 (and d!1763506 b!5576018)))

(assert (=> bs!1290613 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299017 lambda!298902))))

(assert (=> d!1763506 true))

(assert (=> d!1763506 (= (derivationStepZipper!1656 lt!2252701 (head!11893 (t!376241 s!2326))) (flatMap!1170 lt!2252701 lambda!299017))))

(declare-fun bs!1290614 () Bool)

(assert (= bs!1290614 d!1763506))

(declare-fun m!6560524 () Bool)

(assert (=> bs!1290614 m!6560524))

(assert (=> b!5576488 d!1763506))

(assert (=> b!5576488 d!1763334))

(assert (=> b!5576488 d!1763336))

(declare-fun d!1763508 () Bool)

(declare-fun c!976512 () Bool)

(assert (=> d!1763508 (= c!976512 (isEmpty!34655 (t!376241 s!2326)))))

(declare-fun e!3441811 () Bool)

(assert (=> d!1763508 (= (matchZipper!1695 ((_ map or) lt!2252687 lt!2252695) (t!376241 s!2326)) e!3441811)))

(declare-fun b!5577620 () Bool)

(assert (=> b!5577620 (= e!3441811 (nullableZipper!1556 ((_ map or) lt!2252687 lt!2252695)))))

(declare-fun b!5577621 () Bool)

(assert (=> b!5577621 (= e!3441811 (matchZipper!1695 (derivationStepZipper!1656 ((_ map or) lt!2252687 lt!2252695) (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))))))

(assert (= (and d!1763508 c!976512) b!5577620))

(assert (= (and d!1763508 (not c!976512)) b!5577621))

(assert (=> d!1763508 m!6559460))

(declare-fun m!6560526 () Bool)

(assert (=> b!5577620 m!6560526))

(assert (=> b!5577621 m!6559464))

(assert (=> b!5577621 m!6559464))

(declare-fun m!6560528 () Bool)

(assert (=> b!5577621 m!6560528))

(assert (=> b!5577621 m!6559468))

(assert (=> b!5577621 m!6560528))

(assert (=> b!5577621 m!6559468))

(declare-fun m!6560530 () Bool)

(assert (=> b!5577621 m!6560530))

(assert (=> d!1763030 d!1763508))

(assert (=> d!1763030 d!1763028))

(declare-fun d!1763510 () Bool)

(declare-fun e!3441814 () Bool)

(assert (=> d!1763510 (= (matchZipper!1695 ((_ map or) lt!2252687 lt!2252695) (t!376241 s!2326)) e!3441814)))

(declare-fun res!2367222 () Bool)

(assert (=> d!1763510 (=> res!2367222 e!3441814)))

(assert (=> d!1763510 (= res!2367222 (matchZipper!1695 lt!2252687 (t!376241 s!2326)))))

(assert (=> d!1763510 true))

(declare-fun _$48!1127 () Unit!155600)

(assert (=> d!1763510 (= (choose!42253 lt!2252687 lt!2252695 (t!376241 s!2326)) _$48!1127)))

(declare-fun b!5577624 () Bool)

(assert (=> b!5577624 (= e!3441814 (matchZipper!1695 lt!2252695 (t!376241 s!2326)))))

(assert (= (and d!1763510 (not res!2367222)) b!5577624))

(assert (=> d!1763510 m!6559492))

(assert (=> d!1763510 m!6559094))

(assert (=> b!5577624 m!6559098))

(assert (=> d!1763030 d!1763510))

(declare-fun d!1763512 () Bool)

(assert (=> d!1763512 (= ($colon$colon!1624 (exprs!5441 lt!2252691) (ite (or c!976293 c!976291) (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (h!69294 (exprs!5441 (h!69295 zl!343))))) (Cons!62846 (ite (or c!976293 c!976291) (regTwo!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))) (h!69294 (exprs!5441 (h!69295 zl!343)))) (exprs!5441 lt!2252691)))))

(assert (=> bm!416814 d!1763512))

(assert (=> d!1763038 d!1763238))

(assert (=> bs!1290341 d!1763090))

(declare-fun d!1763514 () Bool)

(declare-fun res!2367223 () Bool)

(declare-fun e!3441815 () Bool)

(assert (=> d!1763514 (=> res!2367223 e!3441815)))

(assert (=> d!1763514 (= res!2367223 ((_ is Nil!62846) (exprs!5441 setElem!37091)))))

(assert (=> d!1763514 (= (forall!14728 (exprs!5441 setElem!37091) lambda!298942) e!3441815)))

(declare-fun b!5577625 () Bool)

(declare-fun e!3441816 () Bool)

(assert (=> b!5577625 (= e!3441815 e!3441816)))

(declare-fun res!2367224 () Bool)

(assert (=> b!5577625 (=> (not res!2367224) (not e!3441816))))

(assert (=> b!5577625 (= res!2367224 (dynLambda!24580 lambda!298942 (h!69294 (exprs!5441 setElem!37091))))))

(declare-fun b!5577626 () Bool)

(assert (=> b!5577626 (= e!3441816 (forall!14728 (t!376239 (exprs!5441 setElem!37091)) lambda!298942))))

(assert (= (and d!1763514 (not res!2367223)) b!5577625))

(assert (= (and b!5577625 res!2367224) b!5577626))

(declare-fun b_lambda!211441 () Bool)

(assert (=> (not b_lambda!211441) (not b!5577625)))

(declare-fun m!6560532 () Bool)

(assert (=> b!5577625 m!6560532))

(declare-fun m!6560534 () Bool)

(assert (=> b!5577626 m!6560534))

(assert (=> d!1763016 d!1763514))

(declare-fun e!3441818 () (InoxSet Context!9882))

(declare-fun b!5577627 () Bool)

(declare-fun call!416988 () (InoxSet Context!9882))

(assert (=> b!5577627 (= e!3441818 ((_ map or) call!416988 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252704)))))) (h!69296 s!2326))))))

(declare-fun b!5577628 () Bool)

(declare-fun e!3441819 () (InoxSet Context!9882))

(assert (=> b!5577628 (= e!3441819 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577629 () Bool)

(assert (=> b!5577629 (= e!3441819 call!416988)))

(declare-fun b!5577630 () Bool)

(declare-fun e!3441817 () Bool)

(assert (=> b!5577630 (= e!3441817 (nullable!5589 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252704)))))))))

(declare-fun d!1763516 () Bool)

(declare-fun c!976513 () Bool)

(assert (=> d!1763516 (= c!976513 e!3441817)))

(declare-fun res!2367225 () Bool)

(assert (=> d!1763516 (=> (not res!2367225) (not e!3441817))))

(assert (=> d!1763516 (= res!2367225 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252704))))))))

(assert (=> d!1763516 (= (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 lt!2252704))) (h!69296 s!2326)) e!3441818)))

(declare-fun b!5577631 () Bool)

(assert (=> b!5577631 (= e!3441818 e!3441819)))

(declare-fun c!976514 () Bool)

(assert (=> b!5577631 (= c!976514 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252704))))))))

(declare-fun bm!416983 () Bool)

(assert (=> bm!416983 (= call!416988 (derivationStepZipperDown!899 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252704))))) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252704)))))) (h!69296 s!2326)))))

(assert (= (and d!1763516 res!2367225) b!5577630))

(assert (= (and d!1763516 c!976513) b!5577627))

(assert (= (and d!1763516 (not c!976513)) b!5577631))

(assert (= (and b!5577631 c!976514) b!5577629))

(assert (= (and b!5577631 (not c!976514)) b!5577628))

(assert (= (or b!5577627 b!5577629) bm!416983))

(declare-fun m!6560536 () Bool)

(assert (=> b!5577627 m!6560536))

(declare-fun m!6560538 () Bool)

(assert (=> b!5577630 m!6560538))

(declare-fun m!6560540 () Bool)

(assert (=> bm!416983 m!6560540))

(assert (=> b!5576513 d!1763516))

(declare-fun d!1763518 () Bool)

(declare-fun c!976515 () Bool)

(assert (=> d!1763518 (= c!976515 (isEmpty!34655 (tail!10988 (t!376241 s!2326))))))

(declare-fun e!3441820 () Bool)

(assert (=> d!1763518 (= (matchZipper!1695 (derivationStepZipper!1656 lt!2252702 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))) e!3441820)))

(declare-fun b!5577632 () Bool)

(assert (=> b!5577632 (= e!3441820 (nullableZipper!1556 (derivationStepZipper!1656 lt!2252702 (head!11893 (t!376241 s!2326)))))))

(declare-fun b!5577633 () Bool)

(assert (=> b!5577633 (= e!3441820 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 lt!2252702 (head!11893 (t!376241 s!2326))) (head!11893 (tail!10988 (t!376241 s!2326)))) (tail!10988 (tail!10988 (t!376241 s!2326)))))))

(assert (= (and d!1763518 c!976515) b!5577632))

(assert (= (and d!1763518 (not c!976515)) b!5577633))

(assert (=> d!1763518 m!6559468))

(assert (=> d!1763518 m!6560078))

(assert (=> b!5577632 m!6559504))

(declare-fun m!6560542 () Bool)

(assert (=> b!5577632 m!6560542))

(assert (=> b!5577633 m!6559468))

(assert (=> b!5577633 m!6560084))

(assert (=> b!5577633 m!6559504))

(assert (=> b!5577633 m!6560084))

(declare-fun m!6560544 () Bool)

(assert (=> b!5577633 m!6560544))

(assert (=> b!5577633 m!6559468))

(assert (=> b!5577633 m!6560092))

(assert (=> b!5577633 m!6560544))

(assert (=> b!5577633 m!6560092))

(declare-fun m!6560546 () Bool)

(assert (=> b!5577633 m!6560546))

(assert (=> b!5576498 d!1763518))

(declare-fun bs!1290615 () Bool)

(declare-fun d!1763520 () Bool)

(assert (= bs!1290615 (and d!1763520 d!1763330)))

(declare-fun lambda!299018 () Int)

(assert (=> bs!1290615 (= lambda!299018 lambda!298997)))

(declare-fun bs!1290616 () Bool)

(assert (= bs!1290616 (and d!1763520 d!1763502)))

(assert (=> bs!1290616 (= lambda!299018 lambda!299016)))

(declare-fun bs!1290617 () Bool)

(assert (= bs!1290617 (and d!1763520 d!1763370)))

(assert (=> bs!1290617 (= (= (head!11893 (t!376241 s!2326)) (head!11893 s!2326)) (= lambda!299018 lambda!299000))))

(declare-fun bs!1290618 () Bool)

(assert (= bs!1290618 (and d!1763520 d!1763476)))

(assert (=> bs!1290618 (= lambda!299018 lambda!299014)))

(declare-fun bs!1290619 () Bool)

(assert (= bs!1290619 (and d!1763520 d!1763506)))

(assert (=> bs!1290619 (= lambda!299018 lambda!299017)))

(declare-fun bs!1290620 () Bool)

(assert (= bs!1290620 (and d!1763520 d!1763042)))

(assert (=> bs!1290620 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299018 lambda!298946))))

(declare-fun bs!1290621 () Bool)

(assert (= bs!1290621 (and d!1763520 b!5576018)))

(assert (=> bs!1290621 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299018 lambda!298902))))

(assert (=> d!1763520 true))

(assert (=> d!1763520 (= (derivationStepZipper!1656 lt!2252702 (head!11893 (t!376241 s!2326))) (flatMap!1170 lt!2252702 lambda!299018))))

(declare-fun bs!1290622 () Bool)

(assert (= bs!1290622 d!1763520))

(declare-fun m!6560548 () Bool)

(assert (=> bs!1290622 m!6560548))

(assert (=> b!5576498 d!1763520))

(assert (=> b!5576498 d!1763334))

(assert (=> b!5576498 d!1763336))

(declare-fun d!1763522 () Bool)

(assert (=> d!1763522 (= (head!11892 (unfocusZipperList!985 zl!343)) (h!69294 (unfocusZipperList!985 zl!343)))))

(assert (=> b!5576468 d!1763522))

(declare-fun bs!1290623 () Bool)

(declare-fun b!5577634 () Bool)

(assert (= bs!1290623 (and b!5577634 b!5576005)))

(declare-fun lambda!299019 () Int)

(assert (=> bs!1290623 (not (= lambda!299019 lambda!298900))))

(declare-fun bs!1290624 () Bool)

(assert (= bs!1290624 (and b!5577634 b!5576666)))

(assert (=> bs!1290624 (= (and (= (reg!15886 (regTwo!31627 r!7292)) (reg!15886 r!7292)) (= (regTwo!31627 r!7292) r!7292)) (= lambda!299019 lambda!298963))))

(declare-fun bs!1290625 () Bool)

(assert (= bs!1290625 (and b!5577634 d!1763060)))

(assert (=> bs!1290625 (not (= lambda!299019 lambda!298954))))

(declare-fun bs!1290626 () Bool)

(assert (= bs!1290626 (and b!5577634 d!1763058)))

(assert (=> bs!1290626 (not (= lambda!299019 lambda!298949))))

(declare-fun bs!1290627 () Bool)

(assert (= bs!1290627 (and b!5577634 d!1763408)))

(assert (=> bs!1290627 (not (= lambda!299019 lambda!299010))))

(declare-fun bs!1290628 () Bool)

(assert (= bs!1290628 (and b!5577634 b!5576668)))

(assert (=> bs!1290628 (not (= lambda!299019 lambda!298964))))

(assert (=> bs!1290623 (not (= lambda!299019 lambda!298901))))

(assert (=> bs!1290625 (not (= lambda!299019 lambda!298955))))

(assert (=> b!5577634 true))

(assert (=> b!5577634 true))

(declare-fun bs!1290629 () Bool)

(declare-fun b!5577636 () Bool)

(assert (= bs!1290629 (and b!5577636 b!5576005)))

(declare-fun lambda!299020 () Int)

(assert (=> bs!1290629 (not (= lambda!299020 lambda!298900))))

(declare-fun bs!1290630 () Bool)

(assert (= bs!1290630 (and b!5577636 b!5576666)))

(assert (=> bs!1290630 (not (= lambda!299020 lambda!298963))))

(declare-fun bs!1290631 () Bool)

(assert (= bs!1290631 (and b!5577636 b!5577634)))

(assert (=> bs!1290631 (not (= lambda!299020 lambda!299019))))

(declare-fun bs!1290632 () Bool)

(assert (= bs!1290632 (and b!5577636 d!1763060)))

(assert (=> bs!1290632 (not (= lambda!299020 lambda!298954))))

(declare-fun bs!1290633 () Bool)

(assert (= bs!1290633 (and b!5577636 d!1763058)))

(assert (=> bs!1290633 (not (= lambda!299020 lambda!298949))))

(declare-fun bs!1290634 () Bool)

(assert (= bs!1290634 (and b!5577636 d!1763408)))

(assert (=> bs!1290634 (not (= lambda!299020 lambda!299010))))

(declare-fun bs!1290635 () Bool)

(assert (= bs!1290635 (and b!5577636 b!5576668)))

(assert (=> bs!1290635 (= (and (= (regOne!31626 (regTwo!31627 r!7292)) (regOne!31626 r!7292)) (= (regTwo!31626 (regTwo!31627 r!7292)) (regTwo!31626 r!7292))) (= lambda!299020 lambda!298964))))

(assert (=> bs!1290629 (= (and (= (regOne!31626 (regTwo!31627 r!7292)) (regOne!31626 r!7292)) (= (regTwo!31626 (regTwo!31627 r!7292)) (regTwo!31626 r!7292))) (= lambda!299020 lambda!298901))))

(assert (=> bs!1290632 (= (and (= (regOne!31626 (regTwo!31627 r!7292)) (regOne!31626 r!7292)) (= (regTwo!31626 (regTwo!31627 r!7292)) (regTwo!31626 r!7292))) (= lambda!299020 lambda!298955))))

(assert (=> b!5577636 true))

(assert (=> b!5577636 true))

(declare-fun e!3441822 () Bool)

(declare-fun call!416990 () Bool)

(assert (=> b!5577634 (= e!3441822 call!416990)))

(declare-fun bm!416984 () Bool)

(declare-fun call!416989 () Bool)

(assert (=> bm!416984 (= call!416989 (isEmpty!34655 s!2326))))

(declare-fun b!5577635 () Bool)

(declare-fun c!976518 () Bool)

(assert (=> b!5577635 (= c!976518 ((_ is Union!15557) (regTwo!31627 r!7292)))))

(declare-fun e!3441823 () Bool)

(declare-fun e!3441827 () Bool)

(assert (=> b!5577635 (= e!3441823 e!3441827)))

(declare-fun d!1763524 () Bool)

(declare-fun c!976516 () Bool)

(assert (=> d!1763524 (= c!976516 ((_ is EmptyExpr!15557) (regTwo!31627 r!7292)))))

(declare-fun e!3441824 () Bool)

(assert (=> d!1763524 (= (matchRSpec!2660 (regTwo!31627 r!7292) s!2326) e!3441824)))

(declare-fun e!3441826 () Bool)

(assert (=> b!5577636 (= e!3441826 call!416990)))

(declare-fun c!976519 () Bool)

(declare-fun bm!416985 () Bool)

(assert (=> bm!416985 (= call!416990 (Exists!2657 (ite c!976519 lambda!299019 lambda!299020)))))

(declare-fun b!5577637 () Bool)

(assert (=> b!5577637 (= e!3441827 e!3441826)))

(assert (=> b!5577637 (= c!976519 ((_ is Star!15557) (regTwo!31627 r!7292)))))

(declare-fun b!5577638 () Bool)

(declare-fun e!3441821 () Bool)

(assert (=> b!5577638 (= e!3441827 e!3441821)))

(declare-fun res!2367227 () Bool)

(assert (=> b!5577638 (= res!2367227 (matchRSpec!2660 (regOne!31627 (regTwo!31627 r!7292)) s!2326))))

(assert (=> b!5577638 (=> res!2367227 e!3441821)))

(declare-fun b!5577639 () Bool)

(declare-fun c!976517 () Bool)

(assert (=> b!5577639 (= c!976517 ((_ is ElementMatch!15557) (regTwo!31627 r!7292)))))

(declare-fun e!3441825 () Bool)

(assert (=> b!5577639 (= e!3441825 e!3441823)))

(declare-fun b!5577640 () Bool)

(assert (=> b!5577640 (= e!3441824 e!3441825)))

(declare-fun res!2367226 () Bool)

(assert (=> b!5577640 (= res!2367226 (not ((_ is EmptyLang!15557) (regTwo!31627 r!7292))))))

(assert (=> b!5577640 (=> (not res!2367226) (not e!3441825))))

(declare-fun b!5577641 () Bool)

(assert (=> b!5577641 (= e!3441823 (= s!2326 (Cons!62848 (c!976080 (regTwo!31627 r!7292)) Nil!62848)))))

(declare-fun b!5577642 () Bool)

(assert (=> b!5577642 (= e!3441824 call!416989)))

(declare-fun b!5577643 () Bool)

(assert (=> b!5577643 (= e!3441821 (matchRSpec!2660 (regTwo!31627 (regTwo!31627 r!7292)) s!2326))))

(declare-fun b!5577644 () Bool)

(declare-fun res!2367228 () Bool)

(assert (=> b!5577644 (=> res!2367228 e!3441822)))

(assert (=> b!5577644 (= res!2367228 call!416989)))

(assert (=> b!5577644 (= e!3441826 e!3441822)))

(assert (= (and d!1763524 c!976516) b!5577642))

(assert (= (and d!1763524 (not c!976516)) b!5577640))

(assert (= (and b!5577640 res!2367226) b!5577639))

(assert (= (and b!5577639 c!976517) b!5577641))

(assert (= (and b!5577639 (not c!976517)) b!5577635))

(assert (= (and b!5577635 c!976518) b!5577638))

(assert (= (and b!5577635 (not c!976518)) b!5577637))

(assert (= (and b!5577638 (not res!2367227)) b!5577643))

(assert (= (and b!5577637 c!976519) b!5577644))

(assert (= (and b!5577637 (not c!976519)) b!5577636))

(assert (= (and b!5577644 (not res!2367228)) b!5577634))

(assert (= (or b!5577634 b!5577636) bm!416985))

(assert (= (or b!5577642 b!5577644) bm!416984))

(assert (=> bm!416984 m!6559448))

(declare-fun m!6560550 () Bool)

(assert (=> bm!416985 m!6560550))

(declare-fun m!6560552 () Bool)

(assert (=> b!5577638 m!6560552))

(declare-fun m!6560554 () Bool)

(assert (=> b!5577643 m!6560554))

(assert (=> b!5576675 d!1763524))

(assert (=> b!5576717 d!1763320))

(assert (=> b!5576717 d!1763322))

(assert (=> d!1763034 d!1763238))

(declare-fun d!1763526 () Bool)

(declare-fun c!976520 () Bool)

(assert (=> d!1763526 (= c!976520 (isEmpty!34655 (tail!10988 (t!376241 s!2326))))))

(declare-fun e!3441828 () Bool)

(assert (=> d!1763526 (= (matchZipper!1695 (derivationStepZipper!1656 lt!2252695 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))) e!3441828)))

(declare-fun b!5577645 () Bool)

(assert (=> b!5577645 (= e!3441828 (nullableZipper!1556 (derivationStepZipper!1656 lt!2252695 (head!11893 (t!376241 s!2326)))))))

(declare-fun b!5577646 () Bool)

(assert (=> b!5577646 (= e!3441828 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 lt!2252695 (head!11893 (t!376241 s!2326))) (head!11893 (tail!10988 (t!376241 s!2326)))) (tail!10988 (tail!10988 (t!376241 s!2326)))))))

(assert (= (and d!1763526 c!976520) b!5577645))

(assert (= (and d!1763526 (not c!976520)) b!5577646))

(assert (=> d!1763526 m!6559468))

(assert (=> d!1763526 m!6560078))

(assert (=> b!5577645 m!6559510))

(declare-fun m!6560556 () Bool)

(assert (=> b!5577645 m!6560556))

(assert (=> b!5577646 m!6559468))

(assert (=> b!5577646 m!6560084))

(assert (=> b!5577646 m!6559510))

(assert (=> b!5577646 m!6560084))

(declare-fun m!6560558 () Bool)

(assert (=> b!5577646 m!6560558))

(assert (=> b!5577646 m!6559468))

(assert (=> b!5577646 m!6560092))

(assert (=> b!5577646 m!6560558))

(assert (=> b!5577646 m!6560092))

(declare-fun m!6560560 () Bool)

(assert (=> b!5577646 m!6560560))

(assert (=> b!5576500 d!1763526))

(declare-fun bs!1290636 () Bool)

(declare-fun d!1763528 () Bool)

(assert (= bs!1290636 (and d!1763528 d!1763520)))

(declare-fun lambda!299021 () Int)

(assert (=> bs!1290636 (= lambda!299021 lambda!299018)))

(declare-fun bs!1290637 () Bool)

(assert (= bs!1290637 (and d!1763528 d!1763330)))

(assert (=> bs!1290637 (= lambda!299021 lambda!298997)))

(declare-fun bs!1290638 () Bool)

(assert (= bs!1290638 (and d!1763528 d!1763502)))

(assert (=> bs!1290638 (= lambda!299021 lambda!299016)))

(declare-fun bs!1290639 () Bool)

(assert (= bs!1290639 (and d!1763528 d!1763370)))

(assert (=> bs!1290639 (= (= (head!11893 (t!376241 s!2326)) (head!11893 s!2326)) (= lambda!299021 lambda!299000))))

(declare-fun bs!1290640 () Bool)

(assert (= bs!1290640 (and d!1763528 d!1763476)))

(assert (=> bs!1290640 (= lambda!299021 lambda!299014)))

(declare-fun bs!1290641 () Bool)

(assert (= bs!1290641 (and d!1763528 d!1763506)))

(assert (=> bs!1290641 (= lambda!299021 lambda!299017)))

(declare-fun bs!1290642 () Bool)

(assert (= bs!1290642 (and d!1763528 d!1763042)))

(assert (=> bs!1290642 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299021 lambda!298946))))

(declare-fun bs!1290643 () Bool)

(assert (= bs!1290643 (and d!1763528 b!5576018)))

(assert (=> bs!1290643 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299021 lambda!298902))))

(assert (=> d!1763528 true))

(assert (=> d!1763528 (= (derivationStepZipper!1656 lt!2252695 (head!11893 (t!376241 s!2326))) (flatMap!1170 lt!2252695 lambda!299021))))

(declare-fun bs!1290644 () Bool)

(assert (= bs!1290644 d!1763528))

(declare-fun m!6560562 () Bool)

(assert (=> bs!1290644 m!6560562))

(assert (=> b!5576500 d!1763528))

(assert (=> b!5576500 d!1763334))

(assert (=> b!5576500 d!1763336))

(declare-fun d!1763530 () Bool)

(assert (=> d!1763530 (= (isEmpty!34651 (tail!10987 (unfocusZipperList!985 zl!343))) ((_ is Nil!62846) (tail!10987 (unfocusZipperList!985 zl!343))))))

(assert (=> b!5576464 d!1763530))

(declare-fun d!1763532 () Bool)

(assert (=> d!1763532 (= (tail!10987 (unfocusZipperList!985 zl!343)) (t!376239 (unfocusZipperList!985 zl!343)))))

(assert (=> b!5576464 d!1763532))

(declare-fun b!5577647 () Bool)

(declare-fun e!3441834 () (InoxSet Context!9882))

(declare-fun call!416996 () (InoxSet Context!9882))

(declare-fun call!416995 () (InoxSet Context!9882))

(assert (=> b!5577647 (= e!3441834 ((_ map or) call!416996 call!416995))))

(declare-fun b!5577648 () Bool)

(declare-fun e!3441829 () (InoxSet Context!9882))

(assert (=> b!5577648 (= e!3441829 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577649 () Bool)

(declare-fun call!416994 () (InoxSet Context!9882))

(assert (=> b!5577649 (= e!3441829 call!416994)))

(declare-fun b!5577650 () Bool)

(declare-fun c!976524 () Bool)

(declare-fun e!3441830 () Bool)

(assert (=> b!5577650 (= c!976524 e!3441830)))

(declare-fun res!2367229 () Bool)

(assert (=> b!5577650 (=> (not res!2367229) (not e!3441830))))

(assert (=> b!5577650 (= res!2367229 ((_ is Concat!24402) (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))))))

(declare-fun e!3441831 () (InoxSet Context!9882))

(assert (=> b!5577650 (= e!3441831 e!3441834)))

(declare-fun b!5577651 () Bool)

(declare-fun e!3441833 () (InoxSet Context!9882))

(assert (=> b!5577651 (= e!3441833 e!3441831)))

(declare-fun c!976525 () Bool)

(assert (=> b!5577651 (= c!976525 ((_ is Union!15557) (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))))))

(declare-fun b!5577652 () Bool)

(assert (=> b!5577652 (= e!3441833 (store ((as const (Array Context!9882 Bool)) false) (ite c!976253 lt!2252691 (Context!9883 call!416803)) true))))

(declare-fun b!5577653 () Bool)

(assert (=> b!5577653 (= e!3441830 (nullable!5589 (regOne!31626 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))))))))

(declare-fun b!5577654 () Bool)

(declare-fun c!976521 () Bool)

(assert (=> b!5577654 (= c!976521 ((_ is Star!15557) (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))))))

(declare-fun e!3441832 () (InoxSet Context!9882))

(assert (=> b!5577654 (= e!3441832 e!3441829)))

(declare-fun b!5577655 () Bool)

(declare-fun call!416991 () (InoxSet Context!9882))

(assert (=> b!5577655 (= e!3441831 ((_ map or) call!416991 call!416996))))

(declare-fun bm!416987 () Bool)

(assert (=> bm!416987 (= call!416995 call!416991)))

(declare-fun b!5577656 () Bool)

(assert (=> b!5577656 (= e!3441832 call!416994)))

(declare-fun c!976522 () Bool)

(declare-fun call!416993 () List!62970)

(declare-fun bm!416988 () Bool)

(assert (=> bm!416988 (= call!416993 ($colon$colon!1624 (exprs!5441 (ite c!976253 lt!2252691 (Context!9883 call!416803))) (ite (or c!976524 c!976522) (regTwo!31626 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))) (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))))))))

(declare-fun call!416992 () List!62970)

(declare-fun bm!416989 () Bool)

(assert (=> bm!416989 (= call!416991 (derivationStepZipperDown!899 (ite c!976525 (regOne!31627 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))) (ite c!976524 (regTwo!31626 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))) (ite c!976522 (regOne!31626 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))) (reg!15886 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))))))) (ite (or c!976525 c!976524) (ite c!976253 lt!2252691 (Context!9883 call!416803)) (Context!9883 call!416992)) (h!69296 s!2326)))))

(declare-fun b!5577657 () Bool)

(assert (=> b!5577657 (= e!3441834 e!3441832)))

(assert (=> b!5577657 (= c!976522 ((_ is Concat!24402) (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))))))

(declare-fun bm!416986 () Bool)

(assert (=> bm!416986 (= call!416994 call!416995)))

(declare-fun d!1763534 () Bool)

(declare-fun c!976523 () Bool)

(assert (=> d!1763534 (= c!976523 (and ((_ is ElementMatch!15557) (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))) (= (c!976080 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))) (h!69296 s!2326))))))

(assert (=> d!1763534 (= (derivationStepZipperDown!899 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))) (ite c!976253 lt!2252691 (Context!9883 call!416803)) (h!69296 s!2326)) e!3441833)))

(declare-fun bm!416990 () Bool)

(assert (=> bm!416990 (= call!416996 (derivationStepZipperDown!899 (ite c!976525 (regTwo!31627 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))) (regOne!31626 (ite c!976253 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292)))))) (ite c!976525 (ite c!976253 lt!2252691 (Context!9883 call!416803)) (Context!9883 call!416993)) (h!69296 s!2326)))))

(declare-fun bm!416991 () Bool)

(assert (=> bm!416991 (= call!416992 call!416993)))

(assert (= (and d!1763534 c!976523) b!5577652))

(assert (= (and d!1763534 (not c!976523)) b!5577651))

(assert (= (and b!5577651 c!976525) b!5577655))

(assert (= (and b!5577651 (not c!976525)) b!5577650))

(assert (= (and b!5577650 res!2367229) b!5577653))

(assert (= (and b!5577650 c!976524) b!5577647))

(assert (= (and b!5577650 (not c!976524)) b!5577657))

(assert (= (and b!5577657 c!976522) b!5577656))

(assert (= (and b!5577657 (not c!976522)) b!5577654))

(assert (= (and b!5577654 c!976521) b!5577649))

(assert (= (and b!5577654 (not c!976521)) b!5577648))

(assert (= (or b!5577656 b!5577649) bm!416991))

(assert (= (or b!5577656 b!5577649) bm!416986))

(assert (= (or b!5577647 bm!416991) bm!416988))

(assert (= (or b!5577647 bm!416986) bm!416987))

(assert (= (or b!5577655 b!5577647) bm!416990))

(assert (= (or b!5577655 bm!416987) bm!416989))

(declare-fun m!6560564 () Bool)

(assert (=> b!5577652 m!6560564))

(declare-fun m!6560566 () Bool)

(assert (=> bm!416988 m!6560566))

(declare-fun m!6560568 () Bool)

(assert (=> bm!416990 m!6560568))

(declare-fun m!6560570 () Bool)

(assert (=> b!5577653 m!6560570))

(declare-fun m!6560572 () Bool)

(assert (=> bm!416989 m!6560572))

(assert (=> bm!416800 d!1763534))

(declare-fun bs!1290645 () Bool)

(declare-fun d!1763536 () Bool)

(assert (= bs!1290645 (and d!1763536 d!1763388)))

(declare-fun lambda!299022 () Int)

(assert (=> bs!1290645 (= lambda!299022 lambda!299005)))

(declare-fun bs!1290646 () Bool)

(assert (= bs!1290646 (and d!1763536 d!1763450)))

(assert (=> bs!1290646 (= lambda!299022 lambda!299012)))

(declare-fun bs!1290647 () Bool)

(assert (= bs!1290647 (and d!1763536 d!1763454)))

(assert (=> bs!1290647 (= lambda!299022 lambda!299013)))

(assert (=> d!1763536 (= (nullableZipper!1556 lt!2252687) (exists!2159 lt!2252687 lambda!299022))))

(declare-fun bs!1290648 () Bool)

(assert (= bs!1290648 d!1763536))

(declare-fun m!6560574 () Bool)

(assert (=> bs!1290648 m!6560574))

(assert (=> b!5576489 d!1763536))

(declare-fun d!1763538 () Bool)

(assert (=> d!1763538 (= (nullable!5589 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))) (nullableFct!1703 (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))))))

(declare-fun bs!1290649 () Bool)

(assert (= bs!1290649 d!1763538))

(declare-fun m!6560576 () Bool)

(assert (=> bs!1290649 m!6560576))

(assert (=> b!5576585 d!1763538))

(declare-fun b!5577658 () Bool)

(declare-fun e!3441839 () Bool)

(declare-fun call!416997 () Bool)

(assert (=> b!5577658 (= e!3441839 call!416997)))

(declare-fun bm!416992 () Bool)

(declare-fun call!416998 () Bool)

(declare-fun c!976526 () Bool)

(assert (=> bm!416992 (= call!416998 (validRegex!7293 (ite c!976526 (regOne!31627 lt!2252763) (regOne!31626 lt!2252763))))))

(declare-fun b!5577659 () Bool)

(declare-fun res!2367233 () Bool)

(declare-fun e!3441837 () Bool)

(assert (=> b!5577659 (=> res!2367233 e!3441837)))

(assert (=> b!5577659 (= res!2367233 (not ((_ is Concat!24402) lt!2252763)))))

(declare-fun e!3441836 () Bool)

(assert (=> b!5577659 (= e!3441836 e!3441837)))

(declare-fun b!5577660 () Bool)

(declare-fun e!3441841 () Bool)

(assert (=> b!5577660 (= e!3441841 e!3441836)))

(assert (=> b!5577660 (= c!976526 ((_ is Union!15557) lt!2252763))))

(declare-fun bm!416993 () Bool)

(declare-fun call!416999 () Bool)

(assert (=> bm!416993 (= call!416997 call!416999)))

(declare-fun b!5577661 () Bool)

(declare-fun e!3441840 () Bool)

(assert (=> b!5577661 (= e!3441841 e!3441840)))

(declare-fun res!2367230 () Bool)

(assert (=> b!5577661 (= res!2367230 (not (nullable!5589 (reg!15886 lt!2252763))))))

(assert (=> b!5577661 (=> (not res!2367230) (not e!3441840))))

(declare-fun c!976527 () Bool)

(declare-fun bm!416994 () Bool)

(assert (=> bm!416994 (= call!416999 (validRegex!7293 (ite c!976527 (reg!15886 lt!2252763) (ite c!976526 (regTwo!31627 lt!2252763) (regTwo!31626 lt!2252763)))))))

(declare-fun b!5577662 () Bool)

(assert (=> b!5577662 (= e!3441840 call!416999)))

(declare-fun b!5577664 () Bool)

(declare-fun res!2367234 () Bool)

(declare-fun e!3441835 () Bool)

(assert (=> b!5577664 (=> (not res!2367234) (not e!3441835))))

(assert (=> b!5577664 (= res!2367234 call!416998)))

(assert (=> b!5577664 (= e!3441836 e!3441835)))

(declare-fun b!5577665 () Bool)

(assert (=> b!5577665 (= e!3441835 call!416997)))

(declare-fun b!5577666 () Bool)

(assert (=> b!5577666 (= e!3441837 e!3441839)))

(declare-fun res!2367232 () Bool)

(assert (=> b!5577666 (=> (not res!2367232) (not e!3441839))))

(assert (=> b!5577666 (= res!2367232 call!416998)))

(declare-fun d!1763540 () Bool)

(declare-fun res!2367231 () Bool)

(declare-fun e!3441838 () Bool)

(assert (=> d!1763540 (=> res!2367231 e!3441838)))

(assert (=> d!1763540 (= res!2367231 ((_ is ElementMatch!15557) lt!2252763))))

(assert (=> d!1763540 (= (validRegex!7293 lt!2252763) e!3441838)))

(declare-fun b!5577663 () Bool)

(assert (=> b!5577663 (= e!3441838 e!3441841)))

(assert (=> b!5577663 (= c!976527 ((_ is Star!15557) lt!2252763))))

(assert (= (and d!1763540 (not res!2367231)) b!5577663))

(assert (= (and b!5577663 c!976527) b!5577661))

(assert (= (and b!5577663 (not c!976527)) b!5577660))

(assert (= (and b!5577661 res!2367230) b!5577662))

(assert (= (and b!5577660 c!976526) b!5577664))

(assert (= (and b!5577660 (not c!976526)) b!5577659))

(assert (= (and b!5577664 res!2367234) b!5577665))

(assert (= (and b!5577659 (not res!2367233)) b!5577666))

(assert (= (and b!5577666 res!2367232) b!5577658))

(assert (= (or b!5577665 b!5577658) bm!416993))

(assert (= (or b!5577664 b!5577666) bm!416992))

(assert (= (or b!5577662 bm!416993) bm!416994))

(declare-fun m!6560578 () Bool)

(assert (=> bm!416992 m!6560578))

(declare-fun m!6560580 () Bool)

(assert (=> b!5577661 m!6560580))

(declare-fun m!6560582 () Bool)

(assert (=> bm!416994 m!6560582))

(assert (=> d!1763040 d!1763540))

(assert (=> d!1763040 d!1763012))

(assert (=> d!1763040 d!1763014))

(declare-fun d!1763542 () Bool)

(assert (=> d!1763542 (= (Exists!2657 lambda!298954) (choose!42257 lambda!298954))))

(declare-fun bs!1290650 () Bool)

(assert (= bs!1290650 d!1763542))

(declare-fun m!6560584 () Bool)

(assert (=> bs!1290650 m!6560584))

(assert (=> d!1763060 d!1763542))

(declare-fun d!1763544 () Bool)

(assert (=> d!1763544 (= (Exists!2657 lambda!298955) (choose!42257 lambda!298955))))

(declare-fun bs!1290651 () Bool)

(assert (= bs!1290651 d!1763544))

(declare-fun m!6560586 () Bool)

(assert (=> bs!1290651 m!6560586))

(assert (=> d!1763060 d!1763544))

(declare-fun bs!1290652 () Bool)

(declare-fun d!1763546 () Bool)

(assert (= bs!1290652 (and d!1763546 b!5576005)))

(declare-fun lambda!299027 () Int)

(assert (=> bs!1290652 (= lambda!299027 lambda!298900)))

(declare-fun bs!1290653 () Bool)

(assert (= bs!1290653 (and d!1763546 b!5576666)))

(assert (=> bs!1290653 (not (= lambda!299027 lambda!298963))))

(declare-fun bs!1290654 () Bool)

(assert (= bs!1290654 (and d!1763546 b!5577634)))

(assert (=> bs!1290654 (not (= lambda!299027 lambda!299019))))

(declare-fun bs!1290655 () Bool)

(assert (= bs!1290655 (and d!1763546 b!5577636)))

(assert (=> bs!1290655 (not (= lambda!299027 lambda!299020))))

(declare-fun bs!1290656 () Bool)

(assert (= bs!1290656 (and d!1763546 d!1763060)))

(assert (=> bs!1290656 (= lambda!299027 lambda!298954)))

(declare-fun bs!1290657 () Bool)

(assert (= bs!1290657 (and d!1763546 d!1763058)))

(assert (=> bs!1290657 (= lambda!299027 lambda!298949)))

(declare-fun bs!1290658 () Bool)

(assert (= bs!1290658 (and d!1763546 d!1763408)))

(assert (=> bs!1290658 (= lambda!299027 lambda!299010)))

(declare-fun bs!1290659 () Bool)

(assert (= bs!1290659 (and d!1763546 b!5576668)))

(assert (=> bs!1290659 (not (= lambda!299027 lambda!298964))))

(assert (=> bs!1290652 (not (= lambda!299027 lambda!298901))))

(assert (=> bs!1290656 (not (= lambda!299027 lambda!298955))))

(assert (=> d!1763546 true))

(assert (=> d!1763546 true))

(assert (=> d!1763546 true))

(declare-fun lambda!299028 () Int)

(assert (=> bs!1290652 (not (= lambda!299028 lambda!298900))))

(assert (=> bs!1290653 (not (= lambda!299028 lambda!298963))))

(assert (=> bs!1290654 (not (= lambda!299028 lambda!299019))))

(assert (=> bs!1290655 (= (and (= (regOne!31626 r!7292) (regOne!31626 (regTwo!31627 r!7292))) (= (regTwo!31626 r!7292) (regTwo!31626 (regTwo!31627 r!7292)))) (= lambda!299028 lambda!299020))))

(assert (=> bs!1290656 (not (= lambda!299028 lambda!298954))))

(assert (=> bs!1290657 (not (= lambda!299028 lambda!298949))))

(assert (=> bs!1290659 (= lambda!299028 lambda!298964)))

(assert (=> bs!1290652 (= lambda!299028 lambda!298901)))

(assert (=> bs!1290656 (= lambda!299028 lambda!298955)))

(assert (=> bs!1290658 (not (= lambda!299028 lambda!299010))))

(declare-fun bs!1290660 () Bool)

(assert (= bs!1290660 d!1763546))

(assert (=> bs!1290660 (not (= lambda!299028 lambda!299027))))

(assert (=> d!1763546 true))

(assert (=> d!1763546 true))

(assert (=> d!1763546 true))

(assert (=> d!1763546 (= (Exists!2657 lambda!299027) (Exists!2657 lambda!299028))))

(assert (=> d!1763546 true))

(declare-fun _$90!1298 () Unit!155600)

(assert (=> d!1763546 (= (choose!42259 (regOne!31626 r!7292) (regTwo!31626 r!7292) s!2326) _$90!1298)))

(declare-fun m!6560588 () Bool)

(assert (=> bs!1290660 m!6560588))

(declare-fun m!6560590 () Bool)

(assert (=> bs!1290660 m!6560590))

(assert (=> d!1763060 d!1763546))

(assert (=> d!1763060 d!1763406))

(declare-fun d!1763548 () Bool)

(declare-fun res!2367243 () Bool)

(declare-fun e!3441846 () Bool)

(assert (=> d!1763548 (=> res!2367243 e!3441846)))

(assert (=> d!1763548 (= res!2367243 ((_ is Nil!62846) lt!2252754))))

(assert (=> d!1763548 (= (forall!14728 lt!2252754 lambda!298939) e!3441846)))

(declare-fun b!5577675 () Bool)

(declare-fun e!3441847 () Bool)

(assert (=> b!5577675 (= e!3441846 e!3441847)))

(declare-fun res!2367244 () Bool)

(assert (=> b!5577675 (=> (not res!2367244) (not e!3441847))))

(assert (=> b!5577675 (= res!2367244 (dynLambda!24580 lambda!298939 (h!69294 lt!2252754)))))

(declare-fun b!5577676 () Bool)

(assert (=> b!5577676 (= e!3441847 (forall!14728 (t!376239 lt!2252754) lambda!298939))))

(assert (= (and d!1763548 (not res!2367243)) b!5577675))

(assert (= (and b!5577675 res!2367244) b!5577676))

(declare-fun b_lambda!211443 () Bool)

(assert (=> (not b_lambda!211443) (not b!5577675)))

(declare-fun m!6560592 () Bool)

(assert (=> b!5577675 m!6560592))

(declare-fun m!6560594 () Bool)

(assert (=> b!5577676 m!6560594))

(assert (=> d!1763014 d!1763548))

(assert (=> b!5576475 d!1763070))

(declare-fun bs!1290661 () Bool)

(declare-fun d!1763550 () Bool)

(assert (= bs!1290661 (and d!1763550 d!1763252)))

(declare-fun lambda!299029 () Int)

(assert (=> bs!1290661 (= lambda!299029 lambda!298987)))

(declare-fun bs!1290662 () Bool)

(assert (= bs!1290662 (and d!1763550 d!1763014)))

(assert (=> bs!1290662 (= lambda!299029 lambda!298939)))

(declare-fun bs!1290663 () Bool)

(assert (= bs!1290663 (and d!1763550 d!1763022)))

(assert (=> bs!1290663 (= lambda!299029 lambda!298943)))

(declare-fun bs!1290664 () Bool)

(assert (= bs!1290664 (and d!1763550 d!1763012)))

(assert (=> bs!1290664 (= lambda!299029 lambda!298936)))

(declare-fun bs!1290665 () Bool)

(assert (= bs!1290665 (and d!1763550 d!1763308)))

(assert (=> bs!1290665 (= lambda!299029 lambda!298996)))

(declare-fun bs!1290666 () Bool)

(assert (= bs!1290666 (and d!1763550 d!1763016)))

(assert (=> bs!1290666 (= lambda!299029 lambda!298942)))

(declare-fun bs!1290667 () Bool)

(assert (= bs!1290667 (and d!1763550 d!1763498)))

(assert (=> bs!1290667 (= lambda!299029 lambda!299015)))

(declare-fun bs!1290668 () Bool)

(assert (= bs!1290668 (and d!1763550 d!1763070)))

(assert (=> bs!1290668 (= lambda!299029 lambda!298958)))

(declare-fun bs!1290669 () Bool)

(assert (= bs!1290669 (and d!1763550 d!1763400)))

(assert (=> bs!1290669 (= lambda!299029 lambda!299006)))

(declare-fun lt!2252830 () List!62970)

(assert (=> d!1763550 (forall!14728 lt!2252830 lambda!299029)))

(declare-fun e!3441848 () List!62970)

(assert (=> d!1763550 (= lt!2252830 e!3441848)))

(declare-fun c!976528 () Bool)

(assert (=> d!1763550 (= c!976528 ((_ is Cons!62847) (t!376240 zl!343)))))

(assert (=> d!1763550 (= (unfocusZipperList!985 (t!376240 zl!343)) lt!2252830)))

(declare-fun b!5577677 () Bool)

(assert (=> b!5577677 (= e!3441848 (Cons!62846 (generalisedConcat!1172 (exprs!5441 (h!69295 (t!376240 zl!343)))) (unfocusZipperList!985 (t!376240 (t!376240 zl!343)))))))

(declare-fun b!5577678 () Bool)

(assert (=> b!5577678 (= e!3441848 Nil!62846)))

(assert (= (and d!1763550 c!976528) b!5577677))

(assert (= (and d!1763550 (not c!976528)) b!5577678))

(declare-fun m!6560596 () Bool)

(assert (=> d!1763550 m!6560596))

(declare-fun m!6560598 () Bool)

(assert (=> b!5577677 m!6560598))

(declare-fun m!6560600 () Bool)

(assert (=> b!5577677 m!6560600))

(assert (=> b!5576475 d!1763550))

(declare-fun bs!1290670 () Bool)

(declare-fun d!1763552 () Bool)

(assert (= bs!1290670 (and d!1763552 d!1763388)))

(declare-fun lambda!299030 () Int)

(assert (=> bs!1290670 (= lambda!299030 lambda!299005)))

(declare-fun bs!1290671 () Bool)

(assert (= bs!1290671 (and d!1763552 d!1763450)))

(assert (=> bs!1290671 (= lambda!299030 lambda!299012)))

(declare-fun bs!1290672 () Bool)

(assert (= bs!1290672 (and d!1763552 d!1763454)))

(assert (=> bs!1290672 (= lambda!299030 lambda!299013)))

(declare-fun bs!1290673 () Bool)

(assert (= bs!1290673 (and d!1763552 d!1763536)))

(assert (=> bs!1290673 (= lambda!299030 lambda!299022)))

(assert (=> d!1763552 (= (nullableZipper!1556 lt!2252684) (exists!2159 lt!2252684 lambda!299030))))

(declare-fun bs!1290674 () Bool)

(assert (= bs!1290674 d!1763552))

(declare-fun m!6560602 () Bool)

(assert (=> bs!1290674 m!6560602))

(assert (=> b!5576485 d!1763552))

(declare-fun b!5577679 () Bool)

(declare-fun e!3441849 () Bool)

(declare-fun e!3441851 () Bool)

(assert (=> b!5577679 (= e!3441849 e!3441851)))

(declare-fun res!2367247 () Bool)

(assert (=> b!5577679 (=> res!2367247 e!3441851)))

(assert (=> b!5577679 (= res!2367247 ((_ is Star!15557) (regOne!31627 (regOne!31626 r!7292))))))

(declare-fun b!5577680 () Bool)

(declare-fun e!3441853 () Bool)

(assert (=> b!5577680 (= e!3441853 e!3441849)))

(declare-fun res!2367245 () Bool)

(assert (=> b!5577680 (=> (not res!2367245) (not e!3441849))))

(assert (=> b!5577680 (= res!2367245 (and (not ((_ is EmptyLang!15557) (regOne!31627 (regOne!31626 r!7292)))) (not ((_ is ElementMatch!15557) (regOne!31627 (regOne!31626 r!7292))))))))

(declare-fun bm!416995 () Bool)

(declare-fun call!417001 () Bool)

(declare-fun c!976529 () Bool)

(assert (=> bm!416995 (= call!417001 (nullable!5589 (ite c!976529 (regOne!31627 (regOne!31627 (regOne!31626 r!7292))) (regOne!31626 (regOne!31627 (regOne!31626 r!7292))))))))

(declare-fun b!5577681 () Bool)

(declare-fun e!3441850 () Bool)

(declare-fun e!3441854 () Bool)

(assert (=> b!5577681 (= e!3441850 e!3441854)))

(declare-fun res!2367246 () Bool)

(assert (=> b!5577681 (= res!2367246 call!417001)))

(assert (=> b!5577681 (=> res!2367246 e!3441854)))

(declare-fun b!5577683 () Bool)

(declare-fun e!3441852 () Bool)

(declare-fun call!417000 () Bool)

(assert (=> b!5577683 (= e!3441852 call!417000)))

(declare-fun bm!416996 () Bool)

(assert (=> bm!416996 (= call!417000 (nullable!5589 (ite c!976529 (regTwo!31627 (regOne!31627 (regOne!31626 r!7292))) (regTwo!31626 (regOne!31627 (regOne!31626 r!7292))))))))

(declare-fun b!5577682 () Bool)

(assert (=> b!5577682 (= e!3441851 e!3441850)))

(assert (=> b!5577682 (= c!976529 ((_ is Union!15557) (regOne!31627 (regOne!31626 r!7292))))))

(declare-fun d!1763554 () Bool)

(declare-fun res!2367248 () Bool)

(assert (=> d!1763554 (=> res!2367248 e!3441853)))

(assert (=> d!1763554 (= res!2367248 ((_ is EmptyExpr!15557) (regOne!31627 (regOne!31626 r!7292))))))

(assert (=> d!1763554 (= (nullableFct!1703 (regOne!31627 (regOne!31626 r!7292))) e!3441853)))

(declare-fun b!5577684 () Bool)

(assert (=> b!5577684 (= e!3441854 call!417000)))

(declare-fun b!5577685 () Bool)

(assert (=> b!5577685 (= e!3441850 e!3441852)))

(declare-fun res!2367249 () Bool)

(assert (=> b!5577685 (= res!2367249 call!417001)))

(assert (=> b!5577685 (=> (not res!2367249) (not e!3441852))))

(assert (= (and d!1763554 (not res!2367248)) b!5577680))

(assert (= (and b!5577680 res!2367245) b!5577679))

(assert (= (and b!5577679 (not res!2367247)) b!5577682))

(assert (= (and b!5577682 c!976529) b!5577681))

(assert (= (and b!5577682 (not c!976529)) b!5577685))

(assert (= (and b!5577681 (not res!2367246)) b!5577684))

(assert (= (and b!5577685 res!2367249) b!5577683))

(assert (= (or b!5577684 b!5577683) bm!416996))

(assert (= (or b!5577681 b!5577685) bm!416995))

(declare-fun m!6560604 () Bool)

(assert (=> bm!416995 m!6560604))

(declare-fun m!6560606 () Bool)

(assert (=> bm!416996 m!6560606))

(assert (=> d!1763050 d!1763554))

(declare-fun d!1763556 () Bool)

(assert (=> d!1763556 (= (nullable!5589 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))) (nullableFct!1703 (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))))))

(declare-fun bs!1290675 () Bool)

(assert (= bs!1290675 d!1763556))

(declare-fun m!6560608 () Bool)

(assert (=> bs!1290675 m!6560608))

(assert (=> b!5576730 d!1763556))

(assert (=> b!5576738 d!1763082))

(declare-fun b!5577686 () Bool)

(declare-fun e!3441860 () (InoxSet Context!9882))

(declare-fun call!417007 () (InoxSet Context!9882))

(declare-fun call!417006 () (InoxSet Context!9882))

(assert (=> b!5577686 (= e!3441860 ((_ map or) call!417007 call!417006))))

(declare-fun b!5577687 () Bool)

(declare-fun e!3441855 () (InoxSet Context!9882))

(assert (=> b!5577687 (= e!3441855 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577688 () Bool)

(declare-fun call!417005 () (InoxSet Context!9882))

(assert (=> b!5577688 (= e!3441855 call!417005)))

(declare-fun b!5577689 () Bool)

(declare-fun c!976533 () Bool)

(declare-fun e!3441856 () Bool)

(assert (=> b!5577689 (= c!976533 e!3441856)))

(declare-fun res!2367250 () Bool)

(assert (=> b!5577689 (=> (not res!2367250) (not e!3441856))))

(assert (=> b!5577689 (= res!2367250 ((_ is Concat!24402) (h!69294 (exprs!5441 lt!2252691))))))

(declare-fun e!3441857 () (InoxSet Context!9882))

(assert (=> b!5577689 (= e!3441857 e!3441860)))

(declare-fun b!5577690 () Bool)

(declare-fun e!3441859 () (InoxSet Context!9882))

(assert (=> b!5577690 (= e!3441859 e!3441857)))

(declare-fun c!976534 () Bool)

(assert (=> b!5577690 (= c!976534 ((_ is Union!15557) (h!69294 (exprs!5441 lt!2252691))))))

(declare-fun b!5577691 () Bool)

(assert (=> b!5577691 (= e!3441859 (store ((as const (Array Context!9882 Bool)) false) (Context!9883 (t!376239 (exprs!5441 lt!2252691))) true))))

(declare-fun b!5577692 () Bool)

(assert (=> b!5577692 (= e!3441856 (nullable!5589 (regOne!31626 (h!69294 (exprs!5441 lt!2252691)))))))

(declare-fun b!5577693 () Bool)

(declare-fun c!976530 () Bool)

(assert (=> b!5577693 (= c!976530 ((_ is Star!15557) (h!69294 (exprs!5441 lt!2252691))))))

(declare-fun e!3441858 () (InoxSet Context!9882))

(assert (=> b!5577693 (= e!3441858 e!3441855)))

(declare-fun b!5577694 () Bool)

(declare-fun call!417002 () (InoxSet Context!9882))

(assert (=> b!5577694 (= e!3441857 ((_ map or) call!417002 call!417007))))

(declare-fun bm!416998 () Bool)

(assert (=> bm!416998 (= call!417006 call!417002)))

(declare-fun b!5577695 () Bool)

(assert (=> b!5577695 (= e!3441858 call!417005)))

(declare-fun call!417004 () List!62970)

(declare-fun bm!416999 () Bool)

(declare-fun c!976531 () Bool)

(assert (=> bm!416999 (= call!417004 ($colon$colon!1624 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252691)))) (ite (or c!976533 c!976531) (regTwo!31626 (h!69294 (exprs!5441 lt!2252691))) (h!69294 (exprs!5441 lt!2252691)))))))

(declare-fun call!417003 () List!62970)

(declare-fun bm!417000 () Bool)

(assert (=> bm!417000 (= call!417002 (derivationStepZipperDown!899 (ite c!976534 (regOne!31627 (h!69294 (exprs!5441 lt!2252691))) (ite c!976533 (regTwo!31626 (h!69294 (exprs!5441 lt!2252691))) (ite c!976531 (regOne!31626 (h!69294 (exprs!5441 lt!2252691))) (reg!15886 (h!69294 (exprs!5441 lt!2252691)))))) (ite (or c!976534 c!976533) (Context!9883 (t!376239 (exprs!5441 lt!2252691))) (Context!9883 call!417003)) (h!69296 s!2326)))))

(declare-fun b!5577696 () Bool)

(assert (=> b!5577696 (= e!3441860 e!3441858)))

(assert (=> b!5577696 (= c!976531 ((_ is Concat!24402) (h!69294 (exprs!5441 lt!2252691))))))

(declare-fun bm!416997 () Bool)

(assert (=> bm!416997 (= call!417005 call!417006)))

(declare-fun d!1763558 () Bool)

(declare-fun c!976532 () Bool)

(assert (=> d!1763558 (= c!976532 (and ((_ is ElementMatch!15557) (h!69294 (exprs!5441 lt!2252691))) (= (c!976080 (h!69294 (exprs!5441 lt!2252691))) (h!69296 s!2326))))))

(assert (=> d!1763558 (= (derivationStepZipperDown!899 (h!69294 (exprs!5441 lt!2252691)) (Context!9883 (t!376239 (exprs!5441 lt!2252691))) (h!69296 s!2326)) e!3441859)))

(declare-fun bm!417001 () Bool)

(assert (=> bm!417001 (= call!417007 (derivationStepZipperDown!899 (ite c!976534 (regTwo!31627 (h!69294 (exprs!5441 lt!2252691))) (regOne!31626 (h!69294 (exprs!5441 lt!2252691)))) (ite c!976534 (Context!9883 (t!376239 (exprs!5441 lt!2252691))) (Context!9883 call!417004)) (h!69296 s!2326)))))

(declare-fun bm!417002 () Bool)

(assert (=> bm!417002 (= call!417003 call!417004)))

(assert (= (and d!1763558 c!976532) b!5577691))

(assert (= (and d!1763558 (not c!976532)) b!5577690))

(assert (= (and b!5577690 c!976534) b!5577694))

(assert (= (and b!5577690 (not c!976534)) b!5577689))

(assert (= (and b!5577689 res!2367250) b!5577692))

(assert (= (and b!5577689 c!976533) b!5577686))

(assert (= (and b!5577689 (not c!976533)) b!5577696))

(assert (= (and b!5577696 c!976531) b!5577695))

(assert (= (and b!5577696 (not c!976531)) b!5577693))

(assert (= (and b!5577693 c!976530) b!5577688))

(assert (= (and b!5577693 (not c!976530)) b!5577687))

(assert (= (or b!5577695 b!5577688) bm!417002))

(assert (= (or b!5577695 b!5577688) bm!416997))

(assert (= (or b!5577686 bm!417002) bm!416999))

(assert (= (or b!5577686 bm!416997) bm!416998))

(assert (= (or b!5577694 b!5577686) bm!417001))

(assert (= (or b!5577694 bm!416998) bm!417000))

(declare-fun m!6560610 () Bool)

(assert (=> b!5577691 m!6560610))

(declare-fun m!6560612 () Bool)

(assert (=> bm!416999 m!6560612))

(declare-fun m!6560614 () Bool)

(assert (=> bm!417001 m!6560614))

(declare-fun m!6560616 () Bool)

(assert (=> b!5577692 m!6560616))

(declare-fun m!6560618 () Bool)

(assert (=> bm!417000 m!6560618))

(assert (=> bm!416819 d!1763558))

(declare-fun b!5577697 () Bool)

(declare-fun e!3441863 () Bool)

(assert (=> b!5577697 (= e!3441863 (matchR!7742 (derivativeStep!4410 (derivativeStep!4410 r!7292 (head!11893 s!2326)) (head!11893 (tail!10988 s!2326))) (tail!10988 (tail!10988 s!2326))))))

(declare-fun b!5577698 () Bool)

(declare-fun e!3441866 () Bool)

(assert (=> b!5577698 (= e!3441866 (not (= (head!11893 (tail!10988 s!2326)) (c!976080 (derivativeStep!4410 r!7292 (head!11893 s!2326))))))))

(declare-fun b!5577699 () Bool)

(declare-fun res!2367255 () Bool)

(declare-fun e!3441864 () Bool)

(assert (=> b!5577699 (=> res!2367255 e!3441864)))

(assert (=> b!5577699 (= res!2367255 (not ((_ is ElementMatch!15557) (derivativeStep!4410 r!7292 (head!11893 s!2326)))))))

(declare-fun e!3441861 () Bool)

(assert (=> b!5577699 (= e!3441861 e!3441864)))

(declare-fun b!5577700 () Bool)

(assert (=> b!5577700 (= e!3441863 (nullable!5589 (derivativeStep!4410 r!7292 (head!11893 s!2326))))))

(declare-fun b!5577701 () Bool)

(declare-fun lt!2252831 () Bool)

(assert (=> b!5577701 (= e!3441861 (not lt!2252831))))

(declare-fun b!5577702 () Bool)

(declare-fun e!3441862 () Bool)

(declare-fun call!417008 () Bool)

(assert (=> b!5577702 (= e!3441862 (= lt!2252831 call!417008))))

(declare-fun b!5577703 () Bool)

(declare-fun res!2367253 () Bool)

(declare-fun e!3441867 () Bool)

(assert (=> b!5577703 (=> (not res!2367253) (not e!3441867))))

(assert (=> b!5577703 (= res!2367253 (not call!417008))))

(declare-fun b!5577704 () Bool)

(declare-fun res!2367252 () Bool)

(assert (=> b!5577704 (=> (not res!2367252) (not e!3441867))))

(assert (=> b!5577704 (= res!2367252 (isEmpty!34655 (tail!10988 (tail!10988 s!2326))))))

(declare-fun b!5577705 () Bool)

(declare-fun e!3441865 () Bool)

(assert (=> b!5577705 (= e!3441865 e!3441866)))

(declare-fun res!2367258 () Bool)

(assert (=> b!5577705 (=> res!2367258 e!3441866)))

(assert (=> b!5577705 (= res!2367258 call!417008)))

(declare-fun b!5577706 () Bool)

(assert (=> b!5577706 (= e!3441862 e!3441861)))

(declare-fun c!976535 () Bool)

(assert (=> b!5577706 (= c!976535 ((_ is EmptyLang!15557) (derivativeStep!4410 r!7292 (head!11893 s!2326))))))

(declare-fun d!1763560 () Bool)

(assert (=> d!1763560 e!3441862))

(declare-fun c!976536 () Bool)

(assert (=> d!1763560 (= c!976536 ((_ is EmptyExpr!15557) (derivativeStep!4410 r!7292 (head!11893 s!2326))))))

(assert (=> d!1763560 (= lt!2252831 e!3441863)))

(declare-fun c!976537 () Bool)

(assert (=> d!1763560 (= c!976537 (isEmpty!34655 (tail!10988 s!2326)))))

(assert (=> d!1763560 (validRegex!7293 (derivativeStep!4410 r!7292 (head!11893 s!2326)))))

(assert (=> d!1763560 (= (matchR!7742 (derivativeStep!4410 r!7292 (head!11893 s!2326)) (tail!10988 s!2326)) lt!2252831)))

(declare-fun b!5577707 () Bool)

(assert (=> b!5577707 (= e!3441867 (= (head!11893 (tail!10988 s!2326)) (c!976080 (derivativeStep!4410 r!7292 (head!11893 s!2326)))))))

(declare-fun bm!417003 () Bool)

(assert (=> bm!417003 (= call!417008 (isEmpty!34655 (tail!10988 s!2326)))))

(declare-fun b!5577708 () Bool)

(declare-fun res!2367257 () Bool)

(assert (=> b!5577708 (=> res!2367257 e!3441864)))

(assert (=> b!5577708 (= res!2367257 e!3441867)))

(declare-fun res!2367256 () Bool)

(assert (=> b!5577708 (=> (not res!2367256) (not e!3441867))))

(assert (=> b!5577708 (= res!2367256 lt!2252831)))

(declare-fun b!5577709 () Bool)

(declare-fun res!2367254 () Bool)

(assert (=> b!5577709 (=> res!2367254 e!3441866)))

(assert (=> b!5577709 (= res!2367254 (not (isEmpty!34655 (tail!10988 (tail!10988 s!2326)))))))

(declare-fun b!5577710 () Bool)

(assert (=> b!5577710 (= e!3441864 e!3441865)))

(declare-fun res!2367251 () Bool)

(assert (=> b!5577710 (=> (not res!2367251) (not e!3441865))))

(assert (=> b!5577710 (= res!2367251 (not lt!2252831))))

(assert (= (and d!1763560 c!976537) b!5577700))

(assert (= (and d!1763560 (not c!976537)) b!5577697))

(assert (= (and d!1763560 c!976536) b!5577702))

(assert (= (and d!1763560 (not c!976536)) b!5577706))

(assert (= (and b!5577706 c!976535) b!5577701))

(assert (= (and b!5577706 (not c!976535)) b!5577699))

(assert (= (and b!5577699 (not res!2367255)) b!5577708))

(assert (= (and b!5577708 res!2367256) b!5577703))

(assert (= (and b!5577703 res!2367253) b!5577704))

(assert (= (and b!5577704 res!2367252) b!5577707))

(assert (= (and b!5577708 (not res!2367257)) b!5577710))

(assert (= (and b!5577710 res!2367251) b!5577705))

(assert (= (and b!5577705 (not res!2367258)) b!5577709))

(assert (= (and b!5577709 (not res!2367254)) b!5577698))

(assert (= (or b!5577702 b!5577703 b!5577705) bm!417003))

(assert (=> b!5577698 m!6559456))

(assert (=> b!5577698 m!6560214))

(assert (=> bm!417003 m!6559456))

(assert (=> bm!417003 m!6559622))

(assert (=> d!1763560 m!6559456))

(assert (=> d!1763560 m!6559622))

(assert (=> d!1763560 m!6559626))

(declare-fun m!6560620 () Bool)

(assert (=> d!1763560 m!6560620))

(assert (=> b!5577709 m!6559456))

(assert (=> b!5577709 m!6560218))

(assert (=> b!5577709 m!6560218))

(declare-fun m!6560622 () Bool)

(assert (=> b!5577709 m!6560622))

(assert (=> b!5577707 m!6559456))

(assert (=> b!5577707 m!6560214))

(assert (=> b!5577704 m!6559456))

(assert (=> b!5577704 m!6560218))

(assert (=> b!5577704 m!6560218))

(assert (=> b!5577704 m!6560622))

(assert (=> b!5577700 m!6559626))

(declare-fun m!6560624 () Bool)

(assert (=> b!5577700 m!6560624))

(assert (=> b!5577697 m!6559456))

(assert (=> b!5577697 m!6560214))

(assert (=> b!5577697 m!6559626))

(assert (=> b!5577697 m!6560214))

(declare-fun m!6560626 () Bool)

(assert (=> b!5577697 m!6560626))

(assert (=> b!5577697 m!6559456))

(assert (=> b!5577697 m!6560218))

(assert (=> b!5577697 m!6560626))

(assert (=> b!5577697 m!6560218))

(declare-fun m!6560628 () Bool)

(assert (=> b!5577697 m!6560628))

(assert (=> b!5576705 d!1763560))

(declare-fun b!5577731 () Bool)

(declare-fun c!976548 () Bool)

(assert (=> b!5577731 (= c!976548 (nullable!5589 (regOne!31626 r!7292)))))

(declare-fun e!3441881 () Regex!15557)

(declare-fun e!3441878 () Regex!15557)

(assert (=> b!5577731 (= e!3441881 e!3441878)))

(declare-fun b!5577732 () Bool)

(declare-fun call!417019 () Regex!15557)

(assert (=> b!5577732 (= e!3441878 (Union!15557 (Concat!24402 call!417019 (regTwo!31626 r!7292)) EmptyLang!15557))))

(declare-fun b!5577733 () Bool)

(declare-fun e!3441879 () Regex!15557)

(assert (=> b!5577733 (= e!3441879 e!3441881)))

(declare-fun c!976552 () Bool)

(assert (=> b!5577733 (= c!976552 ((_ is Star!15557) r!7292))))

(declare-fun call!417018 () Regex!15557)

(declare-fun b!5577734 () Bool)

(assert (=> b!5577734 (= e!3441878 (Union!15557 (Concat!24402 call!417018 (regTwo!31626 r!7292)) call!417019))))

(declare-fun b!5577735 () Bool)

(assert (=> b!5577735 (= e!3441881 (Concat!24402 call!417018 r!7292))))

(declare-fun bm!417012 () Bool)

(declare-fun call!417017 () Regex!15557)

(assert (=> bm!417012 (= call!417019 call!417017)))

(declare-fun bm!417013 () Bool)

(declare-fun call!417020 () Regex!15557)

(assert (=> bm!417013 (= call!417018 call!417020)))

(declare-fun b!5577736 () Bool)

(declare-fun e!3441882 () Regex!15557)

(declare-fun e!3441880 () Regex!15557)

(assert (=> b!5577736 (= e!3441882 e!3441880)))

(declare-fun c!976549 () Bool)

(assert (=> b!5577736 (= c!976549 ((_ is ElementMatch!15557) r!7292))))

(declare-fun b!5577737 () Bool)

(assert (=> b!5577737 (= e!3441880 (ite (= (head!11893 s!2326) (c!976080 r!7292)) EmptyExpr!15557 EmptyLang!15557))))

(declare-fun b!5577738 () Bool)

(assert (=> b!5577738 (= e!3441882 EmptyLang!15557)))

(declare-fun b!5577739 () Bool)

(assert (=> b!5577739 (= e!3441879 (Union!15557 call!417017 call!417020))))

(declare-fun c!976550 () Bool)

(declare-fun bm!417015 () Bool)

(assert (=> bm!417015 (= call!417020 (derivativeStep!4410 (ite c!976550 (regTwo!31627 r!7292) (ite c!976552 (reg!15886 r!7292) (regOne!31626 r!7292))) (head!11893 s!2326)))))

(declare-fun b!5577740 () Bool)

(assert (=> b!5577740 (= c!976550 ((_ is Union!15557) r!7292))))

(assert (=> b!5577740 (= e!3441880 e!3441879)))

(declare-fun d!1763562 () Bool)

(declare-fun lt!2252834 () Regex!15557)

(assert (=> d!1763562 (validRegex!7293 lt!2252834)))

(assert (=> d!1763562 (= lt!2252834 e!3441882)))

(declare-fun c!976551 () Bool)

(assert (=> d!1763562 (= c!976551 (or ((_ is EmptyExpr!15557) r!7292) ((_ is EmptyLang!15557) r!7292)))))

(assert (=> d!1763562 (validRegex!7293 r!7292)))

(assert (=> d!1763562 (= (derivativeStep!4410 r!7292 (head!11893 s!2326)) lt!2252834)))

(declare-fun bm!417014 () Bool)

(assert (=> bm!417014 (= call!417017 (derivativeStep!4410 (ite c!976550 (regOne!31627 r!7292) (ite c!976548 (regTwo!31626 r!7292) (regOne!31626 r!7292))) (head!11893 s!2326)))))

(assert (= (and d!1763562 c!976551) b!5577738))

(assert (= (and d!1763562 (not c!976551)) b!5577736))

(assert (= (and b!5577736 c!976549) b!5577737))

(assert (= (and b!5577736 (not c!976549)) b!5577740))

(assert (= (and b!5577740 c!976550) b!5577739))

(assert (= (and b!5577740 (not c!976550)) b!5577733))

(assert (= (and b!5577733 c!976552) b!5577735))

(assert (= (and b!5577733 (not c!976552)) b!5577731))

(assert (= (and b!5577731 c!976548) b!5577734))

(assert (= (and b!5577731 (not c!976548)) b!5577732))

(assert (= (or b!5577734 b!5577732) bm!417012))

(assert (= (or b!5577735 b!5577734) bm!417013))

(assert (= (or b!5577739 bm!417013) bm!417015))

(assert (= (or b!5577739 bm!417012) bm!417014))

(assert (=> b!5577731 m!6560458))

(assert (=> bm!417015 m!6559452))

(declare-fun m!6560630 () Bool)

(assert (=> bm!417015 m!6560630))

(declare-fun m!6560632 () Bool)

(assert (=> d!1763562 m!6560632))

(assert (=> d!1763562 m!6559132))

(assert (=> bm!417014 m!6559452))

(declare-fun m!6560634 () Bool)

(assert (=> bm!417014 m!6560634))

(assert (=> b!5576705 d!1763562))

(assert (=> b!5576705 d!1763372))

(assert (=> b!5576705 d!1763322))

(declare-fun bs!1290676 () Bool)

(declare-fun b!5577741 () Bool)

(assert (= bs!1290676 (and b!5577741 b!5576005)))

(declare-fun lambda!299031 () Int)

(assert (=> bs!1290676 (not (= lambda!299031 lambda!298900))))

(declare-fun bs!1290677 () Bool)

(assert (= bs!1290677 (and b!5577741 b!5576666)))

(assert (=> bs!1290677 (= (and (= (reg!15886 (regOne!31627 r!7292)) (reg!15886 r!7292)) (= (regOne!31627 r!7292) r!7292)) (= lambda!299031 lambda!298963))))

(declare-fun bs!1290678 () Bool)

(assert (= bs!1290678 (and b!5577741 b!5577634)))

(assert (=> bs!1290678 (= (and (= (reg!15886 (regOne!31627 r!7292)) (reg!15886 (regTwo!31627 r!7292))) (= (regOne!31627 r!7292) (regTwo!31627 r!7292))) (= lambda!299031 lambda!299019))))

(declare-fun bs!1290679 () Bool)

(assert (= bs!1290679 (and b!5577741 b!5577636)))

(assert (=> bs!1290679 (not (= lambda!299031 lambda!299020))))

(declare-fun bs!1290680 () Bool)

(assert (= bs!1290680 (and b!5577741 d!1763060)))

(assert (=> bs!1290680 (not (= lambda!299031 lambda!298954))))

(declare-fun bs!1290681 () Bool)

(assert (= bs!1290681 (and b!5577741 d!1763058)))

(assert (=> bs!1290681 (not (= lambda!299031 lambda!298949))))

(declare-fun bs!1290682 () Bool)

(assert (= bs!1290682 (and b!5577741 b!5576668)))

(assert (=> bs!1290682 (not (= lambda!299031 lambda!298964))))

(assert (=> bs!1290676 (not (= lambda!299031 lambda!298901))))

(assert (=> bs!1290680 (not (= lambda!299031 lambda!298955))))

(declare-fun bs!1290683 () Bool)

(assert (= bs!1290683 (and b!5577741 d!1763546)))

(assert (=> bs!1290683 (not (= lambda!299031 lambda!299028))))

(declare-fun bs!1290684 () Bool)

(assert (= bs!1290684 (and b!5577741 d!1763408)))

(assert (=> bs!1290684 (not (= lambda!299031 lambda!299010))))

(assert (=> bs!1290683 (not (= lambda!299031 lambda!299027))))

(assert (=> b!5577741 true))

(assert (=> b!5577741 true))

(declare-fun bs!1290685 () Bool)

(declare-fun b!5577743 () Bool)

(assert (= bs!1290685 (and b!5577743 b!5576005)))

(declare-fun lambda!299032 () Int)

(assert (=> bs!1290685 (not (= lambda!299032 lambda!298900))))

(declare-fun bs!1290686 () Bool)

(assert (= bs!1290686 (and b!5577743 b!5576666)))

(assert (=> bs!1290686 (not (= lambda!299032 lambda!298963))))

(declare-fun bs!1290687 () Bool)

(assert (= bs!1290687 (and b!5577743 b!5577634)))

(assert (=> bs!1290687 (not (= lambda!299032 lambda!299019))))

(declare-fun bs!1290688 () Bool)

(assert (= bs!1290688 (and b!5577743 b!5577636)))

(assert (=> bs!1290688 (= (and (= (regOne!31626 (regOne!31627 r!7292)) (regOne!31626 (regTwo!31627 r!7292))) (= (regTwo!31626 (regOne!31627 r!7292)) (regTwo!31626 (regTwo!31627 r!7292)))) (= lambda!299032 lambda!299020))))

(declare-fun bs!1290689 () Bool)

(assert (= bs!1290689 (and b!5577743 d!1763060)))

(assert (=> bs!1290689 (not (= lambda!299032 lambda!298954))))

(declare-fun bs!1290690 () Bool)

(assert (= bs!1290690 (and b!5577743 d!1763058)))

(assert (=> bs!1290690 (not (= lambda!299032 lambda!298949))))

(declare-fun bs!1290691 () Bool)

(assert (= bs!1290691 (and b!5577743 b!5577741)))

(assert (=> bs!1290691 (not (= lambda!299032 lambda!299031))))

(declare-fun bs!1290692 () Bool)

(assert (= bs!1290692 (and b!5577743 b!5576668)))

(assert (=> bs!1290692 (= (and (= (regOne!31626 (regOne!31627 r!7292)) (regOne!31626 r!7292)) (= (regTwo!31626 (regOne!31627 r!7292)) (regTwo!31626 r!7292))) (= lambda!299032 lambda!298964))))

(assert (=> bs!1290685 (= (and (= (regOne!31626 (regOne!31627 r!7292)) (regOne!31626 r!7292)) (= (regTwo!31626 (regOne!31627 r!7292)) (regTwo!31626 r!7292))) (= lambda!299032 lambda!298901))))

(assert (=> bs!1290689 (= (and (= (regOne!31626 (regOne!31627 r!7292)) (regOne!31626 r!7292)) (= (regTwo!31626 (regOne!31627 r!7292)) (regTwo!31626 r!7292))) (= lambda!299032 lambda!298955))))

(declare-fun bs!1290693 () Bool)

(assert (= bs!1290693 (and b!5577743 d!1763546)))

(assert (=> bs!1290693 (= (and (= (regOne!31626 (regOne!31627 r!7292)) (regOne!31626 r!7292)) (= (regTwo!31626 (regOne!31627 r!7292)) (regTwo!31626 r!7292))) (= lambda!299032 lambda!299028))))

(declare-fun bs!1290694 () Bool)

(assert (= bs!1290694 (and b!5577743 d!1763408)))

(assert (=> bs!1290694 (not (= lambda!299032 lambda!299010))))

(assert (=> bs!1290693 (not (= lambda!299032 lambda!299027))))

(assert (=> b!5577743 true))

(assert (=> b!5577743 true))

(declare-fun e!3441884 () Bool)

(declare-fun call!417022 () Bool)

(assert (=> b!5577741 (= e!3441884 call!417022)))

(declare-fun bm!417016 () Bool)

(declare-fun call!417021 () Bool)

(assert (=> bm!417016 (= call!417021 (isEmpty!34655 s!2326))))

(declare-fun b!5577742 () Bool)

(declare-fun c!976555 () Bool)

(assert (=> b!5577742 (= c!976555 ((_ is Union!15557) (regOne!31627 r!7292)))))

(declare-fun e!3441885 () Bool)

(declare-fun e!3441889 () Bool)

(assert (=> b!5577742 (= e!3441885 e!3441889)))

(declare-fun d!1763564 () Bool)

(declare-fun c!976553 () Bool)

(assert (=> d!1763564 (= c!976553 ((_ is EmptyExpr!15557) (regOne!31627 r!7292)))))

(declare-fun e!3441886 () Bool)

(assert (=> d!1763564 (= (matchRSpec!2660 (regOne!31627 r!7292) s!2326) e!3441886)))

(declare-fun e!3441888 () Bool)

(assert (=> b!5577743 (= e!3441888 call!417022)))

(declare-fun c!976556 () Bool)

(declare-fun bm!417017 () Bool)

(assert (=> bm!417017 (= call!417022 (Exists!2657 (ite c!976556 lambda!299031 lambda!299032)))))

(declare-fun b!5577744 () Bool)

(assert (=> b!5577744 (= e!3441889 e!3441888)))

(assert (=> b!5577744 (= c!976556 ((_ is Star!15557) (regOne!31627 r!7292)))))

(declare-fun b!5577745 () Bool)

(declare-fun e!3441883 () Bool)

(assert (=> b!5577745 (= e!3441889 e!3441883)))

(declare-fun res!2367260 () Bool)

(assert (=> b!5577745 (= res!2367260 (matchRSpec!2660 (regOne!31627 (regOne!31627 r!7292)) s!2326))))

(assert (=> b!5577745 (=> res!2367260 e!3441883)))

(declare-fun b!5577746 () Bool)

(declare-fun c!976554 () Bool)

(assert (=> b!5577746 (= c!976554 ((_ is ElementMatch!15557) (regOne!31627 r!7292)))))

(declare-fun e!3441887 () Bool)

(assert (=> b!5577746 (= e!3441887 e!3441885)))

(declare-fun b!5577747 () Bool)

(assert (=> b!5577747 (= e!3441886 e!3441887)))

(declare-fun res!2367259 () Bool)

(assert (=> b!5577747 (= res!2367259 (not ((_ is EmptyLang!15557) (regOne!31627 r!7292))))))

(assert (=> b!5577747 (=> (not res!2367259) (not e!3441887))))

(declare-fun b!5577748 () Bool)

(assert (=> b!5577748 (= e!3441885 (= s!2326 (Cons!62848 (c!976080 (regOne!31627 r!7292)) Nil!62848)))))

(declare-fun b!5577749 () Bool)

(assert (=> b!5577749 (= e!3441886 call!417021)))

(declare-fun b!5577750 () Bool)

(assert (=> b!5577750 (= e!3441883 (matchRSpec!2660 (regTwo!31627 (regOne!31627 r!7292)) s!2326))))

(declare-fun b!5577751 () Bool)

(declare-fun res!2367261 () Bool)

(assert (=> b!5577751 (=> res!2367261 e!3441884)))

(assert (=> b!5577751 (= res!2367261 call!417021)))

(assert (=> b!5577751 (= e!3441888 e!3441884)))

(assert (= (and d!1763564 c!976553) b!5577749))

(assert (= (and d!1763564 (not c!976553)) b!5577747))

(assert (= (and b!5577747 res!2367259) b!5577746))

(assert (= (and b!5577746 c!976554) b!5577748))

(assert (= (and b!5577746 (not c!976554)) b!5577742))

(assert (= (and b!5577742 c!976555) b!5577745))

(assert (= (and b!5577742 (not c!976555)) b!5577744))

(assert (= (and b!5577745 (not res!2367260)) b!5577750))

(assert (= (and b!5577744 c!976556) b!5577751))

(assert (= (and b!5577744 (not c!976556)) b!5577743))

(assert (= (and b!5577751 (not res!2367261)) b!5577741))

(assert (= (or b!5577741 b!5577743) bm!417017))

(assert (= (or b!5577749 b!5577751) bm!417016))

(assert (=> bm!417016 m!6559448))

(declare-fun m!6560636 () Bool)

(assert (=> bm!417017 m!6560636))

(declare-fun m!6560638 () Bool)

(assert (=> b!5577745 m!6560638))

(declare-fun m!6560640 () Bool)

(assert (=> b!5577750 m!6560640))

(assert (=> b!5576670 d!1763564))

(declare-fun bs!1290695 () Bool)

(declare-fun d!1763566 () Bool)

(assert (= bs!1290695 (and d!1763566 d!1763450)))

(declare-fun lambda!299033 () Int)

(assert (=> bs!1290695 (= lambda!299033 lambda!299012)))

(declare-fun bs!1290696 () Bool)

(assert (= bs!1290696 (and d!1763566 d!1763536)))

(assert (=> bs!1290696 (= lambda!299033 lambda!299022)))

(declare-fun bs!1290697 () Bool)

(assert (= bs!1290697 (and d!1763566 d!1763552)))

(assert (=> bs!1290697 (= lambda!299033 lambda!299030)))

(declare-fun bs!1290698 () Bool)

(assert (= bs!1290698 (and d!1763566 d!1763388)))

(assert (=> bs!1290698 (= lambda!299033 lambda!299005)))

(declare-fun bs!1290699 () Bool)

(assert (= bs!1290699 (and d!1763566 d!1763454)))

(assert (=> bs!1290699 (= lambda!299033 lambda!299013)))

(assert (=> d!1763566 (= (nullableZipper!1556 lt!2252695) (exists!2159 lt!2252695 lambda!299033))))

(declare-fun bs!1290700 () Bool)

(assert (= bs!1290700 d!1763566))

(declare-fun m!6560642 () Bool)

(assert (=> bs!1290700 m!6560642))

(assert (=> b!5576499 d!1763566))

(declare-fun d!1763568 () Bool)

(assert (=> d!1763568 true))

(declare-fun setRes!37106 () Bool)

(assert (=> d!1763568 setRes!37106))

(declare-fun condSetEmpty!37106 () Bool)

(declare-fun res!2367262 () (InoxSet Context!9882))

(assert (=> d!1763568 (= condSetEmpty!37106 (= res!2367262 ((as const (Array Context!9882 Bool)) false)))))

(assert (=> d!1763568 (= (choose!42255 z!1189 lambda!298902) res!2367262)))

(declare-fun setIsEmpty!37106 () Bool)

(assert (=> setIsEmpty!37106 setRes!37106))

(declare-fun e!3441890 () Bool)

(declare-fun tp!1543451 () Bool)

(declare-fun setElem!37106 () Context!9882)

(declare-fun setNonEmpty!37106 () Bool)

(assert (=> setNonEmpty!37106 (= setRes!37106 (and tp!1543451 (inv!82139 setElem!37106) e!3441890))))

(declare-fun setRest!37106 () (InoxSet Context!9882))

(assert (=> setNonEmpty!37106 (= res!2367262 ((_ map or) (store ((as const (Array Context!9882 Bool)) false) setElem!37106 true) setRest!37106))))

(declare-fun b!5577752 () Bool)

(declare-fun tp!1543450 () Bool)

(assert (=> b!5577752 (= e!3441890 tp!1543450)))

(assert (= (and d!1763568 condSetEmpty!37106) setIsEmpty!37106))

(assert (= (and d!1763568 (not condSetEmpty!37106)) setNonEmpty!37106))

(assert (= setNonEmpty!37106 b!5577752))

(declare-fun m!6560644 () Bool)

(assert (=> setNonEmpty!37106 m!6560644))

(assert (=> d!1763094 d!1763568))

(declare-fun d!1763570 () Bool)

(assert (=> d!1763570 (= (nullable!5589 (h!69294 (exprs!5441 lt!2252704))) (nullableFct!1703 (h!69294 (exprs!5441 lt!2252704))))))

(declare-fun bs!1290701 () Bool)

(assert (= bs!1290701 d!1763570))

(declare-fun m!6560646 () Bool)

(assert (=> bs!1290701 m!6560646))

(assert (=> b!5576516 d!1763570))

(declare-fun d!1763572 () Bool)

(assert (=> d!1763572 (= (head!11892 (exprs!5441 (h!69295 zl!343))) (h!69294 (exprs!5441 (h!69295 zl!343))))))

(assert (=> b!5576626 d!1763572))

(assert (=> d!1763020 d!1763238))

(declare-fun bs!1290702 () Bool)

(declare-fun d!1763574 () Bool)

(assert (= bs!1290702 (and d!1763574 d!1763450)))

(declare-fun lambda!299034 () Int)

(assert (=> bs!1290702 (= lambda!299034 lambda!299012)))

(declare-fun bs!1290703 () Bool)

(assert (= bs!1290703 (and d!1763574 d!1763536)))

(assert (=> bs!1290703 (= lambda!299034 lambda!299022)))

(declare-fun bs!1290704 () Bool)

(assert (= bs!1290704 (and d!1763574 d!1763552)))

(assert (=> bs!1290704 (= lambda!299034 lambda!299030)))

(declare-fun bs!1290705 () Bool)

(assert (= bs!1290705 (and d!1763574 d!1763566)))

(assert (=> bs!1290705 (= lambda!299034 lambda!299033)))

(declare-fun bs!1290706 () Bool)

(assert (= bs!1290706 (and d!1763574 d!1763388)))

(assert (=> bs!1290706 (= lambda!299034 lambda!299005)))

(declare-fun bs!1290707 () Bool)

(assert (= bs!1290707 (and d!1763574 d!1763454)))

(assert (=> bs!1290707 (= lambda!299034 lambda!299013)))

(assert (=> d!1763574 (= (nullableZipper!1556 lt!2252701) (exists!2159 lt!2252701 lambda!299034))))

(declare-fun bs!1290708 () Bool)

(assert (= bs!1290708 d!1763574))

(declare-fun m!6560648 () Bool)

(assert (=> bs!1290708 m!6560648))

(assert (=> b!5576487 d!1763574))

(declare-fun b!5577753 () Bool)

(declare-fun e!3441895 () Bool)

(declare-fun call!417023 () Bool)

(assert (=> b!5577753 (= e!3441895 call!417023)))

(declare-fun call!417024 () Bool)

(declare-fun c!976557 () Bool)

(declare-fun bm!417018 () Bool)

(assert (=> bm!417018 (= call!417024 (validRegex!7293 (ite c!976557 (regOne!31627 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))) (regOne!31626 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))))))))

(declare-fun b!5577754 () Bool)

(declare-fun res!2367266 () Bool)

(declare-fun e!3441893 () Bool)

(assert (=> b!5577754 (=> res!2367266 e!3441893)))

(assert (=> b!5577754 (= res!2367266 (not ((_ is Concat!24402) (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292))))))))

(declare-fun e!3441892 () Bool)

(assert (=> b!5577754 (= e!3441892 e!3441893)))

(declare-fun b!5577755 () Bool)

(declare-fun e!3441897 () Bool)

(assert (=> b!5577755 (= e!3441897 e!3441892)))

(assert (=> b!5577755 (= c!976557 ((_ is Union!15557) (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))))))

(declare-fun bm!417019 () Bool)

(declare-fun call!417025 () Bool)

(assert (=> bm!417019 (= call!417023 call!417025)))

(declare-fun b!5577756 () Bool)

(declare-fun e!3441896 () Bool)

(assert (=> b!5577756 (= e!3441897 e!3441896)))

(declare-fun res!2367263 () Bool)

(assert (=> b!5577756 (= res!2367263 (not (nullable!5589 (reg!15886 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))))))))

(assert (=> b!5577756 (=> (not res!2367263) (not e!3441896))))

(declare-fun c!976558 () Bool)

(declare-fun bm!417020 () Bool)

(assert (=> bm!417020 (= call!417025 (validRegex!7293 (ite c!976558 (reg!15886 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))) (ite c!976557 (regTwo!31627 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))) (regTwo!31626 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292))))))))))

(declare-fun b!5577757 () Bool)

(assert (=> b!5577757 (= e!3441896 call!417025)))

(declare-fun b!5577759 () Bool)

(declare-fun res!2367267 () Bool)

(declare-fun e!3441891 () Bool)

(assert (=> b!5577759 (=> (not res!2367267) (not e!3441891))))

(assert (=> b!5577759 (= res!2367267 call!417024)))

(assert (=> b!5577759 (= e!3441892 e!3441891)))

(declare-fun b!5577760 () Bool)

(assert (=> b!5577760 (= e!3441891 call!417023)))

(declare-fun b!5577761 () Bool)

(assert (=> b!5577761 (= e!3441893 e!3441895)))

(declare-fun res!2367265 () Bool)

(assert (=> b!5577761 (=> (not res!2367265) (not e!3441895))))

(assert (=> b!5577761 (= res!2367265 call!417024)))

(declare-fun d!1763576 () Bool)

(declare-fun res!2367264 () Bool)

(declare-fun e!3441894 () Bool)

(assert (=> d!1763576 (=> res!2367264 e!3441894)))

(assert (=> d!1763576 (= res!2367264 ((_ is ElementMatch!15557) (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))))))

(assert (=> d!1763576 (= (validRegex!7293 (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))) e!3441894)))

(declare-fun b!5577758 () Bool)

(assert (=> b!5577758 (= e!3441894 e!3441897)))

(assert (=> b!5577758 (= c!976558 ((_ is Star!15557) (ite c!976195 (reg!15886 r!7292) (ite c!976194 (regTwo!31627 r!7292) (regTwo!31626 r!7292)))))))

(assert (= (and d!1763576 (not res!2367264)) b!5577758))

(assert (= (and b!5577758 c!976558) b!5577756))

(assert (= (and b!5577758 (not c!976558)) b!5577755))

(assert (= (and b!5577756 res!2367263) b!5577757))

(assert (= (and b!5577755 c!976557) b!5577759))

(assert (= (and b!5577755 (not c!976557)) b!5577754))

(assert (= (and b!5577759 res!2367267) b!5577760))

(assert (= (and b!5577754 (not res!2367266)) b!5577761))

(assert (= (and b!5577761 res!2367265) b!5577753))

(assert (= (or b!5577760 b!5577753) bm!417019))

(assert (= (or b!5577759 b!5577761) bm!417018))

(assert (= (or b!5577757 bm!417019) bm!417020))

(declare-fun m!6560650 () Bool)

(assert (=> bm!417018 m!6560650))

(declare-fun m!6560652 () Bool)

(assert (=> b!5577756 m!6560652))

(declare-fun m!6560654 () Bool)

(assert (=> bm!417020 m!6560654))

(assert (=> bm!416774 d!1763576))

(declare-fun b!5577762 () Bool)

(declare-fun e!3441903 () (InoxSet Context!9882))

(declare-fun call!417031 () (InoxSet Context!9882))

(declare-fun call!417030 () (InoxSet Context!9882))

(assert (=> b!5577762 (= e!3441903 ((_ map or) call!417031 call!417030))))

(declare-fun b!5577763 () Bool)

(declare-fun e!3441898 () (InoxSet Context!9882))

(assert (=> b!5577763 (= e!3441898 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577764 () Bool)

(declare-fun call!417029 () (InoxSet Context!9882))

(assert (=> b!5577764 (= e!3441898 call!417029)))

(declare-fun b!5577765 () Bool)

(declare-fun c!976562 () Bool)

(declare-fun e!3441899 () Bool)

(assert (=> b!5577765 (= c!976562 e!3441899)))

(declare-fun res!2367268 () Bool)

(assert (=> b!5577765 (=> (not res!2367268) (not e!3441899))))

(assert (=> b!5577765 (= res!2367268 ((_ is Concat!24402) (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))))))

(declare-fun e!3441900 () (InoxSet Context!9882))

(assert (=> b!5577765 (= e!3441900 e!3441903)))

(declare-fun b!5577766 () Bool)

(declare-fun e!3441902 () (InoxSet Context!9882))

(assert (=> b!5577766 (= e!3441902 e!3441900)))

(declare-fun c!976563 () Bool)

(assert (=> b!5577766 (= c!976563 ((_ is Union!15557) (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))))))

(declare-fun b!5577767 () Bool)

(assert (=> b!5577767 (= e!3441902 (store ((as const (Array Context!9882 Bool)) false) (ite c!976248 lt!2252691 (Context!9883 call!416797)) true))))

(declare-fun b!5577768 () Bool)

(assert (=> b!5577768 (= e!3441899 (nullable!5589 (regOne!31626 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))))))))

(declare-fun b!5577769 () Bool)

(declare-fun c!976559 () Bool)

(assert (=> b!5577769 (= c!976559 ((_ is Star!15557) (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))))))

(declare-fun e!3441901 () (InoxSet Context!9882))

(assert (=> b!5577769 (= e!3441901 e!3441898)))

(declare-fun b!5577770 () Bool)

(declare-fun call!417026 () (InoxSet Context!9882))

(assert (=> b!5577770 (= e!3441900 ((_ map or) call!417026 call!417031))))

(declare-fun bm!417022 () Bool)

(assert (=> bm!417022 (= call!417030 call!417026)))

(declare-fun b!5577771 () Bool)

(assert (=> b!5577771 (= e!3441901 call!417029)))

(declare-fun call!417028 () List!62970)

(declare-fun bm!417023 () Bool)

(declare-fun c!976560 () Bool)

(assert (=> bm!417023 (= call!417028 ($colon$colon!1624 (exprs!5441 (ite c!976248 lt!2252691 (Context!9883 call!416797))) (ite (or c!976562 c!976560) (regTwo!31626 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))) (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))))))))

(declare-fun call!417027 () List!62970)

(declare-fun bm!417024 () Bool)

(assert (=> bm!417024 (= call!417026 (derivationStepZipperDown!899 (ite c!976563 (regOne!31627 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))) (ite c!976562 (regTwo!31626 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))) (ite c!976560 (regOne!31626 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))) (reg!15886 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))))))) (ite (or c!976563 c!976562) (ite c!976248 lt!2252691 (Context!9883 call!416797)) (Context!9883 call!417027)) (h!69296 s!2326)))))

(declare-fun b!5577772 () Bool)

(assert (=> b!5577772 (= e!3441903 e!3441901)))

(assert (=> b!5577772 (= c!976560 ((_ is Concat!24402) (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))))))

(declare-fun bm!417021 () Bool)

(assert (=> bm!417021 (= call!417029 call!417030)))

(declare-fun d!1763578 () Bool)

(declare-fun c!976561 () Bool)

(assert (=> d!1763578 (= c!976561 (and ((_ is ElementMatch!15557) (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))) (= (c!976080 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))) (h!69296 s!2326))))))

(assert (=> d!1763578 (= (derivationStepZipperDown!899 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))) (ite c!976248 lt!2252691 (Context!9883 call!416797)) (h!69296 s!2326)) e!3441902)))

(declare-fun bm!417025 () Bool)

(assert (=> bm!417025 (= call!417031 (derivationStepZipperDown!899 (ite c!976563 (regTwo!31627 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292))))) (regOne!31626 (ite c!976248 (regTwo!31627 (regTwo!31627 (regOne!31626 r!7292))) (regOne!31626 (regTwo!31627 (regOne!31626 r!7292)))))) (ite c!976563 (ite c!976248 lt!2252691 (Context!9883 call!416797)) (Context!9883 call!417028)) (h!69296 s!2326)))))

(declare-fun bm!417026 () Bool)

(assert (=> bm!417026 (= call!417027 call!417028)))

(assert (= (and d!1763578 c!976561) b!5577767))

(assert (= (and d!1763578 (not c!976561)) b!5577766))

(assert (= (and b!5577766 c!976563) b!5577770))

(assert (= (and b!5577766 (not c!976563)) b!5577765))

(assert (= (and b!5577765 res!2367268) b!5577768))

(assert (= (and b!5577765 c!976562) b!5577762))

(assert (= (and b!5577765 (not c!976562)) b!5577772))

(assert (= (and b!5577772 c!976560) b!5577771))

(assert (= (and b!5577772 (not c!976560)) b!5577769))

(assert (= (and b!5577769 c!976559) b!5577764))

(assert (= (and b!5577769 (not c!976559)) b!5577763))

(assert (= (or b!5577771 b!5577764) bm!417026))

(assert (= (or b!5577771 b!5577764) bm!417021))

(assert (= (or b!5577762 bm!417026) bm!417023))

(assert (= (or b!5577762 bm!417021) bm!417022))

(assert (= (or b!5577770 b!5577762) bm!417025))

(assert (= (or b!5577770 bm!417022) bm!417024))

(declare-fun m!6560656 () Bool)

(assert (=> b!5577767 m!6560656))

(declare-fun m!6560658 () Bool)

(assert (=> bm!417023 m!6560658))

(declare-fun m!6560660 () Bool)

(assert (=> bm!417025 m!6560660))

(declare-fun m!6560662 () Bool)

(assert (=> b!5577768 m!6560662))

(declare-fun m!6560664 () Bool)

(assert (=> bm!417024 m!6560664))

(assert (=> bm!416794 d!1763578))

(declare-fun b!5577773 () Bool)

(declare-fun e!3441906 () Bool)

(assert (=> b!5577773 (= e!3441906 (matchR!7742 (derivativeStep!4410 (regTwo!31626 r!7292) (head!11893 (_2!35957 (get!21637 lt!2252775)))) (tail!10988 (_2!35957 (get!21637 lt!2252775)))))))

(declare-fun b!5577774 () Bool)

(declare-fun e!3441909 () Bool)

(assert (=> b!5577774 (= e!3441909 (not (= (head!11893 (_2!35957 (get!21637 lt!2252775))) (c!976080 (regTwo!31626 r!7292)))))))

(declare-fun b!5577775 () Bool)

(declare-fun res!2367273 () Bool)

(declare-fun e!3441907 () Bool)

(assert (=> b!5577775 (=> res!2367273 e!3441907)))

(assert (=> b!5577775 (= res!2367273 (not ((_ is ElementMatch!15557) (regTwo!31626 r!7292))))))

(declare-fun e!3441904 () Bool)

(assert (=> b!5577775 (= e!3441904 e!3441907)))

(declare-fun b!5577776 () Bool)

(assert (=> b!5577776 (= e!3441906 (nullable!5589 (regTwo!31626 r!7292)))))

(declare-fun b!5577777 () Bool)

(declare-fun lt!2252835 () Bool)

(assert (=> b!5577777 (= e!3441904 (not lt!2252835))))

(declare-fun b!5577778 () Bool)

(declare-fun e!3441905 () Bool)

(declare-fun call!417032 () Bool)

(assert (=> b!5577778 (= e!3441905 (= lt!2252835 call!417032))))

(declare-fun b!5577779 () Bool)

(declare-fun res!2367271 () Bool)

(declare-fun e!3441910 () Bool)

(assert (=> b!5577779 (=> (not res!2367271) (not e!3441910))))

(assert (=> b!5577779 (= res!2367271 (not call!417032))))

(declare-fun b!5577780 () Bool)

(declare-fun res!2367270 () Bool)

(assert (=> b!5577780 (=> (not res!2367270) (not e!3441910))))

(assert (=> b!5577780 (= res!2367270 (isEmpty!34655 (tail!10988 (_2!35957 (get!21637 lt!2252775)))))))

(declare-fun b!5577781 () Bool)

(declare-fun e!3441908 () Bool)

(assert (=> b!5577781 (= e!3441908 e!3441909)))

(declare-fun res!2367276 () Bool)

(assert (=> b!5577781 (=> res!2367276 e!3441909)))

(assert (=> b!5577781 (= res!2367276 call!417032)))

(declare-fun b!5577782 () Bool)

(assert (=> b!5577782 (= e!3441905 e!3441904)))

(declare-fun c!976564 () Bool)

(assert (=> b!5577782 (= c!976564 ((_ is EmptyLang!15557) (regTwo!31626 r!7292)))))

(declare-fun d!1763580 () Bool)

(assert (=> d!1763580 e!3441905))

(declare-fun c!976565 () Bool)

(assert (=> d!1763580 (= c!976565 ((_ is EmptyExpr!15557) (regTwo!31626 r!7292)))))

(assert (=> d!1763580 (= lt!2252835 e!3441906)))

(declare-fun c!976566 () Bool)

(assert (=> d!1763580 (= c!976566 (isEmpty!34655 (_2!35957 (get!21637 lt!2252775))))))

(assert (=> d!1763580 (validRegex!7293 (regTwo!31626 r!7292))))

(assert (=> d!1763580 (= (matchR!7742 (regTwo!31626 r!7292) (_2!35957 (get!21637 lt!2252775))) lt!2252835)))

(declare-fun b!5577783 () Bool)

(assert (=> b!5577783 (= e!3441910 (= (head!11893 (_2!35957 (get!21637 lt!2252775))) (c!976080 (regTwo!31626 r!7292))))))

(declare-fun bm!417027 () Bool)

(assert (=> bm!417027 (= call!417032 (isEmpty!34655 (_2!35957 (get!21637 lt!2252775))))))

(declare-fun b!5577784 () Bool)

(declare-fun res!2367275 () Bool)

(assert (=> b!5577784 (=> res!2367275 e!3441907)))

(assert (=> b!5577784 (= res!2367275 e!3441910)))

(declare-fun res!2367274 () Bool)

(assert (=> b!5577784 (=> (not res!2367274) (not e!3441910))))

(assert (=> b!5577784 (= res!2367274 lt!2252835)))

(declare-fun b!5577785 () Bool)

(declare-fun res!2367272 () Bool)

(assert (=> b!5577785 (=> res!2367272 e!3441909)))

(assert (=> b!5577785 (= res!2367272 (not (isEmpty!34655 (tail!10988 (_2!35957 (get!21637 lt!2252775))))))))

(declare-fun b!5577786 () Bool)

(assert (=> b!5577786 (= e!3441907 e!3441908)))

(declare-fun res!2367269 () Bool)

(assert (=> b!5577786 (=> (not res!2367269) (not e!3441908))))

(assert (=> b!5577786 (= res!2367269 (not lt!2252835))))

(assert (= (and d!1763580 c!976566) b!5577776))

(assert (= (and d!1763580 (not c!976566)) b!5577773))

(assert (= (and d!1763580 c!976565) b!5577778))

(assert (= (and d!1763580 (not c!976565)) b!5577782))

(assert (= (and b!5577782 c!976564) b!5577777))

(assert (= (and b!5577782 (not c!976564)) b!5577775))

(assert (= (and b!5577775 (not res!2367273)) b!5577784))

(assert (= (and b!5577784 res!2367274) b!5577779))

(assert (= (and b!5577779 res!2367271) b!5577780))

(assert (= (and b!5577780 res!2367270) b!5577783))

(assert (= (and b!5577784 (not res!2367275)) b!5577786))

(assert (= (and b!5577786 res!2367269) b!5577781))

(assert (= (and b!5577781 (not res!2367276)) b!5577785))

(assert (= (and b!5577785 (not res!2367272)) b!5577774))

(assert (= (or b!5577778 b!5577779 b!5577781) bm!417027))

(declare-fun m!6560666 () Bool)

(assert (=> b!5577774 m!6560666))

(declare-fun m!6560668 () Bool)

(assert (=> bm!417027 m!6560668))

(assert (=> d!1763580 m!6560668))

(assert (=> d!1763580 m!6560496))

(declare-fun m!6560670 () Bool)

(assert (=> b!5577785 m!6560670))

(assert (=> b!5577785 m!6560670))

(declare-fun m!6560672 () Bool)

(assert (=> b!5577785 m!6560672))

(assert (=> b!5577783 m!6560666))

(assert (=> b!5577780 m!6560670))

(assert (=> b!5577780 m!6560670))

(assert (=> b!5577780 m!6560672))

(assert (=> b!5577776 m!6560500))

(assert (=> b!5577773 m!6560666))

(assert (=> b!5577773 m!6560666))

(declare-fun m!6560674 () Bool)

(assert (=> b!5577773 m!6560674))

(assert (=> b!5577773 m!6560670))

(assert (=> b!5577773 m!6560674))

(assert (=> b!5577773 m!6560670))

(declare-fun m!6560676 () Bool)

(assert (=> b!5577773 m!6560676))

(assert (=> b!5576543 d!1763580))

(assert (=> b!5576543 d!1763270))

(declare-fun bs!1290709 () Bool)

(declare-fun d!1763582 () Bool)

(assert (= bs!1290709 (and d!1763582 d!1763450)))

(declare-fun lambda!299035 () Int)

(assert (=> bs!1290709 (= lambda!299035 lambda!299012)))

(declare-fun bs!1290710 () Bool)

(assert (= bs!1290710 (and d!1763582 d!1763536)))

(assert (=> bs!1290710 (= lambda!299035 lambda!299022)))

(declare-fun bs!1290711 () Bool)

(assert (= bs!1290711 (and d!1763582 d!1763552)))

(assert (=> bs!1290711 (= lambda!299035 lambda!299030)))

(declare-fun bs!1290712 () Bool)

(assert (= bs!1290712 (and d!1763582 d!1763566)))

(assert (=> bs!1290712 (= lambda!299035 lambda!299033)))

(declare-fun bs!1290713 () Bool)

(assert (= bs!1290713 (and d!1763582 d!1763388)))

(assert (=> bs!1290713 (= lambda!299035 lambda!299005)))

(declare-fun bs!1290714 () Bool)

(assert (= bs!1290714 (and d!1763582 d!1763574)))

(assert (=> bs!1290714 (= lambda!299035 lambda!299034)))

(declare-fun bs!1290715 () Bool)

(assert (= bs!1290715 (and d!1763582 d!1763454)))

(assert (=> bs!1290715 (= lambda!299035 lambda!299013)))

(assert (=> d!1763582 (= (nullableZipper!1556 lt!2252702) (exists!2159 lt!2252702 lambda!299035))))

(declare-fun bs!1290716 () Bool)

(assert (= bs!1290716 d!1763582))

(declare-fun m!6560678 () Bool)

(assert (=> bs!1290716 m!6560678))

(assert (=> b!5576497 d!1763582))

(declare-fun d!1763584 () Bool)

(assert (=> d!1763584 (= (isEmpty!34656 (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326)) (not ((_ is Some!15565) (findConcatSeparation!1980 (regOne!31626 r!7292) (regTwo!31626 r!7292) Nil!62848 s!2326 s!2326))))))

(assert (=> d!1763062 d!1763584))

(declare-fun d!1763586 () Bool)

(assert (=> d!1763586 (= (isEmptyExpr!1116 lt!2252784) ((_ is EmptyExpr!15557) lt!2252784))))

(assert (=> b!5576630 d!1763586))

(assert (=> d!1763052 d!1763424))

(declare-fun b!5577787 () Bool)

(declare-fun e!3441913 () Bool)

(assert (=> b!5577787 (= e!3441913 (matchR!7742 (derivativeStep!4410 (regOne!31626 r!7292) (head!11893 Nil!62848)) (tail!10988 Nil!62848)))))

(declare-fun b!5577788 () Bool)

(declare-fun e!3441916 () Bool)

(assert (=> b!5577788 (= e!3441916 (not (= (head!11893 Nil!62848) (c!976080 (regOne!31626 r!7292)))))))

(declare-fun b!5577789 () Bool)

(declare-fun res!2367281 () Bool)

(declare-fun e!3441914 () Bool)

(assert (=> b!5577789 (=> res!2367281 e!3441914)))

(assert (=> b!5577789 (= res!2367281 (not ((_ is ElementMatch!15557) (regOne!31626 r!7292))))))

(declare-fun e!3441911 () Bool)

(assert (=> b!5577789 (= e!3441911 e!3441914)))

(declare-fun b!5577790 () Bool)

(assert (=> b!5577790 (= e!3441913 (nullable!5589 (regOne!31626 r!7292)))))

(declare-fun b!5577791 () Bool)

(declare-fun lt!2252836 () Bool)

(assert (=> b!5577791 (= e!3441911 (not lt!2252836))))

(declare-fun b!5577792 () Bool)

(declare-fun e!3441912 () Bool)

(declare-fun call!417033 () Bool)

(assert (=> b!5577792 (= e!3441912 (= lt!2252836 call!417033))))

(declare-fun b!5577793 () Bool)

(declare-fun res!2367279 () Bool)

(declare-fun e!3441917 () Bool)

(assert (=> b!5577793 (=> (not res!2367279) (not e!3441917))))

(assert (=> b!5577793 (= res!2367279 (not call!417033))))

(declare-fun b!5577794 () Bool)

(declare-fun res!2367278 () Bool)

(assert (=> b!5577794 (=> (not res!2367278) (not e!3441917))))

(assert (=> b!5577794 (= res!2367278 (isEmpty!34655 (tail!10988 Nil!62848)))))

(declare-fun b!5577795 () Bool)

(declare-fun e!3441915 () Bool)

(assert (=> b!5577795 (= e!3441915 e!3441916)))

(declare-fun res!2367284 () Bool)

(assert (=> b!5577795 (=> res!2367284 e!3441916)))

(assert (=> b!5577795 (= res!2367284 call!417033)))

(declare-fun b!5577796 () Bool)

(assert (=> b!5577796 (= e!3441912 e!3441911)))

(declare-fun c!976567 () Bool)

(assert (=> b!5577796 (= c!976567 ((_ is EmptyLang!15557) (regOne!31626 r!7292)))))

(declare-fun d!1763588 () Bool)

(assert (=> d!1763588 e!3441912))

(declare-fun c!976568 () Bool)

(assert (=> d!1763588 (= c!976568 ((_ is EmptyExpr!15557) (regOne!31626 r!7292)))))

(assert (=> d!1763588 (= lt!2252836 e!3441913)))

(declare-fun c!976569 () Bool)

(assert (=> d!1763588 (= c!976569 (isEmpty!34655 Nil!62848))))

(assert (=> d!1763588 (validRegex!7293 (regOne!31626 r!7292))))

(assert (=> d!1763588 (= (matchR!7742 (regOne!31626 r!7292) Nil!62848) lt!2252836)))

(declare-fun b!5577797 () Bool)

(assert (=> b!5577797 (= e!3441917 (= (head!11893 Nil!62848) (c!976080 (regOne!31626 r!7292))))))

(declare-fun bm!417028 () Bool)

(assert (=> bm!417028 (= call!417033 (isEmpty!34655 Nil!62848))))

(declare-fun b!5577798 () Bool)

(declare-fun res!2367283 () Bool)

(assert (=> b!5577798 (=> res!2367283 e!3441914)))

(assert (=> b!5577798 (= res!2367283 e!3441917)))

(declare-fun res!2367282 () Bool)

(assert (=> b!5577798 (=> (not res!2367282) (not e!3441917))))

(assert (=> b!5577798 (= res!2367282 lt!2252836)))

(declare-fun b!5577799 () Bool)

(declare-fun res!2367280 () Bool)

(assert (=> b!5577799 (=> res!2367280 e!3441916)))

(assert (=> b!5577799 (= res!2367280 (not (isEmpty!34655 (tail!10988 Nil!62848))))))

(declare-fun b!5577800 () Bool)

(assert (=> b!5577800 (= e!3441914 e!3441915)))

(declare-fun res!2367277 () Bool)

(assert (=> b!5577800 (=> (not res!2367277) (not e!3441915))))

(assert (=> b!5577800 (= res!2367277 (not lt!2252836))))

(assert (= (and d!1763588 c!976569) b!5577790))

(assert (= (and d!1763588 (not c!976569)) b!5577787))

(assert (= (and d!1763588 c!976568) b!5577792))

(assert (= (and d!1763588 (not c!976568)) b!5577796))

(assert (= (and b!5577796 c!976567) b!5577791))

(assert (= (and b!5577796 (not c!976567)) b!5577789))

(assert (= (and b!5577789 (not res!2367281)) b!5577798))

(assert (= (and b!5577798 res!2367282) b!5577793))

(assert (= (and b!5577793 res!2367279) b!5577794))

(assert (= (and b!5577794 res!2367278) b!5577797))

(assert (= (and b!5577798 (not res!2367283)) b!5577800))

(assert (= (and b!5577800 res!2367277) b!5577795))

(assert (= (and b!5577795 (not res!2367284)) b!5577799))

(assert (= (and b!5577799 (not res!2367280)) b!5577788))

(assert (= (or b!5577792 b!5577793 b!5577795) bm!417028))

(declare-fun m!6560680 () Bool)

(assert (=> b!5577788 m!6560680))

(declare-fun m!6560682 () Bool)

(assert (=> bm!417028 m!6560682))

(assert (=> d!1763588 m!6560682))

(assert (=> d!1763588 m!6559554))

(declare-fun m!6560684 () Bool)

(assert (=> b!5577799 m!6560684))

(assert (=> b!5577799 m!6560684))

(declare-fun m!6560686 () Bool)

(assert (=> b!5577799 m!6560686))

(assert (=> b!5577797 m!6560680))

(assert (=> b!5577794 m!6560684))

(assert (=> b!5577794 m!6560684))

(assert (=> b!5577794 m!6560686))

(assert (=> b!5577790 m!6560458))

(assert (=> b!5577787 m!6560680))

(assert (=> b!5577787 m!6560680))

(declare-fun m!6560688 () Bool)

(assert (=> b!5577787 m!6560688))

(assert (=> b!5577787 m!6560684))

(assert (=> b!5577787 m!6560688))

(assert (=> b!5577787 m!6560684))

(declare-fun m!6560690 () Bool)

(assert (=> b!5577787 m!6560690))

(assert (=> d!1763052 d!1763588))

(assert (=> d!1763052 d!1763406))

(declare-fun d!1763590 () Bool)

(declare-fun c!976570 () Bool)

(assert (=> d!1763590 (= c!976570 (isEmpty!34655 (tail!10988 (t!376241 s!2326))))))

(declare-fun e!3441918 () Bool)

(assert (=> d!1763590 (= (matchZipper!1695 (derivationStepZipper!1656 lt!2252700 (head!11893 (t!376241 s!2326))) (tail!10988 (t!376241 s!2326))) e!3441918)))

(declare-fun b!5577801 () Bool)

(assert (=> b!5577801 (= e!3441918 (nullableZipper!1556 (derivationStepZipper!1656 lt!2252700 (head!11893 (t!376241 s!2326)))))))

(declare-fun b!5577802 () Bool)

(assert (=> b!5577802 (= e!3441918 (matchZipper!1695 (derivationStepZipper!1656 (derivationStepZipper!1656 lt!2252700 (head!11893 (t!376241 s!2326))) (head!11893 (tail!10988 (t!376241 s!2326)))) (tail!10988 (tail!10988 (t!376241 s!2326)))))))

(assert (= (and d!1763590 c!976570) b!5577801))

(assert (= (and d!1763590 (not c!976570)) b!5577802))

(assert (=> d!1763590 m!6559468))

(assert (=> d!1763590 m!6560078))

(assert (=> b!5577801 m!6559466))

(declare-fun m!6560692 () Bool)

(assert (=> b!5577801 m!6560692))

(assert (=> b!5577802 m!6559468))

(assert (=> b!5577802 m!6560084))

(assert (=> b!5577802 m!6559466))

(assert (=> b!5577802 m!6560084))

(declare-fun m!6560694 () Bool)

(assert (=> b!5577802 m!6560694))

(assert (=> b!5577802 m!6559468))

(assert (=> b!5577802 m!6560092))

(assert (=> b!5577802 m!6560694))

(assert (=> b!5577802 m!6560092))

(declare-fun m!6560696 () Bool)

(assert (=> b!5577802 m!6560696))

(assert (=> b!5576484 d!1763590))

(declare-fun bs!1290717 () Bool)

(declare-fun d!1763592 () Bool)

(assert (= bs!1290717 (and d!1763592 d!1763520)))

(declare-fun lambda!299036 () Int)

(assert (=> bs!1290717 (= lambda!299036 lambda!299018)))

(declare-fun bs!1290718 () Bool)

(assert (= bs!1290718 (and d!1763592 d!1763330)))

(assert (=> bs!1290718 (= lambda!299036 lambda!298997)))

(declare-fun bs!1290719 () Bool)

(assert (= bs!1290719 (and d!1763592 d!1763370)))

(assert (=> bs!1290719 (= (= (head!11893 (t!376241 s!2326)) (head!11893 s!2326)) (= lambda!299036 lambda!299000))))

(declare-fun bs!1290720 () Bool)

(assert (= bs!1290720 (and d!1763592 d!1763476)))

(assert (=> bs!1290720 (= lambda!299036 lambda!299014)))

(declare-fun bs!1290721 () Bool)

(assert (= bs!1290721 (and d!1763592 d!1763506)))

(assert (=> bs!1290721 (= lambda!299036 lambda!299017)))

(declare-fun bs!1290722 () Bool)

(assert (= bs!1290722 (and d!1763592 d!1763042)))

(assert (=> bs!1290722 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299036 lambda!298946))))

(declare-fun bs!1290723 () Bool)

(assert (= bs!1290723 (and d!1763592 b!5576018)))

(assert (=> bs!1290723 (= (= (head!11893 (t!376241 s!2326)) (h!69296 s!2326)) (= lambda!299036 lambda!298902))))

(declare-fun bs!1290724 () Bool)

(assert (= bs!1290724 (and d!1763592 d!1763502)))

(assert (=> bs!1290724 (= lambda!299036 lambda!299016)))

(declare-fun bs!1290725 () Bool)

(assert (= bs!1290725 (and d!1763592 d!1763528)))

(assert (=> bs!1290725 (= lambda!299036 lambda!299021)))

(assert (=> d!1763592 true))

(assert (=> d!1763592 (= (derivationStepZipper!1656 lt!2252700 (head!11893 (t!376241 s!2326))) (flatMap!1170 lt!2252700 lambda!299036))))

(declare-fun bs!1290726 () Bool)

(assert (= bs!1290726 d!1763592))

(declare-fun m!6560698 () Bool)

(assert (=> bs!1290726 m!6560698))

(assert (=> b!5576484 d!1763592))

(assert (=> b!5576484 d!1763334))

(assert (=> b!5576484 d!1763336))

(declare-fun b!5577803 () Bool)

(declare-fun e!3441924 () (InoxSet Context!9882))

(declare-fun call!417039 () (InoxSet Context!9882))

(declare-fun call!417038 () (InoxSet Context!9882))

(assert (=> b!5577803 (= e!3441924 ((_ map or) call!417039 call!417038))))

(declare-fun b!5577804 () Bool)

(declare-fun e!3441919 () (InoxSet Context!9882))

(assert (=> b!5577804 (= e!3441919 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577805 () Bool)

(declare-fun call!417037 () (InoxSet Context!9882))

(assert (=> b!5577805 (= e!3441919 call!417037)))

(declare-fun b!5577806 () Bool)

(declare-fun c!976574 () Bool)

(declare-fun e!3441920 () Bool)

(assert (=> b!5577806 (= c!976574 e!3441920)))

(declare-fun res!2367285 () Bool)

(assert (=> b!5577806 (=> (not res!2367285) (not e!3441920))))

(assert (=> b!5577806 (= res!2367285 ((_ is Concat!24402) (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun e!3441921 () (InoxSet Context!9882))

(assert (=> b!5577806 (= e!3441921 e!3441924)))

(declare-fun b!5577807 () Bool)

(declare-fun e!3441923 () (InoxSet Context!9882))

(assert (=> b!5577807 (= e!3441923 e!3441921)))

(declare-fun c!976575 () Bool)

(assert (=> b!5577807 (= c!976575 ((_ is Union!15557) (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun b!5577808 () Bool)

(assert (=> b!5577808 (= e!3441923 (store ((as const (Array Context!9882 Bool)) false) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) true))))

(declare-fun b!5577809 () Bool)

(assert (=> b!5577809 (= e!3441920 (nullable!5589 (regOne!31626 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))))

(declare-fun b!5577810 () Bool)

(declare-fun c!976571 () Bool)

(assert (=> b!5577810 (= c!976571 ((_ is Star!15557) (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun e!3441922 () (InoxSet Context!9882))

(assert (=> b!5577810 (= e!3441922 e!3441919)))

(declare-fun b!5577811 () Bool)

(declare-fun call!417034 () (InoxSet Context!9882))

(assert (=> b!5577811 (= e!3441921 ((_ map or) call!417034 call!417039))))

(declare-fun bm!417030 () Bool)

(assert (=> bm!417030 (= call!417038 call!417034)))

(declare-fun b!5577812 () Bool)

(assert (=> b!5577812 (= e!3441922 call!417037)))

(declare-fun call!417036 () List!62970)

(declare-fun c!976572 () Bool)

(declare-fun bm!417031 () Bool)

(assert (=> bm!417031 (= call!417036 ($colon$colon!1624 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))) (ite (or c!976574 c!976572) (regTwo!31626 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))))

(declare-fun bm!417032 () Bool)

(declare-fun call!417035 () List!62970)

(assert (=> bm!417032 (= call!417034 (derivationStepZipperDown!899 (ite c!976575 (regOne!31627 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (ite c!976574 (regTwo!31626 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (ite c!976572 (regOne!31626 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (reg!15886 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))))) (ite (or c!976575 c!976574) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (Context!9883 call!417035)) (h!69296 s!2326)))))

(declare-fun b!5577813 () Bool)

(assert (=> b!5577813 (= e!3441924 e!3441922)))

(assert (=> b!5577813 (= c!976572 ((_ is Concat!24402) (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))))))

(declare-fun bm!417029 () Bool)

(assert (=> bm!417029 (= call!417037 call!417038)))

(declare-fun d!1763594 () Bool)

(declare-fun c!976573 () Bool)

(assert (=> d!1763594 (= c!976573 (and ((_ is ElementMatch!15557) (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (= (c!976080 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (h!69296 s!2326))))))

(assert (=> d!1763594 (= (derivationStepZipperDown!899 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (h!69296 s!2326)) e!3441923)))

(declare-fun bm!417033 () Bool)

(assert (=> bm!417033 (= call!417039 (derivationStepZipperDown!899 (ite c!976575 (regTwo!31627 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (regOne!31626 (h!69294 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343))))))))) (ite c!976575 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (Cons!62846 (h!69294 (exprs!5441 (h!69295 zl!343))) (t!376239 (exprs!5441 (h!69295 zl!343)))))))) (Context!9883 call!417036)) (h!69296 s!2326)))))

(declare-fun bm!417034 () Bool)

(assert (=> bm!417034 (= call!417035 call!417036)))

(assert (= (and d!1763594 c!976573) b!5577808))

(assert (= (and d!1763594 (not c!976573)) b!5577807))

(assert (= (and b!5577807 c!976575) b!5577811))

(assert (= (and b!5577807 (not c!976575)) b!5577806))

(assert (= (and b!5577806 res!2367285) b!5577809))

(assert (= (and b!5577806 c!976574) b!5577803))

(assert (= (and b!5577806 (not c!976574)) b!5577813))

(assert (= (and b!5577813 c!976572) b!5577812))

(assert (= (and b!5577813 (not c!976572)) b!5577810))

(assert (= (and b!5577810 c!976571) b!5577805))

(assert (= (and b!5577810 (not c!976571)) b!5577804))

(assert (= (or b!5577812 b!5577805) bm!417034))

(assert (= (or b!5577812 b!5577805) bm!417029))

(assert (= (or b!5577803 bm!417034) bm!417031))

(assert (= (or b!5577803 bm!417029) bm!417030))

(assert (= (or b!5577811 b!5577803) bm!417033))

(assert (= (or b!5577811 bm!417030) bm!417032))

(declare-fun m!6560700 () Bool)

(assert (=> b!5577808 m!6560700))

(declare-fun m!6560702 () Bool)

(assert (=> bm!417031 m!6560702))

(declare-fun m!6560704 () Bool)

(assert (=> bm!417033 m!6560704))

(declare-fun m!6560706 () Bool)

(assert (=> b!5577809 m!6560706))

(declare-fun m!6560708 () Bool)

(assert (=> bm!417032 m!6560708))

(assert (=> bm!416811 d!1763594))

(declare-fun b!5577814 () Bool)

(declare-fun e!3441930 () (InoxSet Context!9882))

(declare-fun call!417045 () (InoxSet Context!9882))

(declare-fun call!417044 () (InoxSet Context!9882))

(assert (=> b!5577814 (= e!3441930 ((_ map or) call!417045 call!417044))))

(declare-fun b!5577815 () Bool)

(declare-fun e!3441925 () (InoxSet Context!9882))

(assert (=> b!5577815 (= e!3441925 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577816 () Bool)

(declare-fun call!417043 () (InoxSet Context!9882))

(assert (=> b!5577816 (= e!3441925 call!417043)))

(declare-fun b!5577817 () Bool)

(declare-fun c!976579 () Bool)

(declare-fun e!3441926 () Bool)

(assert (=> b!5577817 (= c!976579 e!3441926)))

(declare-fun res!2367286 () Bool)

(assert (=> b!5577817 (=> (not res!2367286) (not e!3441926))))

(assert (=> b!5577817 (= res!2367286 ((_ is Concat!24402) (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun e!3441927 () (InoxSet Context!9882))

(assert (=> b!5577817 (= e!3441927 e!3441930)))

(declare-fun b!5577818 () Bool)

(declare-fun e!3441929 () (InoxSet Context!9882))

(assert (=> b!5577818 (= e!3441929 e!3441927)))

(declare-fun c!976580 () Bool)

(assert (=> b!5577818 (= c!976580 ((_ is Union!15557) (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun b!5577819 () Bool)

(assert (=> b!5577819 (= e!3441929 (store ((as const (Array Context!9882 Bool)) false) (ite c!976294 lt!2252691 (Context!9883 call!416819)) true))))

(declare-fun b!5577820 () Bool)

(assert (=> b!5577820 (= e!3441926 (nullable!5589 (regOne!31626 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))))))))

(declare-fun b!5577821 () Bool)

(declare-fun c!976576 () Bool)

(assert (=> b!5577821 (= c!976576 ((_ is Star!15557) (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun e!3441928 () (InoxSet Context!9882))

(assert (=> b!5577821 (= e!3441928 e!3441925)))

(declare-fun b!5577822 () Bool)

(declare-fun call!417040 () (InoxSet Context!9882))

(assert (=> b!5577822 (= e!3441927 ((_ map or) call!417040 call!417045))))

(declare-fun bm!417036 () Bool)

(assert (=> bm!417036 (= call!417044 call!417040)))

(declare-fun b!5577823 () Bool)

(assert (=> b!5577823 (= e!3441928 call!417043)))

(declare-fun bm!417037 () Bool)

(declare-fun c!976577 () Bool)

(declare-fun call!417042 () List!62970)

(assert (=> bm!417037 (= call!417042 ($colon$colon!1624 (exprs!5441 (ite c!976294 lt!2252691 (Context!9883 call!416819))) (ite (or c!976579 c!976577) (regTwo!31626 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))) (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))))))))

(declare-fun call!417041 () List!62970)

(declare-fun bm!417038 () Bool)

(assert (=> bm!417038 (= call!417040 (derivationStepZipperDown!899 (ite c!976580 (regOne!31627 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))) (ite c!976579 (regTwo!31626 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))) (ite c!976577 (regOne!31626 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))) (reg!15886 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))))))) (ite (or c!976580 c!976579) (ite c!976294 lt!2252691 (Context!9883 call!416819)) (Context!9883 call!417041)) (h!69296 s!2326)))))

(declare-fun b!5577824 () Bool)

(assert (=> b!5577824 (= e!3441930 e!3441928)))

(assert (=> b!5577824 (= c!976577 ((_ is Concat!24402) (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))))))

(declare-fun bm!417035 () Bool)

(assert (=> bm!417035 (= call!417043 call!417044)))

(declare-fun c!976578 () Bool)

(declare-fun d!1763596 () Bool)

(assert (=> d!1763596 (= c!976578 (and ((_ is ElementMatch!15557) (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))) (= (c!976080 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))) (h!69296 s!2326))))))

(assert (=> d!1763596 (= (derivationStepZipperDown!899 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))) (ite c!976294 lt!2252691 (Context!9883 call!416819)) (h!69296 s!2326)) e!3441929)))

(declare-fun bm!417039 () Bool)

(assert (=> bm!417039 (= call!417045 (derivationStepZipperDown!899 (ite c!976580 (regTwo!31627 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343)))))) (regOne!31626 (ite c!976294 (regTwo!31627 (h!69294 (exprs!5441 (h!69295 zl!343)))) (regOne!31626 (h!69294 (exprs!5441 (h!69295 zl!343))))))) (ite c!976580 (ite c!976294 lt!2252691 (Context!9883 call!416819)) (Context!9883 call!417042)) (h!69296 s!2326)))))

(declare-fun bm!417040 () Bool)

(assert (=> bm!417040 (= call!417041 call!417042)))

(assert (= (and d!1763596 c!976578) b!5577819))

(assert (= (and d!1763596 (not c!976578)) b!5577818))

(assert (= (and b!5577818 c!976580) b!5577822))

(assert (= (and b!5577818 (not c!976580)) b!5577817))

(assert (= (and b!5577817 res!2367286) b!5577820))

(assert (= (and b!5577817 c!976579) b!5577814))

(assert (= (and b!5577817 (not c!976579)) b!5577824))

(assert (= (and b!5577824 c!976577) b!5577823))

(assert (= (and b!5577824 (not c!976577)) b!5577821))

(assert (= (and b!5577821 c!976576) b!5577816))

(assert (= (and b!5577821 (not c!976576)) b!5577815))

(assert (= (or b!5577823 b!5577816) bm!417040))

(assert (= (or b!5577823 b!5577816) bm!417035))

(assert (= (or b!5577814 bm!417040) bm!417037))

(assert (= (or b!5577814 bm!417035) bm!417036))

(assert (= (or b!5577822 b!5577814) bm!417039))

(assert (= (or b!5577822 bm!417036) bm!417038))

(declare-fun m!6560710 () Bool)

(assert (=> b!5577819 m!6560710))

(declare-fun m!6560712 () Bool)

(assert (=> bm!417037 m!6560712))

(declare-fun m!6560714 () Bool)

(assert (=> bm!417039 m!6560714))

(declare-fun m!6560716 () Bool)

(assert (=> b!5577820 m!6560716))

(declare-fun m!6560718 () Bool)

(assert (=> bm!417038 m!6560718))

(assert (=> bm!416816 d!1763596))

(assert (=> d!1763018 d!1763214))

(assert (=> b!5576631 d!1763034))

(declare-fun e!3441932 () (InoxSet Context!9882))

(declare-fun b!5577825 () Bool)

(declare-fun call!417046 () (InoxSet Context!9882))

(assert (=> b!5577825 (= e!3441932 ((_ map or) call!417046 (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252691)))))) (h!69296 s!2326))))))

(declare-fun b!5577826 () Bool)

(declare-fun e!3441933 () (InoxSet Context!9882))

(assert (=> b!5577826 (= e!3441933 ((as const (Array Context!9882 Bool)) false))))

(declare-fun b!5577827 () Bool)

(assert (=> b!5577827 (= e!3441933 call!417046)))

(declare-fun b!5577828 () Bool)

(declare-fun e!3441931 () Bool)

(assert (=> b!5577828 (= e!3441931 (nullable!5589 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252691)))))))))

(declare-fun d!1763598 () Bool)

(declare-fun c!976581 () Bool)

(assert (=> d!1763598 (= c!976581 e!3441931)))

(declare-fun res!2367287 () Bool)

(assert (=> d!1763598 (=> (not res!2367287) (not e!3441931))))

(assert (=> d!1763598 (= res!2367287 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252691))))))))

(assert (=> d!1763598 (= (derivationStepZipperUp!825 (Context!9883 (t!376239 (exprs!5441 lt!2252691))) (h!69296 s!2326)) e!3441932)))

(declare-fun b!5577829 () Bool)

(assert (=> b!5577829 (= e!3441932 e!3441933)))

(declare-fun c!976582 () Bool)

(assert (=> b!5577829 (= c!976582 ((_ is Cons!62846) (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252691))))))))

(declare-fun bm!417041 () Bool)

(assert (=> bm!417041 (= call!417046 (derivationStepZipperDown!899 (h!69294 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252691))))) (Context!9883 (t!376239 (exprs!5441 (Context!9883 (t!376239 (exprs!5441 lt!2252691)))))) (h!69296 s!2326)))))

(assert (= (and d!1763598 res!2367287) b!5577828))

(assert (= (and d!1763598 c!976581) b!5577825))

(assert (= (and d!1763598 (not c!976581)) b!5577829))

(assert (= (and b!5577829 c!976582) b!5577827))

(assert (= (and b!5577829 (not c!976582)) b!5577826))

(assert (= (or b!5577825 b!5577827) bm!417041))

(declare-fun m!6560720 () Bool)

(assert (=> b!5577825 m!6560720))

(declare-fun m!6560722 () Bool)

(assert (=> b!5577828 m!6560722))

(declare-fun m!6560724 () Bool)

(assert (=> bm!417041 m!6560724))

(assert (=> b!5576740 d!1763598))

(assert (=> d!1763072 d!1763074))

(assert (=> d!1763072 d!1763024))

(declare-fun d!1763600 () Bool)

(declare-fun e!3441934 () Bool)

(assert (=> d!1763600 (= (matchZipper!1695 ((_ map or) lt!2252684 lt!2252702) (t!376241 s!2326)) e!3441934)))

(declare-fun res!2367288 () Bool)

(assert (=> d!1763600 (=> res!2367288 e!3441934)))

(assert (=> d!1763600 (= res!2367288 (matchZipper!1695 lt!2252684 (t!376241 s!2326)))))

(assert (=> d!1763600 true))

(declare-fun _$48!1128 () Unit!155600)

(assert (=> d!1763600 (= (choose!42253 lt!2252684 lt!2252702 (t!376241 s!2326)) _$48!1128)))

(declare-fun b!5577830 () Bool)

(assert (=> b!5577830 (= e!3441934 (matchZipper!1695 lt!2252702 (t!376241 s!2326)))))

(assert (= (and d!1763600 (not res!2367288)) b!5577830))

(assert (=> d!1763600 m!6559144))

(assert (=> d!1763600 m!6559090))

(assert (=> b!5577830 m!6559146))

(assert (=> d!1763072 d!1763600))

(declare-fun b!5577831 () Bool)

(declare-fun e!3441935 () Bool)

(declare-fun tp!1543452 () Bool)

(declare-fun tp!1543453 () Bool)

(assert (=> b!5577831 (= e!3441935 (and tp!1543452 tp!1543453))))

(assert (=> b!5576754 (= tp!1543229 e!3441935)))

(assert (= (and b!5576754 ((_ is Cons!62846) (exprs!5441 setElem!37097))) b!5577831))

(declare-fun b!5577832 () Bool)

(declare-fun e!3441936 () Bool)

(declare-fun tp!1543454 () Bool)

(declare-fun tp!1543455 () Bool)

(assert (=> b!5577832 (= e!3441936 (and tp!1543454 tp!1543455))))

(assert (=> b!5576785 (= tp!1543261 e!3441936)))

(assert (= (and b!5576785 ((_ is Cons!62846) (exprs!5441 (h!69295 (t!376240 zl!343))))) b!5577832))

(declare-fun b!5577834 () Bool)

(declare-fun e!3441938 () Bool)

(declare-fun tp!1543456 () Bool)

(assert (=> b!5577834 (= e!3441938 tp!1543456)))

(declare-fun tp!1543457 () Bool)

(declare-fun b!5577833 () Bool)

(declare-fun e!3441937 () Bool)

(assert (=> b!5577833 (= e!3441937 (and (inv!82139 (h!69295 (t!376240 (t!376240 zl!343)))) e!3441938 tp!1543457))))

(assert (=> b!5576784 (= tp!1543262 e!3441937)))

(assert (= b!5577833 b!5577834))

(assert (= (and b!5576784 ((_ is Cons!62847) (t!376240 (t!376240 zl!343)))) b!5577833))

(declare-fun m!6560726 () Bool)

(assert (=> b!5577833 m!6560726))

(declare-fun condSetEmpty!37107 () Bool)

(assert (=> setNonEmpty!37097 (= condSetEmpty!37107 (= setRest!37097 ((as const (Array Context!9882 Bool)) false)))))

(declare-fun setRes!37107 () Bool)

(assert (=> setNonEmpty!37097 (= tp!1543228 setRes!37107)))

(declare-fun setIsEmpty!37107 () Bool)

(assert (=> setIsEmpty!37107 setRes!37107))

(declare-fun setNonEmpty!37107 () Bool)

(declare-fun tp!1543458 () Bool)

(declare-fun e!3441939 () Bool)

(declare-fun setElem!37107 () Context!9882)

(assert (=> setNonEmpty!37107 (= setRes!37107 (and tp!1543458 (inv!82139 setElem!37107) e!3441939))))

(declare-fun setRest!37107 () (InoxSet Context!9882))

(assert (=> setNonEmpty!37107 (= setRest!37097 ((_ map or) (store ((as const (Array Context!9882 Bool)) false) setElem!37107 true) setRest!37107))))

(declare-fun b!5577835 () Bool)

(declare-fun tp!1543459 () Bool)

(assert (=> b!5577835 (= e!3441939 tp!1543459)))

(assert (= (and setNonEmpty!37097 condSetEmpty!37107) setIsEmpty!37107))

(assert (= (and setNonEmpty!37097 (not condSetEmpty!37107)) setNonEmpty!37107))

(assert (= setNonEmpty!37107 b!5577835))

(declare-fun m!6560728 () Bool)

(assert (=> setNonEmpty!37107 m!6560728))

(declare-fun e!3441940 () Bool)

(assert (=> b!5576769 (= tp!1543245 e!3441940)))

(declare-fun b!5577837 () Bool)

(declare-fun tp!1543463 () Bool)

(declare-fun tp!1543462 () Bool)

(assert (=> b!5577837 (= e!3441940 (and tp!1543463 tp!1543462))))

(declare-fun b!5577839 () Bool)

(declare-fun tp!1543464 () Bool)

(declare-fun tp!1543461 () Bool)

(assert (=> b!5577839 (= e!3441940 (and tp!1543464 tp!1543461))))

(declare-fun b!5577838 () Bool)

(declare-fun tp!1543460 () Bool)

(assert (=> b!5577838 (= e!3441940 tp!1543460)))

(declare-fun b!5577836 () Bool)

(assert (=> b!5577836 (= e!3441940 tp_is_empty!40367)))

(assert (= (and b!5576769 ((_ is ElementMatch!15557) (h!69294 (exprs!5441 (h!69295 zl!343))))) b!5577836))

(assert (= (and b!5576769 ((_ is Concat!24402) (h!69294 (exprs!5441 (h!69295 zl!343))))) b!5577837))

(assert (= (and b!5576769 ((_ is Star!15557) (h!69294 (exprs!5441 (h!69295 zl!343))))) b!5577838))

(assert (= (and b!5576769 ((_ is Union!15557) (h!69294 (exprs!5441 (h!69295 zl!343))))) b!5577839))

(declare-fun b!5577840 () Bool)

(declare-fun e!3441941 () Bool)

(declare-fun tp!1543465 () Bool)

(declare-fun tp!1543466 () Bool)

(assert (=> b!5577840 (= e!3441941 (and tp!1543465 tp!1543466))))

(assert (=> b!5576769 (= tp!1543246 e!3441941)))

(assert (= (and b!5576769 ((_ is Cons!62846) (t!376239 (exprs!5441 (h!69295 zl!343))))) b!5577840))

(declare-fun e!3441942 () Bool)

(assert (=> b!5576777 (= tp!1543256 e!3441942)))

(declare-fun b!5577842 () Bool)

(declare-fun tp!1543470 () Bool)

(declare-fun tp!1543469 () Bool)

(assert (=> b!5577842 (= e!3441942 (and tp!1543470 tp!1543469))))

(declare-fun b!5577844 () Bool)

(declare-fun tp!1543471 () Bool)

(declare-fun tp!1543468 () Bool)

(assert (=> b!5577844 (= e!3441942 (and tp!1543471 tp!1543468))))

(declare-fun b!5577843 () Bool)

(declare-fun tp!1543467 () Bool)

(assert (=> b!5577843 (= e!3441942 tp!1543467)))

(declare-fun b!5577841 () Bool)

(assert (=> b!5577841 (= e!3441942 tp_is_empty!40367)))

(assert (= (and b!5576777 ((_ is ElementMatch!15557) (regOne!31627 (regTwo!31626 r!7292)))) b!5577841))

(assert (= (and b!5576777 ((_ is Concat!24402) (regOne!31627 (regTwo!31626 r!7292)))) b!5577842))

(assert (= (and b!5576777 ((_ is Star!15557) (regOne!31627 (regTwo!31626 r!7292)))) b!5577843))

(assert (= (and b!5576777 ((_ is Union!15557) (regOne!31627 (regTwo!31626 r!7292)))) b!5577844))

(declare-fun e!3441943 () Bool)

(assert (=> b!5576777 (= tp!1543253 e!3441943)))

(declare-fun b!5577846 () Bool)

(declare-fun tp!1543475 () Bool)

(declare-fun tp!1543474 () Bool)

(assert (=> b!5577846 (= e!3441943 (and tp!1543475 tp!1543474))))

(declare-fun b!5577848 () Bool)

(declare-fun tp!1543476 () Bool)

(declare-fun tp!1543473 () Bool)

(assert (=> b!5577848 (= e!3441943 (and tp!1543476 tp!1543473))))

(declare-fun b!5577847 () Bool)

(declare-fun tp!1543472 () Bool)

(assert (=> b!5577847 (= e!3441943 tp!1543472)))

(declare-fun b!5577845 () Bool)

(assert (=> b!5577845 (= e!3441943 tp_is_empty!40367)))

(assert (= (and b!5576777 ((_ is ElementMatch!15557) (regTwo!31627 (regTwo!31626 r!7292)))) b!5577845))

(assert (= (and b!5576777 ((_ is Concat!24402) (regTwo!31627 (regTwo!31626 r!7292)))) b!5577846))

(assert (= (and b!5576777 ((_ is Star!15557) (regTwo!31627 (regTwo!31626 r!7292)))) b!5577847))

(assert (= (and b!5576777 ((_ is Union!15557) (regTwo!31627 (regTwo!31626 r!7292)))) b!5577848))

(declare-fun e!3441944 () Bool)

(assert (=> b!5576749 (= tp!1543222 e!3441944)))

(declare-fun b!5577850 () Bool)

(declare-fun tp!1543480 () Bool)

(declare-fun tp!1543479 () Bool)

(assert (=> b!5577850 (= e!3441944 (and tp!1543480 tp!1543479))))

(declare-fun b!5577852 () Bool)

(declare-fun tp!1543481 () Bool)

(declare-fun tp!1543478 () Bool)

(assert (=> b!5577852 (= e!3441944 (and tp!1543481 tp!1543478))))

(declare-fun b!5577851 () Bool)

(declare-fun tp!1543477 () Bool)

(assert (=> b!5577851 (= e!3441944 tp!1543477)))

(declare-fun b!5577849 () Bool)

(assert (=> b!5577849 (= e!3441944 tp_is_empty!40367)))

(assert (= (and b!5576749 ((_ is ElementMatch!15557) (h!69294 (exprs!5441 setElem!37091)))) b!5577849))

(assert (= (and b!5576749 ((_ is Concat!24402) (h!69294 (exprs!5441 setElem!37091)))) b!5577850))

(assert (= (and b!5576749 ((_ is Star!15557) (h!69294 (exprs!5441 setElem!37091)))) b!5577851))

(assert (= (and b!5576749 ((_ is Union!15557) (h!69294 (exprs!5441 setElem!37091)))) b!5577852))

(declare-fun b!5577853 () Bool)

(declare-fun e!3441945 () Bool)

(declare-fun tp!1543482 () Bool)

(declare-fun tp!1543483 () Bool)

(assert (=> b!5577853 (= e!3441945 (and tp!1543482 tp!1543483))))

(assert (=> b!5576749 (= tp!1543223 e!3441945)))

(assert (= (and b!5576749 ((_ is Cons!62846) (t!376239 (exprs!5441 setElem!37091)))) b!5577853))

(declare-fun e!3441946 () Bool)

(assert (=> b!5576771 (= tp!1543250 e!3441946)))

(declare-fun b!5577855 () Bool)

(declare-fun tp!1543487 () Bool)

(declare-fun tp!1543486 () Bool)

(assert (=> b!5577855 (= e!3441946 (and tp!1543487 tp!1543486))))

(declare-fun b!5577857 () Bool)

(declare-fun tp!1543488 () Bool)

(declare-fun tp!1543485 () Bool)

(assert (=> b!5577857 (= e!3441946 (and tp!1543488 tp!1543485))))

(declare-fun b!5577856 () Bool)

(declare-fun tp!1543484 () Bool)

(assert (=> b!5577856 (= e!3441946 tp!1543484)))

(declare-fun b!5577854 () Bool)

(assert (=> b!5577854 (= e!3441946 tp_is_empty!40367)))

(assert (= (and b!5576771 ((_ is ElementMatch!15557) (regOne!31626 (regOne!31626 r!7292)))) b!5577854))

(assert (= (and b!5576771 ((_ is Concat!24402) (regOne!31626 (regOne!31626 r!7292)))) b!5577855))

(assert (= (and b!5576771 ((_ is Star!15557) (regOne!31626 (regOne!31626 r!7292)))) b!5577856))

(assert (= (and b!5576771 ((_ is Union!15557) (regOne!31626 (regOne!31626 r!7292)))) b!5577857))

(declare-fun e!3441947 () Bool)

(assert (=> b!5576771 (= tp!1543249 e!3441947)))

(declare-fun b!5577859 () Bool)

(declare-fun tp!1543492 () Bool)

(declare-fun tp!1543491 () Bool)

(assert (=> b!5577859 (= e!3441947 (and tp!1543492 tp!1543491))))

(declare-fun b!5577861 () Bool)

(declare-fun tp!1543493 () Bool)

(declare-fun tp!1543490 () Bool)

(assert (=> b!5577861 (= e!3441947 (and tp!1543493 tp!1543490))))

(declare-fun b!5577860 () Bool)

(declare-fun tp!1543489 () Bool)

(assert (=> b!5577860 (= e!3441947 tp!1543489)))

(declare-fun b!5577858 () Bool)

(assert (=> b!5577858 (= e!3441947 tp_is_empty!40367)))

(assert (= (and b!5576771 ((_ is ElementMatch!15557) (regTwo!31626 (regOne!31626 r!7292)))) b!5577858))

(assert (= (and b!5576771 ((_ is Concat!24402) (regTwo!31626 (regOne!31626 r!7292)))) b!5577859))

(assert (= (and b!5576771 ((_ is Star!15557) (regTwo!31626 (regOne!31626 r!7292)))) b!5577860))

(assert (= (and b!5576771 ((_ is Union!15557) (regTwo!31626 (regOne!31626 r!7292)))) b!5577861))

(declare-fun e!3441948 () Bool)

(assert (=> b!5576793 (= tp!1543266 e!3441948)))

(declare-fun b!5577863 () Bool)

(declare-fun tp!1543497 () Bool)

(declare-fun tp!1543496 () Bool)

(assert (=> b!5577863 (= e!3441948 (and tp!1543497 tp!1543496))))

(declare-fun b!5577865 () Bool)

(declare-fun tp!1543498 () Bool)

(declare-fun tp!1543495 () Bool)

(assert (=> b!5577865 (= e!3441948 (and tp!1543498 tp!1543495))))

(declare-fun b!5577864 () Bool)

(declare-fun tp!1543494 () Bool)

(assert (=> b!5577864 (= e!3441948 tp!1543494)))

(declare-fun b!5577862 () Bool)

(assert (=> b!5577862 (= e!3441948 tp_is_empty!40367)))

(assert (= (and b!5576793 ((_ is ElementMatch!15557) (reg!15886 (regOne!31627 r!7292)))) b!5577862))

(assert (= (and b!5576793 ((_ is Concat!24402) (reg!15886 (regOne!31627 r!7292)))) b!5577863))

(assert (= (and b!5576793 ((_ is Star!15557) (reg!15886 (regOne!31627 r!7292)))) b!5577864))

(assert (= (and b!5576793 ((_ is Union!15557) (reg!15886 (regOne!31627 r!7292)))) b!5577865))

(declare-fun e!3441949 () Bool)

(assert (=> b!5576794 (= tp!1543270 e!3441949)))

(declare-fun b!5577867 () Bool)

(declare-fun tp!1543502 () Bool)

(declare-fun tp!1543501 () Bool)

(assert (=> b!5577867 (= e!3441949 (and tp!1543502 tp!1543501))))

(declare-fun b!5577869 () Bool)

(declare-fun tp!1543503 () Bool)

(declare-fun tp!1543500 () Bool)

(assert (=> b!5577869 (= e!3441949 (and tp!1543503 tp!1543500))))

(declare-fun b!5577868 () Bool)

(declare-fun tp!1543499 () Bool)

(assert (=> b!5577868 (= e!3441949 tp!1543499)))

(declare-fun b!5577866 () Bool)

(assert (=> b!5577866 (= e!3441949 tp_is_empty!40367)))

(assert (= (and b!5576794 ((_ is ElementMatch!15557) (regOne!31627 (regOne!31627 r!7292)))) b!5577866))

(assert (= (and b!5576794 ((_ is Concat!24402) (regOne!31627 (regOne!31627 r!7292)))) b!5577867))

(assert (= (and b!5576794 ((_ is Star!15557) (regOne!31627 (regOne!31627 r!7292)))) b!5577868))

(assert (= (and b!5576794 ((_ is Union!15557) (regOne!31627 (regOne!31627 r!7292)))) b!5577869))

(declare-fun e!3441950 () Bool)

(assert (=> b!5576794 (= tp!1543267 e!3441950)))

(declare-fun b!5577871 () Bool)

(declare-fun tp!1543507 () Bool)

(declare-fun tp!1543506 () Bool)

(assert (=> b!5577871 (= e!3441950 (and tp!1543507 tp!1543506))))

(declare-fun b!5577873 () Bool)

(declare-fun tp!1543508 () Bool)

(declare-fun tp!1543505 () Bool)

(assert (=> b!5577873 (= e!3441950 (and tp!1543508 tp!1543505))))

(declare-fun b!5577872 () Bool)

(declare-fun tp!1543504 () Bool)

(assert (=> b!5577872 (= e!3441950 tp!1543504)))

(declare-fun b!5577870 () Bool)

(assert (=> b!5577870 (= e!3441950 tp_is_empty!40367)))

(assert (= (and b!5576794 ((_ is ElementMatch!15557) (regTwo!31627 (regOne!31627 r!7292)))) b!5577870))

(assert (= (and b!5576794 ((_ is Concat!24402) (regTwo!31627 (regOne!31627 r!7292)))) b!5577871))

(assert (= (and b!5576794 ((_ is Star!15557) (regTwo!31627 (regOne!31627 r!7292)))) b!5577872))

(assert (= (and b!5576794 ((_ is Union!15557) (regTwo!31627 (regOne!31627 r!7292)))) b!5577873))

(declare-fun e!3441951 () Bool)

(assert (=> b!5576792 (= tp!1543269 e!3441951)))

(declare-fun b!5577875 () Bool)

(declare-fun tp!1543512 () Bool)

(declare-fun tp!1543511 () Bool)

(assert (=> b!5577875 (= e!3441951 (and tp!1543512 tp!1543511))))

(declare-fun b!5577877 () Bool)

(declare-fun tp!1543513 () Bool)

(declare-fun tp!1543510 () Bool)

(assert (=> b!5577877 (= e!3441951 (and tp!1543513 tp!1543510))))

(declare-fun b!5577876 () Bool)

(declare-fun tp!1543509 () Bool)

(assert (=> b!5577876 (= e!3441951 tp!1543509)))

(declare-fun b!5577874 () Bool)

(assert (=> b!5577874 (= e!3441951 tp_is_empty!40367)))

(assert (= (and b!5576792 ((_ is ElementMatch!15557) (regOne!31626 (regOne!31627 r!7292)))) b!5577874))

(assert (= (and b!5576792 ((_ is Concat!24402) (regOne!31626 (regOne!31627 r!7292)))) b!5577875))

(assert (= (and b!5576792 ((_ is Star!15557) (regOne!31626 (regOne!31627 r!7292)))) b!5577876))

(assert (= (and b!5576792 ((_ is Union!15557) (regOne!31626 (regOne!31627 r!7292)))) b!5577877))

(declare-fun e!3441952 () Bool)

(assert (=> b!5576792 (= tp!1543268 e!3441952)))

(declare-fun b!5577879 () Bool)

(declare-fun tp!1543517 () Bool)

(declare-fun tp!1543516 () Bool)

(assert (=> b!5577879 (= e!3441952 (and tp!1543517 tp!1543516))))

(declare-fun b!5577881 () Bool)

(declare-fun tp!1543518 () Bool)

(declare-fun tp!1543515 () Bool)

(assert (=> b!5577881 (= e!3441952 (and tp!1543518 tp!1543515))))

(declare-fun b!5577880 () Bool)

(declare-fun tp!1543514 () Bool)

(assert (=> b!5577880 (= e!3441952 tp!1543514)))

(declare-fun b!5577878 () Bool)

(assert (=> b!5577878 (= e!3441952 tp_is_empty!40367)))

(assert (= (and b!5576792 ((_ is ElementMatch!15557) (regTwo!31626 (regOne!31627 r!7292)))) b!5577878))

(assert (= (and b!5576792 ((_ is Concat!24402) (regTwo!31626 (regOne!31627 r!7292)))) b!5577879))

(assert (= (and b!5576792 ((_ is Star!15557) (regTwo!31626 (regOne!31627 r!7292)))) b!5577880))

(assert (= (and b!5576792 ((_ is Union!15557) (regTwo!31626 (regOne!31627 r!7292)))) b!5577881))

(declare-fun e!3441953 () Bool)

(assert (=> b!5576773 (= tp!1543251 e!3441953)))

(declare-fun b!5577883 () Bool)

(declare-fun tp!1543522 () Bool)

(declare-fun tp!1543521 () Bool)

(assert (=> b!5577883 (= e!3441953 (and tp!1543522 tp!1543521))))

(declare-fun b!5577885 () Bool)

(declare-fun tp!1543523 () Bool)

(declare-fun tp!1543520 () Bool)

(assert (=> b!5577885 (= e!3441953 (and tp!1543523 tp!1543520))))

(declare-fun b!5577884 () Bool)

(declare-fun tp!1543519 () Bool)

(assert (=> b!5577884 (= e!3441953 tp!1543519)))

(declare-fun b!5577882 () Bool)

(assert (=> b!5577882 (= e!3441953 tp_is_empty!40367)))

(assert (= (and b!5576773 ((_ is ElementMatch!15557) (regOne!31627 (regOne!31626 r!7292)))) b!5577882))

(assert (= (and b!5576773 ((_ is Concat!24402) (regOne!31627 (regOne!31626 r!7292)))) b!5577883))

(assert (= (and b!5576773 ((_ is Star!15557) (regOne!31627 (regOne!31626 r!7292)))) b!5577884))

(assert (= (and b!5576773 ((_ is Union!15557) (regOne!31627 (regOne!31626 r!7292)))) b!5577885))

(declare-fun e!3441954 () Bool)

(assert (=> b!5576773 (= tp!1543248 e!3441954)))

(declare-fun b!5577887 () Bool)

(declare-fun tp!1543527 () Bool)

(declare-fun tp!1543526 () Bool)

(assert (=> b!5577887 (= e!3441954 (and tp!1543527 tp!1543526))))

(declare-fun b!5577889 () Bool)

(declare-fun tp!1543528 () Bool)

(declare-fun tp!1543525 () Bool)

(assert (=> b!5577889 (= e!3441954 (and tp!1543528 tp!1543525))))

(declare-fun b!5577888 () Bool)

(declare-fun tp!1543524 () Bool)

(assert (=> b!5577888 (= e!3441954 tp!1543524)))

(declare-fun b!5577886 () Bool)

(assert (=> b!5577886 (= e!3441954 tp_is_empty!40367)))

(assert (= (and b!5576773 ((_ is ElementMatch!15557) (regTwo!31627 (regOne!31626 r!7292)))) b!5577886))

(assert (= (and b!5576773 ((_ is Concat!24402) (regTwo!31627 (regOne!31626 r!7292)))) b!5577887))

(assert (= (and b!5576773 ((_ is Star!15557) (regTwo!31627 (regOne!31626 r!7292)))) b!5577888))

(assert (= (and b!5576773 ((_ is Union!15557) (regTwo!31627 (regOne!31626 r!7292)))) b!5577889))

(declare-fun e!3441955 () Bool)

(assert (=> b!5576772 (= tp!1543247 e!3441955)))

(declare-fun b!5577891 () Bool)

(declare-fun tp!1543532 () Bool)

(declare-fun tp!1543531 () Bool)

(assert (=> b!5577891 (= e!3441955 (and tp!1543532 tp!1543531))))

(declare-fun b!5577893 () Bool)

(declare-fun tp!1543533 () Bool)

(declare-fun tp!1543530 () Bool)

(assert (=> b!5577893 (= e!3441955 (and tp!1543533 tp!1543530))))

(declare-fun b!5577892 () Bool)

(declare-fun tp!1543529 () Bool)

(assert (=> b!5577892 (= e!3441955 tp!1543529)))

(declare-fun b!5577890 () Bool)

(assert (=> b!5577890 (= e!3441955 tp_is_empty!40367)))

(assert (= (and b!5576772 ((_ is ElementMatch!15557) (reg!15886 (regOne!31626 r!7292)))) b!5577890))

(assert (= (and b!5576772 ((_ is Concat!24402) (reg!15886 (regOne!31626 r!7292)))) b!5577891))

(assert (= (and b!5576772 ((_ is Star!15557) (reg!15886 (regOne!31626 r!7292)))) b!5577892))

(assert (= (and b!5576772 ((_ is Union!15557) (reg!15886 (regOne!31626 r!7292)))) b!5577893))

(declare-fun b!5577894 () Bool)

(declare-fun e!3441956 () Bool)

(declare-fun tp!1543534 () Bool)

(assert (=> b!5577894 (= e!3441956 (and tp_is_empty!40367 tp!1543534))))

(assert (=> b!5576790 (= tp!1543265 e!3441956)))

(assert (= (and b!5576790 ((_ is Cons!62848) (t!376241 (t!376241 s!2326)))) b!5577894))

(declare-fun e!3441957 () Bool)

(assert (=> b!5576775 (= tp!1543255 e!3441957)))

(declare-fun b!5577896 () Bool)

(declare-fun tp!1543538 () Bool)

(declare-fun tp!1543537 () Bool)

(assert (=> b!5577896 (= e!3441957 (and tp!1543538 tp!1543537))))

(declare-fun b!5577898 () Bool)

(declare-fun tp!1543539 () Bool)

(declare-fun tp!1543536 () Bool)

(assert (=> b!5577898 (= e!3441957 (and tp!1543539 tp!1543536))))

(declare-fun b!5577897 () Bool)

(declare-fun tp!1543535 () Bool)

(assert (=> b!5577897 (= e!3441957 tp!1543535)))

(declare-fun b!5577895 () Bool)

(assert (=> b!5577895 (= e!3441957 tp_is_empty!40367)))

(assert (= (and b!5576775 ((_ is ElementMatch!15557) (regOne!31626 (regTwo!31626 r!7292)))) b!5577895))

(assert (= (and b!5576775 ((_ is Concat!24402) (regOne!31626 (regTwo!31626 r!7292)))) b!5577896))

(assert (= (and b!5576775 ((_ is Star!15557) (regOne!31626 (regTwo!31626 r!7292)))) b!5577897))

(assert (= (and b!5576775 ((_ is Union!15557) (regOne!31626 (regTwo!31626 r!7292)))) b!5577898))

(declare-fun e!3441958 () Bool)

(assert (=> b!5576775 (= tp!1543254 e!3441958)))

(declare-fun b!5577900 () Bool)

(declare-fun tp!1543543 () Bool)

(declare-fun tp!1543542 () Bool)

(assert (=> b!5577900 (= e!3441958 (and tp!1543543 tp!1543542))))

(declare-fun b!5577902 () Bool)

(declare-fun tp!1543544 () Bool)

(declare-fun tp!1543541 () Bool)

(assert (=> b!5577902 (= e!3441958 (and tp!1543544 tp!1543541))))

(declare-fun b!5577901 () Bool)

(declare-fun tp!1543540 () Bool)

(assert (=> b!5577901 (= e!3441958 tp!1543540)))

(declare-fun b!5577899 () Bool)

(assert (=> b!5577899 (= e!3441958 tp_is_empty!40367)))

(assert (= (and b!5576775 ((_ is ElementMatch!15557) (regTwo!31626 (regTwo!31626 r!7292)))) b!5577899))

(assert (= (and b!5576775 ((_ is Concat!24402) (regTwo!31626 (regTwo!31626 r!7292)))) b!5577900))

(assert (= (and b!5576775 ((_ is Star!15557) (regTwo!31626 (regTwo!31626 r!7292)))) b!5577901))

(assert (= (and b!5576775 ((_ is Union!15557) (regTwo!31626 (regTwo!31626 r!7292)))) b!5577902))

(declare-fun e!3441959 () Bool)

(assert (=> b!5576776 (= tp!1543252 e!3441959)))

(declare-fun b!5577904 () Bool)

(declare-fun tp!1543548 () Bool)

(declare-fun tp!1543547 () Bool)

(assert (=> b!5577904 (= e!3441959 (and tp!1543548 tp!1543547))))

(declare-fun b!5577906 () Bool)

(declare-fun tp!1543549 () Bool)

(declare-fun tp!1543546 () Bool)

(assert (=> b!5577906 (= e!3441959 (and tp!1543549 tp!1543546))))

(declare-fun b!5577905 () Bool)

(declare-fun tp!1543545 () Bool)

(assert (=> b!5577905 (= e!3441959 tp!1543545)))

(declare-fun b!5577903 () Bool)

(assert (=> b!5577903 (= e!3441959 tp_is_empty!40367)))

(assert (= (and b!5576776 ((_ is ElementMatch!15557) (reg!15886 (regTwo!31626 r!7292)))) b!5577903))

(assert (= (and b!5576776 ((_ is Concat!24402) (reg!15886 (regTwo!31626 r!7292)))) b!5577904))

(assert (= (and b!5576776 ((_ is Star!15557) (reg!15886 (regTwo!31626 r!7292)))) b!5577905))

(assert (= (and b!5576776 ((_ is Union!15557) (reg!15886 (regTwo!31626 r!7292)))) b!5577906))

(declare-fun e!3441960 () Bool)

(assert (=> b!5576798 (= tp!1543275 e!3441960)))

(declare-fun b!5577908 () Bool)

(declare-fun tp!1543553 () Bool)

(declare-fun tp!1543552 () Bool)

(assert (=> b!5577908 (= e!3441960 (and tp!1543553 tp!1543552))))

(declare-fun b!5577910 () Bool)

(declare-fun tp!1543554 () Bool)

(declare-fun tp!1543551 () Bool)

(assert (=> b!5577910 (= e!3441960 (and tp!1543554 tp!1543551))))

(declare-fun b!5577909 () Bool)

(declare-fun tp!1543550 () Bool)

(assert (=> b!5577909 (= e!3441960 tp!1543550)))

(declare-fun b!5577907 () Bool)

(assert (=> b!5577907 (= e!3441960 tp_is_empty!40367)))

(assert (= (and b!5576798 ((_ is ElementMatch!15557) (regOne!31627 (regTwo!31627 r!7292)))) b!5577907))

(assert (= (and b!5576798 ((_ is Concat!24402) (regOne!31627 (regTwo!31627 r!7292)))) b!5577908))

(assert (= (and b!5576798 ((_ is Star!15557) (regOne!31627 (regTwo!31627 r!7292)))) b!5577909))

(assert (= (and b!5576798 ((_ is Union!15557) (regOne!31627 (regTwo!31627 r!7292)))) b!5577910))

(declare-fun e!3441961 () Bool)

(assert (=> b!5576798 (= tp!1543272 e!3441961)))

(declare-fun b!5577912 () Bool)

(declare-fun tp!1543558 () Bool)

(declare-fun tp!1543557 () Bool)

(assert (=> b!5577912 (= e!3441961 (and tp!1543558 tp!1543557))))

(declare-fun b!5577914 () Bool)

(declare-fun tp!1543559 () Bool)

(declare-fun tp!1543556 () Bool)

(assert (=> b!5577914 (= e!3441961 (and tp!1543559 tp!1543556))))

(declare-fun b!5577913 () Bool)

(declare-fun tp!1543555 () Bool)

(assert (=> b!5577913 (= e!3441961 tp!1543555)))

(declare-fun b!5577911 () Bool)

(assert (=> b!5577911 (= e!3441961 tp_is_empty!40367)))

(assert (= (and b!5576798 ((_ is ElementMatch!15557) (regTwo!31627 (regTwo!31627 r!7292)))) b!5577911))

(assert (= (and b!5576798 ((_ is Concat!24402) (regTwo!31627 (regTwo!31627 r!7292)))) b!5577912))

(assert (= (and b!5576798 ((_ is Star!15557) (regTwo!31627 (regTwo!31627 r!7292)))) b!5577913))

(assert (= (and b!5576798 ((_ is Union!15557) (regTwo!31627 (regTwo!31627 r!7292)))) b!5577914))

(declare-fun e!3441962 () Bool)

(assert (=> b!5576768 (= tp!1543244 e!3441962)))

(declare-fun b!5577916 () Bool)

(declare-fun tp!1543563 () Bool)

(declare-fun tp!1543562 () Bool)

(assert (=> b!5577916 (= e!3441962 (and tp!1543563 tp!1543562))))

(declare-fun b!5577918 () Bool)

(declare-fun tp!1543564 () Bool)

(declare-fun tp!1543561 () Bool)

(assert (=> b!5577918 (= e!3441962 (and tp!1543564 tp!1543561))))

(declare-fun b!5577917 () Bool)

(declare-fun tp!1543560 () Bool)

(assert (=> b!5577917 (= e!3441962 tp!1543560)))

(declare-fun b!5577915 () Bool)

(assert (=> b!5577915 (= e!3441962 tp_is_empty!40367)))

(assert (= (and b!5576768 ((_ is ElementMatch!15557) (regOne!31627 (reg!15886 r!7292)))) b!5577915))

(assert (= (and b!5576768 ((_ is Concat!24402) (regOne!31627 (reg!15886 r!7292)))) b!5577916))

(assert (= (and b!5576768 ((_ is Star!15557) (regOne!31627 (reg!15886 r!7292)))) b!5577917))

(assert (= (and b!5576768 ((_ is Union!15557) (regOne!31627 (reg!15886 r!7292)))) b!5577918))

(declare-fun e!3441963 () Bool)

(assert (=> b!5576768 (= tp!1543241 e!3441963)))

(declare-fun b!5577920 () Bool)

(declare-fun tp!1543568 () Bool)

(declare-fun tp!1543567 () Bool)

(assert (=> b!5577920 (= e!3441963 (and tp!1543568 tp!1543567))))

(declare-fun b!5577922 () Bool)

(declare-fun tp!1543569 () Bool)

(declare-fun tp!1543566 () Bool)

(assert (=> b!5577922 (= e!3441963 (and tp!1543569 tp!1543566))))

(declare-fun b!5577921 () Bool)

(declare-fun tp!1543565 () Bool)

(assert (=> b!5577921 (= e!3441963 tp!1543565)))

(declare-fun b!5577919 () Bool)

(assert (=> b!5577919 (= e!3441963 tp_is_empty!40367)))

(assert (= (and b!5576768 ((_ is ElementMatch!15557) (regTwo!31627 (reg!15886 r!7292)))) b!5577919))

(assert (= (and b!5576768 ((_ is Concat!24402) (regTwo!31627 (reg!15886 r!7292)))) b!5577920))

(assert (= (and b!5576768 ((_ is Star!15557) (regTwo!31627 (reg!15886 r!7292)))) b!5577921))

(assert (= (and b!5576768 ((_ is Union!15557) (regTwo!31627 (reg!15886 r!7292)))) b!5577922))

(declare-fun e!3441964 () Bool)

(assert (=> b!5576766 (= tp!1543243 e!3441964)))

(declare-fun b!5577924 () Bool)

(declare-fun tp!1543573 () Bool)

(declare-fun tp!1543572 () Bool)

(assert (=> b!5577924 (= e!3441964 (and tp!1543573 tp!1543572))))

(declare-fun b!5577926 () Bool)

(declare-fun tp!1543574 () Bool)

(declare-fun tp!1543571 () Bool)

(assert (=> b!5577926 (= e!3441964 (and tp!1543574 tp!1543571))))

(declare-fun b!5577925 () Bool)

(declare-fun tp!1543570 () Bool)

(assert (=> b!5577925 (= e!3441964 tp!1543570)))

(declare-fun b!5577923 () Bool)

(assert (=> b!5577923 (= e!3441964 tp_is_empty!40367)))

(assert (= (and b!5576766 ((_ is ElementMatch!15557) (regOne!31626 (reg!15886 r!7292)))) b!5577923))

(assert (= (and b!5576766 ((_ is Concat!24402) (regOne!31626 (reg!15886 r!7292)))) b!5577924))

(assert (= (and b!5576766 ((_ is Star!15557) (regOne!31626 (reg!15886 r!7292)))) b!5577925))

(assert (= (and b!5576766 ((_ is Union!15557) (regOne!31626 (reg!15886 r!7292)))) b!5577926))

(declare-fun e!3441965 () Bool)

(assert (=> b!5576766 (= tp!1543242 e!3441965)))

(declare-fun b!5577928 () Bool)

(declare-fun tp!1543578 () Bool)

(declare-fun tp!1543577 () Bool)

(assert (=> b!5577928 (= e!3441965 (and tp!1543578 tp!1543577))))

(declare-fun b!5577930 () Bool)

(declare-fun tp!1543579 () Bool)

(declare-fun tp!1543576 () Bool)

(assert (=> b!5577930 (= e!3441965 (and tp!1543579 tp!1543576))))

(declare-fun b!5577929 () Bool)

(declare-fun tp!1543575 () Bool)

(assert (=> b!5577929 (= e!3441965 tp!1543575)))

(declare-fun b!5577927 () Bool)

(assert (=> b!5577927 (= e!3441965 tp_is_empty!40367)))

(assert (= (and b!5576766 ((_ is ElementMatch!15557) (regTwo!31626 (reg!15886 r!7292)))) b!5577927))

(assert (= (and b!5576766 ((_ is Concat!24402) (regTwo!31626 (reg!15886 r!7292)))) b!5577928))

(assert (= (and b!5576766 ((_ is Star!15557) (regTwo!31626 (reg!15886 r!7292)))) b!5577929))

(assert (= (and b!5576766 ((_ is Union!15557) (regTwo!31626 (reg!15886 r!7292)))) b!5577930))

(declare-fun e!3441966 () Bool)

(assert (=> b!5576767 (= tp!1543240 e!3441966)))

(declare-fun b!5577932 () Bool)

(declare-fun tp!1543583 () Bool)

(declare-fun tp!1543582 () Bool)

(assert (=> b!5577932 (= e!3441966 (and tp!1543583 tp!1543582))))

(declare-fun b!5577934 () Bool)

(declare-fun tp!1543584 () Bool)

(declare-fun tp!1543581 () Bool)

(assert (=> b!5577934 (= e!3441966 (and tp!1543584 tp!1543581))))

(declare-fun b!5577933 () Bool)

(declare-fun tp!1543580 () Bool)

(assert (=> b!5577933 (= e!3441966 tp!1543580)))

(declare-fun b!5577931 () Bool)

(assert (=> b!5577931 (= e!3441966 tp_is_empty!40367)))

(assert (= (and b!5576767 ((_ is ElementMatch!15557) (reg!15886 (reg!15886 r!7292)))) b!5577931))

(assert (= (and b!5576767 ((_ is Concat!24402) (reg!15886 (reg!15886 r!7292)))) b!5577932))

(assert (= (and b!5576767 ((_ is Star!15557) (reg!15886 (reg!15886 r!7292)))) b!5577933))

(assert (= (and b!5576767 ((_ is Union!15557) (reg!15886 (reg!15886 r!7292)))) b!5577934))

(declare-fun e!3441967 () Bool)

(assert (=> b!5576797 (= tp!1543271 e!3441967)))

(declare-fun b!5577936 () Bool)

(declare-fun tp!1543588 () Bool)

(declare-fun tp!1543587 () Bool)

(assert (=> b!5577936 (= e!3441967 (and tp!1543588 tp!1543587))))

(declare-fun b!5577938 () Bool)

(declare-fun tp!1543589 () Bool)

(declare-fun tp!1543586 () Bool)

(assert (=> b!5577938 (= e!3441967 (and tp!1543589 tp!1543586))))

(declare-fun b!5577937 () Bool)

(declare-fun tp!1543585 () Bool)

(assert (=> b!5577937 (= e!3441967 tp!1543585)))

(declare-fun b!5577935 () Bool)

(assert (=> b!5577935 (= e!3441967 tp_is_empty!40367)))

(assert (= (and b!5576797 ((_ is ElementMatch!15557) (reg!15886 (regTwo!31627 r!7292)))) b!5577935))

(assert (= (and b!5576797 ((_ is Concat!24402) (reg!15886 (regTwo!31627 r!7292)))) b!5577936))

(assert (= (and b!5576797 ((_ is Star!15557) (reg!15886 (regTwo!31627 r!7292)))) b!5577937))

(assert (= (and b!5576797 ((_ is Union!15557) (reg!15886 (regTwo!31627 r!7292)))) b!5577938))

(declare-fun e!3441968 () Bool)

(assert (=> b!5576796 (= tp!1543274 e!3441968)))

(declare-fun b!5577940 () Bool)

(declare-fun tp!1543593 () Bool)

(declare-fun tp!1543592 () Bool)

(assert (=> b!5577940 (= e!3441968 (and tp!1543593 tp!1543592))))

(declare-fun b!5577942 () Bool)

(declare-fun tp!1543594 () Bool)

(declare-fun tp!1543591 () Bool)

(assert (=> b!5577942 (= e!3441968 (and tp!1543594 tp!1543591))))

(declare-fun b!5577941 () Bool)

(declare-fun tp!1543590 () Bool)

(assert (=> b!5577941 (= e!3441968 tp!1543590)))

(declare-fun b!5577939 () Bool)

(assert (=> b!5577939 (= e!3441968 tp_is_empty!40367)))

(assert (= (and b!5576796 ((_ is ElementMatch!15557) (regOne!31626 (regTwo!31627 r!7292)))) b!5577939))

(assert (= (and b!5576796 ((_ is Concat!24402) (regOne!31626 (regTwo!31627 r!7292)))) b!5577940))

(assert (= (and b!5576796 ((_ is Star!15557) (regOne!31626 (regTwo!31627 r!7292)))) b!5577941))

(assert (= (and b!5576796 ((_ is Union!15557) (regOne!31626 (regTwo!31627 r!7292)))) b!5577942))

(declare-fun e!3441969 () Bool)

(assert (=> b!5576796 (= tp!1543273 e!3441969)))

(declare-fun b!5577944 () Bool)

(declare-fun tp!1543598 () Bool)

(declare-fun tp!1543597 () Bool)

(assert (=> b!5577944 (= e!3441969 (and tp!1543598 tp!1543597))))

(declare-fun b!5577946 () Bool)

(declare-fun tp!1543599 () Bool)

(declare-fun tp!1543596 () Bool)

(assert (=> b!5577946 (= e!3441969 (and tp!1543599 tp!1543596))))

(declare-fun b!5577945 () Bool)

(declare-fun tp!1543595 () Bool)

(assert (=> b!5577945 (= e!3441969 tp!1543595)))

(declare-fun b!5577943 () Bool)

(assert (=> b!5577943 (= e!3441969 tp_is_empty!40367)))

(assert (= (and b!5576796 ((_ is ElementMatch!15557) (regTwo!31626 (regTwo!31627 r!7292)))) b!5577943))

(assert (= (and b!5576796 ((_ is Concat!24402) (regTwo!31626 (regTwo!31627 r!7292)))) b!5577944))

(assert (= (and b!5576796 ((_ is Star!15557) (regTwo!31626 (regTwo!31627 r!7292)))) b!5577945))

(assert (= (and b!5576796 ((_ is Union!15557) (regTwo!31626 (regTwo!31627 r!7292)))) b!5577946))

(declare-fun b_lambda!211445 () Bool)

(assert (= b_lambda!211441 (or d!1763016 b_lambda!211445)))

(declare-fun bs!1290727 () Bool)

(declare-fun d!1763602 () Bool)

(assert (= bs!1290727 (and d!1763602 d!1763016)))

(assert (=> bs!1290727 (= (dynLambda!24580 lambda!298942 (h!69294 (exprs!5441 setElem!37091))) (validRegex!7293 (h!69294 (exprs!5441 setElem!37091))))))

(declare-fun m!6560730 () Bool)

(assert (=> bs!1290727 m!6560730))

(assert (=> b!5577625 d!1763602))

(declare-fun b_lambda!211447 () Bool)

(assert (= b_lambda!211425 (or d!1763022 b_lambda!211447)))

(declare-fun bs!1290728 () Bool)

(declare-fun d!1763604 () Bool)

(assert (= bs!1290728 (and d!1763604 d!1763022)))

(assert (=> bs!1290728 (= (dynLambda!24580 lambda!298943 (h!69294 (exprs!5441 (h!69295 zl!343)))) (validRegex!7293 (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(declare-fun m!6560732 () Bool)

(assert (=> bs!1290728 m!6560732))

(assert (=> b!5577548 d!1763604))

(declare-fun b_lambda!211449 () Bool)

(assert (= b_lambda!211413 (or b!5576018 b_lambda!211449)))

(assert (=> d!1763304 d!1763096))

(declare-fun b_lambda!211451 () Bool)

(assert (= b_lambda!211419 (or b!5576018 b_lambda!211451)))

(assert (=> d!1763428 d!1763098))

(declare-fun b_lambda!211453 () Bool)

(assert (= b_lambda!211411 (or d!1763070 b_lambda!211453)))

(declare-fun bs!1290729 () Bool)

(declare-fun d!1763606 () Bool)

(assert (= bs!1290729 (and d!1763606 d!1763070)))

(assert (=> bs!1290729 (= (dynLambda!24580 lambda!298958 (h!69294 (exprs!5441 (h!69295 zl!343)))) (validRegex!7293 (h!69294 (exprs!5441 (h!69295 zl!343)))))))

(assert (=> bs!1290729 m!6560732))

(assert (=> b!5577131 d!1763606))

(declare-fun b_lambda!211455 () Bool)

(assert (= b_lambda!211423 (or d!1763012 b_lambda!211455)))

(declare-fun bs!1290730 () Bool)

(declare-fun d!1763608 () Bool)

(assert (= bs!1290730 (and d!1763608 d!1763012)))

(assert (=> bs!1290730 (= (dynLambda!24580 lambda!298936 (h!69294 (unfocusZipperList!985 zl!343))) (validRegex!7293 (h!69294 (unfocusZipperList!985 zl!343))))))

(declare-fun m!6560734 () Bool)

(assert (=> bs!1290730 m!6560734))

(assert (=> b!5577455 d!1763608))

(declare-fun b_lambda!211457 () Bool)

(assert (= b_lambda!211443 (or d!1763014 b_lambda!211457)))

(declare-fun bs!1290731 () Bool)

(declare-fun d!1763610 () Bool)

(assert (= bs!1290731 (and d!1763610 d!1763014)))

(assert (=> bs!1290731 (= (dynLambda!24580 lambda!298939 (h!69294 lt!2252754)) (validRegex!7293 (h!69294 lt!2252754)))))

(declare-fun m!6560736 () Bool)

(assert (=> bs!1290731 m!6560736))

(assert (=> b!5577675 d!1763610))

(check-sat (not b!5577158) (not bm!417001) (not b!5577618) (not bm!417033) (not bm!417025) tp_is_empty!40367 (not b!5577913) (not d!1763560) (not d!1763526) (not b!5577184) (not bm!417038) (not d!1763424) (not setNonEmpty!37107) (not d!1763552) (not b!5577799) (not b!5577873) (not b!5577317) (not b!5577750) (not d!1763252) (not b!5577834) (not b!5577626) (not b!5577526) (not bm!417041) (not d!1763388) (not b!5577802) (not bm!417039) (not b!5577944) (not b_lambda!211445) (not b!5577921) (not b!5577889) (not d!1763580) (not b!5577474) (not bm!416990) (not bm!416938) (not b!5577904) (not bm!416873) (not b_lambda!211455) (not bm!416897) (not b!5577245) (not b!5577617) (not bm!416979) (not b!5577661) (not b!5577183) (not bm!416948) (not b!5577168) (not d!1763360) (not d!1763498) (not b!5577897) (not d!1763394) (not b!5577645) (not bm!416992) (not d!1763298) (not b!5577624) (not b!5577843) (not b!5577869) (not b!5577837) (not bm!416934) (not b!5577170) (not d!1763444) (not b!5577852) (not b!5577240) (not b!5577859) (not b!5577940) (not d!1763502) (not bm!416989) (not b!5577309) (not b!5577902) (not b!5577875) (not d!1763562) (not bm!417000) (not b!5577877) (not bm!417032) (not bm!416913) (not b!5577620) (not b!5577828) (not b!5577190) (not d!1763370) (not b!5577857) (not d!1763344) (not bs!1290729) (not b!5577614) (not d!1763450) (not bs!1290730) (not b!5577846) (not setNonEmpty!37106) (not bm!416967) (not b!5577833) (not b!5577677) (not d!1763500) (not bm!417024) (not b!5577905) (not bm!416963) (not b!5577838) (not bm!416908) (not bm!417017) (not b!5577244) (not d!1763368) (not b!5577809) (not b_lambda!211453) (not b!5577676) (not b!5577151) (not d!1763550) (not b!5577630) (not b!5577910) (not d!1763544) (not b!5577602) (not b!5577462) (not b!5577831) (not b!5577848) (not b!5577432) (not d!1763222) (not b!5577149) (not d!1763474) (not b!5577832) (not b!5577839) (not bm!417016) (not b!5577756) (not b!5577883) (not b!5577612) (not b_lambda!211401) (not b!5577860) (not b!5577842) (not b!5577469) (not bs!1290728) (not b!5577893) (not b!5577242) (not b!5577925) (not d!1763508) (not d!1763258) (not b!5577914) (not b!5577207) (not b!5577512) (not d!1763520) (not d!1763408) (not bm!416980) (not b!5577851) (not bs!1290731) (not b!5577788) (not bm!416909) (not b!5577308) (not d!1763326) (not bm!416973) (not b!5577316) (not b!5577353) (not b!5577856) (not d!1763570) (not b!5577549) (not b!5577150) (not b!5577211) (not b!5577787) (not b!5577850) (not b!5577768) (not b!5577825) (not bm!416994) (not d!1763510) (not d!1763592) (not b!5577884) (not b!5577254) (not b!5577465) (not d!1763590) (not b!5577166) (not b!5577643) (not bm!416975) (not b!5577840) (not b!5577912) (not b!5577780) (not d!1763504) (not b!5577621) (not b!5577918) (not b!5577163) (not b!5577847) (not b_lambda!211451) (not bm!417015) (not d!1763454) (not bm!416933) (not b!5577891) (not b!5577908) (not b!5577633) (not b!5577704) (not b!5577413) (not b!5577707) (not bm!416983) (not b!5577709) (not bm!416940) (not bm!416974) (not b!5577456) (not bm!417023) (not bm!417020) (not d!1763428) (not d!1763574) (not d!1763476) (not d!1763430) (not d!1763304) (not b!5577773) (not b_lambda!211447) (not d!1763468) (not b!5577863) (not d!1763546) (not b!5577698) (not b!5577922) (not b!5577853) (not b!5577776) (not bm!416984) (not b!5577463) (not b!5577752) (not bm!417014) (not b!5577627) (not b!5577646) (not d!1763348) (not bm!416969) (not bs!1290727) (not b!5577619) (not bm!416871) (not bm!416946) (not b!5577868) (not b!5577797) (not b!5577945) (not b!5577697) (not d!1763528) (not bm!417031) (not b!5577888) (not b!5577835) (not d!1763588) (not b!5577896) (not b!5577861) (not d!1763296) (not b!5577844) (not bm!417037) (not bm!416895) (not b!5577472) (not b!5577310) (not b!5577137) (not bm!417028) (not b!5577936) (not b!5577096) (not d!1763496) (not b!5577898) (not b!5577238) (not b!5577881) (not d!1763506) (not bm!416907) (not b!5577314) (not b!5577920) (not setNonEmpty!37104) (not b!5577632) (not b!5577208) (not b!5577002) (not d!1763542) (not d!1763566) (not bm!416962) (not d!1763600) (not b!5577599) (not bm!416996) (not b!5577933) (not b!5577930) (not d!1763538) (not b!5577138) (not b!5577946) (not d!1763350) (not bm!416988) (not b!5577924) (not bm!416968) (not b!5577312) (not d!1763536) (not b!5577318) (not b!5577900) (not b!5577790) (not b!5577187) (not b!5577864) (not d!1763484) (not bm!416985) (not bm!416999) (not b!5577887) (not bm!416981) (not b!5577938) (not b!5577876) (not b!5577820) (not b!5577783) (not b!5577916) (not d!1763404) (not b!5577785) (not b!5577132) (not b!5577172) (not b!5577934) (not b!5577880) (not b!5577731) (not b!5577926) (not b!5577906) (not b!5577212) (not b!5577794) (not b!5577616) (not b!5577932) (not d!1763582) (not d!1763518) (not b!5577774) (not b_lambda!211399) (not b!5577855) (not b!5577879) (not b!5577941) (not b!5577830) (not b_lambda!211457) (not b!5577909) (not b!5577928) (not b!5577894) (not b!5577515) (not b!5577937) (not b!5577638) (not b!5577325) (not b_lambda!211449) (not d!1763308) (not b!5577400) (not b!5577603) (not b!5577609) (not bm!417003) (not b!5577169) (not b!5577692) (not b!5577525) (not b!5577700) (not b!5577871) (not b!5577255) (not bm!417027) (not b!5577885) (not d!1763330) (not bm!416939) (not b!5577872) (not bm!416977) (not d!1763400) (not b!5577867) (not b!5577449) (not b!5577917) (not b!5577929) (not b!5577801) (not b!5577865) (not b!5577605) (not bm!416995) (not b!5577076) (not b!5577167) (not b!5577901) (not d!1763338) (not d!1763236) (not b!5577942) (not bm!416982) (not b!5577745) (not bm!416961) (not b!5577892) (not d!1763556) (not bm!417018) (not b!5577075) (not b!5577239) (not b!5577653))
(check-sat)

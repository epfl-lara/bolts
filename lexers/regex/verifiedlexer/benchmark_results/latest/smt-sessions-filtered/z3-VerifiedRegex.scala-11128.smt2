; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!575790 () Bool)

(assert start!575790)

(declare-fun b!5513944 () Bool)

(assert (=> b!5513944 true))

(assert (=> b!5513944 true))

(declare-fun lambda!295488 () Int)

(declare-fun lambda!295487 () Int)

(assert (=> b!5513944 (not (= lambda!295488 lambda!295487))))

(assert (=> b!5513944 true))

(assert (=> b!5513944 true))

(declare-fun b!5513931 () Bool)

(assert (=> b!5513931 true))

(declare-fun b!5513927 () Bool)

(declare-fun e!3409779 () Bool)

(declare-datatypes ((C!31276 0))(
  ( (C!31277 (val!25340 Int)) )
))
(declare-datatypes ((Regex!15503 0))(
  ( (ElementMatch!15503 (c!963749 C!31276)) (Concat!24348 (regOne!31518 Regex!15503) (regTwo!31518 Regex!15503)) (EmptyExpr!15503) (Star!15503 (reg!15832 Regex!15503)) (EmptyLang!15503) (Union!15503 (regOne!31519 Regex!15503) (regTwo!31519 Regex!15503)) )
))
(declare-datatypes ((List!62808 0))(
  ( (Nil!62684) (Cons!62684 (h!69132 Regex!15503) (t!376055 List!62808)) )
))
(declare-datatypes ((Context!9774 0))(
  ( (Context!9775 (exprs!5387 List!62808)) )
))
(declare-datatypes ((List!62809 0))(
  ( (Nil!62685) (Cons!62685 (h!69133 Context!9774) (t!376056 List!62809)) )
))
(declare-fun zl!343 () List!62809)

(declare-fun tp!1517000 () Bool)

(declare-fun e!3409770 () Bool)

(declare-fun inv!82004 (Context!9774) Bool)

(assert (=> b!5513927 (= e!3409770 (and (inv!82004 (h!69133 zl!343)) e!3409779 tp!1517000))))

(declare-fun b!5513928 () Bool)

(declare-fun tp!1517007 () Bool)

(assert (=> b!5513928 (= e!3409779 tp!1517007)))

(declare-fun b!5513929 () Bool)

(declare-fun e!3409769 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2245835 () (InoxSet Context!9774))

(declare-datatypes ((List!62810 0))(
  ( (Nil!62686) (Cons!62686 (h!69134 C!31276) (t!376057 List!62810)) )
))
(declare-fun s!2326 () List!62810)

(declare-fun matchZipper!1661 ((InoxSet Context!9774) List!62810) Bool)

(assert (=> b!5513929 (= e!3409769 (matchZipper!1661 lt!2245835 (t!376057 s!2326)))))

(declare-fun b!5513930 () Bool)

(declare-fun res!2349466 () Bool)

(declare-fun e!3409776 () Bool)

(assert (=> b!5513930 (=> res!2349466 e!3409776)))

(declare-fun r!7292 () Regex!15503)

(declare-fun generalisedUnion!1366 (List!62808) Regex!15503)

(declare-fun unfocusZipperList!931 (List!62809) List!62808)

(assert (=> b!5513930 (= res!2349466 (not (= r!7292 (generalisedUnion!1366 (unfocusZipperList!931 zl!343)))))))

(declare-fun e!3409777 () Bool)

(declare-fun e!3409772 () Bool)

(assert (=> b!5513931 (= e!3409777 e!3409772)))

(declare-fun res!2349479 () Bool)

(assert (=> b!5513931 (=> res!2349479 e!3409772)))

(declare-fun lt!2245838 () (InoxSet Context!9774))

(declare-fun lt!2245844 () (InoxSet Context!9774))

(assert (=> b!5513931 (= res!2349479 (not (= lt!2245838 lt!2245844)))))

(declare-fun z!1189 () (InoxSet Context!9774))

(declare-fun lambda!295489 () Int)

(declare-fun flatMap!1116 ((InoxSet Context!9774) Int) (InoxSet Context!9774))

(declare-fun derivationStepZipperUp!771 (Context!9774 C!31276) (InoxSet Context!9774))

(assert (=> b!5513931 (= (flatMap!1116 z!1189 lambda!295489) (derivationStepZipperUp!771 (h!69133 zl!343) (h!69134 s!2326)))))

(declare-datatypes ((Unit!155466 0))(
  ( (Unit!155467) )
))
(declare-fun lt!2245843 () Unit!155466)

(declare-fun lemmaFlatMapOnSingletonSet!648 ((InoxSet Context!9774) Context!9774 Int) Unit!155466)

(assert (=> b!5513931 (= lt!2245843 (lemmaFlatMapOnSingletonSet!648 z!1189 (h!69133 zl!343) lambda!295489))))

(declare-fun b!5513932 () Bool)

(declare-fun res!2349467 () Bool)

(declare-fun e!3409775 () Bool)

(assert (=> b!5513932 (=> (not res!2349467) (not e!3409775))))

(declare-fun unfocusZipper!1245 (List!62809) Regex!15503)

(assert (=> b!5513932 (= res!2349467 (= r!7292 (unfocusZipper!1245 zl!343)))))

(declare-fun b!5513933 () Bool)

(declare-fun e!3409771 () Bool)

(declare-fun lt!2245837 () (InoxSet Context!9774))

(declare-fun derivationStepZipper!1608 ((InoxSet Context!9774) C!31276) (InoxSet Context!9774))

(assert (=> b!5513933 (= e!3409771 (= (matchZipper!1661 lt!2245837 s!2326) (matchZipper!1661 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (t!376057 s!2326))))))

(declare-fun b!5513934 () Bool)

(declare-fun e!3409773 () Bool)

(assert (=> b!5513934 (= e!3409772 e!3409773)))

(declare-fun res!2349476 () Bool)

(assert (=> b!5513934 (=> res!2349476 e!3409773)))

(declare-fun nullable!5537 (Regex!15503) Bool)

(assert (=> b!5513934 (= res!2349476 (not (nullable!5537 (regOne!31518 r!7292))))))

(declare-fun lt!2245849 () Context!9774)

(declare-fun derivationStepZipperDown!845 (Regex!15503 Context!9774 C!31276) (InoxSet Context!9774))

(assert (=> b!5513934 (= lt!2245835 (derivationStepZipperDown!845 (regTwo!31518 r!7292) lt!2245849 (h!69134 s!2326)))))

(declare-fun lt!2245841 () (InoxSet Context!9774))

(declare-fun lt!2245851 () Context!9774)

(assert (=> b!5513934 (= lt!2245841 (derivationStepZipperDown!845 (regOne!31518 r!7292) lt!2245851 (h!69134 s!2326)))))

(declare-fun lt!2245836 () (InoxSet Context!9774))

(assert (=> b!5513934 (= (flatMap!1116 lt!2245836 lambda!295489) (derivationStepZipperUp!771 lt!2245851 (h!69134 s!2326)))))

(declare-fun lt!2245850 () Unit!155466)

(assert (=> b!5513934 (= lt!2245850 (lemmaFlatMapOnSingletonSet!648 lt!2245836 lt!2245851 lambda!295489))))

(declare-fun lt!2245842 () Context!9774)

(assert (=> b!5513934 (= (flatMap!1116 lt!2245837 lambda!295489) (derivationStepZipperUp!771 lt!2245842 (h!69134 s!2326)))))

(declare-fun lt!2245852 () Unit!155466)

(assert (=> b!5513934 (= lt!2245852 (lemmaFlatMapOnSingletonSet!648 lt!2245837 lt!2245842 lambda!295489))))

(declare-fun lt!2245853 () (InoxSet Context!9774))

(assert (=> b!5513934 (= lt!2245853 (derivationStepZipperUp!771 lt!2245851 (h!69134 s!2326)))))

(declare-fun lt!2245834 () (InoxSet Context!9774))

(assert (=> b!5513934 (= lt!2245834 (derivationStepZipperUp!771 lt!2245842 (h!69134 s!2326)))))

(assert (=> b!5513934 (= lt!2245836 (store ((as const (Array Context!9774 Bool)) false) lt!2245851 true))))

(declare-fun lt!2245847 () List!62808)

(assert (=> b!5513934 (= lt!2245851 (Context!9775 lt!2245847))))

(assert (=> b!5513934 (= lt!2245837 (store ((as const (Array Context!9774 Bool)) false) lt!2245842 true))))

(assert (=> b!5513934 (= lt!2245842 (Context!9775 (Cons!62684 (regOne!31518 r!7292) lt!2245847)))))

(assert (=> b!5513934 (= lt!2245847 (Cons!62684 (regTwo!31518 r!7292) Nil!62684))))

(declare-fun b!5513935 () Bool)

(declare-fun res!2349472 () Bool)

(declare-fun e!3409782 () Bool)

(assert (=> b!5513935 (=> res!2349472 e!3409782)))

(declare-fun isEmpty!34465 (List!62808) Bool)

(assert (=> b!5513935 (= res!2349472 (not (isEmpty!34465 (t!376055 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun b!5513936 () Bool)

(declare-fun e!3409781 () Bool)

(declare-fun tp_is_empty!40259 () Bool)

(assert (=> b!5513936 (= e!3409781 tp_is_empty!40259)))

(declare-fun b!5513937 () Bool)

(declare-fun res!2349481 () Bool)

(assert (=> b!5513937 (=> res!2349481 e!3409776)))

(get-info :version)

(assert (=> b!5513937 (= res!2349481 (or ((_ is EmptyExpr!15503) r!7292) ((_ is EmptyLang!15503) r!7292) ((_ is ElementMatch!15503) r!7292) ((_ is Union!15503) r!7292) (not ((_ is Concat!24348) r!7292))))))

(declare-fun res!2349468 () Bool)

(assert (=> start!575790 (=> (not res!2349468) (not e!3409775))))

(declare-fun validRegex!7239 (Regex!15503) Bool)

(assert (=> start!575790 (= res!2349468 (validRegex!7239 r!7292))))

(assert (=> start!575790 e!3409775))

(assert (=> start!575790 e!3409781))

(declare-fun condSetEmpty!36639 () Bool)

(assert (=> start!575790 (= condSetEmpty!36639 (= z!1189 ((as const (Array Context!9774 Bool)) false)))))

(declare-fun setRes!36639 () Bool)

(assert (=> start!575790 setRes!36639))

(assert (=> start!575790 e!3409770))

(declare-fun e!3409774 () Bool)

(assert (=> start!575790 e!3409774))

(declare-fun b!5513938 () Bool)

(declare-fun res!2349471 () Bool)

(assert (=> b!5513938 (=> res!2349471 e!3409776)))

(declare-fun generalisedConcat!1118 (List!62808) Regex!15503)

(assert (=> b!5513938 (= res!2349471 (not (= r!7292 (generalisedConcat!1118 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun b!5513939 () Bool)

(declare-fun e!3409778 () Bool)

(assert (=> b!5513939 (= e!3409778 e!3409771)))

(declare-fun res!2349480 () Bool)

(assert (=> b!5513939 (=> res!2349480 e!3409771)))

(declare-fun lt!2245839 () Bool)

(assert (=> b!5513939 (= res!2349480 (not (= lt!2245839 (matchZipper!1661 lt!2245838 (t!376057 s!2326)))))))

(declare-fun lt!2245845 () Bool)

(assert (=> b!5513939 (= lt!2245845 lt!2245839)))

(assert (=> b!5513939 (= lt!2245839 e!3409769)))

(declare-fun res!2349469 () Bool)

(assert (=> b!5513939 (=> res!2349469 e!3409769)))

(declare-fun lt!2245832 () Bool)

(assert (=> b!5513939 (= res!2349469 lt!2245832)))

(declare-fun lt!2245855 () (InoxSet Context!9774))

(assert (=> b!5513939 (= lt!2245845 (matchZipper!1661 lt!2245855 (t!376057 s!2326)))))

(assert (=> b!5513939 (= lt!2245832 (matchZipper!1661 lt!2245841 (t!376057 s!2326)))))

(declare-fun lt!2245854 () Unit!155466)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!550 ((InoxSet Context!9774) (InoxSet Context!9774) List!62810) Unit!155466)

(assert (=> b!5513939 (= lt!2245854 (lemmaZipperConcatMatchesSameAsBothZippers!550 lt!2245841 lt!2245835 (t!376057 s!2326)))))

(declare-fun setIsEmpty!36639 () Bool)

(assert (=> setIsEmpty!36639 setRes!36639))

(declare-fun tp!1517004 () Bool)

(declare-fun setElem!36639 () Context!9774)

(declare-fun setNonEmpty!36639 () Bool)

(declare-fun e!3409780 () Bool)

(assert (=> setNonEmpty!36639 (= setRes!36639 (and tp!1517004 (inv!82004 setElem!36639) e!3409780))))

(declare-fun setRest!36639 () (InoxSet Context!9774))

(assert (=> setNonEmpty!36639 (= z!1189 ((_ map or) (store ((as const (Array Context!9774 Bool)) false) setElem!36639 true) setRest!36639))))

(declare-fun b!5513940 () Bool)

(declare-fun res!2349470 () Bool)

(assert (=> b!5513940 (=> (not res!2349470) (not e!3409775))))

(declare-fun toList!9287 ((InoxSet Context!9774)) List!62809)

(assert (=> b!5513940 (= res!2349470 (= (toList!9287 z!1189) zl!343))))

(declare-fun b!5513941 () Bool)

(declare-fun tp!1517003 () Bool)

(declare-fun tp!1517001 () Bool)

(assert (=> b!5513941 (= e!3409781 (and tp!1517003 tp!1517001))))

(declare-fun b!5513942 () Bool)

(declare-fun tp!1516998 () Bool)

(assert (=> b!5513942 (= e!3409780 tp!1516998)))

(declare-fun b!5513943 () Bool)

(declare-fun tp!1517005 () Bool)

(assert (=> b!5513943 (= e!3409781 tp!1517005)))

(assert (=> b!5513944 (= e!3409776 e!3409782)))

(declare-fun res!2349477 () Bool)

(assert (=> b!5513944 (=> res!2349477 e!3409782)))

(declare-fun lt!2245848 () Bool)

(declare-fun lt!2245840 () Bool)

(assert (=> b!5513944 (= res!2349477 (or (not (= lt!2245848 lt!2245840)) ((_ is Nil!62686) s!2326)))))

(declare-fun Exists!2603 (Int) Bool)

(assert (=> b!5513944 (= (Exists!2603 lambda!295487) (Exists!2603 lambda!295488))))

(declare-fun lt!2245833 () Unit!155466)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1232 (Regex!15503 Regex!15503 List!62810) Unit!155466)

(assert (=> b!5513944 (= lt!2245833 (lemmaExistCutMatchRandMatchRSpecEquivalent!1232 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326))))

(assert (=> b!5513944 (= lt!2245840 (Exists!2603 lambda!295487))))

(declare-datatypes ((tuple2!65200 0))(
  ( (tuple2!65201 (_1!35903 List!62810) (_2!35903 List!62810)) )
))
(declare-datatypes ((Option!15512 0))(
  ( (None!15511) (Some!15511 (v!51546 tuple2!65200)) )
))
(declare-fun isDefined!12215 (Option!15512) Bool)

(declare-fun findConcatSeparation!1926 (Regex!15503 Regex!15503 List!62810 List!62810 List!62810) Option!15512)

(assert (=> b!5513944 (= lt!2245840 (isDefined!12215 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326)))))

(declare-fun lt!2245856 () Unit!155466)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1690 (Regex!15503 Regex!15503 List!62810) Unit!155466)

(assert (=> b!5513944 (= lt!2245856 (lemmaFindConcatSeparationEquivalentToExists!1690 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326))))

(declare-fun b!5513945 () Bool)

(declare-fun tp!1517002 () Bool)

(declare-fun tp!1516999 () Bool)

(assert (=> b!5513945 (= e!3409781 (and tp!1517002 tp!1516999))))

(declare-fun b!5513946 () Bool)

(declare-fun res!2349473 () Bool)

(assert (=> b!5513946 (=> res!2349473 e!3409776)))

(declare-fun isEmpty!34466 (List!62809) Bool)

(assert (=> b!5513946 (= res!2349473 (not (isEmpty!34466 (t!376056 zl!343))))))

(declare-fun b!5513947 () Bool)

(declare-fun tp!1517006 () Bool)

(assert (=> b!5513947 (= e!3409774 (and tp_is_empty!40259 tp!1517006))))

(declare-fun b!5513948 () Bool)

(assert (=> b!5513948 (= e!3409782 e!3409777)))

(declare-fun res!2349475 () Bool)

(assert (=> b!5513948 (=> res!2349475 e!3409777)))

(declare-fun lt!2245857 () (InoxSet Context!9774))

(assert (=> b!5513948 (= res!2349475 (not (= lt!2245857 lt!2245844)))))

(assert (=> b!5513948 (= lt!2245844 (derivationStepZipperDown!845 r!7292 lt!2245849 (h!69134 s!2326)))))

(assert (=> b!5513948 (= lt!2245849 (Context!9775 Nil!62684))))

(assert (=> b!5513948 (= lt!2245857 (derivationStepZipperUp!771 (Context!9775 (Cons!62684 r!7292 Nil!62684)) (h!69134 s!2326)))))

(assert (=> b!5513948 (= lt!2245838 (derivationStepZipper!1608 z!1189 (h!69134 s!2326)))))

(declare-fun b!5513949 () Bool)

(assert (=> b!5513949 (= e!3409773 e!3409778)))

(declare-fun res!2349482 () Bool)

(assert (=> b!5513949 (=> res!2349482 e!3409778)))

(assert (=> b!5513949 (= res!2349482 (not (= lt!2245838 lt!2245855)))))

(assert (=> b!5513949 (= lt!2245855 ((_ map or) lt!2245841 lt!2245835))))

(declare-fun b!5513950 () Bool)

(declare-fun res!2349465 () Bool)

(assert (=> b!5513950 (=> res!2349465 e!3409771)))

(assert (=> b!5513950 (= res!2349465 (or (not (= lt!2245834 ((_ map or) lt!2245841 lt!2245853))) (not (= lt!2245834 lt!2245855)) (not (= lt!2245834 lt!2245838))))))

(declare-fun b!5513951 () Bool)

(assert (=> b!5513951 (= e!3409775 (not e!3409776))))

(declare-fun res!2349474 () Bool)

(assert (=> b!5513951 (=> res!2349474 e!3409776)))

(assert (=> b!5513951 (= res!2349474 (not ((_ is Cons!62685) zl!343)))))

(declare-fun matchRSpec!2606 (Regex!15503 List!62810) Bool)

(assert (=> b!5513951 (= lt!2245848 (matchRSpec!2606 r!7292 s!2326))))

(declare-fun matchR!7688 (Regex!15503 List!62810) Bool)

(assert (=> b!5513951 (= lt!2245848 (matchR!7688 r!7292 s!2326))))

(declare-fun lt!2245846 () Unit!155466)

(declare-fun mainMatchTheorem!2606 (Regex!15503 List!62810) Unit!155466)

(assert (=> b!5513951 (= lt!2245846 (mainMatchTheorem!2606 r!7292 s!2326))))

(declare-fun b!5513952 () Bool)

(declare-fun res!2349478 () Bool)

(assert (=> b!5513952 (=> res!2349478 e!3409776)))

(assert (=> b!5513952 (= res!2349478 (not ((_ is Cons!62684) (exprs!5387 (h!69133 zl!343)))))))

(assert (= (and start!575790 res!2349468) b!5513940))

(assert (= (and b!5513940 res!2349470) b!5513932))

(assert (= (and b!5513932 res!2349467) b!5513951))

(assert (= (and b!5513951 (not res!2349474)) b!5513946))

(assert (= (and b!5513946 (not res!2349473)) b!5513938))

(assert (= (and b!5513938 (not res!2349471)) b!5513952))

(assert (= (and b!5513952 (not res!2349478)) b!5513930))

(assert (= (and b!5513930 (not res!2349466)) b!5513937))

(assert (= (and b!5513937 (not res!2349481)) b!5513944))

(assert (= (and b!5513944 (not res!2349477)) b!5513935))

(assert (= (and b!5513935 (not res!2349472)) b!5513948))

(assert (= (and b!5513948 (not res!2349475)) b!5513931))

(assert (= (and b!5513931 (not res!2349479)) b!5513934))

(assert (= (and b!5513934 (not res!2349476)) b!5513949))

(assert (= (and b!5513949 (not res!2349482)) b!5513939))

(assert (= (and b!5513939 (not res!2349469)) b!5513929))

(assert (= (and b!5513939 (not res!2349480)) b!5513950))

(assert (= (and b!5513950 (not res!2349465)) b!5513933))

(assert (= (and start!575790 ((_ is ElementMatch!15503) r!7292)) b!5513936))

(assert (= (and start!575790 ((_ is Concat!24348) r!7292)) b!5513945))

(assert (= (and start!575790 ((_ is Star!15503) r!7292)) b!5513943))

(assert (= (and start!575790 ((_ is Union!15503) r!7292)) b!5513941))

(assert (= (and start!575790 condSetEmpty!36639) setIsEmpty!36639))

(assert (= (and start!575790 (not condSetEmpty!36639)) setNonEmpty!36639))

(assert (= setNonEmpty!36639 b!5513942))

(assert (= b!5513927 b!5513928))

(assert (= (and start!575790 ((_ is Cons!62685) zl!343)) b!5513927))

(assert (= (and start!575790 ((_ is Cons!62686) s!2326)) b!5513947))

(declare-fun m!6518256 () Bool)

(assert (=> b!5513939 m!6518256))

(declare-fun m!6518258 () Bool)

(assert (=> b!5513939 m!6518258))

(declare-fun m!6518260 () Bool)

(assert (=> b!5513939 m!6518260))

(declare-fun m!6518262 () Bool)

(assert (=> b!5513939 m!6518262))

(declare-fun m!6518264 () Bool)

(assert (=> b!5513940 m!6518264))

(declare-fun m!6518266 () Bool)

(assert (=> b!5513933 m!6518266))

(declare-fun m!6518268 () Bool)

(assert (=> b!5513933 m!6518268))

(assert (=> b!5513933 m!6518268))

(declare-fun m!6518270 () Bool)

(assert (=> b!5513933 m!6518270))

(declare-fun m!6518272 () Bool)

(assert (=> b!5513929 m!6518272))

(declare-fun m!6518274 () Bool)

(assert (=> setNonEmpty!36639 m!6518274))

(declare-fun m!6518276 () Bool)

(assert (=> b!5513932 m!6518276))

(declare-fun m!6518278 () Bool)

(assert (=> b!5513930 m!6518278))

(assert (=> b!5513930 m!6518278))

(declare-fun m!6518280 () Bool)

(assert (=> b!5513930 m!6518280))

(declare-fun m!6518282 () Bool)

(assert (=> b!5513927 m!6518282))

(declare-fun m!6518284 () Bool)

(assert (=> b!5513938 m!6518284))

(declare-fun m!6518286 () Bool)

(assert (=> b!5513946 m!6518286))

(declare-fun m!6518288 () Bool)

(assert (=> start!575790 m!6518288))

(declare-fun m!6518290 () Bool)

(assert (=> b!5513951 m!6518290))

(declare-fun m!6518292 () Bool)

(assert (=> b!5513951 m!6518292))

(declare-fun m!6518294 () Bool)

(assert (=> b!5513951 m!6518294))

(declare-fun m!6518296 () Bool)

(assert (=> b!5513931 m!6518296))

(declare-fun m!6518298 () Bool)

(assert (=> b!5513931 m!6518298))

(declare-fun m!6518300 () Bool)

(assert (=> b!5513931 m!6518300))

(declare-fun m!6518302 () Bool)

(assert (=> b!5513944 m!6518302))

(declare-fun m!6518304 () Bool)

(assert (=> b!5513944 m!6518304))

(declare-fun m!6518306 () Bool)

(assert (=> b!5513944 m!6518306))

(declare-fun m!6518308 () Bool)

(assert (=> b!5513944 m!6518308))

(assert (=> b!5513944 m!6518308))

(declare-fun m!6518310 () Bool)

(assert (=> b!5513944 m!6518310))

(assert (=> b!5513944 m!6518304))

(declare-fun m!6518312 () Bool)

(assert (=> b!5513944 m!6518312))

(declare-fun m!6518314 () Bool)

(assert (=> b!5513934 m!6518314))

(declare-fun m!6518316 () Bool)

(assert (=> b!5513934 m!6518316))

(declare-fun m!6518318 () Bool)

(assert (=> b!5513934 m!6518318))

(declare-fun m!6518320 () Bool)

(assert (=> b!5513934 m!6518320))

(declare-fun m!6518322 () Bool)

(assert (=> b!5513934 m!6518322))

(declare-fun m!6518324 () Bool)

(assert (=> b!5513934 m!6518324))

(declare-fun m!6518326 () Bool)

(assert (=> b!5513934 m!6518326))

(declare-fun m!6518328 () Bool)

(assert (=> b!5513934 m!6518328))

(declare-fun m!6518330 () Bool)

(assert (=> b!5513934 m!6518330))

(declare-fun m!6518332 () Bool)

(assert (=> b!5513934 m!6518332))

(declare-fun m!6518334 () Bool)

(assert (=> b!5513934 m!6518334))

(declare-fun m!6518336 () Bool)

(assert (=> b!5513948 m!6518336))

(declare-fun m!6518338 () Bool)

(assert (=> b!5513948 m!6518338))

(declare-fun m!6518340 () Bool)

(assert (=> b!5513948 m!6518340))

(declare-fun m!6518342 () Bool)

(assert (=> b!5513935 m!6518342))

(check-sat (not b!5513927) (not b!5513935) (not b!5513928) (not setNonEmpty!36639) (not b!5513942) (not b!5513947) (not b!5513940) (not b!5513946) (not b!5513929) (not b!5513932) (not b!5513939) (not start!575790) (not b!5513934) (not b!5513931) (not b!5513933) (not b!5513938) (not b!5513930) (not b!5513944) (not b!5513945) (not b!5513943) (not b!5513941) tp_is_empty!40259 (not b!5513951) (not b!5513948))
(check-sat)
(get-model)

(declare-fun d!1746931 () Bool)

(assert (=> d!1746931 (= (isEmpty!34465 (t!376055 (exprs!5387 (h!69133 zl!343)))) ((_ is Nil!62684) (t!376055 (exprs!5387 (h!69133 zl!343)))))))

(assert (=> b!5513935 d!1746931))

(declare-fun b!5514262 () Bool)

(declare-fun e!3409956 () Bool)

(assert (=> b!5514262 (= e!3409956 (matchR!7688 (regTwo!31518 r!7292) s!2326))))

(declare-fun b!5514263 () Bool)

(declare-fun e!3409960 () Bool)

(declare-fun lt!2245900 () Option!15512)

(declare-fun ++!13753 (List!62810 List!62810) List!62810)

(declare-fun get!21572 (Option!15512) tuple2!65200)

(assert (=> b!5514263 (= e!3409960 (= (++!13753 (_1!35903 (get!21572 lt!2245900)) (_2!35903 (get!21572 lt!2245900))) s!2326))))

(declare-fun b!5514264 () Bool)

(declare-fun lt!2245902 () Unit!155466)

(declare-fun lt!2245901 () Unit!155466)

(assert (=> b!5514264 (= lt!2245902 lt!2245901)))

(assert (=> b!5514264 (= (++!13753 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (t!376057 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1922 (List!62810 C!31276 List!62810 List!62810) Unit!155466)

(assert (=> b!5514264 (= lt!2245901 (lemmaMoveElementToOtherListKeepsConcatEq!1922 Nil!62686 (h!69134 s!2326) (t!376057 s!2326) s!2326))))

(declare-fun e!3409959 () Option!15512)

(assert (=> b!5514264 (= e!3409959 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (t!376057 s!2326) s!2326))))

(declare-fun b!5514265 () Bool)

(declare-fun e!3409957 () Option!15512)

(assert (=> b!5514265 (= e!3409957 (Some!15511 (tuple2!65201 Nil!62686 s!2326)))))

(declare-fun b!5514266 () Bool)

(declare-fun e!3409958 () Bool)

(assert (=> b!5514266 (= e!3409958 (not (isDefined!12215 lt!2245900)))))

(declare-fun d!1746933 () Bool)

(assert (=> d!1746933 e!3409958))

(declare-fun res!2349597 () Bool)

(assert (=> d!1746933 (=> res!2349597 e!3409958)))

(assert (=> d!1746933 (= res!2349597 e!3409960)))

(declare-fun res!2349600 () Bool)

(assert (=> d!1746933 (=> (not res!2349600) (not e!3409960))))

(assert (=> d!1746933 (= res!2349600 (isDefined!12215 lt!2245900))))

(assert (=> d!1746933 (= lt!2245900 e!3409957)))

(declare-fun c!963846 () Bool)

(assert (=> d!1746933 (= c!963846 e!3409956)))

(declare-fun res!2349596 () Bool)

(assert (=> d!1746933 (=> (not res!2349596) (not e!3409956))))

(assert (=> d!1746933 (= res!2349596 (matchR!7688 (regOne!31518 r!7292) Nil!62686))))

(assert (=> d!1746933 (validRegex!7239 (regOne!31518 r!7292))))

(assert (=> d!1746933 (= (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326) lt!2245900)))

(declare-fun b!5514267 () Bool)

(declare-fun res!2349598 () Bool)

(assert (=> b!5514267 (=> (not res!2349598) (not e!3409960))))

(assert (=> b!5514267 (= res!2349598 (matchR!7688 (regOne!31518 r!7292) (_1!35903 (get!21572 lt!2245900))))))

(declare-fun b!5514268 () Bool)

(assert (=> b!5514268 (= e!3409957 e!3409959)))

(declare-fun c!963847 () Bool)

(assert (=> b!5514268 (= c!963847 ((_ is Nil!62686) s!2326))))

(declare-fun b!5514269 () Bool)

(declare-fun res!2349599 () Bool)

(assert (=> b!5514269 (=> (not res!2349599) (not e!3409960))))

(assert (=> b!5514269 (= res!2349599 (matchR!7688 (regTwo!31518 r!7292) (_2!35903 (get!21572 lt!2245900))))))

(declare-fun b!5514270 () Bool)

(assert (=> b!5514270 (= e!3409959 None!15511)))

(assert (= (and d!1746933 res!2349596) b!5514262))

(assert (= (and d!1746933 c!963846) b!5514265))

(assert (= (and d!1746933 (not c!963846)) b!5514268))

(assert (= (and b!5514268 c!963847) b!5514270))

(assert (= (and b!5514268 (not c!963847)) b!5514264))

(assert (= (and d!1746933 res!2349600) b!5514267))

(assert (= (and b!5514267 res!2349598) b!5514269))

(assert (= (and b!5514269 res!2349599) b!5514263))

(assert (= (and d!1746933 (not res!2349597)) b!5514266))

(declare-fun m!6518548 () Bool)

(assert (=> b!5514266 m!6518548))

(declare-fun m!6518550 () Bool)

(assert (=> b!5514269 m!6518550))

(declare-fun m!6518552 () Bool)

(assert (=> b!5514269 m!6518552))

(assert (=> b!5514267 m!6518550))

(declare-fun m!6518554 () Bool)

(assert (=> b!5514267 m!6518554))

(declare-fun m!6518556 () Bool)

(assert (=> b!5514264 m!6518556))

(assert (=> b!5514264 m!6518556))

(declare-fun m!6518558 () Bool)

(assert (=> b!5514264 m!6518558))

(declare-fun m!6518560 () Bool)

(assert (=> b!5514264 m!6518560))

(assert (=> b!5514264 m!6518556))

(declare-fun m!6518562 () Bool)

(assert (=> b!5514264 m!6518562))

(assert (=> b!5514263 m!6518550))

(declare-fun m!6518564 () Bool)

(assert (=> b!5514263 m!6518564))

(declare-fun m!6518566 () Bool)

(assert (=> b!5514262 m!6518566))

(assert (=> d!1746933 m!6518548))

(declare-fun m!6518568 () Bool)

(assert (=> d!1746933 m!6518568))

(declare-fun m!6518570 () Bool)

(assert (=> d!1746933 m!6518570))

(assert (=> b!5513944 d!1746933))

(declare-fun d!1746971 () Bool)

(declare-fun choose!41912 (Int) Bool)

(assert (=> d!1746971 (= (Exists!2603 lambda!295488) (choose!41912 lambda!295488))))

(declare-fun bs!1270912 () Bool)

(assert (= bs!1270912 d!1746971))

(declare-fun m!6518572 () Bool)

(assert (=> bs!1270912 m!6518572))

(assert (=> b!5513944 d!1746971))

(declare-fun d!1746973 () Bool)

(assert (=> d!1746973 (= (Exists!2603 lambda!295487) (choose!41912 lambda!295487))))

(declare-fun bs!1270913 () Bool)

(assert (= bs!1270913 d!1746973))

(declare-fun m!6518574 () Bool)

(assert (=> bs!1270913 m!6518574))

(assert (=> b!5513944 d!1746973))

(declare-fun bs!1270923 () Bool)

(declare-fun d!1746975 () Bool)

(assert (= bs!1270923 (and d!1746975 b!5513944)))

(declare-fun lambda!295524 () Int)

(assert (=> bs!1270923 (= lambda!295524 lambda!295487)))

(assert (=> bs!1270923 (not (= lambda!295524 lambda!295488))))

(assert (=> d!1746975 true))

(assert (=> d!1746975 true))

(assert (=> d!1746975 true))

(assert (=> d!1746975 (= (isDefined!12215 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326)) (Exists!2603 lambda!295524))))

(declare-fun lt!2245913 () Unit!155466)

(declare-fun choose!41913 (Regex!15503 Regex!15503 List!62810) Unit!155466)

(assert (=> d!1746975 (= lt!2245913 (choose!41913 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326))))

(assert (=> d!1746975 (validRegex!7239 (regOne!31518 r!7292))))

(assert (=> d!1746975 (= (lemmaFindConcatSeparationEquivalentToExists!1690 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326) lt!2245913)))

(declare-fun bs!1270924 () Bool)

(assert (= bs!1270924 d!1746975))

(assert (=> bs!1270924 m!6518304))

(declare-fun m!6518618 () Bool)

(assert (=> bs!1270924 m!6518618))

(declare-fun m!6518620 () Bool)

(assert (=> bs!1270924 m!6518620))

(assert (=> bs!1270924 m!6518304))

(assert (=> bs!1270924 m!6518306))

(assert (=> bs!1270924 m!6518570))

(assert (=> b!5513944 d!1746975))

(declare-fun bs!1270925 () Bool)

(declare-fun d!1746991 () Bool)

(assert (= bs!1270925 (and d!1746991 b!5513944)))

(declare-fun lambda!295529 () Int)

(assert (=> bs!1270925 (= lambda!295529 lambda!295487)))

(assert (=> bs!1270925 (not (= lambda!295529 lambda!295488))))

(declare-fun bs!1270926 () Bool)

(assert (= bs!1270926 (and d!1746991 d!1746975)))

(assert (=> bs!1270926 (= lambda!295529 lambda!295524)))

(assert (=> d!1746991 true))

(assert (=> d!1746991 true))

(assert (=> d!1746991 true))

(declare-fun lambda!295530 () Int)

(assert (=> bs!1270925 (not (= lambda!295530 lambda!295487))))

(assert (=> bs!1270925 (= lambda!295530 lambda!295488)))

(assert (=> bs!1270926 (not (= lambda!295530 lambda!295524))))

(declare-fun bs!1270927 () Bool)

(assert (= bs!1270927 d!1746991))

(assert (=> bs!1270927 (not (= lambda!295530 lambda!295529))))

(assert (=> d!1746991 true))

(assert (=> d!1746991 true))

(assert (=> d!1746991 true))

(assert (=> d!1746991 (= (Exists!2603 lambda!295529) (Exists!2603 lambda!295530))))

(declare-fun lt!2245916 () Unit!155466)

(declare-fun choose!41915 (Regex!15503 Regex!15503 List!62810) Unit!155466)

(assert (=> d!1746991 (= lt!2245916 (choose!41915 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326))))

(assert (=> d!1746991 (validRegex!7239 (regOne!31518 r!7292))))

(assert (=> d!1746991 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1232 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326) lt!2245916)))

(declare-fun m!6518622 () Bool)

(assert (=> bs!1270927 m!6518622))

(declare-fun m!6518624 () Bool)

(assert (=> bs!1270927 m!6518624))

(declare-fun m!6518626 () Bool)

(assert (=> bs!1270927 m!6518626))

(assert (=> bs!1270927 m!6518570))

(assert (=> b!5513944 d!1746991))

(declare-fun d!1746993 () Bool)

(declare-fun isEmpty!34469 (Option!15512) Bool)

(assert (=> d!1746993 (= (isDefined!12215 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326)) (not (isEmpty!34469 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326))))))

(declare-fun bs!1270928 () Bool)

(assert (= bs!1270928 d!1746993))

(assert (=> bs!1270928 m!6518304))

(declare-fun m!6518628 () Bool)

(assert (=> bs!1270928 m!6518628))

(assert (=> b!5513944 d!1746993))

(declare-fun d!1746995 () Bool)

(declare-fun lt!2245919 () Regex!15503)

(assert (=> d!1746995 (validRegex!7239 lt!2245919)))

(assert (=> d!1746995 (= lt!2245919 (generalisedUnion!1366 (unfocusZipperList!931 zl!343)))))

(assert (=> d!1746995 (= (unfocusZipper!1245 zl!343) lt!2245919)))

(declare-fun bs!1270929 () Bool)

(assert (= bs!1270929 d!1746995))

(declare-fun m!6518630 () Bool)

(assert (=> bs!1270929 m!6518630))

(assert (=> bs!1270929 m!6518278))

(assert (=> bs!1270929 m!6518278))

(assert (=> bs!1270929 m!6518280))

(assert (=> b!5513932 d!1746995))

(declare-fun d!1746997 () Bool)

(declare-fun c!963865 () Bool)

(declare-fun isEmpty!34470 (List!62810) Bool)

(assert (=> d!1746997 (= c!963865 (isEmpty!34470 s!2326))))

(declare-fun e!3410018 () Bool)

(assert (=> d!1746997 (= (matchZipper!1661 lt!2245837 s!2326) e!3410018)))

(declare-fun b!5514382 () Bool)

(declare-fun nullableZipper!1531 ((InoxSet Context!9774)) Bool)

(assert (=> b!5514382 (= e!3410018 (nullableZipper!1531 lt!2245837))))

(declare-fun b!5514383 () Bool)

(declare-fun head!11813 (List!62810) C!31276)

(declare-fun tail!10908 (List!62810) List!62810)

(assert (=> b!5514383 (= e!3410018 (matchZipper!1661 (derivationStepZipper!1608 lt!2245837 (head!11813 s!2326)) (tail!10908 s!2326)))))

(assert (= (and d!1746997 c!963865) b!5514382))

(assert (= (and d!1746997 (not c!963865)) b!5514383))

(declare-fun m!6518632 () Bool)

(assert (=> d!1746997 m!6518632))

(declare-fun m!6518634 () Bool)

(assert (=> b!5514382 m!6518634))

(declare-fun m!6518636 () Bool)

(assert (=> b!5514383 m!6518636))

(assert (=> b!5514383 m!6518636))

(declare-fun m!6518638 () Bool)

(assert (=> b!5514383 m!6518638))

(declare-fun m!6518640 () Bool)

(assert (=> b!5514383 m!6518640))

(assert (=> b!5514383 m!6518638))

(assert (=> b!5514383 m!6518640))

(declare-fun m!6518642 () Bool)

(assert (=> b!5514383 m!6518642))

(assert (=> b!5513933 d!1746997))

(declare-fun d!1746999 () Bool)

(declare-fun c!963866 () Bool)

(assert (=> d!1746999 (= c!963866 (isEmpty!34470 (t!376057 s!2326)))))

(declare-fun e!3410019 () Bool)

(assert (=> d!1746999 (= (matchZipper!1661 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (t!376057 s!2326)) e!3410019)))

(declare-fun b!5514384 () Bool)

(assert (=> b!5514384 (= e!3410019 (nullableZipper!1531 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326))))))

(declare-fun b!5514385 () Bool)

(assert (=> b!5514385 (= e!3410019 (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))))))

(assert (= (and d!1746999 c!963866) b!5514384))

(assert (= (and d!1746999 (not c!963866)) b!5514385))

(declare-fun m!6518644 () Bool)

(assert (=> d!1746999 m!6518644))

(assert (=> b!5514384 m!6518268))

(declare-fun m!6518646 () Bool)

(assert (=> b!5514384 m!6518646))

(declare-fun m!6518648 () Bool)

(assert (=> b!5514385 m!6518648))

(assert (=> b!5514385 m!6518268))

(assert (=> b!5514385 m!6518648))

(declare-fun m!6518650 () Bool)

(assert (=> b!5514385 m!6518650))

(declare-fun m!6518652 () Bool)

(assert (=> b!5514385 m!6518652))

(assert (=> b!5514385 m!6518650))

(assert (=> b!5514385 m!6518652))

(declare-fun m!6518654 () Bool)

(assert (=> b!5514385 m!6518654))

(assert (=> b!5513933 d!1746999))

(declare-fun bs!1270930 () Bool)

(declare-fun d!1747001 () Bool)

(assert (= bs!1270930 (and d!1747001 b!5513931)))

(declare-fun lambda!295533 () Int)

(assert (=> bs!1270930 (= lambda!295533 lambda!295489)))

(assert (=> d!1747001 true))

(assert (=> d!1747001 (= (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (flatMap!1116 lt!2245837 lambda!295533))))

(declare-fun bs!1270931 () Bool)

(assert (= bs!1270931 d!1747001))

(declare-fun m!6518656 () Bool)

(assert (=> bs!1270931 m!6518656))

(assert (=> b!5513933 d!1747001))

(declare-fun b!5514398 () Bool)

(declare-fun e!3410026 () (InoxSet Context!9774))

(assert (=> b!5514398 (= e!3410026 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!407913 () Bool)

(declare-fun call!407918 () (InoxSet Context!9774))

(assert (=> bm!407913 (= call!407918 (derivationStepZipperDown!845 (h!69132 (exprs!5387 lt!2245851)) (Context!9775 (t!376055 (exprs!5387 lt!2245851))) (h!69134 s!2326)))))

(declare-fun d!1747003 () Bool)

(declare-fun c!963873 () Bool)

(declare-fun e!3410027 () Bool)

(assert (=> d!1747003 (= c!963873 e!3410027)))

(declare-fun res!2349626 () Bool)

(assert (=> d!1747003 (=> (not res!2349626) (not e!3410027))))

(assert (=> d!1747003 (= res!2349626 ((_ is Cons!62684) (exprs!5387 lt!2245851)))))

(declare-fun e!3410028 () (InoxSet Context!9774))

(assert (=> d!1747003 (= (derivationStepZipperUp!771 lt!2245851 (h!69134 s!2326)) e!3410028)))

(declare-fun b!5514399 () Bool)

(assert (=> b!5514399 (= e!3410028 e!3410026)))

(declare-fun c!963874 () Bool)

(assert (=> b!5514399 (= c!963874 ((_ is Cons!62684) (exprs!5387 lt!2245851)))))

(declare-fun b!5514400 () Bool)

(assert (=> b!5514400 (= e!3410026 call!407918)))

(declare-fun b!5514401 () Bool)

(assert (=> b!5514401 (= e!3410027 (nullable!5537 (h!69132 (exprs!5387 lt!2245851))))))

(declare-fun b!5514402 () Bool)

(assert (=> b!5514402 (= e!3410028 ((_ map or) call!407918 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 lt!2245851))) (h!69134 s!2326))))))

(assert (= (and d!1747003 res!2349626) b!5514401))

(assert (= (and d!1747003 c!963873) b!5514402))

(assert (= (and d!1747003 (not c!963873)) b!5514399))

(assert (= (and b!5514399 c!963874) b!5514400))

(assert (= (and b!5514399 (not c!963874)) b!5514398))

(assert (= (or b!5514402 b!5514400) bm!407913))

(declare-fun m!6518658 () Bool)

(assert (=> bm!407913 m!6518658))

(declare-fun m!6518660 () Bool)

(assert (=> b!5514401 m!6518660))

(declare-fun m!6518662 () Bool)

(assert (=> b!5514402 m!6518662))

(assert (=> b!5513934 d!1747003))

(declare-fun d!1747005 () Bool)

(declare-fun choose!41916 ((InoxSet Context!9774) Int) (InoxSet Context!9774))

(assert (=> d!1747005 (= (flatMap!1116 lt!2245836 lambda!295489) (choose!41916 lt!2245836 lambda!295489))))

(declare-fun bs!1270932 () Bool)

(assert (= bs!1270932 d!1747005))

(declare-fun m!6518664 () Bool)

(assert (=> bs!1270932 m!6518664))

(assert (=> b!5513934 d!1747005))

(declare-fun b!5514425 () Bool)

(declare-fun e!3410046 () (InoxSet Context!9774))

(declare-fun call!407932 () (InoxSet Context!9774))

(assert (=> b!5514425 (= e!3410046 call!407932)))

(declare-fun b!5514426 () Bool)

(declare-fun c!963885 () Bool)

(assert (=> b!5514426 (= c!963885 ((_ is Star!15503) (regTwo!31518 r!7292)))))

(declare-fun e!3410041 () (InoxSet Context!9774))

(assert (=> b!5514426 (= e!3410041 e!3410046)))

(declare-fun b!5514427 () Bool)

(declare-fun e!3410043 () (InoxSet Context!9774))

(declare-fun call!407931 () (InoxSet Context!9774))

(declare-fun call!407933 () (InoxSet Context!9774))

(assert (=> b!5514427 (= e!3410043 ((_ map or) call!407931 call!407933))))

(declare-fun c!963889 () Bool)

(declare-fun call!407935 () List!62808)

(declare-fun bm!407926 () Bool)

(assert (=> bm!407926 (= call!407931 (derivationStepZipperDown!845 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292))) (ite c!963889 lt!2245849 (Context!9775 call!407935)) (h!69134 s!2326)))))

(declare-fun c!963887 () Bool)

(declare-fun call!407934 () (InoxSet Context!9774))

(declare-fun c!963888 () Bool)

(declare-fun call!407936 () List!62808)

(declare-fun bm!407927 () Bool)

(assert (=> bm!407927 (= call!407934 (derivationStepZipperDown!845 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292))))) (ite (or c!963889 c!963888) lt!2245849 (Context!9775 call!407936)) (h!69134 s!2326)))))

(declare-fun bm!407928 () Bool)

(declare-fun $colon$colon!1584 (List!62808 Regex!15503) List!62808)

(assert (=> bm!407928 (= call!407935 ($colon$colon!1584 (exprs!5387 lt!2245849) (ite (or c!963888 c!963887) (regTwo!31518 (regTwo!31518 r!7292)) (regTwo!31518 r!7292))))))

(declare-fun b!5514428 () Bool)

(declare-fun e!3410042 () (InoxSet Context!9774))

(declare-fun e!3410045 () (InoxSet Context!9774))

(assert (=> b!5514428 (= e!3410042 e!3410045)))

(assert (=> b!5514428 (= c!963889 ((_ is Union!15503) (regTwo!31518 r!7292)))))

(declare-fun b!5514429 () Bool)

(assert (=> b!5514429 (= e!3410045 ((_ map or) call!407931 call!407934))))

(declare-fun bm!407929 () Bool)

(assert (=> bm!407929 (= call!407936 call!407935)))

(declare-fun bm!407930 () Bool)

(assert (=> bm!407930 (= call!407933 call!407934)))

(declare-fun b!5514430 () Bool)

(declare-fun e!3410044 () Bool)

(assert (=> b!5514430 (= e!3410044 (nullable!5537 (regOne!31518 (regTwo!31518 r!7292))))))

(declare-fun bm!407931 () Bool)

(assert (=> bm!407931 (= call!407932 call!407933)))

(declare-fun b!5514431 () Bool)

(assert (=> b!5514431 (= e!3410046 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5514432 () Bool)

(assert (=> b!5514432 (= e!3410043 e!3410041)))

(assert (=> b!5514432 (= c!963887 ((_ is Concat!24348) (regTwo!31518 r!7292)))))

(declare-fun b!5514433 () Bool)

(assert (=> b!5514433 (= e!3410041 call!407932)))

(declare-fun b!5514434 () Bool)

(assert (=> b!5514434 (= e!3410042 (store ((as const (Array Context!9774 Bool)) false) lt!2245849 true))))

(declare-fun b!5514435 () Bool)

(assert (=> b!5514435 (= c!963888 e!3410044)))

(declare-fun res!2349629 () Bool)

(assert (=> b!5514435 (=> (not res!2349629) (not e!3410044))))

(assert (=> b!5514435 (= res!2349629 ((_ is Concat!24348) (regTwo!31518 r!7292)))))

(assert (=> b!5514435 (= e!3410045 e!3410043)))

(declare-fun d!1747007 () Bool)

(declare-fun c!963886 () Bool)

(assert (=> d!1747007 (= c!963886 (and ((_ is ElementMatch!15503) (regTwo!31518 r!7292)) (= (c!963749 (regTwo!31518 r!7292)) (h!69134 s!2326))))))

(assert (=> d!1747007 (= (derivationStepZipperDown!845 (regTwo!31518 r!7292) lt!2245849 (h!69134 s!2326)) e!3410042)))

(assert (= (and d!1747007 c!963886) b!5514434))

(assert (= (and d!1747007 (not c!963886)) b!5514428))

(assert (= (and b!5514428 c!963889) b!5514429))

(assert (= (and b!5514428 (not c!963889)) b!5514435))

(assert (= (and b!5514435 res!2349629) b!5514430))

(assert (= (and b!5514435 c!963888) b!5514427))

(assert (= (and b!5514435 (not c!963888)) b!5514432))

(assert (= (and b!5514432 c!963887) b!5514433))

(assert (= (and b!5514432 (not c!963887)) b!5514426))

(assert (= (and b!5514426 c!963885) b!5514425))

(assert (= (and b!5514426 (not c!963885)) b!5514431))

(assert (= (or b!5514433 b!5514425) bm!407929))

(assert (= (or b!5514433 b!5514425) bm!407931))

(assert (= (or b!5514427 bm!407929) bm!407928))

(assert (= (or b!5514427 bm!407931) bm!407930))

(assert (= (or b!5514429 bm!407930) bm!407927))

(assert (= (or b!5514429 b!5514427) bm!407926))

(declare-fun m!6518666 () Bool)

(assert (=> bm!407928 m!6518666))

(declare-fun m!6518668 () Bool)

(assert (=> b!5514430 m!6518668))

(declare-fun m!6518670 () Bool)

(assert (=> bm!407926 m!6518670))

(declare-fun m!6518672 () Bool)

(assert (=> bm!407927 m!6518672))

(declare-fun m!6518674 () Bool)

(assert (=> b!5514434 m!6518674))

(assert (=> b!5513934 d!1747007))

(declare-fun b!5514436 () Bool)

(declare-fun e!3410047 () (InoxSet Context!9774))

(assert (=> b!5514436 (= e!3410047 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!407932 () Bool)

(declare-fun call!407937 () (InoxSet Context!9774))

(assert (=> bm!407932 (= call!407937 (derivationStepZipperDown!845 (h!69132 (exprs!5387 lt!2245842)) (Context!9775 (t!376055 (exprs!5387 lt!2245842))) (h!69134 s!2326)))))

(declare-fun d!1747009 () Bool)

(declare-fun c!963890 () Bool)

(declare-fun e!3410048 () Bool)

(assert (=> d!1747009 (= c!963890 e!3410048)))

(declare-fun res!2349630 () Bool)

(assert (=> d!1747009 (=> (not res!2349630) (not e!3410048))))

(assert (=> d!1747009 (= res!2349630 ((_ is Cons!62684) (exprs!5387 lt!2245842)))))

(declare-fun e!3410049 () (InoxSet Context!9774))

(assert (=> d!1747009 (= (derivationStepZipperUp!771 lt!2245842 (h!69134 s!2326)) e!3410049)))

(declare-fun b!5514437 () Bool)

(assert (=> b!5514437 (= e!3410049 e!3410047)))

(declare-fun c!963891 () Bool)

(assert (=> b!5514437 (= c!963891 ((_ is Cons!62684) (exprs!5387 lt!2245842)))))

(declare-fun b!5514438 () Bool)

(assert (=> b!5514438 (= e!3410047 call!407937)))

(declare-fun b!5514439 () Bool)

(assert (=> b!5514439 (= e!3410048 (nullable!5537 (h!69132 (exprs!5387 lt!2245842))))))

(declare-fun b!5514440 () Bool)

(assert (=> b!5514440 (= e!3410049 ((_ map or) call!407937 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 lt!2245842))) (h!69134 s!2326))))))

(assert (= (and d!1747009 res!2349630) b!5514439))

(assert (= (and d!1747009 c!963890) b!5514440))

(assert (= (and d!1747009 (not c!963890)) b!5514437))

(assert (= (and b!5514437 c!963891) b!5514438))

(assert (= (and b!5514437 (not c!963891)) b!5514436))

(assert (= (or b!5514440 b!5514438) bm!407932))

(declare-fun m!6518676 () Bool)

(assert (=> bm!407932 m!6518676))

(declare-fun m!6518678 () Bool)

(assert (=> b!5514439 m!6518678))

(declare-fun m!6518680 () Bool)

(assert (=> b!5514440 m!6518680))

(assert (=> b!5513934 d!1747009))

(declare-fun d!1747011 () Bool)

(declare-fun dynLambda!24490 (Int Context!9774) (InoxSet Context!9774))

(assert (=> d!1747011 (= (flatMap!1116 lt!2245837 lambda!295489) (dynLambda!24490 lambda!295489 lt!2245842))))

(declare-fun lt!2245922 () Unit!155466)

(declare-fun choose!41918 ((InoxSet Context!9774) Context!9774 Int) Unit!155466)

(assert (=> d!1747011 (= lt!2245922 (choose!41918 lt!2245837 lt!2245842 lambda!295489))))

(assert (=> d!1747011 (= lt!2245837 (store ((as const (Array Context!9774 Bool)) false) lt!2245842 true))))

(assert (=> d!1747011 (= (lemmaFlatMapOnSingletonSet!648 lt!2245837 lt!2245842 lambda!295489) lt!2245922)))

(declare-fun b_lambda!209063 () Bool)

(assert (=> (not b_lambda!209063) (not d!1747011)))

(declare-fun bs!1270933 () Bool)

(assert (= bs!1270933 d!1747011))

(assert (=> bs!1270933 m!6518328))

(declare-fun m!6518682 () Bool)

(assert (=> bs!1270933 m!6518682))

(declare-fun m!6518684 () Bool)

(assert (=> bs!1270933 m!6518684))

(assert (=> bs!1270933 m!6518324))

(assert (=> b!5513934 d!1747011))

(declare-fun b!5514441 () Bool)

(declare-fun e!3410055 () (InoxSet Context!9774))

(declare-fun call!407939 () (InoxSet Context!9774))

(assert (=> b!5514441 (= e!3410055 call!407939)))

(declare-fun b!5514442 () Bool)

(declare-fun c!963892 () Bool)

(assert (=> b!5514442 (= c!963892 ((_ is Star!15503) (regOne!31518 r!7292)))))

(declare-fun e!3410050 () (InoxSet Context!9774))

(assert (=> b!5514442 (= e!3410050 e!3410055)))

(declare-fun b!5514443 () Bool)

(declare-fun e!3410052 () (InoxSet Context!9774))

(declare-fun call!407938 () (InoxSet Context!9774))

(declare-fun call!407940 () (InoxSet Context!9774))

(assert (=> b!5514443 (= e!3410052 ((_ map or) call!407938 call!407940))))

(declare-fun c!963896 () Bool)

(declare-fun bm!407933 () Bool)

(declare-fun call!407942 () List!62808)

(assert (=> bm!407933 (= call!407938 (derivationStepZipperDown!845 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292))) (ite c!963896 lt!2245851 (Context!9775 call!407942)) (h!69134 s!2326)))))

(declare-fun c!963895 () Bool)

(declare-fun bm!407934 () Bool)

(declare-fun c!963894 () Bool)

(declare-fun call!407943 () List!62808)

(declare-fun call!407941 () (InoxSet Context!9774))

(assert (=> bm!407934 (= call!407941 (derivationStepZipperDown!845 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292))))) (ite (or c!963896 c!963895) lt!2245851 (Context!9775 call!407943)) (h!69134 s!2326)))))

(declare-fun bm!407935 () Bool)

(assert (=> bm!407935 (= call!407942 ($colon$colon!1584 (exprs!5387 lt!2245851) (ite (or c!963895 c!963894) (regTwo!31518 (regOne!31518 r!7292)) (regOne!31518 r!7292))))))

(declare-fun b!5514444 () Bool)

(declare-fun e!3410051 () (InoxSet Context!9774))

(declare-fun e!3410054 () (InoxSet Context!9774))

(assert (=> b!5514444 (= e!3410051 e!3410054)))

(assert (=> b!5514444 (= c!963896 ((_ is Union!15503) (regOne!31518 r!7292)))))

(declare-fun b!5514445 () Bool)

(assert (=> b!5514445 (= e!3410054 ((_ map or) call!407938 call!407941))))

(declare-fun bm!407936 () Bool)

(assert (=> bm!407936 (= call!407943 call!407942)))

(declare-fun bm!407937 () Bool)

(assert (=> bm!407937 (= call!407940 call!407941)))

(declare-fun b!5514446 () Bool)

(declare-fun e!3410053 () Bool)

(assert (=> b!5514446 (= e!3410053 (nullable!5537 (regOne!31518 (regOne!31518 r!7292))))))

(declare-fun bm!407938 () Bool)

(assert (=> bm!407938 (= call!407939 call!407940)))

(declare-fun b!5514447 () Bool)

(assert (=> b!5514447 (= e!3410055 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5514448 () Bool)

(assert (=> b!5514448 (= e!3410052 e!3410050)))

(assert (=> b!5514448 (= c!963894 ((_ is Concat!24348) (regOne!31518 r!7292)))))

(declare-fun b!5514449 () Bool)

(assert (=> b!5514449 (= e!3410050 call!407939)))

(declare-fun b!5514450 () Bool)

(assert (=> b!5514450 (= e!3410051 (store ((as const (Array Context!9774 Bool)) false) lt!2245851 true))))

(declare-fun b!5514451 () Bool)

(assert (=> b!5514451 (= c!963895 e!3410053)))

(declare-fun res!2349631 () Bool)

(assert (=> b!5514451 (=> (not res!2349631) (not e!3410053))))

(assert (=> b!5514451 (= res!2349631 ((_ is Concat!24348) (regOne!31518 r!7292)))))

(assert (=> b!5514451 (= e!3410054 e!3410052)))

(declare-fun d!1747013 () Bool)

(declare-fun c!963893 () Bool)

(assert (=> d!1747013 (= c!963893 (and ((_ is ElementMatch!15503) (regOne!31518 r!7292)) (= (c!963749 (regOne!31518 r!7292)) (h!69134 s!2326))))))

(assert (=> d!1747013 (= (derivationStepZipperDown!845 (regOne!31518 r!7292) lt!2245851 (h!69134 s!2326)) e!3410051)))

(assert (= (and d!1747013 c!963893) b!5514450))

(assert (= (and d!1747013 (not c!963893)) b!5514444))

(assert (= (and b!5514444 c!963896) b!5514445))

(assert (= (and b!5514444 (not c!963896)) b!5514451))

(assert (= (and b!5514451 res!2349631) b!5514446))

(assert (= (and b!5514451 c!963895) b!5514443))

(assert (= (and b!5514451 (not c!963895)) b!5514448))

(assert (= (and b!5514448 c!963894) b!5514449))

(assert (= (and b!5514448 (not c!963894)) b!5514442))

(assert (= (and b!5514442 c!963892) b!5514441))

(assert (= (and b!5514442 (not c!963892)) b!5514447))

(assert (= (or b!5514449 b!5514441) bm!407936))

(assert (= (or b!5514449 b!5514441) bm!407938))

(assert (= (or b!5514443 bm!407936) bm!407935))

(assert (= (or b!5514443 bm!407938) bm!407937))

(assert (= (or b!5514445 bm!407937) bm!407934))

(assert (= (or b!5514445 b!5514443) bm!407933))

(declare-fun m!6518686 () Bool)

(assert (=> bm!407935 m!6518686))

(declare-fun m!6518688 () Bool)

(assert (=> b!5514446 m!6518688))

(declare-fun m!6518690 () Bool)

(assert (=> bm!407933 m!6518690))

(declare-fun m!6518692 () Bool)

(assert (=> bm!407934 m!6518692))

(assert (=> b!5514450 m!6518318))

(assert (=> b!5513934 d!1747013))

(declare-fun d!1747015 () Bool)

(assert (=> d!1747015 (= (flatMap!1116 lt!2245837 lambda!295489) (choose!41916 lt!2245837 lambda!295489))))

(declare-fun bs!1270934 () Bool)

(assert (= bs!1270934 d!1747015))

(declare-fun m!6518694 () Bool)

(assert (=> bs!1270934 m!6518694))

(assert (=> b!5513934 d!1747015))

(declare-fun d!1747017 () Bool)

(declare-fun nullableFct!1663 (Regex!15503) Bool)

(assert (=> d!1747017 (= (nullable!5537 (regOne!31518 r!7292)) (nullableFct!1663 (regOne!31518 r!7292)))))

(declare-fun bs!1270935 () Bool)

(assert (= bs!1270935 d!1747017))

(declare-fun m!6518696 () Bool)

(assert (=> bs!1270935 m!6518696))

(assert (=> b!5513934 d!1747017))

(declare-fun d!1747019 () Bool)

(assert (=> d!1747019 (= (flatMap!1116 lt!2245836 lambda!295489) (dynLambda!24490 lambda!295489 lt!2245851))))

(declare-fun lt!2245923 () Unit!155466)

(assert (=> d!1747019 (= lt!2245923 (choose!41918 lt!2245836 lt!2245851 lambda!295489))))

(assert (=> d!1747019 (= lt!2245836 (store ((as const (Array Context!9774 Bool)) false) lt!2245851 true))))

(assert (=> d!1747019 (= (lemmaFlatMapOnSingletonSet!648 lt!2245836 lt!2245851 lambda!295489) lt!2245923)))

(declare-fun b_lambda!209065 () Bool)

(assert (=> (not b_lambda!209065) (not d!1747019)))

(declare-fun bs!1270936 () Bool)

(assert (= bs!1270936 d!1747019))

(assert (=> bs!1270936 m!6518326))

(declare-fun m!6518698 () Bool)

(assert (=> bs!1270936 m!6518698))

(declare-fun m!6518700 () Bool)

(assert (=> bs!1270936 m!6518700))

(assert (=> bs!1270936 m!6518318))

(assert (=> b!5513934 d!1747019))

(declare-fun b!5514472 () Bool)

(declare-fun e!3410073 () Regex!15503)

(assert (=> b!5514472 (= e!3410073 EmptyLang!15503)))

(declare-fun b!5514473 () Bool)

(declare-fun e!3410072 () Regex!15503)

(assert (=> b!5514473 (= e!3410072 (h!69132 (unfocusZipperList!931 zl!343)))))

(declare-fun b!5514474 () Bool)

(declare-fun e!3410068 () Bool)

(declare-fun e!3410070 () Bool)

(assert (=> b!5514474 (= e!3410068 e!3410070)))

(declare-fun c!963907 () Bool)

(declare-fun tail!10909 (List!62808) List!62808)

(assert (=> b!5514474 (= c!963907 (isEmpty!34465 (tail!10909 (unfocusZipperList!931 zl!343))))))

(declare-fun b!5514475 () Bool)

(declare-fun lt!2245926 () Regex!15503)

(declare-fun isEmptyLang!1088 (Regex!15503) Bool)

(assert (=> b!5514475 (= e!3410068 (isEmptyLang!1088 lt!2245926))))

(declare-fun b!5514476 () Bool)

(declare-fun isUnion!518 (Regex!15503) Bool)

(assert (=> b!5514476 (= e!3410070 (isUnion!518 lt!2245926))))

(declare-fun b!5514477 () Bool)

(assert (=> b!5514477 (= e!3410073 (Union!15503 (h!69132 (unfocusZipperList!931 zl!343)) (generalisedUnion!1366 (t!376055 (unfocusZipperList!931 zl!343)))))))

(declare-fun b!5514478 () Bool)

(declare-fun head!11814 (List!62808) Regex!15503)

(assert (=> b!5514478 (= e!3410070 (= lt!2245926 (head!11814 (unfocusZipperList!931 zl!343))))))

(declare-fun b!5514479 () Bool)

(assert (=> b!5514479 (= e!3410072 e!3410073)))

(declare-fun c!963906 () Bool)

(assert (=> b!5514479 (= c!963906 ((_ is Cons!62684) (unfocusZipperList!931 zl!343)))))

(declare-fun d!1747021 () Bool)

(declare-fun e!3410071 () Bool)

(assert (=> d!1747021 e!3410071))

(declare-fun res!2349637 () Bool)

(assert (=> d!1747021 (=> (not res!2349637) (not e!3410071))))

(assert (=> d!1747021 (= res!2349637 (validRegex!7239 lt!2245926))))

(assert (=> d!1747021 (= lt!2245926 e!3410072)))

(declare-fun c!963905 () Bool)

(declare-fun e!3410069 () Bool)

(assert (=> d!1747021 (= c!963905 e!3410069)))

(declare-fun res!2349636 () Bool)

(assert (=> d!1747021 (=> (not res!2349636) (not e!3410069))))

(assert (=> d!1747021 (= res!2349636 ((_ is Cons!62684) (unfocusZipperList!931 zl!343)))))

(declare-fun lambda!295536 () Int)

(declare-fun forall!14679 (List!62808 Int) Bool)

(assert (=> d!1747021 (forall!14679 (unfocusZipperList!931 zl!343) lambda!295536)))

(assert (=> d!1747021 (= (generalisedUnion!1366 (unfocusZipperList!931 zl!343)) lt!2245926)))

(declare-fun b!5514480 () Bool)

(assert (=> b!5514480 (= e!3410071 e!3410068)))

(declare-fun c!963908 () Bool)

(assert (=> b!5514480 (= c!963908 (isEmpty!34465 (unfocusZipperList!931 zl!343)))))

(declare-fun b!5514481 () Bool)

(assert (=> b!5514481 (= e!3410069 (isEmpty!34465 (t!376055 (unfocusZipperList!931 zl!343))))))

(assert (= (and d!1747021 res!2349636) b!5514481))

(assert (= (and d!1747021 c!963905) b!5514473))

(assert (= (and d!1747021 (not c!963905)) b!5514479))

(assert (= (and b!5514479 c!963906) b!5514477))

(assert (= (and b!5514479 (not c!963906)) b!5514472))

(assert (= (and d!1747021 res!2349637) b!5514480))

(assert (= (and b!5514480 c!963908) b!5514475))

(assert (= (and b!5514480 (not c!963908)) b!5514474))

(assert (= (and b!5514474 c!963907) b!5514478))

(assert (= (and b!5514474 (not c!963907)) b!5514476))

(declare-fun m!6518702 () Bool)

(assert (=> b!5514475 m!6518702))

(assert (=> b!5514480 m!6518278))

(declare-fun m!6518704 () Bool)

(assert (=> b!5514480 m!6518704))

(assert (=> b!5514474 m!6518278))

(declare-fun m!6518706 () Bool)

(assert (=> b!5514474 m!6518706))

(assert (=> b!5514474 m!6518706))

(declare-fun m!6518708 () Bool)

(assert (=> b!5514474 m!6518708))

(declare-fun m!6518710 () Bool)

(assert (=> d!1747021 m!6518710))

(assert (=> d!1747021 m!6518278))

(declare-fun m!6518712 () Bool)

(assert (=> d!1747021 m!6518712))

(declare-fun m!6518714 () Bool)

(assert (=> b!5514477 m!6518714))

(declare-fun m!6518716 () Bool)

(assert (=> b!5514476 m!6518716))

(declare-fun m!6518718 () Bool)

(assert (=> b!5514481 m!6518718))

(assert (=> b!5514478 m!6518278))

(declare-fun m!6518720 () Bool)

(assert (=> b!5514478 m!6518720))

(assert (=> b!5513930 d!1747021))

(declare-fun bs!1270937 () Bool)

(declare-fun d!1747023 () Bool)

(assert (= bs!1270937 (and d!1747023 d!1747021)))

(declare-fun lambda!295539 () Int)

(assert (=> bs!1270937 (= lambda!295539 lambda!295536)))

(declare-fun lt!2245929 () List!62808)

(assert (=> d!1747023 (forall!14679 lt!2245929 lambda!295539)))

(declare-fun e!3410076 () List!62808)

(assert (=> d!1747023 (= lt!2245929 e!3410076)))

(declare-fun c!963911 () Bool)

(assert (=> d!1747023 (= c!963911 ((_ is Cons!62685) zl!343))))

(assert (=> d!1747023 (= (unfocusZipperList!931 zl!343) lt!2245929)))

(declare-fun b!5514486 () Bool)

(assert (=> b!5514486 (= e!3410076 (Cons!62684 (generalisedConcat!1118 (exprs!5387 (h!69133 zl!343))) (unfocusZipperList!931 (t!376056 zl!343))))))

(declare-fun b!5514487 () Bool)

(assert (=> b!5514487 (= e!3410076 Nil!62684)))

(assert (= (and d!1747023 c!963911) b!5514486))

(assert (= (and d!1747023 (not c!963911)) b!5514487))

(declare-fun m!6518722 () Bool)

(assert (=> d!1747023 m!6518722))

(assert (=> b!5514486 m!6518284))

(declare-fun m!6518724 () Bool)

(assert (=> b!5514486 m!6518724))

(assert (=> b!5513930 d!1747023))

(declare-fun bs!1270938 () Bool)

(declare-fun d!1747025 () Bool)

(assert (= bs!1270938 (and d!1747025 d!1747021)))

(declare-fun lambda!295542 () Int)

(assert (=> bs!1270938 (= lambda!295542 lambda!295536)))

(declare-fun bs!1270939 () Bool)

(assert (= bs!1270939 (and d!1747025 d!1747023)))

(assert (=> bs!1270939 (= lambda!295542 lambda!295539)))

(assert (=> d!1747025 (= (inv!82004 setElem!36639) (forall!14679 (exprs!5387 setElem!36639) lambda!295542))))

(declare-fun bs!1270940 () Bool)

(assert (= bs!1270940 d!1747025))

(declare-fun m!6518726 () Bool)

(assert (=> bs!1270940 m!6518726))

(assert (=> setNonEmpty!36639 d!1747025))

(declare-fun d!1747027 () Bool)

(assert (=> d!1747027 (= (flatMap!1116 z!1189 lambda!295489) (choose!41916 z!1189 lambda!295489))))

(declare-fun bs!1270941 () Bool)

(assert (= bs!1270941 d!1747027))

(declare-fun m!6518728 () Bool)

(assert (=> bs!1270941 m!6518728))

(assert (=> b!5513931 d!1747027))

(declare-fun b!5514488 () Bool)

(declare-fun e!3410077 () (InoxSet Context!9774))

(assert (=> b!5514488 (= e!3410077 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!407939 () Bool)

(declare-fun call!407944 () (InoxSet Context!9774))

(assert (=> bm!407939 (= call!407944 (derivationStepZipperDown!845 (h!69132 (exprs!5387 (h!69133 zl!343))) (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))) (h!69134 s!2326)))))

(declare-fun d!1747029 () Bool)

(declare-fun c!963912 () Bool)

(declare-fun e!3410078 () Bool)

(assert (=> d!1747029 (= c!963912 e!3410078)))

(declare-fun res!2349638 () Bool)

(assert (=> d!1747029 (=> (not res!2349638) (not e!3410078))))

(assert (=> d!1747029 (= res!2349638 ((_ is Cons!62684) (exprs!5387 (h!69133 zl!343))))))

(declare-fun e!3410079 () (InoxSet Context!9774))

(assert (=> d!1747029 (= (derivationStepZipperUp!771 (h!69133 zl!343) (h!69134 s!2326)) e!3410079)))

(declare-fun b!5514489 () Bool)

(assert (=> b!5514489 (= e!3410079 e!3410077)))

(declare-fun c!963913 () Bool)

(assert (=> b!5514489 (= c!963913 ((_ is Cons!62684) (exprs!5387 (h!69133 zl!343))))))

(declare-fun b!5514490 () Bool)

(assert (=> b!5514490 (= e!3410077 call!407944)))

(declare-fun b!5514491 () Bool)

(assert (=> b!5514491 (= e!3410078 (nullable!5537 (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5514492 () Bool)

(assert (=> b!5514492 (= e!3410079 ((_ map or) call!407944 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))) (h!69134 s!2326))))))

(assert (= (and d!1747029 res!2349638) b!5514491))

(assert (= (and d!1747029 c!963912) b!5514492))

(assert (= (and d!1747029 (not c!963912)) b!5514489))

(assert (= (and b!5514489 c!963913) b!5514490))

(assert (= (and b!5514489 (not c!963913)) b!5514488))

(assert (= (or b!5514492 b!5514490) bm!407939))

(declare-fun m!6518730 () Bool)

(assert (=> bm!407939 m!6518730))

(declare-fun m!6518732 () Bool)

(assert (=> b!5514491 m!6518732))

(declare-fun m!6518734 () Bool)

(assert (=> b!5514492 m!6518734))

(assert (=> b!5513931 d!1747029))

(declare-fun d!1747031 () Bool)

(assert (=> d!1747031 (= (flatMap!1116 z!1189 lambda!295489) (dynLambda!24490 lambda!295489 (h!69133 zl!343)))))

(declare-fun lt!2245930 () Unit!155466)

(assert (=> d!1747031 (= lt!2245930 (choose!41918 z!1189 (h!69133 zl!343) lambda!295489))))

(assert (=> d!1747031 (= z!1189 (store ((as const (Array Context!9774 Bool)) false) (h!69133 zl!343) true))))

(assert (=> d!1747031 (= (lemmaFlatMapOnSingletonSet!648 z!1189 (h!69133 zl!343) lambda!295489) lt!2245930)))

(declare-fun b_lambda!209067 () Bool)

(assert (=> (not b_lambda!209067) (not d!1747031)))

(declare-fun bs!1270942 () Bool)

(assert (= bs!1270942 d!1747031))

(assert (=> bs!1270942 m!6518296))

(declare-fun m!6518736 () Bool)

(assert (=> bs!1270942 m!6518736))

(declare-fun m!6518738 () Bool)

(assert (=> bs!1270942 m!6518738))

(declare-fun m!6518740 () Bool)

(assert (=> bs!1270942 m!6518740))

(assert (=> b!5513931 d!1747031))

(declare-fun d!1747033 () Bool)

(declare-fun e!3410082 () Bool)

(assert (=> d!1747033 e!3410082))

(declare-fun res!2349641 () Bool)

(assert (=> d!1747033 (=> (not res!2349641) (not e!3410082))))

(declare-fun lt!2245933 () List!62809)

(declare-fun noDuplicate!1498 (List!62809) Bool)

(assert (=> d!1747033 (= res!2349641 (noDuplicate!1498 lt!2245933))))

(declare-fun choose!41919 ((InoxSet Context!9774)) List!62809)

(assert (=> d!1747033 (= lt!2245933 (choose!41919 z!1189))))

(assert (=> d!1747033 (= (toList!9287 z!1189) lt!2245933)))

(declare-fun b!5514495 () Bool)

(declare-fun content!11265 (List!62809) (InoxSet Context!9774))

(assert (=> b!5514495 (= e!3410082 (= (content!11265 lt!2245933) z!1189))))

(assert (= (and d!1747033 res!2349641) b!5514495))

(declare-fun m!6518742 () Bool)

(assert (=> d!1747033 m!6518742))

(declare-fun m!6518744 () Bool)

(assert (=> d!1747033 m!6518744))

(declare-fun m!6518746 () Bool)

(assert (=> b!5514495 m!6518746))

(assert (=> b!5513940 d!1747033))

(declare-fun bs!1270943 () Bool)

(declare-fun b!5514534 () Bool)

(assert (= bs!1270943 (and b!5514534 d!1746991)))

(declare-fun lambda!295547 () Int)

(assert (=> bs!1270943 (not (= lambda!295547 lambda!295529))))

(declare-fun bs!1270944 () Bool)

(assert (= bs!1270944 (and b!5514534 b!5513944)))

(assert (=> bs!1270944 (not (= lambda!295547 lambda!295487))))

(assert (=> bs!1270944 (not (= lambda!295547 lambda!295488))))

(declare-fun bs!1270945 () Bool)

(assert (= bs!1270945 (and b!5514534 d!1746975)))

(assert (=> bs!1270945 (not (= lambda!295547 lambda!295524))))

(assert (=> bs!1270943 (not (= lambda!295547 lambda!295530))))

(assert (=> b!5514534 true))

(assert (=> b!5514534 true))

(declare-fun bs!1270946 () Bool)

(declare-fun b!5514531 () Bool)

(assert (= bs!1270946 (and b!5514531 d!1746991)))

(declare-fun lambda!295548 () Int)

(assert (=> bs!1270946 (not (= lambda!295548 lambda!295529))))

(declare-fun bs!1270947 () Bool)

(assert (= bs!1270947 (and b!5514531 b!5514534)))

(assert (=> bs!1270947 (not (= lambda!295548 lambda!295547))))

(declare-fun bs!1270948 () Bool)

(assert (= bs!1270948 (and b!5514531 b!5513944)))

(assert (=> bs!1270948 (not (= lambda!295548 lambda!295487))))

(assert (=> bs!1270948 (= lambda!295548 lambda!295488)))

(declare-fun bs!1270949 () Bool)

(assert (= bs!1270949 (and b!5514531 d!1746975)))

(assert (=> bs!1270949 (not (= lambda!295548 lambda!295524))))

(assert (=> bs!1270946 (= lambda!295548 lambda!295530)))

(assert (=> b!5514531 true))

(assert (=> b!5514531 true))

(declare-fun d!1747035 () Bool)

(declare-fun c!963925 () Bool)

(assert (=> d!1747035 (= c!963925 ((_ is EmptyExpr!15503) r!7292))))

(declare-fun e!3410105 () Bool)

(assert (=> d!1747035 (= (matchRSpec!2606 r!7292 s!2326) e!3410105)))

(declare-fun b!5514528 () Bool)

(declare-fun e!3410107 () Bool)

(declare-fun e!3410104 () Bool)

(assert (=> b!5514528 (= e!3410107 e!3410104)))

(declare-fun c!963924 () Bool)

(assert (=> b!5514528 (= c!963924 ((_ is Star!15503) r!7292))))

(declare-fun b!5514529 () Bool)

(declare-fun e!3410106 () Bool)

(assert (=> b!5514529 (= e!3410105 e!3410106)))

(declare-fun res!2349659 () Bool)

(assert (=> b!5514529 (= res!2349659 (not ((_ is EmptyLang!15503) r!7292)))))

(assert (=> b!5514529 (=> (not res!2349659) (not e!3410106))))

(declare-fun b!5514530 () Bool)

(declare-fun res!2349660 () Bool)

(declare-fun e!3410101 () Bool)

(assert (=> b!5514530 (=> res!2349660 e!3410101)))

(declare-fun call!407950 () Bool)

(assert (=> b!5514530 (= res!2349660 call!407950)))

(assert (=> b!5514530 (= e!3410104 e!3410101)))

(declare-fun call!407949 () Bool)

(assert (=> b!5514531 (= e!3410104 call!407949)))

(declare-fun b!5514532 () Bool)

(declare-fun c!963922 () Bool)

(assert (=> b!5514532 (= c!963922 ((_ is ElementMatch!15503) r!7292))))

(declare-fun e!3410103 () Bool)

(assert (=> b!5514532 (= e!3410106 e!3410103)))

(declare-fun b!5514533 () Bool)

(assert (=> b!5514533 (= e!3410103 (= s!2326 (Cons!62686 (c!963749 r!7292) Nil!62686)))))

(assert (=> b!5514534 (= e!3410101 call!407949)))

(declare-fun bm!407944 () Bool)

(assert (=> bm!407944 (= call!407949 (Exists!2603 (ite c!963924 lambda!295547 lambda!295548)))))

(declare-fun b!5514535 () Bool)

(declare-fun e!3410102 () Bool)

(assert (=> b!5514535 (= e!3410102 (matchRSpec!2606 (regTwo!31519 r!7292) s!2326))))

(declare-fun bm!407945 () Bool)

(assert (=> bm!407945 (= call!407950 (isEmpty!34470 s!2326))))

(declare-fun b!5514536 () Bool)

(assert (=> b!5514536 (= e!3410105 call!407950)))

(declare-fun b!5514537 () Bool)

(declare-fun c!963923 () Bool)

(assert (=> b!5514537 (= c!963923 ((_ is Union!15503) r!7292))))

(assert (=> b!5514537 (= e!3410103 e!3410107)))

(declare-fun b!5514538 () Bool)

(assert (=> b!5514538 (= e!3410107 e!3410102)))

(declare-fun res!2349658 () Bool)

(assert (=> b!5514538 (= res!2349658 (matchRSpec!2606 (regOne!31519 r!7292) s!2326))))

(assert (=> b!5514538 (=> res!2349658 e!3410102)))

(assert (= (and d!1747035 c!963925) b!5514536))

(assert (= (and d!1747035 (not c!963925)) b!5514529))

(assert (= (and b!5514529 res!2349659) b!5514532))

(assert (= (and b!5514532 c!963922) b!5514533))

(assert (= (and b!5514532 (not c!963922)) b!5514537))

(assert (= (and b!5514537 c!963923) b!5514538))

(assert (= (and b!5514537 (not c!963923)) b!5514528))

(assert (= (and b!5514538 (not res!2349658)) b!5514535))

(assert (= (and b!5514528 c!963924) b!5514530))

(assert (= (and b!5514528 (not c!963924)) b!5514531))

(assert (= (and b!5514530 (not res!2349660)) b!5514534))

(assert (= (or b!5514534 b!5514531) bm!407944))

(assert (= (or b!5514536 b!5514530) bm!407945))

(declare-fun m!6518748 () Bool)

(assert (=> bm!407944 m!6518748))

(declare-fun m!6518750 () Bool)

(assert (=> b!5514535 m!6518750))

(assert (=> bm!407945 m!6518632))

(declare-fun m!6518752 () Bool)

(assert (=> b!5514538 m!6518752))

(assert (=> b!5513951 d!1747035))

(declare-fun b!5514567 () Bool)

(declare-fun e!3410122 () Bool)

(assert (=> b!5514567 (= e!3410122 (not (= (head!11813 s!2326) (c!963749 r!7292))))))

(declare-fun b!5514568 () Bool)

(declare-fun res!2349677 () Bool)

(declare-fun e!3410127 () Bool)

(assert (=> b!5514568 (=> (not res!2349677) (not e!3410127))))

(declare-fun call!407953 () Bool)

(assert (=> b!5514568 (= res!2349677 (not call!407953))))

(declare-fun b!5514570 () Bool)

(declare-fun e!3410123 () Bool)

(assert (=> b!5514570 (= e!3410123 e!3410122)))

(declare-fun res!2349681 () Bool)

(assert (=> b!5514570 (=> res!2349681 e!3410122)))

(assert (=> b!5514570 (= res!2349681 call!407953)))

(declare-fun b!5514571 () Bool)

(declare-fun e!3410124 () Bool)

(declare-fun lt!2245936 () Bool)

(assert (=> b!5514571 (= e!3410124 (not lt!2245936))))

(declare-fun b!5514572 () Bool)

(declare-fun res!2349679 () Bool)

(declare-fun e!3410125 () Bool)

(assert (=> b!5514572 (=> res!2349679 e!3410125)))

(assert (=> b!5514572 (= res!2349679 (not ((_ is ElementMatch!15503) r!7292)))))

(assert (=> b!5514572 (= e!3410124 e!3410125)))

(declare-fun b!5514573 () Bool)

(declare-fun res!2349680 () Bool)

(assert (=> b!5514573 (=> res!2349680 e!3410125)))

(assert (=> b!5514573 (= res!2349680 e!3410127)))

(declare-fun res!2349682 () Bool)

(assert (=> b!5514573 (=> (not res!2349682) (not e!3410127))))

(assert (=> b!5514573 (= res!2349682 lt!2245936)))

(declare-fun b!5514574 () Bool)

(declare-fun res!2349683 () Bool)

(assert (=> b!5514574 (=> (not res!2349683) (not e!3410127))))

(assert (=> b!5514574 (= res!2349683 (isEmpty!34470 (tail!10908 s!2326)))))

(declare-fun b!5514575 () Bool)

(assert (=> b!5514575 (= e!3410127 (= (head!11813 s!2326) (c!963749 r!7292)))))

(declare-fun bm!407948 () Bool)

(assert (=> bm!407948 (= call!407953 (isEmpty!34470 s!2326))))

(declare-fun b!5514576 () Bool)

(declare-fun e!3410128 () Bool)

(declare-fun derivativeStep!4370 (Regex!15503 C!31276) Regex!15503)

(assert (=> b!5514576 (= e!3410128 (matchR!7688 (derivativeStep!4370 r!7292 (head!11813 s!2326)) (tail!10908 s!2326)))))

(declare-fun b!5514569 () Bool)

(declare-fun res!2349684 () Bool)

(assert (=> b!5514569 (=> res!2349684 e!3410122)))

(assert (=> b!5514569 (= res!2349684 (not (isEmpty!34470 (tail!10908 s!2326))))))

(declare-fun d!1747037 () Bool)

(declare-fun e!3410126 () Bool)

(assert (=> d!1747037 e!3410126))

(declare-fun c!963932 () Bool)

(assert (=> d!1747037 (= c!963932 ((_ is EmptyExpr!15503) r!7292))))

(assert (=> d!1747037 (= lt!2245936 e!3410128)))

(declare-fun c!963934 () Bool)

(assert (=> d!1747037 (= c!963934 (isEmpty!34470 s!2326))))

(assert (=> d!1747037 (validRegex!7239 r!7292)))

(assert (=> d!1747037 (= (matchR!7688 r!7292 s!2326) lt!2245936)))

(declare-fun b!5514577 () Bool)

(assert (=> b!5514577 (= e!3410126 e!3410124)))

(declare-fun c!963933 () Bool)

(assert (=> b!5514577 (= c!963933 ((_ is EmptyLang!15503) r!7292))))

(declare-fun b!5514578 () Bool)

(assert (=> b!5514578 (= e!3410128 (nullable!5537 r!7292))))

(declare-fun b!5514579 () Bool)

(assert (=> b!5514579 (= e!3410126 (= lt!2245936 call!407953))))

(declare-fun b!5514580 () Bool)

(assert (=> b!5514580 (= e!3410125 e!3410123)))

(declare-fun res!2349678 () Bool)

(assert (=> b!5514580 (=> (not res!2349678) (not e!3410123))))

(assert (=> b!5514580 (= res!2349678 (not lt!2245936))))

(assert (= (and d!1747037 c!963934) b!5514578))

(assert (= (and d!1747037 (not c!963934)) b!5514576))

(assert (= (and d!1747037 c!963932) b!5514579))

(assert (= (and d!1747037 (not c!963932)) b!5514577))

(assert (= (and b!5514577 c!963933) b!5514571))

(assert (= (and b!5514577 (not c!963933)) b!5514572))

(assert (= (and b!5514572 (not res!2349679)) b!5514573))

(assert (= (and b!5514573 res!2349682) b!5514568))

(assert (= (and b!5514568 res!2349677) b!5514574))

(assert (= (and b!5514574 res!2349683) b!5514575))

(assert (= (and b!5514573 (not res!2349680)) b!5514580))

(assert (= (and b!5514580 res!2349678) b!5514570))

(assert (= (and b!5514570 (not res!2349681)) b!5514569))

(assert (= (and b!5514569 (not res!2349684)) b!5514567))

(assert (= (or b!5514579 b!5514568 b!5514570) bm!407948))

(assert (=> d!1747037 m!6518632))

(assert (=> d!1747037 m!6518288))

(assert (=> b!5514576 m!6518636))

(assert (=> b!5514576 m!6518636))

(declare-fun m!6518754 () Bool)

(assert (=> b!5514576 m!6518754))

(assert (=> b!5514576 m!6518640))

(assert (=> b!5514576 m!6518754))

(assert (=> b!5514576 m!6518640))

(declare-fun m!6518756 () Bool)

(assert (=> b!5514576 m!6518756))

(assert (=> bm!407948 m!6518632))

(assert (=> b!5514574 m!6518640))

(assert (=> b!5514574 m!6518640))

(declare-fun m!6518758 () Bool)

(assert (=> b!5514574 m!6518758))

(assert (=> b!5514569 m!6518640))

(assert (=> b!5514569 m!6518640))

(assert (=> b!5514569 m!6518758))

(assert (=> b!5514567 m!6518636))

(declare-fun m!6518760 () Bool)

(assert (=> b!5514578 m!6518760))

(assert (=> b!5514575 m!6518636))

(assert (=> b!5513951 d!1747037))

(declare-fun d!1747039 () Bool)

(assert (=> d!1747039 (= (matchR!7688 r!7292 s!2326) (matchRSpec!2606 r!7292 s!2326))))

(declare-fun lt!2245939 () Unit!155466)

(declare-fun choose!41920 (Regex!15503 List!62810) Unit!155466)

(assert (=> d!1747039 (= lt!2245939 (choose!41920 r!7292 s!2326))))

(assert (=> d!1747039 (validRegex!7239 r!7292)))

(assert (=> d!1747039 (= (mainMatchTheorem!2606 r!7292 s!2326) lt!2245939)))

(declare-fun bs!1270950 () Bool)

(assert (= bs!1270950 d!1747039))

(assert (=> bs!1270950 m!6518292))

(assert (=> bs!1270950 m!6518290))

(declare-fun m!6518762 () Bool)

(assert (=> bs!1270950 m!6518762))

(assert (=> bs!1270950 m!6518288))

(assert (=> b!5513951 d!1747039))

(declare-fun d!1747041 () Bool)

(assert (=> d!1747041 (= (isEmpty!34466 (t!376056 zl!343)) ((_ is Nil!62685) (t!376056 zl!343)))))

(assert (=> b!5513946 d!1747041))

(declare-fun bs!1270951 () Bool)

(declare-fun d!1747043 () Bool)

(assert (= bs!1270951 (and d!1747043 d!1747021)))

(declare-fun lambda!295549 () Int)

(assert (=> bs!1270951 (= lambda!295549 lambda!295536)))

(declare-fun bs!1270952 () Bool)

(assert (= bs!1270952 (and d!1747043 d!1747023)))

(assert (=> bs!1270952 (= lambda!295549 lambda!295539)))

(declare-fun bs!1270953 () Bool)

(assert (= bs!1270953 (and d!1747043 d!1747025)))

(assert (=> bs!1270953 (= lambda!295549 lambda!295542)))

(assert (=> d!1747043 (= (inv!82004 (h!69133 zl!343)) (forall!14679 (exprs!5387 (h!69133 zl!343)) lambda!295549))))

(declare-fun bs!1270954 () Bool)

(assert (= bs!1270954 d!1747043))

(declare-fun m!6518764 () Bool)

(assert (=> bs!1270954 m!6518764))

(assert (=> b!5513927 d!1747043))

(declare-fun bs!1270955 () Bool)

(declare-fun d!1747045 () Bool)

(assert (= bs!1270955 (and d!1747045 d!1747021)))

(declare-fun lambda!295552 () Int)

(assert (=> bs!1270955 (= lambda!295552 lambda!295536)))

(declare-fun bs!1270956 () Bool)

(assert (= bs!1270956 (and d!1747045 d!1747023)))

(assert (=> bs!1270956 (= lambda!295552 lambda!295539)))

(declare-fun bs!1270957 () Bool)

(assert (= bs!1270957 (and d!1747045 d!1747025)))

(assert (=> bs!1270957 (= lambda!295552 lambda!295542)))

(declare-fun bs!1270958 () Bool)

(assert (= bs!1270958 (and d!1747045 d!1747043)))

(assert (=> bs!1270958 (= lambda!295552 lambda!295549)))

(declare-fun b!5514601 () Bool)

(declare-fun e!3410143 () Bool)

(declare-fun lt!2245942 () Regex!15503)

(declare-fun isConcat!600 (Regex!15503) Bool)

(assert (=> b!5514601 (= e!3410143 (isConcat!600 lt!2245942))))

(declare-fun b!5514602 () Bool)

(declare-fun e!3410142 () Regex!15503)

(assert (=> b!5514602 (= e!3410142 EmptyExpr!15503)))

(declare-fun e!3410146 () Bool)

(assert (=> d!1747045 e!3410146))

(declare-fun res!2349689 () Bool)

(assert (=> d!1747045 (=> (not res!2349689) (not e!3410146))))

(assert (=> d!1747045 (= res!2349689 (validRegex!7239 lt!2245942))))

(declare-fun e!3410144 () Regex!15503)

(assert (=> d!1747045 (= lt!2245942 e!3410144)))

(declare-fun c!963945 () Bool)

(declare-fun e!3410141 () Bool)

(assert (=> d!1747045 (= c!963945 e!3410141)))

(declare-fun res!2349690 () Bool)

(assert (=> d!1747045 (=> (not res!2349690) (not e!3410141))))

(assert (=> d!1747045 (= res!2349690 ((_ is Cons!62684) (exprs!5387 (h!69133 zl!343))))))

(assert (=> d!1747045 (forall!14679 (exprs!5387 (h!69133 zl!343)) lambda!295552)))

(assert (=> d!1747045 (= (generalisedConcat!1118 (exprs!5387 (h!69133 zl!343))) lt!2245942)))

(declare-fun b!5514603 () Bool)

(declare-fun e!3410145 () Bool)

(declare-fun isEmptyExpr!1077 (Regex!15503) Bool)

(assert (=> b!5514603 (= e!3410145 (isEmptyExpr!1077 lt!2245942))))

(declare-fun b!5514604 () Bool)

(assert (=> b!5514604 (= e!3410146 e!3410145)))

(declare-fun c!963944 () Bool)

(assert (=> b!5514604 (= c!963944 (isEmpty!34465 (exprs!5387 (h!69133 zl!343))))))

(declare-fun b!5514605 () Bool)

(assert (=> b!5514605 (= e!3410144 e!3410142)))

(declare-fun c!963943 () Bool)

(assert (=> b!5514605 (= c!963943 ((_ is Cons!62684) (exprs!5387 (h!69133 zl!343))))))

(declare-fun b!5514606 () Bool)

(assert (=> b!5514606 (= e!3410142 (Concat!24348 (h!69132 (exprs!5387 (h!69133 zl!343))) (generalisedConcat!1118 (t!376055 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun b!5514607 () Bool)

(assert (=> b!5514607 (= e!3410143 (= lt!2245942 (head!11814 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5514608 () Bool)

(assert (=> b!5514608 (= e!3410141 (isEmpty!34465 (t!376055 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5514609 () Bool)

(assert (=> b!5514609 (= e!3410145 e!3410143)))

(declare-fun c!963946 () Bool)

(assert (=> b!5514609 (= c!963946 (isEmpty!34465 (tail!10909 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5514610 () Bool)

(assert (=> b!5514610 (= e!3410144 (h!69132 (exprs!5387 (h!69133 zl!343))))))

(assert (= (and d!1747045 res!2349690) b!5514608))

(assert (= (and d!1747045 c!963945) b!5514610))

(assert (= (and d!1747045 (not c!963945)) b!5514605))

(assert (= (and b!5514605 c!963943) b!5514606))

(assert (= (and b!5514605 (not c!963943)) b!5514602))

(assert (= (and d!1747045 res!2349689) b!5514604))

(assert (= (and b!5514604 c!963944) b!5514603))

(assert (= (and b!5514604 (not c!963944)) b!5514609))

(assert (= (and b!5514609 c!963946) b!5514607))

(assert (= (and b!5514609 (not c!963946)) b!5514601))

(declare-fun m!6518766 () Bool)

(assert (=> b!5514604 m!6518766))

(assert (=> b!5514608 m!6518342))

(declare-fun m!6518768 () Bool)

(assert (=> b!5514606 m!6518768))

(declare-fun m!6518770 () Bool)

(assert (=> b!5514601 m!6518770))

(declare-fun m!6518772 () Bool)

(assert (=> b!5514607 m!6518772))

(declare-fun m!6518774 () Bool)

(assert (=> b!5514609 m!6518774))

(assert (=> b!5514609 m!6518774))

(declare-fun m!6518776 () Bool)

(assert (=> b!5514609 m!6518776))

(declare-fun m!6518778 () Bool)

(assert (=> d!1747045 m!6518778))

(declare-fun m!6518780 () Bool)

(assert (=> d!1747045 m!6518780))

(declare-fun m!6518782 () Bool)

(assert (=> b!5514603 m!6518782))

(assert (=> b!5513938 d!1747045))

(declare-fun d!1747047 () Bool)

(declare-fun c!963947 () Bool)

(assert (=> d!1747047 (= c!963947 (isEmpty!34470 (t!376057 s!2326)))))

(declare-fun e!3410147 () Bool)

(assert (=> d!1747047 (= (matchZipper!1661 lt!2245838 (t!376057 s!2326)) e!3410147)))

(declare-fun b!5514611 () Bool)

(assert (=> b!5514611 (= e!3410147 (nullableZipper!1531 lt!2245838))))

(declare-fun b!5514612 () Bool)

(assert (=> b!5514612 (= e!3410147 (matchZipper!1661 (derivationStepZipper!1608 lt!2245838 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))))))

(assert (= (and d!1747047 c!963947) b!5514611))

(assert (= (and d!1747047 (not c!963947)) b!5514612))

(assert (=> d!1747047 m!6518644))

(declare-fun m!6518784 () Bool)

(assert (=> b!5514611 m!6518784))

(assert (=> b!5514612 m!6518648))

(assert (=> b!5514612 m!6518648))

(declare-fun m!6518786 () Bool)

(assert (=> b!5514612 m!6518786))

(assert (=> b!5514612 m!6518652))

(assert (=> b!5514612 m!6518786))

(assert (=> b!5514612 m!6518652))

(declare-fun m!6518788 () Bool)

(assert (=> b!5514612 m!6518788))

(assert (=> b!5513939 d!1747047))

(declare-fun d!1747049 () Bool)

(declare-fun c!963948 () Bool)

(assert (=> d!1747049 (= c!963948 (isEmpty!34470 (t!376057 s!2326)))))

(declare-fun e!3410148 () Bool)

(assert (=> d!1747049 (= (matchZipper!1661 lt!2245855 (t!376057 s!2326)) e!3410148)))

(declare-fun b!5514613 () Bool)

(assert (=> b!5514613 (= e!3410148 (nullableZipper!1531 lt!2245855))))

(declare-fun b!5514614 () Bool)

(assert (=> b!5514614 (= e!3410148 (matchZipper!1661 (derivationStepZipper!1608 lt!2245855 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))))))

(assert (= (and d!1747049 c!963948) b!5514613))

(assert (= (and d!1747049 (not c!963948)) b!5514614))

(assert (=> d!1747049 m!6518644))

(declare-fun m!6518790 () Bool)

(assert (=> b!5514613 m!6518790))

(assert (=> b!5514614 m!6518648))

(assert (=> b!5514614 m!6518648))

(declare-fun m!6518792 () Bool)

(assert (=> b!5514614 m!6518792))

(assert (=> b!5514614 m!6518652))

(assert (=> b!5514614 m!6518792))

(assert (=> b!5514614 m!6518652))

(declare-fun m!6518794 () Bool)

(assert (=> b!5514614 m!6518794))

(assert (=> b!5513939 d!1747049))

(declare-fun d!1747051 () Bool)

(declare-fun c!963949 () Bool)

(assert (=> d!1747051 (= c!963949 (isEmpty!34470 (t!376057 s!2326)))))

(declare-fun e!3410149 () Bool)

(assert (=> d!1747051 (= (matchZipper!1661 lt!2245841 (t!376057 s!2326)) e!3410149)))

(declare-fun b!5514615 () Bool)

(assert (=> b!5514615 (= e!3410149 (nullableZipper!1531 lt!2245841))))

(declare-fun b!5514616 () Bool)

(assert (=> b!5514616 (= e!3410149 (matchZipper!1661 (derivationStepZipper!1608 lt!2245841 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))))))

(assert (= (and d!1747051 c!963949) b!5514615))

(assert (= (and d!1747051 (not c!963949)) b!5514616))

(assert (=> d!1747051 m!6518644))

(declare-fun m!6518796 () Bool)

(assert (=> b!5514615 m!6518796))

(assert (=> b!5514616 m!6518648))

(assert (=> b!5514616 m!6518648))

(declare-fun m!6518798 () Bool)

(assert (=> b!5514616 m!6518798))

(assert (=> b!5514616 m!6518652))

(assert (=> b!5514616 m!6518798))

(assert (=> b!5514616 m!6518652))

(declare-fun m!6518800 () Bool)

(assert (=> b!5514616 m!6518800))

(assert (=> b!5513939 d!1747051))

(declare-fun d!1747053 () Bool)

(declare-fun e!3410152 () Bool)

(assert (=> d!1747053 (= (matchZipper!1661 ((_ map or) lt!2245841 lt!2245835) (t!376057 s!2326)) e!3410152)))

(declare-fun res!2349693 () Bool)

(assert (=> d!1747053 (=> res!2349693 e!3410152)))

(assert (=> d!1747053 (= res!2349693 (matchZipper!1661 lt!2245841 (t!376057 s!2326)))))

(declare-fun lt!2245945 () Unit!155466)

(declare-fun choose!41921 ((InoxSet Context!9774) (InoxSet Context!9774) List!62810) Unit!155466)

(assert (=> d!1747053 (= lt!2245945 (choose!41921 lt!2245841 lt!2245835 (t!376057 s!2326)))))

(assert (=> d!1747053 (= (lemmaZipperConcatMatchesSameAsBothZippers!550 lt!2245841 lt!2245835 (t!376057 s!2326)) lt!2245945)))

(declare-fun b!5514619 () Bool)

(assert (=> b!5514619 (= e!3410152 (matchZipper!1661 lt!2245835 (t!376057 s!2326)))))

(assert (= (and d!1747053 (not res!2349693)) b!5514619))

(declare-fun m!6518802 () Bool)

(assert (=> d!1747053 m!6518802))

(assert (=> d!1747053 m!6518260))

(declare-fun m!6518804 () Bool)

(assert (=> d!1747053 m!6518804))

(assert (=> b!5514619 m!6518272))

(assert (=> b!5513939 d!1747053))

(declare-fun b!5514620 () Bool)

(declare-fun e!3410158 () (InoxSet Context!9774))

(declare-fun call!407955 () (InoxSet Context!9774))

(assert (=> b!5514620 (= e!3410158 call!407955)))

(declare-fun b!5514621 () Bool)

(declare-fun c!963950 () Bool)

(assert (=> b!5514621 (= c!963950 ((_ is Star!15503) r!7292))))

(declare-fun e!3410153 () (InoxSet Context!9774))

(assert (=> b!5514621 (= e!3410153 e!3410158)))

(declare-fun b!5514622 () Bool)

(declare-fun e!3410155 () (InoxSet Context!9774))

(declare-fun call!407954 () (InoxSet Context!9774))

(declare-fun call!407956 () (InoxSet Context!9774))

(assert (=> b!5514622 (= e!3410155 ((_ map or) call!407954 call!407956))))

(declare-fun bm!407949 () Bool)

(declare-fun call!407958 () List!62808)

(declare-fun c!963954 () Bool)

(assert (=> bm!407949 (= call!407954 (derivationStepZipperDown!845 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292)) (ite c!963954 lt!2245849 (Context!9775 call!407958)) (h!69134 s!2326)))))

(declare-fun c!963952 () Bool)

(declare-fun c!963953 () Bool)

(declare-fun bm!407950 () Bool)

(declare-fun call!407959 () List!62808)

(declare-fun call!407957 () (InoxSet Context!9774))

(assert (=> bm!407950 (= call!407957 (derivationStepZipperDown!845 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292)))) (ite (or c!963954 c!963953) lt!2245849 (Context!9775 call!407959)) (h!69134 s!2326)))))

(declare-fun bm!407951 () Bool)

(assert (=> bm!407951 (= call!407958 ($colon$colon!1584 (exprs!5387 lt!2245849) (ite (or c!963953 c!963952) (regTwo!31518 r!7292) r!7292)))))

(declare-fun b!5514623 () Bool)

(declare-fun e!3410154 () (InoxSet Context!9774))

(declare-fun e!3410157 () (InoxSet Context!9774))

(assert (=> b!5514623 (= e!3410154 e!3410157)))

(assert (=> b!5514623 (= c!963954 ((_ is Union!15503) r!7292))))

(declare-fun b!5514624 () Bool)

(assert (=> b!5514624 (= e!3410157 ((_ map or) call!407954 call!407957))))

(declare-fun bm!407952 () Bool)

(assert (=> bm!407952 (= call!407959 call!407958)))

(declare-fun bm!407953 () Bool)

(assert (=> bm!407953 (= call!407956 call!407957)))

(declare-fun b!5514625 () Bool)

(declare-fun e!3410156 () Bool)

(assert (=> b!5514625 (= e!3410156 (nullable!5537 (regOne!31518 r!7292)))))

(declare-fun bm!407954 () Bool)

(assert (=> bm!407954 (= call!407955 call!407956)))

(declare-fun b!5514626 () Bool)

(assert (=> b!5514626 (= e!3410158 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5514627 () Bool)

(assert (=> b!5514627 (= e!3410155 e!3410153)))

(assert (=> b!5514627 (= c!963952 ((_ is Concat!24348) r!7292))))

(declare-fun b!5514628 () Bool)

(assert (=> b!5514628 (= e!3410153 call!407955)))

(declare-fun b!5514629 () Bool)

(assert (=> b!5514629 (= e!3410154 (store ((as const (Array Context!9774 Bool)) false) lt!2245849 true))))

(declare-fun b!5514630 () Bool)

(assert (=> b!5514630 (= c!963953 e!3410156)))

(declare-fun res!2349694 () Bool)

(assert (=> b!5514630 (=> (not res!2349694) (not e!3410156))))

(assert (=> b!5514630 (= res!2349694 ((_ is Concat!24348) r!7292))))

(assert (=> b!5514630 (= e!3410157 e!3410155)))

(declare-fun d!1747055 () Bool)

(declare-fun c!963951 () Bool)

(assert (=> d!1747055 (= c!963951 (and ((_ is ElementMatch!15503) r!7292) (= (c!963749 r!7292) (h!69134 s!2326))))))

(assert (=> d!1747055 (= (derivationStepZipperDown!845 r!7292 lt!2245849 (h!69134 s!2326)) e!3410154)))

(assert (= (and d!1747055 c!963951) b!5514629))

(assert (= (and d!1747055 (not c!963951)) b!5514623))

(assert (= (and b!5514623 c!963954) b!5514624))

(assert (= (and b!5514623 (not c!963954)) b!5514630))

(assert (= (and b!5514630 res!2349694) b!5514625))

(assert (= (and b!5514630 c!963953) b!5514622))

(assert (= (and b!5514630 (not c!963953)) b!5514627))

(assert (= (and b!5514627 c!963952) b!5514628))

(assert (= (and b!5514627 (not c!963952)) b!5514621))

(assert (= (and b!5514621 c!963950) b!5514620))

(assert (= (and b!5514621 (not c!963950)) b!5514626))

(assert (= (or b!5514628 b!5514620) bm!407952))

(assert (= (or b!5514628 b!5514620) bm!407954))

(assert (= (or b!5514622 bm!407952) bm!407951))

(assert (= (or b!5514622 bm!407954) bm!407953))

(assert (= (or b!5514624 bm!407953) bm!407950))

(assert (= (or b!5514624 b!5514622) bm!407949))

(declare-fun m!6518806 () Bool)

(assert (=> bm!407951 m!6518806))

(assert (=> b!5514625 m!6518334))

(declare-fun m!6518808 () Bool)

(assert (=> bm!407949 m!6518808))

(declare-fun m!6518810 () Bool)

(assert (=> bm!407950 m!6518810))

(assert (=> b!5514629 m!6518674))

(assert (=> b!5513948 d!1747055))

(declare-fun b!5514631 () Bool)

(declare-fun e!3410159 () (InoxSet Context!9774))

(assert (=> b!5514631 (= e!3410159 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!407955 () Bool)

(declare-fun call!407960 () (InoxSet Context!9774))

(assert (=> bm!407955 (= call!407960 (derivationStepZipperDown!845 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (h!69134 s!2326)))))

(declare-fun d!1747057 () Bool)

(declare-fun c!963955 () Bool)

(declare-fun e!3410160 () Bool)

(assert (=> d!1747057 (= c!963955 e!3410160)))

(declare-fun res!2349695 () Bool)

(assert (=> d!1747057 (=> (not res!2349695) (not e!3410160))))

(assert (=> d!1747057 (= res!2349695 ((_ is Cons!62684) (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))

(declare-fun e!3410161 () (InoxSet Context!9774))

(assert (=> d!1747057 (= (derivationStepZipperUp!771 (Context!9775 (Cons!62684 r!7292 Nil!62684)) (h!69134 s!2326)) e!3410161)))

(declare-fun b!5514632 () Bool)

(assert (=> b!5514632 (= e!3410161 e!3410159)))

(declare-fun c!963956 () Bool)

(assert (=> b!5514632 (= c!963956 ((_ is Cons!62684) (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))

(declare-fun b!5514633 () Bool)

(assert (=> b!5514633 (= e!3410159 call!407960)))

(declare-fun b!5514634 () Bool)

(assert (=> b!5514634 (= e!3410160 (nullable!5537 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))

(declare-fun b!5514635 () Bool)

(assert (=> b!5514635 (= e!3410161 ((_ map or) call!407960 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (h!69134 s!2326))))))

(assert (= (and d!1747057 res!2349695) b!5514634))

(assert (= (and d!1747057 c!963955) b!5514635))

(assert (= (and d!1747057 (not c!963955)) b!5514632))

(assert (= (and b!5514632 c!963956) b!5514633))

(assert (= (and b!5514632 (not c!963956)) b!5514631))

(assert (= (or b!5514635 b!5514633) bm!407955))

(declare-fun m!6518812 () Bool)

(assert (=> bm!407955 m!6518812))

(declare-fun m!6518814 () Bool)

(assert (=> b!5514634 m!6518814))

(declare-fun m!6518816 () Bool)

(assert (=> b!5514635 m!6518816))

(assert (=> b!5513948 d!1747057))

(declare-fun bs!1270959 () Bool)

(declare-fun d!1747059 () Bool)

(assert (= bs!1270959 (and d!1747059 b!5513931)))

(declare-fun lambda!295553 () Int)

(assert (=> bs!1270959 (= lambda!295553 lambda!295489)))

(declare-fun bs!1270960 () Bool)

(assert (= bs!1270960 (and d!1747059 d!1747001)))

(assert (=> bs!1270960 (= lambda!295553 lambda!295533)))

(assert (=> d!1747059 true))

(assert (=> d!1747059 (= (derivationStepZipper!1608 z!1189 (h!69134 s!2326)) (flatMap!1116 z!1189 lambda!295553))))

(declare-fun bs!1270961 () Bool)

(assert (= bs!1270961 d!1747059))

(declare-fun m!6518818 () Bool)

(assert (=> bs!1270961 m!6518818))

(assert (=> b!5513948 d!1747059))

(declare-fun d!1747061 () Bool)

(declare-fun c!963957 () Bool)

(assert (=> d!1747061 (= c!963957 (isEmpty!34470 (t!376057 s!2326)))))

(declare-fun e!3410162 () Bool)

(assert (=> d!1747061 (= (matchZipper!1661 lt!2245835 (t!376057 s!2326)) e!3410162)))

(declare-fun b!5514636 () Bool)

(assert (=> b!5514636 (= e!3410162 (nullableZipper!1531 lt!2245835))))

(declare-fun b!5514637 () Bool)

(assert (=> b!5514637 (= e!3410162 (matchZipper!1661 (derivationStepZipper!1608 lt!2245835 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))))))

(assert (= (and d!1747061 c!963957) b!5514636))

(assert (= (and d!1747061 (not c!963957)) b!5514637))

(assert (=> d!1747061 m!6518644))

(declare-fun m!6518820 () Bool)

(assert (=> b!5514636 m!6518820))

(assert (=> b!5514637 m!6518648))

(assert (=> b!5514637 m!6518648))

(declare-fun m!6518822 () Bool)

(assert (=> b!5514637 m!6518822))

(assert (=> b!5514637 m!6518652))

(assert (=> b!5514637 m!6518822))

(assert (=> b!5514637 m!6518652))

(declare-fun m!6518824 () Bool)

(assert (=> b!5514637 m!6518824))

(assert (=> b!5513929 d!1747061))

(declare-fun b!5514656 () Bool)

(declare-fun e!3410178 () Bool)

(declare-fun e!3410177 () Bool)

(assert (=> b!5514656 (= e!3410178 e!3410177)))

(declare-fun res!2349709 () Bool)

(assert (=> b!5514656 (=> (not res!2349709) (not e!3410177))))

(declare-fun call!407968 () Bool)

(assert (=> b!5514656 (= res!2349709 call!407968)))

(declare-fun d!1747063 () Bool)

(declare-fun res!2349706 () Bool)

(declare-fun e!3410181 () Bool)

(assert (=> d!1747063 (=> res!2349706 e!3410181)))

(assert (=> d!1747063 (= res!2349706 ((_ is ElementMatch!15503) r!7292))))

(assert (=> d!1747063 (= (validRegex!7239 r!7292) e!3410181)))

(declare-fun b!5514657 () Bool)

(declare-fun res!2349708 () Bool)

(declare-fun e!3410179 () Bool)

(assert (=> b!5514657 (=> (not res!2349708) (not e!3410179))))

(assert (=> b!5514657 (= res!2349708 call!407968)))

(declare-fun e!3410180 () Bool)

(assert (=> b!5514657 (= e!3410180 e!3410179)))

(declare-fun bm!407962 () Bool)

(declare-fun call!407969 () Bool)

(declare-fun call!407967 () Bool)

(assert (=> bm!407962 (= call!407969 call!407967)))

(declare-fun b!5514658 () Bool)

(declare-fun e!3410183 () Bool)

(assert (=> b!5514658 (= e!3410183 call!407967)))

(declare-fun b!5514659 () Bool)

(assert (=> b!5514659 (= e!3410177 call!407969)))

(declare-fun b!5514660 () Bool)

(assert (=> b!5514660 (= e!3410179 call!407969)))

(declare-fun b!5514661 () Bool)

(declare-fun e!3410182 () Bool)

(assert (=> b!5514661 (= e!3410182 e!3410183)))

(declare-fun res!2349707 () Bool)

(assert (=> b!5514661 (= res!2349707 (not (nullable!5537 (reg!15832 r!7292))))))

(assert (=> b!5514661 (=> (not res!2349707) (not e!3410183))))

(declare-fun b!5514662 () Bool)

(assert (=> b!5514662 (= e!3410181 e!3410182)))

(declare-fun c!963962 () Bool)

(assert (=> b!5514662 (= c!963962 ((_ is Star!15503) r!7292))))

(declare-fun c!963963 () Bool)

(declare-fun bm!407963 () Bool)

(assert (=> bm!407963 (= call!407967 (validRegex!7239 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))))))

(declare-fun b!5514663 () Bool)

(declare-fun res!2349710 () Bool)

(assert (=> b!5514663 (=> res!2349710 e!3410178)))

(assert (=> b!5514663 (= res!2349710 (not ((_ is Concat!24348) r!7292)))))

(assert (=> b!5514663 (= e!3410180 e!3410178)))

(declare-fun b!5514664 () Bool)

(assert (=> b!5514664 (= e!3410182 e!3410180)))

(assert (=> b!5514664 (= c!963963 ((_ is Union!15503) r!7292))))

(declare-fun bm!407964 () Bool)

(assert (=> bm!407964 (= call!407968 (validRegex!7239 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(assert (= (and d!1747063 (not res!2349706)) b!5514662))

(assert (= (and b!5514662 c!963962) b!5514661))

(assert (= (and b!5514662 (not c!963962)) b!5514664))

(assert (= (and b!5514661 res!2349707) b!5514658))

(assert (= (and b!5514664 c!963963) b!5514657))

(assert (= (and b!5514664 (not c!963963)) b!5514663))

(assert (= (and b!5514657 res!2349708) b!5514660))

(assert (= (and b!5514663 (not res!2349710)) b!5514656))

(assert (= (and b!5514656 res!2349709) b!5514659))

(assert (= (or b!5514660 b!5514659) bm!407962))

(assert (= (or b!5514657 b!5514656) bm!407964))

(assert (= (or b!5514658 bm!407962) bm!407963))

(declare-fun m!6518826 () Bool)

(assert (=> b!5514661 m!6518826))

(declare-fun m!6518828 () Bool)

(assert (=> bm!407963 m!6518828))

(declare-fun m!6518830 () Bool)

(assert (=> bm!407964 m!6518830))

(assert (=> start!575790 d!1747063))

(declare-fun condSetEmpty!36645 () Bool)

(assert (=> setNonEmpty!36639 (= condSetEmpty!36645 (= setRest!36639 ((as const (Array Context!9774 Bool)) false)))))

(declare-fun setRes!36645 () Bool)

(assert (=> setNonEmpty!36639 (= tp!1517004 setRes!36645)))

(declare-fun setIsEmpty!36645 () Bool)

(assert (=> setIsEmpty!36645 setRes!36645))

(declare-fun tp!1517070 () Bool)

(declare-fun setNonEmpty!36645 () Bool)

(declare-fun setElem!36645 () Context!9774)

(declare-fun e!3410186 () Bool)

(assert (=> setNonEmpty!36645 (= setRes!36645 (and tp!1517070 (inv!82004 setElem!36645) e!3410186))))

(declare-fun setRest!36645 () (InoxSet Context!9774))

(assert (=> setNonEmpty!36645 (= setRest!36639 ((_ map or) (store ((as const (Array Context!9774 Bool)) false) setElem!36645 true) setRest!36645))))

(declare-fun b!5514669 () Bool)

(declare-fun tp!1517071 () Bool)

(assert (=> b!5514669 (= e!3410186 tp!1517071)))

(assert (= (and setNonEmpty!36639 condSetEmpty!36645) setIsEmpty!36645))

(assert (= (and setNonEmpty!36639 (not condSetEmpty!36645)) setNonEmpty!36645))

(assert (= setNonEmpty!36645 b!5514669))

(declare-fun m!6518832 () Bool)

(assert (=> setNonEmpty!36645 m!6518832))

(declare-fun e!3410189 () Bool)

(assert (=> b!5513945 (= tp!1517002 e!3410189)))

(declare-fun b!5514683 () Bool)

(declare-fun tp!1517083 () Bool)

(declare-fun tp!1517085 () Bool)

(assert (=> b!5514683 (= e!3410189 (and tp!1517083 tp!1517085))))

(declare-fun b!5514680 () Bool)

(assert (=> b!5514680 (= e!3410189 tp_is_empty!40259)))

(declare-fun b!5514682 () Bool)

(declare-fun tp!1517084 () Bool)

(assert (=> b!5514682 (= e!3410189 tp!1517084)))

(declare-fun b!5514681 () Bool)

(declare-fun tp!1517082 () Bool)

(declare-fun tp!1517086 () Bool)

(assert (=> b!5514681 (= e!3410189 (and tp!1517082 tp!1517086))))

(assert (= (and b!5513945 ((_ is ElementMatch!15503) (regOne!31518 r!7292))) b!5514680))

(assert (= (and b!5513945 ((_ is Concat!24348) (regOne!31518 r!7292))) b!5514681))

(assert (= (and b!5513945 ((_ is Star!15503) (regOne!31518 r!7292))) b!5514682))

(assert (= (and b!5513945 ((_ is Union!15503) (regOne!31518 r!7292))) b!5514683))

(declare-fun e!3410190 () Bool)

(assert (=> b!5513945 (= tp!1516999 e!3410190)))

(declare-fun b!5514687 () Bool)

(declare-fun tp!1517088 () Bool)

(declare-fun tp!1517090 () Bool)

(assert (=> b!5514687 (= e!3410190 (and tp!1517088 tp!1517090))))

(declare-fun b!5514684 () Bool)

(assert (=> b!5514684 (= e!3410190 tp_is_empty!40259)))

(declare-fun b!5514686 () Bool)

(declare-fun tp!1517089 () Bool)

(assert (=> b!5514686 (= e!3410190 tp!1517089)))

(declare-fun b!5514685 () Bool)

(declare-fun tp!1517087 () Bool)

(declare-fun tp!1517091 () Bool)

(assert (=> b!5514685 (= e!3410190 (and tp!1517087 tp!1517091))))

(assert (= (and b!5513945 ((_ is ElementMatch!15503) (regTwo!31518 r!7292))) b!5514684))

(assert (= (and b!5513945 ((_ is Concat!24348) (regTwo!31518 r!7292))) b!5514685))

(assert (= (and b!5513945 ((_ is Star!15503) (regTwo!31518 r!7292))) b!5514686))

(assert (= (and b!5513945 ((_ is Union!15503) (regTwo!31518 r!7292))) b!5514687))

(declare-fun e!3410191 () Bool)

(assert (=> b!5513941 (= tp!1517003 e!3410191)))

(declare-fun b!5514691 () Bool)

(declare-fun tp!1517093 () Bool)

(declare-fun tp!1517095 () Bool)

(assert (=> b!5514691 (= e!3410191 (and tp!1517093 tp!1517095))))

(declare-fun b!5514688 () Bool)

(assert (=> b!5514688 (= e!3410191 tp_is_empty!40259)))

(declare-fun b!5514690 () Bool)

(declare-fun tp!1517094 () Bool)

(assert (=> b!5514690 (= e!3410191 tp!1517094)))

(declare-fun b!5514689 () Bool)

(declare-fun tp!1517092 () Bool)

(declare-fun tp!1517096 () Bool)

(assert (=> b!5514689 (= e!3410191 (and tp!1517092 tp!1517096))))

(assert (= (and b!5513941 ((_ is ElementMatch!15503) (regOne!31519 r!7292))) b!5514688))

(assert (= (and b!5513941 ((_ is Concat!24348) (regOne!31519 r!7292))) b!5514689))

(assert (= (and b!5513941 ((_ is Star!15503) (regOne!31519 r!7292))) b!5514690))

(assert (= (and b!5513941 ((_ is Union!15503) (regOne!31519 r!7292))) b!5514691))

(declare-fun e!3410192 () Bool)

(assert (=> b!5513941 (= tp!1517001 e!3410192)))

(declare-fun b!5514695 () Bool)

(declare-fun tp!1517098 () Bool)

(declare-fun tp!1517100 () Bool)

(assert (=> b!5514695 (= e!3410192 (and tp!1517098 tp!1517100))))

(declare-fun b!5514692 () Bool)

(assert (=> b!5514692 (= e!3410192 tp_is_empty!40259)))

(declare-fun b!5514694 () Bool)

(declare-fun tp!1517099 () Bool)

(assert (=> b!5514694 (= e!3410192 tp!1517099)))

(declare-fun b!5514693 () Bool)

(declare-fun tp!1517097 () Bool)

(declare-fun tp!1517101 () Bool)

(assert (=> b!5514693 (= e!3410192 (and tp!1517097 tp!1517101))))

(assert (= (and b!5513941 ((_ is ElementMatch!15503) (regTwo!31519 r!7292))) b!5514692))

(assert (= (and b!5513941 ((_ is Concat!24348) (regTwo!31519 r!7292))) b!5514693))

(assert (= (and b!5513941 ((_ is Star!15503) (regTwo!31519 r!7292))) b!5514694))

(assert (= (and b!5513941 ((_ is Union!15503) (regTwo!31519 r!7292))) b!5514695))

(declare-fun b!5514703 () Bool)

(declare-fun e!3410198 () Bool)

(declare-fun tp!1517106 () Bool)

(assert (=> b!5514703 (= e!3410198 tp!1517106)))

(declare-fun e!3410197 () Bool)

(declare-fun tp!1517107 () Bool)

(declare-fun b!5514702 () Bool)

(assert (=> b!5514702 (= e!3410197 (and (inv!82004 (h!69133 (t!376056 zl!343))) e!3410198 tp!1517107))))

(assert (=> b!5513927 (= tp!1517000 e!3410197)))

(assert (= b!5514702 b!5514703))

(assert (= (and b!5513927 ((_ is Cons!62685) (t!376056 zl!343))) b!5514702))

(declare-fun m!6518834 () Bool)

(assert (=> b!5514702 m!6518834))

(declare-fun b!5514708 () Bool)

(declare-fun e!3410201 () Bool)

(declare-fun tp!1517110 () Bool)

(assert (=> b!5514708 (= e!3410201 (and tp_is_empty!40259 tp!1517110))))

(assert (=> b!5513947 (= tp!1517006 e!3410201)))

(assert (= (and b!5513947 ((_ is Cons!62686) (t!376057 s!2326))) b!5514708))

(declare-fun b!5514713 () Bool)

(declare-fun e!3410204 () Bool)

(declare-fun tp!1517115 () Bool)

(declare-fun tp!1517116 () Bool)

(assert (=> b!5514713 (= e!3410204 (and tp!1517115 tp!1517116))))

(assert (=> b!5513942 (= tp!1516998 e!3410204)))

(assert (= (and b!5513942 ((_ is Cons!62684) (exprs!5387 setElem!36639))) b!5514713))

(declare-fun b!5514714 () Bool)

(declare-fun e!3410205 () Bool)

(declare-fun tp!1517117 () Bool)

(declare-fun tp!1517118 () Bool)

(assert (=> b!5514714 (= e!3410205 (and tp!1517117 tp!1517118))))

(assert (=> b!5513928 (= tp!1517007 e!3410205)))

(assert (= (and b!5513928 ((_ is Cons!62684) (exprs!5387 (h!69133 zl!343)))) b!5514714))

(declare-fun e!3410206 () Bool)

(assert (=> b!5513943 (= tp!1517005 e!3410206)))

(declare-fun b!5514718 () Bool)

(declare-fun tp!1517120 () Bool)

(declare-fun tp!1517122 () Bool)

(assert (=> b!5514718 (= e!3410206 (and tp!1517120 tp!1517122))))

(declare-fun b!5514715 () Bool)

(assert (=> b!5514715 (= e!3410206 tp_is_empty!40259)))

(declare-fun b!5514717 () Bool)

(declare-fun tp!1517121 () Bool)

(assert (=> b!5514717 (= e!3410206 tp!1517121)))

(declare-fun b!5514716 () Bool)

(declare-fun tp!1517119 () Bool)

(declare-fun tp!1517123 () Bool)

(assert (=> b!5514716 (= e!3410206 (and tp!1517119 tp!1517123))))

(assert (= (and b!5513943 ((_ is ElementMatch!15503) (reg!15832 r!7292))) b!5514715))

(assert (= (and b!5513943 ((_ is Concat!24348) (reg!15832 r!7292))) b!5514716))

(assert (= (and b!5513943 ((_ is Star!15503) (reg!15832 r!7292))) b!5514717))

(assert (= (and b!5513943 ((_ is Union!15503) (reg!15832 r!7292))) b!5514718))

(declare-fun b_lambda!209069 () Bool)

(assert (= b_lambda!209065 (or b!5513931 b_lambda!209069)))

(declare-fun bs!1270962 () Bool)

(declare-fun d!1747065 () Bool)

(assert (= bs!1270962 (and d!1747065 b!5513931)))

(assert (=> bs!1270962 (= (dynLambda!24490 lambda!295489 lt!2245851) (derivationStepZipperUp!771 lt!2245851 (h!69134 s!2326)))))

(assert (=> bs!1270962 m!6518322))

(assert (=> d!1747019 d!1747065))

(declare-fun b_lambda!209071 () Bool)

(assert (= b_lambda!209063 (or b!5513931 b_lambda!209071)))

(declare-fun bs!1270963 () Bool)

(declare-fun d!1747067 () Bool)

(assert (= bs!1270963 (and d!1747067 b!5513931)))

(assert (=> bs!1270963 (= (dynLambda!24490 lambda!295489 lt!2245842) (derivationStepZipperUp!771 lt!2245842 (h!69134 s!2326)))))

(assert (=> bs!1270963 m!6518320))

(assert (=> d!1747011 d!1747067))

(declare-fun b_lambda!209073 () Bool)

(assert (= b_lambda!209067 (or b!5513931 b_lambda!209073)))

(declare-fun bs!1270964 () Bool)

(declare-fun d!1747069 () Bool)

(assert (= bs!1270964 (and d!1747069 b!5513931)))

(assert (=> bs!1270964 (= (dynLambda!24490 lambda!295489 (h!69133 zl!343)) (derivationStepZipperUp!771 (h!69133 zl!343) (h!69134 s!2326)))))

(assert (=> bs!1270964 m!6518298))

(assert (=> d!1747031 d!1747069))

(check-sat (not bs!1270963) (not b!5514262) (not bm!407939) (not b!5514609) (not b!5514446) (not b!5514266) (not bm!407951) (not d!1746991) (not b!5514695) (not d!1747005) (not d!1747031) (not bm!407933) (not b!5514481) (not setNonEmpty!36645) (not b!5514694) (not b!5514495) (not b!5514625) (not b!5514569) (not b!5514480) (not bm!407928) (not b!5514608) (not d!1747033) (not b!5514708) (not b!5514615) (not d!1746999) (not b!5514604) (not b!5514686) (not b!5514681) (not bm!407927) (not d!1747001) (not d!1747021) (not d!1747059) (not b!5514669) (not b!5514385) (not bm!407944) (not b!5514267) (not d!1746997) (not b!5514478) (not b!5514486) (not d!1747011) (not b!5514614) (not d!1747039) (not bm!407932) (not d!1747047) (not d!1746973) (not b!5514263) (not b!5514713) (not b!5514702) (not b!5514685) (not b!5514714) (not b!5514687) (not b!5514689) (not b_lambda!209069) (not b!5514439) (not d!1747051) (not b!5514634) (not b!5514401) (not b!5514384) (not b!5514576) (not b!5514693) (not b!5514717) (not bm!407935) (not b!5514538) (not b!5514492) (not b!5514603) (not b!5514616) (not d!1747019) (not d!1747061) (not b!5514636) (not d!1747023) (not b!5514578) (not bs!1270964) (not bm!407964) (not bs!1270962) (not b!5514607) (not b!5514476) (not bm!407945) (not b!5514690) (not b!5514475) (not b!5514567) (not b!5514635) (not b!5514264) (not b!5514611) (not b!5514440) (not bm!407913) (not bm!407955) (not b!5514382) (not b!5514691) (not b!5514619) (not b!5514606) (not b_lambda!209073) (not d!1747045) (not d!1746993) tp_is_empty!40259 (not d!1747017) (not b!5514491) (not b!5514402) (not b!5514474) (not d!1747037) (not b!5514661) (not b!5514601) (not b!5514612) (not b!5514535) (not d!1747025) (not d!1747015) (not b!5514637) (not bm!407948) (not d!1746933) (not b!5514575) (not b!5514430) (not b!5514682) (not b!5514269) (not b!5514683) (not bm!407949) (not b_lambda!209071) (not b!5514613) (not d!1747043) (not bm!407926) (not bm!407963) (not d!1746971) (not bm!407934) (not d!1747027) (not b!5514703) (not b!5514718) (not b!5514383) (not b!5514477) (not d!1747053) (not d!1746995) (not bm!407950) (not b!5514716) (not d!1747049) (not b!5514574) (not d!1746975))
(check-sat)
(get-model)

(assert (=> b!5514608 d!1746931))

(declare-fun d!1747317 () Bool)

(assert (=> d!1747317 (= (isEmptyLang!1088 lt!2245926) ((_ is EmptyLang!15503) lt!2245926))))

(assert (=> b!5514475 d!1747317))

(declare-fun b!5515282 () Bool)

(declare-fun e!3410520 () Bool)

(declare-fun e!3410519 () Bool)

(assert (=> b!5515282 (= e!3410520 e!3410519)))

(declare-fun res!2349888 () Bool)

(assert (=> b!5515282 (=> (not res!2349888) (not e!3410519))))

(declare-fun call!408080 () Bool)

(assert (=> b!5515282 (= res!2349888 call!408080)))

(declare-fun d!1747319 () Bool)

(declare-fun res!2349885 () Bool)

(declare-fun e!3410523 () Bool)

(assert (=> d!1747319 (=> res!2349885 e!3410523)))

(assert (=> d!1747319 (= res!2349885 ((_ is ElementMatch!15503) (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(assert (=> d!1747319 (= (validRegex!7239 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))) e!3410523)))

(declare-fun b!5515283 () Bool)

(declare-fun res!2349887 () Bool)

(declare-fun e!3410521 () Bool)

(assert (=> b!5515283 (=> (not res!2349887) (not e!3410521))))

(assert (=> b!5515283 (= res!2349887 call!408080)))

(declare-fun e!3410522 () Bool)

(assert (=> b!5515283 (= e!3410522 e!3410521)))

(declare-fun bm!408074 () Bool)

(declare-fun call!408081 () Bool)

(declare-fun call!408079 () Bool)

(assert (=> bm!408074 (= call!408081 call!408079)))

(declare-fun b!5515284 () Bool)

(declare-fun e!3410525 () Bool)

(assert (=> b!5515284 (= e!3410525 call!408079)))

(declare-fun b!5515285 () Bool)

(assert (=> b!5515285 (= e!3410519 call!408081)))

(declare-fun b!5515286 () Bool)

(assert (=> b!5515286 (= e!3410521 call!408081)))

(declare-fun b!5515287 () Bool)

(declare-fun e!3410524 () Bool)

(assert (=> b!5515287 (= e!3410524 e!3410525)))

(declare-fun res!2349886 () Bool)

(assert (=> b!5515287 (= res!2349886 (not (nullable!5537 (reg!15832 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))))))))

(assert (=> b!5515287 (=> (not res!2349886) (not e!3410525))))

(declare-fun b!5515288 () Bool)

(assert (=> b!5515288 (= e!3410523 e!3410524)))

(declare-fun c!964103 () Bool)

(assert (=> b!5515288 (= c!964103 ((_ is Star!15503) (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(declare-fun c!964104 () Bool)

(declare-fun bm!408075 () Bool)

(assert (=> bm!408075 (= call!408079 (validRegex!7239 (ite c!964103 (reg!15832 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))) (ite c!964104 (regTwo!31519 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))) (regTwo!31518 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292)))))))))

(declare-fun b!5515289 () Bool)

(declare-fun res!2349889 () Bool)

(assert (=> b!5515289 (=> res!2349889 e!3410520)))

(assert (=> b!5515289 (= res!2349889 (not ((_ is Concat!24348) (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292)))))))

(assert (=> b!5515289 (= e!3410522 e!3410520)))

(declare-fun b!5515290 () Bool)

(assert (=> b!5515290 (= e!3410524 e!3410522)))

(assert (=> b!5515290 (= c!964104 ((_ is Union!15503) (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(declare-fun bm!408076 () Bool)

(assert (=> bm!408076 (= call!408080 (validRegex!7239 (ite c!964104 (regOne!31519 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))) (regOne!31518 (ite c!963963 (regOne!31519 r!7292) (regOne!31518 r!7292))))))))

(assert (= (and d!1747319 (not res!2349885)) b!5515288))

(assert (= (and b!5515288 c!964103) b!5515287))

(assert (= (and b!5515288 (not c!964103)) b!5515290))

(assert (= (and b!5515287 res!2349886) b!5515284))

(assert (= (and b!5515290 c!964104) b!5515283))

(assert (= (and b!5515290 (not c!964104)) b!5515289))

(assert (= (and b!5515283 res!2349887) b!5515286))

(assert (= (and b!5515289 (not res!2349889)) b!5515282))

(assert (= (and b!5515282 res!2349888) b!5515285))

(assert (= (or b!5515286 b!5515285) bm!408074))

(assert (= (or b!5515283 b!5515282) bm!408076))

(assert (= (or b!5515284 bm!408074) bm!408075))

(declare-fun m!6519350 () Bool)

(assert (=> b!5515287 m!6519350))

(declare-fun m!6519352 () Bool)

(assert (=> bm!408075 m!6519352))

(declare-fun m!6519354 () Bool)

(assert (=> bm!408076 m!6519354))

(assert (=> bm!407964 d!1747319))

(declare-fun d!1747321 () Bool)

(assert (=> d!1747321 (= (nullable!5537 (h!69132 (exprs!5387 lt!2245842))) (nullableFct!1663 (h!69132 (exprs!5387 lt!2245842))))))

(declare-fun bs!1271134 () Bool)

(assert (= bs!1271134 d!1747321))

(declare-fun m!6519356 () Bool)

(assert (=> bs!1271134 m!6519356))

(assert (=> b!5514439 d!1747321))

(declare-fun b!5515291 () Bool)

(declare-fun e!3410531 () (InoxSet Context!9774))

(declare-fun call!408083 () (InoxSet Context!9774))

(assert (=> b!5515291 (= e!3410531 call!408083)))

(declare-fun c!964105 () Bool)

(declare-fun b!5515292 () Bool)

(assert (=> b!5515292 (= c!964105 ((_ is Star!15503) (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))))))

(declare-fun e!3410526 () (InoxSet Context!9774))

(assert (=> b!5515292 (= e!3410526 e!3410531)))

(declare-fun b!5515293 () Bool)

(declare-fun e!3410528 () (InoxSet Context!9774))

(declare-fun call!408082 () (InoxSet Context!9774))

(declare-fun call!408084 () (InoxSet Context!9774))

(assert (=> b!5515293 (= e!3410528 ((_ map or) call!408082 call!408084))))

(declare-fun c!964109 () Bool)

(declare-fun bm!408077 () Bool)

(declare-fun call!408086 () List!62808)

(assert (=> bm!408077 (= call!408082 (derivationStepZipperDown!845 (ite c!964109 (regOne!31519 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))) (regOne!31518 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292)))))) (ite c!964109 (ite (or c!963954 c!963953) lt!2245849 (Context!9775 call!407959)) (Context!9775 call!408086)) (h!69134 s!2326)))))

(declare-fun call!408085 () (InoxSet Context!9774))

(declare-fun c!964107 () Bool)

(declare-fun bm!408078 () Bool)

(declare-fun c!964108 () Bool)

(declare-fun call!408087 () List!62808)

(assert (=> bm!408078 (= call!408085 (derivationStepZipperDown!845 (ite c!964109 (regTwo!31519 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))) (ite c!964108 (regTwo!31518 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))) (ite c!964107 (regOne!31518 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))) (reg!15832 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292)))))))) (ite (or c!964109 c!964108) (ite (or c!963954 c!963953) lt!2245849 (Context!9775 call!407959)) (Context!9775 call!408087)) (h!69134 s!2326)))))

(declare-fun bm!408079 () Bool)

(assert (=> bm!408079 (= call!408086 ($colon$colon!1584 (exprs!5387 (ite (or c!963954 c!963953) lt!2245849 (Context!9775 call!407959))) (ite (or c!964108 c!964107) (regTwo!31518 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))) (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292)))))))))

(declare-fun b!5515294 () Bool)

(declare-fun e!3410527 () (InoxSet Context!9774))

(declare-fun e!3410530 () (InoxSet Context!9774))

(assert (=> b!5515294 (= e!3410527 e!3410530)))

(assert (=> b!5515294 (= c!964109 ((_ is Union!15503) (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))))))

(declare-fun b!5515295 () Bool)

(assert (=> b!5515295 (= e!3410530 ((_ map or) call!408082 call!408085))))

(declare-fun bm!408080 () Bool)

(assert (=> bm!408080 (= call!408087 call!408086)))

(declare-fun bm!408081 () Bool)

(assert (=> bm!408081 (= call!408084 call!408085)))

(declare-fun b!5515296 () Bool)

(declare-fun e!3410529 () Bool)

(assert (=> b!5515296 (= e!3410529 (nullable!5537 (regOne!31518 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292)))))))))

(declare-fun bm!408082 () Bool)

(assert (=> bm!408082 (= call!408083 call!408084)))

(declare-fun b!5515297 () Bool)

(assert (=> b!5515297 (= e!3410531 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515298 () Bool)

(assert (=> b!5515298 (= e!3410528 e!3410526)))

(assert (=> b!5515298 (= c!964107 ((_ is Concat!24348) (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))))))

(declare-fun b!5515299 () Bool)

(assert (=> b!5515299 (= e!3410526 call!408083)))

(declare-fun b!5515300 () Bool)

(assert (=> b!5515300 (= e!3410527 (store ((as const (Array Context!9774 Bool)) false) (ite (or c!963954 c!963953) lt!2245849 (Context!9775 call!407959)) true))))

(declare-fun b!5515301 () Bool)

(assert (=> b!5515301 (= c!964108 e!3410529)))

(declare-fun res!2349890 () Bool)

(assert (=> b!5515301 (=> (not res!2349890) (not e!3410529))))

(assert (=> b!5515301 (= res!2349890 ((_ is Concat!24348) (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))))))

(assert (=> b!5515301 (= e!3410530 e!3410528)))

(declare-fun d!1747323 () Bool)

(declare-fun c!964106 () Bool)

(assert (=> d!1747323 (= c!964106 (and ((_ is ElementMatch!15503) (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))) (= (c!963749 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292))))) (h!69134 s!2326))))))

(assert (=> d!1747323 (= (derivationStepZipperDown!845 (ite c!963954 (regTwo!31519 r!7292) (ite c!963953 (regTwo!31518 r!7292) (ite c!963952 (regOne!31518 r!7292) (reg!15832 r!7292)))) (ite (or c!963954 c!963953) lt!2245849 (Context!9775 call!407959)) (h!69134 s!2326)) e!3410527)))

(assert (= (and d!1747323 c!964106) b!5515300))

(assert (= (and d!1747323 (not c!964106)) b!5515294))

(assert (= (and b!5515294 c!964109) b!5515295))

(assert (= (and b!5515294 (not c!964109)) b!5515301))

(assert (= (and b!5515301 res!2349890) b!5515296))

(assert (= (and b!5515301 c!964108) b!5515293))

(assert (= (and b!5515301 (not c!964108)) b!5515298))

(assert (= (and b!5515298 c!964107) b!5515299))

(assert (= (and b!5515298 (not c!964107)) b!5515292))

(assert (= (and b!5515292 c!964105) b!5515291))

(assert (= (and b!5515292 (not c!964105)) b!5515297))

(assert (= (or b!5515299 b!5515291) bm!408080))

(assert (= (or b!5515299 b!5515291) bm!408082))

(assert (= (or b!5515293 bm!408080) bm!408079))

(assert (= (or b!5515293 bm!408082) bm!408081))

(assert (= (or b!5515295 bm!408081) bm!408078))

(assert (= (or b!5515295 b!5515293) bm!408077))

(declare-fun m!6519358 () Bool)

(assert (=> bm!408079 m!6519358))

(declare-fun m!6519360 () Bool)

(assert (=> b!5515296 m!6519360))

(declare-fun m!6519362 () Bool)

(assert (=> bm!408077 m!6519362))

(declare-fun m!6519364 () Bool)

(assert (=> bm!408078 m!6519364))

(declare-fun m!6519366 () Bool)

(assert (=> b!5515300 m!6519366))

(assert (=> bm!407950 d!1747323))

(declare-fun d!1747325 () Bool)

(declare-fun lambda!295588 () Int)

(declare-fun exists!2136 ((InoxSet Context!9774) Int) Bool)

(assert (=> d!1747325 (= (nullableZipper!1531 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326))) (exists!2136 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) lambda!295588))))

(declare-fun bs!1271135 () Bool)

(assert (= bs!1271135 d!1747325))

(assert (=> bs!1271135 m!6518268))

(declare-fun m!6519368 () Bool)

(assert (=> bs!1271135 m!6519368))

(assert (=> b!5514384 d!1747325))

(declare-fun d!1747327 () Bool)

(assert (=> d!1747327 (= (isEmpty!34465 (exprs!5387 (h!69133 zl!343))) ((_ is Nil!62684) (exprs!5387 (h!69133 zl!343))))))

(assert (=> b!5514604 d!1747327))

(declare-fun d!1747329 () Bool)

(assert (=> d!1747329 (= (Exists!2603 lambda!295529) (choose!41912 lambda!295529))))

(declare-fun bs!1271136 () Bool)

(assert (= bs!1271136 d!1747329))

(declare-fun m!6519370 () Bool)

(assert (=> bs!1271136 m!6519370))

(assert (=> d!1746991 d!1747329))

(declare-fun d!1747331 () Bool)

(assert (=> d!1747331 (= (Exists!2603 lambda!295530) (choose!41912 lambda!295530))))

(declare-fun bs!1271137 () Bool)

(assert (= bs!1271137 d!1747331))

(declare-fun m!6519372 () Bool)

(assert (=> bs!1271137 m!6519372))

(assert (=> d!1746991 d!1747331))

(declare-fun bs!1271138 () Bool)

(declare-fun d!1747333 () Bool)

(assert (= bs!1271138 (and d!1747333 d!1746991)))

(declare-fun lambda!295593 () Int)

(assert (=> bs!1271138 (= lambda!295593 lambda!295529)))

(declare-fun bs!1271139 () Bool)

(assert (= bs!1271139 (and d!1747333 b!5514534)))

(assert (=> bs!1271139 (not (= lambda!295593 lambda!295547))))

(declare-fun bs!1271140 () Bool)

(assert (= bs!1271140 (and d!1747333 b!5513944)))

(assert (=> bs!1271140 (= lambda!295593 lambda!295487)))

(assert (=> bs!1271140 (not (= lambda!295593 lambda!295488))))

(declare-fun bs!1271141 () Bool)

(assert (= bs!1271141 (and d!1747333 d!1746975)))

(assert (=> bs!1271141 (= lambda!295593 lambda!295524)))

(declare-fun bs!1271142 () Bool)

(assert (= bs!1271142 (and d!1747333 b!5514531)))

(assert (=> bs!1271142 (not (= lambda!295593 lambda!295548))))

(assert (=> bs!1271138 (not (= lambda!295593 lambda!295530))))

(assert (=> d!1747333 true))

(assert (=> d!1747333 true))

(assert (=> d!1747333 true))

(declare-fun lambda!295594 () Int)

(assert (=> bs!1271138 (not (= lambda!295594 lambda!295529))))

(assert (=> bs!1271139 (not (= lambda!295594 lambda!295547))))

(assert (=> bs!1271140 (not (= lambda!295594 lambda!295487))))

(assert (=> bs!1271140 (= lambda!295594 lambda!295488)))

(assert (=> bs!1271141 (not (= lambda!295594 lambda!295524))))

(assert (=> bs!1271142 (= lambda!295594 lambda!295548)))

(assert (=> bs!1271138 (= lambda!295594 lambda!295530)))

(declare-fun bs!1271143 () Bool)

(assert (= bs!1271143 d!1747333))

(assert (=> bs!1271143 (not (= lambda!295594 lambda!295593))))

(assert (=> d!1747333 true))

(assert (=> d!1747333 true))

(assert (=> d!1747333 true))

(assert (=> d!1747333 (= (Exists!2603 lambda!295593) (Exists!2603 lambda!295594))))

(assert (=> d!1747333 true))

(declare-fun _$90!1232 () Unit!155466)

(assert (=> d!1747333 (= (choose!41915 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326) _$90!1232)))

(declare-fun m!6519374 () Bool)

(assert (=> bs!1271143 m!6519374))

(declare-fun m!6519376 () Bool)

(assert (=> bs!1271143 m!6519376))

(assert (=> d!1746991 d!1747333))

(declare-fun b!5515310 () Bool)

(declare-fun e!3410537 () Bool)

(declare-fun e!3410536 () Bool)

(assert (=> b!5515310 (= e!3410537 e!3410536)))

(declare-fun res!2349902 () Bool)

(assert (=> b!5515310 (=> (not res!2349902) (not e!3410536))))

(declare-fun call!408089 () Bool)

(assert (=> b!5515310 (= res!2349902 call!408089)))

(declare-fun d!1747335 () Bool)

(declare-fun res!2349899 () Bool)

(declare-fun e!3410540 () Bool)

(assert (=> d!1747335 (=> res!2349899 e!3410540)))

(assert (=> d!1747335 (= res!2349899 ((_ is ElementMatch!15503) (regOne!31518 r!7292)))))

(assert (=> d!1747335 (= (validRegex!7239 (regOne!31518 r!7292)) e!3410540)))

(declare-fun b!5515311 () Bool)

(declare-fun res!2349901 () Bool)

(declare-fun e!3410538 () Bool)

(assert (=> b!5515311 (=> (not res!2349901) (not e!3410538))))

(assert (=> b!5515311 (= res!2349901 call!408089)))

(declare-fun e!3410539 () Bool)

(assert (=> b!5515311 (= e!3410539 e!3410538)))

(declare-fun bm!408083 () Bool)

(declare-fun call!408090 () Bool)

(declare-fun call!408088 () Bool)

(assert (=> bm!408083 (= call!408090 call!408088)))

(declare-fun b!5515312 () Bool)

(declare-fun e!3410542 () Bool)

(assert (=> b!5515312 (= e!3410542 call!408088)))

(declare-fun b!5515313 () Bool)

(assert (=> b!5515313 (= e!3410536 call!408090)))

(declare-fun b!5515314 () Bool)

(assert (=> b!5515314 (= e!3410538 call!408090)))

(declare-fun b!5515315 () Bool)

(declare-fun e!3410541 () Bool)

(assert (=> b!5515315 (= e!3410541 e!3410542)))

(declare-fun res!2349900 () Bool)

(assert (=> b!5515315 (= res!2349900 (not (nullable!5537 (reg!15832 (regOne!31518 r!7292)))))))

(assert (=> b!5515315 (=> (not res!2349900) (not e!3410542))))

(declare-fun b!5515316 () Bool)

(assert (=> b!5515316 (= e!3410540 e!3410541)))

(declare-fun c!964112 () Bool)

(assert (=> b!5515316 (= c!964112 ((_ is Star!15503) (regOne!31518 r!7292)))))

(declare-fun c!964113 () Bool)

(declare-fun bm!408084 () Bool)

(assert (=> bm!408084 (= call!408088 (validRegex!7239 (ite c!964112 (reg!15832 (regOne!31518 r!7292)) (ite c!964113 (regTwo!31519 (regOne!31518 r!7292)) (regTwo!31518 (regOne!31518 r!7292))))))))

(declare-fun b!5515317 () Bool)

(declare-fun res!2349903 () Bool)

(assert (=> b!5515317 (=> res!2349903 e!3410537)))

(assert (=> b!5515317 (= res!2349903 (not ((_ is Concat!24348) (regOne!31518 r!7292))))))

(assert (=> b!5515317 (= e!3410539 e!3410537)))

(declare-fun b!5515318 () Bool)

(assert (=> b!5515318 (= e!3410541 e!3410539)))

(assert (=> b!5515318 (= c!964113 ((_ is Union!15503) (regOne!31518 r!7292)))))

(declare-fun bm!408085 () Bool)

(assert (=> bm!408085 (= call!408089 (validRegex!7239 (ite c!964113 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))))))

(assert (= (and d!1747335 (not res!2349899)) b!5515316))

(assert (= (and b!5515316 c!964112) b!5515315))

(assert (= (and b!5515316 (not c!964112)) b!5515318))

(assert (= (and b!5515315 res!2349900) b!5515312))

(assert (= (and b!5515318 c!964113) b!5515311))

(assert (= (and b!5515318 (not c!964113)) b!5515317))

(assert (= (and b!5515311 res!2349901) b!5515314))

(assert (= (and b!5515317 (not res!2349903)) b!5515310))

(assert (= (and b!5515310 res!2349902) b!5515313))

(assert (= (or b!5515314 b!5515313) bm!408083))

(assert (= (or b!5515311 b!5515310) bm!408085))

(assert (= (or b!5515312 bm!408083) bm!408084))

(declare-fun m!6519378 () Bool)

(assert (=> b!5515315 m!6519378))

(declare-fun m!6519380 () Bool)

(assert (=> bm!408084 m!6519380))

(declare-fun m!6519382 () Bool)

(assert (=> bm!408085 m!6519382))

(assert (=> d!1746991 d!1747335))

(declare-fun b!5515319 () Bool)

(declare-fun e!3410543 () Bool)

(assert (=> b!5515319 (= e!3410543 (not (= (head!11813 (_2!35903 (get!21572 lt!2245900))) (c!963749 (regTwo!31518 r!7292)))))))

(declare-fun b!5515320 () Bool)

(declare-fun res!2349904 () Bool)

(declare-fun e!3410548 () Bool)

(assert (=> b!5515320 (=> (not res!2349904) (not e!3410548))))

(declare-fun call!408091 () Bool)

(assert (=> b!5515320 (= res!2349904 (not call!408091))))

(declare-fun b!5515322 () Bool)

(declare-fun e!3410544 () Bool)

(assert (=> b!5515322 (= e!3410544 e!3410543)))

(declare-fun res!2349908 () Bool)

(assert (=> b!5515322 (=> res!2349908 e!3410543)))

(assert (=> b!5515322 (= res!2349908 call!408091)))

(declare-fun b!5515323 () Bool)

(declare-fun e!3410545 () Bool)

(declare-fun lt!2245968 () Bool)

(assert (=> b!5515323 (= e!3410545 (not lt!2245968))))

(declare-fun b!5515324 () Bool)

(declare-fun res!2349906 () Bool)

(declare-fun e!3410546 () Bool)

(assert (=> b!5515324 (=> res!2349906 e!3410546)))

(assert (=> b!5515324 (= res!2349906 (not ((_ is ElementMatch!15503) (regTwo!31518 r!7292))))))

(assert (=> b!5515324 (= e!3410545 e!3410546)))

(declare-fun b!5515325 () Bool)

(declare-fun res!2349907 () Bool)

(assert (=> b!5515325 (=> res!2349907 e!3410546)))

(assert (=> b!5515325 (= res!2349907 e!3410548)))

(declare-fun res!2349909 () Bool)

(assert (=> b!5515325 (=> (not res!2349909) (not e!3410548))))

(assert (=> b!5515325 (= res!2349909 lt!2245968)))

(declare-fun b!5515326 () Bool)

(declare-fun res!2349910 () Bool)

(assert (=> b!5515326 (=> (not res!2349910) (not e!3410548))))

(assert (=> b!5515326 (= res!2349910 (isEmpty!34470 (tail!10908 (_2!35903 (get!21572 lt!2245900)))))))

(declare-fun b!5515327 () Bool)

(assert (=> b!5515327 (= e!3410548 (= (head!11813 (_2!35903 (get!21572 lt!2245900))) (c!963749 (regTwo!31518 r!7292))))))

(declare-fun bm!408086 () Bool)

(assert (=> bm!408086 (= call!408091 (isEmpty!34470 (_2!35903 (get!21572 lt!2245900))))))

(declare-fun b!5515328 () Bool)

(declare-fun e!3410549 () Bool)

(assert (=> b!5515328 (= e!3410549 (matchR!7688 (derivativeStep!4370 (regTwo!31518 r!7292) (head!11813 (_2!35903 (get!21572 lt!2245900)))) (tail!10908 (_2!35903 (get!21572 lt!2245900)))))))

(declare-fun b!5515321 () Bool)

(declare-fun res!2349911 () Bool)

(assert (=> b!5515321 (=> res!2349911 e!3410543)))

(assert (=> b!5515321 (= res!2349911 (not (isEmpty!34470 (tail!10908 (_2!35903 (get!21572 lt!2245900))))))))

(declare-fun d!1747337 () Bool)

(declare-fun e!3410547 () Bool)

(assert (=> d!1747337 e!3410547))

(declare-fun c!964114 () Bool)

(assert (=> d!1747337 (= c!964114 ((_ is EmptyExpr!15503) (regTwo!31518 r!7292)))))

(assert (=> d!1747337 (= lt!2245968 e!3410549)))

(declare-fun c!964116 () Bool)

(assert (=> d!1747337 (= c!964116 (isEmpty!34470 (_2!35903 (get!21572 lt!2245900))))))

(assert (=> d!1747337 (validRegex!7239 (regTwo!31518 r!7292))))

(assert (=> d!1747337 (= (matchR!7688 (regTwo!31518 r!7292) (_2!35903 (get!21572 lt!2245900))) lt!2245968)))

(declare-fun b!5515329 () Bool)

(assert (=> b!5515329 (= e!3410547 e!3410545)))

(declare-fun c!964115 () Bool)

(assert (=> b!5515329 (= c!964115 ((_ is EmptyLang!15503) (regTwo!31518 r!7292)))))

(declare-fun b!5515330 () Bool)

(assert (=> b!5515330 (= e!3410549 (nullable!5537 (regTwo!31518 r!7292)))))

(declare-fun b!5515331 () Bool)

(assert (=> b!5515331 (= e!3410547 (= lt!2245968 call!408091))))

(declare-fun b!5515332 () Bool)

(assert (=> b!5515332 (= e!3410546 e!3410544)))

(declare-fun res!2349905 () Bool)

(assert (=> b!5515332 (=> (not res!2349905) (not e!3410544))))

(assert (=> b!5515332 (= res!2349905 (not lt!2245968))))

(assert (= (and d!1747337 c!964116) b!5515330))

(assert (= (and d!1747337 (not c!964116)) b!5515328))

(assert (= (and d!1747337 c!964114) b!5515331))

(assert (= (and d!1747337 (not c!964114)) b!5515329))

(assert (= (and b!5515329 c!964115) b!5515323))

(assert (= (and b!5515329 (not c!964115)) b!5515324))

(assert (= (and b!5515324 (not res!2349906)) b!5515325))

(assert (= (and b!5515325 res!2349909) b!5515320))

(assert (= (and b!5515320 res!2349904) b!5515326))

(assert (= (and b!5515326 res!2349910) b!5515327))

(assert (= (and b!5515325 (not res!2349907)) b!5515332))

(assert (= (and b!5515332 res!2349905) b!5515322))

(assert (= (and b!5515322 (not res!2349908)) b!5515321))

(assert (= (and b!5515321 (not res!2349911)) b!5515319))

(assert (= (or b!5515331 b!5515320 b!5515322) bm!408086))

(declare-fun m!6519384 () Bool)

(assert (=> d!1747337 m!6519384))

(declare-fun m!6519386 () Bool)

(assert (=> d!1747337 m!6519386))

(declare-fun m!6519388 () Bool)

(assert (=> b!5515328 m!6519388))

(assert (=> b!5515328 m!6519388))

(declare-fun m!6519390 () Bool)

(assert (=> b!5515328 m!6519390))

(declare-fun m!6519392 () Bool)

(assert (=> b!5515328 m!6519392))

(assert (=> b!5515328 m!6519390))

(assert (=> b!5515328 m!6519392))

(declare-fun m!6519394 () Bool)

(assert (=> b!5515328 m!6519394))

(assert (=> bm!408086 m!6519384))

(assert (=> b!5515326 m!6519392))

(assert (=> b!5515326 m!6519392))

(declare-fun m!6519396 () Bool)

(assert (=> b!5515326 m!6519396))

(assert (=> b!5515321 m!6519392))

(assert (=> b!5515321 m!6519392))

(assert (=> b!5515321 m!6519396))

(assert (=> b!5515319 m!6519388))

(declare-fun m!6519398 () Bool)

(assert (=> b!5515330 m!6519398))

(assert (=> b!5515327 m!6519388))

(assert (=> b!5514269 d!1747337))

(declare-fun d!1747339 () Bool)

(assert (=> d!1747339 (= (get!21572 lt!2245900) (v!51546 lt!2245900))))

(assert (=> b!5514269 d!1747339))

(declare-fun d!1747341 () Bool)

(assert (=> d!1747341 true))

(declare-fun setRes!36654 () Bool)

(assert (=> d!1747341 setRes!36654))

(declare-fun condSetEmpty!36654 () Bool)

(declare-fun res!2349914 () (InoxSet Context!9774))

(assert (=> d!1747341 (= condSetEmpty!36654 (= res!2349914 ((as const (Array Context!9774 Bool)) false)))))

(assert (=> d!1747341 (= (choose!41916 z!1189 lambda!295489) res!2349914)))

(declare-fun setIsEmpty!36654 () Bool)

(assert (=> setIsEmpty!36654 setRes!36654))

(declare-fun e!3410552 () Bool)

(declare-fun setElem!36654 () Context!9774)

(declare-fun setNonEmpty!36654 () Bool)

(declare-fun tp!1517293 () Bool)

(assert (=> setNonEmpty!36654 (= setRes!36654 (and tp!1517293 (inv!82004 setElem!36654) e!3410552))))

(declare-fun setRest!36654 () (InoxSet Context!9774))

(assert (=> setNonEmpty!36654 (= res!2349914 ((_ map or) (store ((as const (Array Context!9774 Bool)) false) setElem!36654 true) setRest!36654))))

(declare-fun b!5515335 () Bool)

(declare-fun tp!1517292 () Bool)

(assert (=> b!5515335 (= e!3410552 tp!1517292)))

(assert (= (and d!1747341 condSetEmpty!36654) setIsEmpty!36654))

(assert (= (and d!1747341 (not condSetEmpty!36654)) setNonEmpty!36654))

(assert (= setNonEmpty!36654 b!5515335))

(declare-fun m!6519400 () Bool)

(assert (=> setNonEmpty!36654 m!6519400))

(assert (=> d!1747027 d!1747341))

(assert (=> b!5514619 d!1747061))

(declare-fun b!5515336 () Bool)

(declare-fun e!3410554 () Bool)

(declare-fun e!3410553 () Bool)

(assert (=> b!5515336 (= e!3410554 e!3410553)))

(declare-fun res!2349918 () Bool)

(assert (=> b!5515336 (=> (not res!2349918) (not e!3410553))))

(declare-fun call!408093 () Bool)

(assert (=> b!5515336 (= res!2349918 call!408093)))

(declare-fun d!1747343 () Bool)

(declare-fun res!2349915 () Bool)

(declare-fun e!3410557 () Bool)

(assert (=> d!1747343 (=> res!2349915 e!3410557)))

(assert (=> d!1747343 (= res!2349915 ((_ is ElementMatch!15503) lt!2245919))))

(assert (=> d!1747343 (= (validRegex!7239 lt!2245919) e!3410557)))

(declare-fun b!5515337 () Bool)

(declare-fun res!2349917 () Bool)

(declare-fun e!3410555 () Bool)

(assert (=> b!5515337 (=> (not res!2349917) (not e!3410555))))

(assert (=> b!5515337 (= res!2349917 call!408093)))

(declare-fun e!3410556 () Bool)

(assert (=> b!5515337 (= e!3410556 e!3410555)))

(declare-fun bm!408087 () Bool)

(declare-fun call!408094 () Bool)

(declare-fun call!408092 () Bool)

(assert (=> bm!408087 (= call!408094 call!408092)))

(declare-fun b!5515338 () Bool)

(declare-fun e!3410559 () Bool)

(assert (=> b!5515338 (= e!3410559 call!408092)))

(declare-fun b!5515339 () Bool)

(assert (=> b!5515339 (= e!3410553 call!408094)))

(declare-fun b!5515340 () Bool)

(assert (=> b!5515340 (= e!3410555 call!408094)))

(declare-fun b!5515341 () Bool)

(declare-fun e!3410558 () Bool)

(assert (=> b!5515341 (= e!3410558 e!3410559)))

(declare-fun res!2349916 () Bool)

(assert (=> b!5515341 (= res!2349916 (not (nullable!5537 (reg!15832 lt!2245919))))))

(assert (=> b!5515341 (=> (not res!2349916) (not e!3410559))))

(declare-fun b!5515342 () Bool)

(assert (=> b!5515342 (= e!3410557 e!3410558)))

(declare-fun c!964117 () Bool)

(assert (=> b!5515342 (= c!964117 ((_ is Star!15503) lt!2245919))))

(declare-fun bm!408088 () Bool)

(declare-fun c!964118 () Bool)

(assert (=> bm!408088 (= call!408092 (validRegex!7239 (ite c!964117 (reg!15832 lt!2245919) (ite c!964118 (regTwo!31519 lt!2245919) (regTwo!31518 lt!2245919)))))))

(declare-fun b!5515343 () Bool)

(declare-fun res!2349919 () Bool)

(assert (=> b!5515343 (=> res!2349919 e!3410554)))

(assert (=> b!5515343 (= res!2349919 (not ((_ is Concat!24348) lt!2245919)))))

(assert (=> b!5515343 (= e!3410556 e!3410554)))

(declare-fun b!5515344 () Bool)

(assert (=> b!5515344 (= e!3410558 e!3410556)))

(assert (=> b!5515344 (= c!964118 ((_ is Union!15503) lt!2245919))))

(declare-fun bm!408089 () Bool)

(assert (=> bm!408089 (= call!408093 (validRegex!7239 (ite c!964118 (regOne!31519 lt!2245919) (regOne!31518 lt!2245919))))))

(assert (= (and d!1747343 (not res!2349915)) b!5515342))

(assert (= (and b!5515342 c!964117) b!5515341))

(assert (= (and b!5515342 (not c!964117)) b!5515344))

(assert (= (and b!5515341 res!2349916) b!5515338))

(assert (= (and b!5515344 c!964118) b!5515337))

(assert (= (and b!5515344 (not c!964118)) b!5515343))

(assert (= (and b!5515337 res!2349917) b!5515340))

(assert (= (and b!5515343 (not res!2349919)) b!5515336))

(assert (= (and b!5515336 res!2349918) b!5515339))

(assert (= (or b!5515340 b!5515339) bm!408087))

(assert (= (or b!5515337 b!5515336) bm!408089))

(assert (= (or b!5515338 bm!408087) bm!408088))

(declare-fun m!6519402 () Bool)

(assert (=> b!5515341 m!6519402))

(declare-fun m!6519404 () Bool)

(assert (=> bm!408088 m!6519404))

(declare-fun m!6519406 () Bool)

(assert (=> bm!408089 m!6519406))

(assert (=> d!1746995 d!1747343))

(assert (=> d!1746995 d!1747021))

(assert (=> d!1746995 d!1747023))

(declare-fun d!1747345 () Bool)

(assert (=> d!1747345 (= (isEmpty!34470 (t!376057 s!2326)) ((_ is Nil!62686) (t!376057 s!2326)))))

(assert (=> d!1746999 d!1747345))

(declare-fun bs!1271144 () Bool)

(declare-fun d!1747347 () Bool)

(assert (= bs!1271144 (and d!1747347 d!1747325)))

(declare-fun lambda!295595 () Int)

(assert (=> bs!1271144 (= lambda!295595 lambda!295588)))

(assert (=> d!1747347 (= (nullableZipper!1531 lt!2245855) (exists!2136 lt!2245855 lambda!295595))))

(declare-fun bs!1271145 () Bool)

(assert (= bs!1271145 d!1747347))

(declare-fun m!6519408 () Bool)

(assert (=> bs!1271145 m!6519408))

(assert (=> b!5514613 d!1747347))

(declare-fun d!1747349 () Bool)

(declare-fun c!964119 () Bool)

(assert (=> d!1747349 (= c!964119 (isEmpty!34470 (t!376057 s!2326)))))

(declare-fun e!3410560 () Bool)

(assert (=> d!1747349 (= (matchZipper!1661 ((_ map or) lt!2245841 lt!2245835) (t!376057 s!2326)) e!3410560)))

(declare-fun b!5515345 () Bool)

(assert (=> b!5515345 (= e!3410560 (nullableZipper!1531 ((_ map or) lt!2245841 lt!2245835)))))

(declare-fun b!5515346 () Bool)

(assert (=> b!5515346 (= e!3410560 (matchZipper!1661 (derivationStepZipper!1608 ((_ map or) lt!2245841 lt!2245835) (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))))))

(assert (= (and d!1747349 c!964119) b!5515345))

(assert (= (and d!1747349 (not c!964119)) b!5515346))

(assert (=> d!1747349 m!6518644))

(declare-fun m!6519410 () Bool)

(assert (=> b!5515345 m!6519410))

(assert (=> b!5515346 m!6518648))

(assert (=> b!5515346 m!6518648))

(declare-fun m!6519412 () Bool)

(assert (=> b!5515346 m!6519412))

(assert (=> b!5515346 m!6518652))

(assert (=> b!5515346 m!6519412))

(assert (=> b!5515346 m!6518652))

(declare-fun m!6519414 () Bool)

(assert (=> b!5515346 m!6519414))

(assert (=> d!1747053 d!1747349))

(assert (=> d!1747053 d!1747051))

(declare-fun d!1747351 () Bool)

(declare-fun e!3410563 () Bool)

(assert (=> d!1747351 (= (matchZipper!1661 ((_ map or) lt!2245841 lt!2245835) (t!376057 s!2326)) e!3410563)))

(declare-fun res!2349922 () Bool)

(assert (=> d!1747351 (=> res!2349922 e!3410563)))

(assert (=> d!1747351 (= res!2349922 (matchZipper!1661 lt!2245841 (t!376057 s!2326)))))

(assert (=> d!1747351 true))

(declare-fun _$48!1078 () Unit!155466)

(assert (=> d!1747351 (= (choose!41921 lt!2245841 lt!2245835 (t!376057 s!2326)) _$48!1078)))

(declare-fun b!5515349 () Bool)

(assert (=> b!5515349 (= e!3410563 (matchZipper!1661 lt!2245835 (t!376057 s!2326)))))

(assert (= (and d!1747351 (not res!2349922)) b!5515349))

(assert (=> d!1747351 m!6518802))

(assert (=> d!1747351 m!6518260))

(assert (=> b!5515349 m!6518272))

(assert (=> d!1747053 d!1747351))

(declare-fun d!1747353 () Bool)

(declare-fun res!2349927 () Bool)

(declare-fun e!3410568 () Bool)

(assert (=> d!1747353 (=> res!2349927 e!3410568)))

(assert (=> d!1747353 (= res!2349927 ((_ is Nil!62684) lt!2245929))))

(assert (=> d!1747353 (= (forall!14679 lt!2245929 lambda!295539) e!3410568)))

(declare-fun b!5515354 () Bool)

(declare-fun e!3410569 () Bool)

(assert (=> b!5515354 (= e!3410568 e!3410569)))

(declare-fun res!2349928 () Bool)

(assert (=> b!5515354 (=> (not res!2349928) (not e!3410569))))

(declare-fun dynLambda!24492 (Int Regex!15503) Bool)

(assert (=> b!5515354 (= res!2349928 (dynLambda!24492 lambda!295539 (h!69132 lt!2245929)))))

(declare-fun b!5515355 () Bool)

(assert (=> b!5515355 (= e!3410569 (forall!14679 (t!376055 lt!2245929) lambda!295539))))

(assert (= (and d!1747353 (not res!2349927)) b!5515354))

(assert (= (and b!5515354 res!2349928) b!5515355))

(declare-fun b_lambda!209107 () Bool)

(assert (=> (not b_lambda!209107) (not b!5515354)))

(declare-fun m!6519416 () Bool)

(assert (=> b!5515354 m!6519416))

(declare-fun m!6519418 () Bool)

(assert (=> b!5515355 m!6519418))

(assert (=> d!1747023 d!1747353))

(declare-fun b!5515367 () Bool)

(declare-fun e!3410575 () Bool)

(declare-fun lt!2245971 () List!62810)

(assert (=> b!5515367 (= e!3410575 (or (not (= (t!376057 s!2326) Nil!62686)) (= lt!2245971 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)))))))

(declare-fun b!5515365 () Bool)

(declare-fun e!3410574 () List!62810)

(assert (=> b!5515365 (= e!3410574 (Cons!62686 (h!69134 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686))) (++!13753 (t!376057 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686))) (t!376057 s!2326))))))

(declare-fun b!5515366 () Bool)

(declare-fun res!2349933 () Bool)

(assert (=> b!5515366 (=> (not res!2349933) (not e!3410575))))

(declare-fun size!39935 (List!62810) Int)

(assert (=> b!5515366 (= res!2349933 (= (size!39935 lt!2245971) (+ (size!39935 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686))) (size!39935 (t!376057 s!2326)))))))

(declare-fun d!1747355 () Bool)

(assert (=> d!1747355 e!3410575))

(declare-fun res!2349934 () Bool)

(assert (=> d!1747355 (=> (not res!2349934) (not e!3410575))))

(declare-fun content!11267 (List!62810) (InoxSet C!31276))

(assert (=> d!1747355 (= res!2349934 (= (content!11267 lt!2245971) ((_ map or) (content!11267 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686))) (content!11267 (t!376057 s!2326)))))))

(assert (=> d!1747355 (= lt!2245971 e!3410574)))

(declare-fun c!964122 () Bool)

(assert (=> d!1747355 (= c!964122 ((_ is Nil!62686) (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686))))))

(assert (=> d!1747355 (= (++!13753 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (t!376057 s!2326)) lt!2245971)))

(declare-fun b!5515364 () Bool)

(assert (=> b!5515364 (= e!3410574 (t!376057 s!2326))))

(assert (= (and d!1747355 c!964122) b!5515364))

(assert (= (and d!1747355 (not c!964122)) b!5515365))

(assert (= (and d!1747355 res!2349934) b!5515366))

(assert (= (and b!5515366 res!2349933) b!5515367))

(declare-fun m!6519420 () Bool)

(assert (=> b!5515365 m!6519420))

(declare-fun m!6519422 () Bool)

(assert (=> b!5515366 m!6519422))

(assert (=> b!5515366 m!6518556))

(declare-fun m!6519424 () Bool)

(assert (=> b!5515366 m!6519424))

(declare-fun m!6519426 () Bool)

(assert (=> b!5515366 m!6519426))

(declare-fun m!6519428 () Bool)

(assert (=> d!1747355 m!6519428))

(assert (=> d!1747355 m!6518556))

(declare-fun m!6519430 () Bool)

(assert (=> d!1747355 m!6519430))

(declare-fun m!6519432 () Bool)

(assert (=> d!1747355 m!6519432))

(assert (=> b!5514264 d!1747355))

(declare-fun b!5515371 () Bool)

(declare-fun e!3410577 () Bool)

(declare-fun lt!2245972 () List!62810)

(assert (=> b!5515371 (= e!3410577 (or (not (= (Cons!62686 (h!69134 s!2326) Nil!62686) Nil!62686)) (= lt!2245972 Nil!62686)))))

(declare-fun b!5515369 () Bool)

(declare-fun e!3410576 () List!62810)

(assert (=> b!5515369 (= e!3410576 (Cons!62686 (h!69134 Nil!62686) (++!13753 (t!376057 Nil!62686) (Cons!62686 (h!69134 s!2326) Nil!62686))))))

(declare-fun b!5515370 () Bool)

(declare-fun res!2349935 () Bool)

(assert (=> b!5515370 (=> (not res!2349935) (not e!3410577))))

(assert (=> b!5515370 (= res!2349935 (= (size!39935 lt!2245972) (+ (size!39935 Nil!62686) (size!39935 (Cons!62686 (h!69134 s!2326) Nil!62686)))))))

(declare-fun d!1747357 () Bool)

(assert (=> d!1747357 e!3410577))

(declare-fun res!2349936 () Bool)

(assert (=> d!1747357 (=> (not res!2349936) (not e!3410577))))

(assert (=> d!1747357 (= res!2349936 (= (content!11267 lt!2245972) ((_ map or) (content!11267 Nil!62686) (content!11267 (Cons!62686 (h!69134 s!2326) Nil!62686)))))))

(assert (=> d!1747357 (= lt!2245972 e!3410576)))

(declare-fun c!964123 () Bool)

(assert (=> d!1747357 (= c!964123 ((_ is Nil!62686) Nil!62686))))

(assert (=> d!1747357 (= (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) lt!2245972)))

(declare-fun b!5515368 () Bool)

(assert (=> b!5515368 (= e!3410576 (Cons!62686 (h!69134 s!2326) Nil!62686))))

(assert (= (and d!1747357 c!964123) b!5515368))

(assert (= (and d!1747357 (not c!964123)) b!5515369))

(assert (= (and d!1747357 res!2349936) b!5515370))

(assert (= (and b!5515370 res!2349935) b!5515371))

(declare-fun m!6519434 () Bool)

(assert (=> b!5515369 m!6519434))

(declare-fun m!6519436 () Bool)

(assert (=> b!5515370 m!6519436))

(declare-fun m!6519438 () Bool)

(assert (=> b!5515370 m!6519438))

(declare-fun m!6519440 () Bool)

(assert (=> b!5515370 m!6519440))

(declare-fun m!6519442 () Bool)

(assert (=> d!1747357 m!6519442))

(declare-fun m!6519444 () Bool)

(assert (=> d!1747357 m!6519444))

(declare-fun m!6519446 () Bool)

(assert (=> d!1747357 m!6519446))

(assert (=> b!5514264 d!1747357))

(declare-fun d!1747359 () Bool)

(assert (=> d!1747359 (= (++!13753 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (t!376057 s!2326)) s!2326)))

(declare-fun lt!2245975 () Unit!155466)

(declare-fun choose!41923 (List!62810 C!31276 List!62810 List!62810) Unit!155466)

(assert (=> d!1747359 (= lt!2245975 (choose!41923 Nil!62686 (h!69134 s!2326) (t!376057 s!2326) s!2326))))

(assert (=> d!1747359 (= (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) (t!376057 s!2326))) s!2326)))

(assert (=> d!1747359 (= (lemmaMoveElementToOtherListKeepsConcatEq!1922 Nil!62686 (h!69134 s!2326) (t!376057 s!2326) s!2326) lt!2245975)))

(declare-fun bs!1271146 () Bool)

(assert (= bs!1271146 d!1747359))

(assert (=> bs!1271146 m!6518556))

(assert (=> bs!1271146 m!6518556))

(assert (=> bs!1271146 m!6518558))

(declare-fun m!6519448 () Bool)

(assert (=> bs!1271146 m!6519448))

(declare-fun m!6519450 () Bool)

(assert (=> bs!1271146 m!6519450))

(assert (=> b!5514264 d!1747359))

(declare-fun b!5515372 () Bool)

(declare-fun e!3410578 () Bool)

(assert (=> b!5515372 (= e!3410578 (matchR!7688 (regTwo!31518 r!7292) (t!376057 s!2326)))))

(declare-fun b!5515373 () Bool)

(declare-fun e!3410582 () Bool)

(declare-fun lt!2245976 () Option!15512)

(assert (=> b!5515373 (= e!3410582 (= (++!13753 (_1!35903 (get!21572 lt!2245976)) (_2!35903 (get!21572 lt!2245976))) s!2326))))

(declare-fun b!5515374 () Bool)

(declare-fun lt!2245978 () Unit!155466)

(declare-fun lt!2245977 () Unit!155466)

(assert (=> b!5515374 (= lt!2245978 lt!2245977)))

(assert (=> b!5515374 (= (++!13753 (++!13753 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (Cons!62686 (h!69134 (t!376057 s!2326)) Nil!62686)) (t!376057 (t!376057 s!2326))) s!2326)))

(assert (=> b!5515374 (= lt!2245977 (lemmaMoveElementToOtherListKeepsConcatEq!1922 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (h!69134 (t!376057 s!2326)) (t!376057 (t!376057 s!2326)) s!2326))))

(declare-fun e!3410581 () Option!15512)

(assert (=> b!5515374 (= e!3410581 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) (++!13753 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (Cons!62686 (h!69134 (t!376057 s!2326)) Nil!62686)) (t!376057 (t!376057 s!2326)) s!2326))))

(declare-fun b!5515375 () Bool)

(declare-fun e!3410579 () Option!15512)

(assert (=> b!5515375 (= e!3410579 (Some!15511 (tuple2!65201 (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (t!376057 s!2326))))))

(declare-fun b!5515376 () Bool)

(declare-fun e!3410580 () Bool)

(assert (=> b!5515376 (= e!3410580 (not (isDefined!12215 lt!2245976)))))

(declare-fun d!1747361 () Bool)

(assert (=> d!1747361 e!3410580))

(declare-fun res!2349938 () Bool)

(assert (=> d!1747361 (=> res!2349938 e!3410580)))

(assert (=> d!1747361 (= res!2349938 e!3410582)))

(declare-fun res!2349941 () Bool)

(assert (=> d!1747361 (=> (not res!2349941) (not e!3410582))))

(assert (=> d!1747361 (= res!2349941 (isDefined!12215 lt!2245976))))

(assert (=> d!1747361 (= lt!2245976 e!3410579)))

(declare-fun c!964124 () Bool)

(assert (=> d!1747361 (= c!964124 e!3410578)))

(declare-fun res!2349937 () Bool)

(assert (=> d!1747361 (=> (not res!2349937) (not e!3410578))))

(assert (=> d!1747361 (= res!2349937 (matchR!7688 (regOne!31518 r!7292) (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686))))))

(assert (=> d!1747361 (validRegex!7239 (regOne!31518 r!7292))))

(assert (=> d!1747361 (= (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) (++!13753 Nil!62686 (Cons!62686 (h!69134 s!2326) Nil!62686)) (t!376057 s!2326) s!2326) lt!2245976)))

(declare-fun b!5515377 () Bool)

(declare-fun res!2349939 () Bool)

(assert (=> b!5515377 (=> (not res!2349939) (not e!3410582))))

(assert (=> b!5515377 (= res!2349939 (matchR!7688 (regOne!31518 r!7292) (_1!35903 (get!21572 lt!2245976))))))

(declare-fun b!5515378 () Bool)

(assert (=> b!5515378 (= e!3410579 e!3410581)))

(declare-fun c!964125 () Bool)

(assert (=> b!5515378 (= c!964125 ((_ is Nil!62686) (t!376057 s!2326)))))

(declare-fun b!5515379 () Bool)

(declare-fun res!2349940 () Bool)

(assert (=> b!5515379 (=> (not res!2349940) (not e!3410582))))

(assert (=> b!5515379 (= res!2349940 (matchR!7688 (regTwo!31518 r!7292) (_2!35903 (get!21572 lt!2245976))))))

(declare-fun b!5515380 () Bool)

(assert (=> b!5515380 (= e!3410581 None!15511)))

(assert (= (and d!1747361 res!2349937) b!5515372))

(assert (= (and d!1747361 c!964124) b!5515375))

(assert (= (and d!1747361 (not c!964124)) b!5515378))

(assert (= (and b!5515378 c!964125) b!5515380))

(assert (= (and b!5515378 (not c!964125)) b!5515374))

(assert (= (and d!1747361 res!2349941) b!5515377))

(assert (= (and b!5515377 res!2349939) b!5515379))

(assert (= (and b!5515379 res!2349940) b!5515373))

(assert (= (and d!1747361 (not res!2349938)) b!5515376))

(declare-fun m!6519452 () Bool)

(assert (=> b!5515376 m!6519452))

(declare-fun m!6519454 () Bool)

(assert (=> b!5515379 m!6519454))

(declare-fun m!6519456 () Bool)

(assert (=> b!5515379 m!6519456))

(assert (=> b!5515377 m!6519454))

(declare-fun m!6519458 () Bool)

(assert (=> b!5515377 m!6519458))

(assert (=> b!5515374 m!6518556))

(declare-fun m!6519460 () Bool)

(assert (=> b!5515374 m!6519460))

(assert (=> b!5515374 m!6519460))

(declare-fun m!6519462 () Bool)

(assert (=> b!5515374 m!6519462))

(assert (=> b!5515374 m!6518556))

(declare-fun m!6519464 () Bool)

(assert (=> b!5515374 m!6519464))

(assert (=> b!5515374 m!6519460))

(declare-fun m!6519466 () Bool)

(assert (=> b!5515374 m!6519466))

(assert (=> b!5515373 m!6519454))

(declare-fun m!6519468 () Bool)

(assert (=> b!5515373 m!6519468))

(declare-fun m!6519470 () Bool)

(assert (=> b!5515372 m!6519470))

(assert (=> d!1747361 m!6519452))

(assert (=> d!1747361 m!6518556))

(declare-fun m!6519472 () Bool)

(assert (=> d!1747361 m!6519472))

(assert (=> d!1747361 m!6518570))

(assert (=> b!5514264 d!1747361))

(declare-fun bs!1271147 () Bool)

(declare-fun d!1747363 () Bool)

(assert (= bs!1271147 (and d!1747363 d!1747325)))

(declare-fun lambda!295596 () Int)

(assert (=> bs!1271147 (= lambda!295596 lambda!295588)))

(declare-fun bs!1271148 () Bool)

(assert (= bs!1271148 (and d!1747363 d!1747347)))

(assert (=> bs!1271148 (= lambda!295596 lambda!295595)))

(assert (=> d!1747363 (= (nullableZipper!1531 lt!2245841) (exists!2136 lt!2245841 lambda!295596))))

(declare-fun bs!1271149 () Bool)

(assert (= bs!1271149 d!1747363))

(declare-fun m!6519474 () Bool)

(assert (=> bs!1271149 m!6519474))

(assert (=> b!5514615 d!1747363))

(declare-fun b!5515381 () Bool)

(declare-fun e!3410584 () Bool)

(declare-fun e!3410583 () Bool)

(assert (=> b!5515381 (= e!3410584 e!3410583)))

(declare-fun res!2349945 () Bool)

(assert (=> b!5515381 (=> (not res!2349945) (not e!3410583))))

(declare-fun call!408096 () Bool)

(assert (=> b!5515381 (= res!2349945 call!408096)))

(declare-fun d!1747365 () Bool)

(declare-fun res!2349942 () Bool)

(declare-fun e!3410587 () Bool)

(assert (=> d!1747365 (=> res!2349942 e!3410587)))

(assert (=> d!1747365 (= res!2349942 ((_ is ElementMatch!15503) lt!2245926))))

(assert (=> d!1747365 (= (validRegex!7239 lt!2245926) e!3410587)))

(declare-fun b!5515382 () Bool)

(declare-fun res!2349944 () Bool)

(declare-fun e!3410585 () Bool)

(assert (=> b!5515382 (=> (not res!2349944) (not e!3410585))))

(assert (=> b!5515382 (= res!2349944 call!408096)))

(declare-fun e!3410586 () Bool)

(assert (=> b!5515382 (= e!3410586 e!3410585)))

(declare-fun bm!408090 () Bool)

(declare-fun call!408097 () Bool)

(declare-fun call!408095 () Bool)

(assert (=> bm!408090 (= call!408097 call!408095)))

(declare-fun b!5515383 () Bool)

(declare-fun e!3410589 () Bool)

(assert (=> b!5515383 (= e!3410589 call!408095)))

(declare-fun b!5515384 () Bool)

(assert (=> b!5515384 (= e!3410583 call!408097)))

(declare-fun b!5515385 () Bool)

(assert (=> b!5515385 (= e!3410585 call!408097)))

(declare-fun b!5515386 () Bool)

(declare-fun e!3410588 () Bool)

(assert (=> b!5515386 (= e!3410588 e!3410589)))

(declare-fun res!2349943 () Bool)

(assert (=> b!5515386 (= res!2349943 (not (nullable!5537 (reg!15832 lt!2245926))))))

(assert (=> b!5515386 (=> (not res!2349943) (not e!3410589))))

(declare-fun b!5515387 () Bool)

(assert (=> b!5515387 (= e!3410587 e!3410588)))

(declare-fun c!964126 () Bool)

(assert (=> b!5515387 (= c!964126 ((_ is Star!15503) lt!2245926))))

(declare-fun c!964127 () Bool)

(declare-fun bm!408091 () Bool)

(assert (=> bm!408091 (= call!408095 (validRegex!7239 (ite c!964126 (reg!15832 lt!2245926) (ite c!964127 (regTwo!31519 lt!2245926) (regTwo!31518 lt!2245926)))))))

(declare-fun b!5515388 () Bool)

(declare-fun res!2349946 () Bool)

(assert (=> b!5515388 (=> res!2349946 e!3410584)))

(assert (=> b!5515388 (= res!2349946 (not ((_ is Concat!24348) lt!2245926)))))

(assert (=> b!5515388 (= e!3410586 e!3410584)))

(declare-fun b!5515389 () Bool)

(assert (=> b!5515389 (= e!3410588 e!3410586)))

(assert (=> b!5515389 (= c!964127 ((_ is Union!15503) lt!2245926))))

(declare-fun bm!408092 () Bool)

(assert (=> bm!408092 (= call!408096 (validRegex!7239 (ite c!964127 (regOne!31519 lt!2245926) (regOne!31518 lt!2245926))))))

(assert (= (and d!1747365 (not res!2349942)) b!5515387))

(assert (= (and b!5515387 c!964126) b!5515386))

(assert (= (and b!5515387 (not c!964126)) b!5515389))

(assert (= (and b!5515386 res!2349943) b!5515383))

(assert (= (and b!5515389 c!964127) b!5515382))

(assert (= (and b!5515389 (not c!964127)) b!5515388))

(assert (= (and b!5515382 res!2349944) b!5515385))

(assert (= (and b!5515388 (not res!2349946)) b!5515381))

(assert (= (and b!5515381 res!2349945) b!5515384))

(assert (= (or b!5515385 b!5515384) bm!408090))

(assert (= (or b!5515382 b!5515381) bm!408092))

(assert (= (or b!5515383 bm!408090) bm!408091))

(declare-fun m!6519476 () Bool)

(assert (=> b!5515386 m!6519476))

(declare-fun m!6519478 () Bool)

(assert (=> bm!408091 m!6519478))

(declare-fun m!6519480 () Bool)

(assert (=> bm!408092 m!6519480))

(assert (=> d!1747021 d!1747365))

(declare-fun d!1747367 () Bool)

(declare-fun res!2349947 () Bool)

(declare-fun e!3410590 () Bool)

(assert (=> d!1747367 (=> res!2349947 e!3410590)))

(assert (=> d!1747367 (= res!2349947 ((_ is Nil!62684) (unfocusZipperList!931 zl!343)))))

(assert (=> d!1747367 (= (forall!14679 (unfocusZipperList!931 zl!343) lambda!295536) e!3410590)))

(declare-fun b!5515390 () Bool)

(declare-fun e!3410591 () Bool)

(assert (=> b!5515390 (= e!3410590 e!3410591)))

(declare-fun res!2349948 () Bool)

(assert (=> b!5515390 (=> (not res!2349948) (not e!3410591))))

(assert (=> b!5515390 (= res!2349948 (dynLambda!24492 lambda!295536 (h!69132 (unfocusZipperList!931 zl!343))))))

(declare-fun b!5515391 () Bool)

(assert (=> b!5515391 (= e!3410591 (forall!14679 (t!376055 (unfocusZipperList!931 zl!343)) lambda!295536))))

(assert (= (and d!1747367 (not res!2349947)) b!5515390))

(assert (= (and b!5515390 res!2349948) b!5515391))

(declare-fun b_lambda!209109 () Bool)

(assert (=> (not b_lambda!209109) (not b!5515390)))

(declare-fun m!6519482 () Bool)

(assert (=> b!5515390 m!6519482))

(declare-fun m!6519484 () Bool)

(assert (=> b!5515391 m!6519484))

(assert (=> d!1747021 d!1747367))

(declare-fun b!5515392 () Bool)

(declare-fun e!3410592 () (InoxSet Context!9774))

(assert (=> b!5515392 (= e!3410592 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!408093 () Bool)

(declare-fun call!408098 () (InoxSet Context!9774))

(assert (=> bm!408093 (= call!408098 (derivationStepZipperDown!845 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))) (h!69134 s!2326)))))

(declare-fun d!1747369 () Bool)

(declare-fun c!964128 () Bool)

(declare-fun e!3410593 () Bool)

(assert (=> d!1747369 (= c!964128 e!3410593)))

(declare-fun res!2349949 () Bool)

(assert (=> d!1747369 (=> (not res!2349949) (not e!3410593))))

(assert (=> d!1747369 (= res!2349949 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))))

(declare-fun e!3410594 () (InoxSet Context!9774))

(assert (=> d!1747369 (= (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (h!69134 s!2326)) e!3410594)))

(declare-fun b!5515393 () Bool)

(assert (=> b!5515393 (= e!3410594 e!3410592)))

(declare-fun c!964129 () Bool)

(assert (=> b!5515393 (= c!964129 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))))

(declare-fun b!5515394 () Bool)

(assert (=> b!5515394 (= e!3410592 call!408098)))

(declare-fun b!5515395 () Bool)

(assert (=> b!5515395 (= e!3410593 (nullable!5537 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))))))

(declare-fun b!5515396 () Bool)

(assert (=> b!5515396 (= e!3410594 ((_ map or) call!408098 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))) (h!69134 s!2326))))))

(assert (= (and d!1747369 res!2349949) b!5515395))

(assert (= (and d!1747369 c!964128) b!5515396))

(assert (= (and d!1747369 (not c!964128)) b!5515393))

(assert (= (and b!5515393 c!964129) b!5515394))

(assert (= (and b!5515393 (not c!964129)) b!5515392))

(assert (= (or b!5515396 b!5515394) bm!408093))

(declare-fun m!6519486 () Bool)

(assert (=> bm!408093 m!6519486))

(declare-fun m!6519488 () Bool)

(assert (=> b!5515395 m!6519488))

(declare-fun m!6519490 () Bool)

(assert (=> b!5515396 m!6519490))

(assert (=> b!5514635 d!1747369))

(declare-fun b!5515397 () Bool)

(declare-fun e!3410600 () (InoxSet Context!9774))

(declare-fun call!408100 () (InoxSet Context!9774))

(assert (=> b!5515397 (= e!3410600 call!408100)))

(declare-fun b!5515398 () Bool)

(declare-fun c!964130 () Bool)

(assert (=> b!5515398 (= c!964130 ((_ is Star!15503) (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))))))

(declare-fun e!3410595 () (InoxSet Context!9774))

(assert (=> b!5515398 (= e!3410595 e!3410600)))

(declare-fun b!5515399 () Bool)

(declare-fun e!3410597 () (InoxSet Context!9774))

(declare-fun call!408099 () (InoxSet Context!9774))

(declare-fun call!408101 () (InoxSet Context!9774))

(assert (=> b!5515399 (= e!3410597 ((_ map or) call!408099 call!408101))))

(declare-fun c!964134 () Bool)

(declare-fun bm!408094 () Bool)

(declare-fun call!408103 () List!62808)

(assert (=> bm!408094 (= call!408099 (derivationStepZipperDown!845 (ite c!964134 (regOne!31519 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))) (regOne!31518 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292))))) (ite c!964134 (ite c!963889 lt!2245849 (Context!9775 call!407935)) (Context!9775 call!408103)) (h!69134 s!2326)))))

(declare-fun bm!408095 () Bool)

(declare-fun call!408102 () (InoxSet Context!9774))

(declare-fun c!964133 () Bool)

(declare-fun c!964132 () Bool)

(declare-fun call!408104 () List!62808)

(assert (=> bm!408095 (= call!408102 (derivationStepZipperDown!845 (ite c!964134 (regTwo!31519 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))) (ite c!964133 (regTwo!31518 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))) (ite c!964132 (regOne!31518 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))) (reg!15832 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292))))))) (ite (or c!964134 c!964133) (ite c!963889 lt!2245849 (Context!9775 call!407935)) (Context!9775 call!408104)) (h!69134 s!2326)))))

(declare-fun bm!408096 () Bool)

(assert (=> bm!408096 (= call!408103 ($colon$colon!1584 (exprs!5387 (ite c!963889 lt!2245849 (Context!9775 call!407935))) (ite (or c!964133 c!964132) (regTwo!31518 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))) (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292))))))))

(declare-fun b!5515400 () Bool)

(declare-fun e!3410596 () (InoxSet Context!9774))

(declare-fun e!3410599 () (InoxSet Context!9774))

(assert (=> b!5515400 (= e!3410596 e!3410599)))

(assert (=> b!5515400 (= c!964134 ((_ is Union!15503) (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))))))

(declare-fun b!5515401 () Bool)

(assert (=> b!5515401 (= e!3410599 ((_ map or) call!408099 call!408102))))

(declare-fun bm!408097 () Bool)

(assert (=> bm!408097 (= call!408104 call!408103)))

(declare-fun bm!408098 () Bool)

(assert (=> bm!408098 (= call!408101 call!408102)))

(declare-fun b!5515402 () Bool)

(declare-fun e!3410598 () Bool)

(assert (=> b!5515402 (= e!3410598 (nullable!5537 (regOne!31518 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292))))))))

(declare-fun bm!408099 () Bool)

(assert (=> bm!408099 (= call!408100 call!408101)))

(declare-fun b!5515403 () Bool)

(assert (=> b!5515403 (= e!3410600 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515404 () Bool)

(assert (=> b!5515404 (= e!3410597 e!3410595)))

(assert (=> b!5515404 (= c!964132 ((_ is Concat!24348) (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))))))

(declare-fun b!5515405 () Bool)

(assert (=> b!5515405 (= e!3410595 call!408100)))

(declare-fun b!5515406 () Bool)

(assert (=> b!5515406 (= e!3410596 (store ((as const (Array Context!9774 Bool)) false) (ite c!963889 lt!2245849 (Context!9775 call!407935)) true))))

(declare-fun b!5515407 () Bool)

(assert (=> b!5515407 (= c!964133 e!3410598)))

(declare-fun res!2349950 () Bool)

(assert (=> b!5515407 (=> (not res!2349950) (not e!3410598))))

(assert (=> b!5515407 (= res!2349950 ((_ is Concat!24348) (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))))))

(assert (=> b!5515407 (= e!3410599 e!3410597)))

(declare-fun c!964131 () Bool)

(declare-fun d!1747371 () Bool)

(assert (=> d!1747371 (= c!964131 (and ((_ is ElementMatch!15503) (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))) (= (c!963749 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292)))) (h!69134 s!2326))))))

(assert (=> d!1747371 (= (derivationStepZipperDown!845 (ite c!963889 (regOne!31519 (regTwo!31518 r!7292)) (regOne!31518 (regTwo!31518 r!7292))) (ite c!963889 lt!2245849 (Context!9775 call!407935)) (h!69134 s!2326)) e!3410596)))

(assert (= (and d!1747371 c!964131) b!5515406))

(assert (= (and d!1747371 (not c!964131)) b!5515400))

(assert (= (and b!5515400 c!964134) b!5515401))

(assert (= (and b!5515400 (not c!964134)) b!5515407))

(assert (= (and b!5515407 res!2349950) b!5515402))

(assert (= (and b!5515407 c!964133) b!5515399))

(assert (= (and b!5515407 (not c!964133)) b!5515404))

(assert (= (and b!5515404 c!964132) b!5515405))

(assert (= (and b!5515404 (not c!964132)) b!5515398))

(assert (= (and b!5515398 c!964130) b!5515397))

(assert (= (and b!5515398 (not c!964130)) b!5515403))

(assert (= (or b!5515405 b!5515397) bm!408097))

(assert (= (or b!5515405 b!5515397) bm!408099))

(assert (= (or b!5515399 bm!408097) bm!408096))

(assert (= (or b!5515399 bm!408099) bm!408098))

(assert (= (or b!5515401 bm!408098) bm!408095))

(assert (= (or b!5515401 b!5515399) bm!408094))

(declare-fun m!6519492 () Bool)

(assert (=> bm!408096 m!6519492))

(declare-fun m!6519494 () Bool)

(assert (=> b!5515402 m!6519494))

(declare-fun m!6519496 () Bool)

(assert (=> bm!408094 m!6519496))

(declare-fun m!6519498 () Bool)

(assert (=> bm!408095 m!6519498))

(declare-fun m!6519500 () Bool)

(assert (=> b!5515406 m!6519500))

(assert (=> bm!407926 d!1747371))

(assert (=> d!1747039 d!1747037))

(assert (=> d!1747039 d!1747035))

(declare-fun d!1747373 () Bool)

(assert (=> d!1747373 (= (matchR!7688 r!7292 s!2326) (matchRSpec!2606 r!7292 s!2326))))

(assert (=> d!1747373 true))

(declare-fun _$88!3778 () Unit!155466)

(assert (=> d!1747373 (= (choose!41920 r!7292 s!2326) _$88!3778)))

(declare-fun bs!1271150 () Bool)

(assert (= bs!1271150 d!1747373))

(assert (=> bs!1271150 m!6518292))

(assert (=> bs!1271150 m!6518290))

(assert (=> d!1747039 d!1747373))

(assert (=> d!1747039 d!1747063))

(declare-fun b!5515408 () Bool)

(declare-fun e!3410606 () (InoxSet Context!9774))

(declare-fun call!408106 () (InoxSet Context!9774))

(assert (=> b!5515408 (= e!3410606 call!408106)))

(declare-fun b!5515409 () Bool)

(declare-fun c!964135 () Bool)

(assert (=> b!5515409 (= c!964135 ((_ is Star!15503) (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))))))

(declare-fun e!3410601 () (InoxSet Context!9774))

(assert (=> b!5515409 (= e!3410601 e!3410606)))

(declare-fun b!5515410 () Bool)

(declare-fun e!3410603 () (InoxSet Context!9774))

(declare-fun call!408105 () (InoxSet Context!9774))

(declare-fun call!408107 () (InoxSet Context!9774))

(assert (=> b!5515410 (= e!3410603 ((_ map or) call!408105 call!408107))))

(declare-fun c!964139 () Bool)

(declare-fun call!408109 () List!62808)

(declare-fun bm!408100 () Bool)

(assert (=> bm!408100 (= call!408105 (derivationStepZipperDown!845 (ite c!964139 (regOne!31519 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))) (regOne!31518 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292))))) (ite c!964139 (ite c!963896 lt!2245851 (Context!9775 call!407942)) (Context!9775 call!408109)) (h!69134 s!2326)))))

(declare-fun c!964137 () Bool)

(declare-fun call!408108 () (InoxSet Context!9774))

(declare-fun c!964138 () Bool)

(declare-fun call!408110 () List!62808)

(declare-fun bm!408101 () Bool)

(assert (=> bm!408101 (= call!408108 (derivationStepZipperDown!845 (ite c!964139 (regTwo!31519 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))) (ite c!964138 (regTwo!31518 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))) (ite c!964137 (regOne!31518 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))) (reg!15832 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292))))))) (ite (or c!964139 c!964138) (ite c!963896 lt!2245851 (Context!9775 call!407942)) (Context!9775 call!408110)) (h!69134 s!2326)))))

(declare-fun bm!408102 () Bool)

(assert (=> bm!408102 (= call!408109 ($colon$colon!1584 (exprs!5387 (ite c!963896 lt!2245851 (Context!9775 call!407942))) (ite (or c!964138 c!964137) (regTwo!31518 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))) (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292))))))))

(declare-fun b!5515411 () Bool)

(declare-fun e!3410602 () (InoxSet Context!9774))

(declare-fun e!3410605 () (InoxSet Context!9774))

(assert (=> b!5515411 (= e!3410602 e!3410605)))

(assert (=> b!5515411 (= c!964139 ((_ is Union!15503) (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))))))

(declare-fun b!5515412 () Bool)

(assert (=> b!5515412 (= e!3410605 ((_ map or) call!408105 call!408108))))

(declare-fun bm!408103 () Bool)

(assert (=> bm!408103 (= call!408110 call!408109)))

(declare-fun bm!408104 () Bool)

(assert (=> bm!408104 (= call!408107 call!408108)))

(declare-fun b!5515413 () Bool)

(declare-fun e!3410604 () Bool)

(assert (=> b!5515413 (= e!3410604 (nullable!5537 (regOne!31518 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292))))))))

(declare-fun bm!408105 () Bool)

(assert (=> bm!408105 (= call!408106 call!408107)))

(declare-fun b!5515414 () Bool)

(assert (=> b!5515414 (= e!3410606 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515415 () Bool)

(assert (=> b!5515415 (= e!3410603 e!3410601)))

(assert (=> b!5515415 (= c!964137 ((_ is Concat!24348) (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))))))

(declare-fun b!5515416 () Bool)

(assert (=> b!5515416 (= e!3410601 call!408106)))

(declare-fun b!5515417 () Bool)

(assert (=> b!5515417 (= e!3410602 (store ((as const (Array Context!9774 Bool)) false) (ite c!963896 lt!2245851 (Context!9775 call!407942)) true))))

(declare-fun b!5515418 () Bool)

(assert (=> b!5515418 (= c!964138 e!3410604)))

(declare-fun res!2349951 () Bool)

(assert (=> b!5515418 (=> (not res!2349951) (not e!3410604))))

(assert (=> b!5515418 (= res!2349951 ((_ is Concat!24348) (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))))))

(assert (=> b!5515418 (= e!3410605 e!3410603)))

(declare-fun d!1747375 () Bool)

(declare-fun c!964136 () Bool)

(assert (=> d!1747375 (= c!964136 (and ((_ is ElementMatch!15503) (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))) (= (c!963749 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))) (h!69134 s!2326))))))

(assert (=> d!1747375 (= (derivationStepZipperDown!845 (ite c!963896 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292))) (ite c!963896 lt!2245851 (Context!9775 call!407942)) (h!69134 s!2326)) e!3410602)))

(assert (= (and d!1747375 c!964136) b!5515417))

(assert (= (and d!1747375 (not c!964136)) b!5515411))

(assert (= (and b!5515411 c!964139) b!5515412))

(assert (= (and b!5515411 (not c!964139)) b!5515418))

(assert (= (and b!5515418 res!2349951) b!5515413))

(assert (= (and b!5515418 c!964138) b!5515410))

(assert (= (and b!5515418 (not c!964138)) b!5515415))

(assert (= (and b!5515415 c!964137) b!5515416))

(assert (= (and b!5515415 (not c!964137)) b!5515409))

(assert (= (and b!5515409 c!964135) b!5515408))

(assert (= (and b!5515409 (not c!964135)) b!5515414))

(assert (= (or b!5515416 b!5515408) bm!408103))

(assert (= (or b!5515416 b!5515408) bm!408105))

(assert (= (or b!5515410 bm!408103) bm!408102))

(assert (= (or b!5515410 bm!408105) bm!408104))

(assert (= (or b!5515412 bm!408104) bm!408101))

(assert (= (or b!5515412 b!5515410) bm!408100))

(declare-fun m!6519502 () Bool)

(assert (=> bm!408102 m!6519502))

(declare-fun m!6519504 () Bool)

(assert (=> b!5515413 m!6519504))

(declare-fun m!6519506 () Bool)

(assert (=> bm!408100 m!6519506))

(declare-fun m!6519508 () Bool)

(assert (=> bm!408101 m!6519508))

(declare-fun m!6519510 () Bool)

(assert (=> b!5515417 m!6519510))

(assert (=> bm!407933 d!1747375))

(declare-fun b!5515419 () Bool)

(declare-fun e!3410612 () (InoxSet Context!9774))

(declare-fun call!408112 () (InoxSet Context!9774))

(assert (=> b!5515419 (= e!3410612 call!408112)))

(declare-fun b!5515420 () Bool)

(declare-fun c!964140 () Bool)

(assert (=> b!5515420 (= c!964140 ((_ is Star!15503) (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))

(declare-fun e!3410607 () (InoxSet Context!9774))

(assert (=> b!5515420 (= e!3410607 e!3410612)))

(declare-fun b!5515421 () Bool)

(declare-fun e!3410609 () (InoxSet Context!9774))

(declare-fun call!408111 () (InoxSet Context!9774))

(declare-fun call!408113 () (InoxSet Context!9774))

(assert (=> b!5515421 (= e!3410609 ((_ map or) call!408111 call!408113))))

(declare-fun c!964144 () Bool)

(declare-fun bm!408106 () Bool)

(declare-fun call!408115 () List!62808)

(assert (=> bm!408106 (= call!408111 (derivationStepZipperDown!845 (ite c!964144 (regOne!31519 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (regOne!31518 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))) (ite c!964144 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (Context!9775 call!408115)) (h!69134 s!2326)))))

(declare-fun c!964142 () Bool)

(declare-fun c!964143 () Bool)

(declare-fun call!408116 () List!62808)

(declare-fun bm!408107 () Bool)

(declare-fun call!408114 () (InoxSet Context!9774))

(assert (=> bm!408107 (= call!408114 (derivationStepZipperDown!845 (ite c!964144 (regTwo!31519 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (ite c!964143 (regTwo!31518 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (ite c!964142 (regOne!31518 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (reg!15832 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))) (ite (or c!964144 c!964143) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (Context!9775 call!408116)) (h!69134 s!2326)))))

(declare-fun bm!408108 () Bool)

(assert (=> bm!408108 (= call!408115 ($colon$colon!1584 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))) (ite (or c!964143 c!964142) (regTwo!31518 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))))

(declare-fun b!5515422 () Bool)

(declare-fun e!3410608 () (InoxSet Context!9774))

(declare-fun e!3410611 () (InoxSet Context!9774))

(assert (=> b!5515422 (= e!3410608 e!3410611)))

(assert (=> b!5515422 (= c!964144 ((_ is Union!15503) (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))

(declare-fun b!5515423 () Bool)

(assert (=> b!5515423 (= e!3410611 ((_ map or) call!408111 call!408114))))

(declare-fun bm!408109 () Bool)

(assert (=> bm!408109 (= call!408116 call!408115)))

(declare-fun bm!408110 () Bool)

(assert (=> bm!408110 (= call!408113 call!408114)))

(declare-fun b!5515424 () Bool)

(declare-fun e!3410610 () Bool)

(assert (=> b!5515424 (= e!3410610 (nullable!5537 (regOne!31518 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))))))))

(declare-fun bm!408111 () Bool)

(assert (=> bm!408111 (= call!408112 call!408113)))

(declare-fun b!5515425 () Bool)

(assert (=> b!5515425 (= e!3410612 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515426 () Bool)

(assert (=> b!5515426 (= e!3410609 e!3410607)))

(assert (=> b!5515426 (= c!964142 ((_ is Concat!24348) (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))

(declare-fun b!5515427 () Bool)

(assert (=> b!5515427 (= e!3410607 call!408112)))

(declare-fun b!5515428 () Bool)

(assert (=> b!5515428 (= e!3410608 (store ((as const (Array Context!9774 Bool)) false) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) true))))

(declare-fun b!5515429 () Bool)

(assert (=> b!5515429 (= c!964143 e!3410610)))

(declare-fun res!2349952 () Bool)

(assert (=> b!5515429 (=> (not res!2349952) (not e!3410610))))

(assert (=> b!5515429 (= res!2349952 ((_ is Concat!24348) (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))

(assert (=> b!5515429 (= e!3410611 e!3410609)))

(declare-fun d!1747377 () Bool)

(declare-fun c!964141 () Bool)

(assert (=> d!1747377 (= c!964141 (and ((_ is ElementMatch!15503) (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (= (c!963749 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (h!69134 s!2326))))))

(assert (=> d!1747377 (= (derivationStepZipperDown!845 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684)))) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (h!69134 s!2326)) e!3410608)))

(assert (= (and d!1747377 c!964141) b!5515428))

(assert (= (and d!1747377 (not c!964141)) b!5515422))

(assert (= (and b!5515422 c!964144) b!5515423))

(assert (= (and b!5515422 (not c!964144)) b!5515429))

(assert (= (and b!5515429 res!2349952) b!5515424))

(assert (= (and b!5515429 c!964143) b!5515421))

(assert (= (and b!5515429 (not c!964143)) b!5515426))

(assert (= (and b!5515426 c!964142) b!5515427))

(assert (= (and b!5515426 (not c!964142)) b!5515420))

(assert (= (and b!5515420 c!964140) b!5515419))

(assert (= (and b!5515420 (not c!964140)) b!5515425))

(assert (= (or b!5515427 b!5515419) bm!408109))

(assert (= (or b!5515427 b!5515419) bm!408111))

(assert (= (or b!5515421 bm!408109) bm!408108))

(assert (= (or b!5515421 bm!408111) bm!408110))

(assert (= (or b!5515423 bm!408110) bm!408107))

(assert (= (or b!5515423 b!5515421) bm!408106))

(declare-fun m!6519512 () Bool)

(assert (=> bm!408108 m!6519512))

(declare-fun m!6519514 () Bool)

(assert (=> b!5515424 m!6519514))

(declare-fun m!6519516 () Bool)

(assert (=> bm!408106 m!6519516))

(declare-fun m!6519518 () Bool)

(assert (=> bm!408107 m!6519518))

(declare-fun m!6519520 () Bool)

(assert (=> b!5515428 m!6519520))

(assert (=> bm!407955 d!1747377))

(declare-fun d!1747379 () Bool)

(assert (=> d!1747379 (= (isEmpty!34470 (tail!10908 s!2326)) ((_ is Nil!62686) (tail!10908 s!2326)))))

(assert (=> b!5514574 d!1747379))

(declare-fun d!1747381 () Bool)

(assert (=> d!1747381 (= (tail!10908 s!2326) (t!376057 s!2326))))

(assert (=> b!5514574 d!1747381))

(declare-fun b!5515430 () Bool)

(declare-fun e!3410618 () (InoxSet Context!9774))

(declare-fun call!408118 () (InoxSet Context!9774))

(assert (=> b!5515430 (= e!3410618 call!408118)))

(declare-fun b!5515431 () Bool)

(declare-fun c!964145 () Bool)

(assert (=> b!5515431 (= c!964145 ((_ is Star!15503) (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(declare-fun e!3410613 () (InoxSet Context!9774))

(assert (=> b!5515431 (= e!3410613 e!3410618)))

(declare-fun b!5515432 () Bool)

(declare-fun e!3410615 () (InoxSet Context!9774))

(declare-fun call!408117 () (InoxSet Context!9774))

(declare-fun call!408119 () (InoxSet Context!9774))

(assert (=> b!5515432 (= e!3410615 ((_ map or) call!408117 call!408119))))

(declare-fun bm!408112 () Bool)

(declare-fun c!964149 () Bool)

(declare-fun call!408121 () List!62808)

(assert (=> bm!408112 (= call!408117 (derivationStepZipperDown!845 (ite c!964149 (regOne!31519 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))) (regOne!31518 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292)))) (ite c!964149 (ite c!963954 lt!2245849 (Context!9775 call!407958)) (Context!9775 call!408121)) (h!69134 s!2326)))))

(declare-fun call!408122 () List!62808)

(declare-fun c!964147 () Bool)

(declare-fun bm!408113 () Bool)

(declare-fun call!408120 () (InoxSet Context!9774))

(declare-fun c!964148 () Bool)

(assert (=> bm!408113 (= call!408120 (derivationStepZipperDown!845 (ite c!964149 (regTwo!31519 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))) (ite c!964148 (regTwo!31518 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))) (ite c!964147 (regOne!31518 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))) (reg!15832 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292)))))) (ite (or c!964149 c!964148) (ite c!963954 lt!2245849 (Context!9775 call!407958)) (Context!9775 call!408122)) (h!69134 s!2326)))))

(declare-fun bm!408114 () Bool)

(assert (=> bm!408114 (= call!408121 ($colon$colon!1584 (exprs!5387 (ite c!963954 lt!2245849 (Context!9775 call!407958))) (ite (or c!964148 c!964147) (regTwo!31518 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))) (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292)))))))

(declare-fun b!5515433 () Bool)

(declare-fun e!3410614 () (InoxSet Context!9774))

(declare-fun e!3410617 () (InoxSet Context!9774))

(assert (=> b!5515433 (= e!3410614 e!3410617)))

(assert (=> b!5515433 (= c!964149 ((_ is Union!15503) (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(declare-fun b!5515434 () Bool)

(assert (=> b!5515434 (= e!3410617 ((_ map or) call!408117 call!408120))))

(declare-fun bm!408115 () Bool)

(assert (=> bm!408115 (= call!408122 call!408121)))

(declare-fun bm!408116 () Bool)

(assert (=> bm!408116 (= call!408119 call!408120)))

(declare-fun b!5515435 () Bool)

(declare-fun e!3410616 () Bool)

(assert (=> b!5515435 (= e!3410616 (nullable!5537 (regOne!31518 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292)))))))

(declare-fun bm!408117 () Bool)

(assert (=> bm!408117 (= call!408118 call!408119)))

(declare-fun b!5515436 () Bool)

(assert (=> b!5515436 (= e!3410618 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515437 () Bool)

(assert (=> b!5515437 (= e!3410615 e!3410613)))

(assert (=> b!5515437 (= c!964147 ((_ is Concat!24348) (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(declare-fun b!5515438 () Bool)

(assert (=> b!5515438 (= e!3410613 call!408118)))

(declare-fun b!5515439 () Bool)

(assert (=> b!5515439 (= e!3410614 (store ((as const (Array Context!9774 Bool)) false) (ite c!963954 lt!2245849 (Context!9775 call!407958)) true))))

(declare-fun b!5515440 () Bool)

(assert (=> b!5515440 (= c!964148 e!3410616)))

(declare-fun res!2349953 () Bool)

(assert (=> b!5515440 (=> (not res!2349953) (not e!3410616))))

(assert (=> b!5515440 (= res!2349953 ((_ is Concat!24348) (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))))))

(assert (=> b!5515440 (= e!3410617 e!3410615)))

(declare-fun d!1747383 () Bool)

(declare-fun c!964146 () Bool)

(assert (=> d!1747383 (= c!964146 (and ((_ is ElementMatch!15503) (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))) (= (c!963749 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292))) (h!69134 s!2326))))))

(assert (=> d!1747383 (= (derivationStepZipperDown!845 (ite c!963954 (regOne!31519 r!7292) (regOne!31518 r!7292)) (ite c!963954 lt!2245849 (Context!9775 call!407958)) (h!69134 s!2326)) e!3410614)))

(assert (= (and d!1747383 c!964146) b!5515439))

(assert (= (and d!1747383 (not c!964146)) b!5515433))

(assert (= (and b!5515433 c!964149) b!5515434))

(assert (= (and b!5515433 (not c!964149)) b!5515440))

(assert (= (and b!5515440 res!2349953) b!5515435))

(assert (= (and b!5515440 c!964148) b!5515432))

(assert (= (and b!5515440 (not c!964148)) b!5515437))

(assert (= (and b!5515437 c!964147) b!5515438))

(assert (= (and b!5515437 (not c!964147)) b!5515431))

(assert (= (and b!5515431 c!964145) b!5515430))

(assert (= (and b!5515431 (not c!964145)) b!5515436))

(assert (= (or b!5515438 b!5515430) bm!408115))

(assert (= (or b!5515438 b!5515430) bm!408117))

(assert (= (or b!5515432 bm!408115) bm!408114))

(assert (= (or b!5515432 bm!408117) bm!408116))

(assert (= (or b!5515434 bm!408116) bm!408113))

(assert (= (or b!5515434 b!5515432) bm!408112))

(declare-fun m!6519522 () Bool)

(assert (=> bm!408114 m!6519522))

(declare-fun m!6519524 () Bool)

(assert (=> b!5515435 m!6519524))

(declare-fun m!6519526 () Bool)

(assert (=> bm!408112 m!6519526))

(declare-fun m!6519528 () Bool)

(assert (=> bm!408113 m!6519528))

(declare-fun m!6519530 () Bool)

(assert (=> b!5515439 m!6519530))

(assert (=> bm!407949 d!1747383))

(declare-fun d!1747385 () Bool)

(assert (=> d!1747385 true))

(assert (=> d!1747385 true))

(declare-fun res!2349956 () Bool)

(assert (=> d!1747385 (= (choose!41912 lambda!295488) res!2349956)))

(assert (=> d!1746971 d!1747385))

(declare-fun b!5515441 () Bool)

(declare-fun e!3410619 () (InoxSet Context!9774))

(assert (=> b!5515441 (= e!3410619 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!408118 () Bool)

(declare-fun call!408123 () (InoxSet Context!9774))

(assert (=> bm!408118 (= call!408123 (derivationStepZipperDown!845 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245851))))) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245851)))))) (h!69134 s!2326)))))

(declare-fun d!1747387 () Bool)

(declare-fun c!964150 () Bool)

(declare-fun e!3410620 () Bool)

(assert (=> d!1747387 (= c!964150 e!3410620)))

(declare-fun res!2349957 () Bool)

(assert (=> d!1747387 (=> (not res!2349957) (not e!3410620))))

(assert (=> d!1747387 (= res!2349957 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245851))))))))

(declare-fun e!3410621 () (InoxSet Context!9774))

(assert (=> d!1747387 (= (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 lt!2245851))) (h!69134 s!2326)) e!3410621)))

(declare-fun b!5515442 () Bool)

(assert (=> b!5515442 (= e!3410621 e!3410619)))

(declare-fun c!964151 () Bool)

(assert (=> b!5515442 (= c!964151 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245851))))))))

(declare-fun b!5515443 () Bool)

(assert (=> b!5515443 (= e!3410619 call!408123)))

(declare-fun b!5515444 () Bool)

(assert (=> b!5515444 (= e!3410620 (nullable!5537 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245851)))))))))

(declare-fun b!5515445 () Bool)

(assert (=> b!5515445 (= e!3410621 ((_ map or) call!408123 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245851)))))) (h!69134 s!2326))))))

(assert (= (and d!1747387 res!2349957) b!5515444))

(assert (= (and d!1747387 c!964150) b!5515445))

(assert (= (and d!1747387 (not c!964150)) b!5515442))

(assert (= (and b!5515442 c!964151) b!5515443))

(assert (= (and b!5515442 (not c!964151)) b!5515441))

(assert (= (or b!5515445 b!5515443) bm!408118))

(declare-fun m!6519532 () Bool)

(assert (=> bm!408118 m!6519532))

(declare-fun m!6519534 () Bool)

(assert (=> b!5515444 m!6519534))

(declare-fun m!6519536 () Bool)

(assert (=> b!5515445 m!6519536))

(assert (=> b!5514402 d!1747387))

(declare-fun d!1747389 () Bool)

(assert (=> d!1747389 (= (flatMap!1116 z!1189 lambda!295553) (choose!41916 z!1189 lambda!295553))))

(declare-fun bs!1271151 () Bool)

(assert (= bs!1271151 d!1747389))

(declare-fun m!6519538 () Bool)

(assert (=> bs!1271151 m!6519538))

(assert (=> d!1747059 d!1747389))

(assert (=> bs!1270962 d!1747003))

(declare-fun bs!1271152 () Bool)

(declare-fun d!1747391 () Bool)

(assert (= bs!1271152 (and d!1747391 d!1747025)))

(declare-fun lambda!295597 () Int)

(assert (=> bs!1271152 (= lambda!295597 lambda!295542)))

(declare-fun bs!1271153 () Bool)

(assert (= bs!1271153 (and d!1747391 d!1747043)))

(assert (=> bs!1271153 (= lambda!295597 lambda!295549)))

(declare-fun bs!1271154 () Bool)

(assert (= bs!1271154 (and d!1747391 d!1747023)))

(assert (=> bs!1271154 (= lambda!295597 lambda!295539)))

(declare-fun bs!1271155 () Bool)

(assert (= bs!1271155 (and d!1747391 d!1747045)))

(assert (=> bs!1271155 (= lambda!295597 lambda!295552)))

(declare-fun bs!1271156 () Bool)

(assert (= bs!1271156 (and d!1747391 d!1747021)))

(assert (=> bs!1271156 (= lambda!295597 lambda!295536)))

(assert (=> d!1747391 (= (inv!82004 setElem!36645) (forall!14679 (exprs!5387 setElem!36645) lambda!295597))))

(declare-fun bs!1271157 () Bool)

(assert (= bs!1271157 d!1747391))

(declare-fun m!6519540 () Bool)

(assert (=> bs!1271157 m!6519540))

(assert (=> setNonEmpty!36645 d!1747391))

(declare-fun d!1747393 () Bool)

(assert (=> d!1747393 (= (isDefined!12215 lt!2245900) (not (isEmpty!34469 lt!2245900)))))

(declare-fun bs!1271158 () Bool)

(assert (= bs!1271158 d!1747393))

(declare-fun m!6519542 () Bool)

(assert (=> bs!1271158 m!6519542))

(assert (=> d!1746933 d!1747393))

(declare-fun b!5515446 () Bool)

(declare-fun e!3410622 () Bool)

(assert (=> b!5515446 (= e!3410622 (not (= (head!11813 Nil!62686) (c!963749 (regOne!31518 r!7292)))))))

(declare-fun b!5515447 () Bool)

(declare-fun res!2349958 () Bool)

(declare-fun e!3410627 () Bool)

(assert (=> b!5515447 (=> (not res!2349958) (not e!3410627))))

(declare-fun call!408124 () Bool)

(assert (=> b!5515447 (= res!2349958 (not call!408124))))

(declare-fun b!5515449 () Bool)

(declare-fun e!3410623 () Bool)

(assert (=> b!5515449 (= e!3410623 e!3410622)))

(declare-fun res!2349962 () Bool)

(assert (=> b!5515449 (=> res!2349962 e!3410622)))

(assert (=> b!5515449 (= res!2349962 call!408124)))

(declare-fun b!5515450 () Bool)

(declare-fun e!3410624 () Bool)

(declare-fun lt!2245979 () Bool)

(assert (=> b!5515450 (= e!3410624 (not lt!2245979))))

(declare-fun b!5515451 () Bool)

(declare-fun res!2349960 () Bool)

(declare-fun e!3410625 () Bool)

(assert (=> b!5515451 (=> res!2349960 e!3410625)))

(assert (=> b!5515451 (= res!2349960 (not ((_ is ElementMatch!15503) (regOne!31518 r!7292))))))

(assert (=> b!5515451 (= e!3410624 e!3410625)))

(declare-fun b!5515452 () Bool)

(declare-fun res!2349961 () Bool)

(assert (=> b!5515452 (=> res!2349961 e!3410625)))

(assert (=> b!5515452 (= res!2349961 e!3410627)))

(declare-fun res!2349963 () Bool)

(assert (=> b!5515452 (=> (not res!2349963) (not e!3410627))))

(assert (=> b!5515452 (= res!2349963 lt!2245979)))

(declare-fun b!5515453 () Bool)

(declare-fun res!2349964 () Bool)

(assert (=> b!5515453 (=> (not res!2349964) (not e!3410627))))

(assert (=> b!5515453 (= res!2349964 (isEmpty!34470 (tail!10908 Nil!62686)))))

(declare-fun b!5515454 () Bool)

(assert (=> b!5515454 (= e!3410627 (= (head!11813 Nil!62686) (c!963749 (regOne!31518 r!7292))))))

(declare-fun bm!408119 () Bool)

(assert (=> bm!408119 (= call!408124 (isEmpty!34470 Nil!62686))))

(declare-fun b!5515455 () Bool)

(declare-fun e!3410628 () Bool)

(assert (=> b!5515455 (= e!3410628 (matchR!7688 (derivativeStep!4370 (regOne!31518 r!7292) (head!11813 Nil!62686)) (tail!10908 Nil!62686)))))

(declare-fun b!5515448 () Bool)

(declare-fun res!2349965 () Bool)

(assert (=> b!5515448 (=> res!2349965 e!3410622)))

(assert (=> b!5515448 (= res!2349965 (not (isEmpty!34470 (tail!10908 Nil!62686))))))

(declare-fun d!1747395 () Bool)

(declare-fun e!3410626 () Bool)

(assert (=> d!1747395 e!3410626))

(declare-fun c!964152 () Bool)

(assert (=> d!1747395 (= c!964152 ((_ is EmptyExpr!15503) (regOne!31518 r!7292)))))

(assert (=> d!1747395 (= lt!2245979 e!3410628)))

(declare-fun c!964154 () Bool)

(assert (=> d!1747395 (= c!964154 (isEmpty!34470 Nil!62686))))

(assert (=> d!1747395 (validRegex!7239 (regOne!31518 r!7292))))

(assert (=> d!1747395 (= (matchR!7688 (regOne!31518 r!7292) Nil!62686) lt!2245979)))

(declare-fun b!5515456 () Bool)

(assert (=> b!5515456 (= e!3410626 e!3410624)))

(declare-fun c!964153 () Bool)

(assert (=> b!5515456 (= c!964153 ((_ is EmptyLang!15503) (regOne!31518 r!7292)))))

(declare-fun b!5515457 () Bool)

(assert (=> b!5515457 (= e!3410628 (nullable!5537 (regOne!31518 r!7292)))))

(declare-fun b!5515458 () Bool)

(assert (=> b!5515458 (= e!3410626 (= lt!2245979 call!408124))))

(declare-fun b!5515459 () Bool)

(assert (=> b!5515459 (= e!3410625 e!3410623)))

(declare-fun res!2349959 () Bool)

(assert (=> b!5515459 (=> (not res!2349959) (not e!3410623))))

(assert (=> b!5515459 (= res!2349959 (not lt!2245979))))

(assert (= (and d!1747395 c!964154) b!5515457))

(assert (= (and d!1747395 (not c!964154)) b!5515455))

(assert (= (and d!1747395 c!964152) b!5515458))

(assert (= (and d!1747395 (not c!964152)) b!5515456))

(assert (= (and b!5515456 c!964153) b!5515450))

(assert (= (and b!5515456 (not c!964153)) b!5515451))

(assert (= (and b!5515451 (not res!2349960)) b!5515452))

(assert (= (and b!5515452 res!2349963) b!5515447))

(assert (= (and b!5515447 res!2349958) b!5515453))

(assert (= (and b!5515453 res!2349964) b!5515454))

(assert (= (and b!5515452 (not res!2349961)) b!5515459))

(assert (= (and b!5515459 res!2349959) b!5515449))

(assert (= (and b!5515449 (not res!2349962)) b!5515448))

(assert (= (and b!5515448 (not res!2349965)) b!5515446))

(assert (= (or b!5515458 b!5515447 b!5515449) bm!408119))

(declare-fun m!6519544 () Bool)

(assert (=> d!1747395 m!6519544))

(assert (=> d!1747395 m!6518570))

(declare-fun m!6519546 () Bool)

(assert (=> b!5515455 m!6519546))

(assert (=> b!5515455 m!6519546))

(declare-fun m!6519548 () Bool)

(assert (=> b!5515455 m!6519548))

(declare-fun m!6519550 () Bool)

(assert (=> b!5515455 m!6519550))

(assert (=> b!5515455 m!6519548))

(assert (=> b!5515455 m!6519550))

(declare-fun m!6519552 () Bool)

(assert (=> b!5515455 m!6519552))

(assert (=> bm!408119 m!6519544))

(assert (=> b!5515453 m!6519550))

(assert (=> b!5515453 m!6519550))

(declare-fun m!6519554 () Bool)

(assert (=> b!5515453 m!6519554))

(assert (=> b!5515448 m!6519550))

(assert (=> b!5515448 m!6519550))

(assert (=> b!5515448 m!6519554))

(assert (=> b!5515446 m!6519546))

(assert (=> b!5515457 m!6518334))

(assert (=> b!5515454 m!6519546))

(assert (=> d!1746933 d!1747395))

(assert (=> d!1746933 d!1747335))

(declare-fun d!1747397 () Bool)

(assert (=> d!1747397 (= (isEmpty!34465 (tail!10909 (unfocusZipperList!931 zl!343))) ((_ is Nil!62684) (tail!10909 (unfocusZipperList!931 zl!343))))))

(assert (=> b!5514474 d!1747397))

(declare-fun d!1747399 () Bool)

(assert (=> d!1747399 (= (tail!10909 (unfocusZipperList!931 zl!343)) (t!376055 (unfocusZipperList!931 zl!343)))))

(assert (=> b!5514474 d!1747399))

(declare-fun b!5515460 () Bool)

(declare-fun e!3410634 () (InoxSet Context!9774))

(declare-fun call!408126 () (InoxSet Context!9774))

(assert (=> b!5515460 (= e!3410634 call!408126)))

(declare-fun b!5515461 () Bool)

(declare-fun c!964155 () Bool)

(assert (=> b!5515461 (= c!964155 ((_ is Star!15503) (h!69132 (exprs!5387 lt!2245851))))))

(declare-fun e!3410629 () (InoxSet Context!9774))

(assert (=> b!5515461 (= e!3410629 e!3410634)))

(declare-fun b!5515462 () Bool)

(declare-fun e!3410631 () (InoxSet Context!9774))

(declare-fun call!408125 () (InoxSet Context!9774))

(declare-fun call!408127 () (InoxSet Context!9774))

(assert (=> b!5515462 (= e!3410631 ((_ map or) call!408125 call!408127))))

(declare-fun c!964159 () Bool)

(declare-fun call!408129 () List!62808)

(declare-fun bm!408120 () Bool)

(assert (=> bm!408120 (= call!408125 (derivationStepZipperDown!845 (ite c!964159 (regOne!31519 (h!69132 (exprs!5387 lt!2245851))) (regOne!31518 (h!69132 (exprs!5387 lt!2245851)))) (ite c!964159 (Context!9775 (t!376055 (exprs!5387 lt!2245851))) (Context!9775 call!408129)) (h!69134 s!2326)))))

(declare-fun call!408128 () (InoxSet Context!9774))

(declare-fun c!964157 () Bool)

(declare-fun call!408130 () List!62808)

(declare-fun c!964158 () Bool)

(declare-fun bm!408121 () Bool)

(assert (=> bm!408121 (= call!408128 (derivationStepZipperDown!845 (ite c!964159 (regTwo!31519 (h!69132 (exprs!5387 lt!2245851))) (ite c!964158 (regTwo!31518 (h!69132 (exprs!5387 lt!2245851))) (ite c!964157 (regOne!31518 (h!69132 (exprs!5387 lt!2245851))) (reg!15832 (h!69132 (exprs!5387 lt!2245851)))))) (ite (or c!964159 c!964158) (Context!9775 (t!376055 (exprs!5387 lt!2245851))) (Context!9775 call!408130)) (h!69134 s!2326)))))

(declare-fun bm!408122 () Bool)

(assert (=> bm!408122 (= call!408129 ($colon$colon!1584 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245851)))) (ite (or c!964158 c!964157) (regTwo!31518 (h!69132 (exprs!5387 lt!2245851))) (h!69132 (exprs!5387 lt!2245851)))))))

(declare-fun b!5515463 () Bool)

(declare-fun e!3410630 () (InoxSet Context!9774))

(declare-fun e!3410633 () (InoxSet Context!9774))

(assert (=> b!5515463 (= e!3410630 e!3410633)))

(assert (=> b!5515463 (= c!964159 ((_ is Union!15503) (h!69132 (exprs!5387 lt!2245851))))))

(declare-fun b!5515464 () Bool)

(assert (=> b!5515464 (= e!3410633 ((_ map or) call!408125 call!408128))))

(declare-fun bm!408123 () Bool)

(assert (=> bm!408123 (= call!408130 call!408129)))

(declare-fun bm!408124 () Bool)

(assert (=> bm!408124 (= call!408127 call!408128)))

(declare-fun b!5515465 () Bool)

(declare-fun e!3410632 () Bool)

(assert (=> b!5515465 (= e!3410632 (nullable!5537 (regOne!31518 (h!69132 (exprs!5387 lt!2245851)))))))

(declare-fun bm!408125 () Bool)

(assert (=> bm!408125 (= call!408126 call!408127)))

(declare-fun b!5515466 () Bool)

(assert (=> b!5515466 (= e!3410634 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515467 () Bool)

(assert (=> b!5515467 (= e!3410631 e!3410629)))

(assert (=> b!5515467 (= c!964157 ((_ is Concat!24348) (h!69132 (exprs!5387 lt!2245851))))))

(declare-fun b!5515468 () Bool)

(assert (=> b!5515468 (= e!3410629 call!408126)))

(declare-fun b!5515469 () Bool)

(assert (=> b!5515469 (= e!3410630 (store ((as const (Array Context!9774 Bool)) false) (Context!9775 (t!376055 (exprs!5387 lt!2245851))) true))))

(declare-fun b!5515470 () Bool)

(assert (=> b!5515470 (= c!964158 e!3410632)))

(declare-fun res!2349966 () Bool)

(assert (=> b!5515470 (=> (not res!2349966) (not e!3410632))))

(assert (=> b!5515470 (= res!2349966 ((_ is Concat!24348) (h!69132 (exprs!5387 lt!2245851))))))

(assert (=> b!5515470 (= e!3410633 e!3410631)))

(declare-fun d!1747401 () Bool)

(declare-fun c!964156 () Bool)

(assert (=> d!1747401 (= c!964156 (and ((_ is ElementMatch!15503) (h!69132 (exprs!5387 lt!2245851))) (= (c!963749 (h!69132 (exprs!5387 lt!2245851))) (h!69134 s!2326))))))

(assert (=> d!1747401 (= (derivationStepZipperDown!845 (h!69132 (exprs!5387 lt!2245851)) (Context!9775 (t!376055 (exprs!5387 lt!2245851))) (h!69134 s!2326)) e!3410630)))

(assert (= (and d!1747401 c!964156) b!5515469))

(assert (= (and d!1747401 (not c!964156)) b!5515463))

(assert (= (and b!5515463 c!964159) b!5515464))

(assert (= (and b!5515463 (not c!964159)) b!5515470))

(assert (= (and b!5515470 res!2349966) b!5515465))

(assert (= (and b!5515470 c!964158) b!5515462))

(assert (= (and b!5515470 (not c!964158)) b!5515467))

(assert (= (and b!5515467 c!964157) b!5515468))

(assert (= (and b!5515467 (not c!964157)) b!5515461))

(assert (= (and b!5515461 c!964155) b!5515460))

(assert (= (and b!5515461 (not c!964155)) b!5515466))

(assert (= (or b!5515468 b!5515460) bm!408123))

(assert (= (or b!5515468 b!5515460) bm!408125))

(assert (= (or b!5515462 bm!408123) bm!408122))

(assert (= (or b!5515462 bm!408125) bm!408124))

(assert (= (or b!5515464 bm!408124) bm!408121))

(assert (= (or b!5515464 b!5515462) bm!408120))

(declare-fun m!6519556 () Bool)

(assert (=> bm!408122 m!6519556))

(declare-fun m!6519558 () Bool)

(assert (=> b!5515465 m!6519558))

(declare-fun m!6519560 () Bool)

(assert (=> bm!408120 m!6519560))

(declare-fun m!6519562 () Bool)

(assert (=> bm!408121 m!6519562))

(declare-fun m!6519564 () Bool)

(assert (=> b!5515469 m!6519564))

(assert (=> bm!407913 d!1747401))

(declare-fun d!1747403 () Bool)

(assert (=> d!1747403 (= (isEmptyExpr!1077 lt!2245942) ((_ is EmptyExpr!15503) lt!2245942))))

(assert (=> b!5514603 d!1747403))

(declare-fun d!1747405 () Bool)

(assert (=> d!1747405 (= (nullable!5537 (reg!15832 r!7292)) (nullableFct!1663 (reg!15832 r!7292)))))

(declare-fun bs!1271159 () Bool)

(assert (= bs!1271159 d!1747405))

(declare-fun m!6519566 () Bool)

(assert (=> bs!1271159 m!6519566))

(assert (=> b!5514661 d!1747405))

(declare-fun d!1747407 () Bool)

(assert (=> d!1747407 (= (head!11814 (exprs!5387 (h!69133 zl!343))) (h!69132 (exprs!5387 (h!69133 zl!343))))))

(assert (=> b!5514607 d!1747407))

(declare-fun d!1747409 () Bool)

(declare-fun c!964160 () Bool)

(assert (=> d!1747409 (= c!964160 (isEmpty!34470 (tail!10908 (t!376057 s!2326))))))

(declare-fun e!3410635 () Bool)

(assert (=> d!1747409 (= (matchZipper!1661 (derivationStepZipper!1608 lt!2245835 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))) e!3410635)))

(declare-fun b!5515471 () Bool)

(assert (=> b!5515471 (= e!3410635 (nullableZipper!1531 (derivationStepZipper!1608 lt!2245835 (head!11813 (t!376057 s!2326)))))))

(declare-fun b!5515472 () Bool)

(assert (=> b!5515472 (= e!3410635 (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245835 (head!11813 (t!376057 s!2326))) (head!11813 (tail!10908 (t!376057 s!2326)))) (tail!10908 (tail!10908 (t!376057 s!2326)))))))

(assert (= (and d!1747409 c!964160) b!5515471))

(assert (= (and d!1747409 (not c!964160)) b!5515472))

(assert (=> d!1747409 m!6518652))

(declare-fun m!6519568 () Bool)

(assert (=> d!1747409 m!6519568))

(assert (=> b!5515471 m!6518822))

(declare-fun m!6519570 () Bool)

(assert (=> b!5515471 m!6519570))

(assert (=> b!5515472 m!6518652))

(declare-fun m!6519572 () Bool)

(assert (=> b!5515472 m!6519572))

(assert (=> b!5515472 m!6518822))

(assert (=> b!5515472 m!6519572))

(declare-fun m!6519574 () Bool)

(assert (=> b!5515472 m!6519574))

(assert (=> b!5515472 m!6518652))

(declare-fun m!6519576 () Bool)

(assert (=> b!5515472 m!6519576))

(assert (=> b!5515472 m!6519574))

(assert (=> b!5515472 m!6519576))

(declare-fun m!6519578 () Bool)

(assert (=> b!5515472 m!6519578))

(assert (=> b!5514637 d!1747409))

(declare-fun bs!1271160 () Bool)

(declare-fun d!1747411 () Bool)

(assert (= bs!1271160 (and d!1747411 b!5513931)))

(declare-fun lambda!295598 () Int)

(assert (=> bs!1271160 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295598 lambda!295489))))

(declare-fun bs!1271161 () Bool)

(assert (= bs!1271161 (and d!1747411 d!1747001)))

(assert (=> bs!1271161 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295598 lambda!295533))))

(declare-fun bs!1271162 () Bool)

(assert (= bs!1271162 (and d!1747411 d!1747059)))

(assert (=> bs!1271162 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295598 lambda!295553))))

(assert (=> d!1747411 true))

(assert (=> d!1747411 (= (derivationStepZipper!1608 lt!2245835 (head!11813 (t!376057 s!2326))) (flatMap!1116 lt!2245835 lambda!295598))))

(declare-fun bs!1271163 () Bool)

(assert (= bs!1271163 d!1747411))

(declare-fun m!6519580 () Bool)

(assert (=> bs!1271163 m!6519580))

(assert (=> b!5514637 d!1747411))

(declare-fun d!1747413 () Bool)

(assert (=> d!1747413 (= (head!11813 (t!376057 s!2326)) (h!69134 (t!376057 s!2326)))))

(assert (=> b!5514637 d!1747413))

(declare-fun d!1747415 () Bool)

(assert (=> d!1747415 (= (tail!10908 (t!376057 s!2326)) (t!376057 (t!376057 s!2326)))))

(assert (=> b!5514637 d!1747415))

(declare-fun b!5515476 () Bool)

(declare-fun e!3410637 () Bool)

(declare-fun lt!2245980 () List!62810)

(assert (=> b!5515476 (= e!3410637 (or (not (= (_2!35903 (get!21572 lt!2245900)) Nil!62686)) (= lt!2245980 (_1!35903 (get!21572 lt!2245900)))))))

(declare-fun b!5515474 () Bool)

(declare-fun e!3410636 () List!62810)

(assert (=> b!5515474 (= e!3410636 (Cons!62686 (h!69134 (_1!35903 (get!21572 lt!2245900))) (++!13753 (t!376057 (_1!35903 (get!21572 lt!2245900))) (_2!35903 (get!21572 lt!2245900)))))))

(declare-fun b!5515475 () Bool)

(declare-fun res!2349967 () Bool)

(assert (=> b!5515475 (=> (not res!2349967) (not e!3410637))))

(assert (=> b!5515475 (= res!2349967 (= (size!39935 lt!2245980) (+ (size!39935 (_1!35903 (get!21572 lt!2245900))) (size!39935 (_2!35903 (get!21572 lt!2245900))))))))

(declare-fun d!1747417 () Bool)

(assert (=> d!1747417 e!3410637))

(declare-fun res!2349968 () Bool)

(assert (=> d!1747417 (=> (not res!2349968) (not e!3410637))))

(assert (=> d!1747417 (= res!2349968 (= (content!11267 lt!2245980) ((_ map or) (content!11267 (_1!35903 (get!21572 lt!2245900))) (content!11267 (_2!35903 (get!21572 lt!2245900))))))))

(assert (=> d!1747417 (= lt!2245980 e!3410636)))

(declare-fun c!964161 () Bool)

(assert (=> d!1747417 (= c!964161 ((_ is Nil!62686) (_1!35903 (get!21572 lt!2245900))))))

(assert (=> d!1747417 (= (++!13753 (_1!35903 (get!21572 lt!2245900)) (_2!35903 (get!21572 lt!2245900))) lt!2245980)))

(declare-fun b!5515473 () Bool)

(assert (=> b!5515473 (= e!3410636 (_2!35903 (get!21572 lt!2245900)))))

(assert (= (and d!1747417 c!964161) b!5515473))

(assert (= (and d!1747417 (not c!964161)) b!5515474))

(assert (= (and d!1747417 res!2349968) b!5515475))

(assert (= (and b!5515475 res!2349967) b!5515476))

(declare-fun m!6519582 () Bool)

(assert (=> b!5515474 m!6519582))

(declare-fun m!6519584 () Bool)

(assert (=> b!5515475 m!6519584))

(declare-fun m!6519586 () Bool)

(assert (=> b!5515475 m!6519586))

(declare-fun m!6519588 () Bool)

(assert (=> b!5515475 m!6519588))

(declare-fun m!6519590 () Bool)

(assert (=> d!1747417 m!6519590))

(declare-fun m!6519592 () Bool)

(assert (=> d!1747417 m!6519592))

(declare-fun m!6519594 () Bool)

(assert (=> d!1747417 m!6519594))

(assert (=> b!5514263 d!1747417))

(assert (=> b!5514263 d!1747339))

(declare-fun d!1747419 () Bool)

(assert (=> d!1747419 (= (nullable!5537 (regOne!31518 (regTwo!31518 r!7292))) (nullableFct!1663 (regOne!31518 (regTwo!31518 r!7292))))))

(declare-fun bs!1271164 () Bool)

(assert (= bs!1271164 d!1747419))

(declare-fun m!6519596 () Bool)

(assert (=> bs!1271164 m!6519596))

(assert (=> b!5514430 d!1747419))

(declare-fun b!5515477 () Bool)

(declare-fun e!3410638 () Bool)

(assert (=> b!5515477 (= e!3410638 (not (= (head!11813 (_1!35903 (get!21572 lt!2245900))) (c!963749 (regOne!31518 r!7292)))))))

(declare-fun b!5515478 () Bool)

(declare-fun res!2349969 () Bool)

(declare-fun e!3410643 () Bool)

(assert (=> b!5515478 (=> (not res!2349969) (not e!3410643))))

(declare-fun call!408131 () Bool)

(assert (=> b!5515478 (= res!2349969 (not call!408131))))

(declare-fun b!5515480 () Bool)

(declare-fun e!3410639 () Bool)

(assert (=> b!5515480 (= e!3410639 e!3410638)))

(declare-fun res!2349973 () Bool)

(assert (=> b!5515480 (=> res!2349973 e!3410638)))

(assert (=> b!5515480 (= res!2349973 call!408131)))

(declare-fun b!5515481 () Bool)

(declare-fun e!3410640 () Bool)

(declare-fun lt!2245981 () Bool)

(assert (=> b!5515481 (= e!3410640 (not lt!2245981))))

(declare-fun b!5515482 () Bool)

(declare-fun res!2349971 () Bool)

(declare-fun e!3410641 () Bool)

(assert (=> b!5515482 (=> res!2349971 e!3410641)))

(assert (=> b!5515482 (= res!2349971 (not ((_ is ElementMatch!15503) (regOne!31518 r!7292))))))

(assert (=> b!5515482 (= e!3410640 e!3410641)))

(declare-fun b!5515483 () Bool)

(declare-fun res!2349972 () Bool)

(assert (=> b!5515483 (=> res!2349972 e!3410641)))

(assert (=> b!5515483 (= res!2349972 e!3410643)))

(declare-fun res!2349974 () Bool)

(assert (=> b!5515483 (=> (not res!2349974) (not e!3410643))))

(assert (=> b!5515483 (= res!2349974 lt!2245981)))

(declare-fun b!5515484 () Bool)

(declare-fun res!2349975 () Bool)

(assert (=> b!5515484 (=> (not res!2349975) (not e!3410643))))

(assert (=> b!5515484 (= res!2349975 (isEmpty!34470 (tail!10908 (_1!35903 (get!21572 lt!2245900)))))))

(declare-fun b!5515485 () Bool)

(assert (=> b!5515485 (= e!3410643 (= (head!11813 (_1!35903 (get!21572 lt!2245900))) (c!963749 (regOne!31518 r!7292))))))

(declare-fun bm!408126 () Bool)

(assert (=> bm!408126 (= call!408131 (isEmpty!34470 (_1!35903 (get!21572 lt!2245900))))))

(declare-fun b!5515486 () Bool)

(declare-fun e!3410644 () Bool)

(assert (=> b!5515486 (= e!3410644 (matchR!7688 (derivativeStep!4370 (regOne!31518 r!7292) (head!11813 (_1!35903 (get!21572 lt!2245900)))) (tail!10908 (_1!35903 (get!21572 lt!2245900)))))))

(declare-fun b!5515479 () Bool)

(declare-fun res!2349976 () Bool)

(assert (=> b!5515479 (=> res!2349976 e!3410638)))

(assert (=> b!5515479 (= res!2349976 (not (isEmpty!34470 (tail!10908 (_1!35903 (get!21572 lt!2245900))))))))

(declare-fun d!1747421 () Bool)

(declare-fun e!3410642 () Bool)

(assert (=> d!1747421 e!3410642))

(declare-fun c!964162 () Bool)

(assert (=> d!1747421 (= c!964162 ((_ is EmptyExpr!15503) (regOne!31518 r!7292)))))

(assert (=> d!1747421 (= lt!2245981 e!3410644)))

(declare-fun c!964164 () Bool)

(assert (=> d!1747421 (= c!964164 (isEmpty!34470 (_1!35903 (get!21572 lt!2245900))))))

(assert (=> d!1747421 (validRegex!7239 (regOne!31518 r!7292))))

(assert (=> d!1747421 (= (matchR!7688 (regOne!31518 r!7292) (_1!35903 (get!21572 lt!2245900))) lt!2245981)))

(declare-fun b!5515487 () Bool)

(assert (=> b!5515487 (= e!3410642 e!3410640)))

(declare-fun c!964163 () Bool)

(assert (=> b!5515487 (= c!964163 ((_ is EmptyLang!15503) (regOne!31518 r!7292)))))

(declare-fun b!5515488 () Bool)

(assert (=> b!5515488 (= e!3410644 (nullable!5537 (regOne!31518 r!7292)))))

(declare-fun b!5515489 () Bool)

(assert (=> b!5515489 (= e!3410642 (= lt!2245981 call!408131))))

(declare-fun b!5515490 () Bool)

(assert (=> b!5515490 (= e!3410641 e!3410639)))

(declare-fun res!2349970 () Bool)

(assert (=> b!5515490 (=> (not res!2349970) (not e!3410639))))

(assert (=> b!5515490 (= res!2349970 (not lt!2245981))))

(assert (= (and d!1747421 c!964164) b!5515488))

(assert (= (and d!1747421 (not c!964164)) b!5515486))

(assert (= (and d!1747421 c!964162) b!5515489))

(assert (= (and d!1747421 (not c!964162)) b!5515487))

(assert (= (and b!5515487 c!964163) b!5515481))

(assert (= (and b!5515487 (not c!964163)) b!5515482))

(assert (= (and b!5515482 (not res!2349971)) b!5515483))

(assert (= (and b!5515483 res!2349974) b!5515478))

(assert (= (and b!5515478 res!2349969) b!5515484))

(assert (= (and b!5515484 res!2349975) b!5515485))

(assert (= (and b!5515483 (not res!2349972)) b!5515490))

(assert (= (and b!5515490 res!2349970) b!5515480))

(assert (= (and b!5515480 (not res!2349973)) b!5515479))

(assert (= (and b!5515479 (not res!2349976)) b!5515477))

(assert (= (or b!5515489 b!5515478 b!5515480) bm!408126))

(declare-fun m!6519598 () Bool)

(assert (=> d!1747421 m!6519598))

(assert (=> d!1747421 m!6518570))

(declare-fun m!6519600 () Bool)

(assert (=> b!5515486 m!6519600))

(assert (=> b!5515486 m!6519600))

(declare-fun m!6519602 () Bool)

(assert (=> b!5515486 m!6519602))

(declare-fun m!6519604 () Bool)

(assert (=> b!5515486 m!6519604))

(assert (=> b!5515486 m!6519602))

(assert (=> b!5515486 m!6519604))

(declare-fun m!6519606 () Bool)

(assert (=> b!5515486 m!6519606))

(assert (=> bm!408126 m!6519598))

(assert (=> b!5515484 m!6519604))

(assert (=> b!5515484 m!6519604))

(declare-fun m!6519608 () Bool)

(assert (=> b!5515484 m!6519608))

(assert (=> b!5515479 m!6519604))

(assert (=> b!5515479 m!6519604))

(assert (=> b!5515479 m!6519608))

(assert (=> b!5515477 m!6519600))

(assert (=> b!5515488 m!6518334))

(assert (=> b!5515485 m!6519600))

(assert (=> b!5514267 d!1747421))

(assert (=> b!5514267 d!1747339))

(declare-fun d!1747423 () Bool)

(assert (=> d!1747423 (= (isEmpty!34470 s!2326) ((_ is Nil!62686) s!2326))))

(assert (=> bm!407945 d!1747423))

(declare-fun d!1747425 () Bool)

(assert (=> d!1747425 (= (nullable!5537 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))) (nullableFct!1663 (h!69132 (exprs!5387 (Context!9775 (Cons!62684 r!7292 Nil!62684))))))))

(declare-fun bs!1271165 () Bool)

(assert (= bs!1271165 d!1747425))

(declare-fun m!6519610 () Bool)

(assert (=> bs!1271165 m!6519610))

(assert (=> b!5514634 d!1747425))

(declare-fun b!5515491 () Bool)

(declare-fun e!3410645 () Bool)

(assert (=> b!5515491 (= e!3410645 (not (= (head!11813 (tail!10908 s!2326)) (c!963749 (derivativeStep!4370 r!7292 (head!11813 s!2326))))))))

(declare-fun b!5515492 () Bool)

(declare-fun res!2349977 () Bool)

(declare-fun e!3410650 () Bool)

(assert (=> b!5515492 (=> (not res!2349977) (not e!3410650))))

(declare-fun call!408132 () Bool)

(assert (=> b!5515492 (= res!2349977 (not call!408132))))

(declare-fun b!5515494 () Bool)

(declare-fun e!3410646 () Bool)

(assert (=> b!5515494 (= e!3410646 e!3410645)))

(declare-fun res!2349981 () Bool)

(assert (=> b!5515494 (=> res!2349981 e!3410645)))

(assert (=> b!5515494 (= res!2349981 call!408132)))

(declare-fun b!5515495 () Bool)

(declare-fun e!3410647 () Bool)

(declare-fun lt!2245982 () Bool)

(assert (=> b!5515495 (= e!3410647 (not lt!2245982))))

(declare-fun b!5515496 () Bool)

(declare-fun res!2349979 () Bool)

(declare-fun e!3410648 () Bool)

(assert (=> b!5515496 (=> res!2349979 e!3410648)))

(assert (=> b!5515496 (= res!2349979 (not ((_ is ElementMatch!15503) (derivativeStep!4370 r!7292 (head!11813 s!2326)))))))

(assert (=> b!5515496 (= e!3410647 e!3410648)))

(declare-fun b!5515497 () Bool)

(declare-fun res!2349980 () Bool)

(assert (=> b!5515497 (=> res!2349980 e!3410648)))

(assert (=> b!5515497 (= res!2349980 e!3410650)))

(declare-fun res!2349982 () Bool)

(assert (=> b!5515497 (=> (not res!2349982) (not e!3410650))))

(assert (=> b!5515497 (= res!2349982 lt!2245982)))

(declare-fun b!5515498 () Bool)

(declare-fun res!2349983 () Bool)

(assert (=> b!5515498 (=> (not res!2349983) (not e!3410650))))

(assert (=> b!5515498 (= res!2349983 (isEmpty!34470 (tail!10908 (tail!10908 s!2326))))))

(declare-fun b!5515499 () Bool)

(assert (=> b!5515499 (= e!3410650 (= (head!11813 (tail!10908 s!2326)) (c!963749 (derivativeStep!4370 r!7292 (head!11813 s!2326)))))))

(declare-fun bm!408127 () Bool)

(assert (=> bm!408127 (= call!408132 (isEmpty!34470 (tail!10908 s!2326)))))

(declare-fun b!5515500 () Bool)

(declare-fun e!3410651 () Bool)

(assert (=> b!5515500 (= e!3410651 (matchR!7688 (derivativeStep!4370 (derivativeStep!4370 r!7292 (head!11813 s!2326)) (head!11813 (tail!10908 s!2326))) (tail!10908 (tail!10908 s!2326))))))

(declare-fun b!5515493 () Bool)

(declare-fun res!2349984 () Bool)

(assert (=> b!5515493 (=> res!2349984 e!3410645)))

(assert (=> b!5515493 (= res!2349984 (not (isEmpty!34470 (tail!10908 (tail!10908 s!2326)))))))

(declare-fun d!1747427 () Bool)

(declare-fun e!3410649 () Bool)

(assert (=> d!1747427 e!3410649))

(declare-fun c!964165 () Bool)

(assert (=> d!1747427 (= c!964165 ((_ is EmptyExpr!15503) (derivativeStep!4370 r!7292 (head!11813 s!2326))))))

(assert (=> d!1747427 (= lt!2245982 e!3410651)))

(declare-fun c!964167 () Bool)

(assert (=> d!1747427 (= c!964167 (isEmpty!34470 (tail!10908 s!2326)))))

(assert (=> d!1747427 (validRegex!7239 (derivativeStep!4370 r!7292 (head!11813 s!2326)))))

(assert (=> d!1747427 (= (matchR!7688 (derivativeStep!4370 r!7292 (head!11813 s!2326)) (tail!10908 s!2326)) lt!2245982)))

(declare-fun b!5515501 () Bool)

(assert (=> b!5515501 (= e!3410649 e!3410647)))

(declare-fun c!964166 () Bool)

(assert (=> b!5515501 (= c!964166 ((_ is EmptyLang!15503) (derivativeStep!4370 r!7292 (head!11813 s!2326))))))

(declare-fun b!5515502 () Bool)

(assert (=> b!5515502 (= e!3410651 (nullable!5537 (derivativeStep!4370 r!7292 (head!11813 s!2326))))))

(declare-fun b!5515503 () Bool)

(assert (=> b!5515503 (= e!3410649 (= lt!2245982 call!408132))))

(declare-fun b!5515504 () Bool)

(assert (=> b!5515504 (= e!3410648 e!3410646)))

(declare-fun res!2349978 () Bool)

(assert (=> b!5515504 (=> (not res!2349978) (not e!3410646))))

(assert (=> b!5515504 (= res!2349978 (not lt!2245982))))

(assert (= (and d!1747427 c!964167) b!5515502))

(assert (= (and d!1747427 (not c!964167)) b!5515500))

(assert (= (and d!1747427 c!964165) b!5515503))

(assert (= (and d!1747427 (not c!964165)) b!5515501))

(assert (= (and b!5515501 c!964166) b!5515495))

(assert (= (and b!5515501 (not c!964166)) b!5515496))

(assert (= (and b!5515496 (not res!2349979)) b!5515497))

(assert (= (and b!5515497 res!2349982) b!5515492))

(assert (= (and b!5515492 res!2349977) b!5515498))

(assert (= (and b!5515498 res!2349983) b!5515499))

(assert (= (and b!5515497 (not res!2349980)) b!5515504))

(assert (= (and b!5515504 res!2349978) b!5515494))

(assert (= (and b!5515494 (not res!2349981)) b!5515493))

(assert (= (and b!5515493 (not res!2349984)) b!5515491))

(assert (= (or b!5515503 b!5515492 b!5515494) bm!408127))

(assert (=> d!1747427 m!6518640))

(assert (=> d!1747427 m!6518758))

(assert (=> d!1747427 m!6518754))

(declare-fun m!6519612 () Bool)

(assert (=> d!1747427 m!6519612))

(assert (=> b!5515500 m!6518640))

(declare-fun m!6519614 () Bool)

(assert (=> b!5515500 m!6519614))

(assert (=> b!5515500 m!6518754))

(assert (=> b!5515500 m!6519614))

(declare-fun m!6519616 () Bool)

(assert (=> b!5515500 m!6519616))

(assert (=> b!5515500 m!6518640))

(declare-fun m!6519618 () Bool)

(assert (=> b!5515500 m!6519618))

(assert (=> b!5515500 m!6519616))

(assert (=> b!5515500 m!6519618))

(declare-fun m!6519620 () Bool)

(assert (=> b!5515500 m!6519620))

(assert (=> bm!408127 m!6518640))

(assert (=> bm!408127 m!6518758))

(assert (=> b!5515498 m!6518640))

(assert (=> b!5515498 m!6519618))

(assert (=> b!5515498 m!6519618))

(declare-fun m!6519622 () Bool)

(assert (=> b!5515498 m!6519622))

(assert (=> b!5515493 m!6518640))

(assert (=> b!5515493 m!6519618))

(assert (=> b!5515493 m!6519618))

(assert (=> b!5515493 m!6519622))

(assert (=> b!5515491 m!6518640))

(assert (=> b!5515491 m!6519614))

(assert (=> b!5515502 m!6518754))

(declare-fun m!6519624 () Bool)

(assert (=> b!5515502 m!6519624))

(assert (=> b!5515499 m!6518640))

(assert (=> b!5515499 m!6519614))

(assert (=> b!5514576 d!1747427))

(declare-fun c!964182 () Bool)

(declare-fun bm!408136 () Bool)

(declare-fun call!408143 () Regex!15503)

(assert (=> bm!408136 (= call!408143 (derivativeStep!4370 (ite c!964182 (regOne!31519 r!7292) (regOne!31518 r!7292)) (head!11813 s!2326)))))

(declare-fun e!3410665 () Regex!15503)

(declare-fun b!5515525 () Bool)

(declare-fun call!408142 () Regex!15503)

(assert (=> b!5515525 (= e!3410665 (Union!15503 (Concat!24348 call!408143 (regTwo!31518 r!7292)) call!408142))))

(declare-fun b!5515526 () Bool)

(declare-fun e!3410663 () Regex!15503)

(declare-fun call!408144 () Regex!15503)

(assert (=> b!5515526 (= e!3410663 (Concat!24348 call!408144 r!7292))))

(declare-fun b!5515527 () Bool)

(declare-fun c!964181 () Bool)

(assert (=> b!5515527 (= c!964181 (nullable!5537 (regOne!31518 r!7292)))))

(assert (=> b!5515527 (= e!3410663 e!3410665)))

(declare-fun d!1747429 () Bool)

(declare-fun lt!2245985 () Regex!15503)

(assert (=> d!1747429 (validRegex!7239 lt!2245985)))

(declare-fun e!3410662 () Regex!15503)

(assert (=> d!1747429 (= lt!2245985 e!3410662)))

(declare-fun c!964178 () Bool)

(assert (=> d!1747429 (= c!964178 (or ((_ is EmptyExpr!15503) r!7292) ((_ is EmptyLang!15503) r!7292)))))

(assert (=> d!1747429 (validRegex!7239 r!7292)))

(assert (=> d!1747429 (= (derivativeStep!4370 r!7292 (head!11813 s!2326)) lt!2245985)))

(declare-fun bm!408137 () Bool)

(declare-fun c!964179 () Bool)

(declare-fun call!408141 () Regex!15503)

(assert (=> bm!408137 (= call!408141 (derivativeStep!4370 (ite c!964182 (regTwo!31519 r!7292) (ite c!964179 (reg!15832 r!7292) (ite c!964181 (regTwo!31518 r!7292) (regOne!31518 r!7292)))) (head!11813 s!2326)))))

(declare-fun bm!408138 () Bool)

(assert (=> bm!408138 (= call!408142 call!408144)))

(declare-fun b!5515528 () Bool)

(declare-fun e!3410666 () Regex!15503)

(assert (=> b!5515528 (= e!3410666 (Union!15503 call!408143 call!408141))))

(declare-fun b!5515529 () Bool)

(assert (=> b!5515529 (= e!3410665 (Union!15503 (Concat!24348 call!408142 (regTwo!31518 r!7292)) EmptyLang!15503))))

(declare-fun b!5515530 () Bool)

(declare-fun e!3410664 () Regex!15503)

(assert (=> b!5515530 (= e!3410664 (ite (= (head!11813 s!2326) (c!963749 r!7292)) EmptyExpr!15503 EmptyLang!15503))))

(declare-fun b!5515531 () Bool)

(assert (=> b!5515531 (= e!3410666 e!3410663)))

(assert (=> b!5515531 (= c!964179 ((_ is Star!15503) r!7292))))

(declare-fun b!5515532 () Bool)

(assert (=> b!5515532 (= e!3410662 e!3410664)))

(declare-fun c!964180 () Bool)

(assert (=> b!5515532 (= c!964180 ((_ is ElementMatch!15503) r!7292))))

(declare-fun bm!408139 () Bool)

(assert (=> bm!408139 (= call!408144 call!408141)))

(declare-fun b!5515533 () Bool)

(assert (=> b!5515533 (= e!3410662 EmptyLang!15503)))

(declare-fun b!5515534 () Bool)

(assert (=> b!5515534 (= c!964182 ((_ is Union!15503) r!7292))))

(assert (=> b!5515534 (= e!3410664 e!3410666)))

(assert (= (and d!1747429 c!964178) b!5515533))

(assert (= (and d!1747429 (not c!964178)) b!5515532))

(assert (= (and b!5515532 c!964180) b!5515530))

(assert (= (and b!5515532 (not c!964180)) b!5515534))

(assert (= (and b!5515534 c!964182) b!5515528))

(assert (= (and b!5515534 (not c!964182)) b!5515531))

(assert (= (and b!5515531 c!964179) b!5515526))

(assert (= (and b!5515531 (not c!964179)) b!5515527))

(assert (= (and b!5515527 c!964181) b!5515525))

(assert (= (and b!5515527 (not c!964181)) b!5515529))

(assert (= (or b!5515525 b!5515529) bm!408138))

(assert (= (or b!5515526 bm!408138) bm!408139))

(assert (= (or b!5515528 bm!408139) bm!408137))

(assert (= (or b!5515528 b!5515525) bm!408136))

(assert (=> bm!408136 m!6518636))

(declare-fun m!6519626 () Bool)

(assert (=> bm!408136 m!6519626))

(assert (=> b!5515527 m!6518334))

(declare-fun m!6519628 () Bool)

(assert (=> d!1747429 m!6519628))

(assert (=> d!1747429 m!6518288))

(assert (=> bm!408137 m!6518636))

(declare-fun m!6519630 () Bool)

(assert (=> bm!408137 m!6519630))

(assert (=> b!5514576 d!1747429))

(declare-fun d!1747431 () Bool)

(assert (=> d!1747431 (= (head!11813 s!2326) (h!69134 s!2326))))

(assert (=> b!5514576 d!1747431))

(assert (=> b!5514576 d!1747381))

(declare-fun d!1747433 () Bool)

(assert (=> d!1747433 (= (head!11814 (unfocusZipperList!931 zl!343)) (h!69132 (unfocusZipperList!931 zl!343)))))

(assert (=> b!5514478 d!1747433))

(declare-fun d!1747435 () Bool)

(declare-fun c!964183 () Bool)

(assert (=> d!1747435 (= c!964183 (isEmpty!34470 (tail!10908 s!2326)))))

(declare-fun e!3410667 () Bool)

(assert (=> d!1747435 (= (matchZipper!1661 (derivationStepZipper!1608 lt!2245837 (head!11813 s!2326)) (tail!10908 s!2326)) e!3410667)))

(declare-fun b!5515535 () Bool)

(assert (=> b!5515535 (= e!3410667 (nullableZipper!1531 (derivationStepZipper!1608 lt!2245837 (head!11813 s!2326))))))

(declare-fun b!5515536 () Bool)

(assert (=> b!5515536 (= e!3410667 (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245837 (head!11813 s!2326)) (head!11813 (tail!10908 s!2326))) (tail!10908 (tail!10908 s!2326))))))

(assert (= (and d!1747435 c!964183) b!5515535))

(assert (= (and d!1747435 (not c!964183)) b!5515536))

(assert (=> d!1747435 m!6518640))

(assert (=> d!1747435 m!6518758))

(assert (=> b!5515535 m!6518638))

(declare-fun m!6519632 () Bool)

(assert (=> b!5515535 m!6519632))

(assert (=> b!5515536 m!6518640))

(assert (=> b!5515536 m!6519614))

(assert (=> b!5515536 m!6518638))

(assert (=> b!5515536 m!6519614))

(declare-fun m!6519634 () Bool)

(assert (=> b!5515536 m!6519634))

(assert (=> b!5515536 m!6518640))

(assert (=> b!5515536 m!6519618))

(assert (=> b!5515536 m!6519634))

(assert (=> b!5515536 m!6519618))

(declare-fun m!6519636 () Bool)

(assert (=> b!5515536 m!6519636))

(assert (=> b!5514383 d!1747435))

(declare-fun bs!1271166 () Bool)

(declare-fun d!1747437 () Bool)

(assert (= bs!1271166 (and d!1747437 b!5513931)))

(declare-fun lambda!295599 () Int)

(assert (=> bs!1271166 (= (= (head!11813 s!2326) (h!69134 s!2326)) (= lambda!295599 lambda!295489))))

(declare-fun bs!1271167 () Bool)

(assert (= bs!1271167 (and d!1747437 d!1747001)))

(assert (=> bs!1271167 (= (= (head!11813 s!2326) (h!69134 s!2326)) (= lambda!295599 lambda!295533))))

(declare-fun bs!1271168 () Bool)

(assert (= bs!1271168 (and d!1747437 d!1747059)))

(assert (=> bs!1271168 (= (= (head!11813 s!2326) (h!69134 s!2326)) (= lambda!295599 lambda!295553))))

(declare-fun bs!1271169 () Bool)

(assert (= bs!1271169 (and d!1747437 d!1747411)))

(assert (=> bs!1271169 (= (= (head!11813 s!2326) (head!11813 (t!376057 s!2326))) (= lambda!295599 lambda!295598))))

(assert (=> d!1747437 true))

(assert (=> d!1747437 (= (derivationStepZipper!1608 lt!2245837 (head!11813 s!2326)) (flatMap!1116 lt!2245837 lambda!295599))))

(declare-fun bs!1271170 () Bool)

(assert (= bs!1271170 d!1747437))

(declare-fun m!6519638 () Bool)

(assert (=> bs!1271170 m!6519638))

(assert (=> b!5514383 d!1747437))

(assert (=> b!5514383 d!1747431))

(assert (=> b!5514383 d!1747381))

(declare-fun d!1747439 () Bool)

(declare-fun c!964186 () Bool)

(assert (=> d!1747439 (= c!964186 ((_ is Nil!62685) lt!2245933))))

(declare-fun e!3410670 () (InoxSet Context!9774))

(assert (=> d!1747439 (= (content!11265 lt!2245933) e!3410670)))

(declare-fun b!5515541 () Bool)

(assert (=> b!5515541 (= e!3410670 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515542 () Bool)

(assert (=> b!5515542 (= e!3410670 ((_ map or) (store ((as const (Array Context!9774 Bool)) false) (h!69133 lt!2245933) true) (content!11265 (t!376056 lt!2245933))))))

(assert (= (and d!1747439 c!964186) b!5515541))

(assert (= (and d!1747439 (not c!964186)) b!5515542))

(declare-fun m!6519640 () Bool)

(assert (=> b!5515542 m!6519640))

(declare-fun m!6519642 () Bool)

(assert (=> b!5515542 m!6519642))

(assert (=> b!5514495 d!1747439))

(assert (=> b!5514569 d!1747379))

(assert (=> b!5514569 d!1747381))

(declare-fun bs!1271171 () Bool)

(declare-fun d!1747441 () Bool)

(assert (= bs!1271171 (and d!1747441 d!1747025)))

(declare-fun lambda!295600 () Int)

(assert (=> bs!1271171 (= lambda!295600 lambda!295542)))

(declare-fun bs!1271172 () Bool)

(assert (= bs!1271172 (and d!1747441 d!1747043)))

(assert (=> bs!1271172 (= lambda!295600 lambda!295549)))

(declare-fun bs!1271173 () Bool)

(assert (= bs!1271173 (and d!1747441 d!1747023)))

(assert (=> bs!1271173 (= lambda!295600 lambda!295539)))

(declare-fun bs!1271174 () Bool)

(assert (= bs!1271174 (and d!1747441 d!1747391)))

(assert (=> bs!1271174 (= lambda!295600 lambda!295597)))

(declare-fun bs!1271175 () Bool)

(assert (= bs!1271175 (and d!1747441 d!1747045)))

(assert (=> bs!1271175 (= lambda!295600 lambda!295552)))

(declare-fun bs!1271176 () Bool)

(assert (= bs!1271176 (and d!1747441 d!1747021)))

(assert (=> bs!1271176 (= lambda!295600 lambda!295536)))

(assert (=> d!1747441 (= (inv!82004 (h!69133 (t!376056 zl!343))) (forall!14679 (exprs!5387 (h!69133 (t!376056 zl!343))) lambda!295600))))

(declare-fun bs!1271177 () Bool)

(assert (= bs!1271177 d!1747441))

(declare-fun m!6519644 () Bool)

(assert (=> bs!1271177 m!6519644))

(assert (=> b!5514702 d!1747441))

(assert (=> d!1746997 d!1747423))

(declare-fun d!1747443 () Bool)

(assert (=> d!1747443 true))

(declare-fun setRes!36655 () Bool)

(assert (=> d!1747443 setRes!36655))

(declare-fun condSetEmpty!36655 () Bool)

(declare-fun res!2349985 () (InoxSet Context!9774))

(assert (=> d!1747443 (= condSetEmpty!36655 (= res!2349985 ((as const (Array Context!9774 Bool)) false)))))

(assert (=> d!1747443 (= (choose!41916 lt!2245836 lambda!295489) res!2349985)))

(declare-fun setIsEmpty!36655 () Bool)

(assert (=> setIsEmpty!36655 setRes!36655))

(declare-fun tp!1517295 () Bool)

(declare-fun setNonEmpty!36655 () Bool)

(declare-fun setElem!36655 () Context!9774)

(declare-fun e!3410671 () Bool)

(assert (=> setNonEmpty!36655 (= setRes!36655 (and tp!1517295 (inv!82004 setElem!36655) e!3410671))))

(declare-fun setRest!36655 () (InoxSet Context!9774))

(assert (=> setNonEmpty!36655 (= res!2349985 ((_ map or) (store ((as const (Array Context!9774 Bool)) false) setElem!36655 true) setRest!36655))))

(declare-fun b!5515543 () Bool)

(declare-fun tp!1517294 () Bool)

(assert (=> b!5515543 (= e!3410671 tp!1517294)))

(assert (= (and d!1747443 condSetEmpty!36655) setIsEmpty!36655))

(assert (= (and d!1747443 (not condSetEmpty!36655)) setNonEmpty!36655))

(assert (= setNonEmpty!36655 b!5515543))

(declare-fun m!6519646 () Bool)

(assert (=> setNonEmpty!36655 m!6519646))

(assert (=> d!1747005 d!1747443))

(assert (=> d!1747061 d!1747345))

(declare-fun bs!1271178 () Bool)

(declare-fun d!1747445 () Bool)

(assert (= bs!1271178 (and d!1747445 d!1747325)))

(declare-fun lambda!295601 () Int)

(assert (=> bs!1271178 (= lambda!295601 lambda!295588)))

(declare-fun bs!1271179 () Bool)

(assert (= bs!1271179 (and d!1747445 d!1747347)))

(assert (=> bs!1271179 (= lambda!295601 lambda!295595)))

(declare-fun bs!1271180 () Bool)

(assert (= bs!1271180 (and d!1747445 d!1747363)))

(assert (=> bs!1271180 (= lambda!295601 lambda!295596)))

(assert (=> d!1747445 (= (nullableZipper!1531 lt!2245837) (exists!2136 lt!2245837 lambda!295601))))

(declare-fun bs!1271181 () Bool)

(assert (= bs!1271181 d!1747445))

(declare-fun m!6519648 () Bool)

(assert (=> bs!1271181 m!6519648))

(assert (=> b!5514382 d!1747445))

(assert (=> d!1747019 d!1747005))

(declare-fun d!1747447 () Bool)

(assert (=> d!1747447 (= (flatMap!1116 lt!2245836 lambda!295489) (dynLambda!24490 lambda!295489 lt!2245851))))

(assert (=> d!1747447 true))

(declare-fun _$13!2052 () Unit!155466)

(assert (=> d!1747447 (= (choose!41918 lt!2245836 lt!2245851 lambda!295489) _$13!2052)))

(declare-fun b_lambda!209111 () Bool)

(assert (=> (not b_lambda!209111) (not d!1747447)))

(declare-fun bs!1271182 () Bool)

(assert (= bs!1271182 d!1747447))

(assert (=> bs!1271182 m!6518326))

(assert (=> bs!1271182 m!6518698))

(assert (=> d!1747019 d!1747447))

(declare-fun d!1747449 () Bool)

(assert (=> d!1747449 (= (nullable!5537 (regOne!31518 (regOne!31518 r!7292))) (nullableFct!1663 (regOne!31518 (regOne!31518 r!7292))))))

(declare-fun bs!1271183 () Bool)

(assert (= bs!1271183 d!1747449))

(declare-fun m!6519650 () Bool)

(assert (=> bs!1271183 m!6519650))

(assert (=> b!5514446 d!1747449))

(declare-fun d!1747451 () Bool)

(assert (=> d!1747451 (= (flatMap!1116 lt!2245837 lambda!295533) (choose!41916 lt!2245837 lambda!295533))))

(declare-fun bs!1271184 () Bool)

(assert (= bs!1271184 d!1747451))

(declare-fun m!6519652 () Bool)

(assert (=> bs!1271184 m!6519652))

(assert (=> d!1747001 d!1747451))

(declare-fun bm!408144 () Bool)

(declare-fun call!408150 () Bool)

(declare-fun c!964189 () Bool)

(assert (=> bm!408144 (= call!408150 (nullable!5537 (ite c!964189 (regTwo!31519 (regOne!31518 r!7292)) (regTwo!31518 (regOne!31518 r!7292)))))))

(declare-fun b!5515558 () Bool)

(declare-fun e!3410684 () Bool)

(declare-fun e!3410686 () Bool)

(assert (=> b!5515558 (= e!3410684 e!3410686)))

(declare-fun res!2349998 () Bool)

(declare-fun call!408149 () Bool)

(assert (=> b!5515558 (= res!2349998 call!408149)))

(assert (=> b!5515558 (=> (not res!2349998) (not e!3410686))))

(declare-fun b!5515559 () Bool)

(declare-fun e!3410689 () Bool)

(assert (=> b!5515559 (= e!3410689 call!408150)))

(declare-fun b!5515560 () Bool)

(declare-fun e!3410687 () Bool)

(declare-fun e!3410688 () Bool)

(assert (=> b!5515560 (= e!3410687 e!3410688)))

(declare-fun res!2349996 () Bool)

(assert (=> b!5515560 (=> (not res!2349996) (not e!3410688))))

(assert (=> b!5515560 (= res!2349996 (and (not ((_ is EmptyLang!15503) (regOne!31518 r!7292))) (not ((_ is ElementMatch!15503) (regOne!31518 r!7292)))))))

(declare-fun bm!408145 () Bool)

(assert (=> bm!408145 (= call!408149 (nullable!5537 (ite c!964189 (regOne!31519 (regOne!31518 r!7292)) (regOne!31518 (regOne!31518 r!7292)))))))

(declare-fun b!5515561 () Bool)

(assert (=> b!5515561 (= e!3410686 call!408150)))

(declare-fun b!5515562 () Bool)

(declare-fun e!3410685 () Bool)

(assert (=> b!5515562 (= e!3410688 e!3410685)))

(declare-fun res!2350000 () Bool)

(assert (=> b!5515562 (=> res!2350000 e!3410685)))

(assert (=> b!5515562 (= res!2350000 ((_ is Star!15503) (regOne!31518 r!7292)))))

(declare-fun b!5515563 () Bool)

(assert (=> b!5515563 (= e!3410685 e!3410684)))

(assert (=> b!5515563 (= c!964189 ((_ is Union!15503) (regOne!31518 r!7292)))))

(declare-fun d!1747453 () Bool)

(declare-fun res!2349999 () Bool)

(assert (=> d!1747453 (=> res!2349999 e!3410687)))

(assert (=> d!1747453 (= res!2349999 ((_ is EmptyExpr!15503) (regOne!31518 r!7292)))))

(assert (=> d!1747453 (= (nullableFct!1663 (regOne!31518 r!7292)) e!3410687)))

(declare-fun b!5515564 () Bool)

(assert (=> b!5515564 (= e!3410684 e!3410689)))

(declare-fun res!2349997 () Bool)

(assert (=> b!5515564 (= res!2349997 call!408149)))

(assert (=> b!5515564 (=> res!2349997 e!3410689)))

(assert (= (and d!1747453 (not res!2349999)) b!5515560))

(assert (= (and b!5515560 res!2349996) b!5515562))

(assert (= (and b!5515562 (not res!2350000)) b!5515563))

(assert (= (and b!5515563 c!964189) b!5515564))

(assert (= (and b!5515563 (not c!964189)) b!5515558))

(assert (= (and b!5515564 (not res!2349997)) b!5515559))

(assert (= (and b!5515558 res!2349998) b!5515561))

(assert (= (or b!5515559 b!5515561) bm!408144))

(assert (= (or b!5515564 b!5515558) bm!408145))

(declare-fun m!6519654 () Bool)

(assert (=> bm!408144 m!6519654))

(declare-fun m!6519656 () Bool)

(assert (=> bm!408145 m!6519656))

(assert (=> d!1747017 d!1747453))

(declare-fun d!1747455 () Bool)

(assert (=> d!1747455 (= (nullable!5537 (h!69132 (exprs!5387 lt!2245851))) (nullableFct!1663 (h!69132 (exprs!5387 lt!2245851))))))

(declare-fun bs!1271185 () Bool)

(assert (= bs!1271185 d!1747455))

(declare-fun m!6519658 () Bool)

(assert (=> bs!1271185 m!6519658))

(assert (=> b!5514401 d!1747455))

(declare-fun bs!1271186 () Bool)

(declare-fun d!1747457 () Bool)

(assert (= bs!1271186 (and d!1747457 d!1747025)))

(declare-fun lambda!295602 () Int)

(assert (=> bs!1271186 (= lambda!295602 lambda!295542)))

(declare-fun bs!1271187 () Bool)

(assert (= bs!1271187 (and d!1747457 d!1747043)))

(assert (=> bs!1271187 (= lambda!295602 lambda!295549)))

(declare-fun bs!1271188 () Bool)

(assert (= bs!1271188 (and d!1747457 d!1747023)))

(assert (=> bs!1271188 (= lambda!295602 lambda!295539)))

(declare-fun bs!1271189 () Bool)

(assert (= bs!1271189 (and d!1747457 d!1747391)))

(assert (=> bs!1271189 (= lambda!295602 lambda!295597)))

(declare-fun bs!1271190 () Bool)

(assert (= bs!1271190 (and d!1747457 d!1747441)))

(assert (=> bs!1271190 (= lambda!295602 lambda!295600)))

(declare-fun bs!1271191 () Bool)

(assert (= bs!1271191 (and d!1747457 d!1747045)))

(assert (=> bs!1271191 (= lambda!295602 lambda!295552)))

(declare-fun bs!1271192 () Bool)

(assert (= bs!1271192 (and d!1747457 d!1747021)))

(assert (=> bs!1271192 (= lambda!295602 lambda!295536)))

(declare-fun b!5515565 () Bool)

(declare-fun e!3410692 () Bool)

(declare-fun lt!2245986 () Regex!15503)

(assert (=> b!5515565 (= e!3410692 (isConcat!600 lt!2245986))))

(declare-fun b!5515566 () Bool)

(declare-fun e!3410691 () Regex!15503)

(assert (=> b!5515566 (= e!3410691 EmptyExpr!15503)))

(declare-fun e!3410695 () Bool)

(assert (=> d!1747457 e!3410695))

(declare-fun res!2350001 () Bool)

(assert (=> d!1747457 (=> (not res!2350001) (not e!3410695))))

(assert (=> d!1747457 (= res!2350001 (validRegex!7239 lt!2245986))))

(declare-fun e!3410693 () Regex!15503)

(assert (=> d!1747457 (= lt!2245986 e!3410693)))

(declare-fun c!964192 () Bool)

(declare-fun e!3410690 () Bool)

(assert (=> d!1747457 (= c!964192 e!3410690)))

(declare-fun res!2350002 () Bool)

(assert (=> d!1747457 (=> (not res!2350002) (not e!3410690))))

(assert (=> d!1747457 (= res!2350002 ((_ is Cons!62684) (t!376055 (exprs!5387 (h!69133 zl!343)))))))

(assert (=> d!1747457 (forall!14679 (t!376055 (exprs!5387 (h!69133 zl!343))) lambda!295602)))

(assert (=> d!1747457 (= (generalisedConcat!1118 (t!376055 (exprs!5387 (h!69133 zl!343)))) lt!2245986)))

(declare-fun b!5515567 () Bool)

(declare-fun e!3410694 () Bool)

(assert (=> b!5515567 (= e!3410694 (isEmptyExpr!1077 lt!2245986))))

(declare-fun b!5515568 () Bool)

(assert (=> b!5515568 (= e!3410695 e!3410694)))

(declare-fun c!964191 () Bool)

(assert (=> b!5515568 (= c!964191 (isEmpty!34465 (t!376055 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5515569 () Bool)

(assert (=> b!5515569 (= e!3410693 e!3410691)))

(declare-fun c!964190 () Bool)

(assert (=> b!5515569 (= c!964190 ((_ is Cons!62684) (t!376055 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5515570 () Bool)

(assert (=> b!5515570 (= e!3410691 (Concat!24348 (h!69132 (t!376055 (exprs!5387 (h!69133 zl!343)))) (generalisedConcat!1118 (t!376055 (t!376055 (exprs!5387 (h!69133 zl!343)))))))))

(declare-fun b!5515571 () Bool)

(assert (=> b!5515571 (= e!3410692 (= lt!2245986 (head!11814 (t!376055 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun b!5515572 () Bool)

(assert (=> b!5515572 (= e!3410690 (isEmpty!34465 (t!376055 (t!376055 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun b!5515573 () Bool)

(assert (=> b!5515573 (= e!3410694 e!3410692)))

(declare-fun c!964193 () Bool)

(assert (=> b!5515573 (= c!964193 (isEmpty!34465 (tail!10909 (t!376055 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun b!5515574 () Bool)

(assert (=> b!5515574 (= e!3410693 (h!69132 (t!376055 (exprs!5387 (h!69133 zl!343)))))))

(assert (= (and d!1747457 res!2350002) b!5515572))

(assert (= (and d!1747457 c!964192) b!5515574))

(assert (= (and d!1747457 (not c!964192)) b!5515569))

(assert (= (and b!5515569 c!964190) b!5515570))

(assert (= (and b!5515569 (not c!964190)) b!5515566))

(assert (= (and d!1747457 res!2350001) b!5515568))

(assert (= (and b!5515568 c!964191) b!5515567))

(assert (= (and b!5515568 (not c!964191)) b!5515573))

(assert (= (and b!5515573 c!964193) b!5515571))

(assert (= (and b!5515573 (not c!964193)) b!5515565))

(assert (=> b!5515568 m!6518342))

(declare-fun m!6519660 () Bool)

(assert (=> b!5515572 m!6519660))

(declare-fun m!6519662 () Bool)

(assert (=> b!5515570 m!6519662))

(declare-fun m!6519664 () Bool)

(assert (=> b!5515565 m!6519664))

(declare-fun m!6519666 () Bool)

(assert (=> b!5515571 m!6519666))

(declare-fun m!6519668 () Bool)

(assert (=> b!5515573 m!6519668))

(assert (=> b!5515573 m!6519668))

(declare-fun m!6519670 () Bool)

(assert (=> b!5515573 m!6519670))

(declare-fun m!6519672 () Bool)

(assert (=> d!1747457 m!6519672))

(declare-fun m!6519674 () Bool)

(assert (=> d!1747457 m!6519674))

(declare-fun m!6519676 () Bool)

(assert (=> b!5515567 m!6519676))

(assert (=> b!5514606 d!1747457))

(declare-fun d!1747459 () Bool)

(assert (=> d!1747459 (= ($colon$colon!1584 (exprs!5387 lt!2245851) (ite (or c!963895 c!963894) (regTwo!31518 (regOne!31518 r!7292)) (regOne!31518 r!7292))) (Cons!62684 (ite (or c!963895 c!963894) (regTwo!31518 (regOne!31518 r!7292)) (regOne!31518 r!7292)) (exprs!5387 lt!2245851)))))

(assert (=> bm!407935 d!1747459))

(assert (=> bm!407948 d!1747423))

(declare-fun d!1747461 () Bool)

(assert (=> d!1747461 true))

(declare-fun setRes!36656 () Bool)

(assert (=> d!1747461 setRes!36656))

(declare-fun condSetEmpty!36656 () Bool)

(declare-fun res!2350003 () (InoxSet Context!9774))

(assert (=> d!1747461 (= condSetEmpty!36656 (= res!2350003 ((as const (Array Context!9774 Bool)) false)))))

(assert (=> d!1747461 (= (choose!41916 lt!2245837 lambda!295489) res!2350003)))

(declare-fun setIsEmpty!36656 () Bool)

(assert (=> setIsEmpty!36656 setRes!36656))

(declare-fun setNonEmpty!36656 () Bool)

(declare-fun setElem!36656 () Context!9774)

(declare-fun tp!1517297 () Bool)

(declare-fun e!3410696 () Bool)

(assert (=> setNonEmpty!36656 (= setRes!36656 (and tp!1517297 (inv!82004 setElem!36656) e!3410696))))

(declare-fun setRest!36656 () (InoxSet Context!9774))

(assert (=> setNonEmpty!36656 (= res!2350003 ((_ map or) (store ((as const (Array Context!9774 Bool)) false) setElem!36656 true) setRest!36656))))

(declare-fun b!5515575 () Bool)

(declare-fun tp!1517296 () Bool)

(assert (=> b!5515575 (= e!3410696 tp!1517296)))

(assert (= (and d!1747461 condSetEmpty!36656) setIsEmpty!36656))

(assert (= (and d!1747461 (not condSetEmpty!36656)) setNonEmpty!36656))

(assert (= setNonEmpty!36656 b!5515575))

(declare-fun m!6519678 () Bool)

(assert (=> setNonEmpty!36656 m!6519678))

(assert (=> d!1747015 d!1747461))

(declare-fun bs!1271193 () Bool)

(declare-fun d!1747463 () Bool)

(assert (= bs!1271193 (and d!1747463 d!1747325)))

(declare-fun lambda!295603 () Int)

(assert (=> bs!1271193 (= lambda!295603 lambda!295588)))

(declare-fun bs!1271194 () Bool)

(assert (= bs!1271194 (and d!1747463 d!1747347)))

(assert (=> bs!1271194 (= lambda!295603 lambda!295595)))

(declare-fun bs!1271195 () Bool)

(assert (= bs!1271195 (and d!1747463 d!1747363)))

(assert (=> bs!1271195 (= lambda!295603 lambda!295596)))

(declare-fun bs!1271196 () Bool)

(assert (= bs!1271196 (and d!1747463 d!1747445)))

(assert (=> bs!1271196 (= lambda!295603 lambda!295601)))

(assert (=> d!1747463 (= (nullableZipper!1531 lt!2245835) (exists!2136 lt!2245835 lambda!295603))))

(declare-fun bs!1271197 () Bool)

(assert (= bs!1271197 d!1747463))

(declare-fun m!6519680 () Bool)

(assert (=> bs!1271197 m!6519680))

(assert (=> b!5514636 d!1747463))

(declare-fun b!5515576 () Bool)

(declare-fun e!3410697 () (InoxSet Context!9774))

(assert (=> b!5515576 (= e!3410697 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!408146 () Bool)

(declare-fun call!408151 () (InoxSet Context!9774))

(assert (=> bm!408146 (= call!408151 (derivationStepZipperDown!845 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))))) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343))))))) (h!69134 s!2326)))))

(declare-fun d!1747465 () Bool)

(declare-fun c!964194 () Bool)

(declare-fun e!3410698 () Bool)

(assert (=> d!1747465 (= c!964194 e!3410698)))

(declare-fun res!2350004 () Bool)

(assert (=> d!1747465 (=> (not res!2350004) (not e!3410698))))

(assert (=> d!1747465 (= res!2350004 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))))))))

(declare-fun e!3410699 () (InoxSet Context!9774))

(assert (=> d!1747465 (= (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))) (h!69134 s!2326)) e!3410699)))

(declare-fun b!5515577 () Bool)

(assert (=> b!5515577 (= e!3410699 e!3410697)))

(declare-fun c!964195 () Bool)

(assert (=> b!5515577 (= c!964195 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))))))))

(declare-fun b!5515578 () Bool)

(assert (=> b!5515578 (= e!3410697 call!408151)))

(declare-fun b!5515579 () Bool)

(assert (=> b!5515579 (= e!3410698 (nullable!5537 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343))))))))))

(declare-fun b!5515580 () Bool)

(assert (=> b!5515580 (= e!3410699 ((_ map or) call!408151 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343))))))) (h!69134 s!2326))))))

(assert (= (and d!1747465 res!2350004) b!5515579))

(assert (= (and d!1747465 c!964194) b!5515580))

(assert (= (and d!1747465 (not c!964194)) b!5515577))

(assert (= (and b!5515577 c!964195) b!5515578))

(assert (= (and b!5515577 (not c!964195)) b!5515576))

(assert (= (or b!5515580 b!5515578) bm!408146))

(declare-fun m!6519682 () Bool)

(assert (=> bm!408146 m!6519682))

(declare-fun m!6519684 () Bool)

(assert (=> b!5515579 m!6519684))

(declare-fun m!6519686 () Bool)

(assert (=> b!5515580 m!6519686))

(assert (=> b!5514492 d!1747465))

(declare-fun b!5515581 () Bool)

(declare-fun e!3410701 () Bool)

(declare-fun e!3410700 () Bool)

(assert (=> b!5515581 (= e!3410701 e!3410700)))

(declare-fun res!2350008 () Bool)

(assert (=> b!5515581 (=> (not res!2350008) (not e!3410700))))

(declare-fun call!408153 () Bool)

(assert (=> b!5515581 (= res!2350008 call!408153)))

(declare-fun d!1747467 () Bool)

(declare-fun res!2350005 () Bool)

(declare-fun e!3410704 () Bool)

(assert (=> d!1747467 (=> res!2350005 e!3410704)))

(assert (=> d!1747467 (= res!2350005 ((_ is ElementMatch!15503) lt!2245942))))

(assert (=> d!1747467 (= (validRegex!7239 lt!2245942) e!3410704)))

(declare-fun b!5515582 () Bool)

(declare-fun res!2350007 () Bool)

(declare-fun e!3410702 () Bool)

(assert (=> b!5515582 (=> (not res!2350007) (not e!3410702))))

(assert (=> b!5515582 (= res!2350007 call!408153)))

(declare-fun e!3410703 () Bool)

(assert (=> b!5515582 (= e!3410703 e!3410702)))

(declare-fun bm!408147 () Bool)

(declare-fun call!408154 () Bool)

(declare-fun call!408152 () Bool)

(assert (=> bm!408147 (= call!408154 call!408152)))

(declare-fun b!5515583 () Bool)

(declare-fun e!3410706 () Bool)

(assert (=> b!5515583 (= e!3410706 call!408152)))

(declare-fun b!5515584 () Bool)

(assert (=> b!5515584 (= e!3410700 call!408154)))

(declare-fun b!5515585 () Bool)

(assert (=> b!5515585 (= e!3410702 call!408154)))

(declare-fun b!5515586 () Bool)

(declare-fun e!3410705 () Bool)

(assert (=> b!5515586 (= e!3410705 e!3410706)))

(declare-fun res!2350006 () Bool)

(assert (=> b!5515586 (= res!2350006 (not (nullable!5537 (reg!15832 lt!2245942))))))

(assert (=> b!5515586 (=> (not res!2350006) (not e!3410706))))

(declare-fun b!5515587 () Bool)

(assert (=> b!5515587 (= e!3410704 e!3410705)))

(declare-fun c!964196 () Bool)

(assert (=> b!5515587 (= c!964196 ((_ is Star!15503) lt!2245942))))

(declare-fun bm!408148 () Bool)

(declare-fun c!964197 () Bool)

(assert (=> bm!408148 (= call!408152 (validRegex!7239 (ite c!964196 (reg!15832 lt!2245942) (ite c!964197 (regTwo!31519 lt!2245942) (regTwo!31518 lt!2245942)))))))

(declare-fun b!5515588 () Bool)

(declare-fun res!2350009 () Bool)

(assert (=> b!5515588 (=> res!2350009 e!3410701)))

(assert (=> b!5515588 (= res!2350009 (not ((_ is Concat!24348) lt!2245942)))))

(assert (=> b!5515588 (= e!3410703 e!3410701)))

(declare-fun b!5515589 () Bool)

(assert (=> b!5515589 (= e!3410705 e!3410703)))

(assert (=> b!5515589 (= c!964197 ((_ is Union!15503) lt!2245942))))

(declare-fun bm!408149 () Bool)

(assert (=> bm!408149 (= call!408153 (validRegex!7239 (ite c!964197 (regOne!31519 lt!2245942) (regOne!31518 lt!2245942))))))

(assert (= (and d!1747467 (not res!2350005)) b!5515587))

(assert (= (and b!5515587 c!964196) b!5515586))

(assert (= (and b!5515587 (not c!964196)) b!5515589))

(assert (= (and b!5515586 res!2350006) b!5515583))

(assert (= (and b!5515589 c!964197) b!5515582))

(assert (= (and b!5515589 (not c!964197)) b!5515588))

(assert (= (and b!5515582 res!2350007) b!5515585))

(assert (= (and b!5515588 (not res!2350009)) b!5515581))

(assert (= (and b!5515581 res!2350008) b!5515584))

(assert (= (or b!5515585 b!5515584) bm!408147))

(assert (= (or b!5515582 b!5515581) bm!408149))

(assert (= (or b!5515583 bm!408147) bm!408148))

(declare-fun m!6519688 () Bool)

(assert (=> b!5515586 m!6519688))

(declare-fun m!6519690 () Bool)

(assert (=> bm!408148 m!6519690))

(declare-fun m!6519692 () Bool)

(assert (=> bm!408149 m!6519692))

(assert (=> d!1747045 d!1747467))

(declare-fun d!1747469 () Bool)

(declare-fun res!2350010 () Bool)

(declare-fun e!3410707 () Bool)

(assert (=> d!1747469 (=> res!2350010 e!3410707)))

(assert (=> d!1747469 (= res!2350010 ((_ is Nil!62684) (exprs!5387 (h!69133 zl!343))))))

(assert (=> d!1747469 (= (forall!14679 (exprs!5387 (h!69133 zl!343)) lambda!295552) e!3410707)))

(declare-fun b!5515590 () Bool)

(declare-fun e!3410708 () Bool)

(assert (=> b!5515590 (= e!3410707 e!3410708)))

(declare-fun res!2350011 () Bool)

(assert (=> b!5515590 (=> (not res!2350011) (not e!3410708))))

(assert (=> b!5515590 (= res!2350011 (dynLambda!24492 lambda!295552 (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5515591 () Bool)

(assert (=> b!5515591 (= e!3410708 (forall!14679 (t!376055 (exprs!5387 (h!69133 zl!343))) lambda!295552))))

(assert (= (and d!1747469 (not res!2350010)) b!5515590))

(assert (= (and b!5515590 res!2350011) b!5515591))

(declare-fun b_lambda!209113 () Bool)

(assert (=> (not b_lambda!209113) (not b!5515590)))

(declare-fun m!6519694 () Bool)

(assert (=> b!5515590 m!6519694))

(declare-fun m!6519696 () Bool)

(assert (=> b!5515591 m!6519696))

(assert (=> d!1747045 d!1747469))

(declare-fun d!1747471 () Bool)

(assert (=> d!1747471 (= (isConcat!600 lt!2245942) ((_ is Concat!24348) lt!2245942))))

(assert (=> b!5514601 d!1747471))

(declare-fun bs!1271198 () Bool)

(declare-fun b!5515598 () Bool)

(assert (= bs!1271198 (and b!5515598 d!1746991)))

(declare-fun lambda!295604 () Int)

(assert (=> bs!1271198 (not (= lambda!295604 lambda!295529))))

(declare-fun bs!1271199 () Bool)

(assert (= bs!1271199 (and b!5515598 b!5514534)))

(assert (=> bs!1271199 (= (and (= (reg!15832 (regTwo!31519 r!7292)) (reg!15832 r!7292)) (= (regTwo!31519 r!7292) r!7292)) (= lambda!295604 lambda!295547))))

(declare-fun bs!1271200 () Bool)

(assert (= bs!1271200 (and b!5515598 b!5513944)))

(assert (=> bs!1271200 (not (= lambda!295604 lambda!295487))))

(assert (=> bs!1271200 (not (= lambda!295604 lambda!295488))))

(declare-fun bs!1271201 () Bool)

(assert (= bs!1271201 (and b!5515598 d!1746975)))

(assert (=> bs!1271201 (not (= lambda!295604 lambda!295524))))

(declare-fun bs!1271202 () Bool)

(assert (= bs!1271202 (and b!5515598 b!5514531)))

(assert (=> bs!1271202 (not (= lambda!295604 lambda!295548))))

(declare-fun bs!1271203 () Bool)

(assert (= bs!1271203 (and b!5515598 d!1747333)))

(assert (=> bs!1271203 (not (= lambda!295604 lambda!295593))))

(assert (=> bs!1271203 (not (= lambda!295604 lambda!295594))))

(assert (=> bs!1271198 (not (= lambda!295604 lambda!295530))))

(assert (=> b!5515598 true))

(assert (=> b!5515598 true))

(declare-fun bs!1271204 () Bool)

(declare-fun b!5515595 () Bool)

(assert (= bs!1271204 (and b!5515595 d!1746991)))

(declare-fun lambda!295605 () Int)

(assert (=> bs!1271204 (not (= lambda!295605 lambda!295529))))

(declare-fun bs!1271205 () Bool)

(assert (= bs!1271205 (and b!5515595 b!5514534)))

(assert (=> bs!1271205 (not (= lambda!295605 lambda!295547))))

(declare-fun bs!1271206 () Bool)

(assert (= bs!1271206 (and b!5515595 b!5513944)))

(assert (=> bs!1271206 (not (= lambda!295605 lambda!295487))))

(assert (=> bs!1271206 (= (and (= (regOne!31518 (regTwo!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regTwo!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295605 lambda!295488))))

(declare-fun bs!1271207 () Bool)

(assert (= bs!1271207 (and b!5515595 b!5514531)))

(assert (=> bs!1271207 (= (and (= (regOne!31518 (regTwo!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regTwo!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295605 lambda!295548))))

(declare-fun bs!1271208 () Bool)

(assert (= bs!1271208 (and b!5515595 d!1747333)))

(assert (=> bs!1271208 (not (= lambda!295605 lambda!295593))))

(declare-fun bs!1271209 () Bool)

(assert (= bs!1271209 (and b!5515595 d!1746975)))

(assert (=> bs!1271209 (not (= lambda!295605 lambda!295524))))

(declare-fun bs!1271210 () Bool)

(assert (= bs!1271210 (and b!5515595 b!5515598)))

(assert (=> bs!1271210 (not (= lambda!295605 lambda!295604))))

(assert (=> bs!1271208 (= (and (= (regOne!31518 (regTwo!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regTwo!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295605 lambda!295594))))

(assert (=> bs!1271204 (= (and (= (regOne!31518 (regTwo!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regTwo!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295605 lambda!295530))))

(assert (=> b!5515595 true))

(assert (=> b!5515595 true))

(declare-fun d!1747473 () Bool)

(declare-fun c!964201 () Bool)

(assert (=> d!1747473 (= c!964201 ((_ is EmptyExpr!15503) (regTwo!31519 r!7292)))))

(declare-fun e!3410713 () Bool)

(assert (=> d!1747473 (= (matchRSpec!2606 (regTwo!31519 r!7292) s!2326) e!3410713)))

(declare-fun b!5515592 () Bool)

(declare-fun e!3410715 () Bool)

(declare-fun e!3410712 () Bool)

(assert (=> b!5515592 (= e!3410715 e!3410712)))

(declare-fun c!964200 () Bool)

(assert (=> b!5515592 (= c!964200 ((_ is Star!15503) (regTwo!31519 r!7292)))))

(declare-fun b!5515593 () Bool)

(declare-fun e!3410714 () Bool)

(assert (=> b!5515593 (= e!3410713 e!3410714)))

(declare-fun res!2350013 () Bool)

(assert (=> b!5515593 (= res!2350013 (not ((_ is EmptyLang!15503) (regTwo!31519 r!7292))))))

(assert (=> b!5515593 (=> (not res!2350013) (not e!3410714))))

(declare-fun b!5515594 () Bool)

(declare-fun res!2350014 () Bool)

(declare-fun e!3410709 () Bool)

(assert (=> b!5515594 (=> res!2350014 e!3410709)))

(declare-fun call!408156 () Bool)

(assert (=> b!5515594 (= res!2350014 call!408156)))

(assert (=> b!5515594 (= e!3410712 e!3410709)))

(declare-fun call!408155 () Bool)

(assert (=> b!5515595 (= e!3410712 call!408155)))

(declare-fun b!5515596 () Bool)

(declare-fun c!964198 () Bool)

(assert (=> b!5515596 (= c!964198 ((_ is ElementMatch!15503) (regTwo!31519 r!7292)))))

(declare-fun e!3410711 () Bool)

(assert (=> b!5515596 (= e!3410714 e!3410711)))

(declare-fun b!5515597 () Bool)

(assert (=> b!5515597 (= e!3410711 (= s!2326 (Cons!62686 (c!963749 (regTwo!31519 r!7292)) Nil!62686)))))

(assert (=> b!5515598 (= e!3410709 call!408155)))

(declare-fun bm!408150 () Bool)

(assert (=> bm!408150 (= call!408155 (Exists!2603 (ite c!964200 lambda!295604 lambda!295605)))))

(declare-fun b!5515599 () Bool)

(declare-fun e!3410710 () Bool)

(assert (=> b!5515599 (= e!3410710 (matchRSpec!2606 (regTwo!31519 (regTwo!31519 r!7292)) s!2326))))

(declare-fun bm!408151 () Bool)

(assert (=> bm!408151 (= call!408156 (isEmpty!34470 s!2326))))

(declare-fun b!5515600 () Bool)

(assert (=> b!5515600 (= e!3410713 call!408156)))

(declare-fun b!5515601 () Bool)

(declare-fun c!964199 () Bool)

(assert (=> b!5515601 (= c!964199 ((_ is Union!15503) (regTwo!31519 r!7292)))))

(assert (=> b!5515601 (= e!3410711 e!3410715)))

(declare-fun b!5515602 () Bool)

(assert (=> b!5515602 (= e!3410715 e!3410710)))

(declare-fun res!2350012 () Bool)

(assert (=> b!5515602 (= res!2350012 (matchRSpec!2606 (regOne!31519 (regTwo!31519 r!7292)) s!2326))))

(assert (=> b!5515602 (=> res!2350012 e!3410710)))

(assert (= (and d!1747473 c!964201) b!5515600))

(assert (= (and d!1747473 (not c!964201)) b!5515593))

(assert (= (and b!5515593 res!2350013) b!5515596))

(assert (= (and b!5515596 c!964198) b!5515597))

(assert (= (and b!5515596 (not c!964198)) b!5515601))

(assert (= (and b!5515601 c!964199) b!5515602))

(assert (= (and b!5515601 (not c!964199)) b!5515592))

(assert (= (and b!5515602 (not res!2350012)) b!5515599))

(assert (= (and b!5515592 c!964200) b!5515594))

(assert (= (and b!5515592 (not c!964200)) b!5515595))

(assert (= (and b!5515594 (not res!2350014)) b!5515598))

(assert (= (or b!5515598 b!5515595) bm!408150))

(assert (= (or b!5515600 b!5515594) bm!408151))

(declare-fun m!6519698 () Bool)

(assert (=> bm!408150 m!6519698))

(declare-fun m!6519700 () Bool)

(assert (=> b!5515599 m!6519700))

(assert (=> bm!408151 m!6518632))

(declare-fun m!6519702 () Bool)

(assert (=> b!5515602 m!6519702))

(assert (=> b!5514535 d!1747473))

(assert (=> b!5514266 d!1747393))

(assert (=> d!1747037 d!1747423))

(assert (=> d!1747037 d!1747063))

(assert (=> bs!1270963 d!1747009))

(declare-fun bs!1271211 () Bool)

(declare-fun d!1747475 () Bool)

(assert (= bs!1271211 (and d!1747475 d!1747025)))

(declare-fun lambda!295606 () Int)

(assert (=> bs!1271211 (= lambda!295606 lambda!295542)))

(declare-fun bs!1271212 () Bool)

(assert (= bs!1271212 (and d!1747475 d!1747043)))

(assert (=> bs!1271212 (= lambda!295606 lambda!295549)))

(declare-fun bs!1271213 () Bool)

(assert (= bs!1271213 (and d!1747475 d!1747023)))

(assert (=> bs!1271213 (= lambda!295606 lambda!295539)))

(declare-fun bs!1271214 () Bool)

(assert (= bs!1271214 (and d!1747475 d!1747391)))

(assert (=> bs!1271214 (= lambda!295606 lambda!295597)))

(declare-fun bs!1271215 () Bool)

(assert (= bs!1271215 (and d!1747475 d!1747441)))

(assert (=> bs!1271215 (= lambda!295606 lambda!295600)))

(declare-fun bs!1271216 () Bool)

(assert (= bs!1271216 (and d!1747475 d!1747045)))

(assert (=> bs!1271216 (= lambda!295606 lambda!295552)))

(declare-fun bs!1271217 () Bool)

(assert (= bs!1271217 (and d!1747475 d!1747021)))

(assert (=> bs!1271217 (= lambda!295606 lambda!295536)))

(declare-fun bs!1271218 () Bool)

(assert (= bs!1271218 (and d!1747475 d!1747457)))

(assert (=> bs!1271218 (= lambda!295606 lambda!295602)))

(declare-fun b!5515603 () Bool)

(declare-fun e!3410721 () Regex!15503)

(assert (=> b!5515603 (= e!3410721 EmptyLang!15503)))

(declare-fun b!5515604 () Bool)

(declare-fun e!3410720 () Regex!15503)

(assert (=> b!5515604 (= e!3410720 (h!69132 (t!376055 (unfocusZipperList!931 zl!343))))))

(declare-fun b!5515605 () Bool)

(declare-fun e!3410716 () Bool)

(declare-fun e!3410718 () Bool)

(assert (=> b!5515605 (= e!3410716 e!3410718)))

(declare-fun c!964204 () Bool)

(assert (=> b!5515605 (= c!964204 (isEmpty!34465 (tail!10909 (t!376055 (unfocusZipperList!931 zl!343)))))))

(declare-fun b!5515606 () Bool)

(declare-fun lt!2245987 () Regex!15503)

(assert (=> b!5515606 (= e!3410716 (isEmptyLang!1088 lt!2245987))))

(declare-fun b!5515607 () Bool)

(assert (=> b!5515607 (= e!3410718 (isUnion!518 lt!2245987))))

(declare-fun b!5515608 () Bool)

(assert (=> b!5515608 (= e!3410721 (Union!15503 (h!69132 (t!376055 (unfocusZipperList!931 zl!343))) (generalisedUnion!1366 (t!376055 (t!376055 (unfocusZipperList!931 zl!343))))))))

(declare-fun b!5515609 () Bool)

(assert (=> b!5515609 (= e!3410718 (= lt!2245987 (head!11814 (t!376055 (unfocusZipperList!931 zl!343)))))))

(declare-fun b!5515610 () Bool)

(assert (=> b!5515610 (= e!3410720 e!3410721)))

(declare-fun c!964203 () Bool)

(assert (=> b!5515610 (= c!964203 ((_ is Cons!62684) (t!376055 (unfocusZipperList!931 zl!343))))))

(declare-fun e!3410719 () Bool)

(assert (=> d!1747475 e!3410719))

(declare-fun res!2350016 () Bool)

(assert (=> d!1747475 (=> (not res!2350016) (not e!3410719))))

(assert (=> d!1747475 (= res!2350016 (validRegex!7239 lt!2245987))))

(assert (=> d!1747475 (= lt!2245987 e!3410720)))

(declare-fun c!964202 () Bool)

(declare-fun e!3410717 () Bool)

(assert (=> d!1747475 (= c!964202 e!3410717)))

(declare-fun res!2350015 () Bool)

(assert (=> d!1747475 (=> (not res!2350015) (not e!3410717))))

(assert (=> d!1747475 (= res!2350015 ((_ is Cons!62684) (t!376055 (unfocusZipperList!931 zl!343))))))

(assert (=> d!1747475 (forall!14679 (t!376055 (unfocusZipperList!931 zl!343)) lambda!295606)))

(assert (=> d!1747475 (= (generalisedUnion!1366 (t!376055 (unfocusZipperList!931 zl!343))) lt!2245987)))

(declare-fun b!5515611 () Bool)

(assert (=> b!5515611 (= e!3410719 e!3410716)))

(declare-fun c!964205 () Bool)

(assert (=> b!5515611 (= c!964205 (isEmpty!34465 (t!376055 (unfocusZipperList!931 zl!343))))))

(declare-fun b!5515612 () Bool)

(assert (=> b!5515612 (= e!3410717 (isEmpty!34465 (t!376055 (t!376055 (unfocusZipperList!931 zl!343)))))))

(assert (= (and d!1747475 res!2350015) b!5515612))

(assert (= (and d!1747475 c!964202) b!5515604))

(assert (= (and d!1747475 (not c!964202)) b!5515610))

(assert (= (and b!5515610 c!964203) b!5515608))

(assert (= (and b!5515610 (not c!964203)) b!5515603))

(assert (= (and d!1747475 res!2350016) b!5515611))

(assert (= (and b!5515611 c!964205) b!5515606))

(assert (= (and b!5515611 (not c!964205)) b!5515605))

(assert (= (and b!5515605 c!964204) b!5515609))

(assert (= (and b!5515605 (not c!964204)) b!5515607))

(declare-fun m!6519704 () Bool)

(assert (=> b!5515606 m!6519704))

(assert (=> b!5515611 m!6518718))

(declare-fun m!6519706 () Bool)

(assert (=> b!5515605 m!6519706))

(assert (=> b!5515605 m!6519706))

(declare-fun m!6519708 () Bool)

(assert (=> b!5515605 m!6519708))

(declare-fun m!6519710 () Bool)

(assert (=> d!1747475 m!6519710))

(declare-fun m!6519712 () Bool)

(assert (=> d!1747475 m!6519712))

(declare-fun m!6519714 () Bool)

(assert (=> b!5515608 m!6519714))

(declare-fun m!6519716 () Bool)

(assert (=> b!5515607 m!6519716))

(declare-fun m!6519718 () Bool)

(assert (=> b!5515612 m!6519718))

(declare-fun m!6519720 () Bool)

(assert (=> b!5515609 m!6519720))

(assert (=> b!5514477 d!1747475))

(assert (=> d!1747047 d!1747345))

(declare-fun d!1747477 () Bool)

(assert (=> d!1747477 (= ($colon$colon!1584 (exprs!5387 lt!2245849) (ite (or c!963888 c!963887) (regTwo!31518 (regTwo!31518 r!7292)) (regTwo!31518 r!7292))) (Cons!62684 (ite (or c!963888 c!963887) (regTwo!31518 (regTwo!31518 r!7292)) (regTwo!31518 r!7292)) (exprs!5387 lt!2245849)))))

(assert (=> bm!407928 d!1747477))

(declare-fun d!1747479 () Bool)

(assert (=> d!1747479 (= (isEmpty!34465 (t!376055 (unfocusZipperList!931 zl!343))) ((_ is Nil!62684) (t!376055 (unfocusZipperList!931 zl!343))))))

(assert (=> b!5514481 d!1747479))

(declare-fun b!5515613 () Bool)

(declare-fun e!3410722 () Bool)

(assert (=> b!5515613 (= e!3410722 (not (= (head!11813 s!2326) (c!963749 (regTwo!31518 r!7292)))))))

(declare-fun b!5515614 () Bool)

(declare-fun res!2350017 () Bool)

(declare-fun e!3410727 () Bool)

(assert (=> b!5515614 (=> (not res!2350017) (not e!3410727))))

(declare-fun call!408157 () Bool)

(assert (=> b!5515614 (= res!2350017 (not call!408157))))

(declare-fun b!5515616 () Bool)

(declare-fun e!3410723 () Bool)

(assert (=> b!5515616 (= e!3410723 e!3410722)))

(declare-fun res!2350021 () Bool)

(assert (=> b!5515616 (=> res!2350021 e!3410722)))

(assert (=> b!5515616 (= res!2350021 call!408157)))

(declare-fun b!5515617 () Bool)

(declare-fun e!3410724 () Bool)

(declare-fun lt!2245988 () Bool)

(assert (=> b!5515617 (= e!3410724 (not lt!2245988))))

(declare-fun b!5515618 () Bool)

(declare-fun res!2350019 () Bool)

(declare-fun e!3410725 () Bool)

(assert (=> b!5515618 (=> res!2350019 e!3410725)))

(assert (=> b!5515618 (= res!2350019 (not ((_ is ElementMatch!15503) (regTwo!31518 r!7292))))))

(assert (=> b!5515618 (= e!3410724 e!3410725)))

(declare-fun b!5515619 () Bool)

(declare-fun res!2350020 () Bool)

(assert (=> b!5515619 (=> res!2350020 e!3410725)))

(assert (=> b!5515619 (= res!2350020 e!3410727)))

(declare-fun res!2350022 () Bool)

(assert (=> b!5515619 (=> (not res!2350022) (not e!3410727))))

(assert (=> b!5515619 (= res!2350022 lt!2245988)))

(declare-fun b!5515620 () Bool)

(declare-fun res!2350023 () Bool)

(assert (=> b!5515620 (=> (not res!2350023) (not e!3410727))))

(assert (=> b!5515620 (= res!2350023 (isEmpty!34470 (tail!10908 s!2326)))))

(declare-fun b!5515621 () Bool)

(assert (=> b!5515621 (= e!3410727 (= (head!11813 s!2326) (c!963749 (regTwo!31518 r!7292))))))

(declare-fun bm!408152 () Bool)

(assert (=> bm!408152 (= call!408157 (isEmpty!34470 s!2326))))

(declare-fun b!5515622 () Bool)

(declare-fun e!3410728 () Bool)

(assert (=> b!5515622 (= e!3410728 (matchR!7688 (derivativeStep!4370 (regTwo!31518 r!7292) (head!11813 s!2326)) (tail!10908 s!2326)))))

(declare-fun b!5515615 () Bool)

(declare-fun res!2350024 () Bool)

(assert (=> b!5515615 (=> res!2350024 e!3410722)))

(assert (=> b!5515615 (= res!2350024 (not (isEmpty!34470 (tail!10908 s!2326))))))

(declare-fun d!1747481 () Bool)

(declare-fun e!3410726 () Bool)

(assert (=> d!1747481 e!3410726))

(declare-fun c!964206 () Bool)

(assert (=> d!1747481 (= c!964206 ((_ is EmptyExpr!15503) (regTwo!31518 r!7292)))))

(assert (=> d!1747481 (= lt!2245988 e!3410728)))

(declare-fun c!964208 () Bool)

(assert (=> d!1747481 (= c!964208 (isEmpty!34470 s!2326))))

(assert (=> d!1747481 (validRegex!7239 (regTwo!31518 r!7292))))

(assert (=> d!1747481 (= (matchR!7688 (regTwo!31518 r!7292) s!2326) lt!2245988)))

(declare-fun b!5515623 () Bool)

(assert (=> b!5515623 (= e!3410726 e!3410724)))

(declare-fun c!964207 () Bool)

(assert (=> b!5515623 (= c!964207 ((_ is EmptyLang!15503) (regTwo!31518 r!7292)))))

(declare-fun b!5515624 () Bool)

(assert (=> b!5515624 (= e!3410728 (nullable!5537 (regTwo!31518 r!7292)))))

(declare-fun b!5515625 () Bool)

(assert (=> b!5515625 (= e!3410726 (= lt!2245988 call!408157))))

(declare-fun b!5515626 () Bool)

(assert (=> b!5515626 (= e!3410725 e!3410723)))

(declare-fun res!2350018 () Bool)

(assert (=> b!5515626 (=> (not res!2350018) (not e!3410723))))

(assert (=> b!5515626 (= res!2350018 (not lt!2245988))))

(assert (= (and d!1747481 c!964208) b!5515624))

(assert (= (and d!1747481 (not c!964208)) b!5515622))

(assert (= (and d!1747481 c!964206) b!5515625))

(assert (= (and d!1747481 (not c!964206)) b!5515623))

(assert (= (and b!5515623 c!964207) b!5515617))

(assert (= (and b!5515623 (not c!964207)) b!5515618))

(assert (= (and b!5515618 (not res!2350019)) b!5515619))

(assert (= (and b!5515619 res!2350022) b!5515614))

(assert (= (and b!5515614 res!2350017) b!5515620))

(assert (= (and b!5515620 res!2350023) b!5515621))

(assert (= (and b!5515619 (not res!2350020)) b!5515626))

(assert (= (and b!5515626 res!2350018) b!5515616))

(assert (= (and b!5515616 (not res!2350021)) b!5515615))

(assert (= (and b!5515615 (not res!2350024)) b!5515613))

(assert (= (or b!5515625 b!5515614 b!5515616) bm!408152))

(assert (=> d!1747481 m!6518632))

(assert (=> d!1747481 m!6519386))

(assert (=> b!5515622 m!6518636))

(assert (=> b!5515622 m!6518636))

(declare-fun m!6519722 () Bool)

(assert (=> b!5515622 m!6519722))

(assert (=> b!5515622 m!6518640))

(assert (=> b!5515622 m!6519722))

(assert (=> b!5515622 m!6518640))

(declare-fun m!6519724 () Bool)

(assert (=> b!5515622 m!6519724))

(assert (=> bm!408152 m!6518632))

(assert (=> b!5515620 m!6518640))

(assert (=> b!5515620 m!6518640))

(assert (=> b!5515620 m!6518758))

(assert (=> b!5515615 m!6518640))

(assert (=> b!5515615 m!6518640))

(assert (=> b!5515615 m!6518758))

(assert (=> b!5515613 m!6518636))

(assert (=> b!5515624 m!6519398))

(assert (=> b!5515621 m!6518636))

(assert (=> b!5514262 d!1747481))

(declare-fun d!1747483 () Bool)

(declare-fun c!964209 () Bool)

(assert (=> d!1747483 (= c!964209 (isEmpty!34470 (tail!10908 (t!376057 s!2326))))))

(declare-fun e!3410729 () Bool)

(assert (=> d!1747483 (= (matchZipper!1661 (derivationStepZipper!1608 lt!2245838 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))) e!3410729)))

(declare-fun b!5515627 () Bool)

(assert (=> b!5515627 (= e!3410729 (nullableZipper!1531 (derivationStepZipper!1608 lt!2245838 (head!11813 (t!376057 s!2326)))))))

(declare-fun b!5515628 () Bool)

(assert (=> b!5515628 (= e!3410729 (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245838 (head!11813 (t!376057 s!2326))) (head!11813 (tail!10908 (t!376057 s!2326)))) (tail!10908 (tail!10908 (t!376057 s!2326)))))))

(assert (= (and d!1747483 c!964209) b!5515627))

(assert (= (and d!1747483 (not c!964209)) b!5515628))

(assert (=> d!1747483 m!6518652))

(assert (=> d!1747483 m!6519568))

(assert (=> b!5515627 m!6518786))

(declare-fun m!6519726 () Bool)

(assert (=> b!5515627 m!6519726))

(assert (=> b!5515628 m!6518652))

(assert (=> b!5515628 m!6519572))

(assert (=> b!5515628 m!6518786))

(assert (=> b!5515628 m!6519572))

(declare-fun m!6519728 () Bool)

(assert (=> b!5515628 m!6519728))

(assert (=> b!5515628 m!6518652))

(assert (=> b!5515628 m!6519576))

(assert (=> b!5515628 m!6519728))

(assert (=> b!5515628 m!6519576))

(declare-fun m!6519730 () Bool)

(assert (=> b!5515628 m!6519730))

(assert (=> b!5514612 d!1747483))

(declare-fun bs!1271219 () Bool)

(declare-fun d!1747485 () Bool)

(assert (= bs!1271219 (and d!1747485 d!1747411)))

(declare-fun lambda!295607 () Int)

(assert (=> bs!1271219 (= lambda!295607 lambda!295598)))

(declare-fun bs!1271220 () Bool)

(assert (= bs!1271220 (and d!1747485 b!5513931)))

(assert (=> bs!1271220 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295607 lambda!295489))))

(declare-fun bs!1271221 () Bool)

(assert (= bs!1271221 (and d!1747485 d!1747437)))

(assert (=> bs!1271221 (= (= (head!11813 (t!376057 s!2326)) (head!11813 s!2326)) (= lambda!295607 lambda!295599))))

(declare-fun bs!1271222 () Bool)

(assert (= bs!1271222 (and d!1747485 d!1747059)))

(assert (=> bs!1271222 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295607 lambda!295553))))

(declare-fun bs!1271223 () Bool)

(assert (= bs!1271223 (and d!1747485 d!1747001)))

(assert (=> bs!1271223 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295607 lambda!295533))))

(assert (=> d!1747485 true))

(assert (=> d!1747485 (= (derivationStepZipper!1608 lt!2245838 (head!11813 (t!376057 s!2326))) (flatMap!1116 lt!2245838 lambda!295607))))

(declare-fun bs!1271224 () Bool)

(assert (= bs!1271224 d!1747485))

(declare-fun m!6519732 () Bool)

(assert (=> bs!1271224 m!6519732))

(assert (=> b!5514612 d!1747485))

(assert (=> b!5514612 d!1747413))

(assert (=> b!5514612 d!1747415))

(declare-fun b!5515629 () Bool)

(declare-fun e!3410735 () (InoxSet Context!9774))

(declare-fun call!408159 () (InoxSet Context!9774))

(assert (=> b!5515629 (= e!3410735 call!408159)))

(declare-fun b!5515630 () Bool)

(declare-fun c!964210 () Bool)

(assert (=> b!5515630 (= c!964210 ((_ is Star!15503) (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun e!3410730 () (InoxSet Context!9774))

(assert (=> b!5515630 (= e!3410730 e!3410735)))

(declare-fun b!5515631 () Bool)

(declare-fun e!3410732 () (InoxSet Context!9774))

(declare-fun call!408158 () (InoxSet Context!9774))

(declare-fun call!408160 () (InoxSet Context!9774))

(assert (=> b!5515631 (= e!3410732 ((_ map or) call!408158 call!408160))))

(declare-fun call!408162 () List!62808)

(declare-fun c!964214 () Bool)

(declare-fun bm!408153 () Bool)

(assert (=> bm!408153 (= call!408158 (derivationStepZipperDown!845 (ite c!964214 (regOne!31519 (h!69132 (exprs!5387 (h!69133 zl!343)))) (regOne!31518 (h!69132 (exprs!5387 (h!69133 zl!343))))) (ite c!964214 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))) (Context!9775 call!408162)) (h!69134 s!2326)))))

(declare-fun call!408161 () (InoxSet Context!9774))

(declare-fun call!408163 () List!62808)

(declare-fun c!964212 () Bool)

(declare-fun c!964213 () Bool)

(declare-fun bm!408154 () Bool)

(assert (=> bm!408154 (= call!408161 (derivationStepZipperDown!845 (ite c!964214 (regTwo!31519 (h!69132 (exprs!5387 (h!69133 zl!343)))) (ite c!964213 (regTwo!31518 (h!69132 (exprs!5387 (h!69133 zl!343)))) (ite c!964212 (regOne!31518 (h!69132 (exprs!5387 (h!69133 zl!343)))) (reg!15832 (h!69132 (exprs!5387 (h!69133 zl!343))))))) (ite (or c!964214 c!964213) (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))) (Context!9775 call!408163)) (h!69134 s!2326)))))

(declare-fun bm!408155 () Bool)

(assert (=> bm!408155 (= call!408162 ($colon$colon!1584 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343))))) (ite (or c!964213 c!964212) (regTwo!31518 (h!69132 (exprs!5387 (h!69133 zl!343)))) (h!69132 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun b!5515632 () Bool)

(declare-fun e!3410731 () (InoxSet Context!9774))

(declare-fun e!3410734 () (InoxSet Context!9774))

(assert (=> b!5515632 (= e!3410731 e!3410734)))

(assert (=> b!5515632 (= c!964214 ((_ is Union!15503) (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5515633 () Bool)

(assert (=> b!5515633 (= e!3410734 ((_ map or) call!408158 call!408161))))

(declare-fun bm!408156 () Bool)

(assert (=> bm!408156 (= call!408163 call!408162)))

(declare-fun bm!408157 () Bool)

(assert (=> bm!408157 (= call!408160 call!408161)))

(declare-fun b!5515634 () Bool)

(declare-fun e!3410733 () Bool)

(assert (=> b!5515634 (= e!3410733 (nullable!5537 (regOne!31518 (h!69132 (exprs!5387 (h!69133 zl!343))))))))

(declare-fun bm!408158 () Bool)

(assert (=> bm!408158 (= call!408159 call!408160)))

(declare-fun b!5515635 () Bool)

(assert (=> b!5515635 (= e!3410735 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515636 () Bool)

(assert (=> b!5515636 (= e!3410732 e!3410730)))

(assert (=> b!5515636 (= c!964212 ((_ is Concat!24348) (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5515637 () Bool)

(assert (=> b!5515637 (= e!3410730 call!408159)))

(declare-fun b!5515638 () Bool)

(assert (=> b!5515638 (= e!3410731 (store ((as const (Array Context!9774 Bool)) false) (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))) true))))

(declare-fun b!5515639 () Bool)

(assert (=> b!5515639 (= c!964213 e!3410733)))

(declare-fun res!2350025 () Bool)

(assert (=> b!5515639 (=> (not res!2350025) (not e!3410733))))

(assert (=> b!5515639 (= res!2350025 ((_ is Concat!24348) (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(assert (=> b!5515639 (= e!3410734 e!3410732)))

(declare-fun d!1747487 () Bool)

(declare-fun c!964211 () Bool)

(assert (=> d!1747487 (= c!964211 (and ((_ is ElementMatch!15503) (h!69132 (exprs!5387 (h!69133 zl!343)))) (= (c!963749 (h!69132 (exprs!5387 (h!69133 zl!343)))) (h!69134 s!2326))))))

(assert (=> d!1747487 (= (derivationStepZipperDown!845 (h!69132 (exprs!5387 (h!69133 zl!343))) (Context!9775 (t!376055 (exprs!5387 (h!69133 zl!343)))) (h!69134 s!2326)) e!3410731)))

(assert (= (and d!1747487 c!964211) b!5515638))

(assert (= (and d!1747487 (not c!964211)) b!5515632))

(assert (= (and b!5515632 c!964214) b!5515633))

(assert (= (and b!5515632 (not c!964214)) b!5515639))

(assert (= (and b!5515639 res!2350025) b!5515634))

(assert (= (and b!5515639 c!964213) b!5515631))

(assert (= (and b!5515639 (not c!964213)) b!5515636))

(assert (= (and b!5515636 c!964212) b!5515637))

(assert (= (and b!5515636 (not c!964212)) b!5515630))

(assert (= (and b!5515630 c!964210) b!5515629))

(assert (= (and b!5515630 (not c!964210)) b!5515635))

(assert (= (or b!5515637 b!5515629) bm!408156))

(assert (= (or b!5515637 b!5515629) bm!408158))

(assert (= (or b!5515631 bm!408156) bm!408155))

(assert (= (or b!5515631 bm!408158) bm!408157))

(assert (= (or b!5515633 bm!408157) bm!408154))

(assert (= (or b!5515633 b!5515631) bm!408153))

(declare-fun m!6519734 () Bool)

(assert (=> bm!408155 m!6519734))

(declare-fun m!6519736 () Bool)

(assert (=> b!5515634 m!6519736))

(declare-fun m!6519738 () Bool)

(assert (=> bm!408153 m!6519738))

(declare-fun m!6519740 () Bool)

(assert (=> bm!408154 m!6519740))

(declare-fun m!6519742 () Bool)

(assert (=> b!5515638 m!6519742))

(assert (=> bm!407939 d!1747487))

(assert (=> b!5514625 d!1747017))

(declare-fun b!5515640 () Bool)

(declare-fun e!3410737 () Bool)

(declare-fun e!3410736 () Bool)

(assert (=> b!5515640 (= e!3410737 e!3410736)))

(declare-fun res!2350029 () Bool)

(assert (=> b!5515640 (=> (not res!2350029) (not e!3410736))))

(declare-fun call!408165 () Bool)

(assert (=> b!5515640 (= res!2350029 call!408165)))

(declare-fun d!1747489 () Bool)

(declare-fun res!2350026 () Bool)

(declare-fun e!3410740 () Bool)

(assert (=> d!1747489 (=> res!2350026 e!3410740)))

(assert (=> d!1747489 (= res!2350026 ((_ is ElementMatch!15503) (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))))))

(assert (=> d!1747489 (= (validRegex!7239 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))) e!3410740)))

(declare-fun b!5515641 () Bool)

(declare-fun res!2350028 () Bool)

(declare-fun e!3410738 () Bool)

(assert (=> b!5515641 (=> (not res!2350028) (not e!3410738))))

(assert (=> b!5515641 (= res!2350028 call!408165)))

(declare-fun e!3410739 () Bool)

(assert (=> b!5515641 (= e!3410739 e!3410738)))

(declare-fun bm!408159 () Bool)

(declare-fun call!408166 () Bool)

(declare-fun call!408164 () Bool)

(assert (=> bm!408159 (= call!408166 call!408164)))

(declare-fun b!5515642 () Bool)

(declare-fun e!3410742 () Bool)

(assert (=> b!5515642 (= e!3410742 call!408164)))

(declare-fun b!5515643 () Bool)

(assert (=> b!5515643 (= e!3410736 call!408166)))

(declare-fun b!5515644 () Bool)

(assert (=> b!5515644 (= e!3410738 call!408166)))

(declare-fun b!5515645 () Bool)

(declare-fun e!3410741 () Bool)

(assert (=> b!5515645 (= e!3410741 e!3410742)))

(declare-fun res!2350027 () Bool)

(assert (=> b!5515645 (= res!2350027 (not (nullable!5537 (reg!15832 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))))))))

(assert (=> b!5515645 (=> (not res!2350027) (not e!3410742))))

(declare-fun b!5515646 () Bool)

(assert (=> b!5515646 (= e!3410740 e!3410741)))

(declare-fun c!964215 () Bool)

(assert (=> b!5515646 (= c!964215 ((_ is Star!15503) (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))))))

(declare-fun c!964216 () Bool)

(declare-fun bm!408160 () Bool)

(assert (=> bm!408160 (= call!408164 (validRegex!7239 (ite c!964215 (reg!15832 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))) (ite c!964216 (regTwo!31519 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))) (regTwo!31518 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292))))))))))

(declare-fun b!5515647 () Bool)

(declare-fun res!2350030 () Bool)

(assert (=> b!5515647 (=> res!2350030 e!3410737)))

(assert (=> b!5515647 (= res!2350030 (not ((_ is Concat!24348) (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292))))))))

(assert (=> b!5515647 (= e!3410739 e!3410737)))

(declare-fun b!5515648 () Bool)

(assert (=> b!5515648 (= e!3410741 e!3410739)))

(assert (=> b!5515648 (= c!964216 ((_ is Union!15503) (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))))))

(declare-fun bm!408161 () Bool)

(assert (=> bm!408161 (= call!408165 (validRegex!7239 (ite c!964216 (regOne!31519 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))) (regOne!31518 (ite c!963962 (reg!15832 r!7292) (ite c!963963 (regTwo!31519 r!7292) (regTwo!31518 r!7292)))))))))

(assert (= (and d!1747489 (not res!2350026)) b!5515646))

(assert (= (and b!5515646 c!964215) b!5515645))

(assert (= (and b!5515646 (not c!964215)) b!5515648))

(assert (= (and b!5515645 res!2350027) b!5515642))

(assert (= (and b!5515648 c!964216) b!5515641))

(assert (= (and b!5515648 (not c!964216)) b!5515647))

(assert (= (and b!5515641 res!2350028) b!5515644))

(assert (= (and b!5515647 (not res!2350030)) b!5515640))

(assert (= (and b!5515640 res!2350029) b!5515643))

(assert (= (or b!5515644 b!5515643) bm!408159))

(assert (= (or b!5515641 b!5515640) bm!408161))

(assert (= (or b!5515642 bm!408159) bm!408160))

(declare-fun m!6519744 () Bool)

(assert (=> b!5515645 m!6519744))

(declare-fun m!6519746 () Bool)

(assert (=> bm!408160 m!6519746))

(declare-fun m!6519748 () Bool)

(assert (=> bm!408161 m!6519748))

(assert (=> bm!407963 d!1747489))

(declare-fun d!1747491 () Bool)

(assert (=> d!1747491 (= (isEmpty!34465 (tail!10909 (exprs!5387 (h!69133 zl!343)))) ((_ is Nil!62684) (tail!10909 (exprs!5387 (h!69133 zl!343)))))))

(assert (=> b!5514609 d!1747491))

(declare-fun d!1747493 () Bool)

(assert (=> d!1747493 (= (tail!10909 (exprs!5387 (h!69133 zl!343))) (t!376055 (exprs!5387 (h!69133 zl!343))))))

(assert (=> b!5514609 d!1747493))

(declare-fun d!1747495 () Bool)

(declare-fun res!2350031 () Bool)

(declare-fun e!3410743 () Bool)

(assert (=> d!1747495 (=> res!2350031 e!3410743)))

(assert (=> d!1747495 (= res!2350031 ((_ is Nil!62684) (exprs!5387 setElem!36639)))))

(assert (=> d!1747495 (= (forall!14679 (exprs!5387 setElem!36639) lambda!295542) e!3410743)))

(declare-fun b!5515649 () Bool)

(declare-fun e!3410744 () Bool)

(assert (=> b!5515649 (= e!3410743 e!3410744)))

(declare-fun res!2350032 () Bool)

(assert (=> b!5515649 (=> (not res!2350032) (not e!3410744))))

(assert (=> b!5515649 (= res!2350032 (dynLambda!24492 lambda!295542 (h!69132 (exprs!5387 setElem!36639))))))

(declare-fun b!5515650 () Bool)

(assert (=> b!5515650 (= e!3410744 (forall!14679 (t!376055 (exprs!5387 setElem!36639)) lambda!295542))))

(assert (= (and d!1747495 (not res!2350031)) b!5515649))

(assert (= (and b!5515649 res!2350032) b!5515650))

(declare-fun b_lambda!209115 () Bool)

(assert (=> (not b_lambda!209115) (not b!5515649)))

(declare-fun m!6519750 () Bool)

(assert (=> b!5515649 m!6519750))

(declare-fun m!6519752 () Bool)

(assert (=> b!5515650 m!6519752))

(assert (=> d!1747025 d!1747495))

(declare-fun b!5515651 () Bool)

(declare-fun e!3410750 () (InoxSet Context!9774))

(declare-fun call!408168 () (InoxSet Context!9774))

(assert (=> b!5515651 (= e!3410750 call!408168)))

(declare-fun b!5515652 () Bool)

(declare-fun c!964217 () Bool)

(assert (=> b!5515652 (= c!964217 ((_ is Star!15503) (h!69132 (exprs!5387 lt!2245842))))))

(declare-fun e!3410745 () (InoxSet Context!9774))

(assert (=> b!5515652 (= e!3410745 e!3410750)))

(declare-fun b!5515653 () Bool)

(declare-fun e!3410747 () (InoxSet Context!9774))

(declare-fun call!408167 () (InoxSet Context!9774))

(declare-fun call!408169 () (InoxSet Context!9774))

(assert (=> b!5515653 (= e!3410747 ((_ map or) call!408167 call!408169))))

(declare-fun c!964221 () Bool)

(declare-fun bm!408162 () Bool)

(declare-fun call!408171 () List!62808)

(assert (=> bm!408162 (= call!408167 (derivationStepZipperDown!845 (ite c!964221 (regOne!31519 (h!69132 (exprs!5387 lt!2245842))) (regOne!31518 (h!69132 (exprs!5387 lt!2245842)))) (ite c!964221 (Context!9775 (t!376055 (exprs!5387 lt!2245842))) (Context!9775 call!408171)) (h!69134 s!2326)))))

(declare-fun c!964219 () Bool)

(declare-fun bm!408163 () Bool)

(declare-fun call!408170 () (InoxSet Context!9774))

(declare-fun call!408172 () List!62808)

(declare-fun c!964220 () Bool)

(assert (=> bm!408163 (= call!408170 (derivationStepZipperDown!845 (ite c!964221 (regTwo!31519 (h!69132 (exprs!5387 lt!2245842))) (ite c!964220 (regTwo!31518 (h!69132 (exprs!5387 lt!2245842))) (ite c!964219 (regOne!31518 (h!69132 (exprs!5387 lt!2245842))) (reg!15832 (h!69132 (exprs!5387 lt!2245842)))))) (ite (or c!964221 c!964220) (Context!9775 (t!376055 (exprs!5387 lt!2245842))) (Context!9775 call!408172)) (h!69134 s!2326)))))

(declare-fun bm!408164 () Bool)

(assert (=> bm!408164 (= call!408171 ($colon$colon!1584 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245842)))) (ite (or c!964220 c!964219) (regTwo!31518 (h!69132 (exprs!5387 lt!2245842))) (h!69132 (exprs!5387 lt!2245842)))))))

(declare-fun b!5515654 () Bool)

(declare-fun e!3410746 () (InoxSet Context!9774))

(declare-fun e!3410749 () (InoxSet Context!9774))

(assert (=> b!5515654 (= e!3410746 e!3410749)))

(assert (=> b!5515654 (= c!964221 ((_ is Union!15503) (h!69132 (exprs!5387 lt!2245842))))))

(declare-fun b!5515655 () Bool)

(assert (=> b!5515655 (= e!3410749 ((_ map or) call!408167 call!408170))))

(declare-fun bm!408165 () Bool)

(assert (=> bm!408165 (= call!408172 call!408171)))

(declare-fun bm!408166 () Bool)

(assert (=> bm!408166 (= call!408169 call!408170)))

(declare-fun b!5515656 () Bool)

(declare-fun e!3410748 () Bool)

(assert (=> b!5515656 (= e!3410748 (nullable!5537 (regOne!31518 (h!69132 (exprs!5387 lt!2245842)))))))

(declare-fun bm!408167 () Bool)

(assert (=> bm!408167 (= call!408168 call!408169)))

(declare-fun b!5515657 () Bool)

(assert (=> b!5515657 (= e!3410750 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515658 () Bool)

(assert (=> b!5515658 (= e!3410747 e!3410745)))

(assert (=> b!5515658 (= c!964219 ((_ is Concat!24348) (h!69132 (exprs!5387 lt!2245842))))))

(declare-fun b!5515659 () Bool)

(assert (=> b!5515659 (= e!3410745 call!408168)))

(declare-fun b!5515660 () Bool)

(assert (=> b!5515660 (= e!3410746 (store ((as const (Array Context!9774 Bool)) false) (Context!9775 (t!376055 (exprs!5387 lt!2245842))) true))))

(declare-fun b!5515661 () Bool)

(assert (=> b!5515661 (= c!964220 e!3410748)))

(declare-fun res!2350033 () Bool)

(assert (=> b!5515661 (=> (not res!2350033) (not e!3410748))))

(assert (=> b!5515661 (= res!2350033 ((_ is Concat!24348) (h!69132 (exprs!5387 lt!2245842))))))

(assert (=> b!5515661 (= e!3410749 e!3410747)))

(declare-fun d!1747497 () Bool)

(declare-fun c!964218 () Bool)

(assert (=> d!1747497 (= c!964218 (and ((_ is ElementMatch!15503) (h!69132 (exprs!5387 lt!2245842))) (= (c!963749 (h!69132 (exprs!5387 lt!2245842))) (h!69134 s!2326))))))

(assert (=> d!1747497 (= (derivationStepZipperDown!845 (h!69132 (exprs!5387 lt!2245842)) (Context!9775 (t!376055 (exprs!5387 lt!2245842))) (h!69134 s!2326)) e!3410746)))

(assert (= (and d!1747497 c!964218) b!5515660))

(assert (= (and d!1747497 (not c!964218)) b!5515654))

(assert (= (and b!5515654 c!964221) b!5515655))

(assert (= (and b!5515654 (not c!964221)) b!5515661))

(assert (= (and b!5515661 res!2350033) b!5515656))

(assert (= (and b!5515661 c!964220) b!5515653))

(assert (= (and b!5515661 (not c!964220)) b!5515658))

(assert (= (and b!5515658 c!964219) b!5515659))

(assert (= (and b!5515658 (not c!964219)) b!5515652))

(assert (= (and b!5515652 c!964217) b!5515651))

(assert (= (and b!5515652 (not c!964217)) b!5515657))

(assert (= (or b!5515659 b!5515651) bm!408165))

(assert (= (or b!5515659 b!5515651) bm!408167))

(assert (= (or b!5515653 bm!408165) bm!408164))

(assert (= (or b!5515653 bm!408167) bm!408166))

(assert (= (or b!5515655 bm!408166) bm!408163))

(assert (= (or b!5515655 b!5515653) bm!408162))

(declare-fun m!6519754 () Bool)

(assert (=> bm!408164 m!6519754))

(declare-fun m!6519756 () Bool)

(assert (=> b!5515656 m!6519756))

(declare-fun m!6519758 () Bool)

(assert (=> bm!408162 m!6519758))

(declare-fun m!6519760 () Bool)

(assert (=> bm!408163 m!6519760))

(declare-fun m!6519762 () Bool)

(assert (=> b!5515660 m!6519762))

(assert (=> bm!407932 d!1747497))

(declare-fun d!1747499 () Bool)

(declare-fun c!964222 () Bool)

(assert (=> d!1747499 (= c!964222 (isEmpty!34470 (tail!10908 (t!376057 s!2326))))))

(declare-fun e!3410751 () Bool)

(assert (=> d!1747499 (= (matchZipper!1661 (derivationStepZipper!1608 lt!2245855 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))) e!3410751)))

(declare-fun b!5515662 () Bool)

(assert (=> b!5515662 (= e!3410751 (nullableZipper!1531 (derivationStepZipper!1608 lt!2245855 (head!11813 (t!376057 s!2326)))))))

(declare-fun b!5515663 () Bool)

(assert (=> b!5515663 (= e!3410751 (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245855 (head!11813 (t!376057 s!2326))) (head!11813 (tail!10908 (t!376057 s!2326)))) (tail!10908 (tail!10908 (t!376057 s!2326)))))))

(assert (= (and d!1747499 c!964222) b!5515662))

(assert (= (and d!1747499 (not c!964222)) b!5515663))

(assert (=> d!1747499 m!6518652))

(assert (=> d!1747499 m!6519568))

(assert (=> b!5515662 m!6518792))

(declare-fun m!6519764 () Bool)

(assert (=> b!5515662 m!6519764))

(assert (=> b!5515663 m!6518652))

(assert (=> b!5515663 m!6519572))

(assert (=> b!5515663 m!6518792))

(assert (=> b!5515663 m!6519572))

(declare-fun m!6519766 () Bool)

(assert (=> b!5515663 m!6519766))

(assert (=> b!5515663 m!6518652))

(assert (=> b!5515663 m!6519576))

(assert (=> b!5515663 m!6519766))

(assert (=> b!5515663 m!6519576))

(declare-fun m!6519768 () Bool)

(assert (=> b!5515663 m!6519768))

(assert (=> b!5514614 d!1747499))

(declare-fun bs!1271225 () Bool)

(declare-fun d!1747501 () Bool)

(assert (= bs!1271225 (and d!1747501 d!1747411)))

(declare-fun lambda!295608 () Int)

(assert (=> bs!1271225 (= lambda!295608 lambda!295598)))

(declare-fun bs!1271226 () Bool)

(assert (= bs!1271226 (and d!1747501 b!5513931)))

(assert (=> bs!1271226 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295608 lambda!295489))))

(declare-fun bs!1271227 () Bool)

(assert (= bs!1271227 (and d!1747501 d!1747485)))

(assert (=> bs!1271227 (= lambda!295608 lambda!295607)))

(declare-fun bs!1271228 () Bool)

(assert (= bs!1271228 (and d!1747501 d!1747437)))

(assert (=> bs!1271228 (= (= (head!11813 (t!376057 s!2326)) (head!11813 s!2326)) (= lambda!295608 lambda!295599))))

(declare-fun bs!1271229 () Bool)

(assert (= bs!1271229 (and d!1747501 d!1747059)))

(assert (=> bs!1271229 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295608 lambda!295553))))

(declare-fun bs!1271230 () Bool)

(assert (= bs!1271230 (and d!1747501 d!1747001)))

(assert (=> bs!1271230 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295608 lambda!295533))))

(assert (=> d!1747501 true))

(assert (=> d!1747501 (= (derivationStepZipper!1608 lt!2245855 (head!11813 (t!376057 s!2326))) (flatMap!1116 lt!2245855 lambda!295608))))

(declare-fun bs!1271231 () Bool)

(assert (= bs!1271231 d!1747501))

(declare-fun m!6519770 () Bool)

(assert (=> bs!1271231 m!6519770))

(assert (=> b!5514614 d!1747501))

(assert (=> b!5514614 d!1747413))

(assert (=> b!5514614 d!1747415))

(declare-fun b!5515664 () Bool)

(declare-fun e!3410752 () (InoxSet Context!9774))

(assert (=> b!5515664 (= e!3410752 ((as const (Array Context!9774 Bool)) false))))

(declare-fun bm!408168 () Bool)

(declare-fun call!408173 () (InoxSet Context!9774))

(assert (=> bm!408168 (= call!408173 (derivationStepZipperDown!845 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245842))))) (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245842)))))) (h!69134 s!2326)))))

(declare-fun d!1747503 () Bool)

(declare-fun c!964223 () Bool)

(declare-fun e!3410753 () Bool)

(assert (=> d!1747503 (= c!964223 e!3410753)))

(declare-fun res!2350034 () Bool)

(assert (=> d!1747503 (=> (not res!2350034) (not e!3410753))))

(assert (=> d!1747503 (= res!2350034 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245842))))))))

(declare-fun e!3410754 () (InoxSet Context!9774))

(assert (=> d!1747503 (= (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 lt!2245842))) (h!69134 s!2326)) e!3410754)))

(declare-fun b!5515665 () Bool)

(assert (=> b!5515665 (= e!3410754 e!3410752)))

(declare-fun c!964224 () Bool)

(assert (=> b!5515665 (= c!964224 ((_ is Cons!62684) (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245842))))))))

(declare-fun b!5515666 () Bool)

(assert (=> b!5515666 (= e!3410752 call!408173)))

(declare-fun b!5515667 () Bool)

(assert (=> b!5515667 (= e!3410753 (nullable!5537 (h!69132 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245842)))))))))

(declare-fun b!5515668 () Bool)

(assert (=> b!5515668 (= e!3410754 ((_ map or) call!408173 (derivationStepZipperUp!771 (Context!9775 (t!376055 (exprs!5387 (Context!9775 (t!376055 (exprs!5387 lt!2245842)))))) (h!69134 s!2326))))))

(assert (= (and d!1747503 res!2350034) b!5515667))

(assert (= (and d!1747503 c!964223) b!5515668))

(assert (= (and d!1747503 (not c!964223)) b!5515665))

(assert (= (and b!5515665 c!964224) b!5515666))

(assert (= (and b!5515665 (not c!964224)) b!5515664))

(assert (= (or b!5515668 b!5515666) bm!408168))

(declare-fun m!6519772 () Bool)

(assert (=> bm!408168 m!6519772))

(declare-fun m!6519774 () Bool)

(assert (=> b!5515667 m!6519774))

(declare-fun m!6519776 () Bool)

(assert (=> b!5515668 m!6519776))

(assert (=> b!5514440 d!1747503))

(declare-fun d!1747505 () Bool)

(declare-fun c!964225 () Bool)

(assert (=> d!1747505 (= c!964225 (isEmpty!34470 (tail!10908 (t!376057 s!2326))))))

(declare-fun e!3410755 () Bool)

(assert (=> d!1747505 (= (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))) e!3410755)))

(declare-fun b!5515669 () Bool)

(assert (=> b!5515669 (= e!3410755 (nullableZipper!1531 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (head!11813 (t!376057 s!2326)))))))

(declare-fun b!5515670 () Bool)

(assert (=> b!5515670 (= e!3410755 (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (head!11813 (t!376057 s!2326))) (head!11813 (tail!10908 (t!376057 s!2326)))) (tail!10908 (tail!10908 (t!376057 s!2326)))))))

(assert (= (and d!1747505 c!964225) b!5515669))

(assert (= (and d!1747505 (not c!964225)) b!5515670))

(assert (=> d!1747505 m!6518652))

(assert (=> d!1747505 m!6519568))

(assert (=> b!5515669 m!6518650))

(declare-fun m!6519778 () Bool)

(assert (=> b!5515669 m!6519778))

(assert (=> b!5515670 m!6518652))

(assert (=> b!5515670 m!6519572))

(assert (=> b!5515670 m!6518650))

(assert (=> b!5515670 m!6519572))

(declare-fun m!6519780 () Bool)

(assert (=> b!5515670 m!6519780))

(assert (=> b!5515670 m!6518652))

(assert (=> b!5515670 m!6519576))

(assert (=> b!5515670 m!6519780))

(assert (=> b!5515670 m!6519576))

(declare-fun m!6519782 () Bool)

(assert (=> b!5515670 m!6519782))

(assert (=> b!5514385 d!1747505))

(declare-fun bs!1271232 () Bool)

(declare-fun d!1747507 () Bool)

(assert (= bs!1271232 (and d!1747507 d!1747501)))

(declare-fun lambda!295609 () Int)

(assert (=> bs!1271232 (= lambda!295609 lambda!295608)))

(declare-fun bs!1271233 () Bool)

(assert (= bs!1271233 (and d!1747507 d!1747411)))

(assert (=> bs!1271233 (= lambda!295609 lambda!295598)))

(declare-fun bs!1271234 () Bool)

(assert (= bs!1271234 (and d!1747507 b!5513931)))

(assert (=> bs!1271234 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295609 lambda!295489))))

(declare-fun bs!1271235 () Bool)

(assert (= bs!1271235 (and d!1747507 d!1747485)))

(assert (=> bs!1271235 (= lambda!295609 lambda!295607)))

(declare-fun bs!1271236 () Bool)

(assert (= bs!1271236 (and d!1747507 d!1747437)))

(assert (=> bs!1271236 (= (= (head!11813 (t!376057 s!2326)) (head!11813 s!2326)) (= lambda!295609 lambda!295599))))

(declare-fun bs!1271237 () Bool)

(assert (= bs!1271237 (and d!1747507 d!1747059)))

(assert (=> bs!1271237 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295609 lambda!295553))))

(declare-fun bs!1271238 () Bool)

(assert (= bs!1271238 (and d!1747507 d!1747001)))

(assert (=> bs!1271238 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295609 lambda!295533))))

(assert (=> d!1747507 true))

(assert (=> d!1747507 (= (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) (head!11813 (t!376057 s!2326))) (flatMap!1116 (derivationStepZipper!1608 lt!2245837 (h!69134 s!2326)) lambda!295609))))

(declare-fun bs!1271239 () Bool)

(assert (= bs!1271239 d!1747507))

(assert (=> bs!1271239 m!6518268))

(declare-fun m!6519784 () Bool)

(assert (=> bs!1271239 m!6519784))

(assert (=> b!5514385 d!1747507))

(assert (=> b!5514385 d!1747413))

(assert (=> b!5514385 d!1747415))

(declare-fun d!1747509 () Bool)

(declare-fun res!2350035 () Bool)

(declare-fun e!3410756 () Bool)

(assert (=> d!1747509 (=> res!2350035 e!3410756)))

(assert (=> d!1747509 (= res!2350035 ((_ is Nil!62684) (exprs!5387 (h!69133 zl!343))))))

(assert (=> d!1747509 (= (forall!14679 (exprs!5387 (h!69133 zl!343)) lambda!295549) e!3410756)))

(declare-fun b!5515671 () Bool)

(declare-fun e!3410757 () Bool)

(assert (=> b!5515671 (= e!3410756 e!3410757)))

(declare-fun res!2350036 () Bool)

(assert (=> b!5515671 (=> (not res!2350036) (not e!3410757))))

(assert (=> b!5515671 (= res!2350036 (dynLambda!24492 lambda!295549 (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun b!5515672 () Bool)

(assert (=> b!5515672 (= e!3410757 (forall!14679 (t!376055 (exprs!5387 (h!69133 zl!343))) lambda!295549))))

(assert (= (and d!1747509 (not res!2350035)) b!5515671))

(assert (= (and b!5515671 res!2350036) b!5515672))

(declare-fun b_lambda!209117 () Bool)

(assert (=> (not b_lambda!209117) (not b!5515671)))

(declare-fun m!6519786 () Bool)

(assert (=> b!5515671 m!6519786))

(declare-fun m!6519788 () Bool)

(assert (=> b!5515672 m!6519788))

(assert (=> d!1747043 d!1747509))

(declare-fun d!1747511 () Bool)

(assert (=> d!1747511 (= ($colon$colon!1584 (exprs!5387 lt!2245849) (ite (or c!963953 c!963952) (regTwo!31518 r!7292) r!7292)) (Cons!62684 (ite (or c!963953 c!963952) (regTwo!31518 r!7292) r!7292) (exprs!5387 lt!2245849)))))

(assert (=> bm!407951 d!1747511))

(assert (=> b!5514567 d!1747431))

(declare-fun bs!1271240 () Bool)

(declare-fun b!5515679 () Bool)

(assert (= bs!1271240 (and b!5515679 d!1746991)))

(declare-fun lambda!295610 () Int)

(assert (=> bs!1271240 (not (= lambda!295610 lambda!295529))))

(declare-fun bs!1271241 () Bool)

(assert (= bs!1271241 (and b!5515679 b!5514534)))

(assert (=> bs!1271241 (= (and (= (reg!15832 (regOne!31519 r!7292)) (reg!15832 r!7292)) (= (regOne!31519 r!7292) r!7292)) (= lambda!295610 lambda!295547))))

(declare-fun bs!1271242 () Bool)

(assert (= bs!1271242 (and b!5515679 b!5513944)))

(assert (=> bs!1271242 (not (= lambda!295610 lambda!295487))))

(assert (=> bs!1271242 (not (= lambda!295610 lambda!295488))))

(declare-fun bs!1271243 () Bool)

(assert (= bs!1271243 (and b!5515679 b!5514531)))

(assert (=> bs!1271243 (not (= lambda!295610 lambda!295548))))

(declare-fun bs!1271244 () Bool)

(assert (= bs!1271244 (and b!5515679 d!1747333)))

(assert (=> bs!1271244 (not (= lambda!295610 lambda!295593))))

(declare-fun bs!1271245 () Bool)

(assert (= bs!1271245 (and b!5515679 b!5515595)))

(assert (=> bs!1271245 (not (= lambda!295610 lambda!295605))))

(declare-fun bs!1271246 () Bool)

(assert (= bs!1271246 (and b!5515679 d!1746975)))

(assert (=> bs!1271246 (not (= lambda!295610 lambda!295524))))

(declare-fun bs!1271247 () Bool)

(assert (= bs!1271247 (and b!5515679 b!5515598)))

(assert (=> bs!1271247 (= (and (= (reg!15832 (regOne!31519 r!7292)) (reg!15832 (regTwo!31519 r!7292))) (= (regOne!31519 r!7292) (regTwo!31519 r!7292))) (= lambda!295610 lambda!295604))))

(assert (=> bs!1271244 (not (= lambda!295610 lambda!295594))))

(assert (=> bs!1271240 (not (= lambda!295610 lambda!295530))))

(assert (=> b!5515679 true))

(assert (=> b!5515679 true))

(declare-fun bs!1271248 () Bool)

(declare-fun b!5515676 () Bool)

(assert (= bs!1271248 (and b!5515676 d!1746991)))

(declare-fun lambda!295611 () Int)

(assert (=> bs!1271248 (not (= lambda!295611 lambda!295529))))

(declare-fun bs!1271249 () Bool)

(assert (= bs!1271249 (and b!5515676 b!5514534)))

(assert (=> bs!1271249 (not (= lambda!295611 lambda!295547))))

(declare-fun bs!1271250 () Bool)

(assert (= bs!1271250 (and b!5515676 b!5515679)))

(assert (=> bs!1271250 (not (= lambda!295611 lambda!295610))))

(declare-fun bs!1271251 () Bool)

(assert (= bs!1271251 (and b!5515676 b!5513944)))

(assert (=> bs!1271251 (not (= lambda!295611 lambda!295487))))

(assert (=> bs!1271251 (= (and (= (regOne!31518 (regOne!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regOne!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295611 lambda!295488))))

(declare-fun bs!1271252 () Bool)

(assert (= bs!1271252 (and b!5515676 b!5514531)))

(assert (=> bs!1271252 (= (and (= (regOne!31518 (regOne!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regOne!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295611 lambda!295548))))

(declare-fun bs!1271253 () Bool)

(assert (= bs!1271253 (and b!5515676 d!1747333)))

(assert (=> bs!1271253 (not (= lambda!295611 lambda!295593))))

(declare-fun bs!1271254 () Bool)

(assert (= bs!1271254 (and b!5515676 b!5515595)))

(assert (=> bs!1271254 (= (and (= (regOne!31518 (regOne!31519 r!7292)) (regOne!31518 (regTwo!31519 r!7292))) (= (regTwo!31518 (regOne!31519 r!7292)) (regTwo!31518 (regTwo!31519 r!7292)))) (= lambda!295611 lambda!295605))))

(declare-fun bs!1271255 () Bool)

(assert (= bs!1271255 (and b!5515676 d!1746975)))

(assert (=> bs!1271255 (not (= lambda!295611 lambda!295524))))

(declare-fun bs!1271256 () Bool)

(assert (= bs!1271256 (and b!5515676 b!5515598)))

(assert (=> bs!1271256 (not (= lambda!295611 lambda!295604))))

(assert (=> bs!1271253 (= (and (= (regOne!31518 (regOne!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regOne!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295611 lambda!295594))))

(assert (=> bs!1271248 (= (and (= (regOne!31518 (regOne!31519 r!7292)) (regOne!31518 r!7292)) (= (regTwo!31518 (regOne!31519 r!7292)) (regTwo!31518 r!7292))) (= lambda!295611 lambda!295530))))

(assert (=> b!5515676 true))

(assert (=> b!5515676 true))

(declare-fun d!1747513 () Bool)

(declare-fun c!964229 () Bool)

(assert (=> d!1747513 (= c!964229 ((_ is EmptyExpr!15503) (regOne!31519 r!7292)))))

(declare-fun e!3410762 () Bool)

(assert (=> d!1747513 (= (matchRSpec!2606 (regOne!31519 r!7292) s!2326) e!3410762)))

(declare-fun b!5515673 () Bool)

(declare-fun e!3410764 () Bool)

(declare-fun e!3410761 () Bool)

(assert (=> b!5515673 (= e!3410764 e!3410761)))

(declare-fun c!964228 () Bool)

(assert (=> b!5515673 (= c!964228 ((_ is Star!15503) (regOne!31519 r!7292)))))

(declare-fun b!5515674 () Bool)

(declare-fun e!3410763 () Bool)

(assert (=> b!5515674 (= e!3410762 e!3410763)))

(declare-fun res!2350038 () Bool)

(assert (=> b!5515674 (= res!2350038 (not ((_ is EmptyLang!15503) (regOne!31519 r!7292))))))

(assert (=> b!5515674 (=> (not res!2350038) (not e!3410763))))

(declare-fun b!5515675 () Bool)

(declare-fun res!2350039 () Bool)

(declare-fun e!3410758 () Bool)

(assert (=> b!5515675 (=> res!2350039 e!3410758)))

(declare-fun call!408175 () Bool)

(assert (=> b!5515675 (= res!2350039 call!408175)))

(assert (=> b!5515675 (= e!3410761 e!3410758)))

(declare-fun call!408174 () Bool)

(assert (=> b!5515676 (= e!3410761 call!408174)))

(declare-fun b!5515677 () Bool)

(declare-fun c!964226 () Bool)

(assert (=> b!5515677 (= c!964226 ((_ is ElementMatch!15503) (regOne!31519 r!7292)))))

(declare-fun e!3410760 () Bool)

(assert (=> b!5515677 (= e!3410763 e!3410760)))

(declare-fun b!5515678 () Bool)

(assert (=> b!5515678 (= e!3410760 (= s!2326 (Cons!62686 (c!963749 (regOne!31519 r!7292)) Nil!62686)))))

(assert (=> b!5515679 (= e!3410758 call!408174)))

(declare-fun bm!408169 () Bool)

(assert (=> bm!408169 (= call!408174 (Exists!2603 (ite c!964228 lambda!295610 lambda!295611)))))

(declare-fun b!5515680 () Bool)

(declare-fun e!3410759 () Bool)

(assert (=> b!5515680 (= e!3410759 (matchRSpec!2606 (regTwo!31519 (regOne!31519 r!7292)) s!2326))))

(declare-fun bm!408170 () Bool)

(assert (=> bm!408170 (= call!408175 (isEmpty!34470 s!2326))))

(declare-fun b!5515681 () Bool)

(assert (=> b!5515681 (= e!3410762 call!408175)))

(declare-fun b!5515682 () Bool)

(declare-fun c!964227 () Bool)

(assert (=> b!5515682 (= c!964227 ((_ is Union!15503) (regOne!31519 r!7292)))))

(assert (=> b!5515682 (= e!3410760 e!3410764)))

(declare-fun b!5515683 () Bool)

(assert (=> b!5515683 (= e!3410764 e!3410759)))

(declare-fun res!2350037 () Bool)

(assert (=> b!5515683 (= res!2350037 (matchRSpec!2606 (regOne!31519 (regOne!31519 r!7292)) s!2326))))

(assert (=> b!5515683 (=> res!2350037 e!3410759)))

(assert (= (and d!1747513 c!964229) b!5515681))

(assert (= (and d!1747513 (not c!964229)) b!5515674))

(assert (= (and b!5515674 res!2350038) b!5515677))

(assert (= (and b!5515677 c!964226) b!5515678))

(assert (= (and b!5515677 (not c!964226)) b!5515682))

(assert (= (and b!5515682 c!964227) b!5515683))

(assert (= (and b!5515682 (not c!964227)) b!5515673))

(assert (= (and b!5515683 (not res!2350037)) b!5515680))

(assert (= (and b!5515673 c!964228) b!5515675))

(assert (= (and b!5515673 (not c!964228)) b!5515676))

(assert (= (and b!5515675 (not res!2350039)) b!5515679))

(assert (= (or b!5515679 b!5515676) bm!408169))

(assert (= (or b!5515681 b!5515675) bm!408170))

(declare-fun m!6519790 () Bool)

(assert (=> bm!408169 m!6519790))

(declare-fun m!6519792 () Bool)

(assert (=> b!5515680 m!6519792))

(assert (=> bm!408170 m!6518632))

(declare-fun m!6519794 () Bool)

(assert (=> b!5515683 m!6519794))

(assert (=> b!5514538 d!1747513))

(assert (=> d!1747049 d!1747345))

(declare-fun d!1747515 () Bool)

(assert (=> d!1747515 true))

(assert (=> d!1747515 true))

(declare-fun res!2350040 () Bool)

(assert (=> d!1747515 (= (choose!41912 lambda!295487) res!2350040)))

(assert (=> d!1746973 d!1747515))

(assert (=> d!1746975 d!1746933))

(assert (=> d!1746975 d!1747335))

(assert (=> d!1746975 d!1746993))

(declare-fun d!1747517 () Bool)

(assert (=> d!1747517 (= (Exists!2603 lambda!295524) (choose!41912 lambda!295524))))

(declare-fun bs!1271257 () Bool)

(assert (= bs!1271257 d!1747517))

(declare-fun m!6519796 () Bool)

(assert (=> bs!1271257 m!6519796))

(assert (=> d!1746975 d!1747517))

(declare-fun bs!1271258 () Bool)

(declare-fun d!1747519 () Bool)

(assert (= bs!1271258 (and d!1747519 d!1746991)))

(declare-fun lambda!295614 () Int)

(assert (=> bs!1271258 (= lambda!295614 lambda!295529)))

(declare-fun bs!1271259 () Bool)

(assert (= bs!1271259 (and d!1747519 b!5515679)))

(assert (=> bs!1271259 (not (= lambda!295614 lambda!295610))))

(declare-fun bs!1271260 () Bool)

(assert (= bs!1271260 (and d!1747519 b!5513944)))

(assert (=> bs!1271260 (= lambda!295614 lambda!295487)))

(assert (=> bs!1271260 (not (= lambda!295614 lambda!295488))))

(declare-fun bs!1271261 () Bool)

(assert (= bs!1271261 (and d!1747519 b!5514531)))

(assert (=> bs!1271261 (not (= lambda!295614 lambda!295548))))

(declare-fun bs!1271262 () Bool)

(assert (= bs!1271262 (and d!1747519 d!1747333)))

(assert (=> bs!1271262 (= lambda!295614 lambda!295593)))

(declare-fun bs!1271263 () Bool)

(assert (= bs!1271263 (and d!1747519 b!5515595)))

(assert (=> bs!1271263 (not (= lambda!295614 lambda!295605))))

(declare-fun bs!1271264 () Bool)

(assert (= bs!1271264 (and d!1747519 b!5514534)))

(assert (=> bs!1271264 (not (= lambda!295614 lambda!295547))))

(declare-fun bs!1271265 () Bool)

(assert (= bs!1271265 (and d!1747519 b!5515676)))

(assert (=> bs!1271265 (not (= lambda!295614 lambda!295611))))

(declare-fun bs!1271266 () Bool)

(assert (= bs!1271266 (and d!1747519 d!1746975)))

(assert (=> bs!1271266 (= lambda!295614 lambda!295524)))

(declare-fun bs!1271267 () Bool)

(assert (= bs!1271267 (and d!1747519 b!5515598)))

(assert (=> bs!1271267 (not (= lambda!295614 lambda!295604))))

(assert (=> bs!1271262 (not (= lambda!295614 lambda!295594))))

(assert (=> bs!1271258 (not (= lambda!295614 lambda!295530))))

(assert (=> d!1747519 true))

(assert (=> d!1747519 true))

(assert (=> d!1747519 true))

(assert (=> d!1747519 (= (isDefined!12215 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326)) (Exists!2603 lambda!295614))))

(assert (=> d!1747519 true))

(declare-fun _$89!1608 () Unit!155466)

(assert (=> d!1747519 (= (choose!41913 (regOne!31518 r!7292) (regTwo!31518 r!7292) s!2326) _$89!1608)))

(declare-fun bs!1271268 () Bool)

(assert (= bs!1271268 d!1747519))

(assert (=> bs!1271268 m!6518304))

(assert (=> bs!1271268 m!6518304))

(assert (=> bs!1271268 m!6518306))

(declare-fun m!6519798 () Bool)

(assert (=> bs!1271268 m!6519798))

(assert (=> d!1746975 d!1747519))

(assert (=> d!1747031 d!1747027))

(declare-fun d!1747521 () Bool)

(assert (=> d!1747521 (= (flatMap!1116 z!1189 lambda!295489) (dynLambda!24490 lambda!295489 (h!69133 zl!343)))))

(assert (=> d!1747521 true))

(declare-fun _$13!2053 () Unit!155466)

(assert (=> d!1747521 (= (choose!41918 z!1189 (h!69133 zl!343) lambda!295489) _$13!2053)))

(declare-fun b_lambda!209119 () Bool)

(assert (=> (not b_lambda!209119) (not d!1747521)))

(declare-fun bs!1271269 () Bool)

(assert (= bs!1271269 d!1747521))

(assert (=> bs!1271269 m!6518296))

(assert (=> bs!1271269 m!6518736))

(assert (=> d!1747031 d!1747521))

(declare-fun d!1747523 () Bool)

(assert (=> d!1747523 (= (isEmpty!34469 (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326)) (not ((_ is Some!15511) (findConcatSeparation!1926 (regOne!31518 r!7292) (regTwo!31518 r!7292) Nil!62686 s!2326 s!2326))))))

(assert (=> d!1746993 d!1747523))

(declare-fun d!1747525 () Bool)

(assert (=> d!1747525 (= (nullable!5537 (h!69132 (exprs!5387 (h!69133 zl!343)))) (nullableFct!1663 (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun bs!1271270 () Bool)

(assert (= bs!1271270 d!1747525))

(declare-fun m!6519800 () Bool)

(assert (=> bs!1271270 m!6519800))

(assert (=> b!5514491 d!1747525))

(assert (=> d!1747011 d!1747015))

(declare-fun d!1747527 () Bool)

(assert (=> d!1747527 (= (flatMap!1116 lt!2245837 lambda!295489) (dynLambda!24490 lambda!295489 lt!2245842))))

(assert (=> d!1747527 true))

(declare-fun _$13!2054 () Unit!155466)

(assert (=> d!1747527 (= (choose!41918 lt!2245837 lt!2245842 lambda!295489) _$13!2054)))

(declare-fun b_lambda!209121 () Bool)

(assert (=> (not b_lambda!209121) (not d!1747527)))

(declare-fun bs!1271271 () Bool)

(assert (= bs!1271271 d!1747527))

(assert (=> bs!1271271 m!6518328))

(assert (=> bs!1271271 m!6518682))

(assert (=> d!1747011 d!1747527))

(assert (=> b!5514486 d!1747045))

(declare-fun bs!1271272 () Bool)

(declare-fun d!1747529 () Bool)

(assert (= bs!1271272 (and d!1747529 d!1747025)))

(declare-fun lambda!295615 () Int)

(assert (=> bs!1271272 (= lambda!295615 lambda!295542)))

(declare-fun bs!1271273 () Bool)

(assert (= bs!1271273 (and d!1747529 d!1747043)))

(assert (=> bs!1271273 (= lambda!295615 lambda!295549)))

(declare-fun bs!1271274 () Bool)

(assert (= bs!1271274 (and d!1747529 d!1747023)))

(assert (=> bs!1271274 (= lambda!295615 lambda!295539)))

(declare-fun bs!1271275 () Bool)

(assert (= bs!1271275 (and d!1747529 d!1747391)))

(assert (=> bs!1271275 (= lambda!295615 lambda!295597)))

(declare-fun bs!1271276 () Bool)

(assert (= bs!1271276 (and d!1747529 d!1747475)))

(assert (=> bs!1271276 (= lambda!295615 lambda!295606)))

(declare-fun bs!1271277 () Bool)

(assert (= bs!1271277 (and d!1747529 d!1747441)))

(assert (=> bs!1271277 (= lambda!295615 lambda!295600)))

(declare-fun bs!1271278 () Bool)

(assert (= bs!1271278 (and d!1747529 d!1747045)))

(assert (=> bs!1271278 (= lambda!295615 lambda!295552)))

(declare-fun bs!1271279 () Bool)

(assert (= bs!1271279 (and d!1747529 d!1747021)))

(assert (=> bs!1271279 (= lambda!295615 lambda!295536)))

(declare-fun bs!1271280 () Bool)

(assert (= bs!1271280 (and d!1747529 d!1747457)))

(assert (=> bs!1271280 (= lambda!295615 lambda!295602)))

(declare-fun lt!2245989 () List!62808)

(assert (=> d!1747529 (forall!14679 lt!2245989 lambda!295615)))

(declare-fun e!3410767 () List!62808)

(assert (=> d!1747529 (= lt!2245989 e!3410767)))

(declare-fun c!964230 () Bool)

(assert (=> d!1747529 (= c!964230 ((_ is Cons!62685) (t!376056 zl!343)))))

(assert (=> d!1747529 (= (unfocusZipperList!931 (t!376056 zl!343)) lt!2245989)))

(declare-fun b!5515688 () Bool)

(assert (=> b!5515688 (= e!3410767 (Cons!62684 (generalisedConcat!1118 (exprs!5387 (h!69133 (t!376056 zl!343)))) (unfocusZipperList!931 (t!376056 (t!376056 zl!343)))))))

(declare-fun b!5515689 () Bool)

(assert (=> b!5515689 (= e!3410767 Nil!62684)))

(assert (= (and d!1747529 c!964230) b!5515688))

(assert (= (and d!1747529 (not c!964230)) b!5515689))

(declare-fun m!6519802 () Bool)

(assert (=> d!1747529 m!6519802))

(declare-fun m!6519804 () Bool)

(assert (=> b!5515688 m!6519804))

(declare-fun m!6519806 () Bool)

(assert (=> b!5515688 m!6519806))

(assert (=> b!5514486 d!1747529))

(declare-fun d!1747531 () Bool)

(declare-fun c!964231 () Bool)

(assert (=> d!1747531 (= c!964231 (isEmpty!34470 (tail!10908 (t!376057 s!2326))))))

(declare-fun e!3410768 () Bool)

(assert (=> d!1747531 (= (matchZipper!1661 (derivationStepZipper!1608 lt!2245841 (head!11813 (t!376057 s!2326))) (tail!10908 (t!376057 s!2326))) e!3410768)))

(declare-fun b!5515690 () Bool)

(assert (=> b!5515690 (= e!3410768 (nullableZipper!1531 (derivationStepZipper!1608 lt!2245841 (head!11813 (t!376057 s!2326)))))))

(declare-fun b!5515691 () Bool)

(assert (=> b!5515691 (= e!3410768 (matchZipper!1661 (derivationStepZipper!1608 (derivationStepZipper!1608 lt!2245841 (head!11813 (t!376057 s!2326))) (head!11813 (tail!10908 (t!376057 s!2326)))) (tail!10908 (tail!10908 (t!376057 s!2326)))))))

(assert (= (and d!1747531 c!964231) b!5515690))

(assert (= (and d!1747531 (not c!964231)) b!5515691))

(assert (=> d!1747531 m!6518652))

(assert (=> d!1747531 m!6519568))

(assert (=> b!5515690 m!6518798))

(declare-fun m!6519808 () Bool)

(assert (=> b!5515690 m!6519808))

(assert (=> b!5515691 m!6518652))

(assert (=> b!5515691 m!6519572))

(assert (=> b!5515691 m!6518798))

(assert (=> b!5515691 m!6519572))

(declare-fun m!6519810 () Bool)

(assert (=> b!5515691 m!6519810))

(assert (=> b!5515691 m!6518652))

(assert (=> b!5515691 m!6519576))

(assert (=> b!5515691 m!6519810))

(assert (=> b!5515691 m!6519576))

(declare-fun m!6519812 () Bool)

(assert (=> b!5515691 m!6519812))

(assert (=> b!5514616 d!1747531))

(declare-fun bs!1271281 () Bool)

(declare-fun d!1747533 () Bool)

(assert (= bs!1271281 (and d!1747533 d!1747501)))

(declare-fun lambda!295616 () Int)

(assert (=> bs!1271281 (= lambda!295616 lambda!295608)))

(declare-fun bs!1271282 () Bool)

(assert (= bs!1271282 (and d!1747533 d!1747411)))

(assert (=> bs!1271282 (= lambda!295616 lambda!295598)))

(declare-fun bs!1271283 () Bool)

(assert (= bs!1271283 (and d!1747533 b!5513931)))

(assert (=> bs!1271283 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295616 lambda!295489))))

(declare-fun bs!1271284 () Bool)

(assert (= bs!1271284 (and d!1747533 d!1747485)))

(assert (=> bs!1271284 (= lambda!295616 lambda!295607)))

(declare-fun bs!1271285 () Bool)

(assert (= bs!1271285 (and d!1747533 d!1747507)))

(assert (=> bs!1271285 (= lambda!295616 lambda!295609)))

(declare-fun bs!1271286 () Bool)

(assert (= bs!1271286 (and d!1747533 d!1747437)))

(assert (=> bs!1271286 (= (= (head!11813 (t!376057 s!2326)) (head!11813 s!2326)) (= lambda!295616 lambda!295599))))

(declare-fun bs!1271287 () Bool)

(assert (= bs!1271287 (and d!1747533 d!1747059)))

(assert (=> bs!1271287 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295616 lambda!295553))))

(declare-fun bs!1271288 () Bool)

(assert (= bs!1271288 (and d!1747533 d!1747001)))

(assert (=> bs!1271288 (= (= (head!11813 (t!376057 s!2326)) (h!69134 s!2326)) (= lambda!295616 lambda!295533))))

(assert (=> d!1747533 true))

(assert (=> d!1747533 (= (derivationStepZipper!1608 lt!2245841 (head!11813 (t!376057 s!2326))) (flatMap!1116 lt!2245841 lambda!295616))))

(declare-fun bs!1271289 () Bool)

(assert (= bs!1271289 d!1747533))

(declare-fun m!6519814 () Bool)

(assert (=> bs!1271289 m!6519814))

(assert (=> b!5514616 d!1747533))

(assert (=> b!5514616 d!1747413))

(assert (=> b!5514616 d!1747415))

(declare-fun d!1747535 () Bool)

(declare-fun res!2350049 () Bool)

(declare-fun e!3410773 () Bool)

(assert (=> d!1747535 (=> res!2350049 e!3410773)))

(assert (=> d!1747535 (= res!2350049 ((_ is Nil!62685) lt!2245933))))

(assert (=> d!1747535 (= (noDuplicate!1498 lt!2245933) e!3410773)))

(declare-fun b!5515696 () Bool)

(declare-fun e!3410774 () Bool)

(assert (=> b!5515696 (= e!3410773 e!3410774)))

(declare-fun res!2350050 () Bool)

(assert (=> b!5515696 (=> (not res!2350050) (not e!3410774))))

(declare-fun contains!19782 (List!62809 Context!9774) Bool)

(assert (=> b!5515696 (= res!2350050 (not (contains!19782 (t!376056 lt!2245933) (h!69133 lt!2245933))))))

(declare-fun b!5515697 () Bool)

(assert (=> b!5515697 (= e!3410774 (noDuplicate!1498 (t!376056 lt!2245933)))))

(assert (= (and d!1747535 (not res!2350049)) b!5515696))

(assert (= (and b!5515696 res!2350050) b!5515697))

(declare-fun m!6519816 () Bool)

(assert (=> b!5515696 m!6519816))

(declare-fun m!6519818 () Bool)

(assert (=> b!5515697 m!6519818))

(assert (=> d!1747033 d!1747535))

(declare-fun d!1747537 () Bool)

(declare-fun e!3410781 () Bool)

(assert (=> d!1747537 e!3410781))

(declare-fun res!2350056 () Bool)

(assert (=> d!1747537 (=> (not res!2350056) (not e!3410781))))

(declare-fun res!2350055 () List!62809)

(assert (=> d!1747537 (= res!2350056 (noDuplicate!1498 res!2350055))))

(declare-fun e!3410782 () Bool)

(assert (=> d!1747537 e!3410782))

(assert (=> d!1747537 (= (choose!41919 z!1189) res!2350055)))

(declare-fun b!5515705 () Bool)

(declare-fun e!3410783 () Bool)

(declare-fun tp!1517302 () Bool)

(assert (=> b!5515705 (= e!3410783 tp!1517302)))

(declare-fun b!5515704 () Bool)

(declare-fun tp!1517303 () Bool)

(assert (=> b!5515704 (= e!3410782 (and (inv!82004 (h!69133 res!2350055)) e!3410783 tp!1517303))))

(declare-fun b!5515706 () Bool)

(assert (=> b!5515706 (= e!3410781 (= (content!11265 res!2350055) z!1189))))

(assert (= b!5515704 b!5515705))

(assert (= (and d!1747537 ((_ is Cons!62685) res!2350055)) b!5515704))

(assert (= (and d!1747537 res!2350056) b!5515706))

(declare-fun m!6519820 () Bool)

(assert (=> d!1747537 m!6519820))

(declare-fun m!6519822 () Bool)

(assert (=> b!5515704 m!6519822))

(declare-fun m!6519824 () Bool)

(assert (=> b!5515706 m!6519824))

(assert (=> d!1747033 d!1747537))

(declare-fun b!5515707 () Bool)

(declare-fun e!3410789 () (InoxSet Context!9774))

(declare-fun call!408177 () (InoxSet Context!9774))

(assert (=> b!5515707 (= e!3410789 call!408177)))

(declare-fun c!964232 () Bool)

(declare-fun b!5515708 () Bool)

(assert (=> b!5515708 (= c!964232 ((_ is Star!15503) (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))))))

(declare-fun e!3410784 () (InoxSet Context!9774))

(assert (=> b!5515708 (= e!3410784 e!3410789)))

(declare-fun b!5515709 () Bool)

(declare-fun e!3410786 () (InoxSet Context!9774))

(declare-fun call!408176 () (InoxSet Context!9774))

(declare-fun call!408178 () (InoxSet Context!9774))

(assert (=> b!5515709 (= e!3410786 ((_ map or) call!408176 call!408178))))

(declare-fun bm!408171 () Bool)

(declare-fun c!964236 () Bool)

(declare-fun call!408180 () List!62808)

(assert (=> bm!408171 (= call!408176 (derivationStepZipperDown!845 (ite c!964236 (regOne!31519 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))) (regOne!31518 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292))))))) (ite c!964236 (ite (or c!963896 c!963895) lt!2245851 (Context!9775 call!407943)) (Context!9775 call!408180)) (h!69134 s!2326)))))

(declare-fun call!408179 () (InoxSet Context!9774))

(declare-fun bm!408172 () Bool)

(declare-fun c!964235 () Bool)

(declare-fun call!408181 () List!62808)

(declare-fun c!964234 () Bool)

(assert (=> bm!408172 (= call!408179 (derivationStepZipperDown!845 (ite c!964236 (regTwo!31519 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))) (ite c!964235 (regTwo!31518 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))) (ite c!964234 (regOne!31518 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))) (reg!15832 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292))))))))) (ite (or c!964236 c!964235) (ite (or c!963896 c!963895) lt!2245851 (Context!9775 call!407943)) (Context!9775 call!408181)) (h!69134 s!2326)))))

(declare-fun bm!408173 () Bool)

(assert (=> bm!408173 (= call!408180 ($colon$colon!1584 (exprs!5387 (ite (or c!963896 c!963895) lt!2245851 (Context!9775 call!407943))) (ite (or c!964235 c!964234) (regTwo!31518 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))) (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292))))))))))

(declare-fun b!5515710 () Bool)

(declare-fun e!3410785 () (InoxSet Context!9774))

(declare-fun e!3410788 () (InoxSet Context!9774))

(assert (=> b!5515710 (= e!3410785 e!3410788)))

(assert (=> b!5515710 (= c!964236 ((_ is Union!15503) (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))))))

(declare-fun b!5515711 () Bool)

(assert (=> b!5515711 (= e!3410788 ((_ map or) call!408176 call!408179))))

(declare-fun bm!408174 () Bool)

(assert (=> bm!408174 (= call!408181 call!408180)))

(declare-fun bm!408175 () Bool)

(assert (=> bm!408175 (= call!408178 call!408179)))

(declare-fun b!5515712 () Bool)

(declare-fun e!3410787 () Bool)

(assert (=> b!5515712 (= e!3410787 (nullable!5537 (regOne!31518 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292))))))))))

(declare-fun bm!408176 () Bool)

(assert (=> bm!408176 (= call!408177 call!408178)))

(declare-fun b!5515713 () Bool)

(assert (=> b!5515713 (= e!3410789 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515714 () Bool)

(assert (=> b!5515714 (= e!3410786 e!3410784)))

(assert (=> b!5515714 (= c!964234 ((_ is Concat!24348) (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))))))

(declare-fun b!5515715 () Bool)

(assert (=> b!5515715 (= e!3410784 call!408177)))

(declare-fun b!5515716 () Bool)

(assert (=> b!5515716 (= e!3410785 (store ((as const (Array Context!9774 Bool)) false) (ite (or c!963896 c!963895) lt!2245851 (Context!9775 call!407943)) true))))

(declare-fun b!5515717 () Bool)

(assert (=> b!5515717 (= c!964235 e!3410787)))

(declare-fun res!2350057 () Bool)

(assert (=> b!5515717 (=> (not res!2350057) (not e!3410787))))

(assert (=> b!5515717 (= res!2350057 ((_ is Concat!24348) (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))))))

(assert (=> b!5515717 (= e!3410788 e!3410786)))

(declare-fun c!964233 () Bool)

(declare-fun d!1747539 () Bool)

(assert (=> d!1747539 (= c!964233 (and ((_ is ElementMatch!15503) (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))) (= (c!963749 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292)))))) (h!69134 s!2326))))))

(assert (=> d!1747539 (= (derivationStepZipperDown!845 (ite c!963896 (regTwo!31519 (regOne!31518 r!7292)) (ite c!963895 (regTwo!31518 (regOne!31518 r!7292)) (ite c!963894 (regOne!31518 (regOne!31518 r!7292)) (reg!15832 (regOne!31518 r!7292))))) (ite (or c!963896 c!963895) lt!2245851 (Context!9775 call!407943)) (h!69134 s!2326)) e!3410785)))

(assert (= (and d!1747539 c!964233) b!5515716))

(assert (= (and d!1747539 (not c!964233)) b!5515710))

(assert (= (and b!5515710 c!964236) b!5515711))

(assert (= (and b!5515710 (not c!964236)) b!5515717))

(assert (= (and b!5515717 res!2350057) b!5515712))

(assert (= (and b!5515717 c!964235) b!5515709))

(assert (= (and b!5515717 (not c!964235)) b!5515714))

(assert (= (and b!5515714 c!964234) b!5515715))

(assert (= (and b!5515714 (not c!964234)) b!5515708))

(assert (= (and b!5515708 c!964232) b!5515707))

(assert (= (and b!5515708 (not c!964232)) b!5515713))

(assert (= (or b!5515715 b!5515707) bm!408174))

(assert (= (or b!5515715 b!5515707) bm!408176))

(assert (= (or b!5515709 bm!408174) bm!408173))

(assert (= (or b!5515709 bm!408176) bm!408175))

(assert (= (or b!5515711 bm!408175) bm!408172))

(assert (= (or b!5515711 b!5515709) bm!408171))

(declare-fun m!6519826 () Bool)

(assert (=> bm!408173 m!6519826))

(declare-fun m!6519828 () Bool)

(assert (=> b!5515712 m!6519828))

(declare-fun m!6519830 () Bool)

(assert (=> bm!408171 m!6519830))

(declare-fun m!6519832 () Bool)

(assert (=> bm!408172 m!6519832))

(declare-fun m!6519834 () Bool)

(assert (=> b!5515716 m!6519834))

(assert (=> bm!407934 d!1747539))

(assert (=> b!5514575 d!1747431))

(declare-fun d!1747541 () Bool)

(assert (=> d!1747541 (= (nullable!5537 r!7292) (nullableFct!1663 r!7292))))

(declare-fun bs!1271290 () Bool)

(assert (= bs!1271290 d!1747541))

(declare-fun m!6519836 () Bool)

(assert (=> bs!1271290 m!6519836))

(assert (=> b!5514578 d!1747541))

(declare-fun d!1747543 () Bool)

(assert (=> d!1747543 (= (Exists!2603 (ite c!963924 lambda!295547 lambda!295548)) (choose!41912 (ite c!963924 lambda!295547 lambda!295548)))))

(declare-fun bs!1271291 () Bool)

(assert (= bs!1271291 d!1747543))

(declare-fun m!6519838 () Bool)

(assert (=> bs!1271291 m!6519838))

(assert (=> bm!407944 d!1747543))

(declare-fun d!1747545 () Bool)

(assert (=> d!1747545 (= (isUnion!518 lt!2245926) ((_ is Union!15503) lt!2245926))))

(assert (=> b!5514476 d!1747545))

(declare-fun d!1747547 () Bool)

(assert (=> d!1747547 (= (isEmpty!34465 (unfocusZipperList!931 zl!343)) ((_ is Nil!62684) (unfocusZipperList!931 zl!343)))))

(assert (=> b!5514480 d!1747547))

(assert (=> bs!1270964 d!1747029))

(declare-fun bs!1271292 () Bool)

(declare-fun d!1747549 () Bool)

(assert (= bs!1271292 (and d!1747549 d!1747325)))

(declare-fun lambda!295617 () Int)

(assert (=> bs!1271292 (= lambda!295617 lambda!295588)))

(declare-fun bs!1271293 () Bool)

(assert (= bs!1271293 (and d!1747549 d!1747445)))

(assert (=> bs!1271293 (= lambda!295617 lambda!295601)))

(declare-fun bs!1271294 () Bool)

(assert (= bs!1271294 (and d!1747549 d!1747363)))

(assert (=> bs!1271294 (= lambda!295617 lambda!295596)))

(declare-fun bs!1271295 () Bool)

(assert (= bs!1271295 (and d!1747549 d!1747347)))

(assert (=> bs!1271295 (= lambda!295617 lambda!295595)))

(declare-fun bs!1271296 () Bool)

(assert (= bs!1271296 (and d!1747549 d!1747463)))

(assert (=> bs!1271296 (= lambda!295617 lambda!295603)))

(assert (=> d!1747549 (= (nullableZipper!1531 lt!2245838) (exists!2136 lt!2245838 lambda!295617))))

(declare-fun bs!1271297 () Bool)

(assert (= bs!1271297 d!1747549))

(declare-fun m!6519840 () Bool)

(assert (=> bs!1271297 m!6519840))

(assert (=> b!5514611 d!1747549))

(declare-fun b!5515718 () Bool)

(declare-fun e!3410795 () (InoxSet Context!9774))

(declare-fun call!408183 () (InoxSet Context!9774))

(assert (=> b!5515718 (= e!3410795 call!408183)))

(declare-fun b!5515719 () Bool)

(declare-fun c!964237 () Bool)

(assert (=> b!5515719 (= c!964237 ((_ is Star!15503) (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))))))

(declare-fun e!3410790 () (InoxSet Context!9774))

(assert (=> b!5515719 (= e!3410790 e!3410795)))

(declare-fun b!5515720 () Bool)

(declare-fun e!3410792 () (InoxSet Context!9774))

(declare-fun call!408182 () (InoxSet Context!9774))

(declare-fun call!408184 () (InoxSet Context!9774))

(assert (=> b!5515720 (= e!3410792 ((_ map or) call!408182 call!408184))))

(declare-fun c!964241 () Bool)

(declare-fun call!408186 () List!62808)

(declare-fun bm!408177 () Bool)

(assert (=> bm!408177 (= call!408182 (derivationStepZipperDown!845 (ite c!964241 (regOne!31519 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))) (regOne!31518 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292))))))) (ite c!964241 (ite (or c!963889 c!963888) lt!2245849 (Context!9775 call!407936)) (Context!9775 call!408186)) (h!69134 s!2326)))))

(declare-fun bm!408178 () Bool)

(declare-fun c!964240 () Bool)

(declare-fun call!408185 () (InoxSet Context!9774))

(declare-fun call!408187 () List!62808)

(declare-fun c!964239 () Bool)

(assert (=> bm!408178 (= call!408185 (derivationStepZipperDown!845 (ite c!964241 (regTwo!31519 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))) (ite c!964240 (regTwo!31518 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))) (ite c!964239 (regOne!31518 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))) (reg!15832 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292))))))))) (ite (or c!964241 c!964240) (ite (or c!963889 c!963888) lt!2245849 (Context!9775 call!407936)) (Context!9775 call!408187)) (h!69134 s!2326)))))

(declare-fun bm!408179 () Bool)

(assert (=> bm!408179 (= call!408186 ($colon$colon!1584 (exprs!5387 (ite (or c!963889 c!963888) lt!2245849 (Context!9775 call!407936))) (ite (or c!964240 c!964239) (regTwo!31518 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))) (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292))))))))))

(declare-fun b!5515721 () Bool)

(declare-fun e!3410791 () (InoxSet Context!9774))

(declare-fun e!3410794 () (InoxSet Context!9774))

(assert (=> b!5515721 (= e!3410791 e!3410794)))

(assert (=> b!5515721 (= c!964241 ((_ is Union!15503) (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))))))

(declare-fun b!5515722 () Bool)

(assert (=> b!5515722 (= e!3410794 ((_ map or) call!408182 call!408185))))

(declare-fun bm!408180 () Bool)

(assert (=> bm!408180 (= call!408187 call!408186)))

(declare-fun bm!408181 () Bool)

(assert (=> bm!408181 (= call!408184 call!408185)))

(declare-fun e!3410793 () Bool)

(declare-fun b!5515723 () Bool)

(assert (=> b!5515723 (= e!3410793 (nullable!5537 (regOne!31518 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292))))))))))

(declare-fun bm!408182 () Bool)

(assert (=> bm!408182 (= call!408183 call!408184)))

(declare-fun b!5515724 () Bool)

(assert (=> b!5515724 (= e!3410795 ((as const (Array Context!9774 Bool)) false))))

(declare-fun b!5515725 () Bool)

(assert (=> b!5515725 (= e!3410792 e!3410790)))

(assert (=> b!5515725 (= c!964239 ((_ is Concat!24348) (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))))))

(declare-fun b!5515726 () Bool)

(assert (=> b!5515726 (= e!3410790 call!408183)))

(declare-fun b!5515727 () Bool)

(assert (=> b!5515727 (= e!3410791 (store ((as const (Array Context!9774 Bool)) false) (ite (or c!963889 c!963888) lt!2245849 (Context!9775 call!407936)) true))))

(declare-fun b!5515728 () Bool)

(assert (=> b!5515728 (= c!964240 e!3410793)))

(declare-fun res!2350058 () Bool)

(assert (=> b!5515728 (=> (not res!2350058) (not e!3410793))))

(assert (=> b!5515728 (= res!2350058 ((_ is Concat!24348) (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))))))

(assert (=> b!5515728 (= e!3410794 e!3410792)))

(declare-fun c!964238 () Bool)

(declare-fun d!1747551 () Bool)

(assert (=> d!1747551 (= c!964238 (and ((_ is ElementMatch!15503) (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))) (= (c!963749 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292)))))) (h!69134 s!2326))))))

(assert (=> d!1747551 (= (derivationStepZipperDown!845 (ite c!963889 (regTwo!31519 (regTwo!31518 r!7292)) (ite c!963888 (regTwo!31518 (regTwo!31518 r!7292)) (ite c!963887 (regOne!31518 (regTwo!31518 r!7292)) (reg!15832 (regTwo!31518 r!7292))))) (ite (or c!963889 c!963888) lt!2245849 (Context!9775 call!407936)) (h!69134 s!2326)) e!3410791)))

(assert (= (and d!1747551 c!964238) b!5515727))

(assert (= (and d!1747551 (not c!964238)) b!5515721))

(assert (= (and b!5515721 c!964241) b!5515722))

(assert (= (and b!5515721 (not c!964241)) b!5515728))

(assert (= (and b!5515728 res!2350058) b!5515723))

(assert (= (and b!5515728 c!964240) b!5515720))

(assert (= (and b!5515728 (not c!964240)) b!5515725))

(assert (= (and b!5515725 c!964239) b!5515726))

(assert (= (and b!5515725 (not c!964239)) b!5515719))

(assert (= (and b!5515719 c!964237) b!5515718))

(assert (= (and b!5515719 (not c!964237)) b!5515724))

(assert (= (or b!5515726 b!5515718) bm!408180))

(assert (= (or b!5515726 b!5515718) bm!408182))

(assert (= (or b!5515720 bm!408180) bm!408179))

(assert (= (or b!5515720 bm!408182) bm!408181))

(assert (= (or b!5515722 bm!408181) bm!408178))

(assert (= (or b!5515722 b!5515720) bm!408177))

(declare-fun m!6519842 () Bool)

(assert (=> bm!408179 m!6519842))

(declare-fun m!6519844 () Bool)

(assert (=> b!5515723 m!6519844))

(declare-fun m!6519846 () Bool)

(assert (=> bm!408177 m!6519846))

(declare-fun m!6519848 () Bool)

(assert (=> bm!408178 m!6519848))

(declare-fun m!6519850 () Bool)

(assert (=> b!5515727 m!6519850))

(assert (=> bm!407927 d!1747551))

(assert (=> d!1747051 d!1747345))

(declare-fun e!3410796 () Bool)

(assert (=> b!5514713 (= tp!1517115 e!3410796)))

(declare-fun b!5515732 () Bool)

(declare-fun tp!1517305 () Bool)

(declare-fun tp!1517307 () Bool)

(assert (=> b!5515732 (= e!3410796 (and tp!1517305 tp!1517307))))

(declare-fun b!5515729 () Bool)

(assert (=> b!5515729 (= e!3410796 tp_is_empty!40259)))

(declare-fun b!5515731 () Bool)

(declare-fun tp!1517306 () Bool)

(assert (=> b!5515731 (= e!3410796 tp!1517306)))

(declare-fun b!5515730 () Bool)

(declare-fun tp!1517304 () Bool)

(declare-fun tp!1517308 () Bool)

(assert (=> b!5515730 (= e!3410796 (and tp!1517304 tp!1517308))))

(assert (= (and b!5514713 ((_ is ElementMatch!15503) (h!69132 (exprs!5387 setElem!36639)))) b!5515729))

(assert (= (and b!5514713 ((_ is Concat!24348) (h!69132 (exprs!5387 setElem!36639)))) b!5515730))

(assert (= (and b!5514713 ((_ is Star!15503) (h!69132 (exprs!5387 setElem!36639)))) b!5515731))

(assert (= (and b!5514713 ((_ is Union!15503) (h!69132 (exprs!5387 setElem!36639)))) b!5515732))

(declare-fun b!5515733 () Bool)

(declare-fun e!3410797 () Bool)

(declare-fun tp!1517309 () Bool)

(declare-fun tp!1517310 () Bool)

(assert (=> b!5515733 (= e!3410797 (and tp!1517309 tp!1517310))))

(assert (=> b!5514713 (= tp!1517116 e!3410797)))

(assert (= (and b!5514713 ((_ is Cons!62684) (t!376055 (exprs!5387 setElem!36639)))) b!5515733))

(declare-fun condSetEmpty!36657 () Bool)

(assert (=> setNonEmpty!36645 (= condSetEmpty!36657 (= setRest!36645 ((as const (Array Context!9774 Bool)) false)))))

(declare-fun setRes!36657 () Bool)

(assert (=> setNonEmpty!36645 (= tp!1517070 setRes!36657)))

(declare-fun setIsEmpty!36657 () Bool)

(assert (=> setIsEmpty!36657 setRes!36657))

(declare-fun setNonEmpty!36657 () Bool)

(declare-fun e!3410798 () Bool)

(declare-fun tp!1517311 () Bool)

(declare-fun setElem!36657 () Context!9774)

(assert (=> setNonEmpty!36657 (= setRes!36657 (and tp!1517311 (inv!82004 setElem!36657) e!3410798))))

(declare-fun setRest!36657 () (InoxSet Context!9774))

(assert (=> setNonEmpty!36657 (= setRest!36645 ((_ map or) (store ((as const (Array Context!9774 Bool)) false) setElem!36657 true) setRest!36657))))

(declare-fun b!5515734 () Bool)

(declare-fun tp!1517312 () Bool)

(assert (=> b!5515734 (= e!3410798 tp!1517312)))

(assert (= (and setNonEmpty!36645 condSetEmpty!36657) setIsEmpty!36657))

(assert (= (and setNonEmpty!36645 (not condSetEmpty!36657)) setNonEmpty!36657))

(assert (= setNonEmpty!36657 b!5515734))

(declare-fun m!6519852 () Bool)

(assert (=> setNonEmpty!36657 m!6519852))

(declare-fun b!5515735 () Bool)

(declare-fun e!3410799 () Bool)

(declare-fun tp!1517313 () Bool)

(declare-fun tp!1517314 () Bool)

(assert (=> b!5515735 (= e!3410799 (and tp!1517313 tp!1517314))))

(assert (=> b!5514669 (= tp!1517071 e!3410799)))

(assert (= (and b!5514669 ((_ is Cons!62684) (exprs!5387 setElem!36645))) b!5515735))

(declare-fun e!3410800 () Bool)

(assert (=> b!5514690 (= tp!1517094 e!3410800)))

(declare-fun b!5515739 () Bool)

(declare-fun tp!1517316 () Bool)

(declare-fun tp!1517318 () Bool)

(assert (=> b!5515739 (= e!3410800 (and tp!1517316 tp!1517318))))

(declare-fun b!5515736 () Bool)

(assert (=> b!5515736 (= e!3410800 tp_is_empty!40259)))

(declare-fun b!5515738 () Bool)

(declare-fun tp!1517317 () Bool)

(assert (=> b!5515738 (= e!3410800 tp!1517317)))

(declare-fun b!5515737 () Bool)

(declare-fun tp!1517315 () Bool)

(declare-fun tp!1517319 () Bool)

(assert (=> b!5515737 (= e!3410800 (and tp!1517315 tp!1517319))))

(assert (= (and b!5514690 ((_ is ElementMatch!15503) (reg!15832 (regOne!31519 r!7292)))) b!5515736))

(assert (= (and b!5514690 ((_ is Concat!24348) (reg!15832 (regOne!31519 r!7292)))) b!5515737))

(assert (= (and b!5514690 ((_ is Star!15503) (reg!15832 (regOne!31519 r!7292)))) b!5515738))

(assert (= (and b!5514690 ((_ is Union!15503) (reg!15832 (regOne!31519 r!7292)))) b!5515739))

(declare-fun e!3410801 () Bool)

(assert (=> b!5514681 (= tp!1517082 e!3410801)))

(declare-fun b!5515743 () Bool)

(declare-fun tp!1517321 () Bool)

(declare-fun tp!1517323 () Bool)

(assert (=> b!5515743 (= e!3410801 (and tp!1517321 tp!1517323))))

(declare-fun b!5515740 () Bool)

(assert (=> b!5515740 (= e!3410801 tp_is_empty!40259)))

(declare-fun b!5515742 () Bool)

(declare-fun tp!1517322 () Bool)

(assert (=> b!5515742 (= e!3410801 tp!1517322)))

(declare-fun b!5515741 () Bool)

(declare-fun tp!1517320 () Bool)

(declare-fun tp!1517324 () Bool)

(assert (=> b!5515741 (= e!3410801 (and tp!1517320 tp!1517324))))

(assert (= (and b!5514681 ((_ is ElementMatch!15503) (regOne!31518 (regOne!31518 r!7292)))) b!5515740))

(assert (= (and b!5514681 ((_ is Concat!24348) (regOne!31518 (regOne!31518 r!7292)))) b!5515741))

(assert (= (and b!5514681 ((_ is Star!15503) (regOne!31518 (regOne!31518 r!7292)))) b!5515742))

(assert (= (and b!5514681 ((_ is Union!15503) (regOne!31518 (regOne!31518 r!7292)))) b!5515743))

(declare-fun e!3410802 () Bool)

(assert (=> b!5514681 (= tp!1517086 e!3410802)))

(declare-fun b!5515747 () Bool)

(declare-fun tp!1517326 () Bool)

(declare-fun tp!1517328 () Bool)

(assert (=> b!5515747 (= e!3410802 (and tp!1517326 tp!1517328))))

(declare-fun b!5515744 () Bool)

(assert (=> b!5515744 (= e!3410802 tp_is_empty!40259)))

(declare-fun b!5515746 () Bool)

(declare-fun tp!1517327 () Bool)

(assert (=> b!5515746 (= e!3410802 tp!1517327)))

(declare-fun b!5515745 () Bool)

(declare-fun tp!1517325 () Bool)

(declare-fun tp!1517329 () Bool)

(assert (=> b!5515745 (= e!3410802 (and tp!1517325 tp!1517329))))

(assert (= (and b!5514681 ((_ is ElementMatch!15503) (regTwo!31518 (regOne!31518 r!7292)))) b!5515744))

(assert (= (and b!5514681 ((_ is Concat!24348) (regTwo!31518 (regOne!31518 r!7292)))) b!5515745))

(assert (= (and b!5514681 ((_ is Star!15503) (regTwo!31518 (regOne!31518 r!7292)))) b!5515746))

(assert (= (and b!5514681 ((_ is Union!15503) (regTwo!31518 (regOne!31518 r!7292)))) b!5515747))

(declare-fun e!3410803 () Bool)

(assert (=> b!5514718 (= tp!1517120 e!3410803)))

(declare-fun b!5515751 () Bool)

(declare-fun tp!1517331 () Bool)

(declare-fun tp!1517333 () Bool)

(assert (=> b!5515751 (= e!3410803 (and tp!1517331 tp!1517333))))

(declare-fun b!5515748 () Bool)

(assert (=> b!5515748 (= e!3410803 tp_is_empty!40259)))

(declare-fun b!5515750 () Bool)

(declare-fun tp!1517332 () Bool)

(assert (=> b!5515750 (= e!3410803 tp!1517332)))

(declare-fun b!5515749 () Bool)

(declare-fun tp!1517330 () Bool)

(declare-fun tp!1517334 () Bool)

(assert (=> b!5515749 (= e!3410803 (and tp!1517330 tp!1517334))))

(assert (= (and b!5514718 ((_ is ElementMatch!15503) (regOne!31519 (reg!15832 r!7292)))) b!5515748))

(assert (= (and b!5514718 ((_ is Concat!24348) (regOne!31519 (reg!15832 r!7292)))) b!5515749))

(assert (= (and b!5514718 ((_ is Star!15503) (regOne!31519 (reg!15832 r!7292)))) b!5515750))

(assert (= (and b!5514718 ((_ is Union!15503) (regOne!31519 (reg!15832 r!7292)))) b!5515751))

(declare-fun e!3410804 () Bool)

(assert (=> b!5514718 (= tp!1517122 e!3410804)))

(declare-fun b!5515755 () Bool)

(declare-fun tp!1517336 () Bool)

(declare-fun tp!1517338 () Bool)

(assert (=> b!5515755 (= e!3410804 (and tp!1517336 tp!1517338))))

(declare-fun b!5515752 () Bool)

(assert (=> b!5515752 (= e!3410804 tp_is_empty!40259)))

(declare-fun b!5515754 () Bool)

(declare-fun tp!1517337 () Bool)

(assert (=> b!5515754 (= e!3410804 tp!1517337)))

(declare-fun b!5515753 () Bool)

(declare-fun tp!1517335 () Bool)

(declare-fun tp!1517339 () Bool)

(assert (=> b!5515753 (= e!3410804 (and tp!1517335 tp!1517339))))

(assert (= (and b!5514718 ((_ is ElementMatch!15503) (regTwo!31519 (reg!15832 r!7292)))) b!5515752))

(assert (= (and b!5514718 ((_ is Concat!24348) (regTwo!31519 (reg!15832 r!7292)))) b!5515753))

(assert (= (and b!5514718 ((_ is Star!15503) (regTwo!31519 (reg!15832 r!7292)))) b!5515754))

(assert (= (and b!5514718 ((_ is Union!15503) (regTwo!31519 (reg!15832 r!7292)))) b!5515755))

(declare-fun e!3410805 () Bool)

(assert (=> b!5514689 (= tp!1517092 e!3410805)))

(declare-fun b!5515759 () Bool)

(declare-fun tp!1517341 () Bool)

(declare-fun tp!1517343 () Bool)

(assert (=> b!5515759 (= e!3410805 (and tp!1517341 tp!1517343))))

(declare-fun b!5515756 () Bool)

(assert (=> b!5515756 (= e!3410805 tp_is_empty!40259)))

(declare-fun b!5515758 () Bool)

(declare-fun tp!1517342 () Bool)

(assert (=> b!5515758 (= e!3410805 tp!1517342)))

(declare-fun b!5515757 () Bool)

(declare-fun tp!1517340 () Bool)

(declare-fun tp!1517344 () Bool)

(assert (=> b!5515757 (= e!3410805 (and tp!1517340 tp!1517344))))

(assert (= (and b!5514689 ((_ is ElementMatch!15503) (regOne!31518 (regOne!31519 r!7292)))) b!5515756))

(assert (= (and b!5514689 ((_ is Concat!24348) (regOne!31518 (regOne!31519 r!7292)))) b!5515757))

(assert (= (and b!5514689 ((_ is Star!15503) (regOne!31518 (regOne!31519 r!7292)))) b!5515758))

(assert (= (and b!5514689 ((_ is Union!15503) (regOne!31518 (regOne!31519 r!7292)))) b!5515759))

(declare-fun e!3410806 () Bool)

(assert (=> b!5514689 (= tp!1517096 e!3410806)))

(declare-fun b!5515763 () Bool)

(declare-fun tp!1517346 () Bool)

(declare-fun tp!1517348 () Bool)

(assert (=> b!5515763 (= e!3410806 (and tp!1517346 tp!1517348))))

(declare-fun b!5515760 () Bool)

(assert (=> b!5515760 (= e!3410806 tp_is_empty!40259)))

(declare-fun b!5515762 () Bool)

(declare-fun tp!1517347 () Bool)

(assert (=> b!5515762 (= e!3410806 tp!1517347)))

(declare-fun b!5515761 () Bool)

(declare-fun tp!1517345 () Bool)

(declare-fun tp!1517349 () Bool)

(assert (=> b!5515761 (= e!3410806 (and tp!1517345 tp!1517349))))

(assert (= (and b!5514689 ((_ is ElementMatch!15503) (regTwo!31518 (regOne!31519 r!7292)))) b!5515760))

(assert (= (and b!5514689 ((_ is Concat!24348) (regTwo!31518 (regOne!31519 r!7292)))) b!5515761))

(assert (= (and b!5514689 ((_ is Star!15503) (regTwo!31518 (regOne!31519 r!7292)))) b!5515762))

(assert (= (and b!5514689 ((_ is Union!15503) (regTwo!31518 (regOne!31519 r!7292)))) b!5515763))

(declare-fun e!3410807 () Bool)

(assert (=> b!5514683 (= tp!1517083 e!3410807)))

(declare-fun b!5515767 () Bool)

(declare-fun tp!1517351 () Bool)

(declare-fun tp!1517353 () Bool)

(assert (=> b!5515767 (= e!3410807 (and tp!1517351 tp!1517353))))

(declare-fun b!5515764 () Bool)

(assert (=> b!5515764 (= e!3410807 tp_is_empty!40259)))

(declare-fun b!5515766 () Bool)

(declare-fun tp!1517352 () Bool)

(assert (=> b!5515766 (= e!3410807 tp!1517352)))

(declare-fun b!5515765 () Bool)

(declare-fun tp!1517350 () Bool)

(declare-fun tp!1517354 () Bool)

(assert (=> b!5515765 (= e!3410807 (and tp!1517350 tp!1517354))))

(assert (= (and b!5514683 ((_ is ElementMatch!15503) (regOne!31519 (regOne!31518 r!7292)))) b!5515764))

(assert (= (and b!5514683 ((_ is Concat!24348) (regOne!31519 (regOne!31518 r!7292)))) b!5515765))

(assert (= (and b!5514683 ((_ is Star!15503) (regOne!31519 (regOne!31518 r!7292)))) b!5515766))

(assert (= (and b!5514683 ((_ is Union!15503) (regOne!31519 (regOne!31518 r!7292)))) b!5515767))

(declare-fun e!3410808 () Bool)

(assert (=> b!5514683 (= tp!1517085 e!3410808)))

(declare-fun b!5515771 () Bool)

(declare-fun tp!1517356 () Bool)

(declare-fun tp!1517358 () Bool)

(assert (=> b!5515771 (= e!3410808 (and tp!1517356 tp!1517358))))

(declare-fun b!5515768 () Bool)

(assert (=> b!5515768 (= e!3410808 tp_is_empty!40259)))

(declare-fun b!5515770 () Bool)

(declare-fun tp!1517357 () Bool)

(assert (=> b!5515770 (= e!3410808 tp!1517357)))

(declare-fun b!5515769 () Bool)

(declare-fun tp!1517355 () Bool)

(declare-fun tp!1517359 () Bool)

(assert (=> b!5515769 (= e!3410808 (and tp!1517355 tp!1517359))))

(assert (= (and b!5514683 ((_ is ElementMatch!15503) (regTwo!31519 (regOne!31518 r!7292)))) b!5515768))

(assert (= (and b!5514683 ((_ is Concat!24348) (regTwo!31519 (regOne!31518 r!7292)))) b!5515769))

(assert (= (and b!5514683 ((_ is Star!15503) (regTwo!31519 (regOne!31518 r!7292)))) b!5515770))

(assert (= (and b!5514683 ((_ is Union!15503) (regTwo!31519 (regOne!31518 r!7292)))) b!5515771))

(declare-fun e!3410809 () Bool)

(assert (=> b!5514691 (= tp!1517093 e!3410809)))

(declare-fun b!5515775 () Bool)

(declare-fun tp!1517361 () Bool)

(declare-fun tp!1517363 () Bool)

(assert (=> b!5515775 (= e!3410809 (and tp!1517361 tp!1517363))))

(declare-fun b!5515772 () Bool)

(assert (=> b!5515772 (= e!3410809 tp_is_empty!40259)))

(declare-fun b!5515774 () Bool)

(declare-fun tp!1517362 () Bool)

(assert (=> b!5515774 (= e!3410809 tp!1517362)))

(declare-fun b!5515773 () Bool)

(declare-fun tp!1517360 () Bool)

(declare-fun tp!1517364 () Bool)

(assert (=> b!5515773 (= e!3410809 (and tp!1517360 tp!1517364))))

(assert (= (and b!5514691 ((_ is ElementMatch!15503) (regOne!31519 (regOne!31519 r!7292)))) b!5515772))

(assert (= (and b!5514691 ((_ is Concat!24348) (regOne!31519 (regOne!31519 r!7292)))) b!5515773))

(assert (= (and b!5514691 ((_ is Star!15503) (regOne!31519 (regOne!31519 r!7292)))) b!5515774))

(assert (= (and b!5514691 ((_ is Union!15503) (regOne!31519 (regOne!31519 r!7292)))) b!5515775))

(declare-fun e!3410810 () Bool)

(assert (=> b!5514691 (= tp!1517095 e!3410810)))

(declare-fun b!5515779 () Bool)

(declare-fun tp!1517366 () Bool)

(declare-fun tp!1517368 () Bool)

(assert (=> b!5515779 (= e!3410810 (and tp!1517366 tp!1517368))))

(declare-fun b!5515776 () Bool)

(assert (=> b!5515776 (= e!3410810 tp_is_empty!40259)))

(declare-fun b!5515778 () Bool)

(declare-fun tp!1517367 () Bool)

(assert (=> b!5515778 (= e!3410810 tp!1517367)))

(declare-fun b!5515777 () Bool)

(declare-fun tp!1517365 () Bool)

(declare-fun tp!1517369 () Bool)

(assert (=> b!5515777 (= e!3410810 (and tp!1517365 tp!1517369))))

(assert (= (and b!5514691 ((_ is ElementMatch!15503) (regTwo!31519 (regOne!31519 r!7292)))) b!5515776))

(assert (= (and b!5514691 ((_ is Concat!24348) (regTwo!31519 (regOne!31519 r!7292)))) b!5515777))

(assert (= (and b!5514691 ((_ is Star!15503) (regTwo!31519 (regOne!31519 r!7292)))) b!5515778))

(assert (= (and b!5514691 ((_ is Union!15503) (regTwo!31519 (regOne!31519 r!7292)))) b!5515779))

(declare-fun e!3410811 () Bool)

(assert (=> b!5514682 (= tp!1517084 e!3410811)))

(declare-fun b!5515783 () Bool)

(declare-fun tp!1517371 () Bool)

(declare-fun tp!1517373 () Bool)

(assert (=> b!5515783 (= e!3410811 (and tp!1517371 tp!1517373))))

(declare-fun b!5515780 () Bool)

(assert (=> b!5515780 (= e!3410811 tp_is_empty!40259)))

(declare-fun b!5515782 () Bool)

(declare-fun tp!1517372 () Bool)

(assert (=> b!5515782 (= e!3410811 tp!1517372)))

(declare-fun b!5515781 () Bool)

(declare-fun tp!1517370 () Bool)

(declare-fun tp!1517374 () Bool)

(assert (=> b!5515781 (= e!3410811 (and tp!1517370 tp!1517374))))

(assert (= (and b!5514682 ((_ is ElementMatch!15503) (reg!15832 (regOne!31518 r!7292)))) b!5515780))

(assert (= (and b!5514682 ((_ is Concat!24348) (reg!15832 (regOne!31518 r!7292)))) b!5515781))

(assert (= (and b!5514682 ((_ is Star!15503) (reg!15832 (regOne!31518 r!7292)))) b!5515782))

(assert (= (and b!5514682 ((_ is Union!15503) (reg!15832 (regOne!31518 r!7292)))) b!5515783))

(declare-fun e!3410812 () Bool)

(assert (=> b!5514716 (= tp!1517119 e!3410812)))

(declare-fun b!5515787 () Bool)

(declare-fun tp!1517376 () Bool)

(declare-fun tp!1517378 () Bool)

(assert (=> b!5515787 (= e!3410812 (and tp!1517376 tp!1517378))))

(declare-fun b!5515784 () Bool)

(assert (=> b!5515784 (= e!3410812 tp_is_empty!40259)))

(declare-fun b!5515786 () Bool)

(declare-fun tp!1517377 () Bool)

(assert (=> b!5515786 (= e!3410812 tp!1517377)))

(declare-fun b!5515785 () Bool)

(declare-fun tp!1517375 () Bool)

(declare-fun tp!1517379 () Bool)

(assert (=> b!5515785 (= e!3410812 (and tp!1517375 tp!1517379))))

(assert (= (and b!5514716 ((_ is ElementMatch!15503) (regOne!31518 (reg!15832 r!7292)))) b!5515784))

(assert (= (and b!5514716 ((_ is Concat!24348) (regOne!31518 (reg!15832 r!7292)))) b!5515785))

(assert (= (and b!5514716 ((_ is Star!15503) (regOne!31518 (reg!15832 r!7292)))) b!5515786))

(assert (= (and b!5514716 ((_ is Union!15503) (regOne!31518 (reg!15832 r!7292)))) b!5515787))

(declare-fun e!3410813 () Bool)

(assert (=> b!5514716 (= tp!1517123 e!3410813)))

(declare-fun b!5515791 () Bool)

(declare-fun tp!1517381 () Bool)

(declare-fun tp!1517383 () Bool)

(assert (=> b!5515791 (= e!3410813 (and tp!1517381 tp!1517383))))

(declare-fun b!5515788 () Bool)

(assert (=> b!5515788 (= e!3410813 tp_is_empty!40259)))

(declare-fun b!5515790 () Bool)

(declare-fun tp!1517382 () Bool)

(assert (=> b!5515790 (= e!3410813 tp!1517382)))

(declare-fun b!5515789 () Bool)

(declare-fun tp!1517380 () Bool)

(declare-fun tp!1517384 () Bool)

(assert (=> b!5515789 (= e!3410813 (and tp!1517380 tp!1517384))))

(assert (= (and b!5514716 ((_ is ElementMatch!15503) (regTwo!31518 (reg!15832 r!7292)))) b!5515788))

(assert (= (and b!5514716 ((_ is Concat!24348) (regTwo!31518 (reg!15832 r!7292)))) b!5515789))

(assert (= (and b!5514716 ((_ is Star!15503) (regTwo!31518 (reg!15832 r!7292)))) b!5515790))

(assert (= (and b!5514716 ((_ is Union!15503) (regTwo!31518 (reg!15832 r!7292)))) b!5515791))

(declare-fun e!3410814 () Bool)

(assert (=> b!5514717 (= tp!1517121 e!3410814)))

(declare-fun b!5515795 () Bool)

(declare-fun tp!1517386 () Bool)

(declare-fun tp!1517388 () Bool)

(assert (=> b!5515795 (= e!3410814 (and tp!1517386 tp!1517388))))

(declare-fun b!5515792 () Bool)

(assert (=> b!5515792 (= e!3410814 tp_is_empty!40259)))

(declare-fun b!5515794 () Bool)

(declare-fun tp!1517387 () Bool)

(assert (=> b!5515794 (= e!3410814 tp!1517387)))

(declare-fun b!5515793 () Bool)

(declare-fun tp!1517385 () Bool)

(declare-fun tp!1517389 () Bool)

(assert (=> b!5515793 (= e!3410814 (and tp!1517385 tp!1517389))))

(assert (= (and b!5514717 ((_ is ElementMatch!15503) (reg!15832 (reg!15832 r!7292)))) b!5515792))

(assert (= (and b!5514717 ((_ is Concat!24348) (reg!15832 (reg!15832 r!7292)))) b!5515793))

(assert (= (and b!5514717 ((_ is Star!15503) (reg!15832 (reg!15832 r!7292)))) b!5515794))

(assert (= (and b!5514717 ((_ is Union!15503) (reg!15832 (reg!15832 r!7292)))) b!5515795))

(declare-fun e!3410815 () Bool)

(assert (=> b!5514694 (= tp!1517099 e!3410815)))

(declare-fun b!5515799 () Bool)

(declare-fun tp!1517391 () Bool)

(declare-fun tp!1517393 () Bool)

(assert (=> b!5515799 (= e!3410815 (and tp!1517391 tp!1517393))))

(declare-fun b!5515796 () Bool)

(assert (=> b!5515796 (= e!3410815 tp_is_empty!40259)))

(declare-fun b!5515798 () Bool)

(declare-fun tp!1517392 () Bool)

(assert (=> b!5515798 (= e!3410815 tp!1517392)))

(declare-fun b!5515797 () Bool)

(declare-fun tp!1517390 () Bool)

(declare-fun tp!1517394 () Bool)

(assert (=> b!5515797 (= e!3410815 (and tp!1517390 tp!1517394))))

(assert (= (and b!5514694 ((_ is ElementMatch!15503) (reg!15832 (regTwo!31519 r!7292)))) b!5515796))

(assert (= (and b!5514694 ((_ is Concat!24348) (reg!15832 (regTwo!31519 r!7292)))) b!5515797))

(assert (= (and b!5514694 ((_ is Star!15503) (reg!15832 (regTwo!31519 r!7292)))) b!5515798))

(assert (= (and b!5514694 ((_ is Union!15503) (reg!15832 (regTwo!31519 r!7292)))) b!5515799))

(declare-fun e!3410816 () Bool)

(assert (=> b!5514714 (= tp!1517117 e!3410816)))

(declare-fun b!5515803 () Bool)

(declare-fun tp!1517396 () Bool)

(declare-fun tp!1517398 () Bool)

(assert (=> b!5515803 (= e!3410816 (and tp!1517396 tp!1517398))))

(declare-fun b!5515800 () Bool)

(assert (=> b!5515800 (= e!3410816 tp_is_empty!40259)))

(declare-fun b!5515802 () Bool)

(declare-fun tp!1517397 () Bool)

(assert (=> b!5515802 (= e!3410816 tp!1517397)))

(declare-fun b!5515801 () Bool)

(declare-fun tp!1517395 () Bool)

(declare-fun tp!1517399 () Bool)

(assert (=> b!5515801 (= e!3410816 (and tp!1517395 tp!1517399))))

(assert (= (and b!5514714 ((_ is ElementMatch!15503) (h!69132 (exprs!5387 (h!69133 zl!343))))) b!5515800))

(assert (= (and b!5514714 ((_ is Concat!24348) (h!69132 (exprs!5387 (h!69133 zl!343))))) b!5515801))

(assert (= (and b!5514714 ((_ is Star!15503) (h!69132 (exprs!5387 (h!69133 zl!343))))) b!5515802))

(assert (= (and b!5514714 ((_ is Union!15503) (h!69132 (exprs!5387 (h!69133 zl!343))))) b!5515803))

(declare-fun b!5515804 () Bool)

(declare-fun e!3410817 () Bool)

(declare-fun tp!1517400 () Bool)

(declare-fun tp!1517401 () Bool)

(assert (=> b!5515804 (= e!3410817 (and tp!1517400 tp!1517401))))

(assert (=> b!5514714 (= tp!1517118 e!3410817)))

(assert (= (and b!5514714 ((_ is Cons!62684) (t!376055 (exprs!5387 (h!69133 zl!343))))) b!5515804))

(declare-fun e!3410818 () Bool)

(assert (=> b!5514685 (= tp!1517087 e!3410818)))

(declare-fun b!5515808 () Bool)

(declare-fun tp!1517403 () Bool)

(declare-fun tp!1517405 () Bool)

(assert (=> b!5515808 (= e!3410818 (and tp!1517403 tp!1517405))))

(declare-fun b!5515805 () Bool)

(assert (=> b!5515805 (= e!3410818 tp_is_empty!40259)))

(declare-fun b!5515807 () Bool)

(declare-fun tp!1517404 () Bool)

(assert (=> b!5515807 (= e!3410818 tp!1517404)))

(declare-fun b!5515806 () Bool)

(declare-fun tp!1517402 () Bool)

(declare-fun tp!1517406 () Bool)

(assert (=> b!5515806 (= e!3410818 (and tp!1517402 tp!1517406))))

(assert (= (and b!5514685 ((_ is ElementMatch!15503) (regOne!31518 (regTwo!31518 r!7292)))) b!5515805))

(assert (= (and b!5514685 ((_ is Concat!24348) (regOne!31518 (regTwo!31518 r!7292)))) b!5515806))

(assert (= (and b!5514685 ((_ is Star!15503) (regOne!31518 (regTwo!31518 r!7292)))) b!5515807))

(assert (= (and b!5514685 ((_ is Union!15503) (regOne!31518 (regTwo!31518 r!7292)))) b!5515808))

(declare-fun e!3410819 () Bool)

(assert (=> b!5514685 (= tp!1517091 e!3410819)))

(declare-fun b!5515812 () Bool)

(declare-fun tp!1517408 () Bool)

(declare-fun tp!1517410 () Bool)

(assert (=> b!5515812 (= e!3410819 (and tp!1517408 tp!1517410))))

(declare-fun b!5515809 () Bool)

(assert (=> b!5515809 (= e!3410819 tp_is_empty!40259)))

(declare-fun b!5515811 () Bool)

(declare-fun tp!1517409 () Bool)

(assert (=> b!5515811 (= e!3410819 tp!1517409)))

(declare-fun b!5515810 () Bool)

(declare-fun tp!1517407 () Bool)

(declare-fun tp!1517411 () Bool)

(assert (=> b!5515810 (= e!3410819 (and tp!1517407 tp!1517411))))

(assert (= (and b!5514685 ((_ is ElementMatch!15503) (regTwo!31518 (regTwo!31518 r!7292)))) b!5515809))

(assert (= (and b!5514685 ((_ is Concat!24348) (regTwo!31518 (regTwo!31518 r!7292)))) b!5515810))

(assert (= (and b!5514685 ((_ is Star!15503) (regTwo!31518 (regTwo!31518 r!7292)))) b!5515811))

(assert (= (and b!5514685 ((_ is Union!15503) (regTwo!31518 (regTwo!31518 r!7292)))) b!5515812))

(declare-fun e!3410820 () Bool)

(assert (=> b!5514695 (= tp!1517098 e!3410820)))

(declare-fun b!5515816 () Bool)

(declare-fun tp!1517413 () Bool)

(declare-fun tp!1517415 () Bool)

(assert (=> b!5515816 (= e!3410820 (and tp!1517413 tp!1517415))))

(declare-fun b!5515813 () Bool)

(assert (=> b!5515813 (= e!3410820 tp_is_empty!40259)))

(declare-fun b!5515815 () Bool)

(declare-fun tp!1517414 () Bool)

(assert (=> b!5515815 (= e!3410820 tp!1517414)))

(declare-fun b!5515814 () Bool)

(declare-fun tp!1517412 () Bool)

(declare-fun tp!1517416 () Bool)

(assert (=> b!5515814 (= e!3410820 (and tp!1517412 tp!1517416))))

(assert (= (and b!5514695 ((_ is ElementMatch!15503) (regOne!31519 (regTwo!31519 r!7292)))) b!5515813))

(assert (= (and b!5514695 ((_ is Concat!24348) (regOne!31519 (regTwo!31519 r!7292)))) b!5515814))

(assert (= (and b!5514695 ((_ is Star!15503) (regOne!31519 (regTwo!31519 r!7292)))) b!5515815))

(assert (= (and b!5514695 ((_ is Union!15503) (regOne!31519 (regTwo!31519 r!7292)))) b!5515816))

(declare-fun e!3410821 () Bool)

(assert (=> b!5514695 (= tp!1517100 e!3410821)))

(declare-fun b!5515820 () Bool)

(declare-fun tp!1517418 () Bool)

(declare-fun tp!1517420 () Bool)

(assert (=> b!5515820 (= e!3410821 (and tp!1517418 tp!1517420))))

(declare-fun b!5515817 () Bool)

(assert (=> b!5515817 (= e!3410821 tp_is_empty!40259)))

(declare-fun b!5515819 () Bool)

(declare-fun tp!1517419 () Bool)

(assert (=> b!5515819 (= e!3410821 tp!1517419)))

(declare-fun b!5515818 () Bool)

(declare-fun tp!1517417 () Bool)

(declare-fun tp!1517421 () Bool)

(assert (=> b!5515818 (= e!3410821 (and tp!1517417 tp!1517421))))

(assert (= (and b!5514695 ((_ is ElementMatch!15503) (regTwo!31519 (regTwo!31519 r!7292)))) b!5515817))

(assert (= (and b!5514695 ((_ is Concat!24348) (regTwo!31519 (regTwo!31519 r!7292)))) b!5515818))

(assert (= (and b!5514695 ((_ is Star!15503) (regTwo!31519 (regTwo!31519 r!7292)))) b!5515819))

(assert (= (and b!5514695 ((_ is Union!15503) (regTwo!31519 (regTwo!31519 r!7292)))) b!5515820))

(declare-fun e!3410822 () Bool)

(assert (=> b!5514693 (= tp!1517097 e!3410822)))

(declare-fun b!5515824 () Bool)

(declare-fun tp!1517423 () Bool)

(declare-fun tp!1517425 () Bool)

(assert (=> b!5515824 (= e!3410822 (and tp!1517423 tp!1517425))))

(declare-fun b!5515821 () Bool)

(assert (=> b!5515821 (= e!3410822 tp_is_empty!40259)))

(declare-fun b!5515823 () Bool)

(declare-fun tp!1517424 () Bool)

(assert (=> b!5515823 (= e!3410822 tp!1517424)))

(declare-fun b!5515822 () Bool)

(declare-fun tp!1517422 () Bool)

(declare-fun tp!1517426 () Bool)

(assert (=> b!5515822 (= e!3410822 (and tp!1517422 tp!1517426))))

(assert (= (and b!5514693 ((_ is ElementMatch!15503) (regOne!31518 (regTwo!31519 r!7292)))) b!5515821))

(assert (= (and b!5514693 ((_ is Concat!24348) (regOne!31518 (regTwo!31519 r!7292)))) b!5515822))

(assert (= (and b!5514693 ((_ is Star!15503) (regOne!31518 (regTwo!31519 r!7292)))) b!5515823))

(assert (= (and b!5514693 ((_ is Union!15503) (regOne!31518 (regTwo!31519 r!7292)))) b!5515824))

(declare-fun e!3410823 () Bool)

(assert (=> b!5514693 (= tp!1517101 e!3410823)))

(declare-fun b!5515828 () Bool)

(declare-fun tp!1517428 () Bool)

(declare-fun tp!1517430 () Bool)

(assert (=> b!5515828 (= e!3410823 (and tp!1517428 tp!1517430))))

(declare-fun b!5515825 () Bool)

(assert (=> b!5515825 (= e!3410823 tp_is_empty!40259)))

(declare-fun b!5515827 () Bool)

(declare-fun tp!1517429 () Bool)

(assert (=> b!5515827 (= e!3410823 tp!1517429)))

(declare-fun b!5515826 () Bool)

(declare-fun tp!1517427 () Bool)

(declare-fun tp!1517431 () Bool)

(assert (=> b!5515826 (= e!3410823 (and tp!1517427 tp!1517431))))

(assert (= (and b!5514693 ((_ is ElementMatch!15503) (regTwo!31518 (regTwo!31519 r!7292)))) b!5515825))

(assert (= (and b!5514693 ((_ is Concat!24348) (regTwo!31518 (regTwo!31519 r!7292)))) b!5515826))

(assert (= (and b!5514693 ((_ is Star!15503) (regTwo!31518 (regTwo!31519 r!7292)))) b!5515827))

(assert (= (and b!5514693 ((_ is Union!15503) (regTwo!31518 (regTwo!31519 r!7292)))) b!5515828))

(declare-fun b!5515829 () Bool)

(declare-fun e!3410824 () Bool)

(declare-fun tp!1517432 () Bool)

(assert (=> b!5515829 (= e!3410824 (and tp_is_empty!40259 tp!1517432))))

(assert (=> b!5514708 (= tp!1517110 e!3410824)))

(assert (= (and b!5514708 ((_ is Cons!62686) (t!376057 (t!376057 s!2326)))) b!5515829))

(declare-fun b!5515831 () Bool)

(declare-fun e!3410826 () Bool)

(declare-fun tp!1517433 () Bool)

(assert (=> b!5515831 (= e!3410826 tp!1517433)))

(declare-fun b!5515830 () Bool)

(declare-fun e!3410825 () Bool)

(declare-fun tp!1517434 () Bool)

(assert (=> b!5515830 (= e!3410825 (and (inv!82004 (h!69133 (t!376056 (t!376056 zl!343)))) e!3410826 tp!1517434))))

(assert (=> b!5514702 (= tp!1517107 e!3410825)))

(assert (= b!5515830 b!5515831))

(assert (= (and b!5514702 ((_ is Cons!62685) (t!376056 (t!376056 zl!343)))) b!5515830))

(declare-fun m!6519854 () Bool)

(assert (=> b!5515830 m!6519854))

(declare-fun b!5515832 () Bool)

(declare-fun e!3410827 () Bool)

(declare-fun tp!1517435 () Bool)

(declare-fun tp!1517436 () Bool)

(assert (=> b!5515832 (= e!3410827 (and tp!1517435 tp!1517436))))

(assert (=> b!5514703 (= tp!1517106 e!3410827)))

(assert (= (and b!5514703 ((_ is Cons!62684) (exprs!5387 (h!69133 (t!376056 zl!343))))) b!5515832))

(declare-fun e!3410828 () Bool)

(assert (=> b!5514686 (= tp!1517089 e!3410828)))

(declare-fun b!5515836 () Bool)

(declare-fun tp!1517438 () Bool)

(declare-fun tp!1517440 () Bool)

(assert (=> b!5515836 (= e!3410828 (and tp!1517438 tp!1517440))))

(declare-fun b!5515833 () Bool)

(assert (=> b!5515833 (= e!3410828 tp_is_empty!40259)))

(declare-fun b!5515835 () Bool)

(declare-fun tp!1517439 () Bool)

(assert (=> b!5515835 (= e!3410828 tp!1517439)))

(declare-fun b!5515834 () Bool)

(declare-fun tp!1517437 () Bool)

(declare-fun tp!1517441 () Bool)

(assert (=> b!5515834 (= e!3410828 (and tp!1517437 tp!1517441))))

(assert (= (and b!5514686 ((_ is ElementMatch!15503) (reg!15832 (regTwo!31518 r!7292)))) b!5515833))

(assert (= (and b!5514686 ((_ is Concat!24348) (reg!15832 (regTwo!31518 r!7292)))) b!5515834))

(assert (= (and b!5514686 ((_ is Star!15503) (reg!15832 (regTwo!31518 r!7292)))) b!5515835))

(assert (= (and b!5514686 ((_ is Union!15503) (reg!15832 (regTwo!31518 r!7292)))) b!5515836))

(declare-fun e!3410829 () Bool)

(assert (=> b!5514687 (= tp!1517088 e!3410829)))

(declare-fun b!5515840 () Bool)

(declare-fun tp!1517443 () Bool)

(declare-fun tp!1517445 () Bool)

(assert (=> b!5515840 (= e!3410829 (and tp!1517443 tp!1517445))))

(declare-fun b!5515837 () Bool)

(assert (=> b!5515837 (= e!3410829 tp_is_empty!40259)))

(declare-fun b!5515839 () Bool)

(declare-fun tp!1517444 () Bool)

(assert (=> b!5515839 (= e!3410829 tp!1517444)))

(declare-fun b!5515838 () Bool)

(declare-fun tp!1517442 () Bool)

(declare-fun tp!1517446 () Bool)

(assert (=> b!5515838 (= e!3410829 (and tp!1517442 tp!1517446))))

(assert (= (and b!5514687 ((_ is ElementMatch!15503) (regOne!31519 (regTwo!31518 r!7292)))) b!5515837))

(assert (= (and b!5514687 ((_ is Concat!24348) (regOne!31519 (regTwo!31518 r!7292)))) b!5515838))

(assert (= (and b!5514687 ((_ is Star!15503) (regOne!31519 (regTwo!31518 r!7292)))) b!5515839))

(assert (= (and b!5514687 ((_ is Union!15503) (regOne!31519 (regTwo!31518 r!7292)))) b!5515840))

(declare-fun e!3410830 () Bool)

(assert (=> b!5514687 (= tp!1517090 e!3410830)))

(declare-fun b!5515844 () Bool)

(declare-fun tp!1517448 () Bool)

(declare-fun tp!1517450 () Bool)

(assert (=> b!5515844 (= e!3410830 (and tp!1517448 tp!1517450))))

(declare-fun b!5515841 () Bool)

(assert (=> b!5515841 (= e!3410830 tp_is_empty!40259)))

(declare-fun b!5515843 () Bool)

(declare-fun tp!1517449 () Bool)

(assert (=> b!5515843 (= e!3410830 tp!1517449)))

(declare-fun b!5515842 () Bool)

(declare-fun tp!1517447 () Bool)

(declare-fun tp!1517451 () Bool)

(assert (=> b!5515842 (= e!3410830 (and tp!1517447 tp!1517451))))

(assert (= (and b!5514687 ((_ is ElementMatch!15503) (regTwo!31519 (regTwo!31518 r!7292)))) b!5515841))

(assert (= (and b!5514687 ((_ is Concat!24348) (regTwo!31519 (regTwo!31518 r!7292)))) b!5515842))

(assert (= (and b!5514687 ((_ is Star!15503) (regTwo!31519 (regTwo!31518 r!7292)))) b!5515843))

(assert (= (and b!5514687 ((_ is Union!15503) (regTwo!31519 (regTwo!31518 r!7292)))) b!5515844))

(declare-fun b_lambda!209123 () Bool)

(assert (= b_lambda!209111 (or b!5513931 b_lambda!209123)))

(assert (=> d!1747447 d!1747065))

(declare-fun b_lambda!209125 () Bool)

(assert (= b_lambda!209115 (or d!1747025 b_lambda!209125)))

(declare-fun bs!1271298 () Bool)

(declare-fun d!1747553 () Bool)

(assert (= bs!1271298 (and d!1747553 d!1747025)))

(assert (=> bs!1271298 (= (dynLambda!24492 lambda!295542 (h!69132 (exprs!5387 setElem!36639))) (validRegex!7239 (h!69132 (exprs!5387 setElem!36639))))))

(declare-fun m!6519856 () Bool)

(assert (=> bs!1271298 m!6519856))

(assert (=> b!5515649 d!1747553))

(declare-fun b_lambda!209127 () Bool)

(assert (= b_lambda!209121 (or b!5513931 b_lambda!209127)))

(assert (=> d!1747527 d!1747067))

(declare-fun b_lambda!209129 () Bool)

(assert (= b_lambda!209119 (or b!5513931 b_lambda!209129)))

(assert (=> d!1747521 d!1747069))

(declare-fun b_lambda!209131 () Bool)

(assert (= b_lambda!209107 (or d!1747023 b_lambda!209131)))

(declare-fun bs!1271299 () Bool)

(declare-fun d!1747555 () Bool)

(assert (= bs!1271299 (and d!1747555 d!1747023)))

(assert (=> bs!1271299 (= (dynLambda!24492 lambda!295539 (h!69132 lt!2245929)) (validRegex!7239 (h!69132 lt!2245929)))))

(declare-fun m!6519858 () Bool)

(assert (=> bs!1271299 m!6519858))

(assert (=> b!5515354 d!1747555))

(declare-fun b_lambda!209133 () Bool)

(assert (= b_lambda!209113 (or d!1747045 b_lambda!209133)))

(declare-fun bs!1271300 () Bool)

(declare-fun d!1747557 () Bool)

(assert (= bs!1271300 (and d!1747557 d!1747045)))

(assert (=> bs!1271300 (= (dynLambda!24492 lambda!295552 (h!69132 (exprs!5387 (h!69133 zl!343)))) (validRegex!7239 (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(declare-fun m!6519860 () Bool)

(assert (=> bs!1271300 m!6519860))

(assert (=> b!5515590 d!1747557))

(declare-fun b_lambda!209135 () Bool)

(assert (= b_lambda!209117 (or d!1747043 b_lambda!209135)))

(declare-fun bs!1271301 () Bool)

(declare-fun d!1747559 () Bool)

(assert (= bs!1271301 (and d!1747559 d!1747043)))

(assert (=> bs!1271301 (= (dynLambda!24492 lambda!295549 (h!69132 (exprs!5387 (h!69133 zl!343)))) (validRegex!7239 (h!69132 (exprs!5387 (h!69133 zl!343)))))))

(assert (=> bs!1271301 m!6519860))

(assert (=> b!5515671 d!1747559))

(declare-fun b_lambda!209137 () Bool)

(assert (= b_lambda!209109 (or d!1747021 b_lambda!209137)))

(declare-fun bs!1271302 () Bool)

(declare-fun d!1747561 () Bool)

(assert (= bs!1271302 (and d!1747561 d!1747021)))

(assert (=> bs!1271302 (= (dynLambda!24492 lambda!295536 (h!69132 (unfocusZipperList!931 zl!343))) (validRegex!7239 (h!69132 (unfocusZipperList!931 zl!343))))))

(declare-fun m!6519862 () Bool)

(assert (=> bs!1271302 m!6519862))

(assert (=> b!5515390 d!1747561))

(check-sat (not b!5515484) (not bm!408137) (not b!5515769) (not b!5515605) (not bm!408113) (not bm!408106) (not b!5515828) (not b!5515712) (not b!5515386) (not d!1747361) (not b!5515819) (not b!5515806) (not b!5515737) (not b!5515672) (not bm!408101) (not setNonEmpty!36655) (not b!5515824) (not b!5515599) (not b!5515663) (not b!5515345) (not d!1747329) (not b!5515472) (not b!5515680) (not d!1747437) (not bm!408170) (not b!5515424) (not d!1747501) (not b!5515488) (not b!5515366) (not b!5515448) (not d!1747435) (not b!5515321) (not bm!408150) (not bm!408122) (not setNonEmpty!36654) (not b!5515762) (not b!5515831) (not b!5515622) (not b!5515580) (not b!5515688) (not b!5515691) (not d!1747463) (not d!1747357) (not b!5515365) (not d!1747411) (not bm!408100) (not b!5515741) (not b!5515475) (not b!5515645) (not bm!408086) (not b_lambda!209131) (not d!1747543) (not bm!408155) (not b!5515802) (not b!5515844) (not b!5515374) (not bm!408169) (not b!5515734) (not bm!408119) (not b!5515395) (not b!5515608) (not d!1747517) (not d!1747429) (not d!1747425) (not b!5515349) (not b!5515535) (not b!5515656) (not d!1747325) (not b!5515370) (not b!5515739) (not b!5515822) (not b_lambda!209133) (not b!5515732) (not b!5515735) (not b!5515826) (not b!5515787) (not b!5515758) (not b!5515579) (not b!5515376) (not bm!408154) (not d!1747427) (not bm!408145) (not b!5515801) (not b!5515628) (not d!1747449) (not b!5515770) (not b!5515667) (not bm!408168) (not bm!408078) (not d!1747405) (not bm!408146) (not d!1747421) (not b!5515820) (not b!5515835) (not b!5515823) (not b!5515319) (not b!5515786) (not d!1747529) (not b!5515573) (not b!5515543) (not d!1747391) (not b!5515568) (not b!5515435) (not b!5515706) (not b!5515446) (not d!1747373) (not d!1747321) (not b!5515804) (not b!5515746) (not b!5515751) (not b!5515839) (not b!5515567) (not b!5515785) (not bm!408178) (not d!1747417) (not d!1747409) (not d!1747499) (not d!1747351) (not b!5515634) (not b!5515765) (not b!5515810) (not b!5515571) (not b_lambda!209069) (not d!1747419) (not b!5515570) (not bm!408121) (not b!5515379) (not bm!408093) (not bm!408151) (not d!1747531) (not b!5515797) (not bm!408179) (not b!5515486) (not b!5515705) (not b_lambda!209129) (not b_lambda!209135) (not bm!408148) (not bm!408095) (not b!5515738) (not b!5515491) (not d!1747347) (not bm!408152) (not bm!408126) (not d!1747541) (not d!1747445) (not b!5515791) (not d!1747525) (not b!5515771) (not d!1747527) (not b!5515749) (not b!5515754) (not b_lambda!209127) (not b!5515662) (not b!5515627) (not b!5515779) (not b!5515609) (not d!1747519) (not bm!408171) (not b!5515690) (not bs!1271302) (not d!1747337) (not bs!1271300) (not d!1747349) (not b!5515843) (not b!5515832) (not b!5515457) (not bm!408163) (not b!5515799) (not b!5515453) (not bs!1271301) (not b!5515326) (not b!5515373) (not b!5515606) (not d!1747457) (not b!5515650) (not b!5515493) (not b!5515753) (not b!5515763) (not d!1747505) (not bm!408120) (not b!5515747) (not b!5515586) (not b!5515335) (not d!1747393) (not b!5515731) (not b!5515372) (not bm!408085) (not b!5515798) (not bm!408091) (not d!1747521) (not d!1747441) (not b!5515613) (not d!1747363) (not d!1747507) (not b!5515750) (not b!5515369) (not b!5515542) (not d!1747483) (not b!5515328) (not b!5515396) (not b!5515774) (not d!1747355) (not b_lambda!209123) (not b!5515455) (not d!1747331) (not bm!408108) (not b!5515697) (not b!5515829) (not b!5515391) (not b!5515696) (not b!5515346) (not bm!408127) (not b!5515474) (not b!5515807) (not b!5515499) (not b!5515759) (not d!1747395) (not bm!408173) (not b!5515575) (not b!5515745) (not b!5515704) (not b!5515527) (not bm!408077) (not d!1747481) (not bm!408088) (not b!5515757) (not bs!1271299) (not b!5515315) (not bm!408144) (not b!5515668) (not d!1747475) (not b_lambda!209125) (not bm!408149) (not b_lambda!209073) (not setNonEmpty!36656) (not b!5515683) (not b!5515611) (not bm!408102) (not bm!408096) (not bm!408162) (not b_lambda!209137) (not bm!408075) (not b!5515602) (not b!5515572) tp_is_empty!40259 (not b!5515536) (not b!5515743) (not b!5515803) (not b!5515485) (not bm!408089) (not b!5515479) (not b!5515591) (not b!5515670) (not b!5515445) (not bs!1271298) (not b!5515742) (not b!5515840) (not bm!408153) (not bm!408177) (not b!5515621) (not b!5515402) (not b!5515777) (not bm!408076) (not b!5515761) (not d!1747451) (not b!5515811) (not d!1747533) (not bm!408160) (not b!5515755) (not d!1747359) (not b!5515795) (not bm!408118) (not b!5515355) (not b!5515834) (not b!5515454) (not b!5515330) (not b!5515498) (not b!5515781) (not b!5515794) (not d!1747549) (not b!5515836) (not b!5515790) (not bm!408079) (not b!5515477) (not b!5515814) (not b!5515615) (not b!5515607) (not b_lambda!209071) (not b!5515830) (not b!5515723) (not b!5515808) (not b!5515773) (not bm!408112) (not b!5515838) (not b!5515612) (not b!5515620) (not b!5515327) (not d!1747447) (not b!5515782) (not b!5515789) (not d!1747455) (not bm!408092) (not d!1747485) (not bm!408084) (not b!5515793) (not d!1747389) (not b!5515287) (not b!5515296) (not b!5515775) (not bm!408164) (not bm!408107) (not b!5515818) (not d!1747333) (not bm!408136) (not b!5515827) (not b!5515815) (not bm!408172) (not b!5515502) (not b!5515377) (not b!5515465) (not d!1747537) (not bm!408094) (not b!5515730) (not b!5515669) (not b!5515783) (not b!5515733) (not b!5515500) (not b!5515767) (not setNonEmpty!36657) (not b!5515413) (not b!5515816) (not b!5515444) (not b!5515842) (not b!5515341) (not b!5515565) (not b!5515766) (not b!5515471) (not b!5515624) (not bm!408161) (not b!5515812) (not b!5515778) (not bm!408114))
(check-sat)

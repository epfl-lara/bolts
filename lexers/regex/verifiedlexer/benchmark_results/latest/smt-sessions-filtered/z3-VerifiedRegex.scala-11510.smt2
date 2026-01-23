; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!629970 () Bool)

(assert start!629970)

(declare-fun b!6359869 () Bool)

(assert (=> b!6359869 true))

(assert (=> b!6359869 true))

(declare-fun lambda!350270 () Int)

(declare-fun lambda!350269 () Int)

(assert (=> b!6359869 (not (= lambda!350270 lambda!350269))))

(assert (=> b!6359869 true))

(assert (=> b!6359869 true))

(declare-fun b!6359881 () Bool)

(assert (=> b!6359881 true))

(declare-fun b!6359866 () Bool)

(declare-datatypes ((Unit!158399 0))(
  ( (Unit!158400) )
))
(declare-fun e!3861920 () Unit!158399)

(declare-fun Unit!158401 () Unit!158399)

(assert (=> b!6359866 (= e!3861920 Unit!158401)))

(declare-datatypes ((C!32804 0))(
  ( (C!32805 (val!26104 Int)) )
))
(declare-datatypes ((List!65100 0))(
  ( (Nil!64976) (Cons!64976 (h!71424 C!32804) (t!378692 List!65100)) )
))
(declare-fun s!2326 () List!65100)

(declare-fun lt!2366633 () Unit!158399)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16267 0))(
  ( (ElementMatch!16267 (c!1157644 C!32804)) (Concat!25112 (regOne!33046 Regex!16267) (regTwo!33046 Regex!16267)) (EmptyExpr!16267) (Star!16267 (reg!16596 Regex!16267)) (EmptyLang!16267) (Union!16267 (regOne!33047 Regex!16267) (regTwo!33047 Regex!16267)) )
))
(declare-datatypes ((List!65101 0))(
  ( (Nil!64977) (Cons!64977 (h!71425 Regex!16267) (t!378693 List!65101)) )
))
(declare-datatypes ((Context!11302 0))(
  ( (Context!11303 (exprs!6151 List!65101)) )
))
(declare-fun lt!2366632 () (InoxSet Context!11302))

(declare-fun lt!2366623 () (InoxSet Context!11302))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1098 ((InoxSet Context!11302) (InoxSet Context!11302) List!65100) Unit!158399)

(assert (=> b!6359866 (= lt!2366633 (lemmaZipperConcatMatchesSameAsBothZippers!1098 lt!2366623 lt!2366632 (t!378692 s!2326)))))

(declare-fun res!2616886 () Bool)

(declare-fun matchZipper!2279 ((InoxSet Context!11302) List!65100) Bool)

(assert (=> b!6359866 (= res!2616886 (matchZipper!2279 lt!2366623 (t!378692 s!2326)))))

(declare-fun e!3861926 () Bool)

(assert (=> b!6359866 (=> res!2616886 e!3861926)))

(assert (=> b!6359866 (= (matchZipper!2279 ((_ map or) lt!2366623 lt!2366632) (t!378692 s!2326)) e!3861926)))

(declare-fun b!6359867 () Bool)

(declare-fun res!2616882 () Bool)

(declare-fun e!3861923 () Bool)

(assert (=> b!6359867 (=> res!2616882 e!3861923)))

(declare-fun r!7292 () Regex!16267)

(declare-datatypes ((List!65102 0))(
  ( (Nil!64978) (Cons!64978 (h!71426 Context!11302) (t!378694 List!65102)) )
))
(declare-fun zl!343 () List!65102)

(declare-fun generalisedConcat!1864 (List!65101) Regex!16267)

(assert (=> b!6359867 (= res!2616882 (not (= r!7292 (generalisedConcat!1864 (exprs!6151 (h!71426 zl!343))))))))

(declare-fun b!6359868 () Bool)

(declare-fun e!3861925 () Bool)

(declare-fun tp!1771205 () Bool)

(assert (=> b!6359868 (= e!3861925 tp!1771205)))

(declare-fun e!3861917 () Bool)

(assert (=> b!6359869 (= e!3861923 e!3861917)))

(declare-fun res!2616895 () Bool)

(assert (=> b!6359869 (=> res!2616895 e!3861917)))

(declare-fun lt!2366624 () Bool)

(declare-fun lt!2366627 () Bool)

(get-info :version)

(assert (=> b!6359869 (= res!2616895 (or (not (= lt!2366624 lt!2366627)) ((_ is Nil!64976) s!2326)))))

(declare-fun Exists!3337 (Int) Bool)

(assert (=> b!6359869 (= (Exists!3337 lambda!350269) (Exists!3337 lambda!350270))))

(declare-fun lt!2366631 () Unit!158399)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1874 (Regex!16267 Regex!16267 List!65100) Unit!158399)

(assert (=> b!6359869 (= lt!2366631 (lemmaExistCutMatchRandMatchRSpecEquivalent!1874 (regOne!33046 r!7292) (regTwo!33046 r!7292) s!2326))))

(assert (=> b!6359869 (= lt!2366627 (Exists!3337 lambda!350269))))

(declare-datatypes ((tuple2!66492 0))(
  ( (tuple2!66493 (_1!36549 List!65100) (_2!36549 List!65100)) )
))
(declare-datatypes ((Option!16158 0))(
  ( (None!16157) (Some!16157 (v!52326 tuple2!66492)) )
))
(declare-fun isDefined!12861 (Option!16158) Bool)

(declare-fun findConcatSeparation!2572 (Regex!16267 Regex!16267 List!65100 List!65100 List!65100) Option!16158)

(assert (=> b!6359869 (= lt!2366627 (isDefined!12861 (findConcatSeparation!2572 (regOne!33046 r!7292) (regTwo!33046 r!7292) Nil!64976 s!2326 s!2326)))))

(declare-fun lt!2366629 () Unit!158399)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2336 (Regex!16267 Regex!16267 List!65100) Unit!158399)

(assert (=> b!6359869 (= lt!2366629 (lemmaFindConcatSeparationEquivalentToExists!2336 (regOne!33046 r!7292) (regTwo!33046 r!7292) s!2326))))

(declare-fun b!6359870 () Bool)

(declare-fun res!2616887 () Bool)

(declare-fun e!3861921 () Bool)

(assert (=> b!6359870 (=> res!2616887 e!3861921)))

(declare-fun e!3861916 () Bool)

(assert (=> b!6359870 (= res!2616887 e!3861916)))

(declare-fun res!2616893 () Bool)

(assert (=> b!6359870 (=> (not res!2616893) (not e!3861916))))

(assert (=> b!6359870 (= res!2616893 ((_ is Concat!25112) (regOne!33046 r!7292)))))

(declare-fun b!6359871 () Bool)

(declare-fun res!2616881 () Bool)

(declare-fun e!3861918 () Bool)

(assert (=> b!6359871 (=> (not res!2616881) (not e!3861918))))

(declare-fun unfocusZipper!2009 (List!65102) Regex!16267)

(assert (=> b!6359871 (= res!2616881 (= r!7292 (unfocusZipper!2009 zl!343)))))

(declare-fun setIsEmpty!43316 () Bool)

(declare-fun setRes!43316 () Bool)

(assert (=> setIsEmpty!43316 setRes!43316))

(declare-fun b!6359872 () Bool)

(declare-fun res!2616889 () Bool)

(assert (=> b!6359872 (=> (not res!2616889) (not e!3861918))))

(declare-fun z!1189 () (InoxSet Context!11302))

(declare-fun toList!10051 ((InoxSet Context!11302)) List!65102)

(assert (=> b!6359872 (= res!2616889 (= (toList!10051 z!1189) zl!343))))

(declare-fun b!6359873 () Bool)

(assert (=> b!6359873 (= e!3861918 (not e!3861923))))

(declare-fun res!2616892 () Bool)

(assert (=> b!6359873 (=> res!2616892 e!3861923)))

(assert (=> b!6359873 (= res!2616892 (not ((_ is Cons!64978) zl!343)))))

(declare-fun matchRSpec!3368 (Regex!16267 List!65100) Bool)

(assert (=> b!6359873 (= lt!2366624 (matchRSpec!3368 r!7292 s!2326))))

(declare-fun matchR!8450 (Regex!16267 List!65100) Bool)

(assert (=> b!6359873 (= lt!2366624 (matchR!8450 r!7292 s!2326))))

(declare-fun lt!2366626 () Unit!158399)

(declare-fun mainMatchTheorem!3368 (Regex!16267 List!65100) Unit!158399)

(assert (=> b!6359873 (= lt!2366626 (mainMatchTheorem!3368 r!7292 s!2326))))

(declare-fun b!6359874 () Bool)

(declare-fun e!3861924 () Bool)

(declare-fun tp_is_empty!41787 () Bool)

(declare-fun tp!1771197 () Bool)

(assert (=> b!6359874 (= e!3861924 (and tp_is_empty!41787 tp!1771197))))

(declare-fun b!6359875 () Bool)

(declare-fun res!2616894 () Bool)

(assert (=> b!6359875 (=> res!2616894 e!3861923)))

(assert (=> b!6359875 (= res!2616894 (or ((_ is EmptyExpr!16267) r!7292) ((_ is EmptyLang!16267) r!7292) ((_ is ElementMatch!16267) r!7292) ((_ is Union!16267) r!7292) (not ((_ is Concat!25112) r!7292))))))

(declare-fun b!6359876 () Bool)

(declare-fun res!2616896 () Bool)

(assert (=> b!6359876 (=> res!2616896 e!3861923)))

(assert (=> b!6359876 (= res!2616896 (not ((_ is Cons!64977) (exprs!6151 (h!71426 zl!343)))))))

(declare-fun b!6359877 () Bool)

(declare-fun e!3861919 () Bool)

(declare-fun tp!1771201 () Bool)

(assert (=> b!6359877 (= e!3861919 tp!1771201)))

(declare-fun b!6359878 () Bool)

(declare-fun res!2616888 () Bool)

(assert (=> b!6359878 (=> res!2616888 e!3861923)))

(declare-fun generalisedUnion!2111 (List!65101) Regex!16267)

(declare-fun unfocusZipperList!1688 (List!65102) List!65101)

(assert (=> b!6359878 (= res!2616888 (not (= r!7292 (generalisedUnion!2111 (unfocusZipperList!1688 zl!343)))))))

(declare-fun b!6359879 () Bool)

(declare-fun nullable!6260 (Regex!16267) Bool)

(assert (=> b!6359879 (= e!3861916 (nullable!6260 (regOne!33046 (regOne!33046 r!7292))))))

(declare-fun b!6359880 () Bool)

(declare-fun inv!83914 (Context!11302) Bool)

(assert (=> b!6359880 (= e!3861921 (inv!83914 (Context!11303 (Cons!64977 (Star!16267 (reg!16596 (regOne!33046 r!7292))) (t!378693 (exprs!6151 (h!71426 zl!343)))))))))

(assert (=> b!6359881 (= e!3861917 e!3861921)))

(declare-fun res!2616884 () Bool)

(assert (=> b!6359881 (=> res!2616884 e!3861921)))

(assert (=> b!6359881 (= res!2616884 (or (and ((_ is ElementMatch!16267) (regOne!33046 r!7292)) (= (c!1157644 (regOne!33046 r!7292)) (h!71424 s!2326))) ((_ is Union!16267) (regOne!33046 r!7292))))))

(declare-fun lt!2366628 () Unit!158399)

(assert (=> b!6359881 (= lt!2366628 e!3861920)))

(declare-fun c!1157643 () Bool)

(assert (=> b!6359881 (= c!1157643 (nullable!6260 (h!71425 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun lambda!350271 () Int)

(declare-fun flatMap!1772 ((InoxSet Context!11302) Int) (InoxSet Context!11302))

(declare-fun derivationStepZipperUp!1441 (Context!11302 C!32804) (InoxSet Context!11302))

(assert (=> b!6359881 (= (flatMap!1772 z!1189 lambda!350271) (derivationStepZipperUp!1441 (h!71426 zl!343) (h!71424 s!2326)))))

(declare-fun lt!2366625 () Unit!158399)

(declare-fun lemmaFlatMapOnSingletonSet!1298 ((InoxSet Context!11302) Context!11302 Int) Unit!158399)

(assert (=> b!6359881 (= lt!2366625 (lemmaFlatMapOnSingletonSet!1298 z!1189 (h!71426 zl!343) lambda!350271))))

(declare-fun lt!2366630 () Context!11302)

(assert (=> b!6359881 (= lt!2366632 (derivationStepZipperUp!1441 lt!2366630 (h!71424 s!2326)))))

(declare-fun derivationStepZipperDown!1515 (Regex!16267 Context!11302 C!32804) (InoxSet Context!11302))

(assert (=> b!6359881 (= lt!2366623 (derivationStepZipperDown!1515 (h!71425 (exprs!6151 (h!71426 zl!343))) lt!2366630 (h!71424 s!2326)))))

(assert (=> b!6359881 (= lt!2366630 (Context!11303 (t!378693 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun lt!2366634 () (InoxSet Context!11302))

(assert (=> b!6359881 (= lt!2366634 (derivationStepZipperUp!1441 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343))))) (h!71424 s!2326)))))

(declare-fun b!6359882 () Bool)

(declare-fun Unit!158402 () Unit!158399)

(assert (=> b!6359882 (= e!3861920 Unit!158402)))

(declare-fun b!6359883 () Bool)

(assert (=> b!6359883 (= e!3861926 (matchZipper!2279 lt!2366632 (t!378692 s!2326)))))

(declare-fun b!6359884 () Bool)

(declare-fun tp!1771199 () Bool)

(declare-fun tp!1771200 () Bool)

(assert (=> b!6359884 (= e!3861925 (and tp!1771199 tp!1771200))))

(declare-fun setNonEmpty!43316 () Bool)

(declare-fun setElem!43316 () Context!11302)

(declare-fun e!3861922 () Bool)

(declare-fun tp!1771204 () Bool)

(assert (=> setNonEmpty!43316 (= setRes!43316 (and tp!1771204 (inv!83914 setElem!43316) e!3861922))))

(declare-fun setRest!43316 () (InoxSet Context!11302))

(assert (=> setNonEmpty!43316 (= z!1189 ((_ map or) (store ((as const (Array Context!11302 Bool)) false) setElem!43316 true) setRest!43316))))

(declare-fun b!6359885 () Bool)

(declare-fun res!2616890 () Bool)

(assert (=> b!6359885 (=> res!2616890 e!3861917)))

(declare-fun isEmpty!37077 (List!65101) Bool)

(assert (=> b!6359885 (= res!2616890 (isEmpty!37077 (t!378693 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun b!6359886 () Bool)

(declare-fun res!2616883 () Bool)

(assert (=> b!6359886 (=> res!2616883 e!3861921)))

(assert (=> b!6359886 (= res!2616883 (or ((_ is Concat!25112) (regOne!33046 r!7292)) (not ((_ is Star!16267) (regOne!33046 r!7292)))))))

(declare-fun tp!1771202 () Bool)

(declare-fun e!3861915 () Bool)

(declare-fun b!6359887 () Bool)

(assert (=> b!6359887 (= e!3861915 (and (inv!83914 (h!71426 zl!343)) e!3861919 tp!1771202))))

(declare-fun res!2616891 () Bool)

(assert (=> start!629970 (=> (not res!2616891) (not e!3861918))))

(declare-fun validRegex!8003 (Regex!16267) Bool)

(assert (=> start!629970 (= res!2616891 (validRegex!8003 r!7292))))

(assert (=> start!629970 e!3861918))

(assert (=> start!629970 e!3861925))

(declare-fun condSetEmpty!43316 () Bool)

(assert (=> start!629970 (= condSetEmpty!43316 (= z!1189 ((as const (Array Context!11302 Bool)) false)))))

(assert (=> start!629970 setRes!43316))

(assert (=> start!629970 e!3861915))

(assert (=> start!629970 e!3861924))

(declare-fun b!6359888 () Bool)

(declare-fun res!2616885 () Bool)

(assert (=> b!6359888 (=> res!2616885 e!3861923)))

(declare-fun isEmpty!37078 (List!65102) Bool)

(assert (=> b!6359888 (= res!2616885 (not (isEmpty!37078 (t!378694 zl!343))))))

(declare-fun b!6359889 () Bool)

(declare-fun tp!1771198 () Bool)

(assert (=> b!6359889 (= e!3861922 tp!1771198)))

(declare-fun b!6359890 () Bool)

(assert (=> b!6359890 (= e!3861925 tp_is_empty!41787)))

(declare-fun b!6359891 () Bool)

(declare-fun tp!1771206 () Bool)

(declare-fun tp!1771203 () Bool)

(assert (=> b!6359891 (= e!3861925 (and tp!1771206 tp!1771203))))

(assert (= (and start!629970 res!2616891) b!6359872))

(assert (= (and b!6359872 res!2616889) b!6359871))

(assert (= (and b!6359871 res!2616881) b!6359873))

(assert (= (and b!6359873 (not res!2616892)) b!6359888))

(assert (= (and b!6359888 (not res!2616885)) b!6359867))

(assert (= (and b!6359867 (not res!2616882)) b!6359876))

(assert (= (and b!6359876 (not res!2616896)) b!6359878))

(assert (= (and b!6359878 (not res!2616888)) b!6359875))

(assert (= (and b!6359875 (not res!2616894)) b!6359869))

(assert (= (and b!6359869 (not res!2616895)) b!6359885))

(assert (= (and b!6359885 (not res!2616890)) b!6359881))

(assert (= (and b!6359881 c!1157643) b!6359866))

(assert (= (and b!6359881 (not c!1157643)) b!6359882))

(assert (= (and b!6359866 (not res!2616886)) b!6359883))

(assert (= (and b!6359881 (not res!2616884)) b!6359870))

(assert (= (and b!6359870 res!2616893) b!6359879))

(assert (= (and b!6359870 (not res!2616887)) b!6359886))

(assert (= (and b!6359886 (not res!2616883)) b!6359880))

(assert (= (and start!629970 ((_ is ElementMatch!16267) r!7292)) b!6359890))

(assert (= (and start!629970 ((_ is Concat!25112) r!7292)) b!6359884))

(assert (= (and start!629970 ((_ is Star!16267) r!7292)) b!6359868))

(assert (= (and start!629970 ((_ is Union!16267) r!7292)) b!6359891))

(assert (= (and start!629970 condSetEmpty!43316) setIsEmpty!43316))

(assert (= (and start!629970 (not condSetEmpty!43316)) setNonEmpty!43316))

(assert (= setNonEmpty!43316 b!6359889))

(assert (= b!6359887 b!6359877))

(assert (= (and start!629970 ((_ is Cons!64978) zl!343)) b!6359887))

(assert (= (and start!629970 ((_ is Cons!64976) s!2326)) b!6359874))

(declare-fun m!7165708 () Bool)

(assert (=> b!6359880 m!7165708))

(declare-fun m!7165710 () Bool)

(assert (=> b!6359872 m!7165710))

(declare-fun m!7165712 () Bool)

(assert (=> b!6359867 m!7165712))

(declare-fun m!7165714 () Bool)

(assert (=> b!6359871 m!7165714))

(declare-fun m!7165716 () Bool)

(assert (=> b!6359883 m!7165716))

(declare-fun m!7165718 () Bool)

(assert (=> b!6359879 m!7165718))

(declare-fun m!7165720 () Bool)

(assert (=> start!629970 m!7165720))

(declare-fun m!7165722 () Bool)

(assert (=> b!6359885 m!7165722))

(declare-fun m!7165724 () Bool)

(assert (=> b!6359888 m!7165724))

(declare-fun m!7165726 () Bool)

(assert (=> b!6359869 m!7165726))

(declare-fun m!7165728 () Bool)

(assert (=> b!6359869 m!7165728))

(declare-fun m!7165730 () Bool)

(assert (=> b!6359869 m!7165730))

(declare-fun m!7165732 () Bool)

(assert (=> b!6359869 m!7165732))

(assert (=> b!6359869 m!7165726))

(declare-fun m!7165734 () Bool)

(assert (=> b!6359869 m!7165734))

(assert (=> b!6359869 m!7165728))

(declare-fun m!7165736 () Bool)

(assert (=> b!6359869 m!7165736))

(declare-fun m!7165738 () Bool)

(assert (=> b!6359873 m!7165738))

(declare-fun m!7165740 () Bool)

(assert (=> b!6359873 m!7165740))

(declare-fun m!7165742 () Bool)

(assert (=> b!6359873 m!7165742))

(declare-fun m!7165744 () Bool)

(assert (=> setNonEmpty!43316 m!7165744))

(declare-fun m!7165746 () Bool)

(assert (=> b!6359881 m!7165746))

(declare-fun m!7165748 () Bool)

(assert (=> b!6359881 m!7165748))

(declare-fun m!7165750 () Bool)

(assert (=> b!6359881 m!7165750))

(declare-fun m!7165752 () Bool)

(assert (=> b!6359881 m!7165752))

(declare-fun m!7165754 () Bool)

(assert (=> b!6359881 m!7165754))

(declare-fun m!7165756 () Bool)

(assert (=> b!6359881 m!7165756))

(declare-fun m!7165758 () Bool)

(assert (=> b!6359881 m!7165758))

(declare-fun m!7165760 () Bool)

(assert (=> b!6359866 m!7165760))

(declare-fun m!7165762 () Bool)

(assert (=> b!6359866 m!7165762))

(declare-fun m!7165764 () Bool)

(assert (=> b!6359866 m!7165764))

(declare-fun m!7165766 () Bool)

(assert (=> b!6359878 m!7165766))

(assert (=> b!6359878 m!7165766))

(declare-fun m!7165768 () Bool)

(assert (=> b!6359878 m!7165768))

(declare-fun m!7165770 () Bool)

(assert (=> b!6359887 m!7165770))

(check-sat (not b!6359880) (not b!6359868) (not b!6359891) (not b!6359879) (not b!6359878) (not b!6359874) (not b!6359877) (not b!6359881) (not b!6359869) (not b!6359888) (not b!6359884) (not b!6359873) (not start!629970) (not b!6359887) (not b!6359883) tp_is_empty!41787 (not b!6359866) (not b!6359872) (not b!6359867) (not setNonEmpty!43316) (not b!6359889) (not b!6359871) (not b!6359885))
(check-sat)
(get-model)

(declare-fun bs!1593865 () Bool)

(declare-fun b!6359983 () Bool)

(assert (= bs!1593865 (and b!6359983 b!6359869)))

(declare-fun lambda!350289 () Int)

(assert (=> bs!1593865 (not (= lambda!350289 lambda!350269))))

(assert (=> bs!1593865 (not (= lambda!350289 lambda!350270))))

(assert (=> b!6359983 true))

(assert (=> b!6359983 true))

(declare-fun bs!1593866 () Bool)

(declare-fun b!6359984 () Bool)

(assert (= bs!1593866 (and b!6359984 b!6359869)))

(declare-fun lambda!350290 () Int)

(assert (=> bs!1593866 (not (= lambda!350290 lambda!350269))))

(assert (=> bs!1593866 (= lambda!350290 lambda!350270)))

(declare-fun bs!1593867 () Bool)

(assert (= bs!1593867 (and b!6359984 b!6359983)))

(assert (=> bs!1593867 (not (= lambda!350290 lambda!350289))))

(assert (=> b!6359984 true))

(assert (=> b!6359984 true))

(declare-fun b!6359980 () Bool)

(declare-fun e!3861974 () Bool)

(assert (=> b!6359980 (= e!3861974 (= s!2326 (Cons!64976 (c!1157644 r!7292) Nil!64976)))))

(declare-fun bm!542550 () Bool)

(declare-fun call!542556 () Bool)

(declare-fun c!1157664 () Bool)

(assert (=> bm!542550 (= call!542556 (Exists!3337 (ite c!1157664 lambda!350289 lambda!350290)))))

(declare-fun b!6359981 () Bool)

(declare-fun res!2616945 () Bool)

(declare-fun e!3861978 () Bool)

(assert (=> b!6359981 (=> res!2616945 e!3861978)))

(declare-fun call!542555 () Bool)

(assert (=> b!6359981 (= res!2616945 call!542555)))

(declare-fun e!3861973 () Bool)

(assert (=> b!6359981 (= e!3861973 e!3861978)))

(declare-fun b!6359982 () Bool)

(declare-fun e!3861976 () Bool)

(assert (=> b!6359982 (= e!3861976 (matchRSpec!3368 (regTwo!33047 r!7292) s!2326))))

(assert (=> b!6359983 (= e!3861978 call!542556)))

(assert (=> b!6359984 (= e!3861973 call!542556)))

(declare-fun b!6359985 () Bool)

(declare-fun c!1157663 () Bool)

(assert (=> b!6359985 (= c!1157663 ((_ is ElementMatch!16267) r!7292))))

(declare-fun e!3861979 () Bool)

(assert (=> b!6359985 (= e!3861979 e!3861974)))

(declare-fun b!6359986 () Bool)

(declare-fun c!1157666 () Bool)

(assert (=> b!6359986 (= c!1157666 ((_ is Union!16267) r!7292))))

(declare-fun e!3861977 () Bool)

(assert (=> b!6359986 (= e!3861974 e!3861977)))

(declare-fun b!6359987 () Bool)

(declare-fun e!3861975 () Bool)

(assert (=> b!6359987 (= e!3861975 e!3861979)))

(declare-fun res!2616944 () Bool)

(assert (=> b!6359987 (= res!2616944 (not ((_ is EmptyLang!16267) r!7292)))))

(assert (=> b!6359987 (=> (not res!2616944) (not e!3861979))))

(declare-fun b!6359988 () Bool)

(assert (=> b!6359988 (= e!3861977 e!3861973)))

(assert (=> b!6359988 (= c!1157664 ((_ is Star!16267) r!7292))))

(declare-fun b!6359989 () Bool)

(assert (=> b!6359989 (= e!3861975 call!542555)))

(declare-fun b!6359990 () Bool)

(assert (=> b!6359990 (= e!3861977 e!3861976)))

(declare-fun res!2616943 () Bool)

(assert (=> b!6359990 (= res!2616943 (matchRSpec!3368 (regOne!33047 r!7292) s!2326))))

(assert (=> b!6359990 (=> res!2616943 e!3861976)))

(declare-fun d!1995297 () Bool)

(declare-fun c!1157665 () Bool)

(assert (=> d!1995297 (= c!1157665 ((_ is EmptyExpr!16267) r!7292))))

(assert (=> d!1995297 (= (matchRSpec!3368 r!7292 s!2326) e!3861975)))

(declare-fun bm!542551 () Bool)

(declare-fun isEmpty!37081 (List!65100) Bool)

(assert (=> bm!542551 (= call!542555 (isEmpty!37081 s!2326))))

(assert (= (and d!1995297 c!1157665) b!6359989))

(assert (= (and d!1995297 (not c!1157665)) b!6359987))

(assert (= (and b!6359987 res!2616944) b!6359985))

(assert (= (and b!6359985 c!1157663) b!6359980))

(assert (= (and b!6359985 (not c!1157663)) b!6359986))

(assert (= (and b!6359986 c!1157666) b!6359990))

(assert (= (and b!6359986 (not c!1157666)) b!6359988))

(assert (= (and b!6359990 (not res!2616943)) b!6359982))

(assert (= (and b!6359988 c!1157664) b!6359981))

(assert (= (and b!6359988 (not c!1157664)) b!6359984))

(assert (= (and b!6359981 (not res!2616945)) b!6359983))

(assert (= (or b!6359983 b!6359984) bm!542550))

(assert (= (or b!6359989 b!6359981) bm!542551))

(declare-fun m!7165836 () Bool)

(assert (=> bm!542550 m!7165836))

(declare-fun m!7165838 () Bool)

(assert (=> b!6359982 m!7165838))

(declare-fun m!7165840 () Bool)

(assert (=> b!6359990 m!7165840))

(declare-fun m!7165842 () Bool)

(assert (=> bm!542551 m!7165842))

(assert (=> b!6359873 d!1995297))

(declare-fun b!6360113 () Bool)

(declare-fun e!3862051 () Bool)

(declare-fun derivativeStep!4972 (Regex!16267 C!32804) Regex!16267)

(declare-fun head!13026 (List!65100) C!32804)

(declare-fun tail!12111 (List!65100) List!65100)

(assert (=> b!6360113 (= e!3862051 (matchR!8450 (derivativeStep!4972 r!7292 (head!13026 s!2326)) (tail!12111 s!2326)))))

(declare-fun b!6360114 () Bool)

(declare-fun e!3862053 () Bool)

(declare-fun e!3862052 () Bool)

(assert (=> b!6360114 (= e!3862053 e!3862052)))

(declare-fun res!2616987 () Bool)

(assert (=> b!6360114 (=> (not res!2616987) (not e!3862052))))

(declare-fun lt!2366664 () Bool)

(assert (=> b!6360114 (= res!2616987 (not lt!2366664))))

(declare-fun b!6360115 () Bool)

(declare-fun e!3862050 () Bool)

(assert (=> b!6360115 (= e!3862050 (not (= (head!13026 s!2326) (c!1157644 r!7292))))))

(declare-fun b!6360116 () Bool)

(declare-fun e!3862054 () Bool)

(declare-fun e!3862055 () Bool)

(assert (=> b!6360116 (= e!3862054 e!3862055)))

(declare-fun c!1157708 () Bool)

(assert (=> b!6360116 (= c!1157708 ((_ is EmptyLang!16267) r!7292))))

(declare-fun bm!542554 () Bool)

(declare-fun call!542559 () Bool)

(assert (=> bm!542554 (= call!542559 (isEmpty!37081 s!2326))))

(declare-fun b!6360117 () Bool)

(assert (=> b!6360117 (= e!3862051 (nullable!6260 r!7292))))

(declare-fun b!6360118 () Bool)

(declare-fun e!3862049 () Bool)

(assert (=> b!6360118 (= e!3862049 (= (head!13026 s!2326) (c!1157644 r!7292)))))

(declare-fun b!6360119 () Bool)

(declare-fun res!2616986 () Bool)

(assert (=> b!6360119 (=> (not res!2616986) (not e!3862049))))

(assert (=> b!6360119 (= res!2616986 (not call!542559))))

(declare-fun b!6360120 () Bool)

(declare-fun res!2616988 () Bool)

(assert (=> b!6360120 (=> (not res!2616988) (not e!3862049))))

(assert (=> b!6360120 (= res!2616988 (isEmpty!37081 (tail!12111 s!2326)))))

(declare-fun b!6360121 () Bool)

(declare-fun res!2616990 () Bool)

(assert (=> b!6360121 (=> res!2616990 e!3862050)))

(assert (=> b!6360121 (= res!2616990 (not (isEmpty!37081 (tail!12111 s!2326))))))

(declare-fun b!6360122 () Bool)

(assert (=> b!6360122 (= e!3862052 e!3862050)))

(declare-fun res!2616991 () Bool)

(assert (=> b!6360122 (=> res!2616991 e!3862050)))

(assert (=> b!6360122 (= res!2616991 call!542559)))

(declare-fun b!6360123 () Bool)

(declare-fun res!2616989 () Bool)

(assert (=> b!6360123 (=> res!2616989 e!3862053)))

(assert (=> b!6360123 (= res!2616989 e!3862049)))

(declare-fun res!2616992 () Bool)

(assert (=> b!6360123 (=> (not res!2616992) (not e!3862049))))

(assert (=> b!6360123 (= res!2616992 lt!2366664)))

(declare-fun b!6360124 () Bool)

(assert (=> b!6360124 (= e!3862054 (= lt!2366664 call!542559))))

(declare-fun d!1995317 () Bool)

(assert (=> d!1995317 e!3862054))

(declare-fun c!1157710 () Bool)

(assert (=> d!1995317 (= c!1157710 ((_ is EmptyExpr!16267) r!7292))))

(assert (=> d!1995317 (= lt!2366664 e!3862051)))

(declare-fun c!1157709 () Bool)

(assert (=> d!1995317 (= c!1157709 (isEmpty!37081 s!2326))))

(assert (=> d!1995317 (validRegex!8003 r!7292)))

(assert (=> d!1995317 (= (matchR!8450 r!7292 s!2326) lt!2366664)))

(declare-fun b!6360125 () Bool)

(declare-fun res!2616993 () Bool)

(assert (=> b!6360125 (=> res!2616993 e!3862053)))

(assert (=> b!6360125 (= res!2616993 (not ((_ is ElementMatch!16267) r!7292)))))

(assert (=> b!6360125 (= e!3862055 e!3862053)))

(declare-fun b!6360126 () Bool)

(assert (=> b!6360126 (= e!3862055 (not lt!2366664))))

(assert (= (and d!1995317 c!1157709) b!6360117))

(assert (= (and d!1995317 (not c!1157709)) b!6360113))

(assert (= (and d!1995317 c!1157710) b!6360124))

(assert (= (and d!1995317 (not c!1157710)) b!6360116))

(assert (= (and b!6360116 c!1157708) b!6360126))

(assert (= (and b!6360116 (not c!1157708)) b!6360125))

(assert (= (and b!6360125 (not res!2616993)) b!6360123))

(assert (= (and b!6360123 res!2616992) b!6360119))

(assert (= (and b!6360119 res!2616986) b!6360120))

(assert (= (and b!6360120 res!2616988) b!6360118))

(assert (= (and b!6360123 (not res!2616989)) b!6360114))

(assert (= (and b!6360114 res!2616987) b!6360122))

(assert (= (and b!6360122 (not res!2616991)) b!6360121))

(assert (= (and b!6360121 (not res!2616990)) b!6360115))

(assert (= (or b!6360124 b!6360119 b!6360122) bm!542554))

(assert (=> d!1995317 m!7165842))

(assert (=> d!1995317 m!7165720))

(declare-fun m!7165886 () Bool)

(assert (=> b!6360117 m!7165886))

(assert (=> bm!542554 m!7165842))

(declare-fun m!7165888 () Bool)

(assert (=> b!6360120 m!7165888))

(assert (=> b!6360120 m!7165888))

(declare-fun m!7165890 () Bool)

(assert (=> b!6360120 m!7165890))

(declare-fun m!7165892 () Bool)

(assert (=> b!6360115 m!7165892))

(assert (=> b!6360118 m!7165892))

(assert (=> b!6360121 m!7165888))

(assert (=> b!6360121 m!7165888))

(assert (=> b!6360121 m!7165890))

(assert (=> b!6360113 m!7165892))

(assert (=> b!6360113 m!7165892))

(declare-fun m!7165894 () Bool)

(assert (=> b!6360113 m!7165894))

(assert (=> b!6360113 m!7165888))

(assert (=> b!6360113 m!7165894))

(assert (=> b!6360113 m!7165888))

(declare-fun m!7165896 () Bool)

(assert (=> b!6360113 m!7165896))

(assert (=> b!6359873 d!1995317))

(declare-fun d!1995327 () Bool)

(assert (=> d!1995327 (= (matchR!8450 r!7292 s!2326) (matchRSpec!3368 r!7292 s!2326))))

(declare-fun lt!2366667 () Unit!158399)

(declare-fun choose!47225 (Regex!16267 List!65100) Unit!158399)

(assert (=> d!1995327 (= lt!2366667 (choose!47225 r!7292 s!2326))))

(assert (=> d!1995327 (validRegex!8003 r!7292)))

(assert (=> d!1995327 (= (mainMatchTheorem!3368 r!7292 s!2326) lt!2366667)))

(declare-fun bs!1593884 () Bool)

(assert (= bs!1593884 d!1995327))

(assert (=> bs!1593884 m!7165740))

(assert (=> bs!1593884 m!7165738))

(declare-fun m!7165906 () Bool)

(assert (=> bs!1593884 m!7165906))

(assert (=> bs!1593884 m!7165720))

(assert (=> b!6359873 d!1995327))

(declare-fun bm!542570 () Bool)

(declare-fun call!542575 () Bool)

(declare-fun call!542577 () Bool)

(assert (=> bm!542570 (= call!542575 call!542577)))

(declare-fun b!6360202 () Bool)

(declare-fun e!3862104 () Bool)

(declare-fun e!3862105 () Bool)

(assert (=> b!6360202 (= e!3862104 e!3862105)))

(declare-fun res!2617039 () Bool)

(assert (=> b!6360202 (= res!2617039 (not (nullable!6260 (reg!16596 r!7292))))))

(assert (=> b!6360202 (=> (not res!2617039) (not e!3862105))))

(declare-fun b!6360203 () Bool)

(declare-fun e!3862101 () Bool)

(assert (=> b!6360203 (= e!3862101 call!542575)))

(declare-fun b!6360204 () Bool)

(declare-fun res!2617035 () Bool)

(assert (=> b!6360204 (=> (not res!2617035) (not e!3862101))))

(declare-fun call!542576 () Bool)

(assert (=> b!6360204 (= res!2617035 call!542576)))

(declare-fun e!3862102 () Bool)

(assert (=> b!6360204 (= e!3862102 e!3862101)))

(declare-fun b!6360205 () Bool)

(declare-fun e!3862103 () Bool)

(assert (=> b!6360205 (= e!3862103 e!3862104)))

(declare-fun c!1157728 () Bool)

(assert (=> b!6360205 (= c!1157728 ((_ is Star!16267) r!7292))))

(declare-fun d!1995331 () Bool)

(declare-fun res!2617038 () Bool)

(assert (=> d!1995331 (=> res!2617038 e!3862103)))

(assert (=> d!1995331 (= res!2617038 ((_ is ElementMatch!16267) r!7292))))

(assert (=> d!1995331 (= (validRegex!8003 r!7292) e!3862103)))

(declare-fun b!6360206 () Bool)

(declare-fun e!3862100 () Bool)

(assert (=> b!6360206 (= e!3862100 call!542575)))

(declare-fun b!6360207 () Bool)

(declare-fun e!3862106 () Bool)

(assert (=> b!6360207 (= e!3862106 e!3862100)))

(declare-fun res!2617036 () Bool)

(assert (=> b!6360207 (=> (not res!2617036) (not e!3862100))))

(assert (=> b!6360207 (= res!2617036 call!542576)))

(declare-fun b!6360208 () Bool)

(assert (=> b!6360208 (= e!3862104 e!3862102)))

(declare-fun c!1157729 () Bool)

(assert (=> b!6360208 (= c!1157729 ((_ is Union!16267) r!7292))))

(declare-fun bm!542571 () Bool)

(assert (=> bm!542571 (= call!542577 (validRegex!8003 (ite c!1157728 (reg!16596 r!7292) (ite c!1157729 (regTwo!33047 r!7292) (regTwo!33046 r!7292)))))))

(declare-fun b!6360209 () Bool)

(declare-fun res!2617037 () Bool)

(assert (=> b!6360209 (=> res!2617037 e!3862106)))

(assert (=> b!6360209 (= res!2617037 (not ((_ is Concat!25112) r!7292)))))

(assert (=> b!6360209 (= e!3862102 e!3862106)))

(declare-fun b!6360210 () Bool)

(assert (=> b!6360210 (= e!3862105 call!542577)))

(declare-fun bm!542572 () Bool)

(assert (=> bm!542572 (= call!542576 (validRegex!8003 (ite c!1157729 (regOne!33047 r!7292) (regOne!33046 r!7292))))))

(assert (= (and d!1995331 (not res!2617038)) b!6360205))

(assert (= (and b!6360205 c!1157728) b!6360202))

(assert (= (and b!6360205 (not c!1157728)) b!6360208))

(assert (= (and b!6360202 res!2617039) b!6360210))

(assert (= (and b!6360208 c!1157729) b!6360204))

(assert (= (and b!6360208 (not c!1157729)) b!6360209))

(assert (= (and b!6360204 res!2617035) b!6360203))

(assert (= (and b!6360209 (not res!2617037)) b!6360207))

(assert (= (and b!6360207 res!2617036) b!6360206))

(assert (= (or b!6360203 b!6360206) bm!542570))

(assert (= (or b!6360204 b!6360207) bm!542572))

(assert (= (or b!6360210 bm!542570) bm!542571))

(declare-fun m!7165922 () Bool)

(assert (=> b!6360202 m!7165922))

(declare-fun m!7165924 () Bool)

(assert (=> bm!542571 m!7165924))

(declare-fun m!7165926 () Bool)

(assert (=> bm!542572 m!7165926))

(assert (=> start!629970 d!1995331))

(declare-fun d!1995339 () Bool)

(declare-fun c!1157737 () Bool)

(assert (=> d!1995339 (= c!1157737 (isEmpty!37081 (t!378692 s!2326)))))

(declare-fun e!3862119 () Bool)

(assert (=> d!1995339 (= (matchZipper!2279 lt!2366632 (t!378692 s!2326)) e!3862119)))

(declare-fun b!6360230 () Bool)

(declare-fun nullableZipper!2033 ((InoxSet Context!11302)) Bool)

(assert (=> b!6360230 (= e!3862119 (nullableZipper!2033 lt!2366632))))

(declare-fun b!6360231 () Bool)

(declare-fun derivationStepZipper!2233 ((InoxSet Context!11302) C!32804) (InoxSet Context!11302))

(assert (=> b!6360231 (= e!3862119 (matchZipper!2279 (derivationStepZipper!2233 lt!2366632 (head!13026 (t!378692 s!2326))) (tail!12111 (t!378692 s!2326))))))

(assert (= (and d!1995339 c!1157737) b!6360230))

(assert (= (and d!1995339 (not c!1157737)) b!6360231))

(declare-fun m!7165944 () Bool)

(assert (=> d!1995339 m!7165944))

(declare-fun m!7165946 () Bool)

(assert (=> b!6360230 m!7165946))

(declare-fun m!7165948 () Bool)

(assert (=> b!6360231 m!7165948))

(assert (=> b!6360231 m!7165948))

(declare-fun m!7165950 () Bool)

(assert (=> b!6360231 m!7165950))

(declare-fun m!7165952 () Bool)

(assert (=> b!6360231 m!7165952))

(assert (=> b!6360231 m!7165950))

(assert (=> b!6360231 m!7165952))

(declare-fun m!7165954 () Bool)

(assert (=> b!6360231 m!7165954))

(assert (=> b!6359883 d!1995339))

(declare-fun d!1995349 () Bool)

(declare-fun e!3862128 () Bool)

(assert (=> d!1995349 e!3862128))

(declare-fun res!2617049 () Bool)

(assert (=> d!1995349 (=> (not res!2617049) (not e!3862128))))

(declare-fun lt!2366682 () List!65102)

(declare-fun noDuplicate!2097 (List!65102) Bool)

(assert (=> d!1995349 (= res!2617049 (noDuplicate!2097 lt!2366682))))

(declare-fun choose!47228 ((InoxSet Context!11302)) List!65102)

(assert (=> d!1995349 (= lt!2366682 (choose!47228 z!1189))))

(assert (=> d!1995349 (= (toList!10051 z!1189) lt!2366682)))

(declare-fun b!6360244 () Bool)

(declare-fun content!12270 (List!65102) (InoxSet Context!11302))

(assert (=> b!6360244 (= e!3862128 (= (content!12270 lt!2366682) z!1189))))

(assert (= (and d!1995349 res!2617049) b!6360244))

(declare-fun m!7165968 () Bool)

(assert (=> d!1995349 m!7165968))

(declare-fun m!7165970 () Bool)

(assert (=> d!1995349 m!7165970))

(declare-fun m!7165972 () Bool)

(assert (=> b!6360244 m!7165972))

(assert (=> b!6359872 d!1995349))

(declare-fun d!1995355 () Bool)

(declare-fun e!3862149 () Bool)

(assert (=> d!1995355 (= (matchZipper!2279 ((_ map or) lt!2366623 lt!2366632) (t!378692 s!2326)) e!3862149)))

(declare-fun res!2617055 () Bool)

(assert (=> d!1995355 (=> res!2617055 e!3862149)))

(assert (=> d!1995355 (= res!2617055 (matchZipper!2279 lt!2366623 (t!378692 s!2326)))))

(declare-fun lt!2366685 () Unit!158399)

(declare-fun choose!47229 ((InoxSet Context!11302) (InoxSet Context!11302) List!65100) Unit!158399)

(assert (=> d!1995355 (= lt!2366685 (choose!47229 lt!2366623 lt!2366632 (t!378692 s!2326)))))

(assert (=> d!1995355 (= (lemmaZipperConcatMatchesSameAsBothZippers!1098 lt!2366623 lt!2366632 (t!378692 s!2326)) lt!2366685)))

(declare-fun b!6360280 () Bool)

(assert (=> b!6360280 (= e!3862149 (matchZipper!2279 lt!2366632 (t!378692 s!2326)))))

(assert (= (and d!1995355 (not res!2617055)) b!6360280))

(assert (=> d!1995355 m!7165764))

(assert (=> d!1995355 m!7165762))

(declare-fun m!7165974 () Bool)

(assert (=> d!1995355 m!7165974))

(assert (=> b!6360280 m!7165716))

(assert (=> b!6359866 d!1995355))

(declare-fun d!1995357 () Bool)

(declare-fun c!1157757 () Bool)

(assert (=> d!1995357 (= c!1157757 (isEmpty!37081 (t!378692 s!2326)))))

(declare-fun e!3862150 () Bool)

(assert (=> d!1995357 (= (matchZipper!2279 lt!2366623 (t!378692 s!2326)) e!3862150)))

(declare-fun b!6360281 () Bool)

(assert (=> b!6360281 (= e!3862150 (nullableZipper!2033 lt!2366623))))

(declare-fun b!6360282 () Bool)

(assert (=> b!6360282 (= e!3862150 (matchZipper!2279 (derivationStepZipper!2233 lt!2366623 (head!13026 (t!378692 s!2326))) (tail!12111 (t!378692 s!2326))))))

(assert (= (and d!1995357 c!1157757) b!6360281))

(assert (= (and d!1995357 (not c!1157757)) b!6360282))

(assert (=> d!1995357 m!7165944))

(declare-fun m!7165982 () Bool)

(assert (=> b!6360281 m!7165982))

(assert (=> b!6360282 m!7165948))

(assert (=> b!6360282 m!7165948))

(declare-fun m!7165988 () Bool)

(assert (=> b!6360282 m!7165988))

(assert (=> b!6360282 m!7165952))

(assert (=> b!6360282 m!7165988))

(assert (=> b!6360282 m!7165952))

(declare-fun m!7165990 () Bool)

(assert (=> b!6360282 m!7165990))

(assert (=> b!6359866 d!1995357))

(declare-fun d!1995361 () Bool)

(declare-fun c!1157760 () Bool)

(assert (=> d!1995361 (= c!1157760 (isEmpty!37081 (t!378692 s!2326)))))

(declare-fun e!3862154 () Bool)

(assert (=> d!1995361 (= (matchZipper!2279 ((_ map or) lt!2366623 lt!2366632) (t!378692 s!2326)) e!3862154)))

(declare-fun b!6360288 () Bool)

(assert (=> b!6360288 (= e!3862154 (nullableZipper!2033 ((_ map or) lt!2366623 lt!2366632)))))

(declare-fun b!6360289 () Bool)

(assert (=> b!6360289 (= e!3862154 (matchZipper!2279 (derivationStepZipper!2233 ((_ map or) lt!2366623 lt!2366632) (head!13026 (t!378692 s!2326))) (tail!12111 (t!378692 s!2326))))))

(assert (= (and d!1995361 c!1157760) b!6360288))

(assert (= (and d!1995361 (not c!1157760)) b!6360289))

(assert (=> d!1995361 m!7165944))

(declare-fun m!7165996 () Bool)

(assert (=> b!6360288 m!7165996))

(assert (=> b!6360289 m!7165948))

(assert (=> b!6360289 m!7165948))

(declare-fun m!7165998 () Bool)

(assert (=> b!6360289 m!7165998))

(assert (=> b!6360289 m!7165952))

(assert (=> b!6360289 m!7165998))

(assert (=> b!6360289 m!7165952))

(declare-fun m!7166000 () Bool)

(assert (=> b!6360289 m!7166000))

(assert (=> b!6359866 d!1995361))

(declare-fun d!1995365 () Bool)

(assert (=> d!1995365 (= (isEmpty!37077 (t!378693 (exprs!6151 (h!71426 zl!343)))) ((_ is Nil!64977) (t!378693 (exprs!6151 (h!71426 zl!343)))))))

(assert (=> b!6359885 d!1995365))

(declare-fun d!1995367 () Bool)

(declare-fun lambda!350309 () Int)

(declare-fun forall!15445 (List!65101 Int) Bool)

(assert (=> d!1995367 (= (inv!83914 setElem!43316) (forall!15445 (exprs!6151 setElem!43316) lambda!350309))))

(declare-fun bs!1593896 () Bool)

(assert (= bs!1593896 d!1995367))

(declare-fun m!7166012 () Bool)

(assert (=> bs!1593896 m!7166012))

(assert (=> setNonEmpty!43316 d!1995367))

(declare-fun b!6360389 () Bool)

(declare-fun lt!2366696 () Unit!158399)

(declare-fun lt!2366697 () Unit!158399)

(assert (=> b!6360389 (= lt!2366696 lt!2366697)))

(declare-fun ++!14336 (List!65100 List!65100) List!65100)

(assert (=> b!6360389 (= (++!14336 (++!14336 Nil!64976 (Cons!64976 (h!71424 s!2326) Nil!64976)) (t!378692 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2431 (List!65100 C!32804 List!65100 List!65100) Unit!158399)

(assert (=> b!6360389 (= lt!2366697 (lemmaMoveElementToOtherListKeepsConcatEq!2431 Nil!64976 (h!71424 s!2326) (t!378692 s!2326) s!2326))))

(declare-fun e!3862211 () Option!16158)

(assert (=> b!6360389 (= e!3862211 (findConcatSeparation!2572 (regOne!33046 r!7292) (regTwo!33046 r!7292) (++!14336 Nil!64976 (Cons!64976 (h!71424 s!2326) Nil!64976)) (t!378692 s!2326) s!2326))))

(declare-fun b!6360390 () Bool)

(declare-fun res!2617084 () Bool)

(declare-fun e!3862210 () Bool)

(assert (=> b!6360390 (=> (not res!2617084) (not e!3862210))))

(declare-fun lt!2366695 () Option!16158)

(declare-fun get!22485 (Option!16158) tuple2!66492)

(assert (=> b!6360390 (= res!2617084 (matchR!8450 (regTwo!33046 r!7292) (_2!36549 (get!22485 lt!2366695))))))

(declare-fun b!6360391 () Bool)

(declare-fun e!3862209 () Bool)

(assert (=> b!6360391 (= e!3862209 (matchR!8450 (regTwo!33046 r!7292) s!2326))))

(declare-fun b!6360392 () Bool)

(declare-fun e!3862213 () Option!16158)

(assert (=> b!6360392 (= e!3862213 e!3862211)))

(declare-fun c!1157771 () Bool)

(assert (=> b!6360392 (= c!1157771 ((_ is Nil!64976) s!2326))))

(declare-fun b!6360393 () Bool)

(declare-fun e!3862212 () Bool)

(assert (=> b!6360393 (= e!3862212 (not (isDefined!12861 lt!2366695)))))

(declare-fun b!6360395 () Bool)

(assert (=> b!6360395 (= e!3862211 None!16157)))

(declare-fun b!6360396 () Bool)

(assert (=> b!6360396 (= e!3862213 (Some!16157 (tuple2!66493 Nil!64976 s!2326)))))

(declare-fun b!6360397 () Bool)

(assert (=> b!6360397 (= e!3862210 (= (++!14336 (_1!36549 (get!22485 lt!2366695)) (_2!36549 (get!22485 lt!2366695))) s!2326))))

(declare-fun b!6360394 () Bool)

(declare-fun res!2617082 () Bool)

(assert (=> b!6360394 (=> (not res!2617082) (not e!3862210))))

(assert (=> b!6360394 (= res!2617082 (matchR!8450 (regOne!33046 r!7292) (_1!36549 (get!22485 lt!2366695))))))

(declare-fun d!1995375 () Bool)

(assert (=> d!1995375 e!3862212))

(declare-fun res!2617086 () Bool)

(assert (=> d!1995375 (=> res!2617086 e!3862212)))

(assert (=> d!1995375 (= res!2617086 e!3862210)))

(declare-fun res!2617085 () Bool)

(assert (=> d!1995375 (=> (not res!2617085) (not e!3862210))))

(assert (=> d!1995375 (= res!2617085 (isDefined!12861 lt!2366695))))

(assert (=> d!1995375 (= lt!2366695 e!3862213)))

(declare-fun c!1157772 () Bool)

(assert (=> d!1995375 (= c!1157772 e!3862209)))

(declare-fun res!2617083 () Bool)

(assert (=> d!1995375 (=> (not res!2617083) (not e!3862209))))

(assert (=> d!1995375 (= res!2617083 (matchR!8450 (regOne!33046 r!7292) Nil!64976))))

(assert (=> d!1995375 (validRegex!8003 (regOne!33046 r!7292))))

(assert (=> d!1995375 (= (findConcatSeparation!2572 (regOne!33046 r!7292) (regTwo!33046 r!7292) Nil!64976 s!2326 s!2326) lt!2366695)))

(assert (= (and d!1995375 res!2617083) b!6360391))

(assert (= (and d!1995375 c!1157772) b!6360396))

(assert (= (and d!1995375 (not c!1157772)) b!6360392))

(assert (= (and b!6360392 c!1157771) b!6360395))

(assert (= (and b!6360392 (not c!1157771)) b!6360389))

(assert (= (and d!1995375 res!2617085) b!6360394))

(assert (= (and b!6360394 res!2617082) b!6360390))

(assert (= (and b!6360390 res!2617084) b!6360397))

(assert (= (and d!1995375 (not res!2617086)) b!6360393))

(declare-fun m!7166026 () Bool)

(assert (=> b!6360391 m!7166026))

(declare-fun m!7166028 () Bool)

(assert (=> b!6360390 m!7166028))

(declare-fun m!7166030 () Bool)

(assert (=> b!6360390 m!7166030))

(declare-fun m!7166032 () Bool)

(assert (=> b!6360393 m!7166032))

(assert (=> b!6360397 m!7166028))

(declare-fun m!7166034 () Bool)

(assert (=> b!6360397 m!7166034))

(declare-fun m!7166036 () Bool)

(assert (=> b!6360389 m!7166036))

(assert (=> b!6360389 m!7166036))

(declare-fun m!7166038 () Bool)

(assert (=> b!6360389 m!7166038))

(declare-fun m!7166040 () Bool)

(assert (=> b!6360389 m!7166040))

(assert (=> b!6360389 m!7166036))

(declare-fun m!7166042 () Bool)

(assert (=> b!6360389 m!7166042))

(assert (=> b!6360394 m!7166028))

(declare-fun m!7166044 () Bool)

(assert (=> b!6360394 m!7166044))

(assert (=> d!1995375 m!7166032))

(declare-fun m!7166046 () Bool)

(assert (=> d!1995375 m!7166046))

(declare-fun m!7166048 () Bool)

(assert (=> d!1995375 m!7166048))

(assert (=> b!6359869 d!1995375))

(declare-fun d!1995381 () Bool)

(declare-fun choose!47230 (Int) Bool)

(assert (=> d!1995381 (= (Exists!3337 lambda!350269) (choose!47230 lambda!350269))))

(declare-fun bs!1593899 () Bool)

(assert (= bs!1593899 d!1995381))

(declare-fun m!7166050 () Bool)

(assert (=> bs!1593899 m!7166050))

(assert (=> b!6359869 d!1995381))

(declare-fun d!1995383 () Bool)

(assert (=> d!1995383 (= (Exists!3337 lambda!350270) (choose!47230 lambda!350270))))

(declare-fun bs!1593900 () Bool)

(assert (= bs!1593900 d!1995383))

(declare-fun m!7166052 () Bool)

(assert (=> bs!1593900 m!7166052))

(assert (=> b!6359869 d!1995383))

(declare-fun bs!1593901 () Bool)

(declare-fun d!1995385 () Bool)

(assert (= bs!1593901 (and d!1995385 b!6359869)))

(declare-fun lambda!350312 () Int)

(assert (=> bs!1593901 (= lambda!350312 lambda!350269)))

(assert (=> bs!1593901 (not (= lambda!350312 lambda!350270))))

(declare-fun bs!1593902 () Bool)

(assert (= bs!1593902 (and d!1995385 b!6359983)))

(assert (=> bs!1593902 (not (= lambda!350312 lambda!350289))))

(declare-fun bs!1593903 () Bool)

(assert (= bs!1593903 (and d!1995385 b!6359984)))

(assert (=> bs!1593903 (not (= lambda!350312 lambda!350290))))

(assert (=> d!1995385 true))

(assert (=> d!1995385 true))

(assert (=> d!1995385 true))

(assert (=> d!1995385 (= (isDefined!12861 (findConcatSeparation!2572 (regOne!33046 r!7292) (regTwo!33046 r!7292) Nil!64976 s!2326 s!2326)) (Exists!3337 lambda!350312))))

(declare-fun lt!2366700 () Unit!158399)

(declare-fun choose!47231 (Regex!16267 Regex!16267 List!65100) Unit!158399)

(assert (=> d!1995385 (= lt!2366700 (choose!47231 (regOne!33046 r!7292) (regTwo!33046 r!7292) s!2326))))

(assert (=> d!1995385 (validRegex!8003 (regOne!33046 r!7292))))

(assert (=> d!1995385 (= (lemmaFindConcatSeparationEquivalentToExists!2336 (regOne!33046 r!7292) (regTwo!33046 r!7292) s!2326) lt!2366700)))

(declare-fun bs!1593904 () Bool)

(assert (= bs!1593904 d!1995385))

(declare-fun m!7166054 () Bool)

(assert (=> bs!1593904 m!7166054))

(declare-fun m!7166056 () Bool)

(assert (=> bs!1593904 m!7166056))

(assert (=> bs!1593904 m!7166048))

(assert (=> bs!1593904 m!7165728))

(assert (=> bs!1593904 m!7165730))

(assert (=> bs!1593904 m!7165728))

(assert (=> b!6359869 d!1995385))

(declare-fun bs!1593905 () Bool)

(declare-fun d!1995387 () Bool)

(assert (= bs!1593905 (and d!1995387 b!6359983)))

(declare-fun lambda!350317 () Int)

(assert (=> bs!1593905 (not (= lambda!350317 lambda!350289))))

(declare-fun bs!1593906 () Bool)

(assert (= bs!1593906 (and d!1995387 b!6359869)))

(assert (=> bs!1593906 (not (= lambda!350317 lambda!350270))))

(assert (=> bs!1593906 (= lambda!350317 lambda!350269)))

(declare-fun bs!1593907 () Bool)

(assert (= bs!1593907 (and d!1995387 b!6359984)))

(assert (=> bs!1593907 (not (= lambda!350317 lambda!350290))))

(declare-fun bs!1593908 () Bool)

(assert (= bs!1593908 (and d!1995387 d!1995385)))

(assert (=> bs!1593908 (= lambda!350317 lambda!350312)))

(assert (=> d!1995387 true))

(assert (=> d!1995387 true))

(assert (=> d!1995387 true))

(declare-fun bs!1593909 () Bool)

(assert (= bs!1593909 d!1995387))

(declare-fun lambda!350318 () Int)

(assert (=> bs!1593909 (not (= lambda!350318 lambda!350317))))

(assert (=> bs!1593905 (not (= lambda!350318 lambda!350289))))

(assert (=> bs!1593906 (= lambda!350318 lambda!350270)))

(assert (=> bs!1593906 (not (= lambda!350318 lambda!350269))))

(assert (=> bs!1593907 (= lambda!350318 lambda!350290)))

(assert (=> bs!1593908 (not (= lambda!350318 lambda!350312))))

(assert (=> d!1995387 true))

(assert (=> d!1995387 true))

(assert (=> d!1995387 true))

(assert (=> d!1995387 (= (Exists!3337 lambda!350317) (Exists!3337 lambda!350318))))

(declare-fun lt!2366703 () Unit!158399)

(declare-fun choose!47232 (Regex!16267 Regex!16267 List!65100) Unit!158399)

(assert (=> d!1995387 (= lt!2366703 (choose!47232 (regOne!33046 r!7292) (regTwo!33046 r!7292) s!2326))))

(assert (=> d!1995387 (validRegex!8003 (regOne!33046 r!7292))))

(assert (=> d!1995387 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1874 (regOne!33046 r!7292) (regTwo!33046 r!7292) s!2326) lt!2366703)))

(declare-fun m!7166058 () Bool)

(assert (=> bs!1593909 m!7166058))

(declare-fun m!7166060 () Bool)

(assert (=> bs!1593909 m!7166060))

(declare-fun m!7166062 () Bool)

(assert (=> bs!1593909 m!7166062))

(assert (=> bs!1593909 m!7166048))

(assert (=> b!6359869 d!1995387))

(declare-fun d!1995389 () Bool)

(declare-fun isEmpty!37082 (Option!16158) Bool)

(assert (=> d!1995389 (= (isDefined!12861 (findConcatSeparation!2572 (regOne!33046 r!7292) (regTwo!33046 r!7292) Nil!64976 s!2326 s!2326)) (not (isEmpty!37082 (findConcatSeparation!2572 (regOne!33046 r!7292) (regTwo!33046 r!7292) Nil!64976 s!2326 s!2326))))))

(declare-fun bs!1593910 () Bool)

(assert (= bs!1593910 d!1995389))

(assert (=> bs!1593910 m!7165728))

(declare-fun m!7166064 () Bool)

(assert (=> bs!1593910 m!7166064))

(assert (=> b!6359869 d!1995389))

(declare-fun d!1995391 () Bool)

(assert (=> d!1995391 (= (isEmpty!37078 (t!378694 zl!343)) ((_ is Nil!64978) (t!378694 zl!343)))))

(assert (=> b!6359888 d!1995391))

(declare-fun bs!1593911 () Bool)

(declare-fun d!1995393 () Bool)

(assert (= bs!1593911 (and d!1995393 d!1995367)))

(declare-fun lambda!350321 () Int)

(assert (=> bs!1593911 (= lambda!350321 lambda!350309)))

(declare-fun b!6360430 () Bool)

(declare-fun e!3862234 () Bool)

(declare-fun e!3862237 () Bool)

(assert (=> b!6360430 (= e!3862234 e!3862237)))

(declare-fun c!1157782 () Bool)

(declare-fun tail!12112 (List!65101) List!65101)

(assert (=> b!6360430 (= c!1157782 (isEmpty!37077 (tail!12112 (unfocusZipperList!1688 zl!343))))))

(declare-fun b!6360431 () Bool)

(declare-fun e!3862235 () Regex!16267)

(declare-fun e!3862232 () Regex!16267)

(assert (=> b!6360431 (= e!3862235 e!3862232)))

(declare-fun c!1157781 () Bool)

(assert (=> b!6360431 (= c!1157781 ((_ is Cons!64977) (unfocusZipperList!1688 zl!343)))))

(declare-fun b!6360432 () Bool)

(declare-fun lt!2366706 () Regex!16267)

(declare-fun head!13027 (List!65101) Regex!16267)

(assert (=> b!6360432 (= e!3862237 (= lt!2366706 (head!13027 (unfocusZipperList!1688 zl!343))))))

(declare-fun e!3862236 () Bool)

(assert (=> d!1995393 e!3862236))

(declare-fun res!2617103 () Bool)

(assert (=> d!1995393 (=> (not res!2617103) (not e!3862236))))

(assert (=> d!1995393 (= res!2617103 (validRegex!8003 lt!2366706))))

(assert (=> d!1995393 (= lt!2366706 e!3862235)))

(declare-fun c!1157783 () Bool)

(declare-fun e!3862233 () Bool)

(assert (=> d!1995393 (= c!1157783 e!3862233)))

(declare-fun res!2617104 () Bool)

(assert (=> d!1995393 (=> (not res!2617104) (not e!3862233))))

(assert (=> d!1995393 (= res!2617104 ((_ is Cons!64977) (unfocusZipperList!1688 zl!343)))))

(assert (=> d!1995393 (forall!15445 (unfocusZipperList!1688 zl!343) lambda!350321)))

(assert (=> d!1995393 (= (generalisedUnion!2111 (unfocusZipperList!1688 zl!343)) lt!2366706)))

(declare-fun b!6360433 () Bool)

(assert (=> b!6360433 (= e!3862232 EmptyLang!16267)))

(declare-fun b!6360434 () Bool)

(declare-fun isUnion!1106 (Regex!16267) Bool)

(assert (=> b!6360434 (= e!3862237 (isUnion!1106 lt!2366706))))

(declare-fun b!6360435 () Bool)

(declare-fun isEmptyLang!1676 (Regex!16267) Bool)

(assert (=> b!6360435 (= e!3862234 (isEmptyLang!1676 lt!2366706))))

(declare-fun b!6360436 () Bool)

(assert (=> b!6360436 (= e!3862236 e!3862234)))

(declare-fun c!1157784 () Bool)

(assert (=> b!6360436 (= c!1157784 (isEmpty!37077 (unfocusZipperList!1688 zl!343)))))

(declare-fun b!6360437 () Bool)

(assert (=> b!6360437 (= e!3862233 (isEmpty!37077 (t!378693 (unfocusZipperList!1688 zl!343))))))

(declare-fun b!6360438 () Bool)

(assert (=> b!6360438 (= e!3862232 (Union!16267 (h!71425 (unfocusZipperList!1688 zl!343)) (generalisedUnion!2111 (t!378693 (unfocusZipperList!1688 zl!343)))))))

(declare-fun b!6360439 () Bool)

(assert (=> b!6360439 (= e!3862235 (h!71425 (unfocusZipperList!1688 zl!343)))))

(assert (= (and d!1995393 res!2617104) b!6360437))

(assert (= (and d!1995393 c!1157783) b!6360439))

(assert (= (and d!1995393 (not c!1157783)) b!6360431))

(assert (= (and b!6360431 c!1157781) b!6360438))

(assert (= (and b!6360431 (not c!1157781)) b!6360433))

(assert (= (and d!1995393 res!2617103) b!6360436))

(assert (= (and b!6360436 c!1157784) b!6360435))

(assert (= (and b!6360436 (not c!1157784)) b!6360430))

(assert (= (and b!6360430 c!1157782) b!6360432))

(assert (= (and b!6360430 (not c!1157782)) b!6360434))

(assert (=> b!6360432 m!7165766))

(declare-fun m!7166066 () Bool)

(assert (=> b!6360432 m!7166066))

(declare-fun m!7166068 () Bool)

(assert (=> d!1995393 m!7166068))

(assert (=> d!1995393 m!7165766))

(declare-fun m!7166070 () Bool)

(assert (=> d!1995393 m!7166070))

(declare-fun m!7166072 () Bool)

(assert (=> b!6360438 m!7166072))

(assert (=> b!6360430 m!7165766))

(declare-fun m!7166074 () Bool)

(assert (=> b!6360430 m!7166074))

(assert (=> b!6360430 m!7166074))

(declare-fun m!7166076 () Bool)

(assert (=> b!6360430 m!7166076))

(assert (=> b!6360436 m!7165766))

(declare-fun m!7166078 () Bool)

(assert (=> b!6360436 m!7166078))

(declare-fun m!7166080 () Bool)

(assert (=> b!6360437 m!7166080))

(declare-fun m!7166082 () Bool)

(assert (=> b!6360434 m!7166082))

(declare-fun m!7166084 () Bool)

(assert (=> b!6360435 m!7166084))

(assert (=> b!6359878 d!1995393))

(declare-fun bs!1593912 () Bool)

(declare-fun d!1995395 () Bool)

(assert (= bs!1593912 (and d!1995395 d!1995367)))

(declare-fun lambda!350324 () Int)

(assert (=> bs!1593912 (= lambda!350324 lambda!350309)))

(declare-fun bs!1593913 () Bool)

(assert (= bs!1593913 (and d!1995395 d!1995393)))

(assert (=> bs!1593913 (= lambda!350324 lambda!350321)))

(declare-fun lt!2366709 () List!65101)

(assert (=> d!1995395 (forall!15445 lt!2366709 lambda!350324)))

(declare-fun e!3862240 () List!65101)

(assert (=> d!1995395 (= lt!2366709 e!3862240)))

(declare-fun c!1157787 () Bool)

(assert (=> d!1995395 (= c!1157787 ((_ is Cons!64978) zl!343))))

(assert (=> d!1995395 (= (unfocusZipperList!1688 zl!343) lt!2366709)))

(declare-fun b!6360444 () Bool)

(assert (=> b!6360444 (= e!3862240 (Cons!64977 (generalisedConcat!1864 (exprs!6151 (h!71426 zl!343))) (unfocusZipperList!1688 (t!378694 zl!343))))))

(declare-fun b!6360445 () Bool)

(assert (=> b!6360445 (= e!3862240 Nil!64977)))

(assert (= (and d!1995395 c!1157787) b!6360444))

(assert (= (and d!1995395 (not c!1157787)) b!6360445))

(declare-fun m!7166086 () Bool)

(assert (=> d!1995395 m!7166086))

(assert (=> b!6360444 m!7165712))

(declare-fun m!7166088 () Bool)

(assert (=> b!6360444 m!7166088))

(assert (=> b!6359878 d!1995395))

(declare-fun bs!1593914 () Bool)

(declare-fun d!1995397 () Bool)

(assert (= bs!1593914 (and d!1995397 d!1995367)))

(declare-fun lambda!350325 () Int)

(assert (=> bs!1593914 (= lambda!350325 lambda!350309)))

(declare-fun bs!1593915 () Bool)

(assert (= bs!1593915 (and d!1995397 d!1995393)))

(assert (=> bs!1593915 (= lambda!350325 lambda!350321)))

(declare-fun bs!1593916 () Bool)

(assert (= bs!1593916 (and d!1995397 d!1995395)))

(assert (=> bs!1593916 (= lambda!350325 lambda!350324)))

(assert (=> d!1995397 (= (inv!83914 (h!71426 zl!343)) (forall!15445 (exprs!6151 (h!71426 zl!343)) lambda!350325))))

(declare-fun bs!1593917 () Bool)

(assert (= bs!1593917 d!1995397))

(declare-fun m!7166090 () Bool)

(assert (=> bs!1593917 m!7166090))

(assert (=> b!6359887 d!1995397))

(declare-fun bs!1593918 () Bool)

(declare-fun d!1995399 () Bool)

(assert (= bs!1593918 (and d!1995399 d!1995367)))

(declare-fun lambda!350328 () Int)

(assert (=> bs!1593918 (= lambda!350328 lambda!350309)))

(declare-fun bs!1593919 () Bool)

(assert (= bs!1593919 (and d!1995399 d!1995393)))

(assert (=> bs!1593919 (= lambda!350328 lambda!350321)))

(declare-fun bs!1593920 () Bool)

(assert (= bs!1593920 (and d!1995399 d!1995395)))

(assert (=> bs!1593920 (= lambda!350328 lambda!350324)))

(declare-fun bs!1593921 () Bool)

(assert (= bs!1593921 (and d!1995399 d!1995397)))

(assert (=> bs!1593921 (= lambda!350328 lambda!350325)))

(declare-fun b!6360466 () Bool)

(declare-fun e!3862257 () Bool)

(declare-fun lt!2366712 () Regex!16267)

(declare-fun isEmptyExpr!1669 (Regex!16267) Bool)

(assert (=> b!6360466 (= e!3862257 (isEmptyExpr!1669 lt!2366712))))

(declare-fun b!6360467 () Bool)

(declare-fun e!3862253 () Regex!16267)

(declare-fun e!3862256 () Regex!16267)

(assert (=> b!6360467 (= e!3862253 e!3862256)))

(declare-fun c!1157796 () Bool)

(assert (=> b!6360467 (= c!1157796 ((_ is Cons!64977) (exprs!6151 (h!71426 zl!343))))))

(declare-fun b!6360468 () Bool)

(declare-fun e!3862258 () Bool)

(assert (=> b!6360468 (= e!3862257 e!3862258)))

(declare-fun c!1157799 () Bool)

(assert (=> b!6360468 (= c!1157799 (isEmpty!37077 (tail!12112 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun b!6360469 () Bool)

(declare-fun e!3862254 () Bool)

(assert (=> b!6360469 (= e!3862254 (isEmpty!37077 (t!378693 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun e!3862255 () Bool)

(assert (=> d!1995399 e!3862255))

(declare-fun res!2617110 () Bool)

(assert (=> d!1995399 (=> (not res!2617110) (not e!3862255))))

(assert (=> d!1995399 (= res!2617110 (validRegex!8003 lt!2366712))))

(assert (=> d!1995399 (= lt!2366712 e!3862253)))

(declare-fun c!1157797 () Bool)

(assert (=> d!1995399 (= c!1157797 e!3862254)))

(declare-fun res!2617109 () Bool)

(assert (=> d!1995399 (=> (not res!2617109) (not e!3862254))))

(assert (=> d!1995399 (= res!2617109 ((_ is Cons!64977) (exprs!6151 (h!71426 zl!343))))))

(assert (=> d!1995399 (forall!15445 (exprs!6151 (h!71426 zl!343)) lambda!350328)))

(assert (=> d!1995399 (= (generalisedConcat!1864 (exprs!6151 (h!71426 zl!343))) lt!2366712)))

(declare-fun b!6360470 () Bool)

(assert (=> b!6360470 (= e!3862258 (= lt!2366712 (head!13027 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun b!6360471 () Bool)

(assert (=> b!6360471 (= e!3862253 (h!71425 (exprs!6151 (h!71426 zl!343))))))

(declare-fun b!6360472 () Bool)

(assert (=> b!6360472 (= e!3862256 EmptyExpr!16267)))

(declare-fun b!6360473 () Bool)

(declare-fun isConcat!1192 (Regex!16267) Bool)

(assert (=> b!6360473 (= e!3862258 (isConcat!1192 lt!2366712))))

(declare-fun b!6360474 () Bool)

(assert (=> b!6360474 (= e!3862256 (Concat!25112 (h!71425 (exprs!6151 (h!71426 zl!343))) (generalisedConcat!1864 (t!378693 (exprs!6151 (h!71426 zl!343))))))))

(declare-fun b!6360475 () Bool)

(assert (=> b!6360475 (= e!3862255 e!3862257)))

(declare-fun c!1157798 () Bool)

(assert (=> b!6360475 (= c!1157798 (isEmpty!37077 (exprs!6151 (h!71426 zl!343))))))

(assert (= (and d!1995399 res!2617109) b!6360469))

(assert (= (and d!1995399 c!1157797) b!6360471))

(assert (= (and d!1995399 (not c!1157797)) b!6360467))

(assert (= (and b!6360467 c!1157796) b!6360474))

(assert (= (and b!6360467 (not c!1157796)) b!6360472))

(assert (= (and d!1995399 res!2617110) b!6360475))

(assert (= (and b!6360475 c!1157798) b!6360466))

(assert (= (and b!6360475 (not c!1157798)) b!6360468))

(assert (= (and b!6360468 c!1157799) b!6360470))

(assert (= (and b!6360468 (not c!1157799)) b!6360473))

(declare-fun m!7166092 () Bool)

(assert (=> b!6360466 m!7166092))

(declare-fun m!7166094 () Bool)

(assert (=> b!6360475 m!7166094))

(declare-fun m!7166096 () Bool)

(assert (=> b!6360470 m!7166096))

(declare-fun m!7166098 () Bool)

(assert (=> d!1995399 m!7166098))

(declare-fun m!7166100 () Bool)

(assert (=> d!1995399 m!7166100))

(declare-fun m!7166102 () Bool)

(assert (=> b!6360473 m!7166102))

(declare-fun m!7166104 () Bool)

(assert (=> b!6360468 m!7166104))

(assert (=> b!6360468 m!7166104))

(declare-fun m!7166106 () Bool)

(assert (=> b!6360468 m!7166106))

(assert (=> b!6360469 m!7165722))

(declare-fun m!7166108 () Bool)

(assert (=> b!6360474 m!7166108))

(assert (=> b!6359867 d!1995399))

(declare-fun c!1157812 () Bool)

(declare-fun call!542622 () List!65101)

(declare-fun c!1157810 () Bool)

(declare-fun bm!542617 () Bool)

(declare-fun $colon$colon!2128 (List!65101 Regex!16267) List!65101)

(assert (=> bm!542617 (= call!542622 ($colon$colon!2128 (exprs!6151 lt!2366630) (ite (or c!1157812 c!1157810) (regTwo!33046 (h!71425 (exprs!6151 (h!71426 zl!343)))) (h!71425 (exprs!6151 (h!71426 zl!343))))))))

(declare-fun b!6360498 () Bool)

(declare-fun e!3862272 () (InoxSet Context!11302))

(declare-fun call!542626 () (InoxSet Context!11302))

(assert (=> b!6360498 (= e!3862272 call!542626)))

(declare-fun b!6360499 () Bool)

(declare-fun c!1157813 () Bool)

(assert (=> b!6360499 (= c!1157813 ((_ is Star!16267) (h!71425 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun e!3862274 () (InoxSet Context!11302))

(assert (=> b!6360499 (= e!3862274 e!3862272)))

(declare-fun bm!542618 () Bool)

(declare-fun call!542623 () List!65101)

(assert (=> bm!542618 (= call!542623 call!542622)))

(declare-fun call!542624 () (InoxSet Context!11302))

(declare-fun bm!542619 () Bool)

(declare-fun c!1157814 () Bool)

(assert (=> bm!542619 (= call!542624 (derivationStepZipperDown!1515 (ite c!1157814 (regTwo!33047 (h!71425 (exprs!6151 (h!71426 zl!343)))) (ite c!1157812 (regTwo!33046 (h!71425 (exprs!6151 (h!71426 zl!343)))) (ite c!1157810 (regOne!33046 (h!71425 (exprs!6151 (h!71426 zl!343)))) (reg!16596 (h!71425 (exprs!6151 (h!71426 zl!343))))))) (ite (or c!1157814 c!1157812) lt!2366630 (Context!11303 call!542623)) (h!71424 s!2326)))))

(declare-fun b!6360500 () Bool)

(declare-fun e!3862276 () (InoxSet Context!11302))

(assert (=> b!6360500 (= e!3862276 (store ((as const (Array Context!11302 Bool)) false) lt!2366630 true))))

(declare-fun b!6360501 () Bool)

(assert (=> b!6360501 (= e!3862272 ((as const (Array Context!11302 Bool)) false))))

(declare-fun b!6360502 () Bool)

(declare-fun e!3862275 () (InoxSet Context!11302))

(declare-fun call!542625 () (InoxSet Context!11302))

(declare-fun call!542627 () (InoxSet Context!11302))

(assert (=> b!6360502 (= e!3862275 ((_ map or) call!542625 call!542627))))

(declare-fun d!1995401 () Bool)

(declare-fun c!1157811 () Bool)

(assert (=> d!1995401 (= c!1157811 (and ((_ is ElementMatch!16267) (h!71425 (exprs!6151 (h!71426 zl!343)))) (= (c!1157644 (h!71425 (exprs!6151 (h!71426 zl!343)))) (h!71424 s!2326))))))

(assert (=> d!1995401 (= (derivationStepZipperDown!1515 (h!71425 (exprs!6151 (h!71426 zl!343))) lt!2366630 (h!71424 s!2326)) e!3862276)))

(declare-fun b!6360503 () Bool)

(declare-fun e!3862271 () Bool)

(assert (=> b!6360503 (= c!1157812 e!3862271)))

(declare-fun res!2617113 () Bool)

(assert (=> b!6360503 (=> (not res!2617113) (not e!3862271))))

(assert (=> b!6360503 (= res!2617113 ((_ is Concat!25112) (h!71425 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun e!3862273 () (InoxSet Context!11302))

(assert (=> b!6360503 (= e!3862273 e!3862275)))

(declare-fun b!6360504 () Bool)

(assert (=> b!6360504 (= e!3862276 e!3862273)))

(assert (=> b!6360504 (= c!1157814 ((_ is Union!16267) (h!71425 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun bm!542620 () Bool)

(assert (=> bm!542620 (= call!542625 (derivationStepZipperDown!1515 (ite c!1157814 (regOne!33047 (h!71425 (exprs!6151 (h!71426 zl!343)))) (regOne!33046 (h!71425 (exprs!6151 (h!71426 zl!343))))) (ite c!1157814 lt!2366630 (Context!11303 call!542622)) (h!71424 s!2326)))))

(declare-fun b!6360505 () Bool)

(assert (=> b!6360505 (= e!3862271 (nullable!6260 (regOne!33046 (h!71425 (exprs!6151 (h!71426 zl!343))))))))

(declare-fun b!6360506 () Bool)

(assert (=> b!6360506 (= e!3862273 ((_ map or) call!542625 call!542624))))

(declare-fun b!6360507 () Bool)

(assert (=> b!6360507 (= e!3862275 e!3862274)))

(assert (=> b!6360507 (= c!1157810 ((_ is Concat!25112) (h!71425 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun bm!542621 () Bool)

(assert (=> bm!542621 (= call!542627 call!542624)))

(declare-fun bm!542622 () Bool)

(assert (=> bm!542622 (= call!542626 call!542627)))

(declare-fun b!6360508 () Bool)

(assert (=> b!6360508 (= e!3862274 call!542626)))

(assert (= (and d!1995401 c!1157811) b!6360500))

(assert (= (and d!1995401 (not c!1157811)) b!6360504))

(assert (= (and b!6360504 c!1157814) b!6360506))

(assert (= (and b!6360504 (not c!1157814)) b!6360503))

(assert (= (and b!6360503 res!2617113) b!6360505))

(assert (= (and b!6360503 c!1157812) b!6360502))

(assert (= (and b!6360503 (not c!1157812)) b!6360507))

(assert (= (and b!6360507 c!1157810) b!6360508))

(assert (= (and b!6360507 (not c!1157810)) b!6360499))

(assert (= (and b!6360499 c!1157813) b!6360498))

(assert (= (and b!6360499 (not c!1157813)) b!6360501))

(assert (= (or b!6360508 b!6360498) bm!542618))

(assert (= (or b!6360508 b!6360498) bm!542622))

(assert (= (or b!6360502 bm!542618) bm!542617))

(assert (= (or b!6360502 bm!542622) bm!542621))

(assert (= (or b!6360506 bm!542621) bm!542619))

(assert (= (or b!6360506 b!6360502) bm!542620))

(declare-fun m!7166110 () Bool)

(assert (=> bm!542620 m!7166110))

(declare-fun m!7166112 () Bool)

(assert (=> b!6360500 m!7166112))

(declare-fun m!7166114 () Bool)

(assert (=> b!6360505 m!7166114))

(declare-fun m!7166116 () Bool)

(assert (=> bm!542617 m!7166116))

(declare-fun m!7166118 () Bool)

(assert (=> bm!542619 m!7166118))

(assert (=> b!6359881 d!1995401))

(declare-fun d!1995403 () Bool)

(declare-fun nullableFct!2207 (Regex!16267) Bool)

(assert (=> d!1995403 (= (nullable!6260 (h!71425 (exprs!6151 (h!71426 zl!343)))) (nullableFct!2207 (h!71425 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun bs!1593922 () Bool)

(assert (= bs!1593922 d!1995403))

(declare-fun m!7166120 () Bool)

(assert (=> bs!1593922 m!7166120))

(assert (=> b!6359881 d!1995403))

(declare-fun call!542630 () (InoxSet Context!11302))

(declare-fun e!3862285 () (InoxSet Context!11302))

(declare-fun b!6360519 () Bool)

(assert (=> b!6360519 (= e!3862285 ((_ map or) call!542630 (derivationStepZipperUp!1441 (Context!11303 (t!378693 (exprs!6151 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343)))))))) (h!71424 s!2326))))))

(declare-fun bm!542625 () Bool)

(assert (=> bm!542625 (= call!542630 (derivationStepZipperDown!1515 (h!71425 (exprs!6151 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343))))))) (Context!11303 (t!378693 (exprs!6151 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343)))))))) (h!71424 s!2326)))))

(declare-fun b!6360520 () Bool)

(declare-fun e!3862284 () (InoxSet Context!11302))

(assert (=> b!6360520 (= e!3862284 ((as const (Array Context!11302 Bool)) false))))

(declare-fun b!6360521 () Bool)

(declare-fun e!3862283 () Bool)

(assert (=> b!6360521 (= e!3862283 (nullable!6260 (h!71425 (exprs!6151 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343)))))))))))

(declare-fun d!1995405 () Bool)

(declare-fun c!1157819 () Bool)

(assert (=> d!1995405 (= c!1157819 e!3862283)))

(declare-fun res!2617116 () Bool)

(assert (=> d!1995405 (=> (not res!2617116) (not e!3862283))))

(assert (=> d!1995405 (= res!2617116 ((_ is Cons!64977) (exprs!6151 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343))))))))))

(assert (=> d!1995405 (= (derivationStepZipperUp!1441 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343))))) (h!71424 s!2326)) e!3862285)))

(declare-fun b!6360522 () Bool)

(assert (=> b!6360522 (= e!3862284 call!542630)))

(declare-fun b!6360523 () Bool)

(assert (=> b!6360523 (= e!3862285 e!3862284)))

(declare-fun c!1157820 () Bool)

(assert (=> b!6360523 (= c!1157820 ((_ is Cons!64977) (exprs!6151 (Context!11303 (Cons!64977 (h!71425 (exprs!6151 (h!71426 zl!343))) (t!378693 (exprs!6151 (h!71426 zl!343))))))))))

(assert (= (and d!1995405 res!2617116) b!6360521))

(assert (= (and d!1995405 c!1157819) b!6360519))

(assert (= (and d!1995405 (not c!1157819)) b!6360523))

(assert (= (and b!6360523 c!1157820) b!6360522))

(assert (= (and b!6360523 (not c!1157820)) b!6360520))

(assert (= (or b!6360519 b!6360522) bm!542625))

(declare-fun m!7166122 () Bool)

(assert (=> b!6360519 m!7166122))

(declare-fun m!7166124 () Bool)

(assert (=> bm!542625 m!7166124))

(declare-fun m!7166126 () Bool)

(assert (=> b!6360521 m!7166126))

(assert (=> b!6359881 d!1995405))

(declare-fun b!6360524 () Bool)

(declare-fun call!542631 () (InoxSet Context!11302))

(declare-fun e!3862288 () (InoxSet Context!11302))

(assert (=> b!6360524 (= e!3862288 ((_ map or) call!542631 (derivationStepZipperUp!1441 (Context!11303 (t!378693 (exprs!6151 (h!71426 zl!343)))) (h!71424 s!2326))))))

(declare-fun bm!542626 () Bool)

(assert (=> bm!542626 (= call!542631 (derivationStepZipperDown!1515 (h!71425 (exprs!6151 (h!71426 zl!343))) (Context!11303 (t!378693 (exprs!6151 (h!71426 zl!343)))) (h!71424 s!2326)))))

(declare-fun b!6360525 () Bool)

(declare-fun e!3862287 () (InoxSet Context!11302))

(assert (=> b!6360525 (= e!3862287 ((as const (Array Context!11302 Bool)) false))))

(declare-fun b!6360526 () Bool)

(declare-fun e!3862286 () Bool)

(assert (=> b!6360526 (= e!3862286 (nullable!6260 (h!71425 (exprs!6151 (h!71426 zl!343)))))))

(declare-fun d!1995407 () Bool)

(declare-fun c!1157821 () Bool)

(assert (=> d!1995407 (= c!1157821 e!3862286)))

(declare-fun res!2617117 () Bool)

(assert (=> d!1995407 (=> (not res!2617117) (not e!3862286))))

(assert (=> d!1995407 (= res!2617117 ((_ is Cons!64977) (exprs!6151 (h!71426 zl!343))))))

(assert (=> d!1995407 (= (derivationStepZipperUp!1441 (h!71426 zl!343) (h!71424 s!2326)) e!3862288)))

(declare-fun b!6360527 () Bool)

(assert (=> b!6360527 (= e!3862287 call!542631)))

(declare-fun b!6360528 () Bool)

(assert (=> b!6360528 (= e!3862288 e!3862287)))

(declare-fun c!1157822 () Bool)

(assert (=> b!6360528 (= c!1157822 ((_ is Cons!64977) (exprs!6151 (h!71426 zl!343))))))

(assert (= (and d!1995407 res!2617117) b!6360526))

(assert (= (and d!1995407 c!1157821) b!6360524))

(assert (= (and d!1995407 (not c!1157821)) b!6360528))

(assert (= (and b!6360528 c!1157822) b!6360527))

(assert (= (and b!6360528 (not c!1157822)) b!6360525))

(assert (= (or b!6360524 b!6360527) bm!542626))

(declare-fun m!7166128 () Bool)

(assert (=> b!6360524 m!7166128))

(declare-fun m!7166130 () Bool)

(assert (=> bm!542626 m!7166130))

(assert (=> b!6360526 m!7165748))

(assert (=> b!6359881 d!1995407))

(declare-fun d!1995409 () Bool)

(declare-fun choose!47233 ((InoxSet Context!11302) Int) (InoxSet Context!11302))

(assert (=> d!1995409 (= (flatMap!1772 z!1189 lambda!350271) (choose!47233 z!1189 lambda!350271))))

(declare-fun bs!1593923 () Bool)

(assert (= bs!1593923 d!1995409))

(declare-fun m!7166132 () Bool)

(assert (=> bs!1593923 m!7166132))

(assert (=> b!6359881 d!1995409))

(declare-fun e!3862291 () (InoxSet Context!11302))

(declare-fun b!6360529 () Bool)

(declare-fun call!542632 () (InoxSet Context!11302))

(assert (=> b!6360529 (= e!3862291 ((_ map or) call!542632 (derivationStepZipperUp!1441 (Context!11303 (t!378693 (exprs!6151 lt!2366630))) (h!71424 s!2326))))))

(declare-fun bm!542627 () Bool)

(assert (=> bm!542627 (= call!542632 (derivationStepZipperDown!1515 (h!71425 (exprs!6151 lt!2366630)) (Context!11303 (t!378693 (exprs!6151 lt!2366630))) (h!71424 s!2326)))))

(declare-fun b!6360530 () Bool)

(declare-fun e!3862290 () (InoxSet Context!11302))

(assert (=> b!6360530 (= e!3862290 ((as const (Array Context!11302 Bool)) false))))

(declare-fun b!6360531 () Bool)

(declare-fun e!3862289 () Bool)

(assert (=> b!6360531 (= e!3862289 (nullable!6260 (h!71425 (exprs!6151 lt!2366630))))))

(declare-fun d!1995411 () Bool)

(declare-fun c!1157823 () Bool)

(assert (=> d!1995411 (= c!1157823 e!3862289)))

(declare-fun res!2617118 () Bool)

(assert (=> d!1995411 (=> (not res!2617118) (not e!3862289))))

(assert (=> d!1995411 (= res!2617118 ((_ is Cons!64977) (exprs!6151 lt!2366630)))))

(assert (=> d!1995411 (= (derivationStepZipperUp!1441 lt!2366630 (h!71424 s!2326)) e!3862291)))

(declare-fun b!6360532 () Bool)

(assert (=> b!6360532 (= e!3862290 call!542632)))

(declare-fun b!6360533 () Bool)

(assert (=> b!6360533 (= e!3862291 e!3862290)))

(declare-fun c!1157824 () Bool)

(assert (=> b!6360533 (= c!1157824 ((_ is Cons!64977) (exprs!6151 lt!2366630)))))

(assert (= (and d!1995411 res!2617118) b!6360531))

(assert (= (and d!1995411 c!1157823) b!6360529))

(assert (= (and d!1995411 (not c!1157823)) b!6360533))

(assert (= (and b!6360533 c!1157824) b!6360532))

(assert (= (and b!6360533 (not c!1157824)) b!6360530))

(assert (= (or b!6360529 b!6360532) bm!542627))

(declare-fun m!7166134 () Bool)

(assert (=> b!6360529 m!7166134))

(declare-fun m!7166136 () Bool)

(assert (=> bm!542627 m!7166136))

(declare-fun m!7166138 () Bool)

(assert (=> b!6360531 m!7166138))

(assert (=> b!6359881 d!1995411))

(declare-fun d!1995413 () Bool)

(declare-fun dynLambda!25773 (Int Context!11302) (InoxSet Context!11302))

(assert (=> d!1995413 (= (flatMap!1772 z!1189 lambda!350271) (dynLambda!25773 lambda!350271 (h!71426 zl!343)))))

(declare-fun lt!2366715 () Unit!158399)

(declare-fun choose!47234 ((InoxSet Context!11302) Context!11302 Int) Unit!158399)

(assert (=> d!1995413 (= lt!2366715 (choose!47234 z!1189 (h!71426 zl!343) lambda!350271))))

(assert (=> d!1995413 (= z!1189 (store ((as const (Array Context!11302 Bool)) false) (h!71426 zl!343) true))))

(assert (=> d!1995413 (= (lemmaFlatMapOnSingletonSet!1298 z!1189 (h!71426 zl!343) lambda!350271) lt!2366715)))

(declare-fun b_lambda!241801 () Bool)

(assert (=> (not b_lambda!241801) (not d!1995413)))

(declare-fun bs!1593924 () Bool)

(assert (= bs!1593924 d!1995413))

(assert (=> bs!1593924 m!7165746))

(declare-fun m!7166140 () Bool)

(assert (=> bs!1593924 m!7166140))

(declare-fun m!7166142 () Bool)

(assert (=> bs!1593924 m!7166142))

(declare-fun m!7166144 () Bool)

(assert (=> bs!1593924 m!7166144))

(assert (=> b!6359881 d!1995413))

(declare-fun d!1995415 () Bool)

(declare-fun lt!2366718 () Regex!16267)

(assert (=> d!1995415 (validRegex!8003 lt!2366718)))

(assert (=> d!1995415 (= lt!2366718 (generalisedUnion!2111 (unfocusZipperList!1688 zl!343)))))

(assert (=> d!1995415 (= (unfocusZipper!2009 zl!343) lt!2366718)))

(declare-fun bs!1593925 () Bool)

(assert (= bs!1593925 d!1995415))

(declare-fun m!7166146 () Bool)

(assert (=> bs!1593925 m!7166146))

(assert (=> bs!1593925 m!7165766))

(assert (=> bs!1593925 m!7165766))

(assert (=> bs!1593925 m!7165768))

(assert (=> b!6359871 d!1995415))

(declare-fun bs!1593926 () Bool)

(declare-fun d!1995417 () Bool)

(assert (= bs!1593926 (and d!1995417 d!1995399)))

(declare-fun lambda!350329 () Int)

(assert (=> bs!1593926 (= lambda!350329 lambda!350328)))

(declare-fun bs!1593927 () Bool)

(assert (= bs!1593927 (and d!1995417 d!1995367)))

(assert (=> bs!1593927 (= lambda!350329 lambda!350309)))

(declare-fun bs!1593928 () Bool)

(assert (= bs!1593928 (and d!1995417 d!1995393)))

(assert (=> bs!1593928 (= lambda!350329 lambda!350321)))

(declare-fun bs!1593929 () Bool)

(assert (= bs!1593929 (and d!1995417 d!1995395)))

(assert (=> bs!1593929 (= lambda!350329 lambda!350324)))

(declare-fun bs!1593930 () Bool)

(assert (= bs!1593930 (and d!1995417 d!1995397)))

(assert (=> bs!1593930 (= lambda!350329 lambda!350325)))

(assert (=> d!1995417 (= (inv!83914 (Context!11303 (Cons!64977 (Star!16267 (reg!16596 (regOne!33046 r!7292))) (t!378693 (exprs!6151 (h!71426 zl!343)))))) (forall!15445 (exprs!6151 (Context!11303 (Cons!64977 (Star!16267 (reg!16596 (regOne!33046 r!7292))) (t!378693 (exprs!6151 (h!71426 zl!343)))))) lambda!350329))))

(declare-fun bs!1593931 () Bool)

(assert (= bs!1593931 d!1995417))

(declare-fun m!7166148 () Bool)

(assert (=> bs!1593931 m!7166148))

(assert (=> b!6359880 d!1995417))

(declare-fun d!1995419 () Bool)

(assert (=> d!1995419 (= (nullable!6260 (regOne!33046 (regOne!33046 r!7292))) (nullableFct!2207 (regOne!33046 (regOne!33046 r!7292))))))

(declare-fun bs!1593932 () Bool)

(assert (= bs!1593932 d!1995419))

(declare-fun m!7166150 () Bool)

(assert (=> bs!1593932 m!7166150))

(assert (=> b!6359879 d!1995419))

(declare-fun b!6360547 () Bool)

(declare-fun e!3862294 () Bool)

(declare-fun tp!1771276 () Bool)

(declare-fun tp!1771278 () Bool)

(assert (=> b!6360547 (= e!3862294 (and tp!1771276 tp!1771278))))

(declare-fun b!6360544 () Bool)

(assert (=> b!6360544 (= e!3862294 tp_is_empty!41787)))

(declare-fun b!6360545 () Bool)

(declare-fun tp!1771275 () Bool)

(declare-fun tp!1771279 () Bool)

(assert (=> b!6360545 (= e!3862294 (and tp!1771275 tp!1771279))))

(declare-fun b!6360546 () Bool)

(declare-fun tp!1771277 () Bool)

(assert (=> b!6360546 (= e!3862294 tp!1771277)))

(assert (=> b!6359884 (= tp!1771199 e!3862294)))

(assert (= (and b!6359884 ((_ is ElementMatch!16267) (regOne!33046 r!7292))) b!6360544))

(assert (= (and b!6359884 ((_ is Concat!25112) (regOne!33046 r!7292))) b!6360545))

(assert (= (and b!6359884 ((_ is Star!16267) (regOne!33046 r!7292))) b!6360546))

(assert (= (and b!6359884 ((_ is Union!16267) (regOne!33046 r!7292))) b!6360547))

(declare-fun b!6360551 () Bool)

(declare-fun e!3862295 () Bool)

(declare-fun tp!1771281 () Bool)

(declare-fun tp!1771283 () Bool)

(assert (=> b!6360551 (= e!3862295 (and tp!1771281 tp!1771283))))

(declare-fun b!6360548 () Bool)

(assert (=> b!6360548 (= e!3862295 tp_is_empty!41787)))

(declare-fun b!6360549 () Bool)

(declare-fun tp!1771280 () Bool)

(declare-fun tp!1771284 () Bool)

(assert (=> b!6360549 (= e!3862295 (and tp!1771280 tp!1771284))))

(declare-fun b!6360550 () Bool)

(declare-fun tp!1771282 () Bool)

(assert (=> b!6360550 (= e!3862295 tp!1771282)))

(assert (=> b!6359884 (= tp!1771200 e!3862295)))

(assert (= (and b!6359884 ((_ is ElementMatch!16267) (regTwo!33046 r!7292))) b!6360548))

(assert (= (and b!6359884 ((_ is Concat!25112) (regTwo!33046 r!7292))) b!6360549))

(assert (= (and b!6359884 ((_ is Star!16267) (regTwo!33046 r!7292))) b!6360550))

(assert (= (and b!6359884 ((_ is Union!16267) (regTwo!33046 r!7292))) b!6360551))

(declare-fun b!6360555 () Bool)

(declare-fun e!3862296 () Bool)

(declare-fun tp!1771286 () Bool)

(declare-fun tp!1771288 () Bool)

(assert (=> b!6360555 (= e!3862296 (and tp!1771286 tp!1771288))))

(declare-fun b!6360552 () Bool)

(assert (=> b!6360552 (= e!3862296 tp_is_empty!41787)))

(declare-fun b!6360553 () Bool)

(declare-fun tp!1771285 () Bool)

(declare-fun tp!1771289 () Bool)

(assert (=> b!6360553 (= e!3862296 (and tp!1771285 tp!1771289))))

(declare-fun b!6360554 () Bool)

(declare-fun tp!1771287 () Bool)

(assert (=> b!6360554 (= e!3862296 tp!1771287)))

(assert (=> b!6359868 (= tp!1771205 e!3862296)))

(assert (= (and b!6359868 ((_ is ElementMatch!16267) (reg!16596 r!7292))) b!6360552))

(assert (= (and b!6359868 ((_ is Concat!25112) (reg!16596 r!7292))) b!6360553))

(assert (= (and b!6359868 ((_ is Star!16267) (reg!16596 r!7292))) b!6360554))

(assert (= (and b!6359868 ((_ is Union!16267) (reg!16596 r!7292))) b!6360555))

(declare-fun b!6360563 () Bool)

(declare-fun e!3862302 () Bool)

(declare-fun tp!1771294 () Bool)

(assert (=> b!6360563 (= e!3862302 tp!1771294)))

(declare-fun e!3862301 () Bool)

(declare-fun b!6360562 () Bool)

(declare-fun tp!1771295 () Bool)

(assert (=> b!6360562 (= e!3862301 (and (inv!83914 (h!71426 (t!378694 zl!343))) e!3862302 tp!1771295))))

(assert (=> b!6359887 (= tp!1771202 e!3862301)))

(assert (= b!6360562 b!6360563))

(assert (= (and b!6359887 ((_ is Cons!64978) (t!378694 zl!343))) b!6360562))

(declare-fun m!7166152 () Bool)

(assert (=> b!6360562 m!7166152))

(declare-fun b!6360568 () Bool)

(declare-fun e!3862305 () Bool)

(declare-fun tp!1771300 () Bool)

(declare-fun tp!1771301 () Bool)

(assert (=> b!6360568 (= e!3862305 (and tp!1771300 tp!1771301))))

(assert (=> b!6359877 (= tp!1771201 e!3862305)))

(assert (= (and b!6359877 ((_ is Cons!64977) (exprs!6151 (h!71426 zl!343)))) b!6360568))

(declare-fun b!6360572 () Bool)

(declare-fun e!3862306 () Bool)

(declare-fun tp!1771303 () Bool)

(declare-fun tp!1771305 () Bool)

(assert (=> b!6360572 (= e!3862306 (and tp!1771303 tp!1771305))))

(declare-fun b!6360569 () Bool)

(assert (=> b!6360569 (= e!3862306 tp_is_empty!41787)))

(declare-fun b!6360570 () Bool)

(declare-fun tp!1771302 () Bool)

(declare-fun tp!1771306 () Bool)

(assert (=> b!6360570 (= e!3862306 (and tp!1771302 tp!1771306))))

(declare-fun b!6360571 () Bool)

(declare-fun tp!1771304 () Bool)

(assert (=> b!6360571 (= e!3862306 tp!1771304)))

(assert (=> b!6359891 (= tp!1771206 e!3862306)))

(assert (= (and b!6359891 ((_ is ElementMatch!16267) (regOne!33047 r!7292))) b!6360569))

(assert (= (and b!6359891 ((_ is Concat!25112) (regOne!33047 r!7292))) b!6360570))

(assert (= (and b!6359891 ((_ is Star!16267) (regOne!33047 r!7292))) b!6360571))

(assert (= (and b!6359891 ((_ is Union!16267) (regOne!33047 r!7292))) b!6360572))

(declare-fun b!6360576 () Bool)

(declare-fun e!3862307 () Bool)

(declare-fun tp!1771308 () Bool)

(declare-fun tp!1771310 () Bool)

(assert (=> b!6360576 (= e!3862307 (and tp!1771308 tp!1771310))))

(declare-fun b!6360573 () Bool)

(assert (=> b!6360573 (= e!3862307 tp_is_empty!41787)))

(declare-fun b!6360574 () Bool)

(declare-fun tp!1771307 () Bool)

(declare-fun tp!1771311 () Bool)

(assert (=> b!6360574 (= e!3862307 (and tp!1771307 tp!1771311))))

(declare-fun b!6360575 () Bool)

(declare-fun tp!1771309 () Bool)

(assert (=> b!6360575 (= e!3862307 tp!1771309)))

(assert (=> b!6359891 (= tp!1771203 e!3862307)))

(assert (= (and b!6359891 ((_ is ElementMatch!16267) (regTwo!33047 r!7292))) b!6360573))

(assert (= (and b!6359891 ((_ is Concat!25112) (regTwo!33047 r!7292))) b!6360574))

(assert (= (and b!6359891 ((_ is Star!16267) (regTwo!33047 r!7292))) b!6360575))

(assert (= (and b!6359891 ((_ is Union!16267) (regTwo!33047 r!7292))) b!6360576))

(declare-fun condSetEmpty!43322 () Bool)

(assert (=> setNonEmpty!43316 (= condSetEmpty!43322 (= setRest!43316 ((as const (Array Context!11302 Bool)) false)))))

(declare-fun setRes!43322 () Bool)

(assert (=> setNonEmpty!43316 (= tp!1771204 setRes!43322)))

(declare-fun setIsEmpty!43322 () Bool)

(assert (=> setIsEmpty!43322 setRes!43322))

(declare-fun e!3862310 () Bool)

(declare-fun setElem!43322 () Context!11302)

(declare-fun tp!1771317 () Bool)

(declare-fun setNonEmpty!43322 () Bool)

(assert (=> setNonEmpty!43322 (= setRes!43322 (and tp!1771317 (inv!83914 setElem!43322) e!3862310))))

(declare-fun setRest!43322 () (InoxSet Context!11302))

(assert (=> setNonEmpty!43322 (= setRest!43316 ((_ map or) (store ((as const (Array Context!11302 Bool)) false) setElem!43322 true) setRest!43322))))

(declare-fun b!6360581 () Bool)

(declare-fun tp!1771316 () Bool)

(assert (=> b!6360581 (= e!3862310 tp!1771316)))

(assert (= (and setNonEmpty!43316 condSetEmpty!43322) setIsEmpty!43322))

(assert (= (and setNonEmpty!43316 (not condSetEmpty!43322)) setNonEmpty!43322))

(assert (= setNonEmpty!43322 b!6360581))

(declare-fun m!7166154 () Bool)

(assert (=> setNonEmpty!43322 m!7166154))

(declare-fun b!6360582 () Bool)

(declare-fun e!3862311 () Bool)

(declare-fun tp!1771318 () Bool)

(declare-fun tp!1771319 () Bool)

(assert (=> b!6360582 (= e!3862311 (and tp!1771318 tp!1771319))))

(assert (=> b!6359889 (= tp!1771198 e!3862311)))

(assert (= (and b!6359889 ((_ is Cons!64977) (exprs!6151 setElem!43316))) b!6360582))

(declare-fun b!6360587 () Bool)

(declare-fun e!3862314 () Bool)

(declare-fun tp!1771322 () Bool)

(assert (=> b!6360587 (= e!3862314 (and tp_is_empty!41787 tp!1771322))))

(assert (=> b!6359874 (= tp!1771197 e!3862314)))

(assert (= (and b!6359874 ((_ is Cons!64976) (t!378692 s!2326))) b!6360587))

(declare-fun b_lambda!241803 () Bool)

(assert (= b_lambda!241801 (or b!6359881 b_lambda!241803)))

(declare-fun bs!1593933 () Bool)

(declare-fun d!1995421 () Bool)

(assert (= bs!1593933 (and d!1995421 b!6359881)))

(assert (=> bs!1593933 (= (dynLambda!25773 lambda!350271 (h!71426 zl!343)) (derivationStepZipperUp!1441 (h!71426 zl!343) (h!71424 s!2326)))))

(assert (=> bs!1593933 m!7165756))

(assert (=> d!1995413 d!1995421))

(check-sat (not d!1995355) (not b!6360117) (not d!1995409) (not b!6360389) (not d!1995393) (not d!1995399) (not b!6359982) (not b!6360289) (not b!6360390) (not b!6360391) (not b!6360572) (not b!6360524) (not b!6360570) (not b!6360466) (not b!6360505) (not b!6360202) (not bm!542572) (not b!6360575) (not b!6360436) (not b!6360568) (not b!6360281) (not b!6360582) (not b!6360551) (not b!6360118) tp_is_empty!41787 (not b!6360113) (not b!6360244) (not b!6360553) (not d!1995381) (not b!6360435) (not bm!542619) (not d!1995417) (not d!1995413) (not b!6359990) (not d!1995349) (not b!6360519) (not b!6360576) (not b!6360475) (not bm!542625) (not b!6360444) (not b!6360230) (not d!1995387) (not b!6360231) (not b!6360120) (not bm!542620) (not b!6360470) (not b!6360549) (not d!1995327) (not d!1995403) (not b!6360581) (not d!1995367) (not d!1995375) (not b!6360288) (not d!1995339) (not b!6360550) (not bm!542554) (not b!6360546) (not b!6360282) (not b!6360545) (not bm!542551) (not b!6360468) (not b!6360474) (not b!6360438) (not d!1995317) (not b!6360547) (not bs!1593933) (not b!6360554) (not b!6360563) (not b!6360574) (not d!1995361) (not b!6360521) (not b!6360394) (not bm!542571) (not bm!542627) (not b!6360529) (not d!1995389) (not b_lambda!241803) (not d!1995419) (not bm!542550) (not b!6360469) (not b!6360555) (not b!6360473) (not b!6360437) (not d!1995383) (not d!1995385) (not b!6360571) (not bm!542617) (not b!6360587) (not d!1995415) (not b!6360397) (not b!6360393) (not b!6360115) (not b!6360562) (not d!1995395) (not b!6360526) (not d!1995357) (not b!6360121) (not setNonEmpty!43322) (not b!6360432) (not bm!542626) (not d!1995397) (not b!6360434) (not b!6360430) (not b!6360280) (not b!6360531))
(check-sat)

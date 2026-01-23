; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558418 () Bool)

(assert start!558418)

(declare-fun b!5290794 () Bool)

(assert (=> b!5290794 true))

(assert (=> b!5290794 true))

(declare-fun lambda!267848 () Int)

(declare-fun lambda!267847 () Int)

(assert (=> b!5290794 (not (= lambda!267848 lambda!267847))))

(assert (=> b!5290794 true))

(assert (=> b!5290794 true))

(declare-fun b!5290809 () Bool)

(assert (=> b!5290809 true))

(declare-fun bs!1227186 () Bool)

(declare-fun b!5290827 () Bool)

(assert (= bs!1227186 (and b!5290827 b!5290794)))

(declare-datatypes ((C!30116 0))(
  ( (C!30117 (val!24760 Int)) )
))
(declare-datatypes ((Regex!14923 0))(
  ( (ElementMatch!14923 (c!917803 C!30116)) (Concat!23768 (regOne!30358 Regex!14923) (regTwo!30358 Regex!14923)) (EmptyExpr!14923) (Star!14923 (reg!15252 Regex!14923)) (EmptyLang!14923) (Union!14923 (regOne!30359 Regex!14923) (regTwo!30359 Regex!14923)) )
))
(declare-fun r!7292 () Regex!14923)

(declare-fun lt!2161876 () Regex!14923)

(declare-fun lambda!267850 () Int)

(assert (=> bs!1227186 (= (and (= (regOne!30358 (regOne!30358 r!7292)) (regOne!30358 r!7292)) (= lt!2161876 (regTwo!30358 r!7292))) (= lambda!267850 lambda!267847))))

(assert (=> bs!1227186 (not (= lambda!267850 lambda!267848))))

(assert (=> b!5290827 true))

(assert (=> b!5290827 true))

(assert (=> b!5290827 true))

(declare-fun lambda!267851 () Int)

(assert (=> bs!1227186 (not (= lambda!267851 lambda!267847))))

(assert (=> bs!1227186 (= (and (= (regOne!30358 (regOne!30358 r!7292)) (regOne!30358 r!7292)) (= lt!2161876 (regTwo!30358 r!7292))) (= lambda!267851 lambda!267848))))

(assert (=> b!5290827 (not (= lambda!267851 lambda!267850))))

(assert (=> b!5290827 true))

(assert (=> b!5290827 true))

(assert (=> b!5290827 true))

(declare-fun b!5290792 () Bool)

(declare-fun e!3289143 () Bool)

(declare-fun e!3289133 () Bool)

(assert (=> b!5290792 (= e!3289143 e!3289133)))

(declare-fun res!2243857 () Bool)

(assert (=> b!5290792 (=> res!2243857 e!3289133)))

(declare-datatypes ((List!61068 0))(
  ( (Nil!60944) (Cons!60944 (h!67392 Regex!14923) (t!374273 List!61068)) )
))
(declare-datatypes ((Context!8614 0))(
  ( (Context!8615 (exprs!4807 List!61068)) )
))
(declare-datatypes ((List!61069 0))(
  ( (Nil!60945) (Cons!60945 (h!67393 Context!8614) (t!374274 List!61069)) )
))
(declare-fun lt!2161853 () List!61069)

(declare-fun zl!343 () List!61069)

(declare-fun zipperDepthTotal!84 (List!61069) Int)

(assert (=> b!5290792 (= res!2243857 (>= (zipperDepthTotal!84 lt!2161853) (zipperDepthTotal!84 zl!343)))))

(declare-fun lt!2161859 () Context!8614)

(assert (=> b!5290792 (= lt!2161853 (Cons!60945 lt!2161859 Nil!60945))))

(declare-fun b!5290793 () Bool)

(declare-fun res!2243861 () Bool)

(assert (=> b!5290793 (=> res!2243861 e!3289133)))

(declare-fun zipperDepth!40 (List!61069) Int)

(assert (=> b!5290793 (= res!2243861 (> (zipperDepth!40 lt!2161853) (zipperDepth!40 zl!343)))))

(declare-fun e!3289139 () Bool)

(declare-fun e!3289145 () Bool)

(assert (=> b!5290794 (= e!3289139 e!3289145)))

(declare-fun res!2243855 () Bool)

(assert (=> b!5290794 (=> res!2243855 e!3289145)))

(declare-fun lt!2161850 () Bool)

(declare-datatypes ((List!61070 0))(
  ( (Nil!60946) (Cons!60946 (h!67394 C!30116) (t!374275 List!61070)) )
))
(declare-fun s!2326 () List!61070)

(declare-fun lt!2161868 () Bool)

(get-info :version)

(assert (=> b!5290794 (= res!2243855 (or (not (= lt!2161850 lt!2161868)) ((_ is Nil!60946) s!2326)))))

(declare-fun Exists!2104 (Int) Bool)

(assert (=> b!5290794 (= (Exists!2104 lambda!267847) (Exists!2104 lambda!267848))))

(declare-datatypes ((Unit!153210 0))(
  ( (Unit!153211) )
))
(declare-fun lt!2161880 () Unit!153210)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!758 (Regex!14923 Regex!14923 List!61070) Unit!153210)

(assert (=> b!5290794 (= lt!2161880 (lemmaExistCutMatchRandMatchRSpecEquivalent!758 (regOne!30358 r!7292) (regTwo!30358 r!7292) s!2326))))

(assert (=> b!5290794 (= lt!2161868 (Exists!2104 lambda!267847))))

(declare-datatypes ((tuple2!64244 0))(
  ( (tuple2!64245 (_1!35425 List!61070) (_2!35425 List!61070)) )
))
(declare-datatypes ((Option!15034 0))(
  ( (None!15033) (Some!15033 (v!51062 tuple2!64244)) )
))
(declare-fun isDefined!11737 (Option!15034) Bool)

(declare-fun findConcatSeparation!1448 (Regex!14923 Regex!14923 List!61070 List!61070 List!61070) Option!15034)

(assert (=> b!5290794 (= lt!2161868 (isDefined!11737 (findConcatSeparation!1448 (regOne!30358 r!7292) (regTwo!30358 r!7292) Nil!60946 s!2326 s!2326)))))

(declare-fun lt!2161873 () Unit!153210)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1212 (Regex!14923 Regex!14923 List!61070) Unit!153210)

(assert (=> b!5290794 (= lt!2161873 (lemmaFindConcatSeparationEquivalentToExists!1212 (regOne!30358 r!7292) (regTwo!30358 r!7292) s!2326))))

(declare-fun b!5290795 () Bool)

(declare-fun e!3289142 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2161858 () (InoxSet Context!8614))

(declare-fun matchZipper!1167 ((InoxSet Context!8614) List!61070) Bool)

(declare-fun derivationStepZipper!1166 ((InoxSet Context!8614) C!30116) (InoxSet Context!8614))

(assert (=> b!5290795 (= e!3289142 (not (matchZipper!1167 (derivationStepZipper!1166 lt!2161858 (h!67394 s!2326)) (t!374275 s!2326))))))

(declare-fun e!3289147 () Bool)

(declare-fun tp!1476921 () Bool)

(declare-fun b!5290796 () Bool)

(declare-fun e!3289137 () Bool)

(declare-fun inv!80554 (Context!8614) Bool)

(assert (=> b!5290796 (= e!3289147 (and (inv!80554 (h!67393 zl!343)) e!3289137 tp!1476921))))

(declare-fun b!5290797 () Bool)

(declare-fun e!3289129 () Bool)

(declare-fun e!3289134 () Bool)

(assert (=> b!5290797 (= e!3289129 e!3289134)))

(declare-fun res!2243867 () Bool)

(assert (=> b!5290797 (=> res!2243867 e!3289134)))

(declare-fun lt!2161852 () (InoxSet Context!8614))

(declare-fun lt!2161874 () (InoxSet Context!8614))

(assert (=> b!5290797 (= res!2243867 (not (= lt!2161852 lt!2161874)))))

(declare-fun lt!2161857 () (InoxSet Context!8614))

(declare-fun lt!2161863 () (InoxSet Context!8614))

(assert (=> b!5290797 (= lt!2161874 ((_ map or) lt!2161857 lt!2161863))))

(declare-fun lt!2161889 () Context!8614)

(declare-fun derivationStepZipperDown!371 (Regex!14923 Context!8614 C!30116) (InoxSet Context!8614))

(assert (=> b!5290797 (= lt!2161863 (derivationStepZipperDown!371 (regTwo!30358 (regOne!30358 r!7292)) lt!2161889 (h!67394 s!2326)))))

(declare-fun lt!2161875 () Context!8614)

(assert (=> b!5290797 (= lt!2161857 (derivationStepZipperDown!371 (regOne!30358 (regOne!30358 r!7292)) lt!2161875 (h!67394 s!2326)))))

(declare-fun lt!2161851 () List!61068)

(assert (=> b!5290797 (= lt!2161875 (Context!8615 lt!2161851))))

(assert (=> b!5290797 (= lt!2161851 (Cons!60944 (regTwo!30358 (regOne!30358 r!7292)) (t!374273 (exprs!4807 (h!67393 zl!343)))))))

(declare-fun b!5290799 () Bool)

(declare-fun e!3289148 () Bool)

(declare-fun tp_is_empty!39099 () Bool)

(declare-fun tp!1476923 () Bool)

(assert (=> b!5290799 (= e!3289148 (and tp_is_empty!39099 tp!1476923))))

(declare-fun b!5290800 () Bool)

(declare-fun e!3289136 () Unit!153210)

(declare-fun Unit!153212 () Unit!153210)

(assert (=> b!5290800 (= e!3289136 Unit!153212)))

(declare-fun lt!2161865 () (InoxSet Context!8614))

(declare-fun lt!2161862 () Unit!153210)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!160 ((InoxSet Context!8614) (InoxSet Context!8614) List!61070) Unit!153210)

(assert (=> b!5290800 (= lt!2161862 (lemmaZipperConcatMatchesSameAsBothZippers!160 lt!2161852 lt!2161865 (t!374275 s!2326)))))

(declare-fun res!2243877 () Bool)

(assert (=> b!5290800 (= res!2243877 (matchZipper!1167 lt!2161852 (t!374275 s!2326)))))

(declare-fun e!3289135 () Bool)

(assert (=> b!5290800 (=> res!2243877 e!3289135)))

(assert (=> b!5290800 (= (matchZipper!1167 ((_ map or) lt!2161852 lt!2161865) (t!374275 s!2326)) e!3289135)))

(declare-fun b!5290801 () Bool)

(declare-fun tp!1476920 () Bool)

(assert (=> b!5290801 (= e!3289137 tp!1476920)))

(declare-fun b!5290802 () Bool)

(declare-fun e!3289140 () Bool)

(assert (=> b!5290802 (= e!3289140 (not (matchZipper!1167 lt!2161863 (t!374275 s!2326))))))

(declare-fun b!5290803 () Bool)

(declare-fun e!3289138 () Bool)

(declare-fun tp!1476917 () Bool)

(assert (=> b!5290803 (= e!3289138 tp!1476917)))

(declare-fun b!5290804 () Bool)

(declare-fun res!2243865 () Bool)

(declare-fun e!3289130 () Bool)

(assert (=> b!5290804 (=> (not res!2243865) (not e!3289130))))

(declare-fun z!1189 () (InoxSet Context!8614))

(declare-fun toList!8707 ((InoxSet Context!8614)) List!61069)

(assert (=> b!5290804 (= res!2243865 (= (toList!8707 z!1189) zl!343))))

(declare-fun b!5290805 () Bool)

(assert (=> b!5290805 (= e!3289130 (not e!3289139))))

(declare-fun res!2243856 () Bool)

(assert (=> b!5290805 (=> res!2243856 e!3289139)))

(assert (=> b!5290805 (= res!2243856 (not ((_ is Cons!60945) zl!343)))))

(declare-fun matchRSpec!2026 (Regex!14923 List!61070) Bool)

(assert (=> b!5290805 (= lt!2161850 (matchRSpec!2026 r!7292 s!2326))))

(declare-fun matchR!7108 (Regex!14923 List!61070) Bool)

(assert (=> b!5290805 (= lt!2161850 (matchR!7108 r!7292 s!2326))))

(declare-fun lt!2161884 () Unit!153210)

(declare-fun mainMatchTheorem!2026 (Regex!14923 List!61070) Unit!153210)

(assert (=> b!5290805 (= lt!2161884 (mainMatchTheorem!2026 r!7292 s!2326))))

(declare-fun b!5290806 () Bool)

(assert (=> b!5290806 (= e!3289135 (matchZipper!1167 lt!2161865 (t!374275 s!2326)))))

(declare-fun b!5290807 () Bool)

(declare-fun e!3289141 () Bool)

(assert (=> b!5290807 (= e!3289134 e!3289141)))

(declare-fun res!2243852 () Bool)

(assert (=> b!5290807 (=> res!2243852 e!3289141)))

(assert (=> b!5290807 (= res!2243852 e!3289140)))

(declare-fun res!2243853 () Bool)

(assert (=> b!5290807 (=> (not res!2243853) (not e!3289140))))

(declare-fun lt!2161872 () Bool)

(declare-fun lt!2161885 () Bool)

(assert (=> b!5290807 (= res!2243853 (not (= lt!2161872 lt!2161885)))))

(assert (=> b!5290807 (= lt!2161872 (matchZipper!1167 lt!2161852 (t!374275 s!2326)))))

(declare-fun e!3289144 () Bool)

(assert (=> b!5290807 (= (matchZipper!1167 lt!2161874 (t!374275 s!2326)) e!3289144)))

(declare-fun res!2243873 () Bool)

(assert (=> b!5290807 (=> res!2243873 e!3289144)))

(assert (=> b!5290807 (= res!2243873 lt!2161885)))

(assert (=> b!5290807 (= lt!2161885 (matchZipper!1167 lt!2161857 (t!374275 s!2326)))))

(declare-fun lt!2161882 () Unit!153210)

(assert (=> b!5290807 (= lt!2161882 (lemmaZipperConcatMatchesSameAsBothZippers!160 lt!2161857 lt!2161863 (t!374275 s!2326)))))

(declare-fun setNonEmpty!33953 () Bool)

(declare-fun e!3289131 () Bool)

(declare-fun setRes!33953 () Bool)

(declare-fun tp!1476918 () Bool)

(declare-fun setElem!33953 () Context!8614)

(assert (=> setNonEmpty!33953 (= setRes!33953 (and tp!1476918 (inv!80554 setElem!33953) e!3289131))))

(declare-fun setRest!33953 () (InoxSet Context!8614))

(assert (=> setNonEmpty!33953 (= z!1189 ((_ map or) (store ((as const (Array Context!8614 Bool)) false) setElem!33953 true) setRest!33953))))

(declare-fun b!5290808 () Bool)

(assert (=> b!5290808 (= e!3289144 (matchZipper!1167 lt!2161863 (t!374275 s!2326)))))

(assert (=> b!5290809 (= e!3289145 e!3289129)))

(declare-fun res!2243859 () Bool)

(assert (=> b!5290809 (=> res!2243859 e!3289129)))

(assert (=> b!5290809 (= res!2243859 (or (and ((_ is ElementMatch!14923) (regOne!30358 r!7292)) (= (c!917803 (regOne!30358 r!7292)) (h!67394 s!2326))) ((_ is Union!14923) (regOne!30358 r!7292)) (not ((_ is Concat!23768) (regOne!30358 r!7292)))))))

(declare-fun lt!2161869 () Unit!153210)

(assert (=> b!5290809 (= lt!2161869 e!3289136)))

(declare-fun c!917802 () Bool)

(declare-fun nullable!5092 (Regex!14923) Bool)

(assert (=> b!5290809 (= c!917802 (nullable!5092 (h!67392 (exprs!4807 (h!67393 zl!343)))))))

(declare-fun lambda!267849 () Int)

(declare-fun flatMap!650 ((InoxSet Context!8614) Int) (InoxSet Context!8614))

(declare-fun derivationStepZipperUp!295 (Context!8614 C!30116) (InoxSet Context!8614))

(assert (=> b!5290809 (= (flatMap!650 z!1189 lambda!267849) (derivationStepZipperUp!295 (h!67393 zl!343) (h!67394 s!2326)))))

(declare-fun lt!2161890 () Unit!153210)

(declare-fun lemmaFlatMapOnSingletonSet!182 ((InoxSet Context!8614) Context!8614 Int) Unit!153210)

(assert (=> b!5290809 (= lt!2161890 (lemmaFlatMapOnSingletonSet!182 z!1189 (h!67393 zl!343) lambda!267849))))

(assert (=> b!5290809 (= lt!2161865 (derivationStepZipperUp!295 lt!2161889 (h!67394 s!2326)))))

(assert (=> b!5290809 (= lt!2161852 (derivationStepZipperDown!371 (h!67392 (exprs!4807 (h!67393 zl!343))) lt!2161889 (h!67394 s!2326)))))

(assert (=> b!5290809 (= lt!2161889 (Context!8615 (t!374273 (exprs!4807 (h!67393 zl!343)))))))

(declare-fun lt!2161878 () (InoxSet Context!8614))

(assert (=> b!5290809 (= lt!2161878 (derivationStepZipperUp!295 (Context!8615 (Cons!60944 (h!67392 (exprs!4807 (h!67393 zl!343))) (t!374273 (exprs!4807 (h!67393 zl!343))))) (h!67394 s!2326)))))

(declare-fun b!5290810 () Bool)

(declare-fun res!2243858 () Bool)

(assert (=> b!5290810 (=> res!2243858 e!3289139)))

(assert (=> b!5290810 (= res!2243858 (not ((_ is Cons!60944) (exprs!4807 (h!67393 zl!343)))))))

(declare-fun b!5290811 () Bool)

(declare-fun res!2243874 () Bool)

(assert (=> b!5290811 (=> res!2243874 e!3289143)))

(assert (=> b!5290811 (= res!2243874 (not (= (exprs!4807 (h!67393 zl!343)) (Cons!60944 (Concat!23768 (regOne!30358 (regOne!30358 r!7292)) (regTwo!30358 (regOne!30358 r!7292))) (t!374273 (exprs!4807 (h!67393 zl!343)))))))))

(declare-fun b!5290812 () Bool)

(declare-fun res!2243872 () Bool)

(assert (=> b!5290812 (=> res!2243872 e!3289139)))

(declare-fun generalisedConcat!592 (List!61068) Regex!14923)

(assert (=> b!5290812 (= res!2243872 (not (= r!7292 (generalisedConcat!592 (exprs!4807 (h!67393 zl!343))))))))

(declare-fun b!5290813 () Bool)

(assert (=> b!5290813 (= e!3289138 tp_is_empty!39099)))

(declare-fun res!2243868 () Bool)

(assert (=> start!558418 (=> (not res!2243868) (not e!3289130))))

(declare-fun validRegex!6659 (Regex!14923) Bool)

(assert (=> start!558418 (= res!2243868 (validRegex!6659 r!7292))))

(assert (=> start!558418 e!3289130))

(assert (=> start!558418 e!3289138))

(declare-fun condSetEmpty!33953 () Bool)

(assert (=> start!558418 (= condSetEmpty!33953 (= z!1189 ((as const (Array Context!8614 Bool)) false)))))

(assert (=> start!558418 setRes!33953))

(assert (=> start!558418 e!3289147))

(assert (=> start!558418 e!3289148))

(declare-fun b!5290798 () Bool)

(declare-fun tp!1476919 () Bool)

(declare-fun tp!1476924 () Bool)

(assert (=> b!5290798 (= e!3289138 (and tp!1476919 tp!1476924))))

(declare-fun b!5290814 () Bool)

(declare-fun res!2243876 () Bool)

(assert (=> b!5290814 (=> res!2243876 e!3289139)))

(declare-fun generalisedUnion!852 (List!61068) Regex!14923)

(declare-fun unfocusZipperList!365 (List!61069) List!61068)

(assert (=> b!5290814 (= res!2243876 (not (= r!7292 (generalisedUnion!852 (unfocusZipperList!365 zl!343)))))))

(declare-fun b!5290815 () Bool)

(declare-fun tp!1476916 () Bool)

(assert (=> b!5290815 (= e!3289131 tp!1476916)))

(declare-fun b!5290816 () Bool)

(declare-fun e!3289146 () Bool)

(assert (=> b!5290816 (= e!3289141 e!3289146)))

(declare-fun res!2243866 () Bool)

(assert (=> b!5290816 (=> res!2243866 e!3289146)))

(declare-fun lt!2161849 () (InoxSet Context!8614))

(declare-fun lt!2161879 () (InoxSet Context!8614))

(assert (=> b!5290816 (= res!2243866 (not (= lt!2161849 lt!2161879)))))

(declare-fun lt!2161864 () (InoxSet Context!8614))

(assert (=> b!5290816 (= lt!2161879 ((_ map or) lt!2161857 lt!2161864))))

(assert (=> b!5290816 (= lt!2161864 (derivationStepZipperUp!295 lt!2161875 (h!67394 s!2326)))))

(declare-fun lt!2161854 () (InoxSet Context!8614))

(assert (=> b!5290816 (= (flatMap!650 lt!2161854 lambda!267849) (derivationStepZipperUp!295 lt!2161859 (h!67394 s!2326)))))

(declare-fun lt!2161886 () Unit!153210)

(assert (=> b!5290816 (= lt!2161886 (lemmaFlatMapOnSingletonSet!182 lt!2161854 lt!2161859 lambda!267849))))

(declare-fun lt!2161883 () (InoxSet Context!8614))

(assert (=> b!5290816 (= lt!2161883 (derivationStepZipperUp!295 lt!2161859 (h!67394 s!2326)))))

(assert (=> b!5290816 (= lt!2161849 (derivationStepZipper!1166 lt!2161854 (h!67394 s!2326)))))

(assert (=> b!5290816 (= lt!2161858 (store ((as const (Array Context!8614 Bool)) false) lt!2161875 true))))

(assert (=> b!5290816 (= lt!2161854 (store ((as const (Array Context!8614 Bool)) false) lt!2161859 true))))

(declare-fun lt!2161870 () List!61068)

(assert (=> b!5290816 (= lt!2161859 (Context!8615 lt!2161870))))

(assert (=> b!5290816 (= lt!2161870 (Cons!60944 (regOne!30358 (regOne!30358 r!7292)) lt!2161851))))

(declare-fun setIsEmpty!33953 () Bool)

(assert (=> setIsEmpty!33953 setRes!33953))

(declare-fun b!5290817 () Bool)

(declare-fun e!3289132 () Bool)

(assert (=> b!5290817 (= e!3289132 (matchZipper!1167 lt!2161864 (t!374275 s!2326)))))

(declare-fun b!5290818 () Bool)

(assert (=> b!5290818 (= e!3289146 e!3289143)))

(declare-fun res!2243869 () Bool)

(assert (=> b!5290818 (=> res!2243869 e!3289143)))

(assert (=> b!5290818 (= res!2243869 e!3289142)))

(declare-fun res!2243864 () Bool)

(assert (=> b!5290818 (=> (not res!2243864) (not e!3289142))))

(assert (=> b!5290818 (= res!2243864 (not (= lt!2161872 (matchZipper!1167 lt!2161849 (t!374275 s!2326)))))))

(assert (=> b!5290818 (= (matchZipper!1167 lt!2161879 (t!374275 s!2326)) e!3289132)))

(declare-fun res!2243860 () Bool)

(assert (=> b!5290818 (=> res!2243860 e!3289132)))

(assert (=> b!5290818 (= res!2243860 lt!2161885)))

(declare-fun lt!2161856 () Unit!153210)

(assert (=> b!5290818 (= lt!2161856 (lemmaZipperConcatMatchesSameAsBothZippers!160 lt!2161857 lt!2161864 (t!374275 s!2326)))))

(assert (=> b!5290818 (= (flatMap!650 lt!2161858 lambda!267849) (derivationStepZipperUp!295 lt!2161875 (h!67394 s!2326)))))

(declare-fun lt!2161867 () Unit!153210)

(assert (=> b!5290818 (= lt!2161867 (lemmaFlatMapOnSingletonSet!182 lt!2161858 lt!2161875 lambda!267849))))

(declare-fun b!5290819 () Bool)

(declare-fun Unit!153213 () Unit!153210)

(assert (=> b!5290819 (= e!3289136 Unit!153213)))

(declare-fun b!5290820 () Bool)

(declare-fun res!2243875 () Bool)

(assert (=> b!5290820 (=> (not res!2243875) (not e!3289130))))

(declare-fun unfocusZipper!665 (List!61069) Regex!14923)

(assert (=> b!5290820 (= res!2243875 (= r!7292 (unfocusZipper!665 zl!343)))))

(declare-fun b!5290821 () Bool)

(declare-fun res!2243862 () Bool)

(assert (=> b!5290821 (=> res!2243862 e!3289139)))

(assert (=> b!5290821 (= res!2243862 (or ((_ is EmptyExpr!14923) r!7292) ((_ is EmptyLang!14923) r!7292) ((_ is ElementMatch!14923) r!7292) ((_ is Union!14923) r!7292) (not ((_ is Concat!23768) r!7292))))))

(declare-fun b!5290822 () Bool)

(declare-fun res!2243863 () Bool)

(assert (=> b!5290822 (=> res!2243863 e!3289139)))

(declare-fun isEmpty!32899 (List!61069) Bool)

(assert (=> b!5290822 (= res!2243863 (not (isEmpty!32899 (t!374274 zl!343))))))

(declare-fun b!5290823 () Bool)

(declare-fun res!2243871 () Bool)

(assert (=> b!5290823 (=> res!2243871 e!3289129)))

(assert (=> b!5290823 (= res!2243871 (not (nullable!5092 (regOne!30358 (regOne!30358 r!7292)))))))

(declare-fun b!5290824 () Bool)

(declare-fun res!2243870 () Bool)

(assert (=> b!5290824 (=> res!2243870 e!3289145)))

(declare-fun isEmpty!32900 (List!61068) Bool)

(assert (=> b!5290824 (= res!2243870 (isEmpty!32900 (t!374273 (exprs!4807 (h!67393 zl!343)))))))

(declare-fun b!5290825 () Bool)

(declare-fun res!2243854 () Bool)

(assert (=> b!5290825 (=> res!2243854 e!3289143)))

(declare-fun contextDepthTotal!64 (Context!8614) Int)

(assert (=> b!5290825 (= res!2243854 (>= (contextDepthTotal!64 lt!2161859) (contextDepthTotal!64 (h!67393 zl!343))))))

(declare-fun b!5290826 () Bool)

(declare-fun tp!1476922 () Bool)

(declare-fun tp!1476925 () Bool)

(assert (=> b!5290826 (= e!3289138 (and tp!1476922 tp!1476925))))

(assert (=> b!5290827 (= e!3289133 true)))

(declare-fun lt!2161848 () Regex!14923)

(assert (=> b!5290827 (= lt!2161848 (generalisedConcat!592 (t!374273 (exprs!4807 (h!67393 zl!343)))))))

(declare-fun lt!2161877 () Bool)

(assert (=> b!5290827 (= lt!2161877 (matchRSpec!2026 lt!2161876 s!2326))))

(declare-fun lt!2161881 () Unit!153210)

(assert (=> b!5290827 (= lt!2161881 (mainMatchTheorem!2026 lt!2161876 s!2326))))

(assert (=> b!5290827 (= (Exists!2104 lambda!267850) (Exists!2104 lambda!267851))))

(declare-fun lt!2161866 () Unit!153210)

(assert (=> b!5290827 (= lt!2161866 (lemmaExistCutMatchRandMatchRSpecEquivalent!758 (regOne!30358 (regOne!30358 r!7292)) lt!2161876 s!2326))))

(assert (=> b!5290827 (= (isDefined!11737 (findConcatSeparation!1448 (regOne!30358 (regOne!30358 r!7292)) lt!2161876 Nil!60946 s!2326 s!2326)) (Exists!2104 lambda!267850))))

(declare-fun lt!2161860 () Unit!153210)

(assert (=> b!5290827 (= lt!2161860 (lemmaFindConcatSeparationEquivalentToExists!1212 (regOne!30358 (regOne!30358 r!7292)) lt!2161876 s!2326))))

(declare-fun lt!2161887 () Bool)

(declare-fun lt!2161855 () Regex!14923)

(assert (=> b!5290827 (= lt!2161887 (matchRSpec!2026 lt!2161855 s!2326))))

(declare-fun lt!2161888 () Unit!153210)

(assert (=> b!5290827 (= lt!2161888 (mainMatchTheorem!2026 lt!2161855 s!2326))))

(assert (=> b!5290827 (= lt!2161877 (matchZipper!1167 lt!2161858 s!2326))))

(assert (=> b!5290827 (= lt!2161877 (matchR!7108 lt!2161876 s!2326))))

(declare-fun lt!2161861 () Unit!153210)

(declare-fun theoremZipperRegexEquiv!333 ((InoxSet Context!8614) List!61069 Regex!14923 List!61070) Unit!153210)

(assert (=> b!5290827 (= lt!2161861 (theoremZipperRegexEquiv!333 lt!2161858 (Cons!60945 lt!2161875 Nil!60945) lt!2161876 s!2326))))

(assert (=> b!5290827 (= lt!2161876 (generalisedConcat!592 lt!2161851))))

(assert (=> b!5290827 (= lt!2161887 (matchZipper!1167 lt!2161854 s!2326))))

(assert (=> b!5290827 (= lt!2161887 (matchR!7108 lt!2161855 s!2326))))

(declare-fun lt!2161871 () Unit!153210)

(assert (=> b!5290827 (= lt!2161871 (theoremZipperRegexEquiv!333 lt!2161854 lt!2161853 lt!2161855 s!2326))))

(assert (=> b!5290827 (= lt!2161855 (generalisedConcat!592 lt!2161870))))

(assert (= (and start!558418 res!2243868) b!5290804))

(assert (= (and b!5290804 res!2243865) b!5290820))

(assert (= (and b!5290820 res!2243875) b!5290805))

(assert (= (and b!5290805 (not res!2243856)) b!5290822))

(assert (= (and b!5290822 (not res!2243863)) b!5290812))

(assert (= (and b!5290812 (not res!2243872)) b!5290810))

(assert (= (and b!5290810 (not res!2243858)) b!5290814))

(assert (= (and b!5290814 (not res!2243876)) b!5290821))

(assert (= (and b!5290821 (not res!2243862)) b!5290794))

(assert (= (and b!5290794 (not res!2243855)) b!5290824))

(assert (= (and b!5290824 (not res!2243870)) b!5290809))

(assert (= (and b!5290809 c!917802) b!5290800))

(assert (= (and b!5290809 (not c!917802)) b!5290819))

(assert (= (and b!5290800 (not res!2243877)) b!5290806))

(assert (= (and b!5290809 (not res!2243859)) b!5290823))

(assert (= (and b!5290823 (not res!2243871)) b!5290797))

(assert (= (and b!5290797 (not res!2243867)) b!5290807))

(assert (= (and b!5290807 (not res!2243873)) b!5290808))

(assert (= (and b!5290807 res!2243853) b!5290802))

(assert (= (and b!5290807 (not res!2243852)) b!5290816))

(assert (= (and b!5290816 (not res!2243866)) b!5290818))

(assert (= (and b!5290818 (not res!2243860)) b!5290817))

(assert (= (and b!5290818 res!2243864) b!5290795))

(assert (= (and b!5290818 (not res!2243869)) b!5290811))

(assert (= (and b!5290811 (not res!2243874)) b!5290825))

(assert (= (and b!5290825 (not res!2243854)) b!5290792))

(assert (= (and b!5290792 (not res!2243857)) b!5290793))

(assert (= (and b!5290793 (not res!2243861)) b!5290827))

(assert (= (and start!558418 ((_ is ElementMatch!14923) r!7292)) b!5290813))

(assert (= (and start!558418 ((_ is Concat!23768) r!7292)) b!5290826))

(assert (= (and start!558418 ((_ is Star!14923) r!7292)) b!5290803))

(assert (= (and start!558418 ((_ is Union!14923) r!7292)) b!5290798))

(assert (= (and start!558418 condSetEmpty!33953) setIsEmpty!33953))

(assert (= (and start!558418 (not condSetEmpty!33953)) setNonEmpty!33953))

(assert (= setNonEmpty!33953 b!5290815))

(assert (= b!5290796 b!5290801))

(assert (= (and start!558418 ((_ is Cons!60945) zl!343)) b!5290796))

(assert (= (and start!558418 ((_ is Cons!60946) s!2326)) b!5290799))

(declare-fun m!6328206 () Bool)

(assert (=> b!5290823 m!6328206))

(declare-fun m!6328208 () Bool)

(assert (=> b!5290820 m!6328208))

(declare-fun m!6328210 () Bool)

(assert (=> b!5290794 m!6328210))

(declare-fun m!6328212 () Bool)

(assert (=> b!5290794 m!6328212))

(declare-fun m!6328214 () Bool)

(assert (=> b!5290794 m!6328214))

(declare-fun m!6328216 () Bool)

(assert (=> b!5290794 m!6328216))

(assert (=> b!5290794 m!6328212))

(declare-fun m!6328218 () Bool)

(assert (=> b!5290794 m!6328218))

(assert (=> b!5290794 m!6328214))

(declare-fun m!6328220 () Bool)

(assert (=> b!5290794 m!6328220))

(declare-fun m!6328222 () Bool)

(assert (=> b!5290796 m!6328222))

(declare-fun m!6328224 () Bool)

(assert (=> b!5290809 m!6328224))

(declare-fun m!6328226 () Bool)

(assert (=> b!5290809 m!6328226))

(declare-fun m!6328228 () Bool)

(assert (=> b!5290809 m!6328228))

(declare-fun m!6328230 () Bool)

(assert (=> b!5290809 m!6328230))

(declare-fun m!6328232 () Bool)

(assert (=> b!5290809 m!6328232))

(declare-fun m!6328234 () Bool)

(assert (=> b!5290809 m!6328234))

(declare-fun m!6328236 () Bool)

(assert (=> b!5290809 m!6328236))

(declare-fun m!6328238 () Bool)

(assert (=> b!5290795 m!6328238))

(assert (=> b!5290795 m!6328238))

(declare-fun m!6328240 () Bool)

(assert (=> b!5290795 m!6328240))

(declare-fun m!6328242 () Bool)

(assert (=> b!5290806 m!6328242))

(declare-fun m!6328244 () Bool)

(assert (=> b!5290822 m!6328244))

(declare-fun m!6328246 () Bool)

(assert (=> b!5290814 m!6328246))

(assert (=> b!5290814 m!6328246))

(declare-fun m!6328248 () Bool)

(assert (=> b!5290814 m!6328248))

(declare-fun m!6328250 () Bool)

(assert (=> b!5290827 m!6328250))

(declare-fun m!6328252 () Bool)

(assert (=> b!5290827 m!6328252))

(declare-fun m!6328254 () Bool)

(assert (=> b!5290827 m!6328254))

(declare-fun m!6328256 () Bool)

(assert (=> b!5290827 m!6328256))

(declare-fun m!6328258 () Bool)

(assert (=> b!5290827 m!6328258))

(declare-fun m!6328260 () Bool)

(assert (=> b!5290827 m!6328260))

(declare-fun m!6328262 () Bool)

(assert (=> b!5290827 m!6328262))

(declare-fun m!6328264 () Bool)

(assert (=> b!5290827 m!6328264))

(declare-fun m!6328266 () Bool)

(assert (=> b!5290827 m!6328266))

(declare-fun m!6328268 () Bool)

(assert (=> b!5290827 m!6328268))

(declare-fun m!6328270 () Bool)

(assert (=> b!5290827 m!6328270))

(declare-fun m!6328272 () Bool)

(assert (=> b!5290827 m!6328272))

(assert (=> b!5290827 m!6328266))

(declare-fun m!6328274 () Bool)

(assert (=> b!5290827 m!6328274))

(declare-fun m!6328276 () Bool)

(assert (=> b!5290827 m!6328276))

(assert (=> b!5290827 m!6328254))

(declare-fun m!6328278 () Bool)

(assert (=> b!5290827 m!6328278))

(declare-fun m!6328280 () Bool)

(assert (=> b!5290827 m!6328280))

(declare-fun m!6328282 () Bool)

(assert (=> b!5290827 m!6328282))

(declare-fun m!6328284 () Bool)

(assert (=> b!5290827 m!6328284))

(declare-fun m!6328286 () Bool)

(assert (=> b!5290827 m!6328286))

(declare-fun m!6328288 () Bool)

(assert (=> b!5290825 m!6328288))

(declare-fun m!6328290 () Bool)

(assert (=> b!5290825 m!6328290))

(declare-fun m!6328292 () Bool)

(assert (=> b!5290804 m!6328292))

(declare-fun m!6328294 () Bool)

(assert (=> start!558418 m!6328294))

(declare-fun m!6328296 () Bool)

(assert (=> b!5290824 m!6328296))

(declare-fun m!6328298 () Bool)

(assert (=> b!5290792 m!6328298))

(declare-fun m!6328300 () Bool)

(assert (=> b!5290792 m!6328300))

(declare-fun m!6328302 () Bool)

(assert (=> b!5290802 m!6328302))

(declare-fun m!6328304 () Bool)

(assert (=> b!5290805 m!6328304))

(declare-fun m!6328306 () Bool)

(assert (=> b!5290805 m!6328306))

(declare-fun m!6328308 () Bool)

(assert (=> b!5290805 m!6328308))

(declare-fun m!6328310 () Bool)

(assert (=> setNonEmpty!33953 m!6328310))

(declare-fun m!6328312 () Bool)

(assert (=> b!5290807 m!6328312))

(declare-fun m!6328314 () Bool)

(assert (=> b!5290807 m!6328314))

(declare-fun m!6328316 () Bool)

(assert (=> b!5290807 m!6328316))

(declare-fun m!6328318 () Bool)

(assert (=> b!5290807 m!6328318))

(declare-fun m!6328320 () Bool)

(assert (=> b!5290793 m!6328320))

(declare-fun m!6328322 () Bool)

(assert (=> b!5290793 m!6328322))

(declare-fun m!6328324 () Bool)

(assert (=> b!5290800 m!6328324))

(assert (=> b!5290800 m!6328312))

(declare-fun m!6328326 () Bool)

(assert (=> b!5290800 m!6328326))

(declare-fun m!6328328 () Bool)

(assert (=> b!5290816 m!6328328))

(declare-fun m!6328330 () Bool)

(assert (=> b!5290816 m!6328330))

(declare-fun m!6328332 () Bool)

(assert (=> b!5290816 m!6328332))

(declare-fun m!6328334 () Bool)

(assert (=> b!5290816 m!6328334))

(declare-fun m!6328336 () Bool)

(assert (=> b!5290816 m!6328336))

(declare-fun m!6328338 () Bool)

(assert (=> b!5290816 m!6328338))

(declare-fun m!6328340 () Bool)

(assert (=> b!5290816 m!6328340))

(declare-fun m!6328342 () Bool)

(assert (=> b!5290817 m!6328342))

(declare-fun m!6328344 () Bool)

(assert (=> b!5290797 m!6328344))

(declare-fun m!6328346 () Bool)

(assert (=> b!5290797 m!6328346))

(declare-fun m!6328348 () Bool)

(assert (=> b!5290818 m!6328348))

(declare-fun m!6328350 () Bool)

(assert (=> b!5290818 m!6328350))

(assert (=> b!5290818 m!6328328))

(declare-fun m!6328352 () Bool)

(assert (=> b!5290818 m!6328352))

(declare-fun m!6328354 () Bool)

(assert (=> b!5290818 m!6328354))

(declare-fun m!6328356 () Bool)

(assert (=> b!5290818 m!6328356))

(declare-fun m!6328358 () Bool)

(assert (=> b!5290812 m!6328358))

(assert (=> b!5290808 m!6328302))

(check-sat (not b!5290798) (not b!5290825) (not b!5290803) (not b!5290820) (not b!5290817) (not b!5290823) (not b!5290815) (not b!5290805) (not b!5290799) (not b!5290804) (not b!5290795) (not start!558418) (not b!5290800) (not b!5290824) (not b!5290807) (not b!5290827) (not b!5290793) (not setNonEmpty!33953) (not b!5290792) (not b!5290806) tp_is_empty!39099 (not b!5290818) (not b!5290801) (not b!5290826) (not b!5290812) (not b!5290816) (not b!5290794) (not b!5290808) (not b!5290797) (not b!5290809) (not b!5290814) (not b!5290822) (not b!5290802) (not b!5290796))
(check-sat)

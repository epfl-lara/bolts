; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564494 () Bool)

(assert start!564494)

(declare-fun b!5362969 () Bool)

(assert (=> b!5362969 true))

(assert (=> b!5362969 true))

(declare-fun lambda!276286 () Int)

(declare-fun lambda!276285 () Int)

(assert (=> b!5362969 (not (= lambda!276286 lambda!276285))))

(assert (=> b!5362969 true))

(assert (=> b!5362969 true))

(declare-fun b!5362973 () Bool)

(assert (=> b!5362973 true))

(declare-fun bs!1242094 () Bool)

(declare-fun b!5362990 () Bool)

(assert (= bs!1242094 (and b!5362990 b!5362969)))

(declare-datatypes ((C!30412 0))(
  ( (C!30413 (val!24908 Int)) )
))
(declare-datatypes ((Regex!15071 0))(
  ( (ElementMatch!15071 (c!934005 C!30412)) (Concat!23916 (regOne!30654 Regex!15071) (regTwo!30654 Regex!15071)) (EmptyExpr!15071) (Star!15071 (reg!15400 Regex!15071)) (EmptyLang!15071) (Union!15071 (regOne!30655 Regex!15071) (regTwo!30655 Regex!15071)) )
))
(declare-fun lt!2184936 () Regex!15071)

(declare-fun lambda!276288 () Int)

(declare-fun r!7292 () Regex!15071)

(assert (=> bs!1242094 (= (= lt!2184936 (regOne!30654 r!7292)) (= lambda!276288 lambda!276285))))

(assert (=> bs!1242094 (not (= lambda!276288 lambda!276286))))

(assert (=> b!5362990 true))

(assert (=> b!5362990 true))

(assert (=> b!5362990 true))

(declare-fun lambda!276289 () Int)

(assert (=> bs!1242094 (not (= lambda!276289 lambda!276285))))

(assert (=> bs!1242094 (= (= lt!2184936 (regOne!30654 r!7292)) (= lambda!276289 lambda!276286))))

(assert (=> b!5362990 (not (= lambda!276289 lambda!276288))))

(assert (=> b!5362990 true))

(assert (=> b!5362990 true))

(assert (=> b!5362990 true))

(declare-fun b!5362966 () Bool)

(declare-fun e!3328298 () Bool)

(declare-fun tp!1488809 () Bool)

(assert (=> b!5362966 (= e!3328298 tp!1488809)))

(declare-fun b!5362967 () Bool)

(declare-fun e!3328293 () Bool)

(declare-fun e!3328302 () Bool)

(assert (=> b!5362967 (= e!3328293 e!3328302)))

(declare-fun res!2275930 () Bool)

(assert (=> b!5362967 (=> res!2275930 e!3328302)))

(declare-fun lt!2184933 () Bool)

(assert (=> b!5362967 (= res!2275930 (not lt!2184933))))

(declare-fun e!3328282 () Bool)

(assert (=> b!5362967 e!3328282))

(declare-fun res!2275922 () Bool)

(assert (=> b!5362967 (=> (not res!2275922) (not e!3328282))))

(declare-fun lt!2184938 () Regex!15071)

(declare-datatypes ((List!61512 0))(
  ( (Nil!61388) (Cons!61388 (h!67836 C!30412) (t!374733 List!61512)) )
))
(declare-fun s!2326 () List!61512)

(declare-fun matchR!7256 (Regex!15071 List!61512) Bool)

(declare-fun matchRSpec!2174 (Regex!15071 List!61512) Bool)

(assert (=> b!5362967 (= res!2275922 (= (matchR!7256 lt!2184938 s!2326) (matchRSpec!2174 lt!2184938 s!2326)))))

(declare-datatypes ((Unit!153802 0))(
  ( (Unit!153803) )
))
(declare-fun lt!2184916 () Unit!153802)

(declare-fun mainMatchTheorem!2174 (Regex!15071 List!61512) Unit!153802)

(assert (=> b!5362967 (= lt!2184916 (mainMatchTheorem!2174 lt!2184938 s!2326))))

(declare-datatypes ((List!61513 0))(
  ( (Nil!61389) (Cons!61389 (h!67837 Regex!15071) (t!374734 List!61513)) )
))
(declare-datatypes ((Context!8910 0))(
  ( (Context!8911 (exprs!4955 List!61513)) )
))
(declare-fun setElem!34723 () Context!8910)

(declare-fun setRes!34723 () Bool)

(declare-fun tp!1488816 () Bool)

(declare-fun setNonEmpty!34723 () Bool)

(declare-fun inv!80924 (Context!8910) Bool)

(assert (=> setNonEmpty!34723 (= setRes!34723 (and tp!1488816 (inv!80924 setElem!34723) e!3328298))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8910))

(declare-fun setRest!34723 () (InoxSet Context!8910))

(assert (=> setNonEmpty!34723 (= z!1189 ((_ map or) (store ((as const (Array Context!8910 Bool)) false) setElem!34723 true) setRest!34723))))

(declare-fun b!5362968 () Bool)

(declare-fun res!2275910 () Bool)

(declare-fun e!3328288 () Bool)

(assert (=> b!5362968 (=> res!2275910 e!3328288)))

(declare-datatypes ((List!61514 0))(
  ( (Nil!61390) (Cons!61390 (h!67838 Context!8910) (t!374735 List!61514)) )
))
(declare-fun zl!343 () List!61514)

(declare-fun generalisedUnion!1000 (List!61513) Regex!15071)

(declare-fun unfocusZipperList!513 (List!61514) List!61513)

(assert (=> b!5362968 (= res!2275910 (not (= r!7292 (generalisedUnion!1000 (unfocusZipperList!513 zl!343)))))))

(declare-fun e!3328299 () Bool)

(assert (=> b!5362969 (= e!3328288 e!3328299)))

(declare-fun res!2275909 () Bool)

(assert (=> b!5362969 (=> res!2275909 e!3328299)))

(declare-fun lt!2184910 () Bool)

(get-info :version)

(assert (=> b!5362969 (= res!2275909 (or (not (= lt!2184933 lt!2184910)) ((_ is Nil!61388) s!2326)))))

(declare-fun Exists!2252 (Int) Bool)

(assert (=> b!5362969 (= (Exists!2252 lambda!276285) (Exists!2252 lambda!276286))))

(declare-fun lt!2184942 () Unit!153802)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!906 (Regex!15071 Regex!15071 List!61512) Unit!153802)

(assert (=> b!5362969 (= lt!2184942 (lemmaExistCutMatchRandMatchRSpecEquivalent!906 (regOne!30654 r!7292) (regTwo!30654 r!7292) s!2326))))

(assert (=> b!5362969 (= lt!2184910 (Exists!2252 lambda!276285))))

(declare-datatypes ((tuple2!64540 0))(
  ( (tuple2!64541 (_1!35573 List!61512) (_2!35573 List!61512)) )
))
(declare-datatypes ((Option!15182 0))(
  ( (None!15181) (Some!15181 (v!51210 tuple2!64540)) )
))
(declare-fun isDefined!11885 (Option!15182) Bool)

(declare-fun findConcatSeparation!1596 (Regex!15071 Regex!15071 List!61512 List!61512 List!61512) Option!15182)

(assert (=> b!5362969 (= lt!2184910 (isDefined!11885 (findConcatSeparation!1596 (regOne!30654 r!7292) (regTwo!30654 r!7292) Nil!61388 s!2326 s!2326)))))

(declare-fun lt!2184921 () Unit!153802)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1360 (Regex!15071 Regex!15071 List!61512) Unit!153802)

(assert (=> b!5362969 (= lt!2184921 (lemmaFindConcatSeparationEquivalentToExists!1360 (regOne!30654 r!7292) (regTwo!30654 r!7292) s!2326))))

(declare-fun b!5362970 () Bool)

(declare-fun res!2275932 () Bool)

(assert (=> b!5362970 (=> res!2275932 e!3328293)))

(declare-fun lt!2184919 () Context!8910)

(declare-fun lt!2184909 () Regex!15071)

(declare-fun unfocusZipper!813 (List!61514) Regex!15071)

(assert (=> b!5362970 (= res!2275932 (not (= (unfocusZipper!813 (Cons!61390 lt!2184919 Nil!61390)) lt!2184909)))))

(declare-fun b!5362971 () Bool)

(declare-fun res!2275907 () Bool)

(declare-fun e!3328296 () Bool)

(assert (=> b!5362971 (=> res!2275907 e!3328296)))

(declare-fun lt!2184917 () (InoxSet Context!8910))

(declare-fun lt!2184929 () (InoxSet Context!8910))

(declare-fun matchZipper!1315 ((InoxSet Context!8910) List!61512) Bool)

(assert (=> b!5362971 (= res!2275907 (not (= (matchZipper!1315 lt!2184929 s!2326) (matchZipper!1315 lt!2184917 (t!374733 s!2326)))))))

(declare-fun b!5362972 () Bool)

(declare-fun e!3328289 () Bool)

(assert (=> b!5362972 (= e!3328289 (not e!3328288))))

(declare-fun res!2275913 () Bool)

(assert (=> b!5362972 (=> res!2275913 e!3328288)))

(assert (=> b!5362972 (= res!2275913 (not ((_ is Cons!61390) zl!343)))))

(declare-fun lt!2184907 () Bool)

(assert (=> b!5362972 (= lt!2184933 lt!2184907)))

(assert (=> b!5362972 (= lt!2184907 (matchRSpec!2174 r!7292 s!2326))))

(assert (=> b!5362972 (= lt!2184933 (matchR!7256 r!7292 s!2326))))

(declare-fun lt!2184939 () Unit!153802)

(assert (=> b!5362972 (= lt!2184939 (mainMatchTheorem!2174 r!7292 s!2326))))

(declare-fun setIsEmpty!34723 () Bool)

(assert (=> setIsEmpty!34723 setRes!34723))

(declare-fun e!3328291 () Bool)

(assert (=> b!5362973 (= e!3328299 e!3328291)))

(declare-fun res!2275912 () Bool)

(assert (=> b!5362973 (=> res!2275912 e!3328291)))

(assert (=> b!5362973 (= res!2275912 (or (and ((_ is ElementMatch!15071) (regOne!30654 r!7292)) (= (c!934005 (regOne!30654 r!7292)) (h!67836 s!2326))) ((_ is Union!15071) (regOne!30654 r!7292))))))

(declare-fun lt!2184918 () Unit!153802)

(declare-fun e!3328300 () Unit!153802)

(assert (=> b!5362973 (= lt!2184918 e!3328300)))

(declare-fun c!934004 () Bool)

(declare-fun nullable!5240 (Regex!15071) Bool)

(assert (=> b!5362973 (= c!934004 (nullable!5240 (h!67837 (exprs!4955 (h!67838 zl!343)))))))

(declare-fun lambda!276287 () Int)

(declare-fun flatMap!798 ((InoxSet Context!8910) Int) (InoxSet Context!8910))

(declare-fun derivationStepZipperUp!443 (Context!8910 C!30412) (InoxSet Context!8910))

(assert (=> b!5362973 (= (flatMap!798 z!1189 lambda!276287) (derivationStepZipperUp!443 (h!67838 zl!343) (h!67836 s!2326)))))

(declare-fun lt!2184928 () Unit!153802)

(declare-fun lemmaFlatMapOnSingletonSet!330 ((InoxSet Context!8910) Context!8910 Int) Unit!153802)

(assert (=> b!5362973 (= lt!2184928 (lemmaFlatMapOnSingletonSet!330 z!1189 (h!67838 zl!343) lambda!276287))))

(declare-fun lt!2184930 () (InoxSet Context!8910))

(declare-fun lt!2184931 () Context!8910)

(assert (=> b!5362973 (= lt!2184930 (derivationStepZipperUp!443 lt!2184931 (h!67836 s!2326)))))

(declare-fun lt!2184926 () (InoxSet Context!8910))

(declare-fun derivationStepZipperDown!519 (Regex!15071 Context!8910 C!30412) (InoxSet Context!8910))

(assert (=> b!5362973 (= lt!2184926 (derivationStepZipperDown!519 (h!67837 (exprs!4955 (h!67838 zl!343))) lt!2184931 (h!67836 s!2326)))))

(assert (=> b!5362973 (= lt!2184931 (Context!8911 (t!374734 (exprs!4955 (h!67838 zl!343)))))))

(declare-fun lt!2184927 () (InoxSet Context!8910))

(assert (=> b!5362973 (= lt!2184927 (derivationStepZipperUp!443 (Context!8911 (Cons!61389 (h!67837 (exprs!4955 (h!67838 zl!343))) (t!374734 (exprs!4955 (h!67838 zl!343))))) (h!67836 s!2326)))))

(declare-fun b!5362974 () Bool)

(declare-fun res!2275929 () Bool)

(assert (=> b!5362974 (=> res!2275929 e!3328291)))

(declare-fun e!3328294 () Bool)

(assert (=> b!5362974 (= res!2275929 e!3328294)))

(declare-fun res!2275924 () Bool)

(assert (=> b!5362974 (=> (not res!2275924) (not e!3328294))))

(assert (=> b!5362974 (= res!2275924 ((_ is Concat!23916) (regOne!30654 r!7292)))))

(declare-fun b!5362975 () Bool)

(declare-fun res!2275916 () Bool)

(declare-fun e!3328292 () Bool)

(assert (=> b!5362975 (=> (not res!2275916) (not e!3328292))))

(declare-fun toList!8855 ((InoxSet Context!8910)) List!61514)

(assert (=> b!5362975 (= res!2275916 (= (toList!8855 z!1189) zl!343))))

(declare-fun b!5362976 () Bool)

(declare-fun e!3328284 () Bool)

(assert (=> b!5362976 (= e!3328284 e!3328293)))

(declare-fun res!2275917 () Bool)

(assert (=> b!5362976 (=> res!2275917 e!3328293)))

(declare-fun lt!2184922 () Context!8910)

(assert (=> b!5362976 (= res!2275917 (not (= (unfocusZipper!813 (Cons!61390 lt!2184922 Nil!61390)) (reg!15400 (regOne!30654 r!7292)))))))

(declare-fun lt!2184911 () (InoxSet Context!8910))

(assert (=> b!5362976 (= (flatMap!798 lt!2184911 lambda!276287) (derivationStepZipperUp!443 lt!2184919 (h!67836 s!2326)))))

(declare-fun lt!2184925 () Unit!153802)

(assert (=> b!5362976 (= lt!2184925 (lemmaFlatMapOnSingletonSet!330 lt!2184911 lt!2184919 lambda!276287))))

(declare-fun lt!2184944 () (InoxSet Context!8910))

(assert (=> b!5362976 (= (flatMap!798 lt!2184944 lambda!276287) (derivationStepZipperUp!443 lt!2184922 (h!67836 s!2326)))))

(declare-fun lt!2184935 () Unit!153802)

(assert (=> b!5362976 (= lt!2184935 (lemmaFlatMapOnSingletonSet!330 lt!2184944 lt!2184922 lambda!276287))))

(declare-fun lt!2184940 () (InoxSet Context!8910))

(assert (=> b!5362976 (= lt!2184940 (derivationStepZipperUp!443 lt!2184919 (h!67836 s!2326)))))

(declare-fun lt!2184920 () (InoxSet Context!8910))

(assert (=> b!5362976 (= lt!2184920 (derivationStepZipperUp!443 lt!2184922 (h!67836 s!2326)))))

(assert (=> b!5362976 (= lt!2184911 (store ((as const (Array Context!8910 Bool)) false) lt!2184919 true))))

(assert (=> b!5362976 (= lt!2184944 (store ((as const (Array Context!8910 Bool)) false) lt!2184922 true))))

(assert (=> b!5362976 (= lt!2184922 (Context!8911 (Cons!61389 (reg!15400 (regOne!30654 r!7292)) Nil!61389)))))

(declare-fun b!5362977 () Bool)

(assert (=> b!5362977 (= e!3328282 (or (not lt!2184933) lt!2184907))))

(declare-fun b!5362978 () Bool)

(declare-fun res!2275911 () Bool)

(assert (=> b!5362978 (=> res!2275911 e!3328291)))

(assert (=> b!5362978 (= res!2275911 (or ((_ is Concat!23916) (regOne!30654 r!7292)) (not ((_ is Star!15071) (regOne!30654 r!7292)))))))

(declare-fun b!5362979 () Bool)

(declare-fun e!3328285 () Bool)

(assert (=> b!5362979 (= e!3328296 e!3328285)))

(declare-fun res!2275908 () Bool)

(assert (=> b!5362979 (=> res!2275908 e!3328285)))

(assert (=> b!5362979 (= res!2275908 (not (= r!7292 lt!2184909)))))

(assert (=> b!5362979 (= lt!2184909 (Concat!23916 lt!2184936 (regTwo!30654 r!7292)))))

(declare-fun b!5362980 () Bool)

(declare-fun res!2275925 () Bool)

(assert (=> b!5362980 (=> res!2275925 e!3328296)))

(declare-fun lt!2184937 () Regex!15071)

(assert (=> b!5362980 (= res!2275925 (not (= lt!2184937 r!7292)))))

(declare-fun b!5362981 () Bool)

(assert (=> b!5362981 (= e!3328285 e!3328284)))

(declare-fun res!2275920 () Bool)

(assert (=> b!5362981 (=> res!2275920 e!3328284)))

(declare-fun lt!2184924 () Context!8910)

(assert (=> b!5362981 (= res!2275920 (not (= (unfocusZipper!813 (Cons!61390 lt!2184924 Nil!61390)) lt!2184938)))))

(assert (=> b!5362981 (= lt!2184938 (Concat!23916 (reg!15400 (regOne!30654 r!7292)) lt!2184909))))

(declare-fun b!5362982 () Bool)

(declare-fun e!3328297 () Bool)

(assert (=> b!5362982 (= e!3328291 e!3328297)))

(declare-fun res!2275933 () Bool)

(assert (=> b!5362982 (=> res!2275933 e!3328297)))

(declare-fun lt!2184914 () (InoxSet Context!8910))

(assert (=> b!5362982 (= res!2275933 (not (= lt!2184926 lt!2184914)))))

(assert (=> b!5362982 (= lt!2184914 (derivationStepZipperDown!519 (reg!15400 (regOne!30654 r!7292)) lt!2184919 (h!67836 s!2326)))))

(declare-fun lt!2184943 () List!61513)

(assert (=> b!5362982 (= lt!2184919 (Context!8911 lt!2184943))))

(assert (=> b!5362982 (= lt!2184943 (Cons!61389 lt!2184936 (t!374734 (exprs!4955 (h!67838 zl!343)))))))

(assert (=> b!5362982 (= lt!2184936 (Star!15071 (reg!15400 (regOne!30654 r!7292))))))

(declare-fun b!5362983 () Bool)

(declare-fun res!2275914 () Bool)

(assert (=> b!5362983 (=> res!2275914 e!3328288)))

(declare-fun isEmpty!33363 (List!61514) Bool)

(assert (=> b!5362983 (= res!2275914 (not (isEmpty!33363 (t!374735 zl!343))))))

(declare-fun b!5362984 () Bool)

(assert (=> b!5362984 (= e!3328297 e!3328296)))

(declare-fun res!2275928 () Bool)

(assert (=> b!5362984 (=> res!2275928 e!3328296)))

(assert (=> b!5362984 (= res!2275928 (not (= lt!2184917 lt!2184914)))))

(assert (=> b!5362984 (= (flatMap!798 lt!2184929 lambda!276287) (derivationStepZipperUp!443 lt!2184924 (h!67836 s!2326)))))

(declare-fun lt!2184923 () Unit!153802)

(assert (=> b!5362984 (= lt!2184923 (lemmaFlatMapOnSingletonSet!330 lt!2184929 lt!2184924 lambda!276287))))

(declare-fun lt!2184934 () (InoxSet Context!8910))

(assert (=> b!5362984 (= lt!2184934 (derivationStepZipperUp!443 lt!2184924 (h!67836 s!2326)))))

(declare-fun derivationStepZipper!1310 ((InoxSet Context!8910) C!30412) (InoxSet Context!8910))

(assert (=> b!5362984 (= lt!2184917 (derivationStepZipper!1310 lt!2184929 (h!67836 s!2326)))))

(assert (=> b!5362984 (= lt!2184929 (store ((as const (Array Context!8910 Bool)) false) lt!2184924 true))))

(assert (=> b!5362984 (= lt!2184924 (Context!8911 (Cons!61389 (reg!15400 (regOne!30654 r!7292)) lt!2184943)))))

(declare-fun b!5362985 () Bool)

(declare-fun e!3328283 () Bool)

(declare-fun tp!1488814 () Bool)

(assert (=> b!5362985 (= e!3328283 tp!1488814)))

(declare-fun b!5362986 () Bool)

(declare-fun Unit!153804 () Unit!153802)

(assert (=> b!5362986 (= e!3328300 Unit!153804)))

(declare-fun lt!2184932 () Unit!153802)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!308 ((InoxSet Context!8910) (InoxSet Context!8910) List!61512) Unit!153802)

(assert (=> b!5362986 (= lt!2184932 (lemmaZipperConcatMatchesSameAsBothZippers!308 lt!2184926 lt!2184930 (t!374733 s!2326)))))

(declare-fun res!2275918 () Bool)

(assert (=> b!5362986 (= res!2275918 (matchZipper!1315 lt!2184926 (t!374733 s!2326)))))

(declare-fun e!3328286 () Bool)

(assert (=> b!5362986 (=> res!2275918 e!3328286)))

(assert (=> b!5362986 (= (matchZipper!1315 ((_ map or) lt!2184926 lt!2184930) (t!374733 s!2326)) e!3328286)))

(declare-fun b!5362987 () Bool)

(declare-fun tp_is_empty!39395 () Bool)

(assert (=> b!5362987 (= e!3328283 tp_is_empty!39395)))

(declare-fun b!5362988 () Bool)

(assert (=> b!5362988 (= e!3328292 e!3328289)))

(declare-fun res!2275919 () Bool)

(assert (=> b!5362988 (=> (not res!2275919) (not e!3328289))))

(assert (=> b!5362988 (= res!2275919 (= r!7292 lt!2184937))))

(assert (=> b!5362988 (= lt!2184937 (unfocusZipper!813 zl!343))))

(declare-fun b!5362989 () Bool)

(declare-fun res!2275915 () Bool)

(declare-fun e!3328290 () Bool)

(assert (=> b!5362989 (=> res!2275915 e!3328290)))

(declare-fun lt!2184915 () tuple2!64540)

(assert (=> b!5362989 (= res!2275915 (not (matchR!7256 lt!2184936 (_1!35573 lt!2184915))))))

(declare-fun res!2275921 () Bool)

(assert (=> start!564494 (=> (not res!2275921) (not e!3328292))))

(declare-fun validRegex!6807 (Regex!15071) Bool)

(assert (=> start!564494 (= res!2275921 (validRegex!6807 r!7292))))

(assert (=> start!564494 e!3328292))

(assert (=> start!564494 e!3328283))

(declare-fun condSetEmpty!34723 () Bool)

(assert (=> start!564494 (= condSetEmpty!34723 (= z!1189 ((as const (Array Context!8910 Bool)) false)))))

(assert (=> start!564494 setRes!34723))

(declare-fun e!3328295 () Bool)

(assert (=> start!564494 e!3328295))

(declare-fun e!3328287 () Bool)

(assert (=> start!564494 e!3328287))

(assert (=> b!5362990 (= e!3328302 e!3328290)))

(declare-fun res!2275923 () Bool)

(assert (=> b!5362990 (=> res!2275923 e!3328290)))

(declare-fun ++!13374 (List!61512 List!61512) List!61512)

(assert (=> b!5362990 (= res!2275923 (not (= (++!13374 (_1!35573 lt!2184915) (_2!35573 lt!2184915)) s!2326)))))

(declare-fun lt!2184912 () Option!15182)

(declare-fun get!21115 (Option!15182) tuple2!64540)

(assert (=> b!5362990 (= lt!2184915 (get!21115 lt!2184912))))

(assert (=> b!5362990 (= (Exists!2252 lambda!276288) (Exists!2252 lambda!276289))))

(declare-fun lt!2184908 () Unit!153802)

(assert (=> b!5362990 (= lt!2184908 (lemmaExistCutMatchRandMatchRSpecEquivalent!906 lt!2184936 (regTwo!30654 r!7292) s!2326))))

(assert (=> b!5362990 (= (isDefined!11885 lt!2184912) (Exists!2252 lambda!276288))))

(assert (=> b!5362990 (= lt!2184912 (findConcatSeparation!1596 lt!2184936 (regTwo!30654 r!7292) Nil!61388 s!2326 s!2326))))

(declare-fun lt!2184941 () Unit!153802)

(assert (=> b!5362990 (= lt!2184941 (lemmaFindConcatSeparationEquivalentToExists!1360 lt!2184936 (regTwo!30654 r!7292) s!2326))))

(declare-fun b!5362991 () Bool)

(assert (=> b!5362991 (= e!3328290 true)))

(declare-fun lt!2184913 () Bool)

(assert (=> b!5362991 (= lt!2184913 (matchR!7256 (regTwo!30654 r!7292) (_2!35573 lt!2184915)))))

(declare-fun b!5362992 () Bool)

(assert (=> b!5362992 (= e!3328286 (matchZipper!1315 lt!2184930 (t!374733 s!2326)))))

(declare-fun b!5362993 () Bool)

(declare-fun tp!1488812 () Bool)

(assert (=> b!5362993 (= e!3328287 (and tp_is_empty!39395 tp!1488812))))

(declare-fun b!5362994 () Bool)

(assert (=> b!5362994 (= e!3328294 (nullable!5240 (regOne!30654 (regOne!30654 r!7292))))))

(declare-fun b!5362995 () Bool)

(declare-fun res!2275931 () Bool)

(assert (=> b!5362995 (=> res!2275931 e!3328299)))

(declare-fun isEmpty!33364 (List!61513) Bool)

(assert (=> b!5362995 (= res!2275931 (isEmpty!33364 (t!374734 (exprs!4955 (h!67838 zl!343)))))))

(declare-fun b!5362996 () Bool)

(declare-fun res!2275926 () Bool)

(assert (=> b!5362996 (=> res!2275926 e!3328288)))

(assert (=> b!5362996 (= res!2275926 (not ((_ is Cons!61389) (exprs!4955 (h!67838 zl!343)))))))

(declare-fun b!5362997 () Bool)

(declare-fun tp!1488815 () Bool)

(declare-fun tp!1488811 () Bool)

(assert (=> b!5362997 (= e!3328283 (and tp!1488815 tp!1488811))))

(declare-fun b!5362998 () Bool)

(declare-fun e!3328301 () Bool)

(declare-fun tp!1488817 () Bool)

(assert (=> b!5362998 (= e!3328301 tp!1488817)))

(declare-fun b!5362999 () Bool)

(declare-fun Unit!153805 () Unit!153802)

(assert (=> b!5362999 (= e!3328300 Unit!153805)))

(declare-fun tp!1488808 () Bool)

(declare-fun b!5363000 () Bool)

(assert (=> b!5363000 (= e!3328295 (and (inv!80924 (h!67838 zl!343)) e!3328301 tp!1488808))))

(declare-fun b!5363001 () Bool)

(declare-fun tp!1488810 () Bool)

(declare-fun tp!1488813 () Bool)

(assert (=> b!5363001 (= e!3328283 (and tp!1488810 tp!1488813))))

(declare-fun b!5363002 () Bool)

(declare-fun res!2275927 () Bool)

(assert (=> b!5363002 (=> res!2275927 e!3328288)))

(assert (=> b!5363002 (= res!2275927 (or ((_ is EmptyExpr!15071) r!7292) ((_ is EmptyLang!15071) r!7292) ((_ is ElementMatch!15071) r!7292) ((_ is Union!15071) r!7292) (not ((_ is Concat!23916) r!7292))))))

(declare-fun b!5363003 () Bool)

(declare-fun res!2275906 () Bool)

(assert (=> b!5363003 (=> res!2275906 e!3328288)))

(declare-fun generalisedConcat!740 (List!61513) Regex!15071)

(assert (=> b!5363003 (= res!2275906 (not (= r!7292 (generalisedConcat!740 (exprs!4955 (h!67838 zl!343))))))))

(assert (= (and start!564494 res!2275921) b!5362975))

(assert (= (and b!5362975 res!2275916) b!5362988))

(assert (= (and b!5362988 res!2275919) b!5362972))

(assert (= (and b!5362972 (not res!2275913)) b!5362983))

(assert (= (and b!5362983 (not res!2275914)) b!5363003))

(assert (= (and b!5363003 (not res!2275906)) b!5362996))

(assert (= (and b!5362996 (not res!2275926)) b!5362968))

(assert (= (and b!5362968 (not res!2275910)) b!5363002))

(assert (= (and b!5363002 (not res!2275927)) b!5362969))

(assert (= (and b!5362969 (not res!2275909)) b!5362995))

(assert (= (and b!5362995 (not res!2275931)) b!5362973))

(assert (= (and b!5362973 c!934004) b!5362986))

(assert (= (and b!5362973 (not c!934004)) b!5362999))

(assert (= (and b!5362986 (not res!2275918)) b!5362992))

(assert (= (and b!5362973 (not res!2275912)) b!5362974))

(assert (= (and b!5362974 res!2275924) b!5362994))

(assert (= (and b!5362974 (not res!2275929)) b!5362978))

(assert (= (and b!5362978 (not res!2275911)) b!5362982))

(assert (= (and b!5362982 (not res!2275933)) b!5362984))

(assert (= (and b!5362984 (not res!2275928)) b!5362971))

(assert (= (and b!5362971 (not res!2275907)) b!5362980))

(assert (= (and b!5362980 (not res!2275925)) b!5362979))

(assert (= (and b!5362979 (not res!2275908)) b!5362981))

(assert (= (and b!5362981 (not res!2275920)) b!5362976))

(assert (= (and b!5362976 (not res!2275917)) b!5362970))

(assert (= (and b!5362970 (not res!2275932)) b!5362967))

(assert (= (and b!5362967 res!2275922) b!5362977))

(assert (= (and b!5362967 (not res!2275930)) b!5362990))

(assert (= (and b!5362990 (not res!2275923)) b!5362989))

(assert (= (and b!5362989 (not res!2275915)) b!5362991))

(assert (= (and start!564494 ((_ is ElementMatch!15071) r!7292)) b!5362987))

(assert (= (and start!564494 ((_ is Concat!23916) r!7292)) b!5362997))

(assert (= (and start!564494 ((_ is Star!15071) r!7292)) b!5362985))

(assert (= (and start!564494 ((_ is Union!15071) r!7292)) b!5363001))

(assert (= (and start!564494 condSetEmpty!34723) setIsEmpty!34723))

(assert (= (and start!564494 (not condSetEmpty!34723)) setNonEmpty!34723))

(assert (= setNonEmpty!34723 b!5362966))

(assert (= b!5363000 b!5362998))

(assert (= (and start!564494 ((_ is Cons!61390) zl!343)) b!5363000))

(assert (= (and start!564494 ((_ is Cons!61388) s!2326)) b!5362993))

(declare-fun m!6391338 () Bool)

(assert (=> b!5362972 m!6391338))

(declare-fun m!6391340 () Bool)

(assert (=> b!5362972 m!6391340))

(declare-fun m!6391342 () Bool)

(assert (=> b!5362972 m!6391342))

(declare-fun m!6391344 () Bool)

(assert (=> b!5362986 m!6391344))

(declare-fun m!6391346 () Bool)

(assert (=> b!5362986 m!6391346))

(declare-fun m!6391348 () Bool)

(assert (=> b!5362986 m!6391348))

(declare-fun m!6391350 () Bool)

(assert (=> b!5362981 m!6391350))

(declare-fun m!6391352 () Bool)

(assert (=> b!5362971 m!6391352))

(declare-fun m!6391354 () Bool)

(assert (=> b!5362971 m!6391354))

(declare-fun m!6391356 () Bool)

(assert (=> b!5362995 m!6391356))

(declare-fun m!6391358 () Bool)

(assert (=> b!5362990 m!6391358))

(declare-fun m!6391360 () Bool)

(assert (=> b!5362990 m!6391360))

(declare-fun m!6391362 () Bool)

(assert (=> b!5362990 m!6391362))

(declare-fun m!6391364 () Bool)

(assert (=> b!5362990 m!6391364))

(declare-fun m!6391366 () Bool)

(assert (=> b!5362990 m!6391366))

(declare-fun m!6391368 () Bool)

(assert (=> b!5362990 m!6391368))

(declare-fun m!6391370 () Bool)

(assert (=> b!5362990 m!6391370))

(assert (=> b!5362990 m!6391368))

(declare-fun m!6391372 () Bool)

(assert (=> b!5362990 m!6391372))

(declare-fun m!6391374 () Bool)

(assert (=> b!5362983 m!6391374))

(declare-fun m!6391376 () Bool)

(assert (=> b!5362988 m!6391376))

(declare-fun m!6391378 () Bool)

(assert (=> b!5362992 m!6391378))

(declare-fun m!6391380 () Bool)

(assert (=> b!5362989 m!6391380))

(declare-fun m!6391382 () Bool)

(assert (=> b!5362991 m!6391382))

(declare-fun m!6391384 () Bool)

(assert (=> b!5363000 m!6391384))

(declare-fun m!6391386 () Bool)

(assert (=> b!5362994 m!6391386))

(declare-fun m!6391388 () Bool)

(assert (=> b!5362976 m!6391388))

(declare-fun m!6391390 () Bool)

(assert (=> b!5362976 m!6391390))

(declare-fun m!6391392 () Bool)

(assert (=> b!5362976 m!6391392))

(declare-fun m!6391394 () Bool)

(assert (=> b!5362976 m!6391394))

(declare-fun m!6391396 () Bool)

(assert (=> b!5362976 m!6391396))

(declare-fun m!6391398 () Bool)

(assert (=> b!5362976 m!6391398))

(declare-fun m!6391400 () Bool)

(assert (=> b!5362976 m!6391400))

(declare-fun m!6391402 () Bool)

(assert (=> b!5362976 m!6391402))

(declare-fun m!6391404 () Bool)

(assert (=> b!5362976 m!6391404))

(declare-fun m!6391406 () Bool)

(assert (=> b!5362969 m!6391406))

(declare-fun m!6391408 () Bool)

(assert (=> b!5362969 m!6391408))

(declare-fun m!6391410 () Bool)

(assert (=> b!5362969 m!6391410))

(declare-fun m!6391412 () Bool)

(assert (=> b!5362969 m!6391412))

(declare-fun m!6391414 () Bool)

(assert (=> b!5362969 m!6391414))

(assert (=> b!5362969 m!6391410))

(assert (=> b!5362969 m!6391406))

(declare-fun m!6391416 () Bool)

(assert (=> b!5362969 m!6391416))

(declare-fun m!6391418 () Bool)

(assert (=> start!564494 m!6391418))

(declare-fun m!6391420 () Bool)

(assert (=> b!5362968 m!6391420))

(assert (=> b!5362968 m!6391420))

(declare-fun m!6391422 () Bool)

(assert (=> b!5362968 m!6391422))

(declare-fun m!6391424 () Bool)

(assert (=> b!5362967 m!6391424))

(declare-fun m!6391426 () Bool)

(assert (=> b!5362967 m!6391426))

(declare-fun m!6391428 () Bool)

(assert (=> b!5362967 m!6391428))

(declare-fun m!6391430 () Bool)

(assert (=> b!5362970 m!6391430))

(declare-fun m!6391432 () Bool)

(assert (=> b!5362982 m!6391432))

(declare-fun m!6391434 () Bool)

(assert (=> b!5362984 m!6391434))

(declare-fun m!6391436 () Bool)

(assert (=> b!5362984 m!6391436))

(declare-fun m!6391438 () Bool)

(assert (=> b!5362984 m!6391438))

(declare-fun m!6391440 () Bool)

(assert (=> b!5362984 m!6391440))

(declare-fun m!6391442 () Bool)

(assert (=> b!5362984 m!6391442))

(declare-fun m!6391444 () Bool)

(assert (=> b!5363003 m!6391444))

(declare-fun m!6391446 () Bool)

(assert (=> setNonEmpty!34723 m!6391446))

(declare-fun m!6391448 () Bool)

(assert (=> b!5362973 m!6391448))

(declare-fun m!6391450 () Bool)

(assert (=> b!5362973 m!6391450))

(declare-fun m!6391452 () Bool)

(assert (=> b!5362973 m!6391452))

(declare-fun m!6391454 () Bool)

(assert (=> b!5362973 m!6391454))

(declare-fun m!6391456 () Bool)

(assert (=> b!5362973 m!6391456))

(declare-fun m!6391458 () Bool)

(assert (=> b!5362973 m!6391458))

(declare-fun m!6391460 () Bool)

(assert (=> b!5362973 m!6391460))

(declare-fun m!6391462 () Bool)

(assert (=> b!5362975 m!6391462))

(check-sat tp_is_empty!39395 (not b!5362991) (not b!5363003) (not b!5362975) (not b!5362969) (not b!5362997) (not b!5362985) (not b!5362994) (not b!5362998) (not b!5362970) (not b!5362993) (not b!5362990) (not b!5363000) (not b!5362982) (not start!564494) (not b!5362976) (not b!5362981) (not b!5362966) (not b!5362968) (not b!5362983) (not setNonEmpty!34723) (not b!5363001) (not b!5362986) (not b!5362989) (not b!5362995) (not b!5362971) (not b!5362984) (not b!5362988) (not b!5362992) (not b!5362973) (not b!5362972) (not b!5362967))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567002 () Bool)

(assert start!567002)

(declare-fun b!5397684 () Bool)

(assert (=> b!5397684 true))

(assert (=> b!5397684 true))

(declare-fun lambda!280852 () Int)

(declare-fun lambda!280851 () Int)

(assert (=> b!5397684 (not (= lambda!280852 lambda!280851))))

(assert (=> b!5397684 true))

(assert (=> b!5397684 true))

(declare-fun b!5397674 () Bool)

(assert (=> b!5397674 true))

(declare-fun b!5397705 () Bool)

(assert (=> b!5397705 true))

(declare-fun b!5397662 () Bool)

(declare-datatypes ((Unit!154158 0))(
  ( (Unit!154159) )
))
(declare-fun e!3346946 () Unit!154158)

(declare-fun Unit!154160 () Unit!154158)

(assert (=> b!5397662 (= e!3346946 Unit!154160)))

(declare-datatypes ((C!30588 0))(
  ( (C!30589 (val!24996 Int)) )
))
(declare-datatypes ((List!61776 0))(
  ( (Nil!61652) (Cons!61652 (h!68100 C!30588) (t!374999 List!61776)) )
))
(declare-fun s!2326 () List!61776)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15159 0))(
  ( (ElementMatch!15159 (c!940681 C!30588)) (Concat!24004 (regOne!30830 Regex!15159) (regTwo!30830 Regex!15159)) (EmptyExpr!15159) (Star!15159 (reg!15488 Regex!15159)) (EmptyLang!15159) (Union!15159 (regOne!30831 Regex!15159) (regTwo!30831 Regex!15159)) )
))
(declare-datatypes ((List!61777 0))(
  ( (Nil!61653) (Cons!61653 (h!68101 Regex!15159) (t!375000 List!61777)) )
))
(declare-datatypes ((Context!9086 0))(
  ( (Context!9087 (exprs!5043 List!61777)) )
))
(declare-fun lt!2199960 () (InoxSet Context!9086))

(declare-fun lt!2199971 () (InoxSet Context!9086))

(declare-fun lt!2199942 () Unit!154158)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!396 ((InoxSet Context!9086) (InoxSet Context!9086) List!61776) Unit!154158)

(assert (=> b!5397662 (= lt!2199942 (lemmaZipperConcatMatchesSameAsBothZippers!396 lt!2199971 lt!2199960 (t!374999 s!2326)))))

(declare-fun res!2294369 () Bool)

(declare-fun matchZipper!1403 ((InoxSet Context!9086) List!61776) Bool)

(assert (=> b!5397662 (= res!2294369 (matchZipper!1403 lt!2199971 (t!374999 s!2326)))))

(declare-fun e!3346952 () Bool)

(assert (=> b!5397662 (=> res!2294369 e!3346952)))

(assert (=> b!5397662 (= (matchZipper!1403 ((_ map or) lt!2199971 lt!2199960) (t!374999 s!2326)) e!3346952)))

(declare-fun b!5397663 () Bool)

(declare-fun e!3346943 () Bool)

(declare-fun e!3346959 () Bool)

(assert (=> b!5397663 (= e!3346943 e!3346959)))

(declare-fun res!2294345 () Bool)

(assert (=> b!5397663 (=> res!2294345 e!3346959)))

(declare-fun lt!2199983 () (InoxSet Context!9086))

(assert (=> b!5397663 (= res!2294345 (not (= lt!2199971 lt!2199983)))))

(declare-fun r!7292 () Regex!15159)

(declare-fun lt!2199938 () Context!9086)

(declare-fun derivationStepZipperDown!607 (Regex!15159 Context!9086 C!30588) (InoxSet Context!9086))

(assert (=> b!5397663 (= lt!2199983 (derivationStepZipperDown!607 (reg!15488 (regOne!30830 r!7292)) lt!2199938 (h!68100 s!2326)))))

(declare-fun lt!2199950 () List!61777)

(assert (=> b!5397663 (= lt!2199938 (Context!9087 lt!2199950))))

(declare-fun lt!2199974 () Regex!15159)

(declare-datatypes ((List!61778 0))(
  ( (Nil!61654) (Cons!61654 (h!68102 Context!9086) (t!375001 List!61778)) )
))
(declare-fun zl!343 () List!61778)

(assert (=> b!5397663 (= lt!2199950 (Cons!61653 lt!2199974 (t!375000 (exprs!5043 (h!68102 zl!343)))))))

(assert (=> b!5397663 (= lt!2199974 (Star!15159 (reg!15488 (regOne!30830 r!7292))))))

(declare-fun setRes!35111 () Bool)

(declare-fun tp!1493897 () Bool)

(declare-fun setNonEmpty!35111 () Bool)

(declare-fun e!3346953 () Bool)

(declare-fun setElem!35111 () Context!9086)

(declare-fun inv!81144 (Context!9086) Bool)

(assert (=> setNonEmpty!35111 (= setRes!35111 (and tp!1493897 (inv!81144 setElem!35111) e!3346953))))

(declare-fun z!1189 () (InoxSet Context!9086))

(declare-fun setRest!35111 () (InoxSet Context!9086))

(assert (=> setNonEmpty!35111 (= z!1189 ((_ map or) (store ((as const (Array Context!9086 Bool)) false) setElem!35111 true) setRest!35111))))

(declare-fun b!5397664 () Bool)

(declare-fun e!3346950 () Bool)

(declare-fun tp!1493893 () Bool)

(declare-fun tp!1493901 () Bool)

(assert (=> b!5397664 (= e!3346950 (and tp!1493893 tp!1493901))))

(declare-fun tp!1493900 () Bool)

(declare-fun e!3346944 () Bool)

(declare-fun e!3346939 () Bool)

(declare-fun b!5397665 () Bool)

(assert (=> b!5397665 (= e!3346944 (and (inv!81144 (h!68102 zl!343)) e!3346939 tp!1493900))))

(declare-fun b!5397667 () Bool)

(declare-fun e!3346938 () Bool)

(assert (=> b!5397667 (= e!3346938 (not (matchZipper!1403 lt!2199960 (t!374999 s!2326))))))

(declare-fun b!5397668 () Bool)

(declare-fun Unit!154161 () Unit!154158)

(assert (=> b!5397668 (= e!3346946 Unit!154161)))

(declare-fun b!5397669 () Bool)

(declare-fun tp!1493896 () Bool)

(declare-fun tp!1493895 () Bool)

(assert (=> b!5397669 (= e!3346950 (and tp!1493896 tp!1493895))))

(declare-fun b!5397670 () Bool)

(declare-fun res!2294361 () Bool)

(declare-fun e!3346957 () Bool)

(assert (=> b!5397670 (=> res!2294361 e!3346957)))

(declare-fun lt!2199948 () Regex!15159)

(assert (=> b!5397670 (= res!2294361 (not (= lt!2199948 r!7292)))))

(declare-fun b!5397671 () Bool)

(declare-fun e!3346958 () Bool)

(declare-fun e!3346960 () Bool)

(assert (=> b!5397671 (= e!3346958 e!3346960)))

(declare-fun res!2294339 () Bool)

(assert (=> b!5397671 (=> res!2294339 e!3346960)))

(declare-fun lt!2199978 () List!61776)

(assert (=> b!5397671 (= res!2294339 (not (= s!2326 lt!2199978)))))

(declare-datatypes ((tuple2!64716 0))(
  ( (tuple2!64717 (_1!35661 List!61776) (_2!35661 List!61776)) )
))
(declare-fun lt!2199979 () tuple2!64716)

(declare-fun ++!13491 (List!61776 List!61776) List!61776)

(assert (=> b!5397671 (= lt!2199978 (++!13491 (_1!35661 lt!2199979) (_2!35661 lt!2199979)))))

(declare-datatypes ((Option!15270 0))(
  ( (None!15269) (Some!15269 (v!51298 tuple2!64716)) )
))
(declare-fun lt!2199969 () Option!15270)

(declare-fun get!21241 (Option!15270) tuple2!64716)

(assert (=> b!5397671 (= lt!2199979 (get!21241 lt!2199969))))

(declare-fun isDefined!11973 (Option!15270) Bool)

(assert (=> b!5397671 (isDefined!11973 lt!2199969)))

(declare-fun lt!2199937 () (InoxSet Context!9086))

(declare-fun lt!2199968 () (InoxSet Context!9086))

(declare-fun findConcatSeparationZippers!16 ((InoxSet Context!9086) (InoxSet Context!9086) List!61776 List!61776 List!61776) Option!15270)

(assert (=> b!5397671 (= lt!2199969 (findConcatSeparationZippers!16 lt!2199937 lt!2199968 Nil!61652 s!2326 s!2326))))

(declare-fun lt!2199943 () Unit!154158)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!16 ((InoxSet Context!9086) Context!9086 List!61776) Unit!154158)

(assert (=> b!5397671 (= lt!2199943 (lemmaConcatZipperMatchesStringThenFindConcatDefined!16 lt!2199937 lt!2199938 s!2326))))

(declare-fun b!5397672 () Bool)

(declare-fun e!3346947 () Bool)

(declare-fun e!3346945 () Bool)

(assert (=> b!5397672 (= e!3346947 e!3346945)))

(declare-fun res!2294348 () Bool)

(assert (=> b!5397672 (=> res!2294348 e!3346945)))

(declare-fun lt!2199964 () Bool)

(assert (=> b!5397672 (= res!2294348 lt!2199964)))

(declare-fun lt!2199966 () Regex!15159)

(declare-fun matchR!7344 (Regex!15159 List!61776) Bool)

(declare-fun matchRSpec!2262 (Regex!15159 List!61776) Bool)

(assert (=> b!5397672 (= (matchR!7344 lt!2199966 s!2326) (matchRSpec!2262 lt!2199966 s!2326))))

(declare-fun lt!2199958 () Unit!154158)

(declare-fun mainMatchTheorem!2262 (Regex!15159 List!61776) Unit!154158)

(assert (=> b!5397672 (= lt!2199958 (mainMatchTheorem!2262 lt!2199966 s!2326))))

(declare-fun b!5397673 () Bool)

(declare-fun tp!1493892 () Bool)

(assert (=> b!5397673 (= e!3346950 tp!1493892)))

(declare-fun setIsEmpty!35111 () Bool)

(assert (=> setIsEmpty!35111 setRes!35111))

(declare-fun e!3346949 () Bool)

(assert (=> b!5397674 (= e!3346949 e!3346943)))

(declare-fun res!2294343 () Bool)

(assert (=> b!5397674 (=> res!2294343 e!3346943)))

(get-info :version)

(assert (=> b!5397674 (= res!2294343 (or (and ((_ is ElementMatch!15159) (regOne!30830 r!7292)) (= (c!940681 (regOne!30830 r!7292)) (h!68100 s!2326))) ((_ is Union!15159) (regOne!30830 r!7292))))))

(declare-fun lt!2199959 () Unit!154158)

(assert (=> b!5397674 (= lt!2199959 e!3346946)))

(declare-fun c!940680 () Bool)

(declare-fun lt!2199973 () Bool)

(assert (=> b!5397674 (= c!940680 lt!2199973)))

(declare-fun nullable!5328 (Regex!15159) Bool)

(assert (=> b!5397674 (= lt!2199973 (nullable!5328 (h!68101 (exprs!5043 (h!68102 zl!343)))))))

(declare-fun lambda!280853 () Int)

(declare-fun flatMap!886 ((InoxSet Context!9086) Int) (InoxSet Context!9086))

(declare-fun derivationStepZipperUp!531 (Context!9086 C!30588) (InoxSet Context!9086))

(assert (=> b!5397674 (= (flatMap!886 z!1189 lambda!280853) (derivationStepZipperUp!531 (h!68102 zl!343) (h!68100 s!2326)))))

(declare-fun lt!2199981 () Unit!154158)

(declare-fun lemmaFlatMapOnSingletonSet!418 ((InoxSet Context!9086) Context!9086 Int) Unit!154158)

(assert (=> b!5397674 (= lt!2199981 (lemmaFlatMapOnSingletonSet!418 z!1189 (h!68102 zl!343) lambda!280853))))

(declare-fun lt!2199940 () Context!9086)

(assert (=> b!5397674 (= lt!2199960 (derivationStepZipperUp!531 lt!2199940 (h!68100 s!2326)))))

(assert (=> b!5397674 (= lt!2199971 (derivationStepZipperDown!607 (h!68101 (exprs!5043 (h!68102 zl!343))) lt!2199940 (h!68100 s!2326)))))

(assert (=> b!5397674 (= lt!2199940 (Context!9087 (t!375000 (exprs!5043 (h!68102 zl!343)))))))

(declare-fun lt!2199951 () (InoxSet Context!9086))

(assert (=> b!5397674 (= lt!2199951 (derivationStepZipperUp!531 (Context!9087 (Cons!61653 (h!68101 (exprs!5043 (h!68102 zl!343))) (t!375000 (exprs!5043 (h!68102 zl!343))))) (h!68100 s!2326)))))

(declare-fun b!5397675 () Bool)

(declare-fun res!2294357 () Bool)

(assert (=> b!5397675 (=> res!2294357 e!3346949)))

(declare-fun isEmpty!33645 (List!61777) Bool)

(assert (=> b!5397675 (= res!2294357 (isEmpty!33645 (t!375000 (exprs!5043 (h!68102 zl!343)))))))

(declare-fun b!5397676 () Bool)

(declare-fun res!2294358 () Bool)

(declare-fun e!3346948 () Bool)

(assert (=> b!5397676 (=> res!2294358 e!3346948)))

(declare-fun generalisedConcat!828 (List!61777) Regex!15159)

(assert (=> b!5397676 (= res!2294358 (not (= r!7292 (generalisedConcat!828 (exprs!5043 (h!68102 zl!343))))))))

(declare-fun b!5397677 () Bool)

(declare-fun e!3346940 () Bool)

(declare-fun e!3346941 () Bool)

(assert (=> b!5397677 (= e!3346940 e!3346941)))

(declare-fun res!2294347 () Bool)

(assert (=> b!5397677 (=> (not res!2294347) (not e!3346941))))

(assert (=> b!5397677 (= res!2294347 (= r!7292 lt!2199948))))

(declare-fun unfocusZipper!901 (List!61778) Regex!15159)

(assert (=> b!5397677 (= lt!2199948 (unfocusZipper!901 zl!343))))

(declare-fun b!5397678 () Bool)

(assert (=> b!5397678 (= e!3346941 (not e!3346948))))

(declare-fun res!2294340 () Bool)

(assert (=> b!5397678 (=> res!2294340 e!3346948)))

(assert (=> b!5397678 (= res!2294340 (not ((_ is Cons!61654) zl!343)))))

(assert (=> b!5397678 (= lt!2199964 (matchRSpec!2262 r!7292 s!2326))))

(assert (=> b!5397678 (= lt!2199964 (matchR!7344 r!7292 s!2326))))

(declare-fun lt!2199962 () Unit!154158)

(assert (=> b!5397678 (= lt!2199962 (mainMatchTheorem!2262 r!7292 s!2326))))

(declare-fun b!5397679 () Bool)

(declare-fun e!3346955 () Bool)

(assert (=> b!5397679 (= e!3346945 e!3346955)))

(declare-fun res!2294366 () Bool)

(assert (=> b!5397679 (=> res!2294366 e!3346955)))

(assert (=> b!5397679 (= res!2294366 e!3346938)))

(declare-fun res!2294365 () Bool)

(assert (=> b!5397679 (=> (not res!2294365) (not e!3346938))))

(declare-fun lt!2199944 () Bool)

(assert (=> b!5397679 (= res!2294365 (not lt!2199944))))

(assert (=> b!5397679 (= lt!2199944 (matchZipper!1403 lt!2199971 (t!374999 s!2326)))))

(declare-fun b!5397680 () Bool)

(declare-fun res!2294354 () Bool)

(assert (=> b!5397680 (=> res!2294354 e!3346948)))

(declare-fun isEmpty!33646 (List!61778) Bool)

(assert (=> b!5397680 (= res!2294354 (not (isEmpty!33646 (t!375001 zl!343))))))

(declare-fun res!2294370 () Bool)

(assert (=> start!567002 (=> (not res!2294370) (not e!3346940))))

(declare-fun validRegex!6895 (Regex!15159) Bool)

(assert (=> start!567002 (= res!2294370 (validRegex!6895 r!7292))))

(assert (=> start!567002 e!3346940))

(assert (=> start!567002 e!3346950))

(declare-fun condSetEmpty!35111 () Bool)

(assert (=> start!567002 (= condSetEmpty!35111 (= z!1189 ((as const (Array Context!9086 Bool)) false)))))

(assert (=> start!567002 setRes!35111))

(assert (=> start!567002 e!3346944))

(declare-fun e!3346942 () Bool)

(assert (=> start!567002 e!3346942))

(declare-fun b!5397666 () Bool)

(declare-fun res!2294344 () Bool)

(assert (=> b!5397666 (=> res!2294344 e!3346948)))

(declare-fun generalisedUnion!1088 (List!61777) Regex!15159)

(declare-fun unfocusZipperList!601 (List!61778) List!61777)

(assert (=> b!5397666 (= res!2294344 (not (= r!7292 (generalisedUnion!1088 (unfocusZipperList!601 zl!343)))))))

(declare-fun b!5397681 () Bool)

(declare-fun res!2294371 () Bool)

(assert (=> b!5397681 (=> res!2294371 e!3346960)))

(assert (=> b!5397681 (= res!2294371 (not (matchZipper!1403 lt!2199937 (_1!35661 lt!2199979))))))

(declare-fun b!5397682 () Bool)

(assert (=> b!5397682 (= e!3346952 (matchZipper!1403 lt!2199960 (t!374999 s!2326)))))

(declare-fun b!5397683 () Bool)

(declare-fun e!3346951 () Bool)

(assert (=> b!5397683 (= e!3346951 e!3346947)))

(declare-fun res!2294360 () Bool)

(assert (=> b!5397683 (=> res!2294360 e!3346947)))

(declare-fun lt!2199957 () List!61778)

(declare-fun lt!2199980 () Regex!15159)

(assert (=> b!5397683 (= res!2294360 (not (= (unfocusZipper!901 lt!2199957) lt!2199980)))))

(assert (=> b!5397683 (= lt!2199957 (Cons!61654 lt!2199938 Nil!61654))))

(assert (=> b!5397684 (= e!3346948 e!3346949)))

(declare-fun res!2294351 () Bool)

(assert (=> b!5397684 (=> res!2294351 e!3346949)))

(declare-fun lt!2199963 () Bool)

(assert (=> b!5397684 (= res!2294351 (or (not (= lt!2199964 lt!2199963)) ((_ is Nil!61652) s!2326)))))

(declare-fun Exists!2340 (Int) Bool)

(assert (=> b!5397684 (= (Exists!2340 lambda!280851) (Exists!2340 lambda!280852))))

(declare-fun lt!2199952 () Unit!154158)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!994 (Regex!15159 Regex!15159 List!61776) Unit!154158)

(assert (=> b!5397684 (= lt!2199952 (lemmaExistCutMatchRandMatchRSpecEquivalent!994 (regOne!30830 r!7292) (regTwo!30830 r!7292) s!2326))))

(assert (=> b!5397684 (= lt!2199963 (Exists!2340 lambda!280851))))

(declare-fun findConcatSeparation!1684 (Regex!15159 Regex!15159 List!61776 List!61776 List!61776) Option!15270)

(assert (=> b!5397684 (= lt!2199963 (isDefined!11973 (findConcatSeparation!1684 (regOne!30830 r!7292) (regTwo!30830 r!7292) Nil!61652 s!2326 s!2326)))))

(declare-fun lt!2199953 () Unit!154158)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1448 (Regex!15159 Regex!15159 List!61776) Unit!154158)

(assert (=> b!5397684 (= lt!2199953 (lemmaFindConcatSeparationEquivalentToExists!1448 (regOne!30830 r!7292) (regTwo!30830 r!7292) s!2326))))

(declare-fun b!5397685 () Bool)

(declare-fun tp_is_empty!39571 () Bool)

(assert (=> b!5397685 (= e!3346950 tp_is_empty!39571)))

(declare-fun b!5397686 () Bool)

(declare-fun tp!1493899 () Bool)

(assert (=> b!5397686 (= e!3346953 tp!1493899)))

(declare-fun b!5397687 () Bool)

(declare-fun res!2294363 () Bool)

(assert (=> b!5397687 (=> res!2294363 e!3346945)))

(assert (=> b!5397687 (= res!2294363 (not lt!2199973))))

(declare-fun b!5397688 () Bool)

(declare-fun e!3346956 () Bool)

(assert (=> b!5397688 (= e!3346959 e!3346956)))

(declare-fun res!2294362 () Bool)

(assert (=> b!5397688 (=> res!2294362 e!3346956)))

(declare-fun lt!2199972 () (InoxSet Context!9086))

(assert (=> b!5397688 (= res!2294362 (not (= lt!2199972 lt!2199983)))))

(declare-fun lt!2199965 () Context!9086)

(declare-fun lt!2199970 () (InoxSet Context!9086))

(assert (=> b!5397688 (= (flatMap!886 lt!2199970 lambda!280853) (derivationStepZipperUp!531 lt!2199965 (h!68100 s!2326)))))

(declare-fun lt!2199976 () Unit!154158)

(assert (=> b!5397688 (= lt!2199976 (lemmaFlatMapOnSingletonSet!418 lt!2199970 lt!2199965 lambda!280853))))

(declare-fun lt!2199961 () (InoxSet Context!9086))

(assert (=> b!5397688 (= lt!2199961 (derivationStepZipperUp!531 lt!2199965 (h!68100 s!2326)))))

(declare-fun derivationStepZipper!1398 ((InoxSet Context!9086) C!30588) (InoxSet Context!9086))

(assert (=> b!5397688 (= lt!2199972 (derivationStepZipper!1398 lt!2199970 (h!68100 s!2326)))))

(assert (=> b!5397688 (= lt!2199970 (store ((as const (Array Context!9086 Bool)) false) lt!2199965 true))))

(assert (=> b!5397688 (= lt!2199965 (Context!9087 (Cons!61653 (reg!15488 (regOne!30830 r!7292)) lt!2199950)))))

(declare-fun b!5397689 () Bool)

(declare-fun res!2294342 () Bool)

(assert (=> b!5397689 (=> res!2294342 e!3346943)))

(assert (=> b!5397689 (= res!2294342 (or ((_ is Concat!24004) (regOne!30830 r!7292)) (not ((_ is Star!15159) (regOne!30830 r!7292)))))))

(declare-fun b!5397690 () Bool)

(declare-fun res!2294350 () Bool)

(assert (=> b!5397690 (=> res!2294350 e!3346943)))

(declare-fun e!3346954 () Bool)

(assert (=> b!5397690 (= res!2294350 e!3346954)))

(declare-fun res!2294367 () Bool)

(assert (=> b!5397690 (=> (not res!2294367) (not e!3346954))))

(assert (=> b!5397690 (= res!2294367 ((_ is Concat!24004) (regOne!30830 r!7292)))))

(declare-fun b!5397691 () Bool)

(declare-fun res!2294338 () Bool)

(assert (=> b!5397691 (=> res!2294338 e!3346945)))

(assert (=> b!5397691 (= res!2294338 (not (matchZipper!1403 z!1189 s!2326)))))

(declare-fun b!5397692 () Bool)

(declare-fun tp!1493894 () Bool)

(assert (=> b!5397692 (= e!3346939 tp!1493894)))

(declare-fun b!5397693 () Bool)

(assert (=> b!5397693 (= e!3346956 e!3346957)))

(declare-fun res!2294364 () Bool)

(assert (=> b!5397693 (=> res!2294364 e!3346957)))

(declare-fun lt!2199954 () Bool)

(assert (=> b!5397693 (= res!2294364 (not (= lt!2199954 (matchZipper!1403 lt!2199972 (t!374999 s!2326)))))))

(assert (=> b!5397693 (= lt!2199954 (matchZipper!1403 lt!2199970 s!2326))))

(declare-fun b!5397694 () Bool)

(declare-fun e!3346961 () Bool)

(assert (=> b!5397694 (= e!3346961 e!3346951)))

(declare-fun res!2294341 () Bool)

(assert (=> b!5397694 (=> res!2294341 e!3346951)))

(declare-fun lt!2199956 () List!61778)

(assert (=> b!5397694 (= res!2294341 (not (= (unfocusZipper!901 lt!2199956) (reg!15488 (regOne!30830 r!7292)))))))

(declare-fun lt!2199949 () Context!9086)

(assert (=> b!5397694 (= lt!2199956 (Cons!61654 lt!2199949 Nil!61654))))

(assert (=> b!5397694 (= (flatMap!886 lt!2199968 lambda!280853) (derivationStepZipperUp!531 lt!2199938 (h!68100 s!2326)))))

(declare-fun lt!2199941 () Unit!154158)

(assert (=> b!5397694 (= lt!2199941 (lemmaFlatMapOnSingletonSet!418 lt!2199968 lt!2199938 lambda!280853))))

(assert (=> b!5397694 (= (flatMap!886 lt!2199937 lambda!280853) (derivationStepZipperUp!531 lt!2199949 (h!68100 s!2326)))))

(declare-fun lt!2199977 () Unit!154158)

(assert (=> b!5397694 (= lt!2199977 (lemmaFlatMapOnSingletonSet!418 lt!2199937 lt!2199949 lambda!280853))))

(declare-fun lt!2199975 () (InoxSet Context!9086))

(assert (=> b!5397694 (= lt!2199975 (derivationStepZipperUp!531 lt!2199938 (h!68100 s!2326)))))

(declare-fun lt!2199967 () (InoxSet Context!9086))

(assert (=> b!5397694 (= lt!2199967 (derivationStepZipperUp!531 lt!2199949 (h!68100 s!2326)))))

(assert (=> b!5397694 (= lt!2199968 (store ((as const (Array Context!9086 Bool)) false) lt!2199938 true))))

(assert (=> b!5397694 (= lt!2199937 (store ((as const (Array Context!9086 Bool)) false) lt!2199949 true))))

(declare-fun lt!2199982 () List!61777)

(assert (=> b!5397694 (= lt!2199949 (Context!9087 lt!2199982))))

(assert (=> b!5397694 (= lt!2199982 (Cons!61653 (reg!15488 (regOne!30830 r!7292)) Nil!61653))))

(declare-fun b!5397695 () Bool)

(assert (=> b!5397695 (= e!3346954 (nullable!5328 (regOne!30830 (regOne!30830 r!7292))))))

(declare-fun b!5397696 () Bool)

(declare-fun res!2294352 () Bool)

(assert (=> b!5397696 (=> (not res!2294352) (not e!3346940))))

(declare-fun toList!8943 ((InoxSet Context!9086)) List!61778)

(assert (=> b!5397696 (= res!2294352 (= (toList!8943 z!1189) zl!343))))

(declare-fun b!5397697 () Bool)

(declare-fun res!2294368 () Bool)

(assert (=> b!5397697 (=> res!2294368 e!3346955)))

(assert (=> b!5397697 (= res!2294368 (or (not lt!2199944) (not lt!2199954)))))

(declare-fun b!5397698 () Bool)

(declare-fun res!2294355 () Bool)

(assert (=> b!5397698 (=> res!2294355 e!3346960)))

(assert (=> b!5397698 (= res!2294355 (not (matchZipper!1403 lt!2199968 (_2!35661 lt!2199979))))))

(declare-fun b!5397699 () Bool)

(declare-fun e!3346962 () Bool)

(assert (=> b!5397699 (= e!3346957 e!3346962)))

(declare-fun res!2294346 () Bool)

(assert (=> b!5397699 (=> res!2294346 e!3346962)))

(assert (=> b!5397699 (= res!2294346 (not (= r!7292 lt!2199980)))))

(assert (=> b!5397699 (= lt!2199980 (Concat!24004 lt!2199974 (regTwo!30830 r!7292)))))

(declare-fun b!5397700 () Bool)

(declare-fun res!2294356 () Bool)

(assert (=> b!5397700 (=> res!2294356 e!3346948)))

(assert (=> b!5397700 (= res!2294356 (or ((_ is EmptyExpr!15159) r!7292) ((_ is EmptyLang!15159) r!7292) ((_ is ElementMatch!15159) r!7292) ((_ is Union!15159) r!7292) (not ((_ is Concat!24004) r!7292))))))

(declare-fun b!5397701 () Bool)

(assert (=> b!5397701 (= e!3346962 e!3346961)))

(declare-fun res!2294353 () Bool)

(assert (=> b!5397701 (=> res!2294353 e!3346961)))

(assert (=> b!5397701 (= res!2294353 (not (= (unfocusZipper!901 (Cons!61654 lt!2199965 Nil!61654)) lt!2199966)))))

(assert (=> b!5397701 (= lt!2199966 (Concat!24004 (reg!15488 (regOne!30830 r!7292)) lt!2199980))))

(declare-fun b!5397702 () Bool)

(assert (=> b!5397702 (= e!3346960 true)))

(assert (=> b!5397702 (matchR!7344 lt!2199980 (_2!35661 lt!2199979))))

(declare-fun lt!2199945 () Unit!154158)

(declare-fun theoremZipperRegexEquiv!473 ((InoxSet Context!9086) List!61778 Regex!15159 List!61776) Unit!154158)

(assert (=> b!5397702 (= lt!2199945 (theoremZipperRegexEquiv!473 lt!2199968 lt!2199957 lt!2199980 (_2!35661 lt!2199979)))))

(assert (=> b!5397702 (matchR!7344 (reg!15488 (regOne!30830 r!7292)) (_1!35661 lt!2199979))))

(declare-fun lt!2199946 () Unit!154158)

(assert (=> b!5397702 (= lt!2199946 (theoremZipperRegexEquiv!473 lt!2199937 lt!2199956 (reg!15488 (regOne!30830 r!7292)) (_1!35661 lt!2199979)))))

(declare-fun ++!13492 (List!61777 List!61777) List!61777)

(assert (=> b!5397702 (matchZipper!1403 (store ((as const (Array Context!9086 Bool)) false) (Context!9087 (++!13492 lt!2199982 lt!2199950)) true) lt!2199978)))

(declare-fun lt!2199947 () Unit!154158)

(declare-fun lambda!280855 () Int)

(declare-fun lemmaConcatPreservesForall!184 (List!61777 List!61777 Int) Unit!154158)

(assert (=> b!5397702 (= lt!2199947 (lemmaConcatPreservesForall!184 lt!2199982 lt!2199950 lambda!280855))))

(declare-fun lt!2199955 () Unit!154158)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!32 (Context!9086 Context!9086 List!61776 List!61776) Unit!154158)

(assert (=> b!5397702 (= lt!2199955 (lemmaConcatenateContextMatchesConcatOfStrings!32 lt!2199949 lt!2199938 (_1!35661 lt!2199979) (_2!35661 lt!2199979)))))

(declare-fun b!5397703 () Bool)

(declare-fun tp!1493898 () Bool)

(assert (=> b!5397703 (= e!3346942 (and tp_is_empty!39571 tp!1493898))))

(declare-fun b!5397704 () Bool)

(declare-fun res!2294349 () Bool)

(assert (=> b!5397704 (=> res!2294349 e!3346948)))

(assert (=> b!5397704 (= res!2294349 (not ((_ is Cons!61653) (exprs!5043 (h!68102 zl!343)))))))

(assert (=> b!5397705 (= e!3346955 e!3346958)))

(declare-fun res!2294359 () Bool)

(assert (=> b!5397705 (=> res!2294359 e!3346958)))

(declare-fun appendTo!18 ((InoxSet Context!9086) Context!9086) (InoxSet Context!9086))

(assert (=> b!5397705 (= res!2294359 (not (= (appendTo!18 lt!2199937 lt!2199938) lt!2199970)))))

(declare-fun lambda!280854 () Int)

(declare-fun map!14123 ((InoxSet Context!9086) Int) (InoxSet Context!9086))

(assert (=> b!5397705 (= (map!14123 lt!2199937 lambda!280854) (store ((as const (Array Context!9086 Bool)) false) (Context!9087 (++!13492 lt!2199982 lt!2199950)) true))))

(declare-fun lt!2199984 () Unit!154158)

(assert (=> b!5397705 (= lt!2199984 (lemmaConcatPreservesForall!184 lt!2199982 lt!2199950 lambda!280855))))

(declare-fun lt!2199939 () Unit!154158)

(declare-fun lemmaMapOnSingletonSet!18 ((InoxSet Context!9086) Context!9086 Int) Unit!154158)

(assert (=> b!5397705 (= lt!2199939 (lemmaMapOnSingletonSet!18 lt!2199937 lt!2199949 lambda!280854))))

(assert (= (and start!567002 res!2294370) b!5397696))

(assert (= (and b!5397696 res!2294352) b!5397677))

(assert (= (and b!5397677 res!2294347) b!5397678))

(assert (= (and b!5397678 (not res!2294340)) b!5397680))

(assert (= (and b!5397680 (not res!2294354)) b!5397676))

(assert (= (and b!5397676 (not res!2294358)) b!5397704))

(assert (= (and b!5397704 (not res!2294349)) b!5397666))

(assert (= (and b!5397666 (not res!2294344)) b!5397700))

(assert (= (and b!5397700 (not res!2294356)) b!5397684))

(assert (= (and b!5397684 (not res!2294351)) b!5397675))

(assert (= (and b!5397675 (not res!2294357)) b!5397674))

(assert (= (and b!5397674 c!940680) b!5397662))

(assert (= (and b!5397674 (not c!940680)) b!5397668))

(assert (= (and b!5397662 (not res!2294369)) b!5397682))

(assert (= (and b!5397674 (not res!2294343)) b!5397690))

(assert (= (and b!5397690 res!2294367) b!5397695))

(assert (= (and b!5397690 (not res!2294350)) b!5397689))

(assert (= (and b!5397689 (not res!2294342)) b!5397663))

(assert (= (and b!5397663 (not res!2294345)) b!5397688))

(assert (= (and b!5397688 (not res!2294362)) b!5397693))

(assert (= (and b!5397693 (not res!2294364)) b!5397670))

(assert (= (and b!5397670 (not res!2294361)) b!5397699))

(assert (= (and b!5397699 (not res!2294346)) b!5397701))

(assert (= (and b!5397701 (not res!2294353)) b!5397694))

(assert (= (and b!5397694 (not res!2294341)) b!5397683))

(assert (= (and b!5397683 (not res!2294360)) b!5397672))

(assert (= (and b!5397672 (not res!2294348)) b!5397691))

(assert (= (and b!5397691 (not res!2294338)) b!5397687))

(assert (= (and b!5397687 (not res!2294363)) b!5397679))

(assert (= (and b!5397679 res!2294365) b!5397667))

(assert (= (and b!5397679 (not res!2294366)) b!5397697))

(assert (= (and b!5397697 (not res!2294368)) b!5397705))

(assert (= (and b!5397705 (not res!2294359)) b!5397671))

(assert (= (and b!5397671 (not res!2294339)) b!5397681))

(assert (= (and b!5397681 (not res!2294371)) b!5397698))

(assert (= (and b!5397698 (not res!2294355)) b!5397702))

(assert (= (and start!567002 ((_ is ElementMatch!15159) r!7292)) b!5397685))

(assert (= (and start!567002 ((_ is Concat!24004) r!7292)) b!5397664))

(assert (= (and start!567002 ((_ is Star!15159) r!7292)) b!5397673))

(assert (= (and start!567002 ((_ is Union!15159) r!7292)) b!5397669))

(assert (= (and start!567002 condSetEmpty!35111) setIsEmpty!35111))

(assert (= (and start!567002 (not condSetEmpty!35111)) setNonEmpty!35111))

(assert (= setNonEmpty!35111 b!5397686))

(assert (= b!5397665 b!5397692))

(assert (= (and start!567002 ((_ is Cons!61654) zl!343)) b!5397665))

(assert (= (and start!567002 ((_ is Cons!61652) s!2326)) b!5397703))

(declare-fun m!6422434 () Bool)

(assert (=> b!5397679 m!6422434))

(declare-fun m!6422436 () Bool)

(assert (=> b!5397663 m!6422436))

(declare-fun m!6422438 () Bool)

(assert (=> b!5397681 m!6422438))

(declare-fun m!6422440 () Bool)

(assert (=> b!5397691 m!6422440))

(declare-fun m!6422442 () Bool)

(assert (=> b!5397688 m!6422442))

(declare-fun m!6422444 () Bool)

(assert (=> b!5397688 m!6422444))

(declare-fun m!6422446 () Bool)

(assert (=> b!5397688 m!6422446))

(declare-fun m!6422448 () Bool)

(assert (=> b!5397688 m!6422448))

(declare-fun m!6422450 () Bool)

(assert (=> b!5397688 m!6422450))

(declare-fun m!6422452 () Bool)

(assert (=> b!5397683 m!6422452))

(declare-fun m!6422454 () Bool)

(assert (=> b!5397680 m!6422454))

(declare-fun m!6422456 () Bool)

(assert (=> b!5397678 m!6422456))

(declare-fun m!6422458 () Bool)

(assert (=> b!5397678 m!6422458))

(declare-fun m!6422460 () Bool)

(assert (=> b!5397678 m!6422460))

(declare-fun m!6422462 () Bool)

(assert (=> b!5397666 m!6422462))

(assert (=> b!5397666 m!6422462))

(declare-fun m!6422464 () Bool)

(assert (=> b!5397666 m!6422464))

(declare-fun m!6422466 () Bool)

(assert (=> b!5397684 m!6422466))

(declare-fun m!6422468 () Bool)

(assert (=> b!5397684 m!6422468))

(declare-fun m!6422470 () Bool)

(assert (=> b!5397684 m!6422470))

(declare-fun m!6422472 () Bool)

(assert (=> b!5397684 m!6422472))

(assert (=> b!5397684 m!6422466))

(declare-fun m!6422474 () Bool)

(assert (=> b!5397684 m!6422474))

(declare-fun m!6422476 () Bool)

(assert (=> b!5397684 m!6422476))

(assert (=> b!5397684 m!6422470))

(declare-fun m!6422478 () Bool)

(assert (=> start!567002 m!6422478))

(declare-fun m!6422480 () Bool)

(assert (=> b!5397696 m!6422480))

(declare-fun m!6422482 () Bool)

(assert (=> b!5397694 m!6422482))

(declare-fun m!6422484 () Bool)

(assert (=> b!5397694 m!6422484))

(declare-fun m!6422486 () Bool)

(assert (=> b!5397694 m!6422486))

(declare-fun m!6422488 () Bool)

(assert (=> b!5397694 m!6422488))

(declare-fun m!6422490 () Bool)

(assert (=> b!5397694 m!6422490))

(declare-fun m!6422492 () Bool)

(assert (=> b!5397694 m!6422492))

(declare-fun m!6422494 () Bool)

(assert (=> b!5397694 m!6422494))

(declare-fun m!6422496 () Bool)

(assert (=> b!5397694 m!6422496))

(declare-fun m!6422498 () Bool)

(assert (=> b!5397694 m!6422498))

(declare-fun m!6422500 () Bool)

(assert (=> b!5397677 m!6422500))

(declare-fun m!6422502 () Bool)

(assert (=> b!5397693 m!6422502))

(declare-fun m!6422504 () Bool)

(assert (=> b!5397693 m!6422504))

(declare-fun m!6422506 () Bool)

(assert (=> b!5397674 m!6422506))

(declare-fun m!6422508 () Bool)

(assert (=> b!5397674 m!6422508))

(declare-fun m!6422510 () Bool)

(assert (=> b!5397674 m!6422510))

(declare-fun m!6422512 () Bool)

(assert (=> b!5397674 m!6422512))

(declare-fun m!6422514 () Bool)

(assert (=> b!5397674 m!6422514))

(declare-fun m!6422516 () Bool)

(assert (=> b!5397674 m!6422516))

(declare-fun m!6422518 () Bool)

(assert (=> b!5397674 m!6422518))

(declare-fun m!6422520 () Bool)

(assert (=> setNonEmpty!35111 m!6422520))

(declare-fun m!6422522 () Bool)

(assert (=> b!5397667 m!6422522))

(declare-fun m!6422524 () Bool)

(assert (=> b!5397676 m!6422524))

(declare-fun m!6422526 () Bool)

(assert (=> b!5397695 m!6422526))

(declare-fun m!6422528 () Bool)

(assert (=> b!5397662 m!6422528))

(assert (=> b!5397662 m!6422434))

(declare-fun m!6422530 () Bool)

(assert (=> b!5397662 m!6422530))

(declare-fun m!6422532 () Bool)

(assert (=> b!5397672 m!6422532))

(declare-fun m!6422534 () Bool)

(assert (=> b!5397672 m!6422534))

(declare-fun m!6422536 () Bool)

(assert (=> b!5397672 m!6422536))

(assert (=> b!5397682 m!6422522))

(declare-fun m!6422538 () Bool)

(assert (=> b!5397702 m!6422538))

(declare-fun m!6422540 () Bool)

(assert (=> b!5397702 m!6422540))

(declare-fun m!6422542 () Bool)

(assert (=> b!5397702 m!6422542))

(declare-fun m!6422544 () Bool)

(assert (=> b!5397702 m!6422544))

(declare-fun m!6422546 () Bool)

(assert (=> b!5397702 m!6422546))

(declare-fun m!6422548 () Bool)

(assert (=> b!5397702 m!6422548))

(declare-fun m!6422550 () Bool)

(assert (=> b!5397702 m!6422550))

(declare-fun m!6422552 () Bool)

(assert (=> b!5397702 m!6422552))

(declare-fun m!6422554 () Bool)

(assert (=> b!5397702 m!6422554))

(assert (=> b!5397702 m!6422550))

(declare-fun m!6422556 () Bool)

(assert (=> b!5397701 m!6422556))

(declare-fun m!6422558 () Bool)

(assert (=> b!5397705 m!6422558))

(declare-fun m!6422560 () Bool)

(assert (=> b!5397705 m!6422560))

(assert (=> b!5397705 m!6422540))

(assert (=> b!5397705 m!6422546))

(declare-fun m!6422562 () Bool)

(assert (=> b!5397705 m!6422562))

(assert (=> b!5397705 m!6422550))

(declare-fun m!6422564 () Bool)

(assert (=> b!5397671 m!6422564))

(declare-fun m!6422566 () Bool)

(assert (=> b!5397671 m!6422566))

(declare-fun m!6422568 () Bool)

(assert (=> b!5397671 m!6422568))

(declare-fun m!6422570 () Bool)

(assert (=> b!5397671 m!6422570))

(declare-fun m!6422572 () Bool)

(assert (=> b!5397671 m!6422572))

(declare-fun m!6422574 () Bool)

(assert (=> b!5397675 m!6422574))

(declare-fun m!6422576 () Bool)

(assert (=> b!5397665 m!6422576))

(declare-fun m!6422578 () Bool)

(assert (=> b!5397698 m!6422578))

(check-sat (not b!5397683) tp_is_empty!39571 (not b!5397696) (not b!5397674) (not b!5397679) (not b!5397667) (not b!5397705) (not b!5397694) (not b!5397688) (not b!5397684) (not b!5397680) (not b!5397686) (not b!5397701) (not b!5397682) (not b!5397669) (not b!5397698) (not b!5397672) (not setNonEmpty!35111) (not b!5397681) (not b!5397665) (not b!5397695) (not b!5397677) (not b!5397675) (not b!5397671) (not start!567002) (not b!5397664) (not b!5397691) (not b!5397678) (not b!5397693) (not b!5397692) (not b!5397666) (not b!5397673) (not b!5397702) (not b!5397703) (not b!5397662) (not b!5397676) (not b!5397663))
(check-sat)

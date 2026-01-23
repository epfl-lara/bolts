; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565994 () Bool)

(assert start!565994)

(declare-fun b!5382914 () Bool)

(assert (=> b!5382914 true))

(assert (=> b!5382914 true))

(declare-fun lambda!278765 () Int)

(declare-fun lambda!278764 () Int)

(assert (=> b!5382914 (not (= lambda!278765 lambda!278764))))

(assert (=> b!5382914 true))

(assert (=> b!5382914 true))

(declare-fun b!5382935 () Bool)

(assert (=> b!5382935 true))

(declare-fun bs!1246112 () Bool)

(declare-fun b!5382912 () Bool)

(assert (= bs!1246112 (and b!5382912 b!5382914)))

(declare-datatypes ((C!30496 0))(
  ( (C!30497 (val!24950 Int)) )
))
(declare-datatypes ((Regex!15113 0))(
  ( (ElementMatch!15113 (c!938129 C!30496)) (Concat!23958 (regOne!30738 Regex!15113) (regTwo!30738 Regex!15113)) (EmptyExpr!15113) (Star!15113 (reg!15442 Regex!15113)) (EmptyLang!15113) (Union!15113 (regOne!30739 Regex!15113) (regTwo!30739 Regex!15113)) )
))
(declare-fun r!7292 () Regex!15113)

(declare-fun lt!2191984 () Regex!15113)

(declare-fun lambda!278767 () Int)

(assert (=> bs!1246112 (= (= lt!2191984 (regOne!30738 r!7292)) (= lambda!278767 lambda!278764))))

(assert (=> bs!1246112 (not (= lambda!278767 lambda!278765))))

(assert (=> b!5382912 true))

(assert (=> b!5382912 true))

(assert (=> b!5382912 true))

(declare-fun lambda!278768 () Int)

(assert (=> bs!1246112 (not (= lambda!278768 lambda!278764))))

(assert (=> bs!1246112 (= (= lt!2191984 (regOne!30738 r!7292)) (= lambda!278768 lambda!278765))))

(assert (=> b!5382912 (not (= lambda!278768 lambda!278767))))

(assert (=> b!5382912 true))

(assert (=> b!5382912 true))

(assert (=> b!5382912 true))

(declare-fun bs!1246113 () Bool)

(declare-fun b!5382952 () Bool)

(assert (= bs!1246113 (and b!5382952 b!5382914)))

(declare-datatypes ((List!61638 0))(
  ( (Nil!61514) (Cons!61514 (h!67962 C!30496) (t!374861 List!61638)) )
))
(declare-fun s!2326 () List!61638)

(declare-datatypes ((tuple2!64624 0))(
  ( (tuple2!64625 (_1!35615 List!61638) (_2!35615 List!61638)) )
))
(declare-fun lt!2191967 () tuple2!64624)

(declare-fun lambda!278769 () Int)

(assert (=> bs!1246113 (= (and (= (_1!35615 lt!2191967) s!2326) (= (reg!15442 (regOne!30738 r!7292)) (regOne!30738 r!7292)) (= lt!2191984 (regTwo!30738 r!7292))) (= lambda!278769 lambda!278764))))

(assert (=> bs!1246113 (not (= lambda!278769 lambda!278765))))

(declare-fun bs!1246114 () Bool)

(assert (= bs!1246114 (and b!5382952 b!5382912)))

(assert (=> bs!1246114 (= (and (= (_1!35615 lt!2191967) s!2326) (= (reg!15442 (regOne!30738 r!7292)) lt!2191984) (= lt!2191984 (regTwo!30738 r!7292))) (= lambda!278769 lambda!278767))))

(assert (=> bs!1246114 (not (= lambda!278769 lambda!278768))))

(assert (=> b!5382952 true))

(assert (=> b!5382952 true))

(assert (=> b!5382952 true))

(declare-fun lambda!278770 () Int)

(assert (=> bs!1246113 (not (= lambda!278770 lambda!278765))))

(assert (=> bs!1246113 (not (= lambda!278770 lambda!278764))))

(assert (=> bs!1246114 (not (= lambda!278770 lambda!278767))))

(assert (=> b!5382952 (not (= lambda!278770 lambda!278769))))

(assert (=> bs!1246114 (not (= lambda!278770 lambda!278768))))

(assert (=> b!5382952 true))

(assert (=> b!5382952 true))

(assert (=> b!5382952 true))

(declare-fun lambda!278771 () Int)

(assert (=> bs!1246113 (= (and (= (_1!35615 lt!2191967) s!2326) (= (reg!15442 (regOne!30738 r!7292)) (regOne!30738 r!7292)) (= lt!2191984 (regTwo!30738 r!7292))) (= lambda!278771 lambda!278765))))

(assert (=> bs!1246113 (not (= lambda!278771 lambda!278764))))

(assert (=> bs!1246114 (not (= lambda!278771 lambda!278767))))

(assert (=> bs!1246114 (= (and (= (_1!35615 lt!2191967) s!2326) (= (reg!15442 (regOne!30738 r!7292)) lt!2191984) (= lt!2191984 (regTwo!30738 r!7292))) (= lambda!278771 lambda!278768))))

(assert (=> b!5382952 (not (= lambda!278771 lambda!278769))))

(assert (=> b!5382952 (not (= lambda!278771 lambda!278770))))

(assert (=> b!5382952 true))

(assert (=> b!5382952 true))

(assert (=> b!5382952 true))

(declare-fun b!5382909 () Bool)

(declare-fun e!3339046 () Bool)

(declare-fun tp_is_empty!39479 () Bool)

(declare-fun tp!1491687 () Bool)

(assert (=> b!5382909 (= e!3339046 (and tp_is_empty!39479 tp!1491687))))

(declare-fun b!5382910 () Bool)

(declare-fun e!3339055 () Bool)

(declare-fun tp!1491682 () Bool)

(assert (=> b!5382910 (= e!3339055 tp!1491682)))

(declare-fun b!5382911 () Bool)

(declare-fun e!3339053 () Bool)

(declare-fun e!3339060 () Bool)

(assert (=> b!5382911 (= e!3339053 e!3339060)))

(declare-fun res!2285919 () Bool)

(assert (=> b!5382911 (=> res!2285919 e!3339060)))

(declare-fun lt!2191986 () Regex!15113)

(assert (=> b!5382911 (= res!2285919 (not (= r!7292 lt!2191986)))))

(assert (=> b!5382911 (= lt!2191986 (Concat!23958 lt!2191984 (regTwo!30738 r!7292)))))

(declare-fun e!3339057 () Bool)

(declare-fun e!3339058 () Bool)

(assert (=> b!5382912 (= e!3339057 e!3339058)))

(declare-fun res!2285911 () Bool)

(assert (=> b!5382912 (=> res!2285911 e!3339058)))

(declare-fun ++!13416 (List!61638 List!61638) List!61638)

(assert (=> b!5382912 (= res!2285911 (not (= (++!13416 (_1!35615 lt!2191967) (_2!35615 lt!2191967)) s!2326)))))

(declare-datatypes ((Option!15224 0))(
  ( (None!15223) (Some!15223 (v!51252 tuple2!64624)) )
))
(declare-fun lt!2191955 () Option!15224)

(declare-fun get!21178 (Option!15224) tuple2!64624)

(assert (=> b!5382912 (= lt!2191967 (get!21178 lt!2191955))))

(declare-fun Exists!2294 (Int) Bool)

(assert (=> b!5382912 (= (Exists!2294 lambda!278767) (Exists!2294 lambda!278768))))

(declare-datatypes ((Unit!153970 0))(
  ( (Unit!153971) )
))
(declare-fun lt!2191996 () Unit!153970)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!948 (Regex!15113 Regex!15113 List!61638) Unit!153970)

(assert (=> b!5382912 (= lt!2191996 (lemmaExistCutMatchRandMatchRSpecEquivalent!948 lt!2191984 (regTwo!30738 r!7292) s!2326))))

(declare-fun isDefined!11927 (Option!15224) Bool)

(assert (=> b!5382912 (= (isDefined!11927 lt!2191955) (Exists!2294 lambda!278767))))

(declare-fun findConcatSeparation!1638 (Regex!15113 Regex!15113 List!61638 List!61638 List!61638) Option!15224)

(assert (=> b!5382912 (= lt!2191955 (findConcatSeparation!1638 lt!2191984 (regTwo!30738 r!7292) Nil!61514 s!2326 s!2326))))

(declare-fun lt!2191958 () Unit!153970)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1402 (Regex!15113 Regex!15113 List!61638) Unit!153970)

(assert (=> b!5382912 (= lt!2191958 (lemmaFindConcatSeparationEquivalentToExists!1402 lt!2191984 (regTwo!30738 r!7292) s!2326))))

(declare-fun b!5382913 () Bool)

(declare-fun e!3339059 () Bool)

(declare-fun e!3339042 () Bool)

(assert (=> b!5382913 (= e!3339059 e!3339042)))

(declare-fun res!2285898 () Bool)

(assert (=> b!5382913 (=> res!2285898 e!3339042)))

(declare-datatypes ((List!61639 0))(
  ( (Nil!61515) (Cons!61515 (h!67963 Regex!15113) (t!374862 List!61639)) )
))
(declare-datatypes ((Context!8994 0))(
  ( (Context!8995 (exprs!4997 List!61639)) )
))
(declare-fun lt!2191968 () Context!8994)

(declare-datatypes ((List!61640 0))(
  ( (Nil!61516) (Cons!61516 (h!67964 Context!8994) (t!374863 List!61640)) )
))
(declare-fun unfocusZipper!855 (List!61640) Regex!15113)

(assert (=> b!5382913 (= res!2285898 (not (= (unfocusZipper!855 (Cons!61516 lt!2191968 Nil!61516)) (reg!15442 (regOne!30738 r!7292)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2191985 () (InoxSet Context!8994))

(declare-fun lt!2191962 () Context!8994)

(declare-fun lambda!278766 () Int)

(declare-fun flatMap!840 ((InoxSet Context!8994) Int) (InoxSet Context!8994))

(declare-fun derivationStepZipperUp!485 (Context!8994 C!30496) (InoxSet Context!8994))

(assert (=> b!5382913 (= (flatMap!840 lt!2191985 lambda!278766) (derivationStepZipperUp!485 lt!2191962 (h!67962 s!2326)))))

(declare-fun lt!2191964 () Unit!153970)

(declare-fun lemmaFlatMapOnSingletonSet!372 ((InoxSet Context!8994) Context!8994 Int) Unit!153970)

(assert (=> b!5382913 (= lt!2191964 (lemmaFlatMapOnSingletonSet!372 lt!2191985 lt!2191962 lambda!278766))))

(declare-fun lt!2191961 () (InoxSet Context!8994))

(assert (=> b!5382913 (= (flatMap!840 lt!2191961 lambda!278766) (derivationStepZipperUp!485 lt!2191968 (h!67962 s!2326)))))

(declare-fun lt!2191970 () Unit!153970)

(assert (=> b!5382913 (= lt!2191970 (lemmaFlatMapOnSingletonSet!372 lt!2191961 lt!2191968 lambda!278766))))

(declare-fun lt!2191976 () (InoxSet Context!8994))

(assert (=> b!5382913 (= lt!2191976 (derivationStepZipperUp!485 lt!2191962 (h!67962 s!2326)))))

(declare-fun lt!2191950 () (InoxSet Context!8994))

(assert (=> b!5382913 (= lt!2191950 (derivationStepZipperUp!485 lt!2191968 (h!67962 s!2326)))))

(assert (=> b!5382913 (= lt!2191985 (store ((as const (Array Context!8994 Bool)) false) lt!2191962 true))))

(assert (=> b!5382913 (= lt!2191961 (store ((as const (Array Context!8994 Bool)) false) lt!2191968 true))))

(assert (=> b!5382913 (= lt!2191968 (Context!8995 (Cons!61515 (reg!15442 (regOne!30738 r!7292)) Nil!61515)))))

(declare-fun e!3339052 () Bool)

(declare-fun e!3339051 () Bool)

(assert (=> b!5382914 (= e!3339052 e!3339051)))

(declare-fun res!2285905 () Bool)

(assert (=> b!5382914 (=> res!2285905 e!3339051)))

(declare-fun lt!2191953 () Bool)

(declare-fun lt!2191954 () Bool)

(get-info :version)

(assert (=> b!5382914 (= res!2285905 (or (not (= lt!2191954 lt!2191953)) ((_ is Nil!61514) s!2326)))))

(assert (=> b!5382914 (= (Exists!2294 lambda!278764) (Exists!2294 lambda!278765))))

(declare-fun lt!2191965 () Unit!153970)

(assert (=> b!5382914 (= lt!2191965 (lemmaExistCutMatchRandMatchRSpecEquivalent!948 (regOne!30738 r!7292) (regTwo!30738 r!7292) s!2326))))

(assert (=> b!5382914 (= lt!2191953 (Exists!2294 lambda!278764))))

(assert (=> b!5382914 (= lt!2191953 (isDefined!11927 (findConcatSeparation!1638 (regOne!30738 r!7292) (regTwo!30738 r!7292) Nil!61514 s!2326 s!2326)))))

(declare-fun lt!2191993 () Unit!153970)

(assert (=> b!5382914 (= lt!2191993 (lemmaFindConcatSeparationEquivalentToExists!1402 (regOne!30738 r!7292) (regTwo!30738 r!7292) s!2326))))

(declare-fun b!5382915 () Bool)

(declare-fun res!2285923 () Bool)

(assert (=> b!5382915 (=> res!2285923 e!3339052)))

(declare-fun zl!343 () List!61640)

(declare-fun generalisedUnion!1042 (List!61639) Regex!15113)

(declare-fun unfocusZipperList!555 (List!61640) List!61639)

(assert (=> b!5382915 (= res!2285923 (not (= r!7292 (generalisedUnion!1042 (unfocusZipperList!555 zl!343)))))))

(declare-fun b!5382916 () Bool)

(declare-fun e!3339056 () Bool)

(declare-fun tp!1491689 () Bool)

(declare-fun tp!1491685 () Bool)

(assert (=> b!5382916 (= e!3339056 (and tp!1491689 tp!1491685))))

(declare-fun b!5382917 () Bool)

(declare-fun res!2285917 () Bool)

(assert (=> b!5382917 (=> res!2285917 e!3339052)))

(declare-fun isEmpty!33508 (List!61640) Bool)

(assert (=> b!5382917 (= res!2285917 (not (isEmpty!33508 (t!374863 zl!343))))))

(declare-fun b!5382918 () Bool)

(assert (=> b!5382918 (= e!3339060 e!3339059)))

(declare-fun res!2285889 () Bool)

(assert (=> b!5382918 (=> res!2285889 e!3339059)))

(declare-fun lt!2191988 () Context!8994)

(declare-fun lt!2191987 () Regex!15113)

(assert (=> b!5382918 (= res!2285889 (not (= (unfocusZipper!855 (Cons!61516 lt!2191988 Nil!61516)) lt!2191987)))))

(assert (=> b!5382918 (= lt!2191987 (Concat!23958 (reg!15442 (regOne!30738 r!7292)) lt!2191986))))

(declare-fun b!5382919 () Bool)

(declare-fun res!2285908 () Bool)

(declare-fun e!3339044 () Bool)

(assert (=> b!5382919 (=> res!2285908 e!3339044)))

(assert (=> b!5382919 (= res!2285908 (or ((_ is Concat!23958) (regOne!30738 r!7292)) (not ((_ is Star!15113) (regOne!30738 r!7292)))))))

(declare-fun b!5382920 () Bool)

(declare-fun res!2285909 () Bool)

(assert (=> b!5382920 (=> res!2285909 e!3339058)))

(declare-fun matchR!7298 (Regex!15113 List!61638) Bool)

(assert (=> b!5382920 (= res!2285909 (not (matchR!7298 lt!2191984 (_1!35615 lt!2191967))))))

(declare-fun b!5382921 () Bool)

(assert (=> b!5382921 (= e!3339056 tp_is_empty!39479)))

(declare-fun b!5382922 () Bool)

(declare-fun e!3339050 () Bool)

(declare-fun e!3339047 () Bool)

(assert (=> b!5382922 (= e!3339050 e!3339047)))

(declare-fun res!2285922 () Bool)

(assert (=> b!5382922 (=> (not res!2285922) (not e!3339047))))

(declare-fun lt!2191956 () Regex!15113)

(assert (=> b!5382922 (= res!2285922 (= r!7292 lt!2191956))))

(assert (=> b!5382922 (= lt!2191956 (unfocusZipper!855 zl!343))))

(declare-fun b!5382923 () Bool)

(declare-fun e!3339048 () Bool)

(declare-fun e!3339049 () Bool)

(assert (=> b!5382923 (= e!3339048 e!3339049)))

(declare-fun res!2285901 () Bool)

(assert (=> b!5382923 (=> res!2285901 e!3339049)))

(declare-fun lt!2191974 () List!61638)

(assert (=> b!5382923 (= res!2285901 (not (= lt!2191974 s!2326)))))

(declare-fun lt!2191966 () tuple2!64624)

(declare-fun lt!2191990 () List!61638)

(assert (=> b!5382923 (= lt!2191974 (++!13416 (_1!35615 lt!2191966) lt!2191990))))

(declare-fun lt!2191959 () List!61638)

(assert (=> b!5382923 (= lt!2191974 (++!13416 lt!2191959 (_2!35615 lt!2191967)))))

(assert (=> b!5382923 (= lt!2191990 (++!13416 (_2!35615 lt!2191966) (_2!35615 lt!2191967)))))

(declare-fun lt!2191995 () Unit!153970)

(declare-fun lemmaConcatAssociativity!2810 (List!61638 List!61638 List!61638) Unit!153970)

(assert (=> b!5382923 (= lt!2191995 (lemmaConcatAssociativity!2810 (_1!35615 lt!2191966) (_2!35615 lt!2191966) (_2!35615 lt!2191967)))))

(declare-fun b!5382924 () Bool)

(declare-fun e!3339062 () Bool)

(declare-fun nullable!5282 (Regex!15113) Bool)

(assert (=> b!5382924 (= e!3339062 (nullable!5282 (regOne!30738 (regOne!30738 r!7292))))))

(declare-fun b!5382925 () Bool)

(declare-fun res!2285890 () Bool)

(assert (=> b!5382925 (=> (not res!2285890) (not e!3339050))))

(declare-fun z!1189 () (InoxSet Context!8994))

(declare-fun toList!8897 ((InoxSet Context!8994)) List!61640)

(assert (=> b!5382925 (= res!2285890 (= (toList!8897 z!1189) zl!343))))

(declare-fun b!5382926 () Bool)

(declare-fun res!2285916 () Bool)

(assert (=> b!5382926 (=> res!2285916 e!3339058)))

(assert (=> b!5382926 (= res!2285916 (not (matchR!7298 (regTwo!30738 r!7292) (_2!35615 lt!2191967))))))

(declare-fun b!5382927 () Bool)

(declare-fun res!2285895 () Bool)

(assert (=> b!5382927 (=> res!2285895 e!3339058)))

(declare-fun isEmpty!33509 (List!61638) Bool)

(assert (=> b!5382927 (= res!2285895 (isEmpty!33509 (_1!35615 lt!2191967)))))

(declare-fun b!5382928 () Bool)

(declare-fun res!2285913 () Bool)

(assert (=> b!5382928 (=> res!2285913 e!3339053)))

(assert (=> b!5382928 (= res!2285913 (not (= lt!2191956 r!7292)))))

(declare-fun b!5382929 () Bool)

(declare-fun tp!1491680 () Bool)

(declare-fun tp!1491688 () Bool)

(assert (=> b!5382929 (= e!3339056 (and tp!1491680 tp!1491688))))

(declare-fun b!5382930 () Bool)

(declare-fun e!3339043 () Bool)

(assert (=> b!5382930 (= e!3339043 true)))

(declare-fun lt!2191952 () List!61640)

(assert (=> b!5382930 (= lt!2191952 (toList!8897 lt!2191961))))

(declare-fun b!5382931 () Bool)

(declare-fun tp!1491681 () Bool)

(assert (=> b!5382931 (= e!3339056 tp!1491681)))

(declare-fun b!5382932 () Bool)

(declare-fun res!2285907 () Bool)

(assert (=> b!5382932 (=> res!2285907 e!3339042)))

(assert (=> b!5382932 (= res!2285907 (not (= (unfocusZipper!855 (Cons!61516 lt!2191962 Nil!61516)) lt!2191986)))))

(declare-fun e!3339040 () Bool)

(declare-fun tp!1491684 () Bool)

(declare-fun b!5382933 () Bool)

(declare-fun e!3339041 () Bool)

(declare-fun inv!81029 (Context!8994) Bool)

(assert (=> b!5382933 (= e!3339040 (and (inv!81029 (h!67964 zl!343)) e!3339041 tp!1491684))))

(declare-fun b!5382934 () Bool)

(declare-fun res!2285893 () Bool)

(assert (=> b!5382934 (=> res!2285893 e!3339052)))

(assert (=> b!5382934 (= res!2285893 (not ((_ is Cons!61515) (exprs!4997 (h!67964 zl!343)))))))

(assert (=> b!5382935 (= e!3339051 e!3339044)))

(declare-fun res!2285897 () Bool)

(assert (=> b!5382935 (=> res!2285897 e!3339044)))

(assert (=> b!5382935 (= res!2285897 (or (and ((_ is ElementMatch!15113) (regOne!30738 r!7292)) (= (c!938129 (regOne!30738 r!7292)) (h!67962 s!2326))) ((_ is Union!15113) (regOne!30738 r!7292))))))

(declare-fun lt!2191997 () Unit!153970)

(declare-fun e!3339061 () Unit!153970)

(assert (=> b!5382935 (= lt!2191997 e!3339061)))

(declare-fun c!938128 () Bool)

(assert (=> b!5382935 (= c!938128 (nullable!5282 (h!67963 (exprs!4997 (h!67964 zl!343)))))))

(assert (=> b!5382935 (= (flatMap!840 z!1189 lambda!278766) (derivationStepZipperUp!485 (h!67964 zl!343) (h!67962 s!2326)))))

(declare-fun lt!2191949 () Unit!153970)

(assert (=> b!5382935 (= lt!2191949 (lemmaFlatMapOnSingletonSet!372 z!1189 (h!67964 zl!343) lambda!278766))))

(declare-fun lt!2191957 () (InoxSet Context!8994))

(declare-fun lt!2191982 () Context!8994)

(assert (=> b!5382935 (= lt!2191957 (derivationStepZipperUp!485 lt!2191982 (h!67962 s!2326)))))

(declare-fun lt!2191971 () (InoxSet Context!8994))

(declare-fun derivationStepZipperDown!561 (Regex!15113 Context!8994 C!30496) (InoxSet Context!8994))

(assert (=> b!5382935 (= lt!2191971 (derivationStepZipperDown!561 (h!67963 (exprs!4997 (h!67964 zl!343))) lt!2191982 (h!67962 s!2326)))))

(assert (=> b!5382935 (= lt!2191982 (Context!8995 (t!374862 (exprs!4997 (h!67964 zl!343)))))))

(declare-fun lt!2191972 () (InoxSet Context!8994))

(assert (=> b!5382935 (= lt!2191972 (derivationStepZipperUp!485 (Context!8995 (Cons!61515 (h!67963 (exprs!4997 (h!67964 zl!343))) (t!374862 (exprs!4997 (h!67964 zl!343))))) (h!67962 s!2326)))))

(declare-fun res!2285912 () Bool)

(assert (=> start!565994 (=> (not res!2285912) (not e!3339050))))

(declare-fun validRegex!6849 (Regex!15113) Bool)

(assert (=> start!565994 (= res!2285912 (validRegex!6849 r!7292))))

(assert (=> start!565994 e!3339050))

(assert (=> start!565994 e!3339056))

(declare-fun condSetEmpty!34931 () Bool)

(assert (=> start!565994 (= condSetEmpty!34931 (= z!1189 ((as const (Array Context!8994 Bool)) false)))))

(declare-fun setRes!34931 () Bool)

(assert (=> start!565994 setRes!34931))

(assert (=> start!565994 e!3339040))

(assert (=> start!565994 e!3339046))

(declare-fun b!5382936 () Bool)

(assert (=> b!5382936 (= e!3339047 (not e!3339052))))

(declare-fun res!2285894 () Bool)

(assert (=> b!5382936 (=> res!2285894 e!3339052)))

(assert (=> b!5382936 (= res!2285894 (not ((_ is Cons!61516) zl!343)))))

(declare-fun lt!2191975 () Bool)

(assert (=> b!5382936 (= lt!2191954 lt!2191975)))

(declare-fun matchRSpec!2216 (Regex!15113 List!61638) Bool)

(assert (=> b!5382936 (= lt!2191975 (matchRSpec!2216 r!7292 s!2326))))

(assert (=> b!5382936 (= lt!2191954 (matchR!7298 r!7292 s!2326))))

(declare-fun lt!2191951 () Unit!153970)

(declare-fun mainMatchTheorem!2216 (Regex!15113 List!61638) Unit!153970)

(assert (=> b!5382936 (= lt!2191951 (mainMatchTheorem!2216 r!7292 s!2326))))

(declare-fun setElem!34931 () Context!8994)

(declare-fun setNonEmpty!34931 () Bool)

(declare-fun tp!1491686 () Bool)

(assert (=> setNonEmpty!34931 (= setRes!34931 (and tp!1491686 (inv!81029 setElem!34931) e!3339055))))

(declare-fun setRest!34931 () (InoxSet Context!8994))

(assert (=> setNonEmpty!34931 (= z!1189 ((_ map or) (store ((as const (Array Context!8994 Bool)) false) setElem!34931 true) setRest!34931))))

(declare-fun b!5382937 () Bool)

(declare-fun res!2285914 () Bool)

(assert (=> b!5382937 (=> res!2285914 e!3339052)))

(assert (=> b!5382937 (= res!2285914 (or ((_ is EmptyExpr!15113) r!7292) ((_ is EmptyLang!15113) r!7292) ((_ is ElementMatch!15113) r!7292) ((_ is Union!15113) r!7292) (not ((_ is Concat!23958) r!7292))))))

(declare-fun b!5382938 () Bool)

(declare-fun res!2285918 () Bool)

(assert (=> b!5382938 (=> res!2285918 e!3339052)))

(declare-fun generalisedConcat!782 (List!61639) Regex!15113)

(assert (=> b!5382938 (= res!2285918 (not (= r!7292 (generalisedConcat!782 (exprs!4997 (h!67964 zl!343))))))))

(declare-fun b!5382939 () Bool)

(declare-fun tp!1491683 () Bool)

(assert (=> b!5382939 (= e!3339041 tp!1491683)))

(declare-fun b!5382940 () Bool)

(declare-fun e!3339054 () Bool)

(declare-fun matchZipper!1357 ((InoxSet Context!8994) List!61638) Bool)

(assert (=> b!5382940 (= e!3339054 (matchZipper!1357 lt!2191957 (t!374861 s!2326)))))

(declare-fun b!5382941 () Bool)

(declare-fun res!2285906 () Bool)

(assert (=> b!5382941 (=> res!2285906 e!3339053)))

(declare-fun lt!2191992 () (InoxSet Context!8994))

(declare-fun lt!2191991 () (InoxSet Context!8994))

(assert (=> b!5382941 (= res!2285906 (not (= (matchZipper!1357 lt!2191991 s!2326) (matchZipper!1357 lt!2191992 (t!374861 s!2326)))))))

(declare-fun setIsEmpty!34931 () Bool)

(assert (=> setIsEmpty!34931 setRes!34931))

(declare-fun b!5382942 () Bool)

(declare-fun Unit!153972 () Unit!153970)

(assert (=> b!5382942 (= e!3339061 Unit!153972)))

(declare-fun b!5382943 () Bool)

(declare-fun e!3339039 () Bool)

(assert (=> b!5382943 (= e!3339039 e!3339053)))

(declare-fun res!2285892 () Bool)

(assert (=> b!5382943 (=> res!2285892 e!3339053)))

(declare-fun lt!2191979 () (InoxSet Context!8994))

(assert (=> b!5382943 (= res!2285892 (not (= lt!2191992 lt!2191979)))))

(assert (=> b!5382943 (= (flatMap!840 lt!2191991 lambda!278766) (derivationStepZipperUp!485 lt!2191988 (h!67962 s!2326)))))

(declare-fun lt!2191989 () Unit!153970)

(assert (=> b!5382943 (= lt!2191989 (lemmaFlatMapOnSingletonSet!372 lt!2191991 lt!2191988 lambda!278766))))

(declare-fun lt!2191960 () (InoxSet Context!8994))

(assert (=> b!5382943 (= lt!2191960 (derivationStepZipperUp!485 lt!2191988 (h!67962 s!2326)))))

(declare-fun derivationStepZipper!1352 ((InoxSet Context!8994) C!30496) (InoxSet Context!8994))

(assert (=> b!5382943 (= lt!2191992 (derivationStepZipper!1352 lt!2191991 (h!67962 s!2326)))))

(assert (=> b!5382943 (= lt!2191991 (store ((as const (Array Context!8994 Bool)) false) lt!2191988 true))))

(declare-fun lt!2191980 () List!61639)

(assert (=> b!5382943 (= lt!2191988 (Context!8995 (Cons!61515 (reg!15442 (regOne!30738 r!7292)) lt!2191980)))))

(declare-fun b!5382944 () Bool)

(declare-fun res!2285921 () Bool)

(assert (=> b!5382944 (=> res!2285921 e!3339044)))

(assert (=> b!5382944 (= res!2285921 e!3339062)))

(declare-fun res!2285920 () Bool)

(assert (=> b!5382944 (=> (not res!2285920) (not e!3339062))))

(assert (=> b!5382944 (= res!2285920 ((_ is Concat!23958) (regOne!30738 r!7292)))))

(declare-fun b!5382945 () Bool)

(declare-fun res!2285896 () Bool)

(assert (=> b!5382945 (=> res!2285896 e!3339049)))

(assert (=> b!5382945 (= res!2285896 (not (matchR!7298 lt!2191984 (_2!35615 lt!2191966))))))

(declare-fun b!5382946 () Bool)

(assert (=> b!5382946 (= e!3339049 e!3339043)))

(declare-fun res!2285904 () Bool)

(assert (=> b!5382946 (=> res!2285904 e!3339043)))

(assert (=> b!5382946 (= res!2285904 (not (validRegex!6849 (reg!15442 (regOne!30738 r!7292)))))))

(assert (=> b!5382946 (matchR!7298 lt!2191986 lt!2191990)))

(declare-fun lt!2191998 () Unit!153970)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!160 (Regex!15113 Regex!15113 List!61638 List!61638) Unit!153970)

(assert (=> b!5382946 (= lt!2191998 (lemmaTwoRegexMatchThenConcatMatchesConcatString!160 lt!2191984 (regTwo!30738 r!7292) (_2!35615 lt!2191966) (_2!35615 lt!2191967)))))

(assert (=> b!5382946 (matchR!7298 lt!2191984 lt!2191959)))

(declare-fun lt!2191963 () Unit!153970)

(declare-fun lemmaStarApp!34 (Regex!15113 List!61638 List!61638) Unit!153970)

(assert (=> b!5382946 (= lt!2191963 (lemmaStarApp!34 (reg!15442 (regOne!30738 r!7292)) (_1!35615 lt!2191966) (_2!35615 lt!2191966)))))

(declare-fun b!5382947 () Bool)

(declare-fun Unit!153973 () Unit!153970)

(assert (=> b!5382947 (= e!3339061 Unit!153973)))

(declare-fun lt!2191973 () Unit!153970)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!350 ((InoxSet Context!8994) (InoxSet Context!8994) List!61638) Unit!153970)

(assert (=> b!5382947 (= lt!2191973 (lemmaZipperConcatMatchesSameAsBothZippers!350 lt!2191971 lt!2191957 (t!374861 s!2326)))))

(declare-fun res!2285915 () Bool)

(assert (=> b!5382947 (= res!2285915 (matchZipper!1357 lt!2191971 (t!374861 s!2326)))))

(assert (=> b!5382947 (=> res!2285915 e!3339054)))

(assert (=> b!5382947 (= (matchZipper!1357 ((_ map or) lt!2191971 lt!2191957) (t!374861 s!2326)) e!3339054)))

(declare-fun b!5382948 () Bool)

(declare-fun e!3339045 () Bool)

(assert (=> b!5382948 (= e!3339045 (or (not lt!2191954) lt!2191975))))

(declare-fun b!5382949 () Bool)

(declare-fun res!2285903 () Bool)

(assert (=> b!5382949 (=> res!2285903 e!3339049)))

(assert (=> b!5382949 (= res!2285903 (not (matchR!7298 (reg!15442 (regOne!30738 r!7292)) (_1!35615 lt!2191966))))))

(declare-fun b!5382950 () Bool)

(assert (=> b!5382950 (= e!3339044 e!3339039)))

(declare-fun res!2285899 () Bool)

(assert (=> b!5382950 (=> res!2285899 e!3339039)))

(assert (=> b!5382950 (= res!2285899 (not (= lt!2191971 lt!2191979)))))

(assert (=> b!5382950 (= lt!2191979 (derivationStepZipperDown!561 (reg!15442 (regOne!30738 r!7292)) lt!2191962 (h!67962 s!2326)))))

(assert (=> b!5382950 (= lt!2191962 (Context!8995 lt!2191980))))

(assert (=> b!5382950 (= lt!2191980 (Cons!61515 lt!2191984 (t!374862 (exprs!4997 (h!67964 zl!343)))))))

(assert (=> b!5382950 (= lt!2191984 (Star!15113 (reg!15442 (regOne!30738 r!7292))))))

(declare-fun b!5382951 () Bool)

(declare-fun res!2285910 () Bool)

(assert (=> b!5382951 (=> res!2285910 e!3339051)))

(declare-fun isEmpty!33510 (List!61639) Bool)

(assert (=> b!5382951 (= res!2285910 (isEmpty!33510 (t!374862 (exprs!4997 (h!67964 zl!343)))))))

(assert (=> b!5382952 (= e!3339058 e!3339048)))

(declare-fun res!2285902 () Bool)

(assert (=> b!5382952 (=> res!2285902 e!3339048)))

(assert (=> b!5382952 (= res!2285902 (not (= (_1!35615 lt!2191967) lt!2191959)))))

(assert (=> b!5382952 (= lt!2191959 (++!13416 (_1!35615 lt!2191966) (_2!35615 lt!2191966)))))

(declare-fun lt!2191983 () Option!15224)

(assert (=> b!5382952 (= lt!2191966 (get!21178 lt!2191983))))

(assert (=> b!5382952 (= (Exists!2294 lambda!278769) (Exists!2294 lambda!278771))))

(declare-fun lt!2191969 () Unit!153970)

(assert (=> b!5382952 (= lt!2191969 (lemmaExistCutMatchRandMatchRSpecEquivalent!948 (reg!15442 (regOne!30738 r!7292)) lt!2191984 (_1!35615 lt!2191967)))))

(assert (=> b!5382952 (= (Exists!2294 lambda!278769) (Exists!2294 lambda!278770))))

(declare-fun lt!2191977 () Unit!153970)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!378 (Regex!15113 List!61638) Unit!153970)

(assert (=> b!5382952 (= lt!2191977 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!378 (reg!15442 (regOne!30738 r!7292)) (_1!35615 lt!2191967)))))

(assert (=> b!5382952 (= (isDefined!11927 lt!2191983) (Exists!2294 lambda!278769))))

(assert (=> b!5382952 (= lt!2191983 (findConcatSeparation!1638 (reg!15442 (regOne!30738 r!7292)) lt!2191984 Nil!61514 (_1!35615 lt!2191967) (_1!35615 lt!2191967)))))

(declare-fun lt!2191978 () Unit!153970)

(assert (=> b!5382952 (= lt!2191978 (lemmaFindConcatSeparationEquivalentToExists!1402 (reg!15442 (regOne!30738 r!7292)) lt!2191984 (_1!35615 lt!2191967)))))

(assert (=> b!5382952 (matchRSpec!2216 lt!2191984 (_1!35615 lt!2191967))))

(declare-fun lt!2191994 () Unit!153970)

(assert (=> b!5382952 (= lt!2191994 (mainMatchTheorem!2216 lt!2191984 (_1!35615 lt!2191967)))))

(declare-fun b!5382953 () Bool)

(assert (=> b!5382953 (= e!3339042 e!3339057)))

(declare-fun res!2285891 () Bool)

(assert (=> b!5382953 (=> res!2285891 e!3339057)))

(assert (=> b!5382953 (= res!2285891 (not lt!2191954))))

(assert (=> b!5382953 e!3339045))

(declare-fun res!2285900 () Bool)

(assert (=> b!5382953 (=> (not res!2285900) (not e!3339045))))

(assert (=> b!5382953 (= res!2285900 (= (matchR!7298 lt!2191987 s!2326) (matchRSpec!2216 lt!2191987 s!2326)))))

(declare-fun lt!2191981 () Unit!153970)

(assert (=> b!5382953 (= lt!2191981 (mainMatchTheorem!2216 lt!2191987 s!2326))))

(assert (= (and start!565994 res!2285912) b!5382925))

(assert (= (and b!5382925 res!2285890) b!5382922))

(assert (= (and b!5382922 res!2285922) b!5382936))

(assert (= (and b!5382936 (not res!2285894)) b!5382917))

(assert (= (and b!5382917 (not res!2285917)) b!5382938))

(assert (= (and b!5382938 (not res!2285918)) b!5382934))

(assert (= (and b!5382934 (not res!2285893)) b!5382915))

(assert (= (and b!5382915 (not res!2285923)) b!5382937))

(assert (= (and b!5382937 (not res!2285914)) b!5382914))

(assert (= (and b!5382914 (not res!2285905)) b!5382951))

(assert (= (and b!5382951 (not res!2285910)) b!5382935))

(assert (= (and b!5382935 c!938128) b!5382947))

(assert (= (and b!5382935 (not c!938128)) b!5382942))

(assert (= (and b!5382947 (not res!2285915)) b!5382940))

(assert (= (and b!5382935 (not res!2285897)) b!5382944))

(assert (= (and b!5382944 res!2285920) b!5382924))

(assert (= (and b!5382944 (not res!2285921)) b!5382919))

(assert (= (and b!5382919 (not res!2285908)) b!5382950))

(assert (= (and b!5382950 (not res!2285899)) b!5382943))

(assert (= (and b!5382943 (not res!2285892)) b!5382941))

(assert (= (and b!5382941 (not res!2285906)) b!5382928))

(assert (= (and b!5382928 (not res!2285913)) b!5382911))

(assert (= (and b!5382911 (not res!2285919)) b!5382918))

(assert (= (and b!5382918 (not res!2285889)) b!5382913))

(assert (= (and b!5382913 (not res!2285898)) b!5382932))

(assert (= (and b!5382932 (not res!2285907)) b!5382953))

(assert (= (and b!5382953 res!2285900) b!5382948))

(assert (= (and b!5382953 (not res!2285891)) b!5382912))

(assert (= (and b!5382912 (not res!2285911)) b!5382920))

(assert (= (and b!5382920 (not res!2285909)) b!5382926))

(assert (= (and b!5382926 (not res!2285916)) b!5382927))

(assert (= (and b!5382927 (not res!2285895)) b!5382952))

(assert (= (and b!5382952 (not res!2285902)) b!5382923))

(assert (= (and b!5382923 (not res!2285901)) b!5382949))

(assert (= (and b!5382949 (not res!2285903)) b!5382945))

(assert (= (and b!5382945 (not res!2285896)) b!5382946))

(assert (= (and b!5382946 (not res!2285904)) b!5382930))

(assert (= (and start!565994 ((_ is ElementMatch!15113) r!7292)) b!5382921))

(assert (= (and start!565994 ((_ is Concat!23958) r!7292)) b!5382929))

(assert (= (and start!565994 ((_ is Star!15113) r!7292)) b!5382931))

(assert (= (and start!565994 ((_ is Union!15113) r!7292)) b!5382916))

(assert (= (and start!565994 condSetEmpty!34931) setIsEmpty!34931))

(assert (= (and start!565994 (not condSetEmpty!34931)) setNonEmpty!34931))

(assert (= setNonEmpty!34931 b!5382910))

(assert (= b!5382933 b!5382939))

(assert (= (and start!565994 ((_ is Cons!61516) zl!343)) b!5382933))

(assert (= (and start!565994 ((_ is Cons!61514) s!2326)) b!5382909))

(declare-fun m!6408664 () Bool)

(assert (=> b!5382915 m!6408664))

(assert (=> b!5382915 m!6408664))

(declare-fun m!6408666 () Bool)

(assert (=> b!5382915 m!6408666))

(declare-fun m!6408668 () Bool)

(assert (=> b!5382918 m!6408668))

(declare-fun m!6408670 () Bool)

(assert (=> b!5382938 m!6408670))

(declare-fun m!6408672 () Bool)

(assert (=> b!5382949 m!6408672))

(declare-fun m!6408674 () Bool)

(assert (=> b!5382950 m!6408674))

(declare-fun m!6408676 () Bool)

(assert (=> b!5382940 m!6408676))

(declare-fun m!6408678 () Bool)

(assert (=> b!5382913 m!6408678))

(declare-fun m!6408680 () Bool)

(assert (=> b!5382913 m!6408680))

(declare-fun m!6408682 () Bool)

(assert (=> b!5382913 m!6408682))

(declare-fun m!6408684 () Bool)

(assert (=> b!5382913 m!6408684))

(declare-fun m!6408686 () Bool)

(assert (=> b!5382913 m!6408686))

(declare-fun m!6408688 () Bool)

(assert (=> b!5382913 m!6408688))

(declare-fun m!6408690 () Bool)

(assert (=> b!5382913 m!6408690))

(declare-fun m!6408692 () Bool)

(assert (=> b!5382913 m!6408692))

(declare-fun m!6408694 () Bool)

(assert (=> b!5382913 m!6408694))

(declare-fun m!6408696 () Bool)

(assert (=> b!5382920 m!6408696))

(declare-fun m!6408698 () Bool)

(assert (=> b!5382912 m!6408698))

(declare-fun m!6408700 () Bool)

(assert (=> b!5382912 m!6408700))

(declare-fun m!6408702 () Bool)

(assert (=> b!5382912 m!6408702))

(declare-fun m!6408704 () Bool)

(assert (=> b!5382912 m!6408704))

(declare-fun m!6408706 () Bool)

(assert (=> b!5382912 m!6408706))

(declare-fun m!6408708 () Bool)

(assert (=> b!5382912 m!6408708))

(declare-fun m!6408710 () Bool)

(assert (=> b!5382912 m!6408710))

(assert (=> b!5382912 m!6408710))

(declare-fun m!6408712 () Bool)

(assert (=> b!5382912 m!6408712))

(declare-fun m!6408714 () Bool)

(assert (=> setNonEmpty!34931 m!6408714))

(declare-fun m!6408716 () Bool)

(assert (=> b!5382952 m!6408716))

(declare-fun m!6408718 () Bool)

(assert (=> b!5382952 m!6408718))

(declare-fun m!6408720 () Bool)

(assert (=> b!5382952 m!6408720))

(declare-fun m!6408722 () Bool)

(assert (=> b!5382952 m!6408722))

(declare-fun m!6408724 () Bool)

(assert (=> b!5382952 m!6408724))

(declare-fun m!6408726 () Bool)

(assert (=> b!5382952 m!6408726))

(declare-fun m!6408728 () Bool)

(assert (=> b!5382952 m!6408728))

(declare-fun m!6408730 () Bool)

(assert (=> b!5382952 m!6408730))

(declare-fun m!6408732 () Bool)

(assert (=> b!5382952 m!6408732))

(declare-fun m!6408734 () Bool)

(assert (=> b!5382952 m!6408734))

(declare-fun m!6408736 () Bool)

(assert (=> b!5382952 m!6408736))

(declare-fun m!6408738 () Bool)

(assert (=> b!5382952 m!6408738))

(assert (=> b!5382952 m!6408728))

(assert (=> b!5382952 m!6408728))

(declare-fun m!6408740 () Bool)

(assert (=> b!5382943 m!6408740))

(declare-fun m!6408742 () Bool)

(assert (=> b!5382943 m!6408742))

(declare-fun m!6408744 () Bool)

(assert (=> b!5382943 m!6408744))

(declare-fun m!6408746 () Bool)

(assert (=> b!5382943 m!6408746))

(declare-fun m!6408748 () Bool)

(assert (=> b!5382943 m!6408748))

(declare-fun m!6408750 () Bool)

(assert (=> b!5382922 m!6408750))

(declare-fun m!6408752 () Bool)

(assert (=> b!5382933 m!6408752))

(declare-fun m!6408754 () Bool)

(assert (=> b!5382941 m!6408754))

(declare-fun m!6408756 () Bool)

(assert (=> b!5382941 m!6408756))

(declare-fun m!6408758 () Bool)

(assert (=> b!5382932 m!6408758))

(declare-fun m!6408760 () Bool)

(assert (=> b!5382927 m!6408760))

(declare-fun m!6408762 () Bool)

(assert (=> b!5382930 m!6408762))

(declare-fun m!6408764 () Bool)

(assert (=> b!5382914 m!6408764))

(declare-fun m!6408766 () Bool)

(assert (=> b!5382914 m!6408766))

(declare-fun m!6408768 () Bool)

(assert (=> b!5382914 m!6408768))

(assert (=> b!5382914 m!6408764))

(declare-fun m!6408770 () Bool)

(assert (=> b!5382914 m!6408770))

(declare-fun m!6408772 () Bool)

(assert (=> b!5382914 m!6408772))

(assert (=> b!5382914 m!6408766))

(declare-fun m!6408774 () Bool)

(assert (=> b!5382914 m!6408774))

(declare-fun m!6408776 () Bool)

(assert (=> b!5382946 m!6408776))

(declare-fun m!6408778 () Bool)

(assert (=> b!5382946 m!6408778))

(declare-fun m!6408780 () Bool)

(assert (=> b!5382946 m!6408780))

(declare-fun m!6408782 () Bool)

(assert (=> b!5382946 m!6408782))

(declare-fun m!6408784 () Bool)

(assert (=> b!5382946 m!6408784))

(declare-fun m!6408786 () Bool)

(assert (=> b!5382926 m!6408786))

(declare-fun m!6408788 () Bool)

(assert (=> b!5382935 m!6408788))

(declare-fun m!6408790 () Bool)

(assert (=> b!5382935 m!6408790))

(declare-fun m!6408792 () Bool)

(assert (=> b!5382935 m!6408792))

(declare-fun m!6408794 () Bool)

(assert (=> b!5382935 m!6408794))

(declare-fun m!6408796 () Bool)

(assert (=> b!5382935 m!6408796))

(declare-fun m!6408798 () Bool)

(assert (=> b!5382935 m!6408798))

(declare-fun m!6408800 () Bool)

(assert (=> b!5382935 m!6408800))

(declare-fun m!6408802 () Bool)

(assert (=> b!5382925 m!6408802))

(declare-fun m!6408804 () Bool)

(assert (=> start!565994 m!6408804))

(declare-fun m!6408806 () Bool)

(assert (=> b!5382924 m!6408806))

(declare-fun m!6408808 () Bool)

(assert (=> b!5382917 m!6408808))

(declare-fun m!6408810 () Bool)

(assert (=> b!5382936 m!6408810))

(declare-fun m!6408812 () Bool)

(assert (=> b!5382936 m!6408812))

(declare-fun m!6408814 () Bool)

(assert (=> b!5382936 m!6408814))

(declare-fun m!6408816 () Bool)

(assert (=> b!5382951 m!6408816))

(declare-fun m!6408818 () Bool)

(assert (=> b!5382947 m!6408818))

(declare-fun m!6408820 () Bool)

(assert (=> b!5382947 m!6408820))

(declare-fun m!6408822 () Bool)

(assert (=> b!5382947 m!6408822))

(declare-fun m!6408824 () Bool)

(assert (=> b!5382953 m!6408824))

(declare-fun m!6408826 () Bool)

(assert (=> b!5382953 m!6408826))

(declare-fun m!6408828 () Bool)

(assert (=> b!5382953 m!6408828))

(declare-fun m!6408830 () Bool)

(assert (=> b!5382945 m!6408830))

(declare-fun m!6408832 () Bool)

(assert (=> b!5382923 m!6408832))

(declare-fun m!6408834 () Bool)

(assert (=> b!5382923 m!6408834))

(declare-fun m!6408836 () Bool)

(assert (=> b!5382923 m!6408836))

(declare-fun m!6408838 () Bool)

(assert (=> b!5382923 m!6408838))

(check-sat (not b!5382945) (not b!5382916) (not b!5382950) tp_is_empty!39479 (not b!5382953) (not b!5382946) (not b!5382914) (not b!5382932) (not setNonEmpty!34931) (not start!565994) (not b!5382951) (not b!5382947) (not b!5382933) (not b!5382925) (not b!5382943) (not b!5382922) (not b!5382940) (not b!5382938) (not b!5382930) (not b!5382927) (not b!5382912) (not b!5382924) (not b!5382952) (not b!5382939) (not b!5382918) (not b!5382949) (not b!5382931) (not b!5382917) (not b!5382910) (not b!5382941) (not b!5382913) (not b!5382923) (not b!5382926) (not b!5382920) (not b!5382909) (not b!5382929) (not b!5382935) (not b!5382936) (not b!5382915))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!565732 () Bool)

(assert start!565732)

(declare-fun b!5378852 () Bool)

(assert (=> b!5378852 true))

(assert (=> b!5378852 true))

(declare-fun lambda!278159 () Int)

(declare-fun lambda!278158 () Int)

(assert (=> b!5378852 (not (= lambda!278159 lambda!278158))))

(assert (=> b!5378852 true))

(assert (=> b!5378852 true))

(declare-fun b!5378854 () Bool)

(assert (=> b!5378854 true))

(declare-fun bs!1245389 () Bool)

(declare-fun b!5378853 () Bool)

(assert (= bs!1245389 (and b!5378853 b!5378852)))

(declare-datatypes ((C!30474 0))(
  ( (C!30475 (val!24939 Int)) )
))
(declare-datatypes ((Regex!15102 0))(
  ( (ElementMatch!15102 (c!937440 C!30474)) (Concat!23947 (regOne!30716 Regex!15102) (regTwo!30716 Regex!15102)) (EmptyExpr!15102) (Star!15102 (reg!15431 Regex!15102)) (EmptyLang!15102) (Union!15102 (regOne!30717 Regex!15102) (regTwo!30717 Regex!15102)) )
))
(declare-fun r!7292 () Regex!15102)

(declare-fun lt!2190082 () Regex!15102)

(declare-fun lambda!278161 () Int)

(assert (=> bs!1245389 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278161 lambda!278158))))

(assert (=> bs!1245389 (not (= lambda!278161 lambda!278159))))

(assert (=> b!5378853 true))

(assert (=> b!5378853 true))

(assert (=> b!5378853 true))

(declare-fun lambda!278162 () Int)

(assert (=> bs!1245389 (not (= lambda!278162 lambda!278158))))

(assert (=> bs!1245389 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278162 lambda!278159))))

(assert (=> b!5378853 (not (= lambda!278162 lambda!278161))))

(assert (=> b!5378853 true))

(assert (=> b!5378853 true))

(assert (=> b!5378853 true))

(declare-fun bs!1245390 () Bool)

(declare-fun b!5378835 () Bool)

(assert (= bs!1245390 (and b!5378835 b!5378852)))

(declare-fun lambda!278163 () Int)

(declare-datatypes ((List!61605 0))(
  ( (Nil!61481) (Cons!61481 (h!67929 C!30474) (t!374828 List!61605)) )
))
(declare-datatypes ((tuple2!64602 0))(
  ( (tuple2!64603 (_1!35604 List!61605) (_2!35604 List!61605)) )
))
(declare-fun lt!2190065 () tuple2!64602)

(declare-fun s!2326 () List!61605)

(assert (=> bs!1245390 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (regOne!30716 r!7292)) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278163 lambda!278158))))

(assert (=> bs!1245390 (not (= lambda!278163 lambda!278159))))

(declare-fun bs!1245391 () Bool)

(assert (= bs!1245391 (and b!5378835 b!5378853)))

(assert (=> bs!1245391 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) lt!2190082) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278163 lambda!278161))))

(assert (=> bs!1245391 (not (= lambda!278163 lambda!278162))))

(assert (=> b!5378835 true))

(assert (=> b!5378835 true))

(assert (=> b!5378835 true))

(declare-fun lambda!278164 () Int)

(assert (=> bs!1245391 (not (= lambda!278164 lambda!278162))))

(assert (=> b!5378835 (not (= lambda!278164 lambda!278163))))

(assert (=> bs!1245390 (not (= lambda!278164 lambda!278159))))

(assert (=> bs!1245391 (not (= lambda!278164 lambda!278161))))

(assert (=> bs!1245390 (not (= lambda!278164 lambda!278158))))

(assert (=> b!5378835 true))

(assert (=> b!5378835 true))

(assert (=> b!5378835 true))

(declare-fun lambda!278165 () Int)

(assert (=> bs!1245391 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) lt!2190082) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278165 lambda!278162))))

(assert (=> b!5378835 (not (= lambda!278165 lambda!278163))))

(assert (=> b!5378835 (not (= lambda!278165 lambda!278164))))

(assert (=> bs!1245390 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (regOne!30716 r!7292)) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278165 lambda!278159))))

(assert (=> bs!1245391 (not (= lambda!278165 lambda!278161))))

(assert (=> bs!1245390 (not (= lambda!278165 lambda!278158))))

(assert (=> b!5378835 true))

(assert (=> b!5378835 true))

(assert (=> b!5378835 true))

(declare-fun b!5378820 () Bool)

(declare-fun e!3336905 () Bool)

(declare-datatypes ((List!61606 0))(
  ( (Nil!61482) (Cons!61482 (h!67930 Regex!15102) (t!374829 List!61606)) )
))
(declare-datatypes ((Context!8972 0))(
  ( (Context!8973 (exprs!4986 List!61606)) )
))
(declare-fun lt!2190094 () (Set Context!8972))

(declare-fun matchZipper!1346 ((Set Context!8972) List!61605) Bool)

(assert (=> b!5378820 (= e!3336905 (matchZipper!1346 lt!2190094 (t!374828 s!2326)))))

(declare-fun b!5378821 () Bool)

(declare-fun e!3336904 () Bool)

(declare-fun e!3336901 () Bool)

(assert (=> b!5378821 (= e!3336904 e!3336901)))

(declare-fun res!2283520 () Bool)

(assert (=> b!5378821 (=> res!2283520 e!3336901)))

(declare-fun lt!2190105 () Context!8972)

(declare-fun lt!2190085 () Regex!15102)

(declare-datatypes ((List!61607 0))(
  ( (Nil!61483) (Cons!61483 (h!67931 Context!8972) (t!374830 List!61607)) )
))
(declare-fun unfocusZipper!844 (List!61607) Regex!15102)

(assert (=> b!5378821 (= res!2283520 (not (= (unfocusZipper!844 (Cons!61483 lt!2190105 Nil!61483)) lt!2190085)))))

(declare-fun lt!2190102 () Regex!15102)

(assert (=> b!5378821 (= lt!2190085 (Concat!23947 (reg!15431 (regOne!30716 r!7292)) lt!2190102))))

(declare-fun b!5378822 () Bool)

(declare-fun e!3336897 () Bool)

(declare-fun tp!1491123 () Bool)

(assert (=> b!5378822 (= e!3336897 tp!1491123)))

(declare-fun b!5378824 () Bool)

(declare-fun e!3336900 () Bool)

(declare-fun e!3336915 () Bool)

(assert (=> b!5378824 (= e!3336900 e!3336915)))

(declare-fun res!2283523 () Bool)

(assert (=> b!5378824 (=> (not res!2283523) (not e!3336915))))

(declare-fun lt!2190066 () Regex!15102)

(assert (=> b!5378824 (= res!2283523 (= r!7292 lt!2190066))))

(declare-fun zl!343 () List!61607)

(assert (=> b!5378824 (= lt!2190066 (unfocusZipper!844 zl!343))))

(declare-fun b!5378825 () Bool)

(declare-fun e!3336896 () Bool)

(declare-fun e!3336902 () Bool)

(assert (=> b!5378825 (= e!3336896 e!3336902)))

(declare-fun res!2283539 () Bool)

(assert (=> b!5378825 (=> res!2283539 e!3336902)))

(declare-fun lt!2190100 () (Set Context!8972))

(declare-fun lt!2190078 () (Set Context!8972))

(assert (=> b!5378825 (= res!2283539 (not (= lt!2190100 lt!2190078)))))

(declare-fun lt!2190093 () (Set Context!8972))

(declare-fun lambda!278160 () Int)

(declare-fun flatMap!829 ((Set Context!8972) Int) (Set Context!8972))

(declare-fun derivationStepZipperUp!474 (Context!8972 C!30474) (Set Context!8972))

(assert (=> b!5378825 (= (flatMap!829 lt!2190093 lambda!278160) (derivationStepZipperUp!474 lt!2190105 (h!67929 s!2326)))))

(declare-datatypes ((Unit!153926 0))(
  ( (Unit!153927) )
))
(declare-fun lt!2190070 () Unit!153926)

(declare-fun lemmaFlatMapOnSingletonSet!361 ((Set Context!8972) Context!8972 Int) Unit!153926)

(assert (=> b!5378825 (= lt!2190070 (lemmaFlatMapOnSingletonSet!361 lt!2190093 lt!2190105 lambda!278160))))

(declare-fun lt!2190087 () (Set Context!8972))

(assert (=> b!5378825 (= lt!2190087 (derivationStepZipperUp!474 lt!2190105 (h!67929 s!2326)))))

(declare-fun derivationStepZipper!1341 ((Set Context!8972) C!30474) (Set Context!8972))

(assert (=> b!5378825 (= lt!2190100 (derivationStepZipper!1341 lt!2190093 (h!67929 s!2326)))))

(assert (=> b!5378825 (= lt!2190093 (set.insert lt!2190105 (as set.empty (Set Context!8972))))))

(declare-fun lt!2190098 () List!61606)

(assert (=> b!5378825 (= lt!2190105 (Context!8973 (Cons!61482 (reg!15431 (regOne!30716 r!7292)) lt!2190098)))))

(declare-fun b!5378826 () Bool)

(declare-fun res!2283519 () Bool)

(declare-fun e!3336914 () Bool)

(assert (=> b!5378826 (=> res!2283519 e!3336914)))

(declare-fun matchR!7287 (Regex!15102 List!61605) Bool)

(assert (=> b!5378826 (= res!2283519 (not (matchR!7287 lt!2190082 (_1!35604 lt!2190065))))))

(declare-fun b!5378827 () Bool)

(declare-fun res!2283532 () Bool)

(assert (=> b!5378827 (=> res!2283532 e!3336902)))

(assert (=> b!5378827 (= res!2283532 (not (= (matchZipper!1346 lt!2190093 s!2326) (matchZipper!1346 lt!2190100 (t!374828 s!2326)))))))

(declare-fun b!5378828 () Bool)

(declare-fun e!3336895 () Bool)

(declare-fun nullable!5271 (Regex!15102) Bool)

(assert (=> b!5378828 (= e!3336895 (nullable!5271 (regOne!30716 (regOne!30716 r!7292))))))

(declare-fun b!5378829 () Bool)

(declare-fun res!2283544 () Bool)

(declare-fun e!3336913 () Bool)

(assert (=> b!5378829 (=> res!2283544 e!3336913)))

(declare-fun generalisedConcat!771 (List!61606) Regex!15102)

(assert (=> b!5378829 (= res!2283544 (not (= r!7292 (generalisedConcat!771 (exprs!4986 (h!67931 zl!343))))))))

(declare-fun b!5378830 () Bool)

(declare-fun e!3336903 () Bool)

(declare-fun tp!1491125 () Bool)

(declare-fun tp!1491119 () Bool)

(assert (=> b!5378830 (= e!3336903 (and tp!1491125 tp!1491119))))

(declare-fun setRes!34886 () Bool)

(declare-fun tp!1491127 () Bool)

(declare-fun setNonEmpty!34886 () Bool)

(declare-fun setElem!34886 () Context!8972)

(declare-fun e!3336917 () Bool)

(declare-fun inv!81003 (Context!8972) Bool)

(assert (=> setNonEmpty!34886 (= setRes!34886 (and tp!1491127 (inv!81003 setElem!34886) e!3336917))))

(declare-fun z!1189 () (Set Context!8972))

(declare-fun setRest!34886 () (Set Context!8972))

(assert (=> setNonEmpty!34886 (= z!1189 (set.union (set.insert setElem!34886 (as set.empty (Set Context!8972))) setRest!34886))))

(declare-fun b!5378831 () Bool)

(declare-fun tp!1491121 () Bool)

(assert (=> b!5378831 (= e!3336903 tp!1491121)))

(declare-fun setIsEmpty!34886 () Bool)

(assert (=> setIsEmpty!34886 setRes!34886))

(declare-fun b!5378832 () Bool)

(declare-fun e!3336899 () Bool)

(assert (=> b!5378832 (= e!3336901 e!3336899)))

(declare-fun res!2283530 () Bool)

(assert (=> b!5378832 (=> res!2283530 e!3336899)))

(declare-fun lt!2190091 () Context!8972)

(assert (=> b!5378832 (= res!2283530 (not (= (unfocusZipper!844 (Cons!61483 lt!2190091 Nil!61483)) (reg!15431 (regOne!30716 r!7292)))))))

(declare-fun lt!2190081 () (Set Context!8972))

(declare-fun lt!2190086 () Context!8972)

(assert (=> b!5378832 (= (flatMap!829 lt!2190081 lambda!278160) (derivationStepZipperUp!474 lt!2190086 (h!67929 s!2326)))))

(declare-fun lt!2190095 () Unit!153926)

(assert (=> b!5378832 (= lt!2190095 (lemmaFlatMapOnSingletonSet!361 lt!2190081 lt!2190086 lambda!278160))))

(declare-fun lt!2190084 () (Set Context!8972))

(assert (=> b!5378832 (= (flatMap!829 lt!2190084 lambda!278160) (derivationStepZipperUp!474 lt!2190091 (h!67929 s!2326)))))

(declare-fun lt!2190088 () Unit!153926)

(assert (=> b!5378832 (= lt!2190088 (lemmaFlatMapOnSingletonSet!361 lt!2190084 lt!2190091 lambda!278160))))

(declare-fun lt!2190097 () (Set Context!8972))

(assert (=> b!5378832 (= lt!2190097 (derivationStepZipperUp!474 lt!2190086 (h!67929 s!2326)))))

(declare-fun lt!2190104 () (Set Context!8972))

(assert (=> b!5378832 (= lt!2190104 (derivationStepZipperUp!474 lt!2190091 (h!67929 s!2326)))))

(assert (=> b!5378832 (= lt!2190081 (set.insert lt!2190086 (as set.empty (Set Context!8972))))))

(assert (=> b!5378832 (= lt!2190084 (set.insert lt!2190091 (as set.empty (Set Context!8972))))))

(assert (=> b!5378832 (= lt!2190091 (Context!8973 (Cons!61482 (reg!15431 (regOne!30716 r!7292)) Nil!61482)))))

(declare-fun b!5378833 () Bool)

(declare-fun res!2283533 () Bool)

(assert (=> b!5378833 (=> res!2283533 e!3336914)))

(declare-fun isEmpty!33471 (List!61605) Bool)

(assert (=> b!5378833 (= res!2283533 (isEmpty!33471 (_1!35604 lt!2190065)))))

(declare-fun b!5378834 () Bool)

(declare-fun res!2283543 () Bool)

(assert (=> b!5378834 (=> res!2283543 e!3336902)))

(assert (=> b!5378834 (= res!2283543 (not (= lt!2190066 r!7292)))))

(declare-fun res!2283538 () Bool)

(assert (=> start!565732 (=> (not res!2283538) (not e!3336900))))

(declare-fun validRegex!6838 (Regex!15102) Bool)

(assert (=> start!565732 (= res!2283538 (validRegex!6838 r!7292))))

(assert (=> start!565732 e!3336900))

(assert (=> start!565732 e!3336903))

(declare-fun condSetEmpty!34886 () Bool)

(assert (=> start!565732 (= condSetEmpty!34886 (= z!1189 (as set.empty (Set Context!8972))))))

(assert (=> start!565732 setRes!34886))

(declare-fun e!3336907 () Bool)

(assert (=> start!565732 e!3336907))

(declare-fun e!3336898 () Bool)

(assert (=> start!565732 e!3336898))

(declare-fun b!5378823 () Bool)

(declare-fun tp_is_empty!39457 () Bool)

(assert (=> b!5378823 (= e!3336903 tp_is_empty!39457)))

(declare-fun e!3336911 () Bool)

(assert (=> b!5378835 (= e!3336914 e!3336911)))

(declare-fun res!2283528 () Bool)

(assert (=> b!5378835 (=> res!2283528 e!3336911)))

(declare-fun lt!2190074 () List!61605)

(assert (=> b!5378835 (= res!2283528 (not (= (_1!35604 lt!2190065) lt!2190074)))))

(declare-fun lt!2190061 () tuple2!64602)

(declare-fun ++!13405 (List!61605 List!61605) List!61605)

(assert (=> b!5378835 (= lt!2190074 (++!13405 (_1!35604 lt!2190061) (_2!35604 lt!2190061)))))

(declare-datatypes ((Option!15213 0))(
  ( (None!15212) (Some!15212 (v!51241 tuple2!64602)) )
))
(declare-fun lt!2190060 () Option!15213)

(declare-fun get!21162 (Option!15213) tuple2!64602)

(assert (=> b!5378835 (= lt!2190061 (get!21162 lt!2190060))))

(declare-fun Exists!2283 (Int) Bool)

(assert (=> b!5378835 (= (Exists!2283 lambda!278163) (Exists!2283 lambda!278165))))

(declare-fun lt!2190067 () Unit!153926)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!937 (Regex!15102 Regex!15102 List!61605) Unit!153926)

(assert (=> b!5378835 (= lt!2190067 (lemmaExistCutMatchRandMatchRSpecEquivalent!937 (reg!15431 (regOne!30716 r!7292)) lt!2190082 (_1!35604 lt!2190065)))))

(assert (=> b!5378835 (= (Exists!2283 lambda!278163) (Exists!2283 lambda!278164))))

(declare-fun lt!2190069 () Unit!153926)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!367 (Regex!15102 List!61605) Unit!153926)

(assert (=> b!5378835 (= lt!2190069 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!367 (reg!15431 (regOne!30716 r!7292)) (_1!35604 lt!2190065)))))

(declare-fun isDefined!11916 (Option!15213) Bool)

(assert (=> b!5378835 (= (isDefined!11916 lt!2190060) (Exists!2283 lambda!278163))))

(declare-fun findConcatSeparation!1627 (Regex!15102 Regex!15102 List!61605 List!61605 List!61605) Option!15213)

(assert (=> b!5378835 (= lt!2190060 (findConcatSeparation!1627 (reg!15431 (regOne!30716 r!7292)) lt!2190082 Nil!61481 (_1!35604 lt!2190065) (_1!35604 lt!2190065)))))

(declare-fun lt!2190101 () Unit!153926)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1391 (Regex!15102 Regex!15102 List!61605) Unit!153926)

(assert (=> b!5378835 (= lt!2190101 (lemmaFindConcatSeparationEquivalentToExists!1391 (reg!15431 (regOne!30716 r!7292)) lt!2190082 (_1!35604 lt!2190065)))))

(declare-fun matchRSpec!2205 (Regex!15102 List!61605) Bool)

(assert (=> b!5378835 (matchRSpec!2205 lt!2190082 (_1!35604 lt!2190065))))

(declare-fun lt!2190075 () Unit!153926)

(declare-fun mainMatchTheorem!2205 (Regex!15102 List!61605) Unit!153926)

(assert (=> b!5378835 (= lt!2190075 (mainMatchTheorem!2205 lt!2190082 (_1!35604 lt!2190065)))))

(declare-fun b!5378836 () Bool)

(declare-fun e!3336908 () Unit!153926)

(declare-fun Unit!153928 () Unit!153926)

(assert (=> b!5378836 (= e!3336908 Unit!153928)))

(declare-fun b!5378837 () Bool)

(declare-fun Unit!153929 () Unit!153926)

(assert (=> b!5378837 (= e!3336908 Unit!153929)))

(declare-fun lt!2190099 () (Set Context!8972))

(declare-fun lt!2190068 () Unit!153926)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!339 ((Set Context!8972) (Set Context!8972) List!61605) Unit!153926)

(assert (=> b!5378837 (= lt!2190068 (lemmaZipperConcatMatchesSameAsBothZippers!339 lt!2190099 lt!2190094 (t!374828 s!2326)))))

(declare-fun res!2283545 () Bool)

(assert (=> b!5378837 (= res!2283545 (matchZipper!1346 lt!2190099 (t!374828 s!2326)))))

(assert (=> b!5378837 (=> res!2283545 e!3336905)))

(assert (=> b!5378837 (= (matchZipper!1346 (set.union lt!2190099 lt!2190094) (t!374828 s!2326)) e!3336905)))

(declare-fun b!5378838 () Bool)

(declare-fun res!2283537 () Bool)

(declare-fun e!3336910 () Bool)

(assert (=> b!5378838 (=> res!2283537 e!3336910)))

(assert (=> b!5378838 (= res!2283537 e!3336895)))

(declare-fun res!2283526 () Bool)

(assert (=> b!5378838 (=> (not res!2283526) (not e!3336895))))

(assert (=> b!5378838 (= res!2283526 (is-Concat!23947 (regOne!30716 r!7292)))))

(declare-fun b!5378839 () Bool)

(declare-fun e!3336912 () Bool)

(declare-fun lt!2190073 () Bool)

(declare-fun lt!2190089 () Bool)

(assert (=> b!5378839 (= e!3336912 (or (not lt!2190073) lt!2190089))))

(declare-fun b!5378840 () Bool)

(assert (=> b!5378840 (= e!3336902 e!3336904)))

(declare-fun res!2283549 () Bool)

(assert (=> b!5378840 (=> res!2283549 e!3336904)))

(assert (=> b!5378840 (= res!2283549 (not (= r!7292 lt!2190102)))))

(assert (=> b!5378840 (= lt!2190102 (Concat!23947 lt!2190082 (regTwo!30716 r!7292)))))

(declare-fun b!5378841 () Bool)

(assert (=> b!5378841 (= e!3336915 (not e!3336913))))

(declare-fun res!2283541 () Bool)

(assert (=> b!5378841 (=> res!2283541 e!3336913)))

(assert (=> b!5378841 (= res!2283541 (not (is-Cons!61483 zl!343)))))

(assert (=> b!5378841 (= lt!2190073 lt!2190089)))

(assert (=> b!5378841 (= lt!2190089 (matchRSpec!2205 r!7292 s!2326))))

(assert (=> b!5378841 (= lt!2190073 (matchR!7287 r!7292 s!2326))))

(declare-fun lt!2190063 () Unit!153926)

(assert (=> b!5378841 (= lt!2190063 (mainMatchTheorem!2205 r!7292 s!2326))))

(declare-fun b!5378842 () Bool)

(declare-fun res!2283534 () Bool)

(assert (=> b!5378842 (=> res!2283534 e!3336913)))

(assert (=> b!5378842 (= res!2283534 (or (is-EmptyExpr!15102 r!7292) (is-EmptyLang!15102 r!7292) (is-ElementMatch!15102 r!7292) (is-Union!15102 r!7292) (not (is-Concat!23947 r!7292))))))

(declare-fun b!5378843 () Bool)

(declare-fun res!2283536 () Bool)

(declare-fun e!3336906 () Bool)

(assert (=> b!5378843 (=> res!2283536 e!3336906)))

(declare-fun isEmpty!33472 (List!61606) Bool)

(assert (=> b!5378843 (= res!2283536 (isEmpty!33472 (t!374829 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun b!5378844 () Bool)

(declare-fun res!2283529 () Bool)

(assert (=> b!5378844 (=> (not res!2283529) (not e!3336900))))

(declare-fun toList!8886 ((Set Context!8972)) List!61607)

(assert (=> b!5378844 (= res!2283529 (= (toList!8886 z!1189) zl!343))))

(declare-fun b!5378845 () Bool)

(declare-fun tp!1491124 () Bool)

(declare-fun tp!1491126 () Bool)

(assert (=> b!5378845 (= e!3336903 (and tp!1491124 tp!1491126))))

(declare-fun b!5378846 () Bool)

(declare-fun res!2283547 () Bool)

(assert (=> b!5378846 (=> res!2283547 e!3336899)))

(assert (=> b!5378846 (= res!2283547 (not (= (unfocusZipper!844 (Cons!61483 lt!2190086 Nil!61483)) lt!2190102)))))

(declare-fun b!5378847 () Bool)

(declare-fun res!2283518 () Bool)

(assert (=> b!5378847 (=> res!2283518 e!3336913)))

(declare-fun isEmpty!33473 (List!61607) Bool)

(assert (=> b!5378847 (= res!2283518 (not (isEmpty!33473 (t!374830 zl!343))))))

(declare-fun tp!1491118 () Bool)

(declare-fun b!5378848 () Bool)

(assert (=> b!5378848 (= e!3336907 (and (inv!81003 (h!67931 zl!343)) e!3336897 tp!1491118))))

(declare-fun b!5378849 () Bool)

(declare-fun e!3336916 () Bool)

(assert (=> b!5378849 (= e!3336899 e!3336916)))

(declare-fun res!2283535 () Bool)

(assert (=> b!5378849 (=> res!2283535 e!3336916)))

(assert (=> b!5378849 (= res!2283535 (not lt!2190073))))

(assert (=> b!5378849 e!3336912))

(declare-fun res!2283524 () Bool)

(assert (=> b!5378849 (=> (not res!2283524) (not e!3336912))))

(assert (=> b!5378849 (= res!2283524 (= (matchR!7287 lt!2190085 s!2326) (matchRSpec!2205 lt!2190085 s!2326)))))

(declare-fun lt!2190096 () Unit!153926)

(assert (=> b!5378849 (= lt!2190096 (mainMatchTheorem!2205 lt!2190085 s!2326))))

(declare-fun b!5378850 () Bool)

(declare-fun res!2283521 () Bool)

(assert (=> b!5378850 (=> res!2283521 e!3336913)))

(declare-fun generalisedUnion!1031 (List!61606) Regex!15102)

(declare-fun unfocusZipperList!544 (List!61607) List!61606)

(assert (=> b!5378850 (= res!2283521 (not (= r!7292 (generalisedUnion!1031 (unfocusZipperList!544 zl!343)))))))

(declare-fun b!5378851 () Bool)

(declare-fun e!3336909 () Bool)

(assert (=> b!5378851 (= e!3336911 e!3336909)))

(declare-fun res!2283542 () Bool)

(assert (=> b!5378851 (=> res!2283542 e!3336909)))

(declare-fun lt!2190062 () List!61605)

(assert (=> b!5378851 (= res!2283542 (not (= lt!2190062 s!2326)))))

(declare-fun lt!2190064 () List!61605)

(assert (=> b!5378851 (= lt!2190062 (++!13405 (_1!35604 lt!2190061) lt!2190064))))

(assert (=> b!5378851 (= lt!2190062 (++!13405 lt!2190074 (_2!35604 lt!2190065)))))

(assert (=> b!5378851 (= lt!2190064 (++!13405 (_2!35604 lt!2190061) (_2!35604 lt!2190065)))))

(declare-fun lt!2190076 () Unit!153926)

(declare-fun lemmaConcatAssociativity!2799 (List!61605 List!61605 List!61605) Unit!153926)

(assert (=> b!5378851 (= lt!2190076 (lemmaConcatAssociativity!2799 (_1!35604 lt!2190061) (_2!35604 lt!2190061) (_2!35604 lt!2190065)))))

(assert (=> b!5378852 (= e!3336913 e!3336906)))

(declare-fun res!2283540 () Bool)

(assert (=> b!5378852 (=> res!2283540 e!3336906)))

(declare-fun lt!2190059 () Bool)

(assert (=> b!5378852 (= res!2283540 (or (not (= lt!2190073 lt!2190059)) (is-Nil!61481 s!2326)))))

(assert (=> b!5378852 (= (Exists!2283 lambda!278158) (Exists!2283 lambda!278159))))

(declare-fun lt!2190090 () Unit!153926)

(assert (=> b!5378852 (= lt!2190090 (lemmaExistCutMatchRandMatchRSpecEquivalent!937 (regOne!30716 r!7292) (regTwo!30716 r!7292) s!2326))))

(assert (=> b!5378852 (= lt!2190059 (Exists!2283 lambda!278158))))

(assert (=> b!5378852 (= lt!2190059 (isDefined!11916 (findConcatSeparation!1627 (regOne!30716 r!7292) (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326)))))

(declare-fun lt!2190079 () Unit!153926)

(assert (=> b!5378852 (= lt!2190079 (lemmaFindConcatSeparationEquivalentToExists!1391 (regOne!30716 r!7292) (regTwo!30716 r!7292) s!2326))))

(assert (=> b!5378853 (= e!3336916 e!3336914)))

(declare-fun res!2283548 () Bool)

(assert (=> b!5378853 (=> res!2283548 e!3336914)))

(assert (=> b!5378853 (= res!2283548 (not (= (++!13405 (_1!35604 lt!2190065) (_2!35604 lt!2190065)) s!2326)))))

(declare-fun lt!2190072 () Option!15213)

(assert (=> b!5378853 (= lt!2190065 (get!21162 lt!2190072))))

(assert (=> b!5378853 (= (Exists!2283 lambda!278161) (Exists!2283 lambda!278162))))

(declare-fun lt!2190077 () Unit!153926)

(assert (=> b!5378853 (= lt!2190077 (lemmaExistCutMatchRandMatchRSpecEquivalent!937 lt!2190082 (regTwo!30716 r!7292) s!2326))))

(assert (=> b!5378853 (= (isDefined!11916 lt!2190072) (Exists!2283 lambda!278161))))

(assert (=> b!5378853 (= lt!2190072 (findConcatSeparation!1627 lt!2190082 (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326))))

(declare-fun lt!2190103 () Unit!153926)

(assert (=> b!5378853 (= lt!2190103 (lemmaFindConcatSeparationEquivalentToExists!1391 lt!2190082 (regTwo!30716 r!7292) s!2326))))

(assert (=> b!5378854 (= e!3336906 e!3336910)))

(declare-fun res!2283522 () Bool)

(assert (=> b!5378854 (=> res!2283522 e!3336910)))

(assert (=> b!5378854 (= res!2283522 (or (and (is-ElementMatch!15102 (regOne!30716 r!7292)) (= (c!937440 (regOne!30716 r!7292)) (h!67929 s!2326))) (is-Union!15102 (regOne!30716 r!7292))))))

(declare-fun lt!2190083 () Unit!153926)

(assert (=> b!5378854 (= lt!2190083 e!3336908)))

(declare-fun c!937439 () Bool)

(assert (=> b!5378854 (= c!937439 (nullable!5271 (h!67930 (exprs!4986 (h!67931 zl!343)))))))

(assert (=> b!5378854 (= (flatMap!829 z!1189 lambda!278160) (derivationStepZipperUp!474 (h!67931 zl!343) (h!67929 s!2326)))))

(declare-fun lt!2190080 () Unit!153926)

(assert (=> b!5378854 (= lt!2190080 (lemmaFlatMapOnSingletonSet!361 z!1189 (h!67931 zl!343) lambda!278160))))

(declare-fun lt!2190092 () Context!8972)

(assert (=> b!5378854 (= lt!2190094 (derivationStepZipperUp!474 lt!2190092 (h!67929 s!2326)))))

(declare-fun derivationStepZipperDown!550 (Regex!15102 Context!8972 C!30474) (Set Context!8972))

(assert (=> b!5378854 (= lt!2190099 (derivationStepZipperDown!550 (h!67930 (exprs!4986 (h!67931 zl!343))) lt!2190092 (h!67929 s!2326)))))

(assert (=> b!5378854 (= lt!2190092 (Context!8973 (t!374829 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun lt!2190071 () (Set Context!8972))

(assert (=> b!5378854 (= lt!2190071 (derivationStepZipperUp!474 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343))))) (h!67929 s!2326)))))

(declare-fun b!5378855 () Bool)

(declare-fun tp!1491122 () Bool)

(assert (=> b!5378855 (= e!3336917 tp!1491122)))

(declare-fun b!5378856 () Bool)

(assert (=> b!5378856 (= e!3336910 e!3336896)))

(declare-fun res!2283527 () Bool)

(assert (=> b!5378856 (=> res!2283527 e!3336896)))

(assert (=> b!5378856 (= res!2283527 (not (= lt!2190099 lt!2190078)))))

(assert (=> b!5378856 (= lt!2190078 (derivationStepZipperDown!550 (reg!15431 (regOne!30716 r!7292)) lt!2190086 (h!67929 s!2326)))))

(assert (=> b!5378856 (= lt!2190086 (Context!8973 lt!2190098))))

(assert (=> b!5378856 (= lt!2190098 (Cons!61482 lt!2190082 (t!374829 (exprs!4986 (h!67931 zl!343)))))))

(assert (=> b!5378856 (= lt!2190082 (Star!15102 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun b!5378857 () Bool)

(declare-fun res!2283525 () Bool)

(assert (=> b!5378857 (=> res!2283525 e!3336914)))

(assert (=> b!5378857 (= res!2283525 (not (matchR!7287 (regTwo!30716 r!7292) (_2!35604 lt!2190065))))))

(declare-fun b!5378858 () Bool)

(declare-fun tp!1491120 () Bool)

(assert (=> b!5378858 (= e!3336898 (and tp_is_empty!39457 tp!1491120))))

(declare-fun b!5378859 () Bool)

(declare-fun res!2283531 () Bool)

(assert (=> b!5378859 (=> res!2283531 e!3336910)))

(assert (=> b!5378859 (= res!2283531 (or (is-Concat!23947 (regOne!30716 r!7292)) (not (is-Star!15102 (regOne!30716 r!7292)))))))

(declare-fun b!5378860 () Bool)

(assert (=> b!5378860 (= e!3336909 (validRegex!6838 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun b!5378861 () Bool)

(declare-fun res!2283546 () Bool)

(assert (=> b!5378861 (=> res!2283546 e!3336913)))

(assert (=> b!5378861 (= res!2283546 (not (is-Cons!61482 (exprs!4986 (h!67931 zl!343)))))))

(assert (= (and start!565732 res!2283538) b!5378844))

(assert (= (and b!5378844 res!2283529) b!5378824))

(assert (= (and b!5378824 res!2283523) b!5378841))

(assert (= (and b!5378841 (not res!2283541)) b!5378847))

(assert (= (and b!5378847 (not res!2283518)) b!5378829))

(assert (= (and b!5378829 (not res!2283544)) b!5378861))

(assert (= (and b!5378861 (not res!2283546)) b!5378850))

(assert (= (and b!5378850 (not res!2283521)) b!5378842))

(assert (= (and b!5378842 (not res!2283534)) b!5378852))

(assert (= (and b!5378852 (not res!2283540)) b!5378843))

(assert (= (and b!5378843 (not res!2283536)) b!5378854))

(assert (= (and b!5378854 c!937439) b!5378837))

(assert (= (and b!5378854 (not c!937439)) b!5378836))

(assert (= (and b!5378837 (not res!2283545)) b!5378820))

(assert (= (and b!5378854 (not res!2283522)) b!5378838))

(assert (= (and b!5378838 res!2283526) b!5378828))

(assert (= (and b!5378838 (not res!2283537)) b!5378859))

(assert (= (and b!5378859 (not res!2283531)) b!5378856))

(assert (= (and b!5378856 (not res!2283527)) b!5378825))

(assert (= (and b!5378825 (not res!2283539)) b!5378827))

(assert (= (and b!5378827 (not res!2283532)) b!5378834))

(assert (= (and b!5378834 (not res!2283543)) b!5378840))

(assert (= (and b!5378840 (not res!2283549)) b!5378821))

(assert (= (and b!5378821 (not res!2283520)) b!5378832))

(assert (= (and b!5378832 (not res!2283530)) b!5378846))

(assert (= (and b!5378846 (not res!2283547)) b!5378849))

(assert (= (and b!5378849 res!2283524) b!5378839))

(assert (= (and b!5378849 (not res!2283535)) b!5378853))

(assert (= (and b!5378853 (not res!2283548)) b!5378826))

(assert (= (and b!5378826 (not res!2283519)) b!5378857))

(assert (= (and b!5378857 (not res!2283525)) b!5378833))

(assert (= (and b!5378833 (not res!2283533)) b!5378835))

(assert (= (and b!5378835 (not res!2283528)) b!5378851))

(assert (= (and b!5378851 (not res!2283542)) b!5378860))

(assert (= (and start!565732 (is-ElementMatch!15102 r!7292)) b!5378823))

(assert (= (and start!565732 (is-Concat!23947 r!7292)) b!5378845))

(assert (= (and start!565732 (is-Star!15102 r!7292)) b!5378831))

(assert (= (and start!565732 (is-Union!15102 r!7292)) b!5378830))

(assert (= (and start!565732 condSetEmpty!34886) setIsEmpty!34886))

(assert (= (and start!565732 (not condSetEmpty!34886)) setNonEmpty!34886))

(assert (= setNonEmpty!34886 b!5378855))

(assert (= b!5378848 b!5378822))

(assert (= (and start!565732 (is-Cons!61483 zl!343)) b!5378848))

(assert (= (and start!565732 (is-Cons!61481 s!2326)) b!5378858))

(declare-fun m!6404940 () Bool)

(assert (=> b!5378850 m!6404940))

(assert (=> b!5378850 m!6404940))

(declare-fun m!6404942 () Bool)

(assert (=> b!5378850 m!6404942))

(declare-fun m!6404944 () Bool)

(assert (=> b!5378856 m!6404944))

(declare-fun m!6404946 () Bool)

(assert (=> b!5378837 m!6404946))

(declare-fun m!6404948 () Bool)

(assert (=> b!5378837 m!6404948))

(declare-fun m!6404950 () Bool)

(assert (=> b!5378837 m!6404950))

(declare-fun m!6404952 () Bool)

(assert (=> b!5378852 m!6404952))

(declare-fun m!6404954 () Bool)

(assert (=> b!5378852 m!6404954))

(declare-fun m!6404956 () Bool)

(assert (=> b!5378852 m!6404956))

(declare-fun m!6404958 () Bool)

(assert (=> b!5378852 m!6404958))

(assert (=> b!5378852 m!6404956))

(declare-fun m!6404960 () Bool)

(assert (=> b!5378852 m!6404960))

(assert (=> b!5378852 m!6404952))

(declare-fun m!6404962 () Bool)

(assert (=> b!5378852 m!6404962))

(declare-fun m!6404964 () Bool)

(assert (=> b!5378841 m!6404964))

(declare-fun m!6404966 () Bool)

(assert (=> b!5378841 m!6404966))

(declare-fun m!6404968 () Bool)

(assert (=> b!5378841 m!6404968))

(declare-fun m!6404970 () Bool)

(assert (=> b!5378849 m!6404970))

(declare-fun m!6404972 () Bool)

(assert (=> b!5378849 m!6404972))

(declare-fun m!6404974 () Bool)

(assert (=> b!5378849 m!6404974))

(declare-fun m!6404976 () Bool)

(assert (=> b!5378821 m!6404976))

(declare-fun m!6404978 () Bool)

(assert (=> b!5378847 m!6404978))

(declare-fun m!6404980 () Bool)

(assert (=> start!565732 m!6404980))

(declare-fun m!6404982 () Bool)

(assert (=> b!5378860 m!6404982))

(declare-fun m!6404984 () Bool)

(assert (=> setNonEmpty!34886 m!6404984))

(declare-fun m!6404986 () Bool)

(assert (=> b!5378828 m!6404986))

(declare-fun m!6404988 () Bool)

(assert (=> b!5378829 m!6404988))

(declare-fun m!6404990 () Bool)

(assert (=> b!5378854 m!6404990))

(declare-fun m!6404992 () Bool)

(assert (=> b!5378854 m!6404992))

(declare-fun m!6404994 () Bool)

(assert (=> b!5378854 m!6404994))

(declare-fun m!6404996 () Bool)

(assert (=> b!5378854 m!6404996))

(declare-fun m!6404998 () Bool)

(assert (=> b!5378854 m!6404998))

(declare-fun m!6405000 () Bool)

(assert (=> b!5378854 m!6405000))

(declare-fun m!6405002 () Bool)

(assert (=> b!5378854 m!6405002))

(declare-fun m!6405004 () Bool)

(assert (=> b!5378827 m!6405004))

(declare-fun m!6405006 () Bool)

(assert (=> b!5378827 m!6405006))

(declare-fun m!6405008 () Bool)

(assert (=> b!5378843 m!6405008))

(declare-fun m!6405010 () Bool)

(assert (=> b!5378844 m!6405010))

(declare-fun m!6405012 () Bool)

(assert (=> b!5378825 m!6405012))

(declare-fun m!6405014 () Bool)

(assert (=> b!5378825 m!6405014))

(declare-fun m!6405016 () Bool)

(assert (=> b!5378825 m!6405016))

(declare-fun m!6405018 () Bool)

(assert (=> b!5378825 m!6405018))

(declare-fun m!6405020 () Bool)

(assert (=> b!5378825 m!6405020))

(declare-fun m!6405022 () Bool)

(assert (=> b!5378832 m!6405022))

(declare-fun m!6405024 () Bool)

(assert (=> b!5378832 m!6405024))

(declare-fun m!6405026 () Bool)

(assert (=> b!5378832 m!6405026))

(declare-fun m!6405028 () Bool)

(assert (=> b!5378832 m!6405028))

(declare-fun m!6405030 () Bool)

(assert (=> b!5378832 m!6405030))

(declare-fun m!6405032 () Bool)

(assert (=> b!5378832 m!6405032))

(declare-fun m!6405034 () Bool)

(assert (=> b!5378832 m!6405034))

(declare-fun m!6405036 () Bool)

(assert (=> b!5378832 m!6405036))

(declare-fun m!6405038 () Bool)

(assert (=> b!5378832 m!6405038))

(declare-fun m!6405040 () Bool)

(assert (=> b!5378835 m!6405040))

(assert (=> b!5378835 m!6405040))

(declare-fun m!6405042 () Bool)

(assert (=> b!5378835 m!6405042))

(declare-fun m!6405044 () Bool)

(assert (=> b!5378835 m!6405044))

(declare-fun m!6405046 () Bool)

(assert (=> b!5378835 m!6405046))

(declare-fun m!6405048 () Bool)

(assert (=> b!5378835 m!6405048))

(declare-fun m!6405050 () Bool)

(assert (=> b!5378835 m!6405050))

(assert (=> b!5378835 m!6405040))

(declare-fun m!6405052 () Bool)

(assert (=> b!5378835 m!6405052))

(declare-fun m!6405054 () Bool)

(assert (=> b!5378835 m!6405054))

(declare-fun m!6405056 () Bool)

(assert (=> b!5378835 m!6405056))

(declare-fun m!6405058 () Bool)

(assert (=> b!5378835 m!6405058))

(declare-fun m!6405060 () Bool)

(assert (=> b!5378835 m!6405060))

(declare-fun m!6405062 () Bool)

(assert (=> b!5378835 m!6405062))

(declare-fun m!6405064 () Bool)

(assert (=> b!5378820 m!6405064))

(declare-fun m!6405066 () Bool)

(assert (=> b!5378853 m!6405066))

(declare-fun m!6405068 () Bool)

(assert (=> b!5378853 m!6405068))

(declare-fun m!6405070 () Bool)

(assert (=> b!5378853 m!6405070))

(declare-fun m!6405072 () Bool)

(assert (=> b!5378853 m!6405072))

(declare-fun m!6405074 () Bool)

(assert (=> b!5378853 m!6405074))

(declare-fun m!6405076 () Bool)

(assert (=> b!5378853 m!6405076))

(declare-fun m!6405078 () Bool)

(assert (=> b!5378853 m!6405078))

(assert (=> b!5378853 m!6405074))

(declare-fun m!6405080 () Bool)

(assert (=> b!5378853 m!6405080))

(declare-fun m!6405082 () Bool)

(assert (=> b!5378826 m!6405082))

(declare-fun m!6405084 () Bool)

(assert (=> b!5378833 m!6405084))

(declare-fun m!6405086 () Bool)

(assert (=> b!5378824 m!6405086))

(declare-fun m!6405088 () Bool)

(assert (=> b!5378848 m!6405088))

(declare-fun m!6405090 () Bool)

(assert (=> b!5378851 m!6405090))

(declare-fun m!6405092 () Bool)

(assert (=> b!5378851 m!6405092))

(declare-fun m!6405094 () Bool)

(assert (=> b!5378851 m!6405094))

(declare-fun m!6405096 () Bool)

(assert (=> b!5378851 m!6405096))

(declare-fun m!6405098 () Bool)

(assert (=> b!5378857 m!6405098))

(declare-fun m!6405100 () Bool)

(assert (=> b!5378846 m!6405100))

(push 1)

(assert (not b!5378843))

(assert (not b!5378854))

(assert (not b!5378833))

(assert (not b!5378821))

(assert (not b!5378845))

(assert (not b!5378847))

(assert (not b!5378852))

(assert (not b!5378828))

(assert (not b!5378829))

(assert (not b!5378837))

(assert (not b!5378860))

(assert (not b!5378846))

(assert (not start!565732))

(assert (not b!5378853))

(assert (not b!5378825))

(assert (not b!5378835))

(assert (not setNonEmpty!34886))

(assert (not b!5378851))

(assert (not b!5378857))

(assert (not b!5378832))

(assert (not b!5378858))

(assert (not b!5378824))

(assert (not b!5378831))

(assert tp_is_empty!39457)

(assert (not b!5378850))

(assert (not b!5378820))

(assert (not b!5378841))

(assert (not b!5378826))

(assert (not b!5378827))

(assert (not b!5378822))

(assert (not b!5378855))

(assert (not b!5378848))

(assert (not b!5378844))

(assert (not b!5378856))

(assert (not b!5378849))

(assert (not b!5378830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5379070 () Bool)

(declare-fun e!3337021 () Regex!15102)

(assert (=> b!5379070 (= e!3337021 (h!67930 (unfocusZipperList!544 zl!343)))))

(declare-fun b!5379071 () Bool)

(declare-fun e!3337024 () Bool)

(declare-fun lt!2190249 () Regex!15102)

(declare-fun isUnion!386 (Regex!15102) Bool)

(assert (=> b!5379071 (= e!3337024 (isUnion!386 lt!2190249))))

(declare-fun b!5379072 () Bool)

(declare-fun e!3337026 () Regex!15102)

(assert (=> b!5379072 (= e!3337026 (Union!15102 (h!67930 (unfocusZipperList!544 zl!343)) (generalisedUnion!1031 (t!374829 (unfocusZipperList!544 zl!343)))))))

(declare-fun b!5379073 () Bool)

(declare-fun head!11540 (List!61606) Regex!15102)

(assert (=> b!5379073 (= e!3337024 (= lt!2190249 (head!11540 (unfocusZipperList!544 zl!343))))))

(declare-fun b!5379074 () Bool)

(declare-fun e!3337025 () Bool)

(assert (=> b!5379074 (= e!3337025 (isEmpty!33472 (t!374829 (unfocusZipperList!544 zl!343))))))

(declare-fun d!1721587 () Bool)

(declare-fun e!3337022 () Bool)

(assert (=> d!1721587 e!3337022))

(declare-fun res!2283696 () Bool)

(assert (=> d!1721587 (=> (not res!2283696) (not e!3337022))))

(assert (=> d!1721587 (= res!2283696 (validRegex!6838 lt!2190249))))

(assert (=> d!1721587 (= lt!2190249 e!3337021)))

(declare-fun c!937465 () Bool)

(assert (=> d!1721587 (= c!937465 e!3337025)))

(declare-fun res!2283697 () Bool)

(assert (=> d!1721587 (=> (not res!2283697) (not e!3337025))))

(assert (=> d!1721587 (= res!2283697 (is-Cons!61482 (unfocusZipperList!544 zl!343)))))

(declare-fun lambda!278206 () Int)

(declare-fun forall!14504 (List!61606 Int) Bool)

(assert (=> d!1721587 (forall!14504 (unfocusZipperList!544 zl!343) lambda!278206)))

(assert (=> d!1721587 (= (generalisedUnion!1031 (unfocusZipperList!544 zl!343)) lt!2190249)))

(declare-fun b!5379075 () Bool)

(assert (=> b!5379075 (= e!3337026 EmptyLang!15102)))

(declare-fun b!5379076 () Bool)

(declare-fun e!3337023 () Bool)

(declare-fun isEmptyLang!954 (Regex!15102) Bool)

(assert (=> b!5379076 (= e!3337023 (isEmptyLang!954 lt!2190249))))

(declare-fun b!5379077 () Bool)

(assert (=> b!5379077 (= e!3337023 e!3337024)))

(declare-fun c!937462 () Bool)

(declare-fun tail!10637 (List!61606) List!61606)

(assert (=> b!5379077 (= c!937462 (isEmpty!33472 (tail!10637 (unfocusZipperList!544 zl!343))))))

(declare-fun b!5379078 () Bool)

(assert (=> b!5379078 (= e!3337021 e!3337026)))

(declare-fun c!937463 () Bool)

(assert (=> b!5379078 (= c!937463 (is-Cons!61482 (unfocusZipperList!544 zl!343)))))

(declare-fun b!5379079 () Bool)

(assert (=> b!5379079 (= e!3337022 e!3337023)))

(declare-fun c!937464 () Bool)

(assert (=> b!5379079 (= c!937464 (isEmpty!33472 (unfocusZipperList!544 zl!343)))))

(assert (= (and d!1721587 res!2283697) b!5379074))

(assert (= (and d!1721587 c!937465) b!5379070))

(assert (= (and d!1721587 (not c!937465)) b!5379078))

(assert (= (and b!5379078 c!937463) b!5379072))

(assert (= (and b!5379078 (not c!937463)) b!5379075))

(assert (= (and d!1721587 res!2283696) b!5379079))

(assert (= (and b!5379079 c!937464) b!5379076))

(assert (= (and b!5379079 (not c!937464)) b!5379077))

(assert (= (and b!5379077 c!937462) b!5379073))

(assert (= (and b!5379077 (not c!937462)) b!5379071))

(declare-fun m!6405264 () Bool)

(assert (=> d!1721587 m!6405264))

(assert (=> d!1721587 m!6404940))

(declare-fun m!6405266 () Bool)

(assert (=> d!1721587 m!6405266))

(declare-fun m!6405268 () Bool)

(assert (=> b!5379076 m!6405268))

(declare-fun m!6405270 () Bool)

(assert (=> b!5379074 m!6405270))

(declare-fun m!6405272 () Bool)

(assert (=> b!5379072 m!6405272))

(declare-fun m!6405274 () Bool)

(assert (=> b!5379071 m!6405274))

(assert (=> b!5379073 m!6404940))

(declare-fun m!6405276 () Bool)

(assert (=> b!5379073 m!6405276))

(assert (=> b!5379077 m!6404940))

(declare-fun m!6405278 () Bool)

(assert (=> b!5379077 m!6405278))

(assert (=> b!5379077 m!6405278))

(declare-fun m!6405280 () Bool)

(assert (=> b!5379077 m!6405280))

(assert (=> b!5379079 m!6404940))

(declare-fun m!6405282 () Bool)

(assert (=> b!5379079 m!6405282))

(assert (=> b!5378850 d!1721587))

(declare-fun bs!1245395 () Bool)

(declare-fun d!1721589 () Bool)

(assert (= bs!1245395 (and d!1721589 d!1721587)))

(declare-fun lambda!278209 () Int)

(assert (=> bs!1245395 (= lambda!278209 lambda!278206)))

(declare-fun lt!2190252 () List!61606)

(assert (=> d!1721589 (forall!14504 lt!2190252 lambda!278209)))

(declare-fun e!3337029 () List!61606)

(assert (=> d!1721589 (= lt!2190252 e!3337029)))

(declare-fun c!937468 () Bool)

(assert (=> d!1721589 (= c!937468 (is-Cons!61483 zl!343))))

(assert (=> d!1721589 (= (unfocusZipperList!544 zl!343) lt!2190252)))

(declare-fun b!5379084 () Bool)

(assert (=> b!5379084 (= e!3337029 (Cons!61482 (generalisedConcat!771 (exprs!4986 (h!67931 zl!343))) (unfocusZipperList!544 (t!374830 zl!343))))))

(declare-fun b!5379085 () Bool)

(assert (=> b!5379085 (= e!3337029 Nil!61482)))

(assert (= (and d!1721589 c!937468) b!5379084))

(assert (= (and d!1721589 (not c!937468)) b!5379085))

(declare-fun m!6405284 () Bool)

(assert (=> d!1721589 m!6405284))

(assert (=> b!5379084 m!6404988))

(declare-fun m!6405286 () Bool)

(assert (=> b!5379084 m!6405286))

(assert (=> b!5378850 d!1721589))

(declare-fun b!5379114 () Bool)

(declare-fun e!3337045 () Bool)

(declare-fun lt!2190255 () Bool)

(assert (=> b!5379114 (= e!3337045 (not lt!2190255))))

(declare-fun b!5379115 () Bool)

(declare-fun e!3337047 () Bool)

(assert (=> b!5379115 (= e!3337047 e!3337045)))

(declare-fun c!937476 () Bool)

(assert (=> b!5379115 (= c!937476 (is-EmptyLang!15102 lt!2190085))))

(declare-fun b!5379116 () Bool)

(declare-fun call!385193 () Bool)

(assert (=> b!5379116 (= e!3337047 (= lt!2190255 call!385193))))

(declare-fun b!5379117 () Bool)

(declare-fun res!2283716 () Bool)

(declare-fun e!3337049 () Bool)

(assert (=> b!5379117 (=> (not res!2283716) (not e!3337049))))

(assert (=> b!5379117 (= res!2283716 (not call!385193))))

(declare-fun d!1721591 () Bool)

(assert (=> d!1721591 e!3337047))

(declare-fun c!937475 () Bool)

(assert (=> d!1721591 (= c!937475 (is-EmptyExpr!15102 lt!2190085))))

(declare-fun e!3337050 () Bool)

(assert (=> d!1721591 (= lt!2190255 e!3337050)))

(declare-fun c!937477 () Bool)

(assert (=> d!1721591 (= c!937477 (isEmpty!33471 s!2326))))

(assert (=> d!1721591 (validRegex!6838 lt!2190085)))

(assert (=> d!1721591 (= (matchR!7287 lt!2190085 s!2326) lt!2190255)))

(declare-fun b!5379118 () Bool)

(declare-fun res!2283718 () Bool)

(declare-fun e!3337044 () Bool)

(assert (=> b!5379118 (=> res!2283718 e!3337044)))

(declare-fun tail!10638 (List!61605) List!61605)

(assert (=> b!5379118 (= res!2283718 (not (isEmpty!33471 (tail!10638 s!2326))))))

(declare-fun bm!385188 () Bool)

(assert (=> bm!385188 (= call!385193 (isEmpty!33471 s!2326))))

(declare-fun b!5379119 () Bool)

(declare-fun res!2283720 () Bool)

(assert (=> b!5379119 (=> (not res!2283720) (not e!3337049))))

(assert (=> b!5379119 (= res!2283720 (isEmpty!33471 (tail!10638 s!2326)))))

(declare-fun b!5379120 () Bool)

(declare-fun derivativeStep!4232 (Regex!15102 C!30474) Regex!15102)

(declare-fun head!11541 (List!61605) C!30474)

(assert (=> b!5379120 (= e!3337050 (matchR!7287 (derivativeStep!4232 lt!2190085 (head!11541 s!2326)) (tail!10638 s!2326)))))

(declare-fun b!5379121 () Bool)

(declare-fun e!3337048 () Bool)

(assert (=> b!5379121 (= e!3337048 e!3337044)))

(declare-fun res!2283715 () Bool)

(assert (=> b!5379121 (=> res!2283715 e!3337044)))

(assert (=> b!5379121 (= res!2283715 call!385193)))

(declare-fun b!5379122 () Bool)

(assert (=> b!5379122 (= e!3337049 (= (head!11541 s!2326) (c!937440 lt!2190085)))))

(declare-fun b!5379123 () Bool)

(declare-fun res!2283714 () Bool)

(declare-fun e!3337046 () Bool)

(assert (=> b!5379123 (=> res!2283714 e!3337046)))

(assert (=> b!5379123 (= res!2283714 (not (is-ElementMatch!15102 lt!2190085)))))

(assert (=> b!5379123 (= e!3337045 e!3337046)))

(declare-fun b!5379124 () Bool)

(assert (=> b!5379124 (= e!3337050 (nullable!5271 lt!2190085))))

(declare-fun b!5379125 () Bool)

(assert (=> b!5379125 (= e!3337044 (not (= (head!11541 s!2326) (c!937440 lt!2190085))))))

(declare-fun b!5379126 () Bool)

(declare-fun res!2283719 () Bool)

(assert (=> b!5379126 (=> res!2283719 e!3337046)))

(assert (=> b!5379126 (= res!2283719 e!3337049)))

(declare-fun res!2283721 () Bool)

(assert (=> b!5379126 (=> (not res!2283721) (not e!3337049))))

(assert (=> b!5379126 (= res!2283721 lt!2190255)))

(declare-fun b!5379127 () Bool)

(assert (=> b!5379127 (= e!3337046 e!3337048)))

(declare-fun res!2283717 () Bool)

(assert (=> b!5379127 (=> (not res!2283717) (not e!3337048))))

(assert (=> b!5379127 (= res!2283717 (not lt!2190255))))

(assert (= (and d!1721591 c!937477) b!5379124))

(assert (= (and d!1721591 (not c!937477)) b!5379120))

(assert (= (and d!1721591 c!937475) b!5379116))

(assert (= (and d!1721591 (not c!937475)) b!5379115))

(assert (= (and b!5379115 c!937476) b!5379114))

(assert (= (and b!5379115 (not c!937476)) b!5379123))

(assert (= (and b!5379123 (not res!2283714)) b!5379126))

(assert (= (and b!5379126 res!2283721) b!5379117))

(assert (= (and b!5379117 res!2283716) b!5379119))

(assert (= (and b!5379119 res!2283720) b!5379122))

(assert (= (and b!5379126 (not res!2283719)) b!5379127))

(assert (= (and b!5379127 res!2283717) b!5379121))

(assert (= (and b!5379121 (not res!2283715)) b!5379118))

(assert (= (and b!5379118 (not res!2283718)) b!5379125))

(assert (= (or b!5379116 b!5379121 b!5379117) bm!385188))

(declare-fun m!6405288 () Bool)

(assert (=> b!5379118 m!6405288))

(assert (=> b!5379118 m!6405288))

(declare-fun m!6405290 () Bool)

(assert (=> b!5379118 m!6405290))

(declare-fun m!6405292 () Bool)

(assert (=> b!5379120 m!6405292))

(assert (=> b!5379120 m!6405292))

(declare-fun m!6405294 () Bool)

(assert (=> b!5379120 m!6405294))

(assert (=> b!5379120 m!6405288))

(assert (=> b!5379120 m!6405294))

(assert (=> b!5379120 m!6405288))

(declare-fun m!6405296 () Bool)

(assert (=> b!5379120 m!6405296))

(declare-fun m!6405298 () Bool)

(assert (=> b!5379124 m!6405298))

(declare-fun m!6405300 () Bool)

(assert (=> d!1721591 m!6405300))

(declare-fun m!6405302 () Bool)

(assert (=> d!1721591 m!6405302))

(assert (=> b!5379122 m!6405292))

(assert (=> bm!385188 m!6405300))

(assert (=> b!5379125 m!6405292))

(assert (=> b!5379119 m!6405288))

(assert (=> b!5379119 m!6405288))

(assert (=> b!5379119 m!6405290))

(assert (=> b!5378849 d!1721591))

(declare-fun bs!1245396 () Bool)

(declare-fun b!5379160 () Bool)

(assert (= bs!1245396 (and b!5379160 b!5378853)))

(declare-fun lambda!278214 () Int)

(assert (=> bs!1245396 (not (= lambda!278214 lambda!278162))))

(declare-fun bs!1245397 () Bool)

(assert (= bs!1245397 (and b!5379160 b!5378835)))

(assert (=> bs!1245397 (not (= lambda!278214 lambda!278163))))

(assert (=> bs!1245397 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (reg!15431 lt!2190085) (reg!15431 (regOne!30716 r!7292))) (= lt!2190085 lt!2190082)) (= lambda!278214 lambda!278164))))

(assert (=> bs!1245397 (not (= lambda!278214 lambda!278165))))

(declare-fun bs!1245398 () Bool)

(assert (= bs!1245398 (and b!5379160 b!5378852)))

(assert (=> bs!1245398 (not (= lambda!278214 lambda!278159))))

(assert (=> bs!1245396 (not (= lambda!278214 lambda!278161))))

(assert (=> bs!1245398 (not (= lambda!278214 lambda!278158))))

(assert (=> b!5379160 true))

(assert (=> b!5379160 true))

(declare-fun bs!1245399 () Bool)

(declare-fun b!5379161 () Bool)

(assert (= bs!1245399 (and b!5379161 b!5378853)))

(declare-fun lambda!278215 () Int)

(assert (=> bs!1245399 (= (and (= (regOne!30716 lt!2190085) lt!2190082) (= (regTwo!30716 lt!2190085) (regTwo!30716 r!7292))) (= lambda!278215 lambda!278162))))

(declare-fun bs!1245400 () Bool)

(assert (= bs!1245400 (and b!5379161 b!5378835)))

(assert (=> bs!1245400 (not (= lambda!278215 lambda!278164))))

(assert (=> bs!1245400 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 lt!2190085) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 lt!2190085) lt!2190082)) (= lambda!278215 lambda!278165))))

(declare-fun bs!1245401 () Bool)

(assert (= bs!1245401 (and b!5379161 b!5378852)))

(assert (=> bs!1245401 (= (and (= (regOne!30716 lt!2190085) (regOne!30716 r!7292)) (= (regTwo!30716 lt!2190085) (regTwo!30716 r!7292))) (= lambda!278215 lambda!278159))))

(assert (=> bs!1245399 (not (= lambda!278215 lambda!278161))))

(assert (=> bs!1245401 (not (= lambda!278215 lambda!278158))))

(declare-fun bs!1245402 () Bool)

(assert (= bs!1245402 (and b!5379161 b!5379160)))

(assert (=> bs!1245402 (not (= lambda!278215 lambda!278214))))

(assert (=> bs!1245400 (not (= lambda!278215 lambda!278163))))

(assert (=> b!5379161 true))

(assert (=> b!5379161 true))

(declare-fun bm!385193 () Bool)

(declare-fun call!385198 () Bool)

(assert (=> bm!385193 (= call!385198 (isEmpty!33471 s!2326))))

(declare-fun d!1721593 () Bool)

(declare-fun c!937486 () Bool)

(assert (=> d!1721593 (= c!937486 (is-EmptyExpr!15102 lt!2190085))))

(declare-fun e!3337073 () Bool)

(assert (=> d!1721593 (= (matchRSpec!2205 lt!2190085 s!2326) e!3337073)))

(declare-fun e!3337075 () Bool)

(declare-fun call!385199 () Bool)

(assert (=> b!5379160 (= e!3337075 call!385199)))

(declare-fun e!3337072 () Bool)

(assert (=> b!5379161 (= e!3337072 call!385199)))

(declare-fun b!5379162 () Bool)

(declare-fun c!937489 () Bool)

(assert (=> b!5379162 (= c!937489 (is-ElementMatch!15102 lt!2190085))))

(declare-fun e!3337069 () Bool)

(declare-fun e!3337070 () Bool)

(assert (=> b!5379162 (= e!3337069 e!3337070)))

(declare-fun b!5379163 () Bool)

(assert (=> b!5379163 (= e!3337070 (= s!2326 (Cons!61481 (c!937440 lt!2190085) Nil!61481)))))

(declare-fun b!5379164 () Bool)

(declare-fun c!937488 () Bool)

(assert (=> b!5379164 (= c!937488 (is-Union!15102 lt!2190085))))

(declare-fun e!3337071 () Bool)

(assert (=> b!5379164 (= e!3337070 e!3337071)))

(declare-fun b!5379165 () Bool)

(assert (=> b!5379165 (= e!3337071 e!3337072)))

(declare-fun c!937487 () Bool)

(assert (=> b!5379165 (= c!937487 (is-Star!15102 lt!2190085))))

(declare-fun b!5379166 () Bool)

(assert (=> b!5379166 (= e!3337073 call!385198)))

(declare-fun b!5379167 () Bool)

(assert (=> b!5379167 (= e!3337073 e!3337069)))

(declare-fun res!2283739 () Bool)

(assert (=> b!5379167 (= res!2283739 (not (is-EmptyLang!15102 lt!2190085)))))

(assert (=> b!5379167 (=> (not res!2283739) (not e!3337069))))

(declare-fun b!5379168 () Bool)

(declare-fun res!2283740 () Bool)

(assert (=> b!5379168 (=> res!2283740 e!3337075)))

(assert (=> b!5379168 (= res!2283740 call!385198)))

(assert (=> b!5379168 (= e!3337072 e!3337075)))

(declare-fun b!5379169 () Bool)

(declare-fun e!3337074 () Bool)

(assert (=> b!5379169 (= e!3337071 e!3337074)))

(declare-fun res!2283738 () Bool)

(assert (=> b!5379169 (= res!2283738 (matchRSpec!2205 (regOne!30717 lt!2190085) s!2326))))

(assert (=> b!5379169 (=> res!2283738 e!3337074)))

(declare-fun bm!385194 () Bool)

(assert (=> bm!385194 (= call!385199 (Exists!2283 (ite c!937487 lambda!278214 lambda!278215)))))

(declare-fun b!5379170 () Bool)

(assert (=> b!5379170 (= e!3337074 (matchRSpec!2205 (regTwo!30717 lt!2190085) s!2326))))

(assert (= (and d!1721593 c!937486) b!5379166))

(assert (= (and d!1721593 (not c!937486)) b!5379167))

(assert (= (and b!5379167 res!2283739) b!5379162))

(assert (= (and b!5379162 c!937489) b!5379163))

(assert (= (and b!5379162 (not c!937489)) b!5379164))

(assert (= (and b!5379164 c!937488) b!5379169))

(assert (= (and b!5379164 (not c!937488)) b!5379165))

(assert (= (and b!5379169 (not res!2283738)) b!5379170))

(assert (= (and b!5379165 c!937487) b!5379168))

(assert (= (and b!5379165 (not c!937487)) b!5379161))

(assert (= (and b!5379168 (not res!2283740)) b!5379160))

(assert (= (or b!5379160 b!5379161) bm!385194))

(assert (= (or b!5379166 b!5379168) bm!385193))

(assert (=> bm!385193 m!6405300))

(declare-fun m!6405304 () Bool)

(assert (=> b!5379169 m!6405304))

(declare-fun m!6405306 () Bool)

(assert (=> bm!385194 m!6405306))

(declare-fun m!6405308 () Bool)

(assert (=> b!5379170 m!6405308))

(assert (=> b!5378849 d!1721593))

(declare-fun d!1721595 () Bool)

(assert (=> d!1721595 (= (matchR!7287 lt!2190085 s!2326) (matchRSpec!2205 lt!2190085 s!2326))))

(declare-fun lt!2190258 () Unit!153926)

(declare-fun choose!40424 (Regex!15102 List!61605) Unit!153926)

(assert (=> d!1721595 (= lt!2190258 (choose!40424 lt!2190085 s!2326))))

(assert (=> d!1721595 (validRegex!6838 lt!2190085)))

(assert (=> d!1721595 (= (mainMatchTheorem!2205 lt!2190085 s!2326) lt!2190258)))

(declare-fun bs!1245403 () Bool)

(assert (= bs!1245403 d!1721595))

(assert (=> bs!1245403 m!6404970))

(assert (=> bs!1245403 m!6404972))

(declare-fun m!6405310 () Bool)

(assert (=> bs!1245403 m!6405310))

(assert (=> bs!1245403 m!6405302))

(assert (=> b!5378849 d!1721595))

(declare-fun b!5379181 () Bool)

(declare-fun res!2283745 () Bool)

(declare-fun e!3337081 () Bool)

(assert (=> b!5379181 (=> (not res!2283745) (not e!3337081))))

(declare-fun lt!2190261 () List!61605)

(declare-fun size!39802 (List!61605) Int)

(assert (=> b!5379181 (= res!2283745 (= (size!39802 lt!2190261) (+ (size!39802 (_1!35604 lt!2190061)) (size!39802 lt!2190064))))))

(declare-fun b!5379182 () Bool)

(assert (=> b!5379182 (= e!3337081 (or (not (= lt!2190064 Nil!61481)) (= lt!2190261 (_1!35604 lt!2190061))))))

(declare-fun b!5379179 () Bool)

(declare-fun e!3337080 () List!61605)

(assert (=> b!5379179 (= e!3337080 lt!2190064)))

(declare-fun d!1721597 () Bool)

(assert (=> d!1721597 e!3337081))

(declare-fun res!2283746 () Bool)

(assert (=> d!1721597 (=> (not res!2283746) (not e!3337081))))

(declare-fun content!10997 (List!61605) (Set C!30474))

(assert (=> d!1721597 (= res!2283746 (= (content!10997 lt!2190261) (set.union (content!10997 (_1!35604 lt!2190061)) (content!10997 lt!2190064))))))

(assert (=> d!1721597 (= lt!2190261 e!3337080)))

(declare-fun c!937492 () Bool)

(assert (=> d!1721597 (= c!937492 (is-Nil!61481 (_1!35604 lt!2190061)))))

(assert (=> d!1721597 (= (++!13405 (_1!35604 lt!2190061) lt!2190064) lt!2190261)))

(declare-fun b!5379180 () Bool)

(assert (=> b!5379180 (= e!3337080 (Cons!61481 (h!67929 (_1!35604 lt!2190061)) (++!13405 (t!374828 (_1!35604 lt!2190061)) lt!2190064)))))

(assert (= (and d!1721597 c!937492) b!5379179))

(assert (= (and d!1721597 (not c!937492)) b!5379180))

(assert (= (and d!1721597 res!2283746) b!5379181))

(assert (= (and b!5379181 res!2283745) b!5379182))

(declare-fun m!6405312 () Bool)

(assert (=> b!5379181 m!6405312))

(declare-fun m!6405314 () Bool)

(assert (=> b!5379181 m!6405314))

(declare-fun m!6405316 () Bool)

(assert (=> b!5379181 m!6405316))

(declare-fun m!6405318 () Bool)

(assert (=> d!1721597 m!6405318))

(declare-fun m!6405320 () Bool)

(assert (=> d!1721597 m!6405320))

(declare-fun m!6405322 () Bool)

(assert (=> d!1721597 m!6405322))

(declare-fun m!6405324 () Bool)

(assert (=> b!5379180 m!6405324))

(assert (=> b!5378851 d!1721597))

(declare-fun b!5379185 () Bool)

(declare-fun res!2283747 () Bool)

(declare-fun e!3337083 () Bool)

(assert (=> b!5379185 (=> (not res!2283747) (not e!3337083))))

(declare-fun lt!2190262 () List!61605)

(assert (=> b!5379185 (= res!2283747 (= (size!39802 lt!2190262) (+ (size!39802 lt!2190074) (size!39802 (_2!35604 lt!2190065)))))))

(declare-fun b!5379186 () Bool)

(assert (=> b!5379186 (= e!3337083 (or (not (= (_2!35604 lt!2190065) Nil!61481)) (= lt!2190262 lt!2190074)))))

(declare-fun b!5379183 () Bool)

(declare-fun e!3337082 () List!61605)

(assert (=> b!5379183 (= e!3337082 (_2!35604 lt!2190065))))

(declare-fun d!1721599 () Bool)

(assert (=> d!1721599 e!3337083))

(declare-fun res!2283748 () Bool)

(assert (=> d!1721599 (=> (not res!2283748) (not e!3337083))))

(assert (=> d!1721599 (= res!2283748 (= (content!10997 lt!2190262) (set.union (content!10997 lt!2190074) (content!10997 (_2!35604 lt!2190065)))))))

(assert (=> d!1721599 (= lt!2190262 e!3337082)))

(declare-fun c!937493 () Bool)

(assert (=> d!1721599 (= c!937493 (is-Nil!61481 lt!2190074))))

(assert (=> d!1721599 (= (++!13405 lt!2190074 (_2!35604 lt!2190065)) lt!2190262)))

(declare-fun b!5379184 () Bool)

(assert (=> b!5379184 (= e!3337082 (Cons!61481 (h!67929 lt!2190074) (++!13405 (t!374828 lt!2190074) (_2!35604 lt!2190065))))))

(assert (= (and d!1721599 c!937493) b!5379183))

(assert (= (and d!1721599 (not c!937493)) b!5379184))

(assert (= (and d!1721599 res!2283748) b!5379185))

(assert (= (and b!5379185 res!2283747) b!5379186))

(declare-fun m!6405326 () Bool)

(assert (=> b!5379185 m!6405326))

(declare-fun m!6405328 () Bool)

(assert (=> b!5379185 m!6405328))

(declare-fun m!6405330 () Bool)

(assert (=> b!5379185 m!6405330))

(declare-fun m!6405332 () Bool)

(assert (=> d!1721599 m!6405332))

(declare-fun m!6405334 () Bool)

(assert (=> d!1721599 m!6405334))

(declare-fun m!6405336 () Bool)

(assert (=> d!1721599 m!6405336))

(declare-fun m!6405338 () Bool)

(assert (=> b!5379184 m!6405338))

(assert (=> b!5378851 d!1721599))

(declare-fun b!5379189 () Bool)

(declare-fun res!2283749 () Bool)

(declare-fun e!3337085 () Bool)

(assert (=> b!5379189 (=> (not res!2283749) (not e!3337085))))

(declare-fun lt!2190263 () List!61605)

(assert (=> b!5379189 (= res!2283749 (= (size!39802 lt!2190263) (+ (size!39802 (_2!35604 lt!2190061)) (size!39802 (_2!35604 lt!2190065)))))))

(declare-fun b!5379190 () Bool)

(assert (=> b!5379190 (= e!3337085 (or (not (= (_2!35604 lt!2190065) Nil!61481)) (= lt!2190263 (_2!35604 lt!2190061))))))

(declare-fun b!5379187 () Bool)

(declare-fun e!3337084 () List!61605)

(assert (=> b!5379187 (= e!3337084 (_2!35604 lt!2190065))))

(declare-fun d!1721601 () Bool)

(assert (=> d!1721601 e!3337085))

(declare-fun res!2283750 () Bool)

(assert (=> d!1721601 (=> (not res!2283750) (not e!3337085))))

(assert (=> d!1721601 (= res!2283750 (= (content!10997 lt!2190263) (set.union (content!10997 (_2!35604 lt!2190061)) (content!10997 (_2!35604 lt!2190065)))))))

(assert (=> d!1721601 (= lt!2190263 e!3337084)))

(declare-fun c!937494 () Bool)

(assert (=> d!1721601 (= c!937494 (is-Nil!61481 (_2!35604 lt!2190061)))))

(assert (=> d!1721601 (= (++!13405 (_2!35604 lt!2190061) (_2!35604 lt!2190065)) lt!2190263)))

(declare-fun b!5379188 () Bool)

(assert (=> b!5379188 (= e!3337084 (Cons!61481 (h!67929 (_2!35604 lt!2190061)) (++!13405 (t!374828 (_2!35604 lt!2190061)) (_2!35604 lt!2190065))))))

(assert (= (and d!1721601 c!937494) b!5379187))

(assert (= (and d!1721601 (not c!937494)) b!5379188))

(assert (= (and d!1721601 res!2283750) b!5379189))

(assert (= (and b!5379189 res!2283749) b!5379190))

(declare-fun m!6405340 () Bool)

(assert (=> b!5379189 m!6405340))

(declare-fun m!6405342 () Bool)

(assert (=> b!5379189 m!6405342))

(assert (=> b!5379189 m!6405330))

(declare-fun m!6405344 () Bool)

(assert (=> d!1721601 m!6405344))

(declare-fun m!6405346 () Bool)

(assert (=> d!1721601 m!6405346))

(assert (=> d!1721601 m!6405336))

(declare-fun m!6405348 () Bool)

(assert (=> b!5379188 m!6405348))

(assert (=> b!5378851 d!1721601))

(declare-fun d!1721603 () Bool)

(assert (=> d!1721603 (= (++!13405 (++!13405 (_1!35604 lt!2190061) (_2!35604 lt!2190061)) (_2!35604 lt!2190065)) (++!13405 (_1!35604 lt!2190061) (++!13405 (_2!35604 lt!2190061) (_2!35604 lt!2190065))))))

(declare-fun lt!2190266 () Unit!153926)

(declare-fun choose!40425 (List!61605 List!61605 List!61605) Unit!153926)

(assert (=> d!1721603 (= lt!2190266 (choose!40425 (_1!35604 lt!2190061) (_2!35604 lt!2190061) (_2!35604 lt!2190065)))))

(assert (=> d!1721603 (= (lemmaConcatAssociativity!2799 (_1!35604 lt!2190061) (_2!35604 lt!2190061) (_2!35604 lt!2190065)) lt!2190266)))

(declare-fun bs!1245404 () Bool)

(assert (= bs!1245404 d!1721603))

(declare-fun m!6405350 () Bool)

(assert (=> bs!1245404 m!6405350))

(assert (=> bs!1245404 m!6405094))

(declare-fun m!6405352 () Bool)

(assert (=> bs!1245404 m!6405352))

(assert (=> bs!1245404 m!6405054))

(assert (=> bs!1245404 m!6405054))

(declare-fun m!6405354 () Bool)

(assert (=> bs!1245404 m!6405354))

(assert (=> bs!1245404 m!6405094))

(assert (=> b!5378851 d!1721603))

(declare-fun bs!1245405 () Bool)

(declare-fun d!1721605 () Bool)

(assert (= bs!1245405 (and d!1721605 d!1721587)))

(declare-fun lambda!278218 () Int)

(assert (=> bs!1245405 (= lambda!278218 lambda!278206)))

(declare-fun bs!1245406 () Bool)

(assert (= bs!1245406 (and d!1721605 d!1721589)))

(assert (=> bs!1245406 (= lambda!278218 lambda!278209)))

(assert (=> d!1721605 (= (inv!81003 setElem!34886) (forall!14504 (exprs!4986 setElem!34886) lambda!278218))))

(declare-fun bs!1245407 () Bool)

(assert (= bs!1245407 d!1721605))

(declare-fun m!6405356 () Bool)

(assert (=> bs!1245407 m!6405356))

(assert (=> setNonEmpty!34886 d!1721605))

(declare-fun d!1721607 () Bool)

(assert (=> d!1721607 (= (isEmpty!33473 (t!374830 zl!343)) (is-Nil!61483 (t!374830 zl!343)))))

(assert (=> b!5378847 d!1721607))

(declare-fun d!1721609 () Bool)

(declare-fun nullableFct!1563 (Regex!15102) Bool)

(assert (=> d!1721609 (= (nullable!5271 (regOne!30716 (regOne!30716 r!7292))) (nullableFct!1563 (regOne!30716 (regOne!30716 r!7292))))))

(declare-fun bs!1245408 () Bool)

(assert (= bs!1245408 d!1721609))

(declare-fun m!6405358 () Bool)

(assert (=> bs!1245408 m!6405358))

(assert (=> b!5378828 d!1721609))

(declare-fun d!1721611 () Bool)

(declare-fun c!937497 () Bool)

(assert (=> d!1721611 (= c!937497 (isEmpty!33471 s!2326))))

(declare-fun e!3337088 () Bool)

(assert (=> d!1721611 (= (matchZipper!1346 lt!2190093 s!2326) e!3337088)))

(declare-fun b!5379195 () Bool)

(declare-fun nullableZipper!1411 ((Set Context!8972)) Bool)

(assert (=> b!5379195 (= e!3337088 (nullableZipper!1411 lt!2190093))))

(declare-fun b!5379196 () Bool)

(assert (=> b!5379196 (= e!3337088 (matchZipper!1346 (derivationStepZipper!1341 lt!2190093 (head!11541 s!2326)) (tail!10638 s!2326)))))

(assert (= (and d!1721611 c!937497) b!5379195))

(assert (= (and d!1721611 (not c!937497)) b!5379196))

(assert (=> d!1721611 m!6405300))

(declare-fun m!6405360 () Bool)

(assert (=> b!5379195 m!6405360))

(assert (=> b!5379196 m!6405292))

(assert (=> b!5379196 m!6405292))

(declare-fun m!6405362 () Bool)

(assert (=> b!5379196 m!6405362))

(assert (=> b!5379196 m!6405288))

(assert (=> b!5379196 m!6405362))

(assert (=> b!5379196 m!6405288))

(declare-fun m!6405364 () Bool)

(assert (=> b!5379196 m!6405364))

(assert (=> b!5378827 d!1721611))

(declare-fun d!1721613 () Bool)

(declare-fun c!937498 () Bool)

(assert (=> d!1721613 (= c!937498 (isEmpty!33471 (t!374828 s!2326)))))

(declare-fun e!3337089 () Bool)

(assert (=> d!1721613 (= (matchZipper!1346 lt!2190100 (t!374828 s!2326)) e!3337089)))

(declare-fun b!5379197 () Bool)

(assert (=> b!5379197 (= e!3337089 (nullableZipper!1411 lt!2190100))))

(declare-fun b!5379198 () Bool)

(assert (=> b!5379198 (= e!3337089 (matchZipper!1346 (derivationStepZipper!1341 lt!2190100 (head!11541 (t!374828 s!2326))) (tail!10638 (t!374828 s!2326))))))

(assert (= (and d!1721613 c!937498) b!5379197))

(assert (= (and d!1721613 (not c!937498)) b!5379198))

(declare-fun m!6405366 () Bool)

(assert (=> d!1721613 m!6405366))

(declare-fun m!6405368 () Bool)

(assert (=> b!5379197 m!6405368))

(declare-fun m!6405370 () Bool)

(assert (=> b!5379198 m!6405370))

(assert (=> b!5379198 m!6405370))

(declare-fun m!6405372 () Bool)

(assert (=> b!5379198 m!6405372))

(declare-fun m!6405374 () Bool)

(assert (=> b!5379198 m!6405374))

(assert (=> b!5379198 m!6405372))

(assert (=> b!5379198 m!6405374))

(declare-fun m!6405376 () Bool)

(assert (=> b!5379198 m!6405376))

(assert (=> b!5378827 d!1721613))

(declare-fun bs!1245409 () Bool)

(declare-fun d!1721615 () Bool)

(assert (= bs!1245409 (and d!1721615 d!1721587)))

(declare-fun lambda!278221 () Int)

(assert (=> bs!1245409 (= lambda!278221 lambda!278206)))

(declare-fun bs!1245410 () Bool)

(assert (= bs!1245410 (and d!1721615 d!1721589)))

(assert (=> bs!1245410 (= lambda!278221 lambda!278209)))

(declare-fun bs!1245411 () Bool)

(assert (= bs!1245411 (and d!1721615 d!1721605)))

(assert (=> bs!1245411 (= lambda!278221 lambda!278218)))

(declare-fun b!5379219 () Bool)

(declare-fun e!3337106 () Bool)

(declare-fun e!3337103 () Bool)

(assert (=> b!5379219 (= e!3337106 e!3337103)))

(declare-fun c!937507 () Bool)

(assert (=> b!5379219 (= c!937507 (isEmpty!33472 (tail!10637 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun e!3337104 () Bool)

(assert (=> d!1721615 e!3337104))

(declare-fun res!2283756 () Bool)

(assert (=> d!1721615 (=> (not res!2283756) (not e!3337104))))

(declare-fun lt!2190269 () Regex!15102)

(assert (=> d!1721615 (= res!2283756 (validRegex!6838 lt!2190269))))

(declare-fun e!3337105 () Regex!15102)

(assert (=> d!1721615 (= lt!2190269 e!3337105)))

(declare-fun c!937508 () Bool)

(declare-fun e!3337102 () Bool)

(assert (=> d!1721615 (= c!937508 e!3337102)))

(declare-fun res!2283755 () Bool)

(assert (=> d!1721615 (=> (not res!2283755) (not e!3337102))))

(assert (=> d!1721615 (= res!2283755 (is-Cons!61482 (exprs!4986 (h!67931 zl!343))))))

(assert (=> d!1721615 (forall!14504 (exprs!4986 (h!67931 zl!343)) lambda!278221)))

(assert (=> d!1721615 (= (generalisedConcat!771 (exprs!4986 (h!67931 zl!343))) lt!2190269)))

(declare-fun b!5379220 () Bool)

(assert (=> b!5379220 (= e!3337104 e!3337106)))

(declare-fun c!937509 () Bool)

(assert (=> b!5379220 (= c!937509 (isEmpty!33472 (exprs!4986 (h!67931 zl!343))))))

(declare-fun b!5379221 () Bool)

(declare-fun isConcat!468 (Regex!15102) Bool)

(assert (=> b!5379221 (= e!3337103 (isConcat!468 lt!2190269))))

(declare-fun b!5379222 () Bool)

(declare-fun e!3337107 () Regex!15102)

(assert (=> b!5379222 (= e!3337107 (Concat!23947 (h!67930 (exprs!4986 (h!67931 zl!343))) (generalisedConcat!771 (t!374829 (exprs!4986 (h!67931 zl!343))))))))

(declare-fun b!5379223 () Bool)

(assert (=> b!5379223 (= e!3337102 (isEmpty!33472 (t!374829 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun b!5379224 () Bool)

(declare-fun isEmptyExpr!945 (Regex!15102) Bool)

(assert (=> b!5379224 (= e!3337106 (isEmptyExpr!945 lt!2190269))))

(declare-fun b!5379225 () Bool)

(assert (=> b!5379225 (= e!3337107 EmptyExpr!15102)))

(declare-fun b!5379226 () Bool)

(assert (=> b!5379226 (= e!3337105 (h!67930 (exprs!4986 (h!67931 zl!343))))))

(declare-fun b!5379227 () Bool)

(assert (=> b!5379227 (= e!3337103 (= lt!2190269 (head!11540 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun b!5379228 () Bool)

(assert (=> b!5379228 (= e!3337105 e!3337107)))

(declare-fun c!937510 () Bool)

(assert (=> b!5379228 (= c!937510 (is-Cons!61482 (exprs!4986 (h!67931 zl!343))))))

(assert (= (and d!1721615 res!2283755) b!5379223))

(assert (= (and d!1721615 c!937508) b!5379226))

(assert (= (and d!1721615 (not c!937508)) b!5379228))

(assert (= (and b!5379228 c!937510) b!5379222))

(assert (= (and b!5379228 (not c!937510)) b!5379225))

(assert (= (and d!1721615 res!2283756) b!5379220))

(assert (= (and b!5379220 c!937509) b!5379224))

(assert (= (and b!5379220 (not c!937509)) b!5379219))

(assert (= (and b!5379219 c!937507) b!5379227))

(assert (= (and b!5379219 (not c!937507)) b!5379221))

(declare-fun m!6405378 () Bool)

(assert (=> b!5379221 m!6405378))

(declare-fun m!6405380 () Bool)

(assert (=> b!5379220 m!6405380))

(declare-fun m!6405382 () Bool)

(assert (=> b!5379219 m!6405382))

(assert (=> b!5379219 m!6405382))

(declare-fun m!6405384 () Bool)

(assert (=> b!5379219 m!6405384))

(declare-fun m!6405386 () Bool)

(assert (=> b!5379224 m!6405386))

(assert (=> b!5379223 m!6405008))

(declare-fun m!6405388 () Bool)

(assert (=> b!5379222 m!6405388))

(declare-fun m!6405390 () Bool)

(assert (=> b!5379227 m!6405390))

(declare-fun m!6405392 () Bool)

(assert (=> d!1721615 m!6405392))

(declare-fun m!6405394 () Bool)

(assert (=> d!1721615 m!6405394))

(assert (=> b!5378829 d!1721615))

(declare-fun bs!1245412 () Bool)

(declare-fun d!1721617 () Bool)

(assert (= bs!1245412 (and d!1721617 d!1721587)))

(declare-fun lambda!278222 () Int)

(assert (=> bs!1245412 (= lambda!278222 lambda!278206)))

(declare-fun bs!1245413 () Bool)

(assert (= bs!1245413 (and d!1721617 d!1721589)))

(assert (=> bs!1245413 (= lambda!278222 lambda!278209)))

(declare-fun bs!1245414 () Bool)

(assert (= bs!1245414 (and d!1721617 d!1721605)))

(assert (=> bs!1245414 (= lambda!278222 lambda!278218)))

(declare-fun bs!1245415 () Bool)

(assert (= bs!1245415 (and d!1721617 d!1721615)))

(assert (=> bs!1245415 (= lambda!278222 lambda!278221)))

(assert (=> d!1721617 (= (inv!81003 (h!67931 zl!343)) (forall!14504 (exprs!4986 (h!67931 zl!343)) lambda!278222))))

(declare-fun bs!1245416 () Bool)

(assert (= bs!1245416 d!1721617))

(declare-fun m!6405396 () Bool)

(assert (=> bs!1245416 m!6405396))

(assert (=> b!5378848 d!1721617))

(declare-fun d!1721619 () Bool)

(assert (=> d!1721619 (= (isEmpty!33471 (_1!35604 lt!2190065)) (is-Nil!61481 (_1!35604 lt!2190065)))))

(assert (=> b!5378833 d!1721619))

(declare-fun bs!1245417 () Bool)

(declare-fun d!1721621 () Bool)

(assert (= bs!1245417 (and d!1721621 b!5378853)))

(declare-fun lambda!278225 () Int)

(assert (=> bs!1245417 (not (= lambda!278225 lambda!278162))))

(declare-fun bs!1245418 () Bool)

(assert (= bs!1245418 (and d!1721621 b!5378835)))

(assert (=> bs!1245418 (not (= lambda!278225 lambda!278164))))

(assert (=> bs!1245418 (not (= lambda!278225 lambda!278165))))

(declare-fun bs!1245419 () Bool)

(assert (= bs!1245419 (and d!1721621 b!5378852)))

(assert (=> bs!1245419 (not (= lambda!278225 lambda!278159))))

(assert (=> bs!1245417 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) lt!2190082) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278225 lambda!278161))))

(declare-fun bs!1245420 () Bool)

(assert (= bs!1245420 (and d!1721621 b!5379161)))

(assert (=> bs!1245420 (not (= lambda!278225 lambda!278215))))

(assert (=> bs!1245419 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (regOne!30716 r!7292)) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278225 lambda!278158))))

(declare-fun bs!1245421 () Bool)

(assert (= bs!1245421 (and d!1721621 b!5379160)))

(assert (=> bs!1245421 (not (= lambda!278225 lambda!278214))))

(assert (=> bs!1245418 (= lambda!278225 lambda!278163)))

(assert (=> d!1721621 true))

(assert (=> d!1721621 true))

(assert (=> d!1721621 true))

(assert (=> d!1721621 (= (isDefined!11916 (findConcatSeparation!1627 (reg!15431 (regOne!30716 r!7292)) lt!2190082 Nil!61481 (_1!35604 lt!2190065) (_1!35604 lt!2190065))) (Exists!2283 lambda!278225))))

(declare-fun lt!2190272 () Unit!153926)

(declare-fun choose!40426 (Regex!15102 Regex!15102 List!61605) Unit!153926)

(assert (=> d!1721621 (= lt!2190272 (choose!40426 (reg!15431 (regOne!30716 r!7292)) lt!2190082 (_1!35604 lt!2190065)))))

(assert (=> d!1721621 (validRegex!6838 (reg!15431 (regOne!30716 r!7292)))))

(assert (=> d!1721621 (= (lemmaFindConcatSeparationEquivalentToExists!1391 (reg!15431 (regOne!30716 r!7292)) lt!2190082 (_1!35604 lt!2190065)) lt!2190272)))

(declare-fun bs!1245422 () Bool)

(assert (= bs!1245422 d!1721621))

(assert (=> bs!1245422 m!6404982))

(declare-fun m!6405398 () Bool)

(assert (=> bs!1245422 m!6405398))

(assert (=> bs!1245422 m!6405056))

(declare-fun m!6405400 () Bool)

(assert (=> bs!1245422 m!6405400))

(assert (=> bs!1245422 m!6405056))

(declare-fun m!6405402 () Bool)

(assert (=> bs!1245422 m!6405402))

(assert (=> b!5378835 d!1721621))

(declare-fun bs!1245423 () Bool)

(declare-fun d!1721623 () Bool)

(assert (= bs!1245423 (and d!1721623 b!5378853)))

(declare-fun lambda!278230 () Int)

(assert (=> bs!1245423 (not (= lambda!278230 lambda!278162))))

(declare-fun bs!1245424 () Bool)

(assert (= bs!1245424 (and d!1721623 b!5378835)))

(assert (=> bs!1245424 (not (= lambda!278230 lambda!278164))))

(assert (=> bs!1245424 (not (= lambda!278230 lambda!278165))))

(declare-fun bs!1245425 () Bool)

(assert (= bs!1245425 (and d!1721623 b!5378852)))

(assert (=> bs!1245425 (not (= lambda!278230 lambda!278159))))

(assert (=> bs!1245423 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) lt!2190082) (= (Star!15102 (reg!15431 (regOne!30716 r!7292))) (regTwo!30716 r!7292))) (= lambda!278230 lambda!278161))))

(declare-fun bs!1245426 () Bool)

(assert (= bs!1245426 (and d!1721623 b!5379161)))

(assert (=> bs!1245426 (not (= lambda!278230 lambda!278215))))

(declare-fun bs!1245427 () Bool)

(assert (= bs!1245427 (and d!1721623 d!1721621)))

(assert (=> bs!1245427 (= (= (Star!15102 (reg!15431 (regOne!30716 r!7292))) lt!2190082) (= lambda!278230 lambda!278225))))

(assert (=> bs!1245425 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (regOne!30716 r!7292)) (= (Star!15102 (reg!15431 (regOne!30716 r!7292))) (regTwo!30716 r!7292))) (= lambda!278230 lambda!278158))))

(declare-fun bs!1245428 () Bool)

(assert (= bs!1245428 (and d!1721623 b!5379160)))

(assert (=> bs!1245428 (not (= lambda!278230 lambda!278214))))

(assert (=> bs!1245424 (= (= (Star!15102 (reg!15431 (regOne!30716 r!7292))) lt!2190082) (= lambda!278230 lambda!278163))))

(assert (=> d!1721623 true))

(assert (=> d!1721623 true))

(declare-fun lambda!278231 () Int)

(assert (=> bs!1245423 (not (= lambda!278231 lambda!278162))))

(assert (=> bs!1245424 (= (= (Star!15102 (reg!15431 (regOne!30716 r!7292))) lt!2190082) (= lambda!278231 lambda!278164))))

(declare-fun bs!1245429 () Bool)

(assert (= bs!1245429 d!1721623))

(assert (=> bs!1245429 (not (= lambda!278231 lambda!278230))))

(assert (=> bs!1245424 (not (= lambda!278231 lambda!278165))))

(assert (=> bs!1245425 (not (= lambda!278231 lambda!278159))))

(assert (=> bs!1245423 (not (= lambda!278231 lambda!278161))))

(assert (=> bs!1245426 (not (= lambda!278231 lambda!278215))))

(assert (=> bs!1245427 (not (= lambda!278231 lambda!278225))))

(assert (=> bs!1245425 (not (= lambda!278231 lambda!278158))))

(assert (=> bs!1245428 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (reg!15431 lt!2190085)) (= (Star!15102 (reg!15431 (regOne!30716 r!7292))) lt!2190085)) (= lambda!278231 lambda!278214))))

(assert (=> bs!1245424 (not (= lambda!278231 lambda!278163))))

(assert (=> d!1721623 true))

(assert (=> d!1721623 true))

(assert (=> d!1721623 (= (Exists!2283 lambda!278230) (Exists!2283 lambda!278231))))

(declare-fun lt!2190275 () Unit!153926)

(declare-fun choose!40427 (Regex!15102 List!61605) Unit!153926)

(assert (=> d!1721623 (= lt!2190275 (choose!40427 (reg!15431 (regOne!30716 r!7292)) (_1!35604 lt!2190065)))))

(assert (=> d!1721623 (validRegex!6838 (reg!15431 (regOne!30716 r!7292)))))

(assert (=> d!1721623 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!367 (reg!15431 (regOne!30716 r!7292)) (_1!35604 lt!2190065)) lt!2190275)))

(declare-fun m!6405404 () Bool)

(assert (=> bs!1245429 m!6405404))

(declare-fun m!6405406 () Bool)

(assert (=> bs!1245429 m!6405406))

(declare-fun m!6405408 () Bool)

(assert (=> bs!1245429 m!6405408))

(assert (=> bs!1245429 m!6404982))

(assert (=> b!5378835 d!1721623))

(declare-fun d!1721625 () Bool)

(declare-fun isEmpty!33477 (Option!15213) Bool)

(assert (=> d!1721625 (= (isDefined!11916 lt!2190060) (not (isEmpty!33477 lt!2190060)))))

(declare-fun bs!1245430 () Bool)

(assert (= bs!1245430 d!1721625))

(declare-fun m!6405410 () Bool)

(assert (=> bs!1245430 m!6405410))

(assert (=> b!5378835 d!1721625))

(declare-fun bs!1245431 () Bool)

(declare-fun d!1721627 () Bool)

(assert (= bs!1245431 (and d!1721627 b!5378853)))

(declare-fun lambda!278236 () Int)

(assert (=> bs!1245431 (not (= lambda!278236 lambda!278162))))

(declare-fun bs!1245432 () Bool)

(assert (= bs!1245432 (and d!1721627 b!5378835)))

(assert (=> bs!1245432 (not (= lambda!278236 lambda!278164))))

(declare-fun bs!1245433 () Bool)

(assert (= bs!1245433 (and d!1721627 d!1721623)))

(assert (=> bs!1245433 (= (= lt!2190082 (Star!15102 (reg!15431 (regOne!30716 r!7292)))) (= lambda!278236 lambda!278230))))

(assert (=> bs!1245432 (not (= lambda!278236 lambda!278165))))

(declare-fun bs!1245434 () Bool)

(assert (= bs!1245434 (and d!1721627 b!5378852)))

(assert (=> bs!1245434 (not (= lambda!278236 lambda!278159))))

(assert (=> bs!1245431 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) lt!2190082) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278236 lambda!278161))))

(declare-fun bs!1245435 () Bool)

(assert (= bs!1245435 (and d!1721627 b!5379161)))

(assert (=> bs!1245435 (not (= lambda!278236 lambda!278215))))

(declare-fun bs!1245436 () Bool)

(assert (= bs!1245436 (and d!1721627 d!1721621)))

(assert (=> bs!1245436 (= lambda!278236 lambda!278225)))

(assert (=> bs!1245433 (not (= lambda!278236 lambda!278231))))

(assert (=> bs!1245434 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (regOne!30716 r!7292)) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278236 lambda!278158))))

(declare-fun bs!1245437 () Bool)

(assert (= bs!1245437 (and d!1721627 b!5379160)))

(assert (=> bs!1245437 (not (= lambda!278236 lambda!278214))))

(assert (=> bs!1245432 (= lambda!278236 lambda!278163)))

(assert (=> d!1721627 true))

(assert (=> d!1721627 true))

(assert (=> d!1721627 true))

(declare-fun lambda!278237 () Int)

(assert (=> bs!1245431 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) lt!2190082) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278237 lambda!278162))))

(declare-fun bs!1245438 () Bool)

(assert (= bs!1245438 d!1721627))

(assert (=> bs!1245438 (not (= lambda!278237 lambda!278236))))

(assert (=> bs!1245432 (not (= lambda!278237 lambda!278164))))

(assert (=> bs!1245433 (not (= lambda!278237 lambda!278230))))

(assert (=> bs!1245432 (= lambda!278237 lambda!278165)))

(assert (=> bs!1245434 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (regOne!30716 r!7292)) (= lt!2190082 (regTwo!30716 r!7292))) (= lambda!278237 lambda!278159))))

(assert (=> bs!1245431 (not (= lambda!278237 lambda!278161))))

(assert (=> bs!1245435 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 (regOne!30716 r!7292)) (regOne!30716 lt!2190085)) (= lt!2190082 (regTwo!30716 lt!2190085))) (= lambda!278237 lambda!278215))))

(assert (=> bs!1245436 (not (= lambda!278237 lambda!278225))))

(assert (=> bs!1245433 (not (= lambda!278237 lambda!278231))))

(assert (=> bs!1245434 (not (= lambda!278237 lambda!278158))))

(assert (=> bs!1245437 (not (= lambda!278237 lambda!278214))))

(assert (=> bs!1245432 (not (= lambda!278237 lambda!278163))))

(assert (=> d!1721627 true))

(assert (=> d!1721627 true))

(assert (=> d!1721627 true))

(assert (=> d!1721627 (= (Exists!2283 lambda!278236) (Exists!2283 lambda!278237))))

(declare-fun lt!2190278 () Unit!153926)

(declare-fun choose!40428 (Regex!15102 Regex!15102 List!61605) Unit!153926)

(assert (=> d!1721627 (= lt!2190278 (choose!40428 (reg!15431 (regOne!30716 r!7292)) lt!2190082 (_1!35604 lt!2190065)))))

(assert (=> d!1721627 (validRegex!6838 (reg!15431 (regOne!30716 r!7292)))))

(assert (=> d!1721627 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!937 (reg!15431 (regOne!30716 r!7292)) lt!2190082 (_1!35604 lt!2190065)) lt!2190278)))

(declare-fun m!6405412 () Bool)

(assert (=> bs!1245438 m!6405412))

(declare-fun m!6405414 () Bool)

(assert (=> bs!1245438 m!6405414))

(declare-fun m!6405416 () Bool)

(assert (=> bs!1245438 m!6405416))

(assert (=> bs!1245438 m!6404982))

(assert (=> b!5378835 d!1721627))

(declare-fun d!1721629 () Bool)

(declare-fun choose!40429 (Int) Bool)

(assert (=> d!1721629 (= (Exists!2283 lambda!278163) (choose!40429 lambda!278163))))

(declare-fun bs!1245439 () Bool)

(assert (= bs!1245439 d!1721629))

(declare-fun m!6405418 () Bool)

(assert (=> bs!1245439 m!6405418))

(assert (=> b!5378835 d!1721629))

(declare-fun d!1721631 () Bool)

(assert (=> d!1721631 (= (Exists!2283 lambda!278164) (choose!40429 lambda!278164))))

(declare-fun bs!1245440 () Bool)

(assert (= bs!1245440 d!1721631))

(declare-fun m!6405420 () Bool)

(assert (=> bs!1245440 m!6405420))

(assert (=> b!5378835 d!1721631))

(declare-fun b!5379269 () Bool)

(declare-fun e!3337131 () Bool)

(assert (=> b!5379269 (= e!3337131 (matchR!7287 lt!2190082 (_1!35604 lt!2190065)))))

(declare-fun d!1721633 () Bool)

(declare-fun e!3337128 () Bool)

(assert (=> d!1721633 e!3337128))

(declare-fun res!2283790 () Bool)

(assert (=> d!1721633 (=> res!2283790 e!3337128)))

(declare-fun e!3337130 () Bool)

(assert (=> d!1721633 (= res!2283790 e!3337130)))

(declare-fun res!2283792 () Bool)

(assert (=> d!1721633 (=> (not res!2283792) (not e!3337130))))

(declare-fun lt!2190286 () Option!15213)

(assert (=> d!1721633 (= res!2283792 (isDefined!11916 lt!2190286))))

(declare-fun e!3337129 () Option!15213)

(assert (=> d!1721633 (= lt!2190286 e!3337129)))

(declare-fun c!937515 () Bool)

(assert (=> d!1721633 (= c!937515 e!3337131)))

(declare-fun res!2283791 () Bool)

(assert (=> d!1721633 (=> (not res!2283791) (not e!3337131))))

(assert (=> d!1721633 (= res!2283791 (matchR!7287 (reg!15431 (regOne!30716 r!7292)) Nil!61481))))

(assert (=> d!1721633 (validRegex!6838 (reg!15431 (regOne!30716 r!7292)))))

(assert (=> d!1721633 (= (findConcatSeparation!1627 (reg!15431 (regOne!30716 r!7292)) lt!2190082 Nil!61481 (_1!35604 lt!2190065) (_1!35604 lt!2190065)) lt!2190286)))

(declare-fun b!5379270 () Bool)

(declare-fun e!3337132 () Option!15213)

(assert (=> b!5379270 (= e!3337129 e!3337132)))

(declare-fun c!937516 () Bool)

(assert (=> b!5379270 (= c!937516 (is-Nil!61481 (_1!35604 lt!2190065)))))

(declare-fun b!5379271 () Bool)

(declare-fun res!2283789 () Bool)

(assert (=> b!5379271 (=> (not res!2283789) (not e!3337130))))

(assert (=> b!5379271 (= res!2283789 (matchR!7287 lt!2190082 (_2!35604 (get!21162 lt!2190286))))))

(declare-fun b!5379272 () Bool)

(assert (=> b!5379272 (= e!3337130 (= (++!13405 (_1!35604 (get!21162 lt!2190286)) (_2!35604 (get!21162 lt!2190286))) (_1!35604 lt!2190065)))))

(declare-fun b!5379273 () Bool)

(assert (=> b!5379273 (= e!3337129 (Some!15212 (tuple2!64603 Nil!61481 (_1!35604 lt!2190065))))))

(declare-fun b!5379274 () Bool)

(assert (=> b!5379274 (= e!3337132 None!15212)))

(declare-fun b!5379275 () Bool)

(declare-fun res!2283793 () Bool)

(assert (=> b!5379275 (=> (not res!2283793) (not e!3337130))))

(assert (=> b!5379275 (= res!2283793 (matchR!7287 (reg!15431 (regOne!30716 r!7292)) (_1!35604 (get!21162 lt!2190286))))))

(declare-fun b!5379276 () Bool)

(declare-fun lt!2190287 () Unit!153926)

(declare-fun lt!2190285 () Unit!153926)

(assert (=> b!5379276 (= lt!2190287 lt!2190285)))

(assert (=> b!5379276 (= (++!13405 (++!13405 Nil!61481 (Cons!61481 (h!67929 (_1!35604 lt!2190065)) Nil!61481)) (t!374828 (_1!35604 lt!2190065))) (_1!35604 lt!2190065))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1806 (List!61605 C!30474 List!61605 List!61605) Unit!153926)

(assert (=> b!5379276 (= lt!2190285 (lemmaMoveElementToOtherListKeepsConcatEq!1806 Nil!61481 (h!67929 (_1!35604 lt!2190065)) (t!374828 (_1!35604 lt!2190065)) (_1!35604 lt!2190065)))))

(assert (=> b!5379276 (= e!3337132 (findConcatSeparation!1627 (reg!15431 (regOne!30716 r!7292)) lt!2190082 (++!13405 Nil!61481 (Cons!61481 (h!67929 (_1!35604 lt!2190065)) Nil!61481)) (t!374828 (_1!35604 lt!2190065)) (_1!35604 lt!2190065)))))

(declare-fun b!5379277 () Bool)

(assert (=> b!5379277 (= e!3337128 (not (isDefined!11916 lt!2190286)))))

(assert (= (and d!1721633 res!2283791) b!5379269))

(assert (= (and d!1721633 c!937515) b!5379273))

(assert (= (and d!1721633 (not c!937515)) b!5379270))

(assert (= (and b!5379270 c!937516) b!5379274))

(assert (= (and b!5379270 (not c!937516)) b!5379276))

(assert (= (and d!1721633 res!2283792) b!5379275))

(assert (= (and b!5379275 res!2283793) b!5379271))

(assert (= (and b!5379271 res!2283789) b!5379272))

(assert (= (and d!1721633 (not res!2283790)) b!5379277))

(declare-fun m!6405422 () Bool)

(assert (=> b!5379277 m!6405422))

(assert (=> b!5379269 m!6405082))

(declare-fun m!6405424 () Bool)

(assert (=> b!5379272 m!6405424))

(declare-fun m!6405426 () Bool)

(assert (=> b!5379272 m!6405426))

(assert (=> d!1721633 m!6405422))

(declare-fun m!6405428 () Bool)

(assert (=> d!1721633 m!6405428))

(assert (=> d!1721633 m!6404982))

(declare-fun m!6405430 () Bool)

(assert (=> b!5379276 m!6405430))

(assert (=> b!5379276 m!6405430))

(declare-fun m!6405432 () Bool)

(assert (=> b!5379276 m!6405432))

(declare-fun m!6405434 () Bool)

(assert (=> b!5379276 m!6405434))

(assert (=> b!5379276 m!6405430))

(declare-fun m!6405436 () Bool)

(assert (=> b!5379276 m!6405436))

(assert (=> b!5379271 m!6405424))

(declare-fun m!6405438 () Bool)

(assert (=> b!5379271 m!6405438))

(assert (=> b!5379275 m!6405424))

(declare-fun m!6405440 () Bool)

(assert (=> b!5379275 m!6405440))

(assert (=> b!5378835 d!1721633))

(declare-fun bs!1245441 () Bool)

(declare-fun b!5379278 () Bool)

(assert (= bs!1245441 (and b!5379278 b!5378853)))

(declare-fun lambda!278238 () Int)

(assert (=> bs!1245441 (not (= lambda!278238 lambda!278162))))

(declare-fun bs!1245442 () Bool)

(assert (= bs!1245442 (and b!5379278 d!1721627)))

(assert (=> bs!1245442 (not (= lambda!278238 lambda!278236))))

(declare-fun bs!1245443 () Bool)

(assert (= bs!1245443 (and b!5379278 b!5378835)))

(assert (=> bs!1245443 (= (= (reg!15431 lt!2190082) (reg!15431 (regOne!30716 r!7292))) (= lambda!278238 lambda!278164))))

(declare-fun bs!1245444 () Bool)

(assert (= bs!1245444 (and b!5379278 d!1721623)))

(assert (=> bs!1245444 (not (= lambda!278238 lambda!278230))))

(assert (=> bs!1245443 (not (= lambda!278238 lambda!278165))))

(declare-fun bs!1245445 () Bool)

(assert (= bs!1245445 (and b!5379278 b!5378852)))

(assert (=> bs!1245445 (not (= lambda!278238 lambda!278159))))

(assert (=> bs!1245441 (not (= lambda!278238 lambda!278161))))

(assert (=> bs!1245442 (not (= lambda!278238 lambda!278237))))

(declare-fun bs!1245446 () Bool)

(assert (= bs!1245446 (and b!5379278 b!5379161)))

(assert (=> bs!1245446 (not (= lambda!278238 lambda!278215))))

(declare-fun bs!1245447 () Bool)

(assert (= bs!1245447 (and b!5379278 d!1721621)))

(assert (=> bs!1245447 (not (= lambda!278238 lambda!278225))))

(assert (=> bs!1245444 (= (and (= (reg!15431 lt!2190082) (reg!15431 (regOne!30716 r!7292))) (= lt!2190082 (Star!15102 (reg!15431 (regOne!30716 r!7292))))) (= lambda!278238 lambda!278231))))

(assert (=> bs!1245445 (not (= lambda!278238 lambda!278158))))

(declare-fun bs!1245448 () Bool)

(assert (= bs!1245448 (and b!5379278 b!5379160)))

(assert (=> bs!1245448 (= (and (= (_1!35604 lt!2190065) s!2326) (= (reg!15431 lt!2190082) (reg!15431 lt!2190085)) (= lt!2190082 lt!2190085)) (= lambda!278238 lambda!278214))))

(assert (=> bs!1245443 (not (= lambda!278238 lambda!278163))))

(assert (=> b!5379278 true))

(assert (=> b!5379278 true))

(declare-fun bs!1245449 () Bool)

(declare-fun b!5379279 () Bool)

(assert (= bs!1245449 (and b!5379279 b!5378853)))

(declare-fun lambda!278239 () Int)

(assert (=> bs!1245449 (= (and (= (_1!35604 lt!2190065) s!2326) (= (regOne!30716 lt!2190082) lt!2190082) (= (regTwo!30716 lt!2190082) (regTwo!30716 r!7292))) (= lambda!278239 lambda!278162))))

(declare-fun bs!1245450 () Bool)

(assert (= bs!1245450 (and b!5379279 d!1721627)))

(assert (=> bs!1245450 (not (= lambda!278239 lambda!278236))))

(declare-fun bs!1245451 () Bool)

(assert (= bs!1245451 (and b!5379279 b!5378835)))

(assert (=> bs!1245451 (not (= lambda!278239 lambda!278164))))

(declare-fun bs!1245452 () Bool)

(assert (= bs!1245452 (and b!5379279 d!1721623)))

(assert (=> bs!1245452 (not (= lambda!278239 lambda!278230))))

(declare-fun bs!1245453 () Bool)

(assert (= bs!1245453 (and b!5379279 b!5379278)))

(assert (=> bs!1245453 (not (= lambda!278239 lambda!278238))))

(assert (=> bs!1245451 (= (and (= (regOne!30716 lt!2190082) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 lt!2190082) lt!2190082)) (= lambda!278239 lambda!278165))))

(declare-fun bs!1245454 () Bool)

(assert (= bs!1245454 (and b!5379279 b!5378852)))

(assert (=> bs!1245454 (= (and (= (_1!35604 lt!2190065) s!2326) (= (regOne!30716 lt!2190082) (regOne!30716 r!7292)) (= (regTwo!30716 lt!2190082) (regTwo!30716 r!7292))) (= lambda!278239 lambda!278159))))

(assert (=> bs!1245449 (not (= lambda!278239 lambda!278161))))

(assert (=> bs!1245450 (= (and (= (regOne!30716 lt!2190082) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 lt!2190082) lt!2190082)) (= lambda!278239 lambda!278237))))

(declare-fun bs!1245455 () Bool)

(assert (= bs!1245455 (and b!5379279 b!5379161)))

(assert (=> bs!1245455 (= (and (= (_1!35604 lt!2190065) s!2326) (= (regOne!30716 lt!2190082) (regOne!30716 lt!2190085)) (= (regTwo!30716 lt!2190082) (regTwo!30716 lt!2190085))) (= lambda!278239 lambda!278215))))

(declare-fun bs!1245456 () Bool)

(assert (= bs!1245456 (and b!5379279 d!1721621)))

(assert (=> bs!1245456 (not (= lambda!278239 lambda!278225))))

(assert (=> bs!1245452 (not (= lambda!278239 lambda!278231))))

(assert (=> bs!1245454 (not (= lambda!278239 lambda!278158))))

(declare-fun bs!1245457 () Bool)

(assert (= bs!1245457 (and b!5379279 b!5379160)))

(assert (=> bs!1245457 (not (= lambda!278239 lambda!278214))))

(assert (=> bs!1245451 (not (= lambda!278239 lambda!278163))))

(assert (=> b!5379279 true))

(assert (=> b!5379279 true))

(declare-fun bm!385195 () Bool)

(declare-fun call!385200 () Bool)

(assert (=> bm!385195 (= call!385200 (isEmpty!33471 (_1!35604 lt!2190065)))))

(declare-fun d!1721637 () Bool)

(declare-fun c!937517 () Bool)

(assert (=> d!1721637 (= c!937517 (is-EmptyExpr!15102 lt!2190082))))

(declare-fun e!3337137 () Bool)

(assert (=> d!1721637 (= (matchRSpec!2205 lt!2190082 (_1!35604 lt!2190065)) e!3337137)))

(declare-fun e!3337139 () Bool)

(declare-fun call!385201 () Bool)

(assert (=> b!5379278 (= e!3337139 call!385201)))

(declare-fun e!3337136 () Bool)

(assert (=> b!5379279 (= e!3337136 call!385201)))

(declare-fun b!5379280 () Bool)

(declare-fun c!937520 () Bool)

(assert (=> b!5379280 (= c!937520 (is-ElementMatch!15102 lt!2190082))))

(declare-fun e!3337133 () Bool)

(declare-fun e!3337134 () Bool)

(assert (=> b!5379280 (= e!3337133 e!3337134)))

(declare-fun b!5379281 () Bool)

(assert (=> b!5379281 (= e!3337134 (= (_1!35604 lt!2190065) (Cons!61481 (c!937440 lt!2190082) Nil!61481)))))

(declare-fun b!5379282 () Bool)

(declare-fun c!937519 () Bool)

(assert (=> b!5379282 (= c!937519 (is-Union!15102 lt!2190082))))

(declare-fun e!3337135 () Bool)

(assert (=> b!5379282 (= e!3337134 e!3337135)))

(declare-fun b!5379283 () Bool)

(assert (=> b!5379283 (= e!3337135 e!3337136)))

(declare-fun c!937518 () Bool)

(assert (=> b!5379283 (= c!937518 (is-Star!15102 lt!2190082))))

(declare-fun b!5379284 () Bool)

(assert (=> b!5379284 (= e!3337137 call!385200)))

(declare-fun b!5379285 () Bool)

(assert (=> b!5379285 (= e!3337137 e!3337133)))

(declare-fun res!2283795 () Bool)

(assert (=> b!5379285 (= res!2283795 (not (is-EmptyLang!15102 lt!2190082)))))

(assert (=> b!5379285 (=> (not res!2283795) (not e!3337133))))

(declare-fun b!5379286 () Bool)

(declare-fun res!2283796 () Bool)

(assert (=> b!5379286 (=> res!2283796 e!3337139)))

(assert (=> b!5379286 (= res!2283796 call!385200)))

(assert (=> b!5379286 (= e!3337136 e!3337139)))

(declare-fun b!5379287 () Bool)

(declare-fun e!3337138 () Bool)

(assert (=> b!5379287 (= e!3337135 e!3337138)))

(declare-fun res!2283794 () Bool)

(assert (=> b!5379287 (= res!2283794 (matchRSpec!2205 (regOne!30717 lt!2190082) (_1!35604 lt!2190065)))))

(assert (=> b!5379287 (=> res!2283794 e!3337138)))

(declare-fun bm!385196 () Bool)

(assert (=> bm!385196 (= call!385201 (Exists!2283 (ite c!937518 lambda!278238 lambda!278239)))))

(declare-fun b!5379288 () Bool)

(assert (=> b!5379288 (= e!3337138 (matchRSpec!2205 (regTwo!30717 lt!2190082) (_1!35604 lt!2190065)))))

(assert (= (and d!1721637 c!937517) b!5379284))

(assert (= (and d!1721637 (not c!937517)) b!5379285))

(assert (= (and b!5379285 res!2283795) b!5379280))

(assert (= (and b!5379280 c!937520) b!5379281))

(assert (= (and b!5379280 (not c!937520)) b!5379282))

(assert (= (and b!5379282 c!937519) b!5379287))

(assert (= (and b!5379282 (not c!937519)) b!5379283))

(assert (= (and b!5379287 (not res!2283794)) b!5379288))

(assert (= (and b!5379283 c!937518) b!5379286))

(assert (= (and b!5379283 (not c!937518)) b!5379279))

(assert (= (and b!5379286 (not res!2283796)) b!5379278))

(assert (= (or b!5379278 b!5379279) bm!385196))

(assert (= (or b!5379284 b!5379286) bm!385195))

(assert (=> bm!385195 m!6405084))

(declare-fun m!6405442 () Bool)

(assert (=> b!5379287 m!6405442))

(declare-fun m!6405444 () Bool)

(assert (=> bm!385196 m!6405444))

(declare-fun m!6405446 () Bool)

(assert (=> b!5379288 m!6405446))

(assert (=> b!5378835 d!1721637))

(declare-fun d!1721639 () Bool)

(assert (=> d!1721639 (= (get!21162 lt!2190060) (v!51241 lt!2190060))))

(assert (=> b!5378835 d!1721639))

(declare-fun d!1721641 () Bool)

(assert (=> d!1721641 (= (matchR!7287 lt!2190082 (_1!35604 lt!2190065)) (matchRSpec!2205 lt!2190082 (_1!35604 lt!2190065)))))

(declare-fun lt!2190288 () Unit!153926)

(assert (=> d!1721641 (= lt!2190288 (choose!40424 lt!2190082 (_1!35604 lt!2190065)))))

(assert (=> d!1721641 (validRegex!6838 lt!2190082)))

(assert (=> d!1721641 (= (mainMatchTheorem!2205 lt!2190082 (_1!35604 lt!2190065)) lt!2190288)))

(declare-fun bs!1245458 () Bool)

(assert (= bs!1245458 d!1721641))

(assert (=> bs!1245458 m!6405082))

(assert (=> bs!1245458 m!6405048))

(declare-fun m!6405448 () Bool)

(assert (=> bs!1245458 m!6405448))

(declare-fun m!6405450 () Bool)

(assert (=> bs!1245458 m!6405450))

(assert (=> b!5378835 d!1721641))

(declare-fun d!1721643 () Bool)

(assert (=> d!1721643 (= (Exists!2283 lambda!278165) (choose!40429 lambda!278165))))

(declare-fun bs!1245459 () Bool)

(assert (= bs!1245459 d!1721643))

(declare-fun m!6405452 () Bool)

(assert (=> bs!1245459 m!6405452))

(assert (=> b!5378835 d!1721643))

(declare-fun b!5379291 () Bool)

(declare-fun res!2283797 () Bool)

(declare-fun e!3337141 () Bool)

(assert (=> b!5379291 (=> (not res!2283797) (not e!3337141))))

(declare-fun lt!2190289 () List!61605)

(assert (=> b!5379291 (= res!2283797 (= (size!39802 lt!2190289) (+ (size!39802 (_1!35604 lt!2190061)) (size!39802 (_2!35604 lt!2190061)))))))

(declare-fun b!5379292 () Bool)

(assert (=> b!5379292 (= e!3337141 (or (not (= (_2!35604 lt!2190061) Nil!61481)) (= lt!2190289 (_1!35604 lt!2190061))))))

(declare-fun b!5379289 () Bool)

(declare-fun e!3337140 () List!61605)

(assert (=> b!5379289 (= e!3337140 (_2!35604 lt!2190061))))

(declare-fun d!1721645 () Bool)

(assert (=> d!1721645 e!3337141))

(declare-fun res!2283798 () Bool)

(assert (=> d!1721645 (=> (not res!2283798) (not e!3337141))))

(assert (=> d!1721645 (= res!2283798 (= (content!10997 lt!2190289) (set.union (content!10997 (_1!35604 lt!2190061)) (content!10997 (_2!35604 lt!2190061)))))))

(assert (=> d!1721645 (= lt!2190289 e!3337140)))

(declare-fun c!937521 () Bool)

(assert (=> d!1721645 (= c!937521 (is-Nil!61481 (_1!35604 lt!2190061)))))

(assert (=> d!1721645 (= (++!13405 (_1!35604 lt!2190061) (_2!35604 lt!2190061)) lt!2190289)))

(declare-fun b!5379290 () Bool)

(assert (=> b!5379290 (= e!3337140 (Cons!61481 (h!67929 (_1!35604 lt!2190061)) (++!13405 (t!374828 (_1!35604 lt!2190061)) (_2!35604 lt!2190061))))))

(assert (= (and d!1721645 c!937521) b!5379289))

(assert (= (and d!1721645 (not c!937521)) b!5379290))

(assert (= (and d!1721645 res!2283798) b!5379291))

(assert (= (and b!5379291 res!2283797) b!5379292))

(declare-fun m!6405454 () Bool)

(assert (=> b!5379291 m!6405454))

(assert (=> b!5379291 m!6405314))

(assert (=> b!5379291 m!6405342))

(declare-fun m!6405456 () Bool)

(assert (=> d!1721645 m!6405456))

(assert (=> d!1721645 m!6405320))

(assert (=> d!1721645 m!6405346))

(declare-fun m!6405458 () Bool)

(assert (=> b!5379290 m!6405458))

(assert (=> b!5378835 d!1721645))

(declare-fun bm!385221 () Bool)

(declare-fun call!385231 () (Set Context!8972))

(declare-fun call!385228 () (Set Context!8972))

(assert (=> bm!385221 (= call!385231 call!385228)))

(declare-fun b!5379338 () Bool)

(declare-fun c!937546 () Bool)

(assert (=> b!5379338 (= c!937546 (is-Star!15102 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun e!3337168 () (Set Context!8972))

(declare-fun e!3337166 () (Set Context!8972))

(assert (=> b!5379338 (= e!3337168 e!3337166)))

(declare-fun b!5379339 () Bool)

(declare-fun e!3337167 () (Set Context!8972))

(declare-fun e!3337171 () (Set Context!8972))

(assert (=> b!5379339 (= e!3337167 e!3337171)))

(declare-fun c!937542 () Bool)

(assert (=> b!5379339 (= c!937542 (is-Union!15102 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun bm!385222 () Bool)

(declare-fun call!385227 () (Set Context!8972))

(assert (=> bm!385222 (= call!385227 call!385231)))

(declare-fun b!5379340 () Bool)

(assert (=> b!5379340 (= e!3337166 call!385227)))

(declare-fun call!385226 () (Set Context!8972))

(declare-fun bm!385223 () Bool)

(declare-fun call!385230 () List!61606)

(assert (=> bm!385223 (= call!385226 (derivationStepZipperDown!550 (ite c!937542 (regTwo!30717 (reg!15431 (regOne!30716 r!7292))) (regOne!30716 (reg!15431 (regOne!30716 r!7292)))) (ite c!937542 lt!2190086 (Context!8973 call!385230)) (h!67929 s!2326)))))

(declare-fun d!1721647 () Bool)

(declare-fun c!937545 () Bool)

(assert (=> d!1721647 (= c!937545 (and (is-ElementMatch!15102 (reg!15431 (regOne!30716 r!7292))) (= (c!937440 (reg!15431 (regOne!30716 r!7292))) (h!67929 s!2326))))))

(assert (=> d!1721647 (= (derivationStepZipperDown!550 (reg!15431 (regOne!30716 r!7292)) lt!2190086 (h!67929 s!2326)) e!3337167)))

(declare-fun b!5379337 () Bool)

(assert (=> b!5379337 (= e!3337166 (as set.empty (Set Context!8972)))))

(declare-fun b!5379341 () Bool)

(assert (=> b!5379341 (= e!3337167 (set.insert lt!2190086 (as set.empty (Set Context!8972))))))

(declare-fun b!5379342 () Bool)

(declare-fun c!937543 () Bool)

(declare-fun e!3337169 () Bool)

(assert (=> b!5379342 (= c!937543 e!3337169)))

(declare-fun res!2283803 () Bool)

(assert (=> b!5379342 (=> (not res!2283803) (not e!3337169))))

(assert (=> b!5379342 (= res!2283803 (is-Concat!23947 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun e!3337170 () (Set Context!8972))

(assert (=> b!5379342 (= e!3337171 e!3337170)))

(declare-fun bm!385224 () Bool)

(declare-fun c!937544 () Bool)

(declare-fun $colon$colon!1461 (List!61606 Regex!15102) List!61606)

(assert (=> bm!385224 (= call!385230 ($colon$colon!1461 (exprs!4986 lt!2190086) (ite (or c!937543 c!937544) (regTwo!30716 (reg!15431 (regOne!30716 r!7292))) (reg!15431 (regOne!30716 r!7292)))))))

(declare-fun b!5379343 () Bool)

(assert (=> b!5379343 (= e!3337170 (set.union call!385226 call!385231))))

(declare-fun b!5379344 () Bool)

(assert (=> b!5379344 (= e!3337170 e!3337168)))

(assert (=> b!5379344 (= c!937544 (is-Concat!23947 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun bm!385225 () Bool)

(declare-fun call!385229 () List!61606)

(assert (=> bm!385225 (= call!385228 (derivationStepZipperDown!550 (ite c!937542 (regOne!30717 (reg!15431 (regOne!30716 r!7292))) (ite c!937543 (regTwo!30716 (reg!15431 (regOne!30716 r!7292))) (ite c!937544 (regOne!30716 (reg!15431 (regOne!30716 r!7292))) (reg!15431 (reg!15431 (regOne!30716 r!7292)))))) (ite (or c!937542 c!937543) lt!2190086 (Context!8973 call!385229)) (h!67929 s!2326)))))

(declare-fun b!5379345 () Bool)

(assert (=> b!5379345 (= e!3337171 (set.union call!385228 call!385226))))

(declare-fun b!5379346 () Bool)

(assert (=> b!5379346 (= e!3337169 (nullable!5271 (regOne!30716 (reg!15431 (regOne!30716 r!7292)))))))

(declare-fun b!5379347 () Bool)

(assert (=> b!5379347 (= e!3337168 call!385227)))

(declare-fun bm!385226 () Bool)

(assert (=> bm!385226 (= call!385229 call!385230)))

(assert (= (and d!1721647 c!937545) b!5379341))

(assert (= (and d!1721647 (not c!937545)) b!5379339))

(assert (= (and b!5379339 c!937542) b!5379345))

(assert (= (and b!5379339 (not c!937542)) b!5379342))

(assert (= (and b!5379342 res!2283803) b!5379346))

(assert (= (and b!5379342 c!937543) b!5379343))

(assert (= (and b!5379342 (not c!937543)) b!5379344))

(assert (= (and b!5379344 c!937544) b!5379347))

(assert (= (and b!5379344 (not c!937544)) b!5379338))

(assert (= (and b!5379338 c!937546) b!5379340))

(assert (= (and b!5379338 (not c!937546)) b!5379337))

(assert (= (or b!5379347 b!5379340) bm!385226))

(assert (= (or b!5379347 b!5379340) bm!385222))

(assert (= (or b!5379343 bm!385226) bm!385224))

(assert (= (or b!5379343 bm!385222) bm!385221))

(assert (= (or b!5379345 b!5379343) bm!385223))

(assert (= (or b!5379345 bm!385221) bm!385225))

(declare-fun m!6405460 () Bool)

(assert (=> b!5379346 m!6405460))

(declare-fun m!6405462 () Bool)

(assert (=> bm!385225 m!6405462))

(assert (=> b!5379341 m!6405026))

(declare-fun m!6405464 () Bool)

(assert (=> bm!385223 m!6405464))

(declare-fun m!6405466 () Bool)

(assert (=> bm!385224 m!6405466))

(assert (=> b!5378856 d!1721647))

(declare-fun b!5379348 () Bool)

(declare-fun e!3337175 () Bool)

(assert (=> b!5379348 (= e!3337175 (matchR!7287 (regTwo!30716 r!7292) s!2326))))

(declare-fun d!1721649 () Bool)

(declare-fun e!3337172 () Bool)

(assert (=> d!1721649 e!3337172))

(declare-fun res!2283805 () Bool)

(assert (=> d!1721649 (=> res!2283805 e!3337172)))

(declare-fun e!3337174 () Bool)

(assert (=> d!1721649 (= res!2283805 e!3337174)))

(declare-fun res!2283807 () Bool)

(assert (=> d!1721649 (=> (not res!2283807) (not e!3337174))))

(declare-fun lt!2190291 () Option!15213)

(assert (=> d!1721649 (= res!2283807 (isDefined!11916 lt!2190291))))

(declare-fun e!3337173 () Option!15213)

(assert (=> d!1721649 (= lt!2190291 e!3337173)))

(declare-fun c!937547 () Bool)

(assert (=> d!1721649 (= c!937547 e!3337175)))

(declare-fun res!2283806 () Bool)

(assert (=> d!1721649 (=> (not res!2283806) (not e!3337175))))

(assert (=> d!1721649 (= res!2283806 (matchR!7287 (regOne!30716 r!7292) Nil!61481))))

(assert (=> d!1721649 (validRegex!6838 (regOne!30716 r!7292))))

(assert (=> d!1721649 (= (findConcatSeparation!1627 (regOne!30716 r!7292) (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326) lt!2190291)))

(declare-fun b!5379349 () Bool)

(declare-fun e!3337176 () Option!15213)

(assert (=> b!5379349 (= e!3337173 e!3337176)))

(declare-fun c!937548 () Bool)

(assert (=> b!5379349 (= c!937548 (is-Nil!61481 s!2326))))

(declare-fun b!5379350 () Bool)

(declare-fun res!2283804 () Bool)

(assert (=> b!5379350 (=> (not res!2283804) (not e!3337174))))

(assert (=> b!5379350 (= res!2283804 (matchR!7287 (regTwo!30716 r!7292) (_2!35604 (get!21162 lt!2190291))))))

(declare-fun b!5379351 () Bool)

(assert (=> b!5379351 (= e!3337174 (= (++!13405 (_1!35604 (get!21162 lt!2190291)) (_2!35604 (get!21162 lt!2190291))) s!2326))))

(declare-fun b!5379352 () Bool)

(assert (=> b!5379352 (= e!3337173 (Some!15212 (tuple2!64603 Nil!61481 s!2326)))))

(declare-fun b!5379353 () Bool)

(assert (=> b!5379353 (= e!3337176 None!15212)))

(declare-fun b!5379354 () Bool)

(declare-fun res!2283808 () Bool)

(assert (=> b!5379354 (=> (not res!2283808) (not e!3337174))))

(assert (=> b!5379354 (= res!2283808 (matchR!7287 (regOne!30716 r!7292) (_1!35604 (get!21162 lt!2190291))))))

(declare-fun b!5379355 () Bool)

(declare-fun lt!2190292 () Unit!153926)

(declare-fun lt!2190290 () Unit!153926)

(assert (=> b!5379355 (= lt!2190292 lt!2190290)))

(assert (=> b!5379355 (= (++!13405 (++!13405 Nil!61481 (Cons!61481 (h!67929 s!2326) Nil!61481)) (t!374828 s!2326)) s!2326)))

(assert (=> b!5379355 (= lt!2190290 (lemmaMoveElementToOtherListKeepsConcatEq!1806 Nil!61481 (h!67929 s!2326) (t!374828 s!2326) s!2326))))

(assert (=> b!5379355 (= e!3337176 (findConcatSeparation!1627 (regOne!30716 r!7292) (regTwo!30716 r!7292) (++!13405 Nil!61481 (Cons!61481 (h!67929 s!2326) Nil!61481)) (t!374828 s!2326) s!2326))))

(declare-fun b!5379356 () Bool)

(assert (=> b!5379356 (= e!3337172 (not (isDefined!11916 lt!2190291)))))

(assert (= (and d!1721649 res!2283806) b!5379348))

(assert (= (and d!1721649 c!937547) b!5379352))

(assert (= (and d!1721649 (not c!937547)) b!5379349))

(assert (= (and b!5379349 c!937548) b!5379353))

(assert (= (and b!5379349 (not c!937548)) b!5379355))

(assert (= (and d!1721649 res!2283807) b!5379354))

(assert (= (and b!5379354 res!2283808) b!5379350))

(assert (= (and b!5379350 res!2283804) b!5379351))

(assert (= (and d!1721649 (not res!2283805)) b!5379356))

(declare-fun m!6405468 () Bool)

(assert (=> b!5379356 m!6405468))

(declare-fun m!6405470 () Bool)

(assert (=> b!5379348 m!6405470))

(declare-fun m!6405472 () Bool)

(assert (=> b!5379351 m!6405472))

(declare-fun m!6405474 () Bool)

(assert (=> b!5379351 m!6405474))

(assert (=> d!1721649 m!6405468))

(declare-fun m!6405476 () Bool)

(assert (=> d!1721649 m!6405476))

(declare-fun m!6405478 () Bool)

(assert (=> d!1721649 m!6405478))

(declare-fun m!6405480 () Bool)

(assert (=> b!5379355 m!6405480))

(assert (=> b!5379355 m!6405480))

(declare-fun m!6405482 () Bool)

(assert (=> b!5379355 m!6405482))

(declare-fun m!6405484 () Bool)

(assert (=> b!5379355 m!6405484))

(assert (=> b!5379355 m!6405480))

(declare-fun m!6405486 () Bool)

(assert (=> b!5379355 m!6405486))

(assert (=> b!5379350 m!6405472))

(declare-fun m!6405488 () Bool)

(assert (=> b!5379350 m!6405488))

(assert (=> b!5379354 m!6405472))

(declare-fun m!6405490 () Bool)

(assert (=> b!5379354 m!6405490))

(assert (=> b!5378852 d!1721649))

(declare-fun d!1721651 () Bool)

(assert (=> d!1721651 (= (Exists!2283 lambda!278158) (choose!40429 lambda!278158))))

(declare-fun bs!1245460 () Bool)

(assert (= bs!1245460 d!1721651))

(declare-fun m!6405492 () Bool)

(assert (=> bs!1245460 m!6405492))

(assert (=> b!5378852 d!1721651))

(declare-fun d!1721653 () Bool)

(assert (=> d!1721653 (= (Exists!2283 lambda!278159) (choose!40429 lambda!278159))))

(declare-fun bs!1245461 () Bool)

(assert (= bs!1245461 d!1721653))

(declare-fun m!6405494 () Bool)

(assert (=> bs!1245461 m!6405494))

(assert (=> b!5378852 d!1721653))

(declare-fun bs!1245462 () Bool)

(declare-fun d!1721655 () Bool)

(assert (= bs!1245462 (and d!1721655 b!5378853)))

(declare-fun lambda!278240 () Int)

(assert (=> bs!1245462 (not (= lambda!278240 lambda!278162))))

(declare-fun bs!1245463 () Bool)

(assert (= bs!1245463 (and d!1721655 d!1721627)))

(assert (=> bs!1245463 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278240 lambda!278236))))

(declare-fun bs!1245464 () Bool)

(assert (= bs!1245464 (and d!1721655 b!5378835)))

(assert (=> bs!1245464 (not (= lambda!278240 lambda!278164))))

(declare-fun bs!1245465 () Bool)

(assert (= bs!1245465 (and d!1721655 d!1721623)))

(assert (=> bs!1245465 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) (Star!15102 (reg!15431 (regOne!30716 r!7292))))) (= lambda!278240 lambda!278230))))

(declare-fun bs!1245466 () Bool)

(assert (= bs!1245466 (and d!1721655 b!5379278)))

(assert (=> bs!1245466 (not (= lambda!278240 lambda!278238))))

(assert (=> bs!1245464 (not (= lambda!278240 lambda!278165))))

(declare-fun bs!1245467 () Bool)

(assert (= bs!1245467 (and d!1721655 b!5378852)))

(assert (=> bs!1245467 (not (= lambda!278240 lambda!278159))))

(assert (=> bs!1245462 (= (= (regOne!30716 r!7292) lt!2190082) (= lambda!278240 lambda!278161))))

(assert (=> bs!1245463 (not (= lambda!278240 lambda!278237))))

(declare-fun bs!1245468 () Bool)

(assert (= bs!1245468 (and d!1721655 b!5379161)))

(assert (=> bs!1245468 (not (= lambda!278240 lambda!278215))))

(declare-fun bs!1245469 () Bool)

(assert (= bs!1245469 (and d!1721655 d!1721621)))

(assert (=> bs!1245469 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278240 lambda!278225))))

(assert (=> bs!1245465 (not (= lambda!278240 lambda!278231))))

(declare-fun bs!1245470 () Bool)

(assert (= bs!1245470 (and d!1721655 b!5379160)))

(assert (=> bs!1245470 (not (= lambda!278240 lambda!278214))))

(assert (=> bs!1245464 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278240 lambda!278163))))

(assert (=> bs!1245467 (= lambda!278240 lambda!278158)))

(declare-fun bs!1245471 () Bool)

(assert (= bs!1245471 (and d!1721655 b!5379279)))

(assert (=> bs!1245471 (not (= lambda!278240 lambda!278239))))

(assert (=> d!1721655 true))

(assert (=> d!1721655 true))

(assert (=> d!1721655 true))

(assert (=> d!1721655 (= (isDefined!11916 (findConcatSeparation!1627 (regOne!30716 r!7292) (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326)) (Exists!2283 lambda!278240))))

(declare-fun lt!2190293 () Unit!153926)

(assert (=> d!1721655 (= lt!2190293 (choose!40426 (regOne!30716 r!7292) (regTwo!30716 r!7292) s!2326))))

(assert (=> d!1721655 (validRegex!6838 (regOne!30716 r!7292))))

(assert (=> d!1721655 (= (lemmaFindConcatSeparationEquivalentToExists!1391 (regOne!30716 r!7292) (regTwo!30716 r!7292) s!2326) lt!2190293)))

(declare-fun bs!1245472 () Bool)

(assert (= bs!1245472 d!1721655))

(assert (=> bs!1245472 m!6405478))

(declare-fun m!6405504 () Bool)

(assert (=> bs!1245472 m!6405504))

(assert (=> bs!1245472 m!6404952))

(assert (=> bs!1245472 m!6404954))

(assert (=> bs!1245472 m!6404952))

(declare-fun m!6405506 () Bool)

(assert (=> bs!1245472 m!6405506))

(assert (=> b!5378852 d!1721655))

(declare-fun bs!1245473 () Bool)

(declare-fun d!1721659 () Bool)

(assert (= bs!1245473 (and d!1721659 b!5378853)))

(declare-fun lambda!278241 () Int)

(assert (=> bs!1245473 (not (= lambda!278241 lambda!278162))))

(declare-fun bs!1245474 () Bool)

(assert (= bs!1245474 (and d!1721659 d!1721627)))

(assert (=> bs!1245474 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278241 lambda!278236))))

(declare-fun bs!1245475 () Bool)

(assert (= bs!1245475 (and d!1721659 b!5378835)))

(assert (=> bs!1245475 (not (= lambda!278241 lambda!278164))))

(declare-fun bs!1245476 () Bool)

(assert (= bs!1245476 (and d!1721659 d!1721655)))

(assert (=> bs!1245476 (= lambda!278241 lambda!278240)))

(declare-fun bs!1245477 () Bool)

(assert (= bs!1245477 (and d!1721659 d!1721623)))

(assert (=> bs!1245477 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) (Star!15102 (reg!15431 (regOne!30716 r!7292))))) (= lambda!278241 lambda!278230))))

(declare-fun bs!1245478 () Bool)

(assert (= bs!1245478 (and d!1721659 b!5379278)))

(assert (=> bs!1245478 (not (= lambda!278241 lambda!278238))))

(assert (=> bs!1245475 (not (= lambda!278241 lambda!278165))))

(declare-fun bs!1245479 () Bool)

(assert (= bs!1245479 (and d!1721659 b!5378852)))

(assert (=> bs!1245479 (not (= lambda!278241 lambda!278159))))

(assert (=> bs!1245473 (= (= (regOne!30716 r!7292) lt!2190082) (= lambda!278241 lambda!278161))))

(assert (=> bs!1245474 (not (= lambda!278241 lambda!278237))))

(declare-fun bs!1245480 () Bool)

(assert (= bs!1245480 (and d!1721659 b!5379161)))

(assert (=> bs!1245480 (not (= lambda!278241 lambda!278215))))

(declare-fun bs!1245481 () Bool)

(assert (= bs!1245481 (and d!1721659 d!1721621)))

(assert (=> bs!1245481 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278241 lambda!278225))))

(assert (=> bs!1245477 (not (= lambda!278241 lambda!278231))))

(declare-fun bs!1245482 () Bool)

(assert (= bs!1245482 (and d!1721659 b!5379160)))

(assert (=> bs!1245482 (not (= lambda!278241 lambda!278214))))

(assert (=> bs!1245475 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278241 lambda!278163))))

(assert (=> bs!1245479 (= lambda!278241 lambda!278158)))

(declare-fun bs!1245483 () Bool)

(assert (= bs!1245483 (and d!1721659 b!5379279)))

(assert (=> bs!1245483 (not (= lambda!278241 lambda!278239))))

(assert (=> d!1721659 true))

(assert (=> d!1721659 true))

(assert (=> d!1721659 true))

(declare-fun lambda!278242 () Int)

(assert (=> bs!1245473 (= (= (regOne!30716 r!7292) lt!2190082) (= lambda!278242 lambda!278162))))

(assert (=> bs!1245474 (not (= lambda!278242 lambda!278236))))

(assert (=> bs!1245475 (not (= lambda!278242 lambda!278164))))

(assert (=> bs!1245476 (not (= lambda!278242 lambda!278240))))

(assert (=> bs!1245477 (not (= lambda!278242 lambda!278230))))

(assert (=> bs!1245478 (not (= lambda!278242 lambda!278238))))

(assert (=> bs!1245475 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278242 lambda!278165))))

(assert (=> bs!1245479 (= lambda!278242 lambda!278159)))

(assert (=> bs!1245473 (not (= lambda!278242 lambda!278161))))

(assert (=> bs!1245474 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278242 lambda!278237))))

(assert (=> bs!1245480 (= (and (= (regOne!30716 r!7292) (regOne!30716 lt!2190085)) (= (regTwo!30716 r!7292) (regTwo!30716 lt!2190085))) (= lambda!278242 lambda!278215))))

(declare-fun bs!1245484 () Bool)

(assert (= bs!1245484 d!1721659))

(assert (=> bs!1245484 (not (= lambda!278242 lambda!278241))))

(assert (=> bs!1245481 (not (= lambda!278242 lambda!278225))))

(assert (=> bs!1245477 (not (= lambda!278242 lambda!278231))))

(assert (=> bs!1245482 (not (= lambda!278242 lambda!278214))))

(assert (=> bs!1245475 (not (= lambda!278242 lambda!278163))))

(assert (=> bs!1245479 (not (= lambda!278242 lambda!278158))))

(assert (=> bs!1245483 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (regOne!30716 lt!2190082)) (= (regTwo!30716 r!7292) (regTwo!30716 lt!2190082))) (= lambda!278242 lambda!278239))))

(assert (=> d!1721659 true))

(assert (=> d!1721659 true))

(assert (=> d!1721659 true))

(assert (=> d!1721659 (= (Exists!2283 lambda!278241) (Exists!2283 lambda!278242))))

(declare-fun lt!2190294 () Unit!153926)

(assert (=> d!1721659 (= lt!2190294 (choose!40428 (regOne!30716 r!7292) (regTwo!30716 r!7292) s!2326))))

(assert (=> d!1721659 (validRegex!6838 (regOne!30716 r!7292))))

(assert (=> d!1721659 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!937 (regOne!30716 r!7292) (regTwo!30716 r!7292) s!2326) lt!2190294)))

(declare-fun m!6405514 () Bool)

(assert (=> bs!1245484 m!6405514))

(declare-fun m!6405516 () Bool)

(assert (=> bs!1245484 m!6405516))

(declare-fun m!6405518 () Bool)

(assert (=> bs!1245484 m!6405518))

(assert (=> bs!1245484 m!6405478))

(assert (=> b!5378852 d!1721659))

(declare-fun d!1721665 () Bool)

(assert (=> d!1721665 (= (isDefined!11916 (findConcatSeparation!1627 (regOne!30716 r!7292) (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326)) (not (isEmpty!33477 (findConcatSeparation!1627 (regOne!30716 r!7292) (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326))))))

(declare-fun bs!1245485 () Bool)

(assert (= bs!1245485 d!1721665))

(assert (=> bs!1245485 m!6404952))

(declare-fun m!6405520 () Bool)

(assert (=> bs!1245485 m!6405520))

(assert (=> b!5378852 d!1721665))

(declare-fun call!385240 () (Set Context!8972))

(declare-fun e!3337192 () (Set Context!8972))

(declare-fun b!5379381 () Bool)

(assert (=> b!5379381 (= e!3337192 (set.union call!385240 (derivationStepZipperUp!474 (Context!8973 (t!374829 (exprs!4986 lt!2190092))) (h!67929 s!2326))))))

(declare-fun b!5379382 () Bool)

(declare-fun e!3337194 () (Set Context!8972))

(assert (=> b!5379382 (= e!3337194 (as set.empty (Set Context!8972)))))

(declare-fun b!5379383 () Bool)

(declare-fun e!3337193 () Bool)

(assert (=> b!5379383 (= e!3337193 (nullable!5271 (h!67930 (exprs!4986 lt!2190092))))))

(declare-fun d!1721667 () Bool)

(declare-fun c!937558 () Bool)

(assert (=> d!1721667 (= c!937558 e!3337193)))

(declare-fun res!2283815 () Bool)

(assert (=> d!1721667 (=> (not res!2283815) (not e!3337193))))

(assert (=> d!1721667 (= res!2283815 (is-Cons!61482 (exprs!4986 lt!2190092)))))

(assert (=> d!1721667 (= (derivationStepZipperUp!474 lt!2190092 (h!67929 s!2326)) e!3337192)))

(declare-fun b!5379384 () Bool)

(assert (=> b!5379384 (= e!3337194 call!385240)))

(declare-fun b!5379385 () Bool)

(assert (=> b!5379385 (= e!3337192 e!3337194)))

(declare-fun c!937559 () Bool)

(assert (=> b!5379385 (= c!937559 (is-Cons!61482 (exprs!4986 lt!2190092)))))

(declare-fun bm!385235 () Bool)

(assert (=> bm!385235 (= call!385240 (derivationStepZipperDown!550 (h!67930 (exprs!4986 lt!2190092)) (Context!8973 (t!374829 (exprs!4986 lt!2190092))) (h!67929 s!2326)))))

(assert (= (and d!1721667 res!2283815) b!5379383))

(assert (= (and d!1721667 c!937558) b!5379381))

(assert (= (and d!1721667 (not c!937558)) b!5379385))

(assert (= (and b!5379385 c!937559) b!5379384))

(assert (= (and b!5379385 (not c!937559)) b!5379382))

(assert (= (or b!5379381 b!5379384) bm!385235))

(declare-fun m!6405524 () Bool)

(assert (=> b!5379381 m!6405524))

(declare-fun m!6405526 () Bool)

(assert (=> b!5379383 m!6405526))

(declare-fun m!6405528 () Bool)

(assert (=> bm!385235 m!6405528))

(assert (=> b!5378854 d!1721667))

(declare-fun bm!385236 () Bool)

(declare-fun call!385246 () (Set Context!8972))

(declare-fun call!385243 () (Set Context!8972))

(assert (=> bm!385236 (= call!385246 call!385243)))

(declare-fun b!5379387 () Bool)

(declare-fun c!937564 () Bool)

(assert (=> b!5379387 (= c!937564 (is-Star!15102 (h!67930 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun e!3337197 () (Set Context!8972))

(declare-fun e!3337195 () (Set Context!8972))

(assert (=> b!5379387 (= e!3337197 e!3337195)))

(declare-fun b!5379388 () Bool)

(declare-fun e!3337196 () (Set Context!8972))

(declare-fun e!3337200 () (Set Context!8972))

(assert (=> b!5379388 (= e!3337196 e!3337200)))

(declare-fun c!937560 () Bool)

(assert (=> b!5379388 (= c!937560 (is-Union!15102 (h!67930 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun bm!385237 () Bool)

(declare-fun call!385242 () (Set Context!8972))

(assert (=> bm!385237 (= call!385242 call!385246)))

(declare-fun b!5379389 () Bool)

(assert (=> b!5379389 (= e!3337195 call!385242)))

(declare-fun bm!385238 () Bool)

(declare-fun call!385245 () List!61606)

(declare-fun call!385241 () (Set Context!8972))

(assert (=> bm!385238 (= call!385241 (derivationStepZipperDown!550 (ite c!937560 (regTwo!30717 (h!67930 (exprs!4986 (h!67931 zl!343)))) (regOne!30716 (h!67930 (exprs!4986 (h!67931 zl!343))))) (ite c!937560 lt!2190092 (Context!8973 call!385245)) (h!67929 s!2326)))))

(declare-fun d!1721671 () Bool)

(declare-fun c!937563 () Bool)

(assert (=> d!1721671 (= c!937563 (and (is-ElementMatch!15102 (h!67930 (exprs!4986 (h!67931 zl!343)))) (= (c!937440 (h!67930 (exprs!4986 (h!67931 zl!343)))) (h!67929 s!2326))))))

(assert (=> d!1721671 (= (derivationStepZipperDown!550 (h!67930 (exprs!4986 (h!67931 zl!343))) lt!2190092 (h!67929 s!2326)) e!3337196)))

(declare-fun b!5379386 () Bool)

(assert (=> b!5379386 (= e!3337195 (as set.empty (Set Context!8972)))))

(declare-fun b!5379390 () Bool)

(assert (=> b!5379390 (= e!3337196 (set.insert lt!2190092 (as set.empty (Set Context!8972))))))

(declare-fun b!5379391 () Bool)

(declare-fun c!937561 () Bool)

(declare-fun e!3337198 () Bool)

(assert (=> b!5379391 (= c!937561 e!3337198)))

(declare-fun res!2283816 () Bool)

(assert (=> b!5379391 (=> (not res!2283816) (not e!3337198))))

(assert (=> b!5379391 (= res!2283816 (is-Concat!23947 (h!67930 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun e!3337199 () (Set Context!8972))

(assert (=> b!5379391 (= e!3337200 e!3337199)))

(declare-fun c!937562 () Bool)

(declare-fun bm!385239 () Bool)

(assert (=> bm!385239 (= call!385245 ($colon$colon!1461 (exprs!4986 lt!2190092) (ite (or c!937561 c!937562) (regTwo!30716 (h!67930 (exprs!4986 (h!67931 zl!343)))) (h!67930 (exprs!4986 (h!67931 zl!343))))))))

(declare-fun b!5379392 () Bool)

(assert (=> b!5379392 (= e!3337199 (set.union call!385241 call!385246))))

(declare-fun b!5379393 () Bool)

(assert (=> b!5379393 (= e!3337199 e!3337197)))

(assert (=> b!5379393 (= c!937562 (is-Concat!23947 (h!67930 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun bm!385240 () Bool)

(declare-fun call!385244 () List!61606)

(assert (=> bm!385240 (= call!385243 (derivationStepZipperDown!550 (ite c!937560 (regOne!30717 (h!67930 (exprs!4986 (h!67931 zl!343)))) (ite c!937561 (regTwo!30716 (h!67930 (exprs!4986 (h!67931 zl!343)))) (ite c!937562 (regOne!30716 (h!67930 (exprs!4986 (h!67931 zl!343)))) (reg!15431 (h!67930 (exprs!4986 (h!67931 zl!343))))))) (ite (or c!937560 c!937561) lt!2190092 (Context!8973 call!385244)) (h!67929 s!2326)))))

(declare-fun b!5379394 () Bool)

(assert (=> b!5379394 (= e!3337200 (set.union call!385243 call!385241))))

(declare-fun b!5379395 () Bool)

(assert (=> b!5379395 (= e!3337198 (nullable!5271 (regOne!30716 (h!67930 (exprs!4986 (h!67931 zl!343))))))))

(declare-fun b!5379396 () Bool)

(assert (=> b!5379396 (= e!3337197 call!385242)))

(declare-fun bm!385241 () Bool)

(assert (=> bm!385241 (= call!385244 call!385245)))

(assert (= (and d!1721671 c!937563) b!5379390))

(assert (= (and d!1721671 (not c!937563)) b!5379388))

(assert (= (and b!5379388 c!937560) b!5379394))

(assert (= (and b!5379388 (not c!937560)) b!5379391))

(assert (= (and b!5379391 res!2283816) b!5379395))

(assert (= (and b!5379391 c!937561) b!5379392))

(assert (= (and b!5379391 (not c!937561)) b!5379393))

(assert (= (and b!5379393 c!937562) b!5379396))

(assert (= (and b!5379393 (not c!937562)) b!5379387))

(assert (= (and b!5379387 c!937564) b!5379389))

(assert (= (and b!5379387 (not c!937564)) b!5379386))

(assert (= (or b!5379396 b!5379389) bm!385241))

(assert (= (or b!5379396 b!5379389) bm!385237))

(assert (= (or b!5379392 bm!385241) bm!385239))

(assert (= (or b!5379392 bm!385237) bm!385236))

(assert (= (or b!5379394 b!5379392) bm!385238))

(assert (= (or b!5379394 bm!385236) bm!385240))

(declare-fun m!6405530 () Bool)

(assert (=> b!5379395 m!6405530))

(declare-fun m!6405532 () Bool)

(assert (=> bm!385240 m!6405532))

(declare-fun m!6405534 () Bool)

(assert (=> b!5379390 m!6405534))

(declare-fun m!6405536 () Bool)

(assert (=> bm!385238 m!6405536))

(declare-fun m!6405538 () Bool)

(assert (=> bm!385239 m!6405538))

(assert (=> b!5378854 d!1721671))

(declare-fun d!1721673 () Bool)

(declare-fun dynLambda!24272 (Int Context!8972) (Set Context!8972))

(assert (=> d!1721673 (= (flatMap!829 z!1189 lambda!278160) (dynLambda!24272 lambda!278160 (h!67931 zl!343)))))

(declare-fun lt!2190300 () Unit!153926)

(declare-fun choose!40430 ((Set Context!8972) Context!8972 Int) Unit!153926)

(assert (=> d!1721673 (= lt!2190300 (choose!40430 z!1189 (h!67931 zl!343) lambda!278160))))

(assert (=> d!1721673 (= z!1189 (set.insert (h!67931 zl!343) (as set.empty (Set Context!8972))))))

(assert (=> d!1721673 (= (lemmaFlatMapOnSingletonSet!361 z!1189 (h!67931 zl!343) lambda!278160) lt!2190300)))

(declare-fun b_lambda!206061 () Bool)

(assert (=> (not b_lambda!206061) (not d!1721673)))

(declare-fun bs!1245487 () Bool)

(assert (= bs!1245487 d!1721673))

(assert (=> bs!1245487 m!6404996))

(declare-fun m!6405540 () Bool)

(assert (=> bs!1245487 m!6405540))

(declare-fun m!6405542 () Bool)

(assert (=> bs!1245487 m!6405542))

(declare-fun m!6405544 () Bool)

(assert (=> bs!1245487 m!6405544))

(assert (=> b!5378854 d!1721673))

(declare-fun d!1721675 () Bool)

(assert (=> d!1721675 (= (nullable!5271 (h!67930 (exprs!4986 (h!67931 zl!343)))) (nullableFct!1563 (h!67930 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun bs!1245488 () Bool)

(assert (= bs!1245488 d!1721675))

(declare-fun m!6405546 () Bool)

(assert (=> bs!1245488 m!6405546))

(assert (=> b!5378854 d!1721675))

(declare-fun e!3337201 () (Set Context!8972))

(declare-fun b!5379397 () Bool)

(declare-fun call!385247 () (Set Context!8972))

(assert (=> b!5379397 (= e!3337201 (set.union call!385247 (derivationStepZipperUp!474 (Context!8973 (t!374829 (exprs!4986 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343)))))))) (h!67929 s!2326))))))

(declare-fun b!5379398 () Bool)

(declare-fun e!3337203 () (Set Context!8972))

(assert (=> b!5379398 (= e!3337203 (as set.empty (Set Context!8972)))))

(declare-fun b!5379399 () Bool)

(declare-fun e!3337202 () Bool)

(assert (=> b!5379399 (= e!3337202 (nullable!5271 (h!67930 (exprs!4986 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343)))))))))))

(declare-fun d!1721677 () Bool)

(declare-fun c!937565 () Bool)

(assert (=> d!1721677 (= c!937565 e!3337202)))

(declare-fun res!2283817 () Bool)

(assert (=> d!1721677 (=> (not res!2283817) (not e!3337202))))

(assert (=> d!1721677 (= res!2283817 (is-Cons!61482 (exprs!4986 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343))))))))))

(assert (=> d!1721677 (= (derivationStepZipperUp!474 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343))))) (h!67929 s!2326)) e!3337201)))

(declare-fun b!5379400 () Bool)

(assert (=> b!5379400 (= e!3337203 call!385247)))

(declare-fun b!5379401 () Bool)

(assert (=> b!5379401 (= e!3337201 e!3337203)))

(declare-fun c!937566 () Bool)

(assert (=> b!5379401 (= c!937566 (is-Cons!61482 (exprs!4986 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343))))))))))

(declare-fun bm!385242 () Bool)

(assert (=> bm!385242 (= call!385247 (derivationStepZipperDown!550 (h!67930 (exprs!4986 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343))))))) (Context!8973 (t!374829 (exprs!4986 (Context!8973 (Cons!61482 (h!67930 (exprs!4986 (h!67931 zl!343))) (t!374829 (exprs!4986 (h!67931 zl!343)))))))) (h!67929 s!2326)))))

(assert (= (and d!1721677 res!2283817) b!5379399))

(assert (= (and d!1721677 c!937565) b!5379397))

(assert (= (and d!1721677 (not c!937565)) b!5379401))

(assert (= (and b!5379401 c!937566) b!5379400))

(assert (= (and b!5379401 (not c!937566)) b!5379398))

(assert (= (or b!5379397 b!5379400) bm!385242))

(declare-fun m!6405548 () Bool)

(assert (=> b!5379397 m!6405548))

(declare-fun m!6405550 () Bool)

(assert (=> b!5379399 m!6405550))

(declare-fun m!6405552 () Bool)

(assert (=> bm!385242 m!6405552))

(assert (=> b!5378854 d!1721677))

(declare-fun e!3337204 () (Set Context!8972))

(declare-fun b!5379402 () Bool)

(declare-fun call!385248 () (Set Context!8972))

(assert (=> b!5379402 (= e!3337204 (set.union call!385248 (derivationStepZipperUp!474 (Context!8973 (t!374829 (exprs!4986 (h!67931 zl!343)))) (h!67929 s!2326))))))

(declare-fun b!5379403 () Bool)

(declare-fun e!3337206 () (Set Context!8972))

(assert (=> b!5379403 (= e!3337206 (as set.empty (Set Context!8972)))))

(declare-fun b!5379404 () Bool)

(declare-fun e!3337205 () Bool)

(assert (=> b!5379404 (= e!3337205 (nullable!5271 (h!67930 (exprs!4986 (h!67931 zl!343)))))))

(declare-fun d!1721679 () Bool)

(declare-fun c!937567 () Bool)

(assert (=> d!1721679 (= c!937567 e!3337205)))

(declare-fun res!2283818 () Bool)

(assert (=> d!1721679 (=> (not res!2283818) (not e!3337205))))

(assert (=> d!1721679 (= res!2283818 (is-Cons!61482 (exprs!4986 (h!67931 zl!343))))))

(assert (=> d!1721679 (= (derivationStepZipperUp!474 (h!67931 zl!343) (h!67929 s!2326)) e!3337204)))

(declare-fun b!5379405 () Bool)

(assert (=> b!5379405 (= e!3337206 call!385248)))

(declare-fun b!5379406 () Bool)

(assert (=> b!5379406 (= e!3337204 e!3337206)))

(declare-fun c!937568 () Bool)

(assert (=> b!5379406 (= c!937568 (is-Cons!61482 (exprs!4986 (h!67931 zl!343))))))

(declare-fun bm!385243 () Bool)

(assert (=> bm!385243 (= call!385248 (derivationStepZipperDown!550 (h!67930 (exprs!4986 (h!67931 zl!343))) (Context!8973 (t!374829 (exprs!4986 (h!67931 zl!343)))) (h!67929 s!2326)))))

(assert (= (and d!1721679 res!2283818) b!5379404))

(assert (= (and d!1721679 c!937567) b!5379402))

(assert (= (and d!1721679 (not c!937567)) b!5379406))

(assert (= (and b!5379406 c!937568) b!5379405))

(assert (= (and b!5379406 (not c!937568)) b!5379403))

(assert (= (or b!5379402 b!5379405) bm!385243))

(declare-fun m!6405554 () Bool)

(assert (=> b!5379402 m!6405554))

(assert (=> b!5379404 m!6404998))

(declare-fun m!6405556 () Bool)

(assert (=> bm!385243 m!6405556))

(assert (=> b!5378854 d!1721679))

(declare-fun d!1721681 () Bool)

(declare-fun choose!40432 ((Set Context!8972) Int) (Set Context!8972))

(assert (=> d!1721681 (= (flatMap!829 z!1189 lambda!278160) (choose!40432 z!1189 lambda!278160))))

(declare-fun bs!1245489 () Bool)

(assert (= bs!1245489 d!1721681))

(declare-fun m!6405558 () Bool)

(assert (=> bs!1245489 m!6405558))

(assert (=> b!5378854 d!1721681))

(declare-fun bs!1245490 () Bool)

(declare-fun d!1721683 () Bool)

(assert (= bs!1245490 (and d!1721683 b!5378853)))

(declare-fun lambda!278246 () Int)

(assert (=> bs!1245490 (not (= lambda!278246 lambda!278162))))

(declare-fun bs!1245491 () Bool)

(assert (= bs!1245491 (and d!1721683 d!1721627)))

(assert (=> bs!1245491 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278246 lambda!278236))))

(declare-fun bs!1245492 () Bool)

(assert (= bs!1245492 (and d!1721683 b!5378835)))

(assert (=> bs!1245492 (not (= lambda!278246 lambda!278164))))

(declare-fun bs!1245493 () Bool)

(assert (= bs!1245493 (and d!1721683 d!1721655)))

(assert (=> bs!1245493 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278246 lambda!278240))))

(declare-fun bs!1245494 () Bool)

(assert (= bs!1245494 (and d!1721683 d!1721623)))

(assert (=> bs!1245494 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) (Star!15102 (reg!15431 (regOne!30716 r!7292))))) (= lambda!278246 lambda!278230))))

(declare-fun bs!1245495 () Bool)

(assert (= bs!1245495 (and d!1721683 b!5379278)))

(assert (=> bs!1245495 (not (= lambda!278246 lambda!278238))))

(assert (=> bs!1245492 (not (= lambda!278246 lambda!278165))))

(declare-fun bs!1245496 () Bool)

(assert (= bs!1245496 (and d!1721683 b!5378852)))

(assert (=> bs!1245496 (not (= lambda!278246 lambda!278159))))

(assert (=> bs!1245490 (= lambda!278246 lambda!278161)))

(declare-fun bs!1245497 () Bool)

(assert (= bs!1245497 (and d!1721683 b!5379161)))

(assert (=> bs!1245497 (not (= lambda!278246 lambda!278215))))

(declare-fun bs!1245498 () Bool)

(assert (= bs!1245498 (and d!1721683 d!1721659)))

(assert (=> bs!1245498 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278246 lambda!278241))))

(declare-fun bs!1245499 () Bool)

(assert (= bs!1245499 (and d!1721683 d!1721621)))

(assert (=> bs!1245499 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278246 lambda!278225))))

(assert (=> bs!1245494 (not (= lambda!278246 lambda!278231))))

(declare-fun bs!1245500 () Bool)

(assert (= bs!1245500 (and d!1721683 b!5379160)))

(assert (=> bs!1245500 (not (= lambda!278246 lambda!278214))))

(assert (=> bs!1245492 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278246 lambda!278163))))

(assert (=> bs!1245498 (not (= lambda!278246 lambda!278242))))

(assert (=> bs!1245491 (not (= lambda!278246 lambda!278237))))

(assert (=> bs!1245496 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278246 lambda!278158))))

(declare-fun bs!1245501 () Bool)

(assert (= bs!1245501 (and d!1721683 b!5379279)))

(assert (=> bs!1245501 (not (= lambda!278246 lambda!278239))))

(assert (=> d!1721683 true))

(assert (=> d!1721683 true))

(assert (=> d!1721683 true))

(declare-fun lambda!278247 () Int)

(assert (=> bs!1245490 (= lambda!278247 lambda!278162)))

(assert (=> bs!1245491 (not (= lambda!278247 lambda!278236))))

(assert (=> bs!1245492 (not (= lambda!278247 lambda!278164))))

(assert (=> bs!1245493 (not (= lambda!278247 lambda!278240))))

(assert (=> bs!1245494 (not (= lambda!278247 lambda!278230))))

(assert (=> bs!1245495 (not (= lambda!278247 lambda!278238))))

(assert (=> bs!1245492 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278247 lambda!278165))))

(declare-fun bs!1245502 () Bool)

(assert (= bs!1245502 d!1721683))

(assert (=> bs!1245502 (not (= lambda!278247 lambda!278246))))

(assert (=> bs!1245496 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278247 lambda!278159))))

(assert (=> bs!1245490 (not (= lambda!278247 lambda!278161))))

(assert (=> bs!1245497 (= (and (= lt!2190082 (regOne!30716 lt!2190085)) (= (regTwo!30716 r!7292) (regTwo!30716 lt!2190085))) (= lambda!278247 lambda!278215))))

(assert (=> bs!1245498 (not (= lambda!278247 lambda!278241))))

(assert (=> bs!1245499 (not (= lambda!278247 lambda!278225))))

(assert (=> bs!1245494 (not (= lambda!278247 lambda!278231))))

(assert (=> bs!1245500 (not (= lambda!278247 lambda!278214))))

(assert (=> bs!1245492 (not (= lambda!278247 lambda!278163))))

(assert (=> bs!1245498 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278247 lambda!278242))))

(assert (=> bs!1245491 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278247 lambda!278237))))

(assert (=> bs!1245496 (not (= lambda!278247 lambda!278158))))

(assert (=> bs!1245501 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (regOne!30716 lt!2190082)) (= (regTwo!30716 r!7292) (regTwo!30716 lt!2190082))) (= lambda!278247 lambda!278239))))

(assert (=> d!1721683 true))

(assert (=> d!1721683 true))

(assert (=> d!1721683 true))

(assert (=> d!1721683 (= (Exists!2283 lambda!278246) (Exists!2283 lambda!278247))))

(declare-fun lt!2190303 () Unit!153926)

(assert (=> d!1721683 (= lt!2190303 (choose!40428 lt!2190082 (regTwo!30716 r!7292) s!2326))))

(assert (=> d!1721683 (validRegex!6838 lt!2190082)))

(assert (=> d!1721683 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!937 lt!2190082 (regTwo!30716 r!7292) s!2326) lt!2190303)))

(declare-fun m!6405560 () Bool)

(assert (=> bs!1245502 m!6405560))

(declare-fun m!6405562 () Bool)

(assert (=> bs!1245502 m!6405562))

(declare-fun m!6405564 () Bool)

(assert (=> bs!1245502 m!6405564))

(assert (=> bs!1245502 m!6405450))

(assert (=> b!5378853 d!1721683))

(declare-fun bs!1245503 () Bool)

(declare-fun d!1721685 () Bool)

(assert (= bs!1245503 (and d!1721685 b!5378853)))

(declare-fun lambda!278248 () Int)

(assert (=> bs!1245503 (not (= lambda!278248 lambda!278162))))

(declare-fun bs!1245504 () Bool)

(assert (= bs!1245504 (and d!1721685 b!5378835)))

(assert (=> bs!1245504 (not (= lambda!278248 lambda!278164))))

(declare-fun bs!1245505 () Bool)

(assert (= bs!1245505 (and d!1721685 d!1721655)))

(assert (=> bs!1245505 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278248 lambda!278240))))

(declare-fun bs!1245506 () Bool)

(assert (= bs!1245506 (and d!1721685 d!1721623)))

(assert (=> bs!1245506 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) (Star!15102 (reg!15431 (regOne!30716 r!7292))))) (= lambda!278248 lambda!278230))))

(declare-fun bs!1245507 () Bool)

(assert (= bs!1245507 (and d!1721685 b!5379278)))

(assert (=> bs!1245507 (not (= lambda!278248 lambda!278238))))

(assert (=> bs!1245504 (not (= lambda!278248 lambda!278165))))

(declare-fun bs!1245508 () Bool)

(assert (= bs!1245508 (and d!1721685 d!1721683)))

(assert (=> bs!1245508 (= lambda!278248 lambda!278246)))

(declare-fun bs!1245509 () Bool)

(assert (= bs!1245509 (and d!1721685 b!5378852)))

(assert (=> bs!1245509 (not (= lambda!278248 lambda!278159))))

(assert (=> bs!1245503 (= lambda!278248 lambda!278161)))

(declare-fun bs!1245510 () Bool)

(assert (= bs!1245510 (and d!1721685 b!5379161)))

(assert (=> bs!1245510 (not (= lambda!278248 lambda!278215))))

(declare-fun bs!1245511 () Bool)

(assert (= bs!1245511 (and d!1721685 d!1721659)))

(assert (=> bs!1245511 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278248 lambda!278241))))

(declare-fun bs!1245512 () Bool)

(assert (= bs!1245512 (and d!1721685 d!1721621)))

(assert (=> bs!1245512 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278248 lambda!278225))))

(assert (=> bs!1245506 (not (= lambda!278248 lambda!278231))))

(declare-fun bs!1245513 () Bool)

(assert (= bs!1245513 (and d!1721685 b!5379160)))

(assert (=> bs!1245513 (not (= lambda!278248 lambda!278214))))

(assert (=> bs!1245504 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278248 lambda!278163))))

(assert (=> bs!1245508 (not (= lambda!278248 lambda!278247))))

(declare-fun bs!1245514 () Bool)

(assert (= bs!1245514 (and d!1721685 d!1721627)))

(assert (=> bs!1245514 (= (and (= s!2326 (_1!35604 lt!2190065)) (= lt!2190082 (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278248 lambda!278236))))

(assert (=> bs!1245511 (not (= lambda!278248 lambda!278242))))

(assert (=> bs!1245514 (not (= lambda!278248 lambda!278237))))

(assert (=> bs!1245509 (= (= lt!2190082 (regOne!30716 r!7292)) (= lambda!278248 lambda!278158))))

(declare-fun bs!1245515 () Bool)

(assert (= bs!1245515 (and d!1721685 b!5379279)))

(assert (=> bs!1245515 (not (= lambda!278248 lambda!278239))))

(assert (=> d!1721685 true))

(assert (=> d!1721685 true))

(assert (=> d!1721685 true))

(assert (=> d!1721685 (= (isDefined!11916 (findConcatSeparation!1627 lt!2190082 (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326)) (Exists!2283 lambda!278248))))

(declare-fun lt!2190304 () Unit!153926)

(assert (=> d!1721685 (= lt!2190304 (choose!40426 lt!2190082 (regTwo!30716 r!7292) s!2326))))

(assert (=> d!1721685 (validRegex!6838 lt!2190082)))

(assert (=> d!1721685 (= (lemmaFindConcatSeparationEquivalentToExists!1391 lt!2190082 (regTwo!30716 r!7292) s!2326) lt!2190304)))

(declare-fun bs!1245516 () Bool)

(assert (= bs!1245516 d!1721685))

(assert (=> bs!1245516 m!6405450))

(declare-fun m!6405566 () Bool)

(assert (=> bs!1245516 m!6405566))

(assert (=> bs!1245516 m!6405068))

(declare-fun m!6405568 () Bool)

(assert (=> bs!1245516 m!6405568))

(assert (=> bs!1245516 m!6405068))

(declare-fun m!6405570 () Bool)

(assert (=> bs!1245516 m!6405570))

(assert (=> b!5378853 d!1721685))

(declare-fun d!1721687 () Bool)

(assert (=> d!1721687 (= (isDefined!11916 lt!2190072) (not (isEmpty!33477 lt!2190072)))))

(declare-fun bs!1245517 () Bool)

(assert (= bs!1245517 d!1721687))

(declare-fun m!6405572 () Bool)

(assert (=> bs!1245517 m!6405572))

(assert (=> b!5378853 d!1721687))

(declare-fun d!1721689 () Bool)

(assert (=> d!1721689 (= (Exists!2283 lambda!278161) (choose!40429 lambda!278161))))

(declare-fun bs!1245518 () Bool)

(assert (= bs!1245518 d!1721689))

(declare-fun m!6405574 () Bool)

(assert (=> bs!1245518 m!6405574))

(assert (=> b!5378853 d!1721689))

(declare-fun b!5379437 () Bool)

(declare-fun res!2283835 () Bool)

(declare-fun e!3337222 () Bool)

(assert (=> b!5379437 (=> (not res!2283835) (not e!3337222))))

(declare-fun lt!2190305 () List!61605)

(assert (=> b!5379437 (= res!2283835 (= (size!39802 lt!2190305) (+ (size!39802 (_1!35604 lt!2190065)) (size!39802 (_2!35604 lt!2190065)))))))

(declare-fun b!5379438 () Bool)

(assert (=> b!5379438 (= e!3337222 (or (not (= (_2!35604 lt!2190065) Nil!61481)) (= lt!2190305 (_1!35604 lt!2190065))))))

(declare-fun b!5379435 () Bool)

(declare-fun e!3337221 () List!61605)

(assert (=> b!5379435 (= e!3337221 (_2!35604 lt!2190065))))

(declare-fun d!1721691 () Bool)

(assert (=> d!1721691 e!3337222))

(declare-fun res!2283836 () Bool)

(assert (=> d!1721691 (=> (not res!2283836) (not e!3337222))))

(assert (=> d!1721691 (= res!2283836 (= (content!10997 lt!2190305) (set.union (content!10997 (_1!35604 lt!2190065)) (content!10997 (_2!35604 lt!2190065)))))))

(assert (=> d!1721691 (= lt!2190305 e!3337221)))

(declare-fun c!937575 () Bool)

(assert (=> d!1721691 (= c!937575 (is-Nil!61481 (_1!35604 lt!2190065)))))

(assert (=> d!1721691 (= (++!13405 (_1!35604 lt!2190065) (_2!35604 lt!2190065)) lt!2190305)))

(declare-fun b!5379436 () Bool)

(assert (=> b!5379436 (= e!3337221 (Cons!61481 (h!67929 (_1!35604 lt!2190065)) (++!13405 (t!374828 (_1!35604 lt!2190065)) (_2!35604 lt!2190065))))))

(assert (= (and d!1721691 c!937575) b!5379435))

(assert (= (and d!1721691 (not c!937575)) b!5379436))

(assert (= (and d!1721691 res!2283836) b!5379437))

(assert (= (and b!5379437 res!2283835) b!5379438))

(declare-fun m!6405576 () Bool)

(assert (=> b!5379437 m!6405576))

(declare-fun m!6405578 () Bool)

(assert (=> b!5379437 m!6405578))

(assert (=> b!5379437 m!6405330))

(declare-fun m!6405580 () Bool)

(assert (=> d!1721691 m!6405580))

(declare-fun m!6405582 () Bool)

(assert (=> d!1721691 m!6405582))

(assert (=> d!1721691 m!6405336))

(declare-fun m!6405584 () Bool)

(assert (=> b!5379436 m!6405584))

(assert (=> b!5378853 d!1721691))

(declare-fun b!5379453 () Bool)

(declare-fun e!3337233 () Bool)

(assert (=> b!5379453 (= e!3337233 (matchR!7287 (regTwo!30716 r!7292) s!2326))))

(declare-fun d!1721693 () Bool)

(declare-fun e!3337230 () Bool)

(assert (=> d!1721693 e!3337230))

(declare-fun res!2283846 () Bool)

(assert (=> d!1721693 (=> res!2283846 e!3337230)))

(declare-fun e!3337232 () Bool)

(assert (=> d!1721693 (= res!2283846 e!3337232)))

(declare-fun res!2283848 () Bool)

(assert (=> d!1721693 (=> (not res!2283848) (not e!3337232))))

(declare-fun lt!2190308 () Option!15213)

(assert (=> d!1721693 (= res!2283848 (isDefined!11916 lt!2190308))))

(declare-fun e!3337231 () Option!15213)

(assert (=> d!1721693 (= lt!2190308 e!3337231)))

(declare-fun c!937579 () Bool)

(assert (=> d!1721693 (= c!937579 e!3337233)))

(declare-fun res!2283847 () Bool)

(assert (=> d!1721693 (=> (not res!2283847) (not e!3337233))))

(assert (=> d!1721693 (= res!2283847 (matchR!7287 lt!2190082 Nil!61481))))

(assert (=> d!1721693 (validRegex!6838 lt!2190082)))

(assert (=> d!1721693 (= (findConcatSeparation!1627 lt!2190082 (regTwo!30716 r!7292) Nil!61481 s!2326 s!2326) lt!2190308)))

(declare-fun b!5379454 () Bool)

(declare-fun e!3337234 () Option!15213)

(assert (=> b!5379454 (= e!3337231 e!3337234)))

(declare-fun c!937580 () Bool)

(assert (=> b!5379454 (= c!937580 (is-Nil!61481 s!2326))))

(declare-fun b!5379455 () Bool)

(declare-fun res!2283845 () Bool)

(assert (=> b!5379455 (=> (not res!2283845) (not e!3337232))))

(assert (=> b!5379455 (= res!2283845 (matchR!7287 (regTwo!30716 r!7292) (_2!35604 (get!21162 lt!2190308))))))

(declare-fun b!5379456 () Bool)

(assert (=> b!5379456 (= e!3337232 (= (++!13405 (_1!35604 (get!21162 lt!2190308)) (_2!35604 (get!21162 lt!2190308))) s!2326))))

(declare-fun b!5379457 () Bool)

(assert (=> b!5379457 (= e!3337231 (Some!15212 (tuple2!64603 Nil!61481 s!2326)))))

(declare-fun b!5379458 () Bool)

(assert (=> b!5379458 (= e!3337234 None!15212)))

(declare-fun b!5379459 () Bool)

(declare-fun res!2283849 () Bool)

(assert (=> b!5379459 (=> (not res!2283849) (not e!3337232))))

(assert (=> b!5379459 (= res!2283849 (matchR!7287 lt!2190082 (_1!35604 (get!21162 lt!2190308))))))

(declare-fun b!5379460 () Bool)

(declare-fun lt!2190309 () Unit!153926)

(declare-fun lt!2190307 () Unit!153926)

(assert (=> b!5379460 (= lt!2190309 lt!2190307)))

(assert (=> b!5379460 (= (++!13405 (++!13405 Nil!61481 (Cons!61481 (h!67929 s!2326) Nil!61481)) (t!374828 s!2326)) s!2326)))

(assert (=> b!5379460 (= lt!2190307 (lemmaMoveElementToOtherListKeepsConcatEq!1806 Nil!61481 (h!67929 s!2326) (t!374828 s!2326) s!2326))))

(assert (=> b!5379460 (= e!3337234 (findConcatSeparation!1627 lt!2190082 (regTwo!30716 r!7292) (++!13405 Nil!61481 (Cons!61481 (h!67929 s!2326) Nil!61481)) (t!374828 s!2326) s!2326))))

(declare-fun b!5379461 () Bool)

(assert (=> b!5379461 (= e!3337230 (not (isDefined!11916 lt!2190308)))))

(assert (= (and d!1721693 res!2283847) b!5379453))

(assert (= (and d!1721693 c!937579) b!5379457))

(assert (= (and d!1721693 (not c!937579)) b!5379454))

(assert (= (and b!5379454 c!937580) b!5379458))

(assert (= (and b!5379454 (not c!937580)) b!5379460))

(assert (= (and d!1721693 res!2283848) b!5379459))

(assert (= (and b!5379459 res!2283849) b!5379455))

(assert (= (and b!5379455 res!2283845) b!5379456))

(assert (= (and d!1721693 (not res!2283846)) b!5379461))

(declare-fun m!6405586 () Bool)

(assert (=> b!5379461 m!6405586))

(assert (=> b!5379453 m!6405470))

(declare-fun m!6405588 () Bool)

(assert (=> b!5379456 m!6405588))

(declare-fun m!6405590 () Bool)

(assert (=> b!5379456 m!6405590))

(assert (=> d!1721693 m!6405586))

(declare-fun m!6405592 () Bool)

(assert (=> d!1721693 m!6405592))

(assert (=> d!1721693 m!6405450))

(assert (=> b!5379460 m!6405480))

(assert (=> b!5379460 m!6405480))

(assert (=> b!5379460 m!6405482))

(assert (=> b!5379460 m!6405484))

(assert (=> b!5379460 m!6405480))

(declare-fun m!6405598 () Bool)

(assert (=> b!5379460 m!6405598))

(assert (=> b!5379455 m!6405588))

(declare-fun m!6405602 () Bool)

(assert (=> b!5379455 m!6405602))

(assert (=> b!5379459 m!6405588))

(declare-fun m!6405604 () Bool)

(assert (=> b!5379459 m!6405604))

(assert (=> b!5378853 d!1721693))

(declare-fun d!1721695 () Bool)

(assert (=> d!1721695 (= (Exists!2283 lambda!278162) (choose!40429 lambda!278162))))

(declare-fun bs!1245519 () Bool)

(assert (= bs!1245519 d!1721695))

(declare-fun m!6405610 () Bool)

(assert (=> bs!1245519 m!6405610))

(assert (=> b!5378853 d!1721695))

(declare-fun d!1721697 () Bool)

(assert (=> d!1721697 (= (get!21162 lt!2190072) (v!51241 lt!2190072))))

(assert (=> b!5378853 d!1721697))

(declare-fun d!1721699 () Bool)

(assert (=> d!1721699 (= (flatMap!829 lt!2190081 lambda!278160) (dynLambda!24272 lambda!278160 lt!2190086))))

(declare-fun lt!2190310 () Unit!153926)

(assert (=> d!1721699 (= lt!2190310 (choose!40430 lt!2190081 lt!2190086 lambda!278160))))

(assert (=> d!1721699 (= lt!2190081 (set.insert lt!2190086 (as set.empty (Set Context!8972))))))

(assert (=> d!1721699 (= (lemmaFlatMapOnSingletonSet!361 lt!2190081 lt!2190086 lambda!278160) lt!2190310)))

(declare-fun b_lambda!206063 () Bool)

(assert (=> (not b_lambda!206063) (not d!1721699)))

(declare-fun bs!1245520 () Bool)

(assert (= bs!1245520 d!1721699))

(assert (=> bs!1245520 m!6405030))

(declare-fun m!6405618 () Bool)

(assert (=> bs!1245520 m!6405618))

(declare-fun m!6405620 () Bool)

(assert (=> bs!1245520 m!6405620))

(assert (=> bs!1245520 m!6405026))

(assert (=> b!5378832 d!1721699))

(declare-fun d!1721703 () Bool)

(assert (=> d!1721703 (= (flatMap!829 lt!2190084 lambda!278160) (dynLambda!24272 lambda!278160 lt!2190091))))

(declare-fun lt!2190311 () Unit!153926)

(assert (=> d!1721703 (= lt!2190311 (choose!40430 lt!2190084 lt!2190091 lambda!278160))))

(assert (=> d!1721703 (= lt!2190084 (set.insert lt!2190091 (as set.empty (Set Context!8972))))))

(assert (=> d!1721703 (= (lemmaFlatMapOnSingletonSet!361 lt!2190084 lt!2190091 lambda!278160) lt!2190311)))

(declare-fun b_lambda!206065 () Bool)

(assert (=> (not b_lambda!206065) (not d!1721703)))

(declare-fun bs!1245521 () Bool)

(assert (= bs!1245521 d!1721703))

(assert (=> bs!1245521 m!6405024))

(declare-fun m!6405622 () Bool)

(assert (=> bs!1245521 m!6405622))

(declare-fun m!6405624 () Bool)

(assert (=> bs!1245521 m!6405624))

(assert (=> bs!1245521 m!6405034))

(assert (=> b!5378832 d!1721703))

(declare-fun d!1721705 () Bool)

(assert (=> d!1721705 (= (flatMap!829 lt!2190084 lambda!278160) (choose!40432 lt!2190084 lambda!278160))))

(declare-fun bs!1245522 () Bool)

(assert (= bs!1245522 d!1721705))

(declare-fun m!6405626 () Bool)

(assert (=> bs!1245522 m!6405626))

(assert (=> b!5378832 d!1721705))

(declare-fun d!1721707 () Bool)

(assert (=> d!1721707 (= (flatMap!829 lt!2190081 lambda!278160) (choose!40432 lt!2190081 lambda!278160))))

(declare-fun bs!1245523 () Bool)

(assert (= bs!1245523 d!1721707))

(declare-fun m!6405628 () Bool)

(assert (=> bs!1245523 m!6405628))

(assert (=> b!5378832 d!1721707))

(declare-fun call!385252 () (Set Context!8972))

(declare-fun b!5379462 () Bool)

(declare-fun e!3337235 () (Set Context!8972))

(assert (=> b!5379462 (= e!3337235 (set.union call!385252 (derivationStepZipperUp!474 (Context!8973 (t!374829 (exprs!4986 lt!2190086))) (h!67929 s!2326))))))

(declare-fun b!5379463 () Bool)

(declare-fun e!3337237 () (Set Context!8972))

(assert (=> b!5379463 (= e!3337237 (as set.empty (Set Context!8972)))))

(declare-fun b!5379464 () Bool)

(declare-fun e!3337236 () Bool)

(assert (=> b!5379464 (= e!3337236 (nullable!5271 (h!67930 (exprs!4986 lt!2190086))))))

(declare-fun d!1721709 () Bool)

(declare-fun c!937581 () Bool)

(assert (=> d!1721709 (= c!937581 e!3337236)))

(declare-fun res!2283850 () Bool)

(assert (=> d!1721709 (=> (not res!2283850) (not e!3337236))))

(assert (=> d!1721709 (= res!2283850 (is-Cons!61482 (exprs!4986 lt!2190086)))))

(assert (=> d!1721709 (= (derivationStepZipperUp!474 lt!2190086 (h!67929 s!2326)) e!3337235)))

(declare-fun b!5379465 () Bool)

(assert (=> b!5379465 (= e!3337237 call!385252)))

(declare-fun b!5379466 () Bool)

(assert (=> b!5379466 (= e!3337235 e!3337237)))

(declare-fun c!937582 () Bool)

(assert (=> b!5379466 (= c!937582 (is-Cons!61482 (exprs!4986 lt!2190086)))))

(declare-fun bm!385247 () Bool)

(assert (=> bm!385247 (= call!385252 (derivationStepZipperDown!550 (h!67930 (exprs!4986 lt!2190086)) (Context!8973 (t!374829 (exprs!4986 lt!2190086))) (h!67929 s!2326)))))

(assert (= (and d!1721709 res!2283850) b!5379464))

(assert (= (and d!1721709 c!937581) b!5379462))

(assert (= (and d!1721709 (not c!937581)) b!5379466))

(assert (= (and b!5379466 c!937582) b!5379465))

(assert (= (and b!5379466 (not c!937582)) b!5379463))

(assert (= (or b!5379462 b!5379465) bm!385247))

(declare-fun m!6405630 () Bool)

(assert (=> b!5379462 m!6405630))

(declare-fun m!6405632 () Bool)

(assert (=> b!5379464 m!6405632))

(declare-fun m!6405634 () Bool)

(assert (=> bm!385247 m!6405634))

(assert (=> b!5378832 d!1721709))

(declare-fun d!1721713 () Bool)

(declare-fun lt!2190314 () Regex!15102)

(assert (=> d!1721713 (validRegex!6838 lt!2190314)))

(assert (=> d!1721713 (= lt!2190314 (generalisedUnion!1031 (unfocusZipperList!544 (Cons!61483 lt!2190091 Nil!61483))))))

(assert (=> d!1721713 (= (unfocusZipper!844 (Cons!61483 lt!2190091 Nil!61483)) lt!2190314)))

(declare-fun bs!1245525 () Bool)

(assert (= bs!1245525 d!1721713))

(declare-fun m!6405638 () Bool)

(assert (=> bs!1245525 m!6405638))

(declare-fun m!6405640 () Bool)

(assert (=> bs!1245525 m!6405640))

(assert (=> bs!1245525 m!6405640))

(declare-fun m!6405642 () Bool)

(assert (=> bs!1245525 m!6405642))

(assert (=> b!5378832 d!1721713))

(declare-fun call!385253 () (Set Context!8972))

(declare-fun e!3337238 () (Set Context!8972))

(declare-fun b!5379467 () Bool)

(assert (=> b!5379467 (= e!3337238 (set.union call!385253 (derivationStepZipperUp!474 (Context!8973 (t!374829 (exprs!4986 lt!2190091))) (h!67929 s!2326))))))

(declare-fun b!5379468 () Bool)

(declare-fun e!3337240 () (Set Context!8972))

(assert (=> b!5379468 (= e!3337240 (as set.empty (Set Context!8972)))))

(declare-fun b!5379469 () Bool)

(declare-fun e!3337239 () Bool)

(assert (=> b!5379469 (= e!3337239 (nullable!5271 (h!67930 (exprs!4986 lt!2190091))))))

(declare-fun d!1721717 () Bool)

(declare-fun c!937583 () Bool)

(assert (=> d!1721717 (= c!937583 e!3337239)))

(declare-fun res!2283851 () Bool)

(assert (=> d!1721717 (=> (not res!2283851) (not e!3337239))))

(assert (=> d!1721717 (= res!2283851 (is-Cons!61482 (exprs!4986 lt!2190091)))))

(assert (=> d!1721717 (= (derivationStepZipperUp!474 lt!2190091 (h!67929 s!2326)) e!3337238)))

(declare-fun b!5379470 () Bool)

(assert (=> b!5379470 (= e!3337240 call!385253)))

(declare-fun b!5379471 () Bool)

(assert (=> b!5379471 (= e!3337238 e!3337240)))

(declare-fun c!937584 () Bool)

(assert (=> b!5379471 (= c!937584 (is-Cons!61482 (exprs!4986 lt!2190091)))))

(declare-fun bm!385248 () Bool)

(assert (=> bm!385248 (= call!385253 (derivationStepZipperDown!550 (h!67930 (exprs!4986 lt!2190091)) (Context!8973 (t!374829 (exprs!4986 lt!2190091))) (h!67929 s!2326)))))

(assert (= (and d!1721717 res!2283851) b!5379469))

(assert (= (and d!1721717 c!937583) b!5379467))

(assert (= (and d!1721717 (not c!937583)) b!5379471))

(assert (= (and b!5379471 c!937584) b!5379470))

(assert (= (and b!5379471 (not c!937584)) b!5379468))

(assert (= (or b!5379467 b!5379470) bm!385248))

(declare-fun m!6405644 () Bool)

(assert (=> b!5379467 m!6405644))

(declare-fun m!6405646 () Bool)

(assert (=> b!5379469 m!6405646))

(declare-fun m!6405648 () Bool)

(assert (=> bm!385248 m!6405648))

(assert (=> b!5378832 d!1721717))

(declare-fun d!1721719 () Bool)

(declare-fun c!937585 () Bool)

(assert (=> d!1721719 (= c!937585 (isEmpty!33471 (t!374828 s!2326)))))

(declare-fun e!3337241 () Bool)

(assert (=> d!1721719 (= (matchZipper!1346 lt!2190094 (t!374828 s!2326)) e!3337241)))

(declare-fun b!5379472 () Bool)

(assert (=> b!5379472 (= e!3337241 (nullableZipper!1411 lt!2190094))))

(declare-fun b!5379473 () Bool)

(assert (=> b!5379473 (= e!3337241 (matchZipper!1346 (derivationStepZipper!1341 lt!2190094 (head!11541 (t!374828 s!2326))) (tail!10638 (t!374828 s!2326))))))

(assert (= (and d!1721719 c!937585) b!5379472))

(assert (= (and d!1721719 (not c!937585)) b!5379473))

(assert (=> d!1721719 m!6405366))

(declare-fun m!6405650 () Bool)

(assert (=> b!5379472 m!6405650))

(assert (=> b!5379473 m!6405370))

(assert (=> b!5379473 m!6405370))

(declare-fun m!6405652 () Bool)

(assert (=> b!5379473 m!6405652))

(assert (=> b!5379473 m!6405374))

(assert (=> b!5379473 m!6405652))

(assert (=> b!5379473 m!6405374))

(declare-fun m!6405654 () Bool)

(assert (=> b!5379473 m!6405654))

(assert (=> b!5378820 d!1721719))

(declare-fun b!5379512 () Bool)

(declare-fun e!3337271 () Bool)

(declare-fun call!385265 () Bool)

(assert (=> b!5379512 (= e!3337271 call!385265)))

(declare-fun b!5379513 () Bool)

(declare-fun e!3337273 () Bool)

(declare-fun call!385264 () Bool)

(assert (=> b!5379513 (= e!3337273 call!385264)))

(declare-fun bm!385259 () Bool)

(declare-fun call!385266 () Bool)

(assert (=> bm!385259 (= call!385266 call!385264)))

(declare-fun b!5379514 () Bool)

(declare-fun e!3337274 () Bool)

(assert (=> b!5379514 (= e!3337274 e!3337271)))

(declare-fun res!2283867 () Bool)

(assert (=> b!5379514 (=> (not res!2283867) (not e!3337271))))

(assert (=> b!5379514 (= res!2283867 call!385266)))

(declare-fun b!5379515 () Bool)

(declare-fun res!2283869 () Bool)

(declare-fun e!3337269 () Bool)

(assert (=> b!5379515 (=> (not res!2283869) (not e!3337269))))

(assert (=> b!5379515 (= res!2283869 call!385266)))

(declare-fun e!3337272 () Bool)

(assert (=> b!5379515 (= e!3337272 e!3337269)))

(declare-fun c!937598 () Bool)

(declare-fun bm!385260 () Bool)

(declare-fun c!937599 () Bool)

(assert (=> bm!385260 (= call!385264 (validRegex!6838 (ite c!937599 (reg!15431 r!7292) (ite c!937598 (regOne!30717 r!7292) (regOne!30716 r!7292)))))))

(declare-fun b!5379516 () Bool)

(declare-fun res!2283866 () Bool)

(assert (=> b!5379516 (=> res!2283866 e!3337274)))

(assert (=> b!5379516 (= res!2283866 (not (is-Concat!23947 r!7292)))))

(assert (=> b!5379516 (= e!3337272 e!3337274)))

(declare-fun d!1721721 () Bool)

(declare-fun res!2283870 () Bool)

(declare-fun e!3337270 () Bool)

(assert (=> d!1721721 (=> res!2283870 e!3337270)))

(assert (=> d!1721721 (= res!2283870 (is-ElementMatch!15102 r!7292))))

(assert (=> d!1721721 (= (validRegex!6838 r!7292) e!3337270)))

(declare-fun b!5379517 () Bool)

(declare-fun e!3337268 () Bool)

(assert (=> b!5379517 (= e!3337268 e!3337272)))

(assert (=> b!5379517 (= c!937598 (is-Union!15102 r!7292))))

(declare-fun bm!385261 () Bool)

(assert (=> bm!385261 (= call!385265 (validRegex!6838 (ite c!937598 (regTwo!30717 r!7292) (regTwo!30716 r!7292))))))

(declare-fun b!5379523 () Bool)

(assert (=> b!5379523 (= e!3337270 e!3337268)))

(assert (=> b!5379523 (= c!937599 (is-Star!15102 r!7292))))

(declare-fun b!5379524 () Bool)

(assert (=> b!5379524 (= e!3337269 call!385265)))

(declare-fun b!5379525 () Bool)

(assert (=> b!5379525 (= e!3337268 e!3337273)))

(declare-fun res!2283868 () Bool)

(assert (=> b!5379525 (= res!2283868 (not (nullable!5271 (reg!15431 r!7292))))))

(assert (=> b!5379525 (=> (not res!2283868) (not e!3337273))))

(assert (= (and d!1721721 (not res!2283870)) b!5379523))

(assert (= (and b!5379523 c!937599) b!5379525))

(assert (= (and b!5379523 (not c!937599)) b!5379517))

(assert (= (and b!5379525 res!2283868) b!5379513))

(assert (= (and b!5379517 c!937598) b!5379515))

(assert (= (and b!5379517 (not c!937598)) b!5379516))

(assert (= (and b!5379515 res!2283869) b!5379524))

(assert (= (and b!5379516 (not res!2283866)) b!5379514))

(assert (= (and b!5379514 res!2283867) b!5379512))

(assert (= (or b!5379524 b!5379512) bm!385261))

(assert (= (or b!5379515 b!5379514) bm!385259))

(assert (= (or b!5379513 bm!385259) bm!385260))

(declare-fun m!6405672 () Bool)

(assert (=> bm!385260 m!6405672))

(declare-fun m!6405674 () Bool)

(assert (=> bm!385261 m!6405674))

(declare-fun m!6405676 () Bool)

(assert (=> b!5379525 m!6405676))

(assert (=> start!565732 d!1721721))

(declare-fun b!5379537 () Bool)

(declare-fun e!3337287 () Bool)

(declare-fun call!385275 () Bool)

(assert (=> b!5379537 (= e!3337287 call!385275)))

(declare-fun b!5379538 () Bool)

(declare-fun e!3337289 () Bool)

(declare-fun call!385274 () Bool)

(assert (=> b!5379538 (= e!3337289 call!385274)))

(declare-fun bm!385269 () Bool)

(declare-fun call!385276 () Bool)

(assert (=> bm!385269 (= call!385276 call!385274)))

(declare-fun b!5379539 () Bool)

(declare-fun e!3337290 () Bool)

(assert (=> b!5379539 (= e!3337290 e!3337287)))

(declare-fun res!2283874 () Bool)

(assert (=> b!5379539 (=> (not res!2283874) (not e!3337287))))

(assert (=> b!5379539 (= res!2283874 call!385276)))

(declare-fun b!5379540 () Bool)

(declare-fun res!2283876 () Bool)

(declare-fun e!3337285 () Bool)

(assert (=> b!5379540 (=> (not res!2283876) (not e!3337285))))

(assert (=> b!5379540 (= res!2283876 call!385276)))

(declare-fun e!3337288 () Bool)

(assert (=> b!5379540 (= e!3337288 e!3337285)))

(declare-fun c!937607 () Bool)

(declare-fun bm!385270 () Bool)

(declare-fun c!937608 () Bool)

(assert (=> bm!385270 (= call!385274 (validRegex!6838 (ite c!937608 (reg!15431 (reg!15431 (regOne!30716 r!7292))) (ite c!937607 (regOne!30717 (reg!15431 (regOne!30716 r!7292))) (regOne!30716 (reg!15431 (regOne!30716 r!7292)))))))))

(declare-fun b!5379541 () Bool)

(declare-fun res!2283873 () Bool)

(assert (=> b!5379541 (=> res!2283873 e!3337290)))

(assert (=> b!5379541 (= res!2283873 (not (is-Concat!23947 (reg!15431 (regOne!30716 r!7292)))))))

(assert (=> b!5379541 (= e!3337288 e!3337290)))

(declare-fun d!1721729 () Bool)

(declare-fun res!2283877 () Bool)

(declare-fun e!3337286 () Bool)

(assert (=> d!1721729 (=> res!2283877 e!3337286)))

(assert (=> d!1721729 (= res!2283877 (is-ElementMatch!15102 (reg!15431 (regOne!30716 r!7292))))))

(assert (=> d!1721729 (= (validRegex!6838 (reg!15431 (regOne!30716 r!7292))) e!3337286)))

(declare-fun b!5379542 () Bool)

(declare-fun e!3337284 () Bool)

(assert (=> b!5379542 (= e!3337284 e!3337288)))

(assert (=> b!5379542 (= c!937607 (is-Union!15102 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun bm!385271 () Bool)

(assert (=> bm!385271 (= call!385275 (validRegex!6838 (ite c!937607 (regTwo!30717 (reg!15431 (regOne!30716 r!7292))) (regTwo!30716 (reg!15431 (regOne!30716 r!7292))))))))

(declare-fun b!5379543 () Bool)

(assert (=> b!5379543 (= e!3337286 e!3337284)))

(assert (=> b!5379543 (= c!937608 (is-Star!15102 (reg!15431 (regOne!30716 r!7292))))))

(declare-fun b!5379544 () Bool)

(assert (=> b!5379544 (= e!3337285 call!385275)))

(declare-fun b!5379545 () Bool)

(assert (=> b!5379545 (= e!3337284 e!3337289)))

(declare-fun res!2283875 () Bool)

(assert (=> b!5379545 (= res!2283875 (not (nullable!5271 (reg!15431 (reg!15431 (regOne!30716 r!7292))))))))

(assert (=> b!5379545 (=> (not res!2283875) (not e!3337289))))

(assert (= (and d!1721729 (not res!2283877)) b!5379543))

(assert (= (and b!5379543 c!937608) b!5379545))

(assert (= (and b!5379543 (not c!937608)) b!5379542))

(assert (= (and b!5379545 res!2283875) b!5379538))

(assert (= (and b!5379542 c!937607) b!5379540))

(assert (= (and b!5379542 (not c!937607)) b!5379541))

(assert (= (and b!5379540 res!2283876) b!5379544))

(assert (= (and b!5379541 (not res!2283873)) b!5379539))

(assert (= (and b!5379539 res!2283874) b!5379537))

(assert (= (or b!5379544 b!5379537) bm!385271))

(assert (= (or b!5379540 b!5379539) bm!385269))

(assert (= (or b!5379538 bm!385269) bm!385270))

(declare-fun m!6405678 () Bool)

(assert (=> bm!385270 m!6405678))

(declare-fun m!6405682 () Bool)

(assert (=> bm!385271 m!6405682))

(declare-fun m!6405686 () Bool)

(assert (=> b!5379545 m!6405686))

(assert (=> b!5378860 d!1721729))

(declare-fun d!1721731 () Bool)

(declare-fun lt!2190315 () Regex!15102)

(assert (=> d!1721731 (validRegex!6838 lt!2190315)))

(assert (=> d!1721731 (= lt!2190315 (generalisedUnion!1031 (unfocusZipperList!544 (Cons!61483 lt!2190105 Nil!61483))))))

(assert (=> d!1721731 (= (unfocusZipper!844 (Cons!61483 lt!2190105 Nil!61483)) lt!2190315)))

(declare-fun bs!1245526 () Bool)

(assert (= bs!1245526 d!1721731))

(declare-fun m!6405692 () Bool)

(assert (=> bs!1245526 m!6405692))

(declare-fun m!6405696 () Bool)

(assert (=> bs!1245526 m!6405696))

(assert (=> bs!1245526 m!6405696))

(declare-fun m!6405698 () Bool)

(assert (=> bs!1245526 m!6405698))

(assert (=> b!5378821 d!1721731))

(declare-fun b!5379546 () Bool)

(declare-fun e!3337292 () Bool)

(declare-fun lt!2190316 () Bool)

(assert (=> b!5379546 (= e!3337292 (not lt!2190316))))

(declare-fun b!5379547 () Bool)

(declare-fun e!3337294 () Bool)

(assert (=> b!5379547 (= e!3337294 e!3337292)))

(declare-fun c!937610 () Bool)

(assert (=> b!5379547 (= c!937610 (is-EmptyLang!15102 (regTwo!30716 r!7292)))))

(declare-fun b!5379548 () Bool)

(declare-fun call!385277 () Bool)

(assert (=> b!5379548 (= e!3337294 (= lt!2190316 call!385277))))

(declare-fun b!5379549 () Bool)

(declare-fun res!2283880 () Bool)

(declare-fun e!3337296 () Bool)

(assert (=> b!5379549 (=> (not res!2283880) (not e!3337296))))

(assert (=> b!5379549 (= res!2283880 (not call!385277))))

(declare-fun d!1721735 () Bool)

(assert (=> d!1721735 e!3337294))

(declare-fun c!937609 () Bool)

(assert (=> d!1721735 (= c!937609 (is-EmptyExpr!15102 (regTwo!30716 r!7292)))))

(declare-fun e!3337297 () Bool)

(assert (=> d!1721735 (= lt!2190316 e!3337297)))

(declare-fun c!937611 () Bool)

(assert (=> d!1721735 (= c!937611 (isEmpty!33471 (_2!35604 lt!2190065)))))

(assert (=> d!1721735 (validRegex!6838 (regTwo!30716 r!7292))))

(assert (=> d!1721735 (= (matchR!7287 (regTwo!30716 r!7292) (_2!35604 lt!2190065)) lt!2190316)))

(declare-fun b!5379550 () Bool)

(declare-fun res!2283882 () Bool)

(declare-fun e!3337291 () Bool)

(assert (=> b!5379550 (=> res!2283882 e!3337291)))

(assert (=> b!5379550 (= res!2283882 (not (isEmpty!33471 (tail!10638 (_2!35604 lt!2190065)))))))

(declare-fun bm!385272 () Bool)

(assert (=> bm!385272 (= call!385277 (isEmpty!33471 (_2!35604 lt!2190065)))))

(declare-fun b!5379551 () Bool)

(declare-fun res!2283884 () Bool)

(assert (=> b!5379551 (=> (not res!2283884) (not e!3337296))))

(assert (=> b!5379551 (= res!2283884 (isEmpty!33471 (tail!10638 (_2!35604 lt!2190065))))))

(declare-fun b!5379552 () Bool)

(assert (=> b!5379552 (= e!3337297 (matchR!7287 (derivativeStep!4232 (regTwo!30716 r!7292) (head!11541 (_2!35604 lt!2190065))) (tail!10638 (_2!35604 lt!2190065))))))

(declare-fun b!5379553 () Bool)

(declare-fun e!3337295 () Bool)

(assert (=> b!5379553 (= e!3337295 e!3337291)))

(declare-fun res!2283879 () Bool)

(assert (=> b!5379553 (=> res!2283879 e!3337291)))

(assert (=> b!5379553 (= res!2283879 call!385277)))

(declare-fun b!5379554 () Bool)

(assert (=> b!5379554 (= e!3337296 (= (head!11541 (_2!35604 lt!2190065)) (c!937440 (regTwo!30716 r!7292))))))

(declare-fun b!5379555 () Bool)

(declare-fun res!2283878 () Bool)

(declare-fun e!3337293 () Bool)

(assert (=> b!5379555 (=> res!2283878 e!3337293)))

(assert (=> b!5379555 (= res!2283878 (not (is-ElementMatch!15102 (regTwo!30716 r!7292))))))

(assert (=> b!5379555 (= e!3337292 e!3337293)))

(declare-fun b!5379556 () Bool)

(assert (=> b!5379556 (= e!3337297 (nullable!5271 (regTwo!30716 r!7292)))))

(declare-fun b!5379557 () Bool)

(assert (=> b!5379557 (= e!3337291 (not (= (head!11541 (_2!35604 lt!2190065)) (c!937440 (regTwo!30716 r!7292)))))))

(declare-fun b!5379558 () Bool)

(declare-fun res!2283883 () Bool)

(assert (=> b!5379558 (=> res!2283883 e!3337293)))

(assert (=> b!5379558 (= res!2283883 e!3337296)))

(declare-fun res!2283885 () Bool)

(assert (=> b!5379558 (=> (not res!2283885) (not e!3337296))))

(assert (=> b!5379558 (= res!2283885 lt!2190316)))

(declare-fun b!5379559 () Bool)

(assert (=> b!5379559 (= e!3337293 e!3337295)))

(declare-fun res!2283881 () Bool)

(assert (=> b!5379559 (=> (not res!2283881) (not e!3337295))))

(assert (=> b!5379559 (= res!2283881 (not lt!2190316))))

(assert (= (and d!1721735 c!937611) b!5379556))

(assert (= (and d!1721735 (not c!937611)) b!5379552))

(assert (= (and d!1721735 c!937609) b!5379548))

(assert (= (and d!1721735 (not c!937609)) b!5379547))

(assert (= (and b!5379547 c!937610) b!5379546))

(assert (= (and b!5379547 (not c!937610)) b!5379555))

(assert (= (and b!5379555 (not res!2283878)) b!5379558))

(assert (= (and b!5379558 res!2283885) b!5379549))

(assert (= (and b!5379549 res!2283880) b!5379551))

(assert (= (and b!5379551 res!2283884) b!5379554))

(assert (= (and b!5379558 (not res!2283883)) b!5379559))

(assert (= (and b!5379559 res!2283881) b!5379553))

(assert (= (and b!5379553 (not res!2283879)) b!5379550))

(assert (= (and b!5379550 (not res!2283882)) b!5379557))

(assert (= (or b!5379548 b!5379553 b!5379549) bm!385272))

(declare-fun m!6405702 () Bool)

(assert (=> b!5379550 m!6405702))

(assert (=> b!5379550 m!6405702))

(declare-fun m!6405704 () Bool)

(assert (=> b!5379550 m!6405704))

(declare-fun m!6405706 () Bool)

(assert (=> b!5379552 m!6405706))

(assert (=> b!5379552 m!6405706))

(declare-fun m!6405708 () Bool)

(assert (=> b!5379552 m!6405708))

(assert (=> b!5379552 m!6405702))

(assert (=> b!5379552 m!6405708))

(assert (=> b!5379552 m!6405702))

(declare-fun m!6405710 () Bool)

(assert (=> b!5379552 m!6405710))

(declare-fun m!6405712 () Bool)

(assert (=> b!5379556 m!6405712))

(declare-fun m!6405714 () Bool)

(assert (=> d!1721735 m!6405714))

(declare-fun m!6405716 () Bool)

(assert (=> d!1721735 m!6405716))

(assert (=> b!5379554 m!6405706))

(assert (=> bm!385272 m!6405714))

(assert (=> b!5379557 m!6405706))

(assert (=> b!5379551 m!6405702))

(assert (=> b!5379551 m!6405702))

(assert (=> b!5379551 m!6405704))

(assert (=> b!5378857 d!1721735))

(declare-fun e!3337303 () Bool)

(declare-fun d!1721739 () Bool)

(assert (=> d!1721739 (= (matchZipper!1346 (set.union lt!2190099 lt!2190094) (t!374828 s!2326)) e!3337303)))

(declare-fun res!2283889 () Bool)

(assert (=> d!1721739 (=> res!2283889 e!3337303)))

(assert (=> d!1721739 (= res!2283889 (matchZipper!1346 lt!2190099 (t!374828 s!2326)))))

(declare-fun lt!2190323 () Unit!153926)

(declare-fun choose!40435 ((Set Context!8972) (Set Context!8972) List!61605) Unit!153926)

(assert (=> d!1721739 (= lt!2190323 (choose!40435 lt!2190099 lt!2190094 (t!374828 s!2326)))))

(assert (=> d!1721739 (= (lemmaZipperConcatMatchesSameAsBothZippers!339 lt!2190099 lt!2190094 (t!374828 s!2326)) lt!2190323)))

(declare-fun b!5379567 () Bool)

(assert (=> b!5379567 (= e!3337303 (matchZipper!1346 lt!2190094 (t!374828 s!2326)))))

(assert (= (and d!1721739 (not res!2283889)) b!5379567))

(assert (=> d!1721739 m!6404950))

(assert (=> d!1721739 m!6404948))

(declare-fun m!6405736 () Bool)

(assert (=> d!1721739 m!6405736))

(assert (=> b!5379567 m!6405064))

(assert (=> b!5378837 d!1721739))

(declare-fun d!1721749 () Bool)

(declare-fun c!937616 () Bool)

(assert (=> d!1721749 (= c!937616 (isEmpty!33471 (t!374828 s!2326)))))

(declare-fun e!3337304 () Bool)

(assert (=> d!1721749 (= (matchZipper!1346 lt!2190099 (t!374828 s!2326)) e!3337304)))

(declare-fun b!5379568 () Bool)

(assert (=> b!5379568 (= e!3337304 (nullableZipper!1411 lt!2190099))))

(declare-fun b!5379569 () Bool)

(assert (=> b!5379569 (= e!3337304 (matchZipper!1346 (derivationStepZipper!1341 lt!2190099 (head!11541 (t!374828 s!2326))) (tail!10638 (t!374828 s!2326))))))

(assert (= (and d!1721749 c!937616) b!5379568))

(assert (= (and d!1721749 (not c!937616)) b!5379569))

(assert (=> d!1721749 m!6405366))

(declare-fun m!6405738 () Bool)

(assert (=> b!5379568 m!6405738))

(assert (=> b!5379569 m!6405370))

(assert (=> b!5379569 m!6405370))

(declare-fun m!6405740 () Bool)

(assert (=> b!5379569 m!6405740))

(assert (=> b!5379569 m!6405374))

(assert (=> b!5379569 m!6405740))

(assert (=> b!5379569 m!6405374))

(declare-fun m!6405742 () Bool)

(assert (=> b!5379569 m!6405742))

(assert (=> b!5378837 d!1721749))

(declare-fun d!1721751 () Bool)

(declare-fun c!937617 () Bool)

(assert (=> d!1721751 (= c!937617 (isEmpty!33471 (t!374828 s!2326)))))

(declare-fun e!3337305 () Bool)

(assert (=> d!1721751 (= (matchZipper!1346 (set.union lt!2190099 lt!2190094) (t!374828 s!2326)) e!3337305)))

(declare-fun b!5379572 () Bool)

(assert (=> b!5379572 (= e!3337305 (nullableZipper!1411 (set.union lt!2190099 lt!2190094)))))

(declare-fun b!5379573 () Bool)

(assert (=> b!5379573 (= e!3337305 (matchZipper!1346 (derivationStepZipper!1341 (set.union lt!2190099 lt!2190094) (head!11541 (t!374828 s!2326))) (tail!10638 (t!374828 s!2326))))))

(assert (= (and d!1721751 c!937617) b!5379572))

(assert (= (and d!1721751 (not c!937617)) b!5379573))

(assert (=> d!1721751 m!6405366))

(declare-fun m!6405744 () Bool)

(assert (=> b!5379572 m!6405744))

(assert (=> b!5379573 m!6405370))

(assert (=> b!5379573 m!6405370))

(declare-fun m!6405748 () Bool)

(assert (=> b!5379573 m!6405748))

(assert (=> b!5379573 m!6405374))

(assert (=> b!5379573 m!6405748))

(assert (=> b!5379573 m!6405374))

(declare-fun m!6405750 () Bool)

(assert (=> b!5379573 m!6405750))

(assert (=> b!5378837 d!1721751))

(declare-fun d!1721755 () Bool)

(assert (=> d!1721755 (= (flatMap!829 lt!2190093 lambda!278160) (choose!40432 lt!2190093 lambda!278160))))

(declare-fun bs!1245533 () Bool)

(assert (= bs!1245533 d!1721755))

(declare-fun m!6405752 () Bool)

(assert (=> bs!1245533 m!6405752))

(assert (=> b!5378825 d!1721755))

(declare-fun call!385279 () (Set Context!8972))

(declare-fun e!3337306 () (Set Context!8972))

(declare-fun b!5379574 () Bool)

(assert (=> b!5379574 (= e!3337306 (set.union call!385279 (derivationStepZipperUp!474 (Context!8973 (t!374829 (exprs!4986 lt!2190105))) (h!67929 s!2326))))))

(declare-fun b!5379575 () Bool)

(declare-fun e!3337308 () (Set Context!8972))

(assert (=> b!5379575 (= e!3337308 (as set.empty (Set Context!8972)))))

(declare-fun b!5379576 () Bool)

(declare-fun e!3337307 () Bool)

(assert (=> b!5379576 (= e!3337307 (nullable!5271 (h!67930 (exprs!4986 lt!2190105))))))

(declare-fun d!1721757 () Bool)

(declare-fun c!937618 () Bool)

(assert (=> d!1721757 (= c!937618 e!3337307)))

(declare-fun res!2283890 () Bool)

(assert (=> d!1721757 (=> (not res!2283890) (not e!3337307))))

(assert (=> d!1721757 (= res!2283890 (is-Cons!61482 (exprs!4986 lt!2190105)))))

(assert (=> d!1721757 (= (derivationStepZipperUp!474 lt!2190105 (h!67929 s!2326)) e!3337306)))

(declare-fun b!5379577 () Bool)

(assert (=> b!5379577 (= e!3337308 call!385279)))

(declare-fun b!5379578 () Bool)

(assert (=> b!5379578 (= e!3337306 e!3337308)))

(declare-fun c!937619 () Bool)

(assert (=> b!5379578 (= c!937619 (is-Cons!61482 (exprs!4986 lt!2190105)))))

(declare-fun bm!385274 () Bool)

(assert (=> bm!385274 (= call!385279 (derivationStepZipperDown!550 (h!67930 (exprs!4986 lt!2190105)) (Context!8973 (t!374829 (exprs!4986 lt!2190105))) (h!67929 s!2326)))))

(assert (= (and d!1721757 res!2283890) b!5379576))

(assert (= (and d!1721757 c!937618) b!5379574))

(assert (= (and d!1721757 (not c!937618)) b!5379578))

(assert (= (and b!5379578 c!937619) b!5379577))

(assert (= (and b!5379578 (not c!937619)) b!5379575))

(assert (= (or b!5379574 b!5379577) bm!385274))

(declare-fun m!6405754 () Bool)

(assert (=> b!5379574 m!6405754))

(declare-fun m!6405756 () Bool)

(assert (=> b!5379576 m!6405756))

(declare-fun m!6405758 () Bool)

(assert (=> bm!385274 m!6405758))

(assert (=> b!5378825 d!1721757))

(declare-fun d!1721759 () Bool)

(assert (=> d!1721759 (= (flatMap!829 lt!2190093 lambda!278160) (dynLambda!24272 lambda!278160 lt!2190105))))

(declare-fun lt!2190324 () Unit!153926)

(assert (=> d!1721759 (= lt!2190324 (choose!40430 lt!2190093 lt!2190105 lambda!278160))))

(assert (=> d!1721759 (= lt!2190093 (set.insert lt!2190105 (as set.empty (Set Context!8972))))))

(assert (=> d!1721759 (= (lemmaFlatMapOnSingletonSet!361 lt!2190093 lt!2190105 lambda!278160) lt!2190324)))

(declare-fun b_lambda!206071 () Bool)

(assert (=> (not b_lambda!206071) (not d!1721759)))

(declare-fun bs!1245534 () Bool)

(assert (= bs!1245534 d!1721759))

(assert (=> bs!1245534 m!6405020))

(declare-fun m!6405760 () Bool)

(assert (=> bs!1245534 m!6405760))

(declare-fun m!6405762 () Bool)

(assert (=> bs!1245534 m!6405762))

(assert (=> bs!1245534 m!6405012))

(assert (=> b!5378825 d!1721759))

(declare-fun bs!1245535 () Bool)

(declare-fun d!1721761 () Bool)

(assert (= bs!1245535 (and d!1721761 b!5378854)))

(declare-fun lambda!278254 () Int)

(assert (=> bs!1245535 (= lambda!278254 lambda!278160)))

(assert (=> d!1721761 true))

(assert (=> d!1721761 (= (derivationStepZipper!1341 lt!2190093 (h!67929 s!2326)) (flatMap!829 lt!2190093 lambda!278254))))

(declare-fun bs!1245536 () Bool)

(assert (= bs!1245536 d!1721761))

(declare-fun m!6405764 () Bool)

(assert (=> bs!1245536 m!6405764))

(assert (=> b!5378825 d!1721761))

(declare-fun d!1721763 () Bool)

(declare-fun e!3337314 () Bool)

(assert (=> d!1721763 e!3337314))

(declare-fun res!2283893 () Bool)

(assert (=> d!1721763 (=> (not res!2283893) (not e!3337314))))

(declare-fun lt!2190327 () List!61607)

(declare-fun noDuplicate!1366 (List!61607) Bool)

(assert (=> d!1721763 (= res!2283893 (noDuplicate!1366 lt!2190327))))

(declare-fun choose!40436 ((Set Context!8972)) List!61607)

(assert (=> d!1721763 (= lt!2190327 (choose!40436 z!1189))))

(assert (=> d!1721763 (= (toList!8886 z!1189) lt!2190327)))

(declare-fun b!5379589 () Bool)

(declare-fun content!10999 (List!61607) (Set Context!8972))

(assert (=> b!5379589 (= e!3337314 (= (content!10999 lt!2190327) z!1189))))

(assert (= (and d!1721763 res!2283893) b!5379589))

(declare-fun m!6405778 () Bool)

(assert (=> d!1721763 m!6405778))

(declare-fun m!6405780 () Bool)

(assert (=> d!1721763 m!6405780))

(declare-fun m!6405782 () Bool)

(assert (=> b!5379589 m!6405782))

(assert (=> b!5378844 d!1721763))

(declare-fun d!1721769 () Bool)

(declare-fun lt!2190328 () Regex!15102)

(assert (=> d!1721769 (validRegex!6838 lt!2190328)))

(assert (=> d!1721769 (= lt!2190328 (generalisedUnion!1031 (unfocusZipperList!544 (Cons!61483 lt!2190086 Nil!61483))))))

(assert (=> d!1721769 (= (unfocusZipper!844 (Cons!61483 lt!2190086 Nil!61483)) lt!2190328)))

(declare-fun bs!1245537 () Bool)

(assert (= bs!1245537 d!1721769))

(declare-fun m!6405784 () Bool)

(assert (=> bs!1245537 m!6405784))

(declare-fun m!6405786 () Bool)

(assert (=> bs!1245537 m!6405786))

(assert (=> bs!1245537 m!6405786))

(declare-fun m!6405788 () Bool)

(assert (=> bs!1245537 m!6405788))

(assert (=> b!5378846 d!1721769))

(declare-fun b!5379590 () Bool)

(declare-fun e!3337316 () Bool)

(declare-fun lt!2190329 () Bool)

(assert (=> b!5379590 (= e!3337316 (not lt!2190329))))

(declare-fun b!5379591 () Bool)

(declare-fun e!3337318 () Bool)

(assert (=> b!5379591 (= e!3337318 e!3337316)))

(declare-fun c!937626 () Bool)

(assert (=> b!5379591 (= c!937626 (is-EmptyLang!15102 lt!2190082))))

(declare-fun b!5379592 () Bool)

(declare-fun call!385280 () Bool)

(assert (=> b!5379592 (= e!3337318 (= lt!2190329 call!385280))))

(declare-fun b!5379593 () Bool)

(declare-fun res!2283896 () Bool)

(declare-fun e!3337320 () Bool)

(assert (=> b!5379593 (=> (not res!2283896) (not e!3337320))))

(assert (=> b!5379593 (= res!2283896 (not call!385280))))

(declare-fun d!1721771 () Bool)

(assert (=> d!1721771 e!3337318))

(declare-fun c!937625 () Bool)

(assert (=> d!1721771 (= c!937625 (is-EmptyExpr!15102 lt!2190082))))

(declare-fun e!3337321 () Bool)

(assert (=> d!1721771 (= lt!2190329 e!3337321)))

(declare-fun c!937627 () Bool)

(assert (=> d!1721771 (= c!937627 (isEmpty!33471 (_1!35604 lt!2190065)))))

(assert (=> d!1721771 (validRegex!6838 lt!2190082)))

(assert (=> d!1721771 (= (matchR!7287 lt!2190082 (_1!35604 lt!2190065)) lt!2190329)))

(declare-fun b!5379594 () Bool)

(declare-fun res!2283898 () Bool)

(declare-fun e!3337315 () Bool)

(assert (=> b!5379594 (=> res!2283898 e!3337315)))

(assert (=> b!5379594 (= res!2283898 (not (isEmpty!33471 (tail!10638 (_1!35604 lt!2190065)))))))

(declare-fun bm!385275 () Bool)

(assert (=> bm!385275 (= call!385280 (isEmpty!33471 (_1!35604 lt!2190065)))))

(declare-fun b!5379595 () Bool)

(declare-fun res!2283900 () Bool)

(assert (=> b!5379595 (=> (not res!2283900) (not e!3337320))))

(assert (=> b!5379595 (= res!2283900 (isEmpty!33471 (tail!10638 (_1!35604 lt!2190065))))))

(declare-fun b!5379596 () Bool)

(assert (=> b!5379596 (= e!3337321 (matchR!7287 (derivativeStep!4232 lt!2190082 (head!11541 (_1!35604 lt!2190065))) (tail!10638 (_1!35604 lt!2190065))))))

(declare-fun b!5379597 () Bool)

(declare-fun e!3337319 () Bool)

(assert (=> b!5379597 (= e!3337319 e!3337315)))

(declare-fun res!2283895 () Bool)

(assert (=> b!5379597 (=> res!2283895 e!3337315)))

(assert (=> b!5379597 (= res!2283895 call!385280)))

(declare-fun b!5379598 () Bool)

(assert (=> b!5379598 (= e!3337320 (= (head!11541 (_1!35604 lt!2190065)) (c!937440 lt!2190082)))))

(declare-fun b!5379599 () Bool)

(declare-fun res!2283894 () Bool)

(declare-fun e!3337317 () Bool)

(assert (=> b!5379599 (=> res!2283894 e!3337317)))

(assert (=> b!5379599 (= res!2283894 (not (is-ElementMatch!15102 lt!2190082)))))

(assert (=> b!5379599 (= e!3337316 e!3337317)))

(declare-fun b!5379600 () Bool)

(assert (=> b!5379600 (= e!3337321 (nullable!5271 lt!2190082))))

(declare-fun b!5379601 () Bool)

(assert (=> b!5379601 (= e!3337315 (not (= (head!11541 (_1!35604 lt!2190065)) (c!937440 lt!2190082))))))

(declare-fun b!5379602 () Bool)

(declare-fun res!2283899 () Bool)

(assert (=> b!5379602 (=> res!2283899 e!3337317)))

(assert (=> b!5379602 (= res!2283899 e!3337320)))

(declare-fun res!2283901 () Bool)

(assert (=> b!5379602 (=> (not res!2283901) (not e!3337320))))

(assert (=> b!5379602 (= res!2283901 lt!2190329)))

(declare-fun b!5379603 () Bool)

(assert (=> b!5379603 (= e!3337317 e!3337319)))

(declare-fun res!2283897 () Bool)

(assert (=> b!5379603 (=> (not res!2283897) (not e!3337319))))

(assert (=> b!5379603 (= res!2283897 (not lt!2190329))))

(assert (= (and d!1721771 c!937627) b!5379600))

(assert (= (and d!1721771 (not c!937627)) b!5379596))

(assert (= (and d!1721771 c!937625) b!5379592))

(assert (= (and d!1721771 (not c!937625)) b!5379591))

(assert (= (and b!5379591 c!937626) b!5379590))

(assert (= (and b!5379591 (not c!937626)) b!5379599))

(assert (= (and b!5379599 (not res!2283894)) b!5379602))

(assert (= (and b!5379602 res!2283901) b!5379593))

(assert (= (and b!5379593 res!2283896) b!5379595))

(assert (= (and b!5379595 res!2283900) b!5379598))

(assert (= (and b!5379602 (not res!2283899)) b!5379603))

(assert (= (and b!5379603 res!2283897) b!5379597))

(assert (= (and b!5379597 (not res!2283895)) b!5379594))

(assert (= (and b!5379594 (not res!2283898)) b!5379601))

(assert (= (or b!5379592 b!5379597 b!5379593) bm!385275))

(declare-fun m!6405790 () Bool)

(assert (=> b!5379594 m!6405790))

(assert (=> b!5379594 m!6405790))

(declare-fun m!6405792 () Bool)

(assert (=> b!5379594 m!6405792))

(declare-fun m!6405794 () Bool)

(assert (=> b!5379596 m!6405794))

(assert (=> b!5379596 m!6405794))

(declare-fun m!6405796 () Bool)

(assert (=> b!5379596 m!6405796))

(assert (=> b!5379596 m!6405790))

(assert (=> b!5379596 m!6405796))

(assert (=> b!5379596 m!6405790))

(declare-fun m!6405798 () Bool)

(assert (=> b!5379596 m!6405798))

(declare-fun m!6405800 () Bool)

(assert (=> b!5379600 m!6405800))

(assert (=> d!1721771 m!6405084))

(assert (=> d!1721771 m!6405450))

(assert (=> b!5379598 m!6405794))

(assert (=> bm!385275 m!6405084))

(assert (=> b!5379601 m!6405794))

(assert (=> b!5379595 m!6405790))

(assert (=> b!5379595 m!6405790))

(assert (=> b!5379595 m!6405792))

(assert (=> b!5378826 d!1721771))

(declare-fun bs!1245538 () Bool)

(declare-fun b!5379604 () Bool)

(assert (= bs!1245538 (and b!5379604 d!1721685)))

(declare-fun lambda!278255 () Int)

(assert (=> bs!1245538 (not (= lambda!278255 lambda!278248))))

(declare-fun bs!1245539 () Bool)

(assert (= bs!1245539 (and b!5379604 b!5378853)))

(assert (=> bs!1245539 (not (= lambda!278255 lambda!278162))))

(declare-fun bs!1245540 () Bool)

(assert (= bs!1245540 (and b!5379604 b!5378835)))

(assert (=> bs!1245540 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (reg!15431 r!7292) (reg!15431 (regOne!30716 r!7292))) (= r!7292 lt!2190082)) (= lambda!278255 lambda!278164))))

(declare-fun bs!1245541 () Bool)

(assert (= bs!1245541 (and b!5379604 d!1721655)))

(assert (=> bs!1245541 (not (= lambda!278255 lambda!278240))))

(declare-fun bs!1245542 () Bool)

(assert (= bs!1245542 (and b!5379604 d!1721623)))

(assert (=> bs!1245542 (not (= lambda!278255 lambda!278230))))

(declare-fun bs!1245543 () Bool)

(assert (= bs!1245543 (and b!5379604 b!5379278)))

(assert (=> bs!1245543 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (reg!15431 r!7292) (reg!15431 lt!2190082)) (= r!7292 lt!2190082)) (= lambda!278255 lambda!278238))))

(assert (=> bs!1245540 (not (= lambda!278255 lambda!278165))))

(declare-fun bs!1245544 () Bool)

(assert (= bs!1245544 (and b!5379604 d!1721683)))

(assert (=> bs!1245544 (not (= lambda!278255 lambda!278246))))

(declare-fun bs!1245545 () Bool)

(assert (= bs!1245545 (and b!5379604 b!5378852)))

(assert (=> bs!1245545 (not (= lambda!278255 lambda!278159))))

(assert (=> bs!1245539 (not (= lambda!278255 lambda!278161))))

(declare-fun bs!1245546 () Bool)

(assert (= bs!1245546 (and b!5379604 b!5379161)))

(assert (=> bs!1245546 (not (= lambda!278255 lambda!278215))))

(declare-fun bs!1245547 () Bool)

(assert (= bs!1245547 (and b!5379604 d!1721659)))

(assert (=> bs!1245547 (not (= lambda!278255 lambda!278241))))

(declare-fun bs!1245548 () Bool)

(assert (= bs!1245548 (and b!5379604 d!1721621)))

(assert (=> bs!1245548 (not (= lambda!278255 lambda!278225))))

(assert (=> bs!1245542 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (reg!15431 r!7292) (reg!15431 (regOne!30716 r!7292))) (= r!7292 (Star!15102 (reg!15431 (regOne!30716 r!7292))))) (= lambda!278255 lambda!278231))))

(declare-fun bs!1245549 () Bool)

(assert (= bs!1245549 (and b!5379604 b!5379160)))

(assert (=> bs!1245549 (= (and (= (reg!15431 r!7292) (reg!15431 lt!2190085)) (= r!7292 lt!2190085)) (= lambda!278255 lambda!278214))))

(assert (=> bs!1245540 (not (= lambda!278255 lambda!278163))))

(assert (=> bs!1245544 (not (= lambda!278255 lambda!278247))))

(declare-fun bs!1245550 () Bool)

(assert (= bs!1245550 (and b!5379604 d!1721627)))

(assert (=> bs!1245550 (not (= lambda!278255 lambda!278236))))

(assert (=> bs!1245547 (not (= lambda!278255 lambda!278242))))

(assert (=> bs!1245550 (not (= lambda!278255 lambda!278237))))

(assert (=> bs!1245545 (not (= lambda!278255 lambda!278158))))

(declare-fun bs!1245551 () Bool)

(assert (= bs!1245551 (and b!5379604 b!5379279)))

(assert (=> bs!1245551 (not (= lambda!278255 lambda!278239))))

(assert (=> b!5379604 true))

(assert (=> b!5379604 true))

(declare-fun bs!1245552 () Bool)

(declare-fun b!5379605 () Bool)

(assert (= bs!1245552 (and b!5379605 d!1721685)))

(declare-fun lambda!278258 () Int)

(assert (=> bs!1245552 (not (= lambda!278258 lambda!278248))))

(declare-fun bs!1245553 () Bool)

(assert (= bs!1245553 (and b!5379605 b!5378853)))

(assert (=> bs!1245553 (= (= (regOne!30716 r!7292) lt!2190082) (= lambda!278258 lambda!278162))))

(declare-fun bs!1245554 () Bool)

(assert (= bs!1245554 (and b!5379605 b!5378835)))

(assert (=> bs!1245554 (not (= lambda!278258 lambda!278164))))

(declare-fun bs!1245555 () Bool)

(assert (= bs!1245555 (and b!5379605 d!1721655)))

(assert (=> bs!1245555 (not (= lambda!278258 lambda!278240))))

(declare-fun bs!1245556 () Bool)

(assert (= bs!1245556 (and b!5379605 d!1721623)))

(assert (=> bs!1245556 (not (= lambda!278258 lambda!278230))))

(declare-fun bs!1245557 () Bool)

(assert (= bs!1245557 (and b!5379605 b!5379278)))

(assert (=> bs!1245557 (not (= lambda!278258 lambda!278238))))

(assert (=> bs!1245554 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278258 lambda!278165))))

(declare-fun bs!1245558 () Bool)

(assert (= bs!1245558 (and b!5379605 d!1721683)))

(assert (=> bs!1245558 (not (= lambda!278258 lambda!278246))))

(declare-fun bs!1245559 () Bool)

(assert (= bs!1245559 (and b!5379605 b!5378852)))

(assert (=> bs!1245559 (= lambda!278258 lambda!278159)))

(assert (=> bs!1245553 (not (= lambda!278258 lambda!278161))))

(declare-fun bs!1245560 () Bool)

(assert (= bs!1245560 (and b!5379605 b!5379161)))

(assert (=> bs!1245560 (= (and (= (regOne!30716 r!7292) (regOne!30716 lt!2190085)) (= (regTwo!30716 r!7292) (regTwo!30716 lt!2190085))) (= lambda!278258 lambda!278215))))

(declare-fun bs!1245561 () Bool)

(assert (= bs!1245561 (and b!5379605 d!1721659)))

(assert (=> bs!1245561 (not (= lambda!278258 lambda!278241))))

(declare-fun bs!1245562 () Bool)

(assert (= bs!1245562 (and b!5379605 d!1721621)))

(assert (=> bs!1245562 (not (= lambda!278258 lambda!278225))))

(assert (=> bs!1245556 (not (= lambda!278258 lambda!278231))))

(declare-fun bs!1245564 () Bool)

(assert (= bs!1245564 (and b!5379605 b!5379160)))

(assert (=> bs!1245564 (not (= lambda!278258 lambda!278214))))

(assert (=> bs!1245554 (not (= lambda!278258 lambda!278163))))

(assert (=> bs!1245558 (= (= (regOne!30716 r!7292) lt!2190082) (= lambda!278258 lambda!278247))))

(declare-fun bs!1245565 () Bool)

(assert (= bs!1245565 (and b!5379605 d!1721627)))

(assert (=> bs!1245565 (not (= lambda!278258 lambda!278236))))

(assert (=> bs!1245561 (= lambda!278258 lambda!278242)))

(assert (=> bs!1245565 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (reg!15431 (regOne!30716 r!7292))) (= (regTwo!30716 r!7292) lt!2190082)) (= lambda!278258 lambda!278237))))

(assert (=> bs!1245559 (not (= lambda!278258 lambda!278158))))

(declare-fun bs!1245566 () Bool)

(assert (= bs!1245566 (and b!5379605 b!5379279)))

(assert (=> bs!1245566 (= (and (= s!2326 (_1!35604 lt!2190065)) (= (regOne!30716 r!7292) (regOne!30716 lt!2190082)) (= (regTwo!30716 r!7292) (regTwo!30716 lt!2190082))) (= lambda!278258 lambda!278239))))

(declare-fun bs!1245567 () Bool)

(assert (= bs!1245567 (and b!5379605 b!5379604)))

(assert (=> bs!1245567 (not (= lambda!278258 lambda!278255))))

(assert (=> b!5379605 true))

(assert (=> b!5379605 true))

(declare-fun bm!385276 () Bool)

(declare-fun call!385281 () Bool)

(assert (=> bm!385276 (= call!385281 (isEmpty!33471 s!2326))))

(declare-fun d!1721773 () Bool)

(declare-fun c!937628 () Bool)

(assert (=> d!1721773 (= c!937628 (is-EmptyExpr!15102 r!7292))))

(declare-fun e!3337326 () Bool)

(assert (=> d!1721773 (= (matchRSpec!2205 r!7292 s!2326) e!3337326)))

(declare-fun e!3337328 () Bool)

(declare-fun call!385282 () Bool)

(assert (=> b!5379604 (= e!3337328 call!385282)))

(declare-fun e!3337325 () Bool)

(assert (=> b!5379605 (= e!3337325 call!385282)))

(declare-fun b!5379606 () Bool)

(declare-fun c!937631 () Bool)

(assert (=> b!5379606 (= c!937631 (is-ElementMatch!15102 r!7292))))

(declare-fun e!3337322 () Bool)

(declare-fun e!3337323 () Bool)

(assert (=> b!5379606 (= e!3337322 e!3337323)))

(declare-fun b!5379607 () Bool)

(assert (=> b!5379607 (= e!3337323 (= s!2326 (Cons!61481 (c!937440 r!7292) Nil!61481)))))

(declare-fun b!5379608 () Bool)

(declare-fun c!937630 () Bool)

(assert (=> b!5379608 (= c!937630 (is-Union!15102 r!7292))))

(declare-fun e!3337324 () Bool)

(assert (=> b!5379608 (= e!3337323 e!3337324)))

(declare-fun b!5379609 () Bool)

(assert (=> b!5379609 (= e!3337324 e!3337325)))

(declare-fun c!937629 () Bool)

(assert (=> b!5379609 (= c!937629 (is-Star!15102 r!7292))))

(declare-fun b!5379610 () Bool)

(assert (=> b!5379610 (= e!3337326 call!385281)))

(declare-fun b!5379611 () Bool)

(assert (=> b!5379611 (= e!3337326 e!3337322)))

(declare-fun res!2283903 () Bool)

(assert (=> b!5379611 (= res!2283903 (not (is-EmptyLang!15102 r!7292)))))

(assert (=> b!5379611 (=> (not res!2283903) (not e!3337322))))

(declare-fun b!5379612 () Bool)

(declare-fun res!2283904 () Bool)

(assert (=> b!5379612 (=> res!2283904 e!3337328)))

(assert (=> b!5379612 (= res!2283904 call!385281)))

(assert (=> b!5379612 (= e!3337325 e!3337328)))

(declare-fun b!5379613 () Bool)

(declare-fun e!3337327 () Bool)

(assert (=> b!5379613 (= e!3337324 e!3337327)))

(declare-fun res!2283902 () Bool)

(assert (=> b!5379613 (= res!2283902 (matchRSpec!2205 (regOne!30717 r!7292) s!2326))))

(assert (=> b!5379613 (=> res!2283902 e!3337327)))

(declare-fun bm!385277 () Bool)

(assert (=> bm!385277 (= call!385282 (Exists!2283 (ite c!937629 lambda!278255 lambda!278258)))))

(declare-fun b!5379614 () Bool)

(assert (=> b!5379614 (= e!3337327 (matchRSpec!2205 (regTwo!30717 r!7292) s!2326))))

(assert (= (and d!1721773 c!937628) b!5379610))

(assert (= (and d!1721773 (not c!937628)) b!5379611))

(assert (= (and b!5379611 res!2283903) b!5379606))

(assert (= (and b!5379606 c!937631) b!5379607))

(assert (= (and b!5379606 (not c!937631)) b!5379608))

(assert (= (and b!5379608 c!937630) b!5379613))

(assert (= (and b!5379608 (not c!937630)) b!5379609))

(assert (= (and b!5379613 (not res!2283902)) b!5379614))

(assert (= (and b!5379609 c!937629) b!5379612))

(assert (= (and b!5379609 (not c!937629)) b!5379605))

(assert (= (and b!5379612 (not res!2283904)) b!5379604))

(assert (= (or b!5379604 b!5379605) bm!385277))

(assert (= (or b!5379610 b!5379612) bm!385276))

(assert (=> bm!385276 m!6405300))

(declare-fun m!6405820 () Bool)

(assert (=> b!5379613 m!6405820))

(declare-fun m!6405822 () Bool)

(assert (=> bm!385277 m!6405822))

(declare-fun m!6405824 () Bool)

(assert (=> b!5379614 m!6405824))

(assert (=> b!5378841 d!1721773))

(declare-fun b!5379645 () Bool)

(declare-fun e!3337348 () Bool)

(declare-fun lt!2190333 () Bool)

(assert (=> b!5379645 (= e!3337348 (not lt!2190333))))

(declare-fun b!5379646 () Bool)

(declare-fun e!3337350 () Bool)

(assert (=> b!5379646 (= e!3337350 e!3337348)))

(declare-fun c!937645 () Bool)

(assert (=> b!5379646 (= c!937645 (is-EmptyLang!15102 r!7292))))

(declare-fun b!5379647 () Bool)

(declare-fun call!385283 () Bool)

(assert (=> b!5379647 (= e!3337350 (= lt!2190333 call!385283))))

(declare-fun b!5379648 () Bool)

(declare-fun res!2283913 () Bool)

(declare-fun e!3337352 () Bool)

(assert (=> b!5379648 (=> (not res!2283913) (not e!3337352))))

(assert (=> b!5379648 (= res!2283913 (not call!385283))))

(declare-fun d!1721777 () Bool)

(assert (=> d!1721777 e!3337350))

(declare-fun c!937644 () Bool)

(assert (=> d!1721777 (= c!937644 (is-EmptyExpr!15102 r!7292))))

(declare-fun e!3337353 () Bool)

(assert (=> d!1721777 (= lt!2190333 e!3337353)))

(declare-fun c!937646 () Bool)

(assert (=> d!1721777 (= c!937646 (isEmpty!33471 s!2326))))

(assert (=> d!1721777 (validRegex!6838 r!7292)))

(assert (=> d!1721777 (= (matchR!7287 r!7292 s!2326) lt!2190333)))

(declare-fun b!5379649 () Bool)

(declare-fun res!2283915 () Bool)

(declare-fun e!3337347 () Bool)

(assert (=> b!5379649 (=> res!2283915 e!3337347)))

(assert (=> b!5379649 (= res!2283915 (not (isEmpty!33471 (tail!10638 s!2326))))))

(declare-fun bm!385278 () Bool)

(assert (=> bm!385278 (= call!385283 (isEmpty!33471 s!2326))))

(declare-fun b!5379650 () Bool)

(declare-fun res!2283917 () Bool)

(assert (=> b!5379650 (=> (not res!2283917) (not e!3337352))))

(assert (=> b!5379650 (= res!2283917 (isEmpty!33471 (tail!10638 s!2326)))))

(declare-fun b!5379651 () Bool)

(assert (=> b!5379651 (= e!3337353 (matchR!7287 (derivativeStep!4232 r!7292 (head!11541 s!2326)) (tail!10638 s!2326)))))

(declare-fun b!5379652 () Bool)

(declare-fun e!3337351 () Bool)

(assert (=> b!5379652 (= e!3337351 e!3337347)))

(declare-fun res!2283912 () Bool)

(assert (=> b!5379652 (=> res!2283912 e!3337347)))

(assert (=> b!5379652 (= res!2283912 call!385283)))

(declare-fun b!5379653 () Bool)

(assert (=> b!5379653 (= e!3337352 (= (head!11541 s!2326) (c!937440 r!7292)))))

(declare-fun b!5379654 () Bool)

(declare-fun res!2283911 () Bool)

(declare-fun e!3337349 () Bool)

(assert (=> b!5379654 (=> res!2283911 e!3337349)))

(assert (=> b!5379654 (= res!2283911 (not (is-ElementMatch!15102 r!7292)))))

(assert (=> b!5379654 (= e!3337348 e!3337349)))

(declare-fun b!5379655 () Bool)

(assert (=> b!5379655 (= e!3337353 (nullable!5271 r!7292))))

(declare-fun b!5379656 () Bool)

(assert (=> b!5379656 (= e!3337347 (not (= (head!11541 s!2326) (c!937440 r!7292))))))

(declare-fun b!5379657 () Bool)

(declare-fun res!2283916 () Bool)

(assert (=> b!5379657 (=> res!2283916 e!3337349)))

(assert (=> b!5379657 (= res!2283916 e!3337352)))

(declare-fun res!2283918 () Bool)

(assert (=> b!5379657 (=> (not res!2283918) (not e!3337352))))

(assert (=> b!5379657 (= res!2283918 lt!2190333)))

(declare-fun b!5379658 () Bool)

(assert (=> b!5379658 (= e!3337349 e!3337351)))

(declare-fun res!2283914 () Bool)

(assert (=> b!5379658 (=> (not res!2283914) (not e!3337351))))

(assert (=> b!5379658 (= res!2283914 (not lt!2190333))))

(assert (= (and d!1721777 c!937646) b!5379655))

(assert (= (and d!1721777 (not c!937646)) b!5379651))

(assert (= (and d!1721777 c!937644) b!5379647))

(assert (= (and d!1721777 (not c!937644)) b!5379646))

(assert (= (and b!5379646 c!937645) b!5379645))

(assert (= (and b!5379646 (not c!937645)) b!5379654))

(assert (= (and b!5379654 (not res!2283911)) b!5379657))

(assert (= (and b!5379657 res!2283918) b!5379648))

(assert (= (and b!5379648 res!2283913) b!5379650))

(assert (= (and b!5379650 res!2283917) b!5379653))

(assert (= (and b!5379657 (not res!2283916)) b!5379658))

(assert (= (and b!5379658 res!2283914) b!5379652))

(assert (= (and b!5379652 (not res!2283912)) b!5379649))

(assert (= (and b!5379649 (not res!2283915)) b!5379656))

(assert (= (or b!5379647 b!5379652 b!5379648) bm!385278))

(assert (=> b!5379649 m!6405288))

(assert (=> b!5379649 m!6405288))

(assert (=> b!5379649 m!6405290))

(assert (=> b!5379651 m!6405292))

(assert (=> b!5379651 m!6405292))

(declare-fun m!6405826 () Bool)

(assert (=> b!5379651 m!6405826))

(assert (=> b!5379651 m!6405288))

(assert (=> b!5379651 m!6405826))

(assert (=> b!5379651 m!6405288))

(declare-fun m!6405828 () Bool)

(assert (=> b!5379651 m!6405828))

(declare-fun m!6405830 () Bool)

(assert (=> b!5379655 m!6405830))

(assert (=> d!1721777 m!6405300))

(assert (=> d!1721777 m!6404980))

(assert (=> b!5379653 m!6405292))

(assert (=> bm!385278 m!6405300))

(assert (=> b!5379656 m!6405292))

(assert (=> b!5379650 m!6405288))

(assert (=> b!5379650 m!6405288))

(assert (=> b!5379650 m!6405290))

(assert (=> b!5378841 d!1721777))

(declare-fun d!1721779 () Bool)

(assert (=> d!1721779 (= (matchR!7287 r!7292 s!2326) (matchRSpec!2205 r!7292 s!2326))))

(declare-fun lt!2190337 () Unit!153926)

(assert (=> d!1721779 (= lt!2190337 (choose!40424 r!7292 s!2326))))

(assert (=> d!1721779 (validRegex!6838 r!7292)))

(assert (=> d!1721779 (= (mainMatchTheorem!2205 r!7292 s!2326) lt!2190337)))

(declare-fun bs!1245569 () Bool)

(assert (= bs!1245569 d!1721779))

(assert (=> bs!1245569 m!6404966))

(assert (=> bs!1245569 m!6404964))

(declare-fun m!6405838 () Bool)

(assert (=> bs!1245569 m!6405838))

(assert (=> bs!1245569 m!6404980))

(assert (=> b!5378841 d!1721779))

(declare-fun d!1721783 () Bool)

(assert (=> d!1721783 (= (isEmpty!33472 (t!374829 (exprs!4986 (h!67931 zl!343)))) (is-Nil!61482 (t!374829 (exprs!4986 (h!67931 zl!343)))))))

(assert (=> b!5378843 d!1721783))

(declare-fun d!1721785 () Bool)

(declare-fun lt!2190339 () Regex!15102)

(assert (=> d!1721785 (validRegex!6838 lt!2190339)))

(assert (=> d!1721785 (= lt!2190339 (generalisedUnion!1031 (unfocusZipperList!544 zl!343)))))

(assert (=> d!1721785 (= (unfocusZipper!844 zl!343) lt!2190339)))

(declare-fun bs!1245570 () Bool)

(assert (= bs!1245570 d!1721785))

(declare-fun m!6405840 () Bool)

(assert (=> bs!1245570 m!6405840))

(assert (=> bs!1245570 m!6404940))

(assert (=> bs!1245570 m!6404940))

(assert (=> bs!1245570 m!6404942))

(assert (=> b!5378824 d!1721785))

(declare-fun b!5379677 () Bool)

(declare-fun e!3337363 () Bool)

(declare-fun tp!1491162 () Bool)

(declare-fun tp!1491163 () Bool)

(assert (=> b!5379677 (= e!3337363 (and tp!1491162 tp!1491163))))

(assert (=> b!5378855 (= tp!1491122 e!3337363)))

(assert (= (and b!5378855 (is-Cons!61482 (exprs!4986 setElem!34886))) b!5379677))

(declare-fun b!5379689 () Bool)

(declare-fun e!3337366 () Bool)

(declare-fun tp!1491174 () Bool)

(declare-fun tp!1491176 () Bool)

(assert (=> b!5379689 (= e!3337366 (and tp!1491174 tp!1491176))))

(declare-fun b!5379690 () Bool)

(declare-fun tp!1491177 () Bool)

(assert (=> b!5379690 (= e!3337366 tp!1491177)))

(assert (=> b!5378830 (= tp!1491125 e!3337366)))

(declare-fun b!5379688 () Bool)

(assert (=> b!5379688 (= e!3337366 tp_is_empty!39457)))

(declare-fun b!5379691 () Bool)

(declare-fun tp!1491175 () Bool)

(declare-fun tp!1491178 () Bool)

(assert (=> b!5379691 (= e!3337366 (and tp!1491175 tp!1491178))))

(assert (= (and b!5378830 (is-ElementMatch!15102 (regOne!30717 r!7292))) b!5379688))

(assert (= (and b!5378830 (is-Concat!23947 (regOne!30717 r!7292))) b!5379689))

(assert (= (and b!5378830 (is-Star!15102 (regOne!30717 r!7292))) b!5379690))

(assert (= (and b!5378830 (is-Union!15102 (regOne!30717 r!7292))) b!5379691))

(declare-fun b!5379693 () Bool)

(declare-fun e!3337367 () Bool)

(declare-fun tp!1491179 () Bool)

(declare-fun tp!1491181 () Bool)

(assert (=> b!5379693 (= e!3337367 (and tp!1491179 tp!1491181))))

(declare-fun b!5379694 () Bool)

(declare-fun tp!1491182 () Bool)

(assert (=> b!5379694 (= e!3337367 tp!1491182)))

(assert (=> b!5378830 (= tp!1491119 e!3337367)))

(declare-fun b!5379692 () Bool)

(assert (=> b!5379692 (= e!3337367 tp_is_empty!39457)))

(declare-fun b!5379695 () Bool)

(declare-fun tp!1491180 () Bool)

(declare-fun tp!1491183 () Bool)

(assert (=> b!5379695 (= e!3337367 (and tp!1491180 tp!1491183))))

(assert (= (and b!5378830 (is-ElementMatch!15102 (regTwo!30717 r!7292))) b!5379692))

(assert (= (and b!5378830 (is-Concat!23947 (regTwo!30717 r!7292))) b!5379693))

(assert (= (and b!5378830 (is-Star!15102 (regTwo!30717 r!7292))) b!5379694))

(assert (= (and b!5378830 (is-Union!15102 (regTwo!30717 r!7292))) b!5379695))

(declare-fun b!5379697 () Bool)

(declare-fun e!3337368 () Bool)

(declare-fun tp!1491184 () Bool)

(declare-fun tp!1491186 () Bool)

(assert (=> b!5379697 (= e!3337368 (and tp!1491184 tp!1491186))))

(declare-fun b!5379698 () Bool)

(declare-fun tp!1491187 () Bool)

(assert (=> b!5379698 (= e!3337368 tp!1491187)))

(assert (=> b!5378831 (= tp!1491121 e!3337368)))

(declare-fun b!5379696 () Bool)

(assert (=> b!5379696 (= e!3337368 tp_is_empty!39457)))

(declare-fun b!5379699 () Bool)

(declare-fun tp!1491185 () Bool)

(declare-fun tp!1491188 () Bool)

(assert (=> b!5379699 (= e!3337368 (and tp!1491185 tp!1491188))))

(assert (= (and b!5378831 (is-ElementMatch!15102 (reg!15431 r!7292))) b!5379696))

(assert (= (and b!5378831 (is-Concat!23947 (reg!15431 r!7292))) b!5379697))

(assert (= (and b!5378831 (is-Star!15102 (reg!15431 r!7292))) b!5379698))

(assert (= (and b!5378831 (is-Union!15102 (reg!15431 r!7292))) b!5379699))

(declare-fun condSetEmpty!34892 () Bool)

(assert (=> setNonEmpty!34886 (= condSetEmpty!34892 (= setRest!34886 (as set.empty (Set Context!8972))))))

(declare-fun setRes!34892 () Bool)

(assert (=> setNonEmpty!34886 (= tp!1491127 setRes!34892)))

(declare-fun setIsEmpty!34892 () Bool)

(assert (=> setIsEmpty!34892 setRes!34892))

(declare-fun setNonEmpty!34892 () Bool)

(declare-fun setElem!34892 () Context!8972)

(declare-fun e!3337371 () Bool)

(declare-fun tp!1491194 () Bool)

(assert (=> setNonEmpty!34892 (= setRes!34892 (and tp!1491194 (inv!81003 setElem!34892) e!3337371))))

(declare-fun setRest!34892 () (Set Context!8972))

(assert (=> setNonEmpty!34892 (= setRest!34886 (set.union (set.insert setElem!34892 (as set.empty (Set Context!8972))) setRest!34892))))

(declare-fun b!5379704 () Bool)

(declare-fun tp!1491193 () Bool)

(assert (=> b!5379704 (= e!3337371 tp!1491193)))

(assert (= (and setNonEmpty!34886 condSetEmpty!34892) setIsEmpty!34892))

(assert (= (and setNonEmpty!34886 (not condSetEmpty!34892)) setNonEmpty!34892))

(assert (= setNonEmpty!34892 b!5379704))

(declare-fun m!6405858 () Bool)

(assert (=> setNonEmpty!34892 m!6405858))

(declare-fun b!5379706 () Bool)

(declare-fun e!3337372 () Bool)

(declare-fun tp!1491195 () Bool)

(declare-fun tp!1491197 () Bool)

(assert (=> b!5379706 (= e!3337372 (and tp!1491195 tp!1491197))))

(declare-fun b!5379707 () Bool)

(declare-fun tp!1491198 () Bool)

(assert (=> b!5379707 (= e!3337372 tp!1491198)))

(assert (=> b!5378845 (= tp!1491124 e!3337372)))

(declare-fun b!5379705 () Bool)

(assert (=> b!5379705 (= e!3337372 tp_is_empty!39457)))

(declare-fun b!5379708 () Bool)

(declare-fun tp!1491196 () Bool)

(declare-fun tp!1491199 () Bool)

(assert (=> b!5379708 (= e!3337372 (and tp!1491196 tp!1491199))))

(assert (= (and b!5378845 (is-ElementMatch!15102 (regOne!30716 r!7292))) b!5379705))

(assert (= (and b!5378845 (is-Concat!23947 (regOne!30716 r!7292))) b!5379706))

(assert (= (and b!5378845 (is-Star!15102 (regOne!30716 r!7292))) b!5379707))

(assert (= (and b!5378845 (is-Union!15102 (regOne!30716 r!7292))) b!5379708))

(declare-fun b!5379710 () Bool)

(declare-fun e!3337373 () Bool)

(declare-fun tp!1491200 () Bool)

(declare-fun tp!1491202 () Bool)

(assert (=> b!5379710 (= e!3337373 (and tp!1491200 tp!1491202))))

(declare-fun b!5379711 () Bool)

(declare-fun tp!1491203 () Bool)

(assert (=> b!5379711 (= e!3337373 tp!1491203)))

(assert (=> b!5378845 (= tp!1491126 e!3337373)))

(declare-fun b!5379709 () Bool)

(assert (=> b!5379709 (= e!3337373 tp_is_empty!39457)))

(declare-fun b!5379712 () Bool)

(declare-fun tp!1491201 () Bool)

(declare-fun tp!1491204 () Bool)

(assert (=> b!5379712 (= e!3337373 (and tp!1491201 tp!1491204))))

(assert (= (and b!5378845 (is-ElementMatch!15102 (regTwo!30716 r!7292))) b!5379709))

(assert (= (and b!5378845 (is-Concat!23947 (regTwo!30716 r!7292))) b!5379710))

(assert (= (and b!5378845 (is-Star!15102 (regTwo!30716 r!7292))) b!5379711))

(assert (= (and b!5378845 (is-Union!15102 (regTwo!30716 r!7292))) b!5379712))

(declare-fun b!5379717 () Bool)

(declare-fun e!3337376 () Bool)

(declare-fun tp!1491207 () Bool)

(assert (=> b!5379717 (= e!3337376 (and tp_is_empty!39457 tp!1491207))))

(assert (=> b!5378858 (= tp!1491120 e!3337376)))

(assert (= (and b!5378858 (is-Cons!61481 (t!374828 s!2326))) b!5379717))

(declare-fun b!5379718 () Bool)

(declare-fun e!3337377 () Bool)

(declare-fun tp!1491208 () Bool)

(declare-fun tp!1491209 () Bool)

(assert (=> b!5379718 (= e!3337377 (and tp!1491208 tp!1491209))))

(assert (=> b!5378822 (= tp!1491123 e!3337377)))

(assert (= (and b!5378822 (is-Cons!61482 (exprs!4986 (h!67931 zl!343)))) b!5379718))

(declare-fun b!5379728 () Bool)

(declare-fun e!3337383 () Bool)

(declare-fun tp!1491214 () Bool)

(assert (=> b!5379728 (= e!3337383 tp!1491214)))

(declare-fun tp!1491215 () Bool)

(declare-fun e!3337382 () Bool)

(declare-fun b!5379727 () Bool)

(assert (=> b!5379727 (= e!3337382 (and (inv!81003 (h!67931 (t!374830 zl!343))) e!3337383 tp!1491215))))

(assert (=> b!5378848 (= tp!1491118 e!3337382)))

(assert (= b!5379727 b!5379728))

(assert (= (and b!5378848 (is-Cons!61483 (t!374830 zl!343))) b!5379727))

(declare-fun m!6405860 () Bool)

(assert (=> b!5379727 m!6405860))

(declare-fun b_lambda!206073 () Bool)

(assert (= b_lambda!206063 (or b!5378854 b_lambda!206073)))

(declare-fun bs!1245571 () Bool)

(declare-fun d!1721789 () Bool)

(assert (= bs!1245571 (and d!1721789 b!5378854)))

(assert (=> bs!1245571 (= (dynLambda!24272 lambda!278160 lt!2190086) (derivationStepZipperUp!474 lt!2190086 (h!67929 s!2326)))))

(assert (=> bs!1245571 m!6405036))

(assert (=> d!1721699 d!1721789))

(declare-fun b_lambda!206075 () Bool)

(assert (= b_lambda!206061 (or b!5378854 b_lambda!206075)))

(declare-fun bs!1245572 () Bool)

(declare-fun d!1721791 () Bool)

(assert (= bs!1245572 (and d!1721791 b!5378854)))

(assert (=> bs!1245572 (= (dynLambda!24272 lambda!278160 (h!67931 zl!343)) (derivationStepZipperUp!474 (h!67931 zl!343) (h!67929 s!2326)))))

(assert (=> bs!1245572 m!6404992))

(assert (=> d!1721673 d!1721791))

(declare-fun b_lambda!206077 () Bool)

(assert (= b_lambda!206065 (or b!5378854 b_lambda!206077)))

(declare-fun bs!1245573 () Bool)

(declare-fun d!1721793 () Bool)

(assert (= bs!1245573 (and d!1721793 b!5378854)))

(assert (=> bs!1245573 (= (dynLambda!24272 lambda!278160 lt!2190091) (derivationStepZipperUp!474 lt!2190091 (h!67929 s!2326)))))

(assert (=> bs!1245573 m!6405032))

(assert (=> d!1721703 d!1721793))

(declare-fun b_lambda!206079 () Bool)

(assert (= b_lambda!206071 (or b!5378854 b_lambda!206079)))

(declare-fun bs!1245574 () Bool)

(declare-fun d!1721795 () Bool)

(assert (= bs!1245574 (and d!1721795 b!5378854)))

(assert (=> bs!1245574 (= (dynLambda!24272 lambda!278160 lt!2190105) (derivationStepZipperUp!474 lt!2190105 (h!67929 s!2326)))))

(assert (=> bs!1245574 m!6405018))

(assert (=> d!1721759 d!1721795))

(push 1)

(assert (not b!5379694))

(assert (not b!5379276))

(assert (not d!1721731))

(assert (not b!5379184))

(assert (not b!5379198))

(assert (not d!1721719))

(assert (not b!5379613))

(assert (not b!5379348))

(assert (not d!1721665))

(assert (not bs!1245572))

(assert (not b!5379120))

(assert (not d!1721631))

(assert (not b!5379221))

(assert (not d!1721681))

(assert (not d!1721699))

(assert (not b!5379691))

(assert (not d!1721655))

(assert (not bm!385224))

(assert (not d!1721785))

(assert (not bs!1245573))

(assert (not bm!385242))

(assert (not b!5379272))

(assert (not b!5379467))

(assert (not b!5379460))

(assert (not d!1721695))

(assert (not b_lambda!206079))

(assert (not b!5379677))

(assert (not b!5379287))

(assert (not b!5379122))

(assert (not b!5379288))

(assert (not b!5379699))

(assert (not bm!385196))

(assert (not b!5379453))

(assert (not d!1721623))

(assert (not bm!385270))

(assert (not d!1721589))

(assert (not b!5379653))

(assert (not d!1721777))

(assert (not b!5379598))

(assert (not d!1721735))

(assert (not b_lambda!206075))

(assert (not b!5379557))

(assert (not d!1721599))

(assert (not b!5379698))

(assert (not b!5379712))

(assert (not b!5379269))

(assert (not bm!385247))

(assert (not b!5379072))

(assert (not d!1721649))

(assert (not b!5379222))

(assert (not d!1721683))

(assert (not d!1721591))

(assert (not d!1721605))

(assert (not bm!385271))

(assert (not b!5379071))

(assert (not b!5379084))

(assert (not b!5379356))

(assert (not b!5379573))

(assert (not b!5379227))

(assert (not b!5379574))

(assert (not d!1721587))

(assert (not b!5379456))

(assert (not bm!385272))

(assert (not b!5379404))

(assert (not d!1721713))

(assert (not d!1721703))

(assert (not b!5379346))

(assert (not b!5379525))

(assert (not d!1721691))

(assert (not bm!385274))

(assert (not b!5379188))

(assert (not b!5379224))

(assert (not d!1721611))

(assert (not b!5379077))

(assert (not b!5379170))

(assert (not b!5379459))

(assert (not d!1721627))

(assert (not bm!385278))

(assert (not b!5379576))

(assert (not b!5379706))

(assert (not d!1721685))

(assert (not b!5379197))

(assert (not d!1721613))

(assert (not d!1721629))

(assert (not b!5379354))

(assert (not b!5379710))

(assert (not b!5379550))

(assert (not bs!1245571))

(assert tp_is_empty!39457)

(assert (not b!5379076))

(assert (not b!5379655))

(assert (not b!5379614))

(assert (not b!5379291))

(assert (not bm!385235))

(assert (not b!5379119))

(assert (not d!1721693))

(assert (not b!5379473))

(assert (not b!5379600))

(assert (not b_lambda!206077))

(assert (not b!5379601))

(assert (not b!5379551))

(assert (not b!5379185))

(assert (not b!5379656))

(assert (not d!1721763))

(assert (not d!1721597))

(assert (not bm!385195))

(assert (not b!5379189))

(assert (not b!5379074))

(assert (not d!1721625))

(assert (not b!5379728))

(assert (not d!1721641))

(assert (not b!5379695))

(assert (not b!5379596))

(assert (not b!5379350))

(assert (not d!1721689))

(assert (not d!1721633))

(assert (not b!5379708))

(assert (not d!1721673))

(assert (not d!1721705))

(assert (not b!5379079))

(assert (not bm!385188))

(assert (not b!5379462))

(assert (not b!5379271))

(assert (not d!1721645))

(assert (not b!5379464))

(assert (not d!1721707))

(assert (not b!5379397))

(assert (not bm!385243))

(assert (not b!5379693))

(assert (not b!5379572))

(assert (not d!1721675))

(assert (not b!5379718))

(assert (not b!5379690))

(assert (not bm!385193))

(assert (not d!1721603))

(assert (not d!1721621))

(assert (not d!1721755))

(assert (not b!5379697))

(assert (not bm!385225))

(assert (not bm!385194))

(assert (not b!5379195))

(assert (not b!5379180))

(assert (not b!5379472))

(assert (not bm!385223))

(assert (not b!5379181))

(assert (not b!5379568))

(assert (not b_lambda!206073))

(assert (not b!5379545))

(assert (not d!1721659))

(assert (not d!1721687))

(assert (not b!5379455))

(assert (not bm!385260))

(assert (not d!1721761))

(assert (not b!5379556))

(assert (not b!5379395))

(assert (not b!5379383))

(assert (not b!5379437))

(assert (not b!5379169))

(assert (not b!5379567))

(assert (not b!5379595))

(assert (not b!5379436))

(assert (not setNonEmpty!34892))

(assert (not b!5379689))

(assert (not b!5379594))

(assert (not b!5379381))

(assert (not d!1721749))

(assert (not d!1721751))

(assert (not d!1721609))

(assert (not b!5379569))

(assert (not d!1721653))

(assert (not b!5379461))

(assert (not d!1721769))

(assert (not b!5379707))

(assert (not bm!385248))

(assert (not bm!385238))

(assert (not d!1721771))

(assert (not b!5379290))

(assert (not d!1721779))

(assert (not d!1721601))

(assert (not b!5379399))

(assert (not b!5379649))

(assert (not b!5379552))

(assert (not bm!385261))

(assert (not b!5379554))

(assert (not bs!1245574))

(assert (not b!5379125))

(assert (not b!5379650))

(assert (not b!5379275))

(assert (not bm!385277))

(assert (not b!5379073))

(assert (not d!1721643))

(assert (not bm!385275))

(assert (not b!5379355))

(assert (not d!1721595))

(assert (not d!1721759))

(assert (not b!5379704))

(assert (not d!1721615))

(assert (not b!5379223))

(assert (not b!5379219))

(assert (not d!1721651))

(assert (not b!5379124))

(assert (not b!5379727))

(assert (not b!5379651))

(assert (not bm!385276))

(assert (not b!5379589))

(assert (not b!5379196))

(assert (not b!5379118))

(assert (not b!5379351))

(assert (not b!5379220))

(assert (not bm!385240))

(assert (not d!1721739))

(assert (not b!5379402))

(assert (not b!5379717))

(assert (not b!5379277))

(assert (not b!5379711))

(assert (not bm!385239))

(assert (not d!1721617))

(assert (not b!5379469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


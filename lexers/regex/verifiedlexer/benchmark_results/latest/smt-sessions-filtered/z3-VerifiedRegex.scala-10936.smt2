; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566006 () Bool)

(assert start!566006)

(declare-fun b!5384068 () Bool)

(assert (=> b!5384068 true))

(assert (=> b!5384068 true))

(declare-fun lambda!278998 () Int)

(declare-fun lambda!278997 () Int)

(assert (=> b!5384068 (not (= lambda!278998 lambda!278997))))

(assert (=> b!5384068 true))

(assert (=> b!5384068 true))

(declare-fun b!5384075 () Bool)

(assert (=> b!5384075 true))

(declare-fun bs!1246136 () Bool)

(declare-fun b!5384045 () Bool)

(assert (= bs!1246136 (and b!5384045 b!5384068)))

(declare-datatypes ((C!30508 0))(
  ( (C!30509 (val!24956 Int)) )
))
(declare-datatypes ((Regex!15119 0))(
  ( (ElementMatch!15119 (c!938207 C!30508)) (Concat!23964 (regOne!30750 Regex!15119) (regTwo!30750 Regex!15119)) (EmptyExpr!15119) (Star!15119 (reg!15448 Regex!15119)) (EmptyLang!15119) (Union!15119 (regOne!30751 Regex!15119) (regTwo!30751 Regex!15119)) )
))
(declare-fun r!7292 () Regex!15119)

(declare-fun lambda!279000 () Int)

(declare-fun lt!2192923 () Regex!15119)

(assert (=> bs!1246136 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279000 lambda!278997))))

(assert (=> bs!1246136 (not (= lambda!279000 lambda!278998))))

(assert (=> b!5384045 true))

(assert (=> b!5384045 true))

(assert (=> b!5384045 true))

(declare-fun lambda!279001 () Int)

(assert (=> bs!1246136 (not (= lambda!279001 lambda!278997))))

(assert (=> bs!1246136 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279001 lambda!278998))))

(assert (=> b!5384045 (not (= lambda!279001 lambda!279000))))

(assert (=> b!5384045 true))

(assert (=> b!5384045 true))

(assert (=> b!5384045 true))

(declare-fun bs!1246137 () Bool)

(declare-fun b!5384069 () Bool)

(assert (= bs!1246137 (and b!5384069 b!5384068)))

(declare-datatypes ((List!61656 0))(
  ( (Nil!61532) (Cons!61532 (h!67980 C!30508) (t!374879 List!61656)) )
))
(declare-fun s!2326 () List!61656)

(declare-fun lambda!279002 () Int)

(declare-datatypes ((tuple2!64636 0))(
  ( (tuple2!64637 (_1!35621 List!61656) (_2!35621 List!61656)) )
))
(declare-fun lt!2192924 () tuple2!64636)

(assert (=> bs!1246137 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) (regOne!30750 r!7292)) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279002 lambda!278997))))

(assert (=> bs!1246137 (not (= lambda!279002 lambda!278998))))

(declare-fun bs!1246138 () Bool)

(assert (= bs!1246138 (and b!5384069 b!5384045)))

(assert (=> bs!1246138 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) lt!2192923) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279002 lambda!279000))))

(assert (=> bs!1246138 (not (= lambda!279002 lambda!279001))))

(assert (=> b!5384069 true))

(assert (=> b!5384069 true))

(assert (=> b!5384069 true))

(declare-fun lambda!279003 () Int)

(assert (=> b!5384069 (not (= lambda!279003 lambda!279002))))

(assert (=> bs!1246138 (not (= lambda!279003 lambda!279001))))

(assert (=> bs!1246137 (not (= lambda!279003 lambda!278997))))

(assert (=> bs!1246138 (not (= lambda!279003 lambda!279000))))

(assert (=> bs!1246137 (not (= lambda!279003 lambda!278998))))

(assert (=> b!5384069 true))

(assert (=> b!5384069 true))

(assert (=> b!5384069 true))

(declare-fun lambda!279004 () Int)

(assert (=> b!5384069 (not (= lambda!279004 lambda!279002))))

(assert (=> bs!1246138 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) lt!2192923) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279004 lambda!279001))))

(assert (=> bs!1246137 (not (= lambda!279004 lambda!278997))))

(assert (=> b!5384069 (not (= lambda!279004 lambda!279003))))

(assert (=> bs!1246138 (not (= lambda!279004 lambda!279000))))

(assert (=> bs!1246137 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) (regOne!30750 r!7292)) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279004 lambda!278998))))

(assert (=> b!5384069 true))

(assert (=> b!5384069 true))

(assert (=> b!5384069 true))

(declare-fun b!5384032 () Bool)

(declare-fun tp!1491865 () Bool)

(declare-fun e!3339610 () Bool)

(declare-fun e!3339617 () Bool)

(declare-datatypes ((List!61657 0))(
  ( (Nil!61533) (Cons!61533 (h!67981 Regex!15119) (t!374880 List!61657)) )
))
(declare-datatypes ((Context!9006 0))(
  ( (Context!9007 (exprs!5003 List!61657)) )
))
(declare-datatypes ((List!61658 0))(
  ( (Nil!61534) (Cons!61534 (h!67982 Context!9006) (t!374881 List!61658)) )
))
(declare-fun zl!343 () List!61658)

(declare-fun inv!81044 (Context!9006) Bool)

(assert (=> b!5384032 (= e!3339610 (and (inv!81044 (h!67982 zl!343)) e!3339617 tp!1491865))))

(declare-fun b!5384033 () Bool)

(declare-fun e!3339619 () Bool)

(declare-fun lt!2192943 () Bool)

(declare-fun lt!2192922 () Bool)

(assert (=> b!5384033 (= e!3339619 (or (not lt!2192943) lt!2192922))))

(declare-fun b!5384034 () Bool)

(declare-fun e!3339624 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2192956 () (InoxSet Context!9006))

(declare-fun matchZipper!1363 ((InoxSet Context!9006) List!61656) Bool)

(assert (=> b!5384034 (= e!3339624 (matchZipper!1363 lt!2192956 (t!374879 s!2326)))))

(declare-fun b!5384035 () Bool)

(declare-fun res!2286798 () Bool)

(declare-fun e!3339615 () Bool)

(assert (=> b!5384035 (=> res!2286798 e!3339615)))

(get-info :version)

(assert (=> b!5384035 (= res!2286798 (or ((_ is EmptyExpr!15119) r!7292) ((_ is EmptyLang!15119) r!7292) ((_ is ElementMatch!15119) r!7292) ((_ is Union!15119) r!7292) (not ((_ is Concat!23964) r!7292))))))

(declare-fun b!5384036 () Bool)

(declare-fun e!3339611 () Bool)

(declare-fun tp!1491861 () Bool)

(assert (=> b!5384036 (= e!3339611 tp!1491861)))

(declare-fun b!5384037 () Bool)

(declare-fun e!3339604 () Bool)

(declare-fun tp_is_empty!39491 () Bool)

(assert (=> b!5384037 (= e!3339604 tp_is_empty!39491)))

(declare-fun b!5384038 () Bool)

(declare-fun e!3339608 () Bool)

(declare-fun e!3339606 () Bool)

(assert (=> b!5384038 (= e!3339608 e!3339606)))

(declare-fun res!2286813 () Bool)

(assert (=> b!5384038 (=> res!2286813 e!3339606)))

(declare-fun lt!2192944 () List!61658)

(declare-fun lt!2192929 () Regex!15119)

(declare-fun unfocusZipper!861 (List!61658) Regex!15119)

(assert (=> b!5384038 (= res!2286813 (not (= (unfocusZipper!861 lt!2192944) lt!2192929)))))

(declare-fun lt!2192969 () Context!9006)

(assert (=> b!5384038 (= lt!2192944 (Cons!61534 lt!2192969 Nil!61534))))

(declare-fun b!5384039 () Bool)

(declare-fun e!3339603 () Bool)

(declare-fun validRegex!6855 (Regex!15119) Bool)

(assert (=> b!5384039 (= e!3339603 (validRegex!6855 (reg!15448 (regOne!30750 r!7292))))))

(declare-fun lt!2192950 () List!61657)

(declare-fun lt!2192940 () List!61657)

(declare-fun lt!2192968 () List!61656)

(declare-fun ++!13423 (List!61657 List!61657) List!61657)

(assert (=> b!5384039 (matchZipper!1363 (store ((as const (Array Context!9006 Bool)) false) (Context!9007 (++!13423 lt!2192950 lt!2192940)) true) lt!2192968)))

(declare-datatypes ((Unit!153994 0))(
  ( (Unit!153995) )
))
(declare-fun lt!2192933 () Unit!153994)

(declare-fun lambda!279005 () Int)

(declare-fun lemmaConcatPreservesForall!150 (List!61657 List!61657 Int) Unit!153994)

(assert (=> b!5384039 (= lt!2192933 (lemmaConcatPreservesForall!150 lt!2192950 lt!2192940 lambda!279005))))

(declare-fun lt!2192919 () List!61656)

(declare-fun lt!2192939 () Unit!153994)

(declare-fun lt!2192921 () tuple2!64636)

(declare-fun lt!2192967 () Context!9006)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!6 (Context!9006 Context!9006 List!61656 List!61656) Unit!153994)

(assert (=> b!5384039 (= lt!2192939 (lemmaConcatenateContextMatchesConcatOfStrings!6 lt!2192967 lt!2192969 (_1!35621 lt!2192921) lt!2192919))))

(declare-fun lt!2192920 () (InoxSet Context!9006))

(assert (=> b!5384039 (matchZipper!1363 lt!2192920 lt!2192919)))

(declare-fun lt!2192962 () Unit!153994)

(declare-fun theoremZipperRegexEquiv!449 ((InoxSet Context!9006) List!61658 Regex!15119 List!61656) Unit!153994)

(assert (=> b!5384039 (= lt!2192962 (theoremZipperRegexEquiv!449 lt!2192920 lt!2192944 lt!2192929 lt!2192919))))

(declare-fun lt!2192953 () (InoxSet Context!9006))

(assert (=> b!5384039 (matchZipper!1363 lt!2192953 (_1!35621 lt!2192921))))

(declare-fun lt!2192928 () List!61658)

(declare-fun lt!2192961 () Unit!153994)

(assert (=> b!5384039 (= lt!2192961 (theoremZipperRegexEquiv!449 lt!2192953 lt!2192928 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921)))))

(declare-fun matchR!7304 (Regex!15119 List!61656) Bool)

(assert (=> b!5384039 (matchR!7304 lt!2192929 lt!2192919)))

(declare-fun lt!2192965 () Unit!153994)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!166 (Regex!15119 Regex!15119 List!61656 List!61656) Unit!153994)

(assert (=> b!5384039 (= lt!2192965 (lemmaTwoRegexMatchThenConcatMatchesConcatString!166 lt!2192923 (regTwo!30750 r!7292) (_2!35621 lt!2192921) (_2!35621 lt!2192924)))))

(declare-fun lt!2192958 () List!61656)

(assert (=> b!5384039 (matchR!7304 lt!2192923 lt!2192958)))

(declare-fun lt!2192930 () Unit!153994)

(declare-fun lemmaStarApp!40 (Regex!15119 List!61656 List!61656) Unit!153994)

(assert (=> b!5384039 (= lt!2192930 (lemmaStarApp!40 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921) (_2!35621 lt!2192921)))))

(declare-fun b!5384040 () Bool)

(declare-fun res!2286793 () Bool)

(assert (=> b!5384040 (=> res!2286793 e!3339615)))

(declare-fun generalisedConcat!788 (List!61657) Regex!15119)

(assert (=> b!5384040 (= res!2286793 (not (= r!7292 (generalisedConcat!788 (exprs!5003 (h!67982 zl!343))))))))

(declare-fun b!5384041 () Bool)

(declare-fun e!3339605 () Bool)

(assert (=> b!5384041 (= e!3339605 (not e!3339615))))

(declare-fun res!2286809 () Bool)

(assert (=> b!5384041 (=> res!2286809 e!3339615)))

(assert (=> b!5384041 (= res!2286809 (not ((_ is Cons!61534) zl!343)))))

(assert (=> b!5384041 (= lt!2192943 lt!2192922)))

(declare-fun matchRSpec!2222 (Regex!15119 List!61656) Bool)

(assert (=> b!5384041 (= lt!2192922 (matchRSpec!2222 r!7292 s!2326))))

(assert (=> b!5384041 (= lt!2192943 (matchR!7304 r!7292 s!2326))))

(declare-fun lt!2192952 () Unit!153994)

(declare-fun mainMatchTheorem!2222 (Regex!15119 List!61656) Unit!153994)

(assert (=> b!5384041 (= lt!2192952 (mainMatchTheorem!2222 r!7292 s!2326))))

(declare-fun b!5384043 () Bool)

(declare-fun tp!1491864 () Bool)

(declare-fun tp!1491868 () Bool)

(assert (=> b!5384043 (= e!3339604 (and tp!1491864 tp!1491868))))

(declare-fun b!5384044 () Bool)

(declare-fun res!2286815 () Bool)

(assert (=> b!5384044 (=> res!2286815 e!3339615)))

(declare-fun isEmpty!33526 (List!61658) Bool)

(assert (=> b!5384044 (= res!2286815 (not (isEmpty!33526 (t!374881 zl!343))))))

(declare-fun e!3339607 () Bool)

(declare-fun e!3339622 () Bool)

(assert (=> b!5384045 (= e!3339607 e!3339622)))

(declare-fun res!2286806 () Bool)

(assert (=> b!5384045 (=> res!2286806 e!3339622)))

(declare-fun ++!13424 (List!61656 List!61656) List!61656)

(assert (=> b!5384045 (= res!2286806 (not (= (++!13424 (_1!35621 lt!2192924) (_2!35621 lt!2192924)) s!2326)))))

(declare-datatypes ((Option!15230 0))(
  ( (None!15229) (Some!15229 (v!51258 tuple2!64636)) )
))
(declare-fun lt!2192963 () Option!15230)

(declare-fun get!21187 (Option!15230) tuple2!64636)

(assert (=> b!5384045 (= lt!2192924 (get!21187 lt!2192963))))

(declare-fun Exists!2300 (Int) Bool)

(assert (=> b!5384045 (= (Exists!2300 lambda!279000) (Exists!2300 lambda!279001))))

(declare-fun lt!2192937 () Unit!153994)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!954 (Regex!15119 Regex!15119 List!61656) Unit!153994)

(assert (=> b!5384045 (= lt!2192937 (lemmaExistCutMatchRandMatchRSpecEquivalent!954 lt!2192923 (regTwo!30750 r!7292) s!2326))))

(declare-fun isDefined!11933 (Option!15230) Bool)

(assert (=> b!5384045 (= (isDefined!11933 lt!2192963) (Exists!2300 lambda!279000))))

(declare-fun findConcatSeparation!1644 (Regex!15119 Regex!15119 List!61656 List!61656 List!61656) Option!15230)

(assert (=> b!5384045 (= lt!2192963 (findConcatSeparation!1644 lt!2192923 (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326))))

(declare-fun lt!2192916 () Unit!153994)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1408 (Regex!15119 Regex!15119 List!61656) Unit!153994)

(assert (=> b!5384045 (= lt!2192916 (lemmaFindConcatSeparationEquivalentToExists!1408 lt!2192923 (regTwo!30750 r!7292) s!2326))))

(declare-fun b!5384046 () Bool)

(declare-fun res!2286810 () Bool)

(assert (=> b!5384046 (=> res!2286810 e!3339622)))

(declare-fun isEmpty!33527 (List!61656) Bool)

(assert (=> b!5384046 (= res!2286810 (isEmpty!33527 (_1!35621 lt!2192924)))))

(declare-fun b!5384047 () Bool)

(declare-fun res!2286799 () Bool)

(assert (=> b!5384047 (=> res!2286799 e!3339603)))

(assert (=> b!5384047 (= res!2286799 (not (matchR!7304 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921))))))

(declare-fun b!5384048 () Bool)

(declare-fun e!3339614 () Bool)

(declare-fun e!3339625 () Bool)

(assert (=> b!5384048 (= e!3339614 e!3339625)))

(declare-fun res!2286795 () Bool)

(assert (=> b!5384048 (=> res!2286795 e!3339625)))

(declare-fun lt!2192925 () Context!9006)

(declare-fun lt!2192942 () Regex!15119)

(assert (=> b!5384048 (= res!2286795 (not (= (unfocusZipper!861 (Cons!61534 lt!2192925 Nil!61534)) lt!2192942)))))

(assert (=> b!5384048 (= lt!2192942 (Concat!23964 (reg!15448 (regOne!30750 r!7292)) lt!2192929))))

(declare-fun b!5384049 () Bool)

(declare-fun e!3339620 () Bool)

(declare-fun tp!1491862 () Bool)

(assert (=> b!5384049 (= e!3339620 (and tp_is_empty!39491 tp!1491862))))

(declare-fun b!5384050 () Bool)

(declare-fun tp!1491869 () Bool)

(assert (=> b!5384050 (= e!3339604 tp!1491869)))

(declare-fun b!5384051 () Bool)

(declare-fun res!2286814 () Bool)

(declare-fun e!3339621 () Bool)

(assert (=> b!5384051 (=> res!2286814 e!3339621)))

(declare-fun lt!2192938 () (InoxSet Context!9006))

(declare-fun lt!2192954 () (InoxSet Context!9006))

(assert (=> b!5384051 (= res!2286814 (not (= (matchZipper!1363 lt!2192938 s!2326) (matchZipper!1363 lt!2192954 (t!374879 s!2326)))))))

(declare-fun b!5384052 () Bool)

(declare-fun e!3339612 () Bool)

(declare-fun nullable!5288 (Regex!15119) Bool)

(assert (=> b!5384052 (= e!3339612 (nullable!5288 (regOne!30750 (regOne!30750 r!7292))))))

(declare-fun b!5384053 () Bool)

(assert (=> b!5384053 (= e!3339606 e!3339607)))

(declare-fun res!2286817 () Bool)

(assert (=> b!5384053 (=> res!2286817 e!3339607)))

(assert (=> b!5384053 (= res!2286817 (not lt!2192943))))

(assert (=> b!5384053 e!3339619))

(declare-fun res!2286811 () Bool)

(assert (=> b!5384053 (=> (not res!2286811) (not e!3339619))))

(assert (=> b!5384053 (= res!2286811 (= (matchR!7304 lt!2192942 s!2326) (matchRSpec!2222 lt!2192942 s!2326)))))

(declare-fun lt!2192948 () Unit!153994)

(assert (=> b!5384053 (= lt!2192948 (mainMatchTheorem!2222 lt!2192942 s!2326))))

(declare-fun b!5384054 () Bool)

(declare-fun res!2286797 () Bool)

(declare-fun e!3339626 () Bool)

(assert (=> b!5384054 (=> res!2286797 e!3339626)))

(assert (=> b!5384054 (= res!2286797 e!3339612)))

(declare-fun res!2286803 () Bool)

(assert (=> b!5384054 (=> (not res!2286803) (not e!3339612))))

(assert (=> b!5384054 (= res!2286803 ((_ is Concat!23964) (regOne!30750 r!7292)))))

(declare-fun b!5384055 () Bool)

(declare-fun res!2286812 () Bool)

(assert (=> b!5384055 (=> res!2286812 e!3339615)))

(declare-fun generalisedUnion!1048 (List!61657) Regex!15119)

(declare-fun unfocusZipperList!561 (List!61658) List!61657)

(assert (=> b!5384055 (= res!2286812 (not (= r!7292 (generalisedUnion!1048 (unfocusZipperList!561 zl!343)))))))

(declare-fun b!5384056 () Bool)

(declare-fun e!3339616 () Bool)

(assert (=> b!5384056 (= e!3339616 e!3339605)))

(declare-fun res!2286808 () Bool)

(assert (=> b!5384056 (=> (not res!2286808) (not e!3339605))))

(declare-fun lt!2192960 () Regex!15119)

(assert (=> b!5384056 (= res!2286808 (= r!7292 lt!2192960))))

(assert (=> b!5384056 (= lt!2192960 (unfocusZipper!861 zl!343))))

(declare-fun b!5384057 () Bool)

(declare-fun res!2286785 () Bool)

(declare-fun e!3339623 () Bool)

(assert (=> b!5384057 (=> res!2286785 e!3339623)))

(declare-fun isEmpty!33528 (List!61657) Bool)

(assert (=> b!5384057 (= res!2286785 (isEmpty!33528 (t!374880 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun b!5384058 () Bool)

(declare-fun e!3339613 () Unit!153994)

(declare-fun Unit!153996 () Unit!153994)

(assert (=> b!5384058 (= e!3339613 Unit!153996)))

(declare-fun lt!2192964 () Unit!153994)

(declare-fun lt!2192941 () (InoxSet Context!9006))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!356 ((InoxSet Context!9006) (InoxSet Context!9006) List!61656) Unit!153994)

(assert (=> b!5384058 (= lt!2192964 (lemmaZipperConcatMatchesSameAsBothZippers!356 lt!2192941 lt!2192956 (t!374879 s!2326)))))

(declare-fun res!2286796 () Bool)

(assert (=> b!5384058 (= res!2286796 (matchZipper!1363 lt!2192941 (t!374879 s!2326)))))

(assert (=> b!5384058 (=> res!2286796 e!3339624)))

(assert (=> b!5384058 (= (matchZipper!1363 ((_ map or) lt!2192941 lt!2192956) (t!374879 s!2326)) e!3339624)))

(declare-fun b!5384059 () Bool)

(declare-fun res!2286802 () Bool)

(assert (=> b!5384059 (=> res!2286802 e!3339626)))

(assert (=> b!5384059 (= res!2286802 (or ((_ is Concat!23964) (regOne!30750 r!7292)) (not ((_ is Star!15119) (regOne!30750 r!7292)))))))

(declare-fun b!5384060 () Bool)

(declare-fun res!2286807 () Bool)

(assert (=> b!5384060 (=> res!2286807 e!3339603)))

(assert (=> b!5384060 (= res!2286807 (not (matchR!7304 lt!2192923 (_2!35621 lt!2192921))))))

(declare-fun setIsEmpty!34949 () Bool)

(declare-fun setRes!34949 () Bool)

(assert (=> setIsEmpty!34949 setRes!34949))

(declare-fun b!5384061 () Bool)

(declare-fun e!3339609 () Bool)

(assert (=> b!5384061 (= e!3339609 e!3339621)))

(declare-fun res!2286800 () Bool)

(assert (=> b!5384061 (=> res!2286800 e!3339621)))

(declare-fun lt!2192957 () (InoxSet Context!9006))

(assert (=> b!5384061 (= res!2286800 (not (= lt!2192954 lt!2192957)))))

(declare-fun lambda!278999 () Int)

(declare-fun flatMap!846 ((InoxSet Context!9006) Int) (InoxSet Context!9006))

(declare-fun derivationStepZipperUp!491 (Context!9006 C!30508) (InoxSet Context!9006))

(assert (=> b!5384061 (= (flatMap!846 lt!2192938 lambda!278999) (derivationStepZipperUp!491 lt!2192925 (h!67980 s!2326)))))

(declare-fun lt!2192966 () Unit!153994)

(declare-fun lemmaFlatMapOnSingletonSet!378 ((InoxSet Context!9006) Context!9006 Int) Unit!153994)

(assert (=> b!5384061 (= lt!2192966 (lemmaFlatMapOnSingletonSet!378 lt!2192938 lt!2192925 lambda!278999))))

(declare-fun lt!2192932 () (InoxSet Context!9006))

(assert (=> b!5384061 (= lt!2192932 (derivationStepZipperUp!491 lt!2192925 (h!67980 s!2326)))))

(declare-fun derivationStepZipper!1358 ((InoxSet Context!9006) C!30508) (InoxSet Context!9006))

(assert (=> b!5384061 (= lt!2192954 (derivationStepZipper!1358 lt!2192938 (h!67980 s!2326)))))

(assert (=> b!5384061 (= lt!2192938 (store ((as const (Array Context!9006 Bool)) false) lt!2192925 true))))

(assert (=> b!5384061 (= lt!2192925 (Context!9007 (Cons!61533 (reg!15448 (regOne!30750 r!7292)) lt!2192940)))))

(declare-fun b!5384062 () Bool)

(declare-fun tp!1491860 () Bool)

(declare-fun tp!1491863 () Bool)

(assert (=> b!5384062 (= e!3339604 (and tp!1491860 tp!1491863))))

(declare-fun b!5384063 () Bool)

(declare-fun Unit!153997 () Unit!153994)

(assert (=> b!5384063 (= e!3339613 Unit!153997)))

(declare-fun b!5384064 () Bool)

(assert (=> b!5384064 (= e!3339621 e!3339614)))

(declare-fun res!2286791 () Bool)

(assert (=> b!5384064 (=> res!2286791 e!3339614)))

(assert (=> b!5384064 (= res!2286791 (not (= r!7292 lt!2192929)))))

(assert (=> b!5384064 (= lt!2192929 (Concat!23964 lt!2192923 (regTwo!30750 r!7292)))))

(declare-fun res!2286801 () Bool)

(assert (=> start!566006 (=> (not res!2286801) (not e!3339616))))

(assert (=> start!566006 (= res!2286801 (validRegex!6855 r!7292))))

(assert (=> start!566006 e!3339616))

(assert (=> start!566006 e!3339604))

(declare-fun condSetEmpty!34949 () Bool)

(declare-fun z!1189 () (InoxSet Context!9006))

(assert (=> start!566006 (= condSetEmpty!34949 (= z!1189 ((as const (Array Context!9006 Bool)) false)))))

(assert (=> start!566006 setRes!34949))

(assert (=> start!566006 e!3339610))

(assert (=> start!566006 e!3339620))

(declare-fun b!5384042 () Bool)

(declare-fun res!2286784 () Bool)

(assert (=> b!5384042 (=> res!2286784 e!3339615)))

(assert (=> b!5384042 (= res!2286784 (not ((_ is Cons!61533) (exprs!5003 (h!67982 zl!343)))))))

(declare-fun b!5384065 () Bool)

(declare-fun e!3339618 () Bool)

(assert (=> b!5384065 (= e!3339618 e!3339603)))

(declare-fun res!2286792 () Bool)

(assert (=> b!5384065 (=> res!2286792 e!3339603)))

(declare-fun lt!2192935 () List!61656)

(assert (=> b!5384065 (= res!2286792 (not (= lt!2192935 s!2326)))))

(assert (=> b!5384065 (= lt!2192935 lt!2192968)))

(assert (=> b!5384065 (= lt!2192968 (++!13424 (_1!35621 lt!2192921) lt!2192919))))

(assert (=> b!5384065 (= lt!2192935 (++!13424 lt!2192958 (_2!35621 lt!2192924)))))

(assert (=> b!5384065 (= lt!2192919 (++!13424 (_2!35621 lt!2192921) (_2!35621 lt!2192924)))))

(declare-fun lt!2192931 () Unit!153994)

(declare-fun lemmaConcatAssociativity!2816 (List!61656 List!61656 List!61656) Unit!153994)

(assert (=> b!5384065 (= lt!2192931 (lemmaConcatAssociativity!2816 (_1!35621 lt!2192921) (_2!35621 lt!2192921) (_2!35621 lt!2192924)))))

(declare-fun b!5384066 () Bool)

(declare-fun res!2286789 () Bool)

(assert (=> b!5384066 (=> res!2286789 e!3339622)))

(assert (=> b!5384066 (= res!2286789 (not (matchR!7304 lt!2192923 (_1!35621 lt!2192924))))))

(declare-fun b!5384067 () Bool)

(declare-fun res!2286794 () Bool)

(assert (=> b!5384067 (=> res!2286794 e!3339622)))

(assert (=> b!5384067 (= res!2286794 (not (matchR!7304 (regTwo!30750 r!7292) (_2!35621 lt!2192924))))))

(assert (=> b!5384068 (= e!3339615 e!3339623)))

(declare-fun res!2286786 () Bool)

(assert (=> b!5384068 (=> res!2286786 e!3339623)))

(declare-fun lt!2192951 () Bool)

(assert (=> b!5384068 (= res!2286786 (or (not (= lt!2192943 lt!2192951)) ((_ is Nil!61532) s!2326)))))

(assert (=> b!5384068 (= (Exists!2300 lambda!278997) (Exists!2300 lambda!278998))))

(declare-fun lt!2192955 () Unit!153994)

(assert (=> b!5384068 (= lt!2192955 (lemmaExistCutMatchRandMatchRSpecEquivalent!954 (regOne!30750 r!7292) (regTwo!30750 r!7292) s!2326))))

(assert (=> b!5384068 (= lt!2192951 (Exists!2300 lambda!278997))))

(assert (=> b!5384068 (= lt!2192951 (isDefined!11933 (findConcatSeparation!1644 (regOne!30750 r!7292) (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326)))))

(declare-fun lt!2192949 () Unit!153994)

(assert (=> b!5384068 (= lt!2192949 (lemmaFindConcatSeparationEquivalentToExists!1408 (regOne!30750 r!7292) (regTwo!30750 r!7292) s!2326))))

(assert (=> b!5384069 (= e!3339622 e!3339618)))

(declare-fun res!2286788 () Bool)

(assert (=> b!5384069 (=> res!2286788 e!3339618)))

(assert (=> b!5384069 (= res!2286788 (not (= (_1!35621 lt!2192924) lt!2192958)))))

(assert (=> b!5384069 (= lt!2192958 (++!13424 (_1!35621 lt!2192921) (_2!35621 lt!2192921)))))

(declare-fun lt!2192914 () Option!15230)

(assert (=> b!5384069 (= lt!2192921 (get!21187 lt!2192914))))

(assert (=> b!5384069 (= (Exists!2300 lambda!279002) (Exists!2300 lambda!279004))))

(declare-fun lt!2192918 () Unit!153994)

(assert (=> b!5384069 (= lt!2192918 (lemmaExistCutMatchRandMatchRSpecEquivalent!954 (reg!15448 (regOne!30750 r!7292)) lt!2192923 (_1!35621 lt!2192924)))))

(assert (=> b!5384069 (= (Exists!2300 lambda!279002) (Exists!2300 lambda!279003))))

(declare-fun lt!2192917 () Unit!153994)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!384 (Regex!15119 List!61656) Unit!153994)

(assert (=> b!5384069 (= lt!2192917 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!384 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192924)))))

(assert (=> b!5384069 (= (isDefined!11933 lt!2192914) (Exists!2300 lambda!279002))))

(assert (=> b!5384069 (= lt!2192914 (findConcatSeparation!1644 (reg!15448 (regOne!30750 r!7292)) lt!2192923 Nil!61532 (_1!35621 lt!2192924) (_1!35621 lt!2192924)))))

(declare-fun lt!2192970 () Unit!153994)

(assert (=> b!5384069 (= lt!2192970 (lemmaFindConcatSeparationEquivalentToExists!1408 (reg!15448 (regOne!30750 r!7292)) lt!2192923 (_1!35621 lt!2192924)))))

(assert (=> b!5384069 (matchRSpec!2222 lt!2192923 (_1!35621 lt!2192924))))

(declare-fun lt!2192936 () Unit!153994)

(assert (=> b!5384069 (= lt!2192936 (mainMatchTheorem!2222 lt!2192923 (_1!35621 lt!2192924)))))

(declare-fun b!5384070 () Bool)

(declare-fun tp!1491867 () Bool)

(assert (=> b!5384070 (= e!3339617 tp!1491867)))

(declare-fun b!5384071 () Bool)

(declare-fun res!2286804 () Bool)

(assert (=> b!5384071 (=> (not res!2286804) (not e!3339616))))

(declare-fun toList!8903 ((InoxSet Context!9006)) List!61658)

(assert (=> b!5384071 (= res!2286804 (= (toList!8903 z!1189) zl!343))))

(declare-fun b!5384072 () Bool)

(assert (=> b!5384072 (= e!3339626 e!3339609)))

(declare-fun res!2286787 () Bool)

(assert (=> b!5384072 (=> res!2286787 e!3339609)))

(assert (=> b!5384072 (= res!2286787 (not (= lt!2192941 lt!2192957)))))

(declare-fun derivationStepZipperDown!567 (Regex!15119 Context!9006 C!30508) (InoxSet Context!9006))

(assert (=> b!5384072 (= lt!2192957 (derivationStepZipperDown!567 (reg!15448 (regOne!30750 r!7292)) lt!2192969 (h!67980 s!2326)))))

(assert (=> b!5384072 (= lt!2192969 (Context!9007 lt!2192940))))

(assert (=> b!5384072 (= lt!2192940 (Cons!61533 lt!2192923 (t!374880 (exprs!5003 (h!67982 zl!343)))))))

(assert (=> b!5384072 (= lt!2192923 (Star!15119 (reg!15448 (regOne!30750 r!7292))))))

(declare-fun b!5384073 () Bool)

(declare-fun res!2286816 () Bool)

(assert (=> b!5384073 (=> res!2286816 e!3339621)))

(assert (=> b!5384073 (= res!2286816 (not (= lt!2192960 r!7292)))))

(declare-fun b!5384074 () Bool)

(assert (=> b!5384074 (= e!3339625 e!3339608)))

(declare-fun res!2286805 () Bool)

(assert (=> b!5384074 (=> res!2286805 e!3339608)))

(assert (=> b!5384074 (= res!2286805 (not (= (unfocusZipper!861 lt!2192928) (reg!15448 (regOne!30750 r!7292)))))))

(assert (=> b!5384074 (= lt!2192928 (Cons!61534 lt!2192967 Nil!61534))))

(assert (=> b!5384074 (= (flatMap!846 lt!2192920 lambda!278999) (derivationStepZipperUp!491 lt!2192969 (h!67980 s!2326)))))

(declare-fun lt!2192934 () Unit!153994)

(assert (=> b!5384074 (= lt!2192934 (lemmaFlatMapOnSingletonSet!378 lt!2192920 lt!2192969 lambda!278999))))

(assert (=> b!5384074 (= (flatMap!846 lt!2192953 lambda!278999) (derivationStepZipperUp!491 lt!2192967 (h!67980 s!2326)))))

(declare-fun lt!2192947 () Unit!153994)

(assert (=> b!5384074 (= lt!2192947 (lemmaFlatMapOnSingletonSet!378 lt!2192953 lt!2192967 lambda!278999))))

(declare-fun lt!2192927 () (InoxSet Context!9006))

(assert (=> b!5384074 (= lt!2192927 (derivationStepZipperUp!491 lt!2192969 (h!67980 s!2326)))))

(declare-fun lt!2192915 () (InoxSet Context!9006))

(assert (=> b!5384074 (= lt!2192915 (derivationStepZipperUp!491 lt!2192967 (h!67980 s!2326)))))

(assert (=> b!5384074 (= lt!2192920 (store ((as const (Array Context!9006 Bool)) false) lt!2192969 true))))

(assert (=> b!5384074 (= lt!2192953 (store ((as const (Array Context!9006 Bool)) false) lt!2192967 true))))

(assert (=> b!5384074 (= lt!2192967 (Context!9007 lt!2192950))))

(assert (=> b!5384074 (= lt!2192950 (Cons!61533 (reg!15448 (regOne!30750 r!7292)) Nil!61533))))

(declare-fun setNonEmpty!34949 () Bool)

(declare-fun tp!1491866 () Bool)

(declare-fun setElem!34949 () Context!9006)

(assert (=> setNonEmpty!34949 (= setRes!34949 (and tp!1491866 (inv!81044 setElem!34949) e!3339611))))

(declare-fun setRest!34949 () (InoxSet Context!9006))

(assert (=> setNonEmpty!34949 (= z!1189 ((_ map or) (store ((as const (Array Context!9006 Bool)) false) setElem!34949 true) setRest!34949))))

(assert (=> b!5384075 (= e!3339623 e!3339626)))

(declare-fun res!2286790 () Bool)

(assert (=> b!5384075 (=> res!2286790 e!3339626)))

(assert (=> b!5384075 (= res!2286790 (or (and ((_ is ElementMatch!15119) (regOne!30750 r!7292)) (= (c!938207 (regOne!30750 r!7292)) (h!67980 s!2326))) ((_ is Union!15119) (regOne!30750 r!7292))))))

(declare-fun lt!2192946 () Unit!153994)

(assert (=> b!5384075 (= lt!2192946 e!3339613)))

(declare-fun c!938206 () Bool)

(assert (=> b!5384075 (= c!938206 (nullable!5288 (h!67981 (exprs!5003 (h!67982 zl!343)))))))

(assert (=> b!5384075 (= (flatMap!846 z!1189 lambda!278999) (derivationStepZipperUp!491 (h!67982 zl!343) (h!67980 s!2326)))))

(declare-fun lt!2192926 () Unit!153994)

(assert (=> b!5384075 (= lt!2192926 (lemmaFlatMapOnSingletonSet!378 z!1189 (h!67982 zl!343) lambda!278999))))

(declare-fun lt!2192959 () Context!9006)

(assert (=> b!5384075 (= lt!2192956 (derivationStepZipperUp!491 lt!2192959 (h!67980 s!2326)))))

(assert (=> b!5384075 (= lt!2192941 (derivationStepZipperDown!567 (h!67981 (exprs!5003 (h!67982 zl!343))) lt!2192959 (h!67980 s!2326)))))

(assert (=> b!5384075 (= lt!2192959 (Context!9007 (t!374880 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun lt!2192945 () (InoxSet Context!9006))

(assert (=> b!5384075 (= lt!2192945 (derivationStepZipperUp!491 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343))))) (h!67980 s!2326)))))

(assert (= (and start!566006 res!2286801) b!5384071))

(assert (= (and b!5384071 res!2286804) b!5384056))

(assert (= (and b!5384056 res!2286808) b!5384041))

(assert (= (and b!5384041 (not res!2286809)) b!5384044))

(assert (= (and b!5384044 (not res!2286815)) b!5384040))

(assert (= (and b!5384040 (not res!2286793)) b!5384042))

(assert (= (and b!5384042 (not res!2286784)) b!5384055))

(assert (= (and b!5384055 (not res!2286812)) b!5384035))

(assert (= (and b!5384035 (not res!2286798)) b!5384068))

(assert (= (and b!5384068 (not res!2286786)) b!5384057))

(assert (= (and b!5384057 (not res!2286785)) b!5384075))

(assert (= (and b!5384075 c!938206) b!5384058))

(assert (= (and b!5384075 (not c!938206)) b!5384063))

(assert (= (and b!5384058 (not res!2286796)) b!5384034))

(assert (= (and b!5384075 (not res!2286790)) b!5384054))

(assert (= (and b!5384054 res!2286803) b!5384052))

(assert (= (and b!5384054 (not res!2286797)) b!5384059))

(assert (= (and b!5384059 (not res!2286802)) b!5384072))

(assert (= (and b!5384072 (not res!2286787)) b!5384061))

(assert (= (and b!5384061 (not res!2286800)) b!5384051))

(assert (= (and b!5384051 (not res!2286814)) b!5384073))

(assert (= (and b!5384073 (not res!2286816)) b!5384064))

(assert (= (and b!5384064 (not res!2286791)) b!5384048))

(assert (= (and b!5384048 (not res!2286795)) b!5384074))

(assert (= (and b!5384074 (not res!2286805)) b!5384038))

(assert (= (and b!5384038 (not res!2286813)) b!5384053))

(assert (= (and b!5384053 res!2286811) b!5384033))

(assert (= (and b!5384053 (not res!2286817)) b!5384045))

(assert (= (and b!5384045 (not res!2286806)) b!5384066))

(assert (= (and b!5384066 (not res!2286789)) b!5384067))

(assert (= (and b!5384067 (not res!2286794)) b!5384046))

(assert (= (and b!5384046 (not res!2286810)) b!5384069))

(assert (= (and b!5384069 (not res!2286788)) b!5384065))

(assert (= (and b!5384065 (not res!2286792)) b!5384047))

(assert (= (and b!5384047 (not res!2286799)) b!5384060))

(assert (= (and b!5384060 (not res!2286807)) b!5384039))

(assert (= (and start!566006 ((_ is ElementMatch!15119) r!7292)) b!5384037))

(assert (= (and start!566006 ((_ is Concat!23964) r!7292)) b!5384062))

(assert (= (and start!566006 ((_ is Star!15119) r!7292)) b!5384050))

(assert (= (and start!566006 ((_ is Union!15119) r!7292)) b!5384043))

(assert (= (and start!566006 condSetEmpty!34949) setIsEmpty!34949))

(assert (= (and start!566006 (not condSetEmpty!34949)) setNonEmpty!34949))

(assert (= setNonEmpty!34949 b!5384036))

(assert (= b!5384032 b!5384070))

(assert (= (and start!566006 ((_ is Cons!61534) zl!343)) b!5384032))

(assert (= (and start!566006 ((_ is Cons!61532) s!2326)) b!5384049))

(declare-fun m!6409752 () Bool)

(assert (=> b!5384048 m!6409752))

(declare-fun m!6409754 () Bool)

(assert (=> b!5384032 m!6409754))

(declare-fun m!6409756 () Bool)

(assert (=> b!5384047 m!6409756))

(declare-fun m!6409758 () Bool)

(assert (=> b!5384060 m!6409758))

(declare-fun m!6409760 () Bool)

(assert (=> b!5384045 m!6409760))

(declare-fun m!6409762 () Bool)

(assert (=> b!5384045 m!6409762))

(assert (=> b!5384045 m!6409762))

(declare-fun m!6409764 () Bool)

(assert (=> b!5384045 m!6409764))

(declare-fun m!6409766 () Bool)

(assert (=> b!5384045 m!6409766))

(declare-fun m!6409768 () Bool)

(assert (=> b!5384045 m!6409768))

(declare-fun m!6409770 () Bool)

(assert (=> b!5384045 m!6409770))

(declare-fun m!6409772 () Bool)

(assert (=> b!5384045 m!6409772))

(declare-fun m!6409774 () Bool)

(assert (=> b!5384045 m!6409774))

(declare-fun m!6409776 () Bool)

(assert (=> b!5384040 m!6409776))

(declare-fun m!6409778 () Bool)

(assert (=> b!5384044 m!6409778))

(declare-fun m!6409780 () Bool)

(assert (=> b!5384066 m!6409780))

(declare-fun m!6409782 () Bool)

(assert (=> b!5384051 m!6409782))

(declare-fun m!6409784 () Bool)

(assert (=> b!5384051 m!6409784))

(declare-fun m!6409786 () Bool)

(assert (=> b!5384057 m!6409786))

(declare-fun m!6409788 () Bool)

(assert (=> b!5384075 m!6409788))

(declare-fun m!6409790 () Bool)

(assert (=> b!5384075 m!6409790))

(declare-fun m!6409792 () Bool)

(assert (=> b!5384075 m!6409792))

(declare-fun m!6409794 () Bool)

(assert (=> b!5384075 m!6409794))

(declare-fun m!6409796 () Bool)

(assert (=> b!5384075 m!6409796))

(declare-fun m!6409798 () Bool)

(assert (=> b!5384075 m!6409798))

(declare-fun m!6409800 () Bool)

(assert (=> b!5384075 m!6409800))

(declare-fun m!6409802 () Bool)

(assert (=> b!5384039 m!6409802))

(declare-fun m!6409804 () Bool)

(assert (=> b!5384039 m!6409804))

(declare-fun m!6409806 () Bool)

(assert (=> b!5384039 m!6409806))

(declare-fun m!6409808 () Bool)

(assert (=> b!5384039 m!6409808))

(declare-fun m!6409810 () Bool)

(assert (=> b!5384039 m!6409810))

(declare-fun m!6409812 () Bool)

(assert (=> b!5384039 m!6409812))

(declare-fun m!6409814 () Bool)

(assert (=> b!5384039 m!6409814))

(declare-fun m!6409816 () Bool)

(assert (=> b!5384039 m!6409816))

(declare-fun m!6409818 () Bool)

(assert (=> b!5384039 m!6409818))

(assert (=> b!5384039 m!6409812))

(declare-fun m!6409820 () Bool)

(assert (=> b!5384039 m!6409820))

(declare-fun m!6409822 () Bool)

(assert (=> b!5384039 m!6409822))

(declare-fun m!6409824 () Bool)

(assert (=> b!5384039 m!6409824))

(declare-fun m!6409826 () Bool)

(assert (=> b!5384039 m!6409826))

(declare-fun m!6409828 () Bool)

(assert (=> b!5384039 m!6409828))

(declare-fun m!6409830 () Bool)

(assert (=> b!5384065 m!6409830))

(declare-fun m!6409832 () Bool)

(assert (=> b!5384065 m!6409832))

(declare-fun m!6409834 () Bool)

(assert (=> b!5384065 m!6409834))

(declare-fun m!6409836 () Bool)

(assert (=> b!5384065 m!6409836))

(declare-fun m!6409838 () Bool)

(assert (=> b!5384056 m!6409838))

(declare-fun m!6409840 () Bool)

(assert (=> b!5384055 m!6409840))

(assert (=> b!5384055 m!6409840))

(declare-fun m!6409842 () Bool)

(assert (=> b!5384055 m!6409842))

(declare-fun m!6409844 () Bool)

(assert (=> b!5384067 m!6409844))

(declare-fun m!6409846 () Bool)

(assert (=> b!5384068 m!6409846))

(declare-fun m!6409848 () Bool)

(assert (=> b!5384068 m!6409848))

(declare-fun m!6409850 () Bool)

(assert (=> b!5384068 m!6409850))

(declare-fun m!6409852 () Bool)

(assert (=> b!5384068 m!6409852))

(assert (=> b!5384068 m!6409848))

(declare-fun m!6409854 () Bool)

(assert (=> b!5384068 m!6409854))

(declare-fun m!6409856 () Bool)

(assert (=> b!5384068 m!6409856))

(assert (=> b!5384068 m!6409856))

(declare-fun m!6409858 () Bool)

(assert (=> b!5384072 m!6409858))

(declare-fun m!6409860 () Bool)

(assert (=> b!5384038 m!6409860))

(declare-fun m!6409862 () Bool)

(assert (=> b!5384053 m!6409862))

(declare-fun m!6409864 () Bool)

(assert (=> b!5384053 m!6409864))

(declare-fun m!6409866 () Bool)

(assert (=> b!5384053 m!6409866))

(declare-fun m!6409868 () Bool)

(assert (=> setNonEmpty!34949 m!6409868))

(declare-fun m!6409870 () Bool)

(assert (=> b!5384046 m!6409870))

(declare-fun m!6409872 () Bool)

(assert (=> b!5384034 m!6409872))

(declare-fun m!6409874 () Bool)

(assert (=> b!5384071 m!6409874))

(declare-fun m!6409876 () Bool)

(assert (=> b!5384052 m!6409876))

(declare-fun m!6409878 () Bool)

(assert (=> b!5384058 m!6409878))

(declare-fun m!6409880 () Bool)

(assert (=> b!5384058 m!6409880))

(declare-fun m!6409882 () Bool)

(assert (=> b!5384058 m!6409882))

(declare-fun m!6409884 () Bool)

(assert (=> b!5384041 m!6409884))

(declare-fun m!6409886 () Bool)

(assert (=> b!5384041 m!6409886))

(declare-fun m!6409888 () Bool)

(assert (=> b!5384041 m!6409888))

(declare-fun m!6409890 () Bool)

(assert (=> b!5384069 m!6409890))

(declare-fun m!6409892 () Bool)

(assert (=> b!5384069 m!6409892))

(declare-fun m!6409894 () Bool)

(assert (=> b!5384069 m!6409894))

(declare-fun m!6409896 () Bool)

(assert (=> b!5384069 m!6409896))

(declare-fun m!6409898 () Bool)

(assert (=> b!5384069 m!6409898))

(declare-fun m!6409900 () Bool)

(assert (=> b!5384069 m!6409900))

(declare-fun m!6409902 () Bool)

(assert (=> b!5384069 m!6409902))

(declare-fun m!6409904 () Bool)

(assert (=> b!5384069 m!6409904))

(declare-fun m!6409906 () Bool)

(assert (=> b!5384069 m!6409906))

(declare-fun m!6409908 () Bool)

(assert (=> b!5384069 m!6409908))

(assert (=> b!5384069 m!6409908))

(declare-fun m!6409910 () Bool)

(assert (=> b!5384069 m!6409910))

(declare-fun m!6409912 () Bool)

(assert (=> b!5384069 m!6409912))

(assert (=> b!5384069 m!6409908))

(declare-fun m!6409914 () Bool)

(assert (=> start!566006 m!6409914))

(declare-fun m!6409916 () Bool)

(assert (=> b!5384074 m!6409916))

(declare-fun m!6409918 () Bool)

(assert (=> b!5384074 m!6409918))

(declare-fun m!6409920 () Bool)

(assert (=> b!5384074 m!6409920))

(declare-fun m!6409922 () Bool)

(assert (=> b!5384074 m!6409922))

(declare-fun m!6409924 () Bool)

(assert (=> b!5384074 m!6409924))

(declare-fun m!6409926 () Bool)

(assert (=> b!5384074 m!6409926))

(declare-fun m!6409928 () Bool)

(assert (=> b!5384074 m!6409928))

(declare-fun m!6409930 () Bool)

(assert (=> b!5384074 m!6409930))

(declare-fun m!6409932 () Bool)

(assert (=> b!5384074 m!6409932))

(declare-fun m!6409934 () Bool)

(assert (=> b!5384061 m!6409934))

(declare-fun m!6409936 () Bool)

(assert (=> b!5384061 m!6409936))

(declare-fun m!6409938 () Bool)

(assert (=> b!5384061 m!6409938))

(declare-fun m!6409940 () Bool)

(assert (=> b!5384061 m!6409940))

(declare-fun m!6409942 () Bool)

(assert (=> b!5384061 m!6409942))

(check-sat (not start!566006) (not b!5384058) (not b!5384047) (not b!5384045) (not b!5384041) (not b!5384068) (not b!5384060) (not setNonEmpty!34949) (not b!5384062) (not b!5384049) (not b!5384040) tp_is_empty!39491 (not b!5384039) (not b!5384044) (not b!5384057) (not b!5384050) (not b!5384055) (not b!5384053) (not b!5384061) (not b!5384043) (not b!5384052) (not b!5384065) (not b!5384069) (not b!5384072) (not b!5384048) (not b!5384071) (not b!5384056) (not b!5384046) (not b!5384070) (not b!5384074) (not b!5384067) (not b!5384036) (not b!5384066) (not b!5384034) (not b!5384032) (not b!5384038) (not b!5384075) (not b!5384051))
(check-sat)
(get-model)

(declare-fun bs!1246209 () Bool)

(declare-fun d!1722303 () Bool)

(assert (= bs!1246209 (and d!1722303 b!5384069)))

(declare-fun lambda!279036 () Int)

(assert (=> bs!1246209 (= (= (Star!15119 (reg!15448 (regOne!30750 r!7292))) lt!2192923) (= lambda!279036 lambda!279002))))

(declare-fun bs!1246210 () Bool)

(assert (= bs!1246210 (and d!1722303 b!5384045)))

(assert (=> bs!1246210 (not (= lambda!279036 lambda!279001))))

(declare-fun bs!1246211 () Bool)

(assert (= bs!1246211 (and d!1722303 b!5384068)))

(assert (=> bs!1246211 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) (regOne!30750 r!7292)) (= (Star!15119 (reg!15448 (regOne!30750 r!7292))) (regTwo!30750 r!7292))) (= lambda!279036 lambda!278997))))

(assert (=> bs!1246209 (not (= lambda!279036 lambda!279003))))

(assert (=> bs!1246210 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) lt!2192923) (= (Star!15119 (reg!15448 (regOne!30750 r!7292))) (regTwo!30750 r!7292))) (= lambda!279036 lambda!279000))))

(assert (=> bs!1246211 (not (= lambda!279036 lambda!278998))))

(assert (=> bs!1246209 (not (= lambda!279036 lambda!279004))))

(assert (=> d!1722303 true))

(assert (=> d!1722303 true))

(declare-fun bs!1246223 () Bool)

(assert (= bs!1246223 d!1722303))

(declare-fun lambda!279038 () Int)

(assert (=> bs!1246223 (not (= lambda!279038 lambda!279036))))

(assert (=> bs!1246209 (not (= lambda!279038 lambda!279002))))

(assert (=> bs!1246210 (not (= lambda!279038 lambda!279001))))

(assert (=> bs!1246211 (not (= lambda!279038 lambda!278997))))

(assert (=> bs!1246209 (= (= (Star!15119 (reg!15448 (regOne!30750 r!7292))) lt!2192923) (= lambda!279038 lambda!279003))))

(assert (=> bs!1246210 (not (= lambda!279038 lambda!279000))))

(assert (=> bs!1246211 (not (= lambda!279038 lambda!278998))))

(assert (=> bs!1246209 (not (= lambda!279038 lambda!279004))))

(assert (=> d!1722303 true))

(assert (=> d!1722303 true))

(assert (=> d!1722303 (= (Exists!2300 lambda!279036) (Exists!2300 lambda!279038))))

(declare-fun lt!2193008 () Unit!153994)

(declare-fun choose!40468 (Regex!15119 List!61656) Unit!153994)

(assert (=> d!1722303 (= lt!2193008 (choose!40468 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192924)))))

(assert (=> d!1722303 (validRegex!6855 (reg!15448 (regOne!30750 r!7292)))))

(assert (=> d!1722303 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!384 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192924)) lt!2193008)))

(declare-fun m!6410124 () Bool)

(assert (=> bs!1246223 m!6410124))

(declare-fun m!6410126 () Bool)

(assert (=> bs!1246223 m!6410126))

(declare-fun m!6410128 () Bool)

(assert (=> bs!1246223 m!6410128))

(assert (=> bs!1246223 m!6409802))

(assert (=> b!5384069 d!1722303))

(declare-fun bs!1246257 () Bool)

(declare-fun b!5384451 () Bool)

(assert (= bs!1246257 (and b!5384451 d!1722303)))

(declare-fun lambda!279050 () Int)

(assert (=> bs!1246257 (not (= lambda!279050 lambda!279036))))

(declare-fun bs!1246258 () Bool)

(assert (= bs!1246258 (and b!5384451 b!5384069)))

(assert (=> bs!1246258 (not (= lambda!279050 lambda!279002))))

(declare-fun bs!1246259 () Bool)

(assert (= bs!1246259 (and b!5384451 b!5384045)))

(assert (=> bs!1246259 (not (= lambda!279050 lambda!279001))))

(declare-fun bs!1246260 () Bool)

(assert (= bs!1246260 (and b!5384451 b!5384068)))

(assert (=> bs!1246260 (not (= lambda!279050 lambda!278997))))

(assert (=> bs!1246258 (= (= (reg!15448 lt!2192923) (reg!15448 (regOne!30750 r!7292))) (= lambda!279050 lambda!279003))))

(assert (=> bs!1246259 (not (= lambda!279050 lambda!279000))))

(assert (=> bs!1246260 (not (= lambda!279050 lambda!278998))))

(assert (=> bs!1246258 (not (= lambda!279050 lambda!279004))))

(assert (=> bs!1246257 (= (and (= (reg!15448 lt!2192923) (reg!15448 (regOne!30750 r!7292))) (= lt!2192923 (Star!15119 (reg!15448 (regOne!30750 r!7292))))) (= lambda!279050 lambda!279038))))

(assert (=> b!5384451 true))

(assert (=> b!5384451 true))

(declare-fun bs!1246265 () Bool)

(declare-fun b!5384443 () Bool)

(assert (= bs!1246265 (and b!5384443 d!1722303)))

(declare-fun lambda!279052 () Int)

(assert (=> bs!1246265 (not (= lambda!279052 lambda!279036))))

(declare-fun bs!1246266 () Bool)

(assert (= bs!1246266 (and b!5384443 b!5384069)))

(assert (=> bs!1246266 (not (= lambda!279052 lambda!279002))))

(declare-fun bs!1246267 () Bool)

(assert (= bs!1246267 (and b!5384443 b!5384045)))

(assert (=> bs!1246267 (= (and (= (_1!35621 lt!2192924) s!2326) (= (regOne!30750 lt!2192923) lt!2192923) (= (regTwo!30750 lt!2192923) (regTwo!30750 r!7292))) (= lambda!279052 lambda!279001))))

(declare-fun bs!1246268 () Bool)

(assert (= bs!1246268 (and b!5384443 b!5384451)))

(assert (=> bs!1246268 (not (= lambda!279052 lambda!279050))))

(declare-fun bs!1246269 () Bool)

(assert (= bs!1246269 (and b!5384443 b!5384068)))

(assert (=> bs!1246269 (not (= lambda!279052 lambda!278997))))

(assert (=> bs!1246266 (not (= lambda!279052 lambda!279003))))

(assert (=> bs!1246267 (not (= lambda!279052 lambda!279000))))

(assert (=> bs!1246269 (= (and (= (_1!35621 lt!2192924) s!2326) (= (regOne!30750 lt!2192923) (regOne!30750 r!7292)) (= (regTwo!30750 lt!2192923) (regTwo!30750 r!7292))) (= lambda!279052 lambda!278998))))

(assert (=> bs!1246266 (= (and (= (regOne!30750 lt!2192923) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 lt!2192923) lt!2192923)) (= lambda!279052 lambda!279004))))

(assert (=> bs!1246265 (not (= lambda!279052 lambda!279038))))

(assert (=> b!5384443 true))

(assert (=> b!5384443 true))

(declare-fun b!5384442 () Bool)

(declare-fun e!3339824 () Bool)

(declare-fun call!385476 () Bool)

(assert (=> b!5384442 (= e!3339824 call!385476)))

(declare-fun e!3339823 () Bool)

(declare-fun call!385477 () Bool)

(assert (=> b!5384443 (= e!3339823 call!385477)))

(declare-fun b!5384444 () Bool)

(declare-fun e!3339820 () Bool)

(assert (=> b!5384444 (= e!3339820 (= (_1!35621 lt!2192924) (Cons!61532 (c!938207 lt!2192923) Nil!61532)))))

(declare-fun b!5384445 () Bool)

(declare-fun c!938304 () Bool)

(assert (=> b!5384445 (= c!938304 ((_ is ElementMatch!15119) lt!2192923))))

(declare-fun e!3339825 () Bool)

(assert (=> b!5384445 (= e!3339825 e!3339820)))

(declare-fun bm!385471 () Bool)

(declare-fun c!938305 () Bool)

(assert (=> bm!385471 (= call!385477 (Exists!2300 (ite c!938305 lambda!279050 lambda!279052)))))

(declare-fun b!5384446 () Bool)

(declare-fun e!3339822 () Bool)

(assert (=> b!5384446 (= e!3339822 e!3339823)))

(assert (=> b!5384446 (= c!938305 ((_ is Star!15119) lt!2192923))))

(declare-fun d!1722323 () Bool)

(declare-fun c!938307 () Bool)

(assert (=> d!1722323 (= c!938307 ((_ is EmptyExpr!15119) lt!2192923))))

(assert (=> d!1722323 (= (matchRSpec!2222 lt!2192923 (_1!35621 lt!2192924)) e!3339824)))

(declare-fun b!5384447 () Bool)

(declare-fun res!2286984 () Bool)

(declare-fun e!3339826 () Bool)

(assert (=> b!5384447 (=> res!2286984 e!3339826)))

(assert (=> b!5384447 (= res!2286984 call!385476)))

(assert (=> b!5384447 (= e!3339823 e!3339826)))

(declare-fun bm!385472 () Bool)

(assert (=> bm!385472 (= call!385476 (isEmpty!33527 (_1!35621 lt!2192924)))))

(declare-fun b!5384448 () Bool)

(declare-fun e!3339821 () Bool)

(assert (=> b!5384448 (= e!3339822 e!3339821)))

(declare-fun res!2286986 () Bool)

(assert (=> b!5384448 (= res!2286986 (matchRSpec!2222 (regOne!30751 lt!2192923) (_1!35621 lt!2192924)))))

(assert (=> b!5384448 (=> res!2286986 e!3339821)))

(declare-fun b!5384449 () Bool)

(declare-fun c!938306 () Bool)

(assert (=> b!5384449 (= c!938306 ((_ is Union!15119) lt!2192923))))

(assert (=> b!5384449 (= e!3339820 e!3339822)))

(declare-fun b!5384450 () Bool)

(assert (=> b!5384450 (= e!3339824 e!3339825)))

(declare-fun res!2286985 () Bool)

(assert (=> b!5384450 (= res!2286985 (not ((_ is EmptyLang!15119) lt!2192923)))))

(assert (=> b!5384450 (=> (not res!2286985) (not e!3339825))))

(assert (=> b!5384451 (= e!3339826 call!385477)))

(declare-fun b!5384452 () Bool)

(assert (=> b!5384452 (= e!3339821 (matchRSpec!2222 (regTwo!30751 lt!2192923) (_1!35621 lt!2192924)))))

(assert (= (and d!1722323 c!938307) b!5384442))

(assert (= (and d!1722323 (not c!938307)) b!5384450))

(assert (= (and b!5384450 res!2286985) b!5384445))

(assert (= (and b!5384445 c!938304) b!5384444))

(assert (= (and b!5384445 (not c!938304)) b!5384449))

(assert (= (and b!5384449 c!938306) b!5384448))

(assert (= (and b!5384449 (not c!938306)) b!5384446))

(assert (= (and b!5384448 (not res!2286986)) b!5384452))

(assert (= (and b!5384446 c!938305) b!5384447))

(assert (= (and b!5384446 (not c!938305)) b!5384443))

(assert (= (and b!5384447 (not res!2286984)) b!5384451))

(assert (= (or b!5384451 b!5384443) bm!385471))

(assert (= (or b!5384442 b!5384447) bm!385472))

(declare-fun m!6410252 () Bool)

(assert (=> bm!385471 m!6410252))

(assert (=> bm!385472 m!6409870))

(declare-fun m!6410256 () Bool)

(assert (=> b!5384448 m!6410256))

(declare-fun m!6410260 () Bool)

(assert (=> b!5384452 m!6410260))

(assert (=> b!5384069 d!1722323))

(declare-fun b!5384515 () Bool)

(declare-fun e!3339861 () List!61656)

(assert (=> b!5384515 (= e!3339861 (_2!35621 lt!2192921))))

(declare-fun b!5384516 () Bool)

(assert (=> b!5384516 (= e!3339861 (Cons!61532 (h!67980 (_1!35621 lt!2192921)) (++!13424 (t!374879 (_1!35621 lt!2192921)) (_2!35621 lt!2192921))))))

(declare-fun b!5384517 () Bool)

(declare-fun res!2287008 () Bool)

(declare-fun e!3339862 () Bool)

(assert (=> b!5384517 (=> (not res!2287008) (not e!3339862))))

(declare-fun lt!2193029 () List!61656)

(declare-fun size!39806 (List!61656) Int)

(assert (=> b!5384517 (= res!2287008 (= (size!39806 lt!2193029) (+ (size!39806 (_1!35621 lt!2192921)) (size!39806 (_2!35621 lt!2192921)))))))

(declare-fun d!1722357 () Bool)

(assert (=> d!1722357 e!3339862))

(declare-fun res!2287007 () Bool)

(assert (=> d!1722357 (=> (not res!2287007) (not e!3339862))))

(declare-fun content!11005 (List!61656) (InoxSet C!30508))

(assert (=> d!1722357 (= res!2287007 (= (content!11005 lt!2193029) ((_ map or) (content!11005 (_1!35621 lt!2192921)) (content!11005 (_2!35621 lt!2192921)))))))

(assert (=> d!1722357 (= lt!2193029 e!3339861)))

(declare-fun c!938329 () Bool)

(assert (=> d!1722357 (= c!938329 ((_ is Nil!61532) (_1!35621 lt!2192921)))))

(assert (=> d!1722357 (= (++!13424 (_1!35621 lt!2192921) (_2!35621 lt!2192921)) lt!2193029)))

(declare-fun b!5384518 () Bool)

(assert (=> b!5384518 (= e!3339862 (or (not (= (_2!35621 lt!2192921) Nil!61532)) (= lt!2193029 (_1!35621 lt!2192921))))))

(assert (= (and d!1722357 c!938329) b!5384515))

(assert (= (and d!1722357 (not c!938329)) b!5384516))

(assert (= (and d!1722357 res!2287007) b!5384517))

(assert (= (and b!5384517 res!2287008) b!5384518))

(declare-fun m!6410298 () Bool)

(assert (=> b!5384516 m!6410298))

(declare-fun m!6410300 () Bool)

(assert (=> b!5384517 m!6410300))

(declare-fun m!6410302 () Bool)

(assert (=> b!5384517 m!6410302))

(declare-fun m!6410304 () Bool)

(assert (=> b!5384517 m!6410304))

(declare-fun m!6410306 () Bool)

(assert (=> d!1722357 m!6410306))

(declare-fun m!6410308 () Bool)

(assert (=> d!1722357 m!6410308))

(declare-fun m!6410310 () Bool)

(assert (=> d!1722357 m!6410310))

(assert (=> b!5384069 d!1722357))

(declare-fun bs!1246307 () Bool)

(declare-fun d!1722375 () Bool)

(assert (= bs!1246307 (and d!1722375 d!1722303)))

(declare-fun lambda!279058 () Int)

(assert (=> bs!1246307 (= (= lt!2192923 (Star!15119 (reg!15448 (regOne!30750 r!7292)))) (= lambda!279058 lambda!279036))))

(declare-fun bs!1246308 () Bool)

(assert (= bs!1246308 (and d!1722375 b!5384069)))

(assert (=> bs!1246308 (= lambda!279058 lambda!279002)))

(declare-fun bs!1246309 () Bool)

(assert (= bs!1246309 (and d!1722375 b!5384045)))

(assert (=> bs!1246309 (not (= lambda!279058 lambda!279001))))

(declare-fun bs!1246310 () Bool)

(assert (= bs!1246310 (and d!1722375 b!5384451)))

(assert (=> bs!1246310 (not (= lambda!279058 lambda!279050))))

(declare-fun bs!1246311 () Bool)

(assert (= bs!1246311 (and d!1722375 b!5384068)))

(assert (=> bs!1246311 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) (regOne!30750 r!7292)) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279058 lambda!278997))))

(assert (=> bs!1246308 (not (= lambda!279058 lambda!279003))))

(assert (=> bs!1246309 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) lt!2192923) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279058 lambda!279000))))

(declare-fun bs!1246312 () Bool)

(assert (= bs!1246312 (and d!1722375 b!5384443)))

(assert (=> bs!1246312 (not (= lambda!279058 lambda!279052))))

(assert (=> bs!1246311 (not (= lambda!279058 lambda!278998))))

(assert (=> bs!1246308 (not (= lambda!279058 lambda!279004))))

(assert (=> bs!1246307 (not (= lambda!279058 lambda!279038))))

(assert (=> d!1722375 true))

(assert (=> d!1722375 true))

(assert (=> d!1722375 true))

(assert (=> d!1722375 (= (isDefined!11933 (findConcatSeparation!1644 (reg!15448 (regOne!30750 r!7292)) lt!2192923 Nil!61532 (_1!35621 lt!2192924) (_1!35621 lt!2192924))) (Exists!2300 lambda!279058))))

(declare-fun lt!2193033 () Unit!153994)

(declare-fun choose!40470 (Regex!15119 Regex!15119 List!61656) Unit!153994)

(assert (=> d!1722375 (= lt!2193033 (choose!40470 (reg!15448 (regOne!30750 r!7292)) lt!2192923 (_1!35621 lt!2192924)))))

(assert (=> d!1722375 (validRegex!6855 (reg!15448 (regOne!30750 r!7292)))))

(assert (=> d!1722375 (= (lemmaFindConcatSeparationEquivalentToExists!1408 (reg!15448 (regOne!30750 r!7292)) lt!2192923 (_1!35621 lt!2192924)) lt!2193033)))

(declare-fun bs!1246313 () Bool)

(assert (= bs!1246313 d!1722375))

(assert (=> bs!1246313 m!6409900))

(assert (=> bs!1246313 m!6409900))

(declare-fun m!6410352 () Bool)

(assert (=> bs!1246313 m!6410352))

(declare-fun m!6410354 () Bool)

(assert (=> bs!1246313 m!6410354))

(declare-fun m!6410356 () Bool)

(assert (=> bs!1246313 m!6410356))

(assert (=> bs!1246313 m!6409802))

(assert (=> b!5384069 d!1722375))

(declare-fun bs!1246316 () Bool)

(declare-fun d!1722389 () Bool)

(assert (= bs!1246316 (and d!1722389 d!1722375)))

(declare-fun lambda!279065 () Int)

(assert (=> bs!1246316 (= lambda!279065 lambda!279058)))

(declare-fun bs!1246317 () Bool)

(assert (= bs!1246317 (and d!1722389 d!1722303)))

(assert (=> bs!1246317 (= (= lt!2192923 (Star!15119 (reg!15448 (regOne!30750 r!7292)))) (= lambda!279065 lambda!279036))))

(declare-fun bs!1246318 () Bool)

(assert (= bs!1246318 (and d!1722389 b!5384069)))

(assert (=> bs!1246318 (= lambda!279065 lambda!279002)))

(declare-fun bs!1246319 () Bool)

(assert (= bs!1246319 (and d!1722389 b!5384045)))

(assert (=> bs!1246319 (not (= lambda!279065 lambda!279001))))

(declare-fun bs!1246320 () Bool)

(assert (= bs!1246320 (and d!1722389 b!5384451)))

(assert (=> bs!1246320 (not (= lambda!279065 lambda!279050))))

(declare-fun bs!1246321 () Bool)

(assert (= bs!1246321 (and d!1722389 b!5384068)))

(assert (=> bs!1246321 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) (regOne!30750 r!7292)) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279065 lambda!278997))))

(assert (=> bs!1246318 (not (= lambda!279065 lambda!279003))))

(assert (=> bs!1246319 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) lt!2192923) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279065 lambda!279000))))

(declare-fun bs!1246322 () Bool)

(assert (= bs!1246322 (and d!1722389 b!5384443)))

(assert (=> bs!1246322 (not (= lambda!279065 lambda!279052))))

(assert (=> bs!1246321 (not (= lambda!279065 lambda!278998))))

(assert (=> bs!1246318 (not (= lambda!279065 lambda!279004))))

(assert (=> bs!1246317 (not (= lambda!279065 lambda!279038))))

(assert (=> d!1722389 true))

(assert (=> d!1722389 true))

(assert (=> d!1722389 true))

(declare-fun lambda!279066 () Int)

(assert (=> bs!1246316 (not (= lambda!279066 lambda!279058))))

(declare-fun bs!1246327 () Bool)

(assert (= bs!1246327 d!1722389))

(assert (=> bs!1246327 (not (= lambda!279066 lambda!279065))))

(assert (=> bs!1246317 (not (= lambda!279066 lambda!279036))))

(assert (=> bs!1246318 (not (= lambda!279066 lambda!279002))))

(assert (=> bs!1246319 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) lt!2192923) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279066 lambda!279001))))

(assert (=> bs!1246320 (not (= lambda!279066 lambda!279050))))

(assert (=> bs!1246321 (not (= lambda!279066 lambda!278997))))

(assert (=> bs!1246318 (not (= lambda!279066 lambda!279003))))

(assert (=> bs!1246319 (not (= lambda!279066 lambda!279000))))

(assert (=> bs!1246322 (= (and (= (reg!15448 (regOne!30750 r!7292)) (regOne!30750 lt!2192923)) (= lt!2192923 (regTwo!30750 lt!2192923))) (= lambda!279066 lambda!279052))))

(assert (=> bs!1246321 (= (and (= (_1!35621 lt!2192924) s!2326) (= (reg!15448 (regOne!30750 r!7292)) (regOne!30750 r!7292)) (= lt!2192923 (regTwo!30750 r!7292))) (= lambda!279066 lambda!278998))))

(assert (=> bs!1246318 (= lambda!279066 lambda!279004)))

(assert (=> bs!1246317 (not (= lambda!279066 lambda!279038))))

(assert (=> d!1722389 true))

(assert (=> d!1722389 true))

(assert (=> d!1722389 true))

(assert (=> d!1722389 (= (Exists!2300 lambda!279065) (Exists!2300 lambda!279066))))

(declare-fun lt!2193048 () Unit!153994)

(declare-fun choose!40471 (Regex!15119 Regex!15119 List!61656) Unit!153994)

(assert (=> d!1722389 (= lt!2193048 (choose!40471 (reg!15448 (regOne!30750 r!7292)) lt!2192923 (_1!35621 lt!2192924)))))

(assert (=> d!1722389 (validRegex!6855 (reg!15448 (regOne!30750 r!7292)))))

(assert (=> d!1722389 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!954 (reg!15448 (regOne!30750 r!7292)) lt!2192923 (_1!35621 lt!2192924)) lt!2193048)))

(declare-fun m!6410406 () Bool)

(assert (=> bs!1246327 m!6410406))

(declare-fun m!6410408 () Bool)

(assert (=> bs!1246327 m!6410408))

(declare-fun m!6410410 () Bool)

(assert (=> bs!1246327 m!6410410))

(assert (=> bs!1246327 m!6409802))

(assert (=> b!5384069 d!1722389))

(declare-fun d!1722401 () Bool)

(assert (=> d!1722401 (= (matchR!7304 lt!2192923 (_1!35621 lt!2192924)) (matchRSpec!2222 lt!2192923 (_1!35621 lt!2192924)))))

(declare-fun lt!2193055 () Unit!153994)

(declare-fun choose!40472 (Regex!15119 List!61656) Unit!153994)

(assert (=> d!1722401 (= lt!2193055 (choose!40472 lt!2192923 (_1!35621 lt!2192924)))))

(assert (=> d!1722401 (validRegex!6855 lt!2192923)))

(assert (=> d!1722401 (= (mainMatchTheorem!2222 lt!2192923 (_1!35621 lt!2192924)) lt!2193055)))

(declare-fun bs!1246332 () Bool)

(assert (= bs!1246332 d!1722401))

(assert (=> bs!1246332 m!6409780))

(assert (=> bs!1246332 m!6409892))

(declare-fun m!6410412 () Bool)

(assert (=> bs!1246332 m!6410412))

(declare-fun m!6410414 () Bool)

(assert (=> bs!1246332 m!6410414))

(assert (=> b!5384069 d!1722401))

(declare-fun d!1722403 () Bool)

(declare-fun choose!40473 (Int) Bool)

(assert (=> d!1722403 (= (Exists!2300 lambda!279003) (choose!40473 lambda!279003))))

(declare-fun bs!1246335 () Bool)

(assert (= bs!1246335 d!1722403))

(declare-fun m!6410424 () Bool)

(assert (=> bs!1246335 m!6410424))

(assert (=> b!5384069 d!1722403))

(declare-fun d!1722407 () Bool)

(assert (=> d!1722407 (= (Exists!2300 lambda!279004) (choose!40473 lambda!279004))))

(declare-fun bs!1246336 () Bool)

(assert (= bs!1246336 d!1722407))

(declare-fun m!6410428 () Bool)

(assert (=> bs!1246336 m!6410428))

(assert (=> b!5384069 d!1722407))

(declare-fun d!1722411 () Bool)

(assert (=> d!1722411 (= (get!21187 lt!2192914) (v!51258 lt!2192914))))

(assert (=> b!5384069 d!1722411))

(declare-fun b!5384652 () Bool)

(declare-fun e!3339949 () Option!15230)

(assert (=> b!5384652 (= e!3339949 None!15229)))

(declare-fun b!5384653 () Bool)

(declare-fun res!2287075 () Bool)

(declare-fun e!3339947 () Bool)

(assert (=> b!5384653 (=> (not res!2287075) (not e!3339947))))

(declare-fun lt!2193069 () Option!15230)

(assert (=> b!5384653 (= res!2287075 (matchR!7304 lt!2192923 (_2!35621 (get!21187 lt!2193069))))))

(declare-fun b!5384655 () Bool)

(declare-fun e!3339948 () Bool)

(assert (=> b!5384655 (= e!3339948 (matchR!7304 lt!2192923 (_1!35621 lt!2192924)))))

(declare-fun b!5384656 () Bool)

(declare-fun lt!2193071 () Unit!153994)

(declare-fun lt!2193070 () Unit!153994)

(assert (=> b!5384656 (= lt!2193071 lt!2193070)))

(assert (=> b!5384656 (= (++!13424 (++!13424 Nil!61532 (Cons!61532 (h!67980 (_1!35621 lt!2192924)) Nil!61532)) (t!374879 (_1!35621 lt!2192924))) (_1!35621 lt!2192924))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1811 (List!61656 C!30508 List!61656 List!61656) Unit!153994)

(assert (=> b!5384656 (= lt!2193070 (lemmaMoveElementToOtherListKeepsConcatEq!1811 Nil!61532 (h!67980 (_1!35621 lt!2192924)) (t!374879 (_1!35621 lt!2192924)) (_1!35621 lt!2192924)))))

(assert (=> b!5384656 (= e!3339949 (findConcatSeparation!1644 (reg!15448 (regOne!30750 r!7292)) lt!2192923 (++!13424 Nil!61532 (Cons!61532 (h!67980 (_1!35621 lt!2192924)) Nil!61532)) (t!374879 (_1!35621 lt!2192924)) (_1!35621 lt!2192924)))))

(declare-fun b!5384657 () Bool)

(declare-fun e!3339950 () Option!15230)

(assert (=> b!5384657 (= e!3339950 e!3339949)))

(declare-fun c!938364 () Bool)

(assert (=> b!5384657 (= c!938364 ((_ is Nil!61532) (_1!35621 lt!2192924)))))

(declare-fun b!5384658 () Bool)

(declare-fun res!2287077 () Bool)

(assert (=> b!5384658 (=> (not res!2287077) (not e!3339947))))

(assert (=> b!5384658 (= res!2287077 (matchR!7304 (reg!15448 (regOne!30750 r!7292)) (_1!35621 (get!21187 lt!2193069))))))

(declare-fun b!5384654 () Bool)

(assert (=> b!5384654 (= e!3339947 (= (++!13424 (_1!35621 (get!21187 lt!2193069)) (_2!35621 (get!21187 lt!2193069))) (_1!35621 lt!2192924)))))

(declare-fun d!1722413 () Bool)

(declare-fun e!3339951 () Bool)

(assert (=> d!1722413 e!3339951))

(declare-fun res!2287076 () Bool)

(assert (=> d!1722413 (=> res!2287076 e!3339951)))

(assert (=> d!1722413 (= res!2287076 e!3339947)))

(declare-fun res!2287073 () Bool)

(assert (=> d!1722413 (=> (not res!2287073) (not e!3339947))))

(assert (=> d!1722413 (= res!2287073 (isDefined!11933 lt!2193069))))

(assert (=> d!1722413 (= lt!2193069 e!3339950)))

(declare-fun c!938365 () Bool)

(assert (=> d!1722413 (= c!938365 e!3339948)))

(declare-fun res!2287078 () Bool)

(assert (=> d!1722413 (=> (not res!2287078) (not e!3339948))))

(assert (=> d!1722413 (= res!2287078 (matchR!7304 (reg!15448 (regOne!30750 r!7292)) Nil!61532))))

(assert (=> d!1722413 (validRegex!6855 (reg!15448 (regOne!30750 r!7292)))))

(assert (=> d!1722413 (= (findConcatSeparation!1644 (reg!15448 (regOne!30750 r!7292)) lt!2192923 Nil!61532 (_1!35621 lt!2192924) (_1!35621 lt!2192924)) lt!2193069)))

(declare-fun b!5384659 () Bool)

(assert (=> b!5384659 (= e!3339951 (not (isDefined!11933 lt!2193069)))))

(declare-fun b!5384660 () Bool)

(assert (=> b!5384660 (= e!3339950 (Some!15229 (tuple2!64637 Nil!61532 (_1!35621 lt!2192924))))))

(assert (= (and d!1722413 res!2287078) b!5384655))

(assert (= (and d!1722413 c!938365) b!5384660))

(assert (= (and d!1722413 (not c!938365)) b!5384657))

(assert (= (and b!5384657 c!938364) b!5384652))

(assert (= (and b!5384657 (not c!938364)) b!5384656))

(assert (= (and d!1722413 res!2287073) b!5384658))

(assert (= (and b!5384658 res!2287077) b!5384653))

(assert (= (and b!5384653 res!2287075) b!5384654))

(assert (= (and d!1722413 (not res!2287076)) b!5384659))

(declare-fun m!6410462 () Bool)

(assert (=> b!5384653 m!6410462))

(declare-fun m!6410464 () Bool)

(assert (=> b!5384653 m!6410464))

(declare-fun m!6410466 () Bool)

(assert (=> d!1722413 m!6410466))

(declare-fun m!6410468 () Bool)

(assert (=> d!1722413 m!6410468))

(assert (=> d!1722413 m!6409802))

(assert (=> b!5384658 m!6410462))

(declare-fun m!6410470 () Bool)

(assert (=> b!5384658 m!6410470))

(assert (=> b!5384659 m!6410466))

(declare-fun m!6410472 () Bool)

(assert (=> b!5384656 m!6410472))

(assert (=> b!5384656 m!6410472))

(declare-fun m!6410474 () Bool)

(assert (=> b!5384656 m!6410474))

(declare-fun m!6410476 () Bool)

(assert (=> b!5384656 m!6410476))

(assert (=> b!5384656 m!6410472))

(declare-fun m!6410478 () Bool)

(assert (=> b!5384656 m!6410478))

(assert (=> b!5384655 m!6409780))

(assert (=> b!5384654 m!6410462))

(declare-fun m!6410480 () Bool)

(assert (=> b!5384654 m!6410480))

(assert (=> b!5384069 d!1722413))

(declare-fun d!1722429 () Bool)

(assert (=> d!1722429 (= (Exists!2300 lambda!279002) (choose!40473 lambda!279002))))

(declare-fun bs!1246337 () Bool)

(assert (= bs!1246337 d!1722429))

(declare-fun m!6410482 () Bool)

(assert (=> bs!1246337 m!6410482))

(assert (=> b!5384069 d!1722429))

(declare-fun d!1722431 () Bool)

(declare-fun isEmpty!33530 (Option!15230) Bool)

(assert (=> d!1722431 (= (isDefined!11933 lt!2192914) (not (isEmpty!33530 lt!2192914)))))

(declare-fun bs!1246338 () Bool)

(assert (= bs!1246338 d!1722431))

(declare-fun m!6410484 () Bool)

(assert (=> bs!1246338 m!6410484))

(assert (=> b!5384069 d!1722431))

(declare-fun d!1722433 () Bool)

(declare-fun lt!2193074 () Regex!15119)

(assert (=> d!1722433 (validRegex!6855 lt!2193074)))

(assert (=> d!1722433 (= lt!2193074 (generalisedUnion!1048 (unfocusZipperList!561 (Cons!61534 lt!2192925 Nil!61534))))))

(assert (=> d!1722433 (= (unfocusZipper!861 (Cons!61534 lt!2192925 Nil!61534)) lt!2193074)))

(declare-fun bs!1246339 () Bool)

(assert (= bs!1246339 d!1722433))

(declare-fun m!6410486 () Bool)

(assert (=> bs!1246339 m!6410486))

(declare-fun m!6410488 () Bool)

(assert (=> bs!1246339 m!6410488))

(assert (=> bs!1246339 m!6410488))

(declare-fun m!6410490 () Bool)

(assert (=> bs!1246339 m!6410490))

(assert (=> b!5384048 d!1722433))

(declare-fun b!5384661 () Bool)

(declare-fun e!3339954 () Option!15230)

(assert (=> b!5384661 (= e!3339954 None!15229)))

(declare-fun b!5384662 () Bool)

(declare-fun res!2287080 () Bool)

(declare-fun e!3339952 () Bool)

(assert (=> b!5384662 (=> (not res!2287080) (not e!3339952))))

(declare-fun lt!2193077 () Option!15230)

(assert (=> b!5384662 (= res!2287080 (matchR!7304 (regTwo!30750 r!7292) (_2!35621 (get!21187 lt!2193077))))))

(declare-fun b!5384664 () Bool)

(declare-fun e!3339953 () Bool)

(assert (=> b!5384664 (= e!3339953 (matchR!7304 (regTwo!30750 r!7292) s!2326))))

(declare-fun b!5384665 () Bool)

(declare-fun lt!2193079 () Unit!153994)

(declare-fun lt!2193078 () Unit!153994)

(assert (=> b!5384665 (= lt!2193079 lt!2193078)))

(assert (=> b!5384665 (= (++!13424 (++!13424 Nil!61532 (Cons!61532 (h!67980 s!2326) Nil!61532)) (t!374879 s!2326)) s!2326)))

(assert (=> b!5384665 (= lt!2193078 (lemmaMoveElementToOtherListKeepsConcatEq!1811 Nil!61532 (h!67980 s!2326) (t!374879 s!2326) s!2326))))

(assert (=> b!5384665 (= e!3339954 (findConcatSeparation!1644 (regOne!30750 r!7292) (regTwo!30750 r!7292) (++!13424 Nil!61532 (Cons!61532 (h!67980 s!2326) Nil!61532)) (t!374879 s!2326) s!2326))))

(declare-fun b!5384666 () Bool)

(declare-fun e!3339955 () Option!15230)

(assert (=> b!5384666 (= e!3339955 e!3339954)))

(declare-fun c!938366 () Bool)

(assert (=> b!5384666 (= c!938366 ((_ is Nil!61532) s!2326))))

(declare-fun b!5384667 () Bool)

(declare-fun res!2287082 () Bool)

(assert (=> b!5384667 (=> (not res!2287082) (not e!3339952))))

(assert (=> b!5384667 (= res!2287082 (matchR!7304 (regOne!30750 r!7292) (_1!35621 (get!21187 lt!2193077))))))

(declare-fun b!5384663 () Bool)

(assert (=> b!5384663 (= e!3339952 (= (++!13424 (_1!35621 (get!21187 lt!2193077)) (_2!35621 (get!21187 lt!2193077))) s!2326))))

(declare-fun d!1722435 () Bool)

(declare-fun e!3339956 () Bool)

(assert (=> d!1722435 e!3339956))

(declare-fun res!2287081 () Bool)

(assert (=> d!1722435 (=> res!2287081 e!3339956)))

(assert (=> d!1722435 (= res!2287081 e!3339952)))

(declare-fun res!2287079 () Bool)

(assert (=> d!1722435 (=> (not res!2287079) (not e!3339952))))

(assert (=> d!1722435 (= res!2287079 (isDefined!11933 lt!2193077))))

(assert (=> d!1722435 (= lt!2193077 e!3339955)))

(declare-fun c!938367 () Bool)

(assert (=> d!1722435 (= c!938367 e!3339953)))

(declare-fun res!2287083 () Bool)

(assert (=> d!1722435 (=> (not res!2287083) (not e!3339953))))

(assert (=> d!1722435 (= res!2287083 (matchR!7304 (regOne!30750 r!7292) Nil!61532))))

(assert (=> d!1722435 (validRegex!6855 (regOne!30750 r!7292))))

(assert (=> d!1722435 (= (findConcatSeparation!1644 (regOne!30750 r!7292) (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326) lt!2193077)))

(declare-fun b!5384668 () Bool)

(assert (=> b!5384668 (= e!3339956 (not (isDefined!11933 lt!2193077)))))

(declare-fun b!5384669 () Bool)

(assert (=> b!5384669 (= e!3339955 (Some!15229 (tuple2!64637 Nil!61532 s!2326)))))

(assert (= (and d!1722435 res!2287083) b!5384664))

(assert (= (and d!1722435 c!938367) b!5384669))

(assert (= (and d!1722435 (not c!938367)) b!5384666))

(assert (= (and b!5384666 c!938366) b!5384661))

(assert (= (and b!5384666 (not c!938366)) b!5384665))

(assert (= (and d!1722435 res!2287079) b!5384667))

(assert (= (and b!5384667 res!2287082) b!5384662))

(assert (= (and b!5384662 res!2287080) b!5384663))

(assert (= (and d!1722435 (not res!2287081)) b!5384668))

(declare-fun m!6410494 () Bool)

(assert (=> b!5384662 m!6410494))

(declare-fun m!6410496 () Bool)

(assert (=> b!5384662 m!6410496))

(declare-fun m!6410498 () Bool)

(assert (=> d!1722435 m!6410498))

(declare-fun m!6410500 () Bool)

(assert (=> d!1722435 m!6410500))

(declare-fun m!6410502 () Bool)

(assert (=> d!1722435 m!6410502))

(assert (=> b!5384667 m!6410494))

(declare-fun m!6410504 () Bool)

(assert (=> b!5384667 m!6410504))

(assert (=> b!5384668 m!6410498))

(declare-fun m!6410506 () Bool)

(assert (=> b!5384665 m!6410506))

(assert (=> b!5384665 m!6410506))

(declare-fun m!6410508 () Bool)

(assert (=> b!5384665 m!6410508))

(declare-fun m!6410510 () Bool)

(assert (=> b!5384665 m!6410510))

(assert (=> b!5384665 m!6410506))

(declare-fun m!6410512 () Bool)

(assert (=> b!5384665 m!6410512))

(declare-fun m!6410514 () Bool)

(assert (=> b!5384664 m!6410514))

(assert (=> b!5384663 m!6410494))

(declare-fun m!6410516 () Bool)

(assert (=> b!5384663 m!6410516))

(assert (=> b!5384068 d!1722435))

(declare-fun d!1722439 () Bool)

(assert (=> d!1722439 (= (Exists!2300 lambda!278998) (choose!40473 lambda!278998))))

(declare-fun bs!1246341 () Bool)

(assert (= bs!1246341 d!1722439))

(declare-fun m!6410518 () Bool)

(assert (=> bs!1246341 m!6410518))

(assert (=> b!5384068 d!1722439))

(declare-fun d!1722441 () Bool)

(assert (=> d!1722441 (= (Exists!2300 lambda!278997) (choose!40473 lambda!278997))))

(declare-fun bs!1246342 () Bool)

(assert (= bs!1246342 d!1722441))

(declare-fun m!6410520 () Bool)

(assert (=> bs!1246342 m!6410520))

(assert (=> b!5384068 d!1722441))

(declare-fun bs!1246343 () Bool)

(declare-fun d!1722443 () Bool)

(assert (= bs!1246343 (and d!1722443 d!1722375)))

(declare-fun lambda!279071 () Int)

(assert (=> bs!1246343 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279071 lambda!279058))))

(declare-fun bs!1246344 () Bool)

(assert (= bs!1246344 (and d!1722443 d!1722389)))

(assert (=> bs!1246344 (not (= lambda!279071 lambda!279066))))

(assert (=> bs!1246344 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279071 lambda!279065))))

(declare-fun bs!1246345 () Bool)

(assert (= bs!1246345 (and d!1722443 d!1722303)))

(assert (=> bs!1246345 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) (Star!15119 (reg!15448 (regOne!30750 r!7292))))) (= lambda!279071 lambda!279036))))

(declare-fun bs!1246346 () Bool)

(assert (= bs!1246346 (and d!1722443 b!5384069)))

(assert (=> bs!1246346 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279071 lambda!279002))))

(declare-fun bs!1246347 () Bool)

(assert (= bs!1246347 (and d!1722443 b!5384045)))

(assert (=> bs!1246347 (not (= lambda!279071 lambda!279001))))

(declare-fun bs!1246348 () Bool)

(assert (= bs!1246348 (and d!1722443 b!5384451)))

(assert (=> bs!1246348 (not (= lambda!279071 lambda!279050))))

(declare-fun bs!1246349 () Bool)

(assert (= bs!1246349 (and d!1722443 b!5384068)))

(assert (=> bs!1246349 (= lambda!279071 lambda!278997)))

(assert (=> bs!1246346 (not (= lambda!279071 lambda!279003))))

(assert (=> bs!1246347 (= (= (regOne!30750 r!7292) lt!2192923) (= lambda!279071 lambda!279000))))

(declare-fun bs!1246350 () Bool)

(assert (= bs!1246350 (and d!1722443 b!5384443)))

(assert (=> bs!1246350 (not (= lambda!279071 lambda!279052))))

(assert (=> bs!1246349 (not (= lambda!279071 lambda!278998))))

(assert (=> bs!1246346 (not (= lambda!279071 lambda!279004))))

(assert (=> bs!1246345 (not (= lambda!279071 lambda!279038))))

(assert (=> d!1722443 true))

(assert (=> d!1722443 true))

(assert (=> d!1722443 true))

(assert (=> d!1722443 (= (isDefined!11933 (findConcatSeparation!1644 (regOne!30750 r!7292) (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326)) (Exists!2300 lambda!279071))))

(declare-fun lt!2193081 () Unit!153994)

(assert (=> d!1722443 (= lt!2193081 (choose!40470 (regOne!30750 r!7292) (regTwo!30750 r!7292) s!2326))))

(assert (=> d!1722443 (validRegex!6855 (regOne!30750 r!7292))))

(assert (=> d!1722443 (= (lemmaFindConcatSeparationEquivalentToExists!1408 (regOne!30750 r!7292) (regTwo!30750 r!7292) s!2326) lt!2193081)))

(declare-fun bs!1246351 () Bool)

(assert (= bs!1246351 d!1722443))

(assert (=> bs!1246351 m!6409848))

(assert (=> bs!1246351 m!6409848))

(assert (=> bs!1246351 m!6409850))

(declare-fun m!6410522 () Bool)

(assert (=> bs!1246351 m!6410522))

(declare-fun m!6410524 () Bool)

(assert (=> bs!1246351 m!6410524))

(assert (=> bs!1246351 m!6410502))

(assert (=> b!5384068 d!1722443))

(declare-fun bs!1246352 () Bool)

(declare-fun d!1722445 () Bool)

(assert (= bs!1246352 (and d!1722445 d!1722375)))

(declare-fun lambda!279072 () Int)

(assert (=> bs!1246352 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279072 lambda!279058))))

(declare-fun bs!1246353 () Bool)

(assert (= bs!1246353 (and d!1722445 d!1722389)))

(assert (=> bs!1246353 (not (= lambda!279072 lambda!279066))))

(assert (=> bs!1246353 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279072 lambda!279065))))

(declare-fun bs!1246354 () Bool)

(assert (= bs!1246354 (and d!1722445 d!1722303)))

(assert (=> bs!1246354 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) (Star!15119 (reg!15448 (regOne!30750 r!7292))))) (= lambda!279072 lambda!279036))))

(declare-fun bs!1246355 () Bool)

(assert (= bs!1246355 (and d!1722445 b!5384069)))

(assert (=> bs!1246355 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279072 lambda!279002))))

(declare-fun bs!1246356 () Bool)

(assert (= bs!1246356 (and d!1722445 b!5384045)))

(assert (=> bs!1246356 (not (= lambda!279072 lambda!279001))))

(declare-fun bs!1246357 () Bool)

(assert (= bs!1246357 (and d!1722445 b!5384451)))

(assert (=> bs!1246357 (not (= lambda!279072 lambda!279050))))

(declare-fun bs!1246358 () Bool)

(assert (= bs!1246358 (and d!1722445 b!5384068)))

(assert (=> bs!1246358 (= lambda!279072 lambda!278997)))

(declare-fun bs!1246359 () Bool)

(assert (= bs!1246359 (and d!1722445 d!1722443)))

(assert (=> bs!1246359 (= lambda!279072 lambda!279071)))

(assert (=> bs!1246355 (not (= lambda!279072 lambda!279003))))

(assert (=> bs!1246356 (= (= (regOne!30750 r!7292) lt!2192923) (= lambda!279072 lambda!279000))))

(declare-fun bs!1246360 () Bool)

(assert (= bs!1246360 (and d!1722445 b!5384443)))

(assert (=> bs!1246360 (not (= lambda!279072 lambda!279052))))

(assert (=> bs!1246358 (not (= lambda!279072 lambda!278998))))

(assert (=> bs!1246355 (not (= lambda!279072 lambda!279004))))

(assert (=> bs!1246354 (not (= lambda!279072 lambda!279038))))

(assert (=> d!1722445 true))

(assert (=> d!1722445 true))

(assert (=> d!1722445 true))

(declare-fun lambda!279073 () Int)

(assert (=> bs!1246352 (not (= lambda!279073 lambda!279058))))

(assert (=> bs!1246353 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279073 lambda!279066))))

(assert (=> bs!1246353 (not (= lambda!279073 lambda!279065))))

(assert (=> bs!1246354 (not (= lambda!279073 lambda!279036))))

(assert (=> bs!1246355 (not (= lambda!279073 lambda!279002))))

(assert (=> bs!1246356 (= (= (regOne!30750 r!7292) lt!2192923) (= lambda!279073 lambda!279001))))

(assert (=> bs!1246357 (not (= lambda!279073 lambda!279050))))

(assert (=> bs!1246358 (not (= lambda!279073 lambda!278997))))

(assert (=> bs!1246359 (not (= lambda!279073 lambda!279071))))

(assert (=> bs!1246355 (not (= lambda!279073 lambda!279003))))

(assert (=> bs!1246360 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (regOne!30750 lt!2192923)) (= (regTwo!30750 r!7292) (regTwo!30750 lt!2192923))) (= lambda!279073 lambda!279052))))

(declare-fun bs!1246361 () Bool)

(assert (= bs!1246361 d!1722445))

(assert (=> bs!1246361 (not (= lambda!279073 lambda!279072))))

(assert (=> bs!1246356 (not (= lambda!279073 lambda!279000))))

(assert (=> bs!1246358 (= lambda!279073 lambda!278998)))

(assert (=> bs!1246355 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279073 lambda!279004))))

(assert (=> bs!1246354 (not (= lambda!279073 lambda!279038))))

(assert (=> d!1722445 true))

(assert (=> d!1722445 true))

(assert (=> d!1722445 true))

(assert (=> d!1722445 (= (Exists!2300 lambda!279072) (Exists!2300 lambda!279073))))

(declare-fun lt!2193085 () Unit!153994)

(assert (=> d!1722445 (= lt!2193085 (choose!40471 (regOne!30750 r!7292) (regTwo!30750 r!7292) s!2326))))

(assert (=> d!1722445 (validRegex!6855 (regOne!30750 r!7292))))

(assert (=> d!1722445 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!954 (regOne!30750 r!7292) (regTwo!30750 r!7292) s!2326) lt!2193085)))

(declare-fun m!6410546 () Bool)

(assert (=> bs!1246361 m!6410546))

(declare-fun m!6410548 () Bool)

(assert (=> bs!1246361 m!6410548))

(declare-fun m!6410550 () Bool)

(assert (=> bs!1246361 m!6410550))

(assert (=> bs!1246361 m!6410502))

(assert (=> b!5384068 d!1722445))

(declare-fun d!1722451 () Bool)

(assert (=> d!1722451 (= (isDefined!11933 (findConcatSeparation!1644 (regOne!30750 r!7292) (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326)) (not (isEmpty!33530 (findConcatSeparation!1644 (regOne!30750 r!7292) (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326))))))

(declare-fun bs!1246362 () Bool)

(assert (= bs!1246362 d!1722451))

(assert (=> bs!1246362 m!6409848))

(declare-fun m!6410552 () Bool)

(assert (=> bs!1246362 m!6410552))

(assert (=> b!5384068 d!1722451))

(declare-fun b!5384747 () Bool)

(declare-fun e!3340003 () Bool)

(declare-fun e!3339999 () Bool)

(assert (=> b!5384747 (= e!3340003 e!3339999)))

(declare-fun res!2287130 () Bool)

(assert (=> b!5384747 (=> res!2287130 e!3339999)))

(declare-fun call!385504 () Bool)

(assert (=> b!5384747 (= res!2287130 call!385504)))

(declare-fun b!5384748 () Bool)

(declare-fun res!2287131 () Bool)

(declare-fun e!3339998 () Bool)

(assert (=> b!5384748 (=> res!2287131 e!3339998)))

(declare-fun e!3339997 () Bool)

(assert (=> b!5384748 (= res!2287131 e!3339997)))

(declare-fun res!2287127 () Bool)

(assert (=> b!5384748 (=> (not res!2287127) (not e!3339997))))

(declare-fun lt!2193097 () Bool)

(assert (=> b!5384748 (= res!2287127 lt!2193097)))

(declare-fun b!5384749 () Bool)

(declare-fun res!2287125 () Bool)

(assert (=> b!5384749 (=> res!2287125 e!3339999)))

(declare-fun tail!10646 (List!61656) List!61656)

(assert (=> b!5384749 (= res!2287125 (not (isEmpty!33527 (tail!10646 (_1!35621 lt!2192921)))))))

(declare-fun b!5384750 () Bool)

(assert (=> b!5384750 (= e!3339998 e!3340003)))

(declare-fun res!2287128 () Bool)

(assert (=> b!5384750 (=> (not res!2287128) (not e!3340003))))

(assert (=> b!5384750 (= res!2287128 (not lt!2193097))))

(declare-fun b!5384751 () Bool)

(declare-fun res!2287126 () Bool)

(assert (=> b!5384751 (=> (not res!2287126) (not e!3339997))))

(assert (=> b!5384751 (= res!2287126 (not call!385504))))

(declare-fun b!5384752 () Bool)

(declare-fun e!3340002 () Bool)

(assert (=> b!5384752 (= e!3340002 (nullable!5288 (reg!15448 (regOne!30750 r!7292))))))

(declare-fun b!5384753 () Bool)

(declare-fun res!2287129 () Bool)

(assert (=> b!5384753 (=> res!2287129 e!3339998)))

(assert (=> b!5384753 (= res!2287129 (not ((_ is ElementMatch!15119) (reg!15448 (regOne!30750 r!7292)))))))

(declare-fun e!3340001 () Bool)

(assert (=> b!5384753 (= e!3340001 e!3339998)))

(declare-fun b!5384754 () Bool)

(declare-fun head!11549 (List!61656) C!30508)

(assert (=> b!5384754 (= e!3339999 (not (= (head!11549 (_1!35621 lt!2192921)) (c!938207 (reg!15448 (regOne!30750 r!7292))))))))

(declare-fun bm!385499 () Bool)

(assert (=> bm!385499 (= call!385504 (isEmpty!33527 (_1!35621 lt!2192921)))))

(declare-fun b!5384755 () Bool)

(assert (=> b!5384755 (= e!3340001 (not lt!2193097))))

(declare-fun d!1722453 () Bool)

(declare-fun e!3340000 () Bool)

(assert (=> d!1722453 e!3340000))

(declare-fun c!938386 () Bool)

(assert (=> d!1722453 (= c!938386 ((_ is EmptyExpr!15119) (reg!15448 (regOne!30750 r!7292))))))

(assert (=> d!1722453 (= lt!2193097 e!3340002)))

(declare-fun c!938387 () Bool)

(assert (=> d!1722453 (= c!938387 (isEmpty!33527 (_1!35621 lt!2192921)))))

(assert (=> d!1722453 (validRegex!6855 (reg!15448 (regOne!30750 r!7292)))))

(assert (=> d!1722453 (= (matchR!7304 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921)) lt!2193097)))

(declare-fun b!5384756 () Bool)

(declare-fun derivativeStep!4237 (Regex!15119 C!30508) Regex!15119)

(assert (=> b!5384756 (= e!3340002 (matchR!7304 (derivativeStep!4237 (reg!15448 (regOne!30750 r!7292)) (head!11549 (_1!35621 lt!2192921))) (tail!10646 (_1!35621 lt!2192921))))))

(declare-fun b!5384757 () Bool)

(declare-fun res!2287132 () Bool)

(assert (=> b!5384757 (=> (not res!2287132) (not e!3339997))))

(assert (=> b!5384757 (= res!2287132 (isEmpty!33527 (tail!10646 (_1!35621 lt!2192921))))))

(declare-fun b!5384758 () Bool)

(assert (=> b!5384758 (= e!3340000 e!3340001)))

(declare-fun c!938388 () Bool)

(assert (=> b!5384758 (= c!938388 ((_ is EmptyLang!15119) (reg!15448 (regOne!30750 r!7292))))))

(declare-fun b!5384759 () Bool)

(assert (=> b!5384759 (= e!3340000 (= lt!2193097 call!385504))))

(declare-fun b!5384760 () Bool)

(assert (=> b!5384760 (= e!3339997 (= (head!11549 (_1!35621 lt!2192921)) (c!938207 (reg!15448 (regOne!30750 r!7292)))))))

(assert (= (and d!1722453 c!938387) b!5384752))

(assert (= (and d!1722453 (not c!938387)) b!5384756))

(assert (= (and d!1722453 c!938386) b!5384759))

(assert (= (and d!1722453 (not c!938386)) b!5384758))

(assert (= (and b!5384758 c!938388) b!5384755))

(assert (= (and b!5384758 (not c!938388)) b!5384753))

(assert (= (and b!5384753 (not res!2287129)) b!5384748))

(assert (= (and b!5384748 res!2287127) b!5384751))

(assert (= (and b!5384751 res!2287126) b!5384757))

(assert (= (and b!5384757 res!2287132) b!5384760))

(assert (= (and b!5384748 (not res!2287131)) b!5384750))

(assert (= (and b!5384750 res!2287128) b!5384747))

(assert (= (and b!5384747 (not res!2287130)) b!5384749))

(assert (= (and b!5384749 (not res!2287125)) b!5384754))

(assert (= (or b!5384759 b!5384747 b!5384751) bm!385499))

(declare-fun m!6410612 () Bool)

(assert (=> bm!385499 m!6410612))

(declare-fun m!6410614 () Bool)

(assert (=> b!5384749 m!6410614))

(assert (=> b!5384749 m!6410614))

(declare-fun m!6410616 () Bool)

(assert (=> b!5384749 m!6410616))

(declare-fun m!6410618 () Bool)

(assert (=> b!5384756 m!6410618))

(assert (=> b!5384756 m!6410618))

(declare-fun m!6410620 () Bool)

(assert (=> b!5384756 m!6410620))

(assert (=> b!5384756 m!6410614))

(assert (=> b!5384756 m!6410620))

(assert (=> b!5384756 m!6410614))

(declare-fun m!6410622 () Bool)

(assert (=> b!5384756 m!6410622))

(assert (=> d!1722453 m!6410612))

(assert (=> d!1722453 m!6409802))

(assert (=> b!5384757 m!6410614))

(assert (=> b!5384757 m!6410614))

(assert (=> b!5384757 m!6410616))

(assert (=> b!5384754 m!6410618))

(assert (=> b!5384760 m!6410618))

(declare-fun m!6410624 () Bool)

(assert (=> b!5384752 m!6410624))

(assert (=> b!5384047 d!1722453))

(declare-fun b!5384761 () Bool)

(declare-fun e!3340010 () Bool)

(declare-fun e!3340006 () Bool)

(assert (=> b!5384761 (= e!3340010 e!3340006)))

(declare-fun res!2287138 () Bool)

(assert (=> b!5384761 (=> res!2287138 e!3340006)))

(declare-fun call!385505 () Bool)

(assert (=> b!5384761 (= res!2287138 call!385505)))

(declare-fun b!5384762 () Bool)

(declare-fun res!2287139 () Bool)

(declare-fun e!3340005 () Bool)

(assert (=> b!5384762 (=> res!2287139 e!3340005)))

(declare-fun e!3340004 () Bool)

(assert (=> b!5384762 (= res!2287139 e!3340004)))

(declare-fun res!2287135 () Bool)

(assert (=> b!5384762 (=> (not res!2287135) (not e!3340004))))

(declare-fun lt!2193098 () Bool)

(assert (=> b!5384762 (= res!2287135 lt!2193098)))

(declare-fun b!5384763 () Bool)

(declare-fun res!2287133 () Bool)

(assert (=> b!5384763 (=> res!2287133 e!3340006)))

(assert (=> b!5384763 (= res!2287133 (not (isEmpty!33527 (tail!10646 (_2!35621 lt!2192924)))))))

(declare-fun b!5384764 () Bool)

(assert (=> b!5384764 (= e!3340005 e!3340010)))

(declare-fun res!2287136 () Bool)

(assert (=> b!5384764 (=> (not res!2287136) (not e!3340010))))

(assert (=> b!5384764 (= res!2287136 (not lt!2193098))))

(declare-fun b!5384765 () Bool)

(declare-fun res!2287134 () Bool)

(assert (=> b!5384765 (=> (not res!2287134) (not e!3340004))))

(assert (=> b!5384765 (= res!2287134 (not call!385505))))

(declare-fun b!5384766 () Bool)

(declare-fun e!3340009 () Bool)

(assert (=> b!5384766 (= e!3340009 (nullable!5288 (regTwo!30750 r!7292)))))

(declare-fun b!5384767 () Bool)

(declare-fun res!2287137 () Bool)

(assert (=> b!5384767 (=> res!2287137 e!3340005)))

(assert (=> b!5384767 (= res!2287137 (not ((_ is ElementMatch!15119) (regTwo!30750 r!7292))))))

(declare-fun e!3340008 () Bool)

(assert (=> b!5384767 (= e!3340008 e!3340005)))

(declare-fun b!5384768 () Bool)

(assert (=> b!5384768 (= e!3340006 (not (= (head!11549 (_2!35621 lt!2192924)) (c!938207 (regTwo!30750 r!7292)))))))

(declare-fun bm!385500 () Bool)

(assert (=> bm!385500 (= call!385505 (isEmpty!33527 (_2!35621 lt!2192924)))))

(declare-fun b!5384769 () Bool)

(assert (=> b!5384769 (= e!3340008 (not lt!2193098))))

(declare-fun d!1722469 () Bool)

(declare-fun e!3340007 () Bool)

(assert (=> d!1722469 e!3340007))

(declare-fun c!938389 () Bool)

(assert (=> d!1722469 (= c!938389 ((_ is EmptyExpr!15119) (regTwo!30750 r!7292)))))

(assert (=> d!1722469 (= lt!2193098 e!3340009)))

(declare-fun c!938390 () Bool)

(assert (=> d!1722469 (= c!938390 (isEmpty!33527 (_2!35621 lt!2192924)))))

(assert (=> d!1722469 (validRegex!6855 (regTwo!30750 r!7292))))

(assert (=> d!1722469 (= (matchR!7304 (regTwo!30750 r!7292) (_2!35621 lt!2192924)) lt!2193098)))

(declare-fun b!5384770 () Bool)

(assert (=> b!5384770 (= e!3340009 (matchR!7304 (derivativeStep!4237 (regTwo!30750 r!7292) (head!11549 (_2!35621 lt!2192924))) (tail!10646 (_2!35621 lt!2192924))))))

(declare-fun b!5384771 () Bool)

(declare-fun res!2287140 () Bool)

(assert (=> b!5384771 (=> (not res!2287140) (not e!3340004))))

(assert (=> b!5384771 (= res!2287140 (isEmpty!33527 (tail!10646 (_2!35621 lt!2192924))))))

(declare-fun b!5384772 () Bool)

(assert (=> b!5384772 (= e!3340007 e!3340008)))

(declare-fun c!938391 () Bool)

(assert (=> b!5384772 (= c!938391 ((_ is EmptyLang!15119) (regTwo!30750 r!7292)))))

(declare-fun b!5384773 () Bool)

(assert (=> b!5384773 (= e!3340007 (= lt!2193098 call!385505))))

(declare-fun b!5384774 () Bool)

(assert (=> b!5384774 (= e!3340004 (= (head!11549 (_2!35621 lt!2192924)) (c!938207 (regTwo!30750 r!7292))))))

(assert (= (and d!1722469 c!938390) b!5384766))

(assert (= (and d!1722469 (not c!938390)) b!5384770))

(assert (= (and d!1722469 c!938389) b!5384773))

(assert (= (and d!1722469 (not c!938389)) b!5384772))

(assert (= (and b!5384772 c!938391) b!5384769))

(assert (= (and b!5384772 (not c!938391)) b!5384767))

(assert (= (and b!5384767 (not res!2287137)) b!5384762))

(assert (= (and b!5384762 res!2287135) b!5384765))

(assert (= (and b!5384765 res!2287134) b!5384771))

(assert (= (and b!5384771 res!2287140) b!5384774))

(assert (= (and b!5384762 (not res!2287139)) b!5384764))

(assert (= (and b!5384764 res!2287136) b!5384761))

(assert (= (and b!5384761 (not res!2287138)) b!5384763))

(assert (= (and b!5384763 (not res!2287133)) b!5384768))

(assert (= (or b!5384773 b!5384761 b!5384765) bm!385500))

(declare-fun m!6410626 () Bool)

(assert (=> bm!385500 m!6410626))

(declare-fun m!6410628 () Bool)

(assert (=> b!5384763 m!6410628))

(assert (=> b!5384763 m!6410628))

(declare-fun m!6410630 () Bool)

(assert (=> b!5384763 m!6410630))

(declare-fun m!6410632 () Bool)

(assert (=> b!5384770 m!6410632))

(assert (=> b!5384770 m!6410632))

(declare-fun m!6410634 () Bool)

(assert (=> b!5384770 m!6410634))

(assert (=> b!5384770 m!6410628))

(assert (=> b!5384770 m!6410634))

(assert (=> b!5384770 m!6410628))

(declare-fun m!6410636 () Bool)

(assert (=> b!5384770 m!6410636))

(assert (=> d!1722469 m!6410626))

(declare-fun m!6410638 () Bool)

(assert (=> d!1722469 m!6410638))

(assert (=> b!5384771 m!6410628))

(assert (=> b!5384771 m!6410628))

(assert (=> b!5384771 m!6410630))

(assert (=> b!5384768 m!6410632))

(assert (=> b!5384774 m!6410632))

(declare-fun m!6410640 () Bool)

(assert (=> b!5384766 m!6410640))

(assert (=> b!5384067 d!1722469))

(declare-fun d!1722471 () Bool)

(assert (=> d!1722471 (= (isEmpty!33527 (_1!35621 lt!2192924)) ((_ is Nil!61532) (_1!35621 lt!2192924)))))

(assert (=> b!5384046 d!1722471))

(declare-fun b!5384775 () Bool)

(declare-fun e!3340017 () Bool)

(declare-fun e!3340013 () Bool)

(assert (=> b!5384775 (= e!3340017 e!3340013)))

(declare-fun res!2287146 () Bool)

(assert (=> b!5384775 (=> res!2287146 e!3340013)))

(declare-fun call!385506 () Bool)

(assert (=> b!5384775 (= res!2287146 call!385506)))

(declare-fun b!5384776 () Bool)

(declare-fun res!2287147 () Bool)

(declare-fun e!3340012 () Bool)

(assert (=> b!5384776 (=> res!2287147 e!3340012)))

(declare-fun e!3340011 () Bool)

(assert (=> b!5384776 (= res!2287147 e!3340011)))

(declare-fun res!2287143 () Bool)

(assert (=> b!5384776 (=> (not res!2287143) (not e!3340011))))

(declare-fun lt!2193103 () Bool)

(assert (=> b!5384776 (= res!2287143 lt!2193103)))

(declare-fun b!5384777 () Bool)

(declare-fun res!2287141 () Bool)

(assert (=> b!5384777 (=> res!2287141 e!3340013)))

(assert (=> b!5384777 (= res!2287141 (not (isEmpty!33527 (tail!10646 (_1!35621 lt!2192924)))))))

(declare-fun b!5384778 () Bool)

(assert (=> b!5384778 (= e!3340012 e!3340017)))

(declare-fun res!2287144 () Bool)

(assert (=> b!5384778 (=> (not res!2287144) (not e!3340017))))

(assert (=> b!5384778 (= res!2287144 (not lt!2193103))))

(declare-fun b!5384779 () Bool)

(declare-fun res!2287142 () Bool)

(assert (=> b!5384779 (=> (not res!2287142) (not e!3340011))))

(assert (=> b!5384779 (= res!2287142 (not call!385506))))

(declare-fun b!5384780 () Bool)

(declare-fun e!3340016 () Bool)

(assert (=> b!5384780 (= e!3340016 (nullable!5288 lt!2192923))))

(declare-fun b!5384781 () Bool)

(declare-fun res!2287145 () Bool)

(assert (=> b!5384781 (=> res!2287145 e!3340012)))

(assert (=> b!5384781 (= res!2287145 (not ((_ is ElementMatch!15119) lt!2192923)))))

(declare-fun e!3340015 () Bool)

(assert (=> b!5384781 (= e!3340015 e!3340012)))

(declare-fun b!5384782 () Bool)

(assert (=> b!5384782 (= e!3340013 (not (= (head!11549 (_1!35621 lt!2192924)) (c!938207 lt!2192923))))))

(declare-fun bm!385501 () Bool)

(assert (=> bm!385501 (= call!385506 (isEmpty!33527 (_1!35621 lt!2192924)))))

(declare-fun b!5384783 () Bool)

(assert (=> b!5384783 (= e!3340015 (not lt!2193103))))

(declare-fun d!1722473 () Bool)

(declare-fun e!3340014 () Bool)

(assert (=> d!1722473 e!3340014))

(declare-fun c!938392 () Bool)

(assert (=> d!1722473 (= c!938392 ((_ is EmptyExpr!15119) lt!2192923))))

(assert (=> d!1722473 (= lt!2193103 e!3340016)))

(declare-fun c!938393 () Bool)

(assert (=> d!1722473 (= c!938393 (isEmpty!33527 (_1!35621 lt!2192924)))))

(assert (=> d!1722473 (validRegex!6855 lt!2192923)))

(assert (=> d!1722473 (= (matchR!7304 lt!2192923 (_1!35621 lt!2192924)) lt!2193103)))

(declare-fun b!5384784 () Bool)

(assert (=> b!5384784 (= e!3340016 (matchR!7304 (derivativeStep!4237 lt!2192923 (head!11549 (_1!35621 lt!2192924))) (tail!10646 (_1!35621 lt!2192924))))))

(declare-fun b!5384785 () Bool)

(declare-fun res!2287148 () Bool)

(assert (=> b!5384785 (=> (not res!2287148) (not e!3340011))))

(assert (=> b!5384785 (= res!2287148 (isEmpty!33527 (tail!10646 (_1!35621 lt!2192924))))))

(declare-fun b!5384786 () Bool)

(assert (=> b!5384786 (= e!3340014 e!3340015)))

(declare-fun c!938394 () Bool)

(assert (=> b!5384786 (= c!938394 ((_ is EmptyLang!15119) lt!2192923))))

(declare-fun b!5384787 () Bool)

(assert (=> b!5384787 (= e!3340014 (= lt!2193103 call!385506))))

(declare-fun b!5384788 () Bool)

(assert (=> b!5384788 (= e!3340011 (= (head!11549 (_1!35621 lt!2192924)) (c!938207 lt!2192923)))))

(assert (= (and d!1722473 c!938393) b!5384780))

(assert (= (and d!1722473 (not c!938393)) b!5384784))

(assert (= (and d!1722473 c!938392) b!5384787))

(assert (= (and d!1722473 (not c!938392)) b!5384786))

(assert (= (and b!5384786 c!938394) b!5384783))

(assert (= (and b!5384786 (not c!938394)) b!5384781))

(assert (= (and b!5384781 (not res!2287145)) b!5384776))

(assert (= (and b!5384776 res!2287143) b!5384779))

(assert (= (and b!5384779 res!2287142) b!5384785))

(assert (= (and b!5384785 res!2287148) b!5384788))

(assert (= (and b!5384776 (not res!2287147)) b!5384778))

(assert (= (and b!5384778 res!2287144) b!5384775))

(assert (= (and b!5384775 (not res!2287146)) b!5384777))

(assert (= (and b!5384777 (not res!2287141)) b!5384782))

(assert (= (or b!5384787 b!5384775 b!5384779) bm!385501))

(assert (=> bm!385501 m!6409870))

(declare-fun m!6410642 () Bool)

(assert (=> b!5384777 m!6410642))

(assert (=> b!5384777 m!6410642))

(declare-fun m!6410644 () Bool)

(assert (=> b!5384777 m!6410644))

(declare-fun m!6410646 () Bool)

(assert (=> b!5384784 m!6410646))

(assert (=> b!5384784 m!6410646))

(declare-fun m!6410648 () Bool)

(assert (=> b!5384784 m!6410648))

(assert (=> b!5384784 m!6410642))

(assert (=> b!5384784 m!6410648))

(assert (=> b!5384784 m!6410642))

(declare-fun m!6410650 () Bool)

(assert (=> b!5384784 m!6410650))

(assert (=> d!1722473 m!6409870))

(assert (=> d!1722473 m!6410414))

(assert (=> b!5384785 m!6410642))

(assert (=> b!5384785 m!6410642))

(assert (=> b!5384785 m!6410644))

(assert (=> b!5384782 m!6410646))

(assert (=> b!5384788 m!6410646))

(declare-fun m!6410652 () Bool)

(assert (=> b!5384780 m!6410652))

(assert (=> b!5384066 d!1722473))

(declare-fun b!5384789 () Bool)

(declare-fun e!3340018 () List!61656)

(assert (=> b!5384789 (= e!3340018 (_2!35621 lt!2192924))))

(declare-fun b!5384790 () Bool)

(assert (=> b!5384790 (= e!3340018 (Cons!61532 (h!67980 (_1!35621 lt!2192924)) (++!13424 (t!374879 (_1!35621 lt!2192924)) (_2!35621 lt!2192924))))))

(declare-fun b!5384791 () Bool)

(declare-fun res!2287150 () Bool)

(declare-fun e!3340019 () Bool)

(assert (=> b!5384791 (=> (not res!2287150) (not e!3340019))))

(declare-fun lt!2193106 () List!61656)

(assert (=> b!5384791 (= res!2287150 (= (size!39806 lt!2193106) (+ (size!39806 (_1!35621 lt!2192924)) (size!39806 (_2!35621 lt!2192924)))))))

(declare-fun d!1722475 () Bool)

(assert (=> d!1722475 e!3340019))

(declare-fun res!2287149 () Bool)

(assert (=> d!1722475 (=> (not res!2287149) (not e!3340019))))

(assert (=> d!1722475 (= res!2287149 (= (content!11005 lt!2193106) ((_ map or) (content!11005 (_1!35621 lt!2192924)) (content!11005 (_2!35621 lt!2192924)))))))

(assert (=> d!1722475 (= lt!2193106 e!3340018)))

(declare-fun c!938395 () Bool)

(assert (=> d!1722475 (= c!938395 ((_ is Nil!61532) (_1!35621 lt!2192924)))))

(assert (=> d!1722475 (= (++!13424 (_1!35621 lt!2192924) (_2!35621 lt!2192924)) lt!2193106)))

(declare-fun b!5384792 () Bool)

(assert (=> b!5384792 (= e!3340019 (or (not (= (_2!35621 lt!2192924) Nil!61532)) (= lt!2193106 (_1!35621 lt!2192924))))))

(assert (= (and d!1722475 c!938395) b!5384789))

(assert (= (and d!1722475 (not c!938395)) b!5384790))

(assert (= (and d!1722475 res!2287149) b!5384791))

(assert (= (and b!5384791 res!2287150) b!5384792))

(declare-fun m!6410656 () Bool)

(assert (=> b!5384790 m!6410656))

(declare-fun m!6410658 () Bool)

(assert (=> b!5384791 m!6410658))

(declare-fun m!6410660 () Bool)

(assert (=> b!5384791 m!6410660))

(declare-fun m!6410662 () Bool)

(assert (=> b!5384791 m!6410662))

(declare-fun m!6410664 () Bool)

(assert (=> d!1722475 m!6410664))

(declare-fun m!6410666 () Bool)

(assert (=> d!1722475 m!6410666))

(declare-fun m!6410668 () Bool)

(assert (=> d!1722475 m!6410668))

(assert (=> b!5384045 d!1722475))

(declare-fun d!1722477 () Bool)

(assert (=> d!1722477 (= (Exists!2300 lambda!279001) (choose!40473 lambda!279001))))

(declare-fun bs!1246372 () Bool)

(assert (= bs!1246372 d!1722477))

(declare-fun m!6410676 () Bool)

(assert (=> bs!1246372 m!6410676))

(assert (=> b!5384045 d!1722477))

(declare-fun d!1722479 () Bool)

(assert (=> d!1722479 (= (isDefined!11933 lt!2192963) (not (isEmpty!33530 lt!2192963)))))

(declare-fun bs!1246373 () Bool)

(assert (= bs!1246373 d!1722479))

(declare-fun m!6410682 () Bool)

(assert (=> bs!1246373 m!6410682))

(assert (=> b!5384045 d!1722479))

(declare-fun b!5384793 () Bool)

(declare-fun e!3340022 () Option!15230)

(assert (=> b!5384793 (= e!3340022 None!15229)))

(declare-fun b!5384794 () Bool)

(declare-fun res!2287152 () Bool)

(declare-fun e!3340020 () Bool)

(assert (=> b!5384794 (=> (not res!2287152) (not e!3340020))))

(declare-fun lt!2193107 () Option!15230)

(assert (=> b!5384794 (= res!2287152 (matchR!7304 (regTwo!30750 r!7292) (_2!35621 (get!21187 lt!2193107))))))

(declare-fun b!5384796 () Bool)

(declare-fun e!3340021 () Bool)

(assert (=> b!5384796 (= e!3340021 (matchR!7304 (regTwo!30750 r!7292) s!2326))))

(declare-fun b!5384797 () Bool)

(declare-fun lt!2193109 () Unit!153994)

(declare-fun lt!2193108 () Unit!153994)

(assert (=> b!5384797 (= lt!2193109 lt!2193108)))

(assert (=> b!5384797 (= (++!13424 (++!13424 Nil!61532 (Cons!61532 (h!67980 s!2326) Nil!61532)) (t!374879 s!2326)) s!2326)))

(assert (=> b!5384797 (= lt!2193108 (lemmaMoveElementToOtherListKeepsConcatEq!1811 Nil!61532 (h!67980 s!2326) (t!374879 s!2326) s!2326))))

(assert (=> b!5384797 (= e!3340022 (findConcatSeparation!1644 lt!2192923 (regTwo!30750 r!7292) (++!13424 Nil!61532 (Cons!61532 (h!67980 s!2326) Nil!61532)) (t!374879 s!2326) s!2326))))

(declare-fun b!5384798 () Bool)

(declare-fun e!3340023 () Option!15230)

(assert (=> b!5384798 (= e!3340023 e!3340022)))

(declare-fun c!938396 () Bool)

(assert (=> b!5384798 (= c!938396 ((_ is Nil!61532) s!2326))))

(declare-fun b!5384799 () Bool)

(declare-fun res!2287154 () Bool)

(assert (=> b!5384799 (=> (not res!2287154) (not e!3340020))))

(assert (=> b!5384799 (= res!2287154 (matchR!7304 lt!2192923 (_1!35621 (get!21187 lt!2193107))))))

(declare-fun b!5384795 () Bool)

(assert (=> b!5384795 (= e!3340020 (= (++!13424 (_1!35621 (get!21187 lt!2193107)) (_2!35621 (get!21187 lt!2193107))) s!2326))))

(declare-fun d!1722481 () Bool)

(declare-fun e!3340024 () Bool)

(assert (=> d!1722481 e!3340024))

(declare-fun res!2287153 () Bool)

(assert (=> d!1722481 (=> res!2287153 e!3340024)))

(assert (=> d!1722481 (= res!2287153 e!3340020)))

(declare-fun res!2287151 () Bool)

(assert (=> d!1722481 (=> (not res!2287151) (not e!3340020))))

(assert (=> d!1722481 (= res!2287151 (isDefined!11933 lt!2193107))))

(assert (=> d!1722481 (= lt!2193107 e!3340023)))

(declare-fun c!938397 () Bool)

(assert (=> d!1722481 (= c!938397 e!3340021)))

(declare-fun res!2287155 () Bool)

(assert (=> d!1722481 (=> (not res!2287155) (not e!3340021))))

(assert (=> d!1722481 (= res!2287155 (matchR!7304 lt!2192923 Nil!61532))))

(assert (=> d!1722481 (validRegex!6855 lt!2192923)))

(assert (=> d!1722481 (= (findConcatSeparation!1644 lt!2192923 (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326) lt!2193107)))

(declare-fun b!5384800 () Bool)

(assert (=> b!5384800 (= e!3340024 (not (isDefined!11933 lt!2193107)))))

(declare-fun b!5384801 () Bool)

(assert (=> b!5384801 (= e!3340023 (Some!15229 (tuple2!64637 Nil!61532 s!2326)))))

(assert (= (and d!1722481 res!2287155) b!5384796))

(assert (= (and d!1722481 c!938397) b!5384801))

(assert (= (and d!1722481 (not c!938397)) b!5384798))

(assert (= (and b!5384798 c!938396) b!5384793))

(assert (= (and b!5384798 (not c!938396)) b!5384797))

(assert (= (and d!1722481 res!2287151) b!5384799))

(assert (= (and b!5384799 res!2287154) b!5384794))

(assert (= (and b!5384794 res!2287152) b!5384795))

(assert (= (and d!1722481 (not res!2287153)) b!5384800))

(declare-fun m!6410684 () Bool)

(assert (=> b!5384794 m!6410684))

(declare-fun m!6410686 () Bool)

(assert (=> b!5384794 m!6410686))

(declare-fun m!6410688 () Bool)

(assert (=> d!1722481 m!6410688))

(declare-fun m!6410690 () Bool)

(assert (=> d!1722481 m!6410690))

(assert (=> d!1722481 m!6410414))

(assert (=> b!5384799 m!6410684))

(declare-fun m!6410692 () Bool)

(assert (=> b!5384799 m!6410692))

(assert (=> b!5384800 m!6410688))

(assert (=> b!5384797 m!6410506))

(assert (=> b!5384797 m!6410506))

(assert (=> b!5384797 m!6410508))

(assert (=> b!5384797 m!6410510))

(assert (=> b!5384797 m!6410506))

(declare-fun m!6410694 () Bool)

(assert (=> b!5384797 m!6410694))

(assert (=> b!5384796 m!6410514))

(assert (=> b!5384795 m!6410684))

(declare-fun m!6410696 () Bool)

(assert (=> b!5384795 m!6410696))

(assert (=> b!5384045 d!1722481))

(declare-fun d!1722485 () Bool)

(assert (=> d!1722485 (= (get!21187 lt!2192963) (v!51258 lt!2192963))))

(assert (=> b!5384045 d!1722485))

(declare-fun bs!1246374 () Bool)

(declare-fun d!1722487 () Bool)

(assert (= bs!1246374 (and d!1722487 d!1722375)))

(declare-fun lambda!279077 () Int)

(assert (=> bs!1246374 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279077 lambda!279058))))

(declare-fun bs!1246375 () Bool)

(assert (= bs!1246375 (and d!1722487 d!1722389)))

(assert (=> bs!1246375 (not (= lambda!279077 lambda!279066))))

(assert (=> bs!1246375 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279077 lambda!279065))))

(declare-fun bs!1246376 () Bool)

(assert (= bs!1246376 (and d!1722487 d!1722303)))

(assert (=> bs!1246376 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) (Star!15119 (reg!15448 (regOne!30750 r!7292))))) (= lambda!279077 lambda!279036))))

(declare-fun bs!1246377 () Bool)

(assert (= bs!1246377 (and d!1722487 b!5384069)))

(assert (=> bs!1246377 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279077 lambda!279002))))

(declare-fun bs!1246378 () Bool)

(assert (= bs!1246378 (and d!1722487 b!5384045)))

(assert (=> bs!1246378 (not (= lambda!279077 lambda!279001))))

(declare-fun bs!1246379 () Bool)

(assert (= bs!1246379 (and d!1722487 b!5384068)))

(assert (=> bs!1246379 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279077 lambda!278997))))

(declare-fun bs!1246380 () Bool)

(assert (= bs!1246380 (and d!1722487 d!1722443)))

(assert (=> bs!1246380 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279077 lambda!279071))))

(assert (=> bs!1246377 (not (= lambda!279077 lambda!279003))))

(declare-fun bs!1246382 () Bool)

(assert (= bs!1246382 (and d!1722487 b!5384443)))

(assert (=> bs!1246382 (not (= lambda!279077 lambda!279052))))

(declare-fun bs!1246383 () Bool)

(assert (= bs!1246383 (and d!1722487 d!1722445)))

(assert (=> bs!1246383 (not (= lambda!279077 lambda!279073))))

(declare-fun bs!1246385 () Bool)

(assert (= bs!1246385 (and d!1722487 b!5384451)))

(assert (=> bs!1246385 (not (= lambda!279077 lambda!279050))))

(assert (=> bs!1246383 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279077 lambda!279072))))

(assert (=> bs!1246378 (= lambda!279077 lambda!279000)))

(assert (=> bs!1246379 (not (= lambda!279077 lambda!278998))))

(assert (=> bs!1246377 (not (= lambda!279077 lambda!279004))))

(assert (=> bs!1246376 (not (= lambda!279077 lambda!279038))))

(assert (=> d!1722487 true))

(assert (=> d!1722487 true))

(assert (=> d!1722487 true))

(declare-fun lambda!279078 () Int)

(assert (=> bs!1246374 (not (= lambda!279078 lambda!279058))))

(assert (=> bs!1246375 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279078 lambda!279066))))

(assert (=> bs!1246375 (not (= lambda!279078 lambda!279065))))

(assert (=> bs!1246376 (not (= lambda!279078 lambda!279036))))

(assert (=> bs!1246377 (not (= lambda!279078 lambda!279002))))

(assert (=> bs!1246378 (= lambda!279078 lambda!279001)))

(assert (=> bs!1246379 (not (= lambda!279078 lambda!278997))))

(assert (=> bs!1246380 (not (= lambda!279078 lambda!279071))))

(assert (=> bs!1246377 (not (= lambda!279078 lambda!279003))))

(declare-fun bs!1246387 () Bool)

(assert (= bs!1246387 d!1722487))

(assert (=> bs!1246387 (not (= lambda!279078 lambda!279077))))

(assert (=> bs!1246382 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (regOne!30750 lt!2192923)) (= (regTwo!30750 r!7292) (regTwo!30750 lt!2192923))) (= lambda!279078 lambda!279052))))

(assert (=> bs!1246383 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279078 lambda!279073))))

(assert (=> bs!1246385 (not (= lambda!279078 lambda!279050))))

(assert (=> bs!1246383 (not (= lambda!279078 lambda!279072))))

(assert (=> bs!1246378 (not (= lambda!279078 lambda!279000))))

(assert (=> bs!1246379 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279078 lambda!278998))))

(assert (=> bs!1246377 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279078 lambda!279004))))

(assert (=> bs!1246376 (not (= lambda!279078 lambda!279038))))

(assert (=> d!1722487 true))

(assert (=> d!1722487 true))

(assert (=> d!1722487 true))

(assert (=> d!1722487 (= (Exists!2300 lambda!279077) (Exists!2300 lambda!279078))))

(declare-fun lt!2193110 () Unit!153994)

(assert (=> d!1722487 (= lt!2193110 (choose!40471 lt!2192923 (regTwo!30750 r!7292) s!2326))))

(assert (=> d!1722487 (validRegex!6855 lt!2192923)))

(assert (=> d!1722487 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!954 lt!2192923 (regTwo!30750 r!7292) s!2326) lt!2193110)))

(declare-fun m!6410718 () Bool)

(assert (=> bs!1246387 m!6410718))

(declare-fun m!6410720 () Bool)

(assert (=> bs!1246387 m!6410720))

(declare-fun m!6410722 () Bool)

(assert (=> bs!1246387 m!6410722))

(assert (=> bs!1246387 m!6410414))

(assert (=> b!5384045 d!1722487))

(declare-fun d!1722497 () Bool)

(assert (=> d!1722497 (= (Exists!2300 lambda!279000) (choose!40473 lambda!279000))))

(declare-fun bs!1246390 () Bool)

(assert (= bs!1246390 d!1722497))

(declare-fun m!6410724 () Bool)

(assert (=> bs!1246390 m!6410724))

(assert (=> b!5384045 d!1722497))

(declare-fun bs!1246391 () Bool)

(declare-fun d!1722499 () Bool)

(assert (= bs!1246391 (and d!1722499 d!1722375)))

(declare-fun lambda!279082 () Int)

(assert (=> bs!1246391 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279082 lambda!279058))))

(declare-fun bs!1246392 () Bool)

(assert (= bs!1246392 (and d!1722499 d!1722389)))

(assert (=> bs!1246392 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279082 lambda!279065))))

(declare-fun bs!1246393 () Bool)

(assert (= bs!1246393 (and d!1722499 d!1722303)))

(assert (=> bs!1246393 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) (Star!15119 (reg!15448 (regOne!30750 r!7292))))) (= lambda!279082 lambda!279036))))

(declare-fun bs!1246394 () Bool)

(assert (= bs!1246394 (and d!1722499 b!5384069)))

(assert (=> bs!1246394 (= (and (= s!2326 (_1!35621 lt!2192924)) (= lt!2192923 (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279082 lambda!279002))))

(declare-fun bs!1246395 () Bool)

(assert (= bs!1246395 (and d!1722499 b!5384045)))

(assert (=> bs!1246395 (not (= lambda!279082 lambda!279001))))

(declare-fun bs!1246396 () Bool)

(assert (= bs!1246396 (and d!1722499 b!5384068)))

(assert (=> bs!1246396 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279082 lambda!278997))))

(declare-fun bs!1246397 () Bool)

(assert (= bs!1246397 (and d!1722499 d!1722443)))

(assert (=> bs!1246397 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279082 lambda!279071))))

(assert (=> bs!1246394 (not (= lambda!279082 lambda!279003))))

(declare-fun bs!1246398 () Bool)

(assert (= bs!1246398 (and d!1722499 d!1722487)))

(assert (=> bs!1246398 (= lambda!279082 lambda!279077)))

(declare-fun bs!1246399 () Bool)

(assert (= bs!1246399 (and d!1722499 b!5384443)))

(assert (=> bs!1246399 (not (= lambda!279082 lambda!279052))))

(assert (=> bs!1246392 (not (= lambda!279082 lambda!279066))))

(assert (=> bs!1246398 (not (= lambda!279082 lambda!279078))))

(declare-fun bs!1246400 () Bool)

(assert (= bs!1246400 (and d!1722499 d!1722445)))

(assert (=> bs!1246400 (not (= lambda!279082 lambda!279073))))

(declare-fun bs!1246401 () Bool)

(assert (= bs!1246401 (and d!1722499 b!5384451)))

(assert (=> bs!1246401 (not (= lambda!279082 lambda!279050))))

(assert (=> bs!1246400 (= (= lt!2192923 (regOne!30750 r!7292)) (= lambda!279082 lambda!279072))))

(assert (=> bs!1246395 (= lambda!279082 lambda!279000)))

(assert (=> bs!1246396 (not (= lambda!279082 lambda!278998))))

(assert (=> bs!1246394 (not (= lambda!279082 lambda!279004))))

(assert (=> bs!1246393 (not (= lambda!279082 lambda!279038))))

(assert (=> d!1722499 true))

(assert (=> d!1722499 true))

(assert (=> d!1722499 true))

(assert (=> d!1722499 (= (isDefined!11933 (findConcatSeparation!1644 lt!2192923 (regTwo!30750 r!7292) Nil!61532 s!2326 s!2326)) (Exists!2300 lambda!279082))))

(declare-fun lt!2193115 () Unit!153994)

(assert (=> d!1722499 (= lt!2193115 (choose!40470 lt!2192923 (regTwo!30750 r!7292) s!2326))))

(assert (=> d!1722499 (validRegex!6855 lt!2192923)))

(assert (=> d!1722499 (= (lemmaFindConcatSeparationEquivalentToExists!1408 lt!2192923 (regTwo!30750 r!7292) s!2326) lt!2193115)))

(declare-fun bs!1246402 () Bool)

(assert (= bs!1246402 d!1722499))

(assert (=> bs!1246402 m!6409766))

(assert (=> bs!1246402 m!6409766))

(declare-fun m!6410730 () Bool)

(assert (=> bs!1246402 m!6410730))

(declare-fun m!6410732 () Bool)

(assert (=> bs!1246402 m!6410732))

(declare-fun m!6410734 () Bool)

(assert (=> bs!1246402 m!6410734))

(assert (=> bs!1246402 m!6410414))

(assert (=> b!5384045 d!1722499))

(declare-fun d!1722501 () Bool)

(declare-fun c!938404 () Bool)

(assert (=> d!1722501 (= c!938404 (isEmpty!33527 (t!374879 s!2326)))))

(declare-fun e!3340053 () Bool)

(assert (=> d!1722501 (= (matchZipper!1363 lt!2192956 (t!374879 s!2326)) e!3340053)))

(declare-fun b!5384867 () Bool)

(declare-fun nullableZipper!1416 ((InoxSet Context!9006)) Bool)

(assert (=> b!5384867 (= e!3340053 (nullableZipper!1416 lt!2192956))))

(declare-fun b!5384868 () Bool)

(assert (=> b!5384868 (= e!3340053 (matchZipper!1363 (derivationStepZipper!1358 lt!2192956 (head!11549 (t!374879 s!2326))) (tail!10646 (t!374879 s!2326))))))

(assert (= (and d!1722501 c!938404) b!5384867))

(assert (= (and d!1722501 (not c!938404)) b!5384868))

(declare-fun m!6410736 () Bool)

(assert (=> d!1722501 m!6410736))

(declare-fun m!6410738 () Bool)

(assert (=> b!5384867 m!6410738))

(declare-fun m!6410740 () Bool)

(assert (=> b!5384868 m!6410740))

(assert (=> b!5384868 m!6410740))

(declare-fun m!6410742 () Bool)

(assert (=> b!5384868 m!6410742))

(declare-fun m!6410744 () Bool)

(assert (=> b!5384868 m!6410744))

(assert (=> b!5384868 m!6410742))

(assert (=> b!5384868 m!6410744))

(declare-fun m!6410746 () Bool)

(assert (=> b!5384868 m!6410746))

(assert (=> b!5384034 d!1722501))

(declare-fun bs!1246407 () Bool)

(declare-fun d!1722511 () Bool)

(assert (= bs!1246407 (and d!1722511 b!5384039)))

(declare-fun lambda!279085 () Int)

(assert (=> bs!1246407 (= lambda!279085 lambda!279005)))

(declare-fun b!5384889 () Bool)

(declare-fun e!3340069 () Bool)

(declare-fun e!3340066 () Bool)

(assert (=> b!5384889 (= e!3340069 e!3340066)))

(declare-fun c!938414 () Bool)

(assert (=> b!5384889 (= c!938414 (isEmpty!33528 (unfocusZipperList!561 zl!343)))))

(declare-fun b!5384890 () Bool)

(declare-fun e!3340070 () Bool)

(assert (=> b!5384890 (= e!3340066 e!3340070)))

(declare-fun c!938416 () Bool)

(declare-fun tail!10647 (List!61657) List!61657)

(assert (=> b!5384890 (= c!938416 (isEmpty!33528 (tail!10647 (unfocusZipperList!561 zl!343))))))

(declare-fun b!5384891 () Bool)

(declare-fun e!3340071 () Regex!15119)

(assert (=> b!5384891 (= e!3340071 EmptyLang!15119)))

(declare-fun b!5384892 () Bool)

(declare-fun e!3340067 () Regex!15119)

(assert (=> b!5384892 (= e!3340067 e!3340071)))

(declare-fun c!938413 () Bool)

(assert (=> b!5384892 (= c!938413 ((_ is Cons!61533) (unfocusZipperList!561 zl!343)))))

(declare-fun b!5384893 () Bool)

(declare-fun lt!2193118 () Regex!15119)

(declare-fun isEmptyLang!958 (Regex!15119) Bool)

(assert (=> b!5384893 (= e!3340066 (isEmptyLang!958 lt!2193118))))

(declare-fun b!5384894 () Bool)

(assert (=> b!5384894 (= e!3340071 (Union!15119 (h!67981 (unfocusZipperList!561 zl!343)) (generalisedUnion!1048 (t!374880 (unfocusZipperList!561 zl!343)))))))

(declare-fun b!5384895 () Bool)

(declare-fun head!11550 (List!61657) Regex!15119)

(assert (=> b!5384895 (= e!3340070 (= lt!2193118 (head!11550 (unfocusZipperList!561 zl!343))))))

(assert (=> d!1722511 e!3340069))

(declare-fun res!2287161 () Bool)

(assert (=> d!1722511 (=> (not res!2287161) (not e!3340069))))

(assert (=> d!1722511 (= res!2287161 (validRegex!6855 lt!2193118))))

(assert (=> d!1722511 (= lt!2193118 e!3340067)))

(declare-fun c!938415 () Bool)

(declare-fun e!3340068 () Bool)

(assert (=> d!1722511 (= c!938415 e!3340068)))

(declare-fun res!2287162 () Bool)

(assert (=> d!1722511 (=> (not res!2287162) (not e!3340068))))

(assert (=> d!1722511 (= res!2287162 ((_ is Cons!61533) (unfocusZipperList!561 zl!343)))))

(declare-fun forall!14509 (List!61657 Int) Bool)

(assert (=> d!1722511 (forall!14509 (unfocusZipperList!561 zl!343) lambda!279085)))

(assert (=> d!1722511 (= (generalisedUnion!1048 (unfocusZipperList!561 zl!343)) lt!2193118)))

(declare-fun b!5384896 () Bool)

(assert (=> b!5384896 (= e!3340067 (h!67981 (unfocusZipperList!561 zl!343)))))

(declare-fun b!5384897 () Bool)

(declare-fun isUnion!390 (Regex!15119) Bool)

(assert (=> b!5384897 (= e!3340070 (isUnion!390 lt!2193118))))

(declare-fun b!5384898 () Bool)

(assert (=> b!5384898 (= e!3340068 (isEmpty!33528 (t!374880 (unfocusZipperList!561 zl!343))))))

(assert (= (and d!1722511 res!2287162) b!5384898))

(assert (= (and d!1722511 c!938415) b!5384896))

(assert (= (and d!1722511 (not c!938415)) b!5384892))

(assert (= (and b!5384892 c!938413) b!5384894))

(assert (= (and b!5384892 (not c!938413)) b!5384891))

(assert (= (and d!1722511 res!2287161) b!5384889))

(assert (= (and b!5384889 c!938414) b!5384893))

(assert (= (and b!5384889 (not c!938414)) b!5384890))

(assert (= (and b!5384890 c!938416) b!5384895))

(assert (= (and b!5384890 (not c!938416)) b!5384897))

(declare-fun m!6410748 () Bool)

(assert (=> b!5384898 m!6410748))

(assert (=> b!5384889 m!6409840))

(declare-fun m!6410750 () Bool)

(assert (=> b!5384889 m!6410750))

(assert (=> b!5384890 m!6409840))

(declare-fun m!6410752 () Bool)

(assert (=> b!5384890 m!6410752))

(assert (=> b!5384890 m!6410752))

(declare-fun m!6410754 () Bool)

(assert (=> b!5384890 m!6410754))

(declare-fun m!6410756 () Bool)

(assert (=> b!5384897 m!6410756))

(declare-fun m!6410758 () Bool)

(assert (=> d!1722511 m!6410758))

(assert (=> d!1722511 m!6409840))

(declare-fun m!6410760 () Bool)

(assert (=> d!1722511 m!6410760))

(declare-fun m!6410762 () Bool)

(assert (=> b!5384894 m!6410762))

(assert (=> b!5384895 m!6409840))

(declare-fun m!6410764 () Bool)

(assert (=> b!5384895 m!6410764))

(declare-fun m!6410766 () Bool)

(assert (=> b!5384893 m!6410766))

(assert (=> b!5384055 d!1722511))

(declare-fun bs!1246408 () Bool)

(declare-fun d!1722513 () Bool)

(assert (= bs!1246408 (and d!1722513 b!5384039)))

(declare-fun lambda!279088 () Int)

(assert (=> bs!1246408 (= lambda!279088 lambda!279005)))

(declare-fun bs!1246409 () Bool)

(assert (= bs!1246409 (and d!1722513 d!1722511)))

(assert (=> bs!1246409 (= lambda!279088 lambda!279085)))

(declare-fun lt!2193121 () List!61657)

(assert (=> d!1722513 (forall!14509 lt!2193121 lambda!279088)))

(declare-fun e!3340074 () List!61657)

(assert (=> d!1722513 (= lt!2193121 e!3340074)))

(declare-fun c!938419 () Bool)

(assert (=> d!1722513 (= c!938419 ((_ is Cons!61534) zl!343))))

(assert (=> d!1722513 (= (unfocusZipperList!561 zl!343) lt!2193121)))

(declare-fun b!5384903 () Bool)

(assert (=> b!5384903 (= e!3340074 (Cons!61533 (generalisedConcat!788 (exprs!5003 (h!67982 zl!343))) (unfocusZipperList!561 (t!374881 zl!343))))))

(declare-fun b!5384904 () Bool)

(assert (=> b!5384904 (= e!3340074 Nil!61533)))

(assert (= (and d!1722513 c!938419) b!5384903))

(assert (= (and d!1722513 (not c!938419)) b!5384904))

(declare-fun m!6410768 () Bool)

(assert (=> d!1722513 m!6410768))

(assert (=> b!5384903 m!6409776))

(declare-fun m!6410770 () Bool)

(assert (=> b!5384903 m!6410770))

(assert (=> b!5384055 d!1722513))

(declare-fun bs!1246410 () Bool)

(declare-fun d!1722515 () Bool)

(assert (= bs!1246410 (and d!1722515 b!5384039)))

(declare-fun lambda!279091 () Int)

(assert (=> bs!1246410 (= lambda!279091 lambda!279005)))

(declare-fun bs!1246411 () Bool)

(assert (= bs!1246411 (and d!1722515 d!1722511)))

(assert (=> bs!1246411 (= lambda!279091 lambda!279085)))

(declare-fun bs!1246412 () Bool)

(assert (= bs!1246412 (and d!1722515 d!1722513)))

(assert (=> bs!1246412 (= lambda!279091 lambda!279088)))

(assert (=> d!1722515 (= (inv!81044 setElem!34949) (forall!14509 (exprs!5003 setElem!34949) lambda!279091))))

(declare-fun bs!1246413 () Bool)

(assert (= bs!1246413 d!1722515))

(declare-fun m!6410772 () Bool)

(assert (=> bs!1246413 m!6410772))

(assert (=> setNonEmpty!34949 d!1722515))

(declare-fun d!1722517 () Bool)

(declare-fun choose!40475 ((InoxSet Context!9006) Int) (InoxSet Context!9006))

(assert (=> d!1722517 (= (flatMap!846 lt!2192953 lambda!278999) (choose!40475 lt!2192953 lambda!278999))))

(declare-fun bs!1246414 () Bool)

(assert (= bs!1246414 d!1722517))

(declare-fun m!6410774 () Bool)

(assert (=> bs!1246414 m!6410774))

(assert (=> b!5384074 d!1722517))

(declare-fun d!1722519 () Bool)

(declare-fun lt!2193122 () Regex!15119)

(assert (=> d!1722519 (validRegex!6855 lt!2193122)))

(assert (=> d!1722519 (= lt!2193122 (generalisedUnion!1048 (unfocusZipperList!561 lt!2192928)))))

(assert (=> d!1722519 (= (unfocusZipper!861 lt!2192928) lt!2193122)))

(declare-fun bs!1246415 () Bool)

(assert (= bs!1246415 d!1722519))

(declare-fun m!6410776 () Bool)

(assert (=> bs!1246415 m!6410776))

(declare-fun m!6410778 () Bool)

(assert (=> bs!1246415 m!6410778))

(assert (=> bs!1246415 m!6410778))

(declare-fun m!6410780 () Bool)

(assert (=> bs!1246415 m!6410780))

(assert (=> b!5384074 d!1722519))

(declare-fun d!1722521 () Bool)

(declare-fun c!938424 () Bool)

(declare-fun e!3340082 () Bool)

(assert (=> d!1722521 (= c!938424 e!3340082)))

(declare-fun res!2287165 () Bool)

(assert (=> d!1722521 (=> (not res!2287165) (not e!3340082))))

(assert (=> d!1722521 (= res!2287165 ((_ is Cons!61533) (exprs!5003 lt!2192967)))))

(declare-fun e!3340081 () (InoxSet Context!9006))

(assert (=> d!1722521 (= (derivationStepZipperUp!491 lt!2192967 (h!67980 s!2326)) e!3340081)))

(declare-fun b!5384915 () Bool)

(assert (=> b!5384915 (= e!3340082 (nullable!5288 (h!67981 (exprs!5003 lt!2192967))))))

(declare-fun b!5384916 () Bool)

(declare-fun call!385510 () (InoxSet Context!9006))

(assert (=> b!5384916 (= e!3340081 ((_ map or) call!385510 (derivationStepZipperUp!491 (Context!9007 (t!374880 (exprs!5003 lt!2192967))) (h!67980 s!2326))))))

(declare-fun b!5384917 () Bool)

(declare-fun e!3340083 () (InoxSet Context!9006))

(assert (=> b!5384917 (= e!3340083 call!385510)))

(declare-fun b!5384918 () Bool)

(assert (=> b!5384918 (= e!3340081 e!3340083)))

(declare-fun c!938425 () Bool)

(assert (=> b!5384918 (= c!938425 ((_ is Cons!61533) (exprs!5003 lt!2192967)))))

(declare-fun b!5384919 () Bool)

(assert (=> b!5384919 (= e!3340083 ((as const (Array Context!9006 Bool)) false))))

(declare-fun bm!385505 () Bool)

(assert (=> bm!385505 (= call!385510 (derivationStepZipperDown!567 (h!67981 (exprs!5003 lt!2192967)) (Context!9007 (t!374880 (exprs!5003 lt!2192967))) (h!67980 s!2326)))))

(assert (= (and d!1722521 res!2287165) b!5384915))

(assert (= (and d!1722521 c!938424) b!5384916))

(assert (= (and d!1722521 (not c!938424)) b!5384918))

(assert (= (and b!5384918 c!938425) b!5384917))

(assert (= (and b!5384918 (not c!938425)) b!5384919))

(assert (= (or b!5384916 b!5384917) bm!385505))

(declare-fun m!6410782 () Bool)

(assert (=> b!5384915 m!6410782))

(declare-fun m!6410784 () Bool)

(assert (=> b!5384916 m!6410784))

(declare-fun m!6410786 () Bool)

(assert (=> bm!385505 m!6410786))

(assert (=> b!5384074 d!1722521))

(declare-fun d!1722523 () Bool)

(assert (=> d!1722523 (= (flatMap!846 lt!2192920 lambda!278999) (choose!40475 lt!2192920 lambda!278999))))

(declare-fun bs!1246416 () Bool)

(assert (= bs!1246416 d!1722523))

(declare-fun m!6410788 () Bool)

(assert (=> bs!1246416 m!6410788))

(assert (=> b!5384074 d!1722523))

(declare-fun d!1722525 () Bool)

(declare-fun dynLambda!24277 (Int Context!9006) (InoxSet Context!9006))

(assert (=> d!1722525 (= (flatMap!846 lt!2192920 lambda!278999) (dynLambda!24277 lambda!278999 lt!2192969))))

(declare-fun lt!2193125 () Unit!153994)

(declare-fun choose!40476 ((InoxSet Context!9006) Context!9006 Int) Unit!153994)

(assert (=> d!1722525 (= lt!2193125 (choose!40476 lt!2192920 lt!2192969 lambda!278999))))

(assert (=> d!1722525 (= lt!2192920 (store ((as const (Array Context!9006 Bool)) false) lt!2192969 true))))

(assert (=> d!1722525 (= (lemmaFlatMapOnSingletonSet!378 lt!2192920 lt!2192969 lambda!278999) lt!2193125)))

(declare-fun b_lambda!206141 () Bool)

(assert (=> (not b_lambda!206141) (not d!1722525)))

(declare-fun bs!1246417 () Bool)

(assert (= bs!1246417 d!1722525))

(assert (=> bs!1246417 m!6409920))

(declare-fun m!6410790 () Bool)

(assert (=> bs!1246417 m!6410790))

(declare-fun m!6410792 () Bool)

(assert (=> bs!1246417 m!6410792))

(assert (=> bs!1246417 m!6409924))

(assert (=> b!5384074 d!1722525))

(declare-fun d!1722527 () Bool)

(assert (=> d!1722527 (= (flatMap!846 lt!2192953 lambda!278999) (dynLambda!24277 lambda!278999 lt!2192967))))

(declare-fun lt!2193126 () Unit!153994)

(assert (=> d!1722527 (= lt!2193126 (choose!40476 lt!2192953 lt!2192967 lambda!278999))))

(assert (=> d!1722527 (= lt!2192953 (store ((as const (Array Context!9006 Bool)) false) lt!2192967 true))))

(assert (=> d!1722527 (= (lemmaFlatMapOnSingletonSet!378 lt!2192953 lt!2192967 lambda!278999) lt!2193126)))

(declare-fun b_lambda!206143 () Bool)

(assert (=> (not b_lambda!206143) (not d!1722527)))

(declare-fun bs!1246418 () Bool)

(assert (= bs!1246418 d!1722527))

(assert (=> bs!1246418 m!6409928))

(declare-fun m!6410794 () Bool)

(assert (=> bs!1246418 m!6410794))

(declare-fun m!6410796 () Bool)

(assert (=> bs!1246418 m!6410796))

(assert (=> bs!1246418 m!6409926))

(assert (=> b!5384074 d!1722527))

(declare-fun d!1722529 () Bool)

(declare-fun c!938426 () Bool)

(declare-fun e!3340085 () Bool)

(assert (=> d!1722529 (= c!938426 e!3340085)))

(declare-fun res!2287166 () Bool)

(assert (=> d!1722529 (=> (not res!2287166) (not e!3340085))))

(assert (=> d!1722529 (= res!2287166 ((_ is Cons!61533) (exprs!5003 lt!2192969)))))

(declare-fun e!3340084 () (InoxSet Context!9006))

(assert (=> d!1722529 (= (derivationStepZipperUp!491 lt!2192969 (h!67980 s!2326)) e!3340084)))

(declare-fun b!5384920 () Bool)

(assert (=> b!5384920 (= e!3340085 (nullable!5288 (h!67981 (exprs!5003 lt!2192969))))))

(declare-fun call!385511 () (InoxSet Context!9006))

(declare-fun b!5384921 () Bool)

(assert (=> b!5384921 (= e!3340084 ((_ map or) call!385511 (derivationStepZipperUp!491 (Context!9007 (t!374880 (exprs!5003 lt!2192969))) (h!67980 s!2326))))))

(declare-fun b!5384922 () Bool)

(declare-fun e!3340086 () (InoxSet Context!9006))

(assert (=> b!5384922 (= e!3340086 call!385511)))

(declare-fun b!5384923 () Bool)

(assert (=> b!5384923 (= e!3340084 e!3340086)))

(declare-fun c!938427 () Bool)

(assert (=> b!5384923 (= c!938427 ((_ is Cons!61533) (exprs!5003 lt!2192969)))))

(declare-fun b!5384924 () Bool)

(assert (=> b!5384924 (= e!3340086 ((as const (Array Context!9006 Bool)) false))))

(declare-fun bm!385506 () Bool)

(assert (=> bm!385506 (= call!385511 (derivationStepZipperDown!567 (h!67981 (exprs!5003 lt!2192969)) (Context!9007 (t!374880 (exprs!5003 lt!2192969))) (h!67980 s!2326)))))

(assert (= (and d!1722529 res!2287166) b!5384920))

(assert (= (and d!1722529 c!938426) b!5384921))

(assert (= (and d!1722529 (not c!938426)) b!5384923))

(assert (= (and b!5384923 c!938427) b!5384922))

(assert (= (and b!5384923 (not c!938427)) b!5384924))

(assert (= (or b!5384921 b!5384922) bm!385506))

(declare-fun m!6410798 () Bool)

(assert (=> b!5384920 m!6410798))

(declare-fun m!6410800 () Bool)

(assert (=> b!5384921 m!6410800))

(declare-fun m!6410802 () Bool)

(assert (=> bm!385506 m!6410802))

(assert (=> b!5384074 d!1722529))

(declare-fun bs!1246419 () Bool)

(declare-fun d!1722531 () Bool)

(assert (= bs!1246419 (and d!1722531 b!5384039)))

(declare-fun lambda!279092 () Int)

(assert (=> bs!1246419 (= lambda!279092 lambda!279005)))

(declare-fun bs!1246420 () Bool)

(assert (= bs!1246420 (and d!1722531 d!1722511)))

(assert (=> bs!1246420 (= lambda!279092 lambda!279085)))

(declare-fun bs!1246421 () Bool)

(assert (= bs!1246421 (and d!1722531 d!1722513)))

(assert (=> bs!1246421 (= lambda!279092 lambda!279088)))

(declare-fun bs!1246422 () Bool)

(assert (= bs!1246422 (and d!1722531 d!1722515)))

(assert (=> bs!1246422 (= lambda!279092 lambda!279091)))

(assert (=> d!1722531 (= (inv!81044 (h!67982 zl!343)) (forall!14509 (exprs!5003 (h!67982 zl!343)) lambda!279092))))

(declare-fun bs!1246423 () Bool)

(assert (= bs!1246423 d!1722531))

(declare-fun m!6410804 () Bool)

(assert (=> bs!1246423 m!6410804))

(assert (=> b!5384032 d!1722531))

(declare-fun b!5384925 () Bool)

(declare-fun e!3340093 () Bool)

(declare-fun e!3340089 () Bool)

(assert (=> b!5384925 (= e!3340093 e!3340089)))

(declare-fun res!2287172 () Bool)

(assert (=> b!5384925 (=> res!2287172 e!3340089)))

(declare-fun call!385512 () Bool)

(assert (=> b!5384925 (= res!2287172 call!385512)))

(declare-fun b!5384926 () Bool)

(declare-fun res!2287173 () Bool)

(declare-fun e!3340088 () Bool)

(assert (=> b!5384926 (=> res!2287173 e!3340088)))

(declare-fun e!3340087 () Bool)

(assert (=> b!5384926 (= res!2287173 e!3340087)))

(declare-fun res!2287169 () Bool)

(assert (=> b!5384926 (=> (not res!2287169) (not e!3340087))))

(declare-fun lt!2193127 () Bool)

(assert (=> b!5384926 (= res!2287169 lt!2193127)))

(declare-fun b!5384927 () Bool)

(declare-fun res!2287167 () Bool)

(assert (=> b!5384927 (=> res!2287167 e!3340089)))

(assert (=> b!5384927 (= res!2287167 (not (isEmpty!33527 (tail!10646 s!2326))))))

(declare-fun b!5384928 () Bool)

(assert (=> b!5384928 (= e!3340088 e!3340093)))

(declare-fun res!2287170 () Bool)

(assert (=> b!5384928 (=> (not res!2287170) (not e!3340093))))

(assert (=> b!5384928 (= res!2287170 (not lt!2193127))))

(declare-fun b!5384929 () Bool)

(declare-fun res!2287168 () Bool)

(assert (=> b!5384929 (=> (not res!2287168) (not e!3340087))))

(assert (=> b!5384929 (= res!2287168 (not call!385512))))

(declare-fun b!5384930 () Bool)

(declare-fun e!3340092 () Bool)

(assert (=> b!5384930 (= e!3340092 (nullable!5288 lt!2192942))))

(declare-fun b!5384931 () Bool)

(declare-fun res!2287171 () Bool)

(assert (=> b!5384931 (=> res!2287171 e!3340088)))

(assert (=> b!5384931 (= res!2287171 (not ((_ is ElementMatch!15119) lt!2192942)))))

(declare-fun e!3340091 () Bool)

(assert (=> b!5384931 (= e!3340091 e!3340088)))

(declare-fun b!5384932 () Bool)

(assert (=> b!5384932 (= e!3340089 (not (= (head!11549 s!2326) (c!938207 lt!2192942))))))

(declare-fun bm!385507 () Bool)

(assert (=> bm!385507 (= call!385512 (isEmpty!33527 s!2326))))

(declare-fun b!5384933 () Bool)

(assert (=> b!5384933 (= e!3340091 (not lt!2193127))))

(declare-fun d!1722533 () Bool)

(declare-fun e!3340090 () Bool)

(assert (=> d!1722533 e!3340090))

(declare-fun c!938428 () Bool)

(assert (=> d!1722533 (= c!938428 ((_ is EmptyExpr!15119) lt!2192942))))

(assert (=> d!1722533 (= lt!2193127 e!3340092)))

(declare-fun c!938429 () Bool)

(assert (=> d!1722533 (= c!938429 (isEmpty!33527 s!2326))))

(assert (=> d!1722533 (validRegex!6855 lt!2192942)))

(assert (=> d!1722533 (= (matchR!7304 lt!2192942 s!2326) lt!2193127)))

(declare-fun b!5384934 () Bool)

(assert (=> b!5384934 (= e!3340092 (matchR!7304 (derivativeStep!4237 lt!2192942 (head!11549 s!2326)) (tail!10646 s!2326)))))

(declare-fun b!5384935 () Bool)

(declare-fun res!2287174 () Bool)

(assert (=> b!5384935 (=> (not res!2287174) (not e!3340087))))

(assert (=> b!5384935 (= res!2287174 (isEmpty!33527 (tail!10646 s!2326)))))

(declare-fun b!5384936 () Bool)

(assert (=> b!5384936 (= e!3340090 e!3340091)))

(declare-fun c!938430 () Bool)

(assert (=> b!5384936 (= c!938430 ((_ is EmptyLang!15119) lt!2192942))))

(declare-fun b!5384937 () Bool)

(assert (=> b!5384937 (= e!3340090 (= lt!2193127 call!385512))))

(declare-fun b!5384938 () Bool)

(assert (=> b!5384938 (= e!3340087 (= (head!11549 s!2326) (c!938207 lt!2192942)))))

(assert (= (and d!1722533 c!938429) b!5384930))

(assert (= (and d!1722533 (not c!938429)) b!5384934))

(assert (= (and d!1722533 c!938428) b!5384937))

(assert (= (and d!1722533 (not c!938428)) b!5384936))

(assert (= (and b!5384936 c!938430) b!5384933))

(assert (= (and b!5384936 (not c!938430)) b!5384931))

(assert (= (and b!5384931 (not res!2287171)) b!5384926))

(assert (= (and b!5384926 res!2287169) b!5384929))

(assert (= (and b!5384929 res!2287168) b!5384935))

(assert (= (and b!5384935 res!2287174) b!5384938))

(assert (= (and b!5384926 (not res!2287173)) b!5384928))

(assert (= (and b!5384928 res!2287170) b!5384925))

(assert (= (and b!5384925 (not res!2287172)) b!5384927))

(assert (= (and b!5384927 (not res!2287167)) b!5384932))

(assert (= (or b!5384937 b!5384925 b!5384929) bm!385507))

(declare-fun m!6410806 () Bool)

(assert (=> bm!385507 m!6410806))

(declare-fun m!6410808 () Bool)

(assert (=> b!5384927 m!6410808))

(assert (=> b!5384927 m!6410808))

(declare-fun m!6410810 () Bool)

(assert (=> b!5384927 m!6410810))

(declare-fun m!6410812 () Bool)

(assert (=> b!5384934 m!6410812))

(assert (=> b!5384934 m!6410812))

(declare-fun m!6410814 () Bool)

(assert (=> b!5384934 m!6410814))

(assert (=> b!5384934 m!6410808))

(assert (=> b!5384934 m!6410814))

(assert (=> b!5384934 m!6410808))

(declare-fun m!6410816 () Bool)

(assert (=> b!5384934 m!6410816))

(assert (=> d!1722533 m!6410806))

(declare-fun m!6410818 () Bool)

(assert (=> d!1722533 m!6410818))

(assert (=> b!5384935 m!6410808))

(assert (=> b!5384935 m!6410808))

(assert (=> b!5384935 m!6410810))

(assert (=> b!5384932 m!6410812))

(assert (=> b!5384938 m!6410812))

(declare-fun m!6410820 () Bool)

(assert (=> b!5384930 m!6410820))

(assert (=> b!5384053 d!1722533))

(declare-fun bs!1246424 () Bool)

(declare-fun b!5384948 () Bool)

(assert (= bs!1246424 (and b!5384948 d!1722375)))

(declare-fun lambda!279093 () Int)

(assert (=> bs!1246424 (not (= lambda!279093 lambda!279058))))

(declare-fun bs!1246425 () Bool)

(assert (= bs!1246425 (and b!5384948 d!1722389)))

(assert (=> bs!1246425 (not (= lambda!279093 lambda!279065))))

(declare-fun bs!1246426 () Bool)

(assert (= bs!1246426 (and b!5384948 d!1722303)))

(assert (=> bs!1246426 (not (= lambda!279093 lambda!279036))))

(declare-fun bs!1246427 () Bool)

(assert (= bs!1246427 (and b!5384948 b!5384045)))

(assert (=> bs!1246427 (not (= lambda!279093 lambda!279001))))

(declare-fun bs!1246428 () Bool)

(assert (= bs!1246428 (and b!5384948 b!5384068)))

(assert (=> bs!1246428 (not (= lambda!279093 lambda!278997))))

(declare-fun bs!1246429 () Bool)

(assert (= bs!1246429 (and b!5384948 d!1722443)))

(assert (=> bs!1246429 (not (= lambda!279093 lambda!279071))))

(declare-fun bs!1246430 () Bool)

(assert (= bs!1246430 (and b!5384948 b!5384069)))

(assert (=> bs!1246430 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (reg!15448 lt!2192942) (reg!15448 (regOne!30750 r!7292))) (= lt!2192942 lt!2192923)) (= lambda!279093 lambda!279003))))

(declare-fun bs!1246431 () Bool)

(assert (= bs!1246431 (and b!5384948 d!1722487)))

(assert (=> bs!1246431 (not (= lambda!279093 lambda!279077))))

(declare-fun bs!1246432 () Bool)

(assert (= bs!1246432 (and b!5384948 b!5384443)))

(assert (=> bs!1246432 (not (= lambda!279093 lambda!279052))))

(assert (=> bs!1246425 (not (= lambda!279093 lambda!279066))))

(assert (=> bs!1246431 (not (= lambda!279093 lambda!279078))))

(declare-fun bs!1246433 () Bool)

(assert (= bs!1246433 (and b!5384948 d!1722499)))

(assert (=> bs!1246433 (not (= lambda!279093 lambda!279082))))

(assert (=> bs!1246430 (not (= lambda!279093 lambda!279002))))

(declare-fun bs!1246434 () Bool)

(assert (= bs!1246434 (and b!5384948 d!1722445)))

(assert (=> bs!1246434 (not (= lambda!279093 lambda!279073))))

(declare-fun bs!1246435 () Bool)

(assert (= bs!1246435 (and b!5384948 b!5384451)))

(assert (=> bs!1246435 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (reg!15448 lt!2192942) (reg!15448 lt!2192923)) (= lt!2192942 lt!2192923)) (= lambda!279093 lambda!279050))))

(assert (=> bs!1246434 (not (= lambda!279093 lambda!279072))))

(assert (=> bs!1246427 (not (= lambda!279093 lambda!279000))))

(assert (=> bs!1246428 (not (= lambda!279093 lambda!278998))))

(assert (=> bs!1246430 (not (= lambda!279093 lambda!279004))))

(assert (=> bs!1246426 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (reg!15448 lt!2192942) (reg!15448 (regOne!30750 r!7292))) (= lt!2192942 (Star!15119 (reg!15448 (regOne!30750 r!7292))))) (= lambda!279093 lambda!279038))))

(assert (=> b!5384948 true))

(assert (=> b!5384948 true))

(declare-fun bs!1246436 () Bool)

(declare-fun b!5384940 () Bool)

(assert (= bs!1246436 (and b!5384940 d!1722375)))

(declare-fun lambda!279094 () Int)

(assert (=> bs!1246436 (not (= lambda!279094 lambda!279058))))

(declare-fun bs!1246437 () Bool)

(assert (= bs!1246437 (and b!5384940 d!1722389)))

(assert (=> bs!1246437 (not (= lambda!279094 lambda!279065))))

(declare-fun bs!1246438 () Bool)

(assert (= bs!1246438 (and b!5384940 d!1722303)))

(assert (=> bs!1246438 (not (= lambda!279094 lambda!279036))))

(declare-fun bs!1246439 () Bool)

(assert (= bs!1246439 (and b!5384940 b!5384045)))

(assert (=> bs!1246439 (= (and (= (regOne!30750 lt!2192942) lt!2192923) (= (regTwo!30750 lt!2192942) (regTwo!30750 r!7292))) (= lambda!279094 lambda!279001))))

(declare-fun bs!1246440 () Bool)

(assert (= bs!1246440 (and b!5384940 b!5384068)))

(assert (=> bs!1246440 (not (= lambda!279094 lambda!278997))))

(declare-fun bs!1246441 () Bool)

(assert (= bs!1246441 (and b!5384940 d!1722443)))

(assert (=> bs!1246441 (not (= lambda!279094 lambda!279071))))

(declare-fun bs!1246442 () Bool)

(assert (= bs!1246442 (and b!5384940 b!5384069)))

(assert (=> bs!1246442 (not (= lambda!279094 lambda!279003))))

(declare-fun bs!1246443 () Bool)

(assert (= bs!1246443 (and b!5384940 b!5384948)))

(assert (=> bs!1246443 (not (= lambda!279094 lambda!279093))))

(declare-fun bs!1246444 () Bool)

(assert (= bs!1246444 (and b!5384940 d!1722487)))

(assert (=> bs!1246444 (not (= lambda!279094 lambda!279077))))

(declare-fun bs!1246445 () Bool)

(assert (= bs!1246445 (and b!5384940 b!5384443)))

(assert (=> bs!1246445 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 lt!2192942) (regOne!30750 lt!2192923)) (= (regTwo!30750 lt!2192942) (regTwo!30750 lt!2192923))) (= lambda!279094 lambda!279052))))

(assert (=> bs!1246437 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 lt!2192942) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 lt!2192942) lt!2192923)) (= lambda!279094 lambda!279066))))

(assert (=> bs!1246444 (= (and (= (regOne!30750 lt!2192942) lt!2192923) (= (regTwo!30750 lt!2192942) (regTwo!30750 r!7292))) (= lambda!279094 lambda!279078))))

(declare-fun bs!1246446 () Bool)

(assert (= bs!1246446 (and b!5384940 d!1722499)))

(assert (=> bs!1246446 (not (= lambda!279094 lambda!279082))))

(assert (=> bs!1246442 (not (= lambda!279094 lambda!279002))))

(declare-fun bs!1246447 () Bool)

(assert (= bs!1246447 (and b!5384940 d!1722445)))

(assert (=> bs!1246447 (= (and (= (regOne!30750 lt!2192942) (regOne!30750 r!7292)) (= (regTwo!30750 lt!2192942) (regTwo!30750 r!7292))) (= lambda!279094 lambda!279073))))

(declare-fun bs!1246448 () Bool)

(assert (= bs!1246448 (and b!5384940 b!5384451)))

(assert (=> bs!1246448 (not (= lambda!279094 lambda!279050))))

(assert (=> bs!1246447 (not (= lambda!279094 lambda!279072))))

(assert (=> bs!1246439 (not (= lambda!279094 lambda!279000))))

(assert (=> bs!1246440 (= (and (= (regOne!30750 lt!2192942) (regOne!30750 r!7292)) (= (regTwo!30750 lt!2192942) (regTwo!30750 r!7292))) (= lambda!279094 lambda!278998))))

(assert (=> bs!1246442 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 lt!2192942) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 lt!2192942) lt!2192923)) (= lambda!279094 lambda!279004))))

(assert (=> bs!1246438 (not (= lambda!279094 lambda!279038))))

(assert (=> b!5384940 true))

(assert (=> b!5384940 true))

(declare-fun b!5384939 () Bool)

(declare-fun e!3340098 () Bool)

(declare-fun call!385513 () Bool)

(assert (=> b!5384939 (= e!3340098 call!385513)))

(declare-fun e!3340097 () Bool)

(declare-fun call!385514 () Bool)

(assert (=> b!5384940 (= e!3340097 call!385514)))

(declare-fun b!5384941 () Bool)

(declare-fun e!3340094 () Bool)

(assert (=> b!5384941 (= e!3340094 (= s!2326 (Cons!61532 (c!938207 lt!2192942) Nil!61532)))))

(declare-fun b!5384942 () Bool)

(declare-fun c!938431 () Bool)

(assert (=> b!5384942 (= c!938431 ((_ is ElementMatch!15119) lt!2192942))))

(declare-fun e!3340099 () Bool)

(assert (=> b!5384942 (= e!3340099 e!3340094)))

(declare-fun bm!385508 () Bool)

(declare-fun c!938432 () Bool)

(assert (=> bm!385508 (= call!385514 (Exists!2300 (ite c!938432 lambda!279093 lambda!279094)))))

(declare-fun b!5384943 () Bool)

(declare-fun e!3340096 () Bool)

(assert (=> b!5384943 (= e!3340096 e!3340097)))

(assert (=> b!5384943 (= c!938432 ((_ is Star!15119) lt!2192942))))

(declare-fun d!1722535 () Bool)

(declare-fun c!938434 () Bool)

(assert (=> d!1722535 (= c!938434 ((_ is EmptyExpr!15119) lt!2192942))))

(assert (=> d!1722535 (= (matchRSpec!2222 lt!2192942 s!2326) e!3340098)))

(declare-fun b!5384944 () Bool)

(declare-fun res!2287175 () Bool)

(declare-fun e!3340100 () Bool)

(assert (=> b!5384944 (=> res!2287175 e!3340100)))

(assert (=> b!5384944 (= res!2287175 call!385513)))

(assert (=> b!5384944 (= e!3340097 e!3340100)))

(declare-fun bm!385509 () Bool)

(assert (=> bm!385509 (= call!385513 (isEmpty!33527 s!2326))))

(declare-fun b!5384945 () Bool)

(declare-fun e!3340095 () Bool)

(assert (=> b!5384945 (= e!3340096 e!3340095)))

(declare-fun res!2287177 () Bool)

(assert (=> b!5384945 (= res!2287177 (matchRSpec!2222 (regOne!30751 lt!2192942) s!2326))))

(assert (=> b!5384945 (=> res!2287177 e!3340095)))

(declare-fun b!5384946 () Bool)

(declare-fun c!938433 () Bool)

(assert (=> b!5384946 (= c!938433 ((_ is Union!15119) lt!2192942))))

(assert (=> b!5384946 (= e!3340094 e!3340096)))

(declare-fun b!5384947 () Bool)

(assert (=> b!5384947 (= e!3340098 e!3340099)))

(declare-fun res!2287176 () Bool)

(assert (=> b!5384947 (= res!2287176 (not ((_ is EmptyLang!15119) lt!2192942)))))

(assert (=> b!5384947 (=> (not res!2287176) (not e!3340099))))

(assert (=> b!5384948 (= e!3340100 call!385514)))

(declare-fun b!5384949 () Bool)

(assert (=> b!5384949 (= e!3340095 (matchRSpec!2222 (regTwo!30751 lt!2192942) s!2326))))

(assert (= (and d!1722535 c!938434) b!5384939))

(assert (= (and d!1722535 (not c!938434)) b!5384947))

(assert (= (and b!5384947 res!2287176) b!5384942))

(assert (= (and b!5384942 c!938431) b!5384941))

(assert (= (and b!5384942 (not c!938431)) b!5384946))

(assert (= (and b!5384946 c!938433) b!5384945))

(assert (= (and b!5384946 (not c!938433)) b!5384943))

(assert (= (and b!5384945 (not res!2287177)) b!5384949))

(assert (= (and b!5384943 c!938432) b!5384944))

(assert (= (and b!5384943 (not c!938432)) b!5384940))

(assert (= (and b!5384944 (not res!2287175)) b!5384948))

(assert (= (or b!5384948 b!5384940) bm!385508))

(assert (= (or b!5384939 b!5384944) bm!385509))

(declare-fun m!6410822 () Bool)

(assert (=> bm!385508 m!6410822))

(assert (=> bm!385509 m!6410806))

(declare-fun m!6410824 () Bool)

(assert (=> b!5384945 m!6410824))

(declare-fun m!6410826 () Bool)

(assert (=> b!5384949 m!6410826))

(assert (=> b!5384053 d!1722535))

(declare-fun d!1722537 () Bool)

(assert (=> d!1722537 (= (matchR!7304 lt!2192942 s!2326) (matchRSpec!2222 lt!2192942 s!2326))))

(declare-fun lt!2193128 () Unit!153994)

(assert (=> d!1722537 (= lt!2193128 (choose!40472 lt!2192942 s!2326))))

(assert (=> d!1722537 (validRegex!6855 lt!2192942)))

(assert (=> d!1722537 (= (mainMatchTheorem!2222 lt!2192942 s!2326) lt!2193128)))

(declare-fun bs!1246449 () Bool)

(assert (= bs!1246449 d!1722537))

(assert (=> bs!1246449 m!6409862))

(assert (=> bs!1246449 m!6409864))

(declare-fun m!6410828 () Bool)

(assert (=> bs!1246449 m!6410828))

(assert (=> bs!1246449 m!6410818))

(assert (=> b!5384053 d!1722537))

(declare-fun d!1722539 () Bool)

(declare-fun nullableFct!1568 (Regex!15119) Bool)

(assert (=> d!1722539 (= (nullable!5288 (regOne!30750 (regOne!30750 r!7292))) (nullableFct!1568 (regOne!30750 (regOne!30750 r!7292))))))

(declare-fun bs!1246450 () Bool)

(assert (= bs!1246450 d!1722539))

(declare-fun m!6410830 () Bool)

(assert (=> bs!1246450 m!6410830))

(assert (=> b!5384052 d!1722539))

(declare-fun b!5384972 () Bool)

(declare-fun c!938446 () Bool)

(declare-fun e!3340117 () Bool)

(assert (=> b!5384972 (= c!938446 e!3340117)))

(declare-fun res!2287180 () Bool)

(assert (=> b!5384972 (=> (not res!2287180) (not e!3340117))))

(assert (=> b!5384972 (= res!2287180 ((_ is Concat!23964) (reg!15448 (regOne!30750 r!7292))))))

(declare-fun e!3340116 () (InoxSet Context!9006))

(declare-fun e!3340118 () (InoxSet Context!9006))

(assert (=> b!5384972 (= e!3340116 e!3340118)))

(declare-fun b!5384973 () Bool)

(assert (=> b!5384973 (= e!3340117 (nullable!5288 (regOne!30750 (reg!15448 (regOne!30750 r!7292)))))))

(declare-fun b!5384974 () Bool)

(declare-fun e!3340114 () (InoxSet Context!9006))

(declare-fun call!385530 () (InoxSet Context!9006))

(assert (=> b!5384974 (= e!3340114 call!385530)))

(declare-fun call!385531 () (InoxSet Context!9006))

(declare-fun bm!385522 () Bool)

(declare-fun call!385529 () List!61657)

(declare-fun c!938449 () Bool)

(assert (=> bm!385522 (= call!385531 (derivationStepZipperDown!567 (ite c!938449 (regTwo!30751 (reg!15448 (regOne!30750 r!7292))) (regOne!30750 (reg!15448 (regOne!30750 r!7292)))) (ite c!938449 lt!2192969 (Context!9007 call!385529)) (h!67980 s!2326)))))

(declare-fun bm!385523 () Bool)

(declare-fun c!938447 () Bool)

(declare-fun $colon$colon!1466 (List!61657 Regex!15119) List!61657)

(assert (=> bm!385523 (= call!385529 ($colon$colon!1466 (exprs!5003 lt!2192969) (ite (or c!938446 c!938447) (regTwo!30750 (reg!15448 (regOne!30750 r!7292))) (reg!15448 (regOne!30750 r!7292)))))))

(declare-fun call!385528 () List!61657)

(declare-fun call!385527 () (InoxSet Context!9006))

(declare-fun bm!385524 () Bool)

(assert (=> bm!385524 (= call!385527 (derivationStepZipperDown!567 (ite c!938449 (regOne!30751 (reg!15448 (regOne!30750 r!7292))) (ite c!938446 (regTwo!30750 (reg!15448 (regOne!30750 r!7292))) (ite c!938447 (regOne!30750 (reg!15448 (regOne!30750 r!7292))) (reg!15448 (reg!15448 (regOne!30750 r!7292)))))) (ite (or c!938449 c!938446) lt!2192969 (Context!9007 call!385528)) (h!67980 s!2326)))))

(declare-fun bm!385525 () Bool)

(declare-fun call!385532 () (InoxSet Context!9006))

(assert (=> bm!385525 (= call!385532 call!385527)))

(declare-fun b!5384975 () Bool)

(assert (=> b!5384975 (= e!3340118 e!3340114)))

(assert (=> b!5384975 (= c!938447 ((_ is Concat!23964) (reg!15448 (regOne!30750 r!7292))))))

(declare-fun b!5384976 () Bool)

(declare-fun e!3340113 () (InoxSet Context!9006))

(assert (=> b!5384976 (= e!3340113 ((as const (Array Context!9006 Bool)) false))))

(declare-fun b!5384977 () Bool)

(declare-fun e!3340115 () (InoxSet Context!9006))

(assert (=> b!5384977 (= e!3340115 (store ((as const (Array Context!9006 Bool)) false) lt!2192969 true))))

(declare-fun b!5384978 () Bool)

(assert (=> b!5384978 (= e!3340113 call!385530)))

(declare-fun bm!385527 () Bool)

(assert (=> bm!385527 (= call!385528 call!385529)))

(declare-fun b!5384979 () Bool)

(declare-fun c!938448 () Bool)

(assert (=> b!5384979 (= c!938448 ((_ is Star!15119) (reg!15448 (regOne!30750 r!7292))))))

(assert (=> b!5384979 (= e!3340114 e!3340113)))

(declare-fun b!5384980 () Bool)

(assert (=> b!5384980 (= e!3340115 e!3340116)))

(assert (=> b!5384980 (= c!938449 ((_ is Union!15119) (reg!15448 (regOne!30750 r!7292))))))

(declare-fun b!5384981 () Bool)

(assert (=> b!5384981 (= e!3340118 ((_ map or) call!385531 call!385532))))

(declare-fun b!5384982 () Bool)

(assert (=> b!5384982 (= e!3340116 ((_ map or) call!385527 call!385531))))

(declare-fun d!1722541 () Bool)

(declare-fun c!938445 () Bool)

(assert (=> d!1722541 (= c!938445 (and ((_ is ElementMatch!15119) (reg!15448 (regOne!30750 r!7292))) (= (c!938207 (reg!15448 (regOne!30750 r!7292))) (h!67980 s!2326))))))

(assert (=> d!1722541 (= (derivationStepZipperDown!567 (reg!15448 (regOne!30750 r!7292)) lt!2192969 (h!67980 s!2326)) e!3340115)))

(declare-fun bm!385526 () Bool)

(assert (=> bm!385526 (= call!385530 call!385532)))

(assert (= (and d!1722541 c!938445) b!5384977))

(assert (= (and d!1722541 (not c!938445)) b!5384980))

(assert (= (and b!5384980 c!938449) b!5384982))

(assert (= (and b!5384980 (not c!938449)) b!5384972))

(assert (= (and b!5384972 res!2287180) b!5384973))

(assert (= (and b!5384972 c!938446) b!5384981))

(assert (= (and b!5384972 (not c!938446)) b!5384975))

(assert (= (and b!5384975 c!938447) b!5384974))

(assert (= (and b!5384975 (not c!938447)) b!5384979))

(assert (= (and b!5384979 c!938448) b!5384978))

(assert (= (and b!5384979 (not c!938448)) b!5384976))

(assert (= (or b!5384974 b!5384978) bm!385527))

(assert (= (or b!5384974 b!5384978) bm!385526))

(assert (= (or b!5384981 bm!385527) bm!385523))

(assert (= (or b!5384981 bm!385526) bm!385525))

(assert (= (or b!5384982 b!5384981) bm!385522))

(assert (= (or b!5384982 bm!385525) bm!385524))

(declare-fun m!6410832 () Bool)

(assert (=> bm!385522 m!6410832))

(declare-fun m!6410834 () Bool)

(assert (=> b!5384973 m!6410834))

(assert (=> b!5384977 m!6409924))

(declare-fun m!6410836 () Bool)

(assert (=> bm!385524 m!6410836))

(declare-fun m!6410838 () Bool)

(assert (=> bm!385523 m!6410838))

(assert (=> b!5384072 d!1722541))

(declare-fun d!1722543 () Bool)

(declare-fun c!938450 () Bool)

(assert (=> d!1722543 (= c!938450 (isEmpty!33527 s!2326))))

(declare-fun e!3340119 () Bool)

(assert (=> d!1722543 (= (matchZipper!1363 lt!2192938 s!2326) e!3340119)))

(declare-fun b!5384983 () Bool)

(assert (=> b!5384983 (= e!3340119 (nullableZipper!1416 lt!2192938))))

(declare-fun b!5384984 () Bool)

(assert (=> b!5384984 (= e!3340119 (matchZipper!1363 (derivationStepZipper!1358 lt!2192938 (head!11549 s!2326)) (tail!10646 s!2326)))))

(assert (= (and d!1722543 c!938450) b!5384983))

(assert (= (and d!1722543 (not c!938450)) b!5384984))

(assert (=> d!1722543 m!6410806))

(declare-fun m!6410840 () Bool)

(assert (=> b!5384983 m!6410840))

(assert (=> b!5384984 m!6410812))

(assert (=> b!5384984 m!6410812))

(declare-fun m!6410842 () Bool)

(assert (=> b!5384984 m!6410842))

(assert (=> b!5384984 m!6410808))

(assert (=> b!5384984 m!6410842))

(assert (=> b!5384984 m!6410808))

(declare-fun m!6410844 () Bool)

(assert (=> b!5384984 m!6410844))

(assert (=> b!5384051 d!1722543))

(declare-fun d!1722545 () Bool)

(declare-fun c!938451 () Bool)

(assert (=> d!1722545 (= c!938451 (isEmpty!33527 (t!374879 s!2326)))))

(declare-fun e!3340120 () Bool)

(assert (=> d!1722545 (= (matchZipper!1363 lt!2192954 (t!374879 s!2326)) e!3340120)))

(declare-fun b!5384985 () Bool)

(assert (=> b!5384985 (= e!3340120 (nullableZipper!1416 lt!2192954))))

(declare-fun b!5384986 () Bool)

(assert (=> b!5384986 (= e!3340120 (matchZipper!1363 (derivationStepZipper!1358 lt!2192954 (head!11549 (t!374879 s!2326))) (tail!10646 (t!374879 s!2326))))))

(assert (= (and d!1722545 c!938451) b!5384985))

(assert (= (and d!1722545 (not c!938451)) b!5384986))

(assert (=> d!1722545 m!6410736))

(declare-fun m!6410846 () Bool)

(assert (=> b!5384985 m!6410846))

(assert (=> b!5384986 m!6410740))

(assert (=> b!5384986 m!6410740))

(declare-fun m!6410848 () Bool)

(assert (=> b!5384986 m!6410848))

(assert (=> b!5384986 m!6410744))

(assert (=> b!5384986 m!6410848))

(assert (=> b!5384986 m!6410744))

(declare-fun m!6410850 () Bool)

(assert (=> b!5384986 m!6410850))

(assert (=> b!5384051 d!1722545))

(declare-fun d!1722547 () Bool)

(declare-fun e!3340123 () Bool)

(assert (=> d!1722547 e!3340123))

(declare-fun res!2287183 () Bool)

(assert (=> d!1722547 (=> (not res!2287183) (not e!3340123))))

(declare-fun lt!2193131 () List!61658)

(declare-fun noDuplicate!1369 (List!61658) Bool)

(assert (=> d!1722547 (= res!2287183 (noDuplicate!1369 lt!2193131))))

(declare-fun choose!40477 ((InoxSet Context!9006)) List!61658)

(assert (=> d!1722547 (= lt!2193131 (choose!40477 z!1189))))

(assert (=> d!1722547 (= (toList!8903 z!1189) lt!2193131)))

(declare-fun b!5384989 () Bool)

(declare-fun content!11007 (List!61658) (InoxSet Context!9006))

(assert (=> b!5384989 (= e!3340123 (= (content!11007 lt!2193131) z!1189))))

(assert (= (and d!1722547 res!2287183) b!5384989))

(declare-fun m!6410852 () Bool)

(assert (=> d!1722547 m!6410852))

(declare-fun m!6410854 () Bool)

(assert (=> d!1722547 m!6410854))

(declare-fun m!6410856 () Bool)

(assert (=> b!5384989 m!6410856))

(assert (=> b!5384071 d!1722547))

(declare-fun b!5385008 () Bool)

(declare-fun e!3340141 () Bool)

(declare-fun e!3340139 () Bool)

(assert (=> b!5385008 (= e!3340141 e!3340139)))

(declare-fun c!938457 () Bool)

(assert (=> b!5385008 (= c!938457 ((_ is Union!15119) (reg!15448 (regOne!30750 r!7292))))))

(declare-fun b!5385009 () Bool)

(declare-fun e!3340144 () Bool)

(declare-fun call!385539 () Bool)

(assert (=> b!5385009 (= e!3340144 call!385539)))

(declare-fun c!938456 () Bool)

(declare-fun call!385540 () Bool)

(declare-fun bm!385534 () Bool)

(assert (=> bm!385534 (= call!385540 (validRegex!6855 (ite c!938456 (reg!15448 (reg!15448 (regOne!30750 r!7292))) (ite c!938457 (regTwo!30751 (reg!15448 (regOne!30750 r!7292))) (regTwo!30750 (reg!15448 (regOne!30750 r!7292)))))))))

(declare-fun bm!385535 () Bool)

(assert (=> bm!385535 (= call!385539 call!385540)))

(declare-fun b!5385010 () Bool)

(declare-fun res!2287194 () Bool)

(declare-fun e!3340143 () Bool)

(assert (=> b!5385010 (=> res!2287194 e!3340143)))

(assert (=> b!5385010 (= res!2287194 (not ((_ is Concat!23964) (reg!15448 (regOne!30750 r!7292)))))))

(assert (=> b!5385010 (= e!3340139 e!3340143)))

(declare-fun b!5385011 () Bool)

(declare-fun e!3340140 () Bool)

(assert (=> b!5385011 (= e!3340140 e!3340141)))

(assert (=> b!5385011 (= c!938456 ((_ is Star!15119) (reg!15448 (regOne!30750 r!7292))))))

(declare-fun b!5385012 () Bool)

(declare-fun e!3340142 () Bool)

(assert (=> b!5385012 (= e!3340142 call!385540)))

(declare-fun d!1722549 () Bool)

(declare-fun res!2287196 () Bool)

(assert (=> d!1722549 (=> res!2287196 e!3340140)))

(assert (=> d!1722549 (= res!2287196 ((_ is ElementMatch!15119) (reg!15448 (regOne!30750 r!7292))))))

(assert (=> d!1722549 (= (validRegex!6855 (reg!15448 (regOne!30750 r!7292))) e!3340140)))

(declare-fun bm!385536 () Bool)

(declare-fun call!385541 () Bool)

(assert (=> bm!385536 (= call!385541 (validRegex!6855 (ite c!938457 (regOne!30751 (reg!15448 (regOne!30750 r!7292))) (regOne!30750 (reg!15448 (regOne!30750 r!7292))))))))

(declare-fun b!5385013 () Bool)

(declare-fun res!2287195 () Bool)

(declare-fun e!3340138 () Bool)

(assert (=> b!5385013 (=> (not res!2287195) (not e!3340138))))

(assert (=> b!5385013 (= res!2287195 call!385541)))

(assert (=> b!5385013 (= e!3340139 e!3340138)))

(declare-fun b!5385014 () Bool)

(assert (=> b!5385014 (= e!3340141 e!3340142)))

(declare-fun res!2287198 () Bool)

(assert (=> b!5385014 (= res!2287198 (not (nullable!5288 (reg!15448 (reg!15448 (regOne!30750 r!7292))))))))

(assert (=> b!5385014 (=> (not res!2287198) (not e!3340142))))

(declare-fun b!5385015 () Bool)

(assert (=> b!5385015 (= e!3340143 e!3340144)))

(declare-fun res!2287197 () Bool)

(assert (=> b!5385015 (=> (not res!2287197) (not e!3340144))))

(assert (=> b!5385015 (= res!2287197 call!385541)))

(declare-fun b!5385016 () Bool)

(assert (=> b!5385016 (= e!3340138 call!385539)))

(assert (= (and d!1722549 (not res!2287196)) b!5385011))

(assert (= (and b!5385011 c!938456) b!5385014))

(assert (= (and b!5385011 (not c!938456)) b!5385008))

(assert (= (and b!5385014 res!2287198) b!5385012))

(assert (= (and b!5385008 c!938457) b!5385013))

(assert (= (and b!5385008 (not c!938457)) b!5385010))

(assert (= (and b!5385013 res!2287195) b!5385016))

(assert (= (and b!5385010 (not res!2287194)) b!5385015))

(assert (= (and b!5385015 res!2287197) b!5385009))

(assert (= (or b!5385016 b!5385009) bm!385535))

(assert (= (or b!5385013 b!5385015) bm!385536))

(assert (= (or b!5385012 bm!385535) bm!385534))

(declare-fun m!6410858 () Bool)

(assert (=> bm!385534 m!6410858))

(declare-fun m!6410860 () Bool)

(assert (=> bm!385536 m!6410860))

(declare-fun m!6410862 () Bool)

(assert (=> b!5385014 m!6410862))

(assert (=> b!5384039 d!1722549))

(declare-fun d!1722551 () Bool)

(declare-fun c!938458 () Bool)

(assert (=> d!1722551 (= c!938458 (isEmpty!33527 lt!2192919))))

(declare-fun e!3340145 () Bool)

(assert (=> d!1722551 (= (matchZipper!1363 lt!2192920 lt!2192919) e!3340145)))

(declare-fun b!5385017 () Bool)

(assert (=> b!5385017 (= e!3340145 (nullableZipper!1416 lt!2192920))))

(declare-fun b!5385018 () Bool)

(assert (=> b!5385018 (= e!3340145 (matchZipper!1363 (derivationStepZipper!1358 lt!2192920 (head!11549 lt!2192919)) (tail!10646 lt!2192919)))))

(assert (= (and d!1722551 c!938458) b!5385017))

(assert (= (and d!1722551 (not c!938458)) b!5385018))

(declare-fun m!6410864 () Bool)

(assert (=> d!1722551 m!6410864))

(declare-fun m!6410866 () Bool)

(assert (=> b!5385017 m!6410866))

(declare-fun m!6410868 () Bool)

(assert (=> b!5385018 m!6410868))

(assert (=> b!5385018 m!6410868))

(declare-fun m!6410870 () Bool)

(assert (=> b!5385018 m!6410870))

(declare-fun m!6410872 () Bool)

(assert (=> b!5385018 m!6410872))

(assert (=> b!5385018 m!6410870))

(assert (=> b!5385018 m!6410872))

(declare-fun m!6410874 () Bool)

(assert (=> b!5385018 m!6410874))

(assert (=> b!5384039 d!1722551))

(declare-fun d!1722553 () Bool)

(declare-fun c!938459 () Bool)

(assert (=> d!1722553 (= c!938459 (isEmpty!33527 lt!2192968))))

(declare-fun e!3340146 () Bool)

(assert (=> d!1722553 (= (matchZipper!1363 (store ((as const (Array Context!9006 Bool)) false) (Context!9007 (++!13423 lt!2192950 lt!2192940)) true) lt!2192968) e!3340146)))

(declare-fun b!5385019 () Bool)

(assert (=> b!5385019 (= e!3340146 (nullableZipper!1416 (store ((as const (Array Context!9006 Bool)) false) (Context!9007 (++!13423 lt!2192950 lt!2192940)) true)))))

(declare-fun b!5385020 () Bool)

(assert (=> b!5385020 (= e!3340146 (matchZipper!1363 (derivationStepZipper!1358 (store ((as const (Array Context!9006 Bool)) false) (Context!9007 (++!13423 lt!2192950 lt!2192940)) true) (head!11549 lt!2192968)) (tail!10646 lt!2192968)))))

(assert (= (and d!1722553 c!938459) b!5385019))

(assert (= (and d!1722553 (not c!938459)) b!5385020))

(declare-fun m!6410876 () Bool)

(assert (=> d!1722553 m!6410876))

(assert (=> b!5385019 m!6409812))

(declare-fun m!6410878 () Bool)

(assert (=> b!5385019 m!6410878))

(declare-fun m!6410880 () Bool)

(assert (=> b!5385020 m!6410880))

(assert (=> b!5385020 m!6409812))

(assert (=> b!5385020 m!6410880))

(declare-fun m!6410882 () Bool)

(assert (=> b!5385020 m!6410882))

(declare-fun m!6410884 () Bool)

(assert (=> b!5385020 m!6410884))

(assert (=> b!5385020 m!6410882))

(assert (=> b!5385020 m!6410884))

(declare-fun m!6410886 () Bool)

(assert (=> b!5385020 m!6410886))

(assert (=> b!5384039 d!1722553))

(declare-fun d!1722555 () Bool)

(assert (=> d!1722555 (= (matchR!7304 lt!2192929 lt!2192919) (matchZipper!1363 lt!2192920 lt!2192919))))

(declare-fun lt!2193134 () Unit!153994)

(declare-fun choose!40478 ((InoxSet Context!9006) List!61658 Regex!15119 List!61656) Unit!153994)

(assert (=> d!1722555 (= lt!2193134 (choose!40478 lt!2192920 lt!2192944 lt!2192929 lt!2192919))))

(assert (=> d!1722555 (validRegex!6855 lt!2192929)))

(assert (=> d!1722555 (= (theoremZipperRegexEquiv!449 lt!2192920 lt!2192944 lt!2192929 lt!2192919) lt!2193134)))

(declare-fun bs!1246451 () Bool)

(assert (= bs!1246451 d!1722555))

(assert (=> bs!1246451 m!6409804))

(assert (=> bs!1246451 m!6409818))

(declare-fun m!6410888 () Bool)

(assert (=> bs!1246451 m!6410888))

(declare-fun m!6410890 () Bool)

(assert (=> bs!1246451 m!6410890))

(assert (=> b!5384039 d!1722555))

(declare-fun d!1722557 () Bool)

(assert (=> d!1722557 (= (matchR!7304 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921)) (matchZipper!1363 lt!2192953 (_1!35621 lt!2192921)))))

(declare-fun lt!2193135 () Unit!153994)

(assert (=> d!1722557 (= lt!2193135 (choose!40478 lt!2192953 lt!2192928 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921)))))

(assert (=> d!1722557 (validRegex!6855 (reg!15448 (regOne!30750 r!7292)))))

(assert (=> d!1722557 (= (theoremZipperRegexEquiv!449 lt!2192953 lt!2192928 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921)) lt!2193135)))

(declare-fun bs!1246452 () Bool)

(assert (= bs!1246452 d!1722557))

(assert (=> bs!1246452 m!6409756))

(assert (=> bs!1246452 m!6409826))

(declare-fun m!6410892 () Bool)

(assert (=> bs!1246452 m!6410892))

(assert (=> bs!1246452 m!6409802))

(assert (=> b!5384039 d!1722557))

(declare-fun d!1722559 () Bool)

(declare-fun c!938460 () Bool)

(assert (=> d!1722559 (= c!938460 (isEmpty!33527 (_1!35621 lt!2192921)))))

(declare-fun e!3340147 () Bool)

(assert (=> d!1722559 (= (matchZipper!1363 lt!2192953 (_1!35621 lt!2192921)) e!3340147)))

(declare-fun b!5385021 () Bool)

(assert (=> b!5385021 (= e!3340147 (nullableZipper!1416 lt!2192953))))

(declare-fun b!5385022 () Bool)

(assert (=> b!5385022 (= e!3340147 (matchZipper!1363 (derivationStepZipper!1358 lt!2192953 (head!11549 (_1!35621 lt!2192921))) (tail!10646 (_1!35621 lt!2192921))))))

(assert (= (and d!1722559 c!938460) b!5385021))

(assert (= (and d!1722559 (not c!938460)) b!5385022))

(assert (=> d!1722559 m!6410612))

(declare-fun m!6410894 () Bool)

(assert (=> b!5385021 m!6410894))

(assert (=> b!5385022 m!6410618))

(assert (=> b!5385022 m!6410618))

(declare-fun m!6410896 () Bool)

(assert (=> b!5385022 m!6410896))

(assert (=> b!5385022 m!6410614))

(assert (=> b!5385022 m!6410896))

(assert (=> b!5385022 m!6410614))

(declare-fun m!6410898 () Bool)

(assert (=> b!5385022 m!6410898))

(assert (=> b!5384039 d!1722559))

(declare-fun bs!1246453 () Bool)

(declare-fun d!1722561 () Bool)

(assert (= bs!1246453 (and d!1722561 d!1722515)))

(declare-fun lambda!279097 () Int)

(assert (=> bs!1246453 (= lambda!279097 lambda!279091)))

(declare-fun bs!1246454 () Bool)

(assert (= bs!1246454 (and d!1722561 d!1722513)))

(assert (=> bs!1246454 (= lambda!279097 lambda!279088)))

(declare-fun bs!1246455 () Bool)

(assert (= bs!1246455 (and d!1722561 d!1722511)))

(assert (=> bs!1246455 (= lambda!279097 lambda!279085)))

(declare-fun bs!1246456 () Bool)

(assert (= bs!1246456 (and d!1722561 d!1722531)))

(assert (=> bs!1246456 (= lambda!279097 lambda!279092)))

(declare-fun bs!1246457 () Bool)

(assert (= bs!1246457 (and d!1722561 b!5384039)))

(assert (=> bs!1246457 (= lambda!279097 lambda!279005)))

(assert (=> d!1722561 (matchZipper!1363 (store ((as const (Array Context!9006 Bool)) false) (Context!9007 (++!13423 (exprs!5003 lt!2192967) (exprs!5003 lt!2192969))) true) (++!13424 (_1!35621 lt!2192921) lt!2192919))))

(declare-fun lt!2193141 () Unit!153994)

(assert (=> d!1722561 (= lt!2193141 (lemmaConcatPreservesForall!150 (exprs!5003 lt!2192967) (exprs!5003 lt!2192969) lambda!279097))))

(declare-fun lt!2193140 () Unit!153994)

(declare-fun choose!40479 (Context!9006 Context!9006 List!61656 List!61656) Unit!153994)

(assert (=> d!1722561 (= lt!2193140 (choose!40479 lt!2192967 lt!2192969 (_1!35621 lt!2192921) lt!2192919))))

(assert (=> d!1722561 (matchZipper!1363 (store ((as const (Array Context!9006 Bool)) false) lt!2192967 true) (_1!35621 lt!2192921))))

(assert (=> d!1722561 (= (lemmaConcatenateContextMatchesConcatOfStrings!6 lt!2192967 lt!2192969 (_1!35621 lt!2192921) lt!2192919) lt!2193140)))

(declare-fun bs!1246458 () Bool)

(assert (= bs!1246458 d!1722561))

(assert (=> bs!1246458 m!6409926))

(declare-fun m!6410900 () Bool)

(assert (=> bs!1246458 m!6410900))

(declare-fun m!6410902 () Bool)

(assert (=> bs!1246458 m!6410902))

(declare-fun m!6410904 () Bool)

(assert (=> bs!1246458 m!6410904))

(assert (=> bs!1246458 m!6409926))

(declare-fun m!6410906 () Bool)

(assert (=> bs!1246458 m!6410906))

(declare-fun m!6410908 () Bool)

(assert (=> bs!1246458 m!6410908))

(assert (=> bs!1246458 m!6409830))

(assert (=> bs!1246458 m!6410902))

(assert (=> bs!1246458 m!6409830))

(declare-fun m!6410910 () Bool)

(assert (=> bs!1246458 m!6410910))

(assert (=> b!5384039 d!1722561))

(declare-fun d!1722563 () Bool)

(declare-fun e!3340152 () Bool)

(assert (=> d!1722563 e!3340152))

(declare-fun res!2287204 () Bool)

(assert (=> d!1722563 (=> (not res!2287204) (not e!3340152))))

(declare-fun lt!2193144 () List!61657)

(declare-fun content!11008 (List!61657) (InoxSet Regex!15119))

(assert (=> d!1722563 (= res!2287204 (= (content!11008 lt!2193144) ((_ map or) (content!11008 lt!2192950) (content!11008 lt!2192940))))))

(declare-fun e!3340153 () List!61657)

(assert (=> d!1722563 (= lt!2193144 e!3340153)))

(declare-fun c!938463 () Bool)

(assert (=> d!1722563 (= c!938463 ((_ is Nil!61533) lt!2192950))))

(assert (=> d!1722563 (= (++!13423 lt!2192950 lt!2192940) lt!2193144)))

(declare-fun b!5385031 () Bool)

(assert (=> b!5385031 (= e!3340153 lt!2192940)))

(declare-fun b!5385032 () Bool)

(assert (=> b!5385032 (= e!3340153 (Cons!61533 (h!67981 lt!2192950) (++!13423 (t!374880 lt!2192950) lt!2192940)))))

(declare-fun b!5385034 () Bool)

(assert (=> b!5385034 (= e!3340152 (or (not (= lt!2192940 Nil!61533)) (= lt!2193144 lt!2192950)))))

(declare-fun b!5385033 () Bool)

(declare-fun res!2287203 () Bool)

(assert (=> b!5385033 (=> (not res!2287203) (not e!3340152))))

(declare-fun size!39808 (List!61657) Int)

(assert (=> b!5385033 (= res!2287203 (= (size!39808 lt!2193144) (+ (size!39808 lt!2192950) (size!39808 lt!2192940))))))

(assert (= (and d!1722563 c!938463) b!5385031))

(assert (= (and d!1722563 (not c!938463)) b!5385032))

(assert (= (and d!1722563 res!2287204) b!5385033))

(assert (= (and b!5385033 res!2287203) b!5385034))

(declare-fun m!6410912 () Bool)

(assert (=> d!1722563 m!6410912))

(declare-fun m!6410914 () Bool)

(assert (=> d!1722563 m!6410914))

(declare-fun m!6410916 () Bool)

(assert (=> d!1722563 m!6410916))

(declare-fun m!6410918 () Bool)

(assert (=> b!5385032 m!6410918))

(declare-fun m!6410920 () Bool)

(assert (=> b!5385033 m!6410920))

(declare-fun m!6410922 () Bool)

(assert (=> b!5385033 m!6410922))

(declare-fun m!6410924 () Bool)

(assert (=> b!5385033 m!6410924))

(assert (=> b!5384039 d!1722563))

(declare-fun d!1722565 () Bool)

(assert (=> d!1722565 (forall!14509 (++!13423 lt!2192950 lt!2192940) lambda!279005)))

(declare-fun lt!2193147 () Unit!153994)

(declare-fun choose!40480 (List!61657 List!61657 Int) Unit!153994)

(assert (=> d!1722565 (= lt!2193147 (choose!40480 lt!2192950 lt!2192940 lambda!279005))))

(assert (=> d!1722565 (forall!14509 lt!2192950 lambda!279005)))

(assert (=> d!1722565 (= (lemmaConcatPreservesForall!150 lt!2192950 lt!2192940 lambda!279005) lt!2193147)))

(declare-fun bs!1246459 () Bool)

(assert (= bs!1246459 d!1722565))

(assert (=> bs!1246459 m!6409828))

(assert (=> bs!1246459 m!6409828))

(declare-fun m!6410926 () Bool)

(assert (=> bs!1246459 m!6410926))

(declare-fun m!6410928 () Bool)

(assert (=> bs!1246459 m!6410928))

(declare-fun m!6410930 () Bool)

(assert (=> bs!1246459 m!6410930))

(assert (=> b!5384039 d!1722565))

(declare-fun b!5385035 () Bool)

(declare-fun e!3340160 () Bool)

(declare-fun e!3340156 () Bool)

(assert (=> b!5385035 (= e!3340160 e!3340156)))

(declare-fun res!2287210 () Bool)

(assert (=> b!5385035 (=> res!2287210 e!3340156)))

(declare-fun call!385542 () Bool)

(assert (=> b!5385035 (= res!2287210 call!385542)))

(declare-fun b!5385036 () Bool)

(declare-fun res!2287211 () Bool)

(declare-fun e!3340155 () Bool)

(assert (=> b!5385036 (=> res!2287211 e!3340155)))

(declare-fun e!3340154 () Bool)

(assert (=> b!5385036 (= res!2287211 e!3340154)))

(declare-fun res!2287207 () Bool)

(assert (=> b!5385036 (=> (not res!2287207) (not e!3340154))))

(declare-fun lt!2193148 () Bool)

(assert (=> b!5385036 (= res!2287207 lt!2193148)))

(declare-fun b!5385037 () Bool)

(declare-fun res!2287205 () Bool)

(assert (=> b!5385037 (=> res!2287205 e!3340156)))

(assert (=> b!5385037 (= res!2287205 (not (isEmpty!33527 (tail!10646 lt!2192919))))))

(declare-fun b!5385038 () Bool)

(assert (=> b!5385038 (= e!3340155 e!3340160)))

(declare-fun res!2287208 () Bool)

(assert (=> b!5385038 (=> (not res!2287208) (not e!3340160))))

(assert (=> b!5385038 (= res!2287208 (not lt!2193148))))

(declare-fun b!5385039 () Bool)

(declare-fun res!2287206 () Bool)

(assert (=> b!5385039 (=> (not res!2287206) (not e!3340154))))

(assert (=> b!5385039 (= res!2287206 (not call!385542))))

(declare-fun b!5385040 () Bool)

(declare-fun e!3340159 () Bool)

(assert (=> b!5385040 (= e!3340159 (nullable!5288 lt!2192929))))

(declare-fun b!5385041 () Bool)

(declare-fun res!2287209 () Bool)

(assert (=> b!5385041 (=> res!2287209 e!3340155)))

(assert (=> b!5385041 (= res!2287209 (not ((_ is ElementMatch!15119) lt!2192929)))))

(declare-fun e!3340158 () Bool)

(assert (=> b!5385041 (= e!3340158 e!3340155)))

(declare-fun b!5385042 () Bool)

(assert (=> b!5385042 (= e!3340156 (not (= (head!11549 lt!2192919) (c!938207 lt!2192929))))))

(declare-fun bm!385537 () Bool)

(assert (=> bm!385537 (= call!385542 (isEmpty!33527 lt!2192919))))

(declare-fun b!5385043 () Bool)

(assert (=> b!5385043 (= e!3340158 (not lt!2193148))))

(declare-fun d!1722567 () Bool)

(declare-fun e!3340157 () Bool)

(assert (=> d!1722567 e!3340157))

(declare-fun c!938464 () Bool)

(assert (=> d!1722567 (= c!938464 ((_ is EmptyExpr!15119) lt!2192929))))

(assert (=> d!1722567 (= lt!2193148 e!3340159)))

(declare-fun c!938465 () Bool)

(assert (=> d!1722567 (= c!938465 (isEmpty!33527 lt!2192919))))

(assert (=> d!1722567 (validRegex!6855 lt!2192929)))

(assert (=> d!1722567 (= (matchR!7304 lt!2192929 lt!2192919) lt!2193148)))

(declare-fun b!5385044 () Bool)

(assert (=> b!5385044 (= e!3340159 (matchR!7304 (derivativeStep!4237 lt!2192929 (head!11549 lt!2192919)) (tail!10646 lt!2192919)))))

(declare-fun b!5385045 () Bool)

(declare-fun res!2287212 () Bool)

(assert (=> b!5385045 (=> (not res!2287212) (not e!3340154))))

(assert (=> b!5385045 (= res!2287212 (isEmpty!33527 (tail!10646 lt!2192919)))))

(declare-fun b!5385046 () Bool)

(assert (=> b!5385046 (= e!3340157 e!3340158)))

(declare-fun c!938466 () Bool)

(assert (=> b!5385046 (= c!938466 ((_ is EmptyLang!15119) lt!2192929))))

(declare-fun b!5385047 () Bool)

(assert (=> b!5385047 (= e!3340157 (= lt!2193148 call!385542))))

(declare-fun b!5385048 () Bool)

(assert (=> b!5385048 (= e!3340154 (= (head!11549 lt!2192919) (c!938207 lt!2192929)))))

(assert (= (and d!1722567 c!938465) b!5385040))

(assert (= (and d!1722567 (not c!938465)) b!5385044))

(assert (= (and d!1722567 c!938464) b!5385047))

(assert (= (and d!1722567 (not c!938464)) b!5385046))

(assert (= (and b!5385046 c!938466) b!5385043))

(assert (= (and b!5385046 (not c!938466)) b!5385041))

(assert (= (and b!5385041 (not res!2287209)) b!5385036))

(assert (= (and b!5385036 res!2287207) b!5385039))

(assert (= (and b!5385039 res!2287206) b!5385045))

(assert (= (and b!5385045 res!2287212) b!5385048))

(assert (= (and b!5385036 (not res!2287211)) b!5385038))

(assert (= (and b!5385038 res!2287208) b!5385035))

(assert (= (and b!5385035 (not res!2287210)) b!5385037))

(assert (= (and b!5385037 (not res!2287205)) b!5385042))

(assert (= (or b!5385047 b!5385035 b!5385039) bm!385537))

(assert (=> bm!385537 m!6410864))

(assert (=> b!5385037 m!6410872))

(assert (=> b!5385037 m!6410872))

(declare-fun m!6410932 () Bool)

(assert (=> b!5385037 m!6410932))

(assert (=> b!5385044 m!6410868))

(assert (=> b!5385044 m!6410868))

(declare-fun m!6410934 () Bool)

(assert (=> b!5385044 m!6410934))

(assert (=> b!5385044 m!6410872))

(assert (=> b!5385044 m!6410934))

(assert (=> b!5385044 m!6410872))

(declare-fun m!6410936 () Bool)

(assert (=> b!5385044 m!6410936))

(assert (=> d!1722567 m!6410864))

(assert (=> d!1722567 m!6410890))

(assert (=> b!5385045 m!6410872))

(assert (=> b!5385045 m!6410872))

(assert (=> b!5385045 m!6410932))

(assert (=> b!5385042 m!6410868))

(assert (=> b!5385048 m!6410868))

(declare-fun m!6410938 () Bool)

(assert (=> b!5385040 m!6410938))

(assert (=> b!5384039 d!1722567))

(declare-fun d!1722569 () Bool)

(assert (=> d!1722569 (matchR!7304 (Star!15119 (reg!15448 (regOne!30750 r!7292))) (++!13424 (_1!35621 lt!2192921) (_2!35621 lt!2192921)))))

(declare-fun lt!2193151 () Unit!153994)

(declare-fun choose!40481 (Regex!15119 List!61656 List!61656) Unit!153994)

(assert (=> d!1722569 (= lt!2193151 (choose!40481 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921) (_2!35621 lt!2192921)))))

(assert (=> d!1722569 (validRegex!6855 (Star!15119 (reg!15448 (regOne!30750 r!7292))))))

(assert (=> d!1722569 (= (lemmaStarApp!40 (reg!15448 (regOne!30750 r!7292)) (_1!35621 lt!2192921) (_2!35621 lt!2192921)) lt!2193151)))

(declare-fun bs!1246460 () Bool)

(assert (= bs!1246460 d!1722569))

(assert (=> bs!1246460 m!6409912))

(assert (=> bs!1246460 m!6409912))

(declare-fun m!6410940 () Bool)

(assert (=> bs!1246460 m!6410940))

(declare-fun m!6410942 () Bool)

(assert (=> bs!1246460 m!6410942))

(declare-fun m!6410944 () Bool)

(assert (=> bs!1246460 m!6410944))

(assert (=> b!5384039 d!1722569))

(declare-fun b!5385049 () Bool)

(declare-fun e!3340167 () Bool)

(declare-fun e!3340163 () Bool)

(assert (=> b!5385049 (= e!3340167 e!3340163)))

(declare-fun res!2287218 () Bool)

(assert (=> b!5385049 (=> res!2287218 e!3340163)))

(declare-fun call!385543 () Bool)

(assert (=> b!5385049 (= res!2287218 call!385543)))

(declare-fun b!5385050 () Bool)

(declare-fun res!2287219 () Bool)

(declare-fun e!3340162 () Bool)

(assert (=> b!5385050 (=> res!2287219 e!3340162)))

(declare-fun e!3340161 () Bool)

(assert (=> b!5385050 (= res!2287219 e!3340161)))

(declare-fun res!2287215 () Bool)

(assert (=> b!5385050 (=> (not res!2287215) (not e!3340161))))

(declare-fun lt!2193152 () Bool)

(assert (=> b!5385050 (= res!2287215 lt!2193152)))

(declare-fun b!5385051 () Bool)

(declare-fun res!2287213 () Bool)

(assert (=> b!5385051 (=> res!2287213 e!3340163)))

(assert (=> b!5385051 (= res!2287213 (not (isEmpty!33527 (tail!10646 lt!2192958))))))

(declare-fun b!5385052 () Bool)

(assert (=> b!5385052 (= e!3340162 e!3340167)))

(declare-fun res!2287216 () Bool)

(assert (=> b!5385052 (=> (not res!2287216) (not e!3340167))))

(assert (=> b!5385052 (= res!2287216 (not lt!2193152))))

(declare-fun b!5385053 () Bool)

(declare-fun res!2287214 () Bool)

(assert (=> b!5385053 (=> (not res!2287214) (not e!3340161))))

(assert (=> b!5385053 (= res!2287214 (not call!385543))))

(declare-fun b!5385054 () Bool)

(declare-fun e!3340166 () Bool)

(assert (=> b!5385054 (= e!3340166 (nullable!5288 lt!2192923))))

(declare-fun b!5385055 () Bool)

(declare-fun res!2287217 () Bool)

(assert (=> b!5385055 (=> res!2287217 e!3340162)))

(assert (=> b!5385055 (= res!2287217 (not ((_ is ElementMatch!15119) lt!2192923)))))

(declare-fun e!3340165 () Bool)

(assert (=> b!5385055 (= e!3340165 e!3340162)))

(declare-fun b!5385056 () Bool)

(assert (=> b!5385056 (= e!3340163 (not (= (head!11549 lt!2192958) (c!938207 lt!2192923))))))

(declare-fun bm!385538 () Bool)

(assert (=> bm!385538 (= call!385543 (isEmpty!33527 lt!2192958))))

(declare-fun b!5385057 () Bool)

(assert (=> b!5385057 (= e!3340165 (not lt!2193152))))

(declare-fun d!1722571 () Bool)

(declare-fun e!3340164 () Bool)

(assert (=> d!1722571 e!3340164))

(declare-fun c!938467 () Bool)

(assert (=> d!1722571 (= c!938467 ((_ is EmptyExpr!15119) lt!2192923))))

(assert (=> d!1722571 (= lt!2193152 e!3340166)))

(declare-fun c!938468 () Bool)

(assert (=> d!1722571 (= c!938468 (isEmpty!33527 lt!2192958))))

(assert (=> d!1722571 (validRegex!6855 lt!2192923)))

(assert (=> d!1722571 (= (matchR!7304 lt!2192923 lt!2192958) lt!2193152)))

(declare-fun b!5385058 () Bool)

(assert (=> b!5385058 (= e!3340166 (matchR!7304 (derivativeStep!4237 lt!2192923 (head!11549 lt!2192958)) (tail!10646 lt!2192958)))))

(declare-fun b!5385059 () Bool)

(declare-fun res!2287220 () Bool)

(assert (=> b!5385059 (=> (not res!2287220) (not e!3340161))))

(assert (=> b!5385059 (= res!2287220 (isEmpty!33527 (tail!10646 lt!2192958)))))

(declare-fun b!5385060 () Bool)

(assert (=> b!5385060 (= e!3340164 e!3340165)))

(declare-fun c!938469 () Bool)

(assert (=> b!5385060 (= c!938469 ((_ is EmptyLang!15119) lt!2192923))))

(declare-fun b!5385061 () Bool)

(assert (=> b!5385061 (= e!3340164 (= lt!2193152 call!385543))))

(declare-fun b!5385062 () Bool)

(assert (=> b!5385062 (= e!3340161 (= (head!11549 lt!2192958) (c!938207 lt!2192923)))))

(assert (= (and d!1722571 c!938468) b!5385054))

(assert (= (and d!1722571 (not c!938468)) b!5385058))

(assert (= (and d!1722571 c!938467) b!5385061))

(assert (= (and d!1722571 (not c!938467)) b!5385060))

(assert (= (and b!5385060 c!938469) b!5385057))

(assert (= (and b!5385060 (not c!938469)) b!5385055))

(assert (= (and b!5385055 (not res!2287217)) b!5385050))

(assert (= (and b!5385050 res!2287215) b!5385053))

(assert (= (and b!5385053 res!2287214) b!5385059))

(assert (= (and b!5385059 res!2287220) b!5385062))

(assert (= (and b!5385050 (not res!2287219)) b!5385052))

(assert (= (and b!5385052 res!2287216) b!5385049))

(assert (= (and b!5385049 (not res!2287218)) b!5385051))

(assert (= (and b!5385051 (not res!2287213)) b!5385056))

(assert (= (or b!5385061 b!5385049 b!5385053) bm!385538))

(declare-fun m!6410946 () Bool)

(assert (=> bm!385538 m!6410946))

(declare-fun m!6410948 () Bool)

(assert (=> b!5385051 m!6410948))

(assert (=> b!5385051 m!6410948))

(declare-fun m!6410950 () Bool)

(assert (=> b!5385051 m!6410950))

(declare-fun m!6410952 () Bool)

(assert (=> b!5385058 m!6410952))

(assert (=> b!5385058 m!6410952))

(declare-fun m!6410954 () Bool)

(assert (=> b!5385058 m!6410954))

(assert (=> b!5385058 m!6410948))

(assert (=> b!5385058 m!6410954))

(assert (=> b!5385058 m!6410948))

(declare-fun m!6410956 () Bool)

(assert (=> b!5385058 m!6410956))

(assert (=> d!1722571 m!6410946))

(assert (=> d!1722571 m!6410414))

(assert (=> b!5385059 m!6410948))

(assert (=> b!5385059 m!6410948))

(assert (=> b!5385059 m!6410950))

(assert (=> b!5385056 m!6410952))

(assert (=> b!5385062 m!6410952))

(assert (=> b!5385054 m!6410652))

(assert (=> b!5384039 d!1722571))

(declare-fun d!1722573 () Bool)

(assert (=> d!1722573 (matchR!7304 (Concat!23964 lt!2192923 (regTwo!30750 r!7292)) (++!13424 (_2!35621 lt!2192921) (_2!35621 lt!2192924)))))

(declare-fun lt!2193155 () Unit!153994)

(declare-fun choose!40482 (Regex!15119 Regex!15119 List!61656 List!61656) Unit!153994)

(assert (=> d!1722573 (= lt!2193155 (choose!40482 lt!2192923 (regTwo!30750 r!7292) (_2!35621 lt!2192921) (_2!35621 lt!2192924)))))

(declare-fun e!3340170 () Bool)

(assert (=> d!1722573 e!3340170))

(declare-fun res!2287223 () Bool)

(assert (=> d!1722573 (=> (not res!2287223) (not e!3340170))))

(assert (=> d!1722573 (= res!2287223 (validRegex!6855 lt!2192923))))

(assert (=> d!1722573 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!166 lt!2192923 (regTwo!30750 r!7292) (_2!35621 lt!2192921) (_2!35621 lt!2192924)) lt!2193155)))

(declare-fun b!5385065 () Bool)

(assert (=> b!5385065 (= e!3340170 (validRegex!6855 (regTwo!30750 r!7292)))))

(assert (= (and d!1722573 res!2287223) b!5385065))

(assert (=> d!1722573 m!6409834))

(assert (=> d!1722573 m!6409834))

(declare-fun m!6410958 () Bool)

(assert (=> d!1722573 m!6410958))

(declare-fun m!6410960 () Bool)

(assert (=> d!1722573 m!6410960))

(assert (=> d!1722573 m!6410414))

(assert (=> b!5385065 m!6410638))

(assert (=> b!5384039 d!1722573))

(declare-fun b!5385066 () Bool)

(declare-fun e!3340177 () Bool)

(declare-fun e!3340173 () Bool)

(assert (=> b!5385066 (= e!3340177 e!3340173)))

(declare-fun res!2287229 () Bool)

(assert (=> b!5385066 (=> res!2287229 e!3340173)))

(declare-fun call!385544 () Bool)

(assert (=> b!5385066 (= res!2287229 call!385544)))

(declare-fun b!5385067 () Bool)

(declare-fun res!2287230 () Bool)

(declare-fun e!3340172 () Bool)

(assert (=> b!5385067 (=> res!2287230 e!3340172)))

(declare-fun e!3340171 () Bool)

(assert (=> b!5385067 (= res!2287230 e!3340171)))

(declare-fun res!2287226 () Bool)

(assert (=> b!5385067 (=> (not res!2287226) (not e!3340171))))

(declare-fun lt!2193156 () Bool)

(assert (=> b!5385067 (= res!2287226 lt!2193156)))

(declare-fun b!5385068 () Bool)

(declare-fun res!2287224 () Bool)

(assert (=> b!5385068 (=> res!2287224 e!3340173)))

(assert (=> b!5385068 (= res!2287224 (not (isEmpty!33527 (tail!10646 (_2!35621 lt!2192921)))))))

(declare-fun b!5385069 () Bool)

(assert (=> b!5385069 (= e!3340172 e!3340177)))

(declare-fun res!2287227 () Bool)

(assert (=> b!5385069 (=> (not res!2287227) (not e!3340177))))

(assert (=> b!5385069 (= res!2287227 (not lt!2193156))))

(declare-fun b!5385070 () Bool)

(declare-fun res!2287225 () Bool)

(assert (=> b!5385070 (=> (not res!2287225) (not e!3340171))))

(assert (=> b!5385070 (= res!2287225 (not call!385544))))

(declare-fun b!5385071 () Bool)

(declare-fun e!3340176 () Bool)

(assert (=> b!5385071 (= e!3340176 (nullable!5288 lt!2192923))))

(declare-fun b!5385072 () Bool)

(declare-fun res!2287228 () Bool)

(assert (=> b!5385072 (=> res!2287228 e!3340172)))

(assert (=> b!5385072 (= res!2287228 (not ((_ is ElementMatch!15119) lt!2192923)))))

(declare-fun e!3340175 () Bool)

(assert (=> b!5385072 (= e!3340175 e!3340172)))

(declare-fun b!5385073 () Bool)

(assert (=> b!5385073 (= e!3340173 (not (= (head!11549 (_2!35621 lt!2192921)) (c!938207 lt!2192923))))))

(declare-fun bm!385539 () Bool)

(assert (=> bm!385539 (= call!385544 (isEmpty!33527 (_2!35621 lt!2192921)))))

(declare-fun b!5385074 () Bool)

(assert (=> b!5385074 (= e!3340175 (not lt!2193156))))

(declare-fun d!1722575 () Bool)

(declare-fun e!3340174 () Bool)

(assert (=> d!1722575 e!3340174))

(declare-fun c!938470 () Bool)

(assert (=> d!1722575 (= c!938470 ((_ is EmptyExpr!15119) lt!2192923))))

(assert (=> d!1722575 (= lt!2193156 e!3340176)))

(declare-fun c!938471 () Bool)

(assert (=> d!1722575 (= c!938471 (isEmpty!33527 (_2!35621 lt!2192921)))))

(assert (=> d!1722575 (validRegex!6855 lt!2192923)))

(assert (=> d!1722575 (= (matchR!7304 lt!2192923 (_2!35621 lt!2192921)) lt!2193156)))

(declare-fun b!5385075 () Bool)

(assert (=> b!5385075 (= e!3340176 (matchR!7304 (derivativeStep!4237 lt!2192923 (head!11549 (_2!35621 lt!2192921))) (tail!10646 (_2!35621 lt!2192921))))))

(declare-fun b!5385076 () Bool)

(declare-fun res!2287231 () Bool)

(assert (=> b!5385076 (=> (not res!2287231) (not e!3340171))))

(assert (=> b!5385076 (= res!2287231 (isEmpty!33527 (tail!10646 (_2!35621 lt!2192921))))))

(declare-fun b!5385077 () Bool)

(assert (=> b!5385077 (= e!3340174 e!3340175)))

(declare-fun c!938472 () Bool)

(assert (=> b!5385077 (= c!938472 ((_ is EmptyLang!15119) lt!2192923))))

(declare-fun b!5385078 () Bool)

(assert (=> b!5385078 (= e!3340174 (= lt!2193156 call!385544))))

(declare-fun b!5385079 () Bool)

(assert (=> b!5385079 (= e!3340171 (= (head!11549 (_2!35621 lt!2192921)) (c!938207 lt!2192923)))))

(assert (= (and d!1722575 c!938471) b!5385071))

(assert (= (and d!1722575 (not c!938471)) b!5385075))

(assert (= (and d!1722575 c!938470) b!5385078))

(assert (= (and d!1722575 (not c!938470)) b!5385077))

(assert (= (and b!5385077 c!938472) b!5385074))

(assert (= (and b!5385077 (not c!938472)) b!5385072))

(assert (= (and b!5385072 (not res!2287228)) b!5385067))

(assert (= (and b!5385067 res!2287226) b!5385070))

(assert (= (and b!5385070 res!2287225) b!5385076))

(assert (= (and b!5385076 res!2287231) b!5385079))

(assert (= (and b!5385067 (not res!2287230)) b!5385069))

(assert (= (and b!5385069 res!2287227) b!5385066))

(assert (= (and b!5385066 (not res!2287229)) b!5385068))

(assert (= (and b!5385068 (not res!2287224)) b!5385073))

(assert (= (or b!5385078 b!5385066 b!5385070) bm!385539))

(declare-fun m!6410962 () Bool)

(assert (=> bm!385539 m!6410962))

(declare-fun m!6410964 () Bool)

(assert (=> b!5385068 m!6410964))

(assert (=> b!5385068 m!6410964))

(declare-fun m!6410966 () Bool)

(assert (=> b!5385068 m!6410966))

(declare-fun m!6410968 () Bool)

(assert (=> b!5385075 m!6410968))

(assert (=> b!5385075 m!6410968))

(declare-fun m!6410970 () Bool)

(assert (=> b!5385075 m!6410970))

(assert (=> b!5385075 m!6410964))

(assert (=> b!5385075 m!6410970))

(assert (=> b!5385075 m!6410964))

(declare-fun m!6410972 () Bool)

(assert (=> b!5385075 m!6410972))

(assert (=> d!1722575 m!6410962))

(assert (=> d!1722575 m!6410414))

(assert (=> b!5385076 m!6410964))

(assert (=> b!5385076 m!6410964))

(assert (=> b!5385076 m!6410966))

(assert (=> b!5385073 m!6410968))

(assert (=> b!5385079 m!6410968))

(assert (=> b!5385071 m!6410652))

(assert (=> b!5384060 d!1722575))

(declare-fun d!1722577 () Bool)

(declare-fun lt!2193157 () Regex!15119)

(assert (=> d!1722577 (validRegex!6855 lt!2193157)))

(assert (=> d!1722577 (= lt!2193157 (generalisedUnion!1048 (unfocusZipperList!561 lt!2192944)))))

(assert (=> d!1722577 (= (unfocusZipper!861 lt!2192944) lt!2193157)))

(declare-fun bs!1246461 () Bool)

(assert (= bs!1246461 d!1722577))

(declare-fun m!6410974 () Bool)

(assert (=> bs!1246461 m!6410974))

(declare-fun m!6410976 () Bool)

(assert (=> bs!1246461 m!6410976))

(assert (=> bs!1246461 m!6410976))

(declare-fun m!6410978 () Bool)

(assert (=> bs!1246461 m!6410978))

(assert (=> b!5384038 d!1722577))

(declare-fun e!3340180 () Bool)

(declare-fun d!1722579 () Bool)

(assert (=> d!1722579 (= (matchZipper!1363 ((_ map or) lt!2192941 lt!2192956) (t!374879 s!2326)) e!3340180)))

(declare-fun res!2287234 () Bool)

(assert (=> d!1722579 (=> res!2287234 e!3340180)))

(assert (=> d!1722579 (= res!2287234 (matchZipper!1363 lt!2192941 (t!374879 s!2326)))))

(declare-fun lt!2193160 () Unit!153994)

(declare-fun choose!40483 ((InoxSet Context!9006) (InoxSet Context!9006) List!61656) Unit!153994)

(assert (=> d!1722579 (= lt!2193160 (choose!40483 lt!2192941 lt!2192956 (t!374879 s!2326)))))

(assert (=> d!1722579 (= (lemmaZipperConcatMatchesSameAsBothZippers!356 lt!2192941 lt!2192956 (t!374879 s!2326)) lt!2193160)))

(declare-fun b!5385082 () Bool)

(assert (=> b!5385082 (= e!3340180 (matchZipper!1363 lt!2192956 (t!374879 s!2326)))))

(assert (= (and d!1722579 (not res!2287234)) b!5385082))

(assert (=> d!1722579 m!6409882))

(assert (=> d!1722579 m!6409880))

(declare-fun m!6410980 () Bool)

(assert (=> d!1722579 m!6410980))

(assert (=> b!5385082 m!6409872))

(assert (=> b!5384058 d!1722579))

(declare-fun d!1722581 () Bool)

(declare-fun c!938473 () Bool)

(assert (=> d!1722581 (= c!938473 (isEmpty!33527 (t!374879 s!2326)))))

(declare-fun e!3340181 () Bool)

(assert (=> d!1722581 (= (matchZipper!1363 lt!2192941 (t!374879 s!2326)) e!3340181)))

(declare-fun b!5385083 () Bool)

(assert (=> b!5385083 (= e!3340181 (nullableZipper!1416 lt!2192941))))

(declare-fun b!5385084 () Bool)

(assert (=> b!5385084 (= e!3340181 (matchZipper!1363 (derivationStepZipper!1358 lt!2192941 (head!11549 (t!374879 s!2326))) (tail!10646 (t!374879 s!2326))))))

(assert (= (and d!1722581 c!938473) b!5385083))

(assert (= (and d!1722581 (not c!938473)) b!5385084))

(assert (=> d!1722581 m!6410736))

(declare-fun m!6410982 () Bool)

(assert (=> b!5385083 m!6410982))

(assert (=> b!5385084 m!6410740))

(assert (=> b!5385084 m!6410740))

(declare-fun m!6410984 () Bool)

(assert (=> b!5385084 m!6410984))

(assert (=> b!5385084 m!6410744))

(assert (=> b!5385084 m!6410984))

(assert (=> b!5385084 m!6410744))

(declare-fun m!6410986 () Bool)

(assert (=> b!5385084 m!6410986))

(assert (=> b!5384058 d!1722581))

(declare-fun d!1722583 () Bool)

(declare-fun c!938474 () Bool)

(assert (=> d!1722583 (= c!938474 (isEmpty!33527 (t!374879 s!2326)))))

(declare-fun e!3340182 () Bool)

(assert (=> d!1722583 (= (matchZipper!1363 ((_ map or) lt!2192941 lt!2192956) (t!374879 s!2326)) e!3340182)))

(declare-fun b!5385085 () Bool)

(assert (=> b!5385085 (= e!3340182 (nullableZipper!1416 ((_ map or) lt!2192941 lt!2192956)))))

(declare-fun b!5385086 () Bool)

(assert (=> b!5385086 (= e!3340182 (matchZipper!1363 (derivationStepZipper!1358 ((_ map or) lt!2192941 lt!2192956) (head!11549 (t!374879 s!2326))) (tail!10646 (t!374879 s!2326))))))

(assert (= (and d!1722583 c!938474) b!5385085))

(assert (= (and d!1722583 (not c!938474)) b!5385086))

(assert (=> d!1722583 m!6410736))

(declare-fun m!6410988 () Bool)

(assert (=> b!5385085 m!6410988))

(assert (=> b!5385086 m!6410740))

(assert (=> b!5385086 m!6410740))

(declare-fun m!6410990 () Bool)

(assert (=> b!5385086 m!6410990))

(assert (=> b!5385086 m!6410744))

(assert (=> b!5385086 m!6410990))

(assert (=> b!5385086 m!6410744))

(declare-fun m!6410992 () Bool)

(assert (=> b!5385086 m!6410992))

(assert (=> b!5384058 d!1722583))

(declare-fun d!1722585 () Bool)

(assert (=> d!1722585 (= (isEmpty!33528 (t!374880 (exprs!5003 (h!67982 zl!343)))) ((_ is Nil!61533) (t!374880 (exprs!5003 (h!67982 zl!343)))))))

(assert (=> b!5384057 d!1722585))

(declare-fun d!1722587 () Bool)

(declare-fun lt!2193161 () Regex!15119)

(assert (=> d!1722587 (validRegex!6855 lt!2193161)))

(assert (=> d!1722587 (= lt!2193161 (generalisedUnion!1048 (unfocusZipperList!561 zl!343)))))

(assert (=> d!1722587 (= (unfocusZipper!861 zl!343) lt!2193161)))

(declare-fun bs!1246462 () Bool)

(assert (= bs!1246462 d!1722587))

(declare-fun m!6410994 () Bool)

(assert (=> bs!1246462 m!6410994))

(assert (=> bs!1246462 m!6409840))

(assert (=> bs!1246462 m!6409840))

(assert (=> bs!1246462 m!6409842))

(assert (=> b!5384056 d!1722587))

(declare-fun b!5385087 () Bool)

(declare-fun c!938476 () Bool)

(declare-fun e!3340187 () Bool)

(assert (=> b!5385087 (= c!938476 e!3340187)))

(declare-fun res!2287235 () Bool)

(assert (=> b!5385087 (=> (not res!2287235) (not e!3340187))))

(assert (=> b!5385087 (= res!2287235 ((_ is Concat!23964) (h!67981 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun e!3340186 () (InoxSet Context!9006))

(declare-fun e!3340188 () (InoxSet Context!9006))

(assert (=> b!5385087 (= e!3340186 e!3340188)))

(declare-fun b!5385088 () Bool)

(assert (=> b!5385088 (= e!3340187 (nullable!5288 (regOne!30750 (h!67981 (exprs!5003 (h!67982 zl!343))))))))

(declare-fun b!5385089 () Bool)

(declare-fun e!3340184 () (InoxSet Context!9006))

(declare-fun call!385548 () (InoxSet Context!9006))

(assert (=> b!5385089 (= e!3340184 call!385548)))

(declare-fun c!938479 () Bool)

(declare-fun call!385549 () (InoxSet Context!9006))

(declare-fun bm!385540 () Bool)

(declare-fun call!385547 () List!61657)

(assert (=> bm!385540 (= call!385549 (derivationStepZipperDown!567 (ite c!938479 (regTwo!30751 (h!67981 (exprs!5003 (h!67982 zl!343)))) (regOne!30750 (h!67981 (exprs!5003 (h!67982 zl!343))))) (ite c!938479 lt!2192959 (Context!9007 call!385547)) (h!67980 s!2326)))))

(declare-fun c!938477 () Bool)

(declare-fun bm!385541 () Bool)

(assert (=> bm!385541 (= call!385547 ($colon$colon!1466 (exprs!5003 lt!2192959) (ite (or c!938476 c!938477) (regTwo!30750 (h!67981 (exprs!5003 (h!67982 zl!343)))) (h!67981 (exprs!5003 (h!67982 zl!343))))))))

(declare-fun call!385545 () (InoxSet Context!9006))

(declare-fun call!385546 () List!61657)

(declare-fun bm!385542 () Bool)

(assert (=> bm!385542 (= call!385545 (derivationStepZipperDown!567 (ite c!938479 (regOne!30751 (h!67981 (exprs!5003 (h!67982 zl!343)))) (ite c!938476 (regTwo!30750 (h!67981 (exprs!5003 (h!67982 zl!343)))) (ite c!938477 (regOne!30750 (h!67981 (exprs!5003 (h!67982 zl!343)))) (reg!15448 (h!67981 (exprs!5003 (h!67982 zl!343))))))) (ite (or c!938479 c!938476) lt!2192959 (Context!9007 call!385546)) (h!67980 s!2326)))))

(declare-fun bm!385543 () Bool)

(declare-fun call!385550 () (InoxSet Context!9006))

(assert (=> bm!385543 (= call!385550 call!385545)))

(declare-fun b!5385090 () Bool)

(assert (=> b!5385090 (= e!3340188 e!3340184)))

(assert (=> b!5385090 (= c!938477 ((_ is Concat!23964) (h!67981 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun b!5385091 () Bool)

(declare-fun e!3340183 () (InoxSet Context!9006))

(assert (=> b!5385091 (= e!3340183 ((as const (Array Context!9006 Bool)) false))))

(declare-fun b!5385092 () Bool)

(declare-fun e!3340185 () (InoxSet Context!9006))

(assert (=> b!5385092 (= e!3340185 (store ((as const (Array Context!9006 Bool)) false) lt!2192959 true))))

(declare-fun b!5385093 () Bool)

(assert (=> b!5385093 (= e!3340183 call!385548)))

(declare-fun bm!385545 () Bool)

(assert (=> bm!385545 (= call!385546 call!385547)))

(declare-fun b!5385094 () Bool)

(declare-fun c!938478 () Bool)

(assert (=> b!5385094 (= c!938478 ((_ is Star!15119) (h!67981 (exprs!5003 (h!67982 zl!343)))))))

(assert (=> b!5385094 (= e!3340184 e!3340183)))

(declare-fun b!5385095 () Bool)

(assert (=> b!5385095 (= e!3340185 e!3340186)))

(assert (=> b!5385095 (= c!938479 ((_ is Union!15119) (h!67981 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun b!5385096 () Bool)

(assert (=> b!5385096 (= e!3340188 ((_ map or) call!385549 call!385550))))

(declare-fun b!5385097 () Bool)

(assert (=> b!5385097 (= e!3340186 ((_ map or) call!385545 call!385549))))

(declare-fun d!1722589 () Bool)

(declare-fun c!938475 () Bool)

(assert (=> d!1722589 (= c!938475 (and ((_ is ElementMatch!15119) (h!67981 (exprs!5003 (h!67982 zl!343)))) (= (c!938207 (h!67981 (exprs!5003 (h!67982 zl!343)))) (h!67980 s!2326))))))

(assert (=> d!1722589 (= (derivationStepZipperDown!567 (h!67981 (exprs!5003 (h!67982 zl!343))) lt!2192959 (h!67980 s!2326)) e!3340185)))

(declare-fun bm!385544 () Bool)

(assert (=> bm!385544 (= call!385548 call!385550)))

(assert (= (and d!1722589 c!938475) b!5385092))

(assert (= (and d!1722589 (not c!938475)) b!5385095))

(assert (= (and b!5385095 c!938479) b!5385097))

(assert (= (and b!5385095 (not c!938479)) b!5385087))

(assert (= (and b!5385087 res!2287235) b!5385088))

(assert (= (and b!5385087 c!938476) b!5385096))

(assert (= (and b!5385087 (not c!938476)) b!5385090))

(assert (= (and b!5385090 c!938477) b!5385089))

(assert (= (and b!5385090 (not c!938477)) b!5385094))

(assert (= (and b!5385094 c!938478) b!5385093))

(assert (= (and b!5385094 (not c!938478)) b!5385091))

(assert (= (or b!5385089 b!5385093) bm!385545))

(assert (= (or b!5385089 b!5385093) bm!385544))

(assert (= (or b!5385096 bm!385545) bm!385541))

(assert (= (or b!5385096 bm!385544) bm!385543))

(assert (= (or b!5385097 b!5385096) bm!385540))

(assert (= (or b!5385097 bm!385543) bm!385542))

(declare-fun m!6410996 () Bool)

(assert (=> bm!385540 m!6410996))

(declare-fun m!6410998 () Bool)

(assert (=> b!5385088 m!6410998))

(declare-fun m!6411000 () Bool)

(assert (=> b!5385092 m!6411000))

(declare-fun m!6411002 () Bool)

(assert (=> bm!385542 m!6411002))

(declare-fun m!6411004 () Bool)

(assert (=> bm!385541 m!6411004))

(assert (=> b!5384075 d!1722589))

(declare-fun d!1722591 () Bool)

(assert (=> d!1722591 (= (nullable!5288 (h!67981 (exprs!5003 (h!67982 zl!343)))) (nullableFct!1568 (h!67981 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun bs!1246463 () Bool)

(assert (= bs!1246463 d!1722591))

(declare-fun m!6411006 () Bool)

(assert (=> bs!1246463 m!6411006))

(assert (=> b!5384075 d!1722591))

(declare-fun d!1722593 () Bool)

(declare-fun c!938480 () Bool)

(declare-fun e!3340190 () Bool)

(assert (=> d!1722593 (= c!938480 e!3340190)))

(declare-fun res!2287236 () Bool)

(assert (=> d!1722593 (=> (not res!2287236) (not e!3340190))))

(assert (=> d!1722593 (= res!2287236 ((_ is Cons!61533) (exprs!5003 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343))))))))))

(declare-fun e!3340189 () (InoxSet Context!9006))

(assert (=> d!1722593 (= (derivationStepZipperUp!491 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343))))) (h!67980 s!2326)) e!3340189)))

(declare-fun b!5385098 () Bool)

(assert (=> b!5385098 (= e!3340190 (nullable!5288 (h!67981 (exprs!5003 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343)))))))))))

(declare-fun call!385551 () (InoxSet Context!9006))

(declare-fun b!5385099 () Bool)

(assert (=> b!5385099 (= e!3340189 ((_ map or) call!385551 (derivationStepZipperUp!491 (Context!9007 (t!374880 (exprs!5003 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343)))))))) (h!67980 s!2326))))))

(declare-fun b!5385100 () Bool)

(declare-fun e!3340191 () (InoxSet Context!9006))

(assert (=> b!5385100 (= e!3340191 call!385551)))

(declare-fun b!5385101 () Bool)

(assert (=> b!5385101 (= e!3340189 e!3340191)))

(declare-fun c!938481 () Bool)

(assert (=> b!5385101 (= c!938481 ((_ is Cons!61533) (exprs!5003 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343))))))))))

(declare-fun b!5385102 () Bool)

(assert (=> b!5385102 (= e!3340191 ((as const (Array Context!9006 Bool)) false))))

(declare-fun bm!385546 () Bool)

(assert (=> bm!385546 (= call!385551 (derivationStepZipperDown!567 (h!67981 (exprs!5003 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343))))))) (Context!9007 (t!374880 (exprs!5003 (Context!9007 (Cons!61533 (h!67981 (exprs!5003 (h!67982 zl!343))) (t!374880 (exprs!5003 (h!67982 zl!343)))))))) (h!67980 s!2326)))))

(assert (= (and d!1722593 res!2287236) b!5385098))

(assert (= (and d!1722593 c!938480) b!5385099))

(assert (= (and d!1722593 (not c!938480)) b!5385101))

(assert (= (and b!5385101 c!938481) b!5385100))

(assert (= (and b!5385101 (not c!938481)) b!5385102))

(assert (= (or b!5385099 b!5385100) bm!385546))

(declare-fun m!6411008 () Bool)

(assert (=> b!5385098 m!6411008))

(declare-fun m!6411010 () Bool)

(assert (=> b!5385099 m!6411010))

(declare-fun m!6411012 () Bool)

(assert (=> bm!385546 m!6411012))

(assert (=> b!5384075 d!1722593))

(declare-fun d!1722595 () Bool)

(declare-fun c!938482 () Bool)

(declare-fun e!3340193 () Bool)

(assert (=> d!1722595 (= c!938482 e!3340193)))

(declare-fun res!2287237 () Bool)

(assert (=> d!1722595 (=> (not res!2287237) (not e!3340193))))

(assert (=> d!1722595 (= res!2287237 ((_ is Cons!61533) (exprs!5003 (h!67982 zl!343))))))

(declare-fun e!3340192 () (InoxSet Context!9006))

(assert (=> d!1722595 (= (derivationStepZipperUp!491 (h!67982 zl!343) (h!67980 s!2326)) e!3340192)))

(declare-fun b!5385103 () Bool)

(assert (=> b!5385103 (= e!3340193 (nullable!5288 (h!67981 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun call!385552 () (InoxSet Context!9006))

(declare-fun b!5385104 () Bool)

(assert (=> b!5385104 (= e!3340192 ((_ map or) call!385552 (derivationStepZipperUp!491 (Context!9007 (t!374880 (exprs!5003 (h!67982 zl!343)))) (h!67980 s!2326))))))

(declare-fun b!5385105 () Bool)

(declare-fun e!3340194 () (InoxSet Context!9006))

(assert (=> b!5385105 (= e!3340194 call!385552)))

(declare-fun b!5385106 () Bool)

(assert (=> b!5385106 (= e!3340192 e!3340194)))

(declare-fun c!938483 () Bool)

(assert (=> b!5385106 (= c!938483 ((_ is Cons!61533) (exprs!5003 (h!67982 zl!343))))))

(declare-fun b!5385107 () Bool)

(assert (=> b!5385107 (= e!3340194 ((as const (Array Context!9006 Bool)) false))))

(declare-fun bm!385547 () Bool)

(assert (=> bm!385547 (= call!385552 (derivationStepZipperDown!567 (h!67981 (exprs!5003 (h!67982 zl!343))) (Context!9007 (t!374880 (exprs!5003 (h!67982 zl!343)))) (h!67980 s!2326)))))

(assert (= (and d!1722595 res!2287237) b!5385103))

(assert (= (and d!1722595 c!938482) b!5385104))

(assert (= (and d!1722595 (not c!938482)) b!5385106))

(assert (= (and b!5385106 c!938483) b!5385105))

(assert (= (and b!5385106 (not c!938483)) b!5385107))

(assert (= (or b!5385104 b!5385105) bm!385547))

(assert (=> b!5385103 m!6409798))

(declare-fun m!6411014 () Bool)

(assert (=> b!5385104 m!6411014))

(declare-fun m!6411016 () Bool)

(assert (=> bm!385547 m!6411016))

(assert (=> b!5384075 d!1722595))

(declare-fun d!1722597 () Bool)

(assert (=> d!1722597 (= (flatMap!846 z!1189 lambda!278999) (dynLambda!24277 lambda!278999 (h!67982 zl!343)))))

(declare-fun lt!2193162 () Unit!153994)

(assert (=> d!1722597 (= lt!2193162 (choose!40476 z!1189 (h!67982 zl!343) lambda!278999))))

(assert (=> d!1722597 (= z!1189 (store ((as const (Array Context!9006 Bool)) false) (h!67982 zl!343) true))))

(assert (=> d!1722597 (= (lemmaFlatMapOnSingletonSet!378 z!1189 (h!67982 zl!343) lambda!278999) lt!2193162)))

(declare-fun b_lambda!206145 () Bool)

(assert (=> (not b_lambda!206145) (not d!1722597)))

(declare-fun bs!1246464 () Bool)

(assert (= bs!1246464 d!1722597))

(assert (=> bs!1246464 m!6409790))

(declare-fun m!6411018 () Bool)

(assert (=> bs!1246464 m!6411018))

(declare-fun m!6411020 () Bool)

(assert (=> bs!1246464 m!6411020))

(declare-fun m!6411022 () Bool)

(assert (=> bs!1246464 m!6411022))

(assert (=> b!5384075 d!1722597))

(declare-fun d!1722599 () Bool)

(declare-fun c!938484 () Bool)

(declare-fun e!3340196 () Bool)

(assert (=> d!1722599 (= c!938484 e!3340196)))

(declare-fun res!2287238 () Bool)

(assert (=> d!1722599 (=> (not res!2287238) (not e!3340196))))

(assert (=> d!1722599 (= res!2287238 ((_ is Cons!61533) (exprs!5003 lt!2192959)))))

(declare-fun e!3340195 () (InoxSet Context!9006))

(assert (=> d!1722599 (= (derivationStepZipperUp!491 lt!2192959 (h!67980 s!2326)) e!3340195)))

(declare-fun b!5385108 () Bool)

(assert (=> b!5385108 (= e!3340196 (nullable!5288 (h!67981 (exprs!5003 lt!2192959))))))

(declare-fun call!385553 () (InoxSet Context!9006))

(declare-fun b!5385109 () Bool)

(assert (=> b!5385109 (= e!3340195 ((_ map or) call!385553 (derivationStepZipperUp!491 (Context!9007 (t!374880 (exprs!5003 lt!2192959))) (h!67980 s!2326))))))

(declare-fun b!5385110 () Bool)

(declare-fun e!3340197 () (InoxSet Context!9006))

(assert (=> b!5385110 (= e!3340197 call!385553)))

(declare-fun b!5385111 () Bool)

(assert (=> b!5385111 (= e!3340195 e!3340197)))

(declare-fun c!938485 () Bool)

(assert (=> b!5385111 (= c!938485 ((_ is Cons!61533) (exprs!5003 lt!2192959)))))

(declare-fun b!5385112 () Bool)

(assert (=> b!5385112 (= e!3340197 ((as const (Array Context!9006 Bool)) false))))

(declare-fun bm!385548 () Bool)

(assert (=> bm!385548 (= call!385553 (derivationStepZipperDown!567 (h!67981 (exprs!5003 lt!2192959)) (Context!9007 (t!374880 (exprs!5003 lt!2192959))) (h!67980 s!2326)))))

(assert (= (and d!1722599 res!2287238) b!5385108))

(assert (= (and d!1722599 c!938484) b!5385109))

(assert (= (and d!1722599 (not c!938484)) b!5385111))

(assert (= (and b!5385111 c!938485) b!5385110))

(assert (= (and b!5385111 (not c!938485)) b!5385112))

(assert (= (or b!5385109 b!5385110) bm!385548))

(declare-fun m!6411024 () Bool)

(assert (=> b!5385108 m!6411024))

(declare-fun m!6411026 () Bool)

(assert (=> b!5385109 m!6411026))

(declare-fun m!6411028 () Bool)

(assert (=> bm!385548 m!6411028))

(assert (=> b!5384075 d!1722599))

(declare-fun d!1722601 () Bool)

(assert (=> d!1722601 (= (flatMap!846 z!1189 lambda!278999) (choose!40475 z!1189 lambda!278999))))

(declare-fun bs!1246465 () Bool)

(assert (= bs!1246465 d!1722601))

(declare-fun m!6411030 () Bool)

(assert (=> bs!1246465 m!6411030))

(assert (=> b!5384075 d!1722601))

(declare-fun b!5385113 () Bool)

(declare-fun e!3340198 () List!61656)

(assert (=> b!5385113 (= e!3340198 lt!2192919)))

(declare-fun b!5385114 () Bool)

(assert (=> b!5385114 (= e!3340198 (Cons!61532 (h!67980 (_1!35621 lt!2192921)) (++!13424 (t!374879 (_1!35621 lt!2192921)) lt!2192919)))))

(declare-fun b!5385115 () Bool)

(declare-fun res!2287240 () Bool)

(declare-fun e!3340199 () Bool)

(assert (=> b!5385115 (=> (not res!2287240) (not e!3340199))))

(declare-fun lt!2193163 () List!61656)

(assert (=> b!5385115 (= res!2287240 (= (size!39806 lt!2193163) (+ (size!39806 (_1!35621 lt!2192921)) (size!39806 lt!2192919))))))

(declare-fun d!1722603 () Bool)

(assert (=> d!1722603 e!3340199))

(declare-fun res!2287239 () Bool)

(assert (=> d!1722603 (=> (not res!2287239) (not e!3340199))))

(assert (=> d!1722603 (= res!2287239 (= (content!11005 lt!2193163) ((_ map or) (content!11005 (_1!35621 lt!2192921)) (content!11005 lt!2192919))))))

(assert (=> d!1722603 (= lt!2193163 e!3340198)))

(declare-fun c!938486 () Bool)

(assert (=> d!1722603 (= c!938486 ((_ is Nil!61532) (_1!35621 lt!2192921)))))

(assert (=> d!1722603 (= (++!13424 (_1!35621 lt!2192921) lt!2192919) lt!2193163)))

(declare-fun b!5385116 () Bool)

(assert (=> b!5385116 (= e!3340199 (or (not (= lt!2192919 Nil!61532)) (= lt!2193163 (_1!35621 lt!2192921))))))

(assert (= (and d!1722603 c!938486) b!5385113))

(assert (= (and d!1722603 (not c!938486)) b!5385114))

(assert (= (and d!1722603 res!2287239) b!5385115))

(assert (= (and b!5385115 res!2287240) b!5385116))

(declare-fun m!6411032 () Bool)

(assert (=> b!5385114 m!6411032))

(declare-fun m!6411034 () Bool)

(assert (=> b!5385115 m!6411034))

(assert (=> b!5385115 m!6410302))

(declare-fun m!6411036 () Bool)

(assert (=> b!5385115 m!6411036))

(declare-fun m!6411038 () Bool)

(assert (=> d!1722603 m!6411038))

(assert (=> d!1722603 m!6410308))

(declare-fun m!6411040 () Bool)

(assert (=> d!1722603 m!6411040))

(assert (=> b!5384065 d!1722603))

(declare-fun b!5385117 () Bool)

(declare-fun e!3340200 () List!61656)

(assert (=> b!5385117 (= e!3340200 (_2!35621 lt!2192924))))

(declare-fun b!5385118 () Bool)

(assert (=> b!5385118 (= e!3340200 (Cons!61532 (h!67980 lt!2192958) (++!13424 (t!374879 lt!2192958) (_2!35621 lt!2192924))))))

(declare-fun b!5385119 () Bool)

(declare-fun res!2287242 () Bool)

(declare-fun e!3340201 () Bool)

(assert (=> b!5385119 (=> (not res!2287242) (not e!3340201))))

(declare-fun lt!2193164 () List!61656)

(assert (=> b!5385119 (= res!2287242 (= (size!39806 lt!2193164) (+ (size!39806 lt!2192958) (size!39806 (_2!35621 lt!2192924)))))))

(declare-fun d!1722605 () Bool)

(assert (=> d!1722605 e!3340201))

(declare-fun res!2287241 () Bool)

(assert (=> d!1722605 (=> (not res!2287241) (not e!3340201))))

(assert (=> d!1722605 (= res!2287241 (= (content!11005 lt!2193164) ((_ map or) (content!11005 lt!2192958) (content!11005 (_2!35621 lt!2192924)))))))

(assert (=> d!1722605 (= lt!2193164 e!3340200)))

(declare-fun c!938487 () Bool)

(assert (=> d!1722605 (= c!938487 ((_ is Nil!61532) lt!2192958))))

(assert (=> d!1722605 (= (++!13424 lt!2192958 (_2!35621 lt!2192924)) lt!2193164)))

(declare-fun b!5385120 () Bool)

(assert (=> b!5385120 (= e!3340201 (or (not (= (_2!35621 lt!2192924) Nil!61532)) (= lt!2193164 lt!2192958)))))

(assert (= (and d!1722605 c!938487) b!5385117))

(assert (= (and d!1722605 (not c!938487)) b!5385118))

(assert (= (and d!1722605 res!2287241) b!5385119))

(assert (= (and b!5385119 res!2287242) b!5385120))

(declare-fun m!6411042 () Bool)

(assert (=> b!5385118 m!6411042))

(declare-fun m!6411044 () Bool)

(assert (=> b!5385119 m!6411044))

(declare-fun m!6411046 () Bool)

(assert (=> b!5385119 m!6411046))

(assert (=> b!5385119 m!6410662))

(declare-fun m!6411048 () Bool)

(assert (=> d!1722605 m!6411048))

(declare-fun m!6411050 () Bool)

(assert (=> d!1722605 m!6411050))

(assert (=> d!1722605 m!6410668))

(assert (=> b!5384065 d!1722605))

(declare-fun b!5385121 () Bool)

(declare-fun e!3340202 () List!61656)

(assert (=> b!5385121 (= e!3340202 (_2!35621 lt!2192924))))

(declare-fun b!5385122 () Bool)

(assert (=> b!5385122 (= e!3340202 (Cons!61532 (h!67980 (_2!35621 lt!2192921)) (++!13424 (t!374879 (_2!35621 lt!2192921)) (_2!35621 lt!2192924))))))

(declare-fun b!5385123 () Bool)

(declare-fun res!2287244 () Bool)

(declare-fun e!3340203 () Bool)

(assert (=> b!5385123 (=> (not res!2287244) (not e!3340203))))

(declare-fun lt!2193165 () List!61656)

(assert (=> b!5385123 (= res!2287244 (= (size!39806 lt!2193165) (+ (size!39806 (_2!35621 lt!2192921)) (size!39806 (_2!35621 lt!2192924)))))))

(declare-fun d!1722607 () Bool)

(assert (=> d!1722607 e!3340203))

(declare-fun res!2287243 () Bool)

(assert (=> d!1722607 (=> (not res!2287243) (not e!3340203))))

(assert (=> d!1722607 (= res!2287243 (= (content!11005 lt!2193165) ((_ map or) (content!11005 (_2!35621 lt!2192921)) (content!11005 (_2!35621 lt!2192924)))))))

(assert (=> d!1722607 (= lt!2193165 e!3340202)))

(declare-fun c!938488 () Bool)

(assert (=> d!1722607 (= c!938488 ((_ is Nil!61532) (_2!35621 lt!2192921)))))

(assert (=> d!1722607 (= (++!13424 (_2!35621 lt!2192921) (_2!35621 lt!2192924)) lt!2193165)))

(declare-fun b!5385124 () Bool)

(assert (=> b!5385124 (= e!3340203 (or (not (= (_2!35621 lt!2192924) Nil!61532)) (= lt!2193165 (_2!35621 lt!2192921))))))

(assert (= (and d!1722607 c!938488) b!5385121))

(assert (= (and d!1722607 (not c!938488)) b!5385122))

(assert (= (and d!1722607 res!2287243) b!5385123))

(assert (= (and b!5385123 res!2287244) b!5385124))

(declare-fun m!6411052 () Bool)

(assert (=> b!5385122 m!6411052))

(declare-fun m!6411054 () Bool)

(assert (=> b!5385123 m!6411054))

(assert (=> b!5385123 m!6410304))

(assert (=> b!5385123 m!6410662))

(declare-fun m!6411056 () Bool)

(assert (=> d!1722607 m!6411056))

(assert (=> d!1722607 m!6410310))

(assert (=> d!1722607 m!6410668))

(assert (=> b!5384065 d!1722607))

(declare-fun d!1722609 () Bool)

(assert (=> d!1722609 (= (++!13424 (++!13424 (_1!35621 lt!2192921) (_2!35621 lt!2192921)) (_2!35621 lt!2192924)) (++!13424 (_1!35621 lt!2192921) (++!13424 (_2!35621 lt!2192921) (_2!35621 lt!2192924))))))

(declare-fun lt!2193168 () Unit!153994)

(declare-fun choose!40487 (List!61656 List!61656 List!61656) Unit!153994)

(assert (=> d!1722609 (= lt!2193168 (choose!40487 (_1!35621 lt!2192921) (_2!35621 lt!2192921) (_2!35621 lt!2192924)))))

(assert (=> d!1722609 (= (lemmaConcatAssociativity!2816 (_1!35621 lt!2192921) (_2!35621 lt!2192921) (_2!35621 lt!2192924)) lt!2193168)))

(declare-fun bs!1246466 () Bool)

(assert (= bs!1246466 d!1722609))

(assert (=> bs!1246466 m!6409834))

(declare-fun m!6411058 () Bool)

(assert (=> bs!1246466 m!6411058))

(assert (=> bs!1246466 m!6409834))

(declare-fun m!6411060 () Bool)

(assert (=> bs!1246466 m!6411060))

(assert (=> bs!1246466 m!6409912))

(declare-fun m!6411062 () Bool)

(assert (=> bs!1246466 m!6411062))

(assert (=> bs!1246466 m!6409912))

(assert (=> b!5384065 d!1722609))

(declare-fun b!5385125 () Bool)

(declare-fun e!3340207 () Bool)

(declare-fun e!3340205 () Bool)

(assert (=> b!5385125 (= e!3340207 e!3340205)))

(declare-fun c!938490 () Bool)

(assert (=> b!5385125 (= c!938490 ((_ is Union!15119) r!7292))))

(declare-fun b!5385126 () Bool)

(declare-fun e!3340210 () Bool)

(declare-fun call!385554 () Bool)

(assert (=> b!5385126 (= e!3340210 call!385554)))

(declare-fun call!385555 () Bool)

(declare-fun c!938489 () Bool)

(declare-fun bm!385549 () Bool)

(assert (=> bm!385549 (= call!385555 (validRegex!6855 (ite c!938489 (reg!15448 r!7292) (ite c!938490 (regTwo!30751 r!7292) (regTwo!30750 r!7292)))))))

(declare-fun bm!385550 () Bool)

(assert (=> bm!385550 (= call!385554 call!385555)))

(declare-fun b!5385127 () Bool)

(declare-fun res!2287245 () Bool)

(declare-fun e!3340209 () Bool)

(assert (=> b!5385127 (=> res!2287245 e!3340209)))

(assert (=> b!5385127 (= res!2287245 (not ((_ is Concat!23964) r!7292)))))

(assert (=> b!5385127 (= e!3340205 e!3340209)))

(declare-fun b!5385128 () Bool)

(declare-fun e!3340206 () Bool)

(assert (=> b!5385128 (= e!3340206 e!3340207)))

(assert (=> b!5385128 (= c!938489 ((_ is Star!15119) r!7292))))

(declare-fun b!5385129 () Bool)

(declare-fun e!3340208 () Bool)

(assert (=> b!5385129 (= e!3340208 call!385555)))

(declare-fun d!1722611 () Bool)

(declare-fun res!2287247 () Bool)

(assert (=> d!1722611 (=> res!2287247 e!3340206)))

(assert (=> d!1722611 (= res!2287247 ((_ is ElementMatch!15119) r!7292))))

(assert (=> d!1722611 (= (validRegex!6855 r!7292) e!3340206)))

(declare-fun bm!385551 () Bool)

(declare-fun call!385556 () Bool)

(assert (=> bm!385551 (= call!385556 (validRegex!6855 (ite c!938490 (regOne!30751 r!7292) (regOne!30750 r!7292))))))

(declare-fun b!5385130 () Bool)

(declare-fun res!2287246 () Bool)

(declare-fun e!3340204 () Bool)

(assert (=> b!5385130 (=> (not res!2287246) (not e!3340204))))

(assert (=> b!5385130 (= res!2287246 call!385556)))

(assert (=> b!5385130 (= e!3340205 e!3340204)))

(declare-fun b!5385131 () Bool)

(assert (=> b!5385131 (= e!3340207 e!3340208)))

(declare-fun res!2287249 () Bool)

(assert (=> b!5385131 (= res!2287249 (not (nullable!5288 (reg!15448 r!7292))))))

(assert (=> b!5385131 (=> (not res!2287249) (not e!3340208))))

(declare-fun b!5385132 () Bool)

(assert (=> b!5385132 (= e!3340209 e!3340210)))

(declare-fun res!2287248 () Bool)

(assert (=> b!5385132 (=> (not res!2287248) (not e!3340210))))

(assert (=> b!5385132 (= res!2287248 call!385556)))

(declare-fun b!5385133 () Bool)

(assert (=> b!5385133 (= e!3340204 call!385554)))

(assert (= (and d!1722611 (not res!2287247)) b!5385128))

(assert (= (and b!5385128 c!938489) b!5385131))

(assert (= (and b!5385128 (not c!938489)) b!5385125))

(assert (= (and b!5385131 res!2287249) b!5385129))

(assert (= (and b!5385125 c!938490) b!5385130))

(assert (= (and b!5385125 (not c!938490)) b!5385127))

(assert (= (and b!5385130 res!2287246) b!5385133))

(assert (= (and b!5385127 (not res!2287245)) b!5385132))

(assert (= (and b!5385132 res!2287248) b!5385126))

(assert (= (or b!5385133 b!5385126) bm!385550))

(assert (= (or b!5385130 b!5385132) bm!385551))

(assert (= (or b!5385129 bm!385550) bm!385549))

(declare-fun m!6411064 () Bool)

(assert (=> bm!385549 m!6411064))

(declare-fun m!6411066 () Bool)

(assert (=> bm!385551 m!6411066))

(declare-fun m!6411068 () Bool)

(assert (=> b!5385131 m!6411068))

(assert (=> start!566006 d!1722611))

(declare-fun d!1722613 () Bool)

(assert (=> d!1722613 (= (isEmpty!33526 (t!374881 zl!343)) ((_ is Nil!61534) (t!374881 zl!343)))))

(assert (=> b!5384044 d!1722613))

(declare-fun bs!1246467 () Bool)

(declare-fun b!5385143 () Bool)

(assert (= bs!1246467 (and b!5385143 d!1722375)))

(declare-fun lambda!279098 () Int)

(assert (=> bs!1246467 (not (= lambda!279098 lambda!279058))))

(declare-fun bs!1246468 () Bool)

(assert (= bs!1246468 (and b!5385143 d!1722389)))

(assert (=> bs!1246468 (not (= lambda!279098 lambda!279065))))

(declare-fun bs!1246469 () Bool)

(assert (= bs!1246469 (and b!5385143 d!1722303)))

(assert (=> bs!1246469 (not (= lambda!279098 lambda!279036))))

(declare-fun bs!1246470 () Bool)

(assert (= bs!1246470 (and b!5385143 b!5384045)))

(assert (=> bs!1246470 (not (= lambda!279098 lambda!279001))))

(declare-fun bs!1246471 () Bool)

(assert (= bs!1246471 (and b!5385143 b!5384068)))

(assert (=> bs!1246471 (not (= lambda!279098 lambda!278997))))

(declare-fun bs!1246472 () Bool)

(assert (= bs!1246472 (and b!5385143 d!1722443)))

(assert (=> bs!1246472 (not (= lambda!279098 lambda!279071))))

(declare-fun bs!1246473 () Bool)

(assert (= bs!1246473 (and b!5385143 b!5384069)))

(assert (=> bs!1246473 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (reg!15448 r!7292) (reg!15448 (regOne!30750 r!7292))) (= r!7292 lt!2192923)) (= lambda!279098 lambda!279003))))

(declare-fun bs!1246474 () Bool)

(assert (= bs!1246474 (and b!5385143 b!5384948)))

(assert (=> bs!1246474 (= (and (= (reg!15448 r!7292) (reg!15448 lt!2192942)) (= r!7292 lt!2192942)) (= lambda!279098 lambda!279093))))

(declare-fun bs!1246475 () Bool)

(assert (= bs!1246475 (and b!5385143 d!1722487)))

(assert (=> bs!1246475 (not (= lambda!279098 lambda!279077))))

(declare-fun bs!1246476 () Bool)

(assert (= bs!1246476 (and b!5385143 b!5384940)))

(assert (=> bs!1246476 (not (= lambda!279098 lambda!279094))))

(declare-fun bs!1246477 () Bool)

(assert (= bs!1246477 (and b!5385143 b!5384443)))

(assert (=> bs!1246477 (not (= lambda!279098 lambda!279052))))

(assert (=> bs!1246468 (not (= lambda!279098 lambda!279066))))

(assert (=> bs!1246475 (not (= lambda!279098 lambda!279078))))

(declare-fun bs!1246478 () Bool)

(assert (= bs!1246478 (and b!5385143 d!1722499)))

(assert (=> bs!1246478 (not (= lambda!279098 lambda!279082))))

(assert (=> bs!1246473 (not (= lambda!279098 lambda!279002))))

(declare-fun bs!1246479 () Bool)

(assert (= bs!1246479 (and b!5385143 d!1722445)))

(assert (=> bs!1246479 (not (= lambda!279098 lambda!279073))))

(declare-fun bs!1246480 () Bool)

(assert (= bs!1246480 (and b!5385143 b!5384451)))

(assert (=> bs!1246480 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (reg!15448 r!7292) (reg!15448 lt!2192923)) (= r!7292 lt!2192923)) (= lambda!279098 lambda!279050))))

(assert (=> bs!1246479 (not (= lambda!279098 lambda!279072))))

(assert (=> bs!1246470 (not (= lambda!279098 lambda!279000))))

(assert (=> bs!1246471 (not (= lambda!279098 lambda!278998))))

(assert (=> bs!1246473 (not (= lambda!279098 lambda!279004))))

(assert (=> bs!1246469 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (reg!15448 r!7292) (reg!15448 (regOne!30750 r!7292))) (= r!7292 (Star!15119 (reg!15448 (regOne!30750 r!7292))))) (= lambda!279098 lambda!279038))))

(assert (=> b!5385143 true))

(assert (=> b!5385143 true))

(declare-fun bs!1246481 () Bool)

(declare-fun b!5385135 () Bool)

(assert (= bs!1246481 (and b!5385135 d!1722375)))

(declare-fun lambda!279099 () Int)

(assert (=> bs!1246481 (not (= lambda!279099 lambda!279058))))

(declare-fun bs!1246482 () Bool)

(assert (= bs!1246482 (and b!5385135 d!1722389)))

(assert (=> bs!1246482 (not (= lambda!279099 lambda!279065))))

(declare-fun bs!1246483 () Bool)

(assert (= bs!1246483 (and b!5385135 d!1722303)))

(assert (=> bs!1246483 (not (= lambda!279099 lambda!279036))))

(declare-fun bs!1246484 () Bool)

(assert (= bs!1246484 (and b!5385135 b!5384045)))

(assert (=> bs!1246484 (= (= (regOne!30750 r!7292) lt!2192923) (= lambda!279099 lambda!279001))))

(declare-fun bs!1246485 () Bool)

(assert (= bs!1246485 (and b!5385135 b!5384068)))

(assert (=> bs!1246485 (not (= lambda!279099 lambda!278997))))

(declare-fun bs!1246486 () Bool)

(assert (= bs!1246486 (and b!5385135 d!1722443)))

(assert (=> bs!1246486 (not (= lambda!279099 lambda!279071))))

(declare-fun bs!1246487 () Bool)

(assert (= bs!1246487 (and b!5385135 b!5384069)))

(assert (=> bs!1246487 (not (= lambda!279099 lambda!279003))))

(declare-fun bs!1246488 () Bool)

(assert (= bs!1246488 (and b!5385135 b!5384948)))

(assert (=> bs!1246488 (not (= lambda!279099 lambda!279093))))

(declare-fun bs!1246489 () Bool)

(assert (= bs!1246489 (and b!5385135 d!1722487)))

(assert (=> bs!1246489 (not (= lambda!279099 lambda!279077))))

(declare-fun bs!1246490 () Bool)

(assert (= bs!1246490 (and b!5385135 b!5384940)))

(assert (=> bs!1246490 (= (and (= (regOne!30750 r!7292) (regOne!30750 lt!2192942)) (= (regTwo!30750 r!7292) (regTwo!30750 lt!2192942))) (= lambda!279099 lambda!279094))))

(declare-fun bs!1246491 () Bool)

(assert (= bs!1246491 (and b!5385135 b!5384443)))

(assert (=> bs!1246491 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (regOne!30750 lt!2192923)) (= (regTwo!30750 r!7292) (regTwo!30750 lt!2192923))) (= lambda!279099 lambda!279052))))

(declare-fun bs!1246492 () Bool)

(assert (= bs!1246492 (and b!5385135 b!5385143)))

(assert (=> bs!1246492 (not (= lambda!279099 lambda!279098))))

(assert (=> bs!1246482 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279099 lambda!279066))))

(assert (=> bs!1246489 (= (= (regOne!30750 r!7292) lt!2192923) (= lambda!279099 lambda!279078))))

(declare-fun bs!1246493 () Bool)

(assert (= bs!1246493 (and b!5385135 d!1722499)))

(assert (=> bs!1246493 (not (= lambda!279099 lambda!279082))))

(assert (=> bs!1246487 (not (= lambda!279099 lambda!279002))))

(declare-fun bs!1246494 () Bool)

(assert (= bs!1246494 (and b!5385135 d!1722445)))

(assert (=> bs!1246494 (= lambda!279099 lambda!279073)))

(declare-fun bs!1246495 () Bool)

(assert (= bs!1246495 (and b!5385135 b!5384451)))

(assert (=> bs!1246495 (not (= lambda!279099 lambda!279050))))

(assert (=> bs!1246494 (not (= lambda!279099 lambda!279072))))

(assert (=> bs!1246484 (not (= lambda!279099 lambda!279000))))

(assert (=> bs!1246485 (= lambda!279099 lambda!278998)))

(assert (=> bs!1246487 (= (and (= s!2326 (_1!35621 lt!2192924)) (= (regOne!30750 r!7292) (reg!15448 (regOne!30750 r!7292))) (= (regTwo!30750 r!7292) lt!2192923)) (= lambda!279099 lambda!279004))))

(assert (=> bs!1246483 (not (= lambda!279099 lambda!279038))))

(assert (=> b!5385135 true))

(assert (=> b!5385135 true))

(declare-fun b!5385134 () Bool)

(declare-fun e!3340215 () Bool)

(declare-fun call!385557 () Bool)

(assert (=> b!5385134 (= e!3340215 call!385557)))

(declare-fun e!3340214 () Bool)

(declare-fun call!385558 () Bool)

(assert (=> b!5385135 (= e!3340214 call!385558)))

(declare-fun b!5385136 () Bool)

(declare-fun e!3340211 () Bool)

(assert (=> b!5385136 (= e!3340211 (= s!2326 (Cons!61532 (c!938207 r!7292) Nil!61532)))))

(declare-fun b!5385137 () Bool)

(declare-fun c!938491 () Bool)

(assert (=> b!5385137 (= c!938491 ((_ is ElementMatch!15119) r!7292))))

(declare-fun e!3340216 () Bool)

(assert (=> b!5385137 (= e!3340216 e!3340211)))

(declare-fun c!938492 () Bool)

(declare-fun bm!385552 () Bool)

(assert (=> bm!385552 (= call!385558 (Exists!2300 (ite c!938492 lambda!279098 lambda!279099)))))

(declare-fun b!5385138 () Bool)

(declare-fun e!3340213 () Bool)

(assert (=> b!5385138 (= e!3340213 e!3340214)))

(assert (=> b!5385138 (= c!938492 ((_ is Star!15119) r!7292))))

(declare-fun d!1722615 () Bool)

(declare-fun c!938494 () Bool)

(assert (=> d!1722615 (= c!938494 ((_ is EmptyExpr!15119) r!7292))))

(assert (=> d!1722615 (= (matchRSpec!2222 r!7292 s!2326) e!3340215)))

(declare-fun b!5385139 () Bool)

(declare-fun res!2287250 () Bool)

(declare-fun e!3340217 () Bool)

(assert (=> b!5385139 (=> res!2287250 e!3340217)))

(assert (=> b!5385139 (= res!2287250 call!385557)))

(assert (=> b!5385139 (= e!3340214 e!3340217)))

(declare-fun bm!385553 () Bool)

(assert (=> bm!385553 (= call!385557 (isEmpty!33527 s!2326))))

(declare-fun b!5385140 () Bool)

(declare-fun e!3340212 () Bool)

(assert (=> b!5385140 (= e!3340213 e!3340212)))

(declare-fun res!2287252 () Bool)

(assert (=> b!5385140 (= res!2287252 (matchRSpec!2222 (regOne!30751 r!7292) s!2326))))

(assert (=> b!5385140 (=> res!2287252 e!3340212)))

(declare-fun b!5385141 () Bool)

(declare-fun c!938493 () Bool)

(assert (=> b!5385141 (= c!938493 ((_ is Union!15119) r!7292))))

(assert (=> b!5385141 (= e!3340211 e!3340213)))

(declare-fun b!5385142 () Bool)

(assert (=> b!5385142 (= e!3340215 e!3340216)))

(declare-fun res!2287251 () Bool)

(assert (=> b!5385142 (= res!2287251 (not ((_ is EmptyLang!15119) r!7292)))))

(assert (=> b!5385142 (=> (not res!2287251) (not e!3340216))))

(assert (=> b!5385143 (= e!3340217 call!385558)))

(declare-fun b!5385144 () Bool)

(assert (=> b!5385144 (= e!3340212 (matchRSpec!2222 (regTwo!30751 r!7292) s!2326))))

(assert (= (and d!1722615 c!938494) b!5385134))

(assert (= (and d!1722615 (not c!938494)) b!5385142))

(assert (= (and b!5385142 res!2287251) b!5385137))

(assert (= (and b!5385137 c!938491) b!5385136))

(assert (= (and b!5385137 (not c!938491)) b!5385141))

(assert (= (and b!5385141 c!938493) b!5385140))

(assert (= (and b!5385141 (not c!938493)) b!5385138))

(assert (= (and b!5385140 (not res!2287252)) b!5385144))

(assert (= (and b!5385138 c!938492) b!5385139))

(assert (= (and b!5385138 (not c!938492)) b!5385135))

(assert (= (and b!5385139 (not res!2287250)) b!5385143))

(assert (= (or b!5385143 b!5385135) bm!385552))

(assert (= (or b!5385134 b!5385139) bm!385553))

(declare-fun m!6411070 () Bool)

(assert (=> bm!385552 m!6411070))

(assert (=> bm!385553 m!6410806))

(declare-fun m!6411072 () Bool)

(assert (=> b!5385140 m!6411072))

(declare-fun m!6411074 () Bool)

(assert (=> b!5385144 m!6411074))

(assert (=> b!5384041 d!1722615))

(declare-fun b!5385145 () Bool)

(declare-fun e!3340224 () Bool)

(declare-fun e!3340220 () Bool)

(assert (=> b!5385145 (= e!3340224 e!3340220)))

(declare-fun res!2287258 () Bool)

(assert (=> b!5385145 (=> res!2287258 e!3340220)))

(declare-fun call!385559 () Bool)

(assert (=> b!5385145 (= res!2287258 call!385559)))

(declare-fun b!5385146 () Bool)

(declare-fun res!2287259 () Bool)

(declare-fun e!3340219 () Bool)

(assert (=> b!5385146 (=> res!2287259 e!3340219)))

(declare-fun e!3340218 () Bool)

(assert (=> b!5385146 (= res!2287259 e!3340218)))

(declare-fun res!2287255 () Bool)

(assert (=> b!5385146 (=> (not res!2287255) (not e!3340218))))

(declare-fun lt!2193169 () Bool)

(assert (=> b!5385146 (= res!2287255 lt!2193169)))

(declare-fun b!5385147 () Bool)

(declare-fun res!2287253 () Bool)

(assert (=> b!5385147 (=> res!2287253 e!3340220)))

(assert (=> b!5385147 (= res!2287253 (not (isEmpty!33527 (tail!10646 s!2326))))))

(declare-fun b!5385148 () Bool)

(assert (=> b!5385148 (= e!3340219 e!3340224)))

(declare-fun res!2287256 () Bool)

(assert (=> b!5385148 (=> (not res!2287256) (not e!3340224))))

(assert (=> b!5385148 (= res!2287256 (not lt!2193169))))

(declare-fun b!5385149 () Bool)

(declare-fun res!2287254 () Bool)

(assert (=> b!5385149 (=> (not res!2287254) (not e!3340218))))

(assert (=> b!5385149 (= res!2287254 (not call!385559))))

(declare-fun b!5385150 () Bool)

(declare-fun e!3340223 () Bool)

(assert (=> b!5385150 (= e!3340223 (nullable!5288 r!7292))))

(declare-fun b!5385151 () Bool)

(declare-fun res!2287257 () Bool)

(assert (=> b!5385151 (=> res!2287257 e!3340219)))

(assert (=> b!5385151 (= res!2287257 (not ((_ is ElementMatch!15119) r!7292)))))

(declare-fun e!3340222 () Bool)

(assert (=> b!5385151 (= e!3340222 e!3340219)))

(declare-fun b!5385152 () Bool)

(assert (=> b!5385152 (= e!3340220 (not (= (head!11549 s!2326) (c!938207 r!7292))))))

(declare-fun bm!385554 () Bool)

(assert (=> bm!385554 (= call!385559 (isEmpty!33527 s!2326))))

(declare-fun b!5385153 () Bool)

(assert (=> b!5385153 (= e!3340222 (not lt!2193169))))

(declare-fun d!1722617 () Bool)

(declare-fun e!3340221 () Bool)

(assert (=> d!1722617 e!3340221))

(declare-fun c!938495 () Bool)

(assert (=> d!1722617 (= c!938495 ((_ is EmptyExpr!15119) r!7292))))

(assert (=> d!1722617 (= lt!2193169 e!3340223)))

(declare-fun c!938496 () Bool)

(assert (=> d!1722617 (= c!938496 (isEmpty!33527 s!2326))))

(assert (=> d!1722617 (validRegex!6855 r!7292)))

(assert (=> d!1722617 (= (matchR!7304 r!7292 s!2326) lt!2193169)))

(declare-fun b!5385154 () Bool)

(assert (=> b!5385154 (= e!3340223 (matchR!7304 (derivativeStep!4237 r!7292 (head!11549 s!2326)) (tail!10646 s!2326)))))

(declare-fun b!5385155 () Bool)

(declare-fun res!2287260 () Bool)

(assert (=> b!5385155 (=> (not res!2287260) (not e!3340218))))

(assert (=> b!5385155 (= res!2287260 (isEmpty!33527 (tail!10646 s!2326)))))

(declare-fun b!5385156 () Bool)

(assert (=> b!5385156 (= e!3340221 e!3340222)))

(declare-fun c!938497 () Bool)

(assert (=> b!5385156 (= c!938497 ((_ is EmptyLang!15119) r!7292))))

(declare-fun b!5385157 () Bool)

(assert (=> b!5385157 (= e!3340221 (= lt!2193169 call!385559))))

(declare-fun b!5385158 () Bool)

(assert (=> b!5385158 (= e!3340218 (= (head!11549 s!2326) (c!938207 r!7292)))))

(assert (= (and d!1722617 c!938496) b!5385150))

(assert (= (and d!1722617 (not c!938496)) b!5385154))

(assert (= (and d!1722617 c!938495) b!5385157))

(assert (= (and d!1722617 (not c!938495)) b!5385156))

(assert (= (and b!5385156 c!938497) b!5385153))

(assert (= (and b!5385156 (not c!938497)) b!5385151))

(assert (= (and b!5385151 (not res!2287257)) b!5385146))

(assert (= (and b!5385146 res!2287255) b!5385149))

(assert (= (and b!5385149 res!2287254) b!5385155))

(assert (= (and b!5385155 res!2287260) b!5385158))

(assert (= (and b!5385146 (not res!2287259)) b!5385148))

(assert (= (and b!5385148 res!2287256) b!5385145))

(assert (= (and b!5385145 (not res!2287258)) b!5385147))

(assert (= (and b!5385147 (not res!2287253)) b!5385152))

(assert (= (or b!5385157 b!5385145 b!5385149) bm!385554))

(assert (=> bm!385554 m!6410806))

(assert (=> b!5385147 m!6410808))

(assert (=> b!5385147 m!6410808))

(assert (=> b!5385147 m!6410810))

(assert (=> b!5385154 m!6410812))

(assert (=> b!5385154 m!6410812))

(declare-fun m!6411076 () Bool)

(assert (=> b!5385154 m!6411076))

(assert (=> b!5385154 m!6410808))

(assert (=> b!5385154 m!6411076))

(assert (=> b!5385154 m!6410808))

(declare-fun m!6411078 () Bool)

(assert (=> b!5385154 m!6411078))

(assert (=> d!1722617 m!6410806))

(assert (=> d!1722617 m!6409914))

(assert (=> b!5385155 m!6410808))

(assert (=> b!5385155 m!6410808))

(assert (=> b!5385155 m!6410810))

(assert (=> b!5385152 m!6410812))

(assert (=> b!5385158 m!6410812))

(declare-fun m!6411080 () Bool)

(assert (=> b!5385150 m!6411080))

(assert (=> b!5384041 d!1722617))

(declare-fun d!1722619 () Bool)

(assert (=> d!1722619 (= (matchR!7304 r!7292 s!2326) (matchRSpec!2222 r!7292 s!2326))))

(declare-fun lt!2193170 () Unit!153994)

(assert (=> d!1722619 (= lt!2193170 (choose!40472 r!7292 s!2326))))

(assert (=> d!1722619 (validRegex!6855 r!7292)))

(assert (=> d!1722619 (= (mainMatchTheorem!2222 r!7292 s!2326) lt!2193170)))

(declare-fun bs!1246496 () Bool)

(assert (= bs!1246496 d!1722619))

(assert (=> bs!1246496 m!6409886))

(assert (=> bs!1246496 m!6409884))

(declare-fun m!6411082 () Bool)

(assert (=> bs!1246496 m!6411082))

(assert (=> bs!1246496 m!6409914))

(assert (=> b!5384041 d!1722619))

(declare-fun d!1722621 () Bool)

(assert (=> d!1722621 (= (flatMap!846 lt!2192938 lambda!278999) (choose!40475 lt!2192938 lambda!278999))))

(declare-fun bs!1246497 () Bool)

(assert (= bs!1246497 d!1722621))

(declare-fun m!6411084 () Bool)

(assert (=> bs!1246497 m!6411084))

(assert (=> b!5384061 d!1722621))

(declare-fun d!1722623 () Bool)

(declare-fun c!938498 () Bool)

(declare-fun e!3340226 () Bool)

(assert (=> d!1722623 (= c!938498 e!3340226)))

(declare-fun res!2287261 () Bool)

(assert (=> d!1722623 (=> (not res!2287261) (not e!3340226))))

(assert (=> d!1722623 (= res!2287261 ((_ is Cons!61533) (exprs!5003 lt!2192925)))))

(declare-fun e!3340225 () (InoxSet Context!9006))

(assert (=> d!1722623 (= (derivationStepZipperUp!491 lt!2192925 (h!67980 s!2326)) e!3340225)))

(declare-fun b!5385159 () Bool)

(assert (=> b!5385159 (= e!3340226 (nullable!5288 (h!67981 (exprs!5003 lt!2192925))))))

(declare-fun b!5385160 () Bool)

(declare-fun call!385560 () (InoxSet Context!9006))

(assert (=> b!5385160 (= e!3340225 ((_ map or) call!385560 (derivationStepZipperUp!491 (Context!9007 (t!374880 (exprs!5003 lt!2192925))) (h!67980 s!2326))))))

(declare-fun b!5385161 () Bool)

(declare-fun e!3340227 () (InoxSet Context!9006))

(assert (=> b!5385161 (= e!3340227 call!385560)))

(declare-fun b!5385162 () Bool)

(assert (=> b!5385162 (= e!3340225 e!3340227)))

(declare-fun c!938499 () Bool)

(assert (=> b!5385162 (= c!938499 ((_ is Cons!61533) (exprs!5003 lt!2192925)))))

(declare-fun b!5385163 () Bool)

(assert (=> b!5385163 (= e!3340227 ((as const (Array Context!9006 Bool)) false))))

(declare-fun bm!385555 () Bool)

(assert (=> bm!385555 (= call!385560 (derivationStepZipperDown!567 (h!67981 (exprs!5003 lt!2192925)) (Context!9007 (t!374880 (exprs!5003 lt!2192925))) (h!67980 s!2326)))))

(assert (= (and d!1722623 res!2287261) b!5385159))

(assert (= (and d!1722623 c!938498) b!5385160))

(assert (= (and d!1722623 (not c!938498)) b!5385162))

(assert (= (and b!5385162 c!938499) b!5385161))

(assert (= (and b!5385162 (not c!938499)) b!5385163))

(assert (= (or b!5385160 b!5385161) bm!385555))

(declare-fun m!6411086 () Bool)

(assert (=> b!5385159 m!6411086))

(declare-fun m!6411088 () Bool)

(assert (=> b!5385160 m!6411088))

(declare-fun m!6411090 () Bool)

(assert (=> bm!385555 m!6411090))

(assert (=> b!5384061 d!1722623))

(declare-fun d!1722625 () Bool)

(assert (=> d!1722625 (= (flatMap!846 lt!2192938 lambda!278999) (dynLambda!24277 lambda!278999 lt!2192925))))

(declare-fun lt!2193171 () Unit!153994)

(assert (=> d!1722625 (= lt!2193171 (choose!40476 lt!2192938 lt!2192925 lambda!278999))))

(assert (=> d!1722625 (= lt!2192938 (store ((as const (Array Context!9006 Bool)) false) lt!2192925 true))))

(assert (=> d!1722625 (= (lemmaFlatMapOnSingletonSet!378 lt!2192938 lt!2192925 lambda!278999) lt!2193171)))

(declare-fun b_lambda!206147 () Bool)

(assert (=> (not b_lambda!206147) (not d!1722625)))

(declare-fun bs!1246498 () Bool)

(assert (= bs!1246498 d!1722625))

(assert (=> bs!1246498 m!6409934))

(declare-fun m!6411092 () Bool)

(assert (=> bs!1246498 m!6411092))

(declare-fun m!6411094 () Bool)

(assert (=> bs!1246498 m!6411094))

(assert (=> bs!1246498 m!6409938))

(assert (=> b!5384061 d!1722625))

(declare-fun bs!1246499 () Bool)

(declare-fun d!1722627 () Bool)

(assert (= bs!1246499 (and d!1722627 b!5384075)))

(declare-fun lambda!279102 () Int)

(assert (=> bs!1246499 (= lambda!279102 lambda!278999)))

(assert (=> d!1722627 true))

(assert (=> d!1722627 (= (derivationStepZipper!1358 lt!2192938 (h!67980 s!2326)) (flatMap!846 lt!2192938 lambda!279102))))

(declare-fun bs!1246500 () Bool)

(assert (= bs!1246500 d!1722627))

(declare-fun m!6411096 () Bool)

(assert (=> bs!1246500 m!6411096))

(assert (=> b!5384061 d!1722627))

(declare-fun bs!1246501 () Bool)

(declare-fun d!1722629 () Bool)

(assert (= bs!1246501 (and d!1722629 d!1722515)))

(declare-fun lambda!279105 () Int)

(assert (=> bs!1246501 (= lambda!279105 lambda!279091)))

(declare-fun bs!1246502 () Bool)

(assert (= bs!1246502 (and d!1722629 d!1722511)))

(assert (=> bs!1246502 (= lambda!279105 lambda!279085)))

(declare-fun bs!1246503 () Bool)

(assert (= bs!1246503 (and d!1722629 d!1722531)))

(assert (=> bs!1246503 (= lambda!279105 lambda!279092)))

(declare-fun bs!1246504 () Bool)

(assert (= bs!1246504 (and d!1722629 b!5384039)))

(assert (=> bs!1246504 (= lambda!279105 lambda!279005)))

(declare-fun bs!1246505 () Bool)

(assert (= bs!1246505 (and d!1722629 d!1722561)))

(assert (=> bs!1246505 (= lambda!279105 lambda!279097)))

(declare-fun bs!1246506 () Bool)

(assert (= bs!1246506 (and d!1722629 d!1722513)))

(assert (=> bs!1246506 (= lambda!279105 lambda!279088)))

(declare-fun b!5385186 () Bool)

(declare-fun e!3340245 () Bool)

(declare-fun lt!2193174 () Regex!15119)

(assert (=> b!5385186 (= e!3340245 (= lt!2193174 (head!11550 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun b!5385187 () Bool)

(declare-fun e!3340244 () Regex!15119)

(assert (=> b!5385187 (= e!3340244 EmptyExpr!15119)))

(declare-fun b!5385188 () Bool)

(declare-fun e!3340240 () Bool)

(declare-fun isEmptyExpr!950 (Regex!15119) Bool)

(assert (=> b!5385188 (= e!3340240 (isEmptyExpr!950 lt!2193174))))

(declare-fun b!5385189 () Bool)

(declare-fun e!3340243 () Bool)

(assert (=> b!5385189 (= e!3340243 (isEmpty!33528 (t!374880 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun b!5385190 () Bool)

(assert (=> b!5385190 (= e!3340240 e!3340245)))

(declare-fun c!938511 () Bool)

(assert (=> b!5385190 (= c!938511 (isEmpty!33528 (tail!10647 (exprs!5003 (h!67982 zl!343)))))))

(declare-fun b!5385191 () Bool)

(declare-fun isConcat!473 (Regex!15119) Bool)

(assert (=> b!5385191 (= e!3340245 (isConcat!473 lt!2193174))))

(declare-fun b!5385192 () Bool)

(assert (=> b!5385192 (= e!3340244 (Concat!23964 (h!67981 (exprs!5003 (h!67982 zl!343))) (generalisedConcat!788 (t!374880 (exprs!5003 (h!67982 zl!343))))))))

(declare-fun b!5385194 () Bool)

(declare-fun e!3340241 () Regex!15119)

(assert (=> b!5385194 (= e!3340241 e!3340244)))

(declare-fun c!938512 () Bool)

(assert (=> b!5385194 (= c!938512 ((_ is Cons!61533) (exprs!5003 (h!67982 zl!343))))))

(declare-fun b!5385195 () Bool)

(declare-fun e!3340242 () Bool)

(assert (=> b!5385195 (= e!3340242 e!3340240)))

(declare-fun c!938513 () Bool)

(assert (=> b!5385195 (= c!938513 (isEmpty!33528 (exprs!5003 (h!67982 zl!343))))))

(assert (=> d!1722629 e!3340242))

(declare-fun res!2287266 () Bool)

(assert (=> d!1722629 (=> (not res!2287266) (not e!3340242))))

(assert (=> d!1722629 (= res!2287266 (validRegex!6855 lt!2193174))))

(assert (=> d!1722629 (= lt!2193174 e!3340241)))

(declare-fun c!938510 () Bool)

(assert (=> d!1722629 (= c!938510 e!3340243)))

(declare-fun res!2287267 () Bool)

(assert (=> d!1722629 (=> (not res!2287267) (not e!3340243))))

(assert (=> d!1722629 (= res!2287267 ((_ is Cons!61533) (exprs!5003 (h!67982 zl!343))))))

(assert (=> d!1722629 (forall!14509 (exprs!5003 (h!67982 zl!343)) lambda!279105)))

(assert (=> d!1722629 (= (generalisedConcat!788 (exprs!5003 (h!67982 zl!343))) lt!2193174)))

(declare-fun b!5385193 () Bool)

(assert (=> b!5385193 (= e!3340241 (h!67981 (exprs!5003 (h!67982 zl!343))))))

(assert (= (and d!1722629 res!2287267) b!5385189))

(assert (= (and d!1722629 c!938510) b!5385193))

(assert (= (and d!1722629 (not c!938510)) b!5385194))

(assert (= (and b!5385194 c!938512) b!5385192))

(assert (= (and b!5385194 (not c!938512)) b!5385187))

(assert (= (and d!1722629 res!2287266) b!5385195))

(assert (= (and b!5385195 c!938513) b!5385188))

(assert (= (and b!5385195 (not c!938513)) b!5385190))

(assert (= (and b!5385190 c!938511) b!5385186))

(assert (= (and b!5385190 (not c!938511)) b!5385191))

(declare-fun m!6411098 () Bool)

(assert (=> b!5385186 m!6411098))

(declare-fun m!6411100 () Bool)

(assert (=> b!5385192 m!6411100))

(assert (=> b!5385189 m!6409786))

(declare-fun m!6411102 () Bool)

(assert (=> d!1722629 m!6411102))

(declare-fun m!6411104 () Bool)

(assert (=> d!1722629 m!6411104))

(declare-fun m!6411106 () Bool)

(assert (=> b!5385195 m!6411106))

(declare-fun m!6411108 () Bool)

(assert (=> b!5385190 m!6411108))

(assert (=> b!5385190 m!6411108))

(declare-fun m!6411110 () Bool)

(assert (=> b!5385190 m!6411110))

(declare-fun m!6411112 () Bool)

(assert (=> b!5385191 m!6411112))

(declare-fun m!6411114 () Bool)

(assert (=> b!5385188 m!6411114))

(assert (=> b!5384040 d!1722629))

(declare-fun b!5385209 () Bool)

(declare-fun e!3340248 () Bool)

(declare-fun tp!1491942 () Bool)

(declare-fun tp!1491939 () Bool)

(assert (=> b!5385209 (= e!3340248 (and tp!1491942 tp!1491939))))

(declare-fun b!5385207 () Bool)

(declare-fun tp!1491940 () Bool)

(declare-fun tp!1491941 () Bool)

(assert (=> b!5385207 (= e!3340248 (and tp!1491940 tp!1491941))))

(assert (=> b!5384050 (= tp!1491869 e!3340248)))

(declare-fun b!5385206 () Bool)

(assert (=> b!5385206 (= e!3340248 tp_is_empty!39491)))

(declare-fun b!5385208 () Bool)

(declare-fun tp!1491938 () Bool)

(assert (=> b!5385208 (= e!3340248 tp!1491938)))

(assert (= (and b!5384050 ((_ is ElementMatch!15119) (reg!15448 r!7292))) b!5385206))

(assert (= (and b!5384050 ((_ is Concat!23964) (reg!15448 r!7292))) b!5385207))

(assert (= (and b!5384050 ((_ is Star!15119) (reg!15448 r!7292))) b!5385208))

(assert (= (and b!5384050 ((_ is Union!15119) (reg!15448 r!7292))) b!5385209))

(declare-fun b!5385214 () Bool)

(declare-fun e!3340251 () Bool)

(declare-fun tp!1491947 () Bool)

(declare-fun tp!1491948 () Bool)

(assert (=> b!5385214 (= e!3340251 (and tp!1491947 tp!1491948))))

(assert (=> b!5384070 (= tp!1491867 e!3340251)))

(assert (= (and b!5384070 ((_ is Cons!61533) (exprs!5003 (h!67982 zl!343)))) b!5385214))

(declare-fun condSetEmpty!34955 () Bool)

(assert (=> setNonEmpty!34949 (= condSetEmpty!34955 (= setRest!34949 ((as const (Array Context!9006 Bool)) false)))))

(declare-fun setRes!34955 () Bool)

(assert (=> setNonEmpty!34949 (= tp!1491866 setRes!34955)))

(declare-fun setIsEmpty!34955 () Bool)

(assert (=> setIsEmpty!34955 setRes!34955))

(declare-fun tp!1491954 () Bool)

(declare-fun e!3340254 () Bool)

(declare-fun setElem!34955 () Context!9006)

(declare-fun setNonEmpty!34955 () Bool)

(assert (=> setNonEmpty!34955 (= setRes!34955 (and tp!1491954 (inv!81044 setElem!34955) e!3340254))))

(declare-fun setRest!34955 () (InoxSet Context!9006))

(assert (=> setNonEmpty!34955 (= setRest!34949 ((_ map or) (store ((as const (Array Context!9006 Bool)) false) setElem!34955 true) setRest!34955))))

(declare-fun b!5385219 () Bool)

(declare-fun tp!1491953 () Bool)

(assert (=> b!5385219 (= e!3340254 tp!1491953)))

(assert (= (and setNonEmpty!34949 condSetEmpty!34955) setIsEmpty!34955))

(assert (= (and setNonEmpty!34949 (not condSetEmpty!34955)) setNonEmpty!34955))

(assert (= setNonEmpty!34955 b!5385219))

(declare-fun m!6411116 () Bool)

(assert (=> setNonEmpty!34955 m!6411116))

(declare-fun b!5385224 () Bool)

(declare-fun e!3340257 () Bool)

(declare-fun tp!1491957 () Bool)

(assert (=> b!5385224 (= e!3340257 (and tp_is_empty!39491 tp!1491957))))

(assert (=> b!5384049 (= tp!1491862 e!3340257)))

(assert (= (and b!5384049 ((_ is Cons!61532) (t!374879 s!2326))) b!5385224))

(declare-fun b!5385228 () Bool)

(declare-fun e!3340258 () Bool)

(declare-fun tp!1491962 () Bool)

(declare-fun tp!1491959 () Bool)

(assert (=> b!5385228 (= e!3340258 (and tp!1491962 tp!1491959))))

(declare-fun b!5385226 () Bool)

(declare-fun tp!1491960 () Bool)

(declare-fun tp!1491961 () Bool)

(assert (=> b!5385226 (= e!3340258 (and tp!1491960 tp!1491961))))

(assert (=> b!5384043 (= tp!1491864 e!3340258)))

(declare-fun b!5385225 () Bool)

(assert (=> b!5385225 (= e!3340258 tp_is_empty!39491)))

(declare-fun b!5385227 () Bool)

(declare-fun tp!1491958 () Bool)

(assert (=> b!5385227 (= e!3340258 tp!1491958)))

(assert (= (and b!5384043 ((_ is ElementMatch!15119) (regOne!30751 r!7292))) b!5385225))

(assert (= (and b!5384043 ((_ is Concat!23964) (regOne!30751 r!7292))) b!5385226))

(assert (= (and b!5384043 ((_ is Star!15119) (regOne!30751 r!7292))) b!5385227))

(assert (= (and b!5384043 ((_ is Union!15119) (regOne!30751 r!7292))) b!5385228))

(declare-fun b!5385232 () Bool)

(declare-fun e!3340259 () Bool)

(declare-fun tp!1491967 () Bool)

(declare-fun tp!1491964 () Bool)

(assert (=> b!5385232 (= e!3340259 (and tp!1491967 tp!1491964))))

(declare-fun b!5385230 () Bool)

(declare-fun tp!1491965 () Bool)

(declare-fun tp!1491966 () Bool)

(assert (=> b!5385230 (= e!3340259 (and tp!1491965 tp!1491966))))

(assert (=> b!5384043 (= tp!1491868 e!3340259)))

(declare-fun b!5385229 () Bool)

(assert (=> b!5385229 (= e!3340259 tp_is_empty!39491)))

(declare-fun b!5385231 () Bool)

(declare-fun tp!1491963 () Bool)

(assert (=> b!5385231 (= e!3340259 tp!1491963)))

(assert (= (and b!5384043 ((_ is ElementMatch!15119) (regTwo!30751 r!7292))) b!5385229))

(assert (= (and b!5384043 ((_ is Concat!23964) (regTwo!30751 r!7292))) b!5385230))

(assert (= (and b!5384043 ((_ is Star!15119) (regTwo!30751 r!7292))) b!5385231))

(assert (= (and b!5384043 ((_ is Union!15119) (regTwo!30751 r!7292))) b!5385232))

(declare-fun b!5385240 () Bool)

(declare-fun e!3340265 () Bool)

(declare-fun tp!1491972 () Bool)

(assert (=> b!5385240 (= e!3340265 tp!1491972)))

(declare-fun tp!1491973 () Bool)

(declare-fun e!3340264 () Bool)

(declare-fun b!5385239 () Bool)

(assert (=> b!5385239 (= e!3340264 (and (inv!81044 (h!67982 (t!374881 zl!343))) e!3340265 tp!1491973))))

(assert (=> b!5384032 (= tp!1491865 e!3340264)))

(assert (= b!5385239 b!5385240))

(assert (= (and b!5384032 ((_ is Cons!61534) (t!374881 zl!343))) b!5385239))

(declare-fun m!6411118 () Bool)

(assert (=> b!5385239 m!6411118))

(declare-fun b!5385244 () Bool)

(declare-fun e!3340266 () Bool)

(declare-fun tp!1491978 () Bool)

(declare-fun tp!1491975 () Bool)

(assert (=> b!5385244 (= e!3340266 (and tp!1491978 tp!1491975))))

(declare-fun b!5385242 () Bool)

(declare-fun tp!1491976 () Bool)

(declare-fun tp!1491977 () Bool)

(assert (=> b!5385242 (= e!3340266 (and tp!1491976 tp!1491977))))

(assert (=> b!5384062 (= tp!1491860 e!3340266)))

(declare-fun b!5385241 () Bool)

(assert (=> b!5385241 (= e!3340266 tp_is_empty!39491)))

(declare-fun b!5385243 () Bool)

(declare-fun tp!1491974 () Bool)

(assert (=> b!5385243 (= e!3340266 tp!1491974)))

(assert (= (and b!5384062 ((_ is ElementMatch!15119) (regOne!30750 r!7292))) b!5385241))

(assert (= (and b!5384062 ((_ is Concat!23964) (regOne!30750 r!7292))) b!5385242))

(assert (= (and b!5384062 ((_ is Star!15119) (regOne!30750 r!7292))) b!5385243))

(assert (= (and b!5384062 ((_ is Union!15119) (regOne!30750 r!7292))) b!5385244))

(declare-fun b!5385248 () Bool)

(declare-fun e!3340267 () Bool)

(declare-fun tp!1491983 () Bool)

(declare-fun tp!1491980 () Bool)

(assert (=> b!5385248 (= e!3340267 (and tp!1491983 tp!1491980))))

(declare-fun b!5385246 () Bool)

(declare-fun tp!1491981 () Bool)

(declare-fun tp!1491982 () Bool)

(assert (=> b!5385246 (= e!3340267 (and tp!1491981 tp!1491982))))

(assert (=> b!5384062 (= tp!1491863 e!3340267)))

(declare-fun b!5385245 () Bool)

(assert (=> b!5385245 (= e!3340267 tp_is_empty!39491)))

(declare-fun b!5385247 () Bool)

(declare-fun tp!1491979 () Bool)

(assert (=> b!5385247 (= e!3340267 tp!1491979)))

(assert (= (and b!5384062 ((_ is ElementMatch!15119) (regTwo!30750 r!7292))) b!5385245))

(assert (= (and b!5384062 ((_ is Concat!23964) (regTwo!30750 r!7292))) b!5385246))

(assert (= (and b!5384062 ((_ is Star!15119) (regTwo!30750 r!7292))) b!5385247))

(assert (= (and b!5384062 ((_ is Union!15119) (regTwo!30750 r!7292))) b!5385248))

(declare-fun b!5385249 () Bool)

(declare-fun e!3340268 () Bool)

(declare-fun tp!1491984 () Bool)

(declare-fun tp!1491985 () Bool)

(assert (=> b!5385249 (= e!3340268 (and tp!1491984 tp!1491985))))

(assert (=> b!5384036 (= tp!1491861 e!3340268)))

(assert (= (and b!5384036 ((_ is Cons!61533) (exprs!5003 setElem!34949))) b!5385249))

(declare-fun b_lambda!206149 () Bool)

(assert (= b_lambda!206143 (or b!5384075 b_lambda!206149)))

(declare-fun bs!1246507 () Bool)

(declare-fun d!1722631 () Bool)

(assert (= bs!1246507 (and d!1722631 b!5384075)))

(assert (=> bs!1246507 (= (dynLambda!24277 lambda!278999 lt!2192967) (derivationStepZipperUp!491 lt!2192967 (h!67980 s!2326)))))

(assert (=> bs!1246507 m!6409916))

(assert (=> d!1722527 d!1722631))

(declare-fun b_lambda!206151 () Bool)

(assert (= b_lambda!206141 (or b!5384075 b_lambda!206151)))

(declare-fun bs!1246508 () Bool)

(declare-fun d!1722633 () Bool)

(assert (= bs!1246508 (and d!1722633 b!5384075)))

(assert (=> bs!1246508 (= (dynLambda!24277 lambda!278999 lt!2192969) (derivationStepZipperUp!491 lt!2192969 (h!67980 s!2326)))))

(assert (=> bs!1246508 m!6409932))

(assert (=> d!1722525 d!1722633))

(declare-fun b_lambda!206153 () Bool)

(assert (= b_lambda!206147 (or b!5384075 b_lambda!206153)))

(declare-fun bs!1246509 () Bool)

(declare-fun d!1722635 () Bool)

(assert (= bs!1246509 (and d!1722635 b!5384075)))

(assert (=> bs!1246509 (= (dynLambda!24277 lambda!278999 lt!2192925) (derivationStepZipperUp!491 lt!2192925 (h!67980 s!2326)))))

(assert (=> bs!1246509 m!6409936))

(assert (=> d!1722625 d!1722635))

(declare-fun b_lambda!206155 () Bool)

(assert (= b_lambda!206145 (or b!5384075 b_lambda!206155)))

(declare-fun bs!1246510 () Bool)

(declare-fun d!1722637 () Bool)

(assert (= bs!1246510 (and d!1722637 b!5384075)))

(assert (=> bs!1246510 (= (dynLambda!24277 lambda!278999 (h!67982 zl!343)) (derivationStepZipperUp!491 (h!67982 zl!343) (h!67980 s!2326)))))

(assert (=> bs!1246510 m!6409792))

(assert (=> d!1722597 d!1722637))

(check-sat (not b!5384777) (not b!5385147) (not bm!385500) (not b!5385115) (not b!5384790) (not d!1722619) (not d!1722527) (not b!5385086) (not bm!385524) (not d!1722523) (not b!5385158) (not d!1722627) (not d!1722553) (not b!5384756) (not b!5385154) (not b!5385226) (not d!1722429) (not d!1722583) (not d!1722531) (not d!1722453) (not d!1722401) (not d!1722487) (not b!5384662) (not b!5385054) (not d!1722571) (not b!5384656) (not b_lambda!206155) (not b!5384754) (not b!5384986) (not bm!385506) (not b!5385231) (not b!5384668) (not b!5385088) (not b!5384934) (not b!5385071) (not b!5385118) (not b!5384752) (not d!1722543) (not b!5385056) (not d!1722565) (not b!5385037) (not d!1722579) (not bm!385551) (not bm!385542) (not b!5384796) (not d!1722577) (not b!5385073) (not d!1722561) (not bm!385508) (not b!5385076) (not d!1722517) (not bm!385552) (not d!1722413) (not b!5385240) (not b!5385140) (not b!5384890) (not b!5385048) (not b!5384782) (not d!1722557) (not d!1722375) (not bm!385523) (not b!5384794) (not b!5385208) (not d!1722497) (not b_lambda!206151) (not b!5384867) (not b!5384799) (not b!5385040) (not b!5385191) (not bm!385534) (not d!1722573) (not d!1722559) (not d!1722547) (not b!5384791) (not b!5385108) (not b!5385020) (not bm!385505) (not bm!385548) (not b!5385247) (not b!5384664) (not d!1722601) (not d!1722439) (not b!5385195) (not b!5385058) (not b!5385062) (not b_lambda!206149) (not d!1722625) (not b!5384760) (not bm!385536) (not d!1722525) (not b!5385051) (not b!5384659) (not b!5385248) (not b!5384768) (not b!5385104) (not b!5384770) (not b!5385244) (not d!1722621) (not b!5384448) (not bm!385509) (not d!1722407) (not b!5385019) (not b!5385084) (not b!5385109) (not d!1722605) (not d!1722537) (not d!1722545) (not b!5385032) (not b!5384985) (not bm!385555) (not b!5384452) (not d!1722575) (not b!5384949) (not b!5384938) (not bm!385471) (not b!5384795) (not b!5384897) (not d!1722445) (not bm!385539) (not b!5385214) (not bm!385554) (not d!1722629) (not b!5385224) (not b!5384895) (not d!1722513) (not b!5385239) (not d!1722431) (not b!5384665) (not b!5385119) (not d!1722539) (not b!5385122) (not d!1722569) (not b!5385150) (not b!5385033) (not b!5384785) (not b!5385186) (not setNonEmpty!34955) (not bm!385546) (not b!5384930) (not b!5384655) (not b!5385246) (not b!5384893) (not b!5385017) (not b!5384898) (not b!5385209) (not b!5384915) (not b!5385189) (not bm!385553) (not b!5385103) (not d!1722475) (not d!1722581) (not b!5384894) (not d!1722617) (not d!1722533) (not b!5385044) (not d!1722567) (not b!5384935) (not b!5385192) (not b!5385022) (not d!1722469) (not b!5384517) (not bm!385507) (not b!5384927) (not b!5384658) (not b!5384780) (not b!5385155) (not b!5384868) (not b_lambda!206153) (not bs!1246507) (not d!1722499) (not b!5384784) (not d!1722551) (not d!1722591) (not d!1722511) (not d!1722435) (not d!1722443) (not b!5384989) (not bm!385540) (not b!5384763) (not b!5385190) (not b!5385159) (not bs!1246510) (not d!1722603) (not bs!1246508) (not bm!385549) (not b!5384889) (not d!1722563) (not d!1722501) (not b!5384757) (not b!5384774) (not b!5385083) (not b!5385228) (not b!5385098) (not d!1722403) (not d!1722433) (not b!5384921) (not b!5385068) (not b!5384667) (not b!5385042) (not b!5384766) (not b!5385065) (not b!5385160) (not b!5385232) (not d!1722477) (not b!5385082) (not bm!385499) (not b!5384749) (not b!5385131) (not b!5384932) (not bm!385538) (not d!1722357) (not bs!1246509) (not d!1722389) (not b!5384983) (not b!5385099) (not d!1722607) (not b!5385059) (not bm!385501) (not b!5385114) (not b!5384945) (not d!1722515) (not b!5385207) (not d!1722473) (not b!5385188) (not d!1722597) (not b!5385230) (not b!5384920) (not b!5385242) (not d!1722587) (not b!5385075) (not b!5384771) (not b!5385144) (not bm!385547) (not d!1722481) (not d!1722451) (not bm!385472) (not b!5384903) (not b!5384916) (not d!1722479) (not bm!385541) (not d!1722303) (not d!1722555) (not b!5384516) (not b!5384788) (not b!5385152) (not b!5385079) (not b!5385123) (not d!1722441) tp_is_empty!39491 (not b!5384800) (not b!5385243) (not b!5384973) (not b!5385018) (not b!5384654) (not d!1722519) (not b!5385021) (not b!5384984) (not b!5385085) (not b!5385219) (not b!5384663) (not bm!385537) (not bm!385522) (not b!5385249) (not b!5385014) (not b!5385227) (not b!5384797) (not b!5385045) (not b!5384653) (not d!1722609))
(check-sat)

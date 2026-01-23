; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566158 () Bool)

(assert start!566158)

(declare-fun b!5385983 () Bool)

(assert (=> b!5385983 true))

(assert (=> b!5385983 true))

(declare-fun lambda!279262 () Int)

(declare-fun lambda!279261 () Int)

(assert (=> b!5385983 (not (= lambda!279262 lambda!279261))))

(assert (=> b!5385983 true))

(assert (=> b!5385983 true))

(declare-fun b!5385980 () Bool)

(assert (=> b!5385980 true))

(declare-fun bs!1246524 () Bool)

(declare-fun b!5385942 () Bool)

(assert (= bs!1246524 (and b!5385942 b!5385983)))

(declare-datatypes ((C!30516 0))(
  ( (C!30517 (val!24960 Int)) )
))
(declare-datatypes ((Regex!15123 0))(
  ( (ElementMatch!15123 (c!938565 C!30516)) (Concat!23968 (regOne!30758 Regex!15123) (regTwo!30758 Regex!15123)) (EmptyExpr!15123) (Star!15123 (reg!15452 Regex!15123)) (EmptyLang!15123) (Union!15123 (regOne!30759 Regex!15123) (regTwo!30759 Regex!15123)) )
))
(declare-fun r!7292 () Regex!15123)

(declare-fun lt!2193837 () Regex!15123)

(declare-fun lambda!279264 () Int)

(assert (=> bs!1246524 (= (= lt!2193837 (regOne!30758 r!7292)) (= lambda!279264 lambda!279261))))

(assert (=> bs!1246524 (not (= lambda!279264 lambda!279262))))

(assert (=> b!5385942 true))

(assert (=> b!5385942 true))

(assert (=> b!5385942 true))

(declare-fun lambda!279265 () Int)

(assert (=> bs!1246524 (not (= lambda!279265 lambda!279261))))

(assert (=> bs!1246524 (= (= lt!2193837 (regOne!30758 r!7292)) (= lambda!279265 lambda!279262))))

(assert (=> b!5385942 (not (= lambda!279265 lambda!279264))))

(assert (=> b!5385942 true))

(assert (=> b!5385942 true))

(assert (=> b!5385942 true))

(declare-fun bs!1246525 () Bool)

(declare-fun b!5385946 () Bool)

(assert (= bs!1246525 (and b!5385946 b!5385983)))

(declare-datatypes ((List!61668 0))(
  ( (Nil!61544) (Cons!61544 (h!67992 C!30516) (t!374891 List!61668)) )
))
(declare-datatypes ((tuple2!64644 0))(
  ( (tuple2!64645 (_1!35625 List!61668) (_2!35625 List!61668)) )
))
(declare-fun lt!2193836 () tuple2!64644)

(declare-fun lambda!279266 () Int)

(declare-fun s!2326 () List!61668)

(assert (=> bs!1246525 (= (and (= (_1!35625 lt!2193836) s!2326) (= (reg!15452 (regOne!30758 r!7292)) (regOne!30758 r!7292)) (= lt!2193837 (regTwo!30758 r!7292))) (= lambda!279266 lambda!279261))))

(assert (=> bs!1246525 (not (= lambda!279266 lambda!279262))))

(declare-fun bs!1246526 () Bool)

(assert (= bs!1246526 (and b!5385946 b!5385942)))

(assert (=> bs!1246526 (= (and (= (_1!35625 lt!2193836) s!2326) (= (reg!15452 (regOne!30758 r!7292)) lt!2193837) (= lt!2193837 (regTwo!30758 r!7292))) (= lambda!279266 lambda!279264))))

(assert (=> bs!1246526 (not (= lambda!279266 lambda!279265))))

(assert (=> b!5385946 true))

(assert (=> b!5385946 true))

(assert (=> b!5385946 true))

(declare-fun lambda!279267 () Int)

(assert (=> bs!1246526 (not (= lambda!279267 lambda!279264))))

(assert (=> bs!1246526 (not (= lambda!279267 lambda!279265))))

(assert (=> b!5385946 (not (= lambda!279267 lambda!279266))))

(assert (=> bs!1246525 (not (= lambda!279267 lambda!279261))))

(assert (=> bs!1246525 (not (= lambda!279267 lambda!279262))))

(assert (=> b!5385946 true))

(assert (=> b!5385946 true))

(assert (=> b!5385946 true))

(declare-fun lambda!279268 () Int)

(assert (=> b!5385946 (not (= lambda!279268 lambda!279267))))

(assert (=> bs!1246526 (not (= lambda!279268 lambda!279264))))

(assert (=> bs!1246526 (= (and (= (_1!35625 lt!2193836) s!2326) (= (reg!15452 (regOne!30758 r!7292)) lt!2193837) (= lt!2193837 (regTwo!30758 r!7292))) (= lambda!279268 lambda!279265))))

(assert (=> b!5385946 (not (= lambda!279268 lambda!279266))))

(assert (=> bs!1246525 (not (= lambda!279268 lambda!279261))))

(assert (=> bs!1246525 (= (and (= (_1!35625 lt!2193836) s!2326) (= (reg!15452 (regOne!30758 r!7292)) (regOne!30758 r!7292)) (= lt!2193837 (regTwo!30758 r!7292))) (= lambda!279268 lambda!279262))))

(assert (=> b!5385946 true))

(assert (=> b!5385946 true))

(assert (=> b!5385946 true))

(declare-fun e!3340639 () Bool)

(declare-fun e!3340624 () Bool)

(assert (=> b!5385942 (= e!3340639 e!3340624)))

(declare-fun res!2287829 () Bool)

(assert (=> b!5385942 (=> res!2287829 e!3340624)))

(declare-fun ++!13431 (List!61668 List!61668) List!61668)

(assert (=> b!5385942 (= res!2287829 (not (= (++!13431 (_1!35625 lt!2193836) (_2!35625 lt!2193836)) s!2326)))))

(declare-datatypes ((Option!15234 0))(
  ( (None!15233) (Some!15233 (v!51262 tuple2!64644)) )
))
(declare-fun lt!2193815 () Option!15234)

(declare-fun get!21193 (Option!15234) tuple2!64644)

(assert (=> b!5385942 (= lt!2193836 (get!21193 lt!2193815))))

(declare-fun Exists!2304 (Int) Bool)

(assert (=> b!5385942 (= (Exists!2304 lambda!279264) (Exists!2304 lambda!279265))))

(declare-datatypes ((Unit!154010 0))(
  ( (Unit!154011) )
))
(declare-fun lt!2193855 () Unit!154010)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!958 (Regex!15123 Regex!15123 List!61668) Unit!154010)

(assert (=> b!5385942 (= lt!2193855 (lemmaExistCutMatchRandMatchRSpecEquivalent!958 lt!2193837 (regTwo!30758 r!7292) s!2326))))

(declare-fun isDefined!11937 (Option!15234) Bool)

(assert (=> b!5385942 (= (isDefined!11937 lt!2193815) (Exists!2304 lambda!279264))))

(declare-fun findConcatSeparation!1648 (Regex!15123 Regex!15123 List!61668 List!61668 List!61668) Option!15234)

(assert (=> b!5385942 (= lt!2193815 (findConcatSeparation!1648 lt!2193837 (regTwo!30758 r!7292) Nil!61544 s!2326 s!2326))))

(declare-fun lt!2193824 () Unit!154010)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1412 (Regex!15123 Regex!15123 List!61668) Unit!154010)

(assert (=> b!5385942 (= lt!2193824 (lemmaFindConcatSeparationEquivalentToExists!1412 lt!2193837 (regTwo!30758 r!7292) s!2326))))

(declare-fun b!5385943 () Bool)

(declare-fun e!3340629 () Bool)

(declare-fun e!3340631 () Bool)

(assert (=> b!5385943 (= e!3340629 e!3340631)))

(declare-fun res!2287838 () Bool)

(assert (=> b!5385943 (=> res!2287838 e!3340631)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61669 0))(
  ( (Nil!61545) (Cons!61545 (h!67993 Regex!15123) (t!374892 List!61669)) )
))
(declare-datatypes ((Context!9014 0))(
  ( (Context!9015 (exprs!5007 List!61669)) )
))
(declare-fun lt!2193834 () (InoxSet Context!9014))

(declare-fun lt!2193802 () (InoxSet Context!9014))

(assert (=> b!5385943 (= res!2287838 (not (= lt!2193834 lt!2193802)))))

(declare-fun lt!2193821 () Context!9014)

(declare-fun derivationStepZipperDown!571 (Regex!15123 Context!9014 C!30516) (InoxSet Context!9014))

(assert (=> b!5385943 (= lt!2193802 (derivationStepZipperDown!571 (reg!15452 (regOne!30758 r!7292)) lt!2193821 (h!67992 s!2326)))))

(declare-fun lt!2193848 () List!61669)

(assert (=> b!5385943 (= lt!2193821 (Context!9015 lt!2193848))))

(declare-datatypes ((List!61670 0))(
  ( (Nil!61546) (Cons!61546 (h!67994 Context!9014) (t!374893 List!61670)) )
))
(declare-fun zl!343 () List!61670)

(assert (=> b!5385943 (= lt!2193848 (Cons!61545 lt!2193837 (t!374892 (exprs!5007 (h!67994 zl!343)))))))

(assert (=> b!5385943 (= lt!2193837 (Star!15123 (reg!15452 (regOne!30758 r!7292))))))

(declare-fun b!5385944 () Bool)

(declare-fun res!2287850 () Bool)

(assert (=> b!5385944 (=> res!2287850 e!3340629)))

(declare-fun e!3340635 () Bool)

(assert (=> b!5385944 (= res!2287850 e!3340635)))

(declare-fun res!2287848 () Bool)

(assert (=> b!5385944 (=> (not res!2287848) (not e!3340635))))

(get-info :version)

(assert (=> b!5385944 (= res!2287848 ((_ is Concat!23968) (regOne!30758 r!7292)))))

(declare-fun b!5385945 () Bool)

(declare-fun e!3340626 () Bool)

(declare-fun lt!2193825 () Bool)

(declare-fun lt!2193840 () Bool)

(assert (=> b!5385945 (= e!3340626 (or (not lt!2193825) lt!2193840))))

(declare-fun e!3340643 () Bool)

(assert (=> b!5385946 (= e!3340624 e!3340643)))

(declare-fun res!2287847 () Bool)

(assert (=> b!5385946 (=> res!2287847 e!3340643)))

(declare-fun lt!2193814 () List!61668)

(assert (=> b!5385946 (= res!2287847 (not (= (_1!35625 lt!2193836) lt!2193814)))))

(declare-fun lt!2193827 () tuple2!64644)

(assert (=> b!5385946 (= lt!2193814 (++!13431 (_1!35625 lt!2193827) (_2!35625 lt!2193827)))))

(declare-fun lt!2193845 () Option!15234)

(assert (=> b!5385946 (= lt!2193827 (get!21193 lt!2193845))))

(assert (=> b!5385946 (= (Exists!2304 lambda!279266) (Exists!2304 lambda!279268))))

(declare-fun lt!2193820 () Unit!154010)

(assert (=> b!5385946 (= lt!2193820 (lemmaExistCutMatchRandMatchRSpecEquivalent!958 (reg!15452 (regOne!30758 r!7292)) lt!2193837 (_1!35625 lt!2193836)))))

(assert (=> b!5385946 (= (Exists!2304 lambda!279266) (Exists!2304 lambda!279267))))

(declare-fun lt!2193828 () Unit!154010)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!388 (Regex!15123 List!61668) Unit!154010)

(assert (=> b!5385946 (= lt!2193828 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!388 (reg!15452 (regOne!30758 r!7292)) (_1!35625 lt!2193836)))))

(assert (=> b!5385946 (= (isDefined!11937 lt!2193845) (Exists!2304 lambda!279266))))

(assert (=> b!5385946 (= lt!2193845 (findConcatSeparation!1648 (reg!15452 (regOne!30758 r!7292)) lt!2193837 Nil!61544 (_1!35625 lt!2193836) (_1!35625 lt!2193836)))))

(declare-fun lt!2193822 () Unit!154010)

(assert (=> b!5385946 (= lt!2193822 (lemmaFindConcatSeparationEquivalentToExists!1412 (reg!15452 (regOne!30758 r!7292)) lt!2193837 (_1!35625 lt!2193836)))))

(declare-fun matchRSpec!2226 (Regex!15123 List!61668) Bool)

(assert (=> b!5385946 (matchRSpec!2226 lt!2193837 (_1!35625 lt!2193836))))

(declare-fun lt!2193846 () Unit!154010)

(declare-fun mainMatchTheorem!2226 (Regex!15123 List!61668) Unit!154010)

(assert (=> b!5385946 (= lt!2193846 (mainMatchTheorem!2226 lt!2193837 (_1!35625 lt!2193836)))))

(declare-fun b!5385947 () Bool)

(declare-fun e!3340628 () Bool)

(declare-fun e!3340627 () Bool)

(assert (=> b!5385947 (= e!3340628 e!3340627)))

(declare-fun res!2287855 () Bool)

(assert (=> b!5385947 (=> (not res!2287855) (not e!3340627))))

(declare-fun lt!2193847 () Regex!15123)

(assert (=> b!5385947 (= res!2287855 (= r!7292 lt!2193847))))

(declare-fun unfocusZipper!865 (List!61670) Regex!15123)

(assert (=> b!5385947 (= lt!2193847 (unfocusZipper!865 zl!343))))

(declare-fun b!5385948 () Bool)

(declare-fun e!3340621 () Bool)

(declare-fun e!3340630 () Bool)

(assert (=> b!5385948 (= e!3340621 e!3340630)))

(declare-fun res!2287836 () Bool)

(assert (=> b!5385948 (=> res!2287836 e!3340630)))

(declare-fun lt!2193811 () List!61670)

(declare-fun lt!2193830 () Regex!15123)

(assert (=> b!5385948 (= res!2287836 (not (= (unfocusZipper!865 lt!2193811) lt!2193830)))))

(assert (=> b!5385948 (= lt!2193811 (Cons!61546 lt!2193821 Nil!61546))))

(declare-fun b!5385949 () Bool)

(declare-fun e!3340632 () Bool)

(declare-fun tp_is_empty!39499 () Bool)

(declare-fun tp!1492104 () Bool)

(assert (=> b!5385949 (= e!3340632 (and tp_is_empty!39499 tp!1492104))))

(declare-fun b!5385950 () Bool)

(declare-fun res!2287827 () Bool)

(declare-fun e!3340640 () Bool)

(assert (=> b!5385950 (=> res!2287827 e!3340640)))

(declare-fun generalisedUnion!1052 (List!61669) Regex!15123)

(declare-fun unfocusZipperList!565 (List!61670) List!61669)

(assert (=> b!5385950 (= res!2287827 (not (= r!7292 (generalisedUnion!1052 (unfocusZipperList!565 zl!343)))))))

(declare-fun b!5385951 () Bool)

(declare-fun res!2287846 () Bool)

(assert (=> b!5385951 (=> res!2287846 e!3340640)))

(declare-fun isEmpty!33540 (List!61670) Bool)

(assert (=> b!5385951 (= res!2287846 (not (isEmpty!33540 (t!374893 zl!343))))))

(declare-fun b!5385952 () Bool)

(declare-fun e!3340636 () Bool)

(declare-fun tp!1492103 () Bool)

(assert (=> b!5385952 (= e!3340636 tp!1492103)))

(declare-fun b!5385953 () Bool)

(declare-fun res!2287859 () Bool)

(declare-fun e!3340642 () Bool)

(assert (=> b!5385953 (=> res!2287859 e!3340642)))

(declare-fun matchR!7308 (Regex!15123 List!61668) Bool)

(assert (=> b!5385953 (= res!2287859 (not (matchR!7308 (reg!15452 (regOne!30758 r!7292)) (_1!35625 lt!2193827))))))

(declare-fun b!5385954 () Bool)

(declare-fun e!3340637 () Bool)

(assert (=> b!5385954 (= e!3340637 e!3340621)))

(declare-fun res!2287835 () Bool)

(assert (=> b!5385954 (=> res!2287835 e!3340621)))

(declare-fun lt!2193850 () List!61670)

(assert (=> b!5385954 (= res!2287835 (not (= (unfocusZipper!865 lt!2193850) (reg!15452 (regOne!30758 r!7292)))))))

(declare-fun lt!2193804 () Context!9014)

(assert (=> b!5385954 (= lt!2193850 (Cons!61546 lt!2193804 Nil!61546))))

(declare-fun lambda!279263 () Int)

(declare-fun lt!2193823 () (InoxSet Context!9014))

(declare-fun flatMap!850 ((InoxSet Context!9014) Int) (InoxSet Context!9014))

(declare-fun derivationStepZipperUp!495 (Context!9014 C!30516) (InoxSet Context!9014))

(assert (=> b!5385954 (= (flatMap!850 lt!2193823 lambda!279263) (derivationStepZipperUp!495 lt!2193821 (h!67992 s!2326)))))

(declare-fun lt!2193844 () Unit!154010)

(declare-fun lemmaFlatMapOnSingletonSet!382 ((InoxSet Context!9014) Context!9014 Int) Unit!154010)

(assert (=> b!5385954 (= lt!2193844 (lemmaFlatMapOnSingletonSet!382 lt!2193823 lt!2193821 lambda!279263))))

(declare-fun lt!2193841 () (InoxSet Context!9014))

(assert (=> b!5385954 (= (flatMap!850 lt!2193841 lambda!279263) (derivationStepZipperUp!495 lt!2193804 (h!67992 s!2326)))))

(declare-fun lt!2193856 () Unit!154010)

(assert (=> b!5385954 (= lt!2193856 (lemmaFlatMapOnSingletonSet!382 lt!2193841 lt!2193804 lambda!279263))))

(declare-fun lt!2193803 () (InoxSet Context!9014))

(assert (=> b!5385954 (= lt!2193803 (derivationStepZipperUp!495 lt!2193821 (h!67992 s!2326)))))

(declare-fun lt!2193835 () (InoxSet Context!9014))

(assert (=> b!5385954 (= lt!2193835 (derivationStepZipperUp!495 lt!2193804 (h!67992 s!2326)))))

(assert (=> b!5385954 (= lt!2193823 (store ((as const (Array Context!9014 Bool)) false) lt!2193821 true))))

(assert (=> b!5385954 (= lt!2193841 (store ((as const (Array Context!9014 Bool)) false) lt!2193804 true))))

(declare-fun lt!2193857 () List!61669)

(assert (=> b!5385954 (= lt!2193804 (Context!9015 lt!2193857))))

(assert (=> b!5385954 (= lt!2193857 (Cons!61545 (reg!15452 (regOne!30758 r!7292)) Nil!61545))))

(declare-fun b!5385955 () Bool)

(declare-fun res!2287832 () Bool)

(assert (=> b!5385955 (=> res!2287832 e!3340629)))

(assert (=> b!5385955 (= res!2287832 (or ((_ is Concat!23968) (regOne!30758 r!7292)) (not ((_ is Star!15123) (regOne!30758 r!7292)))))))

(declare-fun b!5385956 () Bool)

(declare-fun e!3340633 () Unit!154010)

(declare-fun Unit!154012 () Unit!154010)

(assert (=> b!5385956 (= e!3340633 Unit!154012)))

(declare-fun b!5385957 () Bool)

(assert (=> b!5385957 (= e!3340636 tp_is_empty!39499)))

(declare-fun b!5385958 () Bool)

(declare-fun e!3340623 () Bool)

(declare-fun tp!1492105 () Bool)

(assert (=> b!5385958 (= e!3340623 tp!1492105)))

(declare-fun b!5385959 () Bool)

(declare-fun res!2287844 () Bool)

(declare-fun e!3340634 () Bool)

(assert (=> b!5385959 (=> res!2287844 e!3340634)))

(assert (=> b!5385959 (= res!2287844 (not (= lt!2193847 r!7292)))))

(declare-fun b!5385960 () Bool)

(declare-fun Unit!154013 () Unit!154010)

(assert (=> b!5385960 (= e!3340633 Unit!154013)))

(declare-fun lt!2193819 () (InoxSet Context!9014))

(declare-fun lt!2193816 () Unit!154010)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!360 ((InoxSet Context!9014) (InoxSet Context!9014) List!61668) Unit!154010)

(assert (=> b!5385960 (= lt!2193816 (lemmaZipperConcatMatchesSameAsBothZippers!360 lt!2193834 lt!2193819 (t!374891 s!2326)))))

(declare-fun res!2287843 () Bool)

(declare-fun matchZipper!1367 ((InoxSet Context!9014) List!61668) Bool)

(assert (=> b!5385960 (= res!2287843 (matchZipper!1367 lt!2193834 (t!374891 s!2326)))))

(declare-fun e!3340641 () Bool)

(assert (=> b!5385960 (=> res!2287843 e!3340641)))

(assert (=> b!5385960 (= (matchZipper!1367 ((_ map or) lt!2193834 lt!2193819) (t!374891 s!2326)) e!3340641)))

(declare-fun b!5385961 () Bool)

(assert (=> b!5385961 (= e!3340627 (not e!3340640))))

(declare-fun res!2287854 () Bool)

(assert (=> b!5385961 (=> res!2287854 e!3340640)))

(assert (=> b!5385961 (= res!2287854 (not ((_ is Cons!61546) zl!343)))))

(assert (=> b!5385961 (= lt!2193825 lt!2193840)))

(assert (=> b!5385961 (= lt!2193840 (matchRSpec!2226 r!7292 s!2326))))

(assert (=> b!5385961 (= lt!2193825 (matchR!7308 r!7292 s!2326))))

(declare-fun lt!2193852 () Unit!154010)

(assert (=> b!5385961 (= lt!2193852 (mainMatchTheorem!2226 r!7292 s!2326))))

(declare-fun b!5385962 () Bool)

(assert (=> b!5385962 (= e!3340642 true)))

(declare-fun lt!2193853 () List!61668)

(declare-fun ++!13432 (List!61669 List!61669) List!61669)

(assert (=> b!5385962 (matchZipper!1367 (store ((as const (Array Context!9014 Bool)) false) (Context!9015 (++!13432 lt!2193857 lt!2193848)) true) lt!2193853)))

(declare-fun lambda!279269 () Int)

(declare-fun lt!2193805 () Unit!154010)

(declare-fun lemmaConcatPreservesForall!154 (List!61669 List!61669 Int) Unit!154010)

(assert (=> b!5385962 (= lt!2193805 (lemmaConcatPreservesForall!154 lt!2193857 lt!2193848 lambda!279269))))

(declare-fun lt!2193831 () Unit!154010)

(declare-fun lt!2193849 () List!61668)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!10 (Context!9014 Context!9014 List!61668 List!61668) Unit!154010)

(assert (=> b!5385962 (= lt!2193831 (lemmaConcatenateContextMatchesConcatOfStrings!10 lt!2193804 lt!2193821 (_1!35625 lt!2193827) lt!2193849))))

(assert (=> b!5385962 (matchZipper!1367 lt!2193823 lt!2193849)))

(declare-fun lt!2193838 () Unit!154010)

(declare-fun theoremZipperRegexEquiv!453 ((InoxSet Context!9014) List!61670 Regex!15123 List!61668) Unit!154010)

(assert (=> b!5385962 (= lt!2193838 (theoremZipperRegexEquiv!453 lt!2193823 lt!2193811 lt!2193830 lt!2193849))))

(assert (=> b!5385962 (matchZipper!1367 lt!2193841 (_1!35625 lt!2193827))))

(declare-fun lt!2193808 () Unit!154010)

(assert (=> b!5385962 (= lt!2193808 (theoremZipperRegexEquiv!453 lt!2193841 lt!2193850 (reg!15452 (regOne!30758 r!7292)) (_1!35625 lt!2193827)))))

(assert (=> b!5385962 (matchR!7308 lt!2193830 lt!2193849)))

(declare-fun lt!2193807 () Unit!154010)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!170 (Regex!15123 Regex!15123 List!61668 List!61668) Unit!154010)

(assert (=> b!5385962 (= lt!2193807 (lemmaTwoRegexMatchThenConcatMatchesConcatString!170 lt!2193837 (regTwo!30758 r!7292) (_2!35625 lt!2193827) (_2!35625 lt!2193836)))))

(assert (=> b!5385962 (matchR!7308 lt!2193837 lt!2193814)))

(declare-fun lt!2193829 () Unit!154010)

(declare-fun lemmaStarApp!44 (Regex!15123 List!61668 List!61668) Unit!154010)

(assert (=> b!5385962 (= lt!2193829 (lemmaStarApp!44 (reg!15452 (regOne!30758 r!7292)) (_1!35625 lt!2193827) (_2!35625 lt!2193827)))))

(declare-fun b!5385963 () Bool)

(assert (=> b!5385963 (= e!3340630 e!3340639)))

(declare-fun res!2287834 () Bool)

(assert (=> b!5385963 (=> res!2287834 e!3340639)))

(assert (=> b!5385963 (= res!2287834 (not lt!2193825))))

(assert (=> b!5385963 e!3340626))

(declare-fun res!2287828 () Bool)

(assert (=> b!5385963 (=> (not res!2287828) (not e!3340626))))

(declare-fun lt!2193854 () Regex!15123)

(assert (=> b!5385963 (= res!2287828 (= (matchR!7308 lt!2193854 s!2326) (matchRSpec!2226 lt!2193854 s!2326)))))

(declare-fun lt!2193813 () Unit!154010)

(assert (=> b!5385963 (= lt!2193813 (mainMatchTheorem!2226 lt!2193854 s!2326))))

(declare-fun b!5385964 () Bool)

(declare-fun tp!1492102 () Bool)

(declare-fun tp!1492096 () Bool)

(assert (=> b!5385964 (= e!3340636 (and tp!1492102 tp!1492096))))

(declare-fun b!5385965 () Bool)

(declare-fun tp!1492100 () Bool)

(declare-fun tp!1492097 () Bool)

(assert (=> b!5385965 (= e!3340636 (and tp!1492100 tp!1492097))))

(declare-fun res!2287840 () Bool)

(assert (=> start!566158 (=> (not res!2287840) (not e!3340628))))

(declare-fun validRegex!6859 (Regex!15123) Bool)

(assert (=> start!566158 (= res!2287840 (validRegex!6859 r!7292))))

(assert (=> start!566158 e!3340628))

(assert (=> start!566158 e!3340636))

(declare-fun condSetEmpty!34967 () Bool)

(declare-fun z!1189 () (InoxSet Context!9014))

(assert (=> start!566158 (= condSetEmpty!34967 (= z!1189 ((as const (Array Context!9014 Bool)) false)))))

(declare-fun setRes!34967 () Bool)

(assert (=> start!566158 setRes!34967))

(declare-fun e!3340625 () Bool)

(assert (=> start!566158 e!3340625))

(assert (=> start!566158 e!3340632))

(declare-fun b!5385966 () Bool)

(assert (=> b!5385966 (= e!3340643 e!3340642)))

(declare-fun res!2287851 () Bool)

(assert (=> b!5385966 (=> res!2287851 e!3340642)))

(declare-fun lt!2193839 () List!61668)

(assert (=> b!5385966 (= res!2287851 (not (= lt!2193839 s!2326)))))

(assert (=> b!5385966 (= lt!2193839 lt!2193853)))

(assert (=> b!5385966 (= lt!2193853 (++!13431 (_1!35625 lt!2193827) lt!2193849))))

(assert (=> b!5385966 (= lt!2193839 (++!13431 lt!2193814 (_2!35625 lt!2193836)))))

(assert (=> b!5385966 (= lt!2193849 (++!13431 (_2!35625 lt!2193827) (_2!35625 lt!2193836)))))

(declare-fun lt!2193858 () Unit!154010)

(declare-fun lemmaConcatAssociativity!2820 (List!61668 List!61668 List!61668) Unit!154010)

(assert (=> b!5385966 (= lt!2193858 (lemmaConcatAssociativity!2820 (_1!35625 lt!2193827) (_2!35625 lt!2193827) (_2!35625 lt!2193836)))))

(declare-fun b!5385967 () Bool)

(declare-fun res!2287849 () Bool)

(assert (=> b!5385967 (=> res!2287849 e!3340634)))

(declare-fun lt!2193842 () (InoxSet Context!9014))

(declare-fun lt!2193812 () (InoxSet Context!9014))

(assert (=> b!5385967 (= res!2287849 (not (= (matchZipper!1367 lt!2193812 s!2326) (matchZipper!1367 lt!2193842 (t!374891 s!2326)))))))

(declare-fun b!5385968 () Bool)

(declare-fun nullable!5292 (Regex!15123) Bool)

(assert (=> b!5385968 (= e!3340635 (nullable!5292 (regOne!30758 (regOne!30758 r!7292))))))

(declare-fun e!3340644 () Bool)

(declare-fun setElem!34967 () Context!9014)

(declare-fun setNonEmpty!34967 () Bool)

(declare-fun tp!1492098 () Bool)

(declare-fun inv!81054 (Context!9014) Bool)

(assert (=> setNonEmpty!34967 (= setRes!34967 (and tp!1492098 (inv!81054 setElem!34967) e!3340644))))

(declare-fun setRest!34967 () (InoxSet Context!9014))

(assert (=> setNonEmpty!34967 (= z!1189 ((_ map or) (store ((as const (Array Context!9014 Bool)) false) setElem!34967 true) setRest!34967))))

(declare-fun b!5385969 () Bool)

(declare-fun e!3340622 () Bool)

(assert (=> b!5385969 (= e!3340622 e!3340637)))

(declare-fun res!2287852 () Bool)

(assert (=> b!5385969 (=> res!2287852 e!3340637)))

(declare-fun lt!2193832 () Context!9014)

(assert (=> b!5385969 (= res!2287852 (not (= (unfocusZipper!865 (Cons!61546 lt!2193832 Nil!61546)) lt!2193854)))))

(assert (=> b!5385969 (= lt!2193854 (Concat!23968 (reg!15452 (regOne!30758 r!7292)) lt!2193830))))

(declare-fun b!5385970 () Bool)

(declare-fun res!2287842 () Bool)

(assert (=> b!5385970 (=> res!2287842 e!3340624)))

(declare-fun isEmpty!33541 (List!61668) Bool)

(assert (=> b!5385970 (= res!2287842 (isEmpty!33541 (_1!35625 lt!2193836)))))

(declare-fun b!5385971 () Bool)

(declare-fun tp!1492101 () Bool)

(assert (=> b!5385971 (= e!3340625 (and (inv!81054 (h!67994 zl!343)) e!3340623 tp!1492101))))

(declare-fun setIsEmpty!34967 () Bool)

(assert (=> setIsEmpty!34967 setRes!34967))

(declare-fun b!5385972 () Bool)

(assert (=> b!5385972 (= e!3340634 e!3340622)))

(declare-fun res!2287845 () Bool)

(assert (=> b!5385972 (=> res!2287845 e!3340622)))

(assert (=> b!5385972 (= res!2287845 (not (= r!7292 lt!2193830)))))

(assert (=> b!5385972 (= lt!2193830 (Concat!23968 lt!2193837 (regTwo!30758 r!7292)))))

(declare-fun b!5385973 () Bool)

(declare-fun res!2287857 () Bool)

(assert (=> b!5385973 (=> (not res!2287857) (not e!3340628))))

(declare-fun toList!8907 ((InoxSet Context!9014)) List!61670)

(assert (=> b!5385973 (= res!2287857 (= (toList!8907 z!1189) zl!343))))

(declare-fun b!5385974 () Bool)

(declare-fun res!2287837 () Bool)

(assert (=> b!5385974 (=> res!2287837 e!3340624)))

(assert (=> b!5385974 (= res!2287837 (not (matchR!7308 (regTwo!30758 r!7292) (_2!35625 lt!2193836))))))

(declare-fun b!5385975 () Bool)

(declare-fun res!2287830 () Bool)

(assert (=> b!5385975 (=> res!2287830 e!3340640)))

(assert (=> b!5385975 (= res!2287830 (or ((_ is EmptyExpr!15123) r!7292) ((_ is EmptyLang!15123) r!7292) ((_ is ElementMatch!15123) r!7292) ((_ is Union!15123) r!7292) (not ((_ is Concat!23968) r!7292))))))

(declare-fun b!5385976 () Bool)

(assert (=> b!5385976 (= e!3340631 e!3340634)))

(declare-fun res!2287856 () Bool)

(assert (=> b!5385976 (=> res!2287856 e!3340634)))

(assert (=> b!5385976 (= res!2287856 (not (= lt!2193842 lt!2193802)))))

(assert (=> b!5385976 (= (flatMap!850 lt!2193812 lambda!279263) (derivationStepZipperUp!495 lt!2193832 (h!67992 s!2326)))))

(declare-fun lt!2193833 () Unit!154010)

(assert (=> b!5385976 (= lt!2193833 (lemmaFlatMapOnSingletonSet!382 lt!2193812 lt!2193832 lambda!279263))))

(declare-fun lt!2193851 () (InoxSet Context!9014))

(assert (=> b!5385976 (= lt!2193851 (derivationStepZipperUp!495 lt!2193832 (h!67992 s!2326)))))

(declare-fun derivationStepZipper!1362 ((InoxSet Context!9014) C!30516) (InoxSet Context!9014))

(assert (=> b!5385976 (= lt!2193842 (derivationStepZipper!1362 lt!2193812 (h!67992 s!2326)))))

(assert (=> b!5385976 (= lt!2193812 (store ((as const (Array Context!9014 Bool)) false) lt!2193832 true))))

(assert (=> b!5385976 (= lt!2193832 (Context!9015 (Cons!61545 (reg!15452 (regOne!30758 r!7292)) lt!2193848)))))

(declare-fun b!5385977 () Bool)

(declare-fun res!2287826 () Bool)

(assert (=> b!5385977 (=> res!2287826 e!3340640)))

(assert (=> b!5385977 (= res!2287826 (not ((_ is Cons!61545) (exprs!5007 (h!67994 zl!343)))))))

(declare-fun b!5385978 () Bool)

(declare-fun res!2287833 () Bool)

(assert (=> b!5385978 (=> res!2287833 e!3340624)))

(assert (=> b!5385978 (= res!2287833 (not (matchR!7308 lt!2193837 (_1!35625 lt!2193836))))))

(declare-fun b!5385979 () Bool)

(declare-fun res!2287831 () Bool)

(declare-fun e!3340638 () Bool)

(assert (=> b!5385979 (=> res!2287831 e!3340638)))

(declare-fun isEmpty!33542 (List!61669) Bool)

(assert (=> b!5385979 (= res!2287831 (isEmpty!33542 (t!374892 (exprs!5007 (h!67994 zl!343)))))))

(assert (=> b!5385980 (= e!3340638 e!3340629)))

(declare-fun res!2287839 () Bool)

(assert (=> b!5385980 (=> res!2287839 e!3340629)))

(assert (=> b!5385980 (= res!2287839 (or (and ((_ is ElementMatch!15123) (regOne!30758 r!7292)) (= (c!938565 (regOne!30758 r!7292)) (h!67992 s!2326))) ((_ is Union!15123) (regOne!30758 r!7292))))))

(declare-fun lt!2193809 () Unit!154010)

(assert (=> b!5385980 (= lt!2193809 e!3340633)))

(declare-fun c!938564 () Bool)

(assert (=> b!5385980 (= c!938564 (nullable!5292 (h!67993 (exprs!5007 (h!67994 zl!343)))))))

(assert (=> b!5385980 (= (flatMap!850 z!1189 lambda!279263) (derivationStepZipperUp!495 (h!67994 zl!343) (h!67992 s!2326)))))

(declare-fun lt!2193817 () Unit!154010)

(assert (=> b!5385980 (= lt!2193817 (lemmaFlatMapOnSingletonSet!382 z!1189 (h!67994 zl!343) lambda!279263))))

(declare-fun lt!2193810 () Context!9014)

(assert (=> b!5385980 (= lt!2193819 (derivationStepZipperUp!495 lt!2193810 (h!67992 s!2326)))))

(assert (=> b!5385980 (= lt!2193834 (derivationStepZipperDown!571 (h!67993 (exprs!5007 (h!67994 zl!343))) lt!2193810 (h!67992 s!2326)))))

(assert (=> b!5385980 (= lt!2193810 (Context!9015 (t!374892 (exprs!5007 (h!67994 zl!343)))))))

(declare-fun lt!2193806 () (InoxSet Context!9014))

(assert (=> b!5385980 (= lt!2193806 (derivationStepZipperUp!495 (Context!9015 (Cons!61545 (h!67993 (exprs!5007 (h!67994 zl!343))) (t!374892 (exprs!5007 (h!67994 zl!343))))) (h!67992 s!2326)))))

(declare-fun b!5385981 () Bool)

(declare-fun tp!1492099 () Bool)

(assert (=> b!5385981 (= e!3340644 tp!1492099)))

(declare-fun b!5385982 () Bool)

(declare-fun res!2287841 () Bool)

(assert (=> b!5385982 (=> res!2287841 e!3340642)))

(assert (=> b!5385982 (= res!2287841 (not (matchR!7308 lt!2193837 (_2!35625 lt!2193827))))))

(assert (=> b!5385983 (= e!3340640 e!3340638)))

(declare-fun res!2287853 () Bool)

(assert (=> b!5385983 (=> res!2287853 e!3340638)))

(declare-fun lt!2193843 () Bool)

(assert (=> b!5385983 (= res!2287853 (or (not (= lt!2193825 lt!2193843)) ((_ is Nil!61544) s!2326)))))

(assert (=> b!5385983 (= (Exists!2304 lambda!279261) (Exists!2304 lambda!279262))))

(declare-fun lt!2193818 () Unit!154010)

(assert (=> b!5385983 (= lt!2193818 (lemmaExistCutMatchRandMatchRSpecEquivalent!958 (regOne!30758 r!7292) (regTwo!30758 r!7292) s!2326))))

(assert (=> b!5385983 (= lt!2193843 (Exists!2304 lambda!279261))))

(assert (=> b!5385983 (= lt!2193843 (isDefined!11937 (findConcatSeparation!1648 (regOne!30758 r!7292) (regTwo!30758 r!7292) Nil!61544 s!2326 s!2326)))))

(declare-fun lt!2193826 () Unit!154010)

(assert (=> b!5385983 (= lt!2193826 (lemmaFindConcatSeparationEquivalentToExists!1412 (regOne!30758 r!7292) (regTwo!30758 r!7292) s!2326))))

(declare-fun b!5385984 () Bool)

(assert (=> b!5385984 (= e!3340641 (matchZipper!1367 lt!2193819 (t!374891 s!2326)))))

(declare-fun b!5385985 () Bool)

(declare-fun res!2287858 () Bool)

(assert (=> b!5385985 (=> res!2287858 e!3340640)))

(declare-fun generalisedConcat!792 (List!61669) Regex!15123)

(assert (=> b!5385985 (= res!2287858 (not (= r!7292 (generalisedConcat!792 (exprs!5007 (h!67994 zl!343))))))))

(assert (= (and start!566158 res!2287840) b!5385973))

(assert (= (and b!5385973 res!2287857) b!5385947))

(assert (= (and b!5385947 res!2287855) b!5385961))

(assert (= (and b!5385961 (not res!2287854)) b!5385951))

(assert (= (and b!5385951 (not res!2287846)) b!5385985))

(assert (= (and b!5385985 (not res!2287858)) b!5385977))

(assert (= (and b!5385977 (not res!2287826)) b!5385950))

(assert (= (and b!5385950 (not res!2287827)) b!5385975))

(assert (= (and b!5385975 (not res!2287830)) b!5385983))

(assert (= (and b!5385983 (not res!2287853)) b!5385979))

(assert (= (and b!5385979 (not res!2287831)) b!5385980))

(assert (= (and b!5385980 c!938564) b!5385960))

(assert (= (and b!5385980 (not c!938564)) b!5385956))

(assert (= (and b!5385960 (not res!2287843)) b!5385984))

(assert (= (and b!5385980 (not res!2287839)) b!5385944))

(assert (= (and b!5385944 res!2287848) b!5385968))

(assert (= (and b!5385944 (not res!2287850)) b!5385955))

(assert (= (and b!5385955 (not res!2287832)) b!5385943))

(assert (= (and b!5385943 (not res!2287838)) b!5385976))

(assert (= (and b!5385976 (not res!2287856)) b!5385967))

(assert (= (and b!5385967 (not res!2287849)) b!5385959))

(assert (= (and b!5385959 (not res!2287844)) b!5385972))

(assert (= (and b!5385972 (not res!2287845)) b!5385969))

(assert (= (and b!5385969 (not res!2287852)) b!5385954))

(assert (= (and b!5385954 (not res!2287835)) b!5385948))

(assert (= (and b!5385948 (not res!2287836)) b!5385963))

(assert (= (and b!5385963 res!2287828) b!5385945))

(assert (= (and b!5385963 (not res!2287834)) b!5385942))

(assert (= (and b!5385942 (not res!2287829)) b!5385978))

(assert (= (and b!5385978 (not res!2287833)) b!5385974))

(assert (= (and b!5385974 (not res!2287837)) b!5385970))

(assert (= (and b!5385970 (not res!2287842)) b!5385946))

(assert (= (and b!5385946 (not res!2287847)) b!5385966))

(assert (= (and b!5385966 (not res!2287851)) b!5385953))

(assert (= (and b!5385953 (not res!2287859)) b!5385982))

(assert (= (and b!5385982 (not res!2287841)) b!5385962))

(assert (= (and start!566158 ((_ is ElementMatch!15123) r!7292)) b!5385957))

(assert (= (and start!566158 ((_ is Concat!23968) r!7292)) b!5385964))

(assert (= (and start!566158 ((_ is Star!15123) r!7292)) b!5385952))

(assert (= (and start!566158 ((_ is Union!15123) r!7292)) b!5385965))

(assert (= (and start!566158 condSetEmpty!34967) setIsEmpty!34967))

(assert (= (and start!566158 (not condSetEmpty!34967)) setNonEmpty!34967))

(assert (= setNonEmpty!34967 b!5385981))

(assert (= b!5385971 b!5385958))

(assert (= (and start!566158 ((_ is Cons!61546) zl!343)) b!5385971))

(assert (= (and start!566158 ((_ is Cons!61544) s!2326)) b!5385949))

(declare-fun m!6411694 () Bool)

(assert (=> b!5385960 m!6411694))

(declare-fun m!6411696 () Bool)

(assert (=> b!5385960 m!6411696))

(declare-fun m!6411698 () Bool)

(assert (=> b!5385960 m!6411698))

(declare-fun m!6411700 () Bool)

(assert (=> b!5385985 m!6411700))

(declare-fun m!6411702 () Bool)

(assert (=> b!5385943 m!6411702))

(declare-fun m!6411704 () Bool)

(assert (=> b!5385973 m!6411704))

(declare-fun m!6411706 () Bool)

(assert (=> b!5385969 m!6411706))

(declare-fun m!6411708 () Bool)

(assert (=> b!5385979 m!6411708))

(declare-fun m!6411710 () Bool)

(assert (=> b!5385974 m!6411710))

(declare-fun m!6411712 () Bool)

(assert (=> b!5385951 m!6411712))

(declare-fun m!6411714 () Bool)

(assert (=> setNonEmpty!34967 m!6411714))

(declare-fun m!6411716 () Bool)

(assert (=> b!5385953 m!6411716))

(declare-fun m!6411718 () Bool)

(assert (=> b!5385950 m!6411718))

(assert (=> b!5385950 m!6411718))

(declare-fun m!6411720 () Bool)

(assert (=> b!5385950 m!6411720))

(declare-fun m!6411722 () Bool)

(assert (=> b!5385980 m!6411722))

(declare-fun m!6411724 () Bool)

(assert (=> b!5385980 m!6411724))

(declare-fun m!6411726 () Bool)

(assert (=> b!5385980 m!6411726))

(declare-fun m!6411728 () Bool)

(assert (=> b!5385980 m!6411728))

(declare-fun m!6411730 () Bool)

(assert (=> b!5385980 m!6411730))

(declare-fun m!6411732 () Bool)

(assert (=> b!5385980 m!6411732))

(declare-fun m!6411734 () Bool)

(assert (=> b!5385980 m!6411734))

(declare-fun m!6411736 () Bool)

(assert (=> b!5385962 m!6411736))

(declare-fun m!6411738 () Bool)

(assert (=> b!5385962 m!6411738))

(declare-fun m!6411740 () Bool)

(assert (=> b!5385962 m!6411740))

(declare-fun m!6411742 () Bool)

(assert (=> b!5385962 m!6411742))

(declare-fun m!6411744 () Bool)

(assert (=> b!5385962 m!6411744))

(declare-fun m!6411746 () Bool)

(assert (=> b!5385962 m!6411746))

(declare-fun m!6411748 () Bool)

(assert (=> b!5385962 m!6411748))

(assert (=> b!5385962 m!6411736))

(declare-fun m!6411750 () Bool)

(assert (=> b!5385962 m!6411750))

(declare-fun m!6411752 () Bool)

(assert (=> b!5385962 m!6411752))

(declare-fun m!6411754 () Bool)

(assert (=> b!5385962 m!6411754))

(declare-fun m!6411756 () Bool)

(assert (=> b!5385962 m!6411756))

(declare-fun m!6411758 () Bool)

(assert (=> b!5385962 m!6411758))

(declare-fun m!6411760 () Bool)

(assert (=> b!5385962 m!6411760))

(declare-fun m!6411762 () Bool)

(assert (=> b!5385942 m!6411762))

(declare-fun m!6411764 () Bool)

(assert (=> b!5385942 m!6411764))

(declare-fun m!6411766 () Bool)

(assert (=> b!5385942 m!6411766))

(declare-fun m!6411768 () Bool)

(assert (=> b!5385942 m!6411768))

(declare-fun m!6411770 () Bool)

(assert (=> b!5385942 m!6411770))

(declare-fun m!6411772 () Bool)

(assert (=> b!5385942 m!6411772))

(declare-fun m!6411774 () Bool)

(assert (=> b!5385942 m!6411774))

(assert (=> b!5385942 m!6411770))

(declare-fun m!6411776 () Bool)

(assert (=> b!5385942 m!6411776))

(declare-fun m!6411778 () Bool)

(assert (=> b!5385970 m!6411778))

(declare-fun m!6411780 () Bool)

(assert (=> b!5385954 m!6411780))

(declare-fun m!6411782 () Bool)

(assert (=> b!5385954 m!6411782))

(declare-fun m!6411784 () Bool)

(assert (=> b!5385954 m!6411784))

(declare-fun m!6411786 () Bool)

(assert (=> b!5385954 m!6411786))

(declare-fun m!6411788 () Bool)

(assert (=> b!5385954 m!6411788))

(declare-fun m!6411790 () Bool)

(assert (=> b!5385954 m!6411790))

(declare-fun m!6411792 () Bool)

(assert (=> b!5385954 m!6411792))

(declare-fun m!6411794 () Bool)

(assert (=> b!5385954 m!6411794))

(declare-fun m!6411796 () Bool)

(assert (=> b!5385954 m!6411796))

(declare-fun m!6411798 () Bool)

(assert (=> b!5385966 m!6411798))

(declare-fun m!6411800 () Bool)

(assert (=> b!5385966 m!6411800))

(declare-fun m!6411802 () Bool)

(assert (=> b!5385966 m!6411802))

(declare-fun m!6411804 () Bool)

(assert (=> b!5385966 m!6411804))

(declare-fun m!6411806 () Bool)

(assert (=> b!5385983 m!6411806))

(declare-fun m!6411808 () Bool)

(assert (=> b!5385983 m!6411808))

(declare-fun m!6411810 () Bool)

(assert (=> b!5385983 m!6411810))

(declare-fun m!6411812 () Bool)

(assert (=> b!5385983 m!6411812))

(declare-fun m!6411814 () Bool)

(assert (=> b!5385983 m!6411814))

(assert (=> b!5385983 m!6411810))

(assert (=> b!5385983 m!6411806))

(declare-fun m!6411816 () Bool)

(assert (=> b!5385983 m!6411816))

(declare-fun m!6411818 () Bool)

(assert (=> b!5385976 m!6411818))

(declare-fun m!6411820 () Bool)

(assert (=> b!5385976 m!6411820))

(declare-fun m!6411822 () Bool)

(assert (=> b!5385976 m!6411822))

(declare-fun m!6411824 () Bool)

(assert (=> b!5385976 m!6411824))

(declare-fun m!6411826 () Bool)

(assert (=> b!5385976 m!6411826))

(declare-fun m!6411828 () Bool)

(assert (=> b!5385967 m!6411828))

(declare-fun m!6411830 () Bool)

(assert (=> b!5385967 m!6411830))

(declare-fun m!6411832 () Bool)

(assert (=> b!5385948 m!6411832))

(declare-fun m!6411834 () Bool)

(assert (=> b!5385946 m!6411834))

(declare-fun m!6411836 () Bool)

(assert (=> b!5385946 m!6411836))

(declare-fun m!6411838 () Bool)

(assert (=> b!5385946 m!6411838))

(declare-fun m!6411840 () Bool)

(assert (=> b!5385946 m!6411840))

(declare-fun m!6411842 () Bool)

(assert (=> b!5385946 m!6411842))

(declare-fun m!6411844 () Bool)

(assert (=> b!5385946 m!6411844))

(declare-fun m!6411846 () Bool)

(assert (=> b!5385946 m!6411846))

(declare-fun m!6411848 () Bool)

(assert (=> b!5385946 m!6411848))

(assert (=> b!5385946 m!6411844))

(declare-fun m!6411850 () Bool)

(assert (=> b!5385946 m!6411850))

(assert (=> b!5385946 m!6411844))

(declare-fun m!6411852 () Bool)

(assert (=> b!5385946 m!6411852))

(declare-fun m!6411854 () Bool)

(assert (=> b!5385946 m!6411854))

(declare-fun m!6411856 () Bool)

(assert (=> b!5385946 m!6411856))

(declare-fun m!6411858 () Bool)

(assert (=> b!5385961 m!6411858))

(declare-fun m!6411860 () Bool)

(assert (=> b!5385961 m!6411860))

(declare-fun m!6411862 () Bool)

(assert (=> b!5385961 m!6411862))

(declare-fun m!6411864 () Bool)

(assert (=> b!5385947 m!6411864))

(declare-fun m!6411866 () Bool)

(assert (=> b!5385982 m!6411866))

(declare-fun m!6411868 () Bool)

(assert (=> b!5385963 m!6411868))

(declare-fun m!6411870 () Bool)

(assert (=> b!5385963 m!6411870))

(declare-fun m!6411872 () Bool)

(assert (=> b!5385963 m!6411872))

(declare-fun m!6411874 () Bool)

(assert (=> b!5385971 m!6411874))

(declare-fun m!6411876 () Bool)

(assert (=> b!5385968 m!6411876))

(declare-fun m!6411878 () Bool)

(assert (=> b!5385984 m!6411878))

(declare-fun m!6411880 () Bool)

(assert (=> start!566158 m!6411880))

(declare-fun m!6411882 () Bool)

(assert (=> b!5385978 m!6411882))

(check-sat (not b!5385974) (not b!5385978) (not b!5385965) (not b!5385962) (not setNonEmpty!34967) (not b!5385953) (not b!5385967) (not b!5385973) (not b!5385946) (not b!5385952) (not b!5385969) (not b!5385954) (not b!5385971) (not b!5385968) (not b!5385960) (not b!5385970) (not b!5385964) (not b!5385981) (not b!5385958) (not b!5385976) (not b!5385983) (not b!5385950) (not b!5385943) (not b!5385942) (not b!5385979) (not b!5385949) (not b!5385980) (not b!5385984) (not b!5385982) (not start!566158) (not b!5385951) (not b!5385985) (not b!5385961) tp_is_empty!39499 (not b!5385966) (not b!5385963) (not b!5385947) (not b!5385948))
(check-sat)

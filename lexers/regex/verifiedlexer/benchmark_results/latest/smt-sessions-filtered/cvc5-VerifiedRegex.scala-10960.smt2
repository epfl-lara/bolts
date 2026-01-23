; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!567316 () Bool)

(assert start!567316)

(declare-fun b!5400867 () Bool)

(assert (=> b!5400867 true))

(assert (=> b!5400867 true))

(declare-fun lambda!281205 () Int)

(declare-fun lambda!281204 () Int)

(assert (=> b!5400867 (not (= lambda!281205 lambda!281204))))

(assert (=> b!5400867 true))

(assert (=> b!5400867 true))

(declare-fun b!5400869 () Bool)

(assert (=> b!5400869 true))

(declare-fun b!5400892 () Bool)

(assert (=> b!5400892 true))

(declare-fun b!5400848 () Bool)

(declare-fun res!2295949 () Bool)

(declare-fun e!3348697 () Bool)

(assert (=> b!5400848 (=> res!2295949 e!3348697)))

(declare-datatypes ((C!30602 0))(
  ( (C!30603 (val!25003 Int)) )
))
(declare-datatypes ((Regex!15166 0))(
  ( (ElementMatch!15166 (c!941352 C!30602)) (Concat!24011 (regOne!30844 Regex!15166) (regTwo!30844 Regex!15166)) (EmptyExpr!15166) (Star!15166 (reg!15495 Regex!15166)) (EmptyLang!15166) (Union!15166 (regOne!30845 Regex!15166) (regTwo!30845 Regex!15166)) )
))
(declare-fun lt!2201436 () Regex!15166)

(declare-fun r!7292 () Regex!15166)

(assert (=> b!5400848 (= res!2295949 (not (= lt!2201436 r!7292)))))

(declare-fun b!5400849 () Bool)

(declare-fun res!2295956 () Bool)

(declare-fun e!3348688 () Bool)

(assert (=> b!5400849 (=> (not res!2295956) (not e!3348688))))

(declare-datatypes ((List!61797 0))(
  ( (Nil!61673) (Cons!61673 (h!68121 Regex!15166) (t!375020 List!61797)) )
))
(declare-datatypes ((Context!9100 0))(
  ( (Context!9101 (exprs!5050 List!61797)) )
))
(declare-fun z!1189 () (Set Context!9100))

(declare-datatypes ((List!61798 0))(
  ( (Nil!61674) (Cons!61674 (h!68122 Context!9100) (t!375021 List!61798)) )
))
(declare-fun zl!343 () List!61798)

(declare-fun toList!8950 ((Set Context!9100)) List!61798)

(assert (=> b!5400849 (= res!2295956 (= (toList!8950 z!1189) zl!343))))

(declare-fun e!3348703 () Bool)

(declare-fun tp!1494336 () Bool)

(declare-fun b!5400850 () Bool)

(declare-fun e!3348687 () Bool)

(declare-fun inv!81163 (Context!9100) Bool)

(assert (=> b!5400850 (= e!3348703 (and (inv!81163 (h!68122 zl!343)) e!3348687 tp!1494336))))

(declare-fun b!5400851 () Bool)

(declare-fun res!2295929 () Bool)

(declare-fun e!3348690 () Bool)

(assert (=> b!5400851 (=> res!2295929 e!3348690)))

(declare-fun lt!2201397 () Bool)

(assert (=> b!5400851 (= res!2295929 (not lt!2201397))))

(declare-fun b!5400852 () Bool)

(declare-fun res!2295926 () Bool)

(declare-fun e!3348711 () Bool)

(assert (=> b!5400852 (=> res!2295926 e!3348711)))

(declare-fun lt!2201402 () Bool)

(declare-fun lt!2201408 () Bool)

(assert (=> b!5400852 (= res!2295926 (or (not lt!2201402) (not lt!2201408)))))

(declare-fun b!5400853 () Bool)

(declare-fun e!3348696 () Bool)

(declare-fun tp_is_empty!39585 () Bool)

(declare-fun tp!1494343 () Bool)

(assert (=> b!5400853 (= e!3348696 (and tp_is_empty!39585 tp!1494343))))

(declare-fun b!5400854 () Bool)

(declare-fun e!3348701 () Bool)

(declare-fun nullable!5335 (Regex!15166) Bool)

(assert (=> b!5400854 (= e!3348701 (nullable!5335 (regOne!30844 (regOne!30844 r!7292))))))

(declare-fun b!5400855 () Bool)

(declare-fun res!2295923 () Bool)

(declare-fun e!3348689 () Bool)

(assert (=> b!5400855 (=> res!2295923 e!3348689)))

(assert (=> b!5400855 (= res!2295923 (or (is-EmptyExpr!15166 r!7292) (is-EmptyLang!15166 r!7292) (is-ElementMatch!15166 r!7292) (is-Union!15166 r!7292) (not (is-Concat!24011 r!7292))))))

(declare-fun b!5400856 () Bool)

(declare-fun e!3348709 () Bool)

(assert (=> b!5400856 (= e!3348697 e!3348709)))

(declare-fun res!2295932 () Bool)

(assert (=> b!5400856 (=> res!2295932 e!3348709)))

(declare-fun lt!2201434 () Regex!15166)

(assert (=> b!5400856 (= res!2295932 (not (= r!7292 lt!2201434)))))

(declare-fun lt!2201395 () Regex!15166)

(assert (=> b!5400856 (= lt!2201434 (Concat!24011 lt!2201395 (regTwo!30844 r!7292)))))

(declare-fun b!5400857 () Bool)

(declare-fun e!3348702 () Bool)

(assert (=> b!5400857 (= e!3348702 tp_is_empty!39585)))

(declare-fun b!5400858 () Bool)

(declare-fun e!3348699 () Bool)

(assert (=> b!5400858 (= e!3348709 e!3348699)))

(declare-fun res!2295935 () Bool)

(assert (=> b!5400858 (=> res!2295935 e!3348699)))

(declare-fun lt!2201405 () Context!9100)

(declare-fun lt!2201389 () Regex!15166)

(declare-fun unfocusZipper!908 (List!61798) Regex!15166)

(assert (=> b!5400858 (= res!2295935 (not (= (unfocusZipper!908 (Cons!61674 lt!2201405 Nil!61674)) lt!2201389)))))

(assert (=> b!5400858 (= lt!2201389 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201434))))

(declare-fun b!5400859 () Bool)

(declare-datatypes ((Unit!154186 0))(
  ( (Unit!154187) )
))
(declare-fun e!3348700 () Unit!154186)

(declare-fun Unit!154188 () Unit!154186)

(assert (=> b!5400859 (= e!3348700 Unit!154188)))

(declare-fun lt!2201435 () (Set Context!9100))

(declare-datatypes ((List!61799 0))(
  ( (Nil!61675) (Cons!61675 (h!68123 C!30602) (t!375022 List!61799)) )
))
(declare-fun s!2326 () List!61799)

(declare-fun lt!2201413 () (Set Context!9100))

(declare-fun lt!2201420 () Unit!154186)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!403 ((Set Context!9100) (Set Context!9100) List!61799) Unit!154186)

(assert (=> b!5400859 (= lt!2201420 (lemmaZipperConcatMatchesSameAsBothZippers!403 lt!2201435 lt!2201413 (t!375022 s!2326)))))

(declare-fun res!2295943 () Bool)

(declare-fun matchZipper!1410 ((Set Context!9100) List!61799) Bool)

(assert (=> b!5400859 (= res!2295943 (matchZipper!1410 lt!2201435 (t!375022 s!2326)))))

(declare-fun e!3348707 () Bool)

(assert (=> b!5400859 (=> res!2295943 e!3348707)))

(assert (=> b!5400859 (= (matchZipper!1410 (set.union lt!2201435 lt!2201413) (t!375022 s!2326)) e!3348707)))

(declare-fun b!5400860 () Bool)

(declare-fun res!2295934 () Bool)

(assert (=> b!5400860 (=> res!2295934 e!3348689)))

(declare-fun generalisedConcat!835 (List!61797) Regex!15166)

(assert (=> b!5400860 (= res!2295934 (not (= r!7292 (generalisedConcat!835 (exprs!5050 (h!68122 zl!343))))))))

(declare-fun b!5400861 () Bool)

(declare-fun res!2295922 () Bool)

(declare-fun e!3348693 () Bool)

(assert (=> b!5400861 (=> res!2295922 e!3348693)))

(assert (=> b!5400861 (= res!2295922 e!3348701)))

(declare-fun res!2295948 () Bool)

(assert (=> b!5400861 (=> (not res!2295948) (not e!3348701))))

(assert (=> b!5400861 (= res!2295948 (is-Concat!24011 (regOne!30844 r!7292)))))

(declare-fun b!5400862 () Bool)

(declare-fun tp!1494339 () Bool)

(declare-fun tp!1494338 () Bool)

(assert (=> b!5400862 (= e!3348702 (and tp!1494339 tp!1494338))))

(declare-fun b!5400863 () Bool)

(declare-fun e!3348705 () Bool)

(assert (=> b!5400863 (= e!3348693 e!3348705)))

(declare-fun res!2295930 () Bool)

(assert (=> b!5400863 (=> res!2295930 e!3348705)))

(declare-fun lt!2201392 () (Set Context!9100))

(assert (=> b!5400863 (= res!2295930 (not (= lt!2201435 lt!2201392)))))

(declare-fun lt!2201410 () Context!9100)

(declare-fun derivationStepZipperDown!614 (Regex!15166 Context!9100 C!30602) (Set Context!9100))

(assert (=> b!5400863 (= lt!2201392 (derivationStepZipperDown!614 (reg!15495 (regOne!30844 r!7292)) lt!2201410 (h!68123 s!2326)))))

(declare-fun lt!2201415 () List!61797)

(assert (=> b!5400863 (= lt!2201410 (Context!9101 lt!2201415))))

(assert (=> b!5400863 (= lt!2201415 (Cons!61673 lt!2201395 (t!375020 (exprs!5050 (h!68122 zl!343)))))))

(assert (=> b!5400863 (= lt!2201395 (Star!15166 (reg!15495 (regOne!30844 r!7292))))))

(declare-fun b!5400864 () Bool)

(declare-fun e!3348698 () Bool)

(declare-fun tp!1494342 () Bool)

(assert (=> b!5400864 (= e!3348698 tp!1494342)))

(declare-fun b!5400865 () Bool)

(declare-fun e!3348691 () Bool)

(assert (=> b!5400865 (= e!3348691 (not (matchZipper!1410 lt!2201413 (t!375022 s!2326))))))

(declare-fun b!5400866 () Bool)

(declare-fun e!3348692 () Bool)

(assert (=> b!5400866 (= e!3348692 (not e!3348689))))

(declare-fun res!2295938 () Bool)

(assert (=> b!5400866 (=> res!2295938 e!3348689)))

(assert (=> b!5400866 (= res!2295938 (not (is-Cons!61674 zl!343)))))

(declare-fun lt!2201414 () Bool)

(declare-fun matchRSpec!2269 (Regex!15166 List!61799) Bool)

(assert (=> b!5400866 (= lt!2201414 (matchRSpec!2269 r!7292 s!2326))))

(declare-fun matchR!7351 (Regex!15166 List!61799) Bool)

(assert (=> b!5400866 (= lt!2201414 (matchR!7351 r!7292 s!2326))))

(declare-fun lt!2201424 () Unit!154186)

(declare-fun mainMatchTheorem!2269 (Regex!15166 List!61799) Unit!154186)

(assert (=> b!5400866 (= lt!2201424 (mainMatchTheorem!2269 r!7292 s!2326))))

(declare-fun e!3348695 () Bool)

(assert (=> b!5400867 (= e!3348689 e!3348695)))

(declare-fun res!2295954 () Bool)

(assert (=> b!5400867 (=> res!2295954 e!3348695)))

(declare-fun lt!2201425 () Bool)

(assert (=> b!5400867 (= res!2295954 (or (not (= lt!2201414 lt!2201425)) (is-Nil!61675 s!2326)))))

(declare-fun Exists!2347 (Int) Bool)

(assert (=> b!5400867 (= (Exists!2347 lambda!281204) (Exists!2347 lambda!281205))))

(declare-fun lt!2201411 () Unit!154186)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1001 (Regex!15166 Regex!15166 List!61799) Unit!154186)

(assert (=> b!5400867 (= lt!2201411 (lemmaExistCutMatchRandMatchRSpecEquivalent!1001 (regOne!30844 r!7292) (regTwo!30844 r!7292) s!2326))))

(assert (=> b!5400867 (= lt!2201425 (Exists!2347 lambda!281204))))

(declare-datatypes ((tuple2!64730 0))(
  ( (tuple2!64731 (_1!35668 List!61799) (_2!35668 List!61799)) )
))
(declare-datatypes ((Option!15277 0))(
  ( (None!15276) (Some!15276 (v!51305 tuple2!64730)) )
))
(declare-fun isDefined!11980 (Option!15277) Bool)

(declare-fun findConcatSeparation!1691 (Regex!15166 Regex!15166 List!61799 List!61799 List!61799) Option!15277)

(assert (=> b!5400867 (= lt!2201425 (isDefined!11980 (findConcatSeparation!1691 (regOne!30844 r!7292) (regTwo!30844 r!7292) Nil!61675 s!2326 s!2326)))))

(declare-fun lt!2201423 () Unit!154186)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1455 (Regex!15166 Regex!15166 List!61799) Unit!154186)

(assert (=> b!5400867 (= lt!2201423 (lemmaFindConcatSeparationEquivalentToExists!1455 (regOne!30844 r!7292) (regTwo!30844 r!7292) s!2326))))

(declare-fun b!5400868 () Bool)

(declare-fun tp!1494340 () Bool)

(assert (=> b!5400868 (= e!3348687 tp!1494340)))

(assert (=> b!5400869 (= e!3348695 e!3348693)))

(declare-fun res!2295947 () Bool)

(assert (=> b!5400869 (=> res!2295947 e!3348693)))

(assert (=> b!5400869 (= res!2295947 (or (and (is-ElementMatch!15166 (regOne!30844 r!7292)) (= (c!941352 (regOne!30844 r!7292)) (h!68123 s!2326))) (is-Union!15166 (regOne!30844 r!7292))))))

(declare-fun lt!2201419 () Unit!154186)

(assert (=> b!5400869 (= lt!2201419 e!3348700)))

(declare-fun c!941351 () Bool)

(assert (=> b!5400869 (= c!941351 lt!2201397)))

(assert (=> b!5400869 (= lt!2201397 (nullable!5335 (h!68121 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun lambda!281206 () Int)

(declare-fun flatMap!893 ((Set Context!9100) Int) (Set Context!9100))

(declare-fun derivationStepZipperUp!538 (Context!9100 C!30602) (Set Context!9100))

(assert (=> b!5400869 (= (flatMap!893 z!1189 lambda!281206) (derivationStepZipperUp!538 (h!68122 zl!343) (h!68123 s!2326)))))

(declare-fun lt!2201399 () Unit!154186)

(declare-fun lemmaFlatMapOnSingletonSet!425 ((Set Context!9100) Context!9100 Int) Unit!154186)

(assert (=> b!5400869 (= lt!2201399 (lemmaFlatMapOnSingletonSet!425 z!1189 (h!68122 zl!343) lambda!281206))))

(declare-fun lt!2201421 () Context!9100)

(assert (=> b!5400869 (= lt!2201413 (derivationStepZipperUp!538 lt!2201421 (h!68123 s!2326)))))

(assert (=> b!5400869 (= lt!2201435 (derivationStepZipperDown!614 (h!68121 (exprs!5050 (h!68122 zl!343))) lt!2201421 (h!68123 s!2326)))))

(assert (=> b!5400869 (= lt!2201421 (Context!9101 (t!375020 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun lt!2201429 () (Set Context!9100))

(assert (=> b!5400869 (= lt!2201429 (derivationStepZipperUp!538 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343))))) (h!68123 s!2326)))))

(declare-fun b!5400870 () Bool)

(declare-fun Unit!154189 () Unit!154186)

(assert (=> b!5400870 (= e!3348700 Unit!154189)))

(declare-fun b!5400871 () Bool)

(declare-fun tp!1494335 () Bool)

(assert (=> b!5400871 (= e!3348702 tp!1494335)))

(declare-fun b!5400872 () Bool)

(assert (=> b!5400872 (= e!3348690 e!3348711)))

(declare-fun res!2295937 () Bool)

(assert (=> b!5400872 (=> res!2295937 e!3348711)))

(assert (=> b!5400872 (= res!2295937 e!3348691)))

(declare-fun res!2295950 () Bool)

(assert (=> b!5400872 (=> (not res!2295950) (not e!3348691))))

(assert (=> b!5400872 (= res!2295950 (not lt!2201402))))

(assert (=> b!5400872 (= lt!2201402 (matchZipper!1410 lt!2201435 (t!375022 s!2326)))))

(declare-fun setIsEmpty!35144 () Bool)

(declare-fun setRes!35144 () Bool)

(assert (=> setIsEmpty!35144 setRes!35144))

(declare-fun b!5400873 () Bool)

(declare-fun e!3348708 () Bool)

(declare-fun lt!2201426 () Bool)

(assert (=> b!5400873 (= e!3348708 lt!2201426)))

(declare-fun b!5400874 () Bool)

(declare-fun res!2295931 () Bool)

(assert (=> b!5400874 (=> res!2295931 e!3348695)))

(declare-fun isEmpty!33666 (List!61797) Bool)

(assert (=> b!5400874 (= res!2295931 (isEmpty!33666 (t!375020 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun b!5400875 () Bool)

(declare-fun res!2295955 () Bool)

(assert (=> b!5400875 (=> res!2295955 e!3348690)))

(assert (=> b!5400875 (= res!2295955 (not (matchZipper!1410 z!1189 s!2326)))))

(declare-fun b!5400876 () Bool)

(declare-fun res!2295944 () Bool)

(assert (=> b!5400876 (=> res!2295944 e!3348689)))

(declare-fun generalisedUnion!1095 (List!61797) Regex!15166)

(declare-fun unfocusZipperList!608 (List!61798) List!61797)

(assert (=> b!5400876 (= res!2295944 (not (= r!7292 (generalisedUnion!1095 (unfocusZipperList!608 zl!343)))))))

(declare-fun b!5400877 () Bool)

(declare-fun res!2295936 () Bool)

(assert (=> b!5400877 (=> res!2295936 e!3348693)))

(assert (=> b!5400877 (= res!2295936 (or (is-Concat!24011 (regOne!30844 r!7292)) (not (is-Star!15166 (regOne!30844 r!7292)))))))

(declare-fun b!5400878 () Bool)

(declare-fun e!3348706 () Bool)

(assert (=> b!5400878 (= e!3348706 e!3348697)))

(declare-fun res!2295952 () Bool)

(assert (=> b!5400878 (=> res!2295952 e!3348697)))

(declare-fun lt!2201427 () (Set Context!9100))

(assert (=> b!5400878 (= res!2295952 (not (= lt!2201408 (matchZipper!1410 lt!2201427 (t!375022 s!2326)))))))

(declare-fun lt!2201401 () (Set Context!9100))

(assert (=> b!5400878 (= lt!2201408 (matchZipper!1410 lt!2201401 s!2326))))

(declare-fun b!5400879 () Bool)

(declare-fun e!3348704 () Bool)

(declare-fun validRegex!6902 (Regex!15166) Bool)

(assert (=> b!5400879 (= e!3348704 (validRegex!6902 lt!2201389))))

(assert (=> b!5400879 (matchR!7351 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292)) s!2326)))

(declare-fun lt!2201390 () Unit!154186)

(declare-fun lemmaConcatAssociative!19 (Regex!15166 Regex!15166 Regex!15166 List!61799) Unit!154186)

(assert (=> b!5400879 (= lt!2201390 (lemmaConcatAssociative!19 (reg!15495 (regOne!30844 r!7292)) lt!2201395 (regTwo!30844 r!7292) s!2326))))

(assert (=> b!5400879 e!3348708))

(declare-fun res!2295942 () Bool)

(assert (=> b!5400879 (=> (not res!2295942) (not e!3348708))))

(declare-fun lt!2201430 () List!61799)

(assert (=> b!5400879 (= res!2295942 (matchR!7351 lt!2201389 lt!2201430))))

(declare-fun lt!2201418 () Unit!154186)

(declare-fun lt!2201433 () tuple2!64730)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!189 (Regex!15166 Regex!15166 List!61799 List!61799) Unit!154186)

(assert (=> b!5400879 (= lt!2201418 (lemmaTwoRegexMatchThenConcatMatchesConcatString!189 (reg!15495 (regOne!30844 r!7292)) lt!2201434 (_1!35668 lt!2201433) (_2!35668 lt!2201433)))))

(assert (=> b!5400879 (matchR!7351 lt!2201434 (_2!35668 lt!2201433))))

(declare-fun lt!2201394 () List!61798)

(declare-fun lt!2201403 () (Set Context!9100))

(declare-fun lt!2201398 () Unit!154186)

(declare-fun theoremZipperRegexEquiv!480 ((Set Context!9100) List!61798 Regex!15166 List!61799) Unit!154186)

(assert (=> b!5400879 (= lt!2201398 (theoremZipperRegexEquiv!480 lt!2201403 lt!2201394 lt!2201434 (_2!35668 lt!2201433)))))

(assert (=> b!5400879 (matchR!7351 (reg!15495 (regOne!30844 r!7292)) (_1!35668 lt!2201433))))

(declare-fun lt!2201387 () List!61798)

(declare-fun lt!2201400 () (Set Context!9100))

(declare-fun lt!2201409 () Unit!154186)

(assert (=> b!5400879 (= lt!2201409 (theoremZipperRegexEquiv!480 lt!2201400 lt!2201387 (reg!15495 (regOne!30844 r!7292)) (_1!35668 lt!2201433)))))

(declare-fun lt!2201416 () List!61797)

(declare-fun ++!13505 (List!61797 List!61797) List!61797)

(assert (=> b!5400879 (matchZipper!1410 (set.insert (Context!9101 (++!13505 lt!2201416 lt!2201415)) (as set.empty (Set Context!9100))) lt!2201430)))

(declare-fun lambda!281208 () Int)

(declare-fun lt!2201431 () Unit!154186)

(declare-fun lemmaConcatPreservesForall!191 (List!61797 List!61797 Int) Unit!154186)

(assert (=> b!5400879 (= lt!2201431 (lemmaConcatPreservesForall!191 lt!2201416 lt!2201415 lambda!281208))))

(declare-fun lt!2201404 () Unit!154186)

(declare-fun lt!2201388 () Context!9100)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!39 (Context!9100 Context!9100 List!61799 List!61799) Unit!154186)

(assert (=> b!5400879 (= lt!2201404 (lemmaConcatenateContextMatchesConcatOfStrings!39 lt!2201388 lt!2201410 (_1!35668 lt!2201433) (_2!35668 lt!2201433)))))

(declare-fun b!5400880 () Bool)

(declare-fun e!3348694 () Bool)

(declare-fun e!3348710 () Bool)

(assert (=> b!5400880 (= e!3348694 e!3348710)))

(declare-fun res!2295924 () Bool)

(assert (=> b!5400880 (=> res!2295924 e!3348710)))

(assert (=> b!5400880 (= res!2295924 (not (= (unfocusZipper!908 lt!2201394) lt!2201434)))))

(assert (=> b!5400880 (= lt!2201394 (Cons!61674 lt!2201410 Nil!61674))))

(declare-fun b!5400881 () Bool)

(declare-fun res!2295925 () Bool)

(assert (=> b!5400881 (=> res!2295925 e!3348689)))

(declare-fun isEmpty!33667 (List!61798) Bool)

(assert (=> b!5400881 (= res!2295925 (not (isEmpty!33667 (t!375021 zl!343))))))

(declare-fun b!5400882 () Bool)

(assert (=> b!5400882 (= e!3348688 e!3348692)))

(declare-fun res!2295933 () Bool)

(assert (=> b!5400882 (=> (not res!2295933) (not e!3348692))))

(assert (=> b!5400882 (= res!2295933 (= r!7292 lt!2201436))))

(assert (=> b!5400882 (= lt!2201436 (unfocusZipper!908 zl!343))))

(declare-fun b!5400883 () Bool)

(declare-fun res!2295951 () Bool)

(assert (=> b!5400883 (=> res!2295951 e!3348689)))

(assert (=> b!5400883 (= res!2295951 (not (is-Cons!61673 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun res!2295945 () Bool)

(assert (=> start!567316 (=> (not res!2295945) (not e!3348688))))

(assert (=> start!567316 (= res!2295945 (validRegex!6902 r!7292))))

(assert (=> start!567316 e!3348688))

(assert (=> start!567316 e!3348702))

(declare-fun condSetEmpty!35144 () Bool)

(assert (=> start!567316 (= condSetEmpty!35144 (= z!1189 (as set.empty (Set Context!9100))))))

(assert (=> start!567316 setRes!35144))

(assert (=> start!567316 e!3348703))

(assert (=> start!567316 e!3348696))

(declare-fun b!5400884 () Bool)

(declare-fun e!3348712 () Bool)

(assert (=> b!5400884 (= e!3348712 e!3348704)))

(declare-fun res!2295941 () Bool)

(assert (=> b!5400884 (=> res!2295941 e!3348704)))

(assert (=> b!5400884 (= res!2295941 (not (= s!2326 lt!2201430)))))

(declare-fun ++!13506 (List!61799 List!61799) List!61799)

(assert (=> b!5400884 (= lt!2201430 (++!13506 (_1!35668 lt!2201433) (_2!35668 lt!2201433)))))

(declare-fun lt!2201391 () Option!15277)

(declare-fun get!21252 (Option!15277) tuple2!64730)

(assert (=> b!5400884 (= lt!2201433 (get!21252 lt!2201391))))

(assert (=> b!5400884 (isDefined!11980 lt!2201391)))

(declare-fun findConcatSeparationZippers!23 ((Set Context!9100) (Set Context!9100) List!61799 List!61799 List!61799) Option!15277)

(assert (=> b!5400884 (= lt!2201391 (findConcatSeparationZippers!23 lt!2201400 lt!2201403 Nil!61675 s!2326 s!2326))))

(declare-fun lt!2201412 () Unit!154186)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!23 ((Set Context!9100) Context!9100 List!61799) Unit!154186)

(assert (=> b!5400884 (= lt!2201412 (lemmaConcatZipperMatchesStringThenFindConcatDefined!23 lt!2201400 lt!2201410 s!2326))))

(declare-fun b!5400885 () Bool)

(assert (=> b!5400885 (= e!3348705 e!3348706)))

(declare-fun res!2295946 () Bool)

(assert (=> b!5400885 (=> res!2295946 e!3348706)))

(assert (=> b!5400885 (= res!2295946 (not (= lt!2201427 lt!2201392)))))

(assert (=> b!5400885 (= (flatMap!893 lt!2201401 lambda!281206) (derivationStepZipperUp!538 lt!2201405 (h!68123 s!2326)))))

(declare-fun lt!2201393 () Unit!154186)

(assert (=> b!5400885 (= lt!2201393 (lemmaFlatMapOnSingletonSet!425 lt!2201401 lt!2201405 lambda!281206))))

(declare-fun lt!2201406 () (Set Context!9100))

(assert (=> b!5400885 (= lt!2201406 (derivationStepZipperUp!538 lt!2201405 (h!68123 s!2326)))))

(declare-fun derivationStepZipper!1405 ((Set Context!9100) C!30602) (Set Context!9100))

(assert (=> b!5400885 (= lt!2201427 (derivationStepZipper!1405 lt!2201401 (h!68123 s!2326)))))

(assert (=> b!5400885 (= lt!2201401 (set.insert lt!2201405 (as set.empty (Set Context!9100))))))

(assert (=> b!5400885 (= lt!2201405 (Context!9101 (Cons!61673 (reg!15495 (regOne!30844 r!7292)) lt!2201415)))))

(declare-fun b!5400886 () Bool)

(declare-fun res!2295940 () Bool)

(assert (=> b!5400886 (=> res!2295940 e!3348704)))

(assert (=> b!5400886 (= res!2295940 (not (matchZipper!1410 lt!2201400 (_1!35668 lt!2201433))))))

(declare-fun b!5400887 () Bool)

(assert (=> b!5400887 (= e!3348707 (matchZipper!1410 lt!2201413 (t!375022 s!2326)))))

(declare-fun b!5400888 () Bool)

(declare-fun tp!1494341 () Bool)

(declare-fun tp!1494337 () Bool)

(assert (=> b!5400888 (= e!3348702 (and tp!1494341 tp!1494337))))

(declare-fun b!5400889 () Bool)

(declare-fun res!2295928 () Bool)

(assert (=> b!5400889 (=> res!2295928 e!3348704)))

(assert (=> b!5400889 (= res!2295928 (not (matchZipper!1410 lt!2201403 (_2!35668 lt!2201433))))))

(declare-fun b!5400890 () Bool)

(assert (=> b!5400890 (= e!3348710 e!3348690)))

(declare-fun res!2295927 () Bool)

(assert (=> b!5400890 (=> res!2295927 e!3348690)))

(assert (=> b!5400890 (= res!2295927 lt!2201414)))

(assert (=> b!5400890 (= lt!2201426 (matchRSpec!2269 lt!2201389 s!2326))))

(assert (=> b!5400890 (= lt!2201426 (matchR!7351 lt!2201389 s!2326))))

(declare-fun lt!2201437 () Unit!154186)

(assert (=> b!5400890 (= lt!2201437 (mainMatchTheorem!2269 lt!2201389 s!2326))))

(declare-fun b!5400891 () Bool)

(assert (=> b!5400891 (= e!3348699 e!3348694)))

(declare-fun res!2295953 () Bool)

(assert (=> b!5400891 (=> res!2295953 e!3348694)))

(assert (=> b!5400891 (= res!2295953 (not (= (unfocusZipper!908 lt!2201387) (reg!15495 (regOne!30844 r!7292)))))))

(assert (=> b!5400891 (= lt!2201387 (Cons!61674 lt!2201388 Nil!61674))))

(assert (=> b!5400891 (= (flatMap!893 lt!2201403 lambda!281206) (derivationStepZipperUp!538 lt!2201410 (h!68123 s!2326)))))

(declare-fun lt!2201428 () Unit!154186)

(assert (=> b!5400891 (= lt!2201428 (lemmaFlatMapOnSingletonSet!425 lt!2201403 lt!2201410 lambda!281206))))

(assert (=> b!5400891 (= (flatMap!893 lt!2201400 lambda!281206) (derivationStepZipperUp!538 lt!2201388 (h!68123 s!2326)))))

(declare-fun lt!2201417 () Unit!154186)

(assert (=> b!5400891 (= lt!2201417 (lemmaFlatMapOnSingletonSet!425 lt!2201400 lt!2201388 lambda!281206))))

(declare-fun lt!2201422 () (Set Context!9100))

(assert (=> b!5400891 (= lt!2201422 (derivationStepZipperUp!538 lt!2201410 (h!68123 s!2326)))))

(declare-fun lt!2201396 () (Set Context!9100))

(assert (=> b!5400891 (= lt!2201396 (derivationStepZipperUp!538 lt!2201388 (h!68123 s!2326)))))

(assert (=> b!5400891 (= lt!2201403 (set.insert lt!2201410 (as set.empty (Set Context!9100))))))

(assert (=> b!5400891 (= lt!2201400 (set.insert lt!2201388 (as set.empty (Set Context!9100))))))

(assert (=> b!5400891 (= lt!2201388 (Context!9101 lt!2201416))))

(assert (=> b!5400891 (= lt!2201416 (Cons!61673 (reg!15495 (regOne!30844 r!7292)) Nil!61673))))

(declare-fun setNonEmpty!35144 () Bool)

(declare-fun tp!1494334 () Bool)

(declare-fun setElem!35144 () Context!9100)

(assert (=> setNonEmpty!35144 (= setRes!35144 (and tp!1494334 (inv!81163 setElem!35144) e!3348698))))

(declare-fun setRest!35144 () (Set Context!9100))

(assert (=> setNonEmpty!35144 (= z!1189 (set.union (set.insert setElem!35144 (as set.empty (Set Context!9100))) setRest!35144))))

(assert (=> b!5400892 (= e!3348711 e!3348712)))

(declare-fun res!2295939 () Bool)

(assert (=> b!5400892 (=> res!2295939 e!3348712)))

(declare-fun appendTo!25 ((Set Context!9100) Context!9100) (Set Context!9100))

(assert (=> b!5400892 (= res!2295939 (not (= (appendTo!25 lt!2201400 lt!2201410) lt!2201401)))))

(declare-fun lambda!281207 () Int)

(declare-fun map!14134 ((Set Context!9100) Int) (Set Context!9100))

(assert (=> b!5400892 (= (map!14134 lt!2201400 lambda!281207) (set.insert (Context!9101 (++!13505 lt!2201416 lt!2201415)) (as set.empty (Set Context!9100))))))

(declare-fun lt!2201407 () Unit!154186)

(assert (=> b!5400892 (= lt!2201407 (lemmaConcatPreservesForall!191 lt!2201416 lt!2201415 lambda!281208))))

(declare-fun lt!2201432 () Unit!154186)

(declare-fun lemmaMapOnSingletonSet!25 ((Set Context!9100) Context!9100 Int) Unit!154186)

(assert (=> b!5400892 (= lt!2201432 (lemmaMapOnSingletonSet!25 lt!2201400 lt!2201388 lambda!281207))))

(assert (= (and start!567316 res!2295945) b!5400849))

(assert (= (and b!5400849 res!2295956) b!5400882))

(assert (= (and b!5400882 res!2295933) b!5400866))

(assert (= (and b!5400866 (not res!2295938)) b!5400881))

(assert (= (and b!5400881 (not res!2295925)) b!5400860))

(assert (= (and b!5400860 (not res!2295934)) b!5400883))

(assert (= (and b!5400883 (not res!2295951)) b!5400876))

(assert (= (and b!5400876 (not res!2295944)) b!5400855))

(assert (= (and b!5400855 (not res!2295923)) b!5400867))

(assert (= (and b!5400867 (not res!2295954)) b!5400874))

(assert (= (and b!5400874 (not res!2295931)) b!5400869))

(assert (= (and b!5400869 c!941351) b!5400859))

(assert (= (and b!5400869 (not c!941351)) b!5400870))

(assert (= (and b!5400859 (not res!2295943)) b!5400887))

(assert (= (and b!5400869 (not res!2295947)) b!5400861))

(assert (= (and b!5400861 res!2295948) b!5400854))

(assert (= (and b!5400861 (not res!2295922)) b!5400877))

(assert (= (and b!5400877 (not res!2295936)) b!5400863))

(assert (= (and b!5400863 (not res!2295930)) b!5400885))

(assert (= (and b!5400885 (not res!2295946)) b!5400878))

(assert (= (and b!5400878 (not res!2295952)) b!5400848))

(assert (= (and b!5400848 (not res!2295949)) b!5400856))

(assert (= (and b!5400856 (not res!2295932)) b!5400858))

(assert (= (and b!5400858 (not res!2295935)) b!5400891))

(assert (= (and b!5400891 (not res!2295953)) b!5400880))

(assert (= (and b!5400880 (not res!2295924)) b!5400890))

(assert (= (and b!5400890 (not res!2295927)) b!5400875))

(assert (= (and b!5400875 (not res!2295955)) b!5400851))

(assert (= (and b!5400851 (not res!2295929)) b!5400872))

(assert (= (and b!5400872 res!2295950) b!5400865))

(assert (= (and b!5400872 (not res!2295937)) b!5400852))

(assert (= (and b!5400852 (not res!2295926)) b!5400892))

(assert (= (and b!5400892 (not res!2295939)) b!5400884))

(assert (= (and b!5400884 (not res!2295941)) b!5400886))

(assert (= (and b!5400886 (not res!2295940)) b!5400889))

(assert (= (and b!5400889 (not res!2295928)) b!5400879))

(assert (= (and b!5400879 res!2295942) b!5400873))

(assert (= (and start!567316 (is-ElementMatch!15166 r!7292)) b!5400857))

(assert (= (and start!567316 (is-Concat!24011 r!7292)) b!5400862))

(assert (= (and start!567316 (is-Star!15166 r!7292)) b!5400871))

(assert (= (and start!567316 (is-Union!15166 r!7292)) b!5400888))

(assert (= (and start!567316 condSetEmpty!35144) setIsEmpty!35144))

(assert (= (and start!567316 (not condSetEmpty!35144)) setNonEmpty!35144))

(assert (= setNonEmpty!35144 b!5400864))

(assert (= b!5400850 b!5400868))

(assert (= (and start!567316 (is-Cons!61674 zl!343)) b!5400850))

(assert (= (and start!567316 (is-Cons!61675 s!2326)) b!5400853))

(declare-fun m!6425332 () Bool)

(assert (=> b!5400887 m!6425332))

(declare-fun m!6425334 () Bool)

(assert (=> b!5400860 m!6425334))

(assert (=> b!5400865 m!6425332))

(declare-fun m!6425336 () Bool)

(assert (=> start!567316 m!6425336))

(declare-fun m!6425338 () Bool)

(assert (=> b!5400872 m!6425338))

(declare-fun m!6425340 () Bool)

(assert (=> b!5400878 m!6425340))

(declare-fun m!6425342 () Bool)

(assert (=> b!5400878 m!6425342))

(declare-fun m!6425344 () Bool)

(assert (=> b!5400866 m!6425344))

(declare-fun m!6425346 () Bool)

(assert (=> b!5400866 m!6425346))

(declare-fun m!6425348 () Bool)

(assert (=> b!5400866 m!6425348))

(declare-fun m!6425350 () Bool)

(assert (=> b!5400854 m!6425350))

(declare-fun m!6425352 () Bool)

(assert (=> b!5400863 m!6425352))

(declare-fun m!6425354 () Bool)

(assert (=> b!5400859 m!6425354))

(assert (=> b!5400859 m!6425338))

(declare-fun m!6425356 () Bool)

(assert (=> b!5400859 m!6425356))

(declare-fun m!6425358 () Bool)

(assert (=> b!5400867 m!6425358))

(declare-fun m!6425360 () Bool)

(assert (=> b!5400867 m!6425360))

(declare-fun m!6425362 () Bool)

(assert (=> b!5400867 m!6425362))

(declare-fun m!6425364 () Bool)

(assert (=> b!5400867 m!6425364))

(declare-fun m!6425366 () Bool)

(assert (=> b!5400867 m!6425366))

(assert (=> b!5400867 m!6425364))

(assert (=> b!5400867 m!6425360))

(declare-fun m!6425368 () Bool)

(assert (=> b!5400867 m!6425368))

(declare-fun m!6425370 () Bool)

(assert (=> b!5400849 m!6425370))

(declare-fun m!6425372 () Bool)

(assert (=> b!5400858 m!6425372))

(declare-fun m!6425374 () Bool)

(assert (=> b!5400885 m!6425374))

(declare-fun m!6425376 () Bool)

(assert (=> b!5400885 m!6425376))

(declare-fun m!6425378 () Bool)

(assert (=> b!5400885 m!6425378))

(declare-fun m!6425380 () Bool)

(assert (=> b!5400885 m!6425380))

(declare-fun m!6425382 () Bool)

(assert (=> b!5400885 m!6425382))

(declare-fun m!6425384 () Bool)

(assert (=> setNonEmpty!35144 m!6425384))

(declare-fun m!6425386 () Bool)

(assert (=> b!5400881 m!6425386))

(declare-fun m!6425388 () Bool)

(assert (=> b!5400850 m!6425388))

(declare-fun m!6425390 () Bool)

(assert (=> b!5400875 m!6425390))

(declare-fun m!6425392 () Bool)

(assert (=> b!5400890 m!6425392))

(declare-fun m!6425394 () Bool)

(assert (=> b!5400890 m!6425394))

(declare-fun m!6425396 () Bool)

(assert (=> b!5400890 m!6425396))

(declare-fun m!6425398 () Bool)

(assert (=> b!5400882 m!6425398))

(declare-fun m!6425400 () Bool)

(assert (=> b!5400884 m!6425400))

(declare-fun m!6425402 () Bool)

(assert (=> b!5400884 m!6425402))

(declare-fun m!6425404 () Bool)

(assert (=> b!5400884 m!6425404))

(declare-fun m!6425406 () Bool)

(assert (=> b!5400884 m!6425406))

(declare-fun m!6425408 () Bool)

(assert (=> b!5400884 m!6425408))

(declare-fun m!6425410 () Bool)

(assert (=> b!5400869 m!6425410))

(declare-fun m!6425412 () Bool)

(assert (=> b!5400869 m!6425412))

(declare-fun m!6425414 () Bool)

(assert (=> b!5400869 m!6425414))

(declare-fun m!6425416 () Bool)

(assert (=> b!5400869 m!6425416))

(declare-fun m!6425418 () Bool)

(assert (=> b!5400869 m!6425418))

(declare-fun m!6425420 () Bool)

(assert (=> b!5400869 m!6425420))

(declare-fun m!6425422 () Bool)

(assert (=> b!5400869 m!6425422))

(declare-fun m!6425424 () Bool)

(assert (=> b!5400879 m!6425424))

(declare-fun m!6425426 () Bool)

(assert (=> b!5400879 m!6425426))

(declare-fun m!6425428 () Bool)

(assert (=> b!5400879 m!6425428))

(declare-fun m!6425430 () Bool)

(assert (=> b!5400879 m!6425430))

(declare-fun m!6425432 () Bool)

(assert (=> b!5400879 m!6425432))

(declare-fun m!6425434 () Bool)

(assert (=> b!5400879 m!6425434))

(declare-fun m!6425436 () Bool)

(assert (=> b!5400879 m!6425436))

(declare-fun m!6425438 () Bool)

(assert (=> b!5400879 m!6425438))

(declare-fun m!6425440 () Bool)

(assert (=> b!5400879 m!6425440))

(declare-fun m!6425442 () Bool)

(assert (=> b!5400879 m!6425442))

(declare-fun m!6425444 () Bool)

(assert (=> b!5400879 m!6425444))

(declare-fun m!6425446 () Bool)

(assert (=> b!5400879 m!6425446))

(declare-fun m!6425448 () Bool)

(assert (=> b!5400879 m!6425448))

(assert (=> b!5400879 m!6425444))

(declare-fun m!6425450 () Bool)

(assert (=> b!5400879 m!6425450))

(declare-fun m!6425452 () Bool)

(assert (=> b!5400874 m!6425452))

(declare-fun m!6425454 () Bool)

(assert (=> b!5400891 m!6425454))

(declare-fun m!6425456 () Bool)

(assert (=> b!5400891 m!6425456))

(declare-fun m!6425458 () Bool)

(assert (=> b!5400891 m!6425458))

(declare-fun m!6425460 () Bool)

(assert (=> b!5400891 m!6425460))

(declare-fun m!6425462 () Bool)

(assert (=> b!5400891 m!6425462))

(declare-fun m!6425464 () Bool)

(assert (=> b!5400891 m!6425464))

(declare-fun m!6425466 () Bool)

(assert (=> b!5400891 m!6425466))

(declare-fun m!6425468 () Bool)

(assert (=> b!5400891 m!6425468))

(declare-fun m!6425470 () Bool)

(assert (=> b!5400891 m!6425470))

(declare-fun m!6425472 () Bool)

(assert (=> b!5400886 m!6425472))

(declare-fun m!6425474 () Bool)

(assert (=> b!5400876 m!6425474))

(assert (=> b!5400876 m!6425474))

(declare-fun m!6425476 () Bool)

(assert (=> b!5400876 m!6425476))

(declare-fun m!6425478 () Bool)

(assert (=> b!5400880 m!6425478))

(assert (=> b!5400892 m!6425424))

(assert (=> b!5400892 m!6425438))

(declare-fun m!6425480 () Bool)

(assert (=> b!5400892 m!6425480))

(declare-fun m!6425482 () Bool)

(assert (=> b!5400892 m!6425482))

(declare-fun m!6425484 () Bool)

(assert (=> b!5400892 m!6425484))

(assert (=> b!5400892 m!6425444))

(declare-fun m!6425486 () Bool)

(assert (=> b!5400889 m!6425486))

(push 1)

(assert (not b!5400859))

(assert (not b!5400878))

(assert (not b!5400876))

(assert (not b!5400871))

(assert (not b!5400890))

(assert (not b!5400887))

(assert (not b!5400875))

(assert (not b!5400866))

(assert (not b!5400891))

(assert (not b!5400879))

(assert (not b!5400885))

(assert (not b!5400868))

(assert (not start!567316))

(assert (not b!5400872))

(assert (not b!5400869))

(assert (not b!5400850))

(assert (not b!5400888))

(assert (not setNonEmpty!35144))

(assert (not b!5400889))

(assert (not b!5400858))

(assert (not b!5400853))

(assert (not b!5400849))

(assert (not b!5400860))

(assert (not b!5400863))

(assert (not b!5400862))

(assert (not b!5400867))

(assert (not b!5400874))

(assert (not b!5400881))

(assert (not b!5400865))

(assert (not b!5400892))

(assert (not b!5400882))

(assert (not b!5400886))

(assert tp_is_empty!39585)

(assert (not b!5400864))

(assert (not b!5400854))

(assert (not b!5400880))

(assert (not b!5400884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1725103 () Bool)

(assert (=> d!1725103 (= (isEmpty!33667 (t!375021 zl!343)) (is-Nil!61674 (t!375021 zl!343)))))

(assert (=> b!5400881 d!1725103))

(declare-fun bs!1248283 () Bool)

(declare-fun d!1725105 () Bool)

(assert (= bs!1248283 (and d!1725105 b!5400892)))

(declare-fun lambda!281238 () Int)

(assert (=> bs!1248283 (= lambda!281238 lambda!281208)))

(declare-fun b!5401076 () Bool)

(declare-fun e!3348810 () Regex!15166)

(assert (=> b!5401076 (= e!3348810 (h!68121 (exprs!5050 (h!68122 zl!343))))))

(declare-fun b!5401077 () Bool)

(declare-fun e!3348814 () Regex!15166)

(assert (=> b!5401077 (= e!3348814 (Concat!24011 (h!68121 (exprs!5050 (h!68122 zl!343))) (generalisedConcat!835 (t!375020 (exprs!5050 (h!68122 zl!343))))))))

(declare-fun b!5401078 () Bool)

(declare-fun e!3348809 () Bool)

(declare-fun e!3348811 () Bool)

(assert (=> b!5401078 (= e!3348809 e!3348811)))

(declare-fun c!941378 () Bool)

(assert (=> b!5401078 (= c!941378 (isEmpty!33666 (exprs!5050 (h!68122 zl!343))))))

(declare-fun b!5401079 () Bool)

(assert (=> b!5401079 (= e!3348810 e!3348814)))

(declare-fun c!941376 () Bool)

(assert (=> b!5401079 (= c!941376 (is-Cons!61673 (exprs!5050 (h!68122 zl!343))))))

(assert (=> d!1725105 e!3348809))

(declare-fun res!2296079 () Bool)

(assert (=> d!1725105 (=> (not res!2296079) (not e!3348809))))

(declare-fun lt!2201595 () Regex!15166)

(assert (=> d!1725105 (= res!2296079 (validRegex!6902 lt!2201595))))

(assert (=> d!1725105 (= lt!2201595 e!3348810)))

(declare-fun c!941379 () Bool)

(declare-fun e!3348813 () Bool)

(assert (=> d!1725105 (= c!941379 e!3348813)))

(declare-fun res!2296080 () Bool)

(assert (=> d!1725105 (=> (not res!2296080) (not e!3348813))))

(assert (=> d!1725105 (= res!2296080 (is-Cons!61673 (exprs!5050 (h!68122 zl!343))))))

(declare-fun forall!14526 (List!61797 Int) Bool)

(assert (=> d!1725105 (forall!14526 (exprs!5050 (h!68122 zl!343)) lambda!281238)))

(assert (=> d!1725105 (= (generalisedConcat!835 (exprs!5050 (h!68122 zl!343))) lt!2201595)))

(declare-fun b!5401080 () Bool)

(assert (=> b!5401080 (= e!3348813 (isEmpty!33666 (t!375020 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun b!5401081 () Bool)

(declare-fun isEmptyExpr!967 (Regex!15166) Bool)

(assert (=> b!5401081 (= e!3348811 (isEmptyExpr!967 lt!2201595))))

(declare-fun b!5401082 () Bool)

(declare-fun e!3348812 () Bool)

(declare-fun head!11584 (List!61797) Regex!15166)

(assert (=> b!5401082 (= e!3348812 (= lt!2201595 (head!11584 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun b!5401083 () Bool)

(assert (=> b!5401083 (= e!3348811 e!3348812)))

(declare-fun c!941377 () Bool)

(declare-fun tail!10681 (List!61797) List!61797)

(assert (=> b!5401083 (= c!941377 (isEmpty!33666 (tail!10681 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun b!5401084 () Bool)

(assert (=> b!5401084 (= e!3348814 EmptyExpr!15166)))

(declare-fun b!5401085 () Bool)

(declare-fun isConcat!490 (Regex!15166) Bool)

(assert (=> b!5401085 (= e!3348812 (isConcat!490 lt!2201595))))

(assert (= (and d!1725105 res!2296080) b!5401080))

(assert (= (and d!1725105 c!941379) b!5401076))

(assert (= (and d!1725105 (not c!941379)) b!5401079))

(assert (= (and b!5401079 c!941376) b!5401077))

(assert (= (and b!5401079 (not c!941376)) b!5401084))

(assert (= (and d!1725105 res!2296079) b!5401078))

(assert (= (and b!5401078 c!941378) b!5401081))

(assert (= (and b!5401078 (not c!941378)) b!5401083))

(assert (= (and b!5401083 c!941377) b!5401082))

(assert (= (and b!5401083 (not c!941377)) b!5401085))

(declare-fun m!6425644 () Bool)

(assert (=> b!5401081 m!6425644))

(declare-fun m!6425646 () Bool)

(assert (=> b!5401077 m!6425646))

(declare-fun m!6425648 () Bool)

(assert (=> b!5401078 m!6425648))

(declare-fun m!6425650 () Bool)

(assert (=> d!1725105 m!6425650))

(declare-fun m!6425652 () Bool)

(assert (=> d!1725105 m!6425652))

(declare-fun m!6425654 () Bool)

(assert (=> b!5401085 m!6425654))

(declare-fun m!6425656 () Bool)

(assert (=> b!5401083 m!6425656))

(assert (=> b!5401083 m!6425656))

(declare-fun m!6425658 () Bool)

(assert (=> b!5401083 m!6425658))

(declare-fun m!6425660 () Bool)

(assert (=> b!5401082 m!6425660))

(assert (=> b!5401080 m!6425452))

(assert (=> b!5400860 d!1725105))

(declare-fun d!1725107 () Bool)

(declare-fun lt!2201598 () Regex!15166)

(assert (=> d!1725107 (validRegex!6902 lt!2201598)))

(assert (=> d!1725107 (= lt!2201598 (generalisedUnion!1095 (unfocusZipperList!608 zl!343)))))

(assert (=> d!1725107 (= (unfocusZipper!908 zl!343) lt!2201598)))

(declare-fun bs!1248284 () Bool)

(assert (= bs!1248284 d!1725107))

(declare-fun m!6425662 () Bool)

(assert (=> bs!1248284 m!6425662))

(assert (=> bs!1248284 m!6425474))

(assert (=> bs!1248284 m!6425474))

(assert (=> bs!1248284 m!6425476))

(assert (=> b!5400882 d!1725107))

(declare-fun d!1725109 () Bool)

(declare-fun lt!2201599 () Regex!15166)

(assert (=> d!1725109 (validRegex!6902 lt!2201599)))

(assert (=> d!1725109 (= lt!2201599 (generalisedUnion!1095 (unfocusZipperList!608 (Cons!61674 lt!2201405 Nil!61674))))))

(assert (=> d!1725109 (= (unfocusZipper!908 (Cons!61674 lt!2201405 Nil!61674)) lt!2201599)))

(declare-fun bs!1248285 () Bool)

(assert (= bs!1248285 d!1725109))

(declare-fun m!6425664 () Bool)

(assert (=> bs!1248285 m!6425664))

(declare-fun m!6425666 () Bool)

(assert (=> bs!1248285 m!6425666))

(assert (=> bs!1248285 m!6425666))

(declare-fun m!6425668 () Bool)

(assert (=> bs!1248285 m!6425668))

(assert (=> b!5400858 d!1725109))

(declare-fun b!5401104 () Bool)

(declare-fun e!3348832 () Bool)

(declare-fun call!386524 () Bool)

(assert (=> b!5401104 (= e!3348832 call!386524)))

(declare-fun b!5401105 () Bool)

(declare-fun e!3348834 () Bool)

(assert (=> b!5401105 (= e!3348834 call!386524)))

(declare-fun d!1725111 () Bool)

(declare-fun res!2296092 () Bool)

(declare-fun e!3348835 () Bool)

(assert (=> d!1725111 (=> res!2296092 e!3348835)))

(assert (=> d!1725111 (= res!2296092 (is-ElementMatch!15166 r!7292))))

(assert (=> d!1725111 (= (validRegex!6902 r!7292) e!3348835)))

(declare-fun b!5401106 () Bool)

(declare-fun e!3348833 () Bool)

(declare-fun call!386523 () Bool)

(assert (=> b!5401106 (= e!3348833 call!386523)))

(declare-fun b!5401107 () Bool)

(declare-fun e!3348831 () Bool)

(assert (=> b!5401107 (= e!3348831 e!3348834)))

(declare-fun res!2296091 () Bool)

(assert (=> b!5401107 (=> (not res!2296091) (not e!3348834))))

(declare-fun call!386525 () Bool)

(assert (=> b!5401107 (= res!2296091 call!386525)))

(declare-fun bm!386518 () Bool)

(declare-fun c!941385 () Bool)

(assert (=> bm!386518 (= call!386525 (validRegex!6902 (ite c!941385 (regOne!30845 r!7292) (regOne!30844 r!7292))))))

(declare-fun bm!386519 () Bool)

(assert (=> bm!386519 (= call!386524 call!386523)))

(declare-fun b!5401108 () Bool)

(declare-fun res!2296093 () Bool)

(assert (=> b!5401108 (=> res!2296093 e!3348831)))

(assert (=> b!5401108 (= res!2296093 (not (is-Concat!24011 r!7292)))))

(declare-fun e!3348830 () Bool)

(assert (=> b!5401108 (= e!3348830 e!3348831)))

(declare-fun c!941384 () Bool)

(declare-fun bm!386520 () Bool)

(assert (=> bm!386520 (= call!386523 (validRegex!6902 (ite c!941384 (reg!15495 r!7292) (ite c!941385 (regTwo!30845 r!7292) (regTwo!30844 r!7292)))))))

(declare-fun b!5401109 () Bool)

(declare-fun e!3348829 () Bool)

(assert (=> b!5401109 (= e!3348829 e!3348830)))

(assert (=> b!5401109 (= c!941385 (is-Union!15166 r!7292))))

(declare-fun b!5401110 () Bool)

(assert (=> b!5401110 (= e!3348835 e!3348829)))

(assert (=> b!5401110 (= c!941384 (is-Star!15166 r!7292))))

(declare-fun b!5401111 () Bool)

(declare-fun res!2296094 () Bool)

(assert (=> b!5401111 (=> (not res!2296094) (not e!3348832))))

(assert (=> b!5401111 (= res!2296094 call!386525)))

(assert (=> b!5401111 (= e!3348830 e!3348832)))

(declare-fun b!5401112 () Bool)

(assert (=> b!5401112 (= e!3348829 e!3348833)))

(declare-fun res!2296095 () Bool)

(assert (=> b!5401112 (= res!2296095 (not (nullable!5335 (reg!15495 r!7292))))))

(assert (=> b!5401112 (=> (not res!2296095) (not e!3348833))))

(assert (= (and d!1725111 (not res!2296092)) b!5401110))

(assert (= (and b!5401110 c!941384) b!5401112))

(assert (= (and b!5401110 (not c!941384)) b!5401109))

(assert (= (and b!5401112 res!2296095) b!5401106))

(assert (= (and b!5401109 c!941385) b!5401111))

(assert (= (and b!5401109 (not c!941385)) b!5401108))

(assert (= (and b!5401111 res!2296094) b!5401104))

(assert (= (and b!5401108 (not res!2296093)) b!5401107))

(assert (= (and b!5401107 res!2296091) b!5401105))

(assert (= (or b!5401104 b!5401105) bm!386519))

(assert (= (or b!5401111 b!5401107) bm!386518))

(assert (= (or b!5401106 bm!386519) bm!386520))

(declare-fun m!6425670 () Bool)

(assert (=> bm!386518 m!6425670))

(declare-fun m!6425672 () Bool)

(assert (=> bm!386520 m!6425672))

(declare-fun m!6425674 () Bool)

(assert (=> b!5401112 m!6425674))

(assert (=> start!567316 d!1725111))

(declare-fun d!1725113 () Bool)

(declare-fun c!941388 () Bool)

(declare-fun isEmpty!33670 (List!61799) Bool)

(assert (=> d!1725113 (= c!941388 (isEmpty!33670 (t!375022 s!2326)))))

(declare-fun e!3348838 () Bool)

(assert (=> d!1725113 (= (matchZipper!1410 lt!2201427 (t!375022 s!2326)) e!3348838)))

(declare-fun b!5401117 () Bool)

(declare-fun nullableZipper!1433 ((Set Context!9100)) Bool)

(assert (=> b!5401117 (= e!3348838 (nullableZipper!1433 lt!2201427))))

(declare-fun b!5401118 () Bool)

(declare-fun head!11585 (List!61799) C!30602)

(declare-fun tail!10682 (List!61799) List!61799)

(assert (=> b!5401118 (= e!3348838 (matchZipper!1410 (derivationStepZipper!1405 lt!2201427 (head!11585 (t!375022 s!2326))) (tail!10682 (t!375022 s!2326))))))

(assert (= (and d!1725113 c!941388) b!5401117))

(assert (= (and d!1725113 (not c!941388)) b!5401118))

(declare-fun m!6425676 () Bool)

(assert (=> d!1725113 m!6425676))

(declare-fun m!6425678 () Bool)

(assert (=> b!5401117 m!6425678))

(declare-fun m!6425680 () Bool)

(assert (=> b!5401118 m!6425680))

(assert (=> b!5401118 m!6425680))

(declare-fun m!6425682 () Bool)

(assert (=> b!5401118 m!6425682))

(declare-fun m!6425684 () Bool)

(assert (=> b!5401118 m!6425684))

(assert (=> b!5401118 m!6425682))

(assert (=> b!5401118 m!6425684))

(declare-fun m!6425686 () Bool)

(assert (=> b!5401118 m!6425686))

(assert (=> b!5400878 d!1725113))

(declare-fun d!1725115 () Bool)

(declare-fun c!941389 () Bool)

(assert (=> d!1725115 (= c!941389 (isEmpty!33670 s!2326))))

(declare-fun e!3348839 () Bool)

(assert (=> d!1725115 (= (matchZipper!1410 lt!2201401 s!2326) e!3348839)))

(declare-fun b!5401119 () Bool)

(assert (=> b!5401119 (= e!3348839 (nullableZipper!1433 lt!2201401))))

(declare-fun b!5401120 () Bool)

(assert (=> b!5401120 (= e!3348839 (matchZipper!1410 (derivationStepZipper!1405 lt!2201401 (head!11585 s!2326)) (tail!10682 s!2326)))))

(assert (= (and d!1725115 c!941389) b!5401119))

(assert (= (and d!1725115 (not c!941389)) b!5401120))

(declare-fun m!6425688 () Bool)

(assert (=> d!1725115 m!6425688))

(declare-fun m!6425690 () Bool)

(assert (=> b!5401119 m!6425690))

(declare-fun m!6425692 () Bool)

(assert (=> b!5401120 m!6425692))

(assert (=> b!5401120 m!6425692))

(declare-fun m!6425694 () Bool)

(assert (=> b!5401120 m!6425694))

(declare-fun m!6425696 () Bool)

(assert (=> b!5401120 m!6425696))

(assert (=> b!5401120 m!6425694))

(assert (=> b!5401120 m!6425696))

(declare-fun m!6425698 () Bool)

(assert (=> b!5401120 m!6425698))

(assert (=> b!5400878 d!1725115))

(declare-fun d!1725117 () Bool)

(declare-fun lt!2201600 () Regex!15166)

(assert (=> d!1725117 (validRegex!6902 lt!2201600)))

(assert (=> d!1725117 (= lt!2201600 (generalisedUnion!1095 (unfocusZipperList!608 lt!2201394)))))

(assert (=> d!1725117 (= (unfocusZipper!908 lt!2201394) lt!2201600)))

(declare-fun bs!1248286 () Bool)

(assert (= bs!1248286 d!1725117))

(declare-fun m!6425700 () Bool)

(assert (=> bs!1248286 m!6425700))

(declare-fun m!6425702 () Bool)

(assert (=> bs!1248286 m!6425702))

(assert (=> bs!1248286 m!6425702))

(declare-fun m!6425704 () Bool)

(assert (=> bs!1248286 m!6425704))

(assert (=> b!5400880 d!1725117))

(declare-fun d!1725119 () Bool)

(assert (=> d!1725119 (= (matchR!7351 (reg!15495 (regOne!30844 r!7292)) (_1!35668 lt!2201433)) (matchZipper!1410 lt!2201400 (_1!35668 lt!2201433)))))

(declare-fun lt!2201603 () Unit!154186)

(declare-fun choose!40689 ((Set Context!9100) List!61798 Regex!15166 List!61799) Unit!154186)

(assert (=> d!1725119 (= lt!2201603 (choose!40689 lt!2201400 lt!2201387 (reg!15495 (regOne!30844 r!7292)) (_1!35668 lt!2201433)))))

(assert (=> d!1725119 (validRegex!6902 (reg!15495 (regOne!30844 r!7292)))))

(assert (=> d!1725119 (= (theoremZipperRegexEquiv!480 lt!2201400 lt!2201387 (reg!15495 (regOne!30844 r!7292)) (_1!35668 lt!2201433)) lt!2201603)))

(declare-fun bs!1248287 () Bool)

(assert (= bs!1248287 d!1725119))

(assert (=> bs!1248287 m!6425426))

(assert (=> bs!1248287 m!6425472))

(declare-fun m!6425706 () Bool)

(assert (=> bs!1248287 m!6425706))

(declare-fun m!6425708 () Bool)

(assert (=> bs!1248287 m!6425708))

(assert (=> b!5400879 d!1725119))

(declare-fun bs!1248288 () Bool)

(declare-fun d!1725121 () Bool)

(assert (= bs!1248288 (and d!1725121 b!5400892)))

(declare-fun lambda!281241 () Int)

(assert (=> bs!1248288 (= lambda!281241 lambda!281208)))

(declare-fun bs!1248289 () Bool)

(assert (= bs!1248289 (and d!1725121 d!1725105)))

(assert (=> bs!1248289 (= lambda!281241 lambda!281238)))

(assert (=> d!1725121 (matchZipper!1410 (set.insert (Context!9101 (++!13505 (exprs!5050 lt!2201388) (exprs!5050 lt!2201410))) (as set.empty (Set Context!9100))) (++!13506 (_1!35668 lt!2201433) (_2!35668 lt!2201433)))))

(declare-fun lt!2201609 () Unit!154186)

(assert (=> d!1725121 (= lt!2201609 (lemmaConcatPreservesForall!191 (exprs!5050 lt!2201388) (exprs!5050 lt!2201410) lambda!281241))))

(declare-fun lt!2201608 () Unit!154186)

(declare-fun choose!40690 (Context!9100 Context!9100 List!61799 List!61799) Unit!154186)

(assert (=> d!1725121 (= lt!2201608 (choose!40690 lt!2201388 lt!2201410 (_1!35668 lt!2201433) (_2!35668 lt!2201433)))))

(assert (=> d!1725121 (matchZipper!1410 (set.insert lt!2201388 (as set.empty (Set Context!9100))) (_1!35668 lt!2201433))))

(assert (=> d!1725121 (= (lemmaConcatenateContextMatchesConcatOfStrings!39 lt!2201388 lt!2201410 (_1!35668 lt!2201433) (_2!35668 lt!2201433)) lt!2201608)))

(declare-fun bs!1248290 () Bool)

(assert (= bs!1248290 d!1725121))

(declare-fun m!6425710 () Bool)

(assert (=> bs!1248290 m!6425710))

(declare-fun m!6425712 () Bool)

(assert (=> bs!1248290 m!6425712))

(assert (=> bs!1248290 m!6425402))

(declare-fun m!6425714 () Bool)

(assert (=> bs!1248290 m!6425714))

(assert (=> bs!1248290 m!6425458))

(declare-fun m!6425716 () Bool)

(assert (=> bs!1248290 m!6425716))

(assert (=> bs!1248290 m!6425402))

(declare-fun m!6425718 () Bool)

(assert (=> bs!1248290 m!6425718))

(declare-fun m!6425720 () Bool)

(assert (=> bs!1248290 m!6425720))

(assert (=> bs!1248290 m!6425458))

(assert (=> bs!1248290 m!6425712))

(assert (=> b!5400879 d!1725121))

(declare-fun b!5401149 () Bool)

(declare-fun e!3348856 () Bool)

(declare-fun derivativeStep!4254 (Regex!15166 C!30602) Regex!15166)

(assert (=> b!5401149 (= e!3348856 (matchR!7351 (derivativeStep!4254 lt!2201389 (head!11585 lt!2201430)) (tail!10682 lt!2201430)))))

(declare-fun b!5401150 () Bool)

(declare-fun e!3348860 () Bool)

(declare-fun lt!2201612 () Bool)

(assert (=> b!5401150 (= e!3348860 (not lt!2201612))))

(declare-fun b!5401151 () Bool)

(declare-fun e!3348858 () Bool)

(assert (=> b!5401151 (= e!3348858 e!3348860)))

(declare-fun c!941398 () Bool)

(assert (=> b!5401151 (= c!941398 (is-EmptyLang!15166 lt!2201389))))

(declare-fun b!5401152 () Bool)

(declare-fun e!3348855 () Bool)

(declare-fun e!3348859 () Bool)

(assert (=> b!5401152 (= e!3348855 e!3348859)))

(declare-fun res!2296112 () Bool)

(assert (=> b!5401152 (=> (not res!2296112) (not e!3348859))))

(assert (=> b!5401152 (= res!2296112 (not lt!2201612))))

(declare-fun b!5401154 () Bool)

(declare-fun res!2296113 () Bool)

(declare-fun e!3348857 () Bool)

(assert (=> b!5401154 (=> (not res!2296113) (not e!3348857))))

(assert (=> b!5401154 (= res!2296113 (isEmpty!33670 (tail!10682 lt!2201430)))))

(declare-fun b!5401155 () Bool)

(declare-fun e!3348854 () Bool)

(assert (=> b!5401155 (= e!3348854 (not (= (head!11585 lt!2201430) (c!941352 lt!2201389))))))

(declare-fun b!5401156 () Bool)

(assert (=> b!5401156 (= e!3348857 (= (head!11585 lt!2201430) (c!941352 lt!2201389)))))

(declare-fun bm!386523 () Bool)

(declare-fun call!386528 () Bool)

(assert (=> bm!386523 (= call!386528 (isEmpty!33670 lt!2201430))))

(declare-fun b!5401157 () Bool)

(assert (=> b!5401157 (= e!3348856 (nullable!5335 lt!2201389))))

(declare-fun b!5401158 () Bool)

(declare-fun res!2296116 () Bool)

(assert (=> b!5401158 (=> res!2296116 e!3348855)))

(assert (=> b!5401158 (= res!2296116 e!3348857)))

(declare-fun res!2296115 () Bool)

(assert (=> b!5401158 (=> (not res!2296115) (not e!3348857))))

(assert (=> b!5401158 (= res!2296115 lt!2201612)))

(declare-fun b!5401159 () Bool)

(declare-fun res!2296118 () Bool)

(assert (=> b!5401159 (=> res!2296118 e!3348854)))

(assert (=> b!5401159 (= res!2296118 (not (isEmpty!33670 (tail!10682 lt!2201430))))))

(declare-fun b!5401160 () Bool)

(assert (=> b!5401160 (= e!3348858 (= lt!2201612 call!386528))))

(declare-fun b!5401161 () Bool)

(declare-fun res!2296119 () Bool)

(assert (=> b!5401161 (=> (not res!2296119) (not e!3348857))))

(assert (=> b!5401161 (= res!2296119 (not call!386528))))

(declare-fun b!5401162 () Bool)

(declare-fun res!2296114 () Bool)

(assert (=> b!5401162 (=> res!2296114 e!3348855)))

(assert (=> b!5401162 (= res!2296114 (not (is-ElementMatch!15166 lt!2201389)))))

(assert (=> b!5401162 (= e!3348860 e!3348855)))

(declare-fun b!5401153 () Bool)

(assert (=> b!5401153 (= e!3348859 e!3348854)))

(declare-fun res!2296117 () Bool)

(assert (=> b!5401153 (=> res!2296117 e!3348854)))

(assert (=> b!5401153 (= res!2296117 call!386528)))

(declare-fun d!1725123 () Bool)

(assert (=> d!1725123 e!3348858))

(declare-fun c!941397 () Bool)

(assert (=> d!1725123 (= c!941397 (is-EmptyExpr!15166 lt!2201389))))

(assert (=> d!1725123 (= lt!2201612 e!3348856)))

(declare-fun c!941396 () Bool)

(assert (=> d!1725123 (= c!941396 (isEmpty!33670 lt!2201430))))

(assert (=> d!1725123 (validRegex!6902 lt!2201389)))

(assert (=> d!1725123 (= (matchR!7351 lt!2201389 lt!2201430) lt!2201612)))

(assert (= (and d!1725123 c!941396) b!5401157))

(assert (= (and d!1725123 (not c!941396)) b!5401149))

(assert (= (and d!1725123 c!941397) b!5401160))

(assert (= (and d!1725123 (not c!941397)) b!5401151))

(assert (= (and b!5401151 c!941398) b!5401150))

(assert (= (and b!5401151 (not c!941398)) b!5401162))

(assert (= (and b!5401162 (not res!2296114)) b!5401158))

(assert (= (and b!5401158 res!2296115) b!5401161))

(assert (= (and b!5401161 res!2296119) b!5401154))

(assert (= (and b!5401154 res!2296113) b!5401156))

(assert (= (and b!5401158 (not res!2296116)) b!5401152))

(assert (= (and b!5401152 res!2296112) b!5401153))

(assert (= (and b!5401153 (not res!2296117)) b!5401159))

(assert (= (and b!5401159 (not res!2296118)) b!5401155))

(assert (= (or b!5401160 b!5401153 b!5401161) bm!386523))

(declare-fun m!6425722 () Bool)

(assert (=> b!5401159 m!6425722))

(assert (=> b!5401159 m!6425722))

(declare-fun m!6425724 () Bool)

(assert (=> b!5401159 m!6425724))

(declare-fun m!6425726 () Bool)

(assert (=> b!5401157 m!6425726))

(assert (=> b!5401154 m!6425722))

(assert (=> b!5401154 m!6425722))

(assert (=> b!5401154 m!6425724))

(declare-fun m!6425728 () Bool)

(assert (=> d!1725123 m!6425728))

(assert (=> d!1725123 m!6425434))

(declare-fun m!6425730 () Bool)

(assert (=> b!5401156 m!6425730))

(assert (=> bm!386523 m!6425728))

(assert (=> b!5401155 m!6425730))

(assert (=> b!5401149 m!6425730))

(assert (=> b!5401149 m!6425730))

(declare-fun m!6425732 () Bool)

(assert (=> b!5401149 m!6425732))

(assert (=> b!5401149 m!6425722))

(assert (=> b!5401149 m!6425732))

(assert (=> b!5401149 m!6425722))

(declare-fun m!6425734 () Bool)

(assert (=> b!5401149 m!6425734))

(assert (=> b!5400879 d!1725123))

(declare-fun d!1725125 () Bool)

(assert (=> d!1725125 (= (matchR!7351 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292)) s!2326) (matchR!7351 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) (Concat!24011 lt!2201395 (regTwo!30844 r!7292))) s!2326))))

(declare-fun lt!2201615 () Unit!154186)

(declare-fun choose!40691 (Regex!15166 Regex!15166 Regex!15166 List!61799) Unit!154186)

(assert (=> d!1725125 (= lt!2201615 (choose!40691 (reg!15495 (regOne!30844 r!7292)) lt!2201395 (regTwo!30844 r!7292) s!2326))))

(declare-fun e!3348863 () Bool)

(assert (=> d!1725125 e!3348863))

(declare-fun res!2296125 () Bool)

(assert (=> d!1725125 (=> (not res!2296125) (not e!3348863))))

(assert (=> d!1725125 (= res!2296125 (validRegex!6902 (reg!15495 (regOne!30844 r!7292))))))

(assert (=> d!1725125 (= (lemmaConcatAssociative!19 (reg!15495 (regOne!30844 r!7292)) lt!2201395 (regTwo!30844 r!7292) s!2326) lt!2201615)))

(declare-fun b!5401167 () Bool)

(declare-fun res!2296126 () Bool)

(assert (=> b!5401167 (=> (not res!2296126) (not e!3348863))))

(assert (=> b!5401167 (= res!2296126 (validRegex!6902 lt!2201395))))

(declare-fun b!5401168 () Bool)

(assert (=> b!5401168 (= e!3348863 (validRegex!6902 (regTwo!30844 r!7292)))))

(assert (= (and d!1725125 res!2296125) b!5401167))

(assert (= (and b!5401167 res!2296126) b!5401168))

(assert (=> d!1725125 m!6425440))

(declare-fun m!6425736 () Bool)

(assert (=> d!1725125 m!6425736))

(declare-fun m!6425738 () Bool)

(assert (=> d!1725125 m!6425738))

(assert (=> d!1725125 m!6425708))

(declare-fun m!6425740 () Bool)

(assert (=> b!5401167 m!6425740))

(declare-fun m!6425742 () Bool)

(assert (=> b!5401168 m!6425742))

(assert (=> b!5400879 d!1725125))

(declare-fun e!3348866 () Bool)

(declare-fun b!5401169 () Bool)

(assert (=> b!5401169 (= e!3348866 (matchR!7351 (derivativeStep!4254 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292)) (head!11585 s!2326)) (tail!10682 s!2326)))))

(declare-fun b!5401170 () Bool)

(declare-fun e!3348870 () Bool)

(declare-fun lt!2201616 () Bool)

(assert (=> b!5401170 (= e!3348870 (not lt!2201616))))

(declare-fun b!5401171 () Bool)

(declare-fun e!3348868 () Bool)

(assert (=> b!5401171 (= e!3348868 e!3348870)))

(declare-fun c!941401 () Bool)

(assert (=> b!5401171 (= c!941401 (is-EmptyLang!15166 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292))))))

(declare-fun b!5401172 () Bool)

(declare-fun e!3348865 () Bool)

(declare-fun e!3348869 () Bool)

(assert (=> b!5401172 (= e!3348865 e!3348869)))

(declare-fun res!2296127 () Bool)

(assert (=> b!5401172 (=> (not res!2296127) (not e!3348869))))

(assert (=> b!5401172 (= res!2296127 (not lt!2201616))))

(declare-fun b!5401174 () Bool)

(declare-fun res!2296128 () Bool)

(declare-fun e!3348867 () Bool)

(assert (=> b!5401174 (=> (not res!2296128) (not e!3348867))))

(assert (=> b!5401174 (= res!2296128 (isEmpty!33670 (tail!10682 s!2326)))))

(declare-fun e!3348864 () Bool)

(declare-fun b!5401175 () Bool)

(assert (=> b!5401175 (= e!3348864 (not (= (head!11585 s!2326) (c!941352 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292))))))))

(declare-fun b!5401176 () Bool)

(assert (=> b!5401176 (= e!3348867 (= (head!11585 s!2326) (c!941352 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292)))))))

(declare-fun bm!386524 () Bool)

(declare-fun call!386529 () Bool)

(assert (=> bm!386524 (= call!386529 (isEmpty!33670 s!2326))))

(declare-fun b!5401177 () Bool)

(assert (=> b!5401177 (= e!3348866 (nullable!5335 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292))))))

(declare-fun b!5401178 () Bool)

(declare-fun res!2296131 () Bool)

(assert (=> b!5401178 (=> res!2296131 e!3348865)))

(assert (=> b!5401178 (= res!2296131 e!3348867)))

(declare-fun res!2296130 () Bool)

(assert (=> b!5401178 (=> (not res!2296130) (not e!3348867))))

(assert (=> b!5401178 (= res!2296130 lt!2201616)))

(declare-fun b!5401179 () Bool)

(declare-fun res!2296133 () Bool)

(assert (=> b!5401179 (=> res!2296133 e!3348864)))

(assert (=> b!5401179 (= res!2296133 (not (isEmpty!33670 (tail!10682 s!2326))))))

(declare-fun b!5401180 () Bool)

(assert (=> b!5401180 (= e!3348868 (= lt!2201616 call!386529))))

(declare-fun b!5401181 () Bool)

(declare-fun res!2296134 () Bool)

(assert (=> b!5401181 (=> (not res!2296134) (not e!3348867))))

(assert (=> b!5401181 (= res!2296134 (not call!386529))))

(declare-fun b!5401182 () Bool)

(declare-fun res!2296129 () Bool)

(assert (=> b!5401182 (=> res!2296129 e!3348865)))

(assert (=> b!5401182 (= res!2296129 (not (is-ElementMatch!15166 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292)))))))

(assert (=> b!5401182 (= e!3348870 e!3348865)))

(declare-fun b!5401173 () Bool)

(assert (=> b!5401173 (= e!3348869 e!3348864)))

(declare-fun res!2296132 () Bool)

(assert (=> b!5401173 (=> res!2296132 e!3348864)))

(assert (=> b!5401173 (= res!2296132 call!386529)))

(declare-fun d!1725127 () Bool)

(assert (=> d!1725127 e!3348868))

(declare-fun c!941400 () Bool)

(assert (=> d!1725127 (= c!941400 (is-EmptyExpr!15166 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292))))))

(assert (=> d!1725127 (= lt!2201616 e!3348866)))

(declare-fun c!941399 () Bool)

(assert (=> d!1725127 (= c!941399 (isEmpty!33670 s!2326))))

(assert (=> d!1725127 (validRegex!6902 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292)))))

(assert (=> d!1725127 (= (matchR!7351 (Concat!24011 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201395) (regTwo!30844 r!7292)) s!2326) lt!2201616)))

(assert (= (and d!1725127 c!941399) b!5401177))

(assert (= (and d!1725127 (not c!941399)) b!5401169))

(assert (= (and d!1725127 c!941400) b!5401180))

(assert (= (and d!1725127 (not c!941400)) b!5401171))

(assert (= (and b!5401171 c!941401) b!5401170))

(assert (= (and b!5401171 (not c!941401)) b!5401182))

(assert (= (and b!5401182 (not res!2296129)) b!5401178))

(assert (= (and b!5401178 res!2296130) b!5401181))

(assert (= (and b!5401181 res!2296134) b!5401174))

(assert (= (and b!5401174 res!2296128) b!5401176))

(assert (= (and b!5401178 (not res!2296131)) b!5401172))

(assert (= (and b!5401172 res!2296127) b!5401173))

(assert (= (and b!5401173 (not res!2296132)) b!5401179))

(assert (= (and b!5401179 (not res!2296133)) b!5401175))

(assert (= (or b!5401180 b!5401173 b!5401181) bm!386524))

(assert (=> b!5401179 m!6425696))

(assert (=> b!5401179 m!6425696))

(declare-fun m!6425744 () Bool)

(assert (=> b!5401179 m!6425744))

(declare-fun m!6425746 () Bool)

(assert (=> b!5401177 m!6425746))

(assert (=> b!5401174 m!6425696))

(assert (=> b!5401174 m!6425696))

(assert (=> b!5401174 m!6425744))

(assert (=> d!1725127 m!6425688))

(declare-fun m!6425748 () Bool)

(assert (=> d!1725127 m!6425748))

(assert (=> b!5401176 m!6425692))

(assert (=> bm!386524 m!6425688))

(assert (=> b!5401175 m!6425692))

(assert (=> b!5401169 m!6425692))

(assert (=> b!5401169 m!6425692))

(declare-fun m!6425750 () Bool)

(assert (=> b!5401169 m!6425750))

(assert (=> b!5401169 m!6425696))

(assert (=> b!5401169 m!6425750))

(assert (=> b!5401169 m!6425696))

(declare-fun m!6425752 () Bool)

(assert (=> b!5401169 m!6425752))

(assert (=> b!5400879 d!1725127))

(declare-fun d!1725129 () Bool)

(assert (=> d!1725129 (forall!14526 (++!13505 lt!2201416 lt!2201415) lambda!281208)))

(declare-fun lt!2201619 () Unit!154186)

(declare-fun choose!40692 (List!61797 List!61797 Int) Unit!154186)

(assert (=> d!1725129 (= lt!2201619 (choose!40692 lt!2201416 lt!2201415 lambda!281208))))

(assert (=> d!1725129 (forall!14526 lt!2201416 lambda!281208)))

(assert (=> d!1725129 (= (lemmaConcatPreservesForall!191 lt!2201416 lt!2201415 lambda!281208) lt!2201619)))

(declare-fun bs!1248291 () Bool)

(assert (= bs!1248291 d!1725129))

(assert (=> bs!1248291 m!6425424))

(assert (=> bs!1248291 m!6425424))

(declare-fun m!6425754 () Bool)

(assert (=> bs!1248291 m!6425754))

(declare-fun m!6425756 () Bool)

(assert (=> bs!1248291 m!6425756))

(declare-fun m!6425758 () Bool)

(assert (=> bs!1248291 m!6425758))

(assert (=> b!5400879 d!1725129))

(declare-fun b!5401183 () Bool)

(declare-fun e!3348873 () Bool)

(assert (=> b!5401183 (= e!3348873 (matchR!7351 (derivativeStep!4254 lt!2201434 (head!11585 (_2!35668 lt!2201433))) (tail!10682 (_2!35668 lt!2201433))))))

(declare-fun b!5401184 () Bool)

(declare-fun e!3348877 () Bool)

(declare-fun lt!2201620 () Bool)

(assert (=> b!5401184 (= e!3348877 (not lt!2201620))))

(declare-fun b!5401185 () Bool)

(declare-fun e!3348875 () Bool)

(assert (=> b!5401185 (= e!3348875 e!3348877)))

(declare-fun c!941404 () Bool)

(assert (=> b!5401185 (= c!941404 (is-EmptyLang!15166 lt!2201434))))

(declare-fun b!5401186 () Bool)

(declare-fun e!3348872 () Bool)

(declare-fun e!3348876 () Bool)

(assert (=> b!5401186 (= e!3348872 e!3348876)))

(declare-fun res!2296135 () Bool)

(assert (=> b!5401186 (=> (not res!2296135) (not e!3348876))))

(assert (=> b!5401186 (= res!2296135 (not lt!2201620))))

(declare-fun b!5401188 () Bool)

(declare-fun res!2296136 () Bool)

(declare-fun e!3348874 () Bool)

(assert (=> b!5401188 (=> (not res!2296136) (not e!3348874))))

(assert (=> b!5401188 (= res!2296136 (isEmpty!33670 (tail!10682 (_2!35668 lt!2201433))))))

(declare-fun b!5401189 () Bool)

(declare-fun e!3348871 () Bool)

(assert (=> b!5401189 (= e!3348871 (not (= (head!11585 (_2!35668 lt!2201433)) (c!941352 lt!2201434))))))

(declare-fun b!5401190 () Bool)

(assert (=> b!5401190 (= e!3348874 (= (head!11585 (_2!35668 lt!2201433)) (c!941352 lt!2201434)))))

(declare-fun bm!386525 () Bool)

(declare-fun call!386530 () Bool)

(assert (=> bm!386525 (= call!386530 (isEmpty!33670 (_2!35668 lt!2201433)))))

(declare-fun b!5401191 () Bool)

(assert (=> b!5401191 (= e!3348873 (nullable!5335 lt!2201434))))

(declare-fun b!5401192 () Bool)

(declare-fun res!2296139 () Bool)

(assert (=> b!5401192 (=> res!2296139 e!3348872)))

(assert (=> b!5401192 (= res!2296139 e!3348874)))

(declare-fun res!2296138 () Bool)

(assert (=> b!5401192 (=> (not res!2296138) (not e!3348874))))

(assert (=> b!5401192 (= res!2296138 lt!2201620)))

(declare-fun b!5401193 () Bool)

(declare-fun res!2296141 () Bool)

(assert (=> b!5401193 (=> res!2296141 e!3348871)))

(assert (=> b!5401193 (= res!2296141 (not (isEmpty!33670 (tail!10682 (_2!35668 lt!2201433)))))))

(declare-fun b!5401194 () Bool)

(assert (=> b!5401194 (= e!3348875 (= lt!2201620 call!386530))))

(declare-fun b!5401195 () Bool)

(declare-fun res!2296142 () Bool)

(assert (=> b!5401195 (=> (not res!2296142) (not e!3348874))))

(assert (=> b!5401195 (= res!2296142 (not call!386530))))

(declare-fun b!5401196 () Bool)

(declare-fun res!2296137 () Bool)

(assert (=> b!5401196 (=> res!2296137 e!3348872)))

(assert (=> b!5401196 (= res!2296137 (not (is-ElementMatch!15166 lt!2201434)))))

(assert (=> b!5401196 (= e!3348877 e!3348872)))

(declare-fun b!5401187 () Bool)

(assert (=> b!5401187 (= e!3348876 e!3348871)))

(declare-fun res!2296140 () Bool)

(assert (=> b!5401187 (=> res!2296140 e!3348871)))

(assert (=> b!5401187 (= res!2296140 call!386530)))

(declare-fun d!1725131 () Bool)

(assert (=> d!1725131 e!3348875))

(declare-fun c!941403 () Bool)

(assert (=> d!1725131 (= c!941403 (is-EmptyExpr!15166 lt!2201434))))

(assert (=> d!1725131 (= lt!2201620 e!3348873)))

(declare-fun c!941402 () Bool)

(assert (=> d!1725131 (= c!941402 (isEmpty!33670 (_2!35668 lt!2201433)))))

(assert (=> d!1725131 (validRegex!6902 lt!2201434)))

(assert (=> d!1725131 (= (matchR!7351 lt!2201434 (_2!35668 lt!2201433)) lt!2201620)))

(assert (= (and d!1725131 c!941402) b!5401191))

(assert (= (and d!1725131 (not c!941402)) b!5401183))

(assert (= (and d!1725131 c!941403) b!5401194))

(assert (= (and d!1725131 (not c!941403)) b!5401185))

(assert (= (and b!5401185 c!941404) b!5401184))

(assert (= (and b!5401185 (not c!941404)) b!5401196))

(assert (= (and b!5401196 (not res!2296137)) b!5401192))

(assert (= (and b!5401192 res!2296138) b!5401195))

(assert (= (and b!5401195 res!2296142) b!5401188))

(assert (= (and b!5401188 res!2296136) b!5401190))

(assert (= (and b!5401192 (not res!2296139)) b!5401186))

(assert (= (and b!5401186 res!2296135) b!5401187))

(assert (= (and b!5401187 (not res!2296140)) b!5401193))

(assert (= (and b!5401193 (not res!2296141)) b!5401189))

(assert (= (or b!5401194 b!5401187 b!5401195) bm!386525))

(declare-fun m!6425760 () Bool)

(assert (=> b!5401193 m!6425760))

(assert (=> b!5401193 m!6425760))

(declare-fun m!6425762 () Bool)

(assert (=> b!5401193 m!6425762))

(declare-fun m!6425764 () Bool)

(assert (=> b!5401191 m!6425764))

(assert (=> b!5401188 m!6425760))

(assert (=> b!5401188 m!6425760))

(assert (=> b!5401188 m!6425762))

(declare-fun m!6425766 () Bool)

(assert (=> d!1725131 m!6425766))

(declare-fun m!6425768 () Bool)

(assert (=> d!1725131 m!6425768))

(declare-fun m!6425770 () Bool)

(assert (=> b!5401190 m!6425770))

(assert (=> bm!386525 m!6425766))

(assert (=> b!5401189 m!6425770))

(assert (=> b!5401183 m!6425770))

(assert (=> b!5401183 m!6425770))

(declare-fun m!6425772 () Bool)

(assert (=> b!5401183 m!6425772))

(assert (=> b!5401183 m!6425760))

(assert (=> b!5401183 m!6425772))

(assert (=> b!5401183 m!6425760))

(declare-fun m!6425774 () Bool)

(assert (=> b!5401183 m!6425774))

(assert (=> b!5400879 d!1725131))

(declare-fun d!1725133 () Bool)

(assert (=> d!1725133 (= (matchR!7351 lt!2201434 (_2!35668 lt!2201433)) (matchZipper!1410 lt!2201403 (_2!35668 lt!2201433)))))

(declare-fun lt!2201621 () Unit!154186)

(assert (=> d!1725133 (= lt!2201621 (choose!40689 lt!2201403 lt!2201394 lt!2201434 (_2!35668 lt!2201433)))))

(assert (=> d!1725133 (validRegex!6902 lt!2201434)))

(assert (=> d!1725133 (= (theoremZipperRegexEquiv!480 lt!2201403 lt!2201394 lt!2201434 (_2!35668 lt!2201433)) lt!2201621)))

(declare-fun bs!1248292 () Bool)

(assert (= bs!1248292 d!1725133))

(assert (=> bs!1248292 m!6425432))

(assert (=> bs!1248292 m!6425486))

(declare-fun m!6425776 () Bool)

(assert (=> bs!1248292 m!6425776))

(assert (=> bs!1248292 m!6425768))

(assert (=> b!5400879 d!1725133))

(declare-fun b!5401197 () Bool)

(declare-fun e!3348881 () Bool)

(declare-fun call!386532 () Bool)

(assert (=> b!5401197 (= e!3348881 call!386532)))

(declare-fun b!5401198 () Bool)

(declare-fun e!3348883 () Bool)

(assert (=> b!5401198 (= e!3348883 call!386532)))

(declare-fun d!1725135 () Bool)

(declare-fun res!2296144 () Bool)

(declare-fun e!3348884 () Bool)

(assert (=> d!1725135 (=> res!2296144 e!3348884)))

(assert (=> d!1725135 (= res!2296144 (is-ElementMatch!15166 lt!2201389))))

(assert (=> d!1725135 (= (validRegex!6902 lt!2201389) e!3348884)))

(declare-fun b!5401199 () Bool)

(declare-fun e!3348882 () Bool)

(declare-fun call!386531 () Bool)

(assert (=> b!5401199 (= e!3348882 call!386531)))

(declare-fun b!5401200 () Bool)

(declare-fun e!3348880 () Bool)

(assert (=> b!5401200 (= e!3348880 e!3348883)))

(declare-fun res!2296143 () Bool)

(assert (=> b!5401200 (=> (not res!2296143) (not e!3348883))))

(declare-fun call!386533 () Bool)

(assert (=> b!5401200 (= res!2296143 call!386533)))

(declare-fun bm!386526 () Bool)

(declare-fun c!941406 () Bool)

(assert (=> bm!386526 (= call!386533 (validRegex!6902 (ite c!941406 (regOne!30845 lt!2201389) (regOne!30844 lt!2201389))))))

(declare-fun bm!386527 () Bool)

(assert (=> bm!386527 (= call!386532 call!386531)))

(declare-fun b!5401201 () Bool)

(declare-fun res!2296145 () Bool)

(assert (=> b!5401201 (=> res!2296145 e!3348880)))

(assert (=> b!5401201 (= res!2296145 (not (is-Concat!24011 lt!2201389)))))

(declare-fun e!3348879 () Bool)

(assert (=> b!5401201 (= e!3348879 e!3348880)))

(declare-fun c!941405 () Bool)

(declare-fun bm!386528 () Bool)

(assert (=> bm!386528 (= call!386531 (validRegex!6902 (ite c!941405 (reg!15495 lt!2201389) (ite c!941406 (regTwo!30845 lt!2201389) (regTwo!30844 lt!2201389)))))))

(declare-fun b!5401202 () Bool)

(declare-fun e!3348878 () Bool)

(assert (=> b!5401202 (= e!3348878 e!3348879)))

(assert (=> b!5401202 (= c!941406 (is-Union!15166 lt!2201389))))

(declare-fun b!5401203 () Bool)

(assert (=> b!5401203 (= e!3348884 e!3348878)))

(assert (=> b!5401203 (= c!941405 (is-Star!15166 lt!2201389))))

(declare-fun b!5401204 () Bool)

(declare-fun res!2296146 () Bool)

(assert (=> b!5401204 (=> (not res!2296146) (not e!3348881))))

(assert (=> b!5401204 (= res!2296146 call!386533)))

(assert (=> b!5401204 (= e!3348879 e!3348881)))

(declare-fun b!5401205 () Bool)

(assert (=> b!5401205 (= e!3348878 e!3348882)))

(declare-fun res!2296147 () Bool)

(assert (=> b!5401205 (= res!2296147 (not (nullable!5335 (reg!15495 lt!2201389))))))

(assert (=> b!5401205 (=> (not res!2296147) (not e!3348882))))

(assert (= (and d!1725135 (not res!2296144)) b!5401203))

(assert (= (and b!5401203 c!941405) b!5401205))

(assert (= (and b!5401203 (not c!941405)) b!5401202))

(assert (= (and b!5401205 res!2296147) b!5401199))

(assert (= (and b!5401202 c!941406) b!5401204))

(assert (= (and b!5401202 (not c!941406)) b!5401201))

(assert (= (and b!5401204 res!2296146) b!5401197))

(assert (= (and b!5401201 (not res!2296145)) b!5401200))

(assert (= (and b!5401200 res!2296143) b!5401198))

(assert (= (or b!5401197 b!5401198) bm!386527))

(assert (= (or b!5401204 b!5401200) bm!386526))

(assert (= (or b!5401199 bm!386527) bm!386528))

(declare-fun m!6425778 () Bool)

(assert (=> bm!386526 m!6425778))

(declare-fun m!6425780 () Bool)

(assert (=> bm!386528 m!6425780))

(declare-fun m!6425782 () Bool)

(assert (=> b!5401205 m!6425782))

(assert (=> b!5400879 d!1725135))

(declare-fun b!5401206 () Bool)

(declare-fun e!3348887 () Bool)

(assert (=> b!5401206 (= e!3348887 (matchR!7351 (derivativeStep!4254 (reg!15495 (regOne!30844 r!7292)) (head!11585 (_1!35668 lt!2201433))) (tail!10682 (_1!35668 lt!2201433))))))

(declare-fun b!5401207 () Bool)

(declare-fun e!3348891 () Bool)

(declare-fun lt!2201622 () Bool)

(assert (=> b!5401207 (= e!3348891 (not lt!2201622))))

(declare-fun b!5401208 () Bool)

(declare-fun e!3348889 () Bool)

(assert (=> b!5401208 (= e!3348889 e!3348891)))

(declare-fun c!941409 () Bool)

(assert (=> b!5401208 (= c!941409 (is-EmptyLang!15166 (reg!15495 (regOne!30844 r!7292))))))

(declare-fun b!5401209 () Bool)

(declare-fun e!3348886 () Bool)

(declare-fun e!3348890 () Bool)

(assert (=> b!5401209 (= e!3348886 e!3348890)))

(declare-fun res!2296148 () Bool)

(assert (=> b!5401209 (=> (not res!2296148) (not e!3348890))))

(assert (=> b!5401209 (= res!2296148 (not lt!2201622))))

(declare-fun b!5401211 () Bool)

(declare-fun res!2296149 () Bool)

(declare-fun e!3348888 () Bool)

(assert (=> b!5401211 (=> (not res!2296149) (not e!3348888))))

(assert (=> b!5401211 (= res!2296149 (isEmpty!33670 (tail!10682 (_1!35668 lt!2201433))))))

(declare-fun b!5401212 () Bool)

(declare-fun e!3348885 () Bool)

(assert (=> b!5401212 (= e!3348885 (not (= (head!11585 (_1!35668 lt!2201433)) (c!941352 (reg!15495 (regOne!30844 r!7292))))))))

(declare-fun b!5401213 () Bool)

(assert (=> b!5401213 (= e!3348888 (= (head!11585 (_1!35668 lt!2201433)) (c!941352 (reg!15495 (regOne!30844 r!7292)))))))

(declare-fun bm!386529 () Bool)

(declare-fun call!386534 () Bool)

(assert (=> bm!386529 (= call!386534 (isEmpty!33670 (_1!35668 lt!2201433)))))

(declare-fun b!5401214 () Bool)

(assert (=> b!5401214 (= e!3348887 (nullable!5335 (reg!15495 (regOne!30844 r!7292))))))

(declare-fun b!5401215 () Bool)

(declare-fun res!2296152 () Bool)

(assert (=> b!5401215 (=> res!2296152 e!3348886)))

(assert (=> b!5401215 (= res!2296152 e!3348888)))

(declare-fun res!2296151 () Bool)

(assert (=> b!5401215 (=> (not res!2296151) (not e!3348888))))

(assert (=> b!5401215 (= res!2296151 lt!2201622)))

(declare-fun b!5401216 () Bool)

(declare-fun res!2296154 () Bool)

(assert (=> b!5401216 (=> res!2296154 e!3348885)))

(assert (=> b!5401216 (= res!2296154 (not (isEmpty!33670 (tail!10682 (_1!35668 lt!2201433)))))))

(declare-fun b!5401217 () Bool)

(assert (=> b!5401217 (= e!3348889 (= lt!2201622 call!386534))))

(declare-fun b!5401218 () Bool)

(declare-fun res!2296155 () Bool)

(assert (=> b!5401218 (=> (not res!2296155) (not e!3348888))))

(assert (=> b!5401218 (= res!2296155 (not call!386534))))

(declare-fun b!5401219 () Bool)

(declare-fun res!2296150 () Bool)

(assert (=> b!5401219 (=> res!2296150 e!3348886)))

(assert (=> b!5401219 (= res!2296150 (not (is-ElementMatch!15166 (reg!15495 (regOne!30844 r!7292)))))))

(assert (=> b!5401219 (= e!3348891 e!3348886)))

(declare-fun b!5401210 () Bool)

(assert (=> b!5401210 (= e!3348890 e!3348885)))

(declare-fun res!2296153 () Bool)

(assert (=> b!5401210 (=> res!2296153 e!3348885)))

(assert (=> b!5401210 (= res!2296153 call!386534)))

(declare-fun d!1725137 () Bool)

(assert (=> d!1725137 e!3348889))

(declare-fun c!941408 () Bool)

(assert (=> d!1725137 (= c!941408 (is-EmptyExpr!15166 (reg!15495 (regOne!30844 r!7292))))))

(assert (=> d!1725137 (= lt!2201622 e!3348887)))

(declare-fun c!941407 () Bool)

(assert (=> d!1725137 (= c!941407 (isEmpty!33670 (_1!35668 lt!2201433)))))

(assert (=> d!1725137 (validRegex!6902 (reg!15495 (regOne!30844 r!7292)))))

(assert (=> d!1725137 (= (matchR!7351 (reg!15495 (regOne!30844 r!7292)) (_1!35668 lt!2201433)) lt!2201622)))

(assert (= (and d!1725137 c!941407) b!5401214))

(assert (= (and d!1725137 (not c!941407)) b!5401206))

(assert (= (and d!1725137 c!941408) b!5401217))

(assert (= (and d!1725137 (not c!941408)) b!5401208))

(assert (= (and b!5401208 c!941409) b!5401207))

(assert (= (and b!5401208 (not c!941409)) b!5401219))

(assert (= (and b!5401219 (not res!2296150)) b!5401215))

(assert (= (and b!5401215 res!2296151) b!5401218))

(assert (= (and b!5401218 res!2296155) b!5401211))

(assert (= (and b!5401211 res!2296149) b!5401213))

(assert (= (and b!5401215 (not res!2296152)) b!5401209))

(assert (= (and b!5401209 res!2296148) b!5401210))

(assert (= (and b!5401210 (not res!2296153)) b!5401216))

(assert (= (and b!5401216 (not res!2296154)) b!5401212))

(assert (= (or b!5401217 b!5401210 b!5401218) bm!386529))

(declare-fun m!6425784 () Bool)

(assert (=> b!5401216 m!6425784))

(assert (=> b!5401216 m!6425784))

(declare-fun m!6425786 () Bool)

(assert (=> b!5401216 m!6425786))

(declare-fun m!6425788 () Bool)

(assert (=> b!5401214 m!6425788))

(assert (=> b!5401211 m!6425784))

(assert (=> b!5401211 m!6425784))

(assert (=> b!5401211 m!6425786))

(declare-fun m!6425790 () Bool)

(assert (=> d!1725137 m!6425790))

(assert (=> d!1725137 m!6425708))

(declare-fun m!6425792 () Bool)

(assert (=> b!5401213 m!6425792))

(assert (=> bm!386529 m!6425790))

(assert (=> b!5401212 m!6425792))

(assert (=> b!5401206 m!6425792))

(assert (=> b!5401206 m!6425792))

(declare-fun m!6425794 () Bool)

(assert (=> b!5401206 m!6425794))

(assert (=> b!5401206 m!6425784))

(assert (=> b!5401206 m!6425794))

(assert (=> b!5401206 m!6425784))

(declare-fun m!6425796 () Bool)

(assert (=> b!5401206 m!6425796))

(assert (=> b!5400879 d!1725137))

(declare-fun d!1725139 () Bool)

(declare-fun c!941410 () Bool)

(assert (=> d!1725139 (= c!941410 (isEmpty!33670 lt!2201430))))

(declare-fun e!3348892 () Bool)

(assert (=> d!1725139 (= (matchZipper!1410 (set.insert (Context!9101 (++!13505 lt!2201416 lt!2201415)) (as set.empty (Set Context!9100))) lt!2201430) e!3348892)))

(declare-fun b!5401220 () Bool)

(assert (=> b!5401220 (= e!3348892 (nullableZipper!1433 (set.insert (Context!9101 (++!13505 lt!2201416 lt!2201415)) (as set.empty (Set Context!9100)))))))

(declare-fun b!5401221 () Bool)

(assert (=> b!5401221 (= e!3348892 (matchZipper!1410 (derivationStepZipper!1405 (set.insert (Context!9101 (++!13505 lt!2201416 lt!2201415)) (as set.empty (Set Context!9100))) (head!11585 lt!2201430)) (tail!10682 lt!2201430)))))

(assert (= (and d!1725139 c!941410) b!5401220))

(assert (= (and d!1725139 (not c!941410)) b!5401221))

(assert (=> d!1725139 m!6425728))

(assert (=> b!5401220 m!6425444))

(declare-fun m!6425798 () Bool)

(assert (=> b!5401220 m!6425798))

(assert (=> b!5401221 m!6425730))

(assert (=> b!5401221 m!6425444))

(assert (=> b!5401221 m!6425730))

(declare-fun m!6425800 () Bool)

(assert (=> b!5401221 m!6425800))

(assert (=> b!5401221 m!6425722))

(assert (=> b!5401221 m!6425800))

(assert (=> b!5401221 m!6425722))

(declare-fun m!6425802 () Bool)

(assert (=> b!5401221 m!6425802))

(assert (=> b!5400879 d!1725139))

(declare-fun lt!2201625 () List!61797)

(declare-fun e!3348898 () Bool)

(declare-fun b!5401233 () Bool)

(assert (=> b!5401233 (= e!3348898 (or (not (= lt!2201415 Nil!61673)) (= lt!2201625 lt!2201416)))))

(declare-fun b!5401231 () Bool)

(declare-fun e!3348897 () List!61797)

(assert (=> b!5401231 (= e!3348897 (Cons!61673 (h!68121 lt!2201416) (++!13505 (t!375020 lt!2201416) lt!2201415)))))

(declare-fun b!5401230 () Bool)

(assert (=> b!5401230 (= e!3348897 lt!2201415)))

(declare-fun b!5401232 () Bool)

(declare-fun res!2296161 () Bool)

(assert (=> b!5401232 (=> (not res!2296161) (not e!3348898))))

(declare-fun size!39834 (List!61797) Int)

(assert (=> b!5401232 (= res!2296161 (= (size!39834 lt!2201625) (+ (size!39834 lt!2201416) (size!39834 lt!2201415))))))

(declare-fun d!1725141 () Bool)

(assert (=> d!1725141 e!3348898))

(declare-fun res!2296160 () Bool)

(assert (=> d!1725141 (=> (not res!2296160) (not e!3348898))))

(declare-fun content!11048 (List!61797) (Set Regex!15166))

(assert (=> d!1725141 (= res!2296160 (= (content!11048 lt!2201625) (set.union (content!11048 lt!2201416) (content!11048 lt!2201415))))))

(assert (=> d!1725141 (= lt!2201625 e!3348897)))

(declare-fun c!941413 () Bool)

(assert (=> d!1725141 (= c!941413 (is-Nil!61673 lt!2201416))))

(assert (=> d!1725141 (= (++!13505 lt!2201416 lt!2201415) lt!2201625)))

(assert (= (and d!1725141 c!941413) b!5401230))

(assert (= (and d!1725141 (not c!941413)) b!5401231))

(assert (= (and d!1725141 res!2296160) b!5401232))

(assert (= (and b!5401232 res!2296161) b!5401233))

(declare-fun m!6425804 () Bool)

(assert (=> b!5401231 m!6425804))

(declare-fun m!6425806 () Bool)

(assert (=> b!5401232 m!6425806))

(declare-fun m!6425808 () Bool)

(assert (=> b!5401232 m!6425808))

(declare-fun m!6425810 () Bool)

(assert (=> b!5401232 m!6425810))

(declare-fun m!6425812 () Bool)

(assert (=> d!1725141 m!6425812))

(declare-fun m!6425814 () Bool)

(assert (=> d!1725141 m!6425814))

(declare-fun m!6425816 () Bool)

(assert (=> d!1725141 m!6425816))

(assert (=> b!5400879 d!1725141))

(declare-fun d!1725143 () Bool)

(assert (=> d!1725143 (matchR!7351 (Concat!24011 (reg!15495 (regOne!30844 r!7292)) lt!2201434) (++!13506 (_1!35668 lt!2201433) (_2!35668 lt!2201433)))))

(declare-fun lt!2201628 () Unit!154186)

(declare-fun choose!40693 (Regex!15166 Regex!15166 List!61799 List!61799) Unit!154186)

(assert (=> d!1725143 (= lt!2201628 (choose!40693 (reg!15495 (regOne!30844 r!7292)) lt!2201434 (_1!35668 lt!2201433) (_2!35668 lt!2201433)))))

(declare-fun e!3348901 () Bool)

(assert (=> d!1725143 e!3348901))

(declare-fun res!2296164 () Bool)

(assert (=> d!1725143 (=> (not res!2296164) (not e!3348901))))

(assert (=> d!1725143 (= res!2296164 (validRegex!6902 (reg!15495 (regOne!30844 r!7292))))))

(assert (=> d!1725143 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!189 (reg!15495 (regOne!30844 r!7292)) lt!2201434 (_1!35668 lt!2201433) (_2!35668 lt!2201433)) lt!2201628)))

(declare-fun b!5401236 () Bool)

(assert (=> b!5401236 (= e!3348901 (validRegex!6902 lt!2201434))))

(assert (= (and d!1725143 res!2296164) b!5401236))

(assert (=> d!1725143 m!6425402))

(assert (=> d!1725143 m!6425402))

(declare-fun m!6425818 () Bool)

(assert (=> d!1725143 m!6425818))

(declare-fun m!6425820 () Bool)

(assert (=> d!1725143 m!6425820))

(assert (=> d!1725143 m!6425708))

(assert (=> b!5401236 m!6425768))

(assert (=> b!5400879 d!1725143))

(declare-fun d!1725145 () Bool)

(declare-fun e!3348904 () Bool)

(assert (=> d!1725145 (= (matchZipper!1410 (set.union lt!2201435 lt!2201413) (t!375022 s!2326)) e!3348904)))

(declare-fun res!2296167 () Bool)

(assert (=> d!1725145 (=> res!2296167 e!3348904)))

(assert (=> d!1725145 (= res!2296167 (matchZipper!1410 lt!2201435 (t!375022 s!2326)))))

(declare-fun lt!2201631 () Unit!154186)

(declare-fun choose!40694 ((Set Context!9100) (Set Context!9100) List!61799) Unit!154186)

(assert (=> d!1725145 (= lt!2201631 (choose!40694 lt!2201435 lt!2201413 (t!375022 s!2326)))))

(assert (=> d!1725145 (= (lemmaZipperConcatMatchesSameAsBothZippers!403 lt!2201435 lt!2201413 (t!375022 s!2326)) lt!2201631)))

(declare-fun b!5401239 () Bool)

(assert (=> b!5401239 (= e!3348904 (matchZipper!1410 lt!2201413 (t!375022 s!2326)))))

(assert (= (and d!1725145 (not res!2296167)) b!5401239))

(assert (=> d!1725145 m!6425356))

(assert (=> d!1725145 m!6425338))

(declare-fun m!6425822 () Bool)

(assert (=> d!1725145 m!6425822))

(assert (=> b!5401239 m!6425332))

(assert (=> b!5400859 d!1725145))

(declare-fun d!1725147 () Bool)

(declare-fun c!941414 () Bool)

(assert (=> d!1725147 (= c!941414 (isEmpty!33670 (t!375022 s!2326)))))

(declare-fun e!3348905 () Bool)

(assert (=> d!1725147 (= (matchZipper!1410 lt!2201435 (t!375022 s!2326)) e!3348905)))

(declare-fun b!5401240 () Bool)

(assert (=> b!5401240 (= e!3348905 (nullableZipper!1433 lt!2201435))))

(declare-fun b!5401241 () Bool)

(assert (=> b!5401241 (= e!3348905 (matchZipper!1410 (derivationStepZipper!1405 lt!2201435 (head!11585 (t!375022 s!2326))) (tail!10682 (t!375022 s!2326))))))

(assert (= (and d!1725147 c!941414) b!5401240))

(assert (= (and d!1725147 (not c!941414)) b!5401241))

(assert (=> d!1725147 m!6425676))

(declare-fun m!6425824 () Bool)

(assert (=> b!5401240 m!6425824))

(assert (=> b!5401241 m!6425680))

(assert (=> b!5401241 m!6425680))

(declare-fun m!6425826 () Bool)

(assert (=> b!5401241 m!6425826))

(assert (=> b!5401241 m!6425684))

(assert (=> b!5401241 m!6425826))

(assert (=> b!5401241 m!6425684))

(declare-fun m!6425828 () Bool)

(assert (=> b!5401241 m!6425828))

(assert (=> b!5400859 d!1725147))

(declare-fun d!1725149 () Bool)

(declare-fun c!941415 () Bool)

(assert (=> d!1725149 (= c!941415 (isEmpty!33670 (t!375022 s!2326)))))

(declare-fun e!3348906 () Bool)

(assert (=> d!1725149 (= (matchZipper!1410 (set.union lt!2201435 lt!2201413) (t!375022 s!2326)) e!3348906)))

(declare-fun b!5401242 () Bool)

(assert (=> b!5401242 (= e!3348906 (nullableZipper!1433 (set.union lt!2201435 lt!2201413)))))

(declare-fun b!5401243 () Bool)

(assert (=> b!5401243 (= e!3348906 (matchZipper!1410 (derivationStepZipper!1405 (set.union lt!2201435 lt!2201413) (head!11585 (t!375022 s!2326))) (tail!10682 (t!375022 s!2326))))))

(assert (= (and d!1725149 c!941415) b!5401242))

(assert (= (and d!1725149 (not c!941415)) b!5401243))

(assert (=> d!1725149 m!6425676))

(declare-fun m!6425830 () Bool)

(assert (=> b!5401242 m!6425830))

(assert (=> b!5401243 m!6425680))

(assert (=> b!5401243 m!6425680))

(declare-fun m!6425832 () Bool)

(assert (=> b!5401243 m!6425832))

(assert (=> b!5401243 m!6425684))

(assert (=> b!5401243 m!6425832))

(assert (=> b!5401243 m!6425684))

(declare-fun m!6425834 () Bool)

(assert (=> b!5401243 m!6425834))

(assert (=> b!5400859 d!1725149))

(declare-fun bs!1248293 () Bool)

(declare-fun d!1725151 () Bool)

(assert (= bs!1248293 (and d!1725151 b!5400892)))

(declare-fun lambda!281244 () Int)

(assert (=> bs!1248293 (= lambda!281244 lambda!281208)))

(declare-fun bs!1248294 () Bool)

(assert (= bs!1248294 (and d!1725151 d!1725105)))

(assert (=> bs!1248294 (= lambda!281244 lambda!281238)))

(declare-fun bs!1248295 () Bool)

(assert (= bs!1248295 (and d!1725151 d!1725121)))

(assert (=> bs!1248295 (= lambda!281244 lambda!281241)))

(declare-fun b!5401264 () Bool)

(declare-fun e!3348921 () Regex!15166)

(assert (=> b!5401264 (= e!3348921 (Union!15166 (h!68121 (unfocusZipperList!608 zl!343)) (generalisedUnion!1095 (t!375020 (unfocusZipperList!608 zl!343)))))))

(declare-fun b!5401265 () Bool)

(declare-fun e!3348924 () Bool)

(declare-fun e!3348923 () Bool)

(assert (=> b!5401265 (= e!3348924 e!3348923)))

(declare-fun c!941427 () Bool)

(assert (=> b!5401265 (= c!941427 (isEmpty!33666 (unfocusZipperList!608 zl!343)))))

(declare-fun b!5401267 () Bool)

(assert (=> b!5401267 (= e!3348921 EmptyLang!15166)))

(declare-fun b!5401268 () Bool)

(declare-fun e!3348920 () Bool)

(assert (=> b!5401268 (= e!3348923 e!3348920)))

(declare-fun c!941426 () Bool)

(assert (=> b!5401268 (= c!941426 (isEmpty!33666 (tail!10681 (unfocusZipperList!608 zl!343))))))

(declare-fun b!5401269 () Bool)

(declare-fun e!3348919 () Bool)

(assert (=> b!5401269 (= e!3348919 (isEmpty!33666 (t!375020 (unfocusZipperList!608 zl!343))))))

(declare-fun b!5401270 () Bool)

(declare-fun e!3348922 () Regex!15166)

(assert (=> b!5401270 (= e!3348922 e!3348921)))

(declare-fun c!941424 () Bool)

(assert (=> b!5401270 (= c!941424 (is-Cons!61673 (unfocusZipperList!608 zl!343)))))

(declare-fun b!5401271 () Bool)

(declare-fun lt!2201634 () Regex!15166)

(declare-fun isUnion!407 (Regex!15166) Bool)

(assert (=> b!5401271 (= e!3348920 (isUnion!407 lt!2201634))))

(declare-fun b!5401266 () Bool)

(assert (=> b!5401266 (= e!3348920 (= lt!2201634 (head!11584 (unfocusZipperList!608 zl!343))))))

(assert (=> d!1725151 e!3348924))

(declare-fun res!2296173 () Bool)

(assert (=> d!1725151 (=> (not res!2296173) (not e!3348924))))

(assert (=> d!1725151 (= res!2296173 (validRegex!6902 lt!2201634))))

(assert (=> d!1725151 (= lt!2201634 e!3348922)))

(declare-fun c!941425 () Bool)

(assert (=> d!1725151 (= c!941425 e!3348919)))

(declare-fun res!2296172 () Bool)

(assert (=> d!1725151 (=> (not res!2296172) (not e!3348919))))

(assert (=> d!1725151 (= res!2296172 (is-Cons!61673 (unfocusZipperList!608 zl!343)))))

(assert (=> d!1725151 (forall!14526 (unfocusZipperList!608 zl!343) lambda!281244)))

(assert (=> d!1725151 (= (generalisedUnion!1095 (unfocusZipperList!608 zl!343)) lt!2201634)))

(declare-fun b!5401272 () Bool)

(declare-fun isEmptyLang!975 (Regex!15166) Bool)

(assert (=> b!5401272 (= e!3348923 (isEmptyLang!975 lt!2201634))))

(declare-fun b!5401273 () Bool)

(assert (=> b!5401273 (= e!3348922 (h!68121 (unfocusZipperList!608 zl!343)))))

(assert (= (and d!1725151 res!2296172) b!5401269))

(assert (= (and d!1725151 c!941425) b!5401273))

(assert (= (and d!1725151 (not c!941425)) b!5401270))

(assert (= (and b!5401270 c!941424) b!5401264))

(assert (= (and b!5401270 (not c!941424)) b!5401267))

(assert (= (and d!1725151 res!2296173) b!5401265))

(assert (= (and b!5401265 c!941427) b!5401272))

(assert (= (and b!5401265 (not c!941427)) b!5401268))

(assert (= (and b!5401268 c!941426) b!5401266))

(assert (= (and b!5401268 (not c!941426)) b!5401271))

(assert (=> b!5401266 m!6425474))

(declare-fun m!6425836 () Bool)

(assert (=> b!5401266 m!6425836))

(declare-fun m!6425838 () Bool)

(assert (=> b!5401269 m!6425838))

(declare-fun m!6425840 () Bool)

(assert (=> b!5401264 m!6425840))

(declare-fun m!6425842 () Bool)

(assert (=> d!1725151 m!6425842))

(assert (=> d!1725151 m!6425474))

(declare-fun m!6425844 () Bool)

(assert (=> d!1725151 m!6425844))

(assert (=> b!5401265 m!6425474))

(declare-fun m!6425846 () Bool)

(assert (=> b!5401265 m!6425846))

(assert (=> b!5401268 m!6425474))

(declare-fun m!6425848 () Bool)

(assert (=> b!5401268 m!6425848))

(assert (=> b!5401268 m!6425848))

(declare-fun m!6425850 () Bool)

(assert (=> b!5401268 m!6425850))

(declare-fun m!6425852 () Bool)

(assert (=> b!5401271 m!6425852))

(declare-fun m!6425854 () Bool)

(assert (=> b!5401272 m!6425854))

(assert (=> b!5400876 d!1725151))

(declare-fun bs!1248296 () Bool)

(declare-fun d!1725153 () Bool)

(assert (= bs!1248296 (and d!1725153 b!5400892)))

(declare-fun lambda!281247 () Int)

(assert (=> bs!1248296 (= lambda!281247 lambda!281208)))

(declare-fun bs!1248297 () Bool)

(assert (= bs!1248297 (and d!1725153 d!1725105)))

(assert (=> bs!1248297 (= lambda!281247 lambda!281238)))

(declare-fun bs!1248298 () Bool)

(assert (= bs!1248298 (and d!1725153 d!1725121)))

(assert (=> bs!1248298 (= lambda!281247 lambda!281241)))

(declare-fun bs!1248299 () Bool)

(assert (= bs!1248299 (and d!1725153 d!1725151)))

(assert (=> bs!1248299 (= lambda!281247 lambda!281244)))

(declare-fun lt!2201637 () List!61797)

(assert (=> d!1725153 (forall!14526 lt!2201637 lambda!281247)))

(declare-fun e!3348927 () List!61797)

(assert (=> d!1725153 (= lt!2201637 e!3348927)))

(declare-fun c!941430 () Bool)

(assert (=> d!1725153 (= c!941430 (is-Cons!61674 zl!343))))

(assert (=> d!1725153 (= (unfocusZipperList!608 zl!343) lt!2201637)))

(declare-fun b!5401278 () Bool)

(assert (=> b!5401278 (= e!3348927 (Cons!61673 (generalisedConcat!835 (exprs!5050 (h!68122 zl!343))) (unfocusZipperList!608 (t!375021 zl!343))))))

(declare-fun b!5401279 () Bool)

(assert (=> b!5401279 (= e!3348927 Nil!61673)))

(assert (= (and d!1725153 c!941430) b!5401278))

(assert (= (and d!1725153 (not c!941430)) b!5401279))

(declare-fun m!6425856 () Bool)

(assert (=> d!1725153 m!6425856))

(assert (=> b!5401278 m!6425334))

(declare-fun m!6425858 () Bool)

(assert (=> b!5401278 m!6425858))

(assert (=> b!5400876 d!1725153))

(declare-fun d!1725155 () Bool)

(declare-fun c!941431 () Bool)

(assert (=> d!1725155 (= c!941431 (isEmpty!33670 s!2326))))

(declare-fun e!3348928 () Bool)

(assert (=> d!1725155 (= (matchZipper!1410 z!1189 s!2326) e!3348928)))

(declare-fun b!5401280 () Bool)

(assert (=> b!5401280 (= e!3348928 (nullableZipper!1433 z!1189))))

(declare-fun b!5401281 () Bool)

(assert (=> b!5401281 (= e!3348928 (matchZipper!1410 (derivationStepZipper!1405 z!1189 (head!11585 s!2326)) (tail!10682 s!2326)))))

(assert (= (and d!1725155 c!941431) b!5401280))

(assert (= (and d!1725155 (not c!941431)) b!5401281))

(assert (=> d!1725155 m!6425688))

(declare-fun m!6425860 () Bool)

(assert (=> b!5401280 m!6425860))

(assert (=> b!5401281 m!6425692))

(assert (=> b!5401281 m!6425692))

(declare-fun m!6425862 () Bool)

(assert (=> b!5401281 m!6425862))

(assert (=> b!5401281 m!6425696))

(assert (=> b!5401281 m!6425862))

(assert (=> b!5401281 m!6425696))

(declare-fun m!6425864 () Bool)

(assert (=> b!5401281 m!6425864))

(assert (=> b!5400875 d!1725155))

(declare-fun d!1725157 () Bool)

(declare-fun nullableFct!1585 (Regex!15166) Bool)

(assert (=> d!1725157 (= (nullable!5335 (regOne!30844 (regOne!30844 r!7292))) (nullableFct!1585 (regOne!30844 (regOne!30844 r!7292))))))

(declare-fun bs!1248300 () Bool)

(assert (= bs!1248300 d!1725157))

(declare-fun m!6425866 () Bool)

(assert (=> bs!1248300 m!6425866))

(assert (=> b!5400854 d!1725157))

(declare-fun d!1725159 () Bool)

(assert (=> d!1725159 (= (isEmpty!33666 (t!375020 (exprs!5050 (h!68122 zl!343)))) (is-Nil!61673 (t!375020 (exprs!5050 (h!68122 zl!343)))))))

(assert (=> b!5400874 d!1725159))

(declare-fun bs!1248301 () Bool)

(declare-fun d!1725161 () Bool)

(assert (= bs!1248301 (and d!1725161 b!5400892)))

(declare-fun lambda!281250 () Int)

(assert (=> bs!1248301 (= lambda!281250 lambda!281208)))

(declare-fun bs!1248302 () Bool)

(assert (= bs!1248302 (and d!1725161 d!1725151)))

(assert (=> bs!1248302 (= lambda!281250 lambda!281244)))

(declare-fun bs!1248303 () Bool)

(assert (= bs!1248303 (and d!1725161 d!1725105)))

(assert (=> bs!1248303 (= lambda!281250 lambda!281238)))

(declare-fun bs!1248304 () Bool)

(assert (= bs!1248304 (and d!1725161 d!1725153)))

(assert (=> bs!1248304 (= lambda!281250 lambda!281247)))

(declare-fun bs!1248305 () Bool)

(assert (= bs!1248305 (and d!1725161 d!1725121)))

(assert (=> bs!1248305 (= lambda!281250 lambda!281241)))

(assert (=> d!1725161 (= (inv!81163 (h!68122 zl!343)) (forall!14526 (exprs!5050 (h!68122 zl!343)) lambda!281250))))

(declare-fun bs!1248306 () Bool)

(assert (= bs!1248306 d!1725161))

(declare-fun m!6425868 () Bool)

(assert (=> bs!1248306 m!6425868))

(assert (=> b!5400850 d!1725161))

(declare-fun bs!1248307 () Bool)

(declare-fun d!1725163 () Bool)

(assert (= bs!1248307 (and d!1725163 d!1725161)))

(declare-fun lambda!281251 () Int)

(assert (=> bs!1248307 (= lambda!281251 lambda!281250)))

(declare-fun bs!1248308 () Bool)

(assert (= bs!1248308 (and d!1725163 b!5400892)))

(assert (=> bs!1248308 (= lambda!281251 lambda!281208)))

(declare-fun bs!1248309 () Bool)

(assert (= bs!1248309 (and d!1725163 d!1725151)))

(assert (=> bs!1248309 (= lambda!281251 lambda!281244)))

(declare-fun bs!1248310 () Bool)

(assert (= bs!1248310 (and d!1725163 d!1725105)))

(assert (=> bs!1248310 (= lambda!281251 lambda!281238)))

(declare-fun bs!1248311 () Bool)

(assert (= bs!1248311 (and d!1725163 d!1725153)))

(assert (=> bs!1248311 (= lambda!281251 lambda!281247)))

(declare-fun bs!1248312 () Bool)

(assert (= bs!1248312 (and d!1725163 d!1725121)))

(assert (=> bs!1248312 (= lambda!281251 lambda!281241)))

(assert (=> d!1725163 (= (inv!81163 setElem!35144) (forall!14526 (exprs!5050 setElem!35144) lambda!281251))))

(declare-fun bs!1248313 () Bool)

(assert (= bs!1248313 d!1725163))

(declare-fun m!6425870 () Bool)

(assert (=> bs!1248313 m!6425870))

(assert (=> setNonEmpty!35144 d!1725163))

(declare-fun d!1725165 () Bool)

(declare-fun dynLambda!24305 (Int Context!9100) (Set Context!9100))

(assert (=> d!1725165 (= (flatMap!893 lt!2201400 lambda!281206) (dynLambda!24305 lambda!281206 lt!2201388))))

(declare-fun lt!2201640 () Unit!154186)

(declare-fun choose!40695 ((Set Context!9100) Context!9100 Int) Unit!154186)

(assert (=> d!1725165 (= lt!2201640 (choose!40695 lt!2201400 lt!2201388 lambda!281206))))

(assert (=> d!1725165 (= lt!2201400 (set.insert lt!2201388 (as set.empty (Set Context!9100))))))

(assert (=> d!1725165 (= (lemmaFlatMapOnSingletonSet!425 lt!2201400 lt!2201388 lambda!281206) lt!2201640)))

(declare-fun b_lambda!206469 () Bool)

(assert (=> (not b_lambda!206469) (not d!1725165)))

(declare-fun bs!1248314 () Bool)

(assert (= bs!1248314 d!1725165))

(assert (=> bs!1248314 m!6425468))

(declare-fun m!6425872 () Bool)

(assert (=> bs!1248314 m!6425872))

(declare-fun m!6425874 () Bool)

(assert (=> bs!1248314 m!6425874))

(assert (=> bs!1248314 m!6425458))

(assert (=> b!5400891 d!1725165))

(declare-fun d!1725167 () Bool)

(declare-fun choose!40696 ((Set Context!9100) Int) (Set Context!9100))

(assert (=> d!1725167 (= (flatMap!893 lt!2201400 lambda!281206) (choose!40696 lt!2201400 lambda!281206))))

(declare-fun bs!1248315 () Bool)

(assert (= bs!1248315 d!1725167))

(declare-fun m!6425876 () Bool)

(assert (=> bs!1248315 m!6425876))

(assert (=> b!5400891 d!1725167))

(declare-fun d!1725169 () Bool)

(declare-fun lt!2201641 () Regex!15166)

(assert (=> d!1725169 (validRegex!6902 lt!2201641)))

(assert (=> d!1725169 (= lt!2201641 (generalisedUnion!1095 (unfocusZipperList!608 lt!2201387)))))

(assert (=> d!1725169 (= (unfocusZipper!908 lt!2201387) lt!2201641)))

(declare-fun bs!1248316 () Bool)

(assert (= bs!1248316 d!1725169))

(declare-fun m!6425878 () Bool)

(assert (=> bs!1248316 m!6425878))

(declare-fun m!6425880 () Bool)

(assert (=> bs!1248316 m!6425880))

(assert (=> bs!1248316 m!6425880))

(declare-fun m!6425882 () Bool)

(assert (=> bs!1248316 m!6425882))

(assert (=> b!5400891 d!1725169))

(declare-fun d!1725171 () Bool)

(assert (=> d!1725171 (= (flatMap!893 lt!2201403 lambda!281206) (choose!40696 lt!2201403 lambda!281206))))

(declare-fun bs!1248317 () Bool)

(assert (= bs!1248317 d!1725171))

(declare-fun m!6425884 () Bool)

(assert (=> bs!1248317 m!6425884))

(assert (=> b!5400891 d!1725171))

(declare-fun b!5401292 () Bool)

(declare-fun e!3348935 () (Set Context!9100))

(declare-fun call!386537 () (Set Context!9100))

(assert (=> b!5401292 (= e!3348935 call!386537)))

(declare-fun e!3348937 () (Set Context!9100))

(declare-fun b!5401293 () Bool)

(assert (=> b!5401293 (= e!3348937 (set.union call!386537 (derivationStepZipperUp!538 (Context!9101 (t!375020 (exprs!5050 lt!2201388))) (h!68123 s!2326))))))

(declare-fun b!5401294 () Bool)

(assert (=> b!5401294 (= e!3348937 e!3348935)))

(declare-fun c!941436 () Bool)

(assert (=> b!5401294 (= c!941436 (is-Cons!61673 (exprs!5050 lt!2201388)))))

(declare-fun d!1725173 () Bool)

(declare-fun c!941437 () Bool)

(declare-fun e!3348936 () Bool)

(assert (=> d!1725173 (= c!941437 e!3348936)))

(declare-fun res!2296176 () Bool)

(assert (=> d!1725173 (=> (not res!2296176) (not e!3348936))))

(assert (=> d!1725173 (= res!2296176 (is-Cons!61673 (exprs!5050 lt!2201388)))))

(assert (=> d!1725173 (= (derivationStepZipperUp!538 lt!2201388 (h!68123 s!2326)) e!3348937)))

(declare-fun b!5401295 () Bool)

(assert (=> b!5401295 (= e!3348935 (as set.empty (Set Context!9100)))))

(declare-fun b!5401296 () Bool)

(assert (=> b!5401296 (= e!3348936 (nullable!5335 (h!68121 (exprs!5050 lt!2201388))))))

(declare-fun bm!386532 () Bool)

(assert (=> bm!386532 (= call!386537 (derivationStepZipperDown!614 (h!68121 (exprs!5050 lt!2201388)) (Context!9101 (t!375020 (exprs!5050 lt!2201388))) (h!68123 s!2326)))))

(assert (= (and d!1725173 res!2296176) b!5401296))

(assert (= (and d!1725173 c!941437) b!5401293))

(assert (= (and d!1725173 (not c!941437)) b!5401294))

(assert (= (and b!5401294 c!941436) b!5401292))

(assert (= (and b!5401294 (not c!941436)) b!5401295))

(assert (= (or b!5401293 b!5401292) bm!386532))

(declare-fun m!6425886 () Bool)

(assert (=> b!5401293 m!6425886))

(declare-fun m!6425888 () Bool)

(assert (=> b!5401296 m!6425888))

(declare-fun m!6425890 () Bool)

(assert (=> bm!386532 m!6425890))

(assert (=> b!5400891 d!1725173))

(declare-fun b!5401297 () Bool)

(declare-fun e!3348938 () (Set Context!9100))

(declare-fun call!386538 () (Set Context!9100))

(assert (=> b!5401297 (= e!3348938 call!386538)))

(declare-fun e!3348940 () (Set Context!9100))

(declare-fun b!5401298 () Bool)

(assert (=> b!5401298 (= e!3348940 (set.union call!386538 (derivationStepZipperUp!538 (Context!9101 (t!375020 (exprs!5050 lt!2201410))) (h!68123 s!2326))))))

(declare-fun b!5401299 () Bool)

(assert (=> b!5401299 (= e!3348940 e!3348938)))

(declare-fun c!941438 () Bool)

(assert (=> b!5401299 (= c!941438 (is-Cons!61673 (exprs!5050 lt!2201410)))))

(declare-fun d!1725175 () Bool)

(declare-fun c!941439 () Bool)

(declare-fun e!3348939 () Bool)

(assert (=> d!1725175 (= c!941439 e!3348939)))

(declare-fun res!2296177 () Bool)

(assert (=> d!1725175 (=> (not res!2296177) (not e!3348939))))

(assert (=> d!1725175 (= res!2296177 (is-Cons!61673 (exprs!5050 lt!2201410)))))

(assert (=> d!1725175 (= (derivationStepZipperUp!538 lt!2201410 (h!68123 s!2326)) e!3348940)))

(declare-fun b!5401300 () Bool)

(assert (=> b!5401300 (= e!3348938 (as set.empty (Set Context!9100)))))

(declare-fun b!5401301 () Bool)

(assert (=> b!5401301 (= e!3348939 (nullable!5335 (h!68121 (exprs!5050 lt!2201410))))))

(declare-fun bm!386533 () Bool)

(assert (=> bm!386533 (= call!386538 (derivationStepZipperDown!614 (h!68121 (exprs!5050 lt!2201410)) (Context!9101 (t!375020 (exprs!5050 lt!2201410))) (h!68123 s!2326)))))

(assert (= (and d!1725175 res!2296177) b!5401301))

(assert (= (and d!1725175 c!941439) b!5401298))

(assert (= (and d!1725175 (not c!941439)) b!5401299))

(assert (= (and b!5401299 c!941438) b!5401297))

(assert (= (and b!5401299 (not c!941438)) b!5401300))

(assert (= (or b!5401298 b!5401297) bm!386533))

(declare-fun m!6425892 () Bool)

(assert (=> b!5401298 m!6425892))

(declare-fun m!6425894 () Bool)

(assert (=> b!5401301 m!6425894))

(declare-fun m!6425896 () Bool)

(assert (=> bm!386533 m!6425896))

(assert (=> b!5400891 d!1725175))

(declare-fun d!1725177 () Bool)

(assert (=> d!1725177 (= (flatMap!893 lt!2201403 lambda!281206) (dynLambda!24305 lambda!281206 lt!2201410))))

(declare-fun lt!2201642 () Unit!154186)

(assert (=> d!1725177 (= lt!2201642 (choose!40695 lt!2201403 lt!2201410 lambda!281206))))

(assert (=> d!1725177 (= lt!2201403 (set.insert lt!2201410 (as set.empty (Set Context!9100))))))

(assert (=> d!1725177 (= (lemmaFlatMapOnSingletonSet!425 lt!2201403 lt!2201410 lambda!281206) lt!2201642)))

(declare-fun b_lambda!206471 () Bool)

(assert (=> (not b_lambda!206471) (not d!1725177)))

(declare-fun bs!1248318 () Bool)

(assert (= bs!1248318 d!1725177))

(assert (=> bs!1248318 m!6425470))

(declare-fun m!6425898 () Bool)

(assert (=> bs!1248318 m!6425898))

(declare-fun m!6425900 () Bool)

(assert (=> bs!1248318 m!6425900))

(assert (=> bs!1248318 m!6425462))

(assert (=> b!5400891 d!1725177))

(declare-fun bs!1248319 () Bool)

(declare-fun d!1725179 () Bool)

(assert (= bs!1248319 (and d!1725179 b!5400892)))

(declare-fun lambda!281256 () Int)

(assert (=> bs!1248319 (= (= (exprs!5050 lt!2201410) lt!2201415) (= lambda!281256 lambda!281207))))

(assert (=> d!1725179 true))

(assert (=> d!1725179 (= (appendTo!25 lt!2201400 lt!2201410) (map!14134 lt!2201400 lambda!281256))))

(declare-fun bs!1248320 () Bool)

(assert (= bs!1248320 d!1725179))

(declare-fun m!6425902 () Bool)

(assert (=> bs!1248320 m!6425902))

(assert (=> b!5400892 d!1725179))

(declare-fun d!1725181 () Bool)

(declare-fun choose!40697 ((Set Context!9100) Int) (Set Context!9100))

(assert (=> d!1725181 (= (map!14134 lt!2201400 lambda!281207) (choose!40697 lt!2201400 lambda!281207))))

(declare-fun bs!1248321 () Bool)

(assert (= bs!1248321 d!1725181))

(declare-fun m!6425904 () Bool)

(assert (=> bs!1248321 m!6425904))

(assert (=> b!5400892 d!1725181))

(assert (=> b!5400892 d!1725129))

(declare-fun d!1725183 () Bool)

(declare-fun dynLambda!24306 (Int Context!9100) Context!9100)

(assert (=> d!1725183 (= (map!14134 lt!2201400 lambda!281207) (set.insert (dynLambda!24306 lambda!281207 lt!2201388) (as set.empty (Set Context!9100))))))

(declare-fun lt!2201647 () Unit!154186)

(declare-fun choose!40698 ((Set Context!9100) Context!9100 Int) Unit!154186)

(assert (=> d!1725183 (= lt!2201647 (choose!40698 lt!2201400 lt!2201388 lambda!281207))))

(assert (=> d!1725183 (= lt!2201400 (set.insert lt!2201388 (as set.empty (Set Context!9100))))))

(assert (=> d!1725183 (= (lemmaMapOnSingletonSet!25 lt!2201400 lt!2201388 lambda!281207) lt!2201647)))

(declare-fun b_lambda!206473 () Bool)

(assert (=> (not b_lambda!206473) (not d!1725183)))

(declare-fun bs!1248322 () Bool)

(assert (= bs!1248322 d!1725183))

(declare-fun m!6425906 () Bool)

(assert (=> bs!1248322 m!6425906))

(assert (=> bs!1248322 m!6425482))

(assert (=> bs!1248322 m!6425906))

(declare-fun m!6425908 () Bool)

(assert (=> bs!1248322 m!6425908))

(declare-fun m!6425910 () Bool)

(assert (=> bs!1248322 m!6425910))

(assert (=> bs!1248322 m!6425458))

(assert (=> b!5400892 d!1725183))

(assert (=> b!5400892 d!1725141))

(assert (=> b!5400872 d!1725147))

(declare-fun d!1725185 () Bool)

(declare-fun c!941441 () Bool)

(assert (=> d!1725185 (= c!941441 (isEmpty!33670 (_2!35668 lt!2201433)))))

(declare-fun e!3348941 () Bool)

(assert (=> d!1725185 (= (matchZipper!1410 lt!2201403 (_2!35668 lt!2201433)) e!3348941)))

(declare-fun b!5401304 () Bool)

(assert (=> b!5401304 (= e!3348941 (nullableZipper!1433 lt!2201403))))

(declare-fun b!5401305 () Bool)

(assert (=> b!5401305 (= e!3348941 (matchZipper!1410 (derivationStepZipper!1405 lt!2201403 (head!11585 (_2!35668 lt!2201433))) (tail!10682 (_2!35668 lt!2201433))))))

(assert (= (and d!1725185 c!941441) b!5401304))

(assert (= (and d!1725185 (not c!941441)) b!5401305))

(assert (=> d!1725185 m!6425766))

(declare-fun m!6425912 () Bool)

(assert (=> b!5401304 m!6425912))

(assert (=> b!5401305 m!6425770))

(assert (=> b!5401305 m!6425770))

(declare-fun m!6425914 () Bool)

(assert (=> b!5401305 m!6425914))

(assert (=> b!5401305 m!6425760))

(assert (=> b!5401305 m!6425914))

(assert (=> b!5401305 m!6425760))

(declare-fun m!6425916 () Bool)

(assert (=> b!5401305 m!6425916))

(assert (=> b!5400889 d!1725185))

(declare-fun b!5401306 () Bool)

(declare-fun e!3348942 () (Set Context!9100))

(declare-fun call!386539 () (Set Context!9100))

(assert (=> b!5401306 (= e!3348942 call!386539)))

(declare-fun b!5401307 () Bool)

(declare-fun e!3348944 () (Set Context!9100))

(assert (=> b!5401307 (= e!3348944 (set.union call!386539 (derivationStepZipperUp!538 (Context!9101 (t!375020 (exprs!5050 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343)))))))) (h!68123 s!2326))))))

(declare-fun b!5401308 () Bool)

(assert (=> b!5401308 (= e!3348944 e!3348942)))

(declare-fun c!941442 () Bool)

(assert (=> b!5401308 (= c!941442 (is-Cons!61673 (exprs!5050 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343))))))))))

(declare-fun d!1725187 () Bool)

(declare-fun c!941443 () Bool)

(declare-fun e!3348943 () Bool)

(assert (=> d!1725187 (= c!941443 e!3348943)))

(declare-fun res!2296178 () Bool)

(assert (=> d!1725187 (=> (not res!2296178) (not e!3348943))))

(assert (=> d!1725187 (= res!2296178 (is-Cons!61673 (exprs!5050 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343))))))))))

(assert (=> d!1725187 (= (derivationStepZipperUp!538 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343))))) (h!68123 s!2326)) e!3348944)))

(declare-fun b!5401309 () Bool)

(assert (=> b!5401309 (= e!3348942 (as set.empty (Set Context!9100)))))

(declare-fun b!5401310 () Bool)

(assert (=> b!5401310 (= e!3348943 (nullable!5335 (h!68121 (exprs!5050 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343)))))))))))

(declare-fun bm!386534 () Bool)

(assert (=> bm!386534 (= call!386539 (derivationStepZipperDown!614 (h!68121 (exprs!5050 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343))))))) (Context!9101 (t!375020 (exprs!5050 (Context!9101 (Cons!61673 (h!68121 (exprs!5050 (h!68122 zl!343))) (t!375020 (exprs!5050 (h!68122 zl!343)))))))) (h!68123 s!2326)))))

(assert (= (and d!1725187 res!2296178) b!5401310))

(assert (= (and d!1725187 c!941443) b!5401307))

(assert (= (and d!1725187 (not c!941443)) b!5401308))

(assert (= (and b!5401308 c!941442) b!5401306))

(assert (= (and b!5401308 (not c!941442)) b!5401309))

(assert (= (or b!5401307 b!5401306) bm!386534))

(declare-fun m!6425918 () Bool)

(assert (=> b!5401307 m!6425918))

(declare-fun m!6425920 () Bool)

(assert (=> b!5401310 m!6425920))

(declare-fun m!6425922 () Bool)

(assert (=> bm!386534 m!6425922))

(assert (=> b!5400869 d!1725187))

(declare-fun d!1725189 () Bool)

(declare-fun c!941457 () Bool)

(assert (=> d!1725189 (= c!941457 (and (is-ElementMatch!15166 (h!68121 (exprs!5050 (h!68122 zl!343)))) (= (c!941352 (h!68121 (exprs!5050 (h!68122 zl!343)))) (h!68123 s!2326))))))

(declare-fun e!3348961 () (Set Context!9100))

(assert (=> d!1725189 (= (derivationStepZipperDown!614 (h!68121 (exprs!5050 (h!68122 zl!343))) lt!2201421 (h!68123 s!2326)) e!3348961)))

(declare-fun b!5401333 () Bool)

(declare-fun e!3348958 () (Set Context!9100))

(declare-fun e!3348959 () (Set Context!9100))

(assert (=> b!5401333 (= e!3348958 e!3348959)))

(declare-fun c!941456 () Bool)

(assert (=> b!5401333 (= c!941456 (is-Concat!24011 (h!68121 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun bm!386547 () Bool)

(declare-fun call!386556 () List!61797)

(declare-fun call!386552 () List!61797)

(assert (=> bm!386547 (= call!386556 call!386552)))

(declare-fun b!5401334 () Bool)

(declare-fun e!3348960 () (Set Context!9100))

(declare-fun call!386555 () (Set Context!9100))

(declare-fun call!386553 () (Set Context!9100))

(assert (=> b!5401334 (= e!3348960 (set.union call!386555 call!386553))))

(declare-fun b!5401335 () Bool)

(declare-fun e!3348957 () Bool)

(assert (=> b!5401335 (= e!3348957 (nullable!5335 (regOne!30844 (h!68121 (exprs!5050 (h!68122 zl!343))))))))

(declare-fun b!5401336 () Bool)

(declare-fun c!941455 () Bool)

(assert (=> b!5401336 (= c!941455 e!3348957)))

(declare-fun res!2296181 () Bool)

(assert (=> b!5401336 (=> (not res!2296181) (not e!3348957))))

(assert (=> b!5401336 (= res!2296181 (is-Concat!24011 (h!68121 (exprs!5050 (h!68122 zl!343)))))))

(assert (=> b!5401336 (= e!3348960 e!3348958)))

(declare-fun b!5401337 () Bool)

(assert (=> b!5401337 (= e!3348961 e!3348960)))

(declare-fun c!941458 () Bool)

(assert (=> b!5401337 (= c!941458 (is-Union!15166 (h!68121 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun bm!386548 () Bool)

(declare-fun call!386557 () (Set Context!9100))

(declare-fun call!386554 () (Set Context!9100))

(assert (=> bm!386548 (= call!386557 call!386554)))

(declare-fun bm!386549 () Bool)

(assert (=> bm!386549 (= call!386553 (derivationStepZipperDown!614 (ite c!941458 (regTwo!30845 (h!68121 (exprs!5050 (h!68122 zl!343)))) (regOne!30844 (h!68121 (exprs!5050 (h!68122 zl!343))))) (ite c!941458 lt!2201421 (Context!9101 call!386552)) (h!68123 s!2326)))))

(declare-fun bm!386550 () Bool)

(assert (=> bm!386550 (= call!386554 call!386555)))

(declare-fun b!5401338 () Bool)

(declare-fun e!3348962 () (Set Context!9100))

(assert (=> b!5401338 (= e!3348962 (as set.empty (Set Context!9100)))))

(declare-fun b!5401339 () Bool)

(declare-fun c!941454 () Bool)

(assert (=> b!5401339 (= c!941454 (is-Star!15166 (h!68121 (exprs!5050 (h!68122 zl!343)))))))

(assert (=> b!5401339 (= e!3348959 e!3348962)))

(declare-fun bm!386551 () Bool)

(assert (=> bm!386551 (= call!386555 (derivationStepZipperDown!614 (ite c!941458 (regOne!30845 (h!68121 (exprs!5050 (h!68122 zl!343)))) (ite c!941455 (regTwo!30844 (h!68121 (exprs!5050 (h!68122 zl!343)))) (ite c!941456 (regOne!30844 (h!68121 (exprs!5050 (h!68122 zl!343)))) (reg!15495 (h!68121 (exprs!5050 (h!68122 zl!343))))))) (ite (or c!941458 c!941455) lt!2201421 (Context!9101 call!386556)) (h!68123 s!2326)))))

(declare-fun b!5401340 () Bool)

(assert (=> b!5401340 (= e!3348958 (set.union call!386553 call!386554))))

(declare-fun b!5401341 () Bool)

(assert (=> b!5401341 (= e!3348962 call!386557)))

(declare-fun b!5401342 () Bool)

(assert (=> b!5401342 (= e!3348961 (set.insert lt!2201421 (as set.empty (Set Context!9100))))))

(declare-fun bm!386552 () Bool)

(declare-fun $colon$colon!1483 (List!61797 Regex!15166) List!61797)

(assert (=> bm!386552 (= call!386552 ($colon$colon!1483 (exprs!5050 lt!2201421) (ite (or c!941455 c!941456) (regTwo!30844 (h!68121 (exprs!5050 (h!68122 zl!343)))) (h!68121 (exprs!5050 (h!68122 zl!343))))))))

(declare-fun b!5401343 () Bool)

(assert (=> b!5401343 (= e!3348959 call!386557)))

(assert (= (and d!1725189 c!941457) b!5401342))

(assert (= (and d!1725189 (not c!941457)) b!5401337))

(assert (= (and b!5401337 c!941458) b!5401334))

(assert (= (and b!5401337 (not c!941458)) b!5401336))

(assert (= (and b!5401336 res!2296181) b!5401335))

(assert (= (and b!5401336 c!941455) b!5401340))

(assert (= (and b!5401336 (not c!941455)) b!5401333))

(assert (= (and b!5401333 c!941456) b!5401343))

(assert (= (and b!5401333 (not c!941456)) b!5401339))

(assert (= (and b!5401339 c!941454) b!5401341))

(assert (= (and b!5401339 (not c!941454)) b!5401338))

(assert (= (or b!5401343 b!5401341) bm!386547))

(assert (= (or b!5401343 b!5401341) bm!386548))

(assert (= (or b!5401340 bm!386547) bm!386552))

(assert (= (or b!5401340 bm!386548) bm!386550))

(assert (= (or b!5401334 b!5401340) bm!386549))

(assert (= (or b!5401334 bm!386550) bm!386551))

(declare-fun m!6425930 () Bool)

(assert (=> b!5401335 m!6425930))

(declare-fun m!6425932 () Bool)

(assert (=> bm!386552 m!6425932))

(declare-fun m!6425934 () Bool)

(assert (=> bm!386551 m!6425934))

(declare-fun m!6425936 () Bool)

(assert (=> b!5401342 m!6425936))

(declare-fun m!6425938 () Bool)

(assert (=> bm!386549 m!6425938))

(assert (=> b!5400869 d!1725189))

(declare-fun b!5401344 () Bool)

(declare-fun e!3348963 () (Set Context!9100))

(declare-fun call!386558 () (Set Context!9100))

(assert (=> b!5401344 (= e!3348963 call!386558)))

(declare-fun b!5401345 () Bool)

(declare-fun e!3348965 () (Set Context!9100))

(assert (=> b!5401345 (= e!3348965 (set.union call!386558 (derivationStepZipperUp!538 (Context!9101 (t!375020 (exprs!5050 lt!2201421))) (h!68123 s!2326))))))

(declare-fun b!5401346 () Bool)

(assert (=> b!5401346 (= e!3348965 e!3348963)))

(declare-fun c!941459 () Bool)

(assert (=> b!5401346 (= c!941459 (is-Cons!61673 (exprs!5050 lt!2201421)))))

(declare-fun d!1725195 () Bool)

(declare-fun c!941460 () Bool)

(declare-fun e!3348964 () Bool)

(assert (=> d!1725195 (= c!941460 e!3348964)))

(declare-fun res!2296182 () Bool)

(assert (=> d!1725195 (=> (not res!2296182) (not e!3348964))))

(assert (=> d!1725195 (= res!2296182 (is-Cons!61673 (exprs!5050 lt!2201421)))))

(assert (=> d!1725195 (= (derivationStepZipperUp!538 lt!2201421 (h!68123 s!2326)) e!3348965)))

(declare-fun b!5401347 () Bool)

(assert (=> b!5401347 (= e!3348963 (as set.empty (Set Context!9100)))))

(declare-fun b!5401348 () Bool)

(assert (=> b!5401348 (= e!3348964 (nullable!5335 (h!68121 (exprs!5050 lt!2201421))))))

(declare-fun bm!386553 () Bool)

(assert (=> bm!386553 (= call!386558 (derivationStepZipperDown!614 (h!68121 (exprs!5050 lt!2201421)) (Context!9101 (t!375020 (exprs!5050 lt!2201421))) (h!68123 s!2326)))))

(assert (= (and d!1725195 res!2296182) b!5401348))

(assert (= (and d!1725195 c!941460) b!5401345))

(assert (= (and d!1725195 (not c!941460)) b!5401346))

(assert (= (and b!5401346 c!941459) b!5401344))

(assert (= (and b!5401346 (not c!941459)) b!5401347))

(assert (= (or b!5401345 b!5401344) bm!386553))

(declare-fun m!6425940 () Bool)

(assert (=> b!5401345 m!6425940))

(declare-fun m!6425942 () Bool)

(assert (=> b!5401348 m!6425942))

(declare-fun m!6425944 () Bool)

(assert (=> bm!386553 m!6425944))

(assert (=> b!5400869 d!1725195))

(declare-fun b!5401349 () Bool)

(declare-fun e!3348966 () (Set Context!9100))

(declare-fun call!386559 () (Set Context!9100))

(assert (=> b!5401349 (= e!3348966 call!386559)))

(declare-fun b!5401350 () Bool)

(declare-fun e!3348968 () (Set Context!9100))

(assert (=> b!5401350 (= e!3348968 (set.union call!386559 (derivationStepZipperUp!538 (Context!9101 (t!375020 (exprs!5050 (h!68122 zl!343)))) (h!68123 s!2326))))))

(declare-fun b!5401351 () Bool)

(assert (=> b!5401351 (= e!3348968 e!3348966)))

(declare-fun c!941461 () Bool)

(assert (=> b!5401351 (= c!941461 (is-Cons!61673 (exprs!5050 (h!68122 zl!343))))))

(declare-fun d!1725197 () Bool)

(declare-fun c!941462 () Bool)

(declare-fun e!3348967 () Bool)

(assert (=> d!1725197 (= c!941462 e!3348967)))

(declare-fun res!2296183 () Bool)

(assert (=> d!1725197 (=> (not res!2296183) (not e!3348967))))

(assert (=> d!1725197 (= res!2296183 (is-Cons!61673 (exprs!5050 (h!68122 zl!343))))))

(assert (=> d!1725197 (= (derivationStepZipperUp!538 (h!68122 zl!343) (h!68123 s!2326)) e!3348968)))

(declare-fun b!5401352 () Bool)

(assert (=> b!5401352 (= e!3348966 (as set.empty (Set Context!9100)))))

(declare-fun b!5401353 () Bool)

(assert (=> b!5401353 (= e!3348967 (nullable!5335 (h!68121 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun bm!386554 () Bool)

(assert (=> bm!386554 (= call!386559 (derivationStepZipperDown!614 (h!68121 (exprs!5050 (h!68122 zl!343))) (Context!9101 (t!375020 (exprs!5050 (h!68122 zl!343)))) (h!68123 s!2326)))))

(assert (= (and d!1725197 res!2296183) b!5401353))

(assert (= (and d!1725197 c!941462) b!5401350))

(assert (= (and d!1725197 (not c!941462)) b!5401351))

(assert (= (and b!5401351 c!941461) b!5401349))

(assert (= (and b!5401351 (not c!941461)) b!5401352))

(assert (= (or b!5401350 b!5401349) bm!386554))

(declare-fun m!6425946 () Bool)

(assert (=> b!5401350 m!6425946))

(assert (=> b!5401353 m!6425418))

(declare-fun m!6425948 () Bool)

(assert (=> bm!386554 m!6425948))

(assert (=> b!5400869 d!1725197))

(declare-fun d!1725199 () Bool)

(assert (=> d!1725199 (= (flatMap!893 z!1189 lambda!281206) (choose!40696 z!1189 lambda!281206))))

(declare-fun bs!1248324 () Bool)

(assert (= bs!1248324 d!1725199))

(declare-fun m!6425950 () Bool)

(assert (=> bs!1248324 m!6425950))

(assert (=> b!5400869 d!1725199))

(declare-fun d!1725201 () Bool)

(assert (=> d!1725201 (= (nullable!5335 (h!68121 (exprs!5050 (h!68122 zl!343)))) (nullableFct!1585 (h!68121 (exprs!5050 (h!68122 zl!343)))))))

(declare-fun bs!1248325 () Bool)

(assert (= bs!1248325 d!1725201))

(declare-fun m!6425952 () Bool)

(assert (=> bs!1248325 m!6425952))

(assert (=> b!5400869 d!1725201))

(declare-fun d!1725203 () Bool)

(assert (=> d!1725203 (= (flatMap!893 z!1189 lambda!281206) (dynLambda!24305 lambda!281206 (h!68122 zl!343)))))

(declare-fun lt!2201651 () Unit!154186)

(assert (=> d!1725203 (= lt!2201651 (choose!40695 z!1189 (h!68122 zl!343) lambda!281206))))

(assert (=> d!1725203 (= z!1189 (set.insert (h!68122 zl!343) (as set.empty (Set Context!9100))))))

(assert (=> d!1725203 (= (lemmaFlatMapOnSingletonSet!425 z!1189 (h!68122 zl!343) lambda!281206) lt!2201651)))

(declare-fun b_lambda!206475 () Bool)

(assert (=> (not b_lambda!206475) (not d!1725203)))

(declare-fun bs!1248326 () Bool)

(assert (= bs!1248326 d!1725203))

(assert (=> bs!1248326 m!6425420))

(declare-fun m!6425954 () Bool)

(assert (=> bs!1248326 m!6425954))

(declare-fun m!6425956 () Bool)

(assert (=> bs!1248326 m!6425956))

(declare-fun m!6425958 () Bool)

(assert (=> bs!1248326 m!6425958))

(assert (=> b!5400869 d!1725203))

(declare-fun d!1725205 () Bool)

(declare-fun e!3348974 () Bool)

(assert (=> d!1725205 e!3348974))

(declare-fun res!2296186 () Bool)

(assert (=> d!1725205 (=> (not res!2296186) (not e!3348974))))

(declare-fun lt!2201654 () List!61798)

(declare-fun noDuplicate!1384 (List!61798) Bool)

(assert (=> d!1725205 (= res!2296186 (noDuplicate!1384 lt!2201654))))

(declare-fun choose!40699 ((Set Context!9100)) List!61798)

(assert (=> d!1725205 (= lt!2201654 (choose!40699 z!1189))))

(assert (=> d!1725205 (= (toList!8950 z!1189) lt!2201654)))

(declare-fun b!5401362 () Bool)

(declare-fun content!11049 (List!61798) (Set Context!9100))

(assert (=> b!5401362 (= e!3348974 (= (content!11049 lt!2201654) z!1189))))

(assert (= (and d!1725205 res!2296186) b!5401362))

(declare-fun m!6425966 () Bool)

(assert (=> d!1725205 m!6425966))

(declare-fun m!6425970 () Bool)

(assert (=> d!1725205 m!6425970))

(declare-fun m!6425972 () Bool)

(assert (=> b!5401362 m!6425972))

(assert (=> b!5400849 d!1725205))

(declare-fun bs!1248327 () Bool)

(declare-fun b!5401423 () Bool)

(assert (= bs!1248327 (and b!5401423 b!5400867)))

(declare-fun lambda!281261 () Int)

(assert (=> bs!1248327 (not (= lambda!281261 lambda!281204))))

(assert (=> bs!1248327 (not (= lambda!281261 lambda!281205))))

(assert (=> b!5401423 true))

(assert (=> b!5401423 true))

(declare-fun bs!1248328 () Bool)

(declare-fun b!5401427 () Bool)

(assert (= bs!1248328 (and b!5401427 b!5400867)))

(declare-fun lambda!281263 () Int)

(assert (=> bs!1248328 (not (= lambda!281263 lambda!281204))))

(assert (=> bs!1248328 (= (and (= (regOne!30844 lt!2201389) (regOne!30844 r!7292)) (= (regTwo!30844 lt!2201389) (regTwo!30844 r!7292))) (= lambda!281263 lambda!281205))))

(declare-fun bs!1248329 () Bool)

(assert (= bs!1248329 (and b!5401427 b!5401423)))

(assert (=> bs!1248329 (not (= lambda!281263 lambda!281261))))

(assert (=> b!5401427 true))

(assert (=> b!5401427 true))

(declare-fun bm!386559 () Bool)

(declare-fun call!386565 () Bool)

(assert (=> bm!386559 (= call!386565 (isEmpty!33670 s!2326))))

(declare-fun call!386564 () Bool)

(declare-fun c!941482 () Bool)

(declare-fun bm!386560 () Bool)

(assert (=> bm!386560 (= call!386564 (Exists!2347 (ite c!941482 lambda!281261 lambda!281263)))))

(declare-fun b!5401417 () Bool)

(declare-fun res!2296211 () Bool)

(declare-fun e!3349007 () Bool)

(assert (=> b!5401417 (=> res!2296211 e!3349007)))

(assert (=> b!5401417 (= res!2296211 call!386565)))

(declare-fun e!3349012 () Bool)

(assert (=> b!5401417 (= e!3349012 e!3349007)))

(declare-fun b!5401419 () Bool)

(declare-fun e!3349009 () Bool)

(declare-fun e!3349010 () Bool)

(assert (=> b!5401419 (= e!3349009 e!3349010)))

(declare-fun res!2296210 () Bool)

(assert (=> b!5401419 (= res!2296210 (matchRSpec!2269 (regOne!30845 lt!2201389) s!2326))))

(assert (=> b!5401419 (=> res!2296210 e!3349010)))

(declare-fun b!5401420 () Bool)

(assert (=> b!5401420 (= e!3349010 (matchRSpec!2269 (regTwo!30845 lt!2201389) s!2326))))

(declare-fun b!5401421 () Bool)

(declare-fun e!3349013 () Bool)

(assert (=> b!5401421 (= e!3349013 (= s!2326 (Cons!61675 (c!941352 lt!2201389) Nil!61675)))))

(declare-fun b!5401422 () Bool)

(assert (=> b!5401422 (= e!3349009 e!3349012)))

(assert (=> b!5401422 (= c!941482 (is-Star!15166 lt!2201389))))

(assert (=> b!5401423 (= e!3349007 call!386564)))

(declare-fun b!5401424 () Bool)

(declare-fun c!941483 () Bool)

(assert (=> b!5401424 (= c!941483 (is-ElementMatch!15166 lt!2201389))))

(declare-fun e!3349011 () Bool)

(assert (=> b!5401424 (= e!3349011 e!3349013)))

(declare-fun b!5401425 () Bool)

(declare-fun e!3349008 () Bool)

(assert (=> b!5401425 (= e!3349008 e!3349011)))

(declare-fun res!2296209 () Bool)

(assert (=> b!5401425 (= res!2296209 (not (is-EmptyLang!15166 lt!2201389)))))

(assert (=> b!5401425 (=> (not res!2296209) (not e!3349011))))

(declare-fun b!5401426 () Bool)

(declare-fun c!941485 () Bool)

(assert (=> b!5401426 (= c!941485 (is-Union!15166 lt!2201389))))

(assert (=> b!5401426 (= e!3349013 e!3349009)))

(assert (=> b!5401427 (= e!3349012 call!386564)))

(declare-fun b!5401418 () Bool)

(assert (=> b!5401418 (= e!3349008 call!386565)))

(declare-fun d!1725207 () Bool)

(declare-fun c!941484 () Bool)

(assert (=> d!1725207 (= c!941484 (is-EmptyExpr!15166 lt!2201389))))

(assert (=> d!1725207 (= (matchRSpec!2269 lt!2201389 s!2326) e!3349008)))

(assert (= (and d!1725207 c!941484) b!5401418))

(assert (= (and d!1725207 (not c!941484)) b!5401425))

(assert (= (and b!5401425 res!2296209) b!5401424))

(assert (= (and b!5401424 c!941483) b!5401421))

(assert (= (and b!5401424 (not c!941483)) b!5401426))

(assert (= (and b!5401426 c!941485) b!5401419))

(assert (= (and b!5401426 (not c!941485)) b!5401422))

(assert (= (and b!5401419 (not res!2296210)) b!5401420))

(assert (= (and b!5401422 c!941482) b!5401417))

(assert (= (and b!5401422 (not c!941482)) b!5401427))

(assert (= (and b!5401417 (not res!2296211)) b!5401423))

(assert (= (or b!5401423 b!5401427) bm!386560))

(assert (= (or b!5401418 b!5401417) bm!386559))

(assert (=> bm!386559 m!6425688))

(declare-fun m!6425978 () Bool)

(assert (=> bm!386560 m!6425978))

(declare-fun m!6425980 () Bool)

(assert (=> b!5401419 m!6425980))

(declare-fun m!6425982 () Bool)

(assert (=> b!5401420 m!6425982))

(assert (=> b!5400890 d!1725207))

(declare-fun b!5401434 () Bool)

(declare-fun e!3349018 () Bool)

(assert (=> b!5401434 (= e!3349018 (matchR!7351 (derivativeStep!4254 lt!2201389 (head!11585 s!2326)) (tail!10682 s!2326)))))

(declare-fun b!5401435 () Bool)

(declare-fun e!3349022 () Bool)

(declare-fun lt!2201655 () Bool)

(assert (=> b!5401435 (= e!3349022 (not lt!2201655))))

(declare-fun b!5401436 () Bool)

(declare-fun e!3349020 () Bool)

(assert (=> b!5401436 (= e!3349020 e!3349022)))

(declare-fun c!941488 () Bool)

(assert (=> b!5401436 (= c!941488 (is-EmptyLang!15166 lt!2201389))))

(declare-fun b!5401437 () Bool)

(declare-fun e!3349017 () Bool)

(declare-fun e!3349021 () Bool)

(assert (=> b!5401437 (= e!3349017 e!3349021)))

(declare-fun res!2296218 () Bool)

(assert (=> b!5401437 (=> (not res!2296218) (not e!3349021))))

(assert (=> b!5401437 (= res!2296218 (not lt!2201655))))

(declare-fun b!5401439 () Bool)

(declare-fun res!2296219 () Bool)

(declare-fun e!3349019 () Bool)

(assert (=> b!5401439 (=> (not res!2296219) (not e!3349019))))

(assert (=> b!5401439 (= res!2296219 (isEmpty!33670 (tail!10682 s!2326)))))

(declare-fun b!5401440 () Bool)

(declare-fun e!3349016 () Bool)

(assert (=> b!5401440 (= e!3349016 (not (= (head!11585 s!2326) (c!941352 lt!2201389))))))

(declare-fun b!5401441 () Bool)

(assert (=> b!5401441 (= e!3349019 (= (head!11585 s!2326) (c!941352 lt!2201389)))))

(declare-fun bm!386561 () Bool)

(declare-fun call!386566 () Bool)

(assert (=> bm!386561 (= call!386566 (isEmpty!33670 s!2326))))

(declare-fun b!5401442 () Bool)

(assert (=> b!5401442 (= e!3349018 (nullable!5335 lt!2201389))))

(declare-fun b!5401443 () Bool)

(declare-fun res!2296222 () Bool)

(assert (=> b!5401443 (=> res!2296222 e!3349017)))

(assert (=> b!5401443 (= res!2296222 e!3349019)))

(declare-fun res!2296221 () Bool)

(assert (=> b!5401443 (=> (not res!2296221) (not e!3349019))))

(assert (=> b!5401443 (= res!2296221 lt!2201655)))

(declare-fun b!5401444 () Bool)

(declare-fun res!2296224 () Bool)

(assert (=> b!5401444 (=> res!2296224 e!3349016)))

(assert (=> b!5401444 (= res!2296224 (not (isEmpty!33670 (tail!10682 s!2326))))))

(declare-fun b!5401445 () Bool)

(assert (=> b!5401445 (= e!3349020 (= lt!2201655 call!386566))))

(declare-fun b!5401446 () Bool)

(declare-fun res!2296225 () Bool)

(assert (=> b!5401446 (=> (not res!2296225) (not e!3349019))))

(assert (=> b!5401446 (= res!2296225 (not call!386566))))

(declare-fun b!5401447 () Bool)

(declare-fun res!2296220 () Bool)

(assert (=> b!5401447 (=> res!2296220 e!3349017)))

(assert (=> b!5401447 (= res!2296220 (not (is-ElementMatch!15166 lt!2201389)))))

(assert (=> b!5401447 (= e!3349022 e!3349017)))

(declare-fun b!5401438 () Bool)

(assert (=> b!5401438 (= e!3349021 e!3349016)))

(declare-fun res!2296223 () Bool)

(assert (=> b!5401438 (=> res!2296223 e!3349016)))

(assert (=> b!5401438 (= res!2296223 call!386566)))

(declare-fun d!1725211 () Bool)

(assert (=> d!1725211 e!3349020))

(declare-fun c!941487 () Bool)

(assert (=> d!1725211 (= c!941487 (is-EmptyExpr!15166 lt!2201389))))

(assert (=> d!1725211 (= lt!2201655 e!3349018)))

(declare-fun c!941486 () Bool)

(assert (=> d!1725211 (= c!941486 (isEmpty!33670 s!2326))))

(assert (=> d!1725211 (validRegex!6902 lt!2201389)))

(assert (=> d!1725211 (= (matchR!7351 lt!2201389 s!2326) lt!2201655)))

(assert (= (and d!1725211 c!941486) b!5401442))

(assert (= (and d!1725211 (not c!941486)) b!5401434))

(assert (= (and d!1725211 c!941487) b!5401445))

(assert (= (and d!1725211 (not c!941487)) b!5401436))

(assert (= (and b!5401436 c!941488) b!5401435))

(assert (= (and b!5401436 (not c!941488)) b!5401447))

(assert (= (and b!5401447 (not res!2296220)) b!5401443))

(assert (= (and b!5401443 res!2296221) b!5401446))

(assert (= (and b!5401446 res!2296225) b!5401439))

(assert (= (and b!5401439 res!2296219) b!5401441))

(assert (= (and b!5401443 (not res!2296222)) b!5401437))

(assert (= (and b!5401437 res!2296218) b!5401438))

(assert (= (and b!5401438 (not res!2296223)) b!5401444))

(assert (= (and b!5401444 (not res!2296224)) b!5401440))

(assert (= (or b!5401445 b!5401438 b!5401446) bm!386561))

(assert (=> b!5401444 m!6425696))

(assert (=> b!5401444 m!6425696))

(assert (=> b!5401444 m!6425744))

(assert (=> b!5401442 m!6425726))

(assert (=> b!5401439 m!6425696))

(assert (=> b!5401439 m!6425696))

(assert (=> b!5401439 m!6425744))

(assert (=> d!1725211 m!6425688))

(assert (=> d!1725211 m!6425434))

(assert (=> b!5401441 m!6425692))

(assert (=> bm!386561 m!6425688))

(assert (=> b!5401440 m!6425692))

(assert (=> b!5401434 m!6425692))

(assert (=> b!5401434 m!6425692))

(declare-fun m!6425984 () Bool)

(assert (=> b!5401434 m!6425984))

(assert (=> b!5401434 m!6425696))

(assert (=> b!5401434 m!6425984))

(assert (=> b!5401434 m!6425696))

(declare-fun m!6425986 () Bool)

(assert (=> b!5401434 m!6425986))

(assert (=> b!5400890 d!1725211))

(declare-fun d!1725213 () Bool)

(assert (=> d!1725213 (= (matchR!7351 lt!2201389 s!2326) (matchRSpec!2269 lt!2201389 s!2326))))

(declare-fun lt!2201658 () Unit!154186)

(declare-fun choose!40700 (Regex!15166 List!61799) Unit!154186)

(assert (=> d!1725213 (= lt!2201658 (choose!40700 lt!2201389 s!2326))))

(assert (=> d!1725213 (validRegex!6902 lt!2201389)))

(assert (=> d!1725213 (= (mainMatchTheorem!2269 lt!2201389 s!2326) lt!2201658)))

(declare-fun bs!1248330 () Bool)

(assert (= bs!1248330 d!1725213))

(assert (=> bs!1248330 m!6425394))

(assert (=> bs!1248330 m!6425392))

(declare-fun m!6425988 () Bool)

(assert (=> bs!1248330 m!6425988))

(assert (=> bs!1248330 m!6425434))

(assert (=> b!5400890 d!1725213))

(declare-fun bs!1248331 () Bool)

(declare-fun b!5401454 () Bool)

(assert (= bs!1248331 (and b!5401454 b!5400867)))

(declare-fun lambda!281267 () Int)

(assert (=> bs!1248331 (not (= lambda!281267 lambda!281204))))

(assert (=> bs!1248331 (not (= lambda!281267 lambda!281205))))

(declare-fun bs!1248332 () Bool)

(assert (= bs!1248332 (and b!5401454 b!5401423)))

(assert (=> bs!1248332 (= (and (= (reg!15495 r!7292) (reg!15495 lt!2201389)) (= r!7292 lt!2201389)) (= lambda!281267 lambda!281261))))

(declare-fun bs!1248333 () Bool)

(assert (= bs!1248333 (and b!5401454 b!5401427)))

(assert (=> bs!1248333 (not (= lambda!281267 lambda!281263))))

(assert (=> b!5401454 true))

(assert (=> b!5401454 true))

(declare-fun bs!1248334 () Bool)

(declare-fun b!5401458 () Bool)

(assert (= bs!1248334 (and b!5401458 b!5400867)))

(declare-fun lambda!281268 () Int)

(assert (=> bs!1248334 (= lambda!281268 lambda!281205)))

(declare-fun bs!1248335 () Bool)

(assert (= bs!1248335 (and b!5401458 b!5401454)))

(assert (=> bs!1248335 (not (= lambda!281268 lambda!281267))))

(assert (=> bs!1248334 (not (= lambda!281268 lambda!281204))))

(declare-fun bs!1248336 () Bool)

(assert (= bs!1248336 (and b!5401458 b!5401427)))

(assert (=> bs!1248336 (= (and (= (regOne!30844 r!7292) (regOne!30844 lt!2201389)) (= (regTwo!30844 r!7292) (regTwo!30844 lt!2201389))) (= lambda!281268 lambda!281263))))

(declare-fun bs!1248337 () Bool)

(assert (= bs!1248337 (and b!5401458 b!5401423)))

(assert (=> bs!1248337 (not (= lambda!281268 lambda!281261))))

(assert (=> b!5401458 true))

(assert (=> b!5401458 true))

(declare-fun bm!386562 () Bool)

(declare-fun call!386568 () Bool)

(assert (=> bm!386562 (= call!386568 (isEmpty!33670 s!2326))))

(declare-fun c!941489 () Bool)

(declare-fun call!386567 () Bool)

(declare-fun bm!386563 () Bool)

(assert (=> bm!386563 (= call!386567 (Exists!2347 (ite c!941489 lambda!281267 lambda!281268)))))

(declare-fun b!5401448 () Bool)

(declare-fun res!2296228 () Bool)

(declare-fun e!3349023 () Bool)

(assert (=> b!5401448 (=> res!2296228 e!3349023)))

(assert (=> b!5401448 (= res!2296228 call!386568)))

(declare-fun e!3349028 () Bool)

(assert (=> b!5401448 (= e!3349028 e!3349023)))

(declare-fun b!5401450 () Bool)

(declare-fun e!3349025 () Bool)

(declare-fun e!3349026 () Bool)

(assert (=> b!5401450 (= e!3349025 e!3349026)))

(declare-fun res!2296227 () Bool)

(assert (=> b!5401450 (= res!2296227 (matchRSpec!2269 (regOne!30845 r!7292) s!2326))))

(assert (=> b!5401450 (=> res!2296227 e!3349026)))

(declare-fun b!5401451 () Bool)

(assert (=> b!5401451 (= e!3349026 (matchRSpec!2269 (regTwo!30845 r!7292) s!2326))))

(declare-fun b!5401452 () Bool)

(declare-fun e!3349029 () Bool)

(assert (=> b!5401452 (= e!3349029 (= s!2326 (Cons!61675 (c!941352 r!7292) Nil!61675)))))

(declare-fun b!5401453 () Bool)

(assert (=> b!5401453 (= e!3349025 e!3349028)))

(assert (=> b!5401453 (= c!941489 (is-Star!15166 r!7292))))

(assert (=> b!5401454 (= e!3349023 call!386567)))

(declare-fun b!5401455 () Bool)

(declare-fun c!941490 () Bool)

(assert (=> b!5401455 (= c!941490 (is-ElementMatch!15166 r!7292))))

(declare-fun e!3349027 () Bool)

(assert (=> b!5401455 (= e!3349027 e!3349029)))

(declare-fun b!5401456 () Bool)

(declare-fun e!3349024 () Bool)

(assert (=> b!5401456 (= e!3349024 e!3349027)))

(declare-fun res!2296226 () Bool)

(assert (=> b!5401456 (= res!2296226 (not (is-EmptyLang!15166 r!7292)))))

(assert (=> b!5401456 (=> (not res!2296226) (not e!3349027))))

(declare-fun b!5401457 () Bool)

(declare-fun c!941492 () Bool)

(assert (=> b!5401457 (= c!941492 (is-Union!15166 r!7292))))

(assert (=> b!5401457 (= e!3349029 e!3349025)))

(assert (=> b!5401458 (= e!3349028 call!386567)))

(declare-fun b!5401449 () Bool)

(assert (=> b!5401449 (= e!3349024 call!386568)))

(declare-fun d!1725215 () Bool)

(declare-fun c!941491 () Bool)

(assert (=> d!1725215 (= c!941491 (is-EmptyExpr!15166 r!7292))))

(assert (=> d!1725215 (= (matchRSpec!2269 r!7292 s!2326) e!3349024)))

(assert (= (and d!1725215 c!941491) b!5401449))

(assert (= (and d!1725215 (not c!941491)) b!5401456))

(assert (= (and b!5401456 res!2296226) b!5401455))

(assert (= (and b!5401455 c!941490) b!5401452))

(assert (= (and b!5401455 (not c!941490)) b!5401457))

(assert (= (and b!5401457 c!941492) b!5401450))

(assert (= (and b!5401457 (not c!941492)) b!5401453))

(assert (= (and b!5401450 (not res!2296227)) b!5401451))

(assert (= (and b!5401453 c!941489) b!5401448))

(assert (= (and b!5401453 (not c!941489)) b!5401458))

(assert (= (and b!5401448 (not res!2296228)) b!5401454))

(assert (= (or b!5401454 b!5401458) bm!386563))

(assert (= (or b!5401449 b!5401448) bm!386562))

(assert (=> bm!386562 m!6425688))

(declare-fun m!6425990 () Bool)

(assert (=> bm!386563 m!6425990))

(declare-fun m!6425992 () Bool)

(assert (=> b!5401450 m!6425992))

(declare-fun m!6425994 () Bool)

(assert (=> b!5401451 m!6425994))

(assert (=> b!5400866 d!1725215))

(declare-fun b!5401463 () Bool)

(declare-fun e!3349034 () Bool)

(assert (=> b!5401463 (= e!3349034 (matchR!7351 (derivativeStep!4254 r!7292 (head!11585 s!2326)) (tail!10682 s!2326)))))

(declare-fun b!5401464 () Bool)

(declare-fun e!3349038 () Bool)

(declare-fun lt!2201659 () Bool)

(assert (=> b!5401464 (= e!3349038 (not lt!2201659))))

(declare-fun b!5401465 () Bool)

(declare-fun e!3349036 () Bool)

(assert (=> b!5401465 (= e!3349036 e!3349038)))

(declare-fun c!941495 () Bool)

(assert (=> b!5401465 (= c!941495 (is-EmptyLang!15166 r!7292))))

(declare-fun b!5401466 () Bool)

(declare-fun e!3349033 () Bool)

(declare-fun e!3349037 () Bool)

(assert (=> b!5401466 (= e!3349033 e!3349037)))

(declare-fun res!2296233 () Bool)

(assert (=> b!5401466 (=> (not res!2296233) (not e!3349037))))

(assert (=> b!5401466 (= res!2296233 (not lt!2201659))))

(declare-fun b!5401468 () Bool)

(declare-fun res!2296234 () Bool)

(declare-fun e!3349035 () Bool)

(assert (=> b!5401468 (=> (not res!2296234) (not e!3349035))))

(assert (=> b!5401468 (= res!2296234 (isEmpty!33670 (tail!10682 s!2326)))))

(declare-fun b!5401469 () Bool)

(declare-fun e!3349032 () Bool)

(assert (=> b!5401469 (= e!3349032 (not (= (head!11585 s!2326) (c!941352 r!7292))))))

(declare-fun b!5401470 () Bool)

(assert (=> b!5401470 (= e!3349035 (= (head!11585 s!2326) (c!941352 r!7292)))))

(declare-fun bm!386566 () Bool)

(declare-fun call!386571 () Bool)

(assert (=> bm!386566 (= call!386571 (isEmpty!33670 s!2326))))

(declare-fun b!5401471 () Bool)

(assert (=> b!5401471 (= e!3349034 (nullable!5335 r!7292))))

(declare-fun b!5401472 () Bool)

(declare-fun res!2296237 () Bool)

(assert (=> b!5401472 (=> res!2296237 e!3349033)))

(assert (=> b!5401472 (= res!2296237 e!3349035)))

(declare-fun res!2296236 () Bool)

(assert (=> b!5401472 (=> (not res!2296236) (not e!3349035))))

(assert (=> b!5401472 (= res!2296236 lt!2201659)))

(declare-fun b!5401473 () Bool)

(declare-fun res!2296239 () Bool)

(assert (=> b!5401473 (=> res!2296239 e!3349032)))

(assert (=> b!5401473 (= res!2296239 (not (isEmpty!33670 (tail!10682 s!2326))))))

(declare-fun b!5401474 () Bool)

(assert (=> b!5401474 (= e!3349036 (= lt!2201659 call!386571))))

(declare-fun b!5401475 () Bool)

(declare-fun res!2296240 () Bool)

(assert (=> b!5401475 (=> (not res!2296240) (not e!3349035))))

(assert (=> b!5401475 (= res!2296240 (not call!386571))))

(declare-fun b!5401476 () Bool)

(declare-fun res!2296235 () Bool)

(assert (=> b!5401476 (=> res!2296235 e!3349033)))

(assert (=> b!5401476 (= res!2296235 (not (is-ElementMatch!15166 r!7292)))))

(assert (=> b!5401476 (= e!3349038 e!3349033)))

(declare-fun b!5401467 () Bool)

(assert (=> b!5401467 (= e!3349037 e!3349032)))

(declare-fun res!2296238 () Bool)

(assert (=> b!5401467 (=> res!2296238 e!3349032)))

(assert (=> b!5401467 (= res!2296238 call!386571)))

(declare-fun d!1725217 () Bool)

(assert (=> d!1725217 e!3349036))

(declare-fun c!941494 () Bool)

(assert (=> d!1725217 (= c!941494 (is-EmptyExpr!15166 r!7292))))

(assert (=> d!1725217 (= lt!2201659 e!3349034)))

(declare-fun c!941493 () Bool)

(assert (=> d!1725217 (= c!941493 (isEmpty!33670 s!2326))))

(assert (=> d!1725217 (validRegex!6902 r!7292)))

(assert (=> d!1725217 (= (matchR!7351 r!7292 s!2326) lt!2201659)))

(assert (= (and d!1725217 c!941493) b!5401471))

(assert (= (and d!1725217 (not c!941493)) b!5401463))

(assert (= (and d!1725217 c!941494) b!5401474))

(assert (= (and d!1725217 (not c!941494)) b!5401465))

(assert (= (and b!5401465 c!941495) b!5401464))

(assert (= (and b!5401465 (not c!941495)) b!5401476))

(assert (= (and b!5401476 (not res!2296235)) b!5401472))

(assert (= (and b!5401472 res!2296236) b!5401475))

(assert (= (and b!5401475 res!2296240) b!5401468))

(assert (= (and b!5401468 res!2296234) b!5401470))

(assert (= (and b!5401472 (not res!2296237)) b!5401466))

(assert (= (and b!5401466 res!2296233) b!5401467))

(assert (= (and b!5401467 (not res!2296238)) b!5401473))

(assert (= (and b!5401473 (not res!2296239)) b!5401469))

(assert (= (or b!5401474 b!5401467 b!5401475) bm!386566))

(assert (=> b!5401473 m!6425696))

(assert (=> b!5401473 m!6425696))

(assert (=> b!5401473 m!6425744))

(declare-fun m!6425996 () Bool)

(assert (=> b!5401471 m!6425996))

(assert (=> b!5401468 m!6425696))

(assert (=> b!5401468 m!6425696))

(assert (=> b!5401468 m!6425744))

(assert (=> d!1725217 m!6425688))

(assert (=> d!1725217 m!6425336))

(assert (=> b!5401470 m!6425692))

(assert (=> bm!386566 m!6425688))

(assert (=> b!5401469 m!6425692))

(assert (=> b!5401463 m!6425692))

(assert (=> b!5401463 m!6425692))

(declare-fun m!6425998 () Bool)

(assert (=> b!5401463 m!6425998))

(assert (=> b!5401463 m!6425696))

(assert (=> b!5401463 m!6425998))

(assert (=> b!5401463 m!6425696))

(declare-fun m!6426000 () Bool)

(assert (=> b!5401463 m!6426000))

(assert (=> b!5400866 d!1725217))

(declare-fun d!1725219 () Bool)

(assert (=> d!1725219 (= (matchR!7351 r!7292 s!2326) (matchRSpec!2269 r!7292 s!2326))))

(declare-fun lt!2201660 () Unit!154186)

(assert (=> d!1725219 (= lt!2201660 (choose!40700 r!7292 s!2326))))

(assert (=> d!1725219 (validRegex!6902 r!7292)))

(assert (=> d!1725219 (= (mainMatchTheorem!2269 r!7292 s!2326) lt!2201660)))

(declare-fun bs!1248338 () Bool)

(assert (= bs!1248338 d!1725219))

(assert (=> bs!1248338 m!6425346))

(assert (=> bs!1248338 m!6425344))

(declare-fun m!6426002 () Bool)

(assert (=> bs!1248338 m!6426002))

(assert (=> bs!1248338 m!6425336))

(assert (=> b!5400866 d!1725219))

(declare-fun d!1725221 () Bool)

(declare-fun c!941496 () Bool)

(assert (=> d!1725221 (= c!941496 (isEmpty!33670 (_1!35668 lt!2201433)))))

(declare-fun e!3349039 () Bool)

(assert (=> d!1725221 (= (matchZipper!1410 lt!2201400 (_1!35668 lt!2201433)) e!3349039)))

(declare-fun b!5401477 () Bool)

(assert (=> b!5401477 (= e!3349039 (nullableZipper!1433 lt!2201400))))

(declare-fun b!5401478 () Bool)

(assert (=> b!5401478 (= e!3349039 (matchZipper!1410 (derivationStepZipper!1405 lt!2201400 (head!11585 (_1!35668 lt!2201433))) (tail!10682 (_1!35668 lt!2201433))))))

(assert (= (and d!1725221 c!941496) b!5401477))

(assert (= (and d!1725221 (not c!941496)) b!5401478))

(assert (=> d!1725221 m!6425790))

(declare-fun m!6426004 () Bool)

(assert (=> b!5401477 m!6426004))

(assert (=> b!5401478 m!6425792))

(assert (=> b!5401478 m!6425792))

(declare-fun m!6426006 () Bool)

(assert (=> b!5401478 m!6426006))

(assert (=> b!5401478 m!6425784))

(assert (=> b!5401478 m!6426006))

(assert (=> b!5401478 m!6425784))

(declare-fun m!6426008 () Bool)

(assert (=> b!5401478 m!6426008))

(assert (=> b!5400886 d!1725221))

(declare-fun d!1725223 () Bool)

(declare-fun c!941497 () Bool)

(assert (=> d!1725223 (= c!941497 (isEmpty!33670 (t!375022 s!2326)))))

(declare-fun e!3349040 () Bool)

(assert (=> d!1725223 (= (matchZipper!1410 lt!2201413 (t!375022 s!2326)) e!3349040)))

(declare-fun b!5401479 () Bool)

(assert (=> b!5401479 (= e!3349040 (nullableZipper!1433 lt!2201413))))

(declare-fun b!5401480 () Bool)

(assert (=> b!5401480 (= e!3349040 (matchZipper!1410 (derivationStepZipper!1405 lt!2201413 (head!11585 (t!375022 s!2326))) (tail!10682 (t!375022 s!2326))))))

(assert (= (and d!1725223 c!941497) b!5401479))

(assert (= (and d!1725223 (not c!941497)) b!5401480))

(assert (=> d!1725223 m!6425676))

(declare-fun m!6426010 () Bool)

(assert (=> b!5401479 m!6426010))

(assert (=> b!5401480 m!6425680))

(assert (=> b!5401480 m!6425680))

(declare-fun m!6426012 () Bool)

(assert (=> b!5401480 m!6426012))

(assert (=> b!5401480 m!6425684))

(assert (=> b!5401480 m!6426012))

(assert (=> b!5401480 m!6425684))

(declare-fun m!6426014 () Bool)

(assert (=> b!5401480 m!6426014))

(assert (=> b!5400887 d!1725223))

(declare-fun b!5401510 () Bool)

(declare-fun e!3349060 () Bool)

(declare-fun lt!2201667 () Option!15277)

(assert (=> b!5401510 (= e!3349060 (not (isDefined!11980 lt!2201667)))))

(declare-fun b!5401511 () Bool)

(declare-fun res!2296255 () Bool)

(declare-fun e!3349061 () Bool)

(assert (=> b!5401511 (=> (not res!2296255) (not e!3349061))))

(assert (=> b!5401511 (= res!2296255 (matchR!7351 (regTwo!30844 r!7292) (_2!35668 (get!21252 lt!2201667))))))

(declare-fun b!5401512 () Bool)

(declare-fun e!3349062 () Option!15277)

(assert (=> b!5401512 (= e!3349062 (Some!15276 (tuple2!64731 Nil!61675 s!2326)))))

(declare-fun b!5401513 () Bool)

(declare-fun lt!2201668 () Unit!154186)

(declare-fun lt!2201669 () Unit!154186)

(assert (=> b!5401513 (= lt!2201668 lt!2201669)))

(assert (=> b!5401513 (= (++!13506 (++!13506 Nil!61675 (Cons!61675 (h!68123 s!2326) Nil!61675)) (t!375022 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1828 (List!61799 C!30602 List!61799 List!61799) Unit!154186)

(assert (=> b!5401513 (= lt!2201669 (lemmaMoveElementToOtherListKeepsConcatEq!1828 Nil!61675 (h!68123 s!2326) (t!375022 s!2326) s!2326))))

(declare-fun e!3349058 () Option!15277)

(assert (=> b!5401513 (= e!3349058 (findConcatSeparation!1691 (regOne!30844 r!7292) (regTwo!30844 r!7292) (++!13506 Nil!61675 (Cons!61675 (h!68123 s!2326) Nil!61675)) (t!375022 s!2326) s!2326))))

(declare-fun b!5401514 () Bool)

(assert (=> b!5401514 (= e!3349062 e!3349058)))

(declare-fun c!941507 () Bool)

(assert (=> b!5401514 (= c!941507 (is-Nil!61675 s!2326))))

(declare-fun b!5401515 () Bool)

(declare-fun res!2296258 () Bool)

(assert (=> b!5401515 (=> (not res!2296258) (not e!3349061))))

(assert (=> b!5401515 (= res!2296258 (matchR!7351 (regOne!30844 r!7292) (_1!35668 (get!21252 lt!2201667))))))

(declare-fun b!5401516 () Bool)

(assert (=> b!5401516 (= e!3349061 (= (++!13506 (_1!35668 (get!21252 lt!2201667)) (_2!35668 (get!21252 lt!2201667))) s!2326))))

(declare-fun b!5401517 () Bool)

(assert (=> b!5401517 (= e!3349058 None!15276)))

(declare-fun b!5401518 () Bool)

(declare-fun e!3349059 () Bool)

(assert (=> b!5401518 (= e!3349059 (matchR!7351 (regTwo!30844 r!7292) s!2326))))

(declare-fun d!1725225 () Bool)

(assert (=> d!1725225 e!3349060))

(declare-fun res!2296257 () Bool)

(assert (=> d!1725225 (=> res!2296257 e!3349060)))

(assert (=> d!1725225 (= res!2296257 e!3349061)))

(declare-fun res!2296256 () Bool)

(assert (=> d!1725225 (=> (not res!2296256) (not e!3349061))))

(assert (=> d!1725225 (= res!2296256 (isDefined!11980 lt!2201667))))

(assert (=> d!1725225 (= lt!2201667 e!3349062)))

(declare-fun c!941506 () Bool)

(assert (=> d!1725225 (= c!941506 e!3349059)))

(declare-fun res!2296254 () Bool)

(assert (=> d!1725225 (=> (not res!2296254) (not e!3349059))))

(assert (=> d!1725225 (= res!2296254 (matchR!7351 (regOne!30844 r!7292) Nil!61675))))

(assert (=> d!1725225 (validRegex!6902 (regOne!30844 r!7292))))

(assert (=> d!1725225 (= (findConcatSeparation!1691 (regOne!30844 r!7292) (regTwo!30844 r!7292) Nil!61675 s!2326 s!2326) lt!2201667)))

(assert (= (and d!1725225 res!2296254) b!5401518))

(assert (= (and d!1725225 c!941506) b!5401512))

(assert (= (and d!1725225 (not c!941506)) b!5401514))

(assert (= (and b!5401514 c!941507) b!5401517))

(assert (= (and b!5401514 (not c!941507)) b!5401513))

(assert (= (and d!1725225 res!2296256) b!5401515))

(assert (= (and b!5401515 res!2296258) b!5401511))

(assert (= (and b!5401511 res!2296255) b!5401516))

(assert (= (and d!1725225 (not res!2296257)) b!5401510))

(declare-fun m!6426024 () Bool)

(assert (=> b!5401510 m!6426024))

(declare-fun m!6426026 () Bool)

(assert (=> b!5401511 m!6426026))

(declare-fun m!6426028 () Bool)

(assert (=> b!5401511 m!6426028))

(assert (=> b!5401515 m!6426026))

(declare-fun m!6426030 () Bool)

(assert (=> b!5401515 m!6426030))

(declare-fun m!6426032 () Bool)

(assert (=> b!5401513 m!6426032))

(assert (=> b!5401513 m!6426032))

(declare-fun m!6426034 () Bool)

(assert (=> b!5401513 m!6426034))

(declare-fun m!6426036 () Bool)

(assert (=> b!5401513 m!6426036))

(assert (=> b!5401513 m!6426032))

(declare-fun m!6426038 () Bool)

(assert (=> b!5401513 m!6426038))

(declare-fun m!6426040 () Bool)

(assert (=> b!5401518 m!6426040))

(assert (=> d!1725225 m!6426024))

(declare-fun m!6426042 () Bool)

(assert (=> d!1725225 m!6426042))

(declare-fun m!6426044 () Bool)

(assert (=> d!1725225 m!6426044))

(assert (=> b!5401516 m!6426026))

(declare-fun m!6426046 () Bool)

(assert (=> b!5401516 m!6426046))

(assert (=> b!5400867 d!1725225))

(declare-fun d!1725229 () Bool)

(declare-fun choose!40702 (Int) Bool)

(assert (=> d!1725229 (= (Exists!2347 lambda!281204) (choose!40702 lambda!281204))))

(declare-fun bs!1248342 () Bool)

(assert (= bs!1248342 d!1725229))

(declare-fun m!6426048 () Bool)

(assert (=> bs!1248342 m!6426048))

(assert (=> b!5400867 d!1725229))

(declare-fun bs!1248343 () Bool)

(declare-fun d!1725231 () Bool)

(assert (= bs!1248343 (and d!1725231 b!5400867)))

(declare-fun lambda!281275 () Int)

(assert (=> bs!1248343 (not (= lambda!281275 lambda!281205))))

(declare-fun bs!1248344 () Bool)

(assert (= bs!1248344 (and d!1725231 b!5401458)))

(assert (=> bs!1248344 (not (= lambda!281275 lambda!281268))))

(declare-fun bs!1248345 () Bool)

(assert (= bs!1248345 (and d!1725231 b!5401454)))

(assert (=> bs!1248345 (not (= lambda!281275 lambda!281267))))

(assert (=> bs!1248343 (= lambda!281275 lambda!281204)))

(declare-fun bs!1248346 () Bool)

(assert (= bs!1248346 (and d!1725231 b!5401427)))

(assert (=> bs!1248346 (not (= lambda!281275 lambda!281263))))

(declare-fun bs!1248347 () Bool)

(assert (= bs!1248347 (and d!1725231 b!5401423)))

(assert (=> bs!1248347 (not (= lambda!281275 lambda!281261))))

(assert (=> d!1725231 true))

(assert (=> d!1725231 true))

(assert (=> d!1725231 true))

(declare-fun lambda!281276 () Int)

(assert (=> bs!1248343 (= lambda!281276 lambda!281205)))

(assert (=> bs!1248344 (= lambda!281276 lambda!281268)))

(assert (=> bs!1248345 (not (= lambda!281276 lambda!281267))))

(assert (=> bs!1248343 (not (= lambda!281276 lambda!281204))))

(assert (=> bs!1248346 (= (and (= (regOne!30844 r!7292) (regOne!30844 lt!2201389)) (= (regTwo!30844 r!7292) (regTwo!30844 lt!2201389))) (= lambda!281276 lambda!281263))))

(declare-fun bs!1248348 () Bool)

(assert (= bs!1248348 d!1725231))

(assert (=> bs!1248348 (not (= lambda!281276 lambda!281275))))

(assert (=> bs!1248347 (not (= lambda!281276 lambda!281261))))

(assert (=> d!1725231 true))

(assert (=> d!1725231 true))

(assert (=> d!1725231 true))

(assert (=> d!1725231 (= (Exists!2347 lambda!281275) (Exists!2347 lambda!281276))))

(declare-fun lt!2201674 () Unit!154186)

(declare-fun choose!40703 (Regex!15166 Regex!15166 List!61799) Unit!154186)

(assert (=> d!1725231 (= lt!2201674 (choose!40703 (regOne!30844 r!7292) (regTwo!30844 r!7292) s!2326))))

(assert (=> d!1725231 (validRegex!6902 (regOne!30844 r!7292))))

(assert (=> d!1725231 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1001 (regOne!30844 r!7292) (regTwo!30844 r!7292) s!2326) lt!2201674)))

(declare-fun m!6426050 () Bool)

(assert (=> bs!1248348 m!6426050))

(declare-fun m!6426052 () Bool)

(assert (=> bs!1248348 m!6426052))

(declare-fun m!6426054 () Bool)

(assert (=> bs!1248348 m!6426054))

(assert (=> bs!1248348 m!6426044))

(assert (=> b!5400867 d!1725231))

(declare-fun d!1725233 () Bool)

(declare-fun isEmpty!33672 (Option!15277) Bool)

(assert (=> d!1725233 (= (isDefined!11980 (findConcatSeparation!1691 (regOne!30844 r!7292) (regTwo!30844 r!7292) Nil!61675 s!2326 s!2326)) (not (isEmpty!33672 (findConcatSeparation!1691 (regOne!30844 r!7292) (regTwo!30844 r!7292) Nil!61675 s!2326 s!2326))))))

(declare-fun bs!1248349 () Bool)

(assert (= bs!1248349 d!1725233))

(assert (=> bs!1248349 m!6425360))

(declare-fun m!6426056 () Bool)

(assert (=> bs!1248349 m!6426056))

(assert (=> b!5400867 d!1725233))

(declare-fun d!1725235 () Bool)

(assert (=> d!1725235 (= (Exists!2347 lambda!281205) (choose!40702 lambda!281205))))

(declare-fun bs!1248350 () Bool)

(assert (= bs!1248350 d!1725235))

(declare-fun m!6426058 () Bool)

(assert (=> bs!1248350 m!6426058))

(assert (=> b!5400867 d!1725235))

(declare-fun bs!1248351 () Bool)

(declare-fun d!1725237 () Bool)

(assert (= bs!1248351 (and d!1725237 d!1725231)))

(declare-fun lambda!281279 () Int)

(assert (=> bs!1248351 (not (= lambda!281279 lambda!281276))))

(declare-fun bs!1248352 () Bool)

(assert (= bs!1248352 (and d!1725237 b!5400867)))

(assert (=> bs!1248352 (not (= lambda!281279 lambda!281205))))

(declare-fun bs!1248353 () Bool)

(assert (= bs!1248353 (and d!1725237 b!5401458)))

(assert (=> bs!1248353 (not (= lambda!281279 lambda!281268))))

(declare-fun bs!1248354 () Bool)

(assert (= bs!1248354 (and d!1725237 b!5401454)))

(assert (=> bs!1248354 (not (= lambda!281279 lambda!281267))))

(assert (=> bs!1248352 (= lambda!281279 lambda!281204)))

(declare-fun bs!1248355 () Bool)

(assert (= bs!1248355 (and d!1725237 b!5401427)))

(assert (=> bs!1248355 (not (= lambda!281279 lambda!281263))))

(assert (=> bs!1248351 (= lambda!281279 lambda!281275)))

(declare-fun bs!1248356 () Bool)

(assert (= bs!1248356 (and d!1725237 b!5401423)))

(assert (=> bs!1248356 (not (= lambda!281279 lambda!281261))))

(assert (=> d!1725237 true))

(assert (=> d!1725237 true))

(assert (=> d!1725237 true))

(assert (=> d!1725237 (= (isDefined!11980 (findConcatSeparation!1691 (regOne!30844 r!7292) (regTwo!30844 r!7292) Nil!61675 s!2326 s!2326)) (Exists!2347 lambda!281279))))

(declare-fun lt!2201678 () Unit!154186)

(declare-fun choose!40704 (Regex!15166 Regex!15166 List!61799) Unit!154186)

(assert (=> d!1725237 (= lt!2201678 (choose!40704 (regOne!30844 r!7292) (regTwo!30844 r!7292) s!2326))))

(assert (=> d!1725237 (validRegex!6902 (regOne!30844 r!7292))))

(assert (=> d!1725237 (= (lemmaFindConcatSeparationEquivalentToExists!1455 (regOne!30844 r!7292) (regTwo!30844 r!7292) s!2326) lt!2201678)))

(declare-fun bs!1248357 () Bool)

(assert (= bs!1248357 d!1725237))

(assert (=> bs!1248357 m!6425360))

(declare-fun m!6426072 () Bool)

(assert (=> bs!1248357 m!6426072))

(assert (=> bs!1248357 m!6425360))

(assert (=> bs!1248357 m!6425362))

(declare-fun m!6426074 () Bool)

(assert (=> bs!1248357 m!6426074))

(assert (=> bs!1248357 m!6426044))

(assert (=> b!5400867 d!1725237))

(declare-fun b!5401593 () Bool)

(declare-fun e!3349102 () List!61799)

(assert (=> b!5401593 (= e!3349102 (Cons!61675 (h!68123 (_1!35668 lt!2201433)) (++!13506 (t!375022 (_1!35668 lt!2201433)) (_2!35668 lt!2201433))))))

(declare-fun b!5401594 () Bool)

(declare-fun res!2296303 () Bool)

(declare-fun e!3349101 () Bool)

(assert (=> b!5401594 (=> (not res!2296303) (not e!3349101))))

(declare-fun lt!2201685 () List!61799)

(declare-fun size!39835 (List!61799) Int)

(assert (=> b!5401594 (= res!2296303 (= (size!39835 lt!2201685) (+ (size!39835 (_1!35668 lt!2201433)) (size!39835 (_2!35668 lt!2201433)))))))

(declare-fun d!1725241 () Bool)

(assert (=> d!1725241 e!3349101))

(declare-fun res!2296302 () Bool)

(assert (=> d!1725241 (=> (not res!2296302) (not e!3349101))))

(declare-fun content!11050 (List!61799) (Set C!30602))

(assert (=> d!1725241 (= res!2296302 (= (content!11050 lt!2201685) (set.union (content!11050 (_1!35668 lt!2201433)) (content!11050 (_2!35668 lt!2201433)))))))

(assert (=> d!1725241 (= lt!2201685 e!3349102)))

(declare-fun c!941523 () Bool)

(assert (=> d!1725241 (= c!941523 (is-Nil!61675 (_1!35668 lt!2201433)))))

(assert (=> d!1725241 (= (++!13506 (_1!35668 lt!2201433) (_2!35668 lt!2201433)) lt!2201685)))

(declare-fun b!5401592 () Bool)

(assert (=> b!5401592 (= e!3349102 (_2!35668 lt!2201433))))

(declare-fun b!5401595 () Bool)

(assert (=> b!5401595 (= e!3349101 (or (not (= (_2!35668 lt!2201433) Nil!61675)) (= lt!2201685 (_1!35668 lt!2201433))))))

(assert (= (and d!1725241 c!941523) b!5401592))

(assert (= (and d!1725241 (not c!941523)) b!5401593))

(assert (= (and d!1725241 res!2296302) b!5401594))

(assert (= (and b!5401594 res!2296303) b!5401595))

(declare-fun m!6426080 () Bool)

(assert (=> b!5401593 m!6426080))

(declare-fun m!6426082 () Bool)

(assert (=> b!5401594 m!6426082))

(declare-fun m!6426084 () Bool)

(assert (=> b!5401594 m!6426084))

(declare-fun m!6426086 () Bool)

(assert (=> b!5401594 m!6426086))

(declare-fun m!6426088 () Bool)

(assert (=> d!1725241 m!6426088))

(declare-fun m!6426090 () Bool)

(assert (=> d!1725241 m!6426090))

(declare-fun m!6426092 () Bool)

(assert (=> d!1725241 m!6426092))

(assert (=> b!5400884 d!1725241))

(declare-fun d!1725247 () Bool)

(assert (=> d!1725247 (isDefined!11980 (findConcatSeparationZippers!23 lt!2201400 (set.insert lt!2201410 (as set.empty (Set Context!9100))) Nil!61675 s!2326 s!2326))))

(declare-fun lt!2201690 () Unit!154186)

(declare-fun choose!40705 ((Set Context!9100) Context!9100 List!61799) Unit!154186)

(assert (=> d!1725247 (= lt!2201690 (choose!40705 lt!2201400 lt!2201410 s!2326))))

(assert (=> d!1725247 (matchZipper!1410 (appendTo!25 lt!2201400 lt!2201410) s!2326)))

(assert (=> d!1725247 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!23 lt!2201400 lt!2201410 s!2326) lt!2201690)))

(declare-fun bs!1248368 () Bool)

(assert (= bs!1248368 d!1725247))

(assert (=> bs!1248368 m!6425480))

(assert (=> bs!1248368 m!6425462))

(declare-fun m!6426108 () Bool)

(assert (=> bs!1248368 m!6426108))

(declare-fun m!6426110 () Bool)

(assert (=> bs!1248368 m!6426110))

(assert (=> bs!1248368 m!6425462))

(assert (=> bs!1248368 m!6426108))

(assert (=> bs!1248368 m!6425480))

(declare-fun m!6426112 () Bool)

(assert (=> bs!1248368 m!6426112))

(declare-fun m!6426114 () Bool)

(assert (=> bs!1248368 m!6426114))

(assert (=> b!5400884 d!1725247))

(declare-fun b!5401658 () Bool)

(declare-fun e!3349139 () Bool)

(assert (=> b!5401658 (= e!3349139 (matchZipper!1410 lt!2201403 s!2326))))

(declare-fun b!5401659 () Bool)

(declare-fun e!3349138 () Option!15277)

(declare-fun e!3349141 () Option!15277)

(assert (=> b!5401659 (= e!3349138 e!3349141)))

(declare-fun c!941544 () Bool)

(assert (=> b!5401659 (= c!941544 (is-Nil!61675 s!2326))))

(declare-fun b!5401660 () Bool)

(declare-fun res!2296331 () Bool)

(declare-fun e!3349142 () Bool)

(assert (=> b!5401660 (=> (not res!2296331) (not e!3349142))))

(declare-fun lt!2201701 () Option!15277)

(assert (=> b!5401660 (= res!2296331 (matchZipper!1410 lt!2201403 (_2!35668 (get!21252 lt!2201701))))))

(declare-fun b!5401661 () Bool)

(declare-fun res!2296328 () Bool)

(assert (=> b!5401661 (=> (not res!2296328) (not e!3349142))))

(assert (=> b!5401661 (= res!2296328 (matchZipper!1410 lt!2201400 (_1!35668 (get!21252 lt!2201701))))))

(declare-fun d!1725255 () Bool)

(declare-fun e!3349140 () Bool)

(assert (=> d!1725255 e!3349140))

(declare-fun res!2296329 () Bool)

(assert (=> d!1725255 (=> res!2296329 e!3349140)))

(assert (=> d!1725255 (= res!2296329 e!3349142)))

(declare-fun res!2296330 () Bool)

(assert (=> d!1725255 (=> (not res!2296330) (not e!3349142))))

(assert (=> d!1725255 (= res!2296330 (isDefined!11980 lt!2201701))))

(assert (=> d!1725255 (= lt!2201701 e!3349138)))

(declare-fun c!941543 () Bool)

(assert (=> d!1725255 (= c!941543 e!3349139)))

(declare-fun res!2296332 () Bool)

(assert (=> d!1725255 (=> (not res!2296332) (not e!3349139))))

(assert (=> d!1725255 (= res!2296332 (matchZipper!1410 lt!2201400 Nil!61675))))

(assert (=> d!1725255 (= (++!13506 Nil!61675 s!2326) s!2326)))

(assert (=> d!1725255 (= (findConcatSeparationZippers!23 lt!2201400 lt!2201403 Nil!61675 s!2326 s!2326) lt!2201701)))

(declare-fun b!5401662 () Bool)

(assert (=> b!5401662 (= e!3349141 None!15276)))

(declare-fun b!5401663 () Bool)

(declare-fun lt!2201702 () Unit!154186)

(declare-fun lt!2201700 () Unit!154186)

(assert (=> b!5401663 (= lt!2201702 lt!2201700)))

(assert (=> b!5401663 (= (++!13506 (++!13506 Nil!61675 (Cons!61675 (h!68123 s!2326) Nil!61675)) (t!375022 s!2326)) s!2326)))

(assert (=> b!5401663 (= lt!2201700 (lemmaMoveElementToOtherListKeepsConcatEq!1828 Nil!61675 (h!68123 s!2326) (t!375022 s!2326) s!2326))))

(assert (=> b!5401663 (= e!3349141 (findConcatSeparationZippers!23 lt!2201400 lt!2201403 (++!13506 Nil!61675 (Cons!61675 (h!68123 s!2326) Nil!61675)) (t!375022 s!2326) s!2326))))

(declare-fun b!5401664 () Bool)

(assert (=> b!5401664 (= e!3349140 (not (isDefined!11980 lt!2201701)))))

(declare-fun b!5401665 () Bool)

(assert (=> b!5401665 (= e!3349138 (Some!15276 (tuple2!64731 Nil!61675 s!2326)))))

(declare-fun b!5401666 () Bool)

(assert (=> b!5401666 (= e!3349142 (= (++!13506 (_1!35668 (get!21252 lt!2201701)) (_2!35668 (get!21252 lt!2201701))) s!2326))))

(assert (= (and d!1725255 res!2296332) b!5401658))

(assert (= (and d!1725255 c!941543) b!5401665))

(assert (= (and d!1725255 (not c!941543)) b!5401659))

(assert (= (and b!5401659 c!941544) b!5401662))

(assert (= (and b!5401659 (not c!941544)) b!5401663))

(assert (= (and d!1725255 res!2296330) b!5401661))

(assert (= (and b!5401661 res!2296328) b!5401660))

(assert (= (and b!5401660 res!2296331) b!5401666))

(assert (= (and d!1725255 (not res!2296329)) b!5401664))

(declare-fun m!6426124 () Bool)

(assert (=> b!5401664 m!6426124))

(declare-fun m!6426128 () Bool)

(assert (=> b!5401666 m!6426128))

(declare-fun m!6426132 () Bool)

(assert (=> b!5401666 m!6426132))

(assert (=> d!1725255 m!6426124))

(declare-fun m!6426136 () Bool)

(assert (=> d!1725255 m!6426136))

(declare-fun m!6426140 () Bool)

(assert (=> d!1725255 m!6426140))

(assert (=> b!5401663 m!6426032))

(assert (=> b!5401663 m!6426032))

(assert (=> b!5401663 m!6426034))

(assert (=> b!5401663 m!6426036))

(assert (=> b!5401663 m!6426032))

(declare-fun m!6426146 () Bool)

(assert (=> b!5401663 m!6426146))

(assert (=> b!5401660 m!6426128))

(declare-fun m!6426148 () Bool)

(assert (=> b!5401660 m!6426148))

(assert (=> b!5401661 m!6426128))

(declare-fun m!6426150 () Bool)

(assert (=> b!5401661 m!6426150))

(declare-fun m!6426152 () Bool)

(assert (=> b!5401658 m!6426152))

(assert (=> b!5400884 d!1725255))

(declare-fun d!1725259 () Bool)

(assert (=> d!1725259 (= (isDefined!11980 lt!2201391) (not (isEmpty!33672 lt!2201391)))))

(declare-fun bs!1248370 () Bool)

(assert (= bs!1248370 d!1725259))

(declare-fun m!6426154 () Bool)

(assert (=> bs!1248370 m!6426154))

(assert (=> b!5400884 d!1725259))

(declare-fun d!1725261 () Bool)

(assert (=> d!1725261 (= (get!21252 lt!2201391) (v!51305 lt!2201391))))

(assert (=> b!5400884 d!1725261))

(declare-fun d!1725263 () Bool)

(declare-fun c!941548 () Bool)

(assert (=> d!1725263 (= c!941548 (and (is-ElementMatch!15166 (reg!15495 (regOne!30844 r!7292))) (= (c!941352 (reg!15495 (regOne!30844 r!7292))) (h!68123 s!2326))))))

(declare-fun e!3349147 () (Set Context!9100))

(assert (=> d!1725263 (= (derivationStepZipperDown!614 (reg!15495 (regOne!30844 r!7292)) lt!2201410 (h!68123 s!2326)) e!3349147)))

(declare-fun b!5401667 () Bool)

(declare-fun e!3349144 () (Set Context!9100))

(declare-fun e!3349145 () (Set Context!9100))

(assert (=> b!5401667 (= e!3349144 e!3349145)))

(declare-fun c!941547 () Bool)

(assert (=> b!5401667 (= c!941547 (is-Concat!24011 (reg!15495 (regOne!30844 r!7292))))))

(declare-fun bm!386577 () Bool)

(declare-fun call!386586 () List!61797)

(declare-fun call!386582 () List!61797)

(assert (=> bm!386577 (= call!386586 call!386582)))

(declare-fun b!5401668 () Bool)

(declare-fun e!3349146 () (Set Context!9100))

(declare-fun call!386585 () (Set Context!9100))

(declare-fun call!386583 () (Set Context!9100))

(assert (=> b!5401668 (= e!3349146 (set.union call!386585 call!386583))))

(declare-fun b!5401669 () Bool)

(declare-fun e!3349143 () Bool)

(assert (=> b!5401669 (= e!3349143 (nullable!5335 (regOne!30844 (reg!15495 (regOne!30844 r!7292)))))))

(declare-fun b!5401670 () Bool)

(declare-fun c!941546 () Bool)

(assert (=> b!5401670 (= c!941546 e!3349143)))

(declare-fun res!2296333 () Bool)

(assert (=> b!5401670 (=> (not res!2296333) (not e!3349143))))

(assert (=> b!5401670 (= res!2296333 (is-Concat!24011 (reg!15495 (regOne!30844 r!7292))))))

(assert (=> b!5401670 (= e!3349146 e!3349144)))

(declare-fun b!5401671 () Bool)

(assert (=> b!5401671 (= e!3349147 e!3349146)))

(declare-fun c!941549 () Bool)

(assert (=> b!5401671 (= c!941549 (is-Union!15166 (reg!15495 (regOne!30844 r!7292))))))

(declare-fun bm!386578 () Bool)

(declare-fun call!386587 () (Set Context!9100))

(declare-fun call!386584 () (Set Context!9100))

(assert (=> bm!386578 (= call!386587 call!386584)))

(declare-fun bm!386579 () Bool)

(assert (=> bm!386579 (= call!386583 (derivationStepZipperDown!614 (ite c!941549 (regTwo!30845 (reg!15495 (regOne!30844 r!7292))) (regOne!30844 (reg!15495 (regOne!30844 r!7292)))) (ite c!941549 lt!2201410 (Context!9101 call!386582)) (h!68123 s!2326)))))

(declare-fun bm!386580 () Bool)

(assert (=> bm!386580 (= call!386584 call!386585)))

(declare-fun b!5401672 () Bool)

(declare-fun e!3349148 () (Set Context!9100))

(assert (=> b!5401672 (= e!3349148 (as set.empty (Set Context!9100)))))

(declare-fun b!5401673 () Bool)

(declare-fun c!941545 () Bool)

(assert (=> b!5401673 (= c!941545 (is-Star!15166 (reg!15495 (regOne!30844 r!7292))))))

(assert (=> b!5401673 (= e!3349145 e!3349148)))

(declare-fun bm!386581 () Bool)

(assert (=> bm!386581 (= call!386585 (derivationStepZipperDown!614 (ite c!941549 (regOne!30845 (reg!15495 (regOne!30844 r!7292))) (ite c!941546 (regTwo!30844 (reg!15495 (regOne!30844 r!7292))) (ite c!941547 (regOne!30844 (reg!15495 (regOne!30844 r!7292))) (reg!15495 (reg!15495 (regOne!30844 r!7292)))))) (ite (or c!941549 c!941546) lt!2201410 (Context!9101 call!386586)) (h!68123 s!2326)))))

(declare-fun b!5401674 () Bool)

(assert (=> b!5401674 (= e!3349144 (set.union call!386583 call!386584))))

(declare-fun b!5401675 () Bool)

(assert (=> b!5401675 (= e!3349148 call!386587)))

(declare-fun b!5401676 () Bool)

(assert (=> b!5401676 (= e!3349147 (set.insert lt!2201410 (as set.empty (Set Context!9100))))))

(declare-fun bm!386582 () Bool)

(assert (=> bm!386582 (= call!386582 ($colon$colon!1483 (exprs!5050 lt!2201410) (ite (or c!941546 c!941547) (regTwo!30844 (reg!15495 (regOne!30844 r!7292))) (reg!15495 (regOne!30844 r!7292)))))))

(declare-fun b!5401677 () Bool)

(assert (=> b!5401677 (= e!3349145 call!386587)))

(assert (= (and d!1725263 c!941548) b!5401676))

(assert (= (and d!1725263 (not c!941548)) b!5401671))

(assert (= (and b!5401671 c!941549) b!5401668))

(assert (= (and b!5401671 (not c!941549)) b!5401670))

(assert (= (and b!5401670 res!2296333) b!5401669))

(assert (= (and b!5401670 c!941546) b!5401674))

(assert (= (and b!5401670 (not c!941546)) b!5401667))

(assert (= (and b!5401667 c!941547) b!5401677))

(assert (= (and b!5401667 (not c!941547)) b!5401673))

(assert (= (and b!5401673 c!941545) b!5401675))

(assert (= (and b!5401673 (not c!941545)) b!5401672))

(assert (= (or b!5401677 b!5401675) bm!386577))

(assert (= (or b!5401677 b!5401675) bm!386578))

(assert (= (or b!5401674 bm!386577) bm!386582))

(assert (= (or b!5401674 bm!386578) bm!386580))

(assert (= (or b!5401668 b!5401674) bm!386579))

(assert (= (or b!5401668 bm!386580) bm!386581))

(declare-fun m!6426156 () Bool)

(assert (=> b!5401669 m!6426156))

(declare-fun m!6426158 () Bool)

(assert (=> bm!386582 m!6426158))

(declare-fun m!6426160 () Bool)

(assert (=> bm!386581 m!6426160))

(assert (=> b!5401676 m!6425462))

(declare-fun m!6426162 () Bool)

(assert (=> bm!386579 m!6426162))

(assert (=> b!5400863 d!1725263))

(declare-fun d!1725265 () Bool)

(assert (=> d!1725265 (= (flatMap!893 lt!2201401 lambda!281206) (choose!40696 lt!2201401 lambda!281206))))

(declare-fun bs!1248371 () Bool)

(assert (= bs!1248371 d!1725265))

(declare-fun m!6426164 () Bool)

(assert (=> bs!1248371 m!6426164))

(assert (=> b!5400885 d!1725265))

(declare-fun b!5401678 () Bool)

(declare-fun e!3349149 () (Set Context!9100))

(declare-fun call!386588 () (Set Context!9100))

(assert (=> b!5401678 (= e!3349149 call!386588)))

(declare-fun e!3349151 () (Set Context!9100))

(declare-fun b!5401679 () Bool)

(assert (=> b!5401679 (= e!3349151 (set.union call!386588 (derivationStepZipperUp!538 (Context!9101 (t!375020 (exprs!5050 lt!2201405))) (h!68123 s!2326))))))

(declare-fun b!5401680 () Bool)

(assert (=> b!5401680 (= e!3349151 e!3349149)))

(declare-fun c!941550 () Bool)

(assert (=> b!5401680 (= c!941550 (is-Cons!61673 (exprs!5050 lt!2201405)))))

(declare-fun d!1725267 () Bool)

(declare-fun c!941551 () Bool)

(declare-fun e!3349150 () Bool)

(assert (=> d!1725267 (= c!941551 e!3349150)))

(declare-fun res!2296334 () Bool)

(assert (=> d!1725267 (=> (not res!2296334) (not e!3349150))))

(assert (=> d!1725267 (= res!2296334 (is-Cons!61673 (exprs!5050 lt!2201405)))))

(assert (=> d!1725267 (= (derivationStepZipperUp!538 lt!2201405 (h!68123 s!2326)) e!3349151)))

(declare-fun b!5401681 () Bool)

(assert (=> b!5401681 (= e!3349149 (as set.empty (Set Context!9100)))))

(declare-fun b!5401682 () Bool)

(assert (=> b!5401682 (= e!3349150 (nullable!5335 (h!68121 (exprs!5050 lt!2201405))))))

(declare-fun bm!386583 () Bool)

(assert (=> bm!386583 (= call!386588 (derivationStepZipperDown!614 (h!68121 (exprs!5050 lt!2201405)) (Context!9101 (t!375020 (exprs!5050 lt!2201405))) (h!68123 s!2326)))))

(assert (= (and d!1725267 res!2296334) b!5401682))

(assert (= (and d!1725267 c!941551) b!5401679))

(assert (= (and d!1725267 (not c!941551)) b!5401680))

(assert (= (and b!5401680 c!941550) b!5401678))

(assert (= (and b!5401680 (not c!941550)) b!5401681))

(assert (= (or b!5401679 b!5401678) bm!386583))

(declare-fun m!6426166 () Bool)

(assert (=> b!5401679 m!6426166))

(declare-fun m!6426168 () Bool)

(assert (=> b!5401682 m!6426168))

(declare-fun m!6426170 () Bool)

(assert (=> bm!386583 m!6426170))

(assert (=> b!5400885 d!1725267))

(declare-fun d!1725269 () Bool)

(assert (=> d!1725269 (= (flatMap!893 lt!2201401 lambda!281206) (dynLambda!24305 lambda!281206 lt!2201405))))

(declare-fun lt!2201703 () Unit!154186)

(assert (=> d!1725269 (= lt!2201703 (choose!40695 lt!2201401 lt!2201405 lambda!281206))))

(assert (=> d!1725269 (= lt!2201401 (set.insert lt!2201405 (as set.empty (Set Context!9100))))))

(assert (=> d!1725269 (= (lemmaFlatMapOnSingletonSet!425 lt!2201401 lt!2201405 lambda!281206) lt!2201703)))

(declare-fun b_lambda!206477 () Bool)

(assert (=> (not b_lambda!206477) (not d!1725269)))

(declare-fun bs!1248372 () Bool)

(assert (= bs!1248372 d!1725269))

(assert (=> bs!1248372 m!6425378))

(declare-fun m!6426172 () Bool)

(assert (=> bs!1248372 m!6426172))

(declare-fun m!6426174 () Bool)

(assert (=> bs!1248372 m!6426174))

(assert (=> bs!1248372 m!6425374))

(assert (=> b!5400885 d!1725269))

(declare-fun bs!1248373 () Bool)

(declare-fun d!1725271 () Bool)

(assert (= bs!1248373 (and d!1725271 b!5400869)))

(declare-fun lambda!281289 () Int)

(assert (=> bs!1248373 (= lambda!281289 lambda!281206)))

(assert (=> d!1725271 true))

(assert (=> d!1725271 (= (derivationStepZipper!1405 lt!2201401 (h!68123 s!2326)) (flatMap!893 lt!2201401 lambda!281289))))

(declare-fun bs!1248374 () Bool)

(assert (= bs!1248374 d!1725271))

(declare-fun m!6426176 () Bool)

(assert (=> bs!1248374 m!6426176))

(assert (=> b!5400885 d!1725271))

(assert (=> b!5400865 d!1725223))

(declare-fun b!5401696 () Bool)

(declare-fun e!3349159 () Bool)

(declare-fun tp!1494378 () Bool)

(assert (=> b!5401696 (= e!3349159 tp!1494378)))

(declare-fun tp!1494379 () Bool)

(declare-fun e!3349158 () Bool)

(declare-fun b!5401695 () Bool)

(assert (=> b!5401695 (= e!3349158 (and (inv!81163 (h!68122 (t!375021 zl!343))) e!3349159 tp!1494379))))

(assert (=> b!5400850 (= tp!1494336 e!3349158)))

(assert (= b!5401695 b!5401696))

(assert (= (and b!5400850 (is-Cons!61674 (t!375021 zl!343))) b!5401695))

(declare-fun m!6426178 () Bool)

(assert (=> b!5401695 m!6426178))

(declare-fun condSetEmpty!35150 () Bool)

(assert (=> setNonEmpty!35144 (= condSetEmpty!35150 (= setRest!35144 (as set.empty (Set Context!9100))))))

(declare-fun setRes!35150 () Bool)

(assert (=> setNonEmpty!35144 (= tp!1494334 setRes!35150)))

(declare-fun setIsEmpty!35150 () Bool)

(assert (=> setIsEmpty!35150 setRes!35150))

(declare-fun setNonEmpty!35150 () Bool)

(declare-fun e!3349163 () Bool)

(declare-fun tp!1494384 () Bool)

(declare-fun setElem!35150 () Context!9100)

(assert (=> setNonEmpty!35150 (= setRes!35150 (and tp!1494384 (inv!81163 setElem!35150) e!3349163))))

(declare-fun setRest!35150 () (Set Context!9100))

(assert (=> setNonEmpty!35150 (= setRest!35144 (set.union (set.insert setElem!35150 (as set.empty (Set Context!9100))) setRest!35150))))

(declare-fun b!5401703 () Bool)

(declare-fun tp!1494385 () Bool)

(assert (=> b!5401703 (= e!3349163 tp!1494385)))

(assert (= (and setNonEmpty!35144 condSetEmpty!35150) setIsEmpty!35150))

(assert (= (and setNonEmpty!35144 (not condSetEmpty!35150)) setNonEmpty!35150))

(assert (= setNonEmpty!35150 b!5401703))

(declare-fun m!6426184 () Bool)

(assert (=> setNonEmpty!35150 m!6426184))

(declare-fun b!5401720 () Bool)

(declare-fun e!3349168 () Bool)

(declare-fun tp!1494396 () Bool)

(assert (=> b!5401720 (= e!3349168 tp!1494396)))

(declare-fun b!5401718 () Bool)

(assert (=> b!5401718 (= e!3349168 tp_is_empty!39585)))

(declare-fun b!5401721 () Bool)

(declare-fun tp!1494398 () Bool)

(declare-fun tp!1494399 () Bool)

(assert (=> b!5401721 (= e!3349168 (and tp!1494398 tp!1494399))))

(declare-fun b!5401719 () Bool)

(declare-fun tp!1494400 () Bool)

(declare-fun tp!1494397 () Bool)

(assert (=> b!5401719 (= e!3349168 (and tp!1494400 tp!1494397))))

(assert (=> b!5400871 (= tp!1494335 e!3349168)))

(assert (= (and b!5400871 (is-ElementMatch!15166 (reg!15495 r!7292))) b!5401718))

(assert (= (and b!5400871 (is-Concat!24011 (reg!15495 r!7292))) b!5401719))

(assert (= (and b!5400871 (is-Star!15166 (reg!15495 r!7292))) b!5401720))

(assert (= (and b!5400871 (is-Union!15166 (reg!15495 r!7292))) b!5401721))

(declare-fun b!5401724 () Bool)

(declare-fun e!3349169 () Bool)

(declare-fun tp!1494401 () Bool)

(assert (=> b!5401724 (= e!3349169 tp!1494401)))

(declare-fun b!5401722 () Bool)

(assert (=> b!5401722 (= e!3349169 tp_is_empty!39585)))

(declare-fun b!5401725 () Bool)

(declare-fun tp!1494403 () Bool)

(declare-fun tp!1494404 () Bool)

(assert (=> b!5401725 (= e!3349169 (and tp!1494403 tp!1494404))))

(declare-fun b!5401723 () Bool)

(declare-fun tp!1494405 () Bool)

(declare-fun tp!1494402 () Bool)

(assert (=> b!5401723 (= e!3349169 (and tp!1494405 tp!1494402))))

(assert (=> b!5400862 (= tp!1494339 e!3349169)))

(assert (= (and b!5400862 (is-ElementMatch!15166 (regOne!30844 r!7292))) b!5401722))

(assert (= (and b!5400862 (is-Concat!24011 (regOne!30844 r!7292))) b!5401723))

(assert (= (and b!5400862 (is-Star!15166 (regOne!30844 r!7292))) b!5401724))

(assert (= (and b!5400862 (is-Union!15166 (regOne!30844 r!7292))) b!5401725))

(declare-fun b!5401728 () Bool)

(declare-fun e!3349170 () Bool)

(declare-fun tp!1494406 () Bool)

(assert (=> b!5401728 (= e!3349170 tp!1494406)))

(declare-fun b!5401726 () Bool)

(assert (=> b!5401726 (= e!3349170 tp_is_empty!39585)))

(declare-fun b!5401729 () Bool)

(declare-fun tp!1494408 () Bool)

(declare-fun tp!1494409 () Bool)

(assert (=> b!5401729 (= e!3349170 (and tp!1494408 tp!1494409))))

(declare-fun b!5401727 () Bool)

(declare-fun tp!1494410 () Bool)

(declare-fun tp!1494407 () Bool)

(assert (=> b!5401727 (= e!3349170 (and tp!1494410 tp!1494407))))

(assert (=> b!5400862 (= tp!1494338 e!3349170)))

(assert (= (and b!5400862 (is-ElementMatch!15166 (regTwo!30844 r!7292))) b!5401726))

(assert (= (and b!5400862 (is-Concat!24011 (regTwo!30844 r!7292))) b!5401727))

(assert (= (and b!5400862 (is-Star!15166 (regTwo!30844 r!7292))) b!5401728))

(assert (= (and b!5400862 (is-Union!15166 (regTwo!30844 r!7292))) b!5401729))

(declare-fun b!5401734 () Bool)

(declare-fun e!3349172 () Bool)

(declare-fun tp!1494411 () Bool)

(assert (=> b!5401734 (= e!3349172 tp!1494411)))

(declare-fun b!5401732 () Bool)

(assert (=> b!5401732 (= e!3349172 tp_is_empty!39585)))

(declare-fun b!5401735 () Bool)

(declare-fun tp!1494413 () Bool)

(declare-fun tp!1494414 () Bool)

(assert (=> b!5401735 (= e!3349172 (and tp!1494413 tp!1494414))))

(declare-fun b!5401733 () Bool)

(declare-fun tp!1494415 () Bool)

(declare-fun tp!1494412 () Bool)

(assert (=> b!5401733 (= e!3349172 (and tp!1494415 tp!1494412))))

(assert (=> b!5400888 (= tp!1494341 e!3349172)))

(assert (= (and b!5400888 (is-ElementMatch!15166 (regOne!30845 r!7292))) b!5401732))

(assert (= (and b!5400888 (is-Concat!24011 (regOne!30845 r!7292))) b!5401733))

(assert (= (and b!5400888 (is-Star!15166 (regOne!30845 r!7292))) b!5401734))

(assert (= (and b!5400888 (is-Union!15166 (regOne!30845 r!7292))) b!5401735))

(declare-fun b!5401738 () Bool)

(declare-fun e!3349173 () Bool)

(declare-fun tp!1494416 () Bool)

(assert (=> b!5401738 (= e!3349173 tp!1494416)))

(declare-fun b!5401736 () Bool)

(assert (=> b!5401736 (= e!3349173 tp_is_empty!39585)))

(declare-fun b!5401739 () Bool)

(declare-fun tp!1494418 () Bool)

(declare-fun tp!1494419 () Bool)

(assert (=> b!5401739 (= e!3349173 (and tp!1494418 tp!1494419))))

(declare-fun b!5401737 () Bool)

(declare-fun tp!1494420 () Bool)

(declare-fun tp!1494417 () Bool)

(assert (=> b!5401737 (= e!3349173 (and tp!1494420 tp!1494417))))

(assert (=> b!5400888 (= tp!1494337 e!3349173)))

(assert (= (and b!5400888 (is-ElementMatch!15166 (regTwo!30845 r!7292))) b!5401736))

(assert (= (and b!5400888 (is-Concat!24011 (regTwo!30845 r!7292))) b!5401737))

(assert (= (and b!5400888 (is-Star!15166 (regTwo!30845 r!7292))) b!5401738))

(assert (= (and b!5400888 (is-Union!15166 (regTwo!30845 r!7292))) b!5401739))

(declare-fun b!5401744 () Bool)

(declare-fun e!3349176 () Bool)

(declare-fun tp!1494423 () Bool)

(assert (=> b!5401744 (= e!3349176 (and tp_is_empty!39585 tp!1494423))))

(assert (=> b!5400853 (= tp!1494343 e!3349176)))

(assert (= (and b!5400853 (is-Cons!61675 (t!375022 s!2326))) b!5401744))

(declare-fun b!5401749 () Bool)

(declare-fun e!3349179 () Bool)

(declare-fun tp!1494428 () Bool)

(declare-fun tp!1494429 () Bool)

(assert (=> b!5401749 (= e!3349179 (and tp!1494428 tp!1494429))))

(assert (=> b!5400868 (= tp!1494340 e!3349179)))

(assert (= (and b!5400868 (is-Cons!61673 (exprs!5050 (h!68122 zl!343)))) b!5401749))

(declare-fun b!5401750 () Bool)

(declare-fun e!3349180 () Bool)

(declare-fun tp!1494430 () Bool)

(declare-fun tp!1494431 () Bool)

(assert (=> b!5401750 (= e!3349180 (and tp!1494430 tp!1494431))))

(assert (=> b!5400864 (= tp!1494342 e!3349180)))

(assert (= (and b!5400864 (is-Cons!61673 (exprs!5050 setElem!35144))) b!5401750))

(declare-fun b_lambda!206479 () Bool)

(assert (= b_lambda!206477 (or b!5400869 b_lambda!206479)))

(declare-fun bs!1248378 () Bool)

(declare-fun d!1725283 () Bool)

(assert (= bs!1248378 (and d!1725283 b!5400869)))

(assert (=> bs!1248378 (= (dynLambda!24305 lambda!281206 lt!2201405) (derivationStepZipperUp!538 lt!2201405 (h!68123 s!2326)))))

(assert (=> bs!1248378 m!6425376))

(assert (=> d!1725269 d!1725283))

(declare-fun b_lambda!206481 () Bool)

(assert (= b_lambda!206469 (or b!5400869 b_lambda!206481)))

(declare-fun bs!1248379 () Bool)

(declare-fun d!1725285 () Bool)

(assert (= bs!1248379 (and d!1725285 b!5400869)))

(assert (=> bs!1248379 (= (dynLambda!24305 lambda!281206 lt!2201388) (derivationStepZipperUp!538 lt!2201388 (h!68123 s!2326)))))

(assert (=> bs!1248379 m!6425456))

(assert (=> d!1725165 d!1725285))

(declare-fun b_lambda!206483 () Bool)

(assert (= b_lambda!206471 (or b!5400869 b_lambda!206483)))

(declare-fun bs!1248380 () Bool)

(declare-fun d!1725287 () Bool)

(assert (= bs!1248380 (and d!1725287 b!5400869)))

(assert (=> bs!1248380 (= (dynLambda!24305 lambda!281206 lt!2201410) (derivationStepZipperUp!538 lt!2201410 (h!68123 s!2326)))))

(assert (=> bs!1248380 m!6425466))

(assert (=> d!1725177 d!1725287))

(declare-fun b_lambda!206485 () Bool)

(assert (= b_lambda!206475 (or b!5400869 b_lambda!206485)))

(declare-fun bs!1248381 () Bool)

(declare-fun d!1725289 () Bool)

(assert (= bs!1248381 (and d!1725289 b!5400869)))

(assert (=> bs!1248381 (= (dynLambda!24305 lambda!281206 (h!68122 zl!343)) (derivationStepZipperUp!538 (h!68122 zl!343) (h!68123 s!2326)))))

(assert (=> bs!1248381 m!6425412))

(assert (=> d!1725203 d!1725289))

(declare-fun b_lambda!206487 () Bool)

(assert (= b_lambda!206473 (or b!5400892 b_lambda!206487)))

(declare-fun bs!1248382 () Bool)

(declare-fun d!1725291 () Bool)

(assert (= bs!1248382 (and d!1725291 b!5400892)))

(declare-fun lt!2201708 () Unit!154186)

(assert (=> bs!1248382 (= lt!2201708 (lemmaConcatPreservesForall!191 (exprs!5050 lt!2201388) lt!2201415 lambda!281208))))

(assert (=> bs!1248382 (= (dynLambda!24306 lambda!281207 lt!2201388) (Context!9101 (++!13505 (exprs!5050 lt!2201388) lt!2201415)))))

(declare-fun m!6426216 () Bool)

(assert (=> bs!1248382 m!6426216))

(declare-fun m!6426218 () Bool)

(assert (=> bs!1248382 m!6426218))

(assert (=> d!1725183 d!1725291))

(push 1)

(assert (not bm!386528))

(assert (not b!5401335))

(assert (not b!5401444))

(assert (not b!5401281))

(assert (not d!1725105))

(assert (not b!5401473))

(assert (not b!5401119))

(assert (not b!5401216))

(assert (not d!1725155))

(assert (not bm!386529))

(assert (not b!5401468))

(assert (not b!5401518))

(assert (not bm!386552))

(assert (not b!5401719))

(assert (not d!1725171))

(assert (not b!5401463))

(assert (not b!5401169))

(assert (not b!5401213))

(assert (not d!1725151))

(assert (not b!5401510))

(assert (not d!1725107))

(assert (not b!5401301))

(assert (not bm!386524))

(assert (not bm!386566))

(assert (not d!1725219))

(assert (not d!1725241))

(assert (not b!5401703))

(assert (not b!5401727))

(assert (not d!1725225))

(assert (not d!1725119))

(assert (not b!5401083))

(assert (not b!5401593))

(assert (not bs!1248382))

(assert (not b!5401078))

(assert (not b!5401296))

(assert (not b!5401179))

(assert (not b!5401264))

(assert (not b!5401434))

(assert (not d!1725139))

(assert (not b!5401720))

(assert (not d!1725199))

(assert (not b!5401118))

(assert (not d!1725113))

(assert (not b!5401205))

(assert (not b!5401362))

(assert (not b!5401159))

(assert (not b!5401350))

(assert (not bs!1248379))

(assert (not b!5401168))

(assert (not b!5401155))

(assert (not d!1725169))

(assert (not b_lambda!206485))

(assert (not b!5401441))

(assert (not b!5401298))

(assert (not b!5401190))

(assert (not b!5401293))

(assert (not b!5401220))

(assert (not bm!386560))

(assert (not b!5401480))

(assert (not d!1725235))

(assert (not b!5401513))

(assert (not d!1725147))

(assert (not b!5401265))

(assert (not bm!386583))

(assert (not bs!1248378))

(assert (not b!5401214))

(assert (not b!5401442))

(assert (not b!5401682))

(assert (not bm!386582))

(assert (not d!1725125))

(assert (not b!5401280))

(assert (not d!1725181))

(assert (not d!1725121))

(assert (not b!5401353))

(assert (not b!5401117))

(assert (not b!5401081))

(assert (not b!5401749))

(assert (not b!5401450))

(assert (not d!1725269))

(assert (not b!5401085))

(assert (not b!5401728))

(assert (not b!5401080))

(assert (not b!5401661))

(assert (not b!5401082))

(assert (not b!5401157))

(assert (not bm!386533))

(assert (not d!1725109))

(assert (not bm!386534))

(assert (not d!1725123))

(assert (not bm!386559))

(assert (not b!5401733))

(assert (not b!5401440))

(assert (not b!5401212))

(assert (not b!5401721))

(assert (not b!5401271))

(assert (not b!5401278))

(assert (not bs!1248380))

(assert (not b!5401679))

(assert (not b!5401268))

(assert (not bm!386551))

(assert (not b!5401511))

(assert (not d!1725223))

(assert (not b!5401660))

(assert (not b!5401516))

(assert (not b!5401307))

(assert (not d!1725217))

(assert (not d!1725229))

(assert (not bm!386579))

(assert (not d!1725127))

(assert (not b!5401750))

(assert (not setNonEmpty!35150))

(assert (not b!5401266))

(assert (not d!1725133))

(assert (not b!5401478))

(assert (not b!5401439))

(assert (not d!1725213))

(assert (not b_lambda!206481))

(assert (not b!5401515))

(assert (not b!5401188))

(assert (not b!5401419))

(assert (not b!5401272))

(assert (not b!5401177))

(assert (not b!5401664))

(assert (not d!1725237))

(assert (not d!1725203))

(assert (not b!5401231))

(assert (not d!1725161))

(assert (not b!5401696))

(assert (not d!1725129))

(assert (not b!5401154))

(assert (not b!5401304))

(assert (not b!5401723))

(assert (not bm!386554))

(assert (not b!5401594))

(assert (not b!5401724))

(assert (not b!5401149))

(assert (not d!1725145))

(assert (not b!5401729))

(assert (not b!5401735))

(assert (not b!5401471))

(assert (not b!5401221))

(assert (not b_lambda!206479))

(assert (not b!5401189))

(assert (not bm!386523))

(assert (not b!5401243))

(assert (not b!5401666))

(assert (not d!1725157))

(assert (not bs!1248381))

(assert (not bm!386518))

(assert (not b!5401232))

(assert (not d!1725179))

(assert (not b!5401175))

(assert (not b!5401167))

(assert (not b!5401348))

(assert (not d!1725149))

(assert (not d!1725183))

(assert (not b_lambda!206487))

(assert (not bm!386561))

(assert (not d!1725247))

(assert (not b!5401669))

(assert (not d!1725153))

(assert (not d!1725259))

(assert (not d!1725137))

(assert (not b!5401174))

(assert (not d!1725141))

(assert (not d!1725131))

(assert (not d!1725185))

(assert (not b!5401345))

(assert (not b!5401479))

(assert (not b!5401305))

(assert (not b!5401120))

(assert (not b!5401239))

(assert (not bm!386549))

(assert (not b!5401310))

(assert (not bm!386563))

(assert (not b!5401269))

(assert (not b!5401077))

(assert (not bm!386553))

(assert (not b!5401738))

(assert (not b!5401193))

(assert (not d!1725163))

(assert (not b!5401242))

(assert (not b!5401241))

(assert tp_is_empty!39585)

(assert (not d!1725165))

(assert (not b!5401737))

(assert (not d!1725255))

(assert (not b!5401477))

(assert (not b!5401451))

(assert (not bm!386581))

(assert (not b!5401236))

(assert (not d!1725205))

(assert (not b!5401658))

(assert (not d!1725233))

(assert (not b!5401420))

(assert (not b!5401240))

(assert (not d!1725231))

(assert (not b!5401734))

(assert (not b!5401112))

(assert (not d!1725265))

(assert (not b!5401156))

(assert (not bm!386562))

(assert (not bm!386520))

(assert (not b!5401663))

(assert (not d!1725211))

(assert (not d!1725143))

(assert (not b!5401191))

(assert (not b!5401469))

(assert (not b!5401744))

(assert (not b!5401183))

(assert (not b!5401206))

(assert (not bm!386532))

(assert (not b!5401211))

(assert (not bm!386526))

(assert (not b!5401739))

(assert (not d!1725177))

(assert (not d!1725201))

(assert (not d!1725271))

(assert (not b!5401470))

(assert (not d!1725115))

(assert (not b!5401725))

(assert (not d!1725117))

(assert (not b_lambda!206483))

(assert (not b!5401176))

(assert (not bm!386525))

(assert (not b!5401695))

(assert (not d!1725167))

(assert (not d!1725221))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


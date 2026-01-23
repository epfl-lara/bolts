; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567482 () Bool)

(assert start!567482)

(declare-fun b!5403040 () Bool)

(assert (=> b!5403040 true))

(assert (=> b!5403040 true))

(declare-fun lambda!281481 () Int)

(declare-fun lambda!281480 () Int)

(assert (=> b!5403040 (not (= lambda!281481 lambda!281480))))

(assert (=> b!5403040 true))

(assert (=> b!5403040 true))

(declare-fun b!5403024 () Bool)

(assert (=> b!5403024 true))

(declare-fun b!5403017 () Bool)

(assert (=> b!5403017 true))

(declare-fun bs!1248454 () Bool)

(declare-fun b!5403029 () Bool)

(assert (= bs!1248454 (and b!5403029 b!5403040)))

(declare-fun lambda!281485 () Int)

(declare-datatypes ((C!30616 0))(
  ( (C!30617 (val!25010 Int)) )
))
(declare-datatypes ((Regex!15173 0))(
  ( (ElementMatch!15173 (c!941743 C!30616)) (Concat!24018 (regOne!30858 Regex!15173) (regTwo!30858 Regex!15173)) (EmptyExpr!15173) (Star!15173 (reg!15502 Regex!15173)) (EmptyLang!15173) (Union!15173 (regOne!30859 Regex!15173) (regTwo!30859 Regex!15173)) )
))
(declare-fun lt!2202723 () Regex!15173)

(declare-fun r!7292 () Regex!15173)

(assert (=> bs!1248454 (= (= lt!2202723 (regOne!30858 r!7292)) (= lambda!281485 lambda!281480))))

(assert (=> bs!1248454 (not (= lambda!281485 lambda!281481))))

(assert (=> b!5403029 true))

(assert (=> b!5403029 true))

(assert (=> b!5403029 true))

(declare-fun b!5403015 () Bool)

(declare-fun res!2297161 () Bool)

(declare-fun e!3349885 () Bool)

(assert (=> b!5403015 (=> res!2297161 e!3349885)))

(declare-fun lt!2202720 () Regex!15173)

(assert (=> b!5403015 (= res!2297161 (not (= lt!2202720 r!7292)))))

(declare-fun b!5403016 () Bool)

(declare-fun e!3349874 () Bool)

(declare-fun nullable!5342 (Regex!15173) Bool)

(assert (=> b!5403016 (= e!3349874 (nullable!5342 (regOne!30858 (regOne!30858 r!7292))))))

(declare-fun e!3349882 () Bool)

(declare-fun e!3349894 () Bool)

(assert (=> b!5403017 (= e!3349882 e!3349894)))

(declare-fun res!2297176 () Bool)

(assert (=> b!5403017 (=> res!2297176 e!3349894)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61818 0))(
  ( (Nil!61694) (Cons!61694 (h!68142 Regex!15173) (t!375041 List!61818)) )
))
(declare-datatypes ((Context!9114 0))(
  ( (Context!9115 (exprs!5057 List!61818)) )
))
(declare-fun lt!2202708 () (InoxSet Context!9114))

(declare-fun lt!2202729 () (InoxSet Context!9114))

(declare-fun lt!2202716 () Context!9114)

(declare-fun appendTo!32 ((InoxSet Context!9114) Context!9114) (InoxSet Context!9114))

(assert (=> b!5403017 (= res!2297176 (not (= (appendTo!32 lt!2202708 lt!2202716) lt!2202729)))))

(declare-fun lt!2202717 () List!61818)

(declare-fun lambda!281483 () Int)

(declare-fun lt!2202715 () List!61818)

(declare-fun map!14144 ((InoxSet Context!9114) Int) (InoxSet Context!9114))

(declare-fun ++!13519 (List!61818 List!61818) List!61818)

(assert (=> b!5403017 (= (map!14144 lt!2202708 lambda!281483) (store ((as const (Array Context!9114 Bool)) false) (Context!9115 (++!13519 lt!2202715 lt!2202717)) true))))

(declare-fun lambda!281484 () Int)

(declare-datatypes ((Unit!154214 0))(
  ( (Unit!154215) )
))
(declare-fun lt!2202714 () Unit!154214)

(declare-fun lemmaConcatPreservesForall!198 (List!61818 List!61818 Int) Unit!154214)

(assert (=> b!5403017 (= lt!2202714 (lemmaConcatPreservesForall!198 lt!2202715 lt!2202717 lambda!281484))))

(declare-fun lt!2202722 () Context!9114)

(declare-fun lt!2202733 () Unit!154214)

(declare-fun lemmaMapOnSingletonSet!32 ((InoxSet Context!9114) Context!9114 Int) Unit!154214)

(assert (=> b!5403017 (= lt!2202733 (lemmaMapOnSingletonSet!32 lt!2202708 lt!2202722 lambda!281483))))

(declare-fun b!5403018 () Bool)

(declare-fun res!2297156 () Bool)

(declare-fun e!3349875 () Bool)

(assert (=> b!5403018 (=> (not res!2297156) (not e!3349875))))

(declare-fun z!1189 () (InoxSet Context!9114))

(declare-datatypes ((List!61819 0))(
  ( (Nil!61695) (Cons!61695 (h!68143 Context!9114) (t!375042 List!61819)) )
))
(declare-fun zl!343 () List!61819)

(declare-fun toList!8957 ((InoxSet Context!9114)) List!61819)

(assert (=> b!5403018 (= res!2297156 (= (toList!8957 z!1189) zl!343))))

(declare-fun setIsEmpty!35171 () Bool)

(declare-fun setRes!35171 () Bool)

(assert (=> setIsEmpty!35171 setRes!35171))

(declare-fun b!5403019 () Bool)

(declare-fun e!3349876 () Bool)

(declare-fun tp!1494660 () Bool)

(assert (=> b!5403019 (= e!3349876 tp!1494660)))

(declare-fun b!5403020 () Bool)

(declare-fun e!3349877 () Bool)

(assert (=> b!5403020 (= e!3349877 e!3349882)))

(declare-fun res!2297183 () Bool)

(assert (=> b!5403020 (=> res!2297183 e!3349882)))

(declare-fun e!3349888 () Bool)

(assert (=> b!5403020 (= res!2297183 e!3349888)))

(declare-fun res!2297157 () Bool)

(assert (=> b!5403020 (=> (not res!2297157) (not e!3349888))))

(declare-fun lt!2202738 () Bool)

(assert (=> b!5403020 (= res!2297157 (not lt!2202738))))

(declare-fun lt!2202732 () (InoxSet Context!9114))

(declare-datatypes ((List!61820 0))(
  ( (Nil!61696) (Cons!61696 (h!68144 C!30616) (t!375043 List!61820)) )
))
(declare-fun s!2326 () List!61820)

(declare-fun matchZipper!1417 ((InoxSet Context!9114) List!61820) Bool)

(assert (=> b!5403020 (= lt!2202738 (matchZipper!1417 lt!2202732 (t!375043 s!2326)))))

(declare-fun res!2297179 () Bool)

(assert (=> start!567482 (=> (not res!2297179) (not e!3349875))))

(declare-fun validRegex!6909 (Regex!15173) Bool)

(assert (=> start!567482 (= res!2297179 (validRegex!6909 r!7292))))

(assert (=> start!567482 e!3349875))

(declare-fun e!3349896 () Bool)

(assert (=> start!567482 e!3349896))

(declare-fun condSetEmpty!35171 () Bool)

(assert (=> start!567482 (= condSetEmpty!35171 (= z!1189 ((as const (Array Context!9114 Bool)) false)))))

(assert (=> start!567482 setRes!35171))

(declare-fun e!3349893 () Bool)

(assert (=> start!567482 e!3349893))

(declare-fun e!3349887 () Bool)

(assert (=> start!567482 e!3349887))

(declare-fun b!5403021 () Bool)

(declare-fun e!3349879 () Bool)

(declare-fun lt!2202700 () Bool)

(assert (=> b!5403021 (= e!3349879 lt!2202700)))

(declare-fun b!5403022 () Bool)

(declare-fun e!3349891 () Bool)

(assert (=> b!5403022 (= e!3349891 e!3349877)))

(declare-fun res!2297174 () Bool)

(assert (=> b!5403022 (=> res!2297174 e!3349877)))

(declare-fun lt!2202746 () Bool)

(assert (=> b!5403022 (= res!2297174 lt!2202746)))

(declare-fun lt!2202752 () Regex!15173)

(declare-fun matchRSpec!2276 (Regex!15173 List!61820) Bool)

(assert (=> b!5403022 (= lt!2202700 (matchRSpec!2276 lt!2202752 s!2326))))

(declare-fun matchR!7358 (Regex!15173 List!61820) Bool)

(assert (=> b!5403022 (= lt!2202700 (matchR!7358 lt!2202752 s!2326))))

(declare-fun lt!2202751 () Unit!154214)

(declare-fun mainMatchTheorem!2276 (Regex!15173 List!61820) Unit!154214)

(assert (=> b!5403022 (= lt!2202751 (mainMatchTheorem!2276 lt!2202752 s!2326))))

(declare-fun b!5403023 () Bool)

(declare-fun lt!2202726 () (InoxSet Context!9114))

(assert (=> b!5403023 (= e!3349888 (not (matchZipper!1417 lt!2202726 (t!375043 s!2326))))))

(declare-fun e!3349892 () Bool)

(declare-fun e!3349889 () Bool)

(assert (=> b!5403024 (= e!3349892 e!3349889)))

(declare-fun res!2297160 () Bool)

(assert (=> b!5403024 (=> res!2297160 e!3349889)))

(get-info :version)

(assert (=> b!5403024 (= res!2297160 (or (and ((_ is ElementMatch!15173) (regOne!30858 r!7292)) (= (c!941743 (regOne!30858 r!7292)) (h!68144 s!2326))) ((_ is Union!15173) (regOne!30858 r!7292))))))

(declare-fun lt!2202711 () Unit!154214)

(declare-fun e!3349890 () Unit!154214)

(assert (=> b!5403024 (= lt!2202711 e!3349890)))

(declare-fun c!941742 () Bool)

(declare-fun lt!2202704 () Bool)

(assert (=> b!5403024 (= c!941742 lt!2202704)))

(assert (=> b!5403024 (= lt!2202704 (nullable!5342 (h!68142 (exprs!5057 (h!68143 zl!343)))))))

(declare-fun lambda!281482 () Int)

(declare-fun flatMap!900 ((InoxSet Context!9114) Int) (InoxSet Context!9114))

(declare-fun derivationStepZipperUp!545 (Context!9114 C!30616) (InoxSet Context!9114))

(assert (=> b!5403024 (= (flatMap!900 z!1189 lambda!281482) (derivationStepZipperUp!545 (h!68143 zl!343) (h!68144 s!2326)))))

(declare-fun lt!2202719 () Unit!154214)

(declare-fun lemmaFlatMapOnSingletonSet!432 ((InoxSet Context!9114) Context!9114 Int) Unit!154214)

(assert (=> b!5403024 (= lt!2202719 (lemmaFlatMapOnSingletonSet!432 z!1189 (h!68143 zl!343) lambda!281482))))

(declare-fun lt!2202701 () Context!9114)

(assert (=> b!5403024 (= lt!2202726 (derivationStepZipperUp!545 lt!2202701 (h!68144 s!2326)))))

(declare-fun derivationStepZipperDown!621 (Regex!15173 Context!9114 C!30616) (InoxSet Context!9114))

(assert (=> b!5403024 (= lt!2202732 (derivationStepZipperDown!621 (h!68142 (exprs!5057 (h!68143 zl!343))) lt!2202701 (h!68144 s!2326)))))

(assert (=> b!5403024 (= lt!2202701 (Context!9115 (t!375041 (exprs!5057 (h!68143 zl!343)))))))

(declare-fun lt!2202745 () (InoxSet Context!9114))

(assert (=> b!5403024 (= lt!2202745 (derivationStepZipperUp!545 (Context!9115 (Cons!61694 (h!68142 (exprs!5057 (h!68143 zl!343))) (t!375041 (exprs!5057 (h!68143 zl!343))))) (h!68144 s!2326)))))

(declare-fun b!5403025 () Bool)

(declare-fun Unit!154216 () Unit!154214)

(assert (=> b!5403025 (= e!3349890 Unit!154216)))

(declare-fun lt!2202705 () Unit!154214)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!410 ((InoxSet Context!9114) (InoxSet Context!9114) List!61820) Unit!154214)

(assert (=> b!5403025 (= lt!2202705 (lemmaZipperConcatMatchesSameAsBothZippers!410 lt!2202732 lt!2202726 (t!375043 s!2326)))))

(declare-fun res!2297178 () Bool)

(assert (=> b!5403025 (= res!2297178 (matchZipper!1417 lt!2202732 (t!375043 s!2326)))))

(declare-fun e!3349884 () Bool)

(assert (=> b!5403025 (=> res!2297178 e!3349884)))

(assert (=> b!5403025 (= (matchZipper!1417 ((_ map or) lt!2202732 lt!2202726) (t!375043 s!2326)) e!3349884)))

(declare-fun b!5403026 () Bool)

(declare-fun res!2297165 () Bool)

(declare-fun e!3349883 () Bool)

(assert (=> b!5403026 (=> res!2297165 e!3349883)))

(declare-fun generalisedConcat!842 (List!61818) Regex!15173)

(assert (=> b!5403026 (= res!2297165 (not (= r!7292 (generalisedConcat!842 (exprs!5057 (h!68143 zl!343))))))))

(declare-fun b!5403027 () Bool)

(declare-fun tp!1494664 () Bool)

(declare-fun tp!1494666 () Bool)

(assert (=> b!5403027 (= e!3349896 (and tp!1494664 tp!1494666))))

(declare-fun b!5403028 () Bool)

(declare-fun e!3349898 () Bool)

(assert (=> b!5403028 (= e!3349898 (not e!3349883))))

(declare-fun res!2297180 () Bool)

(assert (=> b!5403028 (=> res!2297180 e!3349883)))

(assert (=> b!5403028 (= res!2297180 (not ((_ is Cons!61695) zl!343)))))

(assert (=> b!5403028 (= lt!2202746 (matchRSpec!2276 r!7292 s!2326))))

(assert (=> b!5403028 (= lt!2202746 (matchR!7358 r!7292 s!2326))))

(declare-fun lt!2202727 () Unit!154214)

(assert (=> b!5403028 (= lt!2202727 (mainMatchTheorem!2276 r!7292 s!2326))))

(declare-fun e!3349878 () Bool)

(assert (=> b!5403029 (= e!3349878 true)))

(declare-datatypes ((tuple2!64744 0))(
  ( (tuple2!64745 (_1!35675 List!61820) (_2!35675 List!61820)) )
))
(declare-datatypes ((Option!15284 0))(
  ( (None!15283) (Some!15283 (v!51312 tuple2!64744)) )
))
(declare-fun isDefined!11987 (Option!15284) Bool)

(declare-fun findConcatSeparation!1698 (Regex!15173 Regex!15173 List!61820 List!61820 List!61820) Option!15284)

(declare-fun Exists!2354 (Int) Bool)

(assert (=> b!5403029 (= (isDefined!11987 (findConcatSeparation!1698 lt!2202723 (regTwo!30858 r!7292) Nil!61696 s!2326 s!2326)) (Exists!2354 lambda!281485))))

(declare-fun lt!2202735 () Unit!154214)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1462 (Regex!15173 Regex!15173 List!61820) Unit!154214)

(assert (=> b!5403029 (= lt!2202735 (lemmaFindConcatSeparationEquivalentToExists!1462 lt!2202723 (regTwo!30858 r!7292) s!2326))))

(declare-fun lt!2202744 () Regex!15173)

(assert (=> b!5403029 (matchRSpec!2276 lt!2202744 s!2326)))

(declare-fun lt!2202702 () Unit!154214)

(assert (=> b!5403029 (= lt!2202702 (mainMatchTheorem!2276 lt!2202744 s!2326))))

(assert (=> b!5403029 (matchR!7358 lt!2202744 s!2326)))

(assert (=> b!5403029 (= lt!2202744 (Concat!24018 lt!2202723 (regTwo!30858 r!7292)))))

(declare-fun lt!2202741 () Regex!15173)

(assert (=> b!5403029 (= lt!2202723 (Concat!24018 (reg!15502 (regOne!30858 r!7292)) lt!2202741))))

(declare-fun lt!2202724 () Unit!154214)

(declare-fun lemmaConcatAssociative!26 (Regex!15173 Regex!15173 Regex!15173 List!61820) Unit!154214)

(assert (=> b!5403029 (= lt!2202724 (lemmaConcatAssociative!26 (reg!15502 (regOne!30858 r!7292)) lt!2202741 (regTwo!30858 r!7292) s!2326))))

(assert (=> b!5403029 e!3349879))

(declare-fun res!2297150 () Bool)

(assert (=> b!5403029 (=> (not res!2297150) (not e!3349879))))

(declare-fun lt!2202734 () List!61820)

(assert (=> b!5403029 (= res!2297150 (matchR!7358 lt!2202752 lt!2202734))))

(declare-fun lt!2202748 () Unit!154214)

(declare-fun lt!2202710 () Regex!15173)

(declare-fun lt!2202728 () tuple2!64744)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!196 (Regex!15173 Regex!15173 List!61820 List!61820) Unit!154214)

(assert (=> b!5403029 (= lt!2202748 (lemmaTwoRegexMatchThenConcatMatchesConcatString!196 (reg!15502 (regOne!30858 r!7292)) lt!2202710 (_1!35675 lt!2202728) (_2!35675 lt!2202728)))))

(assert (=> b!5403029 (matchR!7358 lt!2202710 (_2!35675 lt!2202728))))

(declare-fun lt!2202747 () Unit!154214)

(declare-fun lt!2202718 () (InoxSet Context!9114))

(declare-fun lt!2202739 () List!61819)

(declare-fun theoremZipperRegexEquiv!487 ((InoxSet Context!9114) List!61819 Regex!15173 List!61820) Unit!154214)

(assert (=> b!5403029 (= lt!2202747 (theoremZipperRegexEquiv!487 lt!2202718 lt!2202739 lt!2202710 (_2!35675 lt!2202728)))))

(assert (=> b!5403029 (matchR!7358 (reg!15502 (regOne!30858 r!7292)) (_1!35675 lt!2202728))))

(declare-fun lt!2202742 () Unit!154214)

(declare-fun lt!2202698 () List!61819)

(assert (=> b!5403029 (= lt!2202742 (theoremZipperRegexEquiv!487 lt!2202708 lt!2202698 (reg!15502 (regOne!30858 r!7292)) (_1!35675 lt!2202728)))))

(assert (=> b!5403029 (matchZipper!1417 (store ((as const (Array Context!9114 Bool)) false) (Context!9115 (++!13519 lt!2202715 lt!2202717)) true) lt!2202734)))

(declare-fun lt!2202749 () Unit!154214)

(assert (=> b!5403029 (= lt!2202749 (lemmaConcatPreservesForall!198 lt!2202715 lt!2202717 lambda!281484))))

(declare-fun lt!2202743 () Unit!154214)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!46 (Context!9114 Context!9114 List!61820 List!61820) Unit!154214)

(assert (=> b!5403029 (= lt!2202743 (lemmaConcatenateContextMatchesConcatOfStrings!46 lt!2202722 lt!2202716 (_1!35675 lt!2202728) (_2!35675 lt!2202728)))))

(declare-fun b!5403030 () Bool)

(declare-fun res!2297182 () Bool)

(assert (=> b!5403030 (=> res!2297182 e!3349883)))

(assert (=> b!5403030 (= res!2297182 (or ((_ is EmptyExpr!15173) r!7292) ((_ is EmptyLang!15173) r!7292) ((_ is ElementMatch!15173) r!7292) ((_ is Union!15173) r!7292) (not ((_ is Concat!24018) r!7292))))))

(declare-fun b!5403031 () Bool)

(declare-fun res!2297163 () Bool)

(assert (=> b!5403031 (=> res!2297163 e!3349878)))

(assert (=> b!5403031 (= res!2297163 (not (matchZipper!1417 lt!2202718 (_2!35675 lt!2202728))))))

(declare-fun b!5403032 () Bool)

(declare-fun e!3349881 () Bool)

(declare-fun e!3349897 () Bool)

(assert (=> b!5403032 (= e!3349881 e!3349897)))

(declare-fun res!2297155 () Bool)

(assert (=> b!5403032 (=> res!2297155 e!3349897)))

(declare-fun lt!2202709 () (InoxSet Context!9114))

(declare-fun lt!2202713 () (InoxSet Context!9114))

(assert (=> b!5403032 (= res!2297155 (not (= lt!2202709 lt!2202713)))))

(declare-fun lt!2202737 () Context!9114)

(assert (=> b!5403032 (= (flatMap!900 lt!2202729 lambda!281482) (derivationStepZipperUp!545 lt!2202737 (h!68144 s!2326)))))

(declare-fun lt!2202712 () Unit!154214)

(assert (=> b!5403032 (= lt!2202712 (lemmaFlatMapOnSingletonSet!432 lt!2202729 lt!2202737 lambda!281482))))

(declare-fun lt!2202725 () (InoxSet Context!9114))

(assert (=> b!5403032 (= lt!2202725 (derivationStepZipperUp!545 lt!2202737 (h!68144 s!2326)))))

(declare-fun derivationStepZipper!1412 ((InoxSet Context!9114) C!30616) (InoxSet Context!9114))

(assert (=> b!5403032 (= lt!2202709 (derivationStepZipper!1412 lt!2202729 (h!68144 s!2326)))))

(assert (=> b!5403032 (= lt!2202729 (store ((as const (Array Context!9114 Bool)) false) lt!2202737 true))))

(assert (=> b!5403032 (= lt!2202737 (Context!9115 (Cons!61694 (reg!15502 (regOne!30858 r!7292)) lt!2202717)))))

(declare-fun b!5403033 () Bool)

(declare-fun res!2297172 () Bool)

(assert (=> b!5403033 (=> res!2297172 e!3349892)))

(declare-fun isEmpty!33684 (List!61818) Bool)

(assert (=> b!5403033 (= res!2297172 (isEmpty!33684 (t!375041 (exprs!5057 (h!68143 zl!343)))))))

(declare-fun b!5403034 () Bool)

(declare-fun res!2297170 () Bool)

(assert (=> b!5403034 (=> res!2297170 e!3349883)))

(declare-fun generalisedUnion!1102 (List!61818) Regex!15173)

(declare-fun unfocusZipperList!615 (List!61819) List!61818)

(assert (=> b!5403034 (= res!2297170 (not (= r!7292 (generalisedUnion!1102 (unfocusZipperList!615 zl!343)))))))

(declare-fun b!5403035 () Bool)

(assert (=> b!5403035 (= e!3349889 e!3349881)))

(declare-fun res!2297177 () Bool)

(assert (=> b!5403035 (=> res!2297177 e!3349881)))

(assert (=> b!5403035 (= res!2297177 (not (= lt!2202732 lt!2202713)))))

(assert (=> b!5403035 (= lt!2202713 (derivationStepZipperDown!621 (reg!15502 (regOne!30858 r!7292)) lt!2202716 (h!68144 s!2326)))))

(assert (=> b!5403035 (= lt!2202716 (Context!9115 lt!2202717))))

(assert (=> b!5403035 (= lt!2202717 (Cons!61694 lt!2202741 (t!375041 (exprs!5057 (h!68143 zl!343)))))))

(assert (=> b!5403035 (= lt!2202741 (Star!15173 (reg!15502 (regOne!30858 r!7292))))))

(declare-fun b!5403036 () Bool)

(declare-fun e!3349886 () Bool)

(assert (=> b!5403036 (= e!3349886 e!3349891)))

(declare-fun res!2297166 () Bool)

(assert (=> b!5403036 (=> res!2297166 e!3349891)))

(declare-fun unfocusZipper!915 (List!61819) Regex!15173)

(assert (=> b!5403036 (= res!2297166 (not (= (unfocusZipper!915 lt!2202739) lt!2202710)))))

(assert (=> b!5403036 (= lt!2202739 (Cons!61695 lt!2202716 Nil!61695))))

(declare-fun b!5403037 () Bool)

(declare-fun res!2297149 () Bool)

(assert (=> b!5403037 (=> res!2297149 e!3349878)))

(assert (=> b!5403037 (= res!2297149 (not (matchZipper!1417 lt!2202708 (_1!35675 lt!2202728))))))

(declare-fun b!5403038 () Bool)

(declare-fun res!2297154 () Bool)

(assert (=> b!5403038 (=> res!2297154 e!3349877)))

(assert (=> b!5403038 (= res!2297154 (not lt!2202704))))

(declare-fun b!5403039 () Bool)

(declare-fun res!2297158 () Bool)

(assert (=> b!5403039 (=> res!2297158 e!3349883)))

(declare-fun isEmpty!33685 (List!61819) Bool)

(assert (=> b!5403039 (= res!2297158 (not (isEmpty!33685 (t!375042 zl!343))))))

(assert (=> b!5403040 (= e!3349883 e!3349892)))

(declare-fun res!2297173 () Bool)

(assert (=> b!5403040 (=> res!2297173 e!3349892)))

(declare-fun lt!2202740 () Bool)

(assert (=> b!5403040 (= res!2297173 (or (not (= lt!2202746 lt!2202740)) ((_ is Nil!61696) s!2326)))))

(assert (=> b!5403040 (= (Exists!2354 lambda!281480) (Exists!2354 lambda!281481))))

(declare-fun lt!2202736 () Unit!154214)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1008 (Regex!15173 Regex!15173 List!61820) Unit!154214)

(assert (=> b!5403040 (= lt!2202736 (lemmaExistCutMatchRandMatchRSpecEquivalent!1008 (regOne!30858 r!7292) (regTwo!30858 r!7292) s!2326))))

(assert (=> b!5403040 (= lt!2202740 (Exists!2354 lambda!281480))))

(assert (=> b!5403040 (= lt!2202740 (isDefined!11987 (findConcatSeparation!1698 (regOne!30858 r!7292) (regTwo!30858 r!7292) Nil!61696 s!2326 s!2326)))))

(declare-fun lt!2202706 () Unit!154214)

(assert (=> b!5403040 (= lt!2202706 (lemmaFindConcatSeparationEquivalentToExists!1462 (regOne!30858 r!7292) (regTwo!30858 r!7292) s!2326))))

(declare-fun b!5403041 () Bool)

(declare-fun res!2297167 () Bool)

(assert (=> b!5403041 (=> res!2297167 e!3349883)))

(assert (=> b!5403041 (= res!2297167 (not ((_ is Cons!61694) (exprs!5057 (h!68143 zl!343)))))))

(declare-fun b!5403042 () Bool)

(declare-fun e!3349880 () Bool)

(declare-fun e!3349895 () Bool)

(assert (=> b!5403042 (= e!3349880 e!3349895)))

(declare-fun res!2297162 () Bool)

(assert (=> b!5403042 (=> res!2297162 e!3349895)))

(assert (=> b!5403042 (= res!2297162 (not (= (unfocusZipper!915 (Cons!61695 lt!2202737 Nil!61695)) lt!2202752)))))

(assert (=> b!5403042 (= lt!2202752 (Concat!24018 (reg!15502 (regOne!30858 r!7292)) lt!2202710))))

(declare-fun b!5403043 () Bool)

(declare-fun tp_is_empty!39599 () Bool)

(declare-fun tp!1494661 () Bool)

(assert (=> b!5403043 (= e!3349887 (and tp_is_empty!39599 tp!1494661))))

(declare-fun e!3349873 () Bool)

(declare-fun tp!1494669 () Bool)

(declare-fun setNonEmpty!35171 () Bool)

(declare-fun setElem!35171 () Context!9114)

(declare-fun inv!81179 (Context!9114) Bool)

(assert (=> setNonEmpty!35171 (= setRes!35171 (and tp!1494669 (inv!81179 setElem!35171) e!3349873))))

(declare-fun setRest!35171 () (InoxSet Context!9114))

(assert (=> setNonEmpty!35171 (= z!1189 ((_ map or) (store ((as const (Array Context!9114 Bool)) false) setElem!35171 true) setRest!35171))))

(declare-fun b!5403044 () Bool)

(declare-fun tp!1494665 () Bool)

(assert (=> b!5403044 (= e!3349896 tp!1494665)))

(declare-fun b!5403045 () Bool)

(assert (=> b!5403045 (= e!3349895 e!3349886)))

(declare-fun res!2297159 () Bool)

(assert (=> b!5403045 (=> res!2297159 e!3349886)))

(assert (=> b!5403045 (= res!2297159 (not (= (unfocusZipper!915 lt!2202698) (reg!15502 (regOne!30858 r!7292)))))))

(assert (=> b!5403045 (= lt!2202698 (Cons!61695 lt!2202722 Nil!61695))))

(assert (=> b!5403045 (= (flatMap!900 lt!2202718 lambda!281482) (derivationStepZipperUp!545 lt!2202716 (h!68144 s!2326)))))

(declare-fun lt!2202731 () Unit!154214)

(assert (=> b!5403045 (= lt!2202731 (lemmaFlatMapOnSingletonSet!432 lt!2202718 lt!2202716 lambda!281482))))

(assert (=> b!5403045 (= (flatMap!900 lt!2202708 lambda!281482) (derivationStepZipperUp!545 lt!2202722 (h!68144 s!2326)))))

(declare-fun lt!2202699 () Unit!154214)

(assert (=> b!5403045 (= lt!2202699 (lemmaFlatMapOnSingletonSet!432 lt!2202708 lt!2202722 lambda!281482))))

(declare-fun lt!2202730 () (InoxSet Context!9114))

(assert (=> b!5403045 (= lt!2202730 (derivationStepZipperUp!545 lt!2202716 (h!68144 s!2326)))))

(declare-fun lt!2202703 () (InoxSet Context!9114))

(assert (=> b!5403045 (= lt!2202703 (derivationStepZipperUp!545 lt!2202722 (h!68144 s!2326)))))

(assert (=> b!5403045 (= lt!2202718 (store ((as const (Array Context!9114 Bool)) false) lt!2202716 true))))

(assert (=> b!5403045 (= lt!2202708 (store ((as const (Array Context!9114 Bool)) false) lt!2202722 true))))

(assert (=> b!5403045 (= lt!2202722 (Context!9115 lt!2202715))))

(assert (=> b!5403045 (= lt!2202715 (Cons!61694 (reg!15502 (regOne!30858 r!7292)) Nil!61694))))

(declare-fun b!5403046 () Bool)

(declare-fun res!2297153 () Bool)

(assert (=> b!5403046 (=> res!2297153 e!3349889)))

(assert (=> b!5403046 (= res!2297153 (or ((_ is Concat!24018) (regOne!30858 r!7292)) (not ((_ is Star!15173) (regOne!30858 r!7292)))))))

(declare-fun b!5403047 () Bool)

(assert (=> b!5403047 (= e!3349885 e!3349880)))

(declare-fun res!2297169 () Bool)

(assert (=> b!5403047 (=> res!2297169 e!3349880)))

(assert (=> b!5403047 (= res!2297169 (not (= r!7292 lt!2202710)))))

(assert (=> b!5403047 (= lt!2202710 (Concat!24018 lt!2202741 (regTwo!30858 r!7292)))))

(declare-fun b!5403048 () Bool)

(declare-fun Unit!154217 () Unit!154214)

(assert (=> b!5403048 (= e!3349890 Unit!154217)))

(declare-fun b!5403049 () Bool)

(declare-fun tp!1494663 () Bool)

(assert (=> b!5403049 (= e!3349893 (and (inv!81179 (h!68143 zl!343)) e!3349876 tp!1494663))))

(declare-fun b!5403050 () Bool)

(declare-fun res!2297175 () Bool)

(assert (=> b!5403050 (=> res!2297175 e!3349882)))

(declare-fun lt!2202721 () Bool)

(assert (=> b!5403050 (= res!2297175 (or (not lt!2202738) (not lt!2202721)))))

(declare-fun b!5403051 () Bool)

(declare-fun tp!1494667 () Bool)

(assert (=> b!5403051 (= e!3349873 tp!1494667)))

(declare-fun b!5403052 () Bool)

(assert (=> b!5403052 (= e!3349875 e!3349898)))

(declare-fun res!2297168 () Bool)

(assert (=> b!5403052 (=> (not res!2297168) (not e!3349898))))

(assert (=> b!5403052 (= res!2297168 (= r!7292 lt!2202720))))

(assert (=> b!5403052 (= lt!2202720 (unfocusZipper!915 zl!343))))

(declare-fun b!5403053 () Bool)

(assert (=> b!5403053 (= e!3349884 (matchZipper!1417 lt!2202726 (t!375043 s!2326)))))

(declare-fun b!5403054 () Bool)

(declare-fun res!2297164 () Bool)

(assert (=> b!5403054 (=> res!2297164 e!3349889)))

(assert (=> b!5403054 (= res!2297164 e!3349874)))

(declare-fun res!2297152 () Bool)

(assert (=> b!5403054 (=> (not res!2297152) (not e!3349874))))

(assert (=> b!5403054 (= res!2297152 ((_ is Concat!24018) (regOne!30858 r!7292)))))

(declare-fun b!5403055 () Bool)

(assert (=> b!5403055 (= e!3349894 e!3349878)))

(declare-fun res!2297151 () Bool)

(assert (=> b!5403055 (=> res!2297151 e!3349878)))

(assert (=> b!5403055 (= res!2297151 (not (= s!2326 lt!2202734)))))

(declare-fun ++!13520 (List!61820 List!61820) List!61820)

(assert (=> b!5403055 (= lt!2202734 (++!13520 (_1!35675 lt!2202728) (_2!35675 lt!2202728)))))

(declare-fun lt!2202707 () Option!15284)

(declare-fun get!21262 (Option!15284) tuple2!64744)

(assert (=> b!5403055 (= lt!2202728 (get!21262 lt!2202707))))

(assert (=> b!5403055 (isDefined!11987 lt!2202707)))

(declare-fun findConcatSeparationZippers!30 ((InoxSet Context!9114) (InoxSet Context!9114) List!61820 List!61820 List!61820) Option!15284)

(assert (=> b!5403055 (= lt!2202707 (findConcatSeparationZippers!30 lt!2202708 lt!2202718 Nil!61696 s!2326 s!2326))))

(declare-fun lt!2202750 () Unit!154214)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!30 ((InoxSet Context!9114) Context!9114 List!61820) Unit!154214)

(assert (=> b!5403055 (= lt!2202750 (lemmaConcatZipperMatchesStringThenFindConcatDefined!30 lt!2202708 lt!2202716 s!2326))))

(declare-fun b!5403056 () Bool)

(assert (=> b!5403056 (= e!3349896 tp_is_empty!39599)))

(declare-fun b!5403057 () Bool)

(declare-fun res!2297181 () Bool)

(assert (=> b!5403057 (=> res!2297181 e!3349877)))

(assert (=> b!5403057 (= res!2297181 (not (matchZipper!1417 z!1189 s!2326)))))

(declare-fun b!5403058 () Bool)

(declare-fun tp!1494668 () Bool)

(declare-fun tp!1494662 () Bool)

(assert (=> b!5403058 (= e!3349896 (and tp!1494668 tp!1494662))))

(declare-fun b!5403059 () Bool)

(assert (=> b!5403059 (= e!3349897 e!3349885)))

(declare-fun res!2297171 () Bool)

(assert (=> b!5403059 (=> res!2297171 e!3349885)))

(assert (=> b!5403059 (= res!2297171 (not (= lt!2202721 (matchZipper!1417 lt!2202709 (t!375043 s!2326)))))))

(assert (=> b!5403059 (= lt!2202721 (matchZipper!1417 lt!2202729 s!2326))))

(assert (= (and start!567482 res!2297179) b!5403018))

(assert (= (and b!5403018 res!2297156) b!5403052))

(assert (= (and b!5403052 res!2297168) b!5403028))

(assert (= (and b!5403028 (not res!2297180)) b!5403039))

(assert (= (and b!5403039 (not res!2297158)) b!5403026))

(assert (= (and b!5403026 (not res!2297165)) b!5403041))

(assert (= (and b!5403041 (not res!2297167)) b!5403034))

(assert (= (and b!5403034 (not res!2297170)) b!5403030))

(assert (= (and b!5403030 (not res!2297182)) b!5403040))

(assert (= (and b!5403040 (not res!2297173)) b!5403033))

(assert (= (and b!5403033 (not res!2297172)) b!5403024))

(assert (= (and b!5403024 c!941742) b!5403025))

(assert (= (and b!5403024 (not c!941742)) b!5403048))

(assert (= (and b!5403025 (not res!2297178)) b!5403053))

(assert (= (and b!5403024 (not res!2297160)) b!5403054))

(assert (= (and b!5403054 res!2297152) b!5403016))

(assert (= (and b!5403054 (not res!2297164)) b!5403046))

(assert (= (and b!5403046 (not res!2297153)) b!5403035))

(assert (= (and b!5403035 (not res!2297177)) b!5403032))

(assert (= (and b!5403032 (not res!2297155)) b!5403059))

(assert (= (and b!5403059 (not res!2297171)) b!5403015))

(assert (= (and b!5403015 (not res!2297161)) b!5403047))

(assert (= (and b!5403047 (not res!2297169)) b!5403042))

(assert (= (and b!5403042 (not res!2297162)) b!5403045))

(assert (= (and b!5403045 (not res!2297159)) b!5403036))

(assert (= (and b!5403036 (not res!2297166)) b!5403022))

(assert (= (and b!5403022 (not res!2297174)) b!5403057))

(assert (= (and b!5403057 (not res!2297181)) b!5403038))

(assert (= (and b!5403038 (not res!2297154)) b!5403020))

(assert (= (and b!5403020 res!2297157) b!5403023))

(assert (= (and b!5403020 (not res!2297183)) b!5403050))

(assert (= (and b!5403050 (not res!2297175)) b!5403017))

(assert (= (and b!5403017 (not res!2297176)) b!5403055))

(assert (= (and b!5403055 (not res!2297151)) b!5403037))

(assert (= (and b!5403037 (not res!2297149)) b!5403031))

(assert (= (and b!5403031 (not res!2297163)) b!5403029))

(assert (= (and b!5403029 res!2297150) b!5403021))

(assert (= (and start!567482 ((_ is ElementMatch!15173) r!7292)) b!5403056))

(assert (= (and start!567482 ((_ is Concat!24018) r!7292)) b!5403058))

(assert (= (and start!567482 ((_ is Star!15173) r!7292)) b!5403044))

(assert (= (and start!567482 ((_ is Union!15173) r!7292)) b!5403027))

(assert (= (and start!567482 condSetEmpty!35171) setIsEmpty!35171))

(assert (= (and start!567482 (not condSetEmpty!35171)) setNonEmpty!35171))

(assert (= setNonEmpty!35171 b!5403051))

(assert (= b!5403049 b!5403019))

(assert (= (and start!567482 ((_ is Cons!61695) zl!343)) b!5403049))

(assert (= (and start!567482 ((_ is Cons!61696) s!2326)) b!5403043))

(declare-fun m!6427366 () Bool)

(assert (=> start!567482 m!6427366))

(declare-fun m!6427368 () Bool)

(assert (=> b!5403037 m!6427368))

(declare-fun m!6427370 () Bool)

(assert (=> b!5403020 m!6427370))

(declare-fun m!6427372 () Bool)

(assert (=> b!5403042 m!6427372))

(declare-fun m!6427374 () Bool)

(assert (=> b!5403059 m!6427374))

(declare-fun m!6427376 () Bool)

(assert (=> b!5403059 m!6427376))

(declare-fun m!6427378 () Bool)

(assert (=> b!5403023 m!6427378))

(declare-fun m!6427380 () Bool)

(assert (=> b!5403052 m!6427380))

(declare-fun m!6427382 () Bool)

(assert (=> b!5403025 m!6427382))

(assert (=> b!5403025 m!6427370))

(declare-fun m!6427384 () Bool)

(assert (=> b!5403025 m!6427384))

(declare-fun m!6427386 () Bool)

(assert (=> b!5403035 m!6427386))

(declare-fun m!6427388 () Bool)

(assert (=> b!5403040 m!6427388))

(declare-fun m!6427390 () Bool)

(assert (=> b!5403040 m!6427390))

(declare-fun m!6427392 () Bool)

(assert (=> b!5403040 m!6427392))

(declare-fun m!6427394 () Bool)

(assert (=> b!5403040 m!6427394))

(assert (=> b!5403040 m!6427388))

(declare-fun m!6427396 () Bool)

(assert (=> b!5403040 m!6427396))

(assert (=> b!5403040 m!6427392))

(declare-fun m!6427398 () Bool)

(assert (=> b!5403040 m!6427398))

(declare-fun m!6427400 () Bool)

(assert (=> b!5403045 m!6427400))

(declare-fun m!6427402 () Bool)

(assert (=> b!5403045 m!6427402))

(declare-fun m!6427404 () Bool)

(assert (=> b!5403045 m!6427404))

(declare-fun m!6427406 () Bool)

(assert (=> b!5403045 m!6427406))

(declare-fun m!6427408 () Bool)

(assert (=> b!5403045 m!6427408))

(declare-fun m!6427410 () Bool)

(assert (=> b!5403045 m!6427410))

(declare-fun m!6427412 () Bool)

(assert (=> b!5403045 m!6427412))

(declare-fun m!6427414 () Bool)

(assert (=> b!5403045 m!6427414))

(declare-fun m!6427416 () Bool)

(assert (=> b!5403045 m!6427416))

(declare-fun m!6427418 () Bool)

(assert (=> b!5403057 m!6427418))

(declare-fun m!6427420 () Bool)

(assert (=> b!5403031 m!6427420))

(declare-fun m!6427422 () Bool)

(assert (=> b!5403022 m!6427422))

(declare-fun m!6427424 () Bool)

(assert (=> b!5403022 m!6427424))

(declare-fun m!6427426 () Bool)

(assert (=> b!5403022 m!6427426))

(declare-fun m!6427428 () Bool)

(assert (=> b!5403032 m!6427428))

(declare-fun m!6427430 () Bool)

(assert (=> b!5403032 m!6427430))

(declare-fun m!6427432 () Bool)

(assert (=> b!5403032 m!6427432))

(declare-fun m!6427434 () Bool)

(assert (=> b!5403032 m!6427434))

(declare-fun m!6427436 () Bool)

(assert (=> b!5403032 m!6427436))

(declare-fun m!6427438 () Bool)

(assert (=> b!5403039 m!6427438))

(declare-fun m!6427440 () Bool)

(assert (=> b!5403016 m!6427440))

(declare-fun m!6427442 () Bool)

(assert (=> b!5403017 m!6427442))

(declare-fun m!6427444 () Bool)

(assert (=> b!5403017 m!6427444))

(declare-fun m!6427446 () Bool)

(assert (=> b!5403017 m!6427446))

(declare-fun m!6427448 () Bool)

(assert (=> b!5403017 m!6427448))

(declare-fun m!6427450 () Bool)

(assert (=> b!5403017 m!6427450))

(declare-fun m!6427452 () Bool)

(assert (=> b!5403017 m!6427452))

(assert (=> b!5403029 m!6427442))

(declare-fun m!6427454 () Bool)

(assert (=> b!5403029 m!6427454))

(declare-fun m!6427456 () Bool)

(assert (=> b!5403029 m!6427456))

(assert (=> b!5403029 m!6427450))

(declare-fun m!6427458 () Bool)

(assert (=> b!5403029 m!6427458))

(declare-fun m!6427460 () Bool)

(assert (=> b!5403029 m!6427460))

(declare-fun m!6427462 () Bool)

(assert (=> b!5403029 m!6427462))

(declare-fun m!6427464 () Bool)

(assert (=> b!5403029 m!6427464))

(declare-fun m!6427466 () Bool)

(assert (=> b!5403029 m!6427466))

(declare-fun m!6427468 () Bool)

(assert (=> b!5403029 m!6427468))

(assert (=> b!5403029 m!6427452))

(declare-fun m!6427470 () Bool)

(assert (=> b!5403029 m!6427470))

(declare-fun m!6427472 () Bool)

(assert (=> b!5403029 m!6427472))

(declare-fun m!6427474 () Bool)

(assert (=> b!5403029 m!6427474))

(assert (=> b!5403029 m!6427466))

(declare-fun m!6427476 () Bool)

(assert (=> b!5403029 m!6427476))

(declare-fun m!6427478 () Bool)

(assert (=> b!5403029 m!6427478))

(declare-fun m!6427480 () Bool)

(assert (=> b!5403029 m!6427480))

(declare-fun m!6427482 () Bool)

(assert (=> b!5403029 m!6427482))

(assert (=> b!5403029 m!6427452))

(declare-fun m!6427484 () Bool)

(assert (=> b!5403029 m!6427484))

(declare-fun m!6427486 () Bool)

(assert (=> b!5403049 m!6427486))

(declare-fun m!6427488 () Bool)

(assert (=> b!5403026 m!6427488))

(declare-fun m!6427490 () Bool)

(assert (=> setNonEmpty!35171 m!6427490))

(declare-fun m!6427492 () Bool)

(assert (=> b!5403034 m!6427492))

(assert (=> b!5403034 m!6427492))

(declare-fun m!6427494 () Bool)

(assert (=> b!5403034 m!6427494))

(declare-fun m!6427496 () Bool)

(assert (=> b!5403018 m!6427496))

(declare-fun m!6427498 () Bool)

(assert (=> b!5403024 m!6427498))

(declare-fun m!6427500 () Bool)

(assert (=> b!5403024 m!6427500))

(declare-fun m!6427502 () Bool)

(assert (=> b!5403024 m!6427502))

(declare-fun m!6427504 () Bool)

(assert (=> b!5403024 m!6427504))

(declare-fun m!6427506 () Bool)

(assert (=> b!5403024 m!6427506))

(declare-fun m!6427508 () Bool)

(assert (=> b!5403024 m!6427508))

(declare-fun m!6427510 () Bool)

(assert (=> b!5403024 m!6427510))

(assert (=> b!5403053 m!6427378))

(declare-fun m!6427512 () Bool)

(assert (=> b!5403033 m!6427512))

(declare-fun m!6427514 () Bool)

(assert (=> b!5403055 m!6427514))

(declare-fun m!6427516 () Bool)

(assert (=> b!5403055 m!6427516))

(declare-fun m!6427518 () Bool)

(assert (=> b!5403055 m!6427518))

(declare-fun m!6427520 () Bool)

(assert (=> b!5403055 m!6427520))

(declare-fun m!6427522 () Bool)

(assert (=> b!5403055 m!6427522))

(declare-fun m!6427524 () Bool)

(assert (=> b!5403028 m!6427524))

(declare-fun m!6427526 () Bool)

(assert (=> b!5403028 m!6427526))

(declare-fun m!6427528 () Bool)

(assert (=> b!5403028 m!6427528))

(declare-fun m!6427530 () Bool)

(assert (=> b!5403036 m!6427530))

(check-sat tp_is_empty!39599 (not b!5403022) (not b!5403016) (not b!5403027) (not b!5403018) (not start!567482) (not b!5403039) (not b!5403019) (not b!5403020) (not b!5403040) (not b!5403059) (not b!5403049) (not b!5403032) (not b!5403024) (not b!5403051) (not b!5403023) (not b!5403044) (not b!5403055) (not b!5403017) (not b!5403045) (not b!5403057) (not b!5403029) (not b!5403026) (not b!5403052) (not b!5403034) (not b!5403058) (not b!5403036) (not b!5403033) (not b!5403042) (not b!5403035) (not b!5403028) (not b!5403031) (not b!5403037) (not setNonEmpty!35171) (not b!5403025) (not b!5403043) (not b!5403053))
(check-sat)

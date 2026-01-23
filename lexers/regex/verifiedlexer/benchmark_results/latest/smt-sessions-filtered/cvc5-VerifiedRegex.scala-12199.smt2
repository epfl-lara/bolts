; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!686930 () Bool)

(assert start!686930)

(declare-fun b!7071660 () Bool)

(assert (=> b!7071660 true))

(declare-fun b!7071678 () Bool)

(assert (=> b!7071678 true))

(declare-fun b!7071672 () Bool)

(assert (=> b!7071672 true))

(declare-fun bs!1880624 () Bool)

(declare-fun b!7071671 () Bool)

(assert (= bs!1880624 (and b!7071671 b!7071660)))

(declare-fun lambda!425524 () Int)

(declare-datatypes ((C!35558 0))(
  ( (C!35559 (val!27481 Int)) )
))
(declare-datatypes ((List!68458 0))(
  ( (Nil!68334) (Cons!68334 (h!74782 C!35558) (t!382241 List!68458)) )
))
(declare-fun lt!2545730 () List!68458)

(declare-fun lambda!425528 () Int)

(declare-fun s!7408 () List!68458)

(assert (=> bs!1880624 (= (= lt!2545730 s!7408) (= lambda!425528 lambda!425524))))

(assert (=> b!7071671 true))

(declare-fun b!7071655 () Bool)

(declare-fun e!4251478 () Bool)

(declare-fun e!4251492 () Bool)

(assert (=> b!7071655 (= e!4251478 e!4251492)))

(declare-fun res!2888122 () Bool)

(assert (=> b!7071655 (=> res!2888122 e!4251492)))

(declare-fun lt!2545762 () Bool)

(assert (=> b!7071655 (= res!2888122 (not lt!2545762))))

(declare-datatypes ((Unit!161998 0))(
  ( (Unit!161999) )
))
(declare-fun lt!2545750 () Unit!161998)

(declare-datatypes ((Regex!17644 0))(
  ( (ElementMatch!17644 (c!1319073 C!35558)) (Concat!26489 (regOne!35800 Regex!17644) (regTwo!35800 Regex!17644)) (EmptyExpr!17644) (Star!17644 (reg!17973 Regex!17644)) (EmptyLang!17644) (Union!17644 (regOne!35801 Regex!17644) (regTwo!35801 Regex!17644)) )
))
(declare-datatypes ((List!68459 0))(
  ( (Nil!68335) (Cons!68335 (h!74783 Regex!17644) (t!382242 List!68459)) )
))
(declare-datatypes ((Context!13280 0))(
  ( (Context!13281 (exprs!7140 List!68459)) )
))
(declare-fun ct2!306 () Context!13280)

(declare-fun lambda!425526 () Int)

(declare-fun lt!2545735 () List!68459)

(declare-fun lemmaConcatPreservesForall!955 (List!68459 List!68459 Int) Unit!161998)

(assert (=> b!7071655 (= lt!2545750 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun lt!2545719 () Unit!161998)

(assert (=> b!7071655 (= lt!2545719 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun b!7071656 () Bool)

(declare-fun e!4251497 () Bool)

(assert (=> b!7071656 (= e!4251497 e!4251478)))

(declare-fun res!2888133 () Bool)

(assert (=> b!7071656 (=> res!2888133 e!4251478)))

(declare-fun lt!2545745 () (Set Context!13280))

(declare-fun matchZipper!3184 ((Set Context!13280) List!68458) Bool)

(assert (=> b!7071656 (= res!2888133 (matchZipper!3184 lt!2545745 (t!382241 s!7408)))))

(declare-fun lt!2545727 () Unit!161998)

(assert (=> b!7071656 (= lt!2545727 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun b!7071657 () Bool)

(declare-fun e!4251489 () Bool)

(declare-fun e!4251495 () Bool)

(assert (=> b!7071657 (= e!4251489 e!4251495)))

(declare-fun res!2888136 () Bool)

(assert (=> b!7071657 (=> res!2888136 e!4251495)))

(declare-fun lt!2545716 () (Set Context!13280))

(declare-fun lt!2545757 () (Set Context!13280))

(assert (=> b!7071657 (= res!2888136 (not (= lt!2545716 lt!2545757)))))

(declare-fun lt!2545726 () Context!13280)

(assert (=> b!7071657 (= lt!2545716 (set.insert lt!2545726 (as set.empty (Set Context!13280))))))

(declare-fun lt!2545736 () Context!13280)

(declare-fun lt!2545751 () Unit!161998)

(assert (=> b!7071657 (= lt!2545751 (lemmaConcatPreservesForall!955 (exprs!7140 lt!2545736) (exprs!7140 ct2!306) lambda!425526))))

(declare-fun b!7071658 () Bool)

(declare-fun res!2888128 () Bool)

(assert (=> b!7071658 (=> res!2888128 e!4251497)))

(declare-fun lt!2545747 () Bool)

(assert (=> b!7071658 (= res!2888128 (not lt!2545747))))

(declare-fun b!7071659 () Bool)

(declare-fun e!4251480 () Bool)

(declare-fun tp_is_empty!44513 () Bool)

(declare-fun tp!1942279 () Bool)

(assert (=> b!7071659 (= e!4251480 (and tp_is_empty!44513 tp!1942279))))

(declare-fun setIsEmpty!50252 () Bool)

(declare-fun setRes!50252 () Bool)

(assert (=> setIsEmpty!50252 setRes!50252))

(declare-fun e!4251482 () Bool)

(declare-fun e!4251496 () Bool)

(assert (=> b!7071660 (= e!4251482 (not e!4251496))))

(declare-fun res!2888124 () Bool)

(assert (=> b!7071660 (=> res!2888124 e!4251496)))

(assert (=> b!7071660 (= res!2888124 (not (matchZipper!3184 lt!2545757 s!7408)))))

(declare-fun lt!2545724 () Context!13280)

(assert (=> b!7071660 (= lt!2545757 (set.insert lt!2545724 (as set.empty (Set Context!13280))))))

(declare-fun lt!2545761 () (Set Context!13280))

(declare-fun getWitness!1745 ((Set Context!13280) Int) Context!13280)

(assert (=> b!7071660 (= lt!2545724 (getWitness!1745 lt!2545761 lambda!425524))))

(declare-datatypes ((List!68460 0))(
  ( (Nil!68336) (Cons!68336 (h!74784 Context!13280) (t!382243 List!68460)) )
))
(declare-fun lt!2545754 () List!68460)

(declare-fun exists!3688 (List!68460 Int) Bool)

(assert (=> b!7071660 (exists!3688 lt!2545754 lambda!425524)))

(declare-fun lt!2545752 () Unit!161998)

(declare-fun lemmaZipperMatchesExistsMatchingContext!565 (List!68460 List!68458) Unit!161998)

(assert (=> b!7071660 (= lt!2545752 (lemmaZipperMatchesExistsMatchingContext!565 lt!2545754 s!7408))))

(declare-fun toList!10985 ((Set Context!13280)) List!68460)

(assert (=> b!7071660 (= lt!2545754 (toList!10985 lt!2545761))))

(declare-fun b!7071661 () Bool)

(declare-fun e!4251483 () Bool)

(assert (=> b!7071661 (= e!4251483 (not (matchZipper!3184 lt!2545745 (t!382241 s!7408))))))

(declare-fun lt!2545746 () Unit!161998)

(assert (=> b!7071661 (= lt!2545746 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun b!7071662 () Bool)

(declare-fun e!4251491 () Bool)

(assert (=> b!7071662 (= e!4251492 e!4251491)))

(declare-fun res!2888121 () Bool)

(assert (=> b!7071662 (=> res!2888121 e!4251491)))

(declare-fun lt!2545742 () (Set Context!13280))

(declare-datatypes ((tuple2!68262 0))(
  ( (tuple2!68263 (_1!37434 List!68458) (_2!37434 List!68458)) )
))
(declare-fun lt!2545733 () tuple2!68262)

(assert (=> b!7071662 (= res!2888121 (not (matchZipper!3184 lt!2545742 (_1!37434 lt!2545733))))))

(declare-datatypes ((Option!16963 0))(
  ( (None!16962) (Some!16962 (v!53256 tuple2!68262)) )
))
(declare-fun lt!2545741 () Option!16963)

(declare-fun get!23936 (Option!16963) tuple2!68262)

(assert (=> b!7071662 (= lt!2545733 (get!23936 lt!2545741))))

(declare-fun isDefined!13664 (Option!16963) Bool)

(assert (=> b!7071662 (isDefined!13664 lt!2545741)))

(declare-fun lt!2545759 () (Set Context!13280))

(declare-fun findConcatSeparationZippers!479 ((Set Context!13280) (Set Context!13280) List!68458 List!68458 List!68458) Option!16963)

(assert (=> b!7071662 (= lt!2545741 (findConcatSeparationZippers!479 lt!2545742 lt!2545759 Nil!68334 (t!382241 s!7408) (t!382241 s!7408)))))

(assert (=> b!7071662 (= lt!2545759 (set.insert ct2!306 (as set.empty (Set Context!13280))))))

(declare-fun lt!2545731 () Unit!161998)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!467 ((Set Context!13280) Context!13280 List!68458) Unit!161998)

(assert (=> b!7071662 (= lt!2545731 (lemmaConcatZipperMatchesStringThenFindConcatDefined!467 lt!2545742 ct2!306 (t!382241 s!7408)))))

(declare-fun lt!2545732 () Unit!161998)

(assert (=> b!7071662 (= lt!2545732 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun lt!2545725 () (Set Context!13280))

(declare-fun appendTo!765 ((Set Context!13280) Context!13280) (Set Context!13280))

(assert (=> b!7071662 (= lt!2545725 (appendTo!765 lt!2545742 ct2!306))))

(declare-fun lt!2545728 () Context!13280)

(declare-fun derivationStepZipperDown!2278 (Regex!17644 Context!13280 C!35558) (Set Context!13280))

(assert (=> b!7071662 (= lt!2545742 (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545736)) lt!2545728 (h!74782 s!7408)))))

(declare-fun lt!2545760 () Unit!161998)

(assert (=> b!7071662 (= lt!2545760 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun lt!2545753 () Unit!161998)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!115 (Context!13280 Regex!17644 C!35558 Context!13280) Unit!161998)

(assert (=> b!7071662 (= lt!2545753 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!115 lt!2545728 (h!74783 (exprs!7140 lt!2545736)) (h!74782 s!7408) ct2!306))))

(declare-fun b!7071663 () Bool)

(declare-fun e!4251493 () Bool)

(declare-fun e!4251487 () Bool)

(assert (=> b!7071663 (= e!4251493 e!4251487)))

(declare-fun res!2888118 () Bool)

(assert (=> b!7071663 (=> res!2888118 e!4251487)))

(declare-fun nullable!7327 (Regex!17644) Bool)

(assert (=> b!7071663 (= res!2888118 (not (nullable!7327 (h!74783 (exprs!7140 lt!2545736)))))))

(assert (=> b!7071663 (= lt!2545728 (Context!13281 lt!2545735))))

(declare-fun tail!13826 (List!68459) List!68459)

(assert (=> b!7071663 (= lt!2545735 (tail!13826 (exprs!7140 lt!2545736)))))

(declare-fun b!7071664 () Bool)

(declare-fun e!4251481 () Bool)

(assert (=> b!7071664 (= e!4251491 e!4251481)))

(declare-fun res!2888120 () Bool)

(assert (=> b!7071664 (=> res!2888120 e!4251481)))

(declare-fun lt!2545755 () (Set Context!13280))

(declare-fun lt!2545739 () (Set Context!13280))

(assert (=> b!7071664 (= res!2888120 (not (= lt!2545755 lt!2545739)))))

(declare-fun lambda!425527 () Int)

(declare-fun lt!2545744 () (Set Context!13280))

(declare-fun flatMap!2570 ((Set Context!13280) Int) (Set Context!13280))

(declare-fun derivationStepZipperUp!2228 (Context!13280 C!35558) (Set Context!13280))

(assert (=> b!7071664 (= (flatMap!2570 lt!2545744 lambda!425527) (derivationStepZipperUp!2228 lt!2545736 (h!74782 s!7408)))))

(declare-fun lt!2545715 () Unit!161998)

(declare-fun lemmaFlatMapOnSingletonSet!2079 ((Set Context!13280) Context!13280 Int) Unit!161998)

(assert (=> b!7071664 (= lt!2545715 (lemmaFlatMapOnSingletonSet!2079 lt!2545744 lt!2545736 lambda!425527))))

(assert (=> b!7071664 (= lt!2545739 (derivationStepZipperUp!2228 lt!2545736 (h!74782 s!7408)))))

(declare-fun derivationStepZipper!3094 ((Set Context!13280) C!35558) (Set Context!13280))

(assert (=> b!7071664 (= lt!2545755 (derivationStepZipper!3094 lt!2545744 (h!74782 s!7408)))))

(assert (=> b!7071664 (= lt!2545744 (set.insert lt!2545736 (as set.empty (Set Context!13280))))))

(declare-fun b!7071665 () Bool)

(declare-fun e!4251490 () Bool)

(assert (=> b!7071665 (= e!4251487 e!4251490)))

(declare-fun res!2888131 () Bool)

(assert (=> b!7071665 (=> res!2888131 e!4251490)))

(declare-fun lt!2545743 () (Set Context!13280))

(declare-fun lt!2545737 () (Set Context!13280))

(assert (=> b!7071665 (= res!2888131 (not (= lt!2545743 lt!2545737)))))

(assert (=> b!7071665 (= lt!2545737 (set.union lt!2545725 lt!2545745))))

(declare-fun lt!2545748 () Context!13280)

(assert (=> b!7071665 (= lt!2545745 (derivationStepZipperUp!2228 lt!2545748 (h!74782 s!7408)))))

(assert (=> b!7071665 (= lt!2545725 (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545736)) lt!2545748 (h!74782 s!7408)))))

(declare-fun ++!15771 (List!68459 List!68459) List!68459)

(assert (=> b!7071665 (= lt!2545748 (Context!13281 (++!15771 lt!2545735 (exprs!7140 ct2!306))))))

(declare-fun lt!2545729 () Unit!161998)

(assert (=> b!7071665 (= lt!2545729 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun lt!2545721 () Unit!161998)

(assert (=> b!7071665 (= lt!2545721 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun b!7071666 () Bool)

(declare-fun res!2888112 () Bool)

(assert (=> b!7071666 (=> res!2888112 e!4251491)))

(declare-fun ++!15772 (List!68458 List!68458) List!68458)

(assert (=> b!7071666 (= res!2888112 (not (= (++!15772 (_1!37434 lt!2545733) (_2!37434 lt!2545733)) (t!382241 s!7408))))))

(declare-fun b!7071667 () Bool)

(declare-fun res!2888127 () Bool)

(declare-fun e!4251484 () Bool)

(assert (=> b!7071667 (=> res!2888127 e!4251484)))

(declare-fun lt!2545738 () Bool)

(assert (=> b!7071667 (= res!2888127 (not lt!2545738))))

(declare-fun b!7071668 () Bool)

(declare-fun res!2888134 () Bool)

(assert (=> b!7071668 (=> res!2888134 e!4251493)))

(declare-fun isEmpty!39880 (List!68459) Bool)

(assert (=> b!7071668 (= res!2888134 (isEmpty!39880 (exprs!7140 lt!2545736)))))

(declare-fun b!7071669 () Bool)

(assert (=> b!7071669 (= e!4251490 e!4251497)))

(declare-fun res!2888132 () Bool)

(assert (=> b!7071669 (=> res!2888132 e!4251497)))

(assert (=> b!7071669 (= res!2888132 e!4251483)))

(declare-fun res!2888125 () Bool)

(assert (=> b!7071669 (=> (not res!2888125) (not e!4251483))))

(assert (=> b!7071669 (= res!2888125 (not (= lt!2545747 lt!2545762)))))

(assert (=> b!7071669 (= lt!2545747 (matchZipper!3184 lt!2545743 (t!382241 s!7408)))))

(declare-fun lt!2545717 () Unit!161998)

(assert (=> b!7071669 (= lt!2545717 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun e!4251479 () Bool)

(assert (=> b!7071669 (= (matchZipper!3184 lt!2545737 (t!382241 s!7408)) e!4251479)))

(declare-fun res!2888116 () Bool)

(assert (=> b!7071669 (=> res!2888116 e!4251479)))

(assert (=> b!7071669 (= res!2888116 lt!2545762)))

(assert (=> b!7071669 (= lt!2545762 (matchZipper!3184 lt!2545725 (t!382241 s!7408)))))

(declare-fun lt!2545740 () Unit!161998)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1657 ((Set Context!13280) (Set Context!13280) List!68458) Unit!161998)

(assert (=> b!7071669 (= lt!2545740 (lemmaZipperConcatMatchesSameAsBothZippers!1657 lt!2545725 lt!2545745 (t!382241 s!7408)))))

(declare-fun lt!2545763 () Unit!161998)

(assert (=> b!7071669 (= lt!2545763 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun lt!2545723 () Unit!161998)

(assert (=> b!7071669 (= lt!2545723 (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(declare-fun b!7071670 () Bool)

(declare-fun e!4251488 () Bool)

(declare-fun tp!1942282 () Bool)

(assert (=> b!7071670 (= e!4251488 tp!1942282)))

(declare-fun z1!570 () (Set Context!13280))

(assert (=> b!7071671 (= e!4251484 (exists!3688 (toList!10985 z1!570) lambda!425528))))

(declare-fun exists!3689 ((Set Context!13280) Int) Bool)

(assert (=> b!7071671 (exists!3689 z1!570 lambda!425528)))

(declare-fun lt!2545720 () Unit!161998)

(declare-fun lemmaContainsThenExists!152 ((Set Context!13280) Context!13280 Int) Unit!161998)

(assert (=> b!7071671 (= lt!2545720 (lemmaContainsThenExists!152 z1!570 lt!2545736 lambda!425528))))

(assert (=> b!7071671 (isDefined!13664 (findConcatSeparationZippers!479 lt!2545744 lt!2545759 Nil!68334 s!7408 s!7408))))

(declare-fun lt!2545734 () Unit!161998)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!71 ((Set Context!13280) (Set Context!13280) List!68458 List!68458 List!68458 List!68458 List!68458) Unit!161998)

(assert (=> b!7071671 (= lt!2545734 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!71 lt!2545744 lt!2545759 lt!2545730 (_2!37434 lt!2545733) s!7408 Nil!68334 s!7408))))

(assert (=> b!7071672 (= e!4251495 e!4251493)))

(declare-fun res!2888126 () Bool)

(assert (=> b!7071672 (=> res!2888126 e!4251493)))

(assert (=> b!7071672 (= res!2888126 (not (= (derivationStepZipper!3094 lt!2545716 (h!74782 s!7408)) lt!2545743)))))

(assert (=> b!7071672 (= (flatMap!2570 lt!2545716 lambda!425527) (derivationStepZipperUp!2228 lt!2545726 (h!74782 s!7408)))))

(declare-fun lt!2545756 () Unit!161998)

(assert (=> b!7071672 (= lt!2545756 (lemmaFlatMapOnSingletonSet!2079 lt!2545716 lt!2545726 lambda!425527))))

(assert (=> b!7071672 (= lt!2545743 (derivationStepZipperUp!2228 lt!2545726 (h!74782 s!7408)))))

(declare-fun lt!2545714 () Unit!161998)

(assert (=> b!7071672 (= lt!2545714 (lemmaConcatPreservesForall!955 (exprs!7140 lt!2545736) (exprs!7140 ct2!306) lambda!425526))))

(declare-fun b!7071673 () Bool)

(declare-fun res!2888129 () Bool)

(assert (=> b!7071673 (=> (not res!2888129) (not e!4251482))))

(assert (=> b!7071673 (= res!2888129 (is-Cons!68334 s!7408))))

(declare-fun b!7071674 () Bool)

(assert (=> b!7071674 (= e!4251479 (matchZipper!3184 lt!2545745 (t!382241 s!7408)))))

(declare-fun b!7071675 () Bool)

(declare-fun e!4251485 () Bool)

(assert (=> b!7071675 (= e!4251481 e!4251485)))

(declare-fun res!2888114 () Bool)

(assert (=> b!7071675 (=> res!2888114 e!4251485)))

(declare-fun lt!2545749 () (Set Context!13280))

(assert (=> b!7071675 (= res!2888114 (not (= lt!2545755 lt!2545749)))))

(declare-fun lt!2545718 () (Set Context!13280))

(assert (=> b!7071675 (= lt!2545749 (set.union lt!2545742 lt!2545718))))

(assert (=> b!7071675 (= lt!2545718 (derivationStepZipperUp!2228 lt!2545728 (h!74782 s!7408)))))

(declare-fun b!7071676 () Bool)

(declare-fun res!2888119 () Bool)

(assert (=> b!7071676 (=> res!2888119 e!4251491)))

(assert (=> b!7071676 (= res!2888119 (not (matchZipper!3184 lt!2545759 (_2!37434 lt!2545733))))))

(declare-fun b!7071677 () Bool)

(declare-fun res!2888135 () Bool)

(assert (=> b!7071677 (=> res!2888135 e!4251493)))

(assert (=> b!7071677 (= res!2888135 (not (is-Cons!68335 (exprs!7140 lt!2545736))))))

(assert (=> b!7071678 (= e!4251496 e!4251489)))

(declare-fun res!2888130 () Bool)

(assert (=> b!7071678 (=> res!2888130 e!4251489)))

(assert (=> b!7071678 (= res!2888130 (or (not (= lt!2545726 lt!2545724)) (not (set.member lt!2545736 z1!570))))))

(assert (=> b!7071678 (= lt!2545726 (Context!13281 (++!15771 (exprs!7140 lt!2545736) (exprs!7140 ct2!306))))))

(declare-fun lt!2545722 () Unit!161998)

(assert (=> b!7071678 (= lt!2545722 (lemmaConcatPreservesForall!955 (exprs!7140 lt!2545736) (exprs!7140 ct2!306) lambda!425526))))

(declare-fun lambda!425525 () Int)

(declare-fun mapPost2!473 ((Set Context!13280) Int Context!13280) Context!13280)

(assert (=> b!7071678 (= lt!2545736 (mapPost2!473 z1!570 lambda!425525 lt!2545724))))

(declare-fun setNonEmpty!50252 () Bool)

(declare-fun tp!1942281 () Bool)

(declare-fun setElem!50252 () Context!13280)

(declare-fun e!4251486 () Bool)

(declare-fun inv!86970 (Context!13280) Bool)

(assert (=> setNonEmpty!50252 (= setRes!50252 (and tp!1942281 (inv!86970 setElem!50252) e!4251486))))

(declare-fun setRest!50252 () (Set Context!13280))

(assert (=> setNonEmpty!50252 (= z1!570 (set.union (set.insert setElem!50252 (as set.empty (Set Context!13280))) setRest!50252))))

(declare-fun b!7071679 () Bool)

(declare-fun e!4251494 () Bool)

(assert (=> b!7071679 (= e!4251494 (not (matchZipper!3184 lt!2545718 (_1!37434 lt!2545733))))))

(declare-fun b!7071680 () Bool)

(declare-fun res!2888117 () Bool)

(assert (=> b!7071680 (=> res!2888117 e!4251496)))

(assert (=> b!7071680 (= res!2888117 (not (set.member lt!2545724 lt!2545761)))))

(declare-fun b!7071681 () Bool)

(declare-fun tp!1942280 () Bool)

(assert (=> b!7071681 (= e!4251486 tp!1942280)))

(declare-fun b!7071682 () Bool)

(assert (=> b!7071682 (= e!4251485 e!4251484)))

(declare-fun res!2888113 () Bool)

(assert (=> b!7071682 (=> res!2888113 e!4251484)))

(assert (=> b!7071682 (= res!2888113 e!4251494)))

(declare-fun res!2888123 () Bool)

(assert (=> b!7071682 (=> (not res!2888123) (not e!4251494))))

(assert (=> b!7071682 (= res!2888123 (not lt!2545738))))

(assert (=> b!7071682 (= lt!2545738 (matchZipper!3184 lt!2545744 lt!2545730))))

(assert (=> b!7071682 (= lt!2545730 (Cons!68334 (h!74782 s!7408) (_1!37434 lt!2545733)))))

(assert (=> b!7071682 (matchZipper!3184 lt!2545749 (_1!37434 lt!2545733))))

(declare-fun lt!2545758 () Unit!161998)

(assert (=> b!7071682 (= lt!2545758 (lemmaZipperConcatMatchesSameAsBothZippers!1657 lt!2545742 lt!2545718 (_1!37434 lt!2545733)))))

(declare-fun res!2888115 () Bool)

(assert (=> start!686930 (=> (not res!2888115) (not e!4251482))))

(assert (=> start!686930 (= res!2888115 (matchZipper!3184 lt!2545761 s!7408))))

(assert (=> start!686930 (= lt!2545761 (appendTo!765 z1!570 ct2!306))))

(assert (=> start!686930 e!4251482))

(declare-fun condSetEmpty!50252 () Bool)

(assert (=> start!686930 (= condSetEmpty!50252 (= z1!570 (as set.empty (Set Context!13280))))))

(assert (=> start!686930 setRes!50252))

(assert (=> start!686930 (and (inv!86970 ct2!306) e!4251488)))

(assert (=> start!686930 e!4251480))

(assert (= (and start!686930 res!2888115) b!7071673))

(assert (= (and b!7071673 res!2888129) b!7071660))

(assert (= (and b!7071660 (not res!2888124)) b!7071680))

(assert (= (and b!7071680 (not res!2888117)) b!7071678))

(assert (= (and b!7071678 (not res!2888130)) b!7071657))

(assert (= (and b!7071657 (not res!2888136)) b!7071672))

(assert (= (and b!7071672 (not res!2888126)) b!7071677))

(assert (= (and b!7071677 (not res!2888135)) b!7071668))

(assert (= (and b!7071668 (not res!2888134)) b!7071663))

(assert (= (and b!7071663 (not res!2888118)) b!7071665))

(assert (= (and b!7071665 (not res!2888131)) b!7071669))

(assert (= (and b!7071669 (not res!2888116)) b!7071674))

(assert (= (and b!7071669 res!2888125) b!7071661))

(assert (= (and b!7071669 (not res!2888132)) b!7071658))

(assert (= (and b!7071658 (not res!2888128)) b!7071656))

(assert (= (and b!7071656 (not res!2888133)) b!7071655))

(assert (= (and b!7071655 (not res!2888122)) b!7071662))

(assert (= (and b!7071662 (not res!2888121)) b!7071676))

(assert (= (and b!7071676 (not res!2888119)) b!7071666))

(assert (= (and b!7071666 (not res!2888112)) b!7071664))

(assert (= (and b!7071664 (not res!2888120)) b!7071675))

(assert (= (and b!7071675 (not res!2888114)) b!7071682))

(assert (= (and b!7071682 res!2888123) b!7071679))

(assert (= (and b!7071682 (not res!2888113)) b!7071667))

(assert (= (and b!7071667 (not res!2888127)) b!7071671))

(assert (= (and start!686930 condSetEmpty!50252) setIsEmpty!50252))

(assert (= (and start!686930 (not condSetEmpty!50252)) setNonEmpty!50252))

(assert (= setNonEmpty!50252 b!7071681))

(assert (= start!686930 b!7071670))

(assert (= (and start!686930 (is-Cons!68334 s!7408)) b!7071659))

(declare-fun m!7797354 () Bool)

(assert (=> b!7071671 m!7797354))

(declare-fun m!7797356 () Bool)

(assert (=> b!7071671 m!7797356))

(declare-fun m!7797358 () Bool)

(assert (=> b!7071671 m!7797358))

(declare-fun m!7797360 () Bool)

(assert (=> b!7071671 m!7797360))

(declare-fun m!7797362 () Bool)

(assert (=> b!7071671 m!7797362))

(assert (=> b!7071671 m!7797360))

(declare-fun m!7797364 () Bool)

(assert (=> b!7071671 m!7797364))

(assert (=> b!7071671 m!7797354))

(declare-fun m!7797366 () Bool)

(assert (=> b!7071671 m!7797366))

(declare-fun m!7797368 () Bool)

(assert (=> b!7071662 m!7797368))

(declare-fun m!7797370 () Bool)

(assert (=> b!7071662 m!7797370))

(declare-fun m!7797372 () Bool)

(assert (=> b!7071662 m!7797372))

(declare-fun m!7797374 () Bool)

(assert (=> b!7071662 m!7797374))

(declare-fun m!7797376 () Bool)

(assert (=> b!7071662 m!7797376))

(declare-fun m!7797378 () Bool)

(assert (=> b!7071662 m!7797378))

(declare-fun m!7797380 () Bool)

(assert (=> b!7071662 m!7797380))

(declare-fun m!7797382 () Bool)

(assert (=> b!7071662 m!7797382))

(assert (=> b!7071662 m!7797372))

(declare-fun m!7797384 () Bool)

(assert (=> b!7071662 m!7797384))

(declare-fun m!7797386 () Bool)

(assert (=> b!7071662 m!7797386))

(declare-fun m!7797388 () Bool)

(assert (=> b!7071666 m!7797388))

(declare-fun m!7797390 () Bool)

(assert (=> b!7071661 m!7797390))

(assert (=> b!7071661 m!7797372))

(assert (=> b!7071669 m!7797372))

(declare-fun m!7797392 () Bool)

(assert (=> b!7071669 m!7797392))

(assert (=> b!7071669 m!7797372))

(assert (=> b!7071669 m!7797372))

(declare-fun m!7797394 () Bool)

(assert (=> b!7071669 m!7797394))

(declare-fun m!7797396 () Bool)

(assert (=> b!7071669 m!7797396))

(declare-fun m!7797398 () Bool)

(assert (=> b!7071669 m!7797398))

(assert (=> b!7071674 m!7797390))

(declare-fun m!7797400 () Bool)

(assert (=> b!7071678 m!7797400))

(declare-fun m!7797402 () Bool)

(assert (=> b!7071678 m!7797402))

(declare-fun m!7797404 () Bool)

(assert (=> b!7071678 m!7797404))

(declare-fun m!7797406 () Bool)

(assert (=> b!7071678 m!7797406))

(declare-fun m!7797408 () Bool)

(assert (=> start!686930 m!7797408))

(declare-fun m!7797410 () Bool)

(assert (=> start!686930 m!7797410))

(declare-fun m!7797412 () Bool)

(assert (=> start!686930 m!7797412))

(declare-fun m!7797414 () Bool)

(assert (=> b!7071679 m!7797414))

(declare-fun m!7797416 () Bool)

(assert (=> b!7071680 m!7797416))

(declare-fun m!7797418 () Bool)

(assert (=> b!7071682 m!7797418))

(declare-fun m!7797420 () Bool)

(assert (=> b!7071682 m!7797420))

(declare-fun m!7797422 () Bool)

(assert (=> b!7071682 m!7797422))

(declare-fun m!7797424 () Bool)

(assert (=> b!7071668 m!7797424))

(assert (=> b!7071665 m!7797372))

(declare-fun m!7797426 () Bool)

(assert (=> b!7071665 m!7797426))

(declare-fun m!7797428 () Bool)

(assert (=> b!7071665 m!7797428))

(assert (=> b!7071665 m!7797372))

(declare-fun m!7797430 () Bool)

(assert (=> b!7071665 m!7797430))

(declare-fun m!7797432 () Bool)

(assert (=> b!7071664 m!7797432))

(declare-fun m!7797434 () Bool)

(assert (=> b!7071664 m!7797434))

(declare-fun m!7797436 () Bool)

(assert (=> b!7071664 m!7797436))

(declare-fun m!7797438 () Bool)

(assert (=> b!7071664 m!7797438))

(declare-fun m!7797440 () Bool)

(assert (=> b!7071664 m!7797440))

(assert (=> b!7071655 m!7797372))

(assert (=> b!7071655 m!7797372))

(declare-fun m!7797442 () Bool)

(assert (=> b!7071660 m!7797442))

(declare-fun m!7797444 () Bool)

(assert (=> b!7071660 m!7797444))

(declare-fun m!7797446 () Bool)

(assert (=> b!7071660 m!7797446))

(declare-fun m!7797448 () Bool)

(assert (=> b!7071660 m!7797448))

(declare-fun m!7797450 () Bool)

(assert (=> b!7071660 m!7797450))

(declare-fun m!7797452 () Bool)

(assert (=> b!7071660 m!7797452))

(declare-fun m!7797454 () Bool)

(assert (=> setNonEmpty!50252 m!7797454))

(declare-fun m!7797456 () Bool)

(assert (=> b!7071675 m!7797456))

(assert (=> b!7071656 m!7797390))

(assert (=> b!7071656 m!7797372))

(declare-fun m!7797458 () Bool)

(assert (=> b!7071672 m!7797458))

(declare-fun m!7797460 () Bool)

(assert (=> b!7071672 m!7797460))

(declare-fun m!7797462 () Bool)

(assert (=> b!7071672 m!7797462))

(declare-fun m!7797464 () Bool)

(assert (=> b!7071672 m!7797464))

(assert (=> b!7071672 m!7797404))

(declare-fun m!7797466 () Bool)

(assert (=> b!7071676 m!7797466))

(declare-fun m!7797468 () Bool)

(assert (=> b!7071657 m!7797468))

(assert (=> b!7071657 m!7797404))

(declare-fun m!7797470 () Bool)

(assert (=> b!7071663 m!7797470))

(declare-fun m!7797472 () Bool)

(assert (=> b!7071663 m!7797472))

(push 1)

(assert (not b!7071675))

(assert (not b!7071678))

(assert (not b!7071659))

(assert (not b!7071681))

(assert (not b!7071669))

(assert (not b!7071666))

(assert (not b!7071662))

(assert (not start!686930))

(assert (not b!7071668))

(assert (not b!7071660))

(assert (not b!7071663))

(assert (not b!7071664))

(assert (not b!7071671))

(assert (not b!7071655))

(assert (not b!7071679))

(assert (not b!7071665))

(assert (not b!7071657))

(assert (not setNonEmpty!50252))

(assert (not b!7071661))

(assert (not b!7071682))

(assert (not b!7071656))

(assert (not b!7071676))

(assert (not b!7071670))

(assert (not b!7071672))

(assert tp_is_empty!44513)

(assert (not b!7071674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7071801 () Bool)

(declare-fun e!4251571 () (Set Context!13280))

(assert (=> b!7071801 (= e!4251571 (as set.empty (Set Context!13280)))))

(declare-fun b!7071802 () Bool)

(declare-fun e!4251575 () (Set Context!13280))

(declare-fun e!4251574 () (Set Context!13280))

(assert (=> b!7071802 (= e!4251575 e!4251574)))

(declare-fun c!1319100 () Bool)

(assert (=> b!7071802 (= c!1319100 (is-Union!17644 (h!74783 (exprs!7140 lt!2545736))))))

(declare-fun b!7071803 () Bool)

(declare-fun e!4251572 () (Set Context!13280))

(declare-fun e!4251573 () (Set Context!13280))

(assert (=> b!7071803 (= e!4251572 e!4251573)))

(declare-fun c!1319101 () Bool)

(assert (=> b!7071803 (= c!1319101 (is-Concat!26489 (h!74783 (exprs!7140 lt!2545736))))))

(declare-fun bm!642710 () Bool)

(declare-fun call!642715 () (Set Context!13280))

(declare-fun call!642720 () (Set Context!13280))

(assert (=> bm!642710 (= call!642715 call!642720)))

(declare-fun call!642717 () List!68459)

(declare-fun call!642716 () (Set Context!13280))

(declare-fun bm!642711 () Bool)

(assert (=> bm!642711 (= call!642716 (derivationStepZipperDown!2278 (ite c!1319100 (regOne!35801 (h!74783 (exprs!7140 lt!2545736))) (regOne!35800 (h!74783 (exprs!7140 lt!2545736)))) (ite c!1319100 lt!2545728 (Context!13281 call!642717)) (h!74782 s!7408)))))

(declare-fun b!7071805 () Bool)

(assert (=> b!7071805 (= e!4251572 (set.union call!642716 call!642720))))

(declare-fun b!7071806 () Bool)

(assert (=> b!7071806 (= e!4251575 (set.insert lt!2545728 (as set.empty (Set Context!13280))))))

(declare-fun b!7071807 () Bool)

(declare-fun call!642719 () (Set Context!13280))

(assert (=> b!7071807 (= e!4251574 (set.union call!642716 call!642719))))

(declare-fun b!7071808 () Bool)

(declare-fun c!1319099 () Bool)

(assert (=> b!7071808 (= c!1319099 (is-Star!17644 (h!74783 (exprs!7140 lt!2545736))))))

(assert (=> b!7071808 (= e!4251573 e!4251571)))

(declare-fun b!7071809 () Bool)

(declare-fun c!1319102 () Bool)

(declare-fun e!4251570 () Bool)

(assert (=> b!7071809 (= c!1319102 e!4251570)))

(declare-fun res!2888215 () Bool)

(assert (=> b!7071809 (=> (not res!2888215) (not e!4251570))))

(assert (=> b!7071809 (= res!2888215 (is-Concat!26489 (h!74783 (exprs!7140 lt!2545736))))))

(assert (=> b!7071809 (= e!4251574 e!4251572)))

(declare-fun b!7071810 () Bool)

(assert (=> b!7071810 (= e!4251571 call!642715)))

(declare-fun bm!642712 () Bool)

(declare-fun $colon$colon!2659 (List!68459 Regex!17644) List!68459)

(assert (=> bm!642712 (= call!642717 ($colon$colon!2659 (exprs!7140 lt!2545728) (ite (or c!1319102 c!1319101) (regTwo!35800 (h!74783 (exprs!7140 lt!2545736))) (h!74783 (exprs!7140 lt!2545736)))))))

(declare-fun b!7071811 () Bool)

(assert (=> b!7071811 (= e!4251573 call!642715)))

(declare-fun bm!642713 () Bool)

(declare-fun call!642718 () List!68459)

(assert (=> bm!642713 (= call!642718 call!642717)))

(declare-fun d!2211408 () Bool)

(declare-fun c!1319103 () Bool)

(assert (=> d!2211408 (= c!1319103 (and (is-ElementMatch!17644 (h!74783 (exprs!7140 lt!2545736))) (= (c!1319073 (h!74783 (exprs!7140 lt!2545736))) (h!74782 s!7408))))))

(assert (=> d!2211408 (= (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545736)) lt!2545728 (h!74782 s!7408)) e!4251575)))

(declare-fun b!7071804 () Bool)

(assert (=> b!7071804 (= e!4251570 (nullable!7327 (regOne!35800 (h!74783 (exprs!7140 lt!2545736)))))))

(declare-fun bm!642714 () Bool)

(assert (=> bm!642714 (= call!642720 call!642719)))

(declare-fun bm!642715 () Bool)

(assert (=> bm!642715 (= call!642719 (derivationStepZipperDown!2278 (ite c!1319100 (regTwo!35801 (h!74783 (exprs!7140 lt!2545736))) (ite c!1319102 (regTwo!35800 (h!74783 (exprs!7140 lt!2545736))) (ite c!1319101 (regOne!35800 (h!74783 (exprs!7140 lt!2545736))) (reg!17973 (h!74783 (exprs!7140 lt!2545736)))))) (ite (or c!1319100 c!1319102) lt!2545728 (Context!13281 call!642718)) (h!74782 s!7408)))))

(assert (= (and d!2211408 c!1319103) b!7071806))

(assert (= (and d!2211408 (not c!1319103)) b!7071802))

(assert (= (and b!7071802 c!1319100) b!7071807))

(assert (= (and b!7071802 (not c!1319100)) b!7071809))

(assert (= (and b!7071809 res!2888215) b!7071804))

(assert (= (and b!7071809 c!1319102) b!7071805))

(assert (= (and b!7071809 (not c!1319102)) b!7071803))

(assert (= (and b!7071803 c!1319101) b!7071811))

(assert (= (and b!7071803 (not c!1319101)) b!7071808))

(assert (= (and b!7071808 c!1319099) b!7071810))

(assert (= (and b!7071808 (not c!1319099)) b!7071801))

(assert (= (or b!7071811 b!7071810) bm!642713))

(assert (= (or b!7071811 b!7071810) bm!642710))

(assert (= (or b!7071805 bm!642710) bm!642714))

(assert (= (or b!7071805 bm!642713) bm!642712))

(assert (= (or b!7071807 b!7071805) bm!642711))

(assert (= (or b!7071807 bm!642714) bm!642715))

(declare-fun m!7797594 () Bool)

(assert (=> bm!642711 m!7797594))

(declare-fun m!7797596 () Bool)

(assert (=> b!7071804 m!7797596))

(declare-fun m!7797598 () Bool)

(assert (=> bm!642712 m!7797598))

(declare-fun m!7797600 () Bool)

(assert (=> b!7071806 m!7797600))

(declare-fun m!7797602 () Bool)

(assert (=> bm!642715 m!7797602))

(assert (=> b!7071662 d!2211408))

(declare-fun d!2211410 () Bool)

(declare-fun c!1319106 () Bool)

(declare-fun isEmpty!39882 (List!68458) Bool)

(assert (=> d!2211410 (= c!1319106 (isEmpty!39882 (_1!37434 lt!2545733)))))

(declare-fun e!4251578 () Bool)

(assert (=> d!2211410 (= (matchZipper!3184 lt!2545742 (_1!37434 lt!2545733)) e!4251578)))

(declare-fun b!7071816 () Bool)

(declare-fun nullableZipper!2698 ((Set Context!13280)) Bool)

(assert (=> b!7071816 (= e!4251578 (nullableZipper!2698 lt!2545742))))

(declare-fun b!7071817 () Bool)

(declare-fun head!14406 (List!68458) C!35558)

(declare-fun tail!13828 (List!68458) List!68458)

(assert (=> b!7071817 (= e!4251578 (matchZipper!3184 (derivationStepZipper!3094 lt!2545742 (head!14406 (_1!37434 lt!2545733))) (tail!13828 (_1!37434 lt!2545733))))))

(assert (= (and d!2211410 c!1319106) b!7071816))

(assert (= (and d!2211410 (not c!1319106)) b!7071817))

(declare-fun m!7797604 () Bool)

(assert (=> d!2211410 m!7797604))

(declare-fun m!7797606 () Bool)

(assert (=> b!7071816 m!7797606))

(declare-fun m!7797608 () Bool)

(assert (=> b!7071817 m!7797608))

(assert (=> b!7071817 m!7797608))

(declare-fun m!7797610 () Bool)

(assert (=> b!7071817 m!7797610))

(declare-fun m!7797612 () Bool)

(assert (=> b!7071817 m!7797612))

(assert (=> b!7071817 m!7797610))

(assert (=> b!7071817 m!7797612))

(declare-fun m!7797614 () Bool)

(assert (=> b!7071817 m!7797614))

(assert (=> b!7071662 d!2211410))

(declare-fun d!2211412 () Bool)

(assert (=> d!2211412 (isDefined!13664 (findConcatSeparationZippers!479 lt!2545742 (set.insert ct2!306 (as set.empty (Set Context!13280))) Nil!68334 (t!382241 s!7408) (t!382241 s!7408)))))

(declare-fun lt!2545918 () Unit!161998)

(declare-fun choose!54201 ((Set Context!13280) Context!13280 List!68458) Unit!161998)

(assert (=> d!2211412 (= lt!2545918 (choose!54201 lt!2545742 ct2!306 (t!382241 s!7408)))))

(assert (=> d!2211412 (matchZipper!3184 (appendTo!765 lt!2545742 ct2!306) (t!382241 s!7408))))

(assert (=> d!2211412 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!467 lt!2545742 ct2!306 (t!382241 s!7408)) lt!2545918)))

(declare-fun bs!1880626 () Bool)

(assert (= bs!1880626 d!2211412))

(assert (=> bs!1880626 m!7797368))

(assert (=> bs!1880626 m!7797380))

(declare-fun m!7797616 () Bool)

(assert (=> bs!1880626 m!7797616))

(assert (=> bs!1880626 m!7797368))

(declare-fun m!7797618 () Bool)

(assert (=> bs!1880626 m!7797618))

(assert (=> bs!1880626 m!7797380))

(declare-fun m!7797620 () Bool)

(assert (=> bs!1880626 m!7797620))

(assert (=> bs!1880626 m!7797618))

(declare-fun m!7797622 () Bool)

(assert (=> bs!1880626 m!7797622))

(assert (=> b!7071662 d!2211412))

(declare-fun d!2211414 () Bool)

(declare-fun isEmpty!39883 (Option!16963) Bool)

(assert (=> d!2211414 (= (isDefined!13664 lt!2545741) (not (isEmpty!39883 lt!2545741)))))

(declare-fun bs!1880627 () Bool)

(assert (= bs!1880627 d!2211414))

(declare-fun m!7797624 () Bool)

(assert (=> bs!1880627 m!7797624))

(assert (=> b!7071662 d!2211414))

(declare-fun bs!1880628 () Bool)

(declare-fun d!2211416 () Bool)

(assert (= bs!1880628 (and d!2211416 b!7071678)))

(declare-fun lambda!425580 () Int)

(assert (=> bs!1880628 (= lambda!425580 lambda!425526)))

(assert (=> d!2211416 (= (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545736)) (Context!13281 (++!15771 (exprs!7140 lt!2545728) (exprs!7140 ct2!306))) (h!74782 s!7408)) (appendTo!765 (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545736)) lt!2545728 (h!74782 s!7408)) ct2!306))))

(declare-fun lt!2545924 () Unit!161998)

(assert (=> d!2211416 (= lt!2545924 (lemmaConcatPreservesForall!955 (exprs!7140 lt!2545728) (exprs!7140 ct2!306) lambda!425580))))

(declare-fun lt!2545923 () Unit!161998)

(declare-fun choose!54202 (Context!13280 Regex!17644 C!35558 Context!13280) Unit!161998)

(assert (=> d!2211416 (= lt!2545923 (choose!54202 lt!2545728 (h!74783 (exprs!7140 lt!2545736)) (h!74782 s!7408) ct2!306))))

(declare-fun validRegex!8972 (Regex!17644) Bool)

(assert (=> d!2211416 (validRegex!8972 (h!74783 (exprs!7140 lt!2545736)))))

(assert (=> d!2211416 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!115 lt!2545728 (h!74783 (exprs!7140 lt!2545736)) (h!74782 s!7408) ct2!306) lt!2545923)))

(declare-fun bs!1880629 () Bool)

(assert (= bs!1880629 d!2211416))

(declare-fun m!7797626 () Bool)

(assert (=> bs!1880629 m!7797626))

(declare-fun m!7797628 () Bool)

(assert (=> bs!1880629 m!7797628))

(declare-fun m!7797630 () Bool)

(assert (=> bs!1880629 m!7797630))

(declare-fun m!7797632 () Bool)

(assert (=> bs!1880629 m!7797632))

(assert (=> bs!1880629 m!7797378))

(declare-fun m!7797634 () Bool)

(assert (=> bs!1880629 m!7797634))

(assert (=> bs!1880629 m!7797378))

(declare-fun m!7797636 () Bool)

(assert (=> bs!1880629 m!7797636))

(assert (=> b!7071662 d!2211416))

(declare-fun d!2211418 () Bool)

(declare-fun forall!16595 (List!68459 Int) Bool)

(assert (=> d!2211418 (forall!16595 (++!15771 lt!2545735 (exprs!7140 ct2!306)) lambda!425526)))

(declare-fun lt!2545927 () Unit!161998)

(declare-fun choose!54203 (List!68459 List!68459 Int) Unit!161998)

(assert (=> d!2211418 (= lt!2545927 (choose!54203 lt!2545735 (exprs!7140 ct2!306) lambda!425526))))

(assert (=> d!2211418 (forall!16595 lt!2545735 lambda!425526)))

(assert (=> d!2211418 (= (lemmaConcatPreservesForall!955 lt!2545735 (exprs!7140 ct2!306) lambda!425526) lt!2545927)))

(declare-fun bs!1880630 () Bool)

(assert (= bs!1880630 d!2211418))

(assert (=> bs!1880630 m!7797428))

(assert (=> bs!1880630 m!7797428))

(declare-fun m!7797638 () Bool)

(assert (=> bs!1880630 m!7797638))

(declare-fun m!7797640 () Bool)

(assert (=> bs!1880630 m!7797640))

(declare-fun m!7797642 () Bool)

(assert (=> bs!1880630 m!7797642))

(assert (=> b!7071662 d!2211418))

(declare-fun d!2211420 () Bool)

(assert (=> d!2211420 (= (get!23936 lt!2545741) (v!53256 lt!2545741))))

(assert (=> b!7071662 d!2211420))

(declare-fun b!7071836 () Bool)

(declare-fun res!2888228 () Bool)

(declare-fun e!4251593 () Bool)

(assert (=> b!7071836 (=> (not res!2888228) (not e!4251593))))

(declare-fun lt!2545934 () Option!16963)

(assert (=> b!7071836 (= res!2888228 (matchZipper!3184 lt!2545759 (_2!37434 (get!23936 lt!2545934))))))

(declare-fun b!7071837 () Bool)

(declare-fun e!4251592 () Bool)

(assert (=> b!7071837 (= e!4251592 (matchZipper!3184 lt!2545759 (t!382241 s!7408)))))

(declare-fun b!7071839 () Bool)

(declare-fun res!2888229 () Bool)

(assert (=> b!7071839 (=> (not res!2888229) (not e!4251593))))

(assert (=> b!7071839 (= res!2888229 (matchZipper!3184 lt!2545742 (_1!37434 (get!23936 lt!2545934))))))

(declare-fun b!7071840 () Bool)

(declare-fun lt!2545935 () Unit!161998)

(declare-fun lt!2545936 () Unit!161998)

(assert (=> b!7071840 (= lt!2545935 lt!2545936)))

(assert (=> b!7071840 (= (++!15772 (++!15772 Nil!68334 (Cons!68334 (h!74782 (t!382241 s!7408)) Nil!68334)) (t!382241 (t!382241 s!7408))) (t!382241 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2974 (List!68458 C!35558 List!68458 List!68458) Unit!161998)

(assert (=> b!7071840 (= lt!2545936 (lemmaMoveElementToOtherListKeepsConcatEq!2974 Nil!68334 (h!74782 (t!382241 s!7408)) (t!382241 (t!382241 s!7408)) (t!382241 s!7408)))))

(declare-fun e!4251589 () Option!16963)

(assert (=> b!7071840 (= e!4251589 (findConcatSeparationZippers!479 lt!2545742 lt!2545759 (++!15772 Nil!68334 (Cons!68334 (h!74782 (t!382241 s!7408)) Nil!68334)) (t!382241 (t!382241 s!7408)) (t!382241 s!7408)))))

(declare-fun b!7071838 () Bool)

(assert (=> b!7071838 (= e!4251593 (= (++!15772 (_1!37434 (get!23936 lt!2545934)) (_2!37434 (get!23936 lt!2545934))) (t!382241 s!7408)))))

(declare-fun d!2211422 () Bool)

(declare-fun e!4251590 () Bool)

(assert (=> d!2211422 e!4251590))

(declare-fun res!2888230 () Bool)

(assert (=> d!2211422 (=> res!2888230 e!4251590)))

(assert (=> d!2211422 (= res!2888230 e!4251593)))

(declare-fun res!2888226 () Bool)

(assert (=> d!2211422 (=> (not res!2888226) (not e!4251593))))

(assert (=> d!2211422 (= res!2888226 (isDefined!13664 lt!2545934))))

(declare-fun e!4251591 () Option!16963)

(assert (=> d!2211422 (= lt!2545934 e!4251591)))

(declare-fun c!1319112 () Bool)

(assert (=> d!2211422 (= c!1319112 e!4251592)))

(declare-fun res!2888227 () Bool)

(assert (=> d!2211422 (=> (not res!2888227) (not e!4251592))))

(assert (=> d!2211422 (= res!2888227 (matchZipper!3184 lt!2545742 Nil!68334))))

(assert (=> d!2211422 (= (++!15772 Nil!68334 (t!382241 s!7408)) (t!382241 s!7408))))

(assert (=> d!2211422 (= (findConcatSeparationZippers!479 lt!2545742 lt!2545759 Nil!68334 (t!382241 s!7408) (t!382241 s!7408)) lt!2545934)))

(declare-fun b!7071841 () Bool)

(assert (=> b!7071841 (= e!4251589 None!16962)))

(declare-fun b!7071842 () Bool)

(assert (=> b!7071842 (= e!4251591 e!4251589)))

(declare-fun c!1319113 () Bool)

(assert (=> b!7071842 (= c!1319113 (is-Nil!68334 (t!382241 s!7408)))))

(declare-fun b!7071843 () Bool)

(assert (=> b!7071843 (= e!4251591 (Some!16962 (tuple2!68263 Nil!68334 (t!382241 s!7408))))))

(declare-fun b!7071844 () Bool)

(assert (=> b!7071844 (= e!4251590 (not (isDefined!13664 lt!2545934)))))

(assert (= (and d!2211422 res!2888227) b!7071837))

(assert (= (and d!2211422 c!1319112) b!7071843))

(assert (= (and d!2211422 (not c!1319112)) b!7071842))

(assert (= (and b!7071842 c!1319113) b!7071841))

(assert (= (and b!7071842 (not c!1319113)) b!7071840))

(assert (= (and d!2211422 res!2888226) b!7071839))

(assert (= (and b!7071839 res!2888229) b!7071836))

(assert (= (and b!7071836 res!2888228) b!7071838))

(assert (= (and d!2211422 (not res!2888230)) b!7071844))

(declare-fun m!7797644 () Bool)

(assert (=> b!7071840 m!7797644))

(assert (=> b!7071840 m!7797644))

(declare-fun m!7797646 () Bool)

(assert (=> b!7071840 m!7797646))

(declare-fun m!7797648 () Bool)

(assert (=> b!7071840 m!7797648))

(assert (=> b!7071840 m!7797644))

(declare-fun m!7797650 () Bool)

(assert (=> b!7071840 m!7797650))

(declare-fun m!7797652 () Bool)

(assert (=> d!2211422 m!7797652))

(declare-fun m!7797654 () Bool)

(assert (=> d!2211422 m!7797654))

(declare-fun m!7797656 () Bool)

(assert (=> d!2211422 m!7797656))

(declare-fun m!7797658 () Bool)

(assert (=> b!7071838 m!7797658))

(declare-fun m!7797660 () Bool)

(assert (=> b!7071838 m!7797660))

(declare-fun m!7797662 () Bool)

(assert (=> b!7071837 m!7797662))

(assert (=> b!7071836 m!7797658))

(declare-fun m!7797664 () Bool)

(assert (=> b!7071836 m!7797664))

(assert (=> b!7071839 m!7797658))

(declare-fun m!7797666 () Bool)

(assert (=> b!7071839 m!7797666))

(assert (=> b!7071844 m!7797652))

(assert (=> b!7071662 d!2211422))

(declare-fun bs!1880631 () Bool)

(declare-fun d!2211424 () Bool)

(assert (= bs!1880631 (and d!2211424 b!7071678)))

(declare-fun lambda!425585 () Int)

(assert (=> bs!1880631 (= lambda!425585 lambda!425525)))

(assert (=> d!2211424 true))

(declare-fun map!15989 ((Set Context!13280) Int) (Set Context!13280))

(assert (=> d!2211424 (= (appendTo!765 lt!2545742 ct2!306) (map!15989 lt!2545742 lambda!425585))))

(declare-fun bs!1880632 () Bool)

(assert (= bs!1880632 d!2211424))

(declare-fun m!7797668 () Bool)

(assert (=> bs!1880632 m!7797668))

(assert (=> b!7071662 d!2211424))

(declare-fun d!2211426 () Bool)

(declare-fun c!1319115 () Bool)

(assert (=> d!2211426 (= c!1319115 (isEmpty!39882 lt!2545730))))

(declare-fun e!4251594 () Bool)

(assert (=> d!2211426 (= (matchZipper!3184 lt!2545744 lt!2545730) e!4251594)))

(declare-fun b!7071845 () Bool)

(assert (=> b!7071845 (= e!4251594 (nullableZipper!2698 lt!2545744))))

(declare-fun b!7071846 () Bool)

(assert (=> b!7071846 (= e!4251594 (matchZipper!3184 (derivationStepZipper!3094 lt!2545744 (head!14406 lt!2545730)) (tail!13828 lt!2545730)))))

(assert (= (and d!2211426 c!1319115) b!7071845))

(assert (= (and d!2211426 (not c!1319115)) b!7071846))

(declare-fun m!7797670 () Bool)

(assert (=> d!2211426 m!7797670))

(declare-fun m!7797672 () Bool)

(assert (=> b!7071845 m!7797672))

(declare-fun m!7797674 () Bool)

(assert (=> b!7071846 m!7797674))

(assert (=> b!7071846 m!7797674))

(declare-fun m!7797676 () Bool)

(assert (=> b!7071846 m!7797676))

(declare-fun m!7797678 () Bool)

(assert (=> b!7071846 m!7797678))

(assert (=> b!7071846 m!7797676))

(assert (=> b!7071846 m!7797678))

(declare-fun m!7797680 () Bool)

(assert (=> b!7071846 m!7797680))

(assert (=> b!7071682 d!2211426))

(declare-fun d!2211428 () Bool)

(declare-fun c!1319116 () Bool)

(assert (=> d!2211428 (= c!1319116 (isEmpty!39882 (_1!37434 lt!2545733)))))

(declare-fun e!4251595 () Bool)

(assert (=> d!2211428 (= (matchZipper!3184 lt!2545749 (_1!37434 lt!2545733)) e!4251595)))

(declare-fun b!7071847 () Bool)

(assert (=> b!7071847 (= e!4251595 (nullableZipper!2698 lt!2545749))))

(declare-fun b!7071848 () Bool)

(assert (=> b!7071848 (= e!4251595 (matchZipper!3184 (derivationStepZipper!3094 lt!2545749 (head!14406 (_1!37434 lt!2545733))) (tail!13828 (_1!37434 lt!2545733))))))

(assert (= (and d!2211428 c!1319116) b!7071847))

(assert (= (and d!2211428 (not c!1319116)) b!7071848))

(assert (=> d!2211428 m!7797604))

(declare-fun m!7797682 () Bool)

(assert (=> b!7071847 m!7797682))

(assert (=> b!7071848 m!7797608))

(assert (=> b!7071848 m!7797608))

(declare-fun m!7797684 () Bool)

(assert (=> b!7071848 m!7797684))

(assert (=> b!7071848 m!7797612))

(assert (=> b!7071848 m!7797684))

(assert (=> b!7071848 m!7797612))

(declare-fun m!7797686 () Bool)

(assert (=> b!7071848 m!7797686))

(assert (=> b!7071682 d!2211428))

(declare-fun d!2211430 () Bool)

(declare-fun e!4251598 () Bool)

(assert (=> d!2211430 (= (matchZipper!3184 (set.union lt!2545742 lt!2545718) (_1!37434 lt!2545733)) e!4251598)))

(declare-fun res!2888234 () Bool)

(assert (=> d!2211430 (=> res!2888234 e!4251598)))

(assert (=> d!2211430 (= res!2888234 (matchZipper!3184 lt!2545742 (_1!37434 lt!2545733)))))

(declare-fun lt!2545941 () Unit!161998)

(declare-fun choose!54204 ((Set Context!13280) (Set Context!13280) List!68458) Unit!161998)

(assert (=> d!2211430 (= lt!2545941 (choose!54204 lt!2545742 lt!2545718 (_1!37434 lt!2545733)))))

(assert (=> d!2211430 (= (lemmaZipperConcatMatchesSameAsBothZippers!1657 lt!2545742 lt!2545718 (_1!37434 lt!2545733)) lt!2545941)))

(declare-fun b!7071851 () Bool)

(assert (=> b!7071851 (= e!4251598 (matchZipper!3184 lt!2545718 (_1!37434 lt!2545733)))))

(assert (= (and d!2211430 (not res!2888234)) b!7071851))

(declare-fun m!7797688 () Bool)

(assert (=> d!2211430 m!7797688))

(assert (=> d!2211430 m!7797374))

(declare-fun m!7797690 () Bool)

(assert (=> d!2211430 m!7797690))

(assert (=> b!7071851 m!7797414))

(assert (=> b!7071682 d!2211430))

(declare-fun d!2211432 () Bool)

(declare-fun c!1319117 () Bool)

(assert (=> d!2211432 (= c!1319117 (isEmpty!39882 (t!382241 s!7408)))))

(declare-fun e!4251599 () Bool)

(assert (=> d!2211432 (= (matchZipper!3184 lt!2545745 (t!382241 s!7408)) e!4251599)))

(declare-fun b!7071852 () Bool)

(assert (=> b!7071852 (= e!4251599 (nullableZipper!2698 lt!2545745))))

(declare-fun b!7071853 () Bool)

(assert (=> b!7071853 (= e!4251599 (matchZipper!3184 (derivationStepZipper!3094 lt!2545745 (head!14406 (t!382241 s!7408))) (tail!13828 (t!382241 s!7408))))))

(assert (= (and d!2211432 c!1319117) b!7071852))

(assert (= (and d!2211432 (not c!1319117)) b!7071853))

(declare-fun m!7797692 () Bool)

(assert (=> d!2211432 m!7797692))

(declare-fun m!7797694 () Bool)

(assert (=> b!7071852 m!7797694))

(declare-fun m!7797696 () Bool)

(assert (=> b!7071853 m!7797696))

(assert (=> b!7071853 m!7797696))

(declare-fun m!7797698 () Bool)

(assert (=> b!7071853 m!7797698))

(declare-fun m!7797700 () Bool)

(assert (=> b!7071853 m!7797700))

(assert (=> b!7071853 m!7797698))

(assert (=> b!7071853 m!7797700))

(declare-fun m!7797702 () Bool)

(assert (=> b!7071853 m!7797702))

(assert (=> b!7071674 d!2211432))

(declare-fun d!2211434 () Bool)

(declare-fun c!1319118 () Bool)

(assert (=> d!2211434 (= c!1319118 (isEmpty!39882 s!7408))))

(declare-fun e!4251600 () Bool)

(assert (=> d!2211434 (= (matchZipper!3184 lt!2545761 s!7408) e!4251600)))

(declare-fun b!7071854 () Bool)

(assert (=> b!7071854 (= e!4251600 (nullableZipper!2698 lt!2545761))))

(declare-fun b!7071855 () Bool)

(assert (=> b!7071855 (= e!4251600 (matchZipper!3184 (derivationStepZipper!3094 lt!2545761 (head!14406 s!7408)) (tail!13828 s!7408)))))

(assert (= (and d!2211434 c!1319118) b!7071854))

(assert (= (and d!2211434 (not c!1319118)) b!7071855))

(declare-fun m!7797704 () Bool)

(assert (=> d!2211434 m!7797704))

(declare-fun m!7797706 () Bool)

(assert (=> b!7071854 m!7797706))

(declare-fun m!7797708 () Bool)

(assert (=> b!7071855 m!7797708))

(assert (=> b!7071855 m!7797708))

(declare-fun m!7797710 () Bool)

(assert (=> b!7071855 m!7797710))

(declare-fun m!7797712 () Bool)

(assert (=> b!7071855 m!7797712))

(assert (=> b!7071855 m!7797710))

(assert (=> b!7071855 m!7797712))

(declare-fun m!7797714 () Bool)

(assert (=> b!7071855 m!7797714))

(assert (=> start!686930 d!2211434))

(declare-fun bs!1880633 () Bool)

(declare-fun d!2211436 () Bool)

(assert (= bs!1880633 (and d!2211436 b!7071678)))

(declare-fun lambda!425586 () Int)

(assert (=> bs!1880633 (= lambda!425586 lambda!425525)))

(declare-fun bs!1880634 () Bool)

(assert (= bs!1880634 (and d!2211436 d!2211424)))

(assert (=> bs!1880634 (= lambda!425586 lambda!425585)))

(assert (=> d!2211436 true))

(assert (=> d!2211436 (= (appendTo!765 z1!570 ct2!306) (map!15989 z1!570 lambda!425586))))

(declare-fun bs!1880635 () Bool)

(assert (= bs!1880635 d!2211436))

(declare-fun m!7797716 () Bool)

(assert (=> bs!1880635 m!7797716))

(assert (=> start!686930 d!2211436))

(declare-fun bs!1880636 () Bool)

(declare-fun d!2211438 () Bool)

(assert (= bs!1880636 (and d!2211438 b!7071678)))

(declare-fun lambda!425589 () Int)

(assert (=> bs!1880636 (= lambda!425589 lambda!425526)))

(declare-fun bs!1880637 () Bool)

(assert (= bs!1880637 (and d!2211438 d!2211416)))

(assert (=> bs!1880637 (= lambda!425589 lambda!425580)))

(assert (=> d!2211438 (= (inv!86970 ct2!306) (forall!16595 (exprs!7140 ct2!306) lambda!425589))))

(declare-fun bs!1880638 () Bool)

(assert (= bs!1880638 d!2211438))

(declare-fun m!7797718 () Bool)

(assert (=> bs!1880638 m!7797718))

(assert (=> start!686930 d!2211438))

(declare-fun d!2211440 () Bool)

(declare-fun nullableFct!2813 (Regex!17644) Bool)

(assert (=> d!2211440 (= (nullable!7327 (h!74783 (exprs!7140 lt!2545736))) (nullableFct!2813 (h!74783 (exprs!7140 lt!2545736))))))

(declare-fun bs!1880639 () Bool)

(assert (= bs!1880639 d!2211440))

(declare-fun m!7797720 () Bool)

(assert (=> bs!1880639 m!7797720))

(assert (=> b!7071663 d!2211440))

(declare-fun d!2211442 () Bool)

(assert (=> d!2211442 (= (tail!13826 (exprs!7140 lt!2545736)) (t!382242 (exprs!7140 lt!2545736)))))

(assert (=> b!7071663 d!2211442))

(declare-fun d!2211444 () Bool)

(declare-fun choose!54205 ((Set Context!13280) Int) (Set Context!13280))

(assert (=> d!2211444 (= (flatMap!2570 lt!2545744 lambda!425527) (choose!54205 lt!2545744 lambda!425527))))

(declare-fun bs!1880640 () Bool)

(assert (= bs!1880640 d!2211444))

(declare-fun m!7797722 () Bool)

(assert (=> bs!1880640 m!7797722))

(assert (=> b!7071664 d!2211444))

(declare-fun b!7071866 () Bool)

(declare-fun call!642723 () (Set Context!13280))

(declare-fun e!4251607 () (Set Context!13280))

(assert (=> b!7071866 (= e!4251607 (set.union call!642723 (derivationStepZipperUp!2228 (Context!13281 (t!382242 (exprs!7140 lt!2545736))) (h!74782 s!7408))))))

(declare-fun b!7071867 () Bool)

(declare-fun e!4251608 () Bool)

(assert (=> b!7071867 (= e!4251608 (nullable!7327 (h!74783 (exprs!7140 lt!2545736))))))

(declare-fun b!7071868 () Bool)

(declare-fun e!4251609 () (Set Context!13280))

(assert (=> b!7071868 (= e!4251609 (as set.empty (Set Context!13280)))))

(declare-fun d!2211446 () Bool)

(declare-fun c!1319123 () Bool)

(assert (=> d!2211446 (= c!1319123 e!4251608)))

(declare-fun res!2888237 () Bool)

(assert (=> d!2211446 (=> (not res!2888237) (not e!4251608))))

(assert (=> d!2211446 (= res!2888237 (is-Cons!68335 (exprs!7140 lt!2545736)))))

(assert (=> d!2211446 (= (derivationStepZipperUp!2228 lt!2545736 (h!74782 s!7408)) e!4251607)))

(declare-fun b!7071869 () Bool)

(assert (=> b!7071869 (= e!4251609 call!642723)))

(declare-fun b!7071870 () Bool)

(assert (=> b!7071870 (= e!4251607 e!4251609)))

(declare-fun c!1319124 () Bool)

(assert (=> b!7071870 (= c!1319124 (is-Cons!68335 (exprs!7140 lt!2545736)))))

(declare-fun bm!642718 () Bool)

(assert (=> bm!642718 (= call!642723 (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545736)) (Context!13281 (t!382242 (exprs!7140 lt!2545736))) (h!74782 s!7408)))))

(assert (= (and d!2211446 res!2888237) b!7071867))

(assert (= (and d!2211446 c!1319123) b!7071866))

(assert (= (and d!2211446 (not c!1319123)) b!7071870))

(assert (= (and b!7071870 c!1319124) b!7071869))

(assert (= (and b!7071870 (not c!1319124)) b!7071868))

(assert (= (or b!7071866 b!7071869) bm!642718))

(declare-fun m!7797724 () Bool)

(assert (=> b!7071866 m!7797724))

(assert (=> b!7071867 m!7797470))

(declare-fun m!7797726 () Bool)

(assert (=> bm!642718 m!7797726))

(assert (=> b!7071664 d!2211446))

(declare-fun d!2211450 () Bool)

(declare-fun dynLambda!27795 (Int Context!13280) (Set Context!13280))

(assert (=> d!2211450 (= (flatMap!2570 lt!2545744 lambda!425527) (dynLambda!27795 lambda!425527 lt!2545736))))

(declare-fun lt!2545944 () Unit!161998)

(declare-fun choose!54206 ((Set Context!13280) Context!13280 Int) Unit!161998)

(assert (=> d!2211450 (= lt!2545944 (choose!54206 lt!2545744 lt!2545736 lambda!425527))))

(assert (=> d!2211450 (= lt!2545744 (set.insert lt!2545736 (as set.empty (Set Context!13280))))))

(assert (=> d!2211450 (= (lemmaFlatMapOnSingletonSet!2079 lt!2545744 lt!2545736 lambda!425527) lt!2545944)))

(declare-fun b_lambda!269975 () Bool)

(assert (=> (not b_lambda!269975) (not d!2211450)))

(declare-fun bs!1880643 () Bool)

(assert (= bs!1880643 d!2211450))

(assert (=> bs!1880643 m!7797432))

(declare-fun m!7797730 () Bool)

(assert (=> bs!1880643 m!7797730))

(declare-fun m!7797732 () Bool)

(assert (=> bs!1880643 m!7797732))

(assert (=> bs!1880643 m!7797434))

(assert (=> b!7071664 d!2211450))

(declare-fun bs!1880644 () Bool)

(declare-fun d!2211454 () Bool)

(assert (= bs!1880644 (and d!2211454 b!7071672)))

(declare-fun lambda!425595 () Int)

(assert (=> bs!1880644 (= lambda!425595 lambda!425527)))

(assert (=> d!2211454 true))

(assert (=> d!2211454 (= (derivationStepZipper!3094 lt!2545744 (h!74782 s!7408)) (flatMap!2570 lt!2545744 lambda!425595))))

(declare-fun bs!1880645 () Bool)

(assert (= bs!1880645 d!2211454))

(declare-fun m!7797734 () Bool)

(assert (=> bs!1880645 m!7797734))

(assert (=> b!7071664 d!2211454))

(assert (=> b!7071655 d!2211418))

(declare-fun e!4251610 () (Set Context!13280))

(declare-fun b!7071873 () Bool)

(declare-fun call!642724 () (Set Context!13280))

(assert (=> b!7071873 (= e!4251610 (set.union call!642724 (derivationStepZipperUp!2228 (Context!13281 (t!382242 (exprs!7140 lt!2545728))) (h!74782 s!7408))))))

(declare-fun b!7071874 () Bool)

(declare-fun e!4251611 () Bool)

(assert (=> b!7071874 (= e!4251611 (nullable!7327 (h!74783 (exprs!7140 lt!2545728))))))

(declare-fun b!7071875 () Bool)

(declare-fun e!4251612 () (Set Context!13280))

(assert (=> b!7071875 (= e!4251612 (as set.empty (Set Context!13280)))))

(declare-fun d!2211456 () Bool)

(declare-fun c!1319127 () Bool)

(assert (=> d!2211456 (= c!1319127 e!4251611)))

(declare-fun res!2888238 () Bool)

(assert (=> d!2211456 (=> (not res!2888238) (not e!4251611))))

(assert (=> d!2211456 (= res!2888238 (is-Cons!68335 (exprs!7140 lt!2545728)))))

(assert (=> d!2211456 (= (derivationStepZipperUp!2228 lt!2545728 (h!74782 s!7408)) e!4251610)))

(declare-fun b!7071876 () Bool)

(assert (=> b!7071876 (= e!4251612 call!642724)))

(declare-fun b!7071877 () Bool)

(assert (=> b!7071877 (= e!4251610 e!4251612)))

(declare-fun c!1319128 () Bool)

(assert (=> b!7071877 (= c!1319128 (is-Cons!68335 (exprs!7140 lt!2545728)))))

(declare-fun bm!642719 () Bool)

(assert (=> bm!642719 (= call!642724 (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545728)) (Context!13281 (t!382242 (exprs!7140 lt!2545728))) (h!74782 s!7408)))))

(assert (= (and d!2211456 res!2888238) b!7071874))

(assert (= (and d!2211456 c!1319127) b!7071873))

(assert (= (and d!2211456 (not c!1319127)) b!7071877))

(assert (= (and b!7071877 c!1319128) b!7071876))

(assert (= (and b!7071877 (not c!1319128)) b!7071875))

(assert (= (or b!7071873 b!7071876) bm!642719))

(declare-fun m!7797736 () Bool)

(assert (=> b!7071873 m!7797736))

(declare-fun m!7797738 () Bool)

(assert (=> b!7071874 m!7797738))

(declare-fun m!7797740 () Bool)

(assert (=> bm!642719 m!7797740))

(assert (=> b!7071675 d!2211456))

(declare-fun d!2211458 () Bool)

(declare-fun c!1319129 () Bool)

(assert (=> d!2211458 (= c!1319129 (isEmpty!39882 (_2!37434 lt!2545733)))))

(declare-fun e!4251613 () Bool)

(assert (=> d!2211458 (= (matchZipper!3184 lt!2545759 (_2!37434 lt!2545733)) e!4251613)))

(declare-fun b!7071878 () Bool)

(assert (=> b!7071878 (= e!4251613 (nullableZipper!2698 lt!2545759))))

(declare-fun b!7071879 () Bool)

(assert (=> b!7071879 (= e!4251613 (matchZipper!3184 (derivationStepZipper!3094 lt!2545759 (head!14406 (_2!37434 lt!2545733))) (tail!13828 (_2!37434 lt!2545733))))))

(assert (= (and d!2211458 c!1319129) b!7071878))

(assert (= (and d!2211458 (not c!1319129)) b!7071879))

(declare-fun m!7797742 () Bool)

(assert (=> d!2211458 m!7797742))

(declare-fun m!7797744 () Bool)

(assert (=> b!7071878 m!7797744))

(declare-fun m!7797746 () Bool)

(assert (=> b!7071879 m!7797746))

(assert (=> b!7071879 m!7797746))

(declare-fun m!7797748 () Bool)

(assert (=> b!7071879 m!7797748))

(declare-fun m!7797750 () Bool)

(assert (=> b!7071879 m!7797750))

(assert (=> b!7071879 m!7797748))

(assert (=> b!7071879 m!7797750))

(declare-fun m!7797752 () Bool)

(assert (=> b!7071879 m!7797752))

(assert (=> b!7071676 d!2211458))

(declare-fun e!4251614 () (Set Context!13280))

(declare-fun b!7071880 () Bool)

(declare-fun call!642725 () (Set Context!13280))

(assert (=> b!7071880 (= e!4251614 (set.union call!642725 (derivationStepZipperUp!2228 (Context!13281 (t!382242 (exprs!7140 lt!2545748))) (h!74782 s!7408))))))

(declare-fun b!7071881 () Bool)

(declare-fun e!4251615 () Bool)

(assert (=> b!7071881 (= e!4251615 (nullable!7327 (h!74783 (exprs!7140 lt!2545748))))))

(declare-fun b!7071882 () Bool)

(declare-fun e!4251616 () (Set Context!13280))

(assert (=> b!7071882 (= e!4251616 (as set.empty (Set Context!13280)))))

(declare-fun d!2211460 () Bool)

(declare-fun c!1319130 () Bool)

(assert (=> d!2211460 (= c!1319130 e!4251615)))

(declare-fun res!2888239 () Bool)

(assert (=> d!2211460 (=> (not res!2888239) (not e!4251615))))

(assert (=> d!2211460 (= res!2888239 (is-Cons!68335 (exprs!7140 lt!2545748)))))

(assert (=> d!2211460 (= (derivationStepZipperUp!2228 lt!2545748 (h!74782 s!7408)) e!4251614)))

(declare-fun b!7071883 () Bool)

(assert (=> b!7071883 (= e!4251616 call!642725)))

(declare-fun b!7071884 () Bool)

(assert (=> b!7071884 (= e!4251614 e!4251616)))

(declare-fun c!1319131 () Bool)

(assert (=> b!7071884 (= c!1319131 (is-Cons!68335 (exprs!7140 lt!2545748)))))

(declare-fun bm!642720 () Bool)

(assert (=> bm!642720 (= call!642725 (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545748)) (Context!13281 (t!382242 (exprs!7140 lt!2545748))) (h!74782 s!7408)))))

(assert (= (and d!2211460 res!2888239) b!7071881))

(assert (= (and d!2211460 c!1319130) b!7071880))

(assert (= (and d!2211460 (not c!1319130)) b!7071884))

(assert (= (and b!7071884 c!1319131) b!7071883))

(assert (= (and b!7071884 (not c!1319131)) b!7071882))

(assert (= (or b!7071880 b!7071883) bm!642720))

(declare-fun m!7797754 () Bool)

(assert (=> b!7071880 m!7797754))

(declare-fun m!7797756 () Bool)

(assert (=> b!7071881 m!7797756))

(declare-fun m!7797758 () Bool)

(assert (=> bm!642720 m!7797758))

(assert (=> b!7071665 d!2211460))

(assert (=> b!7071665 d!2211418))

(declare-fun b!7071885 () Bool)

(declare-fun e!4251618 () (Set Context!13280))

(assert (=> b!7071885 (= e!4251618 (as set.empty (Set Context!13280)))))

(declare-fun b!7071886 () Bool)

(declare-fun e!4251622 () (Set Context!13280))

(declare-fun e!4251621 () (Set Context!13280))

(assert (=> b!7071886 (= e!4251622 e!4251621)))

(declare-fun c!1319133 () Bool)

(assert (=> b!7071886 (= c!1319133 (is-Union!17644 (h!74783 (exprs!7140 lt!2545736))))))

(declare-fun b!7071887 () Bool)

(declare-fun e!4251619 () (Set Context!13280))

(declare-fun e!4251620 () (Set Context!13280))

(assert (=> b!7071887 (= e!4251619 e!4251620)))

(declare-fun c!1319134 () Bool)

(assert (=> b!7071887 (= c!1319134 (is-Concat!26489 (h!74783 (exprs!7140 lt!2545736))))))

(declare-fun bm!642721 () Bool)

(declare-fun call!642726 () (Set Context!13280))

(declare-fun call!642731 () (Set Context!13280))

(assert (=> bm!642721 (= call!642726 call!642731)))

(declare-fun call!642728 () List!68459)

(declare-fun call!642727 () (Set Context!13280))

(declare-fun bm!642722 () Bool)

(assert (=> bm!642722 (= call!642727 (derivationStepZipperDown!2278 (ite c!1319133 (regOne!35801 (h!74783 (exprs!7140 lt!2545736))) (regOne!35800 (h!74783 (exprs!7140 lt!2545736)))) (ite c!1319133 lt!2545748 (Context!13281 call!642728)) (h!74782 s!7408)))))

(declare-fun b!7071889 () Bool)

(assert (=> b!7071889 (= e!4251619 (set.union call!642727 call!642731))))

(declare-fun b!7071890 () Bool)

(assert (=> b!7071890 (= e!4251622 (set.insert lt!2545748 (as set.empty (Set Context!13280))))))

(declare-fun b!7071891 () Bool)

(declare-fun call!642730 () (Set Context!13280))

(assert (=> b!7071891 (= e!4251621 (set.union call!642727 call!642730))))

(declare-fun b!7071892 () Bool)

(declare-fun c!1319132 () Bool)

(assert (=> b!7071892 (= c!1319132 (is-Star!17644 (h!74783 (exprs!7140 lt!2545736))))))

(assert (=> b!7071892 (= e!4251620 e!4251618)))

(declare-fun b!7071893 () Bool)

(declare-fun c!1319135 () Bool)

(declare-fun e!4251617 () Bool)

(assert (=> b!7071893 (= c!1319135 e!4251617)))

(declare-fun res!2888240 () Bool)

(assert (=> b!7071893 (=> (not res!2888240) (not e!4251617))))

(assert (=> b!7071893 (= res!2888240 (is-Concat!26489 (h!74783 (exprs!7140 lt!2545736))))))

(assert (=> b!7071893 (= e!4251621 e!4251619)))

(declare-fun b!7071894 () Bool)

(assert (=> b!7071894 (= e!4251618 call!642726)))

(declare-fun bm!642723 () Bool)

(assert (=> bm!642723 (= call!642728 ($colon$colon!2659 (exprs!7140 lt!2545748) (ite (or c!1319135 c!1319134) (regTwo!35800 (h!74783 (exprs!7140 lt!2545736))) (h!74783 (exprs!7140 lt!2545736)))))))

(declare-fun b!7071895 () Bool)

(assert (=> b!7071895 (= e!4251620 call!642726)))

(declare-fun bm!642724 () Bool)

(declare-fun call!642729 () List!68459)

(assert (=> bm!642724 (= call!642729 call!642728)))

(declare-fun d!2211462 () Bool)

(declare-fun c!1319136 () Bool)

(assert (=> d!2211462 (= c!1319136 (and (is-ElementMatch!17644 (h!74783 (exprs!7140 lt!2545736))) (= (c!1319073 (h!74783 (exprs!7140 lt!2545736))) (h!74782 s!7408))))))

(assert (=> d!2211462 (= (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545736)) lt!2545748 (h!74782 s!7408)) e!4251622)))

(declare-fun b!7071888 () Bool)

(assert (=> b!7071888 (= e!4251617 (nullable!7327 (regOne!35800 (h!74783 (exprs!7140 lt!2545736)))))))

(declare-fun bm!642725 () Bool)

(assert (=> bm!642725 (= call!642731 call!642730)))

(declare-fun bm!642726 () Bool)

(assert (=> bm!642726 (= call!642730 (derivationStepZipperDown!2278 (ite c!1319133 (regTwo!35801 (h!74783 (exprs!7140 lt!2545736))) (ite c!1319135 (regTwo!35800 (h!74783 (exprs!7140 lt!2545736))) (ite c!1319134 (regOne!35800 (h!74783 (exprs!7140 lt!2545736))) (reg!17973 (h!74783 (exprs!7140 lt!2545736)))))) (ite (or c!1319133 c!1319135) lt!2545748 (Context!13281 call!642729)) (h!74782 s!7408)))))

(assert (= (and d!2211462 c!1319136) b!7071890))

(assert (= (and d!2211462 (not c!1319136)) b!7071886))

(assert (= (and b!7071886 c!1319133) b!7071891))

(assert (= (and b!7071886 (not c!1319133)) b!7071893))

(assert (= (and b!7071893 res!2888240) b!7071888))

(assert (= (and b!7071893 c!1319135) b!7071889))

(assert (= (and b!7071893 (not c!1319135)) b!7071887))

(assert (= (and b!7071887 c!1319134) b!7071895))

(assert (= (and b!7071887 (not c!1319134)) b!7071892))

(assert (= (and b!7071892 c!1319132) b!7071894))

(assert (= (and b!7071892 (not c!1319132)) b!7071885))

(assert (= (or b!7071895 b!7071894) bm!642724))

(assert (= (or b!7071895 b!7071894) bm!642721))

(assert (= (or b!7071889 bm!642721) bm!642725))

(assert (= (or b!7071889 bm!642724) bm!642723))

(assert (= (or b!7071891 b!7071889) bm!642722))

(assert (= (or b!7071891 bm!642725) bm!642726))

(declare-fun m!7797760 () Bool)

(assert (=> bm!642722 m!7797760))

(assert (=> b!7071888 m!7797596))

(declare-fun m!7797762 () Bool)

(assert (=> bm!642723 m!7797762))

(declare-fun m!7797764 () Bool)

(assert (=> b!7071890 m!7797764))

(declare-fun m!7797766 () Bool)

(assert (=> bm!642726 m!7797766))

(assert (=> b!7071665 d!2211462))

(declare-fun b!7071908 () Bool)

(declare-fun e!4251631 () List!68459)

(assert (=> b!7071908 (= e!4251631 (Cons!68335 (h!74783 lt!2545735) (++!15771 (t!382242 lt!2545735) (exprs!7140 ct2!306))))))

(declare-fun b!7071907 () Bool)

(assert (=> b!7071907 (= e!4251631 (exprs!7140 ct2!306))))

(declare-fun b!7071909 () Bool)

(declare-fun res!2888249 () Bool)

(declare-fun e!4251630 () Bool)

(assert (=> b!7071909 (=> (not res!2888249) (not e!4251630))))

(declare-fun lt!2545950 () List!68459)

(declare-fun size!41212 (List!68459) Int)

(assert (=> b!7071909 (= res!2888249 (= (size!41212 lt!2545950) (+ (size!41212 lt!2545735) (size!41212 (exprs!7140 ct2!306)))))))

(declare-fun b!7071910 () Bool)

(assert (=> b!7071910 (= e!4251630 (or (not (= (exprs!7140 ct2!306) Nil!68335)) (= lt!2545950 lt!2545735)))))

(declare-fun d!2211464 () Bool)

(assert (=> d!2211464 e!4251630))

(declare-fun res!2888248 () Bool)

(assert (=> d!2211464 (=> (not res!2888248) (not e!4251630))))

(declare-fun content!13788 (List!68459) (Set Regex!17644))

(assert (=> d!2211464 (= res!2888248 (= (content!13788 lt!2545950) (set.union (content!13788 lt!2545735) (content!13788 (exprs!7140 ct2!306)))))))

(assert (=> d!2211464 (= lt!2545950 e!4251631)))

(declare-fun c!1319139 () Bool)

(assert (=> d!2211464 (= c!1319139 (is-Nil!68335 lt!2545735))))

(assert (=> d!2211464 (= (++!15771 lt!2545735 (exprs!7140 ct2!306)) lt!2545950)))

(assert (= (and d!2211464 c!1319139) b!7071907))

(assert (= (and d!2211464 (not c!1319139)) b!7071908))

(assert (= (and d!2211464 res!2888248) b!7071909))

(assert (= (and b!7071909 res!2888249) b!7071910))

(declare-fun m!7797776 () Bool)

(assert (=> b!7071908 m!7797776))

(declare-fun m!7797778 () Bool)

(assert (=> b!7071909 m!7797778))

(declare-fun m!7797780 () Bool)

(assert (=> b!7071909 m!7797780))

(declare-fun m!7797782 () Bool)

(assert (=> b!7071909 m!7797782))

(declare-fun m!7797784 () Bool)

(assert (=> d!2211464 m!7797784))

(declare-fun m!7797786 () Bool)

(assert (=> d!2211464 m!7797786))

(declare-fun m!7797788 () Bool)

(assert (=> d!2211464 m!7797788))

(assert (=> b!7071665 d!2211464))

(declare-fun b!7071923 () Bool)

(declare-fun e!4251639 () List!68458)

(assert (=> b!7071923 (= e!4251639 (Cons!68334 (h!74782 (_1!37434 lt!2545733)) (++!15772 (t!382241 (_1!37434 lt!2545733)) (_2!37434 lt!2545733))))))

(declare-fun d!2211468 () Bool)

(declare-fun e!4251640 () Bool)

(assert (=> d!2211468 e!4251640))

(declare-fun res!2888258 () Bool)

(assert (=> d!2211468 (=> (not res!2888258) (not e!4251640))))

(declare-fun lt!2545956 () List!68458)

(declare-fun content!13789 (List!68458) (Set C!35558))

(assert (=> d!2211468 (= res!2888258 (= (content!13789 lt!2545956) (set.union (content!13789 (_1!37434 lt!2545733)) (content!13789 (_2!37434 lt!2545733)))))))

(assert (=> d!2211468 (= lt!2545956 e!4251639)))

(declare-fun c!1319142 () Bool)

(assert (=> d!2211468 (= c!1319142 (is-Nil!68334 (_1!37434 lt!2545733)))))

(assert (=> d!2211468 (= (++!15772 (_1!37434 lt!2545733) (_2!37434 lt!2545733)) lt!2545956)))

(declare-fun b!7071925 () Bool)

(assert (=> b!7071925 (= e!4251640 (or (not (= (_2!37434 lt!2545733) Nil!68334)) (= lt!2545956 (_1!37434 lt!2545733))))))

(declare-fun b!7071924 () Bool)

(declare-fun res!2888257 () Bool)

(assert (=> b!7071924 (=> (not res!2888257) (not e!4251640))))

(declare-fun size!41213 (List!68458) Int)

(assert (=> b!7071924 (= res!2888257 (= (size!41213 lt!2545956) (+ (size!41213 (_1!37434 lt!2545733)) (size!41213 (_2!37434 lt!2545733)))))))

(declare-fun b!7071922 () Bool)

(assert (=> b!7071922 (= e!4251639 (_2!37434 lt!2545733))))

(assert (= (and d!2211468 c!1319142) b!7071922))

(assert (= (and d!2211468 (not c!1319142)) b!7071923))

(assert (= (and d!2211468 res!2888258) b!7071924))

(assert (= (and b!7071924 res!2888257) b!7071925))

(declare-fun m!7797796 () Bool)

(assert (=> b!7071923 m!7797796))

(declare-fun m!7797798 () Bool)

(assert (=> d!2211468 m!7797798))

(declare-fun m!7797800 () Bool)

(assert (=> d!2211468 m!7797800))

(declare-fun m!7797802 () Bool)

(assert (=> d!2211468 m!7797802))

(declare-fun m!7797804 () Bool)

(assert (=> b!7071924 m!7797804))

(declare-fun m!7797806 () Bool)

(assert (=> b!7071924 m!7797806))

(declare-fun m!7797808 () Bool)

(assert (=> b!7071924 m!7797808))

(assert (=> b!7071666 d!2211468))

(assert (=> b!7071656 d!2211432))

(assert (=> b!7071656 d!2211418))

(declare-fun d!2211472 () Bool)

(assert (=> d!2211472 (forall!16595 (++!15771 (exprs!7140 lt!2545736) (exprs!7140 ct2!306)) lambda!425526)))

(declare-fun lt!2545957 () Unit!161998)

(assert (=> d!2211472 (= lt!2545957 (choose!54203 (exprs!7140 lt!2545736) (exprs!7140 ct2!306) lambda!425526))))

(assert (=> d!2211472 (forall!16595 (exprs!7140 lt!2545736) lambda!425526)))

(assert (=> d!2211472 (= (lemmaConcatPreservesForall!955 (exprs!7140 lt!2545736) (exprs!7140 ct2!306) lambda!425526) lt!2545957)))

(declare-fun bs!1880646 () Bool)

(assert (= bs!1880646 d!2211472))

(assert (=> bs!1880646 m!7797402))

(assert (=> bs!1880646 m!7797402))

(declare-fun m!7797810 () Bool)

(assert (=> bs!1880646 m!7797810))

(declare-fun m!7797812 () Bool)

(assert (=> bs!1880646 m!7797812))

(declare-fun m!7797814 () Bool)

(assert (=> bs!1880646 m!7797814))

(assert (=> b!7071657 d!2211472))

(declare-fun b!7071927 () Bool)

(declare-fun e!4251642 () List!68459)

(assert (=> b!7071927 (= e!4251642 (Cons!68335 (h!74783 (exprs!7140 lt!2545736)) (++!15771 (t!382242 (exprs!7140 lt!2545736)) (exprs!7140 ct2!306))))))

(declare-fun b!7071926 () Bool)

(assert (=> b!7071926 (= e!4251642 (exprs!7140 ct2!306))))

(declare-fun b!7071928 () Bool)

(declare-fun res!2888260 () Bool)

(declare-fun e!4251641 () Bool)

(assert (=> b!7071928 (=> (not res!2888260) (not e!4251641))))

(declare-fun lt!2545958 () List!68459)

(assert (=> b!7071928 (= res!2888260 (= (size!41212 lt!2545958) (+ (size!41212 (exprs!7140 lt!2545736)) (size!41212 (exprs!7140 ct2!306)))))))

(declare-fun b!7071929 () Bool)

(assert (=> b!7071929 (= e!4251641 (or (not (= (exprs!7140 ct2!306) Nil!68335)) (= lt!2545958 (exprs!7140 lt!2545736))))))

(declare-fun d!2211474 () Bool)

(assert (=> d!2211474 e!4251641))

(declare-fun res!2888259 () Bool)

(assert (=> d!2211474 (=> (not res!2888259) (not e!4251641))))

(assert (=> d!2211474 (= res!2888259 (= (content!13788 lt!2545958) (set.union (content!13788 (exprs!7140 lt!2545736)) (content!13788 (exprs!7140 ct2!306)))))))

(assert (=> d!2211474 (= lt!2545958 e!4251642)))

(declare-fun c!1319143 () Bool)

(assert (=> d!2211474 (= c!1319143 (is-Nil!68335 (exprs!7140 lt!2545736)))))

(assert (=> d!2211474 (= (++!15771 (exprs!7140 lt!2545736) (exprs!7140 ct2!306)) lt!2545958)))

(assert (= (and d!2211474 c!1319143) b!7071926))

(assert (= (and d!2211474 (not c!1319143)) b!7071927))

(assert (= (and d!2211474 res!2888259) b!7071928))

(assert (= (and b!7071928 res!2888260) b!7071929))

(declare-fun m!7797816 () Bool)

(assert (=> b!7071927 m!7797816))

(declare-fun m!7797818 () Bool)

(assert (=> b!7071928 m!7797818))

(declare-fun m!7797820 () Bool)

(assert (=> b!7071928 m!7797820))

(assert (=> b!7071928 m!7797782))

(declare-fun m!7797822 () Bool)

(assert (=> d!2211474 m!7797822))

(declare-fun m!7797824 () Bool)

(assert (=> d!2211474 m!7797824))

(assert (=> d!2211474 m!7797788))

(assert (=> b!7071678 d!2211474))

(assert (=> b!7071678 d!2211472))

(declare-fun d!2211476 () Bool)

(declare-fun e!4251645 () Bool)

(assert (=> d!2211476 e!4251645))

(declare-fun res!2888263 () Bool)

(assert (=> d!2211476 (=> (not res!2888263) (not e!4251645))))

(declare-fun lt!2545961 () Context!13280)

(declare-fun dynLambda!27796 (Int Context!13280) Context!13280)

(assert (=> d!2211476 (= res!2888263 (= lt!2545724 (dynLambda!27796 lambda!425525 lt!2545961)))))

(declare-fun choose!54207 ((Set Context!13280) Int Context!13280) Context!13280)

(assert (=> d!2211476 (= lt!2545961 (choose!54207 z1!570 lambda!425525 lt!2545724))))

(assert (=> d!2211476 (set.member lt!2545724 (map!15989 z1!570 lambda!425525))))

(assert (=> d!2211476 (= (mapPost2!473 z1!570 lambda!425525 lt!2545724) lt!2545961)))

(declare-fun b!7071935 () Bool)

(assert (=> b!7071935 (= e!4251645 (set.member lt!2545961 z1!570))))

(assert (= (and d!2211476 res!2888263) b!7071935))

(declare-fun b_lambda!269979 () Bool)

(assert (=> (not b_lambda!269979) (not d!2211476)))

(declare-fun m!7797828 () Bool)

(assert (=> d!2211476 m!7797828))

(declare-fun m!7797830 () Bool)

(assert (=> d!2211476 m!7797830))

(declare-fun m!7797832 () Bool)

(assert (=> d!2211476 m!7797832))

(declare-fun m!7797834 () Bool)

(assert (=> d!2211476 m!7797834))

(declare-fun m!7797836 () Bool)

(assert (=> b!7071935 m!7797836))

(assert (=> b!7071678 d!2211476))

(declare-fun d!2211480 () Bool)

(assert (=> d!2211480 (= (isEmpty!39880 (exprs!7140 lt!2545736)) (is-Nil!68335 (exprs!7140 lt!2545736)))))

(assert (=> b!7071668 d!2211480))

(declare-fun bs!1880650 () Bool)

(declare-fun d!2211482 () Bool)

(assert (= bs!1880650 (and d!2211482 b!7071678)))

(declare-fun lambda!425599 () Int)

(assert (=> bs!1880650 (= lambda!425599 lambda!425526)))

(declare-fun bs!1880651 () Bool)

(assert (= bs!1880651 (and d!2211482 d!2211416)))

(assert (=> bs!1880651 (= lambda!425599 lambda!425580)))

(declare-fun bs!1880652 () Bool)

(assert (= bs!1880652 (and d!2211482 d!2211438)))

(assert (=> bs!1880652 (= lambda!425599 lambda!425589)))

(assert (=> d!2211482 (= (inv!86970 setElem!50252) (forall!16595 (exprs!7140 setElem!50252) lambda!425599))))

(declare-fun bs!1880653 () Bool)

(assert (= bs!1880653 d!2211482))

(declare-fun m!7797838 () Bool)

(assert (=> bs!1880653 m!7797838))

(assert (=> setNonEmpty!50252 d!2211482))

(declare-fun d!2211484 () Bool)

(declare-fun c!1319144 () Bool)

(assert (=> d!2211484 (= c!1319144 (isEmpty!39882 (_1!37434 lt!2545733)))))

(declare-fun e!4251646 () Bool)

(assert (=> d!2211484 (= (matchZipper!3184 lt!2545718 (_1!37434 lt!2545733)) e!4251646)))

(declare-fun b!7071936 () Bool)

(assert (=> b!7071936 (= e!4251646 (nullableZipper!2698 lt!2545718))))

(declare-fun b!7071937 () Bool)

(assert (=> b!7071937 (= e!4251646 (matchZipper!3184 (derivationStepZipper!3094 lt!2545718 (head!14406 (_1!37434 lt!2545733))) (tail!13828 (_1!37434 lt!2545733))))))

(assert (= (and d!2211484 c!1319144) b!7071936))

(assert (= (and d!2211484 (not c!1319144)) b!7071937))

(assert (=> d!2211484 m!7797604))

(declare-fun m!7797840 () Bool)

(assert (=> b!7071936 m!7797840))

(assert (=> b!7071937 m!7797608))

(assert (=> b!7071937 m!7797608))

(declare-fun m!7797842 () Bool)

(assert (=> b!7071937 m!7797842))

(assert (=> b!7071937 m!7797612))

(assert (=> b!7071937 m!7797842))

(assert (=> b!7071937 m!7797612))

(declare-fun m!7797844 () Bool)

(assert (=> b!7071937 m!7797844))

(assert (=> b!7071679 d!2211484))

(declare-fun e!4251647 () Bool)

(declare-fun d!2211486 () Bool)

(assert (=> d!2211486 (= (matchZipper!3184 (set.union lt!2545725 lt!2545745) (t!382241 s!7408)) e!4251647)))

(declare-fun res!2888264 () Bool)

(assert (=> d!2211486 (=> res!2888264 e!4251647)))

(assert (=> d!2211486 (= res!2888264 (matchZipper!3184 lt!2545725 (t!382241 s!7408)))))

(declare-fun lt!2545962 () Unit!161998)

(assert (=> d!2211486 (= lt!2545962 (choose!54204 lt!2545725 lt!2545745 (t!382241 s!7408)))))

(assert (=> d!2211486 (= (lemmaZipperConcatMatchesSameAsBothZippers!1657 lt!2545725 lt!2545745 (t!382241 s!7408)) lt!2545962)))

(declare-fun b!7071938 () Bool)

(assert (=> b!7071938 (= e!4251647 (matchZipper!3184 lt!2545745 (t!382241 s!7408)))))

(assert (= (and d!2211486 (not res!2888264)) b!7071938))

(declare-fun m!7797846 () Bool)

(assert (=> d!2211486 m!7797846))

(assert (=> d!2211486 m!7797394))

(declare-fun m!7797848 () Bool)

(assert (=> d!2211486 m!7797848))

(assert (=> b!7071938 m!7797390))

(assert (=> b!7071669 d!2211486))

(declare-fun d!2211488 () Bool)

(declare-fun c!1319145 () Bool)

(assert (=> d!2211488 (= c!1319145 (isEmpty!39882 (t!382241 s!7408)))))

(declare-fun e!4251648 () Bool)

(assert (=> d!2211488 (= (matchZipper!3184 lt!2545737 (t!382241 s!7408)) e!4251648)))

(declare-fun b!7071939 () Bool)

(assert (=> b!7071939 (= e!4251648 (nullableZipper!2698 lt!2545737))))

(declare-fun b!7071940 () Bool)

(assert (=> b!7071940 (= e!4251648 (matchZipper!3184 (derivationStepZipper!3094 lt!2545737 (head!14406 (t!382241 s!7408))) (tail!13828 (t!382241 s!7408))))))

(assert (= (and d!2211488 c!1319145) b!7071939))

(assert (= (and d!2211488 (not c!1319145)) b!7071940))

(assert (=> d!2211488 m!7797692))

(declare-fun m!7797850 () Bool)

(assert (=> b!7071939 m!7797850))

(assert (=> b!7071940 m!7797696))

(assert (=> b!7071940 m!7797696))

(declare-fun m!7797852 () Bool)

(assert (=> b!7071940 m!7797852))

(assert (=> b!7071940 m!7797700))

(assert (=> b!7071940 m!7797852))

(assert (=> b!7071940 m!7797700))

(declare-fun m!7797854 () Bool)

(assert (=> b!7071940 m!7797854))

(assert (=> b!7071669 d!2211488))

(assert (=> b!7071669 d!2211418))

(declare-fun d!2211490 () Bool)

(declare-fun c!1319146 () Bool)

(assert (=> d!2211490 (= c!1319146 (isEmpty!39882 (t!382241 s!7408)))))

(declare-fun e!4251649 () Bool)

(assert (=> d!2211490 (= (matchZipper!3184 lt!2545725 (t!382241 s!7408)) e!4251649)))

(declare-fun b!7071941 () Bool)

(assert (=> b!7071941 (= e!4251649 (nullableZipper!2698 lt!2545725))))

(declare-fun b!7071942 () Bool)

(assert (=> b!7071942 (= e!4251649 (matchZipper!3184 (derivationStepZipper!3094 lt!2545725 (head!14406 (t!382241 s!7408))) (tail!13828 (t!382241 s!7408))))))

(assert (= (and d!2211490 c!1319146) b!7071941))

(assert (= (and d!2211490 (not c!1319146)) b!7071942))

(assert (=> d!2211490 m!7797692))

(declare-fun m!7797856 () Bool)

(assert (=> b!7071941 m!7797856))

(assert (=> b!7071942 m!7797696))

(assert (=> b!7071942 m!7797696))

(declare-fun m!7797858 () Bool)

(assert (=> b!7071942 m!7797858))

(assert (=> b!7071942 m!7797700))

(assert (=> b!7071942 m!7797858))

(assert (=> b!7071942 m!7797700))

(declare-fun m!7797860 () Bool)

(assert (=> b!7071942 m!7797860))

(assert (=> b!7071669 d!2211490))

(declare-fun d!2211492 () Bool)

(declare-fun c!1319147 () Bool)

(assert (=> d!2211492 (= c!1319147 (isEmpty!39882 (t!382241 s!7408)))))

(declare-fun e!4251650 () Bool)

(assert (=> d!2211492 (= (matchZipper!3184 lt!2545743 (t!382241 s!7408)) e!4251650)))

(declare-fun b!7071943 () Bool)

(assert (=> b!7071943 (= e!4251650 (nullableZipper!2698 lt!2545743))))

(declare-fun b!7071944 () Bool)

(assert (=> b!7071944 (= e!4251650 (matchZipper!3184 (derivationStepZipper!3094 lt!2545743 (head!14406 (t!382241 s!7408))) (tail!13828 (t!382241 s!7408))))))

(assert (= (and d!2211492 c!1319147) b!7071943))

(assert (= (and d!2211492 (not c!1319147)) b!7071944))

(assert (=> d!2211492 m!7797692))

(declare-fun m!7797862 () Bool)

(assert (=> b!7071943 m!7797862))

(assert (=> b!7071944 m!7797696))

(assert (=> b!7071944 m!7797696))

(declare-fun m!7797864 () Bool)

(assert (=> b!7071944 m!7797864))

(assert (=> b!7071944 m!7797700))

(assert (=> b!7071944 m!7797864))

(assert (=> b!7071944 m!7797700))

(declare-fun m!7797866 () Bool)

(assert (=> b!7071944 m!7797866))

(assert (=> b!7071669 d!2211492))

(declare-fun d!2211494 () Bool)

(declare-fun e!4251653 () Bool)

(assert (=> d!2211494 e!4251653))

(declare-fun res!2888267 () Bool)

(assert (=> d!2211494 (=> (not res!2888267) (not e!4251653))))

(declare-fun lt!2545965 () List!68460)

(declare-fun noDuplicate!2727 (List!68460) Bool)

(assert (=> d!2211494 (= res!2888267 (noDuplicate!2727 lt!2545965))))

(declare-fun choose!54208 ((Set Context!13280)) List!68460)

(assert (=> d!2211494 (= lt!2545965 (choose!54208 lt!2545761))))

(assert (=> d!2211494 (= (toList!10985 lt!2545761) lt!2545965)))

(declare-fun b!7071947 () Bool)

(declare-fun content!13790 (List!68460) (Set Context!13280))

(assert (=> b!7071947 (= e!4251653 (= (content!13790 lt!2545965) lt!2545761))))

(assert (= (and d!2211494 res!2888267) b!7071947))

(declare-fun m!7797868 () Bool)

(assert (=> d!2211494 m!7797868))

(declare-fun m!7797870 () Bool)

(assert (=> d!2211494 m!7797870))

(declare-fun m!7797872 () Bool)

(assert (=> b!7071947 m!7797872))

(assert (=> b!7071660 d!2211494))

(declare-fun d!2211496 () Bool)

(declare-fun e!4251659 () Bool)

(assert (=> d!2211496 e!4251659))

(declare-fun res!2888270 () Bool)

(assert (=> d!2211496 (=> (not res!2888270) (not e!4251659))))

(declare-fun lt!2545968 () Context!13280)

(declare-fun dynLambda!27797 (Int Context!13280) Bool)

(assert (=> d!2211496 (= res!2888270 (dynLambda!27797 lambda!425524 lt!2545968))))

(declare-fun getWitness!1747 (List!68460 Int) Context!13280)

(assert (=> d!2211496 (= lt!2545968 (getWitness!1747 (toList!10985 lt!2545761) lambda!425524))))

(assert (=> d!2211496 (exists!3689 lt!2545761 lambda!425524)))

(assert (=> d!2211496 (= (getWitness!1745 lt!2545761 lambda!425524) lt!2545968)))

(declare-fun b!7071956 () Bool)

(assert (=> b!7071956 (= e!4251659 (set.member lt!2545968 lt!2545761))))

(assert (= (and d!2211496 res!2888270) b!7071956))

(declare-fun b_lambda!269981 () Bool)

(assert (=> (not b_lambda!269981) (not d!2211496)))

(declare-fun m!7797876 () Bool)

(assert (=> d!2211496 m!7797876))

(assert (=> d!2211496 m!7797452))

(assert (=> d!2211496 m!7797452))

(declare-fun m!7797882 () Bool)

(assert (=> d!2211496 m!7797882))

(declare-fun m!7797884 () Bool)

(assert (=> d!2211496 m!7797884))

(declare-fun m!7797886 () Bool)

(assert (=> b!7071956 m!7797886))

(assert (=> b!7071660 d!2211496))

(declare-fun bs!1880654 () Bool)

(declare-fun d!2211498 () Bool)

(assert (= bs!1880654 (and d!2211498 b!7071660)))

(declare-fun lambda!425602 () Int)

(assert (=> bs!1880654 (= lambda!425602 lambda!425524)))

(declare-fun bs!1880655 () Bool)

(assert (= bs!1880655 (and d!2211498 b!7071671)))

(assert (=> bs!1880655 (= (= s!7408 lt!2545730) (= lambda!425602 lambda!425528))))

(assert (=> d!2211498 true))

(assert (=> d!2211498 (exists!3688 lt!2545754 lambda!425602)))

(declare-fun lt!2545971 () Unit!161998)

(declare-fun choose!54209 (List!68460 List!68458) Unit!161998)

(assert (=> d!2211498 (= lt!2545971 (choose!54209 lt!2545754 s!7408))))

(assert (=> d!2211498 (matchZipper!3184 (content!13790 lt!2545754) s!7408)))

(assert (=> d!2211498 (= (lemmaZipperMatchesExistsMatchingContext!565 lt!2545754 s!7408) lt!2545971)))

(declare-fun bs!1880656 () Bool)

(assert (= bs!1880656 d!2211498))

(declare-fun m!7797894 () Bool)

(assert (=> bs!1880656 m!7797894))

(declare-fun m!7797896 () Bool)

(assert (=> bs!1880656 m!7797896))

(declare-fun m!7797898 () Bool)

(assert (=> bs!1880656 m!7797898))

(assert (=> bs!1880656 m!7797898))

(declare-fun m!7797900 () Bool)

(assert (=> bs!1880656 m!7797900))

(assert (=> b!7071660 d!2211498))

(declare-fun bs!1880657 () Bool)

(declare-fun d!2211502 () Bool)

(assert (= bs!1880657 (and d!2211502 b!7071660)))

(declare-fun lambda!425605 () Int)

(assert (=> bs!1880657 (not (= lambda!425605 lambda!425524))))

(declare-fun bs!1880658 () Bool)

(assert (= bs!1880658 (and d!2211502 b!7071671)))

(assert (=> bs!1880658 (not (= lambda!425605 lambda!425528))))

(declare-fun bs!1880659 () Bool)

(assert (= bs!1880659 (and d!2211502 d!2211498)))

(assert (=> bs!1880659 (not (= lambda!425605 lambda!425602))))

(assert (=> d!2211502 true))

(declare-fun order!28407 () Int)

(declare-fun dynLambda!27798 (Int Int) Int)

(assert (=> d!2211502 (< (dynLambda!27798 order!28407 lambda!425524) (dynLambda!27798 order!28407 lambda!425605))))

(declare-fun forall!16596 (List!68460 Int) Bool)

(assert (=> d!2211502 (= (exists!3688 lt!2545754 lambda!425524) (not (forall!16596 lt!2545754 lambda!425605)))))

(declare-fun bs!1880660 () Bool)

(assert (= bs!1880660 d!2211502))

(declare-fun m!7797902 () Bool)

(assert (=> bs!1880660 m!7797902))

(assert (=> b!7071660 d!2211502))

(declare-fun d!2211504 () Bool)

(declare-fun c!1319153 () Bool)

(assert (=> d!2211504 (= c!1319153 (isEmpty!39882 s!7408))))

(declare-fun e!4251660 () Bool)

(assert (=> d!2211504 (= (matchZipper!3184 lt!2545757 s!7408) e!4251660)))

(declare-fun b!7071959 () Bool)

(assert (=> b!7071959 (= e!4251660 (nullableZipper!2698 lt!2545757))))

(declare-fun b!7071960 () Bool)

(assert (=> b!7071960 (= e!4251660 (matchZipper!3184 (derivationStepZipper!3094 lt!2545757 (head!14406 s!7408)) (tail!13828 s!7408)))))

(assert (= (and d!2211504 c!1319153) b!7071959))

(assert (= (and d!2211504 (not c!1319153)) b!7071960))

(assert (=> d!2211504 m!7797704))

(declare-fun m!7797904 () Bool)

(assert (=> b!7071959 m!7797904))

(assert (=> b!7071960 m!7797708))

(assert (=> b!7071960 m!7797708))

(declare-fun m!7797906 () Bool)

(assert (=> b!7071960 m!7797906))

(assert (=> b!7071960 m!7797712))

(assert (=> b!7071960 m!7797906))

(assert (=> b!7071960 m!7797712))

(declare-fun m!7797908 () Bool)

(assert (=> b!7071960 m!7797908))

(assert (=> b!7071660 d!2211504))

(declare-fun d!2211506 () Bool)

(declare-fun e!4251661 () Bool)

(assert (=> d!2211506 e!4251661))

(declare-fun res!2888271 () Bool)

(assert (=> d!2211506 (=> (not res!2888271) (not e!4251661))))

(declare-fun lt!2545974 () List!68460)

(assert (=> d!2211506 (= res!2888271 (noDuplicate!2727 lt!2545974))))

(assert (=> d!2211506 (= lt!2545974 (choose!54208 z1!570))))

(assert (=> d!2211506 (= (toList!10985 z1!570) lt!2545974)))

(declare-fun b!7071961 () Bool)

(assert (=> b!7071961 (= e!4251661 (= (content!13790 lt!2545974) z1!570))))

(assert (= (and d!2211506 res!2888271) b!7071961))

(declare-fun m!7797910 () Bool)

(assert (=> d!2211506 m!7797910))

(declare-fun m!7797912 () Bool)

(assert (=> d!2211506 m!7797912))

(declare-fun m!7797914 () Bool)

(assert (=> b!7071961 m!7797914))

(assert (=> b!7071671 d!2211506))

(declare-fun b!7071962 () Bool)

(declare-fun res!2888274 () Bool)

(declare-fun e!4251666 () Bool)

(assert (=> b!7071962 (=> (not res!2888274) (not e!4251666))))

(declare-fun lt!2545975 () Option!16963)

(assert (=> b!7071962 (= res!2888274 (matchZipper!3184 lt!2545759 (_2!37434 (get!23936 lt!2545975))))))

(declare-fun b!7071963 () Bool)

(declare-fun e!4251665 () Bool)

(assert (=> b!7071963 (= e!4251665 (matchZipper!3184 lt!2545759 s!7408))))

(declare-fun b!7071965 () Bool)

(declare-fun res!2888275 () Bool)

(assert (=> b!7071965 (=> (not res!2888275) (not e!4251666))))

(assert (=> b!7071965 (= res!2888275 (matchZipper!3184 lt!2545744 (_1!37434 (get!23936 lt!2545975))))))

(declare-fun b!7071966 () Bool)

(declare-fun lt!2545976 () Unit!161998)

(declare-fun lt!2545977 () Unit!161998)

(assert (=> b!7071966 (= lt!2545976 lt!2545977)))

(assert (=> b!7071966 (= (++!15772 (++!15772 Nil!68334 (Cons!68334 (h!74782 s!7408) Nil!68334)) (t!382241 s!7408)) s!7408)))

(assert (=> b!7071966 (= lt!2545977 (lemmaMoveElementToOtherListKeepsConcatEq!2974 Nil!68334 (h!74782 s!7408) (t!382241 s!7408) s!7408))))

(declare-fun e!4251662 () Option!16963)

(assert (=> b!7071966 (= e!4251662 (findConcatSeparationZippers!479 lt!2545744 lt!2545759 (++!15772 Nil!68334 (Cons!68334 (h!74782 s!7408) Nil!68334)) (t!382241 s!7408) s!7408))))

(declare-fun b!7071964 () Bool)

(assert (=> b!7071964 (= e!4251666 (= (++!15772 (_1!37434 (get!23936 lt!2545975)) (_2!37434 (get!23936 lt!2545975))) s!7408))))

(declare-fun d!2211508 () Bool)

(declare-fun e!4251663 () Bool)

(assert (=> d!2211508 e!4251663))

(declare-fun res!2888276 () Bool)

(assert (=> d!2211508 (=> res!2888276 e!4251663)))

(assert (=> d!2211508 (= res!2888276 e!4251666)))

(declare-fun res!2888272 () Bool)

(assert (=> d!2211508 (=> (not res!2888272) (not e!4251666))))

(assert (=> d!2211508 (= res!2888272 (isDefined!13664 lt!2545975))))

(declare-fun e!4251664 () Option!16963)

(assert (=> d!2211508 (= lt!2545975 e!4251664)))

(declare-fun c!1319156 () Bool)

(assert (=> d!2211508 (= c!1319156 e!4251665)))

(declare-fun res!2888273 () Bool)

(assert (=> d!2211508 (=> (not res!2888273) (not e!4251665))))

(assert (=> d!2211508 (= res!2888273 (matchZipper!3184 lt!2545744 Nil!68334))))

(assert (=> d!2211508 (= (++!15772 Nil!68334 s!7408) s!7408)))

(assert (=> d!2211508 (= (findConcatSeparationZippers!479 lt!2545744 lt!2545759 Nil!68334 s!7408 s!7408) lt!2545975)))

(declare-fun b!7071967 () Bool)

(assert (=> b!7071967 (= e!4251662 None!16962)))

(declare-fun b!7071968 () Bool)

(assert (=> b!7071968 (= e!4251664 e!4251662)))

(declare-fun c!1319157 () Bool)

(assert (=> b!7071968 (= c!1319157 (is-Nil!68334 s!7408))))

(declare-fun b!7071969 () Bool)

(assert (=> b!7071969 (= e!4251664 (Some!16962 (tuple2!68263 Nil!68334 s!7408)))))

(declare-fun b!7071970 () Bool)

(assert (=> b!7071970 (= e!4251663 (not (isDefined!13664 lt!2545975)))))

(assert (= (and d!2211508 res!2888273) b!7071963))

(assert (= (and d!2211508 c!1319156) b!7071969))

(assert (= (and d!2211508 (not c!1319156)) b!7071968))

(assert (= (and b!7071968 c!1319157) b!7071967))

(assert (= (and b!7071968 (not c!1319157)) b!7071966))

(assert (= (and d!2211508 res!2888272) b!7071965))

(assert (= (and b!7071965 res!2888275) b!7071962))

(assert (= (and b!7071962 res!2888274) b!7071964))

(assert (= (and d!2211508 (not res!2888276)) b!7071970))

(declare-fun m!7797916 () Bool)

(assert (=> b!7071966 m!7797916))

(assert (=> b!7071966 m!7797916))

(declare-fun m!7797918 () Bool)

(assert (=> b!7071966 m!7797918))

(declare-fun m!7797920 () Bool)

(assert (=> b!7071966 m!7797920))

(assert (=> b!7071966 m!7797916))

(declare-fun m!7797922 () Bool)

(assert (=> b!7071966 m!7797922))

(declare-fun m!7797924 () Bool)

(assert (=> d!2211508 m!7797924))

(declare-fun m!7797926 () Bool)

(assert (=> d!2211508 m!7797926))

(declare-fun m!7797928 () Bool)

(assert (=> d!2211508 m!7797928))

(declare-fun m!7797930 () Bool)

(assert (=> b!7071964 m!7797930))

(declare-fun m!7797932 () Bool)

(assert (=> b!7071964 m!7797932))

(declare-fun m!7797934 () Bool)

(assert (=> b!7071963 m!7797934))

(assert (=> b!7071962 m!7797930))

(declare-fun m!7797936 () Bool)

(assert (=> b!7071962 m!7797936))

(assert (=> b!7071965 m!7797930))

(declare-fun m!7797938 () Bool)

(assert (=> b!7071965 m!7797938))

(assert (=> b!7071970 m!7797924))

(assert (=> b!7071671 d!2211508))

(declare-fun d!2211510 () Bool)

(assert (=> d!2211510 (isDefined!13664 (findConcatSeparationZippers!479 lt!2545744 lt!2545759 Nil!68334 s!7408 s!7408))))

(declare-fun lt!2545981 () Unit!161998)

(declare-fun choose!54210 ((Set Context!13280) (Set Context!13280) List!68458 List!68458 List!68458 List!68458 List!68458) Unit!161998)

(assert (=> d!2211510 (= lt!2545981 (choose!54210 lt!2545744 lt!2545759 lt!2545730 (_2!37434 lt!2545733) s!7408 Nil!68334 s!7408))))

(assert (=> d!2211510 (matchZipper!3184 lt!2545744 lt!2545730)))

(assert (=> d!2211510 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!71 lt!2545744 lt!2545759 lt!2545730 (_2!37434 lt!2545733) s!7408 Nil!68334 s!7408) lt!2545981)))

(declare-fun bs!1880665 () Bool)

(assert (= bs!1880665 d!2211510))

(assert (=> bs!1880665 m!7797354))

(assert (=> bs!1880665 m!7797354))

(assert (=> bs!1880665 m!7797356))

(declare-fun m!7797948 () Bool)

(assert (=> bs!1880665 m!7797948))

(assert (=> bs!1880665 m!7797418))

(assert (=> b!7071671 d!2211510))

(declare-fun bs!1880666 () Bool)

(declare-fun d!2211514 () Bool)

(assert (= bs!1880666 (and d!2211514 b!7071660)))

(declare-fun lambda!425609 () Int)

(assert (=> bs!1880666 (not (= lambda!425609 lambda!425524))))

(declare-fun bs!1880667 () Bool)

(assert (= bs!1880667 (and d!2211514 b!7071671)))

(assert (=> bs!1880667 (not (= lambda!425609 lambda!425528))))

(declare-fun bs!1880668 () Bool)

(assert (= bs!1880668 (and d!2211514 d!2211498)))

(assert (=> bs!1880668 (not (= lambda!425609 lambda!425602))))

(declare-fun bs!1880669 () Bool)

(assert (= bs!1880669 (and d!2211514 d!2211502)))

(assert (=> bs!1880669 (= (= lambda!425528 lambda!425524) (= lambda!425609 lambda!425605))))

(assert (=> d!2211514 true))

(assert (=> d!2211514 (< (dynLambda!27798 order!28407 lambda!425528) (dynLambda!27798 order!28407 lambda!425609))))

(assert (=> d!2211514 (= (exists!3688 (toList!10985 z1!570) lambda!425528) (not (forall!16596 (toList!10985 z1!570) lambda!425609)))))

(declare-fun bs!1880670 () Bool)

(assert (= bs!1880670 d!2211514))

(assert (=> bs!1880670 m!7797360))

(declare-fun m!7797950 () Bool)

(assert (=> bs!1880670 m!7797950))

(assert (=> b!7071671 d!2211514))

(declare-fun d!2211516 () Bool)

(assert (=> d!2211516 (exists!3689 z1!570 lambda!425528)))

(declare-fun lt!2545987 () Unit!161998)

(declare-fun choose!54211 ((Set Context!13280) Context!13280 Int) Unit!161998)

(assert (=> d!2211516 (= lt!2545987 (choose!54211 z1!570 lt!2545736 lambda!425528))))

(assert (=> d!2211516 (set.member lt!2545736 z1!570)))

(assert (=> d!2211516 (= (lemmaContainsThenExists!152 z1!570 lt!2545736 lambda!425528) lt!2545987)))

(declare-fun bs!1880672 () Bool)

(assert (= bs!1880672 d!2211516))

(assert (=> bs!1880672 m!7797362))

(declare-fun m!7797958 () Bool)

(assert (=> bs!1880672 m!7797958))

(assert (=> bs!1880672 m!7797400))

(assert (=> b!7071671 d!2211516))

(declare-fun d!2211520 () Bool)

(declare-fun lt!2545990 () Bool)

(assert (=> d!2211520 (= lt!2545990 (exists!3688 (toList!10985 z1!570) lambda!425528))))

(declare-fun choose!54212 ((Set Context!13280) Int) Bool)

(assert (=> d!2211520 (= lt!2545990 (choose!54212 z1!570 lambda!425528))))

(assert (=> d!2211520 (= (exists!3689 z1!570 lambda!425528) lt!2545990)))

(declare-fun bs!1880673 () Bool)

(assert (= bs!1880673 d!2211520))

(assert (=> bs!1880673 m!7797360))

(assert (=> bs!1880673 m!7797360))

(assert (=> bs!1880673 m!7797364))

(declare-fun m!7797960 () Bool)

(assert (=> bs!1880673 m!7797960))

(assert (=> b!7071671 d!2211520))

(declare-fun d!2211522 () Bool)

(assert (=> d!2211522 (= (isDefined!13664 (findConcatSeparationZippers!479 lt!2545744 lt!2545759 Nil!68334 s!7408 s!7408)) (not (isEmpty!39883 (findConcatSeparationZippers!479 lt!2545744 lt!2545759 Nil!68334 s!7408 s!7408))))))

(declare-fun bs!1880674 () Bool)

(assert (= bs!1880674 d!2211522))

(assert (=> bs!1880674 m!7797354))

(declare-fun m!7797962 () Bool)

(assert (=> bs!1880674 m!7797962))

(assert (=> b!7071671 d!2211522))

(declare-fun d!2211524 () Bool)

(assert (=> d!2211524 (= (flatMap!2570 lt!2545716 lambda!425527) (choose!54205 lt!2545716 lambda!425527))))

(declare-fun bs!1880675 () Bool)

(assert (= bs!1880675 d!2211524))

(declare-fun m!7797964 () Bool)

(assert (=> bs!1880675 m!7797964))

(assert (=> b!7071672 d!2211524))

(declare-fun d!2211526 () Bool)

(assert (=> d!2211526 (= (flatMap!2570 lt!2545716 lambda!425527) (dynLambda!27795 lambda!425527 lt!2545726))))

(declare-fun lt!2545991 () Unit!161998)

(assert (=> d!2211526 (= lt!2545991 (choose!54206 lt!2545716 lt!2545726 lambda!425527))))

(assert (=> d!2211526 (= lt!2545716 (set.insert lt!2545726 (as set.empty (Set Context!13280))))))

(assert (=> d!2211526 (= (lemmaFlatMapOnSingletonSet!2079 lt!2545716 lt!2545726 lambda!425527) lt!2545991)))

(declare-fun b_lambda!269983 () Bool)

(assert (=> (not b_lambda!269983) (not d!2211526)))

(declare-fun bs!1880676 () Bool)

(assert (= bs!1880676 d!2211526))

(assert (=> bs!1880676 m!7797464))

(declare-fun m!7797966 () Bool)

(assert (=> bs!1880676 m!7797966))

(declare-fun m!7797968 () Bool)

(assert (=> bs!1880676 m!7797968))

(assert (=> bs!1880676 m!7797468))

(assert (=> b!7071672 d!2211526))

(assert (=> b!7071672 d!2211472))

(declare-fun b!7071971 () Bool)

(declare-fun e!4251668 () (Set Context!13280))

(declare-fun call!642732 () (Set Context!13280))

(assert (=> b!7071971 (= e!4251668 (set.union call!642732 (derivationStepZipperUp!2228 (Context!13281 (t!382242 (exprs!7140 lt!2545726))) (h!74782 s!7408))))))

(declare-fun b!7071972 () Bool)

(declare-fun e!4251669 () Bool)

(assert (=> b!7071972 (= e!4251669 (nullable!7327 (h!74783 (exprs!7140 lt!2545726))))))

(declare-fun b!7071973 () Bool)

(declare-fun e!4251670 () (Set Context!13280))

(assert (=> b!7071973 (= e!4251670 (as set.empty (Set Context!13280)))))

(declare-fun d!2211528 () Bool)

(declare-fun c!1319158 () Bool)

(assert (=> d!2211528 (= c!1319158 e!4251669)))

(declare-fun res!2888277 () Bool)

(assert (=> d!2211528 (=> (not res!2888277) (not e!4251669))))

(assert (=> d!2211528 (= res!2888277 (is-Cons!68335 (exprs!7140 lt!2545726)))))

(assert (=> d!2211528 (= (derivationStepZipperUp!2228 lt!2545726 (h!74782 s!7408)) e!4251668)))

(declare-fun b!7071974 () Bool)

(assert (=> b!7071974 (= e!4251670 call!642732)))

(declare-fun b!7071975 () Bool)

(assert (=> b!7071975 (= e!4251668 e!4251670)))

(declare-fun c!1319159 () Bool)

(assert (=> b!7071975 (= c!1319159 (is-Cons!68335 (exprs!7140 lt!2545726)))))

(declare-fun bm!642727 () Bool)

(assert (=> bm!642727 (= call!642732 (derivationStepZipperDown!2278 (h!74783 (exprs!7140 lt!2545726)) (Context!13281 (t!382242 (exprs!7140 lt!2545726))) (h!74782 s!7408)))))

(assert (= (and d!2211528 res!2888277) b!7071972))

(assert (= (and d!2211528 c!1319158) b!7071971))

(assert (= (and d!2211528 (not c!1319158)) b!7071975))

(assert (= (and b!7071975 c!1319159) b!7071974))

(assert (= (and b!7071975 (not c!1319159)) b!7071973))

(assert (= (or b!7071971 b!7071974) bm!642727))

(declare-fun m!7797970 () Bool)

(assert (=> b!7071971 m!7797970))

(declare-fun m!7797972 () Bool)

(assert (=> b!7071972 m!7797972))

(declare-fun m!7797974 () Bool)

(assert (=> bm!642727 m!7797974))

(assert (=> b!7071672 d!2211528))

(declare-fun bs!1880677 () Bool)

(declare-fun d!2211530 () Bool)

(assert (= bs!1880677 (and d!2211530 b!7071672)))

(declare-fun lambda!425610 () Int)

(assert (=> bs!1880677 (= lambda!425610 lambda!425527)))

(declare-fun bs!1880678 () Bool)

(assert (= bs!1880678 (and d!2211530 d!2211454)))

(assert (=> bs!1880678 (= lambda!425610 lambda!425595)))

(assert (=> d!2211530 true))

(assert (=> d!2211530 (= (derivationStepZipper!3094 lt!2545716 (h!74782 s!7408)) (flatMap!2570 lt!2545716 lambda!425610))))

(declare-fun bs!1880679 () Bool)

(assert (= bs!1880679 d!2211530))

(declare-fun m!7797976 () Bool)

(assert (=> bs!1880679 m!7797976))

(assert (=> b!7071672 d!2211530))

(assert (=> b!7071661 d!2211432))

(assert (=> b!7071661 d!2211418))

(declare-fun b!7071980 () Bool)

(declare-fun e!4251673 () Bool)

(declare-fun tp!1942297 () Bool)

(assert (=> b!7071980 (= e!4251673 (and tp_is_empty!44513 tp!1942297))))

(assert (=> b!7071659 (= tp!1942279 e!4251673)))

(assert (= (and b!7071659 (is-Cons!68334 (t!382241 s!7408))) b!7071980))

(declare-fun condSetEmpty!50258 () Bool)

(assert (=> setNonEmpty!50252 (= condSetEmpty!50258 (= setRest!50252 (as set.empty (Set Context!13280))))))

(declare-fun setRes!50258 () Bool)

(assert (=> setNonEmpty!50252 (= tp!1942281 setRes!50258)))

(declare-fun setIsEmpty!50258 () Bool)

(assert (=> setIsEmpty!50258 setRes!50258))

(declare-fun setElem!50258 () Context!13280)

(declare-fun e!4251678 () Bool)

(declare-fun tp!1942302 () Bool)

(declare-fun setNonEmpty!50258 () Bool)

(assert (=> setNonEmpty!50258 (= setRes!50258 (and tp!1942302 (inv!86970 setElem!50258) e!4251678))))

(declare-fun setRest!50258 () (Set Context!13280))

(assert (=> setNonEmpty!50258 (= setRest!50252 (set.union (set.insert setElem!50258 (as set.empty (Set Context!13280))) setRest!50258))))

(declare-fun b!7071989 () Bool)

(declare-fun tp!1942303 () Bool)

(assert (=> b!7071989 (= e!4251678 tp!1942303)))

(assert (= (and setNonEmpty!50252 condSetEmpty!50258) setIsEmpty!50258))

(assert (= (and setNonEmpty!50252 (not condSetEmpty!50258)) setNonEmpty!50258))

(assert (= setNonEmpty!50258 b!7071989))

(declare-fun m!7797978 () Bool)

(assert (=> setNonEmpty!50258 m!7797978))

(declare-fun b!7071996 () Bool)

(declare-fun e!4251683 () Bool)

(declare-fun tp!1942308 () Bool)

(declare-fun tp!1942309 () Bool)

(assert (=> b!7071996 (= e!4251683 (and tp!1942308 tp!1942309))))

(assert (=> b!7071670 (= tp!1942282 e!4251683)))

(assert (= (and b!7071670 (is-Cons!68335 (exprs!7140 ct2!306))) b!7071996))

(declare-fun b!7071999 () Bool)

(declare-fun e!4251684 () Bool)

(declare-fun tp!1942310 () Bool)

(declare-fun tp!1942311 () Bool)

(assert (=> b!7071999 (= e!4251684 (and tp!1942310 tp!1942311))))

(assert (=> b!7071681 (= tp!1942280 e!4251684)))

(assert (= (and b!7071681 (is-Cons!68335 (exprs!7140 setElem!50252))) b!7071999))

(declare-fun b_lambda!269985 () Bool)

(assert (= b_lambda!269983 (or b!7071672 b_lambda!269985)))

(declare-fun bs!1880680 () Bool)

(declare-fun d!2211532 () Bool)

(assert (= bs!1880680 (and d!2211532 b!7071672)))

(assert (=> bs!1880680 (= (dynLambda!27795 lambda!425527 lt!2545726) (derivationStepZipperUp!2228 lt!2545726 (h!74782 s!7408)))))

(assert (=> bs!1880680 m!7797460))

(assert (=> d!2211526 d!2211532))

(declare-fun b_lambda!269987 () Bool)

(assert (= b_lambda!269979 (or b!7071678 b_lambda!269987)))

(declare-fun bs!1880681 () Bool)

(declare-fun d!2211534 () Bool)

(assert (= bs!1880681 (and d!2211534 b!7071678)))

(declare-fun lt!2545994 () Unit!161998)

(assert (=> bs!1880681 (= lt!2545994 (lemmaConcatPreservesForall!955 (exprs!7140 lt!2545961) (exprs!7140 ct2!306) lambda!425526))))

(assert (=> bs!1880681 (= (dynLambda!27796 lambda!425525 lt!2545961) (Context!13281 (++!15771 (exprs!7140 lt!2545961) (exprs!7140 ct2!306))))))

(declare-fun m!7797980 () Bool)

(assert (=> bs!1880681 m!7797980))

(declare-fun m!7797982 () Bool)

(assert (=> bs!1880681 m!7797982))

(assert (=> d!2211476 d!2211534))

(declare-fun b_lambda!269989 () Bool)

(assert (= b_lambda!269981 (or b!7071660 b_lambda!269989)))

(declare-fun bs!1880682 () Bool)

(declare-fun d!2211536 () Bool)

(assert (= bs!1880682 (and d!2211536 b!7071660)))

(assert (=> bs!1880682 (= (dynLambda!27797 lambda!425524 lt!2545968) (matchZipper!3184 (set.insert lt!2545968 (as set.empty (Set Context!13280))) s!7408))))

(declare-fun m!7797984 () Bool)

(assert (=> bs!1880682 m!7797984))

(assert (=> bs!1880682 m!7797984))

(declare-fun m!7797986 () Bool)

(assert (=> bs!1880682 m!7797986))

(assert (=> d!2211496 d!2211536))

(declare-fun b_lambda!269991 () Bool)

(assert (= b_lambda!269975 (or b!7071672 b_lambda!269991)))

(declare-fun bs!1880683 () Bool)

(declare-fun d!2211538 () Bool)

(assert (= bs!1880683 (and d!2211538 b!7071672)))

(assert (=> bs!1880683 (= (dynLambda!27795 lambda!425527 lt!2545736) (derivationStepZipperUp!2228 lt!2545736 (h!74782 s!7408)))))

(assert (=> bs!1880683 m!7797438))

(assert (=> d!2211450 d!2211538))

(push 1)

(assert (not b_lambda!269989))

(assert (not bm!642727))

(assert (not d!2211428))

(assert (not b!7071888))

(assert (not d!2211432))

(assert (not b!7071943))

(assert (not b!7071846))

(assert (not d!2211490))

(assert (not b!7071845))

(assert (not b!7071942))

(assert (not b!7071961))

(assert (not bm!642715))

(assert (not b!7071923))

(assert (not b!7071817))

(assert (not b!7071852))

(assert (not d!2211476))

(assert (not d!2211526))

(assert (not b_lambda!269991))

(assert (not b!7071939))

(assert (not b!7071936))

(assert (not d!2211458))

(assert (not b!7071947))

(assert (not d!2211496))

(assert (not d!2211436))

(assert (not bm!642718))

(assert (not b!7071960))

(assert (not d!2211482))

(assert (not d!2211416))

(assert (not b!7071937))

(assert (not d!2211524))

(assert (not d!2211486))

(assert (not b!7071970))

(assert (not bm!642720))

(assert (not b!7071924))

(assert (not bm!642723))

(assert (not d!2211422))

(assert (not b!7071854))

(assert (not d!2211508))

(assert (not b!7071941))

(assert (not b!7071804))

(assert (not b!7071839))

(assert (not d!2211492))

(assert (not b!7071996))

(assert (not b!7071908))

(assert (not d!2211468))

(assert (not b!7071964))

(assert (not b!7071873))

(assert (not b!7071909))

(assert (not b!7071851))

(assert (not b!7071971))

(assert (not b!7071940))

(assert (not d!2211504))

(assert (not b!7071848))

(assert (not d!2211430))

(assert (not d!2211410))

(assert (not d!2211530))

(assert (not b!7071928))

(assert (not b!7071879))

(assert (not d!2211472))

(assert (not d!2211516))

(assert (not d!2211440))

(assert (not b!7071844))

(assert (not d!2211506))

(assert (not d!2211450))

(assert (not b!7071847))

(assert (not bm!642726))

(assert (not b!7071965))

(assert (not d!2211424))

(assert (not b!7071855))

(assert (not d!2211522))

(assert (not b!7071836))

(assert (not b!7071938))

(assert (not b!7071963))

(assert (not setNonEmpty!50258))

(assert (not d!2211464))

(assert (not bm!642719))

(assert (not d!2211412))

(assert (not b!7071880))

(assert (not d!2211520))

(assert (not b!7071840))

(assert (not b!7071838))

(assert (not bm!642722))

(assert (not d!2211488))

(assert (not b!7071980))

(assert (not bm!642711))

(assert (not d!2211418))

(assert (not b!7071989))

(assert (not bs!1880680))

(assert (not d!2211514))

(assert (not d!2211494))

(assert (not d!2211484))

(assert (not b!7071927))

(assert (not b!7071972))

(assert (not b!7071867))

(assert (not b!7071837))

(assert (not d!2211498))

(assert (not d!2211510))

(assert (not b!7071816))

(assert (not d!2211438))

(assert (not b!7071966))

(assert (not bm!642712))

(assert (not b_lambda!269987))

(assert (not b_lambda!269985))

(assert (not d!2211426))

(assert (not b!7071944))

(assert (not b!7071853))

(assert (not d!2211434))

(assert (not bs!1880681))

(assert (not b!7071962))

(assert (not d!2211414))

(assert (not bs!1880683))

(assert (not d!2211444))

(assert (not b!7071874))

(assert (not b!7071866))

(assert (not b!7071959))

(assert (not d!2211474))

(assert (not d!2211454))

(assert (not bs!1880682))

(assert (not b!7071999))

(assert tp_is_empty!44513)

(assert (not b!7071881))

(assert (not b!7071878))

(assert (not d!2211502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


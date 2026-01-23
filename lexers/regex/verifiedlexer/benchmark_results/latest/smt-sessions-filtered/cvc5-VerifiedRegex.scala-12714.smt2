; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702900 () Bool)

(assert start!702900)

(declare-fun b!7237923 () Bool)

(assert (=> b!7237923 true))

(declare-fun b!7237920 () Bool)

(assert (=> b!7237920 true))

(declare-fun b!7237909 () Bool)

(declare-datatypes ((Unit!163618 0))(
  ( (Unit!163619) )
))
(declare-fun e!4339327 () Unit!163618)

(declare-fun Unit!163620 () Unit!163618)

(assert (=> b!7237909 (= e!4339327 Unit!163620)))

(declare-fun b!7237910 () Bool)

(declare-fun Unit!163621 () Unit!163618)

(assert (=> b!7237910 (= e!4339327 Unit!163621)))

(declare-fun lt!2577190 () Unit!163618)

(declare-fun lambda!440895 () Int)

(declare-datatypes ((C!37346 0))(
  ( (C!37347 (val!28621 Int)) )
))
(declare-datatypes ((Regex!18536 0))(
  ( (ElementMatch!18536 (c!1343617 C!37346)) (Concat!27381 (regOne!37584 Regex!18536) (regTwo!37584 Regex!18536)) (EmptyExpr!18536) (Star!18536 (reg!18865 Regex!18536)) (EmptyLang!18536) (Union!18536 (regOne!37585 Regex!18536) (regTwo!37585 Regex!18536)) )
))
(declare-datatypes ((List!70216 0))(
  ( (Nil!70092) (Cons!70092 (h!76540 Regex!18536) (t!384267 List!70216)) )
))
(declare-datatypes ((Context!14952 0))(
  ( (Context!14953 (exprs!7976 List!70216)) )
))
(declare-fun ct1!232 () Context!14952)

(declare-fun ct2!328 () Context!14952)

(declare-fun lemmaConcatPreservesForall!1345 (List!70216 List!70216 Int) Unit!163618)

(assert (=> b!7237910 (= lt!2577190 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577161 () (Set Context!14952))

(declare-fun lt!2577183 () Context!14952)

(declare-datatypes ((List!70217 0))(
  ( (Nil!70093) (Cons!70093 (h!76541 C!37346) (t!384268 List!70217)) )
))
(declare-fun s1!1971 () List!70217)

(declare-fun derivationStepZipperUp!2410 (Context!14952 C!37346) (Set Context!14952))

(assert (=> b!7237910 (= lt!2577161 (derivationStepZipperUp!2410 lt!2577183 (h!76541 s1!1971)))))

(declare-fun lt!2577162 () (Set Context!14952))

(declare-fun lt!2577171 () Unit!163618)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1683 ((Set Context!14952) (Set Context!14952) List!70217) Unit!163618)

(assert (=> b!7237910 (= lt!2577171 (lemmaZipperConcatMatchesSameAsBothZippers!1683 lt!2577162 lt!2577161 (t!384268 s1!1971)))))

(declare-fun res!2936334 () Bool)

(declare-fun matchZipper!3446 ((Set Context!14952) List!70217) Bool)

(assert (=> b!7237910 (= res!2936334 (matchZipper!3446 lt!2577162 (t!384268 s1!1971)))))

(declare-fun e!4339323 () Bool)

(assert (=> b!7237910 (=> res!2936334 e!4339323)))

(assert (=> b!7237910 (= (matchZipper!3446 (set.union lt!2577162 lt!2577161) (t!384268 s1!1971)) e!4339323)))

(declare-fun lt!2577194 () Unit!163618)

(assert (=> b!7237910 (= lt!2577194 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577164 () (Set Context!14952))

(declare-fun lt!2577180 () Context!14952)

(assert (=> b!7237910 (= lt!2577164 (derivationStepZipperUp!2410 lt!2577180 (h!76541 s1!1971)))))

(declare-fun lt!2577165 () List!70217)

(declare-fun lt!2577160 () (Set Context!14952))

(declare-fun lt!2577176 () Unit!163618)

(assert (=> b!7237910 (= lt!2577176 (lemmaZipperConcatMatchesSameAsBothZippers!1683 lt!2577160 lt!2577164 lt!2577165))))

(declare-fun res!2936332 () Bool)

(assert (=> b!7237910 (= res!2936332 (matchZipper!3446 lt!2577160 lt!2577165))))

(declare-fun e!4339318 () Bool)

(assert (=> b!7237910 (=> res!2936332 e!4339318)))

(assert (=> b!7237910 (= (matchZipper!3446 (set.union lt!2577160 lt!2577164) lt!2577165) e!4339318)))

(declare-fun b!7237911 () Bool)

(declare-fun e!4339329 () Bool)

(declare-fun e!4339322 () Bool)

(assert (=> b!7237911 (= e!4339329 e!4339322)))

(declare-fun res!2936330 () Bool)

(assert (=> b!7237911 (=> (not res!2936330) (not e!4339322))))

(assert (=> b!7237911 (= res!2936330 (and (not (is-Nil!70092 (exprs!7976 ct1!232))) (is-Cons!70093 s1!1971)))))

(declare-fun lt!2577166 () (Set Context!14952))

(declare-fun lt!2577191 () Context!14952)

(assert (=> b!7237911 (= lt!2577166 (set.insert lt!2577191 (as set.empty (Set Context!14952))))))

(declare-fun lt!2577189 () List!70216)

(assert (=> b!7237911 (= lt!2577191 (Context!14953 lt!2577189))))

(declare-fun ++!16372 (List!70216 List!70216) List!70216)

(assert (=> b!7237911 (= lt!2577189 (++!16372 (exprs!7976 ct1!232) (exprs!7976 ct2!328)))))

(declare-fun lt!2577169 () Unit!163618)

(assert (=> b!7237911 (= lt!2577169 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun b!7237912 () Bool)

(declare-fun e!4339320 () Bool)

(declare-fun tp_is_empty!46537 () Bool)

(declare-fun tp!2034851 () Bool)

(assert (=> b!7237912 (= e!4339320 (and tp_is_empty!46537 tp!2034851))))

(declare-fun b!7237913 () Bool)

(declare-fun e!4339321 () Bool)

(declare-fun e!4339317 () Bool)

(assert (=> b!7237913 (= e!4339321 e!4339317)))

(declare-fun res!2936338 () Bool)

(assert (=> b!7237913 (=> res!2936338 e!4339317)))

(declare-fun isEmpty!40394 (List!70216) Bool)

(assert (=> b!7237913 (= res!2936338 (isEmpty!40394 lt!2577189))))

(declare-fun lt!2577175 () Unit!163618)

(assert (=> b!7237913 (= lt!2577175 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577186 () (Set Context!14952))

(assert (=> b!7237913 (= lt!2577186 (derivationStepZipperUp!2410 lt!2577191 (h!76541 s1!1971)))))

(declare-fun lt!2577172 () Unit!163618)

(assert (=> b!7237913 (= lt!2577172 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun derivationStepZipperDown!2580 (Regex!18536 Context!14952 C!37346) (Set Context!14952))

(assert (=> b!7237913 (= lt!2577162 (derivationStepZipperDown!2580 (h!76540 (exprs!7976 ct1!232)) lt!2577183 (h!76541 s1!1971)))))

(declare-fun tail!14182 (List!70216) List!70216)

(assert (=> b!7237913 (= lt!2577183 (Context!14953 (tail!14182 (exprs!7976 ct1!232))))))

(declare-fun b!7237914 () Bool)

(declare-fun res!2936335 () Bool)

(assert (=> b!7237914 (=> (not res!2936335) (not e!4339329))))

(declare-fun s2!1849 () List!70217)

(assert (=> b!7237914 (= res!2936335 (matchZipper!3446 (set.insert ct2!328 (as set.empty (Set Context!14952))) s2!1849))))

(declare-fun b!7237915 () Bool)

(assert (=> b!7237915 (= e!4339318 (matchZipper!3446 lt!2577164 lt!2577165))))

(declare-fun b!7237916 () Bool)

(assert (=> b!7237916 (= e!4339323 (matchZipper!3446 lt!2577161 (t!384268 s1!1971)))))

(declare-fun b!7237917 () Bool)

(declare-fun e!4339324 () Bool)

(declare-fun tp!2034849 () Bool)

(assert (=> b!7237917 (= e!4339324 tp!2034849)))

(declare-fun b!7237918 () Bool)

(declare-fun e!4339328 () Bool)

(declare-fun tp!2034852 () Bool)

(assert (=> b!7237918 (= e!4339328 tp!2034852)))

(declare-fun b!7237919 () Bool)

(declare-fun e!4339326 () Bool)

(assert (=> b!7237919 (= e!4339326 e!4339321)))

(declare-fun res!2936331 () Bool)

(assert (=> b!7237919 (=> res!2936331 e!4339321)))

(assert (=> b!7237919 (= res!2936331 (isEmpty!40394 (exprs!7976 ct1!232)))))

(declare-fun lt!2577182 () (Set Context!14952))

(assert (=> b!7237919 (= lt!2577182 (derivationStepZipperUp!2410 ct1!232 (h!76541 s1!1971)))))

(declare-fun lt!2577188 () Context!14952)

(declare-fun lt!2577184 () Unit!163618)

(assert (=> b!7237919 (= lt!2577184 (lemmaConcatPreservesForall!1345 (exprs!7976 lt!2577188) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577173 () Context!14952)

(assert (=> b!7237919 (matchZipper!3446 (set.insert lt!2577173 (as set.empty (Set Context!14952))) lt!2577165)))

(declare-fun ++!16373 (List!70217 List!70217) List!70217)

(assert (=> b!7237919 (= lt!2577165 (++!16373 (t!384268 s1!1971) s2!1849))))

(assert (=> b!7237919 (= lt!2577173 (Context!14953 (++!16372 (exprs!7976 lt!2577188) (exprs!7976 ct2!328))))))

(declare-fun lt!2577167 () Unit!163618)

(assert (=> b!7237919 (= lt!2577167 (lemmaConcatPreservesForall!1345 (exprs!7976 lt!2577188) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577177 () Unit!163618)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!327 (Context!14952 Context!14952 List!70217 List!70217) Unit!163618)

(assert (=> b!7237919 (= lt!2577177 (lemmaConcatenateContextMatchesConcatOfStrings!327 lt!2577188 ct2!328 (t!384268 s1!1971) s2!1849))))

(declare-fun lt!2577163 () (Set Context!14952))

(declare-fun lambda!440896 () Int)

(declare-fun getWitness!2078 ((Set Context!14952) Int) Context!14952)

(assert (=> b!7237919 (= lt!2577188 (getWitness!2078 lt!2577163 lambda!440896))))

(declare-fun forall!17372 (List!70216 Int) Bool)

(assert (=> b!7237920 (= e!4339317 (forall!17372 (exprs!7976 lt!2577188) lambda!440895))))

(assert (=> b!7237920 (set.member lt!2577173 lt!2577186)))

(declare-fun lt!2577185 () Unit!163618)

(assert (=> b!7237920 (= lt!2577185 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577174 () Unit!163618)

(assert (=> b!7237920 (= lt!2577174 (lemmaConcatPreservesForall!1345 (exprs!7976 lt!2577188) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577181 () Unit!163618)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!1 (Context!14952 Context!14952 Context!14952 C!37346) Unit!163618)

(assert (=> b!7237920 (= lt!2577181 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!1 ct1!232 ct2!328 lt!2577188 (h!76541 s1!1971)))))

(declare-fun tail!14183 (List!70217) List!70217)

(assert (=> b!7237920 (= (tail!14183 (++!16373 s1!1971 s2!1849)) lt!2577165)))

(declare-fun lt!2577179 () Unit!163618)

(assert (=> b!7237920 (= lt!2577179 e!4339327)))

(declare-fun c!1343616 () Bool)

(declare-fun nullable!7849 (Regex!18536) Bool)

(assert (=> b!7237920 (= c!1343616 (nullable!7849 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun lambda!440897 () Int)

(declare-fun flatMap!2740 ((Set Context!14952) Int) (Set Context!14952))

(assert (=> b!7237920 (= (flatMap!2740 lt!2577166 lambda!440897) (derivationStepZipperUp!2410 lt!2577191 (h!76541 s1!1971)))))

(declare-fun lt!2577178 () Unit!163618)

(declare-fun lemmaFlatMapOnSingletonSet!2167 ((Set Context!14952) Context!14952 Int) Unit!163618)

(assert (=> b!7237920 (= lt!2577178 (lemmaFlatMapOnSingletonSet!2167 lt!2577166 lt!2577191 lambda!440897))))

(declare-fun lt!2577187 () Unit!163618)

(assert (=> b!7237920 (= lt!2577187 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(declare-fun lt!2577193 () (Set Context!14952))

(assert (=> b!7237920 (= (flatMap!2740 lt!2577193 lambda!440897) (derivationStepZipperUp!2410 ct1!232 (h!76541 s1!1971)))))

(declare-fun lt!2577192 () Unit!163618)

(assert (=> b!7237920 (= lt!2577192 (lemmaFlatMapOnSingletonSet!2167 lt!2577193 ct1!232 lambda!440897))))

(assert (=> b!7237920 (= lt!2577160 (derivationStepZipperDown!2580 (h!76540 (exprs!7976 ct1!232)) lt!2577180 (h!76541 s1!1971)))))

(assert (=> b!7237920 (= lt!2577180 (Context!14953 (tail!14182 lt!2577189)))))

(declare-fun res!2936336 () Bool)

(assert (=> start!702900 (=> (not res!2936336) (not e!4339329))))

(assert (=> start!702900 (= res!2936336 (matchZipper!3446 lt!2577193 s1!1971))))

(assert (=> start!702900 (= lt!2577193 (set.insert ct1!232 (as set.empty (Set Context!14952))))))

(assert (=> start!702900 e!4339329))

(declare-fun inv!89351 (Context!14952) Bool)

(assert (=> start!702900 (and (inv!89351 ct1!232) e!4339324)))

(assert (=> start!702900 e!4339320))

(declare-fun e!4339325 () Bool)

(assert (=> start!702900 e!4339325))

(assert (=> start!702900 (and (inv!89351 ct2!328) e!4339328)))

(declare-fun b!7237921 () Bool)

(declare-fun e!4339319 () Bool)

(assert (=> b!7237921 (= e!4339322 e!4339319)))

(declare-fun res!2936337 () Bool)

(assert (=> b!7237921 (=> (not res!2936337) (not e!4339319))))

(assert (=> b!7237921 (= res!2936337 (matchZipper!3446 lt!2577163 (t!384268 s1!1971)))))

(declare-fun derivationStepZipper!3328 ((Set Context!14952) C!37346) (Set Context!14952))

(assert (=> b!7237921 (= lt!2577163 (derivationStepZipper!3328 lt!2577193 (h!76541 s1!1971)))))

(declare-fun b!7237922 () Bool)

(declare-fun tp!2034850 () Bool)

(assert (=> b!7237922 (= e!4339325 (and tp_is_empty!46537 tp!2034850))))

(assert (=> b!7237923 (= e!4339319 (not e!4339326))))

(declare-fun res!2936333 () Bool)

(assert (=> b!7237923 (=> res!2936333 e!4339326)))

(declare-fun exists!4215 ((Set Context!14952) Int) Bool)

(assert (=> b!7237923 (= res!2936333 (not (exists!4215 lt!2577163 lambda!440896)))))

(declare-datatypes ((List!70218 0))(
  ( (Nil!70094) (Cons!70094 (h!76542 Context!14952) (t!384269 List!70218)) )
))
(declare-fun lt!2577168 () List!70218)

(declare-fun exists!4216 (List!70218 Int) Bool)

(assert (=> b!7237923 (exists!4216 lt!2577168 lambda!440896)))

(declare-fun lt!2577170 () Unit!163618)

(declare-fun lemmaZipperMatchesExistsMatchingContext!679 (List!70218 List!70217) Unit!163618)

(assert (=> b!7237923 (= lt!2577170 (lemmaZipperMatchesExistsMatchingContext!679 lt!2577168 (t!384268 s1!1971)))))

(declare-fun toList!11393 ((Set Context!14952)) List!70218)

(assert (=> b!7237923 (= lt!2577168 (toList!11393 lt!2577163))))

(assert (= (and start!702900 res!2936336) b!7237914))

(assert (= (and b!7237914 res!2936335) b!7237911))

(assert (= (and b!7237911 res!2936330) b!7237921))

(assert (= (and b!7237921 res!2936337) b!7237923))

(assert (= (and b!7237923 (not res!2936333)) b!7237919))

(assert (= (and b!7237919 (not res!2936331)) b!7237913))

(assert (= (and b!7237913 (not res!2936338)) b!7237920))

(assert (= (and b!7237920 c!1343616) b!7237910))

(assert (= (and b!7237920 (not c!1343616)) b!7237909))

(assert (= (and b!7237910 (not res!2936334)) b!7237916))

(assert (= (and b!7237910 (not res!2936332)) b!7237915))

(assert (= start!702900 b!7237917))

(assert (= (and start!702900 (is-Cons!70093 s1!1971)) b!7237912))

(assert (= (and start!702900 (is-Cons!70093 s2!1849)) b!7237922))

(assert (= start!702900 b!7237918))

(declare-fun m!7909748 () Bool)

(assert (=> b!7237913 m!7909748))

(declare-fun m!7909750 () Bool)

(assert (=> b!7237913 m!7909750))

(assert (=> b!7237913 m!7909748))

(declare-fun m!7909752 () Bool)

(assert (=> b!7237913 m!7909752))

(declare-fun m!7909754 () Bool)

(assert (=> b!7237913 m!7909754))

(declare-fun m!7909756 () Bool)

(assert (=> b!7237913 m!7909756))

(declare-fun m!7909758 () Bool)

(assert (=> b!7237921 m!7909758))

(declare-fun m!7909760 () Bool)

(assert (=> b!7237921 m!7909760))

(declare-fun m!7909762 () Bool)

(assert (=> b!7237920 m!7909762))

(declare-fun m!7909764 () Bool)

(assert (=> b!7237920 m!7909764))

(assert (=> b!7237920 m!7909748))

(declare-fun m!7909766 () Bool)

(assert (=> b!7237920 m!7909766))

(declare-fun m!7909768 () Bool)

(assert (=> b!7237920 m!7909768))

(declare-fun m!7909770 () Bool)

(assert (=> b!7237920 m!7909770))

(declare-fun m!7909772 () Bool)

(assert (=> b!7237920 m!7909772))

(declare-fun m!7909774 () Bool)

(assert (=> b!7237920 m!7909774))

(declare-fun m!7909776 () Bool)

(assert (=> b!7237920 m!7909776))

(declare-fun m!7909778 () Bool)

(assert (=> b!7237920 m!7909778))

(declare-fun m!7909780 () Bool)

(assert (=> b!7237920 m!7909780))

(assert (=> b!7237920 m!7909748))

(assert (=> b!7237920 m!7909768))

(declare-fun m!7909782 () Bool)

(assert (=> b!7237920 m!7909782))

(declare-fun m!7909784 () Bool)

(assert (=> b!7237920 m!7909784))

(declare-fun m!7909786 () Bool)

(assert (=> b!7237920 m!7909786))

(assert (=> b!7237920 m!7909750))

(declare-fun m!7909788 () Bool)

(assert (=> b!7237920 m!7909788))

(declare-fun m!7909790 () Bool)

(assert (=> b!7237914 m!7909790))

(assert (=> b!7237914 m!7909790))

(declare-fun m!7909792 () Bool)

(assert (=> b!7237914 m!7909792))

(declare-fun m!7909794 () Bool)

(assert (=> b!7237910 m!7909794))

(assert (=> b!7237910 m!7909748))

(declare-fun m!7909796 () Bool)

(assert (=> b!7237910 m!7909796))

(declare-fun m!7909798 () Bool)

(assert (=> b!7237910 m!7909798))

(declare-fun m!7909800 () Bool)

(assert (=> b!7237910 m!7909800))

(declare-fun m!7909802 () Bool)

(assert (=> b!7237910 m!7909802))

(declare-fun m!7909804 () Bool)

(assert (=> b!7237910 m!7909804))

(assert (=> b!7237910 m!7909748))

(declare-fun m!7909806 () Bool)

(assert (=> b!7237910 m!7909806))

(declare-fun m!7909808 () Bool)

(assert (=> b!7237910 m!7909808))

(assert (=> b!7237919 m!7909772))

(declare-fun m!7909810 () Bool)

(assert (=> b!7237919 m!7909810))

(declare-fun m!7909812 () Bool)

(assert (=> b!7237919 m!7909812))

(declare-fun m!7909814 () Bool)

(assert (=> b!7237919 m!7909814))

(declare-fun m!7909816 () Bool)

(assert (=> b!7237919 m!7909816))

(declare-fun m!7909818 () Bool)

(assert (=> b!7237919 m!7909818))

(assert (=> b!7237919 m!7909766))

(declare-fun m!7909820 () Bool)

(assert (=> b!7237919 m!7909820))

(declare-fun m!7909822 () Bool)

(assert (=> b!7237919 m!7909822))

(assert (=> b!7237919 m!7909772))

(assert (=> b!7237919 m!7909814))

(declare-fun m!7909824 () Bool)

(assert (=> b!7237923 m!7909824))

(declare-fun m!7909826 () Bool)

(assert (=> b!7237923 m!7909826))

(declare-fun m!7909828 () Bool)

(assert (=> b!7237923 m!7909828))

(declare-fun m!7909830 () Bool)

(assert (=> b!7237923 m!7909830))

(declare-fun m!7909832 () Bool)

(assert (=> b!7237911 m!7909832))

(declare-fun m!7909834 () Bool)

(assert (=> b!7237911 m!7909834))

(assert (=> b!7237911 m!7909748))

(declare-fun m!7909836 () Bool)

(assert (=> b!7237916 m!7909836))

(declare-fun m!7909838 () Bool)

(assert (=> b!7237915 m!7909838))

(declare-fun m!7909840 () Bool)

(assert (=> start!702900 m!7909840))

(declare-fun m!7909842 () Bool)

(assert (=> start!702900 m!7909842))

(declare-fun m!7909844 () Bool)

(assert (=> start!702900 m!7909844))

(declare-fun m!7909846 () Bool)

(assert (=> start!702900 m!7909846))

(push 1)

(assert tp_is_empty!46537)

(assert (not b!7237916))

(assert (not b!7237922))

(assert (not b!7237912))

(assert (not b!7237917))

(assert (not b!7237919))

(assert (not b!7237921))

(assert (not b!7237915))

(assert (not b!7237910))

(assert (not b!7237923))

(assert (not b!7237918))

(assert (not b!7237914))

(assert (not b!7237913))

(assert (not start!702900))

(assert (not b!7237911))

(assert (not b!7237920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2248363 () Bool)

(declare-fun c!1343634 () Bool)

(declare-fun isEmpty!40396 (List!70217) Bool)

(assert (=> d!2248363 (= c!1343634 (isEmpty!40396 (t!384268 s1!1971)))))

(declare-fun e!4339371 () Bool)

(assert (=> d!2248363 (= (matchZipper!3446 lt!2577161 (t!384268 s1!1971)) e!4339371)))

(declare-fun b!7237981 () Bool)

(declare-fun nullableZipper!2837 ((Set Context!14952)) Bool)

(assert (=> b!7237981 (= e!4339371 (nullableZipper!2837 lt!2577161))))

(declare-fun b!7237982 () Bool)

(declare-fun head!14826 (List!70217) C!37346)

(assert (=> b!7237982 (= e!4339371 (matchZipper!3446 (derivationStepZipper!3328 lt!2577161 (head!14826 (t!384268 s1!1971))) (tail!14183 (t!384268 s1!1971))))))

(assert (= (and d!2248363 c!1343634) b!7237981))

(assert (= (and d!2248363 (not c!1343634)) b!7237982))

(declare-fun m!7909948 () Bool)

(assert (=> d!2248363 m!7909948))

(declare-fun m!7909950 () Bool)

(assert (=> b!7237981 m!7909950))

(declare-fun m!7909952 () Bool)

(assert (=> b!7237982 m!7909952))

(assert (=> b!7237982 m!7909952))

(declare-fun m!7909954 () Bool)

(assert (=> b!7237982 m!7909954))

(declare-fun m!7909956 () Bool)

(assert (=> b!7237982 m!7909956))

(assert (=> b!7237982 m!7909954))

(assert (=> b!7237982 m!7909956))

(declare-fun m!7909958 () Bool)

(assert (=> b!7237982 m!7909958))

(assert (=> b!7237916 d!2248363))

(declare-fun d!2248365 () Bool)

(declare-fun c!1343635 () Bool)

(assert (=> d!2248365 (= c!1343635 (isEmpty!40396 s1!1971))))

(declare-fun e!4339372 () Bool)

(assert (=> d!2248365 (= (matchZipper!3446 lt!2577193 s1!1971) e!4339372)))

(declare-fun b!7237983 () Bool)

(assert (=> b!7237983 (= e!4339372 (nullableZipper!2837 lt!2577193))))

(declare-fun b!7237984 () Bool)

(assert (=> b!7237984 (= e!4339372 (matchZipper!3446 (derivationStepZipper!3328 lt!2577193 (head!14826 s1!1971)) (tail!14183 s1!1971)))))

(assert (= (and d!2248365 c!1343635) b!7237983))

(assert (= (and d!2248365 (not c!1343635)) b!7237984))

(declare-fun m!7909960 () Bool)

(assert (=> d!2248365 m!7909960))

(declare-fun m!7909962 () Bool)

(assert (=> b!7237983 m!7909962))

(declare-fun m!7909964 () Bool)

(assert (=> b!7237984 m!7909964))

(assert (=> b!7237984 m!7909964))

(declare-fun m!7909966 () Bool)

(assert (=> b!7237984 m!7909966))

(declare-fun m!7909968 () Bool)

(assert (=> b!7237984 m!7909968))

(assert (=> b!7237984 m!7909966))

(assert (=> b!7237984 m!7909968))

(declare-fun m!7909970 () Bool)

(assert (=> b!7237984 m!7909970))

(assert (=> start!702900 d!2248365))

(declare-fun bs!1903636 () Bool)

(declare-fun d!2248367 () Bool)

(assert (= bs!1903636 (and d!2248367 b!7237911)))

(declare-fun lambda!440935 () Int)

(assert (=> bs!1903636 (= lambda!440935 lambda!440895)))

(assert (=> d!2248367 (= (inv!89351 ct1!232) (forall!17372 (exprs!7976 ct1!232) lambda!440935))))

(declare-fun bs!1903637 () Bool)

(assert (= bs!1903637 d!2248367))

(declare-fun m!7909972 () Bool)

(assert (=> bs!1903637 m!7909972))

(assert (=> start!702900 d!2248367))

(declare-fun bs!1903638 () Bool)

(declare-fun d!2248369 () Bool)

(assert (= bs!1903638 (and d!2248369 b!7237911)))

(declare-fun lambda!440936 () Int)

(assert (=> bs!1903638 (= lambda!440936 lambda!440895)))

(declare-fun bs!1903639 () Bool)

(assert (= bs!1903639 (and d!2248369 d!2248367)))

(assert (=> bs!1903639 (= lambda!440936 lambda!440935)))

(assert (=> d!2248369 (= (inv!89351 ct2!328) (forall!17372 (exprs!7976 ct2!328) lambda!440936))))

(declare-fun bs!1903640 () Bool)

(assert (= bs!1903640 d!2248369))

(declare-fun m!7909974 () Bool)

(assert (=> bs!1903640 m!7909974))

(assert (=> start!702900 d!2248369))

(declare-fun d!2248371 () Bool)

(declare-fun c!1343636 () Bool)

(assert (=> d!2248371 (= c!1343636 (isEmpty!40396 lt!2577165))))

(declare-fun e!4339373 () Bool)

(assert (=> d!2248371 (= (matchZipper!3446 lt!2577164 lt!2577165) e!4339373)))

(declare-fun b!7237985 () Bool)

(assert (=> b!7237985 (= e!4339373 (nullableZipper!2837 lt!2577164))))

(declare-fun b!7237986 () Bool)

(assert (=> b!7237986 (= e!4339373 (matchZipper!3446 (derivationStepZipper!3328 lt!2577164 (head!14826 lt!2577165)) (tail!14183 lt!2577165)))))

(assert (= (and d!2248371 c!1343636) b!7237985))

(assert (= (and d!2248371 (not c!1343636)) b!7237986))

(declare-fun m!7909976 () Bool)

(assert (=> d!2248371 m!7909976))

(declare-fun m!7909978 () Bool)

(assert (=> b!7237985 m!7909978))

(declare-fun m!7909980 () Bool)

(assert (=> b!7237986 m!7909980))

(assert (=> b!7237986 m!7909980))

(declare-fun m!7909982 () Bool)

(assert (=> b!7237986 m!7909982))

(declare-fun m!7909984 () Bool)

(assert (=> b!7237986 m!7909984))

(assert (=> b!7237986 m!7909982))

(assert (=> b!7237986 m!7909984))

(declare-fun m!7909986 () Bool)

(assert (=> b!7237986 m!7909986))

(assert (=> b!7237915 d!2248371))

(declare-fun d!2248373 () Bool)

(declare-fun c!1343637 () Bool)

(assert (=> d!2248373 (= c!1343637 (isEmpty!40396 s2!1849))))

(declare-fun e!4339374 () Bool)

(assert (=> d!2248373 (= (matchZipper!3446 (set.insert ct2!328 (as set.empty (Set Context!14952))) s2!1849) e!4339374)))

(declare-fun b!7237987 () Bool)

(assert (=> b!7237987 (= e!4339374 (nullableZipper!2837 (set.insert ct2!328 (as set.empty (Set Context!14952)))))))

(declare-fun b!7237988 () Bool)

(assert (=> b!7237988 (= e!4339374 (matchZipper!3446 (derivationStepZipper!3328 (set.insert ct2!328 (as set.empty (Set Context!14952))) (head!14826 s2!1849)) (tail!14183 s2!1849)))))

(assert (= (and d!2248373 c!1343637) b!7237987))

(assert (= (and d!2248373 (not c!1343637)) b!7237988))

(declare-fun m!7909988 () Bool)

(assert (=> d!2248373 m!7909988))

(assert (=> b!7237987 m!7909790))

(declare-fun m!7909990 () Bool)

(assert (=> b!7237987 m!7909990))

(declare-fun m!7909992 () Bool)

(assert (=> b!7237988 m!7909992))

(assert (=> b!7237988 m!7909790))

(assert (=> b!7237988 m!7909992))

(declare-fun m!7909994 () Bool)

(assert (=> b!7237988 m!7909994))

(declare-fun m!7909996 () Bool)

(assert (=> b!7237988 m!7909996))

(assert (=> b!7237988 m!7909994))

(assert (=> b!7237988 m!7909996))

(declare-fun m!7909998 () Bool)

(assert (=> b!7237988 m!7909998))

(assert (=> b!7237914 d!2248373))

(declare-fun d!2248375 () Bool)

(assert (=> d!2248375 (= (tail!14182 (exprs!7976 ct1!232)) (t!384267 (exprs!7976 ct1!232)))))

(assert (=> b!7237913 d!2248375))

(declare-fun call!659069 () List!70216)

(declare-fun c!1343648 () Bool)

(declare-fun bm!659059 () Bool)

(declare-fun c!1343651 () Bool)

(declare-fun c!1343649 () Bool)

(declare-fun call!659068 () (Set Context!14952))

(assert (=> bm!659059 (= call!659068 (derivationStepZipperDown!2580 (ite c!1343649 (regTwo!37585 (h!76540 (exprs!7976 ct1!232))) (ite c!1343651 (regTwo!37584 (h!76540 (exprs!7976 ct1!232))) (ite c!1343648 (regOne!37584 (h!76540 (exprs!7976 ct1!232))) (reg!18865 (h!76540 (exprs!7976 ct1!232)))))) (ite (or c!1343649 c!1343651) lt!2577183 (Context!14953 call!659069)) (h!76541 s1!1971)))))

(declare-fun b!7238011 () Bool)

(declare-fun e!4339389 () Bool)

(assert (=> b!7238011 (= c!1343651 e!4339389)))

(declare-fun res!2936368 () Bool)

(assert (=> b!7238011 (=> (not res!2936368) (not e!4339389))))

(assert (=> b!7238011 (= res!2936368 (is-Concat!27381 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun e!4339391 () (Set Context!14952))

(declare-fun e!4339390 () (Set Context!14952))

(assert (=> b!7238011 (= e!4339391 e!4339390)))

(declare-fun d!2248377 () Bool)

(declare-fun c!1343650 () Bool)

(assert (=> d!2248377 (= c!1343650 (and (is-ElementMatch!18536 (h!76540 (exprs!7976 ct1!232))) (= (c!1343617 (h!76540 (exprs!7976 ct1!232))) (h!76541 s1!1971))))))

(declare-fun e!4339392 () (Set Context!14952))

(assert (=> d!2248377 (= (derivationStepZipperDown!2580 (h!76540 (exprs!7976 ct1!232)) lt!2577183 (h!76541 s1!1971)) e!4339392)))

(declare-fun b!7238012 () Bool)

(declare-fun e!4339388 () (Set Context!14952))

(declare-fun call!659065 () (Set Context!14952))

(assert (=> b!7238012 (= e!4339388 call!659065)))

(declare-fun b!7238013 () Bool)

(assert (=> b!7238013 (= e!4339388 (as set.empty (Set Context!14952)))))

(declare-fun b!7238014 () Bool)

(declare-fun c!1343652 () Bool)

(assert (=> b!7238014 (= c!1343652 (is-Star!18536 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun e!4339387 () (Set Context!14952))

(assert (=> b!7238014 (= e!4339387 e!4339388)))

(declare-fun b!7238015 () Bool)

(assert (=> b!7238015 (= e!4339390 e!4339387)))

(assert (=> b!7238015 (= c!1343648 (is-Concat!27381 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun bm!659060 () Bool)

(declare-fun call!659067 () (Set Context!14952))

(assert (=> bm!659060 (= call!659065 call!659067)))

(declare-fun b!7238016 () Bool)

(assert (=> b!7238016 (= e!4339392 e!4339391)))

(assert (=> b!7238016 (= c!1343649 (is-Union!18536 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun b!7238017 () Bool)

(declare-fun call!659066 () (Set Context!14952))

(assert (=> b!7238017 (= e!4339391 (set.union call!659066 call!659068))))

(declare-fun bm!659061 () Bool)

(declare-fun call!659064 () List!70216)

(assert (=> bm!659061 (= call!659066 (derivationStepZipperDown!2580 (ite c!1343649 (regOne!37585 (h!76540 (exprs!7976 ct1!232))) (regOne!37584 (h!76540 (exprs!7976 ct1!232)))) (ite c!1343649 lt!2577183 (Context!14953 call!659064)) (h!76541 s1!1971)))))

(declare-fun b!7238018 () Bool)

(assert (=> b!7238018 (= e!4339389 (nullable!7849 (regOne!37584 (h!76540 (exprs!7976 ct1!232)))))))

(declare-fun bm!659062 () Bool)

(assert (=> bm!659062 (= call!659067 call!659068)))

(declare-fun bm!659063 () Bool)

(declare-fun $colon$colon!2884 (List!70216 Regex!18536) List!70216)

(assert (=> bm!659063 (= call!659064 ($colon$colon!2884 (exprs!7976 lt!2577183) (ite (or c!1343651 c!1343648) (regTwo!37584 (h!76540 (exprs!7976 ct1!232))) (h!76540 (exprs!7976 ct1!232)))))))

(declare-fun b!7238019 () Bool)

(assert (=> b!7238019 (= e!4339390 (set.union call!659066 call!659067))))

(declare-fun b!7238020 () Bool)

(assert (=> b!7238020 (= e!4339387 call!659065)))

(declare-fun bm!659064 () Bool)

(assert (=> bm!659064 (= call!659069 call!659064)))

(declare-fun b!7238021 () Bool)

(assert (=> b!7238021 (= e!4339392 (set.insert lt!2577183 (as set.empty (Set Context!14952))))))

(assert (= (and d!2248377 c!1343650) b!7238021))

(assert (= (and d!2248377 (not c!1343650)) b!7238016))

(assert (= (and b!7238016 c!1343649) b!7238017))

(assert (= (and b!7238016 (not c!1343649)) b!7238011))

(assert (= (and b!7238011 res!2936368) b!7238018))

(assert (= (and b!7238011 c!1343651) b!7238019))

(assert (= (and b!7238011 (not c!1343651)) b!7238015))

(assert (= (and b!7238015 c!1343648) b!7238020))

(assert (= (and b!7238015 (not c!1343648)) b!7238014))

(assert (= (and b!7238014 c!1343652) b!7238012))

(assert (= (and b!7238014 (not c!1343652)) b!7238013))

(assert (= (or b!7238020 b!7238012) bm!659064))

(assert (= (or b!7238020 b!7238012) bm!659060))

(assert (= (or b!7238019 bm!659064) bm!659063))

(assert (= (or b!7238019 bm!659060) bm!659062))

(assert (= (or b!7238017 bm!659062) bm!659059))

(assert (= (or b!7238017 b!7238019) bm!659061))

(declare-fun m!7910000 () Bool)

(assert (=> bm!659061 m!7910000))

(declare-fun m!7910002 () Bool)

(assert (=> bm!659063 m!7910002))

(declare-fun m!7910004 () Bool)

(assert (=> b!7238018 m!7910004))

(declare-fun m!7910006 () Bool)

(assert (=> b!7238021 m!7910006))

(declare-fun m!7910008 () Bool)

(assert (=> bm!659059 m!7910008))

(assert (=> b!7237913 d!2248377))

(declare-fun d!2248379 () Bool)

(assert (=> d!2248379 (forall!17372 (++!16372 (exprs!7976 ct1!232) (exprs!7976 ct2!328)) lambda!440895)))

(declare-fun lt!2577302 () Unit!163618)

(declare-fun choose!55689 (List!70216 List!70216 Int) Unit!163618)

(assert (=> d!2248379 (= lt!2577302 (choose!55689 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895))))

(assert (=> d!2248379 (forall!17372 (exprs!7976 ct1!232) lambda!440895)))

(assert (=> d!2248379 (= (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440895) lt!2577302)))

(declare-fun bs!1903641 () Bool)

(assert (= bs!1903641 d!2248379))

(assert (=> bs!1903641 m!7909834))

(assert (=> bs!1903641 m!7909834))

(declare-fun m!7910010 () Bool)

(assert (=> bs!1903641 m!7910010))

(declare-fun m!7910012 () Bool)

(assert (=> bs!1903641 m!7910012))

(declare-fun m!7910014 () Bool)

(assert (=> bs!1903641 m!7910014))

(assert (=> b!7237913 d!2248379))

(declare-fun d!2248381 () Bool)

(assert (=> d!2248381 (= (isEmpty!40394 lt!2577189) (is-Nil!70092 lt!2577189))))

(assert (=> b!7237913 d!2248381))

(declare-fun b!7238032 () Bool)

(declare-fun e!4339401 () (Set Context!14952))

(declare-fun call!659072 () (Set Context!14952))

(assert (=> b!7238032 (= e!4339401 call!659072)))

(declare-fun bm!659067 () Bool)

(assert (=> bm!659067 (= call!659072 (derivationStepZipperDown!2580 (h!76540 (exprs!7976 lt!2577191)) (Context!14953 (t!384267 (exprs!7976 lt!2577191))) (h!76541 s1!1971)))))

(declare-fun b!7238033 () Bool)

(declare-fun e!4339400 () (Set Context!14952))

(assert (=> b!7238033 (= e!4339400 e!4339401)))

(declare-fun c!1343657 () Bool)

(assert (=> b!7238033 (= c!1343657 (is-Cons!70092 (exprs!7976 lt!2577191)))))

(declare-fun b!7238034 () Bool)

(declare-fun e!4339399 () Bool)

(assert (=> b!7238034 (= e!4339399 (nullable!7849 (h!76540 (exprs!7976 lt!2577191))))))

(declare-fun d!2248383 () Bool)

(declare-fun c!1343658 () Bool)

(assert (=> d!2248383 (= c!1343658 e!4339399)))

(declare-fun res!2936371 () Bool)

(assert (=> d!2248383 (=> (not res!2936371) (not e!4339399))))

(assert (=> d!2248383 (= res!2936371 (is-Cons!70092 (exprs!7976 lt!2577191)))))

(assert (=> d!2248383 (= (derivationStepZipperUp!2410 lt!2577191 (h!76541 s1!1971)) e!4339400)))

(declare-fun b!7238035 () Bool)

(assert (=> b!7238035 (= e!4339401 (as set.empty (Set Context!14952)))))

(declare-fun b!7238036 () Bool)

(assert (=> b!7238036 (= e!4339400 (set.union call!659072 (derivationStepZipperUp!2410 (Context!14953 (t!384267 (exprs!7976 lt!2577191))) (h!76541 s1!1971))))))

(assert (= (and d!2248383 res!2936371) b!7238034))

(assert (= (and d!2248383 c!1343658) b!7238036))

(assert (= (and d!2248383 (not c!1343658)) b!7238033))

(assert (= (and b!7238033 c!1343657) b!7238032))

(assert (= (and b!7238033 (not c!1343657)) b!7238035))

(assert (= (or b!7238036 b!7238032) bm!659067))

(declare-fun m!7910016 () Bool)

(assert (=> bm!659067 m!7910016))

(declare-fun m!7910018 () Bool)

(assert (=> b!7238034 m!7910018))

(declare-fun m!7910020 () Bool)

(assert (=> b!7238036 m!7910020))

(assert (=> b!7237913 d!2248383))

(declare-fun d!2248385 () Bool)

(declare-fun lt!2577305 () Bool)

(assert (=> d!2248385 (= lt!2577305 (exists!4216 (toList!11393 lt!2577163) lambda!440896))))

(declare-fun choose!55690 ((Set Context!14952) Int) Bool)

(assert (=> d!2248385 (= lt!2577305 (choose!55690 lt!2577163 lambda!440896))))

(assert (=> d!2248385 (= (exists!4215 lt!2577163 lambda!440896) lt!2577305)))

(declare-fun bs!1903642 () Bool)

(assert (= bs!1903642 d!2248385))

(assert (=> bs!1903642 m!7909830))

(assert (=> bs!1903642 m!7909830))

(declare-fun m!7910022 () Bool)

(assert (=> bs!1903642 m!7910022))

(declare-fun m!7910024 () Bool)

(assert (=> bs!1903642 m!7910024))

(assert (=> b!7237923 d!2248385))

(declare-fun bs!1903643 () Bool)

(declare-fun d!2248387 () Bool)

(assert (= bs!1903643 (and d!2248387 b!7237923)))

(declare-fun lambda!440939 () Int)

(assert (=> bs!1903643 (not (= lambda!440939 lambda!440896))))

(assert (=> d!2248387 true))

(declare-fun order!28873 () Int)

(declare-fun dynLambda!28603 (Int Int) Int)

(assert (=> d!2248387 (< (dynLambda!28603 order!28873 lambda!440896) (dynLambda!28603 order!28873 lambda!440939))))

(declare-fun forall!17374 (List!70218 Int) Bool)

(assert (=> d!2248387 (= (exists!4216 lt!2577168 lambda!440896) (not (forall!17374 lt!2577168 lambda!440939)))))

(declare-fun bs!1903644 () Bool)

(assert (= bs!1903644 d!2248387))

(declare-fun m!7910026 () Bool)

(assert (=> bs!1903644 m!7910026))

(assert (=> b!7237923 d!2248387))

(declare-fun bs!1903645 () Bool)

(declare-fun d!2248389 () Bool)

(assert (= bs!1903645 (and d!2248389 b!7237923)))

(declare-fun lambda!440942 () Int)

(assert (=> bs!1903645 (= lambda!440942 lambda!440896)))

(declare-fun bs!1903646 () Bool)

(assert (= bs!1903646 (and d!2248389 d!2248387)))

(assert (=> bs!1903646 (not (= lambda!440942 lambda!440939))))

(assert (=> d!2248389 true))

(assert (=> d!2248389 (exists!4216 lt!2577168 lambda!440942)))

(declare-fun lt!2577308 () Unit!163618)

(declare-fun choose!55691 (List!70218 List!70217) Unit!163618)

(assert (=> d!2248389 (= lt!2577308 (choose!55691 lt!2577168 (t!384268 s1!1971)))))

(declare-fun content!14458 (List!70218) (Set Context!14952))

(assert (=> d!2248389 (matchZipper!3446 (content!14458 lt!2577168) (t!384268 s1!1971))))

(assert (=> d!2248389 (= (lemmaZipperMatchesExistsMatchingContext!679 lt!2577168 (t!384268 s1!1971)) lt!2577308)))

(declare-fun bs!1903647 () Bool)

(assert (= bs!1903647 d!2248389))

(declare-fun m!7910028 () Bool)

(assert (=> bs!1903647 m!7910028))

(declare-fun m!7910030 () Bool)

(assert (=> bs!1903647 m!7910030))

(declare-fun m!7910032 () Bool)

(assert (=> bs!1903647 m!7910032))

(assert (=> bs!1903647 m!7910032))

(declare-fun m!7910034 () Bool)

(assert (=> bs!1903647 m!7910034))

(assert (=> b!7237923 d!2248389))

(declare-fun d!2248391 () Bool)

(declare-fun e!4339404 () Bool)

(assert (=> d!2248391 e!4339404))

(declare-fun res!2936374 () Bool)

(assert (=> d!2248391 (=> (not res!2936374) (not e!4339404))))

(declare-fun lt!2577311 () List!70218)

(declare-fun noDuplicate!2946 (List!70218) Bool)

(assert (=> d!2248391 (= res!2936374 (noDuplicate!2946 lt!2577311))))

(declare-fun choose!55692 ((Set Context!14952)) List!70218)

(assert (=> d!2248391 (= lt!2577311 (choose!55692 lt!2577163))))

(assert (=> d!2248391 (= (toList!11393 lt!2577163) lt!2577311)))

(declare-fun b!7238041 () Bool)

(assert (=> b!7238041 (= e!4339404 (= (content!14458 lt!2577311) lt!2577163))))

(assert (= (and d!2248391 res!2936374) b!7238041))

(declare-fun m!7910036 () Bool)

(assert (=> d!2248391 m!7910036))

(declare-fun m!7910038 () Bool)

(assert (=> d!2248391 m!7910038))

(declare-fun m!7910040 () Bool)

(assert (=> b!7238041 m!7910040))

(assert (=> b!7237923 d!2248391))

(declare-fun b!7238050 () Bool)

(declare-fun e!4339410 () List!70216)

(assert (=> b!7238050 (= e!4339410 (exprs!7976 ct2!328))))

(declare-fun d!2248393 () Bool)

(declare-fun e!4339409 () Bool)

(assert (=> d!2248393 e!4339409))

(declare-fun res!2936379 () Bool)

(assert (=> d!2248393 (=> (not res!2936379) (not e!4339409))))

(declare-fun lt!2577314 () List!70216)

(declare-fun content!14459 (List!70216) (Set Regex!18536))

(assert (=> d!2248393 (= res!2936379 (= (content!14459 lt!2577314) (set.union (content!14459 (exprs!7976 ct1!232)) (content!14459 (exprs!7976 ct2!328)))))))

(assert (=> d!2248393 (= lt!2577314 e!4339410)))

(declare-fun c!1343663 () Bool)

(assert (=> d!2248393 (= c!1343663 (is-Nil!70092 (exprs!7976 ct1!232)))))

(assert (=> d!2248393 (= (++!16372 (exprs!7976 ct1!232) (exprs!7976 ct2!328)) lt!2577314)))

(declare-fun b!7238052 () Bool)

(declare-fun res!2936380 () Bool)

(assert (=> b!7238052 (=> (not res!2936380) (not e!4339409))))

(declare-fun size!41606 (List!70216) Int)

(assert (=> b!7238052 (= res!2936380 (= (size!41606 lt!2577314) (+ (size!41606 (exprs!7976 ct1!232)) (size!41606 (exprs!7976 ct2!328)))))))

(declare-fun b!7238053 () Bool)

(assert (=> b!7238053 (= e!4339409 (or (not (= (exprs!7976 ct2!328) Nil!70092)) (= lt!2577314 (exprs!7976 ct1!232))))))

(declare-fun b!7238051 () Bool)

(assert (=> b!7238051 (= e!4339410 (Cons!70092 (h!76540 (exprs!7976 ct1!232)) (++!16372 (t!384267 (exprs!7976 ct1!232)) (exprs!7976 ct2!328))))))

(assert (= (and d!2248393 c!1343663) b!7238050))

(assert (= (and d!2248393 (not c!1343663)) b!7238051))

(assert (= (and d!2248393 res!2936379) b!7238052))

(assert (= (and b!7238052 res!2936380) b!7238053))

(declare-fun m!7910042 () Bool)

(assert (=> d!2248393 m!7910042))

(declare-fun m!7910044 () Bool)

(assert (=> d!2248393 m!7910044))

(declare-fun m!7910046 () Bool)

(assert (=> d!2248393 m!7910046))

(declare-fun m!7910048 () Bool)

(assert (=> b!7238052 m!7910048))

(declare-fun m!7910050 () Bool)

(assert (=> b!7238052 m!7910050))

(declare-fun m!7910052 () Bool)

(assert (=> b!7238052 m!7910052))

(declare-fun m!7910054 () Bool)

(assert (=> b!7238051 m!7910054))

(assert (=> b!7237911 d!2248393))

(assert (=> b!7237911 d!2248379))

(declare-fun d!2248395 () Bool)

(declare-fun c!1343664 () Bool)

(assert (=> d!2248395 (= c!1343664 (isEmpty!40396 (t!384268 s1!1971)))))

(declare-fun e!4339411 () Bool)

(assert (=> d!2248395 (= (matchZipper!3446 lt!2577163 (t!384268 s1!1971)) e!4339411)))

(declare-fun b!7238054 () Bool)

(assert (=> b!7238054 (= e!4339411 (nullableZipper!2837 lt!2577163))))

(declare-fun b!7238055 () Bool)

(assert (=> b!7238055 (= e!4339411 (matchZipper!3446 (derivationStepZipper!3328 lt!2577163 (head!14826 (t!384268 s1!1971))) (tail!14183 (t!384268 s1!1971))))))

(assert (= (and d!2248395 c!1343664) b!7238054))

(assert (= (and d!2248395 (not c!1343664)) b!7238055))

(assert (=> d!2248395 m!7909948))

(declare-fun m!7910056 () Bool)

(assert (=> b!7238054 m!7910056))

(assert (=> b!7238055 m!7909952))

(assert (=> b!7238055 m!7909952))

(declare-fun m!7910058 () Bool)

(assert (=> b!7238055 m!7910058))

(assert (=> b!7238055 m!7909956))

(assert (=> b!7238055 m!7910058))

(assert (=> b!7238055 m!7909956))

(declare-fun m!7910060 () Bool)

(assert (=> b!7238055 m!7910060))

(assert (=> b!7237921 d!2248395))

(declare-fun bs!1903648 () Bool)

(declare-fun d!2248397 () Bool)

(assert (= bs!1903648 (and d!2248397 b!7237920)))

(declare-fun lambda!440945 () Int)

(assert (=> bs!1903648 (= lambda!440945 lambda!440897)))

(assert (=> d!2248397 true))

(assert (=> d!2248397 (= (derivationStepZipper!3328 lt!2577193 (h!76541 s1!1971)) (flatMap!2740 lt!2577193 lambda!440945))))

(declare-fun bs!1903649 () Bool)

(assert (= bs!1903649 d!2248397))

(declare-fun m!7910062 () Bool)

(assert (=> bs!1903649 m!7910062))

(assert (=> b!7237921 d!2248397))

(declare-fun e!4339414 () Bool)

(declare-fun d!2248399 () Bool)

(assert (=> d!2248399 (= (matchZipper!3446 (set.union lt!2577162 lt!2577161) (t!384268 s1!1971)) e!4339414)))

(declare-fun res!2936383 () Bool)

(assert (=> d!2248399 (=> res!2936383 e!4339414)))

(assert (=> d!2248399 (= res!2936383 (matchZipper!3446 lt!2577162 (t!384268 s1!1971)))))

(declare-fun lt!2577317 () Unit!163618)

(declare-fun choose!55693 ((Set Context!14952) (Set Context!14952) List!70217) Unit!163618)

(assert (=> d!2248399 (= lt!2577317 (choose!55693 lt!2577162 lt!2577161 (t!384268 s1!1971)))))

(assert (=> d!2248399 (= (lemmaZipperConcatMatchesSameAsBothZippers!1683 lt!2577162 lt!2577161 (t!384268 s1!1971)) lt!2577317)))

(declare-fun b!7238060 () Bool)

(assert (=> b!7238060 (= e!4339414 (matchZipper!3446 lt!2577161 (t!384268 s1!1971)))))

(assert (= (and d!2248399 (not res!2936383)) b!7238060))

(assert (=> d!2248399 m!7909800))

(assert (=> d!2248399 m!7909802))

(declare-fun m!7910064 () Bool)

(assert (=> d!2248399 m!7910064))

(assert (=> b!7238060 m!7909836))

(assert (=> b!7237910 d!2248399))

(declare-fun b!7238061 () Bool)

(declare-fun e!4339417 () (Set Context!14952))

(declare-fun call!659073 () (Set Context!14952))

(assert (=> b!7238061 (= e!4339417 call!659073)))

(declare-fun bm!659068 () Bool)

(assert (=> bm!659068 (= call!659073 (derivationStepZipperDown!2580 (h!76540 (exprs!7976 lt!2577180)) (Context!14953 (t!384267 (exprs!7976 lt!2577180))) (h!76541 s1!1971)))))

(declare-fun b!7238062 () Bool)

(declare-fun e!4339416 () (Set Context!14952))

(assert (=> b!7238062 (= e!4339416 e!4339417)))

(declare-fun c!1343667 () Bool)

(assert (=> b!7238062 (= c!1343667 (is-Cons!70092 (exprs!7976 lt!2577180)))))

(declare-fun b!7238063 () Bool)

(declare-fun e!4339415 () Bool)

(assert (=> b!7238063 (= e!4339415 (nullable!7849 (h!76540 (exprs!7976 lt!2577180))))))

(declare-fun d!2248401 () Bool)

(declare-fun c!1343668 () Bool)

(assert (=> d!2248401 (= c!1343668 e!4339415)))

(declare-fun res!2936384 () Bool)

(assert (=> d!2248401 (=> (not res!2936384) (not e!4339415))))

(assert (=> d!2248401 (= res!2936384 (is-Cons!70092 (exprs!7976 lt!2577180)))))

(assert (=> d!2248401 (= (derivationStepZipperUp!2410 lt!2577180 (h!76541 s1!1971)) e!4339416)))

(declare-fun b!7238064 () Bool)

(assert (=> b!7238064 (= e!4339417 (as set.empty (Set Context!14952)))))

(declare-fun b!7238065 () Bool)

(assert (=> b!7238065 (= e!4339416 (set.union call!659073 (derivationStepZipperUp!2410 (Context!14953 (t!384267 (exprs!7976 lt!2577180))) (h!76541 s1!1971))))))

(assert (= (and d!2248401 res!2936384) b!7238063))

(assert (= (and d!2248401 c!1343668) b!7238065))

(assert (= (and d!2248401 (not c!1343668)) b!7238062))

(assert (= (and b!7238062 c!1343667) b!7238061))

(assert (= (and b!7238062 (not c!1343667)) b!7238064))

(assert (= (or b!7238065 b!7238061) bm!659068))

(declare-fun m!7910066 () Bool)

(assert (=> bm!659068 m!7910066))

(declare-fun m!7910068 () Bool)

(assert (=> b!7238063 m!7910068))

(declare-fun m!7910070 () Bool)

(assert (=> b!7238065 m!7910070))

(assert (=> b!7237910 d!2248401))

(declare-fun b!7238066 () Bool)

(declare-fun e!4339420 () (Set Context!14952))

(declare-fun call!659074 () (Set Context!14952))

(assert (=> b!7238066 (= e!4339420 call!659074)))

(declare-fun bm!659069 () Bool)

(assert (=> bm!659069 (= call!659074 (derivationStepZipperDown!2580 (h!76540 (exprs!7976 lt!2577183)) (Context!14953 (t!384267 (exprs!7976 lt!2577183))) (h!76541 s1!1971)))))

(declare-fun b!7238067 () Bool)

(declare-fun e!4339419 () (Set Context!14952))

(assert (=> b!7238067 (= e!4339419 e!4339420)))

(declare-fun c!1343669 () Bool)

(assert (=> b!7238067 (= c!1343669 (is-Cons!70092 (exprs!7976 lt!2577183)))))

(declare-fun b!7238068 () Bool)

(declare-fun e!4339418 () Bool)

(assert (=> b!7238068 (= e!4339418 (nullable!7849 (h!76540 (exprs!7976 lt!2577183))))))

(declare-fun d!2248403 () Bool)

(declare-fun c!1343670 () Bool)

(assert (=> d!2248403 (= c!1343670 e!4339418)))

(declare-fun res!2936385 () Bool)

(assert (=> d!2248403 (=> (not res!2936385) (not e!4339418))))

(assert (=> d!2248403 (= res!2936385 (is-Cons!70092 (exprs!7976 lt!2577183)))))

(assert (=> d!2248403 (= (derivationStepZipperUp!2410 lt!2577183 (h!76541 s1!1971)) e!4339419)))

(declare-fun b!7238069 () Bool)

(assert (=> b!7238069 (= e!4339420 (as set.empty (Set Context!14952)))))

(declare-fun b!7238070 () Bool)

(assert (=> b!7238070 (= e!4339419 (set.union call!659074 (derivationStepZipperUp!2410 (Context!14953 (t!384267 (exprs!7976 lt!2577183))) (h!76541 s1!1971))))))

(assert (= (and d!2248403 res!2936385) b!7238068))

(assert (= (and d!2248403 c!1343670) b!7238070))

(assert (= (and d!2248403 (not c!1343670)) b!7238067))

(assert (= (and b!7238067 c!1343669) b!7238066))

(assert (= (and b!7238067 (not c!1343669)) b!7238069))

(assert (= (or b!7238070 b!7238066) bm!659069))

(declare-fun m!7910072 () Bool)

(assert (=> bm!659069 m!7910072))

(declare-fun m!7910074 () Bool)

(assert (=> b!7238068 m!7910074))

(declare-fun m!7910076 () Bool)

(assert (=> b!7238070 m!7910076))

(assert (=> b!7237910 d!2248403))

(declare-fun d!2248405 () Bool)

(declare-fun c!1343671 () Bool)

(assert (=> d!2248405 (= c!1343671 (isEmpty!40396 (t!384268 s1!1971)))))

(declare-fun e!4339421 () Bool)

(assert (=> d!2248405 (= (matchZipper!3446 (set.union lt!2577162 lt!2577161) (t!384268 s1!1971)) e!4339421)))

(declare-fun b!7238071 () Bool)

(assert (=> b!7238071 (= e!4339421 (nullableZipper!2837 (set.union lt!2577162 lt!2577161)))))

(declare-fun b!7238072 () Bool)

(assert (=> b!7238072 (= e!4339421 (matchZipper!3446 (derivationStepZipper!3328 (set.union lt!2577162 lt!2577161) (head!14826 (t!384268 s1!1971))) (tail!14183 (t!384268 s1!1971))))))

(assert (= (and d!2248405 c!1343671) b!7238071))

(assert (= (and d!2248405 (not c!1343671)) b!7238072))

(assert (=> d!2248405 m!7909948))

(declare-fun m!7910078 () Bool)

(assert (=> b!7238071 m!7910078))

(assert (=> b!7238072 m!7909952))

(assert (=> b!7238072 m!7909952))

(declare-fun m!7910080 () Bool)

(assert (=> b!7238072 m!7910080))

(assert (=> b!7238072 m!7909956))

(assert (=> b!7238072 m!7910080))

(assert (=> b!7238072 m!7909956))

(declare-fun m!7910082 () Bool)

(assert (=> b!7238072 m!7910082))

(assert (=> b!7237910 d!2248405))

(declare-fun d!2248407 () Bool)

(declare-fun e!4339422 () Bool)

(assert (=> d!2248407 (= (matchZipper!3446 (set.union lt!2577160 lt!2577164) lt!2577165) e!4339422)))

(declare-fun res!2936386 () Bool)

(assert (=> d!2248407 (=> res!2936386 e!4339422)))

(assert (=> d!2248407 (= res!2936386 (matchZipper!3446 lt!2577160 lt!2577165))))

(declare-fun lt!2577318 () Unit!163618)

(assert (=> d!2248407 (= lt!2577318 (choose!55693 lt!2577160 lt!2577164 lt!2577165))))

(assert (=> d!2248407 (= (lemmaZipperConcatMatchesSameAsBothZippers!1683 lt!2577160 lt!2577164 lt!2577165) lt!2577318)))

(declare-fun b!7238073 () Bool)

(assert (=> b!7238073 (= e!4339422 (matchZipper!3446 lt!2577164 lt!2577165))))

(assert (= (and d!2248407 (not res!2936386)) b!7238073))

(assert (=> d!2248407 m!7909808))

(assert (=> d!2248407 m!7909796))

(declare-fun m!7910084 () Bool)

(assert (=> d!2248407 m!7910084))

(assert (=> b!7238073 m!7909838))

(assert (=> b!7237910 d!2248407))

(declare-fun d!2248409 () Bool)

(declare-fun c!1343672 () Bool)

(assert (=> d!2248409 (= c!1343672 (isEmpty!40396 lt!2577165))))

(declare-fun e!4339423 () Bool)

(assert (=> d!2248409 (= (matchZipper!3446 (set.union lt!2577160 lt!2577164) lt!2577165) e!4339423)))

(declare-fun b!7238074 () Bool)

(assert (=> b!7238074 (= e!4339423 (nullableZipper!2837 (set.union lt!2577160 lt!2577164)))))

(declare-fun b!7238075 () Bool)

(assert (=> b!7238075 (= e!4339423 (matchZipper!3446 (derivationStepZipper!3328 (set.union lt!2577160 lt!2577164) (head!14826 lt!2577165)) (tail!14183 lt!2577165)))))

(assert (= (and d!2248409 c!1343672) b!7238074))

(assert (= (and d!2248409 (not c!1343672)) b!7238075))

(assert (=> d!2248409 m!7909976))

(declare-fun m!7910086 () Bool)

(assert (=> b!7238074 m!7910086))

(assert (=> b!7238075 m!7909980))

(assert (=> b!7238075 m!7909980))

(declare-fun m!7910088 () Bool)

(assert (=> b!7238075 m!7910088))

(assert (=> b!7238075 m!7909984))

(assert (=> b!7238075 m!7910088))

(assert (=> b!7238075 m!7909984))

(declare-fun m!7910090 () Bool)

(assert (=> b!7238075 m!7910090))

(assert (=> b!7237910 d!2248409))

(declare-fun d!2248411 () Bool)

(declare-fun c!1343673 () Bool)

(assert (=> d!2248411 (= c!1343673 (isEmpty!40396 lt!2577165))))

(declare-fun e!4339424 () Bool)

(assert (=> d!2248411 (= (matchZipper!3446 lt!2577160 lt!2577165) e!4339424)))

(declare-fun b!7238076 () Bool)

(assert (=> b!7238076 (= e!4339424 (nullableZipper!2837 lt!2577160))))

(declare-fun b!7238077 () Bool)

(assert (=> b!7238077 (= e!4339424 (matchZipper!3446 (derivationStepZipper!3328 lt!2577160 (head!14826 lt!2577165)) (tail!14183 lt!2577165)))))

(assert (= (and d!2248411 c!1343673) b!7238076))

(assert (= (and d!2248411 (not c!1343673)) b!7238077))

(assert (=> d!2248411 m!7909976))

(declare-fun m!7910092 () Bool)

(assert (=> b!7238076 m!7910092))

(assert (=> b!7238077 m!7909980))

(assert (=> b!7238077 m!7909980))

(declare-fun m!7910094 () Bool)

(assert (=> b!7238077 m!7910094))

(assert (=> b!7238077 m!7909984))

(assert (=> b!7238077 m!7910094))

(assert (=> b!7238077 m!7909984))

(declare-fun m!7910096 () Bool)

(assert (=> b!7238077 m!7910096))

(assert (=> b!7237910 d!2248411))

(assert (=> b!7237910 d!2248379))

(declare-fun d!2248413 () Bool)

(declare-fun c!1343674 () Bool)

(assert (=> d!2248413 (= c!1343674 (isEmpty!40396 (t!384268 s1!1971)))))

(declare-fun e!4339425 () Bool)

(assert (=> d!2248413 (= (matchZipper!3446 lt!2577162 (t!384268 s1!1971)) e!4339425)))

(declare-fun b!7238078 () Bool)

(assert (=> b!7238078 (= e!4339425 (nullableZipper!2837 lt!2577162))))

(declare-fun b!7238079 () Bool)

(assert (=> b!7238079 (= e!4339425 (matchZipper!3446 (derivationStepZipper!3328 lt!2577162 (head!14826 (t!384268 s1!1971))) (tail!14183 (t!384268 s1!1971))))))

(assert (= (and d!2248413 c!1343674) b!7238078))

(assert (= (and d!2248413 (not c!1343674)) b!7238079))

(assert (=> d!2248413 m!7909948))

(declare-fun m!7910098 () Bool)

(assert (=> b!7238078 m!7910098))

(assert (=> b!7238079 m!7909952))

(assert (=> b!7238079 m!7909952))

(declare-fun m!7910100 () Bool)

(assert (=> b!7238079 m!7910100))

(assert (=> b!7238079 m!7909956))

(assert (=> b!7238079 m!7910100))

(assert (=> b!7238079 m!7909956))

(declare-fun m!7910102 () Bool)

(assert (=> b!7238079 m!7910102))

(assert (=> b!7237910 d!2248413))

(declare-fun d!2248415 () Bool)

(declare-fun res!2936391 () Bool)

(declare-fun e!4339430 () Bool)

(assert (=> d!2248415 (=> res!2936391 e!4339430)))

(assert (=> d!2248415 (= res!2936391 (is-Nil!70092 (exprs!7976 lt!2577188)))))

(assert (=> d!2248415 (= (forall!17372 (exprs!7976 lt!2577188) lambda!440895) e!4339430)))

(declare-fun b!7238084 () Bool)

(declare-fun e!4339431 () Bool)

(assert (=> b!7238084 (= e!4339430 e!4339431)))

(declare-fun res!2936392 () Bool)

(assert (=> b!7238084 (=> (not res!2936392) (not e!4339431))))

(declare-fun dynLambda!28604 (Int Regex!18536) Bool)

(assert (=> b!7238084 (= res!2936392 (dynLambda!28604 lambda!440895 (h!76540 (exprs!7976 lt!2577188))))))

(declare-fun b!7238085 () Bool)

(assert (=> b!7238085 (= e!4339431 (forall!17372 (t!384267 (exprs!7976 lt!2577188)) lambda!440895))))

(assert (= (and d!2248415 (not res!2936391)) b!7238084))

(assert (= (and b!7238084 res!2936392) b!7238085))

(declare-fun b_lambda!277579 () Bool)

(assert (=> (not b_lambda!277579) (not b!7238084)))

(declare-fun m!7910104 () Bool)

(assert (=> b!7238084 m!7910104))

(declare-fun m!7910106 () Bool)

(assert (=> b!7238085 m!7910106))

(assert (=> b!7237920 d!2248415))

(declare-fun d!2248417 () Bool)

(declare-fun dynLambda!28605 (Int Context!14952) (Set Context!14952))

(assert (=> d!2248417 (= (flatMap!2740 lt!2577166 lambda!440897) (dynLambda!28605 lambda!440897 lt!2577191))))

(declare-fun lt!2577321 () Unit!163618)

(declare-fun choose!55694 ((Set Context!14952) Context!14952 Int) Unit!163618)

(assert (=> d!2248417 (= lt!2577321 (choose!55694 lt!2577166 lt!2577191 lambda!440897))))

(assert (=> d!2248417 (= lt!2577166 (set.insert lt!2577191 (as set.empty (Set Context!14952))))))

(assert (=> d!2248417 (= (lemmaFlatMapOnSingletonSet!2167 lt!2577166 lt!2577191 lambda!440897) lt!2577321)))

(declare-fun b_lambda!277581 () Bool)

(assert (=> (not b_lambda!277581) (not d!2248417)))

(declare-fun bs!1903650 () Bool)

(assert (= bs!1903650 d!2248417))

(assert (=> bs!1903650 m!7909786))

(declare-fun m!7910108 () Bool)

(assert (=> bs!1903650 m!7910108))

(declare-fun m!7910110 () Bool)

(assert (=> bs!1903650 m!7910110))

(assert (=> bs!1903650 m!7909832))

(assert (=> b!7237920 d!2248417))

(declare-fun d!2248419 () Bool)

(declare-fun nullableFct!3076 (Regex!18536) Bool)

(assert (=> d!2248419 (= (nullable!7849 (h!76540 (exprs!7976 ct1!232))) (nullableFct!3076 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun bs!1903651 () Bool)

(assert (= bs!1903651 d!2248419))

(declare-fun m!7910112 () Bool)

(assert (=> bs!1903651 m!7910112))

(assert (=> b!7237920 d!2248419))

(declare-fun b!7238096 () Bool)

(declare-fun res!2936397 () Bool)

(declare-fun e!4339437 () Bool)

(assert (=> b!7238096 (=> (not res!2936397) (not e!4339437))))

(declare-fun lt!2577324 () List!70217)

(declare-fun size!41607 (List!70217) Int)

(assert (=> b!7238096 (= res!2936397 (= (size!41607 lt!2577324) (+ (size!41607 s1!1971) (size!41607 s2!1849))))))

(declare-fun b!7238095 () Bool)

(declare-fun e!4339436 () List!70217)

(assert (=> b!7238095 (= e!4339436 (Cons!70093 (h!76541 s1!1971) (++!16373 (t!384268 s1!1971) s2!1849)))))

(declare-fun b!7238094 () Bool)

(assert (=> b!7238094 (= e!4339436 s2!1849)))

(declare-fun b!7238097 () Bool)

(assert (=> b!7238097 (= e!4339437 (or (not (= s2!1849 Nil!70093)) (= lt!2577324 s1!1971)))))

(declare-fun d!2248421 () Bool)

(assert (=> d!2248421 e!4339437))

(declare-fun res!2936398 () Bool)

(assert (=> d!2248421 (=> (not res!2936398) (not e!4339437))))

(declare-fun content!14460 (List!70217) (Set C!37346))

(assert (=> d!2248421 (= res!2936398 (= (content!14460 lt!2577324) (set.union (content!14460 s1!1971) (content!14460 s2!1849))))))

(assert (=> d!2248421 (= lt!2577324 e!4339436)))

(declare-fun c!1343677 () Bool)

(assert (=> d!2248421 (= c!1343677 (is-Nil!70093 s1!1971))))

(assert (=> d!2248421 (= (++!16373 s1!1971 s2!1849) lt!2577324)))

(assert (= (and d!2248421 c!1343677) b!7238094))

(assert (= (and d!2248421 (not c!1343677)) b!7238095))

(assert (= (and d!2248421 res!2936398) b!7238096))

(assert (= (and b!7238096 res!2936397) b!7238097))

(declare-fun m!7910114 () Bool)

(assert (=> b!7238096 m!7910114))

(declare-fun m!7910116 () Bool)

(assert (=> b!7238096 m!7910116))

(declare-fun m!7910118 () Bool)

(assert (=> b!7238096 m!7910118))

(assert (=> b!7238095 m!7909820))

(declare-fun m!7910120 () Bool)

(assert (=> d!2248421 m!7910120))

(declare-fun m!7910122 () Bool)

(assert (=> d!2248421 m!7910122))

(declare-fun m!7910124 () Bool)

(assert (=> d!2248421 m!7910124))

(assert (=> b!7237920 d!2248421))

(assert (=> b!7237920 d!2248379))

(declare-fun d!2248423 () Bool)

(assert (=> d!2248423 (= (tail!14183 (++!16373 s1!1971 s2!1849)) (t!384268 (++!16373 s1!1971 s2!1849)))))

(assert (=> b!7237920 d!2248423))

(declare-fun call!659079 () (Set Context!14952))

(declare-fun c!1343678 () Bool)

(declare-fun call!659080 () List!70216)

(declare-fun bm!659070 () Bool)

(declare-fun c!1343679 () Bool)

(declare-fun c!1343681 () Bool)

(assert (=> bm!659070 (= call!659079 (derivationStepZipperDown!2580 (ite c!1343679 (regTwo!37585 (h!76540 (exprs!7976 ct1!232))) (ite c!1343681 (regTwo!37584 (h!76540 (exprs!7976 ct1!232))) (ite c!1343678 (regOne!37584 (h!76540 (exprs!7976 ct1!232))) (reg!18865 (h!76540 (exprs!7976 ct1!232)))))) (ite (or c!1343679 c!1343681) lt!2577180 (Context!14953 call!659080)) (h!76541 s1!1971)))))

(declare-fun b!7238098 () Bool)

(declare-fun e!4339440 () Bool)

(assert (=> b!7238098 (= c!1343681 e!4339440)))

(declare-fun res!2936399 () Bool)

(assert (=> b!7238098 (=> (not res!2936399) (not e!4339440))))

(assert (=> b!7238098 (= res!2936399 (is-Concat!27381 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun e!4339442 () (Set Context!14952))

(declare-fun e!4339441 () (Set Context!14952))

(assert (=> b!7238098 (= e!4339442 e!4339441)))

(declare-fun d!2248425 () Bool)

(declare-fun c!1343680 () Bool)

(assert (=> d!2248425 (= c!1343680 (and (is-ElementMatch!18536 (h!76540 (exprs!7976 ct1!232))) (= (c!1343617 (h!76540 (exprs!7976 ct1!232))) (h!76541 s1!1971))))))

(declare-fun e!4339443 () (Set Context!14952))

(assert (=> d!2248425 (= (derivationStepZipperDown!2580 (h!76540 (exprs!7976 ct1!232)) lt!2577180 (h!76541 s1!1971)) e!4339443)))

(declare-fun b!7238099 () Bool)

(declare-fun e!4339439 () (Set Context!14952))

(declare-fun call!659076 () (Set Context!14952))

(assert (=> b!7238099 (= e!4339439 call!659076)))

(declare-fun b!7238100 () Bool)

(assert (=> b!7238100 (= e!4339439 (as set.empty (Set Context!14952)))))

(declare-fun b!7238101 () Bool)

(declare-fun c!1343682 () Bool)

(assert (=> b!7238101 (= c!1343682 (is-Star!18536 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun e!4339438 () (Set Context!14952))

(assert (=> b!7238101 (= e!4339438 e!4339439)))

(declare-fun b!7238102 () Bool)

(assert (=> b!7238102 (= e!4339441 e!4339438)))

(assert (=> b!7238102 (= c!1343678 (is-Concat!27381 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun bm!659071 () Bool)

(declare-fun call!659078 () (Set Context!14952))

(assert (=> bm!659071 (= call!659076 call!659078)))

(declare-fun b!7238103 () Bool)

(assert (=> b!7238103 (= e!4339443 e!4339442)))

(assert (=> b!7238103 (= c!1343679 (is-Union!18536 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun b!7238104 () Bool)

(declare-fun call!659077 () (Set Context!14952))

(assert (=> b!7238104 (= e!4339442 (set.union call!659077 call!659079))))

(declare-fun call!659075 () List!70216)

(declare-fun bm!659072 () Bool)

(assert (=> bm!659072 (= call!659077 (derivationStepZipperDown!2580 (ite c!1343679 (regOne!37585 (h!76540 (exprs!7976 ct1!232))) (regOne!37584 (h!76540 (exprs!7976 ct1!232)))) (ite c!1343679 lt!2577180 (Context!14953 call!659075)) (h!76541 s1!1971)))))

(declare-fun b!7238105 () Bool)

(assert (=> b!7238105 (= e!4339440 (nullable!7849 (regOne!37584 (h!76540 (exprs!7976 ct1!232)))))))

(declare-fun bm!659073 () Bool)

(assert (=> bm!659073 (= call!659078 call!659079)))

(declare-fun bm!659074 () Bool)

(assert (=> bm!659074 (= call!659075 ($colon$colon!2884 (exprs!7976 lt!2577180) (ite (or c!1343681 c!1343678) (regTwo!37584 (h!76540 (exprs!7976 ct1!232))) (h!76540 (exprs!7976 ct1!232)))))))

(declare-fun b!7238106 () Bool)

(assert (=> b!7238106 (= e!4339441 (set.union call!659077 call!659078))))

(declare-fun b!7238107 () Bool)

(assert (=> b!7238107 (= e!4339438 call!659076)))

(declare-fun bm!659075 () Bool)

(assert (=> bm!659075 (= call!659080 call!659075)))

(declare-fun b!7238108 () Bool)

(assert (=> b!7238108 (= e!4339443 (set.insert lt!2577180 (as set.empty (Set Context!14952))))))

(assert (= (and d!2248425 c!1343680) b!7238108))

(assert (= (and d!2248425 (not c!1343680)) b!7238103))

(assert (= (and b!7238103 c!1343679) b!7238104))

(assert (= (and b!7238103 (not c!1343679)) b!7238098))

(assert (= (and b!7238098 res!2936399) b!7238105))

(assert (= (and b!7238098 c!1343681) b!7238106))

(assert (= (and b!7238098 (not c!1343681)) b!7238102))

(assert (= (and b!7238102 c!1343678) b!7238107))

(assert (= (and b!7238102 (not c!1343678)) b!7238101))

(assert (= (and b!7238101 c!1343682) b!7238099))

(assert (= (and b!7238101 (not c!1343682)) b!7238100))

(assert (= (or b!7238107 b!7238099) bm!659075))

(assert (= (or b!7238107 b!7238099) bm!659071))

(assert (= (or b!7238106 bm!659075) bm!659074))

(assert (= (or b!7238106 bm!659071) bm!659073))

(assert (= (or b!7238104 bm!659073) bm!659070))

(assert (= (or b!7238104 b!7238106) bm!659072))

(declare-fun m!7910126 () Bool)

(assert (=> bm!659072 m!7910126))

(declare-fun m!7910128 () Bool)

(assert (=> bm!659074 m!7910128))

(assert (=> b!7238105 m!7910004))

(declare-fun m!7910130 () Bool)

(assert (=> b!7238108 m!7910130))

(declare-fun m!7910132 () Bool)

(assert (=> bm!659070 m!7910132))

(assert (=> b!7237920 d!2248425))

(assert (=> b!7237920 d!2248383))

(declare-fun d!2248427 () Bool)

(assert (=> d!2248427 (forall!17372 (++!16372 (exprs!7976 lt!2577188) (exprs!7976 ct2!328)) lambda!440895)))

(declare-fun lt!2577325 () Unit!163618)

(assert (=> d!2248427 (= lt!2577325 (choose!55689 (exprs!7976 lt!2577188) (exprs!7976 ct2!328) lambda!440895))))

(assert (=> d!2248427 (forall!17372 (exprs!7976 lt!2577188) lambda!440895)))

(assert (=> d!2248427 (= (lemmaConcatPreservesForall!1345 (exprs!7976 lt!2577188) (exprs!7976 ct2!328) lambda!440895) lt!2577325)))

(declare-fun bs!1903652 () Bool)

(assert (= bs!1903652 d!2248427))

(assert (=> bs!1903652 m!7909822))

(assert (=> bs!1903652 m!7909822))

(declare-fun m!7910134 () Bool)

(assert (=> bs!1903652 m!7910134))

(declare-fun m!7910136 () Bool)

(assert (=> bs!1903652 m!7910136))

(assert (=> bs!1903652 m!7909788))

(assert (=> b!7237920 d!2248427))

(declare-fun d!2248429 () Bool)

(declare-fun choose!55695 ((Set Context!14952) Int) (Set Context!14952))

(assert (=> d!2248429 (= (flatMap!2740 lt!2577193 lambda!440897) (choose!55695 lt!2577193 lambda!440897))))

(declare-fun bs!1903653 () Bool)

(assert (= bs!1903653 d!2248429))

(declare-fun m!7910138 () Bool)

(assert (=> bs!1903653 m!7910138))

(assert (=> b!7237920 d!2248429))

(declare-fun d!2248431 () Bool)

(assert (=> d!2248431 (= (flatMap!2740 lt!2577166 lambda!440897) (choose!55695 lt!2577166 lambda!440897))))

(declare-fun bs!1903654 () Bool)

(assert (= bs!1903654 d!2248431))

(declare-fun m!7910140 () Bool)

(assert (=> bs!1903654 m!7910140))

(assert (=> b!7237920 d!2248431))

(declare-fun d!2248433 () Bool)

(assert (=> d!2248433 (= (tail!14182 lt!2577189) (t!384267 lt!2577189))))

(assert (=> b!7237920 d!2248433))

(declare-fun b!7238109 () Bool)

(declare-fun e!4339446 () (Set Context!14952))

(declare-fun call!659081 () (Set Context!14952))

(assert (=> b!7238109 (= e!4339446 call!659081)))

(declare-fun bm!659076 () Bool)

(assert (=> bm!659076 (= call!659081 (derivationStepZipperDown!2580 (h!76540 (exprs!7976 ct1!232)) (Context!14953 (t!384267 (exprs!7976 ct1!232))) (h!76541 s1!1971)))))

(declare-fun b!7238110 () Bool)

(declare-fun e!4339445 () (Set Context!14952))

(assert (=> b!7238110 (= e!4339445 e!4339446)))

(declare-fun c!1343683 () Bool)

(assert (=> b!7238110 (= c!1343683 (is-Cons!70092 (exprs!7976 ct1!232)))))

(declare-fun b!7238111 () Bool)

(declare-fun e!4339444 () Bool)

(assert (=> b!7238111 (= e!4339444 (nullable!7849 (h!76540 (exprs!7976 ct1!232))))))

(declare-fun d!2248435 () Bool)

(declare-fun c!1343684 () Bool)

(assert (=> d!2248435 (= c!1343684 e!4339444)))

(declare-fun res!2936400 () Bool)

(assert (=> d!2248435 (=> (not res!2936400) (not e!4339444))))

(assert (=> d!2248435 (= res!2936400 (is-Cons!70092 (exprs!7976 ct1!232)))))

(assert (=> d!2248435 (= (derivationStepZipperUp!2410 ct1!232 (h!76541 s1!1971)) e!4339445)))

(declare-fun b!7238112 () Bool)

(assert (=> b!7238112 (= e!4339446 (as set.empty (Set Context!14952)))))

(declare-fun b!7238113 () Bool)

(assert (=> b!7238113 (= e!4339445 (set.union call!659081 (derivationStepZipperUp!2410 (Context!14953 (t!384267 (exprs!7976 ct1!232))) (h!76541 s1!1971))))))

(assert (= (and d!2248435 res!2936400) b!7238111))

(assert (= (and d!2248435 c!1343684) b!7238113))

(assert (= (and d!2248435 (not c!1343684)) b!7238110))

(assert (= (and b!7238110 c!1343683) b!7238109))

(assert (= (and b!7238110 (not c!1343683)) b!7238112))

(assert (= (or b!7238113 b!7238109) bm!659076))

(declare-fun m!7910142 () Bool)

(assert (=> bm!659076 m!7910142))

(assert (=> b!7238111 m!7909780))

(declare-fun m!7910144 () Bool)

(assert (=> b!7238113 m!7910144))

(assert (=> b!7237920 d!2248435))

(declare-fun d!2248437 () Bool)

(assert (=> d!2248437 (= (flatMap!2740 lt!2577193 lambda!440897) (dynLambda!28605 lambda!440897 ct1!232))))

(declare-fun lt!2577326 () Unit!163618)

(assert (=> d!2248437 (= lt!2577326 (choose!55694 lt!2577193 ct1!232 lambda!440897))))

(assert (=> d!2248437 (= lt!2577193 (set.insert ct1!232 (as set.empty (Set Context!14952))))))

(assert (=> d!2248437 (= (lemmaFlatMapOnSingletonSet!2167 lt!2577193 ct1!232 lambda!440897) lt!2577326)))

(declare-fun b_lambda!277583 () Bool)

(assert (=> (not b_lambda!277583) (not d!2248437)))

(declare-fun bs!1903655 () Bool)

(assert (= bs!1903655 d!2248437))

(assert (=> bs!1903655 m!7909784))

(declare-fun m!7910146 () Bool)

(assert (=> bs!1903655 m!7910146))

(declare-fun m!7910148 () Bool)

(assert (=> bs!1903655 m!7910148))

(assert (=> bs!1903655 m!7909842))

(assert (=> b!7237920 d!2248437))

(declare-fun bs!1903656 () Bool)

(declare-fun d!2248439 () Bool)

(assert (= bs!1903656 (and d!2248439 b!7237911)))

(declare-fun lambda!440950 () Int)

(assert (=> bs!1903656 (= lambda!440950 lambda!440895)))

(declare-fun bs!1903657 () Bool)

(assert (= bs!1903657 (and d!2248439 d!2248367)))

(assert (=> bs!1903657 (= lambda!440950 lambda!440935)))

(declare-fun bs!1903658 () Bool)

(assert (= bs!1903658 (and d!2248439 d!2248369)))

(assert (=> bs!1903658 (= lambda!440950 lambda!440936)))

(assert (=> d!2248439 (set.member (Context!14953 (++!16372 (exprs!7976 lt!2577188) (exprs!7976 ct2!328))) (derivationStepZipperUp!2410 (Context!14953 (++!16372 (exprs!7976 ct1!232) (exprs!7976 ct2!328))) (h!76541 s1!1971)))))

(declare-fun lt!2577335 () Unit!163618)

(assert (=> d!2248439 (= lt!2577335 (lemmaConcatPreservesForall!1345 (exprs!7976 ct1!232) (exprs!7976 ct2!328) lambda!440950))))

(declare-fun lt!2577334 () Unit!163618)

(assert (=> d!2248439 (= lt!2577334 (lemmaConcatPreservesForall!1345 (exprs!7976 lt!2577188) (exprs!7976 ct2!328) lambda!440950))))

(declare-fun lt!2577333 () Unit!163618)

(declare-fun choose!55696 (Context!14952 Context!14952 Context!14952 C!37346) Unit!163618)

(assert (=> d!2248439 (= lt!2577333 (choose!55696 ct1!232 ct2!328 lt!2577188 (h!76541 s1!1971)))))

(assert (=> d!2248439 (set.member lt!2577188 (derivationStepZipperUp!2410 ct1!232 (h!76541 s1!1971)))))

(assert (=> d!2248439 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!1 ct1!232 ct2!328 lt!2577188 (h!76541 s1!1971)) lt!2577333)))

(declare-fun bs!1903659 () Bool)

(assert (= bs!1903659 d!2248439))

(assert (=> bs!1903659 m!7909766))

(assert (=> bs!1903659 m!7909834))

(declare-fun m!7910150 () Bool)

(assert (=> bs!1903659 m!7910150))

(declare-fun m!7910152 () Bool)

(assert (=> bs!1903659 m!7910152))

(assert (=> bs!1903659 m!7909822))

(declare-fun m!7910154 () Bool)

(assert (=> bs!1903659 m!7910154))

(declare-fun m!7910156 () Bool)

(assert (=> bs!1903659 m!7910156))

(declare-fun m!7910158 () Bool)

(assert (=> bs!1903659 m!7910158))

(declare-fun m!7910160 () Bool)

(assert (=> bs!1903659 m!7910160))

(assert (=> b!7237920 d!2248439))

(declare-fun bs!1903660 () Bool)

(declare-fun d!2248441 () Bool)

(assert (= bs!1903660 (and d!2248441 b!7237911)))

(declare-fun lambda!440953 () Int)

(assert (=> bs!1903660 (= lambda!440953 lambda!440895)))

(declare-fun bs!1903661 () Bool)

(assert (= bs!1903661 (and d!2248441 d!2248367)))

(assert (=> bs!1903661 (= lambda!440953 lambda!440935)))

(declare-fun bs!1903662 () Bool)

(assert (= bs!1903662 (and d!2248441 d!2248369)))

(assert (=> bs!1903662 (= lambda!440953 lambda!440936)))

(declare-fun bs!1903663 () Bool)

(assert (= bs!1903663 (and d!2248441 d!2248439)))

(assert (=> bs!1903663 (= lambda!440953 lambda!440950)))

(assert (=> d!2248441 (matchZipper!3446 (set.insert (Context!14953 (++!16372 (exprs!7976 lt!2577188) (exprs!7976 ct2!328))) (as set.empty (Set Context!14952))) (++!16373 (t!384268 s1!1971) s2!1849))))

(declare-fun lt!2577341 () Unit!163618)

(assert (=> d!2248441 (= lt!2577341 (lemmaConcatPreservesForall!1345 (exprs!7976 lt!2577188) (exprs!7976 ct2!328) lambda!440953))))

(declare-fun lt!2577340 () Unit!163618)

(declare-fun choose!55697 (Context!14952 Context!14952 List!70217 List!70217) Unit!163618)

(assert (=> d!2248441 (= lt!2577340 (choose!55697 lt!2577188 ct2!328 (t!384268 s1!1971) s2!1849))))

(assert (=> d!2248441 (matchZipper!3446 (set.insert lt!2577188 (as set.empty (Set Context!14952))) (t!384268 s1!1971))))

(assert (=> d!2248441 (= (lemmaConcatenateContextMatchesConcatOfStrings!327 lt!2577188 ct2!328 (t!384268 s1!1971) s2!1849) lt!2577340)))

(declare-fun bs!1903664 () Bool)

(assert (= bs!1903664 d!2248441))

(declare-fun m!7910162 () Bool)

(assert (=> bs!1903664 m!7910162))

(declare-fun m!7910164 () Bool)

(assert (=> bs!1903664 m!7910164))

(assert (=> bs!1903664 m!7909822))

(declare-fun m!7910166 () Bool)

(assert (=> bs!1903664 m!7910166))

(assert (=> bs!1903664 m!7910166))

(declare-fun m!7910168 () Bool)

(assert (=> bs!1903664 m!7910168))

(assert (=> bs!1903664 m!7909820))

(assert (=> bs!1903664 m!7910162))

(assert (=> bs!1903664 m!7909820))

(declare-fun m!7910170 () Bool)

(assert (=> bs!1903664 m!7910170))

(declare-fun m!7910172 () Bool)

(assert (=> bs!1903664 m!7910172))

(assert (=> b!7237919 d!2248441))

(declare-fun d!2248443 () Bool)

(assert (=> d!2248443 (= (isEmpty!40394 (exprs!7976 ct1!232)) (is-Nil!70092 (exprs!7976 ct1!232)))))

(assert (=> b!7237919 d!2248443))

(declare-fun b!7238114 () Bool)

(declare-fun e!4339448 () List!70216)

(assert (=> b!7238114 (= e!4339448 (exprs!7976 ct2!328))))

(declare-fun d!2248445 () Bool)

(declare-fun e!4339447 () Bool)

(assert (=> d!2248445 e!4339447))

(declare-fun res!2936401 () Bool)

(assert (=> d!2248445 (=> (not res!2936401) (not e!4339447))))

(declare-fun lt!2577342 () List!70216)

(assert (=> d!2248445 (= res!2936401 (= (content!14459 lt!2577342) (set.union (content!14459 (exprs!7976 lt!2577188)) (content!14459 (exprs!7976 ct2!328)))))))

(assert (=> d!2248445 (= lt!2577342 e!4339448)))

(declare-fun c!1343686 () Bool)

(assert (=> d!2248445 (= c!1343686 (is-Nil!70092 (exprs!7976 lt!2577188)))))

(assert (=> d!2248445 (= (++!16372 (exprs!7976 lt!2577188) (exprs!7976 ct2!328)) lt!2577342)))

(declare-fun b!7238116 () Bool)

(declare-fun res!2936402 () Bool)

(assert (=> b!7238116 (=> (not res!2936402) (not e!4339447))))

(assert (=> b!7238116 (= res!2936402 (= (size!41606 lt!2577342) (+ (size!41606 (exprs!7976 lt!2577188)) (size!41606 (exprs!7976 ct2!328)))))))

(declare-fun b!7238117 () Bool)

(assert (=> b!7238117 (= e!4339447 (or (not (= (exprs!7976 ct2!328) Nil!70092)) (= lt!2577342 (exprs!7976 lt!2577188))))))

(declare-fun b!7238115 () Bool)

(assert (=> b!7238115 (= e!4339448 (Cons!70092 (h!76540 (exprs!7976 lt!2577188)) (++!16372 (t!384267 (exprs!7976 lt!2577188)) (exprs!7976 ct2!328))))))

(assert (= (and d!2248445 c!1343686) b!7238114))

(assert (= (and d!2248445 (not c!1343686)) b!7238115))

(assert (= (and d!2248445 res!2936401) b!7238116))

(assert (= (and b!7238116 res!2936402) b!7238117))

(declare-fun m!7910174 () Bool)

(assert (=> d!2248445 m!7910174))

(declare-fun m!7910176 () Bool)

(assert (=> d!2248445 m!7910176))

(assert (=> d!2248445 m!7910046))

(declare-fun m!7910178 () Bool)

(assert (=> b!7238116 m!7910178))

(declare-fun m!7910180 () Bool)

(assert (=> b!7238116 m!7910180))

(assert (=> b!7238116 m!7910052))

(declare-fun m!7910182 () Bool)

(assert (=> b!7238115 m!7910182))

(assert (=> b!7237919 d!2248445))

(declare-fun b!7238120 () Bool)

(declare-fun res!2936403 () Bool)

(declare-fun e!4339450 () Bool)

(assert (=> b!7238120 (=> (not res!2936403) (not e!4339450))))

(declare-fun lt!2577343 () List!70217)

(assert (=> b!7238120 (= res!2936403 (= (size!41607 lt!2577343) (+ (size!41607 (t!384268 s1!1971)) (size!41607 s2!1849))))))

(declare-fun b!7238119 () Bool)

(declare-fun e!4339449 () List!70217)

(assert (=> b!7238119 (= e!4339449 (Cons!70093 (h!76541 (t!384268 s1!1971)) (++!16373 (t!384268 (t!384268 s1!1971)) s2!1849)))))

(declare-fun b!7238118 () Bool)

(assert (=> b!7238118 (= e!4339449 s2!1849)))

(declare-fun b!7238121 () Bool)

(assert (=> b!7238121 (= e!4339450 (or (not (= s2!1849 Nil!70093)) (= lt!2577343 (t!384268 s1!1971))))))

(declare-fun d!2248447 () Bool)

(assert (=> d!2248447 e!4339450))

(declare-fun res!2936404 () Bool)

(assert (=> d!2248447 (=> (not res!2936404) (not e!4339450))))

(assert (=> d!2248447 (= res!2936404 (= (content!14460 lt!2577343) (set.union (content!14460 (t!384268 s1!1971)) (content!14460 s2!1849))))))

(assert (=> d!2248447 (= lt!2577343 e!4339449)))

(declare-fun c!1343687 () Bool)

(assert (=> d!2248447 (= c!1343687 (is-Nil!70093 (t!384268 s1!1971)))))

(assert (=> d!2248447 (= (++!16373 (t!384268 s1!1971) s2!1849) lt!2577343)))

(assert (= (and d!2248447 c!1343687) b!7238118))

(assert (= (and d!2248447 (not c!1343687)) b!7238119))

(assert (= (and d!2248447 res!2936404) b!7238120))

(assert (= (and b!7238120 res!2936403) b!7238121))

(declare-fun m!7910184 () Bool)

(assert (=> b!7238120 m!7910184))

(declare-fun m!7910186 () Bool)

(assert (=> b!7238120 m!7910186))

(assert (=> b!7238120 m!7910118))

(declare-fun m!7910188 () Bool)

(assert (=> b!7238119 m!7910188))

(declare-fun m!7910190 () Bool)

(assert (=> d!2248447 m!7910190))

(declare-fun m!7910192 () Bool)

(assert (=> d!2248447 m!7910192))

(assert (=> d!2248447 m!7910124))

(assert (=> b!7237919 d!2248447))

(assert (=> b!7237919 d!2248435))

(assert (=> b!7237919 d!2248427))

(declare-fun d!2248449 () Bool)

(declare-fun e!4339453 () Bool)

(assert (=> d!2248449 e!4339453))

(declare-fun res!2936407 () Bool)

(assert (=> d!2248449 (=> (not res!2936407) (not e!4339453))))

(declare-fun lt!2577346 () Context!14952)

(declare-fun dynLambda!28606 (Int Context!14952) Bool)

(assert (=> d!2248449 (= res!2936407 (dynLambda!28606 lambda!440896 lt!2577346))))

(declare-fun getWitness!2080 (List!70218 Int) Context!14952)

(assert (=> d!2248449 (= lt!2577346 (getWitness!2080 (toList!11393 lt!2577163) lambda!440896))))

(assert (=> d!2248449 (exists!4215 lt!2577163 lambda!440896)))

(assert (=> d!2248449 (= (getWitness!2078 lt!2577163 lambda!440896) lt!2577346)))

(declare-fun b!7238124 () Bool)

(assert (=> b!7238124 (= e!4339453 (set.member lt!2577346 lt!2577163))))

(assert (= (and d!2248449 res!2936407) b!7238124))

(declare-fun b_lambda!277585 () Bool)

(assert (=> (not b_lambda!277585) (not d!2248449)))

(declare-fun m!7910194 () Bool)

(assert (=> d!2248449 m!7910194))

(assert (=> d!2248449 m!7909830))

(assert (=> d!2248449 m!7909830))

(declare-fun m!7910196 () Bool)

(assert (=> d!2248449 m!7910196))

(assert (=> d!2248449 m!7909824))

(declare-fun m!7910198 () Bool)

(assert (=> b!7238124 m!7910198))

(assert (=> b!7237919 d!2248449))

(declare-fun d!2248451 () Bool)

(declare-fun c!1343688 () Bool)

(assert (=> d!2248451 (= c!1343688 (isEmpty!40396 lt!2577165))))

(declare-fun e!4339454 () Bool)

(assert (=> d!2248451 (= (matchZipper!3446 (set.insert lt!2577173 (as set.empty (Set Context!14952))) lt!2577165) e!4339454)))

(declare-fun b!7238125 () Bool)

(assert (=> b!7238125 (= e!4339454 (nullableZipper!2837 (set.insert lt!2577173 (as set.empty (Set Context!14952)))))))

(declare-fun b!7238126 () Bool)

(assert (=> b!7238126 (= e!4339454 (matchZipper!3446 (derivationStepZipper!3328 (set.insert lt!2577173 (as set.empty (Set Context!14952))) (head!14826 lt!2577165)) (tail!14183 lt!2577165)))))

(assert (= (and d!2248451 c!1343688) b!7238125))

(assert (= (and d!2248451 (not c!1343688)) b!7238126))

(assert (=> d!2248451 m!7909976))

(assert (=> b!7238125 m!7909814))

(declare-fun m!7910200 () Bool)

(assert (=> b!7238125 m!7910200))

(assert (=> b!7238126 m!7909980))

(assert (=> b!7238126 m!7909814))

(assert (=> b!7238126 m!7909980))

(declare-fun m!7910202 () Bool)

(assert (=> b!7238126 m!7910202))

(assert (=> b!7238126 m!7909984))

(assert (=> b!7238126 m!7910202))

(assert (=> b!7238126 m!7909984))

(declare-fun m!7910204 () Bool)

(assert (=> b!7238126 m!7910204))

(assert (=> b!7237919 d!2248451))

(declare-fun b!7238131 () Bool)

(declare-fun e!4339457 () Bool)

(declare-fun tp!2034867 () Bool)

(assert (=> b!7238131 (= e!4339457 (and tp_is_empty!46537 tp!2034867))))

(assert (=> b!7237922 (= tp!2034850 e!4339457)))

(assert (= (and b!7237922 (is-Cons!70093 (t!384268 s2!1849))) b!7238131))

(declare-fun b!7238136 () Bool)

(declare-fun e!4339460 () Bool)

(declare-fun tp!2034872 () Bool)

(declare-fun tp!2034873 () Bool)

(assert (=> b!7238136 (= e!4339460 (and tp!2034872 tp!2034873))))

(assert (=> b!7237918 (= tp!2034852 e!4339460)))

(assert (= (and b!7237918 (is-Cons!70092 (exprs!7976 ct2!328))) b!7238136))

(declare-fun b!7238137 () Bool)

(declare-fun e!4339461 () Bool)

(declare-fun tp!2034874 () Bool)

(declare-fun tp!2034875 () Bool)

(assert (=> b!7238137 (= e!4339461 (and tp!2034874 tp!2034875))))

(assert (=> b!7237917 (= tp!2034849 e!4339461)))

(assert (= (and b!7237917 (is-Cons!70092 (exprs!7976 ct1!232))) b!7238137))

(declare-fun b!7238138 () Bool)

(declare-fun e!4339462 () Bool)

(declare-fun tp!2034876 () Bool)

(assert (=> b!7238138 (= e!4339462 (and tp_is_empty!46537 tp!2034876))))

(assert (=> b!7237912 (= tp!2034851 e!4339462)))

(assert (= (and b!7237912 (is-Cons!70093 (t!384268 s1!1971))) b!7238138))

(declare-fun b_lambda!277587 () Bool)

(assert (= b_lambda!277581 (or b!7237920 b_lambda!277587)))

(declare-fun bs!1903665 () Bool)

(declare-fun d!2248453 () Bool)

(assert (= bs!1903665 (and d!2248453 b!7237920)))

(assert (=> bs!1903665 (= (dynLambda!28605 lambda!440897 lt!2577191) (derivationStepZipperUp!2410 lt!2577191 (h!76541 s1!1971)))))

(assert (=> bs!1903665 m!7909750))

(assert (=> d!2248417 d!2248453))

(declare-fun b_lambda!277589 () Bool)

(assert (= b_lambda!277579 (or b!7237911 b_lambda!277589)))

(declare-fun bs!1903666 () Bool)

(declare-fun d!2248455 () Bool)

(assert (= bs!1903666 (and d!2248455 b!7237911)))

(declare-fun validRegex!9525 (Regex!18536) Bool)

(assert (=> bs!1903666 (= (dynLambda!28604 lambda!440895 (h!76540 (exprs!7976 lt!2577188))) (validRegex!9525 (h!76540 (exprs!7976 lt!2577188))))))

(declare-fun m!7910206 () Bool)

(assert (=> bs!1903666 m!7910206))

(assert (=> b!7238084 d!2248455))

(declare-fun b_lambda!277591 () Bool)

(assert (= b_lambda!277585 (or b!7237923 b_lambda!277591)))

(declare-fun bs!1903667 () Bool)

(declare-fun d!2248457 () Bool)

(assert (= bs!1903667 (and d!2248457 b!7237923)))

(assert (=> bs!1903667 (= (dynLambda!28606 lambda!440896 lt!2577346) (matchZipper!3446 (set.insert lt!2577346 (as set.empty (Set Context!14952))) (t!384268 s1!1971)))))

(declare-fun m!7910208 () Bool)

(assert (=> bs!1903667 m!7910208))

(assert (=> bs!1903667 m!7910208))

(declare-fun m!7910210 () Bool)

(assert (=> bs!1903667 m!7910210))

(assert (=> d!2248449 d!2248457))

(declare-fun b_lambda!277593 () Bool)

(assert (= b_lambda!277583 (or b!7237920 b_lambda!277593)))

(declare-fun bs!1903668 () Bool)

(declare-fun d!2248459 () Bool)

(assert (= bs!1903668 (and d!2248459 b!7237920)))

(assert (=> bs!1903668 (= (dynLambda!28605 lambda!440897 ct1!232) (derivationStepZipperUp!2410 ct1!232 (h!76541 s1!1971)))))

(assert (=> bs!1903668 m!7909766))

(assert (=> d!2248437 d!2248459))

(push 1)

(assert (not d!2248439))

(assert (not b!7238095))

(assert (not b!7237982))

(assert (not d!2248447))

(assert (not d!2248441))

(assert (not b!7238116))

(assert tp_is_empty!46537)

(assert (not b!7238072))

(assert (not d!2248437))

(assert (not d!2248379))

(assert (not bm!659069))

(assert (not b!7238131))

(assert (not b!7238036))

(assert (not b!7238063))

(assert (not d!2248427))

(assert (not d!2248387))

(assert (not b!7237988))

(assert (not b!7238126))

(assert (not d!2248421))

(assert (not d!2248431))

(assert (not d!2248399))

(assert (not b!7238065))

(assert (not d!2248449))

(assert (not b!7238138))

(assert (not d!2248373))

(assert (not b!7238041))

(assert (not d!2248363))

(assert (not d!2248413))

(assert (not d!2248397))

(assert (not b!7238051))

(assert (not bm!659070))

(assert (not d!2248385))

(assert (not b_lambda!277593))

(assert (not d!2248369))

(assert (not b!7238079))

(assert (not bs!1903668))

(assert (not b!7238119))

(assert (not b!7238120))

(assert (not b!7238105))

(assert (not d!2248429))

(assert (not b!7237985))

(assert (not d!2248409))

(assert (not b!7238060))

(assert (not b!7238073))

(assert (not b!7238018))

(assert (not bm!659068))

(assert (not bm!659063))

(assert (not b!7238137))

(assert (not b_lambda!277591))

(assert (not d!2248411))

(assert (not d!2248367))

(assert (not d!2248389))

(assert (not bm!659072))

(assert (not b!7238034))

(assert (not b!7238085))

(assert (not b!7238068))

(assert (not d!2248395))

(assert (not b!7238111))

(assert (not bm!659059))

(assert (not b!7238071))

(assert (not b!7238096))

(assert (not bm!659061))

(assert (not b!7238113))

(assert (not d!2248405))

(assert (not bs!1903666))

(assert (not b!7238076))

(assert (not b!7238070))

(assert (not b!7237986))

(assert (not b!7238125))

(assert (not b!7238115))

(assert (not b!7238136))

(assert (not b_lambda!277587))

(assert (not b!7237983))

(assert (not d!2248391))

(assert (not bm!659076))

(assert (not d!2248417))

(assert (not bs!1903667))

(assert (not b!7238078))

(assert (not b!7238055))

(assert (not d!2248451))

(assert (not d!2248445))

(assert (not d!2248371))

(assert (not d!2248365))

(assert (not bs!1903665))

(assert (not d!2248419))

(assert (not bm!659067))

(assert (not b!7238075))

(assert (not b!7237987))

(assert (not b!7238054))

(assert (not d!2248407))

(assert (not d!2248393))

(assert (not b_lambda!277589))

(assert (not b!7238074))

(assert (not b!7238077))

(assert (not b!7237984))

(assert (not bm!659074))

(assert (not b!7237981))

(assert (not b!7238052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


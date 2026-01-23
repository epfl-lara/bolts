; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!685262 () Bool)

(assert start!685262)

(declare-fun b!7062009 () Bool)

(assert (=> b!7062009 true))

(declare-fun b!7062028 () Bool)

(assert (=> b!7062028 true))

(declare-fun b!7062011 () Bool)

(assert (=> b!7062011 true))

(declare-fun b!7061995 () Bool)

(declare-fun e!4245583 () Bool)

(declare-fun tp!1941165 () Bool)

(assert (=> b!7061995 (= e!4245583 tp!1941165)))

(declare-fun b!7061996 () Bool)

(declare-fun res!2883317 () Bool)

(declare-fun e!4245598 () Bool)

(assert (=> b!7061996 (=> res!2883317 e!4245598)))

(declare-datatypes ((C!35466 0))(
  ( (C!35467 (val!27435 Int)) )
))
(declare-datatypes ((Regex!17598 0))(
  ( (ElementMatch!17598 (c!1316351 C!35466)) (Concat!26443 (regOne!35708 Regex!17598) (regTwo!35708 Regex!17598)) (EmptyExpr!17598) (Star!17598 (reg!17927 Regex!17598)) (EmptyLang!17598) (Union!17598 (regOne!35709 Regex!17598) (regTwo!35709 Regex!17598)) )
))
(declare-datatypes ((List!68320 0))(
  ( (Nil!68196) (Cons!68196 (h!74644 Regex!17598) (t!382101 List!68320)) )
))
(declare-datatypes ((Context!13188 0))(
  ( (Context!13189 (exprs!7094 List!68320)) )
))
(declare-fun lt!2536862 () (Set Context!13188))

(declare-datatypes ((List!68321 0))(
  ( (Nil!68197) (Cons!68197 (h!74645 C!35466) (t!382102 List!68321)) )
))
(declare-datatypes ((tuple2!68198 0))(
  ( (tuple2!68199 (_1!37402 List!68321) (_2!37402 List!68321)) )
))
(declare-fun lt!2536891 () tuple2!68198)

(declare-fun matchZipper!3138 ((Set Context!13188) List!68321) Bool)

(assert (=> b!7061996 (= res!2883317 (not (matchZipper!3138 lt!2536862 (_2!37402 lt!2536891))))))

(declare-fun b!7061998 () Bool)

(declare-fun res!2883313 () Bool)

(declare-fun e!4245591 () Bool)

(assert (=> b!7061998 (=> res!2883313 e!4245591)))

(declare-fun lt!2536893 () Context!13188)

(declare-fun isEmpty!39783 (List!68320) Bool)

(assert (=> b!7061998 (= res!2883313 (isEmpty!39783 (exprs!7094 lt!2536893)))))

(declare-fun b!7061999 () Bool)

(declare-fun e!4245586 () Bool)

(declare-fun lt!2536877 () (Set Context!13188))

(declare-fun lt!2536885 () List!68321)

(assert (=> b!7061999 (= e!4245586 (matchZipper!3138 lt!2536877 lt!2536885))))

(declare-fun b!7062000 () Bool)

(declare-fun e!4245589 () Bool)

(declare-fun lt!2536876 () (Set Context!13188))

(declare-fun s!7408 () List!68321)

(assert (=> b!7062000 (= e!4245589 (not (matchZipper!3138 lt!2536876 (t!382102 s!7408))))))

(declare-fun lambda!422379 () Int)

(declare-fun lt!2536870 () List!68320)

(declare-fun ct2!306 () Context!13188)

(declare-datatypes ((Unit!161872 0))(
  ( (Unit!161873) )
))
(declare-fun lt!2536886 () Unit!161872)

(declare-fun lemmaConcatPreservesForall!909 (List!68320 List!68320 Int) Unit!161872)

(assert (=> b!7062000 (= lt!2536886 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun b!7062001 () Bool)

(declare-fun res!2883309 () Bool)

(declare-fun e!4245596 () Bool)

(assert (=> b!7062001 (=> res!2883309 e!4245596)))

(declare-fun lt!2536866 () (Set Context!13188))

(assert (=> b!7062001 (= res!2883309 (not (matchZipper!3138 lt!2536866 lt!2536885)))))

(declare-fun b!7062002 () Bool)

(declare-fun e!4245604 () Bool)

(assert (=> b!7062002 (= e!4245604 (matchZipper!3138 lt!2536876 (t!382102 s!7408)))))

(declare-fun b!7062003 () Bool)

(declare-fun e!4245582 () Bool)

(declare-fun tp!1941163 () Bool)

(assert (=> b!7062003 (= e!4245582 tp!1941163)))

(declare-fun b!7062004 () Bool)

(declare-fun e!4245597 () Bool)

(declare-fun e!4245595 () Bool)

(assert (=> b!7062004 (= e!4245597 e!4245595)))

(declare-fun res!2883301 () Bool)

(assert (=> b!7062004 (=> res!2883301 e!4245595)))

(declare-fun lt!2536889 () Int)

(declare-fun lt!2536851 () Context!13188)

(declare-fun contextDepthTotal!534 (Context!13188) Int)

(assert (=> b!7062004 (= res!2883301 (<= lt!2536889 (contextDepthTotal!534 lt!2536851)))))

(declare-fun lt!2536854 () Int)

(assert (=> b!7062004 (<= lt!2536889 lt!2536854)))

(declare-datatypes ((List!68322 0))(
  ( (Nil!68198) (Cons!68198 (h!74646 Context!13188) (t!382103 List!68322)) )
))
(declare-fun lt!2536883 () List!68322)

(declare-fun zipperDepthTotal!563 (List!68322) Int)

(assert (=> b!7062004 (= lt!2536854 (zipperDepthTotal!563 lt!2536883))))

(assert (=> b!7062004 (= lt!2536889 (contextDepthTotal!534 lt!2536893))))

(declare-fun lt!2536878 () Unit!161872)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!101 (List!68322 Context!13188) Unit!161872)

(assert (=> b!7062004 (= lt!2536878 (lemmaTotalDepthZipperLargerThanOfAnyContext!101 lt!2536883 lt!2536893))))

(declare-fun z1!570 () (Set Context!13188))

(declare-fun toList!10939 ((Set Context!13188)) List!68322)

(assert (=> b!7062004 (= lt!2536883 (toList!10939 z1!570))))

(declare-fun lt!2536899 () Unit!161872)

(assert (=> b!7062004 (= lt!2536899 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536895 () Unit!161872)

(assert (=> b!7062004 (= lt!2536895 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536867 () Unit!161872)

(assert (=> b!7062004 (= lt!2536867 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lambda!422380 () Int)

(declare-fun lt!2536896 () (Set Context!13188))

(declare-fun flatMap!2524 ((Set Context!13188) Int) (Set Context!13188))

(declare-fun derivationStepZipperUp!2182 (Context!13188 C!35466) (Set Context!13188))

(assert (=> b!7062004 (= (flatMap!2524 lt!2536896 lambda!422380) (derivationStepZipperUp!2182 lt!2536851 (h!74645 s!7408)))))

(declare-fun lt!2536869 () Unit!161872)

(declare-fun lemmaFlatMapOnSingletonSet!2033 ((Set Context!13188) Context!13188 Int) Unit!161872)

(assert (=> b!7062004 (= lt!2536869 (lemmaFlatMapOnSingletonSet!2033 lt!2536896 lt!2536851 lambda!422380))))

(declare-fun lambda!422378 () Int)

(declare-fun map!15930 ((Set Context!13188) Int) (Set Context!13188))

(declare-fun ++!15693 (List!68320 List!68320) List!68320)

(assert (=> b!7062004 (= (map!15930 lt!2536896 lambda!422378) (set.insert (Context!13189 (++!15693 lt!2536870 (exprs!7094 ct2!306))) (as set.empty (Set Context!13188))))))

(declare-fun lt!2536894 () Unit!161872)

(assert (=> b!7062004 (= lt!2536894 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536860 () Unit!161872)

(declare-fun lemmaMapOnSingletonSet!415 ((Set Context!13188) Context!13188 Int) Unit!161872)

(assert (=> b!7062004 (= lt!2536860 (lemmaMapOnSingletonSet!415 lt!2536896 lt!2536851 lambda!422378))))

(assert (=> b!7062004 (= lt!2536896 (set.insert lt!2536851 (as set.empty (Set Context!13188))))))

(declare-fun b!7062005 () Bool)

(declare-fun e!4245601 () Bool)

(declare-fun e!4245600 () Bool)

(assert (=> b!7062005 (= e!4245601 e!4245600)))

(declare-fun res!2883293 () Bool)

(assert (=> b!7062005 (=> res!2883293 e!4245600)))

(declare-fun e!4245602 () Bool)

(assert (=> b!7062005 (= res!2883293 e!4245602)))

(declare-fun res!2883308 () Bool)

(assert (=> b!7062005 (=> (not res!2883308) (not e!4245602))))

(declare-fun lt!2536847 () Bool)

(declare-fun lt!2536844 () Bool)

(assert (=> b!7062005 (= res!2883308 (not (= lt!2536847 lt!2536844)))))

(declare-fun lt!2536897 () (Set Context!13188))

(assert (=> b!7062005 (= lt!2536847 (matchZipper!3138 lt!2536897 (_1!37402 lt!2536891)))))

(declare-fun lt!2536873 () (Set Context!13188))

(assert (=> b!7062005 (= (matchZipper!3138 lt!2536873 lt!2536885) e!4245586)))

(declare-fun res!2883305 () Bool)

(assert (=> b!7062005 (=> res!2883305 e!4245586)))

(assert (=> b!7062005 (= res!2883305 lt!2536844)))

(declare-fun lt!2536843 () (Set Context!13188))

(assert (=> b!7062005 (= lt!2536844 (matchZipper!3138 lt!2536843 lt!2536885))))

(declare-fun lt!2536881 () Unit!161872)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1611 ((Set Context!13188) (Set Context!13188) List!68321) Unit!161872)

(assert (=> b!7062005 (= lt!2536881 (lemmaZipperConcatMatchesSameAsBothZippers!1611 lt!2536843 lt!2536877 lt!2536885))))

(declare-fun tail!13744 (List!68321) List!68321)

(assert (=> b!7062005 (= lt!2536885 (tail!13744 (_1!37402 lt!2536891)))))

(declare-fun b!7062006 () Bool)

(declare-fun e!4245584 () Bool)

(declare-fun tp_is_empty!44421 () Bool)

(declare-fun tp!1941166 () Bool)

(assert (=> b!7062006 (= e!4245584 (and tp_is_empty!44421 tp!1941166))))

(declare-fun b!7062007 () Bool)

(declare-fun res!2883314 () Bool)

(declare-fun e!4245590 () Bool)

(assert (=> b!7062007 (=> (not res!2883314) (not e!4245590))))

(assert (=> b!7062007 (= res!2883314 (is-Cons!68197 s!7408))))

(declare-fun b!7062008 () Bool)

(assert (=> b!7062008 (= e!4245600 e!4245596)))

(declare-fun res!2883287 () Bool)

(assert (=> b!7062008 (=> res!2883287 e!4245596)))

(declare-fun lt!2536842 () C!35466)

(declare-fun derivationStepZipper!3048 ((Set Context!13188) C!35466) (Set Context!13188))

(assert (=> b!7062008 (= res!2883287 (not (= (derivationStepZipper!3048 lt!2536896 lt!2536842) lt!2536866)))))

(assert (=> b!7062008 (= lt!2536866 (derivationStepZipperUp!2182 lt!2536851 lt!2536842))))

(declare-fun head!14376 (List!68321) C!35466)

(assert (=> b!7062008 (= lt!2536842 (head!14376 (_1!37402 lt!2536891)))))

(assert (=> b!7062008 (= (flatMap!2524 lt!2536896 lambda!422380) (derivationStepZipperUp!2182 lt!2536851 (h!74645 s!7408)))))

(declare-fun lt!2536839 () Unit!161872)

(assert (=> b!7062008 (= lt!2536839 (lemmaFlatMapOnSingletonSet!2033 lt!2536896 lt!2536851 lambda!422380))))

(declare-fun e!4245581 () Bool)

(assert (=> b!7062009 (= e!4245590 (not e!4245581))))

(declare-fun res!2883300 () Bool)

(assert (=> b!7062009 (=> res!2883300 e!4245581)))

(declare-fun lt!2536838 () (Set Context!13188))

(assert (=> b!7062009 (= res!2883300 (not (matchZipper!3138 lt!2536838 s!7408)))))

(declare-fun lt!2536848 () Context!13188)

(assert (=> b!7062009 (= lt!2536838 (set.insert lt!2536848 (as set.empty (Set Context!13188))))))

(declare-fun lt!2536890 () (Set Context!13188))

(declare-fun lambda!422377 () Int)

(declare-fun getWitness!1675 ((Set Context!13188) Int) Context!13188)

(assert (=> b!7062009 (= lt!2536848 (getWitness!1675 lt!2536890 lambda!422377))))

(declare-fun lt!2536882 () List!68322)

(declare-fun exists!3610 (List!68322 Int) Bool)

(assert (=> b!7062009 (exists!3610 lt!2536882 lambda!422377)))

(declare-fun lt!2536892 () Unit!161872)

(declare-fun lemmaZipperMatchesExistsMatchingContext!519 (List!68322 List!68321) Unit!161872)

(assert (=> b!7062009 (= lt!2536892 (lemmaZipperMatchesExistsMatchingContext!519 lt!2536882 s!7408))))

(assert (=> b!7062009 (= lt!2536882 (toList!10939 lt!2536890))))

(declare-fun b!7062010 () Bool)

(declare-fun res!2883294 () Bool)

(assert (=> b!7062010 (=> res!2883294 e!4245596)))

(assert (=> b!7062010 (= res!2883294 (not lt!2536847))))

(declare-fun e!4245585 () Bool)

(assert (=> b!7062011 (= e!4245585 e!4245591)))

(declare-fun res!2883316 () Bool)

(assert (=> b!7062011 (=> res!2883316 e!4245591)))

(declare-fun lt!2536875 () (Set Context!13188))

(declare-fun lt!2536871 () (Set Context!13188))

(assert (=> b!7062011 (= res!2883316 (not (= (derivationStepZipper!3048 lt!2536871 (h!74645 s!7408)) lt!2536875)))))

(declare-fun lt!2536865 () Context!13188)

(assert (=> b!7062011 (= (flatMap!2524 lt!2536871 lambda!422380) (derivationStepZipperUp!2182 lt!2536865 (h!74645 s!7408)))))

(declare-fun lt!2536850 () Unit!161872)

(assert (=> b!7062011 (= lt!2536850 (lemmaFlatMapOnSingletonSet!2033 lt!2536871 lt!2536865 lambda!422380))))

(assert (=> b!7062011 (= lt!2536875 (derivationStepZipperUp!2182 lt!2536865 (h!74645 s!7408)))))

(declare-fun lt!2536880 () Unit!161872)

(assert (=> b!7062011 (= lt!2536880 (lemmaConcatPreservesForall!909 (exprs!7094 lt!2536893) (exprs!7094 ct2!306) lambda!422379))))

(declare-fun b!7062012 () Bool)

(declare-fun res!2883291 () Bool)

(assert (=> b!7062012 (=> res!2883291 e!4245581)))

(assert (=> b!7062012 (= res!2883291 (not (set.member lt!2536848 lt!2536890)))))

(declare-fun b!7061997 () Bool)

(declare-fun e!4245603 () Bool)

(declare-fun e!4245592 () Bool)

(assert (=> b!7061997 (= e!4245603 e!4245592)))

(declare-fun res!2883288 () Bool)

(assert (=> b!7061997 (=> res!2883288 e!4245592)))

(assert (=> b!7061997 (= res!2883288 e!4245589)))

(declare-fun res!2883304 () Bool)

(assert (=> b!7061997 (=> (not res!2883304) (not e!4245589))))

(declare-fun lt!2536859 () Bool)

(declare-fun lt!2536868 () Bool)

(assert (=> b!7061997 (= res!2883304 (not (= lt!2536859 lt!2536868)))))

(assert (=> b!7061997 (= lt!2536859 (matchZipper!3138 lt!2536875 (t!382102 s!7408)))))

(declare-fun lt!2536864 () Unit!161872)

(assert (=> b!7061997 (= lt!2536864 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536840 () (Set Context!13188))

(assert (=> b!7061997 (= (matchZipper!3138 lt!2536840 (t!382102 s!7408)) e!4245604)))

(declare-fun res!2883318 () Bool)

(assert (=> b!7061997 (=> res!2883318 e!4245604)))

(assert (=> b!7061997 (= res!2883318 lt!2536868)))

(declare-fun lt!2536861 () (Set Context!13188))

(assert (=> b!7061997 (= lt!2536868 (matchZipper!3138 lt!2536861 (t!382102 s!7408)))))

(declare-fun lt!2536845 () Unit!161872)

(assert (=> b!7061997 (= lt!2536845 (lemmaZipperConcatMatchesSameAsBothZippers!1611 lt!2536861 lt!2536876 (t!382102 s!7408)))))

(declare-fun lt!2536872 () Unit!161872)

(assert (=> b!7061997 (= lt!2536872 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536858 () Unit!161872)

(assert (=> b!7061997 (= lt!2536858 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun res!2883296 () Bool)

(assert (=> start!685262 (=> (not res!2883296) (not e!4245590))))

(assert (=> start!685262 (= res!2883296 (matchZipper!3138 lt!2536890 s!7408))))

(declare-fun appendTo!719 ((Set Context!13188) Context!13188) (Set Context!13188))

(assert (=> start!685262 (= lt!2536890 (appendTo!719 z1!570 ct2!306))))

(assert (=> start!685262 e!4245590))

(declare-fun condSetEmpty!50022 () Bool)

(assert (=> start!685262 (= condSetEmpty!50022 (= z1!570 (as set.empty (Set Context!13188))))))

(declare-fun setRes!50022 () Bool)

(assert (=> start!685262 setRes!50022))

(declare-fun inv!86855 (Context!13188) Bool)

(assert (=> start!685262 (and (inv!86855 ct2!306) e!4245583)))

(assert (=> start!685262 e!4245584))

(declare-fun b!7062013 () Bool)

(assert (=> b!7062013 (= e!4245602 (not (matchZipper!3138 lt!2536877 lt!2536885)))))

(declare-fun b!7062014 () Bool)

(declare-fun res!2883289 () Bool)

(assert (=> b!7062014 (=> res!2883289 e!4245592)))

(assert (=> b!7062014 (= res!2883289 (not lt!2536859))))

(declare-fun b!7062015 () Bool)

(declare-fun e!4245587 () Bool)

(assert (=> b!7062015 (= e!4245592 e!4245587)))

(declare-fun res!2883290 () Bool)

(assert (=> b!7062015 (=> res!2883290 e!4245587)))

(assert (=> b!7062015 (= res!2883290 (not (matchZipper!3138 lt!2536876 (t!382102 s!7408))))))

(declare-fun lt!2536849 () Unit!161872)

(assert (=> b!7062015 (= lt!2536849 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun b!7062016 () Bool)

(declare-fun res!2883292 () Bool)

(assert (=> b!7062016 (=> res!2883292 e!4245591)))

(assert (=> b!7062016 (= res!2883292 (not (is-Cons!68196 (exprs!7094 lt!2536893))))))

(declare-fun b!7062017 () Bool)

(declare-fun e!4245594 () Bool)

(assert (=> b!7062017 (= e!4245594 e!4245603)))

(declare-fun res!2883310 () Bool)

(assert (=> b!7062017 (=> res!2883310 e!4245603)))

(assert (=> b!7062017 (= res!2883310 (not (= lt!2536875 lt!2536840)))))

(assert (=> b!7062017 (= lt!2536840 (set.union lt!2536861 lt!2536876))))

(declare-fun lt!2536856 () Context!13188)

(assert (=> b!7062017 (= lt!2536876 (derivationStepZipperUp!2182 lt!2536856 (h!74645 s!7408)))))

(declare-fun derivationStepZipperDown!2232 (Regex!17598 Context!13188 C!35466) (Set Context!13188))

(assert (=> b!7062017 (= lt!2536861 (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536893)) lt!2536856 (h!74645 s!7408)))))

(assert (=> b!7062017 (= lt!2536856 (Context!13189 (++!15693 lt!2536870 (exprs!7094 ct2!306))))))

(declare-fun lt!2536853 () Unit!161872)

(assert (=> b!7062017 (= lt!2536853 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536857 () Unit!161872)

(assert (=> b!7062017 (= lt!2536857 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun b!7062018 () Bool)

(declare-fun e!4245593 () Bool)

(assert (=> b!7062018 (= e!4245598 e!4245593)))

(declare-fun res!2883295 () Bool)

(assert (=> b!7062018 (=> res!2883295 e!4245593)))

(declare-fun lt!2536887 () (Set Context!13188))

(assert (=> b!7062018 (= res!2883295 (not (= (derivationStepZipper!3048 lt!2536897 (h!74645 s!7408)) lt!2536887)))))

(assert (=> b!7062018 (= lt!2536887 (derivationStepZipperUp!2182 lt!2536893 (h!74645 s!7408)))))

(assert (=> b!7062018 (= (flatMap!2524 lt!2536897 lambda!422380) (derivationStepZipperUp!2182 lt!2536893 (h!74645 s!7408)))))

(declare-fun lt!2536900 () Unit!161872)

(assert (=> b!7062018 (= lt!2536900 (lemmaFlatMapOnSingletonSet!2033 lt!2536897 lt!2536893 lambda!422380))))

(assert (=> b!7062018 (= lt!2536897 (set.insert lt!2536893 (as set.empty (Set Context!13188))))))

(declare-fun setElem!50022 () Context!13188)

(declare-fun setNonEmpty!50022 () Bool)

(declare-fun tp!1941164 () Bool)

(assert (=> setNonEmpty!50022 (= setRes!50022 (and tp!1941164 (inv!86855 setElem!50022) e!4245582))))

(declare-fun setRest!50022 () (Set Context!13188))

(assert (=> setNonEmpty!50022 (= z1!570 (set.union (set.insert setElem!50022 (as set.empty (Set Context!13188))) setRest!50022))))

(declare-fun b!7062019 () Bool)

(declare-fun res!2883307 () Bool)

(assert (=> b!7062019 (=> res!2883307 e!4245595)))

(assert (=> b!7062019 (= res!2883307 (>= (zipperDepthTotal!563 (Cons!68198 lt!2536851 Nil!68198)) lt!2536854))))

(declare-fun setIsEmpty!50022 () Bool)

(assert (=> setIsEmpty!50022 setRes!50022))

(declare-fun b!7062020 () Bool)

(assert (=> b!7062020 (= e!4245595 e!4245598)))

(declare-fun res!2883303 () Bool)

(assert (=> b!7062020 (=> res!2883303 e!4245598)))

(assert (=> b!7062020 (= res!2883303 (not (matchZipper!3138 lt!2536896 (_1!37402 lt!2536891))))))

(declare-datatypes ((Option!16931 0))(
  ( (None!16930) (Some!16930 (v!53224 tuple2!68198)) )
))
(declare-fun lt!2536901 () Option!16931)

(declare-fun get!23881 (Option!16931) tuple2!68198)

(assert (=> b!7062020 (= lt!2536891 (get!23881 lt!2536901))))

(declare-fun isDefined!13632 (Option!16931) Bool)

(assert (=> b!7062020 (isDefined!13632 lt!2536901)))

(declare-fun findConcatSeparationZippers!447 ((Set Context!13188) (Set Context!13188) List!68321 List!68321 List!68321) Option!16931)

(assert (=> b!7062020 (= lt!2536901 (findConcatSeparationZippers!447 lt!2536896 lt!2536862 Nil!68197 s!7408 s!7408))))

(assert (=> b!7062020 (= lt!2536862 (set.insert ct2!306 (as set.empty (Set Context!13188))))))

(declare-fun lt!2536888 () Unit!161872)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!435 ((Set Context!13188) Context!13188 List!68321) Unit!161872)

(assert (=> b!7062020 (= lt!2536888 (lemmaConcatZipperMatchesStringThenFindConcatDefined!435 lt!2536896 ct2!306 s!7408))))

(declare-fun b!7062021 () Bool)

(declare-fun isPrefix!5843 (List!68321 List!68321) Bool)

(assert (=> b!7062021 (= e!4245596 (isPrefix!5843 Nil!68197 (_1!37402 lt!2536891)))))

(declare-fun b!7062022 () Bool)

(declare-fun e!4245588 () Bool)

(assert (=> b!7062022 (= e!4245588 e!4245597)))

(declare-fun res!2883297 () Bool)

(assert (=> b!7062022 (=> res!2883297 e!4245597)))

(declare-fun lt!2536855 () (Set Context!13188))

(assert (=> b!7062022 (= res!2883297 (not (matchZipper!3138 lt!2536855 s!7408)))))

(declare-fun lt!2536852 () Unit!161872)

(assert (=> b!7062022 (= lt!2536852 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun b!7062023 () Bool)

(assert (=> b!7062023 (= e!4245593 e!4245601)))

(declare-fun res!2883298 () Bool)

(assert (=> b!7062023 (=> res!2883298 e!4245601)))

(assert (=> b!7062023 (= res!2883298 (not (= lt!2536887 lt!2536873)))))

(assert (=> b!7062023 (= lt!2536873 (set.union lt!2536843 lt!2536877))))

(assert (=> b!7062023 (= lt!2536877 (derivationStepZipperUp!2182 lt!2536851 (h!74645 s!7408)))))

(assert (=> b!7062023 (= lt!2536843 (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536893)) lt!2536851 (h!74645 s!7408)))))

(declare-fun b!7062024 () Bool)

(assert (=> b!7062024 (= e!4245587 e!4245588)))

(declare-fun res!2883299 () Bool)

(assert (=> b!7062024 (=> res!2883299 e!4245588)))

(assert (=> b!7062024 (= res!2883299 (not (= (derivationStepZipper!3048 lt!2536855 (h!74645 s!7408)) lt!2536876)))))

(declare-fun lt!2536884 () Unit!161872)

(assert (=> b!7062024 (= lt!2536884 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536863 () Unit!161872)

(assert (=> b!7062024 (= lt!2536863 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(assert (=> b!7062024 (= (flatMap!2524 lt!2536855 lambda!422380) (derivationStepZipperUp!2182 lt!2536856 (h!74645 s!7408)))))

(declare-fun lt!2536846 () Unit!161872)

(assert (=> b!7062024 (= lt!2536846 (lemmaFlatMapOnSingletonSet!2033 lt!2536855 lt!2536856 lambda!422380))))

(assert (=> b!7062024 (= lt!2536855 (set.insert lt!2536856 (as set.empty (Set Context!13188))))))

(declare-fun lt!2536898 () Unit!161872)

(assert (=> b!7062024 (= lt!2536898 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun lt!2536874 () Unit!161872)

(assert (=> b!7062024 (= lt!2536874 (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(declare-fun b!7062025 () Bool)

(declare-fun e!4245599 () Bool)

(assert (=> b!7062025 (= e!4245599 e!4245585)))

(declare-fun res!2883312 () Bool)

(assert (=> b!7062025 (=> res!2883312 e!4245585)))

(assert (=> b!7062025 (= res!2883312 (not (= lt!2536871 lt!2536838)))))

(assert (=> b!7062025 (= lt!2536871 (set.insert lt!2536865 (as set.empty (Set Context!13188))))))

(declare-fun lt!2536841 () Unit!161872)

(assert (=> b!7062025 (= lt!2536841 (lemmaConcatPreservesForall!909 (exprs!7094 lt!2536893) (exprs!7094 ct2!306) lambda!422379))))

(declare-fun b!7062026 () Bool)

(assert (=> b!7062026 (= e!4245591 e!4245594)))

(declare-fun res!2883311 () Bool)

(assert (=> b!7062026 (=> res!2883311 e!4245594)))

(declare-fun nullable!7281 (Regex!17598) Bool)

(assert (=> b!7062026 (= res!2883311 (not (nullable!7281 (h!74644 (exprs!7094 lt!2536893)))))))

(assert (=> b!7062026 (= lt!2536851 (Context!13189 lt!2536870))))

(declare-fun tail!13745 (List!68320) List!68320)

(assert (=> b!7062026 (= lt!2536870 (tail!13745 (exprs!7094 lt!2536893)))))

(declare-fun b!7062027 () Bool)

(declare-fun res!2883306 () Bool)

(assert (=> b!7062027 (=> res!2883306 e!4245598)))

(declare-fun isEmpty!39784 (List!68321) Bool)

(assert (=> b!7062027 (= res!2883306 (isEmpty!39784 (_1!37402 lt!2536891)))))

(assert (=> b!7062028 (= e!4245581 e!4245599)))

(declare-fun res!2883315 () Bool)

(assert (=> b!7062028 (=> res!2883315 e!4245599)))

(assert (=> b!7062028 (= res!2883315 (or (not (= lt!2536865 lt!2536848)) (not (set.member lt!2536893 z1!570))))))

(assert (=> b!7062028 (= lt!2536865 (Context!13189 (++!15693 (exprs!7094 lt!2536893) (exprs!7094 ct2!306))))))

(declare-fun lt!2536879 () Unit!161872)

(assert (=> b!7062028 (= lt!2536879 (lemmaConcatPreservesForall!909 (exprs!7094 lt!2536893) (exprs!7094 ct2!306) lambda!422379))))

(declare-fun mapPost2!427 ((Set Context!13188) Int Context!13188) Context!13188)

(assert (=> b!7062028 (= lt!2536893 (mapPost2!427 z1!570 lambda!422378 lt!2536848))))

(declare-fun b!7062029 () Bool)

(declare-fun res!2883302 () Bool)

(assert (=> b!7062029 (=> res!2883302 e!4245598)))

(declare-fun ++!15694 (List!68321 List!68321) List!68321)

(assert (=> b!7062029 (= res!2883302 (not (= (++!15694 (_1!37402 lt!2536891) (_2!37402 lt!2536891)) s!7408)))))

(assert (= (and start!685262 res!2883296) b!7062007))

(assert (= (and b!7062007 res!2883314) b!7062009))

(assert (= (and b!7062009 (not res!2883300)) b!7062012))

(assert (= (and b!7062012 (not res!2883291)) b!7062028))

(assert (= (and b!7062028 (not res!2883315)) b!7062025))

(assert (= (and b!7062025 (not res!2883312)) b!7062011))

(assert (= (and b!7062011 (not res!2883316)) b!7062016))

(assert (= (and b!7062016 (not res!2883292)) b!7061998))

(assert (= (and b!7061998 (not res!2883313)) b!7062026))

(assert (= (and b!7062026 (not res!2883311)) b!7062017))

(assert (= (and b!7062017 (not res!2883310)) b!7061997))

(assert (= (and b!7061997 (not res!2883318)) b!7062002))

(assert (= (and b!7061997 res!2883304) b!7062000))

(assert (= (and b!7061997 (not res!2883288)) b!7062014))

(assert (= (and b!7062014 (not res!2883289)) b!7062015))

(assert (= (and b!7062015 (not res!2883290)) b!7062024))

(assert (= (and b!7062024 (not res!2883299)) b!7062022))

(assert (= (and b!7062022 (not res!2883297)) b!7062004))

(assert (= (and b!7062004 (not res!2883301)) b!7062019))

(assert (= (and b!7062019 (not res!2883307)) b!7062020))

(assert (= (and b!7062020 (not res!2883303)) b!7061996))

(assert (= (and b!7061996 (not res!2883317)) b!7062029))

(assert (= (and b!7062029 (not res!2883302)) b!7062027))

(assert (= (and b!7062027 (not res!2883306)) b!7062018))

(assert (= (and b!7062018 (not res!2883295)) b!7062023))

(assert (= (and b!7062023 (not res!2883298)) b!7062005))

(assert (= (and b!7062005 (not res!2883305)) b!7061999))

(assert (= (and b!7062005 res!2883308) b!7062013))

(assert (= (and b!7062005 (not res!2883293)) b!7062008))

(assert (= (and b!7062008 (not res!2883287)) b!7062001))

(assert (= (and b!7062001 (not res!2883309)) b!7062010))

(assert (= (and b!7062010 (not res!2883294)) b!7062021))

(assert (= (and start!685262 condSetEmpty!50022) setIsEmpty!50022))

(assert (= (and start!685262 (not condSetEmpty!50022)) setNonEmpty!50022))

(assert (= setNonEmpty!50022 b!7062003))

(assert (= start!685262 b!7061995))

(assert (= (and start!685262 (is-Cons!68197 s!7408)) b!7062006))

(declare-fun m!7782742 () Bool)

(assert (=> b!7062020 m!7782742))

(declare-fun m!7782744 () Bool)

(assert (=> b!7062020 m!7782744))

(declare-fun m!7782746 () Bool)

(assert (=> b!7062020 m!7782746))

(declare-fun m!7782748 () Bool)

(assert (=> b!7062020 m!7782748))

(declare-fun m!7782750 () Bool)

(assert (=> b!7062020 m!7782750))

(declare-fun m!7782752 () Bool)

(assert (=> b!7062020 m!7782752))

(declare-fun m!7782754 () Bool)

(assert (=> b!7062023 m!7782754))

(declare-fun m!7782756 () Bool)

(assert (=> b!7062023 m!7782756))

(declare-fun m!7782758 () Bool)

(assert (=> b!7062001 m!7782758))

(declare-fun m!7782760 () Bool)

(assert (=> b!7062027 m!7782760))

(declare-fun m!7782762 () Bool)

(assert (=> b!7062000 m!7782762))

(declare-fun m!7782764 () Bool)

(assert (=> b!7062000 m!7782764))

(declare-fun m!7782766 () Bool)

(assert (=> b!7062022 m!7782766))

(assert (=> b!7062022 m!7782764))

(declare-fun m!7782768 () Bool)

(assert (=> b!7062021 m!7782768))

(assert (=> b!7062002 m!7782762))

(declare-fun m!7782770 () Bool)

(assert (=> b!7061998 m!7782770))

(declare-fun m!7782772 () Bool)

(assert (=> b!7062025 m!7782772))

(declare-fun m!7782774 () Bool)

(assert (=> b!7062025 m!7782774))

(declare-fun m!7782776 () Bool)

(assert (=> start!685262 m!7782776))

(declare-fun m!7782778 () Bool)

(assert (=> start!685262 m!7782778))

(declare-fun m!7782780 () Bool)

(assert (=> start!685262 m!7782780))

(declare-fun m!7782782 () Bool)

(assert (=> b!7061997 m!7782782))

(declare-fun m!7782784 () Bool)

(assert (=> b!7061997 m!7782784))

(declare-fun m!7782786 () Bool)

(assert (=> b!7061997 m!7782786))

(assert (=> b!7061997 m!7782764))

(assert (=> b!7061997 m!7782764))

(declare-fun m!7782788 () Bool)

(assert (=> b!7061997 m!7782788))

(assert (=> b!7061997 m!7782764))

(declare-fun m!7782790 () Bool)

(assert (=> b!7062005 m!7782790))

(declare-fun m!7782792 () Bool)

(assert (=> b!7062005 m!7782792))

(declare-fun m!7782794 () Bool)

(assert (=> b!7062005 m!7782794))

(declare-fun m!7782796 () Bool)

(assert (=> b!7062005 m!7782796))

(declare-fun m!7782798 () Bool)

(assert (=> b!7062005 m!7782798))

(assert (=> b!7062015 m!7782762))

(assert (=> b!7062015 m!7782764))

(declare-fun m!7782800 () Bool)

(assert (=> b!7061999 m!7782800))

(declare-fun m!7782802 () Bool)

(assert (=> b!7062012 m!7782802))

(assert (=> b!7062004 m!7782764))

(declare-fun m!7782804 () Bool)

(assert (=> b!7062004 m!7782804))

(declare-fun m!7782806 () Bool)

(assert (=> b!7062004 m!7782806))

(declare-fun m!7782808 () Bool)

(assert (=> b!7062004 m!7782808))

(assert (=> b!7062004 m!7782764))

(declare-fun m!7782810 () Bool)

(assert (=> b!7062004 m!7782810))

(declare-fun m!7782812 () Bool)

(assert (=> b!7062004 m!7782812))

(declare-fun m!7782814 () Bool)

(assert (=> b!7062004 m!7782814))

(declare-fun m!7782816 () Bool)

(assert (=> b!7062004 m!7782816))

(declare-fun m!7782818 () Bool)

(assert (=> b!7062004 m!7782818))

(declare-fun m!7782820 () Bool)

(assert (=> b!7062004 m!7782820))

(declare-fun m!7782822 () Bool)

(assert (=> b!7062004 m!7782822))

(assert (=> b!7062004 m!7782754))

(assert (=> b!7062004 m!7782764))

(declare-fun m!7782824 () Bool)

(assert (=> b!7062004 m!7782824))

(declare-fun m!7782826 () Bool)

(assert (=> b!7062004 m!7782826))

(assert (=> b!7062004 m!7782764))

(declare-fun m!7782828 () Bool)

(assert (=> b!7062026 m!7782828))

(declare-fun m!7782830 () Bool)

(assert (=> b!7062026 m!7782830))

(declare-fun m!7782832 () Bool)

(assert (=> b!7062029 m!7782832))

(assert (=> b!7062013 m!7782800))

(declare-fun m!7782834 () Bool)

(assert (=> b!7061996 m!7782834))

(declare-fun m!7782836 () Bool)

(assert (=> b!7062019 m!7782836))

(assert (=> b!7062008 m!7782754))

(declare-fun m!7782838 () Bool)

(assert (=> b!7062008 m!7782838))

(declare-fun m!7782840 () Bool)

(assert (=> b!7062008 m!7782840))

(declare-fun m!7782842 () Bool)

(assert (=> b!7062008 m!7782842))

(assert (=> b!7062008 m!7782812))

(assert (=> b!7062008 m!7782826))

(declare-fun m!7782844 () Bool)

(assert (=> b!7062009 m!7782844))

(declare-fun m!7782846 () Bool)

(assert (=> b!7062009 m!7782846))

(declare-fun m!7782848 () Bool)

(assert (=> b!7062009 m!7782848))

(declare-fun m!7782850 () Bool)

(assert (=> b!7062009 m!7782850))

(declare-fun m!7782852 () Bool)

(assert (=> b!7062009 m!7782852))

(declare-fun m!7782854 () Bool)

(assert (=> b!7062009 m!7782854))

(assert (=> b!7062017 m!7782764))

(assert (=> b!7062017 m!7782820))

(declare-fun m!7782856 () Bool)

(assert (=> b!7062017 m!7782856))

(declare-fun m!7782858 () Bool)

(assert (=> b!7062017 m!7782858))

(assert (=> b!7062017 m!7782764))

(declare-fun m!7782860 () Bool)

(assert (=> b!7062018 m!7782860))

(declare-fun m!7782862 () Bool)

(assert (=> b!7062018 m!7782862))

(declare-fun m!7782864 () Bool)

(assert (=> b!7062018 m!7782864))

(declare-fun m!7782866 () Bool)

(assert (=> b!7062018 m!7782866))

(declare-fun m!7782868 () Bool)

(assert (=> b!7062018 m!7782868))

(declare-fun m!7782870 () Bool)

(assert (=> b!7062028 m!7782870))

(declare-fun m!7782872 () Bool)

(assert (=> b!7062028 m!7782872))

(assert (=> b!7062028 m!7782774))

(declare-fun m!7782874 () Bool)

(assert (=> b!7062028 m!7782874))

(assert (=> b!7062024 m!7782764))

(assert (=> b!7062024 m!7782764))

(assert (=> b!7062024 m!7782764))

(declare-fun m!7782876 () Bool)

(assert (=> b!7062024 m!7782876))

(assert (=> b!7062024 m!7782764))

(declare-fun m!7782878 () Bool)

(assert (=> b!7062024 m!7782878))

(declare-fun m!7782880 () Bool)

(assert (=> b!7062024 m!7782880))

(assert (=> b!7062024 m!7782856))

(declare-fun m!7782882 () Bool)

(assert (=> b!7062024 m!7782882))

(declare-fun m!7782884 () Bool)

(assert (=> b!7062011 m!7782884))

(declare-fun m!7782886 () Bool)

(assert (=> b!7062011 m!7782886))

(assert (=> b!7062011 m!7782774))

(declare-fun m!7782888 () Bool)

(assert (=> b!7062011 m!7782888))

(declare-fun m!7782890 () Bool)

(assert (=> b!7062011 m!7782890))

(declare-fun m!7782892 () Bool)

(assert (=> setNonEmpty!50022 m!7782892))

(push 1)

(assert (not b!7062004))

(assert (not b!7062015))

(assert (not b!7061996))

(assert (not b!7062022))

(assert (not b!7062002))

(assert (not b!7062024))

(assert (not b!7062008))

(assert (not b!7061995))

(assert (not b!7062013))

(assert (not b!7062017))

(assert (not b!7062000))

(assert (not start!685262))

(assert (not setNonEmpty!50022))

(assert (not b!7061997))

(assert (not b!7062028))

(assert (not b!7062011))

(assert (not b!7062020))

(assert (not b!7062006))

(assert (not b!7062005))

(assert (not b!7062001))

(assert (not b!7062029))

(assert (not b!7062009))

(assert tp_is_empty!44421)

(assert (not b!7062018))

(assert (not b!7062023))

(assert (not b!7062003))

(assert (not b!7061999))

(assert (not b!7061998))

(assert (not b!7062027))

(assert (not b!7062021))

(assert (not b!7062019))

(assert (not b!7062025))

(assert (not b!7062026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2207957 () Bool)

(declare-fun c!1316373 () Bool)

(assert (=> d!2207957 (= c!1316373 (isEmpty!39784 lt!2536885))))

(declare-fun e!4245679 () Bool)

(assert (=> d!2207957 (= (matchZipper!3138 lt!2536877 lt!2536885) e!4245679)))

(declare-fun b!7062151 () Bool)

(declare-fun nullableZipper!2673 ((Set Context!13188)) Bool)

(assert (=> b!7062151 (= e!4245679 (nullableZipper!2673 lt!2536877))))

(declare-fun b!7062152 () Bool)

(assert (=> b!7062152 (= e!4245679 (matchZipper!3138 (derivationStepZipper!3048 lt!2536877 (head!14376 lt!2536885)) (tail!13744 lt!2536885)))))

(assert (= (and d!2207957 c!1316373) b!7062151))

(assert (= (and d!2207957 (not c!1316373)) b!7062152))

(declare-fun m!7783046 () Bool)

(assert (=> d!2207957 m!7783046))

(declare-fun m!7783048 () Bool)

(assert (=> b!7062151 m!7783048))

(declare-fun m!7783050 () Bool)

(assert (=> b!7062152 m!7783050))

(assert (=> b!7062152 m!7783050))

(declare-fun m!7783052 () Bool)

(assert (=> b!7062152 m!7783052))

(declare-fun m!7783054 () Bool)

(assert (=> b!7062152 m!7783054))

(assert (=> b!7062152 m!7783052))

(assert (=> b!7062152 m!7783054))

(declare-fun m!7783056 () Bool)

(assert (=> b!7062152 m!7783056))

(assert (=> b!7062013 d!2207957))

(declare-fun b!7062163 () Bool)

(declare-fun res!2883421 () Bool)

(declare-fun e!4245685 () Bool)

(assert (=> b!7062163 (=> (not res!2883421) (not e!4245685))))

(declare-fun lt!2537100 () List!68321)

(declare-fun size!41171 (List!68321) Int)

(assert (=> b!7062163 (= res!2883421 (= (size!41171 lt!2537100) (+ (size!41171 (_1!37402 lt!2536891)) (size!41171 (_2!37402 lt!2536891)))))))

(declare-fun b!7062161 () Bool)

(declare-fun e!4245684 () List!68321)

(assert (=> b!7062161 (= e!4245684 (_2!37402 lt!2536891))))

(declare-fun d!2207959 () Bool)

(assert (=> d!2207959 e!4245685))

(declare-fun res!2883420 () Bool)

(assert (=> d!2207959 (=> (not res!2883420) (not e!4245685))))

(declare-fun content!13718 (List!68321) (Set C!35466))

(assert (=> d!2207959 (= res!2883420 (= (content!13718 lt!2537100) (set.union (content!13718 (_1!37402 lt!2536891)) (content!13718 (_2!37402 lt!2536891)))))))

(assert (=> d!2207959 (= lt!2537100 e!4245684)))

(declare-fun c!1316376 () Bool)

(assert (=> d!2207959 (= c!1316376 (is-Nil!68197 (_1!37402 lt!2536891)))))

(assert (=> d!2207959 (= (++!15694 (_1!37402 lt!2536891) (_2!37402 lt!2536891)) lt!2537100)))

(declare-fun b!7062162 () Bool)

(assert (=> b!7062162 (= e!4245684 (Cons!68197 (h!74645 (_1!37402 lt!2536891)) (++!15694 (t!382102 (_1!37402 lt!2536891)) (_2!37402 lt!2536891))))))

(declare-fun b!7062164 () Bool)

(assert (=> b!7062164 (= e!4245685 (or (not (= (_2!37402 lt!2536891) Nil!68197)) (= lt!2537100 (_1!37402 lt!2536891))))))

(assert (= (and d!2207959 c!1316376) b!7062161))

(assert (= (and d!2207959 (not c!1316376)) b!7062162))

(assert (= (and d!2207959 res!2883420) b!7062163))

(assert (= (and b!7062163 res!2883421) b!7062164))

(declare-fun m!7783058 () Bool)

(assert (=> b!7062163 m!7783058))

(declare-fun m!7783060 () Bool)

(assert (=> b!7062163 m!7783060))

(declare-fun m!7783062 () Bool)

(assert (=> b!7062163 m!7783062))

(declare-fun m!7783064 () Bool)

(assert (=> d!2207959 m!7783064))

(declare-fun m!7783066 () Bool)

(assert (=> d!2207959 m!7783066))

(declare-fun m!7783068 () Bool)

(assert (=> d!2207959 m!7783068))

(declare-fun m!7783070 () Bool)

(assert (=> b!7062162 m!7783070))

(assert (=> b!7062029 d!2207959))

(declare-fun d!2207961 () Bool)

(declare-fun dynLambda!27697 (Int Context!13188) (Set Context!13188))

(assert (=> d!2207961 (= (flatMap!2524 lt!2536871 lambda!422380) (dynLambda!27697 lambda!422380 lt!2536865))))

(declare-fun lt!2537103 () Unit!161872)

(declare-fun choose!53945 ((Set Context!13188) Context!13188 Int) Unit!161872)

(assert (=> d!2207961 (= lt!2537103 (choose!53945 lt!2536871 lt!2536865 lambda!422380))))

(assert (=> d!2207961 (= lt!2536871 (set.insert lt!2536865 (as set.empty (Set Context!13188))))))

(assert (=> d!2207961 (= (lemmaFlatMapOnSingletonSet!2033 lt!2536871 lt!2536865 lambda!422380) lt!2537103)))

(declare-fun b_lambda!269323 () Bool)

(assert (=> (not b_lambda!269323) (not d!2207961)))

(declare-fun bs!1879222 () Bool)

(assert (= bs!1879222 d!2207961))

(assert (=> bs!1879222 m!7782884))

(declare-fun m!7783072 () Bool)

(assert (=> bs!1879222 m!7783072))

(declare-fun m!7783074 () Bool)

(assert (=> bs!1879222 m!7783074))

(assert (=> bs!1879222 m!7782772))

(assert (=> b!7062011 d!2207961))

(declare-fun bs!1879223 () Bool)

(declare-fun d!2207963 () Bool)

(assert (= bs!1879223 (and d!2207963 b!7062011)))

(declare-fun lambda!422447 () Int)

(assert (=> bs!1879223 (= lambda!422447 lambda!422380)))

(assert (=> d!2207963 true))

(assert (=> d!2207963 (= (derivationStepZipper!3048 lt!2536871 (h!74645 s!7408)) (flatMap!2524 lt!2536871 lambda!422447))))

(declare-fun bs!1879224 () Bool)

(assert (= bs!1879224 d!2207963))

(declare-fun m!7783076 () Bool)

(assert (=> bs!1879224 m!7783076))

(assert (=> b!7062011 d!2207963))

(declare-fun d!2207965 () Bool)

(declare-fun choose!53946 ((Set Context!13188) Int) (Set Context!13188))

(assert (=> d!2207965 (= (flatMap!2524 lt!2536871 lambda!422380) (choose!53946 lt!2536871 lambda!422380))))

(declare-fun bs!1879225 () Bool)

(assert (= bs!1879225 d!2207965))

(declare-fun m!7783078 () Bool)

(assert (=> bs!1879225 m!7783078))

(assert (=> b!7062011 d!2207965))

(declare-fun d!2207967 () Bool)

(declare-fun forall!16547 (List!68320 Int) Bool)

(assert (=> d!2207967 (forall!16547 (++!15693 (exprs!7094 lt!2536893) (exprs!7094 ct2!306)) lambda!422379)))

(declare-fun lt!2537106 () Unit!161872)

(declare-fun choose!53947 (List!68320 List!68320 Int) Unit!161872)

(assert (=> d!2207967 (= lt!2537106 (choose!53947 (exprs!7094 lt!2536893) (exprs!7094 ct2!306) lambda!422379))))

(assert (=> d!2207967 (forall!16547 (exprs!7094 lt!2536893) lambda!422379)))

(assert (=> d!2207967 (= (lemmaConcatPreservesForall!909 (exprs!7094 lt!2536893) (exprs!7094 ct2!306) lambda!422379) lt!2537106)))

(declare-fun bs!1879226 () Bool)

(assert (= bs!1879226 d!2207967))

(assert (=> bs!1879226 m!7782872))

(assert (=> bs!1879226 m!7782872))

(declare-fun m!7783080 () Bool)

(assert (=> bs!1879226 m!7783080))

(declare-fun m!7783082 () Bool)

(assert (=> bs!1879226 m!7783082))

(declare-fun m!7783084 () Bool)

(assert (=> bs!1879226 m!7783084))

(assert (=> b!7062011 d!2207967))

(declare-fun b!7062177 () Bool)

(declare-fun call!641707 () (Set Context!13188))

(declare-fun e!4245694 () (Set Context!13188))

(assert (=> b!7062177 (= e!4245694 (set.union call!641707 (derivationStepZipperUp!2182 (Context!13189 (t!382101 (exprs!7094 lt!2536865))) (h!74645 s!7408))))))

(declare-fun b!7062178 () Bool)

(declare-fun e!4245692 () Bool)

(assert (=> b!7062178 (= e!4245692 (nullable!7281 (h!74644 (exprs!7094 lt!2536865))))))

(declare-fun d!2207969 () Bool)

(declare-fun c!1316384 () Bool)

(assert (=> d!2207969 (= c!1316384 e!4245692)))

(declare-fun res!2883424 () Bool)

(assert (=> d!2207969 (=> (not res!2883424) (not e!4245692))))

(assert (=> d!2207969 (= res!2883424 (is-Cons!68196 (exprs!7094 lt!2536865)))))

(assert (=> d!2207969 (= (derivationStepZipperUp!2182 lt!2536865 (h!74645 s!7408)) e!4245694)))

(declare-fun b!7062179 () Bool)

(declare-fun e!4245693 () (Set Context!13188))

(assert (=> b!7062179 (= e!4245693 call!641707)))

(declare-fun b!7062180 () Bool)

(assert (=> b!7062180 (= e!4245693 (as set.empty (Set Context!13188)))))

(declare-fun b!7062181 () Bool)

(assert (=> b!7062181 (= e!4245694 e!4245693)))

(declare-fun c!1316383 () Bool)

(assert (=> b!7062181 (= c!1316383 (is-Cons!68196 (exprs!7094 lt!2536865)))))

(declare-fun bm!641702 () Bool)

(assert (=> bm!641702 (= call!641707 (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536865)) (Context!13189 (t!382101 (exprs!7094 lt!2536865))) (h!74645 s!7408)))))

(assert (= (and d!2207969 res!2883424) b!7062178))

(assert (= (and d!2207969 c!1316384) b!7062177))

(assert (= (and d!2207969 (not c!1316384)) b!7062181))

(assert (= (and b!7062181 c!1316383) b!7062179))

(assert (= (and b!7062181 (not c!1316383)) b!7062180))

(assert (= (or b!7062177 b!7062179) bm!641702))

(declare-fun m!7783086 () Bool)

(assert (=> b!7062177 m!7783086))

(declare-fun m!7783088 () Bool)

(assert (=> b!7062178 m!7783088))

(declare-fun m!7783090 () Bool)

(assert (=> bm!641702 m!7783090))

(assert (=> b!7062011 d!2207969))

(declare-fun d!2207971 () Bool)

(declare-fun nullableFct!2789 (Regex!17598) Bool)

(assert (=> d!2207971 (= (nullable!7281 (h!74644 (exprs!7094 lt!2536893))) (nullableFct!2789 (h!74644 (exprs!7094 lt!2536893))))))

(declare-fun bs!1879227 () Bool)

(assert (= bs!1879227 d!2207971))

(declare-fun m!7783092 () Bool)

(assert (=> bs!1879227 m!7783092))

(assert (=> b!7062026 d!2207971))

(declare-fun d!2207973 () Bool)

(assert (=> d!2207973 (= (tail!13745 (exprs!7094 lt!2536893)) (t!382101 (exprs!7094 lt!2536893)))))

(assert (=> b!7062026 d!2207973))

(declare-fun d!2207975 () Bool)

(assert (=> d!2207975 (= (isEmpty!39784 (_1!37402 lt!2536891)) (is-Nil!68197 (_1!37402 lt!2536891)))))

(assert (=> b!7062027 d!2207975))

(declare-fun b!7062182 () Bool)

(declare-fun call!641708 () (Set Context!13188))

(declare-fun e!4245697 () (Set Context!13188))

(assert (=> b!7062182 (= e!4245697 (set.union call!641708 (derivationStepZipperUp!2182 (Context!13189 (t!382101 (exprs!7094 lt!2536851))) (h!74645 s!7408))))))

(declare-fun b!7062183 () Bool)

(declare-fun e!4245695 () Bool)

(assert (=> b!7062183 (= e!4245695 (nullable!7281 (h!74644 (exprs!7094 lt!2536851))))))

(declare-fun d!2207977 () Bool)

(declare-fun c!1316386 () Bool)

(assert (=> d!2207977 (= c!1316386 e!4245695)))

(declare-fun res!2883425 () Bool)

(assert (=> d!2207977 (=> (not res!2883425) (not e!4245695))))

(assert (=> d!2207977 (= res!2883425 (is-Cons!68196 (exprs!7094 lt!2536851)))))

(assert (=> d!2207977 (= (derivationStepZipperUp!2182 lt!2536851 (h!74645 s!7408)) e!4245697)))

(declare-fun b!7062184 () Bool)

(declare-fun e!4245696 () (Set Context!13188))

(assert (=> b!7062184 (= e!4245696 call!641708)))

(declare-fun b!7062185 () Bool)

(assert (=> b!7062185 (= e!4245696 (as set.empty (Set Context!13188)))))

(declare-fun b!7062186 () Bool)

(assert (=> b!7062186 (= e!4245697 e!4245696)))

(declare-fun c!1316385 () Bool)

(assert (=> b!7062186 (= c!1316385 (is-Cons!68196 (exprs!7094 lt!2536851)))))

(declare-fun bm!641703 () Bool)

(assert (=> bm!641703 (= call!641708 (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536851)) (Context!13189 (t!382101 (exprs!7094 lt!2536851))) (h!74645 s!7408)))))

(assert (= (and d!2207977 res!2883425) b!7062183))

(assert (= (and d!2207977 c!1316386) b!7062182))

(assert (= (and d!2207977 (not c!1316386)) b!7062186))

(assert (= (and b!7062186 c!1316385) b!7062184))

(assert (= (and b!7062186 (not c!1316385)) b!7062185))

(assert (= (or b!7062182 b!7062184) bm!641703))

(declare-fun m!7783094 () Bool)

(assert (=> b!7062182 m!7783094))

(declare-fun m!7783096 () Bool)

(assert (=> b!7062183 m!7783096))

(declare-fun m!7783098 () Bool)

(assert (=> bm!641703 m!7783098))

(assert (=> b!7062008 d!2207977))

(declare-fun call!641709 () (Set Context!13188))

(declare-fun e!4245700 () (Set Context!13188))

(declare-fun b!7062187 () Bool)

(assert (=> b!7062187 (= e!4245700 (set.union call!641709 (derivationStepZipperUp!2182 (Context!13189 (t!382101 (exprs!7094 lt!2536851))) lt!2536842)))))

(declare-fun b!7062188 () Bool)

(declare-fun e!4245698 () Bool)

(assert (=> b!7062188 (= e!4245698 (nullable!7281 (h!74644 (exprs!7094 lt!2536851))))))

(declare-fun d!2207979 () Bool)

(declare-fun c!1316388 () Bool)

(assert (=> d!2207979 (= c!1316388 e!4245698)))

(declare-fun res!2883426 () Bool)

(assert (=> d!2207979 (=> (not res!2883426) (not e!4245698))))

(assert (=> d!2207979 (= res!2883426 (is-Cons!68196 (exprs!7094 lt!2536851)))))

(assert (=> d!2207979 (= (derivationStepZipperUp!2182 lt!2536851 lt!2536842) e!4245700)))

(declare-fun b!7062189 () Bool)

(declare-fun e!4245699 () (Set Context!13188))

(assert (=> b!7062189 (= e!4245699 call!641709)))

(declare-fun b!7062190 () Bool)

(assert (=> b!7062190 (= e!4245699 (as set.empty (Set Context!13188)))))

(declare-fun b!7062191 () Bool)

(assert (=> b!7062191 (= e!4245700 e!4245699)))

(declare-fun c!1316387 () Bool)

(assert (=> b!7062191 (= c!1316387 (is-Cons!68196 (exprs!7094 lt!2536851)))))

(declare-fun bm!641704 () Bool)

(assert (=> bm!641704 (= call!641709 (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536851)) (Context!13189 (t!382101 (exprs!7094 lt!2536851))) lt!2536842))))

(assert (= (and d!2207979 res!2883426) b!7062188))

(assert (= (and d!2207979 c!1316388) b!7062187))

(assert (= (and d!2207979 (not c!1316388)) b!7062191))

(assert (= (and b!7062191 c!1316387) b!7062189))

(assert (= (and b!7062191 (not c!1316387)) b!7062190))

(assert (= (or b!7062187 b!7062189) bm!641704))

(declare-fun m!7783100 () Bool)

(assert (=> b!7062187 m!7783100))

(assert (=> b!7062188 m!7783096))

(declare-fun m!7783102 () Bool)

(assert (=> bm!641704 m!7783102))

(assert (=> b!7062008 d!2207979))

(declare-fun d!2207981 () Bool)

(assert (=> d!2207981 (= (flatMap!2524 lt!2536896 lambda!422380) (dynLambda!27697 lambda!422380 lt!2536851))))

(declare-fun lt!2537107 () Unit!161872)

(assert (=> d!2207981 (= lt!2537107 (choose!53945 lt!2536896 lt!2536851 lambda!422380))))

(assert (=> d!2207981 (= lt!2536896 (set.insert lt!2536851 (as set.empty (Set Context!13188))))))

(assert (=> d!2207981 (= (lemmaFlatMapOnSingletonSet!2033 lt!2536896 lt!2536851 lambda!422380) lt!2537107)))

(declare-fun b_lambda!269325 () Bool)

(assert (=> (not b_lambda!269325) (not d!2207981)))

(declare-fun bs!1879228 () Bool)

(assert (= bs!1879228 d!2207981))

(assert (=> bs!1879228 m!7782826))

(declare-fun m!7783104 () Bool)

(assert (=> bs!1879228 m!7783104))

(declare-fun m!7783106 () Bool)

(assert (=> bs!1879228 m!7783106))

(assert (=> bs!1879228 m!7782804))

(assert (=> b!7062008 d!2207981))

(declare-fun d!2207983 () Bool)

(assert (=> d!2207983 (= (flatMap!2524 lt!2536896 lambda!422380) (choose!53946 lt!2536896 lambda!422380))))

(declare-fun bs!1879229 () Bool)

(assert (= bs!1879229 d!2207983))

(declare-fun m!7783108 () Bool)

(assert (=> bs!1879229 m!7783108))

(assert (=> b!7062008 d!2207983))

(declare-fun d!2207985 () Bool)

(assert (=> d!2207985 (= (head!14376 (_1!37402 lt!2536891)) (h!74645 (_1!37402 lt!2536891)))))

(assert (=> b!7062008 d!2207985))

(declare-fun bs!1879230 () Bool)

(declare-fun d!2207987 () Bool)

(assert (= bs!1879230 (and d!2207987 b!7062011)))

(declare-fun lambda!422448 () Int)

(assert (=> bs!1879230 (= (= lt!2536842 (h!74645 s!7408)) (= lambda!422448 lambda!422380))))

(declare-fun bs!1879231 () Bool)

(assert (= bs!1879231 (and d!2207987 d!2207963)))

(assert (=> bs!1879231 (= (= lt!2536842 (h!74645 s!7408)) (= lambda!422448 lambda!422447))))

(assert (=> d!2207987 true))

(assert (=> d!2207987 (= (derivationStepZipper!3048 lt!2536896 lt!2536842) (flatMap!2524 lt!2536896 lambda!422448))))

(declare-fun bs!1879232 () Bool)

(assert (= bs!1879232 d!2207987))

(declare-fun m!7783110 () Bool)

(assert (=> bs!1879232 m!7783110))

(assert (=> b!7062008 d!2207987))

(declare-fun lt!2537110 () List!68320)

(declare-fun e!4245706 () Bool)

(declare-fun b!7062203 () Bool)

(assert (=> b!7062203 (= e!4245706 (or (not (= (exprs!7094 ct2!306) Nil!68196)) (= lt!2537110 (exprs!7094 lt!2536893))))))

(declare-fun b!7062202 () Bool)

(declare-fun res!2883432 () Bool)

(assert (=> b!7062202 (=> (not res!2883432) (not e!4245706))))

(declare-fun size!41172 (List!68320) Int)

(assert (=> b!7062202 (= res!2883432 (= (size!41172 lt!2537110) (+ (size!41172 (exprs!7094 lt!2536893)) (size!41172 (exprs!7094 ct2!306)))))))

(declare-fun b!7062200 () Bool)

(declare-fun e!4245705 () List!68320)

(assert (=> b!7062200 (= e!4245705 (exprs!7094 ct2!306))))

(declare-fun b!7062201 () Bool)

(assert (=> b!7062201 (= e!4245705 (Cons!68196 (h!74644 (exprs!7094 lt!2536893)) (++!15693 (t!382101 (exprs!7094 lt!2536893)) (exprs!7094 ct2!306))))))

(declare-fun d!2207989 () Bool)

(assert (=> d!2207989 e!4245706))

(declare-fun res!2883431 () Bool)

(assert (=> d!2207989 (=> (not res!2883431) (not e!4245706))))

(declare-fun content!13719 (List!68320) (Set Regex!17598))

(assert (=> d!2207989 (= res!2883431 (= (content!13719 lt!2537110) (set.union (content!13719 (exprs!7094 lt!2536893)) (content!13719 (exprs!7094 ct2!306)))))))

(assert (=> d!2207989 (= lt!2537110 e!4245705)))

(declare-fun c!1316391 () Bool)

(assert (=> d!2207989 (= c!1316391 (is-Nil!68196 (exprs!7094 lt!2536893)))))

(assert (=> d!2207989 (= (++!15693 (exprs!7094 lt!2536893) (exprs!7094 ct2!306)) lt!2537110)))

(assert (= (and d!2207989 c!1316391) b!7062200))

(assert (= (and d!2207989 (not c!1316391)) b!7062201))

(assert (= (and d!2207989 res!2883431) b!7062202))

(assert (= (and b!7062202 res!2883432) b!7062203))

(declare-fun m!7783112 () Bool)

(assert (=> b!7062202 m!7783112))

(declare-fun m!7783114 () Bool)

(assert (=> b!7062202 m!7783114))

(declare-fun m!7783116 () Bool)

(assert (=> b!7062202 m!7783116))

(declare-fun m!7783118 () Bool)

(assert (=> b!7062201 m!7783118))

(declare-fun m!7783120 () Bool)

(assert (=> d!2207989 m!7783120))

(declare-fun m!7783122 () Bool)

(assert (=> d!2207989 m!7783122))

(declare-fun m!7783124 () Bool)

(assert (=> d!2207989 m!7783124))

(assert (=> b!7062028 d!2207989))

(assert (=> b!7062028 d!2207967))

(declare-fun d!2207991 () Bool)

(declare-fun e!4245709 () Bool)

(assert (=> d!2207991 e!4245709))

(declare-fun res!2883435 () Bool)

(assert (=> d!2207991 (=> (not res!2883435) (not e!4245709))))

(declare-fun lt!2537113 () Context!13188)

(declare-fun dynLambda!27698 (Int Context!13188) Context!13188)

(assert (=> d!2207991 (= res!2883435 (= lt!2536848 (dynLambda!27698 lambda!422378 lt!2537113)))))

(declare-fun choose!53948 ((Set Context!13188) Int Context!13188) Context!13188)

(assert (=> d!2207991 (= lt!2537113 (choose!53948 z1!570 lambda!422378 lt!2536848))))

(assert (=> d!2207991 (set.member lt!2536848 (map!15930 z1!570 lambda!422378))))

(assert (=> d!2207991 (= (mapPost2!427 z1!570 lambda!422378 lt!2536848) lt!2537113)))

(declare-fun b!7062207 () Bool)

(assert (=> b!7062207 (= e!4245709 (set.member lt!2537113 z1!570))))

(assert (= (and d!2207991 res!2883435) b!7062207))

(declare-fun b_lambda!269327 () Bool)

(assert (=> (not b_lambda!269327) (not d!2207991)))

(declare-fun m!7783126 () Bool)

(assert (=> d!2207991 m!7783126))

(declare-fun m!7783128 () Bool)

(assert (=> d!2207991 m!7783128))

(declare-fun m!7783130 () Bool)

(assert (=> d!2207991 m!7783130))

(declare-fun m!7783132 () Bool)

(assert (=> d!2207991 m!7783132))

(declare-fun m!7783134 () Bool)

(assert (=> b!7062207 m!7783134))

(assert (=> b!7062028 d!2207991))

(declare-fun bs!1879233 () Bool)

(declare-fun d!2207993 () Bool)

(assert (= bs!1879233 (and d!2207993 b!7062009)))

(declare-fun lambda!422451 () Int)

(assert (=> bs!1879233 (= lambda!422451 lambda!422377)))

(assert (=> d!2207993 true))

(assert (=> d!2207993 (exists!3610 lt!2536882 lambda!422451)))

(declare-fun lt!2537116 () Unit!161872)

(declare-fun choose!53949 (List!68322 List!68321) Unit!161872)

(assert (=> d!2207993 (= lt!2537116 (choose!53949 lt!2536882 s!7408))))

(declare-fun content!13720 (List!68322) (Set Context!13188))

(assert (=> d!2207993 (matchZipper!3138 (content!13720 lt!2536882) s!7408)))

(assert (=> d!2207993 (= (lemmaZipperMatchesExistsMatchingContext!519 lt!2536882 s!7408) lt!2537116)))

(declare-fun bs!1879234 () Bool)

(assert (= bs!1879234 d!2207993))

(declare-fun m!7783136 () Bool)

(assert (=> bs!1879234 m!7783136))

(declare-fun m!7783138 () Bool)

(assert (=> bs!1879234 m!7783138))

(declare-fun m!7783140 () Bool)

(assert (=> bs!1879234 m!7783140))

(assert (=> bs!1879234 m!7783140))

(declare-fun m!7783142 () Bool)

(assert (=> bs!1879234 m!7783142))

(assert (=> b!7062009 d!2207993))

(declare-fun d!2207995 () Bool)

(declare-fun e!4245712 () Bool)

(assert (=> d!2207995 e!4245712))

(declare-fun res!2883438 () Bool)

(assert (=> d!2207995 (=> (not res!2883438) (not e!4245712))))

(declare-fun lt!2537119 () Context!13188)

(declare-fun dynLambda!27699 (Int Context!13188) Bool)

(assert (=> d!2207995 (= res!2883438 (dynLambda!27699 lambda!422377 lt!2537119))))

(declare-fun getWitness!1677 (List!68322 Int) Context!13188)

(assert (=> d!2207995 (= lt!2537119 (getWitness!1677 (toList!10939 lt!2536890) lambda!422377))))

(declare-fun exists!3612 ((Set Context!13188) Int) Bool)

(assert (=> d!2207995 (exists!3612 lt!2536890 lambda!422377)))

(assert (=> d!2207995 (= (getWitness!1675 lt!2536890 lambda!422377) lt!2537119)))

(declare-fun b!7062210 () Bool)

(assert (=> b!7062210 (= e!4245712 (set.member lt!2537119 lt!2536890))))

(assert (= (and d!2207995 res!2883438) b!7062210))

(declare-fun b_lambda!269329 () Bool)

(assert (=> (not b_lambda!269329) (not d!2207995)))

(declare-fun m!7783144 () Bool)

(assert (=> d!2207995 m!7783144))

(assert (=> d!2207995 m!7782848))

(assert (=> d!2207995 m!7782848))

(declare-fun m!7783146 () Bool)

(assert (=> d!2207995 m!7783146))

(declare-fun m!7783148 () Bool)

(assert (=> d!2207995 m!7783148))

(declare-fun m!7783150 () Bool)

(assert (=> b!7062210 m!7783150))

(assert (=> b!7062009 d!2207995))

(declare-fun bs!1879235 () Bool)

(declare-fun d!2207997 () Bool)

(assert (= bs!1879235 (and d!2207997 b!7062009)))

(declare-fun lambda!422454 () Int)

(assert (=> bs!1879235 (not (= lambda!422454 lambda!422377))))

(declare-fun bs!1879236 () Bool)

(assert (= bs!1879236 (and d!2207997 d!2207993)))

(assert (=> bs!1879236 (not (= lambda!422454 lambda!422451))))

(assert (=> d!2207997 true))

(declare-fun order!28353 () Int)

(declare-fun dynLambda!27700 (Int Int) Int)

(assert (=> d!2207997 (< (dynLambda!27700 order!28353 lambda!422377) (dynLambda!27700 order!28353 lambda!422454))))

(declare-fun forall!16548 (List!68322 Int) Bool)

(assert (=> d!2207997 (= (exists!3610 lt!2536882 lambda!422377) (not (forall!16548 lt!2536882 lambda!422454)))))

(declare-fun bs!1879237 () Bool)

(assert (= bs!1879237 d!2207997))

(declare-fun m!7783152 () Bool)

(assert (=> bs!1879237 m!7783152))

(assert (=> b!7062009 d!2207997))

(declare-fun d!2207999 () Bool)

(declare-fun c!1316394 () Bool)

(assert (=> d!2207999 (= c!1316394 (isEmpty!39784 s!7408))))

(declare-fun e!4245713 () Bool)

(assert (=> d!2207999 (= (matchZipper!3138 lt!2536838 s!7408) e!4245713)))

(declare-fun b!7062213 () Bool)

(assert (=> b!7062213 (= e!4245713 (nullableZipper!2673 lt!2536838))))

(declare-fun b!7062214 () Bool)

(assert (=> b!7062214 (= e!4245713 (matchZipper!3138 (derivationStepZipper!3048 lt!2536838 (head!14376 s!7408)) (tail!13744 s!7408)))))

(assert (= (and d!2207999 c!1316394) b!7062213))

(assert (= (and d!2207999 (not c!1316394)) b!7062214))

(declare-fun m!7783154 () Bool)

(assert (=> d!2207999 m!7783154))

(declare-fun m!7783156 () Bool)

(assert (=> b!7062213 m!7783156))

(declare-fun m!7783158 () Bool)

(assert (=> b!7062214 m!7783158))

(assert (=> b!7062214 m!7783158))

(declare-fun m!7783160 () Bool)

(assert (=> b!7062214 m!7783160))

(declare-fun m!7783162 () Bool)

(assert (=> b!7062214 m!7783162))

(assert (=> b!7062214 m!7783160))

(assert (=> b!7062214 m!7783162))

(declare-fun m!7783164 () Bool)

(assert (=> b!7062214 m!7783164))

(assert (=> b!7062009 d!2207999))

(declare-fun d!2208001 () Bool)

(declare-fun e!4245716 () Bool)

(assert (=> d!2208001 e!4245716))

(declare-fun res!2883441 () Bool)

(assert (=> d!2208001 (=> (not res!2883441) (not e!4245716))))

(declare-fun lt!2537122 () List!68322)

(declare-fun noDuplicate!2703 (List!68322) Bool)

(assert (=> d!2208001 (= res!2883441 (noDuplicate!2703 lt!2537122))))

(declare-fun choose!53950 ((Set Context!13188)) List!68322)

(assert (=> d!2208001 (= lt!2537122 (choose!53950 lt!2536890))))

(assert (=> d!2208001 (= (toList!10939 lt!2536890) lt!2537122)))

(declare-fun b!7062217 () Bool)

(assert (=> b!7062217 (= e!4245716 (= (content!13720 lt!2537122) lt!2536890))))

(assert (= (and d!2208001 res!2883441) b!7062217))

(declare-fun m!7783166 () Bool)

(assert (=> d!2208001 m!7783166))

(declare-fun m!7783168 () Bool)

(assert (=> d!2208001 m!7783168))

(declare-fun m!7783170 () Bool)

(assert (=> b!7062217 m!7783170))

(assert (=> b!7062009 d!2208001))

(declare-fun d!2208003 () Bool)

(declare-fun e!4245717 () Bool)

(assert (=> d!2208003 e!4245717))

(declare-fun res!2883442 () Bool)

(assert (=> d!2208003 (=> (not res!2883442) (not e!4245717))))

(declare-fun lt!2537123 () List!68322)

(assert (=> d!2208003 (= res!2883442 (noDuplicate!2703 lt!2537123))))

(assert (=> d!2208003 (= lt!2537123 (choose!53950 z1!570))))

(assert (=> d!2208003 (= (toList!10939 z1!570) lt!2537123)))

(declare-fun b!7062218 () Bool)

(assert (=> b!7062218 (= e!4245717 (= (content!13720 lt!2537123) z1!570))))

(assert (= (and d!2208003 res!2883442) b!7062218))

(declare-fun m!7783172 () Bool)

(assert (=> d!2208003 m!7783172))

(declare-fun m!7783174 () Bool)

(assert (=> d!2208003 m!7783174))

(declare-fun m!7783176 () Bool)

(assert (=> b!7062218 m!7783176))

(assert (=> b!7062004 d!2208003))

(declare-fun d!2208005 () Bool)

(declare-fun lt!2537126 () Int)

(assert (=> d!2208005 (>= lt!2537126 0)))

(declare-fun e!4245720 () Int)

(assert (=> d!2208005 (= lt!2537126 e!4245720)))

(declare-fun c!1316398 () Bool)

(assert (=> d!2208005 (= c!1316398 (is-Cons!68196 (exprs!7094 lt!2536893)))))

(assert (=> d!2208005 (= (contextDepthTotal!534 lt!2536893) lt!2537126)))

(declare-fun b!7062223 () Bool)

(declare-fun regexDepthTotal!321 (Regex!17598) Int)

(assert (=> b!7062223 (= e!4245720 (+ (regexDepthTotal!321 (h!74644 (exprs!7094 lt!2536893))) (contextDepthTotal!534 (Context!13189 (t!382101 (exprs!7094 lt!2536893))))))))

(declare-fun b!7062224 () Bool)

(assert (=> b!7062224 (= e!4245720 1)))

(assert (= (and d!2208005 c!1316398) b!7062223))

(assert (= (and d!2208005 (not c!1316398)) b!7062224))

(declare-fun m!7783178 () Bool)

(assert (=> b!7062223 m!7783178))

(declare-fun m!7783180 () Bool)

(assert (=> b!7062223 m!7783180))

(assert (=> b!7062004 d!2208005))

(declare-fun d!2208007 () Bool)

(declare-fun lt!2537129 () Int)

(assert (=> d!2208007 (>= lt!2537129 0)))

(declare-fun e!4245723 () Int)

(assert (=> d!2208007 (= lt!2537129 e!4245723)))

(declare-fun c!1316401 () Bool)

(assert (=> d!2208007 (= c!1316401 (is-Cons!68198 lt!2536883))))

(assert (=> d!2208007 (= (zipperDepthTotal!563 lt!2536883) lt!2537129)))

(declare-fun b!7062229 () Bool)

(assert (=> b!7062229 (= e!4245723 (+ (contextDepthTotal!534 (h!74646 lt!2536883)) (zipperDepthTotal!563 (t!382103 lt!2536883))))))

(declare-fun b!7062230 () Bool)

(assert (=> b!7062230 (= e!4245723 0)))

(assert (= (and d!2208007 c!1316401) b!7062229))

(assert (= (and d!2208007 (not c!1316401)) b!7062230))

(declare-fun m!7783182 () Bool)

(assert (=> b!7062229 m!7783182))

(declare-fun m!7783184 () Bool)

(assert (=> b!7062229 m!7783184))

(assert (=> b!7062004 d!2208007))

(declare-fun d!2208009 () Bool)

(assert (=> d!2208009 (= (map!15930 lt!2536896 lambda!422378) (set.insert (dynLambda!27698 lambda!422378 lt!2536851) (as set.empty (Set Context!13188))))))

(declare-fun lt!2537132 () Unit!161872)

(declare-fun choose!53951 ((Set Context!13188) Context!13188 Int) Unit!161872)

(assert (=> d!2208009 (= lt!2537132 (choose!53951 lt!2536896 lt!2536851 lambda!422378))))

(assert (=> d!2208009 (= lt!2536896 (set.insert lt!2536851 (as set.empty (Set Context!13188))))))

(assert (=> d!2208009 (= (lemmaMapOnSingletonSet!415 lt!2536896 lt!2536851 lambda!422378) lt!2537132)))

(declare-fun b_lambda!269331 () Bool)

(assert (=> (not b_lambda!269331) (not d!2208009)))

(declare-fun bs!1879238 () Bool)

(assert (= bs!1879238 d!2208009))

(declare-fun m!7783186 () Bool)

(assert (=> bs!1879238 m!7783186))

(assert (=> bs!1879238 m!7783186))

(declare-fun m!7783188 () Bool)

(assert (=> bs!1879238 m!7783188))

(declare-fun m!7783190 () Bool)

(assert (=> bs!1879238 m!7783190))

(assert (=> bs!1879238 m!7782808))

(assert (=> bs!1879238 m!7782804))

(assert (=> b!7062004 d!2208009))

(assert (=> b!7062004 d!2207983))

(declare-fun e!4245725 () Bool)

(declare-fun lt!2537133 () List!68320)

(declare-fun b!7062234 () Bool)

(assert (=> b!7062234 (= e!4245725 (or (not (= (exprs!7094 ct2!306) Nil!68196)) (= lt!2537133 lt!2536870)))))

(declare-fun b!7062233 () Bool)

(declare-fun res!2883444 () Bool)

(assert (=> b!7062233 (=> (not res!2883444) (not e!4245725))))

(assert (=> b!7062233 (= res!2883444 (= (size!41172 lt!2537133) (+ (size!41172 lt!2536870) (size!41172 (exprs!7094 ct2!306)))))))

(declare-fun b!7062231 () Bool)

(declare-fun e!4245724 () List!68320)

(assert (=> b!7062231 (= e!4245724 (exprs!7094 ct2!306))))

(declare-fun b!7062232 () Bool)

(assert (=> b!7062232 (= e!4245724 (Cons!68196 (h!74644 lt!2536870) (++!15693 (t!382101 lt!2536870) (exprs!7094 ct2!306))))))

(declare-fun d!2208011 () Bool)

(assert (=> d!2208011 e!4245725))

(declare-fun res!2883443 () Bool)

(assert (=> d!2208011 (=> (not res!2883443) (not e!4245725))))

(assert (=> d!2208011 (= res!2883443 (= (content!13719 lt!2537133) (set.union (content!13719 lt!2536870) (content!13719 (exprs!7094 ct2!306)))))))

(assert (=> d!2208011 (= lt!2537133 e!4245724)))

(declare-fun c!1316402 () Bool)

(assert (=> d!2208011 (= c!1316402 (is-Nil!68196 lt!2536870))))

(assert (=> d!2208011 (= (++!15693 lt!2536870 (exprs!7094 ct2!306)) lt!2537133)))

(assert (= (and d!2208011 c!1316402) b!7062231))

(assert (= (and d!2208011 (not c!1316402)) b!7062232))

(assert (= (and d!2208011 res!2883443) b!7062233))

(assert (= (and b!7062233 res!2883444) b!7062234))

(declare-fun m!7783192 () Bool)

(assert (=> b!7062233 m!7783192))

(declare-fun m!7783194 () Bool)

(assert (=> b!7062233 m!7783194))

(assert (=> b!7062233 m!7783116))

(declare-fun m!7783196 () Bool)

(assert (=> b!7062232 m!7783196))

(declare-fun m!7783198 () Bool)

(assert (=> d!2208011 m!7783198))

(declare-fun m!7783200 () Bool)

(assert (=> d!2208011 m!7783200))

(assert (=> d!2208011 m!7783124))

(assert (=> b!7062004 d!2208011))

(assert (=> b!7062004 d!2207977))

(declare-fun d!2208013 () Bool)

(assert (=> d!2208013 (forall!16547 (++!15693 lt!2536870 (exprs!7094 ct2!306)) lambda!422379)))

(declare-fun lt!2537134 () Unit!161872)

(assert (=> d!2208013 (= lt!2537134 (choose!53947 lt!2536870 (exprs!7094 ct2!306) lambda!422379))))

(assert (=> d!2208013 (forall!16547 lt!2536870 lambda!422379)))

(assert (=> d!2208013 (= (lemmaConcatPreservesForall!909 lt!2536870 (exprs!7094 ct2!306) lambda!422379) lt!2537134)))

(declare-fun bs!1879239 () Bool)

(assert (= bs!1879239 d!2208013))

(assert (=> bs!1879239 m!7782820))

(assert (=> bs!1879239 m!7782820))

(declare-fun m!7783202 () Bool)

(assert (=> bs!1879239 m!7783202))

(declare-fun m!7783204 () Bool)

(assert (=> bs!1879239 m!7783204))

(declare-fun m!7783206 () Bool)

(assert (=> bs!1879239 m!7783206))

(assert (=> b!7062004 d!2208013))

(assert (=> b!7062004 d!2207981))

(declare-fun d!2208015 () Bool)

(assert (=> d!2208015 (<= (contextDepthTotal!534 lt!2536893) (zipperDepthTotal!563 lt!2536883))))

(declare-fun lt!2537137 () Unit!161872)

(declare-fun choose!53952 (List!68322 Context!13188) Unit!161872)

(assert (=> d!2208015 (= lt!2537137 (choose!53952 lt!2536883 lt!2536893))))

(declare-fun contains!20491 (List!68322 Context!13188) Bool)

(assert (=> d!2208015 (contains!20491 lt!2536883 lt!2536893)))

(assert (=> d!2208015 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!101 lt!2536883 lt!2536893) lt!2537137)))

(declare-fun bs!1879240 () Bool)

(assert (= bs!1879240 d!2208015))

(assert (=> bs!1879240 m!7782824))

(assert (=> bs!1879240 m!7782822))

(declare-fun m!7783208 () Bool)

(assert (=> bs!1879240 m!7783208))

(declare-fun m!7783210 () Bool)

(assert (=> bs!1879240 m!7783210))

(assert (=> b!7062004 d!2208015))

(declare-fun d!2208017 () Bool)

(declare-fun lt!2537138 () Int)

(assert (=> d!2208017 (>= lt!2537138 0)))

(declare-fun e!4245726 () Int)

(assert (=> d!2208017 (= lt!2537138 e!4245726)))

(declare-fun c!1316404 () Bool)

(assert (=> d!2208017 (= c!1316404 (is-Cons!68196 (exprs!7094 lt!2536851)))))

(assert (=> d!2208017 (= (contextDepthTotal!534 lt!2536851) lt!2537138)))

(declare-fun b!7062235 () Bool)

(assert (=> b!7062235 (= e!4245726 (+ (regexDepthTotal!321 (h!74644 (exprs!7094 lt!2536851))) (contextDepthTotal!534 (Context!13189 (t!382101 (exprs!7094 lt!2536851))))))))

(declare-fun b!7062236 () Bool)

(assert (=> b!7062236 (= e!4245726 1)))

(assert (= (and d!2208017 c!1316404) b!7062235))

(assert (= (and d!2208017 (not c!1316404)) b!7062236))

(declare-fun m!7783212 () Bool)

(assert (=> b!7062235 m!7783212))

(declare-fun m!7783214 () Bool)

(assert (=> b!7062235 m!7783214))

(assert (=> b!7062004 d!2208017))

(declare-fun d!2208019 () Bool)

(declare-fun choose!53953 ((Set Context!13188) Int) (Set Context!13188))

(assert (=> d!2208019 (= (map!15930 lt!2536896 lambda!422378) (choose!53953 lt!2536896 lambda!422378))))

(declare-fun bs!1879241 () Bool)

(assert (= bs!1879241 d!2208019))

(declare-fun m!7783216 () Bool)

(assert (=> bs!1879241 m!7783216))

(assert (=> b!7062004 d!2208019))

(declare-fun d!2208021 () Bool)

(assert (=> d!2208021 (= (flatMap!2524 lt!2536855 lambda!422380) (dynLambda!27697 lambda!422380 lt!2536856))))

(declare-fun lt!2537139 () Unit!161872)

(assert (=> d!2208021 (= lt!2537139 (choose!53945 lt!2536855 lt!2536856 lambda!422380))))

(assert (=> d!2208021 (= lt!2536855 (set.insert lt!2536856 (as set.empty (Set Context!13188))))))

(assert (=> d!2208021 (= (lemmaFlatMapOnSingletonSet!2033 lt!2536855 lt!2536856 lambda!422380) lt!2537139)))

(declare-fun b_lambda!269333 () Bool)

(assert (=> (not b_lambda!269333) (not d!2208021)))

(declare-fun bs!1879242 () Bool)

(assert (= bs!1879242 d!2208021))

(assert (=> bs!1879242 m!7782880))

(declare-fun m!7783218 () Bool)

(assert (=> bs!1879242 m!7783218))

(declare-fun m!7783220 () Bool)

(assert (=> bs!1879242 m!7783220))

(assert (=> bs!1879242 m!7782882))

(assert (=> b!7062024 d!2208021))

(assert (=> b!7062024 d!2208013))

(declare-fun b!7062237 () Bool)

(declare-fun e!4245729 () (Set Context!13188))

(declare-fun call!641710 () (Set Context!13188))

(assert (=> b!7062237 (= e!4245729 (set.union call!641710 (derivationStepZipperUp!2182 (Context!13189 (t!382101 (exprs!7094 lt!2536856))) (h!74645 s!7408))))))

(declare-fun b!7062238 () Bool)

(declare-fun e!4245727 () Bool)

(assert (=> b!7062238 (= e!4245727 (nullable!7281 (h!74644 (exprs!7094 lt!2536856))))))

(declare-fun d!2208023 () Bool)

(declare-fun c!1316406 () Bool)

(assert (=> d!2208023 (= c!1316406 e!4245727)))

(declare-fun res!2883445 () Bool)

(assert (=> d!2208023 (=> (not res!2883445) (not e!4245727))))

(assert (=> d!2208023 (= res!2883445 (is-Cons!68196 (exprs!7094 lt!2536856)))))

(assert (=> d!2208023 (= (derivationStepZipperUp!2182 lt!2536856 (h!74645 s!7408)) e!4245729)))

(declare-fun b!7062239 () Bool)

(declare-fun e!4245728 () (Set Context!13188))

(assert (=> b!7062239 (= e!4245728 call!641710)))

(declare-fun b!7062240 () Bool)

(assert (=> b!7062240 (= e!4245728 (as set.empty (Set Context!13188)))))

(declare-fun b!7062241 () Bool)

(assert (=> b!7062241 (= e!4245729 e!4245728)))

(declare-fun c!1316405 () Bool)

(assert (=> b!7062241 (= c!1316405 (is-Cons!68196 (exprs!7094 lt!2536856)))))

(declare-fun bm!641705 () Bool)

(assert (=> bm!641705 (= call!641710 (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536856)) (Context!13189 (t!382101 (exprs!7094 lt!2536856))) (h!74645 s!7408)))))

(assert (= (and d!2208023 res!2883445) b!7062238))

(assert (= (and d!2208023 c!1316406) b!7062237))

(assert (= (and d!2208023 (not c!1316406)) b!7062241))

(assert (= (and b!7062241 c!1316405) b!7062239))

(assert (= (and b!7062241 (not c!1316405)) b!7062240))

(assert (= (or b!7062237 b!7062239) bm!641705))

(declare-fun m!7783222 () Bool)

(assert (=> b!7062237 m!7783222))

(declare-fun m!7783224 () Bool)

(assert (=> b!7062238 m!7783224))

(declare-fun m!7783226 () Bool)

(assert (=> bm!641705 m!7783226))

(assert (=> b!7062024 d!2208023))

(declare-fun bs!1879243 () Bool)

(declare-fun d!2208025 () Bool)

(assert (= bs!1879243 (and d!2208025 b!7062011)))

(declare-fun lambda!422455 () Int)

(assert (=> bs!1879243 (= lambda!422455 lambda!422380)))

(declare-fun bs!1879244 () Bool)

(assert (= bs!1879244 (and d!2208025 d!2207963)))

(assert (=> bs!1879244 (= lambda!422455 lambda!422447)))

(declare-fun bs!1879245 () Bool)

(assert (= bs!1879245 (and d!2208025 d!2207987)))

(assert (=> bs!1879245 (= (= (h!74645 s!7408) lt!2536842) (= lambda!422455 lambda!422448))))

(assert (=> d!2208025 true))

(assert (=> d!2208025 (= (derivationStepZipper!3048 lt!2536855 (h!74645 s!7408)) (flatMap!2524 lt!2536855 lambda!422455))))

(declare-fun bs!1879246 () Bool)

(assert (= bs!1879246 d!2208025))

(declare-fun m!7783228 () Bool)

(assert (=> bs!1879246 m!7783228))

(assert (=> b!7062024 d!2208025))

(declare-fun d!2208027 () Bool)

(assert (=> d!2208027 (= (flatMap!2524 lt!2536855 lambda!422380) (choose!53946 lt!2536855 lambda!422380))))

(declare-fun bs!1879247 () Bool)

(assert (= bs!1879247 d!2208027))

(declare-fun m!7783230 () Bool)

(assert (=> bs!1879247 m!7783230))

(assert (=> b!7062024 d!2208027))

(declare-fun d!2208029 () Bool)

(declare-fun c!1316407 () Bool)

(assert (=> d!2208029 (= c!1316407 (isEmpty!39784 lt!2536885))))

(declare-fun e!4245730 () Bool)

(assert (=> d!2208029 (= (matchZipper!3138 lt!2536873 lt!2536885) e!4245730)))

(declare-fun b!7062242 () Bool)

(assert (=> b!7062242 (= e!4245730 (nullableZipper!2673 lt!2536873))))

(declare-fun b!7062243 () Bool)

(assert (=> b!7062243 (= e!4245730 (matchZipper!3138 (derivationStepZipper!3048 lt!2536873 (head!14376 lt!2536885)) (tail!13744 lt!2536885)))))

(assert (= (and d!2208029 c!1316407) b!7062242))

(assert (= (and d!2208029 (not c!1316407)) b!7062243))

(assert (=> d!2208029 m!7783046))

(declare-fun m!7783232 () Bool)

(assert (=> b!7062242 m!7783232))

(assert (=> b!7062243 m!7783050))

(assert (=> b!7062243 m!7783050))

(declare-fun m!7783234 () Bool)

(assert (=> b!7062243 m!7783234))

(assert (=> b!7062243 m!7783054))

(assert (=> b!7062243 m!7783234))

(assert (=> b!7062243 m!7783054))

(declare-fun m!7783236 () Bool)

(assert (=> b!7062243 m!7783236))

(assert (=> b!7062005 d!2208029))

(declare-fun d!2208031 () Bool)

(declare-fun c!1316408 () Bool)

(assert (=> d!2208031 (= c!1316408 (isEmpty!39784 lt!2536885))))

(declare-fun e!4245731 () Bool)

(assert (=> d!2208031 (= (matchZipper!3138 lt!2536843 lt!2536885) e!4245731)))

(declare-fun b!7062244 () Bool)

(assert (=> b!7062244 (= e!4245731 (nullableZipper!2673 lt!2536843))))

(declare-fun b!7062245 () Bool)

(assert (=> b!7062245 (= e!4245731 (matchZipper!3138 (derivationStepZipper!3048 lt!2536843 (head!14376 lt!2536885)) (tail!13744 lt!2536885)))))

(assert (= (and d!2208031 c!1316408) b!7062244))

(assert (= (and d!2208031 (not c!1316408)) b!7062245))

(assert (=> d!2208031 m!7783046))

(declare-fun m!7783238 () Bool)

(assert (=> b!7062244 m!7783238))

(assert (=> b!7062245 m!7783050))

(assert (=> b!7062245 m!7783050))

(declare-fun m!7783240 () Bool)

(assert (=> b!7062245 m!7783240))

(assert (=> b!7062245 m!7783054))

(assert (=> b!7062245 m!7783240))

(assert (=> b!7062245 m!7783054))

(declare-fun m!7783242 () Bool)

(assert (=> b!7062245 m!7783242))

(assert (=> b!7062005 d!2208031))

(declare-fun d!2208033 () Bool)

(assert (=> d!2208033 (= (tail!13744 (_1!37402 lt!2536891)) (t!382102 (_1!37402 lt!2536891)))))

(assert (=> b!7062005 d!2208033))

(declare-fun d!2208035 () Bool)

(declare-fun e!4245734 () Bool)

(assert (=> d!2208035 (= (matchZipper!3138 (set.union lt!2536843 lt!2536877) lt!2536885) e!4245734)))

(declare-fun res!2883448 () Bool)

(assert (=> d!2208035 (=> res!2883448 e!4245734)))

(assert (=> d!2208035 (= res!2883448 (matchZipper!3138 lt!2536843 lt!2536885))))

(declare-fun lt!2537142 () Unit!161872)

(declare-fun choose!53954 ((Set Context!13188) (Set Context!13188) List!68321) Unit!161872)

(assert (=> d!2208035 (= lt!2537142 (choose!53954 lt!2536843 lt!2536877 lt!2536885))))

(assert (=> d!2208035 (= (lemmaZipperConcatMatchesSameAsBothZippers!1611 lt!2536843 lt!2536877 lt!2536885) lt!2537142)))

(declare-fun b!7062248 () Bool)

(assert (=> b!7062248 (= e!4245734 (matchZipper!3138 lt!2536877 lt!2536885))))

(assert (= (and d!2208035 (not res!2883448)) b!7062248))

(declare-fun m!7783244 () Bool)

(assert (=> d!2208035 m!7783244))

(assert (=> d!2208035 m!7782794))

(declare-fun m!7783246 () Bool)

(assert (=> d!2208035 m!7783246))

(assert (=> b!7062248 m!7782800))

(assert (=> b!7062005 d!2208035))

(declare-fun d!2208037 () Bool)

(declare-fun c!1316409 () Bool)

(assert (=> d!2208037 (= c!1316409 (isEmpty!39784 (_1!37402 lt!2536891)))))

(declare-fun e!4245735 () Bool)

(assert (=> d!2208037 (= (matchZipper!3138 lt!2536897 (_1!37402 lt!2536891)) e!4245735)))

(declare-fun b!7062249 () Bool)

(assert (=> b!7062249 (= e!4245735 (nullableZipper!2673 lt!2536897))))

(declare-fun b!7062250 () Bool)

(assert (=> b!7062250 (= e!4245735 (matchZipper!3138 (derivationStepZipper!3048 lt!2536897 (head!14376 (_1!37402 lt!2536891))) (tail!13744 (_1!37402 lt!2536891))))))

(assert (= (and d!2208037 c!1316409) b!7062249))

(assert (= (and d!2208037 (not c!1316409)) b!7062250))

(assert (=> d!2208037 m!7782760))

(declare-fun m!7783248 () Bool)

(assert (=> b!7062249 m!7783248))

(assert (=> b!7062250 m!7782842))

(assert (=> b!7062250 m!7782842))

(declare-fun m!7783250 () Bool)

(assert (=> b!7062250 m!7783250))

(assert (=> b!7062250 m!7782792))

(assert (=> b!7062250 m!7783250))

(assert (=> b!7062250 m!7782792))

(declare-fun m!7783252 () Bool)

(assert (=> b!7062250 m!7783252))

(assert (=> b!7062005 d!2208037))

(assert (=> b!7062025 d!2207967))

(declare-fun d!2208039 () Bool)

(declare-fun e!4245743 () Bool)

(assert (=> d!2208039 e!4245743))

(declare-fun res!2883459 () Bool)

(assert (=> d!2208039 (=> res!2883459 e!4245743)))

(declare-fun lt!2537145 () Bool)

(assert (=> d!2208039 (= res!2883459 (not lt!2537145))))

(declare-fun e!4245742 () Bool)

(assert (=> d!2208039 (= lt!2537145 e!4245742)))

(declare-fun res!2883457 () Bool)

(assert (=> d!2208039 (=> res!2883457 e!4245742)))

(assert (=> d!2208039 (= res!2883457 (is-Nil!68197 Nil!68197))))

(assert (=> d!2208039 (= (isPrefix!5843 Nil!68197 (_1!37402 lt!2536891)) lt!2537145)))

(declare-fun b!7062260 () Bool)

(declare-fun res!2883460 () Bool)

(declare-fun e!4245744 () Bool)

(assert (=> b!7062260 (=> (not res!2883460) (not e!4245744))))

(assert (=> b!7062260 (= res!2883460 (= (head!14376 Nil!68197) (head!14376 (_1!37402 lt!2536891))))))

(declare-fun b!7062259 () Bool)

(assert (=> b!7062259 (= e!4245742 e!4245744)))

(declare-fun res!2883458 () Bool)

(assert (=> b!7062259 (=> (not res!2883458) (not e!4245744))))

(assert (=> b!7062259 (= res!2883458 (not (is-Nil!68197 (_1!37402 lt!2536891))))))

(declare-fun b!7062262 () Bool)

(assert (=> b!7062262 (= e!4245743 (>= (size!41171 (_1!37402 lt!2536891)) (size!41171 Nil!68197)))))

(declare-fun b!7062261 () Bool)

(assert (=> b!7062261 (= e!4245744 (isPrefix!5843 (tail!13744 Nil!68197) (tail!13744 (_1!37402 lt!2536891))))))

(assert (= (and d!2208039 (not res!2883457)) b!7062259))

(assert (= (and b!7062259 res!2883458) b!7062260))

(assert (= (and b!7062260 res!2883460) b!7062261))

(assert (= (and d!2208039 (not res!2883459)) b!7062262))

(declare-fun m!7783254 () Bool)

(assert (=> b!7062260 m!7783254))

(assert (=> b!7062260 m!7782842))

(assert (=> b!7062262 m!7783060))

(declare-fun m!7783256 () Bool)

(assert (=> b!7062262 m!7783256))

(declare-fun m!7783258 () Bool)

(assert (=> b!7062261 m!7783258))

(assert (=> b!7062261 m!7782792))

(assert (=> b!7062261 m!7783258))

(assert (=> b!7062261 m!7782792))

(declare-fun m!7783260 () Bool)

(assert (=> b!7062261 m!7783260))

(assert (=> b!7062021 d!2208039))

(declare-fun d!2208041 () Bool)

(declare-fun c!1316410 () Bool)

(assert (=> d!2208041 (= c!1316410 (isEmpty!39784 (t!382102 s!7408)))))

(declare-fun e!4245745 () Bool)

(assert (=> d!2208041 (= (matchZipper!3138 lt!2536876 (t!382102 s!7408)) e!4245745)))

(declare-fun b!7062263 () Bool)

(assert (=> b!7062263 (= e!4245745 (nullableZipper!2673 lt!2536876))))

(declare-fun b!7062264 () Bool)

(assert (=> b!7062264 (= e!4245745 (matchZipper!3138 (derivationStepZipper!3048 lt!2536876 (head!14376 (t!382102 s!7408))) (tail!13744 (t!382102 s!7408))))))

(assert (= (and d!2208041 c!1316410) b!7062263))

(assert (= (and d!2208041 (not c!1316410)) b!7062264))

(declare-fun m!7783262 () Bool)

(assert (=> d!2208041 m!7783262))

(declare-fun m!7783264 () Bool)

(assert (=> b!7062263 m!7783264))

(declare-fun m!7783266 () Bool)

(assert (=> b!7062264 m!7783266))

(assert (=> b!7062264 m!7783266))

(declare-fun m!7783268 () Bool)

(assert (=> b!7062264 m!7783268))

(declare-fun m!7783270 () Bool)

(assert (=> b!7062264 m!7783270))

(assert (=> b!7062264 m!7783268))

(assert (=> b!7062264 m!7783270))

(declare-fun m!7783272 () Bool)

(assert (=> b!7062264 m!7783272))

(assert (=> b!7062002 d!2208041))

(declare-fun d!2208043 () Bool)

(declare-fun c!1316411 () Bool)

(assert (=> d!2208043 (= c!1316411 (isEmpty!39784 s!7408))))

(declare-fun e!4245746 () Bool)

(assert (=> d!2208043 (= (matchZipper!3138 lt!2536855 s!7408) e!4245746)))

(declare-fun b!7062265 () Bool)

(assert (=> b!7062265 (= e!4245746 (nullableZipper!2673 lt!2536855))))

(declare-fun b!7062266 () Bool)

(assert (=> b!7062266 (= e!4245746 (matchZipper!3138 (derivationStepZipper!3048 lt!2536855 (head!14376 s!7408)) (tail!13744 s!7408)))))

(assert (= (and d!2208043 c!1316411) b!7062265))

(assert (= (and d!2208043 (not c!1316411)) b!7062266))

(assert (=> d!2208043 m!7783154))

(declare-fun m!7783274 () Bool)

(assert (=> b!7062265 m!7783274))

(assert (=> b!7062266 m!7783158))

(assert (=> b!7062266 m!7783158))

(declare-fun m!7783276 () Bool)

(assert (=> b!7062266 m!7783276))

(assert (=> b!7062266 m!7783162))

(assert (=> b!7062266 m!7783276))

(assert (=> b!7062266 m!7783162))

(declare-fun m!7783278 () Bool)

(assert (=> b!7062266 m!7783278))

(assert (=> b!7062022 d!2208043))

(assert (=> b!7062022 d!2208013))

(assert (=> b!7062023 d!2207977))

(declare-fun c!1316424 () Bool)

(declare-fun call!641725 () List!68320)

(declare-fun bm!641718 () Bool)

(declare-fun c!1316422 () Bool)

(declare-fun $colon$colon!2634 (List!68320 Regex!17598) List!68320)

(assert (=> bm!641718 (= call!641725 ($colon$colon!2634 (exprs!7094 lt!2536851) (ite (or c!1316422 c!1316424) (regTwo!35708 (h!74644 (exprs!7094 lt!2536893))) (h!74644 (exprs!7094 lt!2536893)))))))

(declare-fun b!7062289 () Bool)

(declare-fun e!4245761 () (Set Context!13188))

(declare-fun call!641728 () (Set Context!13188))

(declare-fun call!641726 () (Set Context!13188))

(assert (=> b!7062289 (= e!4245761 (set.union call!641728 call!641726))))

(declare-fun b!7062290 () Bool)

(declare-fun e!4245759 () (Set Context!13188))

(declare-fun e!4245764 () (Set Context!13188))

(assert (=> b!7062290 (= e!4245759 e!4245764)))

(declare-fun c!1316423 () Bool)

(assert (=> b!7062290 (= c!1316423 (is-Union!17598 (h!74644 (exprs!7094 lt!2536893))))))

(declare-fun b!7062291 () Bool)

(declare-fun e!4245760 () Bool)

(assert (=> b!7062291 (= c!1316422 e!4245760)))

(declare-fun res!2883463 () Bool)

(assert (=> b!7062291 (=> (not res!2883463) (not e!4245760))))

(assert (=> b!7062291 (= res!2883463 (is-Concat!26443 (h!74644 (exprs!7094 lt!2536893))))))

(assert (=> b!7062291 (= e!4245764 e!4245761)))

(declare-fun d!2208045 () Bool)

(declare-fun c!1316425 () Bool)

(assert (=> d!2208045 (= c!1316425 (and (is-ElementMatch!17598 (h!74644 (exprs!7094 lt!2536893))) (= (c!1316351 (h!74644 (exprs!7094 lt!2536893))) (h!74645 s!7408))))))

(assert (=> d!2208045 (= (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536893)) lt!2536851 (h!74645 s!7408)) e!4245759)))

(declare-fun b!7062292 () Bool)

(declare-fun e!4245762 () (Set Context!13188))

(declare-fun call!641727 () (Set Context!13188))

(assert (=> b!7062292 (= e!4245762 call!641727)))

(declare-fun bm!641719 () Bool)

(assert (=> bm!641719 (= call!641728 (derivationStepZipperDown!2232 (ite c!1316423 (regOne!35709 (h!74644 (exprs!7094 lt!2536893))) (regOne!35708 (h!74644 (exprs!7094 lt!2536893)))) (ite c!1316423 lt!2536851 (Context!13189 call!641725)) (h!74645 s!7408)))))

(declare-fun b!7062293 () Bool)

(declare-fun call!641724 () (Set Context!13188))

(assert (=> b!7062293 (= e!4245764 (set.union call!641728 call!641724))))

(declare-fun b!7062294 () Bool)

(declare-fun e!4245763 () (Set Context!13188))

(assert (=> b!7062294 (= e!4245763 call!641727)))

(declare-fun b!7062295 () Bool)

(assert (=> b!7062295 (= e!4245761 e!4245762)))

(assert (=> b!7062295 (= c!1316424 (is-Concat!26443 (h!74644 (exprs!7094 lt!2536893))))))

(declare-fun call!641723 () List!68320)

(declare-fun bm!641720 () Bool)

(assert (=> bm!641720 (= call!641724 (derivationStepZipperDown!2232 (ite c!1316423 (regTwo!35709 (h!74644 (exprs!7094 lt!2536893))) (ite c!1316422 (regTwo!35708 (h!74644 (exprs!7094 lt!2536893))) (ite c!1316424 (regOne!35708 (h!74644 (exprs!7094 lt!2536893))) (reg!17927 (h!74644 (exprs!7094 lt!2536893)))))) (ite (or c!1316423 c!1316422) lt!2536851 (Context!13189 call!641723)) (h!74645 s!7408)))))

(declare-fun b!7062296 () Bool)

(assert (=> b!7062296 (= e!4245759 (set.insert lt!2536851 (as set.empty (Set Context!13188))))))

(declare-fun bm!641721 () Bool)

(assert (=> bm!641721 (= call!641727 call!641726)))

(declare-fun b!7062297 () Bool)

(assert (=> b!7062297 (= e!4245763 (as set.empty (Set Context!13188)))))

(declare-fun bm!641722 () Bool)

(assert (=> bm!641722 (= call!641726 call!641724)))

(declare-fun b!7062298 () Bool)

(assert (=> b!7062298 (= e!4245760 (nullable!7281 (regOne!35708 (h!74644 (exprs!7094 lt!2536893)))))))

(declare-fun bm!641723 () Bool)

(assert (=> bm!641723 (= call!641723 call!641725)))

(declare-fun b!7062299 () Bool)

(declare-fun c!1316426 () Bool)

(assert (=> b!7062299 (= c!1316426 (is-Star!17598 (h!74644 (exprs!7094 lt!2536893))))))

(assert (=> b!7062299 (= e!4245762 e!4245763)))

(assert (= (and d!2208045 c!1316425) b!7062296))

(assert (= (and d!2208045 (not c!1316425)) b!7062290))

(assert (= (and b!7062290 c!1316423) b!7062293))

(assert (= (and b!7062290 (not c!1316423)) b!7062291))

(assert (= (and b!7062291 res!2883463) b!7062298))

(assert (= (and b!7062291 c!1316422) b!7062289))

(assert (= (and b!7062291 (not c!1316422)) b!7062295))

(assert (= (and b!7062295 c!1316424) b!7062292))

(assert (= (and b!7062295 (not c!1316424)) b!7062299))

(assert (= (and b!7062299 c!1316426) b!7062294))

(assert (= (and b!7062299 (not c!1316426)) b!7062297))

(assert (= (or b!7062292 b!7062294) bm!641723))

(assert (= (or b!7062292 b!7062294) bm!641721))

(assert (= (or b!7062289 bm!641721) bm!641722))

(assert (= (or b!7062289 bm!641723) bm!641718))

(assert (= (or b!7062293 b!7062289) bm!641719))

(assert (= (or b!7062293 bm!641722) bm!641720))

(assert (=> b!7062296 m!7782804))

(declare-fun m!7783280 () Bool)

(assert (=> bm!641720 m!7783280))

(declare-fun m!7783282 () Bool)

(assert (=> bm!641719 m!7783282))

(declare-fun m!7783284 () Bool)

(assert (=> b!7062298 m!7783284))

(declare-fun m!7783286 () Bool)

(assert (=> bm!641718 m!7783286))

(assert (=> b!7062023 d!2208045))

(declare-fun d!2208047 () Bool)

(declare-fun lt!2537146 () Int)

(assert (=> d!2208047 (>= lt!2537146 0)))

(declare-fun e!4245765 () Int)

(assert (=> d!2208047 (= lt!2537146 e!4245765)))

(declare-fun c!1316427 () Bool)

(assert (=> d!2208047 (= c!1316427 (is-Cons!68198 (Cons!68198 lt!2536851 Nil!68198)))))

(assert (=> d!2208047 (= (zipperDepthTotal!563 (Cons!68198 lt!2536851 Nil!68198)) lt!2537146)))

(declare-fun b!7062300 () Bool)

(assert (=> b!7062300 (= e!4245765 (+ (contextDepthTotal!534 (h!74646 (Cons!68198 lt!2536851 Nil!68198))) (zipperDepthTotal!563 (t!382103 (Cons!68198 lt!2536851 Nil!68198)))))))

(declare-fun b!7062301 () Bool)

(assert (=> b!7062301 (= e!4245765 0)))

(assert (= (and d!2208047 c!1316427) b!7062300))

(assert (= (and d!2208047 (not c!1316427)) b!7062301))

(declare-fun m!7783288 () Bool)

(assert (=> b!7062300 m!7783288))

(declare-fun m!7783290 () Bool)

(assert (=> b!7062300 m!7783290))

(assert (=> b!7062019 d!2208047))

(assert (=> b!7061999 d!2207957))

(assert (=> b!7062000 d!2208041))

(assert (=> b!7062000 d!2208013))

(declare-fun d!2208049 () Bool)

(declare-fun c!1316428 () Bool)

(assert (=> d!2208049 (= c!1316428 (isEmpty!39784 (_1!37402 lt!2536891)))))

(declare-fun e!4245766 () Bool)

(assert (=> d!2208049 (= (matchZipper!3138 lt!2536896 (_1!37402 lt!2536891)) e!4245766)))

(declare-fun b!7062302 () Bool)

(assert (=> b!7062302 (= e!4245766 (nullableZipper!2673 lt!2536896))))

(declare-fun b!7062303 () Bool)

(assert (=> b!7062303 (= e!4245766 (matchZipper!3138 (derivationStepZipper!3048 lt!2536896 (head!14376 (_1!37402 lt!2536891))) (tail!13744 (_1!37402 lt!2536891))))))

(assert (= (and d!2208049 c!1316428) b!7062302))

(assert (= (and d!2208049 (not c!1316428)) b!7062303))

(assert (=> d!2208049 m!7782760))

(declare-fun m!7783292 () Bool)

(assert (=> b!7062302 m!7783292))

(assert (=> b!7062303 m!7782842))

(assert (=> b!7062303 m!7782842))

(declare-fun m!7783294 () Bool)

(assert (=> b!7062303 m!7783294))

(assert (=> b!7062303 m!7782792))

(assert (=> b!7062303 m!7783294))

(assert (=> b!7062303 m!7782792))

(declare-fun m!7783296 () Bool)

(assert (=> b!7062303 m!7783296))

(assert (=> b!7062020 d!2208049))

(declare-fun d!2208051 () Bool)

(assert (=> d!2208051 (isDefined!13632 (findConcatSeparationZippers!447 lt!2536896 (set.insert ct2!306 (as set.empty (Set Context!13188))) Nil!68197 s!7408 s!7408))))

(declare-fun lt!2537149 () Unit!161872)

(declare-fun choose!53955 ((Set Context!13188) Context!13188 List!68321) Unit!161872)

(assert (=> d!2208051 (= lt!2537149 (choose!53955 lt!2536896 ct2!306 s!7408))))

(assert (=> d!2208051 (matchZipper!3138 (appendTo!719 lt!2536896 ct2!306) s!7408)))

(assert (=> d!2208051 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!435 lt!2536896 ct2!306 s!7408) lt!2537149)))

(declare-fun bs!1879248 () Bool)

(assert (= bs!1879248 d!2208051))

(declare-fun m!7783298 () Bool)

(assert (=> bs!1879248 m!7783298))

(assert (=> bs!1879248 m!7782746))

(declare-fun m!7783300 () Bool)

(assert (=> bs!1879248 m!7783300))

(declare-fun m!7783302 () Bool)

(assert (=> bs!1879248 m!7783302))

(assert (=> bs!1879248 m!7783302))

(declare-fun m!7783304 () Bool)

(assert (=> bs!1879248 m!7783304))

(assert (=> bs!1879248 m!7783300))

(declare-fun m!7783306 () Bool)

(assert (=> bs!1879248 m!7783306))

(assert (=> bs!1879248 m!7782746))

(assert (=> b!7062020 d!2208051))

(declare-fun d!2208053 () Bool)

(declare-fun isEmpty!39787 (Option!16931) Bool)

(assert (=> d!2208053 (= (isDefined!13632 lt!2536901) (not (isEmpty!39787 lt!2536901)))))

(declare-fun bs!1879249 () Bool)

(assert (= bs!1879249 d!2208053))

(declare-fun m!7783308 () Bool)

(assert (=> bs!1879249 m!7783308))

(assert (=> b!7062020 d!2208053))

(declare-fun b!7062322 () Bool)

(declare-fun e!4245781 () Option!16931)

(assert (=> b!7062322 (= e!4245781 (Some!16930 (tuple2!68199 Nil!68197 s!7408)))))

(declare-fun b!7062323 () Bool)

(declare-fun e!4245780 () Bool)

(declare-fun lt!2537156 () Option!16931)

(assert (=> b!7062323 (= e!4245780 (not (isDefined!13632 lt!2537156)))))

(declare-fun b!7062324 () Bool)

(declare-fun lt!2537158 () Unit!161872)

(declare-fun lt!2537157 () Unit!161872)

(assert (=> b!7062324 (= lt!2537158 lt!2537157)))

(assert (=> b!7062324 (= (++!15694 (++!15694 Nil!68197 (Cons!68197 (h!74645 s!7408) Nil!68197)) (t!382102 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2959 (List!68321 C!35466 List!68321 List!68321) Unit!161872)

(assert (=> b!7062324 (= lt!2537157 (lemmaMoveElementToOtherListKeepsConcatEq!2959 Nil!68197 (h!74645 s!7408) (t!382102 s!7408) s!7408))))

(declare-fun e!4245777 () Option!16931)

(assert (=> b!7062324 (= e!4245777 (findConcatSeparationZippers!447 lt!2536896 lt!2536862 (++!15694 Nil!68197 (Cons!68197 (h!74645 s!7408) Nil!68197)) (t!382102 s!7408) s!7408))))

(declare-fun d!2208055 () Bool)

(assert (=> d!2208055 e!4245780))

(declare-fun res!2883474 () Bool)

(assert (=> d!2208055 (=> res!2883474 e!4245780)))

(declare-fun e!4245778 () Bool)

(assert (=> d!2208055 (= res!2883474 e!4245778)))

(declare-fun res!2883475 () Bool)

(assert (=> d!2208055 (=> (not res!2883475) (not e!4245778))))

(assert (=> d!2208055 (= res!2883475 (isDefined!13632 lt!2537156))))

(assert (=> d!2208055 (= lt!2537156 e!4245781)))

(declare-fun c!1316433 () Bool)

(declare-fun e!4245779 () Bool)

(assert (=> d!2208055 (= c!1316433 e!4245779)))

(declare-fun res!2883478 () Bool)

(assert (=> d!2208055 (=> (not res!2883478) (not e!4245779))))

(assert (=> d!2208055 (= res!2883478 (matchZipper!3138 lt!2536896 Nil!68197))))

(assert (=> d!2208055 (= (++!15694 Nil!68197 s!7408) s!7408)))

(assert (=> d!2208055 (= (findConcatSeparationZippers!447 lt!2536896 lt!2536862 Nil!68197 s!7408 s!7408) lt!2537156)))

(declare-fun b!7062325 () Bool)

(assert (=> b!7062325 (= e!4245777 None!16930)))

(declare-fun b!7062326 () Bool)

(assert (=> b!7062326 (= e!4245781 e!4245777)))

(declare-fun c!1316434 () Bool)

(assert (=> b!7062326 (= c!1316434 (is-Nil!68197 s!7408))))

(declare-fun b!7062327 () Bool)

(declare-fun res!2883476 () Bool)

(assert (=> b!7062327 (=> (not res!2883476) (not e!4245778))))

(assert (=> b!7062327 (= res!2883476 (matchZipper!3138 lt!2536862 (_2!37402 (get!23881 lt!2537156))))))

(declare-fun b!7062328 () Bool)

(assert (=> b!7062328 (= e!4245779 (matchZipper!3138 lt!2536862 s!7408))))

(declare-fun b!7062329 () Bool)

(assert (=> b!7062329 (= e!4245778 (= (++!15694 (_1!37402 (get!23881 lt!2537156)) (_2!37402 (get!23881 lt!2537156))) s!7408))))

(declare-fun b!7062330 () Bool)

(declare-fun res!2883477 () Bool)

(assert (=> b!7062330 (=> (not res!2883477) (not e!4245778))))

(assert (=> b!7062330 (= res!2883477 (matchZipper!3138 lt!2536896 (_1!37402 (get!23881 lt!2537156))))))

(assert (= (and d!2208055 res!2883478) b!7062328))

(assert (= (and d!2208055 c!1316433) b!7062322))

(assert (= (and d!2208055 (not c!1316433)) b!7062326))

(assert (= (and b!7062326 c!1316434) b!7062325))

(assert (= (and b!7062326 (not c!1316434)) b!7062324))

(assert (= (and d!2208055 res!2883475) b!7062330))

(assert (= (and b!7062330 res!2883477) b!7062327))

(assert (= (and b!7062327 res!2883476) b!7062329))

(assert (= (and d!2208055 (not res!2883474)) b!7062323))

(declare-fun m!7783310 () Bool)

(assert (=> d!2208055 m!7783310))

(declare-fun m!7783312 () Bool)

(assert (=> d!2208055 m!7783312))

(declare-fun m!7783314 () Bool)

(assert (=> d!2208055 m!7783314))

(declare-fun m!7783316 () Bool)

(assert (=> b!7062330 m!7783316))

(declare-fun m!7783318 () Bool)

(assert (=> b!7062330 m!7783318))

(assert (=> b!7062327 m!7783316))

(declare-fun m!7783320 () Bool)

(assert (=> b!7062327 m!7783320))

(declare-fun m!7783322 () Bool)

(assert (=> b!7062324 m!7783322))

(assert (=> b!7062324 m!7783322))

(declare-fun m!7783324 () Bool)

(assert (=> b!7062324 m!7783324))

(declare-fun m!7783326 () Bool)

(assert (=> b!7062324 m!7783326))

(assert (=> b!7062324 m!7783322))

(declare-fun m!7783328 () Bool)

(assert (=> b!7062324 m!7783328))

(assert (=> b!7062329 m!7783316))

(declare-fun m!7783330 () Bool)

(assert (=> b!7062329 m!7783330))

(declare-fun m!7783332 () Bool)

(assert (=> b!7062328 m!7783332))

(assert (=> b!7062323 m!7783310))

(assert (=> b!7062020 d!2208055))

(declare-fun d!2208057 () Bool)

(assert (=> d!2208057 (= (get!23881 lt!2536901) (v!53224 lt!2536901))))

(assert (=> b!7062020 d!2208057))

(declare-fun d!2208059 () Bool)

(declare-fun c!1316435 () Bool)

(assert (=> d!2208059 (= c!1316435 (isEmpty!39784 lt!2536885))))

(declare-fun e!4245782 () Bool)

(assert (=> d!2208059 (= (matchZipper!3138 lt!2536866 lt!2536885) e!4245782)))

(declare-fun b!7062331 () Bool)

(assert (=> b!7062331 (= e!4245782 (nullableZipper!2673 lt!2536866))))

(declare-fun b!7062332 () Bool)

(assert (=> b!7062332 (= e!4245782 (matchZipper!3138 (derivationStepZipper!3048 lt!2536866 (head!14376 lt!2536885)) (tail!13744 lt!2536885)))))

(assert (= (and d!2208059 c!1316435) b!7062331))

(assert (= (and d!2208059 (not c!1316435)) b!7062332))

(assert (=> d!2208059 m!7783046))

(declare-fun m!7783334 () Bool)

(assert (=> b!7062331 m!7783334))

(assert (=> b!7062332 m!7783050))

(assert (=> b!7062332 m!7783050))

(declare-fun m!7783336 () Bool)

(assert (=> b!7062332 m!7783336))

(assert (=> b!7062332 m!7783054))

(assert (=> b!7062332 m!7783336))

(assert (=> b!7062332 m!7783054))

(declare-fun m!7783338 () Bool)

(assert (=> b!7062332 m!7783338))

(assert (=> b!7062001 d!2208059))

(declare-fun d!2208061 () Bool)

(declare-fun c!1316436 () Bool)

(assert (=> d!2208061 (= c!1316436 (isEmpty!39784 (_2!37402 lt!2536891)))))

(declare-fun e!4245783 () Bool)

(assert (=> d!2208061 (= (matchZipper!3138 lt!2536862 (_2!37402 lt!2536891)) e!4245783)))

(declare-fun b!7062333 () Bool)

(assert (=> b!7062333 (= e!4245783 (nullableZipper!2673 lt!2536862))))

(declare-fun b!7062334 () Bool)

(assert (=> b!7062334 (= e!4245783 (matchZipper!3138 (derivationStepZipper!3048 lt!2536862 (head!14376 (_2!37402 lt!2536891))) (tail!13744 (_2!37402 lt!2536891))))))

(assert (= (and d!2208061 c!1316436) b!7062333))

(assert (= (and d!2208061 (not c!1316436)) b!7062334))

(declare-fun m!7783340 () Bool)

(assert (=> d!2208061 m!7783340))

(declare-fun m!7783342 () Bool)

(assert (=> b!7062333 m!7783342))

(declare-fun m!7783344 () Bool)

(assert (=> b!7062334 m!7783344))

(assert (=> b!7062334 m!7783344))

(declare-fun m!7783346 () Bool)

(assert (=> b!7062334 m!7783346))

(declare-fun m!7783348 () Bool)

(assert (=> b!7062334 m!7783348))

(assert (=> b!7062334 m!7783346))

(assert (=> b!7062334 m!7783348))

(declare-fun m!7783350 () Bool)

(assert (=> b!7062334 m!7783350))

(assert (=> b!7061996 d!2208061))

(declare-fun bs!1879250 () Bool)

(declare-fun d!2208063 () Bool)

(assert (= bs!1879250 (and d!2208063 b!7062011)))

(declare-fun lambda!422456 () Int)

(assert (=> bs!1879250 (= lambda!422456 lambda!422380)))

(declare-fun bs!1879251 () Bool)

(assert (= bs!1879251 (and d!2208063 d!2207963)))

(assert (=> bs!1879251 (= lambda!422456 lambda!422447)))

(declare-fun bs!1879252 () Bool)

(assert (= bs!1879252 (and d!2208063 d!2207987)))

(assert (=> bs!1879252 (= (= (h!74645 s!7408) lt!2536842) (= lambda!422456 lambda!422448))))

(declare-fun bs!1879253 () Bool)

(assert (= bs!1879253 (and d!2208063 d!2208025)))

(assert (=> bs!1879253 (= lambda!422456 lambda!422455)))

(assert (=> d!2208063 true))

(assert (=> d!2208063 (= (derivationStepZipper!3048 lt!2536897 (h!74645 s!7408)) (flatMap!2524 lt!2536897 lambda!422456))))

(declare-fun bs!1879254 () Bool)

(assert (= bs!1879254 d!2208063))

(declare-fun m!7783352 () Bool)

(assert (=> bs!1879254 m!7783352))

(assert (=> b!7062018 d!2208063))

(declare-fun e!4245786 () (Set Context!13188))

(declare-fun b!7062335 () Bool)

(declare-fun call!641729 () (Set Context!13188))

(assert (=> b!7062335 (= e!4245786 (set.union call!641729 (derivationStepZipperUp!2182 (Context!13189 (t!382101 (exprs!7094 lt!2536893))) (h!74645 s!7408))))))

(declare-fun b!7062336 () Bool)

(declare-fun e!4245784 () Bool)

(assert (=> b!7062336 (= e!4245784 (nullable!7281 (h!74644 (exprs!7094 lt!2536893))))))

(declare-fun d!2208065 () Bool)

(declare-fun c!1316438 () Bool)

(assert (=> d!2208065 (= c!1316438 e!4245784)))

(declare-fun res!2883479 () Bool)

(assert (=> d!2208065 (=> (not res!2883479) (not e!4245784))))

(assert (=> d!2208065 (= res!2883479 (is-Cons!68196 (exprs!7094 lt!2536893)))))

(assert (=> d!2208065 (= (derivationStepZipperUp!2182 lt!2536893 (h!74645 s!7408)) e!4245786)))

(declare-fun b!7062337 () Bool)

(declare-fun e!4245785 () (Set Context!13188))

(assert (=> b!7062337 (= e!4245785 call!641729)))

(declare-fun b!7062338 () Bool)

(assert (=> b!7062338 (= e!4245785 (as set.empty (Set Context!13188)))))

(declare-fun b!7062339 () Bool)

(assert (=> b!7062339 (= e!4245786 e!4245785)))

(declare-fun c!1316437 () Bool)

(assert (=> b!7062339 (= c!1316437 (is-Cons!68196 (exprs!7094 lt!2536893)))))

(declare-fun bm!641724 () Bool)

(assert (=> bm!641724 (= call!641729 (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536893)) (Context!13189 (t!382101 (exprs!7094 lt!2536893))) (h!74645 s!7408)))))

(assert (= (and d!2208065 res!2883479) b!7062336))

(assert (= (and d!2208065 c!1316438) b!7062335))

(assert (= (and d!2208065 (not c!1316438)) b!7062339))

(assert (= (and b!7062339 c!1316437) b!7062337))

(assert (= (and b!7062339 (not c!1316437)) b!7062338))

(assert (= (or b!7062335 b!7062337) bm!641724))

(declare-fun m!7783354 () Bool)

(assert (=> b!7062335 m!7783354))

(assert (=> b!7062336 m!7782828))

(declare-fun m!7783356 () Bool)

(assert (=> bm!641724 m!7783356))

(assert (=> b!7062018 d!2208065))

(declare-fun d!2208067 () Bool)

(assert (=> d!2208067 (= (flatMap!2524 lt!2536897 lambda!422380) (choose!53946 lt!2536897 lambda!422380))))

(declare-fun bs!1879255 () Bool)

(assert (= bs!1879255 d!2208067))

(declare-fun m!7783358 () Bool)

(assert (=> bs!1879255 m!7783358))

(assert (=> b!7062018 d!2208067))

(declare-fun d!2208069 () Bool)

(assert (=> d!2208069 (= (flatMap!2524 lt!2536897 lambda!422380) (dynLambda!27697 lambda!422380 lt!2536893))))

(declare-fun lt!2537159 () Unit!161872)

(assert (=> d!2208069 (= lt!2537159 (choose!53945 lt!2536897 lt!2536893 lambda!422380))))

(assert (=> d!2208069 (= lt!2536897 (set.insert lt!2536893 (as set.empty (Set Context!13188))))))

(assert (=> d!2208069 (= (lemmaFlatMapOnSingletonSet!2033 lt!2536897 lt!2536893 lambda!422380) lt!2537159)))

(declare-fun b_lambda!269335 () Bool)

(assert (=> (not b_lambda!269335) (not d!2208069)))

(declare-fun bs!1879256 () Bool)

(assert (= bs!1879256 d!2208069))

(assert (=> bs!1879256 m!7782862))

(declare-fun m!7783360 () Bool)

(assert (=> bs!1879256 m!7783360))

(declare-fun m!7783362 () Bool)

(assert (=> bs!1879256 m!7783362))

(assert (=> bs!1879256 m!7782866))

(assert (=> b!7062018 d!2208069))

(declare-fun d!2208071 () Bool)

(declare-fun c!1316439 () Bool)

(assert (=> d!2208071 (= c!1316439 (isEmpty!39784 (t!382102 s!7408)))))

(declare-fun e!4245787 () Bool)

(assert (=> d!2208071 (= (matchZipper!3138 lt!2536875 (t!382102 s!7408)) e!4245787)))

(declare-fun b!7062340 () Bool)

(assert (=> b!7062340 (= e!4245787 (nullableZipper!2673 lt!2536875))))

(declare-fun b!7062341 () Bool)

(assert (=> b!7062341 (= e!4245787 (matchZipper!3138 (derivationStepZipper!3048 lt!2536875 (head!14376 (t!382102 s!7408))) (tail!13744 (t!382102 s!7408))))))

(assert (= (and d!2208071 c!1316439) b!7062340))

(assert (= (and d!2208071 (not c!1316439)) b!7062341))

(assert (=> d!2208071 m!7783262))

(declare-fun m!7783364 () Bool)

(assert (=> b!7062340 m!7783364))

(assert (=> b!7062341 m!7783266))

(assert (=> b!7062341 m!7783266))

(declare-fun m!7783366 () Bool)

(assert (=> b!7062341 m!7783366))

(assert (=> b!7062341 m!7783270))

(assert (=> b!7062341 m!7783366))

(assert (=> b!7062341 m!7783270))

(declare-fun m!7783368 () Bool)

(assert (=> b!7062341 m!7783368))

(assert (=> b!7061997 d!2208071))

(declare-fun d!2208073 () Bool)

(declare-fun c!1316440 () Bool)

(assert (=> d!2208073 (= c!1316440 (isEmpty!39784 (t!382102 s!7408)))))

(declare-fun e!4245788 () Bool)

(assert (=> d!2208073 (= (matchZipper!3138 lt!2536840 (t!382102 s!7408)) e!4245788)))

(declare-fun b!7062342 () Bool)

(assert (=> b!7062342 (= e!4245788 (nullableZipper!2673 lt!2536840))))

(declare-fun b!7062343 () Bool)

(assert (=> b!7062343 (= e!4245788 (matchZipper!3138 (derivationStepZipper!3048 lt!2536840 (head!14376 (t!382102 s!7408))) (tail!13744 (t!382102 s!7408))))))

(assert (= (and d!2208073 c!1316440) b!7062342))

(assert (= (and d!2208073 (not c!1316440)) b!7062343))

(assert (=> d!2208073 m!7783262))

(declare-fun m!7783370 () Bool)

(assert (=> b!7062342 m!7783370))

(assert (=> b!7062343 m!7783266))

(assert (=> b!7062343 m!7783266))

(declare-fun m!7783372 () Bool)

(assert (=> b!7062343 m!7783372))

(assert (=> b!7062343 m!7783270))

(assert (=> b!7062343 m!7783372))

(assert (=> b!7062343 m!7783270))

(declare-fun m!7783374 () Bool)

(assert (=> b!7062343 m!7783374))

(assert (=> b!7061997 d!2208073))

(assert (=> b!7061997 d!2208013))

(declare-fun d!2208075 () Bool)

(declare-fun c!1316441 () Bool)

(assert (=> d!2208075 (= c!1316441 (isEmpty!39784 (t!382102 s!7408)))))

(declare-fun e!4245789 () Bool)

(assert (=> d!2208075 (= (matchZipper!3138 lt!2536861 (t!382102 s!7408)) e!4245789)))

(declare-fun b!7062344 () Bool)

(assert (=> b!7062344 (= e!4245789 (nullableZipper!2673 lt!2536861))))

(declare-fun b!7062345 () Bool)

(assert (=> b!7062345 (= e!4245789 (matchZipper!3138 (derivationStepZipper!3048 lt!2536861 (head!14376 (t!382102 s!7408))) (tail!13744 (t!382102 s!7408))))))

(assert (= (and d!2208075 c!1316441) b!7062344))

(assert (= (and d!2208075 (not c!1316441)) b!7062345))

(assert (=> d!2208075 m!7783262))

(declare-fun m!7783376 () Bool)

(assert (=> b!7062344 m!7783376))

(assert (=> b!7062345 m!7783266))

(assert (=> b!7062345 m!7783266))

(declare-fun m!7783378 () Bool)

(assert (=> b!7062345 m!7783378))

(assert (=> b!7062345 m!7783270))

(assert (=> b!7062345 m!7783378))

(assert (=> b!7062345 m!7783270))

(declare-fun m!7783380 () Bool)

(assert (=> b!7062345 m!7783380))

(assert (=> b!7061997 d!2208075))

(declare-fun d!2208077 () Bool)

(declare-fun e!4245790 () Bool)

(assert (=> d!2208077 (= (matchZipper!3138 (set.union lt!2536861 lt!2536876) (t!382102 s!7408)) e!4245790)))

(declare-fun res!2883480 () Bool)

(assert (=> d!2208077 (=> res!2883480 e!4245790)))

(assert (=> d!2208077 (= res!2883480 (matchZipper!3138 lt!2536861 (t!382102 s!7408)))))

(declare-fun lt!2537160 () Unit!161872)

(assert (=> d!2208077 (= lt!2537160 (choose!53954 lt!2536861 lt!2536876 (t!382102 s!7408)))))

(assert (=> d!2208077 (= (lemmaZipperConcatMatchesSameAsBothZippers!1611 lt!2536861 lt!2536876 (t!382102 s!7408)) lt!2537160)))

(declare-fun b!7062346 () Bool)

(assert (=> b!7062346 (= e!4245790 (matchZipper!3138 lt!2536876 (t!382102 s!7408)))))

(assert (= (and d!2208077 (not res!2883480)) b!7062346))

(declare-fun m!7783382 () Bool)

(assert (=> d!2208077 m!7783382))

(assert (=> d!2208077 m!7782782))

(declare-fun m!7783384 () Bool)

(assert (=> d!2208077 m!7783384))

(assert (=> b!7062346 m!7782762))

(assert (=> b!7061997 d!2208077))

(declare-fun bs!1879257 () Bool)

(declare-fun d!2208079 () Bool)

(assert (= bs!1879257 (and d!2208079 b!7062028)))

(declare-fun lambda!422459 () Int)

(assert (=> bs!1879257 (= lambda!422459 lambda!422379)))

(assert (=> d!2208079 (= (inv!86855 setElem!50022) (forall!16547 (exprs!7094 setElem!50022) lambda!422459))))

(declare-fun bs!1879258 () Bool)

(assert (= bs!1879258 d!2208079))

(declare-fun m!7783386 () Bool)

(assert (=> bs!1879258 m!7783386))

(assert (=> setNonEmpty!50022 d!2208079))

(declare-fun d!2208081 () Bool)

(assert (=> d!2208081 (= (isEmpty!39783 (exprs!7094 lt!2536893)) (is-Nil!68196 (exprs!7094 lt!2536893)))))

(assert (=> b!7061998 d!2208081))

(assert (=> b!7062015 d!2208041))

(assert (=> b!7062015 d!2208013))

(declare-fun bm!641725 () Bool)

(declare-fun call!641732 () List!68320)

(declare-fun c!1316444 () Bool)

(declare-fun c!1316442 () Bool)

(assert (=> bm!641725 (= call!641732 ($colon$colon!2634 (exprs!7094 lt!2536856) (ite (or c!1316442 c!1316444) (regTwo!35708 (h!74644 (exprs!7094 lt!2536893))) (h!74644 (exprs!7094 lt!2536893)))))))

(declare-fun b!7062347 () Bool)

(declare-fun e!4245793 () (Set Context!13188))

(declare-fun call!641735 () (Set Context!13188))

(declare-fun call!641733 () (Set Context!13188))

(assert (=> b!7062347 (= e!4245793 (set.union call!641735 call!641733))))

(declare-fun b!7062348 () Bool)

(declare-fun e!4245791 () (Set Context!13188))

(declare-fun e!4245796 () (Set Context!13188))

(assert (=> b!7062348 (= e!4245791 e!4245796)))

(declare-fun c!1316443 () Bool)

(assert (=> b!7062348 (= c!1316443 (is-Union!17598 (h!74644 (exprs!7094 lt!2536893))))))

(declare-fun b!7062349 () Bool)

(declare-fun e!4245792 () Bool)

(assert (=> b!7062349 (= c!1316442 e!4245792)))

(declare-fun res!2883481 () Bool)

(assert (=> b!7062349 (=> (not res!2883481) (not e!4245792))))

(assert (=> b!7062349 (= res!2883481 (is-Concat!26443 (h!74644 (exprs!7094 lt!2536893))))))

(assert (=> b!7062349 (= e!4245796 e!4245793)))

(declare-fun d!2208083 () Bool)

(declare-fun c!1316445 () Bool)

(assert (=> d!2208083 (= c!1316445 (and (is-ElementMatch!17598 (h!74644 (exprs!7094 lt!2536893))) (= (c!1316351 (h!74644 (exprs!7094 lt!2536893))) (h!74645 s!7408))))))

(assert (=> d!2208083 (= (derivationStepZipperDown!2232 (h!74644 (exprs!7094 lt!2536893)) lt!2536856 (h!74645 s!7408)) e!4245791)))

(declare-fun b!7062350 () Bool)

(declare-fun e!4245794 () (Set Context!13188))

(declare-fun call!641734 () (Set Context!13188))

(assert (=> b!7062350 (= e!4245794 call!641734)))

(declare-fun bm!641726 () Bool)

(assert (=> bm!641726 (= call!641735 (derivationStepZipperDown!2232 (ite c!1316443 (regOne!35709 (h!74644 (exprs!7094 lt!2536893))) (regOne!35708 (h!74644 (exprs!7094 lt!2536893)))) (ite c!1316443 lt!2536856 (Context!13189 call!641732)) (h!74645 s!7408)))))

(declare-fun b!7062351 () Bool)

(declare-fun call!641731 () (Set Context!13188))

(assert (=> b!7062351 (= e!4245796 (set.union call!641735 call!641731))))

(declare-fun b!7062352 () Bool)

(declare-fun e!4245795 () (Set Context!13188))

(assert (=> b!7062352 (= e!4245795 call!641734)))

(declare-fun b!7062353 () Bool)

(assert (=> b!7062353 (= e!4245793 e!4245794)))

(assert (=> b!7062353 (= c!1316444 (is-Concat!26443 (h!74644 (exprs!7094 lt!2536893))))))

(declare-fun call!641730 () List!68320)

(declare-fun bm!641727 () Bool)

(assert (=> bm!641727 (= call!641731 (derivationStepZipperDown!2232 (ite c!1316443 (regTwo!35709 (h!74644 (exprs!7094 lt!2536893))) (ite c!1316442 (regTwo!35708 (h!74644 (exprs!7094 lt!2536893))) (ite c!1316444 (regOne!35708 (h!74644 (exprs!7094 lt!2536893))) (reg!17927 (h!74644 (exprs!7094 lt!2536893)))))) (ite (or c!1316443 c!1316442) lt!2536856 (Context!13189 call!641730)) (h!74645 s!7408)))))

(declare-fun b!7062354 () Bool)

(assert (=> b!7062354 (= e!4245791 (set.insert lt!2536856 (as set.empty (Set Context!13188))))))

(declare-fun bm!641728 () Bool)

(assert (=> bm!641728 (= call!641734 call!641733)))

(declare-fun b!7062355 () Bool)

(assert (=> b!7062355 (= e!4245795 (as set.empty (Set Context!13188)))))

(declare-fun bm!641729 () Bool)

(assert (=> bm!641729 (= call!641733 call!641731)))

(declare-fun b!7062356 () Bool)

(assert (=> b!7062356 (= e!4245792 (nullable!7281 (regOne!35708 (h!74644 (exprs!7094 lt!2536893)))))))

(declare-fun bm!641730 () Bool)

(assert (=> bm!641730 (= call!641730 call!641732)))

(declare-fun b!7062357 () Bool)

(declare-fun c!1316446 () Bool)

(assert (=> b!7062357 (= c!1316446 (is-Star!17598 (h!74644 (exprs!7094 lt!2536893))))))

(assert (=> b!7062357 (= e!4245794 e!4245795)))

(assert (= (and d!2208083 c!1316445) b!7062354))

(assert (= (and d!2208083 (not c!1316445)) b!7062348))

(assert (= (and b!7062348 c!1316443) b!7062351))

(assert (= (and b!7062348 (not c!1316443)) b!7062349))

(assert (= (and b!7062349 res!2883481) b!7062356))

(assert (= (and b!7062349 c!1316442) b!7062347))

(assert (= (and b!7062349 (not c!1316442)) b!7062353))

(assert (= (and b!7062353 c!1316444) b!7062350))

(assert (= (and b!7062353 (not c!1316444)) b!7062357))

(assert (= (and b!7062357 c!1316446) b!7062352))

(assert (= (and b!7062357 (not c!1316446)) b!7062355))

(assert (= (or b!7062350 b!7062352) bm!641730))

(assert (= (or b!7062350 b!7062352) bm!641728))

(assert (= (or b!7062347 bm!641728) bm!641729))

(assert (= (or b!7062347 bm!641730) bm!641725))

(assert (= (or b!7062351 b!7062347) bm!641726))

(assert (= (or b!7062351 bm!641729) bm!641727))

(assert (=> b!7062354 m!7782882))

(declare-fun m!7783388 () Bool)

(assert (=> bm!641727 m!7783388))

(declare-fun m!7783390 () Bool)

(assert (=> bm!641726 m!7783390))

(assert (=> b!7062356 m!7783284))

(declare-fun m!7783392 () Bool)

(assert (=> bm!641725 m!7783392))

(assert (=> b!7062017 d!2208083))

(assert (=> b!7062017 d!2208013))

(assert (=> b!7062017 d!2208011))

(assert (=> b!7062017 d!2208023))

(declare-fun d!2208085 () Bool)

(declare-fun c!1316447 () Bool)

(assert (=> d!2208085 (= c!1316447 (isEmpty!39784 s!7408))))

(declare-fun e!4245797 () Bool)

(assert (=> d!2208085 (= (matchZipper!3138 lt!2536890 s!7408) e!4245797)))

(declare-fun b!7062358 () Bool)

(assert (=> b!7062358 (= e!4245797 (nullableZipper!2673 lt!2536890))))

(declare-fun b!7062359 () Bool)

(assert (=> b!7062359 (= e!4245797 (matchZipper!3138 (derivationStepZipper!3048 lt!2536890 (head!14376 s!7408)) (tail!13744 s!7408)))))

(assert (= (and d!2208085 c!1316447) b!7062358))

(assert (= (and d!2208085 (not c!1316447)) b!7062359))

(assert (=> d!2208085 m!7783154))

(declare-fun m!7783394 () Bool)

(assert (=> b!7062358 m!7783394))

(assert (=> b!7062359 m!7783158))

(assert (=> b!7062359 m!7783158))

(declare-fun m!7783396 () Bool)

(assert (=> b!7062359 m!7783396))

(assert (=> b!7062359 m!7783162))

(assert (=> b!7062359 m!7783396))

(assert (=> b!7062359 m!7783162))

(declare-fun m!7783398 () Bool)

(assert (=> b!7062359 m!7783398))

(assert (=> start!685262 d!2208085))

(declare-fun bs!1879259 () Bool)

(declare-fun d!2208087 () Bool)

(assert (= bs!1879259 (and d!2208087 b!7062028)))

(declare-fun lambda!422464 () Int)

(assert (=> bs!1879259 (= lambda!422464 lambda!422378)))

(assert (=> d!2208087 true))

(assert (=> d!2208087 (= (appendTo!719 z1!570 ct2!306) (map!15930 z1!570 lambda!422464))))

(declare-fun bs!1879260 () Bool)

(assert (= bs!1879260 d!2208087))

(declare-fun m!7783400 () Bool)

(assert (=> bs!1879260 m!7783400))

(assert (=> start!685262 d!2208087))

(declare-fun bs!1879261 () Bool)

(declare-fun d!2208089 () Bool)

(assert (= bs!1879261 (and d!2208089 b!7062028)))

(declare-fun lambda!422465 () Int)

(assert (=> bs!1879261 (= lambda!422465 lambda!422379)))

(declare-fun bs!1879262 () Bool)

(assert (= bs!1879262 (and d!2208089 d!2208079)))

(assert (=> bs!1879262 (= lambda!422465 lambda!422459)))

(assert (=> d!2208089 (= (inv!86855 ct2!306) (forall!16547 (exprs!7094 ct2!306) lambda!422465))))

(declare-fun bs!1879263 () Bool)

(assert (= bs!1879263 d!2208089))

(declare-fun m!7783402 () Bool)

(assert (=> bs!1879263 m!7783402))

(assert (=> start!685262 d!2208089))

(declare-fun b!7062364 () Bool)

(declare-fun e!4245800 () Bool)

(declare-fun tp!1941183 () Bool)

(declare-fun tp!1941184 () Bool)

(assert (=> b!7062364 (= e!4245800 (and tp!1941183 tp!1941184))))

(assert (=> b!7062003 (= tp!1941163 e!4245800)))

(assert (= (and b!7062003 (is-Cons!68196 (exprs!7094 setElem!50022))) b!7062364))

(declare-fun condSetEmpty!50028 () Bool)

(assert (=> setNonEmpty!50022 (= condSetEmpty!50028 (= setRest!50022 (as set.empty (Set Context!13188))))))

(declare-fun setRes!50028 () Bool)

(assert (=> setNonEmpty!50022 (= tp!1941164 setRes!50028)))

(declare-fun setIsEmpty!50028 () Bool)

(assert (=> setIsEmpty!50028 setRes!50028))

(declare-fun setElem!50028 () Context!13188)

(declare-fun e!4245803 () Bool)

(declare-fun tp!1941190 () Bool)

(declare-fun setNonEmpty!50028 () Bool)

(assert (=> setNonEmpty!50028 (= setRes!50028 (and tp!1941190 (inv!86855 setElem!50028) e!4245803))))

(declare-fun setRest!50028 () (Set Context!13188))

(assert (=> setNonEmpty!50028 (= setRest!50022 (set.union (set.insert setElem!50028 (as set.empty (Set Context!13188))) setRest!50028))))

(declare-fun b!7062369 () Bool)

(declare-fun tp!1941189 () Bool)

(assert (=> b!7062369 (= e!4245803 tp!1941189)))

(assert (= (and setNonEmpty!50022 condSetEmpty!50028) setIsEmpty!50028))

(assert (= (and setNonEmpty!50022 (not condSetEmpty!50028)) setNonEmpty!50028))

(assert (= setNonEmpty!50028 b!7062369))

(declare-fun m!7783404 () Bool)

(assert (=> setNonEmpty!50028 m!7783404))

(declare-fun b!7062370 () Bool)

(declare-fun e!4245804 () Bool)

(declare-fun tp!1941191 () Bool)

(declare-fun tp!1941192 () Bool)

(assert (=> b!7062370 (= e!4245804 (and tp!1941191 tp!1941192))))

(assert (=> b!7061995 (= tp!1941165 e!4245804)))

(assert (= (and b!7061995 (is-Cons!68196 (exprs!7094 ct2!306))) b!7062370))

(declare-fun b!7062375 () Bool)

(declare-fun e!4245807 () Bool)

(declare-fun tp!1941195 () Bool)

(assert (=> b!7062375 (= e!4245807 (and tp_is_empty!44421 tp!1941195))))

(assert (=> b!7062006 (= tp!1941166 e!4245807)))

(assert (= (and b!7062006 (is-Cons!68197 (t!382102 s!7408))) b!7062375))

(declare-fun b_lambda!269337 () Bool)

(assert (= b_lambda!269333 (or b!7062011 b_lambda!269337)))

(declare-fun bs!1879264 () Bool)

(declare-fun d!2208091 () Bool)

(assert (= bs!1879264 (and d!2208091 b!7062011)))

(assert (=> bs!1879264 (= (dynLambda!27697 lambda!422380 lt!2536856) (derivationStepZipperUp!2182 lt!2536856 (h!74645 s!7408)))))

(assert (=> bs!1879264 m!7782856))

(assert (=> d!2208021 d!2208091))

(declare-fun b_lambda!269339 () Bool)

(assert (= b_lambda!269335 (or b!7062011 b_lambda!269339)))

(declare-fun bs!1879265 () Bool)

(declare-fun d!2208093 () Bool)

(assert (= bs!1879265 (and d!2208093 b!7062011)))

(assert (=> bs!1879265 (= (dynLambda!27697 lambda!422380 lt!2536893) (derivationStepZipperUp!2182 lt!2536893 (h!74645 s!7408)))))

(assert (=> bs!1879265 m!7782864))

(assert (=> d!2208069 d!2208093))

(declare-fun b_lambda!269341 () Bool)

(assert (= b_lambda!269323 (or b!7062011 b_lambda!269341)))

(declare-fun bs!1879266 () Bool)

(declare-fun d!2208095 () Bool)

(assert (= bs!1879266 (and d!2208095 b!7062011)))

(assert (=> bs!1879266 (= (dynLambda!27697 lambda!422380 lt!2536865) (derivationStepZipperUp!2182 lt!2536865 (h!74645 s!7408)))))

(assert (=> bs!1879266 m!7782888))

(assert (=> d!2207961 d!2208095))

(declare-fun b_lambda!269343 () Bool)

(assert (= b_lambda!269331 (or b!7062028 b_lambda!269343)))

(declare-fun bs!1879267 () Bool)

(declare-fun d!2208097 () Bool)

(assert (= bs!1879267 (and d!2208097 b!7062028)))

(declare-fun lt!2537163 () Unit!161872)

(assert (=> bs!1879267 (= lt!2537163 (lemmaConcatPreservesForall!909 (exprs!7094 lt!2536851) (exprs!7094 ct2!306) lambda!422379))))

(assert (=> bs!1879267 (= (dynLambda!27698 lambda!422378 lt!2536851) (Context!13189 (++!15693 (exprs!7094 lt!2536851) (exprs!7094 ct2!306))))))

(declare-fun m!7783406 () Bool)

(assert (=> bs!1879267 m!7783406))

(declare-fun m!7783408 () Bool)

(assert (=> bs!1879267 m!7783408))

(assert (=> d!2208009 d!2208097))

(declare-fun b_lambda!269345 () Bool)

(assert (= b_lambda!269327 (or b!7062028 b_lambda!269345)))

(declare-fun bs!1879268 () Bool)

(declare-fun d!2208099 () Bool)

(assert (= bs!1879268 (and d!2208099 b!7062028)))

(declare-fun lt!2537164 () Unit!161872)

(assert (=> bs!1879268 (= lt!2537164 (lemmaConcatPreservesForall!909 (exprs!7094 lt!2537113) (exprs!7094 ct2!306) lambda!422379))))

(assert (=> bs!1879268 (= (dynLambda!27698 lambda!422378 lt!2537113) (Context!13189 (++!15693 (exprs!7094 lt!2537113) (exprs!7094 ct2!306))))))

(declare-fun m!7783410 () Bool)

(assert (=> bs!1879268 m!7783410))

(declare-fun m!7783412 () Bool)

(assert (=> bs!1879268 m!7783412))

(assert (=> d!2207991 d!2208099))

(declare-fun b_lambda!269347 () Bool)

(assert (= b_lambda!269325 (or b!7062011 b_lambda!269347)))

(declare-fun bs!1879269 () Bool)

(declare-fun d!2208101 () Bool)

(assert (= bs!1879269 (and d!2208101 b!7062011)))

(assert (=> bs!1879269 (= (dynLambda!27697 lambda!422380 lt!2536851) (derivationStepZipperUp!2182 lt!2536851 (h!74645 s!7408)))))

(assert (=> bs!1879269 m!7782754))

(assert (=> d!2207981 d!2208101))

(declare-fun b_lambda!269349 () Bool)

(assert (= b_lambda!269329 (or b!7062009 b_lambda!269349)))

(declare-fun bs!1879270 () Bool)

(declare-fun d!2208103 () Bool)

(assert (= bs!1879270 (and d!2208103 b!7062009)))

(assert (=> bs!1879270 (= (dynLambda!27699 lambda!422377 lt!2537119) (matchZipper!3138 (set.insert lt!2537119 (as set.empty (Set Context!13188))) s!7408))))

(declare-fun m!7783414 () Bool)

(assert (=> bs!1879270 m!7783414))

(assert (=> bs!1879270 m!7783414))

(declare-fun m!7783416 () Bool)

(assert (=> bs!1879270 m!7783416))

(assert (=> d!2207995 d!2208103))

(push 1)

(assert (not d!2208061))

(assert (not d!2207963))

(assert (not d!2208001))

(assert (not bm!641727))

(assert (not b!7062364))

(assert (not d!2208071))

(assert (not d!2207971))

(assert (not bm!641718))

(assert (not d!2208009))

(assert (not bs!1879268))

(assert (not bm!641705))

(assert (not b!7062344))

(assert (not d!2208049))

(assert (not d!2207989))

(assert (not bs!1879267))

(assert (not b!7062243))

(assert (not b!7062218))

(assert (not b!7062229))

(assert (not d!2208069))

(assert (not d!2208015))

(assert (not b!7062324))

(assert (not d!2208031))

(assert (not b!7062245))

(assert (not bm!641724))

(assert (not b!7062340))

(assert (not bm!641725))

(assert (not b!7062202))

(assert (not b!7062330))

(assert (not b!7062335))

(assert (not d!2208027))

(assert (not d!2208073))

(assert (not b!7062182))

(assert (not bs!1879265))

(assert (not d!2208075))

(assert (not d!2207961))

(assert (not b!7062265))

(assert (not d!2207967))

(assert (not b!7062262))

(assert (not b!7062336))

(assert tp_is_empty!44421)

(assert (not b!7062323))

(assert (not b!7062302))

(assert (not b!7062263))

(assert (not b!7062242))

(assert (not b!7062178))

(assert (not d!2208055))

(assert (not b!7062333))

(assert (not d!2208063))

(assert (not bm!641720))

(assert (not d!2208013))

(assert (not bs!1879264))

(assert (not b!7062249))

(assert (not d!2208079))

(assert (not d!2208077))

(assert (not b!7062248))

(assert (not b!7062334))

(assert (not b!7062152))

(assert (not b!7062223))

(assert (not b!7062232))

(assert (not b_lambda!269341))

(assert (not d!2208053))

(assert (not b!7062261))

(assert (not b!7062356))

(assert (not d!2208021))

(assert (not b!7062298))

(assert (not bs!1879270))

(assert (not b!7062151))

(assert (not bs!1879269))

(assert (not d!2207997))

(assert (not b!7062201))

(assert (not bs!1879266))

(assert (not bm!641704))

(assert (not b!7062187))

(assert (not b!7062214))

(assert (not d!2207981))

(assert (not d!2207957))

(assert (not b!7062235))

(assert (not b_lambda!269347))

(assert (not d!2208089))

(assert (not b!7062329))

(assert (not b_lambda!269349))

(assert (not b!7062331))

(assert (not b!7062332))

(assert (not b_lambda!269343))

(assert (not d!2208051))

(assert (not bm!641703))

(assert (not b!7062300))

(assert (not b!7062188))

(assert (not b!7062266))

(assert (not b!7062244))

(assert (not b_lambda!269345))

(assert (not b!7062358))

(assert (not b!7062342))

(assert (not bm!641726))

(assert (not bm!641702))

(assert (not d!2208037))

(assert (not d!2207983))

(assert (not d!2208025))

(assert (not b!7062303))

(assert (not b!7062328))

(assert (not b!7062359))

(assert (not b!7062375))

(assert (not d!2208085))

(assert (not b!7062341))

(assert (not b!7062233))

(assert (not b!7062213))

(assert (not b!7062343))

(assert (not d!2208059))

(assert (not d!2208003))

(assert (not d!2208041))

(assert (not b!7062177))

(assert (not b_lambda!269337))

(assert (not d!2208087))

(assert (not setNonEmpty!50028))

(assert (not d!2207999))

(assert (not d!2208011))

(assert (not b!7062183))

(assert (not d!2207965))

(assert (not b!7062370))

(assert (not d!2207991))

(assert (not d!2208029))

(assert (not b!7062327))

(assert (not b_lambda!269339))

(assert (not b!7062237))

(assert (not d!2208043))

(assert (not b!7062369))

(assert (not b!7062162))

(assert (not d!2208067))

(assert (not b!7062346))

(assert (not bm!641719))

(assert (not b!7062260))

(assert (not b!7062345))

(assert (not b!7062264))

(assert (not d!2207993))

(assert (not d!2208035))

(assert (not b!7062163))

(assert (not d!2207987))

(assert (not d!2207995))

(assert (not b!7062250))

(assert (not b!7062238))

(assert (not d!2208019))

(assert (not b!7062217))

(assert (not d!2207959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


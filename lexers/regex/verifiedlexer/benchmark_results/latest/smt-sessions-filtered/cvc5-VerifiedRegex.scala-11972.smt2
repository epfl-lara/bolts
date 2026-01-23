; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670666 () Bool)

(assert start!670666)

(declare-fun b!6984652 () Bool)

(assert (=> b!6984652 true))

(declare-fun b!6984654 () Bool)

(assert (=> b!6984654 true))

(declare-fun b!6984645 () Bool)

(assert (=> b!6984645 true))

(declare-fun b!6984641 () Bool)

(declare-fun res!2848177 () Bool)

(declare-fun e!4197981 () Bool)

(assert (=> b!6984641 (=> res!2848177 e!4197981)))

(declare-datatypes ((C!34650 0))(
  ( (C!34651 (val!27027 Int)) )
))
(declare-datatypes ((Regex!17190 0))(
  ( (ElementMatch!17190 (c!1295100 C!34650)) (Concat!26035 (regOne!34892 Regex!17190) (regTwo!34892 Regex!17190)) (EmptyExpr!17190) (Star!17190 (reg!17519 Regex!17190)) (EmptyLang!17190) (Union!17190 (regOne!34893 Regex!17190) (regTwo!34893 Regex!17190)) )
))
(declare-datatypes ((List!67115 0))(
  ( (Nil!66991) (Cons!66991 (h!73439 Regex!17190) (t!380862 List!67115)) )
))
(declare-datatypes ((Context!12372 0))(
  ( (Context!12373 (exprs!6686 List!67115)) )
))
(declare-fun lt!2483350 () Context!12372)

(declare-fun lt!2483331 () (Set Context!12372))

(assert (=> b!6984641 (= res!2848177 (not (set.member lt!2483350 lt!2483331)))))

(declare-fun b!6984642 () Bool)

(declare-fun e!4197983 () Bool)

(declare-fun tp_is_empty!43605 () Bool)

(declare-fun tp!1928902 () Bool)

(assert (=> b!6984642 (= e!4197983 (and tp_is_empty!43605 tp!1928902))))

(declare-fun b!6984643 () Bool)

(declare-fun res!2848182 () Bool)

(declare-fun e!4197979 () Bool)

(assert (=> b!6984643 (=> res!2848182 e!4197979)))

(declare-fun lt!2483349 () Context!12372)

(declare-fun isEmpty!39103 (List!67115) Bool)

(assert (=> b!6984643 (= res!2848182 (isEmpty!39103 (exprs!6686 lt!2483349)))))

(declare-fun b!6984644 () Bool)

(declare-fun e!4197988 () Bool)

(declare-fun e!4197987 () Bool)

(assert (=> b!6984644 (= e!4197988 e!4197987)))

(declare-fun res!2848181 () Bool)

(assert (=> b!6984644 (=> res!2848181 e!4197987)))

(declare-fun lt!2483334 () (Set Context!12372))

(declare-fun lt!2483341 () (Set Context!12372))

(assert (=> b!6984644 (= res!2848181 (not (= lt!2483334 lt!2483341)))))

(declare-fun lt!2483335 () (Set Context!12372))

(declare-fun lt!2483344 () (Set Context!12372))

(assert (=> b!6984644 (= lt!2483341 (set.union lt!2483335 lt!2483344))))

(declare-fun lt!2483345 () Context!12372)

(declare-datatypes ((List!67116 0))(
  ( (Nil!66992) (Cons!66992 (h!73440 C!34650) (t!380863 List!67116)) )
))
(declare-fun s!7408 () List!67116)

(declare-fun derivationStepZipperUp!1840 (Context!12372 C!34650) (Set Context!12372))

(assert (=> b!6984644 (= lt!2483344 (derivationStepZipperUp!1840 lt!2483345 (h!73440 s!7408)))))

(declare-fun derivationStepZipperDown!1908 (Regex!17190 Context!12372 C!34650) (Set Context!12372))

(assert (=> b!6984644 (= lt!2483335 (derivationStepZipperDown!1908 (h!73439 (exprs!6686 lt!2483349)) lt!2483345 (h!73440 s!7408)))))

(declare-fun lt!2483336 () List!67115)

(declare-fun ct2!306 () Context!12372)

(declare-fun ++!15135 (List!67115 List!67115) List!67115)

(assert (=> b!6984644 (= lt!2483345 (Context!12373 (++!15135 lt!2483336 (exprs!6686 ct2!306))))))

(declare-datatypes ((Unit!161035 0))(
  ( (Unit!161036) )
))
(declare-fun lt!2483347 () Unit!161035)

(declare-fun lambda!399962 () Int)

(declare-fun lemmaConcatPreservesForall!526 (List!67115 List!67115 Int) Unit!161035)

(assert (=> b!6984644 (= lt!2483347 (lemmaConcatPreservesForall!526 lt!2483336 (exprs!6686 ct2!306) lambda!399962))))

(declare-fun lt!2483333 () Unit!161035)

(assert (=> b!6984644 (= lt!2483333 (lemmaConcatPreservesForall!526 lt!2483336 (exprs!6686 ct2!306) lambda!399962))))

(declare-fun e!4197978 () Bool)

(assert (=> b!6984645 (= e!4197978 e!4197979)))

(declare-fun res!2848175 () Bool)

(assert (=> b!6984645 (=> res!2848175 e!4197979)))

(declare-fun lt!2483351 () (Set Context!12372))

(declare-fun derivationStepZipper!2670 ((Set Context!12372) C!34650) (Set Context!12372))

(assert (=> b!6984645 (= res!2848175 (not (= (derivationStepZipper!2670 lt!2483351 (h!73440 s!7408)) lt!2483334)))))

(declare-fun lambda!399963 () Int)

(declare-fun lt!2483353 () Context!12372)

(declare-fun flatMap!2176 ((Set Context!12372) Int) (Set Context!12372))

(assert (=> b!6984645 (= (flatMap!2176 lt!2483351 lambda!399963) (derivationStepZipperUp!1840 lt!2483353 (h!73440 s!7408)))))

(declare-fun lt!2483330 () Unit!161035)

(declare-fun lemmaFlatMapOnSingletonSet!1691 ((Set Context!12372) Context!12372 Int) Unit!161035)

(assert (=> b!6984645 (= lt!2483330 (lemmaFlatMapOnSingletonSet!1691 lt!2483351 lt!2483353 lambda!399963))))

(assert (=> b!6984645 (= lt!2483334 (derivationStepZipperUp!1840 lt!2483353 (h!73440 s!7408)))))

(declare-fun lt!2483352 () Unit!161035)

(assert (=> b!6984645 (= lt!2483352 (lemmaConcatPreservesForall!526 (exprs!6686 lt!2483349) (exprs!6686 ct2!306) lambda!399962))))

(declare-fun b!6984647 () Bool)

(declare-fun res!2848172 () Bool)

(declare-fun e!4197984 () Bool)

(assert (=> b!6984647 (=> (not res!2848172) (not e!4197984))))

(assert (=> b!6984647 (= res!2848172 (is-Cons!66992 s!7408))))

(declare-fun b!6984648 () Bool)

(declare-fun e!4197986 () Bool)

(declare-fun e!4197980 () Bool)

(assert (=> b!6984648 (= e!4197986 e!4197980)))

(declare-fun res!2848180 () Bool)

(assert (=> b!6984648 (=> res!2848180 e!4197980)))

(declare-fun forall!16091 (List!67115 Int) Bool)

(assert (=> b!6984648 (= res!2848180 (not (forall!16091 lt!2483336 lambda!399962)))))

(declare-fun b!6984649 () Bool)

(assert (=> b!6984649 (= e!4197979 e!4197988)))

(declare-fun res!2848173 () Bool)

(assert (=> b!6984649 (=> res!2848173 e!4197988)))

(declare-fun nullable!6950 (Regex!17190) Bool)

(assert (=> b!6984649 (= res!2848173 (not (nullable!6950 (h!73439 (exprs!6686 lt!2483349)))))))

(declare-fun tail!13179 (List!67115) List!67115)

(assert (=> b!6984649 (= lt!2483336 (tail!13179 (exprs!6686 lt!2483349)))))

(declare-fun e!4197989 () Bool)

(declare-fun setRes!47646 () Bool)

(declare-fun setNonEmpty!47646 () Bool)

(declare-fun tp!1928900 () Bool)

(declare-fun setElem!47646 () Context!12372)

(declare-fun inv!85835 (Context!12372) Bool)

(assert (=> setNonEmpty!47646 (= setRes!47646 (and tp!1928900 (inv!85835 setElem!47646) e!4197989))))

(declare-fun z1!570 () (Set Context!12372))

(declare-fun setRest!47646 () (Set Context!12372))

(assert (=> setNonEmpty!47646 (= z1!570 (set.union (set.insert setElem!47646 (as set.empty (Set Context!12372))) setRest!47646))))

(declare-fun b!6984650 () Bool)

(declare-fun e!4197977 () Bool)

(declare-fun tp!1928899 () Bool)

(assert (=> b!6984650 (= e!4197977 tp!1928899)))

(declare-fun b!6984651 () Bool)

(declare-fun e!4197985 () Bool)

(assert (=> b!6984651 (= e!4197985 e!4197978)))

(declare-fun res!2848171 () Bool)

(assert (=> b!6984651 (=> res!2848171 e!4197978)))

(declare-fun lt!2483342 () (Set Context!12372))

(assert (=> b!6984651 (= res!2848171 (not (= lt!2483351 lt!2483342)))))

(assert (=> b!6984651 (= lt!2483351 (set.insert lt!2483353 (as set.empty (Set Context!12372))))))

(declare-fun lt!2483339 () Unit!161035)

(assert (=> b!6984651 (= lt!2483339 (lemmaConcatPreservesForall!526 (exprs!6686 lt!2483349) (exprs!6686 ct2!306) lambda!399962))))

(assert (=> b!6984652 (= e!4197984 (not e!4197981))))

(declare-fun res!2848176 () Bool)

(assert (=> b!6984652 (=> res!2848176 e!4197981)))

(declare-fun matchZipper!2730 ((Set Context!12372) List!67116) Bool)

(assert (=> b!6984652 (= res!2848176 (not (matchZipper!2730 lt!2483342 s!7408)))))

(assert (=> b!6984652 (= lt!2483342 (set.insert lt!2483350 (as set.empty (Set Context!12372))))))

(declare-fun lambda!399960 () Int)

(declare-fun getWitness!1072 ((Set Context!12372) Int) Context!12372)

(assert (=> b!6984652 (= lt!2483350 (getWitness!1072 lt!2483331 lambda!399960))))

(declare-datatypes ((List!67117 0))(
  ( (Nil!66993) (Cons!66993 (h!73441 Context!12372) (t!380864 List!67117)) )
))
(declare-fun lt!2483329 () List!67117)

(declare-fun exists!2961 (List!67117 Int) Bool)

(assert (=> b!6984652 (exists!2961 lt!2483329 lambda!399960)))

(declare-fun lt!2483346 () Unit!161035)

(declare-fun lemmaZipperMatchesExistsMatchingContext!159 (List!67117 List!67116) Unit!161035)

(assert (=> b!6984652 (= lt!2483346 (lemmaZipperMatchesExistsMatchingContext!159 lt!2483329 s!7408))))

(declare-fun toList!10550 ((Set Context!12372)) List!67117)

(assert (=> b!6984652 (= lt!2483329 (toList!10550 lt!2483331))))

(declare-fun b!6984646 () Bool)

(assert (=> b!6984646 (= e!4197980 (forall!16091 (exprs!6686 ct2!306) lambda!399962))))

(declare-fun res!2848179 () Bool)

(assert (=> start!670666 (=> (not res!2848179) (not e!4197984))))

(assert (=> start!670666 (= res!2848179 (matchZipper!2730 lt!2483331 s!7408))))

(declare-fun appendTo!311 ((Set Context!12372) Context!12372) (Set Context!12372))

(assert (=> start!670666 (= lt!2483331 (appendTo!311 z1!570 ct2!306))))

(assert (=> start!670666 e!4197984))

(declare-fun condSetEmpty!47646 () Bool)

(assert (=> start!670666 (= condSetEmpty!47646 (= z1!570 (as set.empty (Set Context!12372))))))

(assert (=> start!670666 setRes!47646))

(assert (=> start!670666 (and (inv!85835 ct2!306) e!4197977)))

(assert (=> start!670666 e!4197983))

(declare-fun b!6984653 () Bool)

(assert (=> b!6984653 (= e!4197987 e!4197986)))

(declare-fun res!2848178 () Bool)

(assert (=> b!6984653 (=> res!2848178 e!4197986)))

(declare-fun lt!2483340 () Bool)

(assert (=> b!6984653 (= res!2848178 (= (matchZipper!2730 lt!2483334 (t!380863 s!7408)) lt!2483340))))

(declare-fun lt!2483348 () Unit!161035)

(assert (=> b!6984653 (= lt!2483348 (lemmaConcatPreservesForall!526 lt!2483336 (exprs!6686 ct2!306) lambda!399962))))

(declare-fun e!4197982 () Bool)

(assert (=> b!6984653 (= (matchZipper!2730 lt!2483341 (t!380863 s!7408)) e!4197982)))

(declare-fun res!2848169 () Bool)

(assert (=> b!6984653 (=> res!2848169 e!4197982)))

(assert (=> b!6984653 (= res!2848169 lt!2483340)))

(assert (=> b!6984653 (= lt!2483340 (matchZipper!2730 lt!2483335 (t!380863 s!7408)))))

(declare-fun lt!2483337 () Unit!161035)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1363 ((Set Context!12372) (Set Context!12372) List!67116) Unit!161035)

(assert (=> b!6984653 (= lt!2483337 (lemmaZipperConcatMatchesSameAsBothZippers!1363 lt!2483335 lt!2483344 (t!380863 s!7408)))))

(declare-fun lt!2483338 () Unit!161035)

(assert (=> b!6984653 (= lt!2483338 (lemmaConcatPreservesForall!526 lt!2483336 (exprs!6686 ct2!306) lambda!399962))))

(declare-fun lt!2483343 () Unit!161035)

(assert (=> b!6984653 (= lt!2483343 (lemmaConcatPreservesForall!526 lt!2483336 (exprs!6686 ct2!306) lambda!399962))))

(declare-fun setIsEmpty!47646 () Bool)

(assert (=> setIsEmpty!47646 setRes!47646))

(assert (=> b!6984654 (= e!4197981 e!4197985)))

(declare-fun res!2848174 () Bool)

(assert (=> b!6984654 (=> res!2848174 e!4197985)))

(assert (=> b!6984654 (= res!2848174 (or (not (= lt!2483353 lt!2483350)) (not (set.member lt!2483349 z1!570))))))

(assert (=> b!6984654 (= lt!2483353 (Context!12373 (++!15135 (exprs!6686 lt!2483349) (exprs!6686 ct2!306))))))

(declare-fun lt!2483332 () Unit!161035)

(assert (=> b!6984654 (= lt!2483332 (lemmaConcatPreservesForall!526 (exprs!6686 lt!2483349) (exprs!6686 ct2!306) lambda!399962))))

(declare-fun lambda!399961 () Int)

(declare-fun mapPost2!45 ((Set Context!12372) Int Context!12372) Context!12372)

(assert (=> b!6984654 (= lt!2483349 (mapPost2!45 z1!570 lambda!399961 lt!2483350))))

(declare-fun b!6984655 () Bool)

(declare-fun res!2848170 () Bool)

(assert (=> b!6984655 (=> res!2848170 e!4197979)))

(assert (=> b!6984655 (= res!2848170 (not (is-Cons!66991 (exprs!6686 lt!2483349))))))

(declare-fun b!6984656 () Bool)

(assert (=> b!6984656 (= e!4197982 (matchZipper!2730 lt!2483344 (t!380863 s!7408)))))

(declare-fun b!6984657 () Bool)

(declare-fun tp!1928901 () Bool)

(assert (=> b!6984657 (= e!4197989 tp!1928901)))

(assert (= (and start!670666 res!2848179) b!6984647))

(assert (= (and b!6984647 res!2848172) b!6984652))

(assert (= (and b!6984652 (not res!2848176)) b!6984641))

(assert (= (and b!6984641 (not res!2848177)) b!6984654))

(assert (= (and b!6984654 (not res!2848174)) b!6984651))

(assert (= (and b!6984651 (not res!2848171)) b!6984645))

(assert (= (and b!6984645 (not res!2848175)) b!6984655))

(assert (= (and b!6984655 (not res!2848170)) b!6984643))

(assert (= (and b!6984643 (not res!2848182)) b!6984649))

(assert (= (and b!6984649 (not res!2848173)) b!6984644))

(assert (= (and b!6984644 (not res!2848181)) b!6984653))

(assert (= (and b!6984653 (not res!2848169)) b!6984656))

(assert (= (and b!6984653 (not res!2848178)) b!6984648))

(assert (= (and b!6984648 (not res!2848180)) b!6984646))

(assert (= (and start!670666 condSetEmpty!47646) setIsEmpty!47646))

(assert (= (and start!670666 (not condSetEmpty!47646)) setNonEmpty!47646))

(assert (= setNonEmpty!47646 b!6984657))

(assert (= start!670666 b!6984650))

(assert (= (and start!670666 (is-Cons!66992 s!7408)) b!6984642))

(declare-fun m!7671908 () Bool)

(assert (=> b!6984641 m!7671908))

(declare-fun m!7671910 () Bool)

(assert (=> b!6984645 m!7671910))

(declare-fun m!7671912 () Bool)

(assert (=> b!6984645 m!7671912))

(declare-fun m!7671914 () Bool)

(assert (=> b!6984645 m!7671914))

(declare-fun m!7671916 () Bool)

(assert (=> b!6984645 m!7671916))

(declare-fun m!7671918 () Bool)

(assert (=> b!6984645 m!7671918))

(declare-fun m!7671920 () Bool)

(assert (=> b!6984652 m!7671920))

(declare-fun m!7671922 () Bool)

(assert (=> b!6984652 m!7671922))

(declare-fun m!7671924 () Bool)

(assert (=> b!6984652 m!7671924))

(declare-fun m!7671926 () Bool)

(assert (=> b!6984652 m!7671926))

(declare-fun m!7671928 () Bool)

(assert (=> b!6984652 m!7671928))

(declare-fun m!7671930 () Bool)

(assert (=> b!6984652 m!7671930))

(declare-fun m!7671932 () Bool)

(assert (=> b!6984649 m!7671932))

(declare-fun m!7671934 () Bool)

(assert (=> b!6984649 m!7671934))

(declare-fun m!7671936 () Bool)

(assert (=> setNonEmpty!47646 m!7671936))

(declare-fun m!7671938 () Bool)

(assert (=> b!6984643 m!7671938))

(declare-fun m!7671940 () Bool)

(assert (=> b!6984651 m!7671940))

(assert (=> b!6984651 m!7671912))

(declare-fun m!7671942 () Bool)

(assert (=> b!6984644 m!7671942))

(declare-fun m!7671944 () Bool)

(assert (=> b!6984644 m!7671944))

(declare-fun m!7671946 () Bool)

(assert (=> b!6984644 m!7671946))

(declare-fun m!7671948 () Bool)

(assert (=> b!6984644 m!7671948))

(assert (=> b!6984644 m!7671948))

(declare-fun m!7671950 () Bool)

(assert (=> b!6984656 m!7671950))

(assert (=> b!6984653 m!7671948))

(assert (=> b!6984653 m!7671948))

(declare-fun m!7671952 () Bool)

(assert (=> b!6984653 m!7671952))

(declare-fun m!7671954 () Bool)

(assert (=> b!6984653 m!7671954))

(declare-fun m!7671956 () Bool)

(assert (=> b!6984653 m!7671956))

(declare-fun m!7671958 () Bool)

(assert (=> b!6984653 m!7671958))

(assert (=> b!6984653 m!7671948))

(declare-fun m!7671960 () Bool)

(assert (=> b!6984654 m!7671960))

(declare-fun m!7671962 () Bool)

(assert (=> b!6984654 m!7671962))

(assert (=> b!6984654 m!7671912))

(declare-fun m!7671964 () Bool)

(assert (=> b!6984654 m!7671964))

(declare-fun m!7671966 () Bool)

(assert (=> start!670666 m!7671966))

(declare-fun m!7671968 () Bool)

(assert (=> start!670666 m!7671968))

(declare-fun m!7671970 () Bool)

(assert (=> start!670666 m!7671970))

(declare-fun m!7671972 () Bool)

(assert (=> b!6984648 m!7671972))

(declare-fun m!7671974 () Bool)

(assert (=> b!6984646 m!7671974))

(push 1)

(assert tp_is_empty!43605)

(assert (not b!6984656))

(assert (not b!6984646))

(assert (not b!6984649))

(assert (not b!6984652))

(assert (not start!670666))

(assert (not setNonEmpty!47646))

(assert (not b!6984642))

(assert (not b!6984645))

(assert (not b!6984644))

(assert (not b!6984654))

(assert (not b!6984653))

(assert (not b!6984650))

(assert (not b!6984651))

(assert (not b!6984643))

(assert (not b!6984648))

(assert (not b!6984657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2175523 () Bool)

(declare-fun nullableFct!2619 (Regex!17190) Bool)

(assert (=> d!2175523 (= (nullable!6950 (h!73439 (exprs!6686 lt!2483349))) (nullableFct!2619 (h!73439 (exprs!6686 lt!2483349))))))

(declare-fun bs!1861525 () Bool)

(assert (= bs!1861525 d!2175523))

(declare-fun m!7672044 () Bool)

(assert (=> bs!1861525 m!7672044))

(assert (=> b!6984649 d!2175523))

(declare-fun d!2175525 () Bool)

(assert (=> d!2175525 (= (tail!13179 (exprs!6686 lt!2483349)) (t!380862 (exprs!6686 lt!2483349)))))

(assert (=> b!6984649 d!2175525))

(declare-fun d!2175527 () Bool)

(declare-fun res!2848230 () Bool)

(declare-fun e!4198033 () Bool)

(assert (=> d!2175527 (=> res!2848230 e!4198033)))

(assert (=> d!2175527 (= res!2848230 (is-Nil!66991 lt!2483336))))

(assert (=> d!2175527 (= (forall!16091 lt!2483336 lambda!399962) e!4198033)))

(declare-fun b!6984725 () Bool)

(declare-fun e!4198034 () Bool)

(assert (=> b!6984725 (= e!4198033 e!4198034)))

(declare-fun res!2848231 () Bool)

(assert (=> b!6984725 (=> (not res!2848231) (not e!4198034))))

(declare-fun dynLambda!26816 (Int Regex!17190) Bool)

(assert (=> b!6984725 (= res!2848231 (dynLambda!26816 lambda!399962 (h!73439 lt!2483336)))))

(declare-fun b!6984726 () Bool)

(assert (=> b!6984726 (= e!4198034 (forall!16091 (t!380862 lt!2483336) lambda!399962))))

(assert (= (and d!2175527 (not res!2848230)) b!6984725))

(assert (= (and b!6984725 res!2848231) b!6984726))

(declare-fun b_lambda!262087 () Bool)

(assert (=> (not b_lambda!262087) (not b!6984725)))

(declare-fun m!7672046 () Bool)

(assert (=> b!6984725 m!7672046))

(declare-fun m!7672048 () Bool)

(assert (=> b!6984726 m!7672048))

(assert (=> b!6984648 d!2175527))

(declare-fun d!2175529 () Bool)

(declare-fun c!1295112 () Bool)

(declare-fun isEmpty!39105 (List!67116) Bool)

(assert (=> d!2175529 (= c!1295112 (isEmpty!39105 (t!380863 s!7408)))))

(declare-fun e!4198037 () Bool)

(assert (=> d!2175529 (= (matchZipper!2730 lt!2483344 (t!380863 s!7408)) e!4198037)))

(declare-fun b!6984731 () Bool)

(declare-fun nullableZipper!2416 ((Set Context!12372)) Bool)

(assert (=> b!6984731 (= e!4198037 (nullableZipper!2416 lt!2483344))))

(declare-fun b!6984732 () Bool)

(declare-fun head!14091 (List!67116) C!34650)

(declare-fun tail!13181 (List!67116) List!67116)

(assert (=> b!6984732 (= e!4198037 (matchZipper!2730 (derivationStepZipper!2670 lt!2483344 (head!14091 (t!380863 s!7408))) (tail!13181 (t!380863 s!7408))))))

(assert (= (and d!2175529 c!1295112) b!6984731))

(assert (= (and d!2175529 (not c!1295112)) b!6984732))

(declare-fun m!7672050 () Bool)

(assert (=> d!2175529 m!7672050))

(declare-fun m!7672052 () Bool)

(assert (=> b!6984731 m!7672052))

(declare-fun m!7672054 () Bool)

(assert (=> b!6984732 m!7672054))

(assert (=> b!6984732 m!7672054))

(declare-fun m!7672056 () Bool)

(assert (=> b!6984732 m!7672056))

(declare-fun m!7672058 () Bool)

(assert (=> b!6984732 m!7672058))

(assert (=> b!6984732 m!7672056))

(assert (=> b!6984732 m!7672058))

(declare-fun m!7672060 () Bool)

(assert (=> b!6984732 m!7672060))

(assert (=> b!6984656 d!2175529))

(declare-fun d!2175531 () Bool)

(assert (=> d!2175531 (forall!16091 (++!15135 (exprs!6686 lt!2483349) (exprs!6686 ct2!306)) lambda!399962)))

(declare-fun lt!2483433 () Unit!161035)

(declare-fun choose!52130 (List!67115 List!67115 Int) Unit!161035)

(assert (=> d!2175531 (= lt!2483433 (choose!52130 (exprs!6686 lt!2483349) (exprs!6686 ct2!306) lambda!399962))))

(assert (=> d!2175531 (forall!16091 (exprs!6686 lt!2483349) lambda!399962)))

(assert (=> d!2175531 (= (lemmaConcatPreservesForall!526 (exprs!6686 lt!2483349) (exprs!6686 ct2!306) lambda!399962) lt!2483433)))

(declare-fun bs!1861526 () Bool)

(assert (= bs!1861526 d!2175531))

(assert (=> bs!1861526 m!7671962))

(assert (=> bs!1861526 m!7671962))

(declare-fun m!7672062 () Bool)

(assert (=> bs!1861526 m!7672062))

(declare-fun m!7672064 () Bool)

(assert (=> bs!1861526 m!7672064))

(declare-fun m!7672066 () Bool)

(assert (=> bs!1861526 m!7672066))

(assert (=> b!6984651 d!2175531))

(declare-fun bs!1861527 () Bool)

(declare-fun d!2175533 () Bool)

(assert (= bs!1861527 (and d!2175533 b!6984654)))

(declare-fun lambda!399998 () Int)

(assert (=> bs!1861527 (= lambda!399998 lambda!399962)))

(assert (=> d!2175533 (= (inv!85835 setElem!47646) (forall!16091 (exprs!6686 setElem!47646) lambda!399998))))

(declare-fun bs!1861528 () Bool)

(assert (= bs!1861528 d!2175533))

(declare-fun m!7672068 () Bool)

(assert (=> bs!1861528 m!7672068))

(assert (=> setNonEmpty!47646 d!2175533))

(declare-fun d!2175535 () Bool)

(assert (=> d!2175535 (forall!16091 (++!15135 lt!2483336 (exprs!6686 ct2!306)) lambda!399962)))

(declare-fun lt!2483434 () Unit!161035)

(assert (=> d!2175535 (= lt!2483434 (choose!52130 lt!2483336 (exprs!6686 ct2!306) lambda!399962))))

(assert (=> d!2175535 (forall!16091 lt!2483336 lambda!399962)))

(assert (=> d!2175535 (= (lemmaConcatPreservesForall!526 lt!2483336 (exprs!6686 ct2!306) lambda!399962) lt!2483434)))

(declare-fun bs!1861529 () Bool)

(assert (= bs!1861529 d!2175535))

(assert (=> bs!1861529 m!7671942))

(assert (=> bs!1861529 m!7671942))

(declare-fun m!7672070 () Bool)

(assert (=> bs!1861529 m!7672070))

(declare-fun m!7672072 () Bool)

(assert (=> bs!1861529 m!7672072))

(assert (=> bs!1861529 m!7671972))

(assert (=> b!6984644 d!2175535))

(declare-fun b!6984755 () Bool)

(declare-fun e!4198052 () (Set Context!12372))

(declare-fun call!634000 () (Set Context!12372))

(declare-fun call!633999 () (Set Context!12372))

(assert (=> b!6984755 (= e!4198052 (set.union call!634000 call!633999))))

(declare-fun d!2175537 () Bool)

(declare-fun c!1295127 () Bool)

(assert (=> d!2175537 (= c!1295127 (and (is-ElementMatch!17190 (h!73439 (exprs!6686 lt!2483349))) (= (c!1295100 (h!73439 (exprs!6686 lt!2483349))) (h!73440 s!7408))))))

(declare-fun e!4198053 () (Set Context!12372))

(assert (=> d!2175537 (= (derivationStepZipperDown!1908 (h!73439 (exprs!6686 lt!2483349)) lt!2483345 (h!73440 s!7408)) e!4198053)))

(declare-fun call!633996 () List!67115)

(declare-fun c!1295124 () Bool)

(declare-fun bm!633991 () Bool)

(assert (=> bm!633991 (= call!633999 (derivationStepZipperDown!1908 (ite c!1295124 (regTwo!34893 (h!73439 (exprs!6686 lt!2483349))) (regOne!34892 (h!73439 (exprs!6686 lt!2483349)))) (ite c!1295124 lt!2483345 (Context!12373 call!633996)) (h!73440 s!7408)))))

(declare-fun b!6984756 () Bool)

(declare-fun e!4198051 () (Set Context!12372))

(declare-fun call!634001 () (Set Context!12372))

(assert (=> b!6984756 (= e!4198051 call!634001)))

(declare-fun b!6984757 () Bool)

(declare-fun c!1295123 () Bool)

(declare-fun e!4198055 () Bool)

(assert (=> b!6984757 (= c!1295123 e!4198055)))

(declare-fun res!2848235 () Bool)

(assert (=> b!6984757 (=> (not res!2848235) (not e!4198055))))

(assert (=> b!6984757 (= res!2848235 (is-Concat!26035 (h!73439 (exprs!6686 lt!2483349))))))

(declare-fun e!4198050 () (Set Context!12372))

(assert (=> b!6984757 (= e!4198052 e!4198050)))

(declare-fun bm!633992 () Bool)

(declare-fun call!633997 () List!67115)

(assert (=> bm!633992 (= call!633997 call!633996)))

(declare-fun b!6984758 () Bool)

(assert (=> b!6984758 (= e!4198050 e!4198051)))

(declare-fun c!1295126 () Bool)

(assert (=> b!6984758 (= c!1295126 (is-Concat!26035 (h!73439 (exprs!6686 lt!2483349))))))

(declare-fun bm!633993 () Bool)

(assert (=> bm!633993 (= call!634000 (derivationStepZipperDown!1908 (ite c!1295124 (regOne!34893 (h!73439 (exprs!6686 lt!2483349))) (ite c!1295123 (regTwo!34892 (h!73439 (exprs!6686 lt!2483349))) (ite c!1295126 (regOne!34892 (h!73439 (exprs!6686 lt!2483349))) (reg!17519 (h!73439 (exprs!6686 lt!2483349)))))) (ite (or c!1295124 c!1295123) lt!2483345 (Context!12373 call!633997)) (h!73440 s!7408)))))

(declare-fun bm!633994 () Bool)

(declare-fun $colon$colon!2468 (List!67115 Regex!17190) List!67115)

(assert (=> bm!633994 (= call!633996 ($colon$colon!2468 (exprs!6686 lt!2483345) (ite (or c!1295123 c!1295126) (regTwo!34892 (h!73439 (exprs!6686 lt!2483349))) (h!73439 (exprs!6686 lt!2483349)))))))

(declare-fun b!6984759 () Bool)

(assert (=> b!6984759 (= e!4198053 e!4198052)))

(assert (=> b!6984759 (= c!1295124 (is-Union!17190 (h!73439 (exprs!6686 lt!2483349))))))

(declare-fun bm!633995 () Bool)

(declare-fun call!633998 () (Set Context!12372))

(assert (=> bm!633995 (= call!633998 call!634000)))

(declare-fun b!6984760 () Bool)

(declare-fun e!4198054 () (Set Context!12372))

(assert (=> b!6984760 (= e!4198054 call!634001)))

(declare-fun b!6984761 () Bool)

(declare-fun c!1295125 () Bool)

(assert (=> b!6984761 (= c!1295125 (is-Star!17190 (h!73439 (exprs!6686 lt!2483349))))))

(assert (=> b!6984761 (= e!4198051 e!4198054)))

(declare-fun b!6984762 () Bool)

(assert (=> b!6984762 (= e!4198055 (nullable!6950 (regOne!34892 (h!73439 (exprs!6686 lt!2483349)))))))

(declare-fun bm!633996 () Bool)

(assert (=> bm!633996 (= call!634001 call!633998)))

(declare-fun b!6984763 () Bool)

(assert (=> b!6984763 (= e!4198054 (as set.empty (Set Context!12372)))))

(declare-fun b!6984764 () Bool)

(assert (=> b!6984764 (= e!4198050 (set.union call!633999 call!633998))))

(declare-fun b!6984765 () Bool)

(assert (=> b!6984765 (= e!4198053 (set.insert lt!2483345 (as set.empty (Set Context!12372))))))

(assert (= (and d!2175537 c!1295127) b!6984765))

(assert (= (and d!2175537 (not c!1295127)) b!6984759))

(assert (= (and b!6984759 c!1295124) b!6984755))

(assert (= (and b!6984759 (not c!1295124)) b!6984757))

(assert (= (and b!6984757 res!2848235) b!6984762))

(assert (= (and b!6984757 c!1295123) b!6984764))

(assert (= (and b!6984757 (not c!1295123)) b!6984758))

(assert (= (and b!6984758 c!1295126) b!6984756))

(assert (= (and b!6984758 (not c!1295126)) b!6984761))

(assert (= (and b!6984761 c!1295125) b!6984760))

(assert (= (and b!6984761 (not c!1295125)) b!6984763))

(assert (= (or b!6984756 b!6984760) bm!633992))

(assert (= (or b!6984756 b!6984760) bm!633996))

(assert (= (or b!6984764 bm!633996) bm!633995))

(assert (= (or b!6984764 bm!633992) bm!633994))

(assert (= (or b!6984755 bm!633995) bm!633993))

(assert (= (or b!6984755 b!6984764) bm!633991))

(declare-fun m!7672074 () Bool)

(assert (=> bm!633993 m!7672074))

(declare-fun m!7672076 () Bool)

(assert (=> bm!633994 m!7672076))

(declare-fun m!7672078 () Bool)

(assert (=> bm!633991 m!7672078))

(declare-fun m!7672080 () Bool)

(assert (=> b!6984762 m!7672080))

(declare-fun m!7672082 () Bool)

(assert (=> b!6984765 m!7672082))

(assert (=> b!6984644 d!2175537))

(declare-fun b!6984775 () Bool)

(declare-fun e!4198061 () List!67115)

(assert (=> b!6984775 (= e!4198061 (Cons!66991 (h!73439 lt!2483336) (++!15135 (t!380862 lt!2483336) (exprs!6686 ct2!306))))))

(declare-fun b!6984776 () Bool)

(declare-fun res!2848240 () Bool)

(declare-fun e!4198060 () Bool)

(assert (=> b!6984776 (=> (not res!2848240) (not e!4198060))))

(declare-fun lt!2483437 () List!67115)

(declare-fun size!40888 (List!67115) Int)

(assert (=> b!6984776 (= res!2848240 (= (size!40888 lt!2483437) (+ (size!40888 lt!2483336) (size!40888 (exprs!6686 ct2!306)))))))

(declare-fun b!6984777 () Bool)

(assert (=> b!6984777 (= e!4198060 (or (not (= (exprs!6686 ct2!306) Nil!66991)) (= lt!2483437 lt!2483336)))))

(declare-fun d!2175539 () Bool)

(assert (=> d!2175539 e!4198060))

(declare-fun res!2848241 () Bool)

(assert (=> d!2175539 (=> (not res!2848241) (not e!4198060))))

(declare-fun content!13226 (List!67115) (Set Regex!17190))

(assert (=> d!2175539 (= res!2848241 (= (content!13226 lt!2483437) (set.union (content!13226 lt!2483336) (content!13226 (exprs!6686 ct2!306)))))))

(assert (=> d!2175539 (= lt!2483437 e!4198061)))

(declare-fun c!1295130 () Bool)

(assert (=> d!2175539 (= c!1295130 (is-Nil!66991 lt!2483336))))

(assert (=> d!2175539 (= (++!15135 lt!2483336 (exprs!6686 ct2!306)) lt!2483437)))

(declare-fun b!6984774 () Bool)

(assert (=> b!6984774 (= e!4198061 (exprs!6686 ct2!306))))

(assert (= (and d!2175539 c!1295130) b!6984774))

(assert (= (and d!2175539 (not c!1295130)) b!6984775))

(assert (= (and d!2175539 res!2848241) b!6984776))

(assert (= (and b!6984776 res!2848240) b!6984777))

(declare-fun m!7672084 () Bool)

(assert (=> b!6984775 m!7672084))

(declare-fun m!7672086 () Bool)

(assert (=> b!6984776 m!7672086))

(declare-fun m!7672088 () Bool)

(assert (=> b!6984776 m!7672088))

(declare-fun m!7672090 () Bool)

(assert (=> b!6984776 m!7672090))

(declare-fun m!7672092 () Bool)

(assert (=> d!2175539 m!7672092))

(declare-fun m!7672094 () Bool)

(assert (=> d!2175539 m!7672094))

(declare-fun m!7672096 () Bool)

(assert (=> d!2175539 m!7672096))

(assert (=> b!6984644 d!2175539))

(declare-fun call!634004 () (Set Context!12372))

(declare-fun e!4198070 () (Set Context!12372))

(declare-fun b!6984788 () Bool)

(assert (=> b!6984788 (= e!4198070 (set.union call!634004 (derivationStepZipperUp!1840 (Context!12373 (t!380862 (exprs!6686 lt!2483345))) (h!73440 s!7408))))))

(declare-fun d!2175541 () Bool)

(declare-fun c!1295136 () Bool)

(declare-fun e!4198069 () Bool)

(assert (=> d!2175541 (= c!1295136 e!4198069)))

(declare-fun res!2848244 () Bool)

(assert (=> d!2175541 (=> (not res!2848244) (not e!4198069))))

(assert (=> d!2175541 (= res!2848244 (is-Cons!66991 (exprs!6686 lt!2483345)))))

(assert (=> d!2175541 (= (derivationStepZipperUp!1840 lt!2483345 (h!73440 s!7408)) e!4198070)))

(declare-fun b!6984789 () Bool)

(assert (=> b!6984789 (= e!4198069 (nullable!6950 (h!73439 (exprs!6686 lt!2483345))))))

(declare-fun bm!633999 () Bool)

(assert (=> bm!633999 (= call!634004 (derivationStepZipperDown!1908 (h!73439 (exprs!6686 lt!2483345)) (Context!12373 (t!380862 (exprs!6686 lt!2483345))) (h!73440 s!7408)))))

(declare-fun b!6984790 () Bool)

(declare-fun e!4198068 () (Set Context!12372))

(assert (=> b!6984790 (= e!4198068 (as set.empty (Set Context!12372)))))

(declare-fun b!6984791 () Bool)

(assert (=> b!6984791 (= e!4198068 call!634004)))

(declare-fun b!6984792 () Bool)

(assert (=> b!6984792 (= e!4198070 e!4198068)))

(declare-fun c!1295135 () Bool)

(assert (=> b!6984792 (= c!1295135 (is-Cons!66991 (exprs!6686 lt!2483345)))))

(assert (= (and d!2175541 res!2848244) b!6984789))

(assert (= (and d!2175541 c!1295136) b!6984788))

(assert (= (and d!2175541 (not c!1295136)) b!6984792))

(assert (= (and b!6984792 c!1295135) b!6984791))

(assert (= (and b!6984792 (not c!1295135)) b!6984790))

(assert (= (or b!6984788 b!6984791) bm!633999))

(declare-fun m!7672098 () Bool)

(assert (=> b!6984788 m!7672098))

(declare-fun m!7672100 () Bool)

(assert (=> b!6984789 m!7672100))

(declare-fun m!7672102 () Bool)

(assert (=> bm!633999 m!7672102))

(assert (=> b!6984644 d!2175541))

(declare-fun d!2175543 () Bool)

(declare-fun c!1295137 () Bool)

(assert (=> d!2175543 (= c!1295137 (isEmpty!39105 (t!380863 s!7408)))))

(declare-fun e!4198071 () Bool)

(assert (=> d!2175543 (= (matchZipper!2730 lt!2483341 (t!380863 s!7408)) e!4198071)))

(declare-fun b!6984793 () Bool)

(assert (=> b!6984793 (= e!4198071 (nullableZipper!2416 lt!2483341))))

(declare-fun b!6984794 () Bool)

(assert (=> b!6984794 (= e!4198071 (matchZipper!2730 (derivationStepZipper!2670 lt!2483341 (head!14091 (t!380863 s!7408))) (tail!13181 (t!380863 s!7408))))))

(assert (= (and d!2175543 c!1295137) b!6984793))

(assert (= (and d!2175543 (not c!1295137)) b!6984794))

(assert (=> d!2175543 m!7672050))

(declare-fun m!7672104 () Bool)

(assert (=> b!6984793 m!7672104))

(assert (=> b!6984794 m!7672054))

(assert (=> b!6984794 m!7672054))

(declare-fun m!7672106 () Bool)

(assert (=> b!6984794 m!7672106))

(assert (=> b!6984794 m!7672058))

(assert (=> b!6984794 m!7672106))

(assert (=> b!6984794 m!7672058))

(declare-fun m!7672108 () Bool)

(assert (=> b!6984794 m!7672108))

(assert (=> b!6984653 d!2175543))

(declare-fun d!2175545 () Bool)

(declare-fun c!1295138 () Bool)

(assert (=> d!2175545 (= c!1295138 (isEmpty!39105 (t!380863 s!7408)))))

(declare-fun e!4198072 () Bool)

(assert (=> d!2175545 (= (matchZipper!2730 lt!2483334 (t!380863 s!7408)) e!4198072)))

(declare-fun b!6984795 () Bool)

(assert (=> b!6984795 (= e!4198072 (nullableZipper!2416 lt!2483334))))

(declare-fun b!6984796 () Bool)

(assert (=> b!6984796 (= e!4198072 (matchZipper!2730 (derivationStepZipper!2670 lt!2483334 (head!14091 (t!380863 s!7408))) (tail!13181 (t!380863 s!7408))))))

(assert (= (and d!2175545 c!1295138) b!6984795))

(assert (= (and d!2175545 (not c!1295138)) b!6984796))

(assert (=> d!2175545 m!7672050))

(declare-fun m!7672110 () Bool)

(assert (=> b!6984795 m!7672110))

(assert (=> b!6984796 m!7672054))

(assert (=> b!6984796 m!7672054))

(declare-fun m!7672112 () Bool)

(assert (=> b!6984796 m!7672112))

(assert (=> b!6984796 m!7672058))

(assert (=> b!6984796 m!7672112))

(assert (=> b!6984796 m!7672058))

(declare-fun m!7672114 () Bool)

(assert (=> b!6984796 m!7672114))

(assert (=> b!6984653 d!2175545))

(declare-fun e!4198075 () Bool)

(declare-fun d!2175547 () Bool)

(assert (=> d!2175547 (= (matchZipper!2730 (set.union lt!2483335 lt!2483344) (t!380863 s!7408)) e!4198075)))

(declare-fun res!2848247 () Bool)

(assert (=> d!2175547 (=> res!2848247 e!4198075)))

(assert (=> d!2175547 (= res!2848247 (matchZipper!2730 lt!2483335 (t!380863 s!7408)))))

(declare-fun lt!2483440 () Unit!161035)

(declare-fun choose!52131 ((Set Context!12372) (Set Context!12372) List!67116) Unit!161035)

(assert (=> d!2175547 (= lt!2483440 (choose!52131 lt!2483335 lt!2483344 (t!380863 s!7408)))))

(assert (=> d!2175547 (= (lemmaZipperConcatMatchesSameAsBothZippers!1363 lt!2483335 lt!2483344 (t!380863 s!7408)) lt!2483440)))

(declare-fun b!6984799 () Bool)

(assert (=> b!6984799 (= e!4198075 (matchZipper!2730 lt!2483344 (t!380863 s!7408)))))

(assert (= (and d!2175547 (not res!2848247)) b!6984799))

(declare-fun m!7672116 () Bool)

(assert (=> d!2175547 m!7672116))

(assert (=> d!2175547 m!7671954))

(declare-fun m!7672118 () Bool)

(assert (=> d!2175547 m!7672118))

(assert (=> b!6984799 m!7671950))

(assert (=> b!6984653 d!2175547))

(assert (=> b!6984653 d!2175535))

(declare-fun d!2175549 () Bool)

(declare-fun c!1295139 () Bool)

(assert (=> d!2175549 (= c!1295139 (isEmpty!39105 (t!380863 s!7408)))))

(declare-fun e!4198076 () Bool)

(assert (=> d!2175549 (= (matchZipper!2730 lt!2483335 (t!380863 s!7408)) e!4198076)))

(declare-fun b!6984800 () Bool)

(assert (=> b!6984800 (= e!4198076 (nullableZipper!2416 lt!2483335))))

(declare-fun b!6984801 () Bool)

(assert (=> b!6984801 (= e!4198076 (matchZipper!2730 (derivationStepZipper!2670 lt!2483335 (head!14091 (t!380863 s!7408))) (tail!13181 (t!380863 s!7408))))))

(assert (= (and d!2175549 c!1295139) b!6984800))

(assert (= (and d!2175549 (not c!1295139)) b!6984801))

(assert (=> d!2175549 m!7672050))

(declare-fun m!7672120 () Bool)

(assert (=> b!6984800 m!7672120))

(assert (=> b!6984801 m!7672054))

(assert (=> b!6984801 m!7672054))

(declare-fun m!7672122 () Bool)

(assert (=> b!6984801 m!7672122))

(assert (=> b!6984801 m!7672058))

(assert (=> b!6984801 m!7672122))

(assert (=> b!6984801 m!7672058))

(declare-fun m!7672124 () Bool)

(assert (=> b!6984801 m!7672124))

(assert (=> b!6984653 d!2175549))

(declare-fun d!2175551 () Bool)

(assert (=> d!2175551 (= (isEmpty!39103 (exprs!6686 lt!2483349)) (is-Nil!66991 (exprs!6686 lt!2483349)))))

(assert (=> b!6984643 d!2175551))

(declare-fun d!2175553 () Bool)

(declare-fun c!1295140 () Bool)

(assert (=> d!2175553 (= c!1295140 (isEmpty!39105 s!7408))))

(declare-fun e!4198077 () Bool)

(assert (=> d!2175553 (= (matchZipper!2730 lt!2483342 s!7408) e!4198077)))

(declare-fun b!6984802 () Bool)

(assert (=> b!6984802 (= e!4198077 (nullableZipper!2416 lt!2483342))))

(declare-fun b!6984803 () Bool)

(assert (=> b!6984803 (= e!4198077 (matchZipper!2730 (derivationStepZipper!2670 lt!2483342 (head!14091 s!7408)) (tail!13181 s!7408)))))

(assert (= (and d!2175553 c!1295140) b!6984802))

(assert (= (and d!2175553 (not c!1295140)) b!6984803))

(declare-fun m!7672126 () Bool)

(assert (=> d!2175553 m!7672126))

(declare-fun m!7672128 () Bool)

(assert (=> b!6984802 m!7672128))

(declare-fun m!7672130 () Bool)

(assert (=> b!6984803 m!7672130))

(assert (=> b!6984803 m!7672130))

(declare-fun m!7672132 () Bool)

(assert (=> b!6984803 m!7672132))

(declare-fun m!7672134 () Bool)

(assert (=> b!6984803 m!7672134))

(assert (=> b!6984803 m!7672132))

(assert (=> b!6984803 m!7672134))

(declare-fun m!7672136 () Bool)

(assert (=> b!6984803 m!7672136))

(assert (=> b!6984652 d!2175553))

(declare-fun bs!1861530 () Bool)

(declare-fun d!2175555 () Bool)

(assert (= bs!1861530 (and d!2175555 b!6984652)))

(declare-fun lambda!400001 () Int)

(assert (=> bs!1861530 (= lambda!400001 lambda!399960)))

(assert (=> d!2175555 true))

(assert (=> d!2175555 (exists!2961 lt!2483329 lambda!400001)))

(declare-fun lt!2483443 () Unit!161035)

(declare-fun choose!52132 (List!67117 List!67116) Unit!161035)

(assert (=> d!2175555 (= lt!2483443 (choose!52132 lt!2483329 s!7408))))

(declare-fun content!13227 (List!67117) (Set Context!12372))

(assert (=> d!2175555 (matchZipper!2730 (content!13227 lt!2483329) s!7408)))

(assert (=> d!2175555 (= (lemmaZipperMatchesExistsMatchingContext!159 lt!2483329 s!7408) lt!2483443)))

(declare-fun bs!1861531 () Bool)

(assert (= bs!1861531 d!2175555))

(declare-fun m!7672138 () Bool)

(assert (=> bs!1861531 m!7672138))

(declare-fun m!7672140 () Bool)

(assert (=> bs!1861531 m!7672140))

(declare-fun m!7672142 () Bool)

(assert (=> bs!1861531 m!7672142))

(assert (=> bs!1861531 m!7672142))

(declare-fun m!7672144 () Bool)

(assert (=> bs!1861531 m!7672144))

(assert (=> b!6984652 d!2175555))

(declare-fun d!2175557 () Bool)

(declare-fun e!4198080 () Bool)

(assert (=> d!2175557 e!4198080))

(declare-fun res!2848250 () Bool)

(assert (=> d!2175557 (=> (not res!2848250) (not e!4198080))))

(declare-fun lt!2483446 () List!67117)

(declare-fun noDuplicate!2506 (List!67117) Bool)

(assert (=> d!2175557 (= res!2848250 (noDuplicate!2506 lt!2483446))))

(declare-fun choose!52133 ((Set Context!12372)) List!67117)

(assert (=> d!2175557 (= lt!2483446 (choose!52133 lt!2483331))))

(assert (=> d!2175557 (= (toList!10550 lt!2483331) lt!2483446)))

(declare-fun b!6984806 () Bool)

(assert (=> b!6984806 (= e!4198080 (= (content!13227 lt!2483446) lt!2483331))))

(assert (= (and d!2175557 res!2848250) b!6984806))

(declare-fun m!7672146 () Bool)

(assert (=> d!2175557 m!7672146))

(declare-fun m!7672148 () Bool)

(assert (=> d!2175557 m!7672148))

(declare-fun m!7672150 () Bool)

(assert (=> b!6984806 m!7672150))

(assert (=> b!6984652 d!2175557))

(declare-fun d!2175559 () Bool)

(declare-fun e!4198083 () Bool)

(assert (=> d!2175559 e!4198083))

(declare-fun res!2848253 () Bool)

(assert (=> d!2175559 (=> (not res!2848253) (not e!4198083))))

(declare-fun lt!2483449 () Context!12372)

(declare-fun dynLambda!26817 (Int Context!12372) Bool)

(assert (=> d!2175559 (= res!2848253 (dynLambda!26817 lambda!399960 lt!2483449))))

(declare-fun getWitness!1074 (List!67117 Int) Context!12372)

(assert (=> d!2175559 (= lt!2483449 (getWitness!1074 (toList!10550 lt!2483331) lambda!399960))))

(declare-fun exists!2963 ((Set Context!12372) Int) Bool)

(assert (=> d!2175559 (exists!2963 lt!2483331 lambda!399960)))

(assert (=> d!2175559 (= (getWitness!1072 lt!2483331 lambda!399960) lt!2483449)))

(declare-fun b!6984809 () Bool)

(assert (=> b!6984809 (= e!4198083 (set.member lt!2483449 lt!2483331))))

(assert (= (and d!2175559 res!2848253) b!6984809))

(declare-fun b_lambda!262089 () Bool)

(assert (=> (not b_lambda!262089) (not d!2175559)))

(declare-fun m!7672152 () Bool)

(assert (=> d!2175559 m!7672152))

(assert (=> d!2175559 m!7671922))

(assert (=> d!2175559 m!7671922))

(declare-fun m!7672154 () Bool)

(assert (=> d!2175559 m!7672154))

(declare-fun m!7672156 () Bool)

(assert (=> d!2175559 m!7672156))

(declare-fun m!7672158 () Bool)

(assert (=> b!6984809 m!7672158))

(assert (=> b!6984652 d!2175559))

(declare-fun bs!1861532 () Bool)

(declare-fun d!2175561 () Bool)

(assert (= bs!1861532 (and d!2175561 b!6984652)))

(declare-fun lambda!400004 () Int)

(assert (=> bs!1861532 (not (= lambda!400004 lambda!399960))))

(declare-fun bs!1861533 () Bool)

(assert (= bs!1861533 (and d!2175561 d!2175555)))

(assert (=> bs!1861533 (not (= lambda!400004 lambda!400001))))

(assert (=> d!2175561 true))

(declare-fun order!27875 () Int)

(declare-fun dynLambda!26818 (Int Int) Int)

(assert (=> d!2175561 (< (dynLambda!26818 order!27875 lambda!399960) (dynLambda!26818 order!27875 lambda!400004))))

(declare-fun forall!16093 (List!67117 Int) Bool)

(assert (=> d!2175561 (= (exists!2961 lt!2483329 lambda!399960) (not (forall!16093 lt!2483329 lambda!400004)))))

(declare-fun bs!1861534 () Bool)

(assert (= bs!1861534 d!2175561))

(declare-fun m!7672160 () Bool)

(assert (=> bs!1861534 m!7672160))

(assert (=> b!6984652 d!2175561))

(declare-fun d!2175563 () Bool)

(declare-fun c!1295143 () Bool)

(assert (=> d!2175563 (= c!1295143 (isEmpty!39105 s!7408))))

(declare-fun e!4198084 () Bool)

(assert (=> d!2175563 (= (matchZipper!2730 lt!2483331 s!7408) e!4198084)))

(declare-fun b!6984812 () Bool)

(assert (=> b!6984812 (= e!4198084 (nullableZipper!2416 lt!2483331))))

(declare-fun b!6984813 () Bool)

(assert (=> b!6984813 (= e!4198084 (matchZipper!2730 (derivationStepZipper!2670 lt!2483331 (head!14091 s!7408)) (tail!13181 s!7408)))))

(assert (= (and d!2175563 c!1295143) b!6984812))

(assert (= (and d!2175563 (not c!1295143)) b!6984813))

(assert (=> d!2175563 m!7672126))

(declare-fun m!7672162 () Bool)

(assert (=> b!6984812 m!7672162))

(assert (=> b!6984813 m!7672130))

(assert (=> b!6984813 m!7672130))

(declare-fun m!7672164 () Bool)

(assert (=> b!6984813 m!7672164))

(assert (=> b!6984813 m!7672134))

(assert (=> b!6984813 m!7672164))

(assert (=> b!6984813 m!7672134))

(declare-fun m!7672166 () Bool)

(assert (=> b!6984813 m!7672166))

(assert (=> start!670666 d!2175563))

(declare-fun bs!1861535 () Bool)

(declare-fun d!2175565 () Bool)

(assert (= bs!1861535 (and d!2175565 b!6984654)))

(declare-fun lambda!400009 () Int)

(assert (=> bs!1861535 (= lambda!400009 lambda!399961)))

(assert (=> d!2175565 true))

(declare-fun map!15448 ((Set Context!12372) Int) (Set Context!12372))

(assert (=> d!2175565 (= (appendTo!311 z1!570 ct2!306) (map!15448 z1!570 lambda!400009))))

(declare-fun bs!1861536 () Bool)

(assert (= bs!1861536 d!2175565))

(declare-fun m!7672168 () Bool)

(assert (=> bs!1861536 m!7672168))

(assert (=> start!670666 d!2175565))

(declare-fun bs!1861537 () Bool)

(declare-fun d!2175567 () Bool)

(assert (= bs!1861537 (and d!2175567 b!6984654)))

(declare-fun lambda!400010 () Int)

(assert (=> bs!1861537 (= lambda!400010 lambda!399962)))

(declare-fun bs!1861538 () Bool)

(assert (= bs!1861538 (and d!2175567 d!2175533)))

(assert (=> bs!1861538 (= lambda!400010 lambda!399998)))

(assert (=> d!2175567 (= (inv!85835 ct2!306) (forall!16091 (exprs!6686 ct2!306) lambda!400010))))

(declare-fun bs!1861539 () Bool)

(assert (= bs!1861539 d!2175567))

(declare-fun m!7672170 () Bool)

(assert (=> bs!1861539 m!7672170))

(assert (=> start!670666 d!2175567))

(declare-fun d!2175569 () Bool)

(declare-fun res!2848254 () Bool)

(declare-fun e!4198085 () Bool)

(assert (=> d!2175569 (=> res!2848254 e!4198085)))

(assert (=> d!2175569 (= res!2848254 (is-Nil!66991 (exprs!6686 ct2!306)))))

(assert (=> d!2175569 (= (forall!16091 (exprs!6686 ct2!306) lambda!399962) e!4198085)))

(declare-fun b!6984814 () Bool)

(declare-fun e!4198086 () Bool)

(assert (=> b!6984814 (= e!4198085 e!4198086)))

(declare-fun res!2848255 () Bool)

(assert (=> b!6984814 (=> (not res!2848255) (not e!4198086))))

(assert (=> b!6984814 (= res!2848255 (dynLambda!26816 lambda!399962 (h!73439 (exprs!6686 ct2!306))))))

(declare-fun b!6984815 () Bool)

(assert (=> b!6984815 (= e!4198086 (forall!16091 (t!380862 (exprs!6686 ct2!306)) lambda!399962))))

(assert (= (and d!2175569 (not res!2848254)) b!6984814))

(assert (= (and b!6984814 res!2848255) b!6984815))

(declare-fun b_lambda!262091 () Bool)

(assert (=> (not b_lambda!262091) (not b!6984814)))

(declare-fun m!7672172 () Bool)

(assert (=> b!6984814 m!7672172))

(declare-fun m!7672174 () Bool)

(assert (=> b!6984815 m!7672174))

(assert (=> b!6984646 d!2175569))

(declare-fun b!6984817 () Bool)

(declare-fun e!4198088 () List!67115)

(assert (=> b!6984817 (= e!4198088 (Cons!66991 (h!73439 (exprs!6686 lt!2483349)) (++!15135 (t!380862 (exprs!6686 lt!2483349)) (exprs!6686 ct2!306))))))

(declare-fun b!6984818 () Bool)

(declare-fun res!2848256 () Bool)

(declare-fun e!4198087 () Bool)

(assert (=> b!6984818 (=> (not res!2848256) (not e!4198087))))

(declare-fun lt!2483452 () List!67115)

(assert (=> b!6984818 (= res!2848256 (= (size!40888 lt!2483452) (+ (size!40888 (exprs!6686 lt!2483349)) (size!40888 (exprs!6686 ct2!306)))))))

(declare-fun b!6984819 () Bool)

(assert (=> b!6984819 (= e!4198087 (or (not (= (exprs!6686 ct2!306) Nil!66991)) (= lt!2483452 (exprs!6686 lt!2483349))))))

(declare-fun d!2175571 () Bool)

(assert (=> d!2175571 e!4198087))

(declare-fun res!2848257 () Bool)

(assert (=> d!2175571 (=> (not res!2848257) (not e!4198087))))

(assert (=> d!2175571 (= res!2848257 (= (content!13226 lt!2483452) (set.union (content!13226 (exprs!6686 lt!2483349)) (content!13226 (exprs!6686 ct2!306)))))))

(assert (=> d!2175571 (= lt!2483452 e!4198088)))

(declare-fun c!1295145 () Bool)

(assert (=> d!2175571 (= c!1295145 (is-Nil!66991 (exprs!6686 lt!2483349)))))

(assert (=> d!2175571 (= (++!15135 (exprs!6686 lt!2483349) (exprs!6686 ct2!306)) lt!2483452)))

(declare-fun b!6984816 () Bool)

(assert (=> b!6984816 (= e!4198088 (exprs!6686 ct2!306))))

(assert (= (and d!2175571 c!1295145) b!6984816))

(assert (= (and d!2175571 (not c!1295145)) b!6984817))

(assert (= (and d!2175571 res!2848257) b!6984818))

(assert (= (and b!6984818 res!2848256) b!6984819))

(declare-fun m!7672176 () Bool)

(assert (=> b!6984817 m!7672176))

(declare-fun m!7672178 () Bool)

(assert (=> b!6984818 m!7672178))

(declare-fun m!7672180 () Bool)

(assert (=> b!6984818 m!7672180))

(assert (=> b!6984818 m!7672090))

(declare-fun m!7672182 () Bool)

(assert (=> d!2175571 m!7672182))

(declare-fun m!7672184 () Bool)

(assert (=> d!2175571 m!7672184))

(assert (=> d!2175571 m!7672096))

(assert (=> b!6984654 d!2175571))

(assert (=> b!6984654 d!2175531))

(declare-fun d!2175573 () Bool)

(declare-fun e!4198091 () Bool)

(assert (=> d!2175573 e!4198091))

(declare-fun res!2848260 () Bool)

(assert (=> d!2175573 (=> (not res!2848260) (not e!4198091))))

(declare-fun lt!2483455 () Context!12372)

(declare-fun dynLambda!26819 (Int Context!12372) Context!12372)

(assert (=> d!2175573 (= res!2848260 (= lt!2483350 (dynLambda!26819 lambda!399961 lt!2483455)))))

(declare-fun choose!52134 ((Set Context!12372) Int Context!12372) Context!12372)

(assert (=> d!2175573 (= lt!2483455 (choose!52134 z1!570 lambda!399961 lt!2483350))))

(assert (=> d!2175573 (set.member lt!2483350 (map!15448 z1!570 lambda!399961))))

(assert (=> d!2175573 (= (mapPost2!45 z1!570 lambda!399961 lt!2483350) lt!2483455)))

(declare-fun b!6984823 () Bool)

(assert (=> b!6984823 (= e!4198091 (set.member lt!2483455 z1!570))))

(assert (= (and d!2175573 res!2848260) b!6984823))

(declare-fun b_lambda!262093 () Bool)

(assert (=> (not b_lambda!262093) (not d!2175573)))

(declare-fun m!7672186 () Bool)

(assert (=> d!2175573 m!7672186))

(declare-fun m!7672188 () Bool)

(assert (=> d!2175573 m!7672188))

(declare-fun m!7672190 () Bool)

(assert (=> d!2175573 m!7672190))

(declare-fun m!7672192 () Bool)

(assert (=> d!2175573 m!7672192))

(declare-fun m!7672194 () Bool)

(assert (=> b!6984823 m!7672194))

(assert (=> b!6984654 d!2175573))

(declare-fun d!2175575 () Bool)

(declare-fun choose!52135 ((Set Context!12372) Int) (Set Context!12372))

(assert (=> d!2175575 (= (flatMap!2176 lt!2483351 lambda!399963) (choose!52135 lt!2483351 lambda!399963))))

(declare-fun bs!1861540 () Bool)

(assert (= bs!1861540 d!2175575))

(declare-fun m!7672196 () Bool)

(assert (=> bs!1861540 m!7672196))

(assert (=> b!6984645 d!2175575))

(declare-fun d!2175577 () Bool)

(declare-fun dynLambda!26820 (Int Context!12372) (Set Context!12372))

(assert (=> d!2175577 (= (flatMap!2176 lt!2483351 lambda!399963) (dynLambda!26820 lambda!399963 lt!2483353))))

(declare-fun lt!2483458 () Unit!161035)

(declare-fun choose!52136 ((Set Context!12372) Context!12372 Int) Unit!161035)

(assert (=> d!2175577 (= lt!2483458 (choose!52136 lt!2483351 lt!2483353 lambda!399963))))

(assert (=> d!2175577 (= lt!2483351 (set.insert lt!2483353 (as set.empty (Set Context!12372))))))

(assert (=> d!2175577 (= (lemmaFlatMapOnSingletonSet!1691 lt!2483351 lt!2483353 lambda!399963) lt!2483458)))

(declare-fun b_lambda!262095 () Bool)

(assert (=> (not b_lambda!262095) (not d!2175577)))

(declare-fun bs!1861541 () Bool)

(assert (= bs!1861541 d!2175577))

(assert (=> bs!1861541 m!7671910))

(declare-fun m!7672198 () Bool)

(assert (=> bs!1861541 m!7672198))

(declare-fun m!7672200 () Bool)

(assert (=> bs!1861541 m!7672200))

(assert (=> bs!1861541 m!7671940))

(assert (=> b!6984645 d!2175577))

(assert (=> b!6984645 d!2175531))

(declare-fun bs!1861542 () Bool)

(declare-fun d!2175579 () Bool)

(assert (= bs!1861542 (and d!2175579 b!6984645)))

(declare-fun lambda!400013 () Int)

(assert (=> bs!1861542 (= lambda!400013 lambda!399963)))

(assert (=> d!2175579 true))

(assert (=> d!2175579 (= (derivationStepZipper!2670 lt!2483351 (h!73440 s!7408)) (flatMap!2176 lt!2483351 lambda!400013))))

(declare-fun bs!1861543 () Bool)

(assert (= bs!1861543 d!2175579))

(declare-fun m!7672202 () Bool)

(assert (=> bs!1861543 m!7672202))

(assert (=> b!6984645 d!2175579))

(declare-fun e!4198094 () (Set Context!12372))

(declare-fun call!634005 () (Set Context!12372))

(declare-fun b!6984826 () Bool)

(assert (=> b!6984826 (= e!4198094 (set.union call!634005 (derivationStepZipperUp!1840 (Context!12373 (t!380862 (exprs!6686 lt!2483353))) (h!73440 s!7408))))))

(declare-fun d!2175581 () Bool)

(declare-fun c!1295149 () Bool)

(declare-fun e!4198093 () Bool)

(assert (=> d!2175581 (= c!1295149 e!4198093)))

(declare-fun res!2848261 () Bool)

(assert (=> d!2175581 (=> (not res!2848261) (not e!4198093))))

(assert (=> d!2175581 (= res!2848261 (is-Cons!66991 (exprs!6686 lt!2483353)))))

(assert (=> d!2175581 (= (derivationStepZipperUp!1840 lt!2483353 (h!73440 s!7408)) e!4198094)))

(declare-fun b!6984827 () Bool)

(assert (=> b!6984827 (= e!4198093 (nullable!6950 (h!73439 (exprs!6686 lt!2483353))))))

(declare-fun bm!634000 () Bool)

(assert (=> bm!634000 (= call!634005 (derivationStepZipperDown!1908 (h!73439 (exprs!6686 lt!2483353)) (Context!12373 (t!380862 (exprs!6686 lt!2483353))) (h!73440 s!7408)))))

(declare-fun b!6984828 () Bool)

(declare-fun e!4198092 () (Set Context!12372))

(assert (=> b!6984828 (= e!4198092 (as set.empty (Set Context!12372)))))

(declare-fun b!6984829 () Bool)

(assert (=> b!6984829 (= e!4198092 call!634005)))

(declare-fun b!6984830 () Bool)

(assert (=> b!6984830 (= e!4198094 e!4198092)))

(declare-fun c!1295148 () Bool)

(assert (=> b!6984830 (= c!1295148 (is-Cons!66991 (exprs!6686 lt!2483353)))))

(assert (= (and d!2175581 res!2848261) b!6984827))

(assert (= (and d!2175581 c!1295149) b!6984826))

(assert (= (and d!2175581 (not c!1295149)) b!6984830))

(assert (= (and b!6984830 c!1295148) b!6984829))

(assert (= (and b!6984830 (not c!1295148)) b!6984828))

(assert (= (or b!6984826 b!6984829) bm!634000))

(declare-fun m!7672204 () Bool)

(assert (=> b!6984826 m!7672204))

(declare-fun m!7672206 () Bool)

(assert (=> b!6984827 m!7672206))

(declare-fun m!7672208 () Bool)

(assert (=> bm!634000 m!7672208))

(assert (=> b!6984645 d!2175581))

(declare-fun b!6984835 () Bool)

(declare-fun e!4198097 () Bool)

(declare-fun tp!1928919 () Bool)

(declare-fun tp!1928920 () Bool)

(assert (=> b!6984835 (= e!4198097 (and tp!1928919 tp!1928920))))

(assert (=> b!6984657 (= tp!1928901 e!4198097)))

(assert (= (and b!6984657 (is-Cons!66991 (exprs!6686 setElem!47646))) b!6984835))

(declare-fun b!6984840 () Bool)

(declare-fun e!4198100 () Bool)

(declare-fun tp!1928923 () Bool)

(assert (=> b!6984840 (= e!4198100 (and tp_is_empty!43605 tp!1928923))))

(assert (=> b!6984642 (= tp!1928902 e!4198100)))

(assert (= (and b!6984642 (is-Cons!66992 (t!380863 s!7408))) b!6984840))

(declare-fun b!6984841 () Bool)

(declare-fun e!4198101 () Bool)

(declare-fun tp!1928924 () Bool)

(declare-fun tp!1928925 () Bool)

(assert (=> b!6984841 (= e!4198101 (and tp!1928924 tp!1928925))))

(assert (=> b!6984650 (= tp!1928899 e!4198101)))

(assert (= (and b!6984650 (is-Cons!66991 (exprs!6686 ct2!306))) b!6984841))

(declare-fun condSetEmpty!47652 () Bool)

(assert (=> setNonEmpty!47646 (= condSetEmpty!47652 (= setRest!47646 (as set.empty (Set Context!12372))))))

(declare-fun setRes!47652 () Bool)

(assert (=> setNonEmpty!47646 (= tp!1928900 setRes!47652)))

(declare-fun setIsEmpty!47652 () Bool)

(assert (=> setIsEmpty!47652 setRes!47652))

(declare-fun setNonEmpty!47652 () Bool)

(declare-fun e!4198104 () Bool)

(declare-fun setElem!47652 () Context!12372)

(declare-fun tp!1928930 () Bool)

(assert (=> setNonEmpty!47652 (= setRes!47652 (and tp!1928930 (inv!85835 setElem!47652) e!4198104))))

(declare-fun setRest!47652 () (Set Context!12372))

(assert (=> setNonEmpty!47652 (= setRest!47646 (set.union (set.insert setElem!47652 (as set.empty (Set Context!12372))) setRest!47652))))

(declare-fun b!6984846 () Bool)

(declare-fun tp!1928931 () Bool)

(assert (=> b!6984846 (= e!4198104 tp!1928931)))

(assert (= (and setNonEmpty!47646 condSetEmpty!47652) setIsEmpty!47652))

(assert (= (and setNonEmpty!47646 (not condSetEmpty!47652)) setNonEmpty!47652))

(assert (= setNonEmpty!47652 b!6984846))

(declare-fun m!7672210 () Bool)

(assert (=> setNonEmpty!47652 m!7672210))

(declare-fun b_lambda!262097 () Bool)

(assert (= b_lambda!262095 (or b!6984645 b_lambda!262097)))

(declare-fun bs!1861544 () Bool)

(declare-fun d!2175583 () Bool)

(assert (= bs!1861544 (and d!2175583 b!6984645)))

(assert (=> bs!1861544 (= (dynLambda!26820 lambda!399963 lt!2483353) (derivationStepZipperUp!1840 lt!2483353 (h!73440 s!7408)))))

(assert (=> bs!1861544 m!7671916))

(assert (=> d!2175577 d!2175583))

(declare-fun b_lambda!262099 () Bool)

(assert (= b_lambda!262089 (or b!6984652 b_lambda!262099)))

(declare-fun bs!1861545 () Bool)

(declare-fun d!2175585 () Bool)

(assert (= bs!1861545 (and d!2175585 b!6984652)))

(assert (=> bs!1861545 (= (dynLambda!26817 lambda!399960 lt!2483449) (matchZipper!2730 (set.insert lt!2483449 (as set.empty (Set Context!12372))) s!7408))))

(declare-fun m!7672212 () Bool)

(assert (=> bs!1861545 m!7672212))

(assert (=> bs!1861545 m!7672212))

(declare-fun m!7672214 () Bool)

(assert (=> bs!1861545 m!7672214))

(assert (=> d!2175559 d!2175585))

(declare-fun b_lambda!262101 () Bool)

(assert (= b_lambda!262093 (or b!6984654 b_lambda!262101)))

(declare-fun bs!1861546 () Bool)

(declare-fun d!2175587 () Bool)

(assert (= bs!1861546 (and d!2175587 b!6984654)))

(declare-fun lt!2483459 () Unit!161035)

(assert (=> bs!1861546 (= lt!2483459 (lemmaConcatPreservesForall!526 (exprs!6686 lt!2483455) (exprs!6686 ct2!306) lambda!399962))))

(assert (=> bs!1861546 (= (dynLambda!26819 lambda!399961 lt!2483455) (Context!12373 (++!15135 (exprs!6686 lt!2483455) (exprs!6686 ct2!306))))))

(declare-fun m!7672216 () Bool)

(assert (=> bs!1861546 m!7672216))

(declare-fun m!7672218 () Bool)

(assert (=> bs!1861546 m!7672218))

(assert (=> d!2175573 d!2175587))

(declare-fun b_lambda!262103 () Bool)

(assert (= b_lambda!262087 (or b!6984654 b_lambda!262103)))

(declare-fun bs!1861547 () Bool)

(declare-fun d!2175589 () Bool)

(assert (= bs!1861547 (and d!2175589 b!6984654)))

(declare-fun validRegex!8847 (Regex!17190) Bool)

(assert (=> bs!1861547 (= (dynLambda!26816 lambda!399962 (h!73439 lt!2483336)) (validRegex!8847 (h!73439 lt!2483336)))))

(declare-fun m!7672220 () Bool)

(assert (=> bs!1861547 m!7672220))

(assert (=> b!6984725 d!2175589))

(declare-fun b_lambda!262105 () Bool)

(assert (= b_lambda!262091 (or b!6984654 b_lambda!262105)))

(declare-fun bs!1861548 () Bool)

(declare-fun d!2175591 () Bool)

(assert (= bs!1861548 (and d!2175591 b!6984654)))

(assert (=> bs!1861548 (= (dynLambda!26816 lambda!399962 (h!73439 (exprs!6686 ct2!306))) (validRegex!8847 (h!73439 (exprs!6686 ct2!306))))))

(declare-fun m!7672222 () Bool)

(assert (=> bs!1861548 m!7672222))

(assert (=> b!6984814 d!2175591))

(push 1)

(assert (not b!6984802))

(assert (not b_lambda!262103))

(assert (not b_lambda!262097))

(assert (not b!6984803))

(assert (not d!2175547))

(assert (not b!6984841))

(assert (not b!6984813))

(assert (not b!6984846))

(assert (not b!6984775))

(assert (not b!6984835))

(assert (not d!2175543))

(assert (not d!2175533))

(assert (not b!6984815))

(assert tp_is_empty!43605)

(assert (not bs!1861546))

(assert (not d!2175545))

(assert (not b!6984732))

(assert (not b_lambda!262105))

(assert (not b!6984776))

(assert (not b!6984799))

(assert (not b!6984762))

(assert (not d!2175555))

(assert (not bm!633994))

(assert (not d!2175557))

(assert (not bs!1861547))

(assert (not d!2175577))

(assert (not d!2175567))

(assert (not b_lambda!262099))

(assert (not bm!633993))

(assert (not b!6984826))

(assert (not bm!634000))

(assert (not b!6984827))

(assert (not bs!1861548))

(assert (not d!2175565))

(assert (not b!6984801))

(assert (not d!2175573))

(assert (not b!6984817))

(assert (not d!2175529))

(assert (not d!2175559))

(assert (not b!6984796))

(assert (not b!6984812))

(assert (not d!2175531))

(assert (not b!6984726))

(assert (not b!6984840))

(assert (not b!6984794))

(assert (not bm!633991))

(assert (not d!2175561))

(assert (not d!2175579))

(assert (not d!2175553))

(assert (not d!2175549))

(assert (not d!2175535))

(assert (not b!6984806))

(assert (not b!6984731))

(assert (not d!2175575))

(assert (not b!6984788))

(assert (not b_lambda!262101))

(assert (not d!2175523))

(assert (not d!2175571))

(assert (not setNonEmpty!47652))

(assert (not b!6984793))

(assert (not d!2175539))

(assert (not b!6984795))

(assert (not bs!1861544))

(assert (not d!2175563))

(assert (not b!6984789))

(assert (not bs!1861545))

(assert (not b!6984800))

(assert (not bm!633999))

(assert (not b!6984818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


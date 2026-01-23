; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!673778 () Bool)

(assert start!673778)

(declare-fun b!7002170 () Bool)

(assert (=> b!7002170 true))

(declare-fun b!7002139 () Bool)

(assert (=> b!7002139 true))

(declare-fun b!7002149 () Bool)

(assert (=> b!7002149 true))

(declare-fun b!7002138 () Bool)

(declare-fun e!4208853 () Bool)

(declare-fun tp!1931263 () Bool)

(assert (=> b!7002138 (= e!4208853 tp!1931263)))

(declare-fun e!4208844 () Bool)

(declare-fun e!4208858 () Bool)

(assert (=> b!7002139 (= e!4208844 e!4208858)))

(declare-fun res!2856456 () Bool)

(assert (=> b!7002139 (=> res!2856456 e!4208858)))

(declare-datatypes ((C!34818 0))(
  ( (C!34819 (val!27111 Int)) )
))
(declare-datatypes ((Regex!17274 0))(
  ( (ElementMatch!17274 (c!1299946 C!34818)) (Concat!26119 (regOne!35060 Regex!17274) (regTwo!35060 Regex!17274)) (EmptyExpr!17274) (Star!17274 (reg!17603 Regex!17274)) (EmptyLang!17274) (Union!17274 (regOne!35061 Regex!17274) (regTwo!35061 Regex!17274)) )
))
(declare-datatypes ((List!67367 0))(
  ( (Nil!67243) (Cons!67243 (h!73691 Regex!17274) (t!381120 List!67367)) )
))
(declare-datatypes ((Context!12540 0))(
  ( (Context!12541 (exprs!6770 List!67367)) )
))
(declare-fun lt!2496962 () Context!12540)

(declare-fun lt!2496986 () Context!12540)

(declare-fun z1!570 () (Set Context!12540))

(declare-fun lt!2497004 () Context!12540)

(assert (=> b!7002139 (= res!2856456 (or (not (= lt!2496962 lt!2497004)) (not (set.member lt!2496986 z1!570))))))

(declare-fun ct2!306 () Context!12540)

(declare-fun ++!15249 (List!67367 List!67367) List!67367)

(assert (=> b!7002139 (= lt!2496962 (Context!12541 (++!15249 (exprs!6770 lt!2496986) (exprs!6770 ct2!306))))))

(declare-datatypes ((Unit!161208 0))(
  ( (Unit!161209) )
))
(declare-fun lt!2496997 () Unit!161208)

(declare-fun lambda!405661 () Int)

(declare-fun lemmaConcatPreservesForall!610 (List!67367 List!67367 Int) Unit!161208)

(assert (=> b!7002139 (= lt!2496997 (lemmaConcatPreservesForall!610 (exprs!6770 lt!2496986) (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lambda!405660 () Int)

(declare-fun mapPost2!129 ((Set Context!12540) Int Context!12540) Context!12540)

(assert (=> b!7002139 (= lt!2496986 (mapPost2!129 z1!570 lambda!405660 lt!2497004))))

(declare-fun b!7002140 () Bool)

(declare-fun e!4208856 () Bool)

(declare-fun e!4208848 () Bool)

(assert (=> b!7002140 (= e!4208856 e!4208848)))

(declare-fun res!2856460 () Bool)

(assert (=> b!7002140 (=> res!2856460 e!4208848)))

(declare-fun lt!2496979 () Context!12540)

(declare-fun lt!2496971 () (Set Context!12540))

(declare-fun lt!2496976 () C!34818)

(declare-fun derivationStepZipper!2754 ((Set Context!12540) C!34818) (Set Context!12540))

(declare-fun derivationStepZipperUp!1924 (Context!12540 C!34818) (Set Context!12540))

(assert (=> b!7002140 (= res!2856460 (not (= (derivationStepZipper!2754 lt!2496971 lt!2496976) (derivationStepZipperUp!1924 lt!2496979 lt!2496976))))))

(declare-datatypes ((List!67368 0))(
  ( (Nil!67244) (Cons!67244 (h!73692 C!34818) (t!381121 List!67368)) )
))
(declare-datatypes ((tuple2!67894 0))(
  ( (tuple2!67895 (_1!37250 List!67368) (_2!37250 List!67368)) )
))
(declare-fun lt!2496946 () tuple2!67894)

(declare-fun head!14145 (List!67368) C!34818)

(assert (=> b!7002140 (= lt!2496976 (head!14145 (_1!37250 lt!2496946)))))

(declare-fun lambda!405662 () Int)

(declare-fun s!7408 () List!67368)

(declare-fun flatMap!2260 ((Set Context!12540) Int) (Set Context!12540))

(assert (=> b!7002140 (= (flatMap!2260 lt!2496971 lambda!405662) (derivationStepZipperUp!1924 lt!2496979 (h!73692 s!7408)))))

(declare-fun lt!2496977 () Unit!161208)

(declare-fun lemmaFlatMapOnSingletonSet!1775 ((Set Context!12540) Context!12540 Int) Unit!161208)

(assert (=> b!7002140 (= lt!2496977 (lemmaFlatMapOnSingletonSet!1775 lt!2496971 lt!2496979 lambda!405662))))

(declare-fun b!7002141 () Bool)

(declare-fun e!4208840 () Bool)

(declare-fun e!4208843 () Bool)

(assert (=> b!7002141 (= e!4208840 e!4208843)))

(declare-fun res!2856462 () Bool)

(assert (=> b!7002141 (=> res!2856462 e!4208843)))

(declare-fun lt!2496982 () (Set Context!12540))

(declare-fun lt!2496945 () (Set Context!12540))

(assert (=> b!7002141 (= res!2856462 (not (= lt!2496982 lt!2496945)))))

(declare-fun lt!2496990 () (Set Context!12540))

(declare-fun lt!2496974 () (Set Context!12540))

(assert (=> b!7002141 (= lt!2496945 (set.union lt!2496990 lt!2496974))))

(assert (=> b!7002141 (= lt!2496974 (derivationStepZipperUp!1924 lt!2496979 (h!73692 s!7408)))))

(declare-fun derivationStepZipperDown!1992 (Regex!17274 Context!12540 C!34818) (Set Context!12540))

(assert (=> b!7002141 (= lt!2496990 (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496986)) lt!2496979 (h!73692 s!7408)))))

(declare-fun b!7002142 () Bool)

(declare-fun e!4208857 () Bool)

(declare-fun e!4208841 () Bool)

(assert (=> b!7002142 (= e!4208857 e!4208841)))

(declare-fun res!2856467 () Bool)

(assert (=> b!7002142 (=> res!2856467 e!4208841)))

(declare-fun lt!2497003 () (Set Context!12540))

(declare-fun lt!2496952 () (Set Context!12540))

(assert (=> b!7002142 (= res!2856467 (not (= lt!2497003 lt!2496952)))))

(declare-fun lt!2496951 () (Set Context!12540))

(declare-fun lt!2496988 () (Set Context!12540))

(assert (=> b!7002142 (= lt!2496952 (set.union lt!2496951 lt!2496988))))

(declare-fun lt!2496995 () Context!12540)

(assert (=> b!7002142 (= lt!2496988 (derivationStepZipperUp!1924 lt!2496995 (h!73692 s!7408)))))

(assert (=> b!7002142 (= lt!2496951 (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496986)) lt!2496995 (h!73692 s!7408)))))

(declare-fun lt!2496965 () List!67367)

(assert (=> b!7002142 (= lt!2496995 (Context!12541 (++!15249 lt!2496965 (exprs!6770 ct2!306))))))

(declare-fun lt!2496981 () Unit!161208)

(assert (=> b!7002142 (= lt!2496981 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lt!2496959 () Unit!161208)

(assert (=> b!7002142 (= lt!2496959 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun setIsEmpty!48132 () Bool)

(declare-fun setRes!48132 () Bool)

(assert (=> setIsEmpty!48132 setRes!48132))

(declare-fun b!7002143 () Bool)

(declare-fun res!2856449 () Bool)

(declare-fun e!4208859 () Bool)

(assert (=> b!7002143 (=> res!2856449 e!4208859)))

(declare-fun lt!2496944 () Int)

(declare-datatypes ((List!67369 0))(
  ( (Nil!67245) (Cons!67245 (h!73693 Context!12540) (t!381122 List!67369)) )
))
(declare-fun zipperDepthTotal!495 (List!67369) Int)

(assert (=> b!7002143 (= res!2856449 (>= (zipperDepthTotal!495 (Cons!67245 lt!2496979 Nil!67245)) lt!2496944))))

(declare-fun b!7002144 () Bool)

(assert (=> b!7002144 (= e!4208843 e!4208856)))

(declare-fun res!2856451 () Bool)

(assert (=> b!7002144 (=> res!2856451 e!4208856)))

(declare-fun e!4208861 () Bool)

(assert (=> b!7002144 (= res!2856451 e!4208861)))

(declare-fun res!2856450 () Bool)

(assert (=> b!7002144 (=> (not res!2856450) (not e!4208861))))

(declare-fun lt!2496983 () Bool)

(declare-fun lt!2496987 () (Set Context!12540))

(declare-fun matchZipper!2814 ((Set Context!12540) List!67368) Bool)

(assert (=> b!7002144 (= res!2856450 (not (= (matchZipper!2814 lt!2496987 (_1!37250 lt!2496946)) lt!2496983)))))

(declare-fun lt!2496948 () List!67368)

(declare-fun e!4208863 () Bool)

(assert (=> b!7002144 (= (matchZipper!2814 lt!2496945 lt!2496948) e!4208863)))

(declare-fun res!2856473 () Bool)

(assert (=> b!7002144 (=> res!2856473 e!4208863)))

(assert (=> b!7002144 (= res!2856473 lt!2496983)))

(assert (=> b!7002144 (= lt!2496983 (matchZipper!2814 lt!2496990 lt!2496948))))

(declare-fun lt!2497000 () Unit!161208)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1447 ((Set Context!12540) (Set Context!12540) List!67368) Unit!161208)

(assert (=> b!7002144 (= lt!2497000 (lemmaZipperConcatMatchesSameAsBothZippers!1447 lt!2496990 lt!2496974 lt!2496948))))

(declare-fun tail!13316 (List!67368) List!67368)

(assert (=> b!7002144 (= lt!2496948 (tail!13316 (_1!37250 lt!2496946)))))

(declare-fun b!7002145 () Bool)

(assert (=> b!7002145 (= e!4208848 (not (= (_1!37250 lt!2496946) Nil!67244)))))

(declare-fun b!7002146 () Bool)

(declare-fun res!2856459 () Bool)

(assert (=> b!7002146 (=> res!2856459 e!4208844)))

(declare-fun lt!2496991 () (Set Context!12540))

(assert (=> b!7002146 (= res!2856459 (not (set.member lt!2497004 lt!2496991)))))

(declare-fun b!7002147 () Bool)

(assert (=> b!7002147 (= e!4208861 (not (matchZipper!2814 lt!2496974 lt!2496948)))))

(declare-fun res!2856447 () Bool)

(declare-fun e!4208851 () Bool)

(assert (=> start!673778 (=> (not res!2856447) (not e!4208851))))

(assert (=> start!673778 (= res!2856447 (matchZipper!2814 lt!2496991 s!7408))))

(declare-fun appendTo!395 ((Set Context!12540) Context!12540) (Set Context!12540))

(assert (=> start!673778 (= lt!2496991 (appendTo!395 z1!570 ct2!306))))

(assert (=> start!673778 e!4208851))

(declare-fun condSetEmpty!48132 () Bool)

(assert (=> start!673778 (= condSetEmpty!48132 (= z1!570 (as set.empty (Set Context!12540))))))

(assert (=> start!673778 setRes!48132))

(declare-fun e!4208849 () Bool)

(declare-fun inv!86045 (Context!12540) Bool)

(assert (=> start!673778 (and (inv!86045 ct2!306) e!4208849)))

(declare-fun e!4208847 () Bool)

(assert (=> start!673778 e!4208847))

(declare-fun b!7002148 () Bool)

(declare-fun e!4208855 () Bool)

(declare-fun e!4208852 () Bool)

(assert (=> b!7002148 (= e!4208855 e!4208852)))

(declare-fun res!2856458 () Bool)

(assert (=> b!7002148 (=> res!2856458 e!4208852)))

(declare-fun lt!2496996 () (Set Context!12540))

(assert (=> b!7002148 (= res!2856458 (not (matchZipper!2814 lt!2496996 s!7408)))))

(declare-fun lt!2496980 () Unit!161208)

(assert (=> b!7002148 (= lt!2496980 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun e!4208845 () Bool)

(declare-fun e!4208846 () Bool)

(assert (=> b!7002149 (= e!4208845 e!4208846)))

(declare-fun res!2856457 () Bool)

(assert (=> b!7002149 (=> res!2856457 e!4208846)))

(declare-fun lt!2496947 () (Set Context!12540))

(assert (=> b!7002149 (= res!2856457 (not (= (derivationStepZipper!2754 lt!2496947 (h!73692 s!7408)) lt!2497003)))))

(assert (=> b!7002149 (= (flatMap!2260 lt!2496947 lambda!405662) (derivationStepZipperUp!1924 lt!2496962 (h!73692 s!7408)))))

(declare-fun lt!2496993 () Unit!161208)

(assert (=> b!7002149 (= lt!2496993 (lemmaFlatMapOnSingletonSet!1775 lt!2496947 lt!2496962 lambda!405662))))

(assert (=> b!7002149 (= lt!2497003 (derivationStepZipperUp!1924 lt!2496962 (h!73692 s!7408)))))

(declare-fun lt!2496978 () Unit!161208)

(assert (=> b!7002149 (= lt!2496978 (lemmaConcatPreservesForall!610 (exprs!6770 lt!2496986) (exprs!6770 ct2!306) lambda!405661))))

(declare-fun b!7002150 () Bool)

(assert (=> b!7002150 (= e!4208846 e!4208857)))

(declare-fun res!2856453 () Bool)

(assert (=> b!7002150 (=> res!2856453 e!4208857)))

(declare-fun nullable!7034 (Regex!17274) Bool)

(assert (=> b!7002150 (= res!2856453 (not (nullable!7034 (h!73691 (exprs!6770 lt!2496986)))))))

(assert (=> b!7002150 (= lt!2496979 (Context!12541 lt!2496965))))

(declare-fun tail!13317 (List!67367) List!67367)

(assert (=> b!7002150 (= lt!2496965 (tail!13317 (exprs!6770 lt!2496986)))))

(declare-fun b!7002151 () Bool)

(declare-fun res!2856454 () Bool)

(assert (=> b!7002151 (=> (not res!2856454) (not e!4208851))))

(assert (=> b!7002151 (= res!2856454 (is-Cons!67244 s!7408))))

(declare-fun b!7002152 () Bool)

(declare-fun e!4208850 () Bool)

(declare-fun e!4208862 () Bool)

(assert (=> b!7002152 (= e!4208850 e!4208862)))

(declare-fun res!2856452 () Bool)

(assert (=> b!7002152 (=> res!2856452 e!4208862)))

(assert (=> b!7002152 (= res!2856452 (not (matchZipper!2814 lt!2496988 (t!381121 s!7408))))))

(declare-fun lt!2496955 () Unit!161208)

(assert (=> b!7002152 (= lt!2496955 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun b!7002153 () Bool)

(declare-fun res!2856464 () Bool)

(assert (=> b!7002153 (=> res!2856464 e!4208846)))

(assert (=> b!7002153 (= res!2856464 (not (is-Cons!67243 (exprs!6770 lt!2496986))))))

(declare-fun b!7002154 () Bool)

(declare-fun res!2856444 () Bool)

(declare-fun e!4208842 () Bool)

(assert (=> b!7002154 (=> res!2856444 e!4208842)))

(declare-fun isEmpty!39263 (List!67368) Bool)

(assert (=> b!7002154 (= res!2856444 (isEmpty!39263 (_1!37250 lt!2496946)))))

(declare-fun b!7002155 () Bool)

(declare-fun res!2856471 () Bool)

(assert (=> b!7002155 (=> res!2856471 e!4208842)))

(declare-fun lt!2496949 () (Set Context!12540))

(assert (=> b!7002155 (= res!2856471 (not (matchZipper!2814 lt!2496949 (_2!37250 lt!2496946))))))

(declare-fun b!7002156 () Bool)

(declare-fun e!4208854 () Bool)

(assert (=> b!7002156 (= e!4208854 (not (matchZipper!2814 lt!2496988 (t!381121 s!7408))))))

(declare-fun lt!2496966 () Unit!161208)

(assert (=> b!7002156 (= lt!2496966 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun b!7002157 () Bool)

(assert (=> b!7002157 (= e!4208841 e!4208850)))

(declare-fun res!2856445 () Bool)

(assert (=> b!7002157 (=> res!2856445 e!4208850)))

(assert (=> b!7002157 (= res!2856445 e!4208854)))

(declare-fun res!2856472 () Bool)

(assert (=> b!7002157 (=> (not res!2856472) (not e!4208854))))

(declare-fun lt!2496964 () Bool)

(declare-fun lt!2496992 () Bool)

(assert (=> b!7002157 (= res!2856472 (not (= lt!2496964 lt!2496992)))))

(assert (=> b!7002157 (= lt!2496964 (matchZipper!2814 lt!2497003 (t!381121 s!7408)))))

(declare-fun lt!2496956 () Unit!161208)

(assert (=> b!7002157 (= lt!2496956 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun e!4208860 () Bool)

(assert (=> b!7002157 (= (matchZipper!2814 lt!2496952 (t!381121 s!7408)) e!4208860)))

(declare-fun res!2856470 () Bool)

(assert (=> b!7002157 (=> res!2856470 e!4208860)))

(assert (=> b!7002157 (= res!2856470 lt!2496992)))

(assert (=> b!7002157 (= lt!2496992 (matchZipper!2814 lt!2496951 (t!381121 s!7408)))))

(declare-fun lt!2497001 () Unit!161208)

(assert (=> b!7002157 (= lt!2497001 (lemmaZipperConcatMatchesSameAsBothZippers!1447 lt!2496951 lt!2496988 (t!381121 s!7408)))))

(declare-fun lt!2496950 () Unit!161208)

(assert (=> b!7002157 (= lt!2496950 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lt!2496961 () Unit!161208)

(assert (=> b!7002157 (= lt!2496961 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun setNonEmpty!48132 () Bool)

(declare-fun setElem!48132 () Context!12540)

(declare-fun tp!1931261 () Bool)

(assert (=> setNonEmpty!48132 (= setRes!48132 (and tp!1931261 (inv!86045 setElem!48132) e!4208853))))

(declare-fun setRest!48132 () (Set Context!12540))

(assert (=> setNonEmpty!48132 (= z1!570 (set.union (set.insert setElem!48132 (as set.empty (Set Context!12540))) setRest!48132))))

(declare-fun b!7002158 () Bool)

(declare-fun tp_is_empty!43773 () Bool)

(declare-fun tp!1931262 () Bool)

(assert (=> b!7002158 (= e!4208847 (and tp_is_empty!43773 tp!1931262))))

(declare-fun b!7002159 () Bool)

(assert (=> b!7002159 (= e!4208860 (matchZipper!2814 lt!2496988 (t!381121 s!7408)))))

(declare-fun b!7002160 () Bool)

(assert (=> b!7002160 (= e!4208858 e!4208845)))

(declare-fun res!2856468 () Bool)

(assert (=> b!7002160 (=> res!2856468 e!4208845)))

(declare-fun lt!2496958 () (Set Context!12540))

(assert (=> b!7002160 (= res!2856468 (not (= lt!2496947 lt!2496958)))))

(assert (=> b!7002160 (= lt!2496947 (set.insert lt!2496962 (as set.empty (Set Context!12540))))))

(declare-fun lt!2496954 () Unit!161208)

(assert (=> b!7002160 (= lt!2496954 (lemmaConcatPreservesForall!610 (exprs!6770 lt!2496986) (exprs!6770 ct2!306) lambda!405661))))

(declare-fun b!7002161 () Bool)

(assert (=> b!7002161 (= e!4208859 e!4208842)))

(declare-fun res!2856466 () Bool)

(assert (=> b!7002161 (=> res!2856466 e!4208842)))

(assert (=> b!7002161 (= res!2856466 (not (matchZipper!2814 lt!2496971 (_1!37250 lt!2496946))))))

(declare-datatypes ((Option!16779 0))(
  ( (None!16778) (Some!16778 (v!53056 tuple2!67894)) )
))
(declare-fun lt!2496953 () Option!16779)

(declare-fun get!23581 (Option!16779) tuple2!67894)

(assert (=> b!7002161 (= lt!2496946 (get!23581 lt!2496953))))

(declare-fun isDefined!13480 (Option!16779) Bool)

(assert (=> b!7002161 (isDefined!13480 lt!2496953)))

(declare-fun findConcatSeparationZippers!295 ((Set Context!12540) (Set Context!12540) List!67368 List!67368 List!67368) Option!16779)

(assert (=> b!7002161 (= lt!2496953 (findConcatSeparationZippers!295 lt!2496971 lt!2496949 Nil!67244 s!7408 s!7408))))

(assert (=> b!7002161 (= lt!2496949 (set.insert ct2!306 (as set.empty (Set Context!12540))))))

(declare-fun lt!2496969 () Unit!161208)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!295 ((Set Context!12540) Context!12540 List!67368) Unit!161208)

(assert (=> b!7002161 (= lt!2496969 (lemmaConcatZipperMatchesStringThenFindConcatDefined!295 lt!2496971 ct2!306 s!7408))))

(declare-fun b!7002162 () Bool)

(assert (=> b!7002162 (= e!4208863 (matchZipper!2814 lt!2496974 lt!2496948))))

(declare-fun b!7002163 () Bool)

(declare-fun res!2856465 () Bool)

(assert (=> b!7002163 (=> res!2856465 e!4208850)))

(assert (=> b!7002163 (= res!2856465 (not lt!2496964))))

(declare-fun b!7002164 () Bool)

(declare-fun res!2856469 () Bool)

(assert (=> b!7002164 (=> res!2856469 e!4208846)))

(declare-fun isEmpty!39264 (List!67367) Bool)

(assert (=> b!7002164 (= res!2856469 (isEmpty!39264 (exprs!6770 lt!2496986)))))

(declare-fun b!7002165 () Bool)

(assert (=> b!7002165 (= e!4208842 e!4208840)))

(declare-fun res!2856461 () Bool)

(assert (=> b!7002165 (=> res!2856461 e!4208840)))

(assert (=> b!7002165 (= res!2856461 (not (= (derivationStepZipper!2754 lt!2496987 (h!73692 s!7408)) lt!2496982)))))

(assert (=> b!7002165 (= lt!2496982 (derivationStepZipperUp!1924 lt!2496986 (h!73692 s!7408)))))

(assert (=> b!7002165 (= (flatMap!2260 lt!2496987 lambda!405662) (derivationStepZipperUp!1924 lt!2496986 (h!73692 s!7408)))))

(declare-fun lt!2497002 () Unit!161208)

(assert (=> b!7002165 (= lt!2497002 (lemmaFlatMapOnSingletonSet!1775 lt!2496987 lt!2496986 lambda!405662))))

(assert (=> b!7002165 (= lt!2496987 (set.insert lt!2496986 (as set.empty (Set Context!12540))))))

(declare-fun b!7002166 () Bool)

(declare-fun res!2856455 () Bool)

(assert (=> b!7002166 (=> res!2856455 e!4208842)))

(declare-fun ++!15250 (List!67368 List!67368) List!67368)

(assert (=> b!7002166 (= res!2856455 (not (= (++!15250 (_1!37250 lt!2496946) (_2!37250 lt!2496946)) s!7408)))))

(declare-fun b!7002167 () Bool)

(declare-fun tp!1931264 () Bool)

(assert (=> b!7002167 (= e!4208849 tp!1931264)))

(declare-fun b!7002168 () Bool)

(assert (=> b!7002168 (= e!4208862 e!4208855)))

(declare-fun res!2856463 () Bool)

(assert (=> b!7002168 (=> res!2856463 e!4208855)))

(assert (=> b!7002168 (= res!2856463 (not (= (derivationStepZipper!2754 lt!2496996 (h!73692 s!7408)) lt!2496988)))))

(declare-fun lt!2496967 () Unit!161208)

(assert (=> b!7002168 (= lt!2496967 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lt!2496963 () Unit!161208)

(assert (=> b!7002168 (= lt!2496963 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(assert (=> b!7002168 (= (flatMap!2260 lt!2496996 lambda!405662) (derivationStepZipperUp!1924 lt!2496995 (h!73692 s!7408)))))

(declare-fun lt!2496973 () Unit!161208)

(assert (=> b!7002168 (= lt!2496973 (lemmaFlatMapOnSingletonSet!1775 lt!2496996 lt!2496995 lambda!405662))))

(assert (=> b!7002168 (= lt!2496996 (set.insert lt!2496995 (as set.empty (Set Context!12540))))))

(declare-fun lt!2496998 () Unit!161208)

(assert (=> b!7002168 (= lt!2496998 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lt!2496975 () Unit!161208)

(assert (=> b!7002168 (= lt!2496975 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun b!7002169 () Bool)

(assert (=> b!7002169 (= e!4208852 e!4208859)))

(declare-fun res!2856446 () Bool)

(assert (=> b!7002169 (=> res!2856446 e!4208859)))

(declare-fun lt!2496989 () Int)

(declare-fun contextDepthTotal!467 (Context!12540) Int)

(assert (=> b!7002169 (= res!2856446 (<= lt!2496989 (contextDepthTotal!467 lt!2496979)))))

(assert (=> b!7002169 (<= lt!2496989 lt!2496944)))

(declare-fun lt!2496972 () List!67369)

(assert (=> b!7002169 (= lt!2496944 (zipperDepthTotal!495 lt!2496972))))

(assert (=> b!7002169 (= lt!2496989 (contextDepthTotal!467 lt!2496986))))

(declare-fun lt!2496968 () Unit!161208)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!35 (List!67369 Context!12540) Unit!161208)

(assert (=> b!7002169 (= lt!2496968 (lemmaTotalDepthZipperLargerThanOfAnyContext!35 lt!2496972 lt!2496986))))

(declare-fun toList!10634 ((Set Context!12540)) List!67369)

(assert (=> b!7002169 (= lt!2496972 (toList!10634 z1!570))))

(declare-fun lt!2496985 () Unit!161208)

(assert (=> b!7002169 (= lt!2496985 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lt!2496957 () Unit!161208)

(assert (=> b!7002169 (= lt!2496957 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lt!2496943 () Unit!161208)

(assert (=> b!7002169 (= lt!2496943 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(assert (=> b!7002169 (= (flatMap!2260 lt!2496971 lambda!405662) (derivationStepZipperUp!1924 lt!2496979 (h!73692 s!7408)))))

(declare-fun lt!2496984 () Unit!161208)

(assert (=> b!7002169 (= lt!2496984 (lemmaFlatMapOnSingletonSet!1775 lt!2496971 lt!2496979 lambda!405662))))

(declare-fun map!15558 ((Set Context!12540) Int) (Set Context!12540))

(assert (=> b!7002169 (= (map!15558 lt!2496971 lambda!405660) (set.insert (Context!12541 (++!15249 lt!2496965 (exprs!6770 ct2!306))) (as set.empty (Set Context!12540))))))

(declare-fun lt!2496960 () Unit!161208)

(assert (=> b!7002169 (= lt!2496960 (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(declare-fun lt!2496999 () Unit!161208)

(declare-fun lemmaMapOnSingletonSet!339 ((Set Context!12540) Context!12540 Int) Unit!161208)

(assert (=> b!7002169 (= lt!2496999 (lemmaMapOnSingletonSet!339 lt!2496971 lt!2496979 lambda!405660))))

(assert (=> b!7002169 (= lt!2496971 (set.insert lt!2496979 (as set.empty (Set Context!12540))))))

(assert (=> b!7002170 (= e!4208851 (not e!4208844))))

(declare-fun res!2856448 () Bool)

(assert (=> b!7002170 (=> res!2856448 e!4208844)))

(assert (=> b!7002170 (= res!2856448 (not (matchZipper!2814 lt!2496958 s!7408)))))

(assert (=> b!7002170 (= lt!2496958 (set.insert lt!2497004 (as set.empty (Set Context!12540))))))

(declare-fun lambda!405659 () Int)

(declare-fun getWitness!1196 ((Set Context!12540) Int) Context!12540)

(assert (=> b!7002170 (= lt!2497004 (getWitness!1196 lt!2496991 lambda!405659))))

(declare-fun lt!2496970 () List!67369)

(declare-fun exists!3092 (List!67369 Int) Bool)

(assert (=> b!7002170 (exists!3092 lt!2496970 lambda!405659)))

(declare-fun lt!2496994 () Unit!161208)

(declare-fun lemmaZipperMatchesExistsMatchingContext!243 (List!67369 List!67368) Unit!161208)

(assert (=> b!7002170 (= lt!2496994 (lemmaZipperMatchesExistsMatchingContext!243 lt!2496970 s!7408))))

(assert (=> b!7002170 (= lt!2496970 (toList!10634 lt!2496991))))

(assert (= (and start!673778 res!2856447) b!7002151))

(assert (= (and b!7002151 res!2856454) b!7002170))

(assert (= (and b!7002170 (not res!2856448)) b!7002146))

(assert (= (and b!7002146 (not res!2856459)) b!7002139))

(assert (= (and b!7002139 (not res!2856456)) b!7002160))

(assert (= (and b!7002160 (not res!2856468)) b!7002149))

(assert (= (and b!7002149 (not res!2856457)) b!7002153))

(assert (= (and b!7002153 (not res!2856464)) b!7002164))

(assert (= (and b!7002164 (not res!2856469)) b!7002150))

(assert (= (and b!7002150 (not res!2856453)) b!7002142))

(assert (= (and b!7002142 (not res!2856467)) b!7002157))

(assert (= (and b!7002157 (not res!2856470)) b!7002159))

(assert (= (and b!7002157 res!2856472) b!7002156))

(assert (= (and b!7002157 (not res!2856445)) b!7002163))

(assert (= (and b!7002163 (not res!2856465)) b!7002152))

(assert (= (and b!7002152 (not res!2856452)) b!7002168))

(assert (= (and b!7002168 (not res!2856463)) b!7002148))

(assert (= (and b!7002148 (not res!2856458)) b!7002169))

(assert (= (and b!7002169 (not res!2856446)) b!7002143))

(assert (= (and b!7002143 (not res!2856449)) b!7002161))

(assert (= (and b!7002161 (not res!2856466)) b!7002155))

(assert (= (and b!7002155 (not res!2856471)) b!7002166))

(assert (= (and b!7002166 (not res!2856455)) b!7002154))

(assert (= (and b!7002154 (not res!2856444)) b!7002165))

(assert (= (and b!7002165 (not res!2856461)) b!7002141))

(assert (= (and b!7002141 (not res!2856462)) b!7002144))

(assert (= (and b!7002144 (not res!2856473)) b!7002162))

(assert (= (and b!7002144 res!2856450) b!7002147))

(assert (= (and b!7002144 (not res!2856451)) b!7002140))

(assert (= (and b!7002140 (not res!2856460)) b!7002145))

(assert (= (and start!673778 condSetEmpty!48132) setIsEmpty!48132))

(assert (= (and start!673778 (not condSetEmpty!48132)) setNonEmpty!48132))

(assert (= setNonEmpty!48132 b!7002138))

(assert (= start!673778 b!7002167))

(assert (= (and start!673778 (is-Cons!67244 s!7408)) b!7002158))

(declare-fun m!7696854 () Bool)

(assert (=> b!7002142 m!7696854))

(declare-fun m!7696856 () Bool)

(assert (=> b!7002142 m!7696856))

(declare-fun m!7696858 () Bool)

(assert (=> b!7002142 m!7696858))

(declare-fun m!7696860 () Bool)

(assert (=> b!7002142 m!7696860))

(assert (=> b!7002142 m!7696854))

(declare-fun m!7696862 () Bool)

(assert (=> b!7002148 m!7696862))

(assert (=> b!7002148 m!7696854))

(declare-fun m!7696864 () Bool)

(assert (=> b!7002139 m!7696864))

(declare-fun m!7696866 () Bool)

(assert (=> b!7002139 m!7696866))

(declare-fun m!7696868 () Bool)

(assert (=> b!7002139 m!7696868))

(declare-fun m!7696870 () Bool)

(assert (=> b!7002139 m!7696870))

(declare-fun m!7696872 () Bool)

(assert (=> b!7002164 m!7696872))

(declare-fun m!7696874 () Bool)

(assert (=> b!7002159 m!7696874))

(declare-fun m!7696876 () Bool)

(assert (=> b!7002146 m!7696876))

(declare-fun m!7696878 () Bool)

(assert (=> b!7002166 m!7696878))

(declare-fun m!7696880 () Bool)

(assert (=> b!7002150 m!7696880))

(declare-fun m!7696882 () Bool)

(assert (=> b!7002150 m!7696882))

(declare-fun m!7696884 () Bool)

(assert (=> b!7002155 m!7696884))

(declare-fun m!7696886 () Bool)

(assert (=> b!7002160 m!7696886))

(assert (=> b!7002160 m!7696868))

(assert (=> b!7002152 m!7696874))

(assert (=> b!7002152 m!7696854))

(declare-fun m!7696888 () Bool)

(assert (=> b!7002169 m!7696888))

(declare-fun m!7696890 () Bool)

(assert (=> b!7002169 m!7696890))

(assert (=> b!7002169 m!7696854))

(declare-fun m!7696892 () Bool)

(assert (=> b!7002169 m!7696892))

(assert (=> b!7002169 m!7696858))

(assert (=> b!7002169 m!7696854))

(declare-fun m!7696894 () Bool)

(assert (=> b!7002169 m!7696894))

(declare-fun m!7696896 () Bool)

(assert (=> b!7002169 m!7696896))

(declare-fun m!7696898 () Bool)

(assert (=> b!7002169 m!7696898))

(declare-fun m!7696900 () Bool)

(assert (=> b!7002169 m!7696900))

(declare-fun m!7696902 () Bool)

(assert (=> b!7002169 m!7696902))

(declare-fun m!7696904 () Bool)

(assert (=> b!7002169 m!7696904))

(declare-fun m!7696906 () Bool)

(assert (=> b!7002169 m!7696906))

(declare-fun m!7696908 () Bool)

(assert (=> b!7002169 m!7696908))

(assert (=> b!7002169 m!7696854))

(declare-fun m!7696910 () Bool)

(assert (=> b!7002169 m!7696910))

(assert (=> b!7002169 m!7696854))

(declare-fun m!7696912 () Bool)

(assert (=> b!7002144 m!7696912))

(declare-fun m!7696914 () Bool)

(assert (=> b!7002144 m!7696914))

(declare-fun m!7696916 () Bool)

(assert (=> b!7002144 m!7696916))

(declare-fun m!7696918 () Bool)

(assert (=> b!7002144 m!7696918))

(declare-fun m!7696920 () Bool)

(assert (=> b!7002144 m!7696920))

(declare-fun m!7696922 () Bool)

(assert (=> setNonEmpty!48132 m!7696922))

(declare-fun m!7696924 () Bool)

(assert (=> b!7002149 m!7696924))

(assert (=> b!7002149 m!7696868))

(declare-fun m!7696926 () Bool)

(assert (=> b!7002149 m!7696926))

(declare-fun m!7696928 () Bool)

(assert (=> b!7002149 m!7696928))

(declare-fun m!7696930 () Bool)

(assert (=> b!7002149 m!7696930))

(declare-fun m!7696932 () Bool)

(assert (=> b!7002161 m!7696932))

(declare-fun m!7696934 () Bool)

(assert (=> b!7002161 m!7696934))

(declare-fun m!7696936 () Bool)

(assert (=> b!7002161 m!7696936))

(declare-fun m!7696938 () Bool)

(assert (=> b!7002161 m!7696938))

(declare-fun m!7696940 () Bool)

(assert (=> b!7002161 m!7696940))

(declare-fun m!7696942 () Bool)

(assert (=> b!7002161 m!7696942))

(declare-fun m!7696944 () Bool)

(assert (=> b!7002147 m!7696944))

(assert (=> b!7002141 m!7696888))

(declare-fun m!7696946 () Bool)

(assert (=> b!7002141 m!7696946))

(declare-fun m!7696948 () Bool)

(assert (=> b!7002140 m!7696948))

(assert (=> b!7002140 m!7696888))

(declare-fun m!7696950 () Bool)

(assert (=> b!7002140 m!7696950))

(assert (=> b!7002140 m!7696902))

(declare-fun m!7696952 () Bool)

(assert (=> b!7002140 m!7696952))

(assert (=> b!7002140 m!7696896))

(assert (=> b!7002162 m!7696944))

(declare-fun m!7696954 () Bool)

(assert (=> b!7002143 m!7696954))

(declare-fun m!7696956 () Bool)

(assert (=> b!7002165 m!7696956))

(declare-fun m!7696958 () Bool)

(assert (=> b!7002165 m!7696958))

(declare-fun m!7696960 () Bool)

(assert (=> b!7002165 m!7696960))

(declare-fun m!7696962 () Bool)

(assert (=> b!7002165 m!7696962))

(declare-fun m!7696964 () Bool)

(assert (=> b!7002165 m!7696964))

(assert (=> b!7002156 m!7696874))

(assert (=> b!7002156 m!7696854))

(declare-fun m!7696966 () Bool)

(assert (=> start!673778 m!7696966))

(declare-fun m!7696968 () Bool)

(assert (=> start!673778 m!7696968))

(declare-fun m!7696970 () Bool)

(assert (=> start!673778 m!7696970))

(declare-fun m!7696972 () Bool)

(assert (=> b!7002168 m!7696972))

(declare-fun m!7696974 () Bool)

(assert (=> b!7002168 m!7696974))

(assert (=> b!7002168 m!7696856))

(assert (=> b!7002168 m!7696854))

(assert (=> b!7002168 m!7696854))

(assert (=> b!7002168 m!7696854))

(declare-fun m!7696976 () Bool)

(assert (=> b!7002168 m!7696976))

(assert (=> b!7002168 m!7696854))

(declare-fun m!7696978 () Bool)

(assert (=> b!7002168 m!7696978))

(declare-fun m!7696980 () Bool)

(assert (=> b!7002170 m!7696980))

(declare-fun m!7696982 () Bool)

(assert (=> b!7002170 m!7696982))

(declare-fun m!7696984 () Bool)

(assert (=> b!7002170 m!7696984))

(declare-fun m!7696986 () Bool)

(assert (=> b!7002170 m!7696986))

(declare-fun m!7696988 () Bool)

(assert (=> b!7002170 m!7696988))

(declare-fun m!7696990 () Bool)

(assert (=> b!7002170 m!7696990))

(declare-fun m!7696992 () Bool)

(assert (=> b!7002154 m!7696992))

(declare-fun m!7696994 () Bool)

(assert (=> b!7002157 m!7696994))

(assert (=> b!7002157 m!7696854))

(declare-fun m!7696996 () Bool)

(assert (=> b!7002157 m!7696996))

(assert (=> b!7002157 m!7696854))

(declare-fun m!7696998 () Bool)

(assert (=> b!7002157 m!7696998))

(declare-fun m!7697000 () Bool)

(assert (=> b!7002157 m!7697000))

(assert (=> b!7002157 m!7696854))

(push 1)

(assert (not b!7002140))

(assert (not b!7002165))

(assert (not b!7002141))

(assert (not b!7002150))

(assert (not b!7002162))

(assert (not b!7002147))

(assert (not b!7002168))

(assert (not b!7002143))

(assert (not b!7002167))

(assert (not b!7002138))

(assert (not b!7002142))

(assert (not b!7002144))

(assert (not b!7002158))

(assert (not b!7002161))

(assert (not b!7002164))

(assert (not b!7002139))

(assert (not b!7002169))

(assert (not b!7002166))

(assert (not start!673778))

(assert (not b!7002156))

(assert (not b!7002154))

(assert (not b!7002160))

(assert tp_is_empty!43773)

(assert (not b!7002148))

(assert (not b!7002170))

(assert (not setNonEmpty!48132))

(assert (not b!7002152))

(assert (not b!7002157))

(assert (not b!7002159))

(assert (not b!7002155))

(assert (not b!7002149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2182611 () Bool)

(declare-fun nullableFct!2661 (Regex!17274) Bool)

(assert (=> d!2182611 (= (nullable!7034 (h!73691 (exprs!6770 lt!2496986))) (nullableFct!2661 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun bs!1864963 () Bool)

(assert (= bs!1864963 d!2182611))

(declare-fun m!7697150 () Bool)

(assert (=> bs!1864963 m!7697150))

(assert (=> b!7002150 d!2182611))

(declare-fun d!2182613 () Bool)

(assert (=> d!2182613 (= (tail!13317 (exprs!6770 lt!2496986)) (t!381120 (exprs!6770 lt!2496986)))))

(assert (=> b!7002150 d!2182613))

(declare-fun d!2182615 () Bool)

(declare-fun c!1299968 () Bool)

(assert (=> d!2182615 (= c!1299968 (isEmpty!39263 (t!381121 s!7408)))))

(declare-fun e!4208938 () Bool)

(assert (=> d!2182615 (= (matchZipper!2814 lt!2496988 (t!381121 s!7408)) e!4208938)))

(declare-fun b!7002286 () Bool)

(declare-fun nullableZipper!2465 ((Set Context!12540)) Bool)

(assert (=> b!7002286 (= e!4208938 (nullableZipper!2465 lt!2496988))))

(declare-fun b!7002287 () Bool)

(assert (=> b!7002287 (= e!4208938 (matchZipper!2814 (derivationStepZipper!2754 lt!2496988 (head!14145 (t!381121 s!7408))) (tail!13316 (t!381121 s!7408))))))

(assert (= (and d!2182615 c!1299968) b!7002286))

(assert (= (and d!2182615 (not c!1299968)) b!7002287))

(declare-fun m!7697152 () Bool)

(assert (=> d!2182615 m!7697152))

(declare-fun m!7697154 () Bool)

(assert (=> b!7002286 m!7697154))

(declare-fun m!7697156 () Bool)

(assert (=> b!7002287 m!7697156))

(assert (=> b!7002287 m!7697156))

(declare-fun m!7697158 () Bool)

(assert (=> b!7002287 m!7697158))

(declare-fun m!7697160 () Bool)

(assert (=> b!7002287 m!7697160))

(assert (=> b!7002287 m!7697158))

(assert (=> b!7002287 m!7697160))

(declare-fun m!7697162 () Bool)

(assert (=> b!7002287 m!7697162))

(assert (=> b!7002152 d!2182615))

(declare-fun d!2182617 () Bool)

(declare-fun forall!16189 (List!67367 Int) Bool)

(assert (=> d!2182617 (forall!16189 (++!15249 lt!2496965 (exprs!6770 ct2!306)) lambda!405661)))

(declare-fun lt!2497197 () Unit!161208)

(declare-fun choose!52512 (List!67367 List!67367 Int) Unit!161208)

(assert (=> d!2182617 (= lt!2497197 (choose!52512 lt!2496965 (exprs!6770 ct2!306) lambda!405661))))

(assert (=> d!2182617 (forall!16189 lt!2496965 lambda!405661)))

(assert (=> d!2182617 (= (lemmaConcatPreservesForall!610 lt!2496965 (exprs!6770 ct2!306) lambda!405661) lt!2497197)))

(declare-fun bs!1864964 () Bool)

(assert (= bs!1864964 d!2182617))

(assert (=> bs!1864964 m!7696858))

(assert (=> bs!1864964 m!7696858))

(declare-fun m!7697164 () Bool)

(assert (=> bs!1864964 m!7697164))

(declare-fun m!7697166 () Bool)

(assert (=> bs!1864964 m!7697166))

(declare-fun m!7697168 () Bool)

(assert (=> bs!1864964 m!7697168))

(assert (=> b!7002152 d!2182617))

(declare-fun b!7002298 () Bool)

(declare-fun e!4208947 () (Set Context!12540))

(declare-fun call!635803 () (Set Context!12540))

(assert (=> b!7002298 (= e!4208947 (set.union call!635803 (derivationStepZipperUp!1924 (Context!12541 (t!381120 (exprs!6770 lt!2496995))) (h!73692 s!7408))))))

(declare-fun b!7002299 () Bool)

(declare-fun e!4208945 () (Set Context!12540))

(assert (=> b!7002299 (= e!4208947 e!4208945)))

(declare-fun c!1299973 () Bool)

(assert (=> b!7002299 (= c!1299973 (is-Cons!67243 (exprs!6770 lt!2496995)))))

(declare-fun b!7002300 () Bool)

(declare-fun e!4208946 () Bool)

(assert (=> b!7002300 (= e!4208946 (nullable!7034 (h!73691 (exprs!6770 lt!2496995))))))

(declare-fun bm!635798 () Bool)

(assert (=> bm!635798 (= call!635803 (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496995)) (Context!12541 (t!381120 (exprs!6770 lt!2496995))) (h!73692 s!7408)))))

(declare-fun d!2182619 () Bool)

(declare-fun c!1299974 () Bool)

(assert (=> d!2182619 (= c!1299974 e!4208946)))

(declare-fun res!2856567 () Bool)

(assert (=> d!2182619 (=> (not res!2856567) (not e!4208946))))

(assert (=> d!2182619 (= res!2856567 (is-Cons!67243 (exprs!6770 lt!2496995)))))

(assert (=> d!2182619 (= (derivationStepZipperUp!1924 lt!2496995 (h!73692 s!7408)) e!4208947)))

(declare-fun b!7002301 () Bool)

(assert (=> b!7002301 (= e!4208945 (as set.empty (Set Context!12540)))))

(declare-fun b!7002302 () Bool)

(assert (=> b!7002302 (= e!4208945 call!635803)))

(assert (= (and d!2182619 res!2856567) b!7002300))

(assert (= (and d!2182619 c!1299974) b!7002298))

(assert (= (and d!2182619 (not c!1299974)) b!7002299))

(assert (= (and b!7002299 c!1299973) b!7002302))

(assert (= (and b!7002299 (not c!1299973)) b!7002301))

(assert (= (or b!7002298 b!7002302) bm!635798))

(declare-fun m!7697170 () Bool)

(assert (=> b!7002298 m!7697170))

(declare-fun m!7697172 () Bool)

(assert (=> b!7002300 m!7697172))

(declare-fun m!7697174 () Bool)

(assert (=> bm!635798 m!7697174))

(assert (=> b!7002168 d!2182619))

(declare-fun bs!1864965 () Bool)

(declare-fun d!2182621 () Bool)

(assert (= bs!1864965 (and d!2182621 b!7002149)))

(declare-fun lambda!405729 () Int)

(assert (=> bs!1864965 (= lambda!405729 lambda!405662)))

(assert (=> d!2182621 true))

(assert (=> d!2182621 (= (derivationStepZipper!2754 lt!2496996 (h!73692 s!7408)) (flatMap!2260 lt!2496996 lambda!405729))))

(declare-fun bs!1864966 () Bool)

(assert (= bs!1864966 d!2182621))

(declare-fun m!7697176 () Bool)

(assert (=> bs!1864966 m!7697176))

(assert (=> b!7002168 d!2182621))

(assert (=> b!7002168 d!2182617))

(declare-fun d!2182623 () Bool)

(declare-fun choose!52513 ((Set Context!12540) Int) (Set Context!12540))

(assert (=> d!2182623 (= (flatMap!2260 lt!2496996 lambda!405662) (choose!52513 lt!2496996 lambda!405662))))

(declare-fun bs!1864967 () Bool)

(assert (= bs!1864967 d!2182623))

(declare-fun m!7697178 () Bool)

(assert (=> bs!1864967 m!7697178))

(assert (=> b!7002168 d!2182623))

(declare-fun d!2182625 () Bool)

(declare-fun dynLambda!27011 (Int Context!12540) (Set Context!12540))

(assert (=> d!2182625 (= (flatMap!2260 lt!2496996 lambda!405662) (dynLambda!27011 lambda!405662 lt!2496995))))

(declare-fun lt!2497200 () Unit!161208)

(declare-fun choose!52514 ((Set Context!12540) Context!12540 Int) Unit!161208)

(assert (=> d!2182625 (= lt!2497200 (choose!52514 lt!2496996 lt!2496995 lambda!405662))))

(assert (=> d!2182625 (= lt!2496996 (set.insert lt!2496995 (as set.empty (Set Context!12540))))))

(assert (=> d!2182625 (= (lemmaFlatMapOnSingletonSet!1775 lt!2496996 lt!2496995 lambda!405662) lt!2497200)))

(declare-fun b_lambda!263783 () Bool)

(assert (=> (not b_lambda!263783) (not d!2182625)))

(declare-fun bs!1864968 () Bool)

(assert (= bs!1864968 d!2182625))

(assert (=> bs!1864968 m!7696976))

(declare-fun m!7697180 () Bool)

(assert (=> bs!1864968 m!7697180))

(declare-fun m!7697182 () Bool)

(assert (=> bs!1864968 m!7697182))

(assert (=> bs!1864968 m!7696978))

(assert (=> b!7002168 d!2182625))

(declare-fun d!2182627 () Bool)

(declare-fun c!1299977 () Bool)

(assert (=> d!2182627 (= c!1299977 (isEmpty!39263 s!7408))))

(declare-fun e!4208948 () Bool)

(assert (=> d!2182627 (= (matchZipper!2814 lt!2496996 s!7408) e!4208948)))

(declare-fun b!7002305 () Bool)

(assert (=> b!7002305 (= e!4208948 (nullableZipper!2465 lt!2496996))))

(declare-fun b!7002306 () Bool)

(assert (=> b!7002306 (= e!4208948 (matchZipper!2814 (derivationStepZipper!2754 lt!2496996 (head!14145 s!7408)) (tail!13316 s!7408)))))

(assert (= (and d!2182627 c!1299977) b!7002305))

(assert (= (and d!2182627 (not c!1299977)) b!7002306))

(declare-fun m!7697184 () Bool)

(assert (=> d!2182627 m!7697184))

(declare-fun m!7697186 () Bool)

(assert (=> b!7002305 m!7697186))

(declare-fun m!7697188 () Bool)

(assert (=> b!7002306 m!7697188))

(assert (=> b!7002306 m!7697188))

(declare-fun m!7697190 () Bool)

(assert (=> b!7002306 m!7697190))

(declare-fun m!7697192 () Bool)

(assert (=> b!7002306 m!7697192))

(assert (=> b!7002306 m!7697190))

(assert (=> b!7002306 m!7697192))

(declare-fun m!7697194 () Bool)

(assert (=> b!7002306 m!7697194))

(assert (=> b!7002148 d!2182627))

(assert (=> b!7002148 d!2182617))

(declare-fun d!2182629 () Bool)

(assert (=> d!2182629 (= (flatMap!2260 lt!2496971 lambda!405662) (choose!52513 lt!2496971 lambda!405662))))

(declare-fun bs!1864969 () Bool)

(assert (= bs!1864969 d!2182629))

(declare-fun m!7697196 () Bool)

(assert (=> bs!1864969 m!7697196))

(assert (=> b!7002169 d!2182629))

(declare-fun d!2182631 () Bool)

(declare-fun e!4208951 () Bool)

(assert (=> d!2182631 e!4208951))

(declare-fun res!2856570 () Bool)

(assert (=> d!2182631 (=> (not res!2856570) (not e!4208951))))

(declare-fun lt!2497203 () List!67369)

(declare-fun noDuplicate!2546 (List!67369) Bool)

(assert (=> d!2182631 (= res!2856570 (noDuplicate!2546 lt!2497203))))

(declare-fun choose!52515 ((Set Context!12540)) List!67369)

(assert (=> d!2182631 (= lt!2497203 (choose!52515 z1!570))))

(assert (=> d!2182631 (= (toList!10634 z1!570) lt!2497203)))

(declare-fun b!7002309 () Bool)

(declare-fun content!13321 (List!67369) (Set Context!12540))

(assert (=> b!7002309 (= e!4208951 (= (content!13321 lt!2497203) z1!570))))

(assert (= (and d!2182631 res!2856570) b!7002309))

(declare-fun m!7697198 () Bool)

(assert (=> d!2182631 m!7697198))

(declare-fun m!7697200 () Bool)

(assert (=> d!2182631 m!7697200))

(declare-fun m!7697202 () Bool)

(assert (=> b!7002309 m!7697202))

(assert (=> b!7002169 d!2182631))

(declare-fun d!2182633 () Bool)

(declare-fun lt!2497206 () Int)

(assert (=> d!2182633 (>= lt!2497206 0)))

(declare-fun e!4208954 () Int)

(assert (=> d!2182633 (= lt!2497206 e!4208954)))

(declare-fun c!1299980 () Bool)

(assert (=> d!2182633 (= c!1299980 (is-Cons!67245 lt!2496972))))

(assert (=> d!2182633 (= (zipperDepthTotal!495 lt!2496972) lt!2497206)))

(declare-fun b!7002314 () Bool)

(assert (=> b!7002314 (= e!4208954 (+ (contextDepthTotal!467 (h!73693 lt!2496972)) (zipperDepthTotal!495 (t!381122 lt!2496972))))))

(declare-fun b!7002315 () Bool)

(assert (=> b!7002315 (= e!4208954 0)))

(assert (= (and d!2182633 c!1299980) b!7002314))

(assert (= (and d!2182633 (not c!1299980)) b!7002315))

(declare-fun m!7697204 () Bool)

(assert (=> b!7002314 m!7697204))

(declare-fun m!7697206 () Bool)

(assert (=> b!7002314 m!7697206))

(assert (=> b!7002169 d!2182633))

(assert (=> b!7002169 d!2182617))

(declare-fun d!2182635 () Bool)

(declare-fun lt!2497209 () Int)

(assert (=> d!2182635 (>= lt!2497209 0)))

(declare-fun e!4208957 () Int)

(assert (=> d!2182635 (= lt!2497209 e!4208957)))

(declare-fun c!1299984 () Bool)

(assert (=> d!2182635 (= c!1299984 (is-Cons!67243 (exprs!6770 lt!2496986)))))

(assert (=> d!2182635 (= (contextDepthTotal!467 lt!2496986) lt!2497209)))

(declare-fun b!7002320 () Bool)

(declare-fun regexDepthTotal!284 (Regex!17274) Int)

(assert (=> b!7002320 (= e!4208957 (+ (regexDepthTotal!284 (h!73691 (exprs!6770 lt!2496986))) (contextDepthTotal!467 (Context!12541 (t!381120 (exprs!6770 lt!2496986))))))))

(declare-fun b!7002321 () Bool)

(assert (=> b!7002321 (= e!4208957 1)))

(assert (= (and d!2182635 c!1299984) b!7002320))

(assert (= (and d!2182635 (not c!1299984)) b!7002321))

(declare-fun m!7697208 () Bool)

(assert (=> b!7002320 m!7697208))

(declare-fun m!7697210 () Bool)

(assert (=> b!7002320 m!7697210))

(assert (=> b!7002169 d!2182635))

(declare-fun d!2182637 () Bool)

(declare-fun lt!2497210 () Int)

(assert (=> d!2182637 (>= lt!2497210 0)))

(declare-fun e!4208958 () Int)

(assert (=> d!2182637 (= lt!2497210 e!4208958)))

(declare-fun c!1299985 () Bool)

(assert (=> d!2182637 (= c!1299985 (is-Cons!67243 (exprs!6770 lt!2496979)))))

(assert (=> d!2182637 (= (contextDepthTotal!467 lt!2496979) lt!2497210)))

(declare-fun b!7002322 () Bool)

(assert (=> b!7002322 (= e!4208958 (+ (regexDepthTotal!284 (h!73691 (exprs!6770 lt!2496979))) (contextDepthTotal!467 (Context!12541 (t!381120 (exprs!6770 lt!2496979))))))))

(declare-fun b!7002323 () Bool)

(assert (=> b!7002323 (= e!4208958 1)))

(assert (= (and d!2182637 c!1299985) b!7002322))

(assert (= (and d!2182637 (not c!1299985)) b!7002323))

(declare-fun m!7697212 () Bool)

(assert (=> b!7002322 m!7697212))

(declare-fun m!7697214 () Bool)

(assert (=> b!7002322 m!7697214))

(assert (=> b!7002169 d!2182637))

(declare-fun d!2182639 () Bool)

(assert (=> d!2182639 (<= (contextDepthTotal!467 lt!2496986) (zipperDepthTotal!495 lt!2496972))))

(declare-fun lt!2497213 () Unit!161208)

(declare-fun choose!52516 (List!67369 Context!12540) Unit!161208)

(assert (=> d!2182639 (= lt!2497213 (choose!52516 lt!2496972 lt!2496986))))

(declare-fun contains!20426 (List!67369 Context!12540) Bool)

(assert (=> d!2182639 (contains!20426 lt!2496972 lt!2496986)))

(assert (=> d!2182639 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!35 lt!2496972 lt!2496986) lt!2497213)))

(declare-fun bs!1864970 () Bool)

(assert (= bs!1864970 d!2182639))

(assert (=> bs!1864970 m!7696908))

(assert (=> bs!1864970 m!7696894))

(declare-fun m!7697216 () Bool)

(assert (=> bs!1864970 m!7697216))

(declare-fun m!7697218 () Bool)

(assert (=> bs!1864970 m!7697218))

(assert (=> b!7002169 d!2182639))

(declare-fun b!7002324 () Bool)

(declare-fun call!635804 () (Set Context!12540))

(declare-fun e!4208961 () (Set Context!12540))

(assert (=> b!7002324 (= e!4208961 (set.union call!635804 (derivationStepZipperUp!1924 (Context!12541 (t!381120 (exprs!6770 lt!2496979))) (h!73692 s!7408))))))

(declare-fun b!7002325 () Bool)

(declare-fun e!4208959 () (Set Context!12540))

(assert (=> b!7002325 (= e!4208961 e!4208959)))

(declare-fun c!1299987 () Bool)

(assert (=> b!7002325 (= c!1299987 (is-Cons!67243 (exprs!6770 lt!2496979)))))

(declare-fun b!7002326 () Bool)

(declare-fun e!4208960 () Bool)

(assert (=> b!7002326 (= e!4208960 (nullable!7034 (h!73691 (exprs!6770 lt!2496979))))))

(declare-fun bm!635799 () Bool)

(assert (=> bm!635799 (= call!635804 (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496979)) (Context!12541 (t!381120 (exprs!6770 lt!2496979))) (h!73692 s!7408)))))

(declare-fun d!2182641 () Bool)

(declare-fun c!1299988 () Bool)

(assert (=> d!2182641 (= c!1299988 e!4208960)))

(declare-fun res!2856571 () Bool)

(assert (=> d!2182641 (=> (not res!2856571) (not e!4208960))))

(assert (=> d!2182641 (= res!2856571 (is-Cons!67243 (exprs!6770 lt!2496979)))))

(assert (=> d!2182641 (= (derivationStepZipperUp!1924 lt!2496979 (h!73692 s!7408)) e!4208961)))

(declare-fun b!7002327 () Bool)

(assert (=> b!7002327 (= e!4208959 (as set.empty (Set Context!12540)))))

(declare-fun b!7002328 () Bool)

(assert (=> b!7002328 (= e!4208959 call!635804)))

(assert (= (and d!2182641 res!2856571) b!7002326))

(assert (= (and d!2182641 c!1299988) b!7002324))

(assert (= (and d!2182641 (not c!1299988)) b!7002325))

(assert (= (and b!7002325 c!1299987) b!7002328))

(assert (= (and b!7002325 (not c!1299987)) b!7002327))

(assert (= (or b!7002324 b!7002328) bm!635799))

(declare-fun m!7697220 () Bool)

(assert (=> b!7002324 m!7697220))

(declare-fun m!7697222 () Bool)

(assert (=> b!7002326 m!7697222))

(declare-fun m!7697224 () Bool)

(assert (=> bm!635799 m!7697224))

(assert (=> b!7002169 d!2182641))

(declare-fun d!2182643 () Bool)

(declare-fun dynLambda!27012 (Int Context!12540) Context!12540)

(assert (=> d!2182643 (= (map!15558 lt!2496971 lambda!405660) (set.insert (dynLambda!27012 lambda!405660 lt!2496979) (as set.empty (Set Context!12540))))))

(declare-fun lt!2497216 () Unit!161208)

(declare-fun choose!52517 ((Set Context!12540) Context!12540 Int) Unit!161208)

(assert (=> d!2182643 (= lt!2497216 (choose!52517 lt!2496971 lt!2496979 lambda!405660))))

(assert (=> d!2182643 (= lt!2496971 (set.insert lt!2496979 (as set.empty (Set Context!12540))))))

(assert (=> d!2182643 (= (lemmaMapOnSingletonSet!339 lt!2496971 lt!2496979 lambda!405660) lt!2497216)))

(declare-fun b_lambda!263785 () Bool)

(assert (=> (not b_lambda!263785) (not d!2182643)))

(declare-fun bs!1864971 () Bool)

(assert (= bs!1864971 d!2182643))

(assert (=> bs!1864971 m!7696898))

(declare-fun m!7697226 () Bool)

(assert (=> bs!1864971 m!7697226))

(declare-fun m!7697228 () Bool)

(assert (=> bs!1864971 m!7697228))

(declare-fun m!7697230 () Bool)

(assert (=> bs!1864971 m!7697230))

(assert (=> bs!1864971 m!7696900))

(assert (=> bs!1864971 m!7697228))

(assert (=> b!7002169 d!2182643))

(declare-fun d!2182645 () Bool)

(declare-fun choose!52518 ((Set Context!12540) Int) (Set Context!12540))

(assert (=> d!2182645 (= (map!15558 lt!2496971 lambda!405660) (choose!52518 lt!2496971 lambda!405660))))

(declare-fun bs!1864972 () Bool)

(assert (= bs!1864972 d!2182645))

(declare-fun m!7697232 () Bool)

(assert (=> bs!1864972 m!7697232))

(assert (=> b!7002169 d!2182645))

(declare-fun d!2182647 () Bool)

(assert (=> d!2182647 (= (flatMap!2260 lt!2496971 lambda!405662) (dynLambda!27011 lambda!405662 lt!2496979))))

(declare-fun lt!2497217 () Unit!161208)

(assert (=> d!2182647 (= lt!2497217 (choose!52514 lt!2496971 lt!2496979 lambda!405662))))

(assert (=> d!2182647 (= lt!2496971 (set.insert lt!2496979 (as set.empty (Set Context!12540))))))

(assert (=> d!2182647 (= (lemmaFlatMapOnSingletonSet!1775 lt!2496971 lt!2496979 lambda!405662) lt!2497217)))

(declare-fun b_lambda!263787 () Bool)

(assert (=> (not b_lambda!263787) (not d!2182647)))

(declare-fun bs!1864973 () Bool)

(assert (= bs!1864973 d!2182647))

(assert (=> bs!1864973 m!7696896))

(declare-fun m!7697234 () Bool)

(assert (=> bs!1864973 m!7697234))

(declare-fun m!7697236 () Bool)

(assert (=> bs!1864973 m!7697236))

(assert (=> bs!1864973 m!7696898))

(assert (=> b!7002169 d!2182647))

(declare-fun b!7002339 () Bool)

(declare-fun res!2856576 () Bool)

(declare-fun e!4208966 () Bool)

(assert (=> b!7002339 (=> (not res!2856576) (not e!4208966))))

(declare-fun lt!2497220 () List!67367)

(declare-fun size!40943 (List!67367) Int)

(assert (=> b!7002339 (= res!2856576 (= (size!40943 lt!2497220) (+ (size!40943 lt!2496965) (size!40943 (exprs!6770 ct2!306)))))))

(declare-fun d!2182649 () Bool)

(assert (=> d!2182649 e!4208966))

(declare-fun res!2856577 () Bool)

(assert (=> d!2182649 (=> (not res!2856577) (not e!4208966))))

(declare-fun content!13322 (List!67367) (Set Regex!17274))

(assert (=> d!2182649 (= res!2856577 (= (content!13322 lt!2497220) (set.union (content!13322 lt!2496965) (content!13322 (exprs!6770 ct2!306)))))))

(declare-fun e!4208967 () List!67367)

(assert (=> d!2182649 (= lt!2497220 e!4208967)))

(declare-fun c!1299991 () Bool)

(assert (=> d!2182649 (= c!1299991 (is-Nil!67243 lt!2496965))))

(assert (=> d!2182649 (= (++!15249 lt!2496965 (exprs!6770 ct2!306)) lt!2497220)))

(declare-fun b!7002337 () Bool)

(assert (=> b!7002337 (= e!4208967 (exprs!6770 ct2!306))))

(declare-fun b!7002340 () Bool)

(assert (=> b!7002340 (= e!4208966 (or (not (= (exprs!6770 ct2!306) Nil!67243)) (= lt!2497220 lt!2496965)))))

(declare-fun b!7002338 () Bool)

(assert (=> b!7002338 (= e!4208967 (Cons!67243 (h!73691 lt!2496965) (++!15249 (t!381120 lt!2496965) (exprs!6770 ct2!306))))))

(assert (= (and d!2182649 c!1299991) b!7002337))

(assert (= (and d!2182649 (not c!1299991)) b!7002338))

(assert (= (and d!2182649 res!2856577) b!7002339))

(assert (= (and b!7002339 res!2856576) b!7002340))

(declare-fun m!7697238 () Bool)

(assert (=> b!7002339 m!7697238))

(declare-fun m!7697240 () Bool)

(assert (=> b!7002339 m!7697240))

(declare-fun m!7697242 () Bool)

(assert (=> b!7002339 m!7697242))

(declare-fun m!7697244 () Bool)

(assert (=> d!2182649 m!7697244))

(declare-fun m!7697246 () Bool)

(assert (=> d!2182649 m!7697246))

(declare-fun m!7697248 () Bool)

(assert (=> d!2182649 m!7697248))

(declare-fun m!7697250 () Bool)

(assert (=> b!7002338 m!7697250))

(assert (=> b!7002169 d!2182649))

(declare-fun bs!1864974 () Bool)

(declare-fun d!2182651 () Bool)

(assert (= bs!1864974 (and d!2182651 b!7002149)))

(declare-fun lambda!405730 () Int)

(assert (=> bs!1864974 (= lambda!405730 lambda!405662)))

(declare-fun bs!1864975 () Bool)

(assert (= bs!1864975 (and d!2182651 d!2182621)))

(assert (=> bs!1864975 (= lambda!405730 lambda!405729)))

(assert (=> d!2182651 true))

(assert (=> d!2182651 (= (derivationStepZipper!2754 lt!2496947 (h!73692 s!7408)) (flatMap!2260 lt!2496947 lambda!405730))))

(declare-fun bs!1864976 () Bool)

(assert (= bs!1864976 d!2182651))

(declare-fun m!7697252 () Bool)

(assert (=> bs!1864976 m!7697252))

(assert (=> b!7002149 d!2182651))

(declare-fun d!2182653 () Bool)

(assert (=> d!2182653 (= (flatMap!2260 lt!2496947 lambda!405662) (choose!52513 lt!2496947 lambda!405662))))

(declare-fun bs!1864977 () Bool)

(assert (= bs!1864977 d!2182653))

(declare-fun m!7697254 () Bool)

(assert (=> bs!1864977 m!7697254))

(assert (=> b!7002149 d!2182653))

(declare-fun b!7002341 () Bool)

(declare-fun e!4208970 () (Set Context!12540))

(declare-fun call!635805 () (Set Context!12540))

(assert (=> b!7002341 (= e!4208970 (set.union call!635805 (derivationStepZipperUp!1924 (Context!12541 (t!381120 (exprs!6770 lt!2496962))) (h!73692 s!7408))))))

(declare-fun b!7002342 () Bool)

(declare-fun e!4208968 () (Set Context!12540))

(assert (=> b!7002342 (= e!4208970 e!4208968)))

(declare-fun c!1299992 () Bool)

(assert (=> b!7002342 (= c!1299992 (is-Cons!67243 (exprs!6770 lt!2496962)))))

(declare-fun b!7002343 () Bool)

(declare-fun e!4208969 () Bool)

(assert (=> b!7002343 (= e!4208969 (nullable!7034 (h!73691 (exprs!6770 lt!2496962))))))

(declare-fun bm!635800 () Bool)

(assert (=> bm!635800 (= call!635805 (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496962)) (Context!12541 (t!381120 (exprs!6770 lt!2496962))) (h!73692 s!7408)))))

(declare-fun d!2182655 () Bool)

(declare-fun c!1299993 () Bool)

(assert (=> d!2182655 (= c!1299993 e!4208969)))

(declare-fun res!2856578 () Bool)

(assert (=> d!2182655 (=> (not res!2856578) (not e!4208969))))

(assert (=> d!2182655 (= res!2856578 (is-Cons!67243 (exprs!6770 lt!2496962)))))

(assert (=> d!2182655 (= (derivationStepZipperUp!1924 lt!2496962 (h!73692 s!7408)) e!4208970)))

(declare-fun b!7002344 () Bool)

(assert (=> b!7002344 (= e!4208968 (as set.empty (Set Context!12540)))))

(declare-fun b!7002345 () Bool)

(assert (=> b!7002345 (= e!4208968 call!635805)))

(assert (= (and d!2182655 res!2856578) b!7002343))

(assert (= (and d!2182655 c!1299993) b!7002341))

(assert (= (and d!2182655 (not c!1299993)) b!7002342))

(assert (= (and b!7002342 c!1299992) b!7002345))

(assert (= (and b!7002342 (not c!1299992)) b!7002344))

(assert (= (or b!7002341 b!7002345) bm!635800))

(declare-fun m!7697256 () Bool)

(assert (=> b!7002341 m!7697256))

(declare-fun m!7697258 () Bool)

(assert (=> b!7002343 m!7697258))

(declare-fun m!7697260 () Bool)

(assert (=> bm!635800 m!7697260))

(assert (=> b!7002149 d!2182655))

(declare-fun d!2182657 () Bool)

(assert (=> d!2182657 (= (flatMap!2260 lt!2496947 lambda!405662) (dynLambda!27011 lambda!405662 lt!2496962))))

(declare-fun lt!2497221 () Unit!161208)

(assert (=> d!2182657 (= lt!2497221 (choose!52514 lt!2496947 lt!2496962 lambda!405662))))

(assert (=> d!2182657 (= lt!2496947 (set.insert lt!2496962 (as set.empty (Set Context!12540))))))

(assert (=> d!2182657 (= (lemmaFlatMapOnSingletonSet!1775 lt!2496947 lt!2496962 lambda!405662) lt!2497221)))

(declare-fun b_lambda!263789 () Bool)

(assert (=> (not b_lambda!263789) (not d!2182657)))

(declare-fun bs!1864978 () Bool)

(assert (= bs!1864978 d!2182657))

(assert (=> bs!1864978 m!7696924))

(declare-fun m!7697262 () Bool)

(assert (=> bs!1864978 m!7697262))

(declare-fun m!7697264 () Bool)

(assert (=> bs!1864978 m!7697264))

(assert (=> bs!1864978 m!7696886))

(assert (=> b!7002149 d!2182657))

(declare-fun d!2182659 () Bool)

(assert (=> d!2182659 (forall!16189 (++!15249 (exprs!6770 lt!2496986) (exprs!6770 ct2!306)) lambda!405661)))

(declare-fun lt!2497222 () Unit!161208)

(assert (=> d!2182659 (= lt!2497222 (choose!52512 (exprs!6770 lt!2496986) (exprs!6770 ct2!306) lambda!405661))))

(assert (=> d!2182659 (forall!16189 (exprs!6770 lt!2496986) lambda!405661)))

(assert (=> d!2182659 (= (lemmaConcatPreservesForall!610 (exprs!6770 lt!2496986) (exprs!6770 ct2!306) lambda!405661) lt!2497222)))

(declare-fun bs!1864979 () Bool)

(assert (= bs!1864979 d!2182659))

(assert (=> bs!1864979 m!7696866))

(assert (=> bs!1864979 m!7696866))

(declare-fun m!7697266 () Bool)

(assert (=> bs!1864979 m!7697266))

(declare-fun m!7697268 () Bool)

(assert (=> bs!1864979 m!7697268))

(declare-fun m!7697270 () Bool)

(assert (=> bs!1864979 m!7697270))

(assert (=> b!7002149 d!2182659))

(declare-fun bs!1864980 () Bool)

(declare-fun d!2182661 () Bool)

(assert (= bs!1864980 (and d!2182661 b!7002170)))

(declare-fun lambda!405733 () Int)

(assert (=> bs!1864980 (= lambda!405733 lambda!405659)))

(assert (=> d!2182661 true))

(assert (=> d!2182661 (exists!3092 lt!2496970 lambda!405733)))

(declare-fun lt!2497225 () Unit!161208)

(declare-fun choose!52519 (List!67369 List!67368) Unit!161208)

(assert (=> d!2182661 (= lt!2497225 (choose!52519 lt!2496970 s!7408))))

(assert (=> d!2182661 (matchZipper!2814 (content!13321 lt!2496970) s!7408)))

(assert (=> d!2182661 (= (lemmaZipperMatchesExistsMatchingContext!243 lt!2496970 s!7408) lt!2497225)))

(declare-fun bs!1864981 () Bool)

(assert (= bs!1864981 d!2182661))

(declare-fun m!7697272 () Bool)

(assert (=> bs!1864981 m!7697272))

(declare-fun m!7697274 () Bool)

(assert (=> bs!1864981 m!7697274))

(declare-fun m!7697276 () Bool)

(assert (=> bs!1864981 m!7697276))

(assert (=> bs!1864981 m!7697276))

(declare-fun m!7697278 () Bool)

(assert (=> bs!1864981 m!7697278))

(assert (=> b!7002170 d!2182661))

(declare-fun bs!1864982 () Bool)

(declare-fun d!2182663 () Bool)

(assert (= bs!1864982 (and d!2182663 b!7002170)))

(declare-fun lambda!405736 () Int)

(assert (=> bs!1864982 (not (= lambda!405736 lambda!405659))))

(declare-fun bs!1864983 () Bool)

(assert (= bs!1864983 (and d!2182663 d!2182661)))

(assert (=> bs!1864983 (not (= lambda!405736 lambda!405733))))

(assert (=> d!2182663 true))

(declare-fun order!27981 () Int)

(declare-fun dynLambda!27013 (Int Int) Int)

(assert (=> d!2182663 (< (dynLambda!27013 order!27981 lambda!405659) (dynLambda!27013 order!27981 lambda!405736))))

(declare-fun forall!16190 (List!67369 Int) Bool)

(assert (=> d!2182663 (= (exists!3092 lt!2496970 lambda!405659) (not (forall!16190 lt!2496970 lambda!405736)))))

(declare-fun bs!1864984 () Bool)

(assert (= bs!1864984 d!2182663))

(declare-fun m!7697280 () Bool)

(assert (=> bs!1864984 m!7697280))

(assert (=> b!7002170 d!2182663))

(declare-fun d!2182665 () Bool)

(declare-fun c!1299996 () Bool)

(assert (=> d!2182665 (= c!1299996 (isEmpty!39263 s!7408))))

(declare-fun e!4208971 () Bool)

(assert (=> d!2182665 (= (matchZipper!2814 lt!2496958 s!7408) e!4208971)))

(declare-fun b!7002348 () Bool)

(assert (=> b!7002348 (= e!4208971 (nullableZipper!2465 lt!2496958))))

(declare-fun b!7002349 () Bool)

(assert (=> b!7002349 (= e!4208971 (matchZipper!2814 (derivationStepZipper!2754 lt!2496958 (head!14145 s!7408)) (tail!13316 s!7408)))))

(assert (= (and d!2182665 c!1299996) b!7002348))

(assert (= (and d!2182665 (not c!1299996)) b!7002349))

(assert (=> d!2182665 m!7697184))

(declare-fun m!7697282 () Bool)

(assert (=> b!7002348 m!7697282))

(assert (=> b!7002349 m!7697188))

(assert (=> b!7002349 m!7697188))

(declare-fun m!7697284 () Bool)

(assert (=> b!7002349 m!7697284))

(assert (=> b!7002349 m!7697192))

(assert (=> b!7002349 m!7697284))

(assert (=> b!7002349 m!7697192))

(declare-fun m!7697286 () Bool)

(assert (=> b!7002349 m!7697286))

(assert (=> b!7002170 d!2182665))

(declare-fun d!2182667 () Bool)

(declare-fun e!4208974 () Bool)

(assert (=> d!2182667 e!4208974))

(declare-fun res!2856581 () Bool)

(assert (=> d!2182667 (=> (not res!2856581) (not e!4208974))))

(declare-fun lt!2497228 () Context!12540)

(declare-fun dynLambda!27014 (Int Context!12540) Bool)

(assert (=> d!2182667 (= res!2856581 (dynLambda!27014 lambda!405659 lt!2497228))))

(declare-fun getWitness!1198 (List!67369 Int) Context!12540)

(assert (=> d!2182667 (= lt!2497228 (getWitness!1198 (toList!10634 lt!2496991) lambda!405659))))

(declare-fun exists!3094 ((Set Context!12540) Int) Bool)

(assert (=> d!2182667 (exists!3094 lt!2496991 lambda!405659)))

(assert (=> d!2182667 (= (getWitness!1196 lt!2496991 lambda!405659) lt!2497228)))

(declare-fun b!7002352 () Bool)

(assert (=> b!7002352 (= e!4208974 (set.member lt!2497228 lt!2496991))))

(assert (= (and d!2182667 res!2856581) b!7002352))

(declare-fun b_lambda!263791 () Bool)

(assert (=> (not b_lambda!263791) (not d!2182667)))

(declare-fun m!7697288 () Bool)

(assert (=> d!2182667 m!7697288))

(assert (=> d!2182667 m!7696980))

(assert (=> d!2182667 m!7696980))

(declare-fun m!7697290 () Bool)

(assert (=> d!2182667 m!7697290))

(declare-fun m!7697292 () Bool)

(assert (=> d!2182667 m!7697292))

(declare-fun m!7697294 () Bool)

(assert (=> b!7002352 m!7697294))

(assert (=> b!7002170 d!2182667))

(declare-fun d!2182669 () Bool)

(declare-fun e!4208975 () Bool)

(assert (=> d!2182669 e!4208975))

(declare-fun res!2856582 () Bool)

(assert (=> d!2182669 (=> (not res!2856582) (not e!4208975))))

(declare-fun lt!2497229 () List!67369)

(assert (=> d!2182669 (= res!2856582 (noDuplicate!2546 lt!2497229))))

(assert (=> d!2182669 (= lt!2497229 (choose!52515 lt!2496991))))

(assert (=> d!2182669 (= (toList!10634 lt!2496991) lt!2497229)))

(declare-fun b!7002353 () Bool)

(assert (=> b!7002353 (= e!4208975 (= (content!13321 lt!2497229) lt!2496991))))

(assert (= (and d!2182669 res!2856582) b!7002353))

(declare-fun m!7697296 () Bool)

(assert (=> d!2182669 m!7697296))

(declare-fun m!7697298 () Bool)

(assert (=> d!2182669 m!7697298))

(declare-fun m!7697300 () Bool)

(assert (=> b!7002353 m!7697300))

(assert (=> b!7002170 d!2182669))

(assert (=> b!7002156 d!2182615))

(assert (=> b!7002156 d!2182617))

(declare-fun d!2182671 () Bool)

(declare-fun c!1299997 () Bool)

(assert (=> d!2182671 (= c!1299997 (isEmpty!39263 (t!381121 s!7408)))))

(declare-fun e!4208976 () Bool)

(assert (=> d!2182671 (= (matchZipper!2814 lt!2496951 (t!381121 s!7408)) e!4208976)))

(declare-fun b!7002354 () Bool)

(assert (=> b!7002354 (= e!4208976 (nullableZipper!2465 lt!2496951))))

(declare-fun b!7002355 () Bool)

(assert (=> b!7002355 (= e!4208976 (matchZipper!2814 (derivationStepZipper!2754 lt!2496951 (head!14145 (t!381121 s!7408))) (tail!13316 (t!381121 s!7408))))))

(assert (= (and d!2182671 c!1299997) b!7002354))

(assert (= (and d!2182671 (not c!1299997)) b!7002355))

(assert (=> d!2182671 m!7697152))

(declare-fun m!7697302 () Bool)

(assert (=> b!7002354 m!7697302))

(assert (=> b!7002355 m!7697156))

(assert (=> b!7002355 m!7697156))

(declare-fun m!7697304 () Bool)

(assert (=> b!7002355 m!7697304))

(assert (=> b!7002355 m!7697160))

(assert (=> b!7002355 m!7697304))

(assert (=> b!7002355 m!7697160))

(declare-fun m!7697306 () Bool)

(assert (=> b!7002355 m!7697306))

(assert (=> b!7002157 d!2182671))

(declare-fun d!2182673 () Bool)

(declare-fun c!1299998 () Bool)

(assert (=> d!2182673 (= c!1299998 (isEmpty!39263 (t!381121 s!7408)))))

(declare-fun e!4208977 () Bool)

(assert (=> d!2182673 (= (matchZipper!2814 lt!2496952 (t!381121 s!7408)) e!4208977)))

(declare-fun b!7002356 () Bool)

(assert (=> b!7002356 (= e!4208977 (nullableZipper!2465 lt!2496952))))

(declare-fun b!7002357 () Bool)

(assert (=> b!7002357 (= e!4208977 (matchZipper!2814 (derivationStepZipper!2754 lt!2496952 (head!14145 (t!381121 s!7408))) (tail!13316 (t!381121 s!7408))))))

(assert (= (and d!2182673 c!1299998) b!7002356))

(assert (= (and d!2182673 (not c!1299998)) b!7002357))

(assert (=> d!2182673 m!7697152))

(declare-fun m!7697308 () Bool)

(assert (=> b!7002356 m!7697308))

(assert (=> b!7002357 m!7697156))

(assert (=> b!7002357 m!7697156))

(declare-fun m!7697310 () Bool)

(assert (=> b!7002357 m!7697310))

(assert (=> b!7002357 m!7697160))

(assert (=> b!7002357 m!7697310))

(assert (=> b!7002357 m!7697160))

(declare-fun m!7697312 () Bool)

(assert (=> b!7002357 m!7697312))

(assert (=> b!7002157 d!2182673))

(declare-fun e!4208980 () Bool)

(declare-fun d!2182675 () Bool)

(assert (=> d!2182675 (= (matchZipper!2814 (set.union lt!2496951 lt!2496988) (t!381121 s!7408)) e!4208980)))

(declare-fun res!2856585 () Bool)

(assert (=> d!2182675 (=> res!2856585 e!4208980)))

(assert (=> d!2182675 (= res!2856585 (matchZipper!2814 lt!2496951 (t!381121 s!7408)))))

(declare-fun lt!2497232 () Unit!161208)

(declare-fun choose!52520 ((Set Context!12540) (Set Context!12540) List!67368) Unit!161208)

(assert (=> d!2182675 (= lt!2497232 (choose!52520 lt!2496951 lt!2496988 (t!381121 s!7408)))))

(assert (=> d!2182675 (= (lemmaZipperConcatMatchesSameAsBothZippers!1447 lt!2496951 lt!2496988 (t!381121 s!7408)) lt!2497232)))

(declare-fun b!7002360 () Bool)

(assert (=> b!7002360 (= e!4208980 (matchZipper!2814 lt!2496988 (t!381121 s!7408)))))

(assert (= (and d!2182675 (not res!2856585)) b!7002360))

(declare-fun m!7697314 () Bool)

(assert (=> d!2182675 m!7697314))

(assert (=> d!2182675 m!7697000))

(declare-fun m!7697316 () Bool)

(assert (=> d!2182675 m!7697316))

(assert (=> b!7002360 m!7696874))

(assert (=> b!7002157 d!2182675))

(assert (=> b!7002157 d!2182617))

(declare-fun d!2182677 () Bool)

(declare-fun c!1299999 () Bool)

(assert (=> d!2182677 (= c!1299999 (isEmpty!39263 (t!381121 s!7408)))))

(declare-fun e!4208981 () Bool)

(assert (=> d!2182677 (= (matchZipper!2814 lt!2497003 (t!381121 s!7408)) e!4208981)))

(declare-fun b!7002361 () Bool)

(assert (=> b!7002361 (= e!4208981 (nullableZipper!2465 lt!2497003))))

(declare-fun b!7002362 () Bool)

(assert (=> b!7002362 (= e!4208981 (matchZipper!2814 (derivationStepZipper!2754 lt!2497003 (head!14145 (t!381121 s!7408))) (tail!13316 (t!381121 s!7408))))))

(assert (= (and d!2182677 c!1299999) b!7002361))

(assert (= (and d!2182677 (not c!1299999)) b!7002362))

(assert (=> d!2182677 m!7697152))

(declare-fun m!7697318 () Bool)

(assert (=> b!7002361 m!7697318))

(assert (=> b!7002362 m!7697156))

(assert (=> b!7002362 m!7697156))

(declare-fun m!7697320 () Bool)

(assert (=> b!7002362 m!7697320))

(assert (=> b!7002362 m!7697160))

(assert (=> b!7002362 m!7697320))

(assert (=> b!7002362 m!7697160))

(declare-fun m!7697322 () Bool)

(assert (=> b!7002362 m!7697322))

(assert (=> b!7002157 d!2182677))

(declare-fun d!2182679 () Bool)

(declare-fun c!1300000 () Bool)

(assert (=> d!2182679 (= c!1300000 (isEmpty!39263 s!7408))))

(declare-fun e!4208982 () Bool)

(assert (=> d!2182679 (= (matchZipper!2814 lt!2496991 s!7408) e!4208982)))

(declare-fun b!7002363 () Bool)

(assert (=> b!7002363 (= e!4208982 (nullableZipper!2465 lt!2496991))))

(declare-fun b!7002364 () Bool)

(assert (=> b!7002364 (= e!4208982 (matchZipper!2814 (derivationStepZipper!2754 lt!2496991 (head!14145 s!7408)) (tail!13316 s!7408)))))

(assert (= (and d!2182679 c!1300000) b!7002363))

(assert (= (and d!2182679 (not c!1300000)) b!7002364))

(assert (=> d!2182679 m!7697184))

(declare-fun m!7697324 () Bool)

(assert (=> b!7002363 m!7697324))

(assert (=> b!7002364 m!7697188))

(assert (=> b!7002364 m!7697188))

(declare-fun m!7697326 () Bool)

(assert (=> b!7002364 m!7697326))

(assert (=> b!7002364 m!7697192))

(assert (=> b!7002364 m!7697326))

(assert (=> b!7002364 m!7697192))

(declare-fun m!7697328 () Bool)

(assert (=> b!7002364 m!7697328))

(assert (=> start!673778 d!2182679))

(declare-fun bs!1864985 () Bool)

(declare-fun d!2182681 () Bool)

(assert (= bs!1864985 (and d!2182681 b!7002139)))

(declare-fun lambda!405741 () Int)

(assert (=> bs!1864985 (= lambda!405741 lambda!405660)))

(assert (=> d!2182681 true))

(assert (=> d!2182681 (= (appendTo!395 z1!570 ct2!306) (map!15558 z1!570 lambda!405741))))

(declare-fun bs!1864986 () Bool)

(assert (= bs!1864986 d!2182681))

(declare-fun m!7697330 () Bool)

(assert (=> bs!1864986 m!7697330))

(assert (=> start!673778 d!2182681))

(declare-fun bs!1864987 () Bool)

(declare-fun d!2182683 () Bool)

(assert (= bs!1864987 (and d!2182683 b!7002139)))

(declare-fun lambda!405744 () Int)

(assert (=> bs!1864987 (= lambda!405744 lambda!405661)))

(assert (=> d!2182683 (= (inv!86045 ct2!306) (forall!16189 (exprs!6770 ct2!306) lambda!405744))))

(declare-fun bs!1864988 () Bool)

(assert (= bs!1864988 d!2182683))

(declare-fun m!7697332 () Bool)

(assert (=> bs!1864988 m!7697332))

(assert (=> start!673778 d!2182683))

(declare-fun d!2182685 () Bool)

(assert (=> d!2182685 (= (isEmpty!39263 (_1!37250 lt!2496946)) (is-Nil!67244 (_1!37250 lt!2496946)))))

(assert (=> b!7002154 d!2182685))

(declare-fun d!2182687 () Bool)

(declare-fun c!1300002 () Bool)

(assert (=> d!2182687 (= c!1300002 (isEmpty!39263 (_2!37250 lt!2496946)))))

(declare-fun e!4208983 () Bool)

(assert (=> d!2182687 (= (matchZipper!2814 lt!2496949 (_2!37250 lt!2496946)) e!4208983)))

(declare-fun b!7002365 () Bool)

(assert (=> b!7002365 (= e!4208983 (nullableZipper!2465 lt!2496949))))

(declare-fun b!7002366 () Bool)

(assert (=> b!7002366 (= e!4208983 (matchZipper!2814 (derivationStepZipper!2754 lt!2496949 (head!14145 (_2!37250 lt!2496946))) (tail!13316 (_2!37250 lt!2496946))))))

(assert (= (and d!2182687 c!1300002) b!7002365))

(assert (= (and d!2182687 (not c!1300002)) b!7002366))

(declare-fun m!7697334 () Bool)

(assert (=> d!2182687 m!7697334))

(declare-fun m!7697336 () Bool)

(assert (=> b!7002365 m!7697336))

(declare-fun m!7697338 () Bool)

(assert (=> b!7002366 m!7697338))

(assert (=> b!7002366 m!7697338))

(declare-fun m!7697340 () Bool)

(assert (=> b!7002366 m!7697340))

(declare-fun m!7697342 () Bool)

(assert (=> b!7002366 m!7697342))

(assert (=> b!7002366 m!7697340))

(assert (=> b!7002366 m!7697342))

(declare-fun m!7697344 () Bool)

(assert (=> b!7002366 m!7697344))

(assert (=> b!7002155 d!2182687))

(assert (=> b!7002160 d!2182659))

(assert (=> b!7002141 d!2182641))

(declare-fun b!7002389 () Bool)

(declare-fun e!4208999 () (Set Context!12540))

(declare-fun call!635818 () (Set Context!12540))

(declare-fun call!635820 () (Set Context!12540))

(assert (=> b!7002389 (= e!4208999 (set.union call!635818 call!635820))))

(declare-fun bm!635813 () Bool)

(declare-fun call!635822 () (Set Context!12540))

(assert (=> bm!635813 (= call!635820 call!635822)))

(declare-fun b!7002390 () Bool)

(declare-fun e!4209000 () (Set Context!12540))

(declare-fun call!635823 () (Set Context!12540))

(assert (=> b!7002390 (= e!4209000 call!635823)))

(declare-fun b!7002391 () Bool)

(declare-fun c!1300016 () Bool)

(assert (=> b!7002391 (= c!1300016 (is-Star!17274 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun e!4208996 () (Set Context!12540))

(assert (=> b!7002391 (= e!4209000 e!4208996)))

(declare-fun c!1300015 () Bool)

(declare-fun call!635819 () List!67367)

(declare-fun c!1300014 () Bool)

(declare-fun bm!635814 () Bool)

(declare-fun c!1300017 () Bool)

(assert (=> bm!635814 (= call!635822 (derivationStepZipperDown!1992 (ite c!1300015 (regOne!35061 (h!73691 (exprs!6770 lt!2496986))) (ite c!1300017 (regTwo!35060 (h!73691 (exprs!6770 lt!2496986))) (ite c!1300014 (regOne!35060 (h!73691 (exprs!6770 lt!2496986))) (reg!17603 (h!73691 (exprs!6770 lt!2496986)))))) (ite (or c!1300015 c!1300017) lt!2496979 (Context!12541 call!635819)) (h!73692 s!7408)))))

(declare-fun b!7002392 () Bool)

(declare-fun e!4208998 () (Set Context!12540))

(assert (=> b!7002392 (= e!4208998 (set.insert lt!2496979 (as set.empty (Set Context!12540))))))

(declare-fun b!7002394 () Bool)

(assert (=> b!7002394 (= e!4208996 call!635823)))

(declare-fun b!7002395 () Bool)

(assert (=> b!7002395 (= e!4208996 (as set.empty (Set Context!12540)))))

(declare-fun b!7002396 () Bool)

(declare-fun e!4209001 () Bool)

(assert (=> b!7002396 (= c!1300017 e!4209001)))

(declare-fun res!2856589 () Bool)

(assert (=> b!7002396 (=> (not res!2856589) (not e!4209001))))

(assert (=> b!7002396 (= res!2856589 (is-Concat!26119 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun e!4208997 () (Set Context!12540))

(assert (=> b!7002396 (= e!4208997 e!4208999)))

(declare-fun bm!635815 () Bool)

(declare-fun call!635821 () List!67367)

(assert (=> bm!635815 (= call!635818 (derivationStepZipperDown!1992 (ite c!1300015 (regTwo!35061 (h!73691 (exprs!6770 lt!2496986))) (regOne!35060 (h!73691 (exprs!6770 lt!2496986)))) (ite c!1300015 lt!2496979 (Context!12541 call!635821)) (h!73692 s!7408)))))

(declare-fun b!7002397 () Bool)

(assert (=> b!7002397 (= e!4209001 (nullable!7034 (regOne!35060 (h!73691 (exprs!6770 lt!2496986)))))))

(declare-fun bm!635816 () Bool)

(assert (=> bm!635816 (= call!635819 call!635821)))

(declare-fun bm!635817 () Bool)

(assert (=> bm!635817 (= call!635823 call!635820)))

(declare-fun b!7002398 () Bool)

(assert (=> b!7002398 (= e!4208998 e!4208997)))

(assert (=> b!7002398 (= c!1300015 (is-Union!17274 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun bm!635818 () Bool)

(declare-fun $colon$colon!2508 (List!67367 Regex!17274) List!67367)

(assert (=> bm!635818 (= call!635821 ($colon$colon!2508 (exprs!6770 lt!2496979) (ite (or c!1300017 c!1300014) (regTwo!35060 (h!73691 (exprs!6770 lt!2496986))) (h!73691 (exprs!6770 lt!2496986)))))))

(declare-fun b!7002399 () Bool)

(assert (=> b!7002399 (= e!4208999 e!4209000)))

(assert (=> b!7002399 (= c!1300014 (is-Concat!26119 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun d!2182689 () Bool)

(declare-fun c!1300013 () Bool)

(assert (=> d!2182689 (= c!1300013 (and (is-ElementMatch!17274 (h!73691 (exprs!6770 lt!2496986))) (= (c!1299946 (h!73691 (exprs!6770 lt!2496986))) (h!73692 s!7408))))))

(assert (=> d!2182689 (= (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496986)) lt!2496979 (h!73692 s!7408)) e!4208998)))

(declare-fun b!7002393 () Bool)

(assert (=> b!7002393 (= e!4208997 (set.union call!635822 call!635818))))

(assert (= (and d!2182689 c!1300013) b!7002392))

(assert (= (and d!2182689 (not c!1300013)) b!7002398))

(assert (= (and b!7002398 c!1300015) b!7002393))

(assert (= (and b!7002398 (not c!1300015)) b!7002396))

(assert (= (and b!7002396 res!2856589) b!7002397))

(assert (= (and b!7002396 c!1300017) b!7002389))

(assert (= (and b!7002396 (not c!1300017)) b!7002399))

(assert (= (and b!7002399 c!1300014) b!7002390))

(assert (= (and b!7002399 (not c!1300014)) b!7002391))

(assert (= (and b!7002391 c!1300016) b!7002394))

(assert (= (and b!7002391 (not c!1300016)) b!7002395))

(assert (= (or b!7002390 b!7002394) bm!635816))

(assert (= (or b!7002390 b!7002394) bm!635817))

(assert (= (or b!7002389 bm!635817) bm!635813))

(assert (= (or b!7002389 bm!635816) bm!635818))

(assert (= (or b!7002393 bm!635813) bm!635814))

(assert (= (or b!7002393 b!7002389) bm!635815))

(declare-fun m!7697346 () Bool)

(assert (=> bm!635815 m!7697346))

(declare-fun m!7697348 () Bool)

(assert (=> bm!635818 m!7697348))

(declare-fun m!7697350 () Bool)

(assert (=> b!7002397 m!7697350))

(assert (=> b!7002392 m!7696898))

(declare-fun m!7697352 () Bool)

(assert (=> bm!635814 m!7697352))

(assert (=> b!7002141 d!2182689))

(declare-fun b!7002418 () Bool)

(declare-fun e!4209014 () Bool)

(assert (=> b!7002418 (= e!4209014 (matchZipper!2814 lt!2496949 s!7408))))

(declare-fun b!7002419 () Bool)

(declare-fun res!2856602 () Bool)

(declare-fun e!4209013 () Bool)

(assert (=> b!7002419 (=> (not res!2856602) (not e!4209013))))

(declare-fun lt!2497241 () Option!16779)

(assert (=> b!7002419 (= res!2856602 (matchZipper!2814 lt!2496949 (_2!37250 (get!23581 lt!2497241))))))

(declare-fun b!7002420 () Bool)

(declare-fun e!4209016 () Option!16779)

(declare-fun e!4209015 () Option!16779)

(assert (=> b!7002420 (= e!4209016 e!4209015)))

(declare-fun c!1300023 () Bool)

(assert (=> b!7002420 (= c!1300023 (is-Nil!67244 s!7408))))

(declare-fun b!7002421 () Bool)

(declare-fun res!2856603 () Bool)

(assert (=> b!7002421 (=> (not res!2856603) (not e!4209013))))

(assert (=> b!7002421 (= res!2856603 (matchZipper!2814 lt!2496971 (_1!37250 (get!23581 lt!2497241))))))

(declare-fun b!7002422 () Bool)

(assert (=> b!7002422 (= e!4209015 None!16778)))

(declare-fun b!7002424 () Bool)

(declare-fun e!4209012 () Bool)

(assert (=> b!7002424 (= e!4209012 (not (isDefined!13480 lt!2497241)))))

(declare-fun b!7002425 () Bool)

(assert (=> b!7002425 (= e!4209013 (= (++!15250 (_1!37250 (get!23581 lt!2497241)) (_2!37250 (get!23581 lt!2497241))) s!7408))))

(declare-fun b!7002426 () Bool)

(assert (=> b!7002426 (= e!4209016 (Some!16778 (tuple2!67895 Nil!67244 s!7408)))))

(declare-fun b!7002423 () Bool)

(declare-fun lt!2497242 () Unit!161208)

(declare-fun lt!2497243 () Unit!161208)

(assert (=> b!7002423 (= lt!2497242 lt!2497243)))

(assert (=> b!7002423 (= (++!15250 (++!15250 Nil!67244 (Cons!67244 (h!73692 s!7408) Nil!67244)) (t!381121 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2885 (List!67368 C!34818 List!67368 List!67368) Unit!161208)

(assert (=> b!7002423 (= lt!2497243 (lemmaMoveElementToOtherListKeepsConcatEq!2885 Nil!67244 (h!73692 s!7408) (t!381121 s!7408) s!7408))))

(assert (=> b!7002423 (= e!4209015 (findConcatSeparationZippers!295 lt!2496971 lt!2496949 (++!15250 Nil!67244 (Cons!67244 (h!73692 s!7408) Nil!67244)) (t!381121 s!7408) s!7408))))

(declare-fun d!2182691 () Bool)

(assert (=> d!2182691 e!4209012))

(declare-fun res!2856604 () Bool)

(assert (=> d!2182691 (=> res!2856604 e!4209012)))

(assert (=> d!2182691 (= res!2856604 e!4209013)))

(declare-fun res!2856601 () Bool)

(assert (=> d!2182691 (=> (not res!2856601) (not e!4209013))))

(assert (=> d!2182691 (= res!2856601 (isDefined!13480 lt!2497241))))

(assert (=> d!2182691 (= lt!2497241 e!4209016)))

(declare-fun c!1300022 () Bool)

(assert (=> d!2182691 (= c!1300022 e!4209014)))

(declare-fun res!2856600 () Bool)

(assert (=> d!2182691 (=> (not res!2856600) (not e!4209014))))

(assert (=> d!2182691 (= res!2856600 (matchZipper!2814 lt!2496971 Nil!67244))))

(assert (=> d!2182691 (= (++!15250 Nil!67244 s!7408) s!7408)))

(assert (=> d!2182691 (= (findConcatSeparationZippers!295 lt!2496971 lt!2496949 Nil!67244 s!7408 s!7408) lt!2497241)))

(assert (= (and d!2182691 res!2856600) b!7002418))

(assert (= (and d!2182691 c!1300022) b!7002426))

(assert (= (and d!2182691 (not c!1300022)) b!7002420))

(assert (= (and b!7002420 c!1300023) b!7002422))

(assert (= (and b!7002420 (not c!1300023)) b!7002423))

(assert (= (and d!2182691 res!2856601) b!7002421))

(assert (= (and b!7002421 res!2856603) b!7002419))

(assert (= (and b!7002419 res!2856602) b!7002425))

(assert (= (and d!2182691 (not res!2856604)) b!7002424))

(declare-fun m!7697354 () Bool)

(assert (=> d!2182691 m!7697354))

(declare-fun m!7697356 () Bool)

(assert (=> d!2182691 m!7697356))

(declare-fun m!7697358 () Bool)

(assert (=> d!2182691 m!7697358))

(declare-fun m!7697360 () Bool)

(assert (=> b!7002425 m!7697360))

(declare-fun m!7697362 () Bool)

(assert (=> b!7002425 m!7697362))

(assert (=> b!7002421 m!7697360))

(declare-fun m!7697364 () Bool)

(assert (=> b!7002421 m!7697364))

(declare-fun m!7697366 () Bool)

(assert (=> b!7002423 m!7697366))

(assert (=> b!7002423 m!7697366))

(declare-fun m!7697368 () Bool)

(assert (=> b!7002423 m!7697368))

(declare-fun m!7697370 () Bool)

(assert (=> b!7002423 m!7697370))

(assert (=> b!7002423 m!7697366))

(declare-fun m!7697372 () Bool)

(assert (=> b!7002423 m!7697372))

(assert (=> b!7002419 m!7697360))

(declare-fun m!7697374 () Bool)

(assert (=> b!7002419 m!7697374))

(assert (=> b!7002424 m!7697354))

(declare-fun m!7697376 () Bool)

(assert (=> b!7002418 m!7697376))

(assert (=> b!7002161 d!2182691))

(declare-fun d!2182693 () Bool)

(declare-fun c!1300024 () Bool)

(assert (=> d!2182693 (= c!1300024 (isEmpty!39263 (_1!37250 lt!2496946)))))

(declare-fun e!4209017 () Bool)

(assert (=> d!2182693 (= (matchZipper!2814 lt!2496971 (_1!37250 lt!2496946)) e!4209017)))

(declare-fun b!7002427 () Bool)

(assert (=> b!7002427 (= e!4209017 (nullableZipper!2465 lt!2496971))))

(declare-fun b!7002428 () Bool)

(assert (=> b!7002428 (= e!4209017 (matchZipper!2814 (derivationStepZipper!2754 lt!2496971 (head!14145 (_1!37250 lt!2496946))) (tail!13316 (_1!37250 lt!2496946))))))

(assert (= (and d!2182693 c!1300024) b!7002427))

(assert (= (and d!2182693 (not c!1300024)) b!7002428))

(assert (=> d!2182693 m!7696992))

(declare-fun m!7697378 () Bool)

(assert (=> b!7002427 m!7697378))

(assert (=> b!7002428 m!7696950))

(assert (=> b!7002428 m!7696950))

(declare-fun m!7697380 () Bool)

(assert (=> b!7002428 m!7697380))

(assert (=> b!7002428 m!7696916))

(assert (=> b!7002428 m!7697380))

(assert (=> b!7002428 m!7696916))

(declare-fun m!7697382 () Bool)

(assert (=> b!7002428 m!7697382))

(assert (=> b!7002161 d!2182693))

(declare-fun d!2182695 () Bool)

(assert (=> d!2182695 (isDefined!13480 (findConcatSeparationZippers!295 lt!2496971 (set.insert ct2!306 (as set.empty (Set Context!12540))) Nil!67244 s!7408 s!7408))))

(declare-fun lt!2497246 () Unit!161208)

(declare-fun choose!52521 ((Set Context!12540) Context!12540 List!67368) Unit!161208)

(assert (=> d!2182695 (= lt!2497246 (choose!52521 lt!2496971 ct2!306 s!7408))))

(assert (=> d!2182695 (matchZipper!2814 (appendTo!395 lt!2496971 ct2!306) s!7408)))

(assert (=> d!2182695 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!295 lt!2496971 ct2!306 s!7408) lt!2497246)))

(declare-fun bs!1864989 () Bool)

(assert (= bs!1864989 d!2182695))

(assert (=> bs!1864989 m!7696936))

(assert (=> bs!1864989 m!7696936))

(declare-fun m!7697384 () Bool)

(assert (=> bs!1864989 m!7697384))

(declare-fun m!7697386 () Bool)

(assert (=> bs!1864989 m!7697386))

(declare-fun m!7697388 () Bool)

(assert (=> bs!1864989 m!7697388))

(assert (=> bs!1864989 m!7697384))

(declare-fun m!7697390 () Bool)

(assert (=> bs!1864989 m!7697390))

(assert (=> bs!1864989 m!7697386))

(declare-fun m!7697392 () Bool)

(assert (=> bs!1864989 m!7697392))

(assert (=> b!7002161 d!2182695))

(declare-fun d!2182699 () Bool)

(assert (=> d!2182699 (= (get!23581 lt!2496953) (v!53056 lt!2496953))))

(assert (=> b!7002161 d!2182699))

(declare-fun d!2182701 () Bool)

(declare-fun isEmpty!39267 (Option!16779) Bool)

(assert (=> d!2182701 (= (isDefined!13480 lt!2496953) (not (isEmpty!39267 lt!2496953)))))

(declare-fun bs!1864990 () Bool)

(assert (= bs!1864990 d!2182701))

(declare-fun m!7697394 () Bool)

(assert (=> bs!1864990 m!7697394))

(assert (=> b!7002161 d!2182701))

(declare-fun b!7002429 () Bool)

(declare-fun e!4209021 () (Set Context!12540))

(declare-fun call!635824 () (Set Context!12540))

(declare-fun call!635826 () (Set Context!12540))

(assert (=> b!7002429 (= e!4209021 (set.union call!635824 call!635826))))

(declare-fun bm!635819 () Bool)

(declare-fun call!635828 () (Set Context!12540))

(assert (=> bm!635819 (= call!635826 call!635828)))

(declare-fun b!7002430 () Bool)

(declare-fun e!4209022 () (Set Context!12540))

(declare-fun call!635829 () (Set Context!12540))

(assert (=> b!7002430 (= e!4209022 call!635829)))

(declare-fun b!7002431 () Bool)

(declare-fun c!1300028 () Bool)

(assert (=> b!7002431 (= c!1300028 (is-Star!17274 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun e!4209018 () (Set Context!12540))

(assert (=> b!7002431 (= e!4209022 e!4209018)))

(declare-fun call!635825 () List!67367)

(declare-fun c!1300029 () Bool)

(declare-fun c!1300027 () Bool)

(declare-fun bm!635820 () Bool)

(declare-fun c!1300026 () Bool)

(assert (=> bm!635820 (= call!635828 (derivationStepZipperDown!1992 (ite c!1300027 (regOne!35061 (h!73691 (exprs!6770 lt!2496986))) (ite c!1300029 (regTwo!35060 (h!73691 (exprs!6770 lt!2496986))) (ite c!1300026 (regOne!35060 (h!73691 (exprs!6770 lt!2496986))) (reg!17603 (h!73691 (exprs!6770 lt!2496986)))))) (ite (or c!1300027 c!1300029) lt!2496995 (Context!12541 call!635825)) (h!73692 s!7408)))))

(declare-fun b!7002432 () Bool)

(declare-fun e!4209020 () (Set Context!12540))

(assert (=> b!7002432 (= e!4209020 (set.insert lt!2496995 (as set.empty (Set Context!12540))))))

(declare-fun b!7002434 () Bool)

(assert (=> b!7002434 (= e!4209018 call!635829)))

(declare-fun b!7002435 () Bool)

(assert (=> b!7002435 (= e!4209018 (as set.empty (Set Context!12540)))))

(declare-fun b!7002436 () Bool)

(declare-fun e!4209023 () Bool)

(assert (=> b!7002436 (= c!1300029 e!4209023)))

(declare-fun res!2856605 () Bool)

(assert (=> b!7002436 (=> (not res!2856605) (not e!4209023))))

(assert (=> b!7002436 (= res!2856605 (is-Concat!26119 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun e!4209019 () (Set Context!12540))

(assert (=> b!7002436 (= e!4209019 e!4209021)))

(declare-fun bm!635821 () Bool)

(declare-fun call!635827 () List!67367)

(assert (=> bm!635821 (= call!635824 (derivationStepZipperDown!1992 (ite c!1300027 (regTwo!35061 (h!73691 (exprs!6770 lt!2496986))) (regOne!35060 (h!73691 (exprs!6770 lt!2496986)))) (ite c!1300027 lt!2496995 (Context!12541 call!635827)) (h!73692 s!7408)))))

(declare-fun b!7002437 () Bool)

(assert (=> b!7002437 (= e!4209023 (nullable!7034 (regOne!35060 (h!73691 (exprs!6770 lt!2496986)))))))

(declare-fun bm!635822 () Bool)

(assert (=> bm!635822 (= call!635825 call!635827)))

(declare-fun bm!635823 () Bool)

(assert (=> bm!635823 (= call!635829 call!635826)))

(declare-fun b!7002438 () Bool)

(assert (=> b!7002438 (= e!4209020 e!4209019)))

(assert (=> b!7002438 (= c!1300027 (is-Union!17274 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun bm!635824 () Bool)

(assert (=> bm!635824 (= call!635827 ($colon$colon!2508 (exprs!6770 lt!2496995) (ite (or c!1300029 c!1300026) (regTwo!35060 (h!73691 (exprs!6770 lt!2496986))) (h!73691 (exprs!6770 lt!2496986)))))))

(declare-fun b!7002439 () Bool)

(assert (=> b!7002439 (= e!4209021 e!4209022)))

(assert (=> b!7002439 (= c!1300026 (is-Concat!26119 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun d!2182703 () Bool)

(declare-fun c!1300025 () Bool)

(assert (=> d!2182703 (= c!1300025 (and (is-ElementMatch!17274 (h!73691 (exprs!6770 lt!2496986))) (= (c!1299946 (h!73691 (exprs!6770 lt!2496986))) (h!73692 s!7408))))))

(assert (=> d!2182703 (= (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496986)) lt!2496995 (h!73692 s!7408)) e!4209020)))

(declare-fun b!7002433 () Bool)

(assert (=> b!7002433 (= e!4209019 (set.union call!635828 call!635824))))

(assert (= (and d!2182703 c!1300025) b!7002432))

(assert (= (and d!2182703 (not c!1300025)) b!7002438))

(assert (= (and b!7002438 c!1300027) b!7002433))

(assert (= (and b!7002438 (not c!1300027)) b!7002436))

(assert (= (and b!7002436 res!2856605) b!7002437))

(assert (= (and b!7002436 c!1300029) b!7002429))

(assert (= (and b!7002436 (not c!1300029)) b!7002439))

(assert (= (and b!7002439 c!1300026) b!7002430))

(assert (= (and b!7002439 (not c!1300026)) b!7002431))

(assert (= (and b!7002431 c!1300028) b!7002434))

(assert (= (and b!7002431 (not c!1300028)) b!7002435))

(assert (= (or b!7002430 b!7002434) bm!635822))

(assert (= (or b!7002430 b!7002434) bm!635823))

(assert (= (or b!7002429 bm!635823) bm!635819))

(assert (= (or b!7002429 bm!635822) bm!635824))

(assert (= (or b!7002433 bm!635819) bm!635820))

(assert (= (or b!7002433 b!7002429) bm!635821))

(declare-fun m!7697396 () Bool)

(assert (=> bm!635821 m!7697396))

(declare-fun m!7697398 () Bool)

(assert (=> bm!635824 m!7697398))

(assert (=> b!7002437 m!7697350))

(assert (=> b!7002432 m!7696978))

(declare-fun m!7697400 () Bool)

(assert (=> bm!635820 m!7697400))

(assert (=> b!7002142 d!2182703))

(assert (=> b!7002142 d!2182617))

(assert (=> b!7002142 d!2182619))

(assert (=> b!7002142 d!2182649))

(declare-fun d!2182705 () Bool)

(declare-fun c!1300030 () Bool)

(assert (=> d!2182705 (= c!1300030 (isEmpty!39263 lt!2496948))))

(declare-fun e!4209024 () Bool)

(assert (=> d!2182705 (= (matchZipper!2814 lt!2496974 lt!2496948) e!4209024)))

(declare-fun b!7002440 () Bool)

(assert (=> b!7002440 (= e!4209024 (nullableZipper!2465 lt!2496974))))

(declare-fun b!7002441 () Bool)

(assert (=> b!7002441 (= e!4209024 (matchZipper!2814 (derivationStepZipper!2754 lt!2496974 (head!14145 lt!2496948)) (tail!13316 lt!2496948)))))

(assert (= (and d!2182705 c!1300030) b!7002440))

(assert (= (and d!2182705 (not c!1300030)) b!7002441))

(declare-fun m!7697402 () Bool)

(assert (=> d!2182705 m!7697402))

(declare-fun m!7697404 () Bool)

(assert (=> b!7002440 m!7697404))

(declare-fun m!7697406 () Bool)

(assert (=> b!7002441 m!7697406))

(assert (=> b!7002441 m!7697406))

(declare-fun m!7697408 () Bool)

(assert (=> b!7002441 m!7697408))

(declare-fun m!7697410 () Bool)

(assert (=> b!7002441 m!7697410))

(assert (=> b!7002441 m!7697408))

(assert (=> b!7002441 m!7697410))

(declare-fun m!7697412 () Bool)

(assert (=> b!7002441 m!7697412))

(assert (=> b!7002162 d!2182705))

(declare-fun bs!1864991 () Bool)

(declare-fun d!2182707 () Bool)

(assert (= bs!1864991 (and d!2182707 b!7002139)))

(declare-fun lambda!405745 () Int)

(assert (=> bs!1864991 (= lambda!405745 lambda!405661)))

(declare-fun bs!1864992 () Bool)

(assert (= bs!1864992 (and d!2182707 d!2182683)))

(assert (=> bs!1864992 (= lambda!405745 lambda!405744)))

(assert (=> d!2182707 (= (inv!86045 setElem!48132) (forall!16189 (exprs!6770 setElem!48132) lambda!405745))))

(declare-fun bs!1864993 () Bool)

(assert (= bs!1864993 d!2182707))

(declare-fun m!7697414 () Bool)

(assert (=> bs!1864993 m!7697414))

(assert (=> setNonEmpty!48132 d!2182707))

(declare-fun b!7002444 () Bool)

(declare-fun res!2856606 () Bool)

(declare-fun e!4209025 () Bool)

(assert (=> b!7002444 (=> (not res!2856606) (not e!4209025))))

(declare-fun lt!2497247 () List!67367)

(assert (=> b!7002444 (= res!2856606 (= (size!40943 lt!2497247) (+ (size!40943 (exprs!6770 lt!2496986)) (size!40943 (exprs!6770 ct2!306)))))))

(declare-fun d!2182709 () Bool)

(assert (=> d!2182709 e!4209025))

(declare-fun res!2856607 () Bool)

(assert (=> d!2182709 (=> (not res!2856607) (not e!4209025))))

(assert (=> d!2182709 (= res!2856607 (= (content!13322 lt!2497247) (set.union (content!13322 (exprs!6770 lt!2496986)) (content!13322 (exprs!6770 ct2!306)))))))

(declare-fun e!4209026 () List!67367)

(assert (=> d!2182709 (= lt!2497247 e!4209026)))

(declare-fun c!1300031 () Bool)

(assert (=> d!2182709 (= c!1300031 (is-Nil!67243 (exprs!6770 lt!2496986)))))

(assert (=> d!2182709 (= (++!15249 (exprs!6770 lt!2496986) (exprs!6770 ct2!306)) lt!2497247)))

(declare-fun b!7002442 () Bool)

(assert (=> b!7002442 (= e!4209026 (exprs!6770 ct2!306))))

(declare-fun b!7002445 () Bool)

(assert (=> b!7002445 (= e!4209025 (or (not (= (exprs!6770 ct2!306) Nil!67243)) (= lt!2497247 (exprs!6770 lt!2496986))))))

(declare-fun b!7002443 () Bool)

(assert (=> b!7002443 (= e!4209026 (Cons!67243 (h!73691 (exprs!6770 lt!2496986)) (++!15249 (t!381120 (exprs!6770 lt!2496986)) (exprs!6770 ct2!306))))))

(assert (= (and d!2182709 c!1300031) b!7002442))

(assert (= (and d!2182709 (not c!1300031)) b!7002443))

(assert (= (and d!2182709 res!2856607) b!7002444))

(assert (= (and b!7002444 res!2856606) b!7002445))

(declare-fun m!7697416 () Bool)

(assert (=> b!7002444 m!7697416))

(declare-fun m!7697418 () Bool)

(assert (=> b!7002444 m!7697418))

(assert (=> b!7002444 m!7697242))

(declare-fun m!7697420 () Bool)

(assert (=> d!2182709 m!7697420))

(declare-fun m!7697422 () Bool)

(assert (=> d!2182709 m!7697422))

(assert (=> d!2182709 m!7697248))

(declare-fun m!7697424 () Bool)

(assert (=> b!7002443 m!7697424))

(assert (=> b!7002139 d!2182709))

(assert (=> b!7002139 d!2182659))

(declare-fun d!2182711 () Bool)

(declare-fun e!4209029 () Bool)

(assert (=> d!2182711 e!4209029))

(declare-fun res!2856610 () Bool)

(assert (=> d!2182711 (=> (not res!2856610) (not e!4209029))))

(declare-fun lt!2497250 () Context!12540)

(assert (=> d!2182711 (= res!2856610 (= lt!2497004 (dynLambda!27012 lambda!405660 lt!2497250)))))

(declare-fun choose!52522 ((Set Context!12540) Int Context!12540) Context!12540)

(assert (=> d!2182711 (= lt!2497250 (choose!52522 z1!570 lambda!405660 lt!2497004))))

(assert (=> d!2182711 (set.member lt!2497004 (map!15558 z1!570 lambda!405660))))

(assert (=> d!2182711 (= (mapPost2!129 z1!570 lambda!405660 lt!2497004) lt!2497250)))

(declare-fun b!7002449 () Bool)

(assert (=> b!7002449 (= e!4209029 (set.member lt!2497250 z1!570))))

(assert (= (and d!2182711 res!2856610) b!7002449))

(declare-fun b_lambda!263793 () Bool)

(assert (=> (not b_lambda!263793) (not d!2182711)))

(declare-fun m!7697426 () Bool)

(assert (=> d!2182711 m!7697426))

(declare-fun m!7697428 () Bool)

(assert (=> d!2182711 m!7697428))

(declare-fun m!7697430 () Bool)

(assert (=> d!2182711 m!7697430))

(declare-fun m!7697432 () Bool)

(assert (=> d!2182711 m!7697432))

(declare-fun m!7697434 () Bool)

(assert (=> b!7002449 m!7697434))

(assert (=> b!7002139 d!2182711))

(assert (=> b!7002159 d!2182615))

(declare-fun d!2182713 () Bool)

(assert (=> d!2182713 (= (head!14145 (_1!37250 lt!2496946)) (h!73692 (_1!37250 lt!2496946)))))

(assert (=> b!7002140 d!2182713))

(declare-fun bs!1864994 () Bool)

(declare-fun d!2182715 () Bool)

(assert (= bs!1864994 (and d!2182715 b!7002149)))

(declare-fun lambda!405746 () Int)

(assert (=> bs!1864994 (= (= lt!2496976 (h!73692 s!7408)) (= lambda!405746 lambda!405662))))

(declare-fun bs!1864995 () Bool)

(assert (= bs!1864995 (and d!2182715 d!2182621)))

(assert (=> bs!1864995 (= (= lt!2496976 (h!73692 s!7408)) (= lambda!405746 lambda!405729))))

(declare-fun bs!1864996 () Bool)

(assert (= bs!1864996 (and d!2182715 d!2182651)))

(assert (=> bs!1864996 (= (= lt!2496976 (h!73692 s!7408)) (= lambda!405746 lambda!405730))))

(assert (=> d!2182715 true))

(assert (=> d!2182715 (= (derivationStepZipper!2754 lt!2496971 lt!2496976) (flatMap!2260 lt!2496971 lambda!405746))))

(declare-fun bs!1864997 () Bool)

(assert (= bs!1864997 d!2182715))

(declare-fun m!7697436 () Bool)

(assert (=> bs!1864997 m!7697436))

(assert (=> b!7002140 d!2182715))

(assert (=> b!7002140 d!2182629))

(declare-fun call!635830 () (Set Context!12540))

(declare-fun e!4209036 () (Set Context!12540))

(declare-fun b!7002454 () Bool)

(assert (=> b!7002454 (= e!4209036 (set.union call!635830 (derivationStepZipperUp!1924 (Context!12541 (t!381120 (exprs!6770 lt!2496979))) lt!2496976)))))

(declare-fun b!7002455 () Bool)

(declare-fun e!4209034 () (Set Context!12540))

(assert (=> b!7002455 (= e!4209036 e!4209034)))

(declare-fun c!1300034 () Bool)

(assert (=> b!7002455 (= c!1300034 (is-Cons!67243 (exprs!6770 lt!2496979)))))

(declare-fun b!7002456 () Bool)

(declare-fun e!4209035 () Bool)

(assert (=> b!7002456 (= e!4209035 (nullable!7034 (h!73691 (exprs!6770 lt!2496979))))))

(declare-fun bm!635825 () Bool)

(assert (=> bm!635825 (= call!635830 (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496979)) (Context!12541 (t!381120 (exprs!6770 lt!2496979))) lt!2496976))))

(declare-fun d!2182717 () Bool)

(declare-fun c!1300035 () Bool)

(assert (=> d!2182717 (= c!1300035 e!4209035)))

(declare-fun res!2856613 () Bool)

(assert (=> d!2182717 (=> (not res!2856613) (not e!4209035))))

(assert (=> d!2182717 (= res!2856613 (is-Cons!67243 (exprs!6770 lt!2496979)))))

(assert (=> d!2182717 (= (derivationStepZipperUp!1924 lt!2496979 lt!2496976) e!4209036)))

(declare-fun b!7002459 () Bool)

(assert (=> b!7002459 (= e!4209034 (as set.empty (Set Context!12540)))))

(declare-fun b!7002460 () Bool)

(assert (=> b!7002460 (= e!4209034 call!635830)))

(assert (= (and d!2182717 res!2856613) b!7002456))

(assert (= (and d!2182717 c!1300035) b!7002454))

(assert (= (and d!2182717 (not c!1300035)) b!7002455))

(assert (= (and b!7002455 c!1300034) b!7002460))

(assert (= (and b!7002455 (not c!1300034)) b!7002459))

(assert (= (or b!7002454 b!7002460) bm!635825))

(declare-fun m!7697438 () Bool)

(assert (=> b!7002454 m!7697438))

(assert (=> b!7002456 m!7697222))

(declare-fun m!7697440 () Bool)

(assert (=> bm!635825 m!7697440))

(assert (=> b!7002140 d!2182717))

(assert (=> b!7002140 d!2182647))

(assert (=> b!7002140 d!2182641))

(declare-fun bs!1864998 () Bool)

(declare-fun d!2182719 () Bool)

(assert (= bs!1864998 (and d!2182719 b!7002149)))

(declare-fun lambda!405747 () Int)

(assert (=> bs!1864998 (= lambda!405747 lambda!405662)))

(declare-fun bs!1864999 () Bool)

(assert (= bs!1864999 (and d!2182719 d!2182621)))

(assert (=> bs!1864999 (= lambda!405747 lambda!405729)))

(declare-fun bs!1865000 () Bool)

(assert (= bs!1865000 (and d!2182719 d!2182651)))

(assert (=> bs!1865000 (= lambda!405747 lambda!405730)))

(declare-fun bs!1865001 () Bool)

(assert (= bs!1865001 (and d!2182719 d!2182715)))

(assert (=> bs!1865001 (= (= (h!73692 s!7408) lt!2496976) (= lambda!405747 lambda!405746))))

(assert (=> d!2182719 true))

(assert (=> d!2182719 (= (derivationStepZipper!2754 lt!2496987 (h!73692 s!7408)) (flatMap!2260 lt!2496987 lambda!405747))))

(declare-fun bs!1865002 () Bool)

(assert (= bs!1865002 d!2182719))

(declare-fun m!7697442 () Bool)

(assert (=> bs!1865002 m!7697442))

(assert (=> b!7002165 d!2182719))

(declare-fun call!635831 () (Set Context!12540))

(declare-fun e!4209039 () (Set Context!12540))

(declare-fun b!7002463 () Bool)

(assert (=> b!7002463 (= e!4209039 (set.union call!635831 (derivationStepZipperUp!1924 (Context!12541 (t!381120 (exprs!6770 lt!2496986))) (h!73692 s!7408))))))

(declare-fun b!7002464 () Bool)

(declare-fun e!4209037 () (Set Context!12540))

(assert (=> b!7002464 (= e!4209039 e!4209037)))

(declare-fun c!1300036 () Bool)

(assert (=> b!7002464 (= c!1300036 (is-Cons!67243 (exprs!6770 lt!2496986)))))

(declare-fun b!7002465 () Bool)

(declare-fun e!4209038 () Bool)

(assert (=> b!7002465 (= e!4209038 (nullable!7034 (h!73691 (exprs!6770 lt!2496986))))))

(declare-fun bm!635826 () Bool)

(assert (=> bm!635826 (= call!635831 (derivationStepZipperDown!1992 (h!73691 (exprs!6770 lt!2496986)) (Context!12541 (t!381120 (exprs!6770 lt!2496986))) (h!73692 s!7408)))))

(declare-fun d!2182721 () Bool)

(declare-fun c!1300037 () Bool)

(assert (=> d!2182721 (= c!1300037 e!4209038)))

(declare-fun res!2856616 () Bool)

(assert (=> d!2182721 (=> (not res!2856616) (not e!4209038))))

(assert (=> d!2182721 (= res!2856616 (is-Cons!67243 (exprs!6770 lt!2496986)))))

(assert (=> d!2182721 (= (derivationStepZipperUp!1924 lt!2496986 (h!73692 s!7408)) e!4209039)))

(declare-fun b!7002466 () Bool)

(assert (=> b!7002466 (= e!4209037 (as set.empty (Set Context!12540)))))

(declare-fun b!7002467 () Bool)

(assert (=> b!7002467 (= e!4209037 call!635831)))

(assert (= (and d!2182721 res!2856616) b!7002465))

(assert (= (and d!2182721 c!1300037) b!7002463))

(assert (= (and d!2182721 (not c!1300037)) b!7002464))

(assert (= (and b!7002464 c!1300036) b!7002467))

(assert (= (and b!7002464 (not c!1300036)) b!7002466))

(assert (= (or b!7002463 b!7002467) bm!635826))

(declare-fun m!7697444 () Bool)

(assert (=> b!7002463 m!7697444))

(assert (=> b!7002465 m!7696880))

(declare-fun m!7697446 () Bool)

(assert (=> bm!635826 m!7697446))

(assert (=> b!7002165 d!2182721))

(declare-fun d!2182723 () Bool)

(assert (=> d!2182723 (= (flatMap!2260 lt!2496987 lambda!405662) (choose!52513 lt!2496987 lambda!405662))))

(declare-fun bs!1865003 () Bool)

(assert (= bs!1865003 d!2182723))

(declare-fun m!7697448 () Bool)

(assert (=> bs!1865003 m!7697448))

(assert (=> b!7002165 d!2182723))

(declare-fun d!2182725 () Bool)

(assert (=> d!2182725 (= (flatMap!2260 lt!2496987 lambda!405662) (dynLambda!27011 lambda!405662 lt!2496986))))

(declare-fun lt!2497253 () Unit!161208)

(assert (=> d!2182725 (= lt!2497253 (choose!52514 lt!2496987 lt!2496986 lambda!405662))))

(assert (=> d!2182725 (= lt!2496987 (set.insert lt!2496986 (as set.empty (Set Context!12540))))))

(assert (=> d!2182725 (= (lemmaFlatMapOnSingletonSet!1775 lt!2496987 lt!2496986 lambda!405662) lt!2497253)))

(declare-fun b_lambda!263795 () Bool)

(assert (=> (not b_lambda!263795) (not d!2182725)))

(declare-fun bs!1865004 () Bool)

(assert (= bs!1865004 d!2182725))

(assert (=> bs!1865004 m!7696964))

(declare-fun m!7697450 () Bool)

(assert (=> bs!1865004 m!7697450))

(declare-fun m!7697452 () Bool)

(assert (=> bs!1865004 m!7697452))

(assert (=> bs!1865004 m!7696960))

(assert (=> b!7002165 d!2182725))

(declare-fun b!7002480 () Bool)

(declare-fun e!4209047 () List!67368)

(assert (=> b!7002480 (= e!4209047 (_2!37250 lt!2496946))))

(declare-fun b!7002482 () Bool)

(declare-fun res!2856623 () Bool)

(declare-fun e!4209046 () Bool)

(assert (=> b!7002482 (=> (not res!2856623) (not e!4209046))))

(declare-fun lt!2497257 () List!67368)

(declare-fun size!40944 (List!67368) Int)

(assert (=> b!7002482 (= res!2856623 (= (size!40944 lt!2497257) (+ (size!40944 (_1!37250 lt!2496946)) (size!40944 (_2!37250 lt!2496946)))))))

(declare-fun b!7002483 () Bool)

(assert (=> b!7002483 (= e!4209046 (or (not (= (_2!37250 lt!2496946) Nil!67244)) (= lt!2497257 (_1!37250 lt!2496946))))))

(declare-fun d!2182727 () Bool)

(assert (=> d!2182727 e!4209046))

(declare-fun res!2856624 () Bool)

(assert (=> d!2182727 (=> (not res!2856624) (not e!4209046))))

(declare-fun content!13323 (List!67368) (Set C!34818))

(assert (=> d!2182727 (= res!2856624 (= (content!13323 lt!2497257) (set.union (content!13323 (_1!37250 lt!2496946)) (content!13323 (_2!37250 lt!2496946)))))))

(assert (=> d!2182727 (= lt!2497257 e!4209047)))

(declare-fun c!1300041 () Bool)

(assert (=> d!2182727 (= c!1300041 (is-Nil!67244 (_1!37250 lt!2496946)))))

(assert (=> d!2182727 (= (++!15250 (_1!37250 lt!2496946) (_2!37250 lt!2496946)) lt!2497257)))

(declare-fun b!7002481 () Bool)

(assert (=> b!7002481 (= e!4209047 (Cons!67244 (h!73692 (_1!37250 lt!2496946)) (++!15250 (t!381121 (_1!37250 lt!2496946)) (_2!37250 lt!2496946))))))

(assert (= (and d!2182727 c!1300041) b!7002480))

(assert (= (and d!2182727 (not c!1300041)) b!7002481))

(assert (= (and d!2182727 res!2856624) b!7002482))

(assert (= (and b!7002482 res!2856623) b!7002483))

(declare-fun m!7697468 () Bool)

(assert (=> b!7002482 m!7697468))

(declare-fun m!7697470 () Bool)

(assert (=> b!7002482 m!7697470))

(declare-fun m!7697472 () Bool)

(assert (=> b!7002482 m!7697472))

(declare-fun m!7697474 () Bool)

(assert (=> d!2182727 m!7697474))

(declare-fun m!7697476 () Bool)

(assert (=> d!2182727 m!7697476))

(declare-fun m!7697478 () Bool)

(assert (=> d!2182727 m!7697478))

(declare-fun m!7697480 () Bool)

(assert (=> b!7002481 m!7697480))

(assert (=> b!7002166 d!2182727))

(assert (=> b!7002147 d!2182705))

(declare-fun d!2182731 () Bool)

(declare-fun lt!2497258 () Int)

(assert (=> d!2182731 (>= lt!2497258 0)))

(declare-fun e!4209048 () Int)

(assert (=> d!2182731 (= lt!2497258 e!4209048)))

(declare-fun c!1300042 () Bool)

(assert (=> d!2182731 (= c!1300042 (is-Cons!67245 (Cons!67245 lt!2496979 Nil!67245)))))

(assert (=> d!2182731 (= (zipperDepthTotal!495 (Cons!67245 lt!2496979 Nil!67245)) lt!2497258)))

(declare-fun b!7002484 () Bool)

(assert (=> b!7002484 (= e!4209048 (+ (contextDepthTotal!467 (h!73693 (Cons!67245 lt!2496979 Nil!67245))) (zipperDepthTotal!495 (t!381122 (Cons!67245 lt!2496979 Nil!67245)))))))

(declare-fun b!7002485 () Bool)

(assert (=> b!7002485 (= e!4209048 0)))

(assert (= (and d!2182731 c!1300042) b!7002484))

(assert (= (and d!2182731 (not c!1300042)) b!7002485))

(declare-fun m!7697482 () Bool)

(assert (=> b!7002484 m!7697482))

(declare-fun m!7697484 () Bool)

(assert (=> b!7002484 m!7697484))

(assert (=> b!7002143 d!2182731))

(declare-fun d!2182733 () Bool)

(assert (=> d!2182733 (= (isEmpty!39264 (exprs!6770 lt!2496986)) (is-Nil!67243 (exprs!6770 lt!2496986)))))

(assert (=> b!7002164 d!2182733))

(declare-fun d!2182735 () Bool)

(declare-fun e!4209049 () Bool)

(assert (=> d!2182735 (= (matchZipper!2814 (set.union lt!2496990 lt!2496974) lt!2496948) e!4209049)))

(declare-fun res!2856625 () Bool)

(assert (=> d!2182735 (=> res!2856625 e!4209049)))

(assert (=> d!2182735 (= res!2856625 (matchZipper!2814 lt!2496990 lt!2496948))))

(declare-fun lt!2497259 () Unit!161208)

(assert (=> d!2182735 (= lt!2497259 (choose!52520 lt!2496990 lt!2496974 lt!2496948))))

(assert (=> d!2182735 (= (lemmaZipperConcatMatchesSameAsBothZippers!1447 lt!2496990 lt!2496974 lt!2496948) lt!2497259)))

(declare-fun b!7002486 () Bool)

(assert (=> b!7002486 (= e!4209049 (matchZipper!2814 lt!2496974 lt!2496948))))

(assert (= (and d!2182735 (not res!2856625)) b!7002486))

(declare-fun m!7697486 () Bool)

(assert (=> d!2182735 m!7697486))

(assert (=> d!2182735 m!7696918))

(declare-fun m!7697488 () Bool)

(assert (=> d!2182735 m!7697488))

(assert (=> b!7002486 m!7696944))

(assert (=> b!7002144 d!2182735))

(declare-fun d!2182737 () Bool)

(declare-fun c!1300043 () Bool)

(assert (=> d!2182737 (= c!1300043 (isEmpty!39263 (_1!37250 lt!2496946)))))

(declare-fun e!4209050 () Bool)

(assert (=> d!2182737 (= (matchZipper!2814 lt!2496987 (_1!37250 lt!2496946)) e!4209050)))

(declare-fun b!7002487 () Bool)

(assert (=> b!7002487 (= e!4209050 (nullableZipper!2465 lt!2496987))))

(declare-fun b!7002488 () Bool)

(assert (=> b!7002488 (= e!4209050 (matchZipper!2814 (derivationStepZipper!2754 lt!2496987 (head!14145 (_1!37250 lt!2496946))) (tail!13316 (_1!37250 lt!2496946))))))

(assert (= (and d!2182737 c!1300043) b!7002487))

(assert (= (and d!2182737 (not c!1300043)) b!7002488))

(assert (=> d!2182737 m!7696992))

(declare-fun m!7697490 () Bool)

(assert (=> b!7002487 m!7697490))

(assert (=> b!7002488 m!7696950))

(assert (=> b!7002488 m!7696950))

(declare-fun m!7697492 () Bool)

(assert (=> b!7002488 m!7697492))

(assert (=> b!7002488 m!7696916))

(assert (=> b!7002488 m!7697492))

(assert (=> b!7002488 m!7696916))

(declare-fun m!7697494 () Bool)

(assert (=> b!7002488 m!7697494))

(assert (=> b!7002144 d!2182737))

(declare-fun d!2182739 () Bool)

(assert (=> d!2182739 (= (tail!13316 (_1!37250 lt!2496946)) (t!381121 (_1!37250 lt!2496946)))))

(assert (=> b!7002144 d!2182739))

(declare-fun d!2182741 () Bool)

(declare-fun c!1300044 () Bool)

(assert (=> d!2182741 (= c!1300044 (isEmpty!39263 lt!2496948))))

(declare-fun e!4209051 () Bool)

(assert (=> d!2182741 (= (matchZipper!2814 lt!2496990 lt!2496948) e!4209051)))

(declare-fun b!7002489 () Bool)

(assert (=> b!7002489 (= e!4209051 (nullableZipper!2465 lt!2496990))))

(declare-fun b!7002490 () Bool)

(assert (=> b!7002490 (= e!4209051 (matchZipper!2814 (derivationStepZipper!2754 lt!2496990 (head!14145 lt!2496948)) (tail!13316 lt!2496948)))))

(assert (= (and d!2182741 c!1300044) b!7002489))

(assert (= (and d!2182741 (not c!1300044)) b!7002490))

(assert (=> d!2182741 m!7697402))

(declare-fun m!7697496 () Bool)

(assert (=> b!7002489 m!7697496))

(assert (=> b!7002490 m!7697406))

(assert (=> b!7002490 m!7697406))

(declare-fun m!7697498 () Bool)

(assert (=> b!7002490 m!7697498))

(assert (=> b!7002490 m!7697410))

(assert (=> b!7002490 m!7697498))

(assert (=> b!7002490 m!7697410))

(declare-fun m!7697500 () Bool)

(assert (=> b!7002490 m!7697500))

(assert (=> b!7002144 d!2182741))

(declare-fun d!2182743 () Bool)

(declare-fun c!1300045 () Bool)

(assert (=> d!2182743 (= c!1300045 (isEmpty!39263 lt!2496948))))

(declare-fun e!4209052 () Bool)

(assert (=> d!2182743 (= (matchZipper!2814 lt!2496945 lt!2496948) e!4209052)))

(declare-fun b!7002491 () Bool)

(assert (=> b!7002491 (= e!4209052 (nullableZipper!2465 lt!2496945))))

(declare-fun b!7002492 () Bool)

(assert (=> b!7002492 (= e!4209052 (matchZipper!2814 (derivationStepZipper!2754 lt!2496945 (head!14145 lt!2496948)) (tail!13316 lt!2496948)))))

(assert (= (and d!2182743 c!1300045) b!7002491))

(assert (= (and d!2182743 (not c!1300045)) b!7002492))

(assert (=> d!2182743 m!7697402))

(declare-fun m!7697502 () Bool)

(assert (=> b!7002491 m!7697502))

(assert (=> b!7002492 m!7697406))

(assert (=> b!7002492 m!7697406))

(declare-fun m!7697504 () Bool)

(assert (=> b!7002492 m!7697504))

(assert (=> b!7002492 m!7697410))

(assert (=> b!7002492 m!7697504))

(assert (=> b!7002492 m!7697410))

(declare-fun m!7697506 () Bool)

(assert (=> b!7002492 m!7697506))

(assert (=> b!7002144 d!2182743))

(declare-fun b!7002497 () Bool)

(declare-fun e!4209055 () Bool)

(declare-fun tp!1931281 () Bool)

(declare-fun tp!1931282 () Bool)

(assert (=> b!7002497 (= e!4209055 (and tp!1931281 tp!1931282))))

(assert (=> b!7002167 (= tp!1931264 e!4209055)))

(assert (= (and b!7002167 (is-Cons!67243 (exprs!6770 ct2!306))) b!7002497))

(declare-fun condSetEmpty!48138 () Bool)

(assert (=> setNonEmpty!48132 (= condSetEmpty!48138 (= setRest!48132 (as set.empty (Set Context!12540))))))

(declare-fun setRes!48138 () Bool)

(assert (=> setNonEmpty!48132 (= tp!1931261 setRes!48138)))

(declare-fun setIsEmpty!48138 () Bool)

(assert (=> setIsEmpty!48138 setRes!48138))

(declare-fun e!4209058 () Bool)

(declare-fun setElem!48138 () Context!12540)

(declare-fun setNonEmpty!48138 () Bool)

(declare-fun tp!1931288 () Bool)

(assert (=> setNonEmpty!48138 (= setRes!48138 (and tp!1931288 (inv!86045 setElem!48138) e!4209058))))

(declare-fun setRest!48138 () (Set Context!12540))

(assert (=> setNonEmpty!48138 (= setRest!48132 (set.union (set.insert setElem!48138 (as set.empty (Set Context!12540))) setRest!48138))))

(declare-fun b!7002502 () Bool)

(declare-fun tp!1931287 () Bool)

(assert (=> b!7002502 (= e!4209058 tp!1931287)))

(assert (= (and setNonEmpty!48132 condSetEmpty!48138) setIsEmpty!48138))

(assert (= (and setNonEmpty!48132 (not condSetEmpty!48138)) setNonEmpty!48138))

(assert (= setNonEmpty!48138 b!7002502))

(declare-fun m!7697510 () Bool)

(assert (=> setNonEmpty!48138 m!7697510))

(declare-fun b!7002503 () Bool)

(declare-fun e!4209059 () Bool)

(declare-fun tp!1931289 () Bool)

(declare-fun tp!1931290 () Bool)

(assert (=> b!7002503 (= e!4209059 (and tp!1931289 tp!1931290))))

(assert (=> b!7002138 (= tp!1931263 e!4209059)))

(assert (= (and b!7002138 (is-Cons!67243 (exprs!6770 setElem!48132))) b!7002503))

(declare-fun b!7002508 () Bool)

(declare-fun e!4209062 () Bool)

(declare-fun tp!1931293 () Bool)

(assert (=> b!7002508 (= e!4209062 (and tp_is_empty!43773 tp!1931293))))

(assert (=> b!7002158 (= tp!1931262 e!4209062)))

(assert (= (and b!7002158 (is-Cons!67244 (t!381121 s!7408))) b!7002508))

(declare-fun b_lambda!263797 () Bool)

(assert (= b_lambda!263783 (or b!7002149 b_lambda!263797)))

(declare-fun bs!1865007 () Bool)

(declare-fun d!2182749 () Bool)

(assert (= bs!1865007 (and d!2182749 b!7002149)))

(assert (=> bs!1865007 (= (dynLambda!27011 lambda!405662 lt!2496995) (derivationStepZipperUp!1924 lt!2496995 (h!73692 s!7408)))))

(assert (=> bs!1865007 m!7696856))

(assert (=> d!2182625 d!2182749))

(declare-fun b_lambda!263799 () Bool)

(assert (= b_lambda!263785 (or b!7002139 b_lambda!263799)))

(declare-fun bs!1865008 () Bool)

(declare-fun d!2182751 () Bool)

(assert (= bs!1865008 (and d!2182751 b!7002139)))

(declare-fun lt!2497260 () Unit!161208)

(assert (=> bs!1865008 (= lt!2497260 (lemmaConcatPreservesForall!610 (exprs!6770 lt!2496979) (exprs!6770 ct2!306) lambda!405661))))

(assert (=> bs!1865008 (= (dynLambda!27012 lambda!405660 lt!2496979) (Context!12541 (++!15249 (exprs!6770 lt!2496979) (exprs!6770 ct2!306))))))

(declare-fun m!7697512 () Bool)

(assert (=> bs!1865008 m!7697512))

(declare-fun m!7697514 () Bool)

(assert (=> bs!1865008 m!7697514))

(assert (=> d!2182643 d!2182751))

(declare-fun b_lambda!263801 () Bool)

(assert (= b_lambda!263793 (or b!7002139 b_lambda!263801)))

(declare-fun bs!1865009 () Bool)

(declare-fun d!2182753 () Bool)

(assert (= bs!1865009 (and d!2182753 b!7002139)))

(declare-fun lt!2497261 () Unit!161208)

(assert (=> bs!1865009 (= lt!2497261 (lemmaConcatPreservesForall!610 (exprs!6770 lt!2497250) (exprs!6770 ct2!306) lambda!405661))))

(assert (=> bs!1865009 (= (dynLambda!27012 lambda!405660 lt!2497250) (Context!12541 (++!15249 (exprs!6770 lt!2497250) (exprs!6770 ct2!306))))))

(declare-fun m!7697516 () Bool)

(assert (=> bs!1865009 m!7697516))

(declare-fun m!7697518 () Bool)

(assert (=> bs!1865009 m!7697518))

(assert (=> d!2182711 d!2182753))

(declare-fun b_lambda!263803 () Bool)

(assert (= b_lambda!263791 (or b!7002170 b_lambda!263803)))

(declare-fun bs!1865010 () Bool)

(declare-fun d!2182755 () Bool)

(assert (= bs!1865010 (and d!2182755 b!7002170)))

(assert (=> bs!1865010 (= (dynLambda!27014 lambda!405659 lt!2497228) (matchZipper!2814 (set.insert lt!2497228 (as set.empty (Set Context!12540))) s!7408))))

(declare-fun m!7697520 () Bool)

(assert (=> bs!1865010 m!7697520))

(assert (=> bs!1865010 m!7697520))

(declare-fun m!7697522 () Bool)

(assert (=> bs!1865010 m!7697522))

(assert (=> d!2182667 d!2182755))

(declare-fun b_lambda!263805 () Bool)

(assert (= b_lambda!263795 (or b!7002149 b_lambda!263805)))

(declare-fun bs!1865011 () Bool)

(declare-fun d!2182757 () Bool)

(assert (= bs!1865011 (and d!2182757 b!7002149)))

(assert (=> bs!1865011 (= (dynLambda!27011 lambda!405662 lt!2496986) (derivationStepZipperUp!1924 lt!2496986 (h!73692 s!7408)))))

(assert (=> bs!1865011 m!7696962))

(assert (=> d!2182725 d!2182757))

(declare-fun b_lambda!263807 () Bool)

(assert (= b_lambda!263789 (or b!7002149 b_lambda!263807)))

(declare-fun bs!1865012 () Bool)

(declare-fun d!2182759 () Bool)

(assert (= bs!1865012 (and d!2182759 b!7002149)))

(assert (=> bs!1865012 (= (dynLambda!27011 lambda!405662 lt!2496962) (derivationStepZipperUp!1924 lt!2496962 (h!73692 s!7408)))))

(assert (=> bs!1865012 m!7696926))

(assert (=> d!2182657 d!2182759))

(declare-fun b_lambda!263809 () Bool)

(assert (= b_lambda!263787 (or b!7002149 b_lambda!263809)))

(declare-fun bs!1865013 () Bool)

(declare-fun d!2182761 () Bool)

(assert (= bs!1865013 (and d!2182761 b!7002149)))

(assert (=> bs!1865013 (= (dynLambda!27011 lambda!405662 lt!2496979) (derivationStepZipperUp!1924 lt!2496979 (h!73692 s!7408)))))

(assert (=> bs!1865013 m!7696888))

(assert (=> d!2182647 d!2182761))

(push 1)

(assert (not b_lambda!263799))

(assert (not bs!1865010))

(assert (not b!7002508))

(assert (not b!7002489))

(assert (not b!7002309))

(assert (not d!2182625))

(assert (not d!2182727))

(assert (not b!7002305))

(assert (not b!7002492))

(assert (not d!2182677))

(assert (not b!7002427))

(assert (not b!7002326))

(assert (not d!2182647))

(assert (not bs!1865013))

(assert (not b!7002418))

(assert (not b!7002428))

(assert (not d!2182623))

(assert (not b_lambda!263807))

(assert (not b!7002361))

(assert (not b!7002497))

(assert (not b!7002349))

(assert (not d!2182611))

(assert (not d!2182675))

(assert (not b!7002362))

(assert (not bm!635820))

(assert (not d!2182617))

(assert (not d!2182709))

(assert (not b!7002456))

(assert (not b!7002482))

(assert (not b!7002441))

(assert (not b!7002419))

(assert (not b!7002353))

(assert (not d!2182631))

(assert (not b!7002481))

(assert (not d!2182657))

(assert (not d!2182615))

(assert (not bm!635824))

(assert (not b!7002355))

(assert (not b!7002314))

(assert (not d!2182737))

(assert (not d!2182667))

(assert (not b_lambda!263797))

(assert (not b!7002364))

(assert (not d!2182659))

(assert (not b!7002440))

(assert (not d!2182629))

(assert (not b!7002339))

(assert (not bm!635814))

(assert (not b!7002354))

(assert (not b_lambda!263803))

(assert (not d!2182715))

(assert (not b!7002287))

(assert (not bm!635826))

(assert (not d!2182653))

(assert (not d!2182671))

(assert (not b!7002484))

(assert (not b!7002491))

(assert (not b!7002363))

(assert (not d!2182687))

(assert (not d!2182673))

(assert (not d!2182711))

(assert (not bm!635800))

(assert (not bs!1865008))

(assert (not b_lambda!263801))

(assert (not b!7002324))

(assert (not b_lambda!263809))

(assert (not b!7002465))

(assert (not d!2182639))

(assert (not d!2182651))

(assert (not d!2182719))

(assert (not d!2182743))

(assert (not d!2182669))

(assert (not b!7002320))

(assert (not d!2182735))

(assert (not d!2182701))

(assert (not b!7002463))

(assert (not b!7002343))

(assert (not b!7002421))

(assert (not b!7002486))

(assert (not bs!1865009))

(assert (not d!2182665))

(assert (not bm!635818))

(assert (not d!2182705))

(assert (not b!7002503))

(assert (not b!7002322))

(assert (not d!2182693))

(assert (not d!2182683))

(assert (not b!7002300))

(assert (not bm!635825))

(assert (not b!7002298))

(assert (not b!7002306))

(assert (not b!7002338))

(assert (not bs!1865007))

(assert (not bm!635821))

(assert (not b!7002357))

(assert tp_is_empty!43773)

(assert (not d!2182663))

(assert (not b!7002424))

(assert (not b!7002366))

(assert (not b_lambda!263805))

(assert (not d!2182661))

(assert (not d!2182649))

(assert (not b!7002488))

(assert (not bm!635815))

(assert (not b!7002341))

(assert (not b!7002348))

(assert (not d!2182691))

(assert (not b!7002490))

(assert (not bm!635799))

(assert (not b!7002360))

(assert (not d!2182695))

(assert (not b!7002502))

(assert (not b!7002423))

(assert (not bm!635798))

(assert (not b!7002425))

(assert (not d!2182645))

(assert (not b!7002365))

(assert (not b!7002397))

(assert (not b!7002487))

(assert (not d!2182643))

(assert (not bs!1865011))

(assert (not d!2182679))

(assert (not d!2182723))

(assert (not d!2182741))

(assert (not setNonEmpty!48138))

(assert (not b!7002286))

(assert (not b!7002444))

(assert (not d!2182681))

(assert (not d!2182707))

(assert (not b!7002443))

(assert (not b!7002454))

(assert (not b!7002356))

(assert (not b!7002437))

(assert (not d!2182621))

(assert (not bs!1865012))

(assert (not d!2182725))

(assert (not d!2182627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


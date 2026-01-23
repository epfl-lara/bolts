; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670338 () Bool)

(assert start!670338)

(declare-fun b!6983094 () Bool)

(assert (=> b!6983094 true))

(declare-fun b!6983101 () Bool)

(assert (=> b!6983101 true))

(declare-fun b!6983092 () Bool)

(assert (=> b!6983092 true))

(declare-fun b!6983091 () Bool)

(declare-fun e!4196996 () Bool)

(declare-fun e!4196997 () Bool)

(assert (=> b!6983091 (= e!4196996 e!4196997)))

(declare-fun res!2847557 () Bool)

(assert (=> b!6983091 (=> res!2847557 e!4196997)))

(declare-datatypes ((C!34638 0))(
  ( (C!34639 (val!27021 Int)) )
))
(declare-datatypes ((Regex!17184 0))(
  ( (ElementMatch!17184 (c!1294681 C!34638)) (Concat!26029 (regOne!34880 Regex!17184) (regTwo!34880 Regex!17184)) (EmptyExpr!17184) (Star!17184 (reg!17513 Regex!17184)) (EmptyLang!17184) (Union!17184 (regOne!34881 Regex!17184) (regTwo!34881 Regex!17184)) )
))
(declare-datatypes ((List!67097 0))(
  ( (Nil!66973) (Cons!66973 (h!73421 Regex!17184) (t!380842 List!67097)) )
))
(declare-datatypes ((Context!12360 0))(
  ( (Context!12361 (exprs!6680 List!67097)) )
))
(declare-fun lt!2482681 () (Set Context!12360))

(declare-fun lt!2482694 () (Set Context!12360))

(assert (=> b!6983091 (= res!2847557 (not (= lt!2482681 lt!2482694)))))

(declare-fun lt!2482689 () Context!12360)

(assert (=> b!6983091 (= lt!2482681 (set.insert lt!2482689 (as set.empty (Set Context!12360))))))

(declare-fun lt!2482674 () Context!12360)

(declare-datatypes ((Unit!161022 0))(
  ( (Unit!161023) )
))
(declare-fun lt!2482676 () Unit!161022)

(declare-fun lambda!399646 () Int)

(declare-fun ct2!306 () Context!12360)

(declare-fun lemmaConcatPreservesForall!520 (List!67097 List!67097 Int) Unit!161022)

(assert (=> b!6983091 (= lt!2482676 (lemmaConcatPreservesForall!520 (exprs!6680 lt!2482674) (exprs!6680 ct2!306) lambda!399646))))

(declare-fun e!4196993 () Bool)

(assert (=> b!6983092 (= e!4196997 e!4196993)))

(declare-fun res!2847552 () Bool)

(assert (=> b!6983092 (=> res!2847552 e!4196993)))

(declare-fun lt!2482685 () (Set Context!12360))

(declare-datatypes ((List!67098 0))(
  ( (Nil!66974) (Cons!66974 (h!73422 C!34638) (t!380843 List!67098)) )
))
(declare-fun s!7408 () List!67098)

(declare-fun derivationStepZipper!2664 ((Set Context!12360) C!34638) (Set Context!12360))

(assert (=> b!6983092 (= res!2847552 (not (= (derivationStepZipper!2664 lt!2482681 (h!73422 s!7408)) lt!2482685)))))

(declare-fun lambda!399647 () Int)

(declare-fun flatMap!2170 ((Set Context!12360) Int) (Set Context!12360))

(declare-fun derivationStepZipperUp!1834 (Context!12360 C!34638) (Set Context!12360))

(assert (=> b!6983092 (= (flatMap!2170 lt!2482681 lambda!399647) (derivationStepZipperUp!1834 lt!2482689 (h!73422 s!7408)))))

(declare-fun lt!2482690 () Unit!161022)

(declare-fun lemmaFlatMapOnSingletonSet!1685 ((Set Context!12360) Context!12360 Int) Unit!161022)

(assert (=> b!6983092 (= lt!2482690 (lemmaFlatMapOnSingletonSet!1685 lt!2482681 lt!2482689 lambda!399647))))

(assert (=> b!6983092 (= lt!2482685 (derivationStepZipperUp!1834 lt!2482689 (h!73422 s!7408)))))

(declare-fun lt!2482679 () Unit!161022)

(assert (=> b!6983092 (= lt!2482679 (lemmaConcatPreservesForall!520 (exprs!6680 lt!2482674) (exprs!6680 ct2!306) lambda!399646))))

(declare-fun b!6983093 () Bool)

(declare-fun e!4196998 () Bool)

(declare-fun tp_is_empty!43593 () Bool)

(declare-fun tp!1928640 () Bool)

(assert (=> b!6983093 (= e!4196998 (and tp_is_empty!43593 tp!1928640))))

(declare-fun res!2847550 () Bool)

(declare-fun e!4196999 () Bool)

(assert (=> start!670338 (=> (not res!2847550) (not e!4196999))))

(declare-fun lt!2482680 () (Set Context!12360))

(declare-fun matchZipper!2724 ((Set Context!12360) List!67098) Bool)

(assert (=> start!670338 (= res!2847550 (matchZipper!2724 lt!2482680 s!7408))))

(declare-fun z1!570 () (Set Context!12360))

(declare-fun appendTo!305 ((Set Context!12360) Context!12360) (Set Context!12360))

(assert (=> start!670338 (= lt!2482680 (appendTo!305 z1!570 ct2!306))))

(assert (=> start!670338 e!4196999))

(declare-fun condSetEmpty!47602 () Bool)

(assert (=> start!670338 (= condSetEmpty!47602 (= z1!570 (as set.empty (Set Context!12360))))))

(declare-fun setRes!47602 () Bool)

(assert (=> start!670338 setRes!47602))

(declare-fun e!4196994 () Bool)

(declare-fun inv!85820 (Context!12360) Bool)

(assert (=> start!670338 (and (inv!85820 ct2!306) e!4196994)))

(assert (=> start!670338 e!4196998))

(declare-fun tp!1928639 () Bool)

(declare-fun setNonEmpty!47602 () Bool)

(declare-fun setElem!47602 () Context!12360)

(declare-fun e!4196991 () Bool)

(assert (=> setNonEmpty!47602 (= setRes!47602 (and tp!1928639 (inv!85820 setElem!47602) e!4196991))))

(declare-fun setRest!47602 () (Set Context!12360))

(assert (=> setNonEmpty!47602 (= z1!570 (set.union (set.insert setElem!47602 (as set.empty (Set Context!12360))) setRest!47602))))

(declare-fun e!4196992 () Bool)

(assert (=> b!6983094 (= e!4196999 (not e!4196992))))

(declare-fun res!2847558 () Bool)

(assert (=> b!6983094 (=> res!2847558 e!4196992)))

(assert (=> b!6983094 (= res!2847558 (not (matchZipper!2724 lt!2482694 s!7408)))))

(declare-fun lt!2482692 () Context!12360)

(assert (=> b!6983094 (= lt!2482694 (set.insert lt!2482692 (as set.empty (Set Context!12360))))))

(declare-fun lambda!399644 () Int)

(declare-fun getWitness!1062 ((Set Context!12360) Int) Context!12360)

(assert (=> b!6983094 (= lt!2482692 (getWitness!1062 lt!2482680 lambda!399644))))

(declare-datatypes ((List!67099 0))(
  ( (Nil!66975) (Cons!66975 (h!73423 Context!12360) (t!380844 List!67099)) )
))
(declare-fun lt!2482686 () List!67099)

(declare-fun exists!2951 (List!67099 Int) Bool)

(assert (=> b!6983094 (exists!2951 lt!2482686 lambda!399644)))

(declare-fun lt!2482688 () Unit!161022)

(declare-fun lemmaZipperMatchesExistsMatchingContext!153 (List!67099 List!67098) Unit!161022)

(assert (=> b!6983094 (= lt!2482688 (lemmaZipperMatchesExistsMatchingContext!153 lt!2482686 s!7408))))

(declare-fun toList!10544 ((Set Context!12360)) List!67099)

(assert (=> b!6983094 (= lt!2482686 (toList!10544 lt!2482680))))

(declare-fun b!6983095 () Bool)

(declare-fun e!4196995 () Bool)

(declare-fun e!4196990 () Bool)

(assert (=> b!6983095 (= e!4196995 e!4196990)))

(declare-fun res!2847549 () Bool)

(assert (=> b!6983095 (=> res!2847549 e!4196990)))

(declare-fun lt!2482672 () List!67097)

(declare-fun forall!16081 (List!67097 Int) Bool)

(assert (=> b!6983095 (= res!2847549 (not (forall!16081 lt!2482672 lambda!399646)))))

(declare-fun lt!2482673 () (Set Context!12360))

(declare-fun e!4196989 () Bool)

(assert (=> b!6983095 (= (matchZipper!2724 lt!2482673 (t!380843 s!7408)) e!4196989)))

(declare-fun res!2847553 () Bool)

(assert (=> b!6983095 (=> res!2847553 e!4196989)))

(declare-fun lt!2482684 () (Set Context!12360))

(assert (=> b!6983095 (= res!2847553 (matchZipper!2724 lt!2482684 (t!380843 s!7408)))))

(declare-fun lt!2482683 () (Set Context!12360))

(declare-fun lt!2482691 () Unit!161022)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1357 ((Set Context!12360) (Set Context!12360) List!67098) Unit!161022)

(assert (=> b!6983095 (= lt!2482691 (lemmaZipperConcatMatchesSameAsBothZippers!1357 lt!2482684 lt!2482683 (t!380843 s!7408)))))

(declare-fun lt!2482682 () Unit!161022)

(assert (=> b!6983095 (= lt!2482682 (lemmaConcatPreservesForall!520 lt!2482672 (exprs!6680 ct2!306) lambda!399646))))

(declare-fun lt!2482678 () Unit!161022)

(assert (=> b!6983095 (= lt!2482678 (lemmaConcatPreservesForall!520 lt!2482672 (exprs!6680 ct2!306) lambda!399646))))

(declare-fun b!6983096 () Bool)

(declare-fun e!4196988 () Bool)

(assert (=> b!6983096 (= e!4196993 e!4196988)))

(declare-fun res!2847555 () Bool)

(assert (=> b!6983096 (=> res!2847555 e!4196988)))

(declare-fun nullable!6944 (Regex!17184) Bool)

(assert (=> b!6983096 (= res!2847555 (not (nullable!6944 (h!73421 (exprs!6680 lt!2482674)))))))

(declare-fun tail!13169 (List!67097) List!67097)

(assert (=> b!6983096 (= lt!2482672 (tail!13169 (exprs!6680 lt!2482674)))))

(declare-fun b!6983097 () Bool)

(assert (=> b!6983097 (= e!4196988 e!4196995)))

(declare-fun res!2847551 () Bool)

(assert (=> b!6983097 (=> res!2847551 e!4196995)))

(assert (=> b!6983097 (= res!2847551 (not (= lt!2482685 lt!2482673)))))

(assert (=> b!6983097 (= lt!2482673 (set.union lt!2482684 lt!2482683))))

(declare-fun lt!2482675 () Context!12360)

(assert (=> b!6983097 (= lt!2482683 (derivationStepZipperUp!1834 lt!2482675 (h!73422 s!7408)))))

(declare-fun derivationStepZipperDown!1902 (Regex!17184 Context!12360 C!34638) (Set Context!12360))

(assert (=> b!6983097 (= lt!2482684 (derivationStepZipperDown!1902 (h!73421 (exprs!6680 lt!2482674)) lt!2482675 (h!73422 s!7408)))))

(declare-fun ++!15129 (List!67097 List!67097) List!67097)

(assert (=> b!6983097 (= lt!2482675 (Context!12361 (++!15129 lt!2482672 (exprs!6680 ct2!306))))))

(declare-fun lt!2482687 () Unit!161022)

(assert (=> b!6983097 (= lt!2482687 (lemmaConcatPreservesForall!520 lt!2482672 (exprs!6680 ct2!306) lambda!399646))))

(declare-fun lt!2482677 () Unit!161022)

(assert (=> b!6983097 (= lt!2482677 (lemmaConcatPreservesForall!520 lt!2482672 (exprs!6680 ct2!306) lambda!399646))))

(declare-fun b!6983098 () Bool)

(declare-fun tp!1928637 () Bool)

(assert (=> b!6983098 (= e!4196991 tp!1928637)))

(declare-fun b!6983099 () Bool)

(declare-fun res!2847554 () Bool)

(assert (=> b!6983099 (=> res!2847554 e!4196993)))

(declare-fun isEmpty!39093 (List!67097) Bool)

(assert (=> b!6983099 (= res!2847554 (isEmpty!39093 (exprs!6680 lt!2482674)))))

(declare-fun b!6983100 () Bool)

(assert (=> b!6983100 (= e!4196990 (forall!16081 (exprs!6680 ct2!306) lambda!399646))))

(assert (=> b!6983101 (= e!4196992 e!4196996)))

(declare-fun res!2847547 () Bool)

(assert (=> b!6983101 (=> res!2847547 e!4196996)))

(assert (=> b!6983101 (= res!2847547 (or (not (= lt!2482689 lt!2482692)) (not (set.member lt!2482674 z1!570))))))

(assert (=> b!6983101 (= lt!2482689 (Context!12361 (++!15129 (exprs!6680 lt!2482674) (exprs!6680 ct2!306))))))

(declare-fun lt!2482693 () Unit!161022)

(assert (=> b!6983101 (= lt!2482693 (lemmaConcatPreservesForall!520 (exprs!6680 lt!2482674) (exprs!6680 ct2!306) lambda!399646))))

(declare-fun lambda!399645 () Int)

(declare-fun mapPost2!39 ((Set Context!12360) Int Context!12360) Context!12360)

(assert (=> b!6983101 (= lt!2482674 (mapPost2!39 z1!570 lambda!399645 lt!2482692))))

(declare-fun b!6983102 () Bool)

(declare-fun res!2847556 () Bool)

(assert (=> b!6983102 (=> (not res!2847556) (not e!4196999))))

(assert (=> b!6983102 (= res!2847556 (is-Cons!66974 s!7408))))

(declare-fun b!6983103 () Bool)

(declare-fun res!2847559 () Bool)

(assert (=> b!6983103 (=> res!2847559 e!4196993)))

(assert (=> b!6983103 (= res!2847559 (not (is-Cons!66973 (exprs!6680 lt!2482674))))))

(declare-fun b!6983104 () Bool)

(declare-fun res!2847548 () Bool)

(assert (=> b!6983104 (=> res!2847548 e!4196992)))

(assert (=> b!6983104 (= res!2847548 (not (set.member lt!2482692 lt!2482680)))))

(declare-fun setIsEmpty!47602 () Bool)

(assert (=> setIsEmpty!47602 setRes!47602))

(declare-fun b!6983105 () Bool)

(assert (=> b!6983105 (= e!4196989 (matchZipper!2724 lt!2482683 (t!380843 s!7408)))))

(declare-fun b!6983106 () Bool)

(declare-fun tp!1928638 () Bool)

(assert (=> b!6983106 (= e!4196994 tp!1928638)))

(assert (= (and start!670338 res!2847550) b!6983102))

(assert (= (and b!6983102 res!2847556) b!6983094))

(assert (= (and b!6983094 (not res!2847558)) b!6983104))

(assert (= (and b!6983104 (not res!2847548)) b!6983101))

(assert (= (and b!6983101 (not res!2847547)) b!6983091))

(assert (= (and b!6983091 (not res!2847557)) b!6983092))

(assert (= (and b!6983092 (not res!2847552)) b!6983103))

(assert (= (and b!6983103 (not res!2847559)) b!6983099))

(assert (= (and b!6983099 (not res!2847554)) b!6983096))

(assert (= (and b!6983096 (not res!2847555)) b!6983097))

(assert (= (and b!6983097 (not res!2847551)) b!6983095))

(assert (= (and b!6983095 (not res!2847553)) b!6983105))

(assert (= (and b!6983095 (not res!2847549)) b!6983100))

(assert (= (and start!670338 condSetEmpty!47602) setIsEmpty!47602))

(assert (= (and start!670338 (not condSetEmpty!47602)) setNonEmpty!47602))

(assert (= setNonEmpty!47602 b!6983098))

(assert (= start!670338 b!6983106))

(assert (= (and start!670338 (is-Cons!66974 s!7408)) b!6983093))

(declare-fun m!7669930 () Bool)

(assert (=> start!670338 m!7669930))

(declare-fun m!7669932 () Bool)

(assert (=> start!670338 m!7669932))

(declare-fun m!7669934 () Bool)

(assert (=> start!670338 m!7669934))

(declare-fun m!7669936 () Bool)

(assert (=> b!6983101 m!7669936))

(declare-fun m!7669938 () Bool)

(assert (=> b!6983101 m!7669938))

(declare-fun m!7669940 () Bool)

(assert (=> b!6983101 m!7669940))

(declare-fun m!7669942 () Bool)

(assert (=> b!6983101 m!7669942))

(declare-fun m!7669944 () Bool)

(assert (=> b!6983105 m!7669944))

(declare-fun m!7669946 () Bool)

(assert (=> b!6983092 m!7669946))

(declare-fun m!7669948 () Bool)

(assert (=> b!6983092 m!7669948))

(declare-fun m!7669950 () Bool)

(assert (=> b!6983092 m!7669950))

(declare-fun m!7669952 () Bool)

(assert (=> b!6983092 m!7669952))

(assert (=> b!6983092 m!7669940))

(declare-fun m!7669954 () Bool)

(assert (=> b!6983095 m!7669954))

(declare-fun m!7669956 () Bool)

(assert (=> b!6983095 m!7669956))

(declare-fun m!7669958 () Bool)

(assert (=> b!6983095 m!7669958))

(declare-fun m!7669960 () Bool)

(assert (=> b!6983095 m!7669960))

(declare-fun m!7669962 () Bool)

(assert (=> b!6983095 m!7669962))

(assert (=> b!6983095 m!7669954))

(declare-fun m!7669964 () Bool)

(assert (=> b!6983091 m!7669964))

(assert (=> b!6983091 m!7669940))

(declare-fun m!7669966 () Bool)

(assert (=> b!6983104 m!7669966))

(declare-fun m!7669968 () Bool)

(assert (=> b!6983096 m!7669968))

(declare-fun m!7669970 () Bool)

(assert (=> b!6983096 m!7669970))

(declare-fun m!7669972 () Bool)

(assert (=> b!6983099 m!7669972))

(declare-fun m!7669974 () Bool)

(assert (=> setNonEmpty!47602 m!7669974))

(declare-fun m!7669976 () Bool)

(assert (=> b!6983100 m!7669976))

(assert (=> b!6983097 m!7669954))

(declare-fun m!7669978 () Bool)

(assert (=> b!6983097 m!7669978))

(assert (=> b!6983097 m!7669954))

(declare-fun m!7669980 () Bool)

(assert (=> b!6983097 m!7669980))

(declare-fun m!7669982 () Bool)

(assert (=> b!6983097 m!7669982))

(declare-fun m!7669984 () Bool)

(assert (=> b!6983094 m!7669984))

(declare-fun m!7669986 () Bool)

(assert (=> b!6983094 m!7669986))

(declare-fun m!7669988 () Bool)

(assert (=> b!6983094 m!7669988))

(declare-fun m!7669990 () Bool)

(assert (=> b!6983094 m!7669990))

(declare-fun m!7669992 () Bool)

(assert (=> b!6983094 m!7669992))

(declare-fun m!7669994 () Bool)

(assert (=> b!6983094 m!7669994))

(push 1)

(assert (not b!6983100))

(assert (not b!6983094))

(assert (not setNonEmpty!47602))

(assert (not b!6983098))

(assert (not b!6983101))

(assert (not b!6983092))

(assert (not b!6983106))

(assert tp_is_empty!43593)

(assert (not b!6983097))

(assert (not b!6983099))

(assert (not start!670338))

(assert (not b!6983096))

(assert (not b!6983105))

(assert (not b!6983091))

(assert (not b!6983095))

(assert (not b!6983093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2174816 () Bool)

(declare-fun res!2847604 () Bool)

(declare-fun e!4197040 () Bool)

(assert (=> d!2174816 (=> res!2847604 e!4197040)))

(assert (=> d!2174816 (= res!2847604 (is-Nil!66973 (exprs!6680 ct2!306)))))

(assert (=> d!2174816 (= (forall!16081 (exprs!6680 ct2!306) lambda!399646) e!4197040)))

(declare-fun b!6983171 () Bool)

(declare-fun e!4197041 () Bool)

(assert (=> b!6983171 (= e!4197040 e!4197041)))

(declare-fun res!2847605 () Bool)

(assert (=> b!6983171 (=> (not res!2847605) (not e!4197041))))

(declare-fun dynLambda!26797 (Int Regex!17184) Bool)

(assert (=> b!6983171 (= res!2847605 (dynLambda!26797 lambda!399646 (h!73421 (exprs!6680 ct2!306))))))

(declare-fun b!6983172 () Bool)

(assert (=> b!6983172 (= e!4197041 (forall!16081 (t!380842 (exprs!6680 ct2!306)) lambda!399646))))

(assert (= (and d!2174816 (not res!2847604)) b!6983171))

(assert (= (and b!6983171 res!2847605) b!6983172))

(declare-fun b_lambda!261899 () Bool)

(assert (=> (not b_lambda!261899) (not b!6983171)))

(declare-fun m!7670062 () Bool)

(assert (=> b!6983171 m!7670062))

(declare-fun m!7670064 () Bool)

(assert (=> b!6983172 m!7670064))

(assert (=> b!6983100 d!2174816))

(declare-fun d!2174818 () Bool)

(assert (=> d!2174818 (forall!16081 (++!15129 (exprs!6680 lt!2482674) (exprs!6680 ct2!306)) lambda!399646)))

(declare-fun lt!2482768 () Unit!161022)

(declare-fun choose!52099 (List!67097 List!67097 Int) Unit!161022)

(assert (=> d!2174818 (= lt!2482768 (choose!52099 (exprs!6680 lt!2482674) (exprs!6680 ct2!306) lambda!399646))))

(assert (=> d!2174818 (forall!16081 (exprs!6680 lt!2482674) lambda!399646)))

(assert (=> d!2174818 (= (lemmaConcatPreservesForall!520 (exprs!6680 lt!2482674) (exprs!6680 ct2!306) lambda!399646) lt!2482768)))

(declare-fun bs!1861199 () Bool)

(assert (= bs!1861199 d!2174818))

(assert (=> bs!1861199 m!7669938))

(assert (=> bs!1861199 m!7669938))

(declare-fun m!7670066 () Bool)

(assert (=> bs!1861199 m!7670066))

(declare-fun m!7670068 () Bool)

(assert (=> bs!1861199 m!7670068))

(declare-fun m!7670070 () Bool)

(assert (=> bs!1861199 m!7670070))

(assert (=> b!6983091 d!2174818))

(declare-fun b!6983181 () Bool)

(declare-fun e!4197046 () List!67097)

(assert (=> b!6983181 (= e!4197046 (exprs!6680 ct2!306))))

(declare-fun d!2174820 () Bool)

(declare-fun e!4197047 () Bool)

(assert (=> d!2174820 e!4197047))

(declare-fun res!2847611 () Bool)

(assert (=> d!2174820 (=> (not res!2847611) (not e!4197047))))

(declare-fun lt!2482771 () List!67097)

(declare-fun content!13218 (List!67097) (Set Regex!17184))

(assert (=> d!2174820 (= res!2847611 (= (content!13218 lt!2482771) (set.union (content!13218 (exprs!6680 lt!2482674)) (content!13218 (exprs!6680 ct2!306)))))))

(assert (=> d!2174820 (= lt!2482771 e!4197046)))

(declare-fun c!1294693 () Bool)

(assert (=> d!2174820 (= c!1294693 (is-Nil!66973 (exprs!6680 lt!2482674)))))

(assert (=> d!2174820 (= (++!15129 (exprs!6680 lt!2482674) (exprs!6680 ct2!306)) lt!2482771)))

(declare-fun b!6983182 () Bool)

(assert (=> b!6983182 (= e!4197046 (Cons!66973 (h!73421 (exprs!6680 lt!2482674)) (++!15129 (t!380842 (exprs!6680 lt!2482674)) (exprs!6680 ct2!306))))))

(declare-fun b!6983184 () Bool)

(assert (=> b!6983184 (= e!4197047 (or (not (= (exprs!6680 ct2!306) Nil!66973)) (= lt!2482771 (exprs!6680 lt!2482674))))))

(declare-fun b!6983183 () Bool)

(declare-fun res!2847612 () Bool)

(assert (=> b!6983183 (=> (not res!2847612) (not e!4197047))))

(declare-fun size!40884 (List!67097) Int)

(assert (=> b!6983183 (= res!2847612 (= (size!40884 lt!2482771) (+ (size!40884 (exprs!6680 lt!2482674)) (size!40884 (exprs!6680 ct2!306)))))))

(assert (= (and d!2174820 c!1294693) b!6983181))

(assert (= (and d!2174820 (not c!1294693)) b!6983182))

(assert (= (and d!2174820 res!2847611) b!6983183))

(assert (= (and b!6983183 res!2847612) b!6983184))

(declare-fun m!7670072 () Bool)

(assert (=> d!2174820 m!7670072))

(declare-fun m!7670074 () Bool)

(assert (=> d!2174820 m!7670074))

(declare-fun m!7670076 () Bool)

(assert (=> d!2174820 m!7670076))

(declare-fun m!7670078 () Bool)

(assert (=> b!6983182 m!7670078))

(declare-fun m!7670080 () Bool)

(assert (=> b!6983183 m!7670080))

(declare-fun m!7670082 () Bool)

(assert (=> b!6983183 m!7670082))

(declare-fun m!7670084 () Bool)

(assert (=> b!6983183 m!7670084))

(assert (=> b!6983101 d!2174820))

(assert (=> b!6983101 d!2174818))

(declare-fun d!2174822 () Bool)

(declare-fun e!4197050 () Bool)

(assert (=> d!2174822 e!4197050))

(declare-fun res!2847615 () Bool)

(assert (=> d!2174822 (=> (not res!2847615) (not e!4197050))))

(declare-fun lt!2482774 () Context!12360)

(declare-fun dynLambda!26798 (Int Context!12360) Context!12360)

(assert (=> d!2174822 (= res!2847615 (= lt!2482692 (dynLambda!26798 lambda!399645 lt!2482774)))))

(declare-fun choose!52100 ((Set Context!12360) Int Context!12360) Context!12360)

(assert (=> d!2174822 (= lt!2482774 (choose!52100 z1!570 lambda!399645 lt!2482692))))

(declare-fun map!15441 ((Set Context!12360) Int) (Set Context!12360))

(assert (=> d!2174822 (set.member lt!2482692 (map!15441 z1!570 lambda!399645))))

(assert (=> d!2174822 (= (mapPost2!39 z1!570 lambda!399645 lt!2482692) lt!2482774)))

(declare-fun b!6983188 () Bool)

(assert (=> b!6983188 (= e!4197050 (set.member lt!2482774 z1!570))))

(assert (= (and d!2174822 res!2847615) b!6983188))

(declare-fun b_lambda!261901 () Bool)

(assert (=> (not b_lambda!261901) (not d!2174822)))

(declare-fun m!7670086 () Bool)

(assert (=> d!2174822 m!7670086))

(declare-fun m!7670088 () Bool)

(assert (=> d!2174822 m!7670088))

(declare-fun m!7670090 () Bool)

(assert (=> d!2174822 m!7670090))

(declare-fun m!7670092 () Bool)

(assert (=> d!2174822 m!7670092))

(declare-fun m!7670094 () Bool)

(assert (=> b!6983188 m!7670094))

(assert (=> b!6983101 d!2174822))

(declare-fun d!2174824 () Bool)

(declare-fun dynLambda!26799 (Int Context!12360) (Set Context!12360))

(assert (=> d!2174824 (= (flatMap!2170 lt!2482681 lambda!399647) (dynLambda!26799 lambda!399647 lt!2482689))))

(declare-fun lt!2482777 () Unit!161022)

(declare-fun choose!52101 ((Set Context!12360) Context!12360 Int) Unit!161022)

(assert (=> d!2174824 (= lt!2482777 (choose!52101 lt!2482681 lt!2482689 lambda!399647))))

(assert (=> d!2174824 (= lt!2482681 (set.insert lt!2482689 (as set.empty (Set Context!12360))))))

(assert (=> d!2174824 (= (lemmaFlatMapOnSingletonSet!1685 lt!2482681 lt!2482689 lambda!399647) lt!2482777)))

(declare-fun b_lambda!261903 () Bool)

(assert (=> (not b_lambda!261903) (not d!2174824)))

(declare-fun bs!1861200 () Bool)

(assert (= bs!1861200 d!2174824))

(assert (=> bs!1861200 m!7669952))

(declare-fun m!7670096 () Bool)

(assert (=> bs!1861200 m!7670096))

(declare-fun m!7670098 () Bool)

(assert (=> bs!1861200 m!7670098))

(assert (=> bs!1861200 m!7669964))

(assert (=> b!6983092 d!2174824))

(declare-fun bs!1861201 () Bool)

(declare-fun d!2174826 () Bool)

(assert (= bs!1861201 (and d!2174826 b!6983092)))

(declare-fun lambda!399680 () Int)

(assert (=> bs!1861201 (= lambda!399680 lambda!399647)))

(assert (=> d!2174826 true))

(assert (=> d!2174826 (= (derivationStepZipper!2664 lt!2482681 (h!73422 s!7408)) (flatMap!2170 lt!2482681 lambda!399680))))

(declare-fun bs!1861202 () Bool)

(assert (= bs!1861202 d!2174826))

(declare-fun m!7670100 () Bool)

(assert (=> bs!1861202 m!7670100))

(assert (=> b!6983092 d!2174826))

(assert (=> b!6983092 d!2174818))

(declare-fun b!6983201 () Bool)

(declare-fun e!4197057 () (Set Context!12360))

(declare-fun e!4197058 () (Set Context!12360))

(assert (=> b!6983201 (= e!4197057 e!4197058)))

(declare-fun c!1294700 () Bool)

(assert (=> b!6983201 (= c!1294700 (is-Cons!66973 (exprs!6680 lt!2482689)))))

(declare-fun d!2174828 () Bool)

(declare-fun c!1294701 () Bool)

(declare-fun e!4197059 () Bool)

(assert (=> d!2174828 (= c!1294701 e!4197059)))

(declare-fun res!2847618 () Bool)

(assert (=> d!2174828 (=> (not res!2847618) (not e!4197059))))

(assert (=> d!2174828 (= res!2847618 (is-Cons!66973 (exprs!6680 lt!2482689)))))

(assert (=> d!2174828 (= (derivationStepZipperUp!1834 lt!2482689 (h!73422 s!7408)) e!4197057)))

(declare-fun bm!633774 () Bool)

(declare-fun call!633779 () (Set Context!12360))

(assert (=> bm!633774 (= call!633779 (derivationStepZipperDown!1902 (h!73421 (exprs!6680 lt!2482689)) (Context!12361 (t!380842 (exprs!6680 lt!2482689))) (h!73422 s!7408)))))

(declare-fun b!6983202 () Bool)

(assert (=> b!6983202 (= e!4197059 (nullable!6944 (h!73421 (exprs!6680 lt!2482689))))))

(declare-fun b!6983203 () Bool)

(assert (=> b!6983203 (= e!4197058 call!633779)))

(declare-fun b!6983204 () Bool)

(assert (=> b!6983204 (= e!4197058 (as set.empty (Set Context!12360)))))

(declare-fun b!6983205 () Bool)

(assert (=> b!6983205 (= e!4197057 (set.union call!633779 (derivationStepZipperUp!1834 (Context!12361 (t!380842 (exprs!6680 lt!2482689))) (h!73422 s!7408))))))

(assert (= (and d!2174828 res!2847618) b!6983202))

(assert (= (and d!2174828 c!1294701) b!6983205))

(assert (= (and d!2174828 (not c!1294701)) b!6983201))

(assert (= (and b!6983201 c!1294700) b!6983203))

(assert (= (and b!6983201 (not c!1294700)) b!6983204))

(assert (= (or b!6983205 b!6983203) bm!633774))

(declare-fun m!7670102 () Bool)

(assert (=> bm!633774 m!7670102))

(declare-fun m!7670104 () Bool)

(assert (=> b!6983202 m!7670104))

(declare-fun m!7670106 () Bool)

(assert (=> b!6983205 m!7670106))

(assert (=> b!6983092 d!2174828))

(declare-fun d!2174830 () Bool)

(declare-fun choose!52102 ((Set Context!12360) Int) (Set Context!12360))

(assert (=> d!2174830 (= (flatMap!2170 lt!2482681 lambda!399647) (choose!52102 lt!2482681 lambda!399647))))

(declare-fun bs!1861203 () Bool)

(assert (= bs!1861203 d!2174830))

(declare-fun m!7670108 () Bool)

(assert (=> bs!1861203 m!7670108))

(assert (=> b!6983092 d!2174830))

(declare-fun d!2174832 () Bool)

(declare-fun c!1294704 () Bool)

(declare-fun isEmpty!39095 (List!67098) Bool)

(assert (=> d!2174832 (= c!1294704 (isEmpty!39095 s!7408))))

(declare-fun e!4197062 () Bool)

(assert (=> d!2174832 (= (matchZipper!2724 lt!2482680 s!7408) e!4197062)))

(declare-fun b!6983210 () Bool)

(declare-fun nullableZipper!2412 ((Set Context!12360)) Bool)

(assert (=> b!6983210 (= e!4197062 (nullableZipper!2412 lt!2482680))))

(declare-fun b!6983211 () Bool)

(declare-fun head!14086 (List!67098) C!34638)

(declare-fun tail!13171 (List!67098) List!67098)

(assert (=> b!6983211 (= e!4197062 (matchZipper!2724 (derivationStepZipper!2664 lt!2482680 (head!14086 s!7408)) (tail!13171 s!7408)))))

(assert (= (and d!2174832 c!1294704) b!6983210))

(assert (= (and d!2174832 (not c!1294704)) b!6983211))

(declare-fun m!7670110 () Bool)

(assert (=> d!2174832 m!7670110))

(declare-fun m!7670112 () Bool)

(assert (=> b!6983210 m!7670112))

(declare-fun m!7670114 () Bool)

(assert (=> b!6983211 m!7670114))

(assert (=> b!6983211 m!7670114))

(declare-fun m!7670116 () Bool)

(assert (=> b!6983211 m!7670116))

(declare-fun m!7670118 () Bool)

(assert (=> b!6983211 m!7670118))

(assert (=> b!6983211 m!7670116))

(assert (=> b!6983211 m!7670118))

(declare-fun m!7670120 () Bool)

(assert (=> b!6983211 m!7670120))

(assert (=> start!670338 d!2174832))

(declare-fun bs!1861204 () Bool)

(declare-fun d!2174834 () Bool)

(assert (= bs!1861204 (and d!2174834 b!6983101)))

(declare-fun lambda!399685 () Int)

(assert (=> bs!1861204 (= lambda!399685 lambda!399645)))

(assert (=> d!2174834 true))

(assert (=> d!2174834 (= (appendTo!305 z1!570 ct2!306) (map!15441 z1!570 lambda!399685))))

(declare-fun bs!1861205 () Bool)

(assert (= bs!1861205 d!2174834))

(declare-fun m!7670122 () Bool)

(assert (=> bs!1861205 m!7670122))

(assert (=> start!670338 d!2174834))

(declare-fun bs!1861206 () Bool)

(declare-fun d!2174836 () Bool)

(assert (= bs!1861206 (and d!2174836 b!6983101)))

(declare-fun lambda!399688 () Int)

(assert (=> bs!1861206 (= lambda!399688 lambda!399646)))

(assert (=> d!2174836 (= (inv!85820 ct2!306) (forall!16081 (exprs!6680 ct2!306) lambda!399688))))

(declare-fun bs!1861207 () Bool)

(assert (= bs!1861207 d!2174836))

(declare-fun m!7670124 () Bool)

(assert (=> bs!1861207 m!7670124))

(assert (=> start!670338 d!2174836))

(declare-fun bs!1861208 () Bool)

(declare-fun d!2174838 () Bool)

(assert (= bs!1861208 (and d!2174838 b!6983101)))

(declare-fun lambda!399689 () Int)

(assert (=> bs!1861208 (= lambda!399689 lambda!399646)))

(declare-fun bs!1861209 () Bool)

(assert (= bs!1861209 (and d!2174838 d!2174836)))

(assert (=> bs!1861209 (= lambda!399689 lambda!399688)))

(assert (=> d!2174838 (= (inv!85820 setElem!47602) (forall!16081 (exprs!6680 setElem!47602) lambda!399689))))

(declare-fun bs!1861210 () Bool)

(assert (= bs!1861210 d!2174838))

(declare-fun m!7670126 () Bool)

(assert (=> bs!1861210 m!7670126))

(assert (=> setNonEmpty!47602 d!2174838))

(declare-fun d!2174840 () Bool)

(declare-fun e!4197065 () Bool)

(assert (=> d!2174840 e!4197065))

(declare-fun res!2847621 () Bool)

(assert (=> d!2174840 (=> (not res!2847621) (not e!4197065))))

(declare-fun lt!2482782 () List!67099)

(declare-fun noDuplicate!2502 (List!67099) Bool)

(assert (=> d!2174840 (= res!2847621 (noDuplicate!2502 lt!2482782))))

(declare-fun choose!52103 ((Set Context!12360)) List!67099)

(assert (=> d!2174840 (= lt!2482782 (choose!52103 lt!2482680))))

(assert (=> d!2174840 (= (toList!10544 lt!2482680) lt!2482782)))

(declare-fun b!6983214 () Bool)

(declare-fun content!13219 (List!67099) (Set Context!12360))

(assert (=> b!6983214 (= e!4197065 (= (content!13219 lt!2482782) lt!2482680))))

(assert (= (and d!2174840 res!2847621) b!6983214))

(declare-fun m!7670128 () Bool)

(assert (=> d!2174840 m!7670128))

(declare-fun m!7670130 () Bool)

(assert (=> d!2174840 m!7670130))

(declare-fun m!7670132 () Bool)

(assert (=> b!6983214 m!7670132))

(assert (=> b!6983094 d!2174840))

(declare-fun d!2174842 () Bool)

(declare-fun e!4197068 () Bool)

(assert (=> d!2174842 e!4197068))

(declare-fun res!2847624 () Bool)

(assert (=> d!2174842 (=> (not res!2847624) (not e!4197068))))

(declare-fun lt!2482785 () Context!12360)

(declare-fun dynLambda!26800 (Int Context!12360) Bool)

(assert (=> d!2174842 (= res!2847624 (dynLambda!26800 lambda!399644 lt!2482785))))

(declare-fun getWitness!1064 (List!67099 Int) Context!12360)

(assert (=> d!2174842 (= lt!2482785 (getWitness!1064 (toList!10544 lt!2482680) lambda!399644))))

(declare-fun exists!2953 ((Set Context!12360) Int) Bool)

(assert (=> d!2174842 (exists!2953 lt!2482680 lambda!399644)))

(assert (=> d!2174842 (= (getWitness!1062 lt!2482680 lambda!399644) lt!2482785)))

(declare-fun b!6983217 () Bool)

(assert (=> b!6983217 (= e!4197068 (set.member lt!2482785 lt!2482680))))

(assert (= (and d!2174842 res!2847624) b!6983217))

(declare-fun b_lambda!261905 () Bool)

(assert (=> (not b_lambda!261905) (not d!2174842)))

(declare-fun m!7670134 () Bool)

(assert (=> d!2174842 m!7670134))

(assert (=> d!2174842 m!7669988))

(assert (=> d!2174842 m!7669988))

(declare-fun m!7670136 () Bool)

(assert (=> d!2174842 m!7670136))

(declare-fun m!7670138 () Bool)

(assert (=> d!2174842 m!7670138))

(declare-fun m!7670140 () Bool)

(assert (=> b!6983217 m!7670140))

(assert (=> b!6983094 d!2174842))

(declare-fun bs!1861211 () Bool)

(declare-fun d!2174844 () Bool)

(assert (= bs!1861211 (and d!2174844 b!6983094)))

(declare-fun lambda!399692 () Int)

(assert (=> bs!1861211 (not (= lambda!399692 lambda!399644))))

(assert (=> d!2174844 true))

(declare-fun order!27865 () Int)

(declare-fun dynLambda!26801 (Int Int) Int)

(assert (=> d!2174844 (< (dynLambda!26801 order!27865 lambda!399644) (dynLambda!26801 order!27865 lambda!399692))))

(declare-fun forall!16083 (List!67099 Int) Bool)

(assert (=> d!2174844 (= (exists!2951 lt!2482686 lambda!399644) (not (forall!16083 lt!2482686 lambda!399692)))))

(declare-fun bs!1861212 () Bool)

(assert (= bs!1861212 d!2174844))

(declare-fun m!7670142 () Bool)

(assert (=> bs!1861212 m!7670142))

(assert (=> b!6983094 d!2174844))

(declare-fun d!2174846 () Bool)

(declare-fun c!1294706 () Bool)

(assert (=> d!2174846 (= c!1294706 (isEmpty!39095 s!7408))))

(declare-fun e!4197069 () Bool)

(assert (=> d!2174846 (= (matchZipper!2724 lt!2482694 s!7408) e!4197069)))

(declare-fun b!6983220 () Bool)

(assert (=> b!6983220 (= e!4197069 (nullableZipper!2412 lt!2482694))))

(declare-fun b!6983221 () Bool)

(assert (=> b!6983221 (= e!4197069 (matchZipper!2724 (derivationStepZipper!2664 lt!2482694 (head!14086 s!7408)) (tail!13171 s!7408)))))

(assert (= (and d!2174846 c!1294706) b!6983220))

(assert (= (and d!2174846 (not c!1294706)) b!6983221))

(assert (=> d!2174846 m!7670110))

(declare-fun m!7670144 () Bool)

(assert (=> b!6983220 m!7670144))

(assert (=> b!6983221 m!7670114))

(assert (=> b!6983221 m!7670114))

(declare-fun m!7670146 () Bool)

(assert (=> b!6983221 m!7670146))

(assert (=> b!6983221 m!7670118))

(assert (=> b!6983221 m!7670146))

(assert (=> b!6983221 m!7670118))

(declare-fun m!7670148 () Bool)

(assert (=> b!6983221 m!7670148))

(assert (=> b!6983094 d!2174846))

(declare-fun bs!1861213 () Bool)

(declare-fun d!2174848 () Bool)

(assert (= bs!1861213 (and d!2174848 b!6983094)))

(declare-fun lambda!399695 () Int)

(assert (=> bs!1861213 (= lambda!399695 lambda!399644)))

(declare-fun bs!1861214 () Bool)

(assert (= bs!1861214 (and d!2174848 d!2174844)))

(assert (=> bs!1861214 (not (= lambda!399695 lambda!399692))))

(assert (=> d!2174848 true))

(assert (=> d!2174848 (exists!2951 lt!2482686 lambda!399695)))

(declare-fun lt!2482788 () Unit!161022)

(declare-fun choose!52104 (List!67099 List!67098) Unit!161022)

(assert (=> d!2174848 (= lt!2482788 (choose!52104 lt!2482686 s!7408))))

(assert (=> d!2174848 (matchZipper!2724 (content!13219 lt!2482686) s!7408)))

(assert (=> d!2174848 (= (lemmaZipperMatchesExistsMatchingContext!153 lt!2482686 s!7408) lt!2482788)))

(declare-fun bs!1861215 () Bool)

(assert (= bs!1861215 d!2174848))

(declare-fun m!7670150 () Bool)

(assert (=> bs!1861215 m!7670150))

(declare-fun m!7670152 () Bool)

(assert (=> bs!1861215 m!7670152))

(declare-fun m!7670154 () Bool)

(assert (=> bs!1861215 m!7670154))

(assert (=> bs!1861215 m!7670154))

(declare-fun m!7670156 () Bool)

(assert (=> bs!1861215 m!7670156))

(assert (=> b!6983094 d!2174848))

(declare-fun d!2174850 () Bool)

(declare-fun c!1294709 () Bool)

(assert (=> d!2174850 (= c!1294709 (isEmpty!39095 (t!380843 s!7408)))))

(declare-fun e!4197070 () Bool)

(assert (=> d!2174850 (= (matchZipper!2724 lt!2482683 (t!380843 s!7408)) e!4197070)))

(declare-fun b!6983222 () Bool)

(assert (=> b!6983222 (= e!4197070 (nullableZipper!2412 lt!2482683))))

(declare-fun b!6983223 () Bool)

(assert (=> b!6983223 (= e!4197070 (matchZipper!2724 (derivationStepZipper!2664 lt!2482683 (head!14086 (t!380843 s!7408))) (tail!13171 (t!380843 s!7408))))))

(assert (= (and d!2174850 c!1294709) b!6983222))

(assert (= (and d!2174850 (not c!1294709)) b!6983223))

(declare-fun m!7670158 () Bool)

(assert (=> d!2174850 m!7670158))

(declare-fun m!7670160 () Bool)

(assert (=> b!6983222 m!7670160))

(declare-fun m!7670162 () Bool)

(assert (=> b!6983223 m!7670162))

(assert (=> b!6983223 m!7670162))

(declare-fun m!7670164 () Bool)

(assert (=> b!6983223 m!7670164))

(declare-fun m!7670166 () Bool)

(assert (=> b!6983223 m!7670166))

(assert (=> b!6983223 m!7670164))

(assert (=> b!6983223 m!7670166))

(declare-fun m!7670168 () Bool)

(assert (=> b!6983223 m!7670168))

(assert (=> b!6983105 d!2174850))

(declare-fun d!2174852 () Bool)

(declare-fun res!2847625 () Bool)

(declare-fun e!4197071 () Bool)

(assert (=> d!2174852 (=> res!2847625 e!4197071)))

(assert (=> d!2174852 (= res!2847625 (is-Nil!66973 lt!2482672))))

(assert (=> d!2174852 (= (forall!16081 lt!2482672 lambda!399646) e!4197071)))

(declare-fun b!6983224 () Bool)

(declare-fun e!4197072 () Bool)

(assert (=> b!6983224 (= e!4197071 e!4197072)))

(declare-fun res!2847626 () Bool)

(assert (=> b!6983224 (=> (not res!2847626) (not e!4197072))))

(assert (=> b!6983224 (= res!2847626 (dynLambda!26797 lambda!399646 (h!73421 lt!2482672)))))

(declare-fun b!6983225 () Bool)

(assert (=> b!6983225 (= e!4197072 (forall!16081 (t!380842 lt!2482672) lambda!399646))))

(assert (= (and d!2174852 (not res!2847625)) b!6983224))

(assert (= (and b!6983224 res!2847626) b!6983225))

(declare-fun b_lambda!261907 () Bool)

(assert (=> (not b_lambda!261907) (not b!6983224)))

(declare-fun m!7670170 () Bool)

(assert (=> b!6983224 m!7670170))

(declare-fun m!7670172 () Bool)

(assert (=> b!6983225 m!7670172))

(assert (=> b!6983095 d!2174852))

(declare-fun d!2174854 () Bool)

(declare-fun c!1294710 () Bool)

(assert (=> d!2174854 (= c!1294710 (isEmpty!39095 (t!380843 s!7408)))))

(declare-fun e!4197073 () Bool)

(assert (=> d!2174854 (= (matchZipper!2724 lt!2482673 (t!380843 s!7408)) e!4197073)))

(declare-fun b!6983226 () Bool)

(assert (=> b!6983226 (= e!4197073 (nullableZipper!2412 lt!2482673))))

(declare-fun b!6983227 () Bool)

(assert (=> b!6983227 (= e!4197073 (matchZipper!2724 (derivationStepZipper!2664 lt!2482673 (head!14086 (t!380843 s!7408))) (tail!13171 (t!380843 s!7408))))))

(assert (= (and d!2174854 c!1294710) b!6983226))

(assert (= (and d!2174854 (not c!1294710)) b!6983227))

(assert (=> d!2174854 m!7670158))

(declare-fun m!7670174 () Bool)

(assert (=> b!6983226 m!7670174))

(assert (=> b!6983227 m!7670162))

(assert (=> b!6983227 m!7670162))

(declare-fun m!7670176 () Bool)

(assert (=> b!6983227 m!7670176))

(assert (=> b!6983227 m!7670166))

(assert (=> b!6983227 m!7670176))

(assert (=> b!6983227 m!7670166))

(declare-fun m!7670178 () Bool)

(assert (=> b!6983227 m!7670178))

(assert (=> b!6983095 d!2174854))

(declare-fun d!2174856 () Bool)

(declare-fun c!1294711 () Bool)

(assert (=> d!2174856 (= c!1294711 (isEmpty!39095 (t!380843 s!7408)))))

(declare-fun e!4197074 () Bool)

(assert (=> d!2174856 (= (matchZipper!2724 lt!2482684 (t!380843 s!7408)) e!4197074)))

(declare-fun b!6983228 () Bool)

(assert (=> b!6983228 (= e!4197074 (nullableZipper!2412 lt!2482684))))

(declare-fun b!6983229 () Bool)

(assert (=> b!6983229 (= e!4197074 (matchZipper!2724 (derivationStepZipper!2664 lt!2482684 (head!14086 (t!380843 s!7408))) (tail!13171 (t!380843 s!7408))))))

(assert (= (and d!2174856 c!1294711) b!6983228))

(assert (= (and d!2174856 (not c!1294711)) b!6983229))

(assert (=> d!2174856 m!7670158))

(declare-fun m!7670180 () Bool)

(assert (=> b!6983228 m!7670180))

(assert (=> b!6983229 m!7670162))

(assert (=> b!6983229 m!7670162))

(declare-fun m!7670182 () Bool)

(assert (=> b!6983229 m!7670182))

(assert (=> b!6983229 m!7670166))

(assert (=> b!6983229 m!7670182))

(assert (=> b!6983229 m!7670166))

(declare-fun m!7670184 () Bool)

(assert (=> b!6983229 m!7670184))

(assert (=> b!6983095 d!2174856))

(declare-fun d!2174858 () Bool)

(declare-fun e!4197077 () Bool)

(assert (=> d!2174858 (= (matchZipper!2724 (set.union lt!2482684 lt!2482683) (t!380843 s!7408)) e!4197077)))

(declare-fun res!2847629 () Bool)

(assert (=> d!2174858 (=> res!2847629 e!4197077)))

(assert (=> d!2174858 (= res!2847629 (matchZipper!2724 lt!2482684 (t!380843 s!7408)))))

(declare-fun lt!2482791 () Unit!161022)

(declare-fun choose!52105 ((Set Context!12360) (Set Context!12360) List!67098) Unit!161022)

(assert (=> d!2174858 (= lt!2482791 (choose!52105 lt!2482684 lt!2482683 (t!380843 s!7408)))))

(assert (=> d!2174858 (= (lemmaZipperConcatMatchesSameAsBothZippers!1357 lt!2482684 lt!2482683 (t!380843 s!7408)) lt!2482791)))

(declare-fun b!6983232 () Bool)

(assert (=> b!6983232 (= e!4197077 (matchZipper!2724 lt!2482683 (t!380843 s!7408)))))

(assert (= (and d!2174858 (not res!2847629)) b!6983232))

(declare-fun m!7670186 () Bool)

(assert (=> d!2174858 m!7670186))

(assert (=> d!2174858 m!7669962))

(declare-fun m!7670188 () Bool)

(assert (=> d!2174858 m!7670188))

(assert (=> b!6983232 m!7669944))

(assert (=> b!6983095 d!2174858))

(declare-fun d!2174860 () Bool)

(assert (=> d!2174860 (forall!16081 (++!15129 lt!2482672 (exprs!6680 ct2!306)) lambda!399646)))

(declare-fun lt!2482792 () Unit!161022)

(assert (=> d!2174860 (= lt!2482792 (choose!52099 lt!2482672 (exprs!6680 ct2!306) lambda!399646))))

(assert (=> d!2174860 (forall!16081 lt!2482672 lambda!399646)))

(assert (=> d!2174860 (= (lemmaConcatPreservesForall!520 lt!2482672 (exprs!6680 ct2!306) lambda!399646) lt!2482792)))

(declare-fun bs!1861216 () Bool)

(assert (= bs!1861216 d!2174860))

(assert (=> bs!1861216 m!7669980))

(assert (=> bs!1861216 m!7669980))

(declare-fun m!7670190 () Bool)

(assert (=> bs!1861216 m!7670190))

(declare-fun m!7670192 () Bool)

(assert (=> bs!1861216 m!7670192))

(assert (=> bs!1861216 m!7669960))

(assert (=> b!6983095 d!2174860))

(declare-fun d!2174862 () Bool)

(declare-fun nullableFct!2615 (Regex!17184) Bool)

(assert (=> d!2174862 (= (nullable!6944 (h!73421 (exprs!6680 lt!2482674))) (nullableFct!2615 (h!73421 (exprs!6680 lt!2482674))))))

(declare-fun bs!1861217 () Bool)

(assert (= bs!1861217 d!2174862))

(declare-fun m!7670194 () Bool)

(assert (=> bs!1861217 m!7670194))

(assert (=> b!6983096 d!2174862))

(declare-fun d!2174864 () Bool)

(assert (=> d!2174864 (= (tail!13169 (exprs!6680 lt!2482674)) (t!380842 (exprs!6680 lt!2482674)))))

(assert (=> b!6983096 d!2174864))

(declare-fun call!633797 () List!67097)

(declare-fun c!1294723 () Bool)

(declare-fun bm!633787 () Bool)

(declare-fun call!633794 () (Set Context!12360))

(assert (=> bm!633787 (= call!633794 (derivationStepZipperDown!1902 (ite c!1294723 (regOne!34881 (h!73421 (exprs!6680 lt!2482674))) (regOne!34880 (h!73421 (exprs!6680 lt!2482674)))) (ite c!1294723 lt!2482675 (Context!12361 call!633797)) (h!73422 s!7408)))))

(declare-fun bm!633788 () Bool)

(declare-fun call!633792 () (Set Context!12360))

(declare-fun call!633795 () (Set Context!12360))

(assert (=> bm!633788 (= call!633792 call!633795)))

(declare-fun b!6983255 () Bool)

(declare-fun e!4197095 () (Set Context!12360))

(declare-fun e!4197094 () (Set Context!12360))

(assert (=> b!6983255 (= e!4197095 e!4197094)))

(declare-fun c!1294726 () Bool)

(assert (=> b!6983255 (= c!1294726 (is-Concat!26029 (h!73421 (exprs!6680 lt!2482674))))))

(declare-fun d!2174866 () Bool)

(declare-fun c!1294724 () Bool)

(assert (=> d!2174866 (= c!1294724 (and (is-ElementMatch!17184 (h!73421 (exprs!6680 lt!2482674))) (= (c!1294681 (h!73421 (exprs!6680 lt!2482674))) (h!73422 s!7408))))))

(declare-fun e!4197092 () (Set Context!12360))

(assert (=> d!2174866 (= (derivationStepZipperDown!1902 (h!73421 (exprs!6680 lt!2482674)) lt!2482675 (h!73422 s!7408)) e!4197092)))

(declare-fun bm!633789 () Bool)

(declare-fun c!1294722 () Bool)

(declare-fun $colon$colon!2464 (List!67097 Regex!17184) List!67097)

(assert (=> bm!633789 (= call!633797 ($colon$colon!2464 (exprs!6680 lt!2482675) (ite (or c!1294722 c!1294726) (regTwo!34880 (h!73421 (exprs!6680 lt!2482674))) (h!73421 (exprs!6680 lt!2482674)))))))

(declare-fun bm!633790 () Bool)

(declare-fun call!633793 () List!67097)

(assert (=> bm!633790 (= call!633793 call!633797)))

(declare-fun b!6983256 () Bool)

(declare-fun call!633796 () (Set Context!12360))

(assert (=> b!6983256 (= e!4197094 call!633796)))

(declare-fun b!6983257 () Bool)

(assert (=> b!6983257 (= e!4197095 (set.union call!633794 call!633792))))

(declare-fun bm!633791 () Bool)

(assert (=> bm!633791 (= call!633795 (derivationStepZipperDown!1902 (ite c!1294723 (regTwo!34881 (h!73421 (exprs!6680 lt!2482674))) (ite c!1294722 (regTwo!34880 (h!73421 (exprs!6680 lt!2482674))) (ite c!1294726 (regOne!34880 (h!73421 (exprs!6680 lt!2482674))) (reg!17513 (h!73421 (exprs!6680 lt!2482674)))))) (ite (or c!1294723 c!1294722) lt!2482675 (Context!12361 call!633793)) (h!73422 s!7408)))))

(declare-fun b!6983258 () Bool)

(declare-fun e!4197091 () (Set Context!12360))

(assert (=> b!6983258 (= e!4197091 call!633796)))

(declare-fun b!6983259 () Bool)

(declare-fun e!4197093 () Bool)

(assert (=> b!6983259 (= e!4197093 (nullable!6944 (regOne!34880 (h!73421 (exprs!6680 lt!2482674)))))))

(declare-fun bm!633792 () Bool)

(assert (=> bm!633792 (= call!633796 call!633792)))

(declare-fun b!6983260 () Bool)

(assert (=> b!6983260 (= e!4197092 (set.insert lt!2482675 (as set.empty (Set Context!12360))))))

(declare-fun b!6983261 () Bool)

(declare-fun e!4197090 () (Set Context!12360))

(assert (=> b!6983261 (= e!4197092 e!4197090)))

(assert (=> b!6983261 (= c!1294723 (is-Union!17184 (h!73421 (exprs!6680 lt!2482674))))))

(declare-fun b!6983262 () Bool)

(assert (=> b!6983262 (= c!1294722 e!4197093)))

(declare-fun res!2847632 () Bool)

(assert (=> b!6983262 (=> (not res!2847632) (not e!4197093))))

(assert (=> b!6983262 (= res!2847632 (is-Concat!26029 (h!73421 (exprs!6680 lt!2482674))))))

(assert (=> b!6983262 (= e!4197090 e!4197095)))

(declare-fun b!6983263 () Bool)

(assert (=> b!6983263 (= e!4197090 (set.union call!633794 call!633795))))

(declare-fun b!6983264 () Bool)

(declare-fun c!1294725 () Bool)

(assert (=> b!6983264 (= c!1294725 (is-Star!17184 (h!73421 (exprs!6680 lt!2482674))))))

(assert (=> b!6983264 (= e!4197094 e!4197091)))

(declare-fun b!6983265 () Bool)

(assert (=> b!6983265 (= e!4197091 (as set.empty (Set Context!12360)))))

(assert (= (and d!2174866 c!1294724) b!6983260))

(assert (= (and d!2174866 (not c!1294724)) b!6983261))

(assert (= (and b!6983261 c!1294723) b!6983263))

(assert (= (and b!6983261 (not c!1294723)) b!6983262))

(assert (= (and b!6983262 res!2847632) b!6983259))

(assert (= (and b!6983262 c!1294722) b!6983257))

(assert (= (and b!6983262 (not c!1294722)) b!6983255))

(assert (= (and b!6983255 c!1294726) b!6983256))

(assert (= (and b!6983255 (not c!1294726)) b!6983264))

(assert (= (and b!6983264 c!1294725) b!6983258))

(assert (= (and b!6983264 (not c!1294725)) b!6983265))

(assert (= (or b!6983256 b!6983258) bm!633790))

(assert (= (or b!6983256 b!6983258) bm!633792))

(assert (= (or b!6983257 bm!633792) bm!633788))

(assert (= (or b!6983257 bm!633790) bm!633789))

(assert (= (or b!6983263 b!6983257) bm!633787))

(assert (= (or b!6983263 bm!633788) bm!633791))

(declare-fun m!7670196 () Bool)

(assert (=> b!6983260 m!7670196))

(declare-fun m!7670198 () Bool)

(assert (=> bm!633789 m!7670198))

(declare-fun m!7670200 () Bool)

(assert (=> bm!633791 m!7670200))

(declare-fun m!7670202 () Bool)

(assert (=> b!6983259 m!7670202))

(declare-fun m!7670204 () Bool)

(assert (=> bm!633787 m!7670204))

(assert (=> b!6983097 d!2174866))

(declare-fun b!6983266 () Bool)

(declare-fun e!4197096 () (Set Context!12360))

(declare-fun e!4197097 () (Set Context!12360))

(assert (=> b!6983266 (= e!4197096 e!4197097)))

(declare-fun c!1294727 () Bool)

(assert (=> b!6983266 (= c!1294727 (is-Cons!66973 (exprs!6680 lt!2482675)))))

(declare-fun d!2174868 () Bool)

(declare-fun c!1294728 () Bool)

(declare-fun e!4197098 () Bool)

(assert (=> d!2174868 (= c!1294728 e!4197098)))

(declare-fun res!2847633 () Bool)

(assert (=> d!2174868 (=> (not res!2847633) (not e!4197098))))

(assert (=> d!2174868 (= res!2847633 (is-Cons!66973 (exprs!6680 lt!2482675)))))

(assert (=> d!2174868 (= (derivationStepZipperUp!1834 lt!2482675 (h!73422 s!7408)) e!4197096)))

(declare-fun bm!633793 () Bool)

(declare-fun call!633798 () (Set Context!12360))

(assert (=> bm!633793 (= call!633798 (derivationStepZipperDown!1902 (h!73421 (exprs!6680 lt!2482675)) (Context!12361 (t!380842 (exprs!6680 lt!2482675))) (h!73422 s!7408)))))

(declare-fun b!6983267 () Bool)

(assert (=> b!6983267 (= e!4197098 (nullable!6944 (h!73421 (exprs!6680 lt!2482675))))))

(declare-fun b!6983268 () Bool)

(assert (=> b!6983268 (= e!4197097 call!633798)))

(declare-fun b!6983269 () Bool)

(assert (=> b!6983269 (= e!4197097 (as set.empty (Set Context!12360)))))

(declare-fun b!6983270 () Bool)

(assert (=> b!6983270 (= e!4197096 (set.union call!633798 (derivationStepZipperUp!1834 (Context!12361 (t!380842 (exprs!6680 lt!2482675))) (h!73422 s!7408))))))

(assert (= (and d!2174868 res!2847633) b!6983267))

(assert (= (and d!2174868 c!1294728) b!6983270))

(assert (= (and d!2174868 (not c!1294728)) b!6983266))

(assert (= (and b!6983266 c!1294727) b!6983268))

(assert (= (and b!6983266 (not c!1294727)) b!6983269))

(assert (= (or b!6983270 b!6983268) bm!633793))

(declare-fun m!7670206 () Bool)

(assert (=> bm!633793 m!7670206))

(declare-fun m!7670208 () Bool)

(assert (=> b!6983267 m!7670208))

(declare-fun m!7670210 () Bool)

(assert (=> b!6983270 m!7670210))

(assert (=> b!6983097 d!2174868))

(declare-fun b!6983271 () Bool)

(declare-fun e!4197099 () List!67097)

(assert (=> b!6983271 (= e!4197099 (exprs!6680 ct2!306))))

(declare-fun d!2174870 () Bool)

(declare-fun e!4197100 () Bool)

(assert (=> d!2174870 e!4197100))

(declare-fun res!2847634 () Bool)

(assert (=> d!2174870 (=> (not res!2847634) (not e!4197100))))

(declare-fun lt!2482793 () List!67097)

(assert (=> d!2174870 (= res!2847634 (= (content!13218 lt!2482793) (set.union (content!13218 lt!2482672) (content!13218 (exprs!6680 ct2!306)))))))

(assert (=> d!2174870 (= lt!2482793 e!4197099)))

(declare-fun c!1294729 () Bool)

(assert (=> d!2174870 (= c!1294729 (is-Nil!66973 lt!2482672))))

(assert (=> d!2174870 (= (++!15129 lt!2482672 (exprs!6680 ct2!306)) lt!2482793)))

(declare-fun b!6983272 () Bool)

(assert (=> b!6983272 (= e!4197099 (Cons!66973 (h!73421 lt!2482672) (++!15129 (t!380842 lt!2482672) (exprs!6680 ct2!306))))))

(declare-fun b!6983274 () Bool)

(assert (=> b!6983274 (= e!4197100 (or (not (= (exprs!6680 ct2!306) Nil!66973)) (= lt!2482793 lt!2482672)))))

(declare-fun b!6983273 () Bool)

(declare-fun res!2847635 () Bool)

(assert (=> b!6983273 (=> (not res!2847635) (not e!4197100))))

(assert (=> b!6983273 (= res!2847635 (= (size!40884 lt!2482793) (+ (size!40884 lt!2482672) (size!40884 (exprs!6680 ct2!306)))))))

(assert (= (and d!2174870 c!1294729) b!6983271))

(assert (= (and d!2174870 (not c!1294729)) b!6983272))

(assert (= (and d!2174870 res!2847634) b!6983273))

(assert (= (and b!6983273 res!2847635) b!6983274))

(declare-fun m!7670212 () Bool)

(assert (=> d!2174870 m!7670212))

(declare-fun m!7670214 () Bool)

(assert (=> d!2174870 m!7670214))

(assert (=> d!2174870 m!7670076))

(declare-fun m!7670216 () Bool)

(assert (=> b!6983272 m!7670216))

(declare-fun m!7670218 () Bool)

(assert (=> b!6983273 m!7670218))

(declare-fun m!7670220 () Bool)

(assert (=> b!6983273 m!7670220))

(assert (=> b!6983273 m!7670084))

(assert (=> b!6983097 d!2174870))

(assert (=> b!6983097 d!2174860))

(declare-fun d!2174872 () Bool)

(assert (=> d!2174872 (= (isEmpty!39093 (exprs!6680 lt!2482674)) (is-Nil!66973 (exprs!6680 lt!2482674)))))

(assert (=> b!6983099 d!2174872))

(declare-fun b!6983279 () Bool)

(declare-fun e!4197103 () Bool)

(declare-fun tp!1928657 () Bool)

(declare-fun tp!1928658 () Bool)

(assert (=> b!6983279 (= e!4197103 (and tp!1928657 tp!1928658))))

(assert (=> b!6983106 (= tp!1928638 e!4197103)))

(assert (= (and b!6983106 (is-Cons!66973 (exprs!6680 ct2!306))) b!6983279))

(declare-fun b!6983284 () Bool)

(declare-fun e!4197106 () Bool)

(declare-fun tp!1928661 () Bool)

(assert (=> b!6983284 (= e!4197106 (and tp_is_empty!43593 tp!1928661))))

(assert (=> b!6983093 (= tp!1928640 e!4197106)))

(assert (= (and b!6983093 (is-Cons!66974 (t!380843 s!7408))) b!6983284))

(declare-fun b!6983285 () Bool)

(declare-fun e!4197107 () Bool)

(declare-fun tp!1928662 () Bool)

(declare-fun tp!1928663 () Bool)

(assert (=> b!6983285 (= e!4197107 (and tp!1928662 tp!1928663))))

(assert (=> b!6983098 (= tp!1928637 e!4197107)))

(assert (= (and b!6983098 (is-Cons!66973 (exprs!6680 setElem!47602))) b!6983285))

(declare-fun condSetEmpty!47608 () Bool)

(assert (=> setNonEmpty!47602 (= condSetEmpty!47608 (= setRest!47602 (as set.empty (Set Context!12360))))))

(declare-fun setRes!47608 () Bool)

(assert (=> setNonEmpty!47602 (= tp!1928639 setRes!47608)))

(declare-fun setIsEmpty!47608 () Bool)

(assert (=> setIsEmpty!47608 setRes!47608))

(declare-fun e!4197110 () Bool)

(declare-fun setElem!47608 () Context!12360)

(declare-fun setNonEmpty!47608 () Bool)

(declare-fun tp!1928668 () Bool)

(assert (=> setNonEmpty!47608 (= setRes!47608 (and tp!1928668 (inv!85820 setElem!47608) e!4197110))))

(declare-fun setRest!47608 () (Set Context!12360))

(assert (=> setNonEmpty!47608 (= setRest!47602 (set.union (set.insert setElem!47608 (as set.empty (Set Context!12360))) setRest!47608))))

(declare-fun b!6983290 () Bool)

(declare-fun tp!1928669 () Bool)

(assert (=> b!6983290 (= e!4197110 tp!1928669)))

(assert (= (and setNonEmpty!47602 condSetEmpty!47608) setIsEmpty!47608))

(assert (= (and setNonEmpty!47602 (not condSetEmpty!47608)) setNonEmpty!47608))

(assert (= setNonEmpty!47608 b!6983290))

(declare-fun m!7670222 () Bool)

(assert (=> setNonEmpty!47608 m!7670222))

(declare-fun b_lambda!261909 () Bool)

(assert (= b_lambda!261899 (or b!6983101 b_lambda!261909)))

(declare-fun bs!1861218 () Bool)

(declare-fun d!2174874 () Bool)

(assert (= bs!1861218 (and d!2174874 b!6983101)))

(declare-fun validRegex!8843 (Regex!17184) Bool)

(assert (=> bs!1861218 (= (dynLambda!26797 lambda!399646 (h!73421 (exprs!6680 ct2!306))) (validRegex!8843 (h!73421 (exprs!6680 ct2!306))))))

(declare-fun m!7670224 () Bool)

(assert (=> bs!1861218 m!7670224))

(assert (=> b!6983171 d!2174874))

(declare-fun b_lambda!261911 () Bool)

(assert (= b_lambda!261903 (or b!6983092 b_lambda!261911)))

(declare-fun bs!1861219 () Bool)

(declare-fun d!2174876 () Bool)

(assert (= bs!1861219 (and d!2174876 b!6983092)))

(assert (=> bs!1861219 (= (dynLambda!26799 lambda!399647 lt!2482689) (derivationStepZipperUp!1834 lt!2482689 (h!73422 s!7408)))))

(assert (=> bs!1861219 m!7669948))

(assert (=> d!2174824 d!2174876))

(declare-fun b_lambda!261913 () Bool)

(assert (= b_lambda!261905 (or b!6983094 b_lambda!261913)))

(declare-fun bs!1861220 () Bool)

(declare-fun d!2174878 () Bool)

(assert (= bs!1861220 (and d!2174878 b!6983094)))

(assert (=> bs!1861220 (= (dynLambda!26800 lambda!399644 lt!2482785) (matchZipper!2724 (set.insert lt!2482785 (as set.empty (Set Context!12360))) s!7408))))

(declare-fun m!7670226 () Bool)

(assert (=> bs!1861220 m!7670226))

(assert (=> bs!1861220 m!7670226))

(declare-fun m!7670228 () Bool)

(assert (=> bs!1861220 m!7670228))

(assert (=> d!2174842 d!2174878))

(declare-fun b_lambda!261915 () Bool)

(assert (= b_lambda!261907 (or b!6983101 b_lambda!261915)))

(declare-fun bs!1861221 () Bool)

(declare-fun d!2174880 () Bool)

(assert (= bs!1861221 (and d!2174880 b!6983101)))

(assert (=> bs!1861221 (= (dynLambda!26797 lambda!399646 (h!73421 lt!2482672)) (validRegex!8843 (h!73421 lt!2482672)))))

(declare-fun m!7670230 () Bool)

(assert (=> bs!1861221 m!7670230))

(assert (=> b!6983224 d!2174880))

(declare-fun b_lambda!261917 () Bool)

(assert (= b_lambda!261901 (or b!6983101 b_lambda!261917)))

(declare-fun bs!1861222 () Bool)

(declare-fun d!2174882 () Bool)

(assert (= bs!1861222 (and d!2174882 b!6983101)))

(declare-fun lt!2482794 () Unit!161022)

(assert (=> bs!1861222 (= lt!2482794 (lemmaConcatPreservesForall!520 (exprs!6680 lt!2482774) (exprs!6680 ct2!306) lambda!399646))))

(assert (=> bs!1861222 (= (dynLambda!26798 lambda!399645 lt!2482774) (Context!12361 (++!15129 (exprs!6680 lt!2482774) (exprs!6680 ct2!306))))))

(declare-fun m!7670232 () Bool)

(assert (=> bs!1861222 m!7670232))

(declare-fun m!7670234 () Bool)

(assert (=> bs!1861222 m!7670234))

(assert (=> d!2174822 d!2174882))

(push 1)

(assert (not b!6983228))

(assert (not b_lambda!261909))

(assert (not d!2174854))

(assert (not b!6983172))

(assert (not bm!633791))

(assert (not d!2174836))

(assert (not b!6983220))

(assert (not b_lambda!261913))

(assert (not d!2174860))

(assert (not b_lambda!261911))

(assert (not d!2174842))

(assert (not b!6983273))

(assert (not b!6983290))

(assert (not bs!1861219))

(assert (not b!6983210))

(assert (not bm!633793))

(assert (not bm!633787))

(assert (not b!6983259))

(assert (not b!6983214))

(assert (not d!2174818))

(assert (not d!2174848))

(assert (not bs!1861218))

(assert (not b!6983285))

(assert (not setNonEmpty!47608))

(assert (not d!2174824))

(assert (not b!6983225))

(assert (not d!2174870))

(assert (not d!2174820))

(assert (not d!2174850))

(assert (not b_lambda!261917))

(assert (not b!6983232))

(assert (not b!6983182))

(assert (not b!6983272))

(assert (not b_lambda!261915))

(assert (not d!2174840))

(assert (not d!2174844))

(assert (not bm!633774))

(assert (not b!6983284))

(assert (not d!2174862))

(assert (not b!6983270))

(assert (not b!6983227))

(assert (not bs!1861221))

(assert (not b!6983226))

(assert (not d!2174858))

(assert tp_is_empty!43593)

(assert (not bs!1861220))

(assert (not d!2174838))

(assert (not d!2174856))

(assert (not b!6983222))

(assert (not b!6983202))

(assert (not b!6983279))

(assert (not bs!1861222))

(assert (not d!2174830))

(assert (not b!6983223))

(assert (not b!6983267))

(assert (not bm!633789))

(assert (not d!2174834))

(assert (not d!2174832))

(assert (not b!6983183))

(assert (not d!2174822))

(assert (not b!6983221))

(assert (not b!6983205))

(assert (not b!6983229))

(assert (not d!2174846))

(assert (not d!2174826))

(assert (not b!6983211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


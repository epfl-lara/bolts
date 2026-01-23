; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670410 () Bool)

(assert start!670410)

(declare-fun b!6983398 () Bool)

(assert (=> b!6983398 true))

(declare-fun b!6983409 () Bool)

(assert (=> b!6983409 true))

(declare-fun b!6983401 () Bool)

(assert (=> b!6983401 true))

(declare-fun b!6983397 () Bool)

(declare-fun e!4197186 () Bool)

(declare-fun e!4197193 () Bool)

(assert (=> b!6983397 (= e!4197186 e!4197193)))

(declare-fun res!2847695 () Bool)

(assert (=> b!6983397 (=> res!2847695 e!4197193)))

(declare-datatypes ((C!34642 0))(
  ( (C!34643 (val!27023 Int)) )
))
(declare-datatypes ((Regex!17186 0))(
  ( (ElementMatch!17186 (c!1294754 C!34642)) (Concat!26031 (regOne!34884 Regex!17186) (regTwo!34884 Regex!17186)) (EmptyExpr!17186) (Star!17186 (reg!17515 Regex!17186)) (EmptyLang!17186) (Union!17186 (regOne!34885 Regex!17186) (regTwo!34885 Regex!17186)) )
))
(declare-datatypes ((List!67103 0))(
  ( (Nil!66979) (Cons!66979 (h!73427 Regex!17186) (t!380848 List!67103)) )
))
(declare-datatypes ((Context!12364 0))(
  ( (Context!12365 (exprs!6682 List!67103)) )
))
(declare-fun lt!2482887 () (Set Context!12364))

(declare-fun lt!2482868 () (Set Context!12364))

(assert (=> b!6983397 (= res!2847695 (not (= lt!2482887 lt!2482868)))))

(declare-fun lt!2482881 () Context!12364)

(assert (=> b!6983397 (= lt!2482887 (set.insert lt!2482881 (as set.empty (Set Context!12364))))))

(declare-fun lt!2482880 () Context!12364)

(declare-fun lambda!399730 () Int)

(declare-datatypes ((Unit!161026 0))(
  ( (Unit!161027) )
))
(declare-fun lt!2482884 () Unit!161026)

(declare-fun ct2!306 () Context!12364)

(declare-fun lemmaConcatPreservesForall!522 (List!67103 List!67103 Int) Unit!161026)

(assert (=> b!6983397 (= lt!2482884 (lemmaConcatPreservesForall!522 (exprs!6682 lt!2482880) (exprs!6682 ct2!306) lambda!399730))))

(declare-fun e!4197185 () Bool)

(declare-fun e!4197192 () Bool)

(assert (=> b!6983398 (= e!4197185 (not e!4197192))))

(declare-fun res!2847696 () Bool)

(assert (=> b!6983398 (=> res!2847696 e!4197192)))

(declare-datatypes ((List!67104 0))(
  ( (Nil!66980) (Cons!66980 (h!73428 C!34642) (t!380849 List!67104)) )
))
(declare-fun s!7408 () List!67104)

(declare-fun matchZipper!2726 ((Set Context!12364) List!67104) Bool)

(assert (=> b!6983398 (= res!2847696 (not (matchZipper!2726 lt!2482868 s!7408)))))

(declare-fun lt!2482890 () Context!12364)

(assert (=> b!6983398 (= lt!2482868 (set.insert lt!2482890 (as set.empty (Set Context!12364))))))

(declare-fun lt!2482879 () (Set Context!12364))

(declare-fun lambda!399728 () Int)

(declare-fun getWitness!1065 ((Set Context!12364) Int) Context!12364)

(assert (=> b!6983398 (= lt!2482890 (getWitness!1065 lt!2482879 lambda!399728))))

(declare-datatypes ((List!67105 0))(
  ( (Nil!66981) (Cons!66981 (h!73429 Context!12364) (t!380850 List!67105)) )
))
(declare-fun lt!2482872 () List!67105)

(declare-fun exists!2954 (List!67105 Int) Bool)

(assert (=> b!6983398 (exists!2954 lt!2482872 lambda!399728)))

(declare-fun lt!2482869 () Unit!161026)

(declare-fun lemmaZipperMatchesExistsMatchingContext!155 (List!67105 List!67104) Unit!161026)

(assert (=> b!6983398 (= lt!2482869 (lemmaZipperMatchesExistsMatchingContext!155 lt!2482872 s!7408))))

(declare-fun toList!10546 ((Set Context!12364)) List!67105)

(assert (=> b!6983398 (= lt!2482872 (toList!10546 lt!2482879))))

(declare-fun b!6983399 () Bool)

(declare-fun e!4197183 () Bool)

(declare-fun tp_is_empty!43597 () Bool)

(declare-fun tp!1928696 () Bool)

(assert (=> b!6983399 (= e!4197183 (and tp_is_empty!43597 tp!1928696))))

(declare-fun b!6983400 () Bool)

(declare-fun e!4197188 () Bool)

(declare-fun validRegex!8844 (Regex!17186) Bool)

(assert (=> b!6983400 (= e!4197188 (validRegex!8844 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun lt!2482877 () Unit!161026)

(declare-fun lt!2482889 () List!67103)

(assert (=> b!6983400 (= lt!2482877 (lemmaConcatPreservesForall!522 lt!2482889 (exprs!6682 ct2!306) lambda!399730))))

(declare-fun lt!2482867 () (Set Context!12364))

(declare-fun e!4197190 () Bool)

(assert (=> b!6983400 (= (matchZipper!2726 lt!2482867 (t!380849 s!7408)) e!4197190)))

(declare-fun res!2847697 () Bool)

(assert (=> b!6983400 (=> res!2847697 e!4197190)))

(declare-fun lt!2482874 () (Set Context!12364))

(assert (=> b!6983400 (= res!2847697 (matchZipper!2726 lt!2482874 (t!380849 s!7408)))))

(declare-fun lt!2482888 () (Set Context!12364))

(declare-fun lt!2482876 () Unit!161026)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1359 ((Set Context!12364) (Set Context!12364) List!67104) Unit!161026)

(assert (=> b!6983400 (= lt!2482876 (lemmaZipperConcatMatchesSameAsBothZippers!1359 lt!2482874 lt!2482888 (t!380849 s!7408)))))

(declare-fun lt!2482886 () Unit!161026)

(assert (=> b!6983400 (= lt!2482886 (lemmaConcatPreservesForall!522 lt!2482889 (exprs!6682 ct2!306) lambda!399730))))

(declare-fun lt!2482875 () Unit!161026)

(assert (=> b!6983400 (= lt!2482875 (lemmaConcatPreservesForall!522 lt!2482889 (exprs!6682 ct2!306) lambda!399730))))

(declare-fun e!4197189 () Bool)

(assert (=> b!6983401 (= e!4197193 e!4197189)))

(declare-fun res!2847694 () Bool)

(assert (=> b!6983401 (=> res!2847694 e!4197189)))

(declare-fun lt!2482883 () (Set Context!12364))

(declare-fun derivationStepZipper!2666 ((Set Context!12364) C!34642) (Set Context!12364))

(assert (=> b!6983401 (= res!2847694 (not (= (derivationStepZipper!2666 lt!2482887 (h!73428 s!7408)) lt!2482883)))))

(declare-fun lambda!399731 () Int)

(declare-fun flatMap!2172 ((Set Context!12364) Int) (Set Context!12364))

(declare-fun derivationStepZipperUp!1836 (Context!12364 C!34642) (Set Context!12364))

(assert (=> b!6983401 (= (flatMap!2172 lt!2482887 lambda!399731) (derivationStepZipperUp!1836 lt!2482881 (h!73428 s!7408)))))

(declare-fun lt!2482871 () Unit!161026)

(declare-fun lemmaFlatMapOnSingletonSet!1687 ((Set Context!12364) Context!12364 Int) Unit!161026)

(assert (=> b!6983401 (= lt!2482871 (lemmaFlatMapOnSingletonSet!1687 lt!2482887 lt!2482881 lambda!399731))))

(assert (=> b!6983401 (= lt!2482883 (derivationStepZipperUp!1836 lt!2482881 (h!73428 s!7408)))))

(declare-fun lt!2482870 () Unit!161026)

(assert (=> b!6983401 (= lt!2482870 (lemmaConcatPreservesForall!522 (exprs!6682 lt!2482880) (exprs!6682 ct2!306) lambda!399730))))

(declare-fun b!6983402 () Bool)

(declare-fun res!2847693 () Bool)

(assert (=> b!6983402 (=> (not res!2847693) (not e!4197185))))

(assert (=> b!6983402 (= res!2847693 (is-Cons!66980 s!7408))))

(declare-fun b!6983403 () Bool)

(declare-fun res!2847689 () Bool)

(assert (=> b!6983403 (=> res!2847689 e!4197192)))

(assert (=> b!6983403 (= res!2847689 (not (set.member lt!2482890 lt!2482879)))))

(declare-fun b!6983404 () Bool)

(assert (=> b!6983404 (= e!4197190 (matchZipper!2726 lt!2482888 (t!380849 s!7408)))))

(declare-fun setIsEmpty!47614 () Bool)

(declare-fun setRes!47614 () Bool)

(assert (=> setIsEmpty!47614 setRes!47614))

(declare-fun res!2847699 () Bool)

(assert (=> start!670410 (=> (not res!2847699) (not e!4197185))))

(assert (=> start!670410 (= res!2847699 (matchZipper!2726 lt!2482879 s!7408))))

(declare-fun z1!570 () (Set Context!12364))

(declare-fun appendTo!307 ((Set Context!12364) Context!12364) (Set Context!12364))

(assert (=> start!670410 (= lt!2482879 (appendTo!307 z1!570 ct2!306))))

(assert (=> start!670410 e!4197185))

(declare-fun condSetEmpty!47614 () Bool)

(assert (=> start!670410 (= condSetEmpty!47614 (= z1!570 (as set.empty (Set Context!12364))))))

(assert (=> start!670410 setRes!47614))

(declare-fun e!4197184 () Bool)

(declare-fun inv!85825 (Context!12364) Bool)

(assert (=> start!670410 (and (inv!85825 ct2!306) e!4197184)))

(assert (=> start!670410 e!4197183))

(declare-fun b!6983405 () Bool)

(declare-fun e!4197191 () Bool)

(assert (=> b!6983405 (= e!4197189 e!4197191)))

(declare-fun res!2847698 () Bool)

(assert (=> b!6983405 (=> res!2847698 e!4197191)))

(declare-fun nullable!6946 (Regex!17186) Bool)

(assert (=> b!6983405 (= res!2847698 (not (nullable!6946 (h!73427 (exprs!6682 lt!2482880)))))))

(declare-fun tail!13172 (List!67103) List!67103)

(assert (=> b!6983405 (= lt!2482889 (tail!13172 (exprs!6682 lt!2482880)))))

(declare-fun b!6983406 () Bool)

(declare-fun tp!1928697 () Bool)

(assert (=> b!6983406 (= e!4197184 tp!1928697)))

(declare-fun b!6983407 () Bool)

(assert (=> b!6983407 (= e!4197191 e!4197188)))

(declare-fun res!2847692 () Bool)

(assert (=> b!6983407 (=> res!2847692 e!4197188)))

(assert (=> b!6983407 (= res!2847692 (not (= lt!2482883 lt!2482867)))))

(assert (=> b!6983407 (= lt!2482867 (set.union lt!2482874 lt!2482888))))

(declare-fun lt!2482882 () Context!12364)

(assert (=> b!6983407 (= lt!2482888 (derivationStepZipperUp!1836 lt!2482882 (h!73428 s!7408)))))

(declare-fun derivationStepZipperDown!1904 (Regex!17186 Context!12364 C!34642) (Set Context!12364))

(assert (=> b!6983407 (= lt!2482874 (derivationStepZipperDown!1904 (h!73427 (exprs!6682 lt!2482880)) lt!2482882 (h!73428 s!7408)))))

(declare-fun ++!15131 (List!67103 List!67103) List!67103)

(assert (=> b!6983407 (= lt!2482882 (Context!12365 (++!15131 lt!2482889 (exprs!6682 ct2!306))))))

(declare-fun lt!2482878 () Unit!161026)

(assert (=> b!6983407 (= lt!2482878 (lemmaConcatPreservesForall!522 lt!2482889 (exprs!6682 ct2!306) lambda!399730))))

(declare-fun lt!2482885 () Unit!161026)

(assert (=> b!6983407 (= lt!2482885 (lemmaConcatPreservesForall!522 lt!2482889 (exprs!6682 ct2!306) lambda!399730))))

(declare-fun b!6983408 () Bool)

(declare-fun res!2847690 () Bool)

(assert (=> b!6983408 (=> res!2847690 e!4197189)))

(declare-fun isEmpty!39096 (List!67103) Bool)

(assert (=> b!6983408 (= res!2847690 (isEmpty!39096 (exprs!6682 lt!2482880)))))

(assert (=> b!6983409 (= e!4197192 e!4197186)))

(declare-fun res!2847691 () Bool)

(assert (=> b!6983409 (=> res!2847691 e!4197186)))

(assert (=> b!6983409 (= res!2847691 (or (not (= lt!2482881 lt!2482890)) (not (set.member lt!2482880 z1!570))))))

(assert (=> b!6983409 (= lt!2482881 (Context!12365 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306))))))

(declare-fun lt!2482873 () Unit!161026)

(assert (=> b!6983409 (= lt!2482873 (lemmaConcatPreservesForall!522 (exprs!6682 lt!2482880) (exprs!6682 ct2!306) lambda!399730))))

(declare-fun lambda!399729 () Int)

(declare-fun mapPost2!41 ((Set Context!12364) Int Context!12364) Context!12364)

(assert (=> b!6983409 (= lt!2482880 (mapPost2!41 z1!570 lambda!399729 lt!2482890))))

(declare-fun b!6983410 () Bool)

(declare-fun e!4197187 () Bool)

(declare-fun tp!1928695 () Bool)

(assert (=> b!6983410 (= e!4197187 tp!1928695)))

(declare-fun setElem!47614 () Context!12364)

(declare-fun setNonEmpty!47614 () Bool)

(declare-fun tp!1928698 () Bool)

(assert (=> setNonEmpty!47614 (= setRes!47614 (and tp!1928698 (inv!85825 setElem!47614) e!4197187))))

(declare-fun setRest!47614 () (Set Context!12364))

(assert (=> setNonEmpty!47614 (= z1!570 (set.union (set.insert setElem!47614 (as set.empty (Set Context!12364))) setRest!47614))))

(declare-fun b!6983411 () Bool)

(declare-fun res!2847700 () Bool)

(assert (=> b!6983411 (=> res!2847700 e!4197189)))

(assert (=> b!6983411 (= res!2847700 (not (is-Cons!66979 (exprs!6682 lt!2482880))))))

(assert (= (and start!670410 res!2847699) b!6983402))

(assert (= (and b!6983402 res!2847693) b!6983398))

(assert (= (and b!6983398 (not res!2847696)) b!6983403))

(assert (= (and b!6983403 (not res!2847689)) b!6983409))

(assert (= (and b!6983409 (not res!2847691)) b!6983397))

(assert (= (and b!6983397 (not res!2847695)) b!6983401))

(assert (= (and b!6983401 (not res!2847694)) b!6983411))

(assert (= (and b!6983411 (not res!2847700)) b!6983408))

(assert (= (and b!6983408 (not res!2847690)) b!6983405))

(assert (= (and b!6983405 (not res!2847698)) b!6983407))

(assert (= (and b!6983407 (not res!2847692)) b!6983400))

(assert (= (and b!6983400 (not res!2847697)) b!6983404))

(assert (= (and start!670410 condSetEmpty!47614) setIsEmpty!47614))

(assert (= (and start!670410 (not condSetEmpty!47614)) setNonEmpty!47614))

(assert (= setNonEmpty!47614 b!6983410))

(assert (= start!670410 b!6983406))

(assert (= (and start!670410 (is-Cons!66980 s!7408)) b!6983399))

(declare-fun m!7670330 () Bool)

(assert (=> b!6983401 m!7670330))

(declare-fun m!7670332 () Bool)

(assert (=> b!6983401 m!7670332))

(declare-fun m!7670334 () Bool)

(assert (=> b!6983401 m!7670334))

(declare-fun m!7670336 () Bool)

(assert (=> b!6983401 m!7670336))

(declare-fun m!7670338 () Bool)

(assert (=> b!6983401 m!7670338))

(declare-fun m!7670340 () Bool)

(assert (=> b!6983408 m!7670340))

(declare-fun m!7670342 () Bool)

(assert (=> b!6983398 m!7670342))

(declare-fun m!7670344 () Bool)

(assert (=> b!6983398 m!7670344))

(declare-fun m!7670346 () Bool)

(assert (=> b!6983398 m!7670346))

(declare-fun m!7670348 () Bool)

(assert (=> b!6983398 m!7670348))

(declare-fun m!7670350 () Bool)

(assert (=> b!6983398 m!7670350))

(declare-fun m!7670352 () Bool)

(assert (=> b!6983398 m!7670352))

(declare-fun m!7670354 () Bool)

(assert (=> setNonEmpty!47614 m!7670354))

(declare-fun m!7670356 () Bool)

(assert (=> b!6983409 m!7670356))

(declare-fun m!7670358 () Bool)

(assert (=> b!6983409 m!7670358))

(assert (=> b!6983409 m!7670330))

(declare-fun m!7670360 () Bool)

(assert (=> b!6983409 m!7670360))

(declare-fun m!7670362 () Bool)

(assert (=> b!6983403 m!7670362))

(declare-fun m!7670364 () Bool)

(assert (=> b!6983397 m!7670364))

(assert (=> b!6983397 m!7670330))

(declare-fun m!7670366 () Bool)

(assert (=> b!6983407 m!7670366))

(declare-fun m!7670368 () Bool)

(assert (=> b!6983407 m!7670368))

(declare-fun m!7670370 () Bool)

(assert (=> b!6983407 m!7670370))

(declare-fun m!7670372 () Bool)

(assert (=> b!6983407 m!7670372))

(assert (=> b!6983407 m!7670370))

(declare-fun m!7670374 () Bool)

(assert (=> b!6983404 m!7670374))

(assert (=> b!6983400 m!7670370))

(assert (=> b!6983400 m!7670370))

(declare-fun m!7670376 () Bool)

(assert (=> b!6983400 m!7670376))

(declare-fun m!7670378 () Bool)

(assert (=> b!6983400 m!7670378))

(assert (=> b!6983400 m!7670370))

(declare-fun m!7670380 () Bool)

(assert (=> b!6983400 m!7670380))

(declare-fun m!7670382 () Bool)

(assert (=> b!6983400 m!7670382))

(declare-fun m!7670384 () Bool)

(assert (=> start!670410 m!7670384))

(declare-fun m!7670386 () Bool)

(assert (=> start!670410 m!7670386))

(declare-fun m!7670388 () Bool)

(assert (=> start!670410 m!7670388))

(declare-fun m!7670390 () Bool)

(assert (=> b!6983405 m!7670390))

(declare-fun m!7670392 () Bool)

(assert (=> b!6983405 m!7670392))

(push 1)

(assert (not b!6983400))

(assert (not b!6983404))

(assert (not b!6983406))

(assert tp_is_empty!43597)

(assert (not b!6983398))

(assert (not b!6983407))

(assert (not b!6983399))

(assert (not b!6983401))

(assert (not start!670410))

(assert (not b!6983408))

(assert (not b!6983405))

(assert (not b!6983410))

(assert (not b!6983409))

(assert (not b!6983397))

(assert (not setNonEmpty!47614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2174921 () Bool)

(assert (=> d!2174921 (= (isEmpty!39096 (exprs!6682 lt!2482880)) (is-Nil!66979 (exprs!6682 lt!2482880)))))

(assert (=> b!6983408 d!2174921))

(declare-fun d!2174923 () Bool)

(declare-fun e!4197229 () Bool)

(assert (=> d!2174923 e!4197229))

(declare-fun res!2847740 () Bool)

(assert (=> d!2174923 (=> (not res!2847740) (not e!4197229))))

(declare-fun lt!2482967 () Context!12364)

(declare-fun dynLambda!26802 (Int Context!12364) Bool)

(assert (=> d!2174923 (= res!2847740 (dynLambda!26802 lambda!399728 lt!2482967))))

(declare-fun getWitness!1067 (List!67105 Int) Context!12364)

(assert (=> d!2174923 (= lt!2482967 (getWitness!1067 (toList!10546 lt!2482879) lambda!399728))))

(declare-fun exists!2956 ((Set Context!12364) Int) Bool)

(assert (=> d!2174923 (exists!2956 lt!2482879 lambda!399728)))

(assert (=> d!2174923 (= (getWitness!1065 lt!2482879 lambda!399728) lt!2482967)))

(declare-fun b!6983471 () Bool)

(assert (=> b!6983471 (= e!4197229 (set.member lt!2482967 lt!2482879))))

(assert (= (and d!2174923 res!2847740) b!6983471))

(declare-fun b_lambda!261939 () Bool)

(assert (=> (not b_lambda!261939) (not d!2174923)))

(declare-fun m!7670458 () Bool)

(assert (=> d!2174923 m!7670458))

(assert (=> d!2174923 m!7670350))

(assert (=> d!2174923 m!7670350))

(declare-fun m!7670460 () Bool)

(assert (=> d!2174923 m!7670460))

(declare-fun m!7670462 () Bool)

(assert (=> d!2174923 m!7670462))

(declare-fun m!7670464 () Bool)

(assert (=> b!6983471 m!7670464))

(assert (=> b!6983398 d!2174923))

(declare-fun d!2174925 () Bool)

(declare-fun c!1294766 () Bool)

(declare-fun isEmpty!39098 (List!67104) Bool)

(assert (=> d!2174925 (= c!1294766 (isEmpty!39098 s!7408))))

(declare-fun e!4197232 () Bool)

(assert (=> d!2174925 (= (matchZipper!2726 lt!2482868 s!7408) e!4197232)))

(declare-fun b!6983476 () Bool)

(declare-fun nullableZipper!2413 ((Set Context!12364)) Bool)

(assert (=> b!6983476 (= e!4197232 (nullableZipper!2413 lt!2482868))))

(declare-fun b!6983477 () Bool)

(declare-fun head!14087 (List!67104) C!34642)

(declare-fun tail!13174 (List!67104) List!67104)

(assert (=> b!6983477 (= e!4197232 (matchZipper!2726 (derivationStepZipper!2666 lt!2482868 (head!14087 s!7408)) (tail!13174 s!7408)))))

(assert (= (and d!2174925 c!1294766) b!6983476))

(assert (= (and d!2174925 (not c!1294766)) b!6983477))

(declare-fun m!7670466 () Bool)

(assert (=> d!2174925 m!7670466))

(declare-fun m!7670468 () Bool)

(assert (=> b!6983476 m!7670468))

(declare-fun m!7670470 () Bool)

(assert (=> b!6983477 m!7670470))

(assert (=> b!6983477 m!7670470))

(declare-fun m!7670472 () Bool)

(assert (=> b!6983477 m!7670472))

(declare-fun m!7670474 () Bool)

(assert (=> b!6983477 m!7670474))

(assert (=> b!6983477 m!7670472))

(assert (=> b!6983477 m!7670474))

(declare-fun m!7670476 () Bool)

(assert (=> b!6983477 m!7670476))

(assert (=> b!6983398 d!2174925))

(declare-fun bs!1861233 () Bool)

(declare-fun d!2174927 () Bool)

(assert (= bs!1861233 (and d!2174927 b!6983398)))

(declare-fun lambda!399764 () Int)

(assert (=> bs!1861233 (not (= lambda!399764 lambda!399728))))

(assert (=> d!2174927 true))

(declare-fun order!27867 () Int)

(declare-fun dynLambda!26803 (Int Int) Int)

(assert (=> d!2174927 (< (dynLambda!26803 order!27867 lambda!399728) (dynLambda!26803 order!27867 lambda!399764))))

(declare-fun forall!16084 (List!67105 Int) Bool)

(assert (=> d!2174927 (= (exists!2954 lt!2482872 lambda!399728) (not (forall!16084 lt!2482872 lambda!399764)))))

(declare-fun bs!1861234 () Bool)

(assert (= bs!1861234 d!2174927))

(declare-fun m!7670478 () Bool)

(assert (=> bs!1861234 m!7670478))

(assert (=> b!6983398 d!2174927))

(declare-fun d!2174929 () Bool)

(declare-fun e!4197235 () Bool)

(assert (=> d!2174929 e!4197235))

(declare-fun res!2847743 () Bool)

(assert (=> d!2174929 (=> (not res!2847743) (not e!4197235))))

(declare-fun lt!2482970 () List!67105)

(declare-fun noDuplicate!2503 (List!67105) Bool)

(assert (=> d!2174929 (= res!2847743 (noDuplicate!2503 lt!2482970))))

(declare-fun choose!52106 ((Set Context!12364)) List!67105)

(assert (=> d!2174929 (= lt!2482970 (choose!52106 lt!2482879))))

(assert (=> d!2174929 (= (toList!10546 lt!2482879) lt!2482970)))

(declare-fun b!6983482 () Bool)

(declare-fun content!13220 (List!67105) (Set Context!12364))

(assert (=> b!6983482 (= e!4197235 (= (content!13220 lt!2482970) lt!2482879))))

(assert (= (and d!2174929 res!2847743) b!6983482))

(declare-fun m!7670480 () Bool)

(assert (=> d!2174929 m!7670480))

(declare-fun m!7670482 () Bool)

(assert (=> d!2174929 m!7670482))

(declare-fun m!7670484 () Bool)

(assert (=> b!6983482 m!7670484))

(assert (=> b!6983398 d!2174929))

(declare-fun bs!1861235 () Bool)

(declare-fun d!2174931 () Bool)

(assert (= bs!1861235 (and d!2174931 b!6983398)))

(declare-fun lambda!399767 () Int)

(assert (=> bs!1861235 (= lambda!399767 lambda!399728)))

(declare-fun bs!1861236 () Bool)

(assert (= bs!1861236 (and d!2174931 d!2174927)))

(assert (=> bs!1861236 (not (= lambda!399767 lambda!399764))))

(assert (=> d!2174931 true))

(assert (=> d!2174931 (exists!2954 lt!2482872 lambda!399767)))

(declare-fun lt!2482973 () Unit!161026)

(declare-fun choose!52107 (List!67105 List!67104) Unit!161026)

(assert (=> d!2174931 (= lt!2482973 (choose!52107 lt!2482872 s!7408))))

(assert (=> d!2174931 (matchZipper!2726 (content!13220 lt!2482872) s!7408)))

(assert (=> d!2174931 (= (lemmaZipperMatchesExistsMatchingContext!155 lt!2482872 s!7408) lt!2482973)))

(declare-fun bs!1861237 () Bool)

(assert (= bs!1861237 d!2174931))

(declare-fun m!7670486 () Bool)

(assert (=> bs!1861237 m!7670486))

(declare-fun m!7670488 () Bool)

(assert (=> bs!1861237 m!7670488))

(declare-fun m!7670490 () Bool)

(assert (=> bs!1861237 m!7670490))

(assert (=> bs!1861237 m!7670490))

(declare-fun m!7670492 () Bool)

(assert (=> bs!1861237 m!7670492))

(assert (=> b!6983398 d!2174931))

(declare-fun d!2174933 () Bool)

(declare-fun c!1294773 () Bool)

(declare-fun e!4197243 () Bool)

(assert (=> d!2174933 (= c!1294773 e!4197243)))

(declare-fun res!2847746 () Bool)

(assert (=> d!2174933 (=> (not res!2847746) (not e!4197243))))

(assert (=> d!2174933 (= res!2847746 (is-Cons!66979 (exprs!6682 lt!2482882)))))

(declare-fun e!4197242 () (Set Context!12364))

(assert (=> d!2174933 (= (derivationStepZipperUp!1836 lt!2482882 (h!73428 s!7408)) e!4197242)))

(declare-fun call!633804 () (Set Context!12364))

(declare-fun b!6983493 () Bool)

(assert (=> b!6983493 (= e!4197242 (set.union call!633804 (derivationStepZipperUp!1836 (Context!12365 (t!380848 (exprs!6682 lt!2482882))) (h!73428 s!7408))))))

(declare-fun bm!633799 () Bool)

(assert (=> bm!633799 (= call!633804 (derivationStepZipperDown!1904 (h!73427 (exprs!6682 lt!2482882)) (Context!12365 (t!380848 (exprs!6682 lt!2482882))) (h!73428 s!7408)))))

(declare-fun b!6983494 () Bool)

(declare-fun e!4197244 () (Set Context!12364))

(assert (=> b!6983494 (= e!4197244 (as set.empty (Set Context!12364)))))

(declare-fun b!6983495 () Bool)

(assert (=> b!6983495 (= e!4197244 call!633804)))

(declare-fun b!6983496 () Bool)

(assert (=> b!6983496 (= e!4197242 e!4197244)))

(declare-fun c!1294774 () Bool)

(assert (=> b!6983496 (= c!1294774 (is-Cons!66979 (exprs!6682 lt!2482882)))))

(declare-fun b!6983497 () Bool)

(assert (=> b!6983497 (= e!4197243 (nullable!6946 (h!73427 (exprs!6682 lt!2482882))))))

(assert (= (and d!2174933 res!2847746) b!6983497))

(assert (= (and d!2174933 c!1294773) b!6983493))

(assert (= (and d!2174933 (not c!1294773)) b!6983496))

(assert (= (and b!6983496 c!1294774) b!6983495))

(assert (= (and b!6983496 (not c!1294774)) b!6983494))

(assert (= (or b!6983493 b!6983495) bm!633799))

(declare-fun m!7670494 () Bool)

(assert (=> b!6983493 m!7670494))

(declare-fun m!7670496 () Bool)

(assert (=> bm!633799 m!7670496))

(declare-fun m!7670498 () Bool)

(assert (=> b!6983497 m!7670498))

(assert (=> b!6983407 d!2174933))

(declare-fun d!2174935 () Bool)

(declare-fun forall!16085 (List!67103 Int) Bool)

(assert (=> d!2174935 (forall!16085 (++!15131 lt!2482889 (exprs!6682 ct2!306)) lambda!399730)))

(declare-fun lt!2482976 () Unit!161026)

(declare-fun choose!52108 (List!67103 List!67103 Int) Unit!161026)

(assert (=> d!2174935 (= lt!2482976 (choose!52108 lt!2482889 (exprs!6682 ct2!306) lambda!399730))))

(assert (=> d!2174935 (forall!16085 lt!2482889 lambda!399730)))

(assert (=> d!2174935 (= (lemmaConcatPreservesForall!522 lt!2482889 (exprs!6682 ct2!306) lambda!399730) lt!2482976)))

(declare-fun bs!1861238 () Bool)

(assert (= bs!1861238 d!2174935))

(assert (=> bs!1861238 m!7670372))

(assert (=> bs!1861238 m!7670372))

(declare-fun m!7670500 () Bool)

(assert (=> bs!1861238 m!7670500))

(declare-fun m!7670502 () Bool)

(assert (=> bs!1861238 m!7670502))

(declare-fun m!7670504 () Bool)

(assert (=> bs!1861238 m!7670504))

(assert (=> b!6983407 d!2174935))

(declare-fun b!6983508 () Bool)

(declare-fun res!2847751 () Bool)

(declare-fun e!4197250 () Bool)

(assert (=> b!6983508 (=> (not res!2847751) (not e!4197250))))

(declare-fun lt!2482979 () List!67103)

(declare-fun size!40885 (List!67103) Int)

(assert (=> b!6983508 (= res!2847751 (= (size!40885 lt!2482979) (+ (size!40885 lt!2482889) (size!40885 (exprs!6682 ct2!306)))))))

(declare-fun b!6983509 () Bool)

(assert (=> b!6983509 (= e!4197250 (or (not (= (exprs!6682 ct2!306) Nil!66979)) (= lt!2482979 lt!2482889)))))

(declare-fun b!6983507 () Bool)

(declare-fun e!4197249 () List!67103)

(assert (=> b!6983507 (= e!4197249 (Cons!66979 (h!73427 lt!2482889) (++!15131 (t!380848 lt!2482889) (exprs!6682 ct2!306))))))

(declare-fun d!2174937 () Bool)

(assert (=> d!2174937 e!4197250))

(declare-fun res!2847752 () Bool)

(assert (=> d!2174937 (=> (not res!2847752) (not e!4197250))))

(declare-fun content!13221 (List!67103) (Set Regex!17186))

(assert (=> d!2174937 (= res!2847752 (= (content!13221 lt!2482979) (set.union (content!13221 lt!2482889) (content!13221 (exprs!6682 ct2!306)))))))

(assert (=> d!2174937 (= lt!2482979 e!4197249)))

(declare-fun c!1294777 () Bool)

(assert (=> d!2174937 (= c!1294777 (is-Nil!66979 lt!2482889))))

(assert (=> d!2174937 (= (++!15131 lt!2482889 (exprs!6682 ct2!306)) lt!2482979)))

(declare-fun b!6983506 () Bool)

(assert (=> b!6983506 (= e!4197249 (exprs!6682 ct2!306))))

(assert (= (and d!2174937 c!1294777) b!6983506))

(assert (= (and d!2174937 (not c!1294777)) b!6983507))

(assert (= (and d!2174937 res!2847752) b!6983508))

(assert (= (and b!6983508 res!2847751) b!6983509))

(declare-fun m!7670506 () Bool)

(assert (=> b!6983508 m!7670506))

(declare-fun m!7670508 () Bool)

(assert (=> b!6983508 m!7670508))

(declare-fun m!7670510 () Bool)

(assert (=> b!6983508 m!7670510))

(declare-fun m!7670512 () Bool)

(assert (=> b!6983507 m!7670512))

(declare-fun m!7670514 () Bool)

(assert (=> d!2174937 m!7670514))

(declare-fun m!7670516 () Bool)

(assert (=> d!2174937 m!7670516))

(declare-fun m!7670518 () Bool)

(assert (=> d!2174937 m!7670518))

(assert (=> b!6983407 d!2174937))

(declare-fun bm!633812 () Bool)

(declare-fun c!1294791 () Bool)

(declare-fun call!633820 () List!67103)

(declare-fun c!1294788 () Bool)

(declare-fun $colon$colon!2465 (List!67103 Regex!17186) List!67103)

(assert (=> bm!633812 (= call!633820 ($colon$colon!2465 (exprs!6682 lt!2482882) (ite (or c!1294788 c!1294791) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (h!73427 (exprs!6682 lt!2482880)))))))

(declare-fun bm!633813 () Bool)

(declare-fun call!633822 () (Set Context!12364))

(declare-fun call!633817 () (Set Context!12364))

(assert (=> bm!633813 (= call!633822 call!633817)))

(declare-fun b!6983532 () Bool)

(declare-fun c!1294792 () Bool)

(assert (=> b!6983532 (= c!1294792 (is-Star!17186 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun e!4197268 () (Set Context!12364))

(declare-fun e!4197264 () (Set Context!12364))

(assert (=> b!6983532 (= e!4197268 e!4197264)))

(declare-fun call!633819 () List!67103)

(declare-fun c!1294789 () Bool)

(declare-fun bm!633814 () Bool)

(assert (=> bm!633814 (= call!633817 (derivationStepZipperDown!1904 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880)))))) (ite (or c!1294789 c!1294788) lt!2482882 (Context!12365 call!633819)) (h!73428 s!7408)))))

(declare-fun b!6983533 () Bool)

(assert (=> b!6983533 (= e!4197264 (as set.empty (Set Context!12364)))))

(declare-fun b!6983534 () Bool)

(declare-fun call!633821 () (Set Context!12364))

(assert (=> b!6983534 (= e!4197268 call!633821)))

(declare-fun b!6983535 () Bool)

(declare-fun e!4197266 () Bool)

(assert (=> b!6983535 (= e!4197266 (nullable!6946 (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))

(declare-fun b!6983536 () Bool)

(assert (=> b!6983536 (= e!4197264 call!633821)))

(declare-fun b!6983537 () Bool)

(declare-fun e!4197265 () (Set Context!12364))

(assert (=> b!6983537 (= e!4197265 (set.insert lt!2482882 (as set.empty (Set Context!12364))))))

(declare-fun b!6983538 () Bool)

(declare-fun e!4197267 () (Set Context!12364))

(assert (=> b!6983538 (= e!4197265 e!4197267)))

(assert (=> b!6983538 (= c!1294789 (is-Union!17186 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun bm!633816 () Bool)

(declare-fun call!633818 () (Set Context!12364))

(assert (=> bm!633816 (= call!633818 (derivationStepZipperDown!1904 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))) (ite c!1294789 lt!2482882 (Context!12365 call!633820)) (h!73428 s!7408)))))

(declare-fun b!6983539 () Bool)

(assert (=> b!6983539 (= e!4197267 (set.union call!633818 call!633817))))

(declare-fun b!6983540 () Bool)

(declare-fun e!4197263 () (Set Context!12364))

(assert (=> b!6983540 (= e!4197263 e!4197268)))

(assert (=> b!6983540 (= c!1294791 (is-Concat!26031 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun bm!633817 () Bool)

(assert (=> bm!633817 (= call!633821 call!633822)))

(declare-fun b!6983541 () Bool)

(assert (=> b!6983541 (= c!1294788 e!4197266)))

(declare-fun res!2847755 () Bool)

(assert (=> b!6983541 (=> (not res!2847755) (not e!4197266))))

(assert (=> b!6983541 (= res!2847755 (is-Concat!26031 (h!73427 (exprs!6682 lt!2482880))))))

(assert (=> b!6983541 (= e!4197267 e!4197263)))

(declare-fun b!6983542 () Bool)

(assert (=> b!6983542 (= e!4197263 (set.union call!633818 call!633822))))

(declare-fun d!2174939 () Bool)

(declare-fun c!1294790 () Bool)

(assert (=> d!2174939 (= c!1294790 (and (is-ElementMatch!17186 (h!73427 (exprs!6682 lt!2482880))) (= (c!1294754 (h!73427 (exprs!6682 lt!2482880))) (h!73428 s!7408))))))

(assert (=> d!2174939 (= (derivationStepZipperDown!1904 (h!73427 (exprs!6682 lt!2482880)) lt!2482882 (h!73428 s!7408)) e!4197265)))

(declare-fun bm!633815 () Bool)

(assert (=> bm!633815 (= call!633819 call!633820)))

(assert (= (and d!2174939 c!1294790) b!6983537))

(assert (= (and d!2174939 (not c!1294790)) b!6983538))

(assert (= (and b!6983538 c!1294789) b!6983539))

(assert (= (and b!6983538 (not c!1294789)) b!6983541))

(assert (= (and b!6983541 res!2847755) b!6983535))

(assert (= (and b!6983541 c!1294788) b!6983542))

(assert (= (and b!6983541 (not c!1294788)) b!6983540))

(assert (= (and b!6983540 c!1294791) b!6983534))

(assert (= (and b!6983540 (not c!1294791)) b!6983532))

(assert (= (and b!6983532 c!1294792) b!6983536))

(assert (= (and b!6983532 (not c!1294792)) b!6983533))

(assert (= (or b!6983534 b!6983536) bm!633815))

(assert (= (or b!6983534 b!6983536) bm!633817))

(assert (= (or b!6983542 bm!633817) bm!633813))

(assert (= (or b!6983542 bm!633815) bm!633812))

(assert (= (or b!6983539 b!6983542) bm!633816))

(assert (= (or b!6983539 bm!633813) bm!633814))

(declare-fun m!7670520 () Bool)

(assert (=> b!6983537 m!7670520))

(declare-fun m!7670522 () Bool)

(assert (=> b!6983535 m!7670522))

(declare-fun m!7670524 () Bool)

(assert (=> bm!633814 m!7670524))

(declare-fun m!7670526 () Bool)

(assert (=> bm!633812 m!7670526))

(declare-fun m!7670528 () Bool)

(assert (=> bm!633816 m!7670528))

(assert (=> b!6983407 d!2174939))

(declare-fun d!2174941 () Bool)

(assert (=> d!2174941 (forall!16085 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306)) lambda!399730)))

(declare-fun lt!2482980 () Unit!161026)

(assert (=> d!2174941 (= lt!2482980 (choose!52108 (exprs!6682 lt!2482880) (exprs!6682 ct2!306) lambda!399730))))

(assert (=> d!2174941 (forall!16085 (exprs!6682 lt!2482880) lambda!399730)))

(assert (=> d!2174941 (= (lemmaConcatPreservesForall!522 (exprs!6682 lt!2482880) (exprs!6682 ct2!306) lambda!399730) lt!2482980)))

(declare-fun bs!1861239 () Bool)

(assert (= bs!1861239 d!2174941))

(assert (=> bs!1861239 m!7670358))

(assert (=> bs!1861239 m!7670358))

(declare-fun m!7670530 () Bool)

(assert (=> bs!1861239 m!7670530))

(declare-fun m!7670532 () Bool)

(assert (=> bs!1861239 m!7670532))

(declare-fun m!7670534 () Bool)

(assert (=> bs!1861239 m!7670534))

(assert (=> b!6983397 d!2174941))

(declare-fun d!2174943 () Bool)

(declare-fun nullableFct!2616 (Regex!17186) Bool)

(assert (=> d!2174943 (= (nullable!6946 (h!73427 (exprs!6682 lt!2482880))) (nullableFct!2616 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun bs!1861240 () Bool)

(assert (= bs!1861240 d!2174943))

(declare-fun m!7670536 () Bool)

(assert (=> bs!1861240 m!7670536))

(assert (=> b!6983405 d!2174943))

(declare-fun d!2174945 () Bool)

(assert (=> d!2174945 (= (tail!13172 (exprs!6682 lt!2482880)) (t!380848 (exprs!6682 lt!2482880)))))

(assert (=> b!6983405 d!2174945))

(declare-fun d!2174947 () Bool)

(declare-fun c!1294793 () Bool)

(assert (=> d!2174947 (= c!1294793 (isEmpty!39098 s!7408))))

(declare-fun e!4197269 () Bool)

(assert (=> d!2174947 (= (matchZipper!2726 lt!2482879 s!7408) e!4197269)))

(declare-fun b!6983543 () Bool)

(assert (=> b!6983543 (= e!4197269 (nullableZipper!2413 lt!2482879))))

(declare-fun b!6983544 () Bool)

(assert (=> b!6983544 (= e!4197269 (matchZipper!2726 (derivationStepZipper!2666 lt!2482879 (head!14087 s!7408)) (tail!13174 s!7408)))))

(assert (= (and d!2174947 c!1294793) b!6983543))

(assert (= (and d!2174947 (not c!1294793)) b!6983544))

(assert (=> d!2174947 m!7670466))

(declare-fun m!7670538 () Bool)

(assert (=> b!6983543 m!7670538))

(assert (=> b!6983544 m!7670470))

(assert (=> b!6983544 m!7670470))

(declare-fun m!7670540 () Bool)

(assert (=> b!6983544 m!7670540))

(assert (=> b!6983544 m!7670474))

(assert (=> b!6983544 m!7670540))

(assert (=> b!6983544 m!7670474))

(declare-fun m!7670542 () Bool)

(assert (=> b!6983544 m!7670542))

(assert (=> start!670410 d!2174947))

(declare-fun bs!1861241 () Bool)

(declare-fun d!2174949 () Bool)

(assert (= bs!1861241 (and d!2174949 b!6983409)))

(declare-fun lambda!399772 () Int)

(assert (=> bs!1861241 (= lambda!399772 lambda!399729)))

(assert (=> d!2174949 true))

(declare-fun map!15443 ((Set Context!12364) Int) (Set Context!12364))

(assert (=> d!2174949 (= (appendTo!307 z1!570 ct2!306) (map!15443 z1!570 lambda!399772))))

(declare-fun bs!1861242 () Bool)

(assert (= bs!1861242 d!2174949))

(declare-fun m!7670544 () Bool)

(assert (=> bs!1861242 m!7670544))

(assert (=> start!670410 d!2174949))

(declare-fun bs!1861243 () Bool)

(declare-fun d!2174951 () Bool)

(assert (= bs!1861243 (and d!2174951 b!6983409)))

(declare-fun lambda!399775 () Int)

(assert (=> bs!1861243 (= lambda!399775 lambda!399730)))

(assert (=> d!2174951 (= (inv!85825 ct2!306) (forall!16085 (exprs!6682 ct2!306) lambda!399775))))

(declare-fun bs!1861244 () Bool)

(assert (= bs!1861244 d!2174951))

(declare-fun m!7670546 () Bool)

(assert (=> bs!1861244 m!7670546))

(assert (=> start!670410 d!2174951))

(declare-fun d!2174953 () Bool)

(declare-fun c!1294795 () Bool)

(assert (=> d!2174953 (= c!1294795 (isEmpty!39098 (t!380849 s!7408)))))

(declare-fun e!4197270 () Bool)

(assert (=> d!2174953 (= (matchZipper!2726 lt!2482888 (t!380849 s!7408)) e!4197270)))

(declare-fun b!6983545 () Bool)

(assert (=> b!6983545 (= e!4197270 (nullableZipper!2413 lt!2482888))))

(declare-fun b!6983546 () Bool)

(assert (=> b!6983546 (= e!4197270 (matchZipper!2726 (derivationStepZipper!2666 lt!2482888 (head!14087 (t!380849 s!7408))) (tail!13174 (t!380849 s!7408))))))

(assert (= (and d!2174953 c!1294795) b!6983545))

(assert (= (and d!2174953 (not c!1294795)) b!6983546))

(declare-fun m!7670548 () Bool)

(assert (=> d!2174953 m!7670548))

(declare-fun m!7670550 () Bool)

(assert (=> b!6983545 m!7670550))

(declare-fun m!7670552 () Bool)

(assert (=> b!6983546 m!7670552))

(assert (=> b!6983546 m!7670552))

(declare-fun m!7670554 () Bool)

(assert (=> b!6983546 m!7670554))

(declare-fun m!7670556 () Bool)

(assert (=> b!6983546 m!7670556))

(assert (=> b!6983546 m!7670554))

(assert (=> b!6983546 m!7670556))

(declare-fun m!7670558 () Bool)

(assert (=> b!6983546 m!7670558))

(assert (=> b!6983404 d!2174953))

(declare-fun bs!1861245 () Bool)

(declare-fun d!2174955 () Bool)

(assert (= bs!1861245 (and d!2174955 b!6983409)))

(declare-fun lambda!399776 () Int)

(assert (=> bs!1861245 (= lambda!399776 lambda!399730)))

(declare-fun bs!1861246 () Bool)

(assert (= bs!1861246 (and d!2174955 d!2174951)))

(assert (=> bs!1861246 (= lambda!399776 lambda!399775)))

(assert (=> d!2174955 (= (inv!85825 setElem!47614) (forall!16085 (exprs!6682 setElem!47614) lambda!399776))))

(declare-fun bs!1861247 () Bool)

(assert (= bs!1861247 d!2174955))

(declare-fun m!7670560 () Bool)

(assert (=> bs!1861247 m!7670560))

(assert (=> setNonEmpty!47614 d!2174955))

(declare-fun bs!1861248 () Bool)

(declare-fun d!2174957 () Bool)

(assert (= bs!1861248 (and d!2174957 b!6983401)))

(declare-fun lambda!399779 () Int)

(assert (=> bs!1861248 (= lambda!399779 lambda!399731)))

(assert (=> d!2174957 true))

(assert (=> d!2174957 (= (derivationStepZipper!2666 lt!2482887 (h!73428 s!7408)) (flatMap!2172 lt!2482887 lambda!399779))))

(declare-fun bs!1861249 () Bool)

(assert (= bs!1861249 d!2174957))

(declare-fun m!7670562 () Bool)

(assert (=> bs!1861249 m!7670562))

(assert (=> b!6983401 d!2174957))

(declare-fun d!2174959 () Bool)

(declare-fun choose!52109 ((Set Context!12364) Int) (Set Context!12364))

(assert (=> d!2174959 (= (flatMap!2172 lt!2482887 lambda!399731) (choose!52109 lt!2482887 lambda!399731))))

(declare-fun bs!1861250 () Bool)

(assert (= bs!1861250 d!2174959))

(declare-fun m!7670564 () Bool)

(assert (=> bs!1861250 m!7670564))

(assert (=> b!6983401 d!2174959))

(assert (=> b!6983401 d!2174941))

(declare-fun d!2174961 () Bool)

(declare-fun c!1294798 () Bool)

(declare-fun e!4197272 () Bool)

(assert (=> d!2174961 (= c!1294798 e!4197272)))

(declare-fun res!2847757 () Bool)

(assert (=> d!2174961 (=> (not res!2847757) (not e!4197272))))

(assert (=> d!2174961 (= res!2847757 (is-Cons!66979 (exprs!6682 lt!2482881)))))

(declare-fun e!4197271 () (Set Context!12364))

(assert (=> d!2174961 (= (derivationStepZipperUp!1836 lt!2482881 (h!73428 s!7408)) e!4197271)))

(declare-fun b!6983549 () Bool)

(declare-fun call!633823 () (Set Context!12364))

(assert (=> b!6983549 (= e!4197271 (set.union call!633823 (derivationStepZipperUp!1836 (Context!12365 (t!380848 (exprs!6682 lt!2482881))) (h!73428 s!7408))))))

(declare-fun bm!633818 () Bool)

(assert (=> bm!633818 (= call!633823 (derivationStepZipperDown!1904 (h!73427 (exprs!6682 lt!2482881)) (Context!12365 (t!380848 (exprs!6682 lt!2482881))) (h!73428 s!7408)))))

(declare-fun b!6983550 () Bool)

(declare-fun e!4197273 () (Set Context!12364))

(assert (=> b!6983550 (= e!4197273 (as set.empty (Set Context!12364)))))

(declare-fun b!6983551 () Bool)

(assert (=> b!6983551 (= e!4197273 call!633823)))

(declare-fun b!6983552 () Bool)

(assert (=> b!6983552 (= e!4197271 e!4197273)))

(declare-fun c!1294799 () Bool)

(assert (=> b!6983552 (= c!1294799 (is-Cons!66979 (exprs!6682 lt!2482881)))))

(declare-fun b!6983553 () Bool)

(assert (=> b!6983553 (= e!4197272 (nullable!6946 (h!73427 (exprs!6682 lt!2482881))))))

(assert (= (and d!2174961 res!2847757) b!6983553))

(assert (= (and d!2174961 c!1294798) b!6983549))

(assert (= (and d!2174961 (not c!1294798)) b!6983552))

(assert (= (and b!6983552 c!1294799) b!6983551))

(assert (= (and b!6983552 (not c!1294799)) b!6983550))

(assert (= (or b!6983549 b!6983551) bm!633818))

(declare-fun m!7670566 () Bool)

(assert (=> b!6983549 m!7670566))

(declare-fun m!7670568 () Bool)

(assert (=> bm!633818 m!7670568))

(declare-fun m!7670570 () Bool)

(assert (=> b!6983553 m!7670570))

(assert (=> b!6983401 d!2174961))

(declare-fun d!2174963 () Bool)

(declare-fun dynLambda!26804 (Int Context!12364) (Set Context!12364))

(assert (=> d!2174963 (= (flatMap!2172 lt!2482887 lambda!399731) (dynLambda!26804 lambda!399731 lt!2482881))))

(declare-fun lt!2482985 () Unit!161026)

(declare-fun choose!52110 ((Set Context!12364) Context!12364 Int) Unit!161026)

(assert (=> d!2174963 (= lt!2482985 (choose!52110 lt!2482887 lt!2482881 lambda!399731))))

(assert (=> d!2174963 (= lt!2482887 (set.insert lt!2482881 (as set.empty (Set Context!12364))))))

(assert (=> d!2174963 (= (lemmaFlatMapOnSingletonSet!1687 lt!2482887 lt!2482881 lambda!399731) lt!2482985)))

(declare-fun b_lambda!261941 () Bool)

(assert (=> (not b_lambda!261941) (not d!2174963)))

(declare-fun bs!1861251 () Bool)

(assert (= bs!1861251 d!2174963))

(assert (=> bs!1861251 m!7670338))

(declare-fun m!7670572 () Bool)

(assert (=> bs!1861251 m!7670572))

(declare-fun m!7670574 () Bool)

(assert (=> bs!1861251 m!7670574))

(assert (=> bs!1861251 m!7670364))

(assert (=> b!6983401 d!2174963))

(declare-fun d!2174965 () Bool)

(declare-fun c!1294800 () Bool)

(assert (=> d!2174965 (= c!1294800 (isEmpty!39098 (t!380849 s!7408)))))

(declare-fun e!4197274 () Bool)

(assert (=> d!2174965 (= (matchZipper!2726 lt!2482874 (t!380849 s!7408)) e!4197274)))

(declare-fun b!6983554 () Bool)

(assert (=> b!6983554 (= e!4197274 (nullableZipper!2413 lt!2482874))))

(declare-fun b!6983555 () Bool)

(assert (=> b!6983555 (= e!4197274 (matchZipper!2726 (derivationStepZipper!2666 lt!2482874 (head!14087 (t!380849 s!7408))) (tail!13174 (t!380849 s!7408))))))

(assert (= (and d!2174965 c!1294800) b!6983554))

(assert (= (and d!2174965 (not c!1294800)) b!6983555))

(assert (=> d!2174965 m!7670548))

(declare-fun m!7670576 () Bool)

(assert (=> b!6983554 m!7670576))

(assert (=> b!6983555 m!7670552))

(assert (=> b!6983555 m!7670552))

(declare-fun m!7670578 () Bool)

(assert (=> b!6983555 m!7670578))

(assert (=> b!6983555 m!7670556))

(assert (=> b!6983555 m!7670578))

(assert (=> b!6983555 m!7670556))

(declare-fun m!7670580 () Bool)

(assert (=> b!6983555 m!7670580))

(assert (=> b!6983400 d!2174965))

(assert (=> b!6983400 d!2174935))

(declare-fun c!1294805 () Bool)

(declare-fun c!1294806 () Bool)

(declare-fun call!633831 () Bool)

(declare-fun bm!633825 () Bool)

(assert (=> bm!633825 (= call!633831 (validRegex!8844 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))

(declare-fun b!6983574 () Bool)

(declare-fun e!4197295 () Bool)

(declare-fun e!4197290 () Bool)

(assert (=> b!6983574 (= e!4197295 e!4197290)))

(assert (=> b!6983574 (= c!1294806 (is-Star!17186 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun b!6983576 () Bool)

(declare-fun e!4197291 () Bool)

(declare-fun call!633832 () Bool)

(assert (=> b!6983576 (= e!4197291 call!633832)))

(declare-fun b!6983577 () Bool)

(declare-fun e!4197294 () Bool)

(assert (=> b!6983577 (= e!4197290 e!4197294)))

(assert (=> b!6983577 (= c!1294805 (is-Union!17186 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun b!6983578 () Bool)

(declare-fun e!4197292 () Bool)

(assert (=> b!6983578 (= e!4197290 e!4197292)))

(declare-fun res!2847768 () Bool)

(assert (=> b!6983578 (= res!2847768 (not (nullable!6946 (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))))

(assert (=> b!6983578 (=> (not res!2847768) (not e!4197292))))

(declare-fun b!6983579 () Bool)

(declare-fun res!2847769 () Bool)

(declare-fun e!4197289 () Bool)

(assert (=> b!6983579 (=> (not res!2847769) (not e!4197289))))

(declare-fun call!633830 () Bool)

(assert (=> b!6983579 (= res!2847769 call!633830)))

(assert (=> b!6983579 (= e!4197294 e!4197289)))

(declare-fun b!6983580 () Bool)

(assert (=> b!6983580 (= e!4197289 call!633832)))

(declare-fun b!6983581 () Bool)

(declare-fun res!2847770 () Bool)

(declare-fun e!4197293 () Bool)

(assert (=> b!6983581 (=> res!2847770 e!4197293)))

(assert (=> b!6983581 (= res!2847770 (not (is-Concat!26031 (h!73427 (exprs!6682 lt!2482880)))))))

(assert (=> b!6983581 (= e!4197294 e!4197293)))

(declare-fun bm!633826 () Bool)

(assert (=> bm!633826 (= call!633832 (validRegex!8844 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun d!2174967 () Bool)

(declare-fun res!2847771 () Bool)

(assert (=> d!2174967 (=> res!2847771 e!4197295)))

(assert (=> d!2174967 (= res!2847771 (is-ElementMatch!17186 (h!73427 (exprs!6682 lt!2482880))))))

(assert (=> d!2174967 (= (validRegex!8844 (h!73427 (exprs!6682 lt!2482880))) e!4197295)))

(declare-fun b!6983575 () Bool)

(assert (=> b!6983575 (= e!4197292 call!633831)))

(declare-fun bm!633827 () Bool)

(assert (=> bm!633827 (= call!633830 call!633831)))

(declare-fun b!6983582 () Bool)

(assert (=> b!6983582 (= e!4197293 e!4197291)))

(declare-fun res!2847772 () Bool)

(assert (=> b!6983582 (=> (not res!2847772) (not e!4197291))))

(assert (=> b!6983582 (= res!2847772 call!633830)))

(assert (= (and d!2174967 (not res!2847771)) b!6983574))

(assert (= (and b!6983574 c!1294806) b!6983578))

(assert (= (and b!6983574 (not c!1294806)) b!6983577))

(assert (= (and b!6983578 res!2847768) b!6983575))

(assert (= (and b!6983577 c!1294805) b!6983579))

(assert (= (and b!6983577 (not c!1294805)) b!6983581))

(assert (= (and b!6983579 res!2847769) b!6983580))

(assert (= (and b!6983581 (not res!2847770)) b!6983582))

(assert (= (and b!6983582 res!2847772) b!6983576))

(assert (= (or b!6983580 b!6983576) bm!633826))

(assert (= (or b!6983579 b!6983582) bm!633827))

(assert (= (or b!6983575 bm!633827) bm!633825))

(declare-fun m!7670582 () Bool)

(assert (=> bm!633825 m!7670582))

(declare-fun m!7670584 () Bool)

(assert (=> b!6983578 m!7670584))

(declare-fun m!7670586 () Bool)

(assert (=> bm!633826 m!7670586))

(assert (=> b!6983400 d!2174967))

(declare-fun d!2174969 () Bool)

(declare-fun c!1294807 () Bool)

(assert (=> d!2174969 (= c!1294807 (isEmpty!39098 (t!380849 s!7408)))))

(declare-fun e!4197296 () Bool)

(assert (=> d!2174969 (= (matchZipper!2726 lt!2482867 (t!380849 s!7408)) e!4197296)))

(declare-fun b!6983583 () Bool)

(assert (=> b!6983583 (= e!4197296 (nullableZipper!2413 lt!2482867))))

(declare-fun b!6983584 () Bool)

(assert (=> b!6983584 (= e!4197296 (matchZipper!2726 (derivationStepZipper!2666 lt!2482867 (head!14087 (t!380849 s!7408))) (tail!13174 (t!380849 s!7408))))))

(assert (= (and d!2174969 c!1294807) b!6983583))

(assert (= (and d!2174969 (not c!1294807)) b!6983584))

(assert (=> d!2174969 m!7670548))

(declare-fun m!7670588 () Bool)

(assert (=> b!6983583 m!7670588))

(assert (=> b!6983584 m!7670552))

(assert (=> b!6983584 m!7670552))

(declare-fun m!7670590 () Bool)

(assert (=> b!6983584 m!7670590))

(assert (=> b!6983584 m!7670556))

(assert (=> b!6983584 m!7670590))

(assert (=> b!6983584 m!7670556))

(declare-fun m!7670592 () Bool)

(assert (=> b!6983584 m!7670592))

(assert (=> b!6983400 d!2174969))

(declare-fun e!4197299 () Bool)

(declare-fun d!2174971 () Bool)

(assert (=> d!2174971 (= (matchZipper!2726 (set.union lt!2482874 lt!2482888) (t!380849 s!7408)) e!4197299)))

(declare-fun res!2847775 () Bool)

(assert (=> d!2174971 (=> res!2847775 e!4197299)))

(assert (=> d!2174971 (= res!2847775 (matchZipper!2726 lt!2482874 (t!380849 s!7408)))))

(declare-fun lt!2482988 () Unit!161026)

(declare-fun choose!52111 ((Set Context!12364) (Set Context!12364) List!67104) Unit!161026)

(assert (=> d!2174971 (= lt!2482988 (choose!52111 lt!2482874 lt!2482888 (t!380849 s!7408)))))

(assert (=> d!2174971 (= (lemmaZipperConcatMatchesSameAsBothZippers!1359 lt!2482874 lt!2482888 (t!380849 s!7408)) lt!2482988)))

(declare-fun b!6983587 () Bool)

(assert (=> b!6983587 (= e!4197299 (matchZipper!2726 lt!2482888 (t!380849 s!7408)))))

(assert (= (and d!2174971 (not res!2847775)) b!6983587))

(declare-fun m!7670594 () Bool)

(assert (=> d!2174971 m!7670594))

(assert (=> d!2174971 m!7670378))

(declare-fun m!7670596 () Bool)

(assert (=> d!2174971 m!7670596))

(assert (=> b!6983587 m!7670374))

(assert (=> b!6983400 d!2174971))

(declare-fun b!6983590 () Bool)

(declare-fun res!2847776 () Bool)

(declare-fun e!4197301 () Bool)

(assert (=> b!6983590 (=> (not res!2847776) (not e!4197301))))

(declare-fun lt!2482989 () List!67103)

(assert (=> b!6983590 (= res!2847776 (= (size!40885 lt!2482989) (+ (size!40885 (exprs!6682 lt!2482880)) (size!40885 (exprs!6682 ct2!306)))))))

(declare-fun b!6983591 () Bool)

(assert (=> b!6983591 (= e!4197301 (or (not (= (exprs!6682 ct2!306) Nil!66979)) (= lt!2482989 (exprs!6682 lt!2482880))))))

(declare-fun b!6983589 () Bool)

(declare-fun e!4197300 () List!67103)

(assert (=> b!6983589 (= e!4197300 (Cons!66979 (h!73427 (exprs!6682 lt!2482880)) (++!15131 (t!380848 (exprs!6682 lt!2482880)) (exprs!6682 ct2!306))))))

(declare-fun d!2174973 () Bool)

(assert (=> d!2174973 e!4197301))

(declare-fun res!2847777 () Bool)

(assert (=> d!2174973 (=> (not res!2847777) (not e!4197301))))

(assert (=> d!2174973 (= res!2847777 (= (content!13221 lt!2482989) (set.union (content!13221 (exprs!6682 lt!2482880)) (content!13221 (exprs!6682 ct2!306)))))))

(assert (=> d!2174973 (= lt!2482989 e!4197300)))

(declare-fun c!1294808 () Bool)

(assert (=> d!2174973 (= c!1294808 (is-Nil!66979 (exprs!6682 lt!2482880)))))

(assert (=> d!2174973 (= (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306)) lt!2482989)))

(declare-fun b!6983588 () Bool)

(assert (=> b!6983588 (= e!4197300 (exprs!6682 ct2!306))))

(assert (= (and d!2174973 c!1294808) b!6983588))

(assert (= (and d!2174973 (not c!1294808)) b!6983589))

(assert (= (and d!2174973 res!2847777) b!6983590))

(assert (= (and b!6983590 res!2847776) b!6983591))

(declare-fun m!7670598 () Bool)

(assert (=> b!6983590 m!7670598))

(declare-fun m!7670600 () Bool)

(assert (=> b!6983590 m!7670600))

(assert (=> b!6983590 m!7670510))

(declare-fun m!7670602 () Bool)

(assert (=> b!6983589 m!7670602))

(declare-fun m!7670604 () Bool)

(assert (=> d!2174973 m!7670604))

(declare-fun m!7670606 () Bool)

(assert (=> d!2174973 m!7670606))

(assert (=> d!2174973 m!7670518))

(assert (=> b!6983409 d!2174973))

(assert (=> b!6983409 d!2174941))

(declare-fun d!2174975 () Bool)

(declare-fun e!4197304 () Bool)

(assert (=> d!2174975 e!4197304))

(declare-fun res!2847780 () Bool)

(assert (=> d!2174975 (=> (not res!2847780) (not e!4197304))))

(declare-fun lt!2482992 () Context!12364)

(declare-fun dynLambda!26805 (Int Context!12364) Context!12364)

(assert (=> d!2174975 (= res!2847780 (= lt!2482890 (dynLambda!26805 lambda!399729 lt!2482992)))))

(declare-fun choose!52112 ((Set Context!12364) Int Context!12364) Context!12364)

(assert (=> d!2174975 (= lt!2482992 (choose!52112 z1!570 lambda!399729 lt!2482890))))

(assert (=> d!2174975 (set.member lt!2482890 (map!15443 z1!570 lambda!399729))))

(assert (=> d!2174975 (= (mapPost2!41 z1!570 lambda!399729 lt!2482890) lt!2482992)))

(declare-fun b!6983595 () Bool)

(assert (=> b!6983595 (= e!4197304 (set.member lt!2482992 z1!570))))

(assert (= (and d!2174975 res!2847780) b!6983595))

(declare-fun b_lambda!261943 () Bool)

(assert (=> (not b_lambda!261943) (not d!2174975)))

(declare-fun m!7670608 () Bool)

(assert (=> d!2174975 m!7670608))

(declare-fun m!7670610 () Bool)

(assert (=> d!2174975 m!7670610))

(declare-fun m!7670612 () Bool)

(assert (=> d!2174975 m!7670612))

(declare-fun m!7670614 () Bool)

(assert (=> d!2174975 m!7670614))

(declare-fun m!7670616 () Bool)

(assert (=> b!6983595 m!7670616))

(assert (=> b!6983409 d!2174975))

(declare-fun b!6983600 () Bool)

(declare-fun e!4197307 () Bool)

(declare-fun tp!1928713 () Bool)

(assert (=> b!6983600 (= e!4197307 (and tp_is_empty!43597 tp!1928713))))

(assert (=> b!6983399 (= tp!1928696 e!4197307)))

(assert (= (and b!6983399 (is-Cons!66980 (t!380849 s!7408))) b!6983600))

(declare-fun b!6983605 () Bool)

(declare-fun e!4197310 () Bool)

(declare-fun tp!1928718 () Bool)

(declare-fun tp!1928719 () Bool)

(assert (=> b!6983605 (= e!4197310 (and tp!1928718 tp!1928719))))

(assert (=> b!6983406 (= tp!1928697 e!4197310)))

(assert (= (and b!6983406 (is-Cons!66979 (exprs!6682 ct2!306))) b!6983605))

(declare-fun condSetEmpty!47620 () Bool)

(assert (=> setNonEmpty!47614 (= condSetEmpty!47620 (= setRest!47614 (as set.empty (Set Context!12364))))))

(declare-fun setRes!47620 () Bool)

(assert (=> setNonEmpty!47614 (= tp!1928698 setRes!47620)))

(declare-fun setIsEmpty!47620 () Bool)

(assert (=> setIsEmpty!47620 setRes!47620))

(declare-fun setNonEmpty!47620 () Bool)

(declare-fun setElem!47620 () Context!12364)

(declare-fun tp!1928724 () Bool)

(declare-fun e!4197313 () Bool)

(assert (=> setNonEmpty!47620 (= setRes!47620 (and tp!1928724 (inv!85825 setElem!47620) e!4197313))))

(declare-fun setRest!47620 () (Set Context!12364))

(assert (=> setNonEmpty!47620 (= setRest!47614 (set.union (set.insert setElem!47620 (as set.empty (Set Context!12364))) setRest!47620))))

(declare-fun b!6983610 () Bool)

(declare-fun tp!1928725 () Bool)

(assert (=> b!6983610 (= e!4197313 tp!1928725)))

(assert (= (and setNonEmpty!47614 condSetEmpty!47620) setIsEmpty!47620))

(assert (= (and setNonEmpty!47614 (not condSetEmpty!47620)) setNonEmpty!47620))

(assert (= setNonEmpty!47620 b!6983610))

(declare-fun m!7670618 () Bool)

(assert (=> setNonEmpty!47620 m!7670618))

(declare-fun b!6983611 () Bool)

(declare-fun e!4197314 () Bool)

(declare-fun tp!1928726 () Bool)

(declare-fun tp!1928727 () Bool)

(assert (=> b!6983611 (= e!4197314 (and tp!1928726 tp!1928727))))

(assert (=> b!6983410 (= tp!1928695 e!4197314)))

(assert (= (and b!6983410 (is-Cons!66979 (exprs!6682 setElem!47614))) b!6983611))

(declare-fun b_lambda!261945 () Bool)

(assert (= b_lambda!261941 (or b!6983401 b_lambda!261945)))

(declare-fun bs!1861252 () Bool)

(declare-fun d!2174977 () Bool)

(assert (= bs!1861252 (and d!2174977 b!6983401)))

(assert (=> bs!1861252 (= (dynLambda!26804 lambda!399731 lt!2482881) (derivationStepZipperUp!1836 lt!2482881 (h!73428 s!7408)))))

(assert (=> bs!1861252 m!7670334))

(assert (=> d!2174963 d!2174977))

(declare-fun b_lambda!261947 () Bool)

(assert (= b_lambda!261943 (or b!6983409 b_lambda!261947)))

(declare-fun bs!1861253 () Bool)

(declare-fun d!2174979 () Bool)

(assert (= bs!1861253 (and d!2174979 b!6983409)))

(declare-fun lt!2482993 () Unit!161026)

(assert (=> bs!1861253 (= lt!2482993 (lemmaConcatPreservesForall!522 (exprs!6682 lt!2482992) (exprs!6682 ct2!306) lambda!399730))))

(assert (=> bs!1861253 (= (dynLambda!26805 lambda!399729 lt!2482992) (Context!12365 (++!15131 (exprs!6682 lt!2482992) (exprs!6682 ct2!306))))))

(declare-fun m!7670620 () Bool)

(assert (=> bs!1861253 m!7670620))

(declare-fun m!7670622 () Bool)

(assert (=> bs!1861253 m!7670622))

(assert (=> d!2174975 d!2174979))

(declare-fun b_lambda!261949 () Bool)

(assert (= b_lambda!261939 (or b!6983398 b_lambda!261949)))

(declare-fun bs!1861254 () Bool)

(declare-fun d!2174981 () Bool)

(assert (= bs!1861254 (and d!2174981 b!6983398)))

(assert (=> bs!1861254 (= (dynLambda!26802 lambda!399728 lt!2482967) (matchZipper!2726 (set.insert lt!2482967 (as set.empty (Set Context!12364))) s!7408))))

(declare-fun m!7670624 () Bool)

(assert (=> bs!1861254 m!7670624))

(assert (=> bs!1861254 m!7670624))

(declare-fun m!7670626 () Bool)

(assert (=> bs!1861254 m!7670626))

(assert (=> d!2174923 d!2174981))

(push 1)

(assert (not b!6983482))

(assert (not b!6983587))

(assert (not b!6983583))

(assert (not b!6983554))

(assert (not d!2174949))

(assert (not d!2174957))

(assert (not d!2174973))

(assert (not d!2174929))

(assert (not d!2174975))

(assert (not b!6983545))

(assert (not b!6983590))

(assert (not b!6983611))

(assert (not setNonEmpty!47620))

(assert (not bm!633812))

(assert (not b_lambda!261949))

(assert (not d!2174935))

(assert (not b!6983578))

(assert (not d!2174963))

(assert (not bm!633799))

(assert (not d!2174969))

(assert (not b!6983477))

(assert (not b!6983497))

(assert (not d!2174941))

(assert (not d!2174943))

(assert (not d!2174953))

(assert (not bm!633826))

(assert (not b!6983589))

(assert (not bm!633816))

(assert (not b!6983543))

(assert (not b_lambda!261945))

(assert (not b!6983600))

(assert (not b!6983546))

(assert (not d!2174951))

(assert (not d!2174971))

(assert tp_is_empty!43597)

(assert (not b!6983507))

(assert (not b!6983549))

(assert (not bs!1861252))

(assert (not b!6983605))

(assert (not d!2174955))

(assert (not d!2174947))

(assert (not bs!1861254))

(assert (not b!6983476))

(assert (not b!6983493))

(assert (not d!2174937))

(assert (not b!6983584))

(assert (not d!2174959))

(assert (not b!6983555))

(assert (not bm!633814))

(assert (not bs!1861253))

(assert (not bm!633818))

(assert (not b!6983508))

(assert (not b!6983535))

(assert (not b!6983553))

(assert (not d!2174931))

(assert (not d!2174925))

(assert (not d!2174965))

(assert (not d!2174927))

(assert (not bm!633825))

(assert (not b!6983610))

(assert (not d!2174923))

(assert (not b!6983544))

(assert (not b_lambda!261947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2175045 () Bool)

(declare-fun res!2847827 () Bool)

(declare-fun e!4197407 () Bool)

(assert (=> d!2175045 (=> res!2847827 e!4197407)))

(assert (=> d!2175045 (= res!2847827 (is-Nil!66981 lt!2482970))))

(assert (=> d!2175045 (= (noDuplicate!2503 lt!2482970) e!4197407)))

(declare-fun b!6983759 () Bool)

(declare-fun e!4197408 () Bool)

(assert (=> b!6983759 (= e!4197407 e!4197408)))

(declare-fun res!2847828 () Bool)

(assert (=> b!6983759 (=> (not res!2847828) (not e!4197408))))

(declare-fun contains!20410 (List!67105 Context!12364) Bool)

(assert (=> b!6983759 (= res!2847828 (not (contains!20410 (t!380850 lt!2482970) (h!73429 lt!2482970))))))

(declare-fun b!6983760 () Bool)

(assert (=> b!6983760 (= e!4197408 (noDuplicate!2503 (t!380850 lt!2482970)))))

(assert (= (and d!2175045 (not res!2847827)) b!6983759))

(assert (= (and b!6983759 res!2847828) b!6983760))

(declare-fun m!7670798 () Bool)

(assert (=> b!6983759 m!7670798))

(declare-fun m!7670800 () Bool)

(assert (=> b!6983760 m!7670800))

(assert (=> d!2174929 d!2175045))

(declare-fun d!2175047 () Bool)

(declare-fun e!4197416 () Bool)

(assert (=> d!2175047 e!4197416))

(declare-fun res!2847833 () Bool)

(assert (=> d!2175047 (=> (not res!2847833) (not e!4197416))))

(declare-fun res!2847834 () List!67105)

(assert (=> d!2175047 (= res!2847833 (noDuplicate!2503 res!2847834))))

(declare-fun e!4197417 () Bool)

(assert (=> d!2175047 e!4197417))

(assert (=> d!2175047 (= (choose!52106 lt!2482879) res!2847834)))

(declare-fun b!6983768 () Bool)

(declare-fun e!4197415 () Bool)

(declare-fun tp!1928749 () Bool)

(assert (=> b!6983768 (= e!4197415 tp!1928749)))

(declare-fun tp!1928750 () Bool)

(declare-fun b!6983767 () Bool)

(assert (=> b!6983767 (= e!4197417 (and (inv!85825 (h!73429 res!2847834)) e!4197415 tp!1928750))))

(declare-fun b!6983769 () Bool)

(assert (=> b!6983769 (= e!4197416 (= (content!13220 res!2847834) lt!2482879))))

(assert (= b!6983767 b!6983768))

(assert (= (and d!2175047 (is-Cons!66981 res!2847834)) b!6983767))

(assert (= (and d!2175047 res!2847833) b!6983769))

(declare-fun m!7670802 () Bool)

(assert (=> d!2175047 m!7670802))

(declare-fun m!7670804 () Bool)

(assert (=> b!6983767 m!7670804))

(declare-fun m!7670806 () Bool)

(assert (=> b!6983769 m!7670806))

(assert (=> d!2174929 d!2175047))

(declare-fun d!2175049 () Bool)

(declare-fun c!1294854 () Bool)

(declare-fun e!4197419 () Bool)

(assert (=> d!2175049 (= c!1294854 e!4197419)))

(declare-fun res!2847835 () Bool)

(assert (=> d!2175049 (=> (not res!2847835) (not e!4197419))))

(assert (=> d!2175049 (= res!2847835 (is-Cons!66979 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482881))))))))

(declare-fun e!4197418 () (Set Context!12364))

(assert (=> d!2175049 (= (derivationStepZipperUp!1836 (Context!12365 (t!380848 (exprs!6682 lt!2482881))) (h!73428 s!7408)) e!4197418)))

(declare-fun b!6983770 () Bool)

(declare-fun call!633864 () (Set Context!12364))

(assert (=> b!6983770 (= e!4197418 (set.union call!633864 (derivationStepZipperUp!1836 (Context!12365 (t!380848 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482881)))))) (h!73428 s!7408))))))

(declare-fun bm!633859 () Bool)

(assert (=> bm!633859 (= call!633864 (derivationStepZipperDown!1904 (h!73427 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482881))))) (Context!12365 (t!380848 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482881)))))) (h!73428 s!7408)))))

(declare-fun b!6983771 () Bool)

(declare-fun e!4197420 () (Set Context!12364))

(assert (=> b!6983771 (= e!4197420 (as set.empty (Set Context!12364)))))

(declare-fun b!6983772 () Bool)

(assert (=> b!6983772 (= e!4197420 call!633864)))

(declare-fun b!6983773 () Bool)

(assert (=> b!6983773 (= e!4197418 e!4197420)))

(declare-fun c!1294855 () Bool)

(assert (=> b!6983773 (= c!1294855 (is-Cons!66979 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482881))))))))

(declare-fun b!6983774 () Bool)

(assert (=> b!6983774 (= e!4197419 (nullable!6946 (h!73427 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482881)))))))))

(assert (= (and d!2175049 res!2847835) b!6983774))

(assert (= (and d!2175049 c!1294854) b!6983770))

(assert (= (and d!2175049 (not c!1294854)) b!6983773))

(assert (= (and b!6983773 c!1294855) b!6983772))

(assert (= (and b!6983773 (not c!1294855)) b!6983771))

(assert (= (or b!6983770 b!6983772) bm!633859))

(declare-fun m!7670808 () Bool)

(assert (=> b!6983770 m!7670808))

(declare-fun m!7670810 () Bool)

(assert (=> bm!633859 m!7670810))

(declare-fun m!7670812 () Bool)

(assert (=> b!6983774 m!7670812))

(assert (=> b!6983549 d!2175049))

(declare-fun bs!1861277 () Bool)

(declare-fun d!2175051 () Bool)

(assert (= bs!1861277 (and d!2175051 b!6983409)))

(declare-fun lambda!399798 () Int)

(assert (=> bs!1861277 (= lambda!399798 lambda!399730)))

(declare-fun bs!1861278 () Bool)

(assert (= bs!1861278 (and d!2175051 d!2174951)))

(assert (=> bs!1861278 (= lambda!399798 lambda!399775)))

(declare-fun bs!1861279 () Bool)

(assert (= bs!1861279 (and d!2175051 d!2174955)))

(assert (=> bs!1861279 (= lambda!399798 lambda!399776)))

(assert (=> d!2175051 (= (inv!85825 setElem!47620) (forall!16085 (exprs!6682 setElem!47620) lambda!399798))))

(declare-fun bs!1861280 () Bool)

(assert (= bs!1861280 d!2175051))

(declare-fun m!7670814 () Bool)

(assert (=> bs!1861280 m!7670814))

(assert (=> setNonEmpty!47620 d!2175051))

(declare-fun d!2175053 () Bool)

(assert (=> d!2175053 (= (isEmpty!39098 (t!380849 s!7408)) (is-Nil!66980 (t!380849 s!7408)))))

(assert (=> d!2174953 d!2175053))

(declare-fun d!2175055 () Bool)

(assert (=> d!2175055 (= (isEmpty!39098 s!7408) (is-Nil!66980 s!7408))))

(assert (=> d!2174947 d!2175055))

(declare-fun bs!1861281 () Bool)

(declare-fun d!2175057 () Bool)

(assert (= bs!1861281 (and d!2175057 b!6983398)))

(declare-fun lambda!399801 () Int)

(assert (=> bs!1861281 (not (= lambda!399801 lambda!399728))))

(declare-fun bs!1861282 () Bool)

(assert (= bs!1861282 (and d!2175057 d!2174927)))

(assert (=> bs!1861282 (not (= lambda!399801 lambda!399764))))

(declare-fun bs!1861283 () Bool)

(assert (= bs!1861283 (and d!2175057 d!2174931)))

(assert (=> bs!1861283 (not (= lambda!399801 lambda!399767))))

(assert (=> d!2175057 (= (nullableZipper!2413 lt!2482867) (exists!2956 lt!2482867 lambda!399801))))

(declare-fun bs!1861284 () Bool)

(assert (= bs!1861284 d!2175057))

(declare-fun m!7670816 () Bool)

(assert (=> bs!1861284 m!7670816))

(assert (=> b!6983583 d!2175057))

(declare-fun c!1294858 () Bool)

(declare-fun call!633868 () List!67103)

(declare-fun c!1294861 () Bool)

(declare-fun bm!633860 () Bool)

(assert (=> bm!633860 (= call!633868 ($colon$colon!2465 (exprs!6682 (ite c!1294789 lt!2482882 (Context!12365 call!633820))) (ite (or c!1294858 c!1294861) (regTwo!34884 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))) (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))

(declare-fun bm!633861 () Bool)

(declare-fun call!633870 () (Set Context!12364))

(declare-fun call!633865 () (Set Context!12364))

(assert (=> bm!633861 (= call!633870 call!633865)))

(declare-fun b!6983775 () Bool)

(declare-fun c!1294862 () Bool)

(assert (=> b!6983775 (= c!1294862 (is-Star!17186 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun e!4197426 () (Set Context!12364))

(declare-fun e!4197422 () (Set Context!12364))

(assert (=> b!6983775 (= e!4197426 e!4197422)))

(declare-fun call!633867 () List!67103)

(declare-fun bm!633862 () Bool)

(declare-fun c!1294859 () Bool)

(assert (=> bm!633862 (= call!633865 (derivationStepZipperDown!1904 (ite c!1294859 (regTwo!34885 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))) (ite c!1294858 (regTwo!34884 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))) (ite c!1294861 (regOne!34884 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))) (reg!17515 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))) (ite (or c!1294859 c!1294858) (ite c!1294789 lt!2482882 (Context!12365 call!633820)) (Context!12365 call!633867)) (h!73428 s!7408)))))

(declare-fun b!6983776 () Bool)

(assert (=> b!6983776 (= e!4197422 (as set.empty (Set Context!12364)))))

(declare-fun b!6983777 () Bool)

(declare-fun call!633869 () (Set Context!12364))

(assert (=> b!6983777 (= e!4197426 call!633869)))

(declare-fun b!6983778 () Bool)

(declare-fun e!4197424 () Bool)

(assert (=> b!6983778 (= e!4197424 (nullable!6946 (regOne!34884 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))

(declare-fun b!6983779 () Bool)

(assert (=> b!6983779 (= e!4197422 call!633869)))

(declare-fun e!4197423 () (Set Context!12364))

(declare-fun b!6983780 () Bool)

(assert (=> b!6983780 (= e!4197423 (set.insert (ite c!1294789 lt!2482882 (Context!12365 call!633820)) (as set.empty (Set Context!12364))))))

(declare-fun b!6983781 () Bool)

(declare-fun e!4197425 () (Set Context!12364))

(assert (=> b!6983781 (= e!4197423 e!4197425)))

(assert (=> b!6983781 (= c!1294859 (is-Union!17186 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun bm!633864 () Bool)

(declare-fun call!633866 () (Set Context!12364))

(assert (=> bm!633864 (= call!633866 (derivationStepZipperDown!1904 (ite c!1294859 (regOne!34885 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))) (regOne!34884 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))) (ite c!1294859 (ite c!1294789 lt!2482882 (Context!12365 call!633820)) (Context!12365 call!633868)) (h!73428 s!7408)))))

(declare-fun b!6983782 () Bool)

(assert (=> b!6983782 (= e!4197425 (set.union call!633866 call!633865))))

(declare-fun b!6983783 () Bool)

(declare-fun e!4197421 () (Set Context!12364))

(assert (=> b!6983783 (= e!4197421 e!4197426)))

(assert (=> b!6983783 (= c!1294861 (is-Concat!26031 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun bm!633865 () Bool)

(assert (=> bm!633865 (= call!633869 call!633870)))

(declare-fun b!6983784 () Bool)

(assert (=> b!6983784 (= c!1294858 e!4197424)))

(declare-fun res!2847836 () Bool)

(assert (=> b!6983784 (=> (not res!2847836) (not e!4197424))))

(assert (=> b!6983784 (= res!2847836 (is-Concat!26031 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(assert (=> b!6983784 (= e!4197425 e!4197421)))

(declare-fun b!6983785 () Bool)

(assert (=> b!6983785 (= e!4197421 (set.union call!633866 call!633870))))

(declare-fun d!2175059 () Bool)

(declare-fun c!1294860 () Bool)

(assert (=> d!2175059 (= c!1294860 (and (is-ElementMatch!17186 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))) (= (c!1294754 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))) (h!73428 s!7408))))))

(assert (=> d!2175059 (= (derivationStepZipperDown!1904 (ite c!1294789 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))) (ite c!1294789 lt!2482882 (Context!12365 call!633820)) (h!73428 s!7408)) e!4197423)))

(declare-fun bm!633863 () Bool)

(assert (=> bm!633863 (= call!633867 call!633868)))

(assert (= (and d!2175059 c!1294860) b!6983780))

(assert (= (and d!2175059 (not c!1294860)) b!6983781))

(assert (= (and b!6983781 c!1294859) b!6983782))

(assert (= (and b!6983781 (not c!1294859)) b!6983784))

(assert (= (and b!6983784 res!2847836) b!6983778))

(assert (= (and b!6983784 c!1294858) b!6983785))

(assert (= (and b!6983784 (not c!1294858)) b!6983783))

(assert (= (and b!6983783 c!1294861) b!6983777))

(assert (= (and b!6983783 (not c!1294861)) b!6983775))

(assert (= (and b!6983775 c!1294862) b!6983779))

(assert (= (and b!6983775 (not c!1294862)) b!6983776))

(assert (= (or b!6983777 b!6983779) bm!633863))

(assert (= (or b!6983777 b!6983779) bm!633865))

(assert (= (or b!6983785 bm!633865) bm!633861))

(assert (= (or b!6983785 bm!633863) bm!633860))

(assert (= (or b!6983782 b!6983785) bm!633864))

(assert (= (or b!6983782 bm!633861) bm!633862))

(declare-fun m!7670818 () Bool)

(assert (=> b!6983780 m!7670818))

(declare-fun m!7670820 () Bool)

(assert (=> b!6983778 m!7670820))

(declare-fun m!7670822 () Bool)

(assert (=> bm!633862 m!7670822))

(declare-fun m!7670824 () Bool)

(assert (=> bm!633860 m!7670824))

(declare-fun m!7670826 () Bool)

(assert (=> bm!633864 m!7670826))

(assert (=> bm!633816 d!2175059))

(declare-fun d!2175061 () Bool)

(assert (=> d!2175061 (forall!16085 (++!15131 (exprs!6682 lt!2482992) (exprs!6682 ct2!306)) lambda!399730)))

(declare-fun lt!2483023 () Unit!161026)

(assert (=> d!2175061 (= lt!2483023 (choose!52108 (exprs!6682 lt!2482992) (exprs!6682 ct2!306) lambda!399730))))

(assert (=> d!2175061 (forall!16085 (exprs!6682 lt!2482992) lambda!399730)))

(assert (=> d!2175061 (= (lemmaConcatPreservesForall!522 (exprs!6682 lt!2482992) (exprs!6682 ct2!306) lambda!399730) lt!2483023)))

(declare-fun bs!1861285 () Bool)

(assert (= bs!1861285 d!2175061))

(assert (=> bs!1861285 m!7670622))

(assert (=> bs!1861285 m!7670622))

(declare-fun m!7670828 () Bool)

(assert (=> bs!1861285 m!7670828))

(declare-fun m!7670830 () Bool)

(assert (=> bs!1861285 m!7670830))

(declare-fun m!7670832 () Bool)

(assert (=> bs!1861285 m!7670832))

(assert (=> bs!1861253 d!2175061))

(declare-fun b!6983788 () Bool)

(declare-fun res!2847837 () Bool)

(declare-fun e!4197428 () Bool)

(assert (=> b!6983788 (=> (not res!2847837) (not e!4197428))))

(declare-fun lt!2483024 () List!67103)

(assert (=> b!6983788 (= res!2847837 (= (size!40885 lt!2483024) (+ (size!40885 (exprs!6682 lt!2482992)) (size!40885 (exprs!6682 ct2!306)))))))

(declare-fun b!6983789 () Bool)

(assert (=> b!6983789 (= e!4197428 (or (not (= (exprs!6682 ct2!306) Nil!66979)) (= lt!2483024 (exprs!6682 lt!2482992))))))

(declare-fun b!6983787 () Bool)

(declare-fun e!4197427 () List!67103)

(assert (=> b!6983787 (= e!4197427 (Cons!66979 (h!73427 (exprs!6682 lt!2482992)) (++!15131 (t!380848 (exprs!6682 lt!2482992)) (exprs!6682 ct2!306))))))

(declare-fun d!2175063 () Bool)

(assert (=> d!2175063 e!4197428))

(declare-fun res!2847838 () Bool)

(assert (=> d!2175063 (=> (not res!2847838) (not e!4197428))))

(assert (=> d!2175063 (= res!2847838 (= (content!13221 lt!2483024) (set.union (content!13221 (exprs!6682 lt!2482992)) (content!13221 (exprs!6682 ct2!306)))))))

(assert (=> d!2175063 (= lt!2483024 e!4197427)))

(declare-fun c!1294863 () Bool)

(assert (=> d!2175063 (= c!1294863 (is-Nil!66979 (exprs!6682 lt!2482992)))))

(assert (=> d!2175063 (= (++!15131 (exprs!6682 lt!2482992) (exprs!6682 ct2!306)) lt!2483024)))

(declare-fun b!6983786 () Bool)

(assert (=> b!6983786 (= e!4197427 (exprs!6682 ct2!306))))

(assert (= (and d!2175063 c!1294863) b!6983786))

(assert (= (and d!2175063 (not c!1294863)) b!6983787))

(assert (= (and d!2175063 res!2847838) b!6983788))

(assert (= (and b!6983788 res!2847837) b!6983789))

(declare-fun m!7670834 () Bool)

(assert (=> b!6983788 m!7670834))

(declare-fun m!7670836 () Bool)

(assert (=> b!6983788 m!7670836))

(assert (=> b!6983788 m!7670510))

(declare-fun m!7670838 () Bool)

(assert (=> b!6983787 m!7670838))

(declare-fun m!7670840 () Bool)

(assert (=> d!2175063 m!7670840))

(declare-fun m!7670842 () Bool)

(assert (=> d!2175063 m!7670842))

(assert (=> d!2175063 m!7670518))

(assert (=> bs!1861253 d!2175063))

(declare-fun d!2175065 () Bool)

(assert (=> d!2175065 (= ($colon$colon!2465 (exprs!6682 lt!2482882) (ite (or c!1294788 c!1294791) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (h!73427 (exprs!6682 lt!2482880)))) (Cons!66979 (ite (or c!1294788 c!1294791) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (h!73427 (exprs!6682 lt!2482880))) (exprs!6682 lt!2482882)))))

(assert (=> bm!633812 d!2175065))

(declare-fun c!1294864 () Bool)

(declare-fun call!633872 () Bool)

(declare-fun bm!633866 () Bool)

(declare-fun c!1294865 () Bool)

(assert (=> bm!633866 (= call!633872 (validRegex!8844 (ite c!1294865 (reg!17515 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))) (ite c!1294864 (regOne!34885 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))) (regOne!34884 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880)))))))))))

(declare-fun b!6983790 () Bool)

(declare-fun e!4197435 () Bool)

(declare-fun e!4197430 () Bool)

(assert (=> b!6983790 (= e!4197435 e!4197430)))

(assert (=> b!6983790 (= c!1294865 (is-Star!17186 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun b!6983792 () Bool)

(declare-fun e!4197431 () Bool)

(declare-fun call!633873 () Bool)

(assert (=> b!6983792 (= e!4197431 call!633873)))

(declare-fun b!6983793 () Bool)

(declare-fun e!4197434 () Bool)

(assert (=> b!6983793 (= e!4197430 e!4197434)))

(assert (=> b!6983793 (= c!1294864 (is-Union!17186 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun b!6983794 () Bool)

(declare-fun e!4197432 () Bool)

(assert (=> b!6983794 (= e!4197430 e!4197432)))

(declare-fun res!2847839 () Bool)

(assert (=> b!6983794 (= res!2847839 (not (nullable!6946 (reg!17515 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))))))))

(assert (=> b!6983794 (=> (not res!2847839) (not e!4197432))))

(declare-fun b!6983795 () Bool)

(declare-fun res!2847840 () Bool)

(declare-fun e!4197429 () Bool)

(assert (=> b!6983795 (=> (not res!2847840) (not e!4197429))))

(declare-fun call!633871 () Bool)

(assert (=> b!6983795 (= res!2847840 call!633871)))

(assert (=> b!6983795 (= e!4197434 e!4197429)))

(declare-fun b!6983796 () Bool)

(assert (=> b!6983796 (= e!4197429 call!633873)))

(declare-fun b!6983797 () Bool)

(declare-fun res!2847841 () Bool)

(declare-fun e!4197433 () Bool)

(assert (=> b!6983797 (=> res!2847841 e!4197433)))

(assert (=> b!6983797 (= res!2847841 (not (is-Concat!26031 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880)))))))))

(assert (=> b!6983797 (= e!4197434 e!4197433)))

(declare-fun bm!633867 () Bool)

(assert (=> bm!633867 (= call!633873 (validRegex!8844 (ite c!1294864 (regTwo!34885 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))) (regTwo!34884 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))))))))

(declare-fun d!2175067 () Bool)

(declare-fun res!2847842 () Bool)

(assert (=> d!2175067 (=> res!2847842 e!4197435)))

(assert (=> d!2175067 (= res!2847842 (is-ElementMatch!17186 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(assert (=> d!2175067 (= (validRegex!8844 (ite c!1294805 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))) e!4197435)))

(declare-fun b!6983791 () Bool)

(assert (=> b!6983791 (= e!4197432 call!633872)))

(declare-fun bm!633868 () Bool)

(assert (=> bm!633868 (= call!633871 call!633872)))

(declare-fun b!6983798 () Bool)

(assert (=> b!6983798 (= e!4197433 e!4197431)))

(declare-fun res!2847843 () Bool)

(assert (=> b!6983798 (=> (not res!2847843) (not e!4197431))))

(assert (=> b!6983798 (= res!2847843 call!633871)))

(assert (= (and d!2175067 (not res!2847842)) b!6983790))

(assert (= (and b!6983790 c!1294865) b!6983794))

(assert (= (and b!6983790 (not c!1294865)) b!6983793))

(assert (= (and b!6983794 res!2847839) b!6983791))

(assert (= (and b!6983793 c!1294864) b!6983795))

(assert (= (and b!6983793 (not c!1294864)) b!6983797))

(assert (= (and b!6983795 res!2847840) b!6983796))

(assert (= (and b!6983797 (not res!2847841)) b!6983798))

(assert (= (and b!6983798 res!2847843) b!6983792))

(assert (= (or b!6983796 b!6983792) bm!633867))

(assert (= (or b!6983795 b!6983798) bm!633868))

(assert (= (or b!6983791 bm!633868) bm!633866))

(declare-fun m!7670844 () Bool)

(assert (=> bm!633866 m!7670844))

(declare-fun m!7670846 () Bool)

(assert (=> b!6983794 m!7670846))

(declare-fun m!7670848 () Bool)

(assert (=> bm!633867 m!7670848))

(assert (=> bm!633826 d!2175067))

(declare-fun b!6983813 () Bool)

(declare-fun e!4197448 () Bool)

(declare-fun e!4197453 () Bool)

(assert (=> b!6983813 (= e!4197448 e!4197453)))

(declare-fun c!1294868 () Bool)

(assert (=> b!6983813 (= c!1294868 (is-Union!17186 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun b!6983814 () Bool)

(declare-fun e!4197451 () Bool)

(assert (=> b!6983814 (= e!4197451 e!4197448)))

(declare-fun res!2847857 () Bool)

(assert (=> b!6983814 (=> res!2847857 e!4197448)))

(assert (=> b!6983814 (= res!2847857 (is-Star!17186 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun bm!633873 () Bool)

(declare-fun call!633878 () Bool)

(assert (=> bm!633873 (= call!633878 (nullable!6946 (ite c!1294868 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun bm!633874 () Bool)

(declare-fun call!633879 () Bool)

(assert (=> bm!633874 (= call!633879 (nullable!6946 (ite c!1294868 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun b!6983815 () Bool)

(declare-fun e!4197449 () Bool)

(assert (=> b!6983815 (= e!4197449 e!4197451)))

(declare-fun res!2847854 () Bool)

(assert (=> b!6983815 (=> (not res!2847854) (not e!4197451))))

(assert (=> b!6983815 (= res!2847854 (and (not (is-EmptyLang!17186 (h!73427 (exprs!6682 lt!2482880)))) (not (is-ElementMatch!17186 (h!73427 (exprs!6682 lt!2482880))))))))

(declare-fun b!6983816 () Bool)

(declare-fun e!4197452 () Bool)

(assert (=> b!6983816 (= e!4197453 e!4197452)))

(declare-fun res!2847858 () Bool)

(assert (=> b!6983816 (= res!2847858 call!633878)))

(assert (=> b!6983816 (=> res!2847858 e!4197452)))

(declare-fun d!2175069 () Bool)

(declare-fun res!2847856 () Bool)

(assert (=> d!2175069 (=> res!2847856 e!4197449)))

(assert (=> d!2175069 (= res!2847856 (is-EmptyExpr!17186 (h!73427 (exprs!6682 lt!2482880))))))

(assert (=> d!2175069 (= (nullableFct!2616 (h!73427 (exprs!6682 lt!2482880))) e!4197449)))

(declare-fun b!6983817 () Bool)

(declare-fun e!4197450 () Bool)

(assert (=> b!6983817 (= e!4197453 e!4197450)))

(declare-fun res!2847855 () Bool)

(assert (=> b!6983817 (= res!2847855 call!633879)))

(assert (=> b!6983817 (=> (not res!2847855) (not e!4197450))))

(declare-fun b!6983818 () Bool)

(assert (=> b!6983818 (= e!4197450 call!633878)))

(declare-fun b!6983819 () Bool)

(assert (=> b!6983819 (= e!4197452 call!633879)))

(assert (= (and d!2175069 (not res!2847856)) b!6983815))

(assert (= (and b!6983815 res!2847854) b!6983814))

(assert (= (and b!6983814 (not res!2847857)) b!6983813))

(assert (= (and b!6983813 c!1294868) b!6983816))

(assert (= (and b!6983813 (not c!1294868)) b!6983817))

(assert (= (and b!6983816 (not res!2847858)) b!6983819))

(assert (= (and b!6983817 res!2847855) b!6983818))

(assert (= (or b!6983819 b!6983817) bm!633874))

(assert (= (or b!6983816 b!6983818) bm!633873))

(declare-fun m!7670850 () Bool)

(assert (=> bm!633873 m!7670850))

(declare-fun m!7670852 () Bool)

(assert (=> bm!633874 m!7670852))

(assert (=> d!2174943 d!2175069))

(declare-fun d!2175071 () Bool)

(declare-fun c!1294869 () Bool)

(assert (=> d!2175071 (= c!1294869 (isEmpty!39098 s!7408))))

(declare-fun e!4197454 () Bool)

(assert (=> d!2175071 (= (matchZipper!2726 (set.insert lt!2482967 (as set.empty (Set Context!12364))) s!7408) e!4197454)))

(declare-fun b!6983820 () Bool)

(assert (=> b!6983820 (= e!4197454 (nullableZipper!2413 (set.insert lt!2482967 (as set.empty (Set Context!12364)))))))

(declare-fun b!6983821 () Bool)

(assert (=> b!6983821 (= e!4197454 (matchZipper!2726 (derivationStepZipper!2666 (set.insert lt!2482967 (as set.empty (Set Context!12364))) (head!14087 s!7408)) (tail!13174 s!7408)))))

(assert (= (and d!2175071 c!1294869) b!6983820))

(assert (= (and d!2175071 (not c!1294869)) b!6983821))

(assert (=> d!2175071 m!7670466))

(assert (=> b!6983820 m!7670624))

(declare-fun m!7670854 () Bool)

(assert (=> b!6983820 m!7670854))

(assert (=> b!6983821 m!7670470))

(assert (=> b!6983821 m!7670624))

(assert (=> b!6983821 m!7670470))

(declare-fun m!7670856 () Bool)

(assert (=> b!6983821 m!7670856))

(assert (=> b!6983821 m!7670474))

(assert (=> b!6983821 m!7670856))

(assert (=> b!6983821 m!7670474))

(declare-fun m!7670858 () Bool)

(assert (=> b!6983821 m!7670858))

(assert (=> bs!1861254 d!2175071))

(declare-fun d!2175073 () Bool)

(assert (=> d!2175073 true))

(declare-fun setRes!47626 () Bool)

(assert (=> d!2175073 setRes!47626))

(declare-fun condSetEmpty!47626 () Bool)

(declare-fun res!2847861 () (Set Context!12364))

(assert (=> d!2175073 (= condSetEmpty!47626 (= res!2847861 (as set.empty (Set Context!12364))))))

(assert (=> d!2175073 (= (choose!52109 lt!2482887 lambda!399731) res!2847861)))

(declare-fun setIsEmpty!47626 () Bool)

(assert (=> setIsEmpty!47626 setRes!47626))

(declare-fun tp!1928756 () Bool)

(declare-fun setNonEmpty!47626 () Bool)

(declare-fun setElem!47626 () Context!12364)

(declare-fun e!4197457 () Bool)

(assert (=> setNonEmpty!47626 (= setRes!47626 (and tp!1928756 (inv!85825 setElem!47626) e!4197457))))

(declare-fun setRest!47626 () (Set Context!12364))

(assert (=> setNonEmpty!47626 (= res!2847861 (set.union (set.insert setElem!47626 (as set.empty (Set Context!12364))) setRest!47626))))

(declare-fun b!6983824 () Bool)

(declare-fun tp!1928755 () Bool)

(assert (=> b!6983824 (= e!4197457 tp!1928755)))

(assert (= (and d!2175073 condSetEmpty!47626) setIsEmpty!47626))

(assert (= (and d!2175073 (not condSetEmpty!47626)) setNonEmpty!47626))

(assert (= setNonEmpty!47626 b!6983824))

(declare-fun m!7670860 () Bool)

(assert (=> setNonEmpty!47626 m!7670860))

(assert (=> d!2174959 d!2175073))

(declare-fun d!2175075 () Bool)

(declare-fun c!1294870 () Bool)

(assert (=> d!2175075 (= c!1294870 (isEmpty!39098 (tail!13174 s!7408)))))

(declare-fun e!4197458 () Bool)

(assert (=> d!2175075 (= (matchZipper!2726 (derivationStepZipper!2666 lt!2482868 (head!14087 s!7408)) (tail!13174 s!7408)) e!4197458)))

(declare-fun b!6983825 () Bool)

(assert (=> b!6983825 (= e!4197458 (nullableZipper!2413 (derivationStepZipper!2666 lt!2482868 (head!14087 s!7408))))))

(declare-fun b!6983826 () Bool)

(assert (=> b!6983826 (= e!4197458 (matchZipper!2726 (derivationStepZipper!2666 (derivationStepZipper!2666 lt!2482868 (head!14087 s!7408)) (head!14087 (tail!13174 s!7408))) (tail!13174 (tail!13174 s!7408))))))

(assert (= (and d!2175075 c!1294870) b!6983825))

(assert (= (and d!2175075 (not c!1294870)) b!6983826))

(assert (=> d!2175075 m!7670474))

(declare-fun m!7670862 () Bool)

(assert (=> d!2175075 m!7670862))

(assert (=> b!6983825 m!7670472))

(declare-fun m!7670864 () Bool)

(assert (=> b!6983825 m!7670864))

(assert (=> b!6983826 m!7670474))

(declare-fun m!7670866 () Bool)

(assert (=> b!6983826 m!7670866))

(assert (=> b!6983826 m!7670472))

(assert (=> b!6983826 m!7670866))

(declare-fun m!7670868 () Bool)

(assert (=> b!6983826 m!7670868))

(assert (=> b!6983826 m!7670474))

(declare-fun m!7670870 () Bool)

(assert (=> b!6983826 m!7670870))

(assert (=> b!6983826 m!7670868))

(assert (=> b!6983826 m!7670870))

(declare-fun m!7670872 () Bool)

(assert (=> b!6983826 m!7670872))

(assert (=> b!6983477 d!2175075))

(declare-fun bs!1861286 () Bool)

(declare-fun d!2175077 () Bool)

(assert (= bs!1861286 (and d!2175077 b!6983401)))

(declare-fun lambda!399802 () Int)

(assert (=> bs!1861286 (= (= (head!14087 s!7408) (h!73428 s!7408)) (= lambda!399802 lambda!399731))))

(declare-fun bs!1861287 () Bool)

(assert (= bs!1861287 (and d!2175077 d!2174957)))

(assert (=> bs!1861287 (= (= (head!14087 s!7408) (h!73428 s!7408)) (= lambda!399802 lambda!399779))))

(assert (=> d!2175077 true))

(assert (=> d!2175077 (= (derivationStepZipper!2666 lt!2482868 (head!14087 s!7408)) (flatMap!2172 lt!2482868 lambda!399802))))

(declare-fun bs!1861288 () Bool)

(assert (= bs!1861288 d!2175077))

(declare-fun m!7670874 () Bool)

(assert (=> bs!1861288 m!7670874))

(assert (=> b!6983477 d!2175077))

(declare-fun d!2175079 () Bool)

(assert (=> d!2175079 (= (head!14087 s!7408) (h!73428 s!7408))))

(assert (=> b!6983477 d!2175079))

(declare-fun d!2175081 () Bool)

(assert (=> d!2175081 (= (tail!13174 s!7408) (t!380849 s!7408))))

(assert (=> b!6983477 d!2175081))

(declare-fun d!2175083 () Bool)

(declare-fun c!1294871 () Bool)

(declare-fun e!4197460 () Bool)

(assert (=> d!2175083 (= c!1294871 e!4197460)))

(declare-fun res!2847862 () Bool)

(assert (=> d!2175083 (=> (not res!2847862) (not e!4197460))))

(assert (=> d!2175083 (= res!2847862 (is-Cons!66979 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482882))))))))

(declare-fun e!4197459 () (Set Context!12364))

(assert (=> d!2175083 (= (derivationStepZipperUp!1836 (Context!12365 (t!380848 (exprs!6682 lt!2482882))) (h!73428 s!7408)) e!4197459)))

(declare-fun call!633880 () (Set Context!12364))

(declare-fun b!6983827 () Bool)

(assert (=> b!6983827 (= e!4197459 (set.union call!633880 (derivationStepZipperUp!1836 (Context!12365 (t!380848 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482882)))))) (h!73428 s!7408))))))

(declare-fun bm!633875 () Bool)

(assert (=> bm!633875 (= call!633880 (derivationStepZipperDown!1904 (h!73427 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482882))))) (Context!12365 (t!380848 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482882)))))) (h!73428 s!7408)))))

(declare-fun b!6983828 () Bool)

(declare-fun e!4197461 () (Set Context!12364))

(assert (=> b!6983828 (= e!4197461 (as set.empty (Set Context!12364)))))

(declare-fun b!6983829 () Bool)

(assert (=> b!6983829 (= e!4197461 call!633880)))

(declare-fun b!6983830 () Bool)

(assert (=> b!6983830 (= e!4197459 e!4197461)))

(declare-fun c!1294872 () Bool)

(assert (=> b!6983830 (= c!1294872 (is-Cons!66979 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482882))))))))

(declare-fun b!6983831 () Bool)

(assert (=> b!6983831 (= e!4197460 (nullable!6946 (h!73427 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482882)))))))))

(assert (= (and d!2175083 res!2847862) b!6983831))

(assert (= (and d!2175083 c!1294871) b!6983827))

(assert (= (and d!2175083 (not c!1294871)) b!6983830))

(assert (= (and b!6983830 c!1294872) b!6983829))

(assert (= (and b!6983830 (not c!1294872)) b!6983828))

(assert (= (or b!6983827 b!6983829) bm!633875))

(declare-fun m!7670876 () Bool)

(assert (=> b!6983827 m!7670876))

(declare-fun m!7670878 () Bool)

(assert (=> bm!633875 m!7670878))

(declare-fun m!7670880 () Bool)

(assert (=> b!6983831 m!7670880))

(assert (=> b!6983493 d!2175083))

(declare-fun bs!1861289 () Bool)

(declare-fun d!2175085 () Bool)

(assert (= bs!1861289 (and d!2175085 b!6983398)))

(declare-fun lambda!399803 () Int)

(assert (=> bs!1861289 (not (= lambda!399803 lambda!399728))))

(declare-fun bs!1861290 () Bool)

(assert (= bs!1861290 (and d!2175085 d!2174927)))

(assert (=> bs!1861290 (= (= lambda!399767 lambda!399728) (= lambda!399803 lambda!399764))))

(declare-fun bs!1861291 () Bool)

(assert (= bs!1861291 (and d!2175085 d!2174931)))

(assert (=> bs!1861291 (not (= lambda!399803 lambda!399767))))

(declare-fun bs!1861292 () Bool)

(assert (= bs!1861292 (and d!2175085 d!2175057)))

(assert (=> bs!1861292 (not (= lambda!399803 lambda!399801))))

(assert (=> d!2175085 true))

(assert (=> d!2175085 (< (dynLambda!26803 order!27867 lambda!399767) (dynLambda!26803 order!27867 lambda!399803))))

(assert (=> d!2175085 (= (exists!2954 lt!2482872 lambda!399767) (not (forall!16084 lt!2482872 lambda!399803)))))

(declare-fun bs!1861293 () Bool)

(assert (= bs!1861293 d!2175085))

(declare-fun m!7670882 () Bool)

(assert (=> bs!1861293 m!7670882))

(assert (=> d!2174931 d!2175085))

(declare-fun bs!1861294 () Bool)

(declare-fun d!2175087 () Bool)

(assert (= bs!1861294 (and d!2175087 d!2174931)))

(declare-fun lambda!399806 () Int)

(assert (=> bs!1861294 (= lambda!399806 lambda!399767)))

(declare-fun bs!1861295 () Bool)

(assert (= bs!1861295 (and d!2175087 d!2175057)))

(assert (=> bs!1861295 (not (= lambda!399806 lambda!399801))))

(declare-fun bs!1861296 () Bool)

(assert (= bs!1861296 (and d!2175087 b!6983398)))

(assert (=> bs!1861296 (= lambda!399806 lambda!399728)))

(declare-fun bs!1861297 () Bool)

(assert (= bs!1861297 (and d!2175087 d!2175085)))

(assert (=> bs!1861297 (not (= lambda!399806 lambda!399803))))

(declare-fun bs!1861298 () Bool)

(assert (= bs!1861298 (and d!2175087 d!2174927)))

(assert (=> bs!1861298 (not (= lambda!399806 lambda!399764))))

(assert (=> d!2175087 true))

(assert (=> d!2175087 (exists!2954 lt!2482872 lambda!399806)))

(assert (=> d!2175087 true))

(declare-fun _$60!1051 () Unit!161026)

(assert (=> d!2175087 (= (choose!52107 lt!2482872 s!7408) _$60!1051)))

(declare-fun bs!1861299 () Bool)

(assert (= bs!1861299 d!2175087))

(declare-fun m!7670884 () Bool)

(assert (=> bs!1861299 m!7670884))

(assert (=> d!2174931 d!2175087))

(declare-fun d!2175089 () Bool)

(declare-fun c!1294875 () Bool)

(assert (=> d!2175089 (= c!1294875 (isEmpty!39098 s!7408))))

(declare-fun e!4197462 () Bool)

(assert (=> d!2175089 (= (matchZipper!2726 (content!13220 lt!2482872) s!7408) e!4197462)))

(declare-fun b!6983832 () Bool)

(assert (=> b!6983832 (= e!4197462 (nullableZipper!2413 (content!13220 lt!2482872)))))

(declare-fun b!6983833 () Bool)

(assert (=> b!6983833 (= e!4197462 (matchZipper!2726 (derivationStepZipper!2666 (content!13220 lt!2482872) (head!14087 s!7408)) (tail!13174 s!7408)))))

(assert (= (and d!2175089 c!1294875) b!6983832))

(assert (= (and d!2175089 (not c!1294875)) b!6983833))

(assert (=> d!2175089 m!7670466))

(assert (=> b!6983832 m!7670490))

(declare-fun m!7670886 () Bool)

(assert (=> b!6983832 m!7670886))

(assert (=> b!6983833 m!7670470))

(assert (=> b!6983833 m!7670490))

(assert (=> b!6983833 m!7670470))

(declare-fun m!7670888 () Bool)

(assert (=> b!6983833 m!7670888))

(assert (=> b!6983833 m!7670474))

(assert (=> b!6983833 m!7670888))

(assert (=> b!6983833 m!7670474))

(declare-fun m!7670890 () Bool)

(assert (=> b!6983833 m!7670890))

(assert (=> d!2174931 d!2175089))

(declare-fun d!2175091 () Bool)

(declare-fun c!1294878 () Bool)

(assert (=> d!2175091 (= c!1294878 (is-Nil!66981 lt!2482872))))

(declare-fun e!4197465 () (Set Context!12364))

(assert (=> d!2175091 (= (content!13220 lt!2482872) e!4197465)))

(declare-fun b!6983838 () Bool)

(assert (=> b!6983838 (= e!4197465 (as set.empty (Set Context!12364)))))

(declare-fun b!6983839 () Bool)

(assert (=> b!6983839 (= e!4197465 (set.union (set.insert (h!73429 lt!2482872) (as set.empty (Set Context!12364))) (content!13220 (t!380850 lt!2482872))))))

(assert (= (and d!2175091 c!1294878) b!6983838))

(assert (= (and d!2175091 (not c!1294878)) b!6983839))

(declare-fun m!7670892 () Bool)

(assert (=> b!6983839 m!7670892))

(declare-fun m!7670894 () Bool)

(assert (=> b!6983839 m!7670894))

(assert (=> d!2174931 d!2175091))

(declare-fun d!2175093 () Bool)

(declare-fun lt!2483027 () Int)

(assert (=> d!2175093 (>= lt!2483027 0)))

(declare-fun e!4197468 () Int)

(assert (=> d!2175093 (= lt!2483027 e!4197468)))

(declare-fun c!1294881 () Bool)

(assert (=> d!2175093 (= c!1294881 (is-Nil!66979 lt!2482979))))

(assert (=> d!2175093 (= (size!40885 lt!2482979) lt!2483027)))

(declare-fun b!6983844 () Bool)

(assert (=> b!6983844 (= e!4197468 0)))

(declare-fun b!6983845 () Bool)

(assert (=> b!6983845 (= e!4197468 (+ 1 (size!40885 (t!380848 lt!2482979))))))

(assert (= (and d!2175093 c!1294881) b!6983844))

(assert (= (and d!2175093 (not c!1294881)) b!6983845))

(declare-fun m!7670896 () Bool)

(assert (=> b!6983845 m!7670896))

(assert (=> b!6983508 d!2175093))

(declare-fun d!2175095 () Bool)

(declare-fun lt!2483028 () Int)

(assert (=> d!2175095 (>= lt!2483028 0)))

(declare-fun e!4197469 () Int)

(assert (=> d!2175095 (= lt!2483028 e!4197469)))

(declare-fun c!1294882 () Bool)

(assert (=> d!2175095 (= c!1294882 (is-Nil!66979 lt!2482889))))

(assert (=> d!2175095 (= (size!40885 lt!2482889) lt!2483028)))

(declare-fun b!6983846 () Bool)

(assert (=> b!6983846 (= e!4197469 0)))

(declare-fun b!6983847 () Bool)

(assert (=> b!6983847 (= e!4197469 (+ 1 (size!40885 (t!380848 lt!2482889))))))

(assert (= (and d!2175095 c!1294882) b!6983846))

(assert (= (and d!2175095 (not c!1294882)) b!6983847))

(declare-fun m!7670898 () Bool)

(assert (=> b!6983847 m!7670898))

(assert (=> b!6983508 d!2175095))

(declare-fun d!2175097 () Bool)

(declare-fun lt!2483029 () Int)

(assert (=> d!2175097 (>= lt!2483029 0)))

(declare-fun e!4197470 () Int)

(assert (=> d!2175097 (= lt!2483029 e!4197470)))

(declare-fun c!1294883 () Bool)

(assert (=> d!2175097 (= c!1294883 (is-Nil!66979 (exprs!6682 ct2!306)))))

(assert (=> d!2175097 (= (size!40885 (exprs!6682 ct2!306)) lt!2483029)))

(declare-fun b!6983848 () Bool)

(assert (=> b!6983848 (= e!4197470 0)))

(declare-fun b!6983849 () Bool)

(assert (=> b!6983849 (= e!4197470 (+ 1 (size!40885 (t!380848 (exprs!6682 ct2!306)))))))

(assert (= (and d!2175097 c!1294883) b!6983848))

(assert (= (and d!2175097 (not c!1294883)) b!6983849))

(declare-fun m!7670900 () Bool)

(assert (=> b!6983849 m!7670900))

(assert (=> b!6983508 d!2175097))

(declare-fun d!2175099 () Bool)

(declare-fun c!1294884 () Bool)

(assert (=> d!2175099 (= c!1294884 (isEmpty!39098 (tail!13174 (t!380849 s!7408))))))

(declare-fun e!4197471 () Bool)

(assert (=> d!2175099 (= (matchZipper!2726 (derivationStepZipper!2666 lt!2482888 (head!14087 (t!380849 s!7408))) (tail!13174 (t!380849 s!7408))) e!4197471)))

(declare-fun b!6983850 () Bool)

(assert (=> b!6983850 (= e!4197471 (nullableZipper!2413 (derivationStepZipper!2666 lt!2482888 (head!14087 (t!380849 s!7408)))))))

(declare-fun b!6983851 () Bool)

(assert (=> b!6983851 (= e!4197471 (matchZipper!2726 (derivationStepZipper!2666 (derivationStepZipper!2666 lt!2482888 (head!14087 (t!380849 s!7408))) (head!14087 (tail!13174 (t!380849 s!7408)))) (tail!13174 (tail!13174 (t!380849 s!7408)))))))

(assert (= (and d!2175099 c!1294884) b!6983850))

(assert (= (and d!2175099 (not c!1294884)) b!6983851))

(assert (=> d!2175099 m!7670556))

(declare-fun m!7670902 () Bool)

(assert (=> d!2175099 m!7670902))

(assert (=> b!6983850 m!7670554))

(declare-fun m!7670904 () Bool)

(assert (=> b!6983850 m!7670904))

(assert (=> b!6983851 m!7670556))

(declare-fun m!7670906 () Bool)

(assert (=> b!6983851 m!7670906))

(assert (=> b!6983851 m!7670554))

(assert (=> b!6983851 m!7670906))

(declare-fun m!7670908 () Bool)

(assert (=> b!6983851 m!7670908))

(assert (=> b!6983851 m!7670556))

(declare-fun m!7670910 () Bool)

(assert (=> b!6983851 m!7670910))

(assert (=> b!6983851 m!7670908))

(assert (=> b!6983851 m!7670910))

(declare-fun m!7670912 () Bool)

(assert (=> b!6983851 m!7670912))

(assert (=> b!6983546 d!2175099))

(declare-fun bs!1861300 () Bool)

(declare-fun d!2175101 () Bool)

(assert (= bs!1861300 (and d!2175101 b!6983401)))

(declare-fun lambda!399807 () Int)

(assert (=> bs!1861300 (= (= (head!14087 (t!380849 s!7408)) (h!73428 s!7408)) (= lambda!399807 lambda!399731))))

(declare-fun bs!1861301 () Bool)

(assert (= bs!1861301 (and d!2175101 d!2174957)))

(assert (=> bs!1861301 (= (= (head!14087 (t!380849 s!7408)) (h!73428 s!7408)) (= lambda!399807 lambda!399779))))

(declare-fun bs!1861302 () Bool)

(assert (= bs!1861302 (and d!2175101 d!2175077)))

(assert (=> bs!1861302 (= (= (head!14087 (t!380849 s!7408)) (head!14087 s!7408)) (= lambda!399807 lambda!399802))))

(assert (=> d!2175101 true))

(assert (=> d!2175101 (= (derivationStepZipper!2666 lt!2482888 (head!14087 (t!380849 s!7408))) (flatMap!2172 lt!2482888 lambda!399807))))

(declare-fun bs!1861303 () Bool)

(assert (= bs!1861303 d!2175101))

(declare-fun m!7670914 () Bool)

(assert (=> bs!1861303 m!7670914))

(assert (=> b!6983546 d!2175101))

(declare-fun d!2175103 () Bool)

(assert (=> d!2175103 (= (head!14087 (t!380849 s!7408)) (h!73428 (t!380849 s!7408)))))

(assert (=> b!6983546 d!2175103))

(declare-fun d!2175105 () Bool)

(assert (=> d!2175105 (= (tail!13174 (t!380849 s!7408)) (t!380849 (t!380849 s!7408)))))

(assert (=> b!6983546 d!2175105))

(declare-fun d!2175107 () Bool)

(assert (=> d!2175107 (= (nullable!6946 (reg!17515 (h!73427 (exprs!6682 lt!2482880)))) (nullableFct!2616 (reg!17515 (h!73427 (exprs!6682 lt!2482880)))))))

(declare-fun bs!1861304 () Bool)

(assert (= bs!1861304 d!2175107))

(declare-fun m!7670916 () Bool)

(assert (=> bs!1861304 m!7670916))

(assert (=> b!6983578 d!2175107))

(declare-fun d!2175109 () Bool)

(declare-fun c!1294885 () Bool)

(assert (=> d!2175109 (= c!1294885 (isEmpty!39098 (tail!13174 s!7408)))))

(declare-fun e!4197472 () Bool)

(assert (=> d!2175109 (= (matchZipper!2726 (derivationStepZipper!2666 lt!2482879 (head!14087 s!7408)) (tail!13174 s!7408)) e!4197472)))

(declare-fun b!6983852 () Bool)

(assert (=> b!6983852 (= e!4197472 (nullableZipper!2413 (derivationStepZipper!2666 lt!2482879 (head!14087 s!7408))))))

(declare-fun b!6983853 () Bool)

(assert (=> b!6983853 (= e!4197472 (matchZipper!2726 (derivationStepZipper!2666 (derivationStepZipper!2666 lt!2482879 (head!14087 s!7408)) (head!14087 (tail!13174 s!7408))) (tail!13174 (tail!13174 s!7408))))))

(assert (= (and d!2175109 c!1294885) b!6983852))

(assert (= (and d!2175109 (not c!1294885)) b!6983853))

(assert (=> d!2175109 m!7670474))

(assert (=> d!2175109 m!7670862))

(assert (=> b!6983852 m!7670540))

(declare-fun m!7670918 () Bool)

(assert (=> b!6983852 m!7670918))

(assert (=> b!6983853 m!7670474))

(assert (=> b!6983853 m!7670866))

(assert (=> b!6983853 m!7670540))

(assert (=> b!6983853 m!7670866))

(declare-fun m!7670920 () Bool)

(assert (=> b!6983853 m!7670920))

(assert (=> b!6983853 m!7670474))

(assert (=> b!6983853 m!7670870))

(assert (=> b!6983853 m!7670920))

(assert (=> b!6983853 m!7670870))

(declare-fun m!7670922 () Bool)

(assert (=> b!6983853 m!7670922))

(assert (=> b!6983544 d!2175109))

(declare-fun bs!1861305 () Bool)

(declare-fun d!2175111 () Bool)

(assert (= bs!1861305 (and d!2175111 b!6983401)))

(declare-fun lambda!399808 () Int)

(assert (=> bs!1861305 (= (= (head!14087 s!7408) (h!73428 s!7408)) (= lambda!399808 lambda!399731))))

(declare-fun bs!1861306 () Bool)

(assert (= bs!1861306 (and d!2175111 d!2174957)))

(assert (=> bs!1861306 (= (= (head!14087 s!7408) (h!73428 s!7408)) (= lambda!399808 lambda!399779))))

(declare-fun bs!1861307 () Bool)

(assert (= bs!1861307 (and d!2175111 d!2175077)))

(assert (=> bs!1861307 (= lambda!399808 lambda!399802)))

(declare-fun bs!1861308 () Bool)

(assert (= bs!1861308 (and d!2175111 d!2175101)))

(assert (=> bs!1861308 (= (= (head!14087 s!7408) (head!14087 (t!380849 s!7408))) (= lambda!399808 lambda!399807))))

(assert (=> d!2175111 true))

(assert (=> d!2175111 (= (derivationStepZipper!2666 lt!2482879 (head!14087 s!7408)) (flatMap!2172 lt!2482879 lambda!399808))))

(declare-fun bs!1861309 () Bool)

(assert (= bs!1861309 d!2175111))

(declare-fun m!7670924 () Bool)

(assert (=> bs!1861309 m!7670924))

(assert (=> b!6983544 d!2175111))

(assert (=> b!6983544 d!2175079))

(assert (=> b!6983544 d!2175081))

(declare-fun b!6983866 () Bool)

(declare-fun e!4197481 () Context!12364)

(assert (=> b!6983866 (= e!4197481 (getWitness!1067 (t!380850 (toList!10546 lt!2482879)) lambda!399728))))

(declare-fun b!6983867 () Bool)

(declare-fun e!4197482 () Context!12364)

(assert (=> b!6983867 (= e!4197482 e!4197481)))

(declare-fun c!1294890 () Bool)

(assert (=> b!6983867 (= c!1294890 (is-Cons!66981 (toList!10546 lt!2482879)))))

(declare-fun d!2175113 () Bool)

(declare-fun e!4197484 () Bool)

(assert (=> d!2175113 e!4197484))

(declare-fun res!2847867 () Bool)

(assert (=> d!2175113 (=> (not res!2847867) (not e!4197484))))

(declare-fun lt!2483034 () Context!12364)

(assert (=> d!2175113 (= res!2847867 (dynLambda!26802 lambda!399728 lt!2483034))))

(assert (=> d!2175113 (= lt!2483034 e!4197482)))

(declare-fun c!1294891 () Bool)

(declare-fun e!4197483 () Bool)

(assert (=> d!2175113 (= c!1294891 e!4197483)))

(declare-fun res!2847868 () Bool)

(assert (=> d!2175113 (=> (not res!2847868) (not e!4197483))))

(assert (=> d!2175113 (= res!2847868 (is-Cons!66981 (toList!10546 lt!2482879)))))

(assert (=> d!2175113 (exists!2954 (toList!10546 lt!2482879) lambda!399728)))

(assert (=> d!2175113 (= (getWitness!1067 (toList!10546 lt!2482879) lambda!399728) lt!2483034)))

(declare-fun b!6983868 () Bool)

(declare-fun lt!2483035 () Unit!161026)

(declare-fun Unit!161030 () Unit!161026)

(assert (=> b!6983868 (= lt!2483035 Unit!161030)))

(assert (=> b!6983868 false))

(declare-fun head!14089 (List!67105) Context!12364)

(assert (=> b!6983868 (= e!4197481 (head!14089 (toList!10546 lt!2482879)))))

(declare-fun b!6983869 () Bool)

(assert (=> b!6983869 (= e!4197482 (h!73429 (toList!10546 lt!2482879)))))

(declare-fun b!6983870 () Bool)

(assert (=> b!6983870 (= e!4197484 (contains!20410 (toList!10546 lt!2482879) lt!2483034))))

(declare-fun b!6983871 () Bool)

(assert (=> b!6983871 (= e!4197483 (dynLambda!26802 lambda!399728 (h!73429 (toList!10546 lt!2482879))))))

(assert (= (and d!2175113 res!2847868) b!6983871))

(assert (= (and d!2175113 c!1294891) b!6983869))

(assert (= (and d!2175113 (not c!1294891)) b!6983867))

(assert (= (and b!6983867 c!1294890) b!6983866))

(assert (= (and b!6983867 (not c!1294890)) b!6983868))

(assert (= (and d!2175113 res!2847867) b!6983870))

(declare-fun b_lambda!261963 () Bool)

(assert (=> (not b_lambda!261963) (not d!2175113)))

(declare-fun b_lambda!261965 () Bool)

(assert (=> (not b_lambda!261965) (not b!6983871)))

(assert (=> b!6983870 m!7670350))

(declare-fun m!7670926 () Bool)

(assert (=> b!6983870 m!7670926))

(declare-fun m!7670928 () Bool)

(assert (=> b!6983866 m!7670928))

(assert (=> b!6983868 m!7670350))

(declare-fun m!7670930 () Bool)

(assert (=> b!6983868 m!7670930))

(declare-fun m!7670932 () Bool)

(assert (=> b!6983871 m!7670932))

(declare-fun m!7670934 () Bool)

(assert (=> d!2175113 m!7670934))

(assert (=> d!2175113 m!7670350))

(declare-fun m!7670936 () Bool)

(assert (=> d!2175113 m!7670936))

(assert (=> d!2174923 d!2175113))

(assert (=> d!2174923 d!2174929))

(declare-fun d!2175115 () Bool)

(declare-fun lt!2483038 () Bool)

(assert (=> d!2175115 (= lt!2483038 (exists!2954 (toList!10546 lt!2482879) lambda!399728))))

(declare-fun choose!52120 ((Set Context!12364) Int) Bool)

(assert (=> d!2175115 (= lt!2483038 (choose!52120 lt!2482879 lambda!399728))))

(assert (=> d!2175115 (= (exists!2956 lt!2482879 lambda!399728) lt!2483038)))

(declare-fun bs!1861310 () Bool)

(assert (= bs!1861310 d!2175115))

(assert (=> bs!1861310 m!7670350))

(assert (=> bs!1861310 m!7670350))

(assert (=> bs!1861310 m!7670936))

(declare-fun m!7670938 () Bool)

(assert (=> bs!1861310 m!7670938))

(assert (=> d!2174923 d!2175115))

(declare-fun d!2175117 () Bool)

(declare-fun c!1294894 () Bool)

(assert (=> d!2175117 (= c!1294894 (is-Nil!66979 lt!2482979))))

(declare-fun e!4197487 () (Set Regex!17186))

(assert (=> d!2175117 (= (content!13221 lt!2482979) e!4197487)))

(declare-fun b!6983876 () Bool)

(assert (=> b!6983876 (= e!4197487 (as set.empty (Set Regex!17186)))))

(declare-fun b!6983877 () Bool)

(assert (=> b!6983877 (= e!4197487 (set.union (set.insert (h!73427 lt!2482979) (as set.empty (Set Regex!17186))) (content!13221 (t!380848 lt!2482979))))))

(assert (= (and d!2175117 c!1294894) b!6983876))

(assert (= (and d!2175117 (not c!1294894)) b!6983877))

(declare-fun m!7670940 () Bool)

(assert (=> b!6983877 m!7670940))

(declare-fun m!7670942 () Bool)

(assert (=> b!6983877 m!7670942))

(assert (=> d!2174937 d!2175117))

(declare-fun d!2175119 () Bool)

(declare-fun c!1294895 () Bool)

(assert (=> d!2175119 (= c!1294895 (is-Nil!66979 lt!2482889))))

(declare-fun e!4197488 () (Set Regex!17186))

(assert (=> d!2175119 (= (content!13221 lt!2482889) e!4197488)))

(declare-fun b!6983878 () Bool)

(assert (=> b!6983878 (= e!4197488 (as set.empty (Set Regex!17186)))))

(declare-fun b!6983879 () Bool)

(assert (=> b!6983879 (= e!4197488 (set.union (set.insert (h!73427 lt!2482889) (as set.empty (Set Regex!17186))) (content!13221 (t!380848 lt!2482889))))))

(assert (= (and d!2175119 c!1294895) b!6983878))

(assert (= (and d!2175119 (not c!1294895)) b!6983879))

(declare-fun m!7670944 () Bool)

(assert (=> b!6983879 m!7670944))

(declare-fun m!7670946 () Bool)

(assert (=> b!6983879 m!7670946))

(assert (=> d!2174937 d!2175119))

(declare-fun d!2175121 () Bool)

(declare-fun c!1294896 () Bool)

(assert (=> d!2175121 (= c!1294896 (is-Nil!66979 (exprs!6682 ct2!306)))))

(declare-fun e!4197489 () (Set Regex!17186))

(assert (=> d!2175121 (= (content!13221 (exprs!6682 ct2!306)) e!4197489)))

(declare-fun b!6983880 () Bool)

(assert (=> b!6983880 (= e!4197489 (as set.empty (Set Regex!17186)))))

(declare-fun b!6983881 () Bool)

(assert (=> b!6983881 (= e!4197489 (set.union (set.insert (h!73427 (exprs!6682 ct2!306)) (as set.empty (Set Regex!17186))) (content!13221 (t!380848 (exprs!6682 ct2!306)))))))

(assert (= (and d!2175121 c!1294896) b!6983880))

(assert (= (and d!2175121 (not c!1294896)) b!6983881))

(declare-fun m!7670948 () Bool)

(assert (=> b!6983881 m!7670948))

(declare-fun m!7670950 () Bool)

(assert (=> b!6983881 m!7670950))

(assert (=> d!2174937 d!2175121))

(declare-fun bm!633876 () Bool)

(declare-fun c!1294897 () Bool)

(declare-fun c!1294900 () Bool)

(declare-fun call!633884 () List!67103)

(assert (=> bm!633876 (= call!633884 ($colon$colon!2465 (exprs!6682 (ite (or c!1294789 c!1294788) lt!2482882 (Context!12365 call!633819))) (ite (or c!1294897 c!1294900) (regTwo!34884 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))) (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880)))))))))))

(declare-fun bm!633877 () Bool)

(declare-fun call!633886 () (Set Context!12364))

(declare-fun call!633881 () (Set Context!12364))

(assert (=> bm!633877 (= call!633886 call!633881)))

(declare-fun c!1294901 () Bool)

(declare-fun b!6983882 () Bool)

(assert (=> b!6983882 (= c!1294901 (is-Star!17186 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))))))

(declare-fun e!4197495 () (Set Context!12364))

(declare-fun e!4197491 () (Set Context!12364))

(assert (=> b!6983882 (= e!4197495 e!4197491)))

(declare-fun c!1294898 () Bool)

(declare-fun call!633883 () List!67103)

(declare-fun bm!633878 () Bool)

(assert (=> bm!633878 (= call!633881 (derivationStepZipperDown!1904 (ite c!1294898 (regTwo!34885 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))) (ite c!1294897 (regTwo!34884 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))) (ite c!1294900 (regOne!34884 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))) (reg!17515 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880)))))))))) (ite (or c!1294898 c!1294897) (ite (or c!1294789 c!1294788) lt!2482882 (Context!12365 call!633819)) (Context!12365 call!633883)) (h!73428 s!7408)))))

(declare-fun b!6983883 () Bool)

(assert (=> b!6983883 (= e!4197491 (as set.empty (Set Context!12364)))))

(declare-fun b!6983884 () Bool)

(declare-fun call!633885 () (Set Context!12364))

(assert (=> b!6983884 (= e!4197495 call!633885)))

(declare-fun e!4197493 () Bool)

(declare-fun b!6983885 () Bool)

(assert (=> b!6983885 (= e!4197493 (nullable!6946 (regOne!34884 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880)))))))))))

(declare-fun b!6983886 () Bool)

(assert (=> b!6983886 (= e!4197491 call!633885)))

(declare-fun e!4197492 () (Set Context!12364))

(declare-fun b!6983887 () Bool)

(assert (=> b!6983887 (= e!4197492 (set.insert (ite (or c!1294789 c!1294788) lt!2482882 (Context!12365 call!633819)) (as set.empty (Set Context!12364))))))

(declare-fun b!6983888 () Bool)

(declare-fun e!4197494 () (Set Context!12364))

(assert (=> b!6983888 (= e!4197492 e!4197494)))

(assert (=> b!6983888 (= c!1294898 (is-Union!17186 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))))))

(declare-fun bm!633880 () Bool)

(declare-fun call!633882 () (Set Context!12364))

(assert (=> bm!633880 (= call!633882 (derivationStepZipperDown!1904 (ite c!1294898 (regOne!34885 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))) (regOne!34884 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880)))))))) (ite c!1294898 (ite (or c!1294789 c!1294788) lt!2482882 (Context!12365 call!633819)) (Context!12365 call!633884)) (h!73428 s!7408)))))

(declare-fun b!6983889 () Bool)

(assert (=> b!6983889 (= e!4197494 (set.union call!633882 call!633881))))

(declare-fun b!6983890 () Bool)

(declare-fun e!4197490 () (Set Context!12364))

(assert (=> b!6983890 (= e!4197490 e!4197495)))

(assert (=> b!6983890 (= c!1294900 (is-Concat!26031 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))))))

(declare-fun bm!633881 () Bool)

(assert (=> bm!633881 (= call!633885 call!633886)))

(declare-fun b!6983891 () Bool)

(assert (=> b!6983891 (= c!1294897 e!4197493)))

(declare-fun res!2847869 () Bool)

(assert (=> b!6983891 (=> (not res!2847869) (not e!4197493))))

(assert (=> b!6983891 (= res!2847869 (is-Concat!26031 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))))))

(assert (=> b!6983891 (= e!4197494 e!4197490)))

(declare-fun b!6983892 () Bool)

(assert (=> b!6983892 (= e!4197490 (set.union call!633882 call!633886))))

(declare-fun c!1294899 () Bool)

(declare-fun d!2175123 () Bool)

(assert (=> d!2175123 (= c!1294899 (and (is-ElementMatch!17186 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))) (= (c!1294754 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880))))))) (h!73428 s!7408))))))

(assert (=> d!2175123 (= (derivationStepZipperDown!1904 (ite c!1294789 (regTwo!34885 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294788 (regTwo!34884 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294791 (regOne!34884 (h!73427 (exprs!6682 lt!2482880))) (reg!17515 (h!73427 (exprs!6682 lt!2482880)))))) (ite (or c!1294789 c!1294788) lt!2482882 (Context!12365 call!633819)) (h!73428 s!7408)) e!4197492)))

(declare-fun bm!633879 () Bool)

(assert (=> bm!633879 (= call!633883 call!633884)))

(assert (= (and d!2175123 c!1294899) b!6983887))

(assert (= (and d!2175123 (not c!1294899)) b!6983888))

(assert (= (and b!6983888 c!1294898) b!6983889))

(assert (= (and b!6983888 (not c!1294898)) b!6983891))

(assert (= (and b!6983891 res!2847869) b!6983885))

(assert (= (and b!6983891 c!1294897) b!6983892))

(assert (= (and b!6983891 (not c!1294897)) b!6983890))

(assert (= (and b!6983890 c!1294900) b!6983884))

(assert (= (and b!6983890 (not c!1294900)) b!6983882))

(assert (= (and b!6983882 c!1294901) b!6983886))

(assert (= (and b!6983882 (not c!1294901)) b!6983883))

(assert (= (or b!6983884 b!6983886) bm!633879))

(assert (= (or b!6983884 b!6983886) bm!633881))

(assert (= (or b!6983892 bm!633881) bm!633877))

(assert (= (or b!6983892 bm!633879) bm!633876))

(assert (= (or b!6983889 b!6983892) bm!633880))

(assert (= (or b!6983889 bm!633877) bm!633878))

(declare-fun m!7670952 () Bool)

(assert (=> b!6983887 m!7670952))

(declare-fun m!7670954 () Bool)

(assert (=> b!6983885 m!7670954))

(declare-fun m!7670956 () Bool)

(assert (=> bm!633878 m!7670956))

(declare-fun m!7670958 () Bool)

(assert (=> bm!633876 m!7670958))

(declare-fun m!7670960 () Bool)

(assert (=> bm!633880 m!7670960))

(assert (=> bm!633814 d!2175123))

(assert (=> d!2174965 d!2175053))

(declare-fun d!2175125 () Bool)

(assert (=> d!2175125 (= (nullable!6946 (h!73427 (exprs!6682 lt!2482882))) (nullableFct!2616 (h!73427 (exprs!6682 lt!2482882))))))

(declare-fun bs!1861311 () Bool)

(assert (= bs!1861311 d!2175125))

(declare-fun m!7670962 () Bool)

(assert (=> bs!1861311 m!7670962))

(assert (=> b!6983497 d!2175125))

(assert (=> d!2174925 d!2175055))

(declare-fun d!2175127 () Bool)

(declare-fun c!1294902 () Bool)

(assert (=> d!2175127 (= c!1294902 (is-Nil!66979 lt!2482989))))

(declare-fun e!4197496 () (Set Regex!17186))

(assert (=> d!2175127 (= (content!13221 lt!2482989) e!4197496)))

(declare-fun b!6983893 () Bool)

(assert (=> b!6983893 (= e!4197496 (as set.empty (Set Regex!17186)))))

(declare-fun b!6983894 () Bool)

(assert (=> b!6983894 (= e!4197496 (set.union (set.insert (h!73427 lt!2482989) (as set.empty (Set Regex!17186))) (content!13221 (t!380848 lt!2482989))))))

(assert (= (and d!2175127 c!1294902) b!6983893))

(assert (= (and d!2175127 (not c!1294902)) b!6983894))

(declare-fun m!7670964 () Bool)

(assert (=> b!6983894 m!7670964))

(declare-fun m!7670966 () Bool)

(assert (=> b!6983894 m!7670966))

(assert (=> d!2174973 d!2175127))

(declare-fun d!2175129 () Bool)

(declare-fun c!1294903 () Bool)

(assert (=> d!2175129 (= c!1294903 (is-Nil!66979 (exprs!6682 lt!2482880)))))

(declare-fun e!4197497 () (Set Regex!17186))

(assert (=> d!2175129 (= (content!13221 (exprs!6682 lt!2482880)) e!4197497)))

(declare-fun b!6983895 () Bool)

(assert (=> b!6983895 (= e!4197497 (as set.empty (Set Regex!17186)))))

(declare-fun b!6983896 () Bool)

(assert (=> b!6983896 (= e!4197497 (set.union (set.insert (h!73427 (exprs!6682 lt!2482880)) (as set.empty (Set Regex!17186))) (content!13221 (t!380848 (exprs!6682 lt!2482880)))))))

(assert (= (and d!2175129 c!1294903) b!6983895))

(assert (= (and d!2175129 (not c!1294903)) b!6983896))

(declare-fun m!7670968 () Bool)

(assert (=> b!6983896 m!7670968))

(declare-fun m!7670970 () Bool)

(assert (=> b!6983896 m!7670970))

(assert (=> d!2174973 d!2175129))

(assert (=> d!2174973 d!2175121))

(declare-fun d!2175131 () Bool)

(declare-fun res!2847874 () Bool)

(declare-fun e!4197502 () Bool)

(assert (=> d!2175131 (=> res!2847874 e!4197502)))

(assert (=> d!2175131 (= res!2847874 (is-Nil!66979 (++!15131 lt!2482889 (exprs!6682 ct2!306))))))

(assert (=> d!2175131 (= (forall!16085 (++!15131 lt!2482889 (exprs!6682 ct2!306)) lambda!399730) e!4197502)))

(declare-fun b!6983901 () Bool)

(declare-fun e!4197503 () Bool)

(assert (=> b!6983901 (= e!4197502 e!4197503)))

(declare-fun res!2847875 () Bool)

(assert (=> b!6983901 (=> (not res!2847875) (not e!4197503))))

(declare-fun dynLambda!26810 (Int Regex!17186) Bool)

(assert (=> b!6983901 (= res!2847875 (dynLambda!26810 lambda!399730 (h!73427 (++!15131 lt!2482889 (exprs!6682 ct2!306)))))))

(declare-fun b!6983902 () Bool)

(assert (=> b!6983902 (= e!4197503 (forall!16085 (t!380848 (++!15131 lt!2482889 (exprs!6682 ct2!306))) lambda!399730))))

(assert (= (and d!2175131 (not res!2847874)) b!6983901))

(assert (= (and b!6983901 res!2847875) b!6983902))

(declare-fun b_lambda!261967 () Bool)

(assert (=> (not b_lambda!261967) (not b!6983901)))

(declare-fun m!7670972 () Bool)

(assert (=> b!6983901 m!7670972))

(declare-fun m!7670974 () Bool)

(assert (=> b!6983902 m!7670974))

(assert (=> d!2174935 d!2175131))

(assert (=> d!2174935 d!2174937))

(declare-fun d!2175133 () Bool)

(assert (=> d!2175133 (forall!16085 (++!15131 lt!2482889 (exprs!6682 ct2!306)) lambda!399730)))

(assert (=> d!2175133 true))

(declare-fun _$78!487 () Unit!161026)

(assert (=> d!2175133 (= (choose!52108 lt!2482889 (exprs!6682 ct2!306) lambda!399730) _$78!487)))

(declare-fun bs!1861312 () Bool)

(assert (= bs!1861312 d!2175133))

(assert (=> bs!1861312 m!7670372))

(assert (=> bs!1861312 m!7670372))

(assert (=> bs!1861312 m!7670500))

(assert (=> d!2174935 d!2175133))

(declare-fun d!2175135 () Bool)

(declare-fun res!2847876 () Bool)

(declare-fun e!4197504 () Bool)

(assert (=> d!2175135 (=> res!2847876 e!4197504)))

(assert (=> d!2175135 (= res!2847876 (is-Nil!66979 lt!2482889))))

(assert (=> d!2175135 (= (forall!16085 lt!2482889 lambda!399730) e!4197504)))

(declare-fun b!6983903 () Bool)

(declare-fun e!4197505 () Bool)

(assert (=> b!6983903 (= e!4197504 e!4197505)))

(declare-fun res!2847877 () Bool)

(assert (=> b!6983903 (=> (not res!2847877) (not e!4197505))))

(assert (=> b!6983903 (= res!2847877 (dynLambda!26810 lambda!399730 (h!73427 lt!2482889)))))

(declare-fun b!6983904 () Bool)

(assert (=> b!6983904 (= e!4197505 (forall!16085 (t!380848 lt!2482889) lambda!399730))))

(assert (= (and d!2175135 (not res!2847876)) b!6983903))

(assert (= (and b!6983903 res!2847877) b!6983904))

(declare-fun b_lambda!261969 () Bool)

(assert (=> (not b_lambda!261969) (not b!6983903)))

(declare-fun m!7670976 () Bool)

(assert (=> b!6983903 m!7670976))

(declare-fun m!7670978 () Bool)

(assert (=> b!6983904 m!7670978))

(assert (=> d!2174935 d!2175135))

(declare-fun d!2175137 () Bool)

(declare-fun c!1294904 () Bool)

(assert (=> d!2175137 (= c!1294904 (is-Nil!66981 lt!2482970))))

(declare-fun e!4197506 () (Set Context!12364))

(assert (=> d!2175137 (= (content!13220 lt!2482970) e!4197506)))

(declare-fun b!6983905 () Bool)

(assert (=> b!6983905 (= e!4197506 (as set.empty (Set Context!12364)))))

(declare-fun b!6983906 () Bool)

(assert (=> b!6983906 (= e!4197506 (set.union (set.insert (h!73429 lt!2482970) (as set.empty (Set Context!12364))) (content!13220 (t!380850 lt!2482970))))))

(assert (= (and d!2175137 c!1294904) b!6983905))

(assert (= (and d!2175137 (not c!1294904)) b!6983906))

(declare-fun m!7670980 () Bool)

(assert (=> b!6983906 m!7670980))

(declare-fun m!7670982 () Bool)

(assert (=> b!6983906 m!7670982))

(assert (=> b!6983482 d!2175137))

(declare-fun b!6983909 () Bool)

(declare-fun res!2847878 () Bool)

(declare-fun e!4197508 () Bool)

(assert (=> b!6983909 (=> (not res!2847878) (not e!4197508))))

(declare-fun lt!2483039 () List!67103)

(assert (=> b!6983909 (= res!2847878 (= (size!40885 lt!2483039) (+ (size!40885 (t!380848 (exprs!6682 lt!2482880))) (size!40885 (exprs!6682 ct2!306)))))))

(declare-fun b!6983910 () Bool)

(assert (=> b!6983910 (= e!4197508 (or (not (= (exprs!6682 ct2!306) Nil!66979)) (= lt!2483039 (t!380848 (exprs!6682 lt!2482880)))))))

(declare-fun b!6983908 () Bool)

(declare-fun e!4197507 () List!67103)

(assert (=> b!6983908 (= e!4197507 (Cons!66979 (h!73427 (t!380848 (exprs!6682 lt!2482880))) (++!15131 (t!380848 (t!380848 (exprs!6682 lt!2482880))) (exprs!6682 ct2!306))))))

(declare-fun d!2175139 () Bool)

(assert (=> d!2175139 e!4197508))

(declare-fun res!2847879 () Bool)

(assert (=> d!2175139 (=> (not res!2847879) (not e!4197508))))

(assert (=> d!2175139 (= res!2847879 (= (content!13221 lt!2483039) (set.union (content!13221 (t!380848 (exprs!6682 lt!2482880))) (content!13221 (exprs!6682 ct2!306)))))))

(assert (=> d!2175139 (= lt!2483039 e!4197507)))

(declare-fun c!1294905 () Bool)

(assert (=> d!2175139 (= c!1294905 (is-Nil!66979 (t!380848 (exprs!6682 lt!2482880))))))

(assert (=> d!2175139 (= (++!15131 (t!380848 (exprs!6682 lt!2482880)) (exprs!6682 ct2!306)) lt!2483039)))

(declare-fun b!6983907 () Bool)

(assert (=> b!6983907 (= e!4197507 (exprs!6682 ct2!306))))

(assert (= (and d!2175139 c!1294905) b!6983907))

(assert (= (and d!2175139 (not c!1294905)) b!6983908))

(assert (= (and d!2175139 res!2847879) b!6983909))

(assert (= (and b!6983909 res!2847878) b!6983910))

(declare-fun m!7670984 () Bool)

(assert (=> b!6983909 m!7670984))

(declare-fun m!7670986 () Bool)

(assert (=> b!6983909 m!7670986))

(assert (=> b!6983909 m!7670510))

(declare-fun m!7670988 () Bool)

(assert (=> b!6983908 m!7670988))

(declare-fun m!7670990 () Bool)

(assert (=> d!2175139 m!7670990))

(assert (=> d!2175139 m!7670970))

(assert (=> d!2175139 m!7670518))

(assert (=> b!6983589 d!2175139))

(declare-fun d!2175141 () Bool)

(declare-fun c!1294906 () Bool)

(assert (=> d!2175141 (= c!1294906 (isEmpty!39098 (tail!13174 (t!380849 s!7408))))))

(declare-fun e!4197509 () Bool)

(assert (=> d!2175141 (= (matchZipper!2726 (derivationStepZipper!2666 lt!2482874 (head!14087 (t!380849 s!7408))) (tail!13174 (t!380849 s!7408))) e!4197509)))

(declare-fun b!6983911 () Bool)

(assert (=> b!6983911 (= e!4197509 (nullableZipper!2413 (derivationStepZipper!2666 lt!2482874 (head!14087 (t!380849 s!7408)))))))

(declare-fun b!6983912 () Bool)

(assert (=> b!6983912 (= e!4197509 (matchZipper!2726 (derivationStepZipper!2666 (derivationStepZipper!2666 lt!2482874 (head!14087 (t!380849 s!7408))) (head!14087 (tail!13174 (t!380849 s!7408)))) (tail!13174 (tail!13174 (t!380849 s!7408)))))))

(assert (= (and d!2175141 c!1294906) b!6983911))

(assert (= (and d!2175141 (not c!1294906)) b!6983912))

(assert (=> d!2175141 m!7670556))

(assert (=> d!2175141 m!7670902))

(assert (=> b!6983911 m!7670578))

(declare-fun m!7670992 () Bool)

(assert (=> b!6983911 m!7670992))

(assert (=> b!6983912 m!7670556))

(assert (=> b!6983912 m!7670906))

(assert (=> b!6983912 m!7670578))

(assert (=> b!6983912 m!7670906))

(declare-fun m!7670994 () Bool)

(assert (=> b!6983912 m!7670994))

(assert (=> b!6983912 m!7670556))

(assert (=> b!6983912 m!7670910))

(assert (=> b!6983912 m!7670994))

(assert (=> b!6983912 m!7670910))

(declare-fun m!7670996 () Bool)

(assert (=> b!6983912 m!7670996))

(assert (=> b!6983555 d!2175141))

(declare-fun bs!1861313 () Bool)

(declare-fun d!2175143 () Bool)

(assert (= bs!1861313 (and d!2175143 d!2175101)))

(declare-fun lambda!399809 () Int)

(assert (=> bs!1861313 (= lambda!399809 lambda!399807)))

(declare-fun bs!1861314 () Bool)

(assert (= bs!1861314 (and d!2175143 d!2175077)))

(assert (=> bs!1861314 (= (= (head!14087 (t!380849 s!7408)) (head!14087 s!7408)) (= lambda!399809 lambda!399802))))

(declare-fun bs!1861315 () Bool)

(assert (= bs!1861315 (and d!2175143 d!2174957)))

(assert (=> bs!1861315 (= (= (head!14087 (t!380849 s!7408)) (h!73428 s!7408)) (= lambda!399809 lambda!399779))))

(declare-fun bs!1861316 () Bool)

(assert (= bs!1861316 (and d!2175143 b!6983401)))

(assert (=> bs!1861316 (= (= (head!14087 (t!380849 s!7408)) (h!73428 s!7408)) (= lambda!399809 lambda!399731))))

(declare-fun bs!1861317 () Bool)

(assert (= bs!1861317 (and d!2175143 d!2175111)))

(assert (=> bs!1861317 (= (= (head!14087 (t!380849 s!7408)) (head!14087 s!7408)) (= lambda!399809 lambda!399808))))

(assert (=> d!2175143 true))

(assert (=> d!2175143 (= (derivationStepZipper!2666 lt!2482874 (head!14087 (t!380849 s!7408))) (flatMap!2172 lt!2482874 lambda!399809))))

(declare-fun bs!1861318 () Bool)

(assert (= bs!1861318 d!2175143))

(declare-fun m!7670998 () Bool)

(assert (=> bs!1861318 m!7670998))

(assert (=> b!6983555 d!2175143))

(assert (=> b!6983555 d!2175103))

(assert (=> b!6983555 d!2175105))

(assert (=> d!2174963 d!2174959))

(declare-fun d!2175145 () Bool)

(assert (=> d!2175145 (= (flatMap!2172 lt!2482887 lambda!399731) (dynLambda!26804 lambda!399731 lt!2482881))))

(assert (=> d!2175145 true))

(declare-fun _$13!4370 () Unit!161026)

(assert (=> d!2175145 (= (choose!52110 lt!2482887 lt!2482881 lambda!399731) _$13!4370)))

(declare-fun b_lambda!261971 () Bool)

(assert (=> (not b_lambda!261971) (not d!2175145)))

(declare-fun bs!1861319 () Bool)

(assert (= bs!1861319 d!2175145))

(assert (=> bs!1861319 m!7670338))

(assert (=> bs!1861319 m!7670572))

(assert (=> d!2174963 d!2175145))

(declare-fun b!6983915 () Bool)

(declare-fun res!2847880 () Bool)

(declare-fun e!4197511 () Bool)

(assert (=> b!6983915 (=> (not res!2847880) (not e!4197511))))

(declare-fun lt!2483040 () List!67103)

(assert (=> b!6983915 (= res!2847880 (= (size!40885 lt!2483040) (+ (size!40885 (t!380848 lt!2482889)) (size!40885 (exprs!6682 ct2!306)))))))

(declare-fun b!6983916 () Bool)

(assert (=> b!6983916 (= e!4197511 (or (not (= (exprs!6682 ct2!306) Nil!66979)) (= lt!2483040 (t!380848 lt!2482889))))))

(declare-fun b!6983914 () Bool)

(declare-fun e!4197510 () List!67103)

(assert (=> b!6983914 (= e!4197510 (Cons!66979 (h!73427 (t!380848 lt!2482889)) (++!15131 (t!380848 (t!380848 lt!2482889)) (exprs!6682 ct2!306))))))

(declare-fun d!2175147 () Bool)

(assert (=> d!2175147 e!4197511))

(declare-fun res!2847881 () Bool)

(assert (=> d!2175147 (=> (not res!2847881) (not e!4197511))))

(assert (=> d!2175147 (= res!2847881 (= (content!13221 lt!2483040) (set.union (content!13221 (t!380848 lt!2482889)) (content!13221 (exprs!6682 ct2!306)))))))

(assert (=> d!2175147 (= lt!2483040 e!4197510)))

(declare-fun c!1294907 () Bool)

(assert (=> d!2175147 (= c!1294907 (is-Nil!66979 (t!380848 lt!2482889)))))

(assert (=> d!2175147 (= (++!15131 (t!380848 lt!2482889) (exprs!6682 ct2!306)) lt!2483040)))

(declare-fun b!6983913 () Bool)

(assert (=> b!6983913 (= e!4197510 (exprs!6682 ct2!306))))

(assert (= (and d!2175147 c!1294907) b!6983913))

(assert (= (and d!2175147 (not c!1294907)) b!6983914))

(assert (= (and d!2175147 res!2847881) b!6983915))

(assert (= (and b!6983915 res!2847880) b!6983916))

(declare-fun m!7671000 () Bool)

(assert (=> b!6983915 m!7671000))

(assert (=> b!6983915 m!7670898))

(assert (=> b!6983915 m!7670510))

(declare-fun m!7671002 () Bool)

(assert (=> b!6983914 m!7671002))

(declare-fun m!7671004 () Bool)

(assert (=> d!2175147 m!7671004))

(assert (=> d!2175147 m!7670946))

(assert (=> d!2175147 m!7670518))

(assert (=> b!6983507 d!2175147))

(declare-fun call!633890 () List!67103)

(declare-fun c!1294908 () Bool)

(declare-fun bm!633882 () Bool)

(declare-fun c!1294911 () Bool)

(assert (=> bm!633882 (= call!633890 ($colon$colon!2465 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482881)))) (ite (or c!1294908 c!1294911) (regTwo!34884 (h!73427 (exprs!6682 lt!2482881))) (h!73427 (exprs!6682 lt!2482881)))))))

(declare-fun bm!633883 () Bool)

(declare-fun call!633892 () (Set Context!12364))

(declare-fun call!633887 () (Set Context!12364))

(assert (=> bm!633883 (= call!633892 call!633887)))

(declare-fun b!6983917 () Bool)

(declare-fun c!1294912 () Bool)

(assert (=> b!6983917 (= c!1294912 (is-Star!17186 (h!73427 (exprs!6682 lt!2482881))))))

(declare-fun e!4197517 () (Set Context!12364))

(declare-fun e!4197513 () (Set Context!12364))

(assert (=> b!6983917 (= e!4197517 e!4197513)))

(declare-fun c!1294909 () Bool)

(declare-fun call!633889 () List!67103)

(declare-fun bm!633884 () Bool)

(assert (=> bm!633884 (= call!633887 (derivationStepZipperDown!1904 (ite c!1294909 (regTwo!34885 (h!73427 (exprs!6682 lt!2482881))) (ite c!1294908 (regTwo!34884 (h!73427 (exprs!6682 lt!2482881))) (ite c!1294911 (regOne!34884 (h!73427 (exprs!6682 lt!2482881))) (reg!17515 (h!73427 (exprs!6682 lt!2482881)))))) (ite (or c!1294909 c!1294908) (Context!12365 (t!380848 (exprs!6682 lt!2482881))) (Context!12365 call!633889)) (h!73428 s!7408)))))

(declare-fun b!6983918 () Bool)

(assert (=> b!6983918 (= e!4197513 (as set.empty (Set Context!12364)))))

(declare-fun b!6983919 () Bool)

(declare-fun call!633891 () (Set Context!12364))

(assert (=> b!6983919 (= e!4197517 call!633891)))

(declare-fun b!6983920 () Bool)

(declare-fun e!4197515 () Bool)

(assert (=> b!6983920 (= e!4197515 (nullable!6946 (regOne!34884 (h!73427 (exprs!6682 lt!2482881)))))))

(declare-fun b!6983921 () Bool)

(assert (=> b!6983921 (= e!4197513 call!633891)))

(declare-fun b!6983922 () Bool)

(declare-fun e!4197514 () (Set Context!12364))

(assert (=> b!6983922 (= e!4197514 (set.insert (Context!12365 (t!380848 (exprs!6682 lt!2482881))) (as set.empty (Set Context!12364))))))

(declare-fun b!6983923 () Bool)

(declare-fun e!4197516 () (Set Context!12364))

(assert (=> b!6983923 (= e!4197514 e!4197516)))

(assert (=> b!6983923 (= c!1294909 (is-Union!17186 (h!73427 (exprs!6682 lt!2482881))))))

(declare-fun call!633888 () (Set Context!12364))

(declare-fun bm!633886 () Bool)

(assert (=> bm!633886 (= call!633888 (derivationStepZipperDown!1904 (ite c!1294909 (regOne!34885 (h!73427 (exprs!6682 lt!2482881))) (regOne!34884 (h!73427 (exprs!6682 lt!2482881)))) (ite c!1294909 (Context!12365 (t!380848 (exprs!6682 lt!2482881))) (Context!12365 call!633890)) (h!73428 s!7408)))))

(declare-fun b!6983924 () Bool)

(assert (=> b!6983924 (= e!4197516 (set.union call!633888 call!633887))))

(declare-fun b!6983925 () Bool)

(declare-fun e!4197512 () (Set Context!12364))

(assert (=> b!6983925 (= e!4197512 e!4197517)))

(assert (=> b!6983925 (= c!1294911 (is-Concat!26031 (h!73427 (exprs!6682 lt!2482881))))))

(declare-fun bm!633887 () Bool)

(assert (=> bm!633887 (= call!633891 call!633892)))

(declare-fun b!6983926 () Bool)

(assert (=> b!6983926 (= c!1294908 e!4197515)))

(declare-fun res!2847882 () Bool)

(assert (=> b!6983926 (=> (not res!2847882) (not e!4197515))))

(assert (=> b!6983926 (= res!2847882 (is-Concat!26031 (h!73427 (exprs!6682 lt!2482881))))))

(assert (=> b!6983926 (= e!4197516 e!4197512)))

(declare-fun b!6983927 () Bool)

(assert (=> b!6983927 (= e!4197512 (set.union call!633888 call!633892))))

(declare-fun d!2175149 () Bool)

(declare-fun c!1294910 () Bool)

(assert (=> d!2175149 (= c!1294910 (and (is-ElementMatch!17186 (h!73427 (exprs!6682 lt!2482881))) (= (c!1294754 (h!73427 (exprs!6682 lt!2482881))) (h!73428 s!7408))))))

(assert (=> d!2175149 (= (derivationStepZipperDown!1904 (h!73427 (exprs!6682 lt!2482881)) (Context!12365 (t!380848 (exprs!6682 lt!2482881))) (h!73428 s!7408)) e!4197514)))

(declare-fun bm!633885 () Bool)

(assert (=> bm!633885 (= call!633889 call!633890)))

(assert (= (and d!2175149 c!1294910) b!6983922))

(assert (= (and d!2175149 (not c!1294910)) b!6983923))

(assert (= (and b!6983923 c!1294909) b!6983924))

(assert (= (and b!6983923 (not c!1294909)) b!6983926))

(assert (= (and b!6983926 res!2847882) b!6983920))

(assert (= (and b!6983926 c!1294908) b!6983927))

(assert (= (and b!6983926 (not c!1294908)) b!6983925))

(assert (= (and b!6983925 c!1294911) b!6983919))

(assert (= (and b!6983925 (not c!1294911)) b!6983917))

(assert (= (and b!6983917 c!1294912) b!6983921))

(assert (= (and b!6983917 (not c!1294912)) b!6983918))

(assert (= (or b!6983919 b!6983921) bm!633885))

(assert (= (or b!6983919 b!6983921) bm!633887))

(assert (= (or b!6983927 bm!633887) bm!633883))

(assert (= (or b!6983927 bm!633885) bm!633882))

(assert (= (or b!6983924 b!6983927) bm!633886))

(assert (= (or b!6983924 bm!633883) bm!633884))

(declare-fun m!7671006 () Bool)

(assert (=> b!6983922 m!7671006))

(declare-fun m!7671008 () Bool)

(assert (=> b!6983920 m!7671008))

(declare-fun m!7671010 () Bool)

(assert (=> bm!633884 m!7671010))

(declare-fun m!7671012 () Bool)

(assert (=> bm!633882 m!7671012))

(declare-fun m!7671014 () Bool)

(assert (=> bm!633886 m!7671014))

(assert (=> bm!633818 d!2175149))

(declare-fun bs!1861320 () Bool)

(declare-fun d!2175151 () Bool)

(assert (= bs!1861320 (and d!2175151 d!2175087)))

(declare-fun lambda!399810 () Int)

(assert (=> bs!1861320 (not (= lambda!399810 lambda!399806))))

(declare-fun bs!1861321 () Bool)

(assert (= bs!1861321 (and d!2175151 d!2174931)))

(assert (=> bs!1861321 (not (= lambda!399810 lambda!399767))))

(declare-fun bs!1861322 () Bool)

(assert (= bs!1861322 (and d!2175151 d!2175057)))

(assert (=> bs!1861322 (= lambda!399810 lambda!399801)))

(declare-fun bs!1861323 () Bool)

(assert (= bs!1861323 (and d!2175151 b!6983398)))

(assert (=> bs!1861323 (not (= lambda!399810 lambda!399728))))

(declare-fun bs!1861324 () Bool)

(assert (= bs!1861324 (and d!2175151 d!2175085)))

(assert (=> bs!1861324 (not (= lambda!399810 lambda!399803))))

(declare-fun bs!1861325 () Bool)

(assert (= bs!1861325 (and d!2175151 d!2174927)))

(assert (=> bs!1861325 (not (= lambda!399810 lambda!399764))))

(assert (=> d!2175151 (= (nullableZipper!2413 lt!2482879) (exists!2956 lt!2482879 lambda!399810))))

(declare-fun bs!1861326 () Bool)

(assert (= bs!1861326 d!2175151))

(declare-fun m!7671016 () Bool)

(assert (=> bs!1861326 m!7671016))

(assert (=> b!6983543 d!2175151))

(declare-fun d!2175153 () Bool)

(declare-fun c!1294913 () Bool)

(assert (=> d!2175153 (= c!1294913 (isEmpty!39098 (tail!13174 (t!380849 s!7408))))))

(declare-fun e!4197518 () Bool)

(assert (=> d!2175153 (= (matchZipper!2726 (derivationStepZipper!2666 lt!2482867 (head!14087 (t!380849 s!7408))) (tail!13174 (t!380849 s!7408))) e!4197518)))

(declare-fun b!6983928 () Bool)

(assert (=> b!6983928 (= e!4197518 (nullableZipper!2413 (derivationStepZipper!2666 lt!2482867 (head!14087 (t!380849 s!7408)))))))

(declare-fun b!6983929 () Bool)

(assert (=> b!6983929 (= e!4197518 (matchZipper!2726 (derivationStepZipper!2666 (derivationStepZipper!2666 lt!2482867 (head!14087 (t!380849 s!7408))) (head!14087 (tail!13174 (t!380849 s!7408)))) (tail!13174 (tail!13174 (t!380849 s!7408)))))))

(assert (= (and d!2175153 c!1294913) b!6983928))

(assert (= (and d!2175153 (not c!1294913)) b!6983929))

(assert (=> d!2175153 m!7670556))

(assert (=> d!2175153 m!7670902))

(assert (=> b!6983928 m!7670590))

(declare-fun m!7671018 () Bool)

(assert (=> b!6983928 m!7671018))

(assert (=> b!6983929 m!7670556))

(assert (=> b!6983929 m!7670906))

(assert (=> b!6983929 m!7670590))

(assert (=> b!6983929 m!7670906))

(declare-fun m!7671020 () Bool)

(assert (=> b!6983929 m!7671020))

(assert (=> b!6983929 m!7670556))

(assert (=> b!6983929 m!7670910))

(assert (=> b!6983929 m!7671020))

(assert (=> b!6983929 m!7670910))

(declare-fun m!7671022 () Bool)

(assert (=> b!6983929 m!7671022))

(assert (=> b!6983584 d!2175153))

(declare-fun bs!1861327 () Bool)

(declare-fun d!2175155 () Bool)

(assert (= bs!1861327 (and d!2175155 d!2175101)))

(declare-fun lambda!399811 () Int)

(assert (=> bs!1861327 (= lambda!399811 lambda!399807)))

(declare-fun bs!1861328 () Bool)

(assert (= bs!1861328 (and d!2175155 d!2175077)))

(assert (=> bs!1861328 (= (= (head!14087 (t!380849 s!7408)) (head!14087 s!7408)) (= lambda!399811 lambda!399802))))

(declare-fun bs!1861329 () Bool)

(assert (= bs!1861329 (and d!2175155 d!2174957)))

(assert (=> bs!1861329 (= (= (head!14087 (t!380849 s!7408)) (h!73428 s!7408)) (= lambda!399811 lambda!399779))))

(declare-fun bs!1861330 () Bool)

(assert (= bs!1861330 (and d!2175155 d!2175143)))

(assert (=> bs!1861330 (= lambda!399811 lambda!399809)))

(declare-fun bs!1861331 () Bool)

(assert (= bs!1861331 (and d!2175155 b!6983401)))

(assert (=> bs!1861331 (= (= (head!14087 (t!380849 s!7408)) (h!73428 s!7408)) (= lambda!399811 lambda!399731))))

(declare-fun bs!1861332 () Bool)

(assert (= bs!1861332 (and d!2175155 d!2175111)))

(assert (=> bs!1861332 (= (= (head!14087 (t!380849 s!7408)) (head!14087 s!7408)) (= lambda!399811 lambda!399808))))

(assert (=> d!2175155 true))

(assert (=> d!2175155 (= (derivationStepZipper!2666 lt!2482867 (head!14087 (t!380849 s!7408))) (flatMap!2172 lt!2482867 lambda!399811))))

(declare-fun bs!1861333 () Bool)

(assert (= bs!1861333 d!2175155))

(declare-fun m!7671024 () Bool)

(assert (=> bs!1861333 m!7671024))

(assert (=> b!6983584 d!2175155))

(assert (=> b!6983584 d!2175103))

(assert (=> b!6983584 d!2175105))

(declare-fun call!633894 () Bool)

(declare-fun bm!633888 () Bool)

(declare-fun c!1294914 () Bool)

(declare-fun c!1294915 () Bool)

(assert (=> bm!633888 (= call!633894 (validRegex!8844 (ite c!1294915 (reg!17515 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))) (ite c!1294914 (regOne!34885 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))) (regOne!34884 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))))))))))

(declare-fun b!6983930 () Bool)

(declare-fun e!4197525 () Bool)

(declare-fun e!4197520 () Bool)

(assert (=> b!6983930 (= e!4197525 e!4197520)))

(assert (=> b!6983930 (= c!1294915 (is-Star!17186 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))

(declare-fun b!6983932 () Bool)

(declare-fun e!4197521 () Bool)

(declare-fun call!633895 () Bool)

(assert (=> b!6983932 (= e!4197521 call!633895)))

(declare-fun b!6983933 () Bool)

(declare-fun e!4197524 () Bool)

(assert (=> b!6983933 (= e!4197520 e!4197524)))

(assert (=> b!6983933 (= c!1294914 (is-Union!17186 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))

(declare-fun b!6983934 () Bool)

(declare-fun e!4197522 () Bool)

(assert (=> b!6983934 (= e!4197520 e!4197522)))

(declare-fun res!2847883 () Bool)

(assert (=> b!6983934 (= res!2847883 (not (nullable!6946 (reg!17515 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))))

(assert (=> b!6983934 (=> (not res!2847883) (not e!4197522))))

(declare-fun b!6983935 () Bool)

(declare-fun res!2847884 () Bool)

(declare-fun e!4197519 () Bool)

(assert (=> b!6983935 (=> (not res!2847884) (not e!4197519))))

(declare-fun call!633893 () Bool)

(assert (=> b!6983935 (= res!2847884 call!633893)))

(assert (=> b!6983935 (= e!4197524 e!4197519)))

(declare-fun b!6983936 () Bool)

(assert (=> b!6983936 (= e!4197519 call!633895)))

(declare-fun b!6983937 () Bool)

(declare-fun res!2847885 () Bool)

(declare-fun e!4197523 () Bool)

(assert (=> b!6983937 (=> res!2847885 e!4197523)))

(assert (=> b!6983937 (= res!2847885 (not (is-Concat!26031 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880))))))))))

(assert (=> b!6983937 (= e!4197524 e!4197523)))

(declare-fun bm!633889 () Bool)

(assert (=> bm!633889 (= call!633895 (validRegex!8844 (ite c!1294914 (regTwo!34885 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))) (regTwo!34884 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))))

(declare-fun d!2175157 () Bool)

(declare-fun res!2847886 () Bool)

(assert (=> d!2175157 (=> res!2847886 e!4197525)))

(assert (=> d!2175157 (= res!2847886 (is-ElementMatch!17186 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))))

(assert (=> d!2175157 (= (validRegex!8844 (ite c!1294806 (reg!17515 (h!73427 (exprs!6682 lt!2482880))) (ite c!1294805 (regOne!34885 (h!73427 (exprs!6682 lt!2482880))) (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))) e!4197525)))

(declare-fun b!6983931 () Bool)

(assert (=> b!6983931 (= e!4197522 call!633894)))

(declare-fun bm!633890 () Bool)

(assert (=> bm!633890 (= call!633893 call!633894)))

(declare-fun b!6983938 () Bool)

(assert (=> b!6983938 (= e!4197523 e!4197521)))

(declare-fun res!2847887 () Bool)

(assert (=> b!6983938 (=> (not res!2847887) (not e!4197521))))

(assert (=> b!6983938 (= res!2847887 call!633893)))

(assert (= (and d!2175157 (not res!2847886)) b!6983930))

(assert (= (and b!6983930 c!1294915) b!6983934))

(assert (= (and b!6983930 (not c!1294915)) b!6983933))

(assert (= (and b!6983934 res!2847883) b!6983931))

(assert (= (and b!6983933 c!1294914) b!6983935))

(assert (= (and b!6983933 (not c!1294914)) b!6983937))

(assert (= (and b!6983935 res!2847884) b!6983936))

(assert (= (and b!6983937 (not res!2847885)) b!6983938))

(assert (= (and b!6983938 res!2847887) b!6983932))

(assert (= (or b!6983936 b!6983932) bm!633889))

(assert (= (or b!6983935 b!6983938) bm!633890))

(assert (= (or b!6983931 bm!633890) bm!633888))

(declare-fun m!7671026 () Bool)

(assert (=> bm!633888 m!7671026))

(declare-fun m!7671028 () Bool)

(assert (=> b!6983934 m!7671028))

(declare-fun m!7671030 () Bool)

(assert (=> bm!633889 m!7671030))

(assert (=> bm!633825 d!2175157))

(declare-fun d!2175159 () Bool)

(declare-fun c!1294916 () Bool)

(assert (=> d!2175159 (= c!1294916 (isEmpty!39098 (t!380849 s!7408)))))

(declare-fun e!4197526 () Bool)

(assert (=> d!2175159 (= (matchZipper!2726 (set.union lt!2482874 lt!2482888) (t!380849 s!7408)) e!4197526)))

(declare-fun b!6983939 () Bool)

(assert (=> b!6983939 (= e!4197526 (nullableZipper!2413 (set.union lt!2482874 lt!2482888)))))

(declare-fun b!6983940 () Bool)

(assert (=> b!6983940 (= e!4197526 (matchZipper!2726 (derivationStepZipper!2666 (set.union lt!2482874 lt!2482888) (head!14087 (t!380849 s!7408))) (tail!13174 (t!380849 s!7408))))))

(assert (= (and d!2175159 c!1294916) b!6983939))

(assert (= (and d!2175159 (not c!1294916)) b!6983940))

(assert (=> d!2175159 m!7670548))

(declare-fun m!7671032 () Bool)

(assert (=> b!6983939 m!7671032))

(assert (=> b!6983940 m!7670552))

(assert (=> b!6983940 m!7670552))

(declare-fun m!7671034 () Bool)

(assert (=> b!6983940 m!7671034))

(assert (=> b!6983940 m!7670556))

(assert (=> b!6983940 m!7671034))

(assert (=> b!6983940 m!7670556))

(declare-fun m!7671036 () Bool)

(assert (=> b!6983940 m!7671036))

(assert (=> d!2174971 d!2175159))

(assert (=> d!2174971 d!2174965))

(declare-fun e!4197529 () Bool)

(declare-fun d!2175161 () Bool)

(assert (=> d!2175161 (= (matchZipper!2726 (set.union lt!2482874 lt!2482888) (t!380849 s!7408)) e!4197529)))

(declare-fun res!2847890 () Bool)

(assert (=> d!2175161 (=> res!2847890 e!4197529)))

(assert (=> d!2175161 (= res!2847890 (matchZipper!2726 lt!2482874 (t!380849 s!7408)))))

(assert (=> d!2175161 true))

(declare-fun _$48!2423 () Unit!161026)

(assert (=> d!2175161 (= (choose!52111 lt!2482874 lt!2482888 (t!380849 s!7408)) _$48!2423)))

(declare-fun b!6983943 () Bool)

(assert (=> b!6983943 (= e!4197529 (matchZipper!2726 lt!2482888 (t!380849 s!7408)))))

(assert (= (and d!2175161 (not res!2847890)) b!6983943))

(assert (=> d!2175161 m!7670594))

(assert (=> d!2175161 m!7670378))

(assert (=> b!6983943 m!7670374))

(assert (=> d!2174971 d!2175161))

(declare-fun bm!633891 () Bool)

(declare-fun c!1294920 () Bool)

(declare-fun call!633899 () List!67103)

(declare-fun c!1294917 () Bool)

(assert (=> bm!633891 (= call!633899 ($colon$colon!2465 (exprs!6682 (Context!12365 (t!380848 (exprs!6682 lt!2482882)))) (ite (or c!1294917 c!1294920) (regTwo!34884 (h!73427 (exprs!6682 lt!2482882))) (h!73427 (exprs!6682 lt!2482882)))))))

(declare-fun bm!633892 () Bool)

(declare-fun call!633901 () (Set Context!12364))

(declare-fun call!633896 () (Set Context!12364))

(assert (=> bm!633892 (= call!633901 call!633896)))

(declare-fun b!6983944 () Bool)

(declare-fun c!1294921 () Bool)

(assert (=> b!6983944 (= c!1294921 (is-Star!17186 (h!73427 (exprs!6682 lt!2482882))))))

(declare-fun e!4197535 () (Set Context!12364))

(declare-fun e!4197531 () (Set Context!12364))

(assert (=> b!6983944 (= e!4197535 e!4197531)))

(declare-fun c!1294918 () Bool)

(declare-fun call!633898 () List!67103)

(declare-fun bm!633893 () Bool)

(assert (=> bm!633893 (= call!633896 (derivationStepZipperDown!1904 (ite c!1294918 (regTwo!34885 (h!73427 (exprs!6682 lt!2482882))) (ite c!1294917 (regTwo!34884 (h!73427 (exprs!6682 lt!2482882))) (ite c!1294920 (regOne!34884 (h!73427 (exprs!6682 lt!2482882))) (reg!17515 (h!73427 (exprs!6682 lt!2482882)))))) (ite (or c!1294918 c!1294917) (Context!12365 (t!380848 (exprs!6682 lt!2482882))) (Context!12365 call!633898)) (h!73428 s!7408)))))

(declare-fun b!6983945 () Bool)

(assert (=> b!6983945 (= e!4197531 (as set.empty (Set Context!12364)))))

(declare-fun b!6983946 () Bool)

(declare-fun call!633900 () (Set Context!12364))

(assert (=> b!6983946 (= e!4197535 call!633900)))

(declare-fun b!6983947 () Bool)

(declare-fun e!4197533 () Bool)

(assert (=> b!6983947 (= e!4197533 (nullable!6946 (regOne!34884 (h!73427 (exprs!6682 lt!2482882)))))))

(declare-fun b!6983948 () Bool)

(assert (=> b!6983948 (= e!4197531 call!633900)))

(declare-fun b!6983949 () Bool)

(declare-fun e!4197532 () (Set Context!12364))

(assert (=> b!6983949 (= e!4197532 (set.insert (Context!12365 (t!380848 (exprs!6682 lt!2482882))) (as set.empty (Set Context!12364))))))

(declare-fun b!6983950 () Bool)

(declare-fun e!4197534 () (Set Context!12364))

(assert (=> b!6983950 (= e!4197532 e!4197534)))

(assert (=> b!6983950 (= c!1294918 (is-Union!17186 (h!73427 (exprs!6682 lt!2482882))))))

(declare-fun call!633897 () (Set Context!12364))

(declare-fun bm!633895 () Bool)

(assert (=> bm!633895 (= call!633897 (derivationStepZipperDown!1904 (ite c!1294918 (regOne!34885 (h!73427 (exprs!6682 lt!2482882))) (regOne!34884 (h!73427 (exprs!6682 lt!2482882)))) (ite c!1294918 (Context!12365 (t!380848 (exprs!6682 lt!2482882))) (Context!12365 call!633899)) (h!73428 s!7408)))))

(declare-fun b!6983951 () Bool)

(assert (=> b!6983951 (= e!4197534 (set.union call!633897 call!633896))))

(declare-fun b!6983952 () Bool)

(declare-fun e!4197530 () (Set Context!12364))

(assert (=> b!6983952 (= e!4197530 e!4197535)))

(assert (=> b!6983952 (= c!1294920 (is-Concat!26031 (h!73427 (exprs!6682 lt!2482882))))))

(declare-fun bm!633896 () Bool)

(assert (=> bm!633896 (= call!633900 call!633901)))

(declare-fun b!6983953 () Bool)

(assert (=> b!6983953 (= c!1294917 e!4197533)))

(declare-fun res!2847891 () Bool)

(assert (=> b!6983953 (=> (not res!2847891) (not e!4197533))))

(assert (=> b!6983953 (= res!2847891 (is-Concat!26031 (h!73427 (exprs!6682 lt!2482882))))))

(assert (=> b!6983953 (= e!4197534 e!4197530)))

(declare-fun b!6983954 () Bool)

(assert (=> b!6983954 (= e!4197530 (set.union call!633897 call!633901))))

(declare-fun d!2175163 () Bool)

(declare-fun c!1294919 () Bool)

(assert (=> d!2175163 (= c!1294919 (and (is-ElementMatch!17186 (h!73427 (exprs!6682 lt!2482882))) (= (c!1294754 (h!73427 (exprs!6682 lt!2482882))) (h!73428 s!7408))))))

(assert (=> d!2175163 (= (derivationStepZipperDown!1904 (h!73427 (exprs!6682 lt!2482882)) (Context!12365 (t!380848 (exprs!6682 lt!2482882))) (h!73428 s!7408)) e!4197532)))

(declare-fun bm!633894 () Bool)

(assert (=> bm!633894 (= call!633898 call!633899)))

(assert (= (and d!2175163 c!1294919) b!6983949))

(assert (= (and d!2175163 (not c!1294919)) b!6983950))

(assert (= (and b!6983950 c!1294918) b!6983951))

(assert (= (and b!6983950 (not c!1294918)) b!6983953))

(assert (= (and b!6983953 res!2847891) b!6983947))

(assert (= (and b!6983953 c!1294917) b!6983954))

(assert (= (and b!6983953 (not c!1294917)) b!6983952))

(assert (= (and b!6983952 c!1294920) b!6983946))

(assert (= (and b!6983952 (not c!1294920)) b!6983944))

(assert (= (and b!6983944 c!1294921) b!6983948))

(assert (= (and b!6983944 (not c!1294921)) b!6983945))

(assert (= (or b!6983946 b!6983948) bm!633894))

(assert (= (or b!6983946 b!6983948) bm!633896))

(assert (= (or b!6983954 bm!633896) bm!633892))

(assert (= (or b!6983954 bm!633894) bm!633891))

(assert (= (or b!6983951 b!6983954) bm!633895))

(assert (= (or b!6983951 bm!633892) bm!633893))

(declare-fun m!7671038 () Bool)

(assert (=> b!6983949 m!7671038))

(declare-fun m!7671040 () Bool)

(assert (=> b!6983947 m!7671040))

(declare-fun m!7671042 () Bool)

(assert (=> bm!633893 m!7671042))

(declare-fun m!7671044 () Bool)

(assert (=> bm!633891 m!7671044))

(declare-fun m!7671046 () Bool)

(assert (=> bm!633895 m!7671046))

(assert (=> bm!633799 d!2175163))

(declare-fun d!2175165 () Bool)

(assert (=> d!2175165 (= (nullable!6946 (h!73427 (exprs!6682 lt!2482881))) (nullableFct!2616 (h!73427 (exprs!6682 lt!2482881))))))

(declare-fun bs!1861334 () Bool)

(assert (= bs!1861334 d!2175165))

(declare-fun m!7671048 () Bool)

(assert (=> bs!1861334 m!7671048))

(assert (=> b!6983553 d!2175165))

(declare-fun d!2175167 () Bool)

(assert (=> d!2175167 (= (flatMap!2172 lt!2482887 lambda!399779) (choose!52109 lt!2482887 lambda!399779))))

(declare-fun bs!1861335 () Bool)

(assert (= bs!1861335 d!2175167))

(declare-fun m!7671050 () Bool)

(assert (=> bs!1861335 m!7671050))

(assert (=> d!2174957 d!2175167))

(declare-fun bs!1861336 () Bool)

(declare-fun d!2175169 () Bool)

(assert (= bs!1861336 (and d!2175169 d!2175087)))

(declare-fun lambda!399812 () Int)

(assert (=> bs!1861336 (not (= lambda!399812 lambda!399806))))

(declare-fun bs!1861337 () Bool)

(assert (= bs!1861337 (and d!2175169 d!2174931)))

(assert (=> bs!1861337 (not (= lambda!399812 lambda!399767))))

(declare-fun bs!1861338 () Bool)

(assert (= bs!1861338 (and d!2175169 b!6983398)))

(assert (=> bs!1861338 (not (= lambda!399812 lambda!399728))))

(declare-fun bs!1861339 () Bool)

(assert (= bs!1861339 (and d!2175169 d!2175085)))

(assert (=> bs!1861339 (not (= lambda!399812 lambda!399803))))

(declare-fun bs!1861340 () Bool)

(assert (= bs!1861340 (and d!2175169 d!2174927)))

(assert (=> bs!1861340 (not (= lambda!399812 lambda!399764))))

(declare-fun bs!1861341 () Bool)

(assert (= bs!1861341 (and d!2175169 d!2175151)))

(assert (=> bs!1861341 (= lambda!399812 lambda!399810)))

(declare-fun bs!1861342 () Bool)

(assert (= bs!1861342 (and d!2175169 d!2175057)))

(assert (=> bs!1861342 (= lambda!399812 lambda!399801)))

(assert (=> d!2175169 (= (nullableZipper!2413 lt!2482868) (exists!2956 lt!2482868 lambda!399812))))

(declare-fun bs!1861343 () Bool)

(assert (= bs!1861343 d!2175169))

(declare-fun m!7671052 () Bool)

(assert (=> bs!1861343 m!7671052))

(assert (=> b!6983476 d!2175169))

(declare-fun bs!1861344 () Bool)

(declare-fun d!2175171 () Bool)

(assert (= bs!1861344 (and d!2175171 d!2175087)))

(declare-fun lambda!399813 () Int)

(assert (=> bs!1861344 (not (= lambda!399813 lambda!399806))))

(declare-fun bs!1861345 () Bool)

(assert (= bs!1861345 (and d!2175171 d!2174931)))

(assert (=> bs!1861345 (not (= lambda!399813 lambda!399767))))

(declare-fun bs!1861346 () Bool)

(assert (= bs!1861346 (and d!2175171 b!6983398)))

(assert (=> bs!1861346 (not (= lambda!399813 lambda!399728))))

(declare-fun bs!1861347 () Bool)

(assert (= bs!1861347 (and d!2175171 d!2175085)))

(assert (=> bs!1861347 (not (= lambda!399813 lambda!399803))))

(declare-fun bs!1861348 () Bool)

(assert (= bs!1861348 (and d!2175171 d!2175151)))

(assert (=> bs!1861348 (= lambda!399813 lambda!399810)))

(declare-fun bs!1861349 () Bool)

(assert (= bs!1861349 (and d!2175171 d!2175057)))

(assert (=> bs!1861349 (= lambda!399813 lambda!399801)))

(declare-fun bs!1861350 () Bool)

(assert (= bs!1861350 (and d!2175171 d!2175169)))

(assert (=> bs!1861350 (= lambda!399813 lambda!399812)))

(declare-fun bs!1861351 () Bool)

(assert (= bs!1861351 (and d!2175171 d!2174927)))

(assert (=> bs!1861351 (not (= lambda!399813 lambda!399764))))

(assert (=> d!2175171 (= (nullableZipper!2413 lt!2482888) (exists!2956 lt!2482888 lambda!399813))))

(declare-fun bs!1861352 () Bool)

(assert (= bs!1861352 d!2175171))

(declare-fun m!7671054 () Bool)

(assert (=> bs!1861352 m!7671054))

(assert (=> b!6983545 d!2175171))

(assert (=> b!6983587 d!2174953))

(declare-fun d!2175173 () Bool)

(declare-fun res!2847892 () Bool)

(declare-fun e!4197536 () Bool)

(assert (=> d!2175173 (=> res!2847892 e!4197536)))

(assert (=> d!2175173 (= res!2847892 (is-Nil!66979 (exprs!6682 ct2!306)))))

(assert (=> d!2175173 (= (forall!16085 (exprs!6682 ct2!306) lambda!399775) e!4197536)))

(declare-fun b!6983955 () Bool)

(declare-fun e!4197537 () Bool)

(assert (=> b!6983955 (= e!4197536 e!4197537)))

(declare-fun res!2847893 () Bool)

(assert (=> b!6983955 (=> (not res!2847893) (not e!4197537))))

(assert (=> b!6983955 (= res!2847893 (dynLambda!26810 lambda!399775 (h!73427 (exprs!6682 ct2!306))))))

(declare-fun b!6983956 () Bool)

(assert (=> b!6983956 (= e!4197537 (forall!16085 (t!380848 (exprs!6682 ct2!306)) lambda!399775))))

(assert (= (and d!2175173 (not res!2847892)) b!6983955))

(assert (= (and b!6983955 res!2847893) b!6983956))

(declare-fun b_lambda!261973 () Bool)

(assert (=> (not b_lambda!261973) (not b!6983955)))

(declare-fun m!7671056 () Bool)

(assert (=> b!6983955 m!7671056))

(declare-fun m!7671058 () Bool)

(assert (=> b!6983956 m!7671058))

(assert (=> d!2174951 d!2175173))

(declare-fun bs!1861353 () Bool)

(declare-fun d!2175175 () Bool)

(assert (= bs!1861353 (and d!2175175 d!2175087)))

(declare-fun lambda!399814 () Int)

(assert (=> bs!1861353 (not (= lambda!399814 lambda!399806))))

(declare-fun bs!1861354 () Bool)

(assert (= bs!1861354 (and d!2175175 d!2174931)))

(assert (=> bs!1861354 (not (= lambda!399814 lambda!399767))))

(declare-fun bs!1861355 () Bool)

(assert (= bs!1861355 (and d!2175175 d!2175171)))

(assert (=> bs!1861355 (= lambda!399814 lambda!399813)))

(declare-fun bs!1861356 () Bool)

(assert (= bs!1861356 (and d!2175175 b!6983398)))

(assert (=> bs!1861356 (not (= lambda!399814 lambda!399728))))

(declare-fun bs!1861357 () Bool)

(assert (= bs!1861357 (and d!2175175 d!2175085)))

(assert (=> bs!1861357 (not (= lambda!399814 lambda!399803))))

(declare-fun bs!1861358 () Bool)

(assert (= bs!1861358 (and d!2175175 d!2175151)))

(assert (=> bs!1861358 (= lambda!399814 lambda!399810)))

(declare-fun bs!1861359 () Bool)

(assert (= bs!1861359 (and d!2175175 d!2175057)))

(assert (=> bs!1861359 (= lambda!399814 lambda!399801)))

(declare-fun bs!1861360 () Bool)

(assert (= bs!1861360 (and d!2175175 d!2175169)))

(assert (=> bs!1861360 (= lambda!399814 lambda!399812)))

(declare-fun bs!1861361 () Bool)

(assert (= bs!1861361 (and d!2175175 d!2174927)))

(assert (=> bs!1861361 (not (= lambda!399814 lambda!399764))))

(assert (=> d!2175175 (= (nullableZipper!2413 lt!2482874) (exists!2956 lt!2482874 lambda!399814))))

(declare-fun bs!1861362 () Bool)

(assert (= bs!1861362 d!2175175))

(declare-fun m!7671060 () Bool)

(assert (=> bs!1861362 m!7671060))

(assert (=> b!6983554 d!2175175))

(declare-fun d!2175177 () Bool)

(declare-fun choose!52121 ((Set Context!12364) Int) (Set Context!12364))

(assert (=> d!2175177 (= (map!15443 z1!570 lambda!399772) (choose!52121 z1!570 lambda!399772))))

(declare-fun bs!1861363 () Bool)

(assert (= bs!1861363 d!2175177))

(declare-fun m!7671062 () Bool)

(assert (=> bs!1861363 m!7671062))

(assert (=> d!2174949 d!2175177))

(declare-fun d!2175179 () Bool)

(declare-fun e!4197543 () Bool)

(assert (=> d!2175179 e!4197543))

(declare-fun res!2847896 () Bool)

(assert (=> d!2175179 (=> (not res!2847896) (not e!4197543))))

(declare-fun a!12664 () Context!12364)

(assert (=> d!2175179 (= res!2847896 (= lt!2482890 (dynLambda!26805 lambda!399729 a!12664)))))

(declare-fun e!4197542 () Bool)

(assert (=> d!2175179 (and (inv!85825 a!12664) e!4197542)))

(assert (=> d!2175179 (= (choose!52112 z1!570 lambda!399729 lt!2482890) a!12664)))

(declare-fun b!6983962 () Bool)

(declare-fun tp!1928759 () Bool)

(assert (=> b!6983962 (= e!4197542 tp!1928759)))

(declare-fun b!6983963 () Bool)

(assert (=> b!6983963 (= e!4197543 (set.member a!12664 z1!570))))

(assert (= d!2175179 b!6983962))

(assert (= (and d!2175179 res!2847896) b!6983963))

(declare-fun b_lambda!261975 () Bool)

(assert (=> (not b_lambda!261975) (not d!2175179)))

(declare-fun m!7671064 () Bool)

(assert (=> d!2175179 m!7671064))

(declare-fun m!7671066 () Bool)

(assert (=> d!2175179 m!7671066))

(declare-fun m!7671068 () Bool)

(assert (=> b!6983963 m!7671068))

(assert (=> d!2174975 d!2175179))

(declare-fun d!2175181 () Bool)

(assert (=> d!2175181 (= (map!15443 z1!570 lambda!399729) (choose!52121 z1!570 lambda!399729))))

(declare-fun bs!1861364 () Bool)

(assert (= bs!1861364 d!2175181))

(declare-fun m!7671070 () Bool)

(assert (=> bs!1861364 m!7671070))

(assert (=> d!2174975 d!2175181))

(declare-fun d!2175183 () Bool)

(declare-fun lt!2483041 () Int)

(assert (=> d!2175183 (>= lt!2483041 0)))

(declare-fun e!4197544 () Int)

(assert (=> d!2175183 (= lt!2483041 e!4197544)))

(declare-fun c!1294922 () Bool)

(assert (=> d!2175183 (= c!1294922 (is-Nil!66979 lt!2482989))))

(assert (=> d!2175183 (= (size!40885 lt!2482989) lt!2483041)))

(declare-fun b!6983964 () Bool)

(assert (=> b!6983964 (= e!4197544 0)))

(declare-fun b!6983965 () Bool)

(assert (=> b!6983965 (= e!4197544 (+ 1 (size!40885 (t!380848 lt!2482989))))))

(assert (= (and d!2175183 c!1294922) b!6983964))

(assert (= (and d!2175183 (not c!1294922)) b!6983965))

(declare-fun m!7671072 () Bool)

(assert (=> b!6983965 m!7671072))

(assert (=> b!6983590 d!2175183))

(declare-fun d!2175185 () Bool)

(declare-fun lt!2483042 () Int)

(assert (=> d!2175185 (>= lt!2483042 0)))

(declare-fun e!4197545 () Int)

(assert (=> d!2175185 (= lt!2483042 e!4197545)))

(declare-fun c!1294923 () Bool)

(assert (=> d!2175185 (= c!1294923 (is-Nil!66979 (exprs!6682 lt!2482880)))))

(assert (=> d!2175185 (= (size!40885 (exprs!6682 lt!2482880)) lt!2483042)))

(declare-fun b!6983966 () Bool)

(assert (=> b!6983966 (= e!4197545 0)))

(declare-fun b!6983967 () Bool)

(assert (=> b!6983967 (= e!4197545 (+ 1 (size!40885 (t!380848 (exprs!6682 lt!2482880)))))))

(assert (= (and d!2175185 c!1294923) b!6983966))

(assert (= (and d!2175185 (not c!1294923)) b!6983967))

(assert (=> b!6983967 m!7670986))

(assert (=> b!6983590 d!2175185))

(assert (=> b!6983590 d!2175097))

(declare-fun d!2175187 () Bool)

(declare-fun res!2847901 () Bool)

(declare-fun e!4197550 () Bool)

(assert (=> d!2175187 (=> res!2847901 e!4197550)))

(assert (=> d!2175187 (= res!2847901 (is-Nil!66981 lt!2482872))))

(assert (=> d!2175187 (= (forall!16084 lt!2482872 lambda!399764) e!4197550)))

(declare-fun b!6983972 () Bool)

(declare-fun e!4197551 () Bool)

(assert (=> b!6983972 (= e!4197550 e!4197551)))

(declare-fun res!2847902 () Bool)

(assert (=> b!6983972 (=> (not res!2847902) (not e!4197551))))

(assert (=> b!6983972 (= res!2847902 (dynLambda!26802 lambda!399764 (h!73429 lt!2482872)))))

(declare-fun b!6983973 () Bool)

(assert (=> b!6983973 (= e!4197551 (forall!16084 (t!380850 lt!2482872) lambda!399764))))

(assert (= (and d!2175187 (not res!2847901)) b!6983972))

(assert (= (and b!6983972 res!2847902) b!6983973))

(declare-fun b_lambda!261977 () Bool)

(assert (=> (not b_lambda!261977) (not b!6983972)))

(declare-fun m!7671074 () Bool)

(assert (=> b!6983972 m!7671074))

(declare-fun m!7671076 () Bool)

(assert (=> b!6983973 m!7671076))

(assert (=> d!2174927 d!2175187))

(declare-fun d!2175189 () Bool)

(declare-fun res!2847903 () Bool)

(declare-fun e!4197552 () Bool)

(assert (=> d!2175189 (=> res!2847903 e!4197552)))

(assert (=> d!2175189 (= res!2847903 (is-Nil!66979 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306))))))

(assert (=> d!2175189 (= (forall!16085 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306)) lambda!399730) e!4197552)))

(declare-fun b!6983974 () Bool)

(declare-fun e!4197553 () Bool)

(assert (=> b!6983974 (= e!4197552 e!4197553)))

(declare-fun res!2847904 () Bool)

(assert (=> b!6983974 (=> (not res!2847904) (not e!4197553))))

(assert (=> b!6983974 (= res!2847904 (dynLambda!26810 lambda!399730 (h!73427 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306)))))))

(declare-fun b!6983975 () Bool)

(assert (=> b!6983975 (= e!4197553 (forall!16085 (t!380848 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306))) lambda!399730))))

(assert (= (and d!2175189 (not res!2847903)) b!6983974))

(assert (= (and b!6983974 res!2847904) b!6983975))

(declare-fun b_lambda!261979 () Bool)

(assert (=> (not b_lambda!261979) (not b!6983974)))

(declare-fun m!7671078 () Bool)

(assert (=> b!6983974 m!7671078))

(declare-fun m!7671080 () Bool)

(assert (=> b!6983975 m!7671080))

(assert (=> d!2174941 d!2175189))

(assert (=> d!2174941 d!2174973))

(declare-fun d!2175191 () Bool)

(assert (=> d!2175191 (forall!16085 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306)) lambda!399730)))

(assert (=> d!2175191 true))

(declare-fun _$78!488 () Unit!161026)

(assert (=> d!2175191 (= (choose!52108 (exprs!6682 lt!2482880) (exprs!6682 ct2!306) lambda!399730) _$78!488)))

(declare-fun bs!1861365 () Bool)

(assert (= bs!1861365 d!2175191))

(assert (=> bs!1861365 m!7670358))

(assert (=> bs!1861365 m!7670358))

(assert (=> bs!1861365 m!7670530))

(assert (=> d!2174941 d!2175191))

(declare-fun d!2175193 () Bool)

(declare-fun res!2847905 () Bool)

(declare-fun e!4197554 () Bool)

(assert (=> d!2175193 (=> res!2847905 e!4197554)))

(assert (=> d!2175193 (= res!2847905 (is-Nil!66979 (exprs!6682 lt!2482880)))))

(assert (=> d!2175193 (= (forall!16085 (exprs!6682 lt!2482880) lambda!399730) e!4197554)))

(declare-fun b!6983976 () Bool)

(declare-fun e!4197555 () Bool)

(assert (=> b!6983976 (= e!4197554 e!4197555)))

(declare-fun res!2847906 () Bool)

(assert (=> b!6983976 (=> (not res!2847906) (not e!4197555))))

(assert (=> b!6983976 (= res!2847906 (dynLambda!26810 lambda!399730 (h!73427 (exprs!6682 lt!2482880))))))

(declare-fun b!6983977 () Bool)

(assert (=> b!6983977 (= e!4197555 (forall!16085 (t!380848 (exprs!6682 lt!2482880)) lambda!399730))))

(assert (= (and d!2175193 (not res!2847905)) b!6983976))

(assert (= (and b!6983976 res!2847906) b!6983977))

(declare-fun b_lambda!261981 () Bool)

(assert (=> (not b_lambda!261981) (not b!6983976)))

(declare-fun m!7671082 () Bool)

(assert (=> b!6983976 m!7671082))

(declare-fun m!7671084 () Bool)

(assert (=> b!6983977 m!7671084))

(assert (=> d!2174941 d!2175193))

(declare-fun d!2175195 () Bool)

(declare-fun res!2847907 () Bool)

(declare-fun e!4197556 () Bool)

(assert (=> d!2175195 (=> res!2847907 e!4197556)))

(assert (=> d!2175195 (= res!2847907 (is-Nil!66979 (exprs!6682 setElem!47614)))))

(assert (=> d!2175195 (= (forall!16085 (exprs!6682 setElem!47614) lambda!399776) e!4197556)))

(declare-fun b!6983978 () Bool)

(declare-fun e!4197557 () Bool)

(assert (=> b!6983978 (= e!4197556 e!4197557)))

(declare-fun res!2847908 () Bool)

(assert (=> b!6983978 (=> (not res!2847908) (not e!4197557))))

(assert (=> b!6983978 (= res!2847908 (dynLambda!26810 lambda!399776 (h!73427 (exprs!6682 setElem!47614))))))

(declare-fun b!6983979 () Bool)

(assert (=> b!6983979 (= e!4197557 (forall!16085 (t!380848 (exprs!6682 setElem!47614)) lambda!399776))))

(assert (= (and d!2175195 (not res!2847907)) b!6983978))

(assert (= (and b!6983978 res!2847908) b!6983979))

(declare-fun b_lambda!261983 () Bool)

(assert (=> (not b_lambda!261983) (not b!6983978)))

(declare-fun m!7671086 () Bool)

(assert (=> b!6983978 m!7671086))

(declare-fun m!7671088 () Bool)

(assert (=> b!6983979 m!7671088))

(assert (=> d!2174955 d!2175195))

(assert (=> d!2174969 d!2175053))

(assert (=> bs!1861252 d!2174961))

(declare-fun d!2175197 () Bool)

(assert (=> d!2175197 (= (nullable!6946 (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))) (nullableFct!2616 (regOne!34884 (h!73427 (exprs!6682 lt!2482880)))))))

(declare-fun bs!1861366 () Bool)

(assert (= bs!1861366 d!2175197))

(declare-fun m!7671090 () Bool)

(assert (=> bs!1861366 m!7671090))

(assert (=> b!6983535 d!2175197))

(declare-fun b!6983991 () Bool)

(declare-fun e!4197560 () Bool)

(declare-fun tp!1928771 () Bool)

(declare-fun tp!1928770 () Bool)

(assert (=> b!6983991 (= e!4197560 (and tp!1928771 tp!1928770))))

(declare-fun b!6983990 () Bool)

(assert (=> b!6983990 (= e!4197560 tp_is_empty!43597)))

(declare-fun b!6983992 () Bool)

(declare-fun tp!1928774 () Bool)

(assert (=> b!6983992 (= e!4197560 tp!1928774)))

(assert (=> b!6983605 (= tp!1928718 e!4197560)))

(declare-fun b!6983993 () Bool)

(declare-fun tp!1928773 () Bool)

(declare-fun tp!1928772 () Bool)

(assert (=> b!6983993 (= e!4197560 (and tp!1928773 tp!1928772))))

(assert (= (and b!6983605 (is-ElementMatch!17186 (h!73427 (exprs!6682 ct2!306)))) b!6983990))

(assert (= (and b!6983605 (is-Concat!26031 (h!73427 (exprs!6682 ct2!306)))) b!6983991))

(assert (= (and b!6983605 (is-Star!17186 (h!73427 (exprs!6682 ct2!306)))) b!6983992))

(assert (= (and b!6983605 (is-Union!17186 (h!73427 (exprs!6682 ct2!306)))) b!6983993))

(declare-fun b!6983994 () Bool)

(declare-fun e!4197561 () Bool)

(declare-fun tp!1928775 () Bool)

(declare-fun tp!1928776 () Bool)

(assert (=> b!6983994 (= e!4197561 (and tp!1928775 tp!1928776))))

(assert (=> b!6983605 (= tp!1928719 e!4197561)))

(assert (= (and b!6983605 (is-Cons!66979 (t!380848 (exprs!6682 ct2!306)))) b!6983994))

(declare-fun b!6983996 () Bool)

(declare-fun e!4197562 () Bool)

(declare-fun tp!1928778 () Bool)

(declare-fun tp!1928777 () Bool)

(assert (=> b!6983996 (= e!4197562 (and tp!1928778 tp!1928777))))

(declare-fun b!6983995 () Bool)

(assert (=> b!6983995 (= e!4197562 tp_is_empty!43597)))

(declare-fun b!6983997 () Bool)

(declare-fun tp!1928781 () Bool)

(assert (=> b!6983997 (= e!4197562 tp!1928781)))

(assert (=> b!6983611 (= tp!1928726 e!4197562)))

(declare-fun b!6983998 () Bool)

(declare-fun tp!1928780 () Bool)

(declare-fun tp!1928779 () Bool)

(assert (=> b!6983998 (= e!4197562 (and tp!1928780 tp!1928779))))

(assert (= (and b!6983611 (is-ElementMatch!17186 (h!73427 (exprs!6682 setElem!47614)))) b!6983995))

(assert (= (and b!6983611 (is-Concat!26031 (h!73427 (exprs!6682 setElem!47614)))) b!6983996))

(assert (= (and b!6983611 (is-Star!17186 (h!73427 (exprs!6682 setElem!47614)))) b!6983997))

(assert (= (and b!6983611 (is-Union!17186 (h!73427 (exprs!6682 setElem!47614)))) b!6983998))

(declare-fun b!6983999 () Bool)

(declare-fun e!4197563 () Bool)

(declare-fun tp!1928782 () Bool)

(declare-fun tp!1928783 () Bool)

(assert (=> b!6983999 (= e!4197563 (and tp!1928782 tp!1928783))))

(assert (=> b!6983611 (= tp!1928727 e!4197563)))

(assert (= (and b!6983611 (is-Cons!66979 (t!380848 (exprs!6682 setElem!47614)))) b!6983999))

(declare-fun b!6984000 () Bool)

(declare-fun e!4197564 () Bool)

(declare-fun tp!1928784 () Bool)

(declare-fun tp!1928785 () Bool)

(assert (=> b!6984000 (= e!4197564 (and tp!1928784 tp!1928785))))

(assert (=> b!6983610 (= tp!1928725 e!4197564)))

(assert (= (and b!6983610 (is-Cons!66979 (exprs!6682 setElem!47620))) b!6984000))

(declare-fun condSetEmpty!47627 () Bool)

(assert (=> setNonEmpty!47620 (= condSetEmpty!47627 (= setRest!47620 (as set.empty (Set Context!12364))))))

(declare-fun setRes!47627 () Bool)

(assert (=> setNonEmpty!47620 (= tp!1928724 setRes!47627)))

(declare-fun setIsEmpty!47627 () Bool)

(assert (=> setIsEmpty!47627 setRes!47627))

(declare-fun tp!1928786 () Bool)

(declare-fun setElem!47627 () Context!12364)

(declare-fun setNonEmpty!47627 () Bool)

(declare-fun e!4197565 () Bool)

(assert (=> setNonEmpty!47627 (= setRes!47627 (and tp!1928786 (inv!85825 setElem!47627) e!4197565))))

(declare-fun setRest!47627 () (Set Context!12364))

(assert (=> setNonEmpty!47627 (= setRest!47620 (set.union (set.insert setElem!47627 (as set.empty (Set Context!12364))) setRest!47627))))

(declare-fun b!6984001 () Bool)

(declare-fun tp!1928787 () Bool)

(assert (=> b!6984001 (= e!4197565 tp!1928787)))

(assert (= (and setNonEmpty!47620 condSetEmpty!47627) setIsEmpty!47627))

(assert (= (and setNonEmpty!47620 (not condSetEmpty!47627)) setNonEmpty!47627))

(assert (= setNonEmpty!47627 b!6984001))

(declare-fun m!7671092 () Bool)

(assert (=> setNonEmpty!47627 m!7671092))

(declare-fun b!6984002 () Bool)

(declare-fun e!4197566 () Bool)

(declare-fun tp!1928788 () Bool)

(assert (=> b!6984002 (= e!4197566 (and tp_is_empty!43597 tp!1928788))))

(assert (=> b!6983600 (= tp!1928713 e!4197566)))

(assert (= (and b!6983600 (is-Cons!66980 (t!380849 (t!380849 s!7408)))) b!6984002))

(declare-fun b_lambda!261985 () Bool)

(assert (= b_lambda!261977 (or d!2174927 b_lambda!261985)))

(declare-fun bs!1861367 () Bool)

(declare-fun d!2175199 () Bool)

(assert (= bs!1861367 (and d!2175199 d!2174927)))

(assert (=> bs!1861367 (= (dynLambda!26802 lambda!399764 (h!73429 lt!2482872)) (not (dynLambda!26802 lambda!399728 (h!73429 lt!2482872))))))

(declare-fun b_lambda!262007 () Bool)

(assert (=> (not b_lambda!262007) (not bs!1861367)))

(declare-fun m!7671094 () Bool)

(assert (=> bs!1861367 m!7671094))

(assert (=> b!6983972 d!2175199))

(declare-fun b_lambda!261987 () Bool)

(assert (= b_lambda!261963 (or b!6983398 b_lambda!261987)))

(declare-fun bs!1861368 () Bool)

(declare-fun d!2175201 () Bool)

(assert (= bs!1861368 (and d!2175201 b!6983398)))

(assert (=> bs!1861368 (= (dynLambda!26802 lambda!399728 lt!2483034) (matchZipper!2726 (set.insert lt!2483034 (as set.empty (Set Context!12364))) s!7408))))

(declare-fun m!7671096 () Bool)

(assert (=> bs!1861368 m!7671096))

(assert (=> bs!1861368 m!7671096))

(declare-fun m!7671098 () Bool)

(assert (=> bs!1861368 m!7671098))

(assert (=> d!2175113 d!2175201))

(declare-fun b_lambda!261989 () Bool)

(assert (= b_lambda!261967 (or b!6983409 b_lambda!261989)))

(declare-fun bs!1861369 () Bool)

(declare-fun d!2175203 () Bool)

(assert (= bs!1861369 (and d!2175203 b!6983409)))

(assert (=> bs!1861369 (= (dynLambda!26810 lambda!399730 (h!73427 (++!15131 lt!2482889 (exprs!6682 ct2!306)))) (validRegex!8844 (h!73427 (++!15131 lt!2482889 (exprs!6682 ct2!306)))))))

(declare-fun m!7671100 () Bool)

(assert (=> bs!1861369 m!7671100))

(assert (=> b!6983901 d!2175203))

(declare-fun b_lambda!261991 () Bool)

(assert (= b_lambda!261971 (or b!6983401 b_lambda!261991)))

(assert (=> d!2175145 d!2174977))

(declare-fun b_lambda!261993 () Bool)

(assert (= b_lambda!261979 (or b!6983409 b_lambda!261993)))

(declare-fun bs!1861370 () Bool)

(declare-fun d!2175205 () Bool)

(assert (= bs!1861370 (and d!2175205 b!6983409)))

(assert (=> bs!1861370 (= (dynLambda!26810 lambda!399730 (h!73427 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306)))) (validRegex!8844 (h!73427 (++!15131 (exprs!6682 lt!2482880) (exprs!6682 ct2!306)))))))

(declare-fun m!7671102 () Bool)

(assert (=> bs!1861370 m!7671102))

(assert (=> b!6983974 d!2175205))

(declare-fun b_lambda!261995 () Bool)

(assert (= b_lambda!261981 (or b!6983409 b_lambda!261995)))

(declare-fun bs!1861371 () Bool)

(declare-fun d!2175207 () Bool)

(assert (= bs!1861371 (and d!2175207 b!6983409)))

(assert (=> bs!1861371 (= (dynLambda!26810 lambda!399730 (h!73427 (exprs!6682 lt!2482880))) (validRegex!8844 (h!73427 (exprs!6682 lt!2482880))))))

(assert (=> bs!1861371 m!7670376))

(assert (=> b!6983976 d!2175207))

(declare-fun b_lambda!261997 () Bool)

(assert (= b_lambda!261969 (or b!6983409 b_lambda!261997)))

(declare-fun bs!1861372 () Bool)

(declare-fun d!2175209 () Bool)

(assert (= bs!1861372 (and d!2175209 b!6983409)))

(assert (=> bs!1861372 (= (dynLambda!26810 lambda!399730 (h!73427 lt!2482889)) (validRegex!8844 (h!73427 lt!2482889)))))

(declare-fun m!7671104 () Bool)

(assert (=> bs!1861372 m!7671104))

(assert (=> b!6983903 d!2175209))

(declare-fun b_lambda!261999 () Bool)

(assert (= b_lambda!261965 (or b!6983398 b_lambda!261999)))

(declare-fun bs!1861373 () Bool)

(declare-fun d!2175211 () Bool)

(assert (= bs!1861373 (and d!2175211 b!6983398)))

(assert (=> bs!1861373 (= (dynLambda!26802 lambda!399728 (h!73429 (toList!10546 lt!2482879))) (matchZipper!2726 (set.insert (h!73429 (toList!10546 lt!2482879)) (as set.empty (Set Context!12364))) s!7408))))

(declare-fun m!7671106 () Bool)

(assert (=> bs!1861373 m!7671106))

(assert (=> bs!1861373 m!7671106))

(declare-fun m!7671108 () Bool)

(assert (=> bs!1861373 m!7671108))

(assert (=> b!6983871 d!2175211))

(declare-fun b_lambda!262001 () Bool)

(assert (= b_lambda!261983 (or d!2174955 b_lambda!262001)))

(declare-fun bs!1861374 () Bool)

(declare-fun d!2175213 () Bool)

(assert (= bs!1861374 (and d!2175213 d!2174955)))

(assert (=> bs!1861374 (= (dynLambda!26810 lambda!399776 (h!73427 (exprs!6682 setElem!47614))) (validRegex!8844 (h!73427 (exprs!6682 setElem!47614))))))

(declare-fun m!7671110 () Bool)

(assert (=> bs!1861374 m!7671110))

(assert (=> b!6983978 d!2175213))

(declare-fun b_lambda!262003 () Bool)

(assert (= b_lambda!261973 (or d!2174951 b_lambda!262003)))

(declare-fun bs!1861375 () Bool)

(declare-fun d!2175215 () Bool)

(assert (= bs!1861375 (and d!2175215 d!2174951)))

(assert (=> bs!1861375 (= (dynLambda!26810 lambda!399775 (h!73427 (exprs!6682 ct2!306))) (validRegex!8844 (h!73427 (exprs!6682 ct2!306))))))

(declare-fun m!7671112 () Bool)

(assert (=> bs!1861375 m!7671112))

(assert (=> b!6983955 d!2175215))

(declare-fun b_lambda!262005 () Bool)

(assert (= b_lambda!261975 (or b!6983409 b_lambda!262005)))

(declare-fun bs!1861376 () Bool)

(declare-fun d!2175217 () Bool)

(assert (= bs!1861376 (and d!2175217 b!6983409)))

(declare-fun lt!2483043 () Unit!161026)

(assert (=> bs!1861376 (= lt!2483043 (lemmaConcatPreservesForall!522 (exprs!6682 a!12664) (exprs!6682 ct2!306) lambda!399730))))

(assert (=> bs!1861376 (= (dynLambda!26805 lambda!399729 a!12664) (Context!12365 (++!15131 (exprs!6682 a!12664) (exprs!6682 ct2!306))))))

(declare-fun m!7671114 () Bool)

(assert (=> bs!1861376 m!7671114))

(declare-fun m!7671116 () Bool)

(assert (=> bs!1861376 m!7671116))

(assert (=> d!2175179 d!2175217))

(push 1)

(assert (not d!2175141))

(assert (not bs!1861372))

(assert (not b!6983821))

(assert (not b!6983929))

(assert (not b!6983965))

(assert (not d!2175077))

(assert (not bm!633874))

(assert (not b!6983977))

(assert (not b!6983979))

(assert (not b_lambda!261949))

(assert (not d!2175143))

(assert (not d!2175197))

(assert (not b!6983975))

(assert (not d!2175057))

(assert (not d!2175179))

(assert (not bs!1861375))

(assert (not b!6983824))

(assert (not bs!1861371))

(assert (not b!6983827))

(assert (not setNonEmpty!47627))

(assert (not d!2175075))

(assert (not d!2175155))

(assert (not b!6984001))

(assert (not b!6983920))

(assert (not bm!633867))

(assert (not d!2175111))

(assert (not b!6983915))

(assert (not b!6983943))

(assert (not d!2175153))

(assert (not b!6983908))

(assert (not b!6983760))

(assert (not b!6983768))

(assert (not b!6983947))

(assert (not b!6983839))

(assert (not b!6983767))

(assert (not b!6983788))

(assert (not b_lambda!261995))

(assert (not b!6983847))

(assert (not b!6983999))

(assert (not bm!633875))

(assert (not d!2175051))

(assert (not bm!633864))

(assert (not b!6983820))

(assert (not b!6983911))

(assert (not b!6983962))

(assert (not b_lambda!261945))

(assert (not bs!1861373))

(assert (not b!6983852))

(assert (not bm!633891))

(assert (not b_lambda!261985))

(assert (not d!2175165))

(assert (not b!6983894))

(assert (not b!6983991))

(assert (not b!6983787))

(assert (not d!2175167))

(assert (not setNonEmpty!47626))

(assert (not b!6983992))

(assert tp_is_empty!43597)

(assert (not d!2175175))

(assert (not d!2175151))

(assert (not b_lambda!262005))

(assert (not d!2175109))

(assert (not bm!633859))

(assert (not b!6983832))

(assert (not d!2175071))

(assert (not bm!633893))

(assert (not b_lambda!262007))

(assert (not b!6983778))

(assert (not d!2175177))

(assert (not d!2175113))

(assert (not bm!633884))

(assert (not b!6983885))

(assert (not b!6983770))

(assert (not d!2175115))

(assert (not b_lambda!261991))

(assert (not bm!633889))

(assert (not bs!1861376))

(assert (not b_lambda!261987))

(assert (not d!2175181))

(assert (not d!2175061))

(assert (not b_lambda!262003))

(assert (not bs!1861369))

(assert (not b_lambda!261993))

(assert (not b!6983934))

(assert (not b!6983998))

(assert (not d!2175063))

(assert (not bm!633882))

(assert (not d!2175191))

(assert (not b!6983868))

(assert (not b!6983774))

(assert (not d!2175139))

(assert (not b!6983845))

(assert (not d!2175133))

(assert (not b_lambda!261997))

(assert (not b!6983866))

(assert (not b_lambda!261989))

(assert (not b!6983914))

(assert (not d!2175169))

(assert (not b!6983902))

(assert (not bs!1861368))

(assert (not b!6983996))

(assert (not b!6983879))

(assert (not b!6983794))

(assert (not b!6983850))

(assert (not b!6983940))

(assert (not bm!633860))

(assert (not b!6983826))

(assert (not b_lambda!262001))

(assert (not bm!633878))

(assert (not d!2175085))

(assert (not d!2175047))

(assert (not b!6983851))

(assert (not d!2175101))

(assert (not d!2175099))

(assert (not b!6983912))

(assert (not d!2175171))

(assert (not d!2175147))

(assert (not b!6983870))

(assert (not b!6983956))

(assert (not bs!1861374))

(assert (not d!2175161))

(assert (not b!6983831))

(assert (not b!6983993))

(assert (not b!6983973))

(assert (not d!2175125))

(assert (not b!6984000))

(assert (not b!6983909))

(assert (not bm!633876))

(assert (not bm!633888))

(assert (not b!6984002))

(assert (not d!2175089))

(assert (not bm!633895))

(assert (not b!6983896))

(assert (not d!2175087))

(assert (not b!6983853))

(assert (not b!6983769))

(assert (not bs!1861370))

(assert (not bm!633873))

(assert (not b!6983759))

(assert (not d!2175159))

(assert (not b!6983881))

(assert (not b!6983906))

(assert (not b!6983849))

(assert (not b!6983997))

(assert (not bm!633866))

(assert (not bm!633862))

(assert (not b!6983825))

(assert (not b!6983833))

(assert (not d!2175145))

(assert (not b_lambda!261999))

(assert (not bm!633880))

(assert (not b!6983939))

(assert (not b!6983928))

(assert (not b!6983877))

(assert (not b!6983967))

(assert (not d!2175107))

(assert (not bm!633886))

(assert (not b!6983994))

(assert (not b!6983904))

(assert (not b_lambda!261947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


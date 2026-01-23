; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675872 () Bool)

(assert start!675872)

(declare-fun b!7014463 () Bool)

(assert (=> b!7014463 true))

(declare-fun b!7014462 () Bool)

(assert (=> b!7014462 true))

(declare-fun b!7014458 () Bool)

(assert (=> b!7014458 true))

(declare-fun e!4216504 () Bool)

(declare-fun e!4216511 () Bool)

(assert (=> b!7014458 (= e!4216504 e!4216511)))

(declare-fun res!2862728 () Bool)

(assert (=> b!7014458 (=> res!2862728 e!4216511)))

(declare-datatypes ((C!34950 0))(
  ( (C!34951 (val!27177 Int)) )
))
(declare-datatypes ((Regex!17340 0))(
  ( (ElementMatch!17340 (c!1303119 C!34950)) (Concat!26185 (regOne!35192 Regex!17340) (regTwo!35192 Regex!17340)) (EmptyExpr!17340) (Star!17340 (reg!17669 Regex!17340)) (EmptyLang!17340) (Union!17340 (regOne!35193 Regex!17340) (regTwo!35193 Regex!17340)) )
))
(declare-datatypes ((List!67565 0))(
  ( (Nil!67441) (Cons!67441 (h!73889 Regex!17340) (t!381320 List!67565)) )
))
(declare-datatypes ((Context!12672 0))(
  ( (Context!12673 (exprs!6836 List!67565)) )
))
(declare-fun lt!2507406 () (Set Context!12672))

(declare-fun lt!2507398 () (Set Context!12672))

(declare-datatypes ((List!67566 0))(
  ( (Nil!67442) (Cons!67442 (h!73890 C!34950) (t!381321 List!67566)) )
))
(declare-fun s!7408 () List!67566)

(declare-fun derivationStepZipper!2820 ((Set Context!12672) C!34950) (Set Context!12672))

(assert (=> b!7014458 (= res!2862728 (not (= (derivationStepZipper!2820 lt!2507398 (h!73890 s!7408)) lt!2507406)))))

(declare-fun lambda!409609 () Int)

(declare-fun lt!2507404 () Context!12672)

(declare-fun flatMap!2326 ((Set Context!12672) Int) (Set Context!12672))

(declare-fun derivationStepZipperUp!1990 (Context!12672 C!34950) (Set Context!12672))

(assert (=> b!7014458 (= (flatMap!2326 lt!2507398 lambda!409609) (derivationStepZipperUp!1990 lt!2507404 (h!73890 s!7408)))))

(declare-datatypes ((Unit!161360 0))(
  ( (Unit!161361) )
))
(declare-fun lt!2507408 () Unit!161360)

(declare-fun lemmaFlatMapOnSingletonSet!1841 ((Set Context!12672) Context!12672 Int) Unit!161360)

(assert (=> b!7014458 (= lt!2507408 (lemmaFlatMapOnSingletonSet!1841 lt!2507398 lt!2507404 lambda!409609))))

(assert (=> b!7014458 (= lt!2507406 (derivationStepZipperUp!1990 lt!2507404 (h!73890 s!7408)))))

(declare-fun lt!2507407 () Unit!161360)

(declare-fun ct2!306 () Context!12672)

(declare-fun lt!2507403 () Context!12672)

(declare-fun lambda!409608 () Int)

(declare-fun lemmaConcatPreservesForall!676 (List!67565 List!67565 Int) Unit!161360)

(assert (=> b!7014458 (= lt!2507407 (lemmaConcatPreservesForall!676 (exprs!6836 lt!2507403) (exprs!6836 ct2!306) lambda!409608))))

(declare-fun b!7014459 () Bool)

(declare-fun e!4216503 () Bool)

(assert (=> b!7014459 (= e!4216503 e!4216504)))

(declare-fun res!2862733 () Bool)

(assert (=> b!7014459 (=> res!2862733 e!4216504)))

(declare-fun lt!2507409 () (Set Context!12672))

(assert (=> b!7014459 (= res!2862733 (not (= lt!2507398 lt!2507409)))))

(assert (=> b!7014459 (= lt!2507398 (set.insert lt!2507404 (as set.empty (Set Context!12672))))))

(declare-fun lt!2507405 () Unit!161360)

(assert (=> b!7014459 (= lt!2507405 (lemmaConcatPreservesForall!676 (exprs!6836 lt!2507403) (exprs!6836 ct2!306) lambda!409608))))

(declare-fun b!7014460 () Bool)

(declare-fun e!4216510 () Bool)

(declare-fun validRegex!8899 (Regex!17340) Bool)

(assert (=> b!7014460 (= e!4216510 (validRegex!8899 (h!73889 (exprs!6836 lt!2507403))))))

(declare-fun lt!2507395 () List!67565)

(declare-fun lt!2507399 () List!67565)

(declare-fun ++!15355 (List!67565 List!67565) List!67565)

(assert (=> b!7014460 (= lt!2507395 (++!15355 lt!2507399 (exprs!6836 ct2!306)))))

(declare-fun lt!2507402 () Unit!161360)

(assert (=> b!7014460 (= lt!2507402 (lemmaConcatPreservesForall!676 lt!2507399 (exprs!6836 ct2!306) lambda!409608))))

(declare-fun b!7014461 () Bool)

(declare-fun e!4216507 () Bool)

(declare-fun tp_is_empty!43905 () Bool)

(declare-fun tp!1932928 () Bool)

(assert (=> b!7014461 (= e!4216507 (and tp_is_empty!43905 tp!1932928))))

(declare-fun e!4216508 () Bool)

(assert (=> b!7014462 (= e!4216508 e!4216503)))

(declare-fun res!2862730 () Bool)

(assert (=> b!7014462 (=> res!2862730 e!4216503)))

(declare-fun lt!2507400 () Context!12672)

(declare-fun z1!570 () (Set Context!12672))

(assert (=> b!7014462 (= res!2862730 (or (not (= lt!2507404 lt!2507400)) (not (set.member lt!2507403 z1!570))))))

(assert (=> b!7014462 (= lt!2507404 (Context!12673 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306))))))

(declare-fun lt!2507396 () Unit!161360)

(assert (=> b!7014462 (= lt!2507396 (lemmaConcatPreservesForall!676 (exprs!6836 lt!2507403) (exprs!6836 ct2!306) lambda!409608))))

(declare-fun lambda!409607 () Int)

(declare-fun mapPost2!195 ((Set Context!12672) Int Context!12672) Context!12672)

(assert (=> b!7014462 (= lt!2507403 (mapPost2!195 z1!570 lambda!409607 lt!2507400))))

(declare-fun e!4216506 () Bool)

(assert (=> b!7014463 (= e!4216506 (not e!4216508))))

(declare-fun res!2862732 () Bool)

(assert (=> b!7014463 (=> res!2862732 e!4216508)))

(declare-fun matchZipper!2880 ((Set Context!12672) List!67566) Bool)

(assert (=> b!7014463 (= res!2862732 (not (matchZipper!2880 lt!2507409 s!7408)))))

(assert (=> b!7014463 (= lt!2507409 (set.insert lt!2507400 (as set.empty (Set Context!12672))))))

(declare-fun lt!2507401 () (Set Context!12672))

(declare-fun lambda!409606 () Int)

(declare-fun getWitness!1291 ((Set Context!12672) Int) Context!12672)

(assert (=> b!7014463 (= lt!2507400 (getWitness!1291 lt!2507401 lambda!409606))))

(declare-datatypes ((List!67567 0))(
  ( (Nil!67443) (Cons!67443 (h!73891 Context!12672) (t!381322 List!67567)) )
))
(declare-fun lt!2507410 () List!67567)

(declare-fun exists!3198 (List!67567 Int) Bool)

(assert (=> b!7014463 (exists!3198 lt!2507410 lambda!409606)))

(declare-fun lt!2507397 () Unit!161360)

(declare-fun lemmaZipperMatchesExistsMatchingContext!309 (List!67567 List!67566) Unit!161360)

(assert (=> b!7014463 (= lt!2507397 (lemmaZipperMatchesExistsMatchingContext!309 lt!2507410 s!7408))))

(declare-fun toList!10700 ((Set Context!12672)) List!67567)

(assert (=> b!7014463 (= lt!2507410 (toList!10700 lt!2507401))))

(declare-fun res!2862725 () Bool)

(assert (=> start!675872 (=> (not res!2862725) (not e!4216506))))

(assert (=> start!675872 (= res!2862725 (matchZipper!2880 lt!2507401 s!7408))))

(declare-fun appendTo!461 ((Set Context!12672) Context!12672) (Set Context!12672))

(assert (=> start!675872 (= lt!2507401 (appendTo!461 z1!570 ct2!306))))

(assert (=> start!675872 e!4216506))

(declare-fun condSetEmpty!48469 () Bool)

(assert (=> start!675872 (= condSetEmpty!48469 (= z1!570 (as set.empty (Set Context!12672))))))

(declare-fun setRes!48469 () Bool)

(assert (=> start!675872 setRes!48469))

(declare-fun e!4216509 () Bool)

(declare-fun inv!86210 (Context!12672) Bool)

(assert (=> start!675872 (and (inv!86210 ct2!306) e!4216509)))

(assert (=> start!675872 e!4216507))

(declare-fun b!7014464 () Bool)

(declare-fun res!2862729 () Bool)

(assert (=> b!7014464 (=> res!2862729 e!4216511)))

(assert (=> b!7014464 (= res!2862729 (not (is-Cons!67441 (exprs!6836 lt!2507403))))))

(declare-fun b!7014465 () Bool)

(declare-fun e!4216505 () Bool)

(declare-fun tp!1932929 () Bool)

(assert (=> b!7014465 (= e!4216505 tp!1932929)))

(declare-fun b!7014466 () Bool)

(declare-fun tp!1932926 () Bool)

(assert (=> b!7014466 (= e!4216509 tp!1932926)))

(declare-fun b!7014467 () Bool)

(declare-fun res!2862731 () Bool)

(assert (=> b!7014467 (=> res!2862731 e!4216511)))

(declare-fun isEmpty!39387 (List!67565) Bool)

(assert (=> b!7014467 (= res!2862731 (isEmpty!39387 (exprs!6836 lt!2507403)))))

(declare-fun b!7014468 () Bool)

(declare-fun res!2862727 () Bool)

(assert (=> b!7014468 (=> (not res!2862727) (not e!4216506))))

(assert (=> b!7014468 (= res!2862727 (is-Cons!67442 s!7408))))

(declare-fun b!7014469 () Bool)

(assert (=> b!7014469 (= e!4216511 e!4216510)))

(declare-fun res!2862726 () Bool)

(assert (=> b!7014469 (=> res!2862726 e!4216510)))

(declare-fun nullable!7100 (Regex!17340) Bool)

(assert (=> b!7014469 (= res!2862726 (nullable!7100 (h!73889 (exprs!6836 lt!2507403))))))

(declare-fun tail!13424 (List!67565) List!67565)

(assert (=> b!7014469 (= lt!2507399 (tail!13424 (exprs!6836 lt!2507403)))))

(declare-fun setIsEmpty!48469 () Bool)

(assert (=> setIsEmpty!48469 setRes!48469))

(declare-fun tp!1932927 () Bool)

(declare-fun setElem!48469 () Context!12672)

(declare-fun setNonEmpty!48469 () Bool)

(assert (=> setNonEmpty!48469 (= setRes!48469 (and tp!1932927 (inv!86210 setElem!48469) e!4216505))))

(declare-fun setRest!48469 () (Set Context!12672))

(assert (=> setNonEmpty!48469 (= z1!570 (set.union (set.insert setElem!48469 (as set.empty (Set Context!12672))) setRest!48469))))

(declare-fun b!7014470 () Bool)

(declare-fun res!2862724 () Bool)

(assert (=> b!7014470 (=> res!2862724 e!4216508)))

(assert (=> b!7014470 (= res!2862724 (not (set.member lt!2507400 lt!2507401)))))

(assert (= (and start!675872 res!2862725) b!7014468))

(assert (= (and b!7014468 res!2862727) b!7014463))

(assert (= (and b!7014463 (not res!2862732)) b!7014470))

(assert (= (and b!7014470 (not res!2862724)) b!7014462))

(assert (= (and b!7014462 (not res!2862730)) b!7014459))

(assert (= (and b!7014459 (not res!2862733)) b!7014458))

(assert (= (and b!7014458 (not res!2862728)) b!7014464))

(assert (= (and b!7014464 (not res!2862729)) b!7014467))

(assert (= (and b!7014467 (not res!2862731)) b!7014469))

(assert (= (and b!7014469 (not res!2862726)) b!7014460))

(assert (= (and start!675872 condSetEmpty!48469) setIsEmpty!48469))

(assert (= (and start!675872 (not condSetEmpty!48469)) setNonEmpty!48469))

(assert (= setNonEmpty!48469 b!7014465))

(assert (= start!675872 b!7014466))

(assert (= (and start!675872 (is-Cons!67442 s!7408)) b!7014461))

(declare-fun m!7713744 () Bool)

(assert (=> b!7014463 m!7713744))

(declare-fun m!7713746 () Bool)

(assert (=> b!7014463 m!7713746))

(declare-fun m!7713748 () Bool)

(assert (=> b!7014463 m!7713748))

(declare-fun m!7713750 () Bool)

(assert (=> b!7014463 m!7713750))

(declare-fun m!7713752 () Bool)

(assert (=> b!7014463 m!7713752))

(declare-fun m!7713754 () Bool)

(assert (=> b!7014463 m!7713754))

(declare-fun m!7713756 () Bool)

(assert (=> b!7014469 m!7713756))

(declare-fun m!7713758 () Bool)

(assert (=> b!7014469 m!7713758))

(declare-fun m!7713760 () Bool)

(assert (=> b!7014462 m!7713760))

(declare-fun m!7713762 () Bool)

(assert (=> b!7014462 m!7713762))

(declare-fun m!7713764 () Bool)

(assert (=> b!7014462 m!7713764))

(declare-fun m!7713766 () Bool)

(assert (=> b!7014462 m!7713766))

(declare-fun m!7713768 () Bool)

(assert (=> b!7014467 m!7713768))

(declare-fun m!7713770 () Bool)

(assert (=> setNonEmpty!48469 m!7713770))

(declare-fun m!7713772 () Bool)

(assert (=> b!7014458 m!7713772))

(declare-fun m!7713774 () Bool)

(assert (=> b!7014458 m!7713774))

(assert (=> b!7014458 m!7713764))

(declare-fun m!7713776 () Bool)

(assert (=> b!7014458 m!7713776))

(declare-fun m!7713778 () Bool)

(assert (=> b!7014458 m!7713778))

(declare-fun m!7713780 () Bool)

(assert (=> b!7014460 m!7713780))

(declare-fun m!7713782 () Bool)

(assert (=> b!7014460 m!7713782))

(declare-fun m!7713784 () Bool)

(assert (=> b!7014460 m!7713784))

(declare-fun m!7713786 () Bool)

(assert (=> start!675872 m!7713786))

(declare-fun m!7713788 () Bool)

(assert (=> start!675872 m!7713788))

(declare-fun m!7713790 () Bool)

(assert (=> start!675872 m!7713790))

(declare-fun m!7713792 () Bool)

(assert (=> b!7014459 m!7713792))

(assert (=> b!7014459 m!7713764))

(declare-fun m!7713794 () Bool)

(assert (=> b!7014470 m!7713794))

(push 1)

(assert (not b!7014461))

(assert tp_is_empty!43905)

(assert (not b!7014469))

(assert (not start!675872))

(assert (not b!7014459))

(assert (not b!7014460))

(assert (not setNonEmpty!48469))

(assert (not b!7014467))

(assert (not b!7014462))

(assert (not b!7014463))

(assert (not b!7014465))

(assert (not b!7014458))

(assert (not b!7014466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2186516 () Bool)

(declare-fun nullableFct!2691 (Regex!17340) Bool)

(assert (=> d!2186516 (= (nullable!7100 (h!73889 (exprs!6836 lt!2507403))) (nullableFct!2691 (h!73889 (exprs!6836 lt!2507403))))))

(declare-fun bs!1866605 () Bool)

(assert (= bs!1866605 d!2186516))

(declare-fun m!7713848 () Bool)

(assert (=> bs!1866605 m!7713848))

(assert (=> b!7014469 d!2186516))

(declare-fun d!2186518 () Bool)

(assert (=> d!2186518 (= (tail!13424 (exprs!6836 lt!2507403)) (t!381320 (exprs!6836 lt!2507403)))))

(assert (=> b!7014469 d!2186518))

(declare-fun d!2186520 () Bool)

(declare-fun choose!52786 ((Set Context!12672) Int) (Set Context!12672))

(assert (=> d!2186520 (= (flatMap!2326 lt!2507398 lambda!409609) (choose!52786 lt!2507398 lambda!409609))))

(declare-fun bs!1866606 () Bool)

(assert (= bs!1866606 d!2186520))

(declare-fun m!7713850 () Bool)

(assert (=> bs!1866606 m!7713850))

(assert (=> b!7014458 d!2186520))

(declare-fun call!637057 () (Set Context!12672))

(declare-fun b!7014532 () Bool)

(declare-fun e!4216547 () (Set Context!12672))

(assert (=> b!7014532 (= e!4216547 (set.union call!637057 (derivationStepZipperUp!1990 (Context!12673 (t!381320 (exprs!6836 lt!2507404))) (h!73890 s!7408))))))

(declare-fun b!7014533 () Bool)

(declare-fun e!4216545 () (Set Context!12672))

(assert (=> b!7014533 (= e!4216545 (as set.empty (Set Context!12672)))))

(declare-fun b!7014534 () Bool)

(assert (=> b!7014534 (= e!4216545 call!637057)))

(declare-fun bm!637052 () Bool)

(declare-fun derivationStepZipperDown!2058 (Regex!17340 Context!12672 C!34950) (Set Context!12672))

(assert (=> bm!637052 (= call!637057 (derivationStepZipperDown!2058 (h!73889 (exprs!6836 lt!2507404)) (Context!12673 (t!381320 (exprs!6836 lt!2507404))) (h!73890 s!7408)))))

(declare-fun b!7014535 () Bool)

(assert (=> b!7014535 (= e!4216547 e!4216545)))

(declare-fun c!1303134 () Bool)

(assert (=> b!7014535 (= c!1303134 (is-Cons!67441 (exprs!6836 lt!2507404)))))

(declare-fun b!7014536 () Bool)

(declare-fun e!4216546 () Bool)

(assert (=> b!7014536 (= e!4216546 (nullable!7100 (h!73889 (exprs!6836 lt!2507404))))))

(declare-fun d!2186522 () Bool)

(declare-fun c!1303133 () Bool)

(assert (=> d!2186522 (= c!1303133 e!4216546)))

(declare-fun res!2862768 () Bool)

(assert (=> d!2186522 (=> (not res!2862768) (not e!4216546))))

(assert (=> d!2186522 (= res!2862768 (is-Cons!67441 (exprs!6836 lt!2507404)))))

(assert (=> d!2186522 (= (derivationStepZipperUp!1990 lt!2507404 (h!73890 s!7408)) e!4216547)))

(assert (= (and d!2186522 res!2862768) b!7014536))

(assert (= (and d!2186522 c!1303133) b!7014532))

(assert (= (and d!2186522 (not c!1303133)) b!7014535))

(assert (= (and b!7014535 c!1303134) b!7014534))

(assert (= (and b!7014535 (not c!1303134)) b!7014533))

(assert (= (or b!7014532 b!7014534) bm!637052))

(declare-fun m!7713852 () Bool)

(assert (=> b!7014532 m!7713852))

(declare-fun m!7713854 () Bool)

(assert (=> bm!637052 m!7713854))

(declare-fun m!7713856 () Bool)

(assert (=> b!7014536 m!7713856))

(assert (=> b!7014458 d!2186522))

(declare-fun d!2186524 () Bool)

(declare-fun forall!16254 (List!67565 Int) Bool)

(assert (=> d!2186524 (forall!16254 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306)) lambda!409608)))

(declare-fun lt!2507463 () Unit!161360)

(declare-fun choose!52787 (List!67565 List!67565 Int) Unit!161360)

(assert (=> d!2186524 (= lt!2507463 (choose!52787 (exprs!6836 lt!2507403) (exprs!6836 ct2!306) lambda!409608))))

(assert (=> d!2186524 (forall!16254 (exprs!6836 lt!2507403) lambda!409608)))

(assert (=> d!2186524 (= (lemmaConcatPreservesForall!676 (exprs!6836 lt!2507403) (exprs!6836 ct2!306) lambda!409608) lt!2507463)))

(declare-fun bs!1866607 () Bool)

(assert (= bs!1866607 d!2186524))

(assert (=> bs!1866607 m!7713762))

(assert (=> bs!1866607 m!7713762))

(declare-fun m!7713858 () Bool)

(assert (=> bs!1866607 m!7713858))

(declare-fun m!7713860 () Bool)

(assert (=> bs!1866607 m!7713860))

(declare-fun m!7713862 () Bool)

(assert (=> bs!1866607 m!7713862))

(assert (=> b!7014458 d!2186524))

(declare-fun d!2186526 () Bool)

(declare-fun dynLambda!27143 (Int Context!12672) (Set Context!12672))

(assert (=> d!2186526 (= (flatMap!2326 lt!2507398 lambda!409609) (dynLambda!27143 lambda!409609 lt!2507404))))

(declare-fun lt!2507466 () Unit!161360)

(declare-fun choose!52788 ((Set Context!12672) Context!12672 Int) Unit!161360)

(assert (=> d!2186526 (= lt!2507466 (choose!52788 lt!2507398 lt!2507404 lambda!409609))))

(assert (=> d!2186526 (= lt!2507398 (set.insert lt!2507404 (as set.empty (Set Context!12672))))))

(assert (=> d!2186526 (= (lemmaFlatMapOnSingletonSet!1841 lt!2507398 lt!2507404 lambda!409609) lt!2507466)))

(declare-fun b_lambda!264631 () Bool)

(assert (=> (not b_lambda!264631) (not d!2186526)))

(declare-fun bs!1866608 () Bool)

(assert (= bs!1866608 d!2186526))

(assert (=> bs!1866608 m!7713776))

(declare-fun m!7713864 () Bool)

(assert (=> bs!1866608 m!7713864))

(declare-fun m!7713866 () Bool)

(assert (=> bs!1866608 m!7713866))

(assert (=> bs!1866608 m!7713792))

(assert (=> b!7014458 d!2186526))

(declare-fun bs!1866609 () Bool)

(declare-fun d!2186528 () Bool)

(assert (= bs!1866609 (and d!2186528 b!7014458)))

(declare-fun lambda!409634 () Int)

(assert (=> bs!1866609 (= lambda!409634 lambda!409609)))

(assert (=> d!2186528 true))

(assert (=> d!2186528 (= (derivationStepZipper!2820 lt!2507398 (h!73890 s!7408)) (flatMap!2326 lt!2507398 lambda!409634))))

(declare-fun bs!1866610 () Bool)

(assert (= bs!1866610 d!2186528))

(declare-fun m!7713868 () Bool)

(assert (=> bs!1866610 m!7713868))

(assert (=> b!7014458 d!2186528))

(declare-fun d!2186530 () Bool)

(declare-fun e!4216550 () Bool)

(assert (=> d!2186530 e!4216550))

(declare-fun res!2862771 () Bool)

(assert (=> d!2186530 (=> (not res!2862771) (not e!4216550))))

(declare-fun lt!2507469 () List!67567)

(declare-fun noDuplicate!2575 (List!67567) Bool)

(assert (=> d!2186530 (= res!2862771 (noDuplicate!2575 lt!2507469))))

(declare-fun choose!52789 ((Set Context!12672)) List!67567)

(assert (=> d!2186530 (= lt!2507469 (choose!52789 lt!2507401))))

(assert (=> d!2186530 (= (toList!10700 lt!2507401) lt!2507469)))

(declare-fun b!7014541 () Bool)

(declare-fun content!13401 (List!67567) (Set Context!12672))

(assert (=> b!7014541 (= e!4216550 (= (content!13401 lt!2507469) lt!2507401))))

(assert (= (and d!2186530 res!2862771) b!7014541))

(declare-fun m!7713870 () Bool)

(assert (=> d!2186530 m!7713870))

(declare-fun m!7713872 () Bool)

(assert (=> d!2186530 m!7713872))

(declare-fun m!7713874 () Bool)

(assert (=> b!7014541 m!7713874))

(assert (=> b!7014463 d!2186530))

(declare-fun d!2186532 () Bool)

(declare-fun c!1303139 () Bool)

(declare-fun isEmpty!39389 (List!67566) Bool)

(assert (=> d!2186532 (= c!1303139 (isEmpty!39389 s!7408))))

(declare-fun e!4216553 () Bool)

(assert (=> d!2186532 (= (matchZipper!2880 lt!2507409 s!7408) e!4216553)))

(declare-fun b!7014546 () Bool)

(declare-fun nullableZipper!2497 ((Set Context!12672)) Bool)

(assert (=> b!7014546 (= e!4216553 (nullableZipper!2497 lt!2507409))))

(declare-fun b!7014547 () Bool)

(declare-fun head!14185 (List!67566) C!34950)

(declare-fun tail!13426 (List!67566) List!67566)

(assert (=> b!7014547 (= e!4216553 (matchZipper!2880 (derivationStepZipper!2820 lt!2507409 (head!14185 s!7408)) (tail!13426 s!7408)))))

(assert (= (and d!2186532 c!1303139) b!7014546))

(assert (= (and d!2186532 (not c!1303139)) b!7014547))

(declare-fun m!7713876 () Bool)

(assert (=> d!2186532 m!7713876))

(declare-fun m!7713878 () Bool)

(assert (=> b!7014546 m!7713878))

(declare-fun m!7713880 () Bool)

(assert (=> b!7014547 m!7713880))

(assert (=> b!7014547 m!7713880))

(declare-fun m!7713882 () Bool)

(assert (=> b!7014547 m!7713882))

(declare-fun m!7713884 () Bool)

(assert (=> b!7014547 m!7713884))

(assert (=> b!7014547 m!7713882))

(assert (=> b!7014547 m!7713884))

(declare-fun m!7713886 () Bool)

(assert (=> b!7014547 m!7713886))

(assert (=> b!7014463 d!2186532))

(declare-fun bs!1866611 () Bool)

(declare-fun d!2186536 () Bool)

(assert (= bs!1866611 (and d!2186536 b!7014463)))

(declare-fun lambda!409637 () Int)

(assert (=> bs!1866611 (not (= lambda!409637 lambda!409606))))

(assert (=> d!2186536 true))

(declare-fun order!28053 () Int)

(declare-fun dynLambda!27144 (Int Int) Int)

(assert (=> d!2186536 (< (dynLambda!27144 order!28053 lambda!409606) (dynLambda!27144 order!28053 lambda!409637))))

(declare-fun forall!16255 (List!67567 Int) Bool)

(assert (=> d!2186536 (= (exists!3198 lt!2507410 lambda!409606) (not (forall!16255 lt!2507410 lambda!409637)))))

(declare-fun bs!1866612 () Bool)

(assert (= bs!1866612 d!2186536))

(declare-fun m!7713888 () Bool)

(assert (=> bs!1866612 m!7713888))

(assert (=> b!7014463 d!2186536))

(declare-fun d!2186540 () Bool)

(declare-fun e!4216556 () Bool)

(assert (=> d!2186540 e!4216556))

(declare-fun res!2862774 () Bool)

(assert (=> d!2186540 (=> (not res!2862774) (not e!4216556))))

(declare-fun lt!2507472 () Context!12672)

(declare-fun dynLambda!27145 (Int Context!12672) Bool)

(assert (=> d!2186540 (= res!2862774 (dynLambda!27145 lambda!409606 lt!2507472))))

(declare-fun getWitness!1293 (List!67567 Int) Context!12672)

(assert (=> d!2186540 (= lt!2507472 (getWitness!1293 (toList!10700 lt!2507401) lambda!409606))))

(declare-fun exists!3200 ((Set Context!12672) Int) Bool)

(assert (=> d!2186540 (exists!3200 lt!2507401 lambda!409606)))

(assert (=> d!2186540 (= (getWitness!1291 lt!2507401 lambda!409606) lt!2507472)))

(declare-fun b!7014552 () Bool)

(assert (=> b!7014552 (= e!4216556 (set.member lt!2507472 lt!2507401))))

(assert (= (and d!2186540 res!2862774) b!7014552))

(declare-fun b_lambda!264633 () Bool)

(assert (=> (not b_lambda!264633) (not d!2186540)))

(declare-fun m!7713890 () Bool)

(assert (=> d!2186540 m!7713890))

(assert (=> d!2186540 m!7713746))

(assert (=> d!2186540 m!7713746))

(declare-fun m!7713892 () Bool)

(assert (=> d!2186540 m!7713892))

(declare-fun m!7713894 () Bool)

(assert (=> d!2186540 m!7713894))

(declare-fun m!7713896 () Bool)

(assert (=> b!7014552 m!7713896))

(assert (=> b!7014463 d!2186540))

(declare-fun bs!1866613 () Bool)

(declare-fun d!2186542 () Bool)

(assert (= bs!1866613 (and d!2186542 b!7014463)))

(declare-fun lambda!409640 () Int)

(assert (=> bs!1866613 (= lambda!409640 lambda!409606)))

(declare-fun bs!1866614 () Bool)

(assert (= bs!1866614 (and d!2186542 d!2186536)))

(assert (=> bs!1866614 (not (= lambda!409640 lambda!409637))))

(assert (=> d!2186542 true))

(assert (=> d!2186542 (exists!3198 lt!2507410 lambda!409640)))

(declare-fun lt!2507475 () Unit!161360)

(declare-fun choose!52790 (List!67567 List!67566) Unit!161360)

(assert (=> d!2186542 (= lt!2507475 (choose!52790 lt!2507410 s!7408))))

(assert (=> d!2186542 (matchZipper!2880 (content!13401 lt!2507410) s!7408)))

(assert (=> d!2186542 (= (lemmaZipperMatchesExistsMatchingContext!309 lt!2507410 s!7408) lt!2507475)))

(declare-fun bs!1866615 () Bool)

(assert (= bs!1866615 d!2186542))

(declare-fun m!7713910 () Bool)

(assert (=> bs!1866615 m!7713910))

(declare-fun m!7713912 () Bool)

(assert (=> bs!1866615 m!7713912))

(declare-fun m!7713914 () Bool)

(assert (=> bs!1866615 m!7713914))

(assert (=> bs!1866615 m!7713914))

(declare-fun m!7713916 () Bool)

(assert (=> bs!1866615 m!7713916))

(assert (=> b!7014463 d!2186542))

(declare-fun d!2186546 () Bool)

(declare-fun c!1303145 () Bool)

(assert (=> d!2186546 (= c!1303145 (isEmpty!39389 s!7408))))

(declare-fun e!4216560 () Bool)

(assert (=> d!2186546 (= (matchZipper!2880 lt!2507401 s!7408) e!4216560)))

(declare-fun b!7014559 () Bool)

(assert (=> b!7014559 (= e!4216560 (nullableZipper!2497 lt!2507401))))

(declare-fun b!7014560 () Bool)

(assert (=> b!7014560 (= e!4216560 (matchZipper!2880 (derivationStepZipper!2820 lt!2507401 (head!14185 s!7408)) (tail!13426 s!7408)))))

(assert (= (and d!2186546 c!1303145) b!7014559))

(assert (= (and d!2186546 (not c!1303145)) b!7014560))

(assert (=> d!2186546 m!7713876))

(declare-fun m!7713918 () Bool)

(assert (=> b!7014559 m!7713918))

(assert (=> b!7014560 m!7713880))

(assert (=> b!7014560 m!7713880))

(declare-fun m!7713920 () Bool)

(assert (=> b!7014560 m!7713920))

(assert (=> b!7014560 m!7713884))

(assert (=> b!7014560 m!7713920))

(assert (=> b!7014560 m!7713884))

(declare-fun m!7713922 () Bool)

(assert (=> b!7014560 m!7713922))

(assert (=> start!675872 d!2186546))

(declare-fun bs!1866618 () Bool)

(declare-fun d!2186548 () Bool)

(assert (= bs!1866618 (and d!2186548 b!7014462)))

(declare-fun lambda!409648 () Int)

(assert (=> bs!1866618 (= lambda!409648 lambda!409607)))

(assert (=> d!2186548 true))

(declare-fun map!15632 ((Set Context!12672) Int) (Set Context!12672))

(assert (=> d!2186548 (= (appendTo!461 z1!570 ct2!306) (map!15632 z1!570 lambda!409648))))

(declare-fun bs!1866619 () Bool)

(assert (= bs!1866619 d!2186548))

(declare-fun m!7713926 () Bool)

(assert (=> bs!1866619 m!7713926))

(assert (=> start!675872 d!2186548))

(declare-fun bs!1866620 () Bool)

(declare-fun d!2186552 () Bool)

(assert (= bs!1866620 (and d!2186552 b!7014462)))

(declare-fun lambda!409651 () Int)

(assert (=> bs!1866620 (= lambda!409651 lambda!409608)))

(assert (=> d!2186552 (= (inv!86210 ct2!306) (forall!16254 (exprs!6836 ct2!306) lambda!409651))))

(declare-fun bs!1866621 () Bool)

(assert (= bs!1866621 d!2186552))

(declare-fun m!7713928 () Bool)

(assert (=> bs!1866621 m!7713928))

(assert (=> start!675872 d!2186552))

(declare-fun b!7014576 () Bool)

(declare-fun res!2862783 () Bool)

(declare-fun e!4216569 () Bool)

(assert (=> b!7014576 (=> (not res!2862783) (not e!4216569))))

(declare-fun lt!2507483 () List!67565)

(declare-fun size!40989 (List!67565) Int)

(assert (=> b!7014576 (= res!2862783 (= (size!40989 lt!2507483) (+ (size!40989 (exprs!6836 lt!2507403)) (size!40989 (exprs!6836 ct2!306)))))))

(declare-fun d!2186554 () Bool)

(assert (=> d!2186554 e!4216569))

(declare-fun res!2862782 () Bool)

(assert (=> d!2186554 (=> (not res!2862782) (not e!4216569))))

(declare-fun content!13402 (List!67565) (Set Regex!17340))

(assert (=> d!2186554 (= res!2862782 (= (content!13402 lt!2507483) (set.union (content!13402 (exprs!6836 lt!2507403)) (content!13402 (exprs!6836 ct2!306)))))))

(declare-fun e!4216568 () List!67565)

(assert (=> d!2186554 (= lt!2507483 e!4216568)))

(declare-fun c!1303149 () Bool)

(assert (=> d!2186554 (= c!1303149 (is-Nil!67441 (exprs!6836 lt!2507403)))))

(assert (=> d!2186554 (= (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306)) lt!2507483)))

(declare-fun b!7014577 () Bool)

(assert (=> b!7014577 (= e!4216569 (or (not (= (exprs!6836 ct2!306) Nil!67441)) (= lt!2507483 (exprs!6836 lt!2507403))))))

(declare-fun b!7014574 () Bool)

(assert (=> b!7014574 (= e!4216568 (exprs!6836 ct2!306))))

(declare-fun b!7014575 () Bool)

(assert (=> b!7014575 (= e!4216568 (Cons!67441 (h!73889 (exprs!6836 lt!2507403)) (++!15355 (t!381320 (exprs!6836 lt!2507403)) (exprs!6836 ct2!306))))))

(assert (= (and d!2186554 c!1303149) b!7014574))

(assert (= (and d!2186554 (not c!1303149)) b!7014575))

(assert (= (and d!2186554 res!2862782) b!7014576))

(assert (= (and b!7014576 res!2862783) b!7014577))

(declare-fun m!7713936 () Bool)

(assert (=> b!7014576 m!7713936))

(declare-fun m!7713938 () Bool)

(assert (=> b!7014576 m!7713938))

(declare-fun m!7713940 () Bool)

(assert (=> b!7014576 m!7713940))

(declare-fun m!7713942 () Bool)

(assert (=> d!2186554 m!7713942))

(declare-fun m!7713944 () Bool)

(assert (=> d!2186554 m!7713944))

(declare-fun m!7713946 () Bool)

(assert (=> d!2186554 m!7713946))

(declare-fun m!7713948 () Bool)

(assert (=> b!7014575 m!7713948))

(assert (=> b!7014462 d!2186554))

(assert (=> b!7014462 d!2186524))

(declare-fun d!2186558 () Bool)

(declare-fun e!4216572 () Bool)

(assert (=> d!2186558 e!4216572))

(declare-fun res!2862786 () Bool)

(assert (=> d!2186558 (=> (not res!2862786) (not e!4216572))))

(declare-fun lt!2507486 () Context!12672)

(declare-fun dynLambda!27146 (Int Context!12672) Context!12672)

(assert (=> d!2186558 (= res!2862786 (= lt!2507400 (dynLambda!27146 lambda!409607 lt!2507486)))))

(declare-fun choose!52791 ((Set Context!12672) Int Context!12672) Context!12672)

(assert (=> d!2186558 (= lt!2507486 (choose!52791 z1!570 lambda!409607 lt!2507400))))

(assert (=> d!2186558 (set.member lt!2507400 (map!15632 z1!570 lambda!409607))))

(assert (=> d!2186558 (= (mapPost2!195 z1!570 lambda!409607 lt!2507400) lt!2507486)))

(declare-fun b!7014581 () Bool)

(assert (=> b!7014581 (= e!4216572 (set.member lt!2507486 z1!570))))

(assert (= (and d!2186558 res!2862786) b!7014581))

(declare-fun b_lambda!264635 () Bool)

(assert (=> (not b_lambda!264635) (not d!2186558)))

(declare-fun m!7713950 () Bool)

(assert (=> d!2186558 m!7713950))

(declare-fun m!7713952 () Bool)

(assert (=> d!2186558 m!7713952))

(declare-fun m!7713954 () Bool)

(assert (=> d!2186558 m!7713954))

(declare-fun m!7713956 () Bool)

(assert (=> d!2186558 m!7713956))

(declare-fun m!7713958 () Bool)

(assert (=> b!7014581 m!7713958))

(assert (=> b!7014462 d!2186558))

(declare-fun d!2186560 () Bool)

(assert (=> d!2186560 (= (isEmpty!39387 (exprs!6836 lt!2507403)) (is-Nil!67441 (exprs!6836 lt!2507403)))))

(assert (=> b!7014467 d!2186560))

(declare-fun bs!1866622 () Bool)

(declare-fun d!2186562 () Bool)

(assert (= bs!1866622 (and d!2186562 b!7014462)))

(declare-fun lambda!409652 () Int)

(assert (=> bs!1866622 (= lambda!409652 lambda!409608)))

(declare-fun bs!1866623 () Bool)

(assert (= bs!1866623 (and d!2186562 d!2186552)))

(assert (=> bs!1866623 (= lambda!409652 lambda!409651)))

(assert (=> d!2186562 (= (inv!86210 setElem!48469) (forall!16254 (exprs!6836 setElem!48469) lambda!409652))))

(declare-fun bs!1866624 () Bool)

(assert (= bs!1866624 d!2186562))

(declare-fun m!7713960 () Bool)

(assert (=> bs!1866624 m!7713960))

(assert (=> setNonEmpty!48469 d!2186562))

(declare-fun b!7014600 () Bool)

(declare-fun e!4216592 () Bool)

(declare-fun call!637066 () Bool)

(assert (=> b!7014600 (= e!4216592 call!637066)))

(declare-fun b!7014601 () Bool)

(declare-fun e!4216593 () Bool)

(declare-fun e!4216589 () Bool)

(assert (=> b!7014601 (= e!4216593 e!4216589)))

(declare-fun c!1303157 () Bool)

(assert (=> b!7014601 (= c!1303157 (is-Union!17340 (h!73889 (exprs!6836 lt!2507403))))))

(declare-fun b!7014602 () Bool)

(declare-fun res!2862801 () Bool)

(declare-fun e!4216587 () Bool)

(assert (=> b!7014602 (=> res!2862801 e!4216587)))

(assert (=> b!7014602 (= res!2862801 (not (is-Concat!26185 (h!73889 (exprs!6836 lt!2507403)))))))

(assert (=> b!7014602 (= e!4216589 e!4216587)))

(declare-fun c!1303156 () Bool)

(declare-fun bm!637059 () Bool)

(assert (=> bm!637059 (= call!637066 (validRegex!8899 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))))))

(declare-fun bm!637060 () Bool)

(declare-fun call!637064 () Bool)

(assert (=> bm!637060 (= call!637064 (validRegex!8899 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))))))

(declare-fun b!7014603 () Bool)

(declare-fun e!4216591 () Bool)

(assert (=> b!7014603 (= e!4216587 e!4216591)))

(declare-fun res!2862800 () Bool)

(assert (=> b!7014603 (=> (not res!2862800) (not e!4216591))))

(assert (=> b!7014603 (= res!2862800 call!637064)))

(declare-fun b!7014604 () Bool)

(assert (=> b!7014604 (= e!4216593 e!4216592)))

(declare-fun res!2862799 () Bool)

(assert (=> b!7014604 (= res!2862799 (not (nullable!7100 (reg!17669 (h!73889 (exprs!6836 lt!2507403))))))))

(assert (=> b!7014604 (=> (not res!2862799) (not e!4216592))))

(declare-fun b!7014605 () Bool)

(declare-fun e!4216588 () Bool)

(declare-fun call!637065 () Bool)

(assert (=> b!7014605 (= e!4216588 call!637065)))

(declare-fun d!2186564 () Bool)

(declare-fun res!2862798 () Bool)

(declare-fun e!4216590 () Bool)

(assert (=> d!2186564 (=> res!2862798 e!4216590)))

(assert (=> d!2186564 (= res!2862798 (is-ElementMatch!17340 (h!73889 (exprs!6836 lt!2507403))))))

(assert (=> d!2186564 (= (validRegex!8899 (h!73889 (exprs!6836 lt!2507403))) e!4216590)))

(declare-fun b!7014606 () Bool)

(assert (=> b!7014606 (= e!4216590 e!4216593)))

(assert (=> b!7014606 (= c!1303156 (is-Star!17340 (h!73889 (exprs!6836 lt!2507403))))))

(declare-fun bm!637061 () Bool)

(assert (=> bm!637061 (= call!637065 call!637066)))

(declare-fun b!7014607 () Bool)

(declare-fun res!2862797 () Bool)

(assert (=> b!7014607 (=> (not res!2862797) (not e!4216588))))

(assert (=> b!7014607 (= res!2862797 call!637064)))

(assert (=> b!7014607 (= e!4216589 e!4216588)))

(declare-fun b!7014608 () Bool)

(assert (=> b!7014608 (= e!4216591 call!637065)))

(assert (= (and d!2186564 (not res!2862798)) b!7014606))

(assert (= (and b!7014606 c!1303156) b!7014604))

(assert (= (and b!7014606 (not c!1303156)) b!7014601))

(assert (= (and b!7014604 res!2862799) b!7014600))

(assert (= (and b!7014601 c!1303157) b!7014607))

(assert (= (and b!7014601 (not c!1303157)) b!7014602))

(assert (= (and b!7014607 res!2862797) b!7014605))

(assert (= (and b!7014602 (not res!2862801)) b!7014603))

(assert (= (and b!7014603 res!2862800) b!7014608))

(assert (= (or b!7014605 b!7014608) bm!637061))

(assert (= (or b!7014607 b!7014603) bm!637060))

(assert (= (or b!7014600 bm!637061) bm!637059))

(declare-fun m!7713962 () Bool)

(assert (=> bm!637059 m!7713962))

(declare-fun m!7713964 () Bool)

(assert (=> bm!637060 m!7713964))

(declare-fun m!7713966 () Bool)

(assert (=> b!7014604 m!7713966))

(assert (=> b!7014460 d!2186564))

(declare-fun b!7014611 () Bool)

(declare-fun res!2862803 () Bool)

(declare-fun e!4216595 () Bool)

(assert (=> b!7014611 (=> (not res!2862803) (not e!4216595))))

(declare-fun lt!2507490 () List!67565)

(assert (=> b!7014611 (= res!2862803 (= (size!40989 lt!2507490) (+ (size!40989 lt!2507399) (size!40989 (exprs!6836 ct2!306)))))))

(declare-fun d!2186566 () Bool)

(assert (=> d!2186566 e!4216595))

(declare-fun res!2862802 () Bool)

(assert (=> d!2186566 (=> (not res!2862802) (not e!4216595))))

(assert (=> d!2186566 (= res!2862802 (= (content!13402 lt!2507490) (set.union (content!13402 lt!2507399) (content!13402 (exprs!6836 ct2!306)))))))

(declare-fun e!4216594 () List!67565)

(assert (=> d!2186566 (= lt!2507490 e!4216594)))

(declare-fun c!1303158 () Bool)

(assert (=> d!2186566 (= c!1303158 (is-Nil!67441 lt!2507399))))

(assert (=> d!2186566 (= (++!15355 lt!2507399 (exprs!6836 ct2!306)) lt!2507490)))

(declare-fun b!7014612 () Bool)

(assert (=> b!7014612 (= e!4216595 (or (not (= (exprs!6836 ct2!306) Nil!67441)) (= lt!2507490 lt!2507399)))))

(declare-fun b!7014609 () Bool)

(assert (=> b!7014609 (= e!4216594 (exprs!6836 ct2!306))))

(declare-fun b!7014610 () Bool)

(assert (=> b!7014610 (= e!4216594 (Cons!67441 (h!73889 lt!2507399) (++!15355 (t!381320 lt!2507399) (exprs!6836 ct2!306))))))

(assert (= (and d!2186566 c!1303158) b!7014609))

(assert (= (and d!2186566 (not c!1303158)) b!7014610))

(assert (= (and d!2186566 res!2862802) b!7014611))

(assert (= (and b!7014611 res!2862803) b!7014612))

(declare-fun m!7713976 () Bool)

(assert (=> b!7014611 m!7713976))

(declare-fun m!7713978 () Bool)

(assert (=> b!7014611 m!7713978))

(assert (=> b!7014611 m!7713940))

(declare-fun m!7713980 () Bool)

(assert (=> d!2186566 m!7713980))

(declare-fun m!7713982 () Bool)

(assert (=> d!2186566 m!7713982))

(assert (=> d!2186566 m!7713946))

(declare-fun m!7713984 () Bool)

(assert (=> b!7014610 m!7713984))

(assert (=> b!7014460 d!2186566))

(declare-fun d!2186570 () Bool)

(assert (=> d!2186570 (forall!16254 (++!15355 lt!2507399 (exprs!6836 ct2!306)) lambda!409608)))

(declare-fun lt!2507491 () Unit!161360)

(assert (=> d!2186570 (= lt!2507491 (choose!52787 lt!2507399 (exprs!6836 ct2!306) lambda!409608))))

(assert (=> d!2186570 (forall!16254 lt!2507399 lambda!409608)))

(assert (=> d!2186570 (= (lemmaConcatPreservesForall!676 lt!2507399 (exprs!6836 ct2!306) lambda!409608) lt!2507491)))

(declare-fun bs!1866628 () Bool)

(assert (= bs!1866628 d!2186570))

(assert (=> bs!1866628 m!7713782))

(assert (=> bs!1866628 m!7713782))

(declare-fun m!7713986 () Bool)

(assert (=> bs!1866628 m!7713986))

(declare-fun m!7713988 () Bool)

(assert (=> bs!1866628 m!7713988))

(declare-fun m!7713990 () Bool)

(assert (=> bs!1866628 m!7713990))

(assert (=> b!7014460 d!2186570))

(assert (=> b!7014459 d!2186524))

(declare-fun b!7014617 () Bool)

(declare-fun e!4216598 () Bool)

(declare-fun tp!1932944 () Bool)

(assert (=> b!7014617 (= e!4216598 (and tp_is_empty!43905 tp!1932944))))

(assert (=> b!7014461 (= tp!1932928 e!4216598)))

(assert (= (and b!7014461 (is-Cons!67442 (t!381321 s!7408))) b!7014617))

(declare-fun b!7014622 () Bool)

(declare-fun e!4216601 () Bool)

(declare-fun tp!1932949 () Bool)

(declare-fun tp!1932950 () Bool)

(assert (=> b!7014622 (= e!4216601 (and tp!1932949 tp!1932950))))

(assert (=> b!7014466 (= tp!1932926 e!4216601)))

(assert (= (and b!7014466 (is-Cons!67441 (exprs!6836 ct2!306))) b!7014622))

(declare-fun condSetEmpty!48475 () Bool)

(assert (=> setNonEmpty!48469 (= condSetEmpty!48475 (= setRest!48469 (as set.empty (Set Context!12672))))))

(declare-fun setRes!48475 () Bool)

(assert (=> setNonEmpty!48469 (= tp!1932927 setRes!48475)))

(declare-fun setIsEmpty!48475 () Bool)

(assert (=> setIsEmpty!48475 setRes!48475))

(declare-fun setElem!48475 () Context!12672)

(declare-fun e!4216604 () Bool)

(declare-fun tp!1932955 () Bool)

(declare-fun setNonEmpty!48475 () Bool)

(assert (=> setNonEmpty!48475 (= setRes!48475 (and tp!1932955 (inv!86210 setElem!48475) e!4216604))))

(declare-fun setRest!48475 () (Set Context!12672))

(assert (=> setNonEmpty!48475 (= setRest!48469 (set.union (set.insert setElem!48475 (as set.empty (Set Context!12672))) setRest!48475))))

(declare-fun b!7014627 () Bool)

(declare-fun tp!1932956 () Bool)

(assert (=> b!7014627 (= e!4216604 tp!1932956)))

(assert (= (and setNonEmpty!48469 condSetEmpty!48475) setIsEmpty!48475))

(assert (= (and setNonEmpty!48469 (not condSetEmpty!48475)) setNonEmpty!48475))

(assert (= setNonEmpty!48475 b!7014627))

(declare-fun m!7713992 () Bool)

(assert (=> setNonEmpty!48475 m!7713992))

(declare-fun b!7014628 () Bool)

(declare-fun e!4216605 () Bool)

(declare-fun tp!1932957 () Bool)

(declare-fun tp!1932958 () Bool)

(assert (=> b!7014628 (= e!4216605 (and tp!1932957 tp!1932958))))

(assert (=> b!7014465 (= tp!1932929 e!4216605)))

(assert (= (and b!7014465 (is-Cons!67441 (exprs!6836 setElem!48469))) b!7014628))

(declare-fun b_lambda!264637 () Bool)

(assert (= b_lambda!264633 (or b!7014463 b_lambda!264637)))

(declare-fun bs!1866629 () Bool)

(declare-fun d!2186572 () Bool)

(assert (= bs!1866629 (and d!2186572 b!7014463)))

(assert (=> bs!1866629 (= (dynLambda!27145 lambda!409606 lt!2507472) (matchZipper!2880 (set.insert lt!2507472 (as set.empty (Set Context!12672))) s!7408))))

(declare-fun m!7713994 () Bool)

(assert (=> bs!1866629 m!7713994))

(assert (=> bs!1866629 m!7713994))

(declare-fun m!7713996 () Bool)

(assert (=> bs!1866629 m!7713996))

(assert (=> d!2186540 d!2186572))

(declare-fun b_lambda!264639 () Bool)

(assert (= b_lambda!264635 (or b!7014462 b_lambda!264639)))

(declare-fun bs!1866630 () Bool)

(declare-fun d!2186574 () Bool)

(assert (= bs!1866630 (and d!2186574 b!7014462)))

(declare-fun lt!2507492 () Unit!161360)

(assert (=> bs!1866630 (= lt!2507492 (lemmaConcatPreservesForall!676 (exprs!6836 lt!2507486) (exprs!6836 ct2!306) lambda!409608))))

(assert (=> bs!1866630 (= (dynLambda!27146 lambda!409607 lt!2507486) (Context!12673 (++!15355 (exprs!6836 lt!2507486) (exprs!6836 ct2!306))))))

(declare-fun m!7713998 () Bool)

(assert (=> bs!1866630 m!7713998))

(declare-fun m!7714000 () Bool)

(assert (=> bs!1866630 m!7714000))

(assert (=> d!2186558 d!2186574))

(declare-fun b_lambda!264641 () Bool)

(assert (= b_lambda!264631 (or b!7014458 b_lambda!264641)))

(declare-fun bs!1866631 () Bool)

(declare-fun d!2186576 () Bool)

(assert (= bs!1866631 (and d!2186576 b!7014458)))

(assert (=> bs!1866631 (= (dynLambda!27143 lambda!409609 lt!2507404) (derivationStepZipperUp!1990 lt!2507404 (h!73890 s!7408)))))

(assert (=> bs!1866631 m!7713772))

(assert (=> d!2186526 d!2186576))

(push 1)

(assert (not b_lambda!264637))

(assert (not b!7014575))

(assert (not bm!637052))

(assert (not d!2186562))

(assert (not b!7014610))

(assert (not d!2186566))

(assert (not d!2186542))

(assert (not d!2186524))

(assert (not b!7014547))

(assert (not bs!1866631))

(assert (not d!2186554))

(assert (not b!7014532))

(assert (not b!7014546))

(assert (not b!7014559))

(assert (not b_lambda!264639))

(assert (not bs!1866629))

(assert (not d!2186552))

(assert (not d!2186526))

(assert (not d!2186520))

(assert (not b!7014617))

(assert (not d!2186558))

(assert (not setNonEmpty!48475))

(assert (not b!7014541))

(assert (not b!7014536))

(assert (not b!7014576))

(assert (not b!7014560))

(assert (not b!7014622))

(assert tp_is_empty!43905)

(assert (not b!7014627))

(assert (not b!7014611))

(assert (not d!2186530))

(assert (not d!2186570))

(assert (not d!2186516))

(assert (not b!7014628))

(assert (not d!2186528))

(assert (not bs!1866630))

(assert (not d!2186532))

(assert (not d!2186536))

(assert (not bm!637060))

(assert (not d!2186546))

(assert (not d!2186540))

(assert (not b!7014604))

(assert (not d!2186548))

(assert (not bm!637059))

(assert (not b_lambda!264641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2186616 () Bool)

(declare-fun e!4216665 () Bool)

(assert (=> d!2186616 e!4216665))

(declare-fun res!2862838 () Bool)

(assert (=> d!2186616 (=> (not res!2862838) (not e!4216665))))

(declare-fun a!13005 () Context!12672)

(assert (=> d!2186616 (= res!2862838 (= lt!2507400 (dynLambda!27146 lambda!409607 a!13005)))))

(declare-fun e!4216666 () Bool)

(assert (=> d!2186616 (and (inv!86210 a!13005) e!4216666)))

(assert (=> d!2186616 (= (choose!52791 z1!570 lambda!409607 lt!2507400) a!13005)))

(declare-fun b!7014719 () Bool)

(declare-fun tp!1932978 () Bool)

(assert (=> b!7014719 (= e!4216666 tp!1932978)))

(declare-fun b!7014720 () Bool)

(assert (=> b!7014720 (= e!4216665 (set.member a!13005 z1!570))))

(assert (= d!2186616 b!7014719))

(assert (= (and d!2186616 res!2862838) b!7014720))

(declare-fun b_lambda!264655 () Bool)

(assert (=> (not b_lambda!264655) (not d!2186616)))

(declare-fun m!7714100 () Bool)

(assert (=> d!2186616 m!7714100))

(declare-fun m!7714102 () Bool)

(assert (=> d!2186616 m!7714102))

(declare-fun m!7714104 () Bool)

(assert (=> b!7014720 m!7714104))

(assert (=> d!2186558 d!2186616))

(declare-fun d!2186618 () Bool)

(declare-fun choose!52798 ((Set Context!12672) Int) (Set Context!12672))

(assert (=> d!2186618 (= (map!15632 z1!570 lambda!409607) (choose!52798 z1!570 lambda!409607))))

(declare-fun bs!1866649 () Bool)

(assert (= bs!1866649 d!2186618))

(declare-fun m!7714106 () Bool)

(assert (=> bs!1866649 m!7714106))

(assert (=> d!2186558 d!2186618))

(assert (=> bs!1866631 d!2186522))

(declare-fun bm!637078 () Bool)

(declare-fun call!637084 () Bool)

(declare-fun c!1303181 () Bool)

(assert (=> bm!637078 (= call!637084 (nullable!7100 (ite c!1303181 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))))))

(declare-fun b!7014735 () Bool)

(declare-fun e!4216679 () Bool)

(declare-fun e!4216681 () Bool)

(assert (=> b!7014735 (= e!4216679 e!4216681)))

(declare-fun res!2862853 () Bool)

(assert (=> b!7014735 (=> (not res!2862853) (not e!4216681))))

(assert (=> b!7014735 (= res!2862853 (and (not (is-EmptyLang!17340 (h!73889 (exprs!6836 lt!2507403)))) (not (is-ElementMatch!17340 (h!73889 (exprs!6836 lt!2507403))))))))

(declare-fun b!7014736 () Bool)

(declare-fun e!4216684 () Bool)

(assert (=> b!7014736 (= e!4216684 call!637084)))

(declare-fun b!7014737 () Bool)

(declare-fun e!4216680 () Bool)

(assert (=> b!7014737 (= e!4216681 e!4216680)))

(declare-fun res!2862851 () Bool)

(assert (=> b!7014737 (=> res!2862851 e!4216680)))

(assert (=> b!7014737 (= res!2862851 (is-Star!17340 (h!73889 (exprs!6836 lt!2507403))))))

(declare-fun d!2186620 () Bool)

(declare-fun res!2862852 () Bool)

(assert (=> d!2186620 (=> res!2862852 e!4216679)))

(assert (=> d!2186620 (= res!2862852 (is-EmptyExpr!17340 (h!73889 (exprs!6836 lt!2507403))))))

(assert (=> d!2186620 (= (nullableFct!2691 (h!73889 (exprs!6836 lt!2507403))) e!4216679)))

(declare-fun b!7014738 () Bool)

(declare-fun e!4216682 () Bool)

(declare-fun e!4216683 () Bool)

(assert (=> b!7014738 (= e!4216682 e!4216683)))

(declare-fun res!2862849 () Bool)

(assert (=> b!7014738 (= res!2862849 call!637084)))

(assert (=> b!7014738 (=> (not res!2862849) (not e!4216683))))

(declare-fun b!7014739 () Bool)

(assert (=> b!7014739 (= e!4216682 e!4216684)))

(declare-fun res!2862850 () Bool)

(declare-fun call!637083 () Bool)

(assert (=> b!7014739 (= res!2862850 call!637083)))

(assert (=> b!7014739 (=> res!2862850 e!4216684)))

(declare-fun bm!637079 () Bool)

(assert (=> bm!637079 (= call!637083 (nullable!7100 (ite c!1303181 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403))))))))

(declare-fun b!7014740 () Bool)

(assert (=> b!7014740 (= e!4216683 call!637083)))

(declare-fun b!7014741 () Bool)

(assert (=> b!7014741 (= e!4216680 e!4216682)))

(assert (=> b!7014741 (= c!1303181 (is-Union!17340 (h!73889 (exprs!6836 lt!2507403))))))

(assert (= (and d!2186620 (not res!2862852)) b!7014735))

(assert (= (and b!7014735 res!2862853) b!7014737))

(assert (= (and b!7014737 (not res!2862851)) b!7014741))

(assert (= (and b!7014741 c!1303181) b!7014739))

(assert (= (and b!7014741 (not c!1303181)) b!7014738))

(assert (= (and b!7014739 (not res!2862850)) b!7014736))

(assert (= (and b!7014738 res!2862849) b!7014740))

(assert (= (or b!7014736 b!7014738) bm!637078))

(assert (= (or b!7014739 b!7014740) bm!637079))

(declare-fun m!7714108 () Bool)

(assert (=> bm!637078 m!7714108))

(declare-fun m!7714110 () Bool)

(assert (=> bm!637079 m!7714110))

(assert (=> d!2186516 d!2186620))

(declare-fun d!2186622 () Bool)

(assert (=> d!2186622 (= (isEmpty!39389 s!7408) (is-Nil!67442 s!7408))))

(assert (=> d!2186546 d!2186622))

(declare-fun b!7014754 () Bool)

(declare-fun e!4216693 () Context!12672)

(assert (=> b!7014754 (= e!4216693 (getWitness!1293 (t!381322 (toList!10700 lt!2507401)) lambda!409606))))

(declare-fun b!7014755 () Bool)

(declare-fun e!4216696 () Bool)

(assert (=> b!7014755 (= e!4216696 (dynLambda!27145 lambda!409606 (h!73891 (toList!10700 lt!2507401))))))

(declare-fun b!7014756 () Bool)

(declare-fun e!4216694 () Context!12672)

(assert (=> b!7014756 (= e!4216694 e!4216693)))

(declare-fun c!1303186 () Bool)

(assert (=> b!7014756 (= c!1303186 (is-Cons!67443 (toList!10700 lt!2507401)))))

(declare-fun b!7014757 () Bool)

(declare-fun lt!2507517 () Unit!161360)

(declare-fun Unit!161364 () Unit!161360)

(assert (=> b!7014757 (= lt!2507517 Unit!161364)))

(assert (=> b!7014757 false))

(declare-fun head!14187 (List!67567) Context!12672)

(assert (=> b!7014757 (= e!4216693 (head!14187 (toList!10700 lt!2507401)))))

(declare-fun b!7014759 () Bool)

(assert (=> b!7014759 (= e!4216694 (h!73891 (toList!10700 lt!2507401)))))

(declare-fun d!2186624 () Bool)

(declare-fun e!4216695 () Bool)

(assert (=> d!2186624 e!4216695))

(declare-fun res!2862858 () Bool)

(assert (=> d!2186624 (=> (not res!2862858) (not e!4216695))))

(declare-fun lt!2507518 () Context!12672)

(assert (=> d!2186624 (= res!2862858 (dynLambda!27145 lambda!409606 lt!2507518))))

(assert (=> d!2186624 (= lt!2507518 e!4216694)))

(declare-fun c!1303187 () Bool)

(assert (=> d!2186624 (= c!1303187 e!4216696)))

(declare-fun res!2862859 () Bool)

(assert (=> d!2186624 (=> (not res!2862859) (not e!4216696))))

(assert (=> d!2186624 (= res!2862859 (is-Cons!67443 (toList!10700 lt!2507401)))))

(assert (=> d!2186624 (exists!3198 (toList!10700 lt!2507401) lambda!409606)))

(assert (=> d!2186624 (= (getWitness!1293 (toList!10700 lt!2507401) lambda!409606) lt!2507518)))

(declare-fun b!7014758 () Bool)

(declare-fun contains!20435 (List!67567 Context!12672) Bool)

(assert (=> b!7014758 (= e!4216695 (contains!20435 (toList!10700 lt!2507401) lt!2507518))))

(assert (= (and d!2186624 res!2862859) b!7014755))

(assert (= (and d!2186624 c!1303187) b!7014759))

(assert (= (and d!2186624 (not c!1303187)) b!7014756))

(assert (= (and b!7014756 c!1303186) b!7014754))

(assert (= (and b!7014756 (not c!1303186)) b!7014757))

(assert (= (and d!2186624 res!2862858) b!7014758))

(declare-fun b_lambda!264657 () Bool)

(assert (=> (not b_lambda!264657) (not b!7014755)))

(declare-fun b_lambda!264659 () Bool)

(assert (=> (not b_lambda!264659) (not d!2186624)))

(assert (=> b!7014757 m!7713746))

(declare-fun m!7714112 () Bool)

(assert (=> b!7014757 m!7714112))

(declare-fun m!7714114 () Bool)

(assert (=> d!2186624 m!7714114))

(assert (=> d!2186624 m!7713746))

(declare-fun m!7714116 () Bool)

(assert (=> d!2186624 m!7714116))

(assert (=> b!7014758 m!7713746))

(declare-fun m!7714118 () Bool)

(assert (=> b!7014758 m!7714118))

(declare-fun m!7714120 () Bool)

(assert (=> b!7014754 m!7714120))

(declare-fun m!7714122 () Bool)

(assert (=> b!7014755 m!7714122))

(assert (=> d!2186540 d!2186624))

(assert (=> d!2186540 d!2186530))

(declare-fun d!2186626 () Bool)

(declare-fun lt!2507521 () Bool)

(assert (=> d!2186626 (= lt!2507521 (exists!3198 (toList!10700 lt!2507401) lambda!409606))))

(declare-fun choose!52799 ((Set Context!12672) Int) Bool)

(assert (=> d!2186626 (= lt!2507521 (choose!52799 lt!2507401 lambda!409606))))

(assert (=> d!2186626 (= (exists!3200 lt!2507401 lambda!409606) lt!2507521)))

(declare-fun bs!1866650 () Bool)

(assert (= bs!1866650 d!2186626))

(assert (=> bs!1866650 m!7713746))

(assert (=> bs!1866650 m!7713746))

(assert (=> bs!1866650 m!7714116))

(declare-fun m!7714124 () Bool)

(assert (=> bs!1866650 m!7714124))

(assert (=> d!2186540 d!2186626))

(declare-fun d!2186628 () Bool)

(declare-fun res!2862864 () Bool)

(declare-fun e!4216701 () Bool)

(assert (=> d!2186628 (=> res!2862864 e!4216701)))

(assert (=> d!2186628 (= res!2862864 (is-Nil!67441 (++!15355 lt!2507399 (exprs!6836 ct2!306))))))

(assert (=> d!2186628 (= (forall!16254 (++!15355 lt!2507399 (exprs!6836 ct2!306)) lambda!409608) e!4216701)))

(declare-fun b!7014764 () Bool)

(declare-fun e!4216702 () Bool)

(assert (=> b!7014764 (= e!4216701 e!4216702)))

(declare-fun res!2862865 () Bool)

(assert (=> b!7014764 (=> (not res!2862865) (not e!4216702))))

(declare-fun dynLambda!27151 (Int Regex!17340) Bool)

(assert (=> b!7014764 (= res!2862865 (dynLambda!27151 lambda!409608 (h!73889 (++!15355 lt!2507399 (exprs!6836 ct2!306)))))))

(declare-fun b!7014765 () Bool)

(assert (=> b!7014765 (= e!4216702 (forall!16254 (t!381320 (++!15355 lt!2507399 (exprs!6836 ct2!306))) lambda!409608))))

(assert (= (and d!2186628 (not res!2862864)) b!7014764))

(assert (= (and b!7014764 res!2862865) b!7014765))

(declare-fun b_lambda!264661 () Bool)

(assert (=> (not b_lambda!264661) (not b!7014764)))

(declare-fun m!7714126 () Bool)

(assert (=> b!7014764 m!7714126))

(declare-fun m!7714128 () Bool)

(assert (=> b!7014765 m!7714128))

(assert (=> d!2186570 d!2186628))

(assert (=> d!2186570 d!2186566))

(declare-fun d!2186630 () Bool)

(assert (=> d!2186630 (forall!16254 (++!15355 lt!2507399 (exprs!6836 ct2!306)) lambda!409608)))

(assert (=> d!2186630 true))

(declare-fun _$78!533 () Unit!161360)

(assert (=> d!2186630 (= (choose!52787 lt!2507399 (exprs!6836 ct2!306) lambda!409608) _$78!533)))

(declare-fun bs!1866651 () Bool)

(assert (= bs!1866651 d!2186630))

(assert (=> bs!1866651 m!7713782))

(assert (=> bs!1866651 m!7713782))

(assert (=> bs!1866651 m!7713986))

(assert (=> d!2186570 d!2186630))

(declare-fun d!2186632 () Bool)

(declare-fun res!2862866 () Bool)

(declare-fun e!4216703 () Bool)

(assert (=> d!2186632 (=> res!2862866 e!4216703)))

(assert (=> d!2186632 (= res!2862866 (is-Nil!67441 lt!2507399))))

(assert (=> d!2186632 (= (forall!16254 lt!2507399 lambda!409608) e!4216703)))

(declare-fun b!7014766 () Bool)

(declare-fun e!4216704 () Bool)

(assert (=> b!7014766 (= e!4216703 e!4216704)))

(declare-fun res!2862867 () Bool)

(assert (=> b!7014766 (=> (not res!2862867) (not e!4216704))))

(assert (=> b!7014766 (= res!2862867 (dynLambda!27151 lambda!409608 (h!73889 lt!2507399)))))

(declare-fun b!7014767 () Bool)

(assert (=> b!7014767 (= e!4216704 (forall!16254 (t!381320 lt!2507399) lambda!409608))))

(assert (= (and d!2186632 (not res!2862866)) b!7014766))

(assert (= (and b!7014766 res!2862867) b!7014767))

(declare-fun b_lambda!264663 () Bool)

(assert (=> (not b_lambda!264663) (not b!7014766)))

(declare-fun m!7714130 () Bool)

(assert (=> b!7014766 m!7714130))

(declare-fun m!7714132 () Bool)

(assert (=> b!7014767 m!7714132))

(assert (=> d!2186570 d!2186632))

(declare-fun d!2186634 () Bool)

(declare-fun res!2862868 () Bool)

(declare-fun e!4216705 () Bool)

(assert (=> d!2186634 (=> res!2862868 e!4216705)))

(assert (=> d!2186634 (= res!2862868 (is-Nil!67441 (exprs!6836 ct2!306)))))

(assert (=> d!2186634 (= (forall!16254 (exprs!6836 ct2!306) lambda!409651) e!4216705)))

(declare-fun b!7014768 () Bool)

(declare-fun e!4216706 () Bool)

(assert (=> b!7014768 (= e!4216705 e!4216706)))

(declare-fun res!2862869 () Bool)

(assert (=> b!7014768 (=> (not res!2862869) (not e!4216706))))

(assert (=> b!7014768 (= res!2862869 (dynLambda!27151 lambda!409651 (h!73889 (exprs!6836 ct2!306))))))

(declare-fun b!7014769 () Bool)

(assert (=> b!7014769 (= e!4216706 (forall!16254 (t!381320 (exprs!6836 ct2!306)) lambda!409651))))

(assert (= (and d!2186634 (not res!2862868)) b!7014768))

(assert (= (and b!7014768 res!2862869) b!7014769))

(declare-fun b_lambda!264665 () Bool)

(assert (=> (not b_lambda!264665) (not b!7014768)))

(declare-fun m!7714134 () Bool)

(assert (=> b!7014768 m!7714134))

(declare-fun m!7714136 () Bool)

(assert (=> b!7014769 m!7714136))

(assert (=> d!2186552 d!2186634))

(declare-fun d!2186636 () Bool)

(declare-fun c!1303188 () Bool)

(assert (=> d!2186636 (= c!1303188 (isEmpty!39389 (tail!13426 s!7408)))))

(declare-fun e!4216707 () Bool)

(assert (=> d!2186636 (= (matchZipper!2880 (derivationStepZipper!2820 lt!2507409 (head!14185 s!7408)) (tail!13426 s!7408)) e!4216707)))

(declare-fun b!7014770 () Bool)

(assert (=> b!7014770 (= e!4216707 (nullableZipper!2497 (derivationStepZipper!2820 lt!2507409 (head!14185 s!7408))))))

(declare-fun b!7014771 () Bool)

(assert (=> b!7014771 (= e!4216707 (matchZipper!2880 (derivationStepZipper!2820 (derivationStepZipper!2820 lt!2507409 (head!14185 s!7408)) (head!14185 (tail!13426 s!7408))) (tail!13426 (tail!13426 s!7408))))))

(assert (= (and d!2186636 c!1303188) b!7014770))

(assert (= (and d!2186636 (not c!1303188)) b!7014771))

(assert (=> d!2186636 m!7713884))

(declare-fun m!7714138 () Bool)

(assert (=> d!2186636 m!7714138))

(assert (=> b!7014770 m!7713882))

(declare-fun m!7714140 () Bool)

(assert (=> b!7014770 m!7714140))

(assert (=> b!7014771 m!7713884))

(declare-fun m!7714142 () Bool)

(assert (=> b!7014771 m!7714142))

(assert (=> b!7014771 m!7713882))

(assert (=> b!7014771 m!7714142))

(declare-fun m!7714144 () Bool)

(assert (=> b!7014771 m!7714144))

(assert (=> b!7014771 m!7713884))

(declare-fun m!7714146 () Bool)

(assert (=> b!7014771 m!7714146))

(assert (=> b!7014771 m!7714144))

(assert (=> b!7014771 m!7714146))

(declare-fun m!7714148 () Bool)

(assert (=> b!7014771 m!7714148))

(assert (=> b!7014547 d!2186636))

(declare-fun bs!1866652 () Bool)

(declare-fun d!2186638 () Bool)

(assert (= bs!1866652 (and d!2186638 b!7014458)))

(declare-fun lambda!409668 () Int)

(assert (=> bs!1866652 (= (= (head!14185 s!7408) (h!73890 s!7408)) (= lambda!409668 lambda!409609))))

(declare-fun bs!1866653 () Bool)

(assert (= bs!1866653 (and d!2186638 d!2186528)))

(assert (=> bs!1866653 (= (= (head!14185 s!7408) (h!73890 s!7408)) (= lambda!409668 lambda!409634))))

(assert (=> d!2186638 true))

(assert (=> d!2186638 (= (derivationStepZipper!2820 lt!2507409 (head!14185 s!7408)) (flatMap!2326 lt!2507409 lambda!409668))))

(declare-fun bs!1866654 () Bool)

(assert (= bs!1866654 d!2186638))

(declare-fun m!7714150 () Bool)

(assert (=> bs!1866654 m!7714150))

(assert (=> b!7014547 d!2186638))

(declare-fun d!2186640 () Bool)

(assert (=> d!2186640 (= (head!14185 s!7408) (h!73890 s!7408))))

(assert (=> b!7014547 d!2186640))

(declare-fun d!2186642 () Bool)

(assert (=> d!2186642 (= (tail!13426 s!7408) (t!381321 s!7408))))

(assert (=> b!7014547 d!2186642))

(assert (=> d!2186532 d!2186622))

(declare-fun d!2186644 () Bool)

(declare-fun res!2862870 () Bool)

(declare-fun e!4216708 () Bool)

(assert (=> d!2186644 (=> res!2862870 e!4216708)))

(assert (=> d!2186644 (= res!2862870 (is-Nil!67441 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306))))))

(assert (=> d!2186644 (= (forall!16254 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306)) lambda!409608) e!4216708)))

(declare-fun b!7014772 () Bool)

(declare-fun e!4216709 () Bool)

(assert (=> b!7014772 (= e!4216708 e!4216709)))

(declare-fun res!2862871 () Bool)

(assert (=> b!7014772 (=> (not res!2862871) (not e!4216709))))

(assert (=> b!7014772 (= res!2862871 (dynLambda!27151 lambda!409608 (h!73889 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306)))))))

(declare-fun b!7014773 () Bool)

(assert (=> b!7014773 (= e!4216709 (forall!16254 (t!381320 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306))) lambda!409608))))

(assert (= (and d!2186644 (not res!2862870)) b!7014772))

(assert (= (and b!7014772 res!2862871) b!7014773))

(declare-fun b_lambda!264667 () Bool)

(assert (=> (not b_lambda!264667) (not b!7014772)))

(declare-fun m!7714152 () Bool)

(assert (=> b!7014772 m!7714152))

(declare-fun m!7714154 () Bool)

(assert (=> b!7014773 m!7714154))

(assert (=> d!2186524 d!2186644))

(assert (=> d!2186524 d!2186554))

(declare-fun d!2186646 () Bool)

(assert (=> d!2186646 (forall!16254 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306)) lambda!409608)))

(assert (=> d!2186646 true))

(declare-fun _$78!534 () Unit!161360)

(assert (=> d!2186646 (= (choose!52787 (exprs!6836 lt!2507403) (exprs!6836 ct2!306) lambda!409608) _$78!534)))

(declare-fun bs!1866655 () Bool)

(assert (= bs!1866655 d!2186646))

(assert (=> bs!1866655 m!7713762))

(assert (=> bs!1866655 m!7713762))

(assert (=> bs!1866655 m!7713858))

(assert (=> d!2186524 d!2186646))

(declare-fun d!2186648 () Bool)

(declare-fun res!2862872 () Bool)

(declare-fun e!4216710 () Bool)

(assert (=> d!2186648 (=> res!2862872 e!4216710)))

(assert (=> d!2186648 (= res!2862872 (is-Nil!67441 (exprs!6836 lt!2507403)))))

(assert (=> d!2186648 (= (forall!16254 (exprs!6836 lt!2507403) lambda!409608) e!4216710)))

(declare-fun b!7014774 () Bool)

(declare-fun e!4216711 () Bool)

(assert (=> b!7014774 (= e!4216710 e!4216711)))

(declare-fun res!2862873 () Bool)

(assert (=> b!7014774 (=> (not res!2862873) (not e!4216711))))

(assert (=> b!7014774 (= res!2862873 (dynLambda!27151 lambda!409608 (h!73889 (exprs!6836 lt!2507403))))))

(declare-fun b!7014775 () Bool)

(assert (=> b!7014775 (= e!4216711 (forall!16254 (t!381320 (exprs!6836 lt!2507403)) lambda!409608))))

(assert (= (and d!2186648 (not res!2862872)) b!7014774))

(assert (= (and b!7014774 res!2862873) b!7014775))

(declare-fun b_lambda!264669 () Bool)

(assert (=> (not b_lambda!264669) (not b!7014774)))

(declare-fun m!7714156 () Bool)

(assert (=> b!7014774 m!7714156))

(declare-fun m!7714158 () Bool)

(assert (=> b!7014775 m!7714158))

(assert (=> d!2186524 d!2186648))

(declare-fun c!1303203 () Bool)

(declare-fun bm!637092 () Bool)

(declare-fun c!1303199 () Bool)

(declare-fun call!637098 () (Set Context!12672))

(declare-fun c!1303200 () Bool)

(declare-fun call!637100 () List!67565)

(assert (=> bm!637092 (= call!637098 (derivationStepZipperDown!2058 (ite c!1303203 (regOne!35193 (h!73889 (exprs!6836 lt!2507404))) (ite c!1303200 (regTwo!35192 (h!73889 (exprs!6836 lt!2507404))) (ite c!1303199 (regOne!35192 (h!73889 (exprs!6836 lt!2507404))) (reg!17669 (h!73889 (exprs!6836 lt!2507404)))))) (ite (or c!1303203 c!1303200) (Context!12673 (t!381320 (exprs!6836 lt!2507404))) (Context!12673 call!637100)) (h!73890 s!7408)))))

(declare-fun b!7014798 () Bool)

(declare-fun e!4216727 () (Set Context!12672))

(declare-fun e!4216729 () (Set Context!12672))

(assert (=> b!7014798 (= e!4216727 e!4216729)))

(assert (=> b!7014798 (= c!1303199 (is-Concat!26185 (h!73889 (exprs!6836 lt!2507404))))))

(declare-fun b!7014799 () Bool)

(declare-fun call!637097 () (Set Context!12672))

(declare-fun call!637102 () (Set Context!12672))

(assert (=> b!7014799 (= e!4216727 (set.union call!637097 call!637102))))

(declare-fun bm!637093 () Bool)

(declare-fun call!637101 () List!67565)

(assert (=> bm!637093 (= call!637097 (derivationStepZipperDown!2058 (ite c!1303203 (regTwo!35193 (h!73889 (exprs!6836 lt!2507404))) (regOne!35192 (h!73889 (exprs!6836 lt!2507404)))) (ite c!1303203 (Context!12673 (t!381320 (exprs!6836 lt!2507404))) (Context!12673 call!637101)) (h!73890 s!7408)))))

(declare-fun bm!637094 () Bool)

(declare-fun call!637099 () (Set Context!12672))

(assert (=> bm!637094 (= call!637099 call!637102)))

(declare-fun bm!637096 () Bool)

(assert (=> bm!637096 (= call!637102 call!637098)))

(declare-fun b!7014800 () Bool)

(declare-fun e!4216724 () Bool)

(assert (=> b!7014800 (= e!4216724 (nullable!7100 (regOne!35192 (h!73889 (exprs!6836 lt!2507404)))))))

(declare-fun b!7014801 () Bool)

(declare-fun e!4216728 () (Set Context!12672))

(assert (=> b!7014801 (= e!4216728 (set.union call!637098 call!637097))))

(declare-fun b!7014802 () Bool)

(declare-fun e!4216725 () (Set Context!12672))

(assert (=> b!7014802 (= e!4216725 (as set.empty (Set Context!12672)))))

(declare-fun b!7014803 () Bool)

(assert (=> b!7014803 (= c!1303200 e!4216724)))

(declare-fun res!2862876 () Bool)

(assert (=> b!7014803 (=> (not res!2862876) (not e!4216724))))

(assert (=> b!7014803 (= res!2862876 (is-Concat!26185 (h!73889 (exprs!6836 lt!2507404))))))

(assert (=> b!7014803 (= e!4216728 e!4216727)))

(declare-fun b!7014804 () Bool)

(declare-fun c!1303202 () Bool)

(assert (=> b!7014804 (= c!1303202 (is-Star!17340 (h!73889 (exprs!6836 lt!2507404))))))

(assert (=> b!7014804 (= e!4216729 e!4216725)))

(declare-fun b!7014805 () Bool)

(declare-fun e!4216726 () (Set Context!12672))

(assert (=> b!7014805 (= e!4216726 (set.insert (Context!12673 (t!381320 (exprs!6836 lt!2507404))) (as set.empty (Set Context!12672))))))

(declare-fun b!7014806 () Bool)

(assert (=> b!7014806 (= e!4216726 e!4216728)))

(assert (=> b!7014806 (= c!1303203 (is-Union!17340 (h!73889 (exprs!6836 lt!2507404))))))

(declare-fun b!7014807 () Bool)

(assert (=> b!7014807 (= e!4216725 call!637099)))

(declare-fun bm!637095 () Bool)

(declare-fun $colon$colon!2537 (List!67565 Regex!17340) List!67565)

(assert (=> bm!637095 (= call!637101 ($colon$colon!2537 (exprs!6836 (Context!12673 (t!381320 (exprs!6836 lt!2507404)))) (ite (or c!1303200 c!1303199) (regTwo!35192 (h!73889 (exprs!6836 lt!2507404))) (h!73889 (exprs!6836 lt!2507404)))))))

(declare-fun d!2186650 () Bool)

(declare-fun c!1303201 () Bool)

(assert (=> d!2186650 (= c!1303201 (and (is-ElementMatch!17340 (h!73889 (exprs!6836 lt!2507404))) (= (c!1303119 (h!73889 (exprs!6836 lt!2507404))) (h!73890 s!7408))))))

(assert (=> d!2186650 (= (derivationStepZipperDown!2058 (h!73889 (exprs!6836 lt!2507404)) (Context!12673 (t!381320 (exprs!6836 lt!2507404))) (h!73890 s!7408)) e!4216726)))

(declare-fun b!7014808 () Bool)

(assert (=> b!7014808 (= e!4216729 call!637099)))

(declare-fun bm!637097 () Bool)

(assert (=> bm!637097 (= call!637100 call!637101)))

(assert (= (and d!2186650 c!1303201) b!7014805))

(assert (= (and d!2186650 (not c!1303201)) b!7014806))

(assert (= (and b!7014806 c!1303203) b!7014801))

(assert (= (and b!7014806 (not c!1303203)) b!7014803))

(assert (= (and b!7014803 res!2862876) b!7014800))

(assert (= (and b!7014803 c!1303200) b!7014799))

(assert (= (and b!7014803 (not c!1303200)) b!7014798))

(assert (= (and b!7014798 c!1303199) b!7014808))

(assert (= (and b!7014798 (not c!1303199)) b!7014804))

(assert (= (and b!7014804 c!1303202) b!7014807))

(assert (= (and b!7014804 (not c!1303202)) b!7014802))

(assert (= (or b!7014808 b!7014807) bm!637097))

(assert (= (or b!7014808 b!7014807) bm!637094))

(assert (= (or b!7014799 bm!637094) bm!637096))

(assert (= (or b!7014799 bm!637097) bm!637095))

(assert (= (or b!7014801 bm!637096) bm!637092))

(assert (= (or b!7014801 b!7014799) bm!637093))

(declare-fun m!7714160 () Bool)

(assert (=> bm!637095 m!7714160))

(declare-fun m!7714162 () Bool)

(assert (=> bm!637092 m!7714162))

(declare-fun m!7714164 () Bool)

(assert (=> b!7014800 m!7714164))

(declare-fun m!7714166 () Bool)

(assert (=> bm!637093 m!7714166))

(declare-fun m!7714168 () Bool)

(assert (=> b!7014805 m!7714168))

(assert (=> bm!637052 d!2186650))

(declare-fun bs!1866656 () Bool)

(declare-fun d!2186652 () Bool)

(assert (= bs!1866656 (and d!2186652 b!7014463)))

(declare-fun lambda!409669 () Int)

(assert (=> bs!1866656 (not (= lambda!409669 lambda!409606))))

(declare-fun bs!1866657 () Bool)

(assert (= bs!1866657 (and d!2186652 d!2186536)))

(assert (=> bs!1866657 (= (= lambda!409640 lambda!409606) (= lambda!409669 lambda!409637))))

(declare-fun bs!1866658 () Bool)

(assert (= bs!1866658 (and d!2186652 d!2186542)))

(assert (=> bs!1866658 (not (= lambda!409669 lambda!409640))))

(assert (=> d!2186652 true))

(assert (=> d!2186652 (< (dynLambda!27144 order!28053 lambda!409640) (dynLambda!27144 order!28053 lambda!409669))))

(assert (=> d!2186652 (= (exists!3198 lt!2507410 lambda!409640) (not (forall!16255 lt!2507410 lambda!409669)))))

(declare-fun bs!1866659 () Bool)

(assert (= bs!1866659 d!2186652))

(declare-fun m!7714170 () Bool)

(assert (=> bs!1866659 m!7714170))

(assert (=> d!2186542 d!2186652))

(declare-fun bs!1866660 () Bool)

(declare-fun d!2186654 () Bool)

(assert (= bs!1866660 (and d!2186654 b!7014463)))

(declare-fun lambda!409672 () Int)

(assert (=> bs!1866660 (= lambda!409672 lambda!409606)))

(declare-fun bs!1866661 () Bool)

(assert (= bs!1866661 (and d!2186654 d!2186536)))

(assert (=> bs!1866661 (not (= lambda!409672 lambda!409637))))

(declare-fun bs!1866662 () Bool)

(assert (= bs!1866662 (and d!2186654 d!2186542)))

(assert (=> bs!1866662 (= lambda!409672 lambda!409640)))

(declare-fun bs!1866663 () Bool)

(assert (= bs!1866663 (and d!2186654 d!2186652)))

(assert (=> bs!1866663 (not (= lambda!409672 lambda!409669))))

(assert (=> d!2186654 true))

(assert (=> d!2186654 (exists!3198 lt!2507410 lambda!409672)))

(assert (=> d!2186654 true))

(declare-fun _$60!1087 () Unit!161360)

(assert (=> d!2186654 (= (choose!52790 lt!2507410 s!7408) _$60!1087)))

(declare-fun bs!1866664 () Bool)

(assert (= bs!1866664 d!2186654))

(declare-fun m!7714172 () Bool)

(assert (=> bs!1866664 m!7714172))

(assert (=> d!2186542 d!2186654))

(declare-fun d!2186656 () Bool)

(declare-fun c!1303206 () Bool)

(assert (=> d!2186656 (= c!1303206 (isEmpty!39389 s!7408))))

(declare-fun e!4216730 () Bool)

(assert (=> d!2186656 (= (matchZipper!2880 (content!13401 lt!2507410) s!7408) e!4216730)))

(declare-fun b!7014809 () Bool)

(assert (=> b!7014809 (= e!4216730 (nullableZipper!2497 (content!13401 lt!2507410)))))

(declare-fun b!7014810 () Bool)

(assert (=> b!7014810 (= e!4216730 (matchZipper!2880 (derivationStepZipper!2820 (content!13401 lt!2507410) (head!14185 s!7408)) (tail!13426 s!7408)))))

(assert (= (and d!2186656 c!1303206) b!7014809))

(assert (= (and d!2186656 (not c!1303206)) b!7014810))

(assert (=> d!2186656 m!7713876))

(assert (=> b!7014809 m!7713914))

(declare-fun m!7714174 () Bool)

(assert (=> b!7014809 m!7714174))

(assert (=> b!7014810 m!7713880))

(assert (=> b!7014810 m!7713914))

(assert (=> b!7014810 m!7713880))

(declare-fun m!7714176 () Bool)

(assert (=> b!7014810 m!7714176))

(assert (=> b!7014810 m!7713884))

(assert (=> b!7014810 m!7714176))

(assert (=> b!7014810 m!7713884))

(declare-fun m!7714178 () Bool)

(assert (=> b!7014810 m!7714178))

(assert (=> d!2186542 d!2186656))

(declare-fun d!2186658 () Bool)

(declare-fun c!1303209 () Bool)

(assert (=> d!2186658 (= c!1303209 (is-Nil!67443 lt!2507410))))

(declare-fun e!4216733 () (Set Context!12672))

(assert (=> d!2186658 (= (content!13401 lt!2507410) e!4216733)))

(declare-fun b!7014815 () Bool)

(assert (=> b!7014815 (= e!4216733 (as set.empty (Set Context!12672)))))

(declare-fun b!7014816 () Bool)

(assert (=> b!7014816 (= e!4216733 (set.union (set.insert (h!73891 lt!2507410) (as set.empty (Set Context!12672))) (content!13401 (t!381322 lt!2507410))))))

(assert (= (and d!2186658 c!1303209) b!7014815))

(assert (= (and d!2186658 (not c!1303209)) b!7014816))

(declare-fun m!7714180 () Bool)

(assert (=> b!7014816 m!7714180))

(declare-fun m!7714182 () Bool)

(assert (=> b!7014816 m!7714182))

(assert (=> d!2186542 d!2186658))

(declare-fun d!2186660 () Bool)

(declare-fun c!1303210 () Bool)

(assert (=> d!2186660 (= c!1303210 (isEmpty!39389 s!7408))))

(declare-fun e!4216734 () Bool)

(assert (=> d!2186660 (= (matchZipper!2880 (set.insert lt!2507472 (as set.empty (Set Context!12672))) s!7408) e!4216734)))

(declare-fun b!7014817 () Bool)

(assert (=> b!7014817 (= e!4216734 (nullableZipper!2497 (set.insert lt!2507472 (as set.empty (Set Context!12672)))))))

(declare-fun b!7014818 () Bool)

(assert (=> b!7014818 (= e!4216734 (matchZipper!2880 (derivationStepZipper!2820 (set.insert lt!2507472 (as set.empty (Set Context!12672))) (head!14185 s!7408)) (tail!13426 s!7408)))))

(assert (= (and d!2186660 c!1303210) b!7014817))

(assert (= (and d!2186660 (not c!1303210)) b!7014818))

(assert (=> d!2186660 m!7713876))

(assert (=> b!7014817 m!7713994))

(declare-fun m!7714184 () Bool)

(assert (=> b!7014817 m!7714184))

(assert (=> b!7014818 m!7713880))

(assert (=> b!7014818 m!7713994))

(assert (=> b!7014818 m!7713880))

(declare-fun m!7714186 () Bool)

(assert (=> b!7014818 m!7714186))

(assert (=> b!7014818 m!7713884))

(assert (=> b!7014818 m!7714186))

(assert (=> b!7014818 m!7713884))

(declare-fun m!7714188 () Bool)

(assert (=> b!7014818 m!7714188))

(assert (=> bs!1866629 d!2186660))

(declare-fun d!2186662 () Bool)

(declare-fun lt!2507524 () Int)

(assert (=> d!2186662 (>= lt!2507524 0)))

(declare-fun e!4216737 () Int)

(assert (=> d!2186662 (= lt!2507524 e!4216737)))

(declare-fun c!1303213 () Bool)

(assert (=> d!2186662 (= c!1303213 (is-Nil!67441 lt!2507483))))

(assert (=> d!2186662 (= (size!40989 lt!2507483) lt!2507524)))

(declare-fun b!7014823 () Bool)

(assert (=> b!7014823 (= e!4216737 0)))

(declare-fun b!7014824 () Bool)

(assert (=> b!7014824 (= e!4216737 (+ 1 (size!40989 (t!381320 lt!2507483))))))

(assert (= (and d!2186662 c!1303213) b!7014823))

(assert (= (and d!2186662 (not c!1303213)) b!7014824))

(declare-fun m!7714190 () Bool)

(assert (=> b!7014824 m!7714190))

(assert (=> b!7014576 d!2186662))

(declare-fun d!2186664 () Bool)

(declare-fun lt!2507525 () Int)

(assert (=> d!2186664 (>= lt!2507525 0)))

(declare-fun e!4216738 () Int)

(assert (=> d!2186664 (= lt!2507525 e!4216738)))

(declare-fun c!1303214 () Bool)

(assert (=> d!2186664 (= c!1303214 (is-Nil!67441 (exprs!6836 lt!2507403)))))

(assert (=> d!2186664 (= (size!40989 (exprs!6836 lt!2507403)) lt!2507525)))

(declare-fun b!7014825 () Bool)

(assert (=> b!7014825 (= e!4216738 0)))

(declare-fun b!7014826 () Bool)

(assert (=> b!7014826 (= e!4216738 (+ 1 (size!40989 (t!381320 (exprs!6836 lt!2507403)))))))

(assert (= (and d!2186664 c!1303214) b!7014825))

(assert (= (and d!2186664 (not c!1303214)) b!7014826))

(declare-fun m!7714192 () Bool)

(assert (=> b!7014826 m!7714192))

(assert (=> b!7014576 d!2186664))

(declare-fun d!2186666 () Bool)

(declare-fun lt!2507526 () Int)

(assert (=> d!2186666 (>= lt!2507526 0)))

(declare-fun e!4216739 () Int)

(assert (=> d!2186666 (= lt!2507526 e!4216739)))

(declare-fun c!1303215 () Bool)

(assert (=> d!2186666 (= c!1303215 (is-Nil!67441 (exprs!6836 ct2!306)))))

(assert (=> d!2186666 (= (size!40989 (exprs!6836 ct2!306)) lt!2507526)))

(declare-fun b!7014827 () Bool)

(assert (=> b!7014827 (= e!4216739 0)))

(declare-fun b!7014828 () Bool)

(assert (=> b!7014828 (= e!4216739 (+ 1 (size!40989 (t!381320 (exprs!6836 ct2!306)))))))

(assert (= (and d!2186666 c!1303215) b!7014827))

(assert (= (and d!2186666 (not c!1303215)) b!7014828))

(declare-fun m!7714194 () Bool)

(assert (=> b!7014828 m!7714194))

(assert (=> b!7014576 d!2186666))

(declare-fun b!7014831 () Bool)

(declare-fun res!2862878 () Bool)

(declare-fun e!4216741 () Bool)

(assert (=> b!7014831 (=> (not res!2862878) (not e!4216741))))

(declare-fun lt!2507527 () List!67565)

(assert (=> b!7014831 (= res!2862878 (= (size!40989 lt!2507527) (+ (size!40989 (t!381320 (exprs!6836 lt!2507403))) (size!40989 (exprs!6836 ct2!306)))))))

(declare-fun d!2186668 () Bool)

(assert (=> d!2186668 e!4216741))

(declare-fun res!2862877 () Bool)

(assert (=> d!2186668 (=> (not res!2862877) (not e!4216741))))

(assert (=> d!2186668 (= res!2862877 (= (content!13402 lt!2507527) (set.union (content!13402 (t!381320 (exprs!6836 lt!2507403))) (content!13402 (exprs!6836 ct2!306)))))))

(declare-fun e!4216740 () List!67565)

(assert (=> d!2186668 (= lt!2507527 e!4216740)))

(declare-fun c!1303216 () Bool)

(assert (=> d!2186668 (= c!1303216 (is-Nil!67441 (t!381320 (exprs!6836 lt!2507403))))))

(assert (=> d!2186668 (= (++!15355 (t!381320 (exprs!6836 lt!2507403)) (exprs!6836 ct2!306)) lt!2507527)))

(declare-fun b!7014832 () Bool)

(assert (=> b!7014832 (= e!4216741 (or (not (= (exprs!6836 ct2!306) Nil!67441)) (= lt!2507527 (t!381320 (exprs!6836 lt!2507403)))))))

(declare-fun b!7014829 () Bool)

(assert (=> b!7014829 (= e!4216740 (exprs!6836 ct2!306))))

(declare-fun b!7014830 () Bool)

(assert (=> b!7014830 (= e!4216740 (Cons!67441 (h!73889 (t!381320 (exprs!6836 lt!2507403))) (++!15355 (t!381320 (t!381320 (exprs!6836 lt!2507403))) (exprs!6836 ct2!306))))))

(assert (= (and d!2186668 c!1303216) b!7014829))

(assert (= (and d!2186668 (not c!1303216)) b!7014830))

(assert (= (and d!2186668 res!2862877) b!7014831))

(assert (= (and b!7014831 res!2862878) b!7014832))

(declare-fun m!7714196 () Bool)

(assert (=> b!7014831 m!7714196))

(assert (=> b!7014831 m!7714192))

(assert (=> b!7014831 m!7713940))

(declare-fun m!7714198 () Bool)

(assert (=> d!2186668 m!7714198))

(declare-fun m!7714200 () Bool)

(assert (=> d!2186668 m!7714200))

(assert (=> d!2186668 m!7713946))

(declare-fun m!7714202 () Bool)

(assert (=> b!7014830 m!7714202))

(assert (=> b!7014575 d!2186668))

(declare-fun b!7014833 () Bool)

(declare-fun call!637103 () (Set Context!12672))

(declare-fun e!4216744 () (Set Context!12672))

(assert (=> b!7014833 (= e!4216744 (set.union call!637103 (derivationStepZipperUp!1990 (Context!12673 (t!381320 (exprs!6836 (Context!12673 (t!381320 (exprs!6836 lt!2507404)))))) (h!73890 s!7408))))))

(declare-fun b!7014834 () Bool)

(declare-fun e!4216742 () (Set Context!12672))

(assert (=> b!7014834 (= e!4216742 (as set.empty (Set Context!12672)))))

(declare-fun b!7014835 () Bool)

(assert (=> b!7014835 (= e!4216742 call!637103)))

(declare-fun bm!637098 () Bool)

(assert (=> bm!637098 (= call!637103 (derivationStepZipperDown!2058 (h!73889 (exprs!6836 (Context!12673 (t!381320 (exprs!6836 lt!2507404))))) (Context!12673 (t!381320 (exprs!6836 (Context!12673 (t!381320 (exprs!6836 lt!2507404)))))) (h!73890 s!7408)))))

(declare-fun b!7014836 () Bool)

(assert (=> b!7014836 (= e!4216744 e!4216742)))

(declare-fun c!1303218 () Bool)

(assert (=> b!7014836 (= c!1303218 (is-Cons!67441 (exprs!6836 (Context!12673 (t!381320 (exprs!6836 lt!2507404))))))))

(declare-fun b!7014837 () Bool)

(declare-fun e!4216743 () Bool)

(assert (=> b!7014837 (= e!4216743 (nullable!7100 (h!73889 (exprs!6836 (Context!12673 (t!381320 (exprs!6836 lt!2507404)))))))))

(declare-fun d!2186670 () Bool)

(declare-fun c!1303217 () Bool)

(assert (=> d!2186670 (= c!1303217 e!4216743)))

(declare-fun res!2862879 () Bool)

(assert (=> d!2186670 (=> (not res!2862879) (not e!4216743))))

(assert (=> d!2186670 (= res!2862879 (is-Cons!67441 (exprs!6836 (Context!12673 (t!381320 (exprs!6836 lt!2507404))))))))

(assert (=> d!2186670 (= (derivationStepZipperUp!1990 (Context!12673 (t!381320 (exprs!6836 lt!2507404))) (h!73890 s!7408)) e!4216744)))

(assert (= (and d!2186670 res!2862879) b!7014837))

(assert (= (and d!2186670 c!1303217) b!7014833))

(assert (= (and d!2186670 (not c!1303217)) b!7014836))

(assert (= (and b!7014836 c!1303218) b!7014835))

(assert (= (and b!7014836 (not c!1303218)) b!7014834))

(assert (= (or b!7014833 b!7014835) bm!637098))

(declare-fun m!7714204 () Bool)

(assert (=> b!7014833 m!7714204))

(declare-fun m!7714206 () Bool)

(assert (=> bm!637098 m!7714206))

(declare-fun m!7714208 () Bool)

(assert (=> b!7014837 m!7714208))

(assert (=> b!7014532 d!2186670))

(declare-fun d!2186672 () Bool)

(declare-fun c!1303219 () Bool)

(assert (=> d!2186672 (= c!1303219 (isEmpty!39389 (tail!13426 s!7408)))))

(declare-fun e!4216745 () Bool)

(assert (=> d!2186672 (= (matchZipper!2880 (derivationStepZipper!2820 lt!2507401 (head!14185 s!7408)) (tail!13426 s!7408)) e!4216745)))

(declare-fun b!7014838 () Bool)

(assert (=> b!7014838 (= e!4216745 (nullableZipper!2497 (derivationStepZipper!2820 lt!2507401 (head!14185 s!7408))))))

(declare-fun b!7014839 () Bool)

(assert (=> b!7014839 (= e!4216745 (matchZipper!2880 (derivationStepZipper!2820 (derivationStepZipper!2820 lt!2507401 (head!14185 s!7408)) (head!14185 (tail!13426 s!7408))) (tail!13426 (tail!13426 s!7408))))))

(assert (= (and d!2186672 c!1303219) b!7014838))

(assert (= (and d!2186672 (not c!1303219)) b!7014839))

(assert (=> d!2186672 m!7713884))

(assert (=> d!2186672 m!7714138))

(assert (=> b!7014838 m!7713920))

(declare-fun m!7714210 () Bool)

(assert (=> b!7014838 m!7714210))

(assert (=> b!7014839 m!7713884))

(assert (=> b!7014839 m!7714142))

(assert (=> b!7014839 m!7713920))

(assert (=> b!7014839 m!7714142))

(declare-fun m!7714212 () Bool)

(assert (=> b!7014839 m!7714212))

(assert (=> b!7014839 m!7713884))

(assert (=> b!7014839 m!7714146))

(assert (=> b!7014839 m!7714212))

(assert (=> b!7014839 m!7714146))

(declare-fun m!7714214 () Bool)

(assert (=> b!7014839 m!7714214))

(assert (=> b!7014560 d!2186672))

(declare-fun bs!1866665 () Bool)

(declare-fun d!2186674 () Bool)

(assert (= bs!1866665 (and d!2186674 b!7014458)))

(declare-fun lambda!409673 () Int)

(assert (=> bs!1866665 (= (= (head!14185 s!7408) (h!73890 s!7408)) (= lambda!409673 lambda!409609))))

(declare-fun bs!1866666 () Bool)

(assert (= bs!1866666 (and d!2186674 d!2186528)))

(assert (=> bs!1866666 (= (= (head!14185 s!7408) (h!73890 s!7408)) (= lambda!409673 lambda!409634))))

(declare-fun bs!1866667 () Bool)

(assert (= bs!1866667 (and d!2186674 d!2186638)))

(assert (=> bs!1866667 (= lambda!409673 lambda!409668)))

(assert (=> d!2186674 true))

(assert (=> d!2186674 (= (derivationStepZipper!2820 lt!2507401 (head!14185 s!7408)) (flatMap!2326 lt!2507401 lambda!409673))))

(declare-fun bs!1866668 () Bool)

(assert (= bs!1866668 d!2186674))

(declare-fun m!7714216 () Bool)

(assert (=> bs!1866668 m!7714216))

(assert (=> b!7014560 d!2186674))

(assert (=> b!7014560 d!2186640))

(assert (=> b!7014560 d!2186642))

(declare-fun bs!1866669 () Bool)

(declare-fun d!2186676 () Bool)

(assert (= bs!1866669 (and d!2186676 d!2186652)))

(declare-fun lambda!409676 () Int)

(assert (=> bs!1866669 (not (= lambda!409676 lambda!409669))))

(declare-fun bs!1866670 () Bool)

(assert (= bs!1866670 (and d!2186676 b!7014463)))

(assert (=> bs!1866670 (not (= lambda!409676 lambda!409606))))

(declare-fun bs!1866671 () Bool)

(assert (= bs!1866671 (and d!2186676 d!2186536)))

(assert (=> bs!1866671 (not (= lambda!409676 lambda!409637))))

(declare-fun bs!1866672 () Bool)

(assert (= bs!1866672 (and d!2186676 d!2186654)))

(assert (=> bs!1866672 (not (= lambda!409676 lambda!409672))))

(declare-fun bs!1866673 () Bool)

(assert (= bs!1866673 (and d!2186676 d!2186542)))

(assert (=> bs!1866673 (not (= lambda!409676 lambda!409640))))

(assert (=> d!2186676 (= (nullableZipper!2497 lt!2507401) (exists!3200 lt!2507401 lambda!409676))))

(declare-fun bs!1866674 () Bool)

(assert (= bs!1866674 d!2186676))

(declare-fun m!7714218 () Bool)

(assert (=> bs!1866674 m!7714218))

(assert (=> b!7014559 d!2186676))

(declare-fun b!7014840 () Bool)

(declare-fun e!4216751 () Bool)

(declare-fun call!637106 () Bool)

(assert (=> b!7014840 (= e!4216751 call!637106)))

(declare-fun b!7014841 () Bool)

(declare-fun e!4216752 () Bool)

(declare-fun e!4216748 () Bool)

(assert (=> b!7014841 (= e!4216752 e!4216748)))

(declare-fun c!1303223 () Bool)

(assert (=> b!7014841 (= c!1303223 (is-Union!17340 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))))))

(declare-fun b!7014842 () Bool)

(declare-fun res!2862884 () Bool)

(declare-fun e!4216746 () Bool)

(assert (=> b!7014842 (=> res!2862884 e!4216746)))

(assert (=> b!7014842 (= res!2862884 (not (is-Concat!26185 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403))))))))))

(assert (=> b!7014842 (= e!4216748 e!4216746)))

(declare-fun c!1303222 () Bool)

(declare-fun bm!637099 () Bool)

(assert (=> bm!637099 (= call!637106 (validRegex!8899 (ite c!1303222 (reg!17669 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))) (ite c!1303223 (regTwo!35193 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))) (regTwo!35192 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403))))))))))))

(declare-fun bm!637100 () Bool)

(declare-fun call!637104 () Bool)

(assert (=> bm!637100 (= call!637104 (validRegex!8899 (ite c!1303223 (regOne!35193 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))) (regOne!35192 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))))))))

(declare-fun b!7014843 () Bool)

(declare-fun e!4216750 () Bool)

(assert (=> b!7014843 (= e!4216746 e!4216750)))

(declare-fun res!2862883 () Bool)

(assert (=> b!7014843 (=> (not res!2862883) (not e!4216750))))

(assert (=> b!7014843 (= res!2862883 call!637104)))

(declare-fun b!7014844 () Bool)

(assert (=> b!7014844 (= e!4216752 e!4216751)))

(declare-fun res!2862882 () Bool)

(assert (=> b!7014844 (= res!2862882 (not (nullable!7100 (reg!17669 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))))))))

(assert (=> b!7014844 (=> (not res!2862882) (not e!4216751))))

(declare-fun b!7014845 () Bool)

(declare-fun e!4216747 () Bool)

(declare-fun call!637105 () Bool)

(assert (=> b!7014845 (= e!4216747 call!637105)))

(declare-fun d!2186678 () Bool)

(declare-fun res!2862881 () Bool)

(declare-fun e!4216749 () Bool)

(assert (=> d!2186678 (=> res!2862881 e!4216749)))

(assert (=> d!2186678 (= res!2862881 (is-ElementMatch!17340 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))))))

(assert (=> d!2186678 (= (validRegex!8899 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))) e!4216749)))

(declare-fun b!7014846 () Bool)

(assert (=> b!7014846 (= e!4216749 e!4216752)))

(assert (=> b!7014846 (= c!1303222 (is-Star!17340 (ite c!1303156 (reg!17669 (h!73889 (exprs!6836 lt!2507403))) (ite c!1303157 (regTwo!35193 (h!73889 (exprs!6836 lt!2507403))) (regTwo!35192 (h!73889 (exprs!6836 lt!2507403)))))))))

(declare-fun bm!637101 () Bool)

(assert (=> bm!637101 (= call!637105 call!637106)))

(declare-fun b!7014847 () Bool)

(declare-fun res!2862880 () Bool)

(assert (=> b!7014847 (=> (not res!2862880) (not e!4216747))))

(assert (=> b!7014847 (= res!2862880 call!637104)))

(assert (=> b!7014847 (= e!4216748 e!4216747)))

(declare-fun b!7014848 () Bool)

(assert (=> b!7014848 (= e!4216750 call!637105)))

(assert (= (and d!2186678 (not res!2862881)) b!7014846))

(assert (= (and b!7014846 c!1303222) b!7014844))

(assert (= (and b!7014846 (not c!1303222)) b!7014841))

(assert (= (and b!7014844 res!2862882) b!7014840))

(assert (= (and b!7014841 c!1303223) b!7014847))

(assert (= (and b!7014841 (not c!1303223)) b!7014842))

(assert (= (and b!7014847 res!2862880) b!7014845))

(assert (= (and b!7014842 (not res!2862884)) b!7014843))

(assert (= (and b!7014843 res!2862883) b!7014848))

(assert (= (or b!7014845 b!7014848) bm!637101))

(assert (= (or b!7014847 b!7014843) bm!637100))

(assert (= (or b!7014840 bm!637101) bm!637099))

(declare-fun m!7714220 () Bool)

(assert (=> bm!637099 m!7714220))

(declare-fun m!7714222 () Bool)

(assert (=> bm!637100 m!7714222))

(declare-fun m!7714224 () Bool)

(assert (=> b!7014844 m!7714224))

(assert (=> bm!637059 d!2186678))

(declare-fun d!2186680 () Bool)

(declare-fun c!1303226 () Bool)

(assert (=> d!2186680 (= c!1303226 (is-Nil!67441 lt!2507483))))

(declare-fun e!4216755 () (Set Regex!17340))

(assert (=> d!2186680 (= (content!13402 lt!2507483) e!4216755)))

(declare-fun b!7014853 () Bool)

(assert (=> b!7014853 (= e!4216755 (as set.empty (Set Regex!17340)))))

(declare-fun b!7014854 () Bool)

(assert (=> b!7014854 (= e!4216755 (set.union (set.insert (h!73889 lt!2507483) (as set.empty (Set Regex!17340))) (content!13402 (t!381320 lt!2507483))))))

(assert (= (and d!2186680 c!1303226) b!7014853))

(assert (= (and d!2186680 (not c!1303226)) b!7014854))

(declare-fun m!7714226 () Bool)

(assert (=> b!7014854 m!7714226))

(declare-fun m!7714228 () Bool)

(assert (=> b!7014854 m!7714228))

(assert (=> d!2186554 d!2186680))

(declare-fun d!2186682 () Bool)

(declare-fun c!1303227 () Bool)

(assert (=> d!2186682 (= c!1303227 (is-Nil!67441 (exprs!6836 lt!2507403)))))

(declare-fun e!4216756 () (Set Regex!17340))

(assert (=> d!2186682 (= (content!13402 (exprs!6836 lt!2507403)) e!4216756)))

(declare-fun b!7014855 () Bool)

(assert (=> b!7014855 (= e!4216756 (as set.empty (Set Regex!17340)))))

(declare-fun b!7014856 () Bool)

(assert (=> b!7014856 (= e!4216756 (set.union (set.insert (h!73889 (exprs!6836 lt!2507403)) (as set.empty (Set Regex!17340))) (content!13402 (t!381320 (exprs!6836 lt!2507403)))))))

(assert (= (and d!2186682 c!1303227) b!7014855))

(assert (= (and d!2186682 (not c!1303227)) b!7014856))

(declare-fun m!7714230 () Bool)

(assert (=> b!7014856 m!7714230))

(assert (=> b!7014856 m!7714200))

(assert (=> d!2186554 d!2186682))

(declare-fun d!2186684 () Bool)

(declare-fun c!1303228 () Bool)

(assert (=> d!2186684 (= c!1303228 (is-Nil!67441 (exprs!6836 ct2!306)))))

(declare-fun e!4216757 () (Set Regex!17340))

(assert (=> d!2186684 (= (content!13402 (exprs!6836 ct2!306)) e!4216757)))

(declare-fun b!7014857 () Bool)

(assert (=> b!7014857 (= e!4216757 (as set.empty (Set Regex!17340)))))

(declare-fun b!7014858 () Bool)

(assert (=> b!7014858 (= e!4216757 (set.union (set.insert (h!73889 (exprs!6836 ct2!306)) (as set.empty (Set Regex!17340))) (content!13402 (t!381320 (exprs!6836 ct2!306)))))))

(assert (= (and d!2186684 c!1303228) b!7014857))

(assert (= (and d!2186684 (not c!1303228)) b!7014858))

(declare-fun m!7714232 () Bool)

(assert (=> b!7014858 m!7714232))

(declare-fun m!7714234 () Bool)

(assert (=> b!7014858 m!7714234))

(assert (=> d!2186554 d!2186684))

(declare-fun d!2186686 () Bool)

(assert (=> d!2186686 (= (map!15632 z1!570 lambda!409648) (choose!52798 z1!570 lambda!409648))))

(declare-fun bs!1866675 () Bool)

(assert (= bs!1866675 d!2186686))

(declare-fun m!7714236 () Bool)

(assert (=> bs!1866675 m!7714236))

(assert (=> d!2186548 d!2186686))

(declare-fun d!2186688 () Bool)

(assert (=> d!2186688 (= (flatMap!2326 lt!2507398 lambda!409634) (choose!52786 lt!2507398 lambda!409634))))

(declare-fun bs!1866676 () Bool)

(assert (= bs!1866676 d!2186688))

(declare-fun m!7714238 () Bool)

(assert (=> bs!1866676 m!7714238))

(assert (=> d!2186528 d!2186688))

(declare-fun bs!1866677 () Bool)

(declare-fun d!2186690 () Bool)

(assert (= bs!1866677 (and d!2186690 b!7014462)))

(declare-fun lambda!409677 () Int)

(assert (=> bs!1866677 (= lambda!409677 lambda!409608)))

(declare-fun bs!1866678 () Bool)

(assert (= bs!1866678 (and d!2186690 d!2186552)))

(assert (=> bs!1866678 (= lambda!409677 lambda!409651)))

(declare-fun bs!1866679 () Bool)

(assert (= bs!1866679 (and d!2186690 d!2186562)))

(assert (=> bs!1866679 (= lambda!409677 lambda!409652)))

(assert (=> d!2186690 (= (inv!86210 setElem!48475) (forall!16254 (exprs!6836 setElem!48475) lambda!409677))))

(declare-fun bs!1866680 () Bool)

(assert (= bs!1866680 d!2186690))

(declare-fun m!7714240 () Bool)

(assert (=> bs!1866680 m!7714240))

(assert (=> setNonEmpty!48475 d!2186690))

(declare-fun d!2186692 () Bool)

(declare-fun c!1303229 () Bool)

(assert (=> d!2186692 (= c!1303229 (is-Nil!67443 lt!2507469))))

(declare-fun e!4216758 () (Set Context!12672))

(assert (=> d!2186692 (= (content!13401 lt!2507469) e!4216758)))

(declare-fun b!7014859 () Bool)

(assert (=> b!7014859 (= e!4216758 (as set.empty (Set Context!12672)))))

(declare-fun b!7014860 () Bool)

(assert (=> b!7014860 (= e!4216758 (set.union (set.insert (h!73891 lt!2507469) (as set.empty (Set Context!12672))) (content!13401 (t!381322 lt!2507469))))))

(assert (= (and d!2186692 c!1303229) b!7014859))

(assert (= (and d!2186692 (not c!1303229)) b!7014860))

(declare-fun m!7714242 () Bool)

(assert (=> b!7014860 m!7714242))

(declare-fun m!7714244 () Bool)

(assert (=> b!7014860 m!7714244))

(assert (=> b!7014541 d!2186692))

(declare-fun d!2186694 () Bool)

(declare-fun c!1303230 () Bool)

(assert (=> d!2186694 (= c!1303230 (is-Nil!67441 lt!2507490))))

(declare-fun e!4216759 () (Set Regex!17340))

(assert (=> d!2186694 (= (content!13402 lt!2507490) e!4216759)))

(declare-fun b!7014861 () Bool)

(assert (=> b!7014861 (= e!4216759 (as set.empty (Set Regex!17340)))))

(declare-fun b!7014862 () Bool)

(assert (=> b!7014862 (= e!4216759 (set.union (set.insert (h!73889 lt!2507490) (as set.empty (Set Regex!17340))) (content!13402 (t!381320 lt!2507490))))))

(assert (= (and d!2186694 c!1303230) b!7014861))

(assert (= (and d!2186694 (not c!1303230)) b!7014862))

(declare-fun m!7714246 () Bool)

(assert (=> b!7014862 m!7714246))

(declare-fun m!7714248 () Bool)

(assert (=> b!7014862 m!7714248))

(assert (=> d!2186566 d!2186694))

(declare-fun d!2186696 () Bool)

(declare-fun c!1303231 () Bool)

(assert (=> d!2186696 (= c!1303231 (is-Nil!67441 lt!2507399))))

(declare-fun e!4216760 () (Set Regex!17340))

(assert (=> d!2186696 (= (content!13402 lt!2507399) e!4216760)))

(declare-fun b!7014863 () Bool)

(assert (=> b!7014863 (= e!4216760 (as set.empty (Set Regex!17340)))))

(declare-fun b!7014864 () Bool)

(assert (=> b!7014864 (= e!4216760 (set.union (set.insert (h!73889 lt!2507399) (as set.empty (Set Regex!17340))) (content!13402 (t!381320 lt!2507399))))))

(assert (= (and d!2186696 c!1303231) b!7014863))

(assert (= (and d!2186696 (not c!1303231)) b!7014864))

(declare-fun m!7714250 () Bool)

(assert (=> b!7014864 m!7714250))

(declare-fun m!7714252 () Bool)

(assert (=> b!7014864 m!7714252))

(assert (=> d!2186566 d!2186696))

(assert (=> d!2186566 d!2186684))

(declare-fun d!2186698 () Bool)

(assert (=> d!2186698 (= (nullable!7100 (h!73889 (exprs!6836 lt!2507404))) (nullableFct!2691 (h!73889 (exprs!6836 lt!2507404))))))

(declare-fun bs!1866681 () Bool)

(assert (= bs!1866681 d!2186698))

(declare-fun m!7714254 () Bool)

(assert (=> bs!1866681 m!7714254))

(assert (=> b!7014536 d!2186698))

(declare-fun d!2186700 () Bool)

(declare-fun lt!2507528 () Int)

(assert (=> d!2186700 (>= lt!2507528 0)))

(declare-fun e!4216761 () Int)

(assert (=> d!2186700 (= lt!2507528 e!4216761)))

(declare-fun c!1303232 () Bool)

(assert (=> d!2186700 (= c!1303232 (is-Nil!67441 lt!2507490))))

(assert (=> d!2186700 (= (size!40989 lt!2507490) lt!2507528)))

(declare-fun b!7014865 () Bool)

(assert (=> b!7014865 (= e!4216761 0)))

(declare-fun b!7014866 () Bool)

(assert (=> b!7014866 (= e!4216761 (+ 1 (size!40989 (t!381320 lt!2507490))))))

(assert (= (and d!2186700 c!1303232) b!7014865))

(assert (= (and d!2186700 (not c!1303232)) b!7014866))

(declare-fun m!7714256 () Bool)

(assert (=> b!7014866 m!7714256))

(assert (=> b!7014611 d!2186700))

(declare-fun d!2186702 () Bool)

(declare-fun lt!2507529 () Int)

(assert (=> d!2186702 (>= lt!2507529 0)))

(declare-fun e!4216762 () Int)

(assert (=> d!2186702 (= lt!2507529 e!4216762)))

(declare-fun c!1303233 () Bool)

(assert (=> d!2186702 (= c!1303233 (is-Nil!67441 lt!2507399))))

(assert (=> d!2186702 (= (size!40989 lt!2507399) lt!2507529)))

(declare-fun b!7014867 () Bool)

(assert (=> b!7014867 (= e!4216762 0)))

(declare-fun b!7014868 () Bool)

(assert (=> b!7014868 (= e!4216762 (+ 1 (size!40989 (t!381320 lt!2507399))))))

(assert (= (and d!2186702 c!1303233) b!7014867))

(assert (= (and d!2186702 (not c!1303233)) b!7014868))

(declare-fun m!7714258 () Bool)

(assert (=> b!7014868 m!7714258))

(assert (=> b!7014611 d!2186702))

(assert (=> b!7014611 d!2186666))

(declare-fun bs!1866682 () Bool)

(declare-fun d!2186704 () Bool)

(assert (= bs!1866682 (and d!2186704 d!2186652)))

(declare-fun lambda!409678 () Int)

(assert (=> bs!1866682 (not (= lambda!409678 lambda!409669))))

(declare-fun bs!1866683 () Bool)

(assert (= bs!1866683 (and d!2186704 b!7014463)))

(assert (=> bs!1866683 (not (= lambda!409678 lambda!409606))))

(declare-fun bs!1866684 () Bool)

(assert (= bs!1866684 (and d!2186704 d!2186676)))

(assert (=> bs!1866684 (= lambda!409678 lambda!409676)))

(declare-fun bs!1866685 () Bool)

(assert (= bs!1866685 (and d!2186704 d!2186536)))

(assert (=> bs!1866685 (not (= lambda!409678 lambda!409637))))

(declare-fun bs!1866686 () Bool)

(assert (= bs!1866686 (and d!2186704 d!2186654)))

(assert (=> bs!1866686 (not (= lambda!409678 lambda!409672))))

(declare-fun bs!1866687 () Bool)

(assert (= bs!1866687 (and d!2186704 d!2186542)))

(assert (=> bs!1866687 (not (= lambda!409678 lambda!409640))))

(assert (=> d!2186704 (= (nullableZipper!2497 lt!2507409) (exists!3200 lt!2507409 lambda!409678))))

(declare-fun bs!1866688 () Bool)

(assert (= bs!1866688 d!2186704))

(declare-fun m!7714260 () Bool)

(assert (=> bs!1866688 m!7714260))

(assert (=> b!7014546 d!2186704))

(declare-fun b!7014871 () Bool)

(declare-fun res!2862886 () Bool)

(declare-fun e!4216764 () Bool)

(assert (=> b!7014871 (=> (not res!2862886) (not e!4216764))))

(declare-fun lt!2507530 () List!67565)

(assert (=> b!7014871 (= res!2862886 (= (size!40989 lt!2507530) (+ (size!40989 (t!381320 lt!2507399)) (size!40989 (exprs!6836 ct2!306)))))))

(declare-fun d!2186706 () Bool)

(assert (=> d!2186706 e!4216764))

(declare-fun res!2862885 () Bool)

(assert (=> d!2186706 (=> (not res!2862885) (not e!4216764))))

(assert (=> d!2186706 (= res!2862885 (= (content!13402 lt!2507530) (set.union (content!13402 (t!381320 lt!2507399)) (content!13402 (exprs!6836 ct2!306)))))))

(declare-fun e!4216763 () List!67565)

(assert (=> d!2186706 (= lt!2507530 e!4216763)))

(declare-fun c!1303234 () Bool)

(assert (=> d!2186706 (= c!1303234 (is-Nil!67441 (t!381320 lt!2507399)))))

(assert (=> d!2186706 (= (++!15355 (t!381320 lt!2507399) (exprs!6836 ct2!306)) lt!2507530)))

(declare-fun b!7014872 () Bool)

(assert (=> b!7014872 (= e!4216764 (or (not (= (exprs!6836 ct2!306) Nil!67441)) (= lt!2507530 (t!381320 lt!2507399))))))

(declare-fun b!7014869 () Bool)

(assert (=> b!7014869 (= e!4216763 (exprs!6836 ct2!306))))

(declare-fun b!7014870 () Bool)

(assert (=> b!7014870 (= e!4216763 (Cons!67441 (h!73889 (t!381320 lt!2507399)) (++!15355 (t!381320 (t!381320 lt!2507399)) (exprs!6836 ct2!306))))))

(assert (= (and d!2186706 c!1303234) b!7014869))

(assert (= (and d!2186706 (not c!1303234)) b!7014870))

(assert (= (and d!2186706 res!2862885) b!7014871))

(assert (= (and b!7014871 res!2862886) b!7014872))

(declare-fun m!7714262 () Bool)

(assert (=> b!7014871 m!7714262))

(assert (=> b!7014871 m!7714258))

(assert (=> b!7014871 m!7713940))

(declare-fun m!7714264 () Bool)

(assert (=> d!2186706 m!7714264))

(assert (=> d!2186706 m!7714252))

(assert (=> d!2186706 m!7713946))

(declare-fun m!7714266 () Bool)

(assert (=> b!7014870 m!7714266))

(assert (=> b!7014610 d!2186706))

(assert (=> d!2186526 d!2186520))

(declare-fun d!2186708 () Bool)

(assert (=> d!2186708 (= (flatMap!2326 lt!2507398 lambda!409609) (dynLambda!27143 lambda!409609 lt!2507404))))

(assert (=> d!2186708 true))

(declare-fun _$13!4424 () Unit!161360)

(assert (=> d!2186708 (= (choose!52788 lt!2507398 lt!2507404 lambda!409609) _$13!4424)))

(declare-fun b_lambda!264671 () Bool)

(assert (=> (not b_lambda!264671) (not d!2186708)))

(declare-fun bs!1866689 () Bool)

(assert (= bs!1866689 d!2186708))

(assert (=> bs!1866689 m!7713776))

(assert (=> bs!1866689 m!7713864))

(assert (=> d!2186526 d!2186708))

(declare-fun d!2186710 () Bool)

(assert (=> d!2186710 true))

(declare-fun setRes!48481 () Bool)

(assert (=> d!2186710 setRes!48481))

(declare-fun condSetEmpty!48481 () Bool)

(declare-fun res!2862889 () (Set Context!12672))

(assert (=> d!2186710 (= condSetEmpty!48481 (= res!2862889 (as set.empty (Set Context!12672))))))

(assert (=> d!2186710 (= (choose!52786 lt!2507398 lambda!409609) res!2862889)))

(declare-fun setIsEmpty!48481 () Bool)

(assert (=> setIsEmpty!48481 setRes!48481))

(declare-fun setNonEmpty!48481 () Bool)

(declare-fun e!4216767 () Bool)

(declare-fun tp!1932983 () Bool)

(declare-fun setElem!48481 () Context!12672)

(assert (=> setNonEmpty!48481 (= setRes!48481 (and tp!1932983 (inv!86210 setElem!48481) e!4216767))))

(declare-fun setRest!48481 () (Set Context!12672))

(assert (=> setNonEmpty!48481 (= res!2862889 (set.union (set.insert setElem!48481 (as set.empty (Set Context!12672))) setRest!48481))))

(declare-fun b!7014875 () Bool)

(declare-fun tp!1932984 () Bool)

(assert (=> b!7014875 (= e!4216767 tp!1932984)))

(assert (= (and d!2186710 condSetEmpty!48481) setIsEmpty!48481))

(assert (= (and d!2186710 (not condSetEmpty!48481)) setNonEmpty!48481))

(assert (= setNonEmpty!48481 b!7014875))

(declare-fun m!7714268 () Bool)

(assert (=> setNonEmpty!48481 m!7714268))

(assert (=> d!2186520 d!2186710))

(declare-fun d!2186712 () Bool)

(declare-fun res!2862894 () Bool)

(declare-fun e!4216772 () Bool)

(assert (=> d!2186712 (=> res!2862894 e!4216772)))

(assert (=> d!2186712 (= res!2862894 (is-Nil!67443 lt!2507469))))

(assert (=> d!2186712 (= (noDuplicate!2575 lt!2507469) e!4216772)))

(declare-fun b!7014880 () Bool)

(declare-fun e!4216773 () Bool)

(assert (=> b!7014880 (= e!4216772 e!4216773)))

(declare-fun res!2862895 () Bool)

(assert (=> b!7014880 (=> (not res!2862895) (not e!4216773))))

(assert (=> b!7014880 (= res!2862895 (not (contains!20435 (t!381322 lt!2507469) (h!73891 lt!2507469))))))

(declare-fun b!7014881 () Bool)

(assert (=> b!7014881 (= e!4216773 (noDuplicate!2575 (t!381322 lt!2507469)))))

(assert (= (and d!2186712 (not res!2862894)) b!7014880))

(assert (= (and b!7014880 res!2862895) b!7014881))

(declare-fun m!7714270 () Bool)

(assert (=> b!7014880 m!7714270))

(declare-fun m!7714272 () Bool)

(assert (=> b!7014881 m!7714272))

(assert (=> d!2186530 d!2186712))

(declare-fun d!2186714 () Bool)

(declare-fun e!4216780 () Bool)

(assert (=> d!2186714 e!4216780))

(declare-fun res!2862900 () Bool)

(assert (=> d!2186714 (=> (not res!2862900) (not e!4216780))))

(declare-fun res!2862901 () List!67567)

(assert (=> d!2186714 (= res!2862900 (noDuplicate!2575 res!2862901))))

(declare-fun e!4216782 () Bool)

(assert (=> d!2186714 e!4216782))

(assert (=> d!2186714 (= (choose!52789 lt!2507401) res!2862901)))

(declare-fun b!7014889 () Bool)

(declare-fun e!4216781 () Bool)

(declare-fun tp!1932990 () Bool)

(assert (=> b!7014889 (= e!4216781 tp!1932990)))

(declare-fun tp!1932989 () Bool)

(declare-fun b!7014888 () Bool)

(assert (=> b!7014888 (= e!4216782 (and (inv!86210 (h!73891 res!2862901)) e!4216781 tp!1932989))))

(declare-fun b!7014890 () Bool)

(assert (=> b!7014890 (= e!4216780 (= (content!13401 res!2862901) lt!2507401))))

(assert (= b!7014888 b!7014889))

(assert (= (and d!2186714 (is-Cons!67443 res!2862901)) b!7014888))

(assert (= (and d!2186714 res!2862900) b!7014890))

(declare-fun m!7714274 () Bool)

(assert (=> d!2186714 m!7714274))

(declare-fun m!7714276 () Bool)

(assert (=> b!7014888 m!7714276))

(declare-fun m!7714278 () Bool)

(assert (=> b!7014890 m!7714278))

(assert (=> d!2186530 d!2186714))

(declare-fun d!2186716 () Bool)

(declare-fun res!2862902 () Bool)

(declare-fun e!4216783 () Bool)

(assert (=> d!2186716 (=> res!2862902 e!4216783)))

(assert (=> d!2186716 (= res!2862902 (is-Nil!67441 (exprs!6836 setElem!48469)))))

(assert (=> d!2186716 (= (forall!16254 (exprs!6836 setElem!48469) lambda!409652) e!4216783)))

(declare-fun b!7014891 () Bool)

(declare-fun e!4216784 () Bool)

(assert (=> b!7014891 (= e!4216783 e!4216784)))

(declare-fun res!2862903 () Bool)

(assert (=> b!7014891 (=> (not res!2862903) (not e!4216784))))

(assert (=> b!7014891 (= res!2862903 (dynLambda!27151 lambda!409652 (h!73889 (exprs!6836 setElem!48469))))))

(declare-fun b!7014892 () Bool)

(assert (=> b!7014892 (= e!4216784 (forall!16254 (t!381320 (exprs!6836 setElem!48469)) lambda!409652))))

(assert (= (and d!2186716 (not res!2862902)) b!7014891))

(assert (= (and b!7014891 res!2862903) b!7014892))

(declare-fun b_lambda!264673 () Bool)

(assert (=> (not b_lambda!264673) (not b!7014891)))

(declare-fun m!7714280 () Bool)

(assert (=> b!7014891 m!7714280))

(declare-fun m!7714282 () Bool)

(assert (=> b!7014892 m!7714282))

(assert (=> d!2186562 d!2186716))

(declare-fun d!2186718 () Bool)

(assert (=> d!2186718 (= (nullable!7100 (reg!17669 (h!73889 (exprs!6836 lt!2507403)))) (nullableFct!2691 (reg!17669 (h!73889 (exprs!6836 lt!2507403)))))))

(declare-fun bs!1866690 () Bool)

(assert (= bs!1866690 d!2186718))

(declare-fun m!7714284 () Bool)

(assert (=> bs!1866690 m!7714284))

(assert (=> b!7014604 d!2186718))

(declare-fun d!2186720 () Bool)

(declare-fun res!2862908 () Bool)

(declare-fun e!4216789 () Bool)

(assert (=> d!2186720 (=> res!2862908 e!4216789)))

(assert (=> d!2186720 (= res!2862908 (is-Nil!67443 lt!2507410))))

(assert (=> d!2186720 (= (forall!16255 lt!2507410 lambda!409637) e!4216789)))

(declare-fun b!7014897 () Bool)

(declare-fun e!4216790 () Bool)

(assert (=> b!7014897 (= e!4216789 e!4216790)))

(declare-fun res!2862909 () Bool)

(assert (=> b!7014897 (=> (not res!2862909) (not e!4216790))))

(assert (=> b!7014897 (= res!2862909 (dynLambda!27145 lambda!409637 (h!73891 lt!2507410)))))

(declare-fun b!7014898 () Bool)

(assert (=> b!7014898 (= e!4216790 (forall!16255 (t!381322 lt!2507410) lambda!409637))))

(assert (= (and d!2186720 (not res!2862908)) b!7014897))

(assert (= (and b!7014897 res!2862909) b!7014898))

(declare-fun b_lambda!264675 () Bool)

(assert (=> (not b_lambda!264675) (not b!7014897)))

(declare-fun m!7714286 () Bool)

(assert (=> b!7014897 m!7714286))

(declare-fun m!7714288 () Bool)

(assert (=> b!7014898 m!7714288))

(assert (=> d!2186536 d!2186720))

(declare-fun d!2186722 () Bool)

(assert (=> d!2186722 (forall!16254 (++!15355 (exprs!6836 lt!2507486) (exprs!6836 ct2!306)) lambda!409608)))

(declare-fun lt!2507531 () Unit!161360)

(assert (=> d!2186722 (= lt!2507531 (choose!52787 (exprs!6836 lt!2507486) (exprs!6836 ct2!306) lambda!409608))))

(assert (=> d!2186722 (forall!16254 (exprs!6836 lt!2507486) lambda!409608)))

(assert (=> d!2186722 (= (lemmaConcatPreservesForall!676 (exprs!6836 lt!2507486) (exprs!6836 ct2!306) lambda!409608) lt!2507531)))

(declare-fun bs!1866691 () Bool)

(assert (= bs!1866691 d!2186722))

(assert (=> bs!1866691 m!7714000))

(assert (=> bs!1866691 m!7714000))

(declare-fun m!7714290 () Bool)

(assert (=> bs!1866691 m!7714290))

(declare-fun m!7714292 () Bool)

(assert (=> bs!1866691 m!7714292))

(declare-fun m!7714294 () Bool)

(assert (=> bs!1866691 m!7714294))

(assert (=> bs!1866630 d!2186722))

(declare-fun b!7014901 () Bool)

(declare-fun res!2862911 () Bool)

(declare-fun e!4216792 () Bool)

(assert (=> b!7014901 (=> (not res!2862911) (not e!4216792))))

(declare-fun lt!2507532 () List!67565)

(assert (=> b!7014901 (= res!2862911 (= (size!40989 lt!2507532) (+ (size!40989 (exprs!6836 lt!2507486)) (size!40989 (exprs!6836 ct2!306)))))))

(declare-fun d!2186724 () Bool)

(assert (=> d!2186724 e!4216792))

(declare-fun res!2862910 () Bool)

(assert (=> d!2186724 (=> (not res!2862910) (not e!4216792))))

(assert (=> d!2186724 (= res!2862910 (= (content!13402 lt!2507532) (set.union (content!13402 (exprs!6836 lt!2507486)) (content!13402 (exprs!6836 ct2!306)))))))

(declare-fun e!4216791 () List!67565)

(assert (=> d!2186724 (= lt!2507532 e!4216791)))

(declare-fun c!1303235 () Bool)

(assert (=> d!2186724 (= c!1303235 (is-Nil!67441 (exprs!6836 lt!2507486)))))

(assert (=> d!2186724 (= (++!15355 (exprs!6836 lt!2507486) (exprs!6836 ct2!306)) lt!2507532)))

(declare-fun b!7014902 () Bool)

(assert (=> b!7014902 (= e!4216792 (or (not (= (exprs!6836 ct2!306) Nil!67441)) (= lt!2507532 (exprs!6836 lt!2507486))))))

(declare-fun b!7014899 () Bool)

(assert (=> b!7014899 (= e!4216791 (exprs!6836 ct2!306))))

(declare-fun b!7014900 () Bool)

(assert (=> b!7014900 (= e!4216791 (Cons!67441 (h!73889 (exprs!6836 lt!2507486)) (++!15355 (t!381320 (exprs!6836 lt!2507486)) (exprs!6836 ct2!306))))))

(assert (= (and d!2186724 c!1303235) b!7014899))

(assert (= (and d!2186724 (not c!1303235)) b!7014900))

(assert (= (and d!2186724 res!2862910) b!7014901))

(assert (= (and b!7014901 res!2862911) b!7014902))

(declare-fun m!7714296 () Bool)

(assert (=> b!7014901 m!7714296))

(declare-fun m!7714298 () Bool)

(assert (=> b!7014901 m!7714298))

(assert (=> b!7014901 m!7713940))

(declare-fun m!7714300 () Bool)

(assert (=> d!2186724 m!7714300))

(declare-fun m!7714302 () Bool)

(assert (=> d!2186724 m!7714302))

(assert (=> d!2186724 m!7713946))

(declare-fun m!7714304 () Bool)

(assert (=> b!7014900 m!7714304))

(assert (=> bs!1866630 d!2186724))

(declare-fun b!7014903 () Bool)

(declare-fun e!4216798 () Bool)

(declare-fun call!637109 () Bool)

(assert (=> b!7014903 (= e!4216798 call!637109)))

(declare-fun b!7014904 () Bool)

(declare-fun e!4216799 () Bool)

(declare-fun e!4216795 () Bool)

(assert (=> b!7014904 (= e!4216799 e!4216795)))

(declare-fun c!1303237 () Bool)

(assert (=> b!7014904 (= c!1303237 (is-Union!17340 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))))))

(declare-fun b!7014905 () Bool)

(declare-fun res!2862916 () Bool)

(declare-fun e!4216793 () Bool)

(assert (=> b!7014905 (=> res!2862916 e!4216793)))

(assert (=> b!7014905 (= res!2862916 (not (is-Concat!26185 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403)))))))))

(assert (=> b!7014905 (= e!4216795 e!4216793)))

(declare-fun c!1303236 () Bool)

(declare-fun bm!637102 () Bool)

(assert (=> bm!637102 (= call!637109 (validRegex!8899 (ite c!1303236 (reg!17669 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))) (ite c!1303237 (regTwo!35193 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))) (regTwo!35192 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403)))))))))))

(declare-fun call!637107 () Bool)

(declare-fun bm!637103 () Bool)

(assert (=> bm!637103 (= call!637107 (validRegex!8899 (ite c!1303237 (regOne!35193 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))) (regOne!35192 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))))))))

(declare-fun b!7014906 () Bool)

(declare-fun e!4216797 () Bool)

(assert (=> b!7014906 (= e!4216793 e!4216797)))

(declare-fun res!2862915 () Bool)

(assert (=> b!7014906 (=> (not res!2862915) (not e!4216797))))

(assert (=> b!7014906 (= res!2862915 call!637107)))

(declare-fun b!7014907 () Bool)

(assert (=> b!7014907 (= e!4216799 e!4216798)))

(declare-fun res!2862914 () Bool)

(assert (=> b!7014907 (= res!2862914 (not (nullable!7100 (reg!17669 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))))))))

(assert (=> b!7014907 (=> (not res!2862914) (not e!4216798))))

(declare-fun b!7014908 () Bool)

(declare-fun e!4216794 () Bool)

(declare-fun call!637108 () Bool)

(assert (=> b!7014908 (= e!4216794 call!637108)))

(declare-fun d!2186726 () Bool)

(declare-fun res!2862913 () Bool)

(declare-fun e!4216796 () Bool)

(assert (=> d!2186726 (=> res!2862913 e!4216796)))

(assert (=> d!2186726 (= res!2862913 (is-ElementMatch!17340 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))))))

(assert (=> d!2186726 (= (validRegex!8899 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))) e!4216796)))

(declare-fun b!7014909 () Bool)

(assert (=> b!7014909 (= e!4216796 e!4216799)))

(assert (=> b!7014909 (= c!1303236 (is-Star!17340 (ite c!1303157 (regOne!35193 (h!73889 (exprs!6836 lt!2507403))) (regOne!35192 (h!73889 (exprs!6836 lt!2507403))))))))

(declare-fun bm!637104 () Bool)

(assert (=> bm!637104 (= call!637108 call!637109)))

(declare-fun b!7014910 () Bool)

(declare-fun res!2862912 () Bool)

(assert (=> b!7014910 (=> (not res!2862912) (not e!4216794))))

(assert (=> b!7014910 (= res!2862912 call!637107)))

(assert (=> b!7014910 (= e!4216795 e!4216794)))

(declare-fun b!7014911 () Bool)

(assert (=> b!7014911 (= e!4216797 call!637108)))

(assert (= (and d!2186726 (not res!2862913)) b!7014909))

(assert (= (and b!7014909 c!1303236) b!7014907))

(assert (= (and b!7014909 (not c!1303236)) b!7014904))

(assert (= (and b!7014907 res!2862914) b!7014903))

(assert (= (and b!7014904 c!1303237) b!7014910))

(assert (= (and b!7014904 (not c!1303237)) b!7014905))

(assert (= (and b!7014910 res!2862912) b!7014908))

(assert (= (and b!7014905 (not res!2862916)) b!7014906))

(assert (= (and b!7014906 res!2862915) b!7014911))

(assert (= (or b!7014908 b!7014911) bm!637104))

(assert (= (or b!7014910 b!7014906) bm!637103))

(assert (= (or b!7014903 bm!637104) bm!637102))

(declare-fun m!7714306 () Bool)

(assert (=> bm!637102 m!7714306))

(declare-fun m!7714308 () Bool)

(assert (=> bm!637103 m!7714308))

(declare-fun m!7714310 () Bool)

(assert (=> b!7014907 m!7714310))

(assert (=> bm!637060 d!2186726))

(declare-fun b!7014912 () Bool)

(declare-fun e!4216800 () Bool)

(declare-fun tp!1932991 () Bool)

(declare-fun tp!1932992 () Bool)

(assert (=> b!7014912 (= e!4216800 (and tp!1932991 tp!1932992))))

(assert (=> b!7014627 (= tp!1932956 e!4216800)))

(assert (= (and b!7014627 (is-Cons!67441 (exprs!6836 setElem!48475))) b!7014912))

(declare-fun b!7014913 () Bool)

(declare-fun e!4216801 () Bool)

(declare-fun tp!1932993 () Bool)

(assert (=> b!7014913 (= e!4216801 (and tp_is_empty!43905 tp!1932993))))

(assert (=> b!7014617 (= tp!1932944 e!4216801)))

(assert (= (and b!7014617 (is-Cons!67442 (t!381321 (t!381321 s!7408)))) b!7014913))

(declare-fun condSetEmpty!48482 () Bool)

(assert (=> setNonEmpty!48475 (= condSetEmpty!48482 (= setRest!48475 (as set.empty (Set Context!12672))))))

(declare-fun setRes!48482 () Bool)

(assert (=> setNonEmpty!48475 (= tp!1932955 setRes!48482)))

(declare-fun setIsEmpty!48482 () Bool)

(assert (=> setIsEmpty!48482 setRes!48482))

(declare-fun tp!1932994 () Bool)

(declare-fun e!4216802 () Bool)

(declare-fun setNonEmpty!48482 () Bool)

(declare-fun setElem!48482 () Context!12672)

(assert (=> setNonEmpty!48482 (= setRes!48482 (and tp!1932994 (inv!86210 setElem!48482) e!4216802))))

(declare-fun setRest!48482 () (Set Context!12672))

(assert (=> setNonEmpty!48482 (= setRest!48475 (set.union (set.insert setElem!48482 (as set.empty (Set Context!12672))) setRest!48482))))

(declare-fun b!7014914 () Bool)

(declare-fun tp!1932995 () Bool)

(assert (=> b!7014914 (= e!4216802 tp!1932995)))

(assert (= (and setNonEmpty!48475 condSetEmpty!48482) setIsEmpty!48482))

(assert (= (and setNonEmpty!48475 (not condSetEmpty!48482)) setNonEmpty!48482))

(assert (= setNonEmpty!48482 b!7014914))

(declare-fun m!7714312 () Bool)

(assert (=> setNonEmpty!48482 m!7714312))

(declare-fun e!4216805 () Bool)

(assert (=> b!7014622 (= tp!1932949 e!4216805)))

(declare-fun b!7014926 () Bool)

(declare-fun tp!1933006 () Bool)

(declare-fun tp!1933009 () Bool)

(assert (=> b!7014926 (= e!4216805 (and tp!1933006 tp!1933009))))

(declare-fun b!7014925 () Bool)

(assert (=> b!7014925 (= e!4216805 tp_is_empty!43905)))

(declare-fun b!7014927 () Bool)

(declare-fun tp!1933008 () Bool)

(assert (=> b!7014927 (= e!4216805 tp!1933008)))

(declare-fun b!7014928 () Bool)

(declare-fun tp!1933007 () Bool)

(declare-fun tp!1933010 () Bool)

(assert (=> b!7014928 (= e!4216805 (and tp!1933007 tp!1933010))))

(assert (= (and b!7014622 (is-ElementMatch!17340 (h!73889 (exprs!6836 ct2!306)))) b!7014925))

(assert (= (and b!7014622 (is-Concat!26185 (h!73889 (exprs!6836 ct2!306)))) b!7014926))

(assert (= (and b!7014622 (is-Star!17340 (h!73889 (exprs!6836 ct2!306)))) b!7014927))

(assert (= (and b!7014622 (is-Union!17340 (h!73889 (exprs!6836 ct2!306)))) b!7014928))

(declare-fun b!7014929 () Bool)

(declare-fun e!4216806 () Bool)

(declare-fun tp!1933011 () Bool)

(declare-fun tp!1933012 () Bool)

(assert (=> b!7014929 (= e!4216806 (and tp!1933011 tp!1933012))))

(assert (=> b!7014622 (= tp!1932950 e!4216806)))

(assert (= (and b!7014622 (is-Cons!67441 (t!381320 (exprs!6836 ct2!306)))) b!7014929))

(declare-fun e!4216807 () Bool)

(assert (=> b!7014628 (= tp!1932957 e!4216807)))

(declare-fun b!7014931 () Bool)

(declare-fun tp!1933013 () Bool)

(declare-fun tp!1933016 () Bool)

(assert (=> b!7014931 (= e!4216807 (and tp!1933013 tp!1933016))))

(declare-fun b!7014930 () Bool)

(assert (=> b!7014930 (= e!4216807 tp_is_empty!43905)))

(declare-fun b!7014932 () Bool)

(declare-fun tp!1933015 () Bool)

(assert (=> b!7014932 (= e!4216807 tp!1933015)))

(declare-fun b!7014933 () Bool)

(declare-fun tp!1933014 () Bool)

(declare-fun tp!1933017 () Bool)

(assert (=> b!7014933 (= e!4216807 (and tp!1933014 tp!1933017))))

(assert (= (and b!7014628 (is-ElementMatch!17340 (h!73889 (exprs!6836 setElem!48469)))) b!7014930))

(assert (= (and b!7014628 (is-Concat!26185 (h!73889 (exprs!6836 setElem!48469)))) b!7014931))

(assert (= (and b!7014628 (is-Star!17340 (h!73889 (exprs!6836 setElem!48469)))) b!7014932))

(assert (= (and b!7014628 (is-Union!17340 (h!73889 (exprs!6836 setElem!48469)))) b!7014933))

(declare-fun b!7014934 () Bool)

(declare-fun e!4216808 () Bool)

(declare-fun tp!1933018 () Bool)

(declare-fun tp!1933019 () Bool)

(assert (=> b!7014934 (= e!4216808 (and tp!1933018 tp!1933019))))

(assert (=> b!7014628 (= tp!1932958 e!4216808)))

(assert (= (and b!7014628 (is-Cons!67441 (t!381320 (exprs!6836 setElem!48469)))) b!7014934))

(declare-fun b_lambda!264677 () Bool)

(assert (= b_lambda!264667 (or b!7014462 b_lambda!264677)))

(declare-fun bs!1866692 () Bool)

(declare-fun d!2186728 () Bool)

(assert (= bs!1866692 (and d!2186728 b!7014462)))

(assert (=> bs!1866692 (= (dynLambda!27151 lambda!409608 (h!73889 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306)))) (validRegex!8899 (h!73889 (++!15355 (exprs!6836 lt!2507403) (exprs!6836 ct2!306)))))))

(declare-fun m!7714314 () Bool)

(assert (=> bs!1866692 m!7714314))

(assert (=> b!7014772 d!2186728))

(declare-fun b_lambda!264679 () Bool)

(assert (= b_lambda!264657 (or b!7014463 b_lambda!264679)))

(declare-fun bs!1866693 () Bool)

(declare-fun d!2186730 () Bool)

(assert (= bs!1866693 (and d!2186730 b!7014463)))

(assert (=> bs!1866693 (= (dynLambda!27145 lambda!409606 (h!73891 (toList!10700 lt!2507401))) (matchZipper!2880 (set.insert (h!73891 (toList!10700 lt!2507401)) (as set.empty (Set Context!12672))) s!7408))))

(declare-fun m!7714316 () Bool)

(assert (=> bs!1866693 m!7714316))

(assert (=> bs!1866693 m!7714316))

(declare-fun m!7714318 () Bool)

(assert (=> bs!1866693 m!7714318))

(assert (=> b!7014755 d!2186730))

(declare-fun b_lambda!264681 () Bool)

(assert (= b_lambda!264665 (or d!2186552 b_lambda!264681)))

(declare-fun bs!1866694 () Bool)

(declare-fun d!2186732 () Bool)

(assert (= bs!1866694 (and d!2186732 d!2186552)))

(assert (=> bs!1866694 (= (dynLambda!27151 lambda!409651 (h!73889 (exprs!6836 ct2!306))) (validRegex!8899 (h!73889 (exprs!6836 ct2!306))))))

(declare-fun m!7714320 () Bool)

(assert (=> bs!1866694 m!7714320))

(assert (=> b!7014768 d!2186732))

(declare-fun b_lambda!264683 () Bool)

(assert (= b_lambda!264671 (or b!7014458 b_lambda!264683)))

(assert (=> d!2186708 d!2186576))

(declare-fun b_lambda!264685 () Bool)

(assert (= b_lambda!264675 (or d!2186536 b_lambda!264685)))

(declare-fun bs!1866695 () Bool)

(declare-fun d!2186734 () Bool)

(assert (= bs!1866695 (and d!2186734 d!2186536)))

(assert (=> bs!1866695 (= (dynLambda!27145 lambda!409637 (h!73891 lt!2507410)) (not (dynLambda!27145 lambda!409606 (h!73891 lt!2507410))))))

(declare-fun b_lambda!264699 () Bool)

(assert (=> (not b_lambda!264699) (not bs!1866695)))

(declare-fun m!7714322 () Bool)

(assert (=> bs!1866695 m!7714322))

(assert (=> b!7014897 d!2186734))

(declare-fun b_lambda!264687 () Bool)

(assert (= b_lambda!264659 (or b!7014463 b_lambda!264687)))

(declare-fun bs!1866696 () Bool)

(declare-fun d!2186736 () Bool)

(assert (= bs!1866696 (and d!2186736 b!7014463)))

(assert (=> bs!1866696 (= (dynLambda!27145 lambda!409606 lt!2507518) (matchZipper!2880 (set.insert lt!2507518 (as set.empty (Set Context!12672))) s!7408))))

(declare-fun m!7714324 () Bool)

(assert (=> bs!1866696 m!7714324))

(assert (=> bs!1866696 m!7714324))

(declare-fun m!7714326 () Bool)

(assert (=> bs!1866696 m!7714326))

(assert (=> d!2186624 d!2186736))

(declare-fun b_lambda!264689 () Bool)

(assert (= b_lambda!264661 (or b!7014462 b_lambda!264689)))

(declare-fun bs!1866697 () Bool)

(declare-fun d!2186738 () Bool)

(assert (= bs!1866697 (and d!2186738 b!7014462)))

(assert (=> bs!1866697 (= (dynLambda!27151 lambda!409608 (h!73889 (++!15355 lt!2507399 (exprs!6836 ct2!306)))) (validRegex!8899 (h!73889 (++!15355 lt!2507399 (exprs!6836 ct2!306)))))))

(declare-fun m!7714328 () Bool)

(assert (=> bs!1866697 m!7714328))

(assert (=> b!7014764 d!2186738))

(declare-fun b_lambda!264691 () Bool)

(assert (= b_lambda!264673 (or d!2186562 b_lambda!264691)))

(declare-fun bs!1866698 () Bool)

(declare-fun d!2186740 () Bool)

(assert (= bs!1866698 (and d!2186740 d!2186562)))

(assert (=> bs!1866698 (= (dynLambda!27151 lambda!409652 (h!73889 (exprs!6836 setElem!48469))) (validRegex!8899 (h!73889 (exprs!6836 setElem!48469))))))

(declare-fun m!7714330 () Bool)

(assert (=> bs!1866698 m!7714330))

(assert (=> b!7014891 d!2186740))

(declare-fun b_lambda!264693 () Bool)

(assert (= b_lambda!264663 (or b!7014462 b_lambda!264693)))

(declare-fun bs!1866699 () Bool)

(declare-fun d!2186742 () Bool)

(assert (= bs!1866699 (and d!2186742 b!7014462)))

(assert (=> bs!1866699 (= (dynLambda!27151 lambda!409608 (h!73889 lt!2507399)) (validRegex!8899 (h!73889 lt!2507399)))))

(declare-fun m!7714332 () Bool)

(assert (=> bs!1866699 m!7714332))

(assert (=> b!7014766 d!2186742))

(declare-fun b_lambda!264695 () Bool)

(assert (= b_lambda!264655 (or b!7014462 b_lambda!264695)))

(declare-fun bs!1866700 () Bool)

(declare-fun d!2186744 () Bool)

(assert (= bs!1866700 (and d!2186744 b!7014462)))

(declare-fun lt!2507533 () Unit!161360)

(assert (=> bs!1866700 (= lt!2507533 (lemmaConcatPreservesForall!676 (exprs!6836 a!13005) (exprs!6836 ct2!306) lambda!409608))))

(assert (=> bs!1866700 (= (dynLambda!27146 lambda!409607 a!13005) (Context!12673 (++!15355 (exprs!6836 a!13005) (exprs!6836 ct2!306))))))

(declare-fun m!7714334 () Bool)

(assert (=> bs!1866700 m!7714334))

(declare-fun m!7714336 () Bool)

(assert (=> bs!1866700 m!7714336))

(assert (=> d!2186616 d!2186744))

(declare-fun b_lambda!264697 () Bool)

(assert (= b_lambda!264669 (or b!7014462 b_lambda!264697)))

(declare-fun bs!1866701 () Bool)

(declare-fun d!2186746 () Bool)

(assert (= bs!1866701 (and d!2186746 b!7014462)))

(assert (=> bs!1866701 (= (dynLambda!27151 lambda!409608 (h!73889 (exprs!6836 lt!2507403))) (validRegex!8899 (h!73889 (exprs!6836 lt!2507403))))))

(assert (=> bs!1866701 m!7713780))

(assert (=> b!7014774 d!2186746))

(push 1)

(assert (not d!2186626))

(assert (not b_lambda!264693))

(assert (not b!7014838))

(assert (not d!2186624))

(assert (not b_lambda!264699))

(assert (not b!7014901))

(assert (not d!2186656))

(assert (not d!2186722))

(assert (not b!7014830))

(assert (not b!7014927))

(assert (not d!2186724))

(assert (not b!7014870))

(assert (not b_lambda!264639))

(assert (not bm!637098))

(assert (not b!7014770))

(assert (not d!2186706))

(assert (not d!2186618))

(assert (not bs!1866696))

(assert (not b!7014754))

(assert (not setNonEmpty!48481))

(assert (not d!2186714))

(assert (not b!7014875))

(assert (not d!2186708))

(assert (not b!7014892))

(assert (not b!7014771))

(assert (not b!7014844))

(assert (not bs!1866698))

(assert (not b!7014800))

(assert (not d!2186654))

(assert (not b!7014880))

(assert (not b!7014913))

(assert (not b!7014932))

(assert (not b!7014933))

(assert (not b!7014816))

(assert (not d!2186704))

(assert (not b_lambda!264637))

(assert (not b!7014839))

(assert (not d!2186688))

(assert (not b!7014898))

(assert (not b_lambda!264679))

(assert (not b!7014828))

(assert (not d!2186652))

(assert (not bs!1866701))

(assert (not b!7014856))

(assert (not bs!1866694))

(assert tp_is_empty!43905)

(assert (not bm!637093))

(assert (not b_lambda!264695))

(assert (not d!2186676))

(assert (not b!7014809))

(assert (not d!2186690))

(assert (not d!2186672))

(assert (not bs!1866697))

(assert (not b!7014810))

(assert (not b!7014931))

(assert (not b_lambda!264685))

(assert (not b!7014765))

(assert (not bm!637103))

(assert (not d!2186660))

(assert (not b!7014888))

(assert (not b!7014833))

(assert (not setNonEmpty!48482))

(assert (not b!7014817))

(assert (not bs!1866693))

(assert (not d!2186686))

(assert (not b_lambda!264683))

(assert (not b_lambda!264687))

(assert (not bm!637095))

(assert (not b_lambda!264681))

(assert (not b!7014758))

(assert (not b_lambda!264691))

(assert (not b!7014854))

(assert (not b!7014862))

(assert (not d!2186674))

(assert (not b!7014907))

(assert (not d!2186638))

(assert (not b!7014900))

(assert (not d!2186718))

(assert (not bm!637100))

(assert (not bs!1866699))

(assert (not b!7014824))

(assert (not b!7014914))

(assert (not b!7014775))

(assert (not b!7014864))

(assert (not bm!637092))

(assert (not b!7014928))

(assert (not b!7014929))

(assert (not bm!637079))

(assert (not d!2186698))

(assert (not b!7014858))

(assert (not b_lambda!264677))

(assert (not bm!637102))

(assert (not b!7014912))

(assert (not d!2186636))

(assert (not d!2186630))

(assert (not b!7014866))

(assert (not b!7014826))

(assert (not bs!1866700))

(assert (not b!7014818))

(assert (not b!7014890))

(assert (not bm!637078))

(assert (not d!2186616))

(assert (not b!7014719))

(assert (not b!7014926))

(assert (not b!7014837))

(assert (not b!7014767))

(assert (not d!2186646))

(assert (not b!7014860))

(assert (not bm!637099))

(assert (not b!7014757))

(assert (not b!7014831))

(assert (not b!7014934))

(assert (not d!2186668))

(assert (not bs!1866692))

(assert (not b_lambda!264697))

(assert (not b!7014881))

(assert (not b!7014769))

(assert (not b_lambda!264689))

(assert (not b_lambda!264641))

(assert (not b!7014871))

(assert (not b!7014773))

(assert (not b!7014889))

(assert (not b!7014868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


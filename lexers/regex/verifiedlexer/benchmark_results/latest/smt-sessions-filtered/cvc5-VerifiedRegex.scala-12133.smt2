; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682344 () Bool)

(assert start!682344)

(declare-fun b!7047336 () Bool)

(assert (=> b!7047336 true))

(declare-fun b!7047338 () Bool)

(assert (=> b!7047338 true))

(declare-fun b!7047342 () Bool)

(assert (=> b!7047342 true))

(declare-fun setIsEmpty!49493 () Bool)

(declare-fun setRes!49493 () Bool)

(assert (=> setIsEmpty!49493 setRes!49493))

(declare-fun b!7047332 () Bool)

(declare-fun res!2876993 () Bool)

(declare-fun e!4236604 () Bool)

(assert (=> b!7047332 (=> res!2876993 e!4236604)))

(declare-datatypes ((C!35294 0))(
  ( (C!35295 (val!27349 Int)) )
))
(declare-datatypes ((Regex!17512 0))(
  ( (ElementMatch!17512 (c!1312370 C!35294)) (Concat!26357 (regOne!35536 Regex!17512) (regTwo!35536 Regex!17512)) (EmptyExpr!17512) (Star!17512 (reg!17841 Regex!17512)) (EmptyLang!17512) (Union!17512 (regOne!35537 Regex!17512) (regTwo!35537 Regex!17512)) )
))
(declare-datatypes ((List!68064 0))(
  ( (Nil!67940) (Cons!67940 (h!74388 Regex!17512) (t!381841 List!68064)) )
))
(declare-datatypes ((Context!13016 0))(
  ( (Context!13017 (exprs!7008 List!68064)) )
))
(declare-fun lt!2527642 () Context!13016)

(declare-fun lt!2527644 () (Set Context!13016))

(assert (=> b!7047332 (= res!2876993 (not (set.member lt!2527642 lt!2527644)))))

(declare-fun b!7047333 () Bool)

(declare-fun e!4236603 () Bool)

(declare-fun e!4236605 () Bool)

(assert (=> b!7047333 (= e!4236603 e!4236605)))

(declare-fun res!2876996 () Bool)

(assert (=> b!7047333 (=> res!2876996 e!4236605)))

(declare-fun lt!2527634 () (Set Context!13016))

(declare-datatypes ((List!68065 0))(
  ( (Nil!67941) (Cons!67941 (h!74389 C!35294) (t!381842 List!68065)) )
))
(declare-fun s!7408 () List!68065)

(declare-fun matchZipper!3052 ((Set Context!13016) List!68065) Bool)

(assert (=> b!7047333 (= res!2876996 (not (matchZipper!3052 lt!2527634 (t!381842 s!7408))))))

(declare-fun lt!2527640 () List!68064)

(declare-fun ct2!306 () Context!13016)

(declare-fun lt!2527646 () Context!13016)

(declare-fun derivationStepZipperDown!2176 (Regex!17512 Context!13016 C!35294) (Set Context!13016))

(declare-fun ++!15595 (List!68064 List!68064) List!68064)

(assert (=> b!7047333 (= lt!2527634 (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527646)) (Context!13017 (++!15595 lt!2527640 (exprs!7008 ct2!306))) (h!74389 s!7408)))))

(declare-datatypes ((Unit!161710 0))(
  ( (Unit!161711) )
))
(declare-fun lt!2527643 () Unit!161710)

(declare-fun lambda!418085 () Int)

(declare-fun lemmaConcatPreservesForall!833 (List!68064 List!68064 Int) Unit!161710)

(assert (=> b!7047333 (= lt!2527643 (lemmaConcatPreservesForall!833 lt!2527640 (exprs!7008 ct2!306) lambda!418085))))

(declare-fun e!4236610 () Bool)

(declare-fun setNonEmpty!49493 () Bool)

(declare-fun setElem!49493 () Context!13016)

(declare-fun tp!1938230 () Bool)

(declare-fun inv!86640 (Context!13016) Bool)

(assert (=> setNonEmpty!49493 (= setRes!49493 (and tp!1938230 (inv!86640 setElem!49493) e!4236610))))

(declare-fun z1!570 () (Set Context!13016))

(declare-fun setRest!49493 () (Set Context!13016))

(assert (=> setNonEmpty!49493 (= z1!570 (set.union (set.insert setElem!49493 (as set.empty (Set Context!13016))) setRest!49493))))

(declare-fun b!7047334 () Bool)

(declare-fun res!2876992 () Bool)

(declare-fun e!4236611 () Bool)

(assert (=> b!7047334 (=> res!2876992 e!4236611)))

(assert (=> b!7047334 (= res!2876992 (not (is-Cons!67940 (exprs!7008 lt!2527646))))))

(declare-fun e!4236607 () Bool)

(assert (=> b!7047336 (= e!4236607 (not e!4236604))))

(declare-fun res!2876986 () Bool)

(assert (=> b!7047336 (=> res!2876986 e!4236604)))

(declare-fun lt!2527641 () (Set Context!13016))

(assert (=> b!7047336 (= res!2876986 (not (matchZipper!3052 lt!2527641 s!7408)))))

(assert (=> b!7047336 (= lt!2527641 (set.insert lt!2527642 (as set.empty (Set Context!13016))))))

(declare-fun lambda!418083 () Int)

(declare-fun getWitness!1550 ((Set Context!13016) Int) Context!13016)

(assert (=> b!7047336 (= lt!2527642 (getWitness!1550 lt!2527644 lambda!418083))))

(declare-datatypes ((List!68066 0))(
  ( (Nil!67942) (Cons!67942 (h!74390 Context!13016) (t!381843 List!68066)) )
))
(declare-fun lt!2527638 () List!68066)

(declare-fun exists!3471 (List!68066 Int) Bool)

(assert (=> b!7047336 (exists!3471 lt!2527638 lambda!418083)))

(declare-fun lt!2527645 () Unit!161710)

(declare-fun lemmaZipperMatchesExistsMatchingContext!451 (List!68066 List!68065) Unit!161710)

(assert (=> b!7047336 (= lt!2527645 (lemmaZipperMatchesExistsMatchingContext!451 lt!2527638 s!7408))))

(declare-fun toList!10855 ((Set Context!13016)) List!68066)

(assert (=> b!7047336 (= lt!2527638 (toList!10855 lt!2527644))))

(declare-fun b!7047337 () Bool)

(declare-fun res!2876988 () Bool)

(declare-fun e!4236612 () Bool)

(assert (=> b!7047337 (=> res!2876988 e!4236612)))

(declare-fun lt!2527629 () (Set Context!13016))

(declare-datatypes ((tuple2!68154 0))(
  ( (tuple2!68155 (_1!37380 List!68065) (_2!37380 List!68065)) )
))
(declare-fun lt!2527632 () tuple2!68154)

(assert (=> b!7047337 (= res!2876988 (not (matchZipper!3052 lt!2527629 (_2!37380 lt!2527632))))))

(declare-fun e!4236608 () Bool)

(assert (=> b!7047338 (= e!4236604 e!4236608)))

(declare-fun res!2876985 () Bool)

(assert (=> b!7047338 (=> res!2876985 e!4236608)))

(declare-fun lt!2527628 () Context!13016)

(assert (=> b!7047338 (= res!2876985 (or (not (= lt!2527628 lt!2527642)) (not (set.member lt!2527646 z1!570))))))

(assert (=> b!7047338 (= lt!2527628 (Context!13017 (++!15595 (exprs!7008 lt!2527646) (exprs!7008 ct2!306))))))

(declare-fun lt!2527633 () Unit!161710)

(assert (=> b!7047338 (= lt!2527633 (lemmaConcatPreservesForall!833 (exprs!7008 lt!2527646) (exprs!7008 ct2!306) lambda!418085))))

(declare-fun lambda!418084 () Int)

(declare-fun mapPost2!353 ((Set Context!13016) Int Context!13016) Context!13016)

(assert (=> b!7047338 (= lt!2527646 (mapPost2!353 z1!570 lambda!418084 lt!2527642))))

(declare-fun b!7047339 () Bool)

(declare-fun lt!2527637 () (Set Context!13016))

(declare-fun derivationStepZipper!2968 ((Set Context!13016) C!35294) (Set Context!13016))

(declare-fun derivationStepZipperUp!2122 (Context!13016 C!35294) (Set Context!13016))

(assert (=> b!7047339 (= e!4236612 (= (derivationStepZipper!2968 lt!2527637 (h!74389 s!7408)) (derivationStepZipperUp!2122 lt!2527646 (h!74389 s!7408))))))

(declare-fun lambda!418086 () Int)

(declare-fun flatMap!2459 ((Set Context!13016) Int) (Set Context!13016))

(assert (=> b!7047339 (= (flatMap!2459 lt!2527637 lambda!418086) (derivationStepZipperUp!2122 lt!2527646 (h!74389 s!7408)))))

(declare-fun lt!2527639 () Unit!161710)

(declare-fun lemmaFlatMapOnSingletonSet!1973 ((Set Context!13016) Context!13016 Int) Unit!161710)

(assert (=> b!7047339 (= lt!2527639 (lemmaFlatMapOnSingletonSet!1973 lt!2527637 lt!2527646 lambda!418086))))

(assert (=> b!7047339 (= lt!2527637 (set.insert lt!2527646 (as set.empty (Set Context!13016))))))

(declare-fun b!7047340 () Bool)

(declare-fun e!4236609 () Bool)

(assert (=> b!7047340 (= e!4236608 e!4236609)))

(declare-fun res!2876987 () Bool)

(assert (=> b!7047340 (=> res!2876987 e!4236609)))

(declare-fun lt!2527630 () (Set Context!13016))

(assert (=> b!7047340 (= res!2876987 (not (= lt!2527630 lt!2527641)))))

(assert (=> b!7047340 (= lt!2527630 (set.insert lt!2527628 (as set.empty (Set Context!13016))))))

(declare-fun lt!2527623 () Unit!161710)

(assert (=> b!7047340 (= lt!2527623 (lemmaConcatPreservesForall!833 (exprs!7008 lt!2527646) (exprs!7008 ct2!306) lambda!418085))))

(declare-fun b!7047341 () Bool)

(assert (=> b!7047341 (= e!4236611 e!4236603)))

(declare-fun res!2876991 () Bool)

(assert (=> b!7047341 (=> res!2876991 e!4236603)))

(declare-fun nullable!7223 (Regex!17512) Bool)

(assert (=> b!7047341 (= res!2876991 (nullable!7223 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun lt!2527625 () Context!13016)

(assert (=> b!7047341 (= lt!2527625 (Context!13017 lt!2527640))))

(declare-fun tail!13636 (List!68064) List!68064)

(assert (=> b!7047341 (= lt!2527640 (tail!13636 (exprs!7008 lt!2527646)))))

(assert (=> b!7047342 (= e!4236609 e!4236611)))

(declare-fun res!2876990 () Bool)

(assert (=> b!7047342 (=> res!2876990 e!4236611)))

(declare-fun lt!2527624 () (Set Context!13016))

(assert (=> b!7047342 (= res!2876990 (not (= (derivationStepZipper!2968 lt!2527630 (h!74389 s!7408)) lt!2527624)))))

(assert (=> b!7047342 (= (flatMap!2459 lt!2527630 lambda!418086) (derivationStepZipperUp!2122 lt!2527628 (h!74389 s!7408)))))

(declare-fun lt!2527621 () Unit!161710)

(assert (=> b!7047342 (= lt!2527621 (lemmaFlatMapOnSingletonSet!1973 lt!2527630 lt!2527628 lambda!418086))))

(assert (=> b!7047342 (= lt!2527624 (derivationStepZipperUp!2122 lt!2527628 (h!74389 s!7408)))))

(declare-fun lt!2527626 () Unit!161710)

(assert (=> b!7047342 (= lt!2527626 (lemmaConcatPreservesForall!833 (exprs!7008 lt!2527646) (exprs!7008 ct2!306) lambda!418085))))

(declare-fun b!7047343 () Bool)

(declare-fun res!2876998 () Bool)

(assert (=> b!7047343 (=> res!2876998 e!4236611)))

(declare-fun isEmpty!39658 (List!68064) Bool)

(assert (=> b!7047343 (= res!2876998 (isEmpty!39658 (exprs!7008 lt!2527646)))))

(declare-fun b!7047344 () Bool)

(assert (=> b!7047344 (= e!4236605 e!4236612)))

(declare-fun res!2876989 () Bool)

(assert (=> b!7047344 (=> res!2876989 e!4236612)))

(declare-fun lt!2527627 () (Set Context!13016))

(assert (=> b!7047344 (= res!2876989 (not (matchZipper!3052 lt!2527627 (_1!37380 lt!2527632))))))

(declare-datatypes ((Option!16909 0))(
  ( (None!16908) (Some!16908 (v!53198 tuple2!68154)) )
))
(declare-fun lt!2527636 () Option!16909)

(declare-fun get!23816 (Option!16909) tuple2!68154)

(assert (=> b!7047344 (= lt!2527632 (get!23816 lt!2527636))))

(declare-fun isDefined!13610 (Option!16909) Bool)

(assert (=> b!7047344 (isDefined!13610 lt!2527636)))

(declare-fun findConcatSeparationZippers!425 ((Set Context!13016) (Set Context!13016) List!68065 List!68065 List!68065) Option!16909)

(assert (=> b!7047344 (= lt!2527636 (findConcatSeparationZippers!425 lt!2527627 lt!2527629 Nil!67941 (t!381842 s!7408) (t!381842 s!7408)))))

(assert (=> b!7047344 (= lt!2527629 (set.insert ct2!306 (as set.empty (Set Context!13016))))))

(declare-fun lt!2527631 () Unit!161710)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!413 ((Set Context!13016) Context!13016 List!68065) Unit!161710)

(assert (=> b!7047344 (= lt!2527631 (lemmaConcatZipperMatchesStringThenFindConcatDefined!413 lt!2527627 ct2!306 (t!381842 s!7408)))))

(declare-fun appendTo!633 ((Set Context!13016) Context!13016) (Set Context!13016))

(assert (=> b!7047344 (= lt!2527634 (appendTo!633 lt!2527627 ct2!306))))

(assert (=> b!7047344 (= lt!2527627 (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527646)) lt!2527625 (h!74389 s!7408)))))

(declare-fun lt!2527635 () Unit!161710)

(assert (=> b!7047344 (= lt!2527635 (lemmaConcatPreservesForall!833 lt!2527640 (exprs!7008 ct2!306) lambda!418085))))

(declare-fun lt!2527622 () Unit!161710)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!89 (Context!13016 Regex!17512 C!35294 Context!13016) Unit!161710)

(assert (=> b!7047344 (= lt!2527622 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!89 lt!2527625 (h!74388 (exprs!7008 lt!2527646)) (h!74389 s!7408) ct2!306))))

(declare-fun b!7047335 () Bool)

(declare-fun tp!1938231 () Bool)

(assert (=> b!7047335 (= e!4236610 tp!1938231)))

(declare-fun res!2876994 () Bool)

(assert (=> start!682344 (=> (not res!2876994) (not e!4236607))))

(assert (=> start!682344 (= res!2876994 (matchZipper!3052 lt!2527644 s!7408))))

(assert (=> start!682344 (= lt!2527644 (appendTo!633 z1!570 ct2!306))))

(assert (=> start!682344 e!4236607))

(declare-fun condSetEmpty!49493 () Bool)

(assert (=> start!682344 (= condSetEmpty!49493 (= z1!570 (as set.empty (Set Context!13016))))))

(assert (=> start!682344 setRes!49493))

(declare-fun e!4236606 () Bool)

(assert (=> start!682344 (and (inv!86640 ct2!306) e!4236606)))

(declare-fun e!4236613 () Bool)

(assert (=> start!682344 e!4236613))

(declare-fun b!7047345 () Bool)

(declare-fun tp!1938229 () Bool)

(assert (=> b!7047345 (= e!4236606 tp!1938229)))

(declare-fun b!7047346 () Bool)

(declare-fun tp_is_empty!44249 () Bool)

(declare-fun tp!1938228 () Bool)

(assert (=> b!7047346 (= e!4236613 (and tp_is_empty!44249 tp!1938228))))

(declare-fun b!7047347 () Bool)

(declare-fun res!2876997 () Bool)

(assert (=> b!7047347 (=> res!2876997 e!4236612)))

(declare-fun ++!15596 (List!68065 List!68065) List!68065)

(assert (=> b!7047347 (= res!2876997 (not (= (++!15596 (_1!37380 lt!2527632) (_2!37380 lt!2527632)) (t!381842 s!7408))))))

(declare-fun b!7047348 () Bool)

(declare-fun res!2876995 () Bool)

(assert (=> b!7047348 (=> (not res!2876995) (not e!4236607))))

(assert (=> b!7047348 (= res!2876995 (is-Cons!67941 s!7408))))

(assert (= (and start!682344 res!2876994) b!7047348))

(assert (= (and b!7047348 res!2876995) b!7047336))

(assert (= (and b!7047336 (not res!2876986)) b!7047332))

(assert (= (and b!7047332 (not res!2876993)) b!7047338))

(assert (= (and b!7047338 (not res!2876985)) b!7047340))

(assert (= (and b!7047340 (not res!2876987)) b!7047342))

(assert (= (and b!7047342 (not res!2876990)) b!7047334))

(assert (= (and b!7047334 (not res!2876992)) b!7047343))

(assert (= (and b!7047343 (not res!2876998)) b!7047341))

(assert (= (and b!7047341 (not res!2876991)) b!7047333))

(assert (= (and b!7047333 (not res!2876996)) b!7047344))

(assert (= (and b!7047344 (not res!2876989)) b!7047337))

(assert (= (and b!7047337 (not res!2876988)) b!7047347))

(assert (= (and b!7047347 (not res!2876997)) b!7047339))

(assert (= (and start!682344 condSetEmpty!49493) setIsEmpty!49493))

(assert (= (and start!682344 (not condSetEmpty!49493)) setNonEmpty!49493))

(assert (= setNonEmpty!49493 b!7047335))

(assert (= start!682344 b!7047345))

(assert (= (and start!682344 (is-Cons!67941 s!7408)) b!7047346))

(declare-fun m!7761686 () Bool)

(assert (=> b!7047347 m!7761686))

(declare-fun m!7761688 () Bool)

(assert (=> b!7047332 m!7761688))

(declare-fun m!7761690 () Bool)

(assert (=> b!7047344 m!7761690))

(declare-fun m!7761692 () Bool)

(assert (=> b!7047344 m!7761692))

(declare-fun m!7761694 () Bool)

(assert (=> b!7047344 m!7761694))

(declare-fun m!7761696 () Bool)

(assert (=> b!7047344 m!7761696))

(declare-fun m!7761698 () Bool)

(assert (=> b!7047344 m!7761698))

(declare-fun m!7761700 () Bool)

(assert (=> b!7047344 m!7761700))

(declare-fun m!7761702 () Bool)

(assert (=> b!7047344 m!7761702))

(declare-fun m!7761704 () Bool)

(assert (=> b!7047344 m!7761704))

(declare-fun m!7761706 () Bool)

(assert (=> b!7047344 m!7761706))

(declare-fun m!7761708 () Bool)

(assert (=> b!7047344 m!7761708))

(declare-fun m!7761710 () Bool)

(assert (=> b!7047333 m!7761710))

(declare-fun m!7761712 () Bool)

(assert (=> b!7047333 m!7761712))

(declare-fun m!7761714 () Bool)

(assert (=> b!7047333 m!7761714))

(assert (=> b!7047333 m!7761696))

(declare-fun m!7761716 () Bool)

(assert (=> b!7047336 m!7761716))

(declare-fun m!7761718 () Bool)

(assert (=> b!7047336 m!7761718))

(declare-fun m!7761720 () Bool)

(assert (=> b!7047336 m!7761720))

(declare-fun m!7761722 () Bool)

(assert (=> b!7047336 m!7761722))

(declare-fun m!7761724 () Bool)

(assert (=> b!7047336 m!7761724))

(declare-fun m!7761726 () Bool)

(assert (=> b!7047336 m!7761726))

(declare-fun m!7761728 () Bool)

(assert (=> b!7047340 m!7761728))

(declare-fun m!7761730 () Bool)

(assert (=> b!7047340 m!7761730))

(declare-fun m!7761732 () Bool)

(assert (=> b!7047341 m!7761732))

(declare-fun m!7761734 () Bool)

(assert (=> b!7047341 m!7761734))

(declare-fun m!7761736 () Bool)

(assert (=> setNonEmpty!49493 m!7761736))

(declare-fun m!7761738 () Bool)

(assert (=> b!7047337 m!7761738))

(declare-fun m!7761740 () Bool)

(assert (=> start!682344 m!7761740))

(declare-fun m!7761742 () Bool)

(assert (=> start!682344 m!7761742))

(declare-fun m!7761744 () Bool)

(assert (=> start!682344 m!7761744))

(declare-fun m!7761746 () Bool)

(assert (=> b!7047339 m!7761746))

(declare-fun m!7761748 () Bool)

(assert (=> b!7047339 m!7761748))

(declare-fun m!7761750 () Bool)

(assert (=> b!7047339 m!7761750))

(declare-fun m!7761752 () Bool)

(assert (=> b!7047339 m!7761752))

(declare-fun m!7761754 () Bool)

(assert (=> b!7047339 m!7761754))

(declare-fun m!7761756 () Bool)

(assert (=> b!7047342 m!7761756))

(assert (=> b!7047342 m!7761730))

(declare-fun m!7761758 () Bool)

(assert (=> b!7047342 m!7761758))

(declare-fun m!7761760 () Bool)

(assert (=> b!7047342 m!7761760))

(declare-fun m!7761762 () Bool)

(assert (=> b!7047342 m!7761762))

(declare-fun m!7761764 () Bool)

(assert (=> b!7047343 m!7761764))

(declare-fun m!7761766 () Bool)

(assert (=> b!7047338 m!7761766))

(declare-fun m!7761768 () Bool)

(assert (=> b!7047338 m!7761768))

(assert (=> b!7047338 m!7761730))

(declare-fun m!7761770 () Bool)

(assert (=> b!7047338 m!7761770))

(push 1)

(assert (not start!682344))

(assert (not b!7047342))

(assert (not b!7047343))

(assert (not b!7047346))

(assert (not b!7047339))

(assert (not b!7047340))

(assert tp_is_empty!44249)

(assert (not b!7047337))

(assert (not b!7047344))

(assert (not b!7047333))

(assert (not b!7047336))

(assert (not b!7047345))

(assert (not b!7047341))

(assert (not b!7047338))

(assert (not setNonEmpty!49493))

(assert (not b!7047335))

(assert (not b!7047347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2201236 () Bool)

(declare-fun nullableFct!2759 (Regex!17512) Bool)

(assert (=> d!2201236 (= (nullable!7223 (h!74388 (exprs!7008 lt!2527646))) (nullableFct!2759 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun bs!1875090 () Bool)

(assert (= bs!1875090 d!2201236))

(declare-fun m!7761858 () Bool)

(assert (=> bs!1875090 m!7761858))

(assert (=> b!7047341 d!2201236))

(declare-fun d!2201238 () Bool)

(assert (=> d!2201238 (= (tail!13636 (exprs!7008 lt!2527646)) (t!381841 (exprs!7008 lt!2527646)))))

(assert (=> b!7047341 d!2201238))

(declare-fun bs!1875091 () Bool)

(declare-fun d!2201240 () Bool)

(assert (= bs!1875091 (and d!2201240 b!7047342)))

(declare-fun lambda!418115 () Int)

(assert (=> bs!1875091 (= lambda!418115 lambda!418086)))

(assert (=> d!2201240 true))

(assert (=> d!2201240 (= (derivationStepZipper!2968 lt!2527637 (h!74389 s!7408)) (flatMap!2459 lt!2527637 lambda!418115))))

(declare-fun bs!1875092 () Bool)

(assert (= bs!1875092 d!2201240))

(declare-fun m!7761860 () Bool)

(assert (=> bs!1875092 m!7761860))

(assert (=> b!7047339 d!2201240))

(declare-fun b!7047424 () Bool)

(declare-fun e!4236655 () (Set Context!13016))

(assert (=> b!7047424 (= e!4236655 (as set.empty (Set Context!13016)))))

(declare-fun b!7047425 () Bool)

(declare-fun e!4236654 () Bool)

(assert (=> b!7047425 (= e!4236654 (nullable!7223 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun bm!640321 () Bool)

(declare-fun call!640326 () (Set Context!13016))

(assert (=> bm!640321 (= call!640326 (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527646)) (Context!13017 (t!381841 (exprs!7008 lt!2527646))) (h!74389 s!7408)))))

(declare-fun d!2201242 () Bool)

(declare-fun c!1312388 () Bool)

(assert (=> d!2201242 (= c!1312388 e!4236654)))

(declare-fun res!2877044 () Bool)

(assert (=> d!2201242 (=> (not res!2877044) (not e!4236654))))

(assert (=> d!2201242 (= res!2877044 (is-Cons!67940 (exprs!7008 lt!2527646)))))

(declare-fun e!4236653 () (Set Context!13016))

(assert (=> d!2201242 (= (derivationStepZipperUp!2122 lt!2527646 (h!74389 s!7408)) e!4236653)))

(declare-fun b!7047426 () Bool)

(assert (=> b!7047426 (= e!4236653 e!4236655)))

(declare-fun c!1312389 () Bool)

(assert (=> b!7047426 (= c!1312389 (is-Cons!67940 (exprs!7008 lt!2527646)))))

(declare-fun b!7047427 () Bool)

(assert (=> b!7047427 (= e!4236653 (set.union call!640326 (derivationStepZipperUp!2122 (Context!13017 (t!381841 (exprs!7008 lt!2527646))) (h!74389 s!7408))))))

(declare-fun b!7047428 () Bool)

(assert (=> b!7047428 (= e!4236655 call!640326)))

(assert (= (and d!2201242 res!2877044) b!7047425))

(assert (= (and d!2201242 c!1312388) b!7047427))

(assert (= (and d!2201242 (not c!1312388)) b!7047426))

(assert (= (and b!7047426 c!1312389) b!7047428))

(assert (= (and b!7047426 (not c!1312389)) b!7047424))

(assert (= (or b!7047427 b!7047428) bm!640321))

(assert (=> b!7047425 m!7761732))

(declare-fun m!7761862 () Bool)

(assert (=> bm!640321 m!7761862))

(declare-fun m!7761864 () Bool)

(assert (=> b!7047427 m!7761864))

(assert (=> b!7047339 d!2201242))

(declare-fun d!2201244 () Bool)

(declare-fun choose!53590 ((Set Context!13016) Int) (Set Context!13016))

(assert (=> d!2201244 (= (flatMap!2459 lt!2527637 lambda!418086) (choose!53590 lt!2527637 lambda!418086))))

(declare-fun bs!1875093 () Bool)

(assert (= bs!1875093 d!2201244))

(declare-fun m!7761866 () Bool)

(assert (=> bs!1875093 m!7761866))

(assert (=> b!7047339 d!2201244))

(declare-fun d!2201246 () Bool)

(declare-fun dynLambda!27519 (Int Context!13016) (Set Context!13016))

(assert (=> d!2201246 (= (flatMap!2459 lt!2527637 lambda!418086) (dynLambda!27519 lambda!418086 lt!2527646))))

(declare-fun lt!2527729 () Unit!161710)

(declare-fun choose!53591 ((Set Context!13016) Context!13016 Int) Unit!161710)

(assert (=> d!2201246 (= lt!2527729 (choose!53591 lt!2527637 lt!2527646 lambda!418086))))

(assert (=> d!2201246 (= lt!2527637 (set.insert lt!2527646 (as set.empty (Set Context!13016))))))

(assert (=> d!2201246 (= (lemmaFlatMapOnSingletonSet!1973 lt!2527637 lt!2527646 lambda!418086) lt!2527729)))

(declare-fun b_lambda!267827 () Bool)

(assert (=> (not b_lambda!267827) (not d!2201246)))

(declare-fun bs!1875094 () Bool)

(assert (= bs!1875094 d!2201246))

(assert (=> bs!1875094 m!7761748))

(declare-fun m!7761868 () Bool)

(assert (=> bs!1875094 m!7761868))

(declare-fun m!7761870 () Bool)

(assert (=> bs!1875094 m!7761870))

(assert (=> bs!1875094 m!7761752))

(assert (=> b!7047339 d!2201246))

(declare-fun d!2201248 () Bool)

(declare-fun forall!16445 (List!68064 Int) Bool)

(assert (=> d!2201248 (forall!16445 (++!15595 (exprs!7008 lt!2527646) (exprs!7008 ct2!306)) lambda!418085)))

(declare-fun lt!2527732 () Unit!161710)

(declare-fun choose!53592 (List!68064 List!68064 Int) Unit!161710)

(assert (=> d!2201248 (= lt!2527732 (choose!53592 (exprs!7008 lt!2527646) (exprs!7008 ct2!306) lambda!418085))))

(assert (=> d!2201248 (forall!16445 (exprs!7008 lt!2527646) lambda!418085)))

(assert (=> d!2201248 (= (lemmaConcatPreservesForall!833 (exprs!7008 lt!2527646) (exprs!7008 ct2!306) lambda!418085) lt!2527732)))

(declare-fun bs!1875095 () Bool)

(assert (= bs!1875095 d!2201248))

(assert (=> bs!1875095 m!7761768))

(assert (=> bs!1875095 m!7761768))

(declare-fun m!7761872 () Bool)

(assert (=> bs!1875095 m!7761872))

(declare-fun m!7761874 () Bool)

(assert (=> bs!1875095 m!7761874))

(declare-fun m!7761876 () Bool)

(assert (=> bs!1875095 m!7761876))

(assert (=> b!7047340 d!2201248))

(declare-fun d!2201250 () Bool)

(assert (=> d!2201250 (= (isEmpty!39658 (exprs!7008 lt!2527646)) (is-Nil!67940 (exprs!7008 lt!2527646)))))

(assert (=> b!7047343 d!2201250))

(declare-fun bs!1875096 () Bool)

(declare-fun d!2201252 () Bool)

(assert (= bs!1875096 (and d!2201252 b!7047338)))

(declare-fun lambda!418118 () Int)

(assert (=> bs!1875096 (= lambda!418118 lambda!418085)))

(assert (=> d!2201252 (= (inv!86640 setElem!49493) (forall!16445 (exprs!7008 setElem!49493) lambda!418118))))

(declare-fun bs!1875097 () Bool)

(assert (= bs!1875097 d!2201252))

(declare-fun m!7761878 () Bool)

(assert (=> bs!1875097 m!7761878))

(assert (=> setNonEmpty!49493 d!2201252))

(declare-fun b!7047451 () Bool)

(declare-fun e!4236669 () (Set Context!13016))

(declare-fun e!4236672 () (Set Context!13016))

(assert (=> b!7047451 (= e!4236669 e!4236672)))

(declare-fun c!1312402 () Bool)

(assert (=> b!7047451 (= c!1312402 (is-Union!17512 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun bm!640334 () Bool)

(declare-fun call!640344 () (Set Context!13016))

(declare-fun call!640340 () (Set Context!13016))

(assert (=> bm!640334 (= call!640344 call!640340)))

(declare-fun b!7047452 () Bool)

(declare-fun call!640341 () (Set Context!13016))

(declare-fun call!640343 () (Set Context!13016))

(assert (=> b!7047452 (= e!4236672 (set.union call!640341 call!640343))))

(declare-fun bm!640335 () Bool)

(declare-fun call!640339 () List!68064)

(assert (=> bm!640335 (= call!640341 (derivationStepZipperDown!2176 (ite c!1312402 (regOne!35537 (h!74388 (exprs!7008 lt!2527646))) (regOne!35536 (h!74388 (exprs!7008 lt!2527646)))) (ite c!1312402 lt!2527625 (Context!13017 call!640339)) (h!74389 s!7408)))))

(declare-fun b!7047453 () Bool)

(declare-fun e!4236673 () (Set Context!13016))

(assert (=> b!7047453 (= e!4236673 call!640344)))

(declare-fun b!7047454 () Bool)

(declare-fun e!4236671 () (Set Context!13016))

(assert (=> b!7047454 (= e!4236671 call!640344)))

(declare-fun b!7047455 () Bool)

(declare-fun c!1312404 () Bool)

(declare-fun e!4236670 () Bool)

(assert (=> b!7047455 (= c!1312404 e!4236670)))

(declare-fun res!2877047 () Bool)

(assert (=> b!7047455 (=> (not res!2877047) (not e!4236670))))

(assert (=> b!7047455 (= res!2877047 (is-Concat!26357 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun e!4236668 () (Set Context!13016))

(assert (=> b!7047455 (= e!4236672 e!4236668)))

(declare-fun b!7047456 () Bool)

(assert (=> b!7047456 (= e!4236668 e!4236671)))

(declare-fun c!1312400 () Bool)

(assert (=> b!7047456 (= c!1312400 (is-Concat!26357 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun b!7047457 () Bool)

(assert (=> b!7047457 (= e!4236670 (nullable!7223 (regOne!35536 (h!74388 (exprs!7008 lt!2527646)))))))

(declare-fun b!7047458 () Bool)

(declare-fun c!1312403 () Bool)

(assert (=> b!7047458 (= c!1312403 (is-Star!17512 (h!74388 (exprs!7008 lt!2527646))))))

(assert (=> b!7047458 (= e!4236671 e!4236673)))

(declare-fun bm!640336 () Bool)

(assert (=> bm!640336 (= call!640340 call!640343)))

(declare-fun call!640342 () List!68064)

(declare-fun bm!640337 () Bool)

(assert (=> bm!640337 (= call!640343 (derivationStepZipperDown!2176 (ite c!1312402 (regTwo!35537 (h!74388 (exprs!7008 lt!2527646))) (ite c!1312404 (regTwo!35536 (h!74388 (exprs!7008 lt!2527646))) (ite c!1312400 (regOne!35536 (h!74388 (exprs!7008 lt!2527646))) (reg!17841 (h!74388 (exprs!7008 lt!2527646)))))) (ite (or c!1312402 c!1312404) lt!2527625 (Context!13017 call!640342)) (h!74389 s!7408)))))

(declare-fun bm!640338 () Bool)

(declare-fun $colon$colon!2607 (List!68064 Regex!17512) List!68064)

(assert (=> bm!640338 (= call!640339 ($colon$colon!2607 (exprs!7008 lt!2527625) (ite (or c!1312404 c!1312400) (regTwo!35536 (h!74388 (exprs!7008 lt!2527646))) (h!74388 (exprs!7008 lt!2527646)))))))

(declare-fun bm!640339 () Bool)

(assert (=> bm!640339 (= call!640342 call!640339)))

(declare-fun b!7047460 () Bool)

(assert (=> b!7047460 (= e!4236668 (set.union call!640341 call!640340))))

(declare-fun b!7047461 () Bool)

(assert (=> b!7047461 (= e!4236673 (as set.empty (Set Context!13016)))))

(declare-fun d!2201254 () Bool)

(declare-fun c!1312401 () Bool)

(assert (=> d!2201254 (= c!1312401 (and (is-ElementMatch!17512 (h!74388 (exprs!7008 lt!2527646))) (= (c!1312370 (h!74388 (exprs!7008 lt!2527646))) (h!74389 s!7408))))))

(assert (=> d!2201254 (= (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527646)) lt!2527625 (h!74389 s!7408)) e!4236669)))

(declare-fun b!7047459 () Bool)

(assert (=> b!7047459 (= e!4236669 (set.insert lt!2527625 (as set.empty (Set Context!13016))))))

(assert (= (and d!2201254 c!1312401) b!7047459))

(assert (= (and d!2201254 (not c!1312401)) b!7047451))

(assert (= (and b!7047451 c!1312402) b!7047452))

(assert (= (and b!7047451 (not c!1312402)) b!7047455))

(assert (= (and b!7047455 res!2877047) b!7047457))

(assert (= (and b!7047455 c!1312404) b!7047460))

(assert (= (and b!7047455 (not c!1312404)) b!7047456))

(assert (= (and b!7047456 c!1312400) b!7047454))

(assert (= (and b!7047456 (not c!1312400)) b!7047458))

(assert (= (and b!7047458 c!1312403) b!7047453))

(assert (= (and b!7047458 (not c!1312403)) b!7047461))

(assert (= (or b!7047454 b!7047453) bm!640339))

(assert (= (or b!7047454 b!7047453) bm!640334))

(assert (= (or b!7047460 bm!640334) bm!640336))

(assert (= (or b!7047460 bm!640339) bm!640338))

(assert (= (or b!7047452 b!7047460) bm!640335))

(assert (= (or b!7047452 bm!640336) bm!640337))

(declare-fun m!7761880 () Bool)

(assert (=> bm!640338 m!7761880))

(declare-fun m!7761882 () Bool)

(assert (=> b!7047457 m!7761882))

(declare-fun m!7761884 () Bool)

(assert (=> bm!640335 m!7761884))

(declare-fun m!7761886 () Bool)

(assert (=> bm!640337 m!7761886))

(declare-fun m!7761888 () Bool)

(assert (=> b!7047459 m!7761888))

(assert (=> b!7047344 d!2201254))

(declare-fun bs!1875098 () Bool)

(declare-fun d!2201256 () Bool)

(assert (= bs!1875098 (and d!2201256 b!7047338)))

(declare-fun lambda!418121 () Int)

(assert (=> bs!1875098 (= lambda!418121 lambda!418085)))

(declare-fun bs!1875099 () Bool)

(assert (= bs!1875099 (and d!2201256 d!2201252)))

(assert (=> bs!1875099 (= lambda!418121 lambda!418118)))

(assert (=> d!2201256 (= (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527646)) (Context!13017 (++!15595 (exprs!7008 lt!2527625) (exprs!7008 ct2!306))) (h!74389 s!7408)) (appendTo!633 (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527646)) lt!2527625 (h!74389 s!7408)) ct2!306))))

(declare-fun lt!2527738 () Unit!161710)

(assert (=> d!2201256 (= lt!2527738 (lemmaConcatPreservesForall!833 (exprs!7008 lt!2527625) (exprs!7008 ct2!306) lambda!418121))))

(declare-fun lt!2527737 () Unit!161710)

(declare-fun choose!53593 (Context!13016 Regex!17512 C!35294 Context!13016) Unit!161710)

(assert (=> d!2201256 (= lt!2527737 (choose!53593 lt!2527625 (h!74388 (exprs!7008 lt!2527646)) (h!74389 s!7408) ct2!306))))

(declare-fun validRegex!8952 (Regex!17512) Bool)

(assert (=> d!2201256 (validRegex!8952 (h!74388 (exprs!7008 lt!2527646)))))

(assert (=> d!2201256 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!89 lt!2527625 (h!74388 (exprs!7008 lt!2527646)) (h!74389 s!7408) ct2!306) lt!2527737)))

(declare-fun bs!1875100 () Bool)

(assert (= bs!1875100 d!2201256))

(assert (=> bs!1875100 m!7761690))

(declare-fun m!7761890 () Bool)

(assert (=> bs!1875100 m!7761890))

(assert (=> bs!1875100 m!7761690))

(declare-fun m!7761892 () Bool)

(assert (=> bs!1875100 m!7761892))

(declare-fun m!7761894 () Bool)

(assert (=> bs!1875100 m!7761894))

(declare-fun m!7761896 () Bool)

(assert (=> bs!1875100 m!7761896))

(declare-fun m!7761898 () Bool)

(assert (=> bs!1875100 m!7761898))

(declare-fun m!7761900 () Bool)

(assert (=> bs!1875100 m!7761900))

(assert (=> b!7047344 d!2201256))

(declare-fun d!2201258 () Bool)

(assert (=> d!2201258 (isDefined!13610 (findConcatSeparationZippers!425 lt!2527627 (set.insert ct2!306 (as set.empty (Set Context!13016))) Nil!67941 (t!381842 s!7408) (t!381842 s!7408)))))

(declare-fun lt!2527741 () Unit!161710)

(declare-fun choose!53594 ((Set Context!13016) Context!13016 List!68065) Unit!161710)

(assert (=> d!2201258 (= lt!2527741 (choose!53594 lt!2527627 ct2!306 (t!381842 s!7408)))))

(assert (=> d!2201258 (matchZipper!3052 (appendTo!633 lt!2527627 ct2!306) (t!381842 s!7408))))

(assert (=> d!2201258 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!413 lt!2527627 ct2!306 (t!381842 s!7408)) lt!2527741)))

(declare-fun bs!1875101 () Bool)

(assert (= bs!1875101 d!2201258))

(assert (=> bs!1875101 m!7761706))

(declare-fun m!7761902 () Bool)

(assert (=> bs!1875101 m!7761902))

(declare-fun m!7761904 () Bool)

(assert (=> bs!1875101 m!7761904))

(assert (=> bs!1875101 m!7761706))

(assert (=> bs!1875101 m!7761902))

(declare-fun m!7761906 () Bool)

(assert (=> bs!1875101 m!7761906))

(assert (=> bs!1875101 m!7761708))

(declare-fun m!7761908 () Bool)

(assert (=> bs!1875101 m!7761908))

(assert (=> bs!1875101 m!7761708))

(assert (=> b!7047344 d!2201258))

(declare-fun b!7047480 () Bool)

(declare-fun lt!2527748 () Unit!161710)

(declare-fun lt!2527750 () Unit!161710)

(assert (=> b!7047480 (= lt!2527748 lt!2527750)))

(assert (=> b!7047480 (= (++!15596 (++!15596 Nil!67941 (Cons!67941 (h!74389 (t!381842 s!7408)) Nil!67941)) (t!381842 (t!381842 s!7408))) (t!381842 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2952 (List!68065 C!35294 List!68065 List!68065) Unit!161710)

(assert (=> b!7047480 (= lt!2527750 (lemmaMoveElementToOtherListKeepsConcatEq!2952 Nil!67941 (h!74389 (t!381842 s!7408)) (t!381842 (t!381842 s!7408)) (t!381842 s!7408)))))

(declare-fun e!4236688 () Option!16909)

(assert (=> b!7047480 (= e!4236688 (findConcatSeparationZippers!425 lt!2527627 lt!2527629 (++!15596 Nil!67941 (Cons!67941 (h!74389 (t!381842 s!7408)) Nil!67941)) (t!381842 (t!381842 s!7408)) (t!381842 s!7408)))))

(declare-fun b!7047481 () Bool)

(declare-fun e!4236687 () Option!16909)

(assert (=> b!7047481 (= e!4236687 (Some!16908 (tuple2!68155 Nil!67941 (t!381842 s!7408))))))

(declare-fun b!7047482 () Bool)

(assert (=> b!7047482 (= e!4236687 e!4236688)))

(declare-fun c!1312410 () Bool)

(assert (=> b!7047482 (= c!1312410 (is-Nil!67941 (t!381842 s!7408)))))

(declare-fun b!7047483 () Bool)

(declare-fun res!2877059 () Bool)

(declare-fun e!4236685 () Bool)

(assert (=> b!7047483 (=> (not res!2877059) (not e!4236685))))

(declare-fun lt!2527749 () Option!16909)

(assert (=> b!7047483 (= res!2877059 (matchZipper!3052 lt!2527629 (_2!37380 (get!23816 lt!2527749))))))

(declare-fun b!7047484 () Bool)

(declare-fun e!4236684 () Bool)

(assert (=> b!7047484 (= e!4236684 (not (isDefined!13610 lt!2527749)))))

(declare-fun b!7047485 () Bool)

(assert (=> b!7047485 (= e!4236688 None!16908)))

(declare-fun d!2201260 () Bool)

(assert (=> d!2201260 e!4236684))

(declare-fun res!2877062 () Bool)

(assert (=> d!2201260 (=> res!2877062 e!4236684)))

(assert (=> d!2201260 (= res!2877062 e!4236685)))

(declare-fun res!2877060 () Bool)

(assert (=> d!2201260 (=> (not res!2877060) (not e!4236685))))

(assert (=> d!2201260 (= res!2877060 (isDefined!13610 lt!2527749))))

(assert (=> d!2201260 (= lt!2527749 e!4236687)))

(declare-fun c!1312411 () Bool)

(declare-fun e!4236686 () Bool)

(assert (=> d!2201260 (= c!1312411 e!4236686)))

(declare-fun res!2877061 () Bool)

(assert (=> d!2201260 (=> (not res!2877061) (not e!4236686))))

(assert (=> d!2201260 (= res!2877061 (matchZipper!3052 lt!2527627 Nil!67941))))

(assert (=> d!2201260 (= (++!15596 Nil!67941 (t!381842 s!7408)) (t!381842 s!7408))))

(assert (=> d!2201260 (= (findConcatSeparationZippers!425 lt!2527627 lt!2527629 Nil!67941 (t!381842 s!7408) (t!381842 s!7408)) lt!2527749)))

(declare-fun b!7047486 () Bool)

(assert (=> b!7047486 (= e!4236686 (matchZipper!3052 lt!2527629 (t!381842 s!7408)))))

(declare-fun b!7047487 () Bool)

(assert (=> b!7047487 (= e!4236685 (= (++!15596 (_1!37380 (get!23816 lt!2527749)) (_2!37380 (get!23816 lt!2527749))) (t!381842 s!7408)))))

(declare-fun b!7047488 () Bool)

(declare-fun res!2877063 () Bool)

(assert (=> b!7047488 (=> (not res!2877063) (not e!4236685))))

(assert (=> b!7047488 (= res!2877063 (matchZipper!3052 lt!2527627 (_1!37380 (get!23816 lt!2527749))))))

(assert (= (and d!2201260 res!2877061) b!7047486))

(assert (= (and d!2201260 c!1312411) b!7047481))

(assert (= (and d!2201260 (not c!1312411)) b!7047482))

(assert (= (and b!7047482 c!1312410) b!7047485))

(assert (= (and b!7047482 (not c!1312410)) b!7047480))

(assert (= (and d!2201260 res!2877060) b!7047488))

(assert (= (and b!7047488 res!2877063) b!7047483))

(assert (= (and b!7047483 res!2877059) b!7047487))

(assert (= (and d!2201260 (not res!2877062)) b!7047484))

(declare-fun m!7761910 () Bool)

(assert (=> b!7047487 m!7761910))

(declare-fun m!7761912 () Bool)

(assert (=> b!7047487 m!7761912))

(declare-fun m!7761914 () Bool)

(assert (=> d!2201260 m!7761914))

(declare-fun m!7761916 () Bool)

(assert (=> d!2201260 m!7761916))

(declare-fun m!7761918 () Bool)

(assert (=> d!2201260 m!7761918))

(declare-fun m!7761920 () Bool)

(assert (=> b!7047480 m!7761920))

(assert (=> b!7047480 m!7761920))

(declare-fun m!7761922 () Bool)

(assert (=> b!7047480 m!7761922))

(declare-fun m!7761924 () Bool)

(assert (=> b!7047480 m!7761924))

(assert (=> b!7047480 m!7761920))

(declare-fun m!7761926 () Bool)

(assert (=> b!7047480 m!7761926))

(declare-fun m!7761928 () Bool)

(assert (=> b!7047486 m!7761928))

(assert (=> b!7047488 m!7761910))

(declare-fun m!7761930 () Bool)

(assert (=> b!7047488 m!7761930))

(assert (=> b!7047483 m!7761910))

(declare-fun m!7761932 () Bool)

(assert (=> b!7047483 m!7761932))

(assert (=> b!7047484 m!7761914))

(assert (=> b!7047344 d!2201260))

(declare-fun d!2201262 () Bool)

(assert (=> d!2201262 (= (get!23816 lt!2527636) (v!53198 lt!2527636))))

(assert (=> b!7047344 d!2201262))

(declare-fun bs!1875102 () Bool)

(declare-fun d!2201264 () Bool)

(assert (= bs!1875102 (and d!2201264 b!7047338)))

(declare-fun lambda!418126 () Int)

(assert (=> bs!1875102 (= lambda!418126 lambda!418084)))

(assert (=> d!2201264 true))

(declare-fun map!15826 ((Set Context!13016) Int) (Set Context!13016))

(assert (=> d!2201264 (= (appendTo!633 lt!2527627 ct2!306) (map!15826 lt!2527627 lambda!418126))))

(declare-fun bs!1875103 () Bool)

(assert (= bs!1875103 d!2201264))

(declare-fun m!7761934 () Bool)

(assert (=> bs!1875103 m!7761934))

(assert (=> b!7047344 d!2201264))

(declare-fun d!2201266 () Bool)

(declare-fun isEmpty!39660 (Option!16909) Bool)

(assert (=> d!2201266 (= (isDefined!13610 lt!2527636) (not (isEmpty!39660 lt!2527636)))))

(declare-fun bs!1875104 () Bool)

(assert (= bs!1875104 d!2201266))

(declare-fun m!7761936 () Bool)

(assert (=> bs!1875104 m!7761936))

(assert (=> b!7047344 d!2201266))

(declare-fun d!2201268 () Bool)

(assert (=> d!2201268 (forall!16445 (++!15595 lt!2527640 (exprs!7008 ct2!306)) lambda!418085)))

(declare-fun lt!2527753 () Unit!161710)

(assert (=> d!2201268 (= lt!2527753 (choose!53592 lt!2527640 (exprs!7008 ct2!306) lambda!418085))))

(assert (=> d!2201268 (forall!16445 lt!2527640 lambda!418085)))

(assert (=> d!2201268 (= (lemmaConcatPreservesForall!833 lt!2527640 (exprs!7008 ct2!306) lambda!418085) lt!2527753)))

(declare-fun bs!1875105 () Bool)

(assert (= bs!1875105 d!2201268))

(assert (=> bs!1875105 m!7761712))

(assert (=> bs!1875105 m!7761712))

(declare-fun m!7761938 () Bool)

(assert (=> bs!1875105 m!7761938))

(declare-fun m!7761940 () Bool)

(assert (=> bs!1875105 m!7761940))

(declare-fun m!7761942 () Bool)

(assert (=> bs!1875105 m!7761942))

(assert (=> b!7047344 d!2201268))

(declare-fun d!2201270 () Bool)

(declare-fun c!1312415 () Bool)

(declare-fun isEmpty!39661 (List!68065) Bool)

(assert (=> d!2201270 (= c!1312415 (isEmpty!39661 (_1!37380 lt!2527632)))))

(declare-fun e!4236691 () Bool)

(assert (=> d!2201270 (= (matchZipper!3052 lt!2527627 (_1!37380 lt!2527632)) e!4236691)))

(declare-fun b!7047493 () Bool)

(declare-fun nullableZipper!2614 ((Set Context!13016)) Bool)

(assert (=> b!7047493 (= e!4236691 (nullableZipper!2614 lt!2527627))))

(declare-fun b!7047494 () Bool)

(declare-fun head!14311 (List!68065) C!35294)

(declare-fun tail!13638 (List!68065) List!68065)

(assert (=> b!7047494 (= e!4236691 (matchZipper!3052 (derivationStepZipper!2968 lt!2527627 (head!14311 (_1!37380 lt!2527632))) (tail!13638 (_1!37380 lt!2527632))))))

(assert (= (and d!2201270 c!1312415) b!7047493))

(assert (= (and d!2201270 (not c!1312415)) b!7047494))

(declare-fun m!7761944 () Bool)

(assert (=> d!2201270 m!7761944))

(declare-fun m!7761946 () Bool)

(assert (=> b!7047493 m!7761946))

(declare-fun m!7761948 () Bool)

(assert (=> b!7047494 m!7761948))

(assert (=> b!7047494 m!7761948))

(declare-fun m!7761950 () Bool)

(assert (=> b!7047494 m!7761950))

(declare-fun m!7761952 () Bool)

(assert (=> b!7047494 m!7761952))

(assert (=> b!7047494 m!7761950))

(assert (=> b!7047494 m!7761952))

(declare-fun m!7761954 () Bool)

(assert (=> b!7047494 m!7761954))

(assert (=> b!7047344 d!2201270))

(declare-fun b!7047495 () Bool)

(declare-fun e!4236694 () (Set Context!13016))

(assert (=> b!7047495 (= e!4236694 (as set.empty (Set Context!13016)))))

(declare-fun b!7047496 () Bool)

(declare-fun e!4236693 () Bool)

(assert (=> b!7047496 (= e!4236693 (nullable!7223 (h!74388 (exprs!7008 lt!2527628))))))

(declare-fun bm!640340 () Bool)

(declare-fun call!640345 () (Set Context!13016))

(assert (=> bm!640340 (= call!640345 (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527628)) (Context!13017 (t!381841 (exprs!7008 lt!2527628))) (h!74389 s!7408)))))

(declare-fun d!2201272 () Bool)

(declare-fun c!1312416 () Bool)

(assert (=> d!2201272 (= c!1312416 e!4236693)))

(declare-fun res!2877064 () Bool)

(assert (=> d!2201272 (=> (not res!2877064) (not e!4236693))))

(assert (=> d!2201272 (= res!2877064 (is-Cons!67940 (exprs!7008 lt!2527628)))))

(declare-fun e!4236692 () (Set Context!13016))

(assert (=> d!2201272 (= (derivationStepZipperUp!2122 lt!2527628 (h!74389 s!7408)) e!4236692)))

(declare-fun b!7047497 () Bool)

(assert (=> b!7047497 (= e!4236692 e!4236694)))

(declare-fun c!1312417 () Bool)

(assert (=> b!7047497 (= c!1312417 (is-Cons!67940 (exprs!7008 lt!2527628)))))

(declare-fun b!7047498 () Bool)

(assert (=> b!7047498 (= e!4236692 (set.union call!640345 (derivationStepZipperUp!2122 (Context!13017 (t!381841 (exprs!7008 lt!2527628))) (h!74389 s!7408))))))

(declare-fun b!7047499 () Bool)

(assert (=> b!7047499 (= e!4236694 call!640345)))

(assert (= (and d!2201272 res!2877064) b!7047496))

(assert (= (and d!2201272 c!1312416) b!7047498))

(assert (= (and d!2201272 (not c!1312416)) b!7047497))

(assert (= (and b!7047497 c!1312417) b!7047499))

(assert (= (and b!7047497 (not c!1312417)) b!7047495))

(assert (= (or b!7047498 b!7047499) bm!640340))

(declare-fun m!7761956 () Bool)

(assert (=> b!7047496 m!7761956))

(declare-fun m!7761958 () Bool)

(assert (=> bm!640340 m!7761958))

(declare-fun m!7761960 () Bool)

(assert (=> b!7047498 m!7761960))

(assert (=> b!7047342 d!2201272))

(declare-fun d!2201274 () Bool)

(assert (=> d!2201274 (= (flatMap!2459 lt!2527630 lambda!418086) (dynLambda!27519 lambda!418086 lt!2527628))))

(declare-fun lt!2527754 () Unit!161710)

(assert (=> d!2201274 (= lt!2527754 (choose!53591 lt!2527630 lt!2527628 lambda!418086))))

(assert (=> d!2201274 (= lt!2527630 (set.insert lt!2527628 (as set.empty (Set Context!13016))))))

(assert (=> d!2201274 (= (lemmaFlatMapOnSingletonSet!1973 lt!2527630 lt!2527628 lambda!418086) lt!2527754)))

(declare-fun b_lambda!267829 () Bool)

(assert (=> (not b_lambda!267829) (not d!2201274)))

(declare-fun bs!1875106 () Bool)

(assert (= bs!1875106 d!2201274))

(assert (=> bs!1875106 m!7761762))

(declare-fun m!7761962 () Bool)

(assert (=> bs!1875106 m!7761962))

(declare-fun m!7761964 () Bool)

(assert (=> bs!1875106 m!7761964))

(assert (=> bs!1875106 m!7761728))

(assert (=> b!7047342 d!2201274))

(assert (=> b!7047342 d!2201248))

(declare-fun bs!1875107 () Bool)

(declare-fun d!2201276 () Bool)

(assert (= bs!1875107 (and d!2201276 b!7047342)))

(declare-fun lambda!418127 () Int)

(assert (=> bs!1875107 (= lambda!418127 lambda!418086)))

(declare-fun bs!1875108 () Bool)

(assert (= bs!1875108 (and d!2201276 d!2201240)))

(assert (=> bs!1875108 (= lambda!418127 lambda!418115)))

(assert (=> d!2201276 true))

(assert (=> d!2201276 (= (derivationStepZipper!2968 lt!2527630 (h!74389 s!7408)) (flatMap!2459 lt!2527630 lambda!418127))))

(declare-fun bs!1875109 () Bool)

(assert (= bs!1875109 d!2201276))

(declare-fun m!7761966 () Bool)

(assert (=> bs!1875109 m!7761966))

(assert (=> b!7047342 d!2201276))

(declare-fun d!2201278 () Bool)

(assert (=> d!2201278 (= (flatMap!2459 lt!2527630 lambda!418086) (choose!53590 lt!2527630 lambda!418086))))

(declare-fun bs!1875110 () Bool)

(assert (= bs!1875110 d!2201278))

(declare-fun m!7761968 () Bool)

(assert (=> bs!1875110 m!7761968))

(assert (=> b!7047342 d!2201278))

(declare-fun d!2201280 () Bool)

(declare-fun c!1312418 () Bool)

(assert (=> d!2201280 (= c!1312418 (isEmpty!39661 (t!381842 s!7408)))))

(declare-fun e!4236695 () Bool)

(assert (=> d!2201280 (= (matchZipper!3052 lt!2527634 (t!381842 s!7408)) e!4236695)))

(declare-fun b!7047500 () Bool)

(assert (=> b!7047500 (= e!4236695 (nullableZipper!2614 lt!2527634))))

(declare-fun b!7047501 () Bool)

(assert (=> b!7047501 (= e!4236695 (matchZipper!3052 (derivationStepZipper!2968 lt!2527634 (head!14311 (t!381842 s!7408))) (tail!13638 (t!381842 s!7408))))))

(assert (= (and d!2201280 c!1312418) b!7047500))

(assert (= (and d!2201280 (not c!1312418)) b!7047501))

(declare-fun m!7761970 () Bool)

(assert (=> d!2201280 m!7761970))

(declare-fun m!7761972 () Bool)

(assert (=> b!7047500 m!7761972))

(declare-fun m!7761974 () Bool)

(assert (=> b!7047501 m!7761974))

(assert (=> b!7047501 m!7761974))

(declare-fun m!7761976 () Bool)

(assert (=> b!7047501 m!7761976))

(declare-fun m!7761978 () Bool)

(assert (=> b!7047501 m!7761978))

(assert (=> b!7047501 m!7761976))

(assert (=> b!7047501 m!7761978))

(declare-fun m!7761980 () Bool)

(assert (=> b!7047501 m!7761980))

(assert (=> b!7047333 d!2201280))

(declare-fun b!7047502 () Bool)

(declare-fun e!4236697 () (Set Context!13016))

(declare-fun e!4236700 () (Set Context!13016))

(assert (=> b!7047502 (= e!4236697 e!4236700)))

(declare-fun c!1312421 () Bool)

(assert (=> b!7047502 (= c!1312421 (is-Union!17512 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun bm!640341 () Bool)

(declare-fun call!640351 () (Set Context!13016))

(declare-fun call!640347 () (Set Context!13016))

(assert (=> bm!640341 (= call!640351 call!640347)))

(declare-fun b!7047503 () Bool)

(declare-fun call!640348 () (Set Context!13016))

(declare-fun call!640350 () (Set Context!13016))

(assert (=> b!7047503 (= e!4236700 (set.union call!640348 call!640350))))

(declare-fun call!640346 () List!68064)

(declare-fun bm!640342 () Bool)

(assert (=> bm!640342 (= call!640348 (derivationStepZipperDown!2176 (ite c!1312421 (regOne!35537 (h!74388 (exprs!7008 lt!2527646))) (regOne!35536 (h!74388 (exprs!7008 lt!2527646)))) (ite c!1312421 (Context!13017 (++!15595 lt!2527640 (exprs!7008 ct2!306))) (Context!13017 call!640346)) (h!74389 s!7408)))))

(declare-fun b!7047504 () Bool)

(declare-fun e!4236701 () (Set Context!13016))

(assert (=> b!7047504 (= e!4236701 call!640351)))

(declare-fun b!7047505 () Bool)

(declare-fun e!4236699 () (Set Context!13016))

(assert (=> b!7047505 (= e!4236699 call!640351)))

(declare-fun b!7047506 () Bool)

(declare-fun c!1312423 () Bool)

(declare-fun e!4236698 () Bool)

(assert (=> b!7047506 (= c!1312423 e!4236698)))

(declare-fun res!2877065 () Bool)

(assert (=> b!7047506 (=> (not res!2877065) (not e!4236698))))

(assert (=> b!7047506 (= res!2877065 (is-Concat!26357 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun e!4236696 () (Set Context!13016))

(assert (=> b!7047506 (= e!4236700 e!4236696)))

(declare-fun b!7047507 () Bool)

(assert (=> b!7047507 (= e!4236696 e!4236699)))

(declare-fun c!1312419 () Bool)

(assert (=> b!7047507 (= c!1312419 (is-Concat!26357 (h!74388 (exprs!7008 lt!2527646))))))

(declare-fun b!7047508 () Bool)

(assert (=> b!7047508 (= e!4236698 (nullable!7223 (regOne!35536 (h!74388 (exprs!7008 lt!2527646)))))))

(declare-fun b!7047509 () Bool)

(declare-fun c!1312422 () Bool)

(assert (=> b!7047509 (= c!1312422 (is-Star!17512 (h!74388 (exprs!7008 lt!2527646))))))

(assert (=> b!7047509 (= e!4236699 e!4236701)))

(declare-fun bm!640343 () Bool)

(assert (=> bm!640343 (= call!640347 call!640350)))

(declare-fun call!640349 () List!68064)

(declare-fun bm!640344 () Bool)

(assert (=> bm!640344 (= call!640350 (derivationStepZipperDown!2176 (ite c!1312421 (regTwo!35537 (h!74388 (exprs!7008 lt!2527646))) (ite c!1312423 (regTwo!35536 (h!74388 (exprs!7008 lt!2527646))) (ite c!1312419 (regOne!35536 (h!74388 (exprs!7008 lt!2527646))) (reg!17841 (h!74388 (exprs!7008 lt!2527646)))))) (ite (or c!1312421 c!1312423) (Context!13017 (++!15595 lt!2527640 (exprs!7008 ct2!306))) (Context!13017 call!640349)) (h!74389 s!7408)))))

(declare-fun bm!640345 () Bool)

(assert (=> bm!640345 (= call!640346 ($colon$colon!2607 (exprs!7008 (Context!13017 (++!15595 lt!2527640 (exprs!7008 ct2!306)))) (ite (or c!1312423 c!1312419) (regTwo!35536 (h!74388 (exprs!7008 lt!2527646))) (h!74388 (exprs!7008 lt!2527646)))))))

(declare-fun bm!640346 () Bool)

(assert (=> bm!640346 (= call!640349 call!640346)))

(declare-fun b!7047511 () Bool)

(assert (=> b!7047511 (= e!4236696 (set.union call!640348 call!640347))))

(declare-fun b!7047512 () Bool)

(assert (=> b!7047512 (= e!4236701 (as set.empty (Set Context!13016)))))

(declare-fun d!2201282 () Bool)

(declare-fun c!1312420 () Bool)

(assert (=> d!2201282 (= c!1312420 (and (is-ElementMatch!17512 (h!74388 (exprs!7008 lt!2527646))) (= (c!1312370 (h!74388 (exprs!7008 lt!2527646))) (h!74389 s!7408))))))

(assert (=> d!2201282 (= (derivationStepZipperDown!2176 (h!74388 (exprs!7008 lt!2527646)) (Context!13017 (++!15595 lt!2527640 (exprs!7008 ct2!306))) (h!74389 s!7408)) e!4236697)))

(declare-fun b!7047510 () Bool)

(assert (=> b!7047510 (= e!4236697 (set.insert (Context!13017 (++!15595 lt!2527640 (exprs!7008 ct2!306))) (as set.empty (Set Context!13016))))))

(assert (= (and d!2201282 c!1312420) b!7047510))

(assert (= (and d!2201282 (not c!1312420)) b!7047502))

(assert (= (and b!7047502 c!1312421) b!7047503))

(assert (= (and b!7047502 (not c!1312421)) b!7047506))

(assert (= (and b!7047506 res!2877065) b!7047508))

(assert (= (and b!7047506 c!1312423) b!7047511))

(assert (= (and b!7047506 (not c!1312423)) b!7047507))

(assert (= (and b!7047507 c!1312419) b!7047505))

(assert (= (and b!7047507 (not c!1312419)) b!7047509))

(assert (= (and b!7047509 c!1312422) b!7047504))

(assert (= (and b!7047509 (not c!1312422)) b!7047512))

(assert (= (or b!7047505 b!7047504) bm!640346))

(assert (= (or b!7047505 b!7047504) bm!640341))

(assert (= (or b!7047511 bm!640341) bm!640343))

(assert (= (or b!7047511 bm!640346) bm!640345))

(assert (= (or b!7047503 b!7047511) bm!640342))

(assert (= (or b!7047503 bm!640343) bm!640344))

(declare-fun m!7761982 () Bool)

(assert (=> bm!640345 m!7761982))

(assert (=> b!7047508 m!7761882))

(declare-fun m!7761984 () Bool)

(assert (=> bm!640342 m!7761984))

(declare-fun m!7761986 () Bool)

(assert (=> bm!640344 m!7761986))

(declare-fun m!7761988 () Bool)

(assert (=> b!7047510 m!7761988))

(assert (=> b!7047333 d!2201282))

(declare-fun b!7047523 () Bool)

(declare-fun res!2877071 () Bool)

(declare-fun e!4236707 () Bool)

(assert (=> b!7047523 (=> (not res!2877071) (not e!4236707))))

(declare-fun lt!2527757 () List!68064)

(declare-fun size!41118 (List!68064) Int)

(assert (=> b!7047523 (= res!2877071 (= (size!41118 lt!2527757) (+ (size!41118 lt!2527640) (size!41118 (exprs!7008 ct2!306)))))))

(declare-fun b!7047524 () Bool)

(assert (=> b!7047524 (= e!4236707 (or (not (= (exprs!7008 ct2!306) Nil!67940)) (= lt!2527757 lt!2527640)))))

(declare-fun b!7047522 () Bool)

(declare-fun e!4236706 () List!68064)

(assert (=> b!7047522 (= e!4236706 (Cons!67940 (h!74388 lt!2527640) (++!15595 (t!381841 lt!2527640) (exprs!7008 ct2!306))))))

(declare-fun d!2201284 () Bool)

(assert (=> d!2201284 e!4236707))

(declare-fun res!2877070 () Bool)

(assert (=> d!2201284 (=> (not res!2877070) (not e!4236707))))

(declare-fun content!13620 (List!68064) (Set Regex!17512))

(assert (=> d!2201284 (= res!2877070 (= (content!13620 lt!2527757) (set.union (content!13620 lt!2527640) (content!13620 (exprs!7008 ct2!306)))))))

(assert (=> d!2201284 (= lt!2527757 e!4236706)))

(declare-fun c!1312426 () Bool)

(assert (=> d!2201284 (= c!1312426 (is-Nil!67940 lt!2527640))))

(assert (=> d!2201284 (= (++!15595 lt!2527640 (exprs!7008 ct2!306)) lt!2527757)))

(declare-fun b!7047521 () Bool)

(assert (=> b!7047521 (= e!4236706 (exprs!7008 ct2!306))))

(assert (= (and d!2201284 c!1312426) b!7047521))

(assert (= (and d!2201284 (not c!1312426)) b!7047522))

(assert (= (and d!2201284 res!2877070) b!7047523))

(assert (= (and b!7047523 res!2877071) b!7047524))

(declare-fun m!7761990 () Bool)

(assert (=> b!7047523 m!7761990))

(declare-fun m!7761992 () Bool)

(assert (=> b!7047523 m!7761992))

(declare-fun m!7761994 () Bool)

(assert (=> b!7047523 m!7761994))

(declare-fun m!7761996 () Bool)

(assert (=> b!7047522 m!7761996))

(declare-fun m!7761998 () Bool)

(assert (=> d!2201284 m!7761998))

(declare-fun m!7762000 () Bool)

(assert (=> d!2201284 m!7762000))

(declare-fun m!7762002 () Bool)

(assert (=> d!2201284 m!7762002))

(assert (=> b!7047333 d!2201284))

(assert (=> b!7047333 d!2201268))

(declare-fun d!2201286 () Bool)

(declare-fun c!1312427 () Bool)

(assert (=> d!2201286 (= c!1312427 (isEmpty!39661 s!7408))))

(declare-fun e!4236708 () Bool)

(assert (=> d!2201286 (= (matchZipper!3052 lt!2527641 s!7408) e!4236708)))

(declare-fun b!7047525 () Bool)

(assert (=> b!7047525 (= e!4236708 (nullableZipper!2614 lt!2527641))))

(declare-fun b!7047526 () Bool)

(assert (=> b!7047526 (= e!4236708 (matchZipper!3052 (derivationStepZipper!2968 lt!2527641 (head!14311 s!7408)) (tail!13638 s!7408)))))

(assert (= (and d!2201286 c!1312427) b!7047525))

(assert (= (and d!2201286 (not c!1312427)) b!7047526))

(declare-fun m!7762004 () Bool)

(assert (=> d!2201286 m!7762004))

(declare-fun m!7762006 () Bool)

(assert (=> b!7047525 m!7762006))

(declare-fun m!7762008 () Bool)

(assert (=> b!7047526 m!7762008))

(assert (=> b!7047526 m!7762008))

(declare-fun m!7762010 () Bool)

(assert (=> b!7047526 m!7762010))

(declare-fun m!7762012 () Bool)

(assert (=> b!7047526 m!7762012))

(assert (=> b!7047526 m!7762010))

(assert (=> b!7047526 m!7762012))

(declare-fun m!7762014 () Bool)

(assert (=> b!7047526 m!7762014))

(assert (=> b!7047336 d!2201286))

(declare-fun bs!1875111 () Bool)

(declare-fun d!2201288 () Bool)

(assert (= bs!1875111 (and d!2201288 b!7047336)))

(declare-fun lambda!418130 () Int)

(assert (=> bs!1875111 (= lambda!418130 lambda!418083)))

(assert (=> d!2201288 true))

(assert (=> d!2201288 (exists!3471 lt!2527638 lambda!418130)))

(declare-fun lt!2527760 () Unit!161710)

(declare-fun choose!53595 (List!68066 List!68065) Unit!161710)

(assert (=> d!2201288 (= lt!2527760 (choose!53595 lt!2527638 s!7408))))

(declare-fun content!13621 (List!68066) (Set Context!13016))

(assert (=> d!2201288 (matchZipper!3052 (content!13621 lt!2527638) s!7408)))

(assert (=> d!2201288 (= (lemmaZipperMatchesExistsMatchingContext!451 lt!2527638 s!7408) lt!2527760)))

(declare-fun bs!1875112 () Bool)

(assert (= bs!1875112 d!2201288))

(declare-fun m!7762016 () Bool)

(assert (=> bs!1875112 m!7762016))

(declare-fun m!7762018 () Bool)

(assert (=> bs!1875112 m!7762018))

(declare-fun m!7762020 () Bool)

(assert (=> bs!1875112 m!7762020))

(assert (=> bs!1875112 m!7762020))

(declare-fun m!7762022 () Bool)

(assert (=> bs!1875112 m!7762022))

(assert (=> b!7047336 d!2201288))

(declare-fun d!2201290 () Bool)

(declare-fun e!4236711 () Bool)

(assert (=> d!2201290 e!4236711))

(declare-fun res!2877074 () Bool)

(assert (=> d!2201290 (=> (not res!2877074) (not e!4236711))))

(declare-fun lt!2527763 () List!68066)

(declare-fun noDuplicate!2659 (List!68066) Bool)

(assert (=> d!2201290 (= res!2877074 (noDuplicate!2659 lt!2527763))))

(declare-fun choose!53596 ((Set Context!13016)) List!68066)

(assert (=> d!2201290 (= lt!2527763 (choose!53596 lt!2527644))))

(assert (=> d!2201290 (= (toList!10855 lt!2527644) lt!2527763)))

(declare-fun b!7047529 () Bool)

(assert (=> b!7047529 (= e!4236711 (= (content!13621 lt!2527763) lt!2527644))))

(assert (= (and d!2201290 res!2877074) b!7047529))

(declare-fun m!7762024 () Bool)

(assert (=> d!2201290 m!7762024))

(declare-fun m!7762026 () Bool)

(assert (=> d!2201290 m!7762026))

(declare-fun m!7762028 () Bool)

(assert (=> b!7047529 m!7762028))

(assert (=> b!7047336 d!2201290))

(declare-fun bs!1875113 () Bool)

(declare-fun d!2201292 () Bool)

(assert (= bs!1875113 (and d!2201292 b!7047336)))

(declare-fun lambda!418133 () Int)

(assert (=> bs!1875113 (not (= lambda!418133 lambda!418083))))

(declare-fun bs!1875114 () Bool)

(assert (= bs!1875114 (and d!2201292 d!2201288)))

(assert (=> bs!1875114 (not (= lambda!418133 lambda!418130))))

(assert (=> d!2201292 true))

(declare-fun order!28245 () Int)

(declare-fun dynLambda!27520 (Int Int) Int)

(assert (=> d!2201292 (< (dynLambda!27520 order!28245 lambda!418083) (dynLambda!27520 order!28245 lambda!418133))))

(declare-fun forall!16446 (List!68066 Int) Bool)

(assert (=> d!2201292 (= (exists!3471 lt!2527638 lambda!418083) (not (forall!16446 lt!2527638 lambda!418133)))))

(declare-fun bs!1875115 () Bool)

(assert (= bs!1875115 d!2201292))

(declare-fun m!7762030 () Bool)

(assert (=> bs!1875115 m!7762030))

(assert (=> b!7047336 d!2201292))

(declare-fun d!2201294 () Bool)

(declare-fun e!4236714 () Bool)

(assert (=> d!2201294 e!4236714))

(declare-fun res!2877077 () Bool)

(assert (=> d!2201294 (=> (not res!2877077) (not e!4236714))))

(declare-fun lt!2527766 () Context!13016)

(declare-fun dynLambda!27521 (Int Context!13016) Bool)

(assert (=> d!2201294 (= res!2877077 (dynLambda!27521 lambda!418083 lt!2527766))))

(declare-fun getWitness!1552 (List!68066 Int) Context!13016)

(assert (=> d!2201294 (= lt!2527766 (getWitness!1552 (toList!10855 lt!2527644) lambda!418083))))

(declare-fun exists!3473 ((Set Context!13016) Int) Bool)

(assert (=> d!2201294 (exists!3473 lt!2527644 lambda!418083)))

(assert (=> d!2201294 (= (getWitness!1550 lt!2527644 lambda!418083) lt!2527766)))

(declare-fun b!7047534 () Bool)

(assert (=> b!7047534 (= e!4236714 (set.member lt!2527766 lt!2527644))))

(assert (= (and d!2201294 res!2877077) b!7047534))

(declare-fun b_lambda!267831 () Bool)

(assert (=> (not b_lambda!267831) (not d!2201294)))

(declare-fun m!7762032 () Bool)

(assert (=> d!2201294 m!7762032))

(assert (=> d!2201294 m!7761720))

(assert (=> d!2201294 m!7761720))

(declare-fun m!7762034 () Bool)

(assert (=> d!2201294 m!7762034))

(declare-fun m!7762036 () Bool)

(assert (=> d!2201294 m!7762036))

(declare-fun m!7762038 () Bool)

(assert (=> b!7047534 m!7762038))

(assert (=> b!7047336 d!2201294))

(declare-fun b!7047537 () Bool)

(declare-fun res!2877079 () Bool)

(declare-fun e!4236716 () Bool)

(assert (=> b!7047537 (=> (not res!2877079) (not e!4236716))))

(declare-fun lt!2527767 () List!68064)

(assert (=> b!7047537 (= res!2877079 (= (size!41118 lt!2527767) (+ (size!41118 (exprs!7008 lt!2527646)) (size!41118 (exprs!7008 ct2!306)))))))

(declare-fun b!7047538 () Bool)

(assert (=> b!7047538 (= e!4236716 (or (not (= (exprs!7008 ct2!306) Nil!67940)) (= lt!2527767 (exprs!7008 lt!2527646))))))

(declare-fun b!7047536 () Bool)

(declare-fun e!4236715 () List!68064)

(assert (=> b!7047536 (= e!4236715 (Cons!67940 (h!74388 (exprs!7008 lt!2527646)) (++!15595 (t!381841 (exprs!7008 lt!2527646)) (exprs!7008 ct2!306))))))

(declare-fun d!2201296 () Bool)

(assert (=> d!2201296 e!4236716))

(declare-fun res!2877078 () Bool)

(assert (=> d!2201296 (=> (not res!2877078) (not e!4236716))))

(assert (=> d!2201296 (= res!2877078 (= (content!13620 lt!2527767) (set.union (content!13620 (exprs!7008 lt!2527646)) (content!13620 (exprs!7008 ct2!306)))))))

(assert (=> d!2201296 (= lt!2527767 e!4236715)))

(declare-fun c!1312430 () Bool)

(assert (=> d!2201296 (= c!1312430 (is-Nil!67940 (exprs!7008 lt!2527646)))))

(assert (=> d!2201296 (= (++!15595 (exprs!7008 lt!2527646) (exprs!7008 ct2!306)) lt!2527767)))

(declare-fun b!7047535 () Bool)

(assert (=> b!7047535 (= e!4236715 (exprs!7008 ct2!306))))

(assert (= (and d!2201296 c!1312430) b!7047535))

(assert (= (and d!2201296 (not c!1312430)) b!7047536))

(assert (= (and d!2201296 res!2877078) b!7047537))

(assert (= (and b!7047537 res!2877079) b!7047538))

(declare-fun m!7762040 () Bool)

(assert (=> b!7047537 m!7762040))

(declare-fun m!7762042 () Bool)

(assert (=> b!7047537 m!7762042))

(assert (=> b!7047537 m!7761994))

(declare-fun m!7762044 () Bool)

(assert (=> b!7047536 m!7762044))

(declare-fun m!7762046 () Bool)

(assert (=> d!2201296 m!7762046))

(declare-fun m!7762048 () Bool)

(assert (=> d!2201296 m!7762048))

(assert (=> d!2201296 m!7762002))

(assert (=> b!7047338 d!2201296))

(assert (=> b!7047338 d!2201248))

(declare-fun d!2201298 () Bool)

(declare-fun e!4236719 () Bool)

(assert (=> d!2201298 e!4236719))

(declare-fun res!2877082 () Bool)

(assert (=> d!2201298 (=> (not res!2877082) (not e!4236719))))

(declare-fun lt!2527770 () Context!13016)

(declare-fun dynLambda!27522 (Int Context!13016) Context!13016)

(assert (=> d!2201298 (= res!2877082 (= lt!2527642 (dynLambda!27522 lambda!418084 lt!2527770)))))

(declare-fun choose!53597 ((Set Context!13016) Int Context!13016) Context!13016)

(assert (=> d!2201298 (= lt!2527770 (choose!53597 z1!570 lambda!418084 lt!2527642))))

(assert (=> d!2201298 (set.member lt!2527642 (map!15826 z1!570 lambda!418084))))

(assert (=> d!2201298 (= (mapPost2!353 z1!570 lambda!418084 lt!2527642) lt!2527770)))

(declare-fun b!7047542 () Bool)

(assert (=> b!7047542 (= e!4236719 (set.member lt!2527770 z1!570))))

(assert (= (and d!2201298 res!2877082) b!7047542))

(declare-fun b_lambda!267833 () Bool)

(assert (=> (not b_lambda!267833) (not d!2201298)))

(declare-fun m!7762050 () Bool)

(assert (=> d!2201298 m!7762050))

(declare-fun m!7762052 () Bool)

(assert (=> d!2201298 m!7762052))

(declare-fun m!7762054 () Bool)

(assert (=> d!2201298 m!7762054))

(declare-fun m!7762056 () Bool)

(assert (=> d!2201298 m!7762056))

(declare-fun m!7762058 () Bool)

(assert (=> b!7047542 m!7762058))

(assert (=> b!7047338 d!2201298))

(declare-fun d!2201300 () Bool)

(declare-fun c!1312431 () Bool)

(assert (=> d!2201300 (= c!1312431 (isEmpty!39661 s!7408))))

(declare-fun e!4236720 () Bool)

(assert (=> d!2201300 (= (matchZipper!3052 lt!2527644 s!7408) e!4236720)))

(declare-fun b!7047543 () Bool)

(assert (=> b!7047543 (= e!4236720 (nullableZipper!2614 lt!2527644))))

(declare-fun b!7047544 () Bool)

(assert (=> b!7047544 (= e!4236720 (matchZipper!3052 (derivationStepZipper!2968 lt!2527644 (head!14311 s!7408)) (tail!13638 s!7408)))))

(assert (= (and d!2201300 c!1312431) b!7047543))

(assert (= (and d!2201300 (not c!1312431)) b!7047544))

(assert (=> d!2201300 m!7762004))

(declare-fun m!7762060 () Bool)

(assert (=> b!7047543 m!7762060))

(assert (=> b!7047544 m!7762008))

(assert (=> b!7047544 m!7762008))

(declare-fun m!7762062 () Bool)

(assert (=> b!7047544 m!7762062))

(assert (=> b!7047544 m!7762012))

(assert (=> b!7047544 m!7762062))

(assert (=> b!7047544 m!7762012))

(declare-fun m!7762064 () Bool)

(assert (=> b!7047544 m!7762064))

(assert (=> start!682344 d!2201300))

(declare-fun bs!1875116 () Bool)

(declare-fun d!2201302 () Bool)

(assert (= bs!1875116 (and d!2201302 b!7047338)))

(declare-fun lambda!418134 () Int)

(assert (=> bs!1875116 (= lambda!418134 lambda!418084)))

(declare-fun bs!1875117 () Bool)

(assert (= bs!1875117 (and d!2201302 d!2201264)))

(assert (=> bs!1875117 (= lambda!418134 lambda!418126)))

(assert (=> d!2201302 true))

(assert (=> d!2201302 (= (appendTo!633 z1!570 ct2!306) (map!15826 z1!570 lambda!418134))))

(declare-fun bs!1875118 () Bool)

(assert (= bs!1875118 d!2201302))

(declare-fun m!7762066 () Bool)

(assert (=> bs!1875118 m!7762066))

(assert (=> start!682344 d!2201302))

(declare-fun bs!1875119 () Bool)

(declare-fun d!2201304 () Bool)

(assert (= bs!1875119 (and d!2201304 b!7047338)))

(declare-fun lambda!418135 () Int)

(assert (=> bs!1875119 (= lambda!418135 lambda!418085)))

(declare-fun bs!1875120 () Bool)

(assert (= bs!1875120 (and d!2201304 d!2201252)))

(assert (=> bs!1875120 (= lambda!418135 lambda!418118)))

(declare-fun bs!1875121 () Bool)

(assert (= bs!1875121 (and d!2201304 d!2201256)))

(assert (=> bs!1875121 (= lambda!418135 lambda!418121)))

(assert (=> d!2201304 (= (inv!86640 ct2!306) (forall!16445 (exprs!7008 ct2!306) lambda!418135))))

(declare-fun bs!1875122 () Bool)

(assert (= bs!1875122 d!2201304))

(declare-fun m!7762068 () Bool)

(assert (=> bs!1875122 m!7762068))

(assert (=> start!682344 d!2201304))

(declare-fun b!7047556 () Bool)

(declare-fun e!4236725 () Bool)

(declare-fun lt!2527773 () List!68065)

(assert (=> b!7047556 (= e!4236725 (or (not (= (_2!37380 lt!2527632) Nil!67941)) (= lt!2527773 (_1!37380 lt!2527632))))))

(declare-fun b!7047554 () Bool)

(declare-fun e!4236726 () List!68065)

(assert (=> b!7047554 (= e!4236726 (Cons!67941 (h!74389 (_1!37380 lt!2527632)) (++!15596 (t!381842 (_1!37380 lt!2527632)) (_2!37380 lt!2527632))))))

(declare-fun d!2201306 () Bool)

(assert (=> d!2201306 e!4236725))

(declare-fun res!2877087 () Bool)

(assert (=> d!2201306 (=> (not res!2877087) (not e!4236725))))

(declare-fun content!13622 (List!68065) (Set C!35294))

(assert (=> d!2201306 (= res!2877087 (= (content!13622 lt!2527773) (set.union (content!13622 (_1!37380 lt!2527632)) (content!13622 (_2!37380 lt!2527632)))))))

(assert (=> d!2201306 (= lt!2527773 e!4236726)))

(declare-fun c!1312434 () Bool)

(assert (=> d!2201306 (= c!1312434 (is-Nil!67941 (_1!37380 lt!2527632)))))

(assert (=> d!2201306 (= (++!15596 (_1!37380 lt!2527632) (_2!37380 lt!2527632)) lt!2527773)))

(declare-fun b!7047553 () Bool)

(assert (=> b!7047553 (= e!4236726 (_2!37380 lt!2527632))))

(declare-fun b!7047555 () Bool)

(declare-fun res!2877088 () Bool)

(assert (=> b!7047555 (=> (not res!2877088) (not e!4236725))))

(declare-fun size!41119 (List!68065) Int)

(assert (=> b!7047555 (= res!2877088 (= (size!41119 lt!2527773) (+ (size!41119 (_1!37380 lt!2527632)) (size!41119 (_2!37380 lt!2527632)))))))

(assert (= (and d!2201306 c!1312434) b!7047553))

(assert (= (and d!2201306 (not c!1312434)) b!7047554))

(assert (= (and d!2201306 res!2877087) b!7047555))

(assert (= (and b!7047555 res!2877088) b!7047556))

(declare-fun m!7762070 () Bool)

(assert (=> b!7047554 m!7762070))

(declare-fun m!7762072 () Bool)

(assert (=> d!2201306 m!7762072))

(declare-fun m!7762074 () Bool)

(assert (=> d!2201306 m!7762074))

(declare-fun m!7762076 () Bool)

(assert (=> d!2201306 m!7762076))

(declare-fun m!7762078 () Bool)

(assert (=> b!7047555 m!7762078))

(declare-fun m!7762080 () Bool)

(assert (=> b!7047555 m!7762080))

(declare-fun m!7762082 () Bool)

(assert (=> b!7047555 m!7762082))

(assert (=> b!7047347 d!2201306))

(declare-fun d!2201310 () Bool)

(declare-fun c!1312435 () Bool)

(assert (=> d!2201310 (= c!1312435 (isEmpty!39661 (_2!37380 lt!2527632)))))

(declare-fun e!4236727 () Bool)

(assert (=> d!2201310 (= (matchZipper!3052 lt!2527629 (_2!37380 lt!2527632)) e!4236727)))

(declare-fun b!7047557 () Bool)

(assert (=> b!7047557 (= e!4236727 (nullableZipper!2614 lt!2527629))))

(declare-fun b!7047558 () Bool)

(assert (=> b!7047558 (= e!4236727 (matchZipper!3052 (derivationStepZipper!2968 lt!2527629 (head!14311 (_2!37380 lt!2527632))) (tail!13638 (_2!37380 lt!2527632))))))

(assert (= (and d!2201310 c!1312435) b!7047557))

(assert (= (and d!2201310 (not c!1312435)) b!7047558))

(declare-fun m!7762084 () Bool)

(assert (=> d!2201310 m!7762084))

(declare-fun m!7762086 () Bool)

(assert (=> b!7047557 m!7762086))

(declare-fun m!7762088 () Bool)

(assert (=> b!7047558 m!7762088))

(assert (=> b!7047558 m!7762088))

(declare-fun m!7762090 () Bool)

(assert (=> b!7047558 m!7762090))

(declare-fun m!7762092 () Bool)

(assert (=> b!7047558 m!7762092))

(assert (=> b!7047558 m!7762090))

(assert (=> b!7047558 m!7762092))

(declare-fun m!7762094 () Bool)

(assert (=> b!7047558 m!7762094))

(assert (=> b!7047337 d!2201310))

(declare-fun b!7047563 () Bool)

(declare-fun e!4236730 () Bool)

(declare-fun tp!1938248 () Bool)

(declare-fun tp!1938249 () Bool)

(assert (=> b!7047563 (= e!4236730 (and tp!1938248 tp!1938249))))

(assert (=> b!7047335 (= tp!1938231 e!4236730)))

(assert (= (and b!7047335 (is-Cons!67940 (exprs!7008 setElem!49493))) b!7047563))

(declare-fun b!7047568 () Bool)

(declare-fun e!4236733 () Bool)

(declare-fun tp!1938252 () Bool)

(assert (=> b!7047568 (= e!4236733 (and tp_is_empty!44249 tp!1938252))))

(assert (=> b!7047346 (= tp!1938228 e!4236733)))

(assert (= (and b!7047346 (is-Cons!67941 (t!381842 s!7408))) b!7047568))

(declare-fun b!7047569 () Bool)

(declare-fun e!4236734 () Bool)

(declare-fun tp!1938253 () Bool)

(declare-fun tp!1938254 () Bool)

(assert (=> b!7047569 (= e!4236734 (and tp!1938253 tp!1938254))))

(assert (=> b!7047345 (= tp!1938229 e!4236734)))

(assert (= (and b!7047345 (is-Cons!67940 (exprs!7008 ct2!306))) b!7047569))

(declare-fun condSetEmpty!49499 () Bool)

(assert (=> setNonEmpty!49493 (= condSetEmpty!49499 (= setRest!49493 (as set.empty (Set Context!13016))))))

(declare-fun setRes!49499 () Bool)

(assert (=> setNonEmpty!49493 (= tp!1938230 setRes!49499)))

(declare-fun setIsEmpty!49499 () Bool)

(assert (=> setIsEmpty!49499 setRes!49499))

(declare-fun setElem!49499 () Context!13016)

(declare-fun tp!1938259 () Bool)

(declare-fun e!4236739 () Bool)

(declare-fun setNonEmpty!49499 () Bool)

(assert (=> setNonEmpty!49499 (= setRes!49499 (and tp!1938259 (inv!86640 setElem!49499) e!4236739))))

(declare-fun setRest!49499 () (Set Context!13016))

(assert (=> setNonEmpty!49499 (= setRest!49493 (set.union (set.insert setElem!49499 (as set.empty (Set Context!13016))) setRest!49499))))

(declare-fun b!7047576 () Bool)

(declare-fun tp!1938260 () Bool)

(assert (=> b!7047576 (= e!4236739 tp!1938260)))

(assert (= (and setNonEmpty!49493 condSetEmpty!49499) setIsEmpty!49499))

(assert (= (and setNonEmpty!49493 (not condSetEmpty!49499)) setNonEmpty!49499))

(assert (= setNonEmpty!49499 b!7047576))

(declare-fun m!7762096 () Bool)

(assert (=> setNonEmpty!49499 m!7762096))

(declare-fun b_lambda!267835 () Bool)

(assert (= b_lambda!267833 (or b!7047338 b_lambda!267835)))

(declare-fun bs!1875123 () Bool)

(declare-fun d!2201312 () Bool)

(assert (= bs!1875123 (and d!2201312 b!7047338)))

(declare-fun lt!2527776 () Unit!161710)

(assert (=> bs!1875123 (= lt!2527776 (lemmaConcatPreservesForall!833 (exprs!7008 lt!2527770) (exprs!7008 ct2!306) lambda!418085))))

(assert (=> bs!1875123 (= (dynLambda!27522 lambda!418084 lt!2527770) (Context!13017 (++!15595 (exprs!7008 lt!2527770) (exprs!7008 ct2!306))))))

(declare-fun m!7762098 () Bool)

(assert (=> bs!1875123 m!7762098))

(declare-fun m!7762100 () Bool)

(assert (=> bs!1875123 m!7762100))

(assert (=> d!2201298 d!2201312))

(declare-fun b_lambda!267837 () Bool)

(assert (= b_lambda!267829 (or b!7047342 b_lambda!267837)))

(declare-fun bs!1875124 () Bool)

(declare-fun d!2201314 () Bool)

(assert (= bs!1875124 (and d!2201314 b!7047342)))

(assert (=> bs!1875124 (= (dynLambda!27519 lambda!418086 lt!2527628) (derivationStepZipperUp!2122 lt!2527628 (h!74389 s!7408)))))

(assert (=> bs!1875124 m!7761760))

(assert (=> d!2201274 d!2201314))

(declare-fun b_lambda!267839 () Bool)

(assert (= b_lambda!267831 (or b!7047336 b_lambda!267839)))

(declare-fun bs!1875125 () Bool)

(declare-fun d!2201316 () Bool)

(assert (= bs!1875125 (and d!2201316 b!7047336)))

(assert (=> bs!1875125 (= (dynLambda!27521 lambda!418083 lt!2527766) (matchZipper!3052 (set.insert lt!2527766 (as set.empty (Set Context!13016))) s!7408))))

(declare-fun m!7762102 () Bool)

(assert (=> bs!1875125 m!7762102))

(assert (=> bs!1875125 m!7762102))

(declare-fun m!7762104 () Bool)

(assert (=> bs!1875125 m!7762104))

(assert (=> d!2201294 d!2201316))

(declare-fun b_lambda!267841 () Bool)

(assert (= b_lambda!267827 (or b!7047342 b_lambda!267841)))

(declare-fun bs!1875126 () Bool)

(declare-fun d!2201318 () Bool)

(assert (= bs!1875126 (and d!2201318 b!7047342)))

(assert (=> bs!1875126 (= (dynLambda!27519 lambda!418086 lt!2527646) (derivationStepZipperUp!2122 lt!2527646 (h!74389 s!7408)))))

(assert (=> bs!1875126 m!7761754))

(assert (=> d!2201246 d!2201318))

(push 1)

(assert (not d!2201248))

(assert (not d!2201298))

(assert (not b!7047427))

(assert tp_is_empty!44249)

(assert (not bm!640345))

(assert (not d!2201300))

(assert (not d!2201266))

(assert (not b!7047484))

(assert (not b!7047544))

(assert (not b!7047529))

(assert (not b!7047486))

(assert (not b!7047487))

(assert (not b!7047554))

(assert (not b!7047498))

(assert (not b!7047576))

(assert (not b!7047537))

(assert (not bs!1875125))

(assert (not b_lambda!267835))

(assert (not d!2201284))

(assert (not d!2201304))

(assert (not bm!640338))

(assert (not d!2201256))

(assert (not d!2201286))

(assert (not b!7047563))

(assert (not bm!640342))

(assert (not b!7047569))

(assert (not d!2201270))

(assert (not b!7047543))

(assert (not bm!640344))

(assert (not d!2201236))

(assert (not d!2201252))

(assert (not b_lambda!267839))

(assert (not d!2201288))

(assert (not b!7047568))

(assert (not b!7047508))

(assert (not b_lambda!267837))

(assert (not b!7047523))

(assert (not bm!640337))

(assert (not d!2201306))

(assert (not b!7047425))

(assert (not d!2201296))

(assert (not b!7047557))

(assert (not b!7047536))

(assert (not d!2201244))

(assert (not b!7047558))

(assert (not b!7047501))

(assert (not d!2201280))

(assert (not d!2201258))

(assert (not b_lambda!267841))

(assert (not d!2201260))

(assert (not bm!640335))

(assert (not d!2201240))

(assert (not b!7047488))

(assert (not b!7047555))

(assert (not b!7047522))

(assert (not b!7047457))

(assert (not d!2201246))

(assert (not bs!1875124))

(assert (not d!2201278))

(assert (not b!7047525))

(assert (not d!2201294))

(assert (not d!2201302))

(assert (not d!2201290))

(assert (not d!2201264))

(assert (not d!2201310))

(assert (not b!7047483))

(assert (not b!7047496))

(assert (not setNonEmpty!49499))

(assert (not b!7047493))

(assert (not bm!640340))

(assert (not b!7047480))

(assert (not b!7047494))

(assert (not b!7047526))

(assert (not d!2201268))

(assert (not d!2201274))

(assert (not bs!1875123))

(assert (not bs!1875126))

(assert (not d!2201292))

(assert (not b!7047500))

(assert (not bm!640321))

(assert (not d!2201276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


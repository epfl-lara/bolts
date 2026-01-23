; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671064 () Bool)

(assert start!671064)

(declare-fun b!6986466 () Bool)

(assert (=> b!6986466 true))

(declare-fun b!6986472 () Bool)

(assert (=> b!6986472 true))

(declare-fun b!6986481 () Bool)

(assert (=> b!6986481 true))

(declare-fun b!6986463 () Bool)

(declare-fun e!4199111 () Bool)

(declare-datatypes ((C!34670 0))(
  ( (C!34671 (val!27037 Int)) )
))
(declare-datatypes ((Regex!17200 0))(
  ( (ElementMatch!17200 (c!1295577 C!34670)) (Concat!26045 (regOne!34912 Regex!17200) (regTwo!34912 Regex!17200)) (EmptyExpr!17200) (Star!17200 (reg!17529 Regex!17200)) (EmptyLang!17200) (Union!17200 (regOne!34913 Regex!17200) (regTwo!34913 Regex!17200)) )
))
(declare-datatypes ((List!67145 0))(
  ( (Nil!67021) (Cons!67021 (h!73469 Regex!17200) (t!380892 List!67145)) )
))
(declare-datatypes ((Context!12392 0))(
  ( (Context!12393 (exprs!6696 List!67145)) )
))
(declare-fun lt!2484443 () (Set Context!12392))

(declare-datatypes ((List!67146 0))(
  ( (Nil!67022) (Cons!67022 (h!73470 C!34670) (t!380893 List!67146)) )
))
(declare-fun s!7408 () List!67146)

(declare-fun matchZipper!2740 ((Set Context!12392) List!67146) Bool)

(assert (=> b!6986463 (= e!4199111 (not (matchZipper!2740 lt!2484443 (t!380893 s!7408))))))

(declare-datatypes ((Unit!161055 0))(
  ( (Unit!161056) )
))
(declare-fun lt!2484462 () Unit!161055)

(declare-fun lt!2484449 () List!67145)

(declare-fun lambda!400485 () Int)

(declare-fun ct2!306 () Context!12392)

(declare-fun lemmaConcatPreservesForall!536 (List!67145 List!67145 Int) Unit!161055)

(assert (=> b!6986463 (= lt!2484462 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(declare-fun res!2848973 () Bool)

(declare-fun e!4199114 () Bool)

(assert (=> start!671064 (=> (not res!2848973) (not e!4199114))))

(declare-fun lt!2484442 () (Set Context!12392))

(assert (=> start!671064 (= res!2848973 (matchZipper!2740 lt!2484442 s!7408))))

(declare-fun z1!570 () (Set Context!12392))

(declare-fun appendTo!321 ((Set Context!12392) Context!12392) (Set Context!12392))

(assert (=> start!671064 (= lt!2484442 (appendTo!321 z1!570 ct2!306))))

(assert (=> start!671064 e!4199114))

(declare-fun condSetEmpty!47706 () Bool)

(assert (=> start!671064 (= condSetEmpty!47706 (= z1!570 (as set.empty (Set Context!12392))))))

(declare-fun setRes!47706 () Bool)

(assert (=> start!671064 setRes!47706))

(declare-fun e!4199116 () Bool)

(declare-fun inv!85860 (Context!12392) Bool)

(assert (=> start!671064 (and (inv!85860 ct2!306) e!4199116)))

(declare-fun e!4199113 () Bool)

(assert (=> start!671064 e!4199113))

(declare-fun b!6986464 () Bool)

(declare-fun res!2848972 () Bool)

(declare-fun e!4199122 () Bool)

(assert (=> b!6986464 (=> res!2848972 e!4199122)))

(declare-fun lt!2484439 () Bool)

(assert (=> b!6986464 (= res!2848972 (not lt!2484439))))

(declare-fun b!6986465 () Bool)

(declare-fun e!4199118 () Bool)

(declare-fun e!4199121 () Bool)

(assert (=> b!6986465 (= e!4199118 e!4199121)))

(declare-fun res!2848971 () Bool)

(assert (=> b!6986465 (=> res!2848971 e!4199121)))

(declare-fun lt!2484455 () (Set Context!12392))

(declare-fun lt!2484453 () (Set Context!12392))

(assert (=> b!6986465 (= res!2848971 (not (= lt!2484455 lt!2484453)))))

(declare-fun lt!2484438 () Context!12392)

(assert (=> b!6986465 (= lt!2484455 (set.insert lt!2484438 (as set.empty (Set Context!12392))))))

(declare-fun lt!2484451 () Unit!161055)

(declare-fun lt!2484454 () Context!12392)

(assert (=> b!6986465 (= lt!2484451 (lemmaConcatPreservesForall!536 (exprs!6696 lt!2484454) (exprs!6696 ct2!306) lambda!400485))))

(declare-fun setIsEmpty!47706 () Bool)

(assert (=> setIsEmpty!47706 setRes!47706))

(declare-fun e!4199123 () Bool)

(assert (=> b!6986466 (= e!4199114 (not e!4199123))))

(declare-fun res!2848969 () Bool)

(assert (=> b!6986466 (=> res!2848969 e!4199123)))

(assert (=> b!6986466 (= res!2848969 (not (matchZipper!2740 lt!2484453 s!7408)))))

(declare-fun lt!2484444 () Context!12392)

(assert (=> b!6986466 (= lt!2484453 (set.insert lt!2484444 (as set.empty (Set Context!12392))))))

(declare-fun lambda!400483 () Int)

(declare-fun getWitness!1089 ((Set Context!12392) Int) Context!12392)

(assert (=> b!6986466 (= lt!2484444 (getWitness!1089 lt!2484442 lambda!400483))))

(declare-datatypes ((List!67147 0))(
  ( (Nil!67023) (Cons!67023 (h!73471 Context!12392) (t!380894 List!67147)) )
))
(declare-fun lt!2484440 () List!67147)

(declare-fun exists!2978 (List!67147 Int) Bool)

(assert (=> b!6986466 (exists!2978 lt!2484440 lambda!400483)))

(declare-fun lt!2484460 () Unit!161055)

(declare-fun lemmaZipperMatchesExistsMatchingContext!169 (List!67147 List!67146) Unit!161055)

(assert (=> b!6986466 (= lt!2484460 (lemmaZipperMatchesExistsMatchingContext!169 lt!2484440 s!7408))))

(declare-fun toList!10560 ((Set Context!12392)) List!67147)

(assert (=> b!6986466 (= lt!2484440 (toList!10560 lt!2484442))))

(declare-fun b!6986467 () Bool)

(declare-fun res!2848974 () Bool)

(declare-fun e!4199115 () Bool)

(assert (=> b!6986467 (=> res!2848974 e!4199115)))

(assert (=> b!6986467 (= res!2848974 (not (is-Cons!67021 (exprs!6696 lt!2484454))))))

(declare-fun b!6986468 () Bool)

(declare-fun e!4199119 () Bool)

(assert (=> b!6986468 (= e!4199119 e!4199122)))

(declare-fun res!2848977 () Bool)

(assert (=> b!6986468 (=> res!2848977 e!4199122)))

(assert (=> b!6986468 (= res!2848977 e!4199111)))

(declare-fun res!2848980 () Bool)

(assert (=> b!6986468 (=> (not res!2848980) (not e!4199111))))

(declare-fun lt!2484463 () Bool)

(assert (=> b!6986468 (= res!2848980 (not (= lt!2484439 lt!2484463)))))

(declare-fun lt!2484459 () (Set Context!12392))

(assert (=> b!6986468 (= lt!2484439 (matchZipper!2740 lt!2484459 (t!380893 s!7408)))))

(declare-fun lt!2484447 () Unit!161055)

(assert (=> b!6986468 (= lt!2484447 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(declare-fun lt!2484448 () (Set Context!12392))

(declare-fun e!4199117 () Bool)

(assert (=> b!6986468 (= (matchZipper!2740 lt!2484448 (t!380893 s!7408)) e!4199117)))

(declare-fun res!2848975 () Bool)

(assert (=> b!6986468 (=> res!2848975 e!4199117)))

(assert (=> b!6986468 (= res!2848975 lt!2484463)))

(declare-fun lt!2484452 () (Set Context!12392))

(assert (=> b!6986468 (= lt!2484463 (matchZipper!2740 lt!2484452 (t!380893 s!7408)))))

(declare-fun lt!2484446 () Unit!161055)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1373 ((Set Context!12392) (Set Context!12392) List!67146) Unit!161055)

(assert (=> b!6986468 (= lt!2484446 (lemmaZipperConcatMatchesSameAsBothZippers!1373 lt!2484452 lt!2484443 (t!380893 s!7408)))))

(declare-fun lt!2484450 () Unit!161055)

(assert (=> b!6986468 (= lt!2484450 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(declare-fun lt!2484436 () Unit!161055)

(assert (=> b!6986468 (= lt!2484436 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(declare-fun b!6986469 () Bool)

(declare-fun tp_is_empty!43625 () Bool)

(declare-fun tp!1929190 () Bool)

(assert (=> b!6986469 (= e!4199113 (and tp_is_empty!43625 tp!1929190))))

(declare-fun b!6986470 () Bool)

(declare-fun res!2848979 () Bool)

(assert (=> b!6986470 (=> (not res!2848979) (not e!4199114))))

(assert (=> b!6986470 (= res!2848979 (is-Cons!67022 s!7408))))

(declare-fun setElem!47706 () Context!12392)

(declare-fun setNonEmpty!47706 () Bool)

(declare-fun tp!1929192 () Bool)

(declare-fun e!4199120 () Bool)

(assert (=> setNonEmpty!47706 (= setRes!47706 (and tp!1929192 (inv!85860 setElem!47706) e!4199120))))

(declare-fun setRest!47706 () (Set Context!12392))

(assert (=> setNonEmpty!47706 (= z1!570 (set.union (set.insert setElem!47706 (as set.empty (Set Context!12392))) setRest!47706))))

(declare-fun b!6986471 () Bool)

(declare-fun res!2848978 () Bool)

(assert (=> b!6986471 (=> res!2848978 e!4199115)))

(declare-fun isEmpty!39122 (List!67145) Bool)

(assert (=> b!6986471 (= res!2848978 (isEmpty!39122 (exprs!6696 lt!2484454)))))

(assert (=> b!6986472 (= e!4199123 e!4199118)))

(declare-fun res!2848970 () Bool)

(assert (=> b!6986472 (=> res!2848970 e!4199118)))

(assert (=> b!6986472 (= res!2848970 (or (not (= lt!2484438 lt!2484444)) (not (set.member lt!2484454 z1!570))))))

(declare-fun ++!15145 (List!67145 List!67145) List!67145)

(assert (=> b!6986472 (= lt!2484438 (Context!12393 (++!15145 (exprs!6696 lt!2484454) (exprs!6696 ct2!306))))))

(declare-fun lt!2484456 () Unit!161055)

(assert (=> b!6986472 (= lt!2484456 (lemmaConcatPreservesForall!536 (exprs!6696 lt!2484454) (exprs!6696 ct2!306) lambda!400485))))

(declare-fun lambda!400484 () Int)

(declare-fun mapPost2!55 ((Set Context!12392) Int Context!12392) Context!12392)

(assert (=> b!6986472 (= lt!2484454 (mapPost2!55 z1!570 lambda!400484 lt!2484444))))

(declare-fun b!6986473 () Bool)

(declare-fun e!4199112 () Bool)

(assert (=> b!6986473 (= e!4199115 e!4199112)))

(declare-fun res!2848966 () Bool)

(assert (=> b!6986473 (=> res!2848966 e!4199112)))

(declare-fun nullable!6960 (Regex!17200) Bool)

(assert (=> b!6986473 (= res!2848966 (not (nullable!6960 (h!73469 (exprs!6696 lt!2484454)))))))

(declare-fun tail!13198 (List!67145) List!67145)

(assert (=> b!6986473 (= lt!2484449 (tail!13198 (exprs!6696 lt!2484454)))))

(declare-fun b!6986474 () Bool)

(declare-fun e!4199124 () Bool)

(declare-fun forall!16108 (List!67145 Int) Bool)

(assert (=> b!6986474 (= e!4199124 (forall!16108 lt!2484449 lambda!400485))))

(declare-fun lt!2484458 () Unit!161055)

(assert (=> b!6986474 (= lt!2484458 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(declare-fun b!6986475 () Bool)

(declare-fun tp!1929191 () Bool)

(assert (=> b!6986475 (= e!4199116 tp!1929191)))

(declare-fun b!6986476 () Bool)

(declare-fun res!2848968 () Bool)

(assert (=> b!6986476 (=> res!2848968 e!4199123)))

(assert (=> b!6986476 (= res!2848968 (not (set.member lt!2484444 lt!2484442)))))

(declare-fun b!6986477 () Bool)

(assert (=> b!6986477 (= e!4199117 (matchZipper!2740 lt!2484443 (t!380893 s!7408)))))

(declare-fun b!6986478 () Bool)

(assert (=> b!6986478 (= e!4199122 e!4199124)))

(declare-fun res!2848976 () Bool)

(assert (=> b!6986478 (=> res!2848976 e!4199124)))

(assert (=> b!6986478 (= res!2848976 (not (matchZipper!2740 lt!2484443 (t!380893 s!7408))))))

(declare-fun lt!2484437 () Unit!161055)

(assert (=> b!6986478 (= lt!2484437 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(declare-fun b!6986479 () Bool)

(declare-fun tp!1929189 () Bool)

(assert (=> b!6986479 (= e!4199120 tp!1929189)))

(declare-fun b!6986480 () Bool)

(assert (=> b!6986480 (= e!4199112 e!4199119)))

(declare-fun res!2848981 () Bool)

(assert (=> b!6986480 (=> res!2848981 e!4199119)))

(assert (=> b!6986480 (= res!2848981 (not (= lt!2484459 lt!2484448)))))

(assert (=> b!6986480 (= lt!2484448 (set.union lt!2484452 lt!2484443))))

(declare-fun lt!2484457 () Context!12392)

(declare-fun derivationStepZipperUp!1850 (Context!12392 C!34670) (Set Context!12392))

(assert (=> b!6986480 (= lt!2484443 (derivationStepZipperUp!1850 lt!2484457 (h!73470 s!7408)))))

(declare-fun derivationStepZipperDown!1918 (Regex!17200 Context!12392 C!34670) (Set Context!12392))

(assert (=> b!6986480 (= lt!2484452 (derivationStepZipperDown!1918 (h!73469 (exprs!6696 lt!2484454)) lt!2484457 (h!73470 s!7408)))))

(assert (=> b!6986480 (= lt!2484457 (Context!12393 (++!15145 lt!2484449 (exprs!6696 ct2!306))))))

(declare-fun lt!2484445 () Unit!161055)

(assert (=> b!6986480 (= lt!2484445 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(declare-fun lt!2484441 () Unit!161055)

(assert (=> b!6986480 (= lt!2484441 (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(assert (=> b!6986481 (= e!4199121 e!4199115)))

(declare-fun res!2848967 () Bool)

(assert (=> b!6986481 (=> res!2848967 e!4199115)))

(declare-fun derivationStepZipper!2680 ((Set Context!12392) C!34670) (Set Context!12392))

(assert (=> b!6986481 (= res!2848967 (not (= (derivationStepZipper!2680 lt!2484455 (h!73470 s!7408)) lt!2484459)))))

(declare-fun lambda!400486 () Int)

(declare-fun flatMap!2186 ((Set Context!12392) Int) (Set Context!12392))

(assert (=> b!6986481 (= (flatMap!2186 lt!2484455 lambda!400486) (derivationStepZipperUp!1850 lt!2484438 (h!73470 s!7408)))))

(declare-fun lt!2484461 () Unit!161055)

(declare-fun lemmaFlatMapOnSingletonSet!1701 ((Set Context!12392) Context!12392 Int) Unit!161055)

(assert (=> b!6986481 (= lt!2484461 (lemmaFlatMapOnSingletonSet!1701 lt!2484455 lt!2484438 lambda!400486))))

(assert (=> b!6986481 (= lt!2484459 (derivationStepZipperUp!1850 lt!2484438 (h!73470 s!7408)))))

(declare-fun lt!2484464 () Unit!161055)

(assert (=> b!6986481 (= lt!2484464 (lemmaConcatPreservesForall!536 (exprs!6696 lt!2484454) (exprs!6696 ct2!306) lambda!400485))))

(assert (= (and start!671064 res!2848973) b!6986470))

(assert (= (and b!6986470 res!2848979) b!6986466))

(assert (= (and b!6986466 (not res!2848969)) b!6986476))

(assert (= (and b!6986476 (not res!2848968)) b!6986472))

(assert (= (and b!6986472 (not res!2848970)) b!6986465))

(assert (= (and b!6986465 (not res!2848971)) b!6986481))

(assert (= (and b!6986481 (not res!2848967)) b!6986467))

(assert (= (and b!6986467 (not res!2848974)) b!6986471))

(assert (= (and b!6986471 (not res!2848978)) b!6986473))

(assert (= (and b!6986473 (not res!2848966)) b!6986480))

(assert (= (and b!6986480 (not res!2848981)) b!6986468))

(assert (= (and b!6986468 (not res!2848975)) b!6986477))

(assert (= (and b!6986468 res!2848980) b!6986463))

(assert (= (and b!6986468 (not res!2848977)) b!6986464))

(assert (= (and b!6986464 (not res!2848972)) b!6986478))

(assert (= (and b!6986478 (not res!2848976)) b!6986474))

(assert (= (and start!671064 condSetEmpty!47706) setIsEmpty!47706))

(assert (= (and start!671064 (not condSetEmpty!47706)) setNonEmpty!47706))

(assert (= setNonEmpty!47706 b!6986479))

(assert (= start!671064 b!6986475))

(assert (= (and start!671064 (is-Cons!67022 s!7408)) b!6986469))

(declare-fun m!7674218 () Bool)

(assert (=> b!6986472 m!7674218))

(declare-fun m!7674220 () Bool)

(assert (=> b!6986472 m!7674220))

(declare-fun m!7674222 () Bool)

(assert (=> b!6986472 m!7674222))

(declare-fun m!7674224 () Bool)

(assert (=> b!6986472 m!7674224))

(declare-fun m!7674226 () Bool)

(assert (=> start!671064 m!7674226))

(declare-fun m!7674228 () Bool)

(assert (=> start!671064 m!7674228))

(declare-fun m!7674230 () Bool)

(assert (=> start!671064 m!7674230))

(declare-fun m!7674232 () Bool)

(assert (=> b!6986480 m!7674232))

(declare-fun m!7674234 () Bool)

(assert (=> b!6986480 m!7674234))

(declare-fun m!7674236 () Bool)

(assert (=> b!6986480 m!7674236))

(assert (=> b!6986480 m!7674232))

(declare-fun m!7674238 () Bool)

(assert (=> b!6986480 m!7674238))

(declare-fun m!7674240 () Bool)

(assert (=> setNonEmpty!47706 m!7674240))

(declare-fun m!7674242 () Bool)

(assert (=> b!6986465 m!7674242))

(assert (=> b!6986465 m!7674222))

(declare-fun m!7674244 () Bool)

(assert (=> b!6986476 m!7674244))

(declare-fun m!7674246 () Bool)

(assert (=> b!6986468 m!7674246))

(declare-fun m!7674248 () Bool)

(assert (=> b!6986468 m!7674248))

(assert (=> b!6986468 m!7674232))

(assert (=> b!6986468 m!7674232))

(declare-fun m!7674250 () Bool)

(assert (=> b!6986468 m!7674250))

(declare-fun m!7674252 () Bool)

(assert (=> b!6986468 m!7674252))

(assert (=> b!6986468 m!7674232))

(declare-fun m!7674254 () Bool)

(assert (=> b!6986478 m!7674254))

(assert (=> b!6986478 m!7674232))

(assert (=> b!6986463 m!7674254))

(assert (=> b!6986463 m!7674232))

(assert (=> b!6986477 m!7674254))

(declare-fun m!7674256 () Bool)

(assert (=> b!6986474 m!7674256))

(assert (=> b!6986474 m!7674232))

(declare-fun m!7674258 () Bool)

(assert (=> b!6986471 m!7674258))

(declare-fun m!7674260 () Bool)

(assert (=> b!6986473 m!7674260))

(declare-fun m!7674262 () Bool)

(assert (=> b!6986473 m!7674262))

(declare-fun m!7674264 () Bool)

(assert (=> b!6986466 m!7674264))

(declare-fun m!7674266 () Bool)

(assert (=> b!6986466 m!7674266))

(declare-fun m!7674268 () Bool)

(assert (=> b!6986466 m!7674268))

(declare-fun m!7674270 () Bool)

(assert (=> b!6986466 m!7674270))

(declare-fun m!7674272 () Bool)

(assert (=> b!6986466 m!7674272))

(declare-fun m!7674274 () Bool)

(assert (=> b!6986466 m!7674274))

(declare-fun m!7674276 () Bool)

(assert (=> b!6986481 m!7674276))

(declare-fun m!7674278 () Bool)

(assert (=> b!6986481 m!7674278))

(assert (=> b!6986481 m!7674222))

(declare-fun m!7674280 () Bool)

(assert (=> b!6986481 m!7674280))

(declare-fun m!7674282 () Bool)

(assert (=> b!6986481 m!7674282))

(push 1)

(assert (not b!6986472))

(assert tp_is_empty!43625)

(assert (not b!6986479))

(assert (not b!6986478))

(assert (not b!6986477))

(assert (not b!6986468))

(assert (not b!6986469))

(assert (not b!6986466))

(assert (not b!6986465))

(assert (not b!6986481))

(assert (not setNonEmpty!47706))

(assert (not b!6986471))

(assert (not b!6986475))

(assert (not b!6986463))

(assert (not start!671064))

(assert (not b!6986473))

(assert (not b!6986480))

(assert (not b!6986474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2176164 () Bool)

(assert (=> d!2176164 (= (isEmpty!39122 (exprs!6696 lt!2484454)) (is-Nil!67021 (exprs!6696 lt!2484454)))))

(assert (=> b!6986471 d!2176164))

(declare-fun d!2176166 () Bool)

(assert (=> d!2176166 (forall!16108 (++!15145 (exprs!6696 lt!2484454) (exprs!6696 ct2!306)) lambda!400485)))

(declare-fun lt!2484556 () Unit!161055)

(declare-fun choose!52182 (List!67145 List!67145 Int) Unit!161055)

(assert (=> d!2176166 (= lt!2484556 (choose!52182 (exprs!6696 lt!2484454) (exprs!6696 ct2!306) lambda!400485))))

(assert (=> d!2176166 (forall!16108 (exprs!6696 lt!2484454) lambda!400485)))

(assert (=> d!2176166 (= (lemmaConcatPreservesForall!536 (exprs!6696 lt!2484454) (exprs!6696 ct2!306) lambda!400485) lt!2484556)))

(declare-fun bs!1861757 () Bool)

(assert (= bs!1861757 d!2176166))

(assert (=> bs!1861757 m!7674220))

(assert (=> bs!1861757 m!7674220))

(declare-fun m!7674350 () Bool)

(assert (=> bs!1861757 m!7674350))

(declare-fun m!7674352 () Bool)

(assert (=> bs!1861757 m!7674352))

(declare-fun m!7674354 () Bool)

(assert (=> bs!1861757 m!7674354))

(assert (=> b!6986481 d!2176166))

(declare-fun d!2176168 () Bool)

(declare-fun choose!52183 ((Set Context!12392) Int) (Set Context!12392))

(assert (=> d!2176168 (= (flatMap!2186 lt!2484455 lambda!400486) (choose!52183 lt!2484455 lambda!400486))))

(declare-fun bs!1861758 () Bool)

(assert (= bs!1861758 d!2176168))

(declare-fun m!7674356 () Bool)

(assert (=> bs!1861758 m!7674356))

(assert (=> b!6986481 d!2176168))

(declare-fun bm!634200 () Bool)

(declare-fun call!634205 () (Set Context!12392))

(assert (=> bm!634200 (= call!634205 (derivationStepZipperDown!1918 (h!73469 (exprs!6696 lt!2484438)) (Context!12393 (t!380892 (exprs!6696 lt!2484438))) (h!73470 s!7408)))))

(declare-fun d!2176170 () Bool)

(declare-fun c!1295591 () Bool)

(declare-fun e!4199175 () Bool)

(assert (=> d!2176170 (= c!1295591 e!4199175)))

(declare-fun res!2849033 () Bool)

(assert (=> d!2176170 (=> (not res!2849033) (not e!4199175))))

(assert (=> d!2176170 (= res!2849033 (is-Cons!67021 (exprs!6696 lt!2484438)))))

(declare-fun e!4199174 () (Set Context!12392))

(assert (=> d!2176170 (= (derivationStepZipperUp!1850 lt!2484438 (h!73470 s!7408)) e!4199174)))

(declare-fun b!6986561 () Bool)

(declare-fun e!4199173 () (Set Context!12392))

(assert (=> b!6986561 (= e!4199173 (as set.empty (Set Context!12392)))))

(declare-fun b!6986562 () Bool)

(assert (=> b!6986562 (= e!4199174 e!4199173)))

(declare-fun c!1295592 () Bool)

(assert (=> b!6986562 (= c!1295592 (is-Cons!67021 (exprs!6696 lt!2484438)))))

(declare-fun b!6986563 () Bool)

(assert (=> b!6986563 (= e!4199175 (nullable!6960 (h!73469 (exprs!6696 lt!2484438))))))

(declare-fun b!6986564 () Bool)

(assert (=> b!6986564 (= e!4199174 (set.union call!634205 (derivationStepZipperUp!1850 (Context!12393 (t!380892 (exprs!6696 lt!2484438))) (h!73470 s!7408))))))

(declare-fun b!6986565 () Bool)

(assert (=> b!6986565 (= e!4199173 call!634205)))

(assert (= (and d!2176170 res!2849033) b!6986563))

(assert (= (and d!2176170 c!1295591) b!6986564))

(assert (= (and d!2176170 (not c!1295591)) b!6986562))

(assert (= (and b!6986562 c!1295592) b!6986565))

(assert (= (and b!6986562 (not c!1295592)) b!6986561))

(assert (= (or b!6986564 b!6986565) bm!634200))

(declare-fun m!7674358 () Bool)

(assert (=> bm!634200 m!7674358))

(declare-fun m!7674360 () Bool)

(assert (=> b!6986563 m!7674360))

(declare-fun m!7674362 () Bool)

(assert (=> b!6986564 m!7674362))

(assert (=> b!6986481 d!2176170))

(declare-fun d!2176172 () Bool)

(declare-fun dynLambda!26849 (Int Context!12392) (Set Context!12392))

(assert (=> d!2176172 (= (flatMap!2186 lt!2484455 lambda!400486) (dynLambda!26849 lambda!400486 lt!2484438))))

(declare-fun lt!2484559 () Unit!161055)

(declare-fun choose!52184 ((Set Context!12392) Context!12392 Int) Unit!161055)

(assert (=> d!2176172 (= lt!2484559 (choose!52184 lt!2484455 lt!2484438 lambda!400486))))

(assert (=> d!2176172 (= lt!2484455 (set.insert lt!2484438 (as set.empty (Set Context!12392))))))

(assert (=> d!2176172 (= (lemmaFlatMapOnSingletonSet!1701 lt!2484455 lt!2484438 lambda!400486) lt!2484559)))

(declare-fun b_lambda!262259 () Bool)

(assert (=> (not b_lambda!262259) (not d!2176172)))

(declare-fun bs!1861759 () Bool)

(assert (= bs!1861759 d!2176172))

(assert (=> bs!1861759 m!7674280))

(declare-fun m!7674364 () Bool)

(assert (=> bs!1861759 m!7674364))

(declare-fun m!7674366 () Bool)

(assert (=> bs!1861759 m!7674366))

(assert (=> bs!1861759 m!7674242))

(assert (=> b!6986481 d!2176172))

(declare-fun bs!1861760 () Bool)

(declare-fun d!2176174 () Bool)

(assert (= bs!1861760 (and d!2176174 b!6986481)))

(declare-fun lambda!400527 () Int)

(assert (=> bs!1861760 (= lambda!400527 lambda!400486)))

(assert (=> d!2176174 true))

(assert (=> d!2176174 (= (derivationStepZipper!2680 lt!2484455 (h!73470 s!7408)) (flatMap!2186 lt!2484455 lambda!400527))))

(declare-fun bs!1861761 () Bool)

(assert (= bs!1861761 d!2176174))

(declare-fun m!7674368 () Bool)

(assert (=> bs!1861761 m!7674368))

(assert (=> b!6986481 d!2176174))

(declare-fun d!2176176 () Bool)

(declare-fun c!1295597 () Bool)

(declare-fun isEmpty!39124 (List!67146) Bool)

(assert (=> d!2176176 (= c!1295597 (isEmpty!39124 s!7408))))

(declare-fun e!4199178 () Bool)

(assert (=> d!2176176 (= (matchZipper!2740 lt!2484442 s!7408) e!4199178)))

(declare-fun b!6986572 () Bool)

(declare-fun nullableZipper!2425 ((Set Context!12392)) Bool)

(assert (=> b!6986572 (= e!4199178 (nullableZipper!2425 lt!2484442))))

(declare-fun b!6986573 () Bool)

(declare-fun head!14100 (List!67146) C!34670)

(declare-fun tail!13200 (List!67146) List!67146)

(assert (=> b!6986573 (= e!4199178 (matchZipper!2740 (derivationStepZipper!2680 lt!2484442 (head!14100 s!7408)) (tail!13200 s!7408)))))

(assert (= (and d!2176176 c!1295597) b!6986572))

(assert (= (and d!2176176 (not c!1295597)) b!6986573))

(declare-fun m!7674370 () Bool)

(assert (=> d!2176176 m!7674370))

(declare-fun m!7674372 () Bool)

(assert (=> b!6986572 m!7674372))

(declare-fun m!7674374 () Bool)

(assert (=> b!6986573 m!7674374))

(assert (=> b!6986573 m!7674374))

(declare-fun m!7674376 () Bool)

(assert (=> b!6986573 m!7674376))

(declare-fun m!7674378 () Bool)

(assert (=> b!6986573 m!7674378))

(assert (=> b!6986573 m!7674376))

(assert (=> b!6986573 m!7674378))

(declare-fun m!7674380 () Bool)

(assert (=> b!6986573 m!7674380))

(assert (=> start!671064 d!2176176))

(declare-fun bs!1861762 () Bool)

(declare-fun d!2176178 () Bool)

(assert (= bs!1861762 (and d!2176178 b!6986472)))

(declare-fun lambda!400532 () Int)

(assert (=> bs!1861762 (= lambda!400532 lambda!400484)))

(assert (=> d!2176178 true))

(declare-fun map!15459 ((Set Context!12392) Int) (Set Context!12392))

(assert (=> d!2176178 (= (appendTo!321 z1!570 ct2!306) (map!15459 z1!570 lambda!400532))))

(declare-fun bs!1861763 () Bool)

(assert (= bs!1861763 d!2176178))

(declare-fun m!7674382 () Bool)

(assert (=> bs!1861763 m!7674382))

(assert (=> start!671064 d!2176178))

(declare-fun bs!1861764 () Bool)

(declare-fun d!2176180 () Bool)

(assert (= bs!1861764 (and d!2176180 b!6986472)))

(declare-fun lambda!400535 () Int)

(assert (=> bs!1861764 (= lambda!400535 lambda!400485)))

(assert (=> d!2176180 (= (inv!85860 ct2!306) (forall!16108 (exprs!6696 ct2!306) lambda!400535))))

(declare-fun bs!1861765 () Bool)

(assert (= bs!1861765 d!2176180))

(declare-fun m!7674384 () Bool)

(assert (=> bs!1861765 m!7674384))

(assert (=> start!671064 d!2176180))

(declare-fun d!2176182 () Bool)

(declare-fun c!1295599 () Bool)

(assert (=> d!2176182 (= c!1295599 (isEmpty!39124 (t!380893 s!7408)))))

(declare-fun e!4199179 () Bool)

(assert (=> d!2176182 (= (matchZipper!2740 lt!2484443 (t!380893 s!7408)) e!4199179)))

(declare-fun b!6986574 () Bool)

(assert (=> b!6986574 (= e!4199179 (nullableZipper!2425 lt!2484443))))

(declare-fun b!6986575 () Bool)

(assert (=> b!6986575 (= e!4199179 (matchZipper!2740 (derivationStepZipper!2680 lt!2484443 (head!14100 (t!380893 s!7408))) (tail!13200 (t!380893 s!7408))))))

(assert (= (and d!2176182 c!1295599) b!6986574))

(assert (= (and d!2176182 (not c!1295599)) b!6986575))

(declare-fun m!7674386 () Bool)

(assert (=> d!2176182 m!7674386))

(declare-fun m!7674388 () Bool)

(assert (=> b!6986574 m!7674388))

(declare-fun m!7674390 () Bool)

(assert (=> b!6986575 m!7674390))

(assert (=> b!6986575 m!7674390))

(declare-fun m!7674392 () Bool)

(assert (=> b!6986575 m!7674392))

(declare-fun m!7674394 () Bool)

(assert (=> b!6986575 m!7674394))

(assert (=> b!6986575 m!7674392))

(assert (=> b!6986575 m!7674394))

(declare-fun m!7674396 () Bool)

(assert (=> b!6986575 m!7674396))

(assert (=> b!6986463 d!2176182))

(declare-fun d!2176184 () Bool)

(assert (=> d!2176184 (forall!16108 (++!15145 lt!2484449 (exprs!6696 ct2!306)) lambda!400485)))

(declare-fun lt!2484562 () Unit!161055)

(assert (=> d!2176184 (= lt!2484562 (choose!52182 lt!2484449 (exprs!6696 ct2!306) lambda!400485))))

(assert (=> d!2176184 (forall!16108 lt!2484449 lambda!400485)))

(assert (=> d!2176184 (= (lemmaConcatPreservesForall!536 lt!2484449 (exprs!6696 ct2!306) lambda!400485) lt!2484562)))

(declare-fun bs!1861766 () Bool)

(assert (= bs!1861766 d!2176184))

(assert (=> bs!1861766 m!7674236))

(assert (=> bs!1861766 m!7674236))

(declare-fun m!7674398 () Bool)

(assert (=> bs!1861766 m!7674398))

(declare-fun m!7674400 () Bool)

(assert (=> bs!1861766 m!7674400))

(assert (=> bs!1861766 m!7674256))

(assert (=> b!6986463 d!2176184))

(declare-fun d!2176186 () Bool)

(declare-fun e!4199184 () Bool)

(assert (=> d!2176186 e!4199184))

(declare-fun res!2849039 () Bool)

(assert (=> d!2176186 (=> (not res!2849039) (not e!4199184))))

(declare-fun lt!2484565 () List!67145)

(declare-fun content!13239 (List!67145) (Set Regex!17200))

(assert (=> d!2176186 (= res!2849039 (= (content!13239 lt!2484565) (set.union (content!13239 (exprs!6696 lt!2484454)) (content!13239 (exprs!6696 ct2!306)))))))

(declare-fun e!4199185 () List!67145)

(assert (=> d!2176186 (= lt!2484565 e!4199185)))

(declare-fun c!1295602 () Bool)

(assert (=> d!2176186 (= c!1295602 (is-Nil!67021 (exprs!6696 lt!2484454)))))

(assert (=> d!2176186 (= (++!15145 (exprs!6696 lt!2484454) (exprs!6696 ct2!306)) lt!2484565)))

(declare-fun b!6986584 () Bool)

(assert (=> b!6986584 (= e!4199185 (exprs!6696 ct2!306))))

(declare-fun b!6986586 () Bool)

(declare-fun res!2849038 () Bool)

(assert (=> b!6986586 (=> (not res!2849038) (not e!4199184))))

(declare-fun size!40895 (List!67145) Int)

(assert (=> b!6986586 (= res!2849038 (= (size!40895 lt!2484565) (+ (size!40895 (exprs!6696 lt!2484454)) (size!40895 (exprs!6696 ct2!306)))))))

(declare-fun b!6986587 () Bool)

(assert (=> b!6986587 (= e!4199184 (or (not (= (exprs!6696 ct2!306) Nil!67021)) (= lt!2484565 (exprs!6696 lt!2484454))))))

(declare-fun b!6986585 () Bool)

(assert (=> b!6986585 (= e!4199185 (Cons!67021 (h!73469 (exprs!6696 lt!2484454)) (++!15145 (t!380892 (exprs!6696 lt!2484454)) (exprs!6696 ct2!306))))))

(assert (= (and d!2176186 c!1295602) b!6986584))

(assert (= (and d!2176186 (not c!1295602)) b!6986585))

(assert (= (and d!2176186 res!2849039) b!6986586))

(assert (= (and b!6986586 res!2849038) b!6986587))

(declare-fun m!7674402 () Bool)

(assert (=> d!2176186 m!7674402))

(declare-fun m!7674404 () Bool)

(assert (=> d!2176186 m!7674404))

(declare-fun m!7674406 () Bool)

(assert (=> d!2176186 m!7674406))

(declare-fun m!7674408 () Bool)

(assert (=> b!6986586 m!7674408))

(declare-fun m!7674410 () Bool)

(assert (=> b!6986586 m!7674410))

(declare-fun m!7674412 () Bool)

(assert (=> b!6986586 m!7674412))

(declare-fun m!7674414 () Bool)

(assert (=> b!6986585 m!7674414))

(assert (=> b!6986472 d!2176186))

(assert (=> b!6986472 d!2176166))

(declare-fun d!2176188 () Bool)

(declare-fun e!4199188 () Bool)

(assert (=> d!2176188 e!4199188))

(declare-fun res!2849042 () Bool)

(assert (=> d!2176188 (=> (not res!2849042) (not e!4199188))))

(declare-fun lt!2484568 () Context!12392)

(declare-fun dynLambda!26850 (Int Context!12392) Context!12392)

(assert (=> d!2176188 (= res!2849042 (= lt!2484444 (dynLambda!26850 lambda!400484 lt!2484568)))))

(declare-fun choose!52185 ((Set Context!12392) Int Context!12392) Context!12392)

(assert (=> d!2176188 (= lt!2484568 (choose!52185 z1!570 lambda!400484 lt!2484444))))

(assert (=> d!2176188 (set.member lt!2484444 (map!15459 z1!570 lambda!400484))))

(assert (=> d!2176188 (= (mapPost2!55 z1!570 lambda!400484 lt!2484444) lt!2484568)))

(declare-fun b!6986591 () Bool)

(assert (=> b!6986591 (= e!4199188 (set.member lt!2484568 z1!570))))

(assert (= (and d!2176188 res!2849042) b!6986591))

(declare-fun b_lambda!262261 () Bool)

(assert (=> (not b_lambda!262261) (not d!2176188)))

(declare-fun m!7674416 () Bool)

(assert (=> d!2176188 m!7674416))

(declare-fun m!7674418 () Bool)

(assert (=> d!2176188 m!7674418))

(declare-fun m!7674420 () Bool)

(assert (=> d!2176188 m!7674420))

(declare-fun m!7674422 () Bool)

(assert (=> d!2176188 m!7674422))

(declare-fun m!7674424 () Bool)

(assert (=> b!6986591 m!7674424))

(assert (=> b!6986472 d!2176188))

(declare-fun bs!1861767 () Bool)

(declare-fun d!2176190 () Bool)

(assert (= bs!1861767 (and d!2176190 b!6986472)))

(declare-fun lambda!400536 () Int)

(assert (=> bs!1861767 (= lambda!400536 lambda!400485)))

(declare-fun bs!1861768 () Bool)

(assert (= bs!1861768 (and d!2176190 d!2176180)))

(assert (=> bs!1861768 (= lambda!400536 lambda!400535)))

(assert (=> d!2176190 (= (inv!85860 setElem!47706) (forall!16108 (exprs!6696 setElem!47706) lambda!400536))))

(declare-fun bs!1861769 () Bool)

(assert (= bs!1861769 d!2176190))

(declare-fun m!7674426 () Bool)

(assert (=> bs!1861769 m!7674426))

(assert (=> setNonEmpty!47706 d!2176190))

(assert (=> b!6986480 d!2176184))

(declare-fun bm!634201 () Bool)

(declare-fun call!634206 () (Set Context!12392))

(assert (=> bm!634201 (= call!634206 (derivationStepZipperDown!1918 (h!73469 (exprs!6696 lt!2484457)) (Context!12393 (t!380892 (exprs!6696 lt!2484457))) (h!73470 s!7408)))))

(declare-fun d!2176192 () Bool)

(declare-fun c!1295603 () Bool)

(declare-fun e!4199191 () Bool)

(assert (=> d!2176192 (= c!1295603 e!4199191)))

(declare-fun res!2849043 () Bool)

(assert (=> d!2176192 (=> (not res!2849043) (not e!4199191))))

(assert (=> d!2176192 (= res!2849043 (is-Cons!67021 (exprs!6696 lt!2484457)))))

(declare-fun e!4199190 () (Set Context!12392))

(assert (=> d!2176192 (= (derivationStepZipperUp!1850 lt!2484457 (h!73470 s!7408)) e!4199190)))

(declare-fun b!6986592 () Bool)

(declare-fun e!4199189 () (Set Context!12392))

(assert (=> b!6986592 (= e!4199189 (as set.empty (Set Context!12392)))))

(declare-fun b!6986593 () Bool)

(assert (=> b!6986593 (= e!4199190 e!4199189)))

(declare-fun c!1295604 () Bool)

(assert (=> b!6986593 (= c!1295604 (is-Cons!67021 (exprs!6696 lt!2484457)))))

(declare-fun b!6986594 () Bool)

(assert (=> b!6986594 (= e!4199191 (nullable!6960 (h!73469 (exprs!6696 lt!2484457))))))

(declare-fun b!6986595 () Bool)

(assert (=> b!6986595 (= e!4199190 (set.union call!634206 (derivationStepZipperUp!1850 (Context!12393 (t!380892 (exprs!6696 lt!2484457))) (h!73470 s!7408))))))

(declare-fun b!6986596 () Bool)

(assert (=> b!6986596 (= e!4199189 call!634206)))

(assert (= (and d!2176192 res!2849043) b!6986594))

(assert (= (and d!2176192 c!1295603) b!6986595))

(assert (= (and d!2176192 (not c!1295603)) b!6986593))

(assert (= (and b!6986593 c!1295604) b!6986596))

(assert (= (and b!6986593 (not c!1295604)) b!6986592))

(assert (= (or b!6986595 b!6986596) bm!634201))

(declare-fun m!7674428 () Bool)

(assert (=> bm!634201 m!7674428))

(declare-fun m!7674430 () Bool)

(assert (=> b!6986594 m!7674430))

(declare-fun m!7674432 () Bool)

(assert (=> b!6986595 m!7674432))

(assert (=> b!6986480 d!2176192))

(declare-fun call!634222 () (Set Context!12392))

(declare-fun c!1295616 () Bool)

(declare-fun call!634221 () List!67145)

(declare-fun bm!634214 () Bool)

(assert (=> bm!634214 (= call!634222 (derivationStepZipperDown!1918 (ite c!1295616 (regOne!34913 (h!73469 (exprs!6696 lt!2484454))) (regOne!34912 (h!73469 (exprs!6696 lt!2484454)))) (ite c!1295616 lt!2484457 (Context!12393 call!634221)) (h!73470 s!7408)))))

(declare-fun c!1295619 () Bool)

(declare-fun call!634219 () (Set Context!12392))

(declare-fun call!634220 () List!67145)

(declare-fun bm!634215 () Bool)

(declare-fun c!1295618 () Bool)

(assert (=> bm!634215 (= call!634219 (derivationStepZipperDown!1918 (ite c!1295616 (regTwo!34913 (h!73469 (exprs!6696 lt!2484454))) (ite c!1295619 (regTwo!34912 (h!73469 (exprs!6696 lt!2484454))) (ite c!1295618 (regOne!34912 (h!73469 (exprs!6696 lt!2484454))) (reg!17529 (h!73469 (exprs!6696 lt!2484454)))))) (ite (or c!1295616 c!1295619) lt!2484457 (Context!12393 call!634220)) (h!73470 s!7408)))))

(declare-fun b!6986619 () Bool)

(declare-fun e!4199205 () (Set Context!12392))

(declare-fun call!634223 () (Set Context!12392))

(assert (=> b!6986619 (= e!4199205 call!634223)))

(declare-fun b!6986620 () Bool)

(declare-fun e!4199204 () (Set Context!12392))

(assert (=> b!6986620 (= e!4199204 (set.insert lt!2484457 (as set.empty (Set Context!12392))))))

(declare-fun b!6986621 () Bool)

(declare-fun c!1295615 () Bool)

(assert (=> b!6986621 (= c!1295615 (is-Star!17200 (h!73469 (exprs!6696 lt!2484454))))))

(declare-fun e!4199208 () (Set Context!12392))

(assert (=> b!6986621 (= e!4199208 e!4199205)))

(declare-fun bm!634216 () Bool)

(declare-fun call!634224 () (Set Context!12392))

(assert (=> bm!634216 (= call!634224 call!634219)))

(declare-fun b!6986622 () Bool)

(assert (=> b!6986622 (= e!4199208 call!634223)))

(declare-fun b!6986623 () Bool)

(declare-fun e!4199209 () (Set Context!12392))

(assert (=> b!6986623 (= e!4199209 (set.union call!634222 call!634224))))

(declare-fun bm!634217 () Bool)

(declare-fun $colon$colon!2474 (List!67145 Regex!17200) List!67145)

(assert (=> bm!634217 (= call!634221 ($colon$colon!2474 (exprs!6696 lt!2484457) (ite (or c!1295619 c!1295618) (regTwo!34912 (h!73469 (exprs!6696 lt!2484454))) (h!73469 (exprs!6696 lt!2484454)))))))

(declare-fun b!6986624 () Bool)

(declare-fun e!4199206 () Bool)

(assert (=> b!6986624 (= c!1295619 e!4199206)))

(declare-fun res!2849047 () Bool)

(assert (=> b!6986624 (=> (not res!2849047) (not e!4199206))))

(assert (=> b!6986624 (= res!2849047 (is-Concat!26045 (h!73469 (exprs!6696 lt!2484454))))))

(declare-fun e!4199207 () (Set Context!12392))

(assert (=> b!6986624 (= e!4199207 e!4199209)))

(declare-fun b!6986625 () Bool)

(assert (=> b!6986625 (= e!4199206 (nullable!6960 (regOne!34912 (h!73469 (exprs!6696 lt!2484454)))))))

(declare-fun b!6986626 () Bool)

(assert (=> b!6986626 (= e!4199205 (as set.empty (Set Context!12392)))))

(declare-fun b!6986627 () Bool)

(assert (=> b!6986627 (= e!4199204 e!4199207)))

(assert (=> b!6986627 (= c!1295616 (is-Union!17200 (h!73469 (exprs!6696 lt!2484454))))))

(declare-fun d!2176194 () Bool)

(declare-fun c!1295617 () Bool)

(assert (=> d!2176194 (= c!1295617 (and (is-ElementMatch!17200 (h!73469 (exprs!6696 lt!2484454))) (= (c!1295577 (h!73469 (exprs!6696 lt!2484454))) (h!73470 s!7408))))))

(assert (=> d!2176194 (= (derivationStepZipperDown!1918 (h!73469 (exprs!6696 lt!2484454)) lt!2484457 (h!73470 s!7408)) e!4199204)))

(declare-fun bm!634218 () Bool)

(assert (=> bm!634218 (= call!634220 call!634221)))

(declare-fun b!6986628 () Bool)

(assert (=> b!6986628 (= e!4199207 (set.union call!634222 call!634219))))

(declare-fun b!6986629 () Bool)

(assert (=> b!6986629 (= e!4199209 e!4199208)))

(assert (=> b!6986629 (= c!1295618 (is-Concat!26045 (h!73469 (exprs!6696 lt!2484454))))))

(declare-fun bm!634219 () Bool)

(assert (=> bm!634219 (= call!634223 call!634224)))

(assert (= (and d!2176194 c!1295617) b!6986620))

(assert (= (and d!2176194 (not c!1295617)) b!6986627))

(assert (= (and b!6986627 c!1295616) b!6986628))

(assert (= (and b!6986627 (not c!1295616)) b!6986624))

(assert (= (and b!6986624 res!2849047) b!6986625))

(assert (= (and b!6986624 c!1295619) b!6986623))

(assert (= (and b!6986624 (not c!1295619)) b!6986629))

(assert (= (and b!6986629 c!1295618) b!6986622))

(assert (= (and b!6986629 (not c!1295618)) b!6986621))

(assert (= (and b!6986621 c!1295615) b!6986619))

(assert (= (and b!6986621 (not c!1295615)) b!6986626))

(assert (= (or b!6986622 b!6986619) bm!634218))

(assert (= (or b!6986622 b!6986619) bm!634219))

(assert (= (or b!6986623 bm!634219) bm!634216))

(assert (= (or b!6986623 bm!634218) bm!634217))

(assert (= (or b!6986628 b!6986623) bm!634214))

(assert (= (or b!6986628 bm!634216) bm!634215))

(declare-fun m!7674434 () Bool)

(assert (=> b!6986620 m!7674434))

(declare-fun m!7674436 () Bool)

(assert (=> b!6986625 m!7674436))

(declare-fun m!7674438 () Bool)

(assert (=> bm!634217 m!7674438))

(declare-fun m!7674440 () Bool)

(assert (=> bm!634214 m!7674440))

(declare-fun m!7674442 () Bool)

(assert (=> bm!634215 m!7674442))

(assert (=> b!6986480 d!2176194))

(declare-fun d!2176196 () Bool)

(declare-fun e!4199210 () Bool)

(assert (=> d!2176196 e!4199210))

(declare-fun res!2849049 () Bool)

(assert (=> d!2176196 (=> (not res!2849049) (not e!4199210))))

(declare-fun lt!2484569 () List!67145)

(assert (=> d!2176196 (= res!2849049 (= (content!13239 lt!2484569) (set.union (content!13239 lt!2484449) (content!13239 (exprs!6696 ct2!306)))))))

(declare-fun e!4199211 () List!67145)

(assert (=> d!2176196 (= lt!2484569 e!4199211)))

(declare-fun c!1295620 () Bool)

(assert (=> d!2176196 (= c!1295620 (is-Nil!67021 lt!2484449))))

(assert (=> d!2176196 (= (++!15145 lt!2484449 (exprs!6696 ct2!306)) lt!2484569)))

(declare-fun b!6986630 () Bool)

(assert (=> b!6986630 (= e!4199211 (exprs!6696 ct2!306))))

(declare-fun b!6986632 () Bool)

(declare-fun res!2849048 () Bool)

(assert (=> b!6986632 (=> (not res!2849048) (not e!4199210))))

(assert (=> b!6986632 (= res!2849048 (= (size!40895 lt!2484569) (+ (size!40895 lt!2484449) (size!40895 (exprs!6696 ct2!306)))))))

(declare-fun b!6986633 () Bool)

(assert (=> b!6986633 (= e!4199210 (or (not (= (exprs!6696 ct2!306) Nil!67021)) (= lt!2484569 lt!2484449)))))

(declare-fun b!6986631 () Bool)

(assert (=> b!6986631 (= e!4199211 (Cons!67021 (h!73469 lt!2484449) (++!15145 (t!380892 lt!2484449) (exprs!6696 ct2!306))))))

(assert (= (and d!2176196 c!1295620) b!6986630))

(assert (= (and d!2176196 (not c!1295620)) b!6986631))

(assert (= (and d!2176196 res!2849049) b!6986632))

(assert (= (and b!6986632 res!2849048) b!6986633))

(declare-fun m!7674444 () Bool)

(assert (=> d!2176196 m!7674444))

(declare-fun m!7674446 () Bool)

(assert (=> d!2176196 m!7674446))

(assert (=> d!2176196 m!7674406))

(declare-fun m!7674448 () Bool)

(assert (=> b!6986632 m!7674448))

(declare-fun m!7674450 () Bool)

(assert (=> b!6986632 m!7674450))

(assert (=> b!6986632 m!7674412))

(declare-fun m!7674452 () Bool)

(assert (=> b!6986631 m!7674452))

(assert (=> b!6986480 d!2176196))

(declare-fun d!2176198 () Bool)

(declare-fun e!4199214 () Bool)

(assert (=> d!2176198 e!4199214))

(declare-fun res!2849052 () Bool)

(assert (=> d!2176198 (=> (not res!2849052) (not e!4199214))))

(declare-fun lt!2484572 () List!67147)

(declare-fun noDuplicate!2513 (List!67147) Bool)

(assert (=> d!2176198 (= res!2849052 (noDuplicate!2513 lt!2484572))))

(declare-fun choose!52186 ((Set Context!12392)) List!67147)

(assert (=> d!2176198 (= lt!2484572 (choose!52186 lt!2484442))))

(assert (=> d!2176198 (= (toList!10560 lt!2484442) lt!2484572)))

(declare-fun b!6986636 () Bool)

(declare-fun content!13240 (List!67147) (Set Context!12392))

(assert (=> b!6986636 (= e!4199214 (= (content!13240 lt!2484572) lt!2484442))))

(assert (= (and d!2176198 res!2849052) b!6986636))

(declare-fun m!7674454 () Bool)

(assert (=> d!2176198 m!7674454))

(declare-fun m!7674456 () Bool)

(assert (=> d!2176198 m!7674456))

(declare-fun m!7674458 () Bool)

(assert (=> b!6986636 m!7674458))

(assert (=> b!6986466 d!2176198))

(declare-fun d!2176200 () Bool)

(declare-fun c!1295621 () Bool)

(assert (=> d!2176200 (= c!1295621 (isEmpty!39124 s!7408))))

(declare-fun e!4199215 () Bool)

(assert (=> d!2176200 (= (matchZipper!2740 lt!2484453 s!7408) e!4199215)))

(declare-fun b!6986637 () Bool)

(assert (=> b!6986637 (= e!4199215 (nullableZipper!2425 lt!2484453))))

(declare-fun b!6986638 () Bool)

(assert (=> b!6986638 (= e!4199215 (matchZipper!2740 (derivationStepZipper!2680 lt!2484453 (head!14100 s!7408)) (tail!13200 s!7408)))))

(assert (= (and d!2176200 c!1295621) b!6986637))

(assert (= (and d!2176200 (not c!1295621)) b!6986638))

(assert (=> d!2176200 m!7674370))

(declare-fun m!7674460 () Bool)

(assert (=> b!6986637 m!7674460))

(assert (=> b!6986638 m!7674374))

(assert (=> b!6986638 m!7674374))

(declare-fun m!7674462 () Bool)

(assert (=> b!6986638 m!7674462))

(assert (=> b!6986638 m!7674378))

(assert (=> b!6986638 m!7674462))

(assert (=> b!6986638 m!7674378))

(declare-fun m!7674464 () Bool)

(assert (=> b!6986638 m!7674464))

(assert (=> b!6986466 d!2176200))

(declare-fun bs!1861770 () Bool)

(declare-fun d!2176202 () Bool)

(assert (= bs!1861770 (and d!2176202 b!6986466)))

(declare-fun lambda!400539 () Int)

(assert (=> bs!1861770 (= lambda!400539 lambda!400483)))

(assert (=> d!2176202 true))

(assert (=> d!2176202 (exists!2978 lt!2484440 lambda!400539)))

(declare-fun lt!2484575 () Unit!161055)

(declare-fun choose!52187 (List!67147 List!67146) Unit!161055)

(assert (=> d!2176202 (= lt!2484575 (choose!52187 lt!2484440 s!7408))))

(assert (=> d!2176202 (matchZipper!2740 (content!13240 lt!2484440) s!7408)))

(assert (=> d!2176202 (= (lemmaZipperMatchesExistsMatchingContext!169 lt!2484440 s!7408) lt!2484575)))

(declare-fun bs!1861771 () Bool)

(assert (= bs!1861771 d!2176202))

(declare-fun m!7674466 () Bool)

(assert (=> bs!1861771 m!7674466))

(declare-fun m!7674468 () Bool)

(assert (=> bs!1861771 m!7674468))

(declare-fun m!7674470 () Bool)

(assert (=> bs!1861771 m!7674470))

(assert (=> bs!1861771 m!7674470))

(declare-fun m!7674472 () Bool)

(assert (=> bs!1861771 m!7674472))

(assert (=> b!6986466 d!2176202))

(declare-fun d!2176204 () Bool)

(declare-fun e!4199218 () Bool)

(assert (=> d!2176204 e!4199218))

(declare-fun res!2849055 () Bool)

(assert (=> d!2176204 (=> (not res!2849055) (not e!4199218))))

(declare-fun lt!2484578 () Context!12392)

(declare-fun dynLambda!26851 (Int Context!12392) Bool)

(assert (=> d!2176204 (= res!2849055 (dynLambda!26851 lambda!400483 lt!2484578))))

(declare-fun getWitness!1091 (List!67147 Int) Context!12392)

(assert (=> d!2176204 (= lt!2484578 (getWitness!1091 (toList!10560 lt!2484442) lambda!400483))))

(declare-fun exists!2980 ((Set Context!12392) Int) Bool)

(assert (=> d!2176204 (exists!2980 lt!2484442 lambda!400483)))

(assert (=> d!2176204 (= (getWitness!1089 lt!2484442 lambda!400483) lt!2484578)))

(declare-fun b!6986641 () Bool)

(assert (=> b!6986641 (= e!4199218 (set.member lt!2484578 lt!2484442))))

(assert (= (and d!2176204 res!2849055) b!6986641))

(declare-fun b_lambda!262263 () Bool)

(assert (=> (not b_lambda!262263) (not d!2176204)))

(declare-fun m!7674474 () Bool)

(assert (=> d!2176204 m!7674474))

(assert (=> d!2176204 m!7674272))

(assert (=> d!2176204 m!7674272))

(declare-fun m!7674476 () Bool)

(assert (=> d!2176204 m!7674476))

(declare-fun m!7674478 () Bool)

(assert (=> d!2176204 m!7674478))

(declare-fun m!7674480 () Bool)

(assert (=> b!6986641 m!7674480))

(assert (=> b!6986466 d!2176204))

(declare-fun bs!1861772 () Bool)

(declare-fun d!2176206 () Bool)

(assert (= bs!1861772 (and d!2176206 b!6986466)))

(declare-fun lambda!400542 () Int)

(assert (=> bs!1861772 (not (= lambda!400542 lambda!400483))))

(declare-fun bs!1861773 () Bool)

(assert (= bs!1861773 (and d!2176206 d!2176202)))

(assert (=> bs!1861773 (not (= lambda!400542 lambda!400539))))

(assert (=> d!2176206 true))

(declare-fun order!27893 () Int)

(declare-fun dynLambda!26852 (Int Int) Int)

(assert (=> d!2176206 (< (dynLambda!26852 order!27893 lambda!400483) (dynLambda!26852 order!27893 lambda!400542))))

(declare-fun forall!16110 (List!67147 Int) Bool)

(assert (=> d!2176206 (= (exists!2978 lt!2484440 lambda!400483) (not (forall!16110 lt!2484440 lambda!400542)))))

(declare-fun bs!1861774 () Bool)

(assert (= bs!1861774 d!2176206))

(declare-fun m!7674482 () Bool)

(assert (=> bs!1861774 m!7674482))

(assert (=> b!6986466 d!2176206))

(declare-fun d!2176208 () Bool)

(declare-fun c!1295624 () Bool)

(assert (=> d!2176208 (= c!1295624 (isEmpty!39124 (t!380893 s!7408)))))

(declare-fun e!4199219 () Bool)

(assert (=> d!2176208 (= (matchZipper!2740 lt!2484448 (t!380893 s!7408)) e!4199219)))

(declare-fun b!6986644 () Bool)

(assert (=> b!6986644 (= e!4199219 (nullableZipper!2425 lt!2484448))))

(declare-fun b!6986645 () Bool)

(assert (=> b!6986645 (= e!4199219 (matchZipper!2740 (derivationStepZipper!2680 lt!2484448 (head!14100 (t!380893 s!7408))) (tail!13200 (t!380893 s!7408))))))

(assert (= (and d!2176208 c!1295624) b!6986644))

(assert (= (and d!2176208 (not c!1295624)) b!6986645))

(assert (=> d!2176208 m!7674386))

(declare-fun m!7674484 () Bool)

(assert (=> b!6986644 m!7674484))

(assert (=> b!6986645 m!7674390))

(assert (=> b!6986645 m!7674390))

(declare-fun m!7674486 () Bool)

(assert (=> b!6986645 m!7674486))

(assert (=> b!6986645 m!7674394))

(assert (=> b!6986645 m!7674486))

(assert (=> b!6986645 m!7674394))

(declare-fun m!7674488 () Bool)

(assert (=> b!6986645 m!7674488))

(assert (=> b!6986468 d!2176208))

(assert (=> b!6986468 d!2176184))

(declare-fun d!2176210 () Bool)

(declare-fun e!4199222 () Bool)

(assert (=> d!2176210 (= (matchZipper!2740 (set.union lt!2484452 lt!2484443) (t!380893 s!7408)) e!4199222)))

(declare-fun res!2849058 () Bool)

(assert (=> d!2176210 (=> res!2849058 e!4199222)))

(assert (=> d!2176210 (= res!2849058 (matchZipper!2740 lt!2484452 (t!380893 s!7408)))))

(declare-fun lt!2484581 () Unit!161055)

(declare-fun choose!52188 ((Set Context!12392) (Set Context!12392) List!67146) Unit!161055)

(assert (=> d!2176210 (= lt!2484581 (choose!52188 lt!2484452 lt!2484443 (t!380893 s!7408)))))

(assert (=> d!2176210 (= (lemmaZipperConcatMatchesSameAsBothZippers!1373 lt!2484452 lt!2484443 (t!380893 s!7408)) lt!2484581)))

(declare-fun b!6986648 () Bool)

(assert (=> b!6986648 (= e!4199222 (matchZipper!2740 lt!2484443 (t!380893 s!7408)))))

(assert (= (and d!2176210 (not res!2849058)) b!6986648))

(declare-fun m!7674490 () Bool)

(assert (=> d!2176210 m!7674490))

(assert (=> d!2176210 m!7674246))

(declare-fun m!7674492 () Bool)

(assert (=> d!2176210 m!7674492))

(assert (=> b!6986648 m!7674254))

(assert (=> b!6986468 d!2176210))

(declare-fun d!2176212 () Bool)

(declare-fun c!1295625 () Bool)

(assert (=> d!2176212 (= c!1295625 (isEmpty!39124 (t!380893 s!7408)))))

(declare-fun e!4199223 () Bool)

(assert (=> d!2176212 (= (matchZipper!2740 lt!2484459 (t!380893 s!7408)) e!4199223)))

(declare-fun b!6986649 () Bool)

(assert (=> b!6986649 (= e!4199223 (nullableZipper!2425 lt!2484459))))

(declare-fun b!6986650 () Bool)

(assert (=> b!6986650 (= e!4199223 (matchZipper!2740 (derivationStepZipper!2680 lt!2484459 (head!14100 (t!380893 s!7408))) (tail!13200 (t!380893 s!7408))))))

(assert (= (and d!2176212 c!1295625) b!6986649))

(assert (= (and d!2176212 (not c!1295625)) b!6986650))

(assert (=> d!2176212 m!7674386))

(declare-fun m!7674494 () Bool)

(assert (=> b!6986649 m!7674494))

(assert (=> b!6986650 m!7674390))

(assert (=> b!6986650 m!7674390))

(declare-fun m!7674496 () Bool)

(assert (=> b!6986650 m!7674496))

(assert (=> b!6986650 m!7674394))

(assert (=> b!6986650 m!7674496))

(assert (=> b!6986650 m!7674394))

(declare-fun m!7674498 () Bool)

(assert (=> b!6986650 m!7674498))

(assert (=> b!6986468 d!2176212))

(declare-fun d!2176214 () Bool)

(declare-fun c!1295626 () Bool)

(assert (=> d!2176214 (= c!1295626 (isEmpty!39124 (t!380893 s!7408)))))

(declare-fun e!4199224 () Bool)

(assert (=> d!2176214 (= (matchZipper!2740 lt!2484452 (t!380893 s!7408)) e!4199224)))

(declare-fun b!6986651 () Bool)

(assert (=> b!6986651 (= e!4199224 (nullableZipper!2425 lt!2484452))))

(declare-fun b!6986652 () Bool)

(assert (=> b!6986652 (= e!4199224 (matchZipper!2740 (derivationStepZipper!2680 lt!2484452 (head!14100 (t!380893 s!7408))) (tail!13200 (t!380893 s!7408))))))

(assert (= (and d!2176214 c!1295626) b!6986651))

(assert (= (and d!2176214 (not c!1295626)) b!6986652))

(assert (=> d!2176214 m!7674386))

(declare-fun m!7674500 () Bool)

(assert (=> b!6986651 m!7674500))

(assert (=> b!6986652 m!7674390))

(assert (=> b!6986652 m!7674390))

(declare-fun m!7674502 () Bool)

(assert (=> b!6986652 m!7674502))

(assert (=> b!6986652 m!7674394))

(assert (=> b!6986652 m!7674502))

(assert (=> b!6986652 m!7674394))

(declare-fun m!7674504 () Bool)

(assert (=> b!6986652 m!7674504))

(assert (=> b!6986468 d!2176214))

(assert (=> b!6986478 d!2176182))

(assert (=> b!6986478 d!2176184))

(assert (=> b!6986477 d!2176182))

(assert (=> b!6986465 d!2176166))

(declare-fun d!2176216 () Bool)

(declare-fun res!2849063 () Bool)

(declare-fun e!4199229 () Bool)

(assert (=> d!2176216 (=> res!2849063 e!4199229)))

(assert (=> d!2176216 (= res!2849063 (is-Nil!67021 lt!2484449))))

(assert (=> d!2176216 (= (forall!16108 lt!2484449 lambda!400485) e!4199229)))

(declare-fun b!6986657 () Bool)

(declare-fun e!4199230 () Bool)

(assert (=> b!6986657 (= e!4199229 e!4199230)))

(declare-fun res!2849064 () Bool)

(assert (=> b!6986657 (=> (not res!2849064) (not e!4199230))))

(declare-fun dynLambda!26853 (Int Regex!17200) Bool)

(assert (=> b!6986657 (= res!2849064 (dynLambda!26853 lambda!400485 (h!73469 lt!2484449)))))

(declare-fun b!6986658 () Bool)

(assert (=> b!6986658 (= e!4199230 (forall!16108 (t!380892 lt!2484449) lambda!400485))))

(assert (= (and d!2176216 (not res!2849063)) b!6986657))

(assert (= (and b!6986657 res!2849064) b!6986658))

(declare-fun b_lambda!262265 () Bool)

(assert (=> (not b_lambda!262265) (not b!6986657)))

(declare-fun m!7674506 () Bool)

(assert (=> b!6986657 m!7674506))

(declare-fun m!7674508 () Bool)

(assert (=> b!6986658 m!7674508))

(assert (=> b!6986474 d!2176216))

(assert (=> b!6986474 d!2176184))

(declare-fun d!2176218 () Bool)

(declare-fun nullableFct!2626 (Regex!17200) Bool)

(assert (=> d!2176218 (= (nullable!6960 (h!73469 (exprs!6696 lt!2484454))) (nullableFct!2626 (h!73469 (exprs!6696 lt!2484454))))))

(declare-fun bs!1861775 () Bool)

(assert (= bs!1861775 d!2176218))

(declare-fun m!7674510 () Bool)

(assert (=> bs!1861775 m!7674510))

(assert (=> b!6986473 d!2176218))

(declare-fun d!2176220 () Bool)

(assert (=> d!2176220 (= (tail!13198 (exprs!6696 lt!2484454)) (t!380892 (exprs!6696 lt!2484454)))))

(assert (=> b!6986473 d!2176220))

(declare-fun b!6986663 () Bool)

(declare-fun e!4199233 () Bool)

(declare-fun tp!1929209 () Bool)

(declare-fun tp!1929210 () Bool)

(assert (=> b!6986663 (= e!4199233 (and tp!1929209 tp!1929210))))

(assert (=> b!6986479 (= tp!1929189 e!4199233)))

(assert (= (and b!6986479 (is-Cons!67021 (exprs!6696 setElem!47706))) b!6986663))

(declare-fun b!6986668 () Bool)

(declare-fun e!4199236 () Bool)

(declare-fun tp!1929213 () Bool)

(assert (=> b!6986668 (= e!4199236 (and tp_is_empty!43625 tp!1929213))))

(assert (=> b!6986469 (= tp!1929190 e!4199236)))

(assert (= (and b!6986469 (is-Cons!67022 (t!380893 s!7408))) b!6986668))

(declare-fun b!6986669 () Bool)

(declare-fun e!4199237 () Bool)

(declare-fun tp!1929214 () Bool)

(declare-fun tp!1929215 () Bool)

(assert (=> b!6986669 (= e!4199237 (and tp!1929214 tp!1929215))))

(assert (=> b!6986475 (= tp!1929191 e!4199237)))

(assert (= (and b!6986475 (is-Cons!67021 (exprs!6696 ct2!306))) b!6986669))

(declare-fun condSetEmpty!47712 () Bool)

(assert (=> setNonEmpty!47706 (= condSetEmpty!47712 (= setRest!47706 (as set.empty (Set Context!12392))))))

(declare-fun setRes!47712 () Bool)

(assert (=> setNonEmpty!47706 (= tp!1929192 setRes!47712)))

(declare-fun setIsEmpty!47712 () Bool)

(assert (=> setIsEmpty!47712 setRes!47712))

(declare-fun setNonEmpty!47712 () Bool)

(declare-fun e!4199240 () Bool)

(declare-fun setElem!47712 () Context!12392)

(declare-fun tp!1929221 () Bool)

(assert (=> setNonEmpty!47712 (= setRes!47712 (and tp!1929221 (inv!85860 setElem!47712) e!4199240))))

(declare-fun setRest!47712 () (Set Context!12392))

(assert (=> setNonEmpty!47712 (= setRest!47706 (set.union (set.insert setElem!47712 (as set.empty (Set Context!12392))) setRest!47712))))

(declare-fun b!6986674 () Bool)

(declare-fun tp!1929220 () Bool)

(assert (=> b!6986674 (= e!4199240 tp!1929220)))

(assert (= (and setNonEmpty!47706 condSetEmpty!47712) setIsEmpty!47712))

(assert (= (and setNonEmpty!47706 (not condSetEmpty!47712)) setNonEmpty!47712))

(assert (= setNonEmpty!47712 b!6986674))

(declare-fun m!7674512 () Bool)

(assert (=> setNonEmpty!47712 m!7674512))

(declare-fun b_lambda!262267 () Bool)

(assert (= b_lambda!262265 (or b!6986472 b_lambda!262267)))

(declare-fun bs!1861776 () Bool)

(declare-fun d!2176222 () Bool)

(assert (= bs!1861776 (and d!2176222 b!6986472)))

(declare-fun validRegex!8852 (Regex!17200) Bool)

(assert (=> bs!1861776 (= (dynLambda!26853 lambda!400485 (h!73469 lt!2484449)) (validRegex!8852 (h!73469 lt!2484449)))))

(declare-fun m!7674514 () Bool)

(assert (=> bs!1861776 m!7674514))

(assert (=> b!6986657 d!2176222))

(declare-fun b_lambda!262269 () Bool)

(assert (= b_lambda!262263 (or b!6986466 b_lambda!262269)))

(declare-fun bs!1861777 () Bool)

(declare-fun d!2176224 () Bool)

(assert (= bs!1861777 (and d!2176224 b!6986466)))

(assert (=> bs!1861777 (= (dynLambda!26851 lambda!400483 lt!2484578) (matchZipper!2740 (set.insert lt!2484578 (as set.empty (Set Context!12392))) s!7408))))

(declare-fun m!7674516 () Bool)

(assert (=> bs!1861777 m!7674516))

(assert (=> bs!1861777 m!7674516))

(declare-fun m!7674518 () Bool)

(assert (=> bs!1861777 m!7674518))

(assert (=> d!2176204 d!2176224))

(declare-fun b_lambda!262271 () Bool)

(assert (= b_lambda!262259 (or b!6986481 b_lambda!262271)))

(declare-fun bs!1861778 () Bool)

(declare-fun d!2176226 () Bool)

(assert (= bs!1861778 (and d!2176226 b!6986481)))

(assert (=> bs!1861778 (= (dynLambda!26849 lambda!400486 lt!2484438) (derivationStepZipperUp!1850 lt!2484438 (h!73470 s!7408)))))

(assert (=> bs!1861778 m!7674276))

(assert (=> d!2176172 d!2176226))

(declare-fun b_lambda!262273 () Bool)

(assert (= b_lambda!262261 (or b!6986472 b_lambda!262273)))

(declare-fun bs!1861779 () Bool)

(declare-fun d!2176228 () Bool)

(assert (= bs!1861779 (and d!2176228 b!6986472)))

(declare-fun lt!2484582 () Unit!161055)

(assert (=> bs!1861779 (= lt!2484582 (lemmaConcatPreservesForall!536 (exprs!6696 lt!2484568) (exprs!6696 ct2!306) lambda!400485))))

(assert (=> bs!1861779 (= (dynLambda!26850 lambda!400484 lt!2484568) (Context!12393 (++!15145 (exprs!6696 lt!2484568) (exprs!6696 ct2!306))))))

(declare-fun m!7674520 () Bool)

(assert (=> bs!1861779 m!7674520))

(declare-fun m!7674522 () Bool)

(assert (=> bs!1861779 m!7674522))

(assert (=> d!2176188 d!2176228))

(push 1)

(assert (not b_lambda!262273))

(assert tp_is_empty!43625)

(assert (not d!2176196))

(assert (not b!6986575))

(assert (not b!6986645))

(assert (not d!2176172))

(assert (not d!2176212))

(assert (not b!6986564))

(assert (not setNonEmpty!47712))

(assert (not bs!1861776))

(assert (not b!6986663))

(assert (not b!6986595))

(assert (not bm!634215))

(assert (not d!2176188))

(assert (not b!6986674))

(assert (not b!6986668))

(assert (not b!6986644))

(assert (not b!6986572))

(assert (not b!6986652))

(assert (not b!6986586))

(assert (not bm!634214))

(assert (not d!2176184))

(assert (not d!2176210))

(assert (not bs!1861779))

(assert (not b!6986631))

(assert (not d!2176218))

(assert (not d!2176176))

(assert (not d!2176186))

(assert (not bm!634200))

(assert (not b!6986585))

(assert (not b!6986636))

(assert (not b!6986625))

(assert (not d!2176202))

(assert (not d!2176182))

(assert (not b!6986648))

(assert (not b_lambda!262271))

(assert (not b!6986637))

(assert (not d!2176166))

(assert (not b_lambda!262267))

(assert (not bm!634217))

(assert (not d!2176190))

(assert (not d!2176198))

(assert (not b!6986638))

(assert (not d!2176206))

(assert (not b!6986594))

(assert (not b!6986669))

(assert (not b!6986563))

(assert (not d!2176168))

(assert (not bm!634201))

(assert (not d!2176178))

(assert (not b!6986651))

(assert (not d!2176174))

(assert (not d!2176180))

(assert (not b!6986632))

(assert (not b!6986573))

(assert (not b_lambda!262269))

(assert (not b!6986650))

(assert (not d!2176204))

(assert (not bs!1861777))

(assert (not d!2176200))

(assert (not b!6986649))

(assert (not b!6986658))

(assert (not d!2176208))

(assert (not b!6986574))

(assert (not bs!1861778))

(assert (not d!2176214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


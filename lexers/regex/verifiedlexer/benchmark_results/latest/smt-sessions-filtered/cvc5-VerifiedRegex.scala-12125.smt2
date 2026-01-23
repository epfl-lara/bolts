; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!681444 () Bool)

(assert start!681444)

(declare-fun b!7042438 () Bool)

(assert (=> b!7042438 true))

(declare-fun b!7042427 () Bool)

(assert (=> b!7042427 true))

(declare-fun b!7042428 () Bool)

(assert (=> b!7042428 true))

(declare-fun b!7042426 () Bool)

(declare-fun res!2875094 () Bool)

(declare-fun e!4233635 () Bool)

(assert (=> b!7042426 (=> res!2875094 e!4233635)))

(declare-datatypes ((C!35262 0))(
  ( (C!35263 (val!27333 Int)) )
))
(declare-datatypes ((Regex!17496 0))(
  ( (ElementMatch!17496 (c!1310942 C!35262)) (Concat!26341 (regOne!35504 Regex!17496) (regTwo!35504 Regex!17496)) (EmptyExpr!17496) (Star!17496 (reg!17825 Regex!17496)) (EmptyLang!17496) (Union!17496 (regOne!35505 Regex!17496) (regTwo!35505 Regex!17496)) )
))
(declare-datatypes ((List!68016 0))(
  ( (Nil!67892) (Cons!67892 (h!74340 Regex!17496) (t!381787 List!68016)) )
))
(declare-datatypes ((Context!12984 0))(
  ( (Context!12985 (exprs!6992 List!68016)) )
))
(declare-fun lt!2525437 () (Set Context!12984))

(declare-datatypes ((List!68017 0))(
  ( (Nil!67893) (Cons!67893 (h!74341 C!35262) (t!381788 List!68017)) )
))
(declare-datatypes ((tuple2!68130 0))(
  ( (tuple2!68131 (_1!37368 List!68017) (_2!37368 List!68017)) )
))
(declare-fun lt!2525435 () tuple2!68130)

(declare-fun matchZipper!3036 ((Set Context!12984) List!68017) Bool)

(assert (=> b!7042426 (= res!2875094 (not (matchZipper!3036 lt!2525437 (_2!37368 lt!2525435))))))

(declare-fun e!4233639 () Bool)

(declare-fun e!4233641 () Bool)

(assert (=> b!7042427 (= e!4233639 e!4233641)))

(declare-fun res!2875106 () Bool)

(assert (=> b!7042427 (=> res!2875106 e!4233641)))

(declare-fun z1!570 () (Set Context!12984))

(declare-fun lt!2525419 () Context!12984)

(declare-fun lt!2525434 () Context!12984)

(declare-fun lt!2525426 () Context!12984)

(assert (=> b!7042427 (= res!2875106 (or (not (= lt!2525434 lt!2525419)) (not (set.member lt!2525426 z1!570))))))

(declare-fun ct2!306 () Context!12984)

(declare-fun ++!15567 (List!68016 List!68016) List!68016)

(assert (=> b!7042427 (= lt!2525434 (Context!12985 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306))))))

(declare-datatypes ((Unit!161672 0))(
  ( (Unit!161673) )
))
(declare-fun lt!2525446 () Unit!161672)

(declare-fun lambda!417185 () Int)

(declare-fun lemmaConcatPreservesForall!817 (List!68016 List!68016 Int) Unit!161672)

(assert (=> b!7042427 (= lt!2525446 (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525426) (exprs!6992 ct2!306) lambda!417185))))

(declare-fun lambda!417184 () Int)

(declare-fun mapPost2!337 ((Set Context!12984) Int Context!12984) Context!12984)

(assert (=> b!7042427 (= lt!2525426 (mapPost2!337 z1!570 lambda!417184 lt!2525419))))

(declare-fun e!4233629 () Bool)

(declare-fun e!4233642 () Bool)

(assert (=> b!7042428 (= e!4233629 e!4233642)))

(declare-fun res!2875099 () Bool)

(assert (=> b!7042428 (=> res!2875099 e!4233642)))

(declare-fun lt!2525401 () (Set Context!12984))

(declare-fun lt!2525420 () (Set Context!12984))

(declare-fun s!7408 () List!68017)

(declare-fun derivationStepZipper!2952 ((Set Context!12984) C!35262) (Set Context!12984))

(assert (=> b!7042428 (= res!2875099 (not (= (derivationStepZipper!2952 lt!2525401 (h!74341 s!7408)) lt!2525420)))))

(declare-fun lambda!417186 () Int)

(declare-fun flatMap!2443 ((Set Context!12984) Int) (Set Context!12984))

(declare-fun derivationStepZipperUp!2106 (Context!12984 C!35262) (Set Context!12984))

(assert (=> b!7042428 (= (flatMap!2443 lt!2525401 lambda!417186) (derivationStepZipperUp!2106 lt!2525434 (h!74341 s!7408)))))

(declare-fun lt!2525421 () Unit!161672)

(declare-fun lemmaFlatMapOnSingletonSet!1957 ((Set Context!12984) Context!12984 Int) Unit!161672)

(assert (=> b!7042428 (= lt!2525421 (lemmaFlatMapOnSingletonSet!1957 lt!2525401 lt!2525434 lambda!417186))))

(assert (=> b!7042428 (= lt!2525420 (derivationStepZipperUp!2106 lt!2525434 (h!74341 s!7408)))))

(declare-fun lt!2525410 () Unit!161672)

(assert (=> b!7042428 (= lt!2525410 (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525426) (exprs!6992 ct2!306) lambda!417185))))

(declare-fun b!7042429 () Bool)

(declare-fun e!4233640 () Bool)

(declare-fun lt!2525440 () (Set Context!12984))

(assert (=> b!7042429 (= e!4233640 (matchZipper!3036 lt!2525440 (t!381788 s!7408)))))

(declare-fun b!7042430 () Bool)

(declare-fun e!4233645 () Bool)

(declare-fun e!4233632 () Bool)

(assert (=> b!7042430 (= e!4233645 e!4233632)))

(declare-fun res!2875104 () Bool)

(assert (=> b!7042430 (=> res!2875104 e!4233632)))

(declare-fun lt!2525408 () (Set Context!12984))

(declare-fun lt!2525414 () (Set Context!12984))

(assert (=> b!7042430 (= res!2875104 (not (= lt!2525408 lt!2525414)))))

(declare-fun lt!2525403 () (Set Context!12984))

(declare-fun lt!2525436 () (Set Context!12984))

(assert (=> b!7042430 (= lt!2525414 (set.union lt!2525403 lt!2525436))))

(declare-fun lt!2525427 () Context!12984)

(assert (=> b!7042430 (= lt!2525436 (derivationStepZipperUp!2106 lt!2525427 (h!74341 s!7408)))))

(declare-fun b!7042431 () Bool)

(assert (=> b!7042431 (= e!4233635 e!4233645)))

(declare-fun res!2875109 () Bool)

(assert (=> b!7042431 (=> res!2875109 e!4233645)))

(declare-fun lt!2525444 () (Set Context!12984))

(assert (=> b!7042431 (= res!2875109 (not (= lt!2525408 lt!2525444)))))

(declare-fun lt!2525407 () (Set Context!12984))

(assert (=> b!7042431 (= (flatMap!2443 lt!2525407 lambda!417186) (derivationStepZipperUp!2106 lt!2525426 (h!74341 s!7408)))))

(declare-fun lt!2525416 () Unit!161672)

(assert (=> b!7042431 (= lt!2525416 (lemmaFlatMapOnSingletonSet!1957 lt!2525407 lt!2525426 lambda!417186))))

(assert (=> b!7042431 (= lt!2525444 (derivationStepZipperUp!2106 lt!2525426 (h!74341 s!7408)))))

(assert (=> b!7042431 (= lt!2525408 (derivationStepZipper!2952 lt!2525407 (h!74341 s!7408)))))

(assert (=> b!7042431 (= lt!2525407 (set.insert lt!2525426 (as set.empty (Set Context!12984))))))

(declare-fun setRes!49381 () Bool)

(declare-fun setElem!49381 () Context!12984)

(declare-fun e!4233643 () Bool)

(declare-fun setNonEmpty!49381 () Bool)

(declare-fun tp!1937560 () Bool)

(declare-fun inv!86600 (Context!12984) Bool)

(assert (=> setNonEmpty!49381 (= setRes!49381 (and tp!1937560 (inv!86600 setElem!49381) e!4233643))))

(declare-fun setRest!49381 () (Set Context!12984))

(assert (=> setNonEmpty!49381 (= z1!570 (set.union (set.insert setElem!49381 (as set.empty (Set Context!12984))) setRest!49381))))

(declare-fun b!7042433 () Bool)

(declare-fun e!4233638 () Bool)

(declare-fun tp_is_empty!44217 () Bool)

(declare-fun tp!1937561 () Bool)

(assert (=> b!7042433 (= e!4233638 (and tp_is_empty!44217 tp!1937561))))

(declare-fun b!7042434 () Bool)

(declare-fun res!2875090 () Bool)

(assert (=> b!7042434 (=> res!2875090 e!4233642)))

(assert (=> b!7042434 (= res!2875090 (not (is-Cons!67892 (exprs!6992 lt!2525426))))))

(declare-fun b!7042435 () Bool)

(declare-fun e!4233633 () Bool)

(declare-fun e!4233647 () Bool)

(assert (=> b!7042435 (= e!4233633 e!4233647)))

(declare-fun res!2875093 () Bool)

(assert (=> b!7042435 (=> res!2875093 e!4233647)))

(declare-fun e!4233636 () Bool)

(assert (=> b!7042435 (= res!2875093 e!4233636)))

(declare-fun res!2875108 () Bool)

(assert (=> b!7042435 (=> (not res!2875108) (not e!4233636))))

(declare-fun lt!2525438 () Bool)

(declare-fun lt!2525412 () Bool)

(assert (=> b!7042435 (= res!2875108 (not (= lt!2525438 lt!2525412)))))

(assert (=> b!7042435 (= lt!2525438 (matchZipper!3036 lt!2525420 (t!381788 s!7408)))))

(declare-fun lt!2525424 () List!68016)

(declare-fun lt!2525418 () Unit!161672)

(assert (=> b!7042435 (= lt!2525418 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun lt!2525413 () (Set Context!12984))

(assert (=> b!7042435 (= (matchZipper!3036 lt!2525413 (t!381788 s!7408)) e!4233640)))

(declare-fun res!2875103 () Bool)

(assert (=> b!7042435 (=> res!2875103 e!4233640)))

(assert (=> b!7042435 (= res!2875103 lt!2525412)))

(declare-fun lt!2525442 () (Set Context!12984))

(assert (=> b!7042435 (= lt!2525412 (matchZipper!3036 lt!2525442 (t!381788 s!7408)))))

(declare-fun lt!2525445 () Unit!161672)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1569 ((Set Context!12984) (Set Context!12984) List!68017) Unit!161672)

(assert (=> b!7042435 (= lt!2525445 (lemmaZipperConcatMatchesSameAsBothZippers!1569 lt!2525442 lt!2525440 (t!381788 s!7408)))))

(declare-fun lt!2525402 () Unit!161672)

(assert (=> b!7042435 (= lt!2525402 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun lt!2525423 () Unit!161672)

(assert (=> b!7042435 (= lt!2525423 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun b!7042436 () Bool)

(declare-fun e!4233644 () Bool)

(assert (=> b!7042436 (= e!4233644 e!4233635)))

(declare-fun res!2875097 () Bool)

(assert (=> b!7042436 (=> res!2875097 e!4233635)))

(assert (=> b!7042436 (= res!2875097 (not (matchZipper!3036 lt!2525403 (_1!37368 lt!2525435))))))

(declare-datatypes ((Option!16897 0))(
  ( (None!16896) (Some!16896 (v!53186 tuple2!68130)) )
))
(declare-fun lt!2525432 () Option!16897)

(declare-fun get!23796 (Option!16897) tuple2!68130)

(assert (=> b!7042436 (= lt!2525435 (get!23796 lt!2525432))))

(declare-fun isDefined!13598 (Option!16897) Bool)

(assert (=> b!7042436 (isDefined!13598 lt!2525432)))

(declare-fun findConcatSeparationZippers!413 ((Set Context!12984) (Set Context!12984) List!68017 List!68017 List!68017) Option!16897)

(assert (=> b!7042436 (= lt!2525432 (findConcatSeparationZippers!413 lt!2525403 lt!2525437 Nil!67893 (t!381788 s!7408) (t!381788 s!7408)))))

(assert (=> b!7042436 (= lt!2525437 (set.insert ct2!306 (as set.empty (Set Context!12984))))))

(declare-fun lt!2525430 () Unit!161672)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!401 ((Set Context!12984) Context!12984 List!68017) Unit!161672)

(assert (=> b!7042436 (= lt!2525430 (lemmaConcatZipperMatchesStringThenFindConcatDefined!401 lt!2525403 ct2!306 (t!381788 s!7408)))))

(declare-fun lt!2525441 () Unit!161672)

(assert (=> b!7042436 (= lt!2525441 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun appendTo!617 ((Set Context!12984) Context!12984) (Set Context!12984))

(assert (=> b!7042436 (= lt!2525442 (appendTo!617 lt!2525403 ct2!306))))

(declare-fun derivationStepZipperDown!2160 (Regex!17496 Context!12984 C!35262) (Set Context!12984))

(assert (=> b!7042436 (= lt!2525403 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525427 (h!74341 s!7408)))))

(declare-fun lt!2525443 () Unit!161672)

(assert (=> b!7042436 (= lt!2525443 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun lt!2525422 () Unit!161672)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!75 (Context!12984 Regex!17496 C!35262 Context!12984) Unit!161672)

(assert (=> b!7042436 (= lt!2525422 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!75 lt!2525427 (h!74340 (exprs!6992 lt!2525426)) (h!74341 s!7408) ct2!306))))

(declare-fun b!7042437 () Bool)

(declare-fun e!4233634 () Bool)

(assert (=> b!7042437 (= e!4233634 (matchZipper!3036 lt!2525436 (_1!37368 lt!2525435)))))

(declare-fun e!4233631 () Bool)

(assert (=> b!7042438 (= e!4233631 (not e!4233639))))

(declare-fun res!2875096 () Bool)

(assert (=> b!7042438 (=> res!2875096 e!4233639)))

(declare-fun lt!2525439 () (Set Context!12984))

(assert (=> b!7042438 (= res!2875096 (not (matchZipper!3036 lt!2525439 s!7408)))))

(assert (=> b!7042438 (= lt!2525439 (set.insert lt!2525419 (as set.empty (Set Context!12984))))))

(declare-fun lt!2525428 () (Set Context!12984))

(declare-fun lambda!417183 () Int)

(declare-fun getWitness!1523 ((Set Context!12984) Int) Context!12984)

(assert (=> b!7042438 (= lt!2525419 (getWitness!1523 lt!2525428 lambda!417183))))

(declare-datatypes ((List!68018 0))(
  ( (Nil!67894) (Cons!67894 (h!74342 Context!12984) (t!381789 List!68018)) )
))
(declare-fun lt!2525417 () List!68018)

(declare-fun exists!3444 (List!68018 Int) Bool)

(assert (=> b!7042438 (exists!3444 lt!2525417 lambda!417183)))

(declare-fun lt!2525411 () Unit!161672)

(declare-fun lemmaZipperMatchesExistsMatchingContext!435 (List!68018 List!68017) Unit!161672)

(assert (=> b!7042438 (= lt!2525411 (lemmaZipperMatchesExistsMatchingContext!435 lt!2525417 s!7408))))

(declare-fun toList!10839 ((Set Context!12984)) List!68018)

(assert (=> b!7042438 (= lt!2525417 (toList!10839 lt!2525428))))

(declare-fun b!7042439 () Bool)

(declare-fun e!4233646 () Bool)

(declare-fun tp!1937562 () Bool)

(assert (=> b!7042439 (= e!4233646 tp!1937562)))

(declare-fun b!7042440 () Bool)

(declare-fun res!2875088 () Bool)

(assert (=> b!7042440 (=> res!2875088 e!4233642)))

(declare-fun isEmpty!39620 (List!68016) Bool)

(assert (=> b!7042440 (= res!2875088 (isEmpty!39620 (exprs!6992 lt!2525426)))))

(declare-fun b!7042441 () Bool)

(declare-fun e!4233630 () Bool)

(assert (=> b!7042441 (= e!4233647 e!4233630)))

(declare-fun res!2875100 () Bool)

(assert (=> b!7042441 (=> res!2875100 e!4233630)))

(assert (=> b!7042441 (= res!2875100 (matchZipper!3036 lt!2525440 (t!381788 s!7408)))))

(declare-fun lt!2525433 () Unit!161672)

(assert (=> b!7042441 (= lt!2525433 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun b!7042442 () Bool)

(declare-fun res!2875105 () Bool)

(assert (=> b!7042442 (=> (not res!2875105) (not e!4233631))))

(assert (=> b!7042442 (= res!2875105 (is-Cons!67893 s!7408))))

(declare-fun b!7042443 () Bool)

(declare-fun e!4233637 () Bool)

(assert (=> b!7042443 (= e!4233637 e!4233633)))

(declare-fun res!2875098 () Bool)

(assert (=> b!7042443 (=> res!2875098 e!4233633)))

(assert (=> b!7042443 (= res!2875098 (not (= lt!2525420 lt!2525413)))))

(assert (=> b!7042443 (= lt!2525413 (set.union lt!2525442 lt!2525440))))

(declare-fun lt!2525431 () Context!12984)

(assert (=> b!7042443 (= lt!2525440 (derivationStepZipperUp!2106 lt!2525431 (h!74341 s!7408)))))

(assert (=> b!7042443 (= lt!2525442 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525431 (h!74341 s!7408)))))

(assert (=> b!7042443 (= lt!2525431 (Context!12985 (++!15567 lt!2525424 (exprs!6992 ct2!306))))))

(declare-fun lt!2525425 () Unit!161672)

(assert (=> b!7042443 (= lt!2525425 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun lt!2525429 () Unit!161672)

(assert (=> b!7042443 (= lt!2525429 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun b!7042444 () Bool)

(assert (=> b!7042444 (= e!4233636 (not (matchZipper!3036 lt!2525440 (t!381788 s!7408))))))

(declare-fun lt!2525406 () Unit!161672)

(assert (=> b!7042444 (= lt!2525406 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun b!7042445 () Bool)

(declare-fun res!2875102 () Bool)

(assert (=> b!7042445 (=> res!2875102 e!4233639)))

(assert (=> b!7042445 (= res!2875102 (not (set.member lt!2525419 lt!2525428)))))

(declare-fun b!7042446 () Bool)

(assert (=> b!7042446 (= e!4233641 e!4233629)))

(declare-fun res!2875095 () Bool)

(assert (=> b!7042446 (=> res!2875095 e!4233629)))

(assert (=> b!7042446 (= res!2875095 (not (= lt!2525401 lt!2525439)))))

(assert (=> b!7042446 (= lt!2525401 (set.insert lt!2525434 (as set.empty (Set Context!12984))))))

(declare-fun lt!2525415 () Unit!161672)

(assert (=> b!7042446 (= lt!2525415 (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525426) (exprs!6992 ct2!306) lambda!417185))))

(declare-fun b!7042447 () Bool)

(assert (=> b!7042447 (= e!4233642 e!4233637)))

(declare-fun res!2875092 () Bool)

(assert (=> b!7042447 (=> res!2875092 e!4233637)))

(declare-fun nullable!7207 (Regex!17496) Bool)

(assert (=> b!7042447 (= res!2875092 (not (nullable!7207 (h!74340 (exprs!6992 lt!2525426)))))))

(assert (=> b!7042447 (= lt!2525427 (Context!12985 lt!2525424))))

(declare-fun tail!13608 (List!68016) List!68016)

(assert (=> b!7042447 (= lt!2525424 (tail!13608 (exprs!6992 lt!2525426)))))

(declare-fun res!2875107 () Bool)

(assert (=> start!681444 (=> (not res!2875107) (not e!4233631))))

(assert (=> start!681444 (= res!2875107 (matchZipper!3036 lt!2525428 s!7408))))

(assert (=> start!681444 (= lt!2525428 (appendTo!617 z1!570 ct2!306))))

(assert (=> start!681444 e!4233631))

(declare-fun condSetEmpty!49381 () Bool)

(assert (=> start!681444 (= condSetEmpty!49381 (= z1!570 (as set.empty (Set Context!12984))))))

(assert (=> start!681444 setRes!49381))

(assert (=> start!681444 (and (inv!86600 ct2!306) e!4233646)))

(assert (=> start!681444 e!4233638))

(declare-fun b!7042432 () Bool)

(assert (=> b!7042432 (= e!4233632 e!4233634)))

(declare-fun res!2875101 () Bool)

(assert (=> b!7042432 (=> res!2875101 e!4233634)))

(assert (=> b!7042432 (= res!2875101 (matchZipper!3036 lt!2525407 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))))

(assert (=> b!7042432 (matchZipper!3036 lt!2525414 (_1!37368 lt!2525435))))

(declare-fun lt!2525405 () Unit!161672)

(assert (=> b!7042432 (= lt!2525405 (lemmaZipperConcatMatchesSameAsBothZippers!1569 lt!2525403 lt!2525436 (_1!37368 lt!2525435)))))

(declare-fun b!7042448 () Bool)

(declare-fun res!2875089 () Bool)

(assert (=> b!7042448 (=> res!2875089 e!4233635)))

(declare-fun ++!15568 (List!68017 List!68017) List!68017)

(assert (=> b!7042448 (= res!2875089 (not (= (++!15568 (_1!37368 lt!2525435) (_2!37368 lt!2525435)) (t!381788 s!7408))))))

(declare-fun b!7042449 () Bool)

(declare-fun tp!1937563 () Bool)

(assert (=> b!7042449 (= e!4233643 tp!1937563)))

(declare-fun b!7042450 () Bool)

(declare-fun res!2875091 () Bool)

(assert (=> b!7042450 (=> res!2875091 e!4233647)))

(assert (=> b!7042450 (= res!2875091 (not lt!2525438))))

(declare-fun setIsEmpty!49381 () Bool)

(assert (=> setIsEmpty!49381 setRes!49381))

(declare-fun b!7042451 () Bool)

(assert (=> b!7042451 (= e!4233630 e!4233644)))

(declare-fun res!2875087 () Bool)

(assert (=> b!7042451 (=> res!2875087 e!4233644)))

(assert (=> b!7042451 (= res!2875087 (not lt!2525412))))

(declare-fun lt!2525409 () Unit!161672)

(assert (=> b!7042451 (= lt!2525409 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(declare-fun lt!2525404 () Unit!161672)

(assert (=> b!7042451 (= lt!2525404 (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(assert (= (and start!681444 res!2875107) b!7042442))

(assert (= (and b!7042442 res!2875105) b!7042438))

(assert (= (and b!7042438 (not res!2875096)) b!7042445))

(assert (= (and b!7042445 (not res!2875102)) b!7042427))

(assert (= (and b!7042427 (not res!2875106)) b!7042446))

(assert (= (and b!7042446 (not res!2875095)) b!7042428))

(assert (= (and b!7042428 (not res!2875099)) b!7042434))

(assert (= (and b!7042434 (not res!2875090)) b!7042440))

(assert (= (and b!7042440 (not res!2875088)) b!7042447))

(assert (= (and b!7042447 (not res!2875092)) b!7042443))

(assert (= (and b!7042443 (not res!2875098)) b!7042435))

(assert (= (and b!7042435 (not res!2875103)) b!7042429))

(assert (= (and b!7042435 res!2875108) b!7042444))

(assert (= (and b!7042435 (not res!2875093)) b!7042450))

(assert (= (and b!7042450 (not res!2875091)) b!7042441))

(assert (= (and b!7042441 (not res!2875100)) b!7042451))

(assert (= (and b!7042451 (not res!2875087)) b!7042436))

(assert (= (and b!7042436 (not res!2875097)) b!7042426))

(assert (= (and b!7042426 (not res!2875094)) b!7042448))

(assert (= (and b!7042448 (not res!2875089)) b!7042431))

(assert (= (and b!7042431 (not res!2875109)) b!7042430))

(assert (= (and b!7042430 (not res!2875104)) b!7042432))

(assert (= (and b!7042432 (not res!2875101)) b!7042437))

(assert (= (and start!681444 condSetEmpty!49381) setIsEmpty!49381))

(assert (= (and start!681444 (not condSetEmpty!49381)) setNonEmpty!49381))

(assert (= setNonEmpty!49381 b!7042449))

(assert (= start!681444 b!7042439))

(assert (= (and start!681444 (is-Cons!67893 s!7408)) b!7042433))

(declare-fun m!7754414 () Bool)

(assert (=> setNonEmpty!49381 m!7754414))

(declare-fun m!7754416 () Bool)

(assert (=> b!7042448 m!7754416))

(declare-fun m!7754418 () Bool)

(assert (=> b!7042428 m!7754418))

(declare-fun m!7754420 () Bool)

(assert (=> b!7042428 m!7754420))

(declare-fun m!7754422 () Bool)

(assert (=> b!7042428 m!7754422))

(declare-fun m!7754424 () Bool)

(assert (=> b!7042428 m!7754424))

(declare-fun m!7754426 () Bool)

(assert (=> b!7042428 m!7754426))

(declare-fun m!7754428 () Bool)

(assert (=> b!7042438 m!7754428))

(declare-fun m!7754430 () Bool)

(assert (=> b!7042438 m!7754430))

(declare-fun m!7754432 () Bool)

(assert (=> b!7042438 m!7754432))

(declare-fun m!7754434 () Bool)

(assert (=> b!7042438 m!7754434))

(declare-fun m!7754436 () Bool)

(assert (=> b!7042438 m!7754436))

(declare-fun m!7754438 () Bool)

(assert (=> b!7042438 m!7754438))

(declare-fun m!7754440 () Bool)

(assert (=> b!7042427 m!7754440))

(declare-fun m!7754442 () Bool)

(assert (=> b!7042427 m!7754442))

(assert (=> b!7042427 m!7754418))

(declare-fun m!7754444 () Bool)

(assert (=> b!7042427 m!7754444))

(declare-fun m!7754446 () Bool)

(assert (=> b!7042440 m!7754446))

(declare-fun m!7754448 () Bool)

(assert (=> b!7042430 m!7754448))

(declare-fun m!7754450 () Bool)

(assert (=> b!7042444 m!7754450))

(declare-fun m!7754452 () Bool)

(assert (=> b!7042444 m!7754452))

(declare-fun m!7754454 () Bool)

(assert (=> b!7042447 m!7754454))

(declare-fun m!7754456 () Bool)

(assert (=> b!7042447 m!7754456))

(assert (=> b!7042441 m!7754450))

(assert (=> b!7042441 m!7754452))

(declare-fun m!7754458 () Bool)

(assert (=> b!7042432 m!7754458))

(declare-fun m!7754460 () Bool)

(assert (=> b!7042432 m!7754460))

(declare-fun m!7754462 () Bool)

(assert (=> b!7042432 m!7754462))

(assert (=> b!7042429 m!7754450))

(declare-fun m!7754464 () Bool)

(assert (=> b!7042431 m!7754464))

(declare-fun m!7754466 () Bool)

(assert (=> b!7042431 m!7754466))

(declare-fun m!7754468 () Bool)

(assert (=> b!7042431 m!7754468))

(declare-fun m!7754470 () Bool)

(assert (=> b!7042431 m!7754470))

(declare-fun m!7754472 () Bool)

(assert (=> b!7042431 m!7754472))

(declare-fun m!7754474 () Bool)

(assert (=> b!7042437 m!7754474))

(declare-fun m!7754476 () Bool)

(assert (=> b!7042445 m!7754476))

(declare-fun m!7754478 () Bool)

(assert (=> b!7042426 m!7754478))

(declare-fun m!7754480 () Bool)

(assert (=> start!681444 m!7754480))

(declare-fun m!7754482 () Bool)

(assert (=> start!681444 m!7754482))

(declare-fun m!7754484 () Bool)

(assert (=> start!681444 m!7754484))

(assert (=> b!7042451 m!7754452))

(assert (=> b!7042451 m!7754452))

(declare-fun m!7754486 () Bool)

(assert (=> b!7042436 m!7754486))

(assert (=> b!7042436 m!7754452))

(declare-fun m!7754488 () Bool)

(assert (=> b!7042436 m!7754488))

(declare-fun m!7754490 () Bool)

(assert (=> b!7042436 m!7754490))

(declare-fun m!7754492 () Bool)

(assert (=> b!7042436 m!7754492))

(declare-fun m!7754494 () Bool)

(assert (=> b!7042436 m!7754494))

(declare-fun m!7754496 () Bool)

(assert (=> b!7042436 m!7754496))

(assert (=> b!7042436 m!7754452))

(declare-fun m!7754498 () Bool)

(assert (=> b!7042436 m!7754498))

(declare-fun m!7754500 () Bool)

(assert (=> b!7042436 m!7754500))

(declare-fun m!7754502 () Bool)

(assert (=> b!7042436 m!7754502))

(declare-fun m!7754504 () Bool)

(assert (=> b!7042446 m!7754504))

(assert (=> b!7042446 m!7754418))

(declare-fun m!7754506 () Bool)

(assert (=> b!7042435 m!7754506))

(assert (=> b!7042435 m!7754452))

(declare-fun m!7754508 () Bool)

(assert (=> b!7042435 m!7754508))

(assert (=> b!7042435 m!7754452))

(declare-fun m!7754510 () Bool)

(assert (=> b!7042435 m!7754510))

(assert (=> b!7042435 m!7754452))

(declare-fun m!7754512 () Bool)

(assert (=> b!7042435 m!7754512))

(declare-fun m!7754514 () Bool)

(assert (=> b!7042443 m!7754514))

(assert (=> b!7042443 m!7754452))

(declare-fun m!7754516 () Bool)

(assert (=> b!7042443 m!7754516))

(declare-fun m!7754518 () Bool)

(assert (=> b!7042443 m!7754518))

(assert (=> b!7042443 m!7754452))

(push 1)

(assert (not b!7042427))

(assert (not b!7042439))

(assert (not b!7042436))

(assert (not b!7042437))

(assert (not b!7042428))

(assert (not b!7042429))

(assert (not b!7042443))

(assert (not start!681444))

(assert (not b!7042426))

(assert (not b!7042441))

(assert (not b!7042446))

(assert (not b!7042433))

(assert (not b!7042432))

(assert tp_is_empty!44217)

(assert (not b!7042444))

(assert (not b!7042447))

(assert (not b!7042440))

(assert (not b!7042431))

(assert (not b!7042448))

(assert (not setNonEmpty!49381))

(assert (not b!7042430))

(assert (not b!7042449))

(assert (not b!7042438))

(assert (not b!7042435))

(assert (not b!7042451))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1873468 () Bool)

(declare-fun d!2198764 () Bool)

(assert (= bs!1873468 (and d!2198764 b!7042438)))

(declare-fun lambda!417233 () Int)

(assert (=> bs!1873468 (= lambda!417233 lambda!417183)))

(assert (=> d!2198764 true))

(assert (=> d!2198764 (exists!3444 lt!2525417 lambda!417233)))

(declare-fun lt!2525589 () Unit!161672)

(declare-fun choose!53480 (List!68018 List!68017) Unit!161672)

(assert (=> d!2198764 (= lt!2525589 (choose!53480 lt!2525417 s!7408))))

(declare-fun content!13591 (List!68018) (Set Context!12984))

(assert (=> d!2198764 (matchZipper!3036 (content!13591 lt!2525417) s!7408)))

(assert (=> d!2198764 (= (lemmaZipperMatchesExistsMatchingContext!435 lt!2525417 s!7408) lt!2525589)))

(declare-fun bs!1873469 () Bool)

(assert (= bs!1873469 d!2198764))

(declare-fun m!7754626 () Bool)

(assert (=> bs!1873469 m!7754626))

(declare-fun m!7754628 () Bool)

(assert (=> bs!1873469 m!7754628))

(declare-fun m!7754630 () Bool)

(assert (=> bs!1873469 m!7754630))

(assert (=> bs!1873469 m!7754630))

(declare-fun m!7754632 () Bool)

(assert (=> bs!1873469 m!7754632))

(assert (=> b!7042438 d!2198764))

(declare-fun bs!1873470 () Bool)

(declare-fun d!2198766 () Bool)

(assert (= bs!1873470 (and d!2198766 b!7042438)))

(declare-fun lambda!417236 () Int)

(assert (=> bs!1873470 (not (= lambda!417236 lambda!417183))))

(declare-fun bs!1873471 () Bool)

(assert (= bs!1873471 (and d!2198766 d!2198764)))

(assert (=> bs!1873471 (not (= lambda!417236 lambda!417233))))

(assert (=> d!2198766 true))

(declare-fun order!28221 () Int)

(declare-fun dynLambda!27467 (Int Int) Int)

(assert (=> d!2198766 (< (dynLambda!27467 order!28221 lambda!417183) (dynLambda!27467 order!28221 lambda!417236))))

(declare-fun forall!16422 (List!68018 Int) Bool)

(assert (=> d!2198766 (= (exists!3444 lt!2525417 lambda!417183) (not (forall!16422 lt!2525417 lambda!417236)))))

(declare-fun bs!1873472 () Bool)

(assert (= bs!1873472 d!2198766))

(declare-fun m!7754634 () Bool)

(assert (=> bs!1873472 m!7754634))

(assert (=> b!7042438 d!2198766))

(declare-fun d!2198768 () Bool)

(declare-fun e!4233707 () Bool)

(assert (=> d!2198768 e!4233707))

(declare-fun res!2875182 () Bool)

(assert (=> d!2198768 (=> (not res!2875182) (not e!4233707))))

(declare-fun lt!2525592 () Context!12984)

(declare-fun dynLambda!27468 (Int Context!12984) Bool)

(assert (=> d!2198768 (= res!2875182 (dynLambda!27468 lambda!417183 lt!2525592))))

(declare-fun getWitness!1525 (List!68018 Int) Context!12984)

(assert (=> d!2198768 (= lt!2525592 (getWitness!1525 (toList!10839 lt!2525428) lambda!417183))))

(declare-fun exists!3446 ((Set Context!12984) Int) Bool)

(assert (=> d!2198768 (exists!3446 lt!2525428 lambda!417183)))

(assert (=> d!2198768 (= (getWitness!1523 lt!2525428 lambda!417183) lt!2525592)))

(declare-fun b!7042546 () Bool)

(assert (=> b!7042546 (= e!4233707 (set.member lt!2525592 lt!2525428))))

(assert (= (and d!2198768 res!2875182) b!7042546))

(declare-fun b_lambda!267375 () Bool)

(assert (=> (not b_lambda!267375) (not d!2198768)))

(declare-fun m!7754636 () Bool)

(assert (=> d!2198768 m!7754636))

(assert (=> d!2198768 m!7754436))

(assert (=> d!2198768 m!7754436))

(declare-fun m!7754638 () Bool)

(assert (=> d!2198768 m!7754638))

(declare-fun m!7754640 () Bool)

(assert (=> d!2198768 m!7754640))

(declare-fun m!7754642 () Bool)

(assert (=> b!7042546 m!7754642))

(assert (=> b!7042438 d!2198768))

(declare-fun d!2198770 () Bool)

(declare-fun c!1310958 () Bool)

(declare-fun isEmpty!39622 (List!68017) Bool)

(assert (=> d!2198770 (= c!1310958 (isEmpty!39622 s!7408))))

(declare-fun e!4233710 () Bool)

(assert (=> d!2198770 (= (matchZipper!3036 lt!2525439 s!7408) e!4233710)))

(declare-fun b!7042551 () Bool)

(declare-fun nullableZipper!2602 ((Set Context!12984)) Bool)

(assert (=> b!7042551 (= e!4233710 (nullableZipper!2602 lt!2525439))))

(declare-fun b!7042552 () Bool)

(declare-fun head!14293 (List!68017) C!35262)

(declare-fun tail!13610 (List!68017) List!68017)

(assert (=> b!7042552 (= e!4233710 (matchZipper!3036 (derivationStepZipper!2952 lt!2525439 (head!14293 s!7408)) (tail!13610 s!7408)))))

(assert (= (and d!2198770 c!1310958) b!7042551))

(assert (= (and d!2198770 (not c!1310958)) b!7042552))

(declare-fun m!7754644 () Bool)

(assert (=> d!2198770 m!7754644))

(declare-fun m!7754646 () Bool)

(assert (=> b!7042551 m!7754646))

(declare-fun m!7754648 () Bool)

(assert (=> b!7042552 m!7754648))

(assert (=> b!7042552 m!7754648))

(declare-fun m!7754650 () Bool)

(assert (=> b!7042552 m!7754650))

(declare-fun m!7754652 () Bool)

(assert (=> b!7042552 m!7754652))

(assert (=> b!7042552 m!7754650))

(assert (=> b!7042552 m!7754652))

(declare-fun m!7754654 () Bool)

(assert (=> b!7042552 m!7754654))

(assert (=> b!7042438 d!2198770))

(declare-fun d!2198772 () Bool)

(declare-fun e!4233713 () Bool)

(assert (=> d!2198772 e!4233713))

(declare-fun res!2875185 () Bool)

(assert (=> d!2198772 (=> (not res!2875185) (not e!4233713))))

(declare-fun lt!2525595 () List!68018)

(declare-fun noDuplicate!2648 (List!68018) Bool)

(assert (=> d!2198772 (= res!2875185 (noDuplicate!2648 lt!2525595))))

(declare-fun choose!53481 ((Set Context!12984)) List!68018)

(assert (=> d!2198772 (= lt!2525595 (choose!53481 lt!2525428))))

(assert (=> d!2198772 (= (toList!10839 lt!2525428) lt!2525595)))

(declare-fun b!7042555 () Bool)

(assert (=> b!7042555 (= e!4233713 (= (content!13591 lt!2525595) lt!2525428))))

(assert (= (and d!2198772 res!2875185) b!7042555))

(declare-fun m!7754656 () Bool)

(assert (=> d!2198772 m!7754656))

(declare-fun m!7754658 () Bool)

(assert (=> d!2198772 m!7754658))

(declare-fun m!7754660 () Bool)

(assert (=> b!7042555 m!7754660))

(assert (=> b!7042438 d!2198772))

(declare-fun d!2198774 () Bool)

(declare-fun c!1310959 () Bool)

(assert (=> d!2198774 (= c!1310959 (isEmpty!39622 (t!381788 s!7408)))))

(declare-fun e!4233714 () Bool)

(assert (=> d!2198774 (= (matchZipper!3036 lt!2525440 (t!381788 s!7408)) e!4233714)))

(declare-fun b!7042556 () Bool)

(assert (=> b!7042556 (= e!4233714 (nullableZipper!2602 lt!2525440))))

(declare-fun b!7042557 () Bool)

(assert (=> b!7042557 (= e!4233714 (matchZipper!3036 (derivationStepZipper!2952 lt!2525440 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))))))

(assert (= (and d!2198774 c!1310959) b!7042556))

(assert (= (and d!2198774 (not c!1310959)) b!7042557))

(declare-fun m!7754662 () Bool)

(assert (=> d!2198774 m!7754662))

(declare-fun m!7754664 () Bool)

(assert (=> b!7042556 m!7754664))

(declare-fun m!7754666 () Bool)

(assert (=> b!7042557 m!7754666))

(assert (=> b!7042557 m!7754666))

(declare-fun m!7754668 () Bool)

(assert (=> b!7042557 m!7754668))

(declare-fun m!7754670 () Bool)

(assert (=> b!7042557 m!7754670))

(assert (=> b!7042557 m!7754668))

(assert (=> b!7042557 m!7754670))

(declare-fun m!7754672 () Bool)

(assert (=> b!7042557 m!7754672))

(assert (=> b!7042429 d!2198774))

(declare-fun d!2198776 () Bool)

(declare-fun c!1310960 () Bool)

(assert (=> d!2198776 (= c!1310960 (isEmpty!39622 (_1!37368 lt!2525435)))))

(declare-fun e!4233715 () Bool)

(assert (=> d!2198776 (= (matchZipper!3036 lt!2525436 (_1!37368 lt!2525435)) e!4233715)))

(declare-fun b!7042558 () Bool)

(assert (=> b!7042558 (= e!4233715 (nullableZipper!2602 lt!2525436))))

(declare-fun b!7042559 () Bool)

(assert (=> b!7042559 (= e!4233715 (matchZipper!3036 (derivationStepZipper!2952 lt!2525436 (head!14293 (_1!37368 lt!2525435))) (tail!13610 (_1!37368 lt!2525435))))))

(assert (= (and d!2198776 c!1310960) b!7042558))

(assert (= (and d!2198776 (not c!1310960)) b!7042559))

(declare-fun m!7754674 () Bool)

(assert (=> d!2198776 m!7754674))

(declare-fun m!7754676 () Bool)

(assert (=> b!7042558 m!7754676))

(declare-fun m!7754678 () Bool)

(assert (=> b!7042559 m!7754678))

(assert (=> b!7042559 m!7754678))

(declare-fun m!7754680 () Bool)

(assert (=> b!7042559 m!7754680))

(declare-fun m!7754682 () Bool)

(assert (=> b!7042559 m!7754682))

(assert (=> b!7042559 m!7754680))

(assert (=> b!7042559 m!7754682))

(declare-fun m!7754684 () Bool)

(assert (=> b!7042559 m!7754684))

(assert (=> b!7042437 d!2198776))

(declare-fun b!7042569 () Bool)

(declare-fun e!4233720 () List!68016)

(assert (=> b!7042569 (= e!4233720 (Cons!67892 (h!74340 (exprs!6992 lt!2525426)) (++!15567 (t!381787 (exprs!6992 lt!2525426)) (exprs!6992 ct2!306))))))

(declare-fun d!2198778 () Bool)

(declare-fun e!4233721 () Bool)

(assert (=> d!2198778 e!4233721))

(declare-fun res!2875190 () Bool)

(assert (=> d!2198778 (=> (not res!2875190) (not e!4233721))))

(declare-fun lt!2525598 () List!68016)

(declare-fun content!13592 (List!68016) (Set Regex!17496))

(assert (=> d!2198778 (= res!2875190 (= (content!13592 lt!2525598) (set.union (content!13592 (exprs!6992 lt!2525426)) (content!13592 (exprs!6992 ct2!306)))))))

(assert (=> d!2198778 (= lt!2525598 e!4233720)))

(declare-fun c!1310963 () Bool)

(assert (=> d!2198778 (= c!1310963 (is-Nil!67892 (exprs!6992 lt!2525426)))))

(assert (=> d!2198778 (= (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306)) lt!2525598)))

(declare-fun b!7042568 () Bool)

(assert (=> b!7042568 (= e!4233720 (exprs!6992 ct2!306))))

(declare-fun b!7042571 () Bool)

(assert (=> b!7042571 (= e!4233721 (or (not (= (exprs!6992 ct2!306) Nil!67892)) (= lt!2525598 (exprs!6992 lt!2525426))))))

(declare-fun b!7042570 () Bool)

(declare-fun res!2875191 () Bool)

(assert (=> b!7042570 (=> (not res!2875191) (not e!4233721))))

(declare-fun size!41100 (List!68016) Int)

(assert (=> b!7042570 (= res!2875191 (= (size!41100 lt!2525598) (+ (size!41100 (exprs!6992 lt!2525426)) (size!41100 (exprs!6992 ct2!306)))))))

(assert (= (and d!2198778 c!1310963) b!7042568))

(assert (= (and d!2198778 (not c!1310963)) b!7042569))

(assert (= (and d!2198778 res!2875190) b!7042570))

(assert (= (and b!7042570 res!2875191) b!7042571))

(declare-fun m!7754686 () Bool)

(assert (=> b!7042569 m!7754686))

(declare-fun m!7754688 () Bool)

(assert (=> d!2198778 m!7754688))

(declare-fun m!7754690 () Bool)

(assert (=> d!2198778 m!7754690))

(declare-fun m!7754692 () Bool)

(assert (=> d!2198778 m!7754692))

(declare-fun m!7754694 () Bool)

(assert (=> b!7042570 m!7754694))

(declare-fun m!7754696 () Bool)

(assert (=> b!7042570 m!7754696))

(declare-fun m!7754698 () Bool)

(assert (=> b!7042570 m!7754698))

(assert (=> b!7042427 d!2198778))

(declare-fun d!2198780 () Bool)

(declare-fun forall!16423 (List!68016 Int) Bool)

(assert (=> d!2198780 (forall!16423 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306)) lambda!417185)))

(declare-fun lt!2525601 () Unit!161672)

(declare-fun choose!53482 (List!68016 List!68016 Int) Unit!161672)

(assert (=> d!2198780 (= lt!2525601 (choose!53482 (exprs!6992 lt!2525426) (exprs!6992 ct2!306) lambda!417185))))

(assert (=> d!2198780 (forall!16423 (exprs!6992 lt!2525426) lambda!417185)))

(assert (=> d!2198780 (= (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525426) (exprs!6992 ct2!306) lambda!417185) lt!2525601)))

(declare-fun bs!1873473 () Bool)

(assert (= bs!1873473 d!2198780))

(assert (=> bs!1873473 m!7754442))

(assert (=> bs!1873473 m!7754442))

(declare-fun m!7754700 () Bool)

(assert (=> bs!1873473 m!7754700))

(declare-fun m!7754702 () Bool)

(assert (=> bs!1873473 m!7754702))

(declare-fun m!7754704 () Bool)

(assert (=> bs!1873473 m!7754704))

(assert (=> b!7042427 d!2198780))

(declare-fun d!2198782 () Bool)

(declare-fun e!4233724 () Bool)

(assert (=> d!2198782 e!4233724))

(declare-fun res!2875195 () Bool)

(assert (=> d!2198782 (=> (not res!2875195) (not e!4233724))))

(declare-fun lt!2525604 () Context!12984)

(declare-fun dynLambda!27469 (Int Context!12984) Context!12984)

(assert (=> d!2198782 (= res!2875195 (= lt!2525419 (dynLambda!27469 lambda!417184 lt!2525604)))))

(declare-fun choose!53483 ((Set Context!12984) Int Context!12984) Context!12984)

(assert (=> d!2198782 (= lt!2525604 (choose!53483 z1!570 lambda!417184 lt!2525419))))

(declare-fun map!15806 ((Set Context!12984) Int) (Set Context!12984))

(assert (=> d!2198782 (set.member lt!2525419 (map!15806 z1!570 lambda!417184))))

(assert (=> d!2198782 (= (mapPost2!337 z1!570 lambda!417184 lt!2525419) lt!2525604)))

(declare-fun b!7042575 () Bool)

(assert (=> b!7042575 (= e!4233724 (set.member lt!2525604 z1!570))))

(assert (= (and d!2198782 res!2875195) b!7042575))

(declare-fun b_lambda!267377 () Bool)

(assert (=> (not b_lambda!267377) (not d!2198782)))

(declare-fun m!7754706 () Bool)

(assert (=> d!2198782 m!7754706))

(declare-fun m!7754708 () Bool)

(assert (=> d!2198782 m!7754708))

(declare-fun m!7754710 () Bool)

(assert (=> d!2198782 m!7754710))

(declare-fun m!7754712 () Bool)

(assert (=> d!2198782 m!7754712))

(declare-fun m!7754714 () Bool)

(assert (=> b!7042575 m!7754714))

(assert (=> b!7042427 d!2198782))

(declare-fun d!2198784 () Bool)

(declare-fun dynLambda!27470 (Int Context!12984) (Set Context!12984))

(assert (=> d!2198784 (= (flatMap!2443 lt!2525401 lambda!417186) (dynLambda!27470 lambda!417186 lt!2525434))))

(declare-fun lt!2525607 () Unit!161672)

(declare-fun choose!53484 ((Set Context!12984) Context!12984 Int) Unit!161672)

(assert (=> d!2198784 (= lt!2525607 (choose!53484 lt!2525401 lt!2525434 lambda!417186))))

(assert (=> d!2198784 (= lt!2525401 (set.insert lt!2525434 (as set.empty (Set Context!12984))))))

(assert (=> d!2198784 (= (lemmaFlatMapOnSingletonSet!1957 lt!2525401 lt!2525434 lambda!417186) lt!2525607)))

(declare-fun b_lambda!267379 () Bool)

(assert (=> (not b_lambda!267379) (not d!2198784)))

(declare-fun bs!1873474 () Bool)

(assert (= bs!1873474 d!2198784))

(assert (=> bs!1873474 m!7754420))

(declare-fun m!7754716 () Bool)

(assert (=> bs!1873474 m!7754716))

(declare-fun m!7754718 () Bool)

(assert (=> bs!1873474 m!7754718))

(assert (=> bs!1873474 m!7754504))

(assert (=> b!7042428 d!2198784))

(declare-fun b!7042586 () Bool)

(declare-fun e!4233732 () (Set Context!12984))

(declare-fun call!639660 () (Set Context!12984))

(assert (=> b!7042586 (= e!4233732 call!639660)))

(declare-fun b!7042587 () Bool)

(declare-fun e!4233733 () (Set Context!12984))

(assert (=> b!7042587 (= e!4233733 e!4233732)))

(declare-fun c!1310969 () Bool)

(assert (=> b!7042587 (= c!1310969 (is-Cons!67892 (exprs!6992 lt!2525434)))))

(declare-fun b!7042588 () Bool)

(assert (=> b!7042588 (= e!4233733 (set.union call!639660 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525434))) (h!74341 s!7408))))))

(declare-fun d!2198786 () Bool)

(declare-fun c!1310968 () Bool)

(declare-fun e!4233731 () Bool)

(assert (=> d!2198786 (= c!1310968 e!4233731)))

(declare-fun res!2875198 () Bool)

(assert (=> d!2198786 (=> (not res!2875198) (not e!4233731))))

(assert (=> d!2198786 (= res!2875198 (is-Cons!67892 (exprs!6992 lt!2525434)))))

(assert (=> d!2198786 (= (derivationStepZipperUp!2106 lt!2525434 (h!74341 s!7408)) e!4233733)))

(declare-fun bm!639655 () Bool)

(assert (=> bm!639655 (= call!639660 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525434)) (Context!12985 (t!381787 (exprs!6992 lt!2525434))) (h!74341 s!7408)))))

(declare-fun b!7042589 () Bool)

(assert (=> b!7042589 (= e!4233732 (as set.empty (Set Context!12984)))))

(declare-fun b!7042590 () Bool)

(assert (=> b!7042590 (= e!4233731 (nullable!7207 (h!74340 (exprs!6992 lt!2525434))))))

(assert (= (and d!2198786 res!2875198) b!7042590))

(assert (= (and d!2198786 c!1310968) b!7042588))

(assert (= (and d!2198786 (not c!1310968)) b!7042587))

(assert (= (and b!7042587 c!1310969) b!7042586))

(assert (= (and b!7042587 (not c!1310969)) b!7042589))

(assert (= (or b!7042588 b!7042586) bm!639655))

(declare-fun m!7754720 () Bool)

(assert (=> b!7042588 m!7754720))

(declare-fun m!7754722 () Bool)

(assert (=> bm!639655 m!7754722))

(declare-fun m!7754724 () Bool)

(assert (=> b!7042590 m!7754724))

(assert (=> b!7042428 d!2198786))

(declare-fun bs!1873475 () Bool)

(declare-fun d!2198788 () Bool)

(assert (= bs!1873475 (and d!2198788 b!7042428)))

(declare-fun lambda!417239 () Int)

(assert (=> bs!1873475 (= lambda!417239 lambda!417186)))

(assert (=> d!2198788 true))

(assert (=> d!2198788 (= (derivationStepZipper!2952 lt!2525401 (h!74341 s!7408)) (flatMap!2443 lt!2525401 lambda!417239))))

(declare-fun bs!1873476 () Bool)

(assert (= bs!1873476 d!2198788))

(declare-fun m!7754726 () Bool)

(assert (=> bs!1873476 m!7754726))

(assert (=> b!7042428 d!2198788))

(declare-fun d!2198790 () Bool)

(declare-fun choose!53485 ((Set Context!12984) Int) (Set Context!12984))

(assert (=> d!2198790 (= (flatMap!2443 lt!2525401 lambda!417186) (choose!53485 lt!2525401 lambda!417186))))

(declare-fun bs!1873477 () Bool)

(assert (= bs!1873477 d!2198790))

(declare-fun m!7754728 () Bool)

(assert (=> bs!1873477 m!7754728))

(assert (=> b!7042428 d!2198790))

(assert (=> b!7042428 d!2198780))

(declare-fun b!7042602 () Bool)

(declare-fun e!4233739 () List!68017)

(assert (=> b!7042602 (= e!4233739 (Cons!67893 (h!74341 (_1!37368 lt!2525435)) (++!15568 (t!381788 (_1!37368 lt!2525435)) (_2!37368 lt!2525435))))))

(declare-fun b!7042603 () Bool)

(declare-fun res!2875204 () Bool)

(declare-fun e!4233738 () Bool)

(assert (=> b!7042603 (=> (not res!2875204) (not e!4233738))))

(declare-fun lt!2525610 () List!68017)

(declare-fun size!41101 (List!68017) Int)

(assert (=> b!7042603 (= res!2875204 (= (size!41101 lt!2525610) (+ (size!41101 (_1!37368 lt!2525435)) (size!41101 (_2!37368 lt!2525435)))))))

(declare-fun b!7042601 () Bool)

(assert (=> b!7042601 (= e!4233739 (_2!37368 lt!2525435))))

(declare-fun d!2198792 () Bool)

(assert (=> d!2198792 e!4233738))

(declare-fun res!2875203 () Bool)

(assert (=> d!2198792 (=> (not res!2875203) (not e!4233738))))

(declare-fun content!13593 (List!68017) (Set C!35262))

(assert (=> d!2198792 (= res!2875203 (= (content!13593 lt!2525610) (set.union (content!13593 (_1!37368 lt!2525435)) (content!13593 (_2!37368 lt!2525435)))))))

(assert (=> d!2198792 (= lt!2525610 e!4233739)))

(declare-fun c!1310974 () Bool)

(assert (=> d!2198792 (= c!1310974 (is-Nil!67893 (_1!37368 lt!2525435)))))

(assert (=> d!2198792 (= (++!15568 (_1!37368 lt!2525435) (_2!37368 lt!2525435)) lt!2525610)))

(declare-fun b!7042604 () Bool)

(assert (=> b!7042604 (= e!4233738 (or (not (= (_2!37368 lt!2525435) Nil!67893)) (= lt!2525610 (_1!37368 lt!2525435))))))

(assert (= (and d!2198792 c!1310974) b!7042601))

(assert (= (and d!2198792 (not c!1310974)) b!7042602))

(assert (= (and d!2198792 res!2875203) b!7042603))

(assert (= (and b!7042603 res!2875204) b!7042604))

(declare-fun m!7754730 () Bool)

(assert (=> b!7042602 m!7754730))

(declare-fun m!7754732 () Bool)

(assert (=> b!7042603 m!7754732))

(declare-fun m!7754734 () Bool)

(assert (=> b!7042603 m!7754734))

(declare-fun m!7754736 () Bool)

(assert (=> b!7042603 m!7754736))

(declare-fun m!7754738 () Bool)

(assert (=> d!2198792 m!7754738))

(declare-fun m!7754740 () Bool)

(assert (=> d!2198792 m!7754740))

(declare-fun m!7754742 () Bool)

(assert (=> d!2198792 m!7754742))

(assert (=> b!7042448 d!2198792))

(assert (=> b!7042441 d!2198774))

(declare-fun d!2198794 () Bool)

(assert (=> d!2198794 (forall!16423 (++!15567 lt!2525424 (exprs!6992 ct2!306)) lambda!417185)))

(declare-fun lt!2525611 () Unit!161672)

(assert (=> d!2198794 (= lt!2525611 (choose!53482 lt!2525424 (exprs!6992 ct2!306) lambda!417185))))

(assert (=> d!2198794 (forall!16423 lt!2525424 lambda!417185)))

(assert (=> d!2198794 (= (lemmaConcatPreservesForall!817 lt!2525424 (exprs!6992 ct2!306) lambda!417185) lt!2525611)))

(declare-fun bs!1873478 () Bool)

(assert (= bs!1873478 d!2198794))

(assert (=> bs!1873478 m!7754516))

(assert (=> bs!1873478 m!7754516))

(declare-fun m!7754744 () Bool)

(assert (=> bs!1873478 m!7754744))

(declare-fun m!7754746 () Bool)

(assert (=> bs!1873478 m!7754746))

(declare-fun m!7754748 () Bool)

(assert (=> bs!1873478 m!7754748))

(assert (=> b!7042441 d!2198794))

(declare-fun d!2198796 () Bool)

(assert (=> d!2198796 (= (flatMap!2443 lt!2525407 lambda!417186) (choose!53485 lt!2525407 lambda!417186))))

(declare-fun bs!1873479 () Bool)

(assert (= bs!1873479 d!2198796))

(declare-fun m!7754750 () Bool)

(assert (=> bs!1873479 m!7754750))

(assert (=> b!7042431 d!2198796))

(declare-fun b!7042605 () Bool)

(declare-fun e!4233741 () (Set Context!12984))

(declare-fun call!639661 () (Set Context!12984))

(assert (=> b!7042605 (= e!4233741 call!639661)))

(declare-fun b!7042606 () Bool)

(declare-fun e!4233742 () (Set Context!12984))

(assert (=> b!7042606 (= e!4233742 e!4233741)))

(declare-fun c!1310976 () Bool)

(assert (=> b!7042606 (= c!1310976 (is-Cons!67892 (exprs!6992 lt!2525426)))))

(declare-fun b!7042607 () Bool)

(assert (=> b!7042607 (= e!4233742 (set.union call!639661 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525426))) (h!74341 s!7408))))))

(declare-fun d!2198798 () Bool)

(declare-fun c!1310975 () Bool)

(declare-fun e!4233740 () Bool)

(assert (=> d!2198798 (= c!1310975 e!4233740)))

(declare-fun res!2875205 () Bool)

(assert (=> d!2198798 (=> (not res!2875205) (not e!4233740))))

(assert (=> d!2198798 (= res!2875205 (is-Cons!67892 (exprs!6992 lt!2525426)))))

(assert (=> d!2198798 (= (derivationStepZipperUp!2106 lt!2525426 (h!74341 s!7408)) e!4233742)))

(declare-fun bm!639656 () Bool)

(assert (=> bm!639656 (= call!639661 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) (Context!12985 (t!381787 (exprs!6992 lt!2525426))) (h!74341 s!7408)))))

(declare-fun b!7042608 () Bool)

(assert (=> b!7042608 (= e!4233741 (as set.empty (Set Context!12984)))))

(declare-fun b!7042609 () Bool)

(assert (=> b!7042609 (= e!4233740 (nullable!7207 (h!74340 (exprs!6992 lt!2525426))))))

(assert (= (and d!2198798 res!2875205) b!7042609))

(assert (= (and d!2198798 c!1310975) b!7042607))

(assert (= (and d!2198798 (not c!1310975)) b!7042606))

(assert (= (and b!7042606 c!1310976) b!7042605))

(assert (= (and b!7042606 (not c!1310976)) b!7042608))

(assert (= (or b!7042607 b!7042605) bm!639656))

(declare-fun m!7754752 () Bool)

(assert (=> b!7042607 m!7754752))

(declare-fun m!7754754 () Bool)

(assert (=> bm!639656 m!7754754))

(assert (=> b!7042609 m!7754454))

(assert (=> b!7042431 d!2198798))

(declare-fun d!2198800 () Bool)

(assert (=> d!2198800 (= (flatMap!2443 lt!2525407 lambda!417186) (dynLambda!27470 lambda!417186 lt!2525426))))

(declare-fun lt!2525612 () Unit!161672)

(assert (=> d!2198800 (= lt!2525612 (choose!53484 lt!2525407 lt!2525426 lambda!417186))))

(assert (=> d!2198800 (= lt!2525407 (set.insert lt!2525426 (as set.empty (Set Context!12984))))))

(assert (=> d!2198800 (= (lemmaFlatMapOnSingletonSet!1957 lt!2525407 lt!2525426 lambda!417186) lt!2525612)))

(declare-fun b_lambda!267381 () Bool)

(assert (=> (not b_lambda!267381) (not d!2198800)))

(declare-fun bs!1873480 () Bool)

(assert (= bs!1873480 d!2198800))

(assert (=> bs!1873480 m!7754468))

(declare-fun m!7754756 () Bool)

(assert (=> bs!1873480 m!7754756))

(declare-fun m!7754758 () Bool)

(assert (=> bs!1873480 m!7754758))

(assert (=> bs!1873480 m!7754470))

(assert (=> b!7042431 d!2198800))

(declare-fun bs!1873481 () Bool)

(declare-fun d!2198802 () Bool)

(assert (= bs!1873481 (and d!2198802 b!7042428)))

(declare-fun lambda!417240 () Int)

(assert (=> bs!1873481 (= lambda!417240 lambda!417186)))

(declare-fun bs!1873482 () Bool)

(assert (= bs!1873482 (and d!2198802 d!2198788)))

(assert (=> bs!1873482 (= lambda!417240 lambda!417239)))

(assert (=> d!2198802 true))

(assert (=> d!2198802 (= (derivationStepZipper!2952 lt!2525407 (h!74341 s!7408)) (flatMap!2443 lt!2525407 lambda!417240))))

(declare-fun bs!1873483 () Bool)

(assert (= bs!1873483 d!2198802))

(declare-fun m!7754760 () Bool)

(assert (=> bs!1873483 m!7754760))

(assert (=> b!7042431 d!2198802))

(declare-fun bs!1873484 () Bool)

(declare-fun d!2198804 () Bool)

(assert (= bs!1873484 (and d!2198804 b!7042427)))

(declare-fun lambda!417243 () Int)

(assert (=> bs!1873484 (= lambda!417243 lambda!417185)))

(assert (=> d!2198804 (= (inv!86600 setElem!49381) (forall!16423 (exprs!6992 setElem!49381) lambda!417243))))

(declare-fun bs!1873485 () Bool)

(assert (= bs!1873485 d!2198804))

(declare-fun m!7754762 () Bool)

(assert (=> bs!1873485 m!7754762))

(assert (=> setNonEmpty!49381 d!2198804))

(assert (=> b!7042451 d!2198794))

(declare-fun b!7042610 () Bool)

(declare-fun e!4233744 () (Set Context!12984))

(declare-fun call!639662 () (Set Context!12984))

(assert (=> b!7042610 (= e!4233744 call!639662)))

(declare-fun b!7042611 () Bool)

(declare-fun e!4233745 () (Set Context!12984))

(assert (=> b!7042611 (= e!4233745 e!4233744)))

(declare-fun c!1310978 () Bool)

(assert (=> b!7042611 (= c!1310978 (is-Cons!67892 (exprs!6992 lt!2525427)))))

(declare-fun b!7042612 () Bool)

(assert (=> b!7042612 (= e!4233745 (set.union call!639662 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525427))) (h!74341 s!7408))))))

(declare-fun d!2198806 () Bool)

(declare-fun c!1310977 () Bool)

(declare-fun e!4233743 () Bool)

(assert (=> d!2198806 (= c!1310977 e!4233743)))

(declare-fun res!2875206 () Bool)

(assert (=> d!2198806 (=> (not res!2875206) (not e!4233743))))

(assert (=> d!2198806 (= res!2875206 (is-Cons!67892 (exprs!6992 lt!2525427)))))

(assert (=> d!2198806 (= (derivationStepZipperUp!2106 lt!2525427 (h!74341 s!7408)) e!4233745)))

(declare-fun bm!639657 () Bool)

(assert (=> bm!639657 (= call!639662 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525427)) (Context!12985 (t!381787 (exprs!6992 lt!2525427))) (h!74341 s!7408)))))

(declare-fun b!7042613 () Bool)

(assert (=> b!7042613 (= e!4233744 (as set.empty (Set Context!12984)))))

(declare-fun b!7042614 () Bool)

(assert (=> b!7042614 (= e!4233743 (nullable!7207 (h!74340 (exprs!6992 lt!2525427))))))

(assert (= (and d!2198806 res!2875206) b!7042614))

(assert (= (and d!2198806 c!1310977) b!7042612))

(assert (= (and d!2198806 (not c!1310977)) b!7042611))

(assert (= (and b!7042611 c!1310978) b!7042610))

(assert (= (and b!7042611 (not c!1310978)) b!7042613))

(assert (= (or b!7042612 b!7042610) bm!639657))

(declare-fun m!7754764 () Bool)

(assert (=> b!7042612 m!7754764))

(declare-fun m!7754766 () Bool)

(assert (=> bm!639657 m!7754766))

(declare-fun m!7754768 () Bool)

(assert (=> b!7042614 m!7754768))

(assert (=> b!7042430 d!2198806))

(declare-fun d!2198808 () Bool)

(declare-fun c!1310979 () Bool)

(assert (=> d!2198808 (= c!1310979 (isEmpty!39622 s!7408))))

(declare-fun e!4233746 () Bool)

(assert (=> d!2198808 (= (matchZipper!3036 lt!2525428 s!7408) e!4233746)))

(declare-fun b!7042615 () Bool)

(assert (=> b!7042615 (= e!4233746 (nullableZipper!2602 lt!2525428))))

(declare-fun b!7042616 () Bool)

(assert (=> b!7042616 (= e!4233746 (matchZipper!3036 (derivationStepZipper!2952 lt!2525428 (head!14293 s!7408)) (tail!13610 s!7408)))))

(assert (= (and d!2198808 c!1310979) b!7042615))

(assert (= (and d!2198808 (not c!1310979)) b!7042616))

(assert (=> d!2198808 m!7754644))

(declare-fun m!7754770 () Bool)

(assert (=> b!7042615 m!7754770))

(assert (=> b!7042616 m!7754648))

(assert (=> b!7042616 m!7754648))

(declare-fun m!7754772 () Bool)

(assert (=> b!7042616 m!7754772))

(assert (=> b!7042616 m!7754652))

(assert (=> b!7042616 m!7754772))

(assert (=> b!7042616 m!7754652))

(declare-fun m!7754774 () Bool)

(assert (=> b!7042616 m!7754774))

(assert (=> start!681444 d!2198808))

(declare-fun bs!1873486 () Bool)

(declare-fun d!2198810 () Bool)

(assert (= bs!1873486 (and d!2198810 b!7042427)))

(declare-fun lambda!417248 () Int)

(assert (=> bs!1873486 (= lambda!417248 lambda!417184)))

(assert (=> d!2198810 true))

(assert (=> d!2198810 (= (appendTo!617 z1!570 ct2!306) (map!15806 z1!570 lambda!417248))))

(declare-fun bs!1873487 () Bool)

(assert (= bs!1873487 d!2198810))

(declare-fun m!7754776 () Bool)

(assert (=> bs!1873487 m!7754776))

(assert (=> start!681444 d!2198810))

(declare-fun bs!1873488 () Bool)

(declare-fun d!2198812 () Bool)

(assert (= bs!1873488 (and d!2198812 b!7042427)))

(declare-fun lambda!417249 () Int)

(assert (=> bs!1873488 (= lambda!417249 lambda!417185)))

(declare-fun bs!1873489 () Bool)

(assert (= bs!1873489 (and d!2198812 d!2198804)))

(assert (=> bs!1873489 (= lambda!417249 lambda!417243)))

(assert (=> d!2198812 (= (inv!86600 ct2!306) (forall!16423 (exprs!6992 ct2!306) lambda!417249))))

(declare-fun bs!1873490 () Bool)

(assert (= bs!1873490 d!2198812))

(declare-fun m!7754778 () Bool)

(assert (=> bs!1873490 m!7754778))

(assert (=> start!681444 d!2198812))

(declare-fun d!2198814 () Bool)

(assert (=> d!2198814 (= (isEmpty!39620 (exprs!6992 lt!2525426)) (is-Nil!67892 (exprs!6992 lt!2525426)))))

(assert (=> b!7042440 d!2198814))

(assert (=> b!7042444 d!2198774))

(assert (=> b!7042444 d!2198794))

(assert (=> b!7042443 d!2198794))

(declare-fun b!7042617 () Bool)

(declare-fun e!4233748 () (Set Context!12984))

(declare-fun call!639663 () (Set Context!12984))

(assert (=> b!7042617 (= e!4233748 call!639663)))

(declare-fun b!7042618 () Bool)

(declare-fun e!4233749 () (Set Context!12984))

(assert (=> b!7042618 (= e!4233749 e!4233748)))

(declare-fun c!1310982 () Bool)

(assert (=> b!7042618 (= c!1310982 (is-Cons!67892 (exprs!6992 lt!2525431)))))

(declare-fun b!7042619 () Bool)

(assert (=> b!7042619 (= e!4233749 (set.union call!639663 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525431))) (h!74341 s!7408))))))

(declare-fun d!2198816 () Bool)

(declare-fun c!1310981 () Bool)

(declare-fun e!4233747 () Bool)

(assert (=> d!2198816 (= c!1310981 e!4233747)))

(declare-fun res!2875207 () Bool)

(assert (=> d!2198816 (=> (not res!2875207) (not e!4233747))))

(assert (=> d!2198816 (= res!2875207 (is-Cons!67892 (exprs!6992 lt!2525431)))))

(assert (=> d!2198816 (= (derivationStepZipperUp!2106 lt!2525431 (h!74341 s!7408)) e!4233749)))

(declare-fun bm!639658 () Bool)

(assert (=> bm!639658 (= call!639663 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525431)) (Context!12985 (t!381787 (exprs!6992 lt!2525431))) (h!74341 s!7408)))))

(declare-fun b!7042620 () Bool)

(assert (=> b!7042620 (= e!4233748 (as set.empty (Set Context!12984)))))

(declare-fun b!7042621 () Bool)

(assert (=> b!7042621 (= e!4233747 (nullable!7207 (h!74340 (exprs!6992 lt!2525431))))))

(assert (= (and d!2198816 res!2875207) b!7042621))

(assert (= (and d!2198816 c!1310981) b!7042619))

(assert (= (and d!2198816 (not c!1310981)) b!7042618))

(assert (= (and b!7042618 c!1310982) b!7042617))

(assert (= (and b!7042618 (not c!1310982)) b!7042620))

(assert (= (or b!7042619 b!7042617) bm!639658))

(declare-fun m!7754780 () Bool)

(assert (=> b!7042619 m!7754780))

(declare-fun m!7754782 () Bool)

(assert (=> bm!639658 m!7754782))

(declare-fun m!7754784 () Bool)

(assert (=> b!7042621 m!7754784))

(assert (=> b!7042443 d!2198816))

(declare-fun b!7042623 () Bool)

(declare-fun e!4233750 () List!68016)

(assert (=> b!7042623 (= e!4233750 (Cons!67892 (h!74340 lt!2525424) (++!15567 (t!381787 lt!2525424) (exprs!6992 ct2!306))))))

(declare-fun d!2198818 () Bool)

(declare-fun e!4233751 () Bool)

(assert (=> d!2198818 e!4233751))

(declare-fun res!2875208 () Bool)

(assert (=> d!2198818 (=> (not res!2875208) (not e!4233751))))

(declare-fun lt!2525615 () List!68016)

(assert (=> d!2198818 (= res!2875208 (= (content!13592 lt!2525615) (set.union (content!13592 lt!2525424) (content!13592 (exprs!6992 ct2!306)))))))

(assert (=> d!2198818 (= lt!2525615 e!4233750)))

(declare-fun c!1310983 () Bool)

(assert (=> d!2198818 (= c!1310983 (is-Nil!67892 lt!2525424))))

(assert (=> d!2198818 (= (++!15567 lt!2525424 (exprs!6992 ct2!306)) lt!2525615)))

(declare-fun b!7042622 () Bool)

(assert (=> b!7042622 (= e!4233750 (exprs!6992 ct2!306))))

(declare-fun b!7042625 () Bool)

(assert (=> b!7042625 (= e!4233751 (or (not (= (exprs!6992 ct2!306) Nil!67892)) (= lt!2525615 lt!2525424)))))

(declare-fun b!7042624 () Bool)

(declare-fun res!2875209 () Bool)

(assert (=> b!7042624 (=> (not res!2875209) (not e!4233751))))

(assert (=> b!7042624 (= res!2875209 (= (size!41100 lt!2525615) (+ (size!41100 lt!2525424) (size!41100 (exprs!6992 ct2!306)))))))

(assert (= (and d!2198818 c!1310983) b!7042622))

(assert (= (and d!2198818 (not c!1310983)) b!7042623))

(assert (= (and d!2198818 res!2875208) b!7042624))

(assert (= (and b!7042624 res!2875209) b!7042625))

(declare-fun m!7754786 () Bool)

(assert (=> b!7042623 m!7754786))

(declare-fun m!7754788 () Bool)

(assert (=> d!2198818 m!7754788))

(declare-fun m!7754790 () Bool)

(assert (=> d!2198818 m!7754790))

(assert (=> d!2198818 m!7754692))

(declare-fun m!7754792 () Bool)

(assert (=> b!7042624 m!7754792))

(declare-fun m!7754794 () Bool)

(assert (=> b!7042624 m!7754794))

(assert (=> b!7042624 m!7754698))

(assert (=> b!7042443 d!2198818))

(declare-fun b!7042648 () Bool)

(declare-fun e!4233768 () (Set Context!12984))

(declare-fun call!639680 () (Set Context!12984))

(declare-fun call!639676 () (Set Context!12984))

(assert (=> b!7042648 (= e!4233768 (set.union call!639680 call!639676))))

(declare-fun d!2198820 () Bool)

(declare-fun c!1310998 () Bool)

(assert (=> d!2198820 (= c!1310998 (and (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525426))) (= (c!1310942 (h!74340 (exprs!6992 lt!2525426))) (h!74341 s!7408))))))

(declare-fun e!4233767 () (Set Context!12984))

(assert (=> d!2198820 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525431 (h!74341 s!7408)) e!4233767)))

(declare-fun bm!639671 () Bool)

(declare-fun call!639677 () (Set Context!12984))

(assert (=> bm!639671 (= call!639676 call!639677)))

(declare-fun call!639679 () List!68016)

(declare-fun c!1310996 () Bool)

(declare-fun c!1310995 () Bool)

(declare-fun c!1310997 () Bool)

(declare-fun bm!639672 () Bool)

(assert (=> bm!639672 (= call!639677 (derivationStepZipperDown!2160 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))) (ite (or c!1310995 c!1310996) lt!2525431 (Context!12985 call!639679)) (h!74341 s!7408)))))

(declare-fun b!7042649 () Bool)

(assert (=> b!7042649 (= e!4233767 (set.insert lt!2525431 (as set.empty (Set Context!12984))))))

(declare-fun b!7042650 () Bool)

(declare-fun e!4233766 () (Set Context!12984))

(assert (=> b!7042650 (= e!4233767 e!4233766)))

(assert (=> b!7042650 (= c!1310995 (is-Union!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042651 () Bool)

(declare-fun e!4233764 () (Set Context!12984))

(declare-fun call!639678 () (Set Context!12984))

(assert (=> b!7042651 (= e!4233764 call!639678)))

(declare-fun b!7042652 () Bool)

(declare-fun e!4233765 () (Set Context!12984))

(assert (=> b!7042652 (= e!4233765 call!639678)))

(declare-fun b!7042653 () Bool)

(declare-fun e!4233769 () Bool)

(assert (=> b!7042653 (= c!1310996 e!4233769)))

(declare-fun res!2875212 () Bool)

(assert (=> b!7042653 (=> (not res!2875212) (not e!4233769))))

(assert (=> b!7042653 (= res!2875212 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042653 (= e!4233766 e!4233768)))

(declare-fun b!7042654 () Bool)

(assert (=> b!7042654 (= e!4233764 (as set.empty (Set Context!12984)))))

(declare-fun call!639681 () List!68016)

(declare-fun bm!639673 () Bool)

(assert (=> bm!639673 (= call!639680 (derivationStepZipperDown!2160 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))) (ite c!1310995 lt!2525431 (Context!12985 call!639681)) (h!74341 s!7408)))))

(declare-fun b!7042655 () Bool)

(declare-fun c!1310994 () Bool)

(assert (=> b!7042655 (= c!1310994 (is-Star!17496 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042655 (= e!4233765 e!4233764)))

(declare-fun b!7042656 () Bool)

(assert (=> b!7042656 (= e!4233768 e!4233765)))

(assert (=> b!7042656 (= c!1310997 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042657 () Bool)

(assert (=> b!7042657 (= e!4233766 (set.union call!639677 call!639680))))

(declare-fun bm!639674 () Bool)

(assert (=> bm!639674 (= call!639679 call!639681)))

(declare-fun bm!639675 () Bool)

(assert (=> bm!639675 (= call!639678 call!639676)))

(declare-fun b!7042658 () Bool)

(assert (=> b!7042658 (= e!4233769 (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))

(declare-fun bm!639676 () Bool)

(declare-fun $colon$colon!2595 (List!68016 Regex!17496) List!68016)

(assert (=> bm!639676 (= call!639681 ($colon$colon!2595 (exprs!6992 lt!2525431) (ite (or c!1310996 c!1310997) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426)))))))

(assert (= (and d!2198820 c!1310998) b!7042649))

(assert (= (and d!2198820 (not c!1310998)) b!7042650))

(assert (= (and b!7042650 c!1310995) b!7042657))

(assert (= (and b!7042650 (not c!1310995)) b!7042653))

(assert (= (and b!7042653 res!2875212) b!7042658))

(assert (= (and b!7042653 c!1310996) b!7042648))

(assert (= (and b!7042653 (not c!1310996)) b!7042656))

(assert (= (and b!7042656 c!1310997) b!7042652))

(assert (= (and b!7042656 (not c!1310997)) b!7042655))

(assert (= (and b!7042655 c!1310994) b!7042651))

(assert (= (and b!7042655 (not c!1310994)) b!7042654))

(assert (= (or b!7042652 b!7042651) bm!639674))

(assert (= (or b!7042652 b!7042651) bm!639675))

(assert (= (or b!7042648 bm!639675) bm!639671))

(assert (= (or b!7042648 bm!639674) bm!639676))

(assert (= (or b!7042657 bm!639671) bm!639672))

(assert (= (or b!7042657 b!7042648) bm!639673))

(declare-fun m!7754796 () Bool)

(assert (=> b!7042649 m!7754796))

(declare-fun m!7754798 () Bool)

(assert (=> bm!639676 m!7754798))

(declare-fun m!7754800 () Bool)

(assert (=> b!7042658 m!7754800))

(declare-fun m!7754802 () Bool)

(assert (=> bm!639672 m!7754802))

(declare-fun m!7754804 () Bool)

(assert (=> bm!639673 m!7754804))

(assert (=> b!7042443 d!2198820))

(declare-fun d!2198822 () Bool)

(declare-fun c!1310999 () Bool)

(assert (=> d!2198822 (= c!1310999 (isEmpty!39622 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))))

(declare-fun e!4233770 () Bool)

(assert (=> d!2198822 (= (matchZipper!3036 lt!2525407 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) e!4233770)))

(declare-fun b!7042659 () Bool)

(assert (=> b!7042659 (= e!4233770 (nullableZipper!2602 lt!2525407))))

(declare-fun b!7042660 () Bool)

(assert (=> b!7042660 (= e!4233770 (matchZipper!3036 (derivationStepZipper!2952 lt!2525407 (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (tail!13610 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))))))

(assert (= (and d!2198822 c!1310999) b!7042659))

(assert (= (and d!2198822 (not c!1310999)) b!7042660))

(declare-fun m!7754806 () Bool)

(assert (=> d!2198822 m!7754806))

(declare-fun m!7754808 () Bool)

(assert (=> b!7042659 m!7754808))

(declare-fun m!7754810 () Bool)

(assert (=> b!7042660 m!7754810))

(assert (=> b!7042660 m!7754810))

(declare-fun m!7754812 () Bool)

(assert (=> b!7042660 m!7754812))

(declare-fun m!7754814 () Bool)

(assert (=> b!7042660 m!7754814))

(assert (=> b!7042660 m!7754812))

(assert (=> b!7042660 m!7754814))

(declare-fun m!7754816 () Bool)

(assert (=> b!7042660 m!7754816))

(assert (=> b!7042432 d!2198822))

(declare-fun d!2198824 () Bool)

(declare-fun c!1311000 () Bool)

(assert (=> d!2198824 (= c!1311000 (isEmpty!39622 (_1!37368 lt!2525435)))))

(declare-fun e!4233771 () Bool)

(assert (=> d!2198824 (= (matchZipper!3036 lt!2525414 (_1!37368 lt!2525435)) e!4233771)))

(declare-fun b!7042661 () Bool)

(assert (=> b!7042661 (= e!4233771 (nullableZipper!2602 lt!2525414))))

(declare-fun b!7042662 () Bool)

(assert (=> b!7042662 (= e!4233771 (matchZipper!3036 (derivationStepZipper!2952 lt!2525414 (head!14293 (_1!37368 lt!2525435))) (tail!13610 (_1!37368 lt!2525435))))))

(assert (= (and d!2198824 c!1311000) b!7042661))

(assert (= (and d!2198824 (not c!1311000)) b!7042662))

(assert (=> d!2198824 m!7754674))

(declare-fun m!7754818 () Bool)

(assert (=> b!7042661 m!7754818))

(assert (=> b!7042662 m!7754678))

(assert (=> b!7042662 m!7754678))

(declare-fun m!7754820 () Bool)

(assert (=> b!7042662 m!7754820))

(assert (=> b!7042662 m!7754682))

(assert (=> b!7042662 m!7754820))

(assert (=> b!7042662 m!7754682))

(declare-fun m!7754822 () Bool)

(assert (=> b!7042662 m!7754822))

(assert (=> b!7042432 d!2198824))

(declare-fun d!2198826 () Bool)

(declare-fun e!4233774 () Bool)

(assert (=> d!2198826 (= (matchZipper!3036 (set.union lt!2525403 lt!2525436) (_1!37368 lt!2525435)) e!4233774)))

(declare-fun res!2875215 () Bool)

(assert (=> d!2198826 (=> res!2875215 e!4233774)))

(assert (=> d!2198826 (= res!2875215 (matchZipper!3036 lt!2525403 (_1!37368 lt!2525435)))))

(declare-fun lt!2525618 () Unit!161672)

(declare-fun choose!53486 ((Set Context!12984) (Set Context!12984) List!68017) Unit!161672)

(assert (=> d!2198826 (= lt!2525618 (choose!53486 lt!2525403 lt!2525436 (_1!37368 lt!2525435)))))

(assert (=> d!2198826 (= (lemmaZipperConcatMatchesSameAsBothZippers!1569 lt!2525403 lt!2525436 (_1!37368 lt!2525435)) lt!2525618)))

(declare-fun b!7042665 () Bool)

(assert (=> b!7042665 (= e!4233774 (matchZipper!3036 lt!2525436 (_1!37368 lt!2525435)))))

(assert (= (and d!2198826 (not res!2875215)) b!7042665))

(declare-fun m!7754824 () Bool)

(assert (=> d!2198826 m!7754824))

(assert (=> d!2198826 m!7754502))

(declare-fun m!7754826 () Bool)

(assert (=> d!2198826 m!7754826))

(assert (=> b!7042665 m!7754474))

(assert (=> b!7042432 d!2198826))

(declare-fun d!2198828 () Bool)

(declare-fun c!1311001 () Bool)

(assert (=> d!2198828 (= c!1311001 (isEmpty!39622 (_2!37368 lt!2525435)))))

(declare-fun e!4233775 () Bool)

(assert (=> d!2198828 (= (matchZipper!3036 lt!2525437 (_2!37368 lt!2525435)) e!4233775)))

(declare-fun b!7042666 () Bool)

(assert (=> b!7042666 (= e!4233775 (nullableZipper!2602 lt!2525437))))

(declare-fun b!7042667 () Bool)

(assert (=> b!7042667 (= e!4233775 (matchZipper!3036 (derivationStepZipper!2952 lt!2525437 (head!14293 (_2!37368 lt!2525435))) (tail!13610 (_2!37368 lt!2525435))))))

(assert (= (and d!2198828 c!1311001) b!7042666))

(assert (= (and d!2198828 (not c!1311001)) b!7042667))

(declare-fun m!7754828 () Bool)

(assert (=> d!2198828 m!7754828))

(declare-fun m!7754830 () Bool)

(assert (=> b!7042666 m!7754830))

(declare-fun m!7754832 () Bool)

(assert (=> b!7042667 m!7754832))

(assert (=> b!7042667 m!7754832))

(declare-fun m!7754834 () Bool)

(assert (=> b!7042667 m!7754834))

(declare-fun m!7754836 () Bool)

(assert (=> b!7042667 m!7754836))

(assert (=> b!7042667 m!7754834))

(assert (=> b!7042667 m!7754836))

(declare-fun m!7754838 () Bool)

(assert (=> b!7042667 m!7754838))

(assert (=> b!7042426 d!2198828))

(assert (=> b!7042446 d!2198780))

(declare-fun d!2198830 () Bool)

(declare-fun nullableFct!2747 (Regex!17496) Bool)

(assert (=> d!2198830 (= (nullable!7207 (h!74340 (exprs!6992 lt!2525426))) (nullableFct!2747 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun bs!1873491 () Bool)

(assert (= bs!1873491 d!2198830))

(declare-fun m!7754840 () Bool)

(assert (=> bs!1873491 m!7754840))

(assert (=> b!7042447 d!2198830))

(declare-fun d!2198832 () Bool)

(assert (=> d!2198832 (= (tail!13608 (exprs!6992 lt!2525426)) (t!381787 (exprs!6992 lt!2525426)))))

(assert (=> b!7042447 d!2198832))

(declare-fun bs!1873492 () Bool)

(declare-fun d!2198834 () Bool)

(assert (= bs!1873492 (and d!2198834 b!7042427)))

(declare-fun lambda!417250 () Int)

(assert (=> bs!1873492 (= lambda!417250 lambda!417184)))

(declare-fun bs!1873493 () Bool)

(assert (= bs!1873493 (and d!2198834 d!2198810)))

(assert (=> bs!1873493 (= lambda!417250 lambda!417248)))

(assert (=> d!2198834 true))

(assert (=> d!2198834 (= (appendTo!617 lt!2525403 ct2!306) (map!15806 lt!2525403 lambda!417250))))

(declare-fun bs!1873494 () Bool)

(assert (= bs!1873494 d!2198834))

(declare-fun m!7754842 () Bool)

(assert (=> bs!1873494 m!7754842))

(assert (=> b!7042436 d!2198834))

(declare-fun b!7042668 () Bool)

(declare-fun e!4233780 () (Set Context!12984))

(declare-fun call!639686 () (Set Context!12984))

(declare-fun call!639682 () (Set Context!12984))

(assert (=> b!7042668 (= e!4233780 (set.union call!639686 call!639682))))

(declare-fun d!2198836 () Bool)

(declare-fun c!1311006 () Bool)

(assert (=> d!2198836 (= c!1311006 (and (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525426))) (= (c!1310942 (h!74340 (exprs!6992 lt!2525426))) (h!74341 s!7408))))))

(declare-fun e!4233779 () (Set Context!12984))

(assert (=> d!2198836 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525427 (h!74341 s!7408)) e!4233779)))

(declare-fun bm!639677 () Bool)

(declare-fun call!639683 () (Set Context!12984))

(assert (=> bm!639677 (= call!639682 call!639683)))

(declare-fun c!1311003 () Bool)

(declare-fun c!1311004 () Bool)

(declare-fun c!1311005 () Bool)

(declare-fun call!639685 () List!68016)

(declare-fun bm!639678 () Bool)

(assert (=> bm!639678 (= call!639683 (derivationStepZipperDown!2160 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))) (ite (or c!1311003 c!1311004) lt!2525427 (Context!12985 call!639685)) (h!74341 s!7408)))))

(declare-fun b!7042669 () Bool)

(assert (=> b!7042669 (= e!4233779 (set.insert lt!2525427 (as set.empty (Set Context!12984))))))

(declare-fun b!7042670 () Bool)

(declare-fun e!4233778 () (Set Context!12984))

(assert (=> b!7042670 (= e!4233779 e!4233778)))

(assert (=> b!7042670 (= c!1311003 (is-Union!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042671 () Bool)

(declare-fun e!4233776 () (Set Context!12984))

(declare-fun call!639684 () (Set Context!12984))

(assert (=> b!7042671 (= e!4233776 call!639684)))

(declare-fun b!7042672 () Bool)

(declare-fun e!4233777 () (Set Context!12984))

(assert (=> b!7042672 (= e!4233777 call!639684)))

(declare-fun b!7042673 () Bool)

(declare-fun e!4233781 () Bool)

(assert (=> b!7042673 (= c!1311004 e!4233781)))

(declare-fun res!2875216 () Bool)

(assert (=> b!7042673 (=> (not res!2875216) (not e!4233781))))

(assert (=> b!7042673 (= res!2875216 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042673 (= e!4233778 e!4233780)))

(declare-fun b!7042674 () Bool)

(assert (=> b!7042674 (= e!4233776 (as set.empty (Set Context!12984)))))

(declare-fun bm!639679 () Bool)

(declare-fun call!639687 () List!68016)

(assert (=> bm!639679 (= call!639686 (derivationStepZipperDown!2160 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))) (ite c!1311003 lt!2525427 (Context!12985 call!639687)) (h!74341 s!7408)))))

(declare-fun b!7042675 () Bool)

(declare-fun c!1311002 () Bool)

(assert (=> b!7042675 (= c!1311002 (is-Star!17496 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042675 (= e!4233777 e!4233776)))

(declare-fun b!7042676 () Bool)

(assert (=> b!7042676 (= e!4233780 e!4233777)))

(assert (=> b!7042676 (= c!1311005 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042677 () Bool)

(assert (=> b!7042677 (= e!4233778 (set.union call!639683 call!639686))))

(declare-fun bm!639680 () Bool)

(assert (=> bm!639680 (= call!639685 call!639687)))

(declare-fun bm!639681 () Bool)

(assert (=> bm!639681 (= call!639684 call!639682)))

(declare-fun b!7042678 () Bool)

(assert (=> b!7042678 (= e!4233781 (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))

(declare-fun bm!639682 () Bool)

(assert (=> bm!639682 (= call!639687 ($colon$colon!2595 (exprs!6992 lt!2525427) (ite (or c!1311004 c!1311005) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426)))))))

(assert (= (and d!2198836 c!1311006) b!7042669))

(assert (= (and d!2198836 (not c!1311006)) b!7042670))

(assert (= (and b!7042670 c!1311003) b!7042677))

(assert (= (and b!7042670 (not c!1311003)) b!7042673))

(assert (= (and b!7042673 res!2875216) b!7042678))

(assert (= (and b!7042673 c!1311004) b!7042668))

(assert (= (and b!7042673 (not c!1311004)) b!7042676))

(assert (= (and b!7042676 c!1311005) b!7042672))

(assert (= (and b!7042676 (not c!1311005)) b!7042675))

(assert (= (and b!7042675 c!1311002) b!7042671))

(assert (= (and b!7042675 (not c!1311002)) b!7042674))

(assert (= (or b!7042672 b!7042671) bm!639680))

(assert (= (or b!7042672 b!7042671) bm!639681))

(assert (= (or b!7042668 bm!639681) bm!639677))

(assert (= (or b!7042668 bm!639680) bm!639682))

(assert (= (or b!7042677 bm!639677) bm!639678))

(assert (= (or b!7042677 b!7042668) bm!639679))

(declare-fun m!7754844 () Bool)

(assert (=> b!7042669 m!7754844))

(declare-fun m!7754846 () Bool)

(assert (=> bm!639682 m!7754846))

(assert (=> b!7042678 m!7754800))

(declare-fun m!7754848 () Bool)

(assert (=> bm!639678 m!7754848))

(declare-fun m!7754850 () Bool)

(assert (=> bm!639679 m!7754850))

(assert (=> b!7042436 d!2198836))

(assert (=> b!7042436 d!2198794))

(declare-fun d!2198838 () Bool)

(assert (=> d!2198838 (= (get!23796 lt!2525432) (v!53186 lt!2525432))))

(assert (=> b!7042436 d!2198838))

(declare-fun d!2198840 () Bool)

(declare-fun isEmpty!39623 (Option!16897) Bool)

(assert (=> d!2198840 (= (isDefined!13598 lt!2525432) (not (isEmpty!39623 lt!2525432)))))

(declare-fun bs!1873495 () Bool)

(assert (= bs!1873495 d!2198840))

(declare-fun m!7754852 () Bool)

(assert (=> bs!1873495 m!7754852))

(assert (=> b!7042436 d!2198840))

(declare-fun d!2198842 () Bool)

(assert (=> d!2198842 (isDefined!13598 (findConcatSeparationZippers!413 lt!2525403 (set.insert ct2!306 (as set.empty (Set Context!12984))) Nil!67893 (t!381788 s!7408) (t!381788 s!7408)))))

(declare-fun lt!2525621 () Unit!161672)

(declare-fun choose!53487 ((Set Context!12984) Context!12984 List!68017) Unit!161672)

(assert (=> d!2198842 (= lt!2525621 (choose!53487 lt!2525403 ct2!306 (t!381788 s!7408)))))

(assert (=> d!2198842 (matchZipper!3036 (appendTo!617 lt!2525403 ct2!306) (t!381788 s!7408))))

(assert (=> d!2198842 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!401 lt!2525403 ct2!306 (t!381788 s!7408)) lt!2525621)))

(declare-fun bs!1873496 () Bool)

(assert (= bs!1873496 d!2198842))

(declare-fun m!7754854 () Bool)

(assert (=> bs!1873496 m!7754854))

(declare-fun m!7754856 () Bool)

(assert (=> bs!1873496 m!7754856))

(declare-fun m!7754858 () Bool)

(assert (=> bs!1873496 m!7754858))

(assert (=> bs!1873496 m!7754494))

(assert (=> bs!1873496 m!7754856))

(assert (=> bs!1873496 m!7754498))

(assert (=> bs!1873496 m!7754498))

(declare-fun m!7754860 () Bool)

(assert (=> bs!1873496 m!7754860))

(assert (=> bs!1873496 m!7754494))

(assert (=> b!7042436 d!2198842))

(declare-fun b!7042697 () Bool)

(declare-fun e!4233795 () Bool)

(declare-fun lt!2525629 () Option!16897)

(assert (=> b!7042697 (= e!4233795 (not (isDefined!13598 lt!2525629)))))

(declare-fun b!7042698 () Bool)

(declare-fun e!4233794 () Bool)

(assert (=> b!7042698 (= e!4233794 (matchZipper!3036 lt!2525437 (t!381788 s!7408)))))

(declare-fun b!7042699 () Bool)

(declare-fun e!4233796 () Option!16897)

(assert (=> b!7042699 (= e!4233796 None!16896)))

(declare-fun d!2198844 () Bool)

(assert (=> d!2198844 e!4233795))

(declare-fun res!2875229 () Bool)

(assert (=> d!2198844 (=> res!2875229 e!4233795)))

(declare-fun e!4233792 () Bool)

(assert (=> d!2198844 (= res!2875229 e!4233792)))

(declare-fun res!2875227 () Bool)

(assert (=> d!2198844 (=> (not res!2875227) (not e!4233792))))

(assert (=> d!2198844 (= res!2875227 (isDefined!13598 lt!2525629))))

(declare-fun e!4233793 () Option!16897)

(assert (=> d!2198844 (= lt!2525629 e!4233793)))

(declare-fun c!1311011 () Bool)

(assert (=> d!2198844 (= c!1311011 e!4233794)))

(declare-fun res!2875228 () Bool)

(assert (=> d!2198844 (=> (not res!2875228) (not e!4233794))))

(assert (=> d!2198844 (= res!2875228 (matchZipper!3036 lt!2525403 Nil!67893))))

(assert (=> d!2198844 (= (++!15568 Nil!67893 (t!381788 s!7408)) (t!381788 s!7408))))

(assert (=> d!2198844 (= (findConcatSeparationZippers!413 lt!2525403 lt!2525437 Nil!67893 (t!381788 s!7408) (t!381788 s!7408)) lt!2525629)))

(declare-fun b!7042700 () Bool)

(assert (=> b!7042700 (= e!4233793 e!4233796)))

(declare-fun c!1311012 () Bool)

(assert (=> b!7042700 (= c!1311012 (is-Nil!67893 (t!381788 s!7408)))))

(declare-fun b!7042701 () Bool)

(assert (=> b!7042701 (= e!4233792 (= (++!15568 (_1!37368 (get!23796 lt!2525629)) (_2!37368 (get!23796 lt!2525629))) (t!381788 s!7408)))))

(declare-fun b!7042702 () Bool)

(declare-fun res!2875231 () Bool)

(assert (=> b!7042702 (=> (not res!2875231) (not e!4233792))))

(assert (=> b!7042702 (= res!2875231 (matchZipper!3036 lt!2525403 (_1!37368 (get!23796 lt!2525629))))))

(declare-fun b!7042703 () Bool)

(declare-fun lt!2525630 () Unit!161672)

(declare-fun lt!2525628 () Unit!161672)

(assert (=> b!7042703 (= lt!2525630 lt!2525628)))

(assert (=> b!7042703 (= (++!15568 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408))) (t!381788 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2942 (List!68017 C!35262 List!68017 List!68017) Unit!161672)

(assert (=> b!7042703 (= lt!2525628 (lemmaMoveElementToOtherListKeepsConcatEq!2942 Nil!67893 (h!74341 (t!381788 s!7408)) (t!381788 (t!381788 s!7408)) (t!381788 s!7408)))))

(assert (=> b!7042703 (= e!4233796 (findConcatSeparationZippers!413 lt!2525403 lt!2525437 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408)) (t!381788 s!7408)))))

(declare-fun b!7042704 () Bool)

(declare-fun res!2875230 () Bool)

(assert (=> b!7042704 (=> (not res!2875230) (not e!4233792))))

(assert (=> b!7042704 (= res!2875230 (matchZipper!3036 lt!2525437 (_2!37368 (get!23796 lt!2525629))))))

(declare-fun b!7042705 () Bool)

(assert (=> b!7042705 (= e!4233793 (Some!16896 (tuple2!68131 Nil!67893 (t!381788 s!7408))))))

(assert (= (and d!2198844 res!2875228) b!7042698))

(assert (= (and d!2198844 c!1311011) b!7042705))

(assert (= (and d!2198844 (not c!1311011)) b!7042700))

(assert (= (and b!7042700 c!1311012) b!7042699))

(assert (= (and b!7042700 (not c!1311012)) b!7042703))

(assert (= (and d!2198844 res!2875227) b!7042702))

(assert (= (and b!7042702 res!2875231) b!7042704))

(assert (= (and b!7042704 res!2875230) b!7042701))

(assert (= (and d!2198844 (not res!2875229)) b!7042697))

(declare-fun m!7754862 () Bool)

(assert (=> b!7042698 m!7754862))

(declare-fun m!7754864 () Bool)

(assert (=> d!2198844 m!7754864))

(declare-fun m!7754866 () Bool)

(assert (=> d!2198844 m!7754866))

(declare-fun m!7754868 () Bool)

(assert (=> d!2198844 m!7754868))

(assert (=> b!7042697 m!7754864))

(declare-fun m!7754870 () Bool)

(assert (=> b!7042701 m!7754870))

(declare-fun m!7754872 () Bool)

(assert (=> b!7042701 m!7754872))

(assert (=> b!7042702 m!7754870))

(declare-fun m!7754874 () Bool)

(assert (=> b!7042702 m!7754874))

(assert (=> b!7042704 m!7754870))

(declare-fun m!7754876 () Bool)

(assert (=> b!7042704 m!7754876))

(declare-fun m!7754878 () Bool)

(assert (=> b!7042703 m!7754878))

(assert (=> b!7042703 m!7754878))

(declare-fun m!7754880 () Bool)

(assert (=> b!7042703 m!7754880))

(declare-fun m!7754882 () Bool)

(assert (=> b!7042703 m!7754882))

(assert (=> b!7042703 m!7754878))

(declare-fun m!7754884 () Bool)

(assert (=> b!7042703 m!7754884))

(assert (=> b!7042436 d!2198844))

(declare-fun bs!1873497 () Bool)

(declare-fun d!2198846 () Bool)

(assert (= bs!1873497 (and d!2198846 b!7042427)))

(declare-fun lambda!417253 () Int)

(assert (=> bs!1873497 (= lambda!417253 lambda!417185)))

(declare-fun bs!1873498 () Bool)

(assert (= bs!1873498 (and d!2198846 d!2198804)))

(assert (=> bs!1873498 (= lambda!417253 lambda!417243)))

(declare-fun bs!1873499 () Bool)

(assert (= bs!1873499 (and d!2198846 d!2198812)))

(assert (=> bs!1873499 (= lambda!417253 lambda!417249)))

(assert (=> d!2198846 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) (Context!12985 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306))) (h!74341 s!7408)) (appendTo!617 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525427 (h!74341 s!7408)) ct2!306))))

(declare-fun lt!2525636 () Unit!161672)

(assert (=> d!2198846 (= lt!2525636 (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525427) (exprs!6992 ct2!306) lambda!417253))))

(declare-fun lt!2525635 () Unit!161672)

(declare-fun choose!53488 (Context!12984 Regex!17496 C!35262 Context!12984) Unit!161672)

(assert (=> d!2198846 (= lt!2525635 (choose!53488 lt!2525427 (h!74340 (exprs!6992 lt!2525426)) (h!74341 s!7408) ct2!306))))

(declare-fun validRegex!8940 (Regex!17496) Bool)

(assert (=> d!2198846 (validRegex!8940 (h!74340 (exprs!6992 lt!2525426)))))

(assert (=> d!2198846 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!75 lt!2525427 (h!74340 (exprs!6992 lt!2525426)) (h!74341 s!7408) ct2!306) lt!2525635)))

(declare-fun bs!1873500 () Bool)

(assert (= bs!1873500 d!2198846))

(declare-fun m!7754886 () Bool)

(assert (=> bs!1873500 m!7754886))

(declare-fun m!7754888 () Bool)

(assert (=> bs!1873500 m!7754888))

(declare-fun m!7754890 () Bool)

(assert (=> bs!1873500 m!7754890))

(declare-fun m!7754892 () Bool)

(assert (=> bs!1873500 m!7754892))

(assert (=> bs!1873500 m!7754486))

(declare-fun m!7754894 () Bool)

(assert (=> bs!1873500 m!7754894))

(declare-fun m!7754896 () Bool)

(assert (=> bs!1873500 m!7754896))

(assert (=> bs!1873500 m!7754486))

(assert (=> b!7042436 d!2198846))

(declare-fun d!2198848 () Bool)

(declare-fun c!1311014 () Bool)

(assert (=> d!2198848 (= c!1311014 (isEmpty!39622 (_1!37368 lt!2525435)))))

(declare-fun e!4233797 () Bool)

(assert (=> d!2198848 (= (matchZipper!3036 lt!2525403 (_1!37368 lt!2525435)) e!4233797)))

(declare-fun b!7042706 () Bool)

(assert (=> b!7042706 (= e!4233797 (nullableZipper!2602 lt!2525403))))

(declare-fun b!7042707 () Bool)

(assert (=> b!7042707 (= e!4233797 (matchZipper!3036 (derivationStepZipper!2952 lt!2525403 (head!14293 (_1!37368 lt!2525435))) (tail!13610 (_1!37368 lt!2525435))))))

(assert (= (and d!2198848 c!1311014) b!7042706))

(assert (= (and d!2198848 (not c!1311014)) b!7042707))

(assert (=> d!2198848 m!7754674))

(declare-fun m!7754898 () Bool)

(assert (=> b!7042706 m!7754898))

(assert (=> b!7042707 m!7754678))

(assert (=> b!7042707 m!7754678))

(declare-fun m!7754900 () Bool)

(assert (=> b!7042707 m!7754900))

(assert (=> b!7042707 m!7754682))

(assert (=> b!7042707 m!7754900))

(assert (=> b!7042707 m!7754682))

(declare-fun m!7754902 () Bool)

(assert (=> b!7042707 m!7754902))

(assert (=> b!7042436 d!2198848))

(declare-fun d!2198850 () Bool)

(declare-fun c!1311015 () Bool)

(assert (=> d!2198850 (= c!1311015 (isEmpty!39622 (t!381788 s!7408)))))

(declare-fun e!4233798 () Bool)

(assert (=> d!2198850 (= (matchZipper!3036 lt!2525442 (t!381788 s!7408)) e!4233798)))

(declare-fun b!7042708 () Bool)

(assert (=> b!7042708 (= e!4233798 (nullableZipper!2602 lt!2525442))))

(declare-fun b!7042709 () Bool)

(assert (=> b!7042709 (= e!4233798 (matchZipper!3036 (derivationStepZipper!2952 lt!2525442 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))))))

(assert (= (and d!2198850 c!1311015) b!7042708))

(assert (= (and d!2198850 (not c!1311015)) b!7042709))

(assert (=> d!2198850 m!7754662))

(declare-fun m!7754904 () Bool)

(assert (=> b!7042708 m!7754904))

(assert (=> b!7042709 m!7754666))

(assert (=> b!7042709 m!7754666))

(declare-fun m!7754906 () Bool)

(assert (=> b!7042709 m!7754906))

(assert (=> b!7042709 m!7754670))

(assert (=> b!7042709 m!7754906))

(assert (=> b!7042709 m!7754670))

(declare-fun m!7754908 () Bool)

(assert (=> b!7042709 m!7754908))

(assert (=> b!7042435 d!2198850))

(assert (=> b!7042435 d!2198794))

(declare-fun d!2198852 () Bool)

(declare-fun c!1311016 () Bool)

(assert (=> d!2198852 (= c!1311016 (isEmpty!39622 (t!381788 s!7408)))))

(declare-fun e!4233799 () Bool)

(assert (=> d!2198852 (= (matchZipper!3036 lt!2525413 (t!381788 s!7408)) e!4233799)))

(declare-fun b!7042710 () Bool)

(assert (=> b!7042710 (= e!4233799 (nullableZipper!2602 lt!2525413))))

(declare-fun b!7042711 () Bool)

(assert (=> b!7042711 (= e!4233799 (matchZipper!3036 (derivationStepZipper!2952 lt!2525413 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))))))

(assert (= (and d!2198852 c!1311016) b!7042710))

(assert (= (and d!2198852 (not c!1311016)) b!7042711))

(assert (=> d!2198852 m!7754662))

(declare-fun m!7754910 () Bool)

(assert (=> b!7042710 m!7754910))

(assert (=> b!7042711 m!7754666))

(assert (=> b!7042711 m!7754666))

(declare-fun m!7754912 () Bool)

(assert (=> b!7042711 m!7754912))

(assert (=> b!7042711 m!7754670))

(assert (=> b!7042711 m!7754912))

(assert (=> b!7042711 m!7754670))

(declare-fun m!7754914 () Bool)

(assert (=> b!7042711 m!7754914))

(assert (=> b!7042435 d!2198852))

(declare-fun d!2198854 () Bool)

(declare-fun c!1311017 () Bool)

(assert (=> d!2198854 (= c!1311017 (isEmpty!39622 (t!381788 s!7408)))))

(declare-fun e!4233800 () Bool)

(assert (=> d!2198854 (= (matchZipper!3036 lt!2525420 (t!381788 s!7408)) e!4233800)))

(declare-fun b!7042712 () Bool)

(assert (=> b!7042712 (= e!4233800 (nullableZipper!2602 lt!2525420))))

(declare-fun b!7042713 () Bool)

(assert (=> b!7042713 (= e!4233800 (matchZipper!3036 (derivationStepZipper!2952 lt!2525420 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))))))

(assert (= (and d!2198854 c!1311017) b!7042712))

(assert (= (and d!2198854 (not c!1311017)) b!7042713))

(assert (=> d!2198854 m!7754662))

(declare-fun m!7754916 () Bool)

(assert (=> b!7042712 m!7754916))

(assert (=> b!7042713 m!7754666))

(assert (=> b!7042713 m!7754666))

(declare-fun m!7754918 () Bool)

(assert (=> b!7042713 m!7754918))

(assert (=> b!7042713 m!7754670))

(assert (=> b!7042713 m!7754918))

(assert (=> b!7042713 m!7754670))

(declare-fun m!7754920 () Bool)

(assert (=> b!7042713 m!7754920))

(assert (=> b!7042435 d!2198854))

(declare-fun e!4233801 () Bool)

(declare-fun d!2198856 () Bool)

(assert (=> d!2198856 (= (matchZipper!3036 (set.union lt!2525442 lt!2525440) (t!381788 s!7408)) e!4233801)))

(declare-fun res!2875232 () Bool)

(assert (=> d!2198856 (=> res!2875232 e!4233801)))

(assert (=> d!2198856 (= res!2875232 (matchZipper!3036 lt!2525442 (t!381788 s!7408)))))

(declare-fun lt!2525637 () Unit!161672)

(assert (=> d!2198856 (= lt!2525637 (choose!53486 lt!2525442 lt!2525440 (t!381788 s!7408)))))

(assert (=> d!2198856 (= (lemmaZipperConcatMatchesSameAsBothZippers!1569 lt!2525442 lt!2525440 (t!381788 s!7408)) lt!2525637)))

(declare-fun b!7042714 () Bool)

(assert (=> b!7042714 (= e!4233801 (matchZipper!3036 lt!2525440 (t!381788 s!7408)))))

(assert (= (and d!2198856 (not res!2875232)) b!7042714))

(declare-fun m!7754922 () Bool)

(assert (=> d!2198856 m!7754922))

(assert (=> d!2198856 m!7754510))

(declare-fun m!7754924 () Bool)

(assert (=> d!2198856 m!7754924))

(assert (=> b!7042714 m!7754450))

(assert (=> b!7042435 d!2198856))

(declare-fun b!7042719 () Bool)

(declare-fun e!4233804 () Bool)

(declare-fun tp!1937580 () Bool)

(declare-fun tp!1937581 () Bool)

(assert (=> b!7042719 (= e!4233804 (and tp!1937580 tp!1937581))))

(assert (=> b!7042449 (= tp!1937563 e!4233804)))

(assert (= (and b!7042449 (is-Cons!67892 (exprs!6992 setElem!49381))) b!7042719))

(declare-fun b!7042724 () Bool)

(declare-fun e!4233807 () Bool)

(declare-fun tp!1937584 () Bool)

(assert (=> b!7042724 (= e!4233807 (and tp_is_empty!44217 tp!1937584))))

(assert (=> b!7042433 (= tp!1937561 e!4233807)))

(assert (= (and b!7042433 (is-Cons!67893 (t!381788 s!7408))) b!7042724))

(declare-fun b!7042725 () Bool)

(declare-fun e!4233808 () Bool)

(declare-fun tp!1937585 () Bool)

(declare-fun tp!1937586 () Bool)

(assert (=> b!7042725 (= e!4233808 (and tp!1937585 tp!1937586))))

(assert (=> b!7042439 (= tp!1937562 e!4233808)))

(assert (= (and b!7042439 (is-Cons!67892 (exprs!6992 ct2!306))) b!7042725))

(declare-fun condSetEmpty!49387 () Bool)

(assert (=> setNonEmpty!49381 (= condSetEmpty!49387 (= setRest!49381 (as set.empty (Set Context!12984))))))

(declare-fun setRes!49387 () Bool)

(assert (=> setNonEmpty!49381 (= tp!1937560 setRes!49387)))

(declare-fun setIsEmpty!49387 () Bool)

(assert (=> setIsEmpty!49387 setRes!49387))

(declare-fun e!4233811 () Bool)

(declare-fun tp!1937592 () Bool)

(declare-fun setNonEmpty!49387 () Bool)

(declare-fun setElem!49387 () Context!12984)

(assert (=> setNonEmpty!49387 (= setRes!49387 (and tp!1937592 (inv!86600 setElem!49387) e!4233811))))

(declare-fun setRest!49387 () (Set Context!12984))

(assert (=> setNonEmpty!49387 (= setRest!49381 (set.union (set.insert setElem!49387 (as set.empty (Set Context!12984))) setRest!49387))))

(declare-fun b!7042730 () Bool)

(declare-fun tp!1937591 () Bool)

(assert (=> b!7042730 (= e!4233811 tp!1937591)))

(assert (= (and setNonEmpty!49381 condSetEmpty!49387) setIsEmpty!49387))

(assert (= (and setNonEmpty!49381 (not condSetEmpty!49387)) setNonEmpty!49387))

(assert (= setNonEmpty!49387 b!7042730))

(declare-fun m!7754926 () Bool)

(assert (=> setNonEmpty!49387 m!7754926))

(declare-fun b_lambda!267383 () Bool)

(assert (= b_lambda!267381 (or b!7042428 b_lambda!267383)))

(declare-fun bs!1873501 () Bool)

(declare-fun d!2198858 () Bool)

(assert (= bs!1873501 (and d!2198858 b!7042428)))

(assert (=> bs!1873501 (= (dynLambda!27470 lambda!417186 lt!2525426) (derivationStepZipperUp!2106 lt!2525426 (h!74341 s!7408)))))

(assert (=> bs!1873501 m!7754464))

(assert (=> d!2198800 d!2198858))

(declare-fun b_lambda!267385 () Bool)

(assert (= b_lambda!267375 (or b!7042438 b_lambda!267385)))

(declare-fun bs!1873502 () Bool)

(declare-fun d!2198860 () Bool)

(assert (= bs!1873502 (and d!2198860 b!7042438)))

(assert (=> bs!1873502 (= (dynLambda!27468 lambda!417183 lt!2525592) (matchZipper!3036 (set.insert lt!2525592 (as set.empty (Set Context!12984))) s!7408))))

(declare-fun m!7754928 () Bool)

(assert (=> bs!1873502 m!7754928))

(assert (=> bs!1873502 m!7754928))

(declare-fun m!7754930 () Bool)

(assert (=> bs!1873502 m!7754930))

(assert (=> d!2198768 d!2198860))

(declare-fun b_lambda!267387 () Bool)

(assert (= b_lambda!267377 (or b!7042427 b_lambda!267387)))

(declare-fun bs!1873503 () Bool)

(declare-fun d!2198862 () Bool)

(assert (= bs!1873503 (and d!2198862 b!7042427)))

(declare-fun lt!2525638 () Unit!161672)

(assert (=> bs!1873503 (= lt!2525638 (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525604) (exprs!6992 ct2!306) lambda!417185))))

(assert (=> bs!1873503 (= (dynLambda!27469 lambda!417184 lt!2525604) (Context!12985 (++!15567 (exprs!6992 lt!2525604) (exprs!6992 ct2!306))))))

(declare-fun m!7754932 () Bool)

(assert (=> bs!1873503 m!7754932))

(declare-fun m!7754934 () Bool)

(assert (=> bs!1873503 m!7754934))

(assert (=> d!2198782 d!2198862))

(declare-fun b_lambda!267389 () Bool)

(assert (= b_lambda!267379 (or b!7042428 b_lambda!267389)))

(declare-fun bs!1873504 () Bool)

(declare-fun d!2198864 () Bool)

(assert (= bs!1873504 (and d!2198864 b!7042428)))

(assert (=> bs!1873504 (= (dynLambda!27470 lambda!417186 lt!2525434) (derivationStepZipperUp!2106 lt!2525434 (h!74341 s!7408)))))

(assert (=> bs!1873504 m!7754424))

(assert (=> d!2198784 d!2198864))

(push 1)

(assert (not d!2198856))

(assert (not b!7042725))

(assert (not d!2198850))

(assert (not d!2198810))

(assert (not b_lambda!267389))

(assert (not d!2198844))

(assert (not bs!1873504))

(assert (not b!7042623))

(assert (not b_lambda!267387))

(assert (not d!2198824))

(assert (not bm!639678))

(assert (not d!2198772))

(assert (not bm!639657))

(assert (not d!2198796))

(assert (not b!7042612))

(assert (not d!2198778))

(assert (not bm!639656))

(assert (not d!2198794))

(assert (not b!7042666))

(assert (not b!7042661))

(assert (not b!7042602))

(assert (not d!2198768))

(assert (not b!7042624))

(assert (not b!7042714))

(assert (not b!7042556))

(assert (not b!7042701))

(assert (not b!7042660))

(assert (not setNonEmpty!49387))

(assert (not bm!639676))

(assert (not d!2198808))

(assert (not d!2198800))

(assert (not d!2198830))

(assert (not b!7042665))

(assert (not d!2198770))

(assert (not b!7042615))

(assert (not d!2198846))

(assert (not b!7042555))

(assert tp_is_empty!44217)

(assert (not b!7042603))

(assert (not b!7042658))

(assert (not d!2198848))

(assert (not b!7042569))

(assert (not b!7042706))

(assert (not d!2198840))

(assert (not b!7042614))

(assert (not b!7042704))

(assert (not b!7042588))

(assert (not b!7042713))

(assert (not d!2198792))

(assert (not b!7042707))

(assert (not d!2198776))

(assert (not b!7042712))

(assert (not b!7042719))

(assert (not b!7042730))

(assert (not b!7042710))

(assert (not d!2198804))

(assert (not b!7042703))

(assert (not d!2198834))

(assert (not bs!1873501))

(assert (not b!7042616))

(assert (not bm!639672))

(assert (not b!7042558))

(assert (not bm!639679))

(assert (not d!2198780))

(assert (not bs!1873503))

(assert (not bm!639682))

(assert (not b!7042709))

(assert (not b!7042552))

(assert (not bm!639658))

(assert (not b!7042659))

(assert (not b_lambda!267385))

(assert (not b!7042697))

(assert (not d!2198802))

(assert (not b!7042621))

(assert (not d!2198788))

(assert (not b!7042609))

(assert (not d!2198790))

(assert (not b!7042619))

(assert (not d!2198782))

(assert (not bm!639673))

(assert (not b!7042557))

(assert (not d!2198766))

(assert (not d!2198854))

(assert (not b!7042678))

(assert (not d!2198828))

(assert (not b!7042708))

(assert (not bm!639655))

(assert (not b!7042662))

(assert (not b!7042724))

(assert (not b!7042698))

(assert (not d!2198826))

(assert (not b!7042711))

(assert (not d!2198852))

(assert (not b!7042570))

(assert (not d!2198822))

(assert (not d!2198842))

(assert (not d!2198812))

(assert (not b!7042551))

(assert (not d!2198764))

(assert (not b!7042559))

(assert (not b!7042667))

(assert (not b!7042607))

(assert (not d!2198784))

(assert (not b_lambda!267383))

(assert (not b!7042590))

(assert (not d!2198774))

(assert (not bs!1873502))

(assert (not d!2198818))

(assert (not b!7042702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1873542 () Bool)

(declare-fun d!2198968 () Bool)

(assert (= bs!1873542 (and d!2198968 b!7042427)))

(declare-fun lambda!417279 () Int)

(assert (=> bs!1873542 (= lambda!417279 lambda!417185)))

(declare-fun bs!1873543 () Bool)

(assert (= bs!1873543 (and d!2198968 d!2198804)))

(assert (=> bs!1873543 (= lambda!417279 lambda!417243)))

(declare-fun bs!1873544 () Bool)

(assert (= bs!1873544 (and d!2198968 d!2198812)))

(assert (=> bs!1873544 (= lambda!417279 lambda!417249)))

(declare-fun bs!1873545 () Bool)

(assert (= bs!1873545 (and d!2198968 d!2198846)))

(assert (=> bs!1873545 (= lambda!417279 lambda!417253)))

(assert (=> d!2198968 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) (Context!12985 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306))) (h!74341 s!7408)) (appendTo!617 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525427 (h!74341 s!7408)) ct2!306))))

(declare-fun lt!2525693 () Unit!161672)

(assert (=> d!2198968 (= lt!2525693 (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525427) (exprs!6992 ct2!306) lambda!417279))))

(assert (=> d!2198968 true))

(declare-fun _$55!117 () Unit!161672)

(assert (=> d!2198968 (= (choose!53488 lt!2525427 (h!74340 (exprs!6992 lt!2525426)) (h!74341 s!7408) ct2!306) _$55!117)))

(declare-fun bs!1873546 () Bool)

(assert (= bs!1873546 d!2198968))

(declare-fun m!7755246 () Bool)

(assert (=> bs!1873546 m!7755246))

(assert (=> bs!1873546 m!7754896))

(assert (=> bs!1873546 m!7754486))

(assert (=> bs!1873546 m!7754486))

(assert (=> bs!1873546 m!7754894))

(assert (=> bs!1873546 m!7754890))

(assert (=> d!2198846 d!2198968))

(declare-fun bs!1873547 () Bool)

(declare-fun d!2198970 () Bool)

(assert (= bs!1873547 (and d!2198970 b!7042427)))

(declare-fun lambda!417280 () Int)

(assert (=> bs!1873547 (= lambda!417280 lambda!417184)))

(declare-fun bs!1873548 () Bool)

(assert (= bs!1873548 (and d!2198970 d!2198810)))

(assert (=> bs!1873548 (= lambda!417280 lambda!417248)))

(declare-fun bs!1873549 () Bool)

(assert (= bs!1873549 (and d!2198970 d!2198834)))

(assert (=> bs!1873549 (= lambda!417280 lambda!417250)))

(assert (=> d!2198970 true))

(assert (=> d!2198970 (= (appendTo!617 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525427 (h!74341 s!7408)) ct2!306) (map!15806 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) lt!2525427 (h!74341 s!7408)) lambda!417280))))

(declare-fun bs!1873550 () Bool)

(assert (= bs!1873550 d!2198970))

(assert (=> bs!1873550 m!7754486))

(declare-fun m!7755248 () Bool)

(assert (=> bs!1873550 m!7755248))

(assert (=> d!2198846 d!2198970))

(declare-fun b!7042921 () Bool)

(declare-fun e!4233919 () List!68016)

(assert (=> b!7042921 (= e!4233919 (Cons!67892 (h!74340 (exprs!6992 lt!2525427)) (++!15567 (t!381787 (exprs!6992 lt!2525427)) (exprs!6992 ct2!306))))))

(declare-fun d!2198972 () Bool)

(declare-fun e!4233920 () Bool)

(assert (=> d!2198972 e!4233920))

(declare-fun res!2875285 () Bool)

(assert (=> d!2198972 (=> (not res!2875285) (not e!4233920))))

(declare-fun lt!2525694 () List!68016)

(assert (=> d!2198972 (= res!2875285 (= (content!13592 lt!2525694) (set.union (content!13592 (exprs!6992 lt!2525427)) (content!13592 (exprs!6992 ct2!306)))))))

(assert (=> d!2198972 (= lt!2525694 e!4233919)))

(declare-fun c!1311083 () Bool)

(assert (=> d!2198972 (= c!1311083 (is-Nil!67892 (exprs!6992 lt!2525427)))))

(assert (=> d!2198972 (= (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306)) lt!2525694)))

(declare-fun b!7042920 () Bool)

(assert (=> b!7042920 (= e!4233919 (exprs!6992 ct2!306))))

(declare-fun b!7042923 () Bool)

(assert (=> b!7042923 (= e!4233920 (or (not (= (exprs!6992 ct2!306) Nil!67892)) (= lt!2525694 (exprs!6992 lt!2525427))))))

(declare-fun b!7042922 () Bool)

(declare-fun res!2875286 () Bool)

(assert (=> b!7042922 (=> (not res!2875286) (not e!4233920))))

(assert (=> b!7042922 (= res!2875286 (= (size!41100 lt!2525694) (+ (size!41100 (exprs!6992 lt!2525427)) (size!41100 (exprs!6992 ct2!306)))))))

(assert (= (and d!2198972 c!1311083) b!7042920))

(assert (= (and d!2198972 (not c!1311083)) b!7042921))

(assert (= (and d!2198972 res!2875285) b!7042922))

(assert (= (and b!7042922 res!2875286) b!7042923))

(declare-fun m!7755250 () Bool)

(assert (=> b!7042921 m!7755250))

(declare-fun m!7755252 () Bool)

(assert (=> d!2198972 m!7755252))

(declare-fun m!7755254 () Bool)

(assert (=> d!2198972 m!7755254))

(assert (=> d!2198972 m!7754692))

(declare-fun m!7755256 () Bool)

(assert (=> b!7042922 m!7755256))

(declare-fun m!7755258 () Bool)

(assert (=> b!7042922 m!7755258))

(assert (=> b!7042922 m!7754698))

(assert (=> d!2198846 d!2198972))

(declare-fun d!2198974 () Bool)

(assert (=> d!2198974 (forall!16423 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306)) lambda!417253)))

(declare-fun lt!2525695 () Unit!161672)

(assert (=> d!2198974 (= lt!2525695 (choose!53482 (exprs!6992 lt!2525427) (exprs!6992 ct2!306) lambda!417253))))

(assert (=> d!2198974 (forall!16423 (exprs!6992 lt!2525427) lambda!417253)))

(assert (=> d!2198974 (= (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525427) (exprs!6992 ct2!306) lambda!417253) lt!2525695)))

(declare-fun bs!1873551 () Bool)

(assert (= bs!1873551 d!2198974))

(assert (=> bs!1873551 m!7754890))

(assert (=> bs!1873551 m!7754890))

(declare-fun m!7755260 () Bool)

(assert (=> bs!1873551 m!7755260))

(declare-fun m!7755262 () Bool)

(assert (=> bs!1873551 m!7755262))

(declare-fun m!7755264 () Bool)

(assert (=> bs!1873551 m!7755264))

(assert (=> d!2198846 d!2198974))

(assert (=> d!2198846 d!2198836))

(declare-fun b!7042924 () Bool)

(declare-fun e!4233925 () (Set Context!12984))

(declare-fun call!639722 () (Set Context!12984))

(declare-fun call!639718 () (Set Context!12984))

(assert (=> b!7042924 (= e!4233925 (set.union call!639722 call!639718))))

(declare-fun d!2198976 () Bool)

(declare-fun c!1311088 () Bool)

(assert (=> d!2198976 (= c!1311088 (and (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525426))) (= (c!1310942 (h!74340 (exprs!6992 lt!2525426))) (h!74341 s!7408))))))

(declare-fun e!4233924 () (Set Context!12984))

(assert (=> d!2198976 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) (Context!12985 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306))) (h!74341 s!7408)) e!4233924)))

(declare-fun bm!639713 () Bool)

(declare-fun call!639719 () (Set Context!12984))

(assert (=> bm!639713 (= call!639718 call!639719)))

(declare-fun bm!639714 () Bool)

(declare-fun c!1311085 () Bool)

(declare-fun c!1311086 () Bool)

(declare-fun call!639721 () List!68016)

(declare-fun c!1311087 () Bool)

(assert (=> bm!639714 (= call!639719 (derivationStepZipperDown!2160 (ite c!1311085 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311086 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311087 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))) (ite (or c!1311085 c!1311086) (Context!12985 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306))) (Context!12985 call!639721)) (h!74341 s!7408)))))

(declare-fun b!7042925 () Bool)

(assert (=> b!7042925 (= e!4233924 (set.insert (Context!12985 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306))) (as set.empty (Set Context!12984))))))

(declare-fun b!7042926 () Bool)

(declare-fun e!4233923 () (Set Context!12984))

(assert (=> b!7042926 (= e!4233924 e!4233923)))

(assert (=> b!7042926 (= c!1311085 (is-Union!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042927 () Bool)

(declare-fun e!4233921 () (Set Context!12984))

(declare-fun call!639720 () (Set Context!12984))

(assert (=> b!7042927 (= e!4233921 call!639720)))

(declare-fun b!7042928 () Bool)

(declare-fun e!4233922 () (Set Context!12984))

(assert (=> b!7042928 (= e!4233922 call!639720)))

(declare-fun b!7042929 () Bool)

(declare-fun e!4233926 () Bool)

(assert (=> b!7042929 (= c!1311086 e!4233926)))

(declare-fun res!2875287 () Bool)

(assert (=> b!7042929 (=> (not res!2875287) (not e!4233926))))

(assert (=> b!7042929 (= res!2875287 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042929 (= e!4233923 e!4233925)))

(declare-fun b!7042930 () Bool)

(assert (=> b!7042930 (= e!4233921 (as set.empty (Set Context!12984)))))

(declare-fun bm!639715 () Bool)

(declare-fun call!639723 () List!68016)

(assert (=> bm!639715 (= call!639722 (derivationStepZipperDown!2160 (ite c!1311085 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))) (ite c!1311085 (Context!12985 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306))) (Context!12985 call!639723)) (h!74341 s!7408)))))

(declare-fun b!7042931 () Bool)

(declare-fun c!1311084 () Bool)

(assert (=> b!7042931 (= c!1311084 (is-Star!17496 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042931 (= e!4233922 e!4233921)))

(declare-fun b!7042932 () Bool)

(assert (=> b!7042932 (= e!4233925 e!4233922)))

(assert (=> b!7042932 (= c!1311087 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042933 () Bool)

(assert (=> b!7042933 (= e!4233923 (set.union call!639719 call!639722))))

(declare-fun bm!639716 () Bool)

(assert (=> bm!639716 (= call!639721 call!639723)))

(declare-fun bm!639717 () Bool)

(assert (=> bm!639717 (= call!639720 call!639718)))

(declare-fun b!7042934 () Bool)

(assert (=> b!7042934 (= e!4233926 (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))

(declare-fun bm!639718 () Bool)

(assert (=> bm!639718 (= call!639723 ($colon$colon!2595 (exprs!6992 (Context!12985 (++!15567 (exprs!6992 lt!2525427) (exprs!6992 ct2!306)))) (ite (or c!1311086 c!1311087) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426)))))))

(assert (= (and d!2198976 c!1311088) b!7042925))

(assert (= (and d!2198976 (not c!1311088)) b!7042926))

(assert (= (and b!7042926 c!1311085) b!7042933))

(assert (= (and b!7042926 (not c!1311085)) b!7042929))

(assert (= (and b!7042929 res!2875287) b!7042934))

(assert (= (and b!7042929 c!1311086) b!7042924))

(assert (= (and b!7042929 (not c!1311086)) b!7042932))

(assert (= (and b!7042932 c!1311087) b!7042928))

(assert (= (and b!7042932 (not c!1311087)) b!7042931))

(assert (= (and b!7042931 c!1311084) b!7042927))

(assert (= (and b!7042931 (not c!1311084)) b!7042930))

(assert (= (or b!7042928 b!7042927) bm!639716))

(assert (= (or b!7042928 b!7042927) bm!639717))

(assert (= (or b!7042924 bm!639717) bm!639713))

(assert (= (or b!7042924 bm!639716) bm!639718))

(assert (= (or b!7042933 bm!639713) bm!639714))

(assert (= (or b!7042933 b!7042924) bm!639715))

(declare-fun m!7755266 () Bool)

(assert (=> b!7042925 m!7755266))

(declare-fun m!7755268 () Bool)

(assert (=> bm!639718 m!7755268))

(assert (=> b!7042934 m!7754800))

(declare-fun m!7755270 () Bool)

(assert (=> bm!639714 m!7755270))

(declare-fun m!7755272 () Bool)

(assert (=> bm!639715 m!7755272))

(assert (=> d!2198846 d!2198976))

(declare-fun b!7042953 () Bool)

(declare-fun e!4233943 () Bool)

(declare-fun e!4233944 () Bool)

(assert (=> b!7042953 (= e!4233943 e!4233944)))

(declare-fun c!1311093 () Bool)

(assert (=> b!7042953 (= c!1311093 (is-Union!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042954 () Bool)

(declare-fun e!4233945 () Bool)

(declare-fun e!4233947 () Bool)

(assert (=> b!7042954 (= e!4233945 e!4233947)))

(declare-fun res!2875299 () Bool)

(assert (=> b!7042954 (=> (not res!2875299) (not e!4233947))))

(declare-fun call!639731 () Bool)

(assert (=> b!7042954 (= res!2875299 call!639731)))

(declare-fun bm!639725 () Bool)

(declare-fun call!639730 () Bool)

(assert (=> bm!639725 (= call!639730 (validRegex!8940 (ite c!1311093 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(declare-fun c!1311094 () Bool)

(declare-fun bm!639726 () Bool)

(declare-fun call!639732 () Bool)

(assert (=> bm!639726 (= call!639732 (validRegex!8940 (ite c!1311094 (reg!17825 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311093 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))))

(declare-fun b!7042956 () Bool)

(declare-fun res!2875298 () Bool)

(assert (=> b!7042956 (=> res!2875298 e!4233945)))

(assert (=> b!7042956 (= res!2875298 (not (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426)))))))

(assert (=> b!7042956 (= e!4233944 e!4233945)))

(declare-fun b!7042957 () Bool)

(declare-fun e!4233946 () Bool)

(assert (=> b!7042957 (= e!4233943 e!4233946)))

(declare-fun res!2875300 () Bool)

(assert (=> b!7042957 (= res!2875300 (not (nullable!7207 (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))

(assert (=> b!7042957 (=> (not res!2875300) (not e!4233946))))

(declare-fun b!7042958 () Bool)

(declare-fun res!2875301 () Bool)

(declare-fun e!4233942 () Bool)

(assert (=> b!7042958 (=> (not res!2875301) (not e!4233942))))

(assert (=> b!7042958 (= res!2875301 call!639731)))

(assert (=> b!7042958 (= e!4233944 e!4233942)))

(declare-fun b!7042959 () Bool)

(assert (=> b!7042959 (= e!4233947 call!639730)))

(declare-fun b!7042960 () Bool)

(assert (=> b!7042960 (= e!4233942 call!639730)))

(declare-fun b!7042955 () Bool)

(declare-fun e!4233941 () Bool)

(assert (=> b!7042955 (= e!4233941 e!4233943)))

(assert (=> b!7042955 (= c!1311094 (is-Star!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun d!2198978 () Bool)

(declare-fun res!2875302 () Bool)

(assert (=> d!2198978 (=> res!2875302 e!4233941)))

(assert (=> d!2198978 (= res!2875302 (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> d!2198978 (= (validRegex!8940 (h!74340 (exprs!6992 lt!2525426))) e!4233941)))

(declare-fun b!7042961 () Bool)

(assert (=> b!7042961 (= e!4233946 call!639732)))

(declare-fun bm!639727 () Bool)

(assert (=> bm!639727 (= call!639731 call!639732)))

(assert (= (and d!2198978 (not res!2875302)) b!7042955))

(assert (= (and b!7042955 c!1311094) b!7042957))

(assert (= (and b!7042955 (not c!1311094)) b!7042953))

(assert (= (and b!7042957 res!2875300) b!7042961))

(assert (= (and b!7042953 c!1311093) b!7042958))

(assert (= (and b!7042953 (not c!1311093)) b!7042956))

(assert (= (and b!7042958 res!2875301) b!7042960))

(assert (= (and b!7042956 (not res!2875298)) b!7042954))

(assert (= (and b!7042954 res!2875299) b!7042959))

(assert (= (or b!7042960 b!7042959) bm!639725))

(assert (= (or b!7042958 b!7042954) bm!639727))

(assert (= (or b!7042961 bm!639727) bm!639726))

(declare-fun m!7755274 () Bool)

(assert (=> bm!639725 m!7755274))

(declare-fun m!7755276 () Bool)

(assert (=> bm!639726 m!7755276))

(declare-fun m!7755278 () Bool)

(assert (=> b!7042957 m!7755278))

(assert (=> d!2198846 d!2198978))

(declare-fun b!7042962 () Bool)

(declare-fun e!4233952 () (Set Context!12984))

(declare-fun call!639737 () (Set Context!12984))

(declare-fun call!639733 () (Set Context!12984))

(assert (=> b!7042962 (= e!4233952 (set.union call!639737 call!639733))))

(declare-fun d!2198980 () Bool)

(declare-fun c!1311099 () Bool)

(assert (=> d!2198980 (= c!1311099 (and (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525426))) (= (c!1310942 (h!74340 (exprs!6992 lt!2525426))) (h!74341 s!7408))))))

(declare-fun e!4233951 () (Set Context!12984))

(assert (=> d!2198980 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525426)) (Context!12985 (t!381787 (exprs!6992 lt!2525426))) (h!74341 s!7408)) e!4233951)))

(declare-fun bm!639728 () Bool)

(declare-fun call!639734 () (Set Context!12984))

(assert (=> bm!639728 (= call!639733 call!639734)))

(declare-fun bm!639729 () Bool)

(declare-fun c!1311098 () Bool)

(declare-fun c!1311097 () Bool)

(declare-fun c!1311096 () Bool)

(declare-fun call!639736 () List!68016)

(assert (=> bm!639729 (= call!639734 (derivationStepZipperDown!2160 (ite c!1311096 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311097 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311098 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))) (ite (or c!1311096 c!1311097) (Context!12985 (t!381787 (exprs!6992 lt!2525426))) (Context!12985 call!639736)) (h!74341 s!7408)))))

(declare-fun b!7042963 () Bool)

(assert (=> b!7042963 (= e!4233951 (set.insert (Context!12985 (t!381787 (exprs!6992 lt!2525426))) (as set.empty (Set Context!12984))))))

(declare-fun b!7042964 () Bool)

(declare-fun e!4233950 () (Set Context!12984))

(assert (=> b!7042964 (= e!4233951 e!4233950)))

(assert (=> b!7042964 (= c!1311096 (is-Union!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042965 () Bool)

(declare-fun e!4233948 () (Set Context!12984))

(declare-fun call!639735 () (Set Context!12984))

(assert (=> b!7042965 (= e!4233948 call!639735)))

(declare-fun b!7042966 () Bool)

(declare-fun e!4233949 () (Set Context!12984))

(assert (=> b!7042966 (= e!4233949 call!639735)))

(declare-fun b!7042967 () Bool)

(declare-fun e!4233953 () Bool)

(assert (=> b!7042967 (= c!1311097 e!4233953)))

(declare-fun res!2875303 () Bool)

(assert (=> b!7042967 (=> (not res!2875303) (not e!4233953))))

(assert (=> b!7042967 (= res!2875303 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042967 (= e!4233950 e!4233952)))

(declare-fun b!7042968 () Bool)

(assert (=> b!7042968 (= e!4233948 (as set.empty (Set Context!12984)))))

(declare-fun bm!639730 () Bool)

(declare-fun call!639738 () List!68016)

(assert (=> bm!639730 (= call!639737 (derivationStepZipperDown!2160 (ite c!1311096 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))) (ite c!1311096 (Context!12985 (t!381787 (exprs!6992 lt!2525426))) (Context!12985 call!639738)) (h!74341 s!7408)))))

(declare-fun b!7042969 () Bool)

(declare-fun c!1311095 () Bool)

(assert (=> b!7042969 (= c!1311095 (is-Star!17496 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> b!7042969 (= e!4233949 e!4233948)))

(declare-fun b!7042970 () Bool)

(assert (=> b!7042970 (= e!4233952 e!4233949)))

(assert (=> b!7042970 (= c!1311098 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7042971 () Bool)

(assert (=> b!7042971 (= e!4233950 (set.union call!639734 call!639737))))

(declare-fun bm!639731 () Bool)

(assert (=> bm!639731 (= call!639736 call!639738)))

(declare-fun bm!639732 () Bool)

(assert (=> bm!639732 (= call!639735 call!639733)))

(declare-fun b!7042972 () Bool)

(assert (=> b!7042972 (= e!4233953 (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))

(declare-fun bm!639733 () Bool)

(assert (=> bm!639733 (= call!639738 ($colon$colon!2595 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525426)))) (ite (or c!1311097 c!1311098) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426)))))))

(assert (= (and d!2198980 c!1311099) b!7042963))

(assert (= (and d!2198980 (not c!1311099)) b!7042964))

(assert (= (and b!7042964 c!1311096) b!7042971))

(assert (= (and b!7042964 (not c!1311096)) b!7042967))

(assert (= (and b!7042967 res!2875303) b!7042972))

(assert (= (and b!7042967 c!1311097) b!7042962))

(assert (= (and b!7042967 (not c!1311097)) b!7042970))

(assert (= (and b!7042970 c!1311098) b!7042966))

(assert (= (and b!7042970 (not c!1311098)) b!7042969))

(assert (= (and b!7042969 c!1311095) b!7042965))

(assert (= (and b!7042969 (not c!1311095)) b!7042968))

(assert (= (or b!7042966 b!7042965) bm!639731))

(assert (= (or b!7042966 b!7042965) bm!639732))

(assert (= (or b!7042962 bm!639732) bm!639728))

(assert (= (or b!7042962 bm!639731) bm!639733))

(assert (= (or b!7042971 bm!639728) bm!639729))

(assert (= (or b!7042971 b!7042962) bm!639730))

(declare-fun m!7755280 () Bool)

(assert (=> b!7042963 m!7755280))

(declare-fun m!7755282 () Bool)

(assert (=> bm!639733 m!7755282))

(assert (=> b!7042972 m!7754800))

(declare-fun m!7755284 () Bool)

(assert (=> bm!639729 m!7755284))

(declare-fun m!7755286 () Bool)

(assert (=> bm!639730 m!7755286))

(assert (=> bm!639656 d!2198980))

(declare-fun d!2198982 () Bool)

(declare-fun c!1311100 () Bool)

(assert (=> d!2198982 (= c!1311100 (isEmpty!39622 (tail!13610 (t!381788 s!7408))))))

(declare-fun e!4233954 () Bool)

(assert (=> d!2198982 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525413 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))) e!4233954)))

(declare-fun b!7042973 () Bool)

(assert (=> b!7042973 (= e!4233954 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525413 (head!14293 (t!381788 s!7408)))))))

(declare-fun b!7042974 () Bool)

(assert (=> b!7042974 (= e!4233954 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525413 (head!14293 (t!381788 s!7408))) (head!14293 (tail!13610 (t!381788 s!7408)))) (tail!13610 (tail!13610 (t!381788 s!7408)))))))

(assert (= (and d!2198982 c!1311100) b!7042973))

(assert (= (and d!2198982 (not c!1311100)) b!7042974))

(assert (=> d!2198982 m!7754670))

(declare-fun m!7755288 () Bool)

(assert (=> d!2198982 m!7755288))

(assert (=> b!7042973 m!7754912))

(declare-fun m!7755290 () Bool)

(assert (=> b!7042973 m!7755290))

(assert (=> b!7042974 m!7754670))

(declare-fun m!7755292 () Bool)

(assert (=> b!7042974 m!7755292))

(assert (=> b!7042974 m!7754912))

(assert (=> b!7042974 m!7755292))

(declare-fun m!7755294 () Bool)

(assert (=> b!7042974 m!7755294))

(assert (=> b!7042974 m!7754670))

(declare-fun m!7755296 () Bool)

(assert (=> b!7042974 m!7755296))

(assert (=> b!7042974 m!7755294))

(assert (=> b!7042974 m!7755296))

(declare-fun m!7755298 () Bool)

(assert (=> b!7042974 m!7755298))

(assert (=> b!7042711 d!2198982))

(declare-fun bs!1873552 () Bool)

(declare-fun d!2198984 () Bool)

(assert (= bs!1873552 (and d!2198984 b!7042428)))

(declare-fun lambda!417281 () Int)

(assert (=> bs!1873552 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417281 lambda!417186))))

(declare-fun bs!1873553 () Bool)

(assert (= bs!1873553 (and d!2198984 d!2198788)))

(assert (=> bs!1873553 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417281 lambda!417239))))

(declare-fun bs!1873554 () Bool)

(assert (= bs!1873554 (and d!2198984 d!2198802)))

(assert (=> bs!1873554 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417281 lambda!417240))))

(assert (=> d!2198984 true))

(assert (=> d!2198984 (= (derivationStepZipper!2952 lt!2525413 (head!14293 (t!381788 s!7408))) (flatMap!2443 lt!2525413 lambda!417281))))

(declare-fun bs!1873555 () Bool)

(assert (= bs!1873555 d!2198984))

(declare-fun m!7755300 () Bool)

(assert (=> bs!1873555 m!7755300))

(assert (=> b!7042711 d!2198984))

(declare-fun d!2198986 () Bool)

(assert (=> d!2198986 (= (head!14293 (t!381788 s!7408)) (h!74341 (t!381788 s!7408)))))

(assert (=> b!7042711 d!2198986))

(declare-fun d!2198988 () Bool)

(assert (=> d!2198988 (= (tail!13610 (t!381788 s!7408)) (t!381788 (t!381788 s!7408)))))

(assert (=> b!7042711 d!2198988))

(declare-fun d!2198990 () Bool)

(declare-fun c!1311101 () Bool)

(assert (=> d!2198990 (= c!1311101 (isEmpty!39622 (tail!13610 (_1!37368 lt!2525435))))))

(declare-fun e!4233955 () Bool)

(assert (=> d!2198990 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525414 (head!14293 (_1!37368 lt!2525435))) (tail!13610 (_1!37368 lt!2525435))) e!4233955)))

(declare-fun b!7042975 () Bool)

(assert (=> b!7042975 (= e!4233955 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525414 (head!14293 (_1!37368 lt!2525435)))))))

(declare-fun b!7042976 () Bool)

(assert (=> b!7042976 (= e!4233955 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525414 (head!14293 (_1!37368 lt!2525435))) (head!14293 (tail!13610 (_1!37368 lt!2525435)))) (tail!13610 (tail!13610 (_1!37368 lt!2525435)))))))

(assert (= (and d!2198990 c!1311101) b!7042975))

(assert (= (and d!2198990 (not c!1311101)) b!7042976))

(assert (=> d!2198990 m!7754682))

(declare-fun m!7755302 () Bool)

(assert (=> d!2198990 m!7755302))

(assert (=> b!7042975 m!7754820))

(declare-fun m!7755304 () Bool)

(assert (=> b!7042975 m!7755304))

(assert (=> b!7042976 m!7754682))

(declare-fun m!7755306 () Bool)

(assert (=> b!7042976 m!7755306))

(assert (=> b!7042976 m!7754820))

(assert (=> b!7042976 m!7755306))

(declare-fun m!7755308 () Bool)

(assert (=> b!7042976 m!7755308))

(assert (=> b!7042976 m!7754682))

(declare-fun m!7755310 () Bool)

(assert (=> b!7042976 m!7755310))

(assert (=> b!7042976 m!7755308))

(assert (=> b!7042976 m!7755310))

(declare-fun m!7755312 () Bool)

(assert (=> b!7042976 m!7755312))

(assert (=> b!7042662 d!2198990))

(declare-fun bs!1873556 () Bool)

(declare-fun d!2198992 () Bool)

(assert (= bs!1873556 (and d!2198992 b!7042428)))

(declare-fun lambda!417282 () Int)

(assert (=> bs!1873556 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417282 lambda!417186))))

(declare-fun bs!1873557 () Bool)

(assert (= bs!1873557 (and d!2198992 d!2198788)))

(assert (=> bs!1873557 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417282 lambda!417239))))

(declare-fun bs!1873558 () Bool)

(assert (= bs!1873558 (and d!2198992 d!2198802)))

(assert (=> bs!1873558 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417282 lambda!417240))))

(declare-fun bs!1873559 () Bool)

(assert (= bs!1873559 (and d!2198992 d!2198984)))

(assert (=> bs!1873559 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (t!381788 s!7408))) (= lambda!417282 lambda!417281))))

(assert (=> d!2198992 true))

(assert (=> d!2198992 (= (derivationStepZipper!2952 lt!2525414 (head!14293 (_1!37368 lt!2525435))) (flatMap!2443 lt!2525414 lambda!417282))))

(declare-fun bs!1873560 () Bool)

(assert (= bs!1873560 d!2198992))

(declare-fun m!7755314 () Bool)

(assert (=> bs!1873560 m!7755314))

(assert (=> b!7042662 d!2198992))

(declare-fun d!2198994 () Bool)

(assert (=> d!2198994 (= (head!14293 (_1!37368 lt!2525435)) (h!74341 (_1!37368 lt!2525435)))))

(assert (=> b!7042662 d!2198994))

(declare-fun d!2198996 () Bool)

(assert (=> d!2198996 (= (tail!13610 (_1!37368 lt!2525435)) (t!381788 (_1!37368 lt!2525435)))))

(assert (=> b!7042662 d!2198996))

(assert (=> b!7042665 d!2198776))

(assert (=> d!2198800 d!2198796))

(declare-fun d!2198998 () Bool)

(assert (=> d!2198998 (= (flatMap!2443 lt!2525407 lambda!417186) (dynLambda!27470 lambda!417186 lt!2525426))))

(assert (=> d!2198998 true))

(declare-fun _$13!4506 () Unit!161672)

(assert (=> d!2198998 (= (choose!53484 lt!2525407 lt!2525426 lambda!417186) _$13!4506)))

(declare-fun b_lambda!267407 () Bool)

(assert (=> (not b_lambda!267407) (not d!2198998)))

(declare-fun bs!1873561 () Bool)

(assert (= bs!1873561 d!2198998))

(assert (=> bs!1873561 m!7754468))

(assert (=> bs!1873561 m!7754756))

(assert (=> d!2198800 d!2198998))

(declare-fun d!2199000 () Bool)

(assert (=> d!2199000 (= ($colon$colon!2595 (exprs!6992 lt!2525431) (ite (or c!1310996 c!1310997) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426)))) (Cons!67892 (ite (or c!1310996 c!1310997) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426))) (exprs!6992 lt!2525431)))))

(assert (=> bm!639676 d!2199000))

(declare-fun bs!1873562 () Bool)

(declare-fun d!2199002 () Bool)

(assert (= bs!1873562 (and d!2199002 b!7042438)))

(declare-fun lambda!417285 () Int)

(assert (=> bs!1873562 (not (= lambda!417285 lambda!417183))))

(declare-fun bs!1873563 () Bool)

(assert (= bs!1873563 (and d!2199002 d!2198764)))

(assert (=> bs!1873563 (not (= lambda!417285 lambda!417233))))

(declare-fun bs!1873564 () Bool)

(assert (= bs!1873564 (and d!2199002 d!2198766)))

(assert (=> bs!1873564 (not (= lambda!417285 lambda!417236))))

(assert (=> d!2199002 (= (nullableZipper!2602 lt!2525442) (exists!3446 lt!2525442 lambda!417285))))

(declare-fun bs!1873565 () Bool)

(assert (= bs!1873565 d!2199002))

(declare-fun m!7755316 () Bool)

(assert (=> bs!1873565 m!7755316))

(assert (=> b!7042708 d!2199002))

(declare-fun d!2199004 () Bool)

(assert (=> d!2199004 (= (isEmpty!39622 (t!381788 s!7408)) (is-Nil!67893 (t!381788 s!7408)))))

(assert (=> d!2198854 d!2199004))

(declare-fun d!2199006 () Bool)

(declare-fun c!1311104 () Bool)

(assert (=> d!2199006 (= c!1311104 (isEmpty!39622 s!7408))))

(declare-fun e!4233956 () Bool)

(assert (=> d!2199006 (= (matchZipper!3036 (set.insert lt!2525592 (as set.empty (Set Context!12984))) s!7408) e!4233956)))

(declare-fun b!7042977 () Bool)

(assert (=> b!7042977 (= e!4233956 (nullableZipper!2602 (set.insert lt!2525592 (as set.empty (Set Context!12984)))))))

(declare-fun b!7042978 () Bool)

(assert (=> b!7042978 (= e!4233956 (matchZipper!3036 (derivationStepZipper!2952 (set.insert lt!2525592 (as set.empty (Set Context!12984))) (head!14293 s!7408)) (tail!13610 s!7408)))))

(assert (= (and d!2199006 c!1311104) b!7042977))

(assert (= (and d!2199006 (not c!1311104)) b!7042978))

(assert (=> d!2199006 m!7754644))

(assert (=> b!7042977 m!7754928))

(declare-fun m!7755318 () Bool)

(assert (=> b!7042977 m!7755318))

(assert (=> b!7042978 m!7754648))

(assert (=> b!7042978 m!7754928))

(assert (=> b!7042978 m!7754648))

(declare-fun m!7755320 () Bool)

(assert (=> b!7042978 m!7755320))

(assert (=> b!7042978 m!7754652))

(assert (=> b!7042978 m!7755320))

(assert (=> b!7042978 m!7754652))

(declare-fun m!7755322 () Bool)

(assert (=> b!7042978 m!7755322))

(assert (=> bs!1873502 d!2199006))

(declare-fun d!2199008 () Bool)

(declare-fun res!2875308 () Bool)

(declare-fun e!4233961 () Bool)

(assert (=> d!2199008 (=> res!2875308 e!4233961)))

(assert (=> d!2199008 (= res!2875308 (is-Nil!67894 lt!2525417))))

(assert (=> d!2199008 (= (forall!16422 lt!2525417 lambda!417236) e!4233961)))

(declare-fun b!7042983 () Bool)

(declare-fun e!4233962 () Bool)

(assert (=> b!7042983 (= e!4233961 e!4233962)))

(declare-fun res!2875309 () Bool)

(assert (=> b!7042983 (=> (not res!2875309) (not e!4233962))))

(assert (=> b!7042983 (= res!2875309 (dynLambda!27468 lambda!417236 (h!74342 lt!2525417)))))

(declare-fun b!7042984 () Bool)

(assert (=> b!7042984 (= e!4233962 (forall!16422 (t!381789 lt!2525417) lambda!417236))))

(assert (= (and d!2199008 (not res!2875308)) b!7042983))

(assert (= (and b!7042983 res!2875309) b!7042984))

(declare-fun b_lambda!267409 () Bool)

(assert (=> (not b_lambda!267409) (not b!7042983)))

(declare-fun m!7755324 () Bool)

(assert (=> b!7042983 m!7755324))

(declare-fun m!7755326 () Bool)

(assert (=> b!7042984 m!7755326))

(assert (=> d!2198766 d!2199008))

(declare-fun b!7042985 () Bool)

(declare-fun e!4233964 () (Set Context!12984))

(declare-fun call!639739 () (Set Context!12984))

(assert (=> b!7042985 (= e!4233964 call!639739)))

(declare-fun b!7042986 () Bool)

(declare-fun e!4233965 () (Set Context!12984))

(assert (=> b!7042986 (= e!4233965 e!4233964)))

(declare-fun c!1311106 () Bool)

(assert (=> b!7042986 (= c!1311106 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525427))))))))

(declare-fun b!7042987 () Bool)

(assert (=> b!7042987 (= e!4233965 (set.union call!639739 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525427)))))) (h!74341 s!7408))))))

(declare-fun d!2199010 () Bool)

(declare-fun c!1311105 () Bool)

(declare-fun e!4233963 () Bool)

(assert (=> d!2199010 (= c!1311105 e!4233963)))

(declare-fun res!2875310 () Bool)

(assert (=> d!2199010 (=> (not res!2875310) (not e!4233963))))

(assert (=> d!2199010 (= res!2875310 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525427))))))))

(assert (=> d!2199010 (= (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525427))) (h!74341 s!7408)) e!4233965)))

(declare-fun bm!639734 () Bool)

(assert (=> bm!639734 (= call!639739 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525427))))) (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525427)))))) (h!74341 s!7408)))))

(declare-fun b!7042988 () Bool)

(assert (=> b!7042988 (= e!4233964 (as set.empty (Set Context!12984)))))

(declare-fun b!7042989 () Bool)

(assert (=> b!7042989 (= e!4233963 (nullable!7207 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525427)))))))))

(assert (= (and d!2199010 res!2875310) b!7042989))

(assert (= (and d!2199010 c!1311105) b!7042987))

(assert (= (and d!2199010 (not c!1311105)) b!7042986))

(assert (= (and b!7042986 c!1311106) b!7042985))

(assert (= (and b!7042986 (not c!1311106)) b!7042988))

(assert (= (or b!7042987 b!7042985) bm!639734))

(declare-fun m!7755328 () Bool)

(assert (=> b!7042987 m!7755328))

(declare-fun m!7755330 () Bool)

(assert (=> bm!639734 m!7755330))

(declare-fun m!7755332 () Bool)

(assert (=> b!7042989 m!7755332))

(assert (=> b!7042612 d!2199010))

(declare-fun d!2199012 () Bool)

(declare-fun c!1311107 () Bool)

(assert (=> d!2199012 (= c!1311107 (isEmpty!39622 (_1!37368 lt!2525435)))))

(declare-fun e!4233966 () Bool)

(assert (=> d!2199012 (= (matchZipper!3036 (set.union lt!2525403 lt!2525436) (_1!37368 lt!2525435)) e!4233966)))

(declare-fun b!7042990 () Bool)

(assert (=> b!7042990 (= e!4233966 (nullableZipper!2602 (set.union lt!2525403 lt!2525436)))))

(declare-fun b!7042991 () Bool)

(assert (=> b!7042991 (= e!4233966 (matchZipper!3036 (derivationStepZipper!2952 (set.union lt!2525403 lt!2525436) (head!14293 (_1!37368 lt!2525435))) (tail!13610 (_1!37368 lt!2525435))))))

(assert (= (and d!2199012 c!1311107) b!7042990))

(assert (= (and d!2199012 (not c!1311107)) b!7042991))

(assert (=> d!2199012 m!7754674))

(declare-fun m!7755334 () Bool)

(assert (=> b!7042990 m!7755334))

(assert (=> b!7042991 m!7754678))

(assert (=> b!7042991 m!7754678))

(declare-fun m!7755336 () Bool)

(assert (=> b!7042991 m!7755336))

(assert (=> b!7042991 m!7754682))

(assert (=> b!7042991 m!7755336))

(assert (=> b!7042991 m!7754682))

(declare-fun m!7755338 () Bool)

(assert (=> b!7042991 m!7755338))

(assert (=> d!2198826 d!2199012))

(assert (=> d!2198826 d!2198848))

(declare-fun d!2199014 () Bool)

(declare-fun e!4233969 () Bool)

(assert (=> d!2199014 (= (matchZipper!3036 (set.union lt!2525403 lt!2525436) (_1!37368 lt!2525435)) e!4233969)))

(declare-fun res!2875313 () Bool)

(assert (=> d!2199014 (=> res!2875313 e!4233969)))

(assert (=> d!2199014 (= res!2875313 (matchZipper!3036 lt!2525403 (_1!37368 lt!2525435)))))

(assert (=> d!2199014 true))

(declare-fun _$48!2505 () Unit!161672)

(assert (=> d!2199014 (= (choose!53486 lt!2525403 lt!2525436 (_1!37368 lt!2525435)) _$48!2505)))

(declare-fun b!7042994 () Bool)

(assert (=> b!7042994 (= e!4233969 (matchZipper!3036 lt!2525436 (_1!37368 lt!2525435)))))

(assert (= (and d!2199014 (not res!2875313)) b!7042994))

(assert (=> d!2199014 m!7754824))

(assert (=> d!2199014 m!7754502))

(assert (=> b!7042994 m!7754474))

(assert (=> d!2198826 d!2199014))

(assert (=> d!2198784 d!2198790))

(declare-fun d!2199016 () Bool)

(assert (=> d!2199016 (= (flatMap!2443 lt!2525401 lambda!417186) (dynLambda!27470 lambda!417186 lt!2525434))))

(assert (=> d!2199016 true))

(declare-fun _$13!4507 () Unit!161672)

(assert (=> d!2199016 (= (choose!53484 lt!2525401 lt!2525434 lambda!417186) _$13!4507)))

(declare-fun b_lambda!267411 () Bool)

(assert (=> (not b_lambda!267411) (not d!2199016)))

(declare-fun bs!1873566 () Bool)

(assert (= bs!1873566 d!2199016))

(assert (=> bs!1873566 m!7754420))

(assert (=> bs!1873566 m!7754716))

(assert (=> d!2198784 d!2199016))

(declare-fun d!2199018 () Bool)

(declare-fun c!1311110 () Bool)

(assert (=> d!2199018 (= c!1311110 (is-Nil!67893 lt!2525610))))

(declare-fun e!4233972 () (Set C!35262))

(assert (=> d!2199018 (= (content!13593 lt!2525610) e!4233972)))

(declare-fun b!7042999 () Bool)

(assert (=> b!7042999 (= e!4233972 (as set.empty (Set C!35262)))))

(declare-fun b!7043000 () Bool)

(assert (=> b!7043000 (= e!4233972 (set.union (set.insert (h!74341 lt!2525610) (as set.empty (Set C!35262))) (content!13593 (t!381788 lt!2525610))))))

(assert (= (and d!2199018 c!1311110) b!7042999))

(assert (= (and d!2199018 (not c!1311110)) b!7043000))

(declare-fun m!7755340 () Bool)

(assert (=> b!7043000 m!7755340))

(declare-fun m!7755342 () Bool)

(assert (=> b!7043000 m!7755342))

(assert (=> d!2198792 d!2199018))

(declare-fun d!2199020 () Bool)

(declare-fun c!1311111 () Bool)

(assert (=> d!2199020 (= c!1311111 (is-Nil!67893 (_1!37368 lt!2525435)))))

(declare-fun e!4233973 () (Set C!35262))

(assert (=> d!2199020 (= (content!13593 (_1!37368 lt!2525435)) e!4233973)))

(declare-fun b!7043001 () Bool)

(assert (=> b!7043001 (= e!4233973 (as set.empty (Set C!35262)))))

(declare-fun b!7043002 () Bool)

(assert (=> b!7043002 (= e!4233973 (set.union (set.insert (h!74341 (_1!37368 lt!2525435)) (as set.empty (Set C!35262))) (content!13593 (t!381788 (_1!37368 lt!2525435)))))))

(assert (= (and d!2199020 c!1311111) b!7043001))

(assert (= (and d!2199020 (not c!1311111)) b!7043002))

(declare-fun m!7755344 () Bool)

(assert (=> b!7043002 m!7755344))

(declare-fun m!7755346 () Bool)

(assert (=> b!7043002 m!7755346))

(assert (=> d!2198792 d!2199020))

(declare-fun d!2199022 () Bool)

(declare-fun c!1311112 () Bool)

(assert (=> d!2199022 (= c!1311112 (is-Nil!67893 (_2!37368 lt!2525435)))))

(declare-fun e!4233974 () (Set C!35262))

(assert (=> d!2199022 (= (content!13593 (_2!37368 lt!2525435)) e!4233974)))

(declare-fun b!7043003 () Bool)

(assert (=> b!7043003 (= e!4233974 (as set.empty (Set C!35262)))))

(declare-fun b!7043004 () Bool)

(assert (=> b!7043004 (= e!4233974 (set.union (set.insert (h!74341 (_2!37368 lt!2525435)) (as set.empty (Set C!35262))) (content!13593 (t!381788 (_2!37368 lt!2525435)))))))

(assert (= (and d!2199022 c!1311112) b!7043003))

(assert (= (and d!2199022 (not c!1311112)) b!7043004))

(declare-fun m!7755348 () Bool)

(assert (=> b!7043004 m!7755348))

(declare-fun m!7755350 () Bool)

(assert (=> b!7043004 m!7755350))

(assert (=> d!2198792 d!2199022))

(declare-fun b!7043005 () Bool)

(declare-fun e!4233979 () (Set Context!12984))

(declare-fun call!639744 () (Set Context!12984))

(declare-fun call!639740 () (Set Context!12984))

(assert (=> b!7043005 (= e!4233979 (set.union call!639744 call!639740))))

(declare-fun d!2199024 () Bool)

(declare-fun c!1311117 () Bool)

(assert (=> d!2199024 (= c!1311117 (and (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525434))) (= (c!1310942 (h!74340 (exprs!6992 lt!2525434))) (h!74341 s!7408))))))

(declare-fun e!4233978 () (Set Context!12984))

(assert (=> d!2199024 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525434)) (Context!12985 (t!381787 (exprs!6992 lt!2525434))) (h!74341 s!7408)) e!4233978)))

(declare-fun bm!639735 () Bool)

(declare-fun call!639741 () (Set Context!12984))

(assert (=> bm!639735 (= call!639740 call!639741)))

(declare-fun c!1311115 () Bool)

(declare-fun c!1311116 () Bool)

(declare-fun bm!639736 () Bool)

(declare-fun c!1311114 () Bool)

(declare-fun call!639743 () List!68016)

(assert (=> bm!639736 (= call!639741 (derivationStepZipperDown!2160 (ite c!1311114 (regOne!35505 (h!74340 (exprs!6992 lt!2525434))) (ite c!1311115 (regTwo!35504 (h!74340 (exprs!6992 lt!2525434))) (ite c!1311116 (regOne!35504 (h!74340 (exprs!6992 lt!2525434))) (reg!17825 (h!74340 (exprs!6992 lt!2525434)))))) (ite (or c!1311114 c!1311115) (Context!12985 (t!381787 (exprs!6992 lt!2525434))) (Context!12985 call!639743)) (h!74341 s!7408)))))

(declare-fun b!7043006 () Bool)

(assert (=> b!7043006 (= e!4233978 (set.insert (Context!12985 (t!381787 (exprs!6992 lt!2525434))) (as set.empty (Set Context!12984))))))

(declare-fun b!7043007 () Bool)

(declare-fun e!4233977 () (Set Context!12984))

(assert (=> b!7043007 (= e!4233978 e!4233977)))

(assert (=> b!7043007 (= c!1311114 (is-Union!17496 (h!74340 (exprs!6992 lt!2525434))))))

(declare-fun b!7043008 () Bool)

(declare-fun e!4233975 () (Set Context!12984))

(declare-fun call!639742 () (Set Context!12984))

(assert (=> b!7043008 (= e!4233975 call!639742)))

(declare-fun b!7043009 () Bool)

(declare-fun e!4233976 () (Set Context!12984))

(assert (=> b!7043009 (= e!4233976 call!639742)))

(declare-fun b!7043010 () Bool)

(declare-fun e!4233980 () Bool)

(assert (=> b!7043010 (= c!1311115 e!4233980)))

(declare-fun res!2875314 () Bool)

(assert (=> b!7043010 (=> (not res!2875314) (not e!4233980))))

(assert (=> b!7043010 (= res!2875314 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525434))))))

(assert (=> b!7043010 (= e!4233977 e!4233979)))

(declare-fun b!7043011 () Bool)

(assert (=> b!7043011 (= e!4233975 (as set.empty (Set Context!12984)))))

(declare-fun bm!639737 () Bool)

(declare-fun call!639745 () List!68016)

(assert (=> bm!639737 (= call!639744 (derivationStepZipperDown!2160 (ite c!1311114 (regTwo!35505 (h!74340 (exprs!6992 lt!2525434))) (regOne!35504 (h!74340 (exprs!6992 lt!2525434)))) (ite c!1311114 (Context!12985 (t!381787 (exprs!6992 lt!2525434))) (Context!12985 call!639745)) (h!74341 s!7408)))))

(declare-fun b!7043012 () Bool)

(declare-fun c!1311113 () Bool)

(assert (=> b!7043012 (= c!1311113 (is-Star!17496 (h!74340 (exprs!6992 lt!2525434))))))

(assert (=> b!7043012 (= e!4233976 e!4233975)))

(declare-fun b!7043013 () Bool)

(assert (=> b!7043013 (= e!4233979 e!4233976)))

(assert (=> b!7043013 (= c!1311116 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525434))))))

(declare-fun b!7043014 () Bool)

(assert (=> b!7043014 (= e!4233977 (set.union call!639741 call!639744))))

(declare-fun bm!639738 () Bool)

(assert (=> bm!639738 (= call!639743 call!639745)))

(declare-fun bm!639739 () Bool)

(assert (=> bm!639739 (= call!639742 call!639740)))

(declare-fun b!7043015 () Bool)

(assert (=> b!7043015 (= e!4233980 (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525434)))))))

(declare-fun bm!639740 () Bool)

(assert (=> bm!639740 (= call!639745 ($colon$colon!2595 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525434)))) (ite (or c!1311115 c!1311116) (regTwo!35504 (h!74340 (exprs!6992 lt!2525434))) (h!74340 (exprs!6992 lt!2525434)))))))

(assert (= (and d!2199024 c!1311117) b!7043006))

(assert (= (and d!2199024 (not c!1311117)) b!7043007))

(assert (= (and b!7043007 c!1311114) b!7043014))

(assert (= (and b!7043007 (not c!1311114)) b!7043010))

(assert (= (and b!7043010 res!2875314) b!7043015))

(assert (= (and b!7043010 c!1311115) b!7043005))

(assert (= (and b!7043010 (not c!1311115)) b!7043013))

(assert (= (and b!7043013 c!1311116) b!7043009))

(assert (= (and b!7043013 (not c!1311116)) b!7043012))

(assert (= (and b!7043012 c!1311113) b!7043008))

(assert (= (and b!7043012 (not c!1311113)) b!7043011))

(assert (= (or b!7043009 b!7043008) bm!639738))

(assert (= (or b!7043009 b!7043008) bm!639739))

(assert (= (or b!7043005 bm!639739) bm!639735))

(assert (= (or b!7043005 bm!639738) bm!639740))

(assert (= (or b!7043014 bm!639735) bm!639736))

(assert (= (or b!7043014 b!7043005) bm!639737))

(declare-fun m!7755352 () Bool)

(assert (=> b!7043006 m!7755352))

(declare-fun m!7755354 () Bool)

(assert (=> bm!639740 m!7755354))

(declare-fun m!7755356 () Bool)

(assert (=> b!7043015 m!7755356))

(declare-fun m!7755358 () Bool)

(assert (=> bm!639736 m!7755358))

(declare-fun m!7755360 () Bool)

(assert (=> bm!639737 m!7755360))

(assert (=> bm!639655 d!2199024))

(declare-fun d!2199026 () Bool)

(declare-fun c!1311118 () Bool)

(assert (=> d!2199026 (= c!1311118 (isEmpty!39622 (tail!13610 (t!381788 s!7408))))))

(declare-fun e!4233981 () Bool)

(assert (=> d!2199026 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525420 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))) e!4233981)))

(declare-fun b!7043016 () Bool)

(assert (=> b!7043016 (= e!4233981 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525420 (head!14293 (t!381788 s!7408)))))))

(declare-fun b!7043017 () Bool)

(assert (=> b!7043017 (= e!4233981 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525420 (head!14293 (t!381788 s!7408))) (head!14293 (tail!13610 (t!381788 s!7408)))) (tail!13610 (tail!13610 (t!381788 s!7408)))))))

(assert (= (and d!2199026 c!1311118) b!7043016))

(assert (= (and d!2199026 (not c!1311118)) b!7043017))

(assert (=> d!2199026 m!7754670))

(assert (=> d!2199026 m!7755288))

(assert (=> b!7043016 m!7754918))

(declare-fun m!7755362 () Bool)

(assert (=> b!7043016 m!7755362))

(assert (=> b!7043017 m!7754670))

(assert (=> b!7043017 m!7755292))

(assert (=> b!7043017 m!7754918))

(assert (=> b!7043017 m!7755292))

(declare-fun m!7755364 () Bool)

(assert (=> b!7043017 m!7755364))

(assert (=> b!7043017 m!7754670))

(assert (=> b!7043017 m!7755296))

(assert (=> b!7043017 m!7755364))

(assert (=> b!7043017 m!7755296))

(declare-fun m!7755366 () Bool)

(assert (=> b!7043017 m!7755366))

(assert (=> b!7042713 d!2199026))

(declare-fun bs!1873567 () Bool)

(declare-fun d!2199028 () Bool)

(assert (= bs!1873567 (and d!2199028 b!7042428)))

(declare-fun lambda!417286 () Int)

(assert (=> bs!1873567 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417286 lambda!417186))))

(declare-fun bs!1873568 () Bool)

(assert (= bs!1873568 (and d!2199028 d!2198992)))

(assert (=> bs!1873568 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417286 lambda!417282))))

(declare-fun bs!1873569 () Bool)

(assert (= bs!1873569 (and d!2199028 d!2198984)))

(assert (=> bs!1873569 (= lambda!417286 lambda!417281)))

(declare-fun bs!1873570 () Bool)

(assert (= bs!1873570 (and d!2199028 d!2198788)))

(assert (=> bs!1873570 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417286 lambda!417239))))

(declare-fun bs!1873571 () Bool)

(assert (= bs!1873571 (and d!2199028 d!2198802)))

(assert (=> bs!1873571 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417286 lambda!417240))))

(assert (=> d!2199028 true))

(assert (=> d!2199028 (= (derivationStepZipper!2952 lt!2525420 (head!14293 (t!381788 s!7408))) (flatMap!2443 lt!2525420 lambda!417286))))

(declare-fun bs!1873572 () Bool)

(assert (= bs!1873572 d!2199028))

(declare-fun m!7755368 () Bool)

(assert (=> bs!1873572 m!7755368))

(assert (=> b!7042713 d!2199028))

(assert (=> b!7042713 d!2198986))

(assert (=> b!7042713 d!2198988))

(declare-fun bs!1873573 () Bool)

(declare-fun d!2199030 () Bool)

(assert (= bs!1873573 (and d!2199030 b!7042438)))

(declare-fun lambda!417287 () Int)

(assert (=> bs!1873573 (not (= lambda!417287 lambda!417183))))

(declare-fun bs!1873574 () Bool)

(assert (= bs!1873574 (and d!2199030 d!2198764)))

(assert (=> bs!1873574 (not (= lambda!417287 lambda!417233))))

(declare-fun bs!1873575 () Bool)

(assert (= bs!1873575 (and d!2199030 d!2198766)))

(assert (=> bs!1873575 (not (= lambda!417287 lambda!417236))))

(declare-fun bs!1873576 () Bool)

(assert (= bs!1873576 (and d!2199030 d!2199002)))

(assert (=> bs!1873576 (= lambda!417287 lambda!417285)))

(assert (=> d!2199030 (= (nullableZipper!2602 lt!2525440) (exists!3446 lt!2525440 lambda!417287))))

(declare-fun bs!1873577 () Bool)

(assert (= bs!1873577 d!2199030))

(declare-fun m!7755370 () Bool)

(assert (=> bs!1873577 m!7755370))

(assert (=> b!7042556 d!2199030))

(declare-fun b!7043019 () Bool)

(declare-fun e!4233983 () List!68017)

(assert (=> b!7043019 (= e!4233983 (Cons!67893 (h!74341 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))) (++!15568 (t!381788 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))) (t!381788 (t!381788 s!7408)))))))

(declare-fun b!7043020 () Bool)

(declare-fun res!2875316 () Bool)

(declare-fun e!4233982 () Bool)

(assert (=> b!7043020 (=> (not res!2875316) (not e!4233982))))

(declare-fun lt!2525696 () List!68017)

(assert (=> b!7043020 (= res!2875316 (= (size!41101 lt!2525696) (+ (size!41101 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))) (size!41101 (t!381788 (t!381788 s!7408))))))))

(declare-fun b!7043018 () Bool)

(assert (=> b!7043018 (= e!4233983 (t!381788 (t!381788 s!7408)))))

(declare-fun d!2199032 () Bool)

(assert (=> d!2199032 e!4233982))

(declare-fun res!2875315 () Bool)

(assert (=> d!2199032 (=> (not res!2875315) (not e!4233982))))

(assert (=> d!2199032 (= res!2875315 (= (content!13593 lt!2525696) (set.union (content!13593 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))) (content!13593 (t!381788 (t!381788 s!7408))))))))

(assert (=> d!2199032 (= lt!2525696 e!4233983)))

(declare-fun c!1311119 () Bool)

(assert (=> d!2199032 (= c!1311119 (is-Nil!67893 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))))))

(assert (=> d!2199032 (= (++!15568 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408))) lt!2525696)))

(declare-fun b!7043021 () Bool)

(assert (=> b!7043021 (= e!4233982 (or (not (= (t!381788 (t!381788 s!7408)) Nil!67893)) (= lt!2525696 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)))))))

(assert (= (and d!2199032 c!1311119) b!7043018))

(assert (= (and d!2199032 (not c!1311119)) b!7043019))

(assert (= (and d!2199032 res!2875315) b!7043020))

(assert (= (and b!7043020 res!2875316) b!7043021))

(declare-fun m!7755372 () Bool)

(assert (=> b!7043019 m!7755372))

(declare-fun m!7755374 () Bool)

(assert (=> b!7043020 m!7755374))

(assert (=> b!7043020 m!7754878))

(declare-fun m!7755376 () Bool)

(assert (=> b!7043020 m!7755376))

(declare-fun m!7755378 () Bool)

(assert (=> b!7043020 m!7755378))

(declare-fun m!7755380 () Bool)

(assert (=> d!2199032 m!7755380))

(assert (=> d!2199032 m!7754878))

(declare-fun m!7755382 () Bool)

(assert (=> d!2199032 m!7755382))

(declare-fun m!7755384 () Bool)

(assert (=> d!2199032 m!7755384))

(assert (=> b!7042703 d!2199032))

(declare-fun b!7043023 () Bool)

(declare-fun e!4233985 () List!68017)

(assert (=> b!7043023 (= e!4233985 (Cons!67893 (h!74341 Nil!67893) (++!15568 (t!381788 Nil!67893) (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))))))

(declare-fun b!7043024 () Bool)

(declare-fun res!2875318 () Bool)

(declare-fun e!4233984 () Bool)

(assert (=> b!7043024 (=> (not res!2875318) (not e!4233984))))

(declare-fun lt!2525697 () List!68017)

(assert (=> b!7043024 (= res!2875318 (= (size!41101 lt!2525697) (+ (size!41101 Nil!67893) (size!41101 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)))))))

(declare-fun b!7043022 () Bool)

(assert (=> b!7043022 (= e!4233985 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))))

(declare-fun d!2199034 () Bool)

(assert (=> d!2199034 e!4233984))

(declare-fun res!2875317 () Bool)

(assert (=> d!2199034 (=> (not res!2875317) (not e!4233984))))

(assert (=> d!2199034 (= res!2875317 (= (content!13593 lt!2525697) (set.union (content!13593 Nil!67893) (content!13593 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)))))))

(assert (=> d!2199034 (= lt!2525697 e!4233985)))

(declare-fun c!1311120 () Bool)

(assert (=> d!2199034 (= c!1311120 (is-Nil!67893 Nil!67893))))

(assert (=> d!2199034 (= (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) lt!2525697)))

(declare-fun b!7043025 () Bool)

(assert (=> b!7043025 (= e!4233984 (or (not (= (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893) Nil!67893)) (= lt!2525697 Nil!67893)))))

(assert (= (and d!2199034 c!1311120) b!7043022))

(assert (= (and d!2199034 (not c!1311120)) b!7043023))

(assert (= (and d!2199034 res!2875317) b!7043024))

(assert (= (and b!7043024 res!2875318) b!7043025))

(declare-fun m!7755386 () Bool)

(assert (=> b!7043023 m!7755386))

(declare-fun m!7755388 () Bool)

(assert (=> b!7043024 m!7755388))

(declare-fun m!7755390 () Bool)

(assert (=> b!7043024 m!7755390))

(declare-fun m!7755392 () Bool)

(assert (=> b!7043024 m!7755392))

(declare-fun m!7755394 () Bool)

(assert (=> d!2199034 m!7755394))

(declare-fun m!7755396 () Bool)

(assert (=> d!2199034 m!7755396))

(declare-fun m!7755398 () Bool)

(assert (=> d!2199034 m!7755398))

(assert (=> b!7042703 d!2199034))

(declare-fun d!2199036 () Bool)

(assert (=> d!2199036 (= (++!15568 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408))) (t!381788 s!7408))))

(declare-fun lt!2525700 () Unit!161672)

(declare-fun choose!53498 (List!68017 C!35262 List!68017 List!68017) Unit!161672)

(assert (=> d!2199036 (= lt!2525700 (choose!53498 Nil!67893 (h!74341 (t!381788 s!7408)) (t!381788 (t!381788 s!7408)) (t!381788 s!7408)))))

(assert (=> d!2199036 (= (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) (t!381788 (t!381788 s!7408)))) (t!381788 s!7408))))

(assert (=> d!2199036 (= (lemmaMoveElementToOtherListKeepsConcatEq!2942 Nil!67893 (h!74341 (t!381788 s!7408)) (t!381788 (t!381788 s!7408)) (t!381788 s!7408)) lt!2525700)))

(declare-fun bs!1873578 () Bool)

(assert (= bs!1873578 d!2199036))

(assert (=> bs!1873578 m!7754878))

(assert (=> bs!1873578 m!7754878))

(assert (=> bs!1873578 m!7754880))

(declare-fun m!7755400 () Bool)

(assert (=> bs!1873578 m!7755400))

(declare-fun m!7755402 () Bool)

(assert (=> bs!1873578 m!7755402))

(assert (=> b!7042703 d!2199036))

(declare-fun b!7043026 () Bool)

(declare-fun e!4233989 () Bool)

(declare-fun lt!2525702 () Option!16897)

(assert (=> b!7043026 (= e!4233989 (not (isDefined!13598 lt!2525702)))))

(declare-fun b!7043027 () Bool)

(declare-fun e!4233988 () Bool)

(assert (=> b!7043027 (= e!4233988 (matchZipper!3036 lt!2525437 (t!381788 (t!381788 s!7408))))))

(declare-fun b!7043028 () Bool)

(declare-fun e!4233990 () Option!16897)

(assert (=> b!7043028 (= e!4233990 None!16896)))

(declare-fun d!2199038 () Bool)

(assert (=> d!2199038 e!4233989))

(declare-fun res!2875321 () Bool)

(assert (=> d!2199038 (=> res!2875321 e!4233989)))

(declare-fun e!4233986 () Bool)

(assert (=> d!2199038 (= res!2875321 e!4233986)))

(declare-fun res!2875319 () Bool)

(assert (=> d!2199038 (=> (not res!2875319) (not e!4233986))))

(assert (=> d!2199038 (= res!2875319 (isDefined!13598 lt!2525702))))

(declare-fun e!4233987 () Option!16897)

(assert (=> d!2199038 (= lt!2525702 e!4233987)))

(declare-fun c!1311121 () Bool)

(assert (=> d!2199038 (= c!1311121 e!4233988)))

(declare-fun res!2875320 () Bool)

(assert (=> d!2199038 (=> (not res!2875320) (not e!4233988))))

(assert (=> d!2199038 (= res!2875320 (matchZipper!3036 lt!2525403 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893))))))

(assert (=> d!2199038 (= (++!15568 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408))) (t!381788 s!7408))))

(assert (=> d!2199038 (= (findConcatSeparationZippers!413 lt!2525403 lt!2525437 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408)) (t!381788 s!7408)) lt!2525702)))

(declare-fun b!7043029 () Bool)

(assert (=> b!7043029 (= e!4233987 e!4233990)))

(declare-fun c!1311122 () Bool)

(assert (=> b!7043029 (= c!1311122 (is-Nil!67893 (t!381788 (t!381788 s!7408))))))

(declare-fun b!7043030 () Bool)

(assert (=> b!7043030 (= e!4233986 (= (++!15568 (_1!37368 (get!23796 lt!2525702)) (_2!37368 (get!23796 lt!2525702))) (t!381788 s!7408)))))

(declare-fun b!7043031 () Bool)

(declare-fun res!2875323 () Bool)

(assert (=> b!7043031 (=> (not res!2875323) (not e!4233986))))

(assert (=> b!7043031 (= res!2875323 (matchZipper!3036 lt!2525403 (_1!37368 (get!23796 lt!2525702))))))

(declare-fun b!7043032 () Bool)

(declare-fun lt!2525703 () Unit!161672)

(declare-fun lt!2525701 () Unit!161672)

(assert (=> b!7043032 (= lt!2525703 lt!2525701)))

(assert (=> b!7043032 (= (++!15568 (++!15568 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (Cons!67893 (h!74341 (t!381788 (t!381788 s!7408))) Nil!67893)) (t!381788 (t!381788 (t!381788 s!7408)))) (t!381788 s!7408))))

(assert (=> b!7043032 (= lt!2525701 (lemmaMoveElementToOtherListKeepsConcatEq!2942 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (h!74341 (t!381788 (t!381788 s!7408))) (t!381788 (t!381788 (t!381788 s!7408))) (t!381788 s!7408)))))

(assert (=> b!7043032 (= e!4233990 (findConcatSeparationZippers!413 lt!2525403 lt!2525437 (++!15568 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (Cons!67893 (h!74341 (t!381788 (t!381788 s!7408))) Nil!67893)) (t!381788 (t!381788 (t!381788 s!7408))) (t!381788 s!7408)))))

(declare-fun b!7043033 () Bool)

(declare-fun res!2875322 () Bool)

(assert (=> b!7043033 (=> (not res!2875322) (not e!4233986))))

(assert (=> b!7043033 (= res!2875322 (matchZipper!3036 lt!2525437 (_2!37368 (get!23796 lt!2525702))))))

(declare-fun b!7043034 () Bool)

(assert (=> b!7043034 (= e!4233987 (Some!16896 (tuple2!68131 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408)))))))

(assert (= (and d!2199038 res!2875320) b!7043027))

(assert (= (and d!2199038 c!1311121) b!7043034))

(assert (= (and d!2199038 (not c!1311121)) b!7043029))

(assert (= (and b!7043029 c!1311122) b!7043028))

(assert (= (and b!7043029 (not c!1311122)) b!7043032))

(assert (= (and d!2199038 res!2875319) b!7043031))

(assert (= (and b!7043031 res!2875323) b!7043033))

(assert (= (and b!7043033 res!2875322) b!7043030))

(assert (= (and d!2199038 (not res!2875321)) b!7043026))

(declare-fun m!7755404 () Bool)

(assert (=> b!7043027 m!7755404))

(declare-fun m!7755406 () Bool)

(assert (=> d!2199038 m!7755406))

(assert (=> d!2199038 m!7754878))

(declare-fun m!7755408 () Bool)

(assert (=> d!2199038 m!7755408))

(assert (=> d!2199038 m!7754878))

(assert (=> d!2199038 m!7754880))

(assert (=> b!7043026 m!7755406))

(declare-fun m!7755410 () Bool)

(assert (=> b!7043030 m!7755410))

(declare-fun m!7755412 () Bool)

(assert (=> b!7043030 m!7755412))

(assert (=> b!7043031 m!7755410))

(declare-fun m!7755414 () Bool)

(assert (=> b!7043031 m!7755414))

(assert (=> b!7043033 m!7755410))

(declare-fun m!7755416 () Bool)

(assert (=> b!7043033 m!7755416))

(assert (=> b!7043032 m!7754878))

(declare-fun m!7755418 () Bool)

(assert (=> b!7043032 m!7755418))

(assert (=> b!7043032 m!7755418))

(declare-fun m!7755420 () Bool)

(assert (=> b!7043032 m!7755420))

(assert (=> b!7043032 m!7754878))

(declare-fun m!7755422 () Bool)

(assert (=> b!7043032 m!7755422))

(assert (=> b!7043032 m!7755418))

(declare-fun m!7755424 () Bool)

(assert (=> b!7043032 m!7755424))

(assert (=> b!7042703 d!2199038))

(declare-fun bs!1873579 () Bool)

(declare-fun d!2199040 () Bool)

(assert (= bs!1873579 (and d!2199040 d!2198804)))

(declare-fun lambda!417288 () Int)

(assert (=> bs!1873579 (= lambda!417288 lambda!417243)))

(declare-fun bs!1873580 () Bool)

(assert (= bs!1873580 (and d!2199040 d!2198846)))

(assert (=> bs!1873580 (= lambda!417288 lambda!417253)))

(declare-fun bs!1873581 () Bool)

(assert (= bs!1873581 (and d!2199040 d!2198968)))

(assert (=> bs!1873581 (= lambda!417288 lambda!417279)))

(declare-fun bs!1873582 () Bool)

(assert (= bs!1873582 (and d!2199040 b!7042427)))

(assert (=> bs!1873582 (= lambda!417288 lambda!417185)))

(declare-fun bs!1873583 () Bool)

(assert (= bs!1873583 (and d!2199040 d!2198812)))

(assert (=> bs!1873583 (= lambda!417288 lambda!417249)))

(assert (=> d!2199040 (= (inv!86600 setElem!49387) (forall!16423 (exprs!6992 setElem!49387) lambda!417288))))

(declare-fun bs!1873584 () Bool)

(assert (= bs!1873584 d!2199040))

(declare-fun m!7755426 () Bool)

(assert (=> bs!1873584 m!7755426))

(assert (=> setNonEmpty!49387 d!2199040))

(declare-fun d!2199042 () Bool)

(declare-fun res!2875328 () Bool)

(declare-fun e!4233995 () Bool)

(assert (=> d!2199042 (=> res!2875328 e!4233995)))

(assert (=> d!2199042 (= res!2875328 (is-Nil!67892 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306))))))

(assert (=> d!2199042 (= (forall!16423 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306)) lambda!417185) e!4233995)))

(declare-fun b!7043039 () Bool)

(declare-fun e!4233996 () Bool)

(assert (=> b!7043039 (= e!4233995 e!4233996)))

(declare-fun res!2875329 () Bool)

(assert (=> b!7043039 (=> (not res!2875329) (not e!4233996))))

(declare-fun dynLambda!27475 (Int Regex!17496) Bool)

(assert (=> b!7043039 (= res!2875329 (dynLambda!27475 lambda!417185 (h!74340 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306)))))))

(declare-fun b!7043040 () Bool)

(assert (=> b!7043040 (= e!4233996 (forall!16423 (t!381787 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306))) lambda!417185))))

(assert (= (and d!2199042 (not res!2875328)) b!7043039))

(assert (= (and b!7043039 res!2875329) b!7043040))

(declare-fun b_lambda!267413 () Bool)

(assert (=> (not b_lambda!267413) (not b!7043039)))

(declare-fun m!7755428 () Bool)

(assert (=> b!7043039 m!7755428))

(declare-fun m!7755430 () Bool)

(assert (=> b!7043040 m!7755430))

(assert (=> d!2198780 d!2199042))

(assert (=> d!2198780 d!2198778))

(declare-fun d!2199044 () Bool)

(assert (=> d!2199044 (forall!16423 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306)) lambda!417185)))

(assert (=> d!2199044 true))

(declare-fun _$78!605 () Unit!161672)

(assert (=> d!2199044 (= (choose!53482 (exprs!6992 lt!2525426) (exprs!6992 ct2!306) lambda!417185) _$78!605)))

(declare-fun bs!1873585 () Bool)

(assert (= bs!1873585 d!2199044))

(assert (=> bs!1873585 m!7754442))

(assert (=> bs!1873585 m!7754442))

(assert (=> bs!1873585 m!7754700))

(assert (=> d!2198780 d!2199044))

(declare-fun d!2199046 () Bool)

(declare-fun res!2875330 () Bool)

(declare-fun e!4233997 () Bool)

(assert (=> d!2199046 (=> res!2875330 e!4233997)))

(assert (=> d!2199046 (= res!2875330 (is-Nil!67892 (exprs!6992 lt!2525426)))))

(assert (=> d!2199046 (= (forall!16423 (exprs!6992 lt!2525426) lambda!417185) e!4233997)))

(declare-fun b!7043041 () Bool)

(declare-fun e!4233998 () Bool)

(assert (=> b!7043041 (= e!4233997 e!4233998)))

(declare-fun res!2875331 () Bool)

(assert (=> b!7043041 (=> (not res!2875331) (not e!4233998))))

(assert (=> b!7043041 (= res!2875331 (dynLambda!27475 lambda!417185 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7043042 () Bool)

(assert (=> b!7043042 (= e!4233998 (forall!16423 (t!381787 (exprs!6992 lt!2525426)) lambda!417185))))

(assert (= (and d!2199046 (not res!2875330)) b!7043041))

(assert (= (and b!7043041 res!2875331) b!7043042))

(declare-fun b_lambda!267415 () Bool)

(assert (=> (not b_lambda!267415) (not b!7043041)))

(declare-fun m!7755432 () Bool)

(assert (=> b!7043041 m!7755432))

(declare-fun m!7755434 () Bool)

(assert (=> b!7043042 m!7755434))

(assert (=> d!2198780 d!2199046))

(declare-fun d!2199048 () Bool)

(declare-fun res!2875332 () Bool)

(declare-fun e!4233999 () Bool)

(assert (=> d!2199048 (=> res!2875332 e!4233999)))

(assert (=> d!2199048 (= res!2875332 (is-Nil!67892 (++!15567 lt!2525424 (exprs!6992 ct2!306))))))

(assert (=> d!2199048 (= (forall!16423 (++!15567 lt!2525424 (exprs!6992 ct2!306)) lambda!417185) e!4233999)))

(declare-fun b!7043043 () Bool)

(declare-fun e!4234000 () Bool)

(assert (=> b!7043043 (= e!4233999 e!4234000)))

(declare-fun res!2875333 () Bool)

(assert (=> b!7043043 (=> (not res!2875333) (not e!4234000))))

(assert (=> b!7043043 (= res!2875333 (dynLambda!27475 lambda!417185 (h!74340 (++!15567 lt!2525424 (exprs!6992 ct2!306)))))))

(declare-fun b!7043044 () Bool)

(assert (=> b!7043044 (= e!4234000 (forall!16423 (t!381787 (++!15567 lt!2525424 (exprs!6992 ct2!306))) lambda!417185))))

(assert (= (and d!2199048 (not res!2875332)) b!7043043))

(assert (= (and b!7043043 res!2875333) b!7043044))

(declare-fun b_lambda!267417 () Bool)

(assert (=> (not b_lambda!267417) (not b!7043043)))

(declare-fun m!7755436 () Bool)

(assert (=> b!7043043 m!7755436))

(declare-fun m!7755438 () Bool)

(assert (=> b!7043044 m!7755438))

(assert (=> d!2198794 d!2199048))

(assert (=> d!2198794 d!2198818))

(declare-fun d!2199050 () Bool)

(assert (=> d!2199050 (forall!16423 (++!15567 lt!2525424 (exprs!6992 ct2!306)) lambda!417185)))

(assert (=> d!2199050 true))

(declare-fun _$78!606 () Unit!161672)

(assert (=> d!2199050 (= (choose!53482 lt!2525424 (exprs!6992 ct2!306) lambda!417185) _$78!606)))

(declare-fun bs!1873586 () Bool)

(assert (= bs!1873586 d!2199050))

(assert (=> bs!1873586 m!7754516))

(assert (=> bs!1873586 m!7754516))

(assert (=> bs!1873586 m!7754744))

(assert (=> d!2198794 d!2199050))

(declare-fun d!2199052 () Bool)

(declare-fun res!2875334 () Bool)

(declare-fun e!4234001 () Bool)

(assert (=> d!2199052 (=> res!2875334 e!4234001)))

(assert (=> d!2199052 (= res!2875334 (is-Nil!67892 lt!2525424))))

(assert (=> d!2199052 (= (forall!16423 lt!2525424 lambda!417185) e!4234001)))

(declare-fun b!7043045 () Bool)

(declare-fun e!4234002 () Bool)

(assert (=> b!7043045 (= e!4234001 e!4234002)))

(declare-fun res!2875335 () Bool)

(assert (=> b!7043045 (=> (not res!2875335) (not e!4234002))))

(assert (=> b!7043045 (= res!2875335 (dynLambda!27475 lambda!417185 (h!74340 lt!2525424)))))

(declare-fun b!7043046 () Bool)

(assert (=> b!7043046 (= e!4234002 (forall!16423 (t!381787 lt!2525424) lambda!417185))))

(assert (= (and d!2199052 (not res!2875334)) b!7043045))

(assert (= (and b!7043045 res!2875335) b!7043046))

(declare-fun b_lambda!267419 () Bool)

(assert (=> (not b_lambda!267419) (not b!7043045)))

(declare-fun m!7755440 () Bool)

(assert (=> b!7043045 m!7755440))

(declare-fun m!7755442 () Bool)

(assert (=> b!7043046 m!7755442))

(assert (=> d!2198794 d!2199052))

(declare-fun b!7043047 () Bool)

(declare-fun e!4234004 () (Set Context!12984))

(declare-fun call!639746 () (Set Context!12984))

(assert (=> b!7043047 (= e!4234004 call!639746)))

(declare-fun b!7043048 () Bool)

(declare-fun e!4234005 () (Set Context!12984))

(assert (=> b!7043048 (= e!4234005 e!4234004)))

(declare-fun c!1311124 () Bool)

(assert (=> b!7043048 (= c!1311124 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525431))))))))

(declare-fun b!7043049 () Bool)

(assert (=> b!7043049 (= e!4234005 (set.union call!639746 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525431)))))) (h!74341 s!7408))))))

(declare-fun d!2199054 () Bool)

(declare-fun c!1311123 () Bool)

(declare-fun e!4234003 () Bool)

(assert (=> d!2199054 (= c!1311123 e!4234003)))

(declare-fun res!2875336 () Bool)

(assert (=> d!2199054 (=> (not res!2875336) (not e!4234003))))

(assert (=> d!2199054 (= res!2875336 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525431))))))))

(assert (=> d!2199054 (= (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525431))) (h!74341 s!7408)) e!4234005)))

(declare-fun bm!639741 () Bool)

(assert (=> bm!639741 (= call!639746 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525431))))) (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525431)))))) (h!74341 s!7408)))))

(declare-fun b!7043050 () Bool)

(assert (=> b!7043050 (= e!4234004 (as set.empty (Set Context!12984)))))

(declare-fun b!7043051 () Bool)

(assert (=> b!7043051 (= e!4234003 (nullable!7207 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525431)))))))))

(assert (= (and d!2199054 res!2875336) b!7043051))

(assert (= (and d!2199054 c!1311123) b!7043049))

(assert (= (and d!2199054 (not c!1311123)) b!7043048))

(assert (= (and b!7043048 c!1311124) b!7043047))

(assert (= (and b!7043048 (not c!1311124)) b!7043050))

(assert (= (or b!7043049 b!7043047) bm!639741))

(declare-fun m!7755444 () Bool)

(assert (=> b!7043049 m!7755444))

(declare-fun m!7755446 () Bool)

(assert (=> bm!639741 m!7755446))

(declare-fun m!7755448 () Bool)

(assert (=> b!7043051 m!7755448))

(assert (=> b!7042619 d!2199054))

(declare-fun d!2199056 () Bool)

(assert (=> d!2199056 (= (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))) (nullableFct!2747 (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))

(declare-fun bs!1873587 () Bool)

(assert (= bs!1873587 d!2199056))

(declare-fun m!7755450 () Bool)

(assert (=> bs!1873587 m!7755450))

(assert (=> b!7042678 d!2199056))

(declare-fun d!2199058 () Bool)

(declare-fun choose!53499 ((Set Context!12984) Int) (Set Context!12984))

(assert (=> d!2199058 (= (map!15806 lt!2525403 lambda!417250) (choose!53499 lt!2525403 lambda!417250))))

(declare-fun bs!1873588 () Bool)

(assert (= bs!1873588 d!2199058))

(declare-fun m!7755452 () Bool)

(assert (=> bs!1873588 m!7755452))

(assert (=> d!2198834 d!2199058))

(declare-fun bs!1873589 () Bool)

(declare-fun d!2199060 () Bool)

(assert (= bs!1873589 (and d!2199060 b!7042438)))

(declare-fun lambda!417289 () Int)

(assert (=> bs!1873589 (not (= lambda!417289 lambda!417183))))

(declare-fun bs!1873590 () Bool)

(assert (= bs!1873590 (and d!2199060 d!2199030)))

(assert (=> bs!1873590 (= lambda!417289 lambda!417287)))

(declare-fun bs!1873591 () Bool)

(assert (= bs!1873591 (and d!2199060 d!2198766)))

(assert (=> bs!1873591 (not (= lambda!417289 lambda!417236))))

(declare-fun bs!1873592 () Bool)

(assert (= bs!1873592 (and d!2199060 d!2199002)))

(assert (=> bs!1873592 (= lambda!417289 lambda!417285)))

(declare-fun bs!1873593 () Bool)

(assert (= bs!1873593 (and d!2199060 d!2198764)))

(assert (=> bs!1873593 (not (= lambda!417289 lambda!417233))))

(assert (=> d!2199060 (= (nullableZipper!2602 lt!2525413) (exists!3446 lt!2525413 lambda!417289))))

(declare-fun bs!1873594 () Bool)

(assert (= bs!1873594 d!2199060))

(declare-fun m!7755454 () Bool)

(assert (=> bs!1873594 m!7755454))

(assert (=> b!7042710 d!2199060))

(declare-fun d!2199062 () Bool)

(declare-fun c!1311125 () Bool)

(assert (=> d!2199062 (= c!1311125 (isEmpty!39622 (t!381788 s!7408)))))

(declare-fun e!4234006 () Bool)

(assert (=> d!2199062 (= (matchZipper!3036 (set.union lt!2525442 lt!2525440) (t!381788 s!7408)) e!4234006)))

(declare-fun b!7043052 () Bool)

(assert (=> b!7043052 (= e!4234006 (nullableZipper!2602 (set.union lt!2525442 lt!2525440)))))

(declare-fun b!7043053 () Bool)

(assert (=> b!7043053 (= e!4234006 (matchZipper!3036 (derivationStepZipper!2952 (set.union lt!2525442 lt!2525440) (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))))))

(assert (= (and d!2199062 c!1311125) b!7043052))

(assert (= (and d!2199062 (not c!1311125)) b!7043053))

(assert (=> d!2199062 m!7754662))

(declare-fun m!7755456 () Bool)

(assert (=> b!7043052 m!7755456))

(assert (=> b!7043053 m!7754666))

(assert (=> b!7043053 m!7754666))

(declare-fun m!7755458 () Bool)

(assert (=> b!7043053 m!7755458))

(assert (=> b!7043053 m!7754670))

(assert (=> b!7043053 m!7755458))

(assert (=> b!7043053 m!7754670))

(declare-fun m!7755460 () Bool)

(assert (=> b!7043053 m!7755460))

(assert (=> d!2198856 d!2199062))

(assert (=> d!2198856 d!2198850))

(declare-fun e!4234007 () Bool)

(declare-fun d!2199064 () Bool)

(assert (=> d!2199064 (= (matchZipper!3036 (set.union lt!2525442 lt!2525440) (t!381788 s!7408)) e!4234007)))

(declare-fun res!2875337 () Bool)

(assert (=> d!2199064 (=> res!2875337 e!4234007)))

(assert (=> d!2199064 (= res!2875337 (matchZipper!3036 lt!2525442 (t!381788 s!7408)))))

(assert (=> d!2199064 true))

(declare-fun _$48!2506 () Unit!161672)

(assert (=> d!2199064 (= (choose!53486 lt!2525442 lt!2525440 (t!381788 s!7408)) _$48!2506)))

(declare-fun b!7043054 () Bool)

(assert (=> b!7043054 (= e!4234007 (matchZipper!3036 lt!2525440 (t!381788 s!7408)))))

(assert (= (and d!2199064 (not res!2875337)) b!7043054))

(assert (=> d!2199064 m!7754922))

(assert (=> d!2199064 m!7754510))

(assert (=> b!7043054 m!7754450))

(assert (=> d!2198856 d!2199064))

(declare-fun d!2199066 () Bool)

(declare-fun lt!2525706 () Int)

(assert (=> d!2199066 (>= lt!2525706 0)))

(declare-fun e!4234010 () Int)

(assert (=> d!2199066 (= lt!2525706 e!4234010)))

(declare-fun c!1311128 () Bool)

(assert (=> d!2199066 (= c!1311128 (is-Nil!67893 lt!2525610))))

(assert (=> d!2199066 (= (size!41101 lt!2525610) lt!2525706)))

(declare-fun b!7043059 () Bool)

(assert (=> b!7043059 (= e!4234010 0)))

(declare-fun b!7043060 () Bool)

(assert (=> b!7043060 (= e!4234010 (+ 1 (size!41101 (t!381788 lt!2525610))))))

(assert (= (and d!2199066 c!1311128) b!7043059))

(assert (= (and d!2199066 (not c!1311128)) b!7043060))

(declare-fun m!7755462 () Bool)

(assert (=> b!7043060 m!7755462))

(assert (=> b!7042603 d!2199066))

(declare-fun d!2199068 () Bool)

(declare-fun lt!2525707 () Int)

(assert (=> d!2199068 (>= lt!2525707 0)))

(declare-fun e!4234011 () Int)

(assert (=> d!2199068 (= lt!2525707 e!4234011)))

(declare-fun c!1311129 () Bool)

(assert (=> d!2199068 (= c!1311129 (is-Nil!67893 (_1!37368 lt!2525435)))))

(assert (=> d!2199068 (= (size!41101 (_1!37368 lt!2525435)) lt!2525707)))

(declare-fun b!7043061 () Bool)

(assert (=> b!7043061 (= e!4234011 0)))

(declare-fun b!7043062 () Bool)

(assert (=> b!7043062 (= e!4234011 (+ 1 (size!41101 (t!381788 (_1!37368 lt!2525435)))))))

(assert (= (and d!2199068 c!1311129) b!7043061))

(assert (= (and d!2199068 (not c!1311129)) b!7043062))

(declare-fun m!7755464 () Bool)

(assert (=> b!7043062 m!7755464))

(assert (=> b!7042603 d!2199068))

(declare-fun d!2199070 () Bool)

(declare-fun lt!2525708 () Int)

(assert (=> d!2199070 (>= lt!2525708 0)))

(declare-fun e!4234012 () Int)

(assert (=> d!2199070 (= lt!2525708 e!4234012)))

(declare-fun c!1311130 () Bool)

(assert (=> d!2199070 (= c!1311130 (is-Nil!67893 (_2!37368 lt!2525435)))))

(assert (=> d!2199070 (= (size!41101 (_2!37368 lt!2525435)) lt!2525708)))

(declare-fun b!7043063 () Bool)

(assert (=> b!7043063 (= e!4234012 0)))

(declare-fun b!7043064 () Bool)

(assert (=> b!7043064 (= e!4234012 (+ 1 (size!41101 (t!381788 (_2!37368 lt!2525435)))))))

(assert (= (and d!2199070 c!1311130) b!7043063))

(assert (= (and d!2199070 (not c!1311130)) b!7043064))

(declare-fun m!7755466 () Bool)

(assert (=> b!7043064 m!7755466))

(assert (=> b!7042603 d!2199070))

(declare-fun d!2199072 () Bool)

(assert (=> d!2199072 true))

(declare-fun setRes!49393 () Bool)

(assert (=> d!2199072 setRes!49393))

(declare-fun condSetEmpty!49393 () Bool)

(declare-fun res!2875340 () (Set Context!12984))

(assert (=> d!2199072 (= condSetEmpty!49393 (= res!2875340 (as set.empty (Set Context!12984))))))

(assert (=> d!2199072 (= (choose!53485 lt!2525401 lambda!417186) res!2875340)))

(declare-fun setIsEmpty!49393 () Bool)

(assert (=> setIsEmpty!49393 setRes!49393))

(declare-fun setElem!49393 () Context!12984)

(declare-fun tp!1937615 () Bool)

(declare-fun e!4234015 () Bool)

(declare-fun setNonEmpty!49393 () Bool)

(assert (=> setNonEmpty!49393 (= setRes!49393 (and tp!1937615 (inv!86600 setElem!49393) e!4234015))))

(declare-fun setRest!49393 () (Set Context!12984))

(assert (=> setNonEmpty!49393 (= res!2875340 (set.union (set.insert setElem!49393 (as set.empty (Set Context!12984))) setRest!49393))))

(declare-fun b!7043067 () Bool)

(declare-fun tp!1937614 () Bool)

(assert (=> b!7043067 (= e!4234015 tp!1937614)))

(assert (= (and d!2199072 condSetEmpty!49393) setIsEmpty!49393))

(assert (= (and d!2199072 (not condSetEmpty!49393)) setNonEmpty!49393))

(assert (= setNonEmpty!49393 b!7043067))

(declare-fun m!7755468 () Bool)

(assert (=> setNonEmpty!49393 m!7755468))

(assert (=> d!2198790 d!2199072))

(declare-fun bs!1873595 () Bool)

(declare-fun d!2199074 () Bool)

(assert (= bs!1873595 (and d!2199074 b!7042438)))

(declare-fun lambda!417290 () Int)

(assert (=> bs!1873595 (not (= lambda!417290 lambda!417183))))

(declare-fun bs!1873596 () Bool)

(assert (= bs!1873596 (and d!2199074 d!2199030)))

(assert (=> bs!1873596 (= lambda!417290 lambda!417287)))

(declare-fun bs!1873597 () Bool)

(assert (= bs!1873597 (and d!2199074 d!2198766)))

(assert (=> bs!1873597 (not (= lambda!417290 lambda!417236))))

(declare-fun bs!1873598 () Bool)

(assert (= bs!1873598 (and d!2199074 d!2199002)))

(assert (=> bs!1873598 (= lambda!417290 lambda!417285)))

(declare-fun bs!1873599 () Bool)

(assert (= bs!1873599 (and d!2199074 d!2198764)))

(assert (=> bs!1873599 (not (= lambda!417290 lambda!417233))))

(declare-fun bs!1873600 () Bool)

(assert (= bs!1873600 (and d!2199074 d!2199060)))

(assert (=> bs!1873600 (= lambda!417290 lambda!417289)))

(assert (=> d!2199074 (= (nullableZipper!2602 lt!2525414) (exists!3446 lt!2525414 lambda!417290))))

(declare-fun bs!1873601 () Bool)

(assert (= bs!1873601 d!2199074))

(declare-fun m!7755470 () Bool)

(assert (=> bs!1873601 m!7755470))

(assert (=> b!7042661 d!2199074))

(declare-fun d!2199076 () Bool)

(assert (=> d!2199076 (= (isEmpty!39622 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (is-Nil!67893 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))))

(assert (=> d!2198822 d!2199076))

(declare-fun b!7043068 () Bool)

(declare-fun e!4234017 () (Set Context!12984))

(declare-fun call!639747 () (Set Context!12984))

(assert (=> b!7043068 (= e!4234017 call!639747)))

(declare-fun b!7043069 () Bool)

(declare-fun e!4234018 () (Set Context!12984))

(assert (=> b!7043069 (= e!4234018 e!4234017)))

(declare-fun c!1311132 () Bool)

(assert (=> b!7043069 (= c!1311132 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525426))))))))

(declare-fun b!7043070 () Bool)

(assert (=> b!7043070 (= e!4234018 (set.union call!639747 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525426)))))) (h!74341 s!7408))))))

(declare-fun d!2199078 () Bool)

(declare-fun c!1311131 () Bool)

(declare-fun e!4234016 () Bool)

(assert (=> d!2199078 (= c!1311131 e!4234016)))

(declare-fun res!2875341 () Bool)

(assert (=> d!2199078 (=> (not res!2875341) (not e!4234016))))

(assert (=> d!2199078 (= res!2875341 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525426))))))))

(assert (=> d!2199078 (= (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525426))) (h!74341 s!7408)) e!4234018)))

(declare-fun bm!639742 () Bool)

(assert (=> bm!639742 (= call!639747 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525426))))) (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525426)))))) (h!74341 s!7408)))))

(declare-fun b!7043071 () Bool)

(assert (=> b!7043071 (= e!4234017 (as set.empty (Set Context!12984)))))

(declare-fun b!7043072 () Bool)

(assert (=> b!7043072 (= e!4234016 (nullable!7207 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525426)))))))))

(assert (= (and d!2199078 res!2875341) b!7043072))

(assert (= (and d!2199078 c!1311131) b!7043070))

(assert (= (and d!2199078 (not c!1311131)) b!7043069))

(assert (= (and b!7043069 c!1311132) b!7043068))

(assert (= (and b!7043069 (not c!1311132)) b!7043071))

(assert (= (or b!7043070 b!7043068) bm!639742))

(declare-fun m!7755472 () Bool)

(assert (=> b!7043070 m!7755472))

(declare-fun m!7755474 () Bool)

(assert (=> bm!639742 m!7755474))

(declare-fun m!7755476 () Bool)

(assert (=> b!7043072 m!7755476))

(assert (=> b!7042607 d!2199078))

(declare-fun d!2199080 () Bool)

(declare-fun lt!2525711 () Int)

(assert (=> d!2199080 (>= lt!2525711 0)))

(declare-fun e!4234021 () Int)

(assert (=> d!2199080 (= lt!2525711 e!4234021)))

(declare-fun c!1311135 () Bool)

(assert (=> d!2199080 (= c!1311135 (is-Nil!67892 lt!2525598))))

(assert (=> d!2199080 (= (size!41100 lt!2525598) lt!2525711)))

(declare-fun b!7043077 () Bool)

(assert (=> b!7043077 (= e!4234021 0)))

(declare-fun b!7043078 () Bool)

(assert (=> b!7043078 (= e!4234021 (+ 1 (size!41100 (t!381787 lt!2525598))))))

(assert (= (and d!2199080 c!1311135) b!7043077))

(assert (= (and d!2199080 (not c!1311135)) b!7043078))

(declare-fun m!7755478 () Bool)

(assert (=> b!7043078 m!7755478))

(assert (=> b!7042570 d!2199080))

(declare-fun d!2199082 () Bool)

(declare-fun lt!2525712 () Int)

(assert (=> d!2199082 (>= lt!2525712 0)))

(declare-fun e!4234022 () Int)

(assert (=> d!2199082 (= lt!2525712 e!4234022)))

(declare-fun c!1311136 () Bool)

(assert (=> d!2199082 (= c!1311136 (is-Nil!67892 (exprs!6992 lt!2525426)))))

(assert (=> d!2199082 (= (size!41100 (exprs!6992 lt!2525426)) lt!2525712)))

(declare-fun b!7043079 () Bool)

(assert (=> b!7043079 (= e!4234022 0)))

(declare-fun b!7043080 () Bool)

(assert (=> b!7043080 (= e!4234022 (+ 1 (size!41100 (t!381787 (exprs!6992 lt!2525426)))))))

(assert (= (and d!2199082 c!1311136) b!7043079))

(assert (= (and d!2199082 (not c!1311136)) b!7043080))

(declare-fun m!7755480 () Bool)

(assert (=> b!7043080 m!7755480))

(assert (=> b!7042570 d!2199082))

(declare-fun d!2199084 () Bool)

(declare-fun lt!2525713 () Int)

(assert (=> d!2199084 (>= lt!2525713 0)))

(declare-fun e!4234023 () Int)

(assert (=> d!2199084 (= lt!2525713 e!4234023)))

(declare-fun c!1311137 () Bool)

(assert (=> d!2199084 (= c!1311137 (is-Nil!67892 (exprs!6992 ct2!306)))))

(assert (=> d!2199084 (= (size!41100 (exprs!6992 ct2!306)) lt!2525713)))

(declare-fun b!7043081 () Bool)

(assert (=> b!7043081 (= e!4234023 0)))

(declare-fun b!7043082 () Bool)

(assert (=> b!7043082 (= e!4234023 (+ 1 (size!41100 (t!381787 (exprs!6992 ct2!306)))))))

(assert (= (and d!2199084 c!1311137) b!7043081))

(assert (= (and d!2199084 (not c!1311137)) b!7043082))

(declare-fun m!7755482 () Bool)

(assert (=> b!7043082 m!7755482))

(assert (=> b!7042570 d!2199084))

(declare-fun bs!1873602 () Bool)

(declare-fun d!2199086 () Bool)

(assert (= bs!1873602 (and d!2199086 b!7042438)))

(declare-fun lambda!417291 () Int)

(assert (=> bs!1873602 (not (= lambda!417291 lambda!417183))))

(declare-fun bs!1873603 () Bool)

(assert (= bs!1873603 (and d!2199086 d!2199030)))

(assert (=> bs!1873603 (not (= lambda!417291 lambda!417287))))

(declare-fun bs!1873604 () Bool)

(assert (= bs!1873604 (and d!2199086 d!2198766)))

(assert (=> bs!1873604 (= (= lambda!417233 lambda!417183) (= lambda!417291 lambda!417236))))

(declare-fun bs!1873605 () Bool)

(assert (= bs!1873605 (and d!2199086 d!2199002)))

(assert (=> bs!1873605 (not (= lambda!417291 lambda!417285))))

(declare-fun bs!1873606 () Bool)

(assert (= bs!1873606 (and d!2199086 d!2198764)))

(assert (=> bs!1873606 (not (= lambda!417291 lambda!417233))))

(declare-fun bs!1873607 () Bool)

(assert (= bs!1873607 (and d!2199086 d!2199060)))

(assert (=> bs!1873607 (not (= lambda!417291 lambda!417289))))

(declare-fun bs!1873608 () Bool)

(assert (= bs!1873608 (and d!2199086 d!2199074)))

(assert (=> bs!1873608 (not (= lambda!417291 lambda!417290))))

(assert (=> d!2199086 true))

(assert (=> d!2199086 (< (dynLambda!27467 order!28221 lambda!417233) (dynLambda!27467 order!28221 lambda!417291))))

(assert (=> d!2199086 (= (exists!3444 lt!2525417 lambda!417233) (not (forall!16422 lt!2525417 lambda!417291)))))

(declare-fun bs!1873609 () Bool)

(assert (= bs!1873609 d!2199086))

(declare-fun m!7755484 () Bool)

(assert (=> bs!1873609 m!7755484))

(assert (=> d!2198764 d!2199086))

(declare-fun bs!1873610 () Bool)

(declare-fun d!2199088 () Bool)

(assert (= bs!1873610 (and d!2199088 b!7042438)))

(declare-fun lambda!417294 () Int)

(assert (=> bs!1873610 (= lambda!417294 lambda!417183)))

(declare-fun bs!1873611 () Bool)

(assert (= bs!1873611 (and d!2199088 d!2199086)))

(assert (=> bs!1873611 (not (= lambda!417294 lambda!417291))))

(declare-fun bs!1873612 () Bool)

(assert (= bs!1873612 (and d!2199088 d!2199030)))

(assert (=> bs!1873612 (not (= lambda!417294 lambda!417287))))

(declare-fun bs!1873613 () Bool)

(assert (= bs!1873613 (and d!2199088 d!2198766)))

(assert (=> bs!1873613 (not (= lambda!417294 lambda!417236))))

(declare-fun bs!1873614 () Bool)

(assert (= bs!1873614 (and d!2199088 d!2199002)))

(assert (=> bs!1873614 (not (= lambda!417294 lambda!417285))))

(declare-fun bs!1873615 () Bool)

(assert (= bs!1873615 (and d!2199088 d!2198764)))

(assert (=> bs!1873615 (= lambda!417294 lambda!417233)))

(declare-fun bs!1873616 () Bool)

(assert (= bs!1873616 (and d!2199088 d!2199060)))

(assert (=> bs!1873616 (not (= lambda!417294 lambda!417289))))

(declare-fun bs!1873617 () Bool)

(assert (= bs!1873617 (and d!2199088 d!2199074)))

(assert (=> bs!1873617 (not (= lambda!417294 lambda!417290))))

(assert (=> d!2199088 true))

(assert (=> d!2199088 (exists!3444 lt!2525417 lambda!417294)))

(assert (=> d!2199088 true))

(declare-fun _$60!1141 () Unit!161672)

(assert (=> d!2199088 (= (choose!53480 lt!2525417 s!7408) _$60!1141)))

(declare-fun bs!1873618 () Bool)

(assert (= bs!1873618 d!2199088))

(declare-fun m!7755486 () Bool)

(assert (=> bs!1873618 m!7755486))

(assert (=> d!2198764 d!2199088))

(declare-fun d!2199090 () Bool)

(declare-fun c!1311140 () Bool)

(assert (=> d!2199090 (= c!1311140 (isEmpty!39622 s!7408))))

(declare-fun e!4234024 () Bool)

(assert (=> d!2199090 (= (matchZipper!3036 (content!13591 lt!2525417) s!7408) e!4234024)))

(declare-fun b!7043083 () Bool)

(assert (=> b!7043083 (= e!4234024 (nullableZipper!2602 (content!13591 lt!2525417)))))

(declare-fun b!7043084 () Bool)

(assert (=> b!7043084 (= e!4234024 (matchZipper!3036 (derivationStepZipper!2952 (content!13591 lt!2525417) (head!14293 s!7408)) (tail!13610 s!7408)))))

(assert (= (and d!2199090 c!1311140) b!7043083))

(assert (= (and d!2199090 (not c!1311140)) b!7043084))

(assert (=> d!2199090 m!7754644))

(assert (=> b!7043083 m!7754630))

(declare-fun m!7755488 () Bool)

(assert (=> b!7043083 m!7755488))

(assert (=> b!7043084 m!7754648))

(assert (=> b!7043084 m!7754630))

(assert (=> b!7043084 m!7754648))

(declare-fun m!7755490 () Bool)

(assert (=> b!7043084 m!7755490))

(assert (=> b!7043084 m!7754652))

(assert (=> b!7043084 m!7755490))

(assert (=> b!7043084 m!7754652))

(declare-fun m!7755492 () Bool)

(assert (=> b!7043084 m!7755492))

(assert (=> d!2198764 d!2199090))

(declare-fun d!2199092 () Bool)

(declare-fun c!1311143 () Bool)

(assert (=> d!2199092 (= c!1311143 (is-Nil!67894 lt!2525417))))

(declare-fun e!4234027 () (Set Context!12984))

(assert (=> d!2199092 (= (content!13591 lt!2525417) e!4234027)))

(declare-fun b!7043089 () Bool)

(assert (=> b!7043089 (= e!4234027 (as set.empty (Set Context!12984)))))

(declare-fun b!7043090 () Bool)

(assert (=> b!7043090 (= e!4234027 (set.union (set.insert (h!74342 lt!2525417) (as set.empty (Set Context!12984))) (content!13591 (t!381789 lt!2525417))))))

(assert (= (and d!2199092 c!1311143) b!7043089))

(assert (= (and d!2199092 (not c!1311143)) b!7043090))

(declare-fun m!7755494 () Bool)

(assert (=> b!7043090 m!7755494))

(declare-fun m!7755496 () Bool)

(assert (=> b!7043090 m!7755496))

(assert (=> d!2198764 d!2199092))

(declare-fun d!2199094 () Bool)

(declare-fun c!1311144 () Bool)

(assert (=> d!2199094 (= c!1311144 (isEmpty!39622 (tail!13610 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))))))

(declare-fun e!4234028 () Bool)

(assert (=> d!2199094 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525407 (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (tail!13610 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) e!4234028)))

(declare-fun b!7043091 () Bool)

(assert (=> b!7043091 (= e!4234028 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525407 (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))))))

(declare-fun b!7043092 () Bool)

(assert (=> b!7043092 (= e!4234028 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525407 (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (head!14293 (tail!13610 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))) (tail!13610 (tail!13610 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))))))

(assert (= (and d!2199094 c!1311144) b!7043091))

(assert (= (and d!2199094 (not c!1311144)) b!7043092))

(assert (=> d!2199094 m!7754814))

(declare-fun m!7755498 () Bool)

(assert (=> d!2199094 m!7755498))

(assert (=> b!7043091 m!7754812))

(declare-fun m!7755500 () Bool)

(assert (=> b!7043091 m!7755500))

(assert (=> b!7043092 m!7754814))

(declare-fun m!7755502 () Bool)

(assert (=> b!7043092 m!7755502))

(assert (=> b!7043092 m!7754812))

(assert (=> b!7043092 m!7755502))

(declare-fun m!7755504 () Bool)

(assert (=> b!7043092 m!7755504))

(assert (=> b!7043092 m!7754814))

(declare-fun m!7755506 () Bool)

(assert (=> b!7043092 m!7755506))

(assert (=> b!7043092 m!7755504))

(assert (=> b!7043092 m!7755506))

(declare-fun m!7755508 () Bool)

(assert (=> b!7043092 m!7755508))

(assert (=> b!7042660 d!2199094))

(declare-fun bs!1873619 () Bool)

(declare-fun d!2199096 () Bool)

(assert (= bs!1873619 (and d!2199096 b!7042428)))

(declare-fun lambda!417295 () Int)

(assert (=> bs!1873619 (= (= (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (h!74341 s!7408)) (= lambda!417295 lambda!417186))))

(declare-fun bs!1873620 () Bool)

(assert (= bs!1873620 (and d!2199096 d!2198992)))

(assert (=> bs!1873620 (= (= (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (head!14293 (_1!37368 lt!2525435))) (= lambda!417295 lambda!417282))))

(declare-fun bs!1873621 () Bool)

(assert (= bs!1873621 (and d!2199096 d!2198984)))

(assert (=> bs!1873621 (= (= (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (head!14293 (t!381788 s!7408))) (= lambda!417295 lambda!417281))))

(declare-fun bs!1873622 () Bool)

(assert (= bs!1873622 (and d!2199096 d!2199028)))

(assert (=> bs!1873622 (= (= (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (head!14293 (t!381788 s!7408))) (= lambda!417295 lambda!417286))))

(declare-fun bs!1873623 () Bool)

(assert (= bs!1873623 (and d!2199096 d!2198788)))

(assert (=> bs!1873623 (= (= (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (h!74341 s!7408)) (= lambda!417295 lambda!417239))))

(declare-fun bs!1873624 () Bool)

(assert (= bs!1873624 (and d!2199096 d!2198802)))

(assert (=> bs!1873624 (= (= (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (h!74341 s!7408)) (= lambda!417295 lambda!417240))))

(assert (=> d!2199096 true))

(assert (=> d!2199096 (= (derivationStepZipper!2952 lt!2525407 (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (flatMap!2443 lt!2525407 lambda!417295))))

(declare-fun bs!1873625 () Bool)

(assert (= bs!1873625 d!2199096))

(declare-fun m!7755510 () Bool)

(assert (=> bs!1873625 m!7755510))

(assert (=> b!7042660 d!2199096))

(declare-fun d!2199098 () Bool)

(assert (=> d!2199098 (= (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (h!74341 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))))

(assert (=> b!7042660 d!2199098))

(declare-fun d!2199100 () Bool)

(assert (=> d!2199100 (= (tail!13610 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))) (t!381788 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435))))))

(assert (=> b!7042660 d!2199100))

(assert (=> b!7042714 d!2198774))

(declare-fun d!2199102 () Bool)

(declare-fun c!1311147 () Bool)

(assert (=> d!2199102 (= c!1311147 (is-Nil!67892 lt!2525598))))

(declare-fun e!4234031 () (Set Regex!17496))

(assert (=> d!2199102 (= (content!13592 lt!2525598) e!4234031)))

(declare-fun b!7043097 () Bool)

(assert (=> b!7043097 (= e!4234031 (as set.empty (Set Regex!17496)))))

(declare-fun b!7043098 () Bool)

(assert (=> b!7043098 (= e!4234031 (set.union (set.insert (h!74340 lt!2525598) (as set.empty (Set Regex!17496))) (content!13592 (t!381787 lt!2525598))))))

(assert (= (and d!2199102 c!1311147) b!7043097))

(assert (= (and d!2199102 (not c!1311147)) b!7043098))

(declare-fun m!7755512 () Bool)

(assert (=> b!7043098 m!7755512))

(declare-fun m!7755514 () Bool)

(assert (=> b!7043098 m!7755514))

(assert (=> d!2198778 d!2199102))

(declare-fun d!2199104 () Bool)

(declare-fun c!1311148 () Bool)

(assert (=> d!2199104 (= c!1311148 (is-Nil!67892 (exprs!6992 lt!2525426)))))

(declare-fun e!4234032 () (Set Regex!17496))

(assert (=> d!2199104 (= (content!13592 (exprs!6992 lt!2525426)) e!4234032)))

(declare-fun b!7043099 () Bool)

(assert (=> b!7043099 (= e!4234032 (as set.empty (Set Regex!17496)))))

(declare-fun b!7043100 () Bool)

(assert (=> b!7043100 (= e!4234032 (set.union (set.insert (h!74340 (exprs!6992 lt!2525426)) (as set.empty (Set Regex!17496))) (content!13592 (t!381787 (exprs!6992 lt!2525426)))))))

(assert (= (and d!2199104 c!1311148) b!7043099))

(assert (= (and d!2199104 (not c!1311148)) b!7043100))

(declare-fun m!7755516 () Bool)

(assert (=> b!7043100 m!7755516))

(declare-fun m!7755518 () Bool)

(assert (=> b!7043100 m!7755518))

(assert (=> d!2198778 d!2199104))

(declare-fun d!2199106 () Bool)

(declare-fun c!1311149 () Bool)

(assert (=> d!2199106 (= c!1311149 (is-Nil!67892 (exprs!6992 ct2!306)))))

(declare-fun e!4234033 () (Set Regex!17496))

(assert (=> d!2199106 (= (content!13592 (exprs!6992 ct2!306)) e!4234033)))

(declare-fun b!7043101 () Bool)

(assert (=> b!7043101 (= e!4234033 (as set.empty (Set Regex!17496)))))

(declare-fun b!7043102 () Bool)

(assert (=> b!7043102 (= e!4234033 (set.union (set.insert (h!74340 (exprs!6992 ct2!306)) (as set.empty (Set Regex!17496))) (content!13592 (t!381787 (exprs!6992 ct2!306)))))))

(assert (= (and d!2199106 c!1311149) b!7043101))

(assert (= (and d!2199106 (not c!1311149)) b!7043102))

(declare-fun m!7755520 () Bool)

(assert (=> b!7043102 m!7755520))

(declare-fun m!7755522 () Bool)

(assert (=> b!7043102 m!7755522))

(assert (=> d!2198778 d!2199106))

(declare-fun b!7043117 () Bool)

(declare-fun e!4234051 () Bool)

(declare-fun e!4234047 () Bool)

(assert (=> b!7043117 (= e!4234051 e!4234047)))

(declare-fun c!1311152 () Bool)

(assert (=> b!7043117 (= c!1311152 (is-Union!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun b!7043118 () Bool)

(declare-fun e!4234048 () Bool)

(declare-fun call!639752 () Bool)

(assert (=> b!7043118 (= e!4234048 call!639752)))

(declare-fun b!7043119 () Bool)

(declare-fun e!4234050 () Bool)

(declare-fun e!4234046 () Bool)

(assert (=> b!7043119 (= e!4234050 e!4234046)))

(declare-fun res!2875355 () Bool)

(assert (=> b!7043119 (=> (not res!2875355) (not e!4234046))))

(assert (=> b!7043119 (= res!2875355 (and (not (is-EmptyLang!17496 (h!74340 (exprs!6992 lt!2525426)))) (not (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525426))))))))

(declare-fun b!7043120 () Bool)

(assert (=> b!7043120 (= e!4234047 e!4234048)))

(declare-fun res!2875354 () Bool)

(declare-fun call!639753 () Bool)

(assert (=> b!7043120 (= res!2875354 call!639753)))

(assert (=> b!7043120 (=> (not res!2875354) (not e!4234048))))

(declare-fun b!7043121 () Bool)

(assert (=> b!7043121 (= e!4234046 e!4234051)))

(declare-fun res!2875352 () Bool)

(assert (=> b!7043121 (=> res!2875352 e!4234051)))

(assert (=> b!7043121 (= res!2875352 (is-Star!17496 (h!74340 (exprs!6992 lt!2525426))))))

(declare-fun bm!639747 () Bool)

(assert (=> bm!639747 (= call!639753 (nullable!7207 (ite c!1311152 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(declare-fun b!7043122 () Bool)

(declare-fun e!4234049 () Bool)

(assert (=> b!7043122 (= e!4234049 call!639753)))

(declare-fun d!2199108 () Bool)

(declare-fun res!2875353 () Bool)

(assert (=> d!2199108 (=> res!2875353 e!4234050)))

(assert (=> d!2199108 (= res!2875353 (is-EmptyExpr!17496 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> d!2199108 (= (nullableFct!2747 (h!74340 (exprs!6992 lt!2525426))) e!4234050)))

(declare-fun b!7043123 () Bool)

(assert (=> b!7043123 (= e!4234047 e!4234049)))

(declare-fun res!2875356 () Bool)

(assert (=> b!7043123 (= res!2875356 call!639752)))

(assert (=> b!7043123 (=> res!2875356 e!4234049)))

(declare-fun bm!639748 () Bool)

(assert (=> bm!639748 (= call!639752 (nullable!7207 (ite c!1311152 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(assert (= (and d!2199108 (not res!2875353)) b!7043119))

(assert (= (and b!7043119 res!2875355) b!7043121))

(assert (= (and b!7043121 (not res!2875352)) b!7043117))

(assert (= (and b!7043117 c!1311152) b!7043123))

(assert (= (and b!7043117 (not c!1311152)) b!7043120))

(assert (= (and b!7043123 (not res!2875356)) b!7043122))

(assert (= (and b!7043120 res!2875354) b!7043118))

(assert (= (or b!7043122 b!7043120) bm!639747))

(assert (= (or b!7043123 b!7043118) bm!639748))

(declare-fun m!7755524 () Bool)

(assert (=> bm!639747 m!7755524))

(declare-fun m!7755526 () Bool)

(assert (=> bm!639748 m!7755526))

(assert (=> d!2198830 d!2199108))

(declare-fun b!7043124 () Bool)

(declare-fun e!4234056 () (Set Context!12984))

(declare-fun call!639758 () (Set Context!12984))

(declare-fun call!639754 () (Set Context!12984))

(assert (=> b!7043124 (= e!4234056 (set.union call!639758 call!639754))))

(declare-fun d!2199110 () Bool)

(declare-fun c!1311157 () Bool)

(assert (=> d!2199110 (= c!1311157 (and (is-ElementMatch!17496 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (= (c!1310942 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (h!74341 s!7408))))))

(declare-fun e!4234055 () (Set Context!12984))

(assert (=> d!2199110 (= (derivationStepZipperDown!2160 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))) (ite (or c!1311003 c!1311004) lt!2525427 (Context!12985 call!639685)) (h!74341 s!7408)) e!4234055)))

(declare-fun bm!639749 () Bool)

(declare-fun call!639755 () (Set Context!12984))

(assert (=> bm!639749 (= call!639754 call!639755)))

(declare-fun bm!639750 () Bool)

(declare-fun c!1311156 () Bool)

(declare-fun c!1311154 () Bool)

(declare-fun c!1311155 () Bool)

(declare-fun call!639757 () List!68016)

(assert (=> bm!639750 (= call!639755 (derivationStepZipperDown!2160 (ite c!1311154 (regOne!35505 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (ite c!1311155 (regTwo!35504 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (ite c!1311156 (regOne!35504 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (reg!17825 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))))) (ite (or c!1311154 c!1311155) (ite (or c!1311003 c!1311004) lt!2525427 (Context!12985 call!639685)) (Context!12985 call!639757)) (h!74341 s!7408)))))

(declare-fun b!7043125 () Bool)

(assert (=> b!7043125 (= e!4234055 (set.insert (ite (or c!1311003 c!1311004) lt!2525427 (Context!12985 call!639685)) (as set.empty (Set Context!12984))))))

(declare-fun b!7043126 () Bool)

(declare-fun e!4234054 () (Set Context!12984))

(assert (=> b!7043126 (= e!4234055 e!4234054)))

(assert (=> b!7043126 (= c!1311154 (is-Union!17496 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(declare-fun b!7043127 () Bool)

(declare-fun e!4234052 () (Set Context!12984))

(declare-fun call!639756 () (Set Context!12984))

(assert (=> b!7043127 (= e!4234052 call!639756)))

(declare-fun b!7043128 () Bool)

(declare-fun e!4234053 () (Set Context!12984))

(assert (=> b!7043128 (= e!4234053 call!639756)))

(declare-fun b!7043129 () Bool)

(declare-fun e!4234057 () Bool)

(assert (=> b!7043129 (= c!1311155 e!4234057)))

(declare-fun res!2875357 () Bool)

(assert (=> b!7043129 (=> (not res!2875357) (not e!4234057))))

(assert (=> b!7043129 (= res!2875357 (is-Concat!26341 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(assert (=> b!7043129 (= e!4234054 e!4234056)))

(declare-fun b!7043130 () Bool)

(assert (=> b!7043130 (= e!4234052 (as set.empty (Set Context!12984)))))

(declare-fun call!639759 () List!68016)

(declare-fun bm!639751 () Bool)

(assert (=> bm!639751 (= call!639758 (derivationStepZipperDown!2160 (ite c!1311154 (regTwo!35505 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (regOne!35504 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))) (ite c!1311154 (ite (or c!1311003 c!1311004) lt!2525427 (Context!12985 call!639685)) (Context!12985 call!639759)) (h!74341 s!7408)))))

(declare-fun b!7043131 () Bool)

(declare-fun c!1311153 () Bool)

(assert (=> b!7043131 (= c!1311153 (is-Star!17496 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(assert (=> b!7043131 (= e!4234053 e!4234052)))

(declare-fun b!7043132 () Bool)

(assert (=> b!7043132 (= e!4234056 e!4234053)))

(assert (=> b!7043132 (= c!1311156 (is-Concat!26341 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(declare-fun b!7043133 () Bool)

(assert (=> b!7043133 (= e!4234054 (set.union call!639755 call!639758))))

(declare-fun bm!639752 () Bool)

(assert (=> bm!639752 (= call!639757 call!639759)))

(declare-fun bm!639753 () Bool)

(assert (=> bm!639753 (= call!639756 call!639754)))

(declare-fun b!7043134 () Bool)

(assert (=> b!7043134 (= e!4234057 (nullable!7207 (regOne!35504 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))))))

(declare-fun bm!639754 () Bool)

(assert (=> bm!639754 (= call!639759 ($colon$colon!2595 (exprs!6992 (ite (or c!1311003 c!1311004) lt!2525427 (Context!12985 call!639685))) (ite (or c!1311155 c!1311156) (regTwo!35504 (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (ite c!1311003 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311004 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1311005 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))))))

(assert (= (and d!2199110 c!1311157) b!7043125))

(assert (= (and d!2199110 (not c!1311157)) b!7043126))

(assert (= (and b!7043126 c!1311154) b!7043133))

(assert (= (and b!7043126 (not c!1311154)) b!7043129))

(assert (= (and b!7043129 res!2875357) b!7043134))

(assert (= (and b!7043129 c!1311155) b!7043124))

(assert (= (and b!7043129 (not c!1311155)) b!7043132))

(assert (= (and b!7043132 c!1311156) b!7043128))

(assert (= (and b!7043132 (not c!1311156)) b!7043131))

(assert (= (and b!7043131 c!1311153) b!7043127))

(assert (= (and b!7043131 (not c!1311153)) b!7043130))

(assert (= (or b!7043128 b!7043127) bm!639752))

(assert (= (or b!7043128 b!7043127) bm!639753))

(assert (= (or b!7043124 bm!639753) bm!639749))

(assert (= (or b!7043124 bm!639752) bm!639754))

(assert (= (or b!7043133 bm!639749) bm!639750))

(assert (= (or b!7043133 b!7043124) bm!639751))

(declare-fun m!7755528 () Bool)

(assert (=> b!7043125 m!7755528))

(declare-fun m!7755530 () Bool)

(assert (=> bm!639754 m!7755530))

(declare-fun m!7755532 () Bool)

(assert (=> b!7043134 m!7755532))

(declare-fun m!7755534 () Bool)

(assert (=> bm!639750 m!7755534))

(declare-fun m!7755536 () Bool)

(assert (=> bm!639751 m!7755536))

(assert (=> bm!639678 d!2199110))

(declare-fun d!2199112 () Bool)

(declare-fun c!1311158 () Bool)

(assert (=> d!2199112 (= c!1311158 (isEmpty!39622 (t!381788 s!7408)))))

(declare-fun e!4234058 () Bool)

(assert (=> d!2199112 (= (matchZipper!3036 lt!2525437 (t!381788 s!7408)) e!4234058)))

(declare-fun b!7043135 () Bool)

(assert (=> b!7043135 (= e!4234058 (nullableZipper!2602 lt!2525437))))

(declare-fun b!7043136 () Bool)

(assert (=> b!7043136 (= e!4234058 (matchZipper!3036 (derivationStepZipper!2952 lt!2525437 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))))))

(assert (= (and d!2199112 c!1311158) b!7043135))

(assert (= (and d!2199112 (not c!1311158)) b!7043136))

(assert (=> d!2199112 m!7754662))

(assert (=> b!7043135 m!7754830))

(assert (=> b!7043136 m!7754666))

(assert (=> b!7043136 m!7754666))

(declare-fun m!7755538 () Bool)

(assert (=> b!7043136 m!7755538))

(assert (=> b!7043136 m!7754670))

(assert (=> b!7043136 m!7755538))

(assert (=> b!7043136 m!7754670))

(declare-fun m!7755540 () Bool)

(assert (=> b!7043136 m!7755540))

(assert (=> b!7042698 d!2199112))

(declare-fun d!2199114 () Bool)

(declare-fun res!2875362 () Bool)

(declare-fun e!4234063 () Bool)

(assert (=> d!2199114 (=> res!2875362 e!4234063)))

(assert (=> d!2199114 (= res!2875362 (is-Nil!67894 lt!2525595))))

(assert (=> d!2199114 (= (noDuplicate!2648 lt!2525595) e!4234063)))

(declare-fun b!7043141 () Bool)

(declare-fun e!4234064 () Bool)

(assert (=> b!7043141 (= e!4234063 e!4234064)))

(declare-fun res!2875363 () Bool)

(assert (=> b!7043141 (=> (not res!2875363) (not e!4234064))))

(declare-fun contains!20469 (List!68018 Context!12984) Bool)

(assert (=> b!7043141 (= res!2875363 (not (contains!20469 (t!381789 lt!2525595) (h!74342 lt!2525595))))))

(declare-fun b!7043142 () Bool)

(assert (=> b!7043142 (= e!4234064 (noDuplicate!2648 (t!381789 lt!2525595)))))

(assert (= (and d!2199114 (not res!2875362)) b!7043141))

(assert (= (and b!7043141 res!2875363) b!7043142))

(declare-fun m!7755542 () Bool)

(assert (=> b!7043141 m!7755542))

(declare-fun m!7755544 () Bool)

(assert (=> b!7043142 m!7755544))

(assert (=> d!2198772 d!2199114))

(declare-fun d!2199116 () Bool)

(declare-fun e!4234073 () Bool)

(assert (=> d!2199116 e!4234073))

(declare-fun res!2875368 () Bool)

(assert (=> d!2199116 (=> (not res!2875368) (not e!4234073))))

(declare-fun res!2875369 () List!68018)

(assert (=> d!2199116 (= res!2875368 (noDuplicate!2648 res!2875369))))

(declare-fun e!4234072 () Bool)

(assert (=> d!2199116 e!4234072))

(assert (=> d!2199116 (= (choose!53481 lt!2525428) res!2875369)))

(declare-fun b!7043150 () Bool)

(declare-fun e!4234071 () Bool)

(declare-fun tp!1937621 () Bool)

(assert (=> b!7043150 (= e!4234071 tp!1937621)))

(declare-fun tp!1937620 () Bool)

(declare-fun b!7043149 () Bool)

(assert (=> b!7043149 (= e!4234072 (and (inv!86600 (h!74342 res!2875369)) e!4234071 tp!1937620))))

(declare-fun b!7043151 () Bool)

(assert (=> b!7043151 (= e!4234073 (= (content!13591 res!2875369) lt!2525428))))

(assert (= b!7043149 b!7043150))

(assert (= (and d!2199116 (is-Cons!67894 res!2875369)) b!7043149))

(assert (= (and d!2199116 res!2875368) b!7043151))

(declare-fun m!7755546 () Bool)

(assert (=> d!2199116 m!7755546))

(declare-fun m!7755548 () Bool)

(assert (=> b!7043149 m!7755548))

(declare-fun m!7755550 () Bool)

(assert (=> b!7043151 m!7755550))

(assert (=> d!2198772 d!2199116))

(assert (=> b!7042658 d!2199056))

(declare-fun d!2199118 () Bool)

(assert (=> d!2199118 (= (nullable!7207 (h!74340 (exprs!6992 lt!2525427))) (nullableFct!2747 (h!74340 (exprs!6992 lt!2525427))))))

(declare-fun bs!1873626 () Bool)

(assert (= bs!1873626 d!2199118))

(declare-fun m!7755552 () Bool)

(assert (=> bs!1873626 m!7755552))

(assert (=> b!7042614 d!2199118))

(declare-fun bs!1873627 () Bool)

(declare-fun d!2199120 () Bool)

(assert (= bs!1873627 (and d!2199120 b!7042438)))

(declare-fun lambda!417296 () Int)

(assert (=> bs!1873627 (not (= lambda!417296 lambda!417183))))

(declare-fun bs!1873628 () Bool)

(assert (= bs!1873628 (and d!2199120 d!2199086)))

(assert (=> bs!1873628 (not (= lambda!417296 lambda!417291))))

(declare-fun bs!1873629 () Bool)

(assert (= bs!1873629 (and d!2199120 d!2199030)))

(assert (=> bs!1873629 (= lambda!417296 lambda!417287)))

(declare-fun bs!1873630 () Bool)

(assert (= bs!1873630 (and d!2199120 d!2198766)))

(assert (=> bs!1873630 (not (= lambda!417296 lambda!417236))))

(declare-fun bs!1873631 () Bool)

(assert (= bs!1873631 (and d!2199120 d!2199002)))

(assert (=> bs!1873631 (= lambda!417296 lambda!417285)))

(declare-fun bs!1873632 () Bool)

(assert (= bs!1873632 (and d!2199120 d!2199088)))

(assert (=> bs!1873632 (not (= lambda!417296 lambda!417294))))

(declare-fun bs!1873633 () Bool)

(assert (= bs!1873633 (and d!2199120 d!2198764)))

(assert (=> bs!1873633 (not (= lambda!417296 lambda!417233))))

(declare-fun bs!1873634 () Bool)

(assert (= bs!1873634 (and d!2199120 d!2199060)))

(assert (=> bs!1873634 (= lambda!417296 lambda!417289)))

(declare-fun bs!1873635 () Bool)

(assert (= bs!1873635 (and d!2199120 d!2199074)))

(assert (=> bs!1873635 (= lambda!417296 lambda!417290)))

(assert (=> d!2199120 (= (nullableZipper!2602 lt!2525420) (exists!3446 lt!2525420 lambda!417296))))

(declare-fun bs!1873636 () Bool)

(assert (= bs!1873636 d!2199120))

(declare-fun m!7755554 () Bool)

(assert (=> bs!1873636 m!7755554))

(assert (=> b!7042712 d!2199120))

(declare-fun b!7043152 () Bool)

(declare-fun e!4234075 () (Set Context!12984))

(declare-fun call!639760 () (Set Context!12984))

(assert (=> b!7043152 (= e!4234075 call!639760)))

(declare-fun b!7043153 () Bool)

(declare-fun e!4234076 () (Set Context!12984))

(assert (=> b!7043153 (= e!4234076 e!4234075)))

(declare-fun c!1311160 () Bool)

(assert (=> b!7043153 (= c!1311160 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525434))))))))

(declare-fun b!7043154 () Bool)

(assert (=> b!7043154 (= e!4234076 (set.union call!639760 (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525434)))))) (h!74341 s!7408))))))

(declare-fun d!2199122 () Bool)

(declare-fun c!1311159 () Bool)

(declare-fun e!4234074 () Bool)

(assert (=> d!2199122 (= c!1311159 e!4234074)))

(declare-fun res!2875370 () Bool)

(assert (=> d!2199122 (=> (not res!2875370) (not e!4234074))))

(assert (=> d!2199122 (= res!2875370 (is-Cons!67892 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525434))))))))

(assert (=> d!2199122 (= (derivationStepZipperUp!2106 (Context!12985 (t!381787 (exprs!6992 lt!2525434))) (h!74341 s!7408)) e!4234076)))

(declare-fun bm!639755 () Bool)

(assert (=> bm!639755 (= call!639760 (derivationStepZipperDown!2160 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525434))))) (Context!12985 (t!381787 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525434)))))) (h!74341 s!7408)))))

(declare-fun b!7043155 () Bool)

(assert (=> b!7043155 (= e!4234075 (as set.empty (Set Context!12984)))))

(declare-fun b!7043156 () Bool)

(assert (=> b!7043156 (= e!4234074 (nullable!7207 (h!74340 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525434)))))))))

(assert (= (and d!2199122 res!2875370) b!7043156))

(assert (= (and d!2199122 c!1311159) b!7043154))

(assert (= (and d!2199122 (not c!1311159)) b!7043153))

(assert (= (and b!7043153 c!1311160) b!7043152))

(assert (= (and b!7043153 (not c!1311160)) b!7043155))

(assert (= (or b!7043154 b!7043152) bm!639755))

(declare-fun m!7755556 () Bool)

(assert (=> b!7043154 m!7755556))

(declare-fun m!7755558 () Bool)

(assert (=> bm!639755 m!7755558))

(declare-fun m!7755560 () Bool)

(assert (=> b!7043156 m!7755560))

(assert (=> b!7042588 d!2199122))

(declare-fun d!2199124 () Bool)

(declare-fun c!1311161 () Bool)

(assert (=> d!2199124 (= c!1311161 (isEmpty!39622 (_1!37368 (get!23796 lt!2525629))))))

(declare-fun e!4234077 () Bool)

(assert (=> d!2199124 (= (matchZipper!3036 lt!2525403 (_1!37368 (get!23796 lt!2525629))) e!4234077)))

(declare-fun b!7043157 () Bool)

(assert (=> b!7043157 (= e!4234077 (nullableZipper!2602 lt!2525403))))

(declare-fun b!7043158 () Bool)

(assert (=> b!7043158 (= e!4234077 (matchZipper!3036 (derivationStepZipper!2952 lt!2525403 (head!14293 (_1!37368 (get!23796 lt!2525629)))) (tail!13610 (_1!37368 (get!23796 lt!2525629)))))))

(assert (= (and d!2199124 c!1311161) b!7043157))

(assert (= (and d!2199124 (not c!1311161)) b!7043158))

(declare-fun m!7755562 () Bool)

(assert (=> d!2199124 m!7755562))

(assert (=> b!7043157 m!7754898))

(declare-fun m!7755564 () Bool)

(assert (=> b!7043158 m!7755564))

(assert (=> b!7043158 m!7755564))

(declare-fun m!7755566 () Bool)

(assert (=> b!7043158 m!7755566))

(declare-fun m!7755568 () Bool)

(assert (=> b!7043158 m!7755568))

(assert (=> b!7043158 m!7755566))

(assert (=> b!7043158 m!7755568))

(declare-fun m!7755570 () Bool)

(assert (=> b!7043158 m!7755570))

(assert (=> b!7042702 d!2199124))

(declare-fun d!2199126 () Bool)

(assert (=> d!2199126 (= (get!23796 lt!2525629) (v!53186 lt!2525629))))

(assert (=> b!7042702 d!2199126))

(declare-fun d!2199128 () Bool)

(declare-fun lt!2525714 () Int)

(assert (=> d!2199128 (>= lt!2525714 0)))

(declare-fun e!4234078 () Int)

(assert (=> d!2199128 (= lt!2525714 e!4234078)))

(declare-fun c!1311162 () Bool)

(assert (=> d!2199128 (= c!1311162 (is-Nil!67892 lt!2525615))))

(assert (=> d!2199128 (= (size!41100 lt!2525615) lt!2525714)))

(declare-fun b!7043159 () Bool)

(assert (=> b!7043159 (= e!4234078 0)))

(declare-fun b!7043160 () Bool)

(assert (=> b!7043160 (= e!4234078 (+ 1 (size!41100 (t!381787 lt!2525615))))))

(assert (= (and d!2199128 c!1311162) b!7043159))

(assert (= (and d!2199128 (not c!1311162)) b!7043160))

(declare-fun m!7755572 () Bool)

(assert (=> b!7043160 m!7755572))

(assert (=> b!7042624 d!2199128))

(declare-fun d!2199130 () Bool)

(declare-fun lt!2525715 () Int)

(assert (=> d!2199130 (>= lt!2525715 0)))

(declare-fun e!4234079 () Int)

(assert (=> d!2199130 (= lt!2525715 e!4234079)))

(declare-fun c!1311163 () Bool)

(assert (=> d!2199130 (= c!1311163 (is-Nil!67892 lt!2525424))))

(assert (=> d!2199130 (= (size!41100 lt!2525424) lt!2525715)))

(declare-fun b!7043161 () Bool)

(assert (=> b!7043161 (= e!4234079 0)))

(declare-fun b!7043162 () Bool)

(assert (=> b!7043162 (= e!4234079 (+ 1 (size!41100 (t!381787 lt!2525424))))))

(assert (= (and d!2199130 c!1311163) b!7043161))

(assert (= (and d!2199130 (not c!1311163)) b!7043162))

(declare-fun m!7755574 () Bool)

(assert (=> b!7043162 m!7755574))

(assert (=> b!7042624 d!2199130))

(assert (=> b!7042624 d!2199084))

(declare-fun d!2199132 () Bool)

(assert (=> d!2199132 (= (isEmpty!39623 lt!2525432) (not (is-Some!16896 lt!2525432)))))

(assert (=> d!2198840 d!2199132))

(declare-fun b!7043163 () Bool)

(declare-fun e!4234084 () (Set Context!12984))

(declare-fun call!639765 () (Set Context!12984))

(declare-fun call!639761 () (Set Context!12984))

(assert (=> b!7043163 (= e!4234084 (set.union call!639765 call!639761))))

(declare-fun d!2199134 () Bool)

(declare-fun c!1311168 () Bool)

(assert (=> d!2199134 (= c!1311168 (and (is-ElementMatch!17496 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (= (c!1310942 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (h!74341 s!7408))))))

(declare-fun e!4234083 () (Set Context!12984))

(assert (=> d!2199134 (= (derivationStepZipperDown!2160 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))) (ite (or c!1310995 c!1310996) lt!2525431 (Context!12985 call!639679)) (h!74341 s!7408)) e!4234083)))

(declare-fun bm!639756 () Bool)

(declare-fun call!639762 () (Set Context!12984))

(assert (=> bm!639756 (= call!639761 call!639762)))

(declare-fun call!639764 () List!68016)

(declare-fun bm!639757 () Bool)

(declare-fun c!1311165 () Bool)

(declare-fun c!1311166 () Bool)

(declare-fun c!1311167 () Bool)

(assert (=> bm!639757 (= call!639762 (derivationStepZipperDown!2160 (ite c!1311165 (regOne!35505 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (ite c!1311166 (regTwo!35504 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (ite c!1311167 (regOne!35504 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (reg!17825 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))))) (ite (or c!1311165 c!1311166) (ite (or c!1310995 c!1310996) lt!2525431 (Context!12985 call!639679)) (Context!12985 call!639764)) (h!74341 s!7408)))))

(declare-fun b!7043164 () Bool)

(assert (=> b!7043164 (= e!4234083 (set.insert (ite (or c!1310995 c!1310996) lt!2525431 (Context!12985 call!639679)) (as set.empty (Set Context!12984))))))

(declare-fun b!7043165 () Bool)

(declare-fun e!4234082 () (Set Context!12984))

(assert (=> b!7043165 (= e!4234083 e!4234082)))

(assert (=> b!7043165 (= c!1311165 (is-Union!17496 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(declare-fun b!7043166 () Bool)

(declare-fun e!4234080 () (Set Context!12984))

(declare-fun call!639763 () (Set Context!12984))

(assert (=> b!7043166 (= e!4234080 call!639763)))

(declare-fun b!7043167 () Bool)

(declare-fun e!4234081 () (Set Context!12984))

(assert (=> b!7043167 (= e!4234081 call!639763)))

(declare-fun b!7043168 () Bool)

(declare-fun e!4234085 () Bool)

(assert (=> b!7043168 (= c!1311166 e!4234085)))

(declare-fun res!2875371 () Bool)

(assert (=> b!7043168 (=> (not res!2875371) (not e!4234085))))

(assert (=> b!7043168 (= res!2875371 (is-Concat!26341 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(assert (=> b!7043168 (= e!4234082 e!4234084)))

(declare-fun b!7043169 () Bool)

(assert (=> b!7043169 (= e!4234080 (as set.empty (Set Context!12984)))))

(declare-fun call!639766 () List!68016)

(declare-fun bm!639758 () Bool)

(assert (=> bm!639758 (= call!639765 (derivationStepZipperDown!2160 (ite c!1311165 (regTwo!35505 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (regOne!35504 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))) (ite c!1311165 (ite (or c!1310995 c!1310996) lt!2525431 (Context!12985 call!639679)) (Context!12985 call!639766)) (h!74341 s!7408)))))

(declare-fun c!1311164 () Bool)

(declare-fun b!7043170 () Bool)

(assert (=> b!7043170 (= c!1311164 (is-Star!17496 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(assert (=> b!7043170 (= e!4234081 e!4234080)))

(declare-fun b!7043171 () Bool)

(assert (=> b!7043171 (= e!4234084 e!4234081)))

(assert (=> b!7043171 (= c!1311167 (is-Concat!26341 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))))))

(declare-fun b!7043172 () Bool)

(assert (=> b!7043172 (= e!4234082 (set.union call!639762 call!639765))))

(declare-fun bm!639759 () Bool)

(assert (=> bm!639759 (= call!639764 call!639766)))

(declare-fun bm!639760 () Bool)

(assert (=> bm!639760 (= call!639763 call!639761)))

(declare-fun b!7043173 () Bool)

(assert (=> b!7043173 (= e!4234085 (nullable!7207 (regOne!35504 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))))))

(declare-fun bm!639761 () Bool)

(assert (=> bm!639761 (= call!639766 ($colon$colon!2595 (exprs!6992 (ite (or c!1310995 c!1310996) lt!2525431 (Context!12985 call!639679))) (ite (or c!1311166 c!1311167) (regTwo!35504 (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426))))))) (ite c!1310995 (regOne!35505 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310996 (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (ite c!1310997 (regOne!35504 (h!74340 (exprs!6992 lt!2525426))) (reg!17825 (h!74340 (exprs!6992 lt!2525426)))))))))))

(assert (= (and d!2199134 c!1311168) b!7043164))

(assert (= (and d!2199134 (not c!1311168)) b!7043165))

(assert (= (and b!7043165 c!1311165) b!7043172))

(assert (= (and b!7043165 (not c!1311165)) b!7043168))

(assert (= (and b!7043168 res!2875371) b!7043173))

(assert (= (and b!7043168 c!1311166) b!7043163))

(assert (= (and b!7043168 (not c!1311166)) b!7043171))

(assert (= (and b!7043171 c!1311167) b!7043167))

(assert (= (and b!7043171 (not c!1311167)) b!7043170))

(assert (= (and b!7043170 c!1311164) b!7043166))

(assert (= (and b!7043170 (not c!1311164)) b!7043169))

(assert (= (or b!7043167 b!7043166) bm!639759))

(assert (= (or b!7043167 b!7043166) bm!639760))

(assert (= (or b!7043163 bm!639760) bm!639756))

(assert (= (or b!7043163 bm!639759) bm!639761))

(assert (= (or b!7043172 bm!639756) bm!639757))

(assert (= (or b!7043172 b!7043163) bm!639758))

(declare-fun m!7755576 () Bool)

(assert (=> b!7043164 m!7755576))

(declare-fun m!7755578 () Bool)

(assert (=> bm!639761 m!7755578))

(declare-fun m!7755580 () Bool)

(assert (=> b!7043173 m!7755580))

(declare-fun m!7755582 () Bool)

(assert (=> bm!639757 m!7755582))

(declare-fun m!7755584 () Bool)

(assert (=> bm!639758 m!7755584))

(assert (=> bm!639672 d!2199134))

(declare-fun d!2199136 () Bool)

(assert (=> d!2199136 (forall!16423 (++!15567 (exprs!6992 lt!2525604) (exprs!6992 ct2!306)) lambda!417185)))

(declare-fun lt!2525716 () Unit!161672)

(assert (=> d!2199136 (= lt!2525716 (choose!53482 (exprs!6992 lt!2525604) (exprs!6992 ct2!306) lambda!417185))))

(assert (=> d!2199136 (forall!16423 (exprs!6992 lt!2525604) lambda!417185)))

(assert (=> d!2199136 (= (lemmaConcatPreservesForall!817 (exprs!6992 lt!2525604) (exprs!6992 ct2!306) lambda!417185) lt!2525716)))

(declare-fun bs!1873637 () Bool)

(assert (= bs!1873637 d!2199136))

(assert (=> bs!1873637 m!7754934))

(assert (=> bs!1873637 m!7754934))

(declare-fun m!7755586 () Bool)

(assert (=> bs!1873637 m!7755586))

(declare-fun m!7755588 () Bool)

(assert (=> bs!1873637 m!7755588))

(declare-fun m!7755590 () Bool)

(assert (=> bs!1873637 m!7755590))

(assert (=> bs!1873503 d!2199136))

(declare-fun b!7043175 () Bool)

(declare-fun e!4234086 () List!68016)

(assert (=> b!7043175 (= e!4234086 (Cons!67892 (h!74340 (exprs!6992 lt!2525604)) (++!15567 (t!381787 (exprs!6992 lt!2525604)) (exprs!6992 ct2!306))))))

(declare-fun d!2199138 () Bool)

(declare-fun e!4234087 () Bool)

(assert (=> d!2199138 e!4234087))

(declare-fun res!2875372 () Bool)

(assert (=> d!2199138 (=> (not res!2875372) (not e!4234087))))

(declare-fun lt!2525717 () List!68016)

(assert (=> d!2199138 (= res!2875372 (= (content!13592 lt!2525717) (set.union (content!13592 (exprs!6992 lt!2525604)) (content!13592 (exprs!6992 ct2!306)))))))

(assert (=> d!2199138 (= lt!2525717 e!4234086)))

(declare-fun c!1311169 () Bool)

(assert (=> d!2199138 (= c!1311169 (is-Nil!67892 (exprs!6992 lt!2525604)))))

(assert (=> d!2199138 (= (++!15567 (exprs!6992 lt!2525604) (exprs!6992 ct2!306)) lt!2525717)))

(declare-fun b!7043174 () Bool)

(assert (=> b!7043174 (= e!4234086 (exprs!6992 ct2!306))))

(declare-fun b!7043177 () Bool)

(assert (=> b!7043177 (= e!4234087 (or (not (= (exprs!6992 ct2!306) Nil!67892)) (= lt!2525717 (exprs!6992 lt!2525604))))))

(declare-fun b!7043176 () Bool)

(declare-fun res!2875373 () Bool)

(assert (=> b!7043176 (=> (not res!2875373) (not e!4234087))))

(assert (=> b!7043176 (= res!2875373 (= (size!41100 lt!2525717) (+ (size!41100 (exprs!6992 lt!2525604)) (size!41100 (exprs!6992 ct2!306)))))))

(assert (= (and d!2199138 c!1311169) b!7043174))

(assert (= (and d!2199138 (not c!1311169)) b!7043175))

(assert (= (and d!2199138 res!2875372) b!7043176))

(assert (= (and b!7043176 res!2875373) b!7043177))

(declare-fun m!7755592 () Bool)

(assert (=> b!7043175 m!7755592))

(declare-fun m!7755594 () Bool)

(assert (=> d!2199138 m!7755594))

(declare-fun m!7755596 () Bool)

(assert (=> d!2199138 m!7755596))

(assert (=> d!2199138 m!7754692))

(declare-fun m!7755598 () Bool)

(assert (=> b!7043176 m!7755598))

(declare-fun m!7755600 () Bool)

(assert (=> b!7043176 m!7755600))

(assert (=> b!7043176 m!7754698))

(assert (=> bs!1873503 d!2199138))

(declare-fun d!2199140 () Bool)

(assert (=> d!2199140 (= (isEmpty!39622 s!7408) (is-Nil!67893 s!7408))))

(assert (=> d!2198808 d!2199140))

(declare-fun b!7043179 () Bool)

(declare-fun e!4234088 () List!68016)

(assert (=> b!7043179 (= e!4234088 (Cons!67892 (h!74340 (t!381787 (exprs!6992 lt!2525426))) (++!15567 (t!381787 (t!381787 (exprs!6992 lt!2525426))) (exprs!6992 ct2!306))))))

(declare-fun d!2199142 () Bool)

(declare-fun e!4234089 () Bool)

(assert (=> d!2199142 e!4234089))

(declare-fun res!2875374 () Bool)

(assert (=> d!2199142 (=> (not res!2875374) (not e!4234089))))

(declare-fun lt!2525718 () List!68016)

(assert (=> d!2199142 (= res!2875374 (= (content!13592 lt!2525718) (set.union (content!13592 (t!381787 (exprs!6992 lt!2525426))) (content!13592 (exprs!6992 ct2!306)))))))

(assert (=> d!2199142 (= lt!2525718 e!4234088)))

(declare-fun c!1311170 () Bool)

(assert (=> d!2199142 (= c!1311170 (is-Nil!67892 (t!381787 (exprs!6992 lt!2525426))))))

(assert (=> d!2199142 (= (++!15567 (t!381787 (exprs!6992 lt!2525426)) (exprs!6992 ct2!306)) lt!2525718)))

(declare-fun b!7043178 () Bool)

(assert (=> b!7043178 (= e!4234088 (exprs!6992 ct2!306))))

(declare-fun b!7043181 () Bool)

(assert (=> b!7043181 (= e!4234089 (or (not (= (exprs!6992 ct2!306) Nil!67892)) (= lt!2525718 (t!381787 (exprs!6992 lt!2525426)))))))

(declare-fun b!7043180 () Bool)

(declare-fun res!2875375 () Bool)

(assert (=> b!7043180 (=> (not res!2875375) (not e!4234089))))

(assert (=> b!7043180 (= res!2875375 (= (size!41100 lt!2525718) (+ (size!41100 (t!381787 (exprs!6992 lt!2525426))) (size!41100 (exprs!6992 ct2!306)))))))

(assert (= (and d!2199142 c!1311170) b!7043178))

(assert (= (and d!2199142 (not c!1311170)) b!7043179))

(assert (= (and d!2199142 res!2875374) b!7043180))

(assert (= (and b!7043180 res!2875375) b!7043181))

(declare-fun m!7755602 () Bool)

(assert (=> b!7043179 m!7755602))

(declare-fun m!7755604 () Bool)

(assert (=> d!2199142 m!7755604))

(assert (=> d!2199142 m!7755518))

(assert (=> d!2199142 m!7754692))

(declare-fun m!7755606 () Bool)

(assert (=> b!7043180 m!7755606))

(assert (=> b!7043180 m!7755480))

(assert (=> b!7043180 m!7754698))

(assert (=> b!7042569 d!2199142))

(declare-fun d!2199144 () Bool)

(assert (=> d!2199144 (= (nullable!7207 (h!74340 (exprs!6992 lt!2525431))) (nullableFct!2747 (h!74340 (exprs!6992 lt!2525431))))))

(declare-fun bs!1873638 () Bool)

(assert (= bs!1873638 d!2199144))

(declare-fun m!7755608 () Bool)

(assert (=> bs!1873638 m!7755608))

(assert (=> b!7042621 d!2199144))

(declare-fun d!2199146 () Bool)

(assert (=> d!2199146 (= (flatMap!2443 lt!2525401 lambda!417239) (choose!53485 lt!2525401 lambda!417239))))

(declare-fun bs!1873639 () Bool)

(assert (= bs!1873639 d!2199146))

(declare-fun m!7755610 () Bool)

(assert (=> bs!1873639 m!7755610))

(assert (=> d!2198788 d!2199146))

(declare-fun d!2199148 () Bool)

(declare-fun c!1311171 () Bool)

(assert (=> d!2199148 (= c!1311171 (isEmpty!39622 (t!381788 s!7408)))))

(declare-fun e!4234090 () Bool)

(assert (=> d!2199148 (= (matchZipper!3036 (appendTo!617 lt!2525403 ct2!306) (t!381788 s!7408)) e!4234090)))

(declare-fun b!7043182 () Bool)

(assert (=> b!7043182 (= e!4234090 (nullableZipper!2602 (appendTo!617 lt!2525403 ct2!306)))))

(declare-fun b!7043183 () Bool)

(assert (=> b!7043183 (= e!4234090 (matchZipper!3036 (derivationStepZipper!2952 (appendTo!617 lt!2525403 ct2!306) (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))))))

(assert (= (and d!2199148 c!1311171) b!7043182))

(assert (= (and d!2199148 (not c!1311171)) b!7043183))

(assert (=> d!2199148 m!7754662))

(assert (=> b!7043182 m!7754498))

(declare-fun m!7755612 () Bool)

(assert (=> b!7043182 m!7755612))

(assert (=> b!7043183 m!7754666))

(assert (=> b!7043183 m!7754498))

(assert (=> b!7043183 m!7754666))

(declare-fun m!7755614 () Bool)

(assert (=> b!7043183 m!7755614))

(assert (=> b!7043183 m!7754670))

(assert (=> b!7043183 m!7755614))

(assert (=> b!7043183 m!7754670))

(declare-fun m!7755616 () Bool)

(assert (=> b!7043183 m!7755616))

(assert (=> d!2198842 d!2199148))

(declare-fun d!2199150 () Bool)

(assert (=> d!2199150 (isDefined!13598 (findConcatSeparationZippers!413 lt!2525403 (set.insert ct2!306 (as set.empty (Set Context!12984))) Nil!67893 (t!381788 s!7408) (t!381788 s!7408)))))

(assert (=> d!2199150 true))

(declare-fun _$50!587 () Unit!161672)

(assert (=> d!2199150 (= (choose!53487 lt!2525403 ct2!306 (t!381788 s!7408)) _$50!587)))

(declare-fun bs!1873640 () Bool)

(assert (= bs!1873640 d!2199150))

(assert (=> bs!1873640 m!7754494))

(assert (=> bs!1873640 m!7754494))

(assert (=> bs!1873640 m!7754856))

(assert (=> bs!1873640 m!7754856))

(assert (=> bs!1873640 m!7754858))

(assert (=> d!2198842 d!2199150))

(declare-fun d!2199152 () Bool)

(assert (=> d!2199152 (= (isDefined!13598 (findConcatSeparationZippers!413 lt!2525403 (set.insert ct2!306 (as set.empty (Set Context!12984))) Nil!67893 (t!381788 s!7408) (t!381788 s!7408))) (not (isEmpty!39623 (findConcatSeparationZippers!413 lt!2525403 (set.insert ct2!306 (as set.empty (Set Context!12984))) Nil!67893 (t!381788 s!7408) (t!381788 s!7408)))))))

(declare-fun bs!1873641 () Bool)

(assert (= bs!1873641 d!2199152))

(assert (=> bs!1873641 m!7754856))

(declare-fun m!7755618 () Bool)

(assert (=> bs!1873641 m!7755618))

(assert (=> d!2198842 d!2199152))

(assert (=> d!2198842 d!2198834))

(declare-fun b!7043184 () Bool)

(declare-fun e!4234094 () Bool)

(declare-fun lt!2525720 () Option!16897)

(assert (=> b!7043184 (= e!4234094 (not (isDefined!13598 lt!2525720)))))

(declare-fun b!7043185 () Bool)

(declare-fun e!4234093 () Bool)

(assert (=> b!7043185 (= e!4234093 (matchZipper!3036 (set.insert ct2!306 (as set.empty (Set Context!12984))) (t!381788 s!7408)))))

(declare-fun b!7043186 () Bool)

(declare-fun e!4234095 () Option!16897)

(assert (=> b!7043186 (= e!4234095 None!16896)))

(declare-fun d!2199154 () Bool)

(assert (=> d!2199154 e!4234094))

(declare-fun res!2875378 () Bool)

(assert (=> d!2199154 (=> res!2875378 e!4234094)))

(declare-fun e!4234091 () Bool)

(assert (=> d!2199154 (= res!2875378 e!4234091)))

(declare-fun res!2875376 () Bool)

(assert (=> d!2199154 (=> (not res!2875376) (not e!4234091))))

(assert (=> d!2199154 (= res!2875376 (isDefined!13598 lt!2525720))))

(declare-fun e!4234092 () Option!16897)

(assert (=> d!2199154 (= lt!2525720 e!4234092)))

(declare-fun c!1311172 () Bool)

(assert (=> d!2199154 (= c!1311172 e!4234093)))

(declare-fun res!2875377 () Bool)

(assert (=> d!2199154 (=> (not res!2875377) (not e!4234093))))

(assert (=> d!2199154 (= res!2875377 (matchZipper!3036 lt!2525403 Nil!67893))))

(assert (=> d!2199154 (= (++!15568 Nil!67893 (t!381788 s!7408)) (t!381788 s!7408))))

(assert (=> d!2199154 (= (findConcatSeparationZippers!413 lt!2525403 (set.insert ct2!306 (as set.empty (Set Context!12984))) Nil!67893 (t!381788 s!7408) (t!381788 s!7408)) lt!2525720)))

(declare-fun b!7043187 () Bool)

(assert (=> b!7043187 (= e!4234092 e!4234095)))

(declare-fun c!1311173 () Bool)

(assert (=> b!7043187 (= c!1311173 (is-Nil!67893 (t!381788 s!7408)))))

(declare-fun b!7043188 () Bool)

(assert (=> b!7043188 (= e!4234091 (= (++!15568 (_1!37368 (get!23796 lt!2525720)) (_2!37368 (get!23796 lt!2525720))) (t!381788 s!7408)))))

(declare-fun b!7043189 () Bool)

(declare-fun res!2875380 () Bool)

(assert (=> b!7043189 (=> (not res!2875380) (not e!4234091))))

(assert (=> b!7043189 (= res!2875380 (matchZipper!3036 lt!2525403 (_1!37368 (get!23796 lt!2525720))))))

(declare-fun b!7043190 () Bool)

(declare-fun lt!2525721 () Unit!161672)

(declare-fun lt!2525719 () Unit!161672)

(assert (=> b!7043190 (= lt!2525721 lt!2525719)))

(assert (=> b!7043190 (= (++!15568 (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408))) (t!381788 s!7408))))

(assert (=> b!7043190 (= lt!2525719 (lemmaMoveElementToOtherListKeepsConcatEq!2942 Nil!67893 (h!74341 (t!381788 s!7408)) (t!381788 (t!381788 s!7408)) (t!381788 s!7408)))))

(assert (=> b!7043190 (= e!4234095 (findConcatSeparationZippers!413 lt!2525403 (set.insert ct2!306 (as set.empty (Set Context!12984))) (++!15568 Nil!67893 (Cons!67893 (h!74341 (t!381788 s!7408)) Nil!67893)) (t!381788 (t!381788 s!7408)) (t!381788 s!7408)))))

(declare-fun b!7043191 () Bool)

(declare-fun res!2875379 () Bool)

(assert (=> b!7043191 (=> (not res!2875379) (not e!4234091))))

(assert (=> b!7043191 (= res!2875379 (matchZipper!3036 (set.insert ct2!306 (as set.empty (Set Context!12984))) (_2!37368 (get!23796 lt!2525720))))))

(declare-fun b!7043192 () Bool)

(assert (=> b!7043192 (= e!4234092 (Some!16896 (tuple2!68131 Nil!67893 (t!381788 s!7408))))))

(assert (= (and d!2199154 res!2875377) b!7043185))

(assert (= (and d!2199154 c!1311172) b!7043192))

(assert (= (and d!2199154 (not c!1311172)) b!7043187))

(assert (= (and b!7043187 c!1311173) b!7043186))

(assert (= (and b!7043187 (not c!1311173)) b!7043190))

(assert (= (and d!2199154 res!2875376) b!7043189))

(assert (= (and b!7043189 res!2875380) b!7043191))

(assert (= (and b!7043191 res!2875379) b!7043188))

(assert (= (and d!2199154 (not res!2875378)) b!7043184))

(assert (=> b!7043185 m!7754494))

(declare-fun m!7755620 () Bool)

(assert (=> b!7043185 m!7755620))

(declare-fun m!7755622 () Bool)

(assert (=> d!2199154 m!7755622))

(assert (=> d!2199154 m!7754866))

(assert (=> d!2199154 m!7754868))

(assert (=> b!7043184 m!7755622))

(declare-fun m!7755624 () Bool)

(assert (=> b!7043188 m!7755624))

(declare-fun m!7755626 () Bool)

(assert (=> b!7043188 m!7755626))

(assert (=> b!7043189 m!7755624))

(declare-fun m!7755628 () Bool)

(assert (=> b!7043189 m!7755628))

(assert (=> b!7043191 m!7755624))

(assert (=> b!7043191 m!7754494))

(declare-fun m!7755630 () Bool)

(assert (=> b!7043191 m!7755630))

(assert (=> b!7043190 m!7754878))

(assert (=> b!7043190 m!7754878))

(assert (=> b!7043190 m!7754880))

(assert (=> b!7043190 m!7754882))

(assert (=> b!7043190 m!7754494))

(assert (=> b!7043190 m!7754878))

(declare-fun m!7755632 () Bool)

(assert (=> b!7043190 m!7755632))

(assert (=> d!2198842 d!2199154))

(declare-fun b!7043194 () Bool)

(declare-fun e!4234097 () List!68017)

(assert (=> b!7043194 (= e!4234097 (Cons!67893 (h!74341 (t!381788 (_1!37368 lt!2525435))) (++!15568 (t!381788 (t!381788 (_1!37368 lt!2525435))) (_2!37368 lt!2525435))))))

(declare-fun b!7043195 () Bool)

(declare-fun res!2875382 () Bool)

(declare-fun e!4234096 () Bool)

(assert (=> b!7043195 (=> (not res!2875382) (not e!4234096))))

(declare-fun lt!2525722 () List!68017)

(assert (=> b!7043195 (= res!2875382 (= (size!41101 lt!2525722) (+ (size!41101 (t!381788 (_1!37368 lt!2525435))) (size!41101 (_2!37368 lt!2525435)))))))

(declare-fun b!7043193 () Bool)

(assert (=> b!7043193 (= e!4234097 (_2!37368 lt!2525435))))

(declare-fun d!2199156 () Bool)

(assert (=> d!2199156 e!4234096))

(declare-fun res!2875381 () Bool)

(assert (=> d!2199156 (=> (not res!2875381) (not e!4234096))))

(assert (=> d!2199156 (= res!2875381 (= (content!13593 lt!2525722) (set.union (content!13593 (t!381788 (_1!37368 lt!2525435))) (content!13593 (_2!37368 lt!2525435)))))))

(assert (=> d!2199156 (= lt!2525722 e!4234097)))

(declare-fun c!1311174 () Bool)

(assert (=> d!2199156 (= c!1311174 (is-Nil!67893 (t!381788 (_1!37368 lt!2525435))))))

(assert (=> d!2199156 (= (++!15568 (t!381788 (_1!37368 lt!2525435)) (_2!37368 lt!2525435)) lt!2525722)))

(declare-fun b!7043196 () Bool)

(assert (=> b!7043196 (= e!4234096 (or (not (= (_2!37368 lt!2525435) Nil!67893)) (= lt!2525722 (t!381788 (_1!37368 lt!2525435)))))))

(assert (= (and d!2199156 c!1311174) b!7043193))

(assert (= (and d!2199156 (not c!1311174)) b!7043194))

(assert (= (and d!2199156 res!2875381) b!7043195))

(assert (= (and b!7043195 res!2875382) b!7043196))

(declare-fun m!7755634 () Bool)

(assert (=> b!7043194 m!7755634))

(declare-fun m!7755636 () Bool)

(assert (=> b!7043195 m!7755636))

(assert (=> b!7043195 m!7755464))

(assert (=> b!7043195 m!7754736))

(declare-fun m!7755638 () Bool)

(assert (=> d!2199156 m!7755638))

(assert (=> d!2199156 m!7755346))

(assert (=> d!2199156 m!7754742))

(assert (=> b!7042602 d!2199156))

(declare-fun d!2199158 () Bool)

(declare-fun c!1311175 () Bool)

(assert (=> d!2199158 (= c!1311175 (isEmpty!39622 (tail!13610 s!7408)))))

(declare-fun e!4234098 () Bool)

(assert (=> d!2199158 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525428 (head!14293 s!7408)) (tail!13610 s!7408)) e!4234098)))

(declare-fun b!7043197 () Bool)

(assert (=> b!7043197 (= e!4234098 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525428 (head!14293 s!7408))))))

(declare-fun b!7043198 () Bool)

(assert (=> b!7043198 (= e!4234098 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525428 (head!14293 s!7408)) (head!14293 (tail!13610 s!7408))) (tail!13610 (tail!13610 s!7408))))))

(assert (= (and d!2199158 c!1311175) b!7043197))

(assert (= (and d!2199158 (not c!1311175)) b!7043198))

(assert (=> d!2199158 m!7754652))

(declare-fun m!7755640 () Bool)

(assert (=> d!2199158 m!7755640))

(assert (=> b!7043197 m!7754772))

(declare-fun m!7755642 () Bool)

(assert (=> b!7043197 m!7755642))

(assert (=> b!7043198 m!7754652))

(declare-fun m!7755644 () Bool)

(assert (=> b!7043198 m!7755644))

(assert (=> b!7043198 m!7754772))

(assert (=> b!7043198 m!7755644))

(declare-fun m!7755646 () Bool)

(assert (=> b!7043198 m!7755646))

(assert (=> b!7043198 m!7754652))

(declare-fun m!7755648 () Bool)

(assert (=> b!7043198 m!7755648))

(assert (=> b!7043198 m!7755646))

(assert (=> b!7043198 m!7755648))

(declare-fun m!7755650 () Bool)

(assert (=> b!7043198 m!7755650))

(assert (=> b!7042616 d!2199158))

(declare-fun bs!1873642 () Bool)

(declare-fun d!2199160 () Bool)

(assert (= bs!1873642 (and d!2199160 b!7042428)))

(declare-fun lambda!417297 () Int)

(assert (=> bs!1873642 (= (= (head!14293 s!7408) (h!74341 s!7408)) (= lambda!417297 lambda!417186))))

(declare-fun bs!1873643 () Bool)

(assert (= bs!1873643 (and d!2199160 d!2198992)))

(assert (=> bs!1873643 (= (= (head!14293 s!7408) (head!14293 (_1!37368 lt!2525435))) (= lambda!417297 lambda!417282))))

(declare-fun bs!1873644 () Bool)

(assert (= bs!1873644 (and d!2199160 d!2198984)))

(assert (=> bs!1873644 (= (= (head!14293 s!7408) (head!14293 (t!381788 s!7408))) (= lambda!417297 lambda!417281))))

(declare-fun bs!1873645 () Bool)

(assert (= bs!1873645 (and d!2199160 d!2199028)))

(assert (=> bs!1873645 (= (= (head!14293 s!7408) (head!14293 (t!381788 s!7408))) (= lambda!417297 lambda!417286))))

(declare-fun bs!1873646 () Bool)

(assert (= bs!1873646 (and d!2199160 d!2199096)))

(assert (=> bs!1873646 (= (= (head!14293 s!7408) (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (= lambda!417297 lambda!417295))))

(declare-fun bs!1873647 () Bool)

(assert (= bs!1873647 (and d!2199160 d!2198788)))

(assert (=> bs!1873647 (= (= (head!14293 s!7408) (h!74341 s!7408)) (= lambda!417297 lambda!417239))))

(declare-fun bs!1873648 () Bool)

(assert (= bs!1873648 (and d!2199160 d!2198802)))

(assert (=> bs!1873648 (= (= (head!14293 s!7408) (h!74341 s!7408)) (= lambda!417297 lambda!417240))))

(assert (=> d!2199160 true))

(assert (=> d!2199160 (= (derivationStepZipper!2952 lt!2525428 (head!14293 s!7408)) (flatMap!2443 lt!2525428 lambda!417297))))

(declare-fun bs!1873649 () Bool)

(assert (= bs!1873649 d!2199160))

(declare-fun m!7755652 () Bool)

(assert (=> bs!1873649 m!7755652))

(assert (=> b!7042616 d!2199160))

(declare-fun d!2199162 () Bool)

(assert (=> d!2199162 (= (head!14293 s!7408) (h!74341 s!7408))))

(assert (=> b!7042616 d!2199162))

(declare-fun d!2199164 () Bool)

(assert (=> d!2199164 (= (tail!13610 s!7408) (t!381788 s!7408))))

(assert (=> b!7042616 d!2199164))

(declare-fun bs!1873650 () Bool)

(declare-fun d!2199166 () Bool)

(assert (= bs!1873650 (and d!2199166 b!7042438)))

(declare-fun lambda!417298 () Int)

(assert (=> bs!1873650 (not (= lambda!417298 lambda!417183))))

(declare-fun bs!1873651 () Bool)

(assert (= bs!1873651 (and d!2199166 d!2199086)))

(assert (=> bs!1873651 (not (= lambda!417298 lambda!417291))))

(declare-fun bs!1873652 () Bool)

(assert (= bs!1873652 (and d!2199166 d!2199030)))

(assert (=> bs!1873652 (= lambda!417298 lambda!417287)))

(declare-fun bs!1873653 () Bool)

(assert (= bs!1873653 (and d!2199166 d!2199002)))

(assert (=> bs!1873653 (= lambda!417298 lambda!417285)))

(declare-fun bs!1873654 () Bool)

(assert (= bs!1873654 (and d!2199166 d!2199088)))

(assert (=> bs!1873654 (not (= lambda!417298 lambda!417294))))

(declare-fun bs!1873655 () Bool)

(assert (= bs!1873655 (and d!2199166 d!2198764)))

(assert (=> bs!1873655 (not (= lambda!417298 lambda!417233))))

(declare-fun bs!1873656 () Bool)

(assert (= bs!1873656 (and d!2199166 d!2199060)))

(assert (=> bs!1873656 (= lambda!417298 lambda!417289)))

(declare-fun bs!1873657 () Bool)

(assert (= bs!1873657 (and d!2199166 d!2199074)))

(assert (=> bs!1873657 (= lambda!417298 lambda!417290)))

(declare-fun bs!1873658 () Bool)

(assert (= bs!1873658 (and d!2199166 d!2199120)))

(assert (=> bs!1873658 (= lambda!417298 lambda!417296)))

(declare-fun bs!1873659 () Bool)

(assert (= bs!1873659 (and d!2199166 d!2198766)))

(assert (=> bs!1873659 (not (= lambda!417298 lambda!417236))))

(assert (=> d!2199166 (= (nullableZipper!2602 lt!2525407) (exists!3446 lt!2525407 lambda!417298))))

(declare-fun bs!1873660 () Bool)

(assert (= bs!1873660 d!2199166))

(declare-fun m!7755654 () Bool)

(assert (=> bs!1873660 m!7755654))

(assert (=> b!7042659 d!2199166))

(assert (=> b!7042609 d!2198830))

(assert (=> bs!1873504 d!2198786))

(declare-fun d!2199168 () Bool)

(assert (=> d!2199168 (= (isDefined!13598 lt!2525629) (not (isEmpty!39623 lt!2525629)))))

(declare-fun bs!1873661 () Bool)

(assert (= bs!1873661 d!2199168))

(declare-fun m!7755656 () Bool)

(assert (=> bs!1873661 m!7755656))

(assert (=> b!7042697 d!2199168))

(declare-fun d!2199170 () Bool)

(declare-fun c!1311176 () Bool)

(assert (=> d!2199170 (= c!1311176 (is-Nil!67892 lt!2525615))))

(declare-fun e!4234099 () (Set Regex!17496))

(assert (=> d!2199170 (= (content!13592 lt!2525615) e!4234099)))

(declare-fun b!7043199 () Bool)

(assert (=> b!7043199 (= e!4234099 (as set.empty (Set Regex!17496)))))

(declare-fun b!7043200 () Bool)

(assert (=> b!7043200 (= e!4234099 (set.union (set.insert (h!74340 lt!2525615) (as set.empty (Set Regex!17496))) (content!13592 (t!381787 lt!2525615))))))

(assert (= (and d!2199170 c!1311176) b!7043199))

(assert (= (and d!2199170 (not c!1311176)) b!7043200))

(declare-fun m!7755658 () Bool)

(assert (=> b!7043200 m!7755658))

(declare-fun m!7755660 () Bool)

(assert (=> b!7043200 m!7755660))

(assert (=> d!2198818 d!2199170))

(declare-fun d!2199172 () Bool)

(declare-fun c!1311177 () Bool)

(assert (=> d!2199172 (= c!1311177 (is-Nil!67892 lt!2525424))))

(declare-fun e!4234100 () (Set Regex!17496))

(assert (=> d!2199172 (= (content!13592 lt!2525424) e!4234100)))

(declare-fun b!7043201 () Bool)

(assert (=> b!7043201 (= e!4234100 (as set.empty (Set Regex!17496)))))

(declare-fun b!7043202 () Bool)

(assert (=> b!7043202 (= e!4234100 (set.union (set.insert (h!74340 lt!2525424) (as set.empty (Set Regex!17496))) (content!13592 (t!381787 lt!2525424))))))

(assert (= (and d!2199172 c!1311177) b!7043201))

(assert (= (and d!2199172 (not c!1311177)) b!7043202))

(declare-fun m!7755662 () Bool)

(assert (=> b!7043202 m!7755662))

(declare-fun m!7755664 () Bool)

(assert (=> b!7043202 m!7755664))

(assert (=> d!2198818 d!2199172))

(assert (=> d!2198818 d!2199106))

(declare-fun d!2199174 () Bool)

(assert (=> d!2199174 (= (isEmpty!39622 (_1!37368 lt!2525435)) (is-Nil!67893 (_1!37368 lt!2525435)))))

(assert (=> d!2198776 d!2199174))

(declare-fun b!7043204 () Bool)

(declare-fun e!4234102 () List!68017)

(assert (=> b!7043204 (= e!4234102 (Cons!67893 (h!74341 (_1!37368 (get!23796 lt!2525629))) (++!15568 (t!381788 (_1!37368 (get!23796 lt!2525629))) (_2!37368 (get!23796 lt!2525629)))))))

(declare-fun b!7043205 () Bool)

(declare-fun res!2875384 () Bool)

(declare-fun e!4234101 () Bool)

(assert (=> b!7043205 (=> (not res!2875384) (not e!4234101))))

(declare-fun lt!2525723 () List!68017)

(assert (=> b!7043205 (= res!2875384 (= (size!41101 lt!2525723) (+ (size!41101 (_1!37368 (get!23796 lt!2525629))) (size!41101 (_2!37368 (get!23796 lt!2525629))))))))

(declare-fun b!7043203 () Bool)

(assert (=> b!7043203 (= e!4234102 (_2!37368 (get!23796 lt!2525629)))))

(declare-fun d!2199176 () Bool)

(assert (=> d!2199176 e!4234101))

(declare-fun res!2875383 () Bool)

(assert (=> d!2199176 (=> (not res!2875383) (not e!4234101))))

(assert (=> d!2199176 (= res!2875383 (= (content!13593 lt!2525723) (set.union (content!13593 (_1!37368 (get!23796 lt!2525629))) (content!13593 (_2!37368 (get!23796 lt!2525629))))))))

(assert (=> d!2199176 (= lt!2525723 e!4234102)))

(declare-fun c!1311178 () Bool)

(assert (=> d!2199176 (= c!1311178 (is-Nil!67893 (_1!37368 (get!23796 lt!2525629))))))

(assert (=> d!2199176 (= (++!15568 (_1!37368 (get!23796 lt!2525629)) (_2!37368 (get!23796 lt!2525629))) lt!2525723)))

(declare-fun b!7043206 () Bool)

(assert (=> b!7043206 (= e!4234101 (or (not (= (_2!37368 (get!23796 lt!2525629)) Nil!67893)) (= lt!2525723 (_1!37368 (get!23796 lt!2525629)))))))

(assert (= (and d!2199176 c!1311178) b!7043203))

(assert (= (and d!2199176 (not c!1311178)) b!7043204))

(assert (= (and d!2199176 res!2875383) b!7043205))

(assert (= (and b!7043205 res!2875384) b!7043206))

(declare-fun m!7755666 () Bool)

(assert (=> b!7043204 m!7755666))

(declare-fun m!7755668 () Bool)

(assert (=> b!7043205 m!7755668))

(declare-fun m!7755670 () Bool)

(assert (=> b!7043205 m!7755670))

(declare-fun m!7755672 () Bool)

(assert (=> b!7043205 m!7755672))

(declare-fun m!7755674 () Bool)

(assert (=> d!2199176 m!7755674))

(declare-fun m!7755676 () Bool)

(assert (=> d!2199176 m!7755676))

(declare-fun m!7755678 () Bool)

(assert (=> d!2199176 m!7755678))

(assert (=> b!7042701 d!2199176))

(assert (=> b!7042701 d!2199126))

(declare-fun d!2199178 () Bool)

(declare-fun c!1311179 () Bool)

(assert (=> d!2199178 (= c!1311179 (isEmpty!39622 (tail!13610 (_1!37368 lt!2525435))))))

(declare-fun e!4234103 () Bool)

(assert (=> d!2199178 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525436 (head!14293 (_1!37368 lt!2525435))) (tail!13610 (_1!37368 lt!2525435))) e!4234103)))

(declare-fun b!7043207 () Bool)

(assert (=> b!7043207 (= e!4234103 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525436 (head!14293 (_1!37368 lt!2525435)))))))

(declare-fun b!7043208 () Bool)

(assert (=> b!7043208 (= e!4234103 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525436 (head!14293 (_1!37368 lt!2525435))) (head!14293 (tail!13610 (_1!37368 lt!2525435)))) (tail!13610 (tail!13610 (_1!37368 lt!2525435)))))))

(assert (= (and d!2199178 c!1311179) b!7043207))

(assert (= (and d!2199178 (not c!1311179)) b!7043208))

(assert (=> d!2199178 m!7754682))

(assert (=> d!2199178 m!7755302))

(assert (=> b!7043207 m!7754680))

(declare-fun m!7755680 () Bool)

(assert (=> b!7043207 m!7755680))

(assert (=> b!7043208 m!7754682))

(assert (=> b!7043208 m!7755306))

(assert (=> b!7043208 m!7754680))

(assert (=> b!7043208 m!7755306))

(declare-fun m!7755682 () Bool)

(assert (=> b!7043208 m!7755682))

(assert (=> b!7043208 m!7754682))

(assert (=> b!7043208 m!7755310))

(assert (=> b!7043208 m!7755682))

(assert (=> b!7043208 m!7755310))

(declare-fun m!7755684 () Bool)

(assert (=> b!7043208 m!7755684))

(assert (=> b!7042559 d!2199178))

(declare-fun bs!1873662 () Bool)

(declare-fun d!2199180 () Bool)

(assert (= bs!1873662 (and d!2199180 b!7042428)))

(declare-fun lambda!417299 () Int)

(assert (=> bs!1873662 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417299 lambda!417186))))

(declare-fun bs!1873663 () Bool)

(assert (= bs!1873663 (and d!2199180 d!2199160)))

(assert (=> bs!1873663 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 s!7408)) (= lambda!417299 lambda!417297))))

(declare-fun bs!1873664 () Bool)

(assert (= bs!1873664 (and d!2199180 d!2198992)))

(assert (=> bs!1873664 (= lambda!417299 lambda!417282)))

(declare-fun bs!1873665 () Bool)

(assert (= bs!1873665 (and d!2199180 d!2198984)))

(assert (=> bs!1873665 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (t!381788 s!7408))) (= lambda!417299 lambda!417281))))

(declare-fun bs!1873666 () Bool)

(assert (= bs!1873666 (and d!2199180 d!2199028)))

(assert (=> bs!1873666 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (t!381788 s!7408))) (= lambda!417299 lambda!417286))))

(declare-fun bs!1873667 () Bool)

(assert (= bs!1873667 (and d!2199180 d!2199096)))

(assert (=> bs!1873667 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (= lambda!417299 lambda!417295))))

(declare-fun bs!1873668 () Bool)

(assert (= bs!1873668 (and d!2199180 d!2198788)))

(assert (=> bs!1873668 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417299 lambda!417239))))

(declare-fun bs!1873669 () Bool)

(assert (= bs!1873669 (and d!2199180 d!2198802)))

(assert (=> bs!1873669 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417299 lambda!417240))))

(assert (=> d!2199180 true))

(assert (=> d!2199180 (= (derivationStepZipper!2952 lt!2525436 (head!14293 (_1!37368 lt!2525435))) (flatMap!2443 lt!2525436 lambda!417299))))

(declare-fun bs!1873670 () Bool)

(assert (= bs!1873670 d!2199180))

(declare-fun m!7755686 () Bool)

(assert (=> bs!1873670 m!7755686))

(assert (=> b!7042559 d!2199180))

(assert (=> b!7042559 d!2198994))

(assert (=> b!7042559 d!2198996))

(declare-fun d!2199182 () Bool)

(assert (=> d!2199182 (= (map!15806 z1!570 lambda!417248) (choose!53499 z1!570 lambda!417248))))

(declare-fun bs!1873671 () Bool)

(assert (= bs!1873671 d!2199182))

(declare-fun m!7755688 () Bool)

(assert (=> bs!1873671 m!7755688))

(assert (=> d!2198810 d!2199182))

(declare-fun d!2199184 () Bool)

(assert (=> d!2199184 (= (isEmpty!39622 (_2!37368 lt!2525435)) (is-Nil!67893 (_2!37368 lt!2525435)))))

(assert (=> d!2198828 d!2199184))

(declare-fun b!7043209 () Bool)

(declare-fun e!4234108 () (Set Context!12984))

(declare-fun call!639771 () (Set Context!12984))

(declare-fun call!639767 () (Set Context!12984))

(assert (=> b!7043209 (= e!4234108 (set.union call!639771 call!639767))))

(declare-fun d!2199186 () Bool)

(declare-fun c!1311184 () Bool)

(assert (=> d!2199186 (= c!1311184 (and (is-ElementMatch!17496 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (= (c!1310942 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (h!74341 s!7408))))))

(declare-fun e!4234107 () (Set Context!12984))

(assert (=> d!2199186 (= (derivationStepZipperDown!2160 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))) (ite c!1311003 lt!2525427 (Context!12985 call!639687)) (h!74341 s!7408)) e!4234107)))

(declare-fun bm!639762 () Bool)

(declare-fun call!639768 () (Set Context!12984))

(assert (=> bm!639762 (= call!639767 call!639768)))

(declare-fun c!1311181 () Bool)

(declare-fun c!1311183 () Bool)

(declare-fun call!639770 () List!68016)

(declare-fun bm!639763 () Bool)

(declare-fun c!1311182 () Bool)

(assert (=> bm!639763 (= call!639768 (derivationStepZipperDown!2160 (ite c!1311181 (regOne!35505 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (ite c!1311182 (regTwo!35504 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (ite c!1311183 (regOne!35504 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (reg!17825 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))) (ite (or c!1311181 c!1311182) (ite c!1311003 lt!2525427 (Context!12985 call!639687)) (Context!12985 call!639770)) (h!74341 s!7408)))))

(declare-fun b!7043210 () Bool)

(assert (=> b!7043210 (= e!4234107 (set.insert (ite c!1311003 lt!2525427 (Context!12985 call!639687)) (as set.empty (Set Context!12984))))))

(declare-fun b!7043211 () Bool)

(declare-fun e!4234106 () (Set Context!12984))

(assert (=> b!7043211 (= e!4234107 e!4234106)))

(assert (=> b!7043211 (= c!1311181 (is-Union!17496 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(declare-fun b!7043212 () Bool)

(declare-fun e!4234104 () (Set Context!12984))

(declare-fun call!639769 () (Set Context!12984))

(assert (=> b!7043212 (= e!4234104 call!639769)))

(declare-fun b!7043213 () Bool)

(declare-fun e!4234105 () (Set Context!12984))

(assert (=> b!7043213 (= e!4234105 call!639769)))

(declare-fun b!7043214 () Bool)

(declare-fun e!4234109 () Bool)

(assert (=> b!7043214 (= c!1311182 e!4234109)))

(declare-fun res!2875385 () Bool)

(assert (=> b!7043214 (=> (not res!2875385) (not e!4234109))))

(assert (=> b!7043214 (= res!2875385 (is-Concat!26341 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(assert (=> b!7043214 (= e!4234106 e!4234108)))

(declare-fun b!7043215 () Bool)

(assert (=> b!7043215 (= e!4234104 (as set.empty (Set Context!12984)))))

(declare-fun bm!639764 () Bool)

(declare-fun call!639772 () List!68016)

(assert (=> bm!639764 (= call!639771 (derivationStepZipperDown!2160 (ite c!1311181 (regTwo!35505 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (regOne!35504 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))) (ite c!1311181 (ite c!1311003 lt!2525427 (Context!12985 call!639687)) (Context!12985 call!639772)) (h!74341 s!7408)))))

(declare-fun b!7043216 () Bool)

(declare-fun c!1311180 () Bool)

(assert (=> b!7043216 (= c!1311180 (is-Star!17496 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(assert (=> b!7043216 (= e!4234105 e!4234104)))

(declare-fun b!7043217 () Bool)

(assert (=> b!7043217 (= e!4234108 e!4234105)))

(assert (=> b!7043217 (= c!1311183 (is-Concat!26341 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(declare-fun b!7043218 () Bool)

(assert (=> b!7043218 (= e!4234106 (set.union call!639768 call!639771))))

(declare-fun bm!639765 () Bool)

(assert (=> bm!639765 (= call!639770 call!639772)))

(declare-fun bm!639766 () Bool)

(assert (=> bm!639766 (= call!639769 call!639767)))

(declare-fun b!7043219 () Bool)

(assert (=> b!7043219 (= e!4234109 (nullable!7207 (regOne!35504 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))))

(declare-fun bm!639767 () Bool)

(assert (=> bm!639767 (= call!639772 ($colon$colon!2595 (exprs!6992 (ite c!1311003 lt!2525427 (Context!12985 call!639687))) (ite (or c!1311182 c!1311183) (regTwo!35504 (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (ite c!1311003 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))))

(assert (= (and d!2199186 c!1311184) b!7043210))

(assert (= (and d!2199186 (not c!1311184)) b!7043211))

(assert (= (and b!7043211 c!1311181) b!7043218))

(assert (= (and b!7043211 (not c!1311181)) b!7043214))

(assert (= (and b!7043214 res!2875385) b!7043219))

(assert (= (and b!7043214 c!1311182) b!7043209))

(assert (= (and b!7043214 (not c!1311182)) b!7043217))

(assert (= (and b!7043217 c!1311183) b!7043213))

(assert (= (and b!7043217 (not c!1311183)) b!7043216))

(assert (= (and b!7043216 c!1311180) b!7043212))

(assert (= (and b!7043216 (not c!1311180)) b!7043215))

(assert (= (or b!7043213 b!7043212) bm!639765))

(assert (= (or b!7043213 b!7043212) bm!639766))

(assert (= (or b!7043209 bm!639766) bm!639762))

(assert (= (or b!7043209 bm!639765) bm!639767))

(assert (= (or b!7043218 bm!639762) bm!639763))

(assert (= (or b!7043218 b!7043209) bm!639764))

(declare-fun m!7755690 () Bool)

(assert (=> b!7043210 m!7755690))

(declare-fun m!7755692 () Bool)

(assert (=> bm!639767 m!7755692))

(declare-fun m!7755694 () Bool)

(assert (=> b!7043219 m!7755694))

(declare-fun m!7755696 () Bool)

(assert (=> bm!639763 m!7755696))

(declare-fun m!7755698 () Bool)

(assert (=> bm!639764 m!7755698))

(assert (=> bm!639679 d!2199186))

(declare-fun d!2199188 () Bool)

(assert (=> d!2199188 (= (nullable!7207 (h!74340 (exprs!6992 lt!2525434))) (nullableFct!2747 (h!74340 (exprs!6992 lt!2525434))))))

(declare-fun bs!1873672 () Bool)

(assert (= bs!1873672 d!2199188))

(declare-fun m!7755700 () Bool)

(assert (=> bs!1873672 m!7755700))

(assert (=> b!7042590 d!2199188))

(declare-fun b!7043221 () Bool)

(declare-fun e!4234110 () List!68016)

(assert (=> b!7043221 (= e!4234110 (Cons!67892 (h!74340 (t!381787 lt!2525424)) (++!15567 (t!381787 (t!381787 lt!2525424)) (exprs!6992 ct2!306))))))

(declare-fun d!2199190 () Bool)

(declare-fun e!4234111 () Bool)

(assert (=> d!2199190 e!4234111))

(declare-fun res!2875386 () Bool)

(assert (=> d!2199190 (=> (not res!2875386) (not e!4234111))))

(declare-fun lt!2525724 () List!68016)

(assert (=> d!2199190 (= res!2875386 (= (content!13592 lt!2525724) (set.union (content!13592 (t!381787 lt!2525424)) (content!13592 (exprs!6992 ct2!306)))))))

(assert (=> d!2199190 (= lt!2525724 e!4234110)))

(declare-fun c!1311185 () Bool)

(assert (=> d!2199190 (= c!1311185 (is-Nil!67892 (t!381787 lt!2525424)))))

(assert (=> d!2199190 (= (++!15567 (t!381787 lt!2525424) (exprs!6992 ct2!306)) lt!2525724)))

(declare-fun b!7043220 () Bool)

(assert (=> b!7043220 (= e!4234110 (exprs!6992 ct2!306))))

(declare-fun b!7043223 () Bool)

(assert (=> b!7043223 (= e!4234111 (or (not (= (exprs!6992 ct2!306) Nil!67892)) (= lt!2525724 (t!381787 lt!2525424))))))

(declare-fun b!7043222 () Bool)

(declare-fun res!2875387 () Bool)

(assert (=> b!7043222 (=> (not res!2875387) (not e!4234111))))

(assert (=> b!7043222 (= res!2875387 (= (size!41100 lt!2525724) (+ (size!41100 (t!381787 lt!2525424)) (size!41100 (exprs!6992 ct2!306)))))))

(assert (= (and d!2199190 c!1311185) b!7043220))

(assert (= (and d!2199190 (not c!1311185)) b!7043221))

(assert (= (and d!2199190 res!2875386) b!7043222))

(assert (= (and b!7043222 res!2875387) b!7043223))

(declare-fun m!7755702 () Bool)

(assert (=> b!7043221 m!7755702))

(declare-fun m!7755704 () Bool)

(assert (=> d!2199190 m!7755704))

(assert (=> d!2199190 m!7755664))

(assert (=> d!2199190 m!7754692))

(declare-fun m!7755706 () Bool)

(assert (=> b!7043222 m!7755706))

(assert (=> b!7043222 m!7755574))

(assert (=> b!7043222 m!7754698))

(assert (=> b!7042623 d!2199190))

(declare-fun d!2199192 () Bool)

(declare-fun res!2875388 () Bool)

(declare-fun e!4234112 () Bool)

(assert (=> d!2199192 (=> res!2875388 e!4234112)))

(assert (=> d!2199192 (= res!2875388 (is-Nil!67892 (exprs!6992 ct2!306)))))

(assert (=> d!2199192 (= (forall!16423 (exprs!6992 ct2!306) lambda!417249) e!4234112)))

(declare-fun b!7043224 () Bool)

(declare-fun e!4234113 () Bool)

(assert (=> b!7043224 (= e!4234112 e!4234113)))

(declare-fun res!2875389 () Bool)

(assert (=> b!7043224 (=> (not res!2875389) (not e!4234113))))

(assert (=> b!7043224 (= res!2875389 (dynLambda!27475 lambda!417249 (h!74340 (exprs!6992 ct2!306))))))

(declare-fun b!7043225 () Bool)

(assert (=> b!7043225 (= e!4234113 (forall!16423 (t!381787 (exprs!6992 ct2!306)) lambda!417249))))

(assert (= (and d!2199192 (not res!2875388)) b!7043224))

(assert (= (and b!7043224 res!2875389) b!7043225))

(declare-fun b_lambda!267421 () Bool)

(assert (=> (not b_lambda!267421) (not b!7043224)))

(declare-fun m!7755708 () Bool)

(assert (=> b!7043224 m!7755708))

(declare-fun m!7755710 () Bool)

(assert (=> b!7043225 m!7755710))

(assert (=> d!2198812 d!2199192))

(declare-fun b!7043238 () Bool)

(declare-fun e!4234122 () Context!12984)

(assert (=> b!7043238 (= e!4234122 (getWitness!1525 (t!381789 (toList!10839 lt!2525428)) lambda!417183))))

(declare-fun b!7043239 () Bool)

(declare-fun e!4234124 () Bool)

(declare-fun lt!2525729 () Context!12984)

(assert (=> b!7043239 (= e!4234124 (contains!20469 (toList!10839 lt!2525428) lt!2525729))))

(declare-fun b!7043240 () Bool)

(declare-fun e!4234125 () Context!12984)

(assert (=> b!7043240 (= e!4234125 e!4234122)))

(declare-fun c!1311190 () Bool)

(assert (=> b!7043240 (= c!1311190 (is-Cons!67894 (toList!10839 lt!2525428)))))

(declare-fun b!7043241 () Bool)

(declare-fun lt!2525730 () Unit!161672)

(declare-fun Unit!161676 () Unit!161672)

(assert (=> b!7043241 (= lt!2525730 Unit!161676)))

(assert (=> b!7043241 false))

(declare-fun head!14295 (List!68018) Context!12984)

(assert (=> b!7043241 (= e!4234122 (head!14295 (toList!10839 lt!2525428)))))

(declare-fun d!2199194 () Bool)

(assert (=> d!2199194 e!4234124))

(declare-fun res!2875395 () Bool)

(assert (=> d!2199194 (=> (not res!2875395) (not e!4234124))))

(assert (=> d!2199194 (= res!2875395 (dynLambda!27468 lambda!417183 lt!2525729))))

(assert (=> d!2199194 (= lt!2525729 e!4234125)))

(declare-fun c!1311191 () Bool)

(declare-fun e!4234123 () Bool)

(assert (=> d!2199194 (= c!1311191 e!4234123)))

(declare-fun res!2875394 () Bool)

(assert (=> d!2199194 (=> (not res!2875394) (not e!4234123))))

(assert (=> d!2199194 (= res!2875394 (is-Cons!67894 (toList!10839 lt!2525428)))))

(assert (=> d!2199194 (exists!3444 (toList!10839 lt!2525428) lambda!417183)))

(assert (=> d!2199194 (= (getWitness!1525 (toList!10839 lt!2525428) lambda!417183) lt!2525729)))

(declare-fun b!7043242 () Bool)

(assert (=> b!7043242 (= e!4234125 (h!74342 (toList!10839 lt!2525428)))))

(declare-fun b!7043243 () Bool)

(assert (=> b!7043243 (= e!4234123 (dynLambda!27468 lambda!417183 (h!74342 (toList!10839 lt!2525428))))))

(assert (= (and d!2199194 res!2875394) b!7043243))

(assert (= (and d!2199194 c!1311191) b!7043242))

(assert (= (and d!2199194 (not c!1311191)) b!7043240))

(assert (= (and b!7043240 c!1311190) b!7043238))

(assert (= (and b!7043240 (not c!1311190)) b!7043241))

(assert (= (and d!2199194 res!2875395) b!7043239))

(declare-fun b_lambda!267423 () Bool)

(assert (=> (not b_lambda!267423) (not d!2199194)))

(declare-fun b_lambda!267425 () Bool)

(assert (=> (not b_lambda!267425) (not b!7043243)))

(assert (=> b!7043241 m!7754436))

(declare-fun m!7755712 () Bool)

(assert (=> b!7043241 m!7755712))

(assert (=> b!7043239 m!7754436))

(declare-fun m!7755714 () Bool)

(assert (=> b!7043239 m!7755714))

(declare-fun m!7755716 () Bool)

(assert (=> d!2199194 m!7755716))

(assert (=> d!2199194 m!7754436))

(declare-fun m!7755718 () Bool)

(assert (=> d!2199194 m!7755718))

(declare-fun m!7755720 () Bool)

(assert (=> b!7043243 m!7755720))

(declare-fun m!7755722 () Bool)

(assert (=> b!7043238 m!7755722))

(assert (=> d!2198768 d!2199194))

(assert (=> d!2198768 d!2198772))

(declare-fun d!2199196 () Bool)

(declare-fun lt!2525733 () Bool)

(assert (=> d!2199196 (= lt!2525733 (exists!3444 (toList!10839 lt!2525428) lambda!417183))))

(declare-fun choose!53500 ((Set Context!12984) Int) Bool)

(assert (=> d!2199196 (= lt!2525733 (choose!53500 lt!2525428 lambda!417183))))

(assert (=> d!2199196 (= (exists!3446 lt!2525428 lambda!417183) lt!2525733)))

(declare-fun bs!1873673 () Bool)

(assert (= bs!1873673 d!2199196))

(assert (=> bs!1873673 m!7754436))

(assert (=> bs!1873673 m!7754436))

(assert (=> bs!1873673 m!7755718))

(declare-fun m!7755724 () Bool)

(assert (=> bs!1873673 m!7755724))

(assert (=> d!2198768 d!2199196))

(declare-fun d!2199198 () Bool)

(declare-fun c!1311192 () Bool)

(assert (=> d!2199198 (= c!1311192 (isEmpty!39622 (tail!13610 (_2!37368 lt!2525435))))))

(declare-fun e!4234126 () Bool)

(assert (=> d!2199198 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525437 (head!14293 (_2!37368 lt!2525435))) (tail!13610 (_2!37368 lt!2525435))) e!4234126)))

(declare-fun b!7043244 () Bool)

(assert (=> b!7043244 (= e!4234126 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525437 (head!14293 (_2!37368 lt!2525435)))))))

(declare-fun b!7043245 () Bool)

(assert (=> b!7043245 (= e!4234126 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525437 (head!14293 (_2!37368 lt!2525435))) (head!14293 (tail!13610 (_2!37368 lt!2525435)))) (tail!13610 (tail!13610 (_2!37368 lt!2525435)))))))

(assert (= (and d!2199198 c!1311192) b!7043244))

(assert (= (and d!2199198 (not c!1311192)) b!7043245))

(assert (=> d!2199198 m!7754836))

(declare-fun m!7755726 () Bool)

(assert (=> d!2199198 m!7755726))

(assert (=> b!7043244 m!7754834))

(declare-fun m!7755728 () Bool)

(assert (=> b!7043244 m!7755728))

(assert (=> b!7043245 m!7754836))

(declare-fun m!7755730 () Bool)

(assert (=> b!7043245 m!7755730))

(assert (=> b!7043245 m!7754834))

(assert (=> b!7043245 m!7755730))

(declare-fun m!7755732 () Bool)

(assert (=> b!7043245 m!7755732))

(assert (=> b!7043245 m!7754836))

(declare-fun m!7755734 () Bool)

(assert (=> b!7043245 m!7755734))

(assert (=> b!7043245 m!7755732))

(assert (=> b!7043245 m!7755734))

(declare-fun m!7755736 () Bool)

(assert (=> b!7043245 m!7755736))

(assert (=> b!7042667 d!2199198))

(declare-fun bs!1873674 () Bool)

(declare-fun d!2199200 () Bool)

(assert (= bs!1873674 (and d!2199200 b!7042428)))

(declare-fun lambda!417300 () Int)

(assert (=> bs!1873674 (= (= (head!14293 (_2!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417300 lambda!417186))))

(declare-fun bs!1873675 () Bool)

(assert (= bs!1873675 (and d!2199200 d!2199160)))

(assert (=> bs!1873675 (= (= (head!14293 (_2!37368 lt!2525435)) (head!14293 s!7408)) (= lambda!417300 lambda!417297))))

(declare-fun bs!1873676 () Bool)

(assert (= bs!1873676 (and d!2199200 d!2198992)))

(assert (=> bs!1873676 (= (= (head!14293 (_2!37368 lt!2525435)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417300 lambda!417282))))

(declare-fun bs!1873677 () Bool)

(assert (= bs!1873677 (and d!2199200 d!2198984)))

(assert (=> bs!1873677 (= (= (head!14293 (_2!37368 lt!2525435)) (head!14293 (t!381788 s!7408))) (= lambda!417300 lambda!417281))))

(declare-fun bs!1873678 () Bool)

(assert (= bs!1873678 (and d!2199200 d!2199028)))

(assert (=> bs!1873678 (= (= (head!14293 (_2!37368 lt!2525435)) (head!14293 (t!381788 s!7408))) (= lambda!417300 lambda!417286))))

(declare-fun bs!1873679 () Bool)

(assert (= bs!1873679 (and d!2199200 d!2199180)))

(assert (=> bs!1873679 (= (= (head!14293 (_2!37368 lt!2525435)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417300 lambda!417299))))

(declare-fun bs!1873680 () Bool)

(assert (= bs!1873680 (and d!2199200 d!2199096)))

(assert (=> bs!1873680 (= (= (head!14293 (_2!37368 lt!2525435)) (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (= lambda!417300 lambda!417295))))

(declare-fun bs!1873681 () Bool)

(assert (= bs!1873681 (and d!2199200 d!2198788)))

(assert (=> bs!1873681 (= (= (head!14293 (_2!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417300 lambda!417239))))

(declare-fun bs!1873682 () Bool)

(assert (= bs!1873682 (and d!2199200 d!2198802)))

(assert (=> bs!1873682 (= (= (head!14293 (_2!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417300 lambda!417240))))

(assert (=> d!2199200 true))

(assert (=> d!2199200 (= (derivationStepZipper!2952 lt!2525437 (head!14293 (_2!37368 lt!2525435))) (flatMap!2443 lt!2525437 lambda!417300))))

(declare-fun bs!1873683 () Bool)

(assert (= bs!1873683 d!2199200))

(declare-fun m!7755738 () Bool)

(assert (=> bs!1873683 m!7755738))

(assert (=> b!7042667 d!2199200))

(declare-fun d!2199202 () Bool)

(assert (=> d!2199202 (= (head!14293 (_2!37368 lt!2525435)) (h!74341 (_2!37368 lt!2525435)))))

(assert (=> b!7042667 d!2199202))

(declare-fun d!2199204 () Bool)

(assert (=> d!2199204 (= (tail!13610 (_2!37368 lt!2525435)) (t!381788 (_2!37368 lt!2525435)))))

(assert (=> b!7042667 d!2199204))

(assert (=> d!2198848 d!2199174))

(declare-fun d!2199206 () Bool)

(declare-fun c!1311193 () Bool)

(assert (=> d!2199206 (= c!1311193 (isEmpty!39622 (tail!13610 s!7408)))))

(declare-fun e!4234127 () Bool)

(assert (=> d!2199206 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525439 (head!14293 s!7408)) (tail!13610 s!7408)) e!4234127)))

(declare-fun b!7043246 () Bool)

(assert (=> b!7043246 (= e!4234127 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525439 (head!14293 s!7408))))))

(declare-fun b!7043247 () Bool)

(assert (=> b!7043247 (= e!4234127 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525439 (head!14293 s!7408)) (head!14293 (tail!13610 s!7408))) (tail!13610 (tail!13610 s!7408))))))

(assert (= (and d!2199206 c!1311193) b!7043246))

(assert (= (and d!2199206 (not c!1311193)) b!7043247))

(assert (=> d!2199206 m!7754652))

(assert (=> d!2199206 m!7755640))

(assert (=> b!7043246 m!7754650))

(declare-fun m!7755740 () Bool)

(assert (=> b!7043246 m!7755740))

(assert (=> b!7043247 m!7754652))

(assert (=> b!7043247 m!7755644))

(assert (=> b!7043247 m!7754650))

(assert (=> b!7043247 m!7755644))

(declare-fun m!7755742 () Bool)

(assert (=> b!7043247 m!7755742))

(assert (=> b!7043247 m!7754652))

(assert (=> b!7043247 m!7755648))

(assert (=> b!7043247 m!7755742))

(assert (=> b!7043247 m!7755648))

(declare-fun m!7755744 () Bool)

(assert (=> b!7043247 m!7755744))

(assert (=> b!7042552 d!2199206))

(declare-fun bs!1873684 () Bool)

(declare-fun d!2199208 () Bool)

(assert (= bs!1873684 (and d!2199208 b!7042428)))

(declare-fun lambda!417301 () Int)

(assert (=> bs!1873684 (= (= (head!14293 s!7408) (h!74341 s!7408)) (= lambda!417301 lambda!417186))))

(declare-fun bs!1873685 () Bool)

(assert (= bs!1873685 (and d!2199208 d!2199160)))

(assert (=> bs!1873685 (= lambda!417301 lambda!417297)))

(declare-fun bs!1873686 () Bool)

(assert (= bs!1873686 (and d!2199208 d!2198992)))

(assert (=> bs!1873686 (= (= (head!14293 s!7408) (head!14293 (_1!37368 lt!2525435))) (= lambda!417301 lambda!417282))))

(declare-fun bs!1873687 () Bool)

(assert (= bs!1873687 (and d!2199208 d!2198984)))

(assert (=> bs!1873687 (= (= (head!14293 s!7408) (head!14293 (t!381788 s!7408))) (= lambda!417301 lambda!417281))))

(declare-fun bs!1873688 () Bool)

(assert (= bs!1873688 (and d!2199208 d!2199028)))

(assert (=> bs!1873688 (= (= (head!14293 s!7408) (head!14293 (t!381788 s!7408))) (= lambda!417301 lambda!417286))))

(declare-fun bs!1873689 () Bool)

(assert (= bs!1873689 (and d!2199208 d!2199180)))

(assert (=> bs!1873689 (= (= (head!14293 s!7408) (head!14293 (_1!37368 lt!2525435))) (= lambda!417301 lambda!417299))))

(declare-fun bs!1873690 () Bool)

(assert (= bs!1873690 (and d!2199208 d!2199096)))

(assert (=> bs!1873690 (= (= (head!14293 s!7408) (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (= lambda!417301 lambda!417295))))

(declare-fun bs!1873691 () Bool)

(assert (= bs!1873691 (and d!2199208 d!2199200)))

(assert (=> bs!1873691 (= (= (head!14293 s!7408) (head!14293 (_2!37368 lt!2525435))) (= lambda!417301 lambda!417300))))

(declare-fun bs!1873692 () Bool)

(assert (= bs!1873692 (and d!2199208 d!2198788)))

(assert (=> bs!1873692 (= (= (head!14293 s!7408) (h!74341 s!7408)) (= lambda!417301 lambda!417239))))

(declare-fun bs!1873693 () Bool)

(assert (= bs!1873693 (and d!2199208 d!2198802)))

(assert (=> bs!1873693 (= (= (head!14293 s!7408) (h!74341 s!7408)) (= lambda!417301 lambda!417240))))

(assert (=> d!2199208 true))

(assert (=> d!2199208 (= (derivationStepZipper!2952 lt!2525439 (head!14293 s!7408)) (flatMap!2443 lt!2525439 lambda!417301))))

(declare-fun bs!1873694 () Bool)

(assert (= bs!1873694 d!2199208))

(declare-fun m!7755746 () Bool)

(assert (=> bs!1873694 m!7755746))

(assert (=> b!7042552 d!2199208))

(assert (=> b!7042552 d!2199162))

(assert (=> b!7042552 d!2199164))

(declare-fun d!2199210 () Bool)

(declare-fun c!1311194 () Bool)

(assert (=> d!2199210 (= c!1311194 (isEmpty!39622 (tail!13610 (_1!37368 lt!2525435))))))

(declare-fun e!4234128 () Bool)

(assert (=> d!2199210 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525403 (head!14293 (_1!37368 lt!2525435))) (tail!13610 (_1!37368 lt!2525435))) e!4234128)))

(declare-fun b!7043248 () Bool)

(assert (=> b!7043248 (= e!4234128 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525403 (head!14293 (_1!37368 lt!2525435)))))))

(declare-fun b!7043249 () Bool)

(assert (=> b!7043249 (= e!4234128 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525403 (head!14293 (_1!37368 lt!2525435))) (head!14293 (tail!13610 (_1!37368 lt!2525435)))) (tail!13610 (tail!13610 (_1!37368 lt!2525435)))))))

(assert (= (and d!2199210 c!1311194) b!7043248))

(assert (= (and d!2199210 (not c!1311194)) b!7043249))

(assert (=> d!2199210 m!7754682))

(assert (=> d!2199210 m!7755302))

(assert (=> b!7043248 m!7754900))

(declare-fun m!7755748 () Bool)

(assert (=> b!7043248 m!7755748))

(assert (=> b!7043249 m!7754682))

(assert (=> b!7043249 m!7755306))

(assert (=> b!7043249 m!7754900))

(assert (=> b!7043249 m!7755306))

(declare-fun m!7755750 () Bool)

(assert (=> b!7043249 m!7755750))

(assert (=> b!7043249 m!7754682))

(assert (=> b!7043249 m!7755310))

(assert (=> b!7043249 m!7755750))

(assert (=> b!7043249 m!7755310))

(declare-fun m!7755752 () Bool)

(assert (=> b!7043249 m!7755752))

(assert (=> b!7042707 d!2199210))

(declare-fun bs!1873695 () Bool)

(declare-fun d!2199212 () Bool)

(assert (= bs!1873695 (and d!2199212 b!7042428)))

(declare-fun lambda!417302 () Int)

(assert (=> bs!1873695 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417302 lambda!417186))))

(declare-fun bs!1873696 () Bool)

(assert (= bs!1873696 (and d!2199212 d!2199160)))

(assert (=> bs!1873696 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 s!7408)) (= lambda!417302 lambda!417297))))

(declare-fun bs!1873697 () Bool)

(assert (= bs!1873697 (and d!2199212 d!2198992)))

(assert (=> bs!1873697 (= lambda!417302 lambda!417282)))

(declare-fun bs!1873698 () Bool)

(assert (= bs!1873698 (and d!2199212 d!2198984)))

(assert (=> bs!1873698 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (t!381788 s!7408))) (= lambda!417302 lambda!417281))))

(declare-fun bs!1873699 () Bool)

(assert (= bs!1873699 (and d!2199212 d!2199208)))

(assert (=> bs!1873699 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 s!7408)) (= lambda!417302 lambda!417301))))

(declare-fun bs!1873700 () Bool)

(assert (= bs!1873700 (and d!2199212 d!2199028)))

(assert (=> bs!1873700 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (t!381788 s!7408))) (= lambda!417302 lambda!417286))))

(declare-fun bs!1873701 () Bool)

(assert (= bs!1873701 (and d!2199212 d!2199180)))

(assert (=> bs!1873701 (= lambda!417302 lambda!417299)))

(declare-fun bs!1873702 () Bool)

(assert (= bs!1873702 (and d!2199212 d!2199096)))

(assert (=> bs!1873702 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (= lambda!417302 lambda!417295))))

(declare-fun bs!1873703 () Bool)

(assert (= bs!1873703 (and d!2199212 d!2199200)))

(assert (=> bs!1873703 (= (= (head!14293 (_1!37368 lt!2525435)) (head!14293 (_2!37368 lt!2525435))) (= lambda!417302 lambda!417300))))

(declare-fun bs!1873704 () Bool)

(assert (= bs!1873704 (and d!2199212 d!2198788)))

(assert (=> bs!1873704 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417302 lambda!417239))))

(declare-fun bs!1873705 () Bool)

(assert (= bs!1873705 (and d!2199212 d!2198802)))

(assert (=> bs!1873705 (= (= (head!14293 (_1!37368 lt!2525435)) (h!74341 s!7408)) (= lambda!417302 lambda!417240))))

(assert (=> d!2199212 true))

(assert (=> d!2199212 (= (derivationStepZipper!2952 lt!2525403 (head!14293 (_1!37368 lt!2525435))) (flatMap!2443 lt!2525403 lambda!417302))))

(declare-fun bs!1873706 () Bool)

(assert (= bs!1873706 d!2199212))

(declare-fun m!7755754 () Bool)

(assert (=> bs!1873706 m!7755754))

(assert (=> b!7042707 d!2199212))

(assert (=> b!7042707 d!2198994))

(assert (=> b!7042707 d!2198996))

(declare-fun d!2199214 () Bool)

(assert (=> d!2199214 (= (flatMap!2443 lt!2525407 lambda!417240) (choose!53485 lt!2525407 lambda!417240))))

(declare-fun bs!1873707 () Bool)

(assert (= bs!1873707 d!2199214))

(declare-fun m!7755756 () Bool)

(assert (=> bs!1873707 m!7755756))

(assert (=> d!2198802 d!2199214))

(declare-fun bs!1873708 () Bool)

(declare-fun d!2199216 () Bool)

(assert (= bs!1873708 (and d!2199216 b!7042438)))

(declare-fun lambda!417303 () Int)

(assert (=> bs!1873708 (not (= lambda!417303 lambda!417183))))

(declare-fun bs!1873709 () Bool)

(assert (= bs!1873709 (and d!2199216 d!2199086)))

(assert (=> bs!1873709 (not (= lambda!417303 lambda!417291))))

(declare-fun bs!1873710 () Bool)

(assert (= bs!1873710 (and d!2199216 d!2199030)))

(assert (=> bs!1873710 (= lambda!417303 lambda!417287)))

(declare-fun bs!1873711 () Bool)

(assert (= bs!1873711 (and d!2199216 d!2199002)))

(assert (=> bs!1873711 (= lambda!417303 lambda!417285)))

(declare-fun bs!1873712 () Bool)

(assert (= bs!1873712 (and d!2199216 d!2199088)))

(assert (=> bs!1873712 (not (= lambda!417303 lambda!417294))))

(declare-fun bs!1873713 () Bool)

(assert (= bs!1873713 (and d!2199216 d!2198764)))

(assert (=> bs!1873713 (not (= lambda!417303 lambda!417233))))

(declare-fun bs!1873714 () Bool)

(assert (= bs!1873714 (and d!2199216 d!2199060)))

(assert (=> bs!1873714 (= lambda!417303 lambda!417289)))

(declare-fun bs!1873715 () Bool)

(assert (= bs!1873715 (and d!2199216 d!2199074)))

(assert (=> bs!1873715 (= lambda!417303 lambda!417290)))

(declare-fun bs!1873716 () Bool)

(assert (= bs!1873716 (and d!2199216 d!2199166)))

(assert (=> bs!1873716 (= lambda!417303 lambda!417298)))

(declare-fun bs!1873717 () Bool)

(assert (= bs!1873717 (and d!2199216 d!2199120)))

(assert (=> bs!1873717 (= lambda!417303 lambda!417296)))

(declare-fun bs!1873718 () Bool)

(assert (= bs!1873718 (and d!2199216 d!2198766)))

(assert (=> bs!1873718 (not (= lambda!417303 lambda!417236))))

(assert (=> d!2199216 (= (nullableZipper!2602 lt!2525428) (exists!3446 lt!2525428 lambda!417303))))

(declare-fun bs!1873719 () Bool)

(assert (= bs!1873719 d!2199216))

(declare-fun m!7755758 () Bool)

(assert (=> bs!1873719 m!7755758))

(assert (=> b!7042615 d!2199216))

(assert (=> d!2198770 d!2199140))

(declare-fun d!2199218 () Bool)

(declare-fun c!1311195 () Bool)

(assert (=> d!2199218 (= c!1311195 (is-Nil!67894 lt!2525595))))

(declare-fun e!4234129 () (Set Context!12984))

(assert (=> d!2199218 (= (content!13591 lt!2525595) e!4234129)))

(declare-fun b!7043250 () Bool)

(assert (=> b!7043250 (= e!4234129 (as set.empty (Set Context!12984)))))

(declare-fun b!7043251 () Bool)

(assert (=> b!7043251 (= e!4234129 (set.union (set.insert (h!74342 lt!2525595) (as set.empty (Set Context!12984))) (content!13591 (t!381789 lt!2525595))))))

(assert (= (and d!2199218 c!1311195) b!7043250))

(assert (= (and d!2199218 (not c!1311195)) b!7043251))

(declare-fun m!7755760 () Bool)

(assert (=> b!7043251 m!7755760))

(declare-fun m!7755762 () Bool)

(assert (=> b!7043251 m!7755762))

(assert (=> b!7042555 d!2199218))

(declare-fun b!7043252 () Bool)

(declare-fun e!4234134 () (Set Context!12984))

(declare-fun call!639777 () (Set Context!12984))

(declare-fun call!639773 () (Set Context!12984))

(assert (=> b!7043252 (= e!4234134 (set.union call!639777 call!639773))))

(declare-fun d!2199220 () Bool)

(declare-fun c!1311200 () Bool)

(assert (=> d!2199220 (= c!1311200 (and (is-ElementMatch!17496 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (= (c!1310942 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (h!74341 s!7408))))))

(declare-fun e!4234133 () (Set Context!12984))

(assert (=> d!2199220 (= (derivationStepZipperDown!2160 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))) (ite c!1310995 lt!2525431 (Context!12985 call!639681)) (h!74341 s!7408)) e!4234133)))

(declare-fun bm!639768 () Bool)

(declare-fun call!639774 () (Set Context!12984))

(assert (=> bm!639768 (= call!639773 call!639774)))

(declare-fun c!1311199 () Bool)

(declare-fun c!1311197 () Bool)

(declare-fun call!639776 () List!68016)

(declare-fun c!1311198 () Bool)

(declare-fun bm!639769 () Bool)

(assert (=> bm!639769 (= call!639774 (derivationStepZipperDown!2160 (ite c!1311197 (regOne!35505 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (ite c!1311198 (regTwo!35504 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (ite c!1311199 (regOne!35504 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (reg!17825 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))) (ite (or c!1311197 c!1311198) (ite c!1310995 lt!2525431 (Context!12985 call!639681)) (Context!12985 call!639776)) (h!74341 s!7408)))))

(declare-fun b!7043253 () Bool)

(assert (=> b!7043253 (= e!4234133 (set.insert (ite c!1310995 lt!2525431 (Context!12985 call!639681)) (as set.empty (Set Context!12984))))))

(declare-fun b!7043254 () Bool)

(declare-fun e!4234132 () (Set Context!12984))

(assert (=> b!7043254 (= e!4234133 e!4234132)))

(assert (=> b!7043254 (= c!1311197 (is-Union!17496 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(declare-fun b!7043255 () Bool)

(declare-fun e!4234130 () (Set Context!12984))

(declare-fun call!639775 () (Set Context!12984))

(assert (=> b!7043255 (= e!4234130 call!639775)))

(declare-fun b!7043256 () Bool)

(declare-fun e!4234131 () (Set Context!12984))

(assert (=> b!7043256 (= e!4234131 call!639775)))

(declare-fun b!7043257 () Bool)

(declare-fun e!4234135 () Bool)

(assert (=> b!7043257 (= c!1311198 e!4234135)))

(declare-fun res!2875396 () Bool)

(assert (=> b!7043257 (=> (not res!2875396) (not e!4234135))))

(assert (=> b!7043257 (= res!2875396 (is-Concat!26341 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(assert (=> b!7043257 (= e!4234132 e!4234134)))

(declare-fun b!7043258 () Bool)

(assert (=> b!7043258 (= e!4234130 (as set.empty (Set Context!12984)))))

(declare-fun bm!639770 () Bool)

(declare-fun call!639778 () List!68016)

(assert (=> bm!639770 (= call!639777 (derivationStepZipperDown!2160 (ite c!1311197 (regTwo!35505 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (regOne!35504 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))) (ite c!1311197 (ite c!1310995 lt!2525431 (Context!12985 call!639681)) (Context!12985 call!639778)) (h!74341 s!7408)))))

(declare-fun b!7043259 () Bool)

(declare-fun c!1311196 () Bool)

(assert (=> b!7043259 (= c!1311196 (is-Star!17496 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(assert (=> b!7043259 (= e!4234131 e!4234130)))

(declare-fun b!7043260 () Bool)

(assert (=> b!7043260 (= e!4234134 e!4234131)))

(assert (=> b!7043260 (= c!1311199 (is-Concat!26341 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))))))

(declare-fun b!7043261 () Bool)

(assert (=> b!7043261 (= e!4234132 (set.union call!639774 call!639777))))

(declare-fun bm!639771 () Bool)

(assert (=> bm!639771 (= call!639776 call!639778)))

(declare-fun bm!639772 () Bool)

(assert (=> bm!639772 (= call!639775 call!639773)))

(declare-fun b!7043262 () Bool)

(assert (=> b!7043262 (= e!4234135 (nullable!7207 (regOne!35504 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))))

(declare-fun bm!639773 () Bool)

(assert (=> bm!639773 (= call!639778 ($colon$colon!2595 (exprs!6992 (ite c!1310995 lt!2525431 (Context!12985 call!639681))) (ite (or c!1311198 c!1311199) (regTwo!35504 (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426))))) (ite c!1310995 (regTwo!35505 (h!74340 (exprs!6992 lt!2525426))) (regOne!35504 (h!74340 (exprs!6992 lt!2525426)))))))))

(assert (= (and d!2199220 c!1311200) b!7043253))

(assert (= (and d!2199220 (not c!1311200)) b!7043254))

(assert (= (and b!7043254 c!1311197) b!7043261))

(assert (= (and b!7043254 (not c!1311197)) b!7043257))

(assert (= (and b!7043257 res!2875396) b!7043262))

(assert (= (and b!7043257 c!1311198) b!7043252))

(assert (= (and b!7043257 (not c!1311198)) b!7043260))

(assert (= (and b!7043260 c!1311199) b!7043256))

(assert (= (and b!7043260 (not c!1311199)) b!7043259))

(assert (= (and b!7043259 c!1311196) b!7043255))

(assert (= (and b!7043259 (not c!1311196)) b!7043258))

(assert (= (or b!7043256 b!7043255) bm!639771))

(assert (= (or b!7043256 b!7043255) bm!639772))

(assert (= (or b!7043252 bm!639772) bm!639768))

(assert (= (or b!7043252 bm!639771) bm!639773))

(assert (= (or b!7043261 bm!639768) bm!639769))

(assert (= (or b!7043261 b!7043252) bm!639770))

(declare-fun m!7755764 () Bool)

(assert (=> b!7043253 m!7755764))

(declare-fun m!7755766 () Bool)

(assert (=> bm!639773 m!7755766))

(declare-fun m!7755768 () Bool)

(assert (=> b!7043262 m!7755768))

(declare-fun m!7755770 () Bool)

(assert (=> bm!639769 m!7755770))

(declare-fun m!7755772 () Bool)

(assert (=> bm!639770 m!7755772))

(assert (=> bm!639673 d!2199220))

(declare-fun d!2199222 () Bool)

(assert (=> d!2199222 true))

(declare-fun setRes!49394 () Bool)

(assert (=> d!2199222 setRes!49394))

(declare-fun condSetEmpty!49394 () Bool)

(declare-fun res!2875397 () (Set Context!12984))

(assert (=> d!2199222 (= condSetEmpty!49394 (= res!2875397 (as set.empty (Set Context!12984))))))

(assert (=> d!2199222 (= (choose!53485 lt!2525407 lambda!417186) res!2875397)))

(declare-fun setIsEmpty!49394 () Bool)

(assert (=> setIsEmpty!49394 setRes!49394))

(declare-fun setNonEmpty!49394 () Bool)

(declare-fun e!4234136 () Bool)

(declare-fun setElem!49394 () Context!12984)

(declare-fun tp!1937623 () Bool)

(assert (=> setNonEmpty!49394 (= setRes!49394 (and tp!1937623 (inv!86600 setElem!49394) e!4234136))))

(declare-fun setRest!49394 () (Set Context!12984))

(assert (=> setNonEmpty!49394 (= res!2875397 (set.union (set.insert setElem!49394 (as set.empty (Set Context!12984))) setRest!49394))))

(declare-fun b!7043263 () Bool)

(declare-fun tp!1937622 () Bool)

(assert (=> b!7043263 (= e!4234136 tp!1937622)))

(assert (= (and d!2199222 condSetEmpty!49394) setIsEmpty!49394))

(assert (= (and d!2199222 (not condSetEmpty!49394)) setNonEmpty!49394))

(assert (= setNonEmpty!49394 b!7043263))

(declare-fun m!7755774 () Bool)

(assert (=> setNonEmpty!49394 m!7755774))

(assert (=> d!2198796 d!2199222))

(assert (=> d!2198850 d!2199004))

(assert (=> bs!1873501 d!2198798))

(declare-fun d!2199224 () Bool)

(declare-fun res!2875398 () Bool)

(declare-fun e!4234137 () Bool)

(assert (=> d!2199224 (=> res!2875398 e!4234137)))

(assert (=> d!2199224 (= res!2875398 (is-Nil!67892 (exprs!6992 setElem!49381)))))

(assert (=> d!2199224 (= (forall!16423 (exprs!6992 setElem!49381) lambda!417243) e!4234137)))

(declare-fun b!7043264 () Bool)

(declare-fun e!4234138 () Bool)

(assert (=> b!7043264 (= e!4234137 e!4234138)))

(declare-fun res!2875399 () Bool)

(assert (=> b!7043264 (=> (not res!2875399) (not e!4234138))))

(assert (=> b!7043264 (= res!2875399 (dynLambda!27475 lambda!417243 (h!74340 (exprs!6992 setElem!49381))))))

(declare-fun b!7043265 () Bool)

(assert (=> b!7043265 (= e!4234138 (forall!16423 (t!381787 (exprs!6992 setElem!49381)) lambda!417243))))

(assert (= (and d!2199224 (not res!2875398)) b!7043264))

(assert (= (and b!7043264 res!2875399) b!7043265))

(declare-fun b_lambda!267427 () Bool)

(assert (=> (not b_lambda!267427) (not b!7043264)))

(declare-fun m!7755776 () Bool)

(assert (=> b!7043264 m!7755776))

(declare-fun m!7755778 () Bool)

(assert (=> b!7043265 m!7755778))

(assert (=> d!2198804 d!2199224))

(declare-fun b!7043266 () Bool)

(declare-fun e!4234143 () (Set Context!12984))

(declare-fun call!639783 () (Set Context!12984))

(declare-fun call!639779 () (Set Context!12984))

(assert (=> b!7043266 (= e!4234143 (set.union call!639783 call!639779))))

(declare-fun d!2199226 () Bool)

(declare-fun c!1311205 () Bool)

(assert (=> d!2199226 (= c!1311205 (and (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525427))) (= (c!1310942 (h!74340 (exprs!6992 lt!2525427))) (h!74341 s!7408))))))

(declare-fun e!4234142 () (Set Context!12984))

(assert (=> d!2199226 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525427)) (Context!12985 (t!381787 (exprs!6992 lt!2525427))) (h!74341 s!7408)) e!4234142)))

(declare-fun bm!639774 () Bool)

(declare-fun call!639780 () (Set Context!12984))

(assert (=> bm!639774 (= call!639779 call!639780)))

(declare-fun bm!639775 () Bool)

(declare-fun c!1311204 () Bool)

(declare-fun c!1311202 () Bool)

(declare-fun c!1311203 () Bool)

(declare-fun call!639782 () List!68016)

(assert (=> bm!639775 (= call!639780 (derivationStepZipperDown!2160 (ite c!1311202 (regOne!35505 (h!74340 (exprs!6992 lt!2525427))) (ite c!1311203 (regTwo!35504 (h!74340 (exprs!6992 lt!2525427))) (ite c!1311204 (regOne!35504 (h!74340 (exprs!6992 lt!2525427))) (reg!17825 (h!74340 (exprs!6992 lt!2525427)))))) (ite (or c!1311202 c!1311203) (Context!12985 (t!381787 (exprs!6992 lt!2525427))) (Context!12985 call!639782)) (h!74341 s!7408)))))

(declare-fun b!7043267 () Bool)

(assert (=> b!7043267 (= e!4234142 (set.insert (Context!12985 (t!381787 (exprs!6992 lt!2525427))) (as set.empty (Set Context!12984))))))

(declare-fun b!7043268 () Bool)

(declare-fun e!4234141 () (Set Context!12984))

(assert (=> b!7043268 (= e!4234142 e!4234141)))

(assert (=> b!7043268 (= c!1311202 (is-Union!17496 (h!74340 (exprs!6992 lt!2525427))))))

(declare-fun b!7043269 () Bool)

(declare-fun e!4234139 () (Set Context!12984))

(declare-fun call!639781 () (Set Context!12984))

(assert (=> b!7043269 (= e!4234139 call!639781)))

(declare-fun b!7043270 () Bool)

(declare-fun e!4234140 () (Set Context!12984))

(assert (=> b!7043270 (= e!4234140 call!639781)))

(declare-fun b!7043271 () Bool)

(declare-fun e!4234144 () Bool)

(assert (=> b!7043271 (= c!1311203 e!4234144)))

(declare-fun res!2875400 () Bool)

(assert (=> b!7043271 (=> (not res!2875400) (not e!4234144))))

(assert (=> b!7043271 (= res!2875400 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525427))))))

(assert (=> b!7043271 (= e!4234141 e!4234143)))

(declare-fun b!7043272 () Bool)

(assert (=> b!7043272 (= e!4234139 (as set.empty (Set Context!12984)))))

(declare-fun call!639784 () List!68016)

(declare-fun bm!639776 () Bool)

(assert (=> bm!639776 (= call!639783 (derivationStepZipperDown!2160 (ite c!1311202 (regTwo!35505 (h!74340 (exprs!6992 lt!2525427))) (regOne!35504 (h!74340 (exprs!6992 lt!2525427)))) (ite c!1311202 (Context!12985 (t!381787 (exprs!6992 lt!2525427))) (Context!12985 call!639784)) (h!74341 s!7408)))))

(declare-fun b!7043273 () Bool)

(declare-fun c!1311201 () Bool)

(assert (=> b!7043273 (= c!1311201 (is-Star!17496 (h!74340 (exprs!6992 lt!2525427))))))

(assert (=> b!7043273 (= e!4234140 e!4234139)))

(declare-fun b!7043274 () Bool)

(assert (=> b!7043274 (= e!4234143 e!4234140)))

(assert (=> b!7043274 (= c!1311204 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525427))))))

(declare-fun b!7043275 () Bool)

(assert (=> b!7043275 (= e!4234141 (set.union call!639780 call!639783))))

(declare-fun bm!639777 () Bool)

(assert (=> bm!639777 (= call!639782 call!639784)))

(declare-fun bm!639778 () Bool)

(assert (=> bm!639778 (= call!639781 call!639779)))

(declare-fun b!7043276 () Bool)

(assert (=> b!7043276 (= e!4234144 (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525427)))))))

(declare-fun bm!639779 () Bool)

(assert (=> bm!639779 (= call!639784 ($colon$colon!2595 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525427)))) (ite (or c!1311203 c!1311204) (regTwo!35504 (h!74340 (exprs!6992 lt!2525427))) (h!74340 (exprs!6992 lt!2525427)))))))

(assert (= (and d!2199226 c!1311205) b!7043267))

(assert (= (and d!2199226 (not c!1311205)) b!7043268))

(assert (= (and b!7043268 c!1311202) b!7043275))

(assert (= (and b!7043268 (not c!1311202)) b!7043271))

(assert (= (and b!7043271 res!2875400) b!7043276))

(assert (= (and b!7043271 c!1311203) b!7043266))

(assert (= (and b!7043271 (not c!1311203)) b!7043274))

(assert (= (and b!7043274 c!1311204) b!7043270))

(assert (= (and b!7043274 (not c!1311204)) b!7043273))

(assert (= (and b!7043273 c!1311201) b!7043269))

(assert (= (and b!7043273 (not c!1311201)) b!7043272))

(assert (= (or b!7043270 b!7043269) bm!639777))

(assert (= (or b!7043270 b!7043269) bm!639778))

(assert (= (or b!7043266 bm!639778) bm!639774))

(assert (= (or b!7043266 bm!639777) bm!639779))

(assert (= (or b!7043275 bm!639774) bm!639775))

(assert (= (or b!7043275 b!7043266) bm!639776))

(declare-fun m!7755780 () Bool)

(assert (=> b!7043267 m!7755780))

(declare-fun m!7755782 () Bool)

(assert (=> bm!639779 m!7755782))

(declare-fun m!7755784 () Bool)

(assert (=> b!7043276 m!7755784))

(declare-fun m!7755786 () Bool)

(assert (=> bm!639775 m!7755786))

(declare-fun m!7755788 () Bool)

(assert (=> bm!639776 m!7755788))

(assert (=> bm!639657 d!2199226))

(declare-fun d!2199228 () Bool)

(declare-fun c!1311206 () Bool)

(assert (=> d!2199228 (= c!1311206 (isEmpty!39622 (tail!13610 (t!381788 s!7408))))))

(declare-fun e!4234145 () Bool)

(assert (=> d!2199228 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525442 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))) e!4234145)))

(declare-fun b!7043277 () Bool)

(assert (=> b!7043277 (= e!4234145 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525442 (head!14293 (t!381788 s!7408)))))))

(declare-fun b!7043278 () Bool)

(assert (=> b!7043278 (= e!4234145 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525442 (head!14293 (t!381788 s!7408))) (head!14293 (tail!13610 (t!381788 s!7408)))) (tail!13610 (tail!13610 (t!381788 s!7408)))))))

(assert (= (and d!2199228 c!1311206) b!7043277))

(assert (= (and d!2199228 (not c!1311206)) b!7043278))

(assert (=> d!2199228 m!7754670))

(assert (=> d!2199228 m!7755288))

(assert (=> b!7043277 m!7754906))

(declare-fun m!7755790 () Bool)

(assert (=> b!7043277 m!7755790))

(assert (=> b!7043278 m!7754670))

(assert (=> b!7043278 m!7755292))

(assert (=> b!7043278 m!7754906))

(assert (=> b!7043278 m!7755292))

(declare-fun m!7755792 () Bool)

(assert (=> b!7043278 m!7755792))

(assert (=> b!7043278 m!7754670))

(assert (=> b!7043278 m!7755296))

(assert (=> b!7043278 m!7755792))

(assert (=> b!7043278 m!7755296))

(declare-fun m!7755794 () Bool)

(assert (=> b!7043278 m!7755794))

(assert (=> b!7042709 d!2199228))

(declare-fun bs!1873720 () Bool)

(declare-fun d!2199230 () Bool)

(assert (= bs!1873720 (and d!2199230 b!7042428)))

(declare-fun lambda!417304 () Int)

(assert (=> bs!1873720 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417304 lambda!417186))))

(declare-fun bs!1873721 () Bool)

(assert (= bs!1873721 (and d!2199230 d!2199160)))

(assert (=> bs!1873721 (= (= (head!14293 (t!381788 s!7408)) (head!14293 s!7408)) (= lambda!417304 lambda!417297))))

(declare-fun bs!1873722 () Bool)

(assert (= bs!1873722 (and d!2199230 d!2199212)))

(assert (=> bs!1873722 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417304 lambda!417302))))

(declare-fun bs!1873723 () Bool)

(assert (= bs!1873723 (and d!2199230 d!2198992)))

(assert (=> bs!1873723 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417304 lambda!417282))))

(declare-fun bs!1873724 () Bool)

(assert (= bs!1873724 (and d!2199230 d!2198984)))

(assert (=> bs!1873724 (= lambda!417304 lambda!417281)))

(declare-fun bs!1873725 () Bool)

(assert (= bs!1873725 (and d!2199230 d!2199208)))

(assert (=> bs!1873725 (= (= (head!14293 (t!381788 s!7408)) (head!14293 s!7408)) (= lambda!417304 lambda!417301))))

(declare-fun bs!1873726 () Bool)

(assert (= bs!1873726 (and d!2199230 d!2199028)))

(assert (=> bs!1873726 (= lambda!417304 lambda!417286)))

(declare-fun bs!1873727 () Bool)

(assert (= bs!1873727 (and d!2199230 d!2199180)))

(assert (=> bs!1873727 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417304 lambda!417299))))

(declare-fun bs!1873728 () Bool)

(assert (= bs!1873728 (and d!2199230 d!2199096)))

(assert (=> bs!1873728 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (= lambda!417304 lambda!417295))))

(declare-fun bs!1873729 () Bool)

(assert (= bs!1873729 (and d!2199230 d!2199200)))

(assert (=> bs!1873729 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_2!37368 lt!2525435))) (= lambda!417304 lambda!417300))))

(declare-fun bs!1873730 () Bool)

(assert (= bs!1873730 (and d!2199230 d!2198788)))

(assert (=> bs!1873730 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417304 lambda!417239))))

(declare-fun bs!1873731 () Bool)

(assert (= bs!1873731 (and d!2199230 d!2198802)))

(assert (=> bs!1873731 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417304 lambda!417240))))

(assert (=> d!2199230 true))

(assert (=> d!2199230 (= (derivationStepZipper!2952 lt!2525442 (head!14293 (t!381788 s!7408))) (flatMap!2443 lt!2525442 lambda!417304))))

(declare-fun bs!1873732 () Bool)

(assert (= bs!1873732 d!2199230))

(declare-fun m!7755796 () Bool)

(assert (=> bs!1873732 m!7755796))

(assert (=> b!7042709 d!2199230))

(assert (=> b!7042709 d!2198986))

(assert (=> b!7042709 d!2198988))

(assert (=> d!2198774 d!2199004))

(declare-fun bs!1873733 () Bool)

(declare-fun d!2199232 () Bool)

(assert (= bs!1873733 (and d!2199232 b!7042438)))

(declare-fun lambda!417305 () Int)

(assert (=> bs!1873733 (not (= lambda!417305 lambda!417183))))

(declare-fun bs!1873734 () Bool)

(assert (= bs!1873734 (and d!2199232 d!2199086)))

(assert (=> bs!1873734 (not (= lambda!417305 lambda!417291))))

(declare-fun bs!1873735 () Bool)

(assert (= bs!1873735 (and d!2199232 d!2199030)))

(assert (=> bs!1873735 (= lambda!417305 lambda!417287)))

(declare-fun bs!1873736 () Bool)

(assert (= bs!1873736 (and d!2199232 d!2199002)))

(assert (=> bs!1873736 (= lambda!417305 lambda!417285)))

(declare-fun bs!1873737 () Bool)

(assert (= bs!1873737 (and d!2199232 d!2199088)))

(assert (=> bs!1873737 (not (= lambda!417305 lambda!417294))))

(declare-fun bs!1873738 () Bool)

(assert (= bs!1873738 (and d!2199232 d!2199216)))

(assert (=> bs!1873738 (= lambda!417305 lambda!417303)))

(declare-fun bs!1873739 () Bool)

(assert (= bs!1873739 (and d!2199232 d!2198764)))

(assert (=> bs!1873739 (not (= lambda!417305 lambda!417233))))

(declare-fun bs!1873740 () Bool)

(assert (= bs!1873740 (and d!2199232 d!2199060)))

(assert (=> bs!1873740 (= lambda!417305 lambda!417289)))

(declare-fun bs!1873741 () Bool)

(assert (= bs!1873741 (and d!2199232 d!2199074)))

(assert (=> bs!1873741 (= lambda!417305 lambda!417290)))

(declare-fun bs!1873742 () Bool)

(assert (= bs!1873742 (and d!2199232 d!2199166)))

(assert (=> bs!1873742 (= lambda!417305 lambda!417298)))

(declare-fun bs!1873743 () Bool)

(assert (= bs!1873743 (and d!2199232 d!2199120)))

(assert (=> bs!1873743 (= lambda!417305 lambda!417296)))

(declare-fun bs!1873744 () Bool)

(assert (= bs!1873744 (and d!2199232 d!2198766)))

(assert (=> bs!1873744 (not (= lambda!417305 lambda!417236))))

(assert (=> d!2199232 (= (nullableZipper!2602 lt!2525436) (exists!3446 lt!2525436 lambda!417305))))

(declare-fun bs!1873745 () Bool)

(assert (= bs!1873745 d!2199232))

(declare-fun m!7755798 () Bool)

(assert (=> bs!1873745 m!7755798))

(assert (=> b!7042558 d!2199232))

(declare-fun bs!1873746 () Bool)

(declare-fun d!2199234 () Bool)

(assert (= bs!1873746 (and d!2199234 b!7042438)))

(declare-fun lambda!417306 () Int)

(assert (=> bs!1873746 (not (= lambda!417306 lambda!417183))))

(declare-fun bs!1873747 () Bool)

(assert (= bs!1873747 (and d!2199234 d!2199086)))

(assert (=> bs!1873747 (not (= lambda!417306 lambda!417291))))

(declare-fun bs!1873748 () Bool)

(assert (= bs!1873748 (and d!2199234 d!2199030)))

(assert (=> bs!1873748 (= lambda!417306 lambda!417287)))

(declare-fun bs!1873749 () Bool)

(assert (= bs!1873749 (and d!2199234 d!2199002)))

(assert (=> bs!1873749 (= lambda!417306 lambda!417285)))

(declare-fun bs!1873750 () Bool)

(assert (= bs!1873750 (and d!2199234 d!2199088)))

(assert (=> bs!1873750 (not (= lambda!417306 lambda!417294))))

(declare-fun bs!1873751 () Bool)

(assert (= bs!1873751 (and d!2199234 d!2199216)))

(assert (=> bs!1873751 (= lambda!417306 lambda!417303)))

(declare-fun bs!1873752 () Bool)

(assert (= bs!1873752 (and d!2199234 d!2198764)))

(assert (=> bs!1873752 (not (= lambda!417306 lambda!417233))))

(declare-fun bs!1873753 () Bool)

(assert (= bs!1873753 (and d!2199234 d!2199060)))

(assert (=> bs!1873753 (= lambda!417306 lambda!417289)))

(declare-fun bs!1873754 () Bool)

(assert (= bs!1873754 (and d!2199234 d!2199166)))

(assert (=> bs!1873754 (= lambda!417306 lambda!417298)))

(declare-fun bs!1873755 () Bool)

(assert (= bs!1873755 (and d!2199234 d!2199120)))

(assert (=> bs!1873755 (= lambda!417306 lambda!417296)))

(declare-fun bs!1873756 () Bool)

(assert (= bs!1873756 (and d!2199234 d!2198766)))

(assert (=> bs!1873756 (not (= lambda!417306 lambda!417236))))

(declare-fun bs!1873757 () Bool)

(assert (= bs!1873757 (and d!2199234 d!2199074)))

(assert (=> bs!1873757 (= lambda!417306 lambda!417290)))

(declare-fun bs!1873758 () Bool)

(assert (= bs!1873758 (and d!2199234 d!2199232)))

(assert (=> bs!1873758 (= lambda!417306 lambda!417305)))

(assert (=> d!2199234 (= (nullableZipper!2602 lt!2525437) (exists!3446 lt!2525437 lambda!417306))))

(declare-fun bs!1873759 () Bool)

(assert (= bs!1873759 d!2199234))

(declare-fun m!7755800 () Bool)

(assert (=> bs!1873759 m!7755800))

(assert (=> b!7042666 d!2199234))

(declare-fun d!2199236 () Bool)

(declare-fun e!4234150 () Bool)

(assert (=> d!2199236 e!4234150))

(declare-fun res!2875403 () Bool)

(assert (=> d!2199236 (=> (not res!2875403) (not e!4234150))))

(declare-fun a!13311 () Context!12984)

(assert (=> d!2199236 (= res!2875403 (= lt!2525419 (dynLambda!27469 lambda!417184 a!13311)))))

(declare-fun e!4234151 () Bool)

(assert (=> d!2199236 (and (inv!86600 a!13311) e!4234151)))

(assert (=> d!2199236 (= (choose!53483 z1!570 lambda!417184 lt!2525419) a!13311)))

(declare-fun b!7043284 () Bool)

(declare-fun tp!1937626 () Bool)

(assert (=> b!7043284 (= e!4234151 tp!1937626)))

(declare-fun b!7043285 () Bool)

(assert (=> b!7043285 (= e!4234150 (set.member a!13311 z1!570))))

(assert (= d!2199236 b!7043284))

(assert (= (and d!2199236 res!2875403) b!7043285))

(declare-fun b_lambda!267429 () Bool)

(assert (=> (not b_lambda!267429) (not d!2199236)))

(declare-fun m!7755802 () Bool)

(assert (=> d!2199236 m!7755802))

(declare-fun m!7755804 () Bool)

(assert (=> d!2199236 m!7755804))

(declare-fun m!7755806 () Bool)

(assert (=> b!7043285 m!7755806))

(assert (=> d!2198782 d!2199236))

(declare-fun d!2199238 () Bool)

(assert (=> d!2199238 (= (map!15806 z1!570 lambda!417184) (choose!53499 z1!570 lambda!417184))))

(declare-fun bs!1873760 () Bool)

(assert (= bs!1873760 d!2199238))

(declare-fun m!7755808 () Bool)

(assert (=> bs!1873760 m!7755808))

(assert (=> d!2198782 d!2199238))

(declare-fun d!2199240 () Bool)

(declare-fun c!1311207 () Bool)

(assert (=> d!2199240 (= c!1311207 (isEmpty!39622 (_2!37368 (get!23796 lt!2525629))))))

(declare-fun e!4234152 () Bool)

(assert (=> d!2199240 (= (matchZipper!3036 lt!2525437 (_2!37368 (get!23796 lt!2525629))) e!4234152)))

(declare-fun b!7043286 () Bool)

(assert (=> b!7043286 (= e!4234152 (nullableZipper!2602 lt!2525437))))

(declare-fun b!7043287 () Bool)

(assert (=> b!7043287 (= e!4234152 (matchZipper!3036 (derivationStepZipper!2952 lt!2525437 (head!14293 (_2!37368 (get!23796 lt!2525629)))) (tail!13610 (_2!37368 (get!23796 lt!2525629)))))))

(assert (= (and d!2199240 c!1311207) b!7043286))

(assert (= (and d!2199240 (not c!1311207)) b!7043287))

(declare-fun m!7755810 () Bool)

(assert (=> d!2199240 m!7755810))

(assert (=> b!7043286 m!7754830))

(declare-fun m!7755812 () Bool)

(assert (=> b!7043287 m!7755812))

(assert (=> b!7043287 m!7755812))

(declare-fun m!7755814 () Bool)

(assert (=> b!7043287 m!7755814))

(declare-fun m!7755816 () Bool)

(assert (=> b!7043287 m!7755816))

(assert (=> b!7043287 m!7755814))

(assert (=> b!7043287 m!7755816))

(declare-fun m!7755818 () Bool)

(assert (=> b!7043287 m!7755818))

(assert (=> b!7042704 d!2199240))

(assert (=> b!7042704 d!2199126))

(assert (=> d!2198824 d!2199174))

(declare-fun d!2199242 () Bool)

(declare-fun c!1311208 () Bool)

(assert (=> d!2199242 (= c!1311208 (isEmpty!39622 (tail!13610 (t!381788 s!7408))))))

(declare-fun e!4234153 () Bool)

(assert (=> d!2199242 (= (matchZipper!3036 (derivationStepZipper!2952 lt!2525440 (head!14293 (t!381788 s!7408))) (tail!13610 (t!381788 s!7408))) e!4234153)))

(declare-fun b!7043288 () Bool)

(assert (=> b!7043288 (= e!4234153 (nullableZipper!2602 (derivationStepZipper!2952 lt!2525440 (head!14293 (t!381788 s!7408)))))))

(declare-fun b!7043289 () Bool)

(assert (=> b!7043289 (= e!4234153 (matchZipper!3036 (derivationStepZipper!2952 (derivationStepZipper!2952 lt!2525440 (head!14293 (t!381788 s!7408))) (head!14293 (tail!13610 (t!381788 s!7408)))) (tail!13610 (tail!13610 (t!381788 s!7408)))))))

(assert (= (and d!2199242 c!1311208) b!7043288))

(assert (= (and d!2199242 (not c!1311208)) b!7043289))

(assert (=> d!2199242 m!7754670))

(assert (=> d!2199242 m!7755288))

(assert (=> b!7043288 m!7754668))

(declare-fun m!7755820 () Bool)

(assert (=> b!7043288 m!7755820))

(assert (=> b!7043289 m!7754670))

(assert (=> b!7043289 m!7755292))

(assert (=> b!7043289 m!7754668))

(assert (=> b!7043289 m!7755292))

(declare-fun m!7755822 () Bool)

(assert (=> b!7043289 m!7755822))

(assert (=> b!7043289 m!7754670))

(assert (=> b!7043289 m!7755296))

(assert (=> b!7043289 m!7755822))

(assert (=> b!7043289 m!7755296))

(declare-fun m!7755824 () Bool)

(assert (=> b!7043289 m!7755824))

(assert (=> b!7042557 d!2199242))

(declare-fun bs!1873761 () Bool)

(declare-fun d!2199244 () Bool)

(assert (= bs!1873761 (and d!2199244 b!7042428)))

(declare-fun lambda!417307 () Int)

(assert (=> bs!1873761 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417307 lambda!417186))))

(declare-fun bs!1873762 () Bool)

(assert (= bs!1873762 (and d!2199244 d!2199160)))

(assert (=> bs!1873762 (= (= (head!14293 (t!381788 s!7408)) (head!14293 s!7408)) (= lambda!417307 lambda!417297))))

(declare-fun bs!1873763 () Bool)

(assert (= bs!1873763 (and d!2199244 d!2199212)))

(assert (=> bs!1873763 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417307 lambda!417302))))

(declare-fun bs!1873764 () Bool)

(assert (= bs!1873764 (and d!2199244 d!2198992)))

(assert (=> bs!1873764 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417307 lambda!417282))))

(declare-fun bs!1873765 () Bool)

(assert (= bs!1873765 (and d!2199244 d!2198984)))

(assert (=> bs!1873765 (= lambda!417307 lambda!417281)))

(declare-fun bs!1873766 () Bool)

(assert (= bs!1873766 (and d!2199244 d!2199208)))

(assert (=> bs!1873766 (= (= (head!14293 (t!381788 s!7408)) (head!14293 s!7408)) (= lambda!417307 lambda!417301))))

(declare-fun bs!1873767 () Bool)

(assert (= bs!1873767 (and d!2199244 d!2199028)))

(assert (=> bs!1873767 (= lambda!417307 lambda!417286)))

(declare-fun bs!1873768 () Bool)

(assert (= bs!1873768 (and d!2199244 d!2199180)))

(assert (=> bs!1873768 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_1!37368 lt!2525435))) (= lambda!417307 lambda!417299))))

(declare-fun bs!1873769 () Bool)

(assert (= bs!1873769 (and d!2199244 d!2199096)))

(assert (=> bs!1873769 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (Cons!67893 (h!74341 s!7408) (_1!37368 lt!2525435)))) (= lambda!417307 lambda!417295))))

(declare-fun bs!1873770 () Bool)

(assert (= bs!1873770 (and d!2199244 d!2199230)))

(assert (=> bs!1873770 (= lambda!417307 lambda!417304)))

(declare-fun bs!1873771 () Bool)

(assert (= bs!1873771 (and d!2199244 d!2199200)))

(assert (=> bs!1873771 (= (= (head!14293 (t!381788 s!7408)) (head!14293 (_2!37368 lt!2525435))) (= lambda!417307 lambda!417300))))

(declare-fun bs!1873772 () Bool)

(assert (= bs!1873772 (and d!2199244 d!2198788)))

(assert (=> bs!1873772 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417307 lambda!417239))))

(declare-fun bs!1873773 () Bool)

(assert (= bs!1873773 (and d!2199244 d!2198802)))

(assert (=> bs!1873773 (= (= (head!14293 (t!381788 s!7408)) (h!74341 s!7408)) (= lambda!417307 lambda!417240))))

(assert (=> d!2199244 true))

(assert (=> d!2199244 (= (derivationStepZipper!2952 lt!2525440 (head!14293 (t!381788 s!7408))) (flatMap!2443 lt!2525440 lambda!417307))))

(declare-fun bs!1873774 () Bool)

(assert (= bs!1873774 d!2199244))

(declare-fun m!7755826 () Bool)

(assert (=> bs!1873774 m!7755826))

(assert (=> b!7042557 d!2199244))

(assert (=> b!7042557 d!2198986))

(assert (=> b!7042557 d!2198988))

(declare-fun bs!1873775 () Bool)

(declare-fun d!2199246 () Bool)

(assert (= bs!1873775 (and d!2199246 b!7042438)))

(declare-fun lambda!417308 () Int)

(assert (=> bs!1873775 (not (= lambda!417308 lambda!417183))))

(declare-fun bs!1873776 () Bool)

(assert (= bs!1873776 (and d!2199246 d!2199086)))

(assert (=> bs!1873776 (not (= lambda!417308 lambda!417291))))

(declare-fun bs!1873777 () Bool)

(assert (= bs!1873777 (and d!2199246 d!2199030)))

(assert (=> bs!1873777 (= lambda!417308 lambda!417287)))

(declare-fun bs!1873778 () Bool)

(assert (= bs!1873778 (and d!2199246 d!2199002)))

(assert (=> bs!1873778 (= lambda!417308 lambda!417285)))

(declare-fun bs!1873779 () Bool)

(assert (= bs!1873779 (and d!2199246 d!2199088)))

(assert (=> bs!1873779 (not (= lambda!417308 lambda!417294))))

(declare-fun bs!1873780 () Bool)

(assert (= bs!1873780 (and d!2199246 d!2199216)))

(assert (=> bs!1873780 (= lambda!417308 lambda!417303)))

(declare-fun bs!1873781 () Bool)

(assert (= bs!1873781 (and d!2199246 d!2199060)))

(assert (=> bs!1873781 (= lambda!417308 lambda!417289)))

(declare-fun bs!1873782 () Bool)

(assert (= bs!1873782 (and d!2199246 d!2199166)))

(assert (=> bs!1873782 (= lambda!417308 lambda!417298)))

(declare-fun bs!1873783 () Bool)

(assert (= bs!1873783 (and d!2199246 d!2199120)))

(assert (=> bs!1873783 (= lambda!417308 lambda!417296)))

(declare-fun bs!1873784 () Bool)

(assert (= bs!1873784 (and d!2199246 d!2198766)))

(assert (=> bs!1873784 (not (= lambda!417308 lambda!417236))))

(declare-fun bs!1873785 () Bool)

(assert (= bs!1873785 (and d!2199246 d!2198764)))

(assert (=> bs!1873785 (not (= lambda!417308 lambda!417233))))

(declare-fun bs!1873786 () Bool)

(assert (= bs!1873786 (and d!2199246 d!2199234)))

(assert (=> bs!1873786 (= lambda!417308 lambda!417306)))

(declare-fun bs!1873787 () Bool)

(assert (= bs!1873787 (and d!2199246 d!2199074)))

(assert (=> bs!1873787 (= lambda!417308 lambda!417290)))

(declare-fun bs!1873788 () Bool)

(assert (= bs!1873788 (and d!2199246 d!2199232)))

(assert (=> bs!1873788 (= lambda!417308 lambda!417305)))

(assert (=> d!2199246 (= (nullableZipper!2602 lt!2525439) (exists!3446 lt!2525439 lambda!417308))))

(declare-fun bs!1873789 () Bool)

(assert (= bs!1873789 d!2199246))

(declare-fun m!7755828 () Bool)

(assert (=> bs!1873789 m!7755828))

(assert (=> b!7042551 d!2199246))

(declare-fun bs!1873790 () Bool)

(declare-fun d!2199248 () Bool)

(assert (= bs!1873790 (and d!2199248 b!7042438)))

(declare-fun lambda!417309 () Int)

(assert (=> bs!1873790 (not (= lambda!417309 lambda!417183))))

(declare-fun bs!1873791 () Bool)

(assert (= bs!1873791 (and d!2199248 d!2199086)))

(assert (=> bs!1873791 (not (= lambda!417309 lambda!417291))))

(declare-fun bs!1873792 () Bool)

(assert (= bs!1873792 (and d!2199248 d!2199030)))

(assert (=> bs!1873792 (= lambda!417309 lambda!417287)))

(declare-fun bs!1873793 () Bool)

(assert (= bs!1873793 (and d!2199248 d!2199002)))

(assert (=> bs!1873793 (= lambda!417309 lambda!417285)))

(declare-fun bs!1873794 () Bool)

(assert (= bs!1873794 (and d!2199248 d!2199088)))

(assert (=> bs!1873794 (not (= lambda!417309 lambda!417294))))

(declare-fun bs!1873795 () Bool)

(assert (= bs!1873795 (and d!2199248 d!2199216)))

(assert (=> bs!1873795 (= lambda!417309 lambda!417303)))

(declare-fun bs!1873796 () Bool)

(assert (= bs!1873796 (and d!2199248 d!2199246)))

(assert (=> bs!1873796 (= lambda!417309 lambda!417308)))

(declare-fun bs!1873797 () Bool)

(assert (= bs!1873797 (and d!2199248 d!2199060)))

(assert (=> bs!1873797 (= lambda!417309 lambda!417289)))

(declare-fun bs!1873798 () Bool)

(assert (= bs!1873798 (and d!2199248 d!2199166)))

(assert (=> bs!1873798 (= lambda!417309 lambda!417298)))

(declare-fun bs!1873799 () Bool)

(assert (= bs!1873799 (and d!2199248 d!2199120)))

(assert (=> bs!1873799 (= lambda!417309 lambda!417296)))

(declare-fun bs!1873800 () Bool)

(assert (= bs!1873800 (and d!2199248 d!2198766)))

(assert (=> bs!1873800 (not (= lambda!417309 lambda!417236))))

(declare-fun bs!1873801 () Bool)

(assert (= bs!1873801 (and d!2199248 d!2198764)))

(assert (=> bs!1873801 (not (= lambda!417309 lambda!417233))))

(declare-fun bs!1873802 () Bool)

(assert (= bs!1873802 (and d!2199248 d!2199234)))

(assert (=> bs!1873802 (= lambda!417309 lambda!417306)))

(declare-fun bs!1873803 () Bool)

(assert (= bs!1873803 (and d!2199248 d!2199074)))

(assert (=> bs!1873803 (= lambda!417309 lambda!417290)))

(declare-fun bs!1873804 () Bool)

(assert (= bs!1873804 (and d!2199248 d!2199232)))

(assert (=> bs!1873804 (= lambda!417309 lambda!417305)))

(assert (=> d!2199248 (= (nullableZipper!2602 lt!2525403) (exists!3446 lt!2525403 lambda!417309))))

(declare-fun bs!1873805 () Bool)

(assert (= bs!1873805 d!2199248))

(declare-fun m!7755830 () Bool)

(assert (=> bs!1873805 m!7755830))

(assert (=> b!7042706 d!2199248))

(declare-fun b!7043290 () Bool)

(declare-fun e!4234158 () (Set Context!12984))

(declare-fun call!639789 () (Set Context!12984))

(declare-fun call!639785 () (Set Context!12984))

(assert (=> b!7043290 (= e!4234158 (set.union call!639789 call!639785))))

(declare-fun d!2199250 () Bool)

(declare-fun c!1311213 () Bool)

(assert (=> d!2199250 (= c!1311213 (and (is-ElementMatch!17496 (h!74340 (exprs!6992 lt!2525431))) (= (c!1310942 (h!74340 (exprs!6992 lt!2525431))) (h!74341 s!7408))))))

(declare-fun e!4234157 () (Set Context!12984))

(assert (=> d!2199250 (= (derivationStepZipperDown!2160 (h!74340 (exprs!6992 lt!2525431)) (Context!12985 (t!381787 (exprs!6992 lt!2525431))) (h!74341 s!7408)) e!4234157)))

(declare-fun bm!639780 () Bool)

(declare-fun call!639786 () (Set Context!12984))

(assert (=> bm!639780 (= call!639785 call!639786)))

(declare-fun call!639788 () List!68016)

(declare-fun bm!639781 () Bool)

(declare-fun c!1311211 () Bool)

(declare-fun c!1311212 () Bool)

(declare-fun c!1311210 () Bool)

(assert (=> bm!639781 (= call!639786 (derivationStepZipperDown!2160 (ite c!1311210 (regOne!35505 (h!74340 (exprs!6992 lt!2525431))) (ite c!1311211 (regTwo!35504 (h!74340 (exprs!6992 lt!2525431))) (ite c!1311212 (regOne!35504 (h!74340 (exprs!6992 lt!2525431))) (reg!17825 (h!74340 (exprs!6992 lt!2525431)))))) (ite (or c!1311210 c!1311211) (Context!12985 (t!381787 (exprs!6992 lt!2525431))) (Context!12985 call!639788)) (h!74341 s!7408)))))

(declare-fun b!7043291 () Bool)

(assert (=> b!7043291 (= e!4234157 (set.insert (Context!12985 (t!381787 (exprs!6992 lt!2525431))) (as set.empty (Set Context!12984))))))

(declare-fun b!7043292 () Bool)

(declare-fun e!4234156 () (Set Context!12984))

(assert (=> b!7043292 (= e!4234157 e!4234156)))

(assert (=> b!7043292 (= c!1311210 (is-Union!17496 (h!74340 (exprs!6992 lt!2525431))))))

(declare-fun b!7043293 () Bool)

(declare-fun e!4234154 () (Set Context!12984))

(declare-fun call!639787 () (Set Context!12984))

(assert (=> b!7043293 (= e!4234154 call!639787)))

(declare-fun b!7043294 () Bool)

(declare-fun e!4234155 () (Set Context!12984))

(assert (=> b!7043294 (= e!4234155 call!639787)))

(declare-fun b!7043295 () Bool)

(declare-fun e!4234159 () Bool)

(assert (=> b!7043295 (= c!1311211 e!4234159)))

(declare-fun res!2875404 () Bool)

(assert (=> b!7043295 (=> (not res!2875404) (not e!4234159))))

(assert (=> b!7043295 (= res!2875404 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525431))))))

(assert (=> b!7043295 (= e!4234156 e!4234158)))

(declare-fun b!7043296 () Bool)

(assert (=> b!7043296 (= e!4234154 (as set.empty (Set Context!12984)))))

(declare-fun call!639790 () List!68016)

(declare-fun bm!639782 () Bool)

(assert (=> bm!639782 (= call!639789 (derivationStepZipperDown!2160 (ite c!1311210 (regTwo!35505 (h!74340 (exprs!6992 lt!2525431))) (regOne!35504 (h!74340 (exprs!6992 lt!2525431)))) (ite c!1311210 (Context!12985 (t!381787 (exprs!6992 lt!2525431))) (Context!12985 call!639790)) (h!74341 s!7408)))))

(declare-fun b!7043297 () Bool)

(declare-fun c!1311209 () Bool)

(assert (=> b!7043297 (= c!1311209 (is-Star!17496 (h!74340 (exprs!6992 lt!2525431))))))

(assert (=> b!7043297 (= e!4234155 e!4234154)))

(declare-fun b!7043298 () Bool)

(assert (=> b!7043298 (= e!4234158 e!4234155)))

(assert (=> b!7043298 (= c!1311212 (is-Concat!26341 (h!74340 (exprs!6992 lt!2525431))))))

(declare-fun b!7043299 () Bool)

(assert (=> b!7043299 (= e!4234156 (set.union call!639786 call!639789))))

(declare-fun bm!639783 () Bool)

(assert (=> bm!639783 (= call!639788 call!639790)))

(declare-fun bm!639784 () Bool)

(assert (=> bm!639784 (= call!639787 call!639785)))

(declare-fun b!7043300 () Bool)

(assert (=> b!7043300 (= e!4234159 (nullable!7207 (regOne!35504 (h!74340 (exprs!6992 lt!2525431)))))))

(declare-fun bm!639785 () Bool)

(assert (=> bm!639785 (= call!639790 ($colon$colon!2595 (exprs!6992 (Context!12985 (t!381787 (exprs!6992 lt!2525431)))) (ite (or c!1311211 c!1311212) (regTwo!35504 (h!74340 (exprs!6992 lt!2525431))) (h!74340 (exprs!6992 lt!2525431)))))))

(assert (= (and d!2199250 c!1311213) b!7043291))

(assert (= (and d!2199250 (not c!1311213)) b!7043292))

(assert (= (and b!7043292 c!1311210) b!7043299))

(assert (= (and b!7043292 (not c!1311210)) b!7043295))

(assert (= (and b!7043295 res!2875404) b!7043300))

(assert (= (and b!7043295 c!1311211) b!7043290))

(assert (= (and b!7043295 (not c!1311211)) b!7043298))

(assert (= (and b!7043298 c!1311212) b!7043294))

(assert (= (and b!7043298 (not c!1311212)) b!7043297))

(assert (= (and b!7043297 c!1311209) b!7043293))

(assert (= (and b!7043297 (not c!1311209)) b!7043296))

(assert (= (or b!7043294 b!7043293) bm!639783))

(assert (= (or b!7043294 b!7043293) bm!639784))

(assert (= (or b!7043290 bm!639784) bm!639780))

(assert (= (or b!7043290 bm!639783) bm!639785))

(assert (= (or b!7043299 bm!639780) bm!639781))

(assert (= (or b!7043299 b!7043290) bm!639782))

(declare-fun m!7755832 () Bool)

(assert (=> b!7043291 m!7755832))

(declare-fun m!7755834 () Bool)

(assert (=> bm!639785 m!7755834))

(declare-fun m!7755836 () Bool)

(assert (=> b!7043300 m!7755836))

(declare-fun m!7755838 () Bool)

(assert (=> bm!639781 m!7755838))

(declare-fun m!7755840 () Bool)

(assert (=> bm!639782 m!7755840))

(assert (=> bm!639658 d!2199250))

(assert (=> d!2198852 d!2199004))

(declare-fun d!2199252 () Bool)

(assert (=> d!2199252 (= ($colon$colon!2595 (exprs!6992 lt!2525427) (ite (or c!1311004 c!1311005) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426)))) (Cons!67892 (ite (or c!1311004 c!1311005) (regTwo!35504 (h!74340 (exprs!6992 lt!2525426))) (h!74340 (exprs!6992 lt!2525426))) (exprs!6992 lt!2525427)))))

(assert (=> bm!639682 d!2199252))

(assert (=> d!2198844 d!2199168))

(declare-fun d!2199254 () Bool)

(declare-fun c!1311214 () Bool)

(assert (=> d!2199254 (= c!1311214 (isEmpty!39622 Nil!67893))))

(declare-fun e!4234160 () Bool)

(assert (=> d!2199254 (= (matchZipper!3036 lt!2525403 Nil!67893) e!4234160)))

(declare-fun b!7043301 () Bool)

(assert (=> b!7043301 (= e!4234160 (nullableZipper!2602 lt!2525403))))

(declare-fun b!7043302 () Bool)

(assert (=> b!7043302 (= e!4234160 (matchZipper!3036 (derivationStepZipper!2952 lt!2525403 (head!14293 Nil!67893)) (tail!13610 Nil!67893)))))

(assert (= (and d!2199254 c!1311214) b!7043301))

(assert (= (and d!2199254 (not c!1311214)) b!7043302))

(declare-fun m!7755842 () Bool)

(assert (=> d!2199254 m!7755842))

(assert (=> b!7043301 m!7754898))

(declare-fun m!7755844 () Bool)

(assert (=> b!7043302 m!7755844))

(assert (=> b!7043302 m!7755844))

(declare-fun m!7755846 () Bool)

(assert (=> b!7043302 m!7755846))

(declare-fun m!7755848 () Bool)

(assert (=> b!7043302 m!7755848))

(assert (=> b!7043302 m!7755846))

(assert (=> b!7043302 m!7755848))

(declare-fun m!7755850 () Bool)

(assert (=> b!7043302 m!7755850))

(assert (=> d!2198844 d!2199254))

(declare-fun b!7043304 () Bool)

(declare-fun e!4234162 () List!68017)

(assert (=> b!7043304 (= e!4234162 (Cons!67893 (h!74341 Nil!67893) (++!15568 (t!381788 Nil!67893) (t!381788 s!7408))))))

(declare-fun b!7043305 () Bool)

(declare-fun res!2875406 () Bool)

(declare-fun e!4234161 () Bool)

(assert (=> b!7043305 (=> (not res!2875406) (not e!4234161))))

(declare-fun lt!2525734 () List!68017)

(assert (=> b!7043305 (= res!2875406 (= (size!41101 lt!2525734) (+ (size!41101 Nil!67893) (size!41101 (t!381788 s!7408)))))))

(declare-fun b!7043303 () Bool)

(assert (=> b!7043303 (= e!4234162 (t!381788 s!7408))))

(declare-fun d!2199256 () Bool)

(assert (=> d!2199256 e!4234161))

(declare-fun res!2875405 () Bool)

(assert (=> d!2199256 (=> (not res!2875405) (not e!4234161))))

(assert (=> d!2199256 (= res!2875405 (= (content!13593 lt!2525734) (set.union (content!13593 Nil!67893) (content!13593 (t!381788 s!7408)))))))

(assert (=> d!2199256 (= lt!2525734 e!4234162)))

(declare-fun c!1311215 () Bool)

(assert (=> d!2199256 (= c!1311215 (is-Nil!67893 Nil!67893))))

(assert (=> d!2199256 (= (++!15568 Nil!67893 (t!381788 s!7408)) lt!2525734)))

(declare-fun b!7043306 () Bool)

(assert (=> b!7043306 (= e!4234161 (or (not (= (t!381788 s!7408) Nil!67893)) (= lt!2525734 Nil!67893)))))

(assert (= (and d!2199256 c!1311215) b!7043303))

(assert (= (and d!2199256 (not c!1311215)) b!7043304))

(assert (= (and d!2199256 res!2875405) b!7043305))

(assert (= (and b!7043305 res!2875406) b!7043306))

(declare-fun m!7755852 () Bool)

(assert (=> b!7043304 m!7755852))

(declare-fun m!7755854 () Bool)

(assert (=> b!7043305 m!7755854))

(assert (=> b!7043305 m!7755390))

(declare-fun m!7755856 () Bool)

(assert (=> b!7043305 m!7755856))

(declare-fun m!7755858 () Bool)

(assert (=> d!2199256 m!7755858))

(assert (=> d!2199256 m!7755396))

(declare-fun m!7755860 () Bool)

(assert (=> d!2199256 m!7755860))

(assert (=> d!2198844 d!2199256))

(declare-fun b!7043319 () Bool)

(declare-fun e!4234165 () Bool)

(declare-fun tp!1937637 () Bool)

(assert (=> b!7043319 (= e!4234165 tp!1937637)))

(declare-fun b!7043320 () Bool)

(declare-fun tp!1937638 () Bool)

(declare-fun tp!1937639 () Bool)

(assert (=> b!7043320 (= e!4234165 (and tp!1937638 tp!1937639))))

(declare-fun b!7043317 () Bool)

(assert (=> b!7043317 (= e!4234165 tp_is_empty!44217)))

(assert (=> b!7042725 (= tp!1937585 e!4234165)))

(declare-fun b!7043318 () Bool)

(declare-fun tp!1937641 () Bool)

(declare-fun tp!1937640 () Bool)

(assert (=> b!7043318 (= e!4234165 (and tp!1937641 tp!1937640))))

(assert (= (and b!7042725 (is-ElementMatch!17496 (h!74340 (exprs!6992 ct2!306)))) b!7043317))

(assert (= (and b!7042725 (is-Concat!26341 (h!74340 (exprs!6992 ct2!306)))) b!7043318))

(assert (= (and b!7042725 (is-Star!17496 (h!74340 (exprs!6992 ct2!306)))) b!7043319))

(assert (= (and b!7042725 (is-Union!17496 (h!74340 (exprs!6992 ct2!306)))) b!7043320))

(declare-fun b!7043321 () Bool)

(declare-fun e!4234166 () Bool)

(declare-fun tp!1937642 () Bool)

(declare-fun tp!1937643 () Bool)

(assert (=> b!7043321 (= e!4234166 (and tp!1937642 tp!1937643))))

(assert (=> b!7042725 (= tp!1937586 e!4234166)))

(assert (= (and b!7042725 (is-Cons!67892 (t!381787 (exprs!6992 ct2!306)))) b!7043321))

(declare-fun b!7043324 () Bool)

(declare-fun e!4234167 () Bool)

(declare-fun tp!1937644 () Bool)

(assert (=> b!7043324 (= e!4234167 tp!1937644)))

(declare-fun b!7043325 () Bool)

(declare-fun tp!1937645 () Bool)

(declare-fun tp!1937646 () Bool)

(assert (=> b!7043325 (= e!4234167 (and tp!1937645 tp!1937646))))

(declare-fun b!7043322 () Bool)

(assert (=> b!7043322 (= e!4234167 tp_is_empty!44217)))

(assert (=> b!7042719 (= tp!1937580 e!4234167)))

(declare-fun b!7043323 () Bool)

(declare-fun tp!1937648 () Bool)

(declare-fun tp!1937647 () Bool)

(assert (=> b!7043323 (= e!4234167 (and tp!1937648 tp!1937647))))

(assert (= (and b!7042719 (is-ElementMatch!17496 (h!74340 (exprs!6992 setElem!49381)))) b!7043322))

(assert (= (and b!7042719 (is-Concat!26341 (h!74340 (exprs!6992 setElem!49381)))) b!7043323))

(assert (= (and b!7042719 (is-Star!17496 (h!74340 (exprs!6992 setElem!49381)))) b!7043324))

(assert (= (and b!7042719 (is-Union!17496 (h!74340 (exprs!6992 setElem!49381)))) b!7043325))

(declare-fun b!7043326 () Bool)

(declare-fun e!4234168 () Bool)

(declare-fun tp!1937649 () Bool)

(declare-fun tp!1937650 () Bool)

(assert (=> b!7043326 (= e!4234168 (and tp!1937649 tp!1937650))))

(assert (=> b!7042719 (= tp!1937581 e!4234168)))

(assert (= (and b!7042719 (is-Cons!67892 (t!381787 (exprs!6992 setElem!49381)))) b!7043326))

(declare-fun b!7043327 () Bool)

(declare-fun e!4234169 () Bool)

(declare-fun tp!1937651 () Bool)

(declare-fun tp!1937652 () Bool)

(assert (=> b!7043327 (= e!4234169 (and tp!1937651 tp!1937652))))

(assert (=> b!7042730 (= tp!1937591 e!4234169)))

(assert (= (and b!7042730 (is-Cons!67892 (exprs!6992 setElem!49387))) b!7043327))

(declare-fun condSetEmpty!49395 () Bool)

(assert (=> setNonEmpty!49387 (= condSetEmpty!49395 (= setRest!49387 (as set.empty (Set Context!12984))))))

(declare-fun setRes!49395 () Bool)

(assert (=> setNonEmpty!49387 (= tp!1937592 setRes!49395)))

(declare-fun setIsEmpty!49395 () Bool)

(assert (=> setIsEmpty!49395 setRes!49395))

(declare-fun setNonEmpty!49395 () Bool)

(declare-fun e!4234170 () Bool)

(declare-fun tp!1937654 () Bool)

(declare-fun setElem!49395 () Context!12984)

(assert (=> setNonEmpty!49395 (= setRes!49395 (and tp!1937654 (inv!86600 setElem!49395) e!4234170))))

(declare-fun setRest!49395 () (Set Context!12984))

(assert (=> setNonEmpty!49395 (= setRest!49387 (set.union (set.insert setElem!49395 (as set.empty (Set Context!12984))) setRest!49395))))

(declare-fun b!7043328 () Bool)

(declare-fun tp!1937653 () Bool)

(assert (=> b!7043328 (= e!4234170 tp!1937653)))

(assert (= (and setNonEmpty!49387 condSetEmpty!49395) setIsEmpty!49395))

(assert (= (and setNonEmpty!49387 (not condSetEmpty!49395)) setNonEmpty!49395))

(assert (= setNonEmpty!49395 b!7043328))

(declare-fun m!7755862 () Bool)

(assert (=> setNonEmpty!49395 m!7755862))

(declare-fun b!7043329 () Bool)

(declare-fun e!4234171 () Bool)

(declare-fun tp!1937655 () Bool)

(assert (=> b!7043329 (= e!4234171 (and tp_is_empty!44217 tp!1937655))))

(assert (=> b!7042724 (= tp!1937584 e!4234171)))

(assert (= (and b!7042724 (is-Cons!67893 (t!381788 (t!381788 s!7408)))) b!7043329))

(declare-fun b_lambda!267431 () Bool)

(assert (= b_lambda!267417 (or b!7042427 b_lambda!267431)))

(declare-fun bs!1873806 () Bool)

(declare-fun d!2199258 () Bool)

(assert (= bs!1873806 (and d!2199258 b!7042427)))

(assert (=> bs!1873806 (= (dynLambda!27475 lambda!417185 (h!74340 (++!15567 lt!2525424 (exprs!6992 ct2!306)))) (validRegex!8940 (h!74340 (++!15567 lt!2525424 (exprs!6992 ct2!306)))))))

(declare-fun m!7755864 () Bool)

(assert (=> bs!1873806 m!7755864))

(assert (=> b!7043043 d!2199258))

(declare-fun b_lambda!267433 () Bool)

(assert (= b_lambda!267423 (or b!7042438 b_lambda!267433)))

(declare-fun bs!1873807 () Bool)

(declare-fun d!2199260 () Bool)

(assert (= bs!1873807 (and d!2199260 b!7042438)))

(assert (=> bs!1873807 (= (dynLambda!27468 lambda!417183 lt!2525729) (matchZipper!3036 (set.insert lt!2525729 (as set.empty (Set Context!12984))) s!7408))))

(declare-fun m!7755866 () Bool)

(assert (=> bs!1873807 m!7755866))

(assert (=> bs!1873807 m!7755866))

(declare-fun m!7755868 () Bool)

(assert (=> bs!1873807 m!7755868))

(assert (=> d!2199194 d!2199260))

(declare-fun b_lambda!267435 () Bool)

(assert (= b_lambda!267427 (or d!2198804 b_lambda!267435)))

(declare-fun bs!1873808 () Bool)

(declare-fun d!2199262 () Bool)

(assert (= bs!1873808 (and d!2199262 d!2198804)))

(assert (=> bs!1873808 (= (dynLambda!27475 lambda!417243 (h!74340 (exprs!6992 setElem!49381))) (validRegex!8940 (h!74340 (exprs!6992 setElem!49381))))))

(declare-fun m!7755870 () Bool)

(assert (=> bs!1873808 m!7755870))

(assert (=> b!7043264 d!2199262))

(declare-fun b_lambda!267437 () Bool)

(assert (= b_lambda!267407 (or b!7042428 b_lambda!267437)))

(assert (=> d!2198998 d!2198858))

(declare-fun b_lambda!267439 () Bool)

(assert (= b_lambda!267421 (or d!2198812 b_lambda!267439)))

(declare-fun bs!1873809 () Bool)

(declare-fun d!2199264 () Bool)

(assert (= bs!1873809 (and d!2199264 d!2198812)))

(assert (=> bs!1873809 (= (dynLambda!27475 lambda!417249 (h!74340 (exprs!6992 ct2!306))) (validRegex!8940 (h!74340 (exprs!6992 ct2!306))))))

(declare-fun m!7755872 () Bool)

(assert (=> bs!1873809 m!7755872))

(assert (=> b!7043224 d!2199264))

(declare-fun b_lambda!267441 () Bool)

(assert (= b_lambda!267425 (or b!7042438 b_lambda!267441)))

(declare-fun bs!1873810 () Bool)

(declare-fun d!2199266 () Bool)

(assert (= bs!1873810 (and d!2199266 b!7042438)))

(assert (=> bs!1873810 (= (dynLambda!27468 lambda!417183 (h!74342 (toList!10839 lt!2525428))) (matchZipper!3036 (set.insert (h!74342 (toList!10839 lt!2525428)) (as set.empty (Set Context!12984))) s!7408))))

(declare-fun m!7755874 () Bool)

(assert (=> bs!1873810 m!7755874))

(assert (=> bs!1873810 m!7755874))

(declare-fun m!7755876 () Bool)

(assert (=> bs!1873810 m!7755876))

(assert (=> b!7043243 d!2199266))

(declare-fun b_lambda!267443 () Bool)

(assert (= b_lambda!267413 (or b!7042427 b_lambda!267443)))

(declare-fun bs!1873811 () Bool)

(declare-fun d!2199268 () Bool)

(assert (= bs!1873811 (and d!2199268 b!7042427)))

(assert (=> bs!1873811 (= (dynLambda!27475 lambda!417185 (h!74340 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306)))) (validRegex!8940 (h!74340 (++!15567 (exprs!6992 lt!2525426) (exprs!6992 ct2!306)))))))

(declare-fun m!7755878 () Bool)

(assert (=> bs!1873811 m!7755878))

(assert (=> b!7043039 d!2199268))

(declare-fun b_lambda!267445 () Bool)

(assert (= b_lambda!267429 (or b!7042427 b_lambda!267445)))

(declare-fun bs!1873812 () Bool)

(declare-fun d!2199270 () Bool)

(assert (= bs!1873812 (and d!2199270 b!7042427)))

(declare-fun lt!2525735 () Unit!161672)

(assert (=> bs!1873812 (= lt!2525735 (lemmaConcatPreservesForall!817 (exprs!6992 a!13311) (exprs!6992 ct2!306) lambda!417185))))

(assert (=> bs!1873812 (= (dynLambda!27469 lambda!417184 a!13311) (Context!12985 (++!15567 (exprs!6992 a!13311) (exprs!6992 ct2!306))))))

(declare-fun m!7755880 () Bool)

(assert (=> bs!1873812 m!7755880))

(declare-fun m!7755882 () Bool)

(assert (=> bs!1873812 m!7755882))

(assert (=> d!2199236 d!2199270))

(declare-fun b_lambda!267447 () Bool)

(assert (= b_lambda!267419 (or b!7042427 b_lambda!267447)))

(declare-fun bs!1873813 () Bool)

(declare-fun d!2199272 () Bool)

(assert (= bs!1873813 (and d!2199272 b!7042427)))

(assert (=> bs!1873813 (= (dynLambda!27475 lambda!417185 (h!74340 lt!2525424)) (validRegex!8940 (h!74340 lt!2525424)))))

(declare-fun m!7755884 () Bool)

(assert (=> bs!1873813 m!7755884))

(assert (=> b!7043045 d!2199272))

(declare-fun b_lambda!267449 () Bool)

(assert (= b_lambda!267415 (or b!7042427 b_lambda!267449)))

(declare-fun bs!1873814 () Bool)

(declare-fun d!2199274 () Bool)

(assert (= bs!1873814 (and d!2199274 b!7042427)))

(assert (=> bs!1873814 (= (dynLambda!27475 lambda!417185 (h!74340 (exprs!6992 lt!2525426))) (validRegex!8940 (h!74340 (exprs!6992 lt!2525426))))))

(assert (=> bs!1873814 m!7754886))

(assert (=> b!7043041 d!2199274))

(declare-fun b_lambda!267451 () Bool)

(assert (= b_lambda!267409 (or d!2198766 b_lambda!267451)))

(declare-fun bs!1873815 () Bool)

(declare-fun d!2199276 () Bool)

(assert (= bs!1873815 (and d!2199276 d!2198766)))

(assert (=> bs!1873815 (= (dynLambda!27468 lambda!417236 (h!74342 lt!2525417)) (not (dynLambda!27468 lambda!417183 (h!74342 lt!2525417))))))

(declare-fun b_lambda!267455 () Bool)

(assert (=> (not b_lambda!267455) (not bs!1873815)))

(declare-fun m!7755886 () Bool)

(assert (=> bs!1873815 m!7755886))

(assert (=> b!7042983 d!2199276))

(declare-fun b_lambda!267453 () Bool)

(assert (= b_lambda!267411 (or b!7042428 b_lambda!267453)))

(assert (=> d!2199016 d!2198864))

(push 1)

(assert (not d!2199240))

(assert (not b!7043265))

(assert (not b!7043080))

(assert (not bm!639781))

(assert (not b_lambda!267389))

(assert (not b!7043305))

(assert (not b!7043154))

(assert (not b!7043091))

(assert (not b!7043002))

(assert (not bs!1873807))

(assert (not d!2199028))

(assert (not b!7043247))

(assert (not b!7043325))

(assert (not d!2199156))

(assert (not b_lambda!267433))

(assert (not d!2199112))

(assert (not d!2199062))

(assert (not b!7042921))

(assert (not d!2199256))

(assert (not b!7043263))

(assert (not bm!639782))

(assert (not b!7043024))

(assert (not bm!639733))

(assert (not b!7043321))

(assert (not d!2199200))

(assert (not b!7043182))

(assert (not b!7043241))

(assert (not b!7043319))

(assert (not bm!639769))

(assert (not b!7043046))

(assert (not b_lambda!267387))

(assert (not b!7043246))

(assert (not bm!639740))

(assert (not b!7043142))

(assert (not d!2199124))

(assert (not b!7043195))

(assert (not bm!639741))

(assert (not b!7043205))

(assert (not d!2199064))

(assert (not b!7043327))

(assert (not d!2199152))

(assert (not bm!639785))

(assert (not b!7043051))

(assert (not b!7043078))

(assert (not bm!639750))

(assert (not bs!1873808))

(assert (not b!7043084))

(assert (not b!7043160))

(assert (not d!2199242))

(assert (not b!7043020))

(assert (not d!2199058))

(assert (not b!7043062))

(assert (not b!7043244))

(assert (not d!2199032))

(assert (not b!7043098))

(assert (not b!7043004))

(assert (not b!7043019))

(assert (not d!2199096))

(assert (not d!2199094))

(assert (not b!7043031))

(assert (not d!2198984))

(assert (not b!7042957))

(assert (not b!7043222))

(assert (not b!7043200))

(assert (not b!7043238))

(assert (not d!2199056))

(assert (not b!7043158))

(assert (not b!7043100))

(assert (not b!7043304))

(assert (not d!2198990))

(assert (not d!2199060))

(assert (not b!7043288))

(assert (not bs!1873809))

(assert (not d!2199136))

(assert (not b!7043278))

(assert (not d!2199088))

(assert (not b!7043000))

(assert (not b!7043027))

(assert (not bm!639714))

(assert (not b!7043276))

(assert (not d!2199166))

(assert (not b!7043082))

(assert (not b!7043249))

(assert (not b!7043049))

(assert (not b_lambda!267449))

(assert (not d!2199138))

(assert (not d!2199148))

(assert (not b!7043060))

(assert (not bm!639730))

(assert (not d!2199050))

(assert (not b!7043054))

(assert (not bm!639755))

(assert (not b!7043180))

(assert (not b!7043083))

(assert (not b!7043207))

(assert (not d!2198974))

(assert (not b!7043188))

(assert (not b!7043030))

(assert (not b!7042976))

(assert (not b_lambda!267431))

(assert (not b!7043221))

(assert (not b_lambda!267437))

(assert (not d!2199044))

(assert (not b!7042973))

(assert (not b!7042934))

(assert tp_is_empty!44217)

(assert (not d!2199168))

(assert (not b!7043284))

(assert (not d!2199196))

(assert (not b!7043102))

(assert (not b!7042978))

(assert (not b!7043324))

(assert (not b!7043189))

(assert (not d!2198972))

(assert (not d!2199030))

(assert (not b!7043070))

(assert (not b_lambda!267447))

(assert (not b_lambda!267439))

(assert (not bs!1873811))

(assert (not bm!639779))

(assert (not b!7043183))

(assert (not b!7043136))

(assert (not b!7043328))

(assert (not d!2199090))

(assert (not d!2199158))

(assert (not b!7042989))

(assert (not d!2199210))

(assert (not d!2199208))

(assert (not d!2199180))

(assert (not b!7043184))

(assert (not bm!639776))

(assert (not b_lambda!267445))

(assert (not bm!639715))

(assert (not b!7043026))

(assert (not b!7043185))

(assert (not b!7043032))

(assert (not bm!639758))

(assert (not b!7043042))

(assert (not bm!639763))

(assert (not b!7042972))

(assert (not b!7043016))

(assert (not bm!639757))

(assert (not b!7043033))

(assert (not b!7043277))

(assert (not b!7043067))

(assert (not d!2199154))

(assert (not bm!639725))

(assert (not b!7043286))

(assert (not b!7043197))

(assert (not b!7043173))

(assert (not b!7043289))

(assert (not d!2198998))

(assert (not b!7042984))

(assert (not bm!639773))

(assert (not b!7043052))

(assert (not b!7043204))

(assert (not b!7043044))

(assert (not setNonEmpty!49393))

(assert (not d!2199188))

(assert (not b!7043134))

(assert (not d!2198982))

(assert (not d!2199086))

(assert (not d!2199074))

(assert (not b!7043191))

(assert (not b!7043301))

(assert (not d!2199238))

(assert (not d!2199002))

(assert (not b!7043179))

(assert (not b!7043040))

(assert (not bm!639751))

(assert (not bm!639718))

(assert (not b!7043219))

(assert (not b_lambda!267435))

(assert (not d!2199034))

(assert (not b!7042974))

(assert (not b!7043239))

(assert (not b!7042977))

(assert (not b!7043150))

(assert (not d!2199230))

(assert (not d!2199206))

(assert (not b!7043323))

(assert (not b!7043149))

(assert (not b!7042994))

(assert (not d!2199254))

(assert (not b!7043198))

(assert (not b_lambda!267453))

(assert (not d!2199142))

(assert (not d!2198968))

(assert (not d!2199040))

(assert (not b!7043300))

(assert (not b!7043208))

(assert (not d!2199178))

(assert (not bm!639734))

(assert (not b!7043176))

(assert (not d!2199026))

(assert (not b_lambda!267451))

(assert (not b!7042987))

(assert (not b!7043015))

(assert (not bs!1873814))

(assert (not bm!639729))

(assert (not bm!639767))

(assert (not b_lambda!267385))

(assert (not d!2198970))

(assert (not d!2199228))

(assert (not b!7043175))

(assert (not b!7042975))

(assert (not b!7043248))

(assert (not b!7043141))

(assert (not bs!1873810))

(assert (not b!7043302))

(assert (not b!7043202))

(assert (not b!7043156))

(assert (not b!7043251))

(assert (not d!2199216))

(assert (not d!2199014))

(assert (not bm!639737))

(assert (not d!2198992))

(assert (not bm!639742))

(assert (not d!2199236))

(assert (not d!2199120))

(assert (not d!2199150))

(assert (not d!2199036))

(assert (not bs!1873812))

(assert (not b!7042991))

(assert (not bm!639726))

(assert (not d!2199244))

(assert (not bm!639764))

(assert (not bm!639754))

(assert (not bm!639747))

(assert (not b_lambda!267455))

(assert (not d!2199194))

(assert (not bm!639775))

(assert (not d!2199248))

(assert (not b!7043320))

(assert (not d!2199214))

(assert (not bm!639736))

(assert (not b!7043053))

(assert (not b!7043157))

(assert (not d!2199116))

(assert (not b!7043092))

(assert (not d!2199006))

(assert (not d!2199198))

(assert (not b!7042922))

(assert (not b!7042990))

(assert (not bm!639770))

(assert (not bm!639761))

(assert (not b!7043072))

(assert (not bs!1873806))

(assert (not d!2199038))

(assert (not d!2199160))

(assert (not b_lambda!267441))

(assert (not bs!1873813))

(assert (not d!2199190))

(assert (not b!7043090))

(assert (not b!7043162))

(assert (not b_lambda!267443))

(assert (not b!7043225))

(assert (not b_lambda!267383))

(assert (not b!7043287))

(assert (not setNonEmpty!49394))

(assert (not bm!639748))

(assert (not d!2199144))

(assert (not d!2199118))

(assert (not b!7043262))

(assert (not d!2199212))

(assert (not b!7043326))

(assert (not b!7043023))

(assert (not d!2199146))

(assert (not d!2199012))

(assert (not b!7043135))

(assert (not d!2199246))

(assert (not b!7043318))

(assert (not b!7043190))

(assert (not b!7043151))

(assert (not b!7043064))

(assert (not b!7043329))

(assert (not d!2199182))

(assert (not d!2199176))

(assert (not b!7043194))

(assert (not setNonEmpty!49395))

(assert (not d!2199234))

(assert (not d!2199016))

(assert (not d!2199232))

(assert (not b!7043017))

(assert (not b!7043245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684254 () Bool)

(assert start!684254)

(declare-fun b!7055373 () Bool)

(assert (=> b!7055373 true))

(declare-fun b!7055376 () Bool)

(assert (=> b!7055376 true))

(declare-fun b!7055385 () Bool)

(assert (=> b!7055385 true))

(declare-fun b!7055366 () Bool)

(declare-fun res!2880335 () Bool)

(declare-fun e!4241551 () Bool)

(assert (=> b!7055366 (=> res!2880335 e!4241551)))

(declare-fun lt!2531997 () Bool)

(assert (=> b!7055366 (= res!2880335 (not lt!2531997))))

(declare-fun b!7055367 () Bool)

(declare-fun e!4241550 () Bool)

(declare-fun tp_is_empty!44369 () Bool)

(declare-fun tp!1940180 () Bool)

(assert (=> b!7055367 (= e!4241550 (and tp_is_empty!44369 tp!1940180))))

(declare-fun b!7055369 () Bool)

(declare-fun e!4241555 () Bool)

(declare-fun e!4241544 () Bool)

(assert (=> b!7055369 (= e!4241555 e!4241544)))

(declare-fun res!2880349 () Bool)

(assert (=> b!7055369 (=> res!2880349 e!4241544)))

(declare-datatypes ((C!35414 0))(
  ( (C!35415 (val!27409 Int)) )
))
(declare-datatypes ((Regex!17572 0))(
  ( (ElementMatch!17572 (c!1314418 C!35414)) (Concat!26417 (regOne!35656 Regex!17572) (regTwo!35656 Regex!17572)) (EmptyExpr!17572) (Star!17572 (reg!17901 Regex!17572)) (EmptyLang!17572) (Union!17572 (regOne!35657 Regex!17572) (regTwo!35657 Regex!17572)) )
))
(declare-datatypes ((List!68242 0))(
  ( (Nil!68118) (Cons!68118 (h!74566 Regex!17572) (t!382021 List!68242)) )
))
(declare-datatypes ((Context!13136 0))(
  ( (Context!13137 (exprs!7068 List!68242)) )
))
(declare-fun lt!2531984 () Context!13136)

(declare-fun nullable!7255 (Regex!17572) Bool)

(assert (=> b!7055369 (= res!2880349 (not (nullable!7255 (h!74566 (exprs!7068 lt!2531984)))))))

(declare-fun lt!2531982 () List!68242)

(declare-fun tail!13703 (List!68242) List!68242)

(assert (=> b!7055369 (= lt!2531982 (tail!13703 (exprs!7068 lt!2531984)))))

(declare-fun setIsEmpty!49852 () Bool)

(declare-fun setRes!49852 () Bool)

(assert (=> setIsEmpty!49852 setRes!49852))

(declare-fun b!7055370 () Bool)

(declare-fun e!4241554 () Bool)

(declare-fun tp!1940182 () Bool)

(assert (=> b!7055370 (= e!4241554 tp!1940182)))

(declare-fun b!7055371 () Bool)

(declare-fun res!2880336 () Bool)

(declare-fun e!4241556 () Bool)

(assert (=> b!7055371 (=> res!2880336 e!4241556)))

(declare-fun lt!2531971 () Context!13136)

(declare-fun lt!2531986 () (Set Context!13136))

(assert (=> b!7055371 (= res!2880336 (not (set.member lt!2531971 lt!2531986)))))

(declare-fun b!7055372 () Bool)

(declare-fun res!2880350 () Bool)

(declare-fun e!4241546 () Bool)

(assert (=> b!7055372 (=> (not res!2880350) (not e!4241546))))

(declare-datatypes ((List!68243 0))(
  ( (Nil!68119) (Cons!68119 (h!74567 C!35414) (t!382022 List!68243)) )
))
(declare-fun s!7408 () List!68243)

(assert (=> b!7055372 (= res!2880350 (is-Cons!68119 s!7408))))

(assert (=> b!7055373 (= e!4241546 (not e!4241556))))

(declare-fun res!2880343 () Bool)

(assert (=> b!7055373 (=> res!2880343 e!4241556)))

(declare-fun lt!2532000 () (Set Context!13136))

(declare-fun matchZipper!3112 ((Set Context!13136) List!68243) Bool)

(assert (=> b!7055373 (= res!2880343 (not (matchZipper!3112 lt!2532000 s!7408)))))

(assert (=> b!7055373 (= lt!2532000 (set.insert lt!2531971 (as set.empty (Set Context!13136))))))

(declare-fun lambda!420288 () Int)

(declare-fun getWitness!1636 ((Set Context!13136) Int) Context!13136)

(assert (=> b!7055373 (= lt!2531971 (getWitness!1636 lt!2531986 lambda!420288))))

(declare-datatypes ((List!68244 0))(
  ( (Nil!68120) (Cons!68120 (h!74568 Context!13136) (t!382023 List!68244)) )
))
(declare-fun lt!2531990 () List!68244)

(declare-fun exists!3562 (List!68244 Int) Bool)

(assert (=> b!7055373 (exists!3562 lt!2531990 lambda!420288)))

(declare-datatypes ((Unit!161817 0))(
  ( (Unit!161818) )
))
(declare-fun lt!2531980 () Unit!161817)

(declare-fun lemmaZipperMatchesExistsMatchingContext!493 (List!68244 List!68243) Unit!161817)

(assert (=> b!7055373 (= lt!2531980 (lemmaZipperMatchesExistsMatchingContext!493 lt!2531990 s!7408))))

(declare-fun toList!10913 ((Set Context!13136)) List!68244)

(assert (=> b!7055373 (= lt!2531990 (toList!10913 lt!2531986))))

(declare-fun b!7055374 () Bool)

(declare-fun e!4241549 () Bool)

(assert (=> b!7055374 (= e!4241544 e!4241549)))

(declare-fun res!2880347 () Bool)

(assert (=> b!7055374 (=> res!2880347 e!4241549)))

(declare-fun lt!2531994 () (Set Context!13136))

(declare-fun lt!2531979 () (Set Context!13136))

(assert (=> b!7055374 (= res!2880347 (not (= lt!2531994 lt!2531979)))))

(declare-fun lt!2531999 () (Set Context!13136))

(declare-fun lt!2531996 () (Set Context!13136))

(assert (=> b!7055374 (= lt!2531979 (set.union lt!2531999 lt!2531996))))

(declare-fun lt!2531975 () Context!13136)

(declare-fun derivationStepZipperUp!2156 (Context!13136 C!35414) (Set Context!13136))

(assert (=> b!7055374 (= lt!2531996 (derivationStepZipperUp!2156 lt!2531975 (h!74567 s!7408)))))

(declare-fun derivationStepZipperDown!2206 (Regex!17572 Context!13136 C!35414) (Set Context!13136))

(assert (=> b!7055374 (= lt!2531999 (derivationStepZipperDown!2206 (h!74566 (exprs!7068 lt!2531984)) lt!2531975 (h!74567 s!7408)))))

(declare-fun ct2!306 () Context!13136)

(declare-fun ++!15655 (List!68242 List!68242) List!68242)

(assert (=> b!7055374 (= lt!2531975 (Context!13137 (++!15655 lt!2531982 (exprs!7068 ct2!306))))))

(declare-fun lt!2531991 () Unit!161817)

(declare-fun lambda!420290 () Int)

(declare-fun lemmaConcatPreservesForall!883 (List!68242 List!68242 Int) Unit!161817)

(assert (=> b!7055374 (= lt!2531991 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun lt!2531992 () Unit!161817)

(assert (=> b!7055374 (= lt!2531992 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun b!7055375 () Bool)

(declare-fun e!4241553 () Bool)

(declare-fun e!4241547 () Bool)

(assert (=> b!7055375 (= e!4241553 e!4241547)))

(declare-fun res!2880348 () Bool)

(assert (=> b!7055375 (=> res!2880348 e!4241547)))

(declare-fun lt!2531995 () (Set Context!13136))

(declare-fun derivationStepZipper!3022 ((Set Context!13136) C!35414) (Set Context!13136))

(assert (=> b!7055375 (= res!2880348 (not (= (derivationStepZipper!3022 lt!2531995 (h!74567 s!7408)) lt!2531996)))))

(declare-fun lt!2531976 () Unit!161817)

(assert (=> b!7055375 (= lt!2531976 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun lt!2531970 () Unit!161817)

(assert (=> b!7055375 (= lt!2531970 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun lambda!420291 () Int)

(declare-fun flatMap!2498 ((Set Context!13136) Int) (Set Context!13136))

(assert (=> b!7055375 (= (flatMap!2498 lt!2531995 lambda!420291) (derivationStepZipperUp!2156 lt!2531975 (h!74567 s!7408)))))

(declare-fun lt!2531972 () Unit!161817)

(declare-fun lemmaFlatMapOnSingletonSet!2007 ((Set Context!13136) Context!13136 Int) Unit!161817)

(assert (=> b!7055375 (= lt!2531972 (lemmaFlatMapOnSingletonSet!2007 lt!2531995 lt!2531975 lambda!420291))))

(assert (=> b!7055375 (= lt!2531995 (set.insert lt!2531975 (as set.empty (Set Context!13136))))))

(declare-fun lt!2531989 () Unit!161817)

(assert (=> b!7055375 (= lt!2531989 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun lt!2531983 () Unit!161817)

(assert (=> b!7055375 (= lt!2531983 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun e!4241545 () Bool)

(assert (=> b!7055376 (= e!4241556 e!4241545)))

(declare-fun res!2880342 () Bool)

(assert (=> b!7055376 (=> res!2880342 e!4241545)))

(declare-fun lt!2531974 () Context!13136)

(declare-fun z1!570 () (Set Context!13136))

(assert (=> b!7055376 (= res!2880342 (or (not (= lt!2531974 lt!2531971)) (not (set.member lt!2531984 z1!570))))))

(assert (=> b!7055376 (= lt!2531974 (Context!13137 (++!15655 (exprs!7068 lt!2531984) (exprs!7068 ct2!306))))))

(declare-fun lt!2531981 () Unit!161817)

(assert (=> b!7055376 (= lt!2531981 (lemmaConcatPreservesForall!883 (exprs!7068 lt!2531984) (exprs!7068 ct2!306) lambda!420290))))

(declare-fun lambda!420289 () Int)

(declare-fun mapPost2!401 ((Set Context!13136) Int Context!13136) Context!13136)

(assert (=> b!7055376 (= lt!2531984 (mapPost2!401 z1!570 lambda!420289 lt!2531971))))

(declare-fun b!7055377 () Bool)

(assert (=> b!7055377 (= e!4241551 e!4241553)))

(declare-fun res!2880334 () Bool)

(assert (=> b!7055377 (=> res!2880334 e!4241553)))

(assert (=> b!7055377 (= res!2880334 (not (matchZipper!3112 lt!2531996 (t!382022 s!7408))))))

(declare-fun lt!2531968 () Unit!161817)

(assert (=> b!7055377 (= lt!2531968 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun b!7055378 () Bool)

(assert (=> b!7055378 (= e!4241549 e!4241551)))

(declare-fun res!2880345 () Bool)

(assert (=> b!7055378 (=> res!2880345 e!4241551)))

(declare-fun e!4241548 () Bool)

(assert (=> b!7055378 (= res!2880345 e!4241548)))

(declare-fun res!2880339 () Bool)

(assert (=> b!7055378 (=> (not res!2880339) (not e!4241548))))

(declare-fun lt!2531988 () Bool)

(assert (=> b!7055378 (= res!2880339 (not (= lt!2531997 lt!2531988)))))

(assert (=> b!7055378 (= lt!2531997 (matchZipper!3112 lt!2531994 (t!382022 s!7408)))))

(declare-fun lt!2531969 () Unit!161817)

(assert (=> b!7055378 (= lt!2531969 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun e!4241552 () Bool)

(assert (=> b!7055378 (= (matchZipper!3112 lt!2531979 (t!382022 s!7408)) e!4241552)))

(declare-fun res!2880341 () Bool)

(assert (=> b!7055378 (=> res!2880341 e!4241552)))

(assert (=> b!7055378 (= res!2880341 lt!2531988)))

(assert (=> b!7055378 (= lt!2531988 (matchZipper!3112 lt!2531999 (t!382022 s!7408)))))

(declare-fun lt!2531978 () Unit!161817)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1585 ((Set Context!13136) (Set Context!13136) List!68243) Unit!161817)

(assert (=> b!7055378 (= lt!2531978 (lemmaZipperConcatMatchesSameAsBothZippers!1585 lt!2531999 lt!2531996 (t!382022 s!7408)))))

(declare-fun lt!2531977 () Unit!161817)

(assert (=> b!7055378 (= lt!2531977 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun lt!2531985 () Unit!161817)

(assert (=> b!7055378 (= lt!2531985 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun b!7055368 () Bool)

(declare-fun e!4241543 () Bool)

(assert (=> b!7055368 (= e!4241545 e!4241543)))

(declare-fun res!2880337 () Bool)

(assert (=> b!7055368 (=> res!2880337 e!4241543)))

(declare-fun lt!2531973 () (Set Context!13136))

(assert (=> b!7055368 (= res!2880337 (not (= lt!2531973 lt!2532000)))))

(assert (=> b!7055368 (= lt!2531973 (set.insert lt!2531974 (as set.empty (Set Context!13136))))))

(declare-fun lt!2531993 () Unit!161817)

(assert (=> b!7055368 (= lt!2531993 (lemmaConcatPreservesForall!883 (exprs!7068 lt!2531984) (exprs!7068 ct2!306) lambda!420290))))

(declare-fun res!2880344 () Bool)

(assert (=> start!684254 (=> (not res!2880344) (not e!4241546))))

(assert (=> start!684254 (= res!2880344 (matchZipper!3112 lt!2531986 s!7408))))

(declare-fun appendTo!693 ((Set Context!13136) Context!13136) (Set Context!13136))

(assert (=> start!684254 (= lt!2531986 (appendTo!693 z1!570 ct2!306))))

(assert (=> start!684254 e!4241546))

(declare-fun condSetEmpty!49852 () Bool)

(assert (=> start!684254 (= condSetEmpty!49852 (= z1!570 (as set.empty (Set Context!13136))))))

(assert (=> start!684254 setRes!49852))

(declare-fun inv!86790 (Context!13136) Bool)

(assert (=> start!684254 (and (inv!86790 ct2!306) e!4241554)))

(assert (=> start!684254 e!4241550))

(declare-fun tp!1940181 () Bool)

(declare-fun setNonEmpty!49852 () Bool)

(declare-fun e!4241542 () Bool)

(declare-fun setElem!49852 () Context!13136)

(assert (=> setNonEmpty!49852 (= setRes!49852 (and tp!1940181 (inv!86790 setElem!49852) e!4241542))))

(declare-fun setRest!49852 () (Set Context!13136))

(assert (=> setNonEmpty!49852 (= z1!570 (set.union (set.insert setElem!49852 (as set.empty (Set Context!13136))) setRest!49852))))

(declare-fun b!7055379 () Bool)

(assert (=> b!7055379 (= e!4241548 (not (matchZipper!3112 lt!2531996 (t!382022 s!7408))))))

(declare-fun lt!2531998 () Unit!161817)

(assert (=> b!7055379 (= lt!2531998 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun b!7055380 () Bool)

(declare-fun res!2880338 () Bool)

(assert (=> b!7055380 (=> res!2880338 e!4241555)))

(assert (=> b!7055380 (= res!2880338 (not (is-Cons!68118 (exprs!7068 lt!2531984))))))

(declare-fun b!7055381 () Bool)

(assert (=> b!7055381 (= e!4241547 (inv!86790 lt!2531975))))

(declare-fun lt!2531987 () Unit!161817)

(assert (=> b!7055381 (= lt!2531987 (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(declare-fun b!7055382 () Bool)

(assert (=> b!7055382 (= e!4241552 (matchZipper!3112 lt!2531996 (t!382022 s!7408)))))

(declare-fun b!7055383 () Bool)

(declare-fun res!2880340 () Bool)

(assert (=> b!7055383 (=> res!2880340 e!4241555)))

(declare-fun isEmpty!39731 (List!68242) Bool)

(assert (=> b!7055383 (= res!2880340 (isEmpty!39731 (exprs!7068 lt!2531984)))))

(declare-fun b!7055384 () Bool)

(declare-fun tp!1940179 () Bool)

(assert (=> b!7055384 (= e!4241542 tp!1940179)))

(assert (=> b!7055385 (= e!4241543 e!4241555)))

(declare-fun res!2880346 () Bool)

(assert (=> b!7055385 (=> res!2880346 e!4241555)))

(assert (=> b!7055385 (= res!2880346 (not (= (derivationStepZipper!3022 lt!2531973 (h!74567 s!7408)) lt!2531994)))))

(assert (=> b!7055385 (= (flatMap!2498 lt!2531973 lambda!420291) (derivationStepZipperUp!2156 lt!2531974 (h!74567 s!7408)))))

(declare-fun lt!2531966 () Unit!161817)

(assert (=> b!7055385 (= lt!2531966 (lemmaFlatMapOnSingletonSet!2007 lt!2531973 lt!2531974 lambda!420291))))

(assert (=> b!7055385 (= lt!2531994 (derivationStepZipperUp!2156 lt!2531974 (h!74567 s!7408)))))

(declare-fun lt!2531967 () Unit!161817)

(assert (=> b!7055385 (= lt!2531967 (lemmaConcatPreservesForall!883 (exprs!7068 lt!2531984) (exprs!7068 ct2!306) lambda!420290))))

(assert (= (and start!684254 res!2880344) b!7055372))

(assert (= (and b!7055372 res!2880350) b!7055373))

(assert (= (and b!7055373 (not res!2880343)) b!7055371))

(assert (= (and b!7055371 (not res!2880336)) b!7055376))

(assert (= (and b!7055376 (not res!2880342)) b!7055368))

(assert (= (and b!7055368 (not res!2880337)) b!7055385))

(assert (= (and b!7055385 (not res!2880346)) b!7055380))

(assert (= (and b!7055380 (not res!2880338)) b!7055383))

(assert (= (and b!7055383 (not res!2880340)) b!7055369))

(assert (= (and b!7055369 (not res!2880349)) b!7055374))

(assert (= (and b!7055374 (not res!2880347)) b!7055378))

(assert (= (and b!7055378 (not res!2880341)) b!7055382))

(assert (= (and b!7055378 res!2880339) b!7055379))

(assert (= (and b!7055378 (not res!2880345)) b!7055366))

(assert (= (and b!7055366 (not res!2880335)) b!7055377))

(assert (= (and b!7055377 (not res!2880334)) b!7055375))

(assert (= (and b!7055375 (not res!2880348)) b!7055381))

(assert (= (and start!684254 condSetEmpty!49852) setIsEmpty!49852))

(assert (= (and start!684254 (not condSetEmpty!49852)) setNonEmpty!49852))

(assert (= setNonEmpty!49852 b!7055384))

(assert (= start!684254 b!7055370))

(assert (= (and start!684254 (is-Cons!68119 s!7408)) b!7055367))

(declare-fun m!7773018 () Bool)

(assert (=> b!7055375 m!7773018))

(declare-fun m!7773020 () Bool)

(assert (=> b!7055375 m!7773020))

(declare-fun m!7773022 () Bool)

(assert (=> b!7055375 m!7773022))

(assert (=> b!7055375 m!7773018))

(declare-fun m!7773024 () Bool)

(assert (=> b!7055375 m!7773024))

(assert (=> b!7055375 m!7773018))

(declare-fun m!7773026 () Bool)

(assert (=> b!7055375 m!7773026))

(assert (=> b!7055375 m!7773018))

(declare-fun m!7773028 () Bool)

(assert (=> b!7055375 m!7773028))

(declare-fun m!7773030 () Bool)

(assert (=> b!7055379 m!7773030))

(assert (=> b!7055379 m!7773018))

(assert (=> b!7055378 m!7773018))

(assert (=> b!7055378 m!7773018))

(declare-fun m!7773032 () Bool)

(assert (=> b!7055378 m!7773032))

(assert (=> b!7055378 m!7773018))

(declare-fun m!7773034 () Bool)

(assert (=> b!7055378 m!7773034))

(declare-fun m!7773036 () Bool)

(assert (=> b!7055378 m!7773036))

(declare-fun m!7773038 () Bool)

(assert (=> b!7055378 m!7773038))

(declare-fun m!7773040 () Bool)

(assert (=> setNonEmpty!49852 m!7773040))

(declare-fun m!7773042 () Bool)

(assert (=> b!7055383 m!7773042))

(declare-fun m!7773044 () Bool)

(assert (=> b!7055385 m!7773044))

(declare-fun m!7773046 () Bool)

(assert (=> b!7055385 m!7773046))

(declare-fun m!7773048 () Bool)

(assert (=> b!7055385 m!7773048))

(declare-fun m!7773050 () Bool)

(assert (=> b!7055385 m!7773050))

(declare-fun m!7773052 () Bool)

(assert (=> b!7055385 m!7773052))

(assert (=> b!7055374 m!7773018))

(declare-fun m!7773054 () Bool)

(assert (=> b!7055374 m!7773054))

(declare-fun m!7773056 () Bool)

(assert (=> b!7055374 m!7773056))

(assert (=> b!7055374 m!7773018))

(assert (=> b!7055374 m!7773024))

(declare-fun m!7773058 () Bool)

(assert (=> b!7055369 m!7773058))

(declare-fun m!7773060 () Bool)

(assert (=> b!7055369 m!7773060))

(declare-fun m!7773062 () Bool)

(assert (=> b!7055371 m!7773062))

(declare-fun m!7773064 () Bool)

(assert (=> start!684254 m!7773064))

(declare-fun m!7773066 () Bool)

(assert (=> start!684254 m!7773066))

(declare-fun m!7773068 () Bool)

(assert (=> start!684254 m!7773068))

(declare-fun m!7773070 () Bool)

(assert (=> b!7055381 m!7773070))

(assert (=> b!7055381 m!7773018))

(assert (=> b!7055377 m!7773030))

(assert (=> b!7055377 m!7773018))

(declare-fun m!7773072 () Bool)

(assert (=> b!7055376 m!7773072))

(declare-fun m!7773074 () Bool)

(assert (=> b!7055376 m!7773074))

(assert (=> b!7055376 m!7773048))

(declare-fun m!7773076 () Bool)

(assert (=> b!7055376 m!7773076))

(declare-fun m!7773078 () Bool)

(assert (=> b!7055373 m!7773078))

(declare-fun m!7773080 () Bool)

(assert (=> b!7055373 m!7773080))

(declare-fun m!7773082 () Bool)

(assert (=> b!7055373 m!7773082))

(declare-fun m!7773084 () Bool)

(assert (=> b!7055373 m!7773084))

(declare-fun m!7773086 () Bool)

(assert (=> b!7055373 m!7773086))

(declare-fun m!7773088 () Bool)

(assert (=> b!7055373 m!7773088))

(assert (=> b!7055382 m!7773030))

(declare-fun m!7773090 () Bool)

(assert (=> b!7055368 m!7773090))

(assert (=> b!7055368 m!7773048))

(push 1)

(assert (not b!7055379))

(assert (not setNonEmpty!49852))

(assert (not b!7055370))

(assert (not b!7055369))

(assert (not b!7055377))

(assert (not b!7055367))

(assert (not b!7055382))

(assert (not b!7055376))

(assert (not b!7055375))

(assert (not b!7055368))

(assert (not b!7055384))

(assert (not b!7055381))

(assert tp_is_empty!44369)

(assert (not start!684254))

(assert (not b!7055383))

(assert (not b!7055385))

(assert (not b!7055373))

(assert (not b!7055374))

(assert (not b!7055378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1876998 () Bool)

(declare-fun d!2204874 () Bool)

(assert (= bs!1876998 (and d!2204874 b!7055376)))

(declare-fun lambda!420340 () Int)

(assert (=> bs!1876998 (= lambda!420340 lambda!420290)))

(declare-fun forall!16518 (List!68242 Int) Bool)

(assert (=> d!2204874 (= (inv!86790 lt!2531975) (forall!16518 (exprs!7068 lt!2531975) lambda!420340))))

(declare-fun bs!1876999 () Bool)

(assert (= bs!1876999 d!2204874))

(declare-fun m!7773166 () Bool)

(assert (=> bs!1876999 m!7773166))

(assert (=> b!7055381 d!2204874))

(declare-fun d!2204876 () Bool)

(assert (=> d!2204876 (forall!16518 (++!15655 lt!2531982 (exprs!7068 ct2!306)) lambda!420290)))

(declare-fun lt!2532110 () Unit!161817)

(declare-fun choose!53813 (List!68242 List!68242 Int) Unit!161817)

(assert (=> d!2204876 (= lt!2532110 (choose!53813 lt!2531982 (exprs!7068 ct2!306) lambda!420290))))

(assert (=> d!2204876 (forall!16518 lt!2531982 lambda!420290)))

(assert (=> d!2204876 (= (lemmaConcatPreservesForall!883 lt!2531982 (exprs!7068 ct2!306) lambda!420290) lt!2532110)))

(declare-fun bs!1877000 () Bool)

(assert (= bs!1877000 d!2204876))

(assert (=> bs!1877000 m!7773054))

(assert (=> bs!1877000 m!7773054))

(declare-fun m!7773168 () Bool)

(assert (=> bs!1877000 m!7773168))

(declare-fun m!7773170 () Bool)

(assert (=> bs!1877000 m!7773170))

(declare-fun m!7773172 () Bool)

(assert (=> bs!1877000 m!7773172))

(assert (=> b!7055381 d!2204876))

(declare-fun d!2204878 () Bool)

(declare-fun c!1314432 () Bool)

(declare-fun isEmpty!39733 (List!68243) Bool)

(assert (=> d!2204878 (= c!1314432 (isEmpty!39733 (t!382022 s!7408)))))

(declare-fun e!4241604 () Bool)

(assert (=> d!2204878 (= (matchZipper!3112 lt!2531996 (t!382022 s!7408)) e!4241604)))

(declare-fun b!7055462 () Bool)

(declare-fun nullableZipper!2658 ((Set Context!13136)) Bool)

(assert (=> b!7055462 (= e!4241604 (nullableZipper!2658 lt!2531996))))

(declare-fun b!7055463 () Bool)

(declare-fun head!14359 (List!68243) C!35414)

(declare-fun tail!13705 (List!68243) List!68243)

(assert (=> b!7055463 (= e!4241604 (matchZipper!3112 (derivationStepZipper!3022 lt!2531996 (head!14359 (t!382022 s!7408))) (tail!13705 (t!382022 s!7408))))))

(assert (= (and d!2204878 c!1314432) b!7055462))

(assert (= (and d!2204878 (not c!1314432)) b!7055463))

(declare-fun m!7773174 () Bool)

(assert (=> d!2204878 m!7773174))

(declare-fun m!7773176 () Bool)

(assert (=> b!7055462 m!7773176))

(declare-fun m!7773178 () Bool)

(assert (=> b!7055463 m!7773178))

(assert (=> b!7055463 m!7773178))

(declare-fun m!7773180 () Bool)

(assert (=> b!7055463 m!7773180))

(declare-fun m!7773182 () Bool)

(assert (=> b!7055463 m!7773182))

(assert (=> b!7055463 m!7773180))

(assert (=> b!7055463 m!7773182))

(declare-fun m!7773184 () Bool)

(assert (=> b!7055463 m!7773184))

(assert (=> b!7055382 d!2204878))

(declare-fun e!4241607 () Bool)

(declare-fun d!2204880 () Bool)

(assert (=> d!2204880 (= (matchZipper!3112 (set.union lt!2531999 lt!2531996) (t!382022 s!7408)) e!4241607)))

(declare-fun res!2880405 () Bool)

(assert (=> d!2204880 (=> res!2880405 e!4241607)))

(assert (=> d!2204880 (= res!2880405 (matchZipper!3112 lt!2531999 (t!382022 s!7408)))))

(declare-fun lt!2532113 () Unit!161817)

(declare-fun choose!53814 ((Set Context!13136) (Set Context!13136) List!68243) Unit!161817)

(assert (=> d!2204880 (= lt!2532113 (choose!53814 lt!2531999 lt!2531996 (t!382022 s!7408)))))

(assert (=> d!2204880 (= (lemmaZipperConcatMatchesSameAsBothZippers!1585 lt!2531999 lt!2531996 (t!382022 s!7408)) lt!2532113)))

(declare-fun b!7055466 () Bool)

(assert (=> b!7055466 (= e!4241607 (matchZipper!3112 lt!2531996 (t!382022 s!7408)))))

(assert (= (and d!2204880 (not res!2880405)) b!7055466))

(declare-fun m!7773186 () Bool)

(assert (=> d!2204880 m!7773186))

(assert (=> d!2204880 m!7773038))

(declare-fun m!7773188 () Bool)

(assert (=> d!2204880 m!7773188))

(assert (=> b!7055466 m!7773030))

(assert (=> b!7055378 d!2204880))

(assert (=> b!7055378 d!2204876))

(declare-fun d!2204882 () Bool)

(declare-fun c!1314433 () Bool)

(assert (=> d!2204882 (= c!1314433 (isEmpty!39733 (t!382022 s!7408)))))

(declare-fun e!4241608 () Bool)

(assert (=> d!2204882 (= (matchZipper!3112 lt!2531994 (t!382022 s!7408)) e!4241608)))

(declare-fun b!7055467 () Bool)

(assert (=> b!7055467 (= e!4241608 (nullableZipper!2658 lt!2531994))))

(declare-fun b!7055468 () Bool)

(assert (=> b!7055468 (= e!4241608 (matchZipper!3112 (derivationStepZipper!3022 lt!2531994 (head!14359 (t!382022 s!7408))) (tail!13705 (t!382022 s!7408))))))

(assert (= (and d!2204882 c!1314433) b!7055467))

(assert (= (and d!2204882 (not c!1314433)) b!7055468))

(assert (=> d!2204882 m!7773174))

(declare-fun m!7773190 () Bool)

(assert (=> b!7055467 m!7773190))

(assert (=> b!7055468 m!7773178))

(assert (=> b!7055468 m!7773178))

(declare-fun m!7773192 () Bool)

(assert (=> b!7055468 m!7773192))

(assert (=> b!7055468 m!7773182))

(assert (=> b!7055468 m!7773192))

(assert (=> b!7055468 m!7773182))

(declare-fun m!7773194 () Bool)

(assert (=> b!7055468 m!7773194))

(assert (=> b!7055378 d!2204882))

(declare-fun d!2204884 () Bool)

(declare-fun c!1314434 () Bool)

(assert (=> d!2204884 (= c!1314434 (isEmpty!39733 (t!382022 s!7408)))))

(declare-fun e!4241609 () Bool)

(assert (=> d!2204884 (= (matchZipper!3112 lt!2531999 (t!382022 s!7408)) e!4241609)))

(declare-fun b!7055469 () Bool)

(assert (=> b!7055469 (= e!4241609 (nullableZipper!2658 lt!2531999))))

(declare-fun b!7055470 () Bool)

(assert (=> b!7055470 (= e!4241609 (matchZipper!3112 (derivationStepZipper!3022 lt!2531999 (head!14359 (t!382022 s!7408))) (tail!13705 (t!382022 s!7408))))))

(assert (= (and d!2204884 c!1314434) b!7055469))

(assert (= (and d!2204884 (not c!1314434)) b!7055470))

(assert (=> d!2204884 m!7773174))

(declare-fun m!7773196 () Bool)

(assert (=> b!7055469 m!7773196))

(assert (=> b!7055470 m!7773178))

(assert (=> b!7055470 m!7773178))

(declare-fun m!7773198 () Bool)

(assert (=> b!7055470 m!7773198))

(assert (=> b!7055470 m!7773182))

(assert (=> b!7055470 m!7773198))

(assert (=> b!7055470 m!7773182))

(declare-fun m!7773200 () Bool)

(assert (=> b!7055470 m!7773200))

(assert (=> b!7055378 d!2204884))

(declare-fun d!2204886 () Bool)

(declare-fun c!1314435 () Bool)

(assert (=> d!2204886 (= c!1314435 (isEmpty!39733 (t!382022 s!7408)))))

(declare-fun e!4241610 () Bool)

(assert (=> d!2204886 (= (matchZipper!3112 lt!2531979 (t!382022 s!7408)) e!4241610)))

(declare-fun b!7055471 () Bool)

(assert (=> b!7055471 (= e!4241610 (nullableZipper!2658 lt!2531979))))

(declare-fun b!7055472 () Bool)

(assert (=> b!7055472 (= e!4241610 (matchZipper!3112 (derivationStepZipper!3022 lt!2531979 (head!14359 (t!382022 s!7408))) (tail!13705 (t!382022 s!7408))))))

(assert (= (and d!2204886 c!1314435) b!7055471))

(assert (= (and d!2204886 (not c!1314435)) b!7055472))

(assert (=> d!2204886 m!7773174))

(declare-fun m!7773202 () Bool)

(assert (=> b!7055471 m!7773202))

(assert (=> b!7055472 m!7773178))

(assert (=> b!7055472 m!7773178))

(declare-fun m!7773204 () Bool)

(assert (=> b!7055472 m!7773204))

(assert (=> b!7055472 m!7773182))

(assert (=> b!7055472 m!7773204))

(assert (=> b!7055472 m!7773182))

(declare-fun m!7773206 () Bool)

(assert (=> b!7055472 m!7773206))

(assert (=> b!7055378 d!2204886))

(declare-fun d!2204888 () Bool)

(declare-fun nullableFct!2775 (Regex!17572) Bool)

(assert (=> d!2204888 (= (nullable!7255 (h!74566 (exprs!7068 lt!2531984))) (nullableFct!2775 (h!74566 (exprs!7068 lt!2531984))))))

(declare-fun bs!1877001 () Bool)

(assert (= bs!1877001 d!2204888))

(declare-fun m!7773208 () Bool)

(assert (=> bs!1877001 m!7773208))

(assert (=> b!7055369 d!2204888))

(declare-fun d!2204890 () Bool)

(assert (=> d!2204890 (= (tail!13703 (exprs!7068 lt!2531984)) (t!382021 (exprs!7068 lt!2531984)))))

(assert (=> b!7055369 d!2204890))

(declare-fun bs!1877002 () Bool)

(declare-fun d!2204892 () Bool)

(assert (= bs!1877002 (and d!2204892 b!7055376)))

(declare-fun lambda!420341 () Int)

(assert (=> bs!1877002 (= lambda!420341 lambda!420290)))

(declare-fun bs!1877003 () Bool)

(assert (= bs!1877003 (and d!2204892 d!2204874)))

(assert (=> bs!1877003 (= lambda!420341 lambda!420340)))

(assert (=> d!2204892 (= (inv!86790 setElem!49852) (forall!16518 (exprs!7068 setElem!49852) lambda!420341))))

(declare-fun bs!1877004 () Bool)

(assert (= bs!1877004 d!2204892))

(declare-fun m!7773210 () Bool)

(assert (=> bs!1877004 m!7773210))

(assert (=> setNonEmpty!49852 d!2204892))

(assert (=> b!7055379 d!2204878))

(assert (=> b!7055379 d!2204876))

(declare-fun d!2204894 () Bool)

(declare-fun c!1314436 () Bool)

(assert (=> d!2204894 (= c!1314436 (isEmpty!39733 s!7408))))

(declare-fun e!4241611 () Bool)

(assert (=> d!2204894 (= (matchZipper!3112 lt!2531986 s!7408) e!4241611)))

(declare-fun b!7055473 () Bool)

(assert (=> b!7055473 (= e!4241611 (nullableZipper!2658 lt!2531986))))

(declare-fun b!7055474 () Bool)

(assert (=> b!7055474 (= e!4241611 (matchZipper!3112 (derivationStepZipper!3022 lt!2531986 (head!14359 s!7408)) (tail!13705 s!7408)))))

(assert (= (and d!2204894 c!1314436) b!7055473))

(assert (= (and d!2204894 (not c!1314436)) b!7055474))

(declare-fun m!7773212 () Bool)

(assert (=> d!2204894 m!7773212))

(declare-fun m!7773214 () Bool)

(assert (=> b!7055473 m!7773214))

(declare-fun m!7773216 () Bool)

(assert (=> b!7055474 m!7773216))

(assert (=> b!7055474 m!7773216))

(declare-fun m!7773218 () Bool)

(assert (=> b!7055474 m!7773218))

(declare-fun m!7773220 () Bool)

(assert (=> b!7055474 m!7773220))

(assert (=> b!7055474 m!7773218))

(assert (=> b!7055474 m!7773220))

(declare-fun m!7773222 () Bool)

(assert (=> b!7055474 m!7773222))

(assert (=> start!684254 d!2204894))

(declare-fun bs!1877005 () Bool)

(declare-fun d!2204896 () Bool)

(assert (= bs!1877005 (and d!2204896 b!7055376)))

(declare-fun lambda!420346 () Int)

(assert (=> bs!1877005 (= lambda!420346 lambda!420289)))

(assert (=> d!2204896 true))

(declare-fun map!15892 ((Set Context!13136) Int) (Set Context!13136))

(assert (=> d!2204896 (= (appendTo!693 z1!570 ct2!306) (map!15892 z1!570 lambda!420346))))

(declare-fun bs!1877006 () Bool)

(assert (= bs!1877006 d!2204896))

(declare-fun m!7773224 () Bool)

(assert (=> bs!1877006 m!7773224))

(assert (=> start!684254 d!2204896))

(declare-fun bs!1877007 () Bool)

(declare-fun d!2204898 () Bool)

(assert (= bs!1877007 (and d!2204898 b!7055376)))

(declare-fun lambda!420347 () Int)

(assert (=> bs!1877007 (= lambda!420347 lambda!420290)))

(declare-fun bs!1877008 () Bool)

(assert (= bs!1877008 (and d!2204898 d!2204874)))

(assert (=> bs!1877008 (= lambda!420347 lambda!420340)))

(declare-fun bs!1877009 () Bool)

(assert (= bs!1877009 (and d!2204898 d!2204892)))

(assert (=> bs!1877009 (= lambda!420347 lambda!420341)))

(assert (=> d!2204898 (= (inv!86790 ct2!306) (forall!16518 (exprs!7068 ct2!306) lambda!420347))))

(declare-fun bs!1877010 () Bool)

(assert (= bs!1877010 d!2204898))

(declare-fun m!7773226 () Bool)

(assert (=> bs!1877010 m!7773226))

(assert (=> start!684254 d!2204898))

(declare-fun d!2204900 () Bool)

(declare-fun dynLambda!27640 (Int Context!13136) (Set Context!13136))

(assert (=> d!2204900 (= (flatMap!2498 lt!2531973 lambda!420291) (dynLambda!27640 lambda!420291 lt!2531974))))

(declare-fun lt!2532118 () Unit!161817)

(declare-fun choose!53815 ((Set Context!13136) Context!13136 Int) Unit!161817)

(assert (=> d!2204900 (= lt!2532118 (choose!53815 lt!2531973 lt!2531974 lambda!420291))))

(assert (=> d!2204900 (= lt!2531973 (set.insert lt!2531974 (as set.empty (Set Context!13136))))))

(assert (=> d!2204900 (= (lemmaFlatMapOnSingletonSet!2007 lt!2531973 lt!2531974 lambda!420291) lt!2532118)))

(declare-fun b_lambda!268691 () Bool)

(assert (=> (not b_lambda!268691) (not d!2204900)))

(declare-fun bs!1877011 () Bool)

(assert (= bs!1877011 d!2204900))

(assert (=> bs!1877011 m!7773046))

(declare-fun m!7773228 () Bool)

(assert (=> bs!1877011 m!7773228))

(declare-fun m!7773230 () Bool)

(assert (=> bs!1877011 m!7773230))

(assert (=> bs!1877011 m!7773090))

(assert (=> b!7055385 d!2204900))

(declare-fun d!2204902 () Bool)

(assert (=> d!2204902 (forall!16518 (++!15655 (exprs!7068 lt!2531984) (exprs!7068 ct2!306)) lambda!420290)))

(declare-fun lt!2532119 () Unit!161817)

(assert (=> d!2204902 (= lt!2532119 (choose!53813 (exprs!7068 lt!2531984) (exprs!7068 ct2!306) lambda!420290))))

(assert (=> d!2204902 (forall!16518 (exprs!7068 lt!2531984) lambda!420290)))

(assert (=> d!2204902 (= (lemmaConcatPreservesForall!883 (exprs!7068 lt!2531984) (exprs!7068 ct2!306) lambda!420290) lt!2532119)))

(declare-fun bs!1877012 () Bool)

(assert (= bs!1877012 d!2204902))

(assert (=> bs!1877012 m!7773074))

(assert (=> bs!1877012 m!7773074))

(declare-fun m!7773232 () Bool)

(assert (=> bs!1877012 m!7773232))

(declare-fun m!7773234 () Bool)

(assert (=> bs!1877012 m!7773234))

(declare-fun m!7773236 () Bool)

(assert (=> bs!1877012 m!7773236))

(assert (=> b!7055385 d!2204902))

(declare-fun d!2204904 () Bool)

(declare-fun choose!53816 ((Set Context!13136) Int) (Set Context!13136))

(assert (=> d!2204904 (= (flatMap!2498 lt!2531973 lambda!420291) (choose!53816 lt!2531973 lambda!420291))))

(declare-fun bs!1877013 () Bool)

(assert (= bs!1877013 d!2204904))

(declare-fun m!7773238 () Bool)

(assert (=> bs!1877013 m!7773238))

(assert (=> b!7055385 d!2204904))

(declare-fun b!7055485 () Bool)

(declare-fun e!4241618 () (Set Context!13136))

(declare-fun call!640938 () (Set Context!13136))

(assert (=> b!7055485 (= e!4241618 call!640938)))

(declare-fun b!7055486 () Bool)

(assert (=> b!7055486 (= e!4241618 (as set.empty (Set Context!13136)))))

(declare-fun b!7055487 () Bool)

(declare-fun e!4241620 () (Set Context!13136))

(assert (=> b!7055487 (= e!4241620 e!4241618)))

(declare-fun c!1314443 () Bool)

(assert (=> b!7055487 (= c!1314443 (is-Cons!68118 (exprs!7068 lt!2531974)))))

(declare-fun b!7055488 () Bool)

(assert (=> b!7055488 (= e!4241620 (set.union call!640938 (derivationStepZipperUp!2156 (Context!13137 (t!382021 (exprs!7068 lt!2531974))) (h!74567 s!7408))))))

(declare-fun b!7055489 () Bool)

(declare-fun e!4241619 () Bool)

(assert (=> b!7055489 (= e!4241619 (nullable!7255 (h!74566 (exprs!7068 lt!2531974))))))

(declare-fun bm!640933 () Bool)

(assert (=> bm!640933 (= call!640938 (derivationStepZipperDown!2206 (h!74566 (exprs!7068 lt!2531974)) (Context!13137 (t!382021 (exprs!7068 lt!2531974))) (h!74567 s!7408)))))

(declare-fun d!2204906 () Bool)

(declare-fun c!1314442 () Bool)

(assert (=> d!2204906 (= c!1314442 e!4241619)))

(declare-fun res!2880408 () Bool)

(assert (=> d!2204906 (=> (not res!2880408) (not e!4241619))))

(assert (=> d!2204906 (= res!2880408 (is-Cons!68118 (exprs!7068 lt!2531974)))))

(assert (=> d!2204906 (= (derivationStepZipperUp!2156 lt!2531974 (h!74567 s!7408)) e!4241620)))

(assert (= (and d!2204906 res!2880408) b!7055489))

(assert (= (and d!2204906 c!1314442) b!7055488))

(assert (= (and d!2204906 (not c!1314442)) b!7055487))

(assert (= (and b!7055487 c!1314443) b!7055485))

(assert (= (and b!7055487 (not c!1314443)) b!7055486))

(assert (= (or b!7055488 b!7055485) bm!640933))

(declare-fun m!7773240 () Bool)

(assert (=> b!7055488 m!7773240))

(declare-fun m!7773242 () Bool)

(assert (=> b!7055489 m!7773242))

(declare-fun m!7773244 () Bool)

(assert (=> bm!640933 m!7773244))

(assert (=> b!7055385 d!2204906))

(declare-fun bs!1877014 () Bool)

(declare-fun d!2204908 () Bool)

(assert (= bs!1877014 (and d!2204908 b!7055385)))

(declare-fun lambda!420350 () Int)

(assert (=> bs!1877014 (= lambda!420350 lambda!420291)))

(assert (=> d!2204908 true))

(assert (=> d!2204908 (= (derivationStepZipper!3022 lt!2531973 (h!74567 s!7408)) (flatMap!2498 lt!2531973 lambda!420350))))

(declare-fun bs!1877015 () Bool)

(assert (= bs!1877015 d!2204908))

(declare-fun m!7773246 () Bool)

(assert (=> bs!1877015 m!7773246))

(assert (=> b!7055385 d!2204908))

(declare-fun b!7055502 () Bool)

(declare-fun res!2880414 () Bool)

(declare-fun e!4241626 () Bool)

(assert (=> b!7055502 (=> (not res!2880414) (not e!4241626))))

(declare-fun lt!2532122 () List!68242)

(declare-fun size!41152 (List!68242) Int)

(assert (=> b!7055502 (= res!2880414 (= (size!41152 lt!2532122) (+ (size!41152 (exprs!7068 lt!2531984)) (size!41152 (exprs!7068 ct2!306)))))))

(declare-fun b!7055500 () Bool)

(declare-fun e!4241625 () List!68242)

(assert (=> b!7055500 (= e!4241625 (exprs!7068 ct2!306))))

(declare-fun d!2204910 () Bool)

(assert (=> d!2204910 e!4241626))

(declare-fun res!2880413 () Bool)

(assert (=> d!2204910 (=> (not res!2880413) (not e!4241626))))

(declare-fun content!13686 (List!68242) (Set Regex!17572))

(assert (=> d!2204910 (= res!2880413 (= (content!13686 lt!2532122) (set.union (content!13686 (exprs!7068 lt!2531984)) (content!13686 (exprs!7068 ct2!306)))))))

(assert (=> d!2204910 (= lt!2532122 e!4241625)))

(declare-fun c!1314448 () Bool)

(assert (=> d!2204910 (= c!1314448 (is-Nil!68118 (exprs!7068 lt!2531984)))))

(assert (=> d!2204910 (= (++!15655 (exprs!7068 lt!2531984) (exprs!7068 ct2!306)) lt!2532122)))

(declare-fun b!7055503 () Bool)

(assert (=> b!7055503 (= e!4241626 (or (not (= (exprs!7068 ct2!306) Nil!68118)) (= lt!2532122 (exprs!7068 lt!2531984))))))

(declare-fun b!7055501 () Bool)

(assert (=> b!7055501 (= e!4241625 (Cons!68118 (h!74566 (exprs!7068 lt!2531984)) (++!15655 (t!382021 (exprs!7068 lt!2531984)) (exprs!7068 ct2!306))))))

(assert (= (and d!2204910 c!1314448) b!7055500))

(assert (= (and d!2204910 (not c!1314448)) b!7055501))

(assert (= (and d!2204910 res!2880413) b!7055502))

(assert (= (and b!7055502 res!2880414) b!7055503))

(declare-fun m!7773248 () Bool)

(assert (=> b!7055502 m!7773248))

(declare-fun m!7773250 () Bool)

(assert (=> b!7055502 m!7773250))

(declare-fun m!7773252 () Bool)

(assert (=> b!7055502 m!7773252))

(declare-fun m!7773254 () Bool)

(assert (=> d!2204910 m!7773254))

(declare-fun m!7773256 () Bool)

(assert (=> d!2204910 m!7773256))

(declare-fun m!7773258 () Bool)

(assert (=> d!2204910 m!7773258))

(declare-fun m!7773260 () Bool)

(assert (=> b!7055501 m!7773260))

(assert (=> b!7055376 d!2204910))

(assert (=> b!7055376 d!2204902))

(declare-fun d!2204912 () Bool)

(declare-fun e!4241629 () Bool)

(assert (=> d!2204912 e!4241629))

(declare-fun res!2880417 () Bool)

(assert (=> d!2204912 (=> (not res!2880417) (not e!4241629))))

(declare-fun lt!2532125 () Context!13136)

(declare-fun dynLambda!27641 (Int Context!13136) Context!13136)

(assert (=> d!2204912 (= res!2880417 (= lt!2531971 (dynLambda!27641 lambda!420289 lt!2532125)))))

(declare-fun choose!53817 ((Set Context!13136) Int Context!13136) Context!13136)

(assert (=> d!2204912 (= lt!2532125 (choose!53817 z1!570 lambda!420289 lt!2531971))))

(assert (=> d!2204912 (set.member lt!2531971 (map!15892 z1!570 lambda!420289))))

(assert (=> d!2204912 (= (mapPost2!401 z1!570 lambda!420289 lt!2531971) lt!2532125)))

(declare-fun b!7055507 () Bool)

(assert (=> b!7055507 (= e!4241629 (set.member lt!2532125 z1!570))))

(assert (= (and d!2204912 res!2880417) b!7055507))

(declare-fun b_lambda!268693 () Bool)

(assert (=> (not b_lambda!268693) (not d!2204912)))

(declare-fun m!7773262 () Bool)

(assert (=> d!2204912 m!7773262))

(declare-fun m!7773264 () Bool)

(assert (=> d!2204912 m!7773264))

(declare-fun m!7773266 () Bool)

(assert (=> d!2204912 m!7773266))

(declare-fun m!7773268 () Bool)

(assert (=> d!2204912 m!7773268))

(declare-fun m!7773270 () Bool)

(assert (=> b!7055507 m!7773270))

(assert (=> b!7055376 d!2204912))

(assert (=> b!7055377 d!2204878))

(assert (=> b!7055377 d!2204876))

(assert (=> b!7055368 d!2204902))

(declare-fun bs!1877016 () Bool)

(declare-fun d!2204914 () Bool)

(assert (= bs!1877016 (and d!2204914 b!7055373)))

(declare-fun lambda!420353 () Int)

(assert (=> bs!1877016 (not (= lambda!420353 lambda!420288))))

(assert (=> d!2204914 true))

(declare-fun order!28319 () Int)

(declare-fun dynLambda!27642 (Int Int) Int)

(assert (=> d!2204914 (< (dynLambda!27642 order!28319 lambda!420288) (dynLambda!27642 order!28319 lambda!420353))))

(declare-fun forall!16519 (List!68244 Int) Bool)

(assert (=> d!2204914 (= (exists!3562 lt!2531990 lambda!420288) (not (forall!16519 lt!2531990 lambda!420353)))))

(declare-fun bs!1877017 () Bool)

(assert (= bs!1877017 d!2204914))

(declare-fun m!7773272 () Bool)

(assert (=> bs!1877017 m!7773272))

(assert (=> b!7055373 d!2204914))

(declare-fun d!2204916 () Bool)

(declare-fun e!4241632 () Bool)

(assert (=> d!2204916 e!4241632))

(declare-fun res!2880420 () Bool)

(assert (=> d!2204916 (=> (not res!2880420) (not e!4241632))))

(declare-fun lt!2532128 () List!68244)

(declare-fun noDuplicate!2690 (List!68244) Bool)

(assert (=> d!2204916 (= res!2880420 (noDuplicate!2690 lt!2532128))))

(declare-fun choose!53818 ((Set Context!13136)) List!68244)

(assert (=> d!2204916 (= lt!2532128 (choose!53818 lt!2531986))))

(assert (=> d!2204916 (= (toList!10913 lt!2531986) lt!2532128)))

(declare-fun b!7055512 () Bool)

(declare-fun content!13687 (List!68244) (Set Context!13136))

(assert (=> b!7055512 (= e!4241632 (= (content!13687 lt!2532128) lt!2531986))))

(assert (= (and d!2204916 res!2880420) b!7055512))

(declare-fun m!7773274 () Bool)

(assert (=> d!2204916 m!7773274))

(declare-fun m!7773276 () Bool)

(assert (=> d!2204916 m!7773276))

(declare-fun m!7773278 () Bool)

(assert (=> b!7055512 m!7773278))

(assert (=> b!7055373 d!2204916))

(declare-fun bs!1877018 () Bool)

(declare-fun d!2204918 () Bool)

(assert (= bs!1877018 (and d!2204918 b!7055373)))

(declare-fun lambda!420356 () Int)

(assert (=> bs!1877018 (= lambda!420356 lambda!420288)))

(declare-fun bs!1877019 () Bool)

(assert (= bs!1877019 (and d!2204918 d!2204914)))

(assert (=> bs!1877019 (not (= lambda!420356 lambda!420353))))

(assert (=> d!2204918 true))

(assert (=> d!2204918 (exists!3562 lt!2531990 lambda!420356)))

(declare-fun lt!2532131 () Unit!161817)

(declare-fun choose!53819 (List!68244 List!68243) Unit!161817)

(assert (=> d!2204918 (= lt!2532131 (choose!53819 lt!2531990 s!7408))))

(assert (=> d!2204918 (matchZipper!3112 (content!13687 lt!2531990) s!7408)))

(assert (=> d!2204918 (= (lemmaZipperMatchesExistsMatchingContext!493 lt!2531990 s!7408) lt!2532131)))

(declare-fun bs!1877020 () Bool)

(assert (= bs!1877020 d!2204918))

(declare-fun m!7773280 () Bool)

(assert (=> bs!1877020 m!7773280))

(declare-fun m!7773282 () Bool)

(assert (=> bs!1877020 m!7773282))

(declare-fun m!7773284 () Bool)

(assert (=> bs!1877020 m!7773284))

(assert (=> bs!1877020 m!7773284))

(declare-fun m!7773286 () Bool)

(assert (=> bs!1877020 m!7773286))

(assert (=> b!7055373 d!2204918))

(declare-fun d!2204920 () Bool)

(declare-fun e!4241635 () Bool)

(assert (=> d!2204920 e!4241635))

(declare-fun res!2880423 () Bool)

(assert (=> d!2204920 (=> (not res!2880423) (not e!4241635))))

(declare-fun lt!2532134 () Context!13136)

(declare-fun dynLambda!27643 (Int Context!13136) Bool)

(assert (=> d!2204920 (= res!2880423 (dynLambda!27643 lambda!420288 lt!2532134))))

(declare-fun getWitness!1638 (List!68244 Int) Context!13136)

(assert (=> d!2204920 (= lt!2532134 (getWitness!1638 (toList!10913 lt!2531986) lambda!420288))))

(declare-fun exists!3564 ((Set Context!13136) Int) Bool)

(assert (=> d!2204920 (exists!3564 lt!2531986 lambda!420288)))

(assert (=> d!2204920 (= (getWitness!1636 lt!2531986 lambda!420288) lt!2532134)))

(declare-fun b!7055515 () Bool)

(assert (=> b!7055515 (= e!4241635 (set.member lt!2532134 lt!2531986))))

(assert (= (and d!2204920 res!2880423) b!7055515))

(declare-fun b_lambda!268695 () Bool)

(assert (=> (not b_lambda!268695) (not d!2204920)))

(declare-fun m!7773288 () Bool)

(assert (=> d!2204920 m!7773288))

(assert (=> d!2204920 m!7773082))

(assert (=> d!2204920 m!7773082))

(declare-fun m!7773290 () Bool)

(assert (=> d!2204920 m!7773290))

(declare-fun m!7773292 () Bool)

(assert (=> d!2204920 m!7773292))

(declare-fun m!7773294 () Bool)

(assert (=> b!7055515 m!7773294))

(assert (=> b!7055373 d!2204920))

(declare-fun d!2204922 () Bool)

(declare-fun c!1314451 () Bool)

(assert (=> d!2204922 (= c!1314451 (isEmpty!39733 s!7408))))

(declare-fun e!4241636 () Bool)

(assert (=> d!2204922 (= (matchZipper!3112 lt!2532000 s!7408) e!4241636)))

(declare-fun b!7055516 () Bool)

(assert (=> b!7055516 (= e!4241636 (nullableZipper!2658 lt!2532000))))

(declare-fun b!7055517 () Bool)

(assert (=> b!7055517 (= e!4241636 (matchZipper!3112 (derivationStepZipper!3022 lt!2532000 (head!14359 s!7408)) (tail!13705 s!7408)))))

(assert (= (and d!2204922 c!1314451) b!7055516))

(assert (= (and d!2204922 (not c!1314451)) b!7055517))

(assert (=> d!2204922 m!7773212))

(declare-fun m!7773296 () Bool)

(assert (=> b!7055516 m!7773296))

(assert (=> b!7055517 m!7773216))

(assert (=> b!7055517 m!7773216))

(declare-fun m!7773298 () Bool)

(assert (=> b!7055517 m!7773298))

(assert (=> b!7055517 m!7773220))

(assert (=> b!7055517 m!7773298))

(assert (=> b!7055517 m!7773220))

(declare-fun m!7773300 () Bool)

(assert (=> b!7055517 m!7773300))

(assert (=> b!7055373 d!2204922))

(declare-fun d!2204924 () Bool)

(assert (=> d!2204924 (= (isEmpty!39731 (exprs!7068 lt!2531984)) (is-Nil!68118 (exprs!7068 lt!2531984)))))

(assert (=> b!7055383 d!2204924))

(assert (=> b!7055374 d!2204876))

(declare-fun b!7055520 () Bool)

(declare-fun res!2880425 () Bool)

(declare-fun e!4241638 () Bool)

(assert (=> b!7055520 (=> (not res!2880425) (not e!4241638))))

(declare-fun lt!2532135 () List!68242)

(assert (=> b!7055520 (= res!2880425 (= (size!41152 lt!2532135) (+ (size!41152 lt!2531982) (size!41152 (exprs!7068 ct2!306)))))))

(declare-fun b!7055518 () Bool)

(declare-fun e!4241637 () List!68242)

(assert (=> b!7055518 (= e!4241637 (exprs!7068 ct2!306))))

(declare-fun d!2204926 () Bool)

(assert (=> d!2204926 e!4241638))

(declare-fun res!2880424 () Bool)

(assert (=> d!2204926 (=> (not res!2880424) (not e!4241638))))

(assert (=> d!2204926 (= res!2880424 (= (content!13686 lt!2532135) (set.union (content!13686 lt!2531982) (content!13686 (exprs!7068 ct2!306)))))))

(assert (=> d!2204926 (= lt!2532135 e!4241637)))

(declare-fun c!1314452 () Bool)

(assert (=> d!2204926 (= c!1314452 (is-Nil!68118 lt!2531982))))

(assert (=> d!2204926 (= (++!15655 lt!2531982 (exprs!7068 ct2!306)) lt!2532135)))

(declare-fun b!7055521 () Bool)

(assert (=> b!7055521 (= e!4241638 (or (not (= (exprs!7068 ct2!306) Nil!68118)) (= lt!2532135 lt!2531982)))))

(declare-fun b!7055519 () Bool)

(assert (=> b!7055519 (= e!4241637 (Cons!68118 (h!74566 lt!2531982) (++!15655 (t!382021 lt!2531982) (exprs!7068 ct2!306))))))

(assert (= (and d!2204926 c!1314452) b!7055518))

(assert (= (and d!2204926 (not c!1314452)) b!7055519))

(assert (= (and d!2204926 res!2880424) b!7055520))

(assert (= (and b!7055520 res!2880425) b!7055521))

(declare-fun m!7773302 () Bool)

(assert (=> b!7055520 m!7773302))

(declare-fun m!7773304 () Bool)

(assert (=> b!7055520 m!7773304))

(assert (=> b!7055520 m!7773252))

(declare-fun m!7773306 () Bool)

(assert (=> d!2204926 m!7773306))

(declare-fun m!7773308 () Bool)

(assert (=> d!2204926 m!7773308))

(assert (=> d!2204926 m!7773258))

(declare-fun m!7773310 () Bool)

(assert (=> b!7055519 m!7773310))

(assert (=> b!7055374 d!2204926))

(declare-fun d!2204928 () Bool)

(declare-fun c!1314465 () Bool)

(assert (=> d!2204928 (= c!1314465 (and (is-ElementMatch!17572 (h!74566 (exprs!7068 lt!2531984))) (= (c!1314418 (h!74566 (exprs!7068 lt!2531984))) (h!74567 s!7408))))))

(declare-fun e!4241656 () (Set Context!13136))

(assert (=> d!2204928 (= (derivationStepZipperDown!2206 (h!74566 (exprs!7068 lt!2531984)) lt!2531975 (h!74567 s!7408)) e!4241656)))

(declare-fun b!7055544 () Bool)

(declare-fun e!4241653 () (Set Context!13136))

(declare-fun call!640951 () (Set Context!13136))

(assert (=> b!7055544 (= e!4241653 call!640951)))

(declare-fun b!7055545 () Bool)

(assert (=> b!7055545 (= e!4241656 (set.insert lt!2531975 (as set.empty (Set Context!13136))))))

(declare-fun b!7055546 () Bool)

(declare-fun e!4241651 () Bool)

(assert (=> b!7055546 (= e!4241651 (nullable!7255 (regOne!35656 (h!74566 (exprs!7068 lt!2531984)))))))

(declare-fun b!7055547 () Bool)

(declare-fun e!4241655 () (Set Context!13136))

(assert (=> b!7055547 (= e!4241655 call!640951)))

(declare-fun call!640952 () (Set Context!13136))

(declare-fun bm!640946 () Bool)

(declare-fun c!1314467 () Bool)

(declare-fun call!640956 () List!68242)

(assert (=> bm!640946 (= call!640952 (derivationStepZipperDown!2206 (ite c!1314467 (regTwo!35657 (h!74566 (exprs!7068 lt!2531984))) (regOne!35656 (h!74566 (exprs!7068 lt!2531984)))) (ite c!1314467 lt!2531975 (Context!13137 call!640956)) (h!74567 s!7408)))))

(declare-fun b!7055548 () Bool)

(declare-fun c!1314464 () Bool)

(assert (=> b!7055548 (= c!1314464 e!4241651)))

(declare-fun res!2880429 () Bool)

(assert (=> b!7055548 (=> (not res!2880429) (not e!4241651))))

(assert (=> b!7055548 (= res!2880429 (is-Concat!26417 (h!74566 (exprs!7068 lt!2531984))))))

(declare-fun e!4241652 () (Set Context!13136))

(declare-fun e!4241654 () (Set Context!13136))

(assert (=> b!7055548 (= e!4241652 e!4241654)))

(declare-fun b!7055549 () Bool)

(declare-fun c!1314463 () Bool)

(assert (=> b!7055549 (= c!1314463 (is-Star!17572 (h!74566 (exprs!7068 lt!2531984))))))

(assert (=> b!7055549 (= e!4241653 e!4241655)))

(declare-fun bm!640947 () Bool)

(declare-fun call!640955 () (Set Context!13136))

(assert (=> bm!640947 (= call!640951 call!640955)))

(declare-fun b!7055550 () Bool)

(assert (=> b!7055550 (= e!4241654 (set.union call!640952 call!640955))))

(declare-fun b!7055551 () Bool)

(assert (=> b!7055551 (= e!4241656 e!4241652)))

(assert (=> b!7055551 (= c!1314467 (is-Union!17572 (h!74566 (exprs!7068 lt!2531984))))))

(declare-fun b!7055552 () Bool)

(assert (=> b!7055552 (= e!4241654 e!4241653)))

(declare-fun c!1314466 () Bool)

(assert (=> b!7055552 (= c!1314466 (is-Concat!26417 (h!74566 (exprs!7068 lt!2531984))))))

(declare-fun bm!640948 () Bool)

(declare-fun call!640953 () List!68242)

(assert (=> bm!640948 (= call!640953 call!640956)))

(declare-fun b!7055553 () Bool)

(declare-fun call!640954 () (Set Context!13136))

(assert (=> b!7055553 (= e!4241652 (set.union call!640954 call!640952))))

(declare-fun bm!640949 () Bool)

(declare-fun $colon$colon!2622 (List!68242 Regex!17572) List!68242)

(assert (=> bm!640949 (= call!640956 ($colon$colon!2622 (exprs!7068 lt!2531975) (ite (or c!1314464 c!1314466) (regTwo!35656 (h!74566 (exprs!7068 lt!2531984))) (h!74566 (exprs!7068 lt!2531984)))))))

(declare-fun bm!640950 () Bool)

(assert (=> bm!640950 (= call!640954 (derivationStepZipperDown!2206 (ite c!1314467 (regOne!35657 (h!74566 (exprs!7068 lt!2531984))) (ite c!1314464 (regTwo!35656 (h!74566 (exprs!7068 lt!2531984))) (ite c!1314466 (regOne!35656 (h!74566 (exprs!7068 lt!2531984))) (reg!17901 (h!74566 (exprs!7068 lt!2531984)))))) (ite (or c!1314467 c!1314464) lt!2531975 (Context!13137 call!640953)) (h!74567 s!7408)))))

(declare-fun b!7055554 () Bool)

(assert (=> b!7055554 (= e!4241655 (as set.empty (Set Context!13136)))))

(declare-fun bm!640951 () Bool)

(assert (=> bm!640951 (= call!640955 call!640954)))

(assert (= (and d!2204928 c!1314465) b!7055545))

(assert (= (and d!2204928 (not c!1314465)) b!7055551))

(assert (= (and b!7055551 c!1314467) b!7055553))

(assert (= (and b!7055551 (not c!1314467)) b!7055548))

(assert (= (and b!7055548 res!2880429) b!7055546))

(assert (= (and b!7055548 c!1314464) b!7055550))

(assert (= (and b!7055548 (not c!1314464)) b!7055552))

(assert (= (and b!7055552 c!1314466) b!7055544))

(assert (= (and b!7055552 (not c!1314466)) b!7055549))

(assert (= (and b!7055549 c!1314463) b!7055547))

(assert (= (and b!7055549 (not c!1314463)) b!7055554))

(assert (= (or b!7055544 b!7055547) bm!640948))

(assert (= (or b!7055544 b!7055547) bm!640947))

(assert (= (or b!7055550 bm!640947) bm!640951))

(assert (= (or b!7055550 bm!640948) bm!640949))

(assert (= (or b!7055553 bm!640951) bm!640950))

(assert (= (or b!7055553 b!7055550) bm!640946))

(declare-fun m!7773312 () Bool)

(assert (=> bm!640949 m!7773312))

(declare-fun m!7773314 () Bool)

(assert (=> b!7055546 m!7773314))

(assert (=> b!7055545 m!7773028))

(declare-fun m!7773316 () Bool)

(assert (=> bm!640950 m!7773316))

(declare-fun m!7773318 () Bool)

(assert (=> bm!640946 m!7773318))

(assert (=> b!7055374 d!2204928))

(declare-fun b!7055555 () Bool)

(declare-fun e!4241657 () (Set Context!13136))

(declare-fun call!640957 () (Set Context!13136))

(assert (=> b!7055555 (= e!4241657 call!640957)))

(declare-fun b!7055556 () Bool)

(assert (=> b!7055556 (= e!4241657 (as set.empty (Set Context!13136)))))

(declare-fun b!7055557 () Bool)

(declare-fun e!4241659 () (Set Context!13136))

(assert (=> b!7055557 (= e!4241659 e!4241657)))

(declare-fun c!1314469 () Bool)

(assert (=> b!7055557 (= c!1314469 (is-Cons!68118 (exprs!7068 lt!2531975)))))

(declare-fun b!7055558 () Bool)

(assert (=> b!7055558 (= e!4241659 (set.union call!640957 (derivationStepZipperUp!2156 (Context!13137 (t!382021 (exprs!7068 lt!2531975))) (h!74567 s!7408))))))

(declare-fun b!7055559 () Bool)

(declare-fun e!4241658 () Bool)

(assert (=> b!7055559 (= e!4241658 (nullable!7255 (h!74566 (exprs!7068 lt!2531975))))))

(declare-fun bm!640952 () Bool)

(assert (=> bm!640952 (= call!640957 (derivationStepZipperDown!2206 (h!74566 (exprs!7068 lt!2531975)) (Context!13137 (t!382021 (exprs!7068 lt!2531975))) (h!74567 s!7408)))))

(declare-fun d!2204930 () Bool)

(declare-fun c!1314468 () Bool)

(assert (=> d!2204930 (= c!1314468 e!4241658)))

(declare-fun res!2880430 () Bool)

(assert (=> d!2204930 (=> (not res!2880430) (not e!4241658))))

(assert (=> d!2204930 (= res!2880430 (is-Cons!68118 (exprs!7068 lt!2531975)))))

(assert (=> d!2204930 (= (derivationStepZipperUp!2156 lt!2531975 (h!74567 s!7408)) e!4241659)))

(assert (= (and d!2204930 res!2880430) b!7055559))

(assert (= (and d!2204930 c!1314468) b!7055558))

(assert (= (and d!2204930 (not c!1314468)) b!7055557))

(assert (= (and b!7055557 c!1314469) b!7055555))

(assert (= (and b!7055557 (not c!1314469)) b!7055556))

(assert (= (or b!7055558 b!7055555) bm!640952))

(declare-fun m!7773320 () Bool)

(assert (=> b!7055558 m!7773320))

(declare-fun m!7773322 () Bool)

(assert (=> b!7055559 m!7773322))

(declare-fun m!7773324 () Bool)

(assert (=> bm!640952 m!7773324))

(assert (=> b!7055374 d!2204930))

(assert (=> b!7055375 d!2204930))

(declare-fun bs!1877021 () Bool)

(declare-fun d!2204932 () Bool)

(assert (= bs!1877021 (and d!2204932 b!7055385)))

(declare-fun lambda!420357 () Int)

(assert (=> bs!1877021 (= lambda!420357 lambda!420291)))

(declare-fun bs!1877022 () Bool)

(assert (= bs!1877022 (and d!2204932 d!2204908)))

(assert (=> bs!1877022 (= lambda!420357 lambda!420350)))

(assert (=> d!2204932 true))

(assert (=> d!2204932 (= (derivationStepZipper!3022 lt!2531995 (h!74567 s!7408)) (flatMap!2498 lt!2531995 lambda!420357))))

(declare-fun bs!1877023 () Bool)

(assert (= bs!1877023 d!2204932))

(declare-fun m!7773326 () Bool)

(assert (=> bs!1877023 m!7773326))

(assert (=> b!7055375 d!2204932))

(declare-fun d!2204934 () Bool)

(assert (=> d!2204934 (= (flatMap!2498 lt!2531995 lambda!420291) (dynLambda!27640 lambda!420291 lt!2531975))))

(declare-fun lt!2532136 () Unit!161817)

(assert (=> d!2204934 (= lt!2532136 (choose!53815 lt!2531995 lt!2531975 lambda!420291))))

(assert (=> d!2204934 (= lt!2531995 (set.insert lt!2531975 (as set.empty (Set Context!13136))))))

(assert (=> d!2204934 (= (lemmaFlatMapOnSingletonSet!2007 lt!2531995 lt!2531975 lambda!420291) lt!2532136)))

(declare-fun b_lambda!268697 () Bool)

(assert (=> (not b_lambda!268697) (not d!2204934)))

(declare-fun bs!1877024 () Bool)

(assert (= bs!1877024 d!2204934))

(assert (=> bs!1877024 m!7773022))

(declare-fun m!7773328 () Bool)

(assert (=> bs!1877024 m!7773328))

(declare-fun m!7773330 () Bool)

(assert (=> bs!1877024 m!7773330))

(assert (=> bs!1877024 m!7773028))

(assert (=> b!7055375 d!2204934))

(assert (=> b!7055375 d!2204876))

(declare-fun d!2204936 () Bool)

(assert (=> d!2204936 (= (flatMap!2498 lt!2531995 lambda!420291) (choose!53816 lt!2531995 lambda!420291))))

(declare-fun bs!1877025 () Bool)

(assert (= bs!1877025 d!2204936))

(declare-fun m!7773332 () Bool)

(assert (=> bs!1877025 m!7773332))

(assert (=> b!7055375 d!2204936))

(declare-fun b!7055564 () Bool)

(declare-fun e!4241662 () Bool)

(declare-fun tp!1940199 () Bool)

(declare-fun tp!1940200 () Bool)

(assert (=> b!7055564 (= e!4241662 (and tp!1940199 tp!1940200))))

(assert (=> b!7055370 (= tp!1940182 e!4241662)))

(assert (= (and b!7055370 (is-Cons!68118 (exprs!7068 ct2!306))) b!7055564))

(declare-fun b!7055569 () Bool)

(declare-fun e!4241665 () Bool)

(declare-fun tp!1940203 () Bool)

(assert (=> b!7055569 (= e!4241665 (and tp_is_empty!44369 tp!1940203))))

(assert (=> b!7055367 (= tp!1940180 e!4241665)))

(assert (= (and b!7055367 (is-Cons!68119 (t!382022 s!7408))) b!7055569))

(declare-fun condSetEmpty!49858 () Bool)

(assert (=> setNonEmpty!49852 (= condSetEmpty!49858 (= setRest!49852 (as set.empty (Set Context!13136))))))

(declare-fun setRes!49858 () Bool)

(assert (=> setNonEmpty!49852 (= tp!1940181 setRes!49858)))

(declare-fun setIsEmpty!49858 () Bool)

(assert (=> setIsEmpty!49858 setRes!49858))

(declare-fun e!4241668 () Bool)

(declare-fun tp!1940209 () Bool)

(declare-fun setNonEmpty!49858 () Bool)

(declare-fun setElem!49858 () Context!13136)

(assert (=> setNonEmpty!49858 (= setRes!49858 (and tp!1940209 (inv!86790 setElem!49858) e!4241668))))

(declare-fun setRest!49858 () (Set Context!13136))

(assert (=> setNonEmpty!49858 (= setRest!49852 (set.union (set.insert setElem!49858 (as set.empty (Set Context!13136))) setRest!49858))))

(declare-fun b!7055574 () Bool)

(declare-fun tp!1940208 () Bool)

(assert (=> b!7055574 (= e!4241668 tp!1940208)))

(assert (= (and setNonEmpty!49852 condSetEmpty!49858) setIsEmpty!49858))

(assert (= (and setNonEmpty!49852 (not condSetEmpty!49858)) setNonEmpty!49858))

(assert (= setNonEmpty!49858 b!7055574))

(declare-fun m!7773334 () Bool)

(assert (=> setNonEmpty!49858 m!7773334))

(declare-fun b!7055575 () Bool)

(declare-fun e!4241669 () Bool)

(declare-fun tp!1940210 () Bool)

(declare-fun tp!1940211 () Bool)

(assert (=> b!7055575 (= e!4241669 (and tp!1940210 tp!1940211))))

(assert (=> b!7055384 (= tp!1940179 e!4241669)))

(assert (= (and b!7055384 (is-Cons!68118 (exprs!7068 setElem!49852))) b!7055575))

(declare-fun b_lambda!268699 () Bool)

(assert (= b_lambda!268697 (or b!7055385 b_lambda!268699)))

(declare-fun bs!1877026 () Bool)

(declare-fun d!2204938 () Bool)

(assert (= bs!1877026 (and d!2204938 b!7055385)))

(assert (=> bs!1877026 (= (dynLambda!27640 lambda!420291 lt!2531975) (derivationStepZipperUp!2156 lt!2531975 (h!74567 s!7408)))))

(assert (=> bs!1877026 m!7773024))

(assert (=> d!2204934 d!2204938))

(declare-fun b_lambda!268701 () Bool)

(assert (= b_lambda!268693 (or b!7055376 b_lambda!268701)))

(declare-fun bs!1877027 () Bool)

(declare-fun d!2204940 () Bool)

(assert (= bs!1877027 (and d!2204940 b!7055376)))

(declare-fun lt!2532137 () Unit!161817)

(assert (=> bs!1877027 (= lt!2532137 (lemmaConcatPreservesForall!883 (exprs!7068 lt!2532125) (exprs!7068 ct2!306) lambda!420290))))

(assert (=> bs!1877027 (= (dynLambda!27641 lambda!420289 lt!2532125) (Context!13137 (++!15655 (exprs!7068 lt!2532125) (exprs!7068 ct2!306))))))

(declare-fun m!7773336 () Bool)

(assert (=> bs!1877027 m!7773336))

(declare-fun m!7773338 () Bool)

(assert (=> bs!1877027 m!7773338))

(assert (=> d!2204912 d!2204940))

(declare-fun b_lambda!268703 () Bool)

(assert (= b_lambda!268695 (or b!7055373 b_lambda!268703)))

(declare-fun bs!1877028 () Bool)

(declare-fun d!2204942 () Bool)

(assert (= bs!1877028 (and d!2204942 b!7055373)))

(assert (=> bs!1877028 (= (dynLambda!27643 lambda!420288 lt!2532134) (matchZipper!3112 (set.insert lt!2532134 (as set.empty (Set Context!13136))) s!7408))))

(declare-fun m!7773340 () Bool)

(assert (=> bs!1877028 m!7773340))

(assert (=> bs!1877028 m!7773340))

(declare-fun m!7773342 () Bool)

(assert (=> bs!1877028 m!7773342))

(assert (=> d!2204920 d!2204942))

(declare-fun b_lambda!268705 () Bool)

(assert (= b_lambda!268691 (or b!7055385 b_lambda!268705)))

(declare-fun bs!1877029 () Bool)

(declare-fun d!2204944 () Bool)

(assert (= bs!1877029 (and d!2204944 b!7055385)))

(assert (=> bs!1877029 (= (dynLambda!27640 lambda!420291 lt!2531974) (derivationStepZipperUp!2156 lt!2531974 (h!74567 s!7408)))))

(assert (=> bs!1877029 m!7773052))

(assert (=> d!2204900 d!2204944))

(push 1)

(assert (not d!2204908))

(assert (not b!7055575))

(assert tp_is_empty!44369)

(assert (not b!7055546))

(assert (not b!7055470))

(assert (not bm!640949))

(assert (not d!2204932))

(assert (not b!7055468))

(assert (not bm!640950))

(assert (not b!7055564))

(assert (not d!2204876))

(assert (not d!2204882))

(assert (not b_lambda!268703))

(assert (not d!2204892))

(assert (not d!2204894))

(assert (not b!7055489))

(assert (not b!7055471))

(assert (not d!2204904))

(assert (not bs!1877027))

(assert (not b!7055463))

(assert (not d!2204910))

(assert (not b!7055520))

(assert (not d!2204918))

(assert (not b!7055462))

(assert (not d!2204880))

(assert (not b_lambda!268705))

(assert (not b!7055558))

(assert (not b!7055501))

(assert (not b!7055467))

(assert (not d!2204916))

(assert (not d!2204900))

(assert (not d!2204886))

(assert (not bs!1877028))

(assert (not b!7055474))

(assert (not b!7055472))

(assert (not d!2204898))

(assert (not b!7055512))

(assert (not b!7055466))

(assert (not d!2204888))

(assert (not setNonEmpty!49858))

(assert (not b_lambda!268699))

(assert (not d!2204902))

(assert (not bm!640946))

(assert (not b!7055469))

(assert (not d!2204934))

(assert (not b!7055574))

(assert (not d!2204874))

(assert (not b!7055488))

(assert (not d!2204936))

(assert (not b!7055569))

(assert (not b!7055516))

(assert (not b!7055517))

(assert (not d!2204914))

(assert (not d!2204926))

(assert (not bs!1877026))

(assert (not b!7055473))

(assert (not bm!640952))

(assert (not b_lambda!268701))

(assert (not d!2204878))

(assert (not bm!640933))

(assert (not b!7055559))

(assert (not d!2204912))

(assert (not d!2204896))

(assert (not d!2204922))

(assert (not d!2204884))

(assert (not d!2204920))

(assert (not bs!1877029))

(assert (not b!7055502))

(assert (not b!7055519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


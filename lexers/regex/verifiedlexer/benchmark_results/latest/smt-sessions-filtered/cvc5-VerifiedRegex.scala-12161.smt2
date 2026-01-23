; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684094 () Bool)

(assert start!684094)

(declare-fun b!7054649 () Bool)

(assert (=> b!7054649 true))

(declare-fun b!7054645 () Bool)

(assert (=> b!7054645 true))

(declare-fun b!7054647 () Bool)

(assert (=> b!7054647 true))

(declare-fun b!7054640 () Bool)

(declare-fun e!4241109 () Bool)

(declare-fun tp!1940065 () Bool)

(assert (=> b!7054640 (= e!4241109 tp!1940065)))

(declare-fun b!7054641 () Bool)

(declare-fun res!2880030 () Bool)

(declare-fun e!4241108 () Bool)

(assert (=> b!7054641 (=> res!2880030 e!4241108)))

(declare-fun lt!2531463 () Bool)

(assert (=> b!7054641 (= res!2880030 (not lt!2531463))))

(declare-fun b!7054642 () Bool)

(declare-fun e!4241113 () Bool)

(assert (=> b!7054642 (= e!4241108 e!4241113)))

(declare-fun res!2880033 () Bool)

(assert (=> b!7054642 (=> res!2880033 e!4241113)))

(declare-datatypes ((C!35406 0))(
  ( (C!35407 (val!27405 Int)) )
))
(declare-datatypes ((Regex!17568 0))(
  ( (ElementMatch!17568 (c!1314216 C!35406)) (Concat!26413 (regOne!35648 Regex!17568) (regTwo!35648 Regex!17568)) (EmptyExpr!17568) (Star!17568 (reg!17897 Regex!17568)) (EmptyLang!17568) (Union!17568 (regOne!35649 Regex!17568) (regTwo!35649 Regex!17568)) )
))
(declare-datatypes ((List!68230 0))(
  ( (Nil!68106) (Cons!68106 (h!74554 Regex!17568) (t!382009 List!68230)) )
))
(declare-datatypes ((Context!13128 0))(
  ( (Context!13129 (exprs!7064 List!68230)) )
))
(declare-fun lt!2531449 () (Set Context!13128))

(declare-datatypes ((List!68231 0))(
  ( (Nil!68107) (Cons!68107 (h!74555 C!35406) (t!382010 List!68231)) )
))
(declare-fun s!7408 () List!68231)

(declare-fun matchZipper!3108 ((Set Context!13128) List!68231) Bool)

(assert (=> b!7054642 (= res!2880033 (not (matchZipper!3108 lt!2531449 (t!382010 s!7408))))))

(declare-fun lambda!420042 () Int)

(declare-fun lt!2531473 () List!68230)

(declare-datatypes ((Unit!161809 0))(
  ( (Unit!161810) )
))
(declare-fun lt!2531452 () Unit!161809)

(declare-fun ct2!306 () Context!13128)

(declare-fun lemmaConcatPreservesForall!879 (List!68230 List!68230 Int) Unit!161809)

(assert (=> b!7054642 (= lt!2531452 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun b!7054643 () Bool)

(declare-fun res!2880035 () Bool)

(declare-fun e!4241105 () Bool)

(assert (=> b!7054643 (=> res!2880035 e!4241105)))

(declare-fun lt!2531466 () Context!13128)

(declare-fun lt!2531472 () (Set Context!13128))

(assert (=> b!7054643 (= res!2880035 (not (set.member lt!2531466 lt!2531472)))))

(declare-fun b!7054644 () Bool)

(declare-fun e!4241112 () Bool)

(declare-fun e!4241110 () Bool)

(assert (=> b!7054644 (= e!4241112 e!4241110)))

(declare-fun res!2880038 () Bool)

(assert (=> b!7054644 (=> res!2880038 e!4241110)))

(declare-fun lt!2531467 () (Set Context!13128))

(declare-fun lt!2531447 () (Set Context!13128))

(assert (=> b!7054644 (= res!2880038 (not (= lt!2531467 lt!2531447)))))

(declare-fun lt!2531458 () (Set Context!13128))

(assert (=> b!7054644 (= lt!2531447 (set.union lt!2531458 lt!2531449))))

(declare-fun lt!2531475 () Context!13128)

(declare-fun derivationStepZipperUp!2152 (Context!13128 C!35406) (Set Context!13128))

(assert (=> b!7054644 (= lt!2531449 (derivationStepZipperUp!2152 lt!2531475 (h!74555 s!7408)))))

(declare-fun lt!2531471 () Context!13128)

(declare-fun derivationStepZipperDown!2202 (Regex!17568 Context!13128 C!35406) (Set Context!13128))

(assert (=> b!7054644 (= lt!2531458 (derivationStepZipperDown!2202 (h!74554 (exprs!7064 lt!2531471)) lt!2531475 (h!74555 s!7408)))))

(declare-fun ++!15651 (List!68230 List!68230) List!68230)

(assert (=> b!7054644 (= lt!2531475 (Context!13129 (++!15651 lt!2531473 (exprs!7064 ct2!306))))))

(declare-fun lt!2531451 () Unit!161809)

(assert (=> b!7054644 (= lt!2531451 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun lt!2531457 () Unit!161809)

(assert (=> b!7054644 (= lt!2531457 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun setIsEmpty!49828 () Bool)

(declare-fun setRes!49828 () Bool)

(assert (=> setIsEmpty!49828 setRes!49828))

(declare-fun setElem!49828 () Context!13128)

(declare-fun setNonEmpty!49828 () Bool)

(declare-fun tp!1940064 () Bool)

(declare-fun inv!86780 (Context!13128) Bool)

(assert (=> setNonEmpty!49828 (= setRes!49828 (and tp!1940064 (inv!86780 setElem!49828) e!4241109))))

(declare-fun z1!570 () (Set Context!13128))

(declare-fun setRest!49828 () (Set Context!13128))

(assert (=> setNonEmpty!49828 (= z1!570 (set.union (set.insert setElem!49828 (as set.empty (Set Context!13128))) setRest!49828))))

(declare-fun res!2880028 () Bool)

(declare-fun e!4241104 () Bool)

(assert (=> start!684094 (=> (not res!2880028) (not e!4241104))))

(assert (=> start!684094 (= res!2880028 (matchZipper!3108 lt!2531472 s!7408))))

(declare-fun appendTo!689 ((Set Context!13128) Context!13128) (Set Context!13128))

(assert (=> start!684094 (= lt!2531472 (appendTo!689 z1!570 ct2!306))))

(assert (=> start!684094 e!4241104))

(declare-fun condSetEmpty!49828 () Bool)

(assert (=> start!684094 (= condSetEmpty!49828 (= z1!570 (as set.empty (Set Context!13128))))))

(assert (=> start!684094 setRes!49828))

(declare-fun e!4241100 () Bool)

(assert (=> start!684094 (and (inv!86780 ct2!306) e!4241100)))

(declare-fun e!4241106 () Bool)

(assert (=> start!684094 e!4241106))

(declare-fun e!4241101 () Bool)

(assert (=> b!7054645 (= e!4241105 e!4241101)))

(declare-fun res!2880036 () Bool)

(assert (=> b!7054645 (=> res!2880036 e!4241101)))

(declare-fun lt!2531453 () Context!13128)

(assert (=> b!7054645 (= res!2880036 (or (not (= lt!2531453 lt!2531466)) (not (set.member lt!2531471 z1!570))))))

(assert (=> b!7054645 (= lt!2531453 (Context!13129 (++!15651 (exprs!7064 lt!2531471) (exprs!7064 ct2!306))))))

(declare-fun lt!2531460 () Unit!161809)

(assert (=> b!7054645 (= lt!2531460 (lemmaConcatPreservesForall!879 (exprs!7064 lt!2531471) (exprs!7064 ct2!306) lambda!420042))))

(declare-fun lambda!420041 () Int)

(declare-fun mapPost2!397 ((Set Context!13128) Int Context!13128) Context!13128)

(assert (=> b!7054645 (= lt!2531471 (mapPost2!397 z1!570 lambda!420041 lt!2531466))))

(declare-fun b!7054646 () Bool)

(declare-fun res!2880039 () Bool)

(declare-fun e!4241102 () Bool)

(assert (=> b!7054646 (=> res!2880039 e!4241102)))

(declare-fun isEmpty!39724 (List!68230) Bool)

(assert (=> b!7054646 (= res!2880039 (isEmpty!39724 (exprs!7064 lt!2531471)))))

(declare-fun e!4241107 () Bool)

(assert (=> b!7054647 (= e!4241107 e!4241102)))

(declare-fun res!2880037 () Bool)

(assert (=> b!7054647 (=> res!2880037 e!4241102)))

(declare-fun lt!2531446 () (Set Context!13128))

(declare-fun derivationStepZipper!3018 ((Set Context!13128) C!35406) (Set Context!13128))

(assert (=> b!7054647 (= res!2880037 (not (= (derivationStepZipper!3018 lt!2531446 (h!74555 s!7408)) lt!2531467)))))

(declare-fun lambda!420043 () Int)

(declare-fun flatMap!2494 ((Set Context!13128) Int) (Set Context!13128))

(assert (=> b!7054647 (= (flatMap!2494 lt!2531446 lambda!420043) (derivationStepZipperUp!2152 lt!2531453 (h!74555 s!7408)))))

(declare-fun lt!2531455 () Unit!161809)

(declare-fun lemmaFlatMapOnSingletonSet!2003 ((Set Context!13128) Context!13128 Int) Unit!161809)

(assert (=> b!7054647 (= lt!2531455 (lemmaFlatMapOnSingletonSet!2003 lt!2531446 lt!2531453 lambda!420043))))

(assert (=> b!7054647 (= lt!2531467 (derivationStepZipperUp!2152 lt!2531453 (h!74555 s!7408)))))

(declare-fun lt!2531462 () Unit!161809)

(assert (=> b!7054647 (= lt!2531462 (lemmaConcatPreservesForall!879 (exprs!7064 lt!2531471) (exprs!7064 ct2!306) lambda!420042))))

(declare-fun b!7054648 () Bool)

(assert (=> b!7054648 (= e!4241101 e!4241107)))

(declare-fun res!2880042 () Bool)

(assert (=> b!7054648 (=> res!2880042 e!4241107)))

(declare-fun lt!2531448 () (Set Context!13128))

(assert (=> b!7054648 (= res!2880042 (not (= lt!2531446 lt!2531448)))))

(assert (=> b!7054648 (= lt!2531446 (set.insert lt!2531453 (as set.empty (Set Context!13128))))))

(declare-fun lt!2531459 () Unit!161809)

(assert (=> b!7054648 (= lt!2531459 (lemmaConcatPreservesForall!879 (exprs!7064 lt!2531471) (exprs!7064 ct2!306) lambda!420042))))

(assert (=> b!7054649 (= e!4241104 (not e!4241105))))

(declare-fun res!2880043 () Bool)

(assert (=> b!7054649 (=> res!2880043 e!4241105)))

(assert (=> b!7054649 (= res!2880043 (not (matchZipper!3108 lt!2531448 s!7408)))))

(assert (=> b!7054649 (= lt!2531448 (set.insert lt!2531466 (as set.empty (Set Context!13128))))))

(declare-fun lambda!420040 () Int)

(declare-fun getWitness!1630 ((Set Context!13128) Int) Context!13128)

(assert (=> b!7054649 (= lt!2531466 (getWitness!1630 lt!2531472 lambda!420040))))

(declare-datatypes ((List!68232 0))(
  ( (Nil!68108) (Cons!68108 (h!74556 Context!13128) (t!382011 List!68232)) )
))
(declare-fun lt!2531468 () List!68232)

(declare-fun exists!3556 (List!68232 Int) Bool)

(assert (=> b!7054649 (exists!3556 lt!2531468 lambda!420040)))

(declare-fun lt!2531470 () Unit!161809)

(declare-fun lemmaZipperMatchesExistsMatchingContext!489 (List!68232 List!68231) Unit!161809)

(assert (=> b!7054649 (= lt!2531470 (lemmaZipperMatchesExistsMatchingContext!489 lt!2531468 s!7408))))

(declare-fun toList!10909 ((Set Context!13128)) List!68232)

(assert (=> b!7054649 (= lt!2531468 (toList!10909 lt!2531472))))

(declare-fun b!7054650 () Bool)

(declare-fun e!4241103 () Bool)

(assert (=> b!7054650 (= e!4241103 (not (matchZipper!3108 lt!2531449 (t!382010 s!7408))))))

(declare-fun lt!2531465 () Unit!161809)

(assert (=> b!7054650 (= lt!2531465 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun b!7054651 () Bool)

(assert (=> b!7054651 (= e!4241113 (inv!86780 lt!2531475))))

(declare-fun lt!2531461 () Unit!161809)

(assert (=> b!7054651 (= lt!2531461 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun lt!2531456 () Unit!161809)

(assert (=> b!7054651 (= lt!2531456 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun b!7054652 () Bool)

(declare-fun e!4241111 () Bool)

(assert (=> b!7054652 (= e!4241111 (matchZipper!3108 lt!2531449 (t!382010 s!7408)))))

(declare-fun b!7054653 () Bool)

(declare-fun tp!1940063 () Bool)

(assert (=> b!7054653 (= e!4241100 tp!1940063)))

(declare-fun b!7054654 () Bool)

(declare-fun res!2880041 () Bool)

(assert (=> b!7054654 (=> (not res!2880041) (not e!4241104))))

(assert (=> b!7054654 (= res!2880041 (is-Cons!68107 s!7408))))

(declare-fun b!7054655 () Bool)

(assert (=> b!7054655 (= e!4241102 e!4241112)))

(declare-fun res!2880029 () Bool)

(assert (=> b!7054655 (=> res!2880029 e!4241112)))

(declare-fun nullable!7251 (Regex!17568) Bool)

(assert (=> b!7054655 (= res!2880029 (not (nullable!7251 (h!74554 (exprs!7064 lt!2531471)))))))

(declare-fun tail!13696 (List!68230) List!68230)

(assert (=> b!7054655 (= lt!2531473 (tail!13696 (exprs!7064 lt!2531471)))))

(declare-fun b!7054656 () Bool)

(assert (=> b!7054656 (= e!4241110 e!4241108)))

(declare-fun res!2880031 () Bool)

(assert (=> b!7054656 (=> res!2880031 e!4241108)))

(assert (=> b!7054656 (= res!2880031 e!4241103)))

(declare-fun res!2880040 () Bool)

(assert (=> b!7054656 (=> (not res!2880040) (not e!4241103))))

(declare-fun lt!2531454 () Bool)

(assert (=> b!7054656 (= res!2880040 (not (= lt!2531463 lt!2531454)))))

(assert (=> b!7054656 (= lt!2531463 (matchZipper!3108 lt!2531467 (t!382010 s!7408)))))

(declare-fun lt!2531474 () Unit!161809)

(assert (=> b!7054656 (= lt!2531474 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(assert (=> b!7054656 (= (matchZipper!3108 lt!2531447 (t!382010 s!7408)) e!4241111)))

(declare-fun res!2880032 () Bool)

(assert (=> b!7054656 (=> res!2880032 e!4241111)))

(assert (=> b!7054656 (= res!2880032 lt!2531454)))

(assert (=> b!7054656 (= lt!2531454 (matchZipper!3108 lt!2531458 (t!382010 s!7408)))))

(declare-fun lt!2531450 () Unit!161809)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1581 ((Set Context!13128) (Set Context!13128) List!68231) Unit!161809)

(assert (=> b!7054656 (= lt!2531450 (lemmaZipperConcatMatchesSameAsBothZippers!1581 lt!2531458 lt!2531449 (t!382010 s!7408)))))

(declare-fun lt!2531464 () Unit!161809)

(assert (=> b!7054656 (= lt!2531464 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun lt!2531469 () Unit!161809)

(assert (=> b!7054656 (= lt!2531469 (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(declare-fun b!7054657 () Bool)

(declare-fun tp_is_empty!44361 () Bool)

(declare-fun tp!1940066 () Bool)

(assert (=> b!7054657 (= e!4241106 (and tp_is_empty!44361 tp!1940066))))

(declare-fun b!7054658 () Bool)

(declare-fun res!2880034 () Bool)

(assert (=> b!7054658 (=> res!2880034 e!4241102)))

(assert (=> b!7054658 (= res!2880034 (not (is-Cons!68106 (exprs!7064 lt!2531471))))))

(assert (= (and start!684094 res!2880028) b!7054654))

(assert (= (and b!7054654 res!2880041) b!7054649))

(assert (= (and b!7054649 (not res!2880043)) b!7054643))

(assert (= (and b!7054643 (not res!2880035)) b!7054645))

(assert (= (and b!7054645 (not res!2880036)) b!7054648))

(assert (= (and b!7054648 (not res!2880042)) b!7054647))

(assert (= (and b!7054647 (not res!2880037)) b!7054658))

(assert (= (and b!7054658 (not res!2880034)) b!7054646))

(assert (= (and b!7054646 (not res!2880039)) b!7054655))

(assert (= (and b!7054655 (not res!2880029)) b!7054644))

(assert (= (and b!7054644 (not res!2880038)) b!7054656))

(assert (= (and b!7054656 (not res!2880032)) b!7054652))

(assert (= (and b!7054656 res!2880040) b!7054650))

(assert (= (and b!7054656 (not res!2880031)) b!7054641))

(assert (= (and b!7054641 (not res!2880030)) b!7054642))

(assert (= (and b!7054642 (not res!2880033)) b!7054651))

(assert (= (and start!684094 condSetEmpty!49828) setIsEmpty!49828))

(assert (= (and start!684094 (not condSetEmpty!49828)) setNonEmpty!49828))

(assert (= setNonEmpty!49828 b!7054640))

(assert (= start!684094 b!7054653))

(assert (= (and start!684094 (is-Cons!68107 s!7408)) b!7054657))

(declare-fun m!7772046 () Bool)

(assert (=> b!7054647 m!7772046))

(declare-fun m!7772048 () Bool)

(assert (=> b!7054647 m!7772048))

(declare-fun m!7772050 () Bool)

(assert (=> b!7054647 m!7772050))

(declare-fun m!7772052 () Bool)

(assert (=> b!7054647 m!7772052))

(declare-fun m!7772054 () Bool)

(assert (=> b!7054647 m!7772054))

(declare-fun m!7772056 () Bool)

(assert (=> b!7054656 m!7772056))

(declare-fun m!7772058 () Bool)

(assert (=> b!7054656 m!7772058))

(assert (=> b!7054656 m!7772058))

(declare-fun m!7772060 () Bool)

(assert (=> b!7054656 m!7772060))

(declare-fun m!7772062 () Bool)

(assert (=> b!7054656 m!7772062))

(declare-fun m!7772064 () Bool)

(assert (=> b!7054656 m!7772064))

(assert (=> b!7054656 m!7772058))

(declare-fun m!7772066 () Bool)

(assert (=> b!7054655 m!7772066))

(declare-fun m!7772068 () Bool)

(assert (=> b!7054655 m!7772068))

(declare-fun m!7772070 () Bool)

(assert (=> b!7054646 m!7772070))

(declare-fun m!7772072 () Bool)

(assert (=> b!7054648 m!7772072))

(assert (=> b!7054648 m!7772046))

(declare-fun m!7772074 () Bool)

(assert (=> b!7054642 m!7772074))

(assert (=> b!7054642 m!7772058))

(declare-fun m!7772076 () Bool)

(assert (=> setNonEmpty!49828 m!7772076))

(assert (=> b!7054644 m!7772058))

(declare-fun m!7772078 () Bool)

(assert (=> b!7054644 m!7772078))

(assert (=> b!7054644 m!7772058))

(declare-fun m!7772080 () Bool)

(assert (=> b!7054644 m!7772080))

(declare-fun m!7772082 () Bool)

(assert (=> b!7054644 m!7772082))

(declare-fun m!7772084 () Bool)

(assert (=> b!7054651 m!7772084))

(assert (=> b!7054651 m!7772058))

(assert (=> b!7054651 m!7772058))

(declare-fun m!7772086 () Bool)

(assert (=> b!7054645 m!7772086))

(declare-fun m!7772088 () Bool)

(assert (=> b!7054645 m!7772088))

(assert (=> b!7054645 m!7772046))

(declare-fun m!7772090 () Bool)

(assert (=> b!7054645 m!7772090))

(declare-fun m!7772092 () Bool)

(assert (=> start!684094 m!7772092))

(declare-fun m!7772094 () Bool)

(assert (=> start!684094 m!7772094))

(declare-fun m!7772096 () Bool)

(assert (=> start!684094 m!7772096))

(declare-fun m!7772098 () Bool)

(assert (=> b!7054649 m!7772098))

(declare-fun m!7772100 () Bool)

(assert (=> b!7054649 m!7772100))

(declare-fun m!7772102 () Bool)

(assert (=> b!7054649 m!7772102))

(declare-fun m!7772104 () Bool)

(assert (=> b!7054649 m!7772104))

(declare-fun m!7772106 () Bool)

(assert (=> b!7054649 m!7772106))

(declare-fun m!7772108 () Bool)

(assert (=> b!7054649 m!7772108))

(assert (=> b!7054650 m!7772074))

(assert (=> b!7054650 m!7772058))

(declare-fun m!7772110 () Bool)

(assert (=> b!7054643 m!7772110))

(assert (=> b!7054652 m!7772074))

(push 1)

(assert (not b!7054645))

(assert (not b!7054656))

(assert (not b!7054640))

(assert (not setNonEmpty!49828))

(assert tp_is_empty!44361)

(assert (not b!7054644))

(assert (not b!7054652))

(assert (not b!7054649))

(assert (not b!7054647))

(assert (not b!7054651))

(assert (not b!7054650))

(assert (not b!7054655))

(assert (not start!684094))

(assert (not b!7054657))

(assert (not b!7054646))

(assert (not b!7054648))

(assert (not b!7054653))

(assert (not b!7054642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1876884 () Bool)

(declare-fun d!2204604 () Bool)

(assert (= bs!1876884 (and d!2204604 b!7054645)))

(declare-fun lambda!420084 () Int)

(assert (=> bs!1876884 (= lambda!420084 lambda!420042)))

(declare-fun forall!16513 (List!68230 Int) Bool)

(assert (=> d!2204604 (= (inv!86780 setElem!49828) (forall!16513 (exprs!7064 setElem!49828) lambda!420084))))

(declare-fun bs!1876885 () Bool)

(assert (= bs!1876885 d!2204604))

(declare-fun m!7772178 () Bool)

(assert (=> bs!1876885 m!7772178))

(assert (=> setNonEmpty!49828 d!2204604))

(declare-fun d!2204606 () Bool)

(assert (=> d!2204606 (forall!16513 (++!15651 lt!2531473 (exprs!7064 ct2!306)) lambda!420042)))

(declare-fun lt!2531570 () Unit!161809)

(declare-fun choose!53795 (List!68230 List!68230 Int) Unit!161809)

(assert (=> d!2204606 (= lt!2531570 (choose!53795 lt!2531473 (exprs!7064 ct2!306) lambda!420042))))

(assert (=> d!2204606 (forall!16513 lt!2531473 lambda!420042)))

(assert (=> d!2204606 (= (lemmaConcatPreservesForall!879 lt!2531473 (exprs!7064 ct2!306) lambda!420042) lt!2531570)))

(declare-fun bs!1876886 () Bool)

(assert (= bs!1876886 d!2204606))

(assert (=> bs!1876886 m!7772082))

(assert (=> bs!1876886 m!7772082))

(declare-fun m!7772180 () Bool)

(assert (=> bs!1876886 m!7772180))

(declare-fun m!7772182 () Bool)

(assert (=> bs!1876886 m!7772182))

(declare-fun m!7772184 () Bool)

(assert (=> bs!1876886 m!7772184))

(assert (=> b!7054644 d!2204606))

(declare-fun b!7054750 () Bool)

(declare-fun e!4241171 () (Set Context!13128))

(assert (=> b!7054750 (= e!4241171 (set.insert lt!2531475 (as set.empty (Set Context!13128))))))

(declare-fun b!7054751 () Bool)

(declare-fun e!4241170 () (Set Context!13128))

(declare-fun e!4241169 () (Set Context!13128))

(assert (=> b!7054751 (= e!4241170 e!4241169)))

(declare-fun c!1314238 () Bool)

(assert (=> b!7054751 (= c!1314238 (is-Concat!26413 (h!74554 (exprs!7064 lt!2531471))))))

(declare-fun c!1314239 () Bool)

(declare-fun bm!640855 () Bool)

(declare-fun call!640863 () List!68230)

(declare-fun call!640861 () (Set Context!13128))

(assert (=> bm!640855 (= call!640861 (derivationStepZipperDown!2202 (ite c!1314239 (regTwo!35649 (h!74554 (exprs!7064 lt!2531471))) (regOne!35648 (h!74554 (exprs!7064 lt!2531471)))) (ite c!1314239 lt!2531475 (Context!13129 call!640863)) (h!74555 s!7408)))))

(declare-fun b!7054752 () Bool)

(declare-fun e!4241173 () Bool)

(assert (=> b!7054752 (= e!4241173 (nullable!7251 (regOne!35648 (h!74554 (exprs!7064 lt!2531471)))))))

(declare-fun c!1314236 () Bool)

(declare-fun bm!640856 () Bool)

(declare-fun $colon$colon!2620 (List!68230 Regex!17568) List!68230)

(assert (=> bm!640856 (= call!640863 ($colon$colon!2620 (exprs!7064 lt!2531475) (ite (or c!1314236 c!1314238) (regTwo!35648 (h!74554 (exprs!7064 lt!2531471))) (h!74554 (exprs!7064 lt!2531471)))))))

(declare-fun b!7054753 () Bool)

(declare-fun e!4241172 () (Set Context!13128))

(assert (=> b!7054753 (= e!4241172 (as set.empty (Set Context!13128)))))

(declare-fun bm!640857 () Bool)

(declare-fun call!640865 () (Set Context!13128))

(declare-fun call!640862 () (Set Context!13128))

(assert (=> bm!640857 (= call!640865 call!640862)))

(declare-fun b!7054754 () Bool)

(assert (=> b!7054754 (= e!4241172 call!640865)))

(declare-fun bm!640858 () Bool)

(declare-fun call!640864 () List!68230)

(assert (=> bm!640858 (= call!640864 call!640863)))

(declare-fun d!2204608 () Bool)

(declare-fun c!1314237 () Bool)

(assert (=> d!2204608 (= c!1314237 (and (is-ElementMatch!17568 (h!74554 (exprs!7064 lt!2531471))) (= (c!1314216 (h!74554 (exprs!7064 lt!2531471))) (h!74555 s!7408))))))

(assert (=> d!2204608 (= (derivationStepZipperDown!2202 (h!74554 (exprs!7064 lt!2531471)) lt!2531475 (h!74555 s!7408)) e!4241171)))

(declare-fun b!7054755 () Bool)

(declare-fun c!1314240 () Bool)

(assert (=> b!7054755 (= c!1314240 (is-Star!17568 (h!74554 (exprs!7064 lt!2531471))))))

(assert (=> b!7054755 (= e!4241169 e!4241172)))

(declare-fun b!7054756 () Bool)

(declare-fun e!4241168 () (Set Context!13128))

(assert (=> b!7054756 (= e!4241171 e!4241168)))

(assert (=> b!7054756 (= c!1314239 (is-Union!17568 (h!74554 (exprs!7064 lt!2531471))))))

(declare-fun bm!640859 () Bool)

(declare-fun call!640860 () (Set Context!13128))

(assert (=> bm!640859 (= call!640862 call!640860)))

(declare-fun b!7054757 () Bool)

(assert (=> b!7054757 (= e!4241170 (set.union call!640861 call!640862))))

(declare-fun b!7054758 () Bool)

(assert (=> b!7054758 (= e!4241168 (set.union call!640860 call!640861))))

(declare-fun bm!640860 () Bool)

(assert (=> bm!640860 (= call!640860 (derivationStepZipperDown!2202 (ite c!1314239 (regOne!35649 (h!74554 (exprs!7064 lt!2531471))) (ite c!1314236 (regTwo!35648 (h!74554 (exprs!7064 lt!2531471))) (ite c!1314238 (regOne!35648 (h!74554 (exprs!7064 lt!2531471))) (reg!17897 (h!74554 (exprs!7064 lt!2531471)))))) (ite (or c!1314239 c!1314236) lt!2531475 (Context!13129 call!640864)) (h!74555 s!7408)))))

(declare-fun b!7054759 () Bool)

(assert (=> b!7054759 (= e!4241169 call!640865)))

(declare-fun b!7054760 () Bool)

(assert (=> b!7054760 (= c!1314236 e!4241173)))

(declare-fun res!2880096 () Bool)

(assert (=> b!7054760 (=> (not res!2880096) (not e!4241173))))

(assert (=> b!7054760 (= res!2880096 (is-Concat!26413 (h!74554 (exprs!7064 lt!2531471))))))

(assert (=> b!7054760 (= e!4241168 e!4241170)))

(assert (= (and d!2204608 c!1314237) b!7054750))

(assert (= (and d!2204608 (not c!1314237)) b!7054756))

(assert (= (and b!7054756 c!1314239) b!7054758))

(assert (= (and b!7054756 (not c!1314239)) b!7054760))

(assert (= (and b!7054760 res!2880096) b!7054752))

(assert (= (and b!7054760 c!1314236) b!7054757))

(assert (= (and b!7054760 (not c!1314236)) b!7054751))

(assert (= (and b!7054751 c!1314238) b!7054759))

(assert (= (and b!7054751 (not c!1314238)) b!7054755))

(assert (= (and b!7054755 c!1314240) b!7054754))

(assert (= (and b!7054755 (not c!1314240)) b!7054753))

(assert (= (or b!7054759 b!7054754) bm!640858))

(assert (= (or b!7054759 b!7054754) bm!640857))

(assert (= (or b!7054757 bm!640857) bm!640859))

(assert (= (or b!7054757 bm!640858) bm!640856))

(assert (= (or b!7054758 bm!640859) bm!640860))

(assert (= (or b!7054758 b!7054757) bm!640855))

(declare-fun m!7772186 () Bool)

(assert (=> bm!640860 m!7772186))

(declare-fun m!7772188 () Bool)

(assert (=> b!7054752 m!7772188))

(declare-fun m!7772190 () Bool)

(assert (=> bm!640856 m!7772190))

(declare-fun m!7772192 () Bool)

(assert (=> b!7054750 m!7772192))

(declare-fun m!7772194 () Bool)

(assert (=> bm!640855 m!7772194))

(assert (=> b!7054644 d!2204608))

(declare-fun lt!2531573 () List!68230)

(declare-fun b!7054772 () Bool)

(declare-fun e!4241178 () Bool)

(assert (=> b!7054772 (= e!4241178 (or (not (= (exprs!7064 ct2!306) Nil!68106)) (= lt!2531573 lt!2531473)))))

(declare-fun b!7054770 () Bool)

(declare-fun e!4241179 () List!68230)

(assert (=> b!7054770 (= e!4241179 (Cons!68106 (h!74554 lt!2531473) (++!15651 (t!382009 lt!2531473) (exprs!7064 ct2!306))))))

(declare-fun b!7054769 () Bool)

(assert (=> b!7054769 (= e!4241179 (exprs!7064 ct2!306))))

(declare-fun d!2204610 () Bool)

(assert (=> d!2204610 e!4241178))

(declare-fun res!2880101 () Bool)

(assert (=> d!2204610 (=> (not res!2880101) (not e!4241178))))

(declare-fun content!13682 (List!68230) (Set Regex!17568))

(assert (=> d!2204610 (= res!2880101 (= (content!13682 lt!2531573) (set.union (content!13682 lt!2531473) (content!13682 (exprs!7064 ct2!306)))))))

(assert (=> d!2204610 (= lt!2531573 e!4241179)))

(declare-fun c!1314243 () Bool)

(assert (=> d!2204610 (= c!1314243 (is-Nil!68106 lt!2531473))))

(assert (=> d!2204610 (= (++!15651 lt!2531473 (exprs!7064 ct2!306)) lt!2531573)))

(declare-fun b!7054771 () Bool)

(declare-fun res!2880102 () Bool)

(assert (=> b!7054771 (=> (not res!2880102) (not e!4241178))))

(declare-fun size!41150 (List!68230) Int)

(assert (=> b!7054771 (= res!2880102 (= (size!41150 lt!2531573) (+ (size!41150 lt!2531473) (size!41150 (exprs!7064 ct2!306)))))))

(assert (= (and d!2204610 c!1314243) b!7054769))

(assert (= (and d!2204610 (not c!1314243)) b!7054770))

(assert (= (and d!2204610 res!2880101) b!7054771))

(assert (= (and b!7054771 res!2880102) b!7054772))

(declare-fun m!7772196 () Bool)

(assert (=> b!7054770 m!7772196))

(declare-fun m!7772198 () Bool)

(assert (=> d!2204610 m!7772198))

(declare-fun m!7772200 () Bool)

(assert (=> d!2204610 m!7772200))

(declare-fun m!7772202 () Bool)

(assert (=> d!2204610 m!7772202))

(declare-fun m!7772204 () Bool)

(assert (=> b!7054771 m!7772204))

(declare-fun m!7772206 () Bool)

(assert (=> b!7054771 m!7772206))

(declare-fun m!7772208 () Bool)

(assert (=> b!7054771 m!7772208))

(assert (=> b!7054644 d!2204610))

(declare-fun b!7054783 () Bool)

(declare-fun e!4241187 () (Set Context!13128))

(assert (=> b!7054783 (= e!4241187 (as set.empty (Set Context!13128)))))

(declare-fun b!7054784 () Bool)

(declare-fun e!4241186 () (Set Context!13128))

(assert (=> b!7054784 (= e!4241186 e!4241187)))

(declare-fun c!1314249 () Bool)

(assert (=> b!7054784 (= c!1314249 (is-Cons!68106 (exprs!7064 lt!2531475)))))

(declare-fun bm!640863 () Bool)

(declare-fun call!640868 () (Set Context!13128))

(assert (=> bm!640863 (= call!640868 (derivationStepZipperDown!2202 (h!74554 (exprs!7064 lt!2531475)) (Context!13129 (t!382009 (exprs!7064 lt!2531475))) (h!74555 s!7408)))))

(declare-fun b!7054785 () Bool)

(assert (=> b!7054785 (= e!4241187 call!640868)))

(declare-fun d!2204612 () Bool)

(declare-fun c!1314248 () Bool)

(declare-fun e!4241188 () Bool)

(assert (=> d!2204612 (= c!1314248 e!4241188)))

(declare-fun res!2880105 () Bool)

(assert (=> d!2204612 (=> (not res!2880105) (not e!4241188))))

(assert (=> d!2204612 (= res!2880105 (is-Cons!68106 (exprs!7064 lt!2531475)))))

(assert (=> d!2204612 (= (derivationStepZipperUp!2152 lt!2531475 (h!74555 s!7408)) e!4241186)))

(declare-fun b!7054786 () Bool)

(assert (=> b!7054786 (= e!4241188 (nullable!7251 (h!74554 (exprs!7064 lt!2531475))))))

(declare-fun b!7054787 () Bool)

(assert (=> b!7054787 (= e!4241186 (set.union call!640868 (derivationStepZipperUp!2152 (Context!13129 (t!382009 (exprs!7064 lt!2531475))) (h!74555 s!7408))))))

(assert (= (and d!2204612 res!2880105) b!7054786))

(assert (= (and d!2204612 c!1314248) b!7054787))

(assert (= (and d!2204612 (not c!1314248)) b!7054784))

(assert (= (and b!7054784 c!1314249) b!7054785))

(assert (= (and b!7054784 (not c!1314249)) b!7054783))

(assert (= (or b!7054787 b!7054785) bm!640863))

(declare-fun m!7772210 () Bool)

(assert (=> bm!640863 m!7772210))

(declare-fun m!7772212 () Bool)

(assert (=> b!7054786 m!7772212))

(declare-fun m!7772214 () Bool)

(assert (=> b!7054787 m!7772214))

(assert (=> b!7054644 d!2204612))

(declare-fun d!2204614 () Bool)

(declare-fun c!1314252 () Bool)

(declare-fun isEmpty!39726 (List!68231) Bool)

(assert (=> d!2204614 (= c!1314252 (isEmpty!39726 (t!382010 s!7408)))))

(declare-fun e!4241191 () Bool)

(assert (=> d!2204614 (= (matchZipper!3108 lt!2531449 (t!382010 s!7408)) e!4241191)))

(declare-fun b!7054792 () Bool)

(declare-fun nullableZipper!2655 ((Set Context!13128)) Bool)

(assert (=> b!7054792 (= e!4241191 (nullableZipper!2655 lt!2531449))))

(declare-fun b!7054793 () Bool)

(declare-fun head!14356 (List!68231) C!35406)

(declare-fun tail!13698 (List!68231) List!68231)

(assert (=> b!7054793 (= e!4241191 (matchZipper!3108 (derivationStepZipper!3018 lt!2531449 (head!14356 (t!382010 s!7408))) (tail!13698 (t!382010 s!7408))))))

(assert (= (and d!2204614 c!1314252) b!7054792))

(assert (= (and d!2204614 (not c!1314252)) b!7054793))

(declare-fun m!7772216 () Bool)

(assert (=> d!2204614 m!7772216))

(declare-fun m!7772218 () Bool)

(assert (=> b!7054792 m!7772218))

(declare-fun m!7772220 () Bool)

(assert (=> b!7054793 m!7772220))

(assert (=> b!7054793 m!7772220))

(declare-fun m!7772222 () Bool)

(assert (=> b!7054793 m!7772222))

(declare-fun m!7772224 () Bool)

(assert (=> b!7054793 m!7772224))

(assert (=> b!7054793 m!7772222))

(assert (=> b!7054793 m!7772224))

(declare-fun m!7772226 () Bool)

(assert (=> b!7054793 m!7772226))

(assert (=> b!7054652 d!2204614))

(declare-fun bs!1876887 () Bool)

(declare-fun d!2204616 () Bool)

(assert (= bs!1876887 (and d!2204616 b!7054645)))

(declare-fun lambda!420085 () Int)

(assert (=> bs!1876887 (= lambda!420085 lambda!420042)))

(declare-fun bs!1876888 () Bool)

(assert (= bs!1876888 (and d!2204616 d!2204604)))

(assert (=> bs!1876888 (= lambda!420085 lambda!420084)))

(assert (=> d!2204616 (= (inv!86780 lt!2531475) (forall!16513 (exprs!7064 lt!2531475) lambda!420085))))

(declare-fun bs!1876889 () Bool)

(assert (= bs!1876889 d!2204616))

(declare-fun m!7772228 () Bool)

(assert (=> bs!1876889 m!7772228))

(assert (=> b!7054651 d!2204616))

(assert (=> b!7054651 d!2204606))

(assert (=> b!7054642 d!2204614))

(assert (=> b!7054642 d!2204606))

(assert (=> b!7054650 d!2204614))

(assert (=> b!7054650 d!2204606))

(declare-fun bs!1876890 () Bool)

(declare-fun d!2204618 () Bool)

(assert (= bs!1876890 (and d!2204618 b!7054649)))

(declare-fun lambda!420088 () Int)

(assert (=> bs!1876890 (not (= lambda!420088 lambda!420040))))

(assert (=> d!2204618 true))

(declare-fun order!28311 () Int)

(declare-fun dynLambda!27631 (Int Int) Int)

(assert (=> d!2204618 (< (dynLambda!27631 order!28311 lambda!420040) (dynLambda!27631 order!28311 lambda!420088))))

(declare-fun forall!16514 (List!68232 Int) Bool)

(assert (=> d!2204618 (= (exists!3556 lt!2531468 lambda!420040) (not (forall!16514 lt!2531468 lambda!420088)))))

(declare-fun bs!1876891 () Bool)

(assert (= bs!1876891 d!2204618))

(declare-fun m!7772230 () Bool)

(assert (=> bs!1876891 m!7772230))

(assert (=> b!7054649 d!2204618))

(declare-fun d!2204620 () Bool)

(declare-fun e!4241194 () Bool)

(assert (=> d!2204620 e!4241194))

(declare-fun res!2880108 () Bool)

(assert (=> d!2204620 (=> (not res!2880108) (not e!4241194))))

(declare-fun lt!2531576 () List!68232)

(declare-fun noDuplicate!2688 (List!68232) Bool)

(assert (=> d!2204620 (= res!2880108 (noDuplicate!2688 lt!2531576))))

(declare-fun choose!53796 ((Set Context!13128)) List!68232)

(assert (=> d!2204620 (= lt!2531576 (choose!53796 lt!2531472))))

(assert (=> d!2204620 (= (toList!10909 lt!2531472) lt!2531576)))

(declare-fun b!7054798 () Bool)

(declare-fun content!13683 (List!68232) (Set Context!13128))

(assert (=> b!7054798 (= e!4241194 (= (content!13683 lt!2531576) lt!2531472))))

(assert (= (and d!2204620 res!2880108) b!7054798))

(declare-fun m!7772232 () Bool)

(assert (=> d!2204620 m!7772232))

(declare-fun m!7772234 () Bool)

(assert (=> d!2204620 m!7772234))

(declare-fun m!7772236 () Bool)

(assert (=> b!7054798 m!7772236))

(assert (=> b!7054649 d!2204620))

(declare-fun d!2204622 () Bool)

(declare-fun c!1314253 () Bool)

(assert (=> d!2204622 (= c!1314253 (isEmpty!39726 s!7408))))

(declare-fun e!4241195 () Bool)

(assert (=> d!2204622 (= (matchZipper!3108 lt!2531448 s!7408) e!4241195)))

(declare-fun b!7054799 () Bool)

(assert (=> b!7054799 (= e!4241195 (nullableZipper!2655 lt!2531448))))

(declare-fun b!7054800 () Bool)

(assert (=> b!7054800 (= e!4241195 (matchZipper!3108 (derivationStepZipper!3018 lt!2531448 (head!14356 s!7408)) (tail!13698 s!7408)))))

(assert (= (and d!2204622 c!1314253) b!7054799))

(assert (= (and d!2204622 (not c!1314253)) b!7054800))

(declare-fun m!7772238 () Bool)

(assert (=> d!2204622 m!7772238))

(declare-fun m!7772240 () Bool)

(assert (=> b!7054799 m!7772240))

(declare-fun m!7772242 () Bool)

(assert (=> b!7054800 m!7772242))

(assert (=> b!7054800 m!7772242))

(declare-fun m!7772244 () Bool)

(assert (=> b!7054800 m!7772244))

(declare-fun m!7772246 () Bool)

(assert (=> b!7054800 m!7772246))

(assert (=> b!7054800 m!7772244))

(assert (=> b!7054800 m!7772246))

(declare-fun m!7772248 () Bool)

(assert (=> b!7054800 m!7772248))

(assert (=> b!7054649 d!2204622))

(declare-fun d!2204624 () Bool)

(declare-fun e!4241198 () Bool)

(assert (=> d!2204624 e!4241198))

(declare-fun res!2880111 () Bool)

(assert (=> d!2204624 (=> (not res!2880111) (not e!4241198))))

(declare-fun lt!2531579 () Context!13128)

(declare-fun dynLambda!27632 (Int Context!13128) Bool)

(assert (=> d!2204624 (= res!2880111 (dynLambda!27632 lambda!420040 lt!2531579))))

(declare-fun getWitness!1632 (List!68232 Int) Context!13128)

(assert (=> d!2204624 (= lt!2531579 (getWitness!1632 (toList!10909 lt!2531472) lambda!420040))))

(declare-fun exists!3558 ((Set Context!13128) Int) Bool)

(assert (=> d!2204624 (exists!3558 lt!2531472 lambda!420040)))

(assert (=> d!2204624 (= (getWitness!1630 lt!2531472 lambda!420040) lt!2531579)))

(declare-fun b!7054803 () Bool)

(assert (=> b!7054803 (= e!4241198 (set.member lt!2531579 lt!2531472))))

(assert (= (and d!2204624 res!2880111) b!7054803))

(declare-fun b_lambda!268635 () Bool)

(assert (=> (not b_lambda!268635) (not d!2204624)))

(declare-fun m!7772250 () Bool)

(assert (=> d!2204624 m!7772250))

(assert (=> d!2204624 m!7772108))

(assert (=> d!2204624 m!7772108))

(declare-fun m!7772252 () Bool)

(assert (=> d!2204624 m!7772252))

(declare-fun m!7772254 () Bool)

(assert (=> d!2204624 m!7772254))

(declare-fun m!7772256 () Bool)

(assert (=> b!7054803 m!7772256))

(assert (=> b!7054649 d!2204624))

(declare-fun bs!1876892 () Bool)

(declare-fun d!2204626 () Bool)

(assert (= bs!1876892 (and d!2204626 b!7054649)))

(declare-fun lambda!420091 () Int)

(assert (=> bs!1876892 (= lambda!420091 lambda!420040)))

(declare-fun bs!1876893 () Bool)

(assert (= bs!1876893 (and d!2204626 d!2204618)))

(assert (=> bs!1876893 (not (= lambda!420091 lambda!420088))))

(assert (=> d!2204626 true))

(assert (=> d!2204626 (exists!3556 lt!2531468 lambda!420091)))

(declare-fun lt!2531582 () Unit!161809)

(declare-fun choose!53797 (List!68232 List!68231) Unit!161809)

(assert (=> d!2204626 (= lt!2531582 (choose!53797 lt!2531468 s!7408))))

(assert (=> d!2204626 (matchZipper!3108 (content!13683 lt!2531468) s!7408)))

(assert (=> d!2204626 (= (lemmaZipperMatchesExistsMatchingContext!489 lt!2531468 s!7408) lt!2531582)))

(declare-fun bs!1876894 () Bool)

(assert (= bs!1876894 d!2204626))

(declare-fun m!7772258 () Bool)

(assert (=> bs!1876894 m!7772258))

(declare-fun m!7772260 () Bool)

(assert (=> bs!1876894 m!7772260))

(declare-fun m!7772262 () Bool)

(assert (=> bs!1876894 m!7772262))

(assert (=> bs!1876894 m!7772262))

(declare-fun m!7772264 () Bool)

(assert (=> bs!1876894 m!7772264))

(assert (=> b!7054649 d!2204626))

(declare-fun d!2204628 () Bool)

(assert (=> d!2204628 (forall!16513 (++!15651 (exprs!7064 lt!2531471) (exprs!7064 ct2!306)) lambda!420042)))

(declare-fun lt!2531583 () Unit!161809)

(assert (=> d!2204628 (= lt!2531583 (choose!53795 (exprs!7064 lt!2531471) (exprs!7064 ct2!306) lambda!420042))))

(assert (=> d!2204628 (forall!16513 (exprs!7064 lt!2531471) lambda!420042)))

(assert (=> d!2204628 (= (lemmaConcatPreservesForall!879 (exprs!7064 lt!2531471) (exprs!7064 ct2!306) lambda!420042) lt!2531583)))

(declare-fun bs!1876895 () Bool)

(assert (= bs!1876895 d!2204628))

(assert (=> bs!1876895 m!7772088))

(assert (=> bs!1876895 m!7772088))

(declare-fun m!7772266 () Bool)

(assert (=> bs!1876895 m!7772266))

(declare-fun m!7772268 () Bool)

(assert (=> bs!1876895 m!7772268))

(declare-fun m!7772270 () Bool)

(assert (=> bs!1876895 m!7772270))

(assert (=> b!7054648 d!2204628))

(assert (=> b!7054647 d!2204628))

(declare-fun d!2204630 () Bool)

(declare-fun choose!53798 ((Set Context!13128) Int) (Set Context!13128))

(assert (=> d!2204630 (= (flatMap!2494 lt!2531446 lambda!420043) (choose!53798 lt!2531446 lambda!420043))))

(declare-fun bs!1876896 () Bool)

(assert (= bs!1876896 d!2204630))

(declare-fun m!7772272 () Bool)

(assert (=> bs!1876896 m!7772272))

(assert (=> b!7054647 d!2204630))

(declare-fun bs!1876897 () Bool)

(declare-fun d!2204632 () Bool)

(assert (= bs!1876897 (and d!2204632 b!7054647)))

(declare-fun lambda!420094 () Int)

(assert (=> bs!1876897 (= lambda!420094 lambda!420043)))

(assert (=> d!2204632 true))

(assert (=> d!2204632 (= (derivationStepZipper!3018 lt!2531446 (h!74555 s!7408)) (flatMap!2494 lt!2531446 lambda!420094))))

(declare-fun bs!1876898 () Bool)

(assert (= bs!1876898 d!2204632))

(declare-fun m!7772274 () Bool)

(assert (=> bs!1876898 m!7772274))

(assert (=> b!7054647 d!2204632))

(declare-fun d!2204634 () Bool)

(declare-fun dynLambda!27633 (Int Context!13128) (Set Context!13128))

(assert (=> d!2204634 (= (flatMap!2494 lt!2531446 lambda!420043) (dynLambda!27633 lambda!420043 lt!2531453))))

(declare-fun lt!2531586 () Unit!161809)

(declare-fun choose!53799 ((Set Context!13128) Context!13128 Int) Unit!161809)

(assert (=> d!2204634 (= lt!2531586 (choose!53799 lt!2531446 lt!2531453 lambda!420043))))

(assert (=> d!2204634 (= lt!2531446 (set.insert lt!2531453 (as set.empty (Set Context!13128))))))

(assert (=> d!2204634 (= (lemmaFlatMapOnSingletonSet!2003 lt!2531446 lt!2531453 lambda!420043) lt!2531586)))

(declare-fun b_lambda!268637 () Bool)

(assert (=> (not b_lambda!268637) (not d!2204634)))

(declare-fun bs!1876899 () Bool)

(assert (= bs!1876899 d!2204634))

(assert (=> bs!1876899 m!7772050))

(declare-fun m!7772276 () Bool)

(assert (=> bs!1876899 m!7772276))

(declare-fun m!7772278 () Bool)

(assert (=> bs!1876899 m!7772278))

(assert (=> bs!1876899 m!7772072))

(assert (=> b!7054647 d!2204634))

(declare-fun b!7054806 () Bool)

(declare-fun e!4241200 () (Set Context!13128))

(assert (=> b!7054806 (= e!4241200 (as set.empty (Set Context!13128)))))

(declare-fun b!7054807 () Bool)

(declare-fun e!4241199 () (Set Context!13128))

(assert (=> b!7054807 (= e!4241199 e!4241200)))

(declare-fun c!1314259 () Bool)

(assert (=> b!7054807 (= c!1314259 (is-Cons!68106 (exprs!7064 lt!2531453)))))

(declare-fun bm!640864 () Bool)

(declare-fun call!640869 () (Set Context!13128))

(assert (=> bm!640864 (= call!640869 (derivationStepZipperDown!2202 (h!74554 (exprs!7064 lt!2531453)) (Context!13129 (t!382009 (exprs!7064 lt!2531453))) (h!74555 s!7408)))))

(declare-fun b!7054808 () Bool)

(assert (=> b!7054808 (= e!4241200 call!640869)))

(declare-fun d!2204636 () Bool)

(declare-fun c!1314258 () Bool)

(declare-fun e!4241201 () Bool)

(assert (=> d!2204636 (= c!1314258 e!4241201)))

(declare-fun res!2880112 () Bool)

(assert (=> d!2204636 (=> (not res!2880112) (not e!4241201))))

(assert (=> d!2204636 (= res!2880112 (is-Cons!68106 (exprs!7064 lt!2531453)))))

(assert (=> d!2204636 (= (derivationStepZipperUp!2152 lt!2531453 (h!74555 s!7408)) e!4241199)))

(declare-fun b!7054809 () Bool)

(assert (=> b!7054809 (= e!4241201 (nullable!7251 (h!74554 (exprs!7064 lt!2531453))))))

(declare-fun b!7054810 () Bool)

(assert (=> b!7054810 (= e!4241199 (set.union call!640869 (derivationStepZipperUp!2152 (Context!13129 (t!382009 (exprs!7064 lt!2531453))) (h!74555 s!7408))))))

(assert (= (and d!2204636 res!2880112) b!7054809))

(assert (= (and d!2204636 c!1314258) b!7054810))

(assert (= (and d!2204636 (not c!1314258)) b!7054807))

(assert (= (and b!7054807 c!1314259) b!7054808))

(assert (= (and b!7054807 (not c!1314259)) b!7054806))

(assert (= (or b!7054810 b!7054808) bm!640864))

(declare-fun m!7772280 () Bool)

(assert (=> bm!640864 m!7772280))

(declare-fun m!7772282 () Bool)

(assert (=> b!7054809 m!7772282))

(declare-fun m!7772284 () Bool)

(assert (=> b!7054810 m!7772284))

(assert (=> b!7054647 d!2204636))

(declare-fun d!2204638 () Bool)

(assert (=> d!2204638 (= (isEmpty!39724 (exprs!7064 lt!2531471)) (is-Nil!68106 (exprs!7064 lt!2531471)))))

(assert (=> b!7054646 d!2204638))

(declare-fun d!2204640 () Bool)

(declare-fun c!1314260 () Bool)

(assert (=> d!2204640 (= c!1314260 (isEmpty!39726 s!7408))))

(declare-fun e!4241202 () Bool)

(assert (=> d!2204640 (= (matchZipper!3108 lt!2531472 s!7408) e!4241202)))

(declare-fun b!7054811 () Bool)

(assert (=> b!7054811 (= e!4241202 (nullableZipper!2655 lt!2531472))))

(declare-fun b!7054812 () Bool)

(assert (=> b!7054812 (= e!4241202 (matchZipper!3108 (derivationStepZipper!3018 lt!2531472 (head!14356 s!7408)) (tail!13698 s!7408)))))

(assert (= (and d!2204640 c!1314260) b!7054811))

(assert (= (and d!2204640 (not c!1314260)) b!7054812))

(assert (=> d!2204640 m!7772238))

(declare-fun m!7772286 () Bool)

(assert (=> b!7054811 m!7772286))

(assert (=> b!7054812 m!7772242))

(assert (=> b!7054812 m!7772242))

(declare-fun m!7772288 () Bool)

(assert (=> b!7054812 m!7772288))

(assert (=> b!7054812 m!7772246))

(assert (=> b!7054812 m!7772288))

(assert (=> b!7054812 m!7772246))

(declare-fun m!7772290 () Bool)

(assert (=> b!7054812 m!7772290))

(assert (=> start!684094 d!2204640))

(declare-fun bs!1876900 () Bool)

(declare-fun d!2204642 () Bool)

(assert (= bs!1876900 (and d!2204642 b!7054645)))

(declare-fun lambda!420099 () Int)

(assert (=> bs!1876900 (= lambda!420099 lambda!420041)))

(assert (=> d!2204642 true))

(declare-fun map!15888 ((Set Context!13128) Int) (Set Context!13128))

(assert (=> d!2204642 (= (appendTo!689 z1!570 ct2!306) (map!15888 z1!570 lambda!420099))))

(declare-fun bs!1876901 () Bool)

(assert (= bs!1876901 d!2204642))

(declare-fun m!7772292 () Bool)

(assert (=> bs!1876901 m!7772292))

(assert (=> start!684094 d!2204642))

(declare-fun bs!1876902 () Bool)

(declare-fun d!2204644 () Bool)

(assert (= bs!1876902 (and d!2204644 b!7054645)))

(declare-fun lambda!420100 () Int)

(assert (=> bs!1876902 (= lambda!420100 lambda!420042)))

(declare-fun bs!1876903 () Bool)

(assert (= bs!1876903 (and d!2204644 d!2204604)))

(assert (=> bs!1876903 (= lambda!420100 lambda!420084)))

(declare-fun bs!1876904 () Bool)

(assert (= bs!1876904 (and d!2204644 d!2204616)))

(assert (=> bs!1876904 (= lambda!420100 lambda!420085)))

(assert (=> d!2204644 (= (inv!86780 ct2!306) (forall!16513 (exprs!7064 ct2!306) lambda!420100))))

(declare-fun bs!1876905 () Bool)

(assert (= bs!1876905 d!2204644))

(declare-fun m!7772294 () Bool)

(assert (=> bs!1876905 m!7772294))

(assert (=> start!684094 d!2204644))

(declare-fun b!7054816 () Bool)

(declare-fun lt!2531589 () List!68230)

(declare-fun e!4241203 () Bool)

(assert (=> b!7054816 (= e!4241203 (or (not (= (exprs!7064 ct2!306) Nil!68106)) (= lt!2531589 (exprs!7064 lt!2531471))))))

(declare-fun b!7054814 () Bool)

(declare-fun e!4241204 () List!68230)

(assert (=> b!7054814 (= e!4241204 (Cons!68106 (h!74554 (exprs!7064 lt!2531471)) (++!15651 (t!382009 (exprs!7064 lt!2531471)) (exprs!7064 ct2!306))))))

(declare-fun b!7054813 () Bool)

(assert (=> b!7054813 (= e!4241204 (exprs!7064 ct2!306))))

(declare-fun d!2204646 () Bool)

(assert (=> d!2204646 e!4241203))

(declare-fun res!2880113 () Bool)

(assert (=> d!2204646 (=> (not res!2880113) (not e!4241203))))

(assert (=> d!2204646 (= res!2880113 (= (content!13682 lt!2531589) (set.union (content!13682 (exprs!7064 lt!2531471)) (content!13682 (exprs!7064 ct2!306)))))))

(assert (=> d!2204646 (= lt!2531589 e!4241204)))

(declare-fun c!1314262 () Bool)

(assert (=> d!2204646 (= c!1314262 (is-Nil!68106 (exprs!7064 lt!2531471)))))

(assert (=> d!2204646 (= (++!15651 (exprs!7064 lt!2531471) (exprs!7064 ct2!306)) lt!2531589)))

(declare-fun b!7054815 () Bool)

(declare-fun res!2880114 () Bool)

(assert (=> b!7054815 (=> (not res!2880114) (not e!4241203))))

(assert (=> b!7054815 (= res!2880114 (= (size!41150 lt!2531589) (+ (size!41150 (exprs!7064 lt!2531471)) (size!41150 (exprs!7064 ct2!306)))))))

(assert (= (and d!2204646 c!1314262) b!7054813))

(assert (= (and d!2204646 (not c!1314262)) b!7054814))

(assert (= (and d!2204646 res!2880113) b!7054815))

(assert (= (and b!7054815 res!2880114) b!7054816))

(declare-fun m!7772296 () Bool)

(assert (=> b!7054814 m!7772296))

(declare-fun m!7772298 () Bool)

(assert (=> d!2204646 m!7772298))

(declare-fun m!7772300 () Bool)

(assert (=> d!2204646 m!7772300))

(assert (=> d!2204646 m!7772202))

(declare-fun m!7772302 () Bool)

(assert (=> b!7054815 m!7772302))

(declare-fun m!7772304 () Bool)

(assert (=> b!7054815 m!7772304))

(assert (=> b!7054815 m!7772208))

(assert (=> b!7054645 d!2204646))

(assert (=> b!7054645 d!2204628))

(declare-fun d!2204648 () Bool)

(declare-fun e!4241207 () Bool)

(assert (=> d!2204648 e!4241207))

(declare-fun res!2880117 () Bool)

(assert (=> d!2204648 (=> (not res!2880117) (not e!4241207))))

(declare-fun lt!2531592 () Context!13128)

(declare-fun dynLambda!27634 (Int Context!13128) Context!13128)

(assert (=> d!2204648 (= res!2880117 (= lt!2531466 (dynLambda!27634 lambda!420041 lt!2531592)))))

(declare-fun choose!53800 ((Set Context!13128) Int Context!13128) Context!13128)

(assert (=> d!2204648 (= lt!2531592 (choose!53800 z1!570 lambda!420041 lt!2531466))))

(assert (=> d!2204648 (set.member lt!2531466 (map!15888 z1!570 lambda!420041))))

(assert (=> d!2204648 (= (mapPost2!397 z1!570 lambda!420041 lt!2531466) lt!2531592)))

(declare-fun b!7054820 () Bool)

(assert (=> b!7054820 (= e!4241207 (set.member lt!2531592 z1!570))))

(assert (= (and d!2204648 res!2880117) b!7054820))

(declare-fun b_lambda!268639 () Bool)

(assert (=> (not b_lambda!268639) (not d!2204648)))

(declare-fun m!7772306 () Bool)

(assert (=> d!2204648 m!7772306))

(declare-fun m!7772308 () Bool)

(assert (=> d!2204648 m!7772308))

(declare-fun m!7772310 () Bool)

(assert (=> d!2204648 m!7772310))

(declare-fun m!7772312 () Bool)

(assert (=> d!2204648 m!7772312))

(declare-fun m!7772314 () Bool)

(assert (=> b!7054820 m!7772314))

(assert (=> b!7054645 d!2204648))

(declare-fun d!2204650 () Bool)

(declare-fun c!1314263 () Bool)

(assert (=> d!2204650 (= c!1314263 (isEmpty!39726 (t!382010 s!7408)))))

(declare-fun e!4241208 () Bool)

(assert (=> d!2204650 (= (matchZipper!3108 lt!2531467 (t!382010 s!7408)) e!4241208)))

(declare-fun b!7054821 () Bool)

(assert (=> b!7054821 (= e!4241208 (nullableZipper!2655 lt!2531467))))

(declare-fun b!7054822 () Bool)

(assert (=> b!7054822 (= e!4241208 (matchZipper!3108 (derivationStepZipper!3018 lt!2531467 (head!14356 (t!382010 s!7408))) (tail!13698 (t!382010 s!7408))))))

(assert (= (and d!2204650 c!1314263) b!7054821))

(assert (= (and d!2204650 (not c!1314263)) b!7054822))

(assert (=> d!2204650 m!7772216))

(declare-fun m!7772316 () Bool)

(assert (=> b!7054821 m!7772316))

(assert (=> b!7054822 m!7772220))

(assert (=> b!7054822 m!7772220))

(declare-fun m!7772318 () Bool)

(assert (=> b!7054822 m!7772318))

(assert (=> b!7054822 m!7772224))

(assert (=> b!7054822 m!7772318))

(assert (=> b!7054822 m!7772224))

(declare-fun m!7772320 () Bool)

(assert (=> b!7054822 m!7772320))

(assert (=> b!7054656 d!2204650))

(assert (=> b!7054656 d!2204606))

(declare-fun e!4241211 () Bool)

(declare-fun d!2204652 () Bool)

(assert (=> d!2204652 (= (matchZipper!3108 (set.union lt!2531458 lt!2531449) (t!382010 s!7408)) e!4241211)))

(declare-fun res!2880120 () Bool)

(assert (=> d!2204652 (=> res!2880120 e!4241211)))

(assert (=> d!2204652 (= res!2880120 (matchZipper!3108 lt!2531458 (t!382010 s!7408)))))

(declare-fun lt!2531595 () Unit!161809)

(declare-fun choose!53801 ((Set Context!13128) (Set Context!13128) List!68231) Unit!161809)

(assert (=> d!2204652 (= lt!2531595 (choose!53801 lt!2531458 lt!2531449 (t!382010 s!7408)))))

(assert (=> d!2204652 (= (lemmaZipperConcatMatchesSameAsBothZippers!1581 lt!2531458 lt!2531449 (t!382010 s!7408)) lt!2531595)))

(declare-fun b!7054825 () Bool)

(assert (=> b!7054825 (= e!4241211 (matchZipper!3108 lt!2531449 (t!382010 s!7408)))))

(assert (= (and d!2204652 (not res!2880120)) b!7054825))

(declare-fun m!7772322 () Bool)

(assert (=> d!2204652 m!7772322))

(assert (=> d!2204652 m!7772062))

(declare-fun m!7772324 () Bool)

(assert (=> d!2204652 m!7772324))

(assert (=> b!7054825 m!7772074))

(assert (=> b!7054656 d!2204652))

(declare-fun d!2204654 () Bool)

(declare-fun c!1314264 () Bool)

(assert (=> d!2204654 (= c!1314264 (isEmpty!39726 (t!382010 s!7408)))))

(declare-fun e!4241212 () Bool)

(assert (=> d!2204654 (= (matchZipper!3108 lt!2531458 (t!382010 s!7408)) e!4241212)))

(declare-fun b!7054826 () Bool)

(assert (=> b!7054826 (= e!4241212 (nullableZipper!2655 lt!2531458))))

(declare-fun b!7054827 () Bool)

(assert (=> b!7054827 (= e!4241212 (matchZipper!3108 (derivationStepZipper!3018 lt!2531458 (head!14356 (t!382010 s!7408))) (tail!13698 (t!382010 s!7408))))))

(assert (= (and d!2204654 c!1314264) b!7054826))

(assert (= (and d!2204654 (not c!1314264)) b!7054827))

(assert (=> d!2204654 m!7772216))

(declare-fun m!7772326 () Bool)

(assert (=> b!7054826 m!7772326))

(assert (=> b!7054827 m!7772220))

(assert (=> b!7054827 m!7772220))

(declare-fun m!7772328 () Bool)

(assert (=> b!7054827 m!7772328))

(assert (=> b!7054827 m!7772224))

(assert (=> b!7054827 m!7772328))

(assert (=> b!7054827 m!7772224))

(declare-fun m!7772330 () Bool)

(assert (=> b!7054827 m!7772330))

(assert (=> b!7054656 d!2204654))

(declare-fun d!2204656 () Bool)

(declare-fun c!1314265 () Bool)

(assert (=> d!2204656 (= c!1314265 (isEmpty!39726 (t!382010 s!7408)))))

(declare-fun e!4241213 () Bool)

(assert (=> d!2204656 (= (matchZipper!3108 lt!2531447 (t!382010 s!7408)) e!4241213)))

(declare-fun b!7054828 () Bool)

(assert (=> b!7054828 (= e!4241213 (nullableZipper!2655 lt!2531447))))

(declare-fun b!7054829 () Bool)

(assert (=> b!7054829 (= e!4241213 (matchZipper!3108 (derivationStepZipper!3018 lt!2531447 (head!14356 (t!382010 s!7408))) (tail!13698 (t!382010 s!7408))))))

(assert (= (and d!2204656 c!1314265) b!7054828))

(assert (= (and d!2204656 (not c!1314265)) b!7054829))

(assert (=> d!2204656 m!7772216))

(declare-fun m!7772332 () Bool)

(assert (=> b!7054828 m!7772332))

(assert (=> b!7054829 m!7772220))

(assert (=> b!7054829 m!7772220))

(declare-fun m!7772334 () Bool)

(assert (=> b!7054829 m!7772334))

(assert (=> b!7054829 m!7772224))

(assert (=> b!7054829 m!7772334))

(assert (=> b!7054829 m!7772224))

(declare-fun m!7772336 () Bool)

(assert (=> b!7054829 m!7772336))

(assert (=> b!7054656 d!2204656))

(declare-fun d!2204658 () Bool)

(declare-fun nullableFct!2773 (Regex!17568) Bool)

(assert (=> d!2204658 (= (nullable!7251 (h!74554 (exprs!7064 lt!2531471))) (nullableFct!2773 (h!74554 (exprs!7064 lt!2531471))))))

(declare-fun bs!1876906 () Bool)

(assert (= bs!1876906 d!2204658))

(declare-fun m!7772338 () Bool)

(assert (=> bs!1876906 m!7772338))

(assert (=> b!7054655 d!2204658))

(declare-fun d!2204660 () Bool)

(assert (=> d!2204660 (= (tail!13696 (exprs!7064 lt!2531471)) (t!382009 (exprs!7064 lt!2531471)))))

(assert (=> b!7054655 d!2204660))

(declare-fun condSetEmpty!49834 () Bool)

(assert (=> setNonEmpty!49828 (= condSetEmpty!49834 (= setRest!49828 (as set.empty (Set Context!13128))))))

(declare-fun setRes!49834 () Bool)

(assert (=> setNonEmpty!49828 (= tp!1940064 setRes!49834)))

(declare-fun setIsEmpty!49834 () Bool)

(assert (=> setIsEmpty!49834 setRes!49834))

(declare-fun e!4241216 () Bool)

(declare-fun setElem!49834 () Context!13128)

(declare-fun setNonEmpty!49834 () Bool)

(declare-fun tp!1940083 () Bool)

(assert (=> setNonEmpty!49834 (= setRes!49834 (and tp!1940083 (inv!86780 setElem!49834) e!4241216))))

(declare-fun setRest!49834 () (Set Context!13128))

(assert (=> setNonEmpty!49834 (= setRest!49828 (set.union (set.insert setElem!49834 (as set.empty (Set Context!13128))) setRest!49834))))

(declare-fun b!7054834 () Bool)

(declare-fun tp!1940084 () Bool)

(assert (=> b!7054834 (= e!4241216 tp!1940084)))

(assert (= (and setNonEmpty!49828 condSetEmpty!49834) setIsEmpty!49834))

(assert (= (and setNonEmpty!49828 (not condSetEmpty!49834)) setNonEmpty!49834))

(assert (= setNonEmpty!49834 b!7054834))

(declare-fun m!7772340 () Bool)

(assert (=> setNonEmpty!49834 m!7772340))

(declare-fun b!7054839 () Bool)

(declare-fun e!4241219 () Bool)

(declare-fun tp!1940089 () Bool)

(declare-fun tp!1940090 () Bool)

(assert (=> b!7054839 (= e!4241219 (and tp!1940089 tp!1940090))))

(assert (=> b!7054640 (= tp!1940065 e!4241219)))

(assert (= (and b!7054640 (is-Cons!68106 (exprs!7064 setElem!49828))) b!7054839))

(declare-fun b!7054840 () Bool)

(declare-fun e!4241220 () Bool)

(declare-fun tp!1940091 () Bool)

(declare-fun tp!1940092 () Bool)

(assert (=> b!7054840 (= e!4241220 (and tp!1940091 tp!1940092))))

(assert (=> b!7054653 (= tp!1940063 e!4241220)))

(assert (= (and b!7054653 (is-Cons!68106 (exprs!7064 ct2!306))) b!7054840))

(declare-fun b!7054845 () Bool)

(declare-fun e!4241223 () Bool)

(declare-fun tp!1940095 () Bool)

(assert (=> b!7054845 (= e!4241223 (and tp_is_empty!44361 tp!1940095))))

(assert (=> b!7054657 (= tp!1940066 e!4241223)))

(assert (= (and b!7054657 (is-Cons!68107 (t!382010 s!7408))) b!7054845))

(declare-fun b_lambda!268641 () Bool)

(assert (= b_lambda!268635 (or b!7054649 b_lambda!268641)))

(declare-fun bs!1876907 () Bool)

(declare-fun d!2204662 () Bool)

(assert (= bs!1876907 (and d!2204662 b!7054649)))

(assert (=> bs!1876907 (= (dynLambda!27632 lambda!420040 lt!2531579) (matchZipper!3108 (set.insert lt!2531579 (as set.empty (Set Context!13128))) s!7408))))

(declare-fun m!7772342 () Bool)

(assert (=> bs!1876907 m!7772342))

(assert (=> bs!1876907 m!7772342))

(declare-fun m!7772344 () Bool)

(assert (=> bs!1876907 m!7772344))

(assert (=> d!2204624 d!2204662))

(declare-fun b_lambda!268643 () Bool)

(assert (= b_lambda!268639 (or b!7054645 b_lambda!268643)))

(declare-fun bs!1876908 () Bool)

(declare-fun d!2204664 () Bool)

(assert (= bs!1876908 (and d!2204664 b!7054645)))

(declare-fun lt!2531596 () Unit!161809)

(assert (=> bs!1876908 (= lt!2531596 (lemmaConcatPreservesForall!879 (exprs!7064 lt!2531592) (exprs!7064 ct2!306) lambda!420042))))

(assert (=> bs!1876908 (= (dynLambda!27634 lambda!420041 lt!2531592) (Context!13129 (++!15651 (exprs!7064 lt!2531592) (exprs!7064 ct2!306))))))

(declare-fun m!7772346 () Bool)

(assert (=> bs!1876908 m!7772346))

(declare-fun m!7772348 () Bool)

(assert (=> bs!1876908 m!7772348))

(assert (=> d!2204648 d!2204664))

(declare-fun b_lambda!268645 () Bool)

(assert (= b_lambda!268637 (or b!7054647 b_lambda!268645)))

(declare-fun bs!1876909 () Bool)

(declare-fun d!2204666 () Bool)

(assert (= bs!1876909 (and d!2204666 b!7054647)))

(assert (=> bs!1876909 (= (dynLambda!27633 lambda!420043 lt!2531453) (derivationStepZipperUp!2152 lt!2531453 (h!74555 s!7408)))))

(assert (=> bs!1876909 m!7772052))

(assert (=> d!2204634 d!2204666))

(push 1)

(assert (not b!7054839))

(assert (not b!7054826))

(assert (not d!2204614))

(assert (not d!2204630))

(assert (not bs!1876909))

(assert (not b!7054828))

(assert (not d!2204620))

(assert (not d!2204618))

(assert (not b!7054792))

(assert (not d!2204654))

(assert (not b!7054840))

(assert (not b!7054829))

(assert (not b!7054798))

(assert (not bm!640856))

(assert (not setNonEmpty!49834))

(assert (not d!2204626))

(assert (not d!2204642))

(assert (not d!2204624))

(assert (not b!7054845))

(assert (not b_lambda!268645))

(assert (not b!7054809))

(assert (not b!7054771))

(assert (not d!2204604))

(assert (not b!7054800))

(assert (not d!2204634))

(assert (not d!2204640))

(assert (not b!7054770))

(assert (not b!7054815))

(assert (not d!2204658))

(assert (not b!7054752))

(assert (not b!7054787))

(assert (not b!7054812))

(assert (not b!7054814))

(assert (not b!7054799))

(assert (not b!7054786))

(assert (not b!7054822))

(assert (not b!7054810))

(assert tp_is_empty!44361)

(assert (not bm!640864))

(assert (not d!2204622))

(assert (not b!7054834))

(assert (not d!2204652))

(assert (not d!2204644))

(assert (not b!7054821))

(assert (not d!2204610))

(assert (not d!2204650))

(assert (not d!2204628))

(assert (not d!2204632))

(assert (not d!2204606))

(assert (not d!2204648))

(assert (not b!7054793))

(assert (not b!7054825))

(assert (not bs!1876908))

(assert (not b!7054811))

(assert (not d!2204646))

(assert (not bm!640860))

(assert (not d!2204616))

(assert (not bs!1876907))

(assert (not bm!640855))

(assert (not bm!640863))

(assert (not b_lambda!268643))

(assert (not b!7054827))

(assert (not d!2204656))

(assert (not b_lambda!268641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


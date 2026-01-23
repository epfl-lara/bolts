; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!681888 () Bool)

(assert start!681888)

(declare-fun b!7045324 () Bool)

(assert (=> b!7045324 true))

(declare-fun b!7045320 () Bool)

(assert (=> b!7045320 true))

(declare-fun b!7045322 () Bool)

(assert (=> b!7045322 true))

(declare-fun b!7045318 () Bool)

(declare-fun res!2876197 () Bool)

(declare-fun e!4235409 () Bool)

(assert (=> b!7045318 (=> res!2876197 e!4235409)))

(declare-datatypes ((C!35274 0))(
  ( (C!35275 (val!27339 Int)) )
))
(declare-datatypes ((Regex!17502 0))(
  ( (ElementMatch!17502 (c!1311798 C!35274)) (Concat!26347 (regOne!35516 Regex!17502) (regTwo!35516 Regex!17502)) (EmptyExpr!17502) (Star!17502 (reg!17831 Regex!17502)) (EmptyLang!17502) (Union!17502 (regOne!35517 Regex!17502) (regTwo!35517 Regex!17502)) )
))
(declare-datatypes ((List!68034 0))(
  ( (Nil!67910) (Cons!67910 (h!74358 Regex!17502) (t!381809 List!68034)) )
))
(declare-datatypes ((Context!12996 0))(
  ( (Context!12997 (exprs!6998 List!68034)) )
))
(declare-fun lt!2526605 () Context!12996)

(assert (=> b!7045318 (= res!2876197 (not (is-Cons!67910 (exprs!6998 lt!2526605))))))

(declare-fun setElem!49431 () Context!12996)

(declare-fun tp!1937886 () Bool)

(declare-fun setNonEmpty!49431 () Bool)

(declare-fun e!4235405 () Bool)

(declare-fun setRes!49431 () Bool)

(declare-fun inv!86615 (Context!12996) Bool)

(assert (=> setNonEmpty!49431 (= setRes!49431 (and tp!1937886 (inv!86615 setElem!49431) e!4235405))))

(declare-fun z1!570 () (Set Context!12996))

(declare-fun setRest!49431 () (Set Context!12996))

(assert (=> setNonEmpty!49431 (= z1!570 (set.union (set.insert setElem!49431 (as set.empty (Set Context!12996))) setRest!49431))))

(declare-datatypes ((List!68035 0))(
  ( (Nil!67911) (Cons!67911 (h!74359 C!35274) (t!381810 List!68035)) )
))
(declare-fun s!7408 () List!68035)

(declare-fun lt!2526592 () List!68034)

(declare-fun ct2!306 () Context!12996)

(declare-fun e!4235404 () Bool)

(declare-fun b!7045319 () Bool)

(declare-fun matchZipper!3042 ((Set Context!12996) List!68035) Bool)

(declare-fun derivationStepZipperDown!2166 (Regex!17502 Context!12996 C!35274) (Set Context!12996))

(declare-fun ++!15579 (List!68034 List!68034) List!68034)

(assert (=> b!7045319 (= e!4235404 (matchZipper!3042 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) (t!381810 s!7408)))))

(declare-datatypes ((Unit!161688 0))(
  ( (Unit!161689) )
))
(declare-fun lt!2526599 () Unit!161688)

(declare-fun lambda!417651 () Int)

(declare-fun lemmaConcatPreservesForall!823 (List!68034 List!68034 Int) Unit!161688)

(assert (=> b!7045319 (= lt!2526599 (lemmaConcatPreservesForall!823 lt!2526592 (exprs!6998 ct2!306) lambda!417651))))

(declare-fun e!4235408 () Bool)

(declare-fun e!4235410 () Bool)

(assert (=> b!7045320 (= e!4235408 e!4235410)))

(declare-fun res!2876196 () Bool)

(assert (=> b!7045320 (=> res!2876196 e!4235410)))

(declare-fun lt!2526591 () Context!12996)

(declare-fun lt!2526594 () Context!12996)

(assert (=> b!7045320 (= res!2876196 (or (not (= lt!2526594 lt!2526591)) (not (set.member lt!2526605 z1!570))))))

(assert (=> b!7045320 (= lt!2526594 (Context!12997 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306))))))

(declare-fun lt!2526598 () Unit!161688)

(assert (=> b!7045320 (= lt!2526598 (lemmaConcatPreservesForall!823 (exprs!6998 lt!2526605) (exprs!6998 ct2!306) lambda!417651))))

(declare-fun lambda!417650 () Int)

(declare-fun mapPost2!343 ((Set Context!12996) Int Context!12996) Context!12996)

(assert (=> b!7045320 (= lt!2526605 (mapPost2!343 z1!570 lambda!417650 lt!2526591))))

(declare-fun b!7045321 () Bool)

(declare-fun res!2876194 () Bool)

(assert (=> b!7045321 (=> res!2876194 e!4235409)))

(declare-fun isEmpty!39634 (List!68034) Bool)

(assert (=> b!7045321 (= res!2876194 (isEmpty!39634 (exprs!6998 lt!2526605)))))

(declare-fun res!2876202 () Bool)

(declare-fun e!4235411 () Bool)

(assert (=> start!681888 (=> (not res!2876202) (not e!4235411))))

(declare-fun lt!2526593 () (Set Context!12996))

(assert (=> start!681888 (= res!2876202 (matchZipper!3042 lt!2526593 s!7408))))

(declare-fun appendTo!623 ((Set Context!12996) Context!12996) (Set Context!12996))

(assert (=> start!681888 (= lt!2526593 (appendTo!623 z1!570 ct2!306))))

(assert (=> start!681888 e!4235411))

(declare-fun condSetEmpty!49431 () Bool)

(assert (=> start!681888 (= condSetEmpty!49431 (= z1!570 (as set.empty (Set Context!12996))))))

(assert (=> start!681888 setRes!49431))

(declare-fun e!4235406 () Bool)

(assert (=> start!681888 (and (inv!86615 ct2!306) e!4235406)))

(declare-fun e!4235407 () Bool)

(assert (=> start!681888 e!4235407))

(declare-fun setIsEmpty!49431 () Bool)

(assert (=> setIsEmpty!49431 setRes!49431))

(declare-fun e!4235403 () Bool)

(assert (=> b!7045322 (= e!4235403 e!4235409)))

(declare-fun res!2876195 () Bool)

(assert (=> b!7045322 (=> res!2876195 e!4235409)))

(declare-fun lt!2526597 () (Set Context!12996))

(declare-fun lt!2526601 () (Set Context!12996))

(declare-fun derivationStepZipper!2958 ((Set Context!12996) C!35274) (Set Context!12996))

(assert (=> b!7045322 (= res!2876195 (not (= (derivationStepZipper!2958 lt!2526597 (h!74359 s!7408)) lt!2526601)))))

(declare-fun lambda!417652 () Int)

(declare-fun flatMap!2449 ((Set Context!12996) Int) (Set Context!12996))

(declare-fun derivationStepZipperUp!2112 (Context!12996 C!35274) (Set Context!12996))

(assert (=> b!7045322 (= (flatMap!2449 lt!2526597 lambda!417652) (derivationStepZipperUp!2112 lt!2526594 (h!74359 s!7408)))))

(declare-fun lt!2526604 () Unit!161688)

(declare-fun lemmaFlatMapOnSingletonSet!1963 ((Set Context!12996) Context!12996 Int) Unit!161688)

(assert (=> b!7045322 (= lt!2526604 (lemmaFlatMapOnSingletonSet!1963 lt!2526597 lt!2526594 lambda!417652))))

(assert (=> b!7045322 (= lt!2526601 (derivationStepZipperUp!2112 lt!2526594 (h!74359 s!7408)))))

(declare-fun lt!2526600 () Unit!161688)

(assert (=> b!7045322 (= lt!2526600 (lemmaConcatPreservesForall!823 (exprs!6998 lt!2526605) (exprs!6998 ct2!306) lambda!417651))))

(declare-fun b!7045323 () Bool)

(declare-fun tp!1937884 () Bool)

(assert (=> b!7045323 (= e!4235406 tp!1937884)))

(assert (=> b!7045324 (= e!4235411 (not e!4235408))))

(declare-fun res!2876200 () Bool)

(assert (=> b!7045324 (=> res!2876200 e!4235408)))

(declare-fun lt!2526602 () (Set Context!12996))

(assert (=> b!7045324 (= res!2876200 (not (matchZipper!3042 lt!2526602 s!7408)))))

(assert (=> b!7045324 (= lt!2526602 (set.insert lt!2526591 (as set.empty (Set Context!12996))))))

(declare-fun lambda!417649 () Int)

(declare-fun getWitness!1533 ((Set Context!12996) Int) Context!12996)

(assert (=> b!7045324 (= lt!2526591 (getWitness!1533 lt!2526593 lambda!417649))))

(declare-datatypes ((List!68036 0))(
  ( (Nil!67912) (Cons!67912 (h!74360 Context!12996) (t!381811 List!68036)) )
))
(declare-fun lt!2526596 () List!68036)

(declare-fun exists!3454 (List!68036 Int) Bool)

(assert (=> b!7045324 (exists!3454 lt!2526596 lambda!417649)))

(declare-fun lt!2526595 () Unit!161688)

(declare-fun lemmaZipperMatchesExistsMatchingContext!441 (List!68036 List!68035) Unit!161688)

(assert (=> b!7045324 (= lt!2526595 (lemmaZipperMatchesExistsMatchingContext!441 lt!2526596 s!7408))))

(declare-fun toList!10845 ((Set Context!12996)) List!68036)

(assert (=> b!7045324 (= lt!2526596 (toList!10845 lt!2526593))))

(declare-fun b!7045325 () Bool)

(declare-fun tp_is_empty!44229 () Bool)

(declare-fun tp!1937887 () Bool)

(assert (=> b!7045325 (= e!4235407 (and tp_is_empty!44229 tp!1937887))))

(declare-fun b!7045326 () Bool)

(declare-fun res!2876198 () Bool)

(assert (=> b!7045326 (=> (not res!2876198) (not e!4235411))))

(assert (=> b!7045326 (= res!2876198 (is-Cons!67911 s!7408))))

(declare-fun b!7045327 () Bool)

(assert (=> b!7045327 (= e!4235410 e!4235403)))

(declare-fun res!2876193 () Bool)

(assert (=> b!7045327 (=> res!2876193 e!4235403)))

(assert (=> b!7045327 (= res!2876193 (not (= lt!2526597 lt!2526602)))))

(assert (=> b!7045327 (= lt!2526597 (set.insert lt!2526594 (as set.empty (Set Context!12996))))))

(declare-fun lt!2526603 () Unit!161688)

(assert (=> b!7045327 (= lt!2526603 (lemmaConcatPreservesForall!823 (exprs!6998 lt!2526605) (exprs!6998 ct2!306) lambda!417651))))

(declare-fun b!7045328 () Bool)

(declare-fun res!2876201 () Bool)

(assert (=> b!7045328 (=> res!2876201 e!4235408)))

(assert (=> b!7045328 (= res!2876201 (not (set.member lt!2526591 lt!2526593)))))

(declare-fun b!7045329 () Bool)

(declare-fun tp!1937885 () Bool)

(assert (=> b!7045329 (= e!4235405 tp!1937885)))

(declare-fun b!7045330 () Bool)

(assert (=> b!7045330 (= e!4235409 e!4235404)))

(declare-fun res!2876199 () Bool)

(assert (=> b!7045330 (=> res!2876199 e!4235404)))

(declare-fun nullable!7213 (Regex!17502) Bool)

(assert (=> b!7045330 (= res!2876199 (nullable!7213 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun tail!13618 (List!68034) List!68034)

(assert (=> b!7045330 (= lt!2526592 (tail!13618 (exprs!6998 lt!2526605)))))

(assert (= (and start!681888 res!2876202) b!7045326))

(assert (= (and b!7045326 res!2876198) b!7045324))

(assert (= (and b!7045324 (not res!2876200)) b!7045328))

(assert (= (and b!7045328 (not res!2876201)) b!7045320))

(assert (= (and b!7045320 (not res!2876196)) b!7045327))

(assert (= (and b!7045327 (not res!2876193)) b!7045322))

(assert (= (and b!7045322 (not res!2876195)) b!7045318))

(assert (= (and b!7045318 (not res!2876197)) b!7045321))

(assert (= (and b!7045321 (not res!2876194)) b!7045330))

(assert (= (and b!7045330 (not res!2876199)) b!7045319))

(assert (= (and start!681888 condSetEmpty!49431) setIsEmpty!49431))

(assert (= (and start!681888 (not condSetEmpty!49431)) setNonEmpty!49431))

(assert (= setNonEmpty!49431 b!7045329))

(assert (= start!681888 b!7045323))

(assert (= (and start!681888 (is-Cons!67911 s!7408)) b!7045325))

(declare-fun m!7758870 () Bool)

(assert (=> setNonEmpty!49431 m!7758870))

(declare-fun m!7758872 () Bool)

(assert (=> b!7045320 m!7758872))

(declare-fun m!7758874 () Bool)

(assert (=> b!7045320 m!7758874))

(declare-fun m!7758876 () Bool)

(assert (=> b!7045320 m!7758876))

(declare-fun m!7758878 () Bool)

(assert (=> b!7045320 m!7758878))

(declare-fun m!7758880 () Bool)

(assert (=> b!7045321 m!7758880))

(declare-fun m!7758882 () Bool)

(assert (=> b!7045330 m!7758882))

(declare-fun m!7758884 () Bool)

(assert (=> b!7045330 m!7758884))

(declare-fun m!7758886 () Bool)

(assert (=> b!7045327 m!7758886))

(assert (=> b!7045327 m!7758876))

(declare-fun m!7758888 () Bool)

(assert (=> b!7045324 m!7758888))

(declare-fun m!7758890 () Bool)

(assert (=> b!7045324 m!7758890))

(declare-fun m!7758892 () Bool)

(assert (=> b!7045324 m!7758892))

(declare-fun m!7758894 () Bool)

(assert (=> b!7045324 m!7758894))

(declare-fun m!7758896 () Bool)

(assert (=> b!7045324 m!7758896))

(declare-fun m!7758898 () Bool)

(assert (=> b!7045324 m!7758898))

(declare-fun m!7758900 () Bool)

(assert (=> b!7045328 m!7758900))

(declare-fun m!7758902 () Bool)

(assert (=> b!7045322 m!7758902))

(assert (=> b!7045322 m!7758876))

(declare-fun m!7758904 () Bool)

(assert (=> b!7045322 m!7758904))

(declare-fun m!7758906 () Bool)

(assert (=> b!7045322 m!7758906))

(declare-fun m!7758908 () Bool)

(assert (=> b!7045322 m!7758908))

(declare-fun m!7758910 () Bool)

(assert (=> start!681888 m!7758910))

(declare-fun m!7758912 () Bool)

(assert (=> start!681888 m!7758912))

(declare-fun m!7758914 () Bool)

(assert (=> start!681888 m!7758914))

(declare-fun m!7758916 () Bool)

(assert (=> b!7045319 m!7758916))

(declare-fun m!7758918 () Bool)

(assert (=> b!7045319 m!7758918))

(assert (=> b!7045319 m!7758918))

(declare-fun m!7758920 () Bool)

(assert (=> b!7045319 m!7758920))

(declare-fun m!7758922 () Bool)

(assert (=> b!7045319 m!7758922))

(push 1)

(assert tp_is_empty!44229)

(assert (not b!7045327))

(assert (not b!7045324))

(assert (not b!7045329))

(assert (not setNonEmpty!49431))

(assert (not b!7045320))

(assert (not b!7045330))

(assert (not start!681888))

(assert (not b!7045325))

(assert (not b!7045323))

(assert (not b!7045321))

(assert (not b!7045319))

(assert (not b!7045322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2200417 () Bool)

(assert (=> d!2200417 (= (isEmpty!39634 (exprs!6998 lt!2526605)) (is-Nil!67910 (exprs!6998 lt!2526605)))))

(assert (=> b!7045321 d!2200417))

(declare-fun d!2200419 () Bool)

(declare-fun nullableFct!2751 (Regex!17502) Bool)

(assert (=> d!2200419 (= (nullable!7213 (h!74358 (exprs!6998 lt!2526605))) (nullableFct!2751 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun bs!1874718 () Bool)

(assert (= bs!1874718 d!2200419))

(declare-fun m!7758978 () Bool)

(assert (=> bs!1874718 m!7758978))

(assert (=> b!7045330 d!2200419))

(declare-fun d!2200421 () Bool)

(assert (=> d!2200421 (= (tail!13618 (exprs!6998 lt!2526605)) (t!381809 (exprs!6998 lt!2526605)))))

(assert (=> b!7045330 d!2200421))

(declare-fun d!2200423 () Bool)

(declare-fun forall!16430 (List!68034 Int) Bool)

(assert (=> d!2200423 (forall!16430 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306)) lambda!417651)))

(declare-fun lt!2526658 () Unit!161688)

(declare-fun choose!53528 (List!68034 List!68034 Int) Unit!161688)

(assert (=> d!2200423 (= lt!2526658 (choose!53528 (exprs!6998 lt!2526605) (exprs!6998 ct2!306) lambda!417651))))

(assert (=> d!2200423 (forall!16430 (exprs!6998 lt!2526605) lambda!417651)))

(assert (=> d!2200423 (= (lemmaConcatPreservesForall!823 (exprs!6998 lt!2526605) (exprs!6998 ct2!306) lambda!417651) lt!2526658)))

(declare-fun bs!1874719 () Bool)

(assert (= bs!1874719 d!2200423))

(assert (=> bs!1874719 m!7758874))

(assert (=> bs!1874719 m!7758874))

(declare-fun m!7758994 () Bool)

(assert (=> bs!1874719 m!7758994))

(declare-fun m!7758996 () Bool)

(assert (=> bs!1874719 m!7758996))

(declare-fun m!7758998 () Bool)

(assert (=> bs!1874719 m!7758998))

(assert (=> b!7045327 d!2200423))

(declare-fun bm!640067 () Bool)

(declare-fun call!640072 () (Set Context!12996))

(assert (=> bm!640067 (= call!640072 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526594)) (Context!12997 (t!381809 (exprs!6998 lt!2526594))) (h!74359 s!7408)))))

(declare-fun e!4235452 () (Set Context!12996))

(declare-fun b!7045404 () Bool)

(assert (=> b!7045404 (= e!4235452 (set.union call!640072 (derivationStepZipperUp!2112 (Context!12997 (t!381809 (exprs!6998 lt!2526594))) (h!74359 s!7408))))))

(declare-fun b!7045405 () Bool)

(declare-fun e!4235451 () Bool)

(assert (=> b!7045405 (= e!4235451 (nullable!7213 (h!74358 (exprs!6998 lt!2526594))))))

(declare-fun b!7045406 () Bool)

(declare-fun e!4235453 () (Set Context!12996))

(assert (=> b!7045406 (= e!4235453 (as set.empty (Set Context!12996)))))

(declare-fun d!2200427 () Bool)

(declare-fun c!1311815 () Bool)

(assert (=> d!2200427 (= c!1311815 e!4235451)))

(declare-fun res!2876243 () Bool)

(assert (=> d!2200427 (=> (not res!2876243) (not e!4235451))))

(assert (=> d!2200427 (= res!2876243 (is-Cons!67910 (exprs!6998 lt!2526594)))))

(assert (=> d!2200427 (= (derivationStepZipperUp!2112 lt!2526594 (h!74359 s!7408)) e!4235452)))

(declare-fun b!7045407 () Bool)

(assert (=> b!7045407 (= e!4235453 call!640072)))

(declare-fun b!7045408 () Bool)

(assert (=> b!7045408 (= e!4235452 e!4235453)))

(declare-fun c!1311816 () Bool)

(assert (=> b!7045408 (= c!1311816 (is-Cons!67910 (exprs!6998 lt!2526594)))))

(assert (= (and d!2200427 res!2876243) b!7045405))

(assert (= (and d!2200427 c!1311815) b!7045404))

(assert (= (and d!2200427 (not c!1311815)) b!7045408))

(assert (= (and b!7045408 c!1311816) b!7045407))

(assert (= (and b!7045408 (not c!1311816)) b!7045406))

(assert (= (or b!7045404 b!7045407) bm!640067))

(declare-fun m!7759006 () Bool)

(assert (=> bm!640067 m!7759006))

(declare-fun m!7759008 () Bool)

(assert (=> b!7045404 m!7759008))

(declare-fun m!7759010 () Bool)

(assert (=> b!7045405 m!7759010))

(assert (=> b!7045322 d!2200427))

(assert (=> b!7045322 d!2200423))

(declare-fun bs!1874721 () Bool)

(declare-fun d!2200431 () Bool)

(assert (= bs!1874721 (and d!2200431 b!7045322)))

(declare-fun lambda!417677 () Int)

(assert (=> bs!1874721 (= lambda!417677 lambda!417652)))

(assert (=> d!2200431 true))

(assert (=> d!2200431 (= (derivationStepZipper!2958 lt!2526597 (h!74359 s!7408)) (flatMap!2449 lt!2526597 lambda!417677))))

(declare-fun bs!1874722 () Bool)

(assert (= bs!1874722 d!2200431))

(declare-fun m!7759012 () Bool)

(assert (=> bs!1874722 m!7759012))

(assert (=> b!7045322 d!2200431))

(declare-fun d!2200433 () Bool)

(declare-fun dynLambda!27487 (Int Context!12996) (Set Context!12996))

(assert (=> d!2200433 (= (flatMap!2449 lt!2526597 lambda!417652) (dynLambda!27487 lambda!417652 lt!2526594))))

(declare-fun lt!2526666 () Unit!161688)

(declare-fun choose!53529 ((Set Context!12996) Context!12996 Int) Unit!161688)

(assert (=> d!2200433 (= lt!2526666 (choose!53529 lt!2526597 lt!2526594 lambda!417652))))

(assert (=> d!2200433 (= lt!2526597 (set.insert lt!2526594 (as set.empty (Set Context!12996))))))

(assert (=> d!2200433 (= (lemmaFlatMapOnSingletonSet!1963 lt!2526597 lt!2526594 lambda!417652) lt!2526666)))

(declare-fun b_lambda!267639 () Bool)

(assert (=> (not b_lambda!267639) (not d!2200433)))

(declare-fun bs!1874723 () Bool)

(assert (= bs!1874723 d!2200433))

(assert (=> bs!1874723 m!7758908))

(declare-fun m!7759014 () Bool)

(assert (=> bs!1874723 m!7759014))

(declare-fun m!7759016 () Bool)

(assert (=> bs!1874723 m!7759016))

(assert (=> bs!1874723 m!7758886))

(assert (=> b!7045322 d!2200433))

(declare-fun d!2200435 () Bool)

(declare-fun choose!53530 ((Set Context!12996) Int) (Set Context!12996))

(assert (=> d!2200435 (= (flatMap!2449 lt!2526597 lambda!417652) (choose!53530 lt!2526597 lambda!417652))))

(declare-fun bs!1874724 () Bool)

(assert (= bs!1874724 d!2200435))

(declare-fun m!7759018 () Bool)

(assert (=> bs!1874724 m!7759018))

(assert (=> b!7045322 d!2200435))

(declare-fun bs!1874725 () Bool)

(declare-fun d!2200437 () Bool)

(assert (= bs!1874725 (and d!2200437 b!7045320)))

(declare-fun lambda!417680 () Int)

(assert (=> bs!1874725 (= lambda!417680 lambda!417651)))

(assert (=> d!2200437 (= (inv!86615 setElem!49431) (forall!16430 (exprs!6998 setElem!49431) lambda!417680))))

(declare-fun bs!1874726 () Bool)

(assert (= bs!1874726 d!2200437))

(declare-fun m!7759030 () Bool)

(assert (=> bs!1874726 m!7759030))

(assert (=> setNonEmpty!49431 d!2200437))

(declare-fun bs!1874727 () Bool)

(declare-fun d!2200441 () Bool)

(assert (= bs!1874727 (and d!2200441 b!7045324)))

(declare-fun lambda!417683 () Int)

(assert (=> bs!1874727 (= lambda!417683 lambda!417649)))

(assert (=> d!2200441 true))

(assert (=> d!2200441 (exists!3454 lt!2526596 lambda!417683)))

(declare-fun lt!2526670 () Unit!161688)

(declare-fun choose!53531 (List!68036 List!68035) Unit!161688)

(assert (=> d!2200441 (= lt!2526670 (choose!53531 lt!2526596 s!7408))))

(declare-fun content!13603 (List!68036) (Set Context!12996))

(assert (=> d!2200441 (matchZipper!3042 (content!13603 lt!2526596) s!7408)))

(assert (=> d!2200441 (= (lemmaZipperMatchesExistsMatchingContext!441 lt!2526596 s!7408) lt!2526670)))

(declare-fun bs!1874728 () Bool)

(assert (= bs!1874728 d!2200441))

(declare-fun m!7759032 () Bool)

(assert (=> bs!1874728 m!7759032))

(declare-fun m!7759034 () Bool)

(assert (=> bs!1874728 m!7759034))

(declare-fun m!7759036 () Bool)

(assert (=> bs!1874728 m!7759036))

(assert (=> bs!1874728 m!7759036))

(declare-fun m!7759038 () Bool)

(assert (=> bs!1874728 m!7759038))

(assert (=> b!7045324 d!2200441))

(declare-fun d!2200443 () Bool)

(declare-fun e!4235462 () Bool)

(assert (=> d!2200443 e!4235462))

(declare-fun res!2876249 () Bool)

(assert (=> d!2200443 (=> (not res!2876249) (not e!4235462))))

(declare-fun lt!2526673 () List!68036)

(declare-fun noDuplicate!2652 (List!68036) Bool)

(assert (=> d!2200443 (= res!2876249 (noDuplicate!2652 lt!2526673))))

(declare-fun choose!53532 ((Set Context!12996)) List!68036)

(assert (=> d!2200443 (= lt!2526673 (choose!53532 lt!2526593))))

(assert (=> d!2200443 (= (toList!10845 lt!2526593) lt!2526673)))

(declare-fun b!7045423 () Bool)

(assert (=> b!7045423 (= e!4235462 (= (content!13603 lt!2526673) lt!2526593))))

(assert (= (and d!2200443 res!2876249) b!7045423))

(declare-fun m!7759048 () Bool)

(assert (=> d!2200443 m!7759048))

(declare-fun m!7759052 () Bool)

(assert (=> d!2200443 m!7759052))

(declare-fun m!7759054 () Bool)

(assert (=> b!7045423 m!7759054))

(assert (=> b!7045324 d!2200443))

(declare-fun bs!1874729 () Bool)

(declare-fun d!2200445 () Bool)

(assert (= bs!1874729 (and d!2200445 b!7045324)))

(declare-fun lambda!417686 () Int)

(assert (=> bs!1874729 (not (= lambda!417686 lambda!417649))))

(declare-fun bs!1874730 () Bool)

(assert (= bs!1874730 (and d!2200445 d!2200441)))

(assert (=> bs!1874730 (not (= lambda!417686 lambda!417683))))

(assert (=> d!2200445 true))

(declare-fun order!28229 () Int)

(declare-fun dynLambda!27488 (Int Int) Int)

(assert (=> d!2200445 (< (dynLambda!27488 order!28229 lambda!417649) (dynLambda!27488 order!28229 lambda!417686))))

(declare-fun forall!16431 (List!68036 Int) Bool)

(assert (=> d!2200445 (= (exists!3454 lt!2526596 lambda!417649) (not (forall!16431 lt!2526596 lambda!417686)))))

(declare-fun bs!1874731 () Bool)

(assert (= bs!1874731 d!2200445))

(declare-fun m!7759058 () Bool)

(assert (=> bs!1874731 m!7759058))

(assert (=> b!7045324 d!2200445))

(declare-fun d!2200449 () Bool)

(declare-fun e!4235465 () Bool)

(assert (=> d!2200449 e!4235465))

(declare-fun res!2876252 () Bool)

(assert (=> d!2200449 (=> (not res!2876252) (not e!4235465))))

(declare-fun lt!2526676 () Context!12996)

(declare-fun dynLambda!27489 (Int Context!12996) Bool)

(assert (=> d!2200449 (= res!2876252 (dynLambda!27489 lambda!417649 lt!2526676))))

(declare-fun getWitness!1535 (List!68036 Int) Context!12996)

(assert (=> d!2200449 (= lt!2526676 (getWitness!1535 (toList!10845 lt!2526593) lambda!417649))))

(declare-fun exists!3456 ((Set Context!12996) Int) Bool)

(assert (=> d!2200449 (exists!3456 lt!2526593 lambda!417649)))

(assert (=> d!2200449 (= (getWitness!1533 lt!2526593 lambda!417649) lt!2526676)))

(declare-fun b!7045428 () Bool)

(assert (=> b!7045428 (= e!4235465 (set.member lt!2526676 lt!2526593))))

(assert (= (and d!2200449 res!2876252) b!7045428))

(declare-fun b_lambda!267643 () Bool)

(assert (=> (not b_lambda!267643) (not d!2200449)))

(declare-fun m!7759060 () Bool)

(assert (=> d!2200449 m!7759060))

(assert (=> d!2200449 m!7758890))

(assert (=> d!2200449 m!7758890))

(declare-fun m!7759062 () Bool)

(assert (=> d!2200449 m!7759062))

(declare-fun m!7759064 () Bool)

(assert (=> d!2200449 m!7759064))

(declare-fun m!7759066 () Bool)

(assert (=> b!7045428 m!7759066))

(assert (=> b!7045324 d!2200449))

(declare-fun d!2200451 () Bool)

(declare-fun c!1311828 () Bool)

(declare-fun isEmpty!39636 (List!68035) Bool)

(assert (=> d!2200451 (= c!1311828 (isEmpty!39636 s!7408))))

(declare-fun e!4235470 () Bool)

(assert (=> d!2200451 (= (matchZipper!3042 lt!2526602 s!7408) e!4235470)))

(declare-fun b!7045437 () Bool)

(declare-fun nullableZipper!2606 ((Set Context!12996)) Bool)

(assert (=> b!7045437 (= e!4235470 (nullableZipper!2606 lt!2526602))))

(declare-fun b!7045438 () Bool)

(declare-fun head!14301 (List!68035) C!35274)

(declare-fun tail!13620 (List!68035) List!68035)

(assert (=> b!7045438 (= e!4235470 (matchZipper!3042 (derivationStepZipper!2958 lt!2526602 (head!14301 s!7408)) (tail!13620 s!7408)))))

(assert (= (and d!2200451 c!1311828) b!7045437))

(assert (= (and d!2200451 (not c!1311828)) b!7045438))

(declare-fun m!7759068 () Bool)

(assert (=> d!2200451 m!7759068))

(declare-fun m!7759070 () Bool)

(assert (=> b!7045437 m!7759070))

(declare-fun m!7759072 () Bool)

(assert (=> b!7045438 m!7759072))

(assert (=> b!7045438 m!7759072))

(declare-fun m!7759074 () Bool)

(assert (=> b!7045438 m!7759074))

(declare-fun m!7759076 () Bool)

(assert (=> b!7045438 m!7759076))

(assert (=> b!7045438 m!7759074))

(assert (=> b!7045438 m!7759076))

(declare-fun m!7759078 () Bool)

(assert (=> b!7045438 m!7759078))

(assert (=> b!7045324 d!2200451))

(declare-fun e!4235485 () Bool)

(declare-fun b!7045468 () Bool)

(declare-fun lt!2526679 () List!68034)

(assert (=> b!7045468 (= e!4235485 (or (not (= (exprs!6998 ct2!306) Nil!67910)) (= lt!2526679 (exprs!6998 lt!2526605))))))

(declare-fun b!7045467 () Bool)

(declare-fun res!2876260 () Bool)

(assert (=> b!7045467 (=> (not res!2876260) (not e!4235485))))

(declare-fun size!41108 (List!68034) Int)

(assert (=> b!7045467 (= res!2876260 (= (size!41108 lt!2526679) (+ (size!41108 (exprs!6998 lt!2526605)) (size!41108 (exprs!6998 ct2!306)))))))

(declare-fun b!7045465 () Bool)

(declare-fun e!4235486 () List!68034)

(assert (=> b!7045465 (= e!4235486 (exprs!6998 ct2!306))))

(declare-fun b!7045466 () Bool)

(assert (=> b!7045466 (= e!4235486 (Cons!67910 (h!74358 (exprs!6998 lt!2526605)) (++!15579 (t!381809 (exprs!6998 lt!2526605)) (exprs!6998 ct2!306))))))

(declare-fun d!2200453 () Bool)

(assert (=> d!2200453 e!4235485))

(declare-fun res!2876259 () Bool)

(assert (=> d!2200453 (=> (not res!2876259) (not e!4235485))))

(declare-fun content!13604 (List!68034) (Set Regex!17502))

(assert (=> d!2200453 (= res!2876259 (= (content!13604 lt!2526679) (set.union (content!13604 (exprs!6998 lt!2526605)) (content!13604 (exprs!6998 ct2!306)))))))

(assert (=> d!2200453 (= lt!2526679 e!4235486)))

(declare-fun c!1311839 () Bool)

(assert (=> d!2200453 (= c!1311839 (is-Nil!67910 (exprs!6998 lt!2526605)))))

(assert (=> d!2200453 (= (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306)) lt!2526679)))

(assert (= (and d!2200453 c!1311839) b!7045465))

(assert (= (and d!2200453 (not c!1311839)) b!7045466))

(assert (= (and d!2200453 res!2876259) b!7045467))

(assert (= (and b!7045467 res!2876260) b!7045468))

(declare-fun m!7759080 () Bool)

(assert (=> b!7045467 m!7759080))

(declare-fun m!7759082 () Bool)

(assert (=> b!7045467 m!7759082))

(declare-fun m!7759084 () Bool)

(assert (=> b!7045467 m!7759084))

(declare-fun m!7759086 () Bool)

(assert (=> b!7045466 m!7759086))

(declare-fun m!7759088 () Bool)

(assert (=> d!2200453 m!7759088))

(declare-fun m!7759090 () Bool)

(assert (=> d!2200453 m!7759090))

(declare-fun m!7759092 () Bool)

(assert (=> d!2200453 m!7759092))

(assert (=> b!7045320 d!2200453))

(assert (=> b!7045320 d!2200423))

(declare-fun d!2200455 () Bool)

(declare-fun e!4235489 () Bool)

(assert (=> d!2200455 e!4235489))

(declare-fun res!2876263 () Bool)

(assert (=> d!2200455 (=> (not res!2876263) (not e!4235489))))

(declare-fun lt!2526682 () Context!12996)

(declare-fun dynLambda!27490 (Int Context!12996) Context!12996)

(assert (=> d!2200455 (= res!2876263 (= lt!2526591 (dynLambda!27490 lambda!417650 lt!2526682)))))

(declare-fun choose!53533 ((Set Context!12996) Int Context!12996) Context!12996)

(assert (=> d!2200455 (= lt!2526682 (choose!53533 z1!570 lambda!417650 lt!2526591))))

(declare-fun map!15813 ((Set Context!12996) Int) (Set Context!12996))

(assert (=> d!2200455 (set.member lt!2526591 (map!15813 z1!570 lambda!417650))))

(assert (=> d!2200455 (= (mapPost2!343 z1!570 lambda!417650 lt!2526591) lt!2526682)))

(declare-fun b!7045472 () Bool)

(assert (=> b!7045472 (= e!4235489 (set.member lt!2526682 z1!570))))

(assert (= (and d!2200455 res!2876263) b!7045472))

(declare-fun b_lambda!267645 () Bool)

(assert (=> (not b_lambda!267645) (not d!2200455)))

(declare-fun m!7759094 () Bool)

(assert (=> d!2200455 m!7759094))

(declare-fun m!7759096 () Bool)

(assert (=> d!2200455 m!7759096))

(declare-fun m!7759098 () Bool)

(assert (=> d!2200455 m!7759098))

(declare-fun m!7759100 () Bool)

(assert (=> d!2200455 m!7759100))

(declare-fun m!7759102 () Bool)

(assert (=> b!7045472 m!7759102))

(assert (=> b!7045320 d!2200455))

(declare-fun d!2200457 () Bool)

(declare-fun c!1311840 () Bool)

(assert (=> d!2200457 (= c!1311840 (isEmpty!39636 (t!381810 s!7408)))))

(declare-fun e!4235490 () Bool)

(assert (=> d!2200457 (= (matchZipper!3042 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) (t!381810 s!7408)) e!4235490)))

(declare-fun b!7045473 () Bool)

(assert (=> b!7045473 (= e!4235490 (nullableZipper!2606 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408))))))

(declare-fun b!7045474 () Bool)

(assert (=> b!7045474 (= e!4235490 (matchZipper!3042 (derivationStepZipper!2958 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) (head!14301 (t!381810 s!7408))) (tail!13620 (t!381810 s!7408))))))

(assert (= (and d!2200457 c!1311840) b!7045473))

(assert (= (and d!2200457 (not c!1311840)) b!7045474))

(declare-fun m!7759104 () Bool)

(assert (=> d!2200457 m!7759104))

(assert (=> b!7045473 m!7758918))

(declare-fun m!7759106 () Bool)

(assert (=> b!7045473 m!7759106))

(declare-fun m!7759108 () Bool)

(assert (=> b!7045474 m!7759108))

(assert (=> b!7045474 m!7758918))

(assert (=> b!7045474 m!7759108))

(declare-fun m!7759110 () Bool)

(assert (=> b!7045474 m!7759110))

(declare-fun m!7759112 () Bool)

(assert (=> b!7045474 m!7759112))

(assert (=> b!7045474 m!7759110))

(assert (=> b!7045474 m!7759112))

(declare-fun m!7759114 () Bool)

(assert (=> b!7045474 m!7759114))

(assert (=> b!7045319 d!2200457))

(declare-fun bm!640098 () Bool)

(declare-fun call!640104 () List!68034)

(declare-fun call!640105 () List!68034)

(assert (=> bm!640098 (= call!640104 call!640105)))

(declare-fun b!7045512 () Bool)

(declare-fun e!4235514 () (Set Context!12996))

(declare-fun e!4235511 () (Set Context!12996))

(assert (=> b!7045512 (= e!4235514 e!4235511)))

(declare-fun c!1311860 () Bool)

(assert (=> b!7045512 (= c!1311860 (is-Union!17502 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun b!7045513 () Bool)

(declare-fun c!1311859 () Bool)

(declare-fun e!4235512 () Bool)

(assert (=> b!7045513 (= c!1311859 e!4235512)))

(declare-fun res!2876269 () Bool)

(assert (=> b!7045513 (=> (not res!2876269) (not e!4235512))))

(assert (=> b!7045513 (= res!2876269 (is-Concat!26347 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun e!4235515 () (Set Context!12996))

(assert (=> b!7045513 (= e!4235511 e!4235515)))

(declare-fun b!7045514 () Bool)

(assert (=> b!7045514 (= e!4235512 (nullable!7213 (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))))))

(declare-fun c!1311857 () Bool)

(declare-fun bm!640099 () Bool)

(declare-fun $colon$colon!2599 (List!68034 Regex!17502) List!68034)

(assert (=> bm!640099 (= call!640105 ($colon$colon!2599 (exprs!6998 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306)))) (ite (or c!1311859 c!1311857) (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (h!74358 (exprs!6998 lt!2526605)))))))

(declare-fun b!7045515 () Bool)

(declare-fun e!4235516 () (Set Context!12996))

(assert (=> b!7045515 (= e!4235515 e!4235516)))

(assert (=> b!7045515 (= c!1311857 (is-Concat!26347 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun bm!640100 () Bool)

(declare-fun call!640107 () (Set Context!12996))

(declare-fun call!640103 () (Set Context!12996))

(assert (=> bm!640100 (= call!640107 call!640103)))

(declare-fun bm!640101 () Bool)

(declare-fun call!640106 () (Set Context!12996))

(assert (=> bm!640101 (= call!640106 (derivationStepZipperDown!2166 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))) (ite c!1311860 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640105)) (h!74359 s!7408)))))

(declare-fun b!7045517 () Bool)

(declare-fun c!1311858 () Bool)

(assert (=> b!7045517 (= c!1311858 (is-Star!17502 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun e!4235513 () (Set Context!12996))

(assert (=> b!7045517 (= e!4235516 e!4235513)))

(declare-fun b!7045518 () Bool)

(assert (=> b!7045518 (= e!4235515 (set.union call!640106 call!640103))))

(declare-fun b!7045519 () Bool)

(assert (=> b!7045519 (= e!4235513 (as set.empty (Set Context!12996)))))

(declare-fun bm!640102 () Bool)

(declare-fun call!640108 () (Set Context!12996))

(assert (=> bm!640102 (= call!640103 call!640108)))

(declare-fun b!7045520 () Bool)

(assert (=> b!7045520 (= e!4235514 (set.insert (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (as set.empty (Set Context!12996))))))

(declare-fun b!7045521 () Bool)

(assert (=> b!7045521 (= e!4235511 (set.union call!640106 call!640108))))

(declare-fun b!7045522 () Bool)

(assert (=> b!7045522 (= e!4235516 call!640107)))

(declare-fun bm!640103 () Bool)

(assert (=> bm!640103 (= call!640108 (derivationStepZipperDown!2166 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605)))))) (ite (or c!1311860 c!1311859) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640104)) (h!74359 s!7408)))))

(declare-fun b!7045516 () Bool)

(assert (=> b!7045516 (= e!4235513 call!640107)))

(declare-fun d!2200459 () Bool)

(declare-fun c!1311861 () Bool)

(assert (=> d!2200459 (= c!1311861 (and (is-ElementMatch!17502 (h!74358 (exprs!6998 lt!2526605))) (= (c!1311798 (h!74358 (exprs!6998 lt!2526605))) (h!74359 s!7408))))))

(assert (=> d!2200459 (= (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) e!4235514)))

(assert (= (and d!2200459 c!1311861) b!7045520))

(assert (= (and d!2200459 (not c!1311861)) b!7045512))

(assert (= (and b!7045512 c!1311860) b!7045521))

(assert (= (and b!7045512 (not c!1311860)) b!7045513))

(assert (= (and b!7045513 res!2876269) b!7045514))

(assert (= (and b!7045513 c!1311859) b!7045518))

(assert (= (and b!7045513 (not c!1311859)) b!7045515))

(assert (= (and b!7045515 c!1311857) b!7045522))

(assert (= (and b!7045515 (not c!1311857)) b!7045517))

(assert (= (and b!7045517 c!1311858) b!7045516))

(assert (= (and b!7045517 (not c!1311858)) b!7045519))

(assert (= (or b!7045522 b!7045516) bm!640098))

(assert (= (or b!7045522 b!7045516) bm!640100))

(assert (= (or b!7045518 bm!640100) bm!640102))

(assert (= (or b!7045518 bm!640098) bm!640099))

(assert (= (or b!7045521 b!7045518) bm!640101))

(assert (= (or b!7045521 bm!640102) bm!640103))

(declare-fun m!7759142 () Bool)

(assert (=> bm!640101 m!7759142))

(declare-fun m!7759144 () Bool)

(assert (=> b!7045520 m!7759144))

(declare-fun m!7759146 () Bool)

(assert (=> bm!640103 m!7759146))

(declare-fun m!7759148 () Bool)

(assert (=> bm!640099 m!7759148))

(declare-fun m!7759150 () Bool)

(assert (=> b!7045514 m!7759150))

(assert (=> b!7045319 d!2200459))

(declare-fun e!4235517 () Bool)

(declare-fun lt!2526685 () List!68034)

(declare-fun b!7045526 () Bool)

(assert (=> b!7045526 (= e!4235517 (or (not (= (exprs!6998 ct2!306) Nil!67910)) (= lt!2526685 lt!2526592)))))

(declare-fun b!7045525 () Bool)

(declare-fun res!2876271 () Bool)

(assert (=> b!7045525 (=> (not res!2876271) (not e!4235517))))

(assert (=> b!7045525 (= res!2876271 (= (size!41108 lt!2526685) (+ (size!41108 lt!2526592) (size!41108 (exprs!6998 ct2!306)))))))

(declare-fun b!7045523 () Bool)

(declare-fun e!4235518 () List!68034)

(assert (=> b!7045523 (= e!4235518 (exprs!6998 ct2!306))))

(declare-fun b!7045524 () Bool)

(assert (=> b!7045524 (= e!4235518 (Cons!67910 (h!74358 lt!2526592) (++!15579 (t!381809 lt!2526592) (exprs!6998 ct2!306))))))

(declare-fun d!2200467 () Bool)

(assert (=> d!2200467 e!4235517))

(declare-fun res!2876270 () Bool)

(assert (=> d!2200467 (=> (not res!2876270) (not e!4235517))))

(assert (=> d!2200467 (= res!2876270 (= (content!13604 lt!2526685) (set.union (content!13604 lt!2526592) (content!13604 (exprs!6998 ct2!306)))))))

(assert (=> d!2200467 (= lt!2526685 e!4235518)))

(declare-fun c!1311862 () Bool)

(assert (=> d!2200467 (= c!1311862 (is-Nil!67910 lt!2526592))))

(assert (=> d!2200467 (= (++!15579 lt!2526592 (exprs!6998 ct2!306)) lt!2526685)))

(assert (= (and d!2200467 c!1311862) b!7045523))

(assert (= (and d!2200467 (not c!1311862)) b!7045524))

(assert (= (and d!2200467 res!2876270) b!7045525))

(assert (= (and b!7045525 res!2876271) b!7045526))

(declare-fun m!7759152 () Bool)

(assert (=> b!7045525 m!7759152))

(declare-fun m!7759154 () Bool)

(assert (=> b!7045525 m!7759154))

(assert (=> b!7045525 m!7759084))

(declare-fun m!7759156 () Bool)

(assert (=> b!7045524 m!7759156))

(declare-fun m!7759158 () Bool)

(assert (=> d!2200467 m!7759158))

(declare-fun m!7759160 () Bool)

(assert (=> d!2200467 m!7759160))

(assert (=> d!2200467 m!7759092))

(assert (=> b!7045319 d!2200467))

(declare-fun d!2200469 () Bool)

(assert (=> d!2200469 (forall!16430 (++!15579 lt!2526592 (exprs!6998 ct2!306)) lambda!417651)))

(declare-fun lt!2526686 () Unit!161688)

(assert (=> d!2200469 (= lt!2526686 (choose!53528 lt!2526592 (exprs!6998 ct2!306) lambda!417651))))

(assert (=> d!2200469 (forall!16430 lt!2526592 lambda!417651)))

(assert (=> d!2200469 (= (lemmaConcatPreservesForall!823 lt!2526592 (exprs!6998 ct2!306) lambda!417651) lt!2526686)))

(declare-fun bs!1874733 () Bool)

(assert (= bs!1874733 d!2200469))

(assert (=> bs!1874733 m!7758916))

(assert (=> bs!1874733 m!7758916))

(declare-fun m!7759162 () Bool)

(assert (=> bs!1874733 m!7759162))

(declare-fun m!7759164 () Bool)

(assert (=> bs!1874733 m!7759164))

(declare-fun m!7759166 () Bool)

(assert (=> bs!1874733 m!7759166))

(assert (=> b!7045319 d!2200469))

(declare-fun d!2200471 () Bool)

(declare-fun c!1311865 () Bool)

(assert (=> d!2200471 (= c!1311865 (isEmpty!39636 s!7408))))

(declare-fun e!4235519 () Bool)

(assert (=> d!2200471 (= (matchZipper!3042 lt!2526593 s!7408) e!4235519)))

(declare-fun b!7045527 () Bool)

(assert (=> b!7045527 (= e!4235519 (nullableZipper!2606 lt!2526593))))

(declare-fun b!7045528 () Bool)

(assert (=> b!7045528 (= e!4235519 (matchZipper!3042 (derivationStepZipper!2958 lt!2526593 (head!14301 s!7408)) (tail!13620 s!7408)))))

(assert (= (and d!2200471 c!1311865) b!7045527))

(assert (= (and d!2200471 (not c!1311865)) b!7045528))

(assert (=> d!2200471 m!7759068))

(declare-fun m!7759168 () Bool)

(assert (=> b!7045527 m!7759168))

(assert (=> b!7045528 m!7759072))

(assert (=> b!7045528 m!7759072))

(declare-fun m!7759170 () Bool)

(assert (=> b!7045528 m!7759170))

(assert (=> b!7045528 m!7759076))

(assert (=> b!7045528 m!7759170))

(assert (=> b!7045528 m!7759076))

(declare-fun m!7759172 () Bool)

(assert (=> b!7045528 m!7759172))

(assert (=> start!681888 d!2200471))

(declare-fun bs!1874736 () Bool)

(declare-fun d!2200473 () Bool)

(assert (= bs!1874736 (and d!2200473 b!7045320)))

(declare-fun lambda!417694 () Int)

(assert (=> bs!1874736 (= lambda!417694 lambda!417650)))

(assert (=> d!2200473 true))

(assert (=> d!2200473 (= (appendTo!623 z1!570 ct2!306) (map!15813 z1!570 lambda!417694))))

(declare-fun bs!1874737 () Bool)

(assert (= bs!1874737 d!2200473))

(declare-fun m!7759176 () Bool)

(assert (=> bs!1874737 m!7759176))

(assert (=> start!681888 d!2200473))

(declare-fun bs!1874738 () Bool)

(declare-fun d!2200477 () Bool)

(assert (= bs!1874738 (and d!2200477 b!7045320)))

(declare-fun lambda!417695 () Int)

(assert (=> bs!1874738 (= lambda!417695 lambda!417651)))

(declare-fun bs!1874739 () Bool)

(assert (= bs!1874739 (and d!2200477 d!2200437)))

(assert (=> bs!1874739 (= lambda!417695 lambda!417680)))

(assert (=> d!2200477 (= (inv!86615 ct2!306) (forall!16430 (exprs!6998 ct2!306) lambda!417695))))

(declare-fun bs!1874740 () Bool)

(assert (= bs!1874740 d!2200477))

(declare-fun m!7759178 () Bool)

(assert (=> bs!1874740 m!7759178))

(assert (=> start!681888 d!2200477))

(declare-fun b!7045535 () Bool)

(declare-fun e!4235522 () Bool)

(declare-fun tp!1937902 () Bool)

(assert (=> b!7045535 (= e!4235522 (and tp_is_empty!44229 tp!1937902))))

(assert (=> b!7045325 (= tp!1937887 e!4235522)))

(assert (= (and b!7045325 (is-Cons!67911 (t!381810 s!7408))) b!7045535))

(declare-fun b!7045542 () Bool)

(declare-fun e!4235525 () Bool)

(declare-fun tp!1937907 () Bool)

(declare-fun tp!1937908 () Bool)

(assert (=> b!7045542 (= e!4235525 (and tp!1937907 tp!1937908))))

(assert (=> b!7045323 (= tp!1937884 e!4235525)))

(assert (= (and b!7045323 (is-Cons!67910 (exprs!6998 ct2!306))) b!7045542))

(declare-fun condSetEmpty!49437 () Bool)

(assert (=> setNonEmpty!49431 (= condSetEmpty!49437 (= setRest!49431 (as set.empty (Set Context!12996))))))

(declare-fun setRes!49437 () Bool)

(assert (=> setNonEmpty!49431 (= tp!1937886 setRes!49437)))

(declare-fun setIsEmpty!49437 () Bool)

(assert (=> setIsEmpty!49437 setRes!49437))

(declare-fun e!4235534 () Bool)

(declare-fun setNonEmpty!49437 () Bool)

(declare-fun tp!1937913 () Bool)

(declare-fun setElem!49437 () Context!12996)

(assert (=> setNonEmpty!49437 (= setRes!49437 (and tp!1937913 (inv!86615 setElem!49437) e!4235534))))

(declare-fun setRest!49437 () (Set Context!12996))

(assert (=> setNonEmpty!49437 (= setRest!49431 (set.union (set.insert setElem!49437 (as set.empty (Set Context!12996))) setRest!49437))))

(declare-fun b!7045555 () Bool)

(declare-fun tp!1937914 () Bool)

(assert (=> b!7045555 (= e!4235534 tp!1937914)))

(assert (= (and setNonEmpty!49431 condSetEmpty!49437) setIsEmpty!49437))

(assert (= (and setNonEmpty!49431 (not condSetEmpty!49437)) setNonEmpty!49437))

(assert (= setNonEmpty!49437 b!7045555))

(declare-fun m!7759180 () Bool)

(assert (=> setNonEmpty!49437 m!7759180))

(declare-fun b!7045556 () Bool)

(declare-fun e!4235535 () Bool)

(declare-fun tp!1937915 () Bool)

(declare-fun tp!1937916 () Bool)

(assert (=> b!7045556 (= e!4235535 (and tp!1937915 tp!1937916))))

(assert (=> b!7045329 (= tp!1937885 e!4235535)))

(assert (= (and b!7045329 (is-Cons!67910 (exprs!6998 setElem!49431))) b!7045556))

(declare-fun b_lambda!267647 () Bool)

(assert (= b_lambda!267639 (or b!7045322 b_lambda!267647)))

(declare-fun bs!1874741 () Bool)

(declare-fun d!2200479 () Bool)

(assert (= bs!1874741 (and d!2200479 b!7045322)))

(assert (=> bs!1874741 (= (dynLambda!27487 lambda!417652 lt!2526594) (derivationStepZipperUp!2112 lt!2526594 (h!74359 s!7408)))))

(assert (=> bs!1874741 m!7758904))

(assert (=> d!2200433 d!2200479))

(declare-fun b_lambda!267649 () Bool)

(assert (= b_lambda!267645 (or b!7045320 b_lambda!267649)))

(declare-fun bs!1874742 () Bool)

(declare-fun d!2200481 () Bool)

(assert (= bs!1874742 (and d!2200481 b!7045320)))

(declare-fun lt!2526689 () Unit!161688)

(assert (=> bs!1874742 (= lt!2526689 (lemmaConcatPreservesForall!823 (exprs!6998 lt!2526682) (exprs!6998 ct2!306) lambda!417651))))

(assert (=> bs!1874742 (= (dynLambda!27490 lambda!417650 lt!2526682) (Context!12997 (++!15579 (exprs!6998 lt!2526682) (exprs!6998 ct2!306))))))

(declare-fun m!7759182 () Bool)

(assert (=> bs!1874742 m!7759182))

(declare-fun m!7759184 () Bool)

(assert (=> bs!1874742 m!7759184))

(assert (=> d!2200455 d!2200481))

(declare-fun b_lambda!267651 () Bool)

(assert (= b_lambda!267643 (or b!7045324 b_lambda!267651)))

(declare-fun bs!1874743 () Bool)

(declare-fun d!2200483 () Bool)

(assert (= bs!1874743 (and d!2200483 b!7045324)))

(assert (=> bs!1874743 (= (dynLambda!27489 lambda!417649 lt!2526676) (matchZipper!3042 (set.insert lt!2526676 (as set.empty (Set Context!12996))) s!7408))))

(declare-fun m!7759186 () Bool)

(assert (=> bs!1874743 m!7759186))

(assert (=> bs!1874743 m!7759186))

(declare-fun m!7759188 () Bool)

(assert (=> bs!1874743 m!7759188))

(assert (=> d!2200449 d!2200483))

(push 1)

(assert tp_is_empty!44229)

(assert (not d!2200419))

(assert (not b!7045527))

(assert (not b!7045438))

(assert (not d!2200473))

(assert (not bs!1874742))

(assert (not setNonEmpty!49437))

(assert (not d!2200457))

(assert (not d!2200435))

(assert (not b_lambda!267647))

(assert (not b!7045535))

(assert (not d!2200477))

(assert (not b!7045525))

(assert (not b_lambda!267651))

(assert (not b!7045473))

(assert (not d!2200423))

(assert (not b!7045524))

(assert (not b_lambda!267649))

(assert (not d!2200467))

(assert (not d!2200431))

(assert (not b!7045514))

(assert (not d!2200455))

(assert (not b!7045423))

(assert (not b!7045437))

(assert (not d!2200445))

(assert (not d!2200433))

(assert (not b!7045474))

(assert (not d!2200443))

(assert (not b!7045405))

(assert (not d!2200451))

(assert (not d!2200441))

(assert (not bm!640101))

(assert (not d!2200471))

(assert (not bm!640103))

(assert (not b!7045404))

(assert (not bs!1874741))

(assert (not b!7045466))

(assert (not d!2200449))

(assert (not d!2200437))

(assert (not bm!640099))

(assert (not b!7045542))

(assert (not d!2200453))

(assert (not b!7045528))

(assert (not b!7045556))

(assert (not d!2200469))

(assert (not bs!1874743))

(assert (not b!7045555))

(assert (not b!7045467))

(assert (not bm!640067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1874762 () Bool)

(declare-fun d!2200519 () Bool)

(assert (= bs!1874762 (and d!2200519 b!7045324)))

(declare-fun lambda!417713 () Int)

(assert (=> bs!1874762 (not (= lambda!417713 lambda!417649))))

(declare-fun bs!1874763 () Bool)

(assert (= bs!1874763 (and d!2200519 d!2200441)))

(assert (=> bs!1874763 (not (= lambda!417713 lambda!417683))))

(declare-fun bs!1874764 () Bool)

(assert (= bs!1874764 (and d!2200519 d!2200445)))

(assert (=> bs!1874764 (not (= lambda!417713 lambda!417686))))

(assert (=> d!2200519 (= (nullableZipper!2606 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408))) (exists!3456 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) lambda!417713))))

(declare-fun bs!1874765 () Bool)

(assert (= bs!1874765 d!2200519))

(assert (=> bs!1874765 m!7758918))

(declare-fun m!7759262 () Bool)

(assert (=> bs!1874765 m!7759262))

(assert (=> b!7045473 d!2200519))

(declare-fun d!2200521 () Bool)

(assert (=> d!2200521 (= (nullable!7213 (h!74358 (exprs!6998 lt!2526594))) (nullableFct!2751 (h!74358 (exprs!6998 lt!2526594))))))

(declare-fun bs!1874766 () Bool)

(assert (= bs!1874766 d!2200521))

(declare-fun m!7759264 () Bool)

(assert (=> bs!1874766 m!7759264))

(assert (=> b!7045405 d!2200521))

(declare-fun d!2200523 () Bool)

(declare-fun e!4235561 () Bool)

(assert (=> d!2200523 e!4235561))

(declare-fun res!2876283 () Bool)

(assert (=> d!2200523 (=> (not res!2876283) (not e!4235561))))

(declare-fun a!13340 () Context!12996)

(assert (=> d!2200523 (= res!2876283 (= lt!2526591 (dynLambda!27490 lambda!417650 a!13340)))))

(declare-fun e!4235562 () Bool)

(assert (=> d!2200523 (and (inv!86615 a!13340) e!4235562)))

(assert (=> d!2200523 (= (choose!53533 z1!570 lambda!417650 lt!2526591) a!13340)))

(declare-fun b!7045595 () Bool)

(declare-fun tp!1937936 () Bool)

(assert (=> b!7045595 (= e!4235562 tp!1937936)))

(declare-fun b!7045596 () Bool)

(assert (=> b!7045596 (= e!4235561 (set.member a!13340 z1!570))))

(assert (= d!2200523 b!7045595))

(assert (= (and d!2200523 res!2876283) b!7045596))

(declare-fun b_lambda!267663 () Bool)

(assert (=> (not b_lambda!267663) (not d!2200523)))

(declare-fun m!7759266 () Bool)

(assert (=> d!2200523 m!7759266))

(declare-fun m!7759268 () Bool)

(assert (=> d!2200523 m!7759268))

(declare-fun m!7759270 () Bool)

(assert (=> b!7045596 m!7759270))

(assert (=> d!2200455 d!2200523))

(declare-fun d!2200525 () Bool)

(declare-fun choose!53540 ((Set Context!12996) Int) (Set Context!12996))

(assert (=> d!2200525 (= (map!15813 z1!570 lambda!417650) (choose!53540 z1!570 lambda!417650))))

(declare-fun bs!1874767 () Bool)

(assert (= bs!1874767 d!2200525))

(declare-fun m!7759272 () Bool)

(assert (=> bs!1874767 m!7759272))

(assert (=> d!2200455 d!2200525))

(assert (=> bs!1874741 d!2200427))

(declare-fun d!2200527 () Bool)

(declare-fun c!1311880 () Bool)

(assert (=> d!2200527 (= c!1311880 (isEmpty!39636 (tail!13620 (t!381810 s!7408))))))

(declare-fun e!4235563 () Bool)

(assert (=> d!2200527 (= (matchZipper!3042 (derivationStepZipper!2958 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) (head!14301 (t!381810 s!7408))) (tail!13620 (t!381810 s!7408))) e!4235563)))

(declare-fun b!7045597 () Bool)

(assert (=> b!7045597 (= e!4235563 (nullableZipper!2606 (derivationStepZipper!2958 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) (head!14301 (t!381810 s!7408)))))))

(declare-fun b!7045598 () Bool)

(assert (=> b!7045598 (= e!4235563 (matchZipper!3042 (derivationStepZipper!2958 (derivationStepZipper!2958 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) (head!14301 (t!381810 s!7408))) (head!14301 (tail!13620 (t!381810 s!7408)))) (tail!13620 (tail!13620 (t!381810 s!7408)))))))

(assert (= (and d!2200527 c!1311880) b!7045597))

(assert (= (and d!2200527 (not c!1311880)) b!7045598))

(assert (=> d!2200527 m!7759112))

(declare-fun m!7759274 () Bool)

(assert (=> d!2200527 m!7759274))

(assert (=> b!7045597 m!7759110))

(declare-fun m!7759276 () Bool)

(assert (=> b!7045597 m!7759276))

(assert (=> b!7045598 m!7759112))

(declare-fun m!7759278 () Bool)

(assert (=> b!7045598 m!7759278))

(assert (=> b!7045598 m!7759110))

(assert (=> b!7045598 m!7759278))

(declare-fun m!7759280 () Bool)

(assert (=> b!7045598 m!7759280))

(assert (=> b!7045598 m!7759112))

(declare-fun m!7759282 () Bool)

(assert (=> b!7045598 m!7759282))

(assert (=> b!7045598 m!7759280))

(assert (=> b!7045598 m!7759282))

(declare-fun m!7759284 () Bool)

(assert (=> b!7045598 m!7759284))

(assert (=> b!7045474 d!2200527))

(declare-fun bs!1874768 () Bool)

(declare-fun d!2200529 () Bool)

(assert (= bs!1874768 (and d!2200529 b!7045322)))

(declare-fun lambda!417714 () Int)

(assert (=> bs!1874768 (= (= (head!14301 (t!381810 s!7408)) (h!74359 s!7408)) (= lambda!417714 lambda!417652))))

(declare-fun bs!1874769 () Bool)

(assert (= bs!1874769 (and d!2200529 d!2200431)))

(assert (=> bs!1874769 (= (= (head!14301 (t!381810 s!7408)) (h!74359 s!7408)) (= lambda!417714 lambda!417677))))

(assert (=> d!2200529 true))

(assert (=> d!2200529 (= (derivationStepZipper!2958 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) (head!14301 (t!381810 s!7408))) (flatMap!2449 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526605)) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (h!74359 s!7408)) lambda!417714))))

(declare-fun bs!1874770 () Bool)

(assert (= bs!1874770 d!2200529))

(assert (=> bs!1874770 m!7758918))

(declare-fun m!7759286 () Bool)

(assert (=> bs!1874770 m!7759286))

(assert (=> b!7045474 d!2200529))

(declare-fun d!2200531 () Bool)

(assert (=> d!2200531 (= (head!14301 (t!381810 s!7408)) (h!74359 (t!381810 s!7408)))))

(assert (=> b!7045474 d!2200531))

(declare-fun d!2200533 () Bool)

(assert (=> d!2200533 (= (tail!13620 (t!381810 s!7408)) (t!381810 (t!381810 s!7408)))))

(assert (=> b!7045474 d!2200533))

(declare-fun bm!640107 () Bool)

(declare-fun call!640113 () List!68034)

(declare-fun call!640114 () List!68034)

(assert (=> bm!640107 (= call!640113 call!640114)))

(declare-fun b!7045599 () Bool)

(declare-fun e!4235567 () (Set Context!12996))

(declare-fun e!4235564 () (Set Context!12996))

(assert (=> b!7045599 (= e!4235567 e!4235564)))

(declare-fun c!1311884 () Bool)

(assert (=> b!7045599 (= c!1311884 (is-Union!17502 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))))))

(declare-fun b!7045600 () Bool)

(declare-fun c!1311883 () Bool)

(declare-fun e!4235565 () Bool)

(assert (=> b!7045600 (= c!1311883 e!4235565)))

(declare-fun res!2876284 () Bool)

(assert (=> b!7045600 (=> (not res!2876284) (not e!4235565))))

(assert (=> b!7045600 (= res!2876284 (is-Concat!26347 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))))))

(declare-fun e!4235568 () (Set Context!12996))

(assert (=> b!7045600 (= e!4235564 e!4235568)))

(declare-fun b!7045601 () Bool)

(assert (=> b!7045601 (= e!4235565 (nullable!7213 (regOne!35516 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))))))))

(declare-fun bm!640108 () Bool)

(declare-fun c!1311881 () Bool)

(assert (=> bm!640108 (= call!640114 ($colon$colon!2599 (exprs!6998 (ite c!1311860 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640105))) (ite (or c!1311883 c!1311881) (regTwo!35516 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))) (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))))))))

(declare-fun b!7045602 () Bool)

(declare-fun e!4235569 () (Set Context!12996))

(assert (=> b!7045602 (= e!4235568 e!4235569)))

(assert (=> b!7045602 (= c!1311881 (is-Concat!26347 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))))))

(declare-fun bm!640109 () Bool)

(declare-fun call!640116 () (Set Context!12996))

(declare-fun call!640112 () (Set Context!12996))

(assert (=> bm!640109 (= call!640116 call!640112)))

(declare-fun call!640115 () (Set Context!12996))

(declare-fun bm!640110 () Bool)

(assert (=> bm!640110 (= call!640115 (derivationStepZipperDown!2166 (ite c!1311884 (regOne!35517 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))) (regOne!35516 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))))) (ite c!1311884 (ite c!1311860 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640105)) (Context!12997 call!640114)) (h!74359 s!7408)))))

(declare-fun b!7045604 () Bool)

(declare-fun c!1311882 () Bool)

(assert (=> b!7045604 (= c!1311882 (is-Star!17502 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))))))

(declare-fun e!4235566 () (Set Context!12996))

(assert (=> b!7045604 (= e!4235569 e!4235566)))

(declare-fun b!7045605 () Bool)

(assert (=> b!7045605 (= e!4235568 (set.union call!640115 call!640112))))

(declare-fun b!7045606 () Bool)

(assert (=> b!7045606 (= e!4235566 (as set.empty (Set Context!12996)))))

(declare-fun bm!640111 () Bool)

(declare-fun call!640117 () (Set Context!12996))

(assert (=> bm!640111 (= call!640112 call!640117)))

(declare-fun b!7045607 () Bool)

(assert (=> b!7045607 (= e!4235567 (set.insert (ite c!1311860 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640105)) (as set.empty (Set Context!12996))))))

(declare-fun b!7045608 () Bool)

(assert (=> b!7045608 (= e!4235564 (set.union call!640115 call!640117))))

(declare-fun b!7045609 () Bool)

(assert (=> b!7045609 (= e!4235569 call!640116)))

(declare-fun bm!640112 () Bool)

(assert (=> bm!640112 (= call!640117 (derivationStepZipperDown!2166 (ite c!1311884 (regTwo!35517 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))) (ite c!1311883 (regTwo!35516 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))) (ite c!1311881 (regOne!35516 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))) (reg!17831 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))))))) (ite (or c!1311884 c!1311883) (ite c!1311860 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640105)) (Context!12997 call!640113)) (h!74359 s!7408)))))

(declare-fun b!7045603 () Bool)

(assert (=> b!7045603 (= e!4235566 call!640116)))

(declare-fun c!1311885 () Bool)

(declare-fun d!2200535 () Bool)

(assert (=> d!2200535 (= c!1311885 (and (is-ElementMatch!17502 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))) (= (c!1311798 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))) (h!74359 s!7408))))))

(assert (=> d!2200535 (= (derivationStepZipperDown!2166 (ite c!1311860 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))) (ite c!1311860 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640105)) (h!74359 s!7408)) e!4235567)))

(assert (= (and d!2200535 c!1311885) b!7045607))

(assert (= (and d!2200535 (not c!1311885)) b!7045599))

(assert (= (and b!7045599 c!1311884) b!7045608))

(assert (= (and b!7045599 (not c!1311884)) b!7045600))

(assert (= (and b!7045600 res!2876284) b!7045601))

(assert (= (and b!7045600 c!1311883) b!7045605))

(assert (= (and b!7045600 (not c!1311883)) b!7045602))

(assert (= (and b!7045602 c!1311881) b!7045609))

(assert (= (and b!7045602 (not c!1311881)) b!7045604))

(assert (= (and b!7045604 c!1311882) b!7045603))

(assert (= (and b!7045604 (not c!1311882)) b!7045606))

(assert (= (or b!7045609 b!7045603) bm!640107))

(assert (= (or b!7045609 b!7045603) bm!640109))

(assert (= (or b!7045605 bm!640109) bm!640111))

(assert (= (or b!7045605 bm!640107) bm!640108))

(assert (= (or b!7045608 b!7045605) bm!640110))

(assert (= (or b!7045608 bm!640111) bm!640112))

(declare-fun m!7759288 () Bool)

(assert (=> bm!640110 m!7759288))

(declare-fun m!7759290 () Bool)

(assert (=> b!7045607 m!7759290))

(declare-fun m!7759292 () Bool)

(assert (=> bm!640112 m!7759292))

(declare-fun m!7759294 () Bool)

(assert (=> bm!640108 m!7759294))

(declare-fun m!7759296 () Bool)

(assert (=> b!7045601 m!7759296))

(assert (=> bm!640101 d!2200535))

(declare-fun bs!1874771 () Bool)

(declare-fun d!2200537 () Bool)

(assert (= bs!1874771 (and d!2200537 b!7045324)))

(declare-fun lambda!417715 () Int)

(assert (=> bs!1874771 (not (= lambda!417715 lambda!417649))))

(declare-fun bs!1874772 () Bool)

(assert (= bs!1874772 (and d!2200537 d!2200441)))

(assert (=> bs!1874772 (not (= lambda!417715 lambda!417683))))

(declare-fun bs!1874773 () Bool)

(assert (= bs!1874773 (and d!2200537 d!2200445)))

(assert (=> bs!1874773 (not (= lambda!417715 lambda!417686))))

(declare-fun bs!1874774 () Bool)

(assert (= bs!1874774 (and d!2200537 d!2200519)))

(assert (=> bs!1874774 (= lambda!417715 lambda!417713)))

(assert (=> d!2200537 (= (nullableZipper!2606 lt!2526593) (exists!3456 lt!2526593 lambda!417715))))

(declare-fun bs!1874775 () Bool)

(assert (= bs!1874775 d!2200537))

(declare-fun m!7759298 () Bool)

(assert (=> bs!1874775 m!7759298))

(assert (=> b!7045527 d!2200537))

(declare-fun bs!1874776 () Bool)

(declare-fun d!2200539 () Bool)

(assert (= bs!1874776 (and d!2200539 b!7045320)))

(declare-fun lambda!417716 () Int)

(assert (=> bs!1874776 (= lambda!417716 lambda!417651)))

(declare-fun bs!1874777 () Bool)

(assert (= bs!1874777 (and d!2200539 d!2200437)))

(assert (=> bs!1874777 (= lambda!417716 lambda!417680)))

(declare-fun bs!1874778 () Bool)

(assert (= bs!1874778 (and d!2200539 d!2200477)))

(assert (=> bs!1874778 (= lambda!417716 lambda!417695)))

(assert (=> d!2200539 (= (inv!86615 setElem!49437) (forall!16430 (exprs!6998 setElem!49437) lambda!417716))))

(declare-fun bs!1874779 () Bool)

(assert (= bs!1874779 d!2200539))

(declare-fun m!7759300 () Bool)

(assert (=> bs!1874779 m!7759300))

(assert (=> setNonEmpty!49437 d!2200539))

(declare-fun d!2200541 () Bool)

(declare-fun c!1311888 () Bool)

(assert (=> d!2200541 (= c!1311888 (is-Nil!67910 lt!2526685))))

(declare-fun e!4235572 () (Set Regex!17502))

(assert (=> d!2200541 (= (content!13604 lt!2526685) e!4235572)))

(declare-fun b!7045614 () Bool)

(assert (=> b!7045614 (= e!4235572 (as set.empty (Set Regex!17502)))))

(declare-fun b!7045615 () Bool)

(assert (=> b!7045615 (= e!4235572 (set.union (set.insert (h!74358 lt!2526685) (as set.empty (Set Regex!17502))) (content!13604 (t!381809 lt!2526685))))))

(assert (= (and d!2200541 c!1311888) b!7045614))

(assert (= (and d!2200541 (not c!1311888)) b!7045615))

(declare-fun m!7759302 () Bool)

(assert (=> b!7045615 m!7759302))

(declare-fun m!7759304 () Bool)

(assert (=> b!7045615 m!7759304))

(assert (=> d!2200467 d!2200541))

(declare-fun d!2200543 () Bool)

(declare-fun c!1311889 () Bool)

(assert (=> d!2200543 (= c!1311889 (is-Nil!67910 lt!2526592))))

(declare-fun e!4235573 () (Set Regex!17502))

(assert (=> d!2200543 (= (content!13604 lt!2526592) e!4235573)))

(declare-fun b!7045616 () Bool)

(assert (=> b!7045616 (= e!4235573 (as set.empty (Set Regex!17502)))))

(declare-fun b!7045617 () Bool)

(assert (=> b!7045617 (= e!4235573 (set.union (set.insert (h!74358 lt!2526592) (as set.empty (Set Regex!17502))) (content!13604 (t!381809 lt!2526592))))))

(assert (= (and d!2200543 c!1311889) b!7045616))

(assert (= (and d!2200543 (not c!1311889)) b!7045617))

(declare-fun m!7759306 () Bool)

(assert (=> b!7045617 m!7759306))

(declare-fun m!7759308 () Bool)

(assert (=> b!7045617 m!7759308))

(assert (=> d!2200467 d!2200543))

(declare-fun d!2200545 () Bool)

(declare-fun c!1311890 () Bool)

(assert (=> d!2200545 (= c!1311890 (is-Nil!67910 (exprs!6998 ct2!306)))))

(declare-fun e!4235574 () (Set Regex!17502))

(assert (=> d!2200545 (= (content!13604 (exprs!6998 ct2!306)) e!4235574)))

(declare-fun b!7045618 () Bool)

(assert (=> b!7045618 (= e!4235574 (as set.empty (Set Regex!17502)))))

(declare-fun b!7045619 () Bool)

(assert (=> b!7045619 (= e!4235574 (set.union (set.insert (h!74358 (exprs!6998 ct2!306)) (as set.empty (Set Regex!17502))) (content!13604 (t!381809 (exprs!6998 ct2!306)))))))

(assert (= (and d!2200545 c!1311890) b!7045618))

(assert (= (and d!2200545 (not c!1311890)) b!7045619))

(declare-fun m!7759310 () Bool)

(assert (=> b!7045619 m!7759310))

(declare-fun m!7759312 () Bool)

(assert (=> b!7045619 m!7759312))

(assert (=> d!2200467 d!2200545))

(declare-fun d!2200547 () Bool)

(assert (=> d!2200547 (forall!16430 (++!15579 (exprs!6998 lt!2526682) (exprs!6998 ct2!306)) lambda!417651)))

(declare-fun lt!2526705 () Unit!161688)

(assert (=> d!2200547 (= lt!2526705 (choose!53528 (exprs!6998 lt!2526682) (exprs!6998 ct2!306) lambda!417651))))

(assert (=> d!2200547 (forall!16430 (exprs!6998 lt!2526682) lambda!417651)))

(assert (=> d!2200547 (= (lemmaConcatPreservesForall!823 (exprs!6998 lt!2526682) (exprs!6998 ct2!306) lambda!417651) lt!2526705)))

(declare-fun bs!1874780 () Bool)

(assert (= bs!1874780 d!2200547))

(assert (=> bs!1874780 m!7759184))

(assert (=> bs!1874780 m!7759184))

(declare-fun m!7759314 () Bool)

(assert (=> bs!1874780 m!7759314))

(declare-fun m!7759316 () Bool)

(assert (=> bs!1874780 m!7759316))

(declare-fun m!7759318 () Bool)

(assert (=> bs!1874780 m!7759318))

(assert (=> bs!1874742 d!2200547))

(declare-fun b!7045623 () Bool)

(declare-fun lt!2526706 () List!68034)

(declare-fun e!4235575 () Bool)

(assert (=> b!7045623 (= e!4235575 (or (not (= (exprs!6998 ct2!306) Nil!67910)) (= lt!2526706 (exprs!6998 lt!2526682))))))

(declare-fun b!7045622 () Bool)

(declare-fun res!2876286 () Bool)

(assert (=> b!7045622 (=> (not res!2876286) (not e!4235575))))

(assert (=> b!7045622 (= res!2876286 (= (size!41108 lt!2526706) (+ (size!41108 (exprs!6998 lt!2526682)) (size!41108 (exprs!6998 ct2!306)))))))

(declare-fun b!7045620 () Bool)

(declare-fun e!4235576 () List!68034)

(assert (=> b!7045620 (= e!4235576 (exprs!6998 ct2!306))))

(declare-fun b!7045621 () Bool)

(assert (=> b!7045621 (= e!4235576 (Cons!67910 (h!74358 (exprs!6998 lt!2526682)) (++!15579 (t!381809 (exprs!6998 lt!2526682)) (exprs!6998 ct2!306))))))

(declare-fun d!2200549 () Bool)

(assert (=> d!2200549 e!4235575))

(declare-fun res!2876285 () Bool)

(assert (=> d!2200549 (=> (not res!2876285) (not e!4235575))))

(assert (=> d!2200549 (= res!2876285 (= (content!13604 lt!2526706) (set.union (content!13604 (exprs!6998 lt!2526682)) (content!13604 (exprs!6998 ct2!306)))))))

(assert (=> d!2200549 (= lt!2526706 e!4235576)))

(declare-fun c!1311891 () Bool)

(assert (=> d!2200549 (= c!1311891 (is-Nil!67910 (exprs!6998 lt!2526682)))))

(assert (=> d!2200549 (= (++!15579 (exprs!6998 lt!2526682) (exprs!6998 ct2!306)) lt!2526706)))

(assert (= (and d!2200549 c!1311891) b!7045620))

(assert (= (and d!2200549 (not c!1311891)) b!7045621))

(assert (= (and d!2200549 res!2876285) b!7045622))

(assert (= (and b!7045622 res!2876286) b!7045623))

(declare-fun m!7759320 () Bool)

(assert (=> b!7045622 m!7759320))

(declare-fun m!7759322 () Bool)

(assert (=> b!7045622 m!7759322))

(assert (=> b!7045622 m!7759084))

(declare-fun m!7759324 () Bool)

(assert (=> b!7045621 m!7759324))

(declare-fun m!7759326 () Bool)

(assert (=> d!2200549 m!7759326))

(declare-fun m!7759328 () Bool)

(assert (=> d!2200549 m!7759328))

(assert (=> d!2200549 m!7759092))

(assert (=> bs!1874742 d!2200549))

(declare-fun d!2200551 () Bool)

(assert (=> d!2200551 true))

(declare-fun setRes!49443 () Bool)

(assert (=> d!2200551 setRes!49443))

(declare-fun condSetEmpty!49443 () Bool)

(declare-fun res!2876289 () (Set Context!12996))

(assert (=> d!2200551 (= condSetEmpty!49443 (= res!2876289 (as set.empty (Set Context!12996))))))

(assert (=> d!2200551 (= (choose!53530 lt!2526597 lambda!417652) res!2876289)))

(declare-fun setIsEmpty!49443 () Bool)

(assert (=> setIsEmpty!49443 setRes!49443))

(declare-fun setElem!49443 () Context!12996)

(declare-fun e!4235579 () Bool)

(declare-fun setNonEmpty!49443 () Bool)

(declare-fun tp!1937942 () Bool)

(assert (=> setNonEmpty!49443 (= setRes!49443 (and tp!1937942 (inv!86615 setElem!49443) e!4235579))))

(declare-fun setRest!49443 () (Set Context!12996))

(assert (=> setNonEmpty!49443 (= res!2876289 (set.union (set.insert setElem!49443 (as set.empty (Set Context!12996))) setRest!49443))))

(declare-fun b!7045626 () Bool)

(declare-fun tp!1937941 () Bool)

(assert (=> b!7045626 (= e!4235579 tp!1937941)))

(assert (= (and d!2200551 condSetEmpty!49443) setIsEmpty!49443))

(assert (= (and d!2200551 (not condSetEmpty!49443)) setNonEmpty!49443))

(assert (= setNonEmpty!49443 b!7045626))

(declare-fun m!7759330 () Bool)

(assert (=> setNonEmpty!49443 m!7759330))

(assert (=> d!2200435 d!2200551))

(declare-fun d!2200553 () Bool)

(assert (=> d!2200553 (= (isEmpty!39636 s!7408) (is-Nil!67911 s!7408))))

(assert (=> d!2200451 d!2200553))

(declare-fun d!2200555 () Bool)

(declare-fun c!1311892 () Bool)

(assert (=> d!2200555 (= c!1311892 (isEmpty!39636 (tail!13620 s!7408)))))

(declare-fun e!4235580 () Bool)

(assert (=> d!2200555 (= (matchZipper!3042 (derivationStepZipper!2958 lt!2526593 (head!14301 s!7408)) (tail!13620 s!7408)) e!4235580)))

(declare-fun b!7045627 () Bool)

(assert (=> b!7045627 (= e!4235580 (nullableZipper!2606 (derivationStepZipper!2958 lt!2526593 (head!14301 s!7408))))))

(declare-fun b!7045628 () Bool)

(assert (=> b!7045628 (= e!4235580 (matchZipper!3042 (derivationStepZipper!2958 (derivationStepZipper!2958 lt!2526593 (head!14301 s!7408)) (head!14301 (tail!13620 s!7408))) (tail!13620 (tail!13620 s!7408))))))

(assert (= (and d!2200555 c!1311892) b!7045627))

(assert (= (and d!2200555 (not c!1311892)) b!7045628))

(assert (=> d!2200555 m!7759076))

(declare-fun m!7759332 () Bool)

(assert (=> d!2200555 m!7759332))

(assert (=> b!7045627 m!7759170))

(declare-fun m!7759334 () Bool)

(assert (=> b!7045627 m!7759334))

(assert (=> b!7045628 m!7759076))

(declare-fun m!7759336 () Bool)

(assert (=> b!7045628 m!7759336))

(assert (=> b!7045628 m!7759170))

(assert (=> b!7045628 m!7759336))

(declare-fun m!7759338 () Bool)

(assert (=> b!7045628 m!7759338))

(assert (=> b!7045628 m!7759076))

(declare-fun m!7759340 () Bool)

(assert (=> b!7045628 m!7759340))

(assert (=> b!7045628 m!7759338))

(assert (=> b!7045628 m!7759340))

(declare-fun m!7759342 () Bool)

(assert (=> b!7045628 m!7759342))

(assert (=> b!7045528 d!2200555))

(declare-fun bs!1874781 () Bool)

(declare-fun d!2200557 () Bool)

(assert (= bs!1874781 (and d!2200557 b!7045322)))

(declare-fun lambda!417717 () Int)

(assert (=> bs!1874781 (= (= (head!14301 s!7408) (h!74359 s!7408)) (= lambda!417717 lambda!417652))))

(declare-fun bs!1874782 () Bool)

(assert (= bs!1874782 (and d!2200557 d!2200431)))

(assert (=> bs!1874782 (= (= (head!14301 s!7408) (h!74359 s!7408)) (= lambda!417717 lambda!417677))))

(declare-fun bs!1874783 () Bool)

(assert (= bs!1874783 (and d!2200557 d!2200529)))

(assert (=> bs!1874783 (= (= (head!14301 s!7408) (head!14301 (t!381810 s!7408))) (= lambda!417717 lambda!417714))))

(assert (=> d!2200557 true))

(assert (=> d!2200557 (= (derivationStepZipper!2958 lt!2526593 (head!14301 s!7408)) (flatMap!2449 lt!2526593 lambda!417717))))

(declare-fun bs!1874784 () Bool)

(assert (= bs!1874784 d!2200557))

(declare-fun m!7759344 () Bool)

(assert (=> bs!1874784 m!7759344))

(assert (=> b!7045528 d!2200557))

(declare-fun d!2200559 () Bool)

(assert (=> d!2200559 (= (head!14301 s!7408) (h!74359 s!7408))))

(assert (=> b!7045528 d!2200559))

(declare-fun d!2200561 () Bool)

(assert (=> d!2200561 (= (tail!13620 s!7408) (t!381810 s!7408))))

(assert (=> b!7045528 d!2200561))

(declare-fun e!4235581 () Bool)

(declare-fun b!7045632 () Bool)

(declare-fun lt!2526707 () List!68034)

(assert (=> b!7045632 (= e!4235581 (or (not (= (exprs!6998 ct2!306) Nil!67910)) (= lt!2526707 (t!381809 (exprs!6998 lt!2526605)))))))

(declare-fun b!7045631 () Bool)

(declare-fun res!2876291 () Bool)

(assert (=> b!7045631 (=> (not res!2876291) (not e!4235581))))

(assert (=> b!7045631 (= res!2876291 (= (size!41108 lt!2526707) (+ (size!41108 (t!381809 (exprs!6998 lt!2526605))) (size!41108 (exprs!6998 ct2!306)))))))

(declare-fun b!7045629 () Bool)

(declare-fun e!4235582 () List!68034)

(assert (=> b!7045629 (= e!4235582 (exprs!6998 ct2!306))))

(declare-fun b!7045630 () Bool)

(assert (=> b!7045630 (= e!4235582 (Cons!67910 (h!74358 (t!381809 (exprs!6998 lt!2526605))) (++!15579 (t!381809 (t!381809 (exprs!6998 lt!2526605))) (exprs!6998 ct2!306))))))

(declare-fun d!2200563 () Bool)

(assert (=> d!2200563 e!4235581))

(declare-fun res!2876290 () Bool)

(assert (=> d!2200563 (=> (not res!2876290) (not e!4235581))))

(assert (=> d!2200563 (= res!2876290 (= (content!13604 lt!2526707) (set.union (content!13604 (t!381809 (exprs!6998 lt!2526605))) (content!13604 (exprs!6998 ct2!306)))))))

(assert (=> d!2200563 (= lt!2526707 e!4235582)))

(declare-fun c!1311893 () Bool)

(assert (=> d!2200563 (= c!1311893 (is-Nil!67910 (t!381809 (exprs!6998 lt!2526605))))))

(assert (=> d!2200563 (= (++!15579 (t!381809 (exprs!6998 lt!2526605)) (exprs!6998 ct2!306)) lt!2526707)))

(assert (= (and d!2200563 c!1311893) b!7045629))

(assert (= (and d!2200563 (not c!1311893)) b!7045630))

(assert (= (and d!2200563 res!2876290) b!7045631))

(assert (= (and b!7045631 res!2876291) b!7045632))

(declare-fun m!7759346 () Bool)

(assert (=> b!7045631 m!7759346))

(declare-fun m!7759348 () Bool)

(assert (=> b!7045631 m!7759348))

(assert (=> b!7045631 m!7759084))

(declare-fun m!7759350 () Bool)

(assert (=> b!7045630 m!7759350))

(declare-fun m!7759352 () Bool)

(assert (=> d!2200563 m!7759352))

(declare-fun m!7759354 () Bool)

(assert (=> d!2200563 m!7759354))

(assert (=> d!2200563 m!7759092))

(assert (=> b!7045466 d!2200563))

(declare-fun d!2200565 () Bool)

(declare-fun res!2876296 () Bool)

(declare-fun e!4235587 () Bool)

(assert (=> d!2200565 (=> res!2876296 e!4235587)))

(assert (=> d!2200565 (= res!2876296 (is-Nil!67910 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306))))))

(assert (=> d!2200565 (= (forall!16430 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306)) lambda!417651) e!4235587)))

(declare-fun b!7045637 () Bool)

(declare-fun e!4235588 () Bool)

(assert (=> b!7045637 (= e!4235587 e!4235588)))

(declare-fun res!2876297 () Bool)

(assert (=> b!7045637 (=> (not res!2876297) (not e!4235588))))

(declare-fun dynLambda!27495 (Int Regex!17502) Bool)

(assert (=> b!7045637 (= res!2876297 (dynLambda!27495 lambda!417651 (h!74358 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306)))))))

(declare-fun b!7045638 () Bool)

(assert (=> b!7045638 (= e!4235588 (forall!16430 (t!381809 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306))) lambda!417651))))

(assert (= (and d!2200565 (not res!2876296)) b!7045637))

(assert (= (and b!7045637 res!2876297) b!7045638))

(declare-fun b_lambda!267665 () Bool)

(assert (=> (not b_lambda!267665) (not b!7045637)))

(declare-fun m!7759356 () Bool)

(assert (=> b!7045637 m!7759356))

(declare-fun m!7759358 () Bool)

(assert (=> b!7045638 m!7759358))

(assert (=> d!2200423 d!2200565))

(assert (=> d!2200423 d!2200453))

(declare-fun d!2200567 () Bool)

(assert (=> d!2200567 (forall!16430 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306)) lambda!417651)))

(assert (=> d!2200567 true))

(declare-fun _$78!621 () Unit!161688)

(assert (=> d!2200567 (= (choose!53528 (exprs!6998 lt!2526605) (exprs!6998 ct2!306) lambda!417651) _$78!621)))

(declare-fun bs!1874785 () Bool)

(assert (= bs!1874785 d!2200567))

(assert (=> bs!1874785 m!7758874))

(assert (=> bs!1874785 m!7758874))

(assert (=> bs!1874785 m!7758994))

(assert (=> d!2200423 d!2200567))

(declare-fun d!2200569 () Bool)

(declare-fun res!2876298 () Bool)

(declare-fun e!4235589 () Bool)

(assert (=> d!2200569 (=> res!2876298 e!4235589)))

(assert (=> d!2200569 (= res!2876298 (is-Nil!67910 (exprs!6998 lt!2526605)))))

(assert (=> d!2200569 (= (forall!16430 (exprs!6998 lt!2526605) lambda!417651) e!4235589)))

(declare-fun b!7045639 () Bool)

(declare-fun e!4235590 () Bool)

(assert (=> b!7045639 (= e!4235589 e!4235590)))

(declare-fun res!2876299 () Bool)

(assert (=> b!7045639 (=> (not res!2876299) (not e!4235590))))

(assert (=> b!7045639 (= res!2876299 (dynLambda!27495 lambda!417651 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun b!7045640 () Bool)

(assert (=> b!7045640 (= e!4235590 (forall!16430 (t!381809 (exprs!6998 lt!2526605)) lambda!417651))))

(assert (= (and d!2200569 (not res!2876298)) b!7045639))

(assert (= (and b!7045639 res!2876299) b!7045640))

(declare-fun b_lambda!267667 () Bool)

(assert (=> (not b_lambda!267667) (not b!7045639)))

(declare-fun m!7759360 () Bool)

(assert (=> b!7045639 m!7759360))

(declare-fun m!7759362 () Bool)

(assert (=> b!7045640 m!7759362))

(assert (=> d!2200423 d!2200569))

(declare-fun d!2200571 () Bool)

(declare-fun res!2876300 () Bool)

(declare-fun e!4235591 () Bool)

(assert (=> d!2200571 (=> res!2876300 e!4235591)))

(assert (=> d!2200571 (= res!2876300 (is-Nil!67910 (exprs!6998 setElem!49431)))))

(assert (=> d!2200571 (= (forall!16430 (exprs!6998 setElem!49431) lambda!417680) e!4235591)))

(declare-fun b!7045641 () Bool)

(declare-fun e!4235592 () Bool)

(assert (=> b!7045641 (= e!4235591 e!4235592)))

(declare-fun res!2876301 () Bool)

(assert (=> b!7045641 (=> (not res!2876301) (not e!4235592))))

(assert (=> b!7045641 (= res!2876301 (dynLambda!27495 lambda!417680 (h!74358 (exprs!6998 setElem!49431))))))

(declare-fun b!7045642 () Bool)

(assert (=> b!7045642 (= e!4235592 (forall!16430 (t!381809 (exprs!6998 setElem!49431)) lambda!417680))))

(assert (= (and d!2200571 (not res!2876300)) b!7045641))

(assert (= (and b!7045641 res!2876301) b!7045642))

(declare-fun b_lambda!267669 () Bool)

(assert (=> (not b_lambda!267669) (not b!7045641)))

(declare-fun m!7759364 () Bool)

(assert (=> b!7045641 m!7759364))

(declare-fun m!7759366 () Bool)

(assert (=> b!7045642 m!7759366))

(assert (=> d!2200437 d!2200571))

(declare-fun b!7045655 () Bool)

(declare-fun e!4235602 () Context!12996)

(assert (=> b!7045655 (= e!4235602 (getWitness!1535 (t!381811 (toList!10845 lt!2526593)) lambda!417649))))

(declare-fun b!7045656 () Bool)

(declare-fun e!4235603 () Context!12996)

(assert (=> b!7045656 (= e!4235603 (h!74360 (toList!10845 lt!2526593)))))

(declare-fun b!7045657 () Bool)

(declare-fun e!4235604 () Bool)

(declare-fun lt!2526713 () Context!12996)

(declare-fun contains!20473 (List!68036 Context!12996) Bool)

(assert (=> b!7045657 (= e!4235604 (contains!20473 (toList!10845 lt!2526593) lt!2526713))))

(declare-fun d!2200573 () Bool)

(assert (=> d!2200573 e!4235604))

(declare-fun res!2876306 () Bool)

(assert (=> d!2200573 (=> (not res!2876306) (not e!4235604))))

(assert (=> d!2200573 (= res!2876306 (dynLambda!27489 lambda!417649 lt!2526713))))

(assert (=> d!2200573 (= lt!2526713 e!4235603)))

(declare-fun c!1311899 () Bool)

(declare-fun e!4235601 () Bool)

(assert (=> d!2200573 (= c!1311899 e!4235601)))

(declare-fun res!2876307 () Bool)

(assert (=> d!2200573 (=> (not res!2876307) (not e!4235601))))

(assert (=> d!2200573 (= res!2876307 (is-Cons!67912 (toList!10845 lt!2526593)))))

(assert (=> d!2200573 (exists!3454 (toList!10845 lt!2526593) lambda!417649)))

(assert (=> d!2200573 (= (getWitness!1535 (toList!10845 lt!2526593) lambda!417649) lt!2526713)))

(declare-fun b!7045658 () Bool)

(assert (=> b!7045658 (= e!4235603 e!4235602)))

(declare-fun c!1311898 () Bool)

(assert (=> b!7045658 (= c!1311898 (is-Cons!67912 (toList!10845 lt!2526593)))))

(declare-fun b!7045659 () Bool)

(declare-fun lt!2526712 () Unit!161688)

(declare-fun Unit!161692 () Unit!161688)

(assert (=> b!7045659 (= lt!2526712 Unit!161692)))

(assert (=> b!7045659 false))

(declare-fun head!14303 (List!68036) Context!12996)

(assert (=> b!7045659 (= e!4235602 (head!14303 (toList!10845 lt!2526593)))))

(declare-fun b!7045660 () Bool)

(assert (=> b!7045660 (= e!4235601 (dynLambda!27489 lambda!417649 (h!74360 (toList!10845 lt!2526593))))))

(assert (= (and d!2200573 res!2876307) b!7045660))

(assert (= (and d!2200573 c!1311899) b!7045656))

(assert (= (and d!2200573 (not c!1311899)) b!7045658))

(assert (= (and b!7045658 c!1311898) b!7045655))

(assert (= (and b!7045658 (not c!1311898)) b!7045659))

(assert (= (and d!2200573 res!2876306) b!7045657))

(declare-fun b_lambda!267671 () Bool)

(assert (=> (not b_lambda!267671) (not d!2200573)))

(declare-fun b_lambda!267673 () Bool)

(assert (=> (not b_lambda!267673) (not b!7045660)))

(declare-fun m!7759368 () Bool)

(assert (=> d!2200573 m!7759368))

(assert (=> d!2200573 m!7758890))

(declare-fun m!7759370 () Bool)

(assert (=> d!2200573 m!7759370))

(declare-fun m!7759372 () Bool)

(assert (=> b!7045660 m!7759372))

(assert (=> b!7045659 m!7758890))

(declare-fun m!7759374 () Bool)

(assert (=> b!7045659 m!7759374))

(assert (=> b!7045657 m!7758890))

(declare-fun m!7759376 () Bool)

(assert (=> b!7045657 m!7759376))

(declare-fun m!7759378 () Bool)

(assert (=> b!7045655 m!7759378))

(assert (=> d!2200449 d!2200573))

(assert (=> d!2200449 d!2200443))

(declare-fun d!2200575 () Bool)

(declare-fun lt!2526716 () Bool)

(assert (=> d!2200575 (= lt!2526716 (exists!3454 (toList!10845 lt!2526593) lambda!417649))))

(declare-fun choose!53541 ((Set Context!12996) Int) Bool)

(assert (=> d!2200575 (= lt!2526716 (choose!53541 lt!2526593 lambda!417649))))

(assert (=> d!2200575 (= (exists!3456 lt!2526593 lambda!417649) lt!2526716)))

(declare-fun bs!1874786 () Bool)

(assert (= bs!1874786 d!2200575))

(assert (=> bs!1874786 m!7758890))

(assert (=> bs!1874786 m!7758890))

(assert (=> bs!1874786 m!7759370))

(declare-fun m!7759380 () Bool)

(assert (=> bs!1874786 m!7759380))

(assert (=> d!2200449 d!2200575))

(declare-fun bm!640113 () Bool)

(declare-fun call!640119 () List!68034)

(declare-fun call!640120 () List!68034)

(assert (=> bm!640113 (= call!640119 call!640120)))

(declare-fun b!7045661 () Bool)

(declare-fun e!4235608 () (Set Context!12996))

(declare-fun e!4235605 () (Set Context!12996))

(assert (=> b!7045661 (= e!4235608 e!4235605)))

(declare-fun c!1311903 () Bool)

(assert (=> b!7045661 (= c!1311903 (is-Union!17502 (h!74358 (exprs!6998 lt!2526594))))))

(declare-fun b!7045662 () Bool)

(declare-fun c!1311902 () Bool)

(declare-fun e!4235606 () Bool)

(assert (=> b!7045662 (= c!1311902 e!4235606)))

(declare-fun res!2876308 () Bool)

(assert (=> b!7045662 (=> (not res!2876308) (not e!4235606))))

(assert (=> b!7045662 (= res!2876308 (is-Concat!26347 (h!74358 (exprs!6998 lt!2526594))))))

(declare-fun e!4235609 () (Set Context!12996))

(assert (=> b!7045662 (= e!4235605 e!4235609)))

(declare-fun b!7045663 () Bool)

(assert (=> b!7045663 (= e!4235606 (nullable!7213 (regOne!35516 (h!74358 (exprs!6998 lt!2526594)))))))

(declare-fun bm!640114 () Bool)

(declare-fun c!1311900 () Bool)

(assert (=> bm!640114 (= call!640120 ($colon$colon!2599 (exprs!6998 (Context!12997 (t!381809 (exprs!6998 lt!2526594)))) (ite (or c!1311902 c!1311900) (regTwo!35516 (h!74358 (exprs!6998 lt!2526594))) (h!74358 (exprs!6998 lt!2526594)))))))

(declare-fun b!7045664 () Bool)

(declare-fun e!4235610 () (Set Context!12996))

(assert (=> b!7045664 (= e!4235609 e!4235610)))

(assert (=> b!7045664 (= c!1311900 (is-Concat!26347 (h!74358 (exprs!6998 lt!2526594))))))

(declare-fun bm!640115 () Bool)

(declare-fun call!640122 () (Set Context!12996))

(declare-fun call!640118 () (Set Context!12996))

(assert (=> bm!640115 (= call!640122 call!640118)))

(declare-fun call!640121 () (Set Context!12996))

(declare-fun bm!640116 () Bool)

(assert (=> bm!640116 (= call!640121 (derivationStepZipperDown!2166 (ite c!1311903 (regOne!35517 (h!74358 (exprs!6998 lt!2526594))) (regOne!35516 (h!74358 (exprs!6998 lt!2526594)))) (ite c!1311903 (Context!12997 (t!381809 (exprs!6998 lt!2526594))) (Context!12997 call!640120)) (h!74359 s!7408)))))

(declare-fun b!7045666 () Bool)

(declare-fun c!1311901 () Bool)

(assert (=> b!7045666 (= c!1311901 (is-Star!17502 (h!74358 (exprs!6998 lt!2526594))))))

(declare-fun e!4235607 () (Set Context!12996))

(assert (=> b!7045666 (= e!4235610 e!4235607)))

(declare-fun b!7045667 () Bool)

(assert (=> b!7045667 (= e!4235609 (set.union call!640121 call!640118))))

(declare-fun b!7045668 () Bool)

(assert (=> b!7045668 (= e!4235607 (as set.empty (Set Context!12996)))))

(declare-fun bm!640117 () Bool)

(declare-fun call!640123 () (Set Context!12996))

(assert (=> bm!640117 (= call!640118 call!640123)))

(declare-fun b!7045669 () Bool)

(assert (=> b!7045669 (= e!4235608 (set.insert (Context!12997 (t!381809 (exprs!6998 lt!2526594))) (as set.empty (Set Context!12996))))))

(declare-fun b!7045670 () Bool)

(assert (=> b!7045670 (= e!4235605 (set.union call!640121 call!640123))))

(declare-fun b!7045671 () Bool)

(assert (=> b!7045671 (= e!4235610 call!640122)))

(declare-fun bm!640118 () Bool)

(assert (=> bm!640118 (= call!640123 (derivationStepZipperDown!2166 (ite c!1311903 (regTwo!35517 (h!74358 (exprs!6998 lt!2526594))) (ite c!1311902 (regTwo!35516 (h!74358 (exprs!6998 lt!2526594))) (ite c!1311900 (regOne!35516 (h!74358 (exprs!6998 lt!2526594))) (reg!17831 (h!74358 (exprs!6998 lt!2526594)))))) (ite (or c!1311903 c!1311902) (Context!12997 (t!381809 (exprs!6998 lt!2526594))) (Context!12997 call!640119)) (h!74359 s!7408)))))

(declare-fun b!7045665 () Bool)

(assert (=> b!7045665 (= e!4235607 call!640122)))

(declare-fun d!2200577 () Bool)

(declare-fun c!1311904 () Bool)

(assert (=> d!2200577 (= c!1311904 (and (is-ElementMatch!17502 (h!74358 (exprs!6998 lt!2526594))) (= (c!1311798 (h!74358 (exprs!6998 lt!2526594))) (h!74359 s!7408))))))

(assert (=> d!2200577 (= (derivationStepZipperDown!2166 (h!74358 (exprs!6998 lt!2526594)) (Context!12997 (t!381809 (exprs!6998 lt!2526594))) (h!74359 s!7408)) e!4235608)))

(assert (= (and d!2200577 c!1311904) b!7045669))

(assert (= (and d!2200577 (not c!1311904)) b!7045661))

(assert (= (and b!7045661 c!1311903) b!7045670))

(assert (= (and b!7045661 (not c!1311903)) b!7045662))

(assert (= (and b!7045662 res!2876308) b!7045663))

(assert (= (and b!7045662 c!1311902) b!7045667))

(assert (= (and b!7045662 (not c!1311902)) b!7045664))

(assert (= (and b!7045664 c!1311900) b!7045671))

(assert (= (and b!7045664 (not c!1311900)) b!7045666))

(assert (= (and b!7045666 c!1311901) b!7045665))

(assert (= (and b!7045666 (not c!1311901)) b!7045668))

(assert (= (or b!7045671 b!7045665) bm!640113))

(assert (= (or b!7045671 b!7045665) bm!640115))

(assert (= (or b!7045667 bm!640115) bm!640117))

(assert (= (or b!7045667 bm!640113) bm!640114))

(assert (= (or b!7045670 b!7045667) bm!640116))

(assert (= (or b!7045670 bm!640117) bm!640118))

(declare-fun m!7759382 () Bool)

(assert (=> bm!640116 m!7759382))

(declare-fun m!7759384 () Bool)

(assert (=> b!7045669 m!7759384))

(declare-fun m!7759386 () Bool)

(assert (=> bm!640118 m!7759386))

(declare-fun m!7759388 () Bool)

(assert (=> bm!640114 m!7759388))

(declare-fun m!7759390 () Bool)

(assert (=> b!7045663 m!7759390))

(assert (=> bm!640067 d!2200577))

(declare-fun d!2200579 () Bool)

(assert (=> d!2200579 (= (isEmpty!39636 (t!381810 s!7408)) (is-Nil!67911 (t!381810 s!7408)))))

(assert (=> d!2200457 d!2200579))

(declare-fun d!2200581 () Bool)

(assert (=> d!2200581 (= (nullable!7213 (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))) (nullableFct!2751 (regOne!35516 (h!74358 (exprs!6998 lt!2526605)))))))

(declare-fun bs!1874787 () Bool)

(assert (= bs!1874787 d!2200581))

(declare-fun m!7759392 () Bool)

(assert (=> bs!1874787 m!7759392))

(assert (=> b!7045514 d!2200581))

(declare-fun bs!1874788 () Bool)

(declare-fun d!2200583 () Bool)

(assert (= bs!1874788 (and d!2200583 b!7045324)))

(declare-fun lambda!417718 () Int)

(assert (=> bs!1874788 (not (= lambda!417718 lambda!417649))))

(declare-fun bs!1874789 () Bool)

(assert (= bs!1874789 (and d!2200583 d!2200441)))

(assert (=> bs!1874789 (not (= lambda!417718 lambda!417683))))

(declare-fun bs!1874790 () Bool)

(assert (= bs!1874790 (and d!2200583 d!2200445)))

(assert (=> bs!1874790 (= (= lambda!417683 lambda!417649) (= lambda!417718 lambda!417686))))

(declare-fun bs!1874791 () Bool)

(assert (= bs!1874791 (and d!2200583 d!2200519)))

(assert (=> bs!1874791 (not (= lambda!417718 lambda!417713))))

(declare-fun bs!1874792 () Bool)

(assert (= bs!1874792 (and d!2200583 d!2200537)))

(assert (=> bs!1874792 (not (= lambda!417718 lambda!417715))))

(assert (=> d!2200583 true))

(assert (=> d!2200583 (< (dynLambda!27488 order!28229 lambda!417683) (dynLambda!27488 order!28229 lambda!417718))))

(assert (=> d!2200583 (= (exists!3454 lt!2526596 lambda!417683) (not (forall!16431 lt!2526596 lambda!417718)))))

(declare-fun bs!1874793 () Bool)

(assert (= bs!1874793 d!2200583))

(declare-fun m!7759394 () Bool)

(assert (=> bs!1874793 m!7759394))

(assert (=> d!2200441 d!2200583))

(declare-fun bs!1874794 () Bool)

(declare-fun d!2200585 () Bool)

(assert (= bs!1874794 (and d!2200585 b!7045324)))

(declare-fun lambda!417721 () Int)

(assert (=> bs!1874794 (= lambda!417721 lambda!417649)))

(declare-fun bs!1874795 () Bool)

(assert (= bs!1874795 (and d!2200585 d!2200441)))

(assert (=> bs!1874795 (= lambda!417721 lambda!417683)))

(declare-fun bs!1874796 () Bool)

(assert (= bs!1874796 (and d!2200585 d!2200445)))

(assert (=> bs!1874796 (not (= lambda!417721 lambda!417686))))

(declare-fun bs!1874797 () Bool)

(assert (= bs!1874797 (and d!2200585 d!2200519)))

(assert (=> bs!1874797 (not (= lambda!417721 lambda!417713))))

(declare-fun bs!1874798 () Bool)

(assert (= bs!1874798 (and d!2200585 d!2200583)))

(assert (=> bs!1874798 (not (= lambda!417721 lambda!417718))))

(declare-fun bs!1874799 () Bool)

(assert (= bs!1874799 (and d!2200585 d!2200537)))

(assert (=> bs!1874799 (not (= lambda!417721 lambda!417715))))

(assert (=> d!2200585 true))

(assert (=> d!2200585 (exists!3454 lt!2526596 lambda!417721)))

(assert (=> d!2200585 true))

(declare-fun _$60!1153 () Unit!161688)

(assert (=> d!2200585 (= (choose!53531 lt!2526596 s!7408) _$60!1153)))

(declare-fun bs!1874800 () Bool)

(assert (= bs!1874800 d!2200585))

(declare-fun m!7759396 () Bool)

(assert (=> bs!1874800 m!7759396))

(assert (=> d!2200441 d!2200585))

(declare-fun d!2200587 () Bool)

(declare-fun c!1311907 () Bool)

(assert (=> d!2200587 (= c!1311907 (isEmpty!39636 s!7408))))

(declare-fun e!4235611 () Bool)

(assert (=> d!2200587 (= (matchZipper!3042 (content!13603 lt!2526596) s!7408) e!4235611)))

(declare-fun b!7045672 () Bool)

(assert (=> b!7045672 (= e!4235611 (nullableZipper!2606 (content!13603 lt!2526596)))))

(declare-fun b!7045673 () Bool)

(assert (=> b!7045673 (= e!4235611 (matchZipper!3042 (derivationStepZipper!2958 (content!13603 lt!2526596) (head!14301 s!7408)) (tail!13620 s!7408)))))

(assert (= (and d!2200587 c!1311907) b!7045672))

(assert (= (and d!2200587 (not c!1311907)) b!7045673))

(assert (=> d!2200587 m!7759068))

(assert (=> b!7045672 m!7759036))

(declare-fun m!7759398 () Bool)

(assert (=> b!7045672 m!7759398))

(assert (=> b!7045673 m!7759072))

(assert (=> b!7045673 m!7759036))

(assert (=> b!7045673 m!7759072))

(declare-fun m!7759400 () Bool)

(assert (=> b!7045673 m!7759400))

(assert (=> b!7045673 m!7759076))

(assert (=> b!7045673 m!7759400))

(assert (=> b!7045673 m!7759076))

(declare-fun m!7759402 () Bool)

(assert (=> b!7045673 m!7759402))

(assert (=> d!2200441 d!2200587))

(declare-fun d!2200589 () Bool)

(declare-fun c!1311910 () Bool)

(assert (=> d!2200589 (= c!1311910 (is-Nil!67912 lt!2526596))))

(declare-fun e!4235614 () (Set Context!12996))

(assert (=> d!2200589 (= (content!13603 lt!2526596) e!4235614)))

(declare-fun b!7045678 () Bool)

(assert (=> b!7045678 (= e!4235614 (as set.empty (Set Context!12996)))))

(declare-fun b!7045679 () Bool)

(assert (=> b!7045679 (= e!4235614 (set.union (set.insert (h!74360 lt!2526596) (as set.empty (Set Context!12996))) (content!13603 (t!381811 lt!2526596))))))

(assert (= (and d!2200589 c!1311910) b!7045678))

(assert (= (and d!2200589 (not c!1311910)) b!7045679))

(declare-fun m!7759404 () Bool)

(assert (=> b!7045679 m!7759404))

(declare-fun m!7759406 () Bool)

(assert (=> b!7045679 m!7759406))

(assert (=> d!2200441 d!2200589))

(declare-fun d!2200591 () Bool)

(declare-fun c!1311911 () Bool)

(assert (=> d!2200591 (= c!1311911 (is-Nil!67910 lt!2526679))))

(declare-fun e!4235615 () (Set Regex!17502))

(assert (=> d!2200591 (= (content!13604 lt!2526679) e!4235615)))

(declare-fun b!7045680 () Bool)

(assert (=> b!7045680 (= e!4235615 (as set.empty (Set Regex!17502)))))

(declare-fun b!7045681 () Bool)

(assert (=> b!7045681 (= e!4235615 (set.union (set.insert (h!74358 lt!2526679) (as set.empty (Set Regex!17502))) (content!13604 (t!381809 lt!2526679))))))

(assert (= (and d!2200591 c!1311911) b!7045680))

(assert (= (and d!2200591 (not c!1311911)) b!7045681))

(declare-fun m!7759408 () Bool)

(assert (=> b!7045681 m!7759408))

(declare-fun m!7759410 () Bool)

(assert (=> b!7045681 m!7759410))

(assert (=> d!2200453 d!2200591))

(declare-fun d!2200593 () Bool)

(declare-fun c!1311912 () Bool)

(assert (=> d!2200593 (= c!1311912 (is-Nil!67910 (exprs!6998 lt!2526605)))))

(declare-fun e!4235616 () (Set Regex!17502))

(assert (=> d!2200593 (= (content!13604 (exprs!6998 lt!2526605)) e!4235616)))

(declare-fun b!7045682 () Bool)

(assert (=> b!7045682 (= e!4235616 (as set.empty (Set Regex!17502)))))

(declare-fun b!7045683 () Bool)

(assert (=> b!7045683 (= e!4235616 (set.union (set.insert (h!74358 (exprs!6998 lt!2526605)) (as set.empty (Set Regex!17502))) (content!13604 (t!381809 (exprs!6998 lt!2526605)))))))

(assert (= (and d!2200593 c!1311912) b!7045682))

(assert (= (and d!2200593 (not c!1311912)) b!7045683))

(declare-fun m!7759412 () Bool)

(assert (=> b!7045683 m!7759412))

(assert (=> b!7045683 m!7759354))

(assert (=> d!2200453 d!2200593))

(assert (=> d!2200453 d!2200545))

(declare-fun d!2200595 () Bool)

(assert (=> d!2200595 (= ($colon$colon!2599 (exprs!6998 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306)))) (ite (or c!1311859 c!1311857) (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (h!74358 (exprs!6998 lt!2526605)))) (Cons!67910 (ite (or c!1311859 c!1311857) (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (h!74358 (exprs!6998 lt!2526605))) (exprs!6998 (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))))))))

(assert (=> bm!640099 d!2200595))

(declare-fun bm!640119 () Bool)

(declare-fun call!640124 () (Set Context!12996))

(assert (=> bm!640119 (= call!640124 (derivationStepZipperDown!2166 (h!74358 (exprs!6998 (Context!12997 (t!381809 (exprs!6998 lt!2526594))))) (Context!12997 (t!381809 (exprs!6998 (Context!12997 (t!381809 (exprs!6998 lt!2526594)))))) (h!74359 s!7408)))))

(declare-fun b!7045684 () Bool)

(declare-fun e!4235618 () (Set Context!12996))

(assert (=> b!7045684 (= e!4235618 (set.union call!640124 (derivationStepZipperUp!2112 (Context!12997 (t!381809 (exprs!6998 (Context!12997 (t!381809 (exprs!6998 lt!2526594)))))) (h!74359 s!7408))))))

(declare-fun b!7045685 () Bool)

(declare-fun e!4235617 () Bool)

(assert (=> b!7045685 (= e!4235617 (nullable!7213 (h!74358 (exprs!6998 (Context!12997 (t!381809 (exprs!6998 lt!2526594)))))))))

(declare-fun b!7045686 () Bool)

(declare-fun e!4235619 () (Set Context!12996))

(assert (=> b!7045686 (= e!4235619 (as set.empty (Set Context!12996)))))

(declare-fun d!2200597 () Bool)

(declare-fun c!1311913 () Bool)

(assert (=> d!2200597 (= c!1311913 e!4235617)))

(declare-fun res!2876309 () Bool)

(assert (=> d!2200597 (=> (not res!2876309) (not e!4235617))))

(assert (=> d!2200597 (= res!2876309 (is-Cons!67910 (exprs!6998 (Context!12997 (t!381809 (exprs!6998 lt!2526594))))))))

(assert (=> d!2200597 (= (derivationStepZipperUp!2112 (Context!12997 (t!381809 (exprs!6998 lt!2526594))) (h!74359 s!7408)) e!4235618)))

(declare-fun b!7045687 () Bool)

(assert (=> b!7045687 (= e!4235619 call!640124)))

(declare-fun b!7045688 () Bool)

(assert (=> b!7045688 (= e!4235618 e!4235619)))

(declare-fun c!1311914 () Bool)

(assert (=> b!7045688 (= c!1311914 (is-Cons!67910 (exprs!6998 (Context!12997 (t!381809 (exprs!6998 lt!2526594))))))))

(assert (= (and d!2200597 res!2876309) b!7045685))

(assert (= (and d!2200597 c!1311913) b!7045684))

(assert (= (and d!2200597 (not c!1311913)) b!7045688))

(assert (= (and b!7045688 c!1311914) b!7045687))

(assert (= (and b!7045688 (not c!1311914)) b!7045686))

(assert (= (or b!7045684 b!7045687) bm!640119))

(declare-fun m!7759414 () Bool)

(assert (=> bm!640119 m!7759414))

(declare-fun m!7759416 () Bool)

(assert (=> b!7045684 m!7759416))

(declare-fun m!7759418 () Bool)

(assert (=> b!7045685 m!7759418))

(assert (=> b!7045404 d!2200597))

(assert (=> d!2200471 d!2200553))

(declare-fun d!2200599 () Bool)

(declare-fun c!1311915 () Bool)

(assert (=> d!2200599 (= c!1311915 (isEmpty!39636 (tail!13620 s!7408)))))

(declare-fun e!4235620 () Bool)

(assert (=> d!2200599 (= (matchZipper!3042 (derivationStepZipper!2958 lt!2526602 (head!14301 s!7408)) (tail!13620 s!7408)) e!4235620)))

(declare-fun b!7045689 () Bool)

(assert (=> b!7045689 (= e!4235620 (nullableZipper!2606 (derivationStepZipper!2958 lt!2526602 (head!14301 s!7408))))))

(declare-fun b!7045690 () Bool)

(assert (=> b!7045690 (= e!4235620 (matchZipper!3042 (derivationStepZipper!2958 (derivationStepZipper!2958 lt!2526602 (head!14301 s!7408)) (head!14301 (tail!13620 s!7408))) (tail!13620 (tail!13620 s!7408))))))

(assert (= (and d!2200599 c!1311915) b!7045689))

(assert (= (and d!2200599 (not c!1311915)) b!7045690))

(assert (=> d!2200599 m!7759076))

(assert (=> d!2200599 m!7759332))

(assert (=> b!7045689 m!7759074))

(declare-fun m!7759420 () Bool)

(assert (=> b!7045689 m!7759420))

(assert (=> b!7045690 m!7759076))

(assert (=> b!7045690 m!7759336))

(assert (=> b!7045690 m!7759074))

(assert (=> b!7045690 m!7759336))

(declare-fun m!7759422 () Bool)

(assert (=> b!7045690 m!7759422))

(assert (=> b!7045690 m!7759076))

(assert (=> b!7045690 m!7759340))

(assert (=> b!7045690 m!7759422))

(assert (=> b!7045690 m!7759340))

(declare-fun m!7759424 () Bool)

(assert (=> b!7045690 m!7759424))

(assert (=> b!7045438 d!2200599))

(declare-fun bs!1874801 () Bool)

(declare-fun d!2200601 () Bool)

(assert (= bs!1874801 (and d!2200601 b!7045322)))

(declare-fun lambda!417722 () Int)

(assert (=> bs!1874801 (= (= (head!14301 s!7408) (h!74359 s!7408)) (= lambda!417722 lambda!417652))))

(declare-fun bs!1874802 () Bool)

(assert (= bs!1874802 (and d!2200601 d!2200431)))

(assert (=> bs!1874802 (= (= (head!14301 s!7408) (h!74359 s!7408)) (= lambda!417722 lambda!417677))))

(declare-fun bs!1874803 () Bool)

(assert (= bs!1874803 (and d!2200601 d!2200529)))

(assert (=> bs!1874803 (= (= (head!14301 s!7408) (head!14301 (t!381810 s!7408))) (= lambda!417722 lambda!417714))))

(declare-fun bs!1874804 () Bool)

(assert (= bs!1874804 (and d!2200601 d!2200557)))

(assert (=> bs!1874804 (= lambda!417722 lambda!417717)))

(assert (=> d!2200601 true))

(assert (=> d!2200601 (= (derivationStepZipper!2958 lt!2526602 (head!14301 s!7408)) (flatMap!2449 lt!2526602 lambda!417722))))

(declare-fun bs!1874805 () Bool)

(assert (= bs!1874805 d!2200601))

(declare-fun m!7759426 () Bool)

(assert (=> bs!1874805 m!7759426))

(assert (=> b!7045438 d!2200601))

(assert (=> b!7045438 d!2200559))

(assert (=> b!7045438 d!2200561))

(declare-fun lt!2526717 () List!68034)

(declare-fun e!4235621 () Bool)

(declare-fun b!7045694 () Bool)

(assert (=> b!7045694 (= e!4235621 (or (not (= (exprs!6998 ct2!306) Nil!67910)) (= lt!2526717 (t!381809 lt!2526592))))))

(declare-fun b!7045693 () Bool)

(declare-fun res!2876311 () Bool)

(assert (=> b!7045693 (=> (not res!2876311) (not e!4235621))))

(assert (=> b!7045693 (= res!2876311 (= (size!41108 lt!2526717) (+ (size!41108 (t!381809 lt!2526592)) (size!41108 (exprs!6998 ct2!306)))))))

(declare-fun b!7045691 () Bool)

(declare-fun e!4235622 () List!68034)

(assert (=> b!7045691 (= e!4235622 (exprs!6998 ct2!306))))

(declare-fun b!7045692 () Bool)

(assert (=> b!7045692 (= e!4235622 (Cons!67910 (h!74358 (t!381809 lt!2526592)) (++!15579 (t!381809 (t!381809 lt!2526592)) (exprs!6998 ct2!306))))))

(declare-fun d!2200603 () Bool)

(assert (=> d!2200603 e!4235621))

(declare-fun res!2876310 () Bool)

(assert (=> d!2200603 (=> (not res!2876310) (not e!4235621))))

(assert (=> d!2200603 (= res!2876310 (= (content!13604 lt!2526717) (set.union (content!13604 (t!381809 lt!2526592)) (content!13604 (exprs!6998 ct2!306)))))))

(assert (=> d!2200603 (= lt!2526717 e!4235622)))

(declare-fun c!1311916 () Bool)

(assert (=> d!2200603 (= c!1311916 (is-Nil!67910 (t!381809 lt!2526592)))))

(assert (=> d!2200603 (= (++!15579 (t!381809 lt!2526592) (exprs!6998 ct2!306)) lt!2526717)))

(assert (= (and d!2200603 c!1311916) b!7045691))

(assert (= (and d!2200603 (not c!1311916)) b!7045692))

(assert (= (and d!2200603 res!2876310) b!7045693))

(assert (= (and b!7045693 res!2876311) b!7045694))

(declare-fun m!7759428 () Bool)

(assert (=> b!7045693 m!7759428))

(declare-fun m!7759430 () Bool)

(assert (=> b!7045693 m!7759430))

(assert (=> b!7045693 m!7759084))

(declare-fun m!7759432 () Bool)

(assert (=> b!7045692 m!7759432))

(declare-fun m!7759434 () Bool)

(assert (=> d!2200603 m!7759434))

(assert (=> d!2200603 m!7759308))

(assert (=> d!2200603 m!7759092))

(assert (=> b!7045524 d!2200603))

(assert (=> d!2200433 d!2200435))

(declare-fun d!2200605 () Bool)

(assert (=> d!2200605 (= (flatMap!2449 lt!2526597 lambda!417652) (dynLambda!27487 lambda!417652 lt!2526594))))

(assert (=> d!2200605 true))

(declare-fun _$13!4522 () Unit!161688)

(assert (=> d!2200605 (= (choose!53529 lt!2526597 lt!2526594 lambda!417652) _$13!4522)))

(declare-fun b_lambda!267675 () Bool)

(assert (=> (not b_lambda!267675) (not d!2200605)))

(declare-fun bs!1874806 () Bool)

(assert (= bs!1874806 d!2200605))

(assert (=> bs!1874806 m!7758908))

(assert (=> bs!1874806 m!7759014))

(assert (=> d!2200433 d!2200605))

(declare-fun d!2200607 () Bool)

(declare-fun c!1311917 () Bool)

(assert (=> d!2200607 (= c!1311917 (isEmpty!39636 s!7408))))

(declare-fun e!4235623 () Bool)

(assert (=> d!2200607 (= (matchZipper!3042 (set.insert lt!2526676 (as set.empty (Set Context!12996))) s!7408) e!4235623)))

(declare-fun b!7045695 () Bool)

(assert (=> b!7045695 (= e!4235623 (nullableZipper!2606 (set.insert lt!2526676 (as set.empty (Set Context!12996)))))))

(declare-fun b!7045696 () Bool)

(assert (=> b!7045696 (= e!4235623 (matchZipper!3042 (derivationStepZipper!2958 (set.insert lt!2526676 (as set.empty (Set Context!12996))) (head!14301 s!7408)) (tail!13620 s!7408)))))

(assert (= (and d!2200607 c!1311917) b!7045695))

(assert (= (and d!2200607 (not c!1311917)) b!7045696))

(assert (=> d!2200607 m!7759068))

(assert (=> b!7045695 m!7759186))

(declare-fun m!7759436 () Bool)

(assert (=> b!7045695 m!7759436))

(assert (=> b!7045696 m!7759072))

(assert (=> b!7045696 m!7759186))

(assert (=> b!7045696 m!7759072))

(declare-fun m!7759438 () Bool)

(assert (=> b!7045696 m!7759438))

(assert (=> b!7045696 m!7759076))

(assert (=> b!7045696 m!7759438))

(assert (=> b!7045696 m!7759076))

(declare-fun m!7759440 () Bool)

(assert (=> b!7045696 m!7759440))

(assert (=> bs!1874743 d!2200607))

(declare-fun d!2200609 () Bool)

(assert (=> d!2200609 (= (flatMap!2449 lt!2526597 lambda!417677) (choose!53530 lt!2526597 lambda!417677))))

(declare-fun bs!1874807 () Bool)

(assert (= bs!1874807 d!2200609))

(declare-fun m!7759442 () Bool)

(assert (=> bs!1874807 m!7759442))

(assert (=> d!2200431 d!2200609))

(declare-fun d!2200611 () Bool)

(declare-fun lt!2526720 () Int)

(assert (=> d!2200611 (>= lt!2526720 0)))

(declare-fun e!4235626 () Int)

(assert (=> d!2200611 (= lt!2526720 e!4235626)))

(declare-fun c!1311920 () Bool)

(assert (=> d!2200611 (= c!1311920 (is-Nil!67910 lt!2526685))))

(assert (=> d!2200611 (= (size!41108 lt!2526685) lt!2526720)))

(declare-fun b!7045701 () Bool)

(assert (=> b!7045701 (= e!4235626 0)))

(declare-fun b!7045702 () Bool)

(assert (=> b!7045702 (= e!4235626 (+ 1 (size!41108 (t!381809 lt!2526685))))))

(assert (= (and d!2200611 c!1311920) b!7045701))

(assert (= (and d!2200611 (not c!1311920)) b!7045702))

(declare-fun m!7759444 () Bool)

(assert (=> b!7045702 m!7759444))

(assert (=> b!7045525 d!2200611))

(declare-fun d!2200613 () Bool)

(declare-fun lt!2526721 () Int)

(assert (=> d!2200613 (>= lt!2526721 0)))

(declare-fun e!4235627 () Int)

(assert (=> d!2200613 (= lt!2526721 e!4235627)))

(declare-fun c!1311921 () Bool)

(assert (=> d!2200613 (= c!1311921 (is-Nil!67910 lt!2526592))))

(assert (=> d!2200613 (= (size!41108 lt!2526592) lt!2526721)))

(declare-fun b!7045703 () Bool)

(assert (=> b!7045703 (= e!4235627 0)))

(declare-fun b!7045704 () Bool)

(assert (=> b!7045704 (= e!4235627 (+ 1 (size!41108 (t!381809 lt!2526592))))))

(assert (= (and d!2200613 c!1311921) b!7045703))

(assert (= (and d!2200613 (not c!1311921)) b!7045704))

(assert (=> b!7045704 m!7759430))

(assert (=> b!7045525 d!2200613))

(declare-fun d!2200615 () Bool)

(declare-fun lt!2526722 () Int)

(assert (=> d!2200615 (>= lt!2526722 0)))

(declare-fun e!4235628 () Int)

(assert (=> d!2200615 (= lt!2526722 e!4235628)))

(declare-fun c!1311922 () Bool)

(assert (=> d!2200615 (= c!1311922 (is-Nil!67910 (exprs!6998 ct2!306)))))

(assert (=> d!2200615 (= (size!41108 (exprs!6998 ct2!306)) lt!2526722)))

(declare-fun b!7045705 () Bool)

(assert (=> b!7045705 (= e!4235628 0)))

(declare-fun b!7045706 () Bool)

(assert (=> b!7045706 (= e!4235628 (+ 1 (size!41108 (t!381809 (exprs!6998 ct2!306)))))))

(assert (= (and d!2200615 c!1311922) b!7045705))

(assert (= (and d!2200615 (not c!1311922)) b!7045706))

(declare-fun m!7759446 () Bool)

(assert (=> b!7045706 m!7759446))

(assert (=> b!7045525 d!2200615))

(declare-fun d!2200617 () Bool)

(declare-fun res!2876316 () Bool)

(declare-fun e!4235633 () Bool)

(assert (=> d!2200617 (=> res!2876316 e!4235633)))

(assert (=> d!2200617 (= res!2876316 (is-Nil!67912 lt!2526673))))

(assert (=> d!2200617 (= (noDuplicate!2652 lt!2526673) e!4235633)))

(declare-fun b!7045711 () Bool)

(declare-fun e!4235634 () Bool)

(assert (=> b!7045711 (= e!4235633 e!4235634)))

(declare-fun res!2876317 () Bool)

(assert (=> b!7045711 (=> (not res!2876317) (not e!4235634))))

(assert (=> b!7045711 (= res!2876317 (not (contains!20473 (t!381811 lt!2526673) (h!74360 lt!2526673))))))

(declare-fun b!7045712 () Bool)

(assert (=> b!7045712 (= e!4235634 (noDuplicate!2652 (t!381811 lt!2526673)))))

(assert (= (and d!2200617 (not res!2876316)) b!7045711))

(assert (= (and b!7045711 res!2876317) b!7045712))

(declare-fun m!7759448 () Bool)

(assert (=> b!7045711 m!7759448))

(declare-fun m!7759450 () Bool)

(assert (=> b!7045712 m!7759450))

(assert (=> d!2200443 d!2200617))

(declare-fun d!2200619 () Bool)

(declare-fun e!4235642 () Bool)

(assert (=> d!2200619 e!4235642))

(declare-fun res!2876323 () Bool)

(assert (=> d!2200619 (=> (not res!2876323) (not e!4235642))))

(declare-fun res!2876322 () List!68036)

(assert (=> d!2200619 (= res!2876323 (noDuplicate!2652 res!2876322))))

(declare-fun e!4235643 () Bool)

(assert (=> d!2200619 e!4235643))

(assert (=> d!2200619 (= (choose!53532 lt!2526593) res!2876322)))

(declare-fun b!7045720 () Bool)

(declare-fun e!4235641 () Bool)

(declare-fun tp!1937947 () Bool)

(assert (=> b!7045720 (= e!4235641 tp!1937947)))

(declare-fun tp!1937948 () Bool)

(declare-fun b!7045719 () Bool)

(assert (=> b!7045719 (= e!4235643 (and (inv!86615 (h!74360 res!2876322)) e!4235641 tp!1937948))))

(declare-fun b!7045721 () Bool)

(assert (=> b!7045721 (= e!4235642 (= (content!13603 res!2876322) lt!2526593))))

(assert (= b!7045719 b!7045720))

(assert (= (and d!2200619 (is-Cons!67912 res!2876322)) b!7045719))

(assert (= (and d!2200619 res!2876323) b!7045721))

(declare-fun m!7759452 () Bool)

(assert (=> d!2200619 m!7759452))

(declare-fun m!7759454 () Bool)

(assert (=> b!7045719 m!7759454))

(declare-fun m!7759456 () Bool)

(assert (=> b!7045721 m!7759456))

(assert (=> d!2200443 d!2200619))

(declare-fun d!2200621 () Bool)

(assert (=> d!2200621 (= (map!15813 z1!570 lambda!417694) (choose!53540 z1!570 lambda!417694))))

(declare-fun bs!1874808 () Bool)

(assert (= bs!1874808 d!2200621))

(declare-fun m!7759458 () Bool)

(assert (=> bs!1874808 m!7759458))

(assert (=> d!2200473 d!2200621))

(declare-fun d!2200623 () Bool)

(declare-fun c!1311923 () Bool)

(assert (=> d!2200623 (= c!1311923 (is-Nil!67912 lt!2526673))))

(declare-fun e!4235644 () (Set Context!12996))

(assert (=> d!2200623 (= (content!13603 lt!2526673) e!4235644)))

(declare-fun b!7045722 () Bool)

(assert (=> b!7045722 (= e!4235644 (as set.empty (Set Context!12996)))))

(declare-fun b!7045723 () Bool)

(assert (=> b!7045723 (= e!4235644 (set.union (set.insert (h!74360 lt!2526673) (as set.empty (Set Context!12996))) (content!13603 (t!381811 lt!2526673))))))

(assert (= (and d!2200623 c!1311923) b!7045722))

(assert (= (and d!2200623 (not c!1311923)) b!7045723))

(declare-fun m!7759460 () Bool)

(assert (=> b!7045723 m!7759460))

(declare-fun m!7759462 () Bool)

(assert (=> b!7045723 m!7759462))

(assert (=> b!7045423 d!2200623))

(declare-fun b!7045738 () Bool)

(declare-fun e!4235659 () Bool)

(declare-fun call!640130 () Bool)

(assert (=> b!7045738 (= e!4235659 call!640130)))

(declare-fun b!7045739 () Bool)

(declare-fun e!4235661 () Bool)

(declare-fun e!4235657 () Bool)

(assert (=> b!7045739 (= e!4235661 e!4235657)))

(declare-fun c!1311926 () Bool)

(assert (=> b!7045739 (= c!1311926 (is-Union!17502 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun bm!640124 () Bool)

(declare-fun call!640129 () Bool)

(assert (=> bm!640124 (= call!640129 (nullable!7213 (ite c!1311926 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (regOne!35516 (h!74358 (exprs!6998 lt!2526605))))))))

(declare-fun d!2200625 () Bool)

(declare-fun res!2876337 () Bool)

(declare-fun e!4235662 () Bool)

(assert (=> d!2200625 (=> res!2876337 e!4235662)))

(assert (=> d!2200625 (= res!2876337 (is-EmptyExpr!17502 (h!74358 (exprs!6998 lt!2526605))))))

(assert (=> d!2200625 (= (nullableFct!2751 (h!74358 (exprs!6998 lt!2526605))) e!4235662)))

(declare-fun b!7045740 () Bool)

(declare-fun e!4235658 () Bool)

(assert (=> b!7045740 (= e!4235658 call!640129)))

(declare-fun b!7045741 () Bool)

(declare-fun e!4235660 () Bool)

(assert (=> b!7045741 (= e!4235662 e!4235660)))

(declare-fun res!2876334 () Bool)

(assert (=> b!7045741 (=> (not res!2876334) (not e!4235660))))

(assert (=> b!7045741 (= res!2876334 (and (not (is-EmptyLang!17502 (h!74358 (exprs!6998 lt!2526605)))) (not (is-ElementMatch!17502 (h!74358 (exprs!6998 lt!2526605))))))))

(declare-fun b!7045742 () Bool)

(assert (=> b!7045742 (= e!4235657 e!4235658)))

(declare-fun res!2876338 () Bool)

(assert (=> b!7045742 (= res!2876338 call!640130)))

(assert (=> b!7045742 (=> res!2876338 e!4235658)))

(declare-fun b!7045743 () Bool)

(assert (=> b!7045743 (= e!4235660 e!4235661)))

(declare-fun res!2876335 () Bool)

(assert (=> b!7045743 (=> res!2876335 e!4235661)))

(assert (=> b!7045743 (= res!2876335 (is-Star!17502 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun bm!640125 () Bool)

(assert (=> bm!640125 (= call!640130 (nullable!7213 (ite c!1311926 (regOne!35517 (h!74358 (exprs!6998 lt!2526605))) (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))))))))

(declare-fun b!7045744 () Bool)

(assert (=> b!7045744 (= e!4235657 e!4235659)))

(declare-fun res!2876336 () Bool)

(assert (=> b!7045744 (= res!2876336 call!640129)))

(assert (=> b!7045744 (=> (not res!2876336) (not e!4235659))))

(assert (= (and d!2200625 (not res!2876337)) b!7045741))

(assert (= (and b!7045741 res!2876334) b!7045743))

(assert (= (and b!7045743 (not res!2876335)) b!7045739))

(assert (= (and b!7045739 c!1311926) b!7045742))

(assert (= (and b!7045739 (not c!1311926)) b!7045744))

(assert (= (and b!7045742 (not res!2876338)) b!7045740))

(assert (= (and b!7045744 res!2876336) b!7045738))

(assert (= (or b!7045740 b!7045744) bm!640124))

(assert (= (or b!7045742 b!7045738) bm!640125))

(declare-fun m!7759464 () Bool)

(assert (=> bm!640124 m!7759464))

(declare-fun m!7759466 () Bool)

(assert (=> bm!640125 m!7759466))

(assert (=> d!2200419 d!2200625))

(declare-fun d!2200627 () Bool)

(declare-fun lt!2526723 () Int)

(assert (=> d!2200627 (>= lt!2526723 0)))

(declare-fun e!4235663 () Int)

(assert (=> d!2200627 (= lt!2526723 e!4235663)))

(declare-fun c!1311927 () Bool)

(assert (=> d!2200627 (= c!1311927 (is-Nil!67910 lt!2526679))))

(assert (=> d!2200627 (= (size!41108 lt!2526679) lt!2526723)))

(declare-fun b!7045745 () Bool)

(assert (=> b!7045745 (= e!4235663 0)))

(declare-fun b!7045746 () Bool)

(assert (=> b!7045746 (= e!4235663 (+ 1 (size!41108 (t!381809 lt!2526679))))))

(assert (= (and d!2200627 c!1311927) b!7045745))

(assert (= (and d!2200627 (not c!1311927)) b!7045746))

(declare-fun m!7759468 () Bool)

(assert (=> b!7045746 m!7759468))

(assert (=> b!7045467 d!2200627))

(declare-fun d!2200629 () Bool)

(declare-fun lt!2526724 () Int)

(assert (=> d!2200629 (>= lt!2526724 0)))

(declare-fun e!4235664 () Int)

(assert (=> d!2200629 (= lt!2526724 e!4235664)))

(declare-fun c!1311928 () Bool)

(assert (=> d!2200629 (= c!1311928 (is-Nil!67910 (exprs!6998 lt!2526605)))))

(assert (=> d!2200629 (= (size!41108 (exprs!6998 lt!2526605)) lt!2526724)))

(declare-fun b!7045747 () Bool)

(assert (=> b!7045747 (= e!4235664 0)))

(declare-fun b!7045748 () Bool)

(assert (=> b!7045748 (= e!4235664 (+ 1 (size!41108 (t!381809 (exprs!6998 lt!2526605)))))))

(assert (= (and d!2200629 c!1311928) b!7045747))

(assert (= (and d!2200629 (not c!1311928)) b!7045748))

(assert (=> b!7045748 m!7759348))

(assert (=> b!7045467 d!2200629))

(assert (=> b!7045467 d!2200615))

(declare-fun d!2200631 () Bool)

(declare-fun res!2876343 () Bool)

(declare-fun e!4235669 () Bool)

(assert (=> d!2200631 (=> res!2876343 e!4235669)))

(assert (=> d!2200631 (= res!2876343 (is-Nil!67912 lt!2526596))))

(assert (=> d!2200631 (= (forall!16431 lt!2526596 lambda!417686) e!4235669)))

(declare-fun b!7045753 () Bool)

(declare-fun e!4235670 () Bool)

(assert (=> b!7045753 (= e!4235669 e!4235670)))

(declare-fun res!2876344 () Bool)

(assert (=> b!7045753 (=> (not res!2876344) (not e!4235670))))

(assert (=> b!7045753 (= res!2876344 (dynLambda!27489 lambda!417686 (h!74360 lt!2526596)))))

(declare-fun b!7045754 () Bool)

(assert (=> b!7045754 (= e!4235670 (forall!16431 (t!381811 lt!2526596) lambda!417686))))

(assert (= (and d!2200631 (not res!2876343)) b!7045753))

(assert (= (and b!7045753 res!2876344) b!7045754))

(declare-fun b_lambda!267677 () Bool)

(assert (=> (not b_lambda!267677) (not b!7045753)))

(declare-fun m!7759470 () Bool)

(assert (=> b!7045753 m!7759470))

(declare-fun m!7759472 () Bool)

(assert (=> b!7045754 m!7759472))

(assert (=> d!2200445 d!2200631))

(declare-fun d!2200633 () Bool)

(declare-fun res!2876345 () Bool)

(declare-fun e!4235671 () Bool)

(assert (=> d!2200633 (=> res!2876345 e!4235671)))

(assert (=> d!2200633 (= res!2876345 (is-Nil!67910 (exprs!6998 ct2!306)))))

(assert (=> d!2200633 (= (forall!16430 (exprs!6998 ct2!306) lambda!417695) e!4235671)))

(declare-fun b!7045755 () Bool)

(declare-fun e!4235672 () Bool)

(assert (=> b!7045755 (= e!4235671 e!4235672)))

(declare-fun res!2876346 () Bool)

(assert (=> b!7045755 (=> (not res!2876346) (not e!4235672))))

(assert (=> b!7045755 (= res!2876346 (dynLambda!27495 lambda!417695 (h!74358 (exprs!6998 ct2!306))))))

(declare-fun b!7045756 () Bool)

(assert (=> b!7045756 (= e!4235672 (forall!16430 (t!381809 (exprs!6998 ct2!306)) lambda!417695))))

(assert (= (and d!2200633 (not res!2876345)) b!7045755))

(assert (= (and b!7045755 res!2876346) b!7045756))

(declare-fun b_lambda!267679 () Bool)

(assert (=> (not b_lambda!267679) (not b!7045755)))

(declare-fun m!7759474 () Bool)

(assert (=> b!7045755 m!7759474))

(declare-fun m!7759476 () Bool)

(assert (=> b!7045756 m!7759476))

(assert (=> d!2200477 d!2200633))

(declare-fun d!2200635 () Bool)

(declare-fun res!2876347 () Bool)

(declare-fun e!4235673 () Bool)

(assert (=> d!2200635 (=> res!2876347 e!4235673)))

(assert (=> d!2200635 (= res!2876347 (is-Nil!67910 (++!15579 lt!2526592 (exprs!6998 ct2!306))))))

(assert (=> d!2200635 (= (forall!16430 (++!15579 lt!2526592 (exprs!6998 ct2!306)) lambda!417651) e!4235673)))

(declare-fun b!7045757 () Bool)

(declare-fun e!4235674 () Bool)

(assert (=> b!7045757 (= e!4235673 e!4235674)))

(declare-fun res!2876348 () Bool)

(assert (=> b!7045757 (=> (not res!2876348) (not e!4235674))))

(assert (=> b!7045757 (= res!2876348 (dynLambda!27495 lambda!417651 (h!74358 (++!15579 lt!2526592 (exprs!6998 ct2!306)))))))

(declare-fun b!7045758 () Bool)

(assert (=> b!7045758 (= e!4235674 (forall!16430 (t!381809 (++!15579 lt!2526592 (exprs!6998 ct2!306))) lambda!417651))))

(assert (= (and d!2200635 (not res!2876347)) b!7045757))

(assert (= (and b!7045757 res!2876348) b!7045758))

(declare-fun b_lambda!267681 () Bool)

(assert (=> (not b_lambda!267681) (not b!7045757)))

(declare-fun m!7759478 () Bool)

(assert (=> b!7045757 m!7759478))

(declare-fun m!7759480 () Bool)

(assert (=> b!7045758 m!7759480))

(assert (=> d!2200469 d!2200635))

(assert (=> d!2200469 d!2200467))

(declare-fun d!2200637 () Bool)

(assert (=> d!2200637 (forall!16430 (++!15579 lt!2526592 (exprs!6998 ct2!306)) lambda!417651)))

(assert (=> d!2200637 true))

(declare-fun _$78!622 () Unit!161688)

(assert (=> d!2200637 (= (choose!53528 lt!2526592 (exprs!6998 ct2!306) lambda!417651) _$78!622)))

(declare-fun bs!1874809 () Bool)

(assert (= bs!1874809 d!2200637))

(assert (=> bs!1874809 m!7758916))

(assert (=> bs!1874809 m!7758916))

(assert (=> bs!1874809 m!7759162))

(assert (=> d!2200469 d!2200637))

(declare-fun d!2200639 () Bool)

(declare-fun res!2876349 () Bool)

(declare-fun e!4235675 () Bool)

(assert (=> d!2200639 (=> res!2876349 e!4235675)))

(assert (=> d!2200639 (= res!2876349 (is-Nil!67910 lt!2526592))))

(assert (=> d!2200639 (= (forall!16430 lt!2526592 lambda!417651) e!4235675)))

(declare-fun b!7045759 () Bool)

(declare-fun e!4235676 () Bool)

(assert (=> b!7045759 (= e!4235675 e!4235676)))

(declare-fun res!2876350 () Bool)

(assert (=> b!7045759 (=> (not res!2876350) (not e!4235676))))

(assert (=> b!7045759 (= res!2876350 (dynLambda!27495 lambda!417651 (h!74358 lt!2526592)))))

(declare-fun b!7045760 () Bool)

(assert (=> b!7045760 (= e!4235676 (forall!16430 (t!381809 lt!2526592) lambda!417651))))

(assert (= (and d!2200639 (not res!2876349)) b!7045759))

(assert (= (and b!7045759 res!2876350) b!7045760))

(declare-fun b_lambda!267683 () Bool)

(assert (=> (not b_lambda!267683) (not b!7045759)))

(declare-fun m!7759482 () Bool)

(assert (=> b!7045759 m!7759482))

(declare-fun m!7759484 () Bool)

(assert (=> b!7045760 m!7759484))

(assert (=> d!2200469 d!2200639))

(declare-fun bm!640126 () Bool)

(declare-fun call!640132 () List!68034)

(declare-fun call!640133 () List!68034)

(assert (=> bm!640126 (= call!640132 call!640133)))

(declare-fun b!7045761 () Bool)

(declare-fun e!4235680 () (Set Context!12996))

(declare-fun e!4235677 () (Set Context!12996))

(assert (=> b!7045761 (= e!4235680 e!4235677)))

(declare-fun c!1311932 () Bool)

(assert (=> b!7045761 (= c!1311932 (is-Union!17502 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))))))

(declare-fun b!7045762 () Bool)

(declare-fun c!1311931 () Bool)

(declare-fun e!4235678 () Bool)

(assert (=> b!7045762 (= c!1311931 e!4235678)))

(declare-fun res!2876351 () Bool)

(assert (=> b!7045762 (=> (not res!2876351) (not e!4235678))))

(assert (=> b!7045762 (= res!2876351 (is-Concat!26347 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))))))

(declare-fun e!4235681 () (Set Context!12996))

(assert (=> b!7045762 (= e!4235677 e!4235681)))

(declare-fun b!7045763 () Bool)

(assert (=> b!7045763 (= e!4235678 (nullable!7213 (regOne!35516 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605)))))))))))

(declare-fun bm!640127 () Bool)

(declare-fun c!1311929 () Bool)

(assert (=> bm!640127 (= call!640133 ($colon$colon!2599 (exprs!6998 (ite (or c!1311860 c!1311859) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640104))) (ite (or c!1311931 c!1311929) (regTwo!35516 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))) (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605)))))))))))

(declare-fun b!7045764 () Bool)

(declare-fun e!4235682 () (Set Context!12996))

(assert (=> b!7045764 (= e!4235681 e!4235682)))

(assert (=> b!7045764 (= c!1311929 (is-Concat!26347 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))))))

(declare-fun bm!640128 () Bool)

(declare-fun call!640135 () (Set Context!12996))

(declare-fun call!640131 () (Set Context!12996))

(assert (=> bm!640128 (= call!640135 call!640131)))

(declare-fun bm!640129 () Bool)

(declare-fun call!640134 () (Set Context!12996))

(assert (=> bm!640129 (= call!640134 (derivationStepZipperDown!2166 (ite c!1311932 (regOne!35517 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))) (regOne!35516 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605)))))))) (ite c!1311932 (ite (or c!1311860 c!1311859) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640104)) (Context!12997 call!640133)) (h!74359 s!7408)))))

(declare-fun c!1311930 () Bool)

(declare-fun b!7045766 () Bool)

(assert (=> b!7045766 (= c!1311930 (is-Star!17502 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))))))

(declare-fun e!4235679 () (Set Context!12996))

(assert (=> b!7045766 (= e!4235682 e!4235679)))

(declare-fun b!7045767 () Bool)

(assert (=> b!7045767 (= e!4235681 (set.union call!640134 call!640131))))

(declare-fun b!7045768 () Bool)

(assert (=> b!7045768 (= e!4235679 (as set.empty (Set Context!12996)))))

(declare-fun bm!640130 () Bool)

(declare-fun call!640136 () (Set Context!12996))

(assert (=> bm!640130 (= call!640131 call!640136)))

(declare-fun b!7045769 () Bool)

(assert (=> b!7045769 (= e!4235680 (set.insert (ite (or c!1311860 c!1311859) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640104)) (as set.empty (Set Context!12996))))))

(declare-fun b!7045770 () Bool)

(assert (=> b!7045770 (= e!4235677 (set.union call!640134 call!640136))))

(declare-fun b!7045771 () Bool)

(assert (=> b!7045771 (= e!4235682 call!640135)))

(declare-fun bm!640131 () Bool)

(assert (=> bm!640131 (= call!640136 (derivationStepZipperDown!2166 (ite c!1311932 (regTwo!35517 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))) (ite c!1311931 (regTwo!35516 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))) (ite c!1311929 (regOne!35516 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))) (reg!17831 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605)))))))))) (ite (or c!1311932 c!1311931) (ite (or c!1311860 c!1311859) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640104)) (Context!12997 call!640132)) (h!74359 s!7408)))))

(declare-fun b!7045765 () Bool)

(assert (=> b!7045765 (= e!4235679 call!640135)))

(declare-fun d!2200641 () Bool)

(declare-fun c!1311933 () Bool)

(assert (=> d!2200641 (= c!1311933 (and (is-ElementMatch!17502 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))) (= (c!1311798 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605))))))) (h!74359 s!7408))))))

(assert (=> d!2200641 (= (derivationStepZipperDown!2166 (ite c!1311860 (regTwo!35517 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311859 (regTwo!35516 (h!74358 (exprs!6998 lt!2526605))) (ite c!1311857 (regOne!35516 (h!74358 (exprs!6998 lt!2526605))) (reg!17831 (h!74358 (exprs!6998 lt!2526605)))))) (ite (or c!1311860 c!1311859) (Context!12997 (++!15579 lt!2526592 (exprs!6998 ct2!306))) (Context!12997 call!640104)) (h!74359 s!7408)) e!4235680)))

(assert (= (and d!2200641 c!1311933) b!7045769))

(assert (= (and d!2200641 (not c!1311933)) b!7045761))

(assert (= (and b!7045761 c!1311932) b!7045770))

(assert (= (and b!7045761 (not c!1311932)) b!7045762))

(assert (= (and b!7045762 res!2876351) b!7045763))

(assert (= (and b!7045762 c!1311931) b!7045767))

(assert (= (and b!7045762 (not c!1311931)) b!7045764))

(assert (= (and b!7045764 c!1311929) b!7045771))

(assert (= (and b!7045764 (not c!1311929)) b!7045766))

(assert (= (and b!7045766 c!1311930) b!7045765))

(assert (= (and b!7045766 (not c!1311930)) b!7045768))

(assert (= (or b!7045771 b!7045765) bm!640126))

(assert (= (or b!7045771 b!7045765) bm!640128))

(assert (= (or b!7045767 bm!640128) bm!640130))

(assert (= (or b!7045767 bm!640126) bm!640127))

(assert (= (or b!7045770 b!7045767) bm!640129))

(assert (= (or b!7045770 bm!640130) bm!640131))

(declare-fun m!7759486 () Bool)

(assert (=> bm!640129 m!7759486))

(declare-fun m!7759488 () Bool)

(assert (=> b!7045769 m!7759488))

(declare-fun m!7759490 () Bool)

(assert (=> bm!640131 m!7759490))

(declare-fun m!7759492 () Bool)

(assert (=> bm!640127 m!7759492))

(declare-fun m!7759494 () Bool)

(assert (=> b!7045763 m!7759494))

(assert (=> bm!640103 d!2200641))

(declare-fun bs!1874810 () Bool)

(declare-fun d!2200643 () Bool)

(assert (= bs!1874810 (and d!2200643 b!7045324)))

(declare-fun lambda!417723 () Int)

(assert (=> bs!1874810 (not (= lambda!417723 lambda!417649))))

(declare-fun bs!1874811 () Bool)

(assert (= bs!1874811 (and d!2200643 d!2200441)))

(assert (=> bs!1874811 (not (= lambda!417723 lambda!417683))))

(declare-fun bs!1874812 () Bool)

(assert (= bs!1874812 (and d!2200643 d!2200445)))

(assert (=> bs!1874812 (not (= lambda!417723 lambda!417686))))

(declare-fun bs!1874813 () Bool)

(assert (= bs!1874813 (and d!2200643 d!2200519)))

(assert (=> bs!1874813 (= lambda!417723 lambda!417713)))

(declare-fun bs!1874814 () Bool)

(assert (= bs!1874814 (and d!2200643 d!2200583)))

(assert (=> bs!1874814 (not (= lambda!417723 lambda!417718))))

(declare-fun bs!1874815 () Bool)

(assert (= bs!1874815 (and d!2200643 d!2200537)))

(assert (=> bs!1874815 (= lambda!417723 lambda!417715)))

(declare-fun bs!1874816 () Bool)

(assert (= bs!1874816 (and d!2200643 d!2200585)))

(assert (=> bs!1874816 (not (= lambda!417723 lambda!417721))))

(assert (=> d!2200643 (= (nullableZipper!2606 lt!2526602) (exists!3456 lt!2526602 lambda!417723))))

(declare-fun bs!1874817 () Bool)

(assert (= bs!1874817 d!2200643))

(declare-fun m!7759496 () Bool)

(assert (=> bs!1874817 m!7759496))

(assert (=> b!7045437 d!2200643))

(declare-fun b!7045785 () Bool)

(declare-fun e!4235685 () Bool)

(declare-fun tp!1937962 () Bool)

(declare-fun tp!1937960 () Bool)

(assert (=> b!7045785 (= e!4235685 (and tp!1937962 tp!1937960))))

(assert (=> b!7045542 (= tp!1937907 e!4235685)))

(declare-fun b!7045782 () Bool)

(assert (=> b!7045782 (= e!4235685 tp_is_empty!44229)))

(declare-fun b!7045783 () Bool)

(declare-fun tp!1937959 () Bool)

(declare-fun tp!1937963 () Bool)

(assert (=> b!7045783 (= e!4235685 (and tp!1937959 tp!1937963))))

(declare-fun b!7045784 () Bool)

(declare-fun tp!1937961 () Bool)

(assert (=> b!7045784 (= e!4235685 tp!1937961)))

(assert (= (and b!7045542 (is-ElementMatch!17502 (h!74358 (exprs!6998 ct2!306)))) b!7045782))

(assert (= (and b!7045542 (is-Concat!26347 (h!74358 (exprs!6998 ct2!306)))) b!7045783))

(assert (= (and b!7045542 (is-Star!17502 (h!74358 (exprs!6998 ct2!306)))) b!7045784))

(assert (= (and b!7045542 (is-Union!17502 (h!74358 (exprs!6998 ct2!306)))) b!7045785))

(declare-fun b!7045786 () Bool)

(declare-fun e!4235686 () Bool)

(declare-fun tp!1937964 () Bool)

(declare-fun tp!1937965 () Bool)

(assert (=> b!7045786 (= e!4235686 (and tp!1937964 tp!1937965))))

(assert (=> b!7045542 (= tp!1937908 e!4235686)))

(assert (= (and b!7045542 (is-Cons!67910 (t!381809 (exprs!6998 ct2!306)))) b!7045786))

(declare-fun condSetEmpty!49444 () Bool)

(assert (=> setNonEmpty!49437 (= condSetEmpty!49444 (= setRest!49437 (as set.empty (Set Context!12996))))))

(declare-fun setRes!49444 () Bool)

(assert (=> setNonEmpty!49437 (= tp!1937913 setRes!49444)))

(declare-fun setIsEmpty!49444 () Bool)

(assert (=> setIsEmpty!49444 setRes!49444))

(declare-fun setElem!49444 () Context!12996)

(declare-fun tp!1937966 () Bool)

(declare-fun e!4235687 () Bool)

(declare-fun setNonEmpty!49444 () Bool)

(assert (=> setNonEmpty!49444 (= setRes!49444 (and tp!1937966 (inv!86615 setElem!49444) e!4235687))))

(declare-fun setRest!49444 () (Set Context!12996))

(assert (=> setNonEmpty!49444 (= setRest!49437 (set.union (set.insert setElem!49444 (as set.empty (Set Context!12996))) setRest!49444))))

(declare-fun b!7045787 () Bool)

(declare-fun tp!1937967 () Bool)

(assert (=> b!7045787 (= e!4235687 tp!1937967)))

(assert (= (and setNonEmpty!49437 condSetEmpty!49444) setIsEmpty!49444))

(assert (= (and setNonEmpty!49437 (not condSetEmpty!49444)) setNonEmpty!49444))

(assert (= setNonEmpty!49444 b!7045787))

(declare-fun m!7759498 () Bool)

(assert (=> setNonEmpty!49444 m!7759498))

(declare-fun b!7045788 () Bool)

(declare-fun e!4235688 () Bool)

(declare-fun tp!1937968 () Bool)

(declare-fun tp!1937969 () Bool)

(assert (=> b!7045788 (= e!4235688 (and tp!1937968 tp!1937969))))

(assert (=> b!7045555 (= tp!1937914 e!4235688)))

(assert (= (and b!7045555 (is-Cons!67910 (exprs!6998 setElem!49437))) b!7045788))

(declare-fun b!7045789 () Bool)

(declare-fun e!4235689 () Bool)

(declare-fun tp!1937970 () Bool)

(assert (=> b!7045789 (= e!4235689 (and tp_is_empty!44229 tp!1937970))))

(assert (=> b!7045535 (= tp!1937902 e!4235689)))

(assert (= (and b!7045535 (is-Cons!67911 (t!381810 (t!381810 s!7408)))) b!7045789))

(declare-fun b!7045793 () Bool)

(declare-fun e!4235690 () Bool)

(declare-fun tp!1937974 () Bool)

(declare-fun tp!1937972 () Bool)

(assert (=> b!7045793 (= e!4235690 (and tp!1937974 tp!1937972))))

(assert (=> b!7045556 (= tp!1937915 e!4235690)))

(declare-fun b!7045790 () Bool)

(assert (=> b!7045790 (= e!4235690 tp_is_empty!44229)))

(declare-fun b!7045791 () Bool)

(declare-fun tp!1937971 () Bool)

(declare-fun tp!1937975 () Bool)

(assert (=> b!7045791 (= e!4235690 (and tp!1937971 tp!1937975))))

(declare-fun b!7045792 () Bool)

(declare-fun tp!1937973 () Bool)

(assert (=> b!7045792 (= e!4235690 tp!1937973)))

(assert (= (and b!7045556 (is-ElementMatch!17502 (h!74358 (exprs!6998 setElem!49431)))) b!7045790))

(assert (= (and b!7045556 (is-Concat!26347 (h!74358 (exprs!6998 setElem!49431)))) b!7045791))

(assert (= (and b!7045556 (is-Star!17502 (h!74358 (exprs!6998 setElem!49431)))) b!7045792))

(assert (= (and b!7045556 (is-Union!17502 (h!74358 (exprs!6998 setElem!49431)))) b!7045793))

(declare-fun b!7045794 () Bool)

(declare-fun e!4235691 () Bool)

(declare-fun tp!1937976 () Bool)

(declare-fun tp!1937977 () Bool)

(assert (=> b!7045794 (= e!4235691 (and tp!1937976 tp!1937977))))

(assert (=> b!7045556 (= tp!1937916 e!4235691)))

(assert (= (and b!7045556 (is-Cons!67910 (t!381809 (exprs!6998 setElem!49431)))) b!7045794))

(declare-fun b_lambda!267685 () Bool)

(assert (= b_lambda!267673 (or b!7045324 b_lambda!267685)))

(declare-fun bs!1874818 () Bool)

(declare-fun d!2200645 () Bool)

(assert (= bs!1874818 (and d!2200645 b!7045324)))

(assert (=> bs!1874818 (= (dynLambda!27489 lambda!417649 (h!74360 (toList!10845 lt!2526593))) (matchZipper!3042 (set.insert (h!74360 (toList!10845 lt!2526593)) (as set.empty (Set Context!12996))) s!7408))))

(declare-fun m!7759500 () Bool)

(assert (=> bs!1874818 m!7759500))

(assert (=> bs!1874818 m!7759500))

(declare-fun m!7759502 () Bool)

(assert (=> bs!1874818 m!7759502))

(assert (=> b!7045660 d!2200645))

(declare-fun b_lambda!267687 () Bool)

(assert (= b_lambda!267669 (or d!2200437 b_lambda!267687)))

(declare-fun bs!1874819 () Bool)

(declare-fun d!2200647 () Bool)

(assert (= bs!1874819 (and d!2200647 d!2200437)))

(declare-fun validRegex!8944 (Regex!17502) Bool)

(assert (=> bs!1874819 (= (dynLambda!27495 lambda!417680 (h!74358 (exprs!6998 setElem!49431))) (validRegex!8944 (h!74358 (exprs!6998 setElem!49431))))))

(declare-fun m!7759504 () Bool)

(assert (=> bs!1874819 m!7759504))

(assert (=> b!7045641 d!2200647))

(declare-fun b_lambda!267689 () Bool)

(assert (= b_lambda!267683 (or b!7045320 b_lambda!267689)))

(declare-fun bs!1874820 () Bool)

(declare-fun d!2200649 () Bool)

(assert (= bs!1874820 (and d!2200649 b!7045320)))

(assert (=> bs!1874820 (= (dynLambda!27495 lambda!417651 (h!74358 lt!2526592)) (validRegex!8944 (h!74358 lt!2526592)))))

(declare-fun m!7759506 () Bool)

(assert (=> bs!1874820 m!7759506))

(assert (=> b!7045759 d!2200649))

(declare-fun b_lambda!267691 () Bool)

(assert (= b_lambda!267681 (or b!7045320 b_lambda!267691)))

(declare-fun bs!1874821 () Bool)

(declare-fun d!2200651 () Bool)

(assert (= bs!1874821 (and d!2200651 b!7045320)))

(assert (=> bs!1874821 (= (dynLambda!27495 lambda!417651 (h!74358 (++!15579 lt!2526592 (exprs!6998 ct2!306)))) (validRegex!8944 (h!74358 (++!15579 lt!2526592 (exprs!6998 ct2!306)))))))

(declare-fun m!7759508 () Bool)

(assert (=> bs!1874821 m!7759508))

(assert (=> b!7045757 d!2200651))

(declare-fun b_lambda!267693 () Bool)

(assert (= b_lambda!267671 (or b!7045324 b_lambda!267693)))

(declare-fun bs!1874822 () Bool)

(declare-fun d!2200653 () Bool)

(assert (= bs!1874822 (and d!2200653 b!7045324)))

(assert (=> bs!1874822 (= (dynLambda!27489 lambda!417649 lt!2526713) (matchZipper!3042 (set.insert lt!2526713 (as set.empty (Set Context!12996))) s!7408))))

(declare-fun m!7759510 () Bool)

(assert (=> bs!1874822 m!7759510))

(assert (=> bs!1874822 m!7759510))

(declare-fun m!7759512 () Bool)

(assert (=> bs!1874822 m!7759512))

(assert (=> d!2200573 d!2200653))

(declare-fun b_lambda!267695 () Bool)

(assert (= b_lambda!267665 (or b!7045320 b_lambda!267695)))

(declare-fun bs!1874823 () Bool)

(declare-fun d!2200655 () Bool)

(assert (= bs!1874823 (and d!2200655 b!7045320)))

(assert (=> bs!1874823 (= (dynLambda!27495 lambda!417651 (h!74358 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306)))) (validRegex!8944 (h!74358 (++!15579 (exprs!6998 lt!2526605) (exprs!6998 ct2!306)))))))

(declare-fun m!7759514 () Bool)

(assert (=> bs!1874823 m!7759514))

(assert (=> b!7045637 d!2200655))

(declare-fun b_lambda!267697 () Bool)

(assert (= b_lambda!267667 (or b!7045320 b_lambda!267697)))

(declare-fun bs!1874824 () Bool)

(declare-fun d!2200657 () Bool)

(assert (= bs!1874824 (and d!2200657 b!7045320)))

(assert (=> bs!1874824 (= (dynLambda!27495 lambda!417651 (h!74358 (exprs!6998 lt!2526605))) (validRegex!8944 (h!74358 (exprs!6998 lt!2526605))))))

(declare-fun m!7759516 () Bool)

(assert (=> bs!1874824 m!7759516))

(assert (=> b!7045639 d!2200657))

(declare-fun b_lambda!267699 () Bool)

(assert (= b_lambda!267663 (or b!7045320 b_lambda!267699)))

(declare-fun bs!1874825 () Bool)

(declare-fun d!2200659 () Bool)

(assert (= bs!1874825 (and d!2200659 b!7045320)))

(declare-fun lt!2526725 () Unit!161688)

(assert (=> bs!1874825 (= lt!2526725 (lemmaConcatPreservesForall!823 (exprs!6998 a!13340) (exprs!6998 ct2!306) lambda!417651))))

(assert (=> bs!1874825 (= (dynLambda!27490 lambda!417650 a!13340) (Context!12997 (++!15579 (exprs!6998 a!13340) (exprs!6998 ct2!306))))))

(declare-fun m!7759518 () Bool)

(assert (=> bs!1874825 m!7759518))

(declare-fun m!7759520 () Bool)

(assert (=> bs!1874825 m!7759520))

(assert (=> d!2200523 d!2200659))

(declare-fun b_lambda!267701 () Bool)

(assert (= b_lambda!267677 (or d!2200445 b_lambda!267701)))

(declare-fun bs!1874826 () Bool)

(declare-fun d!2200661 () Bool)

(assert (= bs!1874826 (and d!2200661 d!2200445)))

(assert (=> bs!1874826 (= (dynLambda!27489 lambda!417686 (h!74360 lt!2526596)) (not (dynLambda!27489 lambda!417649 (h!74360 lt!2526596))))))

(declare-fun b_lambda!267707 () Bool)

(assert (=> (not b_lambda!267707) (not bs!1874826)))

(declare-fun m!7759522 () Bool)

(assert (=> bs!1874826 m!7759522))

(assert (=> b!7045753 d!2200661))

(declare-fun b_lambda!267703 () Bool)

(assert (= b_lambda!267675 (or b!7045322 b_lambda!267703)))

(assert (=> d!2200605 d!2200479))

(declare-fun b_lambda!267705 () Bool)

(assert (= b_lambda!267679 (or d!2200477 b_lambda!267705)))

(declare-fun bs!1874827 () Bool)

(declare-fun d!2200663 () Bool)

(assert (= bs!1874827 (and d!2200663 d!2200477)))

(assert (=> bs!1874827 (= (dynLambda!27495 lambda!417695 (h!74358 (exprs!6998 ct2!306))) (validRegex!8944 (h!74358 (exprs!6998 ct2!306))))))

(declare-fun m!7759524 () Bool)

(assert (=> bs!1874827 m!7759524))

(assert (=> b!7045755 d!2200663))

(push 1)

(assert (not b!7045689))

(assert tp_is_empty!44229)

(assert (not b_lambda!267689))

(assert (not b!7045628))

(assert (not b_lambda!267647))

(assert (not bm!640112))

(assert (not b!7045794))

(assert (not b!7045789))

(assert (not b!7045756))

(assert (not b!7045720))

(assert (not d!2200643))

(assert (not d!2200603))

(assert (not d!2200585))

(assert (not setNonEmpty!49443))

(assert (not d!2200523))

(assert (not b!7045711))

(assert (not d!2200529))

(assert (not b!7045783))

(assert (not b!7045681))

(assert (not b_lambda!267651))

(assert (not b!7045723))

(assert (not d!2200581))

(assert (not d!2200607))

(assert (not b!7045760))

(assert (not b!7045659))

(assert (not bm!640118))

(assert (not b_lambda!267703))

(assert (not b!7045638))

(assert (not b!7045719))

(assert (not b_lambda!267649))

(assert (not b!7045706))

(assert (not d!2200587))

(assert (not bm!640127))

(assert (not b!7045758))

(assert (not b_lambda!267685))

(assert (not b_lambda!267693))

(assert (not b!7045692))

(assert (not b_lambda!267687))

(assert (not b!7045748))

(assert (not b!7045685))

(assert (not bs!1874827))

(assert (not d!2200521))

(assert (not setNonEmpty!49444))

(assert (not bs!1874825))

(assert (not b!7045663))

(assert (not b!7045791))

(assert (not b!7045673))

(assert (not d!2200601))

(assert (not b!7045763))

(assert (not d!2200519))

(assert (not b!7045626))

(assert (not d!2200599))

(assert (not b!7045712))

(assert (not bs!1874823))

(assert (not d!2200621))

(assert (not b!7045621))

(assert (not d!2200619))

(assert (not b!7045619))

(assert (not b!7045788))

(assert (not bs!1874822))

(assert (not b!7045793))

(assert (not d!2200547))

(assert (not b!7045690))

(assert (not b!7045672))

(assert (not b!7045640))

(assert (not d!2200563))

(assert (not b!7045597))

(assert (not b!7045657))

(assert (not b!7045754))

(assert (not d!2200539))

(assert (not b!7045721))

(assert (not b!7045601))

(assert (not b!7045702))

(assert (not b!7045784))

(assert (not bm!640125))

(assert (not b!7045684))

(assert (not bs!1874820))

(assert (not d!2200609))

(assert (not b!7045696))

(assert (not bm!640119))

(assert (not d!2200575))

(assert (not b_lambda!267697))

(assert (not bm!640116))

(assert (not bm!640129))

(assert (not b_lambda!267695))

(assert (not b!7045617))

(assert (not b!7045630))

(assert (not d!2200567))

(assert (not b!7045695))

(assert (not b!7045785))

(assert (not b!7045598))

(assert (not d!2200583))

(assert (not b_lambda!267699))

(assert (not bm!640124))

(assert (not b!7045615))

(assert (not b_lambda!267705))

(assert (not d!2200573))

(assert (not b!7045704))

(assert (not b!7045627))

(assert (not b!7045631))

(assert (not b!7045655))

(assert (not bm!640108))

(assert (not d!2200637))

(assert (not bs!1874824))

(assert (not b!7045683))

(assert (not b!7045787))

(assert (not b_lambda!267701))

(assert (not bm!640114))

(assert (not b_lambda!267707))

(assert (not b_lambda!267691))

(assert (not b!7045746))

(assert (not b!7045679))

(assert (not b!7045792))

(assert (not d!2200555))

(assert (not bm!640131))

(assert (not b!7045642))

(assert (not b!7045595))

(assert (not d!2200527))

(assert (not bs!1874818))

(assert (not bm!640110))

(assert (not d!2200557))

(assert (not b!7045786))

(assert (not d!2200549))

(assert (not d!2200525))

(assert (not bs!1874819))

(assert (not b!7045622))

(assert (not b!7045693))

(assert (not bs!1874821))

(assert (not d!2200537))

(assert (not d!2200605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


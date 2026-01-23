; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683510 () Bool)

(assert start!683510)

(declare-fun b!7052319 () Bool)

(assert (=> b!7052319 true))

(declare-fun b!7052325 () Bool)

(assert (=> b!7052325 true))

(declare-fun b!7052320 () Bool)

(assert (=> b!7052320 true))

(declare-fun setNonEmpty!49736 () Bool)

(declare-datatypes ((C!35378 0))(
  ( (C!35379 (val!27391 Int)) )
))
(declare-datatypes ((Regex!17554 0))(
  ( (ElementMatch!17554 (c!1313585 C!35378)) (Concat!26399 (regOne!35620 Regex!17554) (regTwo!35620 Regex!17554)) (EmptyExpr!17554) (Star!17554 (reg!17883 Regex!17554)) (EmptyLang!17554) (Union!17554 (regOne!35621 Regex!17554) (regTwo!35621 Regex!17554)) )
))
(declare-datatypes ((List!68188 0))(
  ( (Nil!68064) (Cons!68064 (h!74512 Regex!17554) (t!381967 List!68188)) )
))
(declare-datatypes ((Context!13100 0))(
  ( (Context!13101 (exprs!7050 List!68188)) )
))
(declare-fun setElem!49736 () Context!13100)

(declare-fun e!4239705 () Bool)

(declare-fun tp!1939570 () Bool)

(declare-fun setRes!49736 () Bool)

(declare-fun inv!86745 (Context!13100) Bool)

(assert (=> setNonEmpty!49736 (= setRes!49736 (and tp!1939570 (inv!86745 setElem!49736) e!4239705))))

(declare-fun z1!570 () (Set Context!13100))

(declare-fun setRest!49736 () (Set Context!13100))

(assert (=> setNonEmpty!49736 (= z1!570 (set.union (set.insert setElem!49736 (as set.empty (Set Context!13100))) setRest!49736))))

(declare-fun b!7052318 () Bool)

(declare-fun res!2879116 () Bool)

(declare-fun e!4239701 () Bool)

(assert (=> b!7052318 (=> (not res!2879116) (not e!4239701))))

(declare-datatypes ((List!68189 0))(
  ( (Nil!68065) (Cons!68065 (h!74513 C!35378) (t!381968 List!68189)) )
))
(declare-fun s!7408 () List!68189)

(assert (=> b!7052318 (= res!2879116 (is-Cons!68065 s!7408))))

(declare-fun e!4239706 () Bool)

(assert (=> b!7052319 (= e!4239701 (not e!4239706))))

(declare-fun res!2879117 () Bool)

(assert (=> b!7052319 (=> res!2879117 e!4239706)))

(declare-fun lt!2530157 () (Set Context!13100))

(declare-fun matchZipper!3094 ((Set Context!13100) List!68189) Bool)

(assert (=> b!7052319 (= res!2879117 (not (matchZipper!3094 lt!2530157 s!7408)))))

(declare-fun lt!2530167 () Context!13100)

(assert (=> b!7052319 (= lt!2530157 (set.insert lt!2530167 (as set.empty (Set Context!13100))))))

(declare-fun lt!2530166 () (Set Context!13100))

(declare-fun lambda!419376 () Int)

(declare-fun getWitness!1606 ((Set Context!13100) Int) Context!13100)

(assert (=> b!7052319 (= lt!2530167 (getWitness!1606 lt!2530166 lambda!419376))))

(declare-datatypes ((List!68190 0))(
  ( (Nil!68066) (Cons!68066 (h!74514 Context!13100) (t!381969 List!68190)) )
))
(declare-fun lt!2530169 () List!68190)

(declare-fun exists!3532 (List!68190 Int) Bool)

(assert (=> b!7052319 (exists!3532 lt!2530169 lambda!419376)))

(declare-datatypes ((Unit!161780 0))(
  ( (Unit!161781) )
))
(declare-fun lt!2530165 () Unit!161780)

(declare-fun lemmaZipperMatchesExistsMatchingContext!475 (List!68190 List!68189) Unit!161780)

(assert (=> b!7052319 (= lt!2530165 (lemmaZipperMatchesExistsMatchingContext!475 lt!2530169 s!7408))))

(declare-fun toList!10895 ((Set Context!13100)) List!68190)

(assert (=> b!7052319 (= lt!2530169 (toList!10895 lt!2530166))))

(declare-fun setIsEmpty!49736 () Bool)

(assert (=> setIsEmpty!49736 setRes!49736))

(declare-fun e!4239703 () Bool)

(declare-fun e!4239700 () Bool)

(assert (=> b!7052320 (= e!4239703 e!4239700)))

(declare-fun res!2879121 () Bool)

(assert (=> b!7052320 (=> res!2879121 e!4239700)))

(declare-fun lt!2530164 () (Set Context!13100))

(declare-fun lt!2530168 () (Set Context!13100))

(declare-fun derivationStepZipper!3004 ((Set Context!13100) C!35378) (Set Context!13100))

(assert (=> b!7052320 (= res!2879121 (not (= (derivationStepZipper!3004 lt!2530164 (h!74513 s!7408)) lt!2530168)))))

(declare-fun lt!2530159 () Context!13100)

(declare-fun lambda!419379 () Int)

(declare-fun flatMap!2480 ((Set Context!13100) Int) (Set Context!13100))

(declare-fun derivationStepZipperUp!2138 (Context!13100 C!35378) (Set Context!13100))

(assert (=> b!7052320 (= (flatMap!2480 lt!2530164 lambda!419379) (derivationStepZipperUp!2138 lt!2530159 (h!74513 s!7408)))))

(declare-fun lt!2530160 () Unit!161780)

(declare-fun lemmaFlatMapOnSingletonSet!1989 ((Set Context!13100) Context!13100 Int) Unit!161780)

(assert (=> b!7052320 (= lt!2530160 (lemmaFlatMapOnSingletonSet!1989 lt!2530164 lt!2530159 lambda!419379))))

(assert (=> b!7052320 (= lt!2530168 (derivationStepZipperUp!2138 lt!2530159 (h!74513 s!7408)))))

(declare-fun lt!2530158 () Context!13100)

(declare-fun ct2!306 () Context!13100)

(declare-fun lt!2530161 () Unit!161780)

(declare-fun lambda!419378 () Int)

(declare-fun lemmaConcatPreservesForall!865 (List!68188 List!68188 Int) Unit!161780)

(assert (=> b!7052320 (= lt!2530161 (lemmaConcatPreservesForall!865 (exprs!7050 lt!2530158) (exprs!7050 ct2!306) lambda!419378))))

(declare-fun b!7052321 () Bool)

(declare-fun tp!1939572 () Bool)

(assert (=> b!7052321 (= e!4239705 tp!1939572)))

(declare-fun b!7052322 () Bool)

(declare-fun e!4239707 () Bool)

(declare-fun tp_is_empty!44333 () Bool)

(declare-fun tp!1939571 () Bool)

(assert (=> b!7052322 (= e!4239707 (and tp_is_empty!44333 tp!1939571))))

(declare-fun b!7052323 () Bool)

(declare-fun res!2879119 () Bool)

(assert (=> b!7052323 (=> res!2879119 e!4239706)))

(assert (=> b!7052323 (= res!2879119 (not (set.member lt!2530167 lt!2530166)))))

(declare-fun b!7052324 () Bool)

(declare-fun e!4239702 () Bool)

(assert (=> b!7052324 (= e!4239702 e!4239703)))

(declare-fun res!2879115 () Bool)

(assert (=> b!7052324 (=> res!2879115 e!4239703)))

(assert (=> b!7052324 (= res!2879115 (not (= lt!2530164 lt!2530157)))))

(assert (=> b!7052324 (= lt!2530164 (set.insert lt!2530159 (as set.empty (Set Context!13100))))))

(declare-fun lt!2530163 () Unit!161780)

(assert (=> b!7052324 (= lt!2530163 (lemmaConcatPreservesForall!865 (exprs!7050 lt!2530158) (exprs!7050 ct2!306) lambda!419378))))

(declare-fun b!7052326 () Bool)

(declare-fun res!2879120 () Bool)

(assert (=> b!7052326 (=> res!2879120 e!4239700)))

(assert (=> b!7052326 (= res!2879120 (not (is-Cons!68064 (exprs!7050 lt!2530158))))))

(declare-fun b!7052327 () Bool)

(declare-fun e!4239704 () Bool)

(declare-fun tp!1939569 () Bool)

(assert (=> b!7052327 (= e!4239704 tp!1939569)))

(declare-fun b!7052328 () Bool)

(declare-fun isEmpty!39699 (List!68188) Bool)

(assert (=> b!7052328 (= e!4239700 (not (isEmpty!39699 (exprs!7050 lt!2530158))))))

(declare-fun res!2879118 () Bool)

(assert (=> start!683510 (=> (not res!2879118) (not e!4239701))))

(assert (=> start!683510 (= res!2879118 (matchZipper!3094 lt!2530166 s!7408))))

(declare-fun appendTo!675 ((Set Context!13100) Context!13100) (Set Context!13100))

(assert (=> start!683510 (= lt!2530166 (appendTo!675 z1!570 ct2!306))))

(assert (=> start!683510 e!4239701))

(declare-fun condSetEmpty!49736 () Bool)

(assert (=> start!683510 (= condSetEmpty!49736 (= z1!570 (as set.empty (Set Context!13100))))))

(assert (=> start!683510 setRes!49736))

(assert (=> start!683510 (and (inv!86745 ct2!306) e!4239704)))

(assert (=> start!683510 e!4239707))

(assert (=> b!7052325 (= e!4239706 e!4239702)))

(declare-fun res!2879122 () Bool)

(assert (=> b!7052325 (=> res!2879122 e!4239702)))

(assert (=> b!7052325 (= res!2879122 (or (not (= lt!2530159 lt!2530167)) (not (set.member lt!2530158 z1!570))))))

(declare-fun ++!15637 (List!68188 List!68188) List!68188)

(assert (=> b!7052325 (= lt!2530159 (Context!13101 (++!15637 (exprs!7050 lt!2530158) (exprs!7050 ct2!306))))))

(declare-fun lt!2530162 () Unit!161780)

(assert (=> b!7052325 (= lt!2530162 (lemmaConcatPreservesForall!865 (exprs!7050 lt!2530158) (exprs!7050 ct2!306) lambda!419378))))

(declare-fun lambda!419377 () Int)

(declare-fun mapPost2!383 ((Set Context!13100) Int Context!13100) Context!13100)

(assert (=> b!7052325 (= lt!2530158 (mapPost2!383 z1!570 lambda!419377 lt!2530167))))

(assert (= (and start!683510 res!2879118) b!7052318))

(assert (= (and b!7052318 res!2879116) b!7052319))

(assert (= (and b!7052319 (not res!2879117)) b!7052323))

(assert (= (and b!7052323 (not res!2879119)) b!7052325))

(assert (= (and b!7052325 (not res!2879122)) b!7052324))

(assert (= (and b!7052324 (not res!2879115)) b!7052320))

(assert (= (and b!7052320 (not res!2879121)) b!7052326))

(assert (= (and b!7052326 (not res!2879120)) b!7052328))

(assert (= (and start!683510 condSetEmpty!49736) setIsEmpty!49736))

(assert (= (and start!683510 (not condSetEmpty!49736)) setNonEmpty!49736))

(assert (= setNonEmpty!49736 b!7052321))

(assert (= start!683510 b!7052327))

(assert (= (and start!683510 (is-Cons!68065 s!7408)) b!7052322))

(declare-fun m!7769014 () Bool)

(assert (=> b!7052325 m!7769014))

(declare-fun m!7769016 () Bool)

(assert (=> b!7052325 m!7769016))

(declare-fun m!7769018 () Bool)

(assert (=> b!7052325 m!7769018))

(declare-fun m!7769020 () Bool)

(assert (=> b!7052325 m!7769020))

(declare-fun m!7769022 () Bool)

(assert (=> b!7052320 m!7769022))

(declare-fun m!7769024 () Bool)

(assert (=> b!7052320 m!7769024))

(declare-fun m!7769026 () Bool)

(assert (=> b!7052320 m!7769026))

(declare-fun m!7769028 () Bool)

(assert (=> b!7052320 m!7769028))

(assert (=> b!7052320 m!7769018))

(declare-fun m!7769030 () Bool)

(assert (=> b!7052324 m!7769030))

(assert (=> b!7052324 m!7769018))

(declare-fun m!7769032 () Bool)

(assert (=> b!7052328 m!7769032))

(declare-fun m!7769034 () Bool)

(assert (=> setNonEmpty!49736 m!7769034))

(declare-fun m!7769036 () Bool)

(assert (=> b!7052319 m!7769036))

(declare-fun m!7769038 () Bool)

(assert (=> b!7052319 m!7769038))

(declare-fun m!7769040 () Bool)

(assert (=> b!7052319 m!7769040))

(declare-fun m!7769042 () Bool)

(assert (=> b!7052319 m!7769042))

(declare-fun m!7769044 () Bool)

(assert (=> b!7052319 m!7769044))

(declare-fun m!7769046 () Bool)

(assert (=> b!7052319 m!7769046))

(declare-fun m!7769048 () Bool)

(assert (=> start!683510 m!7769048))

(declare-fun m!7769050 () Bool)

(assert (=> start!683510 m!7769050))

(declare-fun m!7769052 () Bool)

(assert (=> start!683510 m!7769052))

(declare-fun m!7769054 () Bool)

(assert (=> b!7052323 m!7769054))

(push 1)

(assert (not b!7052327))

(assert (not b!7052322))

(assert tp_is_empty!44333)

(assert (not b!7052321))

(assert (not b!7052328))

(assert (not b!7052319))

(assert (not b!7052325))

(assert (not setNonEmpty!49736))

(assert (not start!683510))

(assert (not b!7052324))

(assert (not b!7052320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2203665 () Bool)

(declare-fun forall!16490 (List!68188 Int) Bool)

(assert (=> d!2203665 (forall!16490 (++!15637 (exprs!7050 lt!2530158) (exprs!7050 ct2!306)) lambda!419378)))

(declare-fun lt!2530213 () Unit!161780)

(declare-fun choose!53722 (List!68188 List!68188 Int) Unit!161780)

(assert (=> d!2203665 (= lt!2530213 (choose!53722 (exprs!7050 lt!2530158) (exprs!7050 ct2!306) lambda!419378))))

(assert (=> d!2203665 (forall!16490 (exprs!7050 lt!2530158) lambda!419378)))

(assert (=> d!2203665 (= (lemmaConcatPreservesForall!865 (exprs!7050 lt!2530158) (exprs!7050 ct2!306) lambda!419378) lt!2530213)))

(declare-fun bs!1876441 () Bool)

(assert (= bs!1876441 d!2203665))

(assert (=> bs!1876441 m!7769016))

(assert (=> bs!1876441 m!7769016))

(declare-fun m!7769098 () Bool)

(assert (=> bs!1876441 m!7769098))

(declare-fun m!7769100 () Bool)

(assert (=> bs!1876441 m!7769100))

(declare-fun m!7769102 () Bool)

(assert (=> bs!1876441 m!7769102))

(assert (=> b!7052320 d!2203665))

(declare-fun d!2203671 () Bool)

(declare-fun choose!53723 ((Set Context!13100) Int) (Set Context!13100))

(assert (=> d!2203671 (= (flatMap!2480 lt!2530164 lambda!419379) (choose!53723 lt!2530164 lambda!419379))))

(declare-fun bs!1876442 () Bool)

(assert (= bs!1876442 d!2203671))

(declare-fun m!7769104 () Bool)

(assert (=> bs!1876442 m!7769104))

(assert (=> b!7052320 d!2203671))

(declare-fun bs!1876443 () Bool)

(declare-fun d!2203673 () Bool)

(assert (= bs!1876443 (and d!2203673 b!7052320)))

(declare-fun lambda!419402 () Int)

(assert (=> bs!1876443 (= lambda!419402 lambda!419379)))

(assert (=> d!2203673 true))

(assert (=> d!2203673 (= (derivationStepZipper!3004 lt!2530164 (h!74513 s!7408)) (flatMap!2480 lt!2530164 lambda!419402))))

(declare-fun bs!1876444 () Bool)

(assert (= bs!1876444 d!2203673))

(declare-fun m!7769106 () Bool)

(assert (=> bs!1876444 m!7769106))

(assert (=> b!7052320 d!2203673))

(declare-fun d!2203675 () Bool)

(declare-fun dynLambda!27588 (Int Context!13100) (Set Context!13100))

(assert (=> d!2203675 (= (flatMap!2480 lt!2530164 lambda!419379) (dynLambda!27588 lambda!419379 lt!2530159))))

(declare-fun lt!2530219 () Unit!161780)

(declare-fun choose!53724 ((Set Context!13100) Context!13100 Int) Unit!161780)

(assert (=> d!2203675 (= lt!2530219 (choose!53724 lt!2530164 lt!2530159 lambda!419379))))

(assert (=> d!2203675 (= lt!2530164 (set.insert lt!2530159 (as set.empty (Set Context!13100))))))

(assert (=> d!2203675 (= (lemmaFlatMapOnSingletonSet!1989 lt!2530164 lt!2530159 lambda!419379) lt!2530219)))

(declare-fun b_lambda!268391 () Bool)

(assert (=> (not b_lambda!268391) (not d!2203675)))

(declare-fun bs!1876446 () Bool)

(assert (= bs!1876446 d!2203675))

(assert (=> bs!1876446 m!7769024))

(declare-fun m!7769114 () Bool)

(assert (=> bs!1876446 m!7769114))

(declare-fun m!7769116 () Bool)

(assert (=> bs!1876446 m!7769116))

(assert (=> bs!1876446 m!7769030))

(assert (=> b!7052320 d!2203675))

(declare-fun b!7052388 () Bool)

(declare-fun e!4239739 () (Set Context!13100))

(assert (=> b!7052388 (= e!4239739 (as set.empty (Set Context!13100)))))

(declare-fun bm!640613 () Bool)

(declare-fun call!640618 () (Set Context!13100))

(declare-fun derivationStepZipperDown!2188 (Regex!17554 Context!13100 C!35378) (Set Context!13100))

(assert (=> bm!640613 (= call!640618 (derivationStepZipperDown!2188 (h!74512 (exprs!7050 lt!2530159)) (Context!13101 (t!381967 (exprs!7050 lt!2530159))) (h!74513 s!7408)))))

(declare-fun d!2203679 () Bool)

(declare-fun c!1313604 () Bool)

(declare-fun e!4239738 () Bool)

(assert (=> d!2203679 (= c!1313604 e!4239738)))

(declare-fun res!2879151 () Bool)

(assert (=> d!2203679 (=> (not res!2879151) (not e!4239738))))

(assert (=> d!2203679 (= res!2879151 (is-Cons!68064 (exprs!7050 lt!2530159)))))

(declare-fun e!4239740 () (Set Context!13100))

(assert (=> d!2203679 (= (derivationStepZipperUp!2138 lt!2530159 (h!74513 s!7408)) e!4239740)))

(declare-fun b!7052389 () Bool)

(assert (=> b!7052389 (= e!4239740 (set.union call!640618 (derivationStepZipperUp!2138 (Context!13101 (t!381967 (exprs!7050 lt!2530159))) (h!74513 s!7408))))))

(declare-fun b!7052390 () Bool)

(assert (=> b!7052390 (= e!4239739 call!640618)))

(declare-fun b!7052391 () Bool)

(declare-fun nullable!7237 (Regex!17554) Bool)

(assert (=> b!7052391 (= e!4239738 (nullable!7237 (h!74512 (exprs!7050 lt!2530159))))))

(declare-fun b!7052392 () Bool)

(assert (=> b!7052392 (= e!4239740 e!4239739)))

(declare-fun c!1313603 () Bool)

(assert (=> b!7052392 (= c!1313603 (is-Cons!68064 (exprs!7050 lt!2530159)))))

(assert (= (and d!2203679 res!2879151) b!7052391))

(assert (= (and d!2203679 c!1313604) b!7052389))

(assert (= (and d!2203679 (not c!1313604)) b!7052392))

(assert (= (and b!7052392 c!1313603) b!7052390))

(assert (= (and b!7052392 (not c!1313603)) b!7052388))

(assert (= (or b!7052389 b!7052390) bm!640613))

(declare-fun m!7769120 () Bool)

(assert (=> bm!640613 m!7769120))

(declare-fun m!7769122 () Bool)

(assert (=> b!7052389 m!7769122))

(declare-fun m!7769124 () Bool)

(assert (=> b!7052391 m!7769124))

(assert (=> b!7052320 d!2203679))

(declare-fun d!2203683 () Bool)

(declare-fun c!1313607 () Bool)

(declare-fun isEmpty!39701 (List!68189) Bool)

(assert (=> d!2203683 (= c!1313607 (isEmpty!39701 s!7408))))

(declare-fun e!4239743 () Bool)

(assert (=> d!2203683 (= (matchZipper!3094 lt!2530166 s!7408) e!4239743)))

(declare-fun b!7052397 () Bool)

(declare-fun nullableZipper!2644 ((Set Context!13100)) Bool)

(assert (=> b!7052397 (= e!4239743 (nullableZipper!2644 lt!2530166))))

(declare-fun b!7052398 () Bool)

(declare-fun head!14344 (List!68189) C!35378)

(declare-fun tail!13673 (List!68189) List!68189)

(assert (=> b!7052398 (= e!4239743 (matchZipper!3094 (derivationStepZipper!3004 lt!2530166 (head!14344 s!7408)) (tail!13673 s!7408)))))

(assert (= (and d!2203683 c!1313607) b!7052397))

(assert (= (and d!2203683 (not c!1313607)) b!7052398))

(declare-fun m!7769126 () Bool)

(assert (=> d!2203683 m!7769126))

(declare-fun m!7769128 () Bool)

(assert (=> b!7052397 m!7769128))

(declare-fun m!7769130 () Bool)

(assert (=> b!7052398 m!7769130))

(assert (=> b!7052398 m!7769130))

(declare-fun m!7769132 () Bool)

(assert (=> b!7052398 m!7769132))

(declare-fun m!7769134 () Bool)

(assert (=> b!7052398 m!7769134))

(assert (=> b!7052398 m!7769132))

(assert (=> b!7052398 m!7769134))

(declare-fun m!7769136 () Bool)

(assert (=> b!7052398 m!7769136))

(assert (=> start!683510 d!2203683))

(declare-fun bs!1876449 () Bool)

(declare-fun d!2203685 () Bool)

(assert (= bs!1876449 (and d!2203685 b!7052325)))

(declare-fun lambda!419410 () Int)

(assert (=> bs!1876449 (= lambda!419410 lambda!419377)))

(assert (=> d!2203685 true))

(declare-fun map!15871 ((Set Context!13100) Int) (Set Context!13100))

(assert (=> d!2203685 (= (appendTo!675 z1!570 ct2!306) (map!15871 z1!570 lambda!419410))))

(declare-fun bs!1876450 () Bool)

(assert (= bs!1876450 d!2203685))

(declare-fun m!7769138 () Bool)

(assert (=> bs!1876450 m!7769138))

(assert (=> start!683510 d!2203685))

(declare-fun bs!1876451 () Bool)

(declare-fun d!2203687 () Bool)

(assert (= bs!1876451 (and d!2203687 b!7052325)))

(declare-fun lambda!419413 () Int)

(assert (=> bs!1876451 (= lambda!419413 lambda!419378)))

(assert (=> d!2203687 (= (inv!86745 ct2!306) (forall!16490 (exprs!7050 ct2!306) lambda!419413))))

(declare-fun bs!1876452 () Bool)

(assert (= bs!1876452 d!2203687))

(declare-fun m!7769140 () Bool)

(assert (=> bs!1876452 m!7769140))

(assert (=> start!683510 d!2203687))

(declare-fun b!7052422 () Bool)

(declare-fun e!4239757 () List!68188)

(assert (=> b!7052422 (= e!4239757 (exprs!7050 ct2!306))))

(declare-fun e!4239758 () Bool)

(declare-fun lt!2530224 () List!68188)

(declare-fun b!7052425 () Bool)

(assert (=> b!7052425 (= e!4239758 (or (not (= (exprs!7050 ct2!306) Nil!68064)) (= lt!2530224 (exprs!7050 lt!2530158))))))

(declare-fun b!7052424 () Bool)

(declare-fun res!2879159 () Bool)

(assert (=> b!7052424 (=> (not res!2879159) (not e!4239758))))

(declare-fun size!41139 (List!68188) Int)

(assert (=> b!7052424 (= res!2879159 (= (size!41139 lt!2530224) (+ (size!41139 (exprs!7050 lt!2530158)) (size!41139 (exprs!7050 ct2!306)))))))

(declare-fun d!2203689 () Bool)

(assert (=> d!2203689 e!4239758))

(declare-fun res!2879160 () Bool)

(assert (=> d!2203689 (=> (not res!2879160) (not e!4239758))))

(declare-fun content!13661 (List!68188) (Set Regex!17554))

(assert (=> d!2203689 (= res!2879160 (= (content!13661 lt!2530224) (set.union (content!13661 (exprs!7050 lt!2530158)) (content!13661 (exprs!7050 ct2!306)))))))

(assert (=> d!2203689 (= lt!2530224 e!4239757)))

(declare-fun c!1313617 () Bool)

(assert (=> d!2203689 (= c!1313617 (is-Nil!68064 (exprs!7050 lt!2530158)))))

(assert (=> d!2203689 (= (++!15637 (exprs!7050 lt!2530158) (exprs!7050 ct2!306)) lt!2530224)))

(declare-fun b!7052423 () Bool)

(assert (=> b!7052423 (= e!4239757 (Cons!68064 (h!74512 (exprs!7050 lt!2530158)) (++!15637 (t!381967 (exprs!7050 lt!2530158)) (exprs!7050 ct2!306))))))

(assert (= (and d!2203689 c!1313617) b!7052422))

(assert (= (and d!2203689 (not c!1313617)) b!7052423))

(assert (= (and d!2203689 res!2879160) b!7052424))

(assert (= (and b!7052424 res!2879159) b!7052425))

(declare-fun m!7769148 () Bool)

(assert (=> b!7052424 m!7769148))

(declare-fun m!7769150 () Bool)

(assert (=> b!7052424 m!7769150))

(declare-fun m!7769152 () Bool)

(assert (=> b!7052424 m!7769152))

(declare-fun m!7769154 () Bool)

(assert (=> d!2203689 m!7769154))

(declare-fun m!7769156 () Bool)

(assert (=> d!2203689 m!7769156))

(declare-fun m!7769158 () Bool)

(assert (=> d!2203689 m!7769158))

(declare-fun m!7769160 () Bool)

(assert (=> b!7052423 m!7769160))

(assert (=> b!7052325 d!2203689))

(assert (=> b!7052325 d!2203665))

(declare-fun d!2203693 () Bool)

(declare-fun e!4239761 () Bool)

(assert (=> d!2203693 e!4239761))

(declare-fun res!2879163 () Bool)

(assert (=> d!2203693 (=> (not res!2879163) (not e!4239761))))

(declare-fun lt!2530230 () Context!13100)

(declare-fun dynLambda!27589 (Int Context!13100) Context!13100)

(assert (=> d!2203693 (= res!2879163 (= lt!2530167 (dynLambda!27589 lambda!419377 lt!2530230)))))

(declare-fun choose!53725 ((Set Context!13100) Int Context!13100) Context!13100)

(assert (=> d!2203693 (= lt!2530230 (choose!53725 z1!570 lambda!419377 lt!2530167))))

(assert (=> d!2203693 (set.member lt!2530167 (map!15871 z1!570 lambda!419377))))

(assert (=> d!2203693 (= (mapPost2!383 z1!570 lambda!419377 lt!2530167) lt!2530230)))

(declare-fun b!7052429 () Bool)

(assert (=> b!7052429 (= e!4239761 (set.member lt!2530230 z1!570))))

(assert (= (and d!2203693 res!2879163) b!7052429))

(declare-fun b_lambda!268395 () Bool)

(assert (=> (not b_lambda!268395) (not d!2203693)))

(declare-fun m!7769166 () Bool)

(assert (=> d!2203693 m!7769166))

(declare-fun m!7769168 () Bool)

(assert (=> d!2203693 m!7769168))

(declare-fun m!7769170 () Bool)

(assert (=> d!2203693 m!7769170))

(declare-fun m!7769172 () Bool)

(assert (=> d!2203693 m!7769172))

(declare-fun m!7769174 () Bool)

(assert (=> b!7052429 m!7769174))

(assert (=> b!7052325 d!2203693))

(assert (=> b!7052324 d!2203665))

(declare-fun d!2203697 () Bool)

(declare-fun e!4239764 () Bool)

(assert (=> d!2203697 e!4239764))

(declare-fun res!2879166 () Bool)

(assert (=> d!2203697 (=> (not res!2879166) (not e!4239764))))

(declare-fun lt!2530233 () Context!13100)

(declare-fun dynLambda!27590 (Int Context!13100) Bool)

(assert (=> d!2203697 (= res!2879166 (dynLambda!27590 lambda!419376 lt!2530233))))

(declare-fun getWitness!1608 (List!68190 Int) Context!13100)

(assert (=> d!2203697 (= lt!2530233 (getWitness!1608 (toList!10895 lt!2530166) lambda!419376))))

(declare-fun exists!3534 ((Set Context!13100) Int) Bool)

(assert (=> d!2203697 (exists!3534 lt!2530166 lambda!419376)))

(assert (=> d!2203697 (= (getWitness!1606 lt!2530166 lambda!419376) lt!2530233)))

(declare-fun b!7052432 () Bool)

(assert (=> b!7052432 (= e!4239764 (set.member lt!2530233 lt!2530166))))

(assert (= (and d!2203697 res!2879166) b!7052432))

(declare-fun b_lambda!268397 () Bool)

(assert (=> (not b_lambda!268397) (not d!2203697)))

(declare-fun m!7769178 () Bool)

(assert (=> d!2203697 m!7769178))

(assert (=> d!2203697 m!7769038))

(assert (=> d!2203697 m!7769038))

(declare-fun m!7769180 () Bool)

(assert (=> d!2203697 m!7769180))

(declare-fun m!7769182 () Bool)

(assert (=> d!2203697 m!7769182))

(declare-fun m!7769184 () Bool)

(assert (=> b!7052432 m!7769184))

(assert (=> b!7052319 d!2203697))

(declare-fun bs!1876455 () Bool)

(declare-fun d!2203701 () Bool)

(assert (= bs!1876455 (and d!2203701 b!7052319)))

(declare-fun lambda!419418 () Int)

(assert (=> bs!1876455 (= lambda!419418 lambda!419376)))

(assert (=> d!2203701 true))

(assert (=> d!2203701 (exists!3532 lt!2530169 lambda!419418)))

(declare-fun lt!2530239 () Unit!161780)

(declare-fun choose!53726 (List!68190 List!68189) Unit!161780)

(assert (=> d!2203701 (= lt!2530239 (choose!53726 lt!2530169 s!7408))))

(declare-fun content!13662 (List!68190) (Set Context!13100))

(assert (=> d!2203701 (matchZipper!3094 (content!13662 lt!2530169) s!7408)))

(assert (=> d!2203701 (= (lemmaZipperMatchesExistsMatchingContext!475 lt!2530169 s!7408) lt!2530239)))

(declare-fun bs!1876456 () Bool)

(assert (= bs!1876456 d!2203701))

(declare-fun m!7769192 () Bool)

(assert (=> bs!1876456 m!7769192))

(declare-fun m!7769194 () Bool)

(assert (=> bs!1876456 m!7769194))

(declare-fun m!7769196 () Bool)

(assert (=> bs!1876456 m!7769196))

(assert (=> bs!1876456 m!7769196))

(declare-fun m!7769198 () Bool)

(assert (=> bs!1876456 m!7769198))

(assert (=> b!7052319 d!2203701))

(declare-fun bs!1876459 () Bool)

(declare-fun d!2203705 () Bool)

(assert (= bs!1876459 (and d!2203705 b!7052319)))

(declare-fun lambda!419422 () Int)

(assert (=> bs!1876459 (not (= lambda!419422 lambda!419376))))

(declare-fun bs!1876460 () Bool)

(assert (= bs!1876460 (and d!2203705 d!2203701)))

(assert (=> bs!1876460 (not (= lambda!419422 lambda!419418))))

(assert (=> d!2203705 true))

(declare-fun order!28287 () Int)

(declare-fun dynLambda!27591 (Int Int) Int)

(assert (=> d!2203705 (< (dynLambda!27591 order!28287 lambda!419376) (dynLambda!27591 order!28287 lambda!419422))))

(declare-fun forall!16491 (List!68190 Int) Bool)

(assert (=> d!2203705 (= (exists!3532 lt!2530169 lambda!419376) (not (forall!16491 lt!2530169 lambda!419422)))))

(declare-fun bs!1876461 () Bool)

(assert (= bs!1876461 d!2203705))

(declare-fun m!7769202 () Bool)

(assert (=> bs!1876461 m!7769202))

(assert (=> b!7052319 d!2203705))

(declare-fun d!2203709 () Bool)

(declare-fun e!4239770 () Bool)

(assert (=> d!2203709 e!4239770))

(declare-fun res!2879172 () Bool)

(assert (=> d!2203709 (=> (not res!2879172) (not e!4239770))))

(declare-fun lt!2530242 () List!68190)

(declare-fun noDuplicate!2678 (List!68190) Bool)

(assert (=> d!2203709 (= res!2879172 (noDuplicate!2678 lt!2530242))))

(declare-fun choose!53727 ((Set Context!13100)) List!68190)

(assert (=> d!2203709 (= lt!2530242 (choose!53727 lt!2530166))))

(assert (=> d!2203709 (= (toList!10895 lt!2530166) lt!2530242)))

(declare-fun b!7052442 () Bool)

(assert (=> b!7052442 (= e!4239770 (= (content!13662 lt!2530242) lt!2530166))))

(assert (= (and d!2203709 res!2879172) b!7052442))

(declare-fun m!7769204 () Bool)

(assert (=> d!2203709 m!7769204))

(declare-fun m!7769206 () Bool)

(assert (=> d!2203709 m!7769206))

(declare-fun m!7769208 () Bool)

(assert (=> b!7052442 m!7769208))

(assert (=> b!7052319 d!2203709))

(declare-fun d!2203711 () Bool)

(declare-fun c!1313620 () Bool)

(assert (=> d!2203711 (= c!1313620 (isEmpty!39701 s!7408))))

(declare-fun e!4239771 () Bool)

(assert (=> d!2203711 (= (matchZipper!3094 lt!2530157 s!7408) e!4239771)))

(declare-fun b!7052443 () Bool)

(assert (=> b!7052443 (= e!4239771 (nullableZipper!2644 lt!2530157))))

(declare-fun b!7052444 () Bool)

(assert (=> b!7052444 (= e!4239771 (matchZipper!3094 (derivationStepZipper!3004 lt!2530157 (head!14344 s!7408)) (tail!13673 s!7408)))))

(assert (= (and d!2203711 c!1313620) b!7052443))

(assert (= (and d!2203711 (not c!1313620)) b!7052444))

(assert (=> d!2203711 m!7769126))

(declare-fun m!7769210 () Bool)

(assert (=> b!7052443 m!7769210))

(assert (=> b!7052444 m!7769130))

(assert (=> b!7052444 m!7769130))

(declare-fun m!7769212 () Bool)

(assert (=> b!7052444 m!7769212))

(assert (=> b!7052444 m!7769134))

(assert (=> b!7052444 m!7769212))

(assert (=> b!7052444 m!7769134))

(declare-fun m!7769214 () Bool)

(assert (=> b!7052444 m!7769214))

(assert (=> b!7052319 d!2203711))

(declare-fun d!2203713 () Bool)

(assert (=> d!2203713 (= (isEmpty!39699 (exprs!7050 lt!2530158)) (is-Nil!68064 (exprs!7050 lt!2530158)))))

(assert (=> b!7052328 d!2203713))

(declare-fun bs!1876462 () Bool)

(declare-fun d!2203715 () Bool)

(assert (= bs!1876462 (and d!2203715 b!7052325)))

(declare-fun lambda!419423 () Int)

(assert (=> bs!1876462 (= lambda!419423 lambda!419378)))

(declare-fun bs!1876463 () Bool)

(assert (= bs!1876463 (and d!2203715 d!2203687)))

(assert (=> bs!1876463 (= lambda!419423 lambda!419413)))

(assert (=> d!2203715 (= (inv!86745 setElem!49736) (forall!16490 (exprs!7050 setElem!49736) lambda!419423))))

(declare-fun bs!1876464 () Bool)

(assert (= bs!1876464 d!2203715))

(declare-fun m!7769216 () Bool)

(assert (=> bs!1876464 m!7769216))

(assert (=> setNonEmpty!49736 d!2203715))

(declare-fun b!7052449 () Bool)

(declare-fun e!4239774 () Bool)

(declare-fun tp!1939587 () Bool)

(assert (=> b!7052449 (= e!4239774 (and tp_is_empty!44333 tp!1939587))))

(assert (=> b!7052322 (= tp!1939571 e!4239774)))

(assert (= (and b!7052322 (is-Cons!68065 (t!381968 s!7408))) b!7052449))

(declare-fun b!7052454 () Bool)

(declare-fun e!4239777 () Bool)

(declare-fun tp!1939592 () Bool)

(declare-fun tp!1939593 () Bool)

(assert (=> b!7052454 (= e!4239777 (and tp!1939592 tp!1939593))))

(assert (=> b!7052327 (= tp!1939569 e!4239777)))

(assert (= (and b!7052327 (is-Cons!68064 (exprs!7050 ct2!306))) b!7052454))

(declare-fun condSetEmpty!49742 () Bool)

(assert (=> setNonEmpty!49736 (= condSetEmpty!49742 (= setRest!49736 (as set.empty (Set Context!13100))))))

(declare-fun setRes!49742 () Bool)

(assert (=> setNonEmpty!49736 (= tp!1939570 setRes!49742)))

(declare-fun setIsEmpty!49742 () Bool)

(assert (=> setIsEmpty!49742 setRes!49742))

(declare-fun setElem!49742 () Context!13100)

(declare-fun tp!1939598 () Bool)

(declare-fun e!4239780 () Bool)

(declare-fun setNonEmpty!49742 () Bool)

(assert (=> setNonEmpty!49742 (= setRes!49742 (and tp!1939598 (inv!86745 setElem!49742) e!4239780))))

(declare-fun setRest!49742 () (Set Context!13100))

(assert (=> setNonEmpty!49742 (= setRest!49736 (set.union (set.insert setElem!49742 (as set.empty (Set Context!13100))) setRest!49742))))

(declare-fun b!7052459 () Bool)

(declare-fun tp!1939599 () Bool)

(assert (=> b!7052459 (= e!4239780 tp!1939599)))

(assert (= (and setNonEmpty!49736 condSetEmpty!49742) setIsEmpty!49742))

(assert (= (and setNonEmpty!49736 (not condSetEmpty!49742)) setNonEmpty!49742))

(assert (= setNonEmpty!49742 b!7052459))

(declare-fun m!7769218 () Bool)

(assert (=> setNonEmpty!49742 m!7769218))

(declare-fun b!7052460 () Bool)

(declare-fun e!4239781 () Bool)

(declare-fun tp!1939600 () Bool)

(declare-fun tp!1939601 () Bool)

(assert (=> b!7052460 (= e!4239781 (and tp!1939600 tp!1939601))))

(assert (=> b!7052321 (= tp!1939572 e!4239781)))

(assert (= (and b!7052321 (is-Cons!68064 (exprs!7050 setElem!49736))) b!7052460))

(declare-fun b_lambda!268399 () Bool)

(assert (= b_lambda!268391 (or b!7052320 b_lambda!268399)))

(declare-fun bs!1876465 () Bool)

(declare-fun d!2203717 () Bool)

(assert (= bs!1876465 (and d!2203717 b!7052320)))

(assert (=> bs!1876465 (= (dynLambda!27588 lambda!419379 lt!2530159) (derivationStepZipperUp!2138 lt!2530159 (h!74513 s!7408)))))

(assert (=> bs!1876465 m!7769026))

(assert (=> d!2203675 d!2203717))

(declare-fun b_lambda!268401 () Bool)

(assert (= b_lambda!268397 (or b!7052319 b_lambda!268401)))

(declare-fun bs!1876466 () Bool)

(declare-fun d!2203719 () Bool)

(assert (= bs!1876466 (and d!2203719 b!7052319)))

(assert (=> bs!1876466 (= (dynLambda!27590 lambda!419376 lt!2530233) (matchZipper!3094 (set.insert lt!2530233 (as set.empty (Set Context!13100))) s!7408))))

(declare-fun m!7769220 () Bool)

(assert (=> bs!1876466 m!7769220))

(assert (=> bs!1876466 m!7769220))

(declare-fun m!7769222 () Bool)

(assert (=> bs!1876466 m!7769222))

(assert (=> d!2203697 d!2203719))

(declare-fun b_lambda!268403 () Bool)

(assert (= b_lambda!268395 (or b!7052325 b_lambda!268403)))

(declare-fun bs!1876467 () Bool)

(declare-fun d!2203721 () Bool)

(assert (= bs!1876467 (and d!2203721 b!7052325)))

(declare-fun lt!2530243 () Unit!161780)

(assert (=> bs!1876467 (= lt!2530243 (lemmaConcatPreservesForall!865 (exprs!7050 lt!2530230) (exprs!7050 ct2!306) lambda!419378))))

(assert (=> bs!1876467 (= (dynLambda!27589 lambda!419377 lt!2530230) (Context!13101 (++!15637 (exprs!7050 lt!2530230) (exprs!7050 ct2!306))))))

(declare-fun m!7769224 () Bool)

(assert (=> bs!1876467 m!7769224))

(declare-fun m!7769226 () Bool)

(assert (=> bs!1876467 m!7769226))

(assert (=> d!2203693 d!2203721))

(push 1)

(assert (not d!2203673))

(assert (not d!2203687))

(assert (not bs!1876466))

(assert (not d!2203689))

(assert (not bm!640613))

(assert (not d!2203665))

(assert (not b_lambda!268399))

(assert (not d!2203693))

(assert (not bs!1876465))

(assert (not b!7052444))

(assert (not d!2203671))

(assert (not d!2203701))

(assert (not b!7052398))

(assert (not b!7052389))

(assert (not d!2203709))

(assert (not b!7052397))

(assert (not b_lambda!268401))

(assert (not b!7052423))

(assert (not b!7052443))

(assert (not b!7052454))

(assert (not b!7052459))

(assert (not d!2203683))

(assert (not d!2203675))

(assert (not d!2203697))

(assert (not b!7052460))

(assert (not b!7052442))

(assert (not b!7052391))

(assert (not bs!1876467))

(assert (not d!2203715))

(assert (not d!2203685))

(assert tp_is_empty!44333)

(assert (not b_lambda!268403))

(assert (not d!2203711))

(assert (not b!7052449))

(assert (not setNonEmpty!49742))

(assert (not b!7052424))

(assert (not d!2203705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


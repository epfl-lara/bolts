; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701130 () Bool)

(assert start!701130)

(declare-fun b!7229320 () Bool)

(declare-fun e!4333651 () Bool)

(declare-fun tp_is_empty!46393 () Bool)

(declare-fun tp!2033260 () Bool)

(assert (=> b!7229320 (= e!4333651 (and tp_is_empty!46393 tp!2033260))))

(declare-fun b!7229321 () Bool)

(declare-fun e!4333654 () Bool)

(declare-fun tp!2033258 () Bool)

(assert (=> b!7229321 (= e!4333654 (and tp_is_empty!46393 tp!2033258))))

(declare-fun b!7229322 () Bool)

(declare-fun e!4333650 () Bool)

(declare-fun e!4333652 () Bool)

(assert (=> b!7229322 (= e!4333650 e!4333652)))

(declare-fun res!2933068 () Bool)

(assert (=> b!7229322 (=> (not res!2933068) (not e!4333652))))

(declare-datatypes ((C!37202 0))(
  ( (C!37203 (val!28549 Int)) )
))
(declare-datatypes ((Regex!18464 0))(
  ( (ElementMatch!18464 (c!1341219 C!37202)) (Concat!27309 (regOne!37440 Regex!18464) (regTwo!37440 Regex!18464)) (EmptyExpr!18464) (Star!18464 (reg!18793 Regex!18464)) (EmptyLang!18464) (Union!18464 (regOne!37441 Regex!18464) (regTwo!37441 Regex!18464)) )
))
(declare-datatypes ((List!70016 0))(
  ( (Nil!69892) (Cons!69892 (h!76340 Regex!18464) (t!384065 List!70016)) )
))
(declare-datatypes ((Context!14808 0))(
  ( (Context!14809 (exprs!7904 List!70016)) )
))
(declare-fun ct1!232 () Context!14808)

(declare-fun lambda!438918 () Int)

(declare-fun forall!17292 (List!70016 Int) Bool)

(assert (=> b!7229322 (= res!2933068 (forall!17292 (exprs!7904 ct1!232) lambda!438918))))

(declare-fun res!2933069 () Bool)

(assert (=> start!701130 (=> (not res!2933069) (not e!4333650))))

(declare-datatypes ((List!70017 0))(
  ( (Nil!69893) (Cons!69893 (h!76341 C!37202) (t!384066 List!70017)) )
))
(declare-fun s1!1971 () List!70017)

(declare-fun matchZipper!3374 ((Set Context!14808) List!70017) Bool)

(assert (=> start!701130 (= res!2933069 (matchZipper!3374 (set.insert ct1!232 (as set.empty (Set Context!14808))) s1!1971))))

(assert (=> start!701130 e!4333650))

(declare-fun e!4333653 () Bool)

(declare-fun inv!89171 (Context!14808) Bool)

(assert (=> start!701130 (and (inv!89171 ct1!232) e!4333653)))

(assert (=> start!701130 e!4333651))

(declare-fun ct2!328 () Context!14808)

(declare-fun e!4333655 () Bool)

(assert (=> start!701130 (and (inv!89171 ct2!328) e!4333655)))

(assert (=> start!701130 e!4333654))

(declare-fun b!7229323 () Bool)

(declare-fun tp!2033257 () Bool)

(assert (=> b!7229323 (= e!4333653 tp!2033257)))

(declare-fun b!7229324 () Bool)

(declare-fun tp!2033259 () Bool)

(assert (=> b!7229324 (= e!4333655 tp!2033259)))

(declare-fun b!7229325 () Bool)

(declare-fun res!2933067 () Bool)

(assert (=> b!7229325 (=> (not res!2933067) (not e!4333650))))

(declare-fun s2!1849 () List!70017)

(assert (=> b!7229325 (= res!2933067 (matchZipper!3374 (set.insert ct2!328 (as set.empty (Set Context!14808))) s2!1849))))

(declare-fun b!7229326 () Bool)

(assert (=> b!7229326 (= e!4333652 (not (forall!17292 (exprs!7904 ct2!328) lambda!438918)))))

(assert (= (and start!701130 res!2933069) b!7229325))

(assert (= (and b!7229325 res!2933067) b!7229322))

(assert (= (and b!7229322 res!2933068) b!7229326))

(assert (= start!701130 b!7229323))

(assert (= (and start!701130 (is-Cons!69893 s1!1971)) b!7229320))

(assert (= start!701130 b!7229324))

(assert (= (and start!701130 (is-Cons!69893 s2!1849)) b!7229321))

(declare-fun m!7897366 () Bool)

(assert (=> b!7229322 m!7897366))

(declare-fun m!7897368 () Bool)

(assert (=> start!701130 m!7897368))

(assert (=> start!701130 m!7897368))

(declare-fun m!7897370 () Bool)

(assert (=> start!701130 m!7897370))

(declare-fun m!7897372 () Bool)

(assert (=> start!701130 m!7897372))

(declare-fun m!7897374 () Bool)

(assert (=> start!701130 m!7897374))

(declare-fun m!7897376 () Bool)

(assert (=> b!7229325 m!7897376))

(assert (=> b!7229325 m!7897376))

(declare-fun m!7897378 () Bool)

(assert (=> b!7229325 m!7897378))

(declare-fun m!7897380 () Bool)

(assert (=> b!7229326 m!7897380))

(push 1)

(assert (not b!7229321))

(assert (not b!7229324))

(assert (not b!7229323))

(assert (not b!7229322))

(assert (not b!7229326))

(assert (not b!7229320))

(assert tp_is_empty!46393)

(assert (not b!7229325))

(assert (not start!701130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245101 () Bool)

(declare-fun res!2933083 () Bool)

(declare-fun e!4333678 () Bool)

(assert (=> d!2245101 (=> res!2933083 e!4333678)))

(assert (=> d!2245101 (= res!2933083 (is-Nil!69892 (exprs!7904 ct2!328)))))

(assert (=> d!2245101 (= (forall!17292 (exprs!7904 ct2!328) lambda!438918) e!4333678)))

(declare-fun b!7229352 () Bool)

(declare-fun e!4333679 () Bool)

(assert (=> b!7229352 (= e!4333678 e!4333679)))

(declare-fun res!2933084 () Bool)

(assert (=> b!7229352 (=> (not res!2933084) (not e!4333679))))

(declare-fun dynLambda!28488 (Int Regex!18464) Bool)

(assert (=> b!7229352 (= res!2933084 (dynLambda!28488 lambda!438918 (h!76340 (exprs!7904 ct2!328))))))

(declare-fun b!7229353 () Bool)

(assert (=> b!7229353 (= e!4333679 (forall!17292 (t!384065 (exprs!7904 ct2!328)) lambda!438918))))

(assert (= (and d!2245101 (not res!2933083)) b!7229352))

(assert (= (and b!7229352 res!2933084) b!7229353))

(declare-fun b_lambda!276931 () Bool)

(assert (=> (not b_lambda!276931) (not b!7229352)))

(declare-fun m!7897398 () Bool)

(assert (=> b!7229352 m!7897398))

(declare-fun m!7897400 () Bool)

(assert (=> b!7229353 m!7897400))

(assert (=> b!7229326 d!2245101))

(declare-fun d!2245103 () Bool)

(declare-fun res!2933085 () Bool)

(declare-fun e!4333680 () Bool)

(assert (=> d!2245103 (=> res!2933085 e!4333680)))

(assert (=> d!2245103 (= res!2933085 (is-Nil!69892 (exprs!7904 ct1!232)))))

(assert (=> d!2245103 (= (forall!17292 (exprs!7904 ct1!232) lambda!438918) e!4333680)))

(declare-fun b!7229354 () Bool)

(declare-fun e!4333681 () Bool)

(assert (=> b!7229354 (= e!4333680 e!4333681)))

(declare-fun res!2933086 () Bool)

(assert (=> b!7229354 (=> (not res!2933086) (not e!4333681))))

(assert (=> b!7229354 (= res!2933086 (dynLambda!28488 lambda!438918 (h!76340 (exprs!7904 ct1!232))))))

(declare-fun b!7229355 () Bool)

(assert (=> b!7229355 (= e!4333681 (forall!17292 (t!384065 (exprs!7904 ct1!232)) lambda!438918))))

(assert (= (and d!2245103 (not res!2933085)) b!7229354))

(assert (= (and b!7229354 res!2933086) b!7229355))

(declare-fun b_lambda!276933 () Bool)

(assert (=> (not b_lambda!276933) (not b!7229354)))

(declare-fun m!7897402 () Bool)

(assert (=> b!7229354 m!7897402))

(declare-fun m!7897404 () Bool)

(assert (=> b!7229355 m!7897404))

(assert (=> b!7229322 d!2245103))

(declare-fun d!2245107 () Bool)

(declare-fun c!1341223 () Bool)

(declare-fun isEmpty!40300 (List!70017) Bool)

(assert (=> d!2245107 (= c!1341223 (isEmpty!40300 s2!1849))))

(declare-fun e!4333688 () Bool)

(assert (=> d!2245107 (= (matchZipper!3374 (set.insert ct2!328 (as set.empty (Set Context!14808))) s2!1849) e!4333688)))

(declare-fun b!7229364 () Bool)

(declare-fun nullableZipper!2791 ((Set Context!14808)) Bool)

(assert (=> b!7229364 (= e!4333688 (nullableZipper!2791 (set.insert ct2!328 (as set.empty (Set Context!14808)))))))

(declare-fun b!7229365 () Bool)

(declare-fun derivationStepZipper!3260 ((Set Context!14808) C!37202) (Set Context!14808))

(declare-fun head!14777 (List!70017) C!37202)

(declare-fun tail!14092 (List!70017) List!70017)

(assert (=> b!7229365 (= e!4333688 (matchZipper!3374 (derivationStepZipper!3260 (set.insert ct2!328 (as set.empty (Set Context!14808))) (head!14777 s2!1849)) (tail!14092 s2!1849)))))

(assert (= (and d!2245107 c!1341223) b!7229364))

(assert (= (and d!2245107 (not c!1341223)) b!7229365))

(declare-fun m!7897406 () Bool)

(assert (=> d!2245107 m!7897406))

(assert (=> b!7229364 m!7897376))

(declare-fun m!7897408 () Bool)

(assert (=> b!7229364 m!7897408))

(declare-fun m!7897410 () Bool)

(assert (=> b!7229365 m!7897410))

(assert (=> b!7229365 m!7897376))

(assert (=> b!7229365 m!7897410))

(declare-fun m!7897412 () Bool)

(assert (=> b!7229365 m!7897412))

(declare-fun m!7897414 () Bool)

(assert (=> b!7229365 m!7897414))

(assert (=> b!7229365 m!7897412))

(assert (=> b!7229365 m!7897414))

(declare-fun m!7897416 () Bool)

(assert (=> b!7229365 m!7897416))

(assert (=> b!7229325 d!2245107))

(declare-fun d!2245109 () Bool)

(declare-fun c!1341224 () Bool)

(assert (=> d!2245109 (= c!1341224 (isEmpty!40300 s1!1971))))

(declare-fun e!4333689 () Bool)

(assert (=> d!2245109 (= (matchZipper!3374 (set.insert ct1!232 (as set.empty (Set Context!14808))) s1!1971) e!4333689)))

(declare-fun b!7229366 () Bool)

(assert (=> b!7229366 (= e!4333689 (nullableZipper!2791 (set.insert ct1!232 (as set.empty (Set Context!14808)))))))

(declare-fun b!7229367 () Bool)

(assert (=> b!7229367 (= e!4333689 (matchZipper!3374 (derivationStepZipper!3260 (set.insert ct1!232 (as set.empty (Set Context!14808))) (head!14777 s1!1971)) (tail!14092 s1!1971)))))

(assert (= (and d!2245109 c!1341224) b!7229366))

(assert (= (and d!2245109 (not c!1341224)) b!7229367))

(declare-fun m!7897418 () Bool)

(assert (=> d!2245109 m!7897418))

(assert (=> b!7229366 m!7897368))

(declare-fun m!7897420 () Bool)

(assert (=> b!7229366 m!7897420))

(declare-fun m!7897422 () Bool)

(assert (=> b!7229367 m!7897422))

(assert (=> b!7229367 m!7897368))

(assert (=> b!7229367 m!7897422))

(declare-fun m!7897424 () Bool)

(assert (=> b!7229367 m!7897424))

(declare-fun m!7897426 () Bool)

(assert (=> b!7229367 m!7897426))

(assert (=> b!7229367 m!7897424))

(assert (=> b!7229367 m!7897426))

(declare-fun m!7897428 () Bool)

(assert (=> b!7229367 m!7897428))

(assert (=> start!701130 d!2245109))

(declare-fun bs!1902269 () Bool)

(declare-fun d!2245111 () Bool)

(assert (= bs!1902269 (and d!2245111 b!7229322)))

(declare-fun lambda!438924 () Int)

(assert (=> bs!1902269 (= lambda!438924 lambda!438918)))

(assert (=> d!2245111 (= (inv!89171 ct1!232) (forall!17292 (exprs!7904 ct1!232) lambda!438924))))

(declare-fun bs!1902270 () Bool)

(assert (= bs!1902270 d!2245111))

(declare-fun m!7897434 () Bool)

(assert (=> bs!1902270 m!7897434))

(assert (=> start!701130 d!2245111))

(declare-fun bs!1902271 () Bool)

(declare-fun d!2245115 () Bool)

(assert (= bs!1902271 (and d!2245115 b!7229322)))

(declare-fun lambda!438925 () Int)

(assert (=> bs!1902271 (= lambda!438925 lambda!438918)))

(declare-fun bs!1902272 () Bool)

(assert (= bs!1902272 (and d!2245115 d!2245111)))

(assert (=> bs!1902272 (= lambda!438925 lambda!438924)))

(assert (=> d!2245115 (= (inv!89171 ct2!328) (forall!17292 (exprs!7904 ct2!328) lambda!438925))))

(declare-fun bs!1902273 () Bool)

(assert (= bs!1902273 d!2245115))

(declare-fun m!7897436 () Bool)

(assert (=> bs!1902273 m!7897436))

(assert (=> start!701130 d!2245115))

(declare-fun b!7229374 () Bool)

(declare-fun e!4333694 () Bool)

(declare-fun tp!2033275 () Bool)

(assert (=> b!7229374 (= e!4333694 (and tp_is_empty!46393 tp!2033275))))

(assert (=> b!7229321 (= tp!2033258 e!4333694)))

(assert (= (and b!7229321 (is-Cons!69893 (t!384066 s2!1849))) b!7229374))

(declare-fun b!7229379 () Bool)

(declare-fun e!4333697 () Bool)

(declare-fun tp!2033280 () Bool)

(declare-fun tp!2033281 () Bool)

(assert (=> b!7229379 (= e!4333697 (and tp!2033280 tp!2033281))))

(assert (=> b!7229323 (= tp!2033257 e!4333697)))

(assert (= (and b!7229323 (is-Cons!69892 (exprs!7904 ct1!232))) b!7229379))

(declare-fun b!7229380 () Bool)

(declare-fun e!4333698 () Bool)

(declare-fun tp!2033282 () Bool)

(declare-fun tp!2033283 () Bool)

(assert (=> b!7229380 (= e!4333698 (and tp!2033282 tp!2033283))))

(assert (=> b!7229324 (= tp!2033259 e!4333698)))

(assert (= (and b!7229324 (is-Cons!69892 (exprs!7904 ct2!328))) b!7229380))

(declare-fun b!7229381 () Bool)

(declare-fun e!4333699 () Bool)

(declare-fun tp!2033284 () Bool)

(assert (=> b!7229381 (= e!4333699 (and tp_is_empty!46393 tp!2033284))))

(assert (=> b!7229320 (= tp!2033260 e!4333699)))

(assert (= (and b!7229320 (is-Cons!69893 (t!384066 s1!1971))) b!7229381))

(declare-fun b_lambda!276937 () Bool)

(assert (= b_lambda!276933 (or b!7229322 b_lambda!276937)))

(declare-fun bs!1902274 () Bool)

(declare-fun d!2245117 () Bool)

(assert (= bs!1902274 (and d!2245117 b!7229322)))

(declare-fun validRegex!9498 (Regex!18464) Bool)

(assert (=> bs!1902274 (= (dynLambda!28488 lambda!438918 (h!76340 (exprs!7904 ct1!232))) (validRegex!9498 (h!76340 (exprs!7904 ct1!232))))))

(declare-fun m!7897438 () Bool)

(assert (=> bs!1902274 m!7897438))

(assert (=> b!7229354 d!2245117))

(declare-fun b_lambda!276939 () Bool)

(assert (= b_lambda!276931 (or b!7229322 b_lambda!276939)))

(declare-fun bs!1902275 () Bool)

(declare-fun d!2245119 () Bool)

(assert (= bs!1902275 (and d!2245119 b!7229322)))

(assert (=> bs!1902275 (= (dynLambda!28488 lambda!438918 (h!76340 (exprs!7904 ct2!328))) (validRegex!9498 (h!76340 (exprs!7904 ct2!328))))))

(declare-fun m!7897440 () Bool)

(assert (=> bs!1902275 m!7897440))

(assert (=> b!7229352 d!2245119))

(push 1)

(assert (not b_lambda!276939))

(assert (not b!7229365))

(assert (not d!2245107))

(assert (not bs!1902274))

(assert (not b_lambda!276937))

(assert (not d!2245111))

(assert (not d!2245115))

(assert (not b!7229380))

(assert (not b!7229374))

(assert (not bs!1902275))

(assert (not b!7229379))

(assert (not b!7229353))

(assert (not b!7229364))

(assert (not d!2245109))

(assert (not b!7229366))

(assert (not b!7229367))

(assert (not b!7229381))

(assert (not b!7229355))

(assert tp_is_empty!46393)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542230 () Bool)

(assert start!542230)

(declare-fun bs!1195537 () Bool)

(declare-fun b!5129877 () Bool)

(declare-fun b!5129880 () Bool)

(assert (= bs!1195537 (and b!5129877 b!5129880)))

(declare-fun lambda!253341 () Int)

(declare-fun lambda!253340 () Int)

(assert (=> bs!1195537 (not (= lambda!253341 lambda!253340))))

(declare-fun bs!1195538 () Bool)

(declare-fun b!5129882 () Bool)

(assert (= bs!1195538 (and b!5129882 b!5129880)))

(declare-fun lambda!253342 () Int)

(assert (=> bs!1195538 (not (= lambda!253342 lambda!253340))))

(declare-fun bs!1195539 () Bool)

(assert (= bs!1195539 (and b!5129882 b!5129877)))

(assert (=> bs!1195539 (not (= lambda!253342 lambda!253341))))

(declare-fun bs!1195540 () Bool)

(declare-fun b!5129881 () Bool)

(declare-fun b!5129878 () Bool)

(assert (= bs!1195540 (and b!5129881 b!5129878)))

(declare-fun lambda!253343 () Int)

(declare-fun lambda!253339 () Int)

(assert (=> bs!1195540 (not (= lambda!253343 lambda!253339))))

(declare-fun b!5129874 () Bool)

(declare-fun e!3199373 () Bool)

(declare-fun e!3199378 () Bool)

(assert (=> b!5129874 (= e!3199373 e!3199378)))

(declare-fun res!2184534 () Bool)

(assert (=> b!5129874 (=> (not res!2184534) (not e!3199378))))

(declare-datatypes ((C!28906 0))(
  ( (C!28907 (val!24105 Int)) )
))
(declare-datatypes ((Regex!14320 0))(
  ( (ElementMatch!14320 (c!882287 C!28906)) (Concat!23165 (regOne!29152 Regex!14320) (regTwo!29152 Regex!14320)) (EmptyExpr!14320) (Star!14320 (reg!14649 Regex!14320)) (EmptyLang!14320) (Union!14320 (regOne!29153 Regex!14320) (regTwo!29153 Regex!14320)) )
))
(declare-datatypes ((List!59568 0))(
  ( (Nil!59444) (Cons!59444 (h!65892 Regex!14320) (t!372595 List!59568)) )
))
(declare-datatypes ((Context!7408 0))(
  ( (Context!7409 (exprs!4204 List!59568)) )
))
(declare-fun lt!2116013 () Context!7408)

(declare-fun nullableContext!39 (Context!7408) Bool)

(assert (=> b!5129874 (= res!2184534 (nullableContext!39 lt!2116013))))

(declare-fun z!1113 () (Set Context!7408))

(declare-fun getWitness!767 ((Set Context!7408) Int) Context!7408)

(assert (=> b!5129874 (= lt!2116013 (getWitness!767 z!1113 lambda!253339))))

(declare-fun b!5129875 () Bool)

(declare-fun res!2184530 () Bool)

(declare-fun e!3199377 () Bool)

(assert (=> b!5129875 (=> res!2184530 e!3199377)))

(declare-fun lostCauseZipper!1164 ((Set Context!7408)) Bool)

(assert (=> b!5129875 (= res!2184530 (not (lostCauseZipper!1164 z!1113)))))

(declare-fun setIsEmpty!30989 () Bool)

(declare-fun setRes!30989 () Bool)

(assert (=> setIsEmpty!30989 setRes!30989))

(declare-fun b!5129876 () Bool)

(declare-fun e!3199376 () Bool)

(assert (=> b!5129876 (= e!3199376 false)))

(declare-fun e!3199379 () Bool)

(declare-fun setNonEmpty!30989 () Bool)

(declare-fun setElem!30989 () Context!7408)

(declare-fun tp!1431162 () Bool)

(declare-fun inv!78982 (Context!7408) Bool)

(assert (=> setNonEmpty!30989 (= setRes!30989 (and tp!1431162 (inv!78982 setElem!30989) e!3199379))))

(declare-fun setRest!30989 () (Set Context!7408))

(assert (=> setNonEmpty!30989 (= z!1113 (set.union (set.insert setElem!30989 (as set.empty (Set Context!7408))) setRest!30989))))

(declare-fun res!2184527 () Bool)

(declare-fun e!3199374 () Bool)

(assert (=> b!5129877 (=> res!2184527 e!3199374)))

(declare-fun forall!13725 (List!59568 Int) Bool)

(assert (=> b!5129877 (= res!2184527 (not (forall!13725 (exprs!4204 lt!2116013) lambda!253341)))))

(declare-fun res!2184529 () Bool)

(assert (=> b!5129878 (=> (not res!2184529) (not e!3199373))))

(declare-fun exists!1610 ((Set Context!7408) Int) Bool)

(assert (=> b!5129878 (= res!2184529 (exists!1610 z!1113 lambda!253339))))

(declare-fun res!2184528 () Bool)

(assert (=> start!542230 (=> (not res!2184528) (not e!3199373))))

(declare-fun nullableZipper!1105 ((Set Context!7408)) Bool)

(assert (=> start!542230 (= res!2184528 (nullableZipper!1105 z!1113))))

(assert (=> start!542230 e!3199373))

(declare-fun condSetEmpty!30989 () Bool)

(assert (=> start!542230 (= condSetEmpty!30989 (= z!1113 (as set.empty (Set Context!7408))))))

(assert (=> start!542230 setRes!30989))

(declare-fun b!5129879 () Bool)

(declare-datatypes ((Unit!150676 0))(
  ( (Unit!150677) )
))
(declare-fun e!3199375 () Unit!150676)

(declare-fun Unit!150678 () Unit!150676)

(assert (=> b!5129879 (= e!3199375 Unit!150678)))

(assert (=> b!5129880 (= e!3199378 (not e!3199374))))

(declare-fun res!2184536 () Bool)

(assert (=> b!5129880 (=> res!2184536 e!3199374)))

(assert (=> b!5129880 (= res!2184536 (not (set.member lt!2116013 z!1113)))))

(assert (=> b!5129880 (forall!13725 (exprs!4204 lt!2116013) lambda!253340)))

(declare-fun lt!2116020 () Unit!150676)

(declare-fun lemmaContextForallValidExprs!35 (Context!7408 List!59568) Unit!150676)

(assert (=> b!5129880 (= lt!2116020 (lemmaContextForallValidExprs!35 lt!2116013 (exprs!4204 lt!2116013)))))

(declare-fun res!2184533 () Bool)

(assert (=> b!5129881 (=> res!2184533 e!3199377)))

(declare-fun forall!13726 ((Set Context!7408) Int) Bool)

(assert (=> b!5129881 (= res!2184533 (not (forall!13726 z!1113 lambda!253343)))))

(declare-fun Unit!150679 () Unit!150676)

(assert (=> b!5129882 (= e!3199375 Unit!150679)))

(declare-fun lt!2116015 () Regex!14320)

(declare-fun getWitness!768 (List!59568 Int) Regex!14320)

(assert (=> b!5129882 (= lt!2116015 (getWitness!768 (exprs!4204 lt!2116013) lambda!253342))))

(declare-fun lt!2116019 () Unit!150676)

(declare-fun forallContained!4608 (List!59568 Int Regex!14320) Unit!150676)

(assert (=> b!5129882 (= lt!2116019 (forallContained!4608 (exprs!4204 lt!2116013) lambda!253341 lt!2116015))))

(declare-fun lt!2116017 () Unit!150676)

(assert (=> b!5129882 (= lt!2116017 (forallContained!4608 (exprs!4204 lt!2116013) lambda!253340 lt!2116015))))

(declare-fun lt!2116014 () Unit!150676)

(declare-fun lemmaNullableThenNotLostCause!27 (Regex!14320) Unit!150676)

(assert (=> b!5129882 (= lt!2116014 (lemmaNullableThenNotLostCause!27 lt!2116015))))

(declare-fun res!2184531 () Bool)

(declare-fun lostCause!1271 (Regex!14320) Bool)

(assert (=> b!5129882 (= res!2184531 (not (lostCause!1271 lt!2116015)))))

(assert (=> b!5129882 (=> (not res!2184531) (not e!3199376))))

(assert (=> b!5129882 e!3199376))

(declare-fun b!5129883 () Bool)

(declare-fun e!3199372 () Bool)

(assert (=> b!5129883 (= e!3199377 e!3199372)))

(declare-fun res!2184532 () Bool)

(assert (=> b!5129883 (=> res!2184532 e!3199372)))

(declare-datatypes ((List!59569 0))(
  ( (Nil!59445) (Cons!59445 (h!65893 Context!7408) (t!372596 List!59569)) )
))
(declare-fun lt!2116012 () List!59569)

(declare-fun forall!13727 (List!59569 Int) Bool)

(assert (=> b!5129883 (= res!2184532 (not (forall!13727 lt!2116012 lambda!253343)))))

(declare-fun toList!8312 ((Set Context!7408)) List!59569)

(assert (=> b!5129883 (= lt!2116012 (toList!8312 z!1113))))

(declare-fun b!5129884 () Bool)

(assert (=> b!5129884 (= e!3199374 e!3199377)))

(declare-fun res!2184535 () Bool)

(assert (=> b!5129884 (=> res!2184535 e!3199377)))

(declare-fun lt!2116016 () Bool)

(assert (=> b!5129884 (= res!2184535 lt!2116016)))

(declare-fun lt!2116018 () Unit!150676)

(assert (=> b!5129884 (= lt!2116018 e!3199375)))

(declare-fun c!882286 () Bool)

(assert (=> b!5129884 (= c!882286 lt!2116016)))

(declare-fun lostCause!1272 (Context!7408) Bool)

(assert (=> b!5129884 (= lt!2116016 (lostCause!1272 lt!2116013))))

(declare-fun b!5129885 () Bool)

(declare-fun tp!1431163 () Bool)

(assert (=> b!5129885 (= e!3199379 tp!1431163)))

(declare-fun b!5129886 () Bool)

(assert (=> b!5129886 (= e!3199372 false)))

(declare-fun lt!2116011 () Unit!150676)

(declare-fun forallContained!4609 (List!59569 Int Context!7408) Unit!150676)

(assert (=> b!5129886 (= lt!2116011 (forallContained!4609 lt!2116012 lambda!253343 lt!2116013))))

(assert (= (and start!542230 res!2184528) b!5129878))

(assert (= (and b!5129878 res!2184529) b!5129874))

(assert (= (and b!5129874 res!2184534) b!5129880))

(assert (= (and b!5129880 (not res!2184536)) b!5129877))

(assert (= (and b!5129877 (not res!2184527)) b!5129884))

(assert (= (and b!5129884 c!882286) b!5129882))

(assert (= (and b!5129884 (not c!882286)) b!5129879))

(assert (= (and b!5129882 res!2184531) b!5129876))

(assert (= (and b!5129884 (not res!2184535)) b!5129875))

(assert (= (and b!5129875 (not res!2184530)) b!5129881))

(assert (= (and b!5129881 (not res!2184533)) b!5129883))

(assert (= (and b!5129883 (not res!2184532)) b!5129886))

(assert (= (and start!542230 condSetEmpty!30989) setIsEmpty!30989))

(assert (= (and start!542230 (not condSetEmpty!30989)) setNonEmpty!30989))

(assert (= setNonEmpty!30989 b!5129885))

(declare-fun m!6194550 () Bool)

(assert (=> b!5129881 m!6194550))

(declare-fun m!6194552 () Bool)

(assert (=> b!5129886 m!6194552))

(declare-fun m!6194554 () Bool)

(assert (=> b!5129875 m!6194554))

(declare-fun m!6194556 () Bool)

(assert (=> b!5129883 m!6194556))

(declare-fun m!6194558 () Bool)

(assert (=> b!5129883 m!6194558))

(declare-fun m!6194560 () Bool)

(assert (=> b!5129880 m!6194560))

(declare-fun m!6194562 () Bool)

(assert (=> b!5129880 m!6194562))

(declare-fun m!6194564 () Bool)

(assert (=> b!5129880 m!6194564))

(declare-fun m!6194566 () Bool)

(assert (=> b!5129877 m!6194566))

(declare-fun m!6194568 () Bool)

(assert (=> setNonEmpty!30989 m!6194568))

(declare-fun m!6194570 () Bool)

(assert (=> b!5129882 m!6194570))

(declare-fun m!6194572 () Bool)

(assert (=> b!5129882 m!6194572))

(declare-fun m!6194574 () Bool)

(assert (=> b!5129882 m!6194574))

(declare-fun m!6194576 () Bool)

(assert (=> b!5129882 m!6194576))

(declare-fun m!6194578 () Bool)

(assert (=> b!5129882 m!6194578))

(declare-fun m!6194580 () Bool)

(assert (=> b!5129884 m!6194580))

(declare-fun m!6194582 () Bool)

(assert (=> b!5129878 m!6194582))

(declare-fun m!6194584 () Bool)

(assert (=> b!5129874 m!6194584))

(declare-fun m!6194586 () Bool)

(assert (=> b!5129874 m!6194586))

(declare-fun m!6194588 () Bool)

(assert (=> start!542230 m!6194588))

(push 1)

(assert (not b!5129883))

(assert (not b!5129886))

(assert (not b!5129880))

(assert (not b!5129885))

(assert (not setNonEmpty!30989))

(assert (not b!5129875))

(assert (not b!5129884))

(assert (not b!5129882))

(assert (not b!5129874))

(assert (not b!5129878))

(assert (not b!5129881))

(assert (not start!542230))

(assert (not b!5129877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1659626 () Bool)

(declare-fun res!2184571 () Bool)

(declare-fun e!3199408 () Bool)

(assert (=> d!1659626 (=> res!2184571 e!3199408)))

(assert (=> d!1659626 (= res!2184571 (is-Nil!59444 (exprs!4204 lt!2116013)))))

(assert (=> d!1659626 (= (forall!13725 (exprs!4204 lt!2116013) lambda!253340) e!3199408)))

(declare-fun b!5129930 () Bool)

(declare-fun e!3199409 () Bool)

(assert (=> b!5129930 (= e!3199408 e!3199409)))

(declare-fun res!2184572 () Bool)

(assert (=> b!5129930 (=> (not res!2184572) (not e!3199409))))

(declare-fun dynLambda!23669 (Int Regex!14320) Bool)

(assert (=> b!5129930 (= res!2184572 (dynLambda!23669 lambda!253340 (h!65892 (exprs!4204 lt!2116013))))))

(declare-fun b!5129931 () Bool)

(assert (=> b!5129931 (= e!3199409 (forall!13725 (t!372595 (exprs!4204 lt!2116013)) lambda!253340))))

(assert (= (and d!1659626 (not res!2184571)) b!5129930))

(assert (= (and b!5129930 res!2184572) b!5129931))

(declare-fun b_lambda!199533 () Bool)

(assert (=> (not b_lambda!199533) (not b!5129930)))

(declare-fun m!6194630 () Bool)

(assert (=> b!5129930 m!6194630))

(declare-fun m!6194632 () Bool)

(assert (=> b!5129931 m!6194632))

(assert (=> b!5129880 d!1659626))

(declare-fun bs!1195545 () Bool)

(declare-fun d!1659628 () Bool)

(assert (= bs!1195545 (and d!1659628 b!5129880)))

(declare-fun lambda!253371 () Int)

(assert (=> bs!1195545 (= lambda!253371 lambda!253340)))

(declare-fun bs!1195546 () Bool)

(assert (= bs!1195546 (and d!1659628 b!5129877)))

(assert (=> bs!1195546 (not (= lambda!253371 lambda!253341))))

(declare-fun bs!1195547 () Bool)

(assert (= bs!1195547 (and d!1659628 b!5129882)))

(assert (=> bs!1195547 (not (= lambda!253371 lambda!253342))))

(assert (=> d!1659628 (forall!13725 (exprs!4204 lt!2116013) lambda!253371)))

(declare-fun lt!2116053 () Unit!150676)

(declare-fun choose!37834 (Context!7408 List!59568) Unit!150676)

(assert (=> d!1659628 (= lt!2116053 (choose!37834 lt!2116013 (exprs!4204 lt!2116013)))))

(assert (=> d!1659628 (= (exprs!4204 lt!2116013) (exprs!4204 lt!2116013))))

(assert (=> d!1659628 (= (lemmaContextForallValidExprs!35 lt!2116013 (exprs!4204 lt!2116013)) lt!2116053)))

(declare-fun bs!1195548 () Bool)

(assert (= bs!1195548 d!1659628))

(declare-fun m!6194634 () Bool)

(assert (=> bs!1195548 m!6194634))

(declare-fun m!6194636 () Bool)

(assert (=> bs!1195548 m!6194636))

(assert (=> b!5129880 d!1659628))

(declare-fun bs!1195549 () Bool)

(declare-fun d!1659630 () Bool)

(assert (= bs!1195549 (and d!1659630 b!5129878)))

(declare-fun lambda!253374 () Int)

(assert (=> bs!1195549 (= lambda!253374 lambda!253339)))

(declare-fun bs!1195550 () Bool)

(assert (= bs!1195550 (and d!1659630 b!5129881)))

(assert (=> bs!1195550 (not (= lambda!253374 lambda!253343))))

(assert (=> d!1659630 (= (nullableZipper!1105 z!1113) (exists!1610 z!1113 lambda!253374))))

(declare-fun bs!1195551 () Bool)

(assert (= bs!1195551 d!1659630))

(declare-fun m!6194638 () Bool)

(assert (=> bs!1195551 m!6194638))

(assert (=> start!542230 d!1659630))

(declare-fun bs!1195552 () Bool)

(declare-fun d!1659632 () Bool)

(assert (= bs!1195552 (and d!1659632 b!5129880)))

(declare-fun lambda!253377 () Int)

(assert (=> bs!1195552 (= lambda!253377 lambda!253340)))

(declare-fun bs!1195553 () Bool)

(assert (= bs!1195553 (and d!1659632 b!5129877)))

(assert (=> bs!1195553 (not (= lambda!253377 lambda!253341))))

(declare-fun bs!1195554 () Bool)

(assert (= bs!1195554 (and d!1659632 b!5129882)))

(assert (=> bs!1195554 (not (= lambda!253377 lambda!253342))))

(declare-fun bs!1195555 () Bool)

(assert (= bs!1195555 (and d!1659632 d!1659628)))

(assert (=> bs!1195555 (= lambda!253377 lambda!253371)))

(assert (=> d!1659632 (= (inv!78982 setElem!30989) (forall!13725 (exprs!4204 setElem!30989) lambda!253377))))

(declare-fun bs!1195556 () Bool)

(assert (= bs!1195556 d!1659632))

(declare-fun m!6194640 () Bool)

(assert (=> bs!1195556 m!6194640))

(assert (=> setNonEmpty!30989 d!1659632))

(declare-fun d!1659634 () Bool)

(declare-fun lt!2116056 () Bool)

(declare-fun exists!1612 (List!59569 Int) Bool)

(assert (=> d!1659634 (= lt!2116056 (exists!1612 (toList!8312 z!1113) lambda!253339))))

(declare-fun choose!37835 ((Set Context!7408) Int) Bool)

(assert (=> d!1659634 (= lt!2116056 (choose!37835 z!1113 lambda!253339))))

(assert (=> d!1659634 (= (exists!1610 z!1113 lambda!253339) lt!2116056)))

(declare-fun bs!1195557 () Bool)

(assert (= bs!1195557 d!1659634))

(assert (=> bs!1195557 m!6194558))

(assert (=> bs!1195557 m!6194558))

(declare-fun m!6194642 () Bool)

(assert (=> bs!1195557 m!6194642))

(declare-fun m!6194644 () Bool)

(assert (=> bs!1195557 m!6194644))

(assert (=> b!5129878 d!1659634))

(declare-fun d!1659636 () Bool)

(declare-fun res!2184573 () Bool)

(declare-fun e!3199410 () Bool)

(assert (=> d!1659636 (=> res!2184573 e!3199410)))

(assert (=> d!1659636 (= res!2184573 (is-Nil!59444 (exprs!4204 lt!2116013)))))

(assert (=> d!1659636 (= (forall!13725 (exprs!4204 lt!2116013) lambda!253341) e!3199410)))

(declare-fun b!5129932 () Bool)

(declare-fun e!3199411 () Bool)

(assert (=> b!5129932 (= e!3199410 e!3199411)))

(declare-fun res!2184574 () Bool)

(assert (=> b!5129932 (=> (not res!2184574) (not e!3199411))))

(assert (=> b!5129932 (= res!2184574 (dynLambda!23669 lambda!253341 (h!65892 (exprs!4204 lt!2116013))))))

(declare-fun b!5129933 () Bool)

(assert (=> b!5129933 (= e!3199411 (forall!13725 (t!372595 (exprs!4204 lt!2116013)) lambda!253341))))

(assert (= (and d!1659636 (not res!2184573)) b!5129932))

(assert (= (and b!5129932 res!2184574) b!5129933))

(declare-fun b_lambda!199535 () Bool)

(assert (=> (not b_lambda!199535) (not b!5129932)))

(declare-fun m!6194646 () Bool)

(assert (=> b!5129932 m!6194646))

(declare-fun m!6194648 () Bool)

(assert (=> b!5129933 m!6194648))

(assert (=> b!5129877 d!1659636))

(declare-fun bs!1195558 () Bool)

(declare-fun d!1659638 () Bool)

(assert (= bs!1195558 (and d!1659638 b!5129878)))

(declare-fun lambda!253390 () Int)

(assert (=> bs!1195558 (not (= lambda!253390 lambda!253339))))

(declare-fun bs!1195559 () Bool)

(assert (= bs!1195559 (and d!1659638 b!5129881)))

(assert (=> bs!1195559 (= lambda!253390 lambda!253343)))

(declare-fun bs!1195560 () Bool)

(assert (= bs!1195560 (and d!1659638 d!1659630)))

(assert (=> bs!1195560 (not (= lambda!253390 lambda!253374))))

(declare-fun bs!1195561 () Bool)

(declare-fun b!5129938 () Bool)

(assert (= bs!1195561 (and b!5129938 b!5129878)))

(declare-fun lambda!253391 () Int)

(assert (=> bs!1195561 (not (= lambda!253391 lambda!253339))))

(declare-fun bs!1195562 () Bool)

(assert (= bs!1195562 (and b!5129938 b!5129881)))

(assert (=> bs!1195562 (not (= lambda!253391 lambda!253343))))

(declare-fun bs!1195563 () Bool)

(assert (= bs!1195563 (and b!5129938 d!1659630)))

(assert (=> bs!1195563 (not (= lambda!253391 lambda!253374))))

(declare-fun bs!1195564 () Bool)

(assert (= bs!1195564 (and b!5129938 d!1659638)))

(assert (=> bs!1195564 (not (= lambda!253391 lambda!253390))))

(declare-fun bs!1195565 () Bool)

(declare-fun b!5129939 () Bool)

(assert (= bs!1195565 (and b!5129939 d!1659638)))

(declare-fun lambda!253392 () Int)

(assert (=> bs!1195565 (not (= lambda!253392 lambda!253390))))

(declare-fun bs!1195566 () Bool)

(assert (= bs!1195566 (and b!5129939 b!5129878)))

(assert (=> bs!1195566 (not (= lambda!253392 lambda!253339))))

(declare-fun bs!1195567 () Bool)

(assert (= bs!1195567 (and b!5129939 b!5129881)))

(assert (=> bs!1195567 (not (= lambda!253392 lambda!253343))))

(declare-fun bs!1195568 () Bool)

(assert (= bs!1195568 (and b!5129939 d!1659630)))

(assert (=> bs!1195568 (not (= lambda!253392 lambda!253374))))

(declare-fun bs!1195569 () Bool)

(assert (= bs!1195569 (and b!5129939 b!5129938)))

(assert (=> bs!1195569 (= lambda!253392 lambda!253391)))

(declare-fun e!3199418 () Unit!150676)

(declare-fun Unit!150684 () Unit!150676)

(assert (=> b!5129939 (= e!3199418 Unit!150684)))

(declare-fun lt!2116079 () List!59569)

(declare-fun call!357030 () List!59569)

(assert (=> b!5129939 (= lt!2116079 call!357030)))

(declare-fun lt!2116076 () Unit!150676)

(declare-fun lemmaForallThenNotExists!348 (List!59569 Int) Unit!150676)

(assert (=> b!5129939 (= lt!2116076 (lemmaForallThenNotExists!348 lt!2116079 lambda!253390))))

(declare-fun call!357031 () Bool)

(assert (=> b!5129939 (not call!357031)))

(declare-fun lt!2116074 () Unit!150676)

(assert (=> b!5129939 (= lt!2116074 lt!2116076)))

(declare-fun Unit!150685 () Unit!150676)

(assert (=> b!5129938 (= e!3199418 Unit!150685)))

(declare-fun lt!2116077 () List!59569)

(assert (=> b!5129938 (= lt!2116077 call!357030)))

(declare-fun lt!2116078 () Unit!150676)

(declare-fun lemmaNotForallThenExists!365 (List!59569 Int) Unit!150676)

(assert (=> b!5129938 (= lt!2116078 (lemmaNotForallThenExists!365 lt!2116077 lambda!253390))))

(assert (=> b!5129938 call!357031))

(declare-fun lt!2116075 () Unit!150676)

(assert (=> b!5129938 (= lt!2116075 lt!2116078)))

(declare-fun bm!357025 () Bool)

(declare-fun c!882315 () Bool)

(assert (=> bm!357025 (= call!357031 (exists!1612 (ite c!882315 lt!2116077 lt!2116079) (ite c!882315 lambda!253391 lambda!253392)))))

(declare-fun lt!2116073 () Bool)

(declare-datatypes ((List!59572 0))(
  ( (Nil!59448) (Cons!59448 (h!65896 C!28906) (t!372599 List!59572)) )
))
(declare-datatypes ((Option!14725 0))(
  ( (None!14724) (Some!14724 (v!50747 List!59572)) )
))
(declare-fun isEmpty!31986 (Option!14725) Bool)

(declare-fun getLanguageWitness!858 ((Set Context!7408)) Option!14725)

(assert (=> d!1659638 (= lt!2116073 (isEmpty!31986 (getLanguageWitness!858 z!1113)))))

(assert (=> d!1659638 (= lt!2116073 (forall!13726 z!1113 lambda!253390))))

(declare-fun lt!2116080 () Unit!150676)

(assert (=> d!1659638 (= lt!2116080 e!3199418)))

(assert (=> d!1659638 (= c!882315 (not (forall!13726 z!1113 lambda!253390)))))

(assert (=> d!1659638 (= (lostCauseZipper!1164 z!1113) lt!2116073)))

(declare-fun bm!357026 () Bool)

(assert (=> bm!357026 (= call!357030 (toList!8312 z!1113))))

(assert (= (and d!1659638 c!882315) b!5129938))

(assert (= (and d!1659638 (not c!882315)) b!5129939))

(assert (= (or b!5129938 b!5129939) bm!357025))

(assert (= (or b!5129938 b!5129939) bm!357026))

(declare-fun m!6194650 () Bool)

(assert (=> d!1659638 m!6194650))

(assert (=> d!1659638 m!6194650))

(declare-fun m!6194652 () Bool)

(assert (=> d!1659638 m!6194652))

(declare-fun m!6194654 () Bool)

(assert (=> d!1659638 m!6194654))

(assert (=> d!1659638 m!6194654))

(declare-fun m!6194656 () Bool)

(assert (=> bm!357025 m!6194656))

(assert (=> bm!357026 m!6194558))

(declare-fun m!6194658 () Bool)

(assert (=> b!5129939 m!6194658))

(declare-fun m!6194660 () Bool)

(assert (=> b!5129938 m!6194660))

(assert (=> b!5129875 d!1659638))

(declare-fun bs!1195570 () Bool)

(declare-fun d!1659642 () Bool)

(assert (= bs!1195570 (and d!1659642 d!1659632)))

(declare-fun lambda!253395 () Int)

(assert (=> bs!1195570 (not (= lambda!253395 lambda!253377))))

(declare-fun bs!1195571 () Bool)

(assert (= bs!1195571 (and d!1659642 b!5129882)))

(assert (=> bs!1195571 (= lambda!253395 lambda!253342)))

(declare-fun bs!1195572 () Bool)

(assert (= bs!1195572 (and d!1659642 b!5129877)))

(assert (=> bs!1195572 (not (= lambda!253395 lambda!253341))))

(declare-fun bs!1195573 () Bool)

(assert (= bs!1195573 (and d!1659642 b!5129880)))

(assert (=> bs!1195573 (not (= lambda!253395 lambda!253340))))

(declare-fun bs!1195574 () Bool)

(assert (= bs!1195574 (and d!1659642 d!1659628)))

(assert (=> bs!1195574 (not (= lambda!253395 lambda!253371))))

(declare-fun exists!1613 (List!59568 Int) Bool)

(assert (=> d!1659642 (= (lostCause!1272 lt!2116013) (exists!1613 (exprs!4204 lt!2116013) lambda!253395))))

(declare-fun bs!1195575 () Bool)

(assert (= bs!1195575 d!1659642))

(declare-fun m!6194662 () Bool)

(assert (=> bs!1195575 m!6194662))

(assert (=> b!5129884 d!1659642))

(declare-fun d!1659644 () Bool)

(declare-fun dynLambda!23670 (Int Context!7408) Bool)

(assert (=> d!1659644 (dynLambda!23670 lambda!253343 lt!2116013)))

(declare-fun lt!2116083 () Unit!150676)

(declare-fun choose!37836 (List!59569 Int Context!7408) Unit!150676)

(assert (=> d!1659644 (= lt!2116083 (choose!37836 lt!2116012 lambda!253343 lt!2116013))))

(declare-fun e!3199427 () Bool)

(assert (=> d!1659644 e!3199427))

(declare-fun res!2184583 () Bool)

(assert (=> d!1659644 (=> (not res!2184583) (not e!3199427))))

(assert (=> d!1659644 (= res!2184583 (forall!13727 lt!2116012 lambda!253343))))

(assert (=> d!1659644 (= (forallContained!4609 lt!2116012 lambda!253343 lt!2116013) lt!2116083)))

(declare-fun b!5129948 () Bool)

(declare-fun contains!19630 (List!59569 Context!7408) Bool)

(assert (=> b!5129948 (= e!3199427 (contains!19630 lt!2116012 lt!2116013))))

(assert (= (and d!1659644 res!2184583) b!5129948))

(declare-fun b_lambda!199539 () Bool)

(assert (=> (not b_lambda!199539) (not d!1659644)))

(declare-fun m!6194668 () Bool)

(assert (=> d!1659644 m!6194668))

(declare-fun m!6194670 () Bool)

(assert (=> d!1659644 m!6194670))

(assert (=> d!1659644 m!6194556))

(declare-fun m!6194672 () Bool)

(assert (=> b!5129948 m!6194672))

(assert (=> b!5129886 d!1659644))

(declare-fun d!1659648 () Bool)

(declare-fun lostCauseFct!314 (Regex!14320) Bool)

(assert (=> d!1659648 (= (lostCause!1271 lt!2116015) (lostCauseFct!314 lt!2116015))))

(declare-fun bs!1195576 () Bool)

(assert (= bs!1195576 d!1659648))

(declare-fun m!6194674 () Bool)

(assert (=> bs!1195576 m!6194674))

(assert (=> b!5129882 d!1659648))

(declare-fun d!1659650 () Bool)

(assert (=> d!1659650 (dynLambda!23669 lambda!253340 lt!2116015)))

(declare-fun lt!2116086 () Unit!150676)

(declare-fun choose!37837 (List!59568 Int Regex!14320) Unit!150676)

(assert (=> d!1659650 (= lt!2116086 (choose!37837 (exprs!4204 lt!2116013) lambda!253340 lt!2116015))))

(declare-fun e!3199430 () Bool)

(assert (=> d!1659650 e!3199430))

(declare-fun res!2184586 () Bool)

(assert (=> d!1659650 (=> (not res!2184586) (not e!3199430))))

(assert (=> d!1659650 (= res!2184586 (forall!13725 (exprs!4204 lt!2116013) lambda!253340))))

(assert (=> d!1659650 (= (forallContained!4608 (exprs!4204 lt!2116013) lambda!253340 lt!2116015) lt!2116086)))

(declare-fun b!5129951 () Bool)

(declare-fun contains!19631 (List!59568 Regex!14320) Bool)

(assert (=> b!5129951 (= e!3199430 (contains!19631 (exprs!4204 lt!2116013) lt!2116015))))

(assert (= (and d!1659650 res!2184586) b!5129951))

(declare-fun b_lambda!199541 () Bool)

(assert (=> (not b_lambda!199541) (not d!1659650)))

(declare-fun m!6194676 () Bool)

(assert (=> d!1659650 m!6194676))

(declare-fun m!6194678 () Bool)

(assert (=> d!1659650 m!6194678))

(assert (=> d!1659650 m!6194562))

(declare-fun m!6194680 () Bool)

(assert (=> b!5129951 m!6194680))

(assert (=> b!5129882 d!1659650))

(declare-fun d!1659652 () Bool)

(assert (=> d!1659652 (dynLambda!23669 lambda!253341 lt!2116015)))

(declare-fun lt!2116089 () Unit!150676)

(assert (=> d!1659652 (= lt!2116089 (choose!37837 (exprs!4204 lt!2116013) lambda!253341 lt!2116015))))

(declare-fun e!3199431 () Bool)

(assert (=> d!1659652 e!3199431))

(declare-fun res!2184587 () Bool)

(assert (=> d!1659652 (=> (not res!2184587) (not e!3199431))))

(assert (=> d!1659652 (= res!2184587 (forall!13725 (exprs!4204 lt!2116013) lambda!253341))))

(assert (=> d!1659652 (= (forallContained!4608 (exprs!4204 lt!2116013) lambda!253341 lt!2116015) lt!2116089)))

(declare-fun b!5129952 () Bool)

(assert (=> b!5129952 (= e!3199431 (contains!19631 (exprs!4204 lt!2116013) lt!2116015))))

(assert (= (and d!1659652 res!2184587) b!5129952))

(declare-fun b_lambda!199543 () Bool)

(assert (=> (not b_lambda!199543) (not d!1659652)))

(declare-fun m!6194682 () Bool)

(assert (=> d!1659652 m!6194682))

(declare-fun m!6194684 () Bool)

(assert (=> d!1659652 m!6194684))

(assert (=> d!1659652 m!6194566))

(assert (=> b!5129952 m!6194680))

(assert (=> b!5129882 d!1659652))

(declare-fun d!1659654 () Bool)

(assert (=> d!1659654 (not (lostCause!1271 lt!2116015))))

(declare-fun lt!2116093 () Unit!150676)

(declare-fun choose!37838 (Regex!14320) Unit!150676)

(assert (=> d!1659654 (= lt!2116093 (choose!37838 lt!2116015))))

(declare-fun validRegex!6237 (Regex!14320) Bool)

(assert (=> d!1659654 (validRegex!6237 lt!2116015)))

(assert (=> d!1659654 (= (lemmaNullableThenNotLostCause!27 lt!2116015) lt!2116093)))

(declare-fun bs!1195578 () Bool)

(assert (= bs!1195578 d!1659654))

(assert (=> bs!1195578 m!6194578))

(declare-fun m!6194690 () Bool)

(assert (=> bs!1195578 m!6194690))

(declare-fun m!6194692 () Bool)

(assert (=> bs!1195578 m!6194692))

(assert (=> b!5129882 d!1659654))

(declare-fun b!5129968 () Bool)

(declare-fun e!3199443 () Regex!14320)

(assert (=> b!5129968 (= e!3199443 (h!65892 (exprs!4204 lt!2116013)))))

(declare-fun b!5129969 () Bool)

(declare-fun e!3199446 () Bool)

(assert (=> b!5129969 (= e!3199446 (dynLambda!23669 lambda!253342 (h!65892 (exprs!4204 lt!2116013))))))

(declare-fun b!5129970 () Bool)

(declare-fun e!3199445 () Bool)

(declare-fun lt!2116102 () Regex!14320)

(assert (=> b!5129970 (= e!3199445 (contains!19631 (exprs!4204 lt!2116013) lt!2116102))))

(declare-fun b!5129971 () Bool)

(declare-fun e!3199444 () Regex!14320)

(assert (=> b!5129971 (= e!3199443 e!3199444)))

(declare-fun c!882321 () Bool)

(assert (=> b!5129971 (= c!882321 (is-Cons!59444 (exprs!4204 lt!2116013)))))

(declare-fun d!1659658 () Bool)

(assert (=> d!1659658 e!3199445))

(declare-fun res!2184596 () Bool)

(assert (=> d!1659658 (=> (not res!2184596) (not e!3199445))))

(assert (=> d!1659658 (= res!2184596 (dynLambda!23669 lambda!253342 lt!2116102))))

(assert (=> d!1659658 (= lt!2116102 e!3199443)))

(declare-fun c!882320 () Bool)

(assert (=> d!1659658 (= c!882320 e!3199446)))

(declare-fun res!2184595 () Bool)

(assert (=> d!1659658 (=> (not res!2184595) (not e!3199446))))

(assert (=> d!1659658 (= res!2184595 (is-Cons!59444 (exprs!4204 lt!2116013)))))

(assert (=> d!1659658 (exists!1613 (exprs!4204 lt!2116013) lambda!253342)))

(assert (=> d!1659658 (= (getWitness!768 (exprs!4204 lt!2116013) lambda!253342) lt!2116102)))

(declare-fun b!5129972 () Bool)

(declare-fun lt!2116101 () Unit!150676)

(declare-fun Unit!150686 () Unit!150676)

(assert (=> b!5129972 (= lt!2116101 Unit!150686)))

(assert (=> b!5129972 false))

(declare-fun head!10979 (List!59568) Regex!14320)

(assert (=> b!5129972 (= e!3199444 (head!10979 (exprs!4204 lt!2116013)))))

(declare-fun b!5129973 () Bool)

(assert (=> b!5129973 (= e!3199444 (getWitness!768 (t!372595 (exprs!4204 lt!2116013)) lambda!253342))))

(assert (= (and d!1659658 res!2184595) b!5129969))

(assert (= (and d!1659658 c!882320) b!5129968))

(assert (= (and d!1659658 (not c!882320)) b!5129971))

(assert (= (and b!5129971 c!882321) b!5129973))

(assert (= (and b!5129971 (not c!882321)) b!5129972))

(assert (= (and d!1659658 res!2184596) b!5129970))

(declare-fun b_lambda!199547 () Bool)

(assert (=> (not b_lambda!199547) (not b!5129969)))

(declare-fun b_lambda!199549 () Bool)

(assert (=> (not b_lambda!199549) (not d!1659658)))

(declare-fun m!6194700 () Bool)

(assert (=> d!1659658 m!6194700))

(declare-fun m!6194702 () Bool)

(assert (=> d!1659658 m!6194702))

(declare-fun m!6194704 () Bool)

(assert (=> b!5129969 m!6194704))

(declare-fun m!6194706 () Bool)

(assert (=> b!5129973 m!6194706))

(declare-fun m!6194708 () Bool)

(assert (=> b!5129972 m!6194708))

(declare-fun m!6194710 () Bool)

(assert (=> b!5129970 m!6194710))

(assert (=> b!5129882 d!1659658))

(declare-fun d!1659662 () Bool)

(declare-fun lt!2116105 () Bool)

(assert (=> d!1659662 (= lt!2116105 (forall!13727 (toList!8312 z!1113) lambda!253343))))

(declare-fun choose!37839 ((Set Context!7408) Int) Bool)

(assert (=> d!1659662 (= lt!2116105 (choose!37839 z!1113 lambda!253343))))

(assert (=> d!1659662 (= (forall!13726 z!1113 lambda!253343) lt!2116105)))

(declare-fun bs!1195579 () Bool)

(assert (= bs!1195579 d!1659662))

(assert (=> bs!1195579 m!6194558))

(assert (=> bs!1195579 m!6194558))

(declare-fun m!6194714 () Bool)

(assert (=> bs!1195579 m!6194714))

(declare-fun m!6194716 () Bool)

(assert (=> bs!1195579 m!6194716))

(assert (=> b!5129881 d!1659662))

(declare-fun d!1659664 () Bool)

(declare-fun res!2184602 () Bool)

(declare-fun e!3199452 () Bool)

(assert (=> d!1659664 (=> res!2184602 e!3199452)))

(assert (=> d!1659664 (= res!2184602 (is-Nil!59445 lt!2116012))))

(assert (=> d!1659664 (= (forall!13727 lt!2116012 lambda!253343) e!3199452)))

(declare-fun b!5129979 () Bool)

(declare-fun e!3199453 () Bool)

(assert (=> b!5129979 (= e!3199452 e!3199453)))

(declare-fun res!2184603 () Bool)

(assert (=> b!5129979 (=> (not res!2184603) (not e!3199453))))

(assert (=> b!5129979 (= res!2184603 (dynLambda!23670 lambda!253343 (h!65893 lt!2116012)))))

(declare-fun b!5129980 () Bool)

(assert (=> b!5129980 (= e!3199453 (forall!13727 (t!372596 lt!2116012) lambda!253343))))

(assert (= (and d!1659664 (not res!2184602)) b!5129979))

(assert (= (and b!5129979 res!2184603) b!5129980))

(declare-fun b_lambda!199553 () Bool)

(assert (=> (not b_lambda!199553) (not b!5129979)))

(declare-fun m!6194722 () Bool)

(assert (=> b!5129979 m!6194722))

(declare-fun m!6194724 () Bool)

(assert (=> b!5129980 m!6194724))

(assert (=> b!5129883 d!1659664))

(declare-fun d!1659670 () Bool)

(declare-fun e!3199456 () Bool)

(assert (=> d!1659670 e!3199456))

(declare-fun res!2184606 () Bool)

(assert (=> d!1659670 (=> (not res!2184606) (not e!3199456))))

(declare-fun lt!2116109 () List!59569)

(declare-fun noDuplicate!1089 (List!59569) Bool)

(assert (=> d!1659670 (= res!2184606 (noDuplicate!1089 lt!2116109))))

(declare-fun choose!37840 ((Set Context!7408)) List!59569)

(assert (=> d!1659670 (= lt!2116109 (choose!37840 z!1113))))

(assert (=> d!1659670 (= (toList!8312 z!1113) lt!2116109)))

(declare-fun b!5129983 () Bool)

(declare-fun content!10566 (List!59569) (Set Context!7408))

(assert (=> b!5129983 (= e!3199456 (= (content!10566 lt!2116109) z!1113))))

(assert (= (and d!1659670 res!2184606) b!5129983))

(declare-fun m!6194726 () Bool)

(assert (=> d!1659670 m!6194726))

(declare-fun m!6194728 () Bool)

(assert (=> d!1659670 m!6194728))

(declare-fun m!6194730 () Bool)

(assert (=> b!5129983 m!6194730))

(assert (=> b!5129883 d!1659670))

(declare-fun bs!1195581 () Bool)

(declare-fun d!1659672 () Bool)

(assert (= bs!1195581 (and d!1659672 d!1659632)))

(declare-fun lambda!253398 () Int)

(assert (=> bs!1195581 (not (= lambda!253398 lambda!253377))))

(declare-fun bs!1195582 () Bool)

(assert (= bs!1195582 (and d!1659672 d!1659642)))

(assert (=> bs!1195582 (not (= lambda!253398 lambda!253395))))

(declare-fun bs!1195583 () Bool)

(assert (= bs!1195583 (and d!1659672 b!5129882)))

(assert (=> bs!1195583 (not (= lambda!253398 lambda!253342))))

(declare-fun bs!1195584 () Bool)

(assert (= bs!1195584 (and d!1659672 b!5129877)))

(assert (=> bs!1195584 (= lambda!253398 lambda!253341)))

(declare-fun bs!1195585 () Bool)

(assert (= bs!1195585 (and d!1659672 b!5129880)))

(assert (=> bs!1195585 (not (= lambda!253398 lambda!253340))))

(declare-fun bs!1195586 () Bool)

(assert (= bs!1195586 (and d!1659672 d!1659628)))

(assert (=> bs!1195586 (not (= lambda!253398 lambda!253371))))

(assert (=> d!1659672 (= (nullableContext!39 lt!2116013) (forall!13725 (exprs!4204 lt!2116013) lambda!253398))))

(declare-fun bs!1195587 () Bool)

(assert (= bs!1195587 d!1659672))

(declare-fun m!6194732 () Bool)

(assert (=> bs!1195587 m!6194732))

(assert (=> b!5129874 d!1659672))

(declare-fun d!1659674 () Bool)

(declare-fun e!3199459 () Bool)

(assert (=> d!1659674 e!3199459))

(declare-fun res!2184609 () Bool)

(assert (=> d!1659674 (=> (not res!2184609) (not e!3199459))))

(declare-fun lt!2116112 () Context!7408)

(assert (=> d!1659674 (= res!2184609 (dynLambda!23670 lambda!253339 lt!2116112))))

(declare-fun getWitness!771 (List!59569 Int) Context!7408)

(assert (=> d!1659674 (= lt!2116112 (getWitness!771 (toList!8312 z!1113) lambda!253339))))

(assert (=> d!1659674 (exists!1610 z!1113 lambda!253339)))

(assert (=> d!1659674 (= (getWitness!767 z!1113 lambda!253339) lt!2116112)))

(declare-fun b!5129986 () Bool)

(assert (=> b!5129986 (= e!3199459 (set.member lt!2116112 z!1113))))

(assert (= (and d!1659674 res!2184609) b!5129986))

(declare-fun b_lambda!199555 () Bool)

(assert (=> (not b_lambda!199555) (not d!1659674)))

(declare-fun m!6194734 () Bool)

(assert (=> d!1659674 m!6194734))

(assert (=> d!1659674 m!6194558))

(assert (=> d!1659674 m!6194558))

(declare-fun m!6194736 () Bool)

(assert (=> d!1659674 m!6194736))

(assert (=> d!1659674 m!6194582))

(declare-fun m!6194738 () Bool)

(assert (=> b!5129986 m!6194738))

(assert (=> b!5129874 d!1659674))

(declare-fun b!5129993 () Bool)

(declare-fun e!3199462 () Bool)

(declare-fun tp!1431174 () Bool)

(declare-fun tp!1431175 () Bool)

(assert (=> b!5129993 (= e!3199462 (and tp!1431174 tp!1431175))))

(assert (=> b!5129885 (= tp!1431163 e!3199462)))

(assert (= (and b!5129885 (is-Cons!59444 (exprs!4204 setElem!30989))) b!5129993))

(declare-fun condSetEmpty!30995 () Bool)

(assert (=> setNonEmpty!30989 (= condSetEmpty!30995 (= setRest!30989 (as set.empty (Set Context!7408))))))

(declare-fun setRes!30995 () Bool)

(assert (=> setNonEmpty!30989 (= tp!1431162 setRes!30995)))

(declare-fun setIsEmpty!30995 () Bool)

(assert (=> setIsEmpty!30995 setRes!30995))

(declare-fun setNonEmpty!30995 () Bool)

(declare-fun tp!1431181 () Bool)

(declare-fun e!3199471 () Bool)

(declare-fun setElem!30995 () Context!7408)

(assert (=> setNonEmpty!30995 (= setRes!30995 (and tp!1431181 (inv!78982 setElem!30995) e!3199471))))

(declare-fun setRest!30995 () (Set Context!7408))

(assert (=> setNonEmpty!30995 (= setRest!30989 (set.union (set.insert setElem!30995 (as set.empty (Set Context!7408))) setRest!30995))))

(declare-fun b!5130006 () Bool)

(declare-fun tp!1431180 () Bool)

(assert (=> b!5130006 (= e!3199471 tp!1431180)))

(assert (= (and setNonEmpty!30989 condSetEmpty!30995) setIsEmpty!30995))

(assert (= (and setNonEmpty!30989 (not condSetEmpty!30995)) setNonEmpty!30995))

(assert (= setNonEmpty!30995 b!5130006))

(declare-fun m!6194740 () Bool)

(assert (=> setNonEmpty!30995 m!6194740))

(declare-fun b_lambda!199557 () Bool)

(assert (= b_lambda!199533 (or b!5129880 b_lambda!199557)))

(declare-fun bs!1195588 () Bool)

(declare-fun d!1659676 () Bool)

(assert (= bs!1195588 (and d!1659676 b!5129880)))

(assert (=> bs!1195588 (= (dynLambda!23669 lambda!253340 (h!65892 (exprs!4204 lt!2116013))) (validRegex!6237 (h!65892 (exprs!4204 lt!2116013))))))

(declare-fun m!6194742 () Bool)

(assert (=> bs!1195588 m!6194742))

(assert (=> b!5129930 d!1659676))

(declare-fun b_lambda!199559 () Bool)

(assert (= b_lambda!199539 (or b!5129881 b_lambda!199559)))

(declare-fun bs!1195589 () Bool)

(declare-fun d!1659678 () Bool)

(assert (= bs!1195589 (and d!1659678 b!5129881)))

(assert (=> bs!1195589 (= (dynLambda!23670 lambda!253343 lt!2116013) (lostCause!1272 lt!2116013))))

(assert (=> bs!1195589 m!6194580))

(assert (=> d!1659644 d!1659678))

(declare-fun b_lambda!199561 () Bool)

(assert (= b_lambda!199535 (or b!5129877 b_lambda!199561)))

(declare-fun bs!1195590 () Bool)

(declare-fun d!1659680 () Bool)

(assert (= bs!1195590 (and d!1659680 b!5129877)))

(declare-fun nullable!4743 (Regex!14320) Bool)

(assert (=> bs!1195590 (= (dynLambda!23669 lambda!253341 (h!65892 (exprs!4204 lt!2116013))) (nullable!4743 (h!65892 (exprs!4204 lt!2116013))))))

(declare-fun m!6194744 () Bool)

(assert (=> bs!1195590 m!6194744))

(assert (=> b!5129932 d!1659680))

(declare-fun b_lambda!199563 () Bool)

(assert (= b_lambda!199553 (or b!5129881 b_lambda!199563)))

(declare-fun bs!1195591 () Bool)

(declare-fun d!1659682 () Bool)

(assert (= bs!1195591 (and d!1659682 b!5129881)))

(assert (=> bs!1195591 (= (dynLambda!23670 lambda!253343 (h!65893 lt!2116012)) (lostCause!1272 (h!65893 lt!2116012)))))

(declare-fun m!6194746 () Bool)

(assert (=> bs!1195591 m!6194746))

(assert (=> b!5129979 d!1659682))

(declare-fun b_lambda!199565 () Bool)

(assert (= b_lambda!199547 (or b!5129882 b_lambda!199565)))

(declare-fun bs!1195592 () Bool)

(declare-fun d!1659684 () Bool)

(assert (= bs!1195592 (and d!1659684 b!5129882)))

(assert (=> bs!1195592 (= (dynLambda!23669 lambda!253342 (h!65892 (exprs!4204 lt!2116013))) (lostCause!1271 (h!65892 (exprs!4204 lt!2116013))))))

(declare-fun m!6194748 () Bool)

(assert (=> bs!1195592 m!6194748))

(assert (=> b!5129969 d!1659684))

(declare-fun b_lambda!199567 () Bool)

(assert (= b_lambda!199541 (or b!5129880 b_lambda!199567)))

(declare-fun bs!1195593 () Bool)

(declare-fun d!1659686 () Bool)

(assert (= bs!1195593 (and d!1659686 b!5129880)))

(assert (=> bs!1195593 (= (dynLambda!23669 lambda!253340 lt!2116015) (validRegex!6237 lt!2116015))))

(assert (=> bs!1195593 m!6194692))

(assert (=> d!1659650 d!1659686))

(declare-fun b_lambda!199569 () Bool)

(assert (= b_lambda!199543 (or b!5129877 b_lambda!199569)))

(declare-fun bs!1195594 () Bool)

(declare-fun d!1659688 () Bool)

(assert (= bs!1195594 (and d!1659688 b!5129877)))

(assert (=> bs!1195594 (= (dynLambda!23669 lambda!253341 lt!2116015) (nullable!4743 lt!2116015))))

(declare-fun m!6194750 () Bool)

(assert (=> bs!1195594 m!6194750))

(assert (=> d!1659652 d!1659688))

(declare-fun b_lambda!199571 () Bool)

(assert (= b_lambda!199555 (or b!5129878 b_lambda!199571)))

(declare-fun bs!1195595 () Bool)

(declare-fun d!1659690 () Bool)

(assert (= bs!1195595 (and d!1659690 b!5129878)))

(assert (=> bs!1195595 (= (dynLambda!23670 lambda!253339 lt!2116112) (nullableContext!39 lt!2116112))))

(declare-fun m!6194752 () Bool)

(assert (=> bs!1195595 m!6194752))

(assert (=> d!1659674 d!1659690))

(declare-fun b_lambda!199573 () Bool)

(assert (= b_lambda!199549 (or b!5129882 b_lambda!199573)))

(declare-fun bs!1195596 () Bool)

(declare-fun d!1659692 () Bool)

(assert (= bs!1195596 (and d!1659692 b!5129882)))

(assert (=> bs!1195596 (= (dynLambda!23669 lambda!253342 lt!2116102) (lostCause!1271 lt!2116102))))

(declare-fun m!6194754 () Bool)

(assert (=> bs!1195596 m!6194754))

(assert (=> d!1659658 d!1659692))

(push 1)

(assert (not bs!1195596))

(assert (not b!5129993))

(assert (not bs!1195594))

(assert (not bs!1195595))

(assert (not d!1659662))

(assert (not d!1659628))

(assert (not b_lambda!199571))

(assert (not b!5129970))

(assert (not bs!1195588))

(assert (not bm!357026))

(assert (not b_lambda!199559))

(assert (not b_lambda!199557))

(assert (not d!1659670))

(assert (not b!5129933))

(assert (not b_lambda!199561))

(assert (not b_lambda!199569))

(assert (not d!1659632))

(assert (not d!1659642))

(assert (not d!1659638))

(assert (not bs!1195589))

(assert (not d!1659648))

(assert (not b_lambda!199563))

(assert (not d!1659650))

(assert (not d!1659654))

(assert (not b!5129973))

(assert (not d!1659674))

(assert (not b_lambda!199565))

(assert (not b!5129948))

(assert (not bs!1195591))

(assert (not bs!1195593))

(assert (not b!5129951))

(assert (not b!5129952))

(assert (not b_lambda!199573))

(assert (not d!1659634))

(assert (not d!1659644))

(assert (not d!1659672))

(assert (not b!5129939))

(assert (not setNonEmpty!30995))

(assert (not bm!357025))

(assert (not b!5129972))

(assert (not d!1659658))

(assert (not b_lambda!199567))

(assert (not bs!1195592))

(assert (not d!1659652))

(assert (not d!1659630))

(assert (not b!5129983))

(assert (not b!5129931))

(assert (not b!5129938))

(assert (not b!5129980))

(assert (not b!5130006))

(assert (not bs!1195590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


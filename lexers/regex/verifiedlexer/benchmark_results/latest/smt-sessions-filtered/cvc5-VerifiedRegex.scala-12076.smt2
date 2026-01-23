; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677268 () Bool)

(assert start!677268)

(declare-fun b!7021531 () Bool)

(assert (=> b!7021531 true))

(declare-fun b!7021524 () Bool)

(declare-fun e!4220798 () Bool)

(declare-fun e!4220797 () Bool)

(assert (=> b!7021524 (= e!4220798 e!4220797)))

(declare-fun res!2866135 () Bool)

(assert (=> b!7021524 (=> (not res!2866135) (not e!4220797))))

(declare-datatypes ((C!35066 0))(
  ( (C!35067 (val!27235 Int)) )
))
(declare-datatypes ((Regex!17398 0))(
  ( (ElementMatch!17398 (c!1304953 C!35066)) (Concat!26243 (regOne!35308 Regex!17398) (regTwo!35308 Regex!17398)) (EmptyExpr!17398) (Star!17398 (reg!17727 Regex!17398)) (EmptyLang!17398) (Union!17398 (regOne!35309 Regex!17398) (regTwo!35309 Regex!17398)) )
))
(declare-datatypes ((List!67737 0))(
  ( (Nil!67613) (Cons!67613 (h!74061 Regex!17398) (t!381492 List!67737)) )
))
(declare-datatypes ((Context!12788 0))(
  ( (Context!12789 (exprs!6894 List!67737)) )
))
(declare-fun lt!2512184 () Context!12788)

(declare-fun nullableContext!58 (Context!12788) Bool)

(assert (=> b!7021524 (= res!2866135 (nullableContext!58 lt!2512184))))

(declare-fun lt!2512183 () (Set Context!12788))

(declare-fun lambda!411570 () Int)

(declare-fun getWitness!1370 ((Set Context!12788) Int) Context!12788)

(assert (=> b!7021524 (= lt!2512184 (getWitness!1370 lt!2512183 lambda!411570))))

(declare-fun b!7021525 () Bool)

(declare-fun res!2866136 () Bool)

(assert (=> b!7021525 (=> (not res!2866136) (not e!4220798))))

(declare-datatypes ((List!67738 0))(
  ( (Nil!67614) (Cons!67614 (h!74062 C!35066) (t!381493 List!67738)) )
))
(declare-fun s!7408 () List!67738)

(assert (=> b!7021525 (= res!2866136 (not (is-Cons!67614 s!7408)))))

(declare-fun b!7021526 () Bool)

(declare-fun res!2866134 () Bool)

(assert (=> b!7021526 (=> (not res!2866134) (not e!4220798))))

(declare-fun exists!3288 ((Set Context!12788) Int) Bool)

(assert (=> b!7021526 (= res!2866134 (exists!3288 lt!2512183 lambda!411570))))

(declare-fun b!7021527 () Bool)

(declare-fun res!2866133 () Bool)

(assert (=> b!7021527 (=> (not res!2866133) (not e!4220798))))

(declare-fun nullableZipper!2527 ((Set Context!12788)) Bool)

(assert (=> b!7021527 (= res!2866133 (nullableZipper!2527 lt!2512183))))

(declare-fun tp!1934243 () Bool)

(declare-fun setRes!48741 () Bool)

(declare-fun e!4220795 () Bool)

(declare-fun setNonEmpty!48741 () Bool)

(declare-fun setElem!48741 () Context!12788)

(declare-fun inv!86355 (Context!12788) Bool)

(assert (=> setNonEmpty!48741 (= setRes!48741 (and tp!1934243 (inv!86355 setElem!48741) e!4220795))))

(declare-fun z1!570 () (Set Context!12788))

(declare-fun setRest!48741 () (Set Context!12788))

(assert (=> setNonEmpty!48741 (= z1!570 (set.union (set.insert setElem!48741 (as set.empty (Set Context!12788))) setRest!48741))))

(declare-fun b!7021529 () Bool)

(declare-fun e!4220796 () Bool)

(declare-fun tp_is_empty!44021 () Bool)

(declare-fun tp!1934241 () Bool)

(assert (=> b!7021529 (= e!4220796 (and tp_is_empty!44021 tp!1934241))))

(declare-fun b!7021530 () Bool)

(declare-fun tp!1934242 () Bool)

(assert (=> b!7021530 (= e!4220795 tp!1934242)))

(declare-fun setIsEmpty!48741 () Bool)

(assert (=> setIsEmpty!48741 setRes!48741))

(declare-fun lambda!411571 () Int)

(declare-fun map!15686 ((Set Context!12788) Int) (Set Context!12788))

(assert (=> b!7021531 (= e!4220797 (not (set.member lt!2512184 (map!15686 z1!570 lambda!411571))))))

(declare-fun b!7021528 () Bool)

(declare-fun e!4220799 () Bool)

(declare-fun tp!1934240 () Bool)

(assert (=> b!7021528 (= e!4220799 tp!1934240)))

(declare-fun res!2866132 () Bool)

(assert (=> start!677268 (=> (not res!2866132) (not e!4220798))))

(declare-fun matchZipper!2938 ((Set Context!12788) List!67738) Bool)

(assert (=> start!677268 (= res!2866132 (matchZipper!2938 lt!2512183 s!7408))))

(declare-fun ct2!306 () Context!12788)

(declare-fun appendTo!519 ((Set Context!12788) Context!12788) (Set Context!12788))

(assert (=> start!677268 (= lt!2512183 (appendTo!519 z1!570 ct2!306))))

(assert (=> start!677268 e!4220798))

(declare-fun condSetEmpty!48741 () Bool)

(assert (=> start!677268 (= condSetEmpty!48741 (= z1!570 (as set.empty (Set Context!12788))))))

(assert (=> start!677268 setRes!48741))

(assert (=> start!677268 (and (inv!86355 ct2!306) e!4220799)))

(assert (=> start!677268 e!4220796))

(assert (= (and start!677268 res!2866132) b!7021525))

(assert (= (and b!7021525 res!2866136) b!7021527))

(assert (= (and b!7021527 res!2866133) b!7021526))

(assert (= (and b!7021526 res!2866134) b!7021524))

(assert (= (and b!7021524 res!2866135) b!7021531))

(assert (= (and start!677268 condSetEmpty!48741) setIsEmpty!48741))

(assert (= (and start!677268 (not condSetEmpty!48741)) setNonEmpty!48741))

(assert (= setNonEmpty!48741 b!7021530))

(assert (= start!677268 b!7021528))

(assert (= (and start!677268 (is-Cons!67614 s!7408)) b!7021529))

(declare-fun m!7723448 () Bool)

(assert (=> start!677268 m!7723448))

(declare-fun m!7723450 () Bool)

(assert (=> start!677268 m!7723450))

(declare-fun m!7723452 () Bool)

(assert (=> start!677268 m!7723452))

(declare-fun m!7723454 () Bool)

(assert (=> b!7021531 m!7723454))

(declare-fun m!7723456 () Bool)

(assert (=> b!7021531 m!7723456))

(declare-fun m!7723458 () Bool)

(assert (=> b!7021524 m!7723458))

(declare-fun m!7723460 () Bool)

(assert (=> b!7021524 m!7723460))

(declare-fun m!7723462 () Bool)

(assert (=> b!7021526 m!7723462))

(declare-fun m!7723464 () Bool)

(assert (=> b!7021527 m!7723464))

(declare-fun m!7723466 () Bool)

(assert (=> setNonEmpty!48741 m!7723466))

(push 1)

(assert (not b!7021526))

(assert tp_is_empty!44021)

(assert (not b!7021531))

(assert (not b!7021529))

(assert (not setNonEmpty!48741))

(assert (not b!7021524))

(assert (not start!677268))

(assert (not b!7021527))

(assert (not b!7021530))

(assert (not b!7021528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2188681 () Bool)

(declare-fun c!1304963 () Bool)

(declare-fun isEmpty!39461 (List!67738) Bool)

(assert (=> d!2188681 (= c!1304963 (isEmpty!39461 s!7408))))

(declare-fun e!4220817 () Bool)

(assert (=> d!2188681 (= (matchZipper!2938 lt!2512183 s!7408) e!4220817)))

(declare-fun b!7021564 () Bool)

(assert (=> b!7021564 (= e!4220817 (nullableZipper!2527 lt!2512183))))

(declare-fun b!7021565 () Bool)

(declare-fun derivationStepZipper!2873 ((Set Context!12788) C!35066) (Set Context!12788))

(declare-fun head!14214 (List!67738) C!35066)

(declare-fun tail!13483 (List!67738) List!67738)

(assert (=> b!7021565 (= e!4220817 (matchZipper!2938 (derivationStepZipper!2873 lt!2512183 (head!14214 s!7408)) (tail!13483 s!7408)))))

(assert (= (and d!2188681 c!1304963) b!7021564))

(assert (= (and d!2188681 (not c!1304963)) b!7021565))

(declare-fun m!7723488 () Bool)

(assert (=> d!2188681 m!7723488))

(assert (=> b!7021564 m!7723464))

(declare-fun m!7723490 () Bool)

(assert (=> b!7021565 m!7723490))

(assert (=> b!7021565 m!7723490))

(declare-fun m!7723492 () Bool)

(assert (=> b!7021565 m!7723492))

(declare-fun m!7723494 () Bool)

(assert (=> b!7021565 m!7723494))

(assert (=> b!7021565 m!7723492))

(assert (=> b!7021565 m!7723494))

(declare-fun m!7723496 () Bool)

(assert (=> b!7021565 m!7723496))

(assert (=> start!677268 d!2188681))

(declare-fun bs!1867677 () Bool)

(declare-fun d!2188683 () Bool)

(assert (= bs!1867677 (and d!2188683 b!7021531)))

(declare-fun lambda!411586 () Int)

(assert (=> bs!1867677 (= lambda!411586 lambda!411571)))

(assert (=> d!2188683 true))

(assert (=> d!2188683 (= (appendTo!519 z1!570 ct2!306) (map!15686 z1!570 lambda!411586))))

(declare-fun bs!1867678 () Bool)

(assert (= bs!1867678 d!2188683))

(declare-fun m!7723498 () Bool)

(assert (=> bs!1867678 m!7723498))

(assert (=> start!677268 d!2188683))

(declare-fun d!2188685 () Bool)

(declare-fun lambda!411589 () Int)

(declare-fun forall!16303 (List!67737 Int) Bool)

(assert (=> d!2188685 (= (inv!86355 ct2!306) (forall!16303 (exprs!6894 ct2!306) lambda!411589))))

(declare-fun bs!1867679 () Bool)

(assert (= bs!1867679 d!2188685))

(declare-fun m!7723500 () Bool)

(assert (=> bs!1867679 m!7723500))

(assert (=> start!677268 d!2188685))

(declare-fun bs!1867680 () Bool)

(declare-fun d!2188687 () Bool)

(assert (= bs!1867680 (and d!2188687 d!2188685)))

(declare-fun lambda!411592 () Int)

(assert (=> bs!1867680 (not (= lambda!411592 lambda!411589))))

(assert (=> d!2188687 (= (nullableContext!58 lt!2512184) (forall!16303 (exprs!6894 lt!2512184) lambda!411592))))

(declare-fun bs!1867681 () Bool)

(assert (= bs!1867681 d!2188687))

(declare-fun m!7723502 () Bool)

(assert (=> bs!1867681 m!7723502))

(assert (=> b!7021524 d!2188687))

(declare-fun d!2188689 () Bool)

(declare-fun e!4220820 () Bool)

(assert (=> d!2188689 e!4220820))

(declare-fun res!2866156 () Bool)

(assert (=> d!2188689 (=> (not res!2866156) (not e!4220820))))

(declare-fun lt!2512197 () Context!12788)

(declare-fun dynLambda!27239 (Int Context!12788) Bool)

(assert (=> d!2188689 (= res!2866156 (dynLambda!27239 lambda!411570 lt!2512197))))

(declare-datatypes ((List!67741 0))(
  ( (Nil!67617) (Cons!67617 (h!74065 Context!12788) (t!381496 List!67741)) )
))
(declare-fun getWitness!1372 (List!67741 Int) Context!12788)

(declare-fun toList!10756 ((Set Context!12788)) List!67741)

(assert (=> d!2188689 (= lt!2512197 (getWitness!1372 (toList!10756 lt!2512183) lambda!411570))))

(assert (=> d!2188689 (exists!3288 lt!2512183 lambda!411570)))

(assert (=> d!2188689 (= (getWitness!1370 lt!2512183 lambda!411570) lt!2512197)))

(declare-fun b!7021568 () Bool)

(assert (=> b!7021568 (= e!4220820 (set.member lt!2512197 lt!2512183))))

(assert (= (and d!2188689 res!2866156) b!7021568))

(declare-fun b_lambda!265131 () Bool)

(assert (=> (not b_lambda!265131) (not d!2188689)))

(declare-fun m!7723504 () Bool)

(assert (=> d!2188689 m!7723504))

(declare-fun m!7723506 () Bool)

(assert (=> d!2188689 m!7723506))

(assert (=> d!2188689 m!7723506))

(declare-fun m!7723508 () Bool)

(assert (=> d!2188689 m!7723508))

(assert (=> d!2188689 m!7723462))

(declare-fun m!7723510 () Bool)

(assert (=> b!7021568 m!7723510))

(assert (=> b!7021524 d!2188689))

(declare-fun d!2188693 () Bool)

(declare-fun lt!2512200 () Bool)

(declare-fun exists!3290 (List!67741 Int) Bool)

(assert (=> d!2188693 (= lt!2512200 (exists!3290 (toList!10756 lt!2512183) lambda!411570))))

(declare-fun choose!52976 ((Set Context!12788) Int) Bool)

(assert (=> d!2188693 (= lt!2512200 (choose!52976 lt!2512183 lambda!411570))))

(assert (=> d!2188693 (= (exists!3288 lt!2512183 lambda!411570) lt!2512200)))

(declare-fun bs!1867682 () Bool)

(assert (= bs!1867682 d!2188693))

(assert (=> bs!1867682 m!7723506))

(assert (=> bs!1867682 m!7723506))

(declare-fun m!7723512 () Bool)

(assert (=> bs!1867682 m!7723512))

(declare-fun m!7723514 () Bool)

(assert (=> bs!1867682 m!7723514))

(assert (=> b!7021526 d!2188693))

(declare-fun d!2188695 () Bool)

(declare-fun choose!52977 ((Set Context!12788) Int) (Set Context!12788))

(assert (=> d!2188695 (= (map!15686 z1!570 lambda!411571) (choose!52977 z1!570 lambda!411571))))

(declare-fun bs!1867683 () Bool)

(assert (= bs!1867683 d!2188695))

(declare-fun m!7723516 () Bool)

(assert (=> bs!1867683 m!7723516))

(assert (=> b!7021531 d!2188695))

(declare-fun bs!1867685 () Bool)

(declare-fun d!2188697 () Bool)

(assert (= bs!1867685 (and d!2188697 b!7021526)))

(declare-fun lambda!411595 () Int)

(assert (=> bs!1867685 (= lambda!411595 lambda!411570)))

(assert (=> d!2188697 (= (nullableZipper!2527 lt!2512183) (exists!3288 lt!2512183 lambda!411595))))

(declare-fun bs!1867686 () Bool)

(assert (= bs!1867686 d!2188697))

(declare-fun m!7723524 () Bool)

(assert (=> bs!1867686 m!7723524))

(assert (=> b!7021527 d!2188697))

(declare-fun bs!1867687 () Bool)

(declare-fun d!2188701 () Bool)

(assert (= bs!1867687 (and d!2188701 d!2188685)))

(declare-fun lambda!411596 () Int)

(assert (=> bs!1867687 (= lambda!411596 lambda!411589)))

(declare-fun bs!1867688 () Bool)

(assert (= bs!1867688 (and d!2188701 d!2188687)))

(assert (=> bs!1867688 (not (= lambda!411596 lambda!411592))))

(assert (=> d!2188701 (= (inv!86355 setElem!48741) (forall!16303 (exprs!6894 setElem!48741) lambda!411596))))

(declare-fun bs!1867689 () Bool)

(assert (= bs!1867689 d!2188701))

(declare-fun m!7723526 () Bool)

(assert (=> bs!1867689 m!7723526))

(assert (=> setNonEmpty!48741 d!2188701))

(declare-fun b!7021573 () Bool)

(declare-fun e!4220823 () Bool)

(declare-fun tp!1934258 () Bool)

(assert (=> b!7021573 (= e!4220823 (and tp_is_empty!44021 tp!1934258))))

(assert (=> b!7021529 (= tp!1934241 e!4220823)))

(assert (= (and b!7021529 (is-Cons!67614 (t!381493 s!7408))) b!7021573))

(declare-fun b!7021578 () Bool)

(declare-fun e!4220826 () Bool)

(declare-fun tp!1934263 () Bool)

(declare-fun tp!1934264 () Bool)

(assert (=> b!7021578 (= e!4220826 (and tp!1934263 tp!1934264))))

(assert (=> b!7021530 (= tp!1934242 e!4220826)))

(assert (= (and b!7021530 (is-Cons!67613 (exprs!6894 setElem!48741))) b!7021578))

(declare-fun condSetEmpty!48747 () Bool)

(assert (=> setNonEmpty!48741 (= condSetEmpty!48747 (= setRest!48741 (as set.empty (Set Context!12788))))))

(declare-fun setRes!48747 () Bool)

(assert (=> setNonEmpty!48741 (= tp!1934243 setRes!48747)))

(declare-fun setIsEmpty!48747 () Bool)

(assert (=> setIsEmpty!48747 setRes!48747))

(declare-fun setNonEmpty!48747 () Bool)

(declare-fun tp!1934270 () Bool)

(declare-fun e!4220829 () Bool)

(declare-fun setElem!48747 () Context!12788)

(assert (=> setNonEmpty!48747 (= setRes!48747 (and tp!1934270 (inv!86355 setElem!48747) e!4220829))))

(declare-fun setRest!48747 () (Set Context!12788))

(assert (=> setNonEmpty!48747 (= setRest!48741 (set.union (set.insert setElem!48747 (as set.empty (Set Context!12788))) setRest!48747))))

(declare-fun b!7021583 () Bool)

(declare-fun tp!1934269 () Bool)

(assert (=> b!7021583 (= e!4220829 tp!1934269)))

(assert (= (and setNonEmpty!48741 condSetEmpty!48747) setIsEmpty!48747))

(assert (= (and setNonEmpty!48741 (not condSetEmpty!48747)) setNonEmpty!48747))

(assert (= setNonEmpty!48747 b!7021583))

(declare-fun m!7723528 () Bool)

(assert (=> setNonEmpty!48747 m!7723528))

(declare-fun b!7021584 () Bool)

(declare-fun e!4220830 () Bool)

(declare-fun tp!1934271 () Bool)

(declare-fun tp!1934272 () Bool)

(assert (=> b!7021584 (= e!4220830 (and tp!1934271 tp!1934272))))

(assert (=> b!7021528 (= tp!1934240 e!4220830)))

(assert (= (and b!7021528 (is-Cons!67613 (exprs!6894 ct2!306))) b!7021584))

(declare-fun b_lambda!265133 () Bool)

(assert (= b_lambda!265131 (or b!7021526 b_lambda!265133)))

(declare-fun bs!1867690 () Bool)

(declare-fun d!2188703 () Bool)

(assert (= bs!1867690 (and d!2188703 b!7021526)))

(assert (=> bs!1867690 (= (dynLambda!27239 lambda!411570 lt!2512197) (nullableContext!58 lt!2512197))))

(declare-fun m!7723530 () Bool)

(assert (=> bs!1867690 m!7723530))

(assert (=> d!2188689 d!2188703))

(push 1)

(assert (not bs!1867690))

(assert (not b!7021565))

(assert (not b!7021573))

(assert (not d!2188681))

(assert (not d!2188687))

(assert (not b_lambda!265133))

(assert (not b!7021564))

(assert (not b!7021584))

(assert (not setNonEmpty!48747))

(assert (not b!7021583))

(assert tp_is_empty!44021)

(assert (not d!2188701))

(assert (not d!2188693))

(assert (not d!2188685))

(assert (not d!2188697))

(assert (not d!2188689))

(assert (not d!2188683))

(assert (not b!7021578))

(assert (not d!2188695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


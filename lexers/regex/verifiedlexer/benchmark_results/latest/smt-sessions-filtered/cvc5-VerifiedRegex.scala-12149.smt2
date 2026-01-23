; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683314 () Bool)

(assert start!683314)

(declare-fun b!7051604 () Bool)

(declare-fun e!4239259 () Bool)

(declare-datatypes ((C!35358 0))(
  ( (C!35359 (val!27381 Int)) )
))
(declare-datatypes ((Regex!17544 0))(
  ( (ElementMatch!17544 (c!1313427 C!35358)) (Concat!26389 (regOne!35600 Regex!17544) (regTwo!35600 Regex!17544)) (EmptyExpr!17544) (Star!17544 (reg!17873 Regex!17544)) (EmptyLang!17544) (Union!17544 (regOne!35601 Regex!17544) (regTwo!35601 Regex!17544)) )
))
(declare-datatypes ((List!68158 0))(
  ( (Nil!68034) (Cons!68034 (h!74482 Regex!17544) (t!381937 List!68158)) )
))
(declare-datatypes ((Context!13080 0))(
  ( (Context!13081 (exprs!7040 List!68158)) )
))
(declare-fun lt!2529769 () (Set Context!13080))

(declare-datatypes ((List!68159 0))(
  ( (Nil!68035) (Cons!68035 (h!74483 C!35358) (t!381938 List!68159)) )
))
(declare-fun s!7408 () List!68159)

(declare-fun matchZipper!3084 ((Set Context!13080) List!68159) Bool)

(declare-datatypes ((List!68160 0))(
  ( (Nil!68036) (Cons!68036 (h!74484 Context!13080) (t!381939 List!68160)) )
))
(declare-fun content!13648 (List!68160) (Set Context!13080))

(declare-fun toList!10885 ((Set Context!13080)) List!68160)

(assert (=> b!7051604 (= e!4239259 (not (matchZipper!3084 (content!13648 (toList!10885 lt!2529769)) s!7408)))))

(declare-fun setIsEmpty!49676 () Bool)

(declare-fun setRes!49676 () Bool)

(assert (=> setIsEmpty!49676 setRes!49676))

(declare-fun res!2878852 () Bool)

(assert (=> start!683314 (=> (not res!2878852) (not e!4239259))))

(assert (=> start!683314 (= res!2878852 (matchZipper!3084 lt!2529769 s!7408))))

(declare-fun z1!570 () (Set Context!13080))

(declare-fun ct2!306 () Context!13080)

(declare-fun appendTo!665 ((Set Context!13080) Context!13080) (Set Context!13080))

(assert (=> start!683314 (= lt!2529769 (appendTo!665 z1!570 ct2!306))))

(assert (=> start!683314 e!4239259))

(declare-fun condSetEmpty!49676 () Bool)

(assert (=> start!683314 (= condSetEmpty!49676 (= z1!570 (as set.empty (Set Context!13080))))))

(assert (=> start!683314 setRes!49676))

(declare-fun e!4239256 () Bool)

(declare-fun inv!86720 (Context!13080) Bool)

(assert (=> start!683314 (and (inv!86720 ct2!306) e!4239256)))

(declare-fun e!4239258 () Bool)

(assert (=> start!683314 e!4239258))

(declare-fun b!7051605 () Bool)

(declare-fun e!4239257 () Bool)

(declare-fun tp!1939272 () Bool)

(assert (=> b!7051605 (= e!4239257 tp!1939272)))

(declare-fun setElem!49676 () Context!13080)

(declare-fun tp!1939271 () Bool)

(declare-fun setNonEmpty!49676 () Bool)

(assert (=> setNonEmpty!49676 (= setRes!49676 (and tp!1939271 (inv!86720 setElem!49676) e!4239257))))

(declare-fun setRest!49676 () (Set Context!13080))

(assert (=> setNonEmpty!49676 (= z1!570 (set.union (set.insert setElem!49676 (as set.empty (Set Context!13080))) setRest!49676))))

(declare-fun b!7051606 () Bool)

(declare-fun res!2878851 () Bool)

(assert (=> b!7051606 (=> (not res!2878851) (not e!4239259))))

(assert (=> b!7051606 (= res!2878851 (is-Cons!68035 s!7408))))

(declare-fun b!7051607 () Bool)

(declare-fun tp_is_empty!44313 () Bool)

(declare-fun tp!1939270 () Bool)

(assert (=> b!7051607 (= e!4239258 (and tp_is_empty!44313 tp!1939270))))

(declare-fun b!7051608 () Bool)

(declare-fun tp!1939269 () Bool)

(assert (=> b!7051608 (= e!4239256 tp!1939269)))

(assert (= (and start!683314 res!2878852) b!7051606))

(assert (= (and b!7051606 res!2878851) b!7051604))

(assert (= (and start!683314 condSetEmpty!49676) setIsEmpty!49676))

(assert (= (and start!683314 (not condSetEmpty!49676)) setNonEmpty!49676))

(assert (= setNonEmpty!49676 b!7051605))

(assert (= start!683314 b!7051608))

(assert (= (and start!683314 (is-Cons!68035 s!7408)) b!7051607))

(declare-fun m!7767966 () Bool)

(assert (=> b!7051604 m!7767966))

(assert (=> b!7051604 m!7767966))

(declare-fun m!7767968 () Bool)

(assert (=> b!7051604 m!7767968))

(assert (=> b!7051604 m!7767968))

(declare-fun m!7767970 () Bool)

(assert (=> b!7051604 m!7767970))

(declare-fun m!7767972 () Bool)

(assert (=> start!683314 m!7767972))

(declare-fun m!7767974 () Bool)

(assert (=> start!683314 m!7767974))

(declare-fun m!7767976 () Bool)

(assert (=> start!683314 m!7767976))

(declare-fun m!7767978 () Bool)

(assert (=> setNonEmpty!49676 m!7767978))

(push 1)

(assert (not b!7051608))

(assert (not start!683314))

(assert (not setNonEmpty!49676))

(assert (not b!7051607))

(assert (not b!7051605))

(assert (not b!7051604))

(assert tp_is_empty!44313)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2203396 () Bool)

(declare-fun c!1313431 () Bool)

(declare-fun isEmpty!39691 (List!68159) Bool)

(assert (=> d!2203396 (= c!1313431 (isEmpty!39691 s!7408))))

(declare-fun e!4239274 () Bool)

(assert (=> d!2203396 (= (matchZipper!3084 (content!13648 (toList!10885 lt!2529769)) s!7408) e!4239274)))

(declare-fun b!7051628 () Bool)

(declare-fun nullableZipper!2636 ((Set Context!13080)) Bool)

(assert (=> b!7051628 (= e!4239274 (nullableZipper!2636 (content!13648 (toList!10885 lt!2529769))))))

(declare-fun b!7051629 () Bool)

(declare-fun derivationStepZipper!2996 ((Set Context!13080) C!35358) (Set Context!13080))

(declare-fun head!14336 (List!68159) C!35358)

(declare-fun tail!13665 (List!68159) List!68159)

(assert (=> b!7051629 (= e!4239274 (matchZipper!3084 (derivationStepZipper!2996 (content!13648 (toList!10885 lt!2529769)) (head!14336 s!7408)) (tail!13665 s!7408)))))

(assert (= (and d!2203396 c!1313431) b!7051628))

(assert (= (and d!2203396 (not c!1313431)) b!7051629))

(declare-fun m!7767994 () Bool)

(assert (=> d!2203396 m!7767994))

(assert (=> b!7051628 m!7767968))

(declare-fun m!7767996 () Bool)

(assert (=> b!7051628 m!7767996))

(declare-fun m!7767998 () Bool)

(assert (=> b!7051629 m!7767998))

(assert (=> b!7051629 m!7767968))

(assert (=> b!7051629 m!7767998))

(declare-fun m!7768000 () Bool)

(assert (=> b!7051629 m!7768000))

(declare-fun m!7768002 () Bool)

(assert (=> b!7051629 m!7768002))

(assert (=> b!7051629 m!7768000))

(assert (=> b!7051629 m!7768002))

(declare-fun m!7768004 () Bool)

(assert (=> b!7051629 m!7768004))

(assert (=> b!7051604 d!2203396))

(declare-fun d!2203400 () Bool)

(declare-fun c!1313434 () Bool)

(assert (=> d!2203400 (= c!1313434 (is-Nil!68036 (toList!10885 lt!2529769)))))

(declare-fun e!4239277 () (Set Context!13080))

(assert (=> d!2203400 (= (content!13648 (toList!10885 lt!2529769)) e!4239277)))

(declare-fun b!7051634 () Bool)

(assert (=> b!7051634 (= e!4239277 (as set.empty (Set Context!13080)))))

(declare-fun b!7051635 () Bool)

(assert (=> b!7051635 (= e!4239277 (set.union (set.insert (h!74484 (toList!10885 lt!2529769)) (as set.empty (Set Context!13080))) (content!13648 (t!381939 (toList!10885 lt!2529769)))))))

(assert (= (and d!2203400 c!1313434) b!7051634))

(assert (= (and d!2203400 (not c!1313434)) b!7051635))

(declare-fun m!7768006 () Bool)

(assert (=> b!7051635 m!7768006))

(declare-fun m!7768008 () Bool)

(assert (=> b!7051635 m!7768008))

(assert (=> b!7051604 d!2203400))

(declare-fun d!2203402 () Bool)

(declare-fun e!4239280 () Bool)

(assert (=> d!2203402 e!4239280))

(declare-fun res!2878861 () Bool)

(assert (=> d!2203402 (=> (not res!2878861) (not e!4239280))))

(declare-fun lt!2529775 () List!68160)

(declare-fun noDuplicate!2670 (List!68160) Bool)

(assert (=> d!2203402 (= res!2878861 (noDuplicate!2670 lt!2529775))))

(declare-fun choose!53700 ((Set Context!13080)) List!68160)

(assert (=> d!2203402 (= lt!2529775 (choose!53700 lt!2529769))))

(assert (=> d!2203402 (= (toList!10885 lt!2529769) lt!2529775)))

(declare-fun b!7051638 () Bool)

(assert (=> b!7051638 (= e!4239280 (= (content!13648 lt!2529775) lt!2529769))))

(assert (= (and d!2203402 res!2878861) b!7051638))

(declare-fun m!7768010 () Bool)

(assert (=> d!2203402 m!7768010))

(declare-fun m!7768012 () Bool)

(assert (=> d!2203402 m!7768012))

(declare-fun m!7768014 () Bool)

(assert (=> b!7051638 m!7768014))

(assert (=> b!7051604 d!2203402))

(declare-fun d!2203404 () Bool)

(declare-fun lambda!419108 () Int)

(declare-fun forall!16476 (List!68158 Int) Bool)

(assert (=> d!2203404 (= (inv!86720 setElem!49676) (forall!16476 (exprs!7040 setElem!49676) lambda!419108))))

(declare-fun bs!1876265 () Bool)

(assert (= bs!1876265 d!2203404))

(declare-fun m!7768016 () Bool)

(assert (=> bs!1876265 m!7768016))

(assert (=> setNonEmpty!49676 d!2203404))

(declare-fun d!2203406 () Bool)

(declare-fun c!1313435 () Bool)

(assert (=> d!2203406 (= c!1313435 (isEmpty!39691 s!7408))))

(declare-fun e!4239281 () Bool)

(assert (=> d!2203406 (= (matchZipper!3084 lt!2529769 s!7408) e!4239281)))

(declare-fun b!7051639 () Bool)

(assert (=> b!7051639 (= e!4239281 (nullableZipper!2636 lt!2529769))))

(declare-fun b!7051640 () Bool)

(assert (=> b!7051640 (= e!4239281 (matchZipper!3084 (derivationStepZipper!2996 lt!2529769 (head!14336 s!7408)) (tail!13665 s!7408)))))

(assert (= (and d!2203406 c!1313435) b!7051639))

(assert (= (and d!2203406 (not c!1313435)) b!7051640))

(assert (=> d!2203406 m!7767994))

(declare-fun m!7768018 () Bool)

(assert (=> b!7051639 m!7768018))

(assert (=> b!7051640 m!7767998))

(assert (=> b!7051640 m!7767998))

(declare-fun m!7768020 () Bool)

(assert (=> b!7051640 m!7768020))

(assert (=> b!7051640 m!7768002))

(assert (=> b!7051640 m!7768020))

(assert (=> b!7051640 m!7768002))

(declare-fun m!7768022 () Bool)

(assert (=> b!7051640 m!7768022))

(assert (=> start!683314 d!2203406))

(declare-fun d!2203408 () Bool)

(assert (=> d!2203408 true))

(declare-fun lambda!419113 () Int)

(declare-fun map!15860 ((Set Context!13080) Int) (Set Context!13080))

(assert (=> d!2203408 (= (appendTo!665 z1!570 ct2!306) (map!15860 z1!570 lambda!419113))))

(declare-fun bs!1876266 () Bool)

(assert (= bs!1876266 d!2203408))

(declare-fun m!7768024 () Bool)

(assert (=> bs!1876266 m!7768024))

(assert (=> start!683314 d!2203408))

(declare-fun bs!1876267 () Bool)

(declare-fun d!2203410 () Bool)

(assert (= bs!1876267 (and d!2203410 d!2203404)))

(declare-fun lambda!419114 () Int)

(assert (=> bs!1876267 (= lambda!419114 lambda!419108)))

(assert (=> d!2203410 (= (inv!86720 ct2!306) (forall!16476 (exprs!7040 ct2!306) lambda!419114))))

(declare-fun bs!1876268 () Bool)

(assert (= bs!1876268 d!2203410))

(declare-fun m!7768026 () Bool)

(assert (=> bs!1876268 m!7768026))

(assert (=> start!683314 d!2203410))

(declare-fun b!7051647 () Bool)

(declare-fun e!4239284 () Bool)

(declare-fun tp!1939289 () Bool)

(declare-fun tp!1939290 () Bool)

(assert (=> b!7051647 (= e!4239284 (and tp!1939289 tp!1939290))))

(assert (=> b!7051608 (= tp!1939269 e!4239284)))

(assert (= (and b!7051608 (is-Cons!68034 (exprs!7040 ct2!306))) b!7051647))

(declare-fun b!7051652 () Bool)

(declare-fun e!4239287 () Bool)

(declare-fun tp!1939293 () Bool)

(assert (=> b!7051652 (= e!4239287 (and tp_is_empty!44313 tp!1939293))))

(assert (=> b!7051607 (= tp!1939270 e!4239287)))

(assert (= (and b!7051607 (is-Cons!68035 (t!381938 s!7408))) b!7051652))

(declare-fun condSetEmpty!49682 () Bool)

(assert (=> setNonEmpty!49676 (= condSetEmpty!49682 (= setRest!49676 (as set.empty (Set Context!13080))))))

(declare-fun setRes!49682 () Bool)

(assert (=> setNonEmpty!49676 (= tp!1939271 setRes!49682)))

(declare-fun setIsEmpty!49682 () Bool)

(assert (=> setIsEmpty!49682 setRes!49682))

(declare-fun setElem!49682 () Context!13080)

(declare-fun e!4239290 () Bool)

(declare-fun tp!1939299 () Bool)

(declare-fun setNonEmpty!49682 () Bool)

(assert (=> setNonEmpty!49682 (= setRes!49682 (and tp!1939299 (inv!86720 setElem!49682) e!4239290))))

(declare-fun setRest!49682 () (Set Context!13080))

(assert (=> setNonEmpty!49682 (= setRest!49676 (set.union (set.insert setElem!49682 (as set.empty (Set Context!13080))) setRest!49682))))

(declare-fun b!7051657 () Bool)

(declare-fun tp!1939298 () Bool)

(assert (=> b!7051657 (= e!4239290 tp!1939298)))

(assert (= (and setNonEmpty!49676 condSetEmpty!49682) setIsEmpty!49682))

(assert (= (and setNonEmpty!49676 (not condSetEmpty!49682)) setNonEmpty!49682))

(assert (= setNonEmpty!49682 b!7051657))

(declare-fun m!7768028 () Bool)

(assert (=> setNonEmpty!49682 m!7768028))

(declare-fun b!7051658 () Bool)

(declare-fun e!4239291 () Bool)

(declare-fun tp!1939300 () Bool)

(declare-fun tp!1939301 () Bool)

(assert (=> b!7051658 (= e!4239291 (and tp!1939300 tp!1939301))))

(assert (=> b!7051605 (= tp!1939272 e!4239291)))

(assert (= (and b!7051605 (is-Cons!68034 (exprs!7040 setElem!49676))) b!7051658))

(push 1)

(assert (not b!7051652))

(assert (not d!2203408))

(assert (not d!2203406))

(assert (not d!2203404))

(assert (not b!7051639))

(assert (not d!2203396))

(assert (not setNonEmpty!49682))

(assert (not b!7051628))

(assert (not b!7051658))

(assert tp_is_empty!44313)

(assert (not b!7051657))

(assert (not d!2203410))

(assert (not b!7051647))

(assert (not d!2203402))

(assert (not b!7051640))

(assert (not b!7051638))

(assert (not b!7051635))

(assert (not b!7051629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


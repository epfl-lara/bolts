; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543174 () Bool)

(assert start!543174)

(declare-fun res!2186667 () Bool)

(declare-fun e!3202009 () Bool)

(assert (=> start!543174 (=> (not res!2186667) (not e!3202009))))

(declare-datatypes ((C!29038 0))(
  ( (C!29039 (val!24171 Int)) )
))
(declare-datatypes ((Regex!14386 0))(
  ( (ElementMatch!14386 (c!883583 C!29038)) (Concat!23231 (regOne!29284 Regex!14386) (regTwo!29284 Regex!14386)) (EmptyExpr!14386) (Star!14386 (reg!14715 Regex!14386)) (EmptyLang!14386) (Union!14386 (regOne!29285 Regex!14386) (regTwo!29285 Regex!14386)) )
))
(declare-datatypes ((List!59709 0))(
  ( (Nil!59585) (Cons!59585 (h!66033 Regex!14386) (t!372736 List!59709)) )
))
(declare-datatypes ((Context!7540 0))(
  ( (Context!7541 (exprs!4270 List!59709)) )
))
(declare-fun ctx!74 () Context!7540)

(declare-fun lostCause!1336 (Context!7540) Bool)

(assert (=> start!543174 (= res!2186667 (lostCause!1336 ctx!74))))

(assert (=> start!543174 e!3202009))

(declare-fun e!3202010 () Bool)

(declare-fun inv!79147 (Context!7540) Bool)

(assert (=> start!543174 (and (inv!79147 ctx!74) e!3202010)))

(declare-fun b!5133716 () Bool)

(declare-fun size!39564 (List!59709) Int)

(assert (=> b!5133716 (= e!3202009 (< (size!39564 (exprs!4270 ctx!74)) 0))))

(declare-fun b!5133717 () Bool)

(declare-fun tp!1432008 () Bool)

(assert (=> b!5133717 (= e!3202010 tp!1432008)))

(assert (= (and start!543174 res!2186667) b!5133716))

(assert (= start!543174 b!5133717))

(declare-fun m!6199874 () Bool)

(assert (=> start!543174 m!6199874))

(declare-fun m!6199876 () Bool)

(assert (=> start!543174 m!6199876))

(declare-fun m!6199878 () Bool)

(assert (=> b!5133716 m!6199878))

(push 1)

(assert (not start!543174))

(assert (not b!5133716))

(assert (not b!5133717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1661163 () Bool)

(declare-fun lambda!255483 () Int)

(declare-fun exists!1712 (List!59709 Int) Bool)

(assert (=> d!1661163 (= (lostCause!1336 ctx!74) (exists!1712 (exprs!4270 ctx!74) lambda!255483))))

(declare-fun bs!1199392 () Bool)

(assert (= bs!1199392 d!1661163))

(declare-fun m!6199888 () Bool)

(assert (=> bs!1199392 m!6199888))

(assert (=> start!543174 d!1661163))

(declare-fun bs!1199393 () Bool)

(declare-fun d!1661169 () Bool)

(assert (= bs!1199393 (and d!1661169 d!1661163)))

(declare-fun lambda!255486 () Int)

(assert (=> bs!1199393 (not (= lambda!255486 lambda!255483))))

(declare-fun forall!13836 (List!59709 Int) Bool)

(assert (=> d!1661169 (= (inv!79147 ctx!74) (forall!13836 (exprs!4270 ctx!74) lambda!255486))))

(declare-fun bs!1199394 () Bool)

(assert (= bs!1199394 d!1661169))

(declare-fun m!6199890 () Bool)

(assert (=> bs!1199394 m!6199890))

(assert (=> start!543174 d!1661169))

(declare-fun d!1661171 () Bool)

(declare-fun lt!2118731 () Int)

(assert (=> d!1661171 (>= lt!2118731 0)))

(declare-fun e!3202022 () Int)

(assert (=> d!1661171 (= lt!2118731 e!3202022)))

(declare-fun c!883590 () Bool)

(assert (=> d!1661171 (= c!883590 (is-Nil!59585 (exprs!4270 ctx!74)))))

(assert (=> d!1661171 (= (size!39564 (exprs!4270 ctx!74)) lt!2118731)))

(declare-fun b!5133734 () Bool)

(assert (=> b!5133734 (= e!3202022 0)))

(declare-fun b!5133735 () Bool)

(assert (=> b!5133735 (= e!3202022 (+ 1 (size!39564 (t!372736 (exprs!4270 ctx!74)))))))

(assert (= (and d!1661171 c!883590) b!5133734))

(assert (= (and d!1661171 (not c!883590)) b!5133735))

(declare-fun m!6199892 () Bool)

(assert (=> b!5133735 m!6199892))

(assert (=> b!5133716 d!1661171))

(declare-fun b!5133740 () Bool)

(declare-fun e!3202025 () Bool)

(declare-fun tp!1432016 () Bool)

(declare-fun tp!1432017 () Bool)

(assert (=> b!5133740 (= e!3202025 (and tp!1432016 tp!1432017))))

(assert (=> b!5133717 (= tp!1432008 e!3202025)))

(assert (= (and b!5133717 (is-Cons!59585 (exprs!4270 ctx!74))) b!5133740))

(push 1)

(assert (not d!1661163))

(assert (not d!1661169))

(assert (not b!5133735))

(assert (not b!5133740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


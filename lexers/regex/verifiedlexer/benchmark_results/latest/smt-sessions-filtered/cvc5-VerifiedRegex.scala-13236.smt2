; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720388 () Bool)

(assert start!720388)

(declare-fun res!2978169 () Bool)

(declare-fun e!4420345 () Bool)

(assert (=> start!720388 (=> (not res!2978169) (not e!4420345))))

(declare-datatypes ((C!38966 0))(
  ( (C!38967 (val!29857 Int)) )
))
(declare-datatypes ((Regex!19346 0))(
  ( (ElementMatch!19346 (c!1372646 C!38966)) (Concat!28191 (regOne!39204 Regex!19346) (regTwo!39204 Regex!19346)) (EmptyExpr!19346) (Star!19346 (reg!19675 Regex!19346)) (EmptyLang!19346) (Union!19346 (regOne!39205 Regex!19346) (regTwo!39205 Regex!19346)) )
))
(declare-datatypes ((List!71856 0))(
  ( (Nil!71732) (Cons!71732 (h!78180 Regex!19346) (t!386407 List!71856)) )
))
(declare-fun l!7595 () List!71856)

(declare-datatypes ((Context!16572 0))(
  ( (Context!16573 (exprs!8786 List!71856)) )
))
(declare-fun c!9614 () Context!16572)

(assert (=> start!720388 (= res!2978169 (= l!7595 (exprs!8786 c!9614)))))

(assert (=> start!720388 e!4420345))

(declare-fun e!4420346 () Bool)

(assert (=> start!720388 e!4420346))

(declare-fun e!4420347 () Bool)

(declare-fun inv!91727 (Context!16572) Bool)

(assert (=> start!720388 (and (inv!91727 c!9614) e!4420347)))

(declare-fun b!7384773 () Bool)

(declare-fun lambda!458791 () Int)

(declare-fun forall!18139 (List!71856 Int) Bool)

(assert (=> b!7384773 (= e!4420345 (not (forall!18139 l!7595 lambda!458791)))))

(declare-fun b!7384774 () Bool)

(declare-fun tp!2100907 () Bool)

(declare-fun tp!2100906 () Bool)

(assert (=> b!7384774 (= e!4420346 (and tp!2100907 tp!2100906))))

(declare-fun b!7384775 () Bool)

(declare-fun tp!2100905 () Bool)

(assert (=> b!7384775 (= e!4420347 tp!2100905)))

(assert (= (and start!720388 res!2978169) b!7384773))

(assert (= (and start!720388 (is-Cons!71732 l!7595)) b!7384774))

(assert (= start!720388 b!7384775))

(declare-fun m!8033514 () Bool)

(assert (=> start!720388 m!8033514))

(declare-fun m!8033516 () Bool)

(assert (=> b!7384773 m!8033516))

(push 1)

(assert (not b!7384773))

(assert (not start!720388))

(assert (not b!7384774))

(assert (not b!7384775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286369 () Bool)

(declare-fun res!2978177 () Bool)

(declare-fun e!4420361 () Bool)

(assert (=> d!2286369 (=> res!2978177 e!4420361)))

(assert (=> d!2286369 (= res!2978177 (is-Nil!71732 l!7595))))

(assert (=> d!2286369 (= (forall!18139 l!7595 lambda!458791) e!4420361)))

(declare-fun b!7384789 () Bool)

(declare-fun e!4420362 () Bool)

(assert (=> b!7384789 (= e!4420361 e!4420362)))

(declare-fun res!2978178 () Bool)

(assert (=> b!7384789 (=> (not res!2978178) (not e!4420362))))

(declare-fun dynLambda!29549 (Int Regex!19346) Bool)

(assert (=> b!7384789 (= res!2978178 (dynLambda!29549 lambda!458791 (h!78180 l!7595)))))

(declare-fun b!7384790 () Bool)

(assert (=> b!7384790 (= e!4420362 (forall!18139 (t!386407 l!7595) lambda!458791))))

(assert (= (and d!2286369 (not res!2978177)) b!7384789))

(assert (= (and b!7384789 res!2978178) b!7384790))

(declare-fun b_lambda!284931 () Bool)

(assert (=> (not b_lambda!284931) (not b!7384789)))

(declare-fun m!8033522 () Bool)

(assert (=> b!7384789 m!8033522))

(declare-fun m!8033524 () Bool)

(assert (=> b!7384790 m!8033524))

(assert (=> b!7384773 d!2286369))

(declare-fun bs!1921889 () Bool)

(declare-fun d!2286371 () Bool)

(assert (= bs!1921889 (and d!2286371 b!7384773)))

(declare-fun lambda!458797 () Int)

(assert (=> bs!1921889 (= lambda!458797 lambda!458791)))

(assert (=> d!2286371 (= (inv!91727 c!9614) (forall!18139 (exprs!8786 c!9614) lambda!458797))))

(declare-fun bs!1921890 () Bool)

(assert (= bs!1921890 d!2286371))

(declare-fun m!8033526 () Bool)

(assert (=> bs!1921890 m!8033526))

(assert (=> start!720388 d!2286371))

(declare-fun e!4420365 () Bool)

(assert (=> b!7384774 (= tp!2100907 e!4420365)))

(declare-fun b!7384804 () Bool)

(declare-fun tp!2100930 () Bool)

(declare-fun tp!2100927 () Bool)

(assert (=> b!7384804 (= e!4420365 (and tp!2100930 tp!2100927))))

(declare-fun b!7384802 () Bool)

(declare-fun tp!2100929 () Bool)

(declare-fun tp!2100928 () Bool)

(assert (=> b!7384802 (= e!4420365 (and tp!2100929 tp!2100928))))

(declare-fun b!7384803 () Bool)

(declare-fun tp!2100931 () Bool)

(assert (=> b!7384803 (= e!4420365 tp!2100931)))

(declare-fun b!7384801 () Bool)

(declare-fun tp_is_empty!48955 () Bool)

(assert (=> b!7384801 (= e!4420365 tp_is_empty!48955)))

(assert (= (and b!7384774 (is-ElementMatch!19346 (h!78180 l!7595))) b!7384801))

(assert (= (and b!7384774 (is-Concat!28191 (h!78180 l!7595))) b!7384802))

(assert (= (and b!7384774 (is-Star!19346 (h!78180 l!7595))) b!7384803))

(assert (= (and b!7384774 (is-Union!19346 (h!78180 l!7595))) b!7384804))

(declare-fun b!7384809 () Bool)

(declare-fun e!4420368 () Bool)

(declare-fun tp!2100936 () Bool)

(declare-fun tp!2100937 () Bool)

(assert (=> b!7384809 (= e!4420368 (and tp!2100936 tp!2100937))))

(assert (=> b!7384774 (= tp!2100906 e!4420368)))

(assert (= (and b!7384774 (is-Cons!71732 (t!386407 l!7595))) b!7384809))

(declare-fun b!7384810 () Bool)

(declare-fun e!4420369 () Bool)

(declare-fun tp!2100938 () Bool)

(declare-fun tp!2100939 () Bool)

(assert (=> b!7384810 (= e!4420369 (and tp!2100938 tp!2100939))))

(assert (=> b!7384775 (= tp!2100905 e!4420369)))

(assert (= (and b!7384775 (is-Cons!71732 (exprs!8786 c!9614))) b!7384810))

(declare-fun b_lambda!284933 () Bool)

(assert (= b_lambda!284931 (or b!7384773 b_lambda!284933)))

(declare-fun bs!1921893 () Bool)

(declare-fun d!2286377 () Bool)

(assert (= bs!1921893 (and d!2286377 b!7384773)))

(declare-fun validRegex!9937 (Regex!19346) Bool)

(assert (=> bs!1921893 (= (dynLambda!29549 lambda!458791 (h!78180 l!7595)) (validRegex!9937 (h!78180 l!7595)))))

(declare-fun m!8033530 () Bool)

(assert (=> bs!1921893 m!8033530))

(assert (=> b!7384789 d!2286377))

(push 1)

(assert (not b!7384810))

(assert (not bs!1921893))

(assert (not b!7384809))

(assert (not b_lambda!284933))

(assert (not b!7384804))

(assert (not b!7384790))

(assert (not b!7384803))

(assert tp_is_empty!48955)

(assert (not b!7384802))

(assert (not d!2286371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


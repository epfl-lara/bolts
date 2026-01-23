; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252674 () Bool)

(assert start!252674)

(declare-fun b!2600284 () Bool)

(assert (=> b!2600284 true))

(declare-fun res!1095269 () Bool)

(declare-fun e!1641360 () Bool)

(assert (=> start!252674 (=> (not res!1095269) (not e!1641360))))

(declare-datatypes ((B!2383 0))(
  ( (B!2384 (val!9659 Int)) )
))
(declare-datatypes ((List!30092 0))(
  ( (Nil!29992) (Cons!29992 (h!35412 B!2383) (t!213141 List!30092)) )
))
(declare-fun refL!9 () List!30092)

(declare-fun isEmpty!17145 (List!30092) Bool)

(assert (=> start!252674 (= res!1095269 (not (isEmpty!17145 refL!9)))))

(assert (=> start!252674 e!1641360))

(declare-fun e!1641358 () Bool)

(assert (=> start!252674 e!1641358))

(declare-fun e!1641359 () Bool)

(assert (=> start!252674 e!1641359))

(declare-fun b!2600287 () Bool)

(declare-fun tp_is_empty!13663 () Bool)

(declare-fun tp!823834 () Bool)

(assert (=> b!2600287 (= e!1641359 (and tp_is_empty!13663 tp!823834))))

(declare-fun b!2600286 () Bool)

(declare-fun tp!823833 () Bool)

(assert (=> b!2600286 (= e!1641358 (and tp_is_empty!13663 tp!823833))))

(declare-fun b!2600285 () Bool)

(assert (=> b!2600285 (= e!1641360 (= refL!9 Nil!29992))))

(declare-fun res!1095268 () Bool)

(assert (=> b!2600284 (=> (not res!1095268) (not e!1641360))))

(declare-fun l!3766 () List!30092)

(declare-fun lambda!97241 () Int)

(declare-fun forall!6171 (List!30092 Int) Bool)

(assert (=> b!2600284 (= res!1095268 (forall!6171 l!3766 lambda!97241))))

(assert (= (and start!252674 res!1095269) b!2600284))

(assert (= (and b!2600284 res!1095268) b!2600285))

(assert (= (and start!252674 (is-Cons!29992 refL!9)) b!2600286))

(assert (= (and start!252674 (is-Cons!29992 l!3766)) b!2600287))

(declare-fun m!2935729 () Bool)

(assert (=> start!252674 m!2935729))

(declare-fun m!2935731 () Bool)

(assert (=> b!2600284 m!2935731))

(push 1)

(assert (not b!2600284))

(assert (not b!2600287))

(assert tp_is_empty!13663)

(assert (not start!252674))

(assert (not b!2600286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736680 () Bool)

(assert (=> d!736680 (= (isEmpty!17145 refL!9) (is-Nil!29992 refL!9))))

(assert (=> start!252674 d!736680))

(declare-fun d!736682 () Bool)

(declare-fun res!1095280 () Bool)

(declare-fun e!1641376 () Bool)

(assert (=> d!736682 (=> res!1095280 e!1641376)))

(assert (=> d!736682 (= res!1095280 (is-Nil!29992 l!3766))))

(assert (=> d!736682 (= (forall!6171 l!3766 lambda!97241) e!1641376)))

(declare-fun b!2600308 () Bool)

(declare-fun e!1641377 () Bool)

(assert (=> b!2600308 (= e!1641376 e!1641377)))

(declare-fun res!1095281 () Bool)

(assert (=> b!2600308 (=> (not res!1095281) (not e!1641377))))

(declare-fun dynLambda!12680 (Int B!2383) Bool)

(assert (=> b!2600308 (= res!1095281 (dynLambda!12680 lambda!97241 (h!35412 l!3766)))))

(declare-fun b!2600309 () Bool)

(assert (=> b!2600309 (= e!1641377 (forall!6171 (t!213141 l!3766) lambda!97241))))

(assert (= (and d!736682 (not res!1095280)) b!2600308))

(assert (= (and b!2600308 res!1095281) b!2600309))

(declare-fun b_lambda!77803 () Bool)

(assert (=> (not b_lambda!77803) (not b!2600308)))

(declare-fun m!2935737 () Bool)

(assert (=> b!2600308 m!2935737))

(declare-fun m!2935739 () Bool)

(assert (=> b!2600309 m!2935739))

(assert (=> b!2600284 d!736682))

(declare-fun b!2600314 () Bool)

(declare-fun e!1641380 () Bool)

(declare-fun tp!823843 () Bool)

(assert (=> b!2600314 (= e!1641380 (and tp_is_empty!13663 tp!823843))))

(assert (=> b!2600286 (= tp!823833 e!1641380)))

(assert (= (and b!2600286 (is-Cons!29992 (t!213141 refL!9))) b!2600314))

(declare-fun b!2600315 () Bool)

(declare-fun e!1641381 () Bool)

(declare-fun tp!823844 () Bool)

(assert (=> b!2600315 (= e!1641381 (and tp_is_empty!13663 tp!823844))))

(assert (=> b!2600287 (= tp!823834 e!1641381)))

(assert (= (and b!2600287 (is-Cons!29992 (t!213141 l!3766))) b!2600315))

(declare-fun b_lambda!77805 () Bool)

(assert (= b_lambda!77803 (or b!2600284 b_lambda!77805)))

(declare-fun bs!473157 () Bool)

(declare-fun d!736684 () Bool)

(assert (= bs!473157 (and d!736684 b!2600284)))

(declare-fun contains!5537 (List!30092 B!2383) Bool)

(assert (=> bs!473157 (= (dynLambda!12680 lambda!97241 (h!35412 l!3766)) (contains!5537 refL!9 (h!35412 l!3766)))))

(declare-fun m!2935741 () Bool)

(assert (=> bs!473157 m!2935741))

(assert (=> b!2600308 d!736684))

(push 1)

(assert (not bs!473157))

(assert (not b!2600314))

(assert (not b!2600315))

(assert (not b_lambda!77805))

(assert tp_is_empty!13663)

(assert (not b!2600309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


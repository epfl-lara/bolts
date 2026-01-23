; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216160 () Bool)

(assert start!216160)

(declare-fun res!952705 () Bool)

(declare-fun e!1416655 () Bool)

(assert (=> start!216160 (=> (not res!952705) (not e!1416655))))

(declare-datatypes ((B!1807 0))(
  ( (B!1808 (val!7429 Int)) )
))
(declare-datatypes ((List!26057 0))(
  ( (Nil!25973) (Cons!25973 (h!31374 B!1807) (t!199373 List!26057)) )
))
(declare-fun l!3389 () List!26057)

(declare-fun isEmpty!14851 (List!26057) Bool)

(assert (=> start!216160 (= res!952705 (not (isEmpty!14851 l!3389)))))

(assert (=> start!216160 e!1416655))

(declare-fun e!1416656 () Bool)

(assert (=> start!216160 e!1416656))

(declare-fun b!2218355 () Bool)

(assert (=> b!2218355 (= e!1416655 (and (or (not (is-Cons!25973 l!3389)) (not (is-Nil!25973 (t!199373 l!3389)))) (not (is-Cons!25973 l!3389))))))

(declare-fun b!2218356 () Bool)

(declare-fun tp_is_empty!9855 () Bool)

(declare-fun tp!691095 () Bool)

(assert (=> b!2218356 (= e!1416656 (and tp_is_empty!9855 tp!691095))))

(assert (= (and start!216160 res!952705) b!2218355))

(assert (= (and start!216160 (is-Cons!25973 l!3389)) b!2218356))

(declare-fun m!2659223 () Bool)

(assert (=> start!216160 m!2659223))

(push 1)

(assert (not start!216160))

(assert (not b!2218356))

(assert tp_is_empty!9855)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663123 () Bool)

(assert (=> d!663123 (= (isEmpty!14851 l!3389) (is-Nil!25973 l!3389))))

(assert (=> start!216160 d!663123))

(declare-fun b!2218367 () Bool)

(declare-fun e!1416665 () Bool)

(declare-fun tp!691101 () Bool)

(assert (=> b!2218367 (= e!1416665 (and tp_is_empty!9855 tp!691101))))

(assert (=> b!2218356 (= tp!691095 e!1416665)))

(assert (= (and b!2218356 (is-Cons!25973 (t!199373 l!3389))) b!2218367))

(push 1)

(assert (not b!2218367))

(assert tp_is_empty!9855)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


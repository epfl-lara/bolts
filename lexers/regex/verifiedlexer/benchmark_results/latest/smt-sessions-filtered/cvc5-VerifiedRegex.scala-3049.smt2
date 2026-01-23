; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182796 () Bool)

(assert start!182796)

(declare-fun res!826089 () Bool)

(declare-fun e!1174381 () Bool)

(assert (=> start!182796 (=> (not res!826089) (not e!1174381))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1447 0))(
  ( (B!1448 (val!5671 Int)) )
))
(declare-datatypes ((List!20271 0))(
  ( (Nil!20201) (Cons!20201 (h!25602 B!1447) (t!171700 List!20271)) )
))
(declare-fun l!3005 () List!20271)

(assert (=> start!182796 (= res!826089 (and (>= i!921 0) (not (is-Nil!20201 l!3005)) (not (= i!921 0))))))

(assert (=> start!182796 e!1174381))

(assert (=> start!182796 true))

(declare-fun e!1174380 () Bool)

(assert (=> start!182796 e!1174380))

(declare-fun e!1174379 () Bool)

(assert (=> start!182796 e!1174379))

(declare-fun b!1837887 () Bool)

(assert (=> b!1837887 (= e!1174381 false)))

(declare-fun lt!713233 () List!20271)

(declare-fun acc!274 () List!20271)

(declare-fun ++!5474 (List!20271 List!20271) List!20271)

(assert (=> b!1837887 (= lt!713233 (++!5474 acc!274 (Cons!20201 (h!25602 l!3005) Nil!20201)))))

(declare-fun b!1837888 () Bool)

(declare-fun tp_is_empty!8195 () Bool)

(declare-fun tp!519913 () Bool)

(assert (=> b!1837888 (= e!1174380 (and tp_is_empty!8195 tp!519913))))

(declare-fun b!1837889 () Bool)

(declare-fun tp!519914 () Bool)

(assert (=> b!1837889 (= e!1174379 (and tp_is_empty!8195 tp!519914))))

(assert (= (and start!182796 res!826089) b!1837887))

(assert (= (and start!182796 (is-Cons!20201 l!3005)) b!1837888))

(assert (= (and start!182796 (is-Cons!20201 acc!274)) b!1837889))

(declare-fun m!2265785 () Bool)

(assert (=> b!1837887 m!2265785))

(push 1)

(assert (not b!1837887))

(assert (not b!1837889))

(assert (not b!1837888))

(assert tp_is_empty!8195)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


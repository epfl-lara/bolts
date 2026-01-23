; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251530 () Bool)

(assert start!251530)

(declare-fun lt!913166 () Bool)

(declare-datatypes ((B!2107 0))(
  ( (B!2108 (val!9521 Int)) )
))
(declare-datatypes ((List!29954 0))(
  ( (Nil!29854) (Cons!29854 (h!35274 B!2107) (t!212967 List!29954)) )
))
(declare-fun l!3230 () List!29954)

(declare-fun noDuplicate!402 (List!29954) Bool)

(assert (=> start!251530 (= lt!913166 (noDuplicate!402 l!3230))))

(assert (=> start!251530 false))

(declare-fun e!1636596 () Bool)

(assert (=> start!251530 e!1636596))

(declare-fun b!2593932 () Bool)

(declare-fun tp_is_empty!13387 () Bool)

(declare-fun tp!822901 () Bool)

(assert (=> b!2593932 (= e!1636596 (and tp_is_empty!13387 tp!822901))))

(assert (= (and start!251530 (is-Cons!29854 l!3230)) b!2593932))

(declare-fun m!2930069 () Bool)

(assert (=> start!251530 m!2930069))

(push 1)

(assert (not start!251530))

(assert (not b!2593932))

(assert tp_is_empty!13387)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


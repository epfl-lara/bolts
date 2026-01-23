; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252670 () Bool)

(assert start!252670)

(declare-fun b_free!72973 () Bool)

(declare-fun b_next!73677 () Bool)

(assert (=> start!252670 (= b_free!72973 (not b_next!73677))))

(declare-fun tp!823822 () Bool)

(declare-fun b_and!190263 () Bool)

(assert (=> start!252670 (= tp!823822 b_and!190263)))

(declare-fun res!1095260 () Bool)

(declare-fun e!1641342 () Bool)

(assert (=> start!252670 (=> (not res!1095260) (not e!1641342))))

(declare-datatypes ((B!2379 0))(
  ( (B!2380 (val!9657 Int)) )
))
(declare-datatypes ((List!30090 0))(
  ( (Nil!29990) (Cons!29990 (h!35410 B!2379) (t!213139 List!30090)) )
))
(declare-fun l!3788 () List!30090)

(declare-fun noDuplicate!538 (List!30090) Bool)

(assert (=> start!252670 (= res!1095260 (noDuplicate!538 l!3788))))

(assert (=> start!252670 e!1641342))

(declare-fun e!1641343 () Bool)

(assert (=> start!252670 e!1641343))

(assert (=> start!252670 tp!823822))

(declare-fun b!2600268 () Bool)

(assert (=> b!2600268 (= e!1641342 false)))

(declare-fun b!2600269 () Bool)

(declare-fun tp_is_empty!13659 () Bool)

(declare-fun tp!823821 () Bool)

(assert (=> b!2600269 (= e!1641343 (and tp_is_empty!13659 tp!823821))))

(assert (= (and start!252670 res!1095260) b!2600268))

(assert (= (and start!252670 (is-Cons!29990 l!3788)) b!2600269))

(declare-fun m!2935725 () Bool)

(assert (=> start!252670 m!2935725))

(push 1)

(assert tp_is_empty!13659)

(assert (not b!2600269))

(assert b_and!190263)

(assert (not b_next!73677))

(assert (not start!252670))

(check-sat)

(pop 1)

(push 1)

(assert b_and!190263)

(assert (not b_next!73677))

(check-sat)

(pop 1)


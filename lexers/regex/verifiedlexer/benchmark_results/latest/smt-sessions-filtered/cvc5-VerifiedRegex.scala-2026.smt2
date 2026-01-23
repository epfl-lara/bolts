; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!103960 () Bool)

(assert start!103960)

(declare-fun res!532067 () Bool)

(declare-fun e!755143 () Bool)

(assert (=> start!103960 (=> (not res!532067) (not e!755143))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(assert (=> start!103960 (= res!532067 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103960 e!755143))

(assert (=> start!103960 true))

(declare-fun e!755142 () Bool)

(assert (=> start!103960 e!755142))

(declare-fun b!1176706 () Bool)

(declare-fun res!532066 () Bool)

(assert (=> b!1176706 (=> (not res!532066) (not e!755143))))

(declare-datatypes ((B!1215 0))(
  ( (B!1216 (val!3717 Int)) )
))
(declare-datatypes ((List!11664 0))(
  ( (Nil!11640) (Cons!11640 (h!17041 B!1215) (t!111156 List!11664)) )
))
(declare-fun l!2952 () List!11664)

(declare-fun size!9204 (List!11664) Int)

(assert (=> b!1176706 (= res!532066 (<= j!89 (size!9204 l!2952)))))

(declare-fun b!1176707 () Bool)

(assert (=> b!1176707 (= e!755143 (and (not (is-Nil!11640 l!2952)) (= i!757 0) (= j!89 0) (or (> 0 i!757) (> i!757 j!89))))))

(declare-fun b!1176708 () Bool)

(declare-fun tp_is_empty!5737 () Bool)

(declare-fun tp!335093 () Bool)

(assert (=> b!1176708 (= e!755142 (and tp_is_empty!5737 tp!335093))))

(assert (= (and start!103960 res!532067) b!1176706))

(assert (= (and b!1176706 res!532066) b!1176707))

(assert (= (and start!103960 (is-Cons!11640 l!2952)) b!1176708))

(declare-fun m!1354215 () Bool)

(assert (=> b!1176706 m!1354215))

(push 1)

(assert (not b!1176706))

(assert (not b!1176708))

(assert tp_is_empty!5737)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


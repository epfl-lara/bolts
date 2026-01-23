; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231010 () Bool)

(assert start!231010)

(assert (=> start!231010 false))

(declare-fun e!1505339 () Bool)

(assert (=> start!231010 e!1505339))

(declare-fun e!1505340 () Bool)

(assert (=> start!231010 e!1505340))

(declare-fun b!2357261 () Bool)

(declare-fun tp_is_empty!11099 () Bool)

(declare-fun tp!753526 () Bool)

(assert (=> b!2357261 (= e!1505339 (and tp_is_empty!11099 tp!753526))))

(declare-fun b!2357262 () Bool)

(declare-fun tp!753527 () Bool)

(assert (=> b!2357262 (= e!1505340 (and tp_is_empty!11099 tp!753527))))

(declare-datatypes ((B!1843 0))(
  ( (B!1844 (val!8133 Int)) )
))
(declare-datatypes ((List!27945 0))(
  ( (Nil!27847) (Cons!27847 (h!33248 B!1843) (t!207804 List!27945)) )
))
(declare-fun l1!1275 () List!27945)

(assert (= (and start!231010 (is-Cons!27847 l1!1275)) b!2357261))

(declare-fun l3!250 () List!27945)

(assert (= (and start!231010 (is-Cons!27847 l3!250)) b!2357262))

(push 1)

(assert (not b!2357262))

(assert (not b!2357261))

(assert tp_is_empty!11099)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


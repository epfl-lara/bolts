; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7586 () Bool)

(assert start!7586)

(assert (=> start!7586 false))

(declare-fun e!31075 () Bool)

(assert (=> start!7586 e!31075))

(assert (=> start!7586 true))

(declare-fun b!48417 () Bool)

(declare-fun tp_is_empty!2093 () Bool)

(declare-fun tp!6380 () Bool)

(assert (=> b!48417 (= e!31075 (and tp_is_empty!2093 tp!6380))))

(declare-datatypes ((B!942 0))(
  ( (B!943 (val!1091 Int)) )
))
(declare-datatypes ((tuple2!1768 0))(
  ( (tuple2!1769 (_1!894 (_ BitVec 64)) (_2!894 B!942)) )
))
(declare-datatypes ((List!1307 0))(
  ( (Nil!1304) (Cons!1303 (h!1883 tuple2!1768) (t!4343 List!1307)) )
))
(declare-fun l!1333 () List!1307)

(assert (= (and start!7586 (is-Cons!1303 l!1333)) b!48417))

(push 1)

(assert (not b!48417))

(assert tp_is_empty!2093)

(check-sat)

(pop 1)


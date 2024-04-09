; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7630 () Bool)

(assert start!7630)

(assert (=> start!7630 false))

(declare-fun e!31240 () Bool)

(assert (=> start!7630 e!31240))

(assert (=> start!7630 true))

(declare-fun b!48657 () Bool)

(declare-fun tp_is_empty!2113 () Bool)

(declare-fun tp!6428 () Bool)

(assert (=> b!48657 (= e!31240 (and tp_is_empty!2113 tp!6428))))

(declare-datatypes ((B!962 0))(
  ( (B!963 (val!1101 Int)) )
))
(declare-datatypes ((tuple2!1788 0))(
  ( (tuple2!1789 (_1!904 (_ BitVec 64)) (_2!904 B!962)) )
))
(declare-datatypes ((List!1317 0))(
  ( (Nil!1314) (Cons!1313 (h!1893 tuple2!1788) (t!4353 List!1317)) )
))
(declare-fun l!1333 () List!1317)

(assert (= (and start!7630 (is-Cons!1313 l!1333)) b!48657))

(push 1)

(assert (not b!48657))

(assert tp_is_empty!2113)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


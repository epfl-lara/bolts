; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274384 () Bool)

(assert start!274384)

(declare-fun b_free!81053 () Bool)

(declare-fun b_next!81757 () Bool)

(assert (=> start!274384 (= b_free!81053 (not b_next!81757))))

(declare-fun tp!902814 () Bool)

(declare-fun b_and!206591 () Bool)

(assert (=> start!274384 (= tp!902814 b_and!206591)))

(assert (=> start!274384 false))

(declare-fun e!1788992 () Bool)

(assert (=> start!274384 e!1788992))

(assert (=> start!274384 tp!902814))

(declare-fun e!1788991 () Bool)

(assert (=> start!274384 e!1788991))

(declare-fun b!2826638 () Bool)

(declare-fun tp_is_empty!14489 () Bool)

(declare-fun tp!902815 () Bool)

(assert (=> b!2826638 (= e!1788992 (and tp_is_empty!14489 tp!902815))))

(declare-fun b!2826639 () Bool)

(declare-fun tp!902813 () Bool)

(assert (=> b!2826639 (= e!1788991 (and tp_is_empty!14489 tp!902813))))

(declare-datatypes ((B!2439 0))(
  ( (B!2440 (val!10439 Int)) )
))
(declare-datatypes ((List!33328 0))(
  ( (Nil!33204) (Cons!33204 (h!38624 B!2439) (t!231023 List!33328)) )
))
(declare-fun l2!930 () List!33328)

(assert (= (and start!274384 (is-Cons!33204 l2!930)) b!2826638))

(declare-fun l1!953 () List!33328)

(assert (= (and start!274384 (is-Cons!33204 l1!953)) b!2826639))

(push 1)

(assert b_and!206591)

(assert (not b!2826639))

(assert tp_is_empty!14489)

(assert (not b!2826638))

(assert (not b_next!81757))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206591)

(assert (not b_next!81757))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187370 () Bool)

(assert start!187370)

(declare-fun lt!719394 () Int)

(declare-datatypes ((T!33422 0))(
  ( (T!33423 (val!5985 Int)) )
))
(declare-datatypes ((List!20802 0))(
  ( (Nil!20720) (Cons!20720 (h!26121 T!33422) (t!173019 List!20802)) )
))
(declare-fun l!2791 () List!20802)

(declare-fun size!16453 (List!20802) Int)

(assert (=> start!187370 (= lt!719394 (size!16453 l!2791))))

(assert (=> start!187370 false))

(declare-fun e!1193820 () Bool)

(assert (=> start!187370 e!1193820))

(declare-fun b!1871251 () Bool)

(declare-fun tp_is_empty!8749 () Bool)

(declare-fun tp!532334 () Bool)

(assert (=> b!1871251 (= e!1193820 (and tp_is_empty!8749 tp!532334))))

(assert (= (and start!187370 (is-Cons!20720 l!2791)) b!1871251))

(declare-fun m!2297311 () Bool)

(assert (=> start!187370 m!2297311))

(push 1)

(assert (not start!187370))

(assert (not b!1871251))

(assert tp_is_empty!8749)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187326 () Bool)

(assert start!187326)

(declare-fun lt!719290 () Int)

(declare-datatypes ((T!33296 0))(
  ( (T!33297 (val!5967 Int)) )
))
(declare-datatypes ((List!20784 0))(
  ( (Nil!20702) (Cons!20702 (h!26103 T!33296) (t!173001 List!20784)) )
))
(declare-fun l!2791 () List!20784)

(declare-fun size!16435 (List!20784) Int)

(assert (=> start!187326 (= lt!719290 (size!16435 l!2791))))

(assert (=> start!187326 (and (> lt!719290 0) (is-Nil!20702 l!2791) (> 1 lt!719290))))

(declare-fun e!1193680 () Bool)

(assert (=> start!187326 e!1193680))

(declare-fun b!1871039 () Bool)

(declare-fun tp_is_empty!8713 () Bool)

(declare-fun tp!532274 () Bool)

(assert (=> b!1871039 (= e!1193680 (and tp_is_empty!8713 tp!532274))))

(assert (= (and start!187326 (is-Cons!20702 l!2791)) b!1871039))

(declare-fun m!2297155 () Bool)

(assert (=> start!187326 m!2297155))

(push 1)

(assert (not start!187326))

(assert (not b!1871039))

(assert tp_is_empty!8713)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


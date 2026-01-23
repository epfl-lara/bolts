; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187334 () Bool)

(assert start!187334)

(declare-fun res!837625 () Bool)

(declare-fun e!1193701 () Bool)

(assert (=> start!187334 (=> (not res!837625) (not e!1193701))))

(declare-fun lt!719296 () Int)

(declare-datatypes ((T!33324 0))(
  ( (T!33325 (val!5971 Int)) )
))
(declare-datatypes ((List!20788 0))(
  ( (Nil!20706) (Cons!20706 (h!26107 T!33324) (t!173005 List!20788)) )
))
(declare-fun l!2791 () List!20788)

(assert (=> start!187334 (= res!837625 (and (> lt!719296 0) (not (is-Nil!20706 l!2791))))))

(declare-fun size!16439 (List!20788) Int)

(assert (=> start!187334 (= lt!719296 (size!16439 l!2791))))

(assert (=> start!187334 e!1193701))

(declare-fun e!1193700 () Bool)

(assert (=> start!187334 e!1193700))

(declare-fun b!1871061 () Bool)

(declare-fun res!837624 () Bool)

(assert (=> b!1871061 (=> (not res!837624) (not e!1193701))))

(declare-fun tail!2846 (List!20788) List!20788)

(assert (=> b!1871061 (= res!837624 (= (tail!2846 l!2791) (t!173005 l!2791)))))

(declare-fun b!1871062 () Bool)

(assert (=> b!1871062 (= e!1193701 (> 1 lt!719296))))

(declare-fun b!1871063 () Bool)

(declare-fun tp_is_empty!8721 () Bool)

(declare-fun tp!532286 () Bool)

(assert (=> b!1871063 (= e!1193700 (and tp_is_empty!8721 tp!532286))))

(assert (= (and start!187334 res!837625) b!1871061))

(assert (= (and b!1871061 res!837624) b!1871062))

(assert (= (and start!187334 (is-Cons!20706 l!2791)) b!1871063))

(declare-fun m!2297163 () Bool)

(assert (=> start!187334 m!2297163))

(declare-fun m!2297165 () Bool)

(assert (=> b!1871061 m!2297165))

(push 1)

(assert (not start!187334))

(assert (not b!1871061))

(assert (not b!1871063))

(assert tp_is_empty!8721)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


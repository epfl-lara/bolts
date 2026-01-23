; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107182 () Bool)

(assert start!107182)

(declare-fun res!542131 () Bool)

(declare-fun e!772128 () Bool)

(assert (=> start!107182 (=> (not res!542131) (not e!772128))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107182 (= res!542131 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107182 e!772128))

(assert (=> start!107182 true))

(declare-fun e!772127 () Bool)

(assert (=> start!107182 e!772127))

(declare-fun e!772129 () Bool)

(assert (=> start!107182 e!772129))

(declare-datatypes ((T!21878 0))(
  ( (T!21879 (val!3901 Int)) )
))
(declare-datatypes ((List!12080 0))(
  ( (Nil!12056) (Cons!12056 (h!17457 T!21878) (t!112496 List!12080)) )
))
(declare-fun l!2744 () List!12080)

(declare-fun lt!411380 () Int)

(declare-fun b!1203545 () Bool)

(declare-fun r!2028 () List!12080)

(declare-fun lt!411379 () Int)

(assert (=> b!1203545 (= e!772128 (and (<= until!61 (+ lt!411379 lt!411380)) (or (= l!2744 Nil!12056) (= r!2028 Nil!12056)) (<= lt!411379 from!613) (let ((bdg!42869 (- from!613 lt!411379))) (let ((bdg!42870 (- until!61 lt!411379))) (or (> 0 bdg!42869) (> bdg!42869 bdg!42870) (> bdg!42870 lt!411380))))))))

(declare-fun size!9596 (List!12080) Int)

(assert (=> b!1203545 (= lt!411380 (size!9596 r!2028))))

(assert (=> b!1203545 (= lt!411379 (size!9596 l!2744))))

(declare-fun b!1203546 () Bool)

(declare-fun tp_is_empty!6005 () Bool)

(declare-fun tp!341599 () Bool)

(assert (=> b!1203546 (= e!772127 (and tp_is_empty!6005 tp!341599))))

(declare-fun b!1203547 () Bool)

(declare-fun tp!341598 () Bool)

(assert (=> b!1203547 (= e!772129 (and tp_is_empty!6005 tp!341598))))

(assert (= (and start!107182 res!542131) b!1203545))

(assert (= (and start!107182 (is-Cons!12056 l!2744)) b!1203546))

(assert (= (and start!107182 (is-Cons!12056 r!2028)) b!1203547))

(declare-fun m!1379269 () Bool)

(assert (=> b!1203545 m!1379269))

(declare-fun m!1379271 () Bool)

(assert (=> b!1203545 m!1379271))

(push 1)

(assert (not b!1203545))

(assert (not b!1203546))

(assert (not b!1203547))

(assert tp_is_empty!6005)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


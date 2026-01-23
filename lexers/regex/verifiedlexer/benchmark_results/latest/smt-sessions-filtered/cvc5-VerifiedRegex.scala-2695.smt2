; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145178 () Bool)

(assert start!145178)

(assert (=> start!145178 true))

(declare-fun bs!389464 () Bool)

(declare-fun b!1563080 () Bool)

(assert (= bs!389464 (and b!1563080 start!145178)))

(declare-datatypes ((B!1399 0))(
  ( (B!1400 (val!4961 Int)) )
))
(declare-datatypes ((List!17024 0))(
  ( (Nil!16956) (Cons!16956 (h!22357 B!1399) (t!141593 List!17024)) )
))
(declare-fun l2Bis!1 () List!17024)

(declare-fun lambda!66130 () Int)

(declare-fun l2!1510 () List!17024)

(declare-fun lambda!66129 () Int)

(assert (=> bs!389464 (= (= l2Bis!1 l2!1510) (= lambda!66130 lambda!66129))))

(assert (=> b!1563080 true))

(declare-fun b!1563076 () Bool)

(declare-fun e!1003809 () Bool)

(declare-fun tp_is_empty!7091 () Bool)

(declare-fun tp!460439 () Bool)

(assert (=> b!1563076 (= e!1003809 (and tp_is_empty!7091 tp!460439))))

(declare-fun res!696710 () Bool)

(declare-fun e!1003813 () Bool)

(assert (=> start!145178 (=> (not res!696710) (not e!1003813))))

(declare-fun l1!1541 () List!17024)

(declare-fun forall!3933 (List!17024 Int) Bool)

(assert (=> start!145178 (= res!696710 (forall!3933 l1!1541 lambda!66129))))

(assert (=> start!145178 e!1003813))

(declare-fun e!1003811 () Bool)

(assert (=> start!145178 e!1003811))

(declare-fun e!1003810 () Bool)

(assert (=> start!145178 e!1003810))

(declare-fun e!1003812 () Bool)

(assert (=> start!145178 e!1003812))

(assert (=> start!145178 e!1003809))

(declare-fun b!1563077 () Bool)

(declare-fun res!696711 () Bool)

(assert (=> b!1563077 (=> (not res!696711) (not e!1003813))))

(declare-fun l1Bis!1 () List!17024)

(assert (=> b!1563077 (= res!696711 (and (= l1!1541 l1Bis!1) (= l2!1510 l2Bis!1)))))

(declare-fun b!1563078 () Bool)

(declare-fun tp!460440 () Bool)

(assert (=> b!1563078 (= e!1003810 (and tp_is_empty!7091 tp!460440))))

(declare-fun b!1563079 () Bool)

(declare-fun tp!460437 () Bool)

(assert (=> b!1563079 (= e!1003811 (and tp_is_empty!7091 tp!460437))))

(assert (=> b!1563080 (= e!1003813 (not (forall!3933 l1Bis!1 lambda!66130)))))

(declare-fun b!1563081 () Bool)

(declare-fun tp!460438 () Bool)

(assert (=> b!1563081 (= e!1003812 (and tp_is_empty!7091 tp!460438))))

(assert (= (and start!145178 res!696710) b!1563077))

(assert (= (and b!1563077 res!696711) b!1563080))

(assert (= (and start!145178 (is-Cons!16956 l1!1541)) b!1563079))

(assert (= (and start!145178 (is-Cons!16956 l2!1510)) b!1563078))

(assert (= (and start!145178 (is-Cons!16956 l1Bis!1)) b!1563081))

(assert (= (and start!145178 (is-Cons!16956 l2Bis!1)) b!1563076))

(declare-fun m!1834579 () Bool)

(assert (=> start!145178 m!1834579))

(declare-fun m!1834581 () Bool)

(assert (=> b!1563080 m!1834581))

(push 1)

(assert (not b!1563080))

(assert (not b!1563079))

(assert (not start!145178))

(assert (not b!1563081))

(assert tp_is_empty!7091)

(assert (not b!1563078))

(assert (not b!1563076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1212 () Bool)

(assert start!1212)

(declare-datatypes ((B!308 0))(
  ( (B!309 (val!249 Int)) )
))
(declare-datatypes ((tuple2!280 0))(
  ( (tuple2!281 (_1!140 (_ BitVec 64)) (_2!140 B!308)) )
))
(declare-datatypes ((List!296 0))(
  ( (Nil!293) (Cons!292 (h!858 tuple2!280) (t!2443 List!296)) )
))
(declare-fun l!408 () List!296)

(declare-fun ListPrimitiveSize!1 (List!296) Int)

(assert (=> start!1212 (< (ListPrimitiveSize!1 l!408) 0)))

(declare-fun e!5939 () Bool)

(assert (=> start!1212 e!5939))

(declare-fun b!10289 () Bool)

(declare-fun tp_is_empty!481 () Bool)

(declare-fun tp!1463 () Bool)

(assert (=> b!10289 (= e!5939 (and tp_is_empty!481 tp!1463))))

(assert (= (and start!1212 (is-Cons!292 l!408)) b!10289))

(declare-fun m!6695 () Bool)

(assert (=> start!1212 m!6695))

(push 1)

(assert (not start!1212))

(assert (not b!10289))

(assert tp_is_empty!481)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1083 () Bool)

(declare-fun lt!2537 () Int)

(assert (=> d!1083 (>= lt!2537 0)))

(declare-fun e!5953 () Int)

(assert (=> d!1083 (= lt!2537 e!5953)))

(declare-fun c!922 () Bool)

(assert (=> d!1083 (= c!922 (is-Nil!293 l!408))))

(assert (=> d!1083 (= (ListPrimitiveSize!1 l!408) lt!2537)))

(declare-fun b!10310 () Bool)

(assert (=> b!10310 (= e!5953 0)))

(declare-fun b!10311 () Bool)

(assert (=> b!10311 (= e!5953 (+ 1 (ListPrimitiveSize!1 (t!2443 l!408))))))

(assert (= (and d!1083 c!922) b!10310))

(assert (= (and d!1083 (not c!922)) b!10311))

(declare-fun m!6703 () Bool)

(assert (=> b!10311 m!6703))

(assert (=> start!1212 d!1083))

(declare-fun b!10328 () Bool)

(declare-fun e!5963 () Bool)

(declare-fun tp!1478 () Bool)

(assert (=> b!10328 (= e!5963 (and tp_is_empty!481 tp!1478))))

(assert (=> b!10289 (= tp!1463 e!5963)))

(assert (= (and b!10289 (is-Cons!292 (t!2443 l!408))) b!10328))

(push 1)


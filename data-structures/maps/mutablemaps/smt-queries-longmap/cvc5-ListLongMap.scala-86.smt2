; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1236 () Bool)

(assert start!1236)

(declare-fun res!8887 () Bool)

(declare-fun e!6007 () Bool)

(assert (=> start!1236 (=> (not res!8887) (not e!6007))))

(declare-datatypes ((B!320 0))(
  ( (B!321 (val!255 Int)) )
))
(declare-datatypes ((tuple2!292 0))(
  ( (tuple2!293 (_1!146 (_ BitVec 64)) (_2!146 B!320)) )
))
(declare-datatypes ((List!302 0))(
  ( (Nil!299) (Cons!298 (h!864 tuple2!292) (t!2449 List!302)) )
))
(declare-fun l!408 () List!302)

(assert (=> start!1236 (= res!8887 (is-Cons!298 l!408))))

(assert (=> start!1236 e!6007))

(declare-fun e!6008 () Bool)

(assert (=> start!1236 e!6008))

(declare-fun b!10390 () Bool)

(declare-fun lt!2553 () (_ BitVec 32))

(assert (=> b!10390 (= e!6007 (and (bvslt lt!2553 #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 lt!2553) #b00000000000000000000000000000000)))))

(declare-fun intSize!1 (List!302) (_ BitVec 32))

(assert (=> b!10390 (= lt!2553 (intSize!1 (t!2449 l!408)))))

(declare-fun b!10391 () Bool)

(declare-fun tp_is_empty!493 () Bool)

(declare-fun tp!1499 () Bool)

(assert (=> b!10391 (= e!6008 (and tp_is_empty!493 tp!1499))))

(assert (= (and start!1236 res!8887) b!10390))

(assert (= (and start!1236 (is-Cons!298 l!408)) b!10391))

(declare-fun m!6725 () Bool)

(assert (=> b!10390 m!6725))

(push 1)

(assert (not b!10390))

(assert (not b!10391))

(assert tp_is_empty!493)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1105 () Bool)

(declare-fun lt!2574 () (_ BitVec 32))

(assert (=> d!1105 (bvsge lt!2574 #b00000000000000000000000000000000)))

(declare-fun e!6031 () (_ BitVec 32))

(assert (=> d!1105 (= lt!2574 e!6031)))

(declare-fun c!943 () Bool)

(assert (=> d!1105 (= c!943 (is-Cons!298 (t!2449 l!408)))))

(assert (=> d!1105 (= (intSize!1 (t!2449 l!408)) lt!2574)))

(declare-fun b!10423 () Bool)

(declare-fun lt!2575 () (_ BitVec 32))

(assert (=> b!10423 (= e!6031 (ite (bvslt lt!2575 #b01111111111111111111111111111111) (bvadd #b00000000000000000000000000000001 lt!2575) #b00000000000000000000000000000000))))

(assert (=> b!10423 (= lt!2575 (intSize!1 (t!2449 (t!2449 l!408))))))

(declare-fun b!10424 () Bool)

(assert (=> b!10424 (= e!6031 #b00000000000000000000000000000000)))

(assert (= (and d!1105 c!943) b!10423))

(assert (= (and d!1105 (not c!943)) b!10424))

(declare-fun m!6733 () Bool)


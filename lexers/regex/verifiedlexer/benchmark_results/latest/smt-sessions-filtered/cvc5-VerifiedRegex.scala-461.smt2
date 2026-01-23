; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13344 () Bool)

(assert start!13344)

(declare-datatypes ((K!868 0))(
  ( (K!869 (val!815 Int)) )
))
(declare-datatypes ((B!663 0))(
  ( (B!664 (val!816 Int)) )
))
(declare-datatypes ((tuple2!2420 0))(
  ( (tuple2!2421 (_1!1420 K!868) (_2!1420 B!663)) )
))
(declare-datatypes ((List!2135 0))(
  ( (Nil!2129) (Cons!2129 (h!7526 tuple2!2420) (t!22721 List!2135)) )
))
(declare-datatypes ((ListMap!91 0))(
  ( (ListMap!92 (toList!293 List!2135)) )
))
(declare-fun thiss!41835 () ListMap!91)

(declare-fun invariantList!34 (List!2135) Bool)

(assert (=> start!13344 (not (invariantList!34 (toList!293 thiss!41835)))))

(declare-fun e!74258 () Bool)

(declare-fun inv!2775 (ListMap!91) Bool)

(assert (=> start!13344 (and (inv!2775 thiss!41835) e!74258)))

(declare-fun b!128973 () Bool)

(declare-fun tp!70057 () Bool)

(assert (=> b!128973 (= e!74258 tp!70057)))

(assert (= start!13344 b!128973))

(declare-fun m!113517 () Bool)

(assert (=> start!13344 m!113517))

(declare-fun m!113519 () Bool)

(assert (=> start!13344 m!113519))

(push 1)

(assert (not start!13344))

(assert (not b!128973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30394 () Bool)

(declare-fun noDuplicatedKeys!5 (List!2135) Bool)

(assert (=> d!30394 (= (invariantList!34 (toList!293 thiss!41835)) (noDuplicatedKeys!5 (toList!293 thiss!41835)))))

(declare-fun bs!12560 () Bool)

(assert (= bs!12560 d!30394))

(declare-fun m!113525 () Bool)

(assert (=> bs!12560 m!113525))

(assert (=> start!13344 d!30394))

(declare-fun d!30396 () Bool)

(assert (=> d!30396 (= (inv!2775 thiss!41835) (invariantList!34 (toList!293 thiss!41835)))))

(declare-fun bs!12561 () Bool)

(assert (= bs!12561 d!30396))

(assert (=> bs!12561 m!113517))

(assert (=> start!13344 d!30396))

(declare-fun tp_is_empty!1303 () Bool)

(declare-fun b!128981 () Bool)

(declare-fun tp_is_empty!1305 () Bool)

(declare-fun tp!70063 () Bool)

(declare-fun e!74264 () Bool)

(assert (=> b!128981 (= e!74264 (and tp_is_empty!1303 tp_is_empty!1305 tp!70063))))

(assert (=> b!128973 (= tp!70057 e!74264)))

(assert (= (and b!128973 (is-Cons!2129 (toList!293 thiss!41835))) b!128981))

(push 1)

(assert tp_is_empty!1303)

(assert (not b!128981))

(assert tp_is_empty!1305)

(assert (not d!30394))

(assert (not d!30396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


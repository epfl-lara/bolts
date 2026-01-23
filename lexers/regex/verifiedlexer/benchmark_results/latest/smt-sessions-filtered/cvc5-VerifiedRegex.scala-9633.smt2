; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506402 () Bool)

(assert start!506402)

(declare-fun res!2071198 () Bool)

(declare-fun e!3033253 () Bool)

(assert (=> start!506402 (=> (not res!2071198) (not e!3033253))))

(declare-datatypes ((K!17452 0))(
  ( (K!17453 (val!22267 Int)) )
))
(declare-datatypes ((V!17698 0))(
  ( (V!17699 (val!22268 Int)) )
))
(declare-datatypes ((tuple2!59374 0))(
  ( (tuple2!59375 (_1!32981 K!17452) (_2!32981 V!17698)) )
))
(declare-datatypes ((List!55744 0))(
  ( (Nil!55620) (Cons!55620 (h!62057 tuple2!59374) (t!363240 List!55744)) )
))
(declare-fun l!15167 () List!55744)

(declare-fun noDuplicateKeys!2621 (List!55744) Bool)

(assert (=> start!506402 (= res!2071198 (noDuplicateKeys!2621 l!15167))))

(assert (=> start!506402 e!3033253))

(declare-fun e!3033254 () Bool)

(assert (=> start!506402 e!3033254))

(declare-fun tp_is_empty!35325 () Bool)

(assert (=> start!506402 tp_is_empty!35325))

(declare-fun b!4852088 () Bool)

(assert (=> b!4852088 (= e!3033253 false)))

(declare-datatypes ((Option!13726 0))(
  ( (None!13725) (Some!13725 (v!49521 tuple2!59374)) )
))
(declare-fun lt!1990125 () Option!13726)

(declare-fun key!6935 () K!17452)

(declare-fun getPair!1129 (List!55744 K!17452) Option!13726)

(assert (=> b!4852088 (= lt!1990125 (getPair!1129 l!15167 key!6935))))

(declare-fun tp!1364973 () Bool)

(declare-fun tp_is_empty!35327 () Bool)

(declare-fun b!4852089 () Bool)

(assert (=> b!4852089 (= e!3033254 (and tp_is_empty!35325 tp_is_empty!35327 tp!1364973))))

(assert (= (and start!506402 res!2071198) b!4852088))

(assert (= (and start!506402 (is-Cons!55620 l!15167)) b!4852089))

(declare-fun m!5850400 () Bool)

(assert (=> start!506402 m!5850400))

(declare-fun m!5850402 () Bool)

(assert (=> b!4852088 m!5850402))

(push 1)

(assert (not b!4852088))

(assert tp_is_empty!35325)

(assert (not b!4852089))

(assert (not start!506402))

(assert tp_is_empty!35327)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759454 () Bool)

(assert start!759454)

(declare-fun res!3188374 () Bool)

(declare-fun e!4749401 () Bool)

(assert (=> start!759454 (=> (not res!3188374) (not e!4749401))))

(declare-datatypes ((K!23016 0))(
  ( (K!23017 (val!33085 Int)) )
))
(declare-datatypes ((B!4495 0))(
  ( (B!4496 (val!33086 Int)) )
))
(declare-datatypes ((tuple2!71050 0))(
  ( (tuple2!71051 (_1!38828 K!23016) (_2!38828 B!4495)) )
))
(declare-datatypes ((List!75780 0))(
  ( (Nil!75654) (Cons!75654 (h!82102 tuple2!71050) (t!391552 List!75780)) )
))
(declare-fun lt!2732565 () List!75780)

(declare-fun invariantList!1972 (List!75780) Bool)

(assert (=> start!759454 (= res!3188374 (invariantList!1972 lt!2732565))))

(declare-datatypes ((ListMap!7417 0))(
  ( (ListMap!7418 (toList!11983 List!75780)) )
))
(declare-fun thiss!41857 () ListMap!7417)

(declare-fun keyValue!4 () tuple2!71050)

(declare-fun insertNoDuplicatedKeys!815 (List!75780 K!23016 B!4495) List!75780)

(assert (=> start!759454 (= lt!2732565 (insertNoDuplicatedKeys!815 (toList!11983 thiss!41857) (_1!38828 keyValue!4) (_2!38828 keyValue!4)))))

(assert (=> start!759454 e!4749401))

(declare-fun e!4749402 () Bool)

(declare-fun inv!97488 (ListMap!7417) Bool)

(assert (=> start!759454 (and (inv!97488 thiss!41857) e!4749402)))

(declare-fun tp_is_empty!55215 () Bool)

(declare-fun tp_is_empty!55217 () Bool)

(assert (=> start!759454 (and tp_is_empty!55215 tp_is_empty!55217)))

(declare-fun b!8059146 () Bool)

(declare-fun res!3188373 () Bool)

(assert (=> b!8059146 (=> (not res!3188373) (not e!4749401))))

(declare-fun containsKey!4936 (List!75780 K!23016) Bool)

(assert (=> b!8059146 (= res!3188373 (containsKey!4936 lt!2732565 (_1!38828 keyValue!4)))))

(declare-fun b!8059147 () Bool)

(assert (=> b!8059147 (= e!4749401 false)))

(declare-fun lt!2732566 () Bool)

(declare-fun contains!21323 (List!75780 tuple2!71050) Bool)

(assert (=> b!8059147 (= lt!2732566 (contains!21323 lt!2732565 keyValue!4))))

(declare-fun b!8059148 () Bool)

(declare-fun tp!2414367 () Bool)

(assert (=> b!8059148 (= e!4749402 tp!2414367)))

(assert (= (and start!759454 res!3188374) b!8059146))

(assert (= (and b!8059146 res!3188373) b!8059147))

(assert (= start!759454 b!8059148))

(declare-fun m!8412408 () Bool)

(assert (=> start!759454 m!8412408))

(declare-fun m!8412410 () Bool)

(assert (=> start!759454 m!8412410))

(declare-fun m!8412412 () Bool)

(assert (=> start!759454 m!8412412))

(declare-fun m!8412414 () Bool)

(assert (=> b!8059146 m!8412414))

(declare-fun m!8412416 () Bool)

(assert (=> b!8059147 m!8412416))

(push 1)

(assert (not b!8059147))

(assert tp_is_empty!55217)

(assert (not b!8059146))

(assert (not b!8059148))

(assert tp_is_empty!55215)

(assert (not start!759454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


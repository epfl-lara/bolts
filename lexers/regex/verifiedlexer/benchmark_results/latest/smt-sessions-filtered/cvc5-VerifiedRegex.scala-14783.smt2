; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759558 () Bool)

(assert start!759558)

(declare-fun res!3188581 () Bool)

(declare-fun e!4749788 () Bool)

(assert (=> start!759558 (=> (not res!3188581) (not e!4749788))))

(declare-datatypes ((B!4515 0))(
  ( (B!4516 (val!33109 Int)) )
))
(declare-datatypes ((K!23046 0))(
  ( (K!23047 (val!33110 Int)) )
))
(declare-datatypes ((tuple2!71074 0))(
  ( (tuple2!71075 (_1!38840 K!23046) (_2!38840 B!4515)) )
))
(declare-datatypes ((List!75800 0))(
  ( (Nil!75674) (Cons!75674 (h!82122 tuple2!71074) (t!391572 List!75800)) )
))
(declare-datatypes ((ListMap!7437 0))(
  ( (ListMap!7438 (toList!11993 List!75800)) )
))
(declare-fun thiss!41813 () ListMap!7437)

(declare-fun key!1573 () K!23046)

(declare-fun containsKey!4946 (List!75800 K!23046) Bool)

(assert (=> start!759558 (= res!3188581 (containsKey!4946 (toList!11993 thiss!41813) key!1573))))

(assert (=> start!759558 e!4749788))

(declare-fun e!4749787 () Bool)

(declare-fun inv!97516 (ListMap!7437) Bool)

(assert (=> start!759558 (and (inv!97516 thiss!41813) e!4749787)))

(declare-fun tp_is_empty!55263 () Bool)

(assert (=> start!759558 tp_is_empty!55263))

(declare-fun b!8059780 () Bool)

(assert (=> b!8059780 (= e!4749788 false)))

(declare-fun lt!2732931 () Bool)

(declare-fun invariantList!1981 (List!75800) Bool)

(assert (=> b!8059780 (= lt!2732931 (invariantList!1981 (toList!11993 thiss!41813)))))

(declare-fun b!8059781 () Bool)

(declare-fun tp!2414433 () Bool)

(assert (=> b!8059781 (= e!4749787 tp!2414433)))

(assert (= (and start!759558 res!3188581) b!8059780))

(assert (= start!759558 b!8059781))

(declare-fun m!8412920 () Bool)

(assert (=> start!759558 m!8412920))

(declare-fun m!8412922 () Bool)

(assert (=> start!759558 m!8412922))

(declare-fun m!8412924 () Bool)

(assert (=> b!8059780 m!8412924))

(push 1)

(assert (not start!759558))

(assert (not b!8059780))

(assert (not b!8059781))

(assert tp_is_empty!55263)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


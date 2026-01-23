; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759564 () Bool)

(assert start!759564)

(declare-fun res!3188590 () Bool)

(declare-fun e!4749806 () Bool)

(assert (=> start!759564 (=> (not res!3188590) (not e!4749806))))

(declare-datatypes ((B!4521 0))(
  ( (B!4522 (val!33115 Int)) )
))
(declare-datatypes ((K!23053 0))(
  ( (K!23054 (val!33116 Int)) )
))
(declare-datatypes ((tuple2!71080 0))(
  ( (tuple2!71081 (_1!38843 K!23053) (_2!38843 B!4521)) )
))
(declare-datatypes ((List!75803 0))(
  ( (Nil!75677) (Cons!75677 (h!82125 tuple2!71080) (t!391575 List!75803)) )
))
(declare-datatypes ((ListMap!7443 0))(
  ( (ListMap!7444 (toList!11996 List!75803)) )
))
(declare-fun thiss!41813 () ListMap!7443)

(declare-fun key!1573 () K!23053)

(declare-fun containsKey!4949 (List!75803 K!23053) Bool)

(assert (=> start!759564 (= res!3188590 (containsKey!4949 (toList!11996 thiss!41813) key!1573))))

(assert (=> start!759564 e!4749806))

(declare-fun e!4749805 () Bool)

(declare-fun inv!97522 (ListMap!7443) Bool)

(assert (=> start!759564 (and (inv!97522 thiss!41813) e!4749805)))

(declare-fun tp_is_empty!55269 () Bool)

(assert (=> start!759564 tp_is_empty!55269))

(declare-fun b!8059798 () Bool)

(assert (=> b!8059798 (= e!4749806 (not true))))

(declare-fun lt!2732946 () Bool)

(declare-fun invariantList!1984 (List!75803) Bool)

(assert (=> b!8059798 (= lt!2732946 (invariantList!1984 (toList!11996 thiss!41813)))))

(declare-datatypes ((Option!18037 0))(
  ( (None!18036) (Some!18036 (v!55397 B!4521)) )
))
(declare-fun isDefined!14564 (Option!18037) Bool)

(declare-fun getValueByKey!2821 (List!75803 K!23053) Option!18037)

(assert (=> b!8059798 (isDefined!14564 (getValueByKey!2821 (toList!11996 thiss!41813) key!1573))))

(declare-datatypes ((Unit!172798 0))(
  ( (Unit!172799) )
))
(declare-fun lt!2732945 () Unit!172798)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2586 (List!75803 K!23053) Unit!172798)

(assert (=> b!8059798 (= lt!2732945 (lemmaContainsKeyImpliesGetValueByKeyDefined!2586 (toList!11996 thiss!41813) key!1573))))

(declare-fun b!8059799 () Bool)

(declare-fun tp!2414442 () Bool)

(assert (=> b!8059799 (= e!4749805 tp!2414442)))

(assert (= (and start!759564 res!3188590) b!8059798))

(assert (= start!759564 b!8059799))

(declare-fun m!8412944 () Bool)

(assert (=> start!759564 m!8412944))

(declare-fun m!8412946 () Bool)

(assert (=> start!759564 m!8412946))

(declare-fun m!8412948 () Bool)

(assert (=> b!8059798 m!8412948))

(declare-fun m!8412950 () Bool)

(assert (=> b!8059798 m!8412950))

(assert (=> b!8059798 m!8412950))

(declare-fun m!8412952 () Bool)

(assert (=> b!8059798 m!8412952))

(declare-fun m!8412954 () Bool)

(assert (=> b!8059798 m!8412954))

(check-sat (not start!759564) (not b!8059798) (not b!8059799) tp_is_empty!55269)
(check-sat)

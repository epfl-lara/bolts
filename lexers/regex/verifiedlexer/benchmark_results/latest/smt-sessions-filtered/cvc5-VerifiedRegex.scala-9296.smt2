; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493316 () Bool)

(assert start!493316)

(declare-fun res!2036510 () Bool)

(declare-fun e!2991796 () Bool)

(assert (=> start!493316 (=> (not res!2036510) (not e!2991796))))

(declare-datatypes ((K!15767 0))(
  ( (K!15768 (val!20919 Int)) )
))
(declare-datatypes ((V!16013 0))(
  ( (V!16014 (val!20920 Int)) )
))
(declare-datatypes ((tuple2!56812 0))(
  ( (tuple2!56813 (_1!31700 K!15767) (_2!31700 V!16013)) )
))
(declare-datatypes ((List!54317 0))(
  ( (Nil!54193) (Cons!54193 (h!60617 tuple2!56812) (t!361767 List!54317)) )
))
(declare-datatypes ((tuple2!56814 0))(
  ( (tuple2!56815 (_1!31701 (_ BitVec 64)) (_2!31701 List!54317)) )
))
(declare-datatypes ((List!54318 0))(
  ( (Nil!54194) (Cons!54194 (h!60618 tuple2!56814) (t!361768 List!54318)) )
))
(declare-datatypes ((ListLongMap!5323 0))(
  ( (ListLongMap!5324 (toList!6901 List!54318)) )
))
(declare-fun lm!2473 () ListLongMap!5323)

(declare-fun lambda!230398 () Int)

(declare-fun forall!12236 (List!54318 Int) Bool)

(assert (=> start!493316 (= res!2036510 (forall!12236 (toList!6901 lm!2473) lambda!230398))))

(assert (=> start!493316 e!2991796))

(declare-fun e!2991797 () Bool)

(declare-fun inv!69794 (ListLongMap!5323) Bool)

(assert (=> start!493316 (and (inv!69794 lm!2473) e!2991797)))

(assert (=> start!493316 true))

(declare-fun tp_is_empty!33525 () Bool)

(assert (=> start!493316 tp_is_empty!33525))

(declare-fun b!4791669 () Bool)

(declare-fun res!2036511 () Bool)

(assert (=> b!4791669 (=> (not res!2036511) (not e!2991796))))

(declare-fun key!5896 () K!15767)

(declare-datatypes ((ListMap!6373 0))(
  ( (ListMap!6374 (toList!6902 List!54317)) )
))
(declare-fun contains!17800 (ListMap!6373 K!15767) Bool)

(declare-fun extractMap!2438 (List!54318) ListMap!6373)

(assert (=> b!4791669 (= res!2036511 (contains!17800 (extractMap!2438 (toList!6901 lm!2473)) key!5896))))

(declare-fun b!4791670 () Bool)

(assert (=> b!4791670 (= e!2991796 (not true))))

(declare-fun lt!1950797 () V!16013)

(declare-fun getValue!107 (List!54318 K!15767) V!16013)

(assert (=> b!4791670 (= lt!1950797 (getValue!107 (toList!6901 lm!2473) key!5896))))

(declare-fun containsKeyBiggerList!561 (List!54318 K!15767) Bool)

(assert (=> b!4791670 (containsKeyBiggerList!561 (toList!6901 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6911 0))(
  ( (HashableExt!6910 (__x!32934 Int)) )
))
(declare-fun hashF!1559 () Hashable!6911)

(declare-datatypes ((Unit!139900 0))(
  ( (Unit!139901) )
))
(declare-fun lt!1950798 () Unit!139900)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!301 (ListLongMap!5323 K!15767 Hashable!6911) Unit!139900)

(assert (=> b!4791670 (= lt!1950798 (lemmaInLongMapThenContainsKeyBiggerList!301 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2991795 () Bool)

(assert (=> b!4791670 e!2991795))

(declare-fun res!2036509 () Bool)

(assert (=> b!4791670 (=> (not res!2036509) (not e!2991795))))

(declare-fun lt!1950796 () (_ BitVec 64))

(declare-fun contains!17801 (ListLongMap!5323 (_ BitVec 64)) Bool)

(assert (=> b!4791670 (= res!2036509 (contains!17801 lm!2473 lt!1950796))))

(declare-fun hash!4943 (Hashable!6911 K!15767) (_ BitVec 64))

(assert (=> b!4791670 (= lt!1950796 (hash!4943 hashF!1559 key!5896))))

(declare-fun lt!1950799 () Unit!139900)

(declare-fun lemmaInGenericMapThenInLongMap!315 (ListLongMap!5323 K!15767 Hashable!6911) Unit!139900)

(assert (=> b!4791670 (= lt!1950799 (lemmaInGenericMapThenInLongMap!315 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791671 () Bool)

(declare-datatypes ((Option!13078 0))(
  ( (None!13077) (Some!13077 (v!48356 tuple2!56812)) )
))
(declare-fun isDefined!10220 (Option!13078) Bool)

(declare-fun getPair!883 (List!54317 K!15767) Option!13078)

(declare-fun apply!12980 (ListLongMap!5323 (_ BitVec 64)) List!54317)

(assert (=> b!4791671 (= e!2991795 (isDefined!10220 (getPair!883 (apply!12980 lm!2473 lt!1950796) key!5896)))))

(declare-fun b!4791672 () Bool)

(declare-fun tp!1357963 () Bool)

(assert (=> b!4791672 (= e!2991797 tp!1357963)))

(declare-fun b!4791673 () Bool)

(declare-fun res!2036512 () Bool)

(assert (=> b!4791673 (=> (not res!2036512) (not e!2991796))))

(declare-fun allKeysSameHashInMap!2316 (ListLongMap!5323 Hashable!6911) Bool)

(assert (=> b!4791673 (= res!2036512 (allKeysSameHashInMap!2316 lm!2473 hashF!1559))))

(assert (= (and start!493316 res!2036510) b!4791673))

(assert (= (and b!4791673 res!2036512) b!4791669))

(assert (= (and b!4791669 res!2036511) b!4791670))

(assert (= (and b!4791670 res!2036509) b!4791671))

(assert (= start!493316 b!4791672))

(declare-fun m!5772262 () Bool)

(assert (=> b!4791670 m!5772262))

(declare-fun m!5772264 () Bool)

(assert (=> b!4791670 m!5772264))

(declare-fun m!5772266 () Bool)

(assert (=> b!4791670 m!5772266))

(declare-fun m!5772268 () Bool)

(assert (=> b!4791670 m!5772268))

(declare-fun m!5772270 () Bool)

(assert (=> b!4791670 m!5772270))

(declare-fun m!5772272 () Bool)

(assert (=> b!4791670 m!5772272))

(declare-fun m!5772274 () Bool)

(assert (=> b!4791669 m!5772274))

(assert (=> b!4791669 m!5772274))

(declare-fun m!5772276 () Bool)

(assert (=> b!4791669 m!5772276))

(declare-fun m!5772278 () Bool)

(assert (=> start!493316 m!5772278))

(declare-fun m!5772280 () Bool)

(assert (=> start!493316 m!5772280))

(declare-fun m!5772282 () Bool)

(assert (=> b!4791671 m!5772282))

(assert (=> b!4791671 m!5772282))

(declare-fun m!5772284 () Bool)

(assert (=> b!4791671 m!5772284))

(assert (=> b!4791671 m!5772284))

(declare-fun m!5772286 () Bool)

(assert (=> b!4791671 m!5772286))

(declare-fun m!5772288 () Bool)

(assert (=> b!4791673 m!5772288))

(push 1)

(assert (not b!4791669))

(assert tp_is_empty!33525)

(assert (not b!4791672))

(assert (not b!4791670))

(assert (not b!4791673))

(assert (not start!493316))

(assert (not b!4791671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


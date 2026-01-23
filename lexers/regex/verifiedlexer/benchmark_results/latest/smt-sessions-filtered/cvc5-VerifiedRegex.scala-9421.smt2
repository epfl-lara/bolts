; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498292 () Bool)

(assert start!498292)

(declare-fun b!4815822 () Bool)

(declare-datatypes ((Unit!141928 0))(
  ( (Unit!141929) )
))
(declare-fun e!3008809 () Unit!141928)

(declare-fun Unit!141930 () Unit!141928)

(assert (=> b!4815822 (= e!3008809 Unit!141930)))

(declare-datatypes ((K!16392 0))(
  ( (K!16393 (val!21419 Int)) )
))
(declare-datatypes ((V!16638 0))(
  ( (V!16639 (val!21420 Int)) )
))
(declare-datatypes ((tuple2!57774 0))(
  ( (tuple2!57775 (_1!32181 K!16392) (_2!32181 V!16638)) )
))
(declare-datatypes ((List!54862 0))(
  ( (Nil!54738) (Cons!54738 (h!61170 tuple2!57774) (t!362358 List!54862)) )
))
(declare-datatypes ((tuple2!57776 0))(
  ( (tuple2!57777 (_1!32182 (_ BitVec 64)) (_2!32182 List!54862)) )
))
(declare-datatypes ((List!54863 0))(
  ( (Nil!54739) (Cons!54739 (h!61171 tuple2!57776) (t!362359 List!54863)) )
))
(declare-datatypes ((ListLongMap!5785 0))(
  ( (ListLongMap!5786 (toList!7305 List!54863)) )
))
(declare-fun lm!2251 () ListLongMap!5785)

(declare-fun lt!1966615 () Unit!141928)

(declare-datatypes ((Hashable!7161 0))(
  ( (HashableExt!7160 (__x!33436 Int)) )
))
(declare-fun hashF!1486 () Hashable!7161)

(declare-fun key!5322 () K!16392)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!433 (ListLongMap!5785 K!16392 Hashable!7161) Unit!141928)

(assert (=> b!4815822 (= lt!1966615 (lemmaNotInItsHashBucketThenNotInMap!433 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815822 false))

(declare-fun b!4815823 () Bool)

(declare-fun res!2048582 () Bool)

(declare-fun e!3008808 () Bool)

(assert (=> b!4815823 (=> (not res!2048582) (not e!3008808))))

(declare-datatypes ((ListMap!6719 0))(
  ( (ListMap!6720 (toList!7306 List!54862)) )
))
(declare-fun contains!18548 (ListMap!6719 K!16392) Bool)

(declare-fun extractMap!2611 (List!54863) ListMap!6719)

(assert (=> b!4815823 (= res!2048582 (contains!18548 (extractMap!2611 (toList!7305 lm!2251)) key!5322))))

(declare-fun b!4815825 () Bool)

(declare-fun Unit!141931 () Unit!141928)

(assert (=> b!4815825 (= e!3008809 Unit!141931)))

(declare-fun b!4815826 () Bool)

(declare-fun e!3008806 () Bool)

(declare-fun lambda!234487 () Int)

(declare-fun forall!12467 (List!54863 Int) Bool)

(assert (=> b!4815826 (= e!3008806 (forall!12467 (toList!7305 lm!2251) lambda!234487))))

(declare-fun b!4815827 () Bool)

(declare-fun res!2048585 () Bool)

(assert (=> b!4815827 (=> (not res!2048585) (not e!3008808))))

(declare-fun allKeysSameHashInMap!2477 (ListLongMap!5785 Hashable!7161) Bool)

(assert (=> b!4815827 (= res!2048585 (allKeysSameHashInMap!2477 lm!2251 hashF!1486))))

(declare-fun b!4815828 () Bool)

(declare-fun e!3008807 () Bool)

(declare-fun tp!1361864 () Bool)

(assert (=> b!4815828 (= e!3008807 tp!1361864)))

(declare-fun b!4815824 () Bool)

(assert (=> b!4815824 (= e!3008808 (not e!3008806))))

(declare-fun res!2048583 () Bool)

(assert (=> b!4815824 (=> res!2048583 e!3008806)))

(declare-datatypes ((Option!13413 0))(
  ( (None!13412) (Some!13412 (v!49063 tuple2!57774)) )
))
(declare-fun lt!1966614 () Option!13413)

(declare-fun isDefined!10537 (Option!13413) Bool)

(assert (=> b!4815824 (= res!2048583 (not (isDefined!10537 lt!1966614)))))

(declare-fun lt!1966617 () Unit!141928)

(assert (=> b!4815824 (= lt!1966617 e!3008809)))

(declare-fun c!820783 () Bool)

(declare-fun isEmpty!29583 (Option!13413) Bool)

(assert (=> b!4815824 (= c!820783 (isEmpty!29583 lt!1966614))))

(declare-fun lt!1966616 () List!54862)

(declare-fun getPair!1001 (List!54862 K!16392) Option!13413)

(assert (=> b!4815824 (= lt!1966614 (getPair!1001 lt!1966616 key!5322))))

(declare-fun lt!1966619 () tuple2!57776)

(declare-fun lt!1966613 () Unit!141928)

(declare-fun forallContained!4329 (List!54863 Int tuple2!57776) Unit!141928)

(assert (=> b!4815824 (= lt!1966613 (forallContained!4329 (toList!7305 lm!2251) lambda!234487 lt!1966619))))

(declare-fun contains!18549 (List!54863 tuple2!57776) Bool)

(assert (=> b!4815824 (contains!18549 (toList!7305 lm!2251) lt!1966619)))

(declare-fun lt!1966611 () (_ BitVec 64))

(assert (=> b!4815824 (= lt!1966619 (tuple2!57777 lt!1966611 lt!1966616))))

(declare-fun lt!1966612 () Unit!141928)

(declare-fun lemmaGetValueImpliesTupleContained!672 (ListLongMap!5785 (_ BitVec 64) List!54862) Unit!141928)

(assert (=> b!4815824 (= lt!1966612 (lemmaGetValueImpliesTupleContained!672 lm!2251 lt!1966611 lt!1966616))))

(declare-fun apply!13266 (ListLongMap!5785 (_ BitVec 64)) List!54862)

(assert (=> b!4815824 (= lt!1966616 (apply!13266 lm!2251 lt!1966611))))

(declare-fun contains!18550 (ListLongMap!5785 (_ BitVec 64)) Bool)

(assert (=> b!4815824 (contains!18550 lm!2251 lt!1966611)))

(declare-fun hash!5233 (Hashable!7161 K!16392) (_ BitVec 64))

(assert (=> b!4815824 (= lt!1966611 (hash!5233 hashF!1486 key!5322))))

(declare-fun lt!1966618 () Unit!141928)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1099 (ListLongMap!5785 K!16392 Hashable!7161) Unit!141928)

(assert (=> b!4815824 (= lt!1966618 (lemmaInGenMapThenLongMapContainsHash!1099 lm!2251 key!5322 hashF!1486))))

(declare-fun res!2048584 () Bool)

(assert (=> start!498292 (=> (not res!2048584) (not e!3008808))))

(assert (=> start!498292 (= res!2048584 (forall!12467 (toList!7305 lm!2251) lambda!234487))))

(assert (=> start!498292 e!3008808))

(declare-fun inv!70293 (ListLongMap!5785) Bool)

(assert (=> start!498292 (and (inv!70293 lm!2251) e!3008807)))

(assert (=> start!498292 true))

(declare-fun tp_is_empty!34195 () Bool)

(assert (=> start!498292 tp_is_empty!34195))

(assert (= (and start!498292 res!2048584) b!4815827))

(assert (= (and b!4815827 res!2048585) b!4815823))

(assert (= (and b!4815823 res!2048582) b!4815824))

(assert (= (and b!4815824 c!820783) b!4815822))

(assert (= (and b!4815824 (not c!820783)) b!4815825))

(assert (= (and b!4815824 (not res!2048583)) b!4815826))

(assert (= start!498292 b!4815828))

(declare-fun m!5802046 () Bool)

(assert (=> b!4815822 m!5802046))

(declare-fun m!5802048 () Bool)

(assert (=> b!4815826 m!5802048))

(declare-fun m!5802050 () Bool)

(assert (=> b!4815827 m!5802050))

(declare-fun m!5802052 () Bool)

(assert (=> b!4815824 m!5802052))

(declare-fun m!5802054 () Bool)

(assert (=> b!4815824 m!5802054))

(declare-fun m!5802056 () Bool)

(assert (=> b!4815824 m!5802056))

(declare-fun m!5802058 () Bool)

(assert (=> b!4815824 m!5802058))

(declare-fun m!5802060 () Bool)

(assert (=> b!4815824 m!5802060))

(declare-fun m!5802062 () Bool)

(assert (=> b!4815824 m!5802062))

(declare-fun m!5802064 () Bool)

(assert (=> b!4815824 m!5802064))

(declare-fun m!5802066 () Bool)

(assert (=> b!4815824 m!5802066))

(declare-fun m!5802068 () Bool)

(assert (=> b!4815824 m!5802068))

(declare-fun m!5802070 () Bool)

(assert (=> b!4815824 m!5802070))

(declare-fun m!5802072 () Bool)

(assert (=> b!4815823 m!5802072))

(assert (=> b!4815823 m!5802072))

(declare-fun m!5802074 () Bool)

(assert (=> b!4815823 m!5802074))

(assert (=> start!498292 m!5802048))

(declare-fun m!5802076 () Bool)

(assert (=> start!498292 m!5802076))

(push 1)

(assert (not b!4815824))

(assert (not start!498292))

(assert (not b!4815822))

(assert tp_is_empty!34195)

(assert (not b!4815827))

(assert (not b!4815823))

(assert (not b!4815828))

(assert (not b!4815826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


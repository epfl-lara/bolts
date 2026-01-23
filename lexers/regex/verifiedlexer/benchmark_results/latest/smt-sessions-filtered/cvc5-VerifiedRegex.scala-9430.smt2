; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498648 () Bool)

(assert start!498648)

(declare-fun b!4817126 () Bool)

(declare-fun e!3009648 () Bool)

(declare-fun tp!1361976 () Bool)

(assert (=> b!4817126 (= e!3009648 tp!1361976)))

(declare-fun b!4817127 () Bool)

(declare-datatypes ((Unit!142024 0))(
  ( (Unit!142025) )
))
(declare-fun e!3009649 () Unit!142024)

(declare-fun Unit!142026 () Unit!142024)

(assert (=> b!4817127 (= e!3009649 Unit!142026)))

(declare-fun b!4817128 () Bool)

(declare-fun res!2049260 () Bool)

(declare-fun e!3009650 () Bool)

(assert (=> b!4817128 (=> (not res!2049260) (not e!3009650))))

(declare-datatypes ((K!16437 0))(
  ( (K!16438 (val!21455 Int)) )
))
(declare-datatypes ((V!16683 0))(
  ( (V!16684 (val!21456 Int)) )
))
(declare-datatypes ((tuple2!57846 0))(
  ( (tuple2!57847 (_1!32217 K!16437) (_2!32217 V!16683)) )
))
(declare-datatypes ((List!54903 0))(
  ( (Nil!54779) (Cons!54779 (h!61211 tuple2!57846) (t!362399 List!54903)) )
))
(declare-datatypes ((tuple2!57848 0))(
  ( (tuple2!57849 (_1!32218 (_ BitVec 64)) (_2!32218 List!54903)) )
))
(declare-datatypes ((List!54904 0))(
  ( (Nil!54780) (Cons!54780 (h!61212 tuple2!57848) (t!362400 List!54904)) )
))
(declare-datatypes ((ListLongMap!5821 0))(
  ( (ListLongMap!5822 (toList!7341 List!54904)) )
))
(declare-fun lm!2251 () ListLongMap!5821)

(declare-fun key!5322 () K!16437)

(declare-datatypes ((ListMap!6755 0))(
  ( (ListMap!6756 (toList!7342 List!54903)) )
))
(declare-fun contains!18607 (ListMap!6755 K!16437) Bool)

(declare-fun extractMap!2629 (List!54904) ListMap!6755)

(assert (=> b!4817128 (= res!2049260 (contains!18607 (extractMap!2629 (toList!7341 lm!2251)) key!5322))))

(declare-fun b!4817129 () Bool)

(declare-fun Unit!142027 () Unit!142024)

(assert (=> b!4817129 (= e!3009649 Unit!142027)))

(declare-fun lt!1967614 () Unit!142024)

(declare-datatypes ((Hashable!7179 0))(
  ( (HashableExt!7178 (__x!33454 Int)) )
))
(declare-fun hashF!1486 () Hashable!7179)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!443 (ListLongMap!5821 K!16437 Hashable!7179) Unit!142024)

(assert (=> b!4817129 (= lt!1967614 (lemmaNotInItsHashBucketThenNotInMap!443 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4817129 false))

(declare-fun b!4817130 () Bool)

(assert (=> b!4817130 (= e!3009650 (not true))))

(declare-fun lt!1967617 () Unit!142024)

(assert (=> b!4817130 (= lt!1967617 e!3009649)))

(declare-fun c!821025 () Bool)

(declare-fun lt!1967613 () List!54903)

(declare-datatypes ((Option!13438 0))(
  ( (None!13437) (Some!13437 (v!49098 tuple2!57846)) )
))
(declare-fun isEmpty!29603 (Option!13438) Bool)

(declare-fun getPair!1017 (List!54903 K!16437) Option!13438)

(assert (=> b!4817130 (= c!821025 (isEmpty!29603 (getPair!1017 lt!1967613 key!5322)))))

(declare-fun lambda!234771 () Int)

(declare-fun lt!1967612 () Unit!142024)

(declare-fun lt!1967615 () tuple2!57848)

(declare-fun forallContained!4349 (List!54904 Int tuple2!57848) Unit!142024)

(assert (=> b!4817130 (= lt!1967612 (forallContained!4349 (toList!7341 lm!2251) lambda!234771 lt!1967615))))

(declare-fun contains!18608 (List!54904 tuple2!57848) Bool)

(assert (=> b!4817130 (contains!18608 (toList!7341 lm!2251) lt!1967615)))

(declare-fun lt!1967618 () (_ BitVec 64))

(assert (=> b!4817130 (= lt!1967615 (tuple2!57849 lt!1967618 lt!1967613))))

(declare-fun lt!1967611 () Unit!142024)

(declare-fun lemmaGetValueImpliesTupleContained!688 (ListLongMap!5821 (_ BitVec 64) List!54903) Unit!142024)

(assert (=> b!4817130 (= lt!1967611 (lemmaGetValueImpliesTupleContained!688 lm!2251 lt!1967618 lt!1967613))))

(declare-fun apply!13282 (ListLongMap!5821 (_ BitVec 64)) List!54903)

(assert (=> b!4817130 (= lt!1967613 (apply!13282 lm!2251 lt!1967618))))

(declare-fun contains!18609 (ListLongMap!5821 (_ BitVec 64)) Bool)

(assert (=> b!4817130 (contains!18609 lm!2251 lt!1967618)))

(declare-fun hash!5253 (Hashable!7179 K!16437) (_ BitVec 64))

(assert (=> b!4817130 (= lt!1967618 (hash!5253 hashF!1486 key!5322))))

(declare-fun lt!1967616 () Unit!142024)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1115 (ListLongMap!5821 K!16437 Hashable!7179) Unit!142024)

(assert (=> b!4817130 (= lt!1967616 (lemmaInGenMapThenLongMapContainsHash!1115 lm!2251 key!5322 hashF!1486))))

(declare-fun res!2049261 () Bool)

(assert (=> start!498648 (=> (not res!2049261) (not e!3009650))))

(declare-fun forall!12489 (List!54904 Int) Bool)

(assert (=> start!498648 (= res!2049261 (forall!12489 (toList!7341 lm!2251) lambda!234771))))

(assert (=> start!498648 e!3009650))

(declare-fun inv!70338 (ListLongMap!5821) Bool)

(assert (=> start!498648 (and (inv!70338 lm!2251) e!3009648)))

(assert (=> start!498648 true))

(declare-fun tp_is_empty!34235 () Bool)

(assert (=> start!498648 tp_is_empty!34235))

(declare-fun b!4817131 () Bool)

(declare-fun res!2049262 () Bool)

(assert (=> b!4817131 (=> (not res!2049262) (not e!3009650))))

(declare-fun allKeysSameHashInMap!2495 (ListLongMap!5821 Hashable!7179) Bool)

(assert (=> b!4817131 (= res!2049262 (allKeysSameHashInMap!2495 lm!2251 hashF!1486))))

(assert (= (and start!498648 res!2049261) b!4817131))

(assert (= (and b!4817131 res!2049262) b!4817128))

(assert (= (and b!4817128 res!2049260) b!4817130))

(assert (= (and b!4817130 c!821025) b!4817129))

(assert (= (and b!4817130 (not c!821025)) b!4817127))

(assert (= start!498648 b!4817126))

(declare-fun m!5803548 () Bool)

(assert (=> b!4817129 m!5803548))

(declare-fun m!5803550 () Bool)

(assert (=> start!498648 m!5803550))

(declare-fun m!5803552 () Bool)

(assert (=> start!498648 m!5803552))

(declare-fun m!5803554 () Bool)

(assert (=> b!4817130 m!5803554))

(declare-fun m!5803556 () Bool)

(assert (=> b!4817130 m!5803556))

(declare-fun m!5803558 () Bool)

(assert (=> b!4817130 m!5803558))

(declare-fun m!5803560 () Bool)

(assert (=> b!4817130 m!5803560))

(declare-fun m!5803562 () Bool)

(assert (=> b!4817130 m!5803562))

(declare-fun m!5803564 () Bool)

(assert (=> b!4817130 m!5803564))

(declare-fun m!5803566 () Bool)

(assert (=> b!4817130 m!5803566))

(declare-fun m!5803568 () Bool)

(assert (=> b!4817130 m!5803568))

(assert (=> b!4817130 m!5803558))

(declare-fun m!5803570 () Bool)

(assert (=> b!4817130 m!5803570))

(declare-fun m!5803572 () Bool)

(assert (=> b!4817128 m!5803572))

(assert (=> b!4817128 m!5803572))

(declare-fun m!5803574 () Bool)

(assert (=> b!4817128 m!5803574))

(declare-fun m!5803576 () Bool)

(assert (=> b!4817131 m!5803576))

(push 1)

(assert (not start!498648))

(assert (not b!4817131))

(assert (not b!4817128))

(assert (not b!4817126))

(assert (not b!4817130))

(assert tp_is_empty!34235)

(assert (not b!4817129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


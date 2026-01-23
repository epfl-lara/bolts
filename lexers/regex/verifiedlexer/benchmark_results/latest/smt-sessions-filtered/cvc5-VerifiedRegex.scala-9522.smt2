; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502680 () Bool)

(assert start!502680)

(declare-fun b!4835358 () Bool)

(declare-fun e!3021813 () Bool)

(declare-fun e!3021816 () Bool)

(assert (=> b!4835358 (= e!3021813 e!3021816)))

(declare-fun res!2060105 () Bool)

(assert (=> b!4835358 (=> res!2060105 e!3021816)))

(declare-datatypes ((K!16897 0))(
  ( (K!16898 (val!21823 Int)) )
))
(declare-datatypes ((V!17143 0))(
  ( (V!17144 (val!21824 Int)) )
))
(declare-datatypes ((tuple2!58518 0))(
  ( (tuple2!58519 (_1!32553 K!16897) (_2!32553 V!17143)) )
))
(declare-datatypes ((List!55292 0))(
  ( (Nil!55168) (Cons!55168 (h!61602 tuple2!58518) (t!362788 List!55292)) )
))
(declare-datatypes ((tuple2!58520 0))(
  ( (tuple2!58521 (_1!32554 (_ BitVec 64)) (_2!32554 List!55292)) )
))
(declare-datatypes ((List!55293 0))(
  ( (Nil!55169) (Cons!55169 (h!61603 tuple2!58520) (t!362789 List!55293)) )
))
(declare-datatypes ((ListLongMap!6125 0))(
  ( (ListLongMap!6126 (toList!7615 List!55293)) )
))
(declare-fun lm!1282 () ListLongMap!6125)

(declare-fun lambda!239287 () Int)

(declare-fun forall!12730 (List!55293 Int) Bool)

(assert (=> b!4835358 (= res!2060105 (not (forall!12730 (toList!7615 lm!1282) lambda!239287)))))

(declare-fun key!2791 () K!16897)

(declare-fun containsKeyBiggerList!625 (List!55293 K!16897) Bool)

(assert (=> b!4835358 (containsKeyBiggerList!625 (toList!7615 lm!1282) key!2791)))

(declare-datatypes ((Hashable!7331 0))(
  ( (HashableExt!7330 (__x!33606 Int)) )
))
(declare-fun hashF!961 () Hashable!7331)

(declare-datatypes ((Unit!144554 0))(
  ( (Unit!144555) )
))
(declare-fun lt!1981325 () Unit!144554)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!365 (ListLongMap!6125 K!16897 Hashable!7331) Unit!144554)

(assert (=> b!4835358 (= lt!1981325 (lemmaInLongMapThenContainsKeyBiggerList!365 lm!1282 key!2791 hashF!961))))

(declare-fun b!4835359 () Bool)

(declare-fun e!3021814 () Bool)

(declare-fun tp!1363321 () Bool)

(assert (=> b!4835359 (= e!3021814 tp!1363321)))

(declare-fun b!4835360 () Bool)

(declare-fun e!3021812 () Bool)

(declare-fun e!3021815 () Bool)

(assert (=> b!4835360 (= e!3021812 e!3021815)))

(declare-fun res!2060106 () Bool)

(assert (=> b!4835360 (=> (not res!2060106) (not e!3021815))))

(declare-fun lt!1981327 () (_ BitVec 64))

(declare-fun contains!18992 (ListLongMap!6125 (_ BitVec 64)) Bool)

(assert (=> b!4835360 (= res!2060106 (contains!18992 lm!1282 lt!1981327))))

(declare-fun hash!5517 (Hashable!7331 K!16897) (_ BitVec 64))

(assert (=> b!4835360 (= lt!1981327 (hash!5517 hashF!961 key!2791))))

(declare-fun b!4835361 () Bool)

(declare-fun res!2060103 () Bool)

(assert (=> b!4835361 (=> (not res!2060103) (not e!3021812))))

(declare-fun allKeysSameHashInMap!2647 (ListLongMap!6125 Hashable!7331) Bool)

(assert (=> b!4835361 (= res!2060103 (allKeysSameHashInMap!2647 lm!1282 hashF!961))))

(declare-fun b!4835362 () Bool)

(assert (=> b!4835362 (= e!3021816 (forall!12730 (toList!7615 lm!1282) lambda!239287))))

(declare-datatypes ((ListMap!6999 0))(
  ( (ListMap!7000 (toList!7616 List!55292)) )
))
(declare-fun contains!18993 (ListMap!6999 K!16897) Bool)

(declare-fun extractMap!2719 (List!55293) ListMap!6999)

(assert (=> b!4835362 (contains!18993 (extractMap!2719 (toList!7615 lm!1282)) key!2791)))

(declare-fun lt!1981328 () Unit!144554)

(declare-fun lemmaListContainsThenExtractedMapContains!727 (ListLongMap!6125 K!16897 Hashable!7331) Unit!144554)

(assert (=> b!4835362 (= lt!1981328 (lemmaListContainsThenExtractedMapContains!727 lm!1282 key!2791 hashF!961))))

(declare-fun b!4835363 () Bool)

(assert (=> b!4835363 (= e!3021815 (not e!3021813))))

(declare-fun res!2060104 () Bool)

(assert (=> b!4835363 (=> res!2060104 e!3021813)))

(declare-fun lt!1981324 () List!55292)

(declare-datatypes ((Option!13567 0))(
  ( (None!13566) (Some!13566 (v!49269 tuple2!58518)) )
))
(declare-fun isDefined!10677 (Option!13567) Bool)

(declare-fun getPair!1031 (List!55292 K!16897) Option!13567)

(assert (=> b!4835363 (= res!2060104 (not (isDefined!10677 (getPair!1031 lt!1981324 key!2791))))))

(declare-fun lt!1981326 () Unit!144554)

(declare-fun lt!1981329 () tuple2!58520)

(declare-fun forallContained!4454 (List!55293 Int tuple2!58520) Unit!144554)

(assert (=> b!4835363 (= lt!1981326 (forallContained!4454 (toList!7615 lm!1282) lambda!239287 lt!1981329))))

(declare-fun contains!18994 (List!55293 tuple2!58520) Bool)

(assert (=> b!4835363 (contains!18994 (toList!7615 lm!1282) lt!1981329)))

(assert (=> b!4835363 (= lt!1981329 (tuple2!58521 lt!1981327 lt!1981324))))

(declare-fun lt!1981330 () Unit!144554)

(declare-fun lemmaGetValueImpliesTupleContained!710 (ListLongMap!6125 (_ BitVec 64) List!55292) Unit!144554)

(assert (=> b!4835363 (= lt!1981330 (lemmaGetValueImpliesTupleContained!710 lm!1282 lt!1981327 lt!1981324))))

(declare-fun apply!13394 (ListLongMap!6125 (_ BitVec 64)) List!55292)

(assert (=> b!4835363 (= lt!1981324 (apply!13394 lm!1282 lt!1981327))))

(declare-fun res!2060102 () Bool)

(assert (=> start!502680 (=> (not res!2060102) (not e!3021812))))

(assert (=> start!502680 (= res!2060102 (forall!12730 (toList!7615 lm!1282) lambda!239287))))

(assert (=> start!502680 e!3021812))

(declare-fun inv!70798 (ListLongMap!6125) Bool)

(assert (=> start!502680 (and (inv!70798 lm!1282) e!3021814)))

(assert (=> start!502680 true))

(declare-fun tp_is_empty!34757 () Bool)

(assert (=> start!502680 tp_is_empty!34757))

(assert (= (and start!502680 res!2060102) b!4835361))

(assert (= (and b!4835361 res!2060103) b!4835360))

(assert (= (and b!4835360 res!2060106) b!4835363))

(assert (= (and b!4835363 (not res!2060104)) b!4835358))

(assert (= (and b!4835358 (not res!2060105)) b!4835362))

(assert (= start!502680 b!4835359))

(declare-fun m!5830564 () Bool)

(assert (=> b!4835362 m!5830564))

(declare-fun m!5830566 () Bool)

(assert (=> b!4835362 m!5830566))

(assert (=> b!4835362 m!5830566))

(declare-fun m!5830568 () Bool)

(assert (=> b!4835362 m!5830568))

(declare-fun m!5830570 () Bool)

(assert (=> b!4835362 m!5830570))

(declare-fun m!5830572 () Bool)

(assert (=> b!4835360 m!5830572))

(declare-fun m!5830574 () Bool)

(assert (=> b!4835360 m!5830574))

(assert (=> b!4835358 m!5830564))

(declare-fun m!5830576 () Bool)

(assert (=> b!4835358 m!5830576))

(declare-fun m!5830578 () Bool)

(assert (=> b!4835358 m!5830578))

(declare-fun m!5830580 () Bool)

(assert (=> b!4835361 m!5830580))

(declare-fun m!5830582 () Bool)

(assert (=> b!4835363 m!5830582))

(declare-fun m!5830584 () Bool)

(assert (=> b!4835363 m!5830584))

(declare-fun m!5830586 () Bool)

(assert (=> b!4835363 m!5830586))

(declare-fun m!5830588 () Bool)

(assert (=> b!4835363 m!5830588))

(declare-fun m!5830590 () Bool)

(assert (=> b!4835363 m!5830590))

(assert (=> b!4835363 m!5830584))

(declare-fun m!5830592 () Bool)

(assert (=> b!4835363 m!5830592))

(assert (=> start!502680 m!5830564))

(declare-fun m!5830594 () Bool)

(assert (=> start!502680 m!5830594))

(push 1)

(assert (not b!4835361))

(assert (not b!4835359))

(assert (not b!4835363))

(assert tp_is_empty!34757)

(assert (not b!4835360))

(assert (not start!502680))

(assert (not b!4835362))

(assert (not b!4835358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


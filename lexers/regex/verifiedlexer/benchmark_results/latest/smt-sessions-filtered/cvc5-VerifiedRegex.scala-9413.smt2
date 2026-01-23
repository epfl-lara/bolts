; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498196 () Bool)

(assert start!498196)

(declare-fun b!4815326 () Bool)

(declare-fun res!2048298 () Bool)

(declare-fun e!3008527 () Bool)

(assert (=> b!4815326 (=> (not res!2048298) (not e!3008527))))

(declare-datatypes ((K!16352 0))(
  ( (K!16353 (val!21387 Int)) )
))
(declare-datatypes ((V!16598 0))(
  ( (V!16599 (val!21388 Int)) )
))
(declare-datatypes ((tuple2!57710 0))(
  ( (tuple2!57711 (_1!32149 K!16352) (_2!32149 V!16598)) )
))
(declare-datatypes ((List!54829 0))(
  ( (Nil!54705) (Cons!54705 (h!61137 tuple2!57710) (t!362325 List!54829)) )
))
(declare-datatypes ((tuple2!57712 0))(
  ( (tuple2!57713 (_1!32150 (_ BitVec 64)) (_2!32150 List!54829)) )
))
(declare-datatypes ((List!54830 0))(
  ( (Nil!54706) (Cons!54706 (h!61138 tuple2!57712) (t!362326 List!54830)) )
))
(declare-datatypes ((ListLongMap!5753 0))(
  ( (ListLongMap!5754 (toList!7273 List!54830)) )
))
(declare-fun lm!2251 () ListLongMap!5753)

(declare-datatypes ((Hashable!7145 0))(
  ( (HashableExt!7144 (__x!33420 Int)) )
))
(declare-fun hashF!1486 () Hashable!7145)

(declare-fun allKeysSameHashInMap!2461 (ListLongMap!5753 Hashable!7145) Bool)

(assert (=> b!4815326 (= res!2048298 (allKeysSameHashInMap!2461 lm!2251 hashF!1486))))

(declare-fun b!4815327 () Bool)

(declare-fun res!2048300 () Bool)

(assert (=> b!4815327 (=> (not res!2048300) (not e!3008527))))

(declare-fun key!5322 () K!16352)

(declare-datatypes ((ListMap!6687 0))(
  ( (ListMap!6688 (toList!7274 List!54829)) )
))
(declare-fun contains!18498 (ListMap!6687 K!16352) Bool)

(declare-fun extractMap!2595 (List!54830) ListMap!6687)

(assert (=> b!4815327 (= res!2048300 (contains!18498 (extractMap!2595 (toList!7273 lm!2251)) key!5322))))

(declare-fun b!4815328 () Bool)

(assert (=> b!4815328 (= e!3008527 (not true))))

(declare-datatypes ((Option!13395 0))(
  ( (None!13394) (Some!13394 (v!49043 tuple2!57710)) )
))
(declare-fun lt!1966134 () Option!13395)

(declare-fun lt!1966136 () List!54829)

(declare-fun getPair!985 (List!54829 K!16352) Option!13395)

(assert (=> b!4815328 (= lt!1966134 (getPair!985 lt!1966136 key!5322))))

(declare-fun lambda!234361 () Int)

(declare-datatypes ((Unit!141873 0))(
  ( (Unit!141874) )
))
(declare-fun lt!1966135 () Unit!141873)

(declare-fun lt!1966137 () tuple2!57712)

(declare-fun forallContained!4313 (List!54830 Int tuple2!57712) Unit!141873)

(assert (=> b!4815328 (= lt!1966135 (forallContained!4313 (toList!7273 lm!2251) lambda!234361 lt!1966137))))

(declare-fun contains!18499 (List!54830 tuple2!57712) Bool)

(assert (=> b!4815328 (contains!18499 (toList!7273 lm!2251) lt!1966137)))

(declare-fun lt!1966138 () (_ BitVec 64))

(assert (=> b!4815328 (= lt!1966137 (tuple2!57713 lt!1966138 lt!1966136))))

(declare-fun lt!1966139 () Unit!141873)

(declare-fun lemmaGetValueImpliesTupleContained!656 (ListLongMap!5753 (_ BitVec 64) List!54829) Unit!141873)

(assert (=> b!4815328 (= lt!1966139 (lemmaGetValueImpliesTupleContained!656 lm!2251 lt!1966138 lt!1966136))))

(declare-fun apply!13250 (ListLongMap!5753 (_ BitVec 64)) List!54829)

(assert (=> b!4815328 (= lt!1966136 (apply!13250 lm!2251 lt!1966138))))

(declare-fun contains!18500 (ListLongMap!5753 (_ BitVec 64)) Bool)

(assert (=> b!4815328 (contains!18500 lm!2251 lt!1966138)))

(declare-fun hash!5215 (Hashable!7145 K!16352) (_ BitVec 64))

(assert (=> b!4815328 (= lt!1966138 (hash!5215 hashF!1486 key!5322))))

(declare-fun lt!1966133 () Unit!141873)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1083 (ListLongMap!5753 K!16352 Hashable!7145) Unit!141873)

(assert (=> b!4815328 (= lt!1966133 (lemmaInGenMapThenLongMapContainsHash!1083 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815329 () Bool)

(declare-fun e!3008526 () Bool)

(declare-fun tp!1361804 () Bool)

(assert (=> b!4815329 (= e!3008526 tp!1361804)))

(declare-fun res!2048299 () Bool)

(assert (=> start!498196 (=> (not res!2048299) (not e!3008527))))

(declare-fun forall!12451 (List!54830 Int) Bool)

(assert (=> start!498196 (= res!2048299 (forall!12451 (toList!7273 lm!2251) lambda!234361))))

(assert (=> start!498196 e!3008527))

(declare-fun inv!70253 (ListLongMap!5753) Bool)

(assert (=> start!498196 (and (inv!70253 lm!2251) e!3008526)))

(assert (=> start!498196 true))

(declare-fun tp_is_empty!34163 () Bool)

(assert (=> start!498196 tp_is_empty!34163))

(assert (= (and start!498196 res!2048299) b!4815326))

(assert (= (and b!4815326 res!2048298) b!4815327))

(assert (= (and b!4815327 res!2048300) b!4815328))

(assert (= start!498196 b!4815329))

(declare-fun m!5801382 () Bool)

(assert (=> b!4815326 m!5801382))

(declare-fun m!5801384 () Bool)

(assert (=> b!4815327 m!5801384))

(assert (=> b!4815327 m!5801384))

(declare-fun m!5801386 () Bool)

(assert (=> b!4815327 m!5801386))

(declare-fun m!5801388 () Bool)

(assert (=> b!4815328 m!5801388))

(declare-fun m!5801390 () Bool)

(assert (=> b!4815328 m!5801390))

(declare-fun m!5801392 () Bool)

(assert (=> b!4815328 m!5801392))

(declare-fun m!5801394 () Bool)

(assert (=> b!4815328 m!5801394))

(declare-fun m!5801396 () Bool)

(assert (=> b!4815328 m!5801396))

(declare-fun m!5801398 () Bool)

(assert (=> b!4815328 m!5801398))

(declare-fun m!5801400 () Bool)

(assert (=> b!4815328 m!5801400))

(declare-fun m!5801402 () Bool)

(assert (=> b!4815328 m!5801402))

(declare-fun m!5801404 () Bool)

(assert (=> start!498196 m!5801404))

(declare-fun m!5801406 () Bool)

(assert (=> start!498196 m!5801406))

(push 1)

(assert (not start!498196))

(assert (not b!4815329))

(assert (not b!4815327))

(assert (not b!4815328))

(assert (not b!4815326))

(assert tp_is_empty!34163)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


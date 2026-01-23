; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498124 () Bool)

(assert start!498124)

(declare-fun res!2048141 () Bool)

(declare-fun e!3008348 () Bool)

(assert (=> start!498124 (=> (not res!2048141) (not e!3008348))))

(declare-datatypes ((K!16327 0))(
  ( (K!16328 (val!21367 Int)) )
))
(declare-datatypes ((V!16573 0))(
  ( (V!16574 (val!21368 Int)) )
))
(declare-datatypes ((tuple2!57670 0))(
  ( (tuple2!57671 (_1!32129 K!16327) (_2!32129 V!16573)) )
))
(declare-datatypes ((List!54807 0))(
  ( (Nil!54683) (Cons!54683 (h!61115 tuple2!57670) (t!362303 List!54807)) )
))
(declare-datatypes ((tuple2!57672 0))(
  ( (tuple2!57673 (_1!32130 (_ BitVec 64)) (_2!32130 List!54807)) )
))
(declare-datatypes ((List!54808 0))(
  ( (Nil!54684) (Cons!54684 (h!61116 tuple2!57672) (t!362304 List!54808)) )
))
(declare-datatypes ((ListLongMap!5733 0))(
  ( (ListLongMap!5734 (toList!7253 List!54808)) )
))
(declare-fun lm!1254 () ListLongMap!5733)

(declare-fun lambda!234283 () Int)

(declare-fun forall!12441 (List!54808 Int) Bool)

(assert (=> start!498124 (= res!2048141 (forall!12441 (toList!7253 lm!1254) lambda!234283))))

(assert (=> start!498124 e!3008348))

(declare-fun e!3008349 () Bool)

(declare-fun inv!70228 (ListLongMap!5733) Bool)

(assert (=> start!498124 (and (inv!70228 lm!1254) e!3008349)))

(assert (=> start!498124 true))

(declare-fun tp_is_empty!34143 () Bool)

(assert (=> start!498124 tp_is_empty!34143))

(declare-fun b!4815036 () Bool)

(declare-fun e!3008350 () Bool)

(assert (=> b!4815036 (= e!3008348 (not e!3008350))))

(declare-fun res!2048140 () Bool)

(assert (=> b!4815036 (=> res!2048140 e!3008350)))

(declare-fun lt!1965801 () (_ BitVec 64))

(declare-fun lt!1965806 () List!54807)

(declare-fun contains!18466 (List!54808 tuple2!57672) Bool)

(assert (=> b!4815036 (= res!2048140 (contains!18466 (toList!7253 lm!1254) (tuple2!57673 lt!1965801 lt!1965806)))))

(declare-fun apply!13240 (ListLongMap!5733 (_ BitVec 64)) List!54807)

(assert (=> b!4815036 (= lt!1965806 (apply!13240 lm!1254 lt!1965801))))

(declare-fun contains!18467 (ListLongMap!5733 (_ BitVec 64)) Bool)

(assert (=> b!4815036 (contains!18467 lm!1254 lt!1965801)))

(declare-datatypes ((Hashable!7135 0))(
  ( (HashableExt!7134 (__x!33410 Int)) )
))
(declare-fun hashF!938 () Hashable!7135)

(declare-fun key!2670 () K!16327)

(declare-fun hash!5204 (Hashable!7135 K!16327) (_ BitVec 64))

(assert (=> b!4815036 (= lt!1965801 (hash!5204 hashF!938 key!2670))))

(declare-datatypes ((Unit!141840 0))(
  ( (Unit!141841) )
))
(declare-fun lt!1965802 () Unit!141840)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1073 (ListLongMap!5733 K!16327 Hashable!7135) Unit!141840)

(assert (=> b!4815036 (= lt!1965802 (lemmaInGenMapThenLongMapContainsHash!1073 lm!1254 key!2670 hashF!938))))

(declare-fun b!4815037 () Bool)

(assert (=> b!4815037 (= e!3008350 true)))

(assert (=> b!4815037 false))

(declare-fun lt!1965804 () Unit!141840)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1037 (List!54808 (_ BitVec 64) List!54807) Unit!141840)

(assert (=> b!4815037 (= lt!1965804 (lemmaGetValueByKeyImpliesContainsTuple!1037 (toList!7253 lm!1254) lt!1965801 lt!1965806))))

(declare-datatypes ((Option!13386 0))(
  ( (None!13385) (Some!13385 (v!49032 List!54807)) )
))
(declare-fun isDefined!10523 (Option!13386) Bool)

(declare-fun getValueByKey!2549 (List!54808 (_ BitVec 64)) Option!13386)

(assert (=> b!4815037 (isDefined!10523 (getValueByKey!2549 (toList!7253 lm!1254) lt!1965801))))

(declare-fun lt!1965805 () Unit!141840)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2335 (List!54808 (_ BitVec 64)) Unit!141840)

(assert (=> b!4815037 (= lt!1965805 (lemmaContainsKeyImpliesGetValueByKeyDefined!2335 (toList!7253 lm!1254) lt!1965801))))

(declare-fun containsKey!4220 (List!54808 (_ BitVec 64)) Bool)

(assert (=> b!4815037 (containsKey!4220 (toList!7253 lm!1254) lt!1965801)))

(declare-fun lt!1965803 () Unit!141840)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!324 (List!54808 (_ BitVec 64)) Unit!141840)

(assert (=> b!4815037 (= lt!1965803 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!324 (toList!7253 lm!1254) lt!1965801))))

(declare-fun b!4815038 () Bool)

(declare-fun res!2048138 () Bool)

(assert (=> b!4815038 (=> (not res!2048138) (not e!3008348))))

(declare-fun allKeysSameHashInMap!2451 (ListLongMap!5733 Hashable!7135) Bool)

(assert (=> b!4815038 (= res!2048138 (allKeysSameHashInMap!2451 lm!1254 hashF!938))))

(declare-fun b!4815039 () Bool)

(declare-fun tp!1361762 () Bool)

(assert (=> b!4815039 (= e!3008349 tp!1361762)))

(declare-fun b!4815040 () Bool)

(declare-fun res!2048139 () Bool)

(assert (=> b!4815040 (=> (not res!2048139) (not e!3008348))))

(declare-datatypes ((ListMap!6667 0))(
  ( (ListMap!6668 (toList!7254 List!54807)) )
))
(declare-fun contains!18468 (ListMap!6667 K!16327) Bool)

(declare-fun extractMap!2585 (List!54808) ListMap!6667)

(assert (=> b!4815040 (= res!2048139 (contains!18468 (extractMap!2585 (toList!7253 lm!1254)) key!2670))))

(assert (= (and start!498124 res!2048141) b!4815038))

(assert (= (and b!4815038 res!2048138) b!4815040))

(assert (= (and b!4815040 res!2048139) b!4815036))

(assert (= (and b!4815036 (not res!2048140)) b!4815037))

(assert (= start!498124 b!4815039))

(declare-fun m!5800930 () Bool)

(assert (=> start!498124 m!5800930))

(declare-fun m!5800932 () Bool)

(assert (=> start!498124 m!5800932))

(declare-fun m!5800934 () Bool)

(assert (=> b!4815036 m!5800934))

(declare-fun m!5800936 () Bool)

(assert (=> b!4815036 m!5800936))

(declare-fun m!5800938 () Bool)

(assert (=> b!4815036 m!5800938))

(declare-fun m!5800940 () Bool)

(assert (=> b!4815036 m!5800940))

(declare-fun m!5800942 () Bool)

(assert (=> b!4815036 m!5800942))

(declare-fun m!5800944 () Bool)

(assert (=> b!4815040 m!5800944))

(assert (=> b!4815040 m!5800944))

(declare-fun m!5800946 () Bool)

(assert (=> b!4815040 m!5800946))

(declare-fun m!5800948 () Bool)

(assert (=> b!4815038 m!5800948))

(declare-fun m!5800950 () Bool)

(assert (=> b!4815037 m!5800950))

(declare-fun m!5800952 () Bool)

(assert (=> b!4815037 m!5800952))

(declare-fun m!5800954 () Bool)

(assert (=> b!4815037 m!5800954))

(declare-fun m!5800956 () Bool)

(assert (=> b!4815037 m!5800956))

(declare-fun m!5800958 () Bool)

(assert (=> b!4815037 m!5800958))

(declare-fun m!5800960 () Bool)

(assert (=> b!4815037 m!5800960))

(assert (=> b!4815037 m!5800950))

(push 1)

(assert (not b!4815036))

(assert (not b!4815039))

(assert tp_is_empty!34143)

(assert (not start!498124))

(assert (not b!4815038))

(assert (not b!4815037))

(assert (not b!4815040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


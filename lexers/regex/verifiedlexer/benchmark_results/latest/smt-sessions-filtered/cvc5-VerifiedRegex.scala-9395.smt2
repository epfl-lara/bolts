; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497758 () Bool)

(assert start!497758)

(declare-fun b!4813589 () Bool)

(declare-fun e!3007413 () Bool)

(assert (=> b!4813589 (= e!3007413 true)))

(declare-datatypes ((K!16262 0))(
  ( (K!16263 (val!21315 Int)) )
))
(declare-datatypes ((V!16508 0))(
  ( (V!16509 (val!21316 Int)) )
))
(declare-datatypes ((tuple2!57566 0))(
  ( (tuple2!57567 (_1!32077 K!16262) (_2!32077 V!16508)) )
))
(declare-datatypes ((List!54750 0))(
  ( (Nil!54626) (Cons!54626 (h!61058 tuple2!57566) (t!362246 List!54750)) )
))
(declare-datatypes ((tuple2!57568 0))(
  ( (tuple2!57569 (_1!32078 (_ BitVec 64)) (_2!32078 List!54750)) )
))
(declare-datatypes ((List!54751 0))(
  ( (Nil!54627) (Cons!54627 (h!61059 tuple2!57568) (t!362247 List!54751)) )
))
(declare-datatypes ((ListLongMap!5681 0))(
  ( (ListLongMap!5682 (toList!7201 List!54751)) )
))
(declare-fun lm!1254 () ListLongMap!5681)

(declare-fun lt!1964522 () (_ BitVec 64))

(declare-datatypes ((Option!13352 0))(
  ( (None!13351) (Some!13351 (v!48984 List!54750)) )
))
(declare-fun isDefined!10489 (Option!13352) Bool)

(declare-fun getValueByKey!2519 (List!54751 (_ BitVec 64)) Option!13352)

(assert (=> b!4813589 (isDefined!10489 (getValueByKey!2519 (toList!7201 lm!1254) lt!1964522))))

(declare-datatypes ((Unit!141725 0))(
  ( (Unit!141726) )
))
(declare-fun lt!1964520 () Unit!141725)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2306 (List!54751 (_ BitVec 64)) Unit!141725)

(assert (=> b!4813589 (= lt!1964520 (lemmaContainsKeyImpliesGetValueByKeyDefined!2306 (toList!7201 lm!1254) lt!1964522))))

(declare-fun containsKey!4188 (List!54751 (_ BitVec 64)) Bool)

(assert (=> b!4813589 (containsKey!4188 (toList!7201 lm!1254) lt!1964522)))

(declare-fun lt!1964521 () Unit!141725)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!300 (List!54751 (_ BitVec 64)) Unit!141725)

(assert (=> b!4813589 (= lt!1964521 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!300 (toList!7201 lm!1254) lt!1964522))))

(declare-fun b!4813591 () Bool)

(declare-fun e!3007414 () Bool)

(assert (=> b!4813591 (= e!3007414 (not e!3007413))))

(declare-fun res!2047371 () Bool)

(assert (=> b!4813591 (=> res!2047371 e!3007413)))

(declare-fun contains!18381 (List!54751 tuple2!57568) Bool)

(declare-fun apply!13214 (ListLongMap!5681 (_ BitVec 64)) List!54750)

(assert (=> b!4813591 (= res!2047371 (contains!18381 (toList!7201 lm!1254) (tuple2!57569 lt!1964522 (apply!13214 lm!1254 lt!1964522))))))

(declare-fun contains!18382 (ListLongMap!5681 (_ BitVec 64)) Bool)

(assert (=> b!4813591 (contains!18382 lm!1254 lt!1964522)))

(declare-datatypes ((Hashable!7109 0))(
  ( (HashableExt!7108 (__x!33384 Int)) )
))
(declare-fun hashF!938 () Hashable!7109)

(declare-fun key!2670 () K!16262)

(declare-fun hash!5172 (Hashable!7109 K!16262) (_ BitVec 64))

(assert (=> b!4813591 (= lt!1964522 (hash!5172 hashF!938 key!2670))))

(declare-fun lt!1964523 () Unit!141725)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1047 (ListLongMap!5681 K!16262 Hashable!7109) Unit!141725)

(assert (=> b!4813591 (= lt!1964523 (lemmaInGenMapThenLongMapContainsHash!1047 lm!1254 key!2670 hashF!938))))

(declare-fun b!4813592 () Bool)

(declare-fun res!2047372 () Bool)

(assert (=> b!4813592 (=> (not res!2047372) (not e!3007414))))

(declare-fun allKeysSameHashInMap!2425 (ListLongMap!5681 Hashable!7109) Bool)

(assert (=> b!4813592 (= res!2047372 (allKeysSameHashInMap!2425 lm!1254 hashF!938))))

(declare-fun b!4813593 () Bool)

(declare-fun e!3007415 () Bool)

(declare-fun tp!1361626 () Bool)

(assert (=> b!4813593 (= e!3007415 tp!1361626)))

(declare-fun b!4813590 () Bool)

(declare-fun res!2047370 () Bool)

(assert (=> b!4813590 (=> (not res!2047370) (not e!3007414))))

(declare-datatypes ((ListMap!6615 0))(
  ( (ListMap!6616 (toList!7202 List!54750)) )
))
(declare-fun contains!18383 (ListMap!6615 K!16262) Bool)

(declare-fun extractMap!2559 (List!54751) ListMap!6615)

(assert (=> b!4813590 (= res!2047370 (contains!18383 (extractMap!2559 (toList!7201 lm!1254)) key!2670))))

(declare-fun res!2047369 () Bool)

(assert (=> start!497758 (=> (not res!2047369) (not e!3007414))))

(declare-fun lambda!233956 () Int)

(declare-fun forall!12413 (List!54751 Int) Bool)

(assert (=> start!497758 (= res!2047369 (forall!12413 (toList!7201 lm!1254) lambda!233956))))

(assert (=> start!497758 e!3007414))

(declare-fun inv!70163 (ListLongMap!5681) Bool)

(assert (=> start!497758 (and (inv!70163 lm!1254) e!3007415)))

(assert (=> start!497758 true))

(declare-fun tp_is_empty!34087 () Bool)

(assert (=> start!497758 tp_is_empty!34087))

(assert (= (and start!497758 res!2047369) b!4813592))

(assert (= (and b!4813592 res!2047372) b!4813590))

(assert (= (and b!4813590 res!2047370) b!4813591))

(assert (= (and b!4813591 (not res!2047371)) b!4813589))

(assert (= start!497758 b!4813593))

(declare-fun m!5799194 () Bool)

(assert (=> b!4813592 m!5799194))

(declare-fun m!5799196 () Bool)

(assert (=> start!497758 m!5799196))

(declare-fun m!5799198 () Bool)

(assert (=> start!497758 m!5799198))

(declare-fun m!5799200 () Bool)

(assert (=> b!4813590 m!5799200))

(assert (=> b!4813590 m!5799200))

(declare-fun m!5799202 () Bool)

(assert (=> b!4813590 m!5799202))

(declare-fun m!5799204 () Bool)

(assert (=> b!4813589 m!5799204))

(declare-fun m!5799206 () Bool)

(assert (=> b!4813589 m!5799206))

(declare-fun m!5799208 () Bool)

(assert (=> b!4813589 m!5799208))

(declare-fun m!5799210 () Bool)

(assert (=> b!4813589 m!5799210))

(assert (=> b!4813589 m!5799206))

(declare-fun m!5799212 () Bool)

(assert (=> b!4813589 m!5799212))

(declare-fun m!5799214 () Bool)

(assert (=> b!4813591 m!5799214))

(declare-fun m!5799216 () Bool)

(assert (=> b!4813591 m!5799216))

(declare-fun m!5799218 () Bool)

(assert (=> b!4813591 m!5799218))

(declare-fun m!5799220 () Bool)

(assert (=> b!4813591 m!5799220))

(declare-fun m!5799222 () Bool)

(assert (=> b!4813591 m!5799222))

(push 1)

(assert (not b!4813592))

(assert (not b!4813591))

(assert (not start!497758))

(assert tp_is_empty!34087)

(assert (not b!4813589))

(assert (not b!4813590))

(assert (not b!4813593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


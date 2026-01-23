; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497762 () Bool)

(assert start!497762)

(declare-fun b!4813619 () Bool)

(declare-fun e!3007433 () Bool)

(assert (=> b!4813619 (= e!3007433 true)))

(declare-datatypes ((K!16267 0))(
  ( (K!16268 (val!21319 Int)) )
))
(declare-datatypes ((V!16513 0))(
  ( (V!16514 (val!21320 Int)) )
))
(declare-datatypes ((tuple2!57574 0))(
  ( (tuple2!57575 (_1!32081 K!16267) (_2!32081 V!16513)) )
))
(declare-datatypes ((List!54754 0))(
  ( (Nil!54630) (Cons!54630 (h!61062 tuple2!57574) (t!362250 List!54754)) )
))
(declare-datatypes ((tuple2!57576 0))(
  ( (tuple2!57577 (_1!32082 (_ BitVec 64)) (_2!32082 List!54754)) )
))
(declare-datatypes ((List!54755 0))(
  ( (Nil!54631) (Cons!54631 (h!61063 tuple2!57576) (t!362251 List!54755)) )
))
(declare-datatypes ((ListLongMap!5685 0))(
  ( (ListLongMap!5686 (toList!7205 List!54755)) )
))
(declare-fun lm!1254 () ListLongMap!5685)

(declare-fun lt!1964544 () (_ BitVec 64))

(declare-datatypes ((Option!13354 0))(
  ( (None!13353) (Some!13353 (v!48986 List!54754)) )
))
(declare-fun isDefined!10491 (Option!13354) Bool)

(declare-fun getValueByKey!2521 (List!54755 (_ BitVec 64)) Option!13354)

(assert (=> b!4813619 (isDefined!10491 (getValueByKey!2521 (toList!7205 lm!1254) lt!1964544))))

(declare-datatypes ((Unit!141729 0))(
  ( (Unit!141730) )
))
(declare-fun lt!1964545 () Unit!141729)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2308 (List!54755 (_ BitVec 64)) Unit!141729)

(assert (=> b!4813619 (= lt!1964545 (lemmaContainsKeyImpliesGetValueByKeyDefined!2308 (toList!7205 lm!1254) lt!1964544))))

(declare-fun containsKey!4190 (List!54755 (_ BitVec 64)) Bool)

(assert (=> b!4813619 (containsKey!4190 (toList!7205 lm!1254) lt!1964544)))

(declare-fun lt!1964547 () Unit!141729)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!302 (List!54755 (_ BitVec 64)) Unit!141729)

(assert (=> b!4813619 (= lt!1964547 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!302 (toList!7205 lm!1254) lt!1964544))))

(declare-fun b!4813620 () Bool)

(declare-fun e!3007432 () Bool)

(declare-fun tp!1361632 () Bool)

(assert (=> b!4813620 (= e!3007432 tp!1361632)))

(declare-fun b!4813621 () Bool)

(declare-fun e!3007431 () Bool)

(assert (=> b!4813621 (= e!3007431 (not e!3007433))))

(declare-fun res!2047393 () Bool)

(assert (=> b!4813621 (=> res!2047393 e!3007433)))

(declare-fun contains!18387 (List!54755 tuple2!57576) Bool)

(declare-fun apply!13216 (ListLongMap!5685 (_ BitVec 64)) List!54754)

(assert (=> b!4813621 (= res!2047393 (contains!18387 (toList!7205 lm!1254) (tuple2!57577 lt!1964544 (apply!13216 lm!1254 lt!1964544))))))

(declare-fun contains!18388 (ListLongMap!5685 (_ BitVec 64)) Bool)

(assert (=> b!4813621 (contains!18388 lm!1254 lt!1964544)))

(declare-datatypes ((Hashable!7111 0))(
  ( (HashableExt!7110 (__x!33386 Int)) )
))
(declare-fun hashF!938 () Hashable!7111)

(declare-fun key!2670 () K!16267)

(declare-fun hash!5174 (Hashable!7111 K!16267) (_ BitVec 64))

(assert (=> b!4813621 (= lt!1964544 (hash!5174 hashF!938 key!2670))))

(declare-fun lt!1964546 () Unit!141729)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1049 (ListLongMap!5685 K!16267 Hashable!7111) Unit!141729)

(assert (=> b!4813621 (= lt!1964546 (lemmaInGenMapThenLongMapContainsHash!1049 lm!1254 key!2670 hashF!938))))

(declare-fun b!4813622 () Bool)

(declare-fun res!2047396 () Bool)

(assert (=> b!4813622 (=> (not res!2047396) (not e!3007431))))

(declare-datatypes ((ListMap!6619 0))(
  ( (ListMap!6620 (toList!7206 List!54754)) )
))
(declare-fun contains!18389 (ListMap!6619 K!16267) Bool)

(declare-fun extractMap!2561 (List!54755) ListMap!6619)

(assert (=> b!4813622 (= res!2047396 (contains!18389 (extractMap!2561 (toList!7205 lm!1254)) key!2670))))

(declare-fun res!2047395 () Bool)

(assert (=> start!497762 (=> (not res!2047395) (not e!3007431))))

(declare-fun lambda!233962 () Int)

(declare-fun forall!12415 (List!54755 Int) Bool)

(assert (=> start!497762 (= res!2047395 (forall!12415 (toList!7205 lm!1254) lambda!233962))))

(assert (=> start!497762 e!3007431))

(declare-fun inv!70168 (ListLongMap!5685) Bool)

(assert (=> start!497762 (and (inv!70168 lm!1254) e!3007432)))

(assert (=> start!497762 true))

(declare-fun tp_is_empty!34091 () Bool)

(assert (=> start!497762 tp_is_empty!34091))

(declare-fun b!4813623 () Bool)

(declare-fun res!2047394 () Bool)

(assert (=> b!4813623 (=> (not res!2047394) (not e!3007431))))

(declare-fun allKeysSameHashInMap!2427 (ListLongMap!5685 Hashable!7111) Bool)

(assert (=> b!4813623 (= res!2047394 (allKeysSameHashInMap!2427 lm!1254 hashF!938))))

(assert (= (and start!497762 res!2047395) b!4813623))

(assert (= (and b!4813623 res!2047394) b!4813622))

(assert (= (and b!4813622 res!2047396) b!4813621))

(assert (= (and b!4813621 (not res!2047393)) b!4813619))

(assert (= start!497762 b!4813620))

(declare-fun m!5799254 () Bool)

(assert (=> b!4813623 m!5799254))

(declare-fun m!5799256 () Bool)

(assert (=> b!4813621 m!5799256))

(declare-fun m!5799258 () Bool)

(assert (=> b!4813621 m!5799258))

(declare-fun m!5799260 () Bool)

(assert (=> b!4813621 m!5799260))

(declare-fun m!5799262 () Bool)

(assert (=> b!4813621 m!5799262))

(declare-fun m!5799264 () Bool)

(assert (=> b!4813621 m!5799264))

(declare-fun m!5799266 () Bool)

(assert (=> b!4813622 m!5799266))

(assert (=> b!4813622 m!5799266))

(declare-fun m!5799268 () Bool)

(assert (=> b!4813622 m!5799268))

(declare-fun m!5799270 () Bool)

(assert (=> b!4813619 m!5799270))

(declare-fun m!5799272 () Bool)

(assert (=> b!4813619 m!5799272))

(assert (=> b!4813619 m!5799270))

(declare-fun m!5799274 () Bool)

(assert (=> b!4813619 m!5799274))

(declare-fun m!5799276 () Bool)

(assert (=> b!4813619 m!5799276))

(declare-fun m!5799278 () Bool)

(assert (=> b!4813619 m!5799278))

(declare-fun m!5799280 () Bool)

(assert (=> start!497762 m!5799280))

(declare-fun m!5799282 () Bool)

(assert (=> start!497762 m!5799282))

(push 1)

(assert tp_is_empty!34091)

(assert (not b!4813620))

(assert (not b!4813622))

(assert (not b!4813623))

(assert (not b!4813619))

(assert (not b!4813621))

(assert (not start!497762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


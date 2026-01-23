; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501226 () Bool)

(assert start!501226)

(declare-fun b!4828128 () Bool)

(declare-fun e!3016881 () Bool)

(declare-datatypes ((K!16717 0))(
  ( (K!16718 (val!21679 Int)) )
))
(declare-datatypes ((V!16963 0))(
  ( (V!16964 (val!21680 Int)) )
))
(declare-datatypes ((tuple2!58294 0))(
  ( (tuple2!58295 (_1!32441 K!16717) (_2!32441 V!16963)) )
))
(declare-datatypes ((List!55152 0))(
  ( (Nil!55028) (Cons!55028 (h!61462 tuple2!58294) (t!362648 List!55152)) )
))
(declare-datatypes ((ListMap!6895 0))(
  ( (ListMap!6896 (toList!7523 List!55152)) )
))
(declare-fun lt!1974761 () ListMap!6895)

(declare-fun key!5594 () K!16717)

(declare-fun contains!18830 (ListMap!6895 K!16717) Bool)

(assert (=> b!4828128 (= e!3016881 (contains!18830 lt!1974761 key!5594))))

(declare-fun b!4828129 () Bool)

(declare-fun res!2055966 () Bool)

(declare-fun e!3016882 () Bool)

(assert (=> b!4828129 (=> (not res!2055966) (not e!3016882))))

(declare-datatypes ((tuple2!58296 0))(
  ( (tuple2!58297 (_1!32442 (_ BitVec 64)) (_2!32442 List!55152)) )
))
(declare-datatypes ((List!55153 0))(
  ( (Nil!55029) (Cons!55029 (h!61463 tuple2!58296) (t!362649 List!55153)) )
))
(declare-datatypes ((ListLongMap!6045 0))(
  ( (ListLongMap!6046 (toList!7524 List!55153)) )
))
(declare-fun lm!2325 () ListLongMap!6045)

(declare-datatypes ((Hashable!7291 0))(
  ( (HashableExt!7290 (__x!33566 Int)) )
))
(declare-fun hashF!1543 () Hashable!7291)

(declare-fun allKeysSameHashInMap!2607 (ListLongMap!6045 Hashable!7291) Bool)

(assert (=> b!4828129 (= res!2055966 (allKeysSameHashInMap!2607 lm!2325 hashF!1543))))

(declare-fun b!4828130 () Bool)

(declare-fun lambda!237289 () Int)

(declare-fun forall!12645 (List!55153 Int) Bool)

(assert (=> b!4828130 (= e!3016882 (not (forall!12645 (toList!7524 lm!2325) lambda!237289)))))

(declare-fun addToMapMapFromBucket!1814 (List!55152 ListMap!6895) ListMap!6895)

(assert (=> b!4828130 (= (contains!18830 (addToMapMapFromBucket!1814 (_2!32442 (h!61463 (toList!7524 lm!2325))) lt!1974761) key!5594) e!3016881)))

(declare-fun res!2055963 () Bool)

(assert (=> b!4828130 (=> res!2055963 e!3016881)))

(declare-fun containsKey!4402 (List!55152 K!16717) Bool)

(assert (=> b!4828130 (= res!2055963 (containsKey!4402 (_2!32442 (h!61463 (toList!7524 lm!2325))) key!5594))))

(declare-datatypes ((Unit!143370 0))(
  ( (Unit!143371) )
))
(declare-fun lt!1974760 () Unit!143370)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!37 (List!55152 ListMap!6895 K!16717) Unit!143370)

(assert (=> b!4828130 (= lt!1974760 (lemmaAddToMapFromBucketContainsIIFInAccOrL!37 (_2!32442 (h!61463 (toList!7524 lm!2325))) lt!1974761 key!5594))))

(declare-fun extractMap!2699 (List!55153) ListMap!6895)

(assert (=> b!4828130 (= lt!1974761 (extractMap!2699 (t!362649 (toList!7524 lm!2325))))))

(declare-fun b!4828131 () Bool)

(declare-fun e!3016883 () Bool)

(declare-fun tp!1362763 () Bool)

(assert (=> b!4828131 (= e!3016883 tp!1362763)))

(declare-fun b!4828132 () Bool)

(declare-fun res!2055965 () Bool)

(assert (=> b!4828132 (=> (not res!2055965) (not e!3016882))))

(assert (=> b!4828132 (= res!2055965 (is-Cons!55029 (toList!7524 lm!2325)))))

(declare-fun res!2055962 () Bool)

(assert (=> start!501226 (=> (not res!2055962) (not e!3016882))))

(assert (=> start!501226 (= res!2055962 (forall!12645 (toList!7524 lm!2325) lambda!237289))))

(assert (=> start!501226 e!3016882))

(declare-fun inv!70618 (ListLongMap!6045) Bool)

(assert (=> start!501226 (and (inv!70618 lm!2325) e!3016883)))

(assert (=> start!501226 true))

(declare-fun tp_is_empty!34521 () Bool)

(assert (=> start!501226 tp_is_empty!34521))

(declare-fun b!4828133 () Bool)

(declare-fun res!2055964 () Bool)

(assert (=> b!4828133 (=> (not res!2055964) (not e!3016882))))

(declare-fun contains!18831 (ListLongMap!6045 (_ BitVec 64)) Bool)

(declare-fun hash!5442 (Hashable!7291 K!16717) (_ BitVec 64))

(assert (=> b!4828133 (= res!2055964 (not (contains!18831 lm!2325 (hash!5442 hashF!1543 key!5594))))))

(assert (= (and start!501226 res!2055962) b!4828129))

(assert (= (and b!4828129 res!2055966) b!4828133))

(assert (= (and b!4828133 res!2055964) b!4828132))

(assert (= (and b!4828132 res!2055965) b!4828130))

(assert (= (and b!4828130 (not res!2055963)) b!4828128))

(assert (= start!501226 b!4828131))

(declare-fun m!5819672 () Bool)

(assert (=> b!4828129 m!5819672))

(declare-fun m!5819674 () Bool)

(assert (=> b!4828130 m!5819674))

(declare-fun m!5819676 () Bool)

(assert (=> b!4828130 m!5819676))

(declare-fun m!5819678 () Bool)

(assert (=> b!4828130 m!5819678))

(declare-fun m!5819680 () Bool)

(assert (=> b!4828130 m!5819680))

(assert (=> b!4828130 m!5819678))

(declare-fun m!5819682 () Bool)

(assert (=> b!4828130 m!5819682))

(declare-fun m!5819684 () Bool)

(assert (=> b!4828130 m!5819684))

(declare-fun m!5819686 () Bool)

(assert (=> b!4828128 m!5819686))

(assert (=> start!501226 m!5819684))

(declare-fun m!5819688 () Bool)

(assert (=> start!501226 m!5819688))

(declare-fun m!5819690 () Bool)

(assert (=> b!4828133 m!5819690))

(assert (=> b!4828133 m!5819690))

(declare-fun m!5819692 () Bool)

(assert (=> b!4828133 m!5819692))

(push 1)

(assert (not b!4828133))

(assert (not b!4828131))

(assert (not b!4828130))

(assert (not b!4828128))

(assert (not b!4828129))

(assert tp_is_empty!34521)

(assert (not start!501226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


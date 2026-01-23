; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501154 () Bool)

(assert start!501154)

(declare-fun b!4827770 () Bool)

(declare-fun res!2055712 () Bool)

(declare-fun e!3016682 () Bool)

(assert (=> b!4827770 (=> (not res!2055712) (not e!3016682))))

(declare-datatypes ((V!16933 0))(
  ( (V!16934 (val!21655 Int)) )
))
(declare-datatypes ((K!16687 0))(
  ( (K!16688 (val!21656 Int)) )
))
(declare-datatypes ((tuple2!58246 0))(
  ( (tuple2!58247 (_1!32417 K!16687) (_2!32417 V!16933)) )
))
(declare-datatypes ((List!55128 0))(
  ( (Nil!55004) (Cons!55004 (h!61438 tuple2!58246) (t!362624 List!55128)) )
))
(declare-datatypes ((tuple2!58248 0))(
  ( (tuple2!58249 (_1!32418 (_ BitVec 64)) (_2!32418 List!55128)) )
))
(declare-datatypes ((List!55129 0))(
  ( (Nil!55005) (Cons!55005 (h!61439 tuple2!58248) (t!362625 List!55129)) )
))
(declare-datatypes ((ListLongMap!6021 0))(
  ( (ListLongMap!6022 (toList!7503 List!55129)) )
))
(declare-fun lm!2325 () ListLongMap!6021)

(declare-datatypes ((Hashable!7279 0))(
  ( (HashableExt!7278 (__x!33554 Int)) )
))
(declare-fun hashF!1543 () Hashable!7279)

(declare-fun allKeysSameHashInMap!2595 (ListLongMap!6021 Hashable!7279) Bool)

(assert (=> b!4827770 (= res!2055712 (allKeysSameHashInMap!2595 lm!2325 hashF!1543))))

(declare-fun b!4827771 () Bool)

(declare-fun res!2055716 () Bool)

(declare-fun e!3016679 () Bool)

(assert (=> b!4827771 (=> res!2055716 e!3016679)))

(declare-fun lt!1974609 () ListLongMap!6021)

(assert (=> b!4827771 (= res!2055716 (not (allKeysSameHashInMap!2595 lt!1974609 hashF!1543)))))

(declare-fun b!4827772 () Bool)

(declare-fun e!3016681 () Bool)

(assert (=> b!4827772 (= e!3016682 e!3016681)))

(declare-fun res!2055717 () Bool)

(assert (=> b!4827772 (=> (not res!2055717) (not e!3016681))))

(declare-fun lt!1974610 () (_ BitVec 64))

(declare-fun contains!18812 (ListLongMap!6021 (_ BitVec 64)) Bool)

(assert (=> b!4827772 (= res!2055717 (not (contains!18812 lm!2325 lt!1974610)))))

(declare-fun key!5594 () K!16687)

(declare-fun hash!5428 (Hashable!7279 K!16687) (_ BitVec 64))

(assert (=> b!4827772 (= lt!1974610 (hash!5428 hashF!1543 key!5594))))

(declare-fun res!2055715 () Bool)

(assert (=> start!501154 (=> (not res!2055715) (not e!3016682))))

(declare-fun lambda!237213 () Int)

(declare-fun forall!12633 (List!55129 Int) Bool)

(assert (=> start!501154 (= res!2055715 (forall!12633 (toList!7503 lm!2325) lambda!237213))))

(assert (=> start!501154 e!3016682))

(declare-fun e!3016680 () Bool)

(declare-fun inv!70588 (ListLongMap!6021) Bool)

(assert (=> start!501154 (and (inv!70588 lm!2325) e!3016680)))

(assert (=> start!501154 true))

(declare-fun tp_is_empty!34497 () Bool)

(assert (=> start!501154 tp_is_empty!34497))

(declare-fun b!4827773 () Bool)

(declare-fun tp!1362703 () Bool)

(assert (=> b!4827773 (= e!3016680 tp!1362703)))

(declare-fun b!4827774 () Bool)

(declare-fun res!2055713 () Bool)

(assert (=> b!4827774 (=> res!2055713 e!3016679)))

(assert (=> b!4827774 (= res!2055713 (contains!18812 lt!1974609 lt!1974610))))

(declare-fun b!4827775 () Bool)

(assert (=> b!4827775 (= e!3016679 (forall!12633 (toList!7503 lt!1974609) lambda!237213))))

(declare-fun b!4827776 () Bool)

(assert (=> b!4827776 (= e!3016681 (not e!3016679))))

(declare-fun res!2055711 () Bool)

(assert (=> b!4827776 (=> res!2055711 e!3016679)))

(assert (=> b!4827776 (= res!2055711 (not (forall!12633 (toList!7503 lt!1974609) lambda!237213)))))

(declare-fun tail!9415 (ListLongMap!6021) ListLongMap!6021)

(assert (=> b!4827776 (= lt!1974609 (tail!9415 lm!2325))))

(declare-fun containsKey!4393 (List!55128 K!16687) Bool)

(declare-fun apply!13358 (ListLongMap!6021 (_ BitVec 64)) List!55128)

(assert (=> b!4827776 (not (containsKey!4393 (apply!13358 lm!2325 (_1!32418 (h!61439 (toList!7503 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143352 0))(
  ( (Unit!143353) )
))
(declare-fun lt!1974607 () Unit!143352)

(declare-fun lemmaNotSameHashThenCannotContainKey!227 (ListLongMap!6021 K!16687 (_ BitVec 64) Hashable!7279) Unit!143352)

(assert (=> b!4827776 (= lt!1974607 (lemmaNotSameHashThenCannotContainKey!227 lm!2325 key!5594 (_1!32418 (h!61439 (toList!7503 lm!2325))) hashF!1543))))

(declare-fun e!3016678 () Bool)

(declare-datatypes ((ListMap!6879 0))(
  ( (ListMap!6880 (toList!7504 List!55128)) )
))
(declare-fun lt!1974611 () ListMap!6879)

(declare-fun contains!18813 (ListMap!6879 K!16687) Bool)

(declare-fun addToMapMapFromBucket!1807 (List!55128 ListMap!6879) ListMap!6879)

(assert (=> b!4827776 (= (contains!18813 (addToMapMapFromBucket!1807 (_2!32418 (h!61439 (toList!7503 lm!2325))) lt!1974611) key!5594) e!3016678)))

(declare-fun res!2055710 () Bool)

(assert (=> b!4827776 (=> res!2055710 e!3016678)))

(assert (=> b!4827776 (= res!2055710 (containsKey!4393 (_2!32418 (h!61439 (toList!7503 lm!2325))) key!5594))))

(declare-fun lt!1974608 () Unit!143352)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!31 (List!55128 ListMap!6879 K!16687) Unit!143352)

(assert (=> b!4827776 (= lt!1974608 (lemmaAddToMapFromBucketContainsIIFInAccOrL!31 (_2!32418 (h!61439 (toList!7503 lm!2325))) lt!1974611 key!5594))))

(declare-fun extractMap!2691 (List!55129) ListMap!6879)

(assert (=> b!4827776 (= lt!1974611 (extractMap!2691 (t!362625 (toList!7503 lm!2325))))))

(declare-fun b!4827777 () Bool)

(declare-fun res!2055714 () Bool)

(assert (=> b!4827777 (=> (not res!2055714) (not e!3016681))))

(assert (=> b!4827777 (= res!2055714 (is-Cons!55005 (toList!7503 lm!2325)))))

(declare-fun b!4827778 () Bool)

(assert (=> b!4827778 (= e!3016678 (contains!18813 lt!1974611 key!5594))))

(assert (= (and start!501154 res!2055715) b!4827770))

(assert (= (and b!4827770 res!2055712) b!4827772))

(assert (= (and b!4827772 res!2055717) b!4827777))

(assert (= (and b!4827777 res!2055714) b!4827776))

(assert (= (and b!4827776 (not res!2055710)) b!4827778))

(assert (= (and b!4827776 (not res!2055711)) b!4827771))

(assert (= (and b!4827771 (not res!2055716)) b!4827774))

(assert (= (and b!4827774 (not res!2055713)) b!4827775))

(assert (= start!501154 b!4827773))

(declare-fun m!5819290 () Bool)

(assert (=> b!4827778 m!5819290))

(declare-fun m!5819292 () Bool)

(assert (=> b!4827776 m!5819292))

(declare-fun m!5819294 () Bool)

(assert (=> b!4827776 m!5819294))

(declare-fun m!5819296 () Bool)

(assert (=> b!4827776 m!5819296))

(declare-fun m!5819298 () Bool)

(assert (=> b!4827776 m!5819298))

(declare-fun m!5819300 () Bool)

(assert (=> b!4827776 m!5819300))

(declare-fun m!5819302 () Bool)

(assert (=> b!4827776 m!5819302))

(declare-fun m!5819304 () Bool)

(assert (=> b!4827776 m!5819304))

(declare-fun m!5819306 () Bool)

(assert (=> b!4827776 m!5819306))

(declare-fun m!5819308 () Bool)

(assert (=> b!4827776 m!5819308))

(assert (=> b!4827776 m!5819302))

(declare-fun m!5819310 () Bool)

(assert (=> b!4827776 m!5819310))

(assert (=> b!4827776 m!5819298))

(declare-fun m!5819312 () Bool)

(assert (=> b!4827770 m!5819312))

(declare-fun m!5819314 () Bool)

(assert (=> b!4827774 m!5819314))

(assert (=> b!4827775 m!5819294))

(declare-fun m!5819316 () Bool)

(assert (=> b!4827771 m!5819316))

(declare-fun m!5819318 () Bool)

(assert (=> b!4827772 m!5819318))

(declare-fun m!5819320 () Bool)

(assert (=> b!4827772 m!5819320))

(declare-fun m!5819322 () Bool)

(assert (=> start!501154 m!5819322))

(declare-fun m!5819324 () Bool)

(assert (=> start!501154 m!5819324))

(push 1)

(assert (not start!501154))

(assert (not b!4827771))

(assert (not b!4827775))

(assert (not b!4827778))

(assert (not b!4827772))

(assert (not b!4827770))

(assert (not b!4827776))

(assert (not b!4827774))

(assert (not b!4827773))

(assert tp_is_empty!34497)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


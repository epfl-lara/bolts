; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!500988 () Bool)

(assert start!500988)

(declare-fun res!2055297 () Bool)

(declare-fun e!3016215 () Bool)

(assert (=> start!500988 (=> (not res!2055297) (not e!3016215))))

(declare-datatypes ((V!16920 0))(
  ( (V!16921 (val!21645 Int)) )
))
(declare-datatypes ((K!16674 0))(
  ( (K!16675 (val!21646 Int)) )
))
(declare-datatypes ((tuple2!58226 0))(
  ( (tuple2!58227 (_1!32407 K!16674) (_2!32407 V!16920)) )
))
(declare-datatypes ((List!55116 0))(
  ( (Nil!54992) (Cons!54992 (h!61426 tuple2!58226) (t!362612 List!55116)) )
))
(declare-datatypes ((tuple2!58228 0))(
  ( (tuple2!58229 (_1!32408 (_ BitVec 64)) (_2!32408 List!55116)) )
))
(declare-datatypes ((List!55117 0))(
  ( (Nil!54993) (Cons!54993 (h!61427 tuple2!58228) (t!362613 List!55117)) )
))
(declare-datatypes ((ListLongMap!6011 0))(
  ( (ListLongMap!6012 (toList!7493 List!55117)) )
))
(declare-fun lm!2325 () ListLongMap!6011)

(declare-fun lambda!237026 () Int)

(declare-fun forall!12624 (List!55117 Int) Bool)

(assert (=> start!500988 (= res!2055297 (forall!12624 (toList!7493 lm!2325) lambda!237026))))

(assert (=> start!500988 e!3016215))

(declare-fun e!3016217 () Bool)

(declare-fun inv!70574 (ListLongMap!6011) Bool)

(assert (=> start!500988 (and (inv!70574 lm!2325) e!3016217)))

(assert (=> start!500988 true))

(declare-fun tp_is_empty!34483 () Bool)

(assert (=> start!500988 tp_is_empty!34483))

(declare-fun b!4827063 () Bool)

(declare-fun res!2055296 () Bool)

(declare-fun e!3016218 () Bool)

(assert (=> b!4827063 (=> res!2055296 e!3016218)))

(declare-fun lt!1974067 () (_ BitVec 64))

(assert (=> b!4827063 (= res!2055296 (= (_1!32408 (h!61427 (toList!7493 lm!2325))) lt!1974067))))

(declare-fun b!4827064 () Bool)

(declare-fun res!2055290 () Bool)

(assert (=> b!4827064 (=> res!2055290 e!3016218)))

(declare-fun contains!18798 (ListLongMap!6011 (_ BitVec 64)) Bool)

(assert (=> b!4827064 (= res!2055290 (not (contains!18798 lm!2325 (_1!32408 (h!61427 (toList!7493 lm!2325))))))))

(declare-fun b!4827065 () Bool)

(declare-fun e!3016219 () Bool)

(assert (=> b!4827065 (= e!3016215 e!3016219)))

(declare-fun res!2055294 () Bool)

(assert (=> b!4827065 (=> (not res!2055294) (not e!3016219))))

(assert (=> b!4827065 (= res!2055294 (not (contains!18798 lm!2325 lt!1974067)))))

(declare-datatypes ((Hashable!7274 0))(
  ( (HashableExt!7273 (__x!33549 Int)) )
))
(declare-fun hashF!1543 () Hashable!7274)

(declare-fun key!5594 () K!16674)

(declare-fun hash!5417 (Hashable!7274 K!16674) (_ BitVec 64))

(assert (=> b!4827065 (= lt!1974067 (hash!5417 hashF!1543 key!5594))))

(declare-fun b!4827066 () Bool)

(declare-fun tp!1362666 () Bool)

(assert (=> b!4827066 (= e!3016217 tp!1362666)))

(declare-fun b!4827067 () Bool)

(assert (=> b!4827067 (= e!3016219 (not e!3016218))))

(declare-fun res!2055295 () Bool)

(assert (=> b!4827067 (=> res!2055295 e!3016218)))

(assert (=> b!4827067 (= res!2055295 (not (forall!12624 (toList!7493 lm!2325) lambda!237026)))))

(declare-fun e!3016216 () Bool)

(declare-datatypes ((ListMap!6869 0))(
  ( (ListMap!6870 (toList!7494 List!55116)) )
))
(declare-fun lt!1974068 () ListMap!6869)

(declare-fun contains!18799 (ListMap!6869 K!16674) Bool)

(declare-fun addToMapMapFromBucket!1802 (List!55116 ListMap!6869) ListMap!6869)

(assert (=> b!4827067 (= (contains!18799 (addToMapMapFromBucket!1802 (_2!32408 (h!61427 (toList!7493 lm!2325))) lt!1974068) key!5594) e!3016216)))

(declare-fun res!2055292 () Bool)

(assert (=> b!4827067 (=> res!2055292 e!3016216)))

(declare-fun containsKey!4384 (List!55116 K!16674) Bool)

(assert (=> b!4827067 (= res!2055292 (containsKey!4384 (_2!32408 (h!61427 (toList!7493 lm!2325))) key!5594))))

(declare-datatypes ((Unit!143242 0))(
  ( (Unit!143243) )
))
(declare-fun lt!1974066 () Unit!143242)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!26 (List!55116 ListMap!6869 K!16674) Unit!143242)

(assert (=> b!4827067 (= lt!1974066 (lemmaAddToMapFromBucketContainsIIFInAccOrL!26 (_2!32408 (h!61427 (toList!7493 lm!2325))) lt!1974068 key!5594))))

(declare-fun extractMap!2686 (List!55117) ListMap!6869)

(assert (=> b!4827067 (= lt!1974068 (extractMap!2686 (t!362613 (toList!7493 lm!2325))))))

(declare-fun b!4827068 () Bool)

(assert (=> b!4827068 (= e!3016216 (contains!18799 lt!1974068 key!5594))))

(declare-fun b!4827069 () Bool)

(declare-fun res!2055291 () Bool)

(assert (=> b!4827069 (=> (not res!2055291) (not e!3016219))))

(get-info :version)

(assert (=> b!4827069 (= res!2055291 ((_ is Cons!54993) (toList!7493 lm!2325)))))

(declare-fun b!4827070 () Bool)

(assert (=> b!4827070 (= e!3016218 (forall!12624 (toList!7493 lm!2325) lambda!237026))))

(declare-fun b!4827071 () Bool)

(declare-fun res!2055293 () Bool)

(assert (=> b!4827071 (=> (not res!2055293) (not e!3016215))))

(declare-fun allKeysSameHashInMap!2590 (ListLongMap!6011 Hashable!7274) Bool)

(assert (=> b!4827071 (= res!2055293 (allKeysSameHashInMap!2590 lm!2325 hashF!1543))))

(assert (= (and start!500988 res!2055297) b!4827071))

(assert (= (and b!4827071 res!2055293) b!4827065))

(assert (= (and b!4827065 res!2055294) b!4827069))

(assert (= (and b!4827069 res!2055291) b!4827067))

(assert (= (and b!4827067 (not res!2055292)) b!4827068))

(assert (= (and b!4827067 (not res!2055295)) b!4827064))

(assert (= (and b!4827064 (not res!2055290)) b!4827063))

(assert (= (and b!4827063 (not res!2055296)) b!4827070))

(assert (= start!500988 b!4827066))

(declare-fun m!5818202 () Bool)

(assert (=> b!4827071 m!5818202))

(declare-fun m!5818204 () Bool)

(assert (=> b!4827067 m!5818204))

(declare-fun m!5818206 () Bool)

(assert (=> b!4827067 m!5818206))

(declare-fun m!5818208 () Bool)

(assert (=> b!4827067 m!5818208))

(declare-fun m!5818210 () Bool)

(assert (=> b!4827067 m!5818210))

(declare-fun m!5818212 () Bool)

(assert (=> b!4827067 m!5818212))

(declare-fun m!5818214 () Bool)

(assert (=> b!4827067 m!5818214))

(assert (=> b!4827067 m!5818204))

(declare-fun m!5818216 () Bool)

(assert (=> b!4827068 m!5818216))

(assert (=> start!500988 m!5818214))

(declare-fun m!5818218 () Bool)

(assert (=> start!500988 m!5818218))

(assert (=> b!4827070 m!5818214))

(declare-fun m!5818220 () Bool)

(assert (=> b!4827064 m!5818220))

(declare-fun m!5818222 () Bool)

(assert (=> b!4827065 m!5818222))

(declare-fun m!5818224 () Bool)

(assert (=> b!4827065 m!5818224))

(check-sat (not b!4827070) (not b!4827065) (not start!500988) (not b!4827071) (not b!4827068) (not b!4827067) (not b!4827064) (not b!4827066) tp_is_empty!34483)
(check-sat)

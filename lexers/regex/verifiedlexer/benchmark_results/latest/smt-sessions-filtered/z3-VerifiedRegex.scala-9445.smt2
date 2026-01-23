; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499086 () Bool)

(assert start!499086)

(declare-fun b!4818906 () Bool)

(declare-fun e!3010793 () Bool)

(declare-fun e!3010796 () Bool)

(assert (=> b!4818906 (= e!3010793 (not e!3010796))))

(declare-fun res!2050377 () Bool)

(assert (=> b!4818906 (=> res!2050377 e!3010796)))

(declare-datatypes ((V!16760 0))(
  ( (V!16761 (val!21517 Int)) )
))
(declare-datatypes ((K!16514 0))(
  ( (K!16515 (val!21518 Int)) )
))
(declare-datatypes ((tuple2!57970 0))(
  ( (tuple2!57971 (_1!32279 K!16514) (_2!32279 V!16760)) )
))
(declare-datatypes ((List!54968 0))(
  ( (Nil!54844) (Cons!54844 (h!61278 tuple2!57970) (t!362464 List!54968)) )
))
(declare-datatypes ((tuple2!57972 0))(
  ( (tuple2!57973 (_1!32280 (_ BitVec 64)) (_2!32280 List!54968)) )
))
(declare-datatypes ((List!54969 0))(
  ( (Nil!54845) (Cons!54845 (h!61279 tuple2!57972) (t!362465 List!54969)) )
))
(declare-datatypes ((ListLongMap!5883 0))(
  ( (ListLongMap!5884 (toList!7395 List!54969)) )
))
(declare-fun lm!2280 () ListLongMap!5883)

(declare-fun noDuplicateKeys!2420 (List!54968) Bool)

(assert (=> b!4818906 (= res!2050377 (not (noDuplicateKeys!2420 (_2!32280 (h!61279 (toList!7395 lm!2280))))))))

(declare-datatypes ((ListMap!6801 0))(
  ( (ListMap!6802 (toList!7396 List!54968)) )
))
(declare-fun lt!1968496 () ListMap!6801)

(declare-fun extractMap!2652 (List!54969) ListMap!6801)

(assert (=> b!4818906 (= lt!1968496 (extractMap!2652 (t!362465 (toList!7395 lm!2280))))))

(declare-fun lt!1968498 () ListLongMap!5883)

(declare-fun key!5428 () K!16514)

(declare-fun contains!18670 (ListMap!6801 K!16514) Bool)

(assert (=> b!4818906 (not (contains!18670 (extractMap!2652 (toList!7395 lt!1968498)) key!5428))))

(declare-datatypes ((Unit!142165 0))(
  ( (Unit!142166) )
))
(declare-fun lt!1968494 () Unit!142165)

(declare-datatypes ((Hashable!7210 0))(
  ( (HashableExt!7209 (__x!33485 Int)) )
))
(declare-fun hashF!1509 () Hashable!7210)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!84 (ListLongMap!5883 K!16514 Hashable!7210) Unit!142165)

(assert (=> b!4818906 (= lt!1968494 (lemmaHashNotInLongMapThenNotInGenerated!84 lt!1968498 key!5428 hashF!1509))))

(declare-fun tail!9365 (ListLongMap!5883) ListLongMap!5883)

(assert (=> b!4818906 (= lt!1968498 (tail!9365 lm!2280))))

(declare-fun b!4818907 () Bool)

(declare-fun e!3010794 () Bool)

(assert (=> b!4818907 (= e!3010794 (contains!18670 lt!1968496 key!5428))))

(declare-fun b!4818908 () Bool)

(declare-fun res!2050379 () Bool)

(assert (=> b!4818908 (=> (not res!2050379) (not e!3010793))))

(declare-fun lt!1968497 () (_ BitVec 64))

(declare-fun containsKey!4272 (List!54968 K!16514) Bool)

(declare-fun apply!13297 (ListLongMap!5883 (_ BitVec 64)) List!54968)

(assert (=> b!4818908 (= res!2050379 (not (containsKey!4272 (apply!13297 lm!2280 lt!1968497) key!5428)))))

(declare-fun b!4818909 () Bool)

(declare-fun lambda!235110 () Int)

(declare-fun forall!12524 (List!54969 Int) Bool)

(assert (=> b!4818909 (= e!3010796 (forall!12524 (toList!7395 lm!2280) lambda!235110))))

(declare-fun addToMapMapFromBucket!1774 (List!54968 ListMap!6801) ListMap!6801)

(assert (=> b!4818909 (= (contains!18670 (addToMapMapFromBucket!1774 (_2!32280 (h!61279 (toList!7395 lm!2280))) lt!1968496) key!5428) e!3010794)))

(declare-fun res!2050381 () Bool)

(assert (=> b!4818909 (=> res!2050381 e!3010794)))

(assert (=> b!4818909 (= res!2050381 (containsKey!4272 (_2!32280 (h!61279 (toList!7395 lm!2280))) key!5428))))

(declare-fun lt!1968495 () Unit!142165)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!2 (List!54968 ListMap!6801 K!16514) Unit!142165)

(assert (=> b!4818909 (= lt!1968495 (lemmaAddToMapFromBucketContainsIIFInAccOrL!2 (_2!32280 (h!61279 (toList!7395 lm!2280))) lt!1968496 key!5428))))

(declare-fun res!2050380 () Bool)

(declare-fun e!3010795 () Bool)

(assert (=> start!499086 (=> (not res!2050380) (not e!3010795))))

(assert (=> start!499086 (= res!2050380 (forall!12524 (toList!7395 lm!2280) lambda!235110))))

(assert (=> start!499086 e!3010795))

(declare-fun e!3010797 () Bool)

(declare-fun inv!70414 (ListLongMap!5883) Bool)

(assert (=> start!499086 (and (inv!70414 lm!2280) e!3010797)))

(assert (=> start!499086 true))

(declare-fun tp_is_empty!34305 () Bool)

(assert (=> start!499086 tp_is_empty!34305))

(declare-fun b!4818910 () Bool)

(declare-fun res!2050375 () Bool)

(assert (=> b!4818910 (=> (not res!2050375) (not e!3010795))))

(declare-fun allKeysSameHashInMap!2526 (ListLongMap!5883 Hashable!7210) Bool)

(assert (=> b!4818910 (= res!2050375 (allKeysSameHashInMap!2526 lm!2280 hashF!1509))))

(declare-fun b!4818911 () Bool)

(declare-fun tp!1362133 () Bool)

(assert (=> b!4818911 (= e!3010797 tp!1362133)))

(declare-fun b!4818912 () Bool)

(assert (=> b!4818912 (= e!3010795 e!3010793)))

(declare-fun res!2050376 () Bool)

(assert (=> b!4818912 (=> (not res!2050376) (not e!3010793))))

(declare-fun contains!18671 (ListLongMap!5883 (_ BitVec 64)) Bool)

(assert (=> b!4818912 (= res!2050376 (contains!18671 lm!2280 lt!1968497))))

(declare-fun hash!5289 (Hashable!7210 K!16514) (_ BitVec 64))

(assert (=> b!4818912 (= lt!1968497 (hash!5289 hashF!1509 key!5428))))

(declare-fun b!4818913 () Bool)

(declare-fun res!2050378 () Bool)

(assert (=> b!4818913 (=> (not res!2050378) (not e!3010793))))

(get-info :version)

(assert (=> b!4818913 (= res!2050378 (and ((_ is Cons!54845) (toList!7395 lm!2280)) (= (_1!32280 (h!61279 (toList!7395 lm!2280))) lt!1968497)))))

(assert (= (and start!499086 res!2050380) b!4818910))

(assert (= (and b!4818910 res!2050375) b!4818912))

(assert (= (and b!4818912 res!2050376) b!4818908))

(assert (= (and b!4818908 res!2050379) b!4818913))

(assert (= (and b!4818913 res!2050378) b!4818906))

(assert (= (and b!4818906 (not res!2050377)) b!4818909))

(assert (= (and b!4818909 (not res!2050381)) b!4818907))

(assert (= start!499086 b!4818911))

(declare-fun m!5805840 () Bool)

(assert (=> b!4818910 m!5805840))

(declare-fun m!5805842 () Bool)

(assert (=> b!4818909 m!5805842))

(declare-fun m!5805844 () Bool)

(assert (=> b!4818909 m!5805844))

(declare-fun m!5805846 () Bool)

(assert (=> b!4818909 m!5805846))

(declare-fun m!5805848 () Bool)

(assert (=> b!4818909 m!5805848))

(declare-fun m!5805850 () Bool)

(assert (=> b!4818909 m!5805850))

(assert (=> b!4818909 m!5805848))

(declare-fun m!5805852 () Bool)

(assert (=> b!4818906 m!5805852))

(declare-fun m!5805854 () Bool)

(assert (=> b!4818906 m!5805854))

(declare-fun m!5805856 () Bool)

(assert (=> b!4818906 m!5805856))

(assert (=> b!4818906 m!5805854))

(declare-fun m!5805858 () Bool)

(assert (=> b!4818906 m!5805858))

(declare-fun m!5805860 () Bool)

(assert (=> b!4818906 m!5805860))

(declare-fun m!5805862 () Bool)

(assert (=> b!4818906 m!5805862))

(declare-fun m!5805864 () Bool)

(assert (=> b!4818908 m!5805864))

(assert (=> b!4818908 m!5805864))

(declare-fun m!5805866 () Bool)

(assert (=> b!4818908 m!5805866))

(declare-fun m!5805868 () Bool)

(assert (=> b!4818907 m!5805868))

(assert (=> start!499086 m!5805844))

(declare-fun m!5805870 () Bool)

(assert (=> start!499086 m!5805870))

(declare-fun m!5805872 () Bool)

(assert (=> b!4818912 m!5805872))

(declare-fun m!5805874 () Bool)

(assert (=> b!4818912 m!5805874))

(check-sat (not b!4818912) (not b!4818907) (not b!4818908) tp_is_empty!34305 (not b!4818909) (not b!4818911) (not b!4818910) (not start!499086) (not b!4818906))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499300 () Bool)

(assert start!499300)

(declare-fun b!4819880 () Bool)

(declare-fun res!2051019 () Bool)

(declare-fun e!3011401 () Bool)

(assert (=> b!4819880 (=> res!2051019 e!3011401)))

(declare-datatypes ((V!16793 0))(
  ( (V!16794 (val!21543 Int)) )
))
(declare-datatypes ((K!16547 0))(
  ( (K!16548 (val!21544 Int)) )
))
(declare-datatypes ((tuple2!58022 0))(
  ( (tuple2!58023 (_1!32305 K!16547) (_2!32305 V!16793)) )
))
(declare-datatypes ((List!54996 0))(
  ( (Nil!54872) (Cons!54872 (h!61306 tuple2!58022) (t!362492 List!54996)) )
))
(declare-datatypes ((tuple2!58024 0))(
  ( (tuple2!58025 (_1!32306 (_ BitVec 64)) (_2!32306 List!54996)) )
))
(declare-datatypes ((List!54997 0))(
  ( (Nil!54873) (Cons!54873 (h!61307 tuple2!58024) (t!362493 List!54997)) )
))
(declare-datatypes ((ListLongMap!5909 0))(
  ( (ListLongMap!5910 (toList!7415 List!54997)) )
))
(declare-fun lt!1969140 () ListLongMap!5909)

(declare-datatypes ((Hashable!7223 0))(
  ( (HashableExt!7222 (__x!33498 Int)) )
))
(declare-fun hashF!1509 () Hashable!7223)

(declare-fun allKeysSameHashInMap!2539 (ListLongMap!5909 Hashable!7223) Bool)

(assert (=> b!4819880 (= res!2051019 (not (allKeysSameHashInMap!2539 lt!1969140 hashF!1509)))))

(declare-fun b!4819881 () Bool)

(declare-fun e!3011402 () Bool)

(declare-datatypes ((ListMap!6815 0))(
  ( (ListMap!6816 (toList!7416 List!54996)) )
))
(declare-fun lt!1969139 () ListMap!6815)

(declare-fun key!5428 () K!16547)

(declare-fun contains!18692 (ListMap!6815 K!16547) Bool)

(assert (=> b!4819881 (= e!3011402 (contains!18692 lt!1969139 key!5428))))

(declare-fun b!4819882 () Bool)

(declare-fun res!2051021 () Bool)

(assert (=> b!4819882 (=> res!2051021 e!3011401)))

(declare-fun lt!1969143 () (_ BitVec 64))

(declare-fun contains!18693 (ListLongMap!5909 (_ BitVec 64)) Bool)

(assert (=> b!4819882 (= res!2051021 (not (contains!18693 lt!1969140 lt!1969143)))))

(declare-fun b!4819883 () Bool)

(assert (=> b!4819883 (= e!3011401 true)))

(declare-fun b!4819884 () Bool)

(declare-fun res!2051012 () Bool)

(declare-fun e!3011398 () Bool)

(assert (=> b!4819884 (=> (not res!2051012) (not e!3011398))))

(declare-fun lm!2280 () ListLongMap!5909)

(assert (=> b!4819884 (= res!2051012 (and (or (not (is-Cons!54873 (toList!7415 lm!2280))) (not (= (_1!32306 (h!61307 (toList!7415 lm!2280))) lt!1969143))) (is-Cons!54873 (toList!7415 lm!2280)) (not (= (_1!32306 (h!61307 (toList!7415 lm!2280))) lt!1969143))))))

(declare-fun b!4819885 () Bool)

(assert (=> b!4819885 (= e!3011398 (not e!3011401))))

(declare-fun res!2051013 () Bool)

(assert (=> b!4819885 (=> res!2051013 e!3011401)))

(declare-fun lambda!235351 () Int)

(declare-fun forall!12541 (List!54997 Int) Bool)

(assert (=> b!4819885 (= res!2051013 (not (forall!12541 (toList!7415 lt!1969140) lambda!235351)))))

(declare-fun tail!9368 (ListLongMap!5909) ListLongMap!5909)

(assert (=> b!4819885 (= lt!1969140 (tail!9368 lm!2280))))

(declare-fun addToMapMapFromBucket!1779 (List!54996 ListMap!6815) ListMap!6815)

(assert (=> b!4819885 (= (contains!18692 (addToMapMapFromBucket!1779 (_2!32306 (h!61307 (toList!7415 lm!2280))) lt!1969139) key!5428) e!3011402)))

(declare-fun res!2051018 () Bool)

(assert (=> b!4819885 (=> res!2051018 e!3011402)))

(declare-fun containsKey!4291 (List!54996 K!16547) Bool)

(assert (=> b!4819885 (= res!2051018 (containsKey!4291 (_2!32306 (h!61307 (toList!7415 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142276 0))(
  ( (Unit!142277) )
))
(declare-fun lt!1969141 () Unit!142276)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!7 (List!54996 ListMap!6815 K!16547) Unit!142276)

(assert (=> b!4819885 (= lt!1969141 (lemmaAddToMapFromBucketContainsIIFInAccOrL!7 (_2!32306 (h!61307 (toList!7415 lm!2280))) lt!1969139 key!5428))))

(declare-fun extractMap!2659 (List!54997) ListMap!6815)

(assert (=> b!4819885 (= lt!1969139 (extractMap!2659 (t!362493 (toList!7415 lm!2280))))))

(declare-fun apply!13310 (ListLongMap!5909 (_ BitVec 64)) List!54996)

(assert (=> b!4819885 (not (containsKey!4291 (apply!13310 lm!2280 (_1!32306 (h!61307 (toList!7415 lm!2280)))) key!5428))))

(declare-fun lt!1969142 () Unit!142276)

(declare-fun lemmaNotSameHashThenCannotContainKey!207 (ListLongMap!5909 K!16547 (_ BitVec 64) Hashable!7223) Unit!142276)

(assert (=> b!4819885 (= lt!1969142 (lemmaNotSameHashThenCannotContainKey!207 lm!2280 key!5428 (_1!32306 (h!61307 (toList!7415 lm!2280))) hashF!1509))))

(declare-fun b!4819886 () Bool)

(declare-fun res!2051016 () Bool)

(assert (=> b!4819886 (=> res!2051016 e!3011401)))

(assert (=> b!4819886 (= res!2051016 (containsKey!4291 (apply!13310 lt!1969140 lt!1969143) key!5428))))

(declare-fun b!4819887 () Bool)

(declare-fun res!2051017 () Bool)

(assert (=> b!4819887 (=> (not res!2051017) (not e!3011398))))

(assert (=> b!4819887 (= res!2051017 (not (containsKey!4291 (apply!13310 lm!2280 lt!1969143) key!5428)))))

(declare-fun b!4819888 () Bool)

(declare-fun res!2051015 () Bool)

(declare-fun e!3011399 () Bool)

(assert (=> b!4819888 (=> (not res!2051015) (not e!3011399))))

(assert (=> b!4819888 (= res!2051015 (allKeysSameHashInMap!2539 lm!2280 hashF!1509))))

(declare-fun res!2051020 () Bool)

(assert (=> start!499300 (=> (not res!2051020) (not e!3011399))))

(assert (=> start!499300 (= res!2051020 (forall!12541 (toList!7415 lm!2280) lambda!235351))))

(assert (=> start!499300 e!3011399))

(declare-fun e!3011400 () Bool)

(declare-fun inv!70448 (ListLongMap!5909) Bool)

(assert (=> start!499300 (and (inv!70448 lm!2280) e!3011400)))

(assert (=> start!499300 true))

(declare-fun tp_is_empty!34335 () Bool)

(assert (=> start!499300 tp_is_empty!34335))

(declare-fun b!4819889 () Bool)

(declare-fun tp!1362206 () Bool)

(assert (=> b!4819889 (= e!3011400 tp!1362206)))

(declare-fun b!4819890 () Bool)

(assert (=> b!4819890 (= e!3011399 e!3011398)))

(declare-fun res!2051014 () Bool)

(assert (=> b!4819890 (=> (not res!2051014) (not e!3011398))))

(assert (=> b!4819890 (= res!2051014 (contains!18693 lm!2280 lt!1969143))))

(declare-fun hash!5312 (Hashable!7223 K!16547) (_ BitVec 64))

(assert (=> b!4819890 (= lt!1969143 (hash!5312 hashF!1509 key!5428))))

(assert (= (and start!499300 res!2051020) b!4819888))

(assert (= (and b!4819888 res!2051015) b!4819890))

(assert (= (and b!4819890 res!2051014) b!4819887))

(assert (= (and b!4819887 res!2051017) b!4819884))

(assert (= (and b!4819884 res!2051012) b!4819885))

(assert (= (and b!4819885 (not res!2051018)) b!4819881))

(assert (= (and b!4819885 (not res!2051013)) b!4819880))

(assert (= (and b!4819880 (not res!2051019)) b!4819882))

(assert (= (and b!4819882 (not res!2051021)) b!4819886))

(assert (= (and b!4819886 (not res!2051016)) b!4819883))

(assert (= start!499300 b!4819889))

(declare-fun m!5807232 () Bool)

(assert (=> b!4819888 m!5807232))

(declare-fun m!5807234 () Bool)

(assert (=> b!4819882 m!5807234))

(declare-fun m!5807236 () Bool)

(assert (=> b!4819887 m!5807236))

(assert (=> b!4819887 m!5807236))

(declare-fun m!5807238 () Bool)

(assert (=> b!4819887 m!5807238))

(declare-fun m!5807240 () Bool)

(assert (=> b!4819890 m!5807240))

(declare-fun m!5807242 () Bool)

(assert (=> b!4819890 m!5807242))

(declare-fun m!5807244 () Bool)

(assert (=> b!4819886 m!5807244))

(assert (=> b!4819886 m!5807244))

(declare-fun m!5807246 () Bool)

(assert (=> b!4819886 m!5807246))

(declare-fun m!5807248 () Bool)

(assert (=> b!4819885 m!5807248))

(declare-fun m!5807250 () Bool)

(assert (=> b!4819885 m!5807250))

(declare-fun m!5807252 () Bool)

(assert (=> b!4819885 m!5807252))

(declare-fun m!5807254 () Bool)

(assert (=> b!4819885 m!5807254))

(assert (=> b!4819885 m!5807250))

(declare-fun m!5807256 () Bool)

(assert (=> b!4819885 m!5807256))

(declare-fun m!5807258 () Bool)

(assert (=> b!4819885 m!5807258))

(declare-fun m!5807260 () Bool)

(assert (=> b!4819885 m!5807260))

(declare-fun m!5807262 () Bool)

(assert (=> b!4819885 m!5807262))

(assert (=> b!4819885 m!5807260))

(declare-fun m!5807264 () Bool)

(assert (=> b!4819885 m!5807264))

(declare-fun m!5807266 () Bool)

(assert (=> b!4819885 m!5807266))

(declare-fun m!5807268 () Bool)

(assert (=> b!4819880 m!5807268))

(declare-fun m!5807270 () Bool)

(assert (=> b!4819881 m!5807270))

(declare-fun m!5807272 () Bool)

(assert (=> start!499300 m!5807272))

(declare-fun m!5807274 () Bool)

(assert (=> start!499300 m!5807274))

(push 1)

(assert (not start!499300))

(assert (not b!4819885))

(assert (not b!4819881))

(assert (not b!4819889))

(assert (not b!4819882))

(assert (not b!4819890))

(assert (not b!4819880))

(assert (not b!4819886))

(assert (not b!4819888))

(assert tp_is_empty!34335)

(assert (not b!4819887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


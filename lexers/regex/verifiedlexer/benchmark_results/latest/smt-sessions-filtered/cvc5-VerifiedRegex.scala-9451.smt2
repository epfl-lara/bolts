; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499296 () Bool)

(assert start!499296)

(declare-fun b!4819814 () Bool)

(declare-fun res!2050953 () Bool)

(declare-fun e!3011370 () Bool)

(assert (=> b!4819814 (=> res!2050953 e!3011370)))

(declare-datatypes ((V!16788 0))(
  ( (V!16789 (val!21539 Int)) )
))
(declare-datatypes ((K!16542 0))(
  ( (K!16543 (val!21540 Int)) )
))
(declare-datatypes ((tuple2!58014 0))(
  ( (tuple2!58015 (_1!32301 K!16542) (_2!32301 V!16788)) )
))
(declare-datatypes ((List!54992 0))(
  ( (Nil!54868) (Cons!54868 (h!61302 tuple2!58014) (t!362488 List!54992)) )
))
(declare-datatypes ((tuple2!58016 0))(
  ( (tuple2!58017 (_1!32302 (_ BitVec 64)) (_2!32302 List!54992)) )
))
(declare-datatypes ((List!54993 0))(
  ( (Nil!54869) (Cons!54869 (h!61303 tuple2!58016) (t!362489 List!54993)) )
))
(declare-datatypes ((ListLongMap!5905 0))(
  ( (ListLongMap!5906 (toList!7411 List!54993)) )
))
(declare-fun lt!1969111 () ListLongMap!5905)

(declare-fun lt!1969109 () (_ BitVec 64))

(declare-fun contains!18688 (ListLongMap!5905 (_ BitVec 64)) Bool)

(assert (=> b!4819814 (= res!2050953 (not (contains!18688 lt!1969111 lt!1969109)))))

(declare-fun b!4819815 () Bool)

(declare-fun res!2050959 () Bool)

(declare-fun e!3011369 () Bool)

(assert (=> b!4819815 (=> (not res!2050959) (not e!3011369))))

(declare-fun lm!2280 () ListLongMap!5905)

(declare-datatypes ((Hashable!7221 0))(
  ( (HashableExt!7220 (__x!33496 Int)) )
))
(declare-fun hashF!1509 () Hashable!7221)

(declare-fun allKeysSameHashInMap!2537 (ListLongMap!5905 Hashable!7221) Bool)

(assert (=> b!4819815 (= res!2050959 (allKeysSameHashInMap!2537 lm!2280 hashF!1509))))

(declare-fun b!4819816 () Bool)

(declare-fun res!2050954 () Bool)

(declare-fun e!3011371 () Bool)

(assert (=> b!4819816 (=> (not res!2050954) (not e!3011371))))

(assert (=> b!4819816 (= res!2050954 (and (or (not (is-Cons!54869 (toList!7411 lm!2280))) (not (= (_1!32302 (h!61303 (toList!7411 lm!2280))) lt!1969109))) (is-Cons!54869 (toList!7411 lm!2280)) (not (= (_1!32302 (h!61303 (toList!7411 lm!2280))) lt!1969109))))))

(declare-fun b!4819817 () Bool)

(assert (=> b!4819817 (= e!3011369 e!3011371)))

(declare-fun res!2050956 () Bool)

(assert (=> b!4819817 (=> (not res!2050956) (not e!3011371))))

(assert (=> b!4819817 (= res!2050956 (contains!18688 lm!2280 lt!1969109))))

(declare-fun key!5428 () K!16542)

(declare-fun hash!5310 (Hashable!7221 K!16542) (_ BitVec 64))

(assert (=> b!4819817 (= lt!1969109 (hash!5310 hashF!1509 key!5428))))

(declare-fun b!4819818 () Bool)

(declare-fun res!2050957 () Bool)

(assert (=> b!4819818 (=> res!2050957 e!3011370)))

(assert (=> b!4819818 (= res!2050957 (not (allKeysSameHashInMap!2537 lt!1969111 hashF!1509)))))

(declare-fun b!4819819 () Bool)

(declare-fun res!2050952 () Bool)

(assert (=> b!4819819 (=> res!2050952 e!3011370)))

(declare-fun containsKey!4289 (List!54992 K!16542) Bool)

(declare-fun apply!13308 (ListLongMap!5905 (_ BitVec 64)) List!54992)

(assert (=> b!4819819 (= res!2050952 (containsKey!4289 (apply!13308 lt!1969111 lt!1969109) key!5428))))

(declare-fun b!4819820 () Bool)

(declare-fun res!2050955 () Bool)

(assert (=> b!4819820 (=> (not res!2050955) (not e!3011371))))

(assert (=> b!4819820 (= res!2050955 (not (containsKey!4289 (apply!13308 lm!2280 lt!1969109) key!5428)))))

(declare-fun b!4819821 () Bool)

(assert (=> b!4819821 (= e!3011371 (not e!3011370))))

(declare-fun res!2050960 () Bool)

(assert (=> b!4819821 (=> res!2050960 e!3011370)))

(declare-fun lambda!235339 () Int)

(declare-fun forall!12539 (List!54993 Int) Bool)

(assert (=> b!4819821 (= res!2050960 (not (forall!12539 (toList!7411 lt!1969111) lambda!235339)))))

(declare-fun tail!9366 (ListLongMap!5905) ListLongMap!5905)

(assert (=> b!4819821 (= lt!1969111 (tail!9366 lm!2280))))

(declare-datatypes ((ListMap!6811 0))(
  ( (ListMap!6812 (toList!7412 List!54992)) )
))
(declare-fun lt!1969110 () ListMap!6811)

(declare-fun e!3011372 () Bool)

(declare-fun contains!18689 (ListMap!6811 K!16542) Bool)

(declare-fun addToMapMapFromBucket!1777 (List!54992 ListMap!6811) ListMap!6811)

(assert (=> b!4819821 (= (contains!18689 (addToMapMapFromBucket!1777 (_2!32302 (h!61303 (toList!7411 lm!2280))) lt!1969110) key!5428) e!3011372)))

(declare-fun res!2050961 () Bool)

(assert (=> b!4819821 (=> res!2050961 e!3011372)))

(assert (=> b!4819821 (= res!2050961 (containsKey!4289 (_2!32302 (h!61303 (toList!7411 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142272 0))(
  ( (Unit!142273) )
))
(declare-fun lt!1969112 () Unit!142272)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!5 (List!54992 ListMap!6811 K!16542) Unit!142272)

(assert (=> b!4819821 (= lt!1969112 (lemmaAddToMapFromBucketContainsIIFInAccOrL!5 (_2!32302 (h!61303 (toList!7411 lm!2280))) lt!1969110 key!5428))))

(declare-fun extractMap!2657 (List!54993) ListMap!6811)

(assert (=> b!4819821 (= lt!1969110 (extractMap!2657 (t!362489 (toList!7411 lm!2280))))))

(assert (=> b!4819821 (not (containsKey!4289 (apply!13308 lm!2280 (_1!32302 (h!61303 (toList!7411 lm!2280)))) key!5428))))

(declare-fun lt!1969113 () Unit!142272)

(declare-fun lemmaNotSameHashThenCannotContainKey!205 (ListLongMap!5905 K!16542 (_ BitVec 64) Hashable!7221) Unit!142272)

(assert (=> b!4819821 (= lt!1969113 (lemmaNotSameHashThenCannotContainKey!205 lm!2280 key!5428 (_1!32302 (h!61303 (toList!7411 lm!2280))) hashF!1509))))

(declare-fun res!2050958 () Bool)

(assert (=> start!499296 (=> (not res!2050958) (not e!3011369))))

(assert (=> start!499296 (= res!2050958 (forall!12539 (toList!7411 lm!2280) lambda!235339))))

(assert (=> start!499296 e!3011369))

(declare-fun e!3011368 () Bool)

(declare-fun inv!70443 (ListLongMap!5905) Bool)

(assert (=> start!499296 (and (inv!70443 lm!2280) e!3011368)))

(assert (=> start!499296 true))

(declare-fun tp_is_empty!34331 () Bool)

(assert (=> start!499296 tp_is_empty!34331))

(declare-fun b!4819822 () Bool)

(assert (=> b!4819822 (= e!3011372 (contains!18689 lt!1969110 key!5428))))

(declare-fun b!4819823 () Bool)

(declare-fun tp!1362200 () Bool)

(assert (=> b!4819823 (= e!3011368 tp!1362200)))

(declare-fun b!4819824 () Bool)

(assert (=> b!4819824 (= e!3011370 (forall!12539 (toList!7411 lt!1969111) lambda!235339))))

(assert (= (and start!499296 res!2050958) b!4819815))

(assert (= (and b!4819815 res!2050959) b!4819817))

(assert (= (and b!4819817 res!2050956) b!4819820))

(assert (= (and b!4819820 res!2050955) b!4819816))

(assert (= (and b!4819816 res!2050954) b!4819821))

(assert (= (and b!4819821 (not res!2050961)) b!4819822))

(assert (= (and b!4819821 (not res!2050960)) b!4819818))

(assert (= (and b!4819818 (not res!2050957)) b!4819814))

(assert (= (and b!4819814 (not res!2050953)) b!4819819))

(assert (= (and b!4819819 (not res!2050952)) b!4819824))

(assert (= start!499296 b!4819823))

(declare-fun m!5807144 () Bool)

(assert (=> b!4819814 m!5807144))

(declare-fun m!5807146 () Bool)

(assert (=> b!4819821 m!5807146))

(declare-fun m!5807148 () Bool)

(assert (=> b!4819821 m!5807148))

(declare-fun m!5807150 () Bool)

(assert (=> b!4819821 m!5807150))

(declare-fun m!5807152 () Bool)

(assert (=> b!4819821 m!5807152))

(assert (=> b!4819821 m!5807148))

(declare-fun m!5807154 () Bool)

(assert (=> b!4819821 m!5807154))

(declare-fun m!5807156 () Bool)

(assert (=> b!4819821 m!5807156))

(declare-fun m!5807158 () Bool)

(assert (=> b!4819821 m!5807158))

(declare-fun m!5807160 () Bool)

(assert (=> b!4819821 m!5807160))

(assert (=> b!4819821 m!5807152))

(declare-fun m!5807162 () Bool)

(assert (=> b!4819821 m!5807162))

(declare-fun m!5807164 () Bool)

(assert (=> b!4819821 m!5807164))

(declare-fun m!5807166 () Bool)

(assert (=> b!4819818 m!5807166))

(declare-fun m!5807168 () Bool)

(assert (=> start!499296 m!5807168))

(declare-fun m!5807170 () Bool)

(assert (=> start!499296 m!5807170))

(declare-fun m!5807172 () Bool)

(assert (=> b!4819819 m!5807172))

(assert (=> b!4819819 m!5807172))

(declare-fun m!5807174 () Bool)

(assert (=> b!4819819 m!5807174))

(declare-fun m!5807176 () Bool)

(assert (=> b!4819817 m!5807176))

(declare-fun m!5807178 () Bool)

(assert (=> b!4819817 m!5807178))

(declare-fun m!5807180 () Bool)

(assert (=> b!4819820 m!5807180))

(assert (=> b!4819820 m!5807180))

(declare-fun m!5807182 () Bool)

(assert (=> b!4819820 m!5807182))

(declare-fun m!5807184 () Bool)

(assert (=> b!4819815 m!5807184))

(assert (=> b!4819824 m!5807158))

(declare-fun m!5807186 () Bool)

(assert (=> b!4819822 m!5807186))

(push 1)

(assert (not b!4819822))

(assert (not b!4819814))

(assert (not b!4819821))

(assert tp_is_empty!34331)

(assert (not b!4819819))

(assert (not b!4819818))

(assert (not b!4819815))

(assert (not b!4819820))

(assert (not b!4819817))

(assert (not b!4819823))

(assert (not b!4819824))

(assert (not start!499296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


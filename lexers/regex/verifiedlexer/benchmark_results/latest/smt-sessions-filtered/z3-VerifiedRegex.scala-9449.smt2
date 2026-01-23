; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499134 () Bool)

(assert start!499134)

(declare-fun res!2050562 () Bool)

(declare-fun e!3010919 () Bool)

(assert (=> start!499134 (=> (not res!2050562) (not e!3010919))))

(declare-datatypes ((V!16780 0))(
  ( (V!16781 (val!21533 Int)) )
))
(declare-datatypes ((K!16534 0))(
  ( (K!16535 (val!21534 Int)) )
))
(declare-datatypes ((tuple2!58002 0))(
  ( (tuple2!58003 (_1!32295 K!16534) (_2!32295 V!16780)) )
))
(declare-datatypes ((List!54984 0))(
  ( (Nil!54860) (Cons!54860 (h!61294 tuple2!58002) (t!362480 List!54984)) )
))
(declare-datatypes ((tuple2!58004 0))(
  ( (tuple2!58005 (_1!32296 (_ BitVec 64)) (_2!32296 List!54984)) )
))
(declare-datatypes ((List!54985 0))(
  ( (Nil!54861) (Cons!54861 (h!61295 tuple2!58004) (t!362481 List!54985)) )
))
(declare-datatypes ((ListLongMap!5899 0))(
  ( (ListLongMap!5900 (toList!7405 List!54985)) )
))
(declare-fun lm!2280 () ListLongMap!5899)

(declare-fun lambda!235162 () Int)

(declare-fun forall!12532 (List!54985 Int) Bool)

(assert (=> start!499134 (= res!2050562 (forall!12532 (toList!7405 lm!2280) lambda!235162))))

(assert (=> start!499134 e!3010919))

(declare-fun e!3010918 () Bool)

(declare-fun inv!70434 (ListLongMap!5899) Bool)

(assert (=> start!499134 (and (inv!70434 lm!2280) e!3010918)))

(assert (=> start!499134 true))

(declare-fun tp_is_empty!34321 () Bool)

(assert (=> start!499134 tp_is_empty!34321))

(declare-fun b!4819140 () Bool)

(declare-fun res!2050559 () Bool)

(declare-fun e!3010917 () Bool)

(assert (=> b!4819140 (=> (not res!2050559) (not e!3010917))))

(declare-fun key!5428 () K!16534)

(declare-fun lt!1968575 () (_ BitVec 64))

(declare-fun containsKey!4282 (List!54984 K!16534) Bool)

(declare-fun apply!13305 (ListLongMap!5899 (_ BitVec 64)) List!54984)

(assert (=> b!4819140 (= res!2050559 (not (containsKey!4282 (apply!13305 lm!2280 lt!1968575) key!5428)))))

(declare-fun b!4819141 () Bool)

(assert (=> b!4819141 (= e!3010917 (not true))))

(declare-fun lt!1968573 () Bool)

(declare-fun noDuplicateKeys!2423 (List!54984) Bool)

(assert (=> b!4819141 (= lt!1968573 (noDuplicateKeys!2423 (_2!32296 (h!61295 (toList!7405 lm!2280)))))))

(declare-datatypes ((ListMap!6805 0))(
  ( (ListMap!6806 (toList!7406 List!54984)) )
))
(declare-fun lt!1968576 () ListMap!6805)

(declare-fun extractMap!2654 (List!54985) ListMap!6805)

(assert (=> b!4819141 (= lt!1968576 (extractMap!2654 (t!362481 (toList!7405 lm!2280))))))

(assert (=> b!4819141 (not (containsKey!4282 (apply!13305 lm!2280 (_1!32296 (h!61295 (toList!7405 lm!2280)))) key!5428))))

(declare-datatypes ((Unit!142175 0))(
  ( (Unit!142176) )
))
(declare-fun lt!1968574 () Unit!142175)

(declare-datatypes ((Hashable!7218 0))(
  ( (HashableExt!7217 (__x!33493 Int)) )
))
(declare-fun hashF!1509 () Hashable!7218)

(declare-fun lemmaNotSameHashThenCannotContainKey!202 (ListLongMap!5899 K!16534 (_ BitVec 64) Hashable!7218) Unit!142175)

(assert (=> b!4819141 (= lt!1968574 (lemmaNotSameHashThenCannotContainKey!202 lm!2280 key!5428 (_1!32296 (h!61295 (toList!7405 lm!2280))) hashF!1509))))

(declare-fun b!4819142 () Bool)

(declare-fun res!2050560 () Bool)

(assert (=> b!4819142 (=> (not res!2050560) (not e!3010917))))

(get-info :version)

(assert (=> b!4819142 (= res!2050560 (and (or (not ((_ is Cons!54861) (toList!7405 lm!2280))) (not (= (_1!32296 (h!61295 (toList!7405 lm!2280))) lt!1968575))) ((_ is Cons!54861) (toList!7405 lm!2280)) (not (= (_1!32296 (h!61295 (toList!7405 lm!2280))) lt!1968575))))))

(declare-fun b!4819143 () Bool)

(declare-fun tp!1362169 () Bool)

(assert (=> b!4819143 (= e!3010918 tp!1362169)))

(declare-fun b!4819144 () Bool)

(declare-fun res!2050561 () Bool)

(assert (=> b!4819144 (=> (not res!2050561) (not e!3010919))))

(declare-fun allKeysSameHashInMap!2534 (ListLongMap!5899 Hashable!7218) Bool)

(assert (=> b!4819144 (= res!2050561 (allKeysSameHashInMap!2534 lm!2280 hashF!1509))))

(declare-fun b!4819145 () Bool)

(assert (=> b!4819145 (= e!3010919 e!3010917)))

(declare-fun res!2050563 () Bool)

(assert (=> b!4819145 (=> (not res!2050563) (not e!3010917))))

(declare-fun contains!18679 (ListLongMap!5899 (_ BitVec 64)) Bool)

(assert (=> b!4819145 (= res!2050563 (contains!18679 lm!2280 lt!1968575))))

(declare-fun hash!5301 (Hashable!7218 K!16534) (_ BitVec 64))

(assert (=> b!4819145 (= lt!1968575 (hash!5301 hashF!1509 key!5428))))

(assert (= (and start!499134 res!2050562) b!4819144))

(assert (= (and b!4819144 res!2050561) b!4819145))

(assert (= (and b!4819145 res!2050563) b!4819140))

(assert (= (and b!4819140 res!2050559) b!4819142))

(assert (= (and b!4819142 res!2050560) b!4819141))

(assert (= start!499134 b!4819143))

(declare-fun m!5806084 () Bool)

(assert (=> b!4819145 m!5806084))

(declare-fun m!5806086 () Bool)

(assert (=> b!4819145 m!5806086))

(declare-fun m!5806088 () Bool)

(assert (=> start!499134 m!5806088))

(declare-fun m!5806090 () Bool)

(assert (=> start!499134 m!5806090))

(declare-fun m!5806092 () Bool)

(assert (=> b!4819141 m!5806092))

(assert (=> b!4819141 m!5806092))

(declare-fun m!5806094 () Bool)

(assert (=> b!4819141 m!5806094))

(declare-fun m!5806096 () Bool)

(assert (=> b!4819141 m!5806096))

(declare-fun m!5806098 () Bool)

(assert (=> b!4819141 m!5806098))

(declare-fun m!5806100 () Bool)

(assert (=> b!4819141 m!5806100))

(declare-fun m!5806102 () Bool)

(assert (=> b!4819140 m!5806102))

(assert (=> b!4819140 m!5806102))

(declare-fun m!5806104 () Bool)

(assert (=> b!4819140 m!5806104))

(declare-fun m!5806106 () Bool)

(assert (=> b!4819144 m!5806106))

(check-sat (not b!4819140) (not start!499134) (not b!4819144) (not b!4819141) (not b!4819145) tp_is_empty!34321 (not b!4819143))
(check-sat)

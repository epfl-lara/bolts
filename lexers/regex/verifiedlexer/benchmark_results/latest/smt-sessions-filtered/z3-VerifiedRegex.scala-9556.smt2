; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503482 () Bool)

(assert start!503482)

(declare-fun res!2062776 () Bool)

(declare-fun e!3024328 () Bool)

(assert (=> start!503482 (=> (not res!2062776) (not e!3024328))))

(declare-datatypes ((K!17069 0))(
  ( (K!17070 (val!21961 Int)) )
))
(declare-datatypes ((V!17315 0))(
  ( (V!17316 (val!21962 Int)) )
))
(declare-datatypes ((tuple2!58794 0))(
  ( (tuple2!58795 (_1!32691 K!17069) (_2!32691 V!17315)) )
))
(declare-datatypes ((List!55442 0))(
  ( (Nil!55318) (Cons!55318 (h!61753 tuple2!58794) (t!362938 List!55442)) )
))
(declare-datatypes ((tuple2!58796 0))(
  ( (tuple2!58797 (_1!32692 (_ BitVec 64)) (_2!32692 List!55442)) )
))
(declare-datatypes ((List!55443 0))(
  ( (Nil!55319) (Cons!55319 (h!61754 tuple2!58796) (t!362939 List!55443)) )
))
(declare-datatypes ((ListLongMap!6263 0))(
  ( (ListLongMap!6264 (toList!7723 List!55443)) )
))
(declare-fun lm!2671 () ListLongMap!6263)

(declare-fun lambda!240521 () Int)

(declare-fun forall!12817 (List!55443 Int) Bool)

(assert (=> start!503482 (= res!2062776 (forall!12817 (toList!7723 lm!2671) lambda!240521))))

(assert (=> start!503482 e!3024328))

(declare-fun e!3024331 () Bool)

(declare-fun inv!70969 (ListLongMap!6263) Bool)

(assert (=> start!503482 (and (inv!70969 lm!2671) e!3024331)))

(assert (=> start!503482 true))

(declare-fun tp_is_empty!34903 () Bool)

(assert (=> start!503482 tp_is_empty!34903))

(declare-fun b!4839265 () Bool)

(declare-fun res!2062774 () Bool)

(assert (=> b!4839265 (=> (not res!2062774) (not e!3024328))))

(get-info :version)

(assert (=> b!4839265 (= res!2062774 ((_ is Cons!55319) (toList!7723 lm!2671)))))

(declare-fun b!4839266 () Bool)

(declare-fun e!3024330 () Bool)

(declare-fun e!3024332 () Bool)

(assert (=> b!4839266 (= e!3024330 e!3024332)))

(declare-fun res!2062778 () Bool)

(assert (=> b!4839266 (=> res!2062778 e!3024332)))

(declare-datatypes ((ListMap!7077 0))(
  ( (ListMap!7078 (toList!7724 List!55442)) )
))
(declare-fun lt!1983899 () ListMap!7077)

(declare-fun key!6540 () K!17069)

(declare-fun contains!19077 (ListMap!7077 K!17069) Bool)

(assert (=> b!4839266 (= res!2062778 (not (contains!19077 lt!1983899 key!6540)))))

(declare-fun lt!1983901 () ListLongMap!6263)

(declare-fun extractMap!2758 (List!55443) ListMap!7077)

(assert (=> b!4839266 (contains!19077 (extractMap!2758 (toList!7723 lt!1983901)) key!6540)))

(declare-datatypes ((Unit!144905 0))(
  ( (Unit!144906) )
))
(declare-fun lt!1983900 () Unit!144905)

(declare-datatypes ((Hashable!7400 0))(
  ( (HashableExt!7399 (__x!33675 Int)) )
))
(declare-fun hashF!1662 () Hashable!7400)

(declare-fun lemmaListContainsThenExtractedMapContains!744 (ListLongMap!6263 K!17069 Hashable!7400) Unit!144905)

(assert (=> b!4839266 (= lt!1983900 (lemmaListContainsThenExtractedMapContains!744 lt!1983901 key!6540 hashF!1662))))

(declare-fun tail!9477 (ListLongMap!6263) ListLongMap!6263)

(assert (=> b!4839266 (= lt!1983901 (tail!9477 lm!2671))))

(declare-fun b!4839267 () Bool)

(declare-fun res!2062780 () Bool)

(assert (=> b!4839267 (=> (not res!2062780) (not e!3024328))))

(declare-fun allKeysSameHashInMap!2716 (ListLongMap!6263 Hashable!7400) Bool)

(assert (=> b!4839267 (= res!2062780 (allKeysSameHashInMap!2716 lm!2671 hashF!1662))))

(declare-fun b!4839268 () Bool)

(declare-fun e!3024327 () Bool)

(assert (=> b!4839268 (= e!3024327 (not e!3024330))))

(declare-fun res!2062772 () Bool)

(assert (=> b!4839268 (=> res!2062772 e!3024330)))

(declare-fun containsKeyBiggerList!684 (List!55443 K!17069) Bool)

(assert (=> b!4839268 (= res!2062772 (not (containsKeyBiggerList!684 (t!362939 (toList!7723 lm!2671)) key!6540)))))

(declare-fun tail!9478 (List!55443) List!55443)

(assert (=> b!4839268 (containsKeyBiggerList!684 (tail!9478 (toList!7723 lm!2671)) key!6540)))

(declare-fun lt!1983902 () Unit!144905)

(declare-fun lemmaInBiggerListButNotHeadThenTail!44 (ListLongMap!6263 K!17069 Hashable!7400) Unit!144905)

(assert (=> b!4839268 (= lt!1983902 (lemmaInBiggerListButNotHeadThenTail!44 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4839269 () Bool)

(declare-fun tp!1363720 () Bool)

(assert (=> b!4839269 (= e!3024331 tp!1363720)))

(declare-fun b!4839270 () Bool)

(declare-fun res!2062775 () Bool)

(assert (=> b!4839270 (=> (not res!2062775) (not e!3024328))))

(declare-fun e!3024329 () Bool)

(assert (=> b!4839270 (= res!2062775 e!3024329)))

(declare-fun res!2062777 () Bool)

(assert (=> b!4839270 (=> res!2062777 e!3024329)))

(assert (=> b!4839270 (= res!2062777 (not ((_ is Cons!55319) (toList!7723 lm!2671))))))

(declare-fun b!4839271 () Bool)

(assert (=> b!4839271 (= e!3024328 e!3024327)))

(declare-fun res!2062773 () Bool)

(assert (=> b!4839271 (=> (not res!2062773) (not e!3024327))))

(declare-fun addToMapMapFromBucket!1898 (List!55442 ListMap!7077) ListMap!7077)

(assert (=> b!4839271 (= res!2062773 (= (extractMap!2758 (toList!7723 lm!2671)) (addToMapMapFromBucket!1898 (_2!32692 (h!61754 (toList!7723 lm!2671))) lt!1983899)))))

(assert (=> b!4839271 (= lt!1983899 (extractMap!2758 (t!362939 (toList!7723 lm!2671))))))

(declare-fun b!4839272 () Bool)

(declare-fun res!2062779 () Bool)

(assert (=> b!4839272 (=> (not res!2062779) (not e!3024328))))

(assert (=> b!4839272 (= res!2062779 (containsKeyBiggerList!684 (toList!7723 lm!2671) key!6540))))

(declare-fun b!4839273 () Bool)

(assert (=> b!4839273 (= e!3024332 (forall!12817 (toList!7723 lm!2671) lambda!240521))))

(declare-fun lt!1983898 () V!17315)

(declare-fun contains!19078 (List!55442 tuple2!58794) Bool)

(assert (=> b!4839273 (contains!19078 (toList!7724 lt!1983899) (tuple2!58795 key!6540 lt!1983898))))

(declare-fun lt!1983903 () Unit!144905)

(declare-fun lemmaGetValueImpliesTupleContained!727 (ListMap!7077 K!17069 V!17315) Unit!144905)

(assert (=> b!4839273 (= lt!1983903 (lemmaGetValueImpliesTupleContained!727 lt!1983899 key!6540 lt!1983898))))

(declare-datatypes ((Option!13603 0))(
  ( (None!13602) (Some!13602 (v!49326 V!17315)) )
))
(declare-fun get!18934 (Option!13603) V!17315)

(declare-fun getValueByKey!2701 (List!55442 K!17069) Option!13603)

(assert (=> b!4839273 (= lt!1983898 (get!18934 (getValueByKey!2701 (toList!7724 lt!1983899) key!6540)))))

(declare-fun b!4839274 () Bool)

(declare-fun containsKey!4562 (List!55442 K!17069) Bool)

(assert (=> b!4839274 (= e!3024329 (not (containsKey!4562 (_2!32692 (h!61754 (toList!7723 lm!2671))) key!6540)))))

(assert (= (and start!503482 res!2062776) b!4839267))

(assert (= (and b!4839267 res!2062780) b!4839272))

(assert (= (and b!4839272 res!2062779) b!4839270))

(assert (= (and b!4839270 (not res!2062777)) b!4839274))

(assert (= (and b!4839270 res!2062775) b!4839265))

(assert (= (and b!4839265 res!2062774) b!4839271))

(assert (= (and b!4839271 res!2062773) b!4839268))

(assert (= (and b!4839268 (not res!2062772)) b!4839266))

(assert (= (and b!4839266 (not res!2062778)) b!4839273))

(assert (= start!503482 b!4839269))

(declare-fun m!5834936 () Bool)

(assert (=> b!4839271 m!5834936))

(declare-fun m!5834938 () Bool)

(assert (=> b!4839271 m!5834938))

(declare-fun m!5834940 () Bool)

(assert (=> b!4839271 m!5834940))

(declare-fun m!5834942 () Bool)

(assert (=> b!4839267 m!5834942))

(declare-fun m!5834944 () Bool)

(assert (=> start!503482 m!5834944))

(declare-fun m!5834946 () Bool)

(assert (=> start!503482 m!5834946))

(declare-fun m!5834948 () Bool)

(assert (=> b!4839268 m!5834948))

(declare-fun m!5834950 () Bool)

(assert (=> b!4839268 m!5834950))

(assert (=> b!4839268 m!5834950))

(declare-fun m!5834952 () Bool)

(assert (=> b!4839268 m!5834952))

(declare-fun m!5834954 () Bool)

(assert (=> b!4839268 m!5834954))

(declare-fun m!5834956 () Bool)

(assert (=> b!4839272 m!5834956))

(declare-fun m!5834958 () Bool)

(assert (=> b!4839274 m!5834958))

(declare-fun m!5834960 () Bool)

(assert (=> b!4839273 m!5834960))

(declare-fun m!5834962 () Bool)

(assert (=> b!4839273 m!5834962))

(declare-fun m!5834964 () Bool)

(assert (=> b!4839273 m!5834964))

(declare-fun m!5834966 () Bool)

(assert (=> b!4839273 m!5834966))

(assert (=> b!4839273 m!5834964))

(assert (=> b!4839273 m!5834944))

(declare-fun m!5834968 () Bool)

(assert (=> b!4839266 m!5834968))

(declare-fun m!5834970 () Bool)

(assert (=> b!4839266 m!5834970))

(declare-fun m!5834972 () Bool)

(assert (=> b!4839266 m!5834972))

(declare-fun m!5834974 () Bool)

(assert (=> b!4839266 m!5834974))

(declare-fun m!5834976 () Bool)

(assert (=> b!4839266 m!5834976))

(assert (=> b!4839266 m!5834968))

(check-sat (not b!4839269) (not b!4839273) (not b!4839266) tp_is_empty!34903 (not b!4839274) (not b!4839267) (not b!4839271) (not start!503482) (not b!4839268) (not b!4839272))
(check-sat)

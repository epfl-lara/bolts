; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!504352 () Bool)

(assert start!504352)

(declare-fun b!4844197 () Bool)

(declare-fun res!2065993 () Bool)

(declare-fun e!3027615 () Bool)

(assert (=> b!4844197 (=> (not res!2065993) (not e!3027615))))

(declare-datatypes ((K!17189 0))(
  ( (K!17190 (val!22057 Int)) )
))
(declare-datatypes ((V!17435 0))(
  ( (V!17436 (val!22058 Int)) )
))
(declare-datatypes ((tuple2!58986 0))(
  ( (tuple2!58987 (_1!32787 K!17189) (_2!32787 V!17435)) )
))
(declare-datatypes ((List!55547 0))(
  ( (Nil!55423) (Cons!55423 (h!61860 tuple2!58986) (t!363043 List!55547)) )
))
(declare-datatypes ((tuple2!58988 0))(
  ( (tuple2!58989 (_1!32788 (_ BitVec 64)) (_2!32788 List!55547)) )
))
(declare-datatypes ((List!55548 0))(
  ( (Nil!55424) (Cons!55424 (h!61861 tuple2!58988) (t!363044 List!55548)) )
))
(declare-datatypes ((ListLongMap!6359 0))(
  ( (ListLongMap!6360 (toList!7803 List!55548)) )
))
(declare-fun lm!2671 () ListLongMap!6359)

(declare-fun key!6540 () K!17189)

(declare-fun containsKeyBiggerList!732 (List!55548 K!17189) Bool)

(assert (=> b!4844197 (= res!2065993 (containsKeyBiggerList!732 (toList!7803 lm!2671) key!6540))))

(declare-fun b!4844198 () Bool)

(declare-fun res!2065992 () Bool)

(assert (=> b!4844198 (=> (not res!2065992) (not e!3027615))))

(declare-fun e!3027613 () Bool)

(assert (=> b!4844198 (= res!2065992 e!3027613)))

(declare-fun res!2065991 () Bool)

(assert (=> b!4844198 (=> res!2065991 e!3027613)))

(get-info :version)

(assert (=> b!4844198 (= res!2065991 (not ((_ is Cons!55424) (toList!7803 lm!2671))))))

(declare-fun b!4844199 () Bool)

(declare-fun e!3027611 () Bool)

(assert (=> b!4844199 (= e!3027615 e!3027611)))

(declare-fun res!2065989 () Bool)

(assert (=> b!4844199 (=> (not res!2065989) (not e!3027611))))

(declare-datatypes ((ListMap!7141 0))(
  ( (ListMap!7142 (toList!7804 List!55547)) )
))
(declare-fun lt!1987525 () ListMap!7141)

(declare-fun extractMap!2790 (List!55548) ListMap!7141)

(declare-fun addToMapMapFromBucket!1930 (List!55547 ListMap!7141) ListMap!7141)

(assert (=> b!4844199 (= res!2065989 (= (extractMap!2790 (toList!7803 lm!2671)) (addToMapMapFromBucket!1930 (_2!32788 (h!61861 (toList!7803 lm!2671))) lt!1987525)))))

(assert (=> b!4844199 (= lt!1987525 (extractMap!2790 (t!363044 (toList!7803 lm!2671))))))

(declare-fun res!2065995 () Bool)

(assert (=> start!504352 (=> (not res!2065995) (not e!3027615))))

(declare-fun lambda!242032 () Int)

(declare-fun forall!12885 (List!55548 Int) Bool)

(assert (=> start!504352 (= res!2065995 (forall!12885 (toList!7803 lm!2671) lambda!242032))))

(assert (=> start!504352 e!3027615))

(declare-fun e!3027614 () Bool)

(declare-fun inv!71089 (ListLongMap!6359) Bool)

(assert (=> start!504352 (and (inv!71089 lm!2671) e!3027614)))

(assert (=> start!504352 true))

(declare-fun tp_is_empty!35007 () Bool)

(assert (=> start!504352 tp_is_empty!35007))

(declare-fun b!4844200 () Bool)

(declare-fun e!3027610 () Bool)

(assert (=> b!4844200 (= e!3027611 (not e!3027610))))

(declare-fun res!2065988 () Bool)

(assert (=> b!4844200 (=> res!2065988 e!3027610)))

(assert (=> b!4844200 (= res!2065988 (not (containsKeyBiggerList!732 (t!363044 (toList!7803 lm!2671)) key!6540)))))

(declare-fun tail!9515 (List!55548) List!55548)

(assert (=> b!4844200 (containsKeyBiggerList!732 (tail!9515 (toList!7803 lm!2671)) key!6540)))

(declare-datatypes ((Unit!145575 0))(
  ( (Unit!145576) )
))
(declare-fun lt!1987528 () Unit!145575)

(declare-datatypes ((Hashable!7448 0))(
  ( (HashableExt!7447 (__x!33723 Int)) )
))
(declare-fun hashF!1662 () Hashable!7448)

(declare-fun lemmaInBiggerListButNotHeadThenTail!64 (ListLongMap!6359 K!17189 Hashable!7448) Unit!145575)

(assert (=> b!4844200 (= lt!1987528 (lemmaInBiggerListButNotHeadThenTail!64 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4844201 () Bool)

(declare-fun res!2065990 () Bool)

(assert (=> b!4844201 (=> (not res!2065990) (not e!3027615))))

(declare-fun allKeysSameHashInMap!2764 (ListLongMap!6359 Hashable!7448) Bool)

(assert (=> b!4844201 (= res!2065990 (allKeysSameHashInMap!2764 lm!2671 hashF!1662))))

(declare-fun b!4844202 () Bool)

(declare-fun containsKey!4619 (List!55547 K!17189) Bool)

(assert (=> b!4844202 (= e!3027613 (not (containsKey!4619 (_2!32788 (h!61861 (toList!7803 lm!2671))) key!6540)))))

(declare-fun b!4844203 () Bool)

(declare-fun tp!1364072 () Bool)

(assert (=> b!4844203 (= e!3027614 tp!1364072)))

(declare-fun b!4844204 () Bool)

(declare-fun e!3027612 () Bool)

(assert (=> b!4844204 (= e!3027610 e!3027612)))

(declare-fun res!2065994 () Bool)

(assert (=> b!4844204 (=> res!2065994 e!3027612)))

(declare-fun contains!19125 (ListMap!7141 K!17189) Bool)

(assert (=> b!4844204 (= res!2065994 (not (contains!19125 lt!1987525 key!6540)))))

(declare-fun lt!1987527 () ListLongMap!6359)

(assert (=> b!4844204 (contains!19125 (extractMap!2790 (toList!7803 lt!1987527)) key!6540)))

(declare-fun lt!1987529 () Unit!145575)

(declare-fun lemmaListContainsThenExtractedMapContains!754 (ListLongMap!6359 K!17189 Hashable!7448) Unit!145575)

(assert (=> b!4844204 (= lt!1987529 (lemmaListContainsThenExtractedMapContains!754 lt!1987527 key!6540 hashF!1662))))

(declare-fun tail!9516 (ListLongMap!6359) ListLongMap!6359)

(assert (=> b!4844204 (= lt!1987527 (tail!9516 lm!2671))))

(declare-fun b!4844205 () Bool)

(assert (=> b!4844205 (= e!3027612 true)))

(declare-fun lt!1987524 () V!17435)

(declare-fun contains!19126 (List!55547 tuple2!58986) Bool)

(assert (=> b!4844205 (contains!19126 (toList!7804 lt!1987525) (tuple2!58987 key!6540 lt!1987524))))

(declare-fun lt!1987526 () Unit!145575)

(declare-fun lemmaGetValueImpliesTupleContained!733 (ListMap!7141 K!17189 V!17435) Unit!145575)

(assert (=> b!4844205 (= lt!1987526 (lemmaGetValueImpliesTupleContained!733 lt!1987525 key!6540 lt!1987524))))

(declare-datatypes ((Option!13620 0))(
  ( (None!13619) (Some!13619 (v!49361 V!17435)) )
))
(declare-fun get!18970 (Option!13620) V!17435)

(declare-fun getValueByKey!2714 (List!55547 K!17189) Option!13620)

(assert (=> b!4844205 (= lt!1987524 (get!18970 (getValueByKey!2714 (toList!7804 lt!1987525) key!6540)))))

(declare-fun b!4844206 () Bool)

(declare-fun res!2065996 () Bool)

(assert (=> b!4844206 (=> (not res!2065996) (not e!3027615))))

(assert (=> b!4844206 (= res!2065996 ((_ is Cons!55424) (toList!7803 lm!2671)))))

(assert (= (and start!504352 res!2065995) b!4844201))

(assert (= (and b!4844201 res!2065990) b!4844197))

(assert (= (and b!4844197 res!2065993) b!4844198))

(assert (= (and b!4844198 (not res!2065991)) b!4844202))

(assert (= (and b!4844198 res!2065992) b!4844206))

(assert (= (and b!4844206 res!2065996) b!4844199))

(assert (= (and b!4844199 res!2065989) b!4844200))

(assert (= (and b!4844200 (not res!2065988)) b!4844204))

(assert (= (and b!4844204 (not res!2065994)) b!4844205))

(assert (= start!504352 b!4844203))

(declare-fun m!5842694 () Bool)

(assert (=> b!4844201 m!5842694))

(declare-fun m!5842696 () Bool)

(assert (=> start!504352 m!5842696))

(declare-fun m!5842698 () Bool)

(assert (=> start!504352 m!5842698))

(declare-fun m!5842700 () Bool)

(assert (=> b!4844204 m!5842700))

(declare-fun m!5842702 () Bool)

(assert (=> b!4844204 m!5842702))

(declare-fun m!5842704 () Bool)

(assert (=> b!4844204 m!5842704))

(assert (=> b!4844204 m!5842702))

(declare-fun m!5842706 () Bool)

(assert (=> b!4844204 m!5842706))

(declare-fun m!5842708 () Bool)

(assert (=> b!4844204 m!5842708))

(declare-fun m!5842710 () Bool)

(assert (=> b!4844197 m!5842710))

(declare-fun m!5842712 () Bool)

(assert (=> b!4844199 m!5842712))

(declare-fun m!5842714 () Bool)

(assert (=> b!4844199 m!5842714))

(declare-fun m!5842716 () Bool)

(assert (=> b!4844199 m!5842716))

(declare-fun m!5842718 () Bool)

(assert (=> b!4844200 m!5842718))

(declare-fun m!5842720 () Bool)

(assert (=> b!4844200 m!5842720))

(assert (=> b!4844200 m!5842720))

(declare-fun m!5842722 () Bool)

(assert (=> b!4844200 m!5842722))

(declare-fun m!5842724 () Bool)

(assert (=> b!4844200 m!5842724))

(declare-fun m!5842726 () Bool)

(assert (=> b!4844202 m!5842726))

(declare-fun m!5842728 () Bool)

(assert (=> b!4844205 m!5842728))

(declare-fun m!5842730 () Bool)

(assert (=> b!4844205 m!5842730))

(declare-fun m!5842732 () Bool)

(assert (=> b!4844205 m!5842732))

(assert (=> b!4844205 m!5842732))

(declare-fun m!5842734 () Bool)

(assert (=> b!4844205 m!5842734))

(check-sat (not b!4844200) (not b!4844204) (not b!4844205) tp_is_empty!35007 (not b!4844199) (not b!4844202) (not b!4844197) (not b!4844201) (not start!504352) (not b!4844203))
(check-sat)

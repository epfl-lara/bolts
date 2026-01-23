; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488554 () Bool)

(assert start!488554)

(declare-fun b!4771668 () Bool)

(declare-fun e!2978712 () Bool)

(declare-fun e!2978711 () Bool)

(assert (=> b!4771668 (= e!2978712 e!2978711)))

(declare-fun res!2023951 () Bool)

(assert (=> b!4771668 (=> res!2023951 e!2978711)))

(declare-datatypes ((K!15139 0))(
  ( (K!15140 (val!20417 Int)) )
))
(declare-datatypes ((V!15385 0))(
  ( (V!15386 (val!20418 Int)) )
))
(declare-datatypes ((tuple2!55808 0))(
  ( (tuple2!55809 (_1!31198 K!15139) (_2!31198 V!15385)) )
))
(declare-datatypes ((List!53753 0))(
  ( (Nil!53629) (Cons!53629 (h!60041 tuple2!55808) (t!361203 List!53753)) )
))
(declare-datatypes ((tuple2!55810 0))(
  ( (tuple2!55811 (_1!31199 (_ BitVec 64)) (_2!31199 List!53753)) )
))
(declare-datatypes ((List!53754 0))(
  ( (Nil!53630) (Cons!53630 (h!60042 tuple2!55810) (t!361204 List!53754)) )
))
(declare-datatypes ((ListLongMap!4821 0))(
  ( (ListLongMap!4822 (toList!6407 List!53754)) )
))
(declare-fun lm!1309 () ListLongMap!4821)

(declare-fun lambda!225255 () Int)

(declare-fun forall!11924 (List!53754 Int) Bool)

(assert (=> b!4771668 (= res!2023951 (not (forall!11924 (toList!6407 lm!1309) lambda!225255)))))

(declare-fun lt!1934151 () tuple2!55810)

(declare-datatypes ((Unit!138524 0))(
  ( (Unit!138525) )
))
(declare-fun lt!1934157 () Unit!138524)

(declare-fun forallContained!3905 (List!53754 Int tuple2!55810) Unit!138524)

(assert (=> b!4771668 (= lt!1934157 (forallContained!3905 (toList!6407 lm!1309) lambda!225255 lt!1934151))))

(declare-fun lt!1934161 () Unit!138524)

(assert (=> b!4771668 (= lt!1934161 (forallContained!3905 (toList!6407 lm!1309) lambda!225255 lt!1934151))))

(declare-datatypes ((Hashable!6660 0))(
  ( (HashableExt!6659 (__x!32683 Int)) )
))
(declare-fun hashF!980 () Hashable!6660)

(declare-fun key!2872 () K!15139)

(declare-fun lt!1934163 () Unit!138524)

(declare-fun lemmaListContainsThenExtractedMapContains!582 (ListLongMap!4821 K!15139 Hashable!6660) Unit!138524)

(assert (=> b!4771668 (= lt!1934163 (lemmaListContainsThenExtractedMapContains!582 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771669 () Bool)

(assert (=> b!4771669 (= e!2978711 true)))

(declare-fun lt!1934153 () Unit!138524)

(assert (=> b!4771669 (= lt!1934153 (forallContained!3905 (toList!6407 lm!1309) lambda!225255 lt!1934151))))

(declare-fun lt!1934152 () Unit!138524)

(assert (=> b!4771669 (= lt!1934152 (forallContained!3905 (toList!6407 lm!1309) lambda!225255 lt!1934151))))

(declare-fun b!4771670 () Bool)

(declare-fun e!2978713 () Bool)

(declare-fun e!2978714 () Bool)

(assert (=> b!4771670 (= e!2978713 (not e!2978714))))

(declare-fun res!2023953 () Bool)

(assert (=> b!4771670 (=> res!2023953 e!2978714)))

(declare-datatypes ((Option!12755 0))(
  ( (None!12754) (Some!12754 (v!47881 tuple2!55808)) )
))
(declare-fun lt!1934158 () Option!12755)

(declare-fun v!9615 () V!15385)

(declare-fun get!18125 (Option!12755) tuple2!55808)

(assert (=> b!4771670 (= res!2023953 (not (= (_2!31198 (get!18125 lt!1934158)) v!9615)))))

(declare-fun isDefined!9901 (Option!12755) Bool)

(assert (=> b!4771670 (isDefined!9901 lt!1934158)))

(declare-fun lt!1934150 () List!53753)

(declare-fun getPair!680 (List!53753 K!15139) Option!12755)

(assert (=> b!4771670 (= lt!1934158 (getPair!680 lt!1934150 key!2872))))

(declare-fun lt!1934154 () Unit!138524)

(assert (=> b!4771670 (= lt!1934154 (forallContained!3905 (toList!6407 lm!1309) lambda!225255 lt!1934151))))

(declare-fun lt!1934156 () Unit!138524)

(declare-fun lemmaInGenMapThenGetPairDefined!454 (ListLongMap!4821 K!15139 Hashable!6660) Unit!138524)

(assert (=> b!4771670 (= lt!1934156 (lemmaInGenMapThenGetPairDefined!454 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934160 () Unit!138524)

(assert (=> b!4771670 (= lt!1934160 (forallContained!3905 (toList!6407 lm!1309) lambda!225255 lt!1934151))))

(declare-fun contains!17028 (List!53754 tuple2!55810) Bool)

(assert (=> b!4771670 (contains!17028 (toList!6407 lm!1309) lt!1934151)))

(declare-fun lt!1934149 () (_ BitVec 64))

(assert (=> b!4771670 (= lt!1934151 (tuple2!55811 lt!1934149 lt!1934150))))

(declare-fun lt!1934159 () Unit!138524)

(declare-fun lemmaGetValueImpliesTupleContained!471 (ListLongMap!4821 (_ BitVec 64) List!53753) Unit!138524)

(assert (=> b!4771670 (= lt!1934159 (lemmaGetValueImpliesTupleContained!471 lm!1309 lt!1934149 lt!1934150))))

(declare-fun apply!12705 (ListLongMap!4821 (_ BitVec 64)) List!53753)

(assert (=> b!4771670 (= lt!1934150 (apply!12705 lm!1309 lt!1934149))))

(declare-fun contains!17029 (ListLongMap!4821 (_ BitVec 64)) Bool)

(assert (=> b!4771670 (contains!17029 lm!1309 lt!1934149)))

(declare-fun hash!4635 (Hashable!6660 K!15139) (_ BitVec 64))

(assert (=> b!4771670 (= lt!1934149 (hash!4635 hashF!980 key!2872))))

(declare-fun lt!1934155 () Unit!138524)

(declare-fun lemmaInGenMapThenLongMapContainsHash!876 (ListLongMap!4821 K!15139 Hashable!6660) Unit!138524)

(assert (=> b!4771670 (= lt!1934155 (lemmaInGenMapThenLongMapContainsHash!876 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771671 () Bool)

(declare-fun res!2023952 () Bool)

(assert (=> b!4771671 (=> (not res!2023952) (not e!2978713))))

(declare-fun allKeysSameHashInMap!2065 (ListLongMap!4821 Hashable!6660) Bool)

(assert (=> b!4771671 (= res!2023952 (allKeysSameHashInMap!2065 lm!1309 hashF!980))))

(declare-fun res!2023949 () Bool)

(assert (=> start!488554 (=> (not res!2023949) (not e!2978713))))

(assert (=> start!488554 (= res!2023949 (forall!11924 (toList!6407 lm!1309) lambda!225255))))

(assert (=> start!488554 e!2978713))

(declare-fun e!2978710 () Bool)

(declare-fun inv!69165 (ListLongMap!4821) Bool)

(assert (=> start!488554 (and (inv!69165 lm!1309) e!2978710)))

(assert (=> start!488554 true))

(declare-fun tp_is_empty!32637 () Bool)

(assert (=> start!488554 tp_is_empty!32637))

(declare-fun tp_is_empty!32639 () Bool)

(assert (=> start!488554 tp_is_empty!32639))

(declare-fun b!4771672 () Bool)

(declare-fun tp!1356672 () Bool)

(assert (=> b!4771672 (= e!2978710 tp!1356672)))

(declare-fun b!4771673 () Bool)

(declare-fun res!2023950 () Bool)

(assert (=> b!4771673 (=> (not res!2023950) (not e!2978713))))

(declare-datatypes ((ListMap!5887 0))(
  ( (ListMap!5888 (toList!6408 List!53753)) )
))
(declare-fun contains!17030 (ListMap!5887 K!15139) Bool)

(declare-fun extractMap!2195 (List!53754) ListMap!5887)

(assert (=> b!4771673 (= res!2023950 (contains!17030 (extractMap!2195 (toList!6407 lm!1309)) key!2872))))

(declare-fun b!4771674 () Bool)

(assert (=> b!4771674 (= e!2978714 e!2978712)))

(declare-fun res!2023954 () Bool)

(assert (=> b!4771674 (=> res!2023954 e!2978712)))

(assert (=> b!4771674 (= res!2023954 (not (forall!11924 (toList!6407 lm!1309) lambda!225255)))))

(declare-fun containsKeyBiggerList!334 (List!53754 K!15139) Bool)

(assert (=> b!4771674 (containsKeyBiggerList!334 (toList!6407 lm!1309) key!2872)))

(declare-fun lt!1934162 () Unit!138524)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!192 (ListLongMap!4821 K!15139 Hashable!6660) Unit!138524)

(assert (=> b!4771674 (= lt!1934162 (lemmaInLongMapThenContainsKeyBiggerList!192 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488554 res!2023949) b!4771671))

(assert (= (and b!4771671 res!2023952) b!4771673))

(assert (= (and b!4771673 res!2023950) b!4771670))

(assert (= (and b!4771670 (not res!2023953)) b!4771674))

(assert (= (and b!4771674 (not res!2023954)) b!4771668))

(assert (= (and b!4771668 (not res!2023951)) b!4771669))

(assert (= start!488554 b!4771672))

(declare-fun m!5743790 () Bool)

(assert (=> b!4771673 m!5743790))

(assert (=> b!4771673 m!5743790))

(declare-fun m!5743792 () Bool)

(assert (=> b!4771673 m!5743792))

(declare-fun m!5743794 () Bool)

(assert (=> b!4771674 m!5743794))

(declare-fun m!5743796 () Bool)

(assert (=> b!4771674 m!5743796))

(declare-fun m!5743798 () Bool)

(assert (=> b!4771674 m!5743798))

(declare-fun m!5743800 () Bool)

(assert (=> b!4771669 m!5743800))

(assert (=> b!4771669 m!5743800))

(declare-fun m!5743802 () Bool)

(assert (=> b!4771671 m!5743802))

(declare-fun m!5743804 () Bool)

(assert (=> b!4771670 m!5743804))

(declare-fun m!5743806 () Bool)

(assert (=> b!4771670 m!5743806))

(declare-fun m!5743808 () Bool)

(assert (=> b!4771670 m!5743808))

(declare-fun m!5743810 () Bool)

(assert (=> b!4771670 m!5743810))

(declare-fun m!5743812 () Bool)

(assert (=> b!4771670 m!5743812))

(assert (=> b!4771670 m!5743800))

(declare-fun m!5743814 () Bool)

(assert (=> b!4771670 m!5743814))

(declare-fun m!5743816 () Bool)

(assert (=> b!4771670 m!5743816))

(declare-fun m!5743818 () Bool)

(assert (=> b!4771670 m!5743818))

(declare-fun m!5743820 () Bool)

(assert (=> b!4771670 m!5743820))

(declare-fun m!5743822 () Bool)

(assert (=> b!4771670 m!5743822))

(assert (=> b!4771670 m!5743800))

(assert (=> start!488554 m!5743794))

(declare-fun m!5743824 () Bool)

(assert (=> start!488554 m!5743824))

(assert (=> b!4771668 m!5743794))

(assert (=> b!4771668 m!5743800))

(assert (=> b!4771668 m!5743800))

(declare-fun m!5743826 () Bool)

(assert (=> b!4771668 m!5743826))

(check-sat (not b!4771669) (not b!4771671) (not b!4771674) (not b!4771668) (not b!4771672) (not b!4771670) tp_is_empty!32639 (not b!4771673) (not start!488554) tp_is_empty!32637)
(check-sat)

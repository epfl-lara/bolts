; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488548 () Bool)

(assert start!488548)

(declare-fun b!4771609 () Bool)

(declare-fun e!2978672 () Bool)

(declare-fun e!2978669 () Bool)

(assert (=> b!4771609 (= e!2978672 e!2978669)))

(declare-fun res!2023901 () Bool)

(assert (=> b!4771609 (=> res!2023901 e!2978669)))

(declare-datatypes ((K!15132 0))(
  ( (K!15133 (val!20411 Int)) )
))
(declare-datatypes ((V!15378 0))(
  ( (V!15379 (val!20412 Int)) )
))
(declare-datatypes ((tuple2!55796 0))(
  ( (tuple2!55797 (_1!31192 K!15132) (_2!31192 V!15378)) )
))
(declare-datatypes ((List!53747 0))(
  ( (Nil!53623) (Cons!53623 (h!60035 tuple2!55796) (t!361197 List!53747)) )
))
(declare-datatypes ((tuple2!55798 0))(
  ( (tuple2!55799 (_1!31193 (_ BitVec 64)) (_2!31193 List!53747)) )
))
(declare-datatypes ((List!53748 0))(
  ( (Nil!53624) (Cons!53624 (h!60036 tuple2!55798) (t!361198 List!53748)) )
))
(declare-datatypes ((ListLongMap!4815 0))(
  ( (ListLongMap!4816 (toList!6401 List!53748)) )
))
(declare-fun lm!1309 () ListLongMap!4815)

(declare-fun lambda!225204 () Int)

(declare-fun forall!11921 (List!53748 Int) Bool)

(assert (=> b!4771609 (= res!2023901 (not (forall!11921 (toList!6401 lm!1309) lambda!225204)))))

(declare-fun key!2872 () K!15132)

(declare-fun containsKeyBiggerList!331 (List!53748 K!15132) Bool)

(assert (=> b!4771609 (containsKeyBiggerList!331 (toList!6401 lm!1309) key!2872)))

(declare-datatypes ((Hashable!6657 0))(
  ( (HashableExt!6656 (__x!32680 Int)) )
))
(declare-fun hashF!980 () Hashable!6657)

(declare-datatypes ((Unit!138518 0))(
  ( (Unit!138519) )
))
(declare-fun lt!1934026 () Unit!138518)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!189 (ListLongMap!4815 K!15132 Hashable!6657) Unit!138518)

(assert (=> b!4771609 (= lt!1934026 (lemmaInLongMapThenContainsKeyBiggerList!189 lm!1309 key!2872 hashF!980))))

(declare-fun res!2023902 () Bool)

(declare-fun e!2978670 () Bool)

(assert (=> start!488548 (=> (not res!2023902) (not e!2978670))))

(assert (=> start!488548 (= res!2023902 (forall!11921 (toList!6401 lm!1309) lambda!225204))))

(assert (=> start!488548 e!2978670))

(declare-fun e!2978671 () Bool)

(declare-fun inv!69159 (ListLongMap!4815) Bool)

(assert (=> start!488548 (and (inv!69159 lm!1309) e!2978671)))

(assert (=> start!488548 true))

(declare-fun tp_is_empty!32625 () Bool)

(assert (=> start!488548 tp_is_empty!32625))

(declare-fun tp_is_empty!32627 () Bool)

(assert (=> start!488548 tp_is_empty!32627))

(declare-fun b!4771610 () Bool)

(assert (=> b!4771610 (= e!2978669 true)))

(declare-fun lt!1934024 () Unit!138518)

(declare-fun lt!1934030 () tuple2!55798)

(declare-fun forallContained!3902 (List!53748 Int tuple2!55798) Unit!138518)

(assert (=> b!4771610 (= lt!1934024 (forallContained!3902 (toList!6401 lm!1309) lambda!225204 lt!1934030))))

(declare-fun lt!1934023 () Unit!138518)

(assert (=> b!4771610 (= lt!1934023 (forallContained!3902 (toList!6401 lm!1309) lambda!225204 lt!1934030))))

(declare-fun lt!1934027 () Unit!138518)

(declare-fun lemmaListContainsThenExtractedMapContains!579 (ListLongMap!4815 K!15132 Hashable!6657) Unit!138518)

(assert (=> b!4771610 (= lt!1934027 (lemmaListContainsThenExtractedMapContains!579 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771611 () Bool)

(declare-fun tp!1356663 () Bool)

(assert (=> b!4771611 (= e!2978671 tp!1356663)))

(declare-fun b!4771612 () Bool)

(declare-fun res!2023903 () Bool)

(assert (=> b!4771612 (=> (not res!2023903) (not e!2978670))))

(declare-datatypes ((ListMap!5881 0))(
  ( (ListMap!5882 (toList!6402 List!53747)) )
))
(declare-fun contains!17019 (ListMap!5881 K!15132) Bool)

(declare-fun extractMap!2192 (List!53748) ListMap!5881)

(assert (=> b!4771612 (= res!2023903 (contains!17019 (extractMap!2192 (toList!6401 lm!1309)) key!2872))))

(declare-fun b!4771613 () Bool)

(declare-fun res!2023900 () Bool)

(assert (=> b!4771613 (=> (not res!2023900) (not e!2978670))))

(declare-fun allKeysSameHashInMap!2062 (ListLongMap!4815 Hashable!6657) Bool)

(assert (=> b!4771613 (= res!2023900 (allKeysSameHashInMap!2062 lm!1309 hashF!980))))

(declare-fun b!4771614 () Bool)

(assert (=> b!4771614 (= e!2978670 (not e!2978672))))

(declare-fun res!2023899 () Bool)

(assert (=> b!4771614 (=> res!2023899 e!2978672)))

(declare-datatypes ((Option!12752 0))(
  ( (None!12751) (Some!12751 (v!47878 tuple2!55796)) )
))
(declare-fun lt!1934028 () Option!12752)

(declare-fun v!9615 () V!15378)

(declare-fun get!18121 (Option!12752) tuple2!55796)

(assert (=> b!4771614 (= res!2023899 (not (= (_2!31192 (get!18121 lt!1934028)) v!9615)))))

(declare-fun isDefined!9898 (Option!12752) Bool)

(assert (=> b!4771614 (isDefined!9898 lt!1934028)))

(declare-fun lt!1934034 () List!53747)

(declare-fun getPair!677 (List!53747 K!15132) Option!12752)

(assert (=> b!4771614 (= lt!1934028 (getPair!677 lt!1934034 key!2872))))

(declare-fun lt!1934022 () Unit!138518)

(assert (=> b!4771614 (= lt!1934022 (forallContained!3902 (toList!6401 lm!1309) lambda!225204 lt!1934030))))

(declare-fun lt!1934029 () Unit!138518)

(declare-fun lemmaInGenMapThenGetPairDefined!451 (ListLongMap!4815 K!15132 Hashable!6657) Unit!138518)

(assert (=> b!4771614 (= lt!1934029 (lemmaInGenMapThenGetPairDefined!451 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934025 () Unit!138518)

(assert (=> b!4771614 (= lt!1934025 (forallContained!3902 (toList!6401 lm!1309) lambda!225204 lt!1934030))))

(declare-fun contains!17020 (List!53748 tuple2!55798) Bool)

(assert (=> b!4771614 (contains!17020 (toList!6401 lm!1309) lt!1934030)))

(declare-fun lt!1934032 () (_ BitVec 64))

(assert (=> b!4771614 (= lt!1934030 (tuple2!55799 lt!1934032 lt!1934034))))

(declare-fun lt!1934033 () Unit!138518)

(declare-fun lemmaGetValueImpliesTupleContained!468 (ListLongMap!4815 (_ BitVec 64) List!53747) Unit!138518)

(assert (=> b!4771614 (= lt!1934033 (lemmaGetValueImpliesTupleContained!468 lm!1309 lt!1934032 lt!1934034))))

(declare-fun apply!12702 (ListLongMap!4815 (_ BitVec 64)) List!53747)

(assert (=> b!4771614 (= lt!1934034 (apply!12702 lm!1309 lt!1934032))))

(declare-fun contains!17021 (ListLongMap!4815 (_ BitVec 64)) Bool)

(assert (=> b!4771614 (contains!17021 lm!1309 lt!1934032)))

(declare-fun hash!4632 (Hashable!6657 K!15132) (_ BitVec 64))

(assert (=> b!4771614 (= lt!1934032 (hash!4632 hashF!980 key!2872))))

(declare-fun lt!1934031 () Unit!138518)

(declare-fun lemmaInGenMapThenLongMapContainsHash!873 (ListLongMap!4815 K!15132 Hashable!6657) Unit!138518)

(assert (=> b!4771614 (= lt!1934031 (lemmaInGenMapThenLongMapContainsHash!873 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488548 res!2023902) b!4771613))

(assert (= (and b!4771613 res!2023900) b!4771612))

(assert (= (and b!4771612 res!2023903) b!4771614))

(assert (= (and b!4771614 (not res!2023899)) b!4771609))

(assert (= (and b!4771609 (not res!2023901)) b!4771610))

(assert (= start!488548 b!4771611))

(declare-fun m!5743676 () Bool)

(assert (=> b!4771609 m!5743676))

(declare-fun m!5743678 () Bool)

(assert (=> b!4771609 m!5743678))

(declare-fun m!5743680 () Bool)

(assert (=> b!4771609 m!5743680))

(declare-fun m!5743682 () Bool)

(assert (=> b!4771612 m!5743682))

(assert (=> b!4771612 m!5743682))

(declare-fun m!5743684 () Bool)

(assert (=> b!4771612 m!5743684))

(declare-fun m!5743686 () Bool)

(assert (=> b!4771610 m!5743686))

(assert (=> b!4771610 m!5743686))

(declare-fun m!5743688 () Bool)

(assert (=> b!4771610 m!5743688))

(declare-fun m!5743690 () Bool)

(assert (=> b!4771613 m!5743690))

(assert (=> start!488548 m!5743676))

(declare-fun m!5743692 () Bool)

(assert (=> start!488548 m!5743692))

(assert (=> b!4771614 m!5743686))

(declare-fun m!5743694 () Bool)

(assert (=> b!4771614 m!5743694))

(declare-fun m!5743696 () Bool)

(assert (=> b!4771614 m!5743696))

(declare-fun m!5743698 () Bool)

(assert (=> b!4771614 m!5743698))

(declare-fun m!5743700 () Bool)

(assert (=> b!4771614 m!5743700))

(declare-fun m!5743702 () Bool)

(assert (=> b!4771614 m!5743702))

(declare-fun m!5743704 () Bool)

(assert (=> b!4771614 m!5743704))

(declare-fun m!5743706 () Bool)

(assert (=> b!4771614 m!5743706))

(declare-fun m!5743708 () Bool)

(assert (=> b!4771614 m!5743708))

(assert (=> b!4771614 m!5743686))

(declare-fun m!5743710 () Bool)

(assert (=> b!4771614 m!5743710))

(declare-fun m!5743712 () Bool)

(assert (=> b!4771614 m!5743712))

(push 1)

(assert (not b!4771613))

(assert tp_is_empty!32627)

(assert (not b!4771610))

(assert (not b!4771614))

(assert (not b!4771609))

(assert (not b!4771612))

(assert (not b!4771611))

(assert (not start!488548))

(assert tp_is_empty!32625)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


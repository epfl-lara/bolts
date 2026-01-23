; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434534 () Bool)

(assert start!434534)

(declare-fun b!4441064 () Bool)

(declare-fun res!1838836 () Bool)

(declare-fun e!2765195 () Bool)

(assert (=> b!4441064 (=> (not res!1838836) (not e!2765195))))

(declare-datatypes ((K!11163 0))(
  ( (K!11164 (val!17201 Int)) )
))
(declare-fun key!3717 () K!11163)

(declare-datatypes ((Hashable!5230 0))(
  ( (HashableExt!5229 (__x!30933 Int)) )
))
(declare-fun hashF!1220 () Hashable!5230)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2291 (Hashable!5230 K!11163) (_ BitVec 64))

(assert (=> b!4441064 (= res!1838836 (= (hash!2291 hashF!1220 key!3717) hash!366))))

(declare-fun b!4441065 () Bool)

(declare-fun res!1838837 () Bool)

(declare-fun e!2765203 () Bool)

(assert (=> b!4441065 (=> (not res!1838837) (not e!2765203))))

(declare-datatypes ((V!11409 0))(
  ( (V!11410 (val!17202 Int)) )
))
(declare-datatypes ((tuple2!49722 0))(
  ( (tuple2!49723 (_1!28155 K!11163) (_2!28155 V!11409)) )
))
(declare-datatypes ((List!49918 0))(
  ( (Nil!49794) (Cons!49794 (h!55521 tuple2!49722) (t!356860 List!49918)) )
))
(declare-datatypes ((tuple2!49724 0))(
  ( (tuple2!49725 (_1!28156 (_ BitVec 64)) (_2!28156 List!49918)) )
))
(declare-datatypes ((List!49919 0))(
  ( (Nil!49795) (Cons!49795 (h!55522 tuple2!49724) (t!356861 List!49919)) )
))
(declare-datatypes ((ListLongMap!2309 0))(
  ( (ListLongMap!2310 (toList!3659 List!49919)) )
))
(declare-fun lm!1616 () ListLongMap!2309)

(declare-fun lambda!157273 () Int)

(declare-fun forall!9703 (List!49919 Int) Bool)

(assert (=> b!4441065 (= res!1838837 (forall!9703 (toList!3659 lm!1616) lambda!157273))))

(declare-fun b!4441066 () Bool)

(declare-fun res!1838831 () Bool)

(assert (=> b!4441066 (=> (not res!1838831) (not e!2765195))))

(declare-fun newBucket!194 () List!49918)

(declare-fun allKeysSameHash!796 (List!49918 (_ BitVec 64) Hashable!5230) Bool)

(assert (=> b!4441066 (= res!1838831 (allKeysSameHash!796 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4441067 () Bool)

(declare-fun res!1838827 () Bool)

(declare-fun e!2765198 () Bool)

(assert (=> b!4441067 (=> res!1838827 e!2765198)))

(assert (=> b!4441067 (= res!1838827 (or (and (is-Cons!49795 (toList!3659 lm!1616)) (= (_1!28156 (h!55522 (toList!3659 lm!1616))) hash!366)) (not (is-Cons!49795 (toList!3659 lm!1616))) (= (_1!28156 (h!55522 (toList!3659 lm!1616))) hash!366)))))

(declare-fun b!4441068 () Bool)

(assert (=> b!4441068 (= e!2765203 (not e!2765198))))

(declare-fun res!1838832 () Bool)

(assert (=> b!4441068 (=> res!1838832 e!2765198)))

(declare-fun lt!1636749 () ListLongMap!2309)

(assert (=> b!4441068 (= res!1838832 (not (forall!9703 (toList!3659 lt!1636749) lambda!157273)))))

(assert (=> b!4441068 (forall!9703 (toList!3659 lt!1636749) lambda!157273)))

(declare-fun +!1218 (ListLongMap!2309 tuple2!49724) ListLongMap!2309)

(assert (=> b!4441068 (= lt!1636749 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83897 0))(
  ( (Unit!83898) )
))
(declare-fun lt!1636747 () Unit!83897)

(declare-fun addValidProp!474 (ListLongMap!2309 Int (_ BitVec 64) List!49918) Unit!83897)

(assert (=> b!4441068 (= lt!1636747 (addValidProp!474 lm!1616 lambda!157273 hash!366 newBucket!194))))

(declare-fun b!4441069 () Bool)

(declare-fun res!1838830 () Bool)

(assert (=> b!4441069 (=> (not res!1838830) (not e!2765195))))

(declare-fun allKeysSameHashInMap!942 (ListLongMap!2309 Hashable!5230) Bool)

(assert (=> b!4441069 (= res!1838830 (allKeysSameHashInMap!942 lm!1616 hashF!1220))))

(declare-fun b!4441070 () Bool)

(declare-fun e!2765202 () Unit!83897)

(declare-fun Unit!83899 () Unit!83897)

(assert (=> b!4441070 (= e!2765202 Unit!83899)))

(declare-fun b!4441071 () Bool)

(declare-fun res!1838826 () Bool)

(assert (=> b!4441071 (=> (not res!1838826) (not e!2765195))))

(declare-datatypes ((ListMap!2903 0))(
  ( (ListMap!2904 (toList!3660 List!49918)) )
))
(declare-fun contains!12365 (ListMap!2903 K!11163) Bool)

(declare-fun extractMap!897 (List!49919) ListMap!2903)

(assert (=> b!4441071 (= res!1838826 (not (contains!12365 (extractMap!897 (toList!3659 lm!1616)) key!3717)))))

(declare-fun newValue!93 () V!11409)

(declare-fun b!4441072 () Bool)

(declare-fun e!2765197 () Bool)

(declare-fun lt!1636744 () Bool)

(assert (=> b!4441072 (= e!2765197 (and (not lt!1636744) (= newBucket!194 (Cons!49794 (tuple2!49723 key!3717 newValue!93) Nil!49794))))))

(declare-fun e!2765196 () Bool)

(declare-fun b!4441073 () Bool)

(declare-fun tp_is_empty!26589 () Bool)

(declare-fun tp_is_empty!26591 () Bool)

(declare-fun tp!1334178 () Bool)

(assert (=> b!4441073 (= e!2765196 (and tp_is_empty!26591 tp_is_empty!26589 tp!1334178))))

(declare-fun b!4441074 () Bool)

(declare-fun e!2765201 () Bool)

(declare-fun tp!1334177 () Bool)

(assert (=> b!4441074 (= e!2765201 tp!1334177)))

(declare-fun res!1838834 () Bool)

(assert (=> start!434534 (=> (not res!1838834) (not e!2765195))))

(assert (=> start!434534 (= res!1838834 (forall!9703 (toList!3659 lm!1616) lambda!157273))))

(assert (=> start!434534 e!2765195))

(assert (=> start!434534 tp_is_empty!26589))

(assert (=> start!434534 tp_is_empty!26591))

(assert (=> start!434534 e!2765196))

(declare-fun inv!65350 (ListLongMap!2309) Bool)

(assert (=> start!434534 (and (inv!65350 lm!1616) e!2765201)))

(assert (=> start!434534 true))

(declare-fun b!4441075 () Bool)

(declare-fun res!1838828 () Bool)

(assert (=> b!4441075 (=> (not res!1838828) (not e!2765203))))

(declare-fun noDuplicateKeys!836 (List!49918) Bool)

(assert (=> b!4441075 (= res!1838828 (noDuplicateKeys!836 newBucket!194))))

(declare-fun b!4441076 () Bool)

(declare-fun Unit!83900 () Unit!83897)

(assert (=> b!4441076 (= e!2765202 Unit!83900)))

(declare-fun lt!1636745 () Unit!83897)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!73 (ListLongMap!2309 K!11163 Hashable!5230) Unit!83897)

(assert (=> b!4441076 (= lt!1636745 (lemmaExtractTailMapContainsThenExtractMapDoes!73 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4441076 false))

(declare-fun b!4441077 () Bool)

(assert (=> b!4441077 (= e!2765195 e!2765203)))

(declare-fun res!1838833 () Bool)

(assert (=> b!4441077 (=> (not res!1838833) (not e!2765203))))

(assert (=> b!4441077 (= res!1838833 e!2765197)))

(declare-fun res!1838835 () Bool)

(assert (=> b!4441077 (=> res!1838835 e!2765197)))

(declare-fun e!2765199 () Bool)

(assert (=> b!4441077 (= res!1838835 e!2765199)))

(declare-fun res!1838829 () Bool)

(assert (=> b!4441077 (=> (not res!1838829) (not e!2765199))))

(assert (=> b!4441077 (= res!1838829 lt!1636744)))

(declare-fun contains!12366 (ListLongMap!2309 (_ BitVec 64)) Bool)

(assert (=> b!4441077 (= lt!1636744 (contains!12366 lm!1616 hash!366))))

(declare-fun b!4441078 () Bool)

(declare-fun e!2765200 () Bool)

(assert (=> b!4441078 (= e!2765198 e!2765200)))

(declare-fun res!1838838 () Bool)

(assert (=> b!4441078 (=> res!1838838 e!2765200)))

(declare-fun lt!1636746 () ListLongMap!2309)

(assert (=> b!4441078 (= res!1838838 (not (forall!9703 (toList!3659 lt!1636746) lambda!157273)))))

(declare-fun tail!7372 (ListLongMap!2309) ListLongMap!2309)

(assert (=> b!4441078 (= lt!1636746 (tail!7372 lm!1616))))

(declare-fun lt!1636748 () Unit!83897)

(assert (=> b!4441078 (= lt!1636748 e!2765202)))

(declare-fun c!755796 () Bool)

(declare-fun tail!7373 (List!49919) List!49919)

(assert (=> b!4441078 (= c!755796 (contains!12365 (extractMap!897 (tail!7373 (toList!3659 lm!1616))) key!3717))))

(declare-fun b!4441079 () Bool)

(declare-fun apply!11688 (ListLongMap!2309 (_ BitVec 64)) List!49918)

(assert (=> b!4441079 (= e!2765199 (= newBucket!194 (Cons!49794 (tuple2!49723 key!3717 newValue!93) (apply!11688 lm!1616 hash!366))))))

(declare-fun b!4441080 () Bool)

(assert (=> b!4441080 (= e!2765200 (allKeysSameHashInMap!942 lt!1636746 hashF!1220))))

(assert (= (and start!434534 res!1838834) b!4441069))

(assert (= (and b!4441069 res!1838830) b!4441064))

(assert (= (and b!4441064 res!1838836) b!4441066))

(assert (= (and b!4441066 res!1838831) b!4441071))

(assert (= (and b!4441071 res!1838826) b!4441077))

(assert (= (and b!4441077 res!1838829) b!4441079))

(assert (= (and b!4441077 (not res!1838835)) b!4441072))

(assert (= (and b!4441077 res!1838833) b!4441075))

(assert (= (and b!4441075 res!1838828) b!4441065))

(assert (= (and b!4441065 res!1838837) b!4441068))

(assert (= (and b!4441068 (not res!1838832)) b!4441067))

(assert (= (and b!4441067 (not res!1838827)) b!4441078))

(assert (= (and b!4441078 c!755796) b!4441076))

(assert (= (and b!4441078 (not c!755796)) b!4441070))

(assert (= (and b!4441078 (not res!1838838)) b!4441080))

(assert (= (and start!434534 (is-Cons!49794 newBucket!194)) b!4441073))

(assert (= start!434534 b!4441074))

(declare-fun m!5129675 () Bool)

(assert (=> b!4441075 m!5129675))

(declare-fun m!5129677 () Bool)

(assert (=> start!434534 m!5129677))

(declare-fun m!5129679 () Bool)

(assert (=> start!434534 m!5129679))

(declare-fun m!5129681 () Bool)

(assert (=> b!4441066 m!5129681))

(declare-fun m!5129683 () Bool)

(assert (=> b!4441076 m!5129683))

(declare-fun m!5129685 () Bool)

(assert (=> b!4441078 m!5129685))

(declare-fun m!5129687 () Bool)

(assert (=> b!4441078 m!5129687))

(declare-fun m!5129689 () Bool)

(assert (=> b!4441078 m!5129689))

(assert (=> b!4441078 m!5129685))

(assert (=> b!4441078 m!5129687))

(declare-fun m!5129691 () Bool)

(assert (=> b!4441078 m!5129691))

(declare-fun m!5129693 () Bool)

(assert (=> b!4441078 m!5129693))

(declare-fun m!5129695 () Bool)

(assert (=> b!4441064 m!5129695))

(declare-fun m!5129697 () Bool)

(assert (=> b!4441077 m!5129697))

(declare-fun m!5129699 () Bool)

(assert (=> b!4441071 m!5129699))

(assert (=> b!4441071 m!5129699))

(declare-fun m!5129701 () Bool)

(assert (=> b!4441071 m!5129701))

(declare-fun m!5129703 () Bool)

(assert (=> b!4441080 m!5129703))

(declare-fun m!5129705 () Bool)

(assert (=> b!4441069 m!5129705))

(declare-fun m!5129707 () Bool)

(assert (=> b!4441068 m!5129707))

(assert (=> b!4441068 m!5129707))

(declare-fun m!5129709 () Bool)

(assert (=> b!4441068 m!5129709))

(declare-fun m!5129711 () Bool)

(assert (=> b!4441068 m!5129711))

(assert (=> b!4441065 m!5129677))

(declare-fun m!5129713 () Bool)

(assert (=> b!4441079 m!5129713))

(push 1)

(assert (not start!434534))

(assert (not b!4441066))

(assert (not b!4441073))

(assert (not b!4441069))

(assert (not b!4441071))

(assert (not b!4441064))

(assert (not b!4441080))

(assert (not b!4441068))

(assert (not b!4441077))

(assert (not b!4441078))

(assert (not b!4441074))

(assert (not b!4441076))

(assert (not b!4441079))

(assert tp_is_empty!26591)

(assert (not b!4441065))

(assert tp_is_empty!26589)

(assert (not b!4441075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!764127 () Bool)

(declare-fun d!1348017 () Bool)

(assert (= bs!764127 (and d!1348017 start!434534)))

(declare-fun lambda!157287 () Int)

(assert (=> bs!764127 (= lambda!157287 lambda!157273)))

(assert (=> d!1348017 (contains!12365 (extractMap!897 (toList!3659 lm!1616)) key!3717)))

(declare-fun lt!1636770 () Unit!83897)

(declare-fun choose!28203 (ListLongMap!2309 K!11163 Hashable!5230) Unit!83897)

(assert (=> d!1348017 (= lt!1636770 (choose!28203 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1348017 (forall!9703 (toList!3659 lm!1616) lambda!157287)))

(assert (=> d!1348017 (= (lemmaExtractTailMapContainsThenExtractMapDoes!73 lm!1616 key!3717 hashF!1220) lt!1636770)))

(declare-fun bs!764128 () Bool)

(assert (= bs!764128 d!1348017))

(assert (=> bs!764128 m!5129699))

(assert (=> bs!764128 m!5129699))

(assert (=> bs!764128 m!5129701))

(declare-fun m!5129755 () Bool)

(assert (=> bs!764128 m!5129755))

(declare-fun m!5129757 () Bool)

(assert (=> bs!764128 m!5129757))

(assert (=> b!4441076 d!1348017))

(declare-fun d!1348019 () Bool)

(declare-fun res!1838882 () Bool)

(declare-fun e!2765235 () Bool)

(assert (=> d!1348019 (=> res!1838882 e!2765235)))

(assert (=> d!1348019 (= res!1838882 (is-Nil!49795 (toList!3659 lm!1616)))))

(assert (=> d!1348019 (= (forall!9703 (toList!3659 lm!1616) lambda!157273) e!2765235)))

(declare-fun b!4441136 () Bool)

(declare-fun e!2765236 () Bool)

(assert (=> b!4441136 (= e!2765235 e!2765236)))

(declare-fun res!1838883 () Bool)

(assert (=> b!4441136 (=> (not res!1838883) (not e!2765236))))

(declare-fun dynLambda!20910 (Int tuple2!49724) Bool)

(assert (=> b!4441136 (= res!1838883 (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 lm!1616))))))

(declare-fun b!4441137 () Bool)

(assert (=> b!4441137 (= e!2765236 (forall!9703 (t!356861 (toList!3659 lm!1616)) lambda!157273))))

(assert (= (and d!1348019 (not res!1838882)) b!4441136))

(assert (= (and b!4441136 res!1838883) b!4441137))

(declare-fun b_lambda!145025 () Bool)

(assert (=> (not b_lambda!145025) (not b!4441136)))

(declare-fun m!5129759 () Bool)

(assert (=> b!4441136 m!5129759))

(declare-fun m!5129761 () Bool)

(assert (=> b!4441137 m!5129761))

(assert (=> b!4441065 d!1348019))

(declare-fun d!1348021 () Bool)

(declare-fun hash!2293 (Hashable!5230 K!11163) (_ BitVec 64))

(assert (=> d!1348021 (= (hash!2291 hashF!1220 key!3717) (hash!2293 hashF!1220 key!3717))))

(declare-fun bs!764129 () Bool)

(assert (= bs!764129 d!1348021))

(declare-fun m!5129763 () Bool)

(assert (=> bs!764129 m!5129763))

(assert (=> b!4441064 d!1348021))

(declare-fun d!1348023 () Bool)

(declare-fun res!1838888 () Bool)

(declare-fun e!2765241 () Bool)

(assert (=> d!1348023 (=> res!1838888 e!2765241)))

(assert (=> d!1348023 (= res!1838888 (not (is-Cons!49794 newBucket!194)))))

(assert (=> d!1348023 (= (noDuplicateKeys!836 newBucket!194) e!2765241)))

(declare-fun b!4441142 () Bool)

(declare-fun e!2765242 () Bool)

(assert (=> b!4441142 (= e!2765241 e!2765242)))

(declare-fun res!1838889 () Bool)

(assert (=> b!4441142 (=> (not res!1838889) (not e!2765242))))

(declare-fun containsKey!1243 (List!49918 K!11163) Bool)

(assert (=> b!4441142 (= res!1838889 (not (containsKey!1243 (t!356860 newBucket!194) (_1!28155 (h!55521 newBucket!194)))))))

(declare-fun b!4441143 () Bool)

(assert (=> b!4441143 (= e!2765242 (noDuplicateKeys!836 (t!356860 newBucket!194)))))

(assert (= (and d!1348023 (not res!1838888)) b!4441142))

(assert (= (and b!4441142 res!1838889) b!4441143))

(declare-fun m!5129765 () Bool)

(assert (=> b!4441142 m!5129765))

(declare-fun m!5129767 () Bool)

(assert (=> b!4441143 m!5129767))

(assert (=> b!4441075 d!1348023))

(declare-fun d!1348027 () Bool)

(declare-fun res!1838890 () Bool)

(declare-fun e!2765243 () Bool)

(assert (=> d!1348027 (=> res!1838890 e!2765243)))

(assert (=> d!1348027 (= res!1838890 (is-Nil!49795 (toList!3659 lt!1636749)))))

(assert (=> d!1348027 (= (forall!9703 (toList!3659 lt!1636749) lambda!157273) e!2765243)))

(declare-fun b!4441144 () Bool)

(declare-fun e!2765244 () Bool)

(assert (=> b!4441144 (= e!2765243 e!2765244)))

(declare-fun res!1838891 () Bool)

(assert (=> b!4441144 (=> (not res!1838891) (not e!2765244))))

(assert (=> b!4441144 (= res!1838891 (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 lt!1636749))))))

(declare-fun b!4441145 () Bool)

(assert (=> b!4441145 (= e!2765244 (forall!9703 (t!356861 (toList!3659 lt!1636749)) lambda!157273))))

(assert (= (and d!1348027 (not res!1838890)) b!4441144))

(assert (= (and b!4441144 res!1838891) b!4441145))

(declare-fun b_lambda!145027 () Bool)

(assert (=> (not b_lambda!145027) (not b!4441144)))

(declare-fun m!5129769 () Bool)

(assert (=> b!4441144 m!5129769))

(declare-fun m!5129771 () Bool)

(assert (=> b!4441145 m!5129771))

(assert (=> b!4441068 d!1348027))

(declare-fun d!1348029 () Bool)

(declare-fun e!2765247 () Bool)

(assert (=> d!1348029 e!2765247))

(declare-fun res!1838897 () Bool)

(assert (=> d!1348029 (=> (not res!1838897) (not e!2765247))))

(declare-fun lt!1636781 () ListLongMap!2309)

(assert (=> d!1348029 (= res!1838897 (contains!12366 lt!1636781 (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun lt!1636782 () List!49919)

(assert (=> d!1348029 (= lt!1636781 (ListLongMap!2310 lt!1636782))))

(declare-fun lt!1636780 () Unit!83897)

(declare-fun lt!1636779 () Unit!83897)

(assert (=> d!1348029 (= lt!1636780 lt!1636779)))

(declare-datatypes ((Option!10803 0))(
  ( (None!10802) (Some!10802 (v!44030 List!49918)) )
))
(declare-fun getValueByKey!789 (List!49919 (_ BitVec 64)) Option!10803)

(assert (=> d!1348029 (= (getValueByKey!789 lt!1636782 (_1!28156 (tuple2!49725 hash!366 newBucket!194))) (Some!10802 (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!514 (List!49919 (_ BitVec 64) List!49918) Unit!83897)

(assert (=> d!1348029 (= lt!1636779 (lemmaContainsTupThenGetReturnValue!514 lt!1636782 (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!298 (List!49919 (_ BitVec 64) List!49918) List!49919)

(assert (=> d!1348029 (= lt!1636782 (insertStrictlySorted!298 (toList!3659 lm!1616) (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))

(assert (=> d!1348029 (= (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194)) lt!1636781)))

(declare-fun b!4441152 () Bool)

(declare-fun res!1838896 () Bool)

(assert (=> b!4441152 (=> (not res!1838896) (not e!2765247))))

(assert (=> b!4441152 (= res!1838896 (= (getValueByKey!789 (toList!3659 lt!1636781) (_1!28156 (tuple2!49725 hash!366 newBucket!194))) (Some!10802 (_2!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(declare-fun b!4441153 () Bool)

(declare-fun contains!12369 (List!49919 tuple2!49724) Bool)

(assert (=> b!4441153 (= e!2765247 (contains!12369 (toList!3659 lt!1636781) (tuple2!49725 hash!366 newBucket!194)))))

(assert (= (and d!1348029 res!1838897) b!4441152))

(assert (= (and b!4441152 res!1838896) b!4441153))

(declare-fun m!5129775 () Bool)

(assert (=> d!1348029 m!5129775))

(declare-fun m!5129777 () Bool)

(assert (=> d!1348029 m!5129777))

(declare-fun m!5129779 () Bool)

(assert (=> d!1348029 m!5129779))

(declare-fun m!5129781 () Bool)

(assert (=> d!1348029 m!5129781))

(declare-fun m!5129783 () Bool)

(assert (=> b!4441152 m!5129783))

(declare-fun m!5129785 () Bool)

(assert (=> b!4441153 m!5129785))

(assert (=> b!4441068 d!1348029))

(declare-fun d!1348033 () Bool)

(assert (=> d!1348033 (forall!9703 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194))) lambda!157273)))

(declare-fun lt!1636785 () Unit!83897)

(declare-fun choose!28204 (ListLongMap!2309 Int (_ BitVec 64) List!49918) Unit!83897)

(assert (=> d!1348033 (= lt!1636785 (choose!28204 lm!1616 lambda!157273 hash!366 newBucket!194))))

(declare-fun e!2765254 () Bool)

(assert (=> d!1348033 e!2765254))

(declare-fun res!1838904 () Bool)

(assert (=> d!1348033 (=> (not res!1838904) (not e!2765254))))

(assert (=> d!1348033 (= res!1838904 (forall!9703 (toList!3659 lm!1616) lambda!157273))))

(assert (=> d!1348033 (= (addValidProp!474 lm!1616 lambda!157273 hash!366 newBucket!194) lt!1636785)))

(declare-fun b!4441161 () Bool)

(assert (=> b!4441161 (= e!2765254 (dynLambda!20910 lambda!157273 (tuple2!49725 hash!366 newBucket!194)))))

(assert (= (and d!1348033 res!1838904) b!4441161))

(declare-fun b_lambda!145029 () Bool)

(assert (=> (not b_lambda!145029) (not b!4441161)))

(assert (=> d!1348033 m!5129709))

(declare-fun m!5129791 () Bool)

(assert (=> d!1348033 m!5129791))

(declare-fun m!5129793 () Bool)

(assert (=> d!1348033 m!5129793))

(assert (=> d!1348033 m!5129677))

(declare-fun m!5129795 () Bool)

(assert (=> b!4441161 m!5129795))

(assert (=> b!4441068 d!1348033))

(assert (=> start!434534 d!1348019))

(declare-fun d!1348037 () Bool)

(declare-fun isStrictlySorted!270 (List!49919) Bool)

(assert (=> d!1348037 (= (inv!65350 lm!1616) (isStrictlySorted!270 (toList!3659 lm!1616)))))

(declare-fun bs!764133 () Bool)

(assert (= bs!764133 d!1348037))

(declare-fun m!5129797 () Bool)

(assert (=> bs!764133 m!5129797))

(assert (=> start!434534 d!1348037))

(declare-fun d!1348039 () Bool)

(declare-fun get!16240 (Option!10803) List!49918)

(assert (=> d!1348039 (= (apply!11688 lm!1616 hash!366) (get!16240 (getValueByKey!789 (toList!3659 lm!1616) hash!366)))))

(declare-fun bs!764134 () Bool)

(assert (= bs!764134 d!1348039))

(declare-fun m!5129803 () Bool)

(assert (=> bs!764134 m!5129803))

(assert (=> bs!764134 m!5129803))

(declare-fun m!5129805 () Bool)

(assert (=> bs!764134 m!5129805))

(assert (=> b!4441079 d!1348039))

(declare-fun d!1348043 () Bool)

(declare-fun res!1838907 () Bool)

(declare-fun e!2765257 () Bool)

(assert (=> d!1348043 (=> res!1838907 e!2765257)))

(assert (=> d!1348043 (= res!1838907 (is-Nil!49795 (toList!3659 lt!1636746)))))

(assert (=> d!1348043 (= (forall!9703 (toList!3659 lt!1636746) lambda!157273) e!2765257)))

(declare-fun b!4441164 () Bool)

(declare-fun e!2765258 () Bool)

(assert (=> b!4441164 (= e!2765257 e!2765258)))

(declare-fun res!1838908 () Bool)

(assert (=> b!4441164 (=> (not res!1838908) (not e!2765258))))

(assert (=> b!4441164 (= res!1838908 (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 lt!1636746))))))

(declare-fun b!4441165 () Bool)

(assert (=> b!4441165 (= e!2765258 (forall!9703 (t!356861 (toList!3659 lt!1636746)) lambda!157273))))

(assert (= (and d!1348043 (not res!1838907)) b!4441164))

(assert (= (and b!4441164 res!1838908) b!4441165))

(declare-fun b_lambda!145033 () Bool)

(assert (=> (not b_lambda!145033) (not b!4441164)))

(declare-fun m!5129807 () Bool)

(assert (=> b!4441164 m!5129807))

(declare-fun m!5129809 () Bool)

(assert (=> b!4441165 m!5129809))

(assert (=> b!4441078 d!1348043))

(declare-fun d!1348045 () Bool)

(assert (=> d!1348045 (= (tail!7372 lm!1616) (ListLongMap!2310 (tail!7373 (toList!3659 lm!1616))))))

(declare-fun bs!764135 () Bool)

(assert (= bs!764135 d!1348045))

(assert (=> bs!764135 m!5129685))

(assert (=> b!4441078 d!1348045))

(declare-fun bs!764136 () Bool)

(declare-fun d!1348047 () Bool)

(assert (= bs!764136 (and d!1348047 start!434534)))

(declare-fun lambda!157293 () Int)

(assert (=> bs!764136 (= lambda!157293 lambda!157273)))

(declare-fun bs!764137 () Bool)

(assert (= bs!764137 (and d!1348047 d!1348017)))

(assert (=> bs!764137 (= lambda!157293 lambda!157287)))

(declare-fun lt!1636796 () ListMap!2903)

(declare-fun invariantList!843 (List!49918) Bool)

(assert (=> d!1348047 (invariantList!843 (toList!3660 lt!1636796))))

(declare-fun e!2765263 () ListMap!2903)

(assert (=> d!1348047 (= lt!1636796 e!2765263)))

(declare-fun c!755802 () Bool)

(assert (=> d!1348047 (= c!755802 (is-Cons!49795 (tail!7373 (toList!3659 lm!1616))))))

(assert (=> d!1348047 (forall!9703 (tail!7373 (toList!3659 lm!1616)) lambda!157293)))

(assert (=> d!1348047 (= (extractMap!897 (tail!7373 (toList!3659 lm!1616))) lt!1636796)))

(declare-fun b!4441172 () Bool)

(declare-fun addToMapMapFromBucket!446 (List!49918 ListMap!2903) ListMap!2903)

(assert (=> b!4441172 (= e!2765263 (addToMapMapFromBucket!446 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))) (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))))))

(declare-fun b!4441173 () Bool)

(assert (=> b!4441173 (= e!2765263 (ListMap!2904 Nil!49794))))

(assert (= (and d!1348047 c!755802) b!4441172))

(assert (= (and d!1348047 (not c!755802)) b!4441173))

(declare-fun m!5129811 () Bool)

(assert (=> d!1348047 m!5129811))

(assert (=> d!1348047 m!5129685))

(declare-fun m!5129813 () Bool)

(assert (=> d!1348047 m!5129813))

(declare-fun m!5129815 () Bool)

(assert (=> b!4441172 m!5129815))

(assert (=> b!4441172 m!5129815))

(declare-fun m!5129817 () Bool)

(assert (=> b!4441172 m!5129817))

(assert (=> b!4441078 d!1348047))

(declare-fun d!1348049 () Bool)

(assert (=> d!1348049 (= (tail!7373 (toList!3659 lm!1616)) (t!356861 (toList!3659 lm!1616)))))

(assert (=> b!4441078 d!1348049))

(declare-fun d!1348051 () Bool)

(declare-fun e!2765283 () Bool)

(assert (=> d!1348051 e!2765283))

(declare-fun res!1838923 () Bool)

(assert (=> d!1348051 (=> res!1838923 e!2765283)))

(declare-fun e!2765282 () Bool)

(assert (=> d!1348051 (= res!1838923 e!2765282)))

(declare-fun res!1838925 () Bool)

(assert (=> d!1348051 (=> (not res!1838925) (not e!2765282))))

(declare-fun lt!1636823 () Bool)

(assert (=> d!1348051 (= res!1838925 (not lt!1636823))))

(declare-fun lt!1636822 () Bool)

(assert (=> d!1348051 (= lt!1636823 lt!1636822)))

(declare-fun lt!1636819 () Unit!83897)

(declare-fun e!2765281 () Unit!83897)

(assert (=> d!1348051 (= lt!1636819 e!2765281)))

(declare-fun c!755811 () Bool)

(assert (=> d!1348051 (= c!755811 lt!1636822)))

(declare-fun containsKey!1244 (List!49918 K!11163) Bool)

(assert (=> d!1348051 (= lt!1636822 (containsKey!1244 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(assert (=> d!1348051 (= (contains!12365 (extractMap!897 (tail!7373 (toList!3659 lm!1616))) key!3717) lt!1636823)))

(declare-fun b!4441199 () Bool)

(assert (=> b!4441199 false))

(declare-fun lt!1636821 () Unit!83897)

(declare-fun lt!1636820 () Unit!83897)

(assert (=> b!4441199 (= lt!1636821 lt!1636820)))

(assert (=> b!4441199 (containsKey!1244 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!288 (List!49918 K!11163) Unit!83897)

(assert (=> b!4441199 (= lt!1636820 (lemmaInGetKeysListThenContainsKey!288 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(declare-fun e!2765284 () Unit!83897)

(declare-fun Unit!83905 () Unit!83897)

(assert (=> b!4441199 (= e!2765284 Unit!83905)))

(declare-fun b!4441200 () Bool)

(declare-fun Unit!83906 () Unit!83897)

(assert (=> b!4441200 (= e!2765284 Unit!83906)))

(declare-fun b!4441201 () Bool)

(declare-datatypes ((List!49922 0))(
  ( (Nil!49798) (Cons!49798 (h!55527 K!11163) (t!356864 List!49922)) )
))
(declare-fun contains!12370 (List!49922 K!11163) Bool)

(declare-fun keys!17058 (ListMap!2903) List!49922)

(assert (=> b!4441201 (= e!2765282 (not (contains!12370 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717)))))

(declare-fun b!4441202 () Bool)

(declare-fun e!2765280 () List!49922)

(assert (=> b!4441202 (= e!2765280 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))

(declare-fun b!4441203 () Bool)

(declare-fun getKeysList!290 (List!49918) List!49922)

(assert (=> b!4441203 (= e!2765280 (getKeysList!290 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))

(declare-fun b!4441204 () Bool)

(assert (=> b!4441204 (= e!2765281 e!2765284)))

(declare-fun c!755809 () Bool)

(declare-fun call!309007 () Bool)

(assert (=> b!4441204 (= c!755809 call!309007)))

(declare-fun b!4441205 () Bool)

(declare-fun e!2765279 () Bool)

(assert (=> b!4441205 (= e!2765283 e!2765279)))

(declare-fun res!1838924 () Bool)

(assert (=> b!4441205 (=> (not res!1838924) (not e!2765279))))

(declare-datatypes ((Option!10804 0))(
  ( (None!10803) (Some!10803 (v!44031 V!11409)) )
))
(declare-fun isDefined!8093 (Option!10804) Bool)

(declare-fun getValueByKey!790 (List!49918 K!11163) Option!10804)

(assert (=> b!4441205 (= res!1838924 (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717)))))

(declare-fun bm!309002 () Bool)

(assert (=> bm!309002 (= call!309007 (contains!12370 e!2765280 key!3717))))

(declare-fun c!755810 () Bool)

(assert (=> bm!309002 (= c!755810 c!755811)))

(declare-fun b!4441206 () Bool)

(declare-fun lt!1636826 () Unit!83897)

(assert (=> b!4441206 (= e!2765281 lt!1636826)))

(declare-fun lt!1636824 () Unit!83897)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!696 (List!49918 K!11163) Unit!83897)

(assert (=> b!4441206 (= lt!1636824 (lemmaContainsKeyImpliesGetValueByKeyDefined!696 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(assert (=> b!4441206 (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(declare-fun lt!1636825 () Unit!83897)

(assert (=> b!4441206 (= lt!1636825 lt!1636824)))

(declare-fun lemmaInListThenGetKeysListContains!287 (List!49918 K!11163) Unit!83897)

(assert (=> b!4441206 (= lt!1636826 (lemmaInListThenGetKeysListContains!287 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(assert (=> b!4441206 call!309007))

(declare-fun b!4441207 () Bool)

(assert (=> b!4441207 (= e!2765279 (contains!12370 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(assert (= (and d!1348051 c!755811) b!4441206))

(assert (= (and d!1348051 (not c!755811)) b!4441204))

(assert (= (and b!4441204 c!755809) b!4441199))

(assert (= (and b!4441204 (not c!755809)) b!4441200))

(assert (= (or b!4441206 b!4441204) bm!309002))

(assert (= (and bm!309002 c!755810) b!4441203))

(assert (= (and bm!309002 (not c!755810)) b!4441202))

(assert (= (and d!1348051 res!1838925) b!4441201))

(assert (= (and d!1348051 (not res!1838923)) b!4441205))

(assert (= (and b!4441205 res!1838924) b!4441207))

(declare-fun m!5129831 () Bool)

(assert (=> b!4441206 m!5129831))

(declare-fun m!5129833 () Bool)

(assert (=> b!4441206 m!5129833))

(assert (=> b!4441206 m!5129833))

(declare-fun m!5129835 () Bool)

(assert (=> b!4441206 m!5129835))

(declare-fun m!5129837 () Bool)

(assert (=> b!4441206 m!5129837))

(assert (=> b!4441202 m!5129687))

(declare-fun m!5129839 () Bool)

(assert (=> b!4441202 m!5129839))

(declare-fun m!5129841 () Bool)

(assert (=> b!4441199 m!5129841))

(declare-fun m!5129843 () Bool)

(assert (=> b!4441199 m!5129843))

(assert (=> d!1348051 m!5129841))

(assert (=> b!4441207 m!5129687))

(assert (=> b!4441207 m!5129839))

(assert (=> b!4441207 m!5129839))

(declare-fun m!5129845 () Bool)

(assert (=> b!4441207 m!5129845))

(assert (=> b!4441201 m!5129687))

(assert (=> b!4441201 m!5129839))

(assert (=> b!4441201 m!5129839))

(assert (=> b!4441201 m!5129845))

(assert (=> b!4441205 m!5129833))

(assert (=> b!4441205 m!5129833))

(assert (=> b!4441205 m!5129835))

(declare-fun m!5129847 () Bool)

(assert (=> bm!309002 m!5129847))

(declare-fun m!5129849 () Bool)

(assert (=> b!4441203 m!5129849))

(assert (=> b!4441078 d!1348051))

(declare-fun d!1348055 () Bool)

(assert (=> d!1348055 true))

(assert (=> d!1348055 true))

(declare-fun lambda!157296 () Int)

(declare-fun forall!9705 (List!49918 Int) Bool)

(assert (=> d!1348055 (= (allKeysSameHash!796 newBucket!194 hash!366 hashF!1220) (forall!9705 newBucket!194 lambda!157296))))

(declare-fun bs!764138 () Bool)

(assert (= bs!764138 d!1348055))

(declare-fun m!5129851 () Bool)

(assert (=> bs!764138 m!5129851))

(assert (=> b!4441066 d!1348055))

(declare-fun d!1348057 () Bool)

(declare-fun e!2765292 () Bool)

(assert (=> d!1348057 e!2765292))

(declare-fun res!1838931 () Bool)

(assert (=> d!1348057 (=> res!1838931 e!2765292)))

(declare-fun lt!1636838 () Bool)

(assert (=> d!1348057 (= res!1838931 (not lt!1636838))))

(declare-fun lt!1636839 () Bool)

(assert (=> d!1348057 (= lt!1636838 lt!1636839)))

(declare-fun lt!1636836 () Unit!83897)

(declare-fun e!2765293 () Unit!83897)

(assert (=> d!1348057 (= lt!1636836 e!2765293)))

(declare-fun c!755814 () Bool)

(assert (=> d!1348057 (= c!755814 lt!1636839)))

(declare-fun containsKey!1245 (List!49919 (_ BitVec 64)) Bool)

(assert (=> d!1348057 (= lt!1636839 (containsKey!1245 (toList!3659 lm!1616) hash!366))))

(assert (=> d!1348057 (= (contains!12366 lm!1616 hash!366) lt!1636838)))

(declare-fun b!4441221 () Bool)

(declare-fun lt!1636837 () Unit!83897)

(assert (=> b!4441221 (= e!2765293 lt!1636837)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!697 (List!49919 (_ BitVec 64)) Unit!83897)

(assert (=> b!4441221 (= lt!1636837 (lemmaContainsKeyImpliesGetValueByKeyDefined!697 (toList!3659 lm!1616) hash!366))))

(declare-fun isDefined!8094 (Option!10803) Bool)

(assert (=> b!4441221 (isDefined!8094 (getValueByKey!789 (toList!3659 lm!1616) hash!366))))

(declare-fun b!4441222 () Bool)

(declare-fun Unit!83907 () Unit!83897)

(assert (=> b!4441222 (= e!2765293 Unit!83907)))

(declare-fun b!4441223 () Bool)

(assert (=> b!4441223 (= e!2765292 (isDefined!8094 (getValueByKey!789 (toList!3659 lm!1616) hash!366)))))

(assert (= (and d!1348057 c!755814) b!4441221))

(assert (= (and d!1348057 (not c!755814)) b!4441222))

(assert (= (and d!1348057 (not res!1838931)) b!4441223))

(declare-fun m!5129865 () Bool)

(assert (=> d!1348057 m!5129865))

(declare-fun m!5129867 () Bool)

(assert (=> b!4441221 m!5129867))

(assert (=> b!4441221 m!5129803))

(assert (=> b!4441221 m!5129803))

(declare-fun m!5129869 () Bool)

(assert (=> b!4441221 m!5129869))

(assert (=> b!4441223 m!5129803))

(assert (=> b!4441223 m!5129803))

(assert (=> b!4441223 m!5129869))

(assert (=> b!4441077 d!1348057))

(declare-fun d!1348065 () Bool)

(declare-fun e!2765298 () Bool)

(assert (=> d!1348065 e!2765298))

(declare-fun res!1838932 () Bool)

(assert (=> d!1348065 (=> res!1838932 e!2765298)))

(declare-fun e!2765297 () Bool)

(assert (=> d!1348065 (= res!1838932 e!2765297)))

(declare-fun res!1838934 () Bool)

(assert (=> d!1348065 (=> (not res!1838934) (not e!2765297))))

(declare-fun lt!1636844 () Bool)

(assert (=> d!1348065 (= res!1838934 (not lt!1636844))))

(declare-fun lt!1636843 () Bool)

(assert (=> d!1348065 (= lt!1636844 lt!1636843)))

(declare-fun lt!1636840 () Unit!83897)

(declare-fun e!2765296 () Unit!83897)

(assert (=> d!1348065 (= lt!1636840 e!2765296)))

(declare-fun c!755817 () Bool)

(assert (=> d!1348065 (= c!755817 lt!1636843)))

(assert (=> d!1348065 (= lt!1636843 (containsKey!1244 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(assert (=> d!1348065 (= (contains!12365 (extractMap!897 (toList!3659 lm!1616)) key!3717) lt!1636844)))

(declare-fun b!4441224 () Bool)

(assert (=> b!4441224 false))

(declare-fun lt!1636842 () Unit!83897)

(declare-fun lt!1636841 () Unit!83897)

(assert (=> b!4441224 (= lt!1636842 lt!1636841)))

(assert (=> b!4441224 (containsKey!1244 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717)))

(assert (=> b!4441224 (= lt!1636841 (lemmaInGetKeysListThenContainsKey!288 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(declare-fun e!2765299 () Unit!83897)

(declare-fun Unit!83908 () Unit!83897)

(assert (=> b!4441224 (= e!2765299 Unit!83908)))

(declare-fun b!4441225 () Bool)

(declare-fun Unit!83909 () Unit!83897)

(assert (=> b!4441225 (= e!2765299 Unit!83909)))

(declare-fun b!4441226 () Bool)

(assert (=> b!4441226 (= e!2765297 (not (contains!12370 (keys!17058 (extractMap!897 (toList!3659 lm!1616))) key!3717)))))

(declare-fun b!4441227 () Bool)

(declare-fun e!2765295 () List!49922)

(assert (=> b!4441227 (= e!2765295 (keys!17058 (extractMap!897 (toList!3659 lm!1616))))))

(declare-fun b!4441228 () Bool)

(assert (=> b!4441228 (= e!2765295 (getKeysList!290 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))

(declare-fun b!4441229 () Bool)

(assert (=> b!4441229 (= e!2765296 e!2765299)))

(declare-fun c!755815 () Bool)

(declare-fun call!309008 () Bool)

(assert (=> b!4441229 (= c!755815 call!309008)))

(declare-fun b!4441230 () Bool)

(declare-fun e!2765294 () Bool)

(assert (=> b!4441230 (= e!2765298 e!2765294)))

(declare-fun res!1838933 () Bool)

(assert (=> b!4441230 (=> (not res!1838933) (not e!2765294))))

(assert (=> b!4441230 (= res!1838933 (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717)))))

(declare-fun bm!309003 () Bool)

(assert (=> bm!309003 (= call!309008 (contains!12370 e!2765295 key!3717))))

(declare-fun c!755816 () Bool)

(assert (=> bm!309003 (= c!755816 c!755817)))

(declare-fun b!4441231 () Bool)

(declare-fun lt!1636847 () Unit!83897)

(assert (=> b!4441231 (= e!2765296 lt!1636847)))

(declare-fun lt!1636845 () Unit!83897)

(assert (=> b!4441231 (= lt!1636845 (lemmaContainsKeyImpliesGetValueByKeyDefined!696 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(assert (=> b!4441231 (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(declare-fun lt!1636846 () Unit!83897)

(assert (=> b!4441231 (= lt!1636846 lt!1636845)))

(assert (=> b!4441231 (= lt!1636847 (lemmaInListThenGetKeysListContains!287 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(assert (=> b!4441231 call!309008))

(declare-fun b!4441232 () Bool)

(assert (=> b!4441232 (= e!2765294 (contains!12370 (keys!17058 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(assert (= (and d!1348065 c!755817) b!4441231))

(assert (= (and d!1348065 (not c!755817)) b!4441229))

(assert (= (and b!4441229 c!755815) b!4441224))

(assert (= (and b!4441229 (not c!755815)) b!4441225))

(assert (= (or b!4441231 b!4441229) bm!309003))

(assert (= (and bm!309003 c!755816) b!4441228))

(assert (= (and bm!309003 (not c!755816)) b!4441227))

(assert (= (and d!1348065 res!1838934) b!4441226))

(assert (= (and d!1348065 (not res!1838932)) b!4441230))

(assert (= (and b!4441230 res!1838933) b!4441232))

(declare-fun m!5129873 () Bool)

(assert (=> b!4441231 m!5129873))

(declare-fun m!5129875 () Bool)

(assert (=> b!4441231 m!5129875))

(assert (=> b!4441231 m!5129875))

(declare-fun m!5129877 () Bool)

(assert (=> b!4441231 m!5129877))

(declare-fun m!5129879 () Bool)

(assert (=> b!4441231 m!5129879))

(assert (=> b!4441227 m!5129699))

(declare-fun m!5129881 () Bool)

(assert (=> b!4441227 m!5129881))

(declare-fun m!5129883 () Bool)

(assert (=> b!4441224 m!5129883))

(declare-fun m!5129885 () Bool)

(assert (=> b!4441224 m!5129885))

(assert (=> d!1348065 m!5129883))

(assert (=> b!4441232 m!5129699))

(assert (=> b!4441232 m!5129881))

(assert (=> b!4441232 m!5129881))

(declare-fun m!5129887 () Bool)

(assert (=> b!4441232 m!5129887))

(assert (=> b!4441226 m!5129699))

(assert (=> b!4441226 m!5129881))

(assert (=> b!4441226 m!5129881))

(assert (=> b!4441226 m!5129887))

(assert (=> b!4441230 m!5129875))

(assert (=> b!4441230 m!5129875))

(assert (=> b!4441230 m!5129877))

(declare-fun m!5129889 () Bool)

(assert (=> bm!309003 m!5129889))

(declare-fun m!5129891 () Bool)

(assert (=> b!4441228 m!5129891))

(assert (=> b!4441071 d!1348065))

(declare-fun bs!764143 () Bool)

(declare-fun d!1348069 () Bool)

(assert (= bs!764143 (and d!1348069 start!434534)))

(declare-fun lambda!157298 () Int)

(assert (=> bs!764143 (= lambda!157298 lambda!157273)))

(declare-fun bs!764144 () Bool)

(assert (= bs!764144 (and d!1348069 d!1348017)))

(assert (=> bs!764144 (= lambda!157298 lambda!157287)))

(declare-fun bs!764145 () Bool)

(assert (= bs!764145 (and d!1348069 d!1348047)))

(assert (=> bs!764145 (= lambda!157298 lambda!157293)))

(declare-fun lt!1636848 () ListMap!2903)

(assert (=> d!1348069 (invariantList!843 (toList!3660 lt!1636848))))

(declare-fun e!2765300 () ListMap!2903)

(assert (=> d!1348069 (= lt!1636848 e!2765300)))

(declare-fun c!755818 () Bool)

(assert (=> d!1348069 (= c!755818 (is-Cons!49795 (toList!3659 lm!1616)))))

(assert (=> d!1348069 (forall!9703 (toList!3659 lm!1616) lambda!157298)))

(assert (=> d!1348069 (= (extractMap!897 (toList!3659 lm!1616)) lt!1636848)))

(declare-fun b!4441233 () Bool)

(assert (=> b!4441233 (= e!2765300 (addToMapMapFromBucket!446 (_2!28156 (h!55522 (toList!3659 lm!1616))) (extractMap!897 (t!356861 (toList!3659 lm!1616)))))))

(declare-fun b!4441234 () Bool)

(assert (=> b!4441234 (= e!2765300 (ListMap!2904 Nil!49794))))

(assert (= (and d!1348069 c!755818) b!4441233))

(assert (= (and d!1348069 (not c!755818)) b!4441234))

(declare-fun m!5129893 () Bool)

(assert (=> d!1348069 m!5129893))

(declare-fun m!5129895 () Bool)

(assert (=> d!1348069 m!5129895))

(declare-fun m!5129897 () Bool)

(assert (=> b!4441233 m!5129897))

(assert (=> b!4441233 m!5129897))

(declare-fun m!5129899 () Bool)

(assert (=> b!4441233 m!5129899))

(assert (=> b!4441071 d!1348069))

(declare-fun bs!764146 () Bool)

(declare-fun d!1348071 () Bool)

(assert (= bs!764146 (and d!1348071 start!434534)))

(declare-fun lambda!157301 () Int)

(assert (=> bs!764146 (not (= lambda!157301 lambda!157273))))

(declare-fun bs!764147 () Bool)

(assert (= bs!764147 (and d!1348071 d!1348017)))

(assert (=> bs!764147 (not (= lambda!157301 lambda!157287))))

(declare-fun bs!764148 () Bool)

(assert (= bs!764148 (and d!1348071 d!1348047)))

(assert (=> bs!764148 (not (= lambda!157301 lambda!157293))))

(declare-fun bs!764149 () Bool)

(assert (= bs!764149 (and d!1348071 d!1348069)))

(assert (=> bs!764149 (not (= lambda!157301 lambda!157298))))

(assert (=> d!1348071 true))

(assert (=> d!1348071 (= (allKeysSameHashInMap!942 lt!1636746 hashF!1220) (forall!9703 (toList!3659 lt!1636746) lambda!157301))))

(declare-fun bs!764150 () Bool)

(assert (= bs!764150 d!1348071))

(declare-fun m!5129901 () Bool)

(assert (=> bs!764150 m!5129901))

(assert (=> b!4441080 d!1348071))

(declare-fun bs!764151 () Bool)

(declare-fun d!1348073 () Bool)

(assert (= bs!764151 (and d!1348073 d!1348069)))

(declare-fun lambda!157302 () Int)

(assert (=> bs!764151 (not (= lambda!157302 lambda!157298))))

(declare-fun bs!764152 () Bool)

(assert (= bs!764152 (and d!1348073 start!434534)))

(assert (=> bs!764152 (not (= lambda!157302 lambda!157273))))

(declare-fun bs!764153 () Bool)

(assert (= bs!764153 (and d!1348073 d!1348071)))

(assert (=> bs!764153 (= lambda!157302 lambda!157301)))

(declare-fun bs!764154 () Bool)

(assert (= bs!764154 (and d!1348073 d!1348017)))

(assert (=> bs!764154 (not (= lambda!157302 lambda!157287))))

(declare-fun bs!764155 () Bool)

(assert (= bs!764155 (and d!1348073 d!1348047)))

(assert (=> bs!764155 (not (= lambda!157302 lambda!157293))))

(assert (=> d!1348073 true))

(assert (=> d!1348073 (= (allKeysSameHashInMap!942 lm!1616 hashF!1220) (forall!9703 (toList!3659 lm!1616) lambda!157302))))

(declare-fun bs!764156 () Bool)

(assert (= bs!764156 d!1348073))

(declare-fun m!5129907 () Bool)

(assert (=> bs!764156 m!5129907))

(assert (=> b!4441069 d!1348073))

(declare-fun b!4441247 () Bool)

(declare-fun e!2765309 () Bool)

(declare-fun tp!1334189 () Bool)

(declare-fun tp!1334190 () Bool)

(assert (=> b!4441247 (= e!2765309 (and tp!1334189 tp!1334190))))

(assert (=> b!4441074 (= tp!1334177 e!2765309)))

(assert (= (and b!4441074 (is-Cons!49795 (toList!3659 lm!1616))) b!4441247))

(declare-fun tp!1334193 () Bool)

(declare-fun e!2765312 () Bool)

(declare-fun b!4441252 () Bool)

(assert (=> b!4441252 (= e!2765312 (and tp_is_empty!26591 tp_is_empty!26589 tp!1334193))))

(assert (=> b!4441073 (= tp!1334178 e!2765312)))

(assert (= (and b!4441073 (is-Cons!49794 (t!356860 newBucket!194))) b!4441252))

(declare-fun b_lambda!145039 () Bool)

(assert (= b_lambda!145025 (or start!434534 b_lambda!145039)))

(declare-fun bs!764157 () Bool)

(declare-fun d!1348077 () Bool)

(assert (= bs!764157 (and d!1348077 start!434534)))

(assert (=> bs!764157 (= (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 lm!1616))) (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lm!1616)))))))

(declare-fun m!5129909 () Bool)

(assert (=> bs!764157 m!5129909))

(assert (=> b!4441136 d!1348077))

(declare-fun b_lambda!145041 () Bool)

(assert (= b_lambda!145029 (or start!434534 b_lambda!145041)))

(declare-fun bs!764158 () Bool)

(declare-fun d!1348079 () Bool)

(assert (= bs!764158 (and d!1348079 start!434534)))

(assert (=> bs!764158 (= (dynLambda!20910 lambda!157273 (tuple2!49725 hash!366 newBucket!194)) (noDuplicateKeys!836 (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun m!5129911 () Bool)

(assert (=> bs!764158 m!5129911))

(assert (=> b!4441161 d!1348079))

(declare-fun b_lambda!145043 () Bool)

(assert (= b_lambda!145033 (or start!434534 b_lambda!145043)))

(declare-fun bs!764159 () Bool)

(declare-fun d!1348081 () Bool)

(assert (= bs!764159 (and d!1348081 start!434534)))

(assert (=> bs!764159 (= (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 lt!1636746))) (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lt!1636746)))))))

(declare-fun m!5129913 () Bool)

(assert (=> bs!764159 m!5129913))

(assert (=> b!4441164 d!1348081))

(declare-fun b_lambda!145045 () Bool)

(assert (= b_lambda!145027 (or start!434534 b_lambda!145045)))

(declare-fun bs!764160 () Bool)

(declare-fun d!1348083 () Bool)

(assert (= bs!764160 (and d!1348083 start!434534)))

(assert (=> bs!764160 (= (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 lt!1636749))) (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lt!1636749)))))))

(declare-fun m!5129915 () Bool)

(assert (=> bs!764160 m!5129915))

(assert (=> b!4441144 d!1348083))

(push 1)

(assert (not b!4441145))

(assert (not b!4441224))

(assert (not b!4441201))

(assert (not b!4441152))

(assert (not b!4441232))

(assert (not d!1348051))

(assert (not b!4441153))

(assert (not b_lambda!145039))

(assert (not b!4441207))

(assert (not b!4441228))

(assert (not b!4441142))

(assert (not d!1348057))

(assert (not d!1348071))

(assert (not d!1348029))

(assert (not d!1348065))

(assert (not b!4441165))

(assert (not b!4441172))

(assert (not b!4441231))

(assert (not d!1348021))

(assert (not b!4441205))

(assert (not b!4441206))

(assert (not b!4441233))

(assert (not b!4441202))

(assert (not b!4441221))

(assert (not b!4441230))

(assert (not d!1348055))

(assert (not bs!764159))

(assert (not d!1348039))

(assert (not b_lambda!145041))

(assert (not b!4441199))

(assert (not bs!764160))

(assert (not b_lambda!145043))

(assert (not d!1348047))

(assert (not d!1348069))

(assert (not bm!309003))

(assert (not bs!764158))

(assert (not b!4441226))

(assert (not b!4441143))

(assert (not b_lambda!145045))

(assert (not d!1348045))

(assert tp_is_empty!26591)

(assert (not d!1348017))

(assert (not b!4441247))

(assert (not b!4441203))

(assert (not bs!764157))

(assert (not bm!309002))

(assert (not b!4441227))

(assert (not b!4441223))

(assert tp_is_empty!26589)

(assert (not b!4441252))

(assert (not b!4441137))

(assert (not d!1348073))

(assert (not d!1348037))

(assert (not d!1348033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1348113 () Bool)

(declare-fun res!1838958 () Bool)

(declare-fun e!2765355 () Bool)

(assert (=> d!1348113 (=> res!1838958 e!2765355)))

(assert (=> d!1348113 (= res!1838958 (is-Nil!49795 (toList!3659 lt!1636746)))))

(assert (=> d!1348113 (= (forall!9703 (toList!3659 lt!1636746) lambda!157301) e!2765355)))

(declare-fun b!4441322 () Bool)

(declare-fun e!2765356 () Bool)

(assert (=> b!4441322 (= e!2765355 e!2765356)))

(declare-fun res!1838959 () Bool)

(assert (=> b!4441322 (=> (not res!1838959) (not e!2765356))))

(assert (=> b!4441322 (= res!1838959 (dynLambda!20910 lambda!157301 (h!55522 (toList!3659 lt!1636746))))))

(declare-fun b!4441323 () Bool)

(assert (=> b!4441323 (= e!2765356 (forall!9703 (t!356861 (toList!3659 lt!1636746)) lambda!157301))))

(assert (= (and d!1348113 (not res!1838958)) b!4441322))

(assert (= (and b!4441322 res!1838959) b!4441323))

(declare-fun b_lambda!145057 () Bool)

(assert (=> (not b_lambda!145057) (not b!4441322)))

(declare-fun m!5129999 () Bool)

(assert (=> b!4441322 m!5129999))

(declare-fun m!5130001 () Bool)

(assert (=> b!4441323 m!5130001))

(assert (=> d!1348071 d!1348113))

(declare-fun d!1348115 () Bool)

(declare-fun isEmpty!28388 (Option!10803) Bool)

(assert (=> d!1348115 (= (isDefined!8094 (getValueByKey!789 (toList!3659 lm!1616) hash!366)) (not (isEmpty!28388 (getValueByKey!789 (toList!3659 lm!1616) hash!366))))))

(declare-fun bs!764181 () Bool)

(assert (= bs!764181 d!1348115))

(assert (=> bs!764181 m!5129803))

(declare-fun m!5130003 () Bool)

(assert (=> bs!764181 m!5130003))

(assert (=> b!4441223 d!1348115))

(declare-fun b!4441334 () Bool)

(declare-fun e!2765362 () Option!10803)

(assert (=> b!4441334 (= e!2765362 (getValueByKey!789 (t!356861 (toList!3659 lm!1616)) hash!366))))

(declare-fun d!1348117 () Bool)

(declare-fun c!755842 () Bool)

(assert (=> d!1348117 (= c!755842 (and (is-Cons!49795 (toList!3659 lm!1616)) (= (_1!28156 (h!55522 (toList!3659 lm!1616))) hash!366)))))

(declare-fun e!2765361 () Option!10803)

(assert (=> d!1348117 (= (getValueByKey!789 (toList!3659 lm!1616) hash!366) e!2765361)))

(declare-fun b!4441335 () Bool)

(assert (=> b!4441335 (= e!2765362 None!10802)))

(declare-fun b!4441332 () Bool)

(assert (=> b!4441332 (= e!2765361 (Some!10802 (_2!28156 (h!55522 (toList!3659 lm!1616)))))))

(declare-fun b!4441333 () Bool)

(assert (=> b!4441333 (= e!2765361 e!2765362)))

(declare-fun c!755843 () Bool)

(assert (=> b!4441333 (= c!755843 (and (is-Cons!49795 (toList!3659 lm!1616)) (not (= (_1!28156 (h!55522 (toList!3659 lm!1616))) hash!366))))))

(assert (= (and d!1348117 c!755842) b!4441332))

(assert (= (and d!1348117 (not c!755842)) b!4441333))

(assert (= (and b!4441333 c!755843) b!4441334))

(assert (= (and b!4441333 (not c!755843)) b!4441335))

(declare-fun m!5130005 () Bool)

(assert (=> b!4441334 m!5130005))

(assert (=> b!4441223 d!1348117))

(declare-fun d!1348119 () Bool)

(assert (=> d!1348119 (isDefined!8094 (getValueByKey!789 (toList!3659 lm!1616) hash!366))))

(declare-fun lt!1636902 () Unit!83897)

(declare-fun choose!28207 (List!49919 (_ BitVec 64)) Unit!83897)

(assert (=> d!1348119 (= lt!1636902 (choose!28207 (toList!3659 lm!1616) hash!366))))

(declare-fun e!2765365 () Bool)

(assert (=> d!1348119 e!2765365))

(declare-fun res!1838962 () Bool)

(assert (=> d!1348119 (=> (not res!1838962) (not e!2765365))))

(assert (=> d!1348119 (= res!1838962 (isStrictlySorted!270 (toList!3659 lm!1616)))))

(assert (=> d!1348119 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!697 (toList!3659 lm!1616) hash!366) lt!1636902)))

(declare-fun b!4441338 () Bool)

(assert (=> b!4441338 (= e!2765365 (containsKey!1245 (toList!3659 lm!1616) hash!366))))

(assert (= (and d!1348119 res!1838962) b!4441338))

(assert (=> d!1348119 m!5129803))

(assert (=> d!1348119 m!5129803))

(assert (=> d!1348119 m!5129869))

(declare-fun m!5130007 () Bool)

(assert (=> d!1348119 m!5130007))

(assert (=> d!1348119 m!5129797))

(assert (=> b!4441338 m!5129865))

(assert (=> b!4441221 d!1348119))

(assert (=> b!4441221 d!1348115))

(assert (=> b!4441221 d!1348117))

(declare-fun d!1348121 () Bool)

(declare-fun res!1838963 () Bool)

(declare-fun e!2765366 () Bool)

(assert (=> d!1348121 (=> res!1838963 e!2765366)))

(assert (=> d!1348121 (= res!1838963 (not (is-Cons!49794 (_2!28156 (h!55522 (toList!3659 lm!1616))))))))

(assert (=> d!1348121 (= (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lm!1616)))) e!2765366)))

(declare-fun b!4441339 () Bool)

(declare-fun e!2765367 () Bool)

(assert (=> b!4441339 (= e!2765366 e!2765367)))

(declare-fun res!1838964 () Bool)

(assert (=> b!4441339 (=> (not res!1838964) (not e!2765367))))

(assert (=> b!4441339 (= res!1838964 (not (containsKey!1243 (t!356860 (_2!28156 (h!55522 (toList!3659 lm!1616)))) (_1!28155 (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616))))))))))

(declare-fun b!4441340 () Bool)

(assert (=> b!4441340 (= e!2765367 (noDuplicateKeys!836 (t!356860 (_2!28156 (h!55522 (toList!3659 lm!1616))))))))

(assert (= (and d!1348121 (not res!1838963)) b!4441339))

(assert (= (and b!4441339 res!1838964) b!4441340))

(declare-fun m!5130009 () Bool)

(assert (=> b!4441339 m!5130009))

(declare-fun m!5130011 () Bool)

(assert (=> b!4441340 m!5130011))

(assert (=> bs!764157 d!1348121))

(declare-fun d!1348123 () Bool)

(declare-fun res!1838969 () Bool)

(declare-fun e!2765372 () Bool)

(assert (=> d!1348123 (=> res!1838969 e!2765372)))

(assert (=> d!1348123 (= res!1838969 (or (is-Nil!49795 (toList!3659 lm!1616)) (is-Nil!49795 (t!356861 (toList!3659 lm!1616)))))))

(assert (=> d!1348123 (= (isStrictlySorted!270 (toList!3659 lm!1616)) e!2765372)))

(declare-fun b!4441345 () Bool)

(declare-fun e!2765373 () Bool)

(assert (=> b!4441345 (= e!2765372 e!2765373)))

(declare-fun res!1838970 () Bool)

(assert (=> b!4441345 (=> (not res!1838970) (not e!2765373))))

(assert (=> b!4441345 (= res!1838970 (bvslt (_1!28156 (h!55522 (toList!3659 lm!1616))) (_1!28156 (h!55522 (t!356861 (toList!3659 lm!1616))))))))

(declare-fun b!4441346 () Bool)

(assert (=> b!4441346 (= e!2765373 (isStrictlySorted!270 (t!356861 (toList!3659 lm!1616))))))

(assert (= (and d!1348123 (not res!1838969)) b!4441345))

(assert (= (and b!4441345 res!1838970) b!4441346))

(declare-fun m!5130013 () Bool)

(assert (=> b!4441346 m!5130013))

(assert (=> d!1348037 d!1348123))

(declare-fun d!1348125 () Bool)

(declare-fun res!1838971 () Bool)

(declare-fun e!2765374 () Bool)

(assert (=> d!1348125 (=> res!1838971 e!2765374)))

(assert (=> d!1348125 (= res!1838971 (not (is-Cons!49794 (t!356860 newBucket!194))))))

(assert (=> d!1348125 (= (noDuplicateKeys!836 (t!356860 newBucket!194)) e!2765374)))

(declare-fun b!4441347 () Bool)

(declare-fun e!2765375 () Bool)

(assert (=> b!4441347 (= e!2765374 e!2765375)))

(declare-fun res!1838972 () Bool)

(assert (=> b!4441347 (=> (not res!1838972) (not e!2765375))))

(assert (=> b!4441347 (= res!1838972 (not (containsKey!1243 (t!356860 (t!356860 newBucket!194)) (_1!28155 (h!55521 (t!356860 newBucket!194))))))))

(declare-fun b!4441348 () Bool)

(assert (=> b!4441348 (= e!2765375 (noDuplicateKeys!836 (t!356860 (t!356860 newBucket!194))))))

(assert (= (and d!1348125 (not res!1838971)) b!4441347))

(assert (= (and b!4441347 res!1838972) b!4441348))

(declare-fun m!5130015 () Bool)

(assert (=> b!4441347 m!5130015))

(declare-fun m!5130017 () Bool)

(assert (=> b!4441348 m!5130017))

(assert (=> b!4441143 d!1348125))

(declare-fun d!1348127 () Bool)

(declare-fun noDuplicatedKeys!191 (List!49918) Bool)

(assert (=> d!1348127 (= (invariantList!843 (toList!3660 lt!1636848)) (noDuplicatedKeys!191 (toList!3660 lt!1636848)))))

(declare-fun bs!764182 () Bool)

(assert (= bs!764182 d!1348127))

(declare-fun m!5130019 () Bool)

(assert (=> bs!764182 m!5130019))

(assert (=> d!1348069 d!1348127))

(declare-fun d!1348129 () Bool)

(declare-fun res!1838973 () Bool)

(declare-fun e!2765376 () Bool)

(assert (=> d!1348129 (=> res!1838973 e!2765376)))

(assert (=> d!1348129 (= res!1838973 (is-Nil!49795 (toList!3659 lm!1616)))))

(assert (=> d!1348129 (= (forall!9703 (toList!3659 lm!1616) lambda!157298) e!2765376)))

(declare-fun b!4441349 () Bool)

(declare-fun e!2765377 () Bool)

(assert (=> b!4441349 (= e!2765376 e!2765377)))

(declare-fun res!1838974 () Bool)

(assert (=> b!4441349 (=> (not res!1838974) (not e!2765377))))

(assert (=> b!4441349 (= res!1838974 (dynLambda!20910 lambda!157298 (h!55522 (toList!3659 lm!1616))))))

(declare-fun b!4441350 () Bool)

(assert (=> b!4441350 (= e!2765377 (forall!9703 (t!356861 (toList!3659 lm!1616)) lambda!157298))))

(assert (= (and d!1348129 (not res!1838973)) b!4441349))

(assert (= (and b!4441349 res!1838974) b!4441350))

(declare-fun b_lambda!145059 () Bool)

(assert (=> (not b_lambda!145059) (not b!4441349)))

(declare-fun m!5130021 () Bool)

(assert (=> b!4441349 m!5130021))

(declare-fun m!5130023 () Bool)

(assert (=> b!4441350 m!5130023))

(assert (=> d!1348069 d!1348129))

(declare-fun d!1348131 () Bool)

(declare-fun res!1838975 () Bool)

(declare-fun e!2765378 () Bool)

(assert (=> d!1348131 (=> res!1838975 e!2765378)))

(assert (=> d!1348131 (= res!1838975 (not (is-Cons!49794 (_2!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(assert (=> d!1348131 (= (noDuplicateKeys!836 (_2!28156 (tuple2!49725 hash!366 newBucket!194))) e!2765378)))

(declare-fun b!4441351 () Bool)

(declare-fun e!2765379 () Bool)

(assert (=> b!4441351 (= e!2765378 e!2765379)))

(declare-fun res!1838976 () Bool)

(assert (=> b!4441351 (=> (not res!1838976) (not e!2765379))))

(assert (=> b!4441351 (= res!1838976 (not (containsKey!1243 (t!356860 (_2!28156 (tuple2!49725 hash!366 newBucket!194))) (_1!28155 (h!55521 (_2!28156 (tuple2!49725 hash!366 newBucket!194)))))))))

(declare-fun b!4441352 () Bool)

(assert (=> b!4441352 (= e!2765379 (noDuplicateKeys!836 (t!356860 (_2!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(assert (= (and d!1348131 (not res!1838975)) b!4441351))

(assert (= (and b!4441351 res!1838976) b!4441352))

(declare-fun m!5130025 () Bool)

(assert (=> b!4441351 m!5130025))

(declare-fun m!5130027 () Bool)

(assert (=> b!4441352 m!5130027))

(assert (=> bs!764158 d!1348131))

(declare-fun d!1348133 () Bool)

(declare-fun e!2765380 () Bool)

(assert (=> d!1348133 e!2765380))

(declare-fun res!1838977 () Bool)

(assert (=> d!1348133 (=> res!1838977 e!2765380)))

(declare-fun lt!1636905 () Bool)

(assert (=> d!1348133 (= res!1838977 (not lt!1636905))))

(declare-fun lt!1636906 () Bool)

(assert (=> d!1348133 (= lt!1636905 lt!1636906)))

(declare-fun lt!1636903 () Unit!83897)

(declare-fun e!2765381 () Unit!83897)

(assert (=> d!1348133 (= lt!1636903 e!2765381)))

(declare-fun c!755844 () Bool)

(assert (=> d!1348133 (= c!755844 lt!1636906)))

(assert (=> d!1348133 (= lt!1636906 (containsKey!1245 (toList!3659 lt!1636781) (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(assert (=> d!1348133 (= (contains!12366 lt!1636781 (_1!28156 (tuple2!49725 hash!366 newBucket!194))) lt!1636905)))

(declare-fun b!4441353 () Bool)

(declare-fun lt!1636904 () Unit!83897)

(assert (=> b!4441353 (= e!2765381 lt!1636904)))

(assert (=> b!4441353 (= lt!1636904 (lemmaContainsKeyImpliesGetValueByKeyDefined!697 (toList!3659 lt!1636781) (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(assert (=> b!4441353 (isDefined!8094 (getValueByKey!789 (toList!3659 lt!1636781) (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun b!4441354 () Bool)

(declare-fun Unit!83915 () Unit!83897)

(assert (=> b!4441354 (= e!2765381 Unit!83915)))

(declare-fun b!4441355 () Bool)

(assert (=> b!4441355 (= e!2765380 (isDefined!8094 (getValueByKey!789 (toList!3659 lt!1636781) (_1!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(assert (= (and d!1348133 c!755844) b!4441353))

(assert (= (and d!1348133 (not c!755844)) b!4441354))

(assert (= (and d!1348133 (not res!1838977)) b!4441355))

(declare-fun m!5130029 () Bool)

(assert (=> d!1348133 m!5130029))

(declare-fun m!5130031 () Bool)

(assert (=> b!4441353 m!5130031))

(assert (=> b!4441353 m!5129783))

(assert (=> b!4441353 m!5129783))

(declare-fun m!5130033 () Bool)

(assert (=> b!4441353 m!5130033))

(assert (=> b!4441355 m!5129783))

(assert (=> b!4441355 m!5129783))

(assert (=> b!4441355 m!5130033))

(assert (=> d!1348029 d!1348133))

(declare-fun b!4441358 () Bool)

(declare-fun e!2765383 () Option!10803)

(assert (=> b!4441358 (= e!2765383 (getValueByKey!789 (t!356861 lt!1636782) (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun c!755845 () Bool)

(declare-fun d!1348135 () Bool)

(assert (=> d!1348135 (= c!755845 (and (is-Cons!49795 lt!1636782) (= (_1!28156 (h!55522 lt!1636782)) (_1!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(declare-fun e!2765382 () Option!10803)

(assert (=> d!1348135 (= (getValueByKey!789 lt!1636782 (_1!28156 (tuple2!49725 hash!366 newBucket!194))) e!2765382)))

(declare-fun b!4441359 () Bool)

(assert (=> b!4441359 (= e!2765383 None!10802)))

(declare-fun b!4441356 () Bool)

(assert (=> b!4441356 (= e!2765382 (Some!10802 (_2!28156 (h!55522 lt!1636782))))))

(declare-fun b!4441357 () Bool)

(assert (=> b!4441357 (= e!2765382 e!2765383)))

(declare-fun c!755846 () Bool)

(assert (=> b!4441357 (= c!755846 (and (is-Cons!49795 lt!1636782) (not (= (_1!28156 (h!55522 lt!1636782)) (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))))

(assert (= (and d!1348135 c!755845) b!4441356))

(assert (= (and d!1348135 (not c!755845)) b!4441357))

(assert (= (and b!4441357 c!755846) b!4441358))

(assert (= (and b!4441357 (not c!755846)) b!4441359))

(declare-fun m!5130035 () Bool)

(assert (=> b!4441358 m!5130035))

(assert (=> d!1348029 d!1348135))

(declare-fun d!1348137 () Bool)

(assert (=> d!1348137 (= (getValueByKey!789 lt!1636782 (_1!28156 (tuple2!49725 hash!366 newBucket!194))) (Some!10802 (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun lt!1636909 () Unit!83897)

(declare-fun choose!28208 (List!49919 (_ BitVec 64) List!49918) Unit!83897)

(assert (=> d!1348137 (= lt!1636909 (choose!28208 lt!1636782 (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun e!2765386 () Bool)

(assert (=> d!1348137 e!2765386))

(declare-fun res!1838982 () Bool)

(assert (=> d!1348137 (=> (not res!1838982) (not e!2765386))))

(assert (=> d!1348137 (= res!1838982 (isStrictlySorted!270 lt!1636782))))

(assert (=> d!1348137 (= (lemmaContainsTupThenGetReturnValue!514 lt!1636782 (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194))) lt!1636909)))

(declare-fun b!4441364 () Bool)

(declare-fun res!1838983 () Bool)

(assert (=> b!4441364 (=> (not res!1838983) (not e!2765386))))

(assert (=> b!4441364 (= res!1838983 (containsKey!1245 lt!1636782 (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun b!4441365 () Bool)

(assert (=> b!4441365 (= e!2765386 (contains!12369 lt!1636782 (tuple2!49725 (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(assert (= (and d!1348137 res!1838982) b!4441364))

(assert (= (and b!4441364 res!1838983) b!4441365))

(assert (=> d!1348137 m!5129777))

(declare-fun m!5130037 () Bool)

(assert (=> d!1348137 m!5130037))

(declare-fun m!5130039 () Bool)

(assert (=> d!1348137 m!5130039))

(declare-fun m!5130041 () Bool)

(assert (=> b!4441364 m!5130041))

(declare-fun m!5130043 () Bool)

(assert (=> b!4441365 m!5130043))

(assert (=> d!1348029 d!1348137))

(declare-fun e!2765401 () List!49919)

(declare-fun c!755855 () Bool)

(declare-fun b!4441386 () Bool)

(declare-fun c!755857 () Bool)

(assert (=> b!4441386 (= e!2765401 (ite c!755855 (t!356861 (toList!3659 lm!1616)) (ite c!755857 (Cons!49795 (h!55522 (toList!3659 lm!1616)) (t!356861 (toList!3659 lm!1616))) Nil!49795)))))

(declare-fun b!4441387 () Bool)

(declare-fun e!2765399 () List!49919)

(declare-fun call!309019 () List!49919)

(assert (=> b!4441387 (= e!2765399 call!309019)))

(declare-fun e!2765398 () Bool)

(declare-fun b!4441388 () Bool)

(declare-fun lt!1636912 () List!49919)

(assert (=> b!4441388 (= e!2765398 (contains!12369 lt!1636912 (tuple2!49725 (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(declare-fun b!4441389 () Bool)

(declare-fun e!2765400 () List!49919)

(declare-fun e!2765397 () List!49919)

(assert (=> b!4441389 (= e!2765400 e!2765397)))

(assert (=> b!4441389 (= c!755855 (and (is-Cons!49795 (toList!3659 lm!1616)) (= (_1!28156 (h!55522 (toList!3659 lm!1616))) (_1!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(declare-fun bm!309014 () Bool)

(declare-fun call!309020 () List!49919)

(assert (=> bm!309014 (= call!309019 call!309020)))

(declare-fun b!4441390 () Bool)

(declare-fun call!309021 () List!49919)

(assert (=> b!4441390 (= e!2765400 call!309021)))

(declare-fun b!4441391 () Bool)

(assert (=> b!4441391 (= e!2765401 (insertStrictlySorted!298 (t!356861 (toList!3659 lm!1616)) (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun b!4441392 () Bool)

(declare-fun res!1838989 () Bool)

(assert (=> b!4441392 (=> (not res!1838989) (not e!2765398))))

(assert (=> b!4441392 (= res!1838989 (containsKey!1245 lt!1636912 (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun d!1348139 () Bool)

(assert (=> d!1348139 e!2765398))

(declare-fun res!1838988 () Bool)

(assert (=> d!1348139 (=> (not res!1838988) (not e!2765398))))

(assert (=> d!1348139 (= res!1838988 (isStrictlySorted!270 lt!1636912))))

(assert (=> d!1348139 (= lt!1636912 e!2765400)))

(declare-fun c!755858 () Bool)

(assert (=> d!1348139 (= c!755858 (and (is-Cons!49795 (toList!3659 lm!1616)) (bvslt (_1!28156 (h!55522 (toList!3659 lm!1616))) (_1!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(assert (=> d!1348139 (isStrictlySorted!270 (toList!3659 lm!1616))))

(assert (=> d!1348139 (= (insertStrictlySorted!298 (toList!3659 lm!1616) (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194))) lt!1636912)))

(declare-fun bm!309015 () Bool)

(declare-fun $colon$colon!814 (List!49919 tuple2!49724) List!49919)

(assert (=> bm!309015 (= call!309021 ($colon$colon!814 e!2765401 (ite c!755858 (h!55522 (toList!3659 lm!1616)) (tuple2!49725 (_1!28156 (tuple2!49725 hash!366 newBucket!194)) (_2!28156 (tuple2!49725 hash!366 newBucket!194))))))))

(declare-fun c!755856 () Bool)

(assert (=> bm!309015 (= c!755856 c!755858)))

(declare-fun b!4441393 () Bool)

(assert (=> b!4441393 (= e!2765399 call!309019)))

(declare-fun b!4441394 () Bool)

(assert (=> b!4441394 (= c!755857 (and (is-Cons!49795 (toList!3659 lm!1616)) (bvsgt (_1!28156 (h!55522 (toList!3659 lm!1616))) (_1!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(assert (=> b!4441394 (= e!2765397 e!2765399)))

(declare-fun bm!309016 () Bool)

(assert (=> bm!309016 (= call!309020 call!309021)))

(declare-fun b!4441395 () Bool)

(assert (=> b!4441395 (= e!2765397 call!309020)))

(assert (= (and d!1348139 c!755858) b!4441390))

(assert (= (and d!1348139 (not c!755858)) b!4441389))

(assert (= (and b!4441389 c!755855) b!4441395))

(assert (= (and b!4441389 (not c!755855)) b!4441394))

(assert (= (and b!4441394 c!755857) b!4441393))

(assert (= (and b!4441394 (not c!755857)) b!4441387))

(assert (= (or b!4441393 b!4441387) bm!309014))

(assert (= (or b!4441395 bm!309014) bm!309016))

(assert (= (or b!4441390 bm!309016) bm!309015))

(assert (= (and bm!309015 c!755856) b!4441391))

(assert (= (and bm!309015 (not c!755856)) b!4441386))

(assert (= (and d!1348139 res!1838988) b!4441392))

(assert (= (and b!4441392 res!1838989) b!4441388))

(declare-fun m!5130045 () Bool)

(assert (=> d!1348139 m!5130045))

(assert (=> d!1348139 m!5129797))

(declare-fun m!5130047 () Bool)

(assert (=> b!4441391 m!5130047))

(declare-fun m!5130049 () Bool)

(assert (=> b!4441392 m!5130049))

(declare-fun m!5130051 () Bool)

(assert (=> b!4441388 m!5130051))

(declare-fun m!5130053 () Bool)

(assert (=> bm!309015 m!5130053))

(assert (=> d!1348029 d!1348139))

(declare-fun d!1348141 () Bool)

(declare-fun res!1838994 () Bool)

(declare-fun e!2765406 () Bool)

(assert (=> d!1348141 (=> res!1838994 e!2765406)))

(assert (=> d!1348141 (= res!1838994 (and (is-Cons!49794 (t!356860 newBucket!194)) (= (_1!28155 (h!55521 (t!356860 newBucket!194))) (_1!28155 (h!55521 newBucket!194)))))))

(assert (=> d!1348141 (= (containsKey!1243 (t!356860 newBucket!194) (_1!28155 (h!55521 newBucket!194))) e!2765406)))

(declare-fun b!4441400 () Bool)

(declare-fun e!2765407 () Bool)

(assert (=> b!4441400 (= e!2765406 e!2765407)))

(declare-fun res!1838995 () Bool)

(assert (=> b!4441400 (=> (not res!1838995) (not e!2765407))))

(assert (=> b!4441400 (= res!1838995 (is-Cons!49794 (t!356860 newBucket!194)))))

(declare-fun b!4441401 () Bool)

(assert (=> b!4441401 (= e!2765407 (containsKey!1243 (t!356860 (t!356860 newBucket!194)) (_1!28155 (h!55521 newBucket!194))))))

(assert (= (and d!1348141 (not res!1838994)) b!4441400))

(assert (= (and b!4441400 res!1838995) b!4441401))

(declare-fun m!5130055 () Bool)

(assert (=> b!4441401 m!5130055))

(assert (=> b!4441142 d!1348141))

(declare-fun d!1348143 () Bool)

(declare-fun lt!1636915 () Bool)

(declare-fun content!8009 (List!49922) (Set K!11163))

(assert (=> d!1348143 (= lt!1636915 (set.member key!3717 (content!8009 e!2765295)))))

(declare-fun e!2765412 () Bool)

(assert (=> d!1348143 (= lt!1636915 e!2765412)))

(declare-fun res!1839000 () Bool)

(assert (=> d!1348143 (=> (not res!1839000) (not e!2765412))))

(assert (=> d!1348143 (= res!1839000 (is-Cons!49798 e!2765295))))

(assert (=> d!1348143 (= (contains!12370 e!2765295 key!3717) lt!1636915)))

(declare-fun b!4441406 () Bool)

(declare-fun e!2765413 () Bool)

(assert (=> b!4441406 (= e!2765412 e!2765413)))

(declare-fun res!1839001 () Bool)

(assert (=> b!4441406 (=> res!1839001 e!2765413)))

(assert (=> b!4441406 (= res!1839001 (= (h!55527 e!2765295) key!3717))))

(declare-fun b!4441407 () Bool)

(assert (=> b!4441407 (= e!2765413 (contains!12370 (t!356864 e!2765295) key!3717))))

(assert (= (and d!1348143 res!1839000) b!4441406))

(assert (= (and b!4441406 (not res!1839001)) b!4441407))

(declare-fun m!5130057 () Bool)

(assert (=> d!1348143 m!5130057))

(declare-fun m!5130059 () Bool)

(assert (=> d!1348143 m!5130059))

(declare-fun m!5130061 () Bool)

(assert (=> b!4441407 m!5130061))

(assert (=> bm!309003 d!1348143))

(declare-fun d!1348145 () Bool)

(declare-fun lt!1636918 () Bool)

(declare-fun content!8010 (List!49919) (Set tuple2!49724))

(assert (=> d!1348145 (= lt!1636918 (set.member (tuple2!49725 hash!366 newBucket!194) (content!8010 (toList!3659 lt!1636781))))))

(declare-fun e!2765418 () Bool)

(assert (=> d!1348145 (= lt!1636918 e!2765418)))

(declare-fun res!1839007 () Bool)

(assert (=> d!1348145 (=> (not res!1839007) (not e!2765418))))

(assert (=> d!1348145 (= res!1839007 (is-Cons!49795 (toList!3659 lt!1636781)))))

(assert (=> d!1348145 (= (contains!12369 (toList!3659 lt!1636781) (tuple2!49725 hash!366 newBucket!194)) lt!1636918)))

(declare-fun b!4441412 () Bool)

(declare-fun e!2765419 () Bool)

(assert (=> b!4441412 (= e!2765418 e!2765419)))

(declare-fun res!1839006 () Bool)

(assert (=> b!4441412 (=> res!1839006 e!2765419)))

(assert (=> b!4441412 (= res!1839006 (= (h!55522 (toList!3659 lt!1636781)) (tuple2!49725 hash!366 newBucket!194)))))

(declare-fun b!4441413 () Bool)

(assert (=> b!4441413 (= e!2765419 (contains!12369 (t!356861 (toList!3659 lt!1636781)) (tuple2!49725 hash!366 newBucket!194)))))

(assert (= (and d!1348145 res!1839007) b!4441412))

(assert (= (and b!4441412 (not res!1839006)) b!4441413))

(declare-fun m!5130063 () Bool)

(assert (=> d!1348145 m!5130063))

(declare-fun m!5130065 () Bool)

(assert (=> d!1348145 m!5130065))

(declare-fun m!5130067 () Bool)

(assert (=> b!4441413 m!5130067))

(assert (=> b!4441153 d!1348145))

(declare-fun d!1348147 () Bool)

(declare-fun res!1839012 () Bool)

(declare-fun e!2765424 () Bool)

(assert (=> d!1348147 (=> res!1839012 e!2765424)))

(assert (=> d!1348147 (= res!1839012 (and (is-Cons!49795 (toList!3659 lm!1616)) (= (_1!28156 (h!55522 (toList!3659 lm!1616))) hash!366)))))

(assert (=> d!1348147 (= (containsKey!1245 (toList!3659 lm!1616) hash!366) e!2765424)))

(declare-fun b!4441418 () Bool)

(declare-fun e!2765425 () Bool)

(assert (=> b!4441418 (= e!2765424 e!2765425)))

(declare-fun res!1839013 () Bool)

(assert (=> b!4441418 (=> (not res!1839013) (not e!2765425))))

(assert (=> b!4441418 (= res!1839013 (and (or (not (is-Cons!49795 (toList!3659 lm!1616))) (bvsle (_1!28156 (h!55522 (toList!3659 lm!1616))) hash!366)) (is-Cons!49795 (toList!3659 lm!1616)) (bvslt (_1!28156 (h!55522 (toList!3659 lm!1616))) hash!366)))))

(declare-fun b!4441419 () Bool)

(assert (=> b!4441419 (= e!2765425 (containsKey!1245 (t!356861 (toList!3659 lm!1616)) hash!366))))

(assert (= (and d!1348147 (not res!1839012)) b!4441418))

(assert (= (and b!4441418 res!1839013) b!4441419))

(declare-fun m!5130069 () Bool)

(assert (=> b!4441419 m!5130069))

(assert (=> d!1348057 d!1348147))

(declare-fun e!2765427 () Option!10803)

(declare-fun b!4441422 () Bool)

(assert (=> b!4441422 (= e!2765427 (getValueByKey!789 (t!356861 (toList!3659 lt!1636781)) (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))

(declare-fun c!755859 () Bool)

(declare-fun d!1348149 () Bool)

(assert (=> d!1348149 (= c!755859 (and (is-Cons!49795 (toList!3659 lt!1636781)) (= (_1!28156 (h!55522 (toList!3659 lt!1636781))) (_1!28156 (tuple2!49725 hash!366 newBucket!194)))))))

(declare-fun e!2765426 () Option!10803)

(assert (=> d!1348149 (= (getValueByKey!789 (toList!3659 lt!1636781) (_1!28156 (tuple2!49725 hash!366 newBucket!194))) e!2765426)))

(declare-fun b!4441423 () Bool)

(assert (=> b!4441423 (= e!2765427 None!10802)))

(declare-fun b!4441420 () Bool)

(assert (=> b!4441420 (= e!2765426 (Some!10802 (_2!28156 (h!55522 (toList!3659 lt!1636781)))))))

(declare-fun b!4441421 () Bool)

(assert (=> b!4441421 (= e!2765426 e!2765427)))

(declare-fun c!755860 () Bool)

(assert (=> b!4441421 (= c!755860 (and (is-Cons!49795 (toList!3659 lt!1636781)) (not (= (_1!28156 (h!55522 (toList!3659 lt!1636781))) (_1!28156 (tuple2!49725 hash!366 newBucket!194))))))))

(assert (= (and d!1348149 c!755859) b!4441420))

(assert (= (and d!1348149 (not c!755859)) b!4441421))

(assert (= (and b!4441421 c!755860) b!4441422))

(assert (= (and b!4441421 (not c!755860)) b!4441423))

(declare-fun m!5130071 () Bool)

(assert (=> b!4441422 m!5130071))

(assert (=> b!4441152 d!1348149))

(declare-fun d!1348151 () Bool)

(declare-fun res!1839014 () Bool)

(declare-fun e!2765428 () Bool)

(assert (=> d!1348151 (=> res!1839014 e!2765428)))

(assert (=> d!1348151 (= res!1839014 (is-Nil!49795 (t!356861 (toList!3659 lt!1636749))))))

(assert (=> d!1348151 (= (forall!9703 (t!356861 (toList!3659 lt!1636749)) lambda!157273) e!2765428)))

(declare-fun b!4441424 () Bool)

(declare-fun e!2765429 () Bool)

(assert (=> b!4441424 (= e!2765428 e!2765429)))

(declare-fun res!1839015 () Bool)

(assert (=> b!4441424 (=> (not res!1839015) (not e!2765429))))

(assert (=> b!4441424 (= res!1839015 (dynLambda!20910 lambda!157273 (h!55522 (t!356861 (toList!3659 lt!1636749)))))))

(declare-fun b!4441425 () Bool)

(assert (=> b!4441425 (= e!2765429 (forall!9703 (t!356861 (t!356861 (toList!3659 lt!1636749))) lambda!157273))))

(assert (= (and d!1348151 (not res!1839014)) b!4441424))

(assert (= (and b!4441424 res!1839015) b!4441425))

(declare-fun b_lambda!145061 () Bool)

(assert (=> (not b_lambda!145061) (not b!4441424)))

(declare-fun m!5130073 () Bool)

(assert (=> b!4441424 m!5130073))

(declare-fun m!5130075 () Bool)

(assert (=> b!4441425 m!5130075))

(assert (=> b!4441145 d!1348151))

(declare-fun d!1348153 () Bool)

(declare-fun lt!1636919 () Bool)

(assert (=> d!1348153 (= lt!1636919 (set.member key!3717 (content!8009 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))))

(declare-fun e!2765430 () Bool)

(assert (=> d!1348153 (= lt!1636919 e!2765430)))

(declare-fun res!1839016 () Bool)

(assert (=> d!1348153 (=> (not res!1839016) (not e!2765430))))

(assert (=> d!1348153 (= res!1839016 (is-Cons!49798 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))

(assert (=> d!1348153 (= (contains!12370 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717) lt!1636919)))

(declare-fun b!4441426 () Bool)

(declare-fun e!2765431 () Bool)

(assert (=> b!4441426 (= e!2765430 e!2765431)))

(declare-fun res!1839017 () Bool)

(assert (=> b!4441426 (=> res!1839017 e!2765431)))

(assert (=> b!4441426 (= res!1839017 (= (h!55527 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) key!3717))))

(declare-fun b!4441427 () Bool)

(assert (=> b!4441427 (= e!2765431 (contains!12370 (t!356864 (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) key!3717))))

(assert (= (and d!1348153 res!1839016) b!4441426))

(assert (= (and b!4441426 (not res!1839017)) b!4441427))

(assert (=> d!1348153 m!5129839))

(declare-fun m!5130077 () Bool)

(assert (=> d!1348153 m!5130077))

(declare-fun m!5130079 () Bool)

(assert (=> d!1348153 m!5130079))

(declare-fun m!5130081 () Bool)

(assert (=> b!4441427 m!5130081))

(assert (=> b!4441207 d!1348153))

(declare-fun b!4441435 () Bool)

(assert (=> b!4441435 true))

(declare-fun d!1348155 () Bool)

(declare-fun e!2765434 () Bool)

(assert (=> d!1348155 e!2765434))

(declare-fun res!1839026 () Bool)

(assert (=> d!1348155 (=> (not res!1839026) (not e!2765434))))

(declare-fun lt!1636922 () List!49922)

(declare-fun noDuplicate!675 (List!49922) Bool)

(assert (=> d!1348155 (= res!1839026 (noDuplicate!675 lt!1636922))))

(assert (=> d!1348155 (= lt!1636922 (getKeysList!290 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))

(assert (=> d!1348155 (= (keys!17058 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) lt!1636922)))

(declare-fun b!4441434 () Bool)

(declare-fun res!1839025 () Bool)

(assert (=> b!4441434 (=> (not res!1839025) (not e!2765434))))

(declare-fun length!206 (List!49922) Int)

(declare-fun length!207 (List!49918) Int)

(assert (=> b!4441434 (= res!1839025 (= (length!206 lt!1636922) (length!207 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))))

(declare-fun res!1839024 () Bool)

(assert (=> b!4441435 (=> (not res!1839024) (not e!2765434))))

(declare-fun lambda!157317 () Int)

(declare-fun forall!9707 (List!49922 Int) Bool)

(assert (=> b!4441435 (= res!1839024 (forall!9707 lt!1636922 lambda!157317))))

(declare-fun b!4441436 () Bool)

(declare-fun lambda!157318 () Int)

(declare-fun map!10891 (List!49918 Int) List!49922)

(assert (=> b!4441436 (= e!2765434 (= (content!8009 lt!1636922) (content!8009 (map!10891 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) lambda!157318))))))

(assert (= (and d!1348155 res!1839026) b!4441434))

(assert (= (and b!4441434 res!1839025) b!4441435))

(assert (= (and b!4441435 res!1839024) b!4441436))

(declare-fun m!5130083 () Bool)

(assert (=> d!1348155 m!5130083))

(assert (=> d!1348155 m!5129849))

(declare-fun m!5130085 () Bool)

(assert (=> b!4441434 m!5130085))

(declare-fun m!5130087 () Bool)

(assert (=> b!4441434 m!5130087))

(declare-fun m!5130089 () Bool)

(assert (=> b!4441435 m!5130089))

(declare-fun m!5130091 () Bool)

(assert (=> b!4441436 m!5130091))

(declare-fun m!5130093 () Bool)

(assert (=> b!4441436 m!5130093))

(assert (=> b!4441436 m!5130093))

(declare-fun m!5130095 () Bool)

(assert (=> b!4441436 m!5130095))

(assert (=> b!4441207 d!1348155))

(declare-fun d!1348157 () Bool)

(declare-fun res!1839031 () Bool)

(declare-fun e!2765439 () Bool)

(assert (=> d!1348157 (=> res!1839031 e!2765439)))

(assert (=> d!1348157 (= res!1839031 (is-Nil!49794 newBucket!194))))

(assert (=> d!1348157 (= (forall!9705 newBucket!194 lambda!157296) e!2765439)))

(declare-fun b!4441443 () Bool)

(declare-fun e!2765440 () Bool)

(assert (=> b!4441443 (= e!2765439 e!2765440)))

(declare-fun res!1839032 () Bool)

(assert (=> b!4441443 (=> (not res!1839032) (not e!2765440))))

(declare-fun dynLambda!20912 (Int tuple2!49722) Bool)

(assert (=> b!4441443 (= res!1839032 (dynLambda!20912 lambda!157296 (h!55521 newBucket!194)))))

(declare-fun b!4441444 () Bool)

(assert (=> b!4441444 (= e!2765440 (forall!9705 (t!356860 newBucket!194) lambda!157296))))

(assert (= (and d!1348157 (not res!1839031)) b!4441443))

(assert (= (and b!4441443 res!1839032) b!4441444))

(declare-fun b_lambda!145063 () Bool)

(assert (=> (not b_lambda!145063) (not b!4441443)))

(declare-fun m!5130097 () Bool)

(assert (=> b!4441443 m!5130097))

(declare-fun m!5130099 () Bool)

(assert (=> b!4441444 m!5130099))

(assert (=> d!1348055 d!1348157))

(declare-fun d!1348159 () Bool)

(declare-fun isEmpty!28389 (Option!10804) Bool)

(assert (=> d!1348159 (= (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717)) (not (isEmpty!28389 (getValueByKey!790 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))))

(declare-fun bs!764183 () Bool)

(assert (= bs!764183 d!1348159))

(assert (=> bs!764183 m!5129875))

(declare-fun m!5130101 () Bool)

(assert (=> bs!764183 m!5130101))

(assert (=> b!4441230 d!1348159))

(declare-fun b!4441455 () Bool)

(declare-fun e!2765446 () Option!10804)

(assert (=> b!4441455 (= e!2765446 (getValueByKey!790 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) key!3717))))

(declare-fun b!4441454 () Bool)

(declare-fun e!2765445 () Option!10804)

(assert (=> b!4441454 (= e!2765445 e!2765446)))

(declare-fun c!755866 () Bool)

(assert (=> b!4441454 (= c!755866 (and (is-Cons!49794 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (not (= (_1!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) key!3717))))))

(declare-fun d!1348161 () Bool)

(declare-fun c!755865 () Bool)

(assert (=> d!1348161 (= c!755865 (and (is-Cons!49794 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (= (_1!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) key!3717)))))

(assert (=> d!1348161 (= (getValueByKey!790 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717) e!2765445)))

(declare-fun b!4441453 () Bool)

(assert (=> b!4441453 (= e!2765445 (Some!10803 (_2!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))))

(declare-fun b!4441456 () Bool)

(assert (=> b!4441456 (= e!2765446 None!10803)))

(assert (= (and d!1348161 c!755865) b!4441453))

(assert (= (and d!1348161 (not c!755865)) b!4441454))

(assert (= (and b!4441454 c!755866) b!4441455))

(assert (= (and b!4441454 (not c!755866)) b!4441456))

(declare-fun m!5130103 () Bool)

(assert (=> b!4441455 m!5130103))

(assert (=> b!4441230 d!1348161))

(declare-fun d!1348163 () Bool)

(declare-fun res!1839033 () Bool)

(declare-fun e!2765447 () Bool)

(assert (=> d!1348163 (=> res!1839033 e!2765447)))

(assert (=> d!1348163 (= res!1839033 (is-Nil!49795 (toList!3659 lm!1616)))))

(assert (=> d!1348163 (= (forall!9703 (toList!3659 lm!1616) lambda!157302) e!2765447)))

(declare-fun b!4441457 () Bool)

(declare-fun e!2765448 () Bool)

(assert (=> b!4441457 (= e!2765447 e!2765448)))

(declare-fun res!1839034 () Bool)

(assert (=> b!4441457 (=> (not res!1839034) (not e!2765448))))

(assert (=> b!4441457 (= res!1839034 (dynLambda!20910 lambda!157302 (h!55522 (toList!3659 lm!1616))))))

(declare-fun b!4441458 () Bool)

(assert (=> b!4441458 (= e!2765448 (forall!9703 (t!356861 (toList!3659 lm!1616)) lambda!157302))))

(assert (= (and d!1348163 (not res!1839033)) b!4441457))

(assert (= (and b!4441457 res!1839034) b!4441458))

(declare-fun b_lambda!145065 () Bool)

(assert (=> (not b_lambda!145065) (not b!4441457)))

(declare-fun m!5130105 () Bool)

(assert (=> b!4441457 m!5130105))

(declare-fun m!5130107 () Bool)

(assert (=> b!4441458 m!5130107))

(assert (=> d!1348073 d!1348163))

(assert (=> d!1348017 d!1348065))

(assert (=> d!1348017 d!1348069))

(declare-fun d!1348165 () Bool)

(assert (=> d!1348165 (contains!12365 (extractMap!897 (toList!3659 lm!1616)) key!3717)))

(assert (=> d!1348165 true))

(declare-fun _$12!1211 () Unit!83897)

(assert (=> d!1348165 (= (choose!28203 lm!1616 key!3717 hashF!1220) _$12!1211)))

(declare-fun bs!764184 () Bool)

(assert (= bs!764184 d!1348165))

(assert (=> bs!764184 m!5129699))

(assert (=> bs!764184 m!5129699))

(assert (=> bs!764184 m!5129701))

(assert (=> d!1348017 d!1348165))

(declare-fun d!1348167 () Bool)

(declare-fun res!1839035 () Bool)

(declare-fun e!2765449 () Bool)

(assert (=> d!1348167 (=> res!1839035 e!2765449)))

(assert (=> d!1348167 (= res!1839035 (is-Nil!49795 (toList!3659 lm!1616)))))

(assert (=> d!1348167 (= (forall!9703 (toList!3659 lm!1616) lambda!157287) e!2765449)))

(declare-fun b!4441459 () Bool)

(declare-fun e!2765450 () Bool)

(assert (=> b!4441459 (= e!2765449 e!2765450)))

(declare-fun res!1839036 () Bool)

(assert (=> b!4441459 (=> (not res!1839036) (not e!2765450))))

(assert (=> b!4441459 (= res!1839036 (dynLambda!20910 lambda!157287 (h!55522 (toList!3659 lm!1616))))))

(declare-fun b!4441460 () Bool)

(assert (=> b!4441460 (= e!2765450 (forall!9703 (t!356861 (toList!3659 lm!1616)) lambda!157287))))

(assert (= (and d!1348167 (not res!1839035)) b!4441459))

(assert (= (and b!4441459 res!1839036) b!4441460))

(declare-fun b_lambda!145067 () Bool)

(assert (=> (not b_lambda!145067) (not b!4441459)))

(declare-fun m!5130109 () Bool)

(assert (=> b!4441459 m!5130109))

(declare-fun m!5130111 () Bool)

(assert (=> b!4441460 m!5130111))

(assert (=> d!1348017 d!1348167))

(declare-fun d!1348169 () Bool)

(declare-fun res!1839037 () Bool)

(declare-fun e!2765451 () Bool)

(assert (=> d!1348169 (=> res!1839037 e!2765451)))

(assert (=> d!1348169 (= res!1839037 (is-Nil!49795 (t!356861 (toList!3659 lt!1636746))))))

(assert (=> d!1348169 (= (forall!9703 (t!356861 (toList!3659 lt!1636746)) lambda!157273) e!2765451)))

(declare-fun b!4441461 () Bool)

(declare-fun e!2765452 () Bool)

(assert (=> b!4441461 (= e!2765451 e!2765452)))

(declare-fun res!1839038 () Bool)

(assert (=> b!4441461 (=> (not res!1839038) (not e!2765452))))

(assert (=> b!4441461 (= res!1839038 (dynLambda!20910 lambda!157273 (h!55522 (t!356861 (toList!3659 lt!1636746)))))))

(declare-fun b!4441462 () Bool)

(assert (=> b!4441462 (= e!2765452 (forall!9703 (t!356861 (t!356861 (toList!3659 lt!1636746))) lambda!157273))))

(assert (= (and d!1348169 (not res!1839037)) b!4441461))

(assert (= (and b!4441461 res!1839038) b!4441462))

(declare-fun b_lambda!145069 () Bool)

(assert (=> (not b_lambda!145069) (not b!4441461)))

(declare-fun m!5130113 () Bool)

(assert (=> b!4441461 m!5130113))

(declare-fun m!5130115 () Bool)

(assert (=> b!4441462 m!5130115))

(assert (=> b!4441165 d!1348169))

(declare-fun d!1348171 () Bool)

(assert (=> d!1348171 (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(declare-fun lt!1636925 () Unit!83897)

(declare-fun choose!28209 (List!49918 K!11163) Unit!83897)

(assert (=> d!1348171 (= lt!1636925 (choose!28209 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(assert (=> d!1348171 (invariantList!843 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))

(assert (=> d!1348171 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!696 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717) lt!1636925)))

(declare-fun bs!764185 () Bool)

(assert (= bs!764185 d!1348171))

(assert (=> bs!764185 m!5129875))

(assert (=> bs!764185 m!5129875))

(assert (=> bs!764185 m!5129877))

(declare-fun m!5130117 () Bool)

(assert (=> bs!764185 m!5130117))

(declare-fun m!5130119 () Bool)

(assert (=> bs!764185 m!5130119))

(assert (=> b!4441231 d!1348171))

(assert (=> b!4441231 d!1348159))

(assert (=> b!4441231 d!1348161))

(declare-fun d!1348173 () Bool)

(assert (=> d!1348173 (contains!12370 (getKeysList!290 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) key!3717)))

(declare-fun lt!1636928 () Unit!83897)

(declare-fun choose!28210 (List!49918 K!11163) Unit!83897)

(assert (=> d!1348173 (= lt!1636928 (choose!28210 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(assert (=> d!1348173 (invariantList!843 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))

(assert (=> d!1348173 (= (lemmaInListThenGetKeysListContains!287 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717) lt!1636928)))

(declare-fun bs!764186 () Bool)

(assert (= bs!764186 d!1348173))

(assert (=> bs!764186 m!5129891))

(assert (=> bs!764186 m!5129891))

(declare-fun m!5130121 () Bool)

(assert (=> bs!764186 m!5130121))

(declare-fun m!5130123 () Bool)

(assert (=> bs!764186 m!5130123))

(assert (=> bs!764186 m!5130119))

(assert (=> b!4441231 d!1348173))

(declare-fun d!1348175 () Bool)

(declare-fun lt!1636929 () Bool)

(assert (=> d!1348175 (= lt!1636929 (set.member key!3717 (content!8009 (keys!17058 (extractMap!897 (toList!3659 lm!1616))))))))

(declare-fun e!2765453 () Bool)

(assert (=> d!1348175 (= lt!1636929 e!2765453)))

(declare-fun res!1839039 () Bool)

(assert (=> d!1348175 (=> (not res!1839039) (not e!2765453))))

(assert (=> d!1348175 (= res!1839039 (is-Cons!49798 (keys!17058 (extractMap!897 (toList!3659 lm!1616)))))))

(assert (=> d!1348175 (= (contains!12370 (keys!17058 (extractMap!897 (toList!3659 lm!1616))) key!3717) lt!1636929)))

(declare-fun b!4441463 () Bool)

(declare-fun e!2765454 () Bool)

(assert (=> b!4441463 (= e!2765453 e!2765454)))

(declare-fun res!1839040 () Bool)

(assert (=> b!4441463 (=> res!1839040 e!2765454)))

(assert (=> b!4441463 (= res!1839040 (= (h!55527 (keys!17058 (extractMap!897 (toList!3659 lm!1616)))) key!3717))))

(declare-fun b!4441464 () Bool)

(assert (=> b!4441464 (= e!2765454 (contains!12370 (t!356864 (keys!17058 (extractMap!897 (toList!3659 lm!1616)))) key!3717))))

(assert (= (and d!1348175 res!1839039) b!4441463))

(assert (= (and b!4441463 (not res!1839040)) b!4441464))

(assert (=> d!1348175 m!5129881))

(declare-fun m!5130125 () Bool)

(assert (=> d!1348175 m!5130125))

(declare-fun m!5130127 () Bool)

(assert (=> d!1348175 m!5130127))

(declare-fun m!5130129 () Bool)

(assert (=> b!4441464 m!5130129))

(assert (=> b!4441232 d!1348175))

(declare-fun bs!764187 () Bool)

(declare-fun b!4441466 () Bool)

(assert (= bs!764187 (and b!4441466 b!4441435)))

(declare-fun lambda!157319 () Int)

(assert (=> bs!764187 (= (= (toList!3660 (extractMap!897 (toList!3659 lm!1616))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157319 lambda!157317))))

(assert (=> b!4441466 true))

(declare-fun bs!764188 () Bool)

(declare-fun b!4441467 () Bool)

(assert (= bs!764188 (and b!4441467 b!4441436)))

(declare-fun lambda!157320 () Int)

(assert (=> bs!764188 (= lambda!157320 lambda!157318)))

(declare-fun d!1348177 () Bool)

(declare-fun e!2765455 () Bool)

(assert (=> d!1348177 e!2765455))

(declare-fun res!1839043 () Bool)

(assert (=> d!1348177 (=> (not res!1839043) (not e!2765455))))

(declare-fun lt!1636930 () List!49922)

(assert (=> d!1348177 (= res!1839043 (noDuplicate!675 lt!1636930))))

(assert (=> d!1348177 (= lt!1636930 (getKeysList!290 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))

(assert (=> d!1348177 (= (keys!17058 (extractMap!897 (toList!3659 lm!1616))) lt!1636930)))

(declare-fun b!4441465 () Bool)

(declare-fun res!1839042 () Bool)

(assert (=> b!4441465 (=> (not res!1839042) (not e!2765455))))

(assert (=> b!4441465 (= res!1839042 (= (length!206 lt!1636930) (length!207 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))))

(declare-fun res!1839041 () Bool)

(assert (=> b!4441466 (=> (not res!1839041) (not e!2765455))))

(assert (=> b!4441466 (= res!1839041 (forall!9707 lt!1636930 lambda!157319))))

(assert (=> b!4441467 (= e!2765455 (= (content!8009 lt!1636930) (content!8009 (map!10891 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) lambda!157320))))))

(assert (= (and d!1348177 res!1839043) b!4441465))

(assert (= (and b!4441465 res!1839042) b!4441466))

(assert (= (and b!4441466 res!1839041) b!4441467))

(declare-fun m!5130131 () Bool)

(assert (=> d!1348177 m!5130131))

(assert (=> d!1348177 m!5129891))

(declare-fun m!5130133 () Bool)

(assert (=> b!4441465 m!5130133))

(declare-fun m!5130135 () Bool)

(assert (=> b!4441465 m!5130135))

(declare-fun m!5130137 () Bool)

(assert (=> b!4441466 m!5130137))

(declare-fun m!5130139 () Bool)

(assert (=> b!4441467 m!5130139))

(declare-fun m!5130141 () Bool)

(assert (=> b!4441467 m!5130141))

(assert (=> b!4441467 m!5130141))

(declare-fun m!5130143 () Bool)

(assert (=> b!4441467 m!5130143))

(assert (=> b!4441232 d!1348177))

(assert (=> b!4441226 d!1348175))

(assert (=> b!4441226 d!1348177))

(declare-fun d!1348179 () Bool)

(declare-fun res!1839048 () Bool)

(declare-fun e!2765460 () Bool)

(assert (=> d!1348179 (=> res!1839048 e!2765460)))

(assert (=> d!1348179 (= res!1839048 (and (is-Cons!49794 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (= (_1!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) key!3717)))))

(assert (=> d!1348179 (= (containsKey!1244 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717) e!2765460)))

(declare-fun b!4441472 () Bool)

(declare-fun e!2765461 () Bool)

(assert (=> b!4441472 (= e!2765460 e!2765461)))

(declare-fun res!1839049 () Bool)

(assert (=> b!4441472 (=> (not res!1839049) (not e!2765461))))

(assert (=> b!4441472 (= res!1839049 (is-Cons!49794 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))

(declare-fun b!4441473 () Bool)

(assert (=> b!4441473 (= e!2765461 (containsKey!1244 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) key!3717))))

(assert (= (and d!1348179 (not res!1839048)) b!4441472))

(assert (= (and b!4441472 res!1839049) b!4441473))

(declare-fun m!5130145 () Bool)

(assert (=> b!4441473 m!5130145))

(assert (=> b!4441224 d!1348179))

(declare-fun d!1348181 () Bool)

(assert (=> d!1348181 (containsKey!1244 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717)))

(declare-fun lt!1636933 () Unit!83897)

(declare-fun choose!28211 (List!49918 K!11163) Unit!83897)

(assert (=> d!1348181 (= lt!1636933 (choose!28211 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717))))

(assert (=> d!1348181 (invariantList!843 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))

(assert (=> d!1348181 (= (lemmaInGetKeysListThenContainsKey!288 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) key!3717) lt!1636933)))

(declare-fun bs!764189 () Bool)

(assert (= bs!764189 d!1348181))

(assert (=> bs!764189 m!5129883))

(declare-fun m!5130147 () Bool)

(assert (=> bs!764189 m!5130147))

(assert (=> bs!764189 m!5130119))

(assert (=> b!4441224 d!1348181))

(declare-fun d!1348183 () Bool)

(assert (=> d!1348183 (= (invariantList!843 (toList!3660 lt!1636796)) (noDuplicatedKeys!191 (toList!3660 lt!1636796)))))

(declare-fun bs!764190 () Bool)

(assert (= bs!764190 d!1348183))

(declare-fun m!5130149 () Bool)

(assert (=> bs!764190 m!5130149))

(assert (=> d!1348047 d!1348183))

(declare-fun d!1348185 () Bool)

(declare-fun res!1839050 () Bool)

(declare-fun e!2765462 () Bool)

(assert (=> d!1348185 (=> res!1839050 e!2765462)))

(assert (=> d!1348185 (= res!1839050 (is-Nil!49795 (tail!7373 (toList!3659 lm!1616))))))

(assert (=> d!1348185 (= (forall!9703 (tail!7373 (toList!3659 lm!1616)) lambda!157293) e!2765462)))

(declare-fun b!4441474 () Bool)

(declare-fun e!2765463 () Bool)

(assert (=> b!4441474 (= e!2765462 e!2765463)))

(declare-fun res!1839051 () Bool)

(assert (=> b!4441474 (=> (not res!1839051) (not e!2765463))))

(assert (=> b!4441474 (= res!1839051 (dynLambda!20910 lambda!157293 (h!55522 (tail!7373 (toList!3659 lm!1616)))))))

(declare-fun b!4441475 () Bool)

(assert (=> b!4441475 (= e!2765463 (forall!9703 (t!356861 (tail!7373 (toList!3659 lm!1616))) lambda!157293))))

(assert (= (and d!1348185 (not res!1839050)) b!4441474))

(assert (= (and b!4441474 res!1839051) b!4441475))

(declare-fun b_lambda!145071 () Bool)

(assert (=> (not b_lambda!145071) (not b!4441474)))

(declare-fun m!5130151 () Bool)

(assert (=> b!4441474 m!5130151))

(declare-fun m!5130153 () Bool)

(assert (=> b!4441475 m!5130153))

(assert (=> d!1348047 d!1348185))

(declare-fun bs!764191 () Bool)

(declare-fun b!4441499 () Bool)

(assert (= bs!764191 (and b!4441499 b!4441435)))

(declare-fun lambda!157329 () Int)

(assert (=> bs!764191 (= (= (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157329 lambda!157317))))

(declare-fun bs!764192 () Bool)

(assert (= bs!764192 (and b!4441499 b!4441466)))

(assert (=> bs!764192 (= (= (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (= lambda!157329 lambda!157319))))

(assert (=> b!4441499 true))

(declare-fun bs!764193 () Bool)

(declare-fun b!4441502 () Bool)

(assert (= bs!764193 (and b!4441502 b!4441435)))

(declare-fun lambda!157330 () Int)

(assert (=> bs!764193 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157330 lambda!157317))))

(declare-fun bs!764194 () Bool)

(assert (= bs!764194 (and b!4441502 b!4441466)))

(assert (=> bs!764194 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (= lambda!157330 lambda!157319))))

(declare-fun bs!764195 () Bool)

(assert (= bs!764195 (and b!4441502 b!4441499)))

(assert (=> bs!764195 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (= lambda!157330 lambda!157329))))

(assert (=> b!4441502 true))

(declare-fun bs!764196 () Bool)

(declare-fun b!4441497 () Bool)

(assert (= bs!764196 (and b!4441497 b!4441435)))

(declare-fun lambda!157331 () Int)

(assert (=> bs!764196 (= lambda!157331 lambda!157317)))

(declare-fun bs!764197 () Bool)

(assert (= bs!764197 (and b!4441497 b!4441466)))

(assert (=> bs!764197 (= (= (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (= lambda!157331 lambda!157319))))

(declare-fun bs!764198 () Bool)

(assert (= bs!764198 (and b!4441497 b!4441499)))

(assert (=> bs!764198 (= (= (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (= lambda!157331 lambda!157329))))

(declare-fun bs!764199 () Bool)

(assert (= bs!764199 (and b!4441497 b!4441502)))

(assert (=> bs!764199 (= (= (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))) (= lambda!157331 lambda!157330))))

(assert (=> b!4441497 true))

(declare-fun bs!764200 () Bool)

(declare-fun b!4441500 () Bool)

(assert (= bs!764200 (and b!4441500 b!4441436)))

(declare-fun lambda!157332 () Int)

(assert (=> bs!764200 (= lambda!157332 lambda!157318)))

(declare-fun bs!764201 () Bool)

(assert (= bs!764201 (and b!4441500 b!4441467)))

(assert (=> bs!764201 (= lambda!157332 lambda!157320)))

(declare-fun b!4441494 () Bool)

(declare-fun e!2765475 () Unit!83897)

(declare-fun Unit!83916 () Unit!83897)

(assert (=> b!4441494 (= e!2765475 Unit!83916)))

(declare-fun b!4441495 () Bool)

(declare-fun e!2765472 () Unit!83897)

(declare-fun Unit!83917 () Unit!83897)

(assert (=> b!4441495 (= e!2765472 Unit!83917)))

(declare-fun b!4441496 () Bool)

(assert (=> b!4441496 false))

(declare-fun Unit!83918 () Unit!83897)

(assert (=> b!4441496 (= e!2765472 Unit!83918)))

(declare-fun d!1348187 () Bool)

(declare-fun e!2765474 () Bool)

(assert (=> d!1348187 e!2765474))

(declare-fun res!1839060 () Bool)

(assert (=> d!1348187 (=> (not res!1839060) (not e!2765474))))

(declare-fun lt!1636953 () List!49922)

(assert (=> d!1348187 (= res!1839060 (noDuplicate!675 lt!1636953))))

(declare-fun e!2765473 () List!49922)

(assert (=> d!1348187 (= lt!1636953 e!2765473)))

(declare-fun c!755875 () Bool)

(assert (=> d!1348187 (= c!755875 (is-Cons!49794 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))

(assert (=> d!1348187 (invariantList!843 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))

(assert (=> d!1348187 (= (getKeysList!290 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) lt!1636953)))

(declare-fun res!1839059 () Bool)

(assert (=> b!4441497 (=> (not res!1839059) (not e!2765474))))

(assert (=> b!4441497 (= res!1839059 (forall!9707 lt!1636953 lambda!157331))))

(declare-fun b!4441498 () Bool)

(declare-fun res!1839058 () Bool)

(assert (=> b!4441498 (=> (not res!1839058) (not e!2765474))))

(assert (=> b!4441498 (= res!1839058 (= (length!206 lt!1636953) (length!207 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))))

(assert (=> b!4441499 false))

(declare-fun lt!1636951 () Unit!83897)

(declare-fun forallContained!2141 (List!49922 Int K!11163) Unit!83897)

(assert (=> b!4441499 (= lt!1636951 (forallContained!2141 (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) lambda!157329 (_1!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))))

(declare-fun Unit!83919 () Unit!83897)

(assert (=> b!4441499 (= e!2765475 Unit!83919)))

(assert (=> b!4441500 (= e!2765474 (= (content!8009 lt!1636953) (content!8009 (map!10891 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) lambda!157332))))))

(declare-fun b!4441501 () Bool)

(assert (=> b!4441501 (= e!2765473 Nil!49798)))

(assert (=> b!4441502 (= e!2765473 (Cons!49798 (_1!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))))

(declare-fun c!755874 () Bool)

(assert (=> b!4441502 (= c!755874 (containsKey!1244 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (_1!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))))

(declare-fun lt!1636949 () Unit!83897)

(assert (=> b!4441502 (= lt!1636949 e!2765472)))

(declare-fun c!755873 () Bool)

(assert (=> b!4441502 (= c!755873 (contains!12370 (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (_1!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))))

(declare-fun lt!1636954 () Unit!83897)

(assert (=> b!4441502 (= lt!1636954 e!2765475)))

(declare-fun lt!1636950 () List!49922)

(assert (=> b!4441502 (= lt!1636950 (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))))

(declare-fun lt!1636952 () Unit!83897)

(declare-fun lemmaForallContainsAddHeadPreserves!97 (List!49918 List!49922 tuple2!49722) Unit!83897)

(assert (=> b!4441502 (= lt!1636952 (lemmaForallContainsAddHeadPreserves!97 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) lt!1636950 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))))

(assert (=> b!4441502 (forall!9707 lt!1636950 lambda!157330)))

(declare-fun lt!1636948 () Unit!83897)

(assert (=> b!4441502 (= lt!1636948 lt!1636952)))

(assert (= (and d!1348187 c!755875) b!4441502))

(assert (= (and d!1348187 (not c!755875)) b!4441501))

(assert (= (and b!4441502 c!755874) b!4441496))

(assert (= (and b!4441502 (not c!755874)) b!4441495))

(assert (= (and b!4441502 c!755873) b!4441499))

(assert (= (and b!4441502 (not c!755873)) b!4441494))

(assert (= (and d!1348187 res!1839060) b!4441498))

(assert (= (and b!4441498 res!1839058) b!4441497))

(assert (= (and b!4441497 res!1839059) b!4441500))

(declare-fun m!5130155 () Bool)

(assert (=> b!4441499 m!5130155))

(assert (=> b!4441499 m!5130155))

(declare-fun m!5130157 () Bool)

(assert (=> b!4441499 m!5130157))

(declare-fun m!5130159 () Bool)

(assert (=> b!4441497 m!5130159))

(declare-fun m!5130161 () Bool)

(assert (=> b!4441500 m!5130161))

(declare-fun m!5130163 () Bool)

(assert (=> b!4441500 m!5130163))

(assert (=> b!4441500 m!5130163))

(declare-fun m!5130165 () Bool)

(assert (=> b!4441500 m!5130165))

(declare-fun m!5130167 () Bool)

(assert (=> d!1348187 m!5130167))

(declare-fun m!5130169 () Bool)

(assert (=> d!1348187 m!5130169))

(declare-fun m!5130171 () Bool)

(assert (=> b!4441502 m!5130171))

(declare-fun m!5130173 () Bool)

(assert (=> b!4441502 m!5130173))

(assert (=> b!4441502 m!5130155))

(declare-fun m!5130175 () Bool)

(assert (=> b!4441502 m!5130175))

(assert (=> b!4441502 m!5130155))

(declare-fun m!5130177 () Bool)

(assert (=> b!4441502 m!5130177))

(declare-fun m!5130179 () Bool)

(assert (=> b!4441498 m!5130179))

(assert (=> b!4441498 m!5130087))

(assert (=> b!4441203 d!1348187))

(declare-fun d!1348189 () Bool)

(declare-fun choose!28212 (Hashable!5230 K!11163) (_ BitVec 64))

(assert (=> d!1348189 (= (hash!2293 hashF!1220 key!3717) (choose!28212 hashF!1220 key!3717))))

(declare-fun bs!764202 () Bool)

(assert (= bs!764202 d!1348189))

(declare-fun m!5130181 () Bool)

(assert (=> bs!764202 m!5130181))

(assert (=> d!1348021 d!1348189))

(declare-fun d!1348191 () Bool)

(assert (=> d!1348191 (= (get!16240 (getValueByKey!789 (toList!3659 lm!1616) hash!366)) (v!44030 (getValueByKey!789 (toList!3659 lm!1616) hash!366)))))

(assert (=> d!1348039 d!1348191))

(assert (=> d!1348039 d!1348117))

(declare-fun d!1348193 () Bool)

(declare-fun res!1839061 () Bool)

(declare-fun e!2765476 () Bool)

(assert (=> d!1348193 (=> res!1839061 e!2765476)))

(assert (=> d!1348193 (= res!1839061 (not (is-Cons!49794 (_2!28156 (h!55522 (toList!3659 lt!1636749))))))))

(assert (=> d!1348193 (= (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lt!1636749)))) e!2765476)))

(declare-fun b!4441505 () Bool)

(declare-fun e!2765477 () Bool)

(assert (=> b!4441505 (= e!2765476 e!2765477)))

(declare-fun res!1839062 () Bool)

(assert (=> b!4441505 (=> (not res!1839062) (not e!2765477))))

(assert (=> b!4441505 (= res!1839062 (not (containsKey!1243 (t!356860 (_2!28156 (h!55522 (toList!3659 lt!1636749)))) (_1!28155 (h!55521 (_2!28156 (h!55522 (toList!3659 lt!1636749))))))))))

(declare-fun b!4441506 () Bool)

(assert (=> b!4441506 (= e!2765477 (noDuplicateKeys!836 (t!356860 (_2!28156 (h!55522 (toList!3659 lt!1636749))))))))

(assert (= (and d!1348193 (not res!1839061)) b!4441505))

(assert (= (and b!4441505 res!1839062) b!4441506))

(declare-fun m!5130183 () Bool)

(assert (=> b!4441505 m!5130183))

(declare-fun m!5130185 () Bool)

(assert (=> b!4441506 m!5130185))

(assert (=> bs!764160 d!1348193))

(declare-fun bs!764203 () Bool)

(declare-fun b!4441512 () Bool)

(assert (= bs!764203 (and b!4441512 b!4441502)))

(declare-fun lambda!157333 () Int)

(assert (=> bs!764203 (= (= (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))) (= lambda!157333 lambda!157330))))

(declare-fun bs!764204 () Bool)

(assert (= bs!764204 (and b!4441512 b!4441466)))

(assert (=> bs!764204 (= (= (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (= lambda!157333 lambda!157319))))

(declare-fun bs!764205 () Bool)

(assert (= bs!764205 (and b!4441512 b!4441499)))

(assert (=> bs!764205 (= (= (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (= lambda!157333 lambda!157329))))

(declare-fun bs!764206 () Bool)

(assert (= bs!764206 (and b!4441512 b!4441435)))

(assert (=> bs!764206 (= (= (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157333 lambda!157317))))

(declare-fun bs!764207 () Bool)

(assert (= bs!764207 (and b!4441512 b!4441497)))

(assert (=> bs!764207 (= (= (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157333 lambda!157331))))

(assert (=> b!4441512 true))

(declare-fun bs!764208 () Bool)

(declare-fun b!4441515 () Bool)

(assert (= bs!764208 (and b!4441515 b!4441502)))

(declare-fun lambda!157334 () Int)

(assert (=> bs!764208 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))) (= lambda!157334 lambda!157330))))

(declare-fun bs!764209 () Bool)

(assert (= bs!764209 (and b!4441515 b!4441466)))

(assert (=> bs!764209 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (= lambda!157334 lambda!157319))))

(declare-fun bs!764210 () Bool)

(assert (= bs!764210 (and b!4441515 b!4441499)))

(assert (=> bs!764210 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (= lambda!157334 lambda!157329))))

(declare-fun bs!764211 () Bool)

(assert (= bs!764211 (and b!4441515 b!4441435)))

(assert (=> bs!764211 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157334 lambda!157317))))

(declare-fun bs!764212 () Bool)

(assert (= bs!764212 (and b!4441515 b!4441512)))

(assert (=> bs!764212 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (= lambda!157334 lambda!157333))))

(declare-fun bs!764213 () Bool)

(assert (= bs!764213 (and b!4441515 b!4441497)))

(assert (=> bs!764213 (= (= (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157334 lambda!157331))))

(assert (=> b!4441515 true))

(declare-fun bs!764214 () Bool)

(declare-fun b!4441510 () Bool)

(assert (= bs!764214 (and b!4441510 b!4441515)))

(declare-fun lambda!157335 () Int)

(assert (=> bs!764214 (= (= (toList!3660 (extractMap!897 (toList!3659 lm!1616))) (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))) (= lambda!157335 lambda!157334))))

(declare-fun bs!764215 () Bool)

(assert (= bs!764215 (and b!4441510 b!4441502)))

(assert (=> bs!764215 (= (= (toList!3660 (extractMap!897 (toList!3659 lm!1616))) (Cons!49794 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))) (= lambda!157335 lambda!157330))))

(declare-fun bs!764216 () Bool)

(assert (= bs!764216 (and b!4441510 b!4441466)))

(assert (=> bs!764216 (= lambda!157335 lambda!157319)))

(declare-fun bs!764217 () Bool)

(assert (= bs!764217 (and b!4441510 b!4441499)))

(assert (=> bs!764217 (= (= (toList!3660 (extractMap!897 (toList!3659 lm!1616))) (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) (= lambda!157335 lambda!157329))))

(declare-fun bs!764218 () Bool)

(assert (= bs!764218 (and b!4441510 b!4441435)))

(assert (=> bs!764218 (= (= (toList!3660 (extractMap!897 (toList!3659 lm!1616))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157335 lambda!157317))))

(declare-fun bs!764219 () Bool)

(assert (= bs!764219 (and b!4441510 b!4441512)))

(assert (=> bs!764219 (= (= (toList!3660 (extractMap!897 (toList!3659 lm!1616))) (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (= lambda!157335 lambda!157333))))

(declare-fun bs!764220 () Bool)

(assert (= bs!764220 (and b!4441510 b!4441497)))

(assert (=> bs!764220 (= (= (toList!3660 (extractMap!897 (toList!3659 lm!1616))) (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157335 lambda!157331))))

(assert (=> b!4441510 true))

(declare-fun bs!764221 () Bool)

(declare-fun b!4441513 () Bool)

(assert (= bs!764221 (and b!4441513 b!4441436)))

(declare-fun lambda!157336 () Int)

(assert (=> bs!764221 (= lambda!157336 lambda!157318)))

(declare-fun bs!764222 () Bool)

(assert (= bs!764222 (and b!4441513 b!4441467)))

(assert (=> bs!764222 (= lambda!157336 lambda!157320)))

(declare-fun bs!764223 () Bool)

(assert (= bs!764223 (and b!4441513 b!4441500)))

(assert (=> bs!764223 (= lambda!157336 lambda!157332)))

(declare-fun b!4441507 () Bool)

(declare-fun e!2765481 () Unit!83897)

(declare-fun Unit!83920 () Unit!83897)

(assert (=> b!4441507 (= e!2765481 Unit!83920)))

(declare-fun b!4441508 () Bool)

(declare-fun e!2765478 () Unit!83897)

(declare-fun Unit!83921 () Unit!83897)

(assert (=> b!4441508 (= e!2765478 Unit!83921)))

(declare-fun b!4441509 () Bool)

(assert (=> b!4441509 false))

(declare-fun Unit!83922 () Unit!83897)

(assert (=> b!4441509 (= e!2765478 Unit!83922)))

(declare-fun d!1348195 () Bool)

(declare-fun e!2765480 () Bool)

(assert (=> d!1348195 e!2765480))

(declare-fun res!1839065 () Bool)

(assert (=> d!1348195 (=> (not res!1839065) (not e!2765480))))

(declare-fun lt!1636960 () List!49922)

(assert (=> d!1348195 (= res!1839065 (noDuplicate!675 lt!1636960))))

(declare-fun e!2765479 () List!49922)

(assert (=> d!1348195 (= lt!1636960 e!2765479)))

(declare-fun c!755878 () Bool)

(assert (=> d!1348195 (= c!755878 (is-Cons!49794 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))

(assert (=> d!1348195 (invariantList!843 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))

(assert (=> d!1348195 (= (getKeysList!290 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) lt!1636960)))

(declare-fun res!1839064 () Bool)

(assert (=> b!4441510 (=> (not res!1839064) (not e!2765480))))

(assert (=> b!4441510 (= res!1839064 (forall!9707 lt!1636960 lambda!157335))))

(declare-fun b!4441511 () Bool)

(declare-fun res!1839063 () Bool)

(assert (=> b!4441511 (=> (not res!1839063) (not e!2765480))))

(assert (=> b!4441511 (= res!1839063 (= (length!206 lt!1636960) (length!207 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))))

(assert (=> b!4441512 false))

(declare-fun lt!1636958 () Unit!83897)

(assert (=> b!4441512 (= lt!1636958 (forallContained!2141 (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) lambda!157333 (_1!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))))

(declare-fun Unit!83923 () Unit!83897)

(assert (=> b!4441512 (= e!2765481 Unit!83923)))

(assert (=> b!4441513 (= e!2765480 (= (content!8009 lt!1636960) (content!8009 (map!10891 (toList!3660 (extractMap!897 (toList!3659 lm!1616))) lambda!157336))))))

(declare-fun b!4441514 () Bool)

(assert (=> b!4441514 (= e!2765479 Nil!49798)))

(assert (=> b!4441515 (= e!2765479 (Cons!49798 (_1!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))))

(declare-fun c!755877 () Bool)

(assert (=> b!4441515 (= c!755877 (containsKey!1244 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) (_1!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))))

(declare-fun lt!1636956 () Unit!83897)

(assert (=> b!4441515 (= lt!1636956 e!2765478)))

(declare-fun c!755876 () Bool)

(assert (=> b!4441515 (= c!755876 (contains!12370 (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))) (_1!28155 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))))))))

(declare-fun lt!1636961 () Unit!83897)

(assert (=> b!4441515 (= lt!1636961 e!2765481)))

(declare-fun lt!1636957 () List!49922)

(assert (=> b!4441515 (= lt!1636957 (getKeysList!290 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))))

(declare-fun lt!1636959 () Unit!83897)

(assert (=> b!4441515 (= lt!1636959 (lemmaForallContainsAddHeadPreserves!97 (t!356860 (toList!3660 (extractMap!897 (toList!3659 lm!1616)))) lt!1636957 (h!55521 (toList!3660 (extractMap!897 (toList!3659 lm!1616))))))))

(assert (=> b!4441515 (forall!9707 lt!1636957 lambda!157334)))

(declare-fun lt!1636955 () Unit!83897)

(assert (=> b!4441515 (= lt!1636955 lt!1636959)))

(assert (= (and d!1348195 c!755878) b!4441515))

(assert (= (and d!1348195 (not c!755878)) b!4441514))

(assert (= (and b!4441515 c!755877) b!4441509))

(assert (= (and b!4441515 (not c!755877)) b!4441508))

(assert (= (and b!4441515 c!755876) b!4441512))

(assert (= (and b!4441515 (not c!755876)) b!4441507))

(assert (= (and d!1348195 res!1839065) b!4441511))

(assert (= (and b!4441511 res!1839063) b!4441510))

(assert (= (and b!4441510 res!1839064) b!4441513))

(declare-fun m!5130187 () Bool)

(assert (=> b!4441512 m!5130187))

(assert (=> b!4441512 m!5130187))

(declare-fun m!5130189 () Bool)

(assert (=> b!4441512 m!5130189))

(declare-fun m!5130191 () Bool)

(assert (=> b!4441510 m!5130191))

(declare-fun m!5130193 () Bool)

(assert (=> b!4441513 m!5130193))

(declare-fun m!5130195 () Bool)

(assert (=> b!4441513 m!5130195))

(assert (=> b!4441513 m!5130195))

(declare-fun m!5130197 () Bool)

(assert (=> b!4441513 m!5130197))

(declare-fun m!5130199 () Bool)

(assert (=> d!1348195 m!5130199))

(assert (=> d!1348195 m!5130119))

(declare-fun m!5130201 () Bool)

(assert (=> b!4441515 m!5130201))

(declare-fun m!5130203 () Bool)

(assert (=> b!4441515 m!5130203))

(assert (=> b!4441515 m!5130187))

(declare-fun m!5130205 () Bool)

(assert (=> b!4441515 m!5130205))

(assert (=> b!4441515 m!5130187))

(declare-fun m!5130207 () Bool)

(assert (=> b!4441515 m!5130207))

(declare-fun m!5130209 () Bool)

(assert (=> b!4441511 m!5130209))

(assert (=> b!4441511 m!5130135))

(assert (=> b!4441228 d!1348195))

(declare-fun d!1348197 () Bool)

(assert (=> d!1348197 (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(declare-fun lt!1636962 () Unit!83897)

(assert (=> d!1348197 (= lt!1636962 (choose!28209 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(assert (=> d!1348197 (invariantList!843 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))

(assert (=> d!1348197 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!696 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717) lt!1636962)))

(declare-fun bs!764224 () Bool)

(assert (= bs!764224 d!1348197))

(assert (=> bs!764224 m!5129833))

(assert (=> bs!764224 m!5129833))

(assert (=> bs!764224 m!5129835))

(declare-fun m!5130211 () Bool)

(assert (=> bs!764224 m!5130211))

(assert (=> bs!764224 m!5130169))

(assert (=> b!4441206 d!1348197))

(declare-fun d!1348199 () Bool)

(assert (=> d!1348199 (= (isDefined!8093 (getValueByKey!790 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717)) (not (isEmpty!28389 (getValueByKey!790 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))))

(declare-fun bs!764225 () Bool)

(assert (= bs!764225 d!1348199))

(assert (=> bs!764225 m!5129833))

(declare-fun m!5130213 () Bool)

(assert (=> bs!764225 m!5130213))

(assert (=> b!4441206 d!1348199))

(declare-fun b!4441518 () Bool)

(declare-fun e!2765483 () Option!10804)

(assert (=> b!4441518 (= e!2765483 (getValueByKey!790 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) key!3717))))

(declare-fun b!4441517 () Bool)

(declare-fun e!2765482 () Option!10804)

(assert (=> b!4441517 (= e!2765482 e!2765483)))

(declare-fun c!755880 () Bool)

(assert (=> b!4441517 (= c!755880 (and (is-Cons!49794 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (not (= (_1!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) key!3717))))))

(declare-fun d!1348201 () Bool)

(declare-fun c!755879 () Bool)

(assert (=> d!1348201 (= c!755879 (and (is-Cons!49794 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= (_1!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) key!3717)))))

(assert (=> d!1348201 (= (getValueByKey!790 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717) e!2765482)))

(declare-fun b!4441516 () Bool)

(assert (=> b!4441516 (= e!2765482 (Some!10803 (_2!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))))

(declare-fun b!4441519 () Bool)

(assert (=> b!4441519 (= e!2765483 None!10803)))

(assert (= (and d!1348201 c!755879) b!4441516))

(assert (= (and d!1348201 (not c!755879)) b!4441517))

(assert (= (and b!4441517 c!755880) b!4441518))

(assert (= (and b!4441517 (not c!755880)) b!4441519))

(declare-fun m!5130215 () Bool)

(assert (=> b!4441518 m!5130215))

(assert (=> b!4441206 d!1348201))

(declare-fun d!1348203 () Bool)

(assert (=> d!1348203 (contains!12370 (getKeysList!290 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) key!3717)))

(declare-fun lt!1636963 () Unit!83897)

(assert (=> d!1348203 (= lt!1636963 (choose!28210 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(assert (=> d!1348203 (invariantList!843 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))

(assert (=> d!1348203 (= (lemmaInListThenGetKeysListContains!287 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717) lt!1636963)))

(declare-fun bs!764226 () Bool)

(assert (= bs!764226 d!1348203))

(assert (=> bs!764226 m!5129849))

(assert (=> bs!764226 m!5129849))

(declare-fun m!5130217 () Bool)

(assert (=> bs!764226 m!5130217))

(declare-fun m!5130219 () Bool)

(assert (=> bs!764226 m!5130219))

(assert (=> bs!764226 m!5130169))

(assert (=> b!4441206 d!1348203))

(assert (=> b!4441227 d!1348177))

(assert (=> b!4441205 d!1348199))

(assert (=> b!4441205 d!1348201))

(declare-fun d!1348205 () Bool)

(declare-fun lt!1636964 () Bool)

(assert (=> d!1348205 (= lt!1636964 (set.member key!3717 (content!8009 e!2765280)))))

(declare-fun e!2765484 () Bool)

(assert (=> d!1348205 (= lt!1636964 e!2765484)))

(declare-fun res!1839066 () Bool)

(assert (=> d!1348205 (=> (not res!1839066) (not e!2765484))))

(assert (=> d!1348205 (= res!1839066 (is-Cons!49798 e!2765280))))

(assert (=> d!1348205 (= (contains!12370 e!2765280 key!3717) lt!1636964)))

(declare-fun b!4441520 () Bool)

(declare-fun e!2765485 () Bool)

(assert (=> b!4441520 (= e!2765484 e!2765485)))

(declare-fun res!1839067 () Bool)

(assert (=> b!4441520 (=> res!1839067 e!2765485)))

(assert (=> b!4441520 (= res!1839067 (= (h!55527 e!2765280) key!3717))))

(declare-fun b!4441521 () Bool)

(assert (=> b!4441521 (= e!2765485 (contains!12370 (t!356864 e!2765280) key!3717))))

(assert (= (and d!1348205 res!1839066) b!4441520))

(assert (= (and b!4441520 (not res!1839067)) b!4441521))

(declare-fun m!5130221 () Bool)

(assert (=> d!1348205 m!5130221))

(declare-fun m!5130223 () Bool)

(assert (=> d!1348205 m!5130223))

(declare-fun m!5130225 () Bool)

(assert (=> b!4441521 m!5130225))

(assert (=> bm!309002 d!1348205))

(declare-fun d!1348207 () Bool)

(declare-fun res!1839068 () Bool)

(declare-fun e!2765486 () Bool)

(assert (=> d!1348207 (=> res!1839068 e!2765486)))

(assert (=> d!1348207 (= res!1839068 (is-Nil!49795 (t!356861 (toList!3659 lm!1616))))))

(assert (=> d!1348207 (= (forall!9703 (t!356861 (toList!3659 lm!1616)) lambda!157273) e!2765486)))

(declare-fun b!4441522 () Bool)

(declare-fun e!2765487 () Bool)

(assert (=> b!4441522 (= e!2765486 e!2765487)))

(declare-fun res!1839069 () Bool)

(assert (=> b!4441522 (=> (not res!1839069) (not e!2765487))))

(assert (=> b!4441522 (= res!1839069 (dynLambda!20910 lambda!157273 (h!55522 (t!356861 (toList!3659 lm!1616)))))))

(declare-fun b!4441523 () Bool)

(assert (=> b!4441523 (= e!2765487 (forall!9703 (t!356861 (t!356861 (toList!3659 lm!1616))) lambda!157273))))

(assert (= (and d!1348207 (not res!1839068)) b!4441522))

(assert (= (and b!4441522 res!1839069) b!4441523))

(declare-fun b_lambda!145073 () Bool)

(assert (=> (not b_lambda!145073) (not b!4441522)))

(declare-fun m!5130227 () Bool)

(assert (=> b!4441522 m!5130227))

(declare-fun m!5130229 () Bool)

(assert (=> b!4441523 m!5130229))

(assert (=> b!4441137 d!1348207))

(declare-fun d!1348209 () Bool)

(declare-fun res!1839070 () Bool)

(declare-fun e!2765488 () Bool)

(assert (=> d!1348209 (=> res!1839070 e!2765488)))

(assert (=> d!1348209 (= res!1839070 (and (is-Cons!49794 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) (= (_1!28155 (h!55521 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))) key!3717)))))

(assert (=> d!1348209 (= (containsKey!1244 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717) e!2765488)))

(declare-fun b!4441524 () Bool)

(declare-fun e!2765489 () Bool)

(assert (=> b!4441524 (= e!2765488 e!2765489)))

(declare-fun res!1839071 () Bool)

(assert (=> b!4441524 (=> (not res!1839071) (not e!2765489))))

(assert (=> b!4441524 (= res!1839071 (is-Cons!49794 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))))))

(declare-fun b!4441525 () Bool)

(assert (=> b!4441525 (= e!2765489 (containsKey!1244 (t!356860 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616))))) key!3717))))

(assert (= (and d!1348209 (not res!1839070)) b!4441524))

(assert (= (and b!4441524 res!1839071) b!4441525))

(declare-fun m!5130231 () Bool)

(assert (=> b!4441525 m!5130231))

(assert (=> b!4441199 d!1348209))

(declare-fun d!1348211 () Bool)

(assert (=> d!1348211 (containsKey!1244 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717)))

(declare-fun lt!1636965 () Unit!83897)

(assert (=> d!1348211 (= lt!1636965 (choose!28211 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717))))

(assert (=> d!1348211 (invariantList!843 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))))))

(assert (=> d!1348211 (= (lemmaInGetKeysListThenContainsKey!288 (toList!3660 (extractMap!897 (tail!7373 (toList!3659 lm!1616)))) key!3717) lt!1636965)))

(declare-fun bs!764227 () Bool)

(assert (= bs!764227 d!1348211))

(assert (=> bs!764227 m!5129841))

(declare-fun m!5130233 () Bool)

(assert (=> bs!764227 m!5130233))

(assert (=> bs!764227 m!5130169))

(assert (=> b!4441199 d!1348211))

(assert (=> d!1348045 d!1348049))

(assert (=> b!4441201 d!1348153))

(assert (=> b!4441201 d!1348155))

(assert (=> d!1348051 d!1348209))

(assert (=> b!4441202 d!1348155))

(declare-fun d!1348213 () Bool)

(declare-fun res!1839072 () Bool)

(declare-fun e!2765490 () Bool)

(assert (=> d!1348213 (=> res!1839072 e!2765490)))

(assert (=> d!1348213 (= res!1839072 (is-Nil!49795 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194)))))))

(assert (=> d!1348213 (= (forall!9703 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194))) lambda!157273) e!2765490)))

(declare-fun b!4441526 () Bool)

(declare-fun e!2765491 () Bool)

(assert (=> b!4441526 (= e!2765490 e!2765491)))

(declare-fun res!1839073 () Bool)

(assert (=> b!4441526 (=> (not res!1839073) (not e!2765491))))

(assert (=> b!4441526 (= res!1839073 (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194))))))))

(declare-fun b!4441527 () Bool)

(assert (=> b!4441527 (= e!2765491 (forall!9703 (t!356861 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194)))) lambda!157273))))

(assert (= (and d!1348213 (not res!1839072)) b!4441526))

(assert (= (and b!4441526 res!1839073) b!4441527))

(declare-fun b_lambda!145075 () Bool)

(assert (=> (not b_lambda!145075) (not b!4441526)))

(declare-fun m!5130235 () Bool)

(assert (=> b!4441526 m!5130235))

(declare-fun m!5130237 () Bool)

(assert (=> b!4441527 m!5130237))

(assert (=> d!1348033 d!1348213))

(assert (=> d!1348033 d!1348029))

(declare-fun d!1348215 () Bool)

(assert (=> d!1348215 (forall!9703 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194))) lambda!157273)))

(assert (=> d!1348215 true))

(declare-fun _$31!439 () Unit!83897)

(assert (=> d!1348215 (= (choose!28204 lm!1616 lambda!157273 hash!366 newBucket!194) _$31!439)))

(declare-fun bs!764228 () Bool)

(assert (= bs!764228 d!1348215))

(assert (=> bs!764228 m!5129709))

(assert (=> bs!764228 m!5129791))

(assert (=> d!1348033 d!1348215))

(assert (=> d!1348033 d!1348019))

(assert (=> d!1348065 d!1348179))

(declare-fun d!1348217 () Bool)

(declare-fun res!1839074 () Bool)

(declare-fun e!2765492 () Bool)

(assert (=> d!1348217 (=> res!1839074 e!2765492)))

(assert (=> d!1348217 (= res!1839074 (not (is-Cons!49794 (_2!28156 (h!55522 (toList!3659 lt!1636746))))))))

(assert (=> d!1348217 (= (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lt!1636746)))) e!2765492)))

(declare-fun b!4441529 () Bool)

(declare-fun e!2765493 () Bool)

(assert (=> b!4441529 (= e!2765492 e!2765493)))

(declare-fun res!1839075 () Bool)

(assert (=> b!4441529 (=> (not res!1839075) (not e!2765493))))

(assert (=> b!4441529 (= res!1839075 (not (containsKey!1243 (t!356860 (_2!28156 (h!55522 (toList!3659 lt!1636746)))) (_1!28155 (h!55521 (_2!28156 (h!55522 (toList!3659 lt!1636746))))))))))

(declare-fun b!4441530 () Bool)

(assert (=> b!4441530 (= e!2765493 (noDuplicateKeys!836 (t!356860 (_2!28156 (h!55522 (toList!3659 lt!1636746))))))))

(assert (= (and d!1348217 (not res!1839074)) b!4441529))

(assert (= (and b!4441529 res!1839075) b!4441530))

(declare-fun m!5130239 () Bool)

(assert (=> b!4441529 m!5130239))

(declare-fun m!5130241 () Bool)

(assert (=> b!4441530 m!5130241))

(assert (=> bs!764159 d!1348217))

(declare-fun bs!764229 () Bool)

(declare-fun b!4441542 () Bool)

(assert (= bs!764229 (and b!4441542 d!1348055)))

(declare-fun lambda!157365 () Int)

(assert (=> bs!764229 (not (= lambda!157365 lambda!157296))))

(assert (=> b!4441542 true))

(declare-fun bs!764230 () Bool)

(declare-fun b!4441545 () Bool)

(assert (= bs!764230 (and b!4441545 d!1348055)))

(declare-fun lambda!157366 () Int)

(assert (=> bs!764230 (not (= lambda!157366 lambda!157296))))

(declare-fun bs!764231 () Bool)

(assert (= bs!764231 (and b!4441545 b!4441542)))

(assert (=> bs!764231 (= lambda!157366 lambda!157365)))

(assert (=> b!4441545 true))

(declare-fun lambda!157367 () Int)

(assert (=> bs!764230 (not (= lambda!157367 lambda!157296))))

(declare-fun lt!1637025 () ListMap!2903)

(assert (=> bs!764231 (= (= lt!1637025 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157367 lambda!157365))))

(assert (=> b!4441545 (= (= lt!1637025 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157367 lambda!157366))))

(assert (=> b!4441545 true))

(declare-fun bs!764232 () Bool)

(declare-fun d!1348219 () Bool)

(assert (= bs!764232 (and d!1348219 d!1348055)))

(declare-fun lambda!157368 () Int)

(assert (=> bs!764232 (not (= lambda!157368 lambda!157296))))

(declare-fun bs!764233 () Bool)

(assert (= bs!764233 (and d!1348219 b!4441542)))

(declare-fun lt!1637014 () ListMap!2903)

(assert (=> bs!764233 (= (= lt!1637014 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157368 lambda!157365))))

(declare-fun bs!764234 () Bool)

(assert (= bs!764234 (and d!1348219 b!4441545)))

(assert (=> bs!764234 (= (= lt!1637014 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157368 lambda!157366))))

(assert (=> bs!764234 (= (= lt!1637014 lt!1637025) (= lambda!157368 lambda!157367))))

(assert (=> d!1348219 true))

(declare-fun b!4441541 () Bool)

(declare-fun e!2765500 () Bool)

(assert (=> b!4441541 (= e!2765500 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) lambda!157367))))

(declare-fun c!755883 () Bool)

(declare-fun call!309030 () Bool)

(declare-fun bm!309023 () Bool)

(assert (=> bm!309023 (= call!309030 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (ite c!755883 lambda!157365 lambda!157366)))))

(declare-fun e!2765501 () ListMap!2903)

(assert (=> b!4441542 (= e!2765501 (extractMap!897 (t!356861 (toList!3659 lm!1616))))))

(declare-fun lt!1637019 () Unit!83897)

(declare-fun call!309029 () Unit!83897)

(assert (=> b!4441542 (= lt!1637019 call!309029)))

(assert (=> b!4441542 call!309030))

(declare-fun lt!1637021 () Unit!83897)

(assert (=> b!4441542 (= lt!1637021 lt!1637019)))

(declare-fun call!309028 () Bool)

(assert (=> b!4441542 call!309028))

(declare-fun lt!1637027 () Unit!83897)

(declare-fun Unit!83924 () Unit!83897)

(assert (=> b!4441542 (= lt!1637027 Unit!83924)))

(declare-fun b!4441543 () Bool)

(declare-fun e!2765502 () Bool)

(assert (=> b!4441543 (= e!2765502 (invariantList!843 (toList!3660 lt!1637014)))))

(declare-fun b!4441544 () Bool)

(declare-fun res!1839082 () Bool)

(assert (=> b!4441544 (=> (not res!1839082) (not e!2765502))))

(assert (=> b!4441544 (= res!1839082 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) lambda!157368))))

(declare-fun bm!309024 () Bool)

(assert (=> bm!309024 (= call!309028 (forall!9705 (ite c!755883 (toList!3660 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (_2!28156 (h!55522 (toList!3659 lm!1616)))) (ite c!755883 lambda!157365 lambda!157367)))))

(assert (=> b!4441545 (= e!2765501 lt!1637025)))

(declare-fun lt!1637010 () ListMap!2903)

(declare-fun +!1220 (ListMap!2903 tuple2!49722) ListMap!2903)

(assert (=> b!4441545 (= lt!1637010 (+!1220 (extractMap!897 (t!356861 (toList!3659 lm!1616))) (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616))))))))

(assert (=> b!4441545 (= lt!1637025 (addToMapMapFromBucket!446 (t!356860 (_2!28156 (h!55522 (toList!3659 lm!1616)))) (+!1220 (extractMap!897 (t!356861 (toList!3659 lm!1616))) (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616)))))))))

(declare-fun lt!1637015 () Unit!83897)

(assert (=> b!4441545 (= lt!1637015 call!309029)))

(assert (=> b!4441545 call!309030))

(declare-fun lt!1637008 () Unit!83897)

(assert (=> b!4441545 (= lt!1637008 lt!1637015)))

(assert (=> b!4441545 (forall!9705 (toList!3660 lt!1637010) lambda!157367)))

(declare-fun lt!1637022 () Unit!83897)

(declare-fun Unit!83925 () Unit!83897)

(assert (=> b!4441545 (= lt!1637022 Unit!83925)))

(assert (=> b!4441545 (forall!9705 (t!356860 (_2!28156 (h!55522 (toList!3659 lm!1616)))) lambda!157367)))

(declare-fun lt!1637009 () Unit!83897)

(declare-fun Unit!83926 () Unit!83897)

(assert (=> b!4441545 (= lt!1637009 Unit!83926)))

(declare-fun lt!1637017 () Unit!83897)

(declare-fun Unit!83927 () Unit!83897)

(assert (=> b!4441545 (= lt!1637017 Unit!83927)))

(declare-fun lt!1637011 () Unit!83897)

(declare-fun forallContained!2142 (List!49918 Int tuple2!49722) Unit!83897)

(assert (=> b!4441545 (= lt!1637011 (forallContained!2142 (toList!3660 lt!1637010) lambda!157367 (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616))))))))

(assert (=> b!4441545 (contains!12365 lt!1637010 (_1!28155 (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616))))))))

(declare-fun lt!1637012 () Unit!83897)

(declare-fun Unit!83928 () Unit!83897)

(assert (=> b!4441545 (= lt!1637012 Unit!83928)))

(assert (=> b!4441545 (contains!12365 lt!1637025 (_1!28155 (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616))))))))

(declare-fun lt!1637023 () Unit!83897)

(declare-fun Unit!83929 () Unit!83897)

(assert (=> b!4441545 (= lt!1637023 Unit!83929)))

(assert (=> b!4441545 (forall!9705 (_2!28156 (h!55522 (toList!3659 lm!1616))) lambda!157367)))

(declare-fun lt!1637018 () Unit!83897)

(declare-fun Unit!83930 () Unit!83897)

(assert (=> b!4441545 (= lt!1637018 Unit!83930)))

(assert (=> b!4441545 (forall!9705 (toList!3660 lt!1637010) lambda!157367)))

(declare-fun lt!1637020 () Unit!83897)

(declare-fun Unit!83931 () Unit!83897)

(assert (=> b!4441545 (= lt!1637020 Unit!83931)))

(declare-fun lt!1637026 () Unit!83897)

(declare-fun Unit!83932 () Unit!83897)

(assert (=> b!4441545 (= lt!1637026 Unit!83932)))

(declare-fun lt!1637016 () Unit!83897)

(declare-fun addForallContainsKeyThenBeforeAdding!205 (ListMap!2903 ListMap!2903 K!11163 V!11409) Unit!83897)

(assert (=> b!4441545 (= lt!1637016 (addForallContainsKeyThenBeforeAdding!205 (extractMap!897 (t!356861 (toList!3659 lm!1616))) lt!1637025 (_1!28155 (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616))))) (_2!28155 (h!55521 (_2!28156 (h!55522 (toList!3659 lm!1616)))))))))

(assert (=> b!4441545 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) lambda!157367)))

(declare-fun lt!1637028 () Unit!83897)

(assert (=> b!4441545 (= lt!1637028 lt!1637016)))

(assert (=> b!4441545 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) lambda!157367)))

(declare-fun lt!1637024 () Unit!83897)

(declare-fun Unit!83933 () Unit!83897)

(assert (=> b!4441545 (= lt!1637024 Unit!83933)))

(declare-fun res!1839083 () Bool)

(assert (=> b!4441545 (= res!1839083 call!309028)))

(assert (=> b!4441545 (=> (not res!1839083) (not e!2765500))))

(assert (=> b!4441545 e!2765500))

(declare-fun lt!1637013 () Unit!83897)

(declare-fun Unit!83934 () Unit!83897)

(assert (=> b!4441545 (= lt!1637013 Unit!83934)))

(declare-fun bm!309025 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!205 (ListMap!2903) Unit!83897)

(assert (=> bm!309025 (= call!309029 (lemmaContainsAllItsOwnKeys!205 (extractMap!897 (t!356861 (toList!3659 lm!1616)))))))

(assert (=> d!1348219 e!2765502))

(declare-fun res!1839084 () Bool)

(assert (=> d!1348219 (=> (not res!1839084) (not e!2765502))))

(assert (=> d!1348219 (= res!1839084 (forall!9705 (_2!28156 (h!55522 (toList!3659 lm!1616))) lambda!157368))))

(assert (=> d!1348219 (= lt!1637014 e!2765501)))

(assert (=> d!1348219 (= c!755883 (is-Nil!49794 (_2!28156 (h!55522 (toList!3659 lm!1616)))))))

(assert (=> d!1348219 (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lm!1616))))))

(assert (=> d!1348219 (= (addToMapMapFromBucket!446 (_2!28156 (h!55522 (toList!3659 lm!1616))) (extractMap!897 (t!356861 (toList!3659 lm!1616)))) lt!1637014)))

(assert (= (and d!1348219 c!755883) b!4441542))

(assert (= (and d!1348219 (not c!755883)) b!4441545))

(assert (= (and b!4441545 res!1839083) b!4441541))

(assert (= (or b!4441542 b!4441545) bm!309025))

(assert (= (or b!4441542 b!4441545) bm!309023))

(assert (= (or b!4441542 b!4441545) bm!309024))

(assert (= (and d!1348219 res!1839084) b!4441544))

(assert (= (and b!4441544 res!1839082) b!4441543))

(assert (=> bm!309025 m!5129897))

(declare-fun m!5130243 () Bool)

(assert (=> bm!309025 m!5130243))

(declare-fun m!5130245 () Bool)

(assert (=> d!1348219 m!5130245))

(assert (=> d!1348219 m!5129909))

(declare-fun m!5130247 () Bool)

(assert (=> bm!309023 m!5130247))

(declare-fun m!5130249 () Bool)

(assert (=> b!4441545 m!5130249))

(declare-fun m!5130251 () Bool)

(assert (=> b!4441545 m!5130251))

(declare-fun m!5130253 () Bool)

(assert (=> b!4441545 m!5130253))

(declare-fun m!5130255 () Bool)

(assert (=> b!4441545 m!5130255))

(declare-fun m!5130257 () Bool)

(assert (=> b!4441545 m!5130257))

(assert (=> b!4441545 m!5130255))

(assert (=> b!4441545 m!5129897))

(declare-fun m!5130259 () Bool)

(assert (=> b!4441545 m!5130259))

(assert (=> b!4441545 m!5130253))

(assert (=> b!4441545 m!5129897))

(declare-fun m!5130261 () Bool)

(assert (=> b!4441545 m!5130261))

(declare-fun m!5130263 () Bool)

(assert (=> b!4441545 m!5130263))

(declare-fun m!5130265 () Bool)

(assert (=> b!4441545 m!5130265))

(assert (=> b!4441545 m!5130261))

(declare-fun m!5130267 () Bool)

(assert (=> b!4441545 m!5130267))

(declare-fun m!5130269 () Bool)

(assert (=> b!4441544 m!5130269))

(declare-fun m!5130271 () Bool)

(assert (=> b!4441543 m!5130271))

(declare-fun m!5130273 () Bool)

(assert (=> bm!309024 m!5130273))

(assert (=> b!4441541 m!5130255))

(assert (=> b!4441233 d!1348219))

(declare-fun bs!764235 () Bool)

(declare-fun d!1348221 () Bool)

(assert (= bs!764235 (and d!1348221 d!1348069)))

(declare-fun lambda!157369 () Int)

(assert (=> bs!764235 (= lambda!157369 lambda!157298)))

(declare-fun bs!764236 () Bool)

(assert (= bs!764236 (and d!1348221 d!1348073)))

(assert (=> bs!764236 (not (= lambda!157369 lambda!157302))))

(declare-fun bs!764237 () Bool)

(assert (= bs!764237 (and d!1348221 start!434534)))

(assert (=> bs!764237 (= lambda!157369 lambda!157273)))

(declare-fun bs!764238 () Bool)

(assert (= bs!764238 (and d!1348221 d!1348071)))

(assert (=> bs!764238 (not (= lambda!157369 lambda!157301))))

(declare-fun bs!764239 () Bool)

(assert (= bs!764239 (and d!1348221 d!1348017)))

(assert (=> bs!764239 (= lambda!157369 lambda!157287)))

(declare-fun bs!764240 () Bool)

(assert (= bs!764240 (and d!1348221 d!1348047)))

(assert (=> bs!764240 (= lambda!157369 lambda!157293)))

(declare-fun lt!1637029 () ListMap!2903)

(assert (=> d!1348221 (invariantList!843 (toList!3660 lt!1637029))))

(declare-fun e!2765503 () ListMap!2903)

(assert (=> d!1348221 (= lt!1637029 e!2765503)))

(declare-fun c!755884 () Bool)

(assert (=> d!1348221 (= c!755884 (is-Cons!49795 (t!356861 (toList!3659 lm!1616))))))

(assert (=> d!1348221 (forall!9703 (t!356861 (toList!3659 lm!1616)) lambda!157369)))

(assert (=> d!1348221 (= (extractMap!897 (t!356861 (toList!3659 lm!1616))) lt!1637029)))

(declare-fun b!4441548 () Bool)

(assert (=> b!4441548 (= e!2765503 (addToMapMapFromBucket!446 (_2!28156 (h!55522 (t!356861 (toList!3659 lm!1616)))) (extractMap!897 (t!356861 (t!356861 (toList!3659 lm!1616))))))))

(declare-fun b!4441549 () Bool)

(assert (=> b!4441549 (= e!2765503 (ListMap!2904 Nil!49794))))

(assert (= (and d!1348221 c!755884) b!4441548))

(assert (= (and d!1348221 (not c!755884)) b!4441549))

(declare-fun m!5130275 () Bool)

(assert (=> d!1348221 m!5130275))

(declare-fun m!5130277 () Bool)

(assert (=> d!1348221 m!5130277))

(declare-fun m!5130279 () Bool)

(assert (=> b!4441548 m!5130279))

(assert (=> b!4441548 m!5130279))

(declare-fun m!5130281 () Bool)

(assert (=> b!4441548 m!5130281))

(assert (=> b!4441233 d!1348221))

(declare-fun bs!764241 () Bool)

(declare-fun b!4441551 () Bool)

(assert (= bs!764241 (and b!4441551 d!1348055)))

(declare-fun lambda!157370 () Int)

(assert (=> bs!764241 (not (= lambda!157370 lambda!157296))))

(declare-fun bs!764242 () Bool)

(assert (= bs!764242 (and b!4441551 b!4441545)))

(assert (=> bs!764242 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157370 lambda!157366))))

(declare-fun bs!764243 () Bool)

(assert (= bs!764243 (and b!4441551 b!4441542)))

(assert (=> bs!764243 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157370 lambda!157365))))

(declare-fun bs!764244 () Bool)

(assert (= bs!764244 (and b!4441551 d!1348219)))

(assert (=> bs!764244 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) lt!1637014) (= lambda!157370 lambda!157368))))

(assert (=> bs!764242 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) lt!1637025) (= lambda!157370 lambda!157367))))

(assert (=> b!4441551 true))

(declare-fun bs!764245 () Bool)

(declare-fun b!4441554 () Bool)

(assert (= bs!764245 (and b!4441554 b!4441551)))

(declare-fun lambda!157371 () Int)

(assert (=> bs!764245 (= lambda!157371 lambda!157370)))

(declare-fun bs!764246 () Bool)

(assert (= bs!764246 (and b!4441554 d!1348055)))

(assert (=> bs!764246 (not (= lambda!157371 lambda!157296))))

(declare-fun bs!764247 () Bool)

(assert (= bs!764247 (and b!4441554 b!4441545)))

(assert (=> bs!764247 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157371 lambda!157366))))

(declare-fun bs!764248 () Bool)

(assert (= bs!764248 (and b!4441554 b!4441542)))

(assert (=> bs!764248 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157371 lambda!157365))))

(declare-fun bs!764249 () Bool)

(assert (= bs!764249 (and b!4441554 d!1348219)))

(assert (=> bs!764249 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) lt!1637014) (= lambda!157371 lambda!157368))))

(assert (=> bs!764247 (= (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) lt!1637025) (= lambda!157371 lambda!157367))))

(assert (=> b!4441554 true))

(declare-fun lt!1637047 () ListMap!2903)

(declare-fun lambda!157372 () Int)

(assert (=> bs!764245 (= (= lt!1637047 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157372 lambda!157370))))

(assert (=> bs!764247 (= (= lt!1637047 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157372 lambda!157366))))

(assert (=> bs!764248 (= (= lt!1637047 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157372 lambda!157365))))

(assert (=> bs!764249 (= (= lt!1637047 lt!1637014) (= lambda!157372 lambda!157368))))

(assert (=> bs!764247 (= (= lt!1637047 lt!1637025) (= lambda!157372 lambda!157367))))

(assert (=> bs!764246 (not (= lambda!157372 lambda!157296))))

(assert (=> b!4441554 (= (= lt!1637047 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157372 lambda!157371))))

(assert (=> b!4441554 true))

(declare-fun bs!764250 () Bool)

(declare-fun d!1348223 () Bool)

(assert (= bs!764250 (and d!1348223 b!4441551)))

(declare-fun lambda!157373 () Int)

(declare-fun lt!1637036 () ListMap!2903)

(assert (=> bs!764250 (= (= lt!1637036 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157373 lambda!157370))))

(declare-fun bs!764251 () Bool)

(assert (= bs!764251 (and d!1348223 b!4441545)))

(assert (=> bs!764251 (= (= lt!1637036 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157373 lambda!157366))))

(declare-fun bs!764252 () Bool)

(assert (= bs!764252 (and d!1348223 b!4441542)))

(assert (=> bs!764252 (= (= lt!1637036 (extractMap!897 (t!356861 (toList!3659 lm!1616)))) (= lambda!157373 lambda!157365))))

(declare-fun bs!764253 () Bool)

(assert (= bs!764253 (and d!1348223 b!4441554)))

(assert (=> bs!764253 (= (= lt!1637036 lt!1637047) (= lambda!157373 lambda!157372))))

(declare-fun bs!764254 () Bool)

(assert (= bs!764254 (and d!1348223 d!1348219)))

(assert (=> bs!764254 (= (= lt!1637036 lt!1637014) (= lambda!157373 lambda!157368))))

(assert (=> bs!764251 (= (= lt!1637036 lt!1637025) (= lambda!157373 lambda!157367))))

(declare-fun bs!764255 () Bool)

(assert (= bs!764255 (and d!1348223 d!1348055)))

(assert (=> bs!764255 (not (= lambda!157373 lambda!157296))))

(assert (=> bs!764253 (= (= lt!1637036 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) (= lambda!157373 lambda!157371))))

(assert (=> d!1348223 true))

(declare-fun b!4441550 () Bool)

(declare-fun e!2765504 () Bool)

(assert (=> b!4441550 (= e!2765504 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) lambda!157372))))

(declare-fun call!309033 () Bool)

(declare-fun bm!309026 () Bool)

(declare-fun c!755885 () Bool)

(assert (=> bm!309026 (= call!309033 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) (ite c!755885 lambda!157370 lambda!157371)))))

(declare-fun e!2765505 () ListMap!2903)

(assert (=> b!4441551 (= e!2765505 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))))))

(declare-fun lt!1637041 () Unit!83897)

(declare-fun call!309032 () Unit!83897)

(assert (=> b!4441551 (= lt!1637041 call!309032)))

(assert (=> b!4441551 call!309033))

(declare-fun lt!1637043 () Unit!83897)

(assert (=> b!4441551 (= lt!1637043 lt!1637041)))

(declare-fun call!309031 () Bool)

(assert (=> b!4441551 call!309031))

(declare-fun lt!1637049 () Unit!83897)

(declare-fun Unit!83935 () Unit!83897)

(assert (=> b!4441551 (= lt!1637049 Unit!83935)))

(declare-fun b!4441552 () Bool)

(declare-fun e!2765506 () Bool)

(assert (=> b!4441552 (= e!2765506 (invariantList!843 (toList!3660 lt!1637036)))))

(declare-fun b!4441553 () Bool)

(declare-fun res!1839085 () Bool)

(assert (=> b!4441553 (=> (not res!1839085) (not e!2765506))))

(assert (=> b!4441553 (= res!1839085 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) lambda!157373))))

(declare-fun bm!309027 () Bool)

(assert (=> bm!309027 (= call!309031 (forall!9705 (ite c!755885 (toList!3660 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616))))) (ite c!755885 lambda!157370 lambda!157372)))))

(assert (=> b!4441554 (= e!2765505 lt!1637047)))

(declare-fun lt!1637032 () ListMap!2903)

(assert (=> b!4441554 (= lt!1637032 (+!1220 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) (h!55521 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))))))))

(assert (=> b!4441554 (= lt!1637047 (addToMapMapFromBucket!446 (t!356860 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616))))) (+!1220 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) (h!55521 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616))))))))))

(declare-fun lt!1637037 () Unit!83897)

(assert (=> b!4441554 (= lt!1637037 call!309032)))

(assert (=> b!4441554 call!309033))

(declare-fun lt!1637030 () Unit!83897)

(assert (=> b!4441554 (= lt!1637030 lt!1637037)))

(assert (=> b!4441554 (forall!9705 (toList!3660 lt!1637032) lambda!157372)))

(declare-fun lt!1637044 () Unit!83897)

(declare-fun Unit!83936 () Unit!83897)

(assert (=> b!4441554 (= lt!1637044 Unit!83936)))

(assert (=> b!4441554 (forall!9705 (t!356860 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616))))) lambda!157372)))

(declare-fun lt!1637031 () Unit!83897)

(declare-fun Unit!83937 () Unit!83897)

(assert (=> b!4441554 (= lt!1637031 Unit!83937)))

(declare-fun lt!1637039 () Unit!83897)

(declare-fun Unit!83938 () Unit!83897)

(assert (=> b!4441554 (= lt!1637039 Unit!83938)))

(declare-fun lt!1637033 () Unit!83897)

(assert (=> b!4441554 (= lt!1637033 (forallContained!2142 (toList!3660 lt!1637032) lambda!157372 (h!55521 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))))))))

(assert (=> b!4441554 (contains!12365 lt!1637032 (_1!28155 (h!55521 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))))))))

(declare-fun lt!1637034 () Unit!83897)

(declare-fun Unit!83939 () Unit!83897)

(assert (=> b!4441554 (= lt!1637034 Unit!83939)))

(assert (=> b!4441554 (contains!12365 lt!1637047 (_1!28155 (h!55521 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))))))))

(declare-fun lt!1637045 () Unit!83897)

(declare-fun Unit!83940 () Unit!83897)

(assert (=> b!4441554 (= lt!1637045 Unit!83940)))

(assert (=> b!4441554 (forall!9705 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))) lambda!157372)))

(declare-fun lt!1637040 () Unit!83897)

(declare-fun Unit!83941 () Unit!83897)

(assert (=> b!4441554 (= lt!1637040 Unit!83941)))

(assert (=> b!4441554 (forall!9705 (toList!3660 lt!1637032) lambda!157372)))

(declare-fun lt!1637042 () Unit!83897)

(declare-fun Unit!83942 () Unit!83897)

(assert (=> b!4441554 (= lt!1637042 Unit!83942)))

(declare-fun lt!1637048 () Unit!83897)

(declare-fun Unit!83943 () Unit!83897)

(assert (=> b!4441554 (= lt!1637048 Unit!83943)))

(declare-fun lt!1637038 () Unit!83897)

(assert (=> b!4441554 (= lt!1637038 (addForallContainsKeyThenBeforeAdding!205 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) lt!1637047 (_1!28155 (h!55521 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))))) (_2!28155 (h!55521 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616))))))))))

(assert (=> b!4441554 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) lambda!157372)))

(declare-fun lt!1637050 () Unit!83897)

(assert (=> b!4441554 (= lt!1637050 lt!1637038)))

(assert (=> b!4441554 (forall!9705 (toList!3660 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) lambda!157372)))

(declare-fun lt!1637046 () Unit!83897)

(declare-fun Unit!83944 () Unit!83897)

(assert (=> b!4441554 (= lt!1637046 Unit!83944)))

(declare-fun res!1839086 () Bool)

(assert (=> b!4441554 (= res!1839086 call!309031)))

(assert (=> b!4441554 (=> (not res!1839086) (not e!2765504))))

(assert (=> b!4441554 e!2765504))

(declare-fun lt!1637035 () Unit!83897)

(declare-fun Unit!83945 () Unit!83897)

(assert (=> b!4441554 (= lt!1637035 Unit!83945)))

(declare-fun bm!309028 () Bool)

(assert (=> bm!309028 (= call!309032 (lemmaContainsAllItsOwnKeys!205 (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))))))

(assert (=> d!1348223 e!2765506))

(declare-fun res!1839087 () Bool)

(assert (=> d!1348223 (=> (not res!1839087) (not e!2765506))))

(assert (=> d!1348223 (= res!1839087 (forall!9705 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))) lambda!157373))))

(assert (=> d!1348223 (= lt!1637036 e!2765505)))

(assert (=> d!1348223 (= c!755885 (is-Nil!49794 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616))))))))

(assert (=> d!1348223 (noDuplicateKeys!836 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))))))

(assert (=> d!1348223 (= (addToMapMapFromBucket!446 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616)))) (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616))))) lt!1637036)))

(assert (= (and d!1348223 c!755885) b!4441551))

(assert (= (and d!1348223 (not c!755885)) b!4441554))

(assert (= (and b!4441554 res!1839086) b!4441550))

(assert (= (or b!4441551 b!4441554) bm!309028))

(assert (= (or b!4441551 b!4441554) bm!309026))

(assert (= (or b!4441551 b!4441554) bm!309027))

(assert (= (and d!1348223 res!1839087) b!4441553))

(assert (= (and b!4441553 res!1839085) b!4441552))

(assert (=> bm!309028 m!5129815))

(declare-fun m!5130283 () Bool)

(assert (=> bm!309028 m!5130283))

(declare-fun m!5130285 () Bool)

(assert (=> d!1348223 m!5130285))

(declare-fun m!5130287 () Bool)

(assert (=> d!1348223 m!5130287))

(declare-fun m!5130289 () Bool)

(assert (=> bm!309026 m!5130289))

(declare-fun m!5130291 () Bool)

(assert (=> b!4441554 m!5130291))

(declare-fun m!5130293 () Bool)

(assert (=> b!4441554 m!5130293))

(declare-fun m!5130295 () Bool)

(assert (=> b!4441554 m!5130295))

(declare-fun m!5130297 () Bool)

(assert (=> b!4441554 m!5130297))

(declare-fun m!5130299 () Bool)

(assert (=> b!4441554 m!5130299))

(assert (=> b!4441554 m!5130297))

(assert (=> b!4441554 m!5129815))

(declare-fun m!5130301 () Bool)

(assert (=> b!4441554 m!5130301))

(assert (=> b!4441554 m!5130295))

(assert (=> b!4441554 m!5129815))

(declare-fun m!5130303 () Bool)

(assert (=> b!4441554 m!5130303))

(declare-fun m!5130305 () Bool)

(assert (=> b!4441554 m!5130305))

(declare-fun m!5130307 () Bool)

(assert (=> b!4441554 m!5130307))

(assert (=> b!4441554 m!5130303))

(declare-fun m!5130309 () Bool)

(assert (=> b!4441554 m!5130309))

(declare-fun m!5130311 () Bool)

(assert (=> b!4441553 m!5130311))

(declare-fun m!5130313 () Bool)

(assert (=> b!4441552 m!5130313))

(declare-fun m!5130315 () Bool)

(assert (=> bm!309027 m!5130315))

(assert (=> b!4441550 m!5130297))

(assert (=> b!4441172 d!1348223))

(declare-fun bs!764256 () Bool)

(declare-fun d!1348225 () Bool)

(assert (= bs!764256 (and d!1348225 d!1348069)))

(declare-fun lambda!157374 () Int)

(assert (=> bs!764256 (= lambda!157374 lambda!157298)))

(declare-fun bs!764257 () Bool)

(assert (= bs!764257 (and d!1348225 d!1348073)))

(assert (=> bs!764257 (not (= lambda!157374 lambda!157302))))

(declare-fun bs!764258 () Bool)

(assert (= bs!764258 (and d!1348225 start!434534)))

(assert (=> bs!764258 (= lambda!157374 lambda!157273)))

(declare-fun bs!764259 () Bool)

(assert (= bs!764259 (and d!1348225 d!1348221)))

(assert (=> bs!764259 (= lambda!157374 lambda!157369)))

(declare-fun bs!764260 () Bool)

(assert (= bs!764260 (and d!1348225 d!1348071)))

(assert (=> bs!764260 (not (= lambda!157374 lambda!157301))))

(declare-fun bs!764261 () Bool)

(assert (= bs!764261 (and d!1348225 d!1348017)))

(assert (=> bs!764261 (= lambda!157374 lambda!157287)))

(declare-fun bs!764262 () Bool)

(assert (= bs!764262 (and d!1348225 d!1348047)))

(assert (=> bs!764262 (= lambda!157374 lambda!157293)))

(declare-fun lt!1637051 () ListMap!2903)

(assert (=> d!1348225 (invariantList!843 (toList!3660 lt!1637051))))

(declare-fun e!2765507 () ListMap!2903)

(assert (=> d!1348225 (= lt!1637051 e!2765507)))

(declare-fun c!755886 () Bool)

(assert (=> d!1348225 (= c!755886 (is-Cons!49795 (t!356861 (tail!7373 (toList!3659 lm!1616)))))))

(assert (=> d!1348225 (forall!9703 (t!356861 (tail!7373 (toList!3659 lm!1616))) lambda!157374)))

(assert (=> d!1348225 (= (extractMap!897 (t!356861 (tail!7373 (toList!3659 lm!1616)))) lt!1637051)))

(declare-fun b!4441555 () Bool)

(assert (=> b!4441555 (= e!2765507 (addToMapMapFromBucket!446 (_2!28156 (h!55522 (t!356861 (tail!7373 (toList!3659 lm!1616))))) (extractMap!897 (t!356861 (t!356861 (tail!7373 (toList!3659 lm!1616)))))))))

(declare-fun b!4441556 () Bool)

(assert (=> b!4441556 (= e!2765507 (ListMap!2904 Nil!49794))))

(assert (= (and d!1348225 c!755886) b!4441555))

(assert (= (and d!1348225 (not c!755886)) b!4441556))

(declare-fun m!5130317 () Bool)

(assert (=> d!1348225 m!5130317))

(declare-fun m!5130319 () Bool)

(assert (=> d!1348225 m!5130319))

(declare-fun m!5130321 () Bool)

(assert (=> b!4441555 m!5130321))

(assert (=> b!4441555 m!5130321))

(declare-fun m!5130323 () Bool)

(assert (=> b!4441555 m!5130323))

(assert (=> b!4441172 d!1348225))

(declare-fun e!2765508 () Bool)

(declare-fun tp!1334203 () Bool)

(declare-fun b!4441557 () Bool)

(assert (=> b!4441557 (= e!2765508 (and tp_is_empty!26591 tp_is_empty!26589 tp!1334203))))

(assert (=> b!4441247 (= tp!1334189 e!2765508)))

(assert (= (and b!4441247 (is-Cons!49794 (_2!28156 (h!55522 (toList!3659 lm!1616))))) b!4441557))

(declare-fun b!4441558 () Bool)

(declare-fun e!2765509 () Bool)

(declare-fun tp!1334204 () Bool)

(declare-fun tp!1334205 () Bool)

(assert (=> b!4441558 (= e!2765509 (and tp!1334204 tp!1334205))))

(assert (=> b!4441247 (= tp!1334190 e!2765509)))

(assert (= (and b!4441247 (is-Cons!49795 (t!356861 (toList!3659 lm!1616)))) b!4441558))

(declare-fun b!4441559 () Bool)

(declare-fun e!2765510 () Bool)

(declare-fun tp!1334206 () Bool)

(assert (=> b!4441559 (= e!2765510 (and tp_is_empty!26591 tp_is_empty!26589 tp!1334206))))

(assert (=> b!4441252 (= tp!1334193 e!2765510)))

(assert (= (and b!4441252 (is-Cons!49794 (t!356860 (t!356860 newBucket!194)))) b!4441559))

(declare-fun b_lambda!145077 () Bool)

(assert (= b_lambda!145063 (or d!1348055 b_lambda!145077)))

(declare-fun bs!764263 () Bool)

(declare-fun d!1348227 () Bool)

(assert (= bs!764263 (and d!1348227 d!1348055)))

(assert (=> bs!764263 (= (dynLambda!20912 lambda!157296 (h!55521 newBucket!194)) (= (hash!2291 hashF!1220 (_1!28155 (h!55521 newBucket!194))) hash!366))))

(declare-fun m!5130325 () Bool)

(assert (=> bs!764263 m!5130325))

(assert (=> b!4441443 d!1348227))

(declare-fun b_lambda!145079 () Bool)

(assert (= b_lambda!145059 (or d!1348069 b_lambda!145079)))

(declare-fun bs!764264 () Bool)

(declare-fun d!1348229 () Bool)

(assert (= bs!764264 (and d!1348229 d!1348069)))

(assert (=> bs!764264 (= (dynLambda!20910 lambda!157298 (h!55522 (toList!3659 lm!1616))) (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lm!1616)))))))

(assert (=> bs!764264 m!5129909))

(assert (=> b!4441349 d!1348229))

(declare-fun b_lambda!145081 () Bool)

(assert (= b_lambda!145065 (or d!1348073 b_lambda!145081)))

(declare-fun bs!764265 () Bool)

(declare-fun d!1348231 () Bool)

(assert (= bs!764265 (and d!1348231 d!1348073)))

(assert (=> bs!764265 (= (dynLambda!20910 lambda!157302 (h!55522 (toList!3659 lm!1616))) (allKeysSameHash!796 (_2!28156 (h!55522 (toList!3659 lm!1616))) (_1!28156 (h!55522 (toList!3659 lm!1616))) hashF!1220))))

(declare-fun m!5130327 () Bool)

(assert (=> bs!764265 m!5130327))

(assert (=> b!4441457 d!1348231))

(declare-fun b_lambda!145083 () Bool)

(assert (= b_lambda!145073 (or start!434534 b_lambda!145083)))

(declare-fun bs!764266 () Bool)

(declare-fun d!1348233 () Bool)

(assert (= bs!764266 (and d!1348233 start!434534)))

(assert (=> bs!764266 (= (dynLambda!20910 lambda!157273 (h!55522 (t!356861 (toList!3659 lm!1616)))) (noDuplicateKeys!836 (_2!28156 (h!55522 (t!356861 (toList!3659 lm!1616))))))))

(declare-fun m!5130329 () Bool)

(assert (=> bs!764266 m!5130329))

(assert (=> b!4441522 d!1348233))

(declare-fun b_lambda!145085 () Bool)

(assert (= b_lambda!145071 (or d!1348047 b_lambda!145085)))

(declare-fun bs!764267 () Bool)

(declare-fun d!1348235 () Bool)

(assert (= bs!764267 (and d!1348235 d!1348047)))

(assert (=> bs!764267 (= (dynLambda!20910 lambda!157293 (h!55522 (tail!7373 (toList!3659 lm!1616)))) (noDuplicateKeys!836 (_2!28156 (h!55522 (tail!7373 (toList!3659 lm!1616))))))))

(assert (=> bs!764267 m!5130287))

(assert (=> b!4441474 d!1348235))

(declare-fun b_lambda!145087 () Bool)

(assert (= b_lambda!145075 (or start!434534 b_lambda!145087)))

(declare-fun bs!764268 () Bool)

(declare-fun d!1348237 () Bool)

(assert (= bs!764268 (and d!1348237 start!434534)))

(assert (=> bs!764268 (= (dynLambda!20910 lambda!157273 (h!55522 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194))))) (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 (+!1218 lm!1616 (tuple2!49725 hash!366 newBucket!194)))))))))

(declare-fun m!5130331 () Bool)

(assert (=> bs!764268 m!5130331))

(assert (=> b!4441526 d!1348237))

(declare-fun b_lambda!145089 () Bool)

(assert (= b_lambda!145067 (or d!1348017 b_lambda!145089)))

(declare-fun bs!764269 () Bool)

(declare-fun d!1348239 () Bool)

(assert (= bs!764269 (and d!1348239 d!1348017)))

(assert (=> bs!764269 (= (dynLambda!20910 lambda!157287 (h!55522 (toList!3659 lm!1616))) (noDuplicateKeys!836 (_2!28156 (h!55522 (toList!3659 lm!1616)))))))

(assert (=> bs!764269 m!5129909))

(assert (=> b!4441459 d!1348239))

(declare-fun b_lambda!145091 () Bool)

(assert (= b_lambda!145061 (or start!434534 b_lambda!145091)))

(declare-fun bs!764270 () Bool)

(declare-fun d!1348241 () Bool)

(assert (= bs!764270 (and d!1348241 start!434534)))

(assert (=> bs!764270 (= (dynLambda!20910 lambda!157273 (h!55522 (t!356861 (toList!3659 lt!1636749)))) (noDuplicateKeys!836 (_2!28156 (h!55522 (t!356861 (toList!3659 lt!1636749))))))))

(declare-fun m!5130333 () Bool)

(assert (=> bs!764270 m!5130333))

(assert (=> b!4441424 d!1348241))

(declare-fun b_lambda!145093 () Bool)

(assert (= b_lambda!145057 (or d!1348071 b_lambda!145093)))

(declare-fun bs!764271 () Bool)

(declare-fun d!1348243 () Bool)

(assert (= bs!764271 (and d!1348243 d!1348071)))

(assert (=> bs!764271 (= (dynLambda!20910 lambda!157301 (h!55522 (toList!3659 lt!1636746))) (allKeysSameHash!796 (_2!28156 (h!55522 (toList!3659 lt!1636746))) (_1!28156 (h!55522 (toList!3659 lt!1636746))) hashF!1220))))

(declare-fun m!5130335 () Bool)

(assert (=> bs!764271 m!5130335))

(assert (=> b!4441322 d!1348243))

(declare-fun b_lambda!145095 () Bool)

(assert (= b_lambda!145069 (or start!434534 b_lambda!145095)))

(declare-fun bs!764272 () Bool)

(declare-fun d!1348245 () Bool)

(assert (= bs!764272 (and d!1348245 start!434534)))

(assert (=> bs!764272 (= (dynLambda!20910 lambda!157273 (h!55522 (t!356861 (toList!3659 lt!1636746)))) (noDuplicateKeys!836 (_2!28156 (h!55522 (t!356861 (toList!3659 lt!1636746))))))))

(declare-fun m!5130337 () Bool)

(assert (=> bs!764272 m!5130337))

(assert (=> b!4441461 d!1348245))

(push 1)

(assert (not bs!764264))

(assert (not b!4441466))

(assert (not b!4441498))

(assert (not b!4441545))

(assert (not d!1348197))

(assert (not b!4441465))

(assert (not d!1348181))

(assert (not d!1348219))

(assert (not d!1348171))

(assert (not b!4441505))

(assert (not b!4441473))

(assert (not b!4441502))

(assert (not b!4441512))

(assert (not b!4441364))

(assert (not b_lambda!145083))

(assert (not b!4441475))

(assert (not d!1348159))

(assert (not b!4441392))

(assert (not d!1348173))

(assert (not d!1348165))

(assert (not d!1348223))

(assert (not b!4441352))

(assert (not d!1348143))

(assert (not bs!764267))

(assert (not b!4441351))

(assert (not bs!764265))

(assert (not b!4441467))

(assert (not b!4441552))

(assert (not b!4441340))

(assert (not d!1348177))

(assert (not b_lambda!145089))

(assert (not b_lambda!145041))

(assert (not b!4441559))

(assert (not b!4441500))

(assert (not b!4441350))

(assert (not b!4441464))

(assert (not b!4441458))

(assert (not d!1348133))

(assert (not b_lambda!145043))

(assert (not bm!309024))

(assert (not b!4441339))

(assert (not b!4441497))

(assert (not bs!764263))

(assert (not bs!764271))

(assert (not b!4441346))

(assert (not d!1348221))

(assert (not b!4441444))

(assert (not b!4441529))

(assert (not b_lambda!145079))

(assert (not b!4441513))

(assert (not d!1348215))

(assert (not bs!764272))

(assert (not b!4441511))

(assert (not d!1348211))

(assert (not d!1348205))

(assert (not b!4441391))

(assert (not b!4441347))

(assert (not d!1348199))

(assert (not b!4441435))

(assert (not bm!309028))

(assert (not d!1348187))

(assert (not d!1348203))

(assert (not b!4441518))

(assert (not b!4441499))

(assert (not d!1348153))

(assert (not b_lambda!145085))

(assert (not b!4441525))

(assert (not b!4441510))

(assert (not b_lambda!145091))

(assert (not b!4441554))

(assert (not b!4441541))

(assert (not b!4441527))

(assert (not b!4441521))

(assert (not b_lambda!145077))

(assert (not b!4441558))

(assert (not d!1348225))

(assert (not b_lambda!145081))

(assert (not b!4441413))

(assert (not b!4441543))

(assert (not d!1348137))

(assert (not b!4441323))

(assert (not b!4441515))

(assert (not b!4441338))

(assert (not b!4441407))

(assert (not d!1348145))

(assert (not d!1348127))

(assert (not bs!764268))

(assert (not b!4441434))

(assert (not bm!309015))

(assert (not b!4441506))

(assert (not b!4441462))

(assert (not b!4441358))

(assert (not b!4441353))

(assert (not b!4441365))

(assert (not b_lambda!145093))

(assert (not b!4441557))

(assert (not bs!764266))

(assert (not b!4441523))

(assert (not b!4441348))

(assert (not d!1348183))

(assert (not b!4441555))

(assert (not b_lambda!145045))

(assert (not b!4441550))

(assert (not b!4441455))

(assert tp_is_empty!26591)

(assert (not d!1348175))

(assert (not b!4441334))

(assert (not d!1348195))

(assert (not bm!309027))

(assert (not b!4441553))

(assert (not d!1348189))

(assert (not b!4441544))

(assert (not b!4441425))

(assert (not bm!309026))

(assert (not b!4441460))

(assert (not d!1348115))

(assert (not b!4441427))

(assert (not b!4441355))

(assert (not b_lambda!145039))

(assert tp_is_empty!26589)

(assert (not b!4441388))

(assert (not bs!764269))

(assert (not b_lambda!145095))

(assert (not bm!309025))

(assert (not bm!309023))

(assert (not b!4441419))

(assert (not bs!764270))

(assert (not d!1348155))

(assert (not b!4441401))

(assert (not d!1348119))

(assert (not d!1348139))

(assert (not b_lambda!145087))

(assert (not b!4441548))

(assert (not b!4441436))

(assert (not b!4441422))

(assert (not b!4441530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


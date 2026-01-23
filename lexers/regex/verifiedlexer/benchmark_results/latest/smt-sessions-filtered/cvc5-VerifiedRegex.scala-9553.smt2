; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503352 () Bool)

(assert start!503352)

(declare-fun b!4838597 () Bool)

(declare-fun res!2062374 () Bool)

(declare-fun e!3023888 () Bool)

(assert (=> b!4838597 (=> (not res!2062374) (not e!3023888))))

(declare-fun e!3023889 () Bool)

(assert (=> b!4838597 (= res!2062374 e!3023889)))

(declare-fun res!2062378 () Bool)

(assert (=> b!4838597 (=> res!2062378 e!3023889)))

(declare-datatypes ((K!17052 0))(
  ( (K!17053 (val!21947 Int)) )
))
(declare-datatypes ((V!17298 0))(
  ( (V!17299 (val!21948 Int)) )
))
(declare-datatypes ((tuple2!58766 0))(
  ( (tuple2!58767 (_1!32677 K!17052) (_2!32677 V!17298)) )
))
(declare-datatypes ((List!55424 0))(
  ( (Nil!55300) (Cons!55300 (h!61735 tuple2!58766) (t!362920 List!55424)) )
))
(declare-datatypes ((tuple2!58768 0))(
  ( (tuple2!58769 (_1!32678 (_ BitVec 64)) (_2!32678 List!55424)) )
))
(declare-datatypes ((List!55425 0))(
  ( (Nil!55301) (Cons!55301 (h!61736 tuple2!58768) (t!362921 List!55425)) )
))
(declare-datatypes ((ListLongMap!6249 0))(
  ( (ListLongMap!6250 (toList!7709 List!55425)) )
))
(declare-fun lm!2671 () ListLongMap!6249)

(assert (=> b!4838597 (= res!2062378 (not (is-Cons!55301 (toList!7709 lm!2671))))))

(declare-fun b!4838598 () Bool)

(declare-fun e!3023886 () Bool)

(assert (=> b!4838598 (= e!3023888 e!3023886)))

(declare-fun res!2062372 () Bool)

(assert (=> b!4838598 (=> (not res!2062372) (not e!3023886))))

(declare-datatypes ((ListMap!7063 0))(
  ( (ListMap!7064 (toList!7710 List!55424)) )
))
(declare-fun lt!1983350 () ListMap!7063)

(declare-fun extractMap!2751 (List!55425) ListMap!7063)

(declare-fun addToMapMapFromBucket!1891 (List!55424 ListMap!7063) ListMap!7063)

(assert (=> b!4838598 (= res!2062372 (= (extractMap!2751 (toList!7709 lm!2671)) (addToMapMapFromBucket!1891 (_2!32678 (h!61736 (toList!7709 lm!2671))) lt!1983350)))))

(assert (=> b!4838598 (= lt!1983350 (extractMap!2751 (t!362921 (toList!7709 lm!2671))))))

(declare-fun b!4838599 () Bool)

(declare-fun res!2062373 () Bool)

(assert (=> b!4838599 (=> (not res!2062373) (not e!3023888))))

(declare-fun key!6540 () K!17052)

(declare-fun containsKeyBiggerList!677 (List!55425 K!17052) Bool)

(assert (=> b!4838599 (= res!2062373 (containsKeyBiggerList!677 (toList!7709 lm!2671) key!6540))))

(declare-fun b!4838600 () Bool)

(declare-fun containsKey!4551 (List!55424 K!17052) Bool)

(assert (=> b!4838600 (= e!3023889 (not (containsKey!4551 (_2!32678 (h!61736 (toList!7709 lm!2671))) key!6540)))))

(declare-fun res!2062371 () Bool)

(assert (=> start!503352 (=> (not res!2062371) (not e!3023888))))

(declare-fun lambda!240306 () Int)

(declare-fun forall!12806 (List!55425 Int) Bool)

(assert (=> start!503352 (= res!2062371 (forall!12806 (toList!7709 lm!2671) lambda!240306))))

(assert (=> start!503352 e!3023888))

(declare-fun e!3023887 () Bool)

(declare-fun inv!70953 (ListLongMap!6249) Bool)

(assert (=> start!503352 (and (inv!70953 lm!2671) e!3023887)))

(assert (=> start!503352 true))

(declare-fun tp_is_empty!34889 () Bool)

(assert (=> start!503352 tp_is_empty!34889))

(declare-fun b!4838601 () Bool)

(declare-fun e!3023890 () Bool)

(declare-fun e!3023885 () Bool)

(assert (=> b!4838601 (= e!3023890 e!3023885)))

(declare-fun res!2062376 () Bool)

(assert (=> b!4838601 (=> res!2062376 e!3023885)))

(declare-fun contains!19063 (ListMap!7063 K!17052) Bool)

(assert (=> b!4838601 (= res!2062376 (not (contains!19063 lt!1983350 key!6540)))))

(declare-fun lt!1983348 () ListLongMap!6249)

(assert (=> b!4838601 (contains!19063 (extractMap!2751 (toList!7709 lt!1983348)) key!6540)))

(declare-datatypes ((Hashable!7393 0))(
  ( (HashableExt!7392 (__x!33668 Int)) )
))
(declare-fun hashF!1662 () Hashable!7393)

(declare-datatypes ((Unit!144833 0))(
  ( (Unit!144834) )
))
(declare-fun lt!1983347 () Unit!144833)

(declare-fun lemmaListContainsThenExtractedMapContains!737 (ListLongMap!6249 K!17052 Hashable!7393) Unit!144833)

(assert (=> b!4838601 (= lt!1983347 (lemmaListContainsThenExtractedMapContains!737 lt!1983348 key!6540 hashF!1662))))

(declare-fun tail!9463 (ListLongMap!6249) ListLongMap!6249)

(assert (=> b!4838601 (= lt!1983348 (tail!9463 lm!2671))))

(declare-fun b!4838602 () Bool)

(declare-fun res!2062375 () Bool)

(assert (=> b!4838602 (=> (not res!2062375) (not e!3023888))))

(declare-fun allKeysSameHashInMap!2709 (ListLongMap!6249 Hashable!7393) Bool)

(assert (=> b!4838602 (= res!2062375 (allKeysSameHashInMap!2709 lm!2671 hashF!1662))))

(declare-fun b!4838603 () Bool)

(assert (=> b!4838603 (= e!3023886 (not e!3023890))))

(declare-fun res!2062379 () Bool)

(assert (=> b!4838603 (=> res!2062379 e!3023890)))

(assert (=> b!4838603 (= res!2062379 (not (containsKeyBiggerList!677 (t!362921 (toList!7709 lm!2671)) key!6540)))))

(declare-fun tail!9464 (List!55425) List!55425)

(assert (=> b!4838603 (containsKeyBiggerList!677 (tail!9464 (toList!7709 lm!2671)) key!6540)))

(declare-fun lt!1983346 () Unit!144833)

(declare-fun lemmaInBiggerListButNotHeadThenTail!37 (ListLongMap!6249 K!17052 Hashable!7393) Unit!144833)

(assert (=> b!4838603 (= lt!1983346 (lemmaInBiggerListButNotHeadThenTail!37 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4838604 () Bool)

(declare-fun res!2062377 () Bool)

(assert (=> b!4838604 (=> (not res!2062377) (not e!3023888))))

(assert (=> b!4838604 (= res!2062377 (is-Cons!55301 (toList!7709 lm!2671)))))

(declare-fun b!4838605 () Bool)

(assert (=> b!4838605 (= e!3023885 (forall!12806 (t!362921 (toList!7709 lm!2671)) lambda!240306))))

(declare-datatypes ((Option!13596 0))(
  ( (None!13595) (Some!13595 (v!49317 V!17298)) )
))
(declare-fun lt!1983349 () Option!13596)

(declare-fun getValueByKey!2694 (List!55424 K!17052) Option!13596)

(assert (=> b!4838605 (= lt!1983349 (getValueByKey!2694 (toList!7710 lt!1983350) key!6540))))

(declare-fun b!4838606 () Bool)

(declare-fun tp!1363675 () Bool)

(assert (=> b!4838606 (= e!3023887 tp!1363675)))

(assert (= (and start!503352 res!2062371) b!4838602))

(assert (= (and b!4838602 res!2062375) b!4838599))

(assert (= (and b!4838599 res!2062373) b!4838597))

(assert (= (and b!4838597 (not res!2062378)) b!4838600))

(assert (= (and b!4838597 res!2062374) b!4838604))

(assert (= (and b!4838604 res!2062377) b!4838598))

(assert (= (and b!4838598 res!2062372) b!4838603))

(assert (= (and b!4838603 (not res!2062379)) b!4838601))

(assert (= (and b!4838601 (not res!2062376)) b!4838605))

(assert (= start!503352 b!4838606))

(declare-fun m!5834134 () Bool)

(assert (=> b!4838600 m!5834134))

(declare-fun m!5834136 () Bool)

(assert (=> start!503352 m!5834136))

(declare-fun m!5834138 () Bool)

(assert (=> start!503352 m!5834138))

(declare-fun m!5834140 () Bool)

(assert (=> b!4838603 m!5834140))

(declare-fun m!5834142 () Bool)

(assert (=> b!4838603 m!5834142))

(assert (=> b!4838603 m!5834142))

(declare-fun m!5834144 () Bool)

(assert (=> b!4838603 m!5834144))

(declare-fun m!5834146 () Bool)

(assert (=> b!4838603 m!5834146))

(declare-fun m!5834148 () Bool)

(assert (=> b!4838598 m!5834148))

(declare-fun m!5834150 () Bool)

(assert (=> b!4838598 m!5834150))

(declare-fun m!5834152 () Bool)

(assert (=> b!4838598 m!5834152))

(declare-fun m!5834154 () Bool)

(assert (=> b!4838605 m!5834154))

(declare-fun m!5834156 () Bool)

(assert (=> b!4838605 m!5834156))

(declare-fun m!5834158 () Bool)

(assert (=> b!4838601 m!5834158))

(declare-fun m!5834160 () Bool)

(assert (=> b!4838601 m!5834160))

(declare-fun m!5834162 () Bool)

(assert (=> b!4838601 m!5834162))

(declare-fun m!5834164 () Bool)

(assert (=> b!4838601 m!5834164))

(declare-fun m!5834166 () Bool)

(assert (=> b!4838601 m!5834166))

(assert (=> b!4838601 m!5834158))

(declare-fun m!5834168 () Bool)

(assert (=> b!4838602 m!5834168))

(declare-fun m!5834170 () Bool)

(assert (=> b!4838599 m!5834170))

(push 1)

(assert (not b!4838598))

(assert (not b!4838603))

(assert (not b!4838602))

(assert tp_is_empty!34889)

(assert (not b!4838600))

(assert (not b!4838601))

(assert (not b!4838606))

(assert (not b!4838605))

(assert (not b!4838599))

(assert (not start!503352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551126 () Bool)

(declare-fun res!2062415 () Bool)

(declare-fun e!3023915 () Bool)

(assert (=> d!1551126 (=> res!2062415 e!3023915)))

(declare-fun e!3023916 () Bool)

(assert (=> d!1551126 (= res!2062415 e!3023916)))

(declare-fun res!2062414 () Bool)

(assert (=> d!1551126 (=> (not res!2062414) (not e!3023916))))

(assert (=> d!1551126 (= res!2062414 (is-Cons!55301 (toList!7709 lm!2671)))))

(assert (=> d!1551126 (= (containsKeyBiggerList!677 (toList!7709 lm!2671) key!6540) e!3023915)))

(declare-fun b!4838643 () Bool)

(assert (=> b!4838643 (= e!3023916 (containsKey!4551 (_2!32678 (h!61736 (toList!7709 lm!2671))) key!6540))))

(declare-fun b!4838644 () Bool)

(declare-fun e!3023917 () Bool)

(assert (=> b!4838644 (= e!3023915 e!3023917)))

(declare-fun res!2062413 () Bool)

(assert (=> b!4838644 (=> (not res!2062413) (not e!3023917))))

(assert (=> b!4838644 (= res!2062413 (is-Cons!55301 (toList!7709 lm!2671)))))

(declare-fun b!4838645 () Bool)

(assert (=> b!4838645 (= e!3023917 (containsKeyBiggerList!677 (t!362921 (toList!7709 lm!2671)) key!6540))))

(assert (= (and d!1551126 res!2062414) b!4838643))

(assert (= (and d!1551126 (not res!2062415)) b!4838644))

(assert (= (and b!4838644 res!2062413) b!4838645))

(assert (=> b!4838643 m!5834134))

(assert (=> b!4838645 m!5834140))

(assert (=> b!4838599 d!1551126))

(declare-fun d!1551128 () Bool)

(declare-fun res!2062420 () Bool)

(declare-fun e!3023922 () Bool)

(assert (=> d!1551128 (=> res!2062420 e!3023922)))

(assert (=> d!1551128 (= res!2062420 (and (is-Cons!55300 (_2!32678 (h!61736 (toList!7709 lm!2671)))) (= (_1!32677 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671))))) key!6540)))))

(assert (=> d!1551128 (= (containsKey!4551 (_2!32678 (h!61736 (toList!7709 lm!2671))) key!6540) e!3023922)))

(declare-fun b!4838650 () Bool)

(declare-fun e!3023923 () Bool)

(assert (=> b!4838650 (= e!3023922 e!3023923)))

(declare-fun res!2062421 () Bool)

(assert (=> b!4838650 (=> (not res!2062421) (not e!3023923))))

(assert (=> b!4838650 (= res!2062421 (is-Cons!55300 (_2!32678 (h!61736 (toList!7709 lm!2671)))))))

(declare-fun b!4838651 () Bool)

(assert (=> b!4838651 (= e!3023923 (containsKey!4551 (t!362920 (_2!32678 (h!61736 (toList!7709 lm!2671)))) key!6540))))

(assert (= (and d!1551128 (not res!2062420)) b!4838650))

(assert (= (and b!4838650 res!2062421) b!4838651))

(declare-fun m!5834210 () Bool)

(assert (=> b!4838651 m!5834210))

(assert (=> b!4838600 d!1551128))

(declare-fun d!1551130 () Bool)

(declare-fun res!2062426 () Bool)

(declare-fun e!3023928 () Bool)

(assert (=> d!1551130 (=> res!2062426 e!3023928)))

(assert (=> d!1551130 (= res!2062426 (is-Nil!55301 (t!362921 (toList!7709 lm!2671))))))

(assert (=> d!1551130 (= (forall!12806 (t!362921 (toList!7709 lm!2671)) lambda!240306) e!3023928)))

(declare-fun b!4838656 () Bool)

(declare-fun e!3023929 () Bool)

(assert (=> b!4838656 (= e!3023928 e!3023929)))

(declare-fun res!2062427 () Bool)

(assert (=> b!4838656 (=> (not res!2062427) (not e!3023929))))

(declare-fun dynLambda!22282 (Int tuple2!58768) Bool)

(assert (=> b!4838656 (= res!2062427 (dynLambda!22282 lambda!240306 (h!61736 (t!362921 (toList!7709 lm!2671)))))))

(declare-fun b!4838657 () Bool)

(assert (=> b!4838657 (= e!3023929 (forall!12806 (t!362921 (t!362921 (toList!7709 lm!2671))) lambda!240306))))

(assert (= (and d!1551130 (not res!2062426)) b!4838656))

(assert (= (and b!4838656 res!2062427) b!4838657))

(declare-fun b_lambda!191251 () Bool)

(assert (=> (not b_lambda!191251) (not b!4838656)))

(declare-fun m!5834212 () Bool)

(assert (=> b!4838656 m!5834212))

(declare-fun m!5834214 () Bool)

(assert (=> b!4838657 m!5834214))

(assert (=> b!4838605 d!1551130))

(declare-fun b!4838669 () Bool)

(declare-fun e!3023935 () Option!13596)

(assert (=> b!4838669 (= e!3023935 None!13595)))

(declare-fun b!4838666 () Bool)

(declare-fun e!3023934 () Option!13596)

(assert (=> b!4838666 (= e!3023934 (Some!13595 (_2!32677 (h!61735 (toList!7710 lt!1983350)))))))

(declare-fun d!1551132 () Bool)

(declare-fun c!824106 () Bool)

(assert (=> d!1551132 (= c!824106 (and (is-Cons!55300 (toList!7710 lt!1983350)) (= (_1!32677 (h!61735 (toList!7710 lt!1983350))) key!6540)))))

(assert (=> d!1551132 (= (getValueByKey!2694 (toList!7710 lt!1983350) key!6540) e!3023934)))

(declare-fun b!4838667 () Bool)

(assert (=> b!4838667 (= e!3023934 e!3023935)))

(declare-fun c!824107 () Bool)

(assert (=> b!4838667 (= c!824107 (and (is-Cons!55300 (toList!7710 lt!1983350)) (not (= (_1!32677 (h!61735 (toList!7710 lt!1983350))) key!6540))))))

(declare-fun b!4838668 () Bool)

(assert (=> b!4838668 (= e!3023935 (getValueByKey!2694 (t!362920 (toList!7710 lt!1983350)) key!6540))))

(assert (= (and d!1551132 c!824106) b!4838666))

(assert (= (and d!1551132 (not c!824106)) b!4838667))

(assert (= (and b!4838667 c!824107) b!4838668))

(assert (= (and b!4838667 (not c!824107)) b!4838669))

(declare-fun m!5834216 () Bool)

(assert (=> b!4838668 m!5834216))

(assert (=> b!4838605 d!1551132))

(declare-fun d!1551134 () Bool)

(declare-fun res!2062428 () Bool)

(declare-fun e!3023936 () Bool)

(assert (=> d!1551134 (=> res!2062428 e!3023936)))

(assert (=> d!1551134 (= res!2062428 (is-Nil!55301 (toList!7709 lm!2671)))))

(assert (=> d!1551134 (= (forall!12806 (toList!7709 lm!2671) lambda!240306) e!3023936)))

(declare-fun b!4838670 () Bool)

(declare-fun e!3023937 () Bool)

(assert (=> b!4838670 (= e!3023936 e!3023937)))

(declare-fun res!2062429 () Bool)

(assert (=> b!4838670 (=> (not res!2062429) (not e!3023937))))

(assert (=> b!4838670 (= res!2062429 (dynLambda!22282 lambda!240306 (h!61736 (toList!7709 lm!2671))))))

(declare-fun b!4838671 () Bool)

(assert (=> b!4838671 (= e!3023937 (forall!12806 (t!362921 (toList!7709 lm!2671)) lambda!240306))))

(assert (= (and d!1551134 (not res!2062428)) b!4838670))

(assert (= (and b!4838670 res!2062429) b!4838671))

(declare-fun b_lambda!191253 () Bool)

(assert (=> (not b_lambda!191253) (not b!4838670)))

(declare-fun m!5834218 () Bool)

(assert (=> b!4838670 m!5834218))

(assert (=> b!4838671 m!5834154))

(assert (=> start!503352 d!1551134))

(declare-fun d!1551136 () Bool)

(declare-fun isStrictlySorted!1030 (List!55425) Bool)

(assert (=> d!1551136 (= (inv!70953 lm!2671) (isStrictlySorted!1030 (toList!7709 lm!2671)))))

(declare-fun bs!1168021 () Bool)

(assert (= bs!1168021 d!1551136))

(declare-fun m!5834220 () Bool)

(assert (=> bs!1168021 m!5834220))

(assert (=> start!503352 d!1551136))

(declare-fun bs!1168022 () Bool)

(declare-fun d!1551138 () Bool)

(assert (= bs!1168022 (and d!1551138 start!503352)))

(declare-fun lambda!240314 () Int)

(assert (=> bs!1168022 (= lambda!240314 lambda!240306)))

(declare-fun lt!1983368 () ListMap!7063)

(declare-fun invariantList!1866 (List!55424) Bool)

(assert (=> d!1551138 (invariantList!1866 (toList!7710 lt!1983368))))

(declare-fun e!3023940 () ListMap!7063)

(assert (=> d!1551138 (= lt!1983368 e!3023940)))

(declare-fun c!824110 () Bool)

(assert (=> d!1551138 (= c!824110 (is-Cons!55301 (toList!7709 lt!1983348)))))

(assert (=> d!1551138 (forall!12806 (toList!7709 lt!1983348) lambda!240314)))

(assert (=> d!1551138 (= (extractMap!2751 (toList!7709 lt!1983348)) lt!1983368)))

(declare-fun b!4838676 () Bool)

(assert (=> b!4838676 (= e!3023940 (addToMapMapFromBucket!1891 (_2!32678 (h!61736 (toList!7709 lt!1983348))) (extractMap!2751 (t!362921 (toList!7709 lt!1983348)))))))

(declare-fun b!4838677 () Bool)

(assert (=> b!4838677 (= e!3023940 (ListMap!7064 Nil!55300))))

(assert (= (and d!1551138 c!824110) b!4838676))

(assert (= (and d!1551138 (not c!824110)) b!4838677))

(declare-fun m!5834222 () Bool)

(assert (=> d!1551138 m!5834222))

(declare-fun m!5834224 () Bool)

(assert (=> d!1551138 m!5834224))

(declare-fun m!5834226 () Bool)

(assert (=> b!4838676 m!5834226))

(assert (=> b!4838676 m!5834226))

(declare-fun m!5834228 () Bool)

(assert (=> b!4838676 m!5834228))

(assert (=> b!4838601 d!1551138))

(declare-fun d!1551142 () Bool)

(assert (=> d!1551142 (= (tail!9463 lm!2671) (ListLongMap!6250 (tail!9464 (toList!7709 lm!2671))))))

(declare-fun bs!1168023 () Bool)

(assert (= bs!1168023 d!1551142))

(assert (=> bs!1168023 m!5834142))

(assert (=> b!4838601 d!1551142))

(declare-fun bs!1168025 () Bool)

(declare-fun d!1551144 () Bool)

(assert (= bs!1168025 (and d!1551144 start!503352)))

(declare-fun lambda!240320 () Int)

(assert (=> bs!1168025 (= lambda!240320 lambda!240306)))

(declare-fun bs!1168026 () Bool)

(assert (= bs!1168026 (and d!1551144 d!1551138)))

(assert (=> bs!1168026 (= lambda!240320 lambda!240314)))

(assert (=> d!1551144 (contains!19063 (extractMap!2751 (toList!7709 lt!1983348)) key!6540)))

(declare-fun lt!1983374 () Unit!144833)

(declare-fun choose!35350 (ListLongMap!6249 K!17052 Hashable!7393) Unit!144833)

(assert (=> d!1551144 (= lt!1983374 (choose!35350 lt!1983348 key!6540 hashF!1662))))

(assert (=> d!1551144 (forall!12806 (toList!7709 lt!1983348) lambda!240320)))

(assert (=> d!1551144 (= (lemmaListContainsThenExtractedMapContains!737 lt!1983348 key!6540 hashF!1662) lt!1983374)))

(declare-fun bs!1168027 () Bool)

(assert (= bs!1168027 d!1551144))

(assert (=> bs!1168027 m!5834158))

(assert (=> bs!1168027 m!5834158))

(assert (=> bs!1168027 m!5834160))

(declare-fun m!5834238 () Bool)

(assert (=> bs!1168027 m!5834238))

(declare-fun m!5834240 () Bool)

(assert (=> bs!1168027 m!5834240))

(assert (=> b!4838601 d!1551144))

(declare-fun bm!337210 () Bool)

(declare-fun call!337215 () Bool)

(declare-datatypes ((List!55428 0))(
  ( (Nil!55304) (Cons!55304 (h!61739 K!17052) (t!362924 List!55428)) )
))
(declare-fun e!3023958 () List!55428)

(declare-fun contains!19065 (List!55428 K!17052) Bool)

(assert (=> bm!337210 (= call!337215 (contains!19065 e!3023958 key!6540))))

(declare-fun c!824120 () Bool)

(declare-fun c!824122 () Bool)

(assert (=> bm!337210 (= c!824120 c!824122)))

(declare-fun b!4838702 () Bool)

(declare-fun e!3023957 () Unit!144833)

(declare-fun e!3023960 () Unit!144833)

(assert (=> b!4838702 (= e!3023957 e!3023960)))

(declare-fun c!824121 () Bool)

(assert (=> b!4838702 (= c!824121 call!337215)))

(declare-fun b!4838704 () Bool)

(declare-fun keys!20428 (ListMap!7063) List!55428)

(assert (=> b!4838704 (= e!3023958 (keys!20428 lt!1983350))))

(declare-fun b!4838705 () Bool)

(declare-fun e!3023961 () Bool)

(declare-fun e!3023959 () Bool)

(assert (=> b!4838705 (= e!3023961 e!3023959)))

(declare-fun res!2062438 () Bool)

(assert (=> b!4838705 (=> (not res!2062438) (not e!3023959))))

(declare-fun isDefined!10701 (Option!13596) Bool)

(assert (=> b!4838705 (= res!2062438 (isDefined!10701 (getValueByKey!2694 (toList!7710 lt!1983350) key!6540)))))

(declare-fun b!4838706 () Bool)

(declare-fun getKeysList!1201 (List!55424) List!55428)

(assert (=> b!4838706 (= e!3023958 (getKeysList!1201 (toList!7710 lt!1983350)))))

(declare-fun b!4838707 () Bool)

(assert (=> b!4838707 (= e!3023959 (contains!19065 (keys!20428 lt!1983350) key!6540))))

(declare-fun b!4838708 () Bool)

(assert (=> b!4838708 false))

(declare-fun lt!1983393 () Unit!144833)

(declare-fun lt!1983392 () Unit!144833)

(assert (=> b!4838708 (= lt!1983393 lt!1983392)))

(declare-fun containsKey!4553 (List!55424 K!17052) Bool)

(assert (=> b!4838708 (containsKey!4553 (toList!7710 lt!1983350) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1201 (List!55424 K!17052) Unit!144833)

(assert (=> b!4838708 (= lt!1983392 (lemmaInGetKeysListThenContainsKey!1201 (toList!7710 lt!1983350) key!6540))))

(declare-fun Unit!144837 () Unit!144833)

(assert (=> b!4838708 (= e!3023960 Unit!144837)))

(declare-fun d!1551148 () Bool)

(assert (=> d!1551148 e!3023961))

(declare-fun res!2062436 () Bool)

(assert (=> d!1551148 (=> res!2062436 e!3023961)))

(declare-fun e!3023956 () Bool)

(assert (=> d!1551148 (= res!2062436 e!3023956)))

(declare-fun res!2062437 () Bool)

(assert (=> d!1551148 (=> (not res!2062437) (not e!3023956))))

(declare-fun lt!1983397 () Bool)

(assert (=> d!1551148 (= res!2062437 (not lt!1983397))))

(declare-fun lt!1983394 () Bool)

(assert (=> d!1551148 (= lt!1983397 lt!1983394)))

(declare-fun lt!1983391 () Unit!144833)

(assert (=> d!1551148 (= lt!1983391 e!3023957)))

(assert (=> d!1551148 (= c!824122 lt!1983394)))

(assert (=> d!1551148 (= lt!1983394 (containsKey!4553 (toList!7710 lt!1983350) key!6540))))

(assert (=> d!1551148 (= (contains!19063 lt!1983350 key!6540) lt!1983397)))

(declare-fun b!4838703 () Bool)

(declare-fun lt!1983398 () Unit!144833)

(assert (=> b!4838703 (= e!3023957 lt!1983398)))

(declare-fun lt!1983395 () Unit!144833)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2474 (List!55424 K!17052) Unit!144833)

(assert (=> b!4838703 (= lt!1983395 (lemmaContainsKeyImpliesGetValueByKeyDefined!2474 (toList!7710 lt!1983350) key!6540))))

(assert (=> b!4838703 (isDefined!10701 (getValueByKey!2694 (toList!7710 lt!1983350) key!6540))))

(declare-fun lt!1983396 () Unit!144833)

(assert (=> b!4838703 (= lt!1983396 lt!1983395)))

(declare-fun lemmaInListThenGetKeysListContains!1196 (List!55424 K!17052) Unit!144833)

(assert (=> b!4838703 (= lt!1983398 (lemmaInListThenGetKeysListContains!1196 (toList!7710 lt!1983350) key!6540))))

(assert (=> b!4838703 call!337215))

(declare-fun b!4838709 () Bool)

(assert (=> b!4838709 (= e!3023956 (not (contains!19065 (keys!20428 lt!1983350) key!6540)))))

(declare-fun b!4838710 () Bool)

(declare-fun Unit!144838 () Unit!144833)

(assert (=> b!4838710 (= e!3023960 Unit!144838)))

(assert (= (and d!1551148 c!824122) b!4838703))

(assert (= (and d!1551148 (not c!824122)) b!4838702))

(assert (= (and b!4838702 c!824121) b!4838708))

(assert (= (and b!4838702 (not c!824121)) b!4838710))

(assert (= (or b!4838703 b!4838702) bm!337210))

(assert (= (and bm!337210 c!824120) b!4838706))

(assert (= (and bm!337210 (not c!824120)) b!4838704))

(assert (= (and d!1551148 res!2062437) b!4838709))

(assert (= (and d!1551148 (not res!2062436)) b!4838705))

(assert (= (and b!4838705 res!2062438) b!4838707))

(declare-fun m!5834242 () Bool)

(assert (=> b!4838706 m!5834242))

(declare-fun m!5834244 () Bool)

(assert (=> b!4838707 m!5834244))

(assert (=> b!4838707 m!5834244))

(declare-fun m!5834246 () Bool)

(assert (=> b!4838707 m!5834246))

(declare-fun m!5834248 () Bool)

(assert (=> d!1551148 m!5834248))

(assert (=> b!4838709 m!5834244))

(assert (=> b!4838709 m!5834244))

(assert (=> b!4838709 m!5834246))

(assert (=> b!4838708 m!5834248))

(declare-fun m!5834250 () Bool)

(assert (=> b!4838708 m!5834250))

(declare-fun m!5834252 () Bool)

(assert (=> b!4838703 m!5834252))

(assert (=> b!4838703 m!5834156))

(assert (=> b!4838703 m!5834156))

(declare-fun m!5834254 () Bool)

(assert (=> b!4838703 m!5834254))

(declare-fun m!5834256 () Bool)

(assert (=> b!4838703 m!5834256))

(assert (=> b!4838704 m!5834244))

(assert (=> b!4838705 m!5834156))

(assert (=> b!4838705 m!5834156))

(assert (=> b!4838705 m!5834254))

(declare-fun m!5834258 () Bool)

(assert (=> bm!337210 m!5834258))

(assert (=> b!4838601 d!1551148))

(declare-fun bm!337211 () Bool)

(declare-fun call!337216 () Bool)

(declare-fun e!3023964 () List!55428)

(assert (=> bm!337211 (= call!337216 (contains!19065 e!3023964 key!6540))))

(declare-fun c!824123 () Bool)

(declare-fun c!824125 () Bool)

(assert (=> bm!337211 (= c!824123 c!824125)))

(declare-fun b!4838711 () Bool)

(declare-fun e!3023963 () Unit!144833)

(declare-fun e!3023966 () Unit!144833)

(assert (=> b!4838711 (= e!3023963 e!3023966)))

(declare-fun c!824124 () Bool)

(assert (=> b!4838711 (= c!824124 call!337216)))

(declare-fun b!4838713 () Bool)

(assert (=> b!4838713 (= e!3023964 (keys!20428 (extractMap!2751 (toList!7709 lt!1983348))))))

(declare-fun b!4838714 () Bool)

(declare-fun e!3023967 () Bool)

(declare-fun e!3023965 () Bool)

(assert (=> b!4838714 (= e!3023967 e!3023965)))

(declare-fun res!2062441 () Bool)

(assert (=> b!4838714 (=> (not res!2062441) (not e!3023965))))

(assert (=> b!4838714 (= res!2062441 (isDefined!10701 (getValueByKey!2694 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348))) key!6540)))))

(declare-fun b!4838715 () Bool)

(assert (=> b!4838715 (= e!3023964 (getKeysList!1201 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348)))))))

(declare-fun b!4838716 () Bool)

(assert (=> b!4838716 (= e!3023965 (contains!19065 (keys!20428 (extractMap!2751 (toList!7709 lt!1983348))) key!6540))))

(declare-fun b!4838717 () Bool)

(assert (=> b!4838717 false))

(declare-fun lt!1983401 () Unit!144833)

(declare-fun lt!1983400 () Unit!144833)

(assert (=> b!4838717 (= lt!1983401 lt!1983400)))

(assert (=> b!4838717 (containsKey!4553 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348))) key!6540)))

(assert (=> b!4838717 (= lt!1983400 (lemmaInGetKeysListThenContainsKey!1201 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348))) key!6540))))

(declare-fun Unit!144839 () Unit!144833)

(assert (=> b!4838717 (= e!3023966 Unit!144839)))

(declare-fun d!1551152 () Bool)

(assert (=> d!1551152 e!3023967))

(declare-fun res!2062439 () Bool)

(assert (=> d!1551152 (=> res!2062439 e!3023967)))

(declare-fun e!3023962 () Bool)

(assert (=> d!1551152 (= res!2062439 e!3023962)))

(declare-fun res!2062440 () Bool)

(assert (=> d!1551152 (=> (not res!2062440) (not e!3023962))))

(declare-fun lt!1983405 () Bool)

(assert (=> d!1551152 (= res!2062440 (not lt!1983405))))

(declare-fun lt!1983402 () Bool)

(assert (=> d!1551152 (= lt!1983405 lt!1983402)))

(declare-fun lt!1983399 () Unit!144833)

(assert (=> d!1551152 (= lt!1983399 e!3023963)))

(assert (=> d!1551152 (= c!824125 lt!1983402)))

(assert (=> d!1551152 (= lt!1983402 (containsKey!4553 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348))) key!6540))))

(assert (=> d!1551152 (= (contains!19063 (extractMap!2751 (toList!7709 lt!1983348)) key!6540) lt!1983405)))

(declare-fun b!4838712 () Bool)

(declare-fun lt!1983406 () Unit!144833)

(assert (=> b!4838712 (= e!3023963 lt!1983406)))

(declare-fun lt!1983403 () Unit!144833)

(assert (=> b!4838712 (= lt!1983403 (lemmaContainsKeyImpliesGetValueByKeyDefined!2474 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348))) key!6540))))

(assert (=> b!4838712 (isDefined!10701 (getValueByKey!2694 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348))) key!6540))))

(declare-fun lt!1983404 () Unit!144833)

(assert (=> b!4838712 (= lt!1983404 lt!1983403)))

(assert (=> b!4838712 (= lt!1983406 (lemmaInListThenGetKeysListContains!1196 (toList!7710 (extractMap!2751 (toList!7709 lt!1983348))) key!6540))))

(assert (=> b!4838712 call!337216))

(declare-fun b!4838718 () Bool)

(assert (=> b!4838718 (= e!3023962 (not (contains!19065 (keys!20428 (extractMap!2751 (toList!7709 lt!1983348))) key!6540)))))

(declare-fun b!4838719 () Bool)

(declare-fun Unit!144840 () Unit!144833)

(assert (=> b!4838719 (= e!3023966 Unit!144840)))

(assert (= (and d!1551152 c!824125) b!4838712))

(assert (= (and d!1551152 (not c!824125)) b!4838711))

(assert (= (and b!4838711 c!824124) b!4838717))

(assert (= (and b!4838711 (not c!824124)) b!4838719))

(assert (= (or b!4838712 b!4838711) bm!337211))

(assert (= (and bm!337211 c!824123) b!4838715))

(assert (= (and bm!337211 (not c!824123)) b!4838713))

(assert (= (and d!1551152 res!2062440) b!4838718))

(assert (= (and d!1551152 (not res!2062439)) b!4838714))

(assert (= (and b!4838714 res!2062441) b!4838716))

(declare-fun m!5834260 () Bool)

(assert (=> b!4838715 m!5834260))

(assert (=> b!4838716 m!5834158))

(declare-fun m!5834262 () Bool)

(assert (=> b!4838716 m!5834262))

(assert (=> b!4838716 m!5834262))

(declare-fun m!5834264 () Bool)

(assert (=> b!4838716 m!5834264))

(declare-fun m!5834266 () Bool)

(assert (=> d!1551152 m!5834266))

(assert (=> b!4838718 m!5834158))

(assert (=> b!4838718 m!5834262))

(assert (=> b!4838718 m!5834262))

(assert (=> b!4838718 m!5834264))

(assert (=> b!4838717 m!5834266))

(declare-fun m!5834268 () Bool)

(assert (=> b!4838717 m!5834268))

(declare-fun m!5834270 () Bool)

(assert (=> b!4838712 m!5834270))

(declare-fun m!5834272 () Bool)

(assert (=> b!4838712 m!5834272))

(assert (=> b!4838712 m!5834272))

(declare-fun m!5834274 () Bool)

(assert (=> b!4838712 m!5834274))

(declare-fun m!5834276 () Bool)

(assert (=> b!4838712 m!5834276))

(assert (=> b!4838713 m!5834158))

(assert (=> b!4838713 m!5834262))

(assert (=> b!4838714 m!5834272))

(assert (=> b!4838714 m!5834272))

(assert (=> b!4838714 m!5834274))

(declare-fun m!5834278 () Bool)

(assert (=> bm!337211 m!5834278))

(assert (=> b!4838601 d!1551152))

(declare-fun bs!1168032 () Bool)

(declare-fun d!1551154 () Bool)

(assert (= bs!1168032 (and d!1551154 start!503352)))

(declare-fun lambda!240326 () Int)

(assert (=> bs!1168032 (not (= lambda!240326 lambda!240306))))

(declare-fun bs!1168033 () Bool)

(assert (= bs!1168033 (and d!1551154 d!1551138)))

(assert (=> bs!1168033 (not (= lambda!240326 lambda!240314))))

(declare-fun bs!1168034 () Bool)

(assert (= bs!1168034 (and d!1551154 d!1551144)))

(assert (=> bs!1168034 (not (= lambda!240326 lambda!240320))))

(assert (=> d!1551154 true))

(assert (=> d!1551154 (= (allKeysSameHashInMap!2709 lm!2671 hashF!1662) (forall!12806 (toList!7709 lm!2671) lambda!240326))))

(declare-fun bs!1168035 () Bool)

(assert (= bs!1168035 d!1551154))

(declare-fun m!5834284 () Bool)

(assert (=> bs!1168035 m!5834284))

(assert (=> b!4838602 d!1551154))

(declare-fun bs!1168036 () Bool)

(declare-fun d!1551158 () Bool)

(assert (= bs!1168036 (and d!1551158 start!503352)))

(declare-fun lambda!240327 () Int)

(assert (=> bs!1168036 (= lambda!240327 lambda!240306)))

(declare-fun bs!1168037 () Bool)

(assert (= bs!1168037 (and d!1551158 d!1551138)))

(assert (=> bs!1168037 (= lambda!240327 lambda!240314)))

(declare-fun bs!1168038 () Bool)

(assert (= bs!1168038 (and d!1551158 d!1551144)))

(assert (=> bs!1168038 (= lambda!240327 lambda!240320)))

(declare-fun bs!1168039 () Bool)

(assert (= bs!1168039 (and d!1551158 d!1551154)))

(assert (=> bs!1168039 (not (= lambda!240327 lambda!240326))))

(declare-fun lt!1983410 () ListMap!7063)

(assert (=> d!1551158 (invariantList!1866 (toList!7710 lt!1983410))))

(declare-fun e!3023968 () ListMap!7063)

(assert (=> d!1551158 (= lt!1983410 e!3023968)))

(declare-fun c!824126 () Bool)

(assert (=> d!1551158 (= c!824126 (is-Cons!55301 (toList!7709 lm!2671)))))

(assert (=> d!1551158 (forall!12806 (toList!7709 lm!2671) lambda!240327)))

(assert (=> d!1551158 (= (extractMap!2751 (toList!7709 lm!2671)) lt!1983410)))

(declare-fun b!4838722 () Bool)

(assert (=> b!4838722 (= e!3023968 (addToMapMapFromBucket!1891 (_2!32678 (h!61736 (toList!7709 lm!2671))) (extractMap!2751 (t!362921 (toList!7709 lm!2671)))))))

(declare-fun b!4838723 () Bool)

(assert (=> b!4838723 (= e!3023968 (ListMap!7064 Nil!55300))))

(assert (= (and d!1551158 c!824126) b!4838722))

(assert (= (and d!1551158 (not c!824126)) b!4838723))

(declare-fun m!5834286 () Bool)

(assert (=> d!1551158 m!5834286))

(declare-fun m!5834288 () Bool)

(assert (=> d!1551158 m!5834288))

(assert (=> b!4838722 m!5834152))

(assert (=> b!4838722 m!5834152))

(declare-fun m!5834290 () Bool)

(assert (=> b!4838722 m!5834290))

(assert (=> b!4838598 d!1551158))

(declare-fun b!4838791 () Bool)

(assert (=> b!4838791 true))

(declare-fun bs!1168043 () Bool)

(declare-fun b!4838790 () Bool)

(assert (= bs!1168043 (and b!4838790 b!4838791)))

(declare-fun lambda!240358 () Int)

(declare-fun lambda!240357 () Int)

(assert (=> bs!1168043 (= lambda!240358 lambda!240357)))

(assert (=> b!4838790 true))

(declare-fun lt!1983489 () ListMap!7063)

(declare-fun lambda!240359 () Int)

(assert (=> bs!1168043 (= (= lt!1983489 lt!1983350) (= lambda!240359 lambda!240357))))

(assert (=> b!4838790 (= (= lt!1983489 lt!1983350) (= lambda!240359 lambda!240358))))

(assert (=> b!4838790 true))

(declare-fun bs!1168044 () Bool)

(declare-fun d!1551160 () Bool)

(assert (= bs!1168044 (and d!1551160 b!4838791)))

(declare-fun lambda!240360 () Int)

(declare-fun lt!1983504 () ListMap!7063)

(assert (=> bs!1168044 (= (= lt!1983504 lt!1983350) (= lambda!240360 lambda!240357))))

(declare-fun bs!1168045 () Bool)

(assert (= bs!1168045 (and d!1551160 b!4838790)))

(assert (=> bs!1168045 (= (= lt!1983504 lt!1983350) (= lambda!240360 lambda!240358))))

(assert (=> bs!1168045 (= (= lt!1983504 lt!1983489) (= lambda!240360 lambda!240359))))

(assert (=> d!1551160 true))

(declare-fun b!4838787 () Bool)

(declare-fun e!3024015 () Bool)

(assert (=> b!4838787 (= e!3024015 (invariantList!1866 (toList!7710 lt!1983504)))))

(declare-fun b!4838788 () Bool)

(declare-fun e!3024017 () Bool)

(declare-fun call!337227 () Bool)

(assert (=> b!4838788 (= e!3024017 call!337227)))

(declare-fun bm!337222 () Bool)

(declare-fun c!824142 () Bool)

(declare-fun forall!12808 (List!55424 Int) Bool)

(assert (=> bm!337222 (= call!337227 (forall!12808 (toList!7710 lt!1983350) (ite c!824142 lambda!240357 lambda!240359)))))

(declare-fun b!4838789 () Bool)

(declare-fun res!2062475 () Bool)

(assert (=> b!4838789 (=> (not res!2062475) (not e!3024015))))

(assert (=> b!4838789 (= res!2062475 (forall!12808 (toList!7710 lt!1983350) lambda!240360))))

(assert (=> d!1551160 e!3024015))

(declare-fun res!2062476 () Bool)

(assert (=> d!1551160 (=> (not res!2062476) (not e!3024015))))

(assert (=> d!1551160 (= res!2062476 (forall!12808 (_2!32678 (h!61736 (toList!7709 lm!2671))) lambda!240360))))

(declare-fun e!3024016 () ListMap!7063)

(assert (=> d!1551160 (= lt!1983504 e!3024016)))

(assert (=> d!1551160 (= c!824142 (is-Nil!55300 (_2!32678 (h!61736 (toList!7709 lm!2671)))))))

(declare-fun noDuplicateKeys!2531 (List!55424) Bool)

(assert (=> d!1551160 (noDuplicateKeys!2531 (_2!32678 (h!61736 (toList!7709 lm!2671))))))

(assert (=> d!1551160 (= (addToMapMapFromBucket!1891 (_2!32678 (h!61736 (toList!7709 lm!2671))) lt!1983350) lt!1983504)))

(assert (=> b!4838790 (= e!3024016 lt!1983489)))

(declare-fun lt!1983505 () ListMap!7063)

(declare-fun +!2600 (ListMap!7063 tuple2!58766) ListMap!7063)

(assert (=> b!4838790 (= lt!1983505 (+!2600 lt!1983350 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671))))))))

(assert (=> b!4838790 (= lt!1983489 (addToMapMapFromBucket!1891 (t!362920 (_2!32678 (h!61736 (toList!7709 lm!2671)))) (+!2600 lt!1983350 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671)))))))))

(declare-fun lt!1983490 () Unit!144833)

(declare-fun call!337229 () Unit!144833)

(assert (=> b!4838790 (= lt!1983490 call!337229)))

(assert (=> b!4838790 (forall!12808 (toList!7710 lt!1983350) lambda!240358)))

(declare-fun lt!1983502 () Unit!144833)

(assert (=> b!4838790 (= lt!1983502 lt!1983490)))

(assert (=> b!4838790 (forall!12808 (toList!7710 lt!1983505) lambda!240359)))

(declare-fun lt!1983503 () Unit!144833)

(declare-fun Unit!144841 () Unit!144833)

(assert (=> b!4838790 (= lt!1983503 Unit!144841)))

(assert (=> b!4838790 (forall!12808 (t!362920 (_2!32678 (h!61736 (toList!7709 lm!2671)))) lambda!240359)))

(declare-fun lt!1983495 () Unit!144833)

(declare-fun Unit!144842 () Unit!144833)

(assert (=> b!4838790 (= lt!1983495 Unit!144842)))

(declare-fun lt!1983497 () Unit!144833)

(declare-fun Unit!144843 () Unit!144833)

(assert (=> b!4838790 (= lt!1983497 Unit!144843)))

(declare-fun lt!1983491 () Unit!144833)

(declare-fun forallContained!4481 (List!55424 Int tuple2!58766) Unit!144833)

(assert (=> b!4838790 (= lt!1983491 (forallContained!4481 (toList!7710 lt!1983505) lambda!240359 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671))))))))

(assert (=> b!4838790 (contains!19063 lt!1983505 (_1!32677 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671))))))))

(declare-fun lt!1983493 () Unit!144833)

(declare-fun Unit!144844 () Unit!144833)

(assert (=> b!4838790 (= lt!1983493 Unit!144844)))

(assert (=> b!4838790 (contains!19063 lt!1983489 (_1!32677 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671))))))))

(declare-fun lt!1983492 () Unit!144833)

(declare-fun Unit!144845 () Unit!144833)

(assert (=> b!4838790 (= lt!1983492 Unit!144845)))

(assert (=> b!4838790 (forall!12808 (_2!32678 (h!61736 (toList!7709 lm!2671))) lambda!240359)))

(declare-fun lt!1983496 () Unit!144833)

(declare-fun Unit!144846 () Unit!144833)

(assert (=> b!4838790 (= lt!1983496 Unit!144846)))

(declare-fun call!337228 () Bool)

(assert (=> b!4838790 call!337228))

(declare-fun lt!1983499 () Unit!144833)

(declare-fun Unit!144847 () Unit!144833)

(assert (=> b!4838790 (= lt!1983499 Unit!144847)))

(declare-fun lt!1983488 () Unit!144833)

(declare-fun Unit!144848 () Unit!144833)

(assert (=> b!4838790 (= lt!1983488 Unit!144848)))

(declare-fun lt!1983498 () Unit!144833)

(declare-fun addForallContainsKeyThenBeforeAdding!1038 (ListMap!7063 ListMap!7063 K!17052 V!17298) Unit!144833)

(assert (=> b!4838790 (= lt!1983498 (addForallContainsKeyThenBeforeAdding!1038 lt!1983350 lt!1983489 (_1!32677 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671))))) (_2!32677 (h!61735 (_2!32678 (h!61736 (toList!7709 lm!2671)))))))))

(assert (=> b!4838790 (forall!12808 (toList!7710 lt!1983350) lambda!240359)))

(declare-fun lt!1983486 () Unit!144833)

(assert (=> b!4838790 (= lt!1983486 lt!1983498)))

(assert (=> b!4838790 (forall!12808 (toList!7710 lt!1983350) lambda!240359)))

(declare-fun lt!1983500 () Unit!144833)

(declare-fun Unit!144849 () Unit!144833)

(assert (=> b!4838790 (= lt!1983500 Unit!144849)))

(declare-fun res!2062477 () Bool)

(assert (=> b!4838790 (= res!2062477 (forall!12808 (_2!32678 (h!61736 (toList!7709 lm!2671))) lambda!240359))))

(assert (=> b!4838790 (=> (not res!2062477) (not e!3024017))))

(assert (=> b!4838790 e!3024017))

(declare-fun lt!1983494 () Unit!144833)

(declare-fun Unit!144850 () Unit!144833)

(assert (=> b!4838790 (= lt!1983494 Unit!144850)))

(assert (=> b!4838791 (= e!3024016 lt!1983350)))

(declare-fun lt!1983487 () Unit!144833)

(assert (=> b!4838791 (= lt!1983487 call!337229)))

(assert (=> b!4838791 call!337227))

(declare-fun lt!1983501 () Unit!144833)

(assert (=> b!4838791 (= lt!1983501 lt!1983487)))

(assert (=> b!4838791 call!337228))

(declare-fun lt!1983506 () Unit!144833)

(declare-fun Unit!144851 () Unit!144833)

(assert (=> b!4838791 (= lt!1983506 Unit!144851)))

(declare-fun bm!337223 () Bool)

(assert (=> bm!337223 (= call!337228 (forall!12808 (ite c!824142 (toList!7710 lt!1983350) (toList!7710 lt!1983505)) (ite c!824142 lambda!240357 lambda!240359)))))

(declare-fun bm!337224 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1040 (ListMap!7063) Unit!144833)

(assert (=> bm!337224 (= call!337229 (lemmaContainsAllItsOwnKeys!1040 lt!1983350))))

(assert (= (and d!1551160 c!824142) b!4838791))

(assert (= (and d!1551160 (not c!824142)) b!4838790))

(assert (= (and b!4838790 res!2062477) b!4838788))

(assert (= (or b!4838791 b!4838790) bm!337224))

(assert (= (or b!4838791 b!4838788) bm!337222))

(assert (= (or b!4838791 b!4838790) bm!337223))

(assert (= (and d!1551160 res!2062476) b!4838789))

(assert (= (and b!4838789 res!2062475) b!4838787))

(declare-fun m!5834338 () Bool)

(assert (=> b!4838789 m!5834338))

(declare-fun m!5834340 () Bool)

(assert (=> b!4838787 m!5834340))

(declare-fun m!5834342 () Bool)

(assert (=> bm!337224 m!5834342))

(declare-fun m!5834344 () Bool)

(assert (=> bm!337222 m!5834344))

(declare-fun m!5834346 () Bool)

(assert (=> b!4838790 m!5834346))

(declare-fun m!5834348 () Bool)

(assert (=> b!4838790 m!5834348))

(declare-fun m!5834350 () Bool)

(assert (=> b!4838790 m!5834350))

(declare-fun m!5834352 () Bool)

(assert (=> b!4838790 m!5834352))

(declare-fun m!5834354 () Bool)

(assert (=> b!4838790 m!5834354))

(declare-fun m!5834356 () Bool)

(assert (=> b!4838790 m!5834356))

(declare-fun m!5834358 () Bool)

(assert (=> b!4838790 m!5834358))

(declare-fun m!5834360 () Bool)

(assert (=> b!4838790 m!5834360))

(assert (=> b!4838790 m!5834360))

(declare-fun m!5834362 () Bool)

(assert (=> b!4838790 m!5834362))

(declare-fun m!5834364 () Bool)

(assert (=> b!4838790 m!5834364))

(assert (=> b!4838790 m!5834362))

(assert (=> b!4838790 m!5834350))

(declare-fun m!5834366 () Bool)

(assert (=> b!4838790 m!5834366))

(declare-fun m!5834368 () Bool)

(assert (=> d!1551160 m!5834368))

(declare-fun m!5834370 () Bool)

(assert (=> d!1551160 m!5834370))

(declare-fun m!5834372 () Bool)

(assert (=> bm!337223 m!5834372))

(assert (=> b!4838598 d!1551160))

(declare-fun bs!1168046 () Bool)

(declare-fun d!1551172 () Bool)

(assert (= bs!1168046 (and d!1551172 d!1551154)))

(declare-fun lambda!240361 () Int)

(assert (=> bs!1168046 (not (= lambda!240361 lambda!240326))))

(declare-fun bs!1168047 () Bool)

(assert (= bs!1168047 (and d!1551172 d!1551144)))

(assert (=> bs!1168047 (= lambda!240361 lambda!240320)))

(declare-fun bs!1168048 () Bool)

(assert (= bs!1168048 (and d!1551172 d!1551138)))

(assert (=> bs!1168048 (= lambda!240361 lambda!240314)))

(declare-fun bs!1168049 () Bool)

(assert (= bs!1168049 (and d!1551172 d!1551158)))

(assert (=> bs!1168049 (= lambda!240361 lambda!240327)))

(declare-fun bs!1168050 () Bool)

(assert (= bs!1168050 (and d!1551172 start!503352)))

(assert (=> bs!1168050 (= lambda!240361 lambda!240306)))

(declare-fun lt!1983507 () ListMap!7063)

(assert (=> d!1551172 (invariantList!1866 (toList!7710 lt!1983507))))

(declare-fun e!3024018 () ListMap!7063)

(assert (=> d!1551172 (= lt!1983507 e!3024018)))

(declare-fun c!824143 () Bool)

(assert (=> d!1551172 (= c!824143 (is-Cons!55301 (t!362921 (toList!7709 lm!2671))))))

(assert (=> d!1551172 (forall!12806 (t!362921 (toList!7709 lm!2671)) lambda!240361)))

(assert (=> d!1551172 (= (extractMap!2751 (t!362921 (toList!7709 lm!2671))) lt!1983507)))

(declare-fun b!4838794 () Bool)

(assert (=> b!4838794 (= e!3024018 (addToMapMapFromBucket!1891 (_2!32678 (h!61736 (t!362921 (toList!7709 lm!2671)))) (extractMap!2751 (t!362921 (t!362921 (toList!7709 lm!2671))))))))

(declare-fun b!4838795 () Bool)

(assert (=> b!4838795 (= e!3024018 (ListMap!7064 Nil!55300))))

(assert (= (and d!1551172 c!824143) b!4838794))

(assert (= (and d!1551172 (not c!824143)) b!4838795))

(declare-fun m!5834374 () Bool)

(assert (=> d!1551172 m!5834374))

(declare-fun m!5834376 () Bool)

(assert (=> d!1551172 m!5834376))

(declare-fun m!5834378 () Bool)

(assert (=> b!4838794 m!5834378))

(assert (=> b!4838794 m!5834378))

(declare-fun m!5834380 () Bool)

(assert (=> b!4838794 m!5834380))

(assert (=> b!4838598 d!1551172))

(declare-fun d!1551174 () Bool)

(declare-fun res!2062480 () Bool)

(declare-fun e!3024019 () Bool)

(assert (=> d!1551174 (=> res!2062480 e!3024019)))

(declare-fun e!3024020 () Bool)

(assert (=> d!1551174 (= res!2062480 e!3024020)))

(declare-fun res!2062479 () Bool)

(assert (=> d!1551174 (=> (not res!2062479) (not e!3024020))))

(assert (=> d!1551174 (= res!2062479 (is-Cons!55301 (t!362921 (toList!7709 lm!2671))))))

(assert (=> d!1551174 (= (containsKeyBiggerList!677 (t!362921 (toList!7709 lm!2671)) key!6540) e!3024019)))

(declare-fun b!4838796 () Bool)

(assert (=> b!4838796 (= e!3024020 (containsKey!4551 (_2!32678 (h!61736 (t!362921 (toList!7709 lm!2671)))) key!6540))))

(declare-fun b!4838797 () Bool)

(declare-fun e!3024021 () Bool)

(assert (=> b!4838797 (= e!3024019 e!3024021)))

(declare-fun res!2062478 () Bool)

(assert (=> b!4838797 (=> (not res!2062478) (not e!3024021))))

(assert (=> b!4838797 (= res!2062478 (is-Cons!55301 (t!362921 (toList!7709 lm!2671))))))

(declare-fun b!4838798 () Bool)

(assert (=> b!4838798 (= e!3024021 (containsKeyBiggerList!677 (t!362921 (t!362921 (toList!7709 lm!2671))) key!6540))))

(assert (= (and d!1551174 res!2062479) b!4838796))

(assert (= (and d!1551174 (not res!2062480)) b!4838797))

(assert (= (and b!4838797 res!2062478) b!4838798))

(declare-fun m!5834382 () Bool)

(assert (=> b!4838796 m!5834382))

(declare-fun m!5834384 () Bool)

(assert (=> b!4838798 m!5834384))

(assert (=> b!4838603 d!1551174))

(declare-fun d!1551176 () Bool)

(declare-fun res!2062483 () Bool)

(declare-fun e!3024022 () Bool)

(assert (=> d!1551176 (=> res!2062483 e!3024022)))

(declare-fun e!3024023 () Bool)

(assert (=> d!1551176 (= res!2062483 e!3024023)))

(declare-fun res!2062482 () Bool)

(assert (=> d!1551176 (=> (not res!2062482) (not e!3024023))))

(assert (=> d!1551176 (= res!2062482 (is-Cons!55301 (tail!9464 (toList!7709 lm!2671))))))

(assert (=> d!1551176 (= (containsKeyBiggerList!677 (tail!9464 (toList!7709 lm!2671)) key!6540) e!3024022)))

(declare-fun b!4838799 () Bool)

(assert (=> b!4838799 (= e!3024023 (containsKey!4551 (_2!32678 (h!61736 (tail!9464 (toList!7709 lm!2671)))) key!6540))))

(declare-fun b!4838800 () Bool)

(declare-fun e!3024024 () Bool)

(assert (=> b!4838800 (= e!3024022 e!3024024)))

(declare-fun res!2062481 () Bool)

(assert (=> b!4838800 (=> (not res!2062481) (not e!3024024))))

(assert (=> b!4838800 (= res!2062481 (is-Cons!55301 (tail!9464 (toList!7709 lm!2671))))))

(declare-fun b!4838801 () Bool)

(assert (=> b!4838801 (= e!3024024 (containsKeyBiggerList!677 (t!362921 (tail!9464 (toList!7709 lm!2671))) key!6540))))

(assert (= (and d!1551176 res!2062482) b!4838799))

(assert (= (and d!1551176 (not res!2062483)) b!4838800))

(assert (= (and b!4838800 res!2062481) b!4838801))

(declare-fun m!5834386 () Bool)

(assert (=> b!4838799 m!5834386))

(declare-fun m!5834388 () Bool)

(assert (=> b!4838801 m!5834388))

(assert (=> b!4838603 d!1551176))

(declare-fun d!1551178 () Bool)

(assert (=> d!1551178 (= (tail!9464 (toList!7709 lm!2671)) (t!362921 (toList!7709 lm!2671)))))

(assert (=> b!4838603 d!1551178))

(declare-fun bs!1168051 () Bool)

(declare-fun d!1551180 () Bool)

(assert (= bs!1168051 (and d!1551180 d!1551154)))

(declare-fun lambda!240364 () Int)

(assert (=> bs!1168051 (not (= lambda!240364 lambda!240326))))

(declare-fun bs!1168052 () Bool)

(assert (= bs!1168052 (and d!1551180 d!1551144)))

(assert (=> bs!1168052 (= lambda!240364 lambda!240320)))

(declare-fun bs!1168053 () Bool)

(assert (= bs!1168053 (and d!1551180 d!1551138)))

(assert (=> bs!1168053 (= lambda!240364 lambda!240314)))

(declare-fun bs!1168054 () Bool)

(assert (= bs!1168054 (and d!1551180 d!1551172)))

(assert (=> bs!1168054 (= lambda!240364 lambda!240361)))

(declare-fun bs!1168055 () Bool)

(assert (= bs!1168055 (and d!1551180 d!1551158)))

(assert (=> bs!1168055 (= lambda!240364 lambda!240327)))

(declare-fun bs!1168056 () Bool)

(assert (= bs!1168056 (and d!1551180 start!503352)))

(assert (=> bs!1168056 (= lambda!240364 lambda!240306)))

(assert (=> d!1551180 (containsKeyBiggerList!677 (tail!9464 (toList!7709 lm!2671)) key!6540)))

(declare-fun lt!1983510 () Unit!144833)

(declare-fun choose!35352 (ListLongMap!6249 K!17052 Hashable!7393) Unit!144833)

(assert (=> d!1551180 (= lt!1983510 (choose!35352 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551180 (forall!12806 (toList!7709 lm!2671) lambda!240364)))

(assert (=> d!1551180 (= (lemmaInBiggerListButNotHeadThenTail!37 lm!2671 key!6540 hashF!1662) lt!1983510)))

(declare-fun bs!1168057 () Bool)

(assert (= bs!1168057 d!1551180))

(assert (=> bs!1168057 m!5834142))

(assert (=> bs!1168057 m!5834142))

(assert (=> bs!1168057 m!5834144))

(declare-fun m!5834390 () Bool)

(assert (=> bs!1168057 m!5834390))

(declare-fun m!5834392 () Bool)

(assert (=> bs!1168057 m!5834392))

(assert (=> b!4838603 d!1551180))

(declare-fun b!4838806 () Bool)

(declare-fun e!3024027 () Bool)

(declare-fun tp!1363683 () Bool)

(declare-fun tp!1363684 () Bool)

(assert (=> b!4838806 (= e!3024027 (and tp!1363683 tp!1363684))))

(assert (=> b!4838606 (= tp!1363675 e!3024027)))

(assert (= (and b!4838606 (is-Cons!55301 (toList!7709 lm!2671))) b!4838806))

(declare-fun b_lambda!191255 () Bool)

(assert (= b_lambda!191253 (or start!503352 b_lambda!191255)))

(declare-fun bs!1168058 () Bool)

(declare-fun d!1551182 () Bool)

(assert (= bs!1168058 (and d!1551182 start!503352)))

(assert (=> bs!1168058 (= (dynLambda!22282 lambda!240306 (h!61736 (toList!7709 lm!2671))) (noDuplicateKeys!2531 (_2!32678 (h!61736 (toList!7709 lm!2671)))))))

(assert (=> bs!1168058 m!5834370))

(assert (=> b!4838670 d!1551182))

(declare-fun b_lambda!191257 () Bool)

(assert (= b_lambda!191251 (or start!503352 b_lambda!191257)))

(declare-fun bs!1168059 () Bool)

(declare-fun d!1551184 () Bool)

(assert (= bs!1168059 (and d!1551184 start!503352)))

(assert (=> bs!1168059 (= (dynLambda!22282 lambda!240306 (h!61736 (t!362921 (toList!7709 lm!2671)))) (noDuplicateKeys!2531 (_2!32678 (h!61736 (t!362921 (toList!7709 lm!2671))))))))

(declare-fun m!5834394 () Bool)

(assert (=> bs!1168059 m!5834394))

(assert (=> b!4838656 d!1551184))

(push 1)

(assert (not d!1551142))

(assert (not b!4838707))

(assert (not b!4838806))

(assert (not bm!337222))

(assert (not b!4838657))

(assert (not b!4838671))

(assert (not b!4838651))

(assert (not b!4838787))

(assert (not d!1551148))

(assert (not b_lambda!191255))

(assert (not bm!337211))

(assert (not d!1551136))

(assert (not b!4838789))

(assert (not d!1551172))

(assert (not b!4838796))

(assert (not b!4838714))

(assert (not d!1551144))

(assert (not b!4838713))

(assert (not b!4838712))

(assert (not b!4838790))

(assert (not d!1551158))

(assert (not b!4838705))

(assert (not d!1551154))

(assert (not b!4838799))

(assert (not d!1551160))

(assert (not bs!1168058))

(assert (not b!4838643))

(assert (not d!1551152))

(assert (not d!1551138))

(assert (not d!1551180))

(assert (not b!4838645))

(assert tp_is_empty!34889)

(assert (not b!4838676))

(assert (not b!4838716))

(assert (not b!4838703))

(assert (not b!4838718))

(assert (not b!4838668))

(assert (not bs!1168059))

(assert (not b!4838706))

(assert (not b!4838801))

(assert (not b!4838708))

(assert (not b!4838794))

(assert (not bm!337210))

(assert (not bm!337223))

(assert (not bm!337224))

(assert (not b!4838722))

(assert (not b!4838709))

(assert (not b!4838717))

(assert (not b!4838715))

(assert (not b!4838798))

(assert (not b_lambda!191257))

(assert (not b!4838704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


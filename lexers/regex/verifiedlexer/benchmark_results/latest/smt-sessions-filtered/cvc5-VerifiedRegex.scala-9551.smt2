; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503240 () Bool)

(assert start!503240)

(declare-fun b!4838061 () Bool)

(declare-fun e!3023528 () Bool)

(declare-fun tp!1363639 () Bool)

(assert (=> b!4838061 (= e!3023528 tp!1363639)))

(declare-fun b!4838062 () Bool)

(declare-fun res!2062073 () Bool)

(declare-fun e!3023530 () Bool)

(assert (=> b!4838062 (=> (not res!2062073) (not e!3023530))))

(declare-fun e!3023529 () Bool)

(assert (=> b!4838062 (= res!2062073 e!3023529)))

(declare-fun res!2062067 () Bool)

(assert (=> b!4838062 (=> res!2062067 e!3023529)))

(declare-datatypes ((K!17042 0))(
  ( (K!17043 (val!21939 Int)) )
))
(declare-datatypes ((V!17288 0))(
  ( (V!17289 (val!21940 Int)) )
))
(declare-datatypes ((tuple2!58750 0))(
  ( (tuple2!58751 (_1!32669 K!17042) (_2!32669 V!17288)) )
))
(declare-datatypes ((List!55412 0))(
  ( (Nil!55288) (Cons!55288 (h!61723 tuple2!58750) (t!362908 List!55412)) )
))
(declare-datatypes ((tuple2!58752 0))(
  ( (tuple2!58753 (_1!32670 (_ BitVec 64)) (_2!32670 List!55412)) )
))
(declare-datatypes ((List!55413 0))(
  ( (Nil!55289) (Cons!55289 (h!61724 tuple2!58752) (t!362909 List!55413)) )
))
(declare-datatypes ((ListLongMap!6241 0))(
  ( (ListLongMap!6242 (toList!7701 List!55413)) )
))
(declare-fun lm!2671 () ListLongMap!6241)

(assert (=> b!4838062 (= res!2062067 (not (is-Cons!55289 (toList!7701 lm!2671))))))

(declare-fun b!4838063 () Bool)

(declare-fun e!3023526 () Bool)

(declare-fun e!3023525 () Bool)

(assert (=> b!4838063 (= e!3023526 e!3023525)))

(declare-fun res!2062068 () Bool)

(assert (=> b!4838063 (=> res!2062068 e!3023525)))

(declare-datatypes ((ListMap!7055 0))(
  ( (ListMap!7056 (toList!7702 List!55412)) )
))
(declare-fun lt!1982874 () ListMap!7055)

(declare-fun key!6540 () K!17042)

(declare-fun contains!19055 (ListMap!7055 K!17042) Bool)

(assert (=> b!4838063 (= res!2062068 (not (contains!19055 lt!1982874 key!6540)))))

(declare-fun lt!1982875 () ListLongMap!6241)

(declare-fun extractMap!2747 (List!55413) ListMap!7055)

(assert (=> b!4838063 (contains!19055 (extractMap!2747 (toList!7701 lt!1982875)) key!6540)))

(declare-datatypes ((Hashable!7389 0))(
  ( (HashableExt!7388 (__x!33664 Int)) )
))
(declare-fun hashF!1662 () Hashable!7389)

(declare-datatypes ((Unit!144765 0))(
  ( (Unit!144766) )
))
(declare-fun lt!1982872 () Unit!144765)

(declare-fun lemmaListContainsThenExtractedMapContains!733 (ListLongMap!6241 K!17042 Hashable!7389) Unit!144765)

(assert (=> b!4838063 (= lt!1982872 (lemmaListContainsThenExtractedMapContains!733 lt!1982875 key!6540 hashF!1662))))

(declare-fun tail!9455 (ListLongMap!6241) ListLongMap!6241)

(assert (=> b!4838063 (= lt!1982875 (tail!9455 lm!2671))))

(declare-fun b!4838064 () Bool)

(declare-fun res!2062070 () Bool)

(assert (=> b!4838064 (=> (not res!2062070) (not e!3023530))))

(assert (=> b!4838064 (= res!2062070 (is-Cons!55289 (toList!7701 lm!2671)))))

(declare-fun res!2062069 () Bool)

(assert (=> start!503240 (=> (not res!2062069) (not e!3023530))))

(declare-fun lambda!240106 () Int)

(declare-fun forall!12798 (List!55413 Int) Bool)

(assert (=> start!503240 (= res!2062069 (forall!12798 (toList!7701 lm!2671) lambda!240106))))

(assert (=> start!503240 e!3023530))

(declare-fun inv!70943 (ListLongMap!6241) Bool)

(assert (=> start!503240 (and (inv!70943 lm!2671) e!3023528)))

(assert (=> start!503240 true))

(declare-fun tp_is_empty!34881 () Bool)

(assert (=> start!503240 tp_is_empty!34881))

(declare-fun b!4838065 () Bool)

(declare-fun containsKey!4543 (List!55412 K!17042) Bool)

(assert (=> b!4838065 (= e!3023529 (not (containsKey!4543 (_2!32670 (h!61724 (toList!7701 lm!2671))) key!6540)))))

(declare-fun b!4838066 () Bool)

(declare-fun res!2062071 () Bool)

(assert (=> b!4838066 (=> (not res!2062071) (not e!3023530))))

(declare-fun allKeysSameHashInMap!2705 (ListLongMap!6241 Hashable!7389) Bool)

(assert (=> b!4838066 (= res!2062071 (allKeysSameHashInMap!2705 lm!2671 hashF!1662))))

(declare-fun b!4838067 () Bool)

(declare-fun res!2062074 () Bool)

(assert (=> b!4838067 (=> (not res!2062074) (not e!3023530))))

(declare-fun containsKeyBiggerList!673 (List!55413 K!17042) Bool)

(assert (=> b!4838067 (= res!2062074 (containsKeyBiggerList!673 (toList!7701 lm!2671) key!6540))))

(declare-fun b!4838068 () Bool)

(declare-fun e!3023527 () Bool)

(assert (=> b!4838068 (= e!3023530 e!3023527)))

(declare-fun res!2062075 () Bool)

(assert (=> b!4838068 (=> (not res!2062075) (not e!3023527))))

(declare-fun addToMapMapFromBucket!1887 (List!55412 ListMap!7055) ListMap!7055)

(assert (=> b!4838068 (= res!2062075 (= (extractMap!2747 (toList!7701 lm!2671)) (addToMapMapFromBucket!1887 (_2!32670 (h!61724 (toList!7701 lm!2671))) lt!1982874)))))

(assert (=> b!4838068 (= lt!1982874 (extractMap!2747 (t!362909 (toList!7701 lm!2671))))))

(declare-fun b!4838069 () Bool)

(assert (=> b!4838069 (= e!3023525 (forall!12798 (t!362909 (toList!7701 lm!2671)) lambda!240106))))

(declare-fun b!4838070 () Bool)

(assert (=> b!4838070 (= e!3023527 (not e!3023526))))

(declare-fun res!2062072 () Bool)

(assert (=> b!4838070 (=> res!2062072 e!3023526)))

(assert (=> b!4838070 (= res!2062072 (not (containsKeyBiggerList!673 (t!362909 (toList!7701 lm!2671)) key!6540)))))

(declare-fun tail!9456 (List!55413) List!55413)

(assert (=> b!4838070 (containsKeyBiggerList!673 (tail!9456 (toList!7701 lm!2671)) key!6540)))

(declare-fun lt!1982873 () Unit!144765)

(declare-fun lemmaInBiggerListButNotHeadThenTail!33 (ListLongMap!6241 K!17042 Hashable!7389) Unit!144765)

(assert (=> b!4838070 (= lt!1982873 (lemmaInBiggerListButNotHeadThenTail!33 lm!2671 key!6540 hashF!1662))))

(assert (= (and start!503240 res!2062069) b!4838066))

(assert (= (and b!4838066 res!2062071) b!4838067))

(assert (= (and b!4838067 res!2062074) b!4838062))

(assert (= (and b!4838062 (not res!2062067)) b!4838065))

(assert (= (and b!4838062 res!2062073) b!4838064))

(assert (= (and b!4838064 res!2062070) b!4838068))

(assert (= (and b!4838068 res!2062075) b!4838070))

(assert (= (and b!4838070 (not res!2062072)) b!4838063))

(assert (= (and b!4838063 (not res!2062068)) b!4838069))

(assert (= start!503240 b!4838061))

(declare-fun m!5833486 () Bool)

(assert (=> start!503240 m!5833486))

(declare-fun m!5833488 () Bool)

(assert (=> start!503240 m!5833488))

(declare-fun m!5833490 () Bool)

(assert (=> b!4838069 m!5833490))

(declare-fun m!5833492 () Bool)

(assert (=> b!4838065 m!5833492))

(declare-fun m!5833494 () Bool)

(assert (=> b!4838067 m!5833494))

(declare-fun m!5833496 () Bool)

(assert (=> b!4838063 m!5833496))

(declare-fun m!5833498 () Bool)

(assert (=> b!4838063 m!5833498))

(declare-fun m!5833500 () Bool)

(assert (=> b!4838063 m!5833500))

(assert (=> b!4838063 m!5833500))

(declare-fun m!5833502 () Bool)

(assert (=> b!4838063 m!5833502))

(declare-fun m!5833504 () Bool)

(assert (=> b!4838063 m!5833504))

(declare-fun m!5833506 () Bool)

(assert (=> b!4838066 m!5833506))

(declare-fun m!5833508 () Bool)

(assert (=> b!4838070 m!5833508))

(declare-fun m!5833510 () Bool)

(assert (=> b!4838070 m!5833510))

(assert (=> b!4838070 m!5833510))

(declare-fun m!5833512 () Bool)

(assert (=> b!4838070 m!5833512))

(declare-fun m!5833514 () Bool)

(assert (=> b!4838070 m!5833514))

(declare-fun m!5833516 () Bool)

(assert (=> b!4838068 m!5833516))

(declare-fun m!5833518 () Bool)

(assert (=> b!4838068 m!5833518))

(declare-fun m!5833520 () Bool)

(assert (=> b!4838068 m!5833520))

(push 1)

(assert (not start!503240))

(assert (not b!4838065))

(assert (not b!4838069))

(assert (not b!4838061))

(assert tp_is_empty!34881)

(assert (not b!4838067))

(assert (not b!4838063))

(assert (not b!4838070))

(assert (not b!4838066))

(assert (not b!4838068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550964 () Bool)

(declare-fun res!2062107 () Bool)

(declare-fun e!3023553 () Bool)

(assert (=> d!1550964 (=> res!2062107 e!3023553)))

(assert (=> d!1550964 (= res!2062107 (is-Nil!55289 (toList!7701 lm!2671)))))

(assert (=> d!1550964 (= (forall!12798 (toList!7701 lm!2671) lambda!240106) e!3023553)))

(declare-fun b!4838105 () Bool)

(declare-fun e!3023554 () Bool)

(assert (=> b!4838105 (= e!3023553 e!3023554)))

(declare-fun res!2062108 () Bool)

(assert (=> b!4838105 (=> (not res!2062108) (not e!3023554))))

(declare-fun dynLambda!22278 (Int tuple2!58752) Bool)

(assert (=> b!4838105 (= res!2062108 (dynLambda!22278 lambda!240106 (h!61724 (toList!7701 lm!2671))))))

(declare-fun b!4838106 () Bool)

(assert (=> b!4838106 (= e!3023554 (forall!12798 (t!362909 (toList!7701 lm!2671)) lambda!240106))))

(assert (= (and d!1550964 (not res!2062107)) b!4838105))

(assert (= (and b!4838105 res!2062108) b!4838106))

(declare-fun b_lambda!191227 () Bool)

(assert (=> (not b_lambda!191227) (not b!4838105)))

(declare-fun m!5833558 () Bool)

(assert (=> b!4838105 m!5833558))

(assert (=> b!4838106 m!5833490))

(assert (=> start!503240 d!1550964))

(declare-fun d!1550966 () Bool)

(declare-fun isStrictlySorted!1026 (List!55413) Bool)

(assert (=> d!1550966 (= (inv!70943 lm!2671) (isStrictlySorted!1026 (toList!7701 lm!2671)))))

(declare-fun bs!1167893 () Bool)

(assert (= bs!1167893 d!1550966))

(declare-fun m!5833560 () Bool)

(assert (=> bs!1167893 m!5833560))

(assert (=> start!503240 d!1550966))

(declare-fun d!1550968 () Bool)

(declare-fun res!2062117 () Bool)

(declare-fun e!3023562 () Bool)

(assert (=> d!1550968 (=> res!2062117 e!3023562)))

(declare-fun e!3023561 () Bool)

(assert (=> d!1550968 (= res!2062117 e!3023561)))

(declare-fun res!2062115 () Bool)

(assert (=> d!1550968 (=> (not res!2062115) (not e!3023561))))

(assert (=> d!1550968 (= res!2062115 (is-Cons!55289 (toList!7701 lm!2671)))))

(assert (=> d!1550968 (= (containsKeyBiggerList!673 (toList!7701 lm!2671) key!6540) e!3023562)))

(declare-fun b!4838113 () Bool)

(assert (=> b!4838113 (= e!3023561 (containsKey!4543 (_2!32670 (h!61724 (toList!7701 lm!2671))) key!6540))))

(declare-fun b!4838114 () Bool)

(declare-fun e!3023563 () Bool)

(assert (=> b!4838114 (= e!3023562 e!3023563)))

(declare-fun res!2062116 () Bool)

(assert (=> b!4838114 (=> (not res!2062116) (not e!3023563))))

(assert (=> b!4838114 (= res!2062116 (is-Cons!55289 (toList!7701 lm!2671)))))

(declare-fun b!4838115 () Bool)

(assert (=> b!4838115 (= e!3023563 (containsKeyBiggerList!673 (t!362909 (toList!7701 lm!2671)) key!6540))))

(assert (= (and d!1550968 res!2062115) b!4838113))

(assert (= (and d!1550968 (not res!2062117)) b!4838114))

(assert (= (and b!4838114 res!2062116) b!4838115))

(assert (=> b!4838113 m!5833492))

(assert (=> b!4838115 m!5833508))

(assert (=> b!4838067 d!1550968))

(declare-fun d!1550970 () Bool)

(declare-fun res!2062122 () Bool)

(declare-fun e!3023568 () Bool)

(assert (=> d!1550970 (=> res!2062122 e!3023568)))

(assert (=> d!1550970 (= res!2062122 (and (is-Cons!55288 (_2!32670 (h!61724 (toList!7701 lm!2671)))) (= (_1!32669 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671))))) key!6540)))))

(assert (=> d!1550970 (= (containsKey!4543 (_2!32670 (h!61724 (toList!7701 lm!2671))) key!6540) e!3023568)))

(declare-fun b!4838120 () Bool)

(declare-fun e!3023569 () Bool)

(assert (=> b!4838120 (= e!3023568 e!3023569)))

(declare-fun res!2062123 () Bool)

(assert (=> b!4838120 (=> (not res!2062123) (not e!3023569))))

(assert (=> b!4838120 (= res!2062123 (is-Cons!55288 (_2!32670 (h!61724 (toList!7701 lm!2671)))))))

(declare-fun b!4838121 () Bool)

(assert (=> b!4838121 (= e!3023569 (containsKey!4543 (t!362908 (_2!32670 (h!61724 (toList!7701 lm!2671)))) key!6540))))

(assert (= (and d!1550970 (not res!2062122)) b!4838120))

(assert (= (and b!4838120 res!2062123) b!4838121))

(declare-fun m!5833562 () Bool)

(assert (=> b!4838121 m!5833562))

(assert (=> b!4838065 d!1550970))

(declare-fun bs!1167894 () Bool)

(declare-fun d!1550972 () Bool)

(assert (= bs!1167894 (and d!1550972 start!503240)))

(declare-fun lambda!240114 () Int)

(assert (=> bs!1167894 (not (= lambda!240114 lambda!240106))))

(assert (=> d!1550972 true))

(assert (=> d!1550972 (= (allKeysSameHashInMap!2705 lm!2671 hashF!1662) (forall!12798 (toList!7701 lm!2671) lambda!240114))))

(declare-fun bs!1167895 () Bool)

(assert (= bs!1167895 d!1550972))

(declare-fun m!5833564 () Bool)

(assert (=> bs!1167895 m!5833564))

(assert (=> b!4838066 d!1550972))

(declare-fun d!1550974 () Bool)

(declare-fun res!2062124 () Bool)

(declare-fun e!3023570 () Bool)

(assert (=> d!1550974 (=> res!2062124 e!3023570)))

(assert (=> d!1550974 (= res!2062124 (is-Nil!55289 (t!362909 (toList!7701 lm!2671))))))

(assert (=> d!1550974 (= (forall!12798 (t!362909 (toList!7701 lm!2671)) lambda!240106) e!3023570)))

(declare-fun b!4838124 () Bool)

(declare-fun e!3023571 () Bool)

(assert (=> b!4838124 (= e!3023570 e!3023571)))

(declare-fun res!2062125 () Bool)

(assert (=> b!4838124 (=> (not res!2062125) (not e!3023571))))

(assert (=> b!4838124 (= res!2062125 (dynLambda!22278 lambda!240106 (h!61724 (t!362909 (toList!7701 lm!2671)))))))

(declare-fun b!4838125 () Bool)

(assert (=> b!4838125 (= e!3023571 (forall!12798 (t!362909 (t!362909 (toList!7701 lm!2671))) lambda!240106))))

(assert (= (and d!1550974 (not res!2062124)) b!4838124))

(assert (= (and b!4838124 res!2062125) b!4838125))

(declare-fun b_lambda!191229 () Bool)

(assert (=> (not b_lambda!191229) (not b!4838124)))

(declare-fun m!5833566 () Bool)

(assert (=> b!4838124 m!5833566))

(declare-fun m!5833568 () Bool)

(assert (=> b!4838125 m!5833568))

(assert (=> b!4838069 d!1550974))

(declare-fun d!1550976 () Bool)

(declare-fun res!2062128 () Bool)

(declare-fun e!3023573 () Bool)

(assert (=> d!1550976 (=> res!2062128 e!3023573)))

(declare-fun e!3023572 () Bool)

(assert (=> d!1550976 (= res!2062128 e!3023572)))

(declare-fun res!2062126 () Bool)

(assert (=> d!1550976 (=> (not res!2062126) (not e!3023572))))

(assert (=> d!1550976 (= res!2062126 (is-Cons!55289 (t!362909 (toList!7701 lm!2671))))))

(assert (=> d!1550976 (= (containsKeyBiggerList!673 (t!362909 (toList!7701 lm!2671)) key!6540) e!3023573)))

(declare-fun b!4838126 () Bool)

(assert (=> b!4838126 (= e!3023572 (containsKey!4543 (_2!32670 (h!61724 (t!362909 (toList!7701 lm!2671)))) key!6540))))

(declare-fun b!4838127 () Bool)

(declare-fun e!3023574 () Bool)

(assert (=> b!4838127 (= e!3023573 e!3023574)))

(declare-fun res!2062127 () Bool)

(assert (=> b!4838127 (=> (not res!2062127) (not e!3023574))))

(assert (=> b!4838127 (= res!2062127 (is-Cons!55289 (t!362909 (toList!7701 lm!2671))))))

(declare-fun b!4838128 () Bool)

(assert (=> b!4838128 (= e!3023574 (containsKeyBiggerList!673 (t!362909 (t!362909 (toList!7701 lm!2671))) key!6540))))

(assert (= (and d!1550976 res!2062126) b!4838126))

(assert (= (and d!1550976 (not res!2062128)) b!4838127))

(assert (= (and b!4838127 res!2062127) b!4838128))

(declare-fun m!5833570 () Bool)

(assert (=> b!4838126 m!5833570))

(declare-fun m!5833572 () Bool)

(assert (=> b!4838128 m!5833572))

(assert (=> b!4838070 d!1550976))

(declare-fun d!1550978 () Bool)

(declare-fun res!2062131 () Bool)

(declare-fun e!3023576 () Bool)

(assert (=> d!1550978 (=> res!2062131 e!3023576)))

(declare-fun e!3023575 () Bool)

(assert (=> d!1550978 (= res!2062131 e!3023575)))

(declare-fun res!2062129 () Bool)

(assert (=> d!1550978 (=> (not res!2062129) (not e!3023575))))

(assert (=> d!1550978 (= res!2062129 (is-Cons!55289 (tail!9456 (toList!7701 lm!2671))))))

(assert (=> d!1550978 (= (containsKeyBiggerList!673 (tail!9456 (toList!7701 lm!2671)) key!6540) e!3023576)))

(declare-fun b!4838129 () Bool)

(assert (=> b!4838129 (= e!3023575 (containsKey!4543 (_2!32670 (h!61724 (tail!9456 (toList!7701 lm!2671)))) key!6540))))

(declare-fun b!4838130 () Bool)

(declare-fun e!3023577 () Bool)

(assert (=> b!4838130 (= e!3023576 e!3023577)))

(declare-fun res!2062130 () Bool)

(assert (=> b!4838130 (=> (not res!2062130) (not e!3023577))))

(assert (=> b!4838130 (= res!2062130 (is-Cons!55289 (tail!9456 (toList!7701 lm!2671))))))

(declare-fun b!4838131 () Bool)

(assert (=> b!4838131 (= e!3023577 (containsKeyBiggerList!673 (t!362909 (tail!9456 (toList!7701 lm!2671))) key!6540))))

(assert (= (and d!1550978 res!2062129) b!4838129))

(assert (= (and d!1550978 (not res!2062131)) b!4838130))

(assert (= (and b!4838130 res!2062130) b!4838131))

(declare-fun m!5833574 () Bool)

(assert (=> b!4838129 m!5833574))

(declare-fun m!5833576 () Bool)

(assert (=> b!4838131 m!5833576))

(assert (=> b!4838070 d!1550978))

(declare-fun d!1550980 () Bool)

(assert (=> d!1550980 (= (tail!9456 (toList!7701 lm!2671)) (t!362909 (toList!7701 lm!2671)))))

(assert (=> b!4838070 d!1550980))

(declare-fun bs!1167896 () Bool)

(declare-fun d!1550982 () Bool)

(assert (= bs!1167896 (and d!1550982 start!503240)))

(declare-fun lambda!240117 () Int)

(assert (=> bs!1167896 (= lambda!240117 lambda!240106)))

(declare-fun bs!1167897 () Bool)

(assert (= bs!1167897 (and d!1550982 d!1550972)))

(assert (=> bs!1167897 (not (= lambda!240117 lambda!240114))))

(assert (=> d!1550982 (containsKeyBiggerList!673 (tail!9456 (toList!7701 lm!2671)) key!6540)))

(declare-fun lt!1982890 () Unit!144765)

(declare-fun choose!35342 (ListLongMap!6241 K!17042 Hashable!7389) Unit!144765)

(assert (=> d!1550982 (= lt!1982890 (choose!35342 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1550982 (forall!12798 (toList!7701 lm!2671) lambda!240117)))

(assert (=> d!1550982 (= (lemmaInBiggerListButNotHeadThenTail!33 lm!2671 key!6540 hashF!1662) lt!1982890)))

(declare-fun bs!1167898 () Bool)

(assert (= bs!1167898 d!1550982))

(assert (=> bs!1167898 m!5833510))

(assert (=> bs!1167898 m!5833510))

(assert (=> bs!1167898 m!5833512))

(declare-fun m!5833578 () Bool)

(assert (=> bs!1167898 m!5833578))

(declare-fun m!5833580 () Bool)

(assert (=> bs!1167898 m!5833580))

(assert (=> b!4838070 d!1550982))

(declare-fun bs!1167899 () Bool)

(declare-fun d!1550986 () Bool)

(assert (= bs!1167899 (and d!1550986 start!503240)))

(declare-fun lambda!240120 () Int)

(assert (=> bs!1167899 (= lambda!240120 lambda!240106)))

(declare-fun bs!1167900 () Bool)

(assert (= bs!1167900 (and d!1550986 d!1550972)))

(assert (=> bs!1167900 (not (= lambda!240120 lambda!240114))))

(declare-fun bs!1167901 () Bool)

(assert (= bs!1167901 (and d!1550986 d!1550982)))

(assert (=> bs!1167901 (= lambda!240120 lambda!240117)))

(declare-fun lt!1982893 () ListMap!7055)

(declare-fun invariantList!1862 (List!55412) Bool)

(assert (=> d!1550986 (invariantList!1862 (toList!7702 lt!1982893))))

(declare-fun e!3023580 () ListMap!7055)

(assert (=> d!1550986 (= lt!1982893 e!3023580)))

(declare-fun c!824012 () Bool)

(assert (=> d!1550986 (= c!824012 (is-Cons!55289 (toList!7701 lm!2671)))))

(assert (=> d!1550986 (forall!12798 (toList!7701 lm!2671) lambda!240120)))

(assert (=> d!1550986 (= (extractMap!2747 (toList!7701 lm!2671)) lt!1982893)))

(declare-fun b!4838136 () Bool)

(assert (=> b!4838136 (= e!3023580 (addToMapMapFromBucket!1887 (_2!32670 (h!61724 (toList!7701 lm!2671))) (extractMap!2747 (t!362909 (toList!7701 lm!2671)))))))

(declare-fun b!4838137 () Bool)

(assert (=> b!4838137 (= e!3023580 (ListMap!7056 Nil!55288))))

(assert (= (and d!1550986 c!824012) b!4838136))

(assert (= (and d!1550986 (not c!824012)) b!4838137))

(declare-fun m!5833582 () Bool)

(assert (=> d!1550986 m!5833582))

(declare-fun m!5833584 () Bool)

(assert (=> d!1550986 m!5833584))

(assert (=> b!4838136 m!5833520))

(assert (=> b!4838136 m!5833520))

(declare-fun m!5833586 () Bool)

(assert (=> b!4838136 m!5833586))

(assert (=> b!4838068 d!1550986))

(declare-fun b!4838155 () Bool)

(assert (=> b!4838155 true))

(declare-fun bs!1167903 () Bool)

(declare-fun b!4838158 () Bool)

(assert (= bs!1167903 (and b!4838158 b!4838155)))

(declare-fun lambda!240153 () Int)

(declare-fun lambda!240152 () Int)

(assert (=> bs!1167903 (= lambda!240153 lambda!240152)))

(assert (=> b!4838158 true))

(declare-fun lt!1982939 () ListMap!7055)

(declare-fun lambda!240154 () Int)

(assert (=> bs!1167903 (= (= lt!1982939 lt!1982874) (= lambda!240154 lambda!240152))))

(assert (=> b!4838158 (= (= lt!1982939 lt!1982874) (= lambda!240154 lambda!240153))))

(assert (=> b!4838158 true))

(declare-fun bs!1167904 () Bool)

(declare-fun d!1550988 () Bool)

(assert (= bs!1167904 (and d!1550988 b!4838155)))

(declare-fun lt!1982951 () ListMap!7055)

(declare-fun lambda!240155 () Int)

(assert (=> bs!1167904 (= (= lt!1982951 lt!1982874) (= lambda!240155 lambda!240152))))

(declare-fun bs!1167905 () Bool)

(assert (= bs!1167905 (and d!1550988 b!4838158)))

(assert (=> bs!1167905 (= (= lt!1982951 lt!1982874) (= lambda!240155 lambda!240153))))

(assert (=> bs!1167905 (= (= lt!1982951 lt!1982939) (= lambda!240155 lambda!240154))))

(assert (=> d!1550988 true))

(declare-fun bm!337162 () Bool)

(declare-fun call!337169 () Unit!144765)

(declare-fun lemmaContainsAllItsOwnKeys!1036 (ListMap!7055) Unit!144765)

(assert (=> bm!337162 (= call!337169 (lemmaContainsAllItsOwnKeys!1036 lt!1982874))))

(declare-fun b!4838154 () Bool)

(declare-fun e!3023592 () Bool)

(assert (=> b!4838154 (= e!3023592 (invariantList!1862 (toList!7702 lt!1982951)))))

(declare-fun e!3023590 () ListMap!7055)

(assert (=> b!4838155 (= e!3023590 lt!1982874)))

(declare-fun lt!1982948 () Unit!144765)

(assert (=> b!4838155 (= lt!1982948 call!337169)))

(declare-fun call!337167 () Bool)

(assert (=> b!4838155 call!337167))

(declare-fun lt!1982945 () Unit!144765)

(assert (=> b!4838155 (= lt!1982945 lt!1982948)))

(declare-fun call!337168 () Bool)

(assert (=> b!4838155 call!337168))

(declare-fun lt!1982952 () Unit!144765)

(declare-fun Unit!144769 () Unit!144765)

(assert (=> b!4838155 (= lt!1982952 Unit!144769)))

(declare-fun bm!337164 () Bool)

(declare-fun c!824018 () Bool)

(declare-fun forall!12800 (List!55412 Int) Bool)

(assert (=> bm!337164 (= call!337167 (forall!12800 (ite c!824018 (toList!7702 lt!1982874) (_2!32670 (h!61724 (toList!7701 lm!2671)))) (ite c!824018 lambda!240152 lambda!240154)))))

(declare-fun b!4838156 () Bool)

(declare-fun e!3023591 () Bool)

(assert (=> b!4838156 (= e!3023591 (forall!12800 (toList!7702 lt!1982874) lambda!240154))))

(assert (=> d!1550988 e!3023592))

(declare-fun res!2062140 () Bool)

(assert (=> d!1550988 (=> (not res!2062140) (not e!3023592))))

(assert (=> d!1550988 (= res!2062140 (forall!12800 (_2!32670 (h!61724 (toList!7701 lm!2671))) lambda!240155))))

(assert (=> d!1550988 (= lt!1982951 e!3023590)))

(assert (=> d!1550988 (= c!824018 (is-Nil!55288 (_2!32670 (h!61724 (toList!7701 lm!2671)))))))

(declare-fun noDuplicateKeys!2527 (List!55412) Bool)

(assert (=> d!1550988 (noDuplicateKeys!2527 (_2!32670 (h!61724 (toList!7701 lm!2671))))))

(assert (=> d!1550988 (= (addToMapMapFromBucket!1887 (_2!32670 (h!61724 (toList!7701 lm!2671))) lt!1982874) lt!1982951)))

(declare-fun bm!337163 () Bool)

(declare-fun lt!1982956 () ListMap!7055)

(assert (=> bm!337163 (= call!337168 (forall!12800 (ite c!824018 (toList!7702 lt!1982874) (toList!7702 lt!1982956)) (ite c!824018 lambda!240152 lambda!240154)))))

(declare-fun b!4838157 () Bool)

(declare-fun res!2062138 () Bool)

(assert (=> b!4838157 (=> (not res!2062138) (not e!3023592))))

(assert (=> b!4838157 (= res!2062138 (forall!12800 (toList!7702 lt!1982874) lambda!240155))))

(assert (=> b!4838158 (= e!3023590 lt!1982939)))

(declare-fun +!2596 (ListMap!7055 tuple2!58750) ListMap!7055)

(assert (=> b!4838158 (= lt!1982956 (+!2596 lt!1982874 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671))))))))

(assert (=> b!4838158 (= lt!1982939 (addToMapMapFromBucket!1887 (t!362908 (_2!32670 (h!61724 (toList!7701 lm!2671)))) (+!2596 lt!1982874 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671)))))))))

(declare-fun lt!1982943 () Unit!144765)

(assert (=> b!4838158 (= lt!1982943 call!337169)))

(assert (=> b!4838158 (forall!12800 (toList!7702 lt!1982874) lambda!240153)))

(declare-fun lt!1982950 () Unit!144765)

(assert (=> b!4838158 (= lt!1982950 lt!1982943)))

(assert (=> b!4838158 (forall!12800 (toList!7702 lt!1982956) lambda!240154)))

(declare-fun lt!1982959 () Unit!144765)

(declare-fun Unit!144770 () Unit!144765)

(assert (=> b!4838158 (= lt!1982959 Unit!144770)))

(assert (=> b!4838158 (forall!12800 (t!362908 (_2!32670 (h!61724 (toList!7701 lm!2671)))) lambda!240154)))

(declare-fun lt!1982944 () Unit!144765)

(declare-fun Unit!144771 () Unit!144765)

(assert (=> b!4838158 (= lt!1982944 Unit!144771)))

(declare-fun lt!1982957 () Unit!144765)

(declare-fun Unit!144772 () Unit!144765)

(assert (=> b!4838158 (= lt!1982957 Unit!144772)))

(declare-fun lt!1982955 () Unit!144765)

(declare-fun forallContained!4477 (List!55412 Int tuple2!58750) Unit!144765)

(assert (=> b!4838158 (= lt!1982955 (forallContained!4477 (toList!7702 lt!1982956) lambda!240154 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671))))))))

(assert (=> b!4838158 (contains!19055 lt!1982956 (_1!32669 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671))))))))

(declare-fun lt!1982954 () Unit!144765)

(declare-fun Unit!144773 () Unit!144765)

(assert (=> b!4838158 (= lt!1982954 Unit!144773)))

(assert (=> b!4838158 (contains!19055 lt!1982939 (_1!32669 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671))))))))

(declare-fun lt!1982953 () Unit!144765)

(declare-fun Unit!144774 () Unit!144765)

(assert (=> b!4838158 (= lt!1982953 Unit!144774)))

(assert (=> b!4838158 (forall!12800 (_2!32670 (h!61724 (toList!7701 lm!2671))) lambda!240154)))

(declare-fun lt!1982946 () Unit!144765)

(declare-fun Unit!144775 () Unit!144765)

(assert (=> b!4838158 (= lt!1982946 Unit!144775)))

(assert (=> b!4838158 call!337168))

(declare-fun lt!1982941 () Unit!144765)

(declare-fun Unit!144776 () Unit!144765)

(assert (=> b!4838158 (= lt!1982941 Unit!144776)))

(declare-fun lt!1982958 () Unit!144765)

(declare-fun Unit!144777 () Unit!144765)

(assert (=> b!4838158 (= lt!1982958 Unit!144777)))

(declare-fun lt!1982949 () Unit!144765)

(declare-fun addForallContainsKeyThenBeforeAdding!1034 (ListMap!7055 ListMap!7055 K!17042 V!17288) Unit!144765)

(assert (=> b!4838158 (= lt!1982949 (addForallContainsKeyThenBeforeAdding!1034 lt!1982874 lt!1982939 (_1!32669 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671))))) (_2!32669 (h!61723 (_2!32670 (h!61724 (toList!7701 lm!2671)))))))))

(assert (=> b!4838158 (forall!12800 (toList!7702 lt!1982874) lambda!240154)))

(declare-fun lt!1982940 () Unit!144765)

(assert (=> b!4838158 (= lt!1982940 lt!1982949)))

(assert (=> b!4838158 (forall!12800 (toList!7702 lt!1982874) lambda!240154)))

(declare-fun lt!1982942 () Unit!144765)

(declare-fun Unit!144778 () Unit!144765)

(assert (=> b!4838158 (= lt!1982942 Unit!144778)))

(declare-fun res!2062139 () Bool)

(assert (=> b!4838158 (= res!2062139 call!337167)))

(assert (=> b!4838158 (=> (not res!2062139) (not e!3023591))))

(assert (=> b!4838158 e!3023591))

(declare-fun lt!1982947 () Unit!144765)

(declare-fun Unit!144779 () Unit!144765)

(assert (=> b!4838158 (= lt!1982947 Unit!144779)))

(assert (= (and d!1550988 c!824018) b!4838155))

(assert (= (and d!1550988 (not c!824018)) b!4838158))

(assert (= (and b!4838158 res!2062139) b!4838156))

(assert (= (or b!4838155 b!4838158) bm!337162))

(assert (= (or b!4838155 b!4838158) bm!337164))

(assert (= (or b!4838155 b!4838158) bm!337163))

(assert (= (and d!1550988 res!2062140) b!4838157))

(assert (= (and b!4838157 res!2062138) b!4838154))

(declare-fun m!5833594 () Bool)

(assert (=> bm!337163 m!5833594))

(declare-fun m!5833596 () Bool)

(assert (=> d!1550988 m!5833596))

(declare-fun m!5833598 () Bool)

(assert (=> d!1550988 m!5833598))

(declare-fun m!5833600 () Bool)

(assert (=> b!4838157 m!5833600))

(declare-fun m!5833602 () Bool)

(assert (=> bm!337162 m!5833602))

(declare-fun m!5833604 () Bool)

(assert (=> b!4838156 m!5833604))

(declare-fun m!5833606 () Bool)

(assert (=> b!4838158 m!5833606))

(declare-fun m!5833608 () Bool)

(assert (=> b!4838158 m!5833608))

(declare-fun m!5833610 () Bool)

(assert (=> b!4838158 m!5833610))

(declare-fun m!5833612 () Bool)

(assert (=> b!4838158 m!5833612))

(assert (=> b!4838158 m!5833604))

(declare-fun m!5833614 () Bool)

(assert (=> b!4838158 m!5833614))

(assert (=> b!4838158 m!5833604))

(declare-fun m!5833616 () Bool)

(assert (=> b!4838158 m!5833616))

(declare-fun m!5833618 () Bool)

(assert (=> b!4838158 m!5833618))

(assert (=> b!4838158 m!5833608))

(declare-fun m!5833620 () Bool)

(assert (=> b!4838158 m!5833620))

(declare-fun m!5833622 () Bool)

(assert (=> b!4838158 m!5833622))

(declare-fun m!5833624 () Bool)

(assert (=> b!4838158 m!5833624))

(declare-fun m!5833626 () Bool)

(assert (=> bm!337164 m!5833626))

(declare-fun m!5833628 () Bool)

(assert (=> b!4838154 m!5833628))

(assert (=> b!4838068 d!1550988))

(declare-fun bs!1167906 () Bool)

(declare-fun d!1550992 () Bool)

(assert (= bs!1167906 (and d!1550992 start!503240)))

(declare-fun lambda!240156 () Int)

(assert (=> bs!1167906 (= lambda!240156 lambda!240106)))

(declare-fun bs!1167907 () Bool)

(assert (= bs!1167907 (and d!1550992 d!1550972)))

(assert (=> bs!1167907 (not (= lambda!240156 lambda!240114))))

(declare-fun bs!1167908 () Bool)

(assert (= bs!1167908 (and d!1550992 d!1550982)))

(assert (=> bs!1167908 (= lambda!240156 lambda!240117)))

(declare-fun bs!1167909 () Bool)

(assert (= bs!1167909 (and d!1550992 d!1550986)))

(assert (=> bs!1167909 (= lambda!240156 lambda!240120)))

(declare-fun lt!1982960 () ListMap!7055)

(assert (=> d!1550992 (invariantList!1862 (toList!7702 lt!1982960))))

(declare-fun e!3023593 () ListMap!7055)

(assert (=> d!1550992 (= lt!1982960 e!3023593)))

(declare-fun c!824019 () Bool)

(assert (=> d!1550992 (= c!824019 (is-Cons!55289 (t!362909 (toList!7701 lm!2671))))))

(assert (=> d!1550992 (forall!12798 (t!362909 (toList!7701 lm!2671)) lambda!240156)))

(assert (=> d!1550992 (= (extractMap!2747 (t!362909 (toList!7701 lm!2671))) lt!1982960)))

(declare-fun b!4838161 () Bool)

(assert (=> b!4838161 (= e!3023593 (addToMapMapFromBucket!1887 (_2!32670 (h!61724 (t!362909 (toList!7701 lm!2671)))) (extractMap!2747 (t!362909 (t!362909 (toList!7701 lm!2671))))))))

(declare-fun b!4838162 () Bool)

(assert (=> b!4838162 (= e!3023593 (ListMap!7056 Nil!55288))))

(assert (= (and d!1550992 c!824019) b!4838161))

(assert (= (and d!1550992 (not c!824019)) b!4838162))

(declare-fun m!5833630 () Bool)

(assert (=> d!1550992 m!5833630))

(declare-fun m!5833632 () Bool)

(assert (=> d!1550992 m!5833632))

(declare-fun m!5833634 () Bool)

(assert (=> b!4838161 m!5833634))

(assert (=> b!4838161 m!5833634))

(declare-fun m!5833636 () Bool)

(assert (=> b!4838161 m!5833636))

(assert (=> b!4838068 d!1550992))

(declare-fun bs!1167910 () Bool)

(declare-fun d!1550994 () Bool)

(assert (= bs!1167910 (and d!1550994 d!1550992)))

(declare-fun lambda!240159 () Int)

(assert (=> bs!1167910 (= lambda!240159 lambda!240156)))

(declare-fun bs!1167911 () Bool)

(assert (= bs!1167911 (and d!1550994 d!1550972)))

(assert (=> bs!1167911 (not (= lambda!240159 lambda!240114))))

(declare-fun bs!1167912 () Bool)

(assert (= bs!1167912 (and d!1550994 d!1550982)))

(assert (=> bs!1167912 (= lambda!240159 lambda!240117)))

(declare-fun bs!1167913 () Bool)

(assert (= bs!1167913 (and d!1550994 d!1550986)))

(assert (=> bs!1167913 (= lambda!240159 lambda!240120)))

(declare-fun bs!1167914 () Bool)

(assert (= bs!1167914 (and d!1550994 start!503240)))

(assert (=> bs!1167914 (= lambda!240159 lambda!240106)))

(assert (=> d!1550994 (contains!19055 (extractMap!2747 (toList!7701 lt!1982875)) key!6540)))

(declare-fun lt!1982963 () Unit!144765)

(declare-fun choose!35343 (ListLongMap!6241 K!17042 Hashable!7389) Unit!144765)

(assert (=> d!1550994 (= lt!1982963 (choose!35343 lt!1982875 key!6540 hashF!1662))))

(assert (=> d!1550994 (forall!12798 (toList!7701 lt!1982875) lambda!240159)))

(assert (=> d!1550994 (= (lemmaListContainsThenExtractedMapContains!733 lt!1982875 key!6540 hashF!1662) lt!1982963)))

(declare-fun bs!1167915 () Bool)

(assert (= bs!1167915 d!1550994))

(assert (=> bs!1167915 m!5833500))

(assert (=> bs!1167915 m!5833500))

(assert (=> bs!1167915 m!5833502))

(declare-fun m!5833638 () Bool)

(assert (=> bs!1167915 m!5833638))

(declare-fun m!5833640 () Bool)

(assert (=> bs!1167915 m!5833640))

(assert (=> b!4838063 d!1550994))

(declare-fun d!1550996 () Bool)

(assert (=> d!1550996 (= (tail!9455 lm!2671) (ListLongMap!6242 (tail!9456 (toList!7701 lm!2671))))))

(declare-fun bs!1167916 () Bool)

(assert (= bs!1167916 d!1550996))

(assert (=> bs!1167916 m!5833510))

(assert (=> b!4838063 d!1550996))

(declare-fun b!4838181 () Bool)

(declare-fun e!3023609 () Bool)

(declare-datatypes ((List!55416 0))(
  ( (Nil!55292) (Cons!55292 (h!61727 K!17042) (t!362912 List!55416)) )
))
(declare-fun contains!19057 (List!55416 K!17042) Bool)

(declare-fun keys!20420 (ListMap!7055) List!55416)

(assert (=> b!4838181 (= e!3023609 (not (contains!19057 (keys!20420 lt!1982874) key!6540)))))

(declare-fun b!4838182 () Bool)

(assert (=> b!4838182 false))

(declare-fun lt!1982987 () Unit!144765)

(declare-fun lt!1982980 () Unit!144765)

(assert (=> b!4838182 (= lt!1982987 lt!1982980)))

(declare-fun containsKey!4545 (List!55412 K!17042) Bool)

(assert (=> b!4838182 (containsKey!4545 (toList!7702 lt!1982874) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1197 (List!55412 K!17042) Unit!144765)

(assert (=> b!4838182 (= lt!1982980 (lemmaInGetKeysListThenContainsKey!1197 (toList!7702 lt!1982874) key!6540))))

(declare-fun e!3023607 () Unit!144765)

(declare-fun Unit!144780 () Unit!144765)

(assert (=> b!4838182 (= e!3023607 Unit!144780)))

(declare-fun b!4838183 () Bool)

(declare-fun e!3023606 () Bool)

(assert (=> b!4838183 (= e!3023606 (contains!19057 (keys!20420 lt!1982874) key!6540))))

(declare-fun b!4838184 () Bool)

(declare-fun Unit!144781 () Unit!144765)

(assert (=> b!4838184 (= e!3023607 Unit!144781)))

(declare-fun d!1550998 () Bool)

(declare-fun e!3023611 () Bool)

(assert (=> d!1550998 e!3023611))

(declare-fun res!2062149 () Bool)

(assert (=> d!1550998 (=> res!2062149 e!3023611)))

(assert (=> d!1550998 (= res!2062149 e!3023609)))

(declare-fun res!2062148 () Bool)

(assert (=> d!1550998 (=> (not res!2062148) (not e!3023609))))

(declare-fun lt!1982984 () Bool)

(assert (=> d!1550998 (= res!2062148 (not lt!1982984))))

(declare-fun lt!1982986 () Bool)

(assert (=> d!1550998 (= lt!1982984 lt!1982986)))

(declare-fun lt!1982985 () Unit!144765)

(declare-fun e!3023610 () Unit!144765)

(assert (=> d!1550998 (= lt!1982985 e!3023610)))

(declare-fun c!824026 () Bool)

(assert (=> d!1550998 (= c!824026 lt!1982986)))

(assert (=> d!1550998 (= lt!1982986 (containsKey!4545 (toList!7702 lt!1982874) key!6540))))

(assert (=> d!1550998 (= (contains!19055 lt!1982874 key!6540) lt!1982984)))

(declare-fun b!4838185 () Bool)

(assert (=> b!4838185 (= e!3023610 e!3023607)))

(declare-fun c!824027 () Bool)

(declare-fun call!337172 () Bool)

(assert (=> b!4838185 (= c!824027 call!337172)))

(declare-fun b!4838186 () Bool)

(declare-fun e!3023608 () List!55416)

(assert (=> b!4838186 (= e!3023608 (keys!20420 lt!1982874))))

(declare-fun b!4838187 () Bool)

(assert (=> b!4838187 (= e!3023611 e!3023606)))

(declare-fun res!2062147 () Bool)

(assert (=> b!4838187 (=> (not res!2062147) (not e!3023606))))

(declare-datatypes ((Option!13592 0))(
  ( (None!13591) (Some!13591 (v!49313 V!17288)) )
))
(declare-fun isDefined!10697 (Option!13592) Bool)

(declare-fun getValueByKey!2690 (List!55412 K!17042) Option!13592)

(assert (=> b!4838187 (= res!2062147 (isDefined!10697 (getValueByKey!2690 (toList!7702 lt!1982874) key!6540)))))

(declare-fun bm!337167 () Bool)

(assert (=> bm!337167 (= call!337172 (contains!19057 e!3023608 key!6540))))

(declare-fun c!824028 () Bool)

(assert (=> bm!337167 (= c!824028 c!824026)))

(declare-fun b!4838188 () Bool)

(declare-fun getKeysList!1197 (List!55412) List!55416)

(assert (=> b!4838188 (= e!3023608 (getKeysList!1197 (toList!7702 lt!1982874)))))

(declare-fun b!4838189 () Bool)

(declare-fun lt!1982981 () Unit!144765)

(assert (=> b!4838189 (= e!3023610 lt!1982981)))

(declare-fun lt!1982983 () Unit!144765)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2470 (List!55412 K!17042) Unit!144765)

(assert (=> b!4838189 (= lt!1982983 (lemmaContainsKeyImpliesGetValueByKeyDefined!2470 (toList!7702 lt!1982874) key!6540))))

(assert (=> b!4838189 (isDefined!10697 (getValueByKey!2690 (toList!7702 lt!1982874) key!6540))))

(declare-fun lt!1982982 () Unit!144765)

(assert (=> b!4838189 (= lt!1982982 lt!1982983)))

(declare-fun lemmaInListThenGetKeysListContains!1192 (List!55412 K!17042) Unit!144765)

(assert (=> b!4838189 (= lt!1982981 (lemmaInListThenGetKeysListContains!1192 (toList!7702 lt!1982874) key!6540))))

(assert (=> b!4838189 call!337172))

(assert (= (and d!1550998 c!824026) b!4838189))

(assert (= (and d!1550998 (not c!824026)) b!4838185))

(assert (= (and b!4838185 c!824027) b!4838182))

(assert (= (and b!4838185 (not c!824027)) b!4838184))

(assert (= (or b!4838189 b!4838185) bm!337167))

(assert (= (and bm!337167 c!824028) b!4838188))

(assert (= (and bm!337167 (not c!824028)) b!4838186))

(assert (= (and d!1550998 res!2062148) b!4838181))

(assert (= (and d!1550998 (not res!2062149)) b!4838187))

(assert (= (and b!4838187 res!2062147) b!4838183))

(declare-fun m!5833642 () Bool)

(assert (=> b!4838182 m!5833642))

(declare-fun m!5833644 () Bool)

(assert (=> b!4838182 m!5833644))

(declare-fun m!5833646 () Bool)

(assert (=> b!4838187 m!5833646))

(assert (=> b!4838187 m!5833646))

(declare-fun m!5833648 () Bool)

(assert (=> b!4838187 m!5833648))

(declare-fun m!5833650 () Bool)

(assert (=> bm!337167 m!5833650))

(declare-fun m!5833652 () Bool)

(assert (=> b!4838189 m!5833652))

(assert (=> b!4838189 m!5833646))

(assert (=> b!4838189 m!5833646))

(assert (=> b!4838189 m!5833648))

(declare-fun m!5833654 () Bool)

(assert (=> b!4838189 m!5833654))

(declare-fun m!5833656 () Bool)

(assert (=> b!4838188 m!5833656))

(declare-fun m!5833658 () Bool)

(assert (=> b!4838183 m!5833658))

(assert (=> b!4838183 m!5833658))

(declare-fun m!5833660 () Bool)

(assert (=> b!4838183 m!5833660))

(assert (=> b!4838186 m!5833658))

(assert (=> b!4838181 m!5833658))

(assert (=> b!4838181 m!5833658))

(assert (=> b!4838181 m!5833660))

(assert (=> d!1550998 m!5833642))

(assert (=> b!4838063 d!1550998))

(declare-fun bs!1167917 () Bool)

(declare-fun d!1551000 () Bool)

(assert (= bs!1167917 (and d!1551000 d!1550992)))

(declare-fun lambda!240160 () Int)

(assert (=> bs!1167917 (= lambda!240160 lambda!240156)))

(declare-fun bs!1167918 () Bool)

(assert (= bs!1167918 (and d!1551000 d!1550972)))

(assert (=> bs!1167918 (not (= lambda!240160 lambda!240114))))

(declare-fun bs!1167919 () Bool)

(assert (= bs!1167919 (and d!1551000 d!1550994)))

(assert (=> bs!1167919 (= lambda!240160 lambda!240159)))

(declare-fun bs!1167920 () Bool)

(assert (= bs!1167920 (and d!1551000 d!1550982)))

(assert (=> bs!1167920 (= lambda!240160 lambda!240117)))

(declare-fun bs!1167921 () Bool)

(assert (= bs!1167921 (and d!1551000 d!1550986)))

(assert (=> bs!1167921 (= lambda!240160 lambda!240120)))

(declare-fun bs!1167922 () Bool)

(assert (= bs!1167922 (and d!1551000 start!503240)))

(assert (=> bs!1167922 (= lambda!240160 lambda!240106)))

(declare-fun lt!1982988 () ListMap!7055)

(assert (=> d!1551000 (invariantList!1862 (toList!7702 lt!1982988))))

(declare-fun e!3023612 () ListMap!7055)

(assert (=> d!1551000 (= lt!1982988 e!3023612)))

(declare-fun c!824029 () Bool)

(assert (=> d!1551000 (= c!824029 (is-Cons!55289 (toList!7701 lt!1982875)))))

(assert (=> d!1551000 (forall!12798 (toList!7701 lt!1982875) lambda!240160)))

(assert (=> d!1551000 (= (extractMap!2747 (toList!7701 lt!1982875)) lt!1982988)))

(declare-fun b!4838190 () Bool)

(assert (=> b!4838190 (= e!3023612 (addToMapMapFromBucket!1887 (_2!32670 (h!61724 (toList!7701 lt!1982875))) (extractMap!2747 (t!362909 (toList!7701 lt!1982875)))))))

(declare-fun b!4838191 () Bool)

(assert (=> b!4838191 (= e!3023612 (ListMap!7056 Nil!55288))))

(assert (= (and d!1551000 c!824029) b!4838190))

(assert (= (and d!1551000 (not c!824029)) b!4838191))

(declare-fun m!5833662 () Bool)

(assert (=> d!1551000 m!5833662))

(declare-fun m!5833664 () Bool)

(assert (=> d!1551000 m!5833664))

(declare-fun m!5833666 () Bool)

(assert (=> b!4838190 m!5833666))

(assert (=> b!4838190 m!5833666))

(declare-fun m!5833668 () Bool)

(assert (=> b!4838190 m!5833668))

(assert (=> b!4838063 d!1551000))

(declare-fun b!4838192 () Bool)

(declare-fun e!3023616 () Bool)

(assert (=> b!4838192 (= e!3023616 (not (contains!19057 (keys!20420 (extractMap!2747 (toList!7701 lt!1982875))) key!6540)))))

(declare-fun b!4838193 () Bool)

(assert (=> b!4838193 false))

(declare-fun lt!1982996 () Unit!144765)

(declare-fun lt!1982989 () Unit!144765)

(assert (=> b!4838193 (= lt!1982996 lt!1982989)))

(assert (=> b!4838193 (containsKey!4545 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875))) key!6540)))

(assert (=> b!4838193 (= lt!1982989 (lemmaInGetKeysListThenContainsKey!1197 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875))) key!6540))))

(declare-fun e!3023614 () Unit!144765)

(declare-fun Unit!144782 () Unit!144765)

(assert (=> b!4838193 (= e!3023614 Unit!144782)))

(declare-fun b!4838194 () Bool)

(declare-fun e!3023613 () Bool)

(assert (=> b!4838194 (= e!3023613 (contains!19057 (keys!20420 (extractMap!2747 (toList!7701 lt!1982875))) key!6540))))

(declare-fun b!4838195 () Bool)

(declare-fun Unit!144783 () Unit!144765)

(assert (=> b!4838195 (= e!3023614 Unit!144783)))

(declare-fun d!1551002 () Bool)

(declare-fun e!3023618 () Bool)

(assert (=> d!1551002 e!3023618))

(declare-fun res!2062152 () Bool)

(assert (=> d!1551002 (=> res!2062152 e!3023618)))

(assert (=> d!1551002 (= res!2062152 e!3023616)))

(declare-fun res!2062151 () Bool)

(assert (=> d!1551002 (=> (not res!2062151) (not e!3023616))))

(declare-fun lt!1982993 () Bool)

(assert (=> d!1551002 (= res!2062151 (not lt!1982993))))

(declare-fun lt!1982995 () Bool)

(assert (=> d!1551002 (= lt!1982993 lt!1982995)))

(declare-fun lt!1982994 () Unit!144765)

(declare-fun e!3023617 () Unit!144765)

(assert (=> d!1551002 (= lt!1982994 e!3023617)))

(declare-fun c!824030 () Bool)

(assert (=> d!1551002 (= c!824030 lt!1982995)))

(assert (=> d!1551002 (= lt!1982995 (containsKey!4545 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875))) key!6540))))

(assert (=> d!1551002 (= (contains!19055 (extractMap!2747 (toList!7701 lt!1982875)) key!6540) lt!1982993)))

(declare-fun b!4838196 () Bool)

(assert (=> b!4838196 (= e!3023617 e!3023614)))

(declare-fun c!824031 () Bool)

(declare-fun call!337173 () Bool)

(assert (=> b!4838196 (= c!824031 call!337173)))

(declare-fun b!4838197 () Bool)

(declare-fun e!3023615 () List!55416)

(assert (=> b!4838197 (= e!3023615 (keys!20420 (extractMap!2747 (toList!7701 lt!1982875))))))

(declare-fun b!4838198 () Bool)

(assert (=> b!4838198 (= e!3023618 e!3023613)))

(declare-fun res!2062150 () Bool)

(assert (=> b!4838198 (=> (not res!2062150) (not e!3023613))))

(assert (=> b!4838198 (= res!2062150 (isDefined!10697 (getValueByKey!2690 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875))) key!6540)))))

(declare-fun bm!337168 () Bool)

(assert (=> bm!337168 (= call!337173 (contains!19057 e!3023615 key!6540))))

(declare-fun c!824032 () Bool)

(assert (=> bm!337168 (= c!824032 c!824030)))

(declare-fun b!4838199 () Bool)

(assert (=> b!4838199 (= e!3023615 (getKeysList!1197 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875)))))))

(declare-fun b!4838200 () Bool)

(declare-fun lt!1982990 () Unit!144765)

(assert (=> b!4838200 (= e!3023617 lt!1982990)))

(declare-fun lt!1982992 () Unit!144765)

(assert (=> b!4838200 (= lt!1982992 (lemmaContainsKeyImpliesGetValueByKeyDefined!2470 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875))) key!6540))))

(assert (=> b!4838200 (isDefined!10697 (getValueByKey!2690 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875))) key!6540))))

(declare-fun lt!1982991 () Unit!144765)

(assert (=> b!4838200 (= lt!1982991 lt!1982992)))

(assert (=> b!4838200 (= lt!1982990 (lemmaInListThenGetKeysListContains!1192 (toList!7702 (extractMap!2747 (toList!7701 lt!1982875))) key!6540))))

(assert (=> b!4838200 call!337173))

(assert (= (and d!1551002 c!824030) b!4838200))

(assert (= (and d!1551002 (not c!824030)) b!4838196))

(assert (= (and b!4838196 c!824031) b!4838193))

(assert (= (and b!4838196 (not c!824031)) b!4838195))

(assert (= (or b!4838200 b!4838196) bm!337168))

(assert (= (and bm!337168 c!824032) b!4838199))

(assert (= (and bm!337168 (not c!824032)) b!4838197))

(assert (= (and d!1551002 res!2062151) b!4838192))

(assert (= (and d!1551002 (not res!2062152)) b!4838198))

(assert (= (and b!4838198 res!2062150) b!4838194))

(declare-fun m!5833670 () Bool)

(assert (=> b!4838193 m!5833670))

(declare-fun m!5833672 () Bool)

(assert (=> b!4838193 m!5833672))

(declare-fun m!5833674 () Bool)

(assert (=> b!4838198 m!5833674))

(assert (=> b!4838198 m!5833674))

(declare-fun m!5833676 () Bool)

(assert (=> b!4838198 m!5833676))

(declare-fun m!5833678 () Bool)

(assert (=> bm!337168 m!5833678))

(declare-fun m!5833680 () Bool)

(assert (=> b!4838200 m!5833680))

(assert (=> b!4838200 m!5833674))

(assert (=> b!4838200 m!5833674))

(assert (=> b!4838200 m!5833676))

(declare-fun m!5833682 () Bool)

(assert (=> b!4838200 m!5833682))

(declare-fun m!5833684 () Bool)

(assert (=> b!4838199 m!5833684))

(assert (=> b!4838194 m!5833500))

(declare-fun m!5833686 () Bool)

(assert (=> b!4838194 m!5833686))

(assert (=> b!4838194 m!5833686))

(declare-fun m!5833688 () Bool)

(assert (=> b!4838194 m!5833688))

(assert (=> b!4838197 m!5833500))

(assert (=> b!4838197 m!5833686))

(assert (=> b!4838192 m!5833500))

(assert (=> b!4838192 m!5833686))

(assert (=> b!4838192 m!5833686))

(assert (=> b!4838192 m!5833688))

(assert (=> d!1551002 m!5833670))

(assert (=> b!4838063 d!1551002))

(declare-fun b!4838205 () Bool)

(declare-fun e!3023621 () Bool)

(declare-fun tp!1363647 () Bool)

(declare-fun tp!1363648 () Bool)

(assert (=> b!4838205 (= e!3023621 (and tp!1363647 tp!1363648))))

(assert (=> b!4838061 (= tp!1363639 e!3023621)))

(assert (= (and b!4838061 (is-Cons!55289 (toList!7701 lm!2671))) b!4838205))

(declare-fun b_lambda!191231 () Bool)

(assert (= b_lambda!191229 (or start!503240 b_lambda!191231)))

(declare-fun bs!1167923 () Bool)

(declare-fun d!1551004 () Bool)

(assert (= bs!1167923 (and d!1551004 start!503240)))

(assert (=> bs!1167923 (= (dynLambda!22278 lambda!240106 (h!61724 (t!362909 (toList!7701 lm!2671)))) (noDuplicateKeys!2527 (_2!32670 (h!61724 (t!362909 (toList!7701 lm!2671))))))))

(declare-fun m!5833690 () Bool)

(assert (=> bs!1167923 m!5833690))

(assert (=> b!4838124 d!1551004))

(declare-fun b_lambda!191233 () Bool)

(assert (= b_lambda!191227 (or start!503240 b_lambda!191233)))

(declare-fun bs!1167924 () Bool)

(declare-fun d!1551006 () Bool)

(assert (= bs!1167924 (and d!1551006 start!503240)))

(assert (=> bs!1167924 (= (dynLambda!22278 lambda!240106 (h!61724 (toList!7701 lm!2671))) (noDuplicateKeys!2527 (_2!32670 (h!61724 (toList!7701 lm!2671)))))))

(assert (=> bs!1167924 m!5833598))

(assert (=> b!4838105 d!1551006))

(push 1)

(assert (not b!4838161))

(assert (not d!1550996))

(assert (not bm!337162))

(assert (not b!4838125))

(assert (not b!4838154))

(assert (not b!4838197))

(assert (not bs!1167924))

(assert (not d!1550986))

(assert (not b!4838200))

(assert (not b!4838194))

(assert (not d!1551000))

(assert (not b!4838181))

(assert (not b!4838186))

(assert (not b!4838192))

(assert (not b!4838187))

(assert (not b!4838126))

(assert (not b!4838190))

(assert (not b!4838193))

(assert (not b!4838106))

(assert (not b!4838128))

(assert (not bs!1167923))

(assert (not d!1550988))

(assert (not d!1551002))

(assert (not b!4838182))

(assert (not b!4838157))

(assert (not b!4838198))

(assert (not b!4838156))

(assert (not d!1550966))

(assert (not b!4838131))

(assert (not d!1550982))

(assert (not d!1550998))

(assert (not b!4838189))

(assert (not b!4838205))

(assert (not bm!337164))

(assert (not bm!337168))

(assert (not b!4838199))

(assert (not d!1550972))

(assert (not bm!337167))

(assert (not b!4838129))

(assert tp_is_empty!34881)

(assert (not b_lambda!191231))

(assert (not b!4838115))

(assert (not b!4838121))

(assert (not b!4838183))

(assert (not b!4838188))

(assert (not b!4838113))

(assert (not bm!337163))

(assert (not b!4838158))

(assert (not b!4838136))

(assert (not d!1550992))

(assert (not b_lambda!191233))

(assert (not d!1550994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


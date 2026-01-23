; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430244 () Bool)

(assert start!430244)

(declare-fun b!4417600 () Bool)

(declare-fun res!1825224 () Bool)

(declare-fun e!2750685 () Bool)

(assert (=> b!4417600 (=> (not res!1825224) (not e!2750685))))

(declare-datatypes ((K!10860 0))(
  ( (K!10861 (val!16959 Int)) )
))
(declare-datatypes ((V!11106 0))(
  ( (V!11107 (val!16960 Int)) )
))
(declare-datatypes ((tuple2!49238 0))(
  ( (tuple2!49239 (_1!27913 K!10860) (_2!27913 V!11106)) )
))
(declare-datatypes ((List!49618 0))(
  ( (Nil!49494) (Cons!49494 (h!55159 tuple2!49238) (t!356556 List!49618)) )
))
(declare-fun newBucket!194 () List!49618)

(declare-fun noDuplicateKeys!715 (List!49618) Bool)

(assert (=> b!4417600 (= res!1825224 (noDuplicateKeys!715 newBucket!194))))

(declare-fun b!4417601 () Bool)

(declare-fun res!1825220 () Bool)

(assert (=> b!4417601 (=> (not res!1825220) (not e!2750685))))

(declare-datatypes ((tuple2!49240 0))(
  ( (tuple2!49241 (_1!27914 (_ BitVec 64)) (_2!27914 List!49618)) )
))
(declare-datatypes ((List!49619 0))(
  ( (Nil!49495) (Cons!49495 (h!55160 tuple2!49240) (t!356557 List!49619)) )
))
(declare-datatypes ((ListLongMap!2067 0))(
  ( (ListLongMap!2068 (toList!3417 List!49619)) )
))
(declare-fun lm!1616 () ListLongMap!2067)

(declare-fun lambda!152324 () Int)

(declare-fun forall!9501 (List!49619 Int) Bool)

(assert (=> b!4417601 (= res!1825220 (forall!9501 (toList!3417 lm!1616) lambda!152324))))

(declare-fun key!3717 () K!10860)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun e!2750687 () Bool)

(declare-fun b!4417602 () Bool)

(declare-fun newValue!93 () V!11106)

(declare-fun apply!11567 (ListLongMap!2067 (_ BitVec 64)) List!49618)

(assert (=> b!4417602 (= e!2750687 (= newBucket!194 (Cons!49494 (tuple2!49239 key!3717 newValue!93) (apply!11567 lm!1616 hash!366))))))

(declare-fun res!1825225 () Bool)

(declare-fun e!2750682 () Bool)

(assert (=> start!430244 (=> (not res!1825225) (not e!2750682))))

(assert (=> start!430244 (= res!1825225 (forall!9501 (toList!3417 lm!1616) lambda!152324))))

(assert (=> start!430244 e!2750682))

(declare-fun tp_is_empty!26105 () Bool)

(assert (=> start!430244 tp_is_empty!26105))

(declare-fun tp_is_empty!26107 () Bool)

(assert (=> start!430244 tp_is_empty!26107))

(declare-fun e!2750686 () Bool)

(assert (=> start!430244 e!2750686))

(declare-fun e!2750681 () Bool)

(declare-fun inv!65046 (ListLongMap!2067) Bool)

(assert (=> start!430244 (and (inv!65046 lm!1616) e!2750681)))

(assert (=> start!430244 true))

(declare-fun b!4417603 () Bool)

(assert (=> b!4417603 (= e!2750682 e!2750685)))

(declare-fun res!1825217 () Bool)

(assert (=> b!4417603 (=> (not res!1825217) (not e!2750685))))

(declare-fun e!2750683 () Bool)

(assert (=> b!4417603 (= res!1825217 e!2750683)))

(declare-fun res!1825218 () Bool)

(assert (=> b!4417603 (=> res!1825218 e!2750683)))

(assert (=> b!4417603 (= res!1825218 e!2750687)))

(declare-fun res!1825223 () Bool)

(assert (=> b!4417603 (=> (not res!1825223) (not e!2750687))))

(declare-fun lt!1618926 () Bool)

(assert (=> b!4417603 (= res!1825223 lt!1618926)))

(declare-fun contains!11957 (ListLongMap!2067 (_ BitVec 64)) Bool)

(assert (=> b!4417603 (= lt!1618926 (contains!11957 lm!1616 hash!366))))

(declare-fun b!4417604 () Bool)

(declare-fun res!1825222 () Bool)

(assert (=> b!4417604 (=> (not res!1825222) (not e!2750682))))

(declare-datatypes ((Hashable!5109 0))(
  ( (HashableExt!5108 (__x!30812 Int)) )
))
(declare-fun hashF!1220 () Hashable!5109)

(declare-fun allKeysSameHash!675 (List!49618 (_ BitVec 64) Hashable!5109) Bool)

(assert (=> b!4417604 (= res!1825222 (allKeysSameHash!675 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4417605 () Bool)

(declare-fun res!1825215 () Bool)

(assert (=> b!4417605 (=> (not res!1825215) (not e!2750682))))

(declare-fun hash!2033 (Hashable!5109 K!10860) (_ BitVec 64))

(assert (=> b!4417605 (= res!1825215 (= (hash!2033 hashF!1220 key!3717) hash!366))))

(declare-fun b!4417606 () Bool)

(declare-fun e!2750684 () Bool)

(assert (=> b!4417606 (= e!2750685 (not e!2750684))))

(declare-fun res!1825221 () Bool)

(assert (=> b!4417606 (=> res!1825221 e!2750684)))

(declare-fun lt!1618925 () ListLongMap!2067)

(assert (=> b!4417606 (= res!1825221 (not (forall!9501 (toList!3417 lt!1618925) lambda!152324)))))

(assert (=> b!4417606 (forall!9501 (toList!3417 lt!1618925) lambda!152324)))

(declare-fun +!1019 (ListLongMap!2067 tuple2!49240) ListLongMap!2067)

(assert (=> b!4417606 (= lt!1618925 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!81020 0))(
  ( (Unit!81021) )
))
(declare-fun lt!1618923 () Unit!81020)

(declare-fun addValidProp!359 (ListLongMap!2067 Int (_ BitVec 64) List!49618) Unit!81020)

(assert (=> b!4417606 (= lt!1618923 (addValidProp!359 lm!1616 lambda!152324 hash!366 newBucket!194))))

(declare-fun b!4417607 () Bool)

(declare-fun e!2750688 () Unit!81020)

(declare-fun Unit!81022 () Unit!81020)

(assert (=> b!4417607 (= e!2750688 Unit!81022)))

(declare-fun lt!1618927 () Unit!81020)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!2 (ListLongMap!2067 K!10860 Hashable!5109) Unit!81020)

(assert (=> b!4417607 (= lt!1618927 (lemmaExtractTailMapContainsThenExtractMapDoes!2 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4417607 false))

(declare-fun b!4417608 () Bool)

(declare-fun isEmpty!28309 (ListLongMap!2067) Bool)

(assert (=> b!4417608 (= e!2750684 (not (isEmpty!28309 lm!1616)))))

(declare-fun lt!1618924 () Unit!81020)

(assert (=> b!4417608 (= lt!1618924 e!2750688)))

(declare-fun c!751923 () Bool)

(declare-datatypes ((ListMap!2661 0))(
  ( (ListMap!2662 (toList!3418 List!49618)) )
))
(declare-fun contains!11958 (ListMap!2661 K!10860) Bool)

(declare-fun extractMap!776 (List!49619) ListMap!2661)

(declare-fun tail!7203 (List!49619) List!49619)

(assert (=> b!4417608 (= c!751923 (contains!11958 (extractMap!776 (tail!7203 (toList!3417 lm!1616))) key!3717))))

(declare-fun b!4417609 () Bool)

(declare-fun tp!1332769 () Bool)

(assert (=> b!4417609 (= e!2750681 tp!1332769)))

(declare-fun b!4417610 () Bool)

(declare-fun res!1825216 () Bool)

(assert (=> b!4417610 (=> (not res!1825216) (not e!2750682))))

(declare-fun allKeysSameHashInMap!821 (ListLongMap!2067 Hashable!5109) Bool)

(assert (=> b!4417610 (= res!1825216 (allKeysSameHashInMap!821 lm!1616 hashF!1220))))

(declare-fun b!4417611 () Bool)

(declare-fun tp!1332770 () Bool)

(assert (=> b!4417611 (= e!2750686 (and tp_is_empty!26107 tp_is_empty!26105 tp!1332770))))

(declare-fun b!4417612 () Bool)

(declare-fun Unit!81023 () Unit!81020)

(assert (=> b!4417612 (= e!2750688 Unit!81023)))

(declare-fun b!4417613 () Bool)

(declare-fun res!1825219 () Bool)

(assert (=> b!4417613 (=> res!1825219 e!2750684)))

(get-info :version)

(assert (=> b!4417613 (= res!1825219 (or (and ((_ is Cons!49495) (toList!3417 lm!1616)) (= (_1!27914 (h!55160 (toList!3417 lm!1616))) hash!366)) (not ((_ is Cons!49495) (toList!3417 lm!1616))) (= (_1!27914 (h!55160 (toList!3417 lm!1616))) hash!366)))))

(declare-fun b!4417614 () Bool)

(assert (=> b!4417614 (= e!2750683 (and (not lt!1618926) (= newBucket!194 (Cons!49494 (tuple2!49239 key!3717 newValue!93) Nil!49494))))))

(declare-fun b!4417615 () Bool)

(declare-fun res!1825214 () Bool)

(assert (=> b!4417615 (=> (not res!1825214) (not e!2750682))))

(assert (=> b!4417615 (= res!1825214 (not (contains!11958 (extractMap!776 (toList!3417 lm!1616)) key!3717)))))

(assert (= (and start!430244 res!1825225) b!4417610))

(assert (= (and b!4417610 res!1825216) b!4417605))

(assert (= (and b!4417605 res!1825215) b!4417604))

(assert (= (and b!4417604 res!1825222) b!4417615))

(assert (= (and b!4417615 res!1825214) b!4417603))

(assert (= (and b!4417603 res!1825223) b!4417602))

(assert (= (and b!4417603 (not res!1825218)) b!4417614))

(assert (= (and b!4417603 res!1825217) b!4417600))

(assert (= (and b!4417600 res!1825224) b!4417601))

(assert (= (and b!4417601 res!1825220) b!4417606))

(assert (= (and b!4417606 (not res!1825221)) b!4417613))

(assert (= (and b!4417613 (not res!1825219)) b!4417608))

(assert (= (and b!4417608 c!751923) b!4417607))

(assert (= (and b!4417608 (not c!751923)) b!4417612))

(assert (= (and start!430244 ((_ is Cons!49494) newBucket!194)) b!4417611))

(assert (= start!430244 b!4417609))

(declare-fun m!5093867 () Bool)

(assert (=> b!4417605 m!5093867))

(declare-fun m!5093869 () Bool)

(assert (=> b!4417602 m!5093869))

(declare-fun m!5093871 () Bool)

(assert (=> b!4417600 m!5093871))

(declare-fun m!5093873 () Bool)

(assert (=> b!4417604 m!5093873))

(declare-fun m!5093875 () Bool)

(assert (=> b!4417610 m!5093875))

(declare-fun m!5093877 () Bool)

(assert (=> start!430244 m!5093877))

(declare-fun m!5093879 () Bool)

(assert (=> start!430244 m!5093879))

(declare-fun m!5093881 () Bool)

(assert (=> b!4417603 m!5093881))

(assert (=> b!4417601 m!5093877))

(declare-fun m!5093883 () Bool)

(assert (=> b!4417608 m!5093883))

(declare-fun m!5093885 () Bool)

(assert (=> b!4417608 m!5093885))

(assert (=> b!4417608 m!5093885))

(declare-fun m!5093887 () Bool)

(assert (=> b!4417608 m!5093887))

(assert (=> b!4417608 m!5093887))

(declare-fun m!5093889 () Bool)

(assert (=> b!4417608 m!5093889))

(declare-fun m!5093891 () Bool)

(assert (=> b!4417606 m!5093891))

(assert (=> b!4417606 m!5093891))

(declare-fun m!5093893 () Bool)

(assert (=> b!4417606 m!5093893))

(declare-fun m!5093895 () Bool)

(assert (=> b!4417606 m!5093895))

(declare-fun m!5093897 () Bool)

(assert (=> b!4417615 m!5093897))

(assert (=> b!4417615 m!5093897))

(declare-fun m!5093899 () Bool)

(assert (=> b!4417615 m!5093899))

(declare-fun m!5093901 () Bool)

(assert (=> b!4417607 m!5093901))

(check-sat (not b!4417609) (not b!4417603) tp_is_empty!26105 (not b!4417600) (not b!4417606) (not b!4417608) tp_is_empty!26107 (not b!4417605) (not b!4417602) (not b!4417610) (not b!4417601) (not start!430244) (not b!4417615) (not b!4417607) (not b!4417611) (not b!4417604))
(check-sat)
(get-model)

(declare-fun bs!753725 () Bool)

(declare-fun d!1338206 () Bool)

(assert (= bs!753725 (and d!1338206 start!430244)))

(declare-fun lambda!152327 () Int)

(assert (=> bs!753725 (= lambda!152327 lambda!152324)))

(assert (=> d!1338206 (contains!11958 (extractMap!776 (toList!3417 lm!1616)) key!3717)))

(declare-fun lt!1618946 () Unit!81020)

(declare-fun choose!27800 (ListLongMap!2067 K!10860 Hashable!5109) Unit!81020)

(assert (=> d!1338206 (= lt!1618946 (choose!27800 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1338206 (forall!9501 (toList!3417 lm!1616) lambda!152327)))

(assert (=> d!1338206 (= (lemmaExtractTailMapContainsThenExtractMapDoes!2 lm!1616 key!3717 hashF!1220) lt!1618946)))

(declare-fun bs!753726 () Bool)

(assert (= bs!753726 d!1338206))

(assert (=> bs!753726 m!5093897))

(assert (=> bs!753726 m!5093897))

(assert (=> bs!753726 m!5093899))

(declare-fun m!5093913 () Bool)

(assert (=> bs!753726 m!5093913))

(declare-fun m!5093915 () Bool)

(assert (=> bs!753726 m!5093915))

(assert (=> b!4417607 d!1338206))

(declare-fun d!1338216 () Bool)

(declare-fun res!1825245 () Bool)

(declare-fun e!2750717 () Bool)

(assert (=> d!1338216 (=> res!1825245 e!2750717)))

(assert (=> d!1338216 (= res!1825245 ((_ is Nil!49495) (toList!3417 lt!1618925)))))

(assert (=> d!1338216 (= (forall!9501 (toList!3417 lt!1618925) lambda!152324) e!2750717)))

(declare-fun b!4417653 () Bool)

(declare-fun e!2750718 () Bool)

(assert (=> b!4417653 (= e!2750717 e!2750718)))

(declare-fun res!1825246 () Bool)

(assert (=> b!4417653 (=> (not res!1825246) (not e!2750718))))

(declare-fun dynLambda!20816 (Int tuple2!49240) Bool)

(assert (=> b!4417653 (= res!1825246 (dynLambda!20816 lambda!152324 (h!55160 (toList!3417 lt!1618925))))))

(declare-fun b!4417654 () Bool)

(assert (=> b!4417654 (= e!2750718 (forall!9501 (t!356557 (toList!3417 lt!1618925)) lambda!152324))))

(assert (= (and d!1338216 (not res!1825245)) b!4417653))

(assert (= (and b!4417653 res!1825246) b!4417654))

(declare-fun b_lambda!142265 () Bool)

(assert (=> (not b_lambda!142265) (not b!4417653)))

(declare-fun m!5093937 () Bool)

(assert (=> b!4417653 m!5093937))

(declare-fun m!5093939 () Bool)

(assert (=> b!4417654 m!5093939))

(assert (=> b!4417606 d!1338216))

(declare-fun d!1338220 () Bool)

(declare-fun e!2750724 () Bool)

(assert (=> d!1338220 e!2750724))

(declare-fun res!1825252 () Bool)

(assert (=> d!1338220 (=> (not res!1825252) (not e!2750724))))

(declare-fun lt!1618969 () ListLongMap!2067)

(assert (=> d!1338220 (= res!1825252 (contains!11957 lt!1618969 (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun lt!1618967 () List!49619)

(assert (=> d!1338220 (= lt!1618969 (ListLongMap!2068 lt!1618967))))

(declare-fun lt!1618968 () Unit!81020)

(declare-fun lt!1618966 () Unit!81020)

(assert (=> d!1338220 (= lt!1618968 lt!1618966)))

(declare-datatypes ((Option!10685 0))(
  ( (None!10684) (Some!10684 (v!43844 List!49618)) )
))
(declare-fun getValueByKey!671 (List!49619 (_ BitVec 64)) Option!10685)

(assert (=> d!1338220 (= (getValueByKey!671 lt!1618967 (_1!27914 (tuple2!49241 hash!366 newBucket!194))) (Some!10684 (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!407 (List!49619 (_ BitVec 64) List!49618) Unit!81020)

(assert (=> d!1338220 (= lt!1618966 (lemmaContainsTupThenGetReturnValue!407 lt!1618967 (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!240 (List!49619 (_ BitVec 64) List!49618) List!49619)

(assert (=> d!1338220 (= lt!1618967 (insertStrictlySorted!240 (toList!3417 lm!1616) (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))

(assert (=> d!1338220 (= (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194)) lt!1618969)))

(declare-fun b!4417665 () Bool)

(declare-fun res!1825251 () Bool)

(assert (=> b!4417665 (=> (not res!1825251) (not e!2750724))))

(assert (=> b!4417665 (= res!1825251 (= (getValueByKey!671 (toList!3417 lt!1618969) (_1!27914 (tuple2!49241 hash!366 newBucket!194))) (Some!10684 (_2!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(declare-fun b!4417666 () Bool)

(declare-fun contains!11961 (List!49619 tuple2!49240) Bool)

(assert (=> b!4417666 (= e!2750724 (contains!11961 (toList!3417 lt!1618969) (tuple2!49241 hash!366 newBucket!194)))))

(assert (= (and d!1338220 res!1825252) b!4417665))

(assert (= (and b!4417665 res!1825251) b!4417666))

(declare-fun m!5093949 () Bool)

(assert (=> d!1338220 m!5093949))

(declare-fun m!5093951 () Bool)

(assert (=> d!1338220 m!5093951))

(declare-fun m!5093953 () Bool)

(assert (=> d!1338220 m!5093953))

(declare-fun m!5093955 () Bool)

(assert (=> d!1338220 m!5093955))

(declare-fun m!5093957 () Bool)

(assert (=> b!4417665 m!5093957))

(declare-fun m!5093959 () Bool)

(assert (=> b!4417666 m!5093959))

(assert (=> b!4417606 d!1338220))

(declare-fun d!1338224 () Bool)

(assert (=> d!1338224 (forall!9501 (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194))) lambda!152324)))

(declare-fun lt!1618984 () Unit!81020)

(declare-fun choose!27801 (ListLongMap!2067 Int (_ BitVec 64) List!49618) Unit!81020)

(assert (=> d!1338224 (= lt!1618984 (choose!27801 lm!1616 lambda!152324 hash!366 newBucket!194))))

(declare-fun e!2750740 () Bool)

(assert (=> d!1338224 e!2750740))

(declare-fun res!1825264 () Bool)

(assert (=> d!1338224 (=> (not res!1825264) (not e!2750740))))

(assert (=> d!1338224 (= res!1825264 (forall!9501 (toList!3417 lm!1616) lambda!152324))))

(assert (=> d!1338224 (= (addValidProp!359 lm!1616 lambda!152324 hash!366 newBucket!194) lt!1618984)))

(declare-fun b!4417693 () Bool)

(assert (=> b!4417693 (= e!2750740 (dynLambda!20816 lambda!152324 (tuple2!49241 hash!366 newBucket!194)))))

(assert (= (and d!1338224 res!1825264) b!4417693))

(declare-fun b_lambda!142267 () Bool)

(assert (=> (not b_lambda!142267) (not b!4417693)))

(assert (=> d!1338224 m!5093893))

(declare-fun m!5094005 () Bool)

(assert (=> d!1338224 m!5094005))

(declare-fun m!5094007 () Bool)

(assert (=> d!1338224 m!5094007))

(assert (=> d!1338224 m!5093877))

(declare-fun m!5094009 () Bool)

(assert (=> b!4417693 m!5094009))

(assert (=> b!4417606 d!1338224))

(declare-fun d!1338244 () Bool)

(declare-fun res!1825265 () Bool)

(declare-fun e!2750741 () Bool)

(assert (=> d!1338244 (=> res!1825265 e!2750741)))

(assert (=> d!1338244 (= res!1825265 ((_ is Nil!49495) (toList!3417 lm!1616)))))

(assert (=> d!1338244 (= (forall!9501 (toList!3417 lm!1616) lambda!152324) e!2750741)))

(declare-fun b!4417694 () Bool)

(declare-fun e!2750742 () Bool)

(assert (=> b!4417694 (= e!2750741 e!2750742)))

(declare-fun res!1825266 () Bool)

(assert (=> b!4417694 (=> (not res!1825266) (not e!2750742))))

(assert (=> b!4417694 (= res!1825266 (dynLambda!20816 lambda!152324 (h!55160 (toList!3417 lm!1616))))))

(declare-fun b!4417695 () Bool)

(assert (=> b!4417695 (= e!2750742 (forall!9501 (t!356557 (toList!3417 lm!1616)) lambda!152324))))

(assert (= (and d!1338244 (not res!1825265)) b!4417694))

(assert (= (and b!4417694 res!1825266) b!4417695))

(declare-fun b_lambda!142269 () Bool)

(assert (=> (not b_lambda!142269) (not b!4417694)))

(declare-fun m!5094011 () Bool)

(assert (=> b!4417694 m!5094011))

(declare-fun m!5094013 () Bool)

(assert (=> b!4417695 m!5094013))

(assert (=> start!430244 d!1338244))

(declare-fun d!1338246 () Bool)

(declare-fun isStrictlySorted!212 (List!49619) Bool)

(assert (=> d!1338246 (= (inv!65046 lm!1616) (isStrictlySorted!212 (toList!3417 lm!1616)))))

(declare-fun bs!753742 () Bool)

(assert (= bs!753742 d!1338246))

(declare-fun m!5094015 () Bool)

(assert (=> bs!753742 m!5094015))

(assert (=> start!430244 d!1338246))

(declare-fun d!1338248 () Bool)

(declare-fun isEmpty!28311 (List!49619) Bool)

(assert (=> d!1338248 (= (isEmpty!28309 lm!1616) (isEmpty!28311 (toList!3417 lm!1616)))))

(declare-fun bs!753743 () Bool)

(assert (= bs!753743 d!1338248))

(declare-fun m!5094017 () Bool)

(assert (=> bs!753743 m!5094017))

(assert (=> b!4417608 d!1338248))

(declare-fun b!4417745 () Bool)

(declare-fun e!2750776 () Unit!81020)

(declare-fun lt!1619033 () Unit!81020)

(assert (=> b!4417745 (= e!2750776 lt!1619033)))

(declare-fun lt!1619035 () Unit!81020)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!581 (List!49618 K!10860) Unit!81020)

(assert (=> b!4417745 (= lt!1619035 (lemmaContainsKeyImpliesGetValueByKeyDefined!581 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(declare-datatypes ((Option!10686 0))(
  ( (None!10685) (Some!10685 (v!43845 V!11106)) )
))
(declare-fun isDefined!7978 (Option!10686) Bool)

(declare-fun getValueByKey!672 (List!49618 K!10860) Option!10686)

(assert (=> b!4417745 (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(declare-fun lt!1619028 () Unit!81020)

(assert (=> b!4417745 (= lt!1619028 lt!1619035)))

(declare-fun lemmaInListThenGetKeysListContains!230 (List!49618 K!10860) Unit!81020)

(assert (=> b!4417745 (= lt!1619033 (lemmaInListThenGetKeysListContains!230 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(declare-fun call!307385 () Bool)

(assert (=> b!4417745 call!307385))

(declare-fun d!1338250 () Bool)

(declare-fun e!2750779 () Bool)

(assert (=> d!1338250 e!2750779))

(declare-fun res!1825288 () Bool)

(assert (=> d!1338250 (=> res!1825288 e!2750779)))

(declare-fun e!2750777 () Bool)

(assert (=> d!1338250 (= res!1825288 e!2750777)))

(declare-fun res!1825287 () Bool)

(assert (=> d!1338250 (=> (not res!1825287) (not e!2750777))))

(declare-fun lt!1619034 () Bool)

(assert (=> d!1338250 (= res!1825287 (not lt!1619034))))

(declare-fun lt!1619031 () Bool)

(assert (=> d!1338250 (= lt!1619034 lt!1619031)))

(declare-fun lt!1619029 () Unit!81020)

(assert (=> d!1338250 (= lt!1619029 e!2750776)))

(declare-fun c!751950 () Bool)

(assert (=> d!1338250 (= c!751950 lt!1619031)))

(declare-fun containsKey!1054 (List!49618 K!10860) Bool)

(assert (=> d!1338250 (= lt!1619031 (containsKey!1054 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(assert (=> d!1338250 (= (contains!11958 (extractMap!776 (tail!7203 (toList!3417 lm!1616))) key!3717) lt!1619034)))

(declare-fun b!4417746 () Bool)

(assert (=> b!4417746 false))

(declare-fun lt!1619030 () Unit!81020)

(declare-fun lt!1619032 () Unit!81020)

(assert (=> b!4417746 (= lt!1619030 lt!1619032)))

(assert (=> b!4417746 (containsKey!1054 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!231 (List!49618 K!10860) Unit!81020)

(assert (=> b!4417746 (= lt!1619032 (lemmaInGetKeysListThenContainsKey!231 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(declare-fun e!2750778 () Unit!81020)

(declare-fun Unit!81029 () Unit!81020)

(assert (=> b!4417746 (= e!2750778 Unit!81029)))

(declare-fun b!4417747 () Bool)

(declare-datatypes ((List!49621 0))(
  ( (Nil!49497) (Cons!49497 (h!55164 K!10860) (t!356559 List!49621)) )
))
(declare-fun e!2750775 () List!49621)

(declare-fun getKeysList!233 (List!49618) List!49621)

(assert (=> b!4417747 (= e!2750775 (getKeysList!233 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))

(declare-fun b!4417748 () Bool)

(declare-fun Unit!81030 () Unit!81020)

(assert (=> b!4417748 (= e!2750778 Unit!81030)))

(declare-fun b!4417749 () Bool)

(declare-fun e!2750780 () Bool)

(assert (=> b!4417749 (= e!2750779 e!2750780)))

(declare-fun res!1825289 () Bool)

(assert (=> b!4417749 (=> (not res!1825289) (not e!2750780))))

(assert (=> b!4417749 (= res!1825289 (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717)))))

(declare-fun bm!307380 () Bool)

(declare-fun contains!11962 (List!49621 K!10860) Bool)

(assert (=> bm!307380 (= call!307385 (contains!11962 e!2750775 key!3717))))

(declare-fun c!751951 () Bool)

(assert (=> bm!307380 (= c!751951 c!751950)))

(declare-fun b!4417750 () Bool)

(declare-fun keys!16875 (ListMap!2661) List!49621)

(assert (=> b!4417750 (= e!2750780 (contains!11962 (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(declare-fun b!4417751 () Bool)

(assert (=> b!4417751 (= e!2750775 (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))

(declare-fun b!4417752 () Bool)

(assert (=> b!4417752 (= e!2750776 e!2750778)))

(declare-fun c!751949 () Bool)

(assert (=> b!4417752 (= c!751949 call!307385)))

(declare-fun b!4417753 () Bool)

(assert (=> b!4417753 (= e!2750777 (not (contains!11962 (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717)))))

(assert (= (and d!1338250 c!751950) b!4417745))

(assert (= (and d!1338250 (not c!751950)) b!4417752))

(assert (= (and b!4417752 c!751949) b!4417746))

(assert (= (and b!4417752 (not c!751949)) b!4417748))

(assert (= (or b!4417745 b!4417752) bm!307380))

(assert (= (and bm!307380 c!751951) b!4417747))

(assert (= (and bm!307380 (not c!751951)) b!4417751))

(assert (= (and d!1338250 res!1825287) b!4417753))

(assert (= (and d!1338250 (not res!1825288)) b!4417749))

(assert (= (and b!4417749 res!1825289) b!4417750))

(declare-fun m!5094053 () Bool)

(assert (=> b!4417746 m!5094053))

(declare-fun m!5094055 () Bool)

(assert (=> b!4417746 m!5094055))

(assert (=> b!4417751 m!5093887))

(declare-fun m!5094057 () Bool)

(assert (=> b!4417751 m!5094057))

(assert (=> b!4417750 m!5093887))

(assert (=> b!4417750 m!5094057))

(assert (=> b!4417750 m!5094057))

(declare-fun m!5094059 () Bool)

(assert (=> b!4417750 m!5094059))

(assert (=> d!1338250 m!5094053))

(declare-fun m!5094061 () Bool)

(assert (=> b!4417747 m!5094061))

(declare-fun m!5094063 () Bool)

(assert (=> b!4417749 m!5094063))

(assert (=> b!4417749 m!5094063))

(declare-fun m!5094065 () Bool)

(assert (=> b!4417749 m!5094065))

(declare-fun m!5094067 () Bool)

(assert (=> bm!307380 m!5094067))

(assert (=> b!4417753 m!5093887))

(assert (=> b!4417753 m!5094057))

(assert (=> b!4417753 m!5094057))

(assert (=> b!4417753 m!5094059))

(declare-fun m!5094069 () Bool)

(assert (=> b!4417745 m!5094069))

(assert (=> b!4417745 m!5094063))

(assert (=> b!4417745 m!5094063))

(assert (=> b!4417745 m!5094065))

(declare-fun m!5094071 () Bool)

(assert (=> b!4417745 m!5094071))

(assert (=> b!4417608 d!1338250))

(declare-fun bs!753747 () Bool)

(declare-fun d!1338264 () Bool)

(assert (= bs!753747 (and d!1338264 start!430244)))

(declare-fun lambda!152343 () Int)

(assert (=> bs!753747 (= lambda!152343 lambda!152324)))

(declare-fun bs!753748 () Bool)

(assert (= bs!753748 (and d!1338264 d!1338206)))

(assert (=> bs!753748 (= lambda!152343 lambda!152327)))

(declare-fun lt!1619038 () ListMap!2661)

(declare-fun invariantList!785 (List!49618) Bool)

(assert (=> d!1338264 (invariantList!785 (toList!3418 lt!1619038))))

(declare-fun e!2750783 () ListMap!2661)

(assert (=> d!1338264 (= lt!1619038 e!2750783)))

(declare-fun c!751954 () Bool)

(assert (=> d!1338264 (= c!751954 ((_ is Cons!49495) (tail!7203 (toList!3417 lm!1616))))))

(assert (=> d!1338264 (forall!9501 (tail!7203 (toList!3417 lm!1616)) lambda!152343)))

(assert (=> d!1338264 (= (extractMap!776 (tail!7203 (toList!3417 lm!1616))) lt!1619038)))

(declare-fun b!4417758 () Bool)

(declare-fun addToMapMapFromBucket!360 (List!49618 ListMap!2661) ListMap!2661)

(assert (=> b!4417758 (= e!2750783 (addToMapMapFromBucket!360 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))) (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))))))

(declare-fun b!4417759 () Bool)

(assert (=> b!4417759 (= e!2750783 (ListMap!2662 Nil!49494))))

(assert (= (and d!1338264 c!751954) b!4417758))

(assert (= (and d!1338264 (not c!751954)) b!4417759))

(declare-fun m!5094073 () Bool)

(assert (=> d!1338264 m!5094073))

(assert (=> d!1338264 m!5093885))

(declare-fun m!5094075 () Bool)

(assert (=> d!1338264 m!5094075))

(declare-fun m!5094077 () Bool)

(assert (=> b!4417758 m!5094077))

(assert (=> b!4417758 m!5094077))

(declare-fun m!5094079 () Bool)

(assert (=> b!4417758 m!5094079))

(assert (=> b!4417608 d!1338264))

(declare-fun d!1338266 () Bool)

(assert (=> d!1338266 (= (tail!7203 (toList!3417 lm!1616)) (t!356557 (toList!3417 lm!1616)))))

(assert (=> b!4417608 d!1338266))

(declare-fun b!4417760 () Bool)

(declare-fun e!2750785 () Unit!81020)

(declare-fun lt!1619044 () Unit!81020)

(assert (=> b!4417760 (= e!2750785 lt!1619044)))

(declare-fun lt!1619046 () Unit!81020)

(assert (=> b!4417760 (= lt!1619046 (lemmaContainsKeyImpliesGetValueByKeyDefined!581 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(assert (=> b!4417760 (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(declare-fun lt!1619039 () Unit!81020)

(assert (=> b!4417760 (= lt!1619039 lt!1619046)))

(assert (=> b!4417760 (= lt!1619044 (lemmaInListThenGetKeysListContains!230 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(declare-fun call!307386 () Bool)

(assert (=> b!4417760 call!307386))

(declare-fun d!1338268 () Bool)

(declare-fun e!2750788 () Bool)

(assert (=> d!1338268 e!2750788))

(declare-fun res!1825291 () Bool)

(assert (=> d!1338268 (=> res!1825291 e!2750788)))

(declare-fun e!2750786 () Bool)

(assert (=> d!1338268 (= res!1825291 e!2750786)))

(declare-fun res!1825290 () Bool)

(assert (=> d!1338268 (=> (not res!1825290) (not e!2750786))))

(declare-fun lt!1619045 () Bool)

(assert (=> d!1338268 (= res!1825290 (not lt!1619045))))

(declare-fun lt!1619042 () Bool)

(assert (=> d!1338268 (= lt!1619045 lt!1619042)))

(declare-fun lt!1619040 () Unit!81020)

(assert (=> d!1338268 (= lt!1619040 e!2750785)))

(declare-fun c!751956 () Bool)

(assert (=> d!1338268 (= c!751956 lt!1619042)))

(assert (=> d!1338268 (= lt!1619042 (containsKey!1054 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(assert (=> d!1338268 (= (contains!11958 (extractMap!776 (toList!3417 lm!1616)) key!3717) lt!1619045)))

(declare-fun b!4417761 () Bool)

(assert (=> b!4417761 false))

(declare-fun lt!1619041 () Unit!81020)

(declare-fun lt!1619043 () Unit!81020)

(assert (=> b!4417761 (= lt!1619041 lt!1619043)))

(assert (=> b!4417761 (containsKey!1054 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717)))

(assert (=> b!4417761 (= lt!1619043 (lemmaInGetKeysListThenContainsKey!231 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(declare-fun e!2750787 () Unit!81020)

(declare-fun Unit!81031 () Unit!81020)

(assert (=> b!4417761 (= e!2750787 Unit!81031)))

(declare-fun b!4417762 () Bool)

(declare-fun e!2750784 () List!49621)

(assert (=> b!4417762 (= e!2750784 (getKeysList!233 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))

(declare-fun b!4417763 () Bool)

(declare-fun Unit!81032 () Unit!81020)

(assert (=> b!4417763 (= e!2750787 Unit!81032)))

(declare-fun b!4417764 () Bool)

(declare-fun e!2750789 () Bool)

(assert (=> b!4417764 (= e!2750788 e!2750789)))

(declare-fun res!1825292 () Bool)

(assert (=> b!4417764 (=> (not res!1825292) (not e!2750789))))

(assert (=> b!4417764 (= res!1825292 (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717)))))

(declare-fun bm!307381 () Bool)

(assert (=> bm!307381 (= call!307386 (contains!11962 e!2750784 key!3717))))

(declare-fun c!751957 () Bool)

(assert (=> bm!307381 (= c!751957 c!751956)))

(declare-fun b!4417765 () Bool)

(assert (=> b!4417765 (= e!2750789 (contains!11962 (keys!16875 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(declare-fun b!4417766 () Bool)

(assert (=> b!4417766 (= e!2750784 (keys!16875 (extractMap!776 (toList!3417 lm!1616))))))

(declare-fun b!4417767 () Bool)

(assert (=> b!4417767 (= e!2750785 e!2750787)))

(declare-fun c!751955 () Bool)

(assert (=> b!4417767 (= c!751955 call!307386)))

(declare-fun b!4417768 () Bool)

(assert (=> b!4417768 (= e!2750786 (not (contains!11962 (keys!16875 (extractMap!776 (toList!3417 lm!1616))) key!3717)))))

(assert (= (and d!1338268 c!751956) b!4417760))

(assert (= (and d!1338268 (not c!751956)) b!4417767))

(assert (= (and b!4417767 c!751955) b!4417761))

(assert (= (and b!4417767 (not c!751955)) b!4417763))

(assert (= (or b!4417760 b!4417767) bm!307381))

(assert (= (and bm!307381 c!751957) b!4417762))

(assert (= (and bm!307381 (not c!751957)) b!4417766))

(assert (= (and d!1338268 res!1825290) b!4417768))

(assert (= (and d!1338268 (not res!1825291)) b!4417764))

(assert (= (and b!4417764 res!1825292) b!4417765))

(declare-fun m!5094081 () Bool)

(assert (=> b!4417761 m!5094081))

(declare-fun m!5094083 () Bool)

(assert (=> b!4417761 m!5094083))

(assert (=> b!4417766 m!5093897))

(declare-fun m!5094085 () Bool)

(assert (=> b!4417766 m!5094085))

(assert (=> b!4417765 m!5093897))

(assert (=> b!4417765 m!5094085))

(assert (=> b!4417765 m!5094085))

(declare-fun m!5094087 () Bool)

(assert (=> b!4417765 m!5094087))

(assert (=> d!1338268 m!5094081))

(declare-fun m!5094089 () Bool)

(assert (=> b!4417762 m!5094089))

(declare-fun m!5094091 () Bool)

(assert (=> b!4417764 m!5094091))

(assert (=> b!4417764 m!5094091))

(declare-fun m!5094093 () Bool)

(assert (=> b!4417764 m!5094093))

(declare-fun m!5094095 () Bool)

(assert (=> bm!307381 m!5094095))

(assert (=> b!4417768 m!5093897))

(assert (=> b!4417768 m!5094085))

(assert (=> b!4417768 m!5094085))

(assert (=> b!4417768 m!5094087))

(declare-fun m!5094097 () Bool)

(assert (=> b!4417760 m!5094097))

(assert (=> b!4417760 m!5094091))

(assert (=> b!4417760 m!5094091))

(assert (=> b!4417760 m!5094093))

(declare-fun m!5094099 () Bool)

(assert (=> b!4417760 m!5094099))

(assert (=> b!4417615 d!1338268))

(declare-fun bs!753749 () Bool)

(declare-fun d!1338270 () Bool)

(assert (= bs!753749 (and d!1338270 start!430244)))

(declare-fun lambda!152344 () Int)

(assert (=> bs!753749 (= lambda!152344 lambda!152324)))

(declare-fun bs!753750 () Bool)

(assert (= bs!753750 (and d!1338270 d!1338206)))

(assert (=> bs!753750 (= lambda!152344 lambda!152327)))

(declare-fun bs!753751 () Bool)

(assert (= bs!753751 (and d!1338270 d!1338264)))

(assert (=> bs!753751 (= lambda!152344 lambda!152343)))

(declare-fun lt!1619047 () ListMap!2661)

(assert (=> d!1338270 (invariantList!785 (toList!3418 lt!1619047))))

(declare-fun e!2750790 () ListMap!2661)

(assert (=> d!1338270 (= lt!1619047 e!2750790)))

(declare-fun c!751958 () Bool)

(assert (=> d!1338270 (= c!751958 ((_ is Cons!49495) (toList!3417 lm!1616)))))

(assert (=> d!1338270 (forall!9501 (toList!3417 lm!1616) lambda!152344)))

(assert (=> d!1338270 (= (extractMap!776 (toList!3417 lm!1616)) lt!1619047)))

(declare-fun b!4417769 () Bool)

(assert (=> b!4417769 (= e!2750790 (addToMapMapFromBucket!360 (_2!27914 (h!55160 (toList!3417 lm!1616))) (extractMap!776 (t!356557 (toList!3417 lm!1616)))))))

(declare-fun b!4417770 () Bool)

(assert (=> b!4417770 (= e!2750790 (ListMap!2662 Nil!49494))))

(assert (= (and d!1338270 c!751958) b!4417769))

(assert (= (and d!1338270 (not c!751958)) b!4417770))

(declare-fun m!5094101 () Bool)

(assert (=> d!1338270 m!5094101))

(declare-fun m!5094103 () Bool)

(assert (=> d!1338270 m!5094103))

(declare-fun m!5094105 () Bool)

(assert (=> b!4417769 m!5094105))

(assert (=> b!4417769 m!5094105))

(declare-fun m!5094107 () Bool)

(assert (=> b!4417769 m!5094107))

(assert (=> b!4417615 d!1338270))

(declare-fun d!1338272 () Bool)

(assert (=> d!1338272 true))

(assert (=> d!1338272 true))

(declare-fun lambda!152347 () Int)

(declare-fun forall!9503 (List!49618 Int) Bool)

(assert (=> d!1338272 (= (allKeysSameHash!675 newBucket!194 hash!366 hashF!1220) (forall!9503 newBucket!194 lambda!152347))))

(declare-fun bs!753752 () Bool)

(assert (= bs!753752 d!1338272))

(declare-fun m!5094109 () Bool)

(assert (=> bs!753752 m!5094109))

(assert (=> b!4417604 d!1338272))

(declare-fun d!1338274 () Bool)

(declare-fun hash!2035 (Hashable!5109 K!10860) (_ BitVec 64))

(assert (=> d!1338274 (= (hash!2033 hashF!1220 key!3717) (hash!2035 hashF!1220 key!3717))))

(declare-fun bs!753753 () Bool)

(assert (= bs!753753 d!1338274))

(declare-fun m!5094111 () Bool)

(assert (=> bs!753753 m!5094111))

(assert (=> b!4417605 d!1338274))

(assert (=> b!4417601 d!1338244))

(declare-fun d!1338276 () Bool)

(declare-fun e!2750796 () Bool)

(assert (=> d!1338276 e!2750796))

(declare-fun res!1825295 () Bool)

(assert (=> d!1338276 (=> res!1825295 e!2750796)))

(declare-fun lt!1619058 () Bool)

(assert (=> d!1338276 (= res!1825295 (not lt!1619058))))

(declare-fun lt!1619056 () Bool)

(assert (=> d!1338276 (= lt!1619058 lt!1619056)))

(declare-fun lt!1619057 () Unit!81020)

(declare-fun e!2750795 () Unit!81020)

(assert (=> d!1338276 (= lt!1619057 e!2750795)))

(declare-fun c!751961 () Bool)

(assert (=> d!1338276 (= c!751961 lt!1619056)))

(declare-fun containsKey!1055 (List!49619 (_ BitVec 64)) Bool)

(assert (=> d!1338276 (= lt!1619056 (containsKey!1055 (toList!3417 lm!1616) hash!366))))

(assert (=> d!1338276 (= (contains!11957 lm!1616 hash!366) lt!1619058)))

(declare-fun b!4417781 () Bool)

(declare-fun lt!1619059 () Unit!81020)

(assert (=> b!4417781 (= e!2750795 lt!1619059)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!582 (List!49619 (_ BitVec 64)) Unit!81020)

(assert (=> b!4417781 (= lt!1619059 (lemmaContainsKeyImpliesGetValueByKeyDefined!582 (toList!3417 lm!1616) hash!366))))

(declare-fun isDefined!7979 (Option!10685) Bool)

(assert (=> b!4417781 (isDefined!7979 (getValueByKey!671 (toList!3417 lm!1616) hash!366))))

(declare-fun b!4417782 () Bool)

(declare-fun Unit!81033 () Unit!81020)

(assert (=> b!4417782 (= e!2750795 Unit!81033)))

(declare-fun b!4417783 () Bool)

(assert (=> b!4417783 (= e!2750796 (isDefined!7979 (getValueByKey!671 (toList!3417 lm!1616) hash!366)))))

(assert (= (and d!1338276 c!751961) b!4417781))

(assert (= (and d!1338276 (not c!751961)) b!4417782))

(assert (= (and d!1338276 (not res!1825295)) b!4417783))

(declare-fun m!5094113 () Bool)

(assert (=> d!1338276 m!5094113))

(declare-fun m!5094115 () Bool)

(assert (=> b!4417781 m!5094115))

(declare-fun m!5094117 () Bool)

(assert (=> b!4417781 m!5094117))

(assert (=> b!4417781 m!5094117))

(declare-fun m!5094119 () Bool)

(assert (=> b!4417781 m!5094119))

(assert (=> b!4417783 m!5094117))

(assert (=> b!4417783 m!5094117))

(assert (=> b!4417783 m!5094119))

(assert (=> b!4417603 d!1338276))

(declare-fun d!1338278 () Bool)

(declare-fun get!16123 (Option!10685) List!49618)

(assert (=> d!1338278 (= (apply!11567 lm!1616 hash!366) (get!16123 (getValueByKey!671 (toList!3417 lm!1616) hash!366)))))

(declare-fun bs!753754 () Bool)

(assert (= bs!753754 d!1338278))

(assert (=> bs!753754 m!5094117))

(assert (=> bs!753754 m!5094117))

(declare-fun m!5094121 () Bool)

(assert (=> bs!753754 m!5094121))

(assert (=> b!4417602 d!1338278))

(declare-fun d!1338280 () Bool)

(declare-fun res!1825300 () Bool)

(declare-fun e!2750801 () Bool)

(assert (=> d!1338280 (=> res!1825300 e!2750801)))

(assert (=> d!1338280 (= res!1825300 (not ((_ is Cons!49494) newBucket!194)))))

(assert (=> d!1338280 (= (noDuplicateKeys!715 newBucket!194) e!2750801)))

(declare-fun b!4417788 () Bool)

(declare-fun e!2750802 () Bool)

(assert (=> b!4417788 (= e!2750801 e!2750802)))

(declare-fun res!1825301 () Bool)

(assert (=> b!4417788 (=> (not res!1825301) (not e!2750802))))

(declare-fun containsKey!1056 (List!49618 K!10860) Bool)

(assert (=> b!4417788 (= res!1825301 (not (containsKey!1056 (t!356556 newBucket!194) (_1!27913 (h!55159 newBucket!194)))))))

(declare-fun b!4417789 () Bool)

(assert (=> b!4417789 (= e!2750802 (noDuplicateKeys!715 (t!356556 newBucket!194)))))

(assert (= (and d!1338280 (not res!1825300)) b!4417788))

(assert (= (and b!4417788 res!1825301) b!4417789))

(declare-fun m!5094123 () Bool)

(assert (=> b!4417788 m!5094123))

(declare-fun m!5094125 () Bool)

(assert (=> b!4417789 m!5094125))

(assert (=> b!4417600 d!1338280))

(declare-fun bs!753755 () Bool)

(declare-fun d!1338282 () Bool)

(assert (= bs!753755 (and d!1338282 start!430244)))

(declare-fun lambda!152350 () Int)

(assert (=> bs!753755 (not (= lambda!152350 lambda!152324))))

(declare-fun bs!753756 () Bool)

(assert (= bs!753756 (and d!1338282 d!1338206)))

(assert (=> bs!753756 (not (= lambda!152350 lambda!152327))))

(declare-fun bs!753757 () Bool)

(assert (= bs!753757 (and d!1338282 d!1338264)))

(assert (=> bs!753757 (not (= lambda!152350 lambda!152343))))

(declare-fun bs!753758 () Bool)

(assert (= bs!753758 (and d!1338282 d!1338270)))

(assert (=> bs!753758 (not (= lambda!152350 lambda!152344))))

(assert (=> d!1338282 true))

(assert (=> d!1338282 (= (allKeysSameHashInMap!821 lm!1616 hashF!1220) (forall!9501 (toList!3417 lm!1616) lambda!152350))))

(declare-fun bs!753759 () Bool)

(assert (= bs!753759 d!1338282))

(declare-fun m!5094127 () Bool)

(assert (=> bs!753759 m!5094127))

(assert (=> b!4417610 d!1338282))

(declare-fun b!4417796 () Bool)

(declare-fun e!2750805 () Bool)

(declare-fun tp!1332784 () Bool)

(declare-fun tp!1332785 () Bool)

(assert (=> b!4417796 (= e!2750805 (and tp!1332784 tp!1332785))))

(assert (=> b!4417609 (= tp!1332769 e!2750805)))

(assert (= (and b!4417609 ((_ is Cons!49495) (toList!3417 lm!1616))) b!4417796))

(declare-fun e!2750808 () Bool)

(declare-fun b!4417801 () Bool)

(declare-fun tp!1332788 () Bool)

(assert (=> b!4417801 (= e!2750808 (and tp_is_empty!26107 tp_is_empty!26105 tp!1332788))))

(assert (=> b!4417611 (= tp!1332770 e!2750808)))

(assert (= (and b!4417611 ((_ is Cons!49494) (t!356556 newBucket!194))) b!4417801))

(declare-fun b_lambda!142281 () Bool)

(assert (= b_lambda!142269 (or start!430244 b_lambda!142281)))

(declare-fun bs!753760 () Bool)

(declare-fun d!1338284 () Bool)

(assert (= bs!753760 (and d!1338284 start!430244)))

(assert (=> bs!753760 (= (dynLambda!20816 lambda!152324 (h!55160 (toList!3417 lm!1616))) (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 lm!1616)))))))

(declare-fun m!5094129 () Bool)

(assert (=> bs!753760 m!5094129))

(assert (=> b!4417694 d!1338284))

(declare-fun b_lambda!142283 () Bool)

(assert (= b_lambda!142267 (or start!430244 b_lambda!142283)))

(declare-fun bs!753761 () Bool)

(declare-fun d!1338286 () Bool)

(assert (= bs!753761 (and d!1338286 start!430244)))

(assert (=> bs!753761 (= (dynLambda!20816 lambda!152324 (tuple2!49241 hash!366 newBucket!194)) (noDuplicateKeys!715 (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun m!5094131 () Bool)

(assert (=> bs!753761 m!5094131))

(assert (=> b!4417693 d!1338286))

(declare-fun b_lambda!142285 () Bool)

(assert (= b_lambda!142265 (or start!430244 b_lambda!142285)))

(declare-fun bs!753762 () Bool)

(declare-fun d!1338288 () Bool)

(assert (= bs!753762 (and d!1338288 start!430244)))

(assert (=> bs!753762 (= (dynLambda!20816 lambda!152324 (h!55160 (toList!3417 lt!1618925))) (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 lt!1618925)))))))

(declare-fun m!5094133 () Bool)

(assert (=> bs!753762 m!5094133))

(assert (=> b!4417653 d!1338288))

(check-sat (not d!1338278) (not bs!753762) (not b!4417746) (not b!4417758) (not d!1338206) (not b_lambda!142281) (not b!4417801) (not b!4417695) (not b!4417781) (not b!4417765) (not b_lambda!142285) (not b!4417768) (not b!4417665) (not d!1338246) (not b!4417751) (not bs!753761) (not d!1338220) (not b!4417769) (not b!4417796) tp_is_empty!26105 (not b_lambda!142283) (not b!4417789) (not bm!307381) (not b!4417745) (not d!1338270) (not b!4417760) (not b!4417666) (not d!1338272) (not b!4417762) (not bs!753760) (not b!4417747) (not b!4417766) (not d!1338282) (not b!4417761) (not d!1338264) (not b!4417783) (not b!4417749) (not b!4417750) (not bm!307380) (not d!1338274) (not b!4417764) tp_is_empty!26107 (not d!1338276) (not d!1338224) (not b!4417654) (not d!1338250) (not d!1338248) (not d!1338268) (not b!4417753) (not b!4417788))
(check-sat)
(get-model)

(declare-fun d!1338354 () Bool)

(declare-fun res!1825365 () Bool)

(declare-fun e!2750885 () Bool)

(assert (=> d!1338354 (=> res!1825365 e!2750885)))

(assert (=> d!1338354 (= res!1825365 (and ((_ is Cons!49494) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (= (_1!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) key!3717)))))

(assert (=> d!1338354 (= (containsKey!1054 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717) e!2750885)))

(declare-fun b!4417922 () Bool)

(declare-fun e!2750886 () Bool)

(assert (=> b!4417922 (= e!2750885 e!2750886)))

(declare-fun res!1825366 () Bool)

(assert (=> b!4417922 (=> (not res!1825366) (not e!2750886))))

(assert (=> b!4417922 (= res!1825366 ((_ is Cons!49494) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))

(declare-fun b!4417923 () Bool)

(assert (=> b!4417923 (= e!2750886 (containsKey!1054 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) key!3717))))

(assert (= (and d!1338354 (not res!1825365)) b!4417922))

(assert (= (and b!4417922 res!1825366) b!4417923))

(declare-fun m!5094261 () Bool)

(assert (=> b!4417923 m!5094261))

(assert (=> d!1338268 d!1338354))

(declare-fun d!1338356 () Bool)

(declare-fun e!2750888 () Bool)

(assert (=> d!1338356 e!2750888))

(declare-fun res!1825367 () Bool)

(assert (=> d!1338356 (=> res!1825367 e!2750888)))

(declare-fun lt!1619091 () Bool)

(assert (=> d!1338356 (= res!1825367 (not lt!1619091))))

(declare-fun lt!1619089 () Bool)

(assert (=> d!1338356 (= lt!1619091 lt!1619089)))

(declare-fun lt!1619090 () Unit!81020)

(declare-fun e!2750887 () Unit!81020)

(assert (=> d!1338356 (= lt!1619090 e!2750887)))

(declare-fun c!751989 () Bool)

(assert (=> d!1338356 (= c!751989 lt!1619089)))

(assert (=> d!1338356 (= lt!1619089 (containsKey!1055 (toList!3417 lt!1618969) (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(assert (=> d!1338356 (= (contains!11957 lt!1618969 (_1!27914 (tuple2!49241 hash!366 newBucket!194))) lt!1619091)))

(declare-fun b!4417924 () Bool)

(declare-fun lt!1619092 () Unit!81020)

(assert (=> b!4417924 (= e!2750887 lt!1619092)))

(assert (=> b!4417924 (= lt!1619092 (lemmaContainsKeyImpliesGetValueByKeyDefined!582 (toList!3417 lt!1618969) (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(assert (=> b!4417924 (isDefined!7979 (getValueByKey!671 (toList!3417 lt!1618969) (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun b!4417925 () Bool)

(declare-fun Unit!81035 () Unit!81020)

(assert (=> b!4417925 (= e!2750887 Unit!81035)))

(declare-fun b!4417926 () Bool)

(assert (=> b!4417926 (= e!2750888 (isDefined!7979 (getValueByKey!671 (toList!3417 lt!1618969) (_1!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (= (and d!1338356 c!751989) b!4417924))

(assert (= (and d!1338356 (not c!751989)) b!4417925))

(assert (= (and d!1338356 (not res!1825367)) b!4417926))

(declare-fun m!5094263 () Bool)

(assert (=> d!1338356 m!5094263))

(declare-fun m!5094265 () Bool)

(assert (=> b!4417924 m!5094265))

(assert (=> b!4417924 m!5093957))

(assert (=> b!4417924 m!5093957))

(declare-fun m!5094267 () Bool)

(assert (=> b!4417924 m!5094267))

(assert (=> b!4417926 m!5093957))

(assert (=> b!4417926 m!5093957))

(assert (=> b!4417926 m!5094267))

(assert (=> d!1338220 d!1338356))

(declare-fun b!4417955 () Bool)

(declare-fun e!2750902 () Option!10685)

(assert (=> b!4417955 (= e!2750902 (getValueByKey!671 (t!356557 lt!1618967) (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun b!4417953 () Bool)

(declare-fun e!2750901 () Option!10685)

(assert (=> b!4417953 (= e!2750901 (Some!10684 (_2!27914 (h!55160 lt!1618967))))))

(declare-fun b!4417954 () Bool)

(assert (=> b!4417954 (= e!2750901 e!2750902)))

(declare-fun c!752001 () Bool)

(assert (=> b!4417954 (= c!752001 (and ((_ is Cons!49495) lt!1618967) (not (= (_1!27914 (h!55160 lt!1618967)) (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))))

(declare-fun b!4417956 () Bool)

(assert (=> b!4417956 (= e!2750902 None!10684)))

(declare-fun d!1338358 () Bool)

(declare-fun c!752000 () Bool)

(assert (=> d!1338358 (= c!752000 (and ((_ is Cons!49495) lt!1618967) (= (_1!27914 (h!55160 lt!1618967)) (_1!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (=> d!1338358 (= (getValueByKey!671 lt!1618967 (_1!27914 (tuple2!49241 hash!366 newBucket!194))) e!2750901)))

(assert (= (and d!1338358 c!752000) b!4417953))

(assert (= (and d!1338358 (not c!752000)) b!4417954))

(assert (= (and b!4417954 c!752001) b!4417955))

(assert (= (and b!4417954 (not c!752001)) b!4417956))

(declare-fun m!5094269 () Bool)

(assert (=> b!4417955 m!5094269))

(assert (=> d!1338220 d!1338358))

(declare-fun d!1338360 () Bool)

(assert (=> d!1338360 (= (getValueByKey!671 lt!1618967 (_1!27914 (tuple2!49241 hash!366 newBucket!194))) (Some!10684 (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun lt!1619116 () Unit!81020)

(declare-fun choose!27807 (List!49619 (_ BitVec 64) List!49618) Unit!81020)

(assert (=> d!1338360 (= lt!1619116 (choose!27807 lt!1618967 (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun e!2750909 () Bool)

(assert (=> d!1338360 e!2750909))

(declare-fun res!1825381 () Bool)

(assert (=> d!1338360 (=> (not res!1825381) (not e!2750909))))

(assert (=> d!1338360 (= res!1825381 (isStrictlySorted!212 lt!1618967))))

(assert (=> d!1338360 (= (lemmaContainsTupThenGetReturnValue!407 lt!1618967 (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194))) lt!1619116)))

(declare-fun b!4417972 () Bool)

(declare-fun res!1825382 () Bool)

(assert (=> b!4417972 (=> (not res!1825382) (not e!2750909))))

(assert (=> b!4417972 (= res!1825382 (containsKey!1055 lt!1618967 (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun b!4417973 () Bool)

(assert (=> b!4417973 (= e!2750909 (contains!11961 lt!1618967 (tuple2!49241 (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (= (and d!1338360 res!1825381) b!4417972))

(assert (= (and b!4417972 res!1825382) b!4417973))

(assert (=> d!1338360 m!5093951))

(declare-fun m!5094295 () Bool)

(assert (=> d!1338360 m!5094295))

(declare-fun m!5094297 () Bool)

(assert (=> d!1338360 m!5094297))

(declare-fun m!5094299 () Bool)

(assert (=> b!4417972 m!5094299))

(declare-fun m!5094301 () Bool)

(assert (=> b!4417973 m!5094301))

(assert (=> d!1338220 d!1338360))

(declare-fun bm!307397 () Bool)

(declare-fun call!307403 () List!49619)

(declare-fun call!307402 () List!49619)

(assert (=> bm!307397 (= call!307403 call!307402)))

(declare-fun b!4418052 () Bool)

(declare-fun e!2750971 () List!49619)

(declare-fun call!307404 () List!49619)

(assert (=> b!4418052 (= e!2750971 call!307404)))

(declare-fun e!2750969 () List!49619)

(declare-fun c!752020 () Bool)

(declare-fun b!4418053 () Bool)

(declare-fun c!752023 () Bool)

(assert (=> b!4418053 (= e!2750969 (ite c!752023 (t!356557 (toList!3417 lm!1616)) (ite c!752020 (Cons!49495 (h!55160 (toList!3417 lm!1616)) (t!356557 (toList!3417 lm!1616))) Nil!49495)))))

(declare-fun bm!307398 () Bool)

(assert (=> bm!307398 (= call!307404 call!307403)))

(declare-fun e!2750973 () Bool)

(declare-fun lt!1619135 () List!49619)

(declare-fun b!4418055 () Bool)

(assert (=> b!4418055 (= e!2750973 (contains!11961 lt!1619135 (tuple2!49241 (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(declare-fun b!4418056 () Bool)

(assert (=> b!4418056 (= c!752020 (and ((_ is Cons!49495) (toList!3417 lm!1616)) (bvsgt (_1!27914 (h!55160 (toList!3417 lm!1616))) (_1!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(declare-fun e!2750970 () List!49619)

(assert (=> b!4418056 (= e!2750970 e!2750971)))

(declare-fun b!4418057 () Bool)

(assert (=> b!4418057 (= e!2750969 (insertStrictlySorted!240 (t!356557 (toList!3417 lm!1616)) (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun b!4418058 () Bool)

(assert (=> b!4418058 (= e!2750970 call!307403)))

(declare-fun b!4418059 () Bool)

(declare-fun e!2750972 () List!49619)

(assert (=> b!4418059 (= e!2750972 call!307402)))

(declare-fun b!4418060 () Bool)

(declare-fun res!1825432 () Bool)

(assert (=> b!4418060 (=> (not res!1825432) (not e!2750973))))

(assert (=> b!4418060 (= res!1825432 (containsKey!1055 lt!1619135 (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun b!4418054 () Bool)

(assert (=> b!4418054 (= e!2750971 call!307404)))

(declare-fun d!1338364 () Bool)

(assert (=> d!1338364 e!2750973))

(declare-fun res!1825431 () Bool)

(assert (=> d!1338364 (=> (not res!1825431) (not e!2750973))))

(assert (=> d!1338364 (= res!1825431 (isStrictlySorted!212 lt!1619135))))

(assert (=> d!1338364 (= lt!1619135 e!2750972)))

(declare-fun c!752021 () Bool)

(assert (=> d!1338364 (= c!752021 (and ((_ is Cons!49495) (toList!3417 lm!1616)) (bvslt (_1!27914 (h!55160 (toList!3417 lm!1616))) (_1!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (=> d!1338364 (isStrictlySorted!212 (toList!3417 lm!1616))))

(assert (=> d!1338364 (= (insertStrictlySorted!240 (toList!3417 lm!1616) (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194))) lt!1619135)))

(declare-fun b!4418061 () Bool)

(assert (=> b!4418061 (= e!2750972 e!2750970)))

(assert (=> b!4418061 (= c!752023 (and ((_ is Cons!49495) (toList!3417 lm!1616)) (= (_1!27914 (h!55160 (toList!3417 lm!1616))) (_1!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(declare-fun bm!307399 () Bool)

(declare-fun $colon$colon!770 (List!49619 tuple2!49240) List!49619)

(assert (=> bm!307399 (= call!307402 ($colon$colon!770 e!2750969 (ite c!752021 (h!55160 (toList!3417 lm!1616)) (tuple2!49241 (_1!27914 (tuple2!49241 hash!366 newBucket!194)) (_2!27914 (tuple2!49241 hash!366 newBucket!194))))))))

(declare-fun c!752022 () Bool)

(assert (=> bm!307399 (= c!752022 c!752021)))

(assert (= (and d!1338364 c!752021) b!4418059))

(assert (= (and d!1338364 (not c!752021)) b!4418061))

(assert (= (and b!4418061 c!752023) b!4418058))

(assert (= (and b!4418061 (not c!752023)) b!4418056))

(assert (= (and b!4418056 c!752020) b!4418054))

(assert (= (and b!4418056 (not c!752020)) b!4418052))

(assert (= (or b!4418054 b!4418052) bm!307398))

(assert (= (or b!4418058 bm!307398) bm!307397))

(assert (= (or b!4418059 bm!307397) bm!307399))

(assert (= (and bm!307399 c!752022) b!4418057))

(assert (= (and bm!307399 (not c!752022)) b!4418053))

(assert (= (and d!1338364 res!1825431) b!4418060))

(assert (= (and b!4418060 res!1825432) b!4418055))

(declare-fun m!5094385 () Bool)

(assert (=> b!4418055 m!5094385))

(declare-fun m!5094387 () Bool)

(assert (=> b!4418060 m!5094387))

(declare-fun m!5094389 () Bool)

(assert (=> b!4418057 m!5094389))

(declare-fun m!5094391 () Bool)

(assert (=> d!1338364 m!5094391))

(assert (=> d!1338364 m!5094015))

(declare-fun m!5094393 () Bool)

(assert (=> bm!307399 m!5094393))

(assert (=> d!1338220 d!1338364))

(declare-fun bs!753822 () Bool)

(declare-fun b!4418095 () Bool)

(assert (= bs!753822 (and b!4418095 d!1338272)))

(declare-fun lambda!152436 () Int)

(assert (=> bs!753822 (not (= lambda!152436 lambda!152347))))

(assert (=> b!4418095 true))

(declare-fun bs!753826 () Bool)

(declare-fun b!4418094 () Bool)

(assert (= bs!753826 (and b!4418094 d!1338272)))

(declare-fun lambda!152438 () Int)

(assert (=> bs!753826 (not (= lambda!152438 lambda!152347))))

(declare-fun bs!753828 () Bool)

(assert (= bs!753828 (and b!4418094 b!4418095)))

(assert (=> bs!753828 (= lambda!152438 lambda!152436)))

(assert (=> b!4418094 true))

(declare-fun lambda!152439 () Int)

(assert (=> bs!753826 (not (= lambda!152439 lambda!152347))))

(declare-fun lt!1619257 () ListMap!2661)

(assert (=> bs!753828 (= (= lt!1619257 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152439 lambda!152436))))

(assert (=> b!4418094 (= (= lt!1619257 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152439 lambda!152438))))

(assert (=> b!4418094 true))

(declare-fun bs!753834 () Bool)

(declare-fun d!1338404 () Bool)

(assert (= bs!753834 (and d!1338404 d!1338272)))

(declare-fun lambda!152442 () Int)

(assert (=> bs!753834 (not (= lambda!152442 lambda!152347))))

(declare-fun bs!753835 () Bool)

(assert (= bs!753835 (and d!1338404 b!4418095)))

(declare-fun lt!1619248 () ListMap!2661)

(assert (=> bs!753835 (= (= lt!1619248 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152442 lambda!152436))))

(declare-fun bs!753836 () Bool)

(assert (= bs!753836 (and d!1338404 b!4418094)))

(assert (=> bs!753836 (= (= lt!1619248 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152442 lambda!152438))))

(assert (=> bs!753836 (= (= lt!1619248 lt!1619257) (= lambda!152442 lambda!152439))))

(assert (=> d!1338404 true))

(declare-fun call!307422 () Bool)

(declare-fun c!752030 () Bool)

(declare-fun bm!307415 () Bool)

(assert (=> bm!307415 (= call!307422 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (ite c!752030 lambda!152436 lambda!152439)))))

(declare-fun b!4418091 () Bool)

(declare-fun res!1825449 () Bool)

(declare-fun e!2750990 () Bool)

(assert (=> b!4418091 (=> (not res!1825449) (not e!2750990))))

(assert (=> b!4418091 (= res!1825449 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) lambda!152442))))

(assert (=> d!1338404 e!2750990))

(declare-fun res!1825448 () Bool)

(assert (=> d!1338404 (=> (not res!1825448) (not e!2750990))))

(assert (=> d!1338404 (= res!1825448 (forall!9503 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))) lambda!152442))))

(declare-fun e!2750991 () ListMap!2661)

(assert (=> d!1338404 (= lt!1619248 e!2750991)))

(assert (=> d!1338404 (= c!752030 ((_ is Nil!49494) (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616))))))))

(assert (=> d!1338404 (noDuplicateKeys!715 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))))))

(assert (=> d!1338404 (= (addToMapMapFromBucket!360 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))) (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) lt!1619248)))

(declare-fun b!4418092 () Bool)

(assert (=> b!4418092 (= e!2750990 (invariantList!785 (toList!3418 lt!1619248)))))

(declare-fun b!4418093 () Bool)

(declare-fun e!2750992 () Bool)

(assert (=> b!4418093 (= e!2750992 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) lambda!152439))))

(declare-fun bm!307416 () Bool)

(declare-fun call!307420 () Unit!81020)

(declare-fun lemmaContainsAllItsOwnKeys!160 (ListMap!2661) Unit!81020)

(assert (=> bm!307416 (= call!307420 (lemmaContainsAllItsOwnKeys!160 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))))))

(assert (=> b!4418094 (= e!2750991 lt!1619257)))

(declare-fun lt!1619245 () ListMap!2661)

(declare-fun +!1020 (ListMap!2661 tuple2!49238) ListMap!2661)

(assert (=> b!4418094 (= lt!1619245 (+!1020 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616)))) (h!55159 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))))))))

(assert (=> b!4418094 (= lt!1619257 (addToMapMapFromBucket!360 (t!356556 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616))))) (+!1020 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616)))) (h!55159 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616))))))))))

(declare-fun lt!1619252 () Unit!81020)

(assert (=> b!4418094 (= lt!1619252 call!307420)))

(declare-fun call!307421 () Bool)

(assert (=> b!4418094 call!307421))

(declare-fun lt!1619262 () Unit!81020)

(assert (=> b!4418094 (= lt!1619262 lt!1619252)))

(assert (=> b!4418094 (forall!9503 (toList!3418 lt!1619245) lambda!152439)))

(declare-fun lt!1619249 () Unit!81020)

(declare-fun Unit!81040 () Unit!81020)

(assert (=> b!4418094 (= lt!1619249 Unit!81040)))

(assert (=> b!4418094 (forall!9503 (t!356556 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616))))) lambda!152439)))

(declare-fun lt!1619243 () Unit!81020)

(declare-fun Unit!81041 () Unit!81020)

(assert (=> b!4418094 (= lt!1619243 Unit!81041)))

(declare-fun lt!1619261 () Unit!81020)

(declare-fun Unit!81042 () Unit!81020)

(assert (=> b!4418094 (= lt!1619261 Unit!81042)))

(declare-fun lt!1619255 () Unit!81020)

(declare-fun forallContained!2071 (List!49618 Int tuple2!49238) Unit!81020)

(assert (=> b!4418094 (= lt!1619255 (forallContained!2071 (toList!3418 lt!1619245) lambda!152439 (h!55159 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))))))))

(assert (=> b!4418094 (contains!11958 lt!1619245 (_1!27913 (h!55159 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))))))))

(declare-fun lt!1619246 () Unit!81020)

(declare-fun Unit!81043 () Unit!81020)

(assert (=> b!4418094 (= lt!1619246 Unit!81043)))

(assert (=> b!4418094 (contains!11958 lt!1619257 (_1!27913 (h!55159 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))))))))

(declare-fun lt!1619251 () Unit!81020)

(declare-fun Unit!81044 () Unit!81020)

(assert (=> b!4418094 (= lt!1619251 Unit!81044)))

(assert (=> b!4418094 (forall!9503 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))) lambda!152439)))

(declare-fun lt!1619250 () Unit!81020)

(declare-fun Unit!81045 () Unit!81020)

(assert (=> b!4418094 (= lt!1619250 Unit!81045)))

(assert (=> b!4418094 (forall!9503 (toList!3418 lt!1619245) lambda!152439)))

(declare-fun lt!1619247 () Unit!81020)

(declare-fun Unit!81046 () Unit!81020)

(assert (=> b!4418094 (= lt!1619247 Unit!81046)))

(declare-fun lt!1619253 () Unit!81020)

(declare-fun Unit!81047 () Unit!81020)

(assert (=> b!4418094 (= lt!1619253 Unit!81047)))

(declare-fun lt!1619254 () Unit!81020)

(declare-fun addForallContainsKeyThenBeforeAdding!160 (ListMap!2661 ListMap!2661 K!10860 V!11106) Unit!81020)

(assert (=> b!4418094 (= lt!1619254 (addForallContainsKeyThenBeforeAdding!160 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616)))) lt!1619257 (_1!27913 (h!55159 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))))) (_2!27913 (h!55159 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616))))))))))

(assert (=> b!4418094 call!307422))

(declare-fun lt!1619242 () Unit!81020)

(assert (=> b!4418094 (= lt!1619242 lt!1619254)))

(assert (=> b!4418094 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) lambda!152439)))

(declare-fun lt!1619259 () Unit!81020)

(declare-fun Unit!81048 () Unit!81020)

(assert (=> b!4418094 (= lt!1619259 Unit!81048)))

(declare-fun res!1825450 () Bool)

(assert (=> b!4418094 (= res!1825450 (forall!9503 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616)))) lambda!152439))))

(assert (=> b!4418094 (=> (not res!1825450) (not e!2750992))))

(assert (=> b!4418094 e!2750992))

(declare-fun lt!1619260 () Unit!81020)

(declare-fun Unit!81049 () Unit!81020)

(assert (=> b!4418094 (= lt!1619260 Unit!81049)))

(declare-fun bm!307417 () Bool)

(assert (=> bm!307417 (= call!307421 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (ite c!752030 lambda!152436 lambda!152438)))))

(assert (=> b!4418095 (= e!2750991 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616)))))))

(declare-fun lt!1619256 () Unit!81020)

(assert (=> b!4418095 (= lt!1619256 call!307420)))

(assert (=> b!4418095 call!307422))

(declare-fun lt!1619244 () Unit!81020)

(assert (=> b!4418095 (= lt!1619244 lt!1619256)))

(assert (=> b!4418095 call!307421))

(declare-fun lt!1619258 () Unit!81020)

(declare-fun Unit!81050 () Unit!81020)

(assert (=> b!4418095 (= lt!1619258 Unit!81050)))

(assert (= (and d!1338404 c!752030) b!4418095))

(assert (= (and d!1338404 (not c!752030)) b!4418094))

(assert (= (and b!4418094 res!1825450) b!4418093))

(assert (= (or b!4418095 b!4418094) bm!307416))

(assert (= (or b!4418095 b!4418094) bm!307417))

(assert (= (or b!4418095 b!4418094) bm!307415))

(assert (= (and d!1338404 res!1825448) b!4418091))

(assert (= (and b!4418091 res!1825449) b!4418092))

(declare-fun m!5094435 () Bool)

(assert (=> bm!307417 m!5094435))

(assert (=> b!4418094 m!5094077))

(declare-fun m!5094437 () Bool)

(assert (=> b!4418094 m!5094437))

(assert (=> b!4418094 m!5094077))

(declare-fun m!5094439 () Bool)

(assert (=> b!4418094 m!5094439))

(assert (=> b!4418094 m!5094439))

(declare-fun m!5094441 () Bool)

(assert (=> b!4418094 m!5094441))

(declare-fun m!5094443 () Bool)

(assert (=> b!4418094 m!5094443))

(declare-fun m!5094445 () Bool)

(assert (=> b!4418094 m!5094445))

(declare-fun m!5094447 () Bool)

(assert (=> b!4418094 m!5094447))

(declare-fun m!5094449 () Bool)

(assert (=> b!4418094 m!5094449))

(declare-fun m!5094451 () Bool)

(assert (=> b!4418094 m!5094451))

(declare-fun m!5094453 () Bool)

(assert (=> b!4418094 m!5094453))

(assert (=> b!4418094 m!5094447))

(declare-fun m!5094455 () Bool)

(assert (=> b!4418094 m!5094455))

(assert (=> b!4418094 m!5094453))

(assert (=> b!4418093 m!5094443))

(declare-fun m!5094457 () Bool)

(assert (=> d!1338404 m!5094457))

(declare-fun m!5094459 () Bool)

(assert (=> d!1338404 m!5094459))

(declare-fun m!5094461 () Bool)

(assert (=> b!4418091 m!5094461))

(declare-fun m!5094463 () Bool)

(assert (=> b!4418092 m!5094463))

(declare-fun m!5094465 () Bool)

(assert (=> bm!307415 m!5094465))

(assert (=> bm!307416 m!5094077))

(declare-fun m!5094469 () Bool)

(assert (=> bm!307416 m!5094469))

(assert (=> b!4417758 d!1338404))

(declare-fun bs!753843 () Bool)

(declare-fun d!1338410 () Bool)

(assert (= bs!753843 (and d!1338410 d!1338206)))

(declare-fun lambda!152444 () Int)

(assert (=> bs!753843 (= lambda!152444 lambda!152327)))

(declare-fun bs!753844 () Bool)

(assert (= bs!753844 (and d!1338410 d!1338264)))

(assert (=> bs!753844 (= lambda!152444 lambda!152343)))

(declare-fun bs!753845 () Bool)

(assert (= bs!753845 (and d!1338410 d!1338282)))

(assert (=> bs!753845 (not (= lambda!152444 lambda!152350))))

(declare-fun bs!753846 () Bool)

(assert (= bs!753846 (and d!1338410 start!430244)))

(assert (=> bs!753846 (= lambda!152444 lambda!152324)))

(declare-fun bs!753847 () Bool)

(assert (= bs!753847 (and d!1338410 d!1338270)))

(assert (=> bs!753847 (= lambda!152444 lambda!152344)))

(declare-fun lt!1619284 () ListMap!2661)

(assert (=> d!1338410 (invariantList!785 (toList!3418 lt!1619284))))

(declare-fun e!2750996 () ListMap!2661)

(assert (=> d!1338410 (= lt!1619284 e!2750996)))

(declare-fun c!752032 () Bool)

(assert (=> d!1338410 (= c!752032 ((_ is Cons!49495) (t!356557 (tail!7203 (toList!3417 lm!1616)))))))

(assert (=> d!1338410 (forall!9501 (t!356557 (tail!7203 (toList!3417 lm!1616))) lambda!152444)))

(assert (=> d!1338410 (= (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616)))) lt!1619284)))

(declare-fun b!4418103 () Bool)

(assert (=> b!4418103 (= e!2750996 (addToMapMapFromBucket!360 (_2!27914 (h!55160 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (extractMap!776 (t!356557 (t!356557 (tail!7203 (toList!3417 lm!1616)))))))))

(declare-fun b!4418104 () Bool)

(assert (=> b!4418104 (= e!2750996 (ListMap!2662 Nil!49494))))

(assert (= (and d!1338410 c!752032) b!4418103))

(assert (= (and d!1338410 (not c!752032)) b!4418104))

(declare-fun m!5094503 () Bool)

(assert (=> d!1338410 m!5094503))

(declare-fun m!5094505 () Bool)

(assert (=> d!1338410 m!5094505))

(declare-fun m!5094507 () Bool)

(assert (=> b!4418103 m!5094507))

(assert (=> b!4418103 m!5094507))

(declare-fun m!5094509 () Bool)

(assert (=> b!4418103 m!5094509))

(assert (=> b!4417758 d!1338410))

(declare-fun d!1338414 () Bool)

(declare-fun res!1825454 () Bool)

(declare-fun e!2750998 () Bool)

(assert (=> d!1338414 (=> res!1825454 e!2750998)))

(assert (=> d!1338414 (= res!1825454 ((_ is Nil!49495) (t!356557 (toList!3417 lm!1616))))))

(assert (=> d!1338414 (= (forall!9501 (t!356557 (toList!3417 lm!1616)) lambda!152324) e!2750998)))

(declare-fun b!4418107 () Bool)

(declare-fun e!2750999 () Bool)

(assert (=> b!4418107 (= e!2750998 e!2750999)))

(declare-fun res!1825455 () Bool)

(assert (=> b!4418107 (=> (not res!1825455) (not e!2750999))))

(assert (=> b!4418107 (= res!1825455 (dynLambda!20816 lambda!152324 (h!55160 (t!356557 (toList!3417 lm!1616)))))))

(declare-fun b!4418108 () Bool)

(assert (=> b!4418108 (= e!2750999 (forall!9501 (t!356557 (t!356557 (toList!3417 lm!1616))) lambda!152324))))

(assert (= (and d!1338414 (not res!1825454)) b!4418107))

(assert (= (and b!4418107 res!1825455) b!4418108))

(declare-fun b_lambda!142303 () Bool)

(assert (=> (not b_lambda!142303) (not b!4418107)))

(declare-fun m!5094511 () Bool)

(assert (=> b!4418107 m!5094511))

(declare-fun m!5094513 () Bool)

(assert (=> b!4418108 m!5094513))

(assert (=> b!4417695 d!1338414))

(declare-fun d!1338416 () Bool)

(assert (=> d!1338416 (= (get!16123 (getValueByKey!671 (toList!3417 lm!1616) hash!366)) (v!43844 (getValueByKey!671 (toList!3417 lm!1616) hash!366)))))

(assert (=> d!1338278 d!1338416))

(declare-fun b!4418113 () Bool)

(declare-fun e!2751002 () Option!10685)

(assert (=> b!4418113 (= e!2751002 (getValueByKey!671 (t!356557 (toList!3417 lm!1616)) hash!366))))

(declare-fun b!4418110 () Bool)

(declare-fun e!2751001 () Option!10685)

(assert (=> b!4418110 (= e!2751001 (Some!10684 (_2!27914 (h!55160 (toList!3417 lm!1616)))))))

(declare-fun b!4418111 () Bool)

(assert (=> b!4418111 (= e!2751001 e!2751002)))

(declare-fun c!752035 () Bool)

(assert (=> b!4418111 (= c!752035 (and ((_ is Cons!49495) (toList!3417 lm!1616)) (not (= (_1!27914 (h!55160 (toList!3417 lm!1616))) hash!366))))))

(declare-fun b!4418114 () Bool)

(assert (=> b!4418114 (= e!2751002 None!10684)))

(declare-fun d!1338418 () Bool)

(declare-fun c!752034 () Bool)

(assert (=> d!1338418 (= c!752034 (and ((_ is Cons!49495) (toList!3417 lm!1616)) (= (_1!27914 (h!55160 (toList!3417 lm!1616))) hash!366)))))

(assert (=> d!1338418 (= (getValueByKey!671 (toList!3417 lm!1616) hash!366) e!2751001)))

(assert (= (and d!1338418 c!752034) b!4418110))

(assert (= (and d!1338418 (not c!752034)) b!4418111))

(assert (= (and b!4418111 c!752035) b!4418113))

(assert (= (and b!4418111 (not c!752035)) b!4418114))

(declare-fun m!5094523 () Bool)

(assert (=> b!4418113 m!5094523))

(assert (=> d!1338278 d!1338418))

(declare-fun d!1338420 () Bool)

(assert (=> d!1338420 (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(declare-fun lt!1619288 () Unit!81020)

(declare-fun choose!27809 (List!49618 K!10860) Unit!81020)

(assert (=> d!1338420 (= lt!1619288 (choose!27809 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(assert (=> d!1338420 (invariantList!785 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))

(assert (=> d!1338420 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!581 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717) lt!1619288)))

(declare-fun bs!753862 () Bool)

(assert (= bs!753862 d!1338420))

(assert (=> bs!753862 m!5094091))

(assert (=> bs!753862 m!5094091))

(assert (=> bs!753862 m!5094093))

(declare-fun m!5094535 () Bool)

(assert (=> bs!753862 m!5094535))

(declare-fun m!5094537 () Bool)

(assert (=> bs!753862 m!5094537))

(assert (=> b!4417760 d!1338420))

(declare-fun d!1338438 () Bool)

(declare-fun isEmpty!28314 (Option!10686) Bool)

(assert (=> d!1338438 (= (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717)) (not (isEmpty!28314 (getValueByKey!672 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))))

(declare-fun bs!753863 () Bool)

(assert (= bs!753863 d!1338438))

(assert (=> bs!753863 m!5094091))

(declare-fun m!5094539 () Bool)

(assert (=> bs!753863 m!5094539))

(assert (=> b!4417760 d!1338438))

(declare-fun b!4418124 () Bool)

(declare-fun e!2751009 () Option!10686)

(assert (=> b!4418124 (= e!2751009 (Some!10685 (_2!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))))

(declare-fun d!1338440 () Bool)

(declare-fun c!752040 () Bool)

(assert (=> d!1338440 (= c!752040 (and ((_ is Cons!49494) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (= (_1!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) key!3717)))))

(assert (=> d!1338440 (= (getValueByKey!672 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717) e!2751009)))

(declare-fun b!4418127 () Bool)

(declare-fun e!2751010 () Option!10686)

(assert (=> b!4418127 (= e!2751010 None!10685)))

(declare-fun b!4418125 () Bool)

(assert (=> b!4418125 (= e!2751009 e!2751010)))

(declare-fun c!752041 () Bool)

(assert (=> b!4418125 (= c!752041 (and ((_ is Cons!49494) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (not (= (_1!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) key!3717))))))

(declare-fun b!4418126 () Bool)

(assert (=> b!4418126 (= e!2751010 (getValueByKey!672 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) key!3717))))

(assert (= (and d!1338440 c!752040) b!4418124))

(assert (= (and d!1338440 (not c!752040)) b!4418125))

(assert (= (and b!4418125 c!752041) b!4418126))

(assert (= (and b!4418125 (not c!752041)) b!4418127))

(declare-fun m!5094541 () Bool)

(assert (=> b!4418126 m!5094541))

(assert (=> b!4417760 d!1338440))

(declare-fun d!1338442 () Bool)

(assert (=> d!1338442 (contains!11962 (getKeysList!233 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) key!3717)))

(declare-fun lt!1619291 () Unit!81020)

(declare-fun choose!27810 (List!49618 K!10860) Unit!81020)

(assert (=> d!1338442 (= lt!1619291 (choose!27810 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(assert (=> d!1338442 (invariantList!785 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))

(assert (=> d!1338442 (= (lemmaInListThenGetKeysListContains!230 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717) lt!1619291)))

(declare-fun bs!753864 () Bool)

(assert (= bs!753864 d!1338442))

(assert (=> bs!753864 m!5094089))

(assert (=> bs!753864 m!5094089))

(declare-fun m!5094543 () Bool)

(assert (=> bs!753864 m!5094543))

(declare-fun m!5094545 () Bool)

(assert (=> bs!753864 m!5094545))

(assert (=> bs!753864 m!5094537))

(assert (=> b!4417760 d!1338442))

(declare-fun d!1338444 () Bool)

(declare-fun res!1825456 () Bool)

(declare-fun e!2751011 () Bool)

(assert (=> d!1338444 (=> res!1825456 e!2751011)))

(assert (=> d!1338444 (= res!1825456 (and ((_ is Cons!49494) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= (_1!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) key!3717)))))

(assert (=> d!1338444 (= (containsKey!1054 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717) e!2751011)))

(declare-fun b!4418128 () Bool)

(declare-fun e!2751012 () Bool)

(assert (=> b!4418128 (= e!2751011 e!2751012)))

(declare-fun res!1825457 () Bool)

(assert (=> b!4418128 (=> (not res!1825457) (not e!2751012))))

(assert (=> b!4418128 (= res!1825457 ((_ is Cons!49494) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))

(declare-fun b!4418129 () Bool)

(assert (=> b!4418129 (= e!2751012 (containsKey!1054 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) key!3717))))

(assert (= (and d!1338444 (not res!1825456)) b!4418128))

(assert (= (and b!4418128 res!1825457) b!4418129))

(declare-fun m!5094547 () Bool)

(assert (=> b!4418129 m!5094547))

(assert (=> d!1338250 d!1338444))

(declare-fun d!1338446 () Bool)

(declare-fun res!1825458 () Bool)

(declare-fun e!2751013 () Bool)

(assert (=> d!1338446 (=> res!1825458 e!2751013)))

(assert (=> d!1338446 (= res!1825458 (not ((_ is Cons!49494) (_2!27914 (h!55160 (toList!3417 lm!1616))))))))

(assert (=> d!1338446 (= (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 lm!1616)))) e!2751013)))

(declare-fun b!4418130 () Bool)

(declare-fun e!2751014 () Bool)

(assert (=> b!4418130 (= e!2751013 e!2751014)))

(declare-fun res!1825459 () Bool)

(assert (=> b!4418130 (=> (not res!1825459) (not e!2751014))))

(assert (=> b!4418130 (= res!1825459 (not (containsKey!1056 (t!356556 (_2!27914 (h!55160 (toList!3417 lm!1616)))) (_1!27913 (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616))))))))))

(declare-fun b!4418131 () Bool)

(assert (=> b!4418131 (= e!2751014 (noDuplicateKeys!715 (t!356556 (_2!27914 (h!55160 (toList!3417 lm!1616))))))))

(assert (= (and d!1338446 (not res!1825458)) b!4418130))

(assert (= (and b!4418130 res!1825459) b!4418131))

(declare-fun m!5094549 () Bool)

(assert (=> b!4418130 m!5094549))

(declare-fun m!5094551 () Bool)

(assert (=> b!4418131 m!5094551))

(assert (=> bs!753760 d!1338446))

(declare-fun d!1338448 () Bool)

(declare-fun noDuplicatedKeys!166 (List!49618) Bool)

(assert (=> d!1338448 (= (invariantList!785 (toList!3418 lt!1619038)) (noDuplicatedKeys!166 (toList!3418 lt!1619038)))))

(declare-fun bs!753865 () Bool)

(assert (= bs!753865 d!1338448))

(declare-fun m!5094553 () Bool)

(assert (=> bs!753865 m!5094553))

(assert (=> d!1338264 d!1338448))

(declare-fun d!1338450 () Bool)

(declare-fun res!1825460 () Bool)

(declare-fun e!2751015 () Bool)

(assert (=> d!1338450 (=> res!1825460 e!2751015)))

(assert (=> d!1338450 (= res!1825460 ((_ is Nil!49495) (tail!7203 (toList!3417 lm!1616))))))

(assert (=> d!1338450 (= (forall!9501 (tail!7203 (toList!3417 lm!1616)) lambda!152343) e!2751015)))

(declare-fun b!4418132 () Bool)

(declare-fun e!2751016 () Bool)

(assert (=> b!4418132 (= e!2751015 e!2751016)))

(declare-fun res!1825461 () Bool)

(assert (=> b!4418132 (=> (not res!1825461) (not e!2751016))))

(assert (=> b!4418132 (= res!1825461 (dynLambda!20816 lambda!152343 (h!55160 (tail!7203 (toList!3417 lm!1616)))))))

(declare-fun b!4418133 () Bool)

(assert (=> b!4418133 (= e!2751016 (forall!9501 (t!356557 (tail!7203 (toList!3417 lm!1616))) lambda!152343))))

(assert (= (and d!1338450 (not res!1825460)) b!4418132))

(assert (= (and b!4418132 res!1825461) b!4418133))

(declare-fun b_lambda!142321 () Bool)

(assert (=> (not b_lambda!142321) (not b!4418132)))

(declare-fun m!5094555 () Bool)

(assert (=> b!4418132 m!5094555))

(declare-fun m!5094557 () Bool)

(assert (=> b!4418133 m!5094557))

(assert (=> d!1338264 d!1338450))

(declare-fun d!1338452 () Bool)

(assert (=> d!1338452 (= (isEmpty!28311 (toList!3417 lm!1616)) ((_ is Nil!49495) (toList!3417 lm!1616)))))

(assert (=> d!1338248 d!1338452))

(declare-fun d!1338454 () Bool)

(declare-fun res!1825462 () Bool)

(declare-fun e!2751017 () Bool)

(assert (=> d!1338454 (=> res!1825462 e!2751017)))

(assert (=> d!1338454 (= res!1825462 ((_ is Nil!49495) (toList!3417 lm!1616)))))

(assert (=> d!1338454 (= (forall!9501 (toList!3417 lm!1616) lambda!152350) e!2751017)))

(declare-fun b!4418134 () Bool)

(declare-fun e!2751018 () Bool)

(assert (=> b!4418134 (= e!2751017 e!2751018)))

(declare-fun res!1825463 () Bool)

(assert (=> b!4418134 (=> (not res!1825463) (not e!2751018))))

(assert (=> b!4418134 (= res!1825463 (dynLambda!20816 lambda!152350 (h!55160 (toList!3417 lm!1616))))))

(declare-fun b!4418135 () Bool)

(assert (=> b!4418135 (= e!2751018 (forall!9501 (t!356557 (toList!3417 lm!1616)) lambda!152350))))

(assert (= (and d!1338454 (not res!1825462)) b!4418134))

(assert (= (and b!4418134 res!1825463) b!4418135))

(declare-fun b_lambda!142323 () Bool)

(assert (=> (not b_lambda!142323) (not b!4418134)))

(declare-fun m!5094559 () Bool)

(assert (=> b!4418134 m!5094559))

(declare-fun m!5094561 () Bool)

(assert (=> b!4418135 m!5094561))

(assert (=> d!1338282 d!1338454))

(declare-fun d!1338456 () Bool)

(declare-fun res!1825464 () Bool)

(declare-fun e!2751019 () Bool)

(assert (=> d!1338456 (=> res!1825464 e!2751019)))

(assert (=> d!1338456 (= res!1825464 ((_ is Nil!49495) (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (=> d!1338456 (= (forall!9501 (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194))) lambda!152324) e!2751019)))

(declare-fun b!4418136 () Bool)

(declare-fun e!2751020 () Bool)

(assert (=> b!4418136 (= e!2751019 e!2751020)))

(declare-fun res!1825465 () Bool)

(assert (=> b!4418136 (=> (not res!1825465) (not e!2751020))))

(assert (=> b!4418136 (= res!1825465 (dynLambda!20816 lambda!152324 (h!55160 (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194))))))))

(declare-fun b!4418137 () Bool)

(assert (=> b!4418137 (= e!2751020 (forall!9501 (t!356557 (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194)))) lambda!152324))))

(assert (= (and d!1338456 (not res!1825464)) b!4418136))

(assert (= (and b!4418136 res!1825465) b!4418137))

(declare-fun b_lambda!142325 () Bool)

(assert (=> (not b_lambda!142325) (not b!4418136)))

(declare-fun m!5094563 () Bool)

(assert (=> b!4418136 m!5094563))

(declare-fun m!5094565 () Bool)

(assert (=> b!4418137 m!5094565))

(assert (=> d!1338224 d!1338456))

(assert (=> d!1338224 d!1338220))

(declare-fun d!1338458 () Bool)

(assert (=> d!1338458 (forall!9501 (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194))) lambda!152324)))

(assert (=> d!1338458 true))

(declare-fun _$31!364 () Unit!81020)

(assert (=> d!1338458 (= (choose!27801 lm!1616 lambda!152324 hash!366 newBucket!194) _$31!364)))

(declare-fun bs!753866 () Bool)

(assert (= bs!753866 d!1338458))

(assert (=> bs!753866 m!5093893))

(assert (=> bs!753866 m!5094005))

(assert (=> d!1338224 d!1338458))

(assert (=> d!1338224 d!1338244))

(declare-fun d!1338460 () Bool)

(declare-fun lt!1619294 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7921 (List!49621) (InoxSet K!10860))

(assert (=> d!1338460 (= lt!1619294 (select (content!7921 (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) key!3717))))

(declare-fun e!2751026 () Bool)

(assert (=> d!1338460 (= lt!1619294 e!2751026)))

(declare-fun res!1825470 () Bool)

(assert (=> d!1338460 (=> (not res!1825470) (not e!2751026))))

(assert (=> d!1338460 (= res!1825470 ((_ is Cons!49497) (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))

(assert (=> d!1338460 (= (contains!11962 (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717) lt!1619294)))

(declare-fun b!4418143 () Bool)

(declare-fun e!2751025 () Bool)

(assert (=> b!4418143 (= e!2751026 e!2751025)))

(declare-fun res!1825471 () Bool)

(assert (=> b!4418143 (=> res!1825471 e!2751025)))

(assert (=> b!4418143 (= res!1825471 (= (h!55164 (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) key!3717))))

(declare-fun b!4418144 () Bool)

(assert (=> b!4418144 (= e!2751025 (contains!11962 (t!356559 (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) key!3717))))

(assert (= (and d!1338460 res!1825470) b!4418143))

(assert (= (and b!4418143 (not res!1825471)) b!4418144))

(assert (=> d!1338460 m!5094057))

(declare-fun m!5094567 () Bool)

(assert (=> d!1338460 m!5094567))

(declare-fun m!5094569 () Bool)

(assert (=> d!1338460 m!5094569))

(declare-fun m!5094571 () Bool)

(assert (=> b!4418144 m!5094571))

(assert (=> b!4417753 d!1338460))

(declare-fun b!4418152 () Bool)

(assert (=> b!4418152 true))

(declare-fun d!1338462 () Bool)

(declare-fun e!2751029 () Bool)

(assert (=> d!1338462 e!2751029))

(declare-fun res!1825479 () Bool)

(assert (=> d!1338462 (=> (not res!1825479) (not e!2751029))))

(declare-fun lt!1619297 () List!49621)

(declare-fun noDuplicate!650 (List!49621) Bool)

(assert (=> d!1338462 (= res!1825479 (noDuplicate!650 lt!1619297))))

(assert (=> d!1338462 (= lt!1619297 (getKeysList!233 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))

(assert (=> d!1338462 (= (keys!16875 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) lt!1619297)))

(declare-fun b!4418151 () Bool)

(declare-fun res!1825480 () Bool)

(assert (=> b!4418151 (=> (not res!1825480) (not e!2751029))))

(declare-fun length!156 (List!49621) Int)

(declare-fun length!157 (List!49618) Int)

(assert (=> b!4418151 (= res!1825480 (= (length!156 lt!1619297) (length!157 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))))

(declare-fun res!1825478 () Bool)

(assert (=> b!4418152 (=> (not res!1825478) (not e!2751029))))

(declare-fun lambda!152450 () Int)

(declare-fun forall!9505 (List!49621 Int) Bool)

(assert (=> b!4418152 (= res!1825478 (forall!9505 lt!1619297 lambda!152450))))

(declare-fun b!4418153 () Bool)

(declare-fun lambda!152451 () Int)

(declare-fun map!10805 (List!49618 Int) List!49621)

(assert (=> b!4418153 (= e!2751029 (= (content!7921 lt!1619297) (content!7921 (map!10805 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) lambda!152451))))))

(assert (= (and d!1338462 res!1825479) b!4418151))

(assert (= (and b!4418151 res!1825480) b!4418152))

(assert (= (and b!4418152 res!1825478) b!4418153))

(declare-fun m!5094573 () Bool)

(assert (=> d!1338462 m!5094573))

(assert (=> d!1338462 m!5094061))

(declare-fun m!5094575 () Bool)

(assert (=> b!4418151 m!5094575))

(declare-fun m!5094577 () Bool)

(assert (=> b!4418151 m!5094577))

(declare-fun m!5094579 () Bool)

(assert (=> b!4418152 m!5094579))

(declare-fun m!5094581 () Bool)

(assert (=> b!4418153 m!5094581))

(declare-fun m!5094583 () Bool)

(assert (=> b!4418153 m!5094583))

(assert (=> b!4418153 m!5094583))

(declare-fun m!5094585 () Bool)

(assert (=> b!4418153 m!5094585))

(assert (=> b!4417753 d!1338462))

(declare-fun d!1338464 () Bool)

(declare-fun res!1825481 () Bool)

(declare-fun e!2751030 () Bool)

(assert (=> d!1338464 (=> res!1825481 e!2751030)))

(assert (=> d!1338464 (= res!1825481 ((_ is Nil!49495) (t!356557 (toList!3417 lt!1618925))))))

(assert (=> d!1338464 (= (forall!9501 (t!356557 (toList!3417 lt!1618925)) lambda!152324) e!2751030)))

(declare-fun b!4418156 () Bool)

(declare-fun e!2751031 () Bool)

(assert (=> b!4418156 (= e!2751030 e!2751031)))

(declare-fun res!1825482 () Bool)

(assert (=> b!4418156 (=> (not res!1825482) (not e!2751031))))

(assert (=> b!4418156 (= res!1825482 (dynLambda!20816 lambda!152324 (h!55160 (t!356557 (toList!3417 lt!1618925)))))))

(declare-fun b!4418157 () Bool)

(assert (=> b!4418157 (= e!2751031 (forall!9501 (t!356557 (t!356557 (toList!3417 lt!1618925))) lambda!152324))))

(assert (= (and d!1338464 (not res!1825481)) b!4418156))

(assert (= (and b!4418156 res!1825482) b!4418157))

(declare-fun b_lambda!142327 () Bool)

(assert (=> (not b_lambda!142327) (not b!4418156)))

(declare-fun m!5094587 () Bool)

(assert (=> b!4418156 m!5094587))

(declare-fun m!5094589 () Bool)

(assert (=> b!4418157 m!5094589))

(assert (=> b!4417654 d!1338464))

(declare-fun bs!753867 () Bool)

(declare-fun b!4418162 () Bool)

(assert (= bs!753867 (and b!4418162 b!4418095)))

(declare-fun lambda!152452 () Int)

(assert (=> bs!753867 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152452 lambda!152436))))

(declare-fun bs!753868 () Bool)

(assert (= bs!753868 (and b!4418162 b!4418094)))

(assert (=> bs!753868 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152452 lambda!152438))))

(declare-fun bs!753869 () Bool)

(assert (= bs!753869 (and b!4418162 d!1338272)))

(assert (=> bs!753869 (not (= lambda!152452 lambda!152347))))

(declare-fun bs!753870 () Bool)

(assert (= bs!753870 (and b!4418162 d!1338404)))

(assert (=> bs!753870 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) lt!1619248) (= lambda!152452 lambda!152442))))

(assert (=> bs!753868 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) lt!1619257) (= lambda!152452 lambda!152439))))

(assert (=> b!4418162 true))

(declare-fun bs!753871 () Bool)

(declare-fun b!4418161 () Bool)

(assert (= bs!753871 (and b!4418161 b!4418095)))

(declare-fun lambda!152453 () Int)

(assert (=> bs!753871 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152453 lambda!152436))))

(declare-fun bs!753872 () Bool)

(assert (= bs!753872 (and b!4418161 b!4418094)))

(assert (=> bs!753872 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152453 lambda!152438))))

(declare-fun bs!753873 () Bool)

(assert (= bs!753873 (and b!4418161 d!1338272)))

(assert (=> bs!753873 (not (= lambda!152453 lambda!152347))))

(declare-fun bs!753874 () Bool)

(assert (= bs!753874 (and b!4418161 d!1338404)))

(assert (=> bs!753874 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) lt!1619248) (= lambda!152453 lambda!152442))))

(declare-fun bs!753875 () Bool)

(assert (= bs!753875 (and b!4418161 b!4418162)))

(assert (=> bs!753875 (= lambda!152453 lambda!152452)))

(assert (=> bs!753872 (= (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) lt!1619257) (= lambda!152453 lambda!152439))))

(assert (=> b!4418161 true))

(declare-fun lambda!152454 () Int)

(declare-fun lt!1619313 () ListMap!2661)

(assert (=> bs!753871 (= (= lt!1619313 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152454 lambda!152436))))

(assert (=> b!4418161 (= (= lt!1619313 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) (= lambda!152454 lambda!152453))))

(assert (=> bs!753872 (= (= lt!1619313 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152454 lambda!152438))))

(assert (=> bs!753873 (not (= lambda!152454 lambda!152347))))

(assert (=> bs!753874 (= (= lt!1619313 lt!1619248) (= lambda!152454 lambda!152442))))

(assert (=> bs!753875 (= (= lt!1619313 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) (= lambda!152454 lambda!152452))))

(assert (=> bs!753872 (= (= lt!1619313 lt!1619257) (= lambda!152454 lambda!152439))))

(assert (=> b!4418161 true))

(declare-fun bs!753876 () Bool)

(declare-fun d!1338466 () Bool)

(assert (= bs!753876 (and d!1338466 b!4418095)))

(declare-fun lt!1619304 () ListMap!2661)

(declare-fun lambda!152455 () Int)

(assert (=> bs!753876 (= (= lt!1619304 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152455 lambda!152436))))

(declare-fun bs!753877 () Bool)

(assert (= bs!753877 (and d!1338466 b!4418161)))

(assert (=> bs!753877 (= (= lt!1619304 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) (= lambda!152455 lambda!152453))))

(declare-fun bs!753878 () Bool)

(assert (= bs!753878 (and d!1338466 b!4418094)))

(assert (=> bs!753878 (= (= lt!1619304 (extractMap!776 (t!356557 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152455 lambda!152438))))

(declare-fun bs!753879 () Bool)

(assert (= bs!753879 (and d!1338466 d!1338272)))

(assert (=> bs!753879 (not (= lambda!152455 lambda!152347))))

(declare-fun bs!753880 () Bool)

(assert (= bs!753880 (and d!1338466 b!4418162)))

(assert (=> bs!753880 (= (= lt!1619304 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) (= lambda!152455 lambda!152452))))

(assert (=> bs!753878 (= (= lt!1619304 lt!1619257) (= lambda!152455 lambda!152439))))

(assert (=> bs!753877 (= (= lt!1619304 lt!1619313) (= lambda!152455 lambda!152454))))

(declare-fun bs!753881 () Bool)

(assert (= bs!753881 (and d!1338466 d!1338404)))

(assert (=> bs!753881 (= (= lt!1619304 lt!1619248) (= lambda!152455 lambda!152442))))

(assert (=> d!1338466 true))

(declare-fun call!307428 () Bool)

(declare-fun c!752042 () Bool)

(declare-fun bm!307421 () Bool)

(assert (=> bm!307421 (= call!307428 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) (ite c!752042 lambda!152452 lambda!152454)))))

(declare-fun b!4418158 () Bool)

(declare-fun res!1825484 () Bool)

(declare-fun e!2751032 () Bool)

(assert (=> b!4418158 (=> (not res!1825484) (not e!2751032))))

(assert (=> b!4418158 (= res!1825484 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) lambda!152455))))

(assert (=> d!1338466 e!2751032))

(declare-fun res!1825483 () Bool)

(assert (=> d!1338466 (=> (not res!1825483) (not e!2751032))))

(assert (=> d!1338466 (= res!1825483 (forall!9503 (_2!27914 (h!55160 (toList!3417 lm!1616))) lambda!152455))))

(declare-fun e!2751033 () ListMap!2661)

(assert (=> d!1338466 (= lt!1619304 e!2751033)))

(assert (=> d!1338466 (= c!752042 ((_ is Nil!49494) (_2!27914 (h!55160 (toList!3417 lm!1616)))))))

(assert (=> d!1338466 (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 lm!1616))))))

(assert (=> d!1338466 (= (addToMapMapFromBucket!360 (_2!27914 (h!55160 (toList!3417 lm!1616))) (extractMap!776 (t!356557 (toList!3417 lm!1616)))) lt!1619304)))

(declare-fun b!4418159 () Bool)

(assert (=> b!4418159 (= e!2751032 (invariantList!785 (toList!3418 lt!1619304)))))

(declare-fun b!4418160 () Bool)

(declare-fun e!2751034 () Bool)

(assert (=> b!4418160 (= e!2751034 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) lambda!152454))))

(declare-fun bm!307422 () Bool)

(declare-fun call!307426 () Unit!81020)

(assert (=> bm!307422 (= call!307426 (lemmaContainsAllItsOwnKeys!160 (extractMap!776 (t!356557 (toList!3417 lm!1616)))))))

(assert (=> b!4418161 (= e!2751033 lt!1619313)))

(declare-fun lt!1619301 () ListMap!2661)

(assert (=> b!4418161 (= lt!1619301 (+!1020 (extractMap!776 (t!356557 (toList!3417 lm!1616))) (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616))))))))

(assert (=> b!4418161 (= lt!1619313 (addToMapMapFromBucket!360 (t!356556 (_2!27914 (h!55160 (toList!3417 lm!1616)))) (+!1020 (extractMap!776 (t!356557 (toList!3417 lm!1616))) (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616)))))))))

(declare-fun lt!1619308 () Unit!81020)

(assert (=> b!4418161 (= lt!1619308 call!307426)))

(declare-fun call!307427 () Bool)

(assert (=> b!4418161 call!307427))

(declare-fun lt!1619318 () Unit!81020)

(assert (=> b!4418161 (= lt!1619318 lt!1619308)))

(assert (=> b!4418161 (forall!9503 (toList!3418 lt!1619301) lambda!152454)))

(declare-fun lt!1619305 () Unit!81020)

(declare-fun Unit!81055 () Unit!81020)

(assert (=> b!4418161 (= lt!1619305 Unit!81055)))

(assert (=> b!4418161 (forall!9503 (t!356556 (_2!27914 (h!55160 (toList!3417 lm!1616)))) lambda!152454)))

(declare-fun lt!1619299 () Unit!81020)

(declare-fun Unit!81056 () Unit!81020)

(assert (=> b!4418161 (= lt!1619299 Unit!81056)))

(declare-fun lt!1619317 () Unit!81020)

(declare-fun Unit!81057 () Unit!81020)

(assert (=> b!4418161 (= lt!1619317 Unit!81057)))

(declare-fun lt!1619311 () Unit!81020)

(assert (=> b!4418161 (= lt!1619311 (forallContained!2071 (toList!3418 lt!1619301) lambda!152454 (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616))))))))

(assert (=> b!4418161 (contains!11958 lt!1619301 (_1!27913 (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616))))))))

(declare-fun lt!1619302 () Unit!81020)

(declare-fun Unit!81058 () Unit!81020)

(assert (=> b!4418161 (= lt!1619302 Unit!81058)))

(assert (=> b!4418161 (contains!11958 lt!1619313 (_1!27913 (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616))))))))

(declare-fun lt!1619307 () Unit!81020)

(declare-fun Unit!81059 () Unit!81020)

(assert (=> b!4418161 (= lt!1619307 Unit!81059)))

(assert (=> b!4418161 (forall!9503 (_2!27914 (h!55160 (toList!3417 lm!1616))) lambda!152454)))

(declare-fun lt!1619306 () Unit!81020)

(declare-fun Unit!81060 () Unit!81020)

(assert (=> b!4418161 (= lt!1619306 Unit!81060)))

(assert (=> b!4418161 (forall!9503 (toList!3418 lt!1619301) lambda!152454)))

(declare-fun lt!1619303 () Unit!81020)

(declare-fun Unit!81061 () Unit!81020)

(assert (=> b!4418161 (= lt!1619303 Unit!81061)))

(declare-fun lt!1619309 () Unit!81020)

(declare-fun Unit!81062 () Unit!81020)

(assert (=> b!4418161 (= lt!1619309 Unit!81062)))

(declare-fun lt!1619310 () Unit!81020)

(assert (=> b!4418161 (= lt!1619310 (addForallContainsKeyThenBeforeAdding!160 (extractMap!776 (t!356557 (toList!3417 lm!1616))) lt!1619313 (_1!27913 (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616))))) (_2!27913 (h!55159 (_2!27914 (h!55160 (toList!3417 lm!1616)))))))))

(assert (=> b!4418161 call!307428))

(declare-fun lt!1619298 () Unit!81020)

(assert (=> b!4418161 (= lt!1619298 lt!1619310)))

(assert (=> b!4418161 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) lambda!152454)))

(declare-fun lt!1619315 () Unit!81020)

(declare-fun Unit!81063 () Unit!81020)

(assert (=> b!4418161 (= lt!1619315 Unit!81063)))

(declare-fun res!1825485 () Bool)

(assert (=> b!4418161 (= res!1825485 (forall!9503 (_2!27914 (h!55160 (toList!3417 lm!1616))) lambda!152454))))

(assert (=> b!4418161 (=> (not res!1825485) (not e!2751034))))

(assert (=> b!4418161 e!2751034))

(declare-fun lt!1619316 () Unit!81020)

(declare-fun Unit!81064 () Unit!81020)

(assert (=> b!4418161 (= lt!1619316 Unit!81064)))

(declare-fun bm!307423 () Bool)

(assert (=> bm!307423 (= call!307427 (forall!9503 (toList!3418 (extractMap!776 (t!356557 (toList!3417 lm!1616)))) (ite c!752042 lambda!152452 lambda!152453)))))

(assert (=> b!4418162 (= e!2751033 (extractMap!776 (t!356557 (toList!3417 lm!1616))))))

(declare-fun lt!1619312 () Unit!81020)

(assert (=> b!4418162 (= lt!1619312 call!307426)))

(assert (=> b!4418162 call!307428))

(declare-fun lt!1619300 () Unit!81020)

(assert (=> b!4418162 (= lt!1619300 lt!1619312)))

(assert (=> b!4418162 call!307427))

(declare-fun lt!1619314 () Unit!81020)

(declare-fun Unit!81066 () Unit!81020)

(assert (=> b!4418162 (= lt!1619314 Unit!81066)))

(assert (= (and d!1338466 c!752042) b!4418162))

(assert (= (and d!1338466 (not c!752042)) b!4418161))

(assert (= (and b!4418161 res!1825485) b!4418160))

(assert (= (or b!4418162 b!4418161) bm!307422))

(assert (= (or b!4418162 b!4418161) bm!307423))

(assert (= (or b!4418162 b!4418161) bm!307421))

(assert (= (and d!1338466 res!1825483) b!4418158))

(assert (= (and b!4418158 res!1825484) b!4418159))

(declare-fun m!5094591 () Bool)

(assert (=> bm!307423 m!5094591))

(assert (=> b!4418161 m!5094105))

(declare-fun m!5094593 () Bool)

(assert (=> b!4418161 m!5094593))

(assert (=> b!4418161 m!5094105))

(declare-fun m!5094595 () Bool)

(assert (=> b!4418161 m!5094595))

(assert (=> b!4418161 m!5094595))

(declare-fun m!5094597 () Bool)

(assert (=> b!4418161 m!5094597))

(declare-fun m!5094599 () Bool)

(assert (=> b!4418161 m!5094599))

(declare-fun m!5094601 () Bool)

(assert (=> b!4418161 m!5094601))

(declare-fun m!5094603 () Bool)

(assert (=> b!4418161 m!5094603))

(declare-fun m!5094605 () Bool)

(assert (=> b!4418161 m!5094605))

(declare-fun m!5094607 () Bool)

(assert (=> b!4418161 m!5094607))

(declare-fun m!5094609 () Bool)

(assert (=> b!4418161 m!5094609))

(assert (=> b!4418161 m!5094603))

(declare-fun m!5094611 () Bool)

(assert (=> b!4418161 m!5094611))

(assert (=> b!4418161 m!5094609))

(assert (=> b!4418160 m!5094599))

(declare-fun m!5094613 () Bool)

(assert (=> d!1338466 m!5094613))

(assert (=> d!1338466 m!5094129))

(declare-fun m!5094615 () Bool)

(assert (=> b!4418158 m!5094615))

(declare-fun m!5094617 () Bool)

(assert (=> b!4418159 m!5094617))

(declare-fun m!5094619 () Bool)

(assert (=> bm!307421 m!5094619))

(assert (=> bm!307422 m!5094105))

(declare-fun m!5094621 () Bool)

(assert (=> bm!307422 m!5094621))

(assert (=> b!4417769 d!1338466))

(declare-fun bs!753882 () Bool)

(declare-fun d!1338468 () Bool)

(assert (= bs!753882 (and d!1338468 d!1338410)))

(declare-fun lambda!152456 () Int)

(assert (=> bs!753882 (= lambda!152456 lambda!152444)))

(declare-fun bs!753883 () Bool)

(assert (= bs!753883 (and d!1338468 d!1338206)))

(assert (=> bs!753883 (= lambda!152456 lambda!152327)))

(declare-fun bs!753884 () Bool)

(assert (= bs!753884 (and d!1338468 d!1338264)))

(assert (=> bs!753884 (= lambda!152456 lambda!152343)))

(declare-fun bs!753885 () Bool)

(assert (= bs!753885 (and d!1338468 d!1338282)))

(assert (=> bs!753885 (not (= lambda!152456 lambda!152350))))

(declare-fun bs!753886 () Bool)

(assert (= bs!753886 (and d!1338468 start!430244)))

(assert (=> bs!753886 (= lambda!152456 lambda!152324)))

(declare-fun bs!753887 () Bool)

(assert (= bs!753887 (and d!1338468 d!1338270)))

(assert (=> bs!753887 (= lambda!152456 lambda!152344)))

(declare-fun lt!1619319 () ListMap!2661)

(assert (=> d!1338468 (invariantList!785 (toList!3418 lt!1619319))))

(declare-fun e!2751035 () ListMap!2661)

(assert (=> d!1338468 (= lt!1619319 e!2751035)))

(declare-fun c!752043 () Bool)

(assert (=> d!1338468 (= c!752043 ((_ is Cons!49495) (t!356557 (toList!3417 lm!1616))))))

(assert (=> d!1338468 (forall!9501 (t!356557 (toList!3417 lm!1616)) lambda!152456)))

(assert (=> d!1338468 (= (extractMap!776 (t!356557 (toList!3417 lm!1616))) lt!1619319)))

(declare-fun b!4418163 () Bool)

(assert (=> b!4418163 (= e!2751035 (addToMapMapFromBucket!360 (_2!27914 (h!55160 (t!356557 (toList!3417 lm!1616)))) (extractMap!776 (t!356557 (t!356557 (toList!3417 lm!1616))))))))

(declare-fun b!4418164 () Bool)

(assert (=> b!4418164 (= e!2751035 (ListMap!2662 Nil!49494))))

(assert (= (and d!1338468 c!752043) b!4418163))

(assert (= (and d!1338468 (not c!752043)) b!4418164))

(declare-fun m!5094623 () Bool)

(assert (=> d!1338468 m!5094623))

(declare-fun m!5094625 () Bool)

(assert (=> d!1338468 m!5094625))

(declare-fun m!5094627 () Bool)

(assert (=> b!4418163 m!5094627))

(assert (=> b!4418163 m!5094627))

(declare-fun m!5094629 () Bool)

(assert (=> b!4418163 m!5094629))

(assert (=> b!4417769 d!1338468))

(assert (=> b!4417750 d!1338460))

(assert (=> b!4417750 d!1338462))

(declare-fun d!1338470 () Bool)

(assert (=> d!1338470 (= (invariantList!785 (toList!3418 lt!1619047)) (noDuplicatedKeys!166 (toList!3418 lt!1619047)))))

(declare-fun bs!753888 () Bool)

(assert (= bs!753888 d!1338470))

(declare-fun m!5094631 () Bool)

(assert (=> bs!753888 m!5094631))

(assert (=> d!1338270 d!1338470))

(declare-fun d!1338472 () Bool)

(declare-fun res!1825486 () Bool)

(declare-fun e!2751036 () Bool)

(assert (=> d!1338472 (=> res!1825486 e!2751036)))

(assert (=> d!1338472 (= res!1825486 ((_ is Nil!49495) (toList!3417 lm!1616)))))

(assert (=> d!1338472 (= (forall!9501 (toList!3417 lm!1616) lambda!152344) e!2751036)))

(declare-fun b!4418165 () Bool)

(declare-fun e!2751037 () Bool)

(assert (=> b!4418165 (= e!2751036 e!2751037)))

(declare-fun res!1825487 () Bool)

(assert (=> b!4418165 (=> (not res!1825487) (not e!2751037))))

(assert (=> b!4418165 (= res!1825487 (dynLambda!20816 lambda!152344 (h!55160 (toList!3417 lm!1616))))))

(declare-fun b!4418166 () Bool)

(assert (=> b!4418166 (= e!2751037 (forall!9501 (t!356557 (toList!3417 lm!1616)) lambda!152344))))

(assert (= (and d!1338472 (not res!1825486)) b!4418165))

(assert (= (and b!4418165 res!1825487) b!4418166))

(declare-fun b_lambda!142329 () Bool)

(assert (=> (not b_lambda!142329) (not b!4418165)))

(declare-fun m!5094633 () Bool)

(assert (=> b!4418165 m!5094633))

(declare-fun m!5094635 () Bool)

(assert (=> b!4418166 m!5094635))

(assert (=> d!1338270 d!1338472))

(declare-fun d!1338474 () Bool)

(declare-fun isEmpty!28315 (Option!10685) Bool)

(assert (=> d!1338474 (= (isDefined!7979 (getValueByKey!671 (toList!3417 lm!1616) hash!366)) (not (isEmpty!28315 (getValueByKey!671 (toList!3417 lm!1616) hash!366))))))

(declare-fun bs!753889 () Bool)

(assert (= bs!753889 d!1338474))

(assert (=> bs!753889 m!5094117))

(declare-fun m!5094637 () Bool)

(assert (=> bs!753889 m!5094637))

(assert (=> b!4417783 d!1338474))

(assert (=> b!4417783 d!1338418))

(declare-fun d!1338476 () Bool)

(declare-fun lt!1619320 () Bool)

(assert (=> d!1338476 (= lt!1619320 (select (content!7921 (keys!16875 (extractMap!776 (toList!3417 lm!1616)))) key!3717))))

(declare-fun e!2751039 () Bool)

(assert (=> d!1338476 (= lt!1619320 e!2751039)))

(declare-fun res!1825488 () Bool)

(assert (=> d!1338476 (=> (not res!1825488) (not e!2751039))))

(assert (=> d!1338476 (= res!1825488 ((_ is Cons!49497) (keys!16875 (extractMap!776 (toList!3417 lm!1616)))))))

(assert (=> d!1338476 (= (contains!11962 (keys!16875 (extractMap!776 (toList!3417 lm!1616))) key!3717) lt!1619320)))

(declare-fun b!4418167 () Bool)

(declare-fun e!2751038 () Bool)

(assert (=> b!4418167 (= e!2751039 e!2751038)))

(declare-fun res!1825489 () Bool)

(assert (=> b!4418167 (=> res!1825489 e!2751038)))

(assert (=> b!4418167 (= res!1825489 (= (h!55164 (keys!16875 (extractMap!776 (toList!3417 lm!1616)))) key!3717))))

(declare-fun b!4418168 () Bool)

(assert (=> b!4418168 (= e!2751038 (contains!11962 (t!356559 (keys!16875 (extractMap!776 (toList!3417 lm!1616)))) key!3717))))

(assert (= (and d!1338476 res!1825488) b!4418167))

(assert (= (and b!4418167 (not res!1825489)) b!4418168))

(assert (=> d!1338476 m!5094085))

(declare-fun m!5094639 () Bool)

(assert (=> d!1338476 m!5094639))

(declare-fun m!5094641 () Bool)

(assert (=> d!1338476 m!5094641))

(declare-fun m!5094643 () Bool)

(assert (=> b!4418168 m!5094643))

(assert (=> b!4417768 d!1338476))

(declare-fun bs!753890 () Bool)

(declare-fun b!4418170 () Bool)

(assert (= bs!753890 (and b!4418170 b!4418152)))

(declare-fun lambda!152457 () Int)

(assert (=> bs!753890 (= (= (toList!3418 (extractMap!776 (toList!3417 lm!1616))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152457 lambda!152450))))

(assert (=> b!4418170 true))

(declare-fun bs!753891 () Bool)

(declare-fun b!4418171 () Bool)

(assert (= bs!753891 (and b!4418171 b!4418153)))

(declare-fun lambda!152458 () Int)

(assert (=> bs!753891 (= lambda!152458 lambda!152451)))

(declare-fun d!1338478 () Bool)

(declare-fun e!2751040 () Bool)

(assert (=> d!1338478 e!2751040))

(declare-fun res!1825491 () Bool)

(assert (=> d!1338478 (=> (not res!1825491) (not e!2751040))))

(declare-fun lt!1619321 () List!49621)

(assert (=> d!1338478 (= res!1825491 (noDuplicate!650 lt!1619321))))

(assert (=> d!1338478 (= lt!1619321 (getKeysList!233 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))

(assert (=> d!1338478 (= (keys!16875 (extractMap!776 (toList!3417 lm!1616))) lt!1619321)))

(declare-fun b!4418169 () Bool)

(declare-fun res!1825492 () Bool)

(assert (=> b!4418169 (=> (not res!1825492) (not e!2751040))))

(assert (=> b!4418169 (= res!1825492 (= (length!156 lt!1619321) (length!157 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))))

(declare-fun res!1825490 () Bool)

(assert (=> b!4418170 (=> (not res!1825490) (not e!2751040))))

(assert (=> b!4418170 (= res!1825490 (forall!9505 lt!1619321 lambda!152457))))

(assert (=> b!4418171 (= e!2751040 (= (content!7921 lt!1619321) (content!7921 (map!10805 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) lambda!152458))))))

(assert (= (and d!1338478 res!1825491) b!4418169))

(assert (= (and b!4418169 res!1825492) b!4418170))

(assert (= (and b!4418170 res!1825490) b!4418171))

(declare-fun m!5094645 () Bool)

(assert (=> d!1338478 m!5094645))

(assert (=> d!1338478 m!5094089))

(declare-fun m!5094647 () Bool)

(assert (=> b!4418169 m!5094647))

(declare-fun m!5094649 () Bool)

(assert (=> b!4418169 m!5094649))

(declare-fun m!5094651 () Bool)

(assert (=> b!4418170 m!5094651))

(declare-fun m!5094653 () Bool)

(assert (=> b!4418171 m!5094653))

(declare-fun m!5094655 () Bool)

(assert (=> b!4418171 m!5094655))

(assert (=> b!4418171 m!5094655))

(declare-fun m!5094657 () Bool)

(assert (=> b!4418171 m!5094657))

(assert (=> b!4417768 d!1338478))

(declare-fun d!1338480 () Bool)

(declare-fun res!1825497 () Bool)

(declare-fun e!2751045 () Bool)

(assert (=> d!1338480 (=> res!1825497 e!2751045)))

(assert (=> d!1338480 (= res!1825497 (and ((_ is Cons!49494) (t!356556 newBucket!194)) (= (_1!27913 (h!55159 (t!356556 newBucket!194))) (_1!27913 (h!55159 newBucket!194)))))))

(assert (=> d!1338480 (= (containsKey!1056 (t!356556 newBucket!194) (_1!27913 (h!55159 newBucket!194))) e!2751045)))

(declare-fun b!4418176 () Bool)

(declare-fun e!2751046 () Bool)

(assert (=> b!4418176 (= e!2751045 e!2751046)))

(declare-fun res!1825498 () Bool)

(assert (=> b!4418176 (=> (not res!1825498) (not e!2751046))))

(assert (=> b!4418176 (= res!1825498 ((_ is Cons!49494) (t!356556 newBucket!194)))))

(declare-fun b!4418177 () Bool)

(assert (=> b!4418177 (= e!2751046 (containsKey!1056 (t!356556 (t!356556 newBucket!194)) (_1!27913 (h!55159 newBucket!194))))))

(assert (= (and d!1338480 (not res!1825497)) b!4418176))

(assert (= (and b!4418176 res!1825498) b!4418177))

(declare-fun m!5094659 () Bool)

(assert (=> b!4418177 m!5094659))

(assert (=> b!4417788 d!1338480))

(declare-fun d!1338482 () Bool)

(declare-fun res!1825499 () Bool)

(declare-fun e!2751047 () Bool)

(assert (=> d!1338482 (=> res!1825499 e!2751047)))

(assert (=> d!1338482 (= res!1825499 (not ((_ is Cons!49494) (t!356556 newBucket!194))))))

(assert (=> d!1338482 (= (noDuplicateKeys!715 (t!356556 newBucket!194)) e!2751047)))

(declare-fun b!4418178 () Bool)

(declare-fun e!2751048 () Bool)

(assert (=> b!4418178 (= e!2751047 e!2751048)))

(declare-fun res!1825500 () Bool)

(assert (=> b!4418178 (=> (not res!1825500) (not e!2751048))))

(assert (=> b!4418178 (= res!1825500 (not (containsKey!1056 (t!356556 (t!356556 newBucket!194)) (_1!27913 (h!55159 (t!356556 newBucket!194))))))))

(declare-fun b!4418179 () Bool)

(assert (=> b!4418179 (= e!2751048 (noDuplicateKeys!715 (t!356556 (t!356556 newBucket!194))))))

(assert (= (and d!1338482 (not res!1825499)) b!4418178))

(assert (= (and b!4418178 res!1825500) b!4418179))

(declare-fun m!5094661 () Bool)

(assert (=> b!4418178 m!5094661))

(declare-fun m!5094663 () Bool)

(assert (=> b!4418179 m!5094663))

(assert (=> b!4417789 d!1338482))

(assert (=> d!1338206 d!1338268))

(assert (=> d!1338206 d!1338270))

(declare-fun d!1338484 () Bool)

(assert (=> d!1338484 (contains!11958 (extractMap!776 (toList!3417 lm!1616)) key!3717)))

(assert (=> d!1338484 true))

(declare-fun _$12!1166 () Unit!81020)

(assert (=> d!1338484 (= (choose!27800 lm!1616 key!3717 hashF!1220) _$12!1166)))

(declare-fun bs!753892 () Bool)

(assert (= bs!753892 d!1338484))

(assert (=> bs!753892 m!5093897))

(assert (=> bs!753892 m!5093897))

(assert (=> bs!753892 m!5093899))

(assert (=> d!1338206 d!1338484))

(declare-fun d!1338486 () Bool)

(declare-fun res!1825501 () Bool)

(declare-fun e!2751049 () Bool)

(assert (=> d!1338486 (=> res!1825501 e!2751049)))

(assert (=> d!1338486 (= res!1825501 ((_ is Nil!49495) (toList!3417 lm!1616)))))

(assert (=> d!1338486 (= (forall!9501 (toList!3417 lm!1616) lambda!152327) e!2751049)))

(declare-fun b!4418180 () Bool)

(declare-fun e!2751050 () Bool)

(assert (=> b!4418180 (= e!2751049 e!2751050)))

(declare-fun res!1825502 () Bool)

(assert (=> b!4418180 (=> (not res!1825502) (not e!2751050))))

(assert (=> b!4418180 (= res!1825502 (dynLambda!20816 lambda!152327 (h!55160 (toList!3417 lm!1616))))))

(declare-fun b!4418181 () Bool)

(assert (=> b!4418181 (= e!2751050 (forall!9501 (t!356557 (toList!3417 lm!1616)) lambda!152327))))

(assert (= (and d!1338486 (not res!1825501)) b!4418180))

(assert (= (and b!4418180 res!1825502) b!4418181))

(declare-fun b_lambda!142331 () Bool)

(assert (=> (not b_lambda!142331) (not b!4418180)))

(declare-fun m!5094665 () Bool)

(assert (=> b!4418180 m!5094665))

(declare-fun m!5094667 () Bool)

(assert (=> b!4418181 m!5094667))

(assert (=> d!1338206 d!1338486))

(declare-fun d!1338488 () Bool)

(declare-fun res!1825507 () Bool)

(declare-fun e!2751055 () Bool)

(assert (=> d!1338488 (=> res!1825507 e!2751055)))

(assert (=> d!1338488 (= res!1825507 (and ((_ is Cons!49495) (toList!3417 lm!1616)) (= (_1!27914 (h!55160 (toList!3417 lm!1616))) hash!366)))))

(assert (=> d!1338488 (= (containsKey!1055 (toList!3417 lm!1616) hash!366) e!2751055)))

(declare-fun b!4418186 () Bool)

(declare-fun e!2751056 () Bool)

(assert (=> b!4418186 (= e!2751055 e!2751056)))

(declare-fun res!1825508 () Bool)

(assert (=> b!4418186 (=> (not res!1825508) (not e!2751056))))

(assert (=> b!4418186 (= res!1825508 (and (or (not ((_ is Cons!49495) (toList!3417 lm!1616))) (bvsle (_1!27914 (h!55160 (toList!3417 lm!1616))) hash!366)) ((_ is Cons!49495) (toList!3417 lm!1616)) (bvslt (_1!27914 (h!55160 (toList!3417 lm!1616))) hash!366)))))

(declare-fun b!4418187 () Bool)

(assert (=> b!4418187 (= e!2751056 (containsKey!1055 (t!356557 (toList!3417 lm!1616)) hash!366))))

(assert (= (and d!1338488 (not res!1825507)) b!4418186))

(assert (= (and b!4418186 res!1825508) b!4418187))

(declare-fun m!5094669 () Bool)

(assert (=> b!4418187 m!5094669))

(assert (=> d!1338276 d!1338488))

(assert (=> b!4417751 d!1338462))

(declare-fun d!1338490 () Bool)

(assert (=> d!1338490 (isDefined!7979 (getValueByKey!671 (toList!3417 lm!1616) hash!366))))

(declare-fun lt!1619324 () Unit!81020)

(declare-fun choose!27811 (List!49619 (_ BitVec 64)) Unit!81020)

(assert (=> d!1338490 (= lt!1619324 (choose!27811 (toList!3417 lm!1616) hash!366))))

(declare-fun e!2751059 () Bool)

(assert (=> d!1338490 e!2751059))

(declare-fun res!1825511 () Bool)

(assert (=> d!1338490 (=> (not res!1825511) (not e!2751059))))

(assert (=> d!1338490 (= res!1825511 (isStrictlySorted!212 (toList!3417 lm!1616)))))

(assert (=> d!1338490 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!582 (toList!3417 lm!1616) hash!366) lt!1619324)))

(declare-fun b!4418190 () Bool)

(assert (=> b!4418190 (= e!2751059 (containsKey!1055 (toList!3417 lm!1616) hash!366))))

(assert (= (and d!1338490 res!1825511) b!4418190))

(assert (=> d!1338490 m!5094117))

(assert (=> d!1338490 m!5094117))

(assert (=> d!1338490 m!5094119))

(declare-fun m!5094671 () Bool)

(assert (=> d!1338490 m!5094671))

(assert (=> d!1338490 m!5094015))

(assert (=> b!4418190 m!5094113))

(assert (=> b!4417781 d!1338490))

(assert (=> b!4417781 d!1338474))

(assert (=> b!4417781 d!1338418))

(assert (=> b!4417766 d!1338478))

(declare-fun d!1338492 () Bool)

(declare-fun res!1825516 () Bool)

(declare-fun e!2751064 () Bool)

(assert (=> d!1338492 (=> res!1825516 e!2751064)))

(assert (=> d!1338492 (= res!1825516 ((_ is Nil!49494) newBucket!194))))

(assert (=> d!1338492 (= (forall!9503 newBucket!194 lambda!152347) e!2751064)))

(declare-fun b!4418195 () Bool)

(declare-fun e!2751065 () Bool)

(assert (=> b!4418195 (= e!2751064 e!2751065)))

(declare-fun res!1825517 () Bool)

(assert (=> b!4418195 (=> (not res!1825517) (not e!2751065))))

(declare-fun dynLambda!20818 (Int tuple2!49238) Bool)

(assert (=> b!4418195 (= res!1825517 (dynLambda!20818 lambda!152347 (h!55159 newBucket!194)))))

(declare-fun b!4418196 () Bool)

(assert (=> b!4418196 (= e!2751065 (forall!9503 (t!356556 newBucket!194) lambda!152347))))

(assert (= (and d!1338492 (not res!1825516)) b!4418195))

(assert (= (and b!4418195 res!1825517) b!4418196))

(declare-fun b_lambda!142333 () Bool)

(assert (=> (not b_lambda!142333) (not b!4418195)))

(declare-fun m!5094673 () Bool)

(assert (=> b!4418195 m!5094673))

(declare-fun m!5094675 () Bool)

(assert (=> b!4418196 m!5094675))

(assert (=> d!1338272 d!1338492))

(declare-fun d!1338494 () Bool)

(declare-fun lt!1619325 () Bool)

(assert (=> d!1338494 (= lt!1619325 (select (content!7921 e!2750775) key!3717))))

(declare-fun e!2751067 () Bool)

(assert (=> d!1338494 (= lt!1619325 e!2751067)))

(declare-fun res!1825518 () Bool)

(assert (=> d!1338494 (=> (not res!1825518) (not e!2751067))))

(assert (=> d!1338494 (= res!1825518 ((_ is Cons!49497) e!2750775))))

(assert (=> d!1338494 (= (contains!11962 e!2750775 key!3717) lt!1619325)))

(declare-fun b!4418197 () Bool)

(declare-fun e!2751066 () Bool)

(assert (=> b!4418197 (= e!2751067 e!2751066)))

(declare-fun res!1825519 () Bool)

(assert (=> b!4418197 (=> res!1825519 e!2751066)))

(assert (=> b!4418197 (= res!1825519 (= (h!55164 e!2750775) key!3717))))

(declare-fun b!4418198 () Bool)

(assert (=> b!4418198 (= e!2751066 (contains!11962 (t!356559 e!2750775) key!3717))))

(assert (= (and d!1338494 res!1825518) b!4418197))

(assert (= (and b!4418197 (not res!1825519)) b!4418198))

(declare-fun m!5094677 () Bool)

(assert (=> d!1338494 m!5094677))

(declare-fun m!5094679 () Bool)

(assert (=> d!1338494 m!5094679))

(declare-fun m!5094681 () Bool)

(assert (=> b!4418198 m!5094681))

(assert (=> bm!307380 d!1338494))

(declare-fun d!1338496 () Bool)

(declare-fun res!1825524 () Bool)

(declare-fun e!2751072 () Bool)

(assert (=> d!1338496 (=> res!1825524 e!2751072)))

(assert (=> d!1338496 (= res!1825524 (or ((_ is Nil!49495) (toList!3417 lm!1616)) ((_ is Nil!49495) (t!356557 (toList!3417 lm!1616)))))))

(assert (=> d!1338496 (= (isStrictlySorted!212 (toList!3417 lm!1616)) e!2751072)))

(declare-fun b!4418203 () Bool)

(declare-fun e!2751073 () Bool)

(assert (=> b!4418203 (= e!2751072 e!2751073)))

(declare-fun res!1825525 () Bool)

(assert (=> b!4418203 (=> (not res!1825525) (not e!2751073))))

(assert (=> b!4418203 (= res!1825525 (bvslt (_1!27914 (h!55160 (toList!3417 lm!1616))) (_1!27914 (h!55160 (t!356557 (toList!3417 lm!1616))))))))

(declare-fun b!4418204 () Bool)

(assert (=> b!4418204 (= e!2751073 (isStrictlySorted!212 (t!356557 (toList!3417 lm!1616))))))

(assert (= (and d!1338496 (not res!1825524)) b!4418203))

(assert (= (and b!4418203 res!1825525) b!4418204))

(declare-fun m!5094683 () Bool)

(assert (=> b!4418204 m!5094683))

(assert (=> d!1338246 d!1338496))

(declare-fun d!1338498 () Bool)

(assert (=> d!1338498 (= (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717)) (not (isEmpty!28314 (getValueByKey!672 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))))

(declare-fun bs!753893 () Bool)

(assert (= bs!753893 d!1338498))

(assert (=> bs!753893 m!5094063))

(declare-fun m!5094685 () Bool)

(assert (=> bs!753893 m!5094685))

(assert (=> b!4417749 d!1338498))

(declare-fun b!4418205 () Bool)

(declare-fun e!2751074 () Option!10686)

(assert (=> b!4418205 (= e!2751074 (Some!10685 (_2!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))))

(declare-fun d!1338500 () Bool)

(declare-fun c!752044 () Bool)

(assert (=> d!1338500 (= c!752044 (and ((_ is Cons!49494) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= (_1!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) key!3717)))))

(assert (=> d!1338500 (= (getValueByKey!672 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717) e!2751074)))

(declare-fun b!4418208 () Bool)

(declare-fun e!2751075 () Option!10686)

(assert (=> b!4418208 (= e!2751075 None!10685)))

(declare-fun b!4418206 () Bool)

(assert (=> b!4418206 (= e!2751074 e!2751075)))

(declare-fun c!752045 () Bool)

(assert (=> b!4418206 (= c!752045 (and ((_ is Cons!49494) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (not (= (_1!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) key!3717))))))

(declare-fun b!4418207 () Bool)

(assert (=> b!4418207 (= e!2751075 (getValueByKey!672 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) key!3717))))

(assert (= (and d!1338500 c!752044) b!4418205))

(assert (= (and d!1338500 (not c!752044)) b!4418206))

(assert (= (and b!4418206 c!752045) b!4418207))

(assert (= (and b!4418206 (not c!752045)) b!4418208))

(declare-fun m!5094687 () Bool)

(assert (=> b!4418207 m!5094687))

(assert (=> b!4417749 d!1338500))

(assert (=> b!4417746 d!1338444))

(declare-fun d!1338502 () Bool)

(assert (=> d!1338502 (containsKey!1054 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717)))

(declare-fun lt!1619328 () Unit!81020)

(declare-fun choose!27812 (List!49618 K!10860) Unit!81020)

(assert (=> d!1338502 (= lt!1619328 (choose!27812 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(assert (=> d!1338502 (invariantList!785 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))

(assert (=> d!1338502 (= (lemmaInGetKeysListThenContainsKey!231 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717) lt!1619328)))

(declare-fun bs!753894 () Bool)

(assert (= bs!753894 d!1338502))

(assert (=> bs!753894 m!5094053))

(declare-fun m!5094689 () Bool)

(assert (=> bs!753894 m!5094689))

(declare-fun m!5094691 () Bool)

(assert (=> bs!753894 m!5094691))

(assert (=> b!4417746 d!1338502))

(declare-fun d!1338504 () Bool)

(assert (=> d!1338504 (isDefined!7978 (getValueByKey!672 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(declare-fun lt!1619329 () Unit!81020)

(assert (=> d!1338504 (= lt!1619329 (choose!27809 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(assert (=> d!1338504 (invariantList!785 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))

(assert (=> d!1338504 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!581 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717) lt!1619329)))

(declare-fun bs!753895 () Bool)

(assert (= bs!753895 d!1338504))

(assert (=> bs!753895 m!5094063))

(assert (=> bs!753895 m!5094063))

(assert (=> bs!753895 m!5094065))

(declare-fun m!5094693 () Bool)

(assert (=> bs!753895 m!5094693))

(assert (=> bs!753895 m!5094691))

(assert (=> b!4417745 d!1338504))

(assert (=> b!4417745 d!1338498))

(assert (=> b!4417745 d!1338500))

(declare-fun d!1338506 () Bool)

(assert (=> d!1338506 (contains!11962 (getKeysList!233 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) key!3717)))

(declare-fun lt!1619330 () Unit!81020)

(assert (=> d!1338506 (= lt!1619330 (choose!27810 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717))))

(assert (=> d!1338506 (invariantList!785 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))

(assert (=> d!1338506 (= (lemmaInListThenGetKeysListContains!230 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) key!3717) lt!1619330)))

(declare-fun bs!753896 () Bool)

(assert (= bs!753896 d!1338506))

(assert (=> bs!753896 m!5094061))

(assert (=> bs!753896 m!5094061))

(declare-fun m!5094695 () Bool)

(assert (=> bs!753896 m!5094695))

(declare-fun m!5094697 () Bool)

(assert (=> bs!753896 m!5094697))

(assert (=> bs!753896 m!5094691))

(assert (=> b!4417745 d!1338506))

(assert (=> b!4417764 d!1338438))

(assert (=> b!4417764 d!1338440))

(declare-fun bs!753897 () Bool)

(declare-fun b!4418235 () Bool)

(assert (= bs!753897 (and b!4418235 b!4418152)))

(declare-fun lambda!152467 () Int)

(assert (=> bs!753897 (= (= (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152467 lambda!152450))))

(declare-fun bs!753898 () Bool)

(assert (= bs!753898 (and b!4418235 b!4418170)))

(assert (=> bs!753898 (= (= (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (= lambda!152467 lambda!152457))))

(assert (=> b!4418235 true))

(declare-fun bs!753899 () Bool)

(declare-fun b!4418230 () Bool)

(assert (= bs!753899 (and b!4418230 b!4418152)))

(declare-fun lambda!152468 () Int)

(assert (=> bs!753899 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152468 lambda!152450))))

(declare-fun bs!753900 () Bool)

(assert (= bs!753900 (and b!4418230 b!4418170)))

(assert (=> bs!753900 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (= lambda!152468 lambda!152457))))

(declare-fun bs!753901 () Bool)

(assert (= bs!753901 (and b!4418230 b!4418235)))

(assert (=> bs!753901 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (= lambda!152468 lambda!152467))))

(assert (=> b!4418230 true))

(declare-fun bs!753902 () Bool)

(declare-fun b!4418233 () Bool)

(assert (= bs!753902 (and b!4418233 b!4418152)))

(declare-fun lambda!152469 () Int)

(assert (=> bs!753902 (= lambda!152469 lambda!152450)))

(declare-fun bs!753903 () Bool)

(assert (= bs!753903 (and b!4418233 b!4418170)))

(assert (=> bs!753903 (= (= (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (= lambda!152469 lambda!152457))))

(declare-fun bs!753904 () Bool)

(assert (= bs!753904 (and b!4418233 b!4418235)))

(assert (=> bs!753904 (= (= (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (= lambda!152469 lambda!152467))))

(declare-fun bs!753905 () Bool)

(assert (= bs!753905 (and b!4418233 b!4418230)))

(assert (=> bs!753905 (= (= (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))) (= lambda!152469 lambda!152468))))

(assert (=> b!4418233 true))

(declare-fun bs!753906 () Bool)

(declare-fun b!4418229 () Bool)

(assert (= bs!753906 (and b!4418229 b!4418153)))

(declare-fun lambda!152470 () Int)

(assert (=> bs!753906 (= lambda!152470 lambda!152451)))

(declare-fun bs!753907 () Bool)

(assert (= bs!753907 (and b!4418229 b!4418171)))

(assert (=> bs!753907 (= lambda!152470 lambda!152458)))

(declare-fun b!4418227 () Bool)

(assert (=> b!4418227 false))

(declare-fun e!2751084 () Unit!81020)

(declare-fun Unit!81088 () Unit!81020)

(assert (=> b!4418227 (= e!2751084 Unit!81088)))

(declare-fun b!4418228 () Bool)

(declare-fun e!2751086 () List!49621)

(assert (=> b!4418228 (= e!2751086 Nil!49497)))

(declare-fun e!2751085 () Bool)

(declare-fun lt!1619346 () List!49621)

(assert (=> b!4418229 (= e!2751085 (= (content!7921 lt!1619346) (content!7921 (map!10805 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))) lambda!152470))))))

(assert (=> b!4418230 (= e!2751086 (Cons!49497 (_1!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))))

(declare-fun c!752054 () Bool)

(assert (=> b!4418230 (= c!752054 (containsKey!1054 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (_1!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))))

(declare-fun lt!1619349 () Unit!81020)

(assert (=> b!4418230 (= lt!1619349 e!2751084)))

(declare-fun c!752053 () Bool)

(assert (=> b!4418230 (= c!752053 (contains!11962 (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (_1!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))))

(declare-fun lt!1619351 () Unit!81020)

(declare-fun e!2751087 () Unit!81020)

(assert (=> b!4418230 (= lt!1619351 e!2751087)))

(declare-fun lt!1619348 () List!49621)

(assert (=> b!4418230 (= lt!1619348 (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))))

(declare-fun lt!1619350 () Unit!81020)

(declare-fun lemmaForallContainsAddHeadPreserves!72 (List!49618 List!49621 tuple2!49238) Unit!81020)

(assert (=> b!4418230 (= lt!1619350 (lemmaForallContainsAddHeadPreserves!72 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) lt!1619348 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))))

(assert (=> b!4418230 (forall!9505 lt!1619348 lambda!152468)))

(declare-fun lt!1619345 () Unit!81020)

(assert (=> b!4418230 (= lt!1619345 lt!1619350)))

(declare-fun b!4418231 () Bool)

(declare-fun Unit!81089 () Unit!81020)

(assert (=> b!4418231 (= e!2751084 Unit!81089)))

(declare-fun b!4418232 () Bool)

(declare-fun Unit!81090 () Unit!81020)

(assert (=> b!4418232 (= e!2751087 Unit!81090)))

(declare-fun res!1825532 () Bool)

(assert (=> b!4418233 (=> (not res!1825532) (not e!2751085))))

(assert (=> b!4418233 (= res!1825532 (forall!9505 lt!1619346 lambda!152469))))

(declare-fun b!4418234 () Bool)

(declare-fun res!1825534 () Bool)

(assert (=> b!4418234 (=> (not res!1825534) (not e!2751085))))

(assert (=> b!4418234 (= res!1825534 (= (length!156 lt!1619346) (length!157 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))))

(declare-fun d!1338508 () Bool)

(assert (=> d!1338508 e!2751085))

(declare-fun res!1825533 () Bool)

(assert (=> d!1338508 (=> (not res!1825533) (not e!2751085))))

(assert (=> d!1338508 (= res!1825533 (noDuplicate!650 lt!1619346))))

(assert (=> d!1338508 (= lt!1619346 e!2751086)))

(declare-fun c!752052 () Bool)

(assert (=> d!1338508 (= c!752052 ((_ is Cons!49494) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))

(assert (=> d!1338508 (invariantList!785 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))))

(assert (=> d!1338508 (= (getKeysList!233 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) lt!1619346)))

(assert (=> b!4418235 false))

(declare-fun lt!1619347 () Unit!81020)

(declare-fun forallContained!2073 (List!49621 Int K!10860) Unit!81020)

(assert (=> b!4418235 (= lt!1619347 (forallContained!2073 (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) lambda!152467 (_1!27913 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))))))

(declare-fun Unit!81091 () Unit!81020)

(assert (=> b!4418235 (= e!2751087 Unit!81091)))

(assert (= (and d!1338508 c!752052) b!4418230))

(assert (= (and d!1338508 (not c!752052)) b!4418228))

(assert (= (and b!4418230 c!752054) b!4418227))

(assert (= (and b!4418230 (not c!752054)) b!4418231))

(assert (= (and b!4418230 c!752053) b!4418235))

(assert (= (and b!4418230 (not c!752053)) b!4418232))

(assert (= (and d!1338508 res!1825533) b!4418234))

(assert (= (and b!4418234 res!1825534) b!4418233))

(assert (= (and b!4418233 res!1825532) b!4418229))

(declare-fun m!5094699 () Bool)

(assert (=> b!4418229 m!5094699))

(declare-fun m!5094701 () Bool)

(assert (=> b!4418229 m!5094701))

(assert (=> b!4418229 m!5094701))

(declare-fun m!5094703 () Bool)

(assert (=> b!4418229 m!5094703))

(declare-fun m!5094705 () Bool)

(assert (=> b!4418234 m!5094705))

(assert (=> b!4418234 m!5094577))

(declare-fun m!5094707 () Bool)

(assert (=> d!1338508 m!5094707))

(assert (=> d!1338508 m!5094691))

(declare-fun m!5094709 () Bool)

(assert (=> b!4418235 m!5094709))

(assert (=> b!4418235 m!5094709))

(declare-fun m!5094711 () Bool)

(assert (=> b!4418235 m!5094711))

(declare-fun m!5094713 () Bool)

(assert (=> b!4418230 m!5094713))

(declare-fun m!5094715 () Bool)

(assert (=> b!4418230 m!5094715))

(assert (=> b!4418230 m!5094709))

(declare-fun m!5094717 () Bool)

(assert (=> b!4418230 m!5094717))

(assert (=> b!4418230 m!5094709))

(declare-fun m!5094719 () Bool)

(assert (=> b!4418230 m!5094719))

(declare-fun m!5094721 () Bool)

(assert (=> b!4418233 m!5094721))

(assert (=> b!4417747 d!1338508))

(declare-fun d!1338510 () Bool)

(declare-fun res!1825535 () Bool)

(declare-fun e!2751088 () Bool)

(assert (=> d!1338510 (=> res!1825535 e!2751088)))

(assert (=> d!1338510 (= res!1825535 (not ((_ is Cons!49494) (_2!27914 (h!55160 (toList!3417 lt!1618925))))))))

(assert (=> d!1338510 (= (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 lt!1618925)))) e!2751088)))

(declare-fun b!4418238 () Bool)

(declare-fun e!2751089 () Bool)

(assert (=> b!4418238 (= e!2751088 e!2751089)))

(declare-fun res!1825536 () Bool)

(assert (=> b!4418238 (=> (not res!1825536) (not e!2751089))))

(assert (=> b!4418238 (= res!1825536 (not (containsKey!1056 (t!356556 (_2!27914 (h!55160 (toList!3417 lt!1618925)))) (_1!27913 (h!55159 (_2!27914 (h!55160 (toList!3417 lt!1618925))))))))))

(declare-fun b!4418239 () Bool)

(assert (=> b!4418239 (= e!2751089 (noDuplicateKeys!715 (t!356556 (_2!27914 (h!55160 (toList!3417 lt!1618925))))))))

(assert (= (and d!1338510 (not res!1825535)) b!4418238))

(assert (= (and b!4418238 res!1825536) b!4418239))

(declare-fun m!5094723 () Bool)

(assert (=> b!4418238 m!5094723))

(declare-fun m!5094725 () Bool)

(assert (=> b!4418239 m!5094725))

(assert (=> bs!753762 d!1338510))

(assert (=> b!4417765 d!1338476))

(assert (=> b!4417765 d!1338478))

(declare-fun d!1338512 () Bool)

(declare-fun lt!1619352 () Bool)

(assert (=> d!1338512 (= lt!1619352 (select (content!7921 e!2750784) key!3717))))

(declare-fun e!2751091 () Bool)

(assert (=> d!1338512 (= lt!1619352 e!2751091)))

(declare-fun res!1825537 () Bool)

(assert (=> d!1338512 (=> (not res!1825537) (not e!2751091))))

(assert (=> d!1338512 (= res!1825537 ((_ is Cons!49497) e!2750784))))

(assert (=> d!1338512 (= (contains!11962 e!2750784 key!3717) lt!1619352)))

(declare-fun b!4418240 () Bool)

(declare-fun e!2751090 () Bool)

(assert (=> b!4418240 (= e!2751091 e!2751090)))

(declare-fun res!1825538 () Bool)

(assert (=> b!4418240 (=> res!1825538 e!2751090)))

(assert (=> b!4418240 (= res!1825538 (= (h!55164 e!2750784) key!3717))))

(declare-fun b!4418241 () Bool)

(assert (=> b!4418241 (= e!2751090 (contains!11962 (t!356559 e!2750784) key!3717))))

(assert (= (and d!1338512 res!1825537) b!4418240))

(assert (= (and b!4418240 (not res!1825538)) b!4418241))

(declare-fun m!5094727 () Bool)

(assert (=> d!1338512 m!5094727))

(declare-fun m!5094729 () Bool)

(assert (=> d!1338512 m!5094729))

(declare-fun m!5094731 () Bool)

(assert (=> b!4418241 m!5094731))

(assert (=> bm!307381 d!1338512))

(declare-fun e!2751093 () Option!10685)

(declare-fun b!4418244 () Bool)

(assert (=> b!4418244 (= e!2751093 (getValueByKey!671 (t!356557 (toList!3417 lt!1618969)) (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))

(declare-fun b!4418242 () Bool)

(declare-fun e!2751092 () Option!10685)

(assert (=> b!4418242 (= e!2751092 (Some!10684 (_2!27914 (h!55160 (toList!3417 lt!1618969)))))))

(declare-fun b!4418243 () Bool)

(assert (=> b!4418243 (= e!2751092 e!2751093)))

(declare-fun c!752056 () Bool)

(assert (=> b!4418243 (= c!752056 (and ((_ is Cons!49495) (toList!3417 lt!1618969)) (not (= (_1!27914 (h!55160 (toList!3417 lt!1618969))) (_1!27914 (tuple2!49241 hash!366 newBucket!194))))))))

(declare-fun b!4418245 () Bool)

(assert (=> b!4418245 (= e!2751093 None!10684)))

(declare-fun c!752055 () Bool)

(declare-fun d!1338514 () Bool)

(assert (=> d!1338514 (= c!752055 (and ((_ is Cons!49495) (toList!3417 lt!1618969)) (= (_1!27914 (h!55160 (toList!3417 lt!1618969))) (_1!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (=> d!1338514 (= (getValueByKey!671 (toList!3417 lt!1618969) (_1!27914 (tuple2!49241 hash!366 newBucket!194))) e!2751092)))

(assert (= (and d!1338514 c!752055) b!4418242))

(assert (= (and d!1338514 (not c!752055)) b!4418243))

(assert (= (and b!4418243 c!752056) b!4418244))

(assert (= (and b!4418243 (not c!752056)) b!4418245))

(declare-fun m!5094733 () Bool)

(assert (=> b!4418244 m!5094733))

(assert (=> b!4417665 d!1338514))

(declare-fun d!1338516 () Bool)

(declare-fun choose!27813 (Hashable!5109 K!10860) (_ BitVec 64))

(assert (=> d!1338516 (= (hash!2035 hashF!1220 key!3717) (choose!27813 hashF!1220 key!3717))))

(declare-fun bs!753908 () Bool)

(assert (= bs!753908 d!1338516))

(declare-fun m!5094735 () Bool)

(assert (=> bs!753908 m!5094735))

(assert (=> d!1338274 d!1338516))

(declare-fun bs!753909 () Bool)

(declare-fun b!4418254 () Bool)

(assert (= bs!753909 (and b!4418254 b!4418152)))

(declare-fun lambda!152471 () Int)

(assert (=> bs!753909 (= (= (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152471 lambda!152450))))

(declare-fun bs!753910 () Bool)

(assert (= bs!753910 (and b!4418254 b!4418235)))

(assert (=> bs!753910 (= (= (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (= lambda!152471 lambda!152467))))

(declare-fun bs!753911 () Bool)

(assert (= bs!753911 (and b!4418254 b!4418230)))

(assert (=> bs!753911 (= (= (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))) (= lambda!152471 lambda!152468))))

(declare-fun bs!753912 () Bool)

(assert (= bs!753912 (and b!4418254 b!4418233)))

(assert (=> bs!753912 (= (= (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152471 lambda!152469))))

(declare-fun bs!753913 () Bool)

(assert (= bs!753913 (and b!4418254 b!4418170)))

(assert (=> bs!753913 (= (= (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (= lambda!152471 lambda!152457))))

(assert (=> b!4418254 true))

(declare-fun bs!753914 () Bool)

(declare-fun b!4418249 () Bool)

(assert (= bs!753914 (and b!4418249 b!4418254)))

(declare-fun lambda!152472 () Int)

(assert (=> bs!753914 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (= lambda!152472 lambda!152471))))

(declare-fun bs!753915 () Bool)

(assert (= bs!753915 (and b!4418249 b!4418152)))

(assert (=> bs!753915 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152472 lambda!152450))))

(declare-fun bs!753916 () Bool)

(assert (= bs!753916 (and b!4418249 b!4418235)))

(assert (=> bs!753916 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (= lambda!152472 lambda!152467))))

(declare-fun bs!753917 () Bool)

(assert (= bs!753917 (and b!4418249 b!4418230)))

(assert (=> bs!753917 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))) (= lambda!152472 lambda!152468))))

(declare-fun bs!753918 () Bool)

(assert (= bs!753918 (and b!4418249 b!4418233)))

(assert (=> bs!753918 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152472 lambda!152469))))

(declare-fun bs!753919 () Bool)

(assert (= bs!753919 (and b!4418249 b!4418170)))

(assert (=> bs!753919 (= (= (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (= lambda!152472 lambda!152457))))

(assert (=> b!4418249 true))

(declare-fun bs!753920 () Bool)

(declare-fun b!4418252 () Bool)

(assert (= bs!753920 (and b!4418252 b!4418254)))

(declare-fun lambda!152473 () Int)

(assert (=> bs!753920 (= (= (toList!3418 (extractMap!776 (toList!3417 lm!1616))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (= lambda!152473 lambda!152471))))

(declare-fun bs!753921 () Bool)

(assert (= bs!753921 (and b!4418252 b!4418152)))

(assert (=> bs!753921 (= (= (toList!3418 (extractMap!776 (toList!3417 lm!1616))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152473 lambda!152450))))

(declare-fun bs!753922 () Bool)

(assert (= bs!753922 (and b!4418252 b!4418249)))

(assert (=> bs!753922 (= (= (toList!3418 (extractMap!776 (toList!3417 lm!1616))) (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))) (= lambda!152473 lambda!152472))))

(declare-fun bs!753923 () Bool)

(assert (= bs!753923 (and b!4418252 b!4418235)))

(assert (=> bs!753923 (= (= (toList!3418 (extractMap!776 (toList!3417 lm!1616))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616)))))) (= lambda!152473 lambda!152467))))

(declare-fun bs!753924 () Bool)

(assert (= bs!753924 (and b!4418252 b!4418230)))

(assert (=> bs!753924 (= (= (toList!3418 (extractMap!776 (toList!3417 lm!1616))) (Cons!49494 (h!55159 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (t!356556 (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))))) (= lambda!152473 lambda!152468))))

(declare-fun bs!753925 () Bool)

(assert (= bs!753925 (and b!4418252 b!4418233)))

(assert (=> bs!753925 (= (= (toList!3418 (extractMap!776 (toList!3417 lm!1616))) (toList!3418 (extractMap!776 (tail!7203 (toList!3417 lm!1616))))) (= lambda!152473 lambda!152469))))

(declare-fun bs!753926 () Bool)

(assert (= bs!753926 (and b!4418252 b!4418170)))

(assert (=> bs!753926 (= lambda!152473 lambda!152457)))

(assert (=> b!4418252 true))

(declare-fun bs!753927 () Bool)

(declare-fun b!4418248 () Bool)

(assert (= bs!753927 (and b!4418248 b!4418153)))

(declare-fun lambda!152474 () Int)

(assert (=> bs!753927 (= lambda!152474 lambda!152451)))

(declare-fun bs!753928 () Bool)

(assert (= bs!753928 (and b!4418248 b!4418171)))

(assert (=> bs!753928 (= lambda!152474 lambda!152458)))

(declare-fun bs!753929 () Bool)

(assert (= bs!753929 (and b!4418248 b!4418229)))

(assert (=> bs!753929 (= lambda!152474 lambda!152470)))

(declare-fun b!4418246 () Bool)

(assert (=> b!4418246 false))

(declare-fun e!2751094 () Unit!81020)

(declare-fun Unit!81092 () Unit!81020)

(assert (=> b!4418246 (= e!2751094 Unit!81092)))

(declare-fun b!4418247 () Bool)

(declare-fun e!2751096 () List!49621)

(assert (=> b!4418247 (= e!2751096 Nil!49497)))

(declare-fun e!2751095 () Bool)

(declare-fun lt!1619354 () List!49621)

(assert (=> b!4418248 (= e!2751095 (= (content!7921 lt!1619354) (content!7921 (map!10805 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) lambda!152474))))))

(assert (=> b!4418249 (= e!2751096 (Cons!49497 (_1!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))))

(declare-fun c!752059 () Bool)

(assert (=> b!4418249 (= c!752059 (containsKey!1054 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) (_1!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))))

(declare-fun lt!1619357 () Unit!81020)

(assert (=> b!4418249 (= lt!1619357 e!2751094)))

(declare-fun c!752058 () Bool)

(assert (=> b!4418249 (= c!752058 (contains!11962 (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) (_1!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))))

(declare-fun lt!1619359 () Unit!81020)

(declare-fun e!2751097 () Unit!81020)

(assert (=> b!4418249 (= lt!1619359 e!2751097)))

(declare-fun lt!1619356 () List!49621)

(assert (=> b!4418249 (= lt!1619356 (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))))

(declare-fun lt!1619358 () Unit!81020)

(assert (=> b!4418249 (= lt!1619358 (lemmaForallContainsAddHeadPreserves!72 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) lt!1619356 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))))

(assert (=> b!4418249 (forall!9505 lt!1619356 lambda!152472)))

(declare-fun lt!1619353 () Unit!81020)

(assert (=> b!4418249 (= lt!1619353 lt!1619358)))

(declare-fun b!4418250 () Bool)

(declare-fun Unit!81093 () Unit!81020)

(assert (=> b!4418250 (= e!2751094 Unit!81093)))

(declare-fun b!4418251 () Bool)

(declare-fun Unit!81094 () Unit!81020)

(assert (=> b!4418251 (= e!2751097 Unit!81094)))

(declare-fun res!1825539 () Bool)

(assert (=> b!4418252 (=> (not res!1825539) (not e!2751095))))

(assert (=> b!4418252 (= res!1825539 (forall!9505 lt!1619354 lambda!152473))))

(declare-fun b!4418253 () Bool)

(declare-fun res!1825541 () Bool)

(assert (=> b!4418253 (=> (not res!1825541) (not e!2751095))))

(assert (=> b!4418253 (= res!1825541 (= (length!156 lt!1619354) (length!157 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))))

(declare-fun d!1338518 () Bool)

(assert (=> d!1338518 e!2751095))

(declare-fun res!1825540 () Bool)

(assert (=> d!1338518 (=> (not res!1825540) (not e!2751095))))

(assert (=> d!1338518 (= res!1825540 (noDuplicate!650 lt!1619354))))

(assert (=> d!1338518 (= lt!1619354 e!2751096)))

(declare-fun c!752057 () Bool)

(assert (=> d!1338518 (= c!752057 ((_ is Cons!49494) (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))

(assert (=> d!1338518 (invariantList!785 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))

(assert (=> d!1338518 (= (getKeysList!233 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))) lt!1619354)))

(assert (=> b!4418254 false))

(declare-fun lt!1619355 () Unit!81020)

(assert (=> b!4418254 (= lt!1619355 (forallContained!2073 (getKeysList!233 (t!356556 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))) lambda!152471 (_1!27913 (h!55159 (toList!3418 (extractMap!776 (toList!3417 lm!1616)))))))))

(declare-fun Unit!81095 () Unit!81020)

(assert (=> b!4418254 (= e!2751097 Unit!81095)))

(assert (= (and d!1338518 c!752057) b!4418249))

(assert (= (and d!1338518 (not c!752057)) b!4418247))

(assert (= (and b!4418249 c!752059) b!4418246))

(assert (= (and b!4418249 (not c!752059)) b!4418250))

(assert (= (and b!4418249 c!752058) b!4418254))

(assert (= (and b!4418249 (not c!752058)) b!4418251))

(assert (= (and d!1338518 res!1825540) b!4418253))

(assert (= (and b!4418253 res!1825541) b!4418252))

(assert (= (and b!4418252 res!1825539) b!4418248))

(declare-fun m!5094737 () Bool)

(assert (=> b!4418248 m!5094737))

(declare-fun m!5094739 () Bool)

(assert (=> b!4418248 m!5094739))

(assert (=> b!4418248 m!5094739))

(declare-fun m!5094741 () Bool)

(assert (=> b!4418248 m!5094741))

(declare-fun m!5094743 () Bool)

(assert (=> b!4418253 m!5094743))

(assert (=> b!4418253 m!5094649))

(declare-fun m!5094745 () Bool)

(assert (=> d!1338518 m!5094745))

(assert (=> d!1338518 m!5094537))

(declare-fun m!5094747 () Bool)

(assert (=> b!4418254 m!5094747))

(assert (=> b!4418254 m!5094747))

(declare-fun m!5094749 () Bool)

(assert (=> b!4418254 m!5094749))

(declare-fun m!5094751 () Bool)

(assert (=> b!4418249 m!5094751))

(declare-fun m!5094753 () Bool)

(assert (=> b!4418249 m!5094753))

(assert (=> b!4418249 m!5094747))

(declare-fun m!5094755 () Bool)

(assert (=> b!4418249 m!5094755))

(assert (=> b!4418249 m!5094747))

(declare-fun m!5094757 () Bool)

(assert (=> b!4418249 m!5094757))

(declare-fun m!5094759 () Bool)

(assert (=> b!4418252 m!5094759))

(assert (=> b!4417762 d!1338518))

(declare-fun d!1338520 () Bool)

(declare-fun res!1825542 () Bool)

(declare-fun e!2751098 () Bool)

(assert (=> d!1338520 (=> res!1825542 e!2751098)))

(assert (=> d!1338520 (= res!1825542 (not ((_ is Cons!49494) (_2!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (=> d!1338520 (= (noDuplicateKeys!715 (_2!27914 (tuple2!49241 hash!366 newBucket!194))) e!2751098)))

(declare-fun b!4418255 () Bool)

(declare-fun e!2751099 () Bool)

(assert (=> b!4418255 (= e!2751098 e!2751099)))

(declare-fun res!1825543 () Bool)

(assert (=> b!4418255 (=> (not res!1825543) (not e!2751099))))

(assert (=> b!4418255 (= res!1825543 (not (containsKey!1056 (t!356556 (_2!27914 (tuple2!49241 hash!366 newBucket!194))) (_1!27913 (h!55159 (_2!27914 (tuple2!49241 hash!366 newBucket!194)))))))))

(declare-fun b!4418256 () Bool)

(assert (=> b!4418256 (= e!2751099 (noDuplicateKeys!715 (t!356556 (_2!27914 (tuple2!49241 hash!366 newBucket!194)))))))

(assert (= (and d!1338520 (not res!1825542)) b!4418255))

(assert (= (and b!4418255 res!1825543) b!4418256))

(declare-fun m!5094761 () Bool)

(assert (=> b!4418255 m!5094761))

(declare-fun m!5094763 () Bool)

(assert (=> b!4418256 m!5094763))

(assert (=> bs!753761 d!1338520))

(assert (=> b!4417761 d!1338354))

(declare-fun d!1338522 () Bool)

(assert (=> d!1338522 (containsKey!1054 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717)))

(declare-fun lt!1619360 () Unit!81020)

(assert (=> d!1338522 (= lt!1619360 (choose!27812 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717))))

(assert (=> d!1338522 (invariantList!785 (toList!3418 (extractMap!776 (toList!3417 lm!1616))))))

(assert (=> d!1338522 (= (lemmaInGetKeysListThenContainsKey!231 (toList!3418 (extractMap!776 (toList!3417 lm!1616))) key!3717) lt!1619360)))

(declare-fun bs!753930 () Bool)

(assert (= bs!753930 d!1338522))

(assert (=> bs!753930 m!5094081))

(declare-fun m!5094765 () Bool)

(assert (=> bs!753930 m!5094765))

(assert (=> bs!753930 m!5094537))

(assert (=> b!4417761 d!1338522))

(declare-fun d!1338524 () Bool)

(declare-fun lt!1619363 () Bool)

(declare-fun content!7922 (List!49619) (InoxSet tuple2!49240))

(assert (=> d!1338524 (= lt!1619363 (select (content!7922 (toList!3417 lt!1618969)) (tuple2!49241 hash!366 newBucket!194)))))

(declare-fun e!2751104 () Bool)

(assert (=> d!1338524 (= lt!1619363 e!2751104)))

(declare-fun res!1825549 () Bool)

(assert (=> d!1338524 (=> (not res!1825549) (not e!2751104))))

(assert (=> d!1338524 (= res!1825549 ((_ is Cons!49495) (toList!3417 lt!1618969)))))

(assert (=> d!1338524 (= (contains!11961 (toList!3417 lt!1618969) (tuple2!49241 hash!366 newBucket!194)) lt!1619363)))

(declare-fun b!4418261 () Bool)

(declare-fun e!2751105 () Bool)

(assert (=> b!4418261 (= e!2751104 e!2751105)))

(declare-fun res!1825548 () Bool)

(assert (=> b!4418261 (=> res!1825548 e!2751105)))

(assert (=> b!4418261 (= res!1825548 (= (h!55160 (toList!3417 lt!1618969)) (tuple2!49241 hash!366 newBucket!194)))))

(declare-fun b!4418262 () Bool)

(assert (=> b!4418262 (= e!2751105 (contains!11961 (t!356557 (toList!3417 lt!1618969)) (tuple2!49241 hash!366 newBucket!194)))))

(assert (= (and d!1338524 res!1825549) b!4418261))

(assert (= (and b!4418261 (not res!1825548)) b!4418262))

(declare-fun m!5094767 () Bool)

(assert (=> d!1338524 m!5094767))

(declare-fun m!5094769 () Bool)

(assert (=> d!1338524 m!5094769))

(declare-fun m!5094771 () Bool)

(assert (=> b!4418262 m!5094771))

(assert (=> b!4417666 d!1338524))

(declare-fun tp!1332793 () Bool)

(declare-fun b!4418263 () Bool)

(declare-fun e!2751106 () Bool)

(assert (=> b!4418263 (= e!2751106 (and tp_is_empty!26107 tp_is_empty!26105 tp!1332793))))

(assert (=> b!4417796 (= tp!1332784 e!2751106)))

(assert (= (and b!4417796 ((_ is Cons!49494) (_2!27914 (h!55160 (toList!3417 lm!1616))))) b!4418263))

(declare-fun b!4418264 () Bool)

(declare-fun e!2751107 () Bool)

(declare-fun tp!1332794 () Bool)

(declare-fun tp!1332795 () Bool)

(assert (=> b!4418264 (= e!2751107 (and tp!1332794 tp!1332795))))

(assert (=> b!4417796 (= tp!1332785 e!2751107)))

(assert (= (and b!4417796 ((_ is Cons!49495) (t!356557 (toList!3417 lm!1616)))) b!4418264))

(declare-fun e!2751108 () Bool)

(declare-fun b!4418265 () Bool)

(declare-fun tp!1332796 () Bool)

(assert (=> b!4418265 (= e!2751108 (and tp_is_empty!26107 tp_is_empty!26105 tp!1332796))))

(assert (=> b!4417801 (= tp!1332788 e!2751108)))

(assert (= (and b!4417801 ((_ is Cons!49494) (t!356556 (t!356556 newBucket!194)))) b!4418265))

(declare-fun b_lambda!142335 () Bool)

(assert (= b_lambda!142329 (or d!1338270 b_lambda!142335)))

(declare-fun bs!753931 () Bool)

(declare-fun d!1338526 () Bool)

(assert (= bs!753931 (and d!1338526 d!1338270)))

(assert (=> bs!753931 (= (dynLambda!20816 lambda!152344 (h!55160 (toList!3417 lm!1616))) (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 lm!1616)))))))

(assert (=> bs!753931 m!5094129))

(assert (=> b!4418165 d!1338526))

(declare-fun b_lambda!142337 () Bool)

(assert (= b_lambda!142321 (or d!1338264 b_lambda!142337)))

(declare-fun bs!753932 () Bool)

(declare-fun d!1338528 () Bool)

(assert (= bs!753932 (and d!1338528 d!1338264)))

(assert (=> bs!753932 (= (dynLambda!20816 lambda!152343 (h!55160 (tail!7203 (toList!3417 lm!1616)))) (noDuplicateKeys!715 (_2!27914 (h!55160 (tail!7203 (toList!3417 lm!1616))))))))

(assert (=> bs!753932 m!5094459))

(assert (=> b!4418132 d!1338528))

(declare-fun b_lambda!142339 () Bool)

(assert (= b_lambda!142323 (or d!1338282 b_lambda!142339)))

(declare-fun bs!753933 () Bool)

(declare-fun d!1338530 () Bool)

(assert (= bs!753933 (and d!1338530 d!1338282)))

(assert (=> bs!753933 (= (dynLambda!20816 lambda!152350 (h!55160 (toList!3417 lm!1616))) (allKeysSameHash!675 (_2!27914 (h!55160 (toList!3417 lm!1616))) (_1!27914 (h!55160 (toList!3417 lm!1616))) hashF!1220))))

(declare-fun m!5094773 () Bool)

(assert (=> bs!753933 m!5094773))

(assert (=> b!4418134 d!1338530))

(declare-fun b_lambda!142341 () Bool)

(assert (= b_lambda!142333 (or d!1338272 b_lambda!142341)))

(declare-fun bs!753934 () Bool)

(declare-fun d!1338532 () Bool)

(assert (= bs!753934 (and d!1338532 d!1338272)))

(assert (=> bs!753934 (= (dynLambda!20818 lambda!152347 (h!55159 newBucket!194)) (= (hash!2033 hashF!1220 (_1!27913 (h!55159 newBucket!194))) hash!366))))

(declare-fun m!5094775 () Bool)

(assert (=> bs!753934 m!5094775))

(assert (=> b!4418195 d!1338532))

(declare-fun b_lambda!142343 () Bool)

(assert (= b_lambda!142303 (or start!430244 b_lambda!142343)))

(declare-fun bs!753935 () Bool)

(declare-fun d!1338534 () Bool)

(assert (= bs!753935 (and d!1338534 start!430244)))

(assert (=> bs!753935 (= (dynLambda!20816 lambda!152324 (h!55160 (t!356557 (toList!3417 lm!1616)))) (noDuplicateKeys!715 (_2!27914 (h!55160 (t!356557 (toList!3417 lm!1616))))))))

(declare-fun m!5094777 () Bool)

(assert (=> bs!753935 m!5094777))

(assert (=> b!4418107 d!1338534))

(declare-fun b_lambda!142345 () Bool)

(assert (= b_lambda!142331 (or d!1338206 b_lambda!142345)))

(declare-fun bs!753936 () Bool)

(declare-fun d!1338536 () Bool)

(assert (= bs!753936 (and d!1338536 d!1338206)))

(assert (=> bs!753936 (= (dynLambda!20816 lambda!152327 (h!55160 (toList!3417 lm!1616))) (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 lm!1616)))))))

(assert (=> bs!753936 m!5094129))

(assert (=> b!4418180 d!1338536))

(declare-fun b_lambda!142347 () Bool)

(assert (= b_lambda!142327 (or start!430244 b_lambda!142347)))

(declare-fun bs!753937 () Bool)

(declare-fun d!1338538 () Bool)

(assert (= bs!753937 (and d!1338538 start!430244)))

(assert (=> bs!753937 (= (dynLambda!20816 lambda!152324 (h!55160 (t!356557 (toList!3417 lt!1618925)))) (noDuplicateKeys!715 (_2!27914 (h!55160 (t!356557 (toList!3417 lt!1618925))))))))

(declare-fun m!5094779 () Bool)

(assert (=> bs!753937 m!5094779))

(assert (=> b!4418156 d!1338538))

(declare-fun b_lambda!142349 () Bool)

(assert (= b_lambda!142325 (or start!430244 b_lambda!142349)))

(declare-fun bs!753938 () Bool)

(declare-fun d!1338540 () Bool)

(assert (= bs!753938 (and d!1338540 start!430244)))

(assert (=> bs!753938 (= (dynLambda!20816 lambda!152324 (h!55160 (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194))))) (noDuplicateKeys!715 (_2!27914 (h!55160 (toList!3417 (+!1019 lm!1616 (tuple2!49241 hash!366 newBucket!194)))))))))

(declare-fun m!5094781 () Bool)

(assert (=> bs!753938 m!5094781))

(assert (=> b!4418136 d!1338540))

(check-sat (not b!4418248) (not b!4418129) (not b!4418233) (not d!1338494) (not b!4418133) (not bs!753937) (not b!4418131) (not b!4418157) (not b!4418055) (not b!4418181) (not b!4418234) (not bm!307415) (not b!4418190) (not b_lambda!142337) (not d!1338524) (not b!4418229) (not d!1338468) (not b!4418158) (not d!1338512) (not bm!307422) tp_is_empty!26105 (not b_lambda!142283) (not d!1338356) (not b!4418255) (not b!4418093) (not b!4418196) (not b!4418265) (not b_lambda!142339) (not bs!753931) (not d!1338404) (not b!4418178) (not b!4418135) (not b!4418152) (not b!4418241) (not b!4418092) (not b!4418170) (not b!4417973) (not b!4418263) (not d!1338360) (not b!4418151) (not b_lambda!142343) (not bs!753935) (not b!4418163) (not b!4418126) (not b!4418238) (not bm!307416) (not d!1338498) (not b!4418094) (not b!4418113) (not b!4418169) (not b!4418160) (not b!4418230) (not b!4417955) (not b!4418144) (not b!4417923) (not d!1338458) (not b!4418137) (not b!4418057) (not d!1338364) (not bs!753932) (not d!1338522) (not b!4418060) (not b!4418254) (not bm!307423) (not b!4418239) (not b!4417926) (not d!1338460) (not b_lambda!142341) (not d!1338438) (not bm!307399) (not bs!753938) (not b_lambda!142347) (not b!4418249) (not b_lambda!142281) (not b!4418264) (not b!4417972) (not d!1338478) (not bs!753934) (not b!4418187) (not b!4418177) (not b!4418204) (not d!1338504) (not d!1338442) (not b!4418171) (not d!1338410) (not d!1338448) (not b!4418168) (not b!4418198) (not b!4418252) (not d!1338502) tp_is_empty!26107 (not b!4418244) (not b!4418262) (not d!1338462) (not b!4418235) (not d!1338466) (not b!4418153) (not d!1338518) (not b!4418253) (not b!4418091) (not b_lambda!142349) (not b!4418256) (not b!4417924) (not d!1338506) (not b!4418161) (not b!4418159) (not b!4418207) (not d!1338516) (not bm!307421) (not b!4418179) (not d!1338490) (not b_lambda!142345) (not b!4418103) (not d!1338420) (not b!4418130) (not b_lambda!142285) (not b!4418108) (not d!1338474) (not bs!753933) (not bs!753936) (not bm!307417) (not d!1338508) (not b!4418166) (not d!1338470) (not b_lambda!142335) (not d!1338484) (not d!1338476))
(check-sat)
